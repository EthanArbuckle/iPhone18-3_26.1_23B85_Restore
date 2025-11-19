void *BRLTRN_UnicodeStringInit(void *result, char *__s)
{
  *result = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s);
    result = malloc_type_malloc(4 * v4 + 4, 0x100004052888210uLL);
    *v3 = result;
    LOBYTE(v5) = *__s;
    if (*__s)
    {
      v6 = 0;
      do
      {
        *(result + v6) = v5;
        v7 = v6 + 1;
        v5 = __s[++v6];
      }

      while (v5);
    }

    else
    {
      v7 = 0;
    }

    *(result + v7) = 0;
  }

  return result;
}

void *BRLTRN_UnicodeStringInitSize(void *result, uint64_t a2)
{
  *result = 0;
  if (a2)
  {
    v2 = result;
    result = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    *v2 = result;
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

void BRLTRN_UnicodeStringFree(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
}

uint64_t BRLTRN_CreateA(char *__s, char *a2, uint64_t *a3, char *a4, char *a5)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  BRLTRN_UnicodeStringInit(&v18, __s);
  BRLTRN_UnicodeStringInit(&v17, a2);
  BRLTRN_UnicodeStringInit(&v16, a4);
  BRLTRN_UnicodeStringInit(&v15, a5);
  v9 = v17;
  v10 = v18;
  v11 = v15;
  v12 = v16;
  v13 = BRLTRN_CreateW(v18, v17, a3, v16, v15);
  if (!v13 && *a3)
  {
    **a3 = 1;
  }

  if (v10)
  {
    free(v10);
  }

  if (v9)
  {
    free(v9);
  }

  if (v12)
  {
    free(v12);
  }

  if (v11)
  {
    free(v11);
  }

  return v13;
}

uint64_t BRLTRN_TranslateString(void *a1, __int32 *a2, unint64_t a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  v24 = 0;
  v6 = 14;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v6;
  }

  if (a6)
  {
    v13 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
    if (!v13)
    {
      return 23;
    }
  }

  else
  {
    v13 = 0;
  }

  if (!*a1)
  {
    v14 = wcslen(a2);
    v6 = BRLTRN_TranslateStringEx(a1, 0, a2, a3, v13, a4, &v24);
    goto LABEL_21;
  }

  v23 = 0;
  v14 = strlen(a2);
  BRLTRN_UnicodeStringInit(&v23, a2);
  v15 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  v16 = v15;
  if (!v15)
  {
    v6 = 23;
    v17 = v23;
    if (!v23)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *v15 = 0;
  v17 = v23;
  if (!v23)
  {
    v6 = 23;
    goto LABEL_20;
  }

  v18 = BRLTRN_TranslateStringEx(a1, 0, v23, v15, v13, a4, &v24);
  if (v18)
  {
    v6 = v18;
LABEL_16:
    free(v17);
    goto LABEL_17;
  }

  v20 = *v16;
  if (*v16)
  {
    v21 = 0;
    do
    {
      *(a3 + v21) = v20;
      v22 = v21 + 1;
      v20 = v16[++v21];
    }

    while (v20);
  }

  else
  {
    v22 = 0;
  }

  v6 = 0;
  *(a3 + v22) = 0;
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_17:
  v23 = 0;
  if (v16)
  {
LABEL_20:
    free(v16);
  }

LABEL_21:
  if (v13)
  {
    if (a6 && !v6)
    {
      if (a5 <= v14)
      {
        v6 = 0;
        *a6 = BRLTRN_OutputPosFromArray(v13, v24, a5);
      }

      else
      {
        v6 = 14;
      }
    }

    free(v13);
  }

  return v6;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t ASCIIBrailleToUnicode(unsigned int a1)
{
  if (a1 > 0xFF)
  {
    return 0;
  }

  else
  {
    return (_Unicode[a1] + 10240);
  }
}

uint64_t UnicodeToASCIIBraille(unsigned int a1)
{
  if (a1 >> 8 == 40)
  {
    return _ASCIIBraille[a1 - 10240];
  }

  else
  {
    return 0;
  }
}

void *DBTWideCharBufferOfLength(size_t a1, int a2)
{
  if (a2)
  {
    return malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  }

  else
  {
    return malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  }
}

void *DBTUniCharBufferOfLength(size_t a1, int a2)
{
  if (a2)
  {
    return malloc_type_calloc(a1, 2uLL, 0x1000040BDFB0063uLL);
  }

  else
  {
    return malloc_type_malloc(2 * a1, 0x1000040BDFB0063uLL);
  }
}

void DBTWideCharBufferFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t DBTWideCharBufferLength(_DWORD *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = 0;
  v2 = a1 + 1;
  do
  {
    result = v1 + 1;
  }

  while (v2[v1++]);
  return result;
}

_DWORD *DBTWideCharBufferFromNSString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
  [v1 getCharacters:v3 range:{0, v2}];
  v4 = malloc_type_malloc(4 * v2 + 4, 0x100004052888210uLL);
  v5 = v4;
  if (v2)
  {
    v6 = v3;
    v7 = v4;
    v8 = v2;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  v4[v2] = 0;
  free(v3);

  return v5;
}

id DBTNSStringFromWideCharBuffer(int *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  v5 = v4;
  if (a2)
  {
    v6 = v4;
    v7 = a2;
    do
    {
      v8 = *a1++;
      *v6++ = v8;
      --v7;
    }

    while (v7);
  }

  v9 = [NSString stringWithCharacters:v4 length:a2];
  free(v5);

  return v9;
}

void DBTAppendNSStringIntoWideCharBufferAtOffset(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v5 = [v11 length];
  v6 = malloc_type_malloc(2 * v5 + 2, 0x1000040BDFB0063uLL);
  [v11 getCharacters:v6 range:{0, v5}];
  if (v5)
  {
    v7 = (a2 + 4 * a3);
    v8 = v6;
    v9 = v5;
    do
    {
      v10 = *v8++;
      *v7++ = v10;
      --v9;
    }

    while (v9);
  }

  *(a2 + 4 * v5 + 4 * a3) = 0;
  free(v6);
}

_DWORD *DBTWideCharBufferOfFullPath(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 stringByAppendingPathComponent:a2];
  v7 = [v6 stringByAppendingPathExtension:v5];

  v8 = DBTWideCharBufferFromNSString(v7);
  return v8;
}

void *allot(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0xA35FA437uLL);
  if (!v2)
  {
    if (dxc_allot_fail_hook)
    {
      dxc_allot_fail_hook(0, a1);
    }

    erm("allot", -1, 200, 0);
  }

  return v2;
}

void *reallot(void *a1, size_t a2)
{
  v4 = malloc_type_realloc(a1, a2, 0xF0FA2126uLL);
  if (!v4)
  {
    if (dxc_allot_fail_hook)
    {
      dxc_allot_fail_hook(a1, a2);
    }

    erm("allot", -1, 200, 0);
  }

  return v4;
}

void *dxc_alloc(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x1D124C70uLL);
  if (!v2 && dxc_allot_fail_hook)
  {
    dxc_allot_fail_hook(0, a1);
  }

  return v2;
}

void *dxc_realloc(void *a1, size_t a2)
{
  v3 = malloc_type_realloc(a1, a2, 0x784BE623uLL);
  if (!v3 && dxc_allot_fail_hook)
  {
    dxc_allot_fail_hook(0, a2);
  }

  return v3;
}

uint64_t dxbin_engine_destroy(uint64_t a1)
{
  if (*a1)
  {
    return dxbin_engine_deactivate(a1);
  }

  return a1;
}

uint64_t dxbin_engine_deactivate(uint64_t a1)
{
  if (!*a1)
  {
    v1 = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  if (*(a1 + 112) >= 1)
  {
    v1 = 4294967294;
LABEL_5:
    *a1 = 0;
    goto LABEL_6;
  }

  v3 = *(a1 + 116);
  *a1 = 0;
  if (v3 < 1)
  {
    return 0;
  }

  v1 = 4294967293;
LABEL_6:
  dxerr_report_activate(*(a1 + 8), "biniq", v1);
  return v1;
}

double dxbin_engine_create(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 0;
  *(a1 + 8) = a2;
  return result;
}

uint64_t dxbin_engine_activate(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 16) = a3;
  *(a1 + 120) = a2;
  if (!a3)
  {
    *(a1 + 16) = -1;
  }

  *a1 = 1;
  return 0;
}

uint64_t dxbin_engine_reactivate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  if (!v2)
  {
    *(a1 + 16) = -1;
  }

  *a1 = 1;
  return 0;
}

uint64_t dxbin_engine_getc(uint64_t a1)
{
  for (i = *(a1 + 16); i == -1; i = 0)
  {
    *(a1 + 200) = 0;
    *(a1 + 204) = 1;
    *(a1 + 128) = 0;
    *(a1 + 168) = 0xFF0000000000;
    *(a1 + 208) = lev1(a1);
    *(a1 + 232) = 0;
    *(a1 + 216) = 0;
    *(a1 + 240) = 0;
    v3 = lev2(a1);
    *(a1 + 244) = v3;
    *(a1 + 16) = 0;
  }

  if (i == 2)
  {
    v8 = *(a1 + 120);
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = dxios_stream_getc(v8);
LABEL_15:
    if (v9 != -1)
    {
      v7 = v9;
      goto LABEL_18;
    }

LABEL_17:
    v7 = 65280;
    goto LABEL_18;
  }

  if (i == 1)
  {
    v10 = *(a1 + 120);
    if (!v10)
    {
      goto LABEL_17;
    }

    v9 = dxios_stream_gcmt(v10);
    goto LABEL_15;
  }

  if (i)
  {
    return *(a1 + 96);
  }

  v4 = *(a1 + 216);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 == v5)
  {
    v7 = *(a1 + 212);
    if (v7 != 4)
    {
      v14 = *(a1 + 24);
      if (v14 == 28)
      {
        *(a1 + 216) = v6;
        v7 = 30;
      }

      else if (v7 == v14)
      {
        *(a1 + 212) = 39;
      }

      else
      {
        *(a1 + 212) = v14;
        *(a1 + 216) = v6;
        v7 = 39;
      }

      goto LABEL_18;
    }

    *(a1 + 216) = v6;
    goto LABEL_10;
  }

  v12 = *(a1 + 232);
  v5 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (v13 < 0 == v5)
  {
    *(a1 + 232) = v13;
    v7 = *(a1 + 4 * v13 + 220);
    goto LABEL_18;
  }

  v15 = *(a1 + 236);
  v5 = __OFSUB__(v15, 1);
  v16 = v15 - 1;
  if (v16 < 0 != v5)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 != 0;
    *(a1 + 236) = v16;
  }

  v7 = *(a1 + 244);
  v18 = lev2(a1);
  *(a1 + 244) = v18;
  if (v7 < 0xFF02)
  {
LABEL_62:
    *(a1 + 240) = v7 == *(a1 + 28);
    goto LABEL_18;
  }

  v19 = v7 - 65282;
  if (v18 < 0xFF02)
  {
    v7 = v18;
  }

  else
  {
    LODWORD(v7) = v18;
    do
    {
      if (v19 + v7 - 65282 <= 249)
      {
        v19 = v19 + v7 - 65282;
      }

      else
      {
        v19 = v19 + v7 - 65532;
      }

      v7 = lev2(a1);
      *(a1 + 244) = v7;
    }

    while (v7 > 0xFF01);
  }

  v20 = *(a1 + 68);
  if (v7 == 23 && v20 <= 1)
  {
    *(a1 + 236) = 3;
  }

  if (!v17 || !v19)
  {
LABEL_61:
    *(a1 + 244) = lev2(a1);
    goto LABEL_62;
  }

  if (v19 != 1)
  {
    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_10;
      }

      if (v20 == 1)
      {
        if (!*(a1 + 240))
        {
          goto LABEL_10;
        }

        *(a1 + 240) = 0;
        v7 = *(a1 + 24);
        if (v7 != 28)
        {
          *(a1 + 232) = 2;
          *(a1 + 220) = 0x2700000020;
          goto LABEL_18;
        }

        v21 = 28;
        goto LABEL_53;
      }
    }

    else
    {
      switch(v20)
      {
        case 2:
          goto LABEL_52;
        case 3:
LABEL_54:
          *(a1 + 232) = 3;
          v22 = *(a1 + 24);
          if (v22 == 28)
          {
            *(a1 + 232) = 2;
            *(a1 + 220) = 0x3E0000001FLL;
            v7 = 28;
            goto LABEL_18;
          }

          *(a1 + 228) = v22;
          *(a1 + 220) = 0x3E00000020;
          goto LABEL_10;
        case 4:
LABEL_52:
          v21 = *(a1 + 24);
LABEL_53:
          *(a1 + 212) = v21;
          *(a1 + 216) = v19 - 1;
          goto LABEL_10;
      }
    }

    goto LABEL_61;
  }

  if (v20 == 3)
  {
    goto LABEL_54;
  }

LABEL_10:
  v7 = 32;
LABEL_18:
  *(a1 + 96) = v7;
  return v7;
}

uint64_t lev1(uint64_t a1)
{
  v3 = (a1 + 172);
  v2 = *(a1 + 172);
  if (v2 == 12)
  {
    v7 = *(a1 + 176);
    v8 = v7 + 1;
    *(a1 + 176) = v7 + 1;
    v2 = *(a1 + 44 + v7);
    v9 = *(a1 + 44 + v8);
    result = v2;
    if (*(a1 + 44 + v8))
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v2 == 65281)
  {
    return v2;
  }

  if (v2 != 65280)
  {
LABEL_10:
    *v3 = 65280;
    return v2;
  }

  v20 = 0;
  v4 = lev0(a1);
  result = 65281;
  if (v4 != 65281)
  {
    v6 = 0;
    while (chibdi(v4, v6, &v20))
    {
      ++v6;
      v4 = lev0(a1);
      result = 65281;
      if (v4 == 65281)
      {
        return result;
      }
    }

    result = v20;
    if (v20 < 0x21 || v20 == 65407)
    {
      *(a1 + 172) = v20;
      v20 = 65282;
      while (1)
      {
        if (result <= 11)
        {
          if (result != 9)
          {
            if (result == 10)
            {
              ++*(a1 + 104);
              v2 = 10;
              if (*(a1 + 20))
              {
                goto LABEL_10;
              }
            }

            goto LABEL_50;
          }

          v12 = *(a1 + 72);
          if (v12 < 0)
          {
            v15 = *(a1 + 116);
            if (v15 != 0x7FFFFFFF)
            {
              *(a1 + 116) = v15 + 1;
            }

LABEL_33:
            v11 = v20;
            goto LABEL_34;
          }

          v11 = v20 + v12;
        }

        else
        {
          if (result == 12)
          {
            v13 = *(a1 + 44);
            if (v13 > 31)
            {
              *(a1 + 176) = 0;
              v19 = v20 + 1;
              v2 = 12;
LABEL_51:
              result = v19;
              if (v19 <= 0xFF02)
              {
                result = v2;
                if ((v2 - 65282) <= 0xFFFFFFFD)
                {
                  goto LABEL_10;
                }
              }

              return result;
            }

            if (v13 == 21)
            {
              v14 = *(a1 + 112);
              if (v14 != 0x7FFFFFFF)
              {
                *(a1 + 112) = v14 + 1;
              }
            }

            goto LABEL_33;
          }

          if (result != 32)
          {
            if (result == 65407)
            {
              result = 65280;
              *v3 = 65280;
            }

LABEL_50:
            v19 = v20;
            v2 = result;
            goto LABEL_51;
          }

          v11 = v20 + 1;
        }

        v20 = v11;
LABEL_34:
        if (v11 >= 0xFFFC)
        {
          v20 = v11 - 250;
        }

        v16 = lev0(a1);
        if (v16 != 65281)
        {
          v17 = 0;
          do
          {
            if (!chibdi(v16, v17, v3))
            {
              break;
            }

            ++v17;
            v16 = lev0(a1);
          }

          while (v16 != 65281);
        }

        result = *v3;
        if (result >= 0x21 && result != 65407)
        {
          goto LABEL_50;
        }
      }
    }
  }

  return result;
}

uint64_t lev2(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2 > 0)
  {
    v3 = v2 - 1;
    *(a1 + 200) = v3;
    return *(a1 + 4 * v3 + 180);
  }

  while (1)
  {
    while (1)
    {
      v4 = *(a1 + 208);
      if (*(a1 + 204))
      {
        break;
      }

      v6 = lev1(a1);
      *(a1 + 208) = v6;
      if (v4 > 0xFF01)
      {
        return v4;
      }

      if (v4 == 10)
      {
        *(a1 + 204) = 1;
        v7 = *(a1 + 32);
        if (v7 == 1)
        {
          return 65283;
        }

        if (v7 == 2)
        {
          *(a1 + 200) = 3;
          *(a1 + 188) = *(a1 + 24);
          *(a1 + 180) = 0x3C0000FF03;
          return 65283;
        }
      }

      else
      {
        v8 = *(a1 + 64);
        if (v8 < 1 || v4 != 45)
        {
          return v4;
        }

        if (v6 != 10)
        {
          v4 = 45;
          if (v6 == 45 && v8 == 2)
          {
            *(a1 + 208) = lev1(a1);
            *(a1 + 200) = 1;
            *(a1 + 180) = 45;
          }

          return v4;
        }

        *(a1 + 208) = lev1(a1);
      }
    }

    if (v4 != 10)
    {
      break;
    }

    if ((*(a1 + 60) | 2) == 3)
    {
      goto LABEL_20;
    }

LABEL_15:
    *(a1 + 204) = 0;
  }

  if (v4 < 0xFF04 || *(a1 + 60) < 2)
  {
    goto LABEL_15;
  }

  do
  {
    do
    {
LABEL_20:
      v9 = lev1(a1);
      *(a1 + 208) = v9;
    }

    while (v9 == 10);
  }

  while (v9 > 0xFF01);
  *(a1 + 204) = 0;
  v10 = *(a1 + 40);
  *(a1 + 200) = v10 + 2;
  *(a1 + 180 + 4 * v10 + 4) = *(a1 + 24);
  v4 = 65283;
  *(a1 + 180) = 65283;
  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    v12 = (v11 + 1);
    v13 = (v11 + a1 + 35);
    v14 = (a1 + 184);
    v15 = v12 - 1;
    do
    {
      v16 = *v13--;
      *v14++ = v16;
      --v15;
    }

    while (v15);
    return 65283;
  }

  return v4;
}

uint64_t dxbin_code_in_str(uint64_t a1, _BYTE *a2, char *a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  LOBYTE(v5) = *a2;
  if (!*a2)
  {
    return 0;
  }

  do
  {
    ++v4;
    while (1)
    {
      v9 = *(a1 + 24) == v5;
      v5 = *v4;
      if (v9)
      {
        break;
      }

      ++v4;
      if (!v5)
      {
        return 0;
      }
    }

    for (i = a3; ; ++i)
    {
      v11 = __tolower(v5);
      v12 = *i;
      if (v11 != __tolower(*i))
      {
        break;
      }

      v13 = *++v4;
      v5 = v13;
      if (a4 == 1 && v5 == 126)
      {
        return 1;
      }
    }

    if (!a4 && !v12)
    {
      return 1;
    }

    if (!v12)
    {
      result = 1;
      if (v5 - 31 < 2 || v5 == 96)
      {
        break;
      }
    }

    result = 0;
    LOBYTE(v5) = *v4;
  }

  while (*v4);
  return result;
}

uint64_t lev0(uint64_t a1)
{
  if (!*(a1 + 128))
  {
    v3 = dxios_stream_gcmt(*(a1 + 120));
    v1 = v3;
    v4 = *(a1 + 168);
    if (v4 > 4)
    {
      if ((v4 - 6) < 2)
      {
        if (v3 == 126)
        {
          *(a1 + 164) = 0;
          *(a1 + 168) = v4 + 2;
          return v1;
        }
      }

      else if ((v4 - 8) >= 2)
      {
        if (v4 == 5)
        {
          if ((v3 & 0xFFFFFFDF) == 0x45)
          {
            v6 = 7;
            goto LABEL_9;
          }

          if ((v3 & 0xFFFFFFDF) == 0x53)
          {
            v6 = 6;
            goto LABEL_9;
          }
        }
      }

      else if (v3 > 31)
      {
        v10 = *(a1 + 164);
        if (v10 <= 0x1E)
        {
          *(a1 + 164) = v10 + 1;
          *(a1 + v10 + 129) = v3;
          return v1;
        }
      }

      else
      {
        *(a1 + 129 + *(a1 + 164)) = 0;
        v7 = *(a1 + 80);
        if (v7)
        {
          v8 = (*(a1 + 168) - 8);
          v7(v12, *(a1 + 88));
          v9 = dxbin_code_in_str(a1, v12[3], "lnb", 1);
        }

        else
        {
          v9 = 0;
        }

        *(a1 + 128) = v9;
      }
    }

    else if ((v4 - 1) >= 3)
    {
      if (!v4)
      {
        if (v3 != *(a1 + 24))
        {
          return v1;
        }

        v6 = 1;
        goto LABEL_9;
      }

      if (v4 == 4)
      {
        if (v3 > 31)
        {
          return v1;
        }

        *(a1 + 128) = 1;
      }
    }

    else
    {
      v5 = lnb[v4 - 1];
      if (v1 == v5)
      {
LABEL_8:
        v6 = v4 + 1;
LABEL_9:
        *(a1 + 168) = v6;
        return v1;
      }

      if (v1 == __toupper(v5))
      {
        v4 = *(a1 + 168);
        goto LABEL_8;
      }

      if (v4 == 1 && (v1 & 0xFFFFFFDF) == 0x45)
      {
        v6 = 5;
        goto LABEL_9;
      }
    }

    *(a1 + 168) = 0;
    return v1;
  }

  return 65281;
}

uint64_t BRLDISP_Create(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int32 *a6, __int32 *a7, __int32 *a8)
{
  v13 = 0;
  if (!a1 || *a1)
  {
    return 14;
  }

  result = BRLTRN_CreateW(a6, a7, &v13, a5, a8);
  if (!result)
  {
    v11 = malloc_type_malloc(0x18uLL, 0x1080040BEC857D6uLL);
    if (v11)
    {
      v12 = v11;
      *(v11 + 5) = 0;
      *(v11 + 12) = 0;
      *v11 = v13;
      *(v11 + 2) = a4;
      LoadEightDotTable(v11);
      result = 0;
      *a1 = v12;
    }

    else
    {
      BRLTRN_Destroy(v13);
      return 23;
    }
  }

  return result;
}

void *LoadEightDotTable(uint64_t a1)
{
  v2 = 10240;
  v3 = 256;
  do
  {
    LoadEightDotPatternBin(a1, v2, v2);
    ++v2;
    --v3;
  }

  while (v3);
  LoadEightDotPattern(a1, 32, "");
  LoadEightDotPattern(a1, 33, "2346");
  LoadEightDotPattern(a1, 34, "5");
  LoadEightDotPattern(a1, 35, "3456");
  LoadEightDotPattern(a1, 36, "1246");
  LoadEightDotPattern(a1, 37, "146");
  LoadEightDotPattern(a1, 38, "12346");
  LoadEightDotPattern(a1, 39, "3");
  LoadEightDotPattern(a1, 40, "12356");
  LoadEightDotPattern(a1, 41, "23456");
  LoadEightDotPattern(a1, 42, "16");
  LoadEightDotPattern(a1, 43, "346");
  LoadEightDotPattern(a1, 44, "6");
  LoadEightDotPattern(a1, 45, "36");
  LoadEightDotPattern(a1, 46, "46");
  LoadEightDotPattern(a1, 47, "34");
  LoadEightDotPattern(a1, 48, "356");
  LoadEightDotPattern(a1, 49, "2");
  LoadEightDotPattern(a1, 50, "23");
  LoadEightDotPattern(a1, 51, "25");
  LoadEightDotPattern(a1, 52, "256");
  LoadEightDotPattern(a1, 53, "26");
  LoadEightDotPattern(a1, 54, "235");
  LoadEightDotPattern(a1, 55, "2356");
  LoadEightDotPattern(a1, 56, "236");
  LoadEightDotPattern(a1, 57, "35");
  LoadEightDotPattern(a1, 58, "156");
  LoadEightDotPattern(a1, 59, "56");
  LoadEightDotPattern(a1, 60, "126");
  LoadEightDotPattern(a1, 61, "123456");
  LoadEightDotPattern(a1, 62, "345");
  LoadEightDotPattern(a1, 63, "1456");
  LoadEightDotPattern(a1, 64, "47");
  LoadEightDotPattern(a1, 65, "17");
  LoadEightDotPattern(a1, 66, "127");
  LoadEightDotPattern(a1, 67, "147");
  LoadEightDotPattern(a1, 68, "1457");
  LoadEightDotPattern(a1, 69, "157");
  LoadEightDotPattern(a1, 70, "1247");
  LoadEightDotPattern(a1, 71, "12457");
  LoadEightDotPattern(a1, 72, "1257");
  LoadEightDotPattern(a1, 73, "247");
  LoadEightDotPattern(a1, 74, "2457");
  LoadEightDotPattern(a1, 75, "137");
  LoadEightDotPattern(a1, 76, "1237");
  LoadEightDotPattern(a1, 77, "1347");
  LoadEightDotPattern(a1, 78, "13457");
  LoadEightDotPattern(a1, 79, "1357");
  LoadEightDotPattern(a1, 80, "12347");
  LoadEightDotPattern(a1, 81, "123457");
  LoadEightDotPattern(a1, 82, "12357");
  LoadEightDotPattern(a1, 83, "2347");
  LoadEightDotPattern(a1, 84, "23457");
  LoadEightDotPattern(a1, 85, "1367");
  LoadEightDotPattern(a1, 86, "12367");
  LoadEightDotPattern(a1, 87, "24567");
  LoadEightDotPattern(a1, 88, "13467");
  LoadEightDotPattern(a1, 89, "134567");
  LoadEightDotPattern(a1, 90, "13567");
  LoadEightDotPattern(a1, 91, "2467");
  LoadEightDotPattern(a1, 92, "12567");
  LoadEightDotPattern(a1, 93, "124567");
  LoadEightDotPattern(a1, 94, "457");
  LoadEightDotPattern(a1, 95, "4567");
  LoadEightDotPattern(a1, 96, "4");
  LoadEightDotPattern(a1, 97, "1");
  LoadEightDotPattern(a1, 98, "12");
  LoadEightDotPattern(a1, 99, "14");
  LoadEightDotPattern(a1, 100, "145");
  LoadEightDotPattern(a1, 101, "15");
  LoadEightDotPattern(a1, 102, "124");
  LoadEightDotPattern(a1, 103, "1245");
  LoadEightDotPattern(a1, 104, "125");
  LoadEightDotPattern(a1, 105, "24");
  LoadEightDotPattern(a1, 106, "245");
  LoadEightDotPattern(a1, 107, "13");
  LoadEightDotPattern(a1, 108, "123");
  LoadEightDotPattern(a1, 109, "134");
  LoadEightDotPattern(a1, 110, "1345");
  LoadEightDotPattern(a1, 111, "135");
  LoadEightDotPattern(a1, 112, "1234");
  LoadEightDotPattern(a1, 113, "12345");
  LoadEightDotPattern(a1, 114, "1235");
  LoadEightDotPattern(a1, 115, "234");
  LoadEightDotPattern(a1, 116, "2345");
  LoadEightDotPattern(a1, 117, "136");
  LoadEightDotPattern(a1, 118, "1236");
  LoadEightDotPattern(a1, 119, "2456");
  LoadEightDotPattern(a1, 120, "1346");
  LoadEightDotPattern(a1, 121, "13456");
  LoadEightDotPattern(a1, 122, "1356");
  LoadEightDotPattern(a1, 123, "246");
  LoadEightDotPattern(a1, 124, "1256");
  LoadEightDotPattern(a1, 125, "12456");
  LoadEightDotPattern(a1, 126, "45");
  LoadEightDotPattern(a1, 127, "456");
  LoadEightDotPattern(a1, 129, "12568");
  LoadEightDotPattern(a1, 134, "1248");
  LoadEightDotPattern(a1, 137, "248");
  LoadEightDotPattern(a1, 141, "257");
  LoadEightDotPattern(a1, 143, "12467");
  LoadEightDotPattern(a1, 144, "124678");
  LoadEightDotPattern(a1, 151, "368");
  LoadEightDotPattern(a1, 155, "12345");
  LoadEightDotPattern(a1, 157, "468");
  LoadEightDotPattern(a1, 158, "235678");
  LoadEightDotPattern(a1, 160, "");
  LoadEightDotPattern(a1, 161, "235");
  LoadEightDotPattern(a1, 162, "58");
  LoadEightDotPattern(a1, 163, "467");
  LoadEightDotPattern(a1, 164, "4678");
  LoadEightDotPattern(a1, 165, "468");
  LoadEightDotPattern(a1, 166, "158");
  LoadEightDotPattern(a1, 167, "357");
  LoadEightDotPattern(a1, 168, "48");
  LoadEightDotPattern(a1, 169, "123468");
  LoadEightDotPattern(a1, 170, "1258");
  LoadEightDotPattern(a1, 171, "1235678");
  LoadEightDotPattern(a1, 172, "25678");
  LoadEightDotPattern(a1, 173, "368");
  LoadEightDotPattern(a1, 174, "12358");
  LoadEightDotPattern(a1, 175, "458");
  LoadEightDotPattern(a1, 176, "4568");
  LoadEightDotPattern(a1, 177, "23578");
  LoadEightDotPattern(a1, 178, "128");
  LoadEightDotPattern(a1, 179, "148");
  LoadEightDotPattern(a1, 180, "568");
  LoadEightDotPattern(a1, 181, "1348");
  LoadEightDotPattern(a1, 182, "1458");
  LoadEightDotPattern(a1, 183, "37");
  LoadEightDotPattern(a1, 184, "68");
  LoadEightDotPattern(a1, 185, "18");
  LoadEightDotPattern(a1, 186, "2458");
  LoadEightDotPattern(a1, 187, "2345678");
  LoadEightDotPattern(a1, 188, "1368");
  LoadEightDotPattern(a1, 189, "12368");
  LoadEightDotPattern(a1, 190, "13468");
  LoadEightDotPattern(a1, 191, "38");
  LoadEightDotPattern(a1, 192, "23678");
  LoadEightDotPattern(a1, 193, "1235678");
  LoadEightDotPattern(a1, 194, "167");
  LoadEightDotPattern(a1, 195, "3467");
  LoadEightDotPattern(a1, 196, "567");
  LoadEightDotPattern(a1, 197, "34567");
  LoadEightDotPattern(a1, 198, "3457");
  LoadEightDotPattern(a1, 199, "123467");
  LoadEightDotPattern(a1, 200, "3578");
  LoadEightDotPattern(a1, 201, "238");
  LoadEightDotPattern(a1, 202, "1267");
  LoadEightDotPattern(a1, 203, "2358");
  LoadEightDotPattern(a1, 204, "57");
  LoadEightDotPattern(a1, 205, "3478");
  LoadEightDotPattern(a1, 206, "1467");
  LoadEightDotPattern(a1, 207, "23568");
  LoadEightDotPattern(a1, 13, "1458");
  LoadEightDotPattern(a1, 208, "3567");
  LoadEightDotPattern(a1, 209, "2567");
  LoadEightDotPattern(a1, 210, "578");
  LoadEightDotPattern(a1, 211, "34678");
  LoadEightDotPattern(a1, 212, "14567");
  LoadEightDotPattern(a1, 213, "267");
  LoadEightDotPattern(a1, 214, "358");
  LoadEightDotPattern(a1, 215, "2348");
  LoadEightDotPattern(a1, 216, "2467");
  LoadEightDotPattern(a1, 217, "35678");
  LoadEightDotPattern(a1, 218, "2345678");
  LoadEightDotPattern(a1, 219, "1567");
  LoadEightDotPattern(a1, 220, "2368");
  LoadEightDotPattern(a1, 221, "124568");
  LoadEightDotPattern(a1, 222, "2357");
  LoadEightDotPattern(a1, 223, "34568");
  LoadEightDotPattern(a1, 224, "123568");
  LoadEightDotPattern(a1, 225, "168");
  LoadEightDotPattern(a1, 226, "1678");
  LoadEightDotPattern(a1, 227, "34678");
  LoadEightDotPattern(a1, 228, "3458");
  LoadEightDotPattern(a1, 229, "345678");
  LoadEightDotPattern(a1, 230, "34578");
  LoadEightDotPattern(a1, 231, "1234678");
  LoadEightDotPattern(a1, 232, "23468");
  LoadEightDotPattern(a1, 233, "1268");
  LoadEightDotPattern(a1, 234, "12678");
  LoadEightDotPattern(a1, 235, "12468");
  LoadEightDotPattern(a1, 236, "348");
  LoadEightDotPattern(a1, 237, "1468");
  LoadEightDotPattern(a1, 238, "14678");
  LoadEightDotPattern(a1, 239, "124568");
  LoadEightDotPattern(a1, 240, "23458");
  LoadEightDotPattern(a1, 241, "13458");
  LoadEightDotPattern(a1, 242, "34578");
  LoadEightDotPattern(a1, 243, "14568");
  LoadEightDotPattern(a1, 244, "145678");
  LoadEightDotPattern(a1, 245, "1358");
  LoadEightDotPattern(a1, 246, "2468");
  LoadEightDotPattern(a1, 247, "3478");
  LoadEightDotPattern(a1, 248, "24678");
  LoadEightDotPattern(a1, 249, "234568");
  LoadEightDotPattern(a1, 250, "1568");
  LoadEightDotPattern(a1, 251, "15678");
  LoadEightDotPattern(a1, 252, "12568");
  LoadEightDotPattern(a1, 253, "1245678");
  LoadEightDotPattern(a1, 254, "12348");
  LoadEightDotPattern(a1, 255, "134568");
  LoadEightDotPattern(a1, 884, "3456");
  LoadEightDotPattern(a1, 885, "5678");
  LoadEightDotPattern(a1, 894, "26");
  LoadEightDotPattern(a1, 900, "4");
  LoadEightDotPattern(a1, 901, "45");
  LoadEightDotPattern(a1, 902, "34578");
  LoadEightDotPattern(a1, 903, "46");
  LoadEightDotPattern(a1, 904, "124678");
  LoadEightDotPattern(a1, 905, "12345678");
  LoadEightDotPattern(a1, 906, "1245678");
  LoadEightDotPattern(a1, 908, "24678");
  LoadEightDotPattern(a1, 910, "125678");
  LoadEightDotPattern(a1, 911, "24578");
  LoadEightDotPattern(a1, 912, "248");
  LoadEightDotPattern(a1, 913, "178");
  LoadEightDotPattern(a1, 914, "1278");
  LoadEightDotPattern(a1, 915, "124578");
  LoadEightDotPattern(a1, 916, "14578");
  LoadEightDotPattern(a1, 917, "1578");
  LoadEightDotPattern(a1, 918, "135678");
  LoadEightDotPattern(a1, 919, "15678");
  LoadEightDotPattern(a1, 920, "145678");
  LoadEightDotPattern(a1, 921, "248");
  LoadEightDotPattern(a1, 922, "1378");
  LoadEightDotPattern(a1, 923, "12378");
  LoadEightDotPattern(a1, 924, "13478");
  LoadEightDotPattern(a1, 925, "134578");
  LoadEightDotPattern(a1, 926, "134678");
  LoadEightDotPattern(a1, 927, "13578");
  LoadEightDotPattern(a1, 928, "123478");
  LoadEightDotPattern(a1, 929, "123578");
  LoadEightDotPattern(a1, 931, "23478");
  LoadEightDotPattern(a1, 932, "234578");
  LoadEightDotPattern(a1, 933, "13678");
  LoadEightDotPattern(a1, 934, "12478");
  LoadEightDotPattern(a1, 935, "1234678");
  LoadEightDotPattern(a1, 936, "1345678");
  LoadEightDotPattern(a1, 937, "245678");
  LoadEightDotPattern(a1, 938, "2478");
  LoadEightDotPattern(a1, 939, "1345678");
  LoadEightDotPattern(a1, 940, "3458");
  LoadEightDotPattern(a1, 941, "12468");
  LoadEightDotPattern(a1, 942, "1234568");
  LoadEightDotPattern(a1, 943, "124568");
  LoadEightDotPattern(a1, 944, "134568");
  LoadEightDotPattern(a1, 945, "18");
  LoadEightDotPattern(a1, 946, "128");
  LoadEightDotPattern(a1, 947, "12458");
  LoadEightDotPattern(a1, 948, "1458");
  LoadEightDotPattern(a1, 949, "158");
  LoadEightDotPattern(a1, 950, "13568");
  LoadEightDotPattern(a1, 951, "1568");
  LoadEightDotPattern(a1, 952, "14568");
  LoadEightDotPattern(a1, 953, "248");
  LoadEightDotPattern(a1, 954, "138");
  LoadEightDotPattern(a1, 955, "1238");
  LoadEightDotPattern(a1, 956, "1348");
  LoadEightDotPattern(a1, 957, "13458");
  LoadEightDotPattern(a1, 958, "13468");
  LoadEightDotPattern(a1, 959, "1358");
  LoadEightDotPattern(a1, 960, "12348");
  LoadEightDotPattern(a1, 961, "12358");
  LoadEightDotPattern(a1, 962, "2348");
  LoadEightDotPattern(a1, 963, "2348");
  LoadEightDotPattern(a1, 964, "23458");
  LoadEightDotPattern(a1, 965, "1368");
  LoadEightDotPattern(a1, 966, "1248");
  LoadEightDotPattern(a1, 967, "123468");
  LoadEightDotPattern(a1, 968, "13456");
  LoadEightDotPattern(a1, 969, "24568");
  LoadEightDotPattern(a1, 970, "348");
  LoadEightDotPattern(a1, 971, "234568");
  LoadEightDotPattern(a1, 972, "2468");
  LoadEightDotPattern(a1, 973, "12568");
  LoadEightDotPattern(a1, 974, "2458");
  LoadEightDotPattern(a1, 976, "1278");
  LoadEightDotPattern(a1, 977, "145678");
  LoadEightDotPattern(a1, 978, "12368");
  LoadEightDotPattern(a1, 979, "23456");
  LoadEightDotPattern(a1, 980, "1368");
  LoadEightDotPattern(a1, 981, "12478");
  LoadEightDotPattern(a1, 982, "123478");
  LoadEightDotPattern(a1, 983, "12346");
  LoadEightDotPattern(a1, 984, "1234578");
  LoadEightDotPattern(a1, 985, "123458");
  LoadEightDotPattern(a1, 986, "123678");
  LoadEightDotPattern(a1, 987, "12368");
  LoadEightDotPattern(a1, 988, "145678");
  LoadEightDotPattern(a1, 989, "12368");
  LoadEightDotPattern(a1, 990, "1234578");
  LoadEightDotPattern(a1, 991, "123458");
  LoadEightDotPattern(a1, 992, "234678");
  LoadEightDotPattern(a1, 993, "23468");
  LoadEightDotPattern(a1, 1008, "1234578");
  LoadEightDotPattern(a1, 1009, "123578");
  LoadEightDotPattern(a1, 1010, "23478");
  LoadEightDotPattern(a1, 1012, "145678");
  LoadEightDotPattern(a1, 1013, "1578");
  LoadEightDotPattern(a1, 1018, "234678");
  LoadEightDotPattern(a1, 1019, "23468");
  LoadEightDotPattern(a1, 984, "12678");
  LoadEightDotPattern(a1, 985, "1268");
  LoadEightDotPattern(a1, 992, "34578");
  LoadEightDotPattern(a1, 993, "3458");
  LoadEightDotPattern(a1, 1072, "18");
  LoadEightDotPattern(a1, 1040, "178");
  LoadEightDotPattern(a1, 1073, "128");
  LoadEightDotPattern(a1, 1041, "1278");
  LoadEightDotPattern(a1, 1074, "24568");
  LoadEightDotPattern(a1, 1042, "245678");
  LoadEightDotPattern(a1, 1075, "12458");
  LoadEightDotPattern(a1, 1043, "124578");
  LoadEightDotPattern(a1, 1076, "1458");
  LoadEightDotPattern(a1, 1044, "14578");
  LoadEightDotPattern(a1, 1077, "158");
  LoadEightDotPattern(a1, 1045, "1578");
  LoadEightDotPattern(a1, 1078, "2458");
  LoadEightDotPattern(a1, 1046, "24578");
  LoadEightDotPattern(a1, 1079, "13568");
  LoadEightDotPattern(a1, 1047, "135678");
  LoadEightDotPattern(a1, 1080, "248");
  LoadEightDotPattern(a1, 1048, "2478");
  LoadEightDotPattern(a1, 1081, "123468");
  LoadEightDotPattern(a1, 1049, "1234678");
  LoadEightDotPattern(a1, 1082, "138");
  LoadEightDotPattern(a1, 1050, "1378");
  LoadEightDotPattern(a1, 1083, "1238");
  LoadEightDotPattern(a1, 1051, "12378");
  LoadEightDotPattern(a1, 1084, "1348");
  LoadEightDotPattern(a1, 1052, "13478");
  LoadEightDotPattern(a1, 1085, "13458");
  LoadEightDotPattern(a1, 1053, "134578");
  LoadEightDotPattern(a1, 1086, "1358");
  LoadEightDotPattern(a1, 1054, "13578");
  LoadEightDotPattern(a1, 1087, "12348");
  LoadEightDotPattern(a1, 1055, "123478");
  LoadEightDotPattern(a1, 1088, "12358");
  LoadEightDotPattern(a1, 1056, "123578");
  LoadEightDotPattern(a1, 1089, "2348");
  LoadEightDotPattern(a1, 1057, "23478");
  LoadEightDotPattern(a1, 1090, "23458");
  LoadEightDotPattern(a1, 1058, "234578");
  LoadEightDotPattern(a1, 1091, "1368");
  LoadEightDotPattern(a1, 1059, "13678");
  LoadEightDotPattern(a1, 1092, "1248");
  LoadEightDotPattern(a1, 1060, "12478");
  LoadEightDotPattern(a1, 1093, "1258");
  LoadEightDotPattern(a1, 1061, "12578");
  LoadEightDotPattern(a1, 1094, "148");
  LoadEightDotPattern(a1, 1062, "1478");
  LoadEightDotPattern(a1, 1095, "123458");
  LoadEightDotPattern(a1, 1063, "1234578");
  LoadEightDotPattern(a1, 1096, "1568");
  LoadEightDotPattern(a1, 1064, "15678");
  LoadEightDotPattern(a1, 1097, "13468");
  LoadEightDotPattern(a1, 1065, "134678");
  LoadEightDotPattern(a1, 1098, "123568");
  LoadEightDotPattern(a1, 1066, "1235678");
  LoadEightDotPattern(a1, 1099, "23468");
  LoadEightDotPattern(a1, 1067, "234678");
  LoadEightDotPattern(a1, 1100, "234568");
  LoadEightDotPattern(a1, 1068, "2345678");
  LoadEightDotPattern(a1, 1101, "2468");
  LoadEightDotPattern(a1, 1069, "24678");
  LoadEightDotPattern(a1, 1102, "12568");
  LoadEightDotPattern(a1, 1070, "125678");
  LoadEightDotPattern(a1, 1103, "12468");
  LoadEightDotPattern(a1, 1071, "124678");
  LoadEightDotPattern(a1, 1104, "158");
  LoadEightDotPattern(a1, 1024, "1578");
  LoadEightDotPattern(a1, 1105, "168");
  LoadEightDotPattern(a1, 1025, "1678");
  LoadEightDotPattern(a1, 1106, "14568");
  LoadEightDotPattern(a1, 1026, "145678");
  LoadEightDotPattern(a1, 1107, "3458");
  LoadEightDotPattern(a1, 1027, "34578");
  LoadEightDotPattern(a1, 1108, "3458");
  LoadEightDotPattern(a1, 1028, "34578");
  LoadEightDotPattern(a1, 1109, "12568");
  LoadEightDotPattern(a1, 1029, "125678");
  LoadEightDotPattern(a1, 1110, "134568");
  LoadEightDotPattern(a1, 1030, "1345678");
  LoadEightDotPattern(a1, 1111, "14568");
  LoadEightDotPattern(a1, 1031, "145678");
  LoadEightDotPattern(a1, 1112, "2458");
  LoadEightDotPattern(a1, 1032, "24578");
  LoadEightDotPattern(a1, 1113, "1268");
  LoadEightDotPattern(a1, 1033, "12678");
  LoadEightDotPattern(a1, 1114, "12468");
  LoadEightDotPattern(a1, 1034, "124678");
  LoadEightDotPattern(a1, 1115, "1468");
  LoadEightDotPattern(a1, 1035, "14678");
  LoadEightDotPattern(a1, 1116, "348");
  LoadEightDotPattern(a1, 1036, "3478");
  LoadEightDotPattern(a1, 1117, "248");
  LoadEightDotPattern(a1, 1037, "2478");
  LoadEightDotPattern(a1, 1118, "3468");
  LoadEightDotPattern(a1, 1038, "34678");
  LoadEightDotPattern(a1, 1119, "124568");
  LoadEightDotPattern(a1, 1039, "1245678");
  LoadEightDotPattern(a1, 1123, "3458");
  LoadEightDotPattern(a1, 1122, "34578");
  LoadEightDotPattern(a1, 1127, "18");
  LoadEightDotPattern(a1, 1126, "178");
  LoadEightDotPattern(a1, 1131, "124568");
  LoadEightDotPattern(a1, 1130, "1245678");
  LoadEightDotPattern(a1, 1145, "3468");
  LoadEightDotPattern(a1, 1144, "34678");
  LoadEightDotPattern(a1, 1156, "48");
  LoadEightDotPattern(a1, 1163, "123468");
  LoadEightDotPattern(a1, 1162, "1234678");
  LoadEightDotPattern(a1, 1165, "234568");
  LoadEightDotPattern(a1, 1164, "2345678");
  LoadEightDotPattern(a1, 1167, "12358");
  LoadEightDotPattern(a1, 1166, "123578");
  LoadEightDotPattern(a1, 1169, "124568");
  LoadEightDotPattern(a1, 1168, "1245678");
  LoadEightDotPattern(a1, 1171, "124568");
  LoadEightDotPattern(a1, 1170, "1245678");
  LoadEightDotPattern(a1, 1173, "12458");
  LoadEightDotPattern(a1, 1172, "124578");
  LoadEightDotPattern(a1, 1175, "2458");
  LoadEightDotPattern(a1, 1174, "24578");
  LoadEightDotPattern(a1, 1177, "13568");
  LoadEightDotPattern(a1, 1176, "135678");
  LoadEightDotPattern(a1, 1179, "14568");
  LoadEightDotPattern(a1, 1178, "145678");
  LoadEightDotPattern(a1, 1181, "138");
  LoadEightDotPattern(a1, 1180, "1378");
  LoadEightDotPattern(a1, 1183, "138");
  LoadEightDotPattern(a1, 1182, "1378");
  LoadEightDotPattern(a1, 1185, "138");
  LoadEightDotPattern(a1, 1184, "1378");
  LoadEightDotPattern(a1, 1187, "1468");
  LoadEightDotPattern(a1, 1186, "14678");
  LoadEightDotPattern(a1, 1189, "1345 12458");
  LoadEightDotPattern(a1, 1188, "1345 124578");
  LoadEightDotPattern(a1, 1191, "12348");
  LoadEightDotPattern(a1, 1190, "123478");
  LoadEightDotPattern(a1, 1193, "1258");
  LoadEightDotPattern(a1, 1192, "12578");
  LoadEightDotPattern(a1, 1195, "2348");
  LoadEightDotPattern(a1, 1194, "23478");
  LoadEightDotPattern(a1, 1197, "23458");
  LoadEightDotPattern(a1, 1196, "234578");
  LoadEightDotPattern(a1, 1199, "348");
  LoadEightDotPattern(a1, 1198, "3478");
  LoadEightDotPattern(a1, 1201, "3468");
  LoadEightDotPattern(a1, 1200, "34678");
  LoadEightDotPattern(a1, 1203, "1258");
  LoadEightDotPattern(a1, 1202, "12578");
  LoadEightDotPattern(a1, 1205, "2345 148");
  LoadEightDotPattern(a1, 1204, "2345 1478");
  LoadEightDotPattern(a1, 1207, "123458");
  LoadEightDotPattern(a1, 1206, "1234578");
  LoadEightDotPattern(a1, 1209, "123458");
  LoadEightDotPattern(a1, 1208, "1234578");
  LoadEightDotPattern(a1, 1211, "12368");
  LoadEightDotPattern(a1, 1210, "123678");
  LoadEightDotPattern(a1, 1213, "123458");
  LoadEightDotPattern(a1, 1212, "1234578");
  LoadEightDotPattern(a1, 1215, "123458");
  LoadEightDotPattern(a1, 1214, "1234578");
  LoadEightDotPattern(a1, 1216, "248");
  LoadEightDotPattern(a1, 1218, "2458");
  LoadEightDotPattern(a1, 1217, "24578");
  LoadEightDotPattern(a1, 1220, "138");
  LoadEightDotPattern(a1, 1219, "1378");
  LoadEightDotPattern(a1, 1222, "1238");
  LoadEightDotPattern(a1, 1221, "12378");
  LoadEightDotPattern(a1, 1224, "13458");
  LoadEightDotPattern(a1, 1223, "134578");
  LoadEightDotPattern(a1, 1226, "13458");
  LoadEightDotPattern(a1, 1225, "134578");
  LoadEightDotPattern(a1, 1228, "123458");
  LoadEightDotPattern(a1, 1227, "1234578");
  LoadEightDotPattern(a1, 1230, "1348");
  LoadEightDotPattern(a1, 1229, "13478");
  LoadEightDotPattern(a1, 1231, "248");
  LoadEightDotPattern(a1, 1233, "18");
  LoadEightDotPattern(a1, 1232, "178");
  LoadEightDotPattern(a1, 1235, "18");
  LoadEightDotPattern(a1, 1234, "178");
  LoadEightDotPattern(a1, 1237, "1 158");
  LoadEightDotPattern(a1, 1236, "1 1578");
  LoadEightDotPattern(a1, 1239, "158");
  LoadEightDotPattern(a1, 1238, "1578");
  LoadEightDotPattern(a1, 1241, "3458");
  LoadEightDotPattern(a1, 1240, "34578");
  LoadEightDotPattern(a1, 1243, "3458");
  LoadEightDotPattern(a1, 1242, "34578");
  LoadEightDotPattern(a1, 1245, "2458");
  LoadEightDotPattern(a1, 1244, "24578");
  LoadEightDotPattern(a1, 1247, "13568");
  LoadEightDotPattern(a1, 1246, "135678");
  LoadEightDotPattern(a1, 1249, "12568");
  LoadEightDotPattern(a1, 1248, "125678");
  LoadEightDotPattern(a1, 1251, "248");
  LoadEightDotPattern(a1, 1250, "2478");
  LoadEightDotPattern(a1, 1253, "248");
  LoadEightDotPattern(a1, 1252, "2478");
  LoadEightDotPattern(a1, 1255, "1358");
  LoadEightDotPattern(a1, 1254, "13578");
  LoadEightDotPattern(a1, 1257, "1268");
  LoadEightDotPattern(a1, 1256, "12678");
  LoadEightDotPattern(a1, 1259, "1268");
  LoadEightDotPattern(a1, 1258, "12678");
  LoadEightDotPattern(a1, 1261, "158");
  LoadEightDotPattern(a1, 1260, "1578");
  LoadEightDotPattern(a1, 1263, "1368");
  LoadEightDotPattern(a1, 1262, "13678");
  LoadEightDotPattern(a1, 1265, "1368");
  LoadEightDotPattern(a1, 1264, "13678");
  LoadEightDotPattern(a1, 1267, "1368");
  LoadEightDotPattern(a1, 1266, "13678");
  LoadEightDotPattern(a1, 1269, "123458");
  LoadEightDotPattern(a1, 1268, "1234578");
  LoadEightDotPattern(a1, 1271, "12458");
  LoadEightDotPattern(a1, 1270, "124578");
  LoadEightDotPattern(a1, 1273, "23468");
  LoadEightDotPattern(a1, 1272, "234678");
  LoadEightDotPattern(a1, 1275, "124568");
  LoadEightDotPattern(a1, 1274, "1245678");
  LoadEightDotPattern(a1, 1277, "1258");
  LoadEightDotPattern(a1, 1276, "12578");
  LoadEightDotPattern(a1, 1279, "1258");
  LoadEightDotPattern(a1, 1278, "12578");
  LoadEightDotPattern(a1, 1370, "38");
  LoadEightDotPattern(a1, 1372, "2358");
  LoadEightDotPattern(a1, 1373, "28");
  LoadEightDotPattern(a1, 1374, "2368");
  LoadEightDotPattern(a1, 1377, "18");
  LoadEightDotPattern(a1, 1329, "178");
  LoadEightDotPattern(a1, 1378, "128");
  LoadEightDotPattern(a1, 1330, "1278");
  LoadEightDotPattern(a1, 1379, "12458");
  LoadEightDotPattern(a1, 1331, "124578");
  LoadEightDotPattern(a1, 1380, "1458");
  LoadEightDotPattern(a1, 1332, "14578");
  LoadEightDotPattern(a1, 1381, "2458");
  LoadEightDotPattern(a1, 1333, "24578");
  LoadEightDotPattern(a1, 1382, "23468");
  LoadEightDotPattern(a1, 1334, "234678");
  LoadEightDotPattern(a1, 1383, "158");
  LoadEightDotPattern(a1, 1335, "1578");
  LoadEightDotPattern(a1, 1384, "348");
  LoadEightDotPattern(a1, 1336, "3478");
  LoadEightDotPattern(a1, 1385, "3458");
  LoadEightDotPattern(a1, 1337, "34578");
  LoadEightDotPattern(a1, 1386, "234568");
  LoadEightDotPattern(a1, 1338, "2345678");
  LoadEightDotPattern(a1, 1387, "248");
  LoadEightDotPattern(a1, 1339, "2478");
  LoadEightDotPattern(a1, 1388, "1238");
  LoadEightDotPattern(a1, 1340, "12378");
  LoadEightDotPattern(a1, 1389, "14568");
  LoadEightDotPattern(a1, 1341, "145678");
  LoadEightDotPattern(a1, 1390, "148");
  LoadEightDotPattern(a1, 1342, "1478");
  LoadEightDotPattern(a1, 1391, "138");
  LoadEightDotPattern(a1, 1343, "1378");
  LoadEightDotPattern(a1, 1392, "1258");
  LoadEightDotPattern(a1, 1344, "12578");
  LoadEightDotPattern(a1, 1393, "1268");
  LoadEightDotPattern(a1, 1345, "12678");
  LoadEightDotPattern(a1, 1394, "124568");
  LoadEightDotPattern(a1, 1346, "1245678");
  LoadEightDotPattern(a1, 1395, "1468");
  LoadEightDotPattern(a1, 1347, "14678");
  LoadEightDotPattern(a1, 1396, "1348");
  LoadEightDotPattern(a1, 1348, "13478");
  LoadEightDotPattern(a1, 1397, "134568");
  LoadEightDotPattern(a1, 1349, "1345678");
  LoadEightDotPattern(a1, 1398, "13458");
  LoadEightDotPattern(a1, 1350, "134578");
  LoadEightDotPattern(a1, 1399, "1568");
  LoadEightDotPattern(a1, 1351, "15678");
  LoadEightDotPattern(a1, 1400, "12368");
  LoadEightDotPattern(a1, 1352, "123678");
  LoadEightDotPattern(a1, 1401, "123458");
  LoadEightDotPattern(a1, 1353, "1234578");
  LoadEightDotPattern(a1, 1402, "12348");
  LoadEightDotPattern(a1, 1354, "123478");
  LoadEightDotPattern(a1, 1403, "13468");
  LoadEightDotPattern(a1, 1355, "134678");
  LoadEightDotPattern(a1, 1404, "123568");
  LoadEightDotPattern(a1, 1356, "1235678");
  LoadEightDotPattern(a1, 1405, "2348");
  LoadEightDotPattern(a1, 1357, "23478");
  LoadEightDotPattern(a1, 1406, "24568");
  LoadEightDotPattern(a1, 1358, "245678");
  LoadEightDotPattern(a1, 1407, "23458");
  LoadEightDotPattern(a1, 1359, "234578");
  LoadEightDotPattern(a1, 1408, "12358");
  LoadEightDotPattern(a1, 1360, "123578");
  LoadEightDotPattern(a1, 1409, "13568");
  LoadEightDotPattern(a1, 1361, "135678");
  LoadEightDotPattern(a1, 1410, "1368");
  LoadEightDotPattern(a1, 1362, "13678");
  LoadEightDotPattern(a1, 1411, "134568");
  LoadEightDotPattern(a1, 1363, "1345678");
  LoadEightDotPattern(a1, 1412, "123468");
  LoadEightDotPattern(a1, 1364, "1234678");
  LoadEightDotPattern(a1, 1413, "1358");
  LoadEightDotPattern(a1, 1365, "13578");
  LoadEightDotPattern(a1, 1414, "1248");
  LoadEightDotPattern(a1, 1366, "12478");
  LoadEightDotPattern(a1, 1417, "2568");
  LoadEightDotPattern(a1, 1418, "368");
  LoadEightDotPattern(a1, 1425, "238");
  LoadEightDotPattern(a1, 1426, "158");
  LoadEightDotPattern(a1, 1428, "28");
  LoadEightDotPattern(a1, 1431, "56 1235 24 1236 58");
  LoadEightDotPattern(a1, 1436, "56 1245 15 1235 58");
  LoadEightDotPattern(a1, 1443, "56 134 136 1345 58");
  LoadEightDotPattern(a1, 1456, "3");
  LoadEightDotPattern(a1, 1457, "26");
  LoadEightDotPattern(a1, 1458, "25");
  LoadEightDotPattern(a1, 1459, "345");
  LoadEightDotPattern(a1, 1460, "35");
  LoadEightDotPattern(a1, 1461, "34");
  LoadEightDotPattern(a1, 1462, "15");
  LoadEightDotPattern(a1, 1463, "14");
  LoadEightDotPattern(a1, 1464, "126");
  LoadEightDotPattern(a1, 1465, "246");
  LoadEightDotPattern(a1, 1467, "346");
  LoadEightDotPattern(a1, 1468, "5");
  LoadEightDotPattern(a1, 1469, "4");
  LoadEightDotPattern(a1, 1470, "36");
  LoadEightDotPattern(a1, 1471, "16");
  LoadEightDotPattern(a1, 1472, "168");
  LoadEightDotPattern(a1, 1475, "2568");
  LoadEightDotPattern(a1, 1476, "168");
  LoadEightDotPattern(a1, 1488, "18");
  LoadEightDotPattern(a1, 1489, "12368");
  LoadEightDotPattern(a1, 1490, "12458");
  LoadEightDotPattern(a1, 1491, "1458");
  LoadEightDotPattern(a1, 1492, "1258");
  LoadEightDotPattern(a1, 1493, "24568");
  LoadEightDotPattern(a1, 1494, "13568");
  LoadEightDotPattern(a1, 1495, "13468");
  LoadEightDotPattern(a1, 1496, "23458");
  LoadEightDotPattern(a1, 1497, "2458");
  LoadEightDotPattern(a1, 1498, "168");
  LoadEightDotPattern(a1, 1499, "168");
  LoadEightDotPattern(a1, 1500, "1238");
  LoadEightDotPattern(a1, 1501, "1348");
  LoadEightDotPattern(a1, 1502, "1348");
  LoadEightDotPattern(a1, 1503, "13458");
  LoadEightDotPattern(a1, 1504, "13458");
  LoadEightDotPattern(a1, 1505, "2348");
  LoadEightDotPattern(a1, 1506, "12468");
  LoadEightDotPattern(a1, 1507, "1248");
  LoadEightDotPattern(a1, 1508, "1248");
  LoadEightDotPattern(a1, 1509, "23468");
  LoadEightDotPattern(a1, 1510, "23468");
  LoadEightDotPattern(a1, 1511, "123458");
  LoadEightDotPattern(a1, 1512, "12358");
  LoadEightDotPattern(a1, 1513, "1468");
  LoadEightDotPattern(a1, 1514, "14568");
  LoadEightDotPattern(a1, 1520, "168");
  LoadEightDotPattern(a1, 1521, "168");
  LoadEightDotPattern(a1, 1522, "168");
  LoadEightDotPattern(a1, 1523, "168");
  LoadEightDotPattern(a1, 1524, "168");
  LoadEightDotPattern(a1, 1536, "34568");
  LoadEightDotPattern(a1, 1548, "28");
  LoadEightDotPattern(a1, 1549, "36 368");
  LoadEightDotPattern(a1, 1550, "36 368");
  LoadEightDotPattern(a1, 1551, "36 368");
  LoadEightDotPattern(a1, 1563, "238");
  LoadEightDotPattern(a1, 1566, "3 3 38");
  LoadEightDotPattern(a1, 1567, "2368");
  LoadEightDotPattern(a1, 1569, "38");
  LoadEightDotPattern(a1, 1570, "3458");
  LoadEightDotPattern(a1, 1571, "348");
  LoadEightDotPattern(a1, 1572, "12568");
  LoadEightDotPattern(a1, 1573, "348");
  LoadEightDotPattern(a1, 1574, "134568");
  LoadEightDotPattern(a1, 1575, "18");
  LoadEightDotPattern(a1, 1576, "128");
  LoadEightDotPattern(a1, 1577, "168");
  LoadEightDotPattern(a1, 1578, "23458");
  LoadEightDotPattern(a1, 1579, "14568");
  LoadEightDotPattern(a1, 1580, "2458");
  LoadEightDotPattern(a1, 1581, "1568");
  LoadEightDotPattern(a1, 1582, "13468");
  LoadEightDotPattern(a1, 1583, "1458");
  LoadEightDotPattern(a1, 1584, "23468");
  LoadEightDotPattern(a1, 1585, "12358");
  LoadEightDotPattern(a1, 1586, "13568");
  LoadEightDotPattern(a1, 1587, "2348");
  LoadEightDotPattern(a1, 1588, "1468");
  LoadEightDotPattern(a1, 1589, "123468");
  LoadEightDotPattern(a1, 1590, "12468");
  LoadEightDotPattern(a1, 1591, "234568");
  LoadEightDotPattern(a1, 1592, "1234568");
  LoadEightDotPattern(a1, 1593, "123568");
  LoadEightDotPattern(a1, 1594, "1268");
  LoadEightDotPattern(a1, 1601, "1248");
  LoadEightDotPattern(a1, 1602, "123458");
  LoadEightDotPattern(a1, 1603, "138");
  LoadEightDotPattern(a1, 1604, "1238");
  LoadEightDotPattern(a1, 1605, "1348");
  LoadEightDotPattern(a1, 1606, "13458");
  LoadEightDotPattern(a1, 1607, "1258");
  LoadEightDotPattern(a1, 1608, "24568");
  LoadEightDotPattern(a1, 1609, "1358");
  LoadEightDotPattern(a1, 1610, "248");
  LoadEightDotPattern(a1, 1611, "238");
  LoadEightDotPattern(a1, 1612, "268");
  LoadEightDotPattern(a1, 1613, "358");
  LoadEightDotPattern(a1, 1614, "28");
  LoadEightDotPattern(a1, 1615, "1368");
  LoadEightDotPattern(a1, 1616, "158");
  LoadEightDotPattern(a1, 1617, "68");
  LoadEightDotPattern(a1, 1618, "258");
  LoadEightDotPattern(a1, 1620, "38");
  LoadEightDotPattern(a1, 1632, "2458");
  LoadEightDotPattern(a1, 1633, "18");
  LoadEightDotPattern(a1, 1634, "128");
  LoadEightDotPattern(a1, 1635, "148");
  LoadEightDotPattern(a1, 1636, "1458");
  LoadEightDotPattern(a1, 1637, "158");
  LoadEightDotPattern(a1, 1638, "1248");
  LoadEightDotPattern(a1, 1639, "12458");
  LoadEightDotPattern(a1, 1640, "1258");
  LoadEightDotPattern(a1, 1641, "248");
  LoadEightDotPattern(a1, 1642, "25 12348");
  LoadEightDotPattern(a1, 1643, "2568");
  LoadEightDotPattern(a1, 1644, "28");
  LoadEightDotPattern(a1, 1645, "35 4 134568");
  LoadEightDotPattern(a1, 1646, "128");
  LoadEightDotPattern(a1, 1647, "123458");
  LoadEightDotPattern(a1, 1648, "35 123468");
  LoadEightDotPattern(a1, 1649, "35 123568");
  LoadEightDotPattern(a1, 1650, "12568");
  LoadEightDotPattern(a1, 1651, "348");
  LoadEightDotPattern(a1, 1652, "38");
  LoadEightDotPattern(a1, 1653, "12568");
  LoadEightDotPattern(a1, 1654, "2456 38");
  LoadEightDotPattern(a1, 1655, "2456 38");
  LoadEightDotPattern(a1, 1656, "24 38");
  LoadEightDotPattern(a1, 1657, "2468");
  LoadEightDotPattern(a1, 1658, "2468");
  LoadEightDotPattern(a1, 1659, "2468");
  LoadEightDotPattern(a1, 1660, "23458");
  LoadEightDotPattern(a1, 1661, "23458");
  LoadEightDotPattern(a1, 1662, "12348");
  LoadEightDotPattern(a1, 1663, "23458");
  LoadEightDotPattern(a1, 1664, "128");
  LoadEightDotPattern(a1, 1665, "1568");
  LoadEightDotPattern(a1, 1666, "1568");
  LoadEightDotPattern(a1, 1667, "1568");
  LoadEightDotPattern(a1, 1668, "1568");
  LoadEightDotPattern(a1, 1669, "1568");
  LoadEightDotPattern(a1, 1670, "148");
  LoadEightDotPattern(a1, 1671, "1568");
  LoadEightDotPattern(a1, 1672, "3468");
  LoadEightDotPattern(a1, 1673, "1458");
  LoadEightDotPattern(a1, 1674, "1458");
  LoadEightDotPattern(a1, 1675, "1458");
  LoadEightDotPattern(a1, 1676, "1458");
  LoadEightDotPattern(a1, 1677, "1458");
  LoadEightDotPattern(a1, 1678, "1458");
  LoadEightDotPattern(a1, 1679, "1458");
  LoadEightDotPattern(a1, 1680, "1458");
  LoadEightDotPattern(a1, 1681, "124568");
  LoadEightDotPattern(a1, 1682, "12358");
  LoadEightDotPattern(a1, 1683, "12358");
  LoadEightDotPattern(a1, 1684, "12358");
  LoadEightDotPattern(a1, 1685, "12358");
  LoadEightDotPattern(a1, 1686, "12358");
  LoadEightDotPattern(a1, 1687, "12358");
  LoadEightDotPattern(a1, 1688, "5 13568");
  LoadEightDotPattern(a1, 1689, "12358");
  LoadEightDotPattern(a1, 1690, "2348");
  LoadEightDotPattern(a1, 1691, "2348");
  LoadEightDotPattern(a1, 1692, "2348");
  LoadEightDotPattern(a1, 1693, "123468");
  LoadEightDotPattern(a1, 1694, "123468");
  LoadEightDotPattern(a1, 1695, "123468");
  LoadEightDotPattern(a1, 1696, "123468");
  LoadEightDotPattern(a1, 1697, "1248");
  LoadEightDotPattern(a1, 1698, "1248");
  LoadEightDotPattern(a1, 1699, "1248");
  LoadEightDotPattern(a1, 1700, "12368");
  LoadEightDotPattern(a1, 1701, "1248");
  LoadEightDotPattern(a1, 1702, "1248");
  LoadEightDotPattern(a1, 1703, "123458");
  LoadEightDotPattern(a1, 1704, "123458");
  LoadEightDotPattern(a1, 1705, "138");
  LoadEightDotPattern(a1, 1706, "138");
  LoadEightDotPattern(a1, 1707, "138");
  LoadEightDotPattern(a1, 1708, "138");
  LoadEightDotPattern(a1, 1709, "138");
  LoadEightDotPattern(a1, 1710, "138");
  LoadEightDotPattern(a1, 1711, "12458");
  LoadEightDotPattern(a1, 1712, "12458");
  LoadEightDotPattern(a1, 1713, "12458");
  LoadEightDotPattern(a1, 1714, "12458");
  LoadEightDotPattern(a1, 1715, "12458");
  LoadEightDotPattern(a1, 1716, "12458");
  LoadEightDotPattern(a1, 1717, "1238");
  LoadEightDotPattern(a1, 1718, "1238");
  LoadEightDotPattern(a1, 1719, "1238");
  LoadEightDotPattern(a1, 1720, "1238");
  LoadEightDotPattern(a1, 1721, "568");
  LoadEightDotPattern(a1, 1722, "568");
  LoadEightDotPattern(a1, 1723, "568");
  LoadEightDotPattern(a1, 1724, "568");
  LoadEightDotPattern(a1, 1725, "568");
  LoadEightDotPattern(a1, 1726, "1258");
  LoadEightDotPattern(a1, 1727, "1258");
  LoadEightDotPattern(a1, 1728, "1258");
  LoadEightDotPattern(a1, 1729, "1258");
  LoadEightDotPattern(a1, 1730, "1258");
  LoadEightDotPattern(a1, 1731, "168");
  LoadEightDotPattern(a1, 1732, "24568");
  LoadEightDotPattern(a1, 1733, "24568");
  LoadEightDotPattern(a1, 1734, "24568");
  LoadEightDotPattern(a1, 1735, "24568");
  LoadEightDotPattern(a1, 1736, "24568");
  LoadEightDotPattern(a1, 1737, "24568");
  LoadEightDotPattern(a1, 1738, "24568");
  LoadEightDotPattern(a1, 1739, "12368");
  LoadEightDotPattern(a1, 1740, "248");
  LoadEightDotPattern(a1, 1741, "248");
  LoadEightDotPattern(a1, 1742, "248");
  LoadEightDotPattern(a1, 1743, "24568");
  LoadEightDotPattern(a1, 1744, "248");
  LoadEightDotPattern(a1, 1745, "248");
  LoadEightDotPattern(a1, 1746, "348");
  LoadEightDotPattern(a1, 1747, "348");
  LoadEightDotPattern(a1, 1748, "2568");
  LoadEightDotPattern(a1, 1749, "1 158");
  LoadEightDotPattern(a1, 1750, "234 123 1358");
  LoadEightDotPattern(a1, 1751, "12345 123 1358");
  LoadEightDotPattern(a1, 1752, "1348");
  LoadEightDotPattern(a1, 1753, "123 18");
  LoadEightDotPattern(a1, 1754, "2458");
  LoadEightDotPattern(a1, 1756, "18");
  LoadEightDotPattern(a1, 1757, "35 35 35 358");
  LoadEightDotPattern(a1, 1758, "35 35 35 358");
  LoadEightDotPattern(a1, 1761, "1568");
  LoadEightDotPattern(a1, 1762, "1348");
  LoadEightDotPattern(a1, 1763, "2348");
  LoadEightDotPattern(a1, 1765, "24568");
  LoadEightDotPattern(a1, 1766, "248");
  LoadEightDotPattern(a1, 1767, "248");
  LoadEightDotPattern(a1, 1768, "13458");
  LoadEightDotPattern(a1, 1769, "35 35 35 358");
  LoadEightDotPattern(a1, 1770, "2568");
  LoadEightDotPattern(a1, 1771, "2568");
  LoadEightDotPattern(a1, 1772, "2568");
  LoadEightDotPattern(a1, 1773, "1348");
  LoadEightDotPattern(a1, 1774, "1458");
  LoadEightDotPattern(a1, 1775, "12358");
  LoadEightDotPattern(a1, 1776, "2458");
  LoadEightDotPattern(a1, 1777, "18");
  LoadEightDotPattern(a1, 1778, "128");
  LoadEightDotPattern(a1, 1779, "148");
  LoadEightDotPattern(a1, 1780, "1458");
  LoadEightDotPattern(a1, 1781, "158");
  LoadEightDotPattern(a1, 1782, "1248");
  LoadEightDotPattern(a1, 1783, "12458");
  LoadEightDotPattern(a1, 1784, "1258");
  LoadEightDotPattern(a1, 1785, "248");
  LoadEightDotPattern(a1, 1786, "1468");
  LoadEightDotPattern(a1, 1787, "12468");
  LoadEightDotPattern(a1, 1788, "1268");
  LoadEightDotPattern(a1, 1789, "35 35 35 358");
  LoadEightDotPattern(a1, 1790, "35 35 35 358");
  LoadEightDotPattern(a1, 1791, "1258");
  LoadEightDotPattern(a1, 2305, "38");
  LoadEightDotPattern(a1, 2306, "568");
  LoadEightDotPattern(a1, 2307, "68");
  LoadEightDotPattern(a1, 2309, "18");
  LoadEightDotPattern(a1, 2310, "3458");
  LoadEightDotPattern(a1, 2311, "248");
  LoadEightDotPattern(a1, 2312, "358");
  LoadEightDotPattern(a1, 2313, "1368");
  LoadEightDotPattern(a1, 2314, "12568");
  LoadEightDotPattern(a1, 2315, "5 12358");
  LoadEightDotPattern(a1, 2316, "4 123 5 12358");
  LoadEightDotPattern(a1, 2317, "268");
  LoadEightDotPattern(a1, 2318, "4 12358");
  LoadEightDotPattern(a1, 2319, "158");
  LoadEightDotPattern(a1, 2320, "348");
  LoadEightDotPattern(a1, 2321, "3458");
  LoadEightDotPattern(a1, 2322, "68");
  LoadEightDotPattern(a1, 2323, "1358");
  LoadEightDotPattern(a1, 2324, "2468");
  LoadEightDotPattern(a1, 2325, "138");
  LoadEightDotPattern(a1, 2326, "468");
  LoadEightDotPattern(a1, 2327, "12458");
  LoadEightDotPattern(a1, 2328, "1268");
  LoadEightDotPattern(a1, 2329, "3468");
  LoadEightDotPattern(a1, 2330, "148");
  LoadEightDotPattern(a1, 2331, "168");
  LoadEightDotPattern(a1, 2332, "2458");
  LoadEightDotPattern(a1, 2333, "3568");
  LoadEightDotPattern(a1, 2334, "258");
  LoadEightDotPattern(a1, 2335, "234568");
  LoadEightDotPattern(a1, 2336, "24568");
  LoadEightDotPattern(a1, 2337, "12468");
  LoadEightDotPattern(a1, 2338, "1234568");
  LoadEightDotPattern(a1, 2339, "34568");
  LoadEightDotPattern(a1, 2340, "23458");
  LoadEightDotPattern(a1, 2341, "14568");
  LoadEightDotPattern(a1, 2342, "1458");
  LoadEightDotPattern(a1, 2343, "23468");
  LoadEightDotPattern(a1, 2344, "13458");
  LoadEightDotPattern(a1, 2345, "34568");
  LoadEightDotPattern(a1, 2346, "12348");
  LoadEightDotPattern(a1, 2347, "2358");
  LoadEightDotPattern(a1, 2348, "128");
  LoadEightDotPattern(a1, 2349, "458");
  LoadEightDotPattern(a1, 2350, "1348");
  LoadEightDotPattern(a1, 2351, "134568");
  LoadEightDotPattern(a1, 2352, "12358");
  LoadEightDotPattern(a1, 2353, "12358");
  LoadEightDotPattern(a1, 2354, "1238");
  LoadEightDotPattern(a1, 2355, "4568");
  LoadEightDotPattern(a1, 2356, "5 4568");
  LoadEightDotPattern(a1, 2357, "12368");
  LoadEightDotPattern(a1, 2358, "1468");
  LoadEightDotPattern(a1, 2359, "123468");
  LoadEightDotPattern(a1, 2360, "2348");
  LoadEightDotPattern(a1, 2361, "1258");
  LoadEightDotPattern(a1, 2365, "28");
  LoadEightDotPattern(a1, 2366, "3458");
  LoadEightDotPattern(a1, 2367, "248");
  LoadEightDotPattern(a1, 2368, "358");
  LoadEightDotPattern(a1, 2369, "1368");
  LoadEightDotPattern(a1, 2370, "12568");
  LoadEightDotPattern(a1, 2371, "5 12358");
  LoadEightDotPattern(a1, 2372, "4 123 5 12358");
  LoadEightDotPattern(a1, 2373, "268");
  LoadEightDotPattern(a1, 2374, "4 12358");
  LoadEightDotPattern(a1, 2375, "158");
  LoadEightDotPattern(a1, 2376, "348");
  LoadEightDotPattern(a1, 2377, "3458");
  LoadEightDotPattern(a1, 2378, "4 1235 3458");
  LoadEightDotPattern(a1, 2379, "1358");
  LoadEightDotPattern(a1, 2380, "2468");
  LoadEightDotPattern(a1, 2381, "48");
  LoadEightDotPattern(a1, 2384, "1 1256 38");
  LoadEightDotPattern(a1, 2385, "48");
  LoadEightDotPattern(a1, 2386, "58");
  LoadEightDotPattern(a1, 2392, "138");
  LoadEightDotPattern(a1, 2393, "468");
  LoadEightDotPattern(a1, 2394, "12458");
  LoadEightDotPattern(a1, 2395, "2458");
  LoadEightDotPattern(a1, 2396, "124568");
  LoadEightDotPattern(a1, 2397, "5 124568");
  LoadEightDotPattern(a1, 2398, "2358");
  LoadEightDotPattern(a1, 2399, "134568");
  LoadEightDotPattern(a1, 2400, "6 12358");
  LoadEightDotPattern(a1, 2401, "6 1238");
  LoadEightDotPattern(a1, 2402, "5 1238");
  LoadEightDotPattern(a1, 2403, "6 1238");
  LoadEightDotPattern(a1, 2404, "2568");
  LoadEightDotPattern(a1, 2405, "256 2568");
  LoadEightDotPattern(a1, 2406, "2458");
  LoadEightDotPattern(a1, 2407, "18");
  LoadEightDotPattern(a1, 2408, "128");
  LoadEightDotPattern(a1, 2409, "148");
  LoadEightDotPattern(a1, 2410, "1458");
  LoadEightDotPattern(a1, 2411, "158");
  LoadEightDotPattern(a1, 2412, "1248");
  LoadEightDotPattern(a1, 2413, "12458");
  LoadEightDotPattern(a1, 2414, "1258");
  LoadEightDotPattern(a1, 2415, "248");
  LoadEightDotPattern(a1, 2416, "2568");
  LoadEightDotPattern(a1, 2433, "38");
  LoadEightDotPattern(a1, 2434, "568");
  LoadEightDotPattern(a1, 2435, "68");
  LoadEightDotPattern(a1, 2437, "18");
  LoadEightDotPattern(a1, 2438, "3458");
  LoadEightDotPattern(a1, 2439, "248");
  LoadEightDotPattern(a1, 2440, "358");
  LoadEightDotPattern(a1, 2441, "1368");
  LoadEightDotPattern(a1, 2442, "12568");
  LoadEightDotPattern(a1, 2443, "5 12358");
  LoadEightDotPattern(a1, 2444, "5 1238");
  LoadEightDotPattern(a1, 2447, "158");
  LoadEightDotPattern(a1, 2448, "348");
  LoadEightDotPattern(a1, 2451, "1358");
  LoadEightDotPattern(a1, 2452, "2468");
  LoadEightDotPattern(a1, 2453, "138");
  LoadEightDotPattern(a1, 2454, "468");
  LoadEightDotPattern(a1, 2455, "12458");
  LoadEightDotPattern(a1, 2456, "1268");
  LoadEightDotPattern(a1, 2457, "3468");
  LoadEightDotPattern(a1, 2458, "148");
  LoadEightDotPattern(a1, 2459, "168");
  LoadEightDotPattern(a1, 2460, "2458");
  LoadEightDotPattern(a1, 2461, "3568");
  LoadEightDotPattern(a1, 2462, "258");
  LoadEightDotPattern(a1, 2463, "234568");
  LoadEightDotPattern(a1, 2464, "24568");
  LoadEightDotPattern(a1, 2465, "12468");
  LoadEightDotPattern(a1, 2466, "1234568");
  LoadEightDotPattern(a1, 2467, "34568");
  LoadEightDotPattern(a1, 2468, "23458");
  LoadEightDotPattern(a1, 2469, "14568");
  LoadEightDotPattern(a1, 2470, "1458");
  LoadEightDotPattern(a1, 2471, "23468");
  LoadEightDotPattern(a1, 2472, "13458");
  LoadEightDotPattern(a1, 2474, "12348");
  LoadEightDotPattern(a1, 2475, "2358");
  LoadEightDotPattern(a1, 2476, "128");
  LoadEightDotPattern(a1, 2477, "458");
  LoadEightDotPattern(a1, 2478, "1348");
  LoadEightDotPattern(a1, 2479, "134568");
  LoadEightDotPattern(a1, 2480, "12358");
  LoadEightDotPattern(a1, 2482, "1238");
  LoadEightDotPattern(a1, 2486, "1468");
  LoadEightDotPattern(a1, 2487, "123468");
  LoadEightDotPattern(a1, 2488, "2348");
  LoadEightDotPattern(a1, 2489, "1258");
  LoadEightDotPattern(a1, 2493, "28");
  LoadEightDotPattern(a1, 2494, "3458");
  LoadEightDotPattern(a1, 2495, "248");
  LoadEightDotPattern(a1, 2496, "358");
  LoadEightDotPattern(a1, 2497, "1368");
  LoadEightDotPattern(a1, 2498, "12568");
  LoadEightDotPattern(a1, 2499, "5 12358");
  LoadEightDotPattern(a1, 2500, "6 12358");
  LoadEightDotPattern(a1, 2503, "158");
  LoadEightDotPattern(a1, 2504, "348");
  LoadEightDotPattern(a1, 2507, "1358");
  LoadEightDotPattern(a1, 2508, "2468");
  LoadEightDotPattern(a1, 2509, "48");
  LoadEightDotPattern(a1, 2510, "4 23458");
  LoadEightDotPattern(a1, 2524, "124568");
  LoadEightDotPattern(a1, 2525, "5 124568");
  LoadEightDotPattern(a1, 2527, "468");
  LoadEightDotPattern(a1, 2528, "6 12358");
  LoadEightDotPattern(a1, 2529, "6 1238");
  LoadEightDotPattern(a1, 2530, "4 1238");
  LoadEightDotPattern(a1, 2531, "6 1238");
  LoadEightDotPattern(a1, 2534, "2458");
  LoadEightDotPattern(a1, 2535, "18");
  LoadEightDotPattern(a1, 2536, "128");
  LoadEightDotPattern(a1, 2537, "148");
  LoadEightDotPattern(a1, 2538, "1458");
  LoadEightDotPattern(a1, 2539, "158");
  LoadEightDotPattern(a1, 2540, "1248");
  LoadEightDotPattern(a1, 2541, "12458");
  LoadEightDotPattern(a1, 2542, "1258");
  LoadEightDotPattern(a1, 2543, "248");
  LoadEightDotPattern(a1, 2544, "12358");
  LoadEightDotPattern(a1, 2545, "12368");
  LoadEightDotPattern(a1, 2546, "1235 15 2568");
  LoadEightDotPattern(a1, 2547, "1235 15 2568");
  LoadEightDotPattern(a1, 2548, "18");
  LoadEightDotPattern(a1, 2549, "128");
  LoadEightDotPattern(a1, 2550, "148");
  LoadEightDotPattern(a1, 2551, "1458");
  LoadEightDotPattern(a1, 2552, "168");
  LoadEightDotPattern(a1, 2553, "1 1248");
  LoadEightDotPattern(a1, 2554, "168");
  LoadEightDotPattern(a1, 2561, "38");
  LoadEightDotPattern(a1, 2562, "568");
  LoadEightDotPattern(a1, 2563, "68");
  LoadEightDotPattern(a1, 2565, "18");
  LoadEightDotPattern(a1, 2566, "3458");
  LoadEightDotPattern(a1, 2567, "248");
  LoadEightDotPattern(a1, 2568, "358");
  LoadEightDotPattern(a1, 2569, "1368");
  LoadEightDotPattern(a1, 2570, "12568");
  LoadEightDotPattern(a1, 2575, "158");
  LoadEightDotPattern(a1, 2576, "348");
  LoadEightDotPattern(a1, 2579, "1358");
  LoadEightDotPattern(a1, 2580, "2468");
  LoadEightDotPattern(a1, 2581, "138");
  LoadEightDotPattern(a1, 2582, "468");
  LoadEightDotPattern(a1, 2583, "12458");
  LoadEightDotPattern(a1, 2584, "1268");
  LoadEightDotPattern(a1, 2585, "3468");
  LoadEightDotPattern(a1, 2586, "148");
  LoadEightDotPattern(a1, 2587, "168");
  LoadEightDotPattern(a1, 2588, "2458");
  LoadEightDotPattern(a1, 2589, "3568");
  LoadEightDotPattern(a1, 2590, "258");
  LoadEightDotPattern(a1, 2591, "234568");
  LoadEightDotPattern(a1, 2592, "24568");
  LoadEightDotPattern(a1, 2593, "12468");
  LoadEightDotPattern(a1, 2594, "1234568");
  LoadEightDotPattern(a1, 2595, "34568");
  LoadEightDotPattern(a1, 2596, "23458");
  LoadEightDotPattern(a1, 2597, "14568");
  LoadEightDotPattern(a1, 2598, "1458");
  LoadEightDotPattern(a1, 2599, "23468");
  LoadEightDotPattern(a1, 2600, "13458");
  LoadEightDotPattern(a1, 2602, "12348");
  LoadEightDotPattern(a1, 2603, "2358");
  LoadEightDotPattern(a1, 2604, "128");
  LoadEightDotPattern(a1, 2605, "458");
  LoadEightDotPattern(a1, 2606, "1348");
  LoadEightDotPattern(a1, 2607, "134568");
  LoadEightDotPattern(a1, 2608, "12358");
  LoadEightDotPattern(a1, 2610, "1238");
  LoadEightDotPattern(a1, 2611, "4568");
  LoadEightDotPattern(a1, 2613, "12368");
  LoadEightDotPattern(a1, 2614, "1468");
  LoadEightDotPattern(a1, 2616, "2348");
  LoadEightDotPattern(a1, 2617, "1258");
  LoadEightDotPattern(a1, 2621, "28");
  LoadEightDotPattern(a1, 2622, "3458");
  LoadEightDotPattern(a1, 2623, "248");
  LoadEightDotPattern(a1, 2624, "358");
  LoadEightDotPattern(a1, 2625, "1368");
  LoadEightDotPattern(a1, 2626, "12568");
  LoadEightDotPattern(a1, 2631, "158");
  LoadEightDotPattern(a1, 2632, "348");
  LoadEightDotPattern(a1, 2635, "1358");
  LoadEightDotPattern(a1, 2636, "2468");
  LoadEightDotPattern(a1, 2637, "48");
  LoadEightDotPattern(a1, 2641, "48");
  LoadEightDotPattern(a1, 2649, "13468");
  LoadEightDotPattern(a1, 2650, "5 12458");
  LoadEightDotPattern(a1, 2651, "13568");
  LoadEightDotPattern(a1, 2652, "124568");
  LoadEightDotPattern(a1, 2653, "123456 48");
  LoadEightDotPattern(a1, 2654, "1248");
  LoadEightDotPattern(a1, 2655, "13456 48");
  LoadEightDotPattern(a1, 2660, "2568");
  LoadEightDotPattern(a1, 2661, "256 2568");
  LoadEightDotPattern(a1, 2662, "2458");
  LoadEightDotPattern(a1, 2663, "18");
  LoadEightDotPattern(a1, 2664, "128");
  LoadEightDotPattern(a1, 2665, "148");
  LoadEightDotPattern(a1, 2666, "1458");
  LoadEightDotPattern(a1, 2667, "158");
  LoadEightDotPattern(a1, 2668, "1248");
  LoadEightDotPattern(a1, 2669, "12458");
  LoadEightDotPattern(a1, 2670, "1258");
  LoadEightDotPattern(a1, 2671, "248");
  LoadEightDotPattern(a1, 2672, "168");
  LoadEightDotPattern(a1, 2673, "168");
  LoadEightDotPattern(a1, 2674, "168");
  LoadEightDotPattern(a1, 2675, "168");
  LoadEightDotPattern(a1, 2676, "168");
  LoadEightDotPattern(a1, 2689, "38");
  LoadEightDotPattern(a1, 2690, "568");
  LoadEightDotPattern(a1, 2691, "68");
  LoadEightDotPattern(a1, 2693, "18");
  LoadEightDotPattern(a1, 2694, "3458");
  LoadEightDotPattern(a1, 2695, "248");
  LoadEightDotPattern(a1, 2696, "358");
  LoadEightDotPattern(a1, 2697, "1368");
  LoadEightDotPattern(a1, 2698, "12568");
  LoadEightDotPattern(a1, 2699, "5 12358");
  LoadEightDotPattern(a1, 2700, "5 1238");
  LoadEightDotPattern(a1, 2701, "268");
  LoadEightDotPattern(a1, 2703, "158");
  LoadEightDotPattern(a1, 2704, "348");
  LoadEightDotPattern(a1, 2705, "13468");
  LoadEightDotPattern(a1, 2707, "1358");
  LoadEightDotPattern(a1, 2708, "2468");
  LoadEightDotPattern(a1, 2709, "138");
  LoadEightDotPattern(a1, 2710, "468");
  LoadEightDotPattern(a1, 2711, "12458");
  LoadEightDotPattern(a1, 2712, "1268");
  LoadEightDotPattern(a1, 2713, "3468");
  LoadEightDotPattern(a1, 2714, "148");
  LoadEightDotPattern(a1, 2715, "168");
  LoadEightDotPattern(a1, 2716, "2458");
  LoadEightDotPattern(a1, 2717, "3568");
  LoadEightDotPattern(a1, 2718, "258");
  LoadEightDotPattern(a1, 2719, "234568");
  LoadEightDotPattern(a1, 2720, "24568");
  LoadEightDotPattern(a1, 2721, "12468");
  LoadEightDotPattern(a1, 2722, "1234568");
  LoadEightDotPattern(a1, 2723, "34568");
  LoadEightDotPattern(a1, 2724, "23458");
  LoadEightDotPattern(a1, 2725, "14568");
  LoadEightDotPattern(a1, 2726, "1458");
  LoadEightDotPattern(a1, 2727, "23468");
  LoadEightDotPattern(a1, 2728, "13458");
  LoadEightDotPattern(a1, 2730, "12348");
  LoadEightDotPattern(a1, 2731, "2358");
  LoadEightDotPattern(a1, 2732, "128");
  LoadEightDotPattern(a1, 2733, "458");
  LoadEightDotPattern(a1, 2734, "1348");
  LoadEightDotPattern(a1, 2735, "134568");
  LoadEightDotPattern(a1, 2736, "12358");
  LoadEightDotPattern(a1, 2738, "1238");
  LoadEightDotPattern(a1, 2739, "4568");
  LoadEightDotPattern(a1, 2741, "12368");
  LoadEightDotPattern(a1, 2742, "1468");
  LoadEightDotPattern(a1, 2743, "123468");
  LoadEightDotPattern(a1, 2744, "2348");
  LoadEightDotPattern(a1, 2745, "1258");
  LoadEightDotPattern(a1, 2749, "28");
  LoadEightDotPattern(a1, 2750, "3458");
  LoadEightDotPattern(a1, 2751, "248");
  LoadEightDotPattern(a1, 2752, "358");
  LoadEightDotPattern(a1, 2753, "1368");
  LoadEightDotPattern(a1, 2754, "12568");
  LoadEightDotPattern(a1, 2755, "5 12358");
  LoadEightDotPattern(a1, 2756, "6 12358");
  LoadEightDotPattern(a1, 2757, "268");
  LoadEightDotPattern(a1, 2759, "158");
  LoadEightDotPattern(a1, 2760, "348");
  LoadEightDotPattern(a1, 2761, "13468");
  LoadEightDotPattern(a1, 2763, "1358");
  LoadEightDotPattern(a1, 2764, "2468");
  LoadEightDotPattern(a1, 2765, "48");
  LoadEightDotPattern(a1, 2768, "135 4 1348");
  LoadEightDotPattern(a1, 2784, "6 12358");
  LoadEightDotPattern(a1, 2785, "6 1238");
  LoadEightDotPattern(a1, 2786, "5 1238");
  LoadEightDotPattern(a1, 2787, "6 1238");
  LoadEightDotPattern(a1, 2790, "2458");
  LoadEightDotPattern(a1, 2791, "18");
  LoadEightDotPattern(a1, 2792, "128");
  LoadEightDotPattern(a1, 2793, "148");
  LoadEightDotPattern(a1, 2794, "1458");
  LoadEightDotPattern(a1, 2795, "158");
  LoadEightDotPattern(a1, 2796, "1248");
  LoadEightDotPattern(a1, 2797, "12458");
  LoadEightDotPattern(a1, 2798, "1258");
  LoadEightDotPattern(a1, 2799, "248");
  LoadEightDotPattern(a1, 2801, "1235 1256 2568");
  LoadEightDotPattern(a1, 2817, "38");
  LoadEightDotPattern(a1, 2818, "568");
  LoadEightDotPattern(a1, 2819, "68");
  LoadEightDotPattern(a1, 2821, "18");
  LoadEightDotPattern(a1, 2822, "3458");
  LoadEightDotPattern(a1, 2823, "248");
  LoadEightDotPattern(a1, 2824, "358");
  LoadEightDotPattern(a1, 2825, "1368");
  LoadEightDotPattern(a1, 2826, "12568");
  LoadEightDotPattern(a1, 2827, "5 12358");
  LoadEightDotPattern(a1, 2828, "5 1238");
  LoadEightDotPattern(a1, 2831, "158");
  LoadEightDotPattern(a1, 2832, "348");
  LoadEightDotPattern(a1, 2835, "1358");
  LoadEightDotPattern(a1, 2836, "2468");
  LoadEightDotPattern(a1, 2837, "138");
  LoadEightDotPattern(a1, 2838, "468");
  LoadEightDotPattern(a1, 2839, "12458");
  LoadEightDotPattern(a1, 2840, "1268");
  LoadEightDotPattern(a1, 2841, "3468");
  LoadEightDotPattern(a1, 2842, "148");
  LoadEightDotPattern(a1, 2843, "168");
  LoadEightDotPattern(a1, 2844, "2458");
  LoadEightDotPattern(a1, 2845, "3568");
  LoadEightDotPattern(a1, 2846, "258");
  LoadEightDotPattern(a1, 2847, "234568");
  LoadEightDotPattern(a1, 2848, "24568");
  LoadEightDotPattern(a1, 2849, "12468");
  LoadEightDotPattern(a1, 2850, "1234568");
  LoadEightDotPattern(a1, 2851, "34568");
  LoadEightDotPattern(a1, 2852, "23458");
  LoadEightDotPattern(a1, 2853, "14568");
  LoadEightDotPattern(a1, 2854, "1458");
  LoadEightDotPattern(a1, 2855, "23468");
  LoadEightDotPattern(a1, 2856, "13458");
  LoadEightDotPattern(a1, 2858, "12348");
  LoadEightDotPattern(a1, 2859, "2358");
  LoadEightDotPattern(a1, 2860, "128");
  LoadEightDotPattern(a1, 2861, "458");
  LoadEightDotPattern(a1, 2862, "1348");
  LoadEightDotPattern(a1, 2863, "134568");
  LoadEightDotPattern(a1, 2864, "12358");
  LoadEightDotPattern(a1, 2866, "1238");
  LoadEightDotPattern(a1, 2867, "4568");
  LoadEightDotPattern(a1, 2869, "12368");
  LoadEightDotPattern(a1, 2870, "1468");
  LoadEightDotPattern(a1, 2871, "123468");
  LoadEightDotPattern(a1, 2872, "2348");
  LoadEightDotPattern(a1, 2873, "1258");
  LoadEightDotPattern(a1, 2877, "28");
  LoadEightDotPattern(a1, 2878, "3458");
  LoadEightDotPattern(a1, 2879, "248");
  LoadEightDotPattern(a1, 2880, "358");
  LoadEightDotPattern(a1, 2881, "1368");
  LoadEightDotPattern(a1, 2882, "12568");
  LoadEightDotPattern(a1, 2883, "5 12358");
  LoadEightDotPattern(a1, 2884, "6 12358");
  LoadEightDotPattern(a1, 2887, "158");
  LoadEightDotPattern(a1, 2888, "348");
  LoadEightDotPattern(a1, 2891, "1358");
  LoadEightDotPattern(a1, 2892, "2468");
  LoadEightDotPattern(a1, 2893, "48");
  LoadEightDotPattern(a1, 2908, "1246 48");
  LoadEightDotPattern(a1, 2909, "123456 48");
  LoadEightDotPattern(a1, 2911, "468");
  LoadEightDotPattern(a1, 2912, "6 12358");
  LoadEightDotPattern(a1, 2913, "6 1238");
  LoadEightDotPattern(a1, 2914, "4 1238");
  LoadEightDotPattern(a1, 2915, "6 1238");
  LoadEightDotPattern(a1, 2916, "2568");
  LoadEightDotPattern(a1, 2917, "256 2568");
  LoadEightDotPattern(a1, 2918, "2458");
  LoadEightDotPattern(a1, 2919, "18");
  LoadEightDotPattern(a1, 2920, "128");
  LoadEightDotPattern(a1, 2921, "148");
  LoadEightDotPattern(a1, 2922, "1458");
  LoadEightDotPattern(a1, 2923, "158");
  LoadEightDotPattern(a1, 2924, "1248");
  LoadEightDotPattern(a1, 2925, "12458");
  LoadEightDotPattern(a1, 2926, "1258");
  LoadEightDotPattern(a1, 2927, "248");
  LoadEightDotPattern(a1, 2928, "168");
  LoadEightDotPattern(a1, 2929, "168");
  LoadEightDotPattern(a1, 2946, "568");
  LoadEightDotPattern(a1, 2947, "68");
  LoadEightDotPattern(a1, 2949, "18");
  LoadEightDotPattern(a1, 2950, "3458");
  LoadEightDotPattern(a1, 2951, "248");
  LoadEightDotPattern(a1, 2952, "358");
  LoadEightDotPattern(a1, 2953, "1368");
  LoadEightDotPattern(a1, 2954, "12568");
  LoadEightDotPattern(a1, 2958, "268");
  LoadEightDotPattern(a1, 2959, "158");
  LoadEightDotPattern(a1, 2960, "348");
  LoadEightDotPattern(a1, 2962, "13468");
  LoadEightDotPattern(a1, 2963, "1358");
  LoadEightDotPattern(a1, 2964, "2468");
  LoadEightDotPattern(a1, 2965, "138");
  LoadEightDotPattern(a1, 2969, "3468");
  LoadEightDotPattern(a1, 2970, "148");
  LoadEightDotPattern(a1, 2972, "2458");
  LoadEightDotPattern(a1, 2974, "258");
  LoadEightDotPattern(a1, 2975, "234568");
  LoadEightDotPattern(a1, 2979, "34568");
  LoadEightDotPattern(a1, 2980, "23458");
  LoadEightDotPattern(a1, 2984, "13458");
  LoadEightDotPattern(a1, 2985, "568");
  LoadEightDotPattern(a1, 2986, "12348");
  LoadEightDotPattern(a1, 2990, "1348");
  LoadEightDotPattern(a1, 2991, "134568");
  LoadEightDotPattern(a1, 2992, "12358");
  LoadEightDotPattern(a1, 2993, "124568");
  LoadEightDotPattern(a1, 2994, "1238");
  LoadEightDotPattern(a1, 2995, "4568");
  LoadEightDotPattern(a1, 2996, "123568");
  LoadEightDotPattern(a1, 2997, "12368");
  LoadEightDotPattern(a1, 2998, "1468");
  LoadEightDotPattern(a1, 2999, "123468");
  LoadEightDotPattern(a1, 3000, "2348");
  LoadEightDotPattern(a1, 3001, "1258");
  LoadEightDotPattern(a1, 3006, "3458");
  LoadEightDotPattern(a1, 3007, "248");
  LoadEightDotPattern(a1, 3008, "358");
  LoadEightDotPattern(a1, 3009, "1368");
  LoadEightDotPattern(a1, 3010, "12568");
  LoadEightDotPattern(a1, 3014, "268");
  LoadEightDotPattern(a1, 3015, "158");
  LoadEightDotPattern(a1, 3016, "348");
  LoadEightDotPattern(a1, 3018, "13468");
  LoadEightDotPattern(a1, 3019, "1358");
  LoadEightDotPattern(a1, 3020, "2468");
  LoadEightDotPattern(a1, 3021, "48");
  LoadEightDotPattern(a1, 3024, "135 4 1348");
  LoadEightDotPattern(a1, 3046, "2458");
  LoadEightDotPattern(a1, 3047, "18");
  LoadEightDotPattern(a1, 3048, "128");
  LoadEightDotPattern(a1, 3049, "148");
  LoadEightDotPattern(a1, 3050, "1458");
  LoadEightDotPattern(a1, 3051, "158");
  LoadEightDotPattern(a1, 3052, "1248");
  LoadEightDotPattern(a1, 3053, "12458");
  LoadEightDotPattern(a1, 3054, "1258");
  LoadEightDotPattern(a1, 3055, "248");
  LoadEightDotPattern(a1, 3056, "2458");
  LoadEightDotPattern(a1, 3057, "245 2458");
  LoadEightDotPattern(a1, 3058, "245 245 2458");
  LoadEightDotPattern(a1, 3059, "348");
  LoadEightDotPattern(a1, 3060, "348");
  LoadEightDotPattern(a1, 3061, "348");
  LoadEightDotPattern(a1, 3062, "368");
  LoadEightDotPattern(a1, 3063, "3468");
  LoadEightDotPattern(a1, 3064, "58");
  LoadEightDotPattern(a1, 3065, "1235 15 2568");
  LoadEightDotPattern(a1, 3066, "58");
  LoadEightDotPattern(a1, 3073, "38");
  LoadEightDotPattern(a1, 3074, "568");
  LoadEightDotPattern(a1, 3075, "68");
  LoadEightDotPattern(a1, 3077, "18");
  LoadEightDotPattern(a1, 3078, "3458");
  LoadEightDotPattern(a1, 3079, "248");
  LoadEightDotPattern(a1, 3080, "358");
  LoadEightDotPattern(a1, 3081, "1368");
  LoadEightDotPattern(a1, 3082, "12568");
  LoadEightDotPattern(a1, 3083, "5 12358");
  LoadEightDotPattern(a1, 3084, "5 1238");
  LoadEightDotPattern(a1, 3086, "268");
  LoadEightDotPattern(a1, 3087, "158");
  LoadEightDotPattern(a1, 3088, "348");
  LoadEightDotPattern(a1, 3090, "13468");
  LoadEightDotPattern(a1, 3091, "1358");
  LoadEightDotPattern(a1, 3092, "2468");
  LoadEightDotPattern(a1, 3093, "138");
  LoadEightDotPattern(a1, 3094, "468");
  LoadEightDotPattern(a1, 3095, "12458");
  LoadEightDotPattern(a1, 3096, "1268");
  LoadEightDotPattern(a1, 3097, "3468");
  LoadEightDotPattern(a1, 3098, "148");
  LoadEightDotPattern(a1, 3099, "168");
  LoadEightDotPattern(a1, 3100, "2458");
  LoadEightDotPattern(a1, 3101, "3568");
  LoadEightDotPattern(a1, 3102, "258");
  LoadEightDotPattern(a1, 3103, "234568");
  LoadEightDotPattern(a1, 3104, "24568");
  LoadEightDotPattern(a1, 3105, "12468");
  LoadEightDotPattern(a1, 3106, "1234568");
  LoadEightDotPattern(a1, 3107, "34568");
  LoadEightDotPattern(a1, 3108, "23458");
  LoadEightDotPattern(a1, 3109, "14568");
  LoadEightDotPattern(a1, 3110, "1458");
  LoadEightDotPattern(a1, 3111, "23468");
  LoadEightDotPattern(a1, 3112, "13458");
  LoadEightDotPattern(a1, 3114, "12348");
  LoadEightDotPattern(a1, 3115, "2358");
  LoadEightDotPattern(a1, 3116, "128");
  LoadEightDotPattern(a1, 3117, "458");
  LoadEightDotPattern(a1, 3118, "1348");
  LoadEightDotPattern(a1, 3119, "134568");
  LoadEightDotPattern(a1, 3120, "12358");
  LoadEightDotPattern(a1, 3121, "124568");
  LoadEightDotPattern(a1, 3122, "1238");
  LoadEightDotPattern(a1, 3123, "4568");
  LoadEightDotPattern(a1, 3125, "12368");
  LoadEightDotPattern(a1, 3126, "1468");
  LoadEightDotPattern(a1, 3127, "123468");
  LoadEightDotPattern(a1, 3128, "2348");
  LoadEightDotPattern(a1, 3129, "1258");
  LoadEightDotPattern(a1, 3133, "28");
  LoadEightDotPattern(a1, 3134, "3458");
  LoadEightDotPattern(a1, 3135, "248");
  LoadEightDotPattern(a1, 3136, "358");
  LoadEightDotPattern(a1, 3137, "1368");
  LoadEightDotPattern(a1, 3138, "12568");
  LoadEightDotPattern(a1, 3139, "5 12358");
  LoadEightDotPattern(a1, 3140, "6 12358");
  LoadEightDotPattern(a1, 3142, "268");
  LoadEightDotPattern(a1, 3143, "158");
  LoadEightDotPattern(a1, 3144, "348");
  LoadEightDotPattern(a1, 3146, "13468");
  LoadEightDotPattern(a1, 3147, "1358");
  LoadEightDotPattern(a1, 3148, "2468");
  LoadEightDotPattern(a1, 3149, "48");
  LoadEightDotPattern(a1, 3168, "6 12358");
  LoadEightDotPattern(a1, 3169, "6 1238");
  LoadEightDotPattern(a1, 3170, "4 1238");
  LoadEightDotPattern(a1, 3171, "6 1238");
  LoadEightDotPattern(a1, 3172, "2568");
  LoadEightDotPattern(a1, 3173, "256 2568");
  LoadEightDotPattern(a1, 3174, "2458");
  LoadEightDotPattern(a1, 3175, "18");
  LoadEightDotPattern(a1, 3176, "128");
  LoadEightDotPattern(a1, 3177, "148");
  LoadEightDotPattern(a1, 3178, "1458");
  LoadEightDotPattern(a1, 3179, "158");
  LoadEightDotPattern(a1, 3180, "1248");
  LoadEightDotPattern(a1, 3181, "12458");
  LoadEightDotPattern(a1, 3182, "1258");
  LoadEightDotPattern(a1, 3183, "248");
  LoadEightDotPattern(a1, 3192, "2458");
  LoadEightDotPattern(a1, 3193, "18");
  LoadEightDotPattern(a1, 3194, "128");
  LoadEightDotPattern(a1, 3195, "148");
  LoadEightDotPattern(a1, 3196, "2458");
  LoadEightDotPattern(a1, 3197, "18");
  LoadEightDotPattern(a1, 3198, "128");
  LoadEightDotPattern(a1, 3199, "148");
  LoadEightDotPattern(a1, 3202, "568");
  LoadEightDotPattern(a1, 3203, "68");
  LoadEightDotPattern(a1, 3205, "18");
  LoadEightDotPattern(a1, 3206, "3458");
  LoadEightDotPattern(a1, 3207, "248");
  LoadEightDotPattern(a1, 3208, "358");
  LoadEightDotPattern(a1, 3209, "1368");
  LoadEightDotPattern(a1, 3210, "12568");
  LoadEightDotPattern(a1, 3211, "5 12358");
  LoadEightDotPattern(a1, 3212, "5 1238");
  LoadEightDotPattern(a1, 3214, "268");
  LoadEightDotPattern(a1, 3215, "158");
  LoadEightDotPattern(a1, 3216, "348");
  LoadEightDotPattern(a1, 3218, "13468");
  LoadEightDotPattern(a1, 3219, "1358");
  LoadEightDotPattern(a1, 3220, "2468");
  LoadEightDotPattern(a1, 3221, "138");
  LoadEightDotPattern(a1, 3222, "468");
  LoadEightDotPattern(a1, 3223, "12458");
  LoadEightDotPattern(a1, 3224, "1268");
  LoadEightDotPattern(a1, 3225, "3468");
  LoadEightDotPattern(a1, 3226, "148");
  LoadEightDotPattern(a1, 3227, "168");
  LoadEightDotPattern(a1, 3228, "2458");
  LoadEightDotPattern(a1, 3229, "3568");
  LoadEightDotPattern(a1, 3230, "258");
  LoadEightDotPattern(a1, 3231, "234568");
  LoadEightDotPattern(a1, 3232, "24568");
  LoadEightDotPattern(a1, 3233, "12468");
  LoadEightDotPattern(a1, 3234, "1234568");
  LoadEightDotPattern(a1, 3235, "34568");
  LoadEightDotPattern(a1, 3236, "23458");
  LoadEightDotPattern(a1, 3237, "14568");
  LoadEightDotPattern(a1, 3238, "1458");
  LoadEightDotPattern(a1, 3239, "23468");
  LoadEightDotPattern(a1, 3240, "13458");
  LoadEightDotPattern(a1, 3242, "12348");
  LoadEightDotPattern(a1, 3243, "2358");
  LoadEightDotPattern(a1, 3244, "128");
  LoadEightDotPattern(a1, 3245, "458");
  LoadEightDotPattern(a1, 3246, "1348");
  LoadEightDotPattern(a1, 3247, "134568");
  LoadEightDotPattern(a1, 3248, "12358");
  LoadEightDotPattern(a1, 3249, "124568");
  LoadEightDotPattern(a1, 3250, "1238");
  LoadEightDotPattern(a1, 3251, "4568");
  LoadEightDotPattern(a1, 3253, "12368");
  LoadEightDotPattern(a1, 3254, "1468");
  LoadEightDotPattern(a1, 3255, "123468");
  LoadEightDotPattern(a1, 3256, "2348");
  LoadEightDotPattern(a1, 3257, "1258");
  LoadEightDotPattern(a1, 3261, "28");
  LoadEightDotPattern(a1, 3262, "3458");
  LoadEightDotPattern(a1, 3263, "248");
  LoadEightDotPattern(a1, 3264, "358");
  LoadEightDotPattern(a1, 3265, "1368");
  LoadEightDotPattern(a1, 3266, "12568");
  LoadEightDotPattern(a1, 3267, "5 12358");
  LoadEightDotPattern(a1, 3268, "6 12358");
  LoadEightDotPattern(a1, 3270, "268");
  LoadEightDotPattern(a1, 3271, "158");
  LoadEightDotPattern(a1, 3272, "348");
  LoadEightDotPattern(a1, 3274, "13468");
  LoadEightDotPattern(a1, 3275, "1358");
  LoadEightDotPattern(a1, 3276, "2468");
  LoadEightDotPattern(a1, 3277, "48");
  LoadEightDotPattern(a1, 3294, "123568");
  LoadEightDotPattern(a1, 3296, "6 12358");
  LoadEightDotPattern(a1, 3297, "6 1238");
  LoadEightDotPattern(a1, 3298, "4 1238");
  LoadEightDotPattern(a1, 3299, "6 1238");
  LoadEightDotPattern(a1, 3300, "2568");
  LoadEightDotPattern(a1, 3301, "256 2568");
  LoadEightDotPattern(a1, 3302, "2458");
  LoadEightDotPattern(a1, 3303, "18");
  LoadEightDotPattern(a1, 3304, "128");
  LoadEightDotPattern(a1, 3305, "148");
  LoadEightDotPattern(a1, 3306, "1458");
  LoadEightDotPattern(a1, 3307, "158");
  LoadEightDotPattern(a1, 3308, "1248");
  LoadEightDotPattern(a1, 3309, "12458");
  LoadEightDotPattern(a1, 3310, "1258");
  LoadEightDotPattern(a1, 3311, "248");
  LoadEightDotPattern(a1, 3313, "168");
  LoadEightDotPattern(a1, 3314, "168");
  LoadEightDotPattern(a1, 3330, "568");
  LoadEightDotPattern(a1, 3331, "68");
  LoadEightDotPattern(a1, 3333, "18");
  LoadEightDotPattern(a1, 3334, "3458");
  LoadEightDotPattern(a1, 3335, "248");
  LoadEightDotPattern(a1, 3336, "358");
  LoadEightDotPattern(a1, 3337, "1368");
  LoadEightDotPattern(a1, 3338, "12568");
  LoadEightDotPattern(a1, 3339, "5 12358");
  LoadEightDotPattern(a1, 3340, "5 1238");
  LoadEightDotPattern(a1, 3342, "268");
  LoadEightDotPattern(a1, 3343, "158");
  LoadEightDotPattern(a1, 3344, "348");
  LoadEightDotPattern(a1, 3346, "13468");
  LoadEightDotPattern(a1, 3347, "1358");
  LoadEightDotPattern(a1, 3348, "2468");
  LoadEightDotPattern(a1, 3349, "138");
  LoadEightDotPattern(a1, 3350, "468");
  LoadEightDotPattern(a1, 3351, "12458");
  LoadEightDotPattern(a1, 3352, "1268");
  LoadEightDotPattern(a1, 3353, "3468");
  LoadEightDotPattern(a1, 3354, "148");
  LoadEightDotPattern(a1, 3355, "168");
  LoadEightDotPattern(a1, 3356, "2458");
  LoadEightDotPattern(a1, 3357, "3568");
  LoadEightDotPattern(a1, 3358, "258");
  LoadEightDotPattern(a1, 3359, "234568");
  LoadEightDotPattern(a1, 3360, "24568");
  LoadEightDotPattern(a1, 3361, "12468");
  LoadEightDotPattern(a1, 3362, "1234568");
  LoadEightDotPattern(a1, 3363, "34568");
  LoadEightDotPattern(a1, 3364, "23458");
  LoadEightDotPattern(a1, 3365, "14568");
  LoadEightDotPattern(a1, 3366, "1458");
  LoadEightDotPattern(a1, 3367, "23468");
  LoadEightDotPattern(a1, 3368, "13458");
  LoadEightDotPattern(a1, 3370, "12348");
  LoadEightDotPattern(a1, 3371, "2358");
  LoadEightDotPattern(a1, 3372, "128");
  LoadEightDotPattern(a1, 3373, "458");
  LoadEightDotPattern(a1, 3374, "1348");
  LoadEightDotPattern(a1, 3375, "134568");
  LoadEightDotPattern(a1, 3376, "12358");
  LoadEightDotPattern(a1, 3377, "124568");
  LoadEightDotPattern(a1, 3378, "1238");
  LoadEightDotPattern(a1, 3379, "4568");
  LoadEightDotPattern(a1, 3380, "123568");
  LoadEightDotPattern(a1, 3381, "12368");
  LoadEightDotPattern(a1, 3382, "1468");
  LoadEightDotPattern(a1, 3383, "123468");
  LoadEightDotPattern(a1, 3384, "2348");
  LoadEightDotPattern(a1, 3385, "1258");
  LoadEightDotPattern(a1, 3389, "28");
  LoadEightDotPattern(a1, 3390, "3458");
  LoadEightDotPattern(a1, 3391, "248");
  LoadEightDotPattern(a1, 3392, "358");
  LoadEightDotPattern(a1, 3393, "1368");
  LoadEightDotPattern(a1, 3394, "12568");
  LoadEightDotPattern(a1, 3395, "5 12358");
  LoadEightDotPattern(a1, 3398, "268");
  LoadEightDotPattern(a1, 3399, "158");
  LoadEightDotPattern(a1, 3400, "348");
  LoadEightDotPattern(a1, 3402, "13468");
  LoadEightDotPattern(a1, 3403, "1358");
  LoadEightDotPattern(a1, 3404, "2468");
  LoadEightDotPattern(a1, 3405, "48");
  LoadEightDotPattern(a1, 3424, "6 12358");
  LoadEightDotPattern(a1, 3425, "6 1238");
  LoadEightDotPattern(a1, 3426, "4 1238");
  LoadEightDotPattern(a1, 3427, "6 1238");
  LoadEightDotPattern(a1, 3428, "2568");
  LoadEightDotPattern(a1, 3429, "256 2568");
  LoadEightDotPattern(a1, 3430, "2458");
  LoadEightDotPattern(a1, 3431, "18");
  LoadEightDotPattern(a1, 3432, "128");
  LoadEightDotPattern(a1, 3433, "148");
  LoadEightDotPattern(a1, 3434, "1458");
  LoadEightDotPattern(a1, 3435, "158");
  LoadEightDotPattern(a1, 3436, "1248");
  LoadEightDotPattern(a1, 3437, "12458");
  LoadEightDotPattern(a1, 3438, "1258");
  LoadEightDotPattern(a1, 3439, "248");
  LoadEightDotPattern(a1, 3458, "568");
  LoadEightDotPattern(a1, 3459, "68");
  LoadEightDotPattern(a1, 3461, "18");
  LoadEightDotPattern(a1, 3462, "3458");
  LoadEightDotPattern(a1, 3463, "123568");
  LoadEightDotPattern(a1, 3464, "124568");
  LoadEightDotPattern(a1, 3465, "248");
  LoadEightDotPattern(a1, 3466, "358");
  LoadEightDotPattern(a1, 3467, "1368");
  LoadEightDotPattern(a1, 3468, "12568");
  LoadEightDotPattern(a1, 3469, "5 12358");
  LoadEightDotPattern(a1, 3470, "6 12358");
  LoadEightDotPattern(a1, 3471, "4 1238");
  LoadEightDotPattern(a1, 3472, "123 1238");
  LoadEightDotPattern(a1, 3473, "158");
  LoadEightDotPattern(a1, 3474, "268");
  LoadEightDotPattern(a1, 3475, "348");
  LoadEightDotPattern(a1, 3476, "13468");
  LoadEightDotPattern(a1, 3477, "1358");
  LoadEightDotPattern(a1, 3478, "2468");
  LoadEightDotPattern(a1, 3482, "138");
  LoadEightDotPattern(a1, 3483, "468");
  LoadEightDotPattern(a1, 3484, "12458");
  LoadEightDotPattern(a1, 3485, "1268");
  LoadEightDotPattern(a1, 3486, "3468");
  LoadEightDotPattern(a1, 3487, "5 3468");
  LoadEightDotPattern(a1, 3488, "148");
  LoadEightDotPattern(a1, 3489, "168");
  LoadEightDotPattern(a1, 3490, "2458");
  LoadEightDotPattern(a1, 3491, "3568");
  LoadEightDotPattern(a1, 3492, "258");
  LoadEightDotPattern(a1, 3493, "123458");
  LoadEightDotPattern(a1, 3494, "268");
  LoadEightDotPattern(a1, 3495, "234568");
  LoadEightDotPattern(a1, 3496, "24568");
  LoadEightDotPattern(a1, 3497, "12468");
  LoadEightDotPattern(a1, 3498, "1234568");
  LoadEightDotPattern(a1, 3499, "13568");
  LoadEightDotPattern(a1, 3500, "5 13568");
  LoadEightDotPattern(a1, 3501, "23458");
  LoadEightDotPattern(a1, 3502, "14568");
  LoadEightDotPattern(a1, 3503, "1458");
  LoadEightDotPattern(a1, 3504, "23468");
  LoadEightDotPattern(a1, 3505, "13458");
  LoadEightDotPattern(a1, 3507, "5 1458");
  LoadEightDotPattern(a1, 3508, "12348");
  LoadEightDotPattern(a1, 3509, "1568");
  LoadEightDotPattern(a1, 3510, "128");
  LoadEightDotPattern(a1, 3511, "458");
  LoadEightDotPattern(a1, 3512, "1348");
  LoadEightDotPattern(a1, 3513, "23 128");
  LoadEightDotPattern(a1, 3514, "134568");
  LoadEightDotPattern(a1, 3515, "12358");
  LoadEightDotPattern(a1, 3517, "1238");
  LoadEightDotPattern(a1, 3520, "12368");
  LoadEightDotPattern(a1, 3521, "123468");
  LoadEightDotPattern(a1, 3522, "1468");
  LoadEightDotPattern(a1, 3523, "2348");
  LoadEightDotPattern(a1, 3524, "1258");
  LoadEightDotPattern(a1, 3525, "4568");
  LoadEightDotPattern(a1, 3526, "1248");
  LoadEightDotPattern(a1, 3530, "13468");
  LoadEightDotPattern(a1, 3535, "3458");
  LoadEightDotPattern(a1, 3536, "123568");
  LoadEightDotPattern(a1, 3537, "124568");
  LoadEightDotPattern(a1, 3538, "248");
  LoadEightDotPattern(a1, 3539, "358");
  LoadEightDotPattern(a1, 3540, "1368");
  LoadEightDotPattern(a1, 3542, "12568");
  LoadEightDotPattern(a1, 3544, "5 12358");
  LoadEightDotPattern(a1, 3545, "158");
  LoadEightDotPattern(a1, 3546, "268");
  LoadEightDotPattern(a1, 3547, "348");
  LoadEightDotPattern(a1, 3548, "15 3458");
  LoadEightDotPattern(a1, 3549, "15 345 13468");
  LoadEightDotPattern(a1, 3550, "15 4 1238");
  LoadEightDotPattern(a1, 3551, "4 1238");
  LoadEightDotPattern(a1, 3570, "6 12358");
  LoadEightDotPattern(a1, 3571, "123 1238");
  LoadEightDotPattern(a1, 3572, "256 2568");
  LoadEightDotPattern(a1, 3585, "12458");
  LoadEightDotPattern(a1, 3586, "138");
  LoadEightDotPattern(a1, 3587, "356 138");
  LoadEightDotPattern(a1, 3588, "1368");
  LoadEightDotPattern(a1, 3589, "36 1368");
  LoadEightDotPattern(a1, 3590, "6 1368");
  LoadEightDotPattern(a1, 3591, "124568");
  LoadEightDotPattern(a1, 3592, "2458");
  LoadEightDotPattern(a1, 3593, "348");
  LoadEightDotPattern(a1, 3594, "3468");
  LoadEightDotPattern(a1, 3595, "23468");
  LoadEightDotPattern(a1, 3596, "3468");
  LoadEightDotPattern(a1, 3597, "6 134568");
  LoadEightDotPattern(a1, 3598, "6 1458");
  LoadEightDotPattern(a1, 3599, "6 12568");
  LoadEightDotPattern(a1, 3600, "6 23458");
  LoadEightDotPattern(a1, 3601, "6 234568");
  LoadEightDotPattern(a1, 3602, "36 234568");
  LoadEightDotPattern(a1, 3603, "6 13458");
  LoadEightDotPattern(a1, 3604, "1458");
  LoadEightDotPattern(a1, 3605, "12568");
  LoadEightDotPattern(a1, 3606, "23458");
  LoadEightDotPattern(a1, 3607, "234568");
  LoadEightDotPattern(a1, 3608, "356 234568");
  LoadEightDotPattern(a1, 3609, "13458");
  LoadEightDotPattern(a1, 3610, "12368");
  LoadEightDotPattern(a1, 3611, "123468");
  LoadEightDotPattern(a1, 3612, "12348");
  LoadEightDotPattern(a1, 3613, "13468");
  LoadEightDotPattern(a1, 3614, "14568");
  LoadEightDotPattern(a1, 3615, "12468");
  LoadEightDotPattern(a1, 3616, "6 14568");
  LoadEightDotPattern(a1, 3617, "1348");
  LoadEightDotPattern(a1, 3618, "134568");
  LoadEightDotPattern(a1, 3619, "12358");
  LoadEightDotPattern(a1, 3620, "1235 28");
  LoadEightDotPattern(a1, 3621, "1238");
  LoadEightDotPattern(a1, 3622, "123 28");
  LoadEightDotPattern(a1, 3623, "24568");
  LoadEightDotPattern(a1, 3624, "6 2348");
  LoadEightDotPattern(a1, 3625, "36 2348");
  LoadEightDotPattern(a1, 3626, "2348");
  LoadEightDotPattern(a1, 3627, "1258");
  LoadEightDotPattern(a1, 3628, "6 1238");
  LoadEightDotPattern(a1, 3629, "1358");
  LoadEightDotPattern(a1, 3630, "1234568");
  LoadEightDotPattern(a1, 3631, "56 238");
  LoadEightDotPattern(a1, 3632, "18");
  LoadEightDotPattern(a1, 3633, "3458");
  LoadEightDotPattern(a1, 3634, "168");
  LoadEightDotPattern(a1, 3635, "13568");
  LoadEightDotPattern(a1, 3636, "128");
  LoadEightDotPattern(a1, 3637, "238");
  LoadEightDotPattern(a1, 3638, "2468");
  LoadEightDotPattern(a1, 3639, "268");
  LoadEightDotPattern(a1, 3640, "148");
  LoadEightDotPattern(a1, 3641, "258");
  LoadEightDotPattern(a1, 3642, "38");
  LoadEightDotPattern(a1, 3647, "45 168");
  LoadEightDotPattern(a1, 3648, "1248");
  LoadEightDotPattern(a1, 3649, "1268");
  LoadEightDotPattern(a1, 3650, "248");
  LoadEightDotPattern(a1, 3651, "156 28");
  LoadEightDotPattern(a1, 3652, "1568");
  LoadEightDotPattern(a1, 3653, "168");
  LoadEightDotPattern(a1, 3654, "28");
  LoadEightDotPattern(a1, 3655, "38");
  LoadEightDotPattern(a1, 3656, "358");
  LoadEightDotPattern(a1, 3657, "2568");
  LoadEightDotPattern(a1, 3658, "23568");
  LoadEightDotPattern(a1, 3659, "2368");
  LoadEightDotPattern(a1, 3660, "3568");
  LoadEightDotPattern(a1, 3661, "58");
  LoadEightDotPattern(a1, 3662, "168");
  LoadEightDotPattern(a1, 3663, "168");
  LoadEightDotPattern(a1, 3664, "2458");
  LoadEightDotPattern(a1, 3665, "18");
  LoadEightDotPattern(a1, 3666, "128");
  LoadEightDotPattern(a1, 3667, "148");
  LoadEightDotPattern(a1, 3668, "1458");
  LoadEightDotPattern(a1, 3669, "158");
  LoadEightDotPattern(a1, 3670, "1248");
  LoadEightDotPattern(a1, 3671, "12458");
  LoadEightDotPattern(a1, 3672, "1258");
  LoadEightDotPattern(a1, 3673, "248");
  LoadEightDotPattern(a1, 3674, "168");
  LoadEightDotPattern(a1, 3675, "168");
  LoadEightDotPattern(a1, 3713, "12458");
  LoadEightDotPattern(a1, 3714, "138");
  LoadEightDotPattern(a1, 3716, "1368");
  LoadEightDotPattern(a1, 3719, "124568");
  LoadEightDotPattern(a1, 3720, "2458");
  LoadEightDotPattern(a1, 3722, "23468");
  LoadEightDotPattern(a1, 3725, "134568");
  LoadEightDotPattern(a1, 3732, "1458");
  LoadEightDotPattern(a1, 3733, "12568");
  LoadEightDotPattern(a1, 3734, "23458");
  LoadEightDotPattern(a1, 3735, "234568");
  LoadEightDotPattern(a1, 3737, "13458");
  LoadEightDotPattern(a1, 3738, "12368");
  LoadEightDotPattern(a1, 3739, "123468");
  LoadEightDotPattern(a1, 3740, "12348");
  LoadEightDotPattern(a1, 3741, "13468");
  LoadEightDotPattern(a1, 3742, "14568");
  LoadEightDotPattern(a1, 3743, "12468");
  LoadEightDotPattern(a1, 3745, "1348");
  LoadEightDotPattern(a1, 3746, "6 134568");
  LoadEightDotPattern(a1, 3747, "12358");
  LoadEightDotPattern(a1, 3749, "1238");
  LoadEightDotPattern(a1, 3751, "2468");
  LoadEightDotPattern(a1, 3754, "2348");
  LoadEightDotPattern(a1, 3755, "1258");
  LoadEightDotPattern(a1, 3757, "1358");
  LoadEightDotPattern(a1, 3758, "1234568");
  LoadEightDotPattern(a1, 3760, "18");
  LoadEightDotPattern(a1, 3761, "3458");
  LoadEightDotPattern(a1, 3762, "168");
  LoadEightDotPattern(a1, 3763, "13568");
  LoadEightDotPattern(a1, 3764, "128");
  LoadEightDotPattern(a1, 3765, "238");
  LoadEightDotPattern(a1, 3766, "2468");
  LoadEightDotPattern(a1, 3767, "268");
  LoadEightDotPattern(a1, 3768, "368");
  LoadEightDotPattern(a1, 3769, "258");
  LoadEightDotPattern(a1, 3771, "148");
  LoadEightDotPattern(a1, 3773, "4568");
  LoadEightDotPattern(a1, 3776, "1248");
  LoadEightDotPattern(a1, 3777, "1268");
  LoadEightDotPattern(a1, 3778, "248");
  LoadEightDotPattern(a1, 3779, "156 28");
  LoadEightDotPattern(a1, 3780, "1568");
  LoadEightDotPattern(a1, 3782, "28");
  LoadEightDotPattern(a1, 3784, "358");
  LoadEightDotPattern(a1, 3785, "2568");
  LoadEightDotPattern(a1, 3786, "23568");
  LoadEightDotPattern(a1, 3787, "2368");
  LoadEightDotPattern(a1, 3789, "1358");
  LoadEightDotPattern(a1, 3792, "2458");
  LoadEightDotPattern(a1, 3793, "18");
  LoadEightDotPattern(a1, 3794, "128");
  LoadEightDotPattern(a1, 3795, "148");
  LoadEightDotPattern(a1, 3796, "1458");
  LoadEightDotPattern(a1, 3797, "158");
  LoadEightDotPattern(a1, 3798, "1248");
  LoadEightDotPattern(a1, 3799, "12458");
  LoadEightDotPattern(a1, 3800, "1258");
  LoadEightDotPattern(a1, 3801, "248");
  LoadEightDotPattern(a1, 3804, "125 13458");
  LoadEightDotPattern(a1, 3805, "125 1348");
  LoadEightDotPattern(a1, 3840, "1 135 1348");
  LoadEightDotPattern(a1, 3841, "18");
  LoadEightDotPattern(a1, 3842, "1246 136 12568");
  LoadEightDotPattern(a1, 3843, "1246 136 12568");
  LoadEightDotPattern(a1, 3853, "238");
  LoadEightDotPattern(a1, 3854, "23 238");
  LoadEightDotPattern(a1, 3872, "2458");
  LoadEightDotPattern(a1, 3873, "18");
  LoadEightDotPattern(a1, 3874, "128");
  LoadEightDotPattern(a1, 3875, "148");
  LoadEightDotPattern(a1, 3876, "1458");
  LoadEightDotPattern(a1, 3877, "158");
  LoadEightDotPattern(a1, 3878, "1248");
  LoadEightDotPattern(a1, 3879, "12458");
  LoadEightDotPattern(a1, 3880, "1258");
  LoadEightDotPattern(a1, 3881, "248");
  LoadEightDotPattern(a1, 3882, "245 46 158");
  LoadEightDotPattern(a1, 3883, "1 46 2458");
  LoadEightDotPattern(a1, 3884, "12 46 2458");
  LoadEightDotPattern(a1, 3885, "14 46 2458");
  LoadEightDotPattern(a1, 3886, "145 46 2458");
  LoadEightDotPattern(a1, 3887, "15 46 2458");
  LoadEightDotPattern(a1, 3888, "124 46 2458");
  LoadEightDotPattern(a1, 3889, "1245 46 2458");
  LoadEightDotPattern(a1, 3890, "125 46 158");
  LoadEightDotPattern(a1, 3891, "24 46 158");
  LoadEightDotPattern(a1, 3904, "138");
  LoadEightDotPattern(a1, 3905, "148");
  LoadEightDotPattern(a1, 3906, "12458");
  LoadEightDotPattern(a1, 3907, "1245 2368");
  LoadEightDotPattern(a1, 3908, "23568");
  LoadEightDotPattern(a1, 3909, "14568");
  LoadEightDotPattern(a1, 3910, "134568");
  LoadEightDotPattern(a1, 3911, "123458");
  LoadEightDotPattern(a1, 3913, "3458");
  LoadEightDotPattern(a1, 3914, "12568");
  LoadEightDotPattern(a1, 3915, "123568");
  LoadEightDotPattern(a1, 3916, "1248");
  LoadEightDotPattern(a1, 3917, "124 2368");
  LoadEightDotPattern(a1, 3918, "5 13458");
  LoadEightDotPattern(a1, 3919, "23458");
  LoadEightDotPattern(a1, 3920, "234568");
  LoadEightDotPattern(a1, 3921, "1458");
  LoadEightDotPattern(a1, 3922, "145 2368");
  LoadEightDotPattern(a1, 3923, "13458");
  LoadEightDotPattern(a1, 3924, "12348");
  LoadEightDotPattern(a1, 3925, "123468");
  LoadEightDotPattern(a1, 3926, "128");
  LoadEightDotPattern(a1, 3927, "12 2368");
  LoadEightDotPattern(a1, 3928, "1348");
  LoadEightDotPattern(a1, 3929, "13468");
  LoadEightDotPattern(a1, 3930, "13568");
  LoadEightDotPattern(a1, 3931, "1234568");
  LoadEightDotPattern(a1, 3932, "123456 2368");
  LoadEightDotPattern(a1, 3933, "24568");
  LoadEightDotPattern(a1, 3934, "1468");
  LoadEightDotPattern(a1, 3935, "2348");
  LoadEightDotPattern(a1, 3936, "12468");
  LoadEightDotPattern(a1, 3937, "2458");
  LoadEightDotPattern(a1, 3938, "12358");
  LoadEightDotPattern(a1, 3939, "1238");
  LoadEightDotPattern(a1, 3940, "1568");
  LoadEightDotPattern(a1, 3941, "5 1568");
  LoadEightDotPattern(a1, 3942, "23468");
  LoadEightDotPattern(a1, 3943, "1258");
  LoadEightDotPattern(a1, 3944, "18");
  LoadEightDotPattern(a1, 3945, "13 6 5 1568");
  LoadEightDotPattern(a1, 3946, "12358");
  LoadEightDotPattern(a1, 3953, "6 12568");
  LoadEightDotPattern(a1, 3954, "248");
  LoadEightDotPattern(a1, 3955, "24 6 12568");
  LoadEightDotPattern(a1, 3956, "1368");
  LoadEightDotPattern(a1, 3957, "6 1256 1368");
  LoadEightDotPattern(a1, 3958, "145 235 5 248");
  LoadEightDotPattern(a1, 3959, "145 235 5 24 6 12568");
  LoadEightDotPattern(a1, 3960, "1236 6 1256 5 248");
  LoadEightDotPattern(a1, 3961, "1236 6 1256 5 248");
  LoadEightDotPattern(a1, 3962, "158");
  LoadEightDotPattern(a1, 3963, "15 158");
  LoadEightDotPattern(a1, 3964, "1358");
  LoadEightDotPattern(a1, 3965, "135 1358");
  LoadEightDotPattern(a1, 3966, "1348");
  LoadEightDotPattern(a1, 3968, "5 248");
  LoadEightDotPattern(a1, 3969, "6 1256 5 248");
  LoadEightDotPattern(a1, 3984, "6 138");
  LoadEightDotPattern(a1, 3985, "6 148");
  LoadEightDotPattern(a1, 3986, "6 12458");
  LoadEightDotPattern(a1, 3987, "6 1245 2368");
  LoadEightDotPattern(a1, 3988, "6 23568");
  LoadEightDotPattern(a1, 3989, "6 14568");
  LoadEightDotPattern(a1, 3990, "6 134568");
  LoadEightDotPattern(a1, 3991, "6 123458");
  LoadEightDotPattern(a1, 3993, "6 3458");
  LoadEightDotPattern(a1, 3994, "12568");
  LoadEightDotPattern(a1, 3995, "123568");
  LoadEightDotPattern(a1, 3996, "1248");
  LoadEightDotPattern(a1, 3997, "6 124 2368");
  LoadEightDotPattern(a1, 3998, "6 5 13568");
  LoadEightDotPattern(a1, 3999, "6 12458");
  LoadEightDotPattern(a1, 4000, "6 234568");
  LoadEightDotPattern(a1, 4001, "6 1458");
  LoadEightDotPattern(a1, 4002, "6 145 2368");
  LoadEightDotPattern(a1, 4003, "6 13458");
  LoadEightDotPattern(a1, 4004, "6 12348");
  LoadEightDotPattern(a1, 4005, "6 123468");
  LoadEightDotPattern(a1, 4006, "6 128");
  LoadEightDotPattern(a1, 4007, "6 12 2368");
  LoadEightDotPattern(a1, 4008, "6 1348");
  LoadEightDotPattern(a1, 4009, "6 13468");
  LoadEightDotPattern(a1, 4010, "6 13568");
  LoadEightDotPattern(a1, 4011, "6 1234568");
  LoadEightDotPattern(a1, 4012, "6 123456 2368");
  LoadEightDotPattern(a1, 4013, "2568");
  LoadEightDotPattern(a1, 4014, "6 1468");
  LoadEightDotPattern(a1, 4015, "6 2348");
  LoadEightDotPattern(a1, 4016, "6 12468");
  LoadEightDotPattern(a1, 4017, "3568");
  LoadEightDotPattern(a1, 4018, "2358");
  LoadEightDotPattern(a1, 4019, "12368");
  LoadEightDotPattern(a1, 4020, "6 1568");
  LoadEightDotPattern(a1, 4021, "6 5 1568");
  LoadEightDotPattern(a1, 4022, "6 23468");
  LoadEightDotPattern(a1, 4023, "2368");
  LoadEightDotPattern(a1, 4024, "6 18");
  LoadEightDotPattern(a1, 4025, "6 13 6 5 1568");
  LoadEightDotPattern(a1, 4026, "6 24568");
  LoadEightDotPattern(a1, 4027, "6 2458");
  LoadEightDotPattern(a1, 4028, "6 12358");
  LoadEightDotPattern(a1, 3849, "1234568");
  LoadEightDotPattern(a1, 3850, "123456 1368");
  LoadEightDotPattern(a1, 3851, "2  356 23 236 234 13 1345 356  356 25 28");
  LoadEightDotPattern(a1, 3898, "123568");
  LoadEightDotPattern(a1, 3899, "234568");
  LoadEightDotPattern(a1, 3900, "123568");
  LoadEightDotPattern(a1, 3901, "234568");
  LoadEightDotPattern(a1, 3902, "123568");
  LoadEightDotPattern(a1, 3903, "234568");
  LoadEightDotPattern(a1, 4048, "123456 158");
  LoadEightDotPattern(a1, 4049, "123456 4568");
  LoadEightDotPattern(a1, 4050, "123456 158");
  LoadEightDotPattern(a1, 4096, "138");
  LoadEightDotPattern(a1, 4097, "468");
  LoadEightDotPattern(a1, 4098, "12458");
  LoadEightDotPattern(a1, 4099, "123458");
  LoadEightDotPattern(a1, 4100, "348");
  LoadEightDotPattern(a1, 4101, "2348");
  LoadEightDotPattern(a1, 4102, "2358");
  LoadEightDotPattern(a1, 4103, "13568");
  LoadEightDotPattern(a1, 4104, "23468");
  LoadEightDotPattern(a1, 4105, "12368");
  LoadEightDotPattern(a1, 4106, "123568");
  LoadEightDotPattern(a1, 4107, "12568");
  LoadEightDotPattern(a1, 4108, "124568");
  LoadEightDotPattern(a1, 4109, "234568");
  LoadEightDotPattern(a1, 4110, "1234568");
  LoadEightDotPattern(a1, 4111, "12468");
  LoadEightDotPattern(a1, 4112, "23458");
  LoadEightDotPattern(a1, 4114, "1458");
  LoadEightDotPattern(a1, 4115, "1248");
  LoadEightDotPattern(a1, 4116, "13458");
  LoadEightDotPattern(a1, 4117, "12348");
  LoadEightDotPattern(a1, 4118, "458");
  LoadEightDotPattern(a1, 4119, "1468");
  LoadEightDotPattern(a1, 4120, "128");
  LoadEightDotPattern(a1, 4121, "1348");
  LoadEightDotPattern(a1, 4122, "134568");
  LoadEightDotPattern(a1, 4123, "12358");
  LoadEightDotPattern(a1, 4124, "1238");
  LoadEightDotPattern(a1, 4125, "24568");
  LoadEightDotPattern(a1, 4126, "14568");
  LoadEightDotPattern(a1, 4127, "1258");
  LoadEightDotPattern(a1, 4128, "4568");
  LoadEightDotPattern(a1, 4129, "3458");
  LoadEightDotPattern(a1, 4131, "56 248");
  LoadEightDotPattern(a1, 4132, "56 2468");
  LoadEightDotPattern(a1, 4133, "56 158");
  LoadEightDotPattern(a1, 4134, "56 1368");
  LoadEightDotPattern(a1, 4135, "56 1568");
  LoadEightDotPattern(a1, 4137, "56 1358");
  LoadEightDotPattern(a1, 4138, "268");
  LoadEightDotPattern(a1, 4139, "56 18");
  LoadEightDotPattern(a1, 4140, "18");
  LoadEightDotPattern(a1, 4141, "248");
  LoadEightDotPattern(a1, 4142, "2468");
  LoadEightDotPattern(a1, 4143, "158");
  LoadEightDotPattern(a1, 4144, "1368");
  LoadEightDotPattern(a1, 4145, "1568");
  LoadEightDotPattern(a1, 4146, "168");
  LoadEightDotPattern(a1, 4150, "148");
  LoadEightDotPattern(a1, 4151, "28");
  LoadEightDotPattern(a1, 4152, "238");
  LoadEightDotPattern(a1, 4153, "38");
  LoadEightDotPattern(a1, 4160, "2458");
  LoadEightDotPattern(a1, 4161, "18");
  LoadEightDotPattern(a1, 4162, "128");
  LoadEightDotPattern(a1, 4163, "148");
  LoadEightDotPattern(a1, 4164, "1458");
  LoadEightDotPattern(a1, 4165, "158");
  LoadEightDotPattern(a1, 4166, "1248");
  LoadEightDotPattern(a1, 4167, "12458");
  LoadEightDotPattern(a1, 4168, "1258");
  LoadEightDotPattern(a1, 4169, "248");
  LoadEightDotPattern(a1, 4170, "2568");
  LoadEightDotPattern(a1, 4171, "256 2568");
  LoadEightDotPattern(a1, 4172, "2368");
  LoadEightDotPattern(a1, 4173, "123468");
  LoadEightDotPattern(a1, 4174, "3468");
  LoadEightDotPattern(a1, 4175, "1358");
  LoadEightDotPattern(a1, 4176, "1468");
  LoadEightDotPattern(a1, 4177, "123468");
  LoadEightDotPattern(a1, 4178, "5 12358");
  LoadEightDotPattern(a1, 4179, "6 12358");
  LoadEightDotPattern(a1, 4180, "5 1238");
  LoadEightDotPattern(a1, 4181, "46 1238");
  LoadEightDotPattern(a1, 4182, "5 12358");
  LoadEightDotPattern(a1, 4183, "6 12358");
  LoadEightDotPattern(a1, 4184, "5 1238");
  LoadEightDotPattern(a1, 4185, "6 1238");
  LoadEightDotPattern(a1, 4304, "18");
  LoadEightDotPattern(a1, 4305, "128");
  LoadEightDotPattern(a1, 4306, "12458");
  LoadEightDotPattern(a1, 4307, "1458");
  LoadEightDotPattern(a1, 4308, "158");
  LoadEightDotPattern(a1, 4309, "24568");
  LoadEightDotPattern(a1, 4310, "13568");
  LoadEightDotPattern(a1, 4311, "1248");
  LoadEightDotPattern(a1, 4312, "248");
  LoadEightDotPattern(a1, 4313, "138");
  LoadEightDotPattern(a1, 4314, "1238");
  LoadEightDotPattern(a1, 4315, "1348");
  LoadEightDotPattern(a1, 4316, "13458");
  LoadEightDotPattern(a1, 4317, "1358");
  LoadEightDotPattern(a1, 4318, "12348");
  LoadEightDotPattern(a1, 4319, "2458");
  LoadEightDotPattern(a1, 4320, "12358");
  LoadEightDotPattern(a1, 4321, "2348");
  LoadEightDotPattern(a1, 4322, "23458");
  LoadEightDotPattern(a1, 4323, "1368");
  LoadEightDotPattern(a1, 4324, "12368");
  LoadEightDotPattern(a1, 4325, "124568");
  LoadEightDotPattern(a1, 4326, "12468");
  LoadEightDotPattern(a1, 4327, "23468");
  LoadEightDotPattern(a1, 4328, "1568");
  LoadEightDotPattern(a1, 4329, "123458");
  LoadEightDotPattern(a1, 4330, "148");
  LoadEightDotPattern(a1, 4331, "134568");
  LoadEightDotPattern(a1, 4332, "14568");
  LoadEightDotPattern(a1, 4333, "13468");
  LoadEightDotPattern(a1, 4334, "1258");
  LoadEightDotPattern(a1, 4335, "2468");
  LoadEightDotPattern(a1, 4336, "123468");
  LoadEightDotPattern(a1, 4345, "12458");
  LoadEightDotPattern(a1, 4347, "34 34 8");
  LoadEightDotPattern(a1, 4348, "13458");
  LoadEightDotPattern(a1, 4352, "48");
  LoadEightDotPattern(a1, 4353, "6 48");
  LoadEightDotPattern(a1, 4354, "148");
  LoadEightDotPattern(a1, 4355, "248");
  LoadEightDotPattern(a1, 4356, "6 248");
  LoadEightDotPattern(a1, 4357, "58");
  LoadEightDotPattern(a1, 4358, "158");
  LoadEightDotPattern(a1, 4359, "458");
  LoadEightDotPattern(a1, 4360, "6 458");
  LoadEightDotPattern(a1, 4361, "68");
  LoadEightDotPattern(a1, 4362, "6 1238");
  LoadEightDotPattern(a1, 4364, "468");
  LoadEightDotPattern(a1, 4365, "6 468");
  LoadEightDotPattern(a1, 4366, "568");
  LoadEightDotPattern(a1, 4367, "1248");
  LoadEightDotPattern(a1, 4368, "1258");
  LoadEightDotPattern(a1, 4369, "1458");
  LoadEightDotPattern(a1, 4370, "2458");
  LoadEightDotPattern(a1, 4371, "14 48");
  LoadEightDotPattern(a1, 4372, "14 148");
  LoadEightDotPattern(a1, 4373, "14 248");
  LoadEightDotPattern(a1, 4374, "14 458");
  LoadEightDotPattern(a1, 4375, "24 48");
  LoadEightDotPattern(a1, 4376, "5 148");
  LoadEightDotPattern(a1, 4377, "5 58");
  LoadEightDotPattern(a1, 4378, "5 2458");
  LoadEightDotPattern(a1, 4379, "58");
  LoadEightDotPattern(a1, 4380, "15 458");
  LoadEightDotPattern(a1, 4381, "158");
  LoadEightDotPattern(a1, 4382, "45 48");
  LoadEightDotPattern(a1, 4383, "45 148");
  LoadEightDotPattern(a1, 4384, "45 248");
  LoadEightDotPattern(a1, 4385, "45 68");
  LoadEightDotPattern(a1, 4386, "48");
  LoadEightDotPattern(a1, 4387, "248");
  LoadEightDotPattern(a1, 4388, "458");
  LoadEightDotPattern(a1, 4389, "45 6 68");
  LoadEightDotPattern(a1, 4390, "45 468");
  LoadEightDotPattern(a1, 4391, "45 468");
  LoadEightDotPattern(a1, 4392, "45 568");
  LoadEightDotPattern(a1, 4393, "45 1258");
  LoadEightDotPattern(a1, 4394, "45 1458");
  LoadEightDotPattern(a1, 4395, "458");
  LoadEightDotPattern(a1, 4396, "6 458");
  LoadEightDotPattern(a1, 4397, "6 48");
  LoadEightDotPattern(a1, 4398, "6 148");
  LoadEightDotPattern(a1, 4399, "6 248");
  LoadEightDotPattern(a1, 4400, "6 58");
  LoadEightDotPattern(a1, 4401, "6 158");
  LoadEightDotPattern(a1, 4402, "6 458");
  LoadEightDotPattern(a1, 4403, "SPACE 125 1458");
  LoadEightDotPattern(a1, 4404, "6 6 68");
  LoadEightDotPattern(a1, 4405, "68");
  LoadEightDotPattern(a1, 4406, "6 468");
  LoadEightDotPattern(a1, 4407, "6 568");
  LoadEightDotPattern(a1, 4408, "6 1248");
  LoadEightDotPattern(a1, 4409, "6 1258");
  LoadEightDotPattern(a1, 4410, "6 1458");
  LoadEightDotPattern(a1, 4411, "6 2458");
  LoadEightDotPattern(a1, 4417, "48");
  LoadEightDotPattern(a1, 4418, "248");
  LoadEightDotPattern(a1, 4419, "158");
  LoadEightDotPattern(a1, 4420, "458");
  LoadEightDotPattern(a1, 4421, "68");
  LoadEightDotPattern(a1, 4424, "SPACE 468");
  LoadEightDotPattern(a1, 4425, "SPACE 568");
  LoadEightDotPattern(a1, 4426, "SPACE 1258");
  LoadEightDotPattern(a1, 4427, "SPACE 1458");
  LoadEightDotPattern(a1, 4429, "468");
  LoadEightDotPattern(a1, 4434, "56 1248");
  LoadEightDotPattern(a1, 4435, "56 2458");
  LoadEightDotPattern(a1, 4438, "145 458");
  LoadEightDotPattern(a1, 4439, "1458");
  LoadEightDotPattern(a1, 4440, "145 2458");
  LoadEightDotPattern(a1, 4449, "1268");
  LoadEightDotPattern(a1, 4450, "12358");
  LoadEightDotPattern(a1, 4451, "3458");
  LoadEightDotPattern(a1, 4452, "345 12358");
  LoadEightDotPattern(a1, 4453, "2348");
  LoadEightDotPattern(a1, 4454, "13458");
  LoadEightDotPattern(a1, 4455, "1568");
  LoadEightDotPattern(a1, 4456, "348");
  LoadEightDotPattern(a1, 4457, "1368");
  LoadEightDotPattern(a1, 4458, "12368");
  LoadEightDotPattern(a1, 4459, "1236 12358");
  LoadEightDotPattern(a1, 4460, "134568");
  LoadEightDotPattern(a1, 4461, "3468");
  LoadEightDotPattern(a1, 4462, "1348");
  LoadEightDotPattern(a1, 4463, "12348");
  LoadEightDotPattern(a1, 4464, "1234 12358");
  LoadEightDotPattern(a1, 4465, "134 12358");
  LoadEightDotPattern(a1, 4466, "1468");
  LoadEightDotPattern(a1, 4467, "2468");
  LoadEightDotPattern(a1, 4468, "24568");
  LoadEightDotPattern(a1, 4469, "1358");
  LoadEightDotPattern(a1, 4470, "126 1368");
  LoadEightDotPattern(a1, 4471, "126 1348");
  LoadEightDotPattern(a1, 4472, "345 1368");
  LoadEightDotPattern(a1, 4473, "345 3468");
  LoadEightDotPattern(a1, 4474, "234 1368");
  LoadEightDotPattern(a1, 4475, "234 1348");
  LoadEightDotPattern(a1, 4476, "234 2468");
  LoadEightDotPattern(a1, 4477, "156 1368");
  LoadEightDotPattern(a1, 4478, "156 1348");
  LoadEightDotPattern(a1, 4479, "136 2348");
  LoadEightDotPattern(a1, 4480, "1358");
  LoadEightDotPattern(a1, 4481, "136 348");
  LoadEightDotPattern(a1, 4482, "136 1368");
  LoadEightDotPattern(a1, 4483, "136 1348");
  LoadEightDotPattern(a1, 4484, "346 3458");
  LoadEightDotPattern(a1, 4485, "1358");
  LoadEightDotPattern(a1, 4486, "346 1568");
  LoadEightDotPattern(a1, 4487, "346 1368");
  LoadEightDotPattern(a1, 4488, "346 1358");
  LoadEightDotPattern(a1, 4489, "134 1268");
  LoadEightDotPattern(a1, 4490, "1358");
  LoadEightDotPattern(a1, 4491, "1234 2468");
  LoadEightDotPattern(a1, 4492, "134 348");
  LoadEightDotPattern(a1, 4493, "134 1348");
  LoadEightDotPattern(a1, 4494, "146 1268");
  LoadEightDotPattern(a1, 4495, "146 2348");
  LoadEightDotPattern(a1, 4496, "1358");
  LoadEightDotPattern(a1, 4497, "146 1568");
  LoadEightDotPattern(a1, 4498, "146 348");
  LoadEightDotPattern(a1, 4499, "146 1348");
  LoadEightDotPattern(a1, 4500, "146 1358");
  LoadEightDotPattern(a1, 4501, "246 1348");
  LoadEightDotPattern(a1, 4502, "246 2468");
  LoadEightDotPattern(a1, 4503, "2456 1348");
  LoadEightDotPattern(a1, 4504, "135 1268");
  LoadEightDotPattern(a1, 4505, "135 3458");
  LoadEightDotPattern(a1, 4506, "135 1368");
  LoadEightDotPattern(a1, 4507, "135 1348");
  LoadEightDotPattern(a1, 4508, "135 2468");
  LoadEightDotPattern(a1, 4509, "1358");
  LoadEightDotPattern(a1, 4511, "2348");
  LoadEightDotPattern(a1, 4512, "1348");
  LoadEightDotPattern(a1, 4513, "1358");
  LoadEightDotPattern(a1, 4520, "18");
  LoadEightDotPattern(a1, 4521, "1 18");
  LoadEightDotPattern(a1, 4522, "1 38");
  LoadEightDotPattern(a1, 4523, "258");
  LoadEightDotPattern(a1, 4524, "25 138");
  LoadEightDotPattern(a1, 4525, "25 3568");
  LoadEightDotPattern(a1, 4526, "358");
  LoadEightDotPattern(a1, 4527, "28");
  LoadEightDotPattern(a1, 4528, "2 18");
  LoadEightDotPattern(a1, 4529, "2 268");
  LoadEightDotPattern(a1, 4530, "2 458");
  LoadEightDotPattern(a1, 4531, "2 38");
  LoadEightDotPattern(a1, 4532, "2 2368");
  LoadEightDotPattern(a1, 4533, "2 2568");
  LoadEightDotPattern(a1, 4534, "2 3568");
  LoadEightDotPattern(a1, 4535, "268");
  LoadEightDotPattern(a1, 4536, "128");
  LoadEightDotPattern(a1, 4537, "12 38");
  LoadEightDotPattern(a1, 4538, "38");
  LoadEightDotPattern(a1, 4539, "348");
  LoadEightDotPattern(a1, 4540, "23568");
  LoadEightDotPattern(a1, 4541, "138");
  LoadEightDotPattern(a1, 4542, "238");
  LoadEightDotPattern(a1, 4543, "2358");
  LoadEightDotPattern(a1, 4544, "2368");
  LoadEightDotPattern(a1, 4545, "2568");
  LoadEightDotPattern(a1, 4546, "3568");
  LoadEightDotPattern(a1, 4547, "1 28");
  LoadEightDotPattern(a1, 4548, "1 3 18");
  LoadEightDotPattern(a1, 4549, "25 18");
  LoadEightDotPattern(a1, 4550, "25 358");
  LoadEightDotPattern(a1, 4551, "25 38");
  LoadEightDotPattern(a1, 4552, "258");
  LoadEightDotPattern(a1, 4553, "25 2368");
  LoadEightDotPattern(a1, 4554, "35 18");
  LoadEightDotPattern(a1, 4555, "35 28");
  LoadEightDotPattern(a1, 4556, "2 1 38");
  LoadEightDotPattern(a1, 4557, "2 258");
  LoadEightDotPattern(a1, 4558, "2 358");
  LoadEightDotPattern(a1, 4559, "3568");
  LoadEightDotPattern(a1, 4560, "2 28");
  LoadEightDotPattern(a1, 4561, "2 26 18");
  LoadEightDotPattern(a1, 4562, "2 26 38");
  LoadEightDotPattern(a1, 4563, "2 45 38");
  LoadEightDotPattern(a1, 4564, "2 45 3568");
  LoadEightDotPattern(a1, 4565, "2 45 23568");
  LoadEightDotPattern(a1, 4566, "2 3 38");
  LoadEightDotPattern(a1, 4567, "28");
  LoadEightDotPattern(a1, 4568, "2 2358");
  LoadEightDotPattern(a1, 4569, "28");
  LoadEightDotPattern(a1, 4570, "26 18");
  LoadEightDotPattern(a1, 4571, "26 28");
  LoadEightDotPattern(a1, 4572, "26 128");
  LoadEightDotPattern(a1, 4573, "26 38");
  LoadEightDotPattern(a1, 4574, "38");
  LoadEightDotPattern(a1, 4575, "268");
  LoadEightDotPattern(a1, 4576, "26 238");
  LoadEightDotPattern(a1, 4577, "26 3568");
  LoadEightDotPattern(a1, 4578, "26 23568");
  LoadEightDotPattern(a1, 4579, "12 28");
  LoadEightDotPattern(a1, 4580, "12 2568");
  LoadEightDotPattern(a1, 4581, "12 3568");
  LoadEightDotPattern(a1, 4582, "12 23568");
  LoadEightDotPattern(a1, 4583, "3 18");
  LoadEightDotPattern(a1, 4584, "3 358");
  LoadEightDotPattern(a1, 4585, "3 28");
  LoadEightDotPattern(a1, 4586, "3 128");
  LoadEightDotPattern(a1, 4588, "18");
  LoadEightDotPattern(a1, 4589, "18");
  LoadEightDotPattern(a1, 4591, "2358");
  LoadEightDotPattern(a1, 4593, "38");
  LoadEightDotPattern(a1, 4595, "256 128");
  LoadEightDotPattern(a1, 4596, "256 23568");
  LoadEightDotPattern(a1, 4597, "356 258");
  LoadEightDotPattern(a1, 4598, "356 28");
  LoadEightDotPattern(a1, 4599, "356 268");
  LoadEightDotPattern(a1, 4600, "356 128");
  LoadEightDotPattern(a1, 4608, "125 268");
  LoadEightDotPattern(a1, 4609, "125 1368");
  LoadEightDotPattern(a1, 4610, "125 248");
  LoadEightDotPattern(a1, 4611, "125 18");
  LoadEightDotPattern(a1, 4612, "125 158");
  LoadEightDotPattern(a1, 4613, "1258");
  LoadEightDotPattern(a1, 4614, "125 1358");
  LoadEightDotPattern(a1, 4615, "125 135 18");
  LoadEightDotPattern(a1, 4616, "123 268");
  LoadEightDotPattern(a1, 4617, "123 1368");
  LoadEightDotPattern(a1, 4618, "123 248");
  LoadEightDotPattern(a1, 4619, "123 18");
  LoadEightDotPattern(a1, 4620, "123 158");
  LoadEightDotPattern(a1, 4621, "1238");
  LoadEightDotPattern(a1, 4622, "123 1358");
  LoadEightDotPattern(a1, 4623, "123 13468");
  LoadEightDotPattern(a1, 4624, "126 268");
  LoadEightDotPattern(a1, 4625, "126 1368");
  LoadEightDotPattern(a1, 4626, "126 248");
  LoadEightDotPattern(a1, 4627, "126 18");
  LoadEightDotPattern(a1, 4628, "126 158");
  LoadEightDotPattern(a1, 4629, "1268");
  LoadEightDotPattern(a1, 4630, "126 1358");
  LoadEightDotPattern(a1, 4631, "126 13468");
  LoadEightDotPattern(a1, 4632, "134 268");
  LoadEightDotPattern(a1, 4633, "134 1368");
  LoadEightDotPattern(a1, 4634, "134 248");
  LoadEightDotPattern(a1, 4635, "134 18");
  LoadEightDotPattern(a1, 4636, "134 158");
  LoadEightDotPattern(a1, 4637, "1348");
  LoadEightDotPattern(a1, 4638, "134 1358");
  LoadEightDotPattern(a1, 4639, "134 13468");
  LoadEightDotPattern(a1, 4640, "1456 268");
  LoadEightDotPattern(a1, 4641, "1456 1368");
  LoadEightDotPattern(a1, 4642, "1456 248");
  LoadEightDotPattern(a1, 4643, "1456 18");
  LoadEightDotPattern(a1, 4644, "1456 158");
  LoadEightDotPattern(a1, 4645, "14568");
  LoadEightDotPattern(a1, 4646, "1456 1358");
  LoadEightDotPattern(a1, 4647, "234 13468");
  LoadEightDotPattern(a1, 4648, "1235 268");
  LoadEightDotPattern(a1, 4649, "1235 1368");
  LoadEightDotPattern(a1, 4650, "1235 248");
  LoadEightDotPattern(a1, 4651, "1235 18");
  LoadEightDotPattern(a1, 4652, "1235 158");
  LoadEightDotPattern(a1, 4653, "12358");
  LoadEightDotPattern(a1, 4654, "1235 1358");
  LoadEightDotPattern(a1, 4655, "1235 13468");
  LoadEightDotPattern(a1, 4656, "234 268");
  LoadEightDotPattern(a1, 4657, "234 1368");
  LoadEightDotPattern(a1, 4658, "234 248");
  LoadEightDotPattern(a1, 4659, "234 18");
  LoadEightDotPattern(a1, 4660, "234 158");
  LoadEightDotPattern(a1, 4661, "2348");
  LoadEightDotPattern(a1, 4662, "234 1358");
  LoadEightDotPattern(a1, 4663, "234 13468");
  LoadEightDotPattern(a1, 4664, "146 268");
  LoadEightDotPattern(a1, 4665, "146 1368");
  LoadEightDotPattern(a1, 4666, "146 248");
  LoadEightDotPattern(a1, 4667, "146 18");
  LoadEightDotPattern(a1, 4668, "146 158");
  LoadEightDotPattern(a1, 4669, "1468");
  LoadEightDotPattern(a1, 4670, "146 1358");
  LoadEightDotPattern(a1, 4671, "146 13468");
  LoadEightDotPattern(a1, 4672, "12345 268");
  LoadEightDotPattern(a1, 4673, "12345 1368");
  LoadEightDotPattern(a1, 4674, "12345 248");
  LoadEightDotPattern(a1, 4675, "12345 18");
  LoadEightDotPattern(a1, 4676, "12345 158");
  LoadEightDotPattern(a1, 4677, "123458");
  LoadEightDotPattern(a1, 4678, "12345 1358");
  LoadEightDotPattern(a1, 4679, "12345 135 18");
  LoadEightDotPattern(a1, 4680, "12345 2456 268");
  LoadEightDotPattern(a1, 4682, "12345 2456 248");
  LoadEightDotPattern(a1, 4683, "12345 13468");
  LoadEightDotPattern(a1, 4684, "12345 2456 158");
  LoadEightDotPattern(a1, 4685, "12345 2456 1368");
  LoadEightDotPattern(a1, 4688, "12345 125 268");
  LoadEightDotPattern(a1, 4689, "12345 125 1368");
  LoadEightDotPattern(a1, 4690, "12345 125 248");
  LoadEightDotPattern(a1, 4691, "12345 125 18");
  LoadEightDotPattern(a1, 4692, "12345 125 158");
  LoadEightDotPattern(a1, 4693, "12345 1258");
  LoadEightDotPattern(a1, 4694, "12345 125 1358");
  LoadEightDotPattern(a1, 4696, "12345 125 13468");
  LoadEightDotPattern(a1, 4698, "12345 125 2456 248");
  LoadEightDotPattern(a1, 4699, "12345 125 2456 1 18");
  LoadEightDotPattern(a1, 4700, "12345 125 2456 1368");
  LoadEightDotPattern(a1, 4701, "12345 1258");
  LoadEightDotPattern(a1, 4704, "12 268");
  LoadEightDotPattern(a1, 4705, "12 1368");
  LoadEightDotPattern(a1, 4706, "12 248");
  LoadEightDotPattern(a1, 4707, "12 18");
  LoadEightDotPattern(a1, 4708, "12 158");
  LoadEightDotPattern(a1, 4709, "128");
  LoadEightDotPattern(a1, 4710, "12 1358");
  LoadEightDotPattern(a1, 4711, "12 13468");
  LoadEightDotPattern(a1, 4712, "1236 268");
  LoadEightDotPattern(a1, 4713, "1236 1368");
  LoadEightDotPattern(a1, 4714, "1236 248");
  LoadEightDotPattern(a1, 4715, "1236 18");
  LoadEightDotPattern(a1, 4716, "1236 158");
  LoadEightDotPattern(a1, 4717, "12368");
  LoadEightDotPattern(a1, 4718, "1236 1358");
  LoadEightDotPattern(a1, 4719, "1236 13468");
  LoadEightDotPattern(a1, 4720, "2345 268");
  LoadEightDotPattern(a1, 4721, "2345 1368");
  LoadEightDotPattern(a1, 4722, "2345 248");
  LoadEightDotPattern(a1, 4723, "2345 18");
  LoadEightDotPattern(a1, 4724, "2345 158");
  LoadEightDotPattern(a1, 4725, "23458");
  LoadEightDotPattern(a1, 4726, "2345 1358");
  LoadEightDotPattern(a1, 4727, "2345 13468");
  LoadEightDotPattern(a1, 4728, "16 268");
  LoadEightDotPattern(a1, 4729, "16 1368");
  LoadEightDotPattern(a1, 4730, "16 248");
  LoadEightDotPattern(a1, 4731, "16 18");
  LoadEightDotPattern(a1, 4732, "16 158");
  LoadEightDotPattern(a1, 4733, "168");
  LoadEightDotPattern(a1, 4734, "16 1358");
  LoadEightDotPattern(a1, 4735, "16 13468");
  LoadEightDotPattern(a1, 4736, "156 268");
  LoadEightDotPattern(a1, 4737, "156 1368");
  LoadEightDotPattern(a1, 4738, "156 248");
  LoadEightDotPattern(a1, 4739, "156 18");
  LoadEightDotPattern(a1, 4740, "156 158");
  LoadEightDotPattern(a1, 4741, "1568");
  LoadEightDotPattern(a1, 4742, "156 1358");
  LoadEightDotPattern(a1, 4743, "156 135 18");
  LoadEightDotPattern(a1, 4744, "156 2456 268");
  LoadEightDotPattern(a1, 4746, "156 2456 248");
  LoadEightDotPattern(a1, 4747, "156 13468");
  LoadEightDotPattern(a1, 4748, "156 2456 158");
  LoadEightDotPattern(a1, 4749, "156 2456 1368");
  LoadEightDotPattern(a1, 4752, "1345 268");
  LoadEightDotPattern(a1, 4753, "1345 1368");
  LoadEightDotPattern(a1, 4754, "1345 248");
  LoadEightDotPattern(a1, 4755, "1345 18");
  LoadEightDotPattern(a1, 4756, "1345 158");
  LoadEightDotPattern(a1, 4757, "13458");
  LoadEightDotPattern(a1, 4758, "1345 1358");
  LoadEightDotPattern(a1, 4759, "1345 13468");
  LoadEightDotPattern(a1, 4760, "346 268");
  LoadEightDotPattern(a1, 4761, "346 1368");
  LoadEightDotPattern(a1, 4762, "346 248");
  LoadEightDotPattern(a1, 4763, "346 18");
  LoadEightDotPattern(a1, 4764, "346 158");
  LoadEightDotPattern(a1, 4765, "3468");
  LoadEightDotPattern(a1, 4766, "346 1358");
  LoadEightDotPattern(a1, 4767, "346 13468");
  LoadEightDotPattern(a1, 4768, "12356 268");
  LoadEightDotPattern(a1, 4769, "12356 1368");
  LoadEightDotPattern(a1, 4770, "12356 248");
  LoadEightDotPattern(a1, 4771, "12356 18");
  LoadEightDotPattern(a1, 4772, "12356 158");
  LoadEightDotPattern(a1, 4773, "123568");
  LoadEightDotPattern(a1, 4774, "12356 1358");
  LoadEightDotPattern(a1, 4775, "2 12356 268");
  LoadEightDotPattern(a1, 4776, "13 268");
  LoadEightDotPattern(a1, 4777, "13 1368");
  LoadEightDotPattern(a1, 4778, "13 248");
  LoadEightDotPattern(a1, 4779, "13 18");
  LoadEightDotPattern(a1, 4780, "13 158");
  LoadEightDotPattern(a1, 4781, "138");
  LoadEightDotPattern(a1, 4782, "13 1358");
  LoadEightDotPattern(a1, 4783, "13 135 18");
  LoadEightDotPattern(a1, 4784, "13 2456 268");
  LoadEightDotPattern(a1, 4786, "13 2456 248");
  LoadEightDotPattern(a1, 4787, "13 13468");
  LoadEightDotPattern(a1, 4788, "13 2456 158");
  LoadEightDotPattern(a1, 4789, "13 2456 1368");
  LoadEightDotPattern(a1, 4792, "236 268");
  LoadEightDotPattern(a1, 4793, "236 1368");
  LoadEightDotPattern(a1, 4794, "236 248");
  LoadEightDotPattern(a1, 4795, "236 18");
  LoadEightDotPattern(a1, 4796, "236 158");
  LoadEightDotPattern(a1, 4797, "2368");
  LoadEightDotPattern(a1, 4798, "236 1358");
  LoadEightDotPattern(a1, 4800, "236 13468");
  LoadEightDotPattern(a1, 4802, "236 2456 248");
  LoadEightDotPattern(a1, 4803, "236 2456 1 18");
  LoadEightDotPattern(a1, 4804, "236 2456 158");
  LoadEightDotPattern(a1, 4805, "236 24568");
  LoadEightDotPattern(a1, 4808, "2456 268");
  LoadEightDotPattern(a1, 4809, "2456 1368");
  LoadEightDotPattern(a1, 4810, "2456 248");
  LoadEightDotPattern(a1, 4811, "2456 18");
  LoadEightDotPattern(a1, 4812, "2456 158");
  LoadEightDotPattern(a1, 4813, "24568");
  LoadEightDotPattern(a1, 4814, "2456 1358");
  LoadEightDotPattern(a1, 4815, "2456 135 18");
  LoadEightDotPattern(a1, 4816, "1256 268");
  LoadEightDotPattern(a1, 4817, "1256 1368");
  LoadEightDotPattern(a1, 4818, "1256 248");
  LoadEightDotPattern(a1, 4819, "1256 18");
  LoadEightDotPattern(a1, 4820, "1256 158");
  LoadEightDotPattern(a1, 4821, "12568");
  LoadEightDotPattern(a1, 4822, "1256 1358");
  LoadEightDotPattern(a1, 4824, "1356 268");
  LoadEightDotPattern(a1, 4825, "1356 1368");
  LoadEightDotPattern(a1, 4826, "1356 248");
  LoadEightDotPattern(a1, 4827, "1356 18");
  LoadEightDotPattern(a1, 4828, "1356 158");
  LoadEightDotPattern(a1, 4829, "13568");
  LoadEightDotPattern(a1, 4830, "1356 1358");
  LoadEightDotPattern(a1, 4831, "1356 13468");
  LoadEightDotPattern(a1, 4832, "356 268");
  LoadEightDotPattern(a1, 4833, "356 1368");
  LoadEightDotPattern(a1, 4834, "356 248");
  LoadEightDotPattern(a1, 4835, "356 18");
  LoadEightDotPattern(a1, 4836, "356 158");
  LoadEightDotPattern(a1, 4837, "3568");
  LoadEightDotPattern(a1, 4838, "356 1358");
  LoadEightDotPattern(a1, 4839, "356 13468");
  LoadEightDotPattern(a1, 4840, "13456 268");
  LoadEightDotPattern(a1, 4841, "13456 1368");
  LoadEightDotPattern(a1, 4842, "13456 248");
  LoadEightDotPattern(a1, 4843, "13456 18");
  LoadEightDotPattern(a1, 4844, "13456 158");
  LoadEightDotPattern(a1, 4845, "134568");
  LoadEightDotPattern(a1, 4846, "13456 1358");
  LoadEightDotPattern(a1, 4847, "13456 135 18");
  LoadEightDotPattern(a1, 4848, "145 268");
  LoadEightDotPattern(a1, 4849, "145 1368");
  LoadEightDotPattern(a1, 4850, "145 248");
  LoadEightDotPattern(a1, 4851, "145 18");
  LoadEightDotPattern(a1, 4852, "145 158");
  LoadEightDotPattern(a1, 4853, "1458");
  LoadEightDotPattern(a1, 4854, "1458");
  LoadEightDotPattern(a1, 4855, "145 13468");
  LoadEightDotPattern(a1, 4856, "145 145 268");
  LoadEightDotPattern(a1, 4857, "145 145 1368");
  LoadEightDotPattern(a1, 4858, "145 145 248");
  LoadEightDotPattern(a1, 4859, "145 145 18");
  LoadEightDotPattern(a1, 4860, "145 145 158");
  LoadEightDotPattern(a1, 4861, "145 1458");
  LoadEightDotPattern(a1, 4862, "145 145 1358");
  LoadEightDotPattern(a1, 4863, "145 145 13468");
  LoadEightDotPattern(a1, 4864, "245 268");
  LoadEightDotPattern(a1, 4865, "245 1368");
  LoadEightDotPattern(a1, 4866, "245 248");
  LoadEightDotPattern(a1, 4867, "245 18");
  LoadEightDotPattern(a1, 4868, "245 158");
  LoadEightDotPattern(a1, 4869, "2458");
  LoadEightDotPattern(a1, 4870, "245 1358");
  LoadEightDotPattern(a1, 4871, "245 13468");
  LoadEightDotPattern(a1, 4872, "1245 268");
  LoadEightDotPattern(a1, 4873, "1245 1368");
  LoadEightDotPattern(a1, 4874, "1245 248");
  LoadEightDotPattern(a1, 4875, "1245 18");
  LoadEightDotPattern(a1, 4876, "1245 158");
  LoadEightDotPattern(a1, 4877, "12458");
  LoadEightDotPattern(a1, 4878, "1245 1358");
  LoadEightDotPattern(a1, 4879, "1245 135 18");
  LoadEightDotPattern(a1, 4880, "1245 2456 268");
  LoadEightDotPattern(a1, 4882, "1245 2456 248");
  LoadEightDotPattern(a1, 4883, "1245 13468");
  LoadEightDotPattern(a1, 4884, "1245 2456 158");
  LoadEightDotPattern(a1, 4885, "1245 2456 1368");
  LoadEightDotPattern(a1, 4888, "1245 1245 268");
  LoadEightDotPattern(a1, 4889, "1245 1245 1368");
  LoadEightDotPattern(a1, 4890, "1245 1245 248");
  LoadEightDotPattern(a1, 4891, "1245 1245 18");
  LoadEightDotPattern(a1, 4892, "1245 1245 158");
  LoadEightDotPattern(a1, 4893, "1245 12458");
  LoadEightDotPattern(a1, 4894, "1245 1245 1358");
  LoadEightDotPattern(a1, 4895, "1245 1245 2456 1 18");
  LoadEightDotPattern(a1, 4896, "23456 268");
  LoadEightDotPattern(a1, 4897, "23456 1368");
  LoadEightDotPattern(a1, 4898, "23456 248");
  LoadEightDotPattern(a1, 4899, "23456 18");
  LoadEightDotPattern(a1, 4900, "23456 158");
  LoadEightDotPattern(a1, 4901, "234568");
  LoadEightDotPattern(a1, 4902, "23456 1358");
  LoadEightDotPattern(a1, 4903, "23456 13468");
  LoadEightDotPattern(a1, 4904, "14 268");
  LoadEightDotPattern(a1, 4905, "14 1368");
  LoadEightDotPattern(a1, 4906, "14 248");
  LoadEightDotPattern(a1, 4907, "14 18");
  LoadEightDotPattern(a1, 4908, "14 158");
  LoadEightDotPattern(a1, 4909, "148");
  LoadEightDotPattern(a1, 4910, "14 1358");
  LoadEightDotPattern(a1, 4911, "14 13468");
  LoadEightDotPattern(a1, 4912, "235 268");
  LoadEightDotPattern(a1, 4913, "235 1368");
  LoadEightDotPattern(a1, 4914, "235 248");
  LoadEightDotPattern(a1, 4915, "235 18");
  LoadEightDotPattern(a1, 4916, "235 158");
  LoadEightDotPattern(a1, 4917, "2358");
  LoadEightDotPattern(a1, 4918, "235 1358");
  LoadEightDotPattern(a1, 4919, "235 13468");
  LoadEightDotPattern(a1, 4920, "2346 268");
  LoadEightDotPattern(a1, 4921, "2346 1368");
  LoadEightDotPattern(a1, 4922, "2346 248");
  LoadEightDotPattern(a1, 4923, "2346 18");
  LoadEightDotPattern(a1, 4924, "2346 158");
  LoadEightDotPattern(a1, 4925, "23468");
  LoadEightDotPattern(a1, 4926, "2346 1358");
  LoadEightDotPattern(a1, 4927, "2346 13468");
  LoadEightDotPattern(a1, 4928, "12346 268");
  LoadEightDotPattern(a1, 4929, "12346 1368");
  LoadEightDotPattern(a1, 4930, "12346 248");
  LoadEightDotPattern(a1, 4931, "12346 18");
  LoadEightDotPattern(a1, 4932, "12346 158");
  LoadEightDotPattern(a1, 4933, "123468");
  LoadEightDotPattern(a1, 4934, "12346 1358");
  LoadEightDotPattern(a1, 4935, "12346 135 18");
  LoadEightDotPattern(a1, 4936, "124 268");
  LoadEightDotPattern(a1, 4937, "124 1368");
  LoadEightDotPattern(a1, 4938, "124 248");
  LoadEightDotPattern(a1, 4939, "124 18");
  LoadEightDotPattern(a1, 4940, "124 158");
  LoadEightDotPattern(a1, 4941, "1248");
  LoadEightDotPattern(a1, 4942, "124 1358");
  LoadEightDotPattern(a1, 4943, "124 13468");
  LoadEightDotPattern(a1, 4944, "1234 268");
  LoadEightDotPattern(a1, 4945, "1234 1368");
  LoadEightDotPattern(a1, 4946, "1234 248");
  LoadEightDotPattern(a1, 4947, "1234 18");
  LoadEightDotPattern(a1, 4948, "1234 158");
  LoadEightDotPattern(a1, 4949, "12348");
  LoadEightDotPattern(a1, 4950, "1234 1358");
  LoadEightDotPattern(a1, 4951, "1234 13456 268");
  LoadEightDotPattern(a1, 4952, "1235 13456 268");
  LoadEightDotPattern(a1, 4953, "134 13456 268");
  LoadEightDotPattern(a1, 4954, "124 13456 268");
  LoadEightDotPattern(a1, 4959, "16 16 16 136 2 25 26 124 168");
  LoadEightDotPattern(a1, 4960, "16 16 16 136 2 25 235 356 168");
  LoadEightDotPattern(a1, 4962, "2568");
  LoadEightDotPattern(a1, 4963, "28");
  LoadEightDotPattern(a1, 4964, "238");
  LoadEightDotPattern(a1, 4965, "258");
  LoadEightDotPattern(a1, 4966, "16 16 16 136 2 25 235 235 168");
  LoadEightDotPattern(a1, 4967, "2368");
  LoadEightDotPattern(a1, 4968, "16 16 16 136 2 25 235 236 168");
  LoadEightDotPattern(a1, 4969, "123456 18");
  LoadEightDotPattern(a1, 4970, "123456 128");
  LoadEightDotPattern(a1, 4971, "123456 148");
  LoadEightDotPattern(a1, 4972, "123456 1458");
  LoadEightDotPattern(a1, 4973, "123456 158");
  LoadEightDotPattern(a1, 4974, "123456 1248");
  LoadEightDotPattern(a1, 4975, "123456 12458");
  LoadEightDotPattern(a1, 4976, "123456 1258");
  LoadEightDotPattern(a1, 4977, "123456 248");
  LoadEightDotPattern(a1, 4978, "123456 1 2458");
  LoadEightDotPattern(a1, 4979, "123456 12 2458");
  LoadEightDotPattern(a1, 4980, "123456 14 2458");
  LoadEightDotPattern(a1, 4981, "123456 145 2458");
  LoadEightDotPattern(a1, 4982, "123456 15 2458");
  LoadEightDotPattern(a1, 4983, "123456 124 2458");
  LoadEightDotPattern(a1, 4984, "123456 1245 2458");
  LoadEightDotPattern(a1, 4985, "123456 125 2458");
  LoadEightDotPattern(a1, 4986, "123456 24 2458");
  LoadEightDotPattern(a1, 4987, "123456 1 245 2458");
  LoadEightDotPattern(a1, 4988, "123456 1 245 245 245 2458");
  LoadEightDotPattern(a1, 4992, "16 16 16 136 2 25 236 356 168");
  LoadEightDotPattern(a1, 4993, "16 16 16 136 2 25 236 2 168");
  LoadEightDotPattern(a1, 4994, "16 16 16 136 2 25 236 23 168");
  LoadEightDotPattern(a1, 4995, "16 16 16 136 2 25 236 25 168");
  LoadEightDotPattern(a1, 4996, "16 16 16 136 2 25 236 256 168");
  LoadEightDotPattern(a1, 4997, "16 16 16 136 2 25 236 26 168");
  LoadEightDotPattern(a1, 4998, "16 16 16 136 2 25 236 235 168");
  LoadEightDotPattern(a1, 4999, "16 16 16 136 2 25 236 2356 168");
  LoadEightDotPattern(a1, 5000, "16 16 16 136 2 25 236 236 168");
  LoadEightDotPattern(a1, 5001, "16 16 16 136 2 25 236 35 168");
  LoadEightDotPattern(a1, 5002, "16 16 16 136 2 25 236 1 168");
  LoadEightDotPattern(a1, 5003, "16 16 16 136 2 25 236 12 168");
  LoadEightDotPattern(a1, 5004, "16 16 16 136 2 25 236 14 168");
  LoadEightDotPattern(a1, 5005, "16 16 16 136 2 25 236 145 168");
  LoadEightDotPattern(a1, 5006, "16 16 16 136 2 25 236 15 168");
  LoadEightDotPattern(a1, 5007, "16 16 16 136 2 25 236 124 168");
  LoadEightDotPattern(a1, 5008, "16 16 16 136 2 25 35 356 168");
  LoadEightDotPattern(a1, 5009, "16 16 16 136 2 25 35 2 168");
  LoadEightDotPattern(a1, 5010, "16 16 16 136 2 25 35 23 168");
  LoadEightDotPattern(a1, 5011, "16 16 16 136 2 25 35 25 168");
  LoadEightDotPattern(a1, 5012, "16 16 16 136 2 25 35 256 168");
  LoadEightDotPattern(a1, 5013, "16 16 16 136 2 25 35 26 168");
  LoadEightDotPattern(a1, 5014, "16 16 16 136 2 25 35 235 168");
  LoadEightDotPattern(a1, 5015, "16 16 16 136 2 25 35 2356 168");
  LoadEightDotPattern(a1, 5016, "16 16 16 136 2 25 35 236 168");
  LoadEightDotPattern(a1, 6016, "12458");
  LoadEightDotPattern(a1, 6017, "138");
  LoadEightDotPattern(a1, 6018, "6 12458");
  LoadEightDotPattern(a1, 6019, "6 138");
  LoadEightDotPattern(a1, 6020, "124568");
  LoadEightDotPattern(a1, 6021, "2458");
  LoadEightDotPattern(a1, 6022, "3468");
  LoadEightDotPattern(a1, 6023, "6 2458");
  LoadEightDotPattern(a1, 6024, "6 3468");
  LoadEightDotPattern(a1, 6025, "6 14568");
  LoadEightDotPattern(a1, 6026, "1458");
  LoadEightDotPattern(a1, 6027, "36 234568");
  LoadEightDotPattern(a1, 6028, "6 1458");
  LoadEightDotPattern(a1, 6029, "356 234568");
  LoadEightDotPattern(a1, 6030, "13458");
  LoadEightDotPattern(a1, 6031, "23458");
  LoadEightDotPattern(a1, 6032, "234568");
  LoadEightDotPattern(a1, 6033, "6 23458");
  LoadEightDotPattern(a1, 6034, "6 234568");
  LoadEightDotPattern(a1, 6035, "6 13458");
  LoadEightDotPattern(a1, 6036, "128");
  LoadEightDotPattern(a1, 6037, "12348");
  LoadEightDotPattern(a1, 6038, "123468");
  LoadEightDotPattern(a1, 6039, "6 12348");
  LoadEightDotPattern(a1, 6040, "1348");
  LoadEightDotPattern(a1, 6041, "6 134568");
  LoadEightDotPattern(a1, 6042, "12358");
  LoadEightDotPattern(a1, 6043, "6 1238");
  LoadEightDotPattern(a1, 6044, "24568");
  LoadEightDotPattern(a1, 6045, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6046, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6047, "2348");
  LoadEightDotPattern(a1, 6048, "1258");
  LoadEightDotPattern(a1, 6049, "1238");
  LoadEightDotPattern(a1, 6050, "1358");
  LoadEightDotPattern(a1, 6051, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6052, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6053, "6 348");
  LoadEightDotPattern(a1, 6054, "15 18");
  LoadEightDotPattern(a1, 6055, "14 18");
  LoadEightDotPattern(a1, 6056, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6057, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6058, "12568");
  LoadEightDotPattern(a1, 6059, "6 13468");
  LoadEightDotPattern(a1, 6060, "1346 18");
  LoadEightDotPattern(a1, 6061, "14568");
  LoadEightDotPattern(a1, 6062, "1456 18");
  LoadEightDotPattern(a1, 6063, "58");
  LoadEightDotPattern(a1, 6064, "124 18");
  LoadEightDotPattern(a1, 6065, "156 18");
  LoadEightDotPattern(a1, 6066, "156 18");
  LoadEightDotPattern(a1, 6067, "456 148");
  LoadEightDotPattern(a1, 6068, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6069, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6070, "168");
  LoadEightDotPattern(a1, 6071, "348");
  LoadEightDotPattern(a1, 6072, "56 158");
  LoadEightDotPattern(a1, 6073, "2468");
  LoadEightDotPattern(a1, 6074, "268");
  LoadEightDotPattern(a1, 6075, "56 148");
  LoadEightDotPattern(a1, 6076, "258");
  LoadEightDotPattern(a1, 6077, "238");
  LoadEightDotPattern(a1, 6078, "1468");
  LoadEightDotPattern(a1, 6079, "123458");
  LoadEightDotPattern(a1, 6080, "123568");
  LoadEightDotPattern(a1, 6081, "56 1248");
  LoadEightDotPattern(a1, 6082, "1268");
  LoadEightDotPattern(a1, 6083, "56 248");
  LoadEightDotPattern(a1, 6084, "1568");
  LoadEightDotPattern(a1, 6085, "4568");
  LoadEightDotPattern(a1, 6086, "134568");
  LoadEightDotPattern(a1, 6087, "56 18");
  LoadEightDotPattern(a1, 6088, "458");
  LoadEightDotPattern(a1, 6089, "48");
  LoadEightDotPattern(a1, 6090, "368");
  LoadEightDotPattern(a1, 6091, "358");
  LoadEightDotPattern(a1, 6092, "23568");
  LoadEightDotPattern(a1, 6093, "3568");
  LoadEightDotPattern(a1, 6094, "68");
  LoadEightDotPattern(a1, 6095, "38");
  LoadEightDotPattern(a1, 6096, "3458");
  LoadEightDotPattern(a1, 6097, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6098, "12368");
  LoadEightDotPattern(a1, 6099, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6100, "1234568");
  LoadEightDotPattern(a1, 6101, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6102, "46 348");
  LoadEightDotPattern(a1, 6103, "28");
  LoadEightDotPattern(a1, 6104, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6105, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6106, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6107, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6108, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6109, "16 1456 1456 168");
  LoadEightDotPattern(a1, 6112, "2458");
  LoadEightDotPattern(a1, 6113, "18");
  LoadEightDotPattern(a1, 6114, "128");
  LoadEightDotPattern(a1, 6115, "148");
  LoadEightDotPattern(a1, 6116, "1458");
  LoadEightDotPattern(a1, 6117, "158");
  LoadEightDotPattern(a1, 6118, "1248");
  LoadEightDotPattern(a1, 6119, "12458");
  LoadEightDotPattern(a1, 6120, "1258");
  LoadEightDotPattern(a1, 6121, "248");
  LoadEightDotPattern(a1, 6128, "2458");
  LoadEightDotPattern(a1, 6129, "18");
  LoadEightDotPattern(a1, 6130, "128");
  LoadEightDotPattern(a1, 6131, "148");
  LoadEightDotPattern(a1, 6132, "1458");
  LoadEightDotPattern(a1, 6133, "158");
  LoadEightDotPattern(a1, 6134, "1248");
  LoadEightDotPattern(a1, 6135, "12458");
  LoadEightDotPattern(a1, 6136, "1258");
  LoadEightDotPattern(a1, 6137, "248");
  LoadEightDotPattern(a1, 12295, "2458");
  LoadEightDotPattern(a1, 12321, "18");
  LoadEightDotPattern(a1, 12322, "128");
  LoadEightDotPattern(a1, 12323, "148");
  LoadEightDotPattern(a1, 12324, "1458");
  LoadEightDotPattern(a1, 12325, "158");
  LoadEightDotPattern(a1, 12326, "1248");
  LoadEightDotPattern(a1, 12327, "23568");
  LoadEightDotPattern(a1, 12328, "1258");
  LoadEightDotPattern(a1, 12329, "248");
  LoadEightDotPattern(a1, 12344, "1 2458");
  LoadEightDotPattern(a1, 12345, "12 2458");
  LoadEightDotPattern(a1, 12346, "14 2458");
  LoadEightDotPattern(a1, 12353, "18");
  LoadEightDotPattern(a1, 12354, "18");
  LoadEightDotPattern(a1, 12355, "128");
  LoadEightDotPattern(a1, 12356, "128");
  LoadEightDotPattern(a1, 12357, "148");
  LoadEightDotPattern(a1, 12358, "148");
  LoadEightDotPattern(a1, 12359, "1248");
  LoadEightDotPattern(a1, 12360, "1248");
  LoadEightDotPattern(a1, 12361, "248");
  LoadEightDotPattern(a1, 12362, "248");
  LoadEightDotPattern(a1, 12363, "168");
  LoadEightDotPattern(a1, 12364, "5 168");
  LoadEightDotPattern(a1, 12365, "1268");
  LoadEightDotPattern(a1, 12366, "5 1268");
  LoadEightDotPattern(a1, 12367, "1468");
  LoadEightDotPattern(a1, 12368, "5 1468");
  LoadEightDotPattern(a1, 12369, "12468");
  LoadEightDotPattern(a1, 12370, "5 12468");
  LoadEightDotPattern(a1, 12371, "2468");
  LoadEightDotPattern(a1, 12372, "5 2468");
  LoadEightDotPattern(a1, 12373, "1568");
  LoadEightDotPattern(a1, 12374, "5 1568");
  LoadEightDotPattern(a1, 12375, "12568");
  LoadEightDotPattern(a1, 12376, "5 12568");
  LoadEightDotPattern(a1, 12377, "14568");
  LoadEightDotPattern(a1, 12378, "5 14568");
  LoadEightDotPattern(a1, 12379, "124568");
  LoadEightDotPattern(a1, 12380, "5 124568");
  LoadEightDotPattern(a1, 12381, "24568");
  LoadEightDotPattern(a1, 12382, "5 24568");
  LoadEightDotPattern(a1, 12383, "1358");
  LoadEightDotPattern(a1, 12384, "5 1358");
  LoadEightDotPattern(a1, 12385, "12358");
  LoadEightDotPattern(a1, 12386, "5 12358");
  LoadEightDotPattern(a1, 12387, "28");
  LoadEightDotPattern(a1, 12388, "13458");
  LoadEightDotPattern(a1, 12389, "5 13458");
  LoadEightDotPattern(a1, 12390, "123458");
  LoadEightDotPattern(a1, 12391, "5 123458");
  LoadEightDotPattern(a1, 12392, "23458");
  LoadEightDotPattern(a1, 12393, "5 23458");
  LoadEightDotPattern(a1, 12394, "138");
  LoadEightDotPattern(a1, 12395, "1238");
  LoadEightDotPattern(a1, 12396, "1348");
  LoadEightDotPattern(a1, 12397, "12348");
  LoadEightDotPattern(a1, 12398, "2348");
  LoadEightDotPattern(a1, 12399, "1368");
  LoadEightDotPattern(a1, 12400, "5 1368");
  LoadEightDotPattern(a1, 12401, "6 1368");
  LoadEightDotPattern(a1, 12402, "12368");
  LoadEightDotPattern(a1, 12403, "5 12368");
  LoadEightDotPattern(a1, 12404, "6 12368");
  LoadEightDotPattern(a1, 12405, "13468");
  LoadEightDotPattern(a1, 12406, "5 13468");
  LoadEightDotPattern(a1, 12407, "6 13468");
  LoadEightDotPattern(a1, 12408, "123468");
  LoadEightDotPattern(a1, 12409, "5 123468");
  LoadEightDotPattern(a1, 12410, "6 123468");
  LoadEightDotPattern(a1, 12411, "23468");
  LoadEightDotPattern(a1, 12412, "5 23468");
  LoadEightDotPattern(a1, 12413, "6 23468");
  LoadEightDotPattern(a1, 12414, "13568");
  LoadEightDotPattern(a1, 12415, "123568");
  LoadEightDotPattern(a1, 12416, "134568");
  LoadEightDotPattern(a1, 12417, "1234568");
  LoadEightDotPattern(a1, 12418, "234568");
  LoadEightDotPattern(a1, 12419, "348");
  LoadEightDotPattern(a1, 12420, "348");
  LoadEightDotPattern(a1, 12421, "3468");
  LoadEightDotPattern(a1, 12422, "3468");
  LoadEightDotPattern(a1, 12423, "3458");
  LoadEightDotPattern(a1, 12424, "3458");
  LoadEightDotPattern(a1, 12425, "158");
  LoadEightDotPattern(a1, 12426, "1258");
  LoadEightDotPattern(a1, 12427, "1458");
  LoadEightDotPattern(a1, 12428, "12458");
  LoadEightDotPattern(a1, 12429, "2458");
  LoadEightDotPattern(a1, 12430, "38");
  LoadEightDotPattern(a1, 12431, "38");
  LoadEightDotPattern(a1, 12432, "238");
  LoadEightDotPattern(a1, 12433, "2358");
  LoadEightDotPattern(a1, 12434, "358");
  LoadEightDotPattern(a1, 12435, "3568");
  LoadEightDotPattern(a1, 12436, "5 148");
  LoadEightDotPattern(a1, 12437, "168");
  LoadEightDotPattern(a1, 12438, "12468");
  LoadEightDotPattern(a1, 12442, "2568");
  LoadEightDotPattern(a1, 12443, "58");
  LoadEightDotPattern(a1, 12444, "68");
  LoadEightDotPattern(a1, 12448, "36 368");
  LoadEightDotPattern(a1, 12449, "18");
  LoadEightDotPattern(a1, 12450, "18");
  LoadEightDotPattern(a1, 12451, "128");
  LoadEightDotPattern(a1, 12452, "128");
  LoadEightDotPattern(a1, 12453, "148");
  LoadEightDotPattern(a1, 12454, "148");
  LoadEightDotPattern(a1, 12455, "1248");
  LoadEightDotPattern(a1, 12456, "1248");
  LoadEightDotPattern(a1, 12457, "248");
  LoadEightDotPattern(a1, 12458, "248");
  LoadEightDotPattern(a1, 12459, "168");
  LoadEightDotPattern(a1, 12460, "5 168");
  LoadEightDotPattern(a1, 12461, "1268");
  LoadEightDotPattern(a1, 12462, "5 1268");
  LoadEightDotPattern(a1, 12463, "1468");
  LoadEightDotPattern(a1, 12464, "5 1468");
  LoadEightDotPattern(a1, 12465, "12468");
  LoadEightDotPattern(a1, 12466, "5 12468");
  LoadEightDotPattern(a1, 12467, "2468");
  LoadEightDotPattern(a1, 12468, "5 2468");
  LoadEightDotPattern(a1, 12469, "1568");
  LoadEightDotPattern(a1, 12470, "5 1568");
  LoadEightDotPattern(a1, 12471, "12568");
  LoadEightDotPattern(a1, 12472, "5 12568");
  LoadEightDotPattern(a1, 12473, "14568");
  LoadEightDotPattern(a1, 12474, "5 14568");
  LoadEightDotPattern(a1, 12475, "124568");
  LoadEightDotPattern(a1, 12476, "5 124568");
  LoadEightDotPattern(a1, 12477, "24568");
  LoadEightDotPattern(a1, 12478, "5 24568");
  LoadEightDotPattern(a1, 12479, "1358");
  LoadEightDotPattern(a1, 12480, "5 1358");
  LoadEightDotPattern(a1, 12481, "12358");
  LoadEightDotPattern(a1, 12482, "5 12358");
  LoadEightDotPattern(a1, 12483, "28");
  LoadEightDotPattern(a1, 12484, "13458");
  LoadEightDotPattern(a1, 12485, "5 13458");
  LoadEightDotPattern(a1, 12486, "123458");
  LoadEightDotPattern(a1, 12487, "5 123458");
  LoadEightDotPattern(a1, 12488, "23458");
  LoadEightDotPattern(a1, 12489, "5 23458");
  LoadEightDotPattern(a1, 12490, "138");
  LoadEightDotPattern(a1, 12491, "1238");
  LoadEightDotPattern(a1, 12492, "1348");
  LoadEightDotPattern(a1, 12493, "12348");
  LoadEightDotPattern(a1, 12494, "2348");
  LoadEightDotPattern(a1, 12495, "1368");
  LoadEightDotPattern(a1, 12496, "5 1368");
  LoadEightDotPattern(a1, 12497, "6 1368");
  LoadEightDotPattern(a1, 12498, "12368");
  LoadEightDotPattern(a1, 12499, "5 12368");
  LoadEightDotPattern(a1, 12500, "6 12368");
  LoadEightDotPattern(a1, 12501, "13468");
  LoadEightDotPattern(a1, 12502, "5 13468");
  LoadEightDotPattern(a1, 12503, "6 13468");
  LoadEightDotPattern(a1, 12504, "123468");
  LoadEightDotPattern(a1, 12505, "5 123468");
  LoadEightDotPattern(a1, 12506, "6 123468");
  LoadEightDotPattern(a1, 12507, "23468");
  LoadEightDotPattern(a1, 12508, "5 23468");
  LoadEightDotPattern(a1, 12509, "6 23468");
  LoadEightDotPattern(a1, 12510, "13568");
  LoadEightDotPattern(a1, 12511, "123568");
  LoadEightDotPattern(a1, 12512, "134568");
  LoadEightDotPattern(a1, 12513, "1234568");
  LoadEightDotPattern(a1, 12514, "234568");
  LoadEightDotPattern(a1, 12515, "348");
  LoadEightDotPattern(a1, 12516, "348");
  LoadEightDotPattern(a1, 12517, "3468");
  LoadEightDotPattern(a1, 12518, "3468");
  LoadEightDotPattern(a1, 12519, "3458");
  LoadEightDotPattern(a1, 12520, "3458");
  LoadEightDotPattern(a1, 12521, "158");
  LoadEightDotPattern(a1, 12522, "1258");
  LoadEightDotPattern(a1, 12523, "1458");
  LoadEightDotPattern(a1, 12524, "12458");
  LoadEightDotPattern(a1, 12525, "2458");
  LoadEightDotPattern(a1, 12526, "38");
  LoadEightDotPattern(a1, 12527, "38");
  LoadEightDotPattern(a1, 12528, "238");
  LoadEightDotPattern(a1, 12529, "2358");
  LoadEightDotPattern(a1, 12530, "358");
  LoadEightDotPattern(a1, 12531, "3568");
  LoadEightDotPattern(a1, 12532, "5 148");
  LoadEightDotPattern(a1, 12533, "168");
  LoadEightDotPattern(a1, 12534, "12468");
  LoadEightDotPattern(a1, 12535, "256 1368");
  LoadEightDotPattern(a1, 12536, "256 12368");
  LoadEightDotPattern(a1, 12537, "256 123468");
  LoadEightDotPattern(a1, 12538, "256 23468");
  LoadEightDotPattern(a1, 12539, "58");
  LoadEightDotPattern(a1, 12540, "258");
  LoadEightDotPattern(a1, 12549, "128");
  LoadEightDotPattern(a1, 12550, "12348");
  LoadEightDotPattern(a1, 12551, "1348");
  LoadEightDotPattern(a1, 12552, "1248");
  LoadEightDotPattern(a1, 12553, "1458");
  LoadEightDotPattern(a1, 12554, "23458");
  LoadEightDotPattern(a1, 12555, "13458");
  LoadEightDotPattern(a1, 12556, "1238");
  LoadEightDotPattern(a1, 12557, "12458");
  LoadEightDotPattern(a1, 12558, "138");
  LoadEightDotPattern(a1, 12559, "1258");
  LoadEightDotPattern(a1, 12560, "12458");
  LoadEightDotPattern(a1, 12561, "138");
  LoadEightDotPattern(a1, 12562, "1258");
  LoadEightDotPattern(a1, 12563, "348");
  LoadEightDotPattern(a1, 12564, "123458");
  LoadEightDotPattern(a1, 12565, "1568");
  LoadEightDotPattern(a1, 12566, "2458");
  LoadEightDotPattern(a1, 12567, "13568");
  LoadEightDotPattern(a1, 12568, "148");
  LoadEightDotPattern(a1, 12569, "2348");
  LoadEightDotPattern(a1, 12570, "358");
  LoadEightDotPattern(a1, 12571, "268");
  LoadEightDotPattern(a1, 12572, "268");
  LoadEightDotPattern(a1, 12574, "2468");
  LoadEightDotPattern(a1, 12575, "23468");
  LoadEightDotPattern(a1, 12576, "2358");
  LoadEightDotPattern(a1, 12577, "123568");
  LoadEightDotPattern(a1, 12578, "12368");
  LoadEightDotPattern(a1, 12579, "3568");
  LoadEightDotPattern(a1, 12580, "2368");
  LoadEightDotPattern(a1, 12581, "34568");
  LoadEightDotPattern(a1, 12582, "12358");
  LoadEightDotPattern(a1, 12583, "248");
  LoadEightDotPattern(a1, 12584, "1368");

  return LoadEightDotPattern(a1, 12585, "1368");
}

uint64_t BRLDISP_Translate(uint64_t a1, __int16 a2, __int32 *a3, unint64_t a4, unsigned int a5, unsigned int a6, _WORD *a7)
{
  v7 = a4;
  if ((a2 & 0x1000) != 0)
  {
    v13 = a4 + 4 * a5 - 4;
    v14 = *a3;
    if (*a3)
    {
      v15 = v13 > a4;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = *(a1 + 16);
      v17 = *(a1 + 8);
      v18 = a3 + 1;
      do
      {
        v19 = *(v16 + 8 * BYTE1(v14));
        v20 = v17;
        if (v19)
        {
          v20 = *(v19 + 4 * v14);
        }

        *v7++ = v20;
        v21 = *v18++;
        LOWORD(v14) = v21;
        if (v21)
        {
          v22 = v7 >= v13;
        }

        else
        {
          v22 = 1;
        }
      }

      while (!v22);
    }

    result = 0;
    *v7 = 0;
  }

  else
  {
    result = BRLTRN_TranslateString(*a1, a3, a4, a5, a6, a7);
    if (!result)
    {
      v9 = *v7;
      if (v9)
      {
        v10 = v7 + 1;
        do
        {
          if (v9 > 0xFF)
          {
            v11 = 0;
          }

          else
          {
            v11 = (wcUnicode[v9] & 0xFFFFFF3F) + 10240;
          }

          *(v10 - 1) = v11;
          v12 = *v10++;
          v9 = v12;
        }

        while (v12);
      }

      return 0;
    }
  }

  return result;
}

uint64_t BRLDISP_LocateSource()
{
  v4 = __chkstk_darwin();
  result = 14;
  if (v4)
  {
    v6 = v1;
    if (v1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v2;
        v9 = v0;
        if ((v0 & 0x1000) == 0)
        {
          if (*v1)
          {
            v10 = 0;
            v11 = -1;
            do
            {
              v17[0] = 0;
              if (BRLDISP_Translate(v4, v9, v6, &v18, 0x1000u, v10, v17))
              {
                v12 = -1;
              }

              else
              {
                v12 = v17[0];
              }

              v13 = v12;
              if (v11 < v12)
              {
                *&v17[2 * v12 + 1] = v10;
              }

              if (v11 + 1 < v12)
              {
                v14 = &v17[2 * v11 + 3];
                v15 = ~v11 + v13;
                do
                {
                  if (v11 < 0)
                  {
                    v16 = 0;
                  }

                  else
                  {
                    v16 = *&v17[2 * v11 + 1];
                  }

                  *v14++ = v16;
                  ++v11;
                  --v15;
                }

                while (v15);
              }

              ++v10;
              v11 = v13;
            }

            while (v6[v10]);
          }

          else
          {
            v13 = -1;
          }

          if (v13 >= v8)
          {
            LOWORD(v13) = v8;
          }

          v8 = *&v17[2 * v13 + 1];
        }

        result = 0;
        *v7 = v8;
      }
    }
  }

  return result;
}

uint64_t BRLDISP_LocateSourceLinear()
{
  v4 = __chkstk_darwin();
  result = 14;
  if (v4)
  {
    v6 = v1;
    if (v1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v2;
        v9 = v0;
        if ((v0 & 0x1000) == 0)
        {
          if (*v1)
          {
            v10 = 0;
            v11 = -1;
            do
            {
              v17[0] = 0;
              if (BRLDISP_Translate(v4, v9, v6, &v18, 0x1000u, v10, v17))
              {
                v12 = -1;
              }

              else
              {
                v12 = v17[0];
              }

              v13 = v12;
              if (v11 < v12)
              {
                *&v17[2 * v12 + 1] = v10;
              }

              if (v11 + 1 < v12)
              {
                v14 = &v17[2 * v11 + 3];
                v15 = ~v11 + v13;
                do
                {
                  if (v11 < 0)
                  {
                    v16 = 0;
                  }

                  else
                  {
                    v16 = *&v17[2 * v11 + 1];
                  }

                  *v14++ = v16;
                  ++v11;
                  --v15;
                }

                while (v15);
              }

              ++v10;
              v11 = v13;
            }

            while (v6[v10]);
          }

          else
          {
            v13 = -1;
          }

          if (v13 >= v8)
          {
            LOWORD(v13) = v8;
          }

          v8 = *&v17[2 * v13 + 1];
        }

        result = 0;
        *v7 = v8;
      }
    }
  }

  return result;
}

uint64_t BRLDISP_Destroy(_DWORD **a1)
{
  if (!a1)
  {
    return 14;
  }

  v2 = BRLTRN_Destroy(*a1);
  free(a1);
  return v2;
}

uint64_t BRLDISP_PrintDots(int *a1, __int16 a2, FILE *a3, FILE *a4)
{
  v8 = *a1;
  if (*a1)
  {
    v9 = a1 + 1;
    do
    {
      if ((v8 & 8) != 0)
      {
        v10 = 42;
      }

      else
      {
        v10 = 32;
      }

      if (v8)
      {
        v11 = 42;
      }

      else
      {
        v11 = 32;
      }

      fprintf(a3, "%c%c ", v11, v10);
      v12 = *v9++;
      LOBYTE(v8) = v12;
    }

    while (v12);
  }

  fputc(10, a3);
  v13 = *a1;
  if (*a1)
  {
    v14 = a1 + 1;
    do
    {
      if ((v13 & 0x10) != 0)
      {
        v15 = 42;
      }

      else
      {
        v15 = 32;
      }

      if ((v13 & 2) != 0)
      {
        v16 = 42;
      }

      else
      {
        v16 = 32;
      }

      fprintf(a3, "%c%c ", v16, v15);
      v17 = *v14++;
      LOBYTE(v13) = v17;
    }

    while (v17);
  }

  fputc(10, a3);
  v18 = *a1;
  if (*a1)
  {
    v19 = a1 + 1;
    do
    {
      if ((v18 & 0x20) != 0)
      {
        v20 = 42;
      }

      else
      {
        v20 = 32;
      }

      if ((v18 & 4) != 0)
      {
        v21 = 42;
      }

      else
      {
        v21 = 32;
      }

      fprintf(a3, "%c%c ", v21, v20);
      v22 = *v19++;
      LOBYTE(v18) = v22;
    }

    while (v22);
  }

  fputc(10, a3);
  v23 = *a1;
  if ((a2 & 0x1000) != 0)
  {
    if (v23)
    {
      v26 = a1 + 1;
      do
      {
        if ((v23 & 0x80) != 0)
        {
          v27 = 42;
        }

        else
        {
          v27 = 32;
        }

        if ((v23 & 0x40) != 0)
        {
          v28 = 42;
        }

        else
        {
          v28 = 32;
        }

        fprintf(a3, "%c%c ", v28, v27);
        v29 = *v26++;
        LOBYTE(v23) = v29;
      }

      while (v29);
    }

    fputc(10, a3);
  }

  else if (v23)
  {
    v24 = a1 + 1;
    while ((v23 & 0xC0) == 0)
    {
      v25 = *v24++;
      LOBYTE(v23) = v25;
      if (!v25)
      {
        return 0;
      }
    }

    fwrite("     ****WARNING**** Lower dot(s) present in expected six-dot output\n", 0x45uLL, 1uLL, a4);
  }

  return 0;
}

uint64_t BRLDISP_PrintAlignmentSpacing(int a1, FILE *__stream)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      fwrite("   ", 3uLL, 1uLL, __stream);
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t BRLDISP_PrintSeparator(int a1, FILE *__stream)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      fwrite("---", 3uLL, 1uLL, __stream);
      --v3;
    }

    while (v3);
  }

  fputc(10, __stream);
  return 0;
}

void *LoadEightDotPatternBin(uint64_t a1, __int16 a2, int a3)
{
  result = *(a1 + 16);
  if (result || (result = malloc_type_calloc(0x100uLL, 8uLL, 0x10040436913F5uLL), (*(a1 + 16) = result) != 0))
  {
    v7 = result[HIBYTE(a2)];
    if (!v7)
    {
      result = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
      *(*(a1 + 16) + 8 * HIBYTE(a2)) = result;
      v7 = *(*(a1 + 16) + 8 * HIBYTE(a2));
      if (!v7)
      {
        return result;
      }

      v8 = 0;
      v9 = (a1 + 8);
      v10 = vld1q_dup_f32(v9);
      do
      {
        *(v7 + v8) = v10;
        v8 += 16;
      }

      while (v8 != 1024);
    }

    *(v7 + 4 * a2) = a3;
  }

  return result;
}

void *LoadEightDotPattern(uint64_t a1, __int16 a2, unsigned __int8 *a3)
{
  v3 = 0;
LABEL_2:
  for (i = 10240; ; i |= 2u)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *a3++;
          v5 = v6;
          if (v6 <= 52)
          {
            break;
          }

          if (v5 > 54)
          {
            if (v5 == 55)
            {
              i |= 0x40u;
            }

            else
            {
              if (v5 != 56)
              {
LABEL_25:
                ++v3;
                goto LABEL_2;
              }

              if (!v3)
              {
                i |= 0x80u;
              }
            }
          }

          else if (v5 == 53)
          {
            i |= 0x10u;
          }

          else
          {
            if (v5 != 54)
            {
              goto LABEL_25;
            }

            i |= 0x20u;
          }
        }

        if (v5 <= 50)
        {
          break;
        }

        if (v5 == 51)
        {
          i |= 4u;
        }

        else
        {
          if (v5 != 52)
          {
            goto LABEL_25;
          }

          i |= 8u;
        }
      }

      if (v5 != 49)
      {
        break;
      }

      i |= 1u;
    }

    if (v5 != 50)
    {
      break;
    }
  }

  if (v5)
  {
    goto LABEL_25;
  }

  return LoadEightDotPatternBin(a1, a2, i);
}

uint64_t BRLTRN_Version(_WORD *a1, _WORD *a2)
{
  result = 14;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a1 = 8;
      *a2 = 1;
    }
  }

  return result;
}

uint64_t BRLTRN_GetStateArraySize(_WORD *a1)
{
  if (!a1)
  {
    return 14;
  }

  result = 0;
  *a1 = 2;
  return result;
}

double BRLTRN_ResetStateArray(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      dxbte_state_reset(v4);
      result = *(v4 + 1);
      *a2 = *(v4 + 8);
    }
  }

  return result;
}

uint64_t BRLTRN_CreateTableBytes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  dxerr_report_create(v15);
  dxios_stream_create(v13, v15);
  v10 = 1;
  v11 = malloc_type_calloc(0x8880uLL, 1uLL, 0x10F0040BCB70463uLL);
  *a1 = v11;
  dxerr_report_create((v11 + 4350));
  dxios_stream_create((v11 + 12), (v11 + 4350));
  dxios_stream_create((v11 + 1), (v11 + 4350));
  dxbte_engine_create(v11 + 23, (v11 + 4350));
  if (a2)
  {
    v10 = 1;
    if (!dxios_stream_activate_buf((v11 + 1), 1u, a2, a3))
    {
      if (a4 && !dxios_stream_activate_buf((v11 + 12), 0, a4, a5))
      {
        v10 = initialize_engine_helper(v11, v13);
      }

      else
      {
        v10 = 3;
      }
    }
  }

  dxios_stream_destroy(v13);
  return v10;
}

uint64_t BRLTRN_CreateW(__int32 *a1, __int32 *a2, uint64_t *a3, uint64_t a4, __int32 *a5)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  dxerr_report_create(v21);
  dxios_stream_create(v19, v21);
  if ((BRLTRN_CreateW_chi_initialized & 1) == 0)
  {
    v9 = dxios_search_open_w(a5, 0, 0, 0, 256);
    v10 = chiini_stream(v9);
    if (v9)
    {
      dxios_close(v9);
    }

    if (v10)
    {
      return 11;
    }

    BRLTRN_CreateW_chi_initialized = 1;
  }

  v12 = dx_wfopen(a1, dword_2C7BC);
  v13 = dx_wfopen(a2, &unk_2C7C8);
  v14 = malloc_type_calloc(0x8880uLL, 1uLL, 0x10F0040BCB70463uLL);
  v15 = v14;
  if (v14)
  {
    dxerr_report_create(v14 + 34800);
    dxios_stream_create(v15 + 96, v15 + 34800);
    dxios_stream_create(v15 + 8, v15 + 34800);
    dxbte_engine_create((v15 + 184), v15 + 34800);
    *(v15 + 34888) = 0;
    v11 = 1;
    if (v12)
    {
      if (dxios_stream_activate_fp(v15 + 8, v12, 1u, 0))
      {
LABEL_14:
        fclose(v12);
        goto LABEL_15;
      }

      if (!v13 || dxios_stream_activate_fp(v15 + 96, v13, 0, 0))
      {
        v11 = 3;
        goto LABEL_14;
      }

      v11 = initialize_engine_helper(v15, v19);
      if (v11)
      {
        goto LABEL_14;
      }

      v17 = dxchi_unimap_create();
      *(v15 + 34872) = v17;
      brltrn_unimap_read(v17, a5, dword_2C7D0);
      if (is_basename_equal(a1, dword_2C7FC))
      {
        v18 = &unk_2C828;
      }

      else if (is_basename_equal(a1, dword_2C848))
      {
        v18 = &unk_2C874;
      }

      else if (is_basename_equal(a1, dword_2C894))
      {
        v18 = &unk_2C8C0;
      }

      else
      {
        if (!is_basename_equal(a1, dword_2C8F4))
        {
LABEL_32:
          v11 = 0;
          goto LABEL_14;
        }

        v18 = &unk_2C920;
      }

      brltrn_unimap_read(*(v15 + 34872), a5, v18);
      goto LABEL_32;
    }
  }

  else
  {
    v11 = 0;
    if (v12)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v13)
  {
    fclose(v13);
  }

  if (v11)
  {
    BRLTRN_Destroy(v15);
  }

  else
  {
    *a3 = v15;
  }

  dxios_stream_destroy(v19);
  return v11;
}

_DWORD *brltrn_unimap_read(uint64_t a1, int *a2, int *a3)
{
  wcscpx(__s, a2, 256);
  v5 = wcsrchr(__s, 47);
  if (v5)
  {
    v5[1] = 0;
    wcscax(__s, a3, 256);
  }

  else
  {
    wcscpx(__s, a3, 256);
  }

  result = dxios_search_open_w(__s, 0, 0, 0, 256);
  if (result)
  {
    v7 = result;
    dxchi_unimap_read(a1, result);
    return dxios_close(v7);
  }

  return result;
}

uint64_t is_basename_equal(__int32 *a1, __int32 *a2)
{
  v4 = wcsrchr(a1, 47);
  v5 = wcsrchr(a2, 47);
  v6 = (v4 + 1);
  if (!v4)
  {
    v6 = a1;
  }

  v7 = (v5 + 1);
  if (!v5)
  {
    v7 = a2;
  }

  v8 = *v6;
  v9 = *v7;
  if (!(*v6 | *v7))
  {
    return 1;
  }

  v10 = v6 + 1;
  for (i = v7 + 1; ; ++i)
  {
    if (v8 <= 0x7F && (_DefaultRuneLocale.__runetype[v8] & 0x8000) != 0)
    {
      v8 = __tolower(v8);
    }

    if (v9 <= 0x7F && (_DefaultRuneLocale.__runetype[v9] & 0x8000) != 0)
    {
      v9 = __tolower(v9);
    }

    if (v8 != v9)
    {
      break;
    }

    v12 = *v10++;
    v8 = v12;
    v13 = *i;
    v9 = v13;
    if (!(v8 | v13))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t BRLTRN_Destroy(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1 + 0x2000;
    dxbte_engine_destroy((a1 + 46));
    dxios_stream_destroy(a1 + 2);
    dxios_stream_destroy(a1 + 24);
    dxchi_unimap_destroy(*(v2 + 263));
    *(v2 + 263) = 0;
    v3 = *(v2 + 266);
    if (v3)
    {
      dxbte_engine_destroy(v3);
      free(*(v2 + 266));
      *(v2 + 266) = 0;
    }

    v4 = *(v2 + 265);
    if (v4)
    {
      dxscb_engine_destroy(v4);
      free(*(v2 + 265));
      *(v2 + 265) = 0;
    }

    v5 = *(v2 + 270);
    if (v5)
    {
      free(v5);
    }

    v6 = *(v2 + 271);
    if (v6)
    {
      free(v6);
    }

    free(a1);
  }

  return 0;
}

uint64_t BRLTRN_SetStateBitmapVariableArray(uint64_t a1, void *a2)
{
  if (a1)
  {
    *(a1 + 34880) = a2;
    *a2 = 0;
    a2[1] = 0;
  }

  return 0;
}

uint64_t BRLTRN_Map2800(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    *(a1 + 34904) = a2;
    *(a1 + 34908) = a3;
  }

  return 0;
}

uint64_t BRLTRN_AddScrub(uint64_t a1, __int32 *a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 14;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  dxios_stream_create(v12, a1 + 34800);
  dxios_stream_activate_autobuf(v12, 3u, 4096, 4096);
  table_bytes = read_table_bytes(v12, a2, &unk_2C7C8, 0xFuLL);
  if (!table_bytes)
  {
    v10 = 0;
    v11 = 0;
    dxios_stream_capture_buf(v12, &v11, 0, &v10);
    table_bytes = BRLTRN_AddScrubTableBytes(a1, v11, v10, v8, a4);
  }

  dxios_stream_destroy(v12);
  return table_bytes;
}

size_t read_table_bytes(void *a1, __int32 *a2, const __int32 *a3, size_t a4)
{
  v6 = dx_wfopen(a2, a3);
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      a4 = fread(__ptr, 1uLL, 0x200uLL, v7);
      if (!a4)
      {
        break;
      }

      if (dxios_stream_write(__ptr, 1uLL, a4, a1) != a4)
      {
        return 23;
      }
    }

    fclose(v7);
  }

  return a4;
}

uint64_t BRLTRN_AddScrubTableBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1)
  {
    v9 = malloc_type_malloc(0x2E8uLL, 0x10A00401C7C9837uLL);
    if (v9)
    {
      v10 = v9;
      dxscb_engine_create(v9, a1 + 34800);
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      dxios_stream_create(v14, v10[1]);
      v11 = dxios_stream_activate_buf(v14, 1u, a2, a3);
      if (!v11)
      {
        v11 = dxscb_engine_activate(v10);
      }

      dxios_stream_destroy(v14);
      if (v11)
      {
        dxscb_engine_destroy(v10);
        free(v10);
      }

      else
      {
        if (a5 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = a5;
        }

        dxscb_engine_set_initial_state(v10, v12);
        v11 = 0;
        *(a1 + 34888) = v10;
      }
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 14;
  }

  return v11;
}

uint64_t BRLTRN_AddSecondaryTranslator(uint64_t a1, __int32 *a2, __int32 *a3)
{
  if (!a1)
  {
    return 14;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  dxios_stream_create(v14, a1 + 34800);
  dxios_stream_activate_autobuf(v14, 3u, 4096, 4096);
  table_bytes = read_table_bytes(v14, a2, dword_2C7BC, 1uLL);
  if (!table_bytes)
  {
    dxios_stream_capture_buf(v14, &v13, 0, &v12);
    dxios_stream_deactivate(v14, &v9);
    dxios_stream_activate_autobuf(v14, 3u, 4096, 4096);
    table_bytes = read_table_bytes(v14, a3, &unk_2C7C8, 3uLL);
    if (!table_bytes)
    {
      dxios_stream_capture_buf(v14, &v11, 0, &v10);
      table_bytes = BRLTRN_AddSecondaryTranslatorTableBytes(a1, v13, v12, v11, v10);
    }
  }

  v7 = table_bytes;
  dxios_stream_destroy(v14);
  return v7;
}

uint64_t BRLTRN_AddSecondaryTranslatorTableBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = malloc_type_malloc(0x8738uLL, 0x10F004069F50C7AuLL);
    if (v10)
    {
      v11 = v10;
      dxbte_engine_create(v10, a1 + 34800);
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      dxios_stream_create(v16, a1 + 34800);
      dxios_stream_create(v14, a1 + 34800);
      v12 = 1;
      if (a2 && !dxios_stream_activate_buf(v14, 1u, a2, a3))
      {
        if (a4 && !dxios_stream_activate_buf(v16, 0, a4, a5))
        {
          v12 = dxbte_engine_activate(v11, 2, 3, gsty, 0, 0, 0, 0, 0, v14, v16, 1);
          dxios_stream_destroy(v16);
          dxios_stream_destroy(v14);
          if (!v12)
          {
            v12 = 0;
            *(a1 + 34896) = v11;
            return v12;
          }
        }

        else
        {
          v12 = 3;
        }
      }

      dxbte_engine_destroy(v11);
      free(v11);
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 14;
  }

  return v12;
}

uint64_t BRLTRN_TranslateAutoString(uint64_t a1, __int128 *a2, __int32 *a3, _WORD *a4)
{
  result = 14;
  if (a1 && a3)
  {
    v8 = wcslen(a3);
    v9 = v8;
    if (a2)
    {
      v20 = *a2;
    }

    v10 = 0;
    v11 = 4 * v8;
    do
    {
      v12 = *(a1 + 34912);
      v13 = v12 + v10;
      if (v13 <= v11)
      {
        v13 = 4 * v9;
      }

      if (v13 <= *(a1 + 34920))
      {
        v13 = *(a1 + 34920);
      }

      if (v13 <= 0xC8)
      {
        v14 = 200;
      }

      else
      {
        v14 = v13;
      }

      if (v12 < v14)
      {
        v15 = malloc_type_realloc(*(a1 + 34928), 4 * v14, 0x100004052888210uLL);
        v16 = malloc_type_realloc(*(a1 + 34936), 2 * v14, 0x1000040BDFB0063uLL);
        if (!v15)
        {
          if (v16)
          {
            *(a1 + 34936) = v16;
          }

          return 23;
        }

        *(a1 + 34928) = v15;
        if (!v16)
        {
          return 23;
        }

        *(a1 + 34936) = v16;
        *(a1 + 34912) = v14;
      }

      if (a2)
      {
        *a2 = v20;
      }

      v17 = *(a1 + 34928);
      v18 = *(a1 + 34936);
      result = BRLTRN_TranslateStringEx(a1, a2, a3);
      v10 = v9;
    }

    while (v14 - 100 <= 0);
    if (!result)
    {
      *(a1 + 34920) = 0;
      result = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }
  }

  return result;
}

uint64_t BRLTRN_TranslateStringEx(void *a1, __int128 *a2, unsigned int *a3, unint64_t a4, uint64_t a5, int a6, _WORD *a7)
{
  v7 = 14;
  if (!a1)
  {
    return v7;
  }

  v8 = a3;
  if (!a3)
  {
    return v7;
  }

  v12 = a2;
  if (a4 || a5 || a6)
  {
    if (a4 && a6)
    {
      v68 = a6;
      v15 = a1 + 4096;
      v91 = 0;
      v92 = 0;
      memset(v115, 0, sizeof(v115));
      v116 = 0;
      memset(v90, 0, sizeof(v90));
      memset(v88, 0, sizeof(v88));
      v89 = 0;
      dxerr_report_create(v115);
      dxios_stream_create(v90, v115);
      dxios_stream_create(v88, v115);
      v87 = 0;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      dxbte_state_reset(&v75);
      v71 = a7;
      if (v12 || (v12 = a1[4360]) != 0)
      {
        v69 = 0;
        *(&v75 + 1) = *v12;
        *&v76 = *(v12 + 1);
      }

      else
      {
        v69 = 1;
      }

      v66 = a1;
      v67 = v12;
      v70 = a4;
      v16 = a1[4359];
      v17 = a1[4361];
      LOBYTE(v93) = 0;
      v18 = *v8;
      v74 = a5;
      if (v18)
      {
        v19 = 0;
        v20 = v8;
        do
        {
          if (v17)
          {
            v21 = v19;
          }

          else
          {
            v21 = v19 + 2;
          }

          if (v18 <= 0x7F && (_DefaultRuneLocale.__runetype[v18] & 0x200) != 0)
          {
            v22 = 1;
          }

          else
          {
            chudi(v18);
            v22 = 0;
              ;
            }
          }

          v19 = v22 + v21;
          v24 = v20[1];
          ++v20;
          v18 = v24;
        }

        while (v24);
        v16 = a1[4359];
        v17 = a1[4361];
        v25 = *v8;
      }

      else
      {
        v25 = 0;
      }

      __chkstk_darwin();
      v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v27, v26);
      v72 = v27;
      v73 = v15;
      v28 = *(v15 + 534);
      LOBYTE(v93) = 0;
      if (v25)
      {
        v29 = 0;
        v30 = 1;
        v27 = v72;
        do
        {
          if (v29)
          {
            ++v30;
          }

          else if (!v17)
          {
            *v27 = 23;
            v27[1] = v30 + 96;
            v27 += 2;
            v25 = *v8;
            v30 = 1;
          }

          if (v25 == 28)
          {
            v30 = 1;
            v29 = 1;
          }

          else if (v25 == 31)
          {
            v29 = 0;
          }

          else if (v25 > 0x7F)
          {
            goto LABEL_40;
          }

          if ((_DefaultRuneLocale.__runetype[v25] & 0x200) == 0)
          {
LABEL_40:
            if (v28 && (v25 & 0xFFFFFF00) == 0x2800)
            {
              v25 = asciiBrl[v25 & 0x3F];
            }

            if (chuds(v25, 0, &v93, v16))
            {
              v31 = 1;
              do
              {
                *v27++ = v93;
              }

              while (chuds(v25, v31++, &v93, v16));
            }

            *v27 = v93;
            goto LABEL_48;
          }

          *v27 = v25;
LABEL_48:
          v33 = v8[1];
          ++v8;
          v25 = v33;
          ++v27;
        }

        while (v33);
      }

      *v27 = 0;
      LODWORD(v34) = v68;
      v35 = 2 * v68;
      __chkstk_darwin();
      v37 = &v66 - v36;
      bzero(&v66 - v36, (2 * v34));
      v38 = strlen(v72);
      if (dxios_stream_activate_buf(v90, 1u, v72, v38))
      {
        v7 = 5;
        v39 = v70;
        v40 = v73;
      }

      else
      {
        v41 = dxios_stream_activate_buf(v88, 3u, v37, (v35 - 1));
        v40 = v73;
        if (v41)
        {
          v7 = 7;
        }

        else
        {
          v7 = 8 * (dxbte_engine_process((v66 + 23), v90, v88, &v75) != 0);
        }

        v39 = v70;
      }

      v92 = 0;
      if (v88[0])
      {
        dxios_stream_deactivate(v88, &v92);
        v42 = v92;
        v37[v92] = 0;
      }

      else
      {
        v42 = 0;
      }

      v43 = v40[266];
      if (v43)
      {
        v114 = 0;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v109 = 0u;
        memset(v107, 0, sizeof(v107));
        v108 = 0;
        v106 = 0;
        v105 = 0;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        dxios_stream_create(&v109, *(v43 + 29480));
        dxios_stream_create(v107, *(v43 + 29480));
        dxbte_state_reset(&v93);
        if (!dxios_stream_activate_buf(&v109, 1u, v37, v42) && !dxios_stream_activate_autobuf(v107, 3u, (v35 - 1), 0) && !dxbte_engine_process(v43, &v109, v107, &v93) && !dxios_stream_capture_buf(v107, &v108, 0, &v106))
        {
          v44 = v106;
          if (v106 > (v35 - 1))
          {
            v106 = (v35 - 1);
            v44 = v106;
          }

          memcpy(v37, v108, v44);
        }

        dxios_stream_destroy(&v109);
        dxios_stream_destroy(v107);
        v42 = v106;
        v92 = v106;
        v37[v106] = 0;
      }

      v34 = v34;
      v45 = v40[265];
      if (v45)
      {
        *&v98 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v114 = 0;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v109 = 0u;
        v107[0] = 0;
        v108 = 0;
        dxios_stream_create(&v93, *(v45 + 8));
        dxios_stream_create(&v109, *(v45 + 8));
        if (!dxios_stream_activate_buf(&v93, 1u, v37, v42) && !dxios_stream_activate_autobuf(&v109, 3u, (v35 - 1), 0) && !dxscb_engine_process(v45, &v109, &v93) && !dxios_stream_capture_buf(&v109, v107, 0, &v108))
        {
          v46 = v108;
          if (v108 > (v35 - 1))
          {
            v108 = (v35 - 1);
            v46 = v108;
          }

          memcpy(v37, v107[0], v46);
        }

        dxios_stream_destroy(&v93);
        dxios_stream_destroy(&v109);
        v92 = v108;
        v37[v108] = 0;
      }

      v47 = 0;
      v48 = 0;
      *&v93 = v39;
      v49 = *v37;
      if (!*v37)
      {
        v51 = v39;
        goto LABEL_140;
      }

      v50 = v39 + 4 * v34 - 4;
      v51 = v39;
      if (v50 > v39)
      {
        v70 = v34;
        v52 = 0;
        v53 = 0;
        v47 = 0;
        v48 = 0;
        LODWORD(v72) = 0;
        v51 = v39;
        while (1)
        {
          if (v49 == 28)
          {
            if (v37[1] == 120 && v37[2] == 126 && v37[3] == 126 && v37[4] && v37[5] && v37[6] && v37[7] == 31)
            {
              v54 = ((v37[4] << 6) + 8 * v37[5] + v37[6] + 80);
              goto LABEL_119;
            }
          }

          else if (v49 == 23 && v37[1])
          {
            if (!v52)
            {
              v53 = v48;
            }

            v48 = v48 + v37[1] - 96;
            v52 = 1;
            ++v37;
            goto LABEL_134;
          }

          v55 = strlen(v37);
          if (v55 < 5)
          {
            goto LABEL_110;
          }

          v56 = *v37 == 1768055580 && v37[4] == 31;
          if (v56 || (*v37 == 1769501724 ? (v57 = v37[4] == 31) : (v57 = 0), v57))
          {
            v52 = 0;
            v37 += 4;
            goto LABEL_134;
          }

          if (v55 != 5 && (*v37 == 1852535580 ? (v58 = v37[4] == 48) : (v58 = 0), v58))
          {
            v52 = 0;
            v37 += 5;
          }

          else
          {
LABEL_110:
            if ((v49 & 0x80) == 0 && (v49 - 29) >= 2 && (_DefaultRuneLocale.__runetype[v49] & 0x200) != 0)
            {
              *v51 = v49;
              goto LABEL_131;
            }

            LODWORD(v109) = 0;
            v59 = *v37;
            if (!*v37)
            {
              goto LABEL_121;
            }

            v60 = 0;
            do
            {
              if (!chdsdi(v59, v60, &v109))
              {
                break;
              }

              ++v60;
              v61 = *++v37;
              v59 = v61;
            }

            while (v61);
            LOWORD(v59) = v109;
            if (v109 != 29)
            {
              if (v109 == 60481)
              {
                v54 = 45;
                goto LABEL_119;
              }

LABEL_121:
              v62 = chdiu(v59);
              *v51 = v62;
              if (*(v73 + 535))
              {
                if (v62 == 28)
                {
                  LODWORD(v72) = 1;
                }

                else if (v62 == 31)
                {
                  LODWORD(v72) = 0;
                }

                else if (v62 >= 32 && v62 <= 0x7E && !v72)
                {
                  LODWORD(v72) = 0;
                  v54 = unicodeBraille[v62];
LABEL_119:
                  *v51 = v54;
                }
              }

LABEL_131:
              compound_korean_glyphs(&v93, v39);
              if (v74)
              {
                *(v74 + 2 * v47++) = v53;
              }

              v52 = 0;
              v51 = (v93 + 4);
              *&v93 = v93 + 4;
              goto LABEL_134;
            }

            v52 = 0;
          }

LABEL_134:
          v63 = *++v37;
          v49 = v63;
          if (!v63 || v51 >= v50)
          {
            v34 = v70;
            break;
          }
        }
      }

LABEL_140:
      if (v74 && v47 < v34)
      {
        *(v74 + 2 * v47) = v48;
      }

      *v51 = 0;
      *&v93 = v51 + 1;
      compound_korean_glyphs(&v93, v39);
      if (v90[0])
      {
        dxios_stream_deactivate(v90, 0);
      }

      v64 = v71;
      if ((v69 & 1) == 0)
      {
        v65 = v67;
        *v67 = *(&v75 + 1);
        *(v65 + 1) = v76;
      }

      if (v64)
      {
        *v64 = (v93 - v39) >> 2;
      }

      dxios_stream_destroy(v88);
      dxios_stream_destroy(v90);
    }

    return v7;
  }

  return BRLTRN_TranslateAutoString(a1, a2, a3, a7);
}

uint64_t BRLTRN_CopyDynamicResults(uint64_t a1, void *__dst, void *a3, unsigned int a4)
{
  if (!a1)
  {
    return 14;
  }

  v4 = a1 + 0x8000;
  if (*(a1 + 34920) + 1 != a4)
  {
    return 14;
  }

  if (!*(a1 + 34928) || !*(a1 + 34936))
  {
    return 16;
  }

  v6 = a4;
  if (__dst)
  {
    memcpy(__dst, *(a1 + 34928), 4 * a4);
  }

  if (a3)
  {
    memcpy(a3, *(v4 + 2168), 2 * v6);
  }

  return 0;
}

uint64_t *compound_korean_glyphs(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result >= (a2 + 12))
  {
    v3 = *(v2 - 12);
    if ((v3 - 4371) >= 0xFFFFFFED)
    {
      v4 = *(v2 - 8);
      if ((v4 - 4470) >= 0xFFFFFFEB)
      {
        v5 = *(v2 - 4);
        v6 = v4 - 4449;
        v7 = 588 * v3;
        if ((v5 - 4547) >= 0xFFFFFFE5)
        {
          *(v2 - 12) = v7 + 28 * v6 + v5 - 2519463;
          v2 -= 8;
        }

        else
        {
          *(v2 - 12) = v7 + 28 * v6 - 2514944;
          *(v2 - 8) = v5;
          v2 -= 4;
        }
      }
    }
  }

  *result = v2;
  return result;
}

uint64_t BRLTRN_InputPosFromOutputPos(void *a1, unsigned int *a2, unsigned int a3, _WORD *a4)
{
  result = 14;
  if (a1 && a2 && a4)
  {
    v8 = a1 + 4096;
    v9 = a1[4360];
    a1[4360] = 0;
    result = BRLTRN_TranslateStringEx(a1, 0, a2, 0, 0, 0, 0);
    v8[264] = v9;
    v10 = v8[271];
    if (v10 && v8[269] >= a3)
    {
      if (!result)
      {
        *a4 = *(v10 + 2 * a3);
      }
    }

    else
    {
      return 8;
    }
  }

  return result;
}

uint64_t BRLTRN_OutputPosFromArray(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 2 * v3);
      if (v6 <= a3 && v6 > v5)
      {
        v4 = v3;
      }

      if (v6 >= a3)
      {
        break;
      }

      if (v6 <= a3 && v6 > v5)
      {
        v5 = *(a1 + 2 * v3);
      }

      ++v3;
    }

    while (a2 != v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t initialize_engine_helper(uint64_t a1, uint64_t a2)
{
  *(a1 + 34928) = 0u;
  *(a1 + 34912) = 0u;
  if (dxios_stream_activate_buf(a2, 1u, 0, 0))
  {
    return 5;
  }

  v3 = 2;
  if (!dxbte_engine_activate((a1 + 184), 2, 3, gsty, 0, 0, 0, 0, 0, a1 + 8, a1 + 96, 1))
  {
    v3 = 0;
    *(a1 + 34904) = 0;
  }

  return v3;
}

void gsty(uint64_t a1@<X1>, void *a2@<X3>, _OWORD *a3@<X8>)
{
  *a3 = 0u;
  a3[1] = 0u;
  if (a2)
  {
    *a2 = a1;
  }
}

BOOL chall(unsigned int a1)
{
  if (a1 > 0xFF)
  {
    return *(*(chilu + 8 * BYTE1(a1)) + 4 * a1) != 0;
  }

  else
  {
    return (dusci[12 * a1] >> 2) & 1;
  }
}

BOOL chalu(unsigned int a1)
{
  if (a1 <= 0xFF)
  {
    return (dusci[12 * a1] >> 3) & 1;
  }

  if (a1 >> 8 == 156)
  {
    return (dusci[12 * a1] >> 1) & 1;
  }

  return *(*(chiul + 8 * BYTE1(a1)) + 4 * a1) > 0x60u;
}

uint64_t dxchi_map_set_single(uint64_t a1, unsigned int a2, int a3)
{
  result = 0;
  if (a2 && a3)
  {
    v6 = a2;
    if (HIWORD(a2))
    {
      return 0xFFFFFFFFLL;
    }

    v7 = a2 >> 8;
    v8 = *(a1 + 8 * (a2 >> 8));
    if (v8 == chicp)
    {
      v8 = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
      *(a1 + 8 * v7) = v8;
      if (!v8)
      {
        *(a1 + 8 * v7) = chicp;
        return 0xFFFFFFFFLL;
      }
    }

    result = 0;
    if (!v8[v6])
    {
      v8[v6] = a3;
    }
  }

  return result;
}

uint64_t dxchi_map_set_multiple(uint64_t a1, unsigned int a2, char *__s, int a4, int a5)
{
  result = 0;
  if (a2 && __s)
  {
    v10 = a2;
    v11 = a2 >> 8;
    v12 = *(a1 + 8 * (a2 >> 8));
    if (v12 == chicp && (v12 = malloc_type_calloc(0x100uLL, 8uLL, 0x10040436913F5uLL), (*(a1 + 8 * v11) = v12) == 0))
    {
      *(a1 + 8 * v11) = chicp;
    }

    else
    {
      if (v12[v10])
      {
        return 0;
      }

      v13 = __s;
      if (a5)
      {
        v14 = strlen(__s);
        v13 = malloc_type_malloc(v14 - (v14 | 0xFFFFFFFFFFFFFFFCLL), 0x100004077774924uLL);
        if (v13)
        {
          v13 = strcpy(v13, __s);
        }
      }

      *(*(a1 + 8 * v11) + 8 * v10) = v13;
      if (*(*(a1 + 8 * v11) + 8 * v10))
      {
        if (!a4)
        {
          return 0;
        }

        if (chiisc(__s))
        {
          result = 0;
          v15 = *(*(a1 + 8 * v11) + 8 * v10);
          *v15 += a4;
          return result;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t dxchi_map_init(int a1, uint64_t a2, void *a3)
{
  if ((a1 & 0xFFFFFFFE) == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 256;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = chicp;
  v5 = malloc_type_malloc((8 * v3), 0x80040B8603338uLL);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = chicp;
  v7 = (v3 + 1) & 0x102;
  v8 = vdupq_n_s64(v3 - 1);
  v9 = xmmword_2B900;
  v10 = (v5 + 8);
  v11 = vdupq_n_s64(2uLL);
  do
  {
    v12 = vmovn_s64(vcgeq_u64(v8, v9));
    if (v12.i8[0])
    {
      *(v10 - 1) = v6;
    }

    if (v12.i8[4])
    {
      *v10 = v6;
    }

    v9 = vaddq_s64(v9, v11);
    v10 += 2;
    v7 -= 2;
  }

  while (v7);
  v13 = 0;
  *a3 = v5;
  return v13;
}

void *BRLTRN_UnicodeStringInit_Apple(void *result, char *__s)
{
  *result = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s);
    result = malloc_type_malloc(4 * v4 + 4, 0x100004052888210uLL);
    *v3 = result;
    LOBYTE(v5) = *__s;
    if (*__s)
    {
      v6 = 0;
      do
      {
        *(result + v6) = v5;
        v7 = v6 + 1;
        v5 = __s[++v6];
      }

      while (v5);
    }

    else
    {
      v7 = 0;
    }

    *(result + v7) = 0;
  }

  return result;
}

void *BRLTRN_UnicodeStringInitSize_Apple(void *result, uint64_t a2)
{
  *result = 0;
  if (a2)
  {
    v2 = result;
    result = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    *v2 = result;
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

void BRLTRN_UnicodeStringFree_Apple(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
}

_WORD *BRLTRN_OutputPosForInputPosFromArray(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = malloc_type_malloc(2 * a3 + 2, 0x1000040BDFB0063uLL);
  v7 = v6;
  v8 = a2 - 1;
  if (a2 < 2)
  {
LABEL_5:
    if (a2)
    {
      LODWORD(v10) = 0;
      v11 = 0;
      do
      {
        v12 = v11;
        if (v11 >= v8)
        {
          break;
        }

        v13 = v11;
        while (1)
        {
          v14 = v13;
          v15 = (a1 + 2 * v13);
          v16 = *v15;
          v17 = v15[1];
          if (v16 != v17)
          {
            break;
          }

          v13 = v14 + 1;
          if ((v14 + 1) >= v8)
          {
            goto LABEL_17;
          }
        }

        if (v17 > a3)
        {
          break;
        }

        if (v17 > v10)
        {
          v10 = v10;
          do
          {
            v6[v10++] = v12;
          }

          while (v10 < *(a1 + 2 + 2 * v14));
        }

        v11 = v14 + 1;
      }

      while (a2 > v11);
LABEL_17:
      if (a3 < v10)
      {
        return v7;
      }
    }

    else
    {
      v12 = 0;
      LODWORD(v10) = 0;
    }

    do
    {
      v6[v10] = v12;
      LODWORD(v10) = v10 + 1;
    }

    while (a3 >= v10);
    return v7;
  }

  v9 = 0;
  while (*(a1 + 2 * v9) <= *(a1 + 2 * v9 + 2))
  {
    if (++v9 >= (a2 - 1))
    {
      goto LABEL_5;
    }
  }

  v18 = 0;
  do
  {
    v7[v18] = BRLTRN_OutputPosFromArray(a1, a2, v18);
    ++v18;
  }

  while (a3 >= v18);
  return v7;
}

uint64_t BRLTRN_TranslateStringAndGetLocationMap(void *a1, __int32 *a2, unint64_t a3, unsigned int a4, void *a5)
{
  v22 = 0;
  v5 = 14;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v5;
  }

  if (a5)
  {
    v11 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
    if (!v11)
    {
      return 23;
    }
  }

  else
  {
    v11 = 0;
  }

  if (!*a1)
  {
    v12 = wcslen(a2);
    v5 = BRLTRN_TranslateStringEx(a1, 0, a2, a3, v11, a4, &v22);
    goto LABEL_21;
  }

  v21 = 0;
  v12 = strlen(a2);
  BRLTRN_UnicodeStringInit_Apple(&v21, a2);
  v13 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  v14 = v13;
  if (!v13)
  {
    v5 = 23;
    v15 = v21;
    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *v13 = 0;
  v15 = v21;
  if (!v21)
  {
    v5 = 23;
    goto LABEL_20;
  }

  v16 = BRLTRN_TranslateStringEx(a1, 0, v21, v13, v11, a4, &v22);
  if (v16)
  {
    v5 = v16;
LABEL_16:
    free(v15);
    goto LABEL_17;
  }

  v18 = *v14;
  if (*v14)
  {
    v19 = 0;
    do
    {
      *(a3 + v19) = v18;
      v20 = v19 + 1;
      v18 = v14[++v19];
    }

    while (v18);
  }

  else
  {
    v20 = 0;
  }

  v5 = 0;
  *(a3 + v20) = 0;
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_17:
  v21 = 0;
  if (v14)
  {
LABEL_20:
    free(v14);
  }

LABEL_21:
  if (v11)
  {
    if (a5)
    {
      *a5 = BRLTRN_OutputPosForInputPosFromArray(v11, v22, v12);
    }

    free(v11);
  }

  return v5;
}

BOOL chdids(unsigned int a1, int a2, unsigned int *a3)
{
  v3 = a1;
  if (!a2)
  {
    v3 = a1 >> 8;
  }

  if (a1 >= 0x100)
  {
    result = a2 == 0;
  }

  else
  {
    v3 = a1;
    result = 0;
  }

  *a3 = v3;
  return result;
}

BOOL chdimrm(unsigned int a1, int a2, char *a3)
{
  v5 = *(*(chdimr + 8 * (a1 >> 8)) + 8 * a1);
  if (!v5)
  {
    v5 = v8;
    __sprintf_chk(v8, 0, 0x21uLL, "{D+%04x}", a1);
  }

  v6 = &v5[a2];
  *a3 = *v6;
  return v6[1] != 0;
}

uint64_t chdimrs(uint64_t result, _BYTE *a2)
{
  LODWORD(v2) = *(*(chdimrs_t + 8 * (result >> 8)) + 4 * result);
  if (!v2)
  {
    v2 = *(*(chdimr + 8 * (result >> 8)) + 8 * result);
    if (v2)
    {
      if (v2[1])
      {
        LOBYTE(v2) = 35;
      }

      else
      {
        LOBYTE(v2) = *v2;
      }
    }

    else
    {
      LOBYTE(v2) = 42;
    }
  }

  *a2 = v2;
  return result;
}

uint64_t chdiu(__int16 a1)
{
  if (*(*(chdiu_t + 8 * HIBYTE(a1)) + 4 * a1))
  {
    return *(*(chdiu_t + 8 * HIBYTE(a1)) + 4 * a1);
  }

  else
  {
    return 42;
  }
}

uint64_t dxscb_engine_deactivate(uint64_t a1)
{
  if (*a1)
  {
    if (*(a1 + 16))
    {
      for (i = 0; i != 258; ++i)
      {
        v3 = *(*(a1 + 16) + 8 * i);
        if (v3)
        {
          do
          {
            v4 = *v3;
            free(v3);
            v3 = v4;
          }

          while (v4);
        }
      }

      free(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    v5 = 0;
    *a1 = 0;
  }

  else
  {
    v5 = 300;
    dxerr_report_activate(*(a1 + 8), "scrub", 300);
  }

  return v5;
}

uint64_t dxscb_engine_destroy(uint64_t a1)
{
  if (*a1)
  {
    return dxscb_engine_deactivate(a1);
  }

  return a1;
}

_BYTE *dxscb_engine_activate_tablename(uint64_t a1, char *a2)
{
  v3 = dxios_search_open(a2, 0, 0, 0, 512);
  if (v3)
  {
    v4 = v3;
    v5 = dxscb_engine_activate(a1);
    dxios_close(v4);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = (&stru_68 + 36);
  }

  dxerr_report_activate(*(a1 + 8), "scrub", v5);
  return v5;
}

_BYTE *dxscb_engine_activate(uint64_t a1)
{
  if (*a1)
  {
    v2 = (&stru_108 + 46);
  }

  else
  {
    v4 = malloc_type_calloc(0x102uLL, 8uLL, 0x2004093837F09uLL);
    if (v4)
    {
      *a1 = 1;
      *(a1 + 16) = v4;
      *(a1 + 128) = dxios_stream_getc;
      *(a1 + 136) = dxios_stream_putc;
      v2 = readtable();
      if (!v2)
      {
        *(a1 + 32) = 1;
        return v2;
      }
    }

    else
    {
      v2 = (&stru_108 + 6);
    }
  }

  dxerr_report_activate(*(a1 + 8), "scrub", v2);
  dxscb_engine_deactivate(a1);
  return v2;
}

_BYTE *dxscb_engine_activate_additional_tablename(uint64_t a1, char *a2)
{
  v3 = dxios_search_open(a2, 0, 0, 0, 512);
  if (v3)
  {
    v4 = v3;
    v5 = dxscb_engine_activate_additional(a1);
    dxios_close(v4);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = (&stru_68 + 36);
  }

  dxerr_report_activate(*(a1 + 8), "scrub", v5);
  return v5;
}

_BYTE *dxscb_engine_activate_additional(uint64_t a1)
{
  if (*a1)
  {
    v2 = readtable();
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = (&stru_108 + 36);
  }

  dxerr_report_activate(*(a1 + 8), "scrub", v2);
  return v2;
}

_BYTE *readtable()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v67 = v3;
  v5 = v4;
  v6 = v0;
  v7 = *(v0 + 16);
  readline_fno = 1;
  readline_fch = 32;
  readline_fsg = 1;
  readline_fvl = 0;
  result = dxios_fgl(__s, 8209, v4);
  if (!result)
  {
    return result;
  }

  v60 = v7;
  v61 = v6;
  if (*__s == 48111 && v69 == 191)
  {
    strlen(v70);
    __memmove_chk();
  }

  v66 = v5;
  do
  {
    v10 = __s[0];
    v11 = &dusci[1840];
    v12 = &dusci[1840];
    v13 = &dusci[1840];
    v14 = &dusci[1840];
    if (!__s[0] || __s[0] == 32 && !__s[1])
    {
LABEL_72:
      *(v11 + 334) = 1;
      v12[1340] = 32;
      *(v13 + 336) = 1;
      goto LABEL_73;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = readline_fno;
    v19 = readline_fch;
    v20 = 32;
    v21 = 0xFFFFFFFFLL;
    v22 = readline_fsg;
    v23 = 0xFFFFFFFFLL;
    v24 = v67;
    v25 = readline_fvl;
    v26 = v2;
    while (1)
    {
      v27 = v17 + 1;
      if (v10 == 124)
      {
        break;
      }

      if (v10 == 126)
      {
        result = (&stru_B8 + 36);
        if (v18 <= 2)
        {
          if (v18 == 1)
          {
            v21 = v16;
          }

          else
          {
            if (v18 != 2)
            {
              return result;
            }

            v23 = (v16 - v21);
          }
        }

        else
        {
          switch(v18)
          {
            case 3:
              v24 = (v22 * v25);
              break;
            case 4:
              v26 = (v22 * v25);
              break;
            case 5:
              v20 = v19;
              break;
            default:
              return result;
          }
        }

        v25 = 0;
        *(v11 + 334) = ++v18;
        v19 = 32;
        v12[1340] = 32;
        v22 = 1;
        *(v13 + 336) = 1;
        *(v14 + 337) = 0;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_62;
        }

        if (v18 <= 2)
        {
          __s[v16] = v10;
LABEL_37:
          v16 = (v16 + 1);
          goto LABEL_47;
        }

        if (v18 > 4)
        {
          if (v10 != 32)
          {
            v12[1340] = v10;
            v19 = v10;
          }
        }

        else if (v10 != 32)
        {
          if (v10 == 45)
          {
            v22 = -v22;
            *(v13 + 336) = v22;
          }

          else
          {
            v36 = v10 - 48;
            if (v36 > 9u)
            {
              return (&stru_B8 + 56);
            }

            if (v25 > 214748362)
            {
              return (&stru_B8 + 46);
            }

            v25 = 10 * v25 + v36;
            *(v14 + 337) = v25;
          }
        }
      }

LABEL_47:
      v10 = __s[v27];
      v17 = v27;
    }

    v28 = __s[v27];
    if (!__s[v27])
    {
      goto LABEL_62;
    }

    LODWORD(v27) = v17 + 2;
    if ((v28 - 48) <= 9)
    {
      v29 = 0;
      readline_fld[0] = v28;
      do
      {
        v30 = __s[v27 + v29];
        readline_fld[v29 + 1] = v30;
        if ((v30 - 48) > 9)
        {
          return (&stru_B8 + 16);
        }

        ++v29;
      }

      while (v29 != 2);
      v63 = v25;
      v64 = v20;
      v31 = v26;
      v32 = v24;
      v33 = v23;
      v65 = v2;
      v34 = v21;
      v62 = v17 + 4;
      byte_3C537 = 0;
      v35 = atoi(readline_fld);
      if ((v35 & 0xFFFFFFFE) == 0x100)
      {
        v11 = dusci + 1840;
        v12 = dusci + 1840;
        v13 = dusci + 1840;
        v14 = dusci + 1840;
        if (v16)
        {
          return (&stru_B8 + 76);
        }

        v21 = v34;
        v23 = v33;
        v24 = v32;
        v26 = v31;
        __s[0] = v35;
        v15 = 1;
        v16 = 1;
        LODWORD(v27) = v62;
        v2 = v65;
        v5 = v66;
      }

      else
      {
        v11 = dusci + 1840;
        v12 = dusci + 1840;
        v13 = dusci + 1840;
        v14 = dusci + 1840;
        v21 = v34;
        v23 = v33;
        v24 = v32;
        v26 = v31;
        if (v35 == 258)
        {
          __s[v16] = 10;
          if (v18 != 1)
          {
            v25 = v63;
            v20 = v64;
            if (v18 == 2)
            {
              *(v61 + 136) = dxios_stream_pcmt;
            }

            v16 = (v16 + 1);
            LODWORD(v27) = v62;
            v2 = v65;
            v5 = v66;
            goto LABEL_47;
          }

          *(v61 + 128) = dxios_stream_gcmt;
          v16 = (v16 + 1);
        }

        else
        {
          if (v35 > 257)
          {
            return (&stru_B8 + 26);
          }

          __s[v16] = v35;
          v16 = (v16 + 1);
        }

        LODWORD(v27) = v62;
        v2 = v65;
        v5 = v66;
      }

      v25 = v63;
      v20 = v64;
      goto LABEL_47;
    }

    if (v28 != 32)
    {
      __s[v16] = v28;
      goto LABEL_37;
    }

    if (!v16)
    {
      goto LABEL_72;
    }

LABEL_62:
    result = (&stru_B8 + 66);
    if (v25 || v19 != 32)
    {
      return result;
    }

    if (v21 <= 0)
    {
      if (v23 >= 1)
      {
        __s[v23] = 0;
        v50 = v24;
        v51 = v26;
        v52 = dxscb_engine_deferred_table_add(v61, __s, v24, v26);
        v14 = dusci + 1840;
        v49 = dusci + 1840;
        v48 = dusci + 1840;
        if (!v52)
        {
          goto LABEL_98;
        }

        v53 = dxscb_engine_activate_additional_tablename(v61, __s, v50, v51);
        v14 = dusci + 1840;
        v49 = dusci + 1840;
        v48 = dusci + 1840;
        if (!v53)
        {
          goto LABEL_98;
        }
      }

      return (&stru_20 + 68);
    }

    if (v21 > 0x1000)
    {
      return (&stru_68 + 6);
    }

    if ((v23 & 0x80000000) != 0)
    {
      return (&stru_68 + 16);
    }

    if (v23 > 0x1000)
    {
      return (&stru_68 + 26);
    }

    v37 = v20;
    v38 = v15;
    v39 = v26;
    v40 = v24;
    v41 = v21;
    v42 = v23;
    v43 = malloc_type_malloc((v21 + v23 + 47), 0x1030040EF4CE6C6uLL);
    if (!v43)
    {
      return (&stru_108 + 6);
    }

    v44 = v43;
    *v43 = 0;
    v43[2] = v41;
    v43[3] = v42;
    v43[4] = v40;
    v43[5] = v39;
    *(v43 + 24) = v38;
    *(v43 + 25) = v37;
    *(v43 + 26) = 0;
    *(v43 + 15) = 0;
    v45 = (v43 + 12);
    v46 = &v45[v41 - 1];
    *(v44 + 4) = v45;
    *(v44 + 5) = v46;
    memcpy(v45, &__s[1], (v41 - 1));
    memcpy(v46, &__s[v41], v42);
    v47 = __s[0];
    if (__s[0] == 1)
    {
      v47 = 257;
      if (!*(v44 + 24))
      {
        v47 = 1;
      }

      v48 = &dusci[1840];
      v49 = &dusci[1840];
      v14 = dusci + 1840;
      v5 = v66;
    }

    else
    {
      v48 = dusci + 1840;
      v49 = dusci + 1840;
      v14 = dusci + 1840;
      v5 = v66;
      if (!__s[0])
      {
        v47 = (*(v44 + 24) != 0) << 8;
      }
    }

    v54 = (v60 + 8 * v47);
    v55 = *v54;
    if (!*v54)
    {
      v56 = 0;
      goto LABEL_97;
    }

    v56 = 0;
    while (2)
    {
      v57 = v56;
      v56 = v55;
      v58 = *(v55 + 4);
      if (v58)
      {
        v59 = v44[4];
        if ((v58 & 0x80000000) == 0 || v59)
        {
          goto LABEL_89;
        }

        goto LABEL_92;
      }

      v59 = v44[4];
      if (v59 < 0)
      {
        break;
      }

LABEL_89:
      if (v58 > v59 || v58 == v59 && *(v56 + 2) > v44[2])
      {
LABEL_92:
        v55 = *v56;
        if (!*v56)
        {
          v57 = v56;
          v56 = 0;
          goto LABEL_96;
        }

        continue;
      }

      break;
    }

    if (!v57)
    {
      goto LABEL_97;
    }

LABEL_96:
    v54 = v57;
LABEL_97:
    *v54 = v44;
    *v44 = v56;
LABEL_98:
    *(v48 + 334) = 1;
    readline_fch = 32;
    *(v49 + 336) = 1;
LABEL_73:
    *(v14 + 337) = 0;
    result = dxios_fgl(__s, 8209, v5);
  }

  while (result);
  return result;
}

void dxscb_engine_create(_DWORD *a1, uint64_t a2)
{
  bzero(a1, 0x2E8uLL);
  *a1 = 0;
  *(a1 + 1) = a2;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  a1[10] = 0;
}

uint64_t dxscb_engine_set_initial_state(_DWORD *a1, int a2)
{
  if (!*a1)
  {
    return 300;
  }

  result = 0;
  a1[8] = a2;
  return result;
}

uint64_t dxscb_engine_deferred_table_add(uint64_t a1, char *__s, int a3, int a4)
{
  if ((a3 - 11) < 0xFFFFFFF6)
  {
    return 1;
  }

  v6 = a1 + 60 * (a3 - 1);
  v8 = *(v6 + 144);
  v7 = v6 + 144;
  if (v8 || strlen(__s) > 0x31)
  {
    return 1;
  }

  __strcpy_chk();
  result = 0;
  *(v7 + 52) = a3;
  *(v7 + 56) = a4;
  return result;
}

_BYTE *dxscb_engine_deferred_table_load(uint64_t a1, int a2)
{
  if ((a2 - 11) < 0xFFFFFFF6)
  {
    return (&dword_0 + 1);
  }

  v2 = a1 + 60 * (a2 - 1);
  v4 = *(v2 + 144);
  v3 = v2 + 144;
  if (!v4)
  {
    return (&dword_0 + 1);
  }

  v5 = *(v3 + 52);
  v6 = *(v3 + 56);
  result = dxscb_engine_activate_additional_tablename(a1, v3);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 44) = 0u;
  return result;
}

BOOL chdiwam(unsigned int a1, int a2, char *a3)
{
  v5 = *(*(chdiwa + 8 * (a1 >> 8)) + 8 * a1);
  if (!v5)
  {
    v5 = v8;
    __sprintf_chk(v8, 0, 0xAuLL, "{D+%04x}", a1);
  }

  v6 = &v5[a2];
  *a3 = *v6;
  return v6[1] != 0;
}

uint64_t chdiwas(uint64_t result, _BYTE *a2)
{
  LODWORD(v2) = *(*(chdiwas_t + 8 * (result >> 8)) + 4 * result);
  if (!v2)
  {
    v2 = *(*(chdiwa + 8 * (result >> 8)) + 8 * result);
    if (v2)
    {
      if (v2[1])
      {
        LOBYTE(v2) = 35;
      }

      else
      {
        LOBYTE(v2) = *v2;
      }
    }

    else
    {
      LOBYTE(v2) = 42;
    }
  }

  *a2 = v2;
  return result;
}

uint64_t chdsdi(int a1, int a2, int *a3)
{
  if (a1 == -1)
  {
    v3 = 0;
    a1 = 65407;
  }

  else if ((dusci[12 * a1] & 0x20) != 0)
  {
    a1 = a1 << 8;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (a2)
    {
      a1 |= *a3;
    }
  }

  *a3 = a1;
  return v3;
}

uint64_t chibdi(int a1, int a2, int *a3)
{
  if (a1 == -1)
  {
    v4 = 0;
    a1 = 65407;
  }

  else
  {
    v3 = &dusci[12 * a1];
    if ((*v3 & 0x20) != 0)
    {
      a1 = a1 << 8;
      v4 = 1;
    }

    else if (a2)
    {
      if (*a3 == 39936)
      {
        v4 = 0;
        v5 = *(v3 + 2);
        if (v5 == 156)
        {
          a1 |= 0x9C00u;
        }

        else
        {
          a1 = v5;
        }
      }

      else
      {
        v4 = 0;
        a1 |= *a3;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a3 = a1;
  return v4;
}

void *chiini_strdup(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_malloc(v2 + 1, 0x9666600DuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(a1) + 1;

  return memcpy(v3, a1, v4);
}

_BYTE *is_text(_BYTE *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result + 1;
      while ((v1 - 127) > 0xFFFFFFA0)
      {
        v3 = *v2++;
        v1 = v3;
        if (!v3)
        {
          return (&dword_0 + 1);
        }
      }

      return 0;
    }

    else
    {
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t chiini(char *a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = "chitab.txt";
  }

  v2 = dxios_search_open(a1, 0, 0, 0, 512);
  v3 = v2;
  if (v1 && !v2)
  {
    v3 = dxios_search_open(v1, 0, 0, 0, 256);
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = chiini_stream(v3);
  dxios_close(v3);
  return v4;
}

uint64_t chiini_stream(uint64_t a1)
{
  if (chicp)
  {
    return 0;
  }

  chicp = malloc_type_calloc(8uLL, 0x100uLL, 0x4CDA2E8DuLL);
  dxchi_map_init(0, 0, &chilu);
  dxchi_map_init(0, 0, &chiul);
  dxchi_map_init(0, 4, &chdiwa);
  dxchi_map_init(0, 2, &chdiwas_t);
  dxchi_map_init(0, 5, &chdimr);
  dxchi_map_init(0, 3, &chdimrs_t);
  dxchi_map_init(0, 6, &chdiu_t);
  dxchi_map_init(6, 0, &chudi_t);
  if (chudi_t == chicp)
  {
    return 0xFFFFFFFFLL;
  }

  v61 = 0;
  memset(v60, 0, sizeof(v60));
  memset(v42, 0, sizeof(v42));
  v41 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59[0] = 0;
  xmmword_3CCC0 = 0u;
  unk_3CCD0 = 0u;
  xmmword_3CCA0 = 0u;
  unk_3CCB0 = 0u;
  xmmword_3CC80 = 0u;
  unk_3CC90 = 0u;
  xmmword_3CC60 = 0u;
  unk_3CC70 = 0u;
  xmmword_3CC40 = 0u;
  unk_3CC50 = 0u;
  xmmword_3CC20 = 0u;
  unk_3CC30 = 0u;
  xmmword_3CC00 = 0u;
  unk_3CC10 = 0u;
  xmmword_3CBE0 = 0u;
  unk_3CBF0 = 0u;
  xmmword_3CBC0 = 0u;
  unk_3CBD0 = 0u;
  xmmword_3CBA0 = 0u;
  unk_3CBB0 = 0u;
  xmmword_3CB80 = 0u;
  unk_3CB90 = 0u;
  xmmword_3CB60 = 0u;
  unk_3CB70 = 0u;
  xmmword_3CB40 = 0u;
  unk_3CB50 = 0u;
  xmmword_3CB20 = 0u;
  unk_3CB30 = 0u;
  xmmword_3CB00 = 0u;
  unk_3CB10 = 0u;
  wadi = 0u;
  *algn_3CAF0 = 0u;
  xmmword_3CEC0 = 0u;
  unk_3CED0 = 0u;
  xmmword_3CEA0 = 0u;
  unk_3CEB0 = 0u;
  xmmword_3CE80 = 0u;
  unk_3CE90 = 0u;
  xmmword_3CE60 = 0u;
  unk_3CE70 = 0u;
  xmmword_3CE40 = 0u;
  unk_3CE50 = 0u;
  xmmword_3CE20 = 0u;
  unk_3CE30 = 0u;
  xmmword_3CE00 = 0u;
  unk_3CE10 = 0u;
  xmmword_3CDE0 = 0u;
  unk_3CDF0 = 0u;
  xmmword_3CDC0 = 0u;
  unk_3CDD0 = 0u;
  xmmword_3CDA0 = 0u;
  unk_3CDB0 = 0u;
  xmmword_3CD80 = 0u;
  unk_3CD90 = 0u;
  xmmword_3CD60 = 0u;
  unk_3CD70 = 0u;
  xmmword_3CD40 = 0u;
  unk_3CD50 = 0u;
  xmmword_3CD20 = 0u;
  unk_3CD30 = 0u;
  xmmword_3CD00 = 0u;
  unk_3CD10 = 0u;
  mrdi = 0u;
  *algn_3CCF0 = 0u;
  dxerr_report_create(v60);
  dxtbl_lintbl_create(v42, v60);
  if (!a1 || dxtbl_lintbl_activate(v42, a1, "-chitab 2"))
  {
LABEL_6:
    v1 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if (!dxios_stream_eof(a1))
  {
    v40 = a1;
    while (1)
    {
      dxtbl_lintbl_read(v42, &v62, 0xC8uLL);
      v12 = v62;
      if (v62 != 124 && v62 != 0)
      {
        v14 = 0;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59[0] = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v15 = &v62;
        v16 = v63;
        v64 = 0u;
        while (1)
        {
          v17 = v16 - 1;
          if (v12 == 124)
          {
            break;
          }

          if (v12 == 126)
          {
            if (v14 == 10)
            {
              goto LABEL_6;
            }

            if (v17 > v15)
            {
              *(&v64 + v14) = v15;
            }

            *v17 = 0;
            ++v14;
            v15 = v16;
          }

          else if (!v12)
          {
            goto LABEL_55;
          }

LABEL_54:
          v18 = *v16++;
          v12 = v18;
        }

        if ((*v16 - 48) <= 9 && (v16[1] - 48) <= 9 && (v16[2] - 48) <= 9)
        {
          goto LABEL_54;
        }

LABEL_55:
        if (v17 > v15 && v14 <= 9)
        {
          *(&v64 + v14) = v15;
        }

        if (get_next_val(v64, &v43, 0x50u, 0) || get_next_val(*(&v64 + 1), &v48, 4u, 0) || get_next_val(v65, &v48 + 4, 0x50u, 0) || get_next_val(*(&v65 + 1), &v53 + 4, 4u, 1u) || get_next_val(v66, &v53 + 8, 0x50u, 0) || get_next_val(*(&v66 + 1), &v58 + 8, 4u, 1u) || get_next_val(v67, &v58 + 12, 4u, 0) || get_next_val(*(&v67 + 1), v59, 4u, 0))
        {
          goto LABEL_6;
        }

        v19 = v59[0] <= 1 ? 1 : v59[0];
        if (v19 >= 1)
        {
          break;
        }
      }

LABEL_41:
      if (dxios_stream_eof(v40))
      {
        goto LABEL_11;
      }
    }

    v20 = v19;
    v21 = 0;
    while (!chiisc(&v43))
    {
LABEL_104:
      if (++v21 == v20)
      {
        goto LABEL_41;
      }
    }

    v22 = v43 + v21;
    if (v48)
    {
      v23 = v22 < 0x61 || v48 > 0x60;
      v24 = v23 ? v21 : 0;
      v25 = v24 + v48;
      dxchi_map_set_single(chiul, v43 + v21, v24 + v48);
      if (v25 >= 0x61)
      {
        dxchi_map_set_single(chilu, v25, v22);
      }
    }

    if (BYTE4(v48))
    {
      dxchi_map_set_multiple(chdiwa, v22, &v48 + 4, v21, 1);
    }

    if (DWORD1(v53))
    {
      v26 = chdiwas_t;
      v27 = DWORD1(v53) + v21;
      v28 = v22;
    }

    else
    {
      if (BYTE4(v48))
      {
LABEL_87:
        if (BYTE8(v53))
        {
          v29 = chdimr;
          v30 = &v53 + 8;
          v31 = v22;
          v32 = v21;
          v33 = 1;
        }

        else
        {
          v34 = BYTE4(v48);
          v35 = &v48 + 5;
          if (BYTE4(v48))
          {
            while ((v34 - 127) >= 0xFFFFFFA1)
            {
              v36 = *v35++;
              v34 = v36;
              if (!v36)
              {
                goto LABEL_92;
              }
            }

LABEL_94:
            if (DWORD2(v58))
            {
              v37 = chdimrs_t;
              v38 = DWORD2(v58) + v21;
            }

            else
            {
              if (DWORD1(v53) < 0x21)
              {
                goto LABEL_102;
              }

              v37 = chdimrs_t;
              if (DWORD1(v53) == 35)
              {
                v39 = 0;
              }

              else
              {
                v39 = v21;
              }

              v38 = v39 + DWORD1(v53);
            }

            dxchi_map_set_single(v37, v22, v38);
LABEL_102:
            if (HIDWORD(v58))
            {
              dxchi_map_set_single(chdiu_t, v22, HIDWORD(v58) + v21);
              dxchi_map_set_single(chudi_t, HIDWORD(v58) + v21, v22);
            }

            goto LABEL_104;
          }

LABEL_92:
          v29 = chdimr;
          v30 = *(*(chdiwa + 8 * (v22 >> 8)) + 8 * v22);
          v31 = v22;
          v32 = 0;
          v33 = 0;
        }

        dxchi_map_set_multiple(v29, v31, v30, v32, v33);
        goto LABEL_94;
      }

      v26 = chdiwas_t;
      v28 = v22;
      v27 = 35;
    }

    dxchi_map_set_single(v26, v28, v27);
    goto LABEL_87;
  }

LABEL_11:
  v4 = 0;
  for (i = 0; i != 256; ++i)
  {
    for (j = 0; j != 256; ++j)
    {
      if (*(*(chdiwa + 8 * i) + 8 * j))
      {
        goto LABEL_14;
      }

      v8 = *(*(chdiwa + ((*(*(chilu + 8 * i) + 4 * j) >> 5) & 0x7FFFFF8)) + 8 * *(*(chilu + 8 * i) + 4 * j));
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = chiini_strdup(v8);
      v10 = v9;
      if (*v9 == 123)
      {
        v11 = v9[1];
        if ((v11 & 0x80000000) == 0)
        {
          if ((_DefaultRuneLocale.__runetype[v11] & 0x8000) == 0)
          {
            goto LABEL_29;
          }

LABEL_28:
          v10[1] = __tolower(v11);
          goto LABEL_29;
        }

        if (__maskrune(v9[1], 0x8000uLL))
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      dxchi_map_set_multiple(chdiwa, v4 + j, v10, 0, 0);
      if (!*(*(chdimr + 8 * i) + 8 * j))
      {
        dxchi_map_set_multiple(chdimr, v4 + j, v10, 0, 0);
      }

LABEL_14:
      if (!*(*(chdiwa + 8 * i) + 8 * j) && !*(*(chdiwas_t + 8 * i) + 4 * j) && *(*(chilu + 8 * i) + 4 * j))
      {
        dxchi_map_set_single(chdiwas_t, v4 + j, 35);
      }

      v7 = v4 + j;
      chdiwas(v4 + j, &v41);
      if (v41 < 0)
      {
        *(&wadi + (v41 & 0x7F)) = v7;
      }

      chdimrs(v4 + j, &v41);
      if (v41 < 0)
      {
        *(&mrdi + (v41 & 0x7F)) = v7;
      }
    }

    v4 += 256;
  }

  v1 = 0;
LABEL_7:
  dxtbl_lintbl_deactivate(v42);
  dxtbl_lintbl_destroy(v42);
  return v1;
}

uint64_t chiini_fp(uint64_t a1)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  dxerr_report_create(v6);
  dxios_stream_create(v4, v6);
  dxios_stream_activate_fp(v4, a1, 1u, 1);
  v2 = chiini_stream(v4);
  dxios_stream_destroy(v4);
  return v2;
}

uint64_t get_next_val(char *a1, void *a2, unsigned int a3, unsigned int a4)
{
  bzero(a2, a3);
  if (!a1)
  {
    return 0;
  }

  __endptr = 0;
  v8 = a3 - 1;
  v9 = a3 - 4;
  v10 = a2;
  while (1)
  {
    result = *a1;
    if (*a1 > 0x7Au)
    {
      break;
    }

    if (*a1 <= 0x5Au)
    {
      if (result == 34)
      {
        a4 ^= 1u;
        goto LABEL_44;
      }

      if (!*a1)
      {
        return result;
      }
    }

    else
    {
      if (result == 91)
      {
        goto LABEL_13;
      }

      if (result == 93)
      {
LABEL_11:
        if (v10 - a2 < v8)
        {
          a4 = 0;
LABEL_16:
          *v10++ = result;
          goto LABEL_44;
        }

        a4 = 0;
        goto LABEL_44;
      }
    }

LABEL_26:
    if (a4)
    {
      if (v10 - a2 < v8)
      {
        *v10++ = result;
      }

LABEL_39:
      a4 = 1;
      goto LABEL_44;
    }

    if (!strncmp(a1, "COMBINING", 9uLL))
    {
      if (v10 - a2 <= v9)
      {
        *v10 = 1;
      }

      v13 = a1 + 9;
    }

    else
    {
      if (v10 - a2 > v9)
      {
        return 0xFFFFFFFFLL;
      }

      *v10 = strtol(a1, &__endptr, 16);
      v13 = __endptr;
      if (__endptr == a1)
      {
        return 0xFFFFFFFFLL;
      }
    }

    a4 = 0;
    v10 += 4;
    a1 = v13 - 1;
LABEL_44:
    ++a1;
  }

  if (result == 123)
  {
LABEL_13:
    if (a4 <= 1)
    {
      a4 = 1;
    }

    if (v10 - a2 < v8)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

  if (result != 124)
  {
    if (result == 125)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (!a4)
  {
    goto LABEL_44;
  }

  v12 = a1[1];
  if ((v12 | 2) == 0x7E)
  {
    if (v10 - a2 < v8)
    {
      *v10++ = v12;
    }

    a4 = 1;
    ++a1;
    goto LABEL_44;
  }

  if ((v10[1] - 48) <= 9 && (v10[2] - 48) <= 9 && (v10[3] - 48) <= 9)
  {
    if (v10 - a2 < v8)
    {
      *v10++ = 10 * a1[2] + 100 * v12 + a1[3] + 48;
    }

    a1 += 3;
    goto LABEL_39;
  }

  return 0xFFFFFFFFLL;
}

BOOL chiisc(uint64_t a1)
{
  if (!*(a1 + 1))
  {
    return 1;
  }

  if (*(a1 + 2))
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v4 = 0;
  return chdids(*a1, 0, &v4);
}

uint64_t chlwc(uint64_t result)
{
  if (result <= 0xFF)
  {
    v1 = &dusci[12 * result];
    return *(v1 + 1);
  }

  if (result >> 8 == 156)
  {
    v1 = &dusci[12 * result];
    return *(v1 + 1);
  }

  v2 = *(*(chiul + 8 * (result >> 8)) + 4 * result);
  if (v2 <= 0x61)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t chudi(int a1)
{
  if (a1 >= 0x10000)
  {
    return 62762;
  }

  v2 = a1;
  v3 = *(chudi_t + 8 * (a1 >> 8));
  result = 62762;
  if (v3)
  {
    v4 = *(v3 + 4 * v2);
    if (v4)
    {
      return v4;
    }

    else
    {
      return 62762;
    }
  }

  return result;
}

uint64_t chuds(uint64_t result, int a2, char *a3, uint64_t a4)
{
  if (!result)
  {
    *a3 = 0;
    return result;
  }

  if ((result / 256) <= 0xFF && a4 != 0)
  {
    v7 = *(a4 + 8 * (result / 256));
    if (v7)
    {
      v8 = *(v7 + 8 * result);
      if (v8)
      {
        v9 = strlen(*(v7 + 8 * result));
        if (v9 > a2)
        {
          *a3 = *(v8 + a2);
          return v9 - 1 > a2;
        }

        goto LABEL_22;
      }
    }
  }

  if ((result - 44032) >> 4 > 0x2BA)
  {
    v15 = 0;
    v10 = chudi(result);
    result = chdids(v10, a2, &v15);
    v11 = v15;
LABEL_23:
    *a3 = v11;
    return result;
  }

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_17;
      case 1:
        v12 = (result + 21504) / 0x24Cu + 48;
        goto LABEL_29;
      case 2:
LABEL_17:
        LOBYTE(v12) = -26;
LABEL_29:
        *a3 = v12;
        return 1;
    }

LABEL_22:
    result = 0;
    v11 = 32;
    goto LABEL_23;
  }

  v13 = (result + 21504) % 0x1Cu;
  if (a2 != 3)
  {
    if (a2 == 4)
    {
      LOBYTE(v12) = -25;
      goto LABEL_29;
    }

    if (a2 == 5)
    {
      result = 0;
      v11 = v13 + 87;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = (result + 21504) / 0x1Cu - 21 * ((3121 * ((result + 21504) / 0x1Cu)) >> 16) + 145;
  if (((result + 21504) / 0x1Cu - 21 * ((3121 * ((result + 21504) / 0x1Cu)) >> 16) + 145) == 156)
  {
    LOBYTE(v14) = 44;
  }

  *a3 = v14;
  return (result + 21504) % 0x1Cu != 0;
}

void dxchi_unimap_destroy(void *a1)
{
  if (a1)
  {
    for (i = 0; i != 256; ++i)
    {
      if (a1[i])
      {
        for (j = 0; j != 2048; j += 8)
        {
          v4 = *(a1[i] + j);
          if (v4)
          {
            free(v4);
          }
        }

        free(a1[i]);
      }
    }

    free(a1);
  }
}

uint64_t dxchi_unimap_read(uint64_t a1, uint64_t a2)
{
  if (a1 && !dxios_stream_eof(a2))
  {
    v5 = 1;
    do
    {
      if (dxios_fgl(&v22, 512, a2))
      {
        v6 = v22;
        if (v5 == 1 && v22 == 239 && v23 == 187 && v24 == 191)
        {
          strlen(v25);
          __memmove_chk();
          v6 = v22;
        }

        if (v6 && v6 != 42)
        {
          if (v6 != 124)
          {
            v7 = v23;
LABEL_17:
            v8 = v25[0];
            if (v6 != 72 || v7 != 97 || v24 != 110 || v25[0] != 58)
            {
              v21 = 0;
              if (v6 == 85 && v7 == 43 && unimap_read_hex(v24, &v21) && unimap_read_hex(v8, &v21) && unimap_read_hex(v25[1], &v21) && unimap_read_hex(v25[2], &v21) && v26 == 58)
              {
                v9 = v21;
                v10 = &v26;
                do
                {
                  v11 = *++v10;
                }

                while (v11 == 32);
                v12 = strstr(v10, "| ");
                if (!v12)
                {
                  v12 = &v10[strlen(v10)];
                  goto LABEL_34;
                }

                do
                {
                  *v12 = 0;
LABEL_34:
                  if (v12 <= v10)
                  {
                    break;
                  }

                  v13 = *--v12;
                }

                while (v13 == 32);
                v14 = HIBYTE(v9);
                v15 = *(a1 + 8 * HIBYTE(v9));
                if (v15 || (v15 = malloc_type_calloc(0x100uLL, 8uLL, 0x10040436913F5uLL), (*(a1 + 8 * HIBYTE(v9)) = v15) != 0))
                {
                  v16 = v9;
                  v17 = v15[v9];
                  if (v17)
                  {
                    free(v17);
                    *(*(a1 + 8 * HIBYTE(v9)) + 8 * v9) = 0;
                  }

                  mapping = unimap_read_mapping(v10, 0);
                  if (mapping)
                  {
                    v19 = mapping;
                    *(*(a1 + 8 * v14) + 8 * v16) = malloc_type_malloc(mapping + 1, 0x7FAD435FuLL);
                    v20 = *(*(a1 + 8 * v14) + 8 * v16);
                    if (v20)
                    {
                      unimap_read_mapping(v10, v20);
                      *(*(*(a1 + 8 * v14) + 8 * v16) + v19) = 0;
                    }
                  }
                }
              }
            }

            goto LABEL_21;
          }

          v7 = v23;
          if ((v23 & 0xDF) != 0)
          {
            goto LABEL_17;
          }
        }
      }

LABEL_21:
      ++v5;
    }

    while (!dxios_stream_eof(a2));
  }

  return 0;
}

uint64_t unimap_read_hex(int a1, int *a2)
{
  if ((a1 - 48) <= 9)
  {
    v2 = a1 + 16 * *a2 - 48;
LABEL_7:
    *a2 = v2;
    return 1;
  }

  if ((a1 - 97) <= 5)
  {
    v2 = a1 + 16 * *a2 - 87;
    goto LABEL_7;
  }

  if ((a1 - 65) <= 5)
  {
    v2 = a1 + 16 * *a2 - 55;
    goto LABEL_7;
  }

  return 0;
}

uint64_t unimap_read_mapping(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a1;
  do
  {
    v14 = 0;
    if ((v3 - 32) >= 0x5F)
    {
      break;
    }

    if (v3 == 123 && v7[1] == 85 && v7[2] == 43 && unimap_read_hex(v7[3], &v14) && unimap_read_hex(v7[4], &v14) && unimap_read_hex(v7[5], &v14) && unimap_read_hex(v7[6], &v14) && v7[7] == 125)
    {
      v8 = chudi(v14);
      v9 = 0;
      v13 = 0;
      do
      {
        v10 = chdids(v8, v9, &v13);
        if (a2)
        {
          *(a2 + v5) = v13;
        }

        ++v5;
        ++v9;
      }

      while (v10);
      v6 += 8;
    }

    else
    {
      if (a2)
      {
        if (v3 == 91)
        {
          v11 = 28;
        }

        else
        {
          v11 = v3;
        }

        if (v11 == 93)
        {
          LOBYTE(v11) = 31;
        }

        *(a2 + v5) = v11;
      }

      ++v6;
      ++v5;
    }

    v7 = &a1[v6];
    v3 = a1[v6];
  }

  while (a1[v6]);
  return v5;
}

uint64_t chupc(uint64_t result)
{
  if (result > 0xFF)
  {
    v2 = *(*(chilu + 8 * (result >> 8)) + 4 * result);
    if (v2)
    {
      return v2;
    }

    else
    {
      return result;
    }
  }

  else
  {
    v1 = &dusci[12 * result];
    result = *(v1 + 2);
    if (result == 156)
    {
      return *(v1 + 1) | 0x9C00u;
    }
  }

  return result;
}

uint64_t chwadi(uint64_t result)
{
  if (result == -1)
  {
    return 65407;
  }

  if ((result & 0x80000000) != 0)
  {
    return 62762;
  }

  if (result < 0x80)
  {
    return result;
  }

  if (result > 0xFF)
  {
    return 62762;
  }

  return *(&wadi + (result - 128));
}

void dxcfin()
{
  if (dxcmel <= 29)
  {
    exit(0);
  }

  if (dxcmel <= 0x63)
  {
    exit(1);
  }

  if (dxcmel <= 0xC7)
  {
    exit(2);
  }

  exit(4);
}

unsigned __int8 *dxxins()
{
  v0 = getenv("DUXSPEC");
  if (v0)
  {
    for (i = 0; i != 766; ++i)
    {
      v2 = v0[i];
      if (v2 == 59)
      {
        LOBYTE(v2) = 0;
      }

      else if (!v0[i])
      {
        break;
      }

      *(&dxcprl + i) = v2;
    }

    *(&dxcprl + i) = 0;
  }

  remove_trailing_spaces(&dxcprl);
  result = getenv("DUXTEMP");
  if (result)
  {
    strcpx(dxcptl, result, 65);
    if (dxcptl[0] == 59)
    {
      dxcptl[0] = 0;
    }

    return remove_trailing_spaces(dxcptl);
  }

  return result;
}

uint64_t remove_trailing_spaces(const char *a1)
{
  result = strlen(a1);
  if (result >= 1)
  {
    v3 = &a1[result];
    do
    {
      v5 = *--v3;
      v4 = v5;
      if (v5 < 0)
      {
        result = __maskrune(v4, 0x4000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = _DefaultRuneLocale.__runetype[v4] & 0x4000;
        if (!result)
        {
          return result;
        }
      }

      *v3 = 0;
    }

    while (v3 > a1);
  }

  return result;
}

uint64_t dxcini(const char *a1, unsigned __int8 *a2, int a3, int a4, int a5, uint64_t a6)
{
  dxxins();
  v9 = &unk_3D000;
  dxcdmo = 0;
  dxcmel = 0;
  dxcrif = 0;
  dxcrtb = 0;
  v10 = &dxcmpn;
  __strcpy_chk();
  ermini();
  dxcumf = 1;
  dxcnps = 0;
  dxcnpm = 0;
  v11 = fopes("dxprls.dxr", "r", 0);
  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = v11;
  v13 = 0;
  v14 = 2;
  while (1)
  {
    do
    {
      if (!fgl(__s, 255, v12))
      {
        fclose(v12);
        goto LABEL_66;
      }

      v15 = __s[0];
    }

    while (__s[0] == 59);
    v45 = a4;
    v16 = v9;
    v17 = strlen(__s);
    if (v17)
    {
      do
      {
        if (__s[v17 - 1] != 32)
        {
          break;
        }

        __s[--v17] = 0;
      }

      while (v17);
      v15 = __s[0];
    }

    if (v17 >= 4 && v15 == 46 && __s[1] == 46 && __s[2] == 46)
    {
      v18 = atoi(&__s[3]);
      v14 = v18;
      if (v18 != 102)
      {
        v9 = v16;
        if (v18 == 101)
        {
          a4 = v45;
          if (__s[6] == 58)
          {
            v23 = atoi(&__s[7]);
          }

          else
          {
            v23 = 16;
          }

          dxcnpm = v23;
          dxcnpl = malloc_type_malloc(17 * v23, 0x100004075806E5BuLL);
          if (!dxcnpl)
          {
            erm("dxcini", -7, 200, 0);
          }

          v14 = 101;
        }

        else
        {
          a4 = v45;
          if (v18 == 100)
          {
            v13 = &dxcprl;
            LOBYTE(dxcprl) = 0;
          }
        }

        goto LABEL_46;
      }

      v13 = dxcptl;
      dxcptl[0] = 0;
      goto LABEL_41;
    }

    v19 = v15;
    if (v14 > 98)
    {
      break;
    }

    if (v14 <= 4)
    {
      if (v14 == 2)
      {
        v36 = *__s == 0x2063786420726F66 && v51 == 49;
        v9 = v16;
        if (v36)
        {
          v14 = 2;
        }

        else
        {
          erm("dxcini", -5, 50, __s);
          v14 = 2147483646;
        }
      }

      else
      {
        v9 = v16;
        if (v14 != 3)
        {
          a4 = v45;
          if (v14 == 4)
          {
            LOBYTE(dxcyep) = __tolower(v15);
            dxcyep = dxcyep;
          }

          goto LABEL_25;
        }

        dxcepl = atoi(__s);
      }
    }

    else
    {
      v20 = v14 - 6;
      if ((v14 - 6) >= 6)
      {
        v9 = v16;
        a4 = v45;
        if (v14 == 5)
        {
          LOBYTE(dxcnop) = __tolower(v19);
          dxcnop = dxcnop;
        }

        goto LABEL_25;
      }

      if (dxcp06)
      {
        v21 = malloc_type_malloc(v17 + 1, 0x368BD25FuLL);
        *(dxcp06 + 8 * v20) = v21;
        if (v21)
        {
          strcpy(*(dxcp06 + 8 * v20), __s);
        }
      }

      v9 = v16;
    }

    a4 = v45;
LABEL_25:
    ++v14;
LABEL_46:
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_66;
    }
  }

  if (v14 == 102)
  {
    strcpx(v13, __s, 65);
    goto LABEL_41;
  }

  if (v14 == 101)
  {
    if (v15 == 46)
    {
      getprm(__s, 0);
      v14 = 101;
    }

    else
    {
      v24 = *v10;
      v25 = __tolower(*v10);
      v26 = v10;
      v27 = __s[0];
      if (v25 == __tolower(__s[0]))
      {
        v28 = __s;
        v13 = v26;
        do
        {
          v30 = *(v13 + 1);
          v13 = (v13 + 1);
          v29 = v30;
          v31 = __tolower(v30);
          v33 = *++v28;
          v32 = v33;
        }

        while (v31 == __tolower(v33));
        v34 = v29;
        v35 = v32;
        v10 = &dxcmpn;
      }

      else
      {
        v34 = v24;
        v35 = v27;
        v28 = __s;
        v13 = v26;
        v10 = v26;
      }

      v14 = 101;
      if (!v34 && v35 == 46)
      {
        getprm(v28, 0x80u);
      }
    }

    goto LABEL_41;
  }

  if (v14 != 100)
  {
LABEL_41:
    v9 = v16;
    a4 = v45;
    goto LABEL_46;
  }

  if (v13 - &dxcprl + v17 < 0x2FF)
  {
    strcpy(v13, __s);
    v22 = v13 + v17;
    v22[1] = 0;
    v13 = (v22 + 1);
    v14 = 100;
    goto LABEL_41;
  }

  fclose(v12);
  erm("dxcini", -4, 50, __s);
  v9 = v16;
  a4 = v45;
LABEL_66:
  dxcmac = a5;
  dxcmau = 1;
  dxcmav = a6;
  stdcin = __stdinp;
  v37 = v49;
  result = strcpx(v49, a2, 17);
  while (*v37)
  {
    if (*v37 == 47)
    {
      *v37 = 0;
      break;
    }

    ++v37;
  }

  if (a5 <= 1)
  {
    v9[172] = 2;
    goto LABEL_98;
  }

  v39 = **(dxcmav + 8);
  if (v39 <= 0x3E)
  {
    if (v39 != 33)
    {
      if (v39 == 58)
      {
        result = preder();
        v9[172] = 1;
        v40 = 2;
LABEL_95:
        dxcmau = v40;
        goto LABEL_98;
      }

LABEL_94:
      v40 = 1;
      v9[172] = 1;
      goto LABEL_95;
    }

LABEL_86:
    fprintf(__stderrp, "%s %s - dxc %s - ", a1, a2, "1;27");
    if (a3 >= 1984)
    {
      v42 = 1984;
    }

    else
    {
      v42 = a3;
    }

    if (a4 <= 1995)
    {
      v43 = 1995;
    }

    else
    {
      v43 = a4;
    }

    fprintf(__stderrp, "Copyright %d-%d Duxbury Systems, Inc.\n", v42, v43);
    if (dxcprs)
    {
      fprintf(__stderrp, "%s\n", dxcprs);
    }

    else
    {
      fwrite("All rights reserved.\n", 0x15uLL, 1uLL, __stderrp);
    }

    erm(&dxcmpn, 1, 10, "");
    dxcfin();
  }

  if (v39 == 63)
  {
    goto LABEL_86;
  }

  if (v39 != 64)
  {
    goto LABEL_94;
  }

  preder();
  v9[172] = 3;
  if (a4 <= 1995)
  {
    v41 = 1995;
  }

  else
  {
    v41 = a4;
  }

  fprintf(__stderrp, "%s %s  Copyright %d Duxbury\n", a1, v49, v41);
  if (a5 == 2)
  {
    erm("dxcini", -2, 200, "");
  }

  result = fopes(*(dxcmav + 16), "r", 0);
  dxcrif = result;
  if (!result)
  {
    result = erm("dxcini", -3, 200, *(dxcmav + 16));
  }

LABEL_98:
  if ((dxcinf & 1) == 0 && v9[172] != 3)
  {
    if (a4 <= 1995)
    {
      v44 = 1995;
    }

    else
    {
      v44 = a4;
    }

    result = fprintf(__stderrp, "%s %s  Copyright %d Duxbury\n", a1, v49, v44);
    if (v9[172] == 2)
    {
      return erm("dxcini", -6, 10, "");
    }
  }

  return result;
}

const char *getprm(const char *result, unsigned int a2)
{
  v2 = result;
  if (*result - 48 >= 0xA)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4;
      v6 = &result[v4];
      v7 = *(v6 + 1);
      if (!v6[1] || v7 == 58)
      {
        break;
      }

      v4 = v5 + 1;
      v24[v5] = v7;
      if (v5 == 6)
      {
        v8 = &v24[v4];
        goto LABEL_11;
      }
    }

    v8 = &v24[v5];
LABEL_11:
    *v8 = 0;
    v9 = &result[v5 + 2];
    while (1)
    {
      v10 = *(v9 - 1);
      if (!*(v9 - 1))
      {
        break;
      }

      ++v9;
      if (v10 == 58)
      {
        while (1)
        {
          v11 = *(v9 - 1);
          if (v11 != 9 && v11 != 32)
          {
            break;
          }

          ++v9;
        }

        if (*(v9 - 1))
        {
          v13 = 0;
          while (1)
          {
            v22[v13] = v11;
            if (v13 == 6)
            {
              break;
            }

            v11 = *(v9 + v13++);
            if (!v11)
            {
              v12 = &v22[v13];
              goto LABEL_25;
            }
          }

          v12 = &v23;
        }

        else
        {
          v12 = v22;
        }

LABEL_25:
        *v12 = 0;
        break;
      }
    }

    v14 = dxcnps;
    v15 = dxcnpm;
    if (dxcnps >= dxcnpm)
    {
      v16 = dxcnpm;
    }

    else
    {
      v16 = dxcnps;
    }

    if (v16 < 1)
    {
      v18 = 0;
LABEL_38:
      if (v14 >= v15)
      {
        if (v14 == v15)
        {
          result = erm("dxcini", -8, 30, v2);
        }
      }

      else
      {
        v20 = 17 * v18;
        strcpx((dxcnpl + v20), v24, 8);
        result = strcpx((dxcnpl + v20 + 8), v22, 8);
        *(dxcnpl + v20 + 16) = a2;
      }

      ++dxcnps;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        result = strcic(v24, (dxcnpl + v17));
        if (!result)
        {
          break;
        }

        ++v18;
        v14 = dxcnps;
        v15 = dxcnpm;
        if (dxcnps >= dxcnpm)
        {
          v19 = dxcnpm;
        }

        else
        {
          v19 = dxcnps;
        }

        v17 += 17;
        if (v18 >= v19)
        {
          goto LABEL_38;
        }
      }

      v21 = *(dxcnpl + v17 + 16);
      if (v21 >= a2)
      {
        if (v21 == a2)
        {
          return erm("dxcini", -9, 30, v2);
        }
      }

      else
      {
        return strcpx((dxcnpl + v17 + 8), v22, 8);
      }
    }
  }

  else
  {

    return erm("dxcini", -10, 30, result);
  }

  return result;
}

FILE *preder()
{
  result = strlen(*(dxcmav + 8));
  if (result >= 2)
  {
    v1 = __stderrp;
    v2 = (*(dxcmav + 8) + 1);

    return freopen(v2, "a", v1);
  }

  return result;
}

uint64_t erm(const char *a1, int a2, int a3, const char *a4)
{
  if (dxcmel < a3)
  {
    dxcmel = a3;
  }

  if (a3 < 1)
  {
    v8 = 45;
  }

  else if (a3 >= 0xB)
  {
    if (a3 >= 0x1F)
    {
      v8 = 35;
      if (a3 >= 0x64)
      {
        if (dxcdmo != 2 || a3 >= 0xC8)
        {
          v8 = 33;
        }

        else
        {
          v8 = 35;
        }
      }
    }

    else
    {
      v8 = 63;
    }
  }

  else
  {
    v8 = 42;
  }

  fprintf(__stderrp, "%c ", v8);
  erm_line1 = 1;
  erm_llen = 1;
  if (a3 >= 1 && dxcepl >= 1)
  {
    if (a2 < 0)
    {
      v10 = "dxc";
    }

    else
    {
      v10 = &dxcmpn;
    }

    fputs(v10, __stderrp);
    erm_llen += 8;
    if (dxcepl >= 2)
    {
      fprintf(__stderrp, "/%s", a1);
      erm_llen += 7;
    }

    fwrite(": ", 2uLL, 1uLL, __stderrp);
  }

  erm_disp_no = 1;
  if (a2 < -20000 || (dxcumf & 1) == 0)
  {
LABEL_33:
    fprintf(__stderrp, "%s message #%d\n", a1, a2);
    erm_llen = 0;
    goto LABEL_34;
  }

  ermgmg(a1, a2);
  if (ermloc < -1)
  {
    if (erm_disp_no != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  for (; ermnxl(0, 81); erm_line1 = 0)
  {
    if ((erm_line1 & 1) == 0)
    {
      fputc(10, __stderrp);
      erm_llen = 0;
    }

    fputs(ermlin, __stderrp);
    erm_llen += strlen(ermlin);
  }

  erm_disp_no = 0;
LABEL_34:
  if (a4)
  {
    if (strlen(a4) + erm_llen >= 0x4E)
    {
      v11 = 10;
    }

    else
    {
      v11 = 32;
    }

    fputc(v11, __stderrp);
    fputs(a4, __stderrp);
  }

  if (a3)
  {
    result = fputc(10, __stderrp);
    if (a3 >= 100 && (a3 > 0xC7 || dxcdmo != 2))
    {

      dxcfif ();
    }
  }

  else
  {
    fwrite("?:", 2uLL, 1uLL, __stderrp);
    v13 = __stderrp;

    return fputc(10, v13);
  }

  return result;
}

uint64_t ermgmg(const char *a1, int a2)
{
  __sprintf_chk(ermgmg_cmp_lin, 0, 0xFuLL, ">%s %d", a1, a2);
  v3 = ercusd;
  if (ercusd >= 1)
  {
    v4 = 0;
    v5 = ercmps;
    do
    {
      result = strcmp(ermgmg_cmp_lin, v5);
      if (!result)
      {
        goto LABEL_41;
      }

      ++v4;
      v5 += 15;
    }

    while (v3 != v4);
  }

  ermgmg_pass1 = 1;
  if (a2 < 0)
  {
    if (ermfop == 1)
    {
      goto LABEL_18;
    }

    if (ermfop == 2)
    {
      fclose(msgfil);
      ermfop = 0;
      ercmle = 0;
    }

    result = fopes("dxc.erm", "r", 0);
    msgfil = result;
    if (result)
    {
      v7 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    ermgmg_pgmfiln = 0;
    __strcat_chk();
    __strcat_chk();
    if (ermfop == 2)
    {
      goto LABEL_18;
    }

    if (ermfop == 1)
    {
      fclose(msgfil);
      ermfop = 0;
      ercmle = 0;
    }

    result = fopes(&ermgmg_pgmfiln, "r", 0);
    msgfil = result;
    if (result)
    {
      v7 = 2;
LABEL_16:
      ermfop = v7;
      goto LABEL_18;
    }
  }

  if (ermfop <= 0)
  {
LABEL_40:
    LODWORD(v4) = -2;
    goto LABEL_41;
  }

LABEL_18:
  while ((ercmle & 1) == 0)
  {
    if (fgl(ermlin, 81, msgfil))
    {
      if (ercmle != 1)
      {
        goto LABEL_22;
      }

      break;
    }

    if (ermgmg_pass1 != 1)
    {
      result = fclose(msgfil);
LABEL_39:
      ermfop = 0;
      goto LABEL_40;
    }

    ermgmg_pass1 = 0;
    result = fclose(msgfil);
    if (ermfop == 2)
    {
      v8 = &ermgmg_pgmfiln;
    }

    else
    {
      if (ermfop != 1)
      {
        goto LABEL_39;
      }

      v8 = "dxc.erm";
    }

    result = fopes(v8, "r", 0);
    msgfil = result;
    if (!result)
    {
      goto LABEL_39;
    }

LABEL_23:
    if (ermfop <= 0)
    {
      goto LABEL_40;
    }
  }

  __strcpy_chk();
  ercmle = 0;
LABEL_22:
  result = strcmp(ermlin, ermgmg_cmp_lin);
  if (result)
  {
    goto LABEL_23;
  }

  v9 = ercusd;
  if (ercusd > 2)
  {
    if (ercnxu >= 2)
    {
      v9 = 0;
      ercnxu = 0;
    }

    else
    {
      v9 = ++ercnxu;
    }
  }

  else
  {
    ercnxu = ercusd++;
  }

  result = strcpy(&ercmps[16 * v9 - v9], ermgmg_cmp_lin);
  *&ercmps[16 * ercnxu - ercnxu] = 90;
  ermltm = 0;
  LODWORD(v4) = -1;
LABEL_41:
  ermloc = v4;
  return result;
}

uint64_t ermnxl(char *a1, int a2)
{
  v3 = a1;
  if (ermloc < 0)
  {
    if (ermloc != -1)
    {
      return 0;
    }

    do
    {
      if (!fgl(ermlin, 81, msgfil))
      {
        fclose(msgfil);
        result = 0;
        ermfop = 0;
        ercmle = 0;
        goto LABEL_14;
      }
    }

    while (ermlin[0] == 59);
    if (ermlin[0] == 62)
    {
      ercmle = 1;
      strcpx(ercmlr, ermlin, 15);
      result = 0;
LABEL_14:
      ermloc = -2;
      return result;
    }

    if (ermltm++)
    {
      *&ercmps[16 * ercnxu - ercnxu] = 88;
    }

    else
    {
      strcpy(&ercache[81 * ercnxu], ermlin);
    }

    if (v3)
    {
      strcpx(v3, ermlin, a2);
    }
  }

  else
  {
    if (a1)
    {
      v4 = a2;
    }

    else
    {
      a1 = ermlin;
      v4 = 81;
    }

    strcpx(a1, &ercache[81 * ermloc], v4);
    ermloc = -2;
  }

  return 1;
}