void *init_line(void *a1, int a2)
{
  result = memset(a1, 32, a2);
  *(a1 + a2) = 0;
  return result;
}

void rb_free(void *a1)
{
  if (a1)
  {
    for (i = 0; ; ++i)
    {
      v3 = a1[2];
      if (i >= *a1)
      {
        break;
      }

      free(v3[i]);
    }

    free(v3);

    free(a1);
  }
}

uint64_t rb_putc(uint64_t a1, int a2, int a3, char a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    result = expand_cols(a1, a3);
    if (result)
    {
      *(*(*(a1 + 16) + 8 * a2) + a3) = a4;
      v9 = *(a1 + 8);
      if (v9 <= a3)
      {
        v9 = a3;
      }

      *(a1 + 8) = v9;
      return 1;
    }
  }

  return result;
}

uint64_t expand_lines(int *a1, int a2)
{
  if (*a1 > a2)
  {
    return 1;
  }

  v5 = a2 + 1;
  result = malloc_type_realloc(*(a1 + 2), 8 * (a2 + 1), 0x10040436913F5uLL);
  if (result)
  {
    *(a1 + 2) = result;
    for (i = *a1; ; ++i)
    {
      if (i > a2)
      {
        *a1 = v5;
        return 1;
      }

      v7 = malloc_type_calloc(a1[1] + 1, 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2) + 8 * i) = v7;
      if (!v7)
      {
        break;
      }

      init_line(*(*(a1 + 2) + 8 * i), a1[1]);
    }

    while (1)
    {
      v8 = *a1;
      v9 = *(a1 + 2);
      if (i < v8)
      {
        break;
      }

      free(v9[i--]);
    }

    v10 = malloc_type_realloc(v9, 8 * v8, 0x10040436913F5uLL);
    result = 0;
    *(a1 + 2) = v10;
  }

  return result;
}

uint64_t expand_cols(int *a1, int a2)
{
  if (a1[1] > a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 96 * ((a2 + 1) / 96);
  v6 = v5 + 96;
  v7 = v5 + 97;
  while (1)
  {
    v8 = *a1;
    if (v4 >= v8)
    {
      break;
    }

    v9 = malloc_type_realloc(*(*(a1 + 2) + 8 * v4), v7, 0x100004077774924uLL);
    if (!v9)
    {
      LODWORD(v8) = *a1;
      break;
    }

    *(*(a1 + 2) + 8 * v4) = v9;
    init_line((*(*(a1 + 2) + 8 * v4++) + a1[1]), v6 - a1[1]);
  }

  if (v8 <= v4)
  {
    a1[1] = v6;
    return 1;
  }

  else
  {
    for (; (v4 & 0x80000000) == 0; LODWORD(v4) = v4 - 1)
    {
      *(*(a1 + 2) + 8 * v4) = malloc_type_realloc(*(*(a1 + 2) + 8 * v4), a1[1] + 1, 0x100004077774924uLL);
    }

    return 0;
  }
}

uint64_t rb_insc(uint64_t a1, int a2, int a3, char a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    result = expand_cols(a1, a3);
    if (result)
    {
      v9 = *(*(a1 + 16) + 8 * a2);
      v10 = *(a1 + 4);
      if (*(v9 + v10 - 1) != 32)
      {
        result = expand_cols(a1, v10 + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(*(a1 + 16) + 8 * a2);
        LODWORD(v10) = *(a1 + 4);
      }

      v11 = (v9 + a3);
      memmove(v11 + 1, v11, v10 + ~a3);
      *v11 = a4;
      ++*(a1 + 8);
      return 1;
    }
  }

  return result;
}

uint64_t rb_inscn(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    v11 = *(a1 + 8);
    v12 = v11 - a5;
    if (v11 >= -1)
    {
      v13 = -1;
    }

    else
    {
      v13 = *(a1 + 8);
    }

    if ((v11 & 0x80000000) == 0)
    {
      while (*(*(*(a1 + 16) + 8 * a2) + v11) == 32 && v11 > v12)
      {
        if (--v11 < 0)
        {
          goto LABEL_13;
        }
      }

      v13 = v11;
    }

LABEL_13:
    result = expand_cols(a1, v13 + a5);
    if (result)
    {
      v15 = (*(*(a1 + 16) + 8 * a2) + a3);
      if ((v11 & 0x80000000) == 0)
      {
        memmove(&v15[a5], v15, v13 - a3 + 1);
      }

      memset(v15, a4, a5);
      v16 = *(a1 + 8);
      if (v16 <= v13 + a5)
      {
        v16 = v13 + a5;
      }

      *(a1 + 8) = v16;
      return 1;
    }
  }

  return result;
}

uint64_t rb_puts(uint64_t a1, int a2, int a3, char *a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    v9 = 0;
    v10 = a3;
    while (*a4)
    {
      result = expand_cols(a1, a3 + v9);
      if (!result)
      {
        return result;
      }

      v11 = *a4++;
      *(*(*(a1 + 16) + 8 * a2) + v10) = v11;
      ++v9;
      ++v10;
    }

    v12 = *(a1 + 8);
    if (v12 < v9)
    {
      v12 = v9 - 2;
    }

    *(a1 + 8) = v12;
    return 1;
  }

  return result;
}

uint64_t rb_puts_v(int *a1, int a2, int a3, char *a4)
{
  result = expand_cols(a1, a3);
  if (result)
  {
    while (*a4)
    {
      result = expand_lines(a1, a2);
      if (!result)
      {
        return result;
      }

      v9 = *a4++;
      OUTLINED_FUNCTION_1_72(v9);
    }

    v10 = 32;
    while (a2 < *a1)
    {
      OUTLINED_FUNCTION_1_72(v10);
    }

    v11 = a1[2];
    if (v11 <= a3)
    {
      v11 = a3;
    }

    a1[2] = v11;
    return 1;
  }

  return result;
}

uint64_t rb_stradd(int *a1, int a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = 0;
  v7 = a2 - 1;
  v8 = a2;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *a1; v6 < i; i = 0)
  {
    v10 = a1[1];
    v11 = v4 < 1 || v10 < v4;
    if (v11 || (v12 = OUTLINED_FUNCTION_0_78(), rb_getc(v12, v13, v7) == 32))
    {
      v14 = v10;
      if (v10 <= v4)
      {
        break;
      }

      v15 = v8;
      v16 = a3;
      while (*v16++)
      {
        if (v15 >= v14 || (v18 = OUTLINED_FUNCTION_0_78(), rb_getc(v18, v19, v15) != 32))
        {
          if (v15 >= v14)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }

        ++v15;
      }

      if (v15 >= v14)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_0_78();
      if (rb_getc(v20, v21, v15) == 32)
      {
        break;
      }
    }

LABEL_20:
    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

LABEL_23:
  while (*a3++)
  {
    v22 = OUTLINED_FUNCTION_0_78();
    result = rb_putc(v22, v23, v4++, v24);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

unsigned int *rb_lines(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t rb_getc(uint64_t a1, int a2, int a3)
{
  if (*a1 <= a2 || *(a1 + 4) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*(*(a1 + 16) + 8 * a2) + a3);
  }
}

uint64_t rb_strdel(uint64_t result, int a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2;
  if (!result)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *v3; v4 < i; i = 0)
  {
    result = rb_getc(v3, v4, a2);
    if (result != 32 && (!a2 || *(*(*(v3 + 2) + 8 * v4) + v5 - 1) == 32))
    {
      for (j = v5; *(*(*(v3 + 2) + 8 * v4) + j) != 32; ++j)
      {
        result = rb_putc(v3, v4, j, 32);
      }
    }

    ++v4;
    if (v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t rb_push(int *a1, int a2, int a3)
{
  v6 = 0;
  v7 = a2;
  v8 = a2 + 1;
  v9 = a2 + 1;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *a1; v6 < i; i = 0)
  {
    if (a2)
    {
      v11 = OUTLINED_FUNCTION_0_78();
      v13 = rb_getc(v11, v12, a2);
      v14 = a2;
      if (v13 != 32)
      {
        v15 = *(*(a1 + 2) + 8 * v6);
        v14 = a2;
        if (*(v15 + v7 - 1) != 32)
        {
          v16 = a1[1];
          if (v16 <= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = a1[1];
          }

          v18 = v9;
          v14 = a2;
          while (v18 < v16)
          {
            v19 = *(v15 + v18);
            ++v14;
            ++v18;
            if (v19 == 32)
            {
              goto LABEL_16;
            }
          }

          v14 = v17;
        }
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
    if (v14 < a1[1])
    {
      v20 = OUTLINED_FUNCTION_0_78();
      result = rb_inscn(v20, v21, v22, 32, a3);
      if (!result)
      {
        return result;
      }
    }

    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 1;
}

uint64_t rb_gets(uint64_t a1, int a2, int a3)
{
  if (*a1 > a2 && *(a1 + 4) >= a3)
  {
    return *(*(a1 + 16) + 8 * a2) + a3;
  }

  else
  {
    return 0;
  }
}

uint64_t rb_width(uint64_t result)
{
  if (result)
  {
    return (*(result + 8) + 1);
  }

  return result;
}

uint64_t calcMidline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 100)
  {
    v3 = 100;
  }

  *(a3 + 2) = MidlineVals[v3];
  return OUTLINED_FUNCTION_0_79();
}

uint64_t f0_stepi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 2);
  v7 = *(a5 + 2) * *(a4 + 2);
  if (v7 + v6 < 1)
  {
    LOWORD(v7) = 20 - v6;
  }

  if (v7)
  {
    v8 = v7;
    if (v6 >= 4208)
    {
      v9 = 4208;
    }

    else
    {
      v9 = *(a3 + 2);
    }

    v10 = v9 & ~(v9 >> 31);
    v11 = v10 >> 4;
    v12 = v10 & 0xF;
    if (v12)
    {
      v13 = LnTable[v11 + 1];
      v14 = LnTable[v11];
      v11 = v14 + (((v13 - v14) * v12) >> 4);
    }

    else
    {
      LOWORD(v11) = LnTable[v11];
    }

    v16 = v8 + v6;
    if (v16 >= 4208)
    {
      v16 = 4208;
    }

    v17 = v16 & ~(v16 >> 31);
    v18 = v17 >> 4;
    v19 = v17 & 0xF;
    if (v19)
    {
      v20 = LnTable[v18 + 1];
      v21 = LnTable[v18];
      v18 = v21 + (((v20 - v21) * v19) >> 4);
    }

    else
    {
      LOWORD(v18) = LnTable[v18];
    }

    v15 = (v11 - v18) / *(a2 + 2);
  }

  else
  {
    LOWORD(v15) = 0;
  }

  *(a6 + 2) = v15;
  return OUTLINED_FUNCTION_0_79();
}

uint64_t calcIntoni(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(v5) = *(a2 + 2);
  if (*(a3 + 2))
  {
    v6 = *(a4 + 2) * *(a3 + 2);
    if (v6 >= 1023)
    {
      v6 = 1023;
    }

    v5 = (ExpTable[v6 & ~(v6 >> 31)] * *(a2 + 2)) >> 14;
    if (v5 >= 0x7FFF)
    {
      LOWORD(v5) = 0x7FFF;
    }
  }

  *(a5 + 2) = v5;
  return OUTLINED_FUNCTION_0_79();
}

uint64_t scaleValue100i(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v5 >= *(a4 + 2) * *(a3 + 2) / 100)
  {
    v5 = *(a4 + 2) * *(a3 + 2) / 100;
  }

  if (v5 >= v4)
  {
    LOWORD(v4) = v5;
  }

  *(a4 + 2) = v4;
  return OUTLINED_FUNCTION_0_79();
}

uint64_t calcSpeedFactori(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 150)
  {
    v3 = 150;
  }

  *(a3 + 8) = SpeedTable[v3];
  return OUTLINED_FUNCTION_0_79();
}

uint64_t modulate_pwindi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(a3 + 2) = (PwindModTable[v5] * *(a3 + 2)) >> 7;
  v6 = v5 + 95;
  v7 = 105 - v5;
  if (v4 <= 4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(a4 + 2) = v8 * *(a4 + 2) / 100;
  return OUTLINED_FUNCTION_0_79();
}

uint64_t modulo(uint64_t a1, double *a2, double *a3, double *a4)
{
  v8 = 0;
  v9 = 0;
  getDeltaCcodeParm(a2, &v9, -3);
  getDeltaCcodeParm(a3, &v8, -3);
  v7 = v9 % v8;
  setDeltaCcodeReturnValue(&v7, -3, a4);
  return 0;
}

uint64_t IntLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 5120)
  {
    v3 = 5120;
  }

  v4 = LogTab[v3 >> 5];
  *(a3 + 2) = v4 + (((LogTab[(v3 >> 5) + 1] - v4) * (v3 & 0x1Fu)) >> 5);
  return OUTLINED_FUNCTION_0_79();
}

uint64_t IntExp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2);
  if (v3 <= 2400)
  {
    v3 = 2400;
  }

  if (v3 >= 5200)
  {
    v3 = 5200;
  }

  v4 = (v3 - 2400) >> 4;
  v5 = ExpTab[v4];
  *(a3 + 2) = v5 + (((v3 & 0xFu) * (ExpTab[v4 + 1] - v5)) >> 4);
  return OUTLINED_FUNCTION_0_79();
}

_DWORD *clr_vector(_DWORD *result, uint64_t a2)
{
  for (i = a2 & ~(a2 >> 63); i; --i)
  {
    *result++ = 0;
  }

  return result;
}

__int16 *mul1_vector(__int16 *result, float a2, float *a3, uint64_t a4)
{
  for (i = a4 & ~(a4 >> 63); i; --i)
  {
    v5 = *result++;
    *a3 = *a3 + (a2 * v5);
    ++a3;
  }

  return result;
}

float *mulf_vector(float *result, float a2, float *a3, uint64_t a4)
{
  for (i = a4 & ~(a4 >> 63); i; --i)
  {
    v5 = *result++;
    *a3 = *a3 + (a2 * v5);
    ++a3;
  }

  return result;
}

float parallel0_filter(float *a1, float *a2, uint64_t a3)
{
  *(a2 - 2) = a1[13];
  v3 = a1 + 12;
  *(a2 - 1) = a1[12];
  v4 = a2;
  for (i = a3 & ~(a3 >> 63); i; --i)
  {
    *v4 = (a1[2] * *(v4 - 2)) + (a1[1] * *(v4 - 1));
    ++v4;
  }

  v6 = &a2[a3 & ~(a3 >> 63)];
  if (a3 > 1)
  {
    v3 = v6 - 2;
  }

  a1[13] = *v3;
  result = *(v6 - 1);
  a1[12] = result;
  return result;
}

uint64_t output_speech(uint64_t result, uint64_t a2)
{
  v2 = result + 0x2000;
  if (*(result + 8866))
  {
    v6 = a2;
    v3 = (result + 2048);
    v7 = result + 2048;
    v4 = *(result + 148);
    if (v4 != 1.0)
    {
      for (i = a2 & ~(a2 >> 63); i; --i)
      {
        *v3 = (v4 * *v3);
        ++v3;
      }
    }

    if (*(result + 3720) == 2)
    {
      result = (*(result + 3728))(*(result + 8), &v6);
      *(v2 + 470) = result;
    }
  }

  return result;
}

double klatt_new(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x22A8uLL, 0x10F20402EFE26D7uLL);
  if (v2)
  {
    *v2 = KlattVersion;
    *(v2 + 1) = a1;
    *(v2 + 38) = 0;
    *(v2 + 1588) = 0;
    *(v2 + 4330) = 0;
    result = 0.0;
    *(v2 + 6504) = 0u;
    *(v2 + 817) = 0;
    *(v2 + 819) = 0;
    *(v2 + 818) = 0;
    v2[8866] = 1;
  }

  return result;
}

void klatt_delete(void *a1)
{
  if (verifyKlattHandle(a1))
  {

    free(a1);
  }
}

void *KlattSetConstParms(uint64_t a1, const void *a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    if (*(a1 + 152) == 2)
    {
      KlattClose(a1);
    }

    result = memcpy((a1 + 3648), a2, 0x58uLL);
    v5 = *(a1 + 3652);
    *(a1 + 6412) = 1000.0 / v5;
    *(a1 + 6408) = v5 * 0.001;
    v6 = *(a1 + 3664);
    *(a1 + 8656) = v6;
    *(a1 + 8658) = v6;
    *(a1 + 6392) = 0;
    v7 = ((1000.0 / v5) * 3.1416) * 0.001;
    *(a1 + 6400) = v7;
    *(a1 + 6404) = v7 + v7;
    *(a1 + 8160) = *(a1 + 3660);
    v8 = *(a1 + 3680);
    v9 = vcvtq_s64_f64(vcvt_hight_f64_f32(v8));
    v10 = vcvtq_s64_f64(vcvtq_f64_f32(*v8.f32));
    v11 = vextq_s8(v10, v9, 8uLL);
    v10.i64[1] = v9.i64[1];
    *(a1 + 8865) = 0;
    *(a1 + 8216) = v11;
    *(a1 + 8200) = v10;
    if (v5 == 11025.0)
    {
      v12 = 1;
    }

    else if (v5 == 16000.0)
    {
      v12 = 2;
    }

    else
    {
      if (v5 == 8000.0)
      {
        *(a1 + 8868) = 0;
        goto LABEL_9;
      }

      v12 = 3;
    }

    *(a1 + 8868) = v12;
LABEL_9:
    *(a1 + 24) = 1;
  }

  return result;
}

BOOL KlattClose(uint64_t a1)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 152) = 0;
  }

  return result;
}

BOOL KlattOpen(uint64_t a1)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    if (*(a1 + 24) != 1)
    {
      (*(a1 + 3712))(*(a1 + 8), " KlattOpen error", "Call KlattSetConstParms at least once before KlattOpen!");
      return 0;
    }

    if (*(a1 + 152) == 2)
    {
      (*(a1 + 3712))(*(a1 + 8), " KlattOpen error", "Synthesizer is already open!");
      return 0;
    }

    *(a1 + 152) = 2;
    *(a1 + 4544) = a1 + 3744;
    *(a1 + 6168) = a1 + 5364;
    *(a1 + 6364) = 0;
    v3 = (a1 + 240);
    v4 = 21;
    do
    {
      *(v3 - 2) = 0;
      *(v3 - 28) = 0;
      *(v3 - 8) = 0;
      --v4;
      *v3 = 0;
      v3 += 11;
    }

    while (v4);
    *(a1 + 16) = 0;
    *(a1 + 6360) = 0;
    *(a1 + 6352) = 0;
    *(a1 + 6504) = 0u;
    *(a1 + 6536) = 0;
    *(a1 + 6552) = 0;
    *(a1 + 6544) = 0;
    result = 1;
    *(a1 + 8866) = 1;
    *(a1 + 8660) = 0;
  }

  return result;
}

BOOL KlattSetOutputSamplesOption(uint64_t a1, char a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 8866) = a2;
  }

  return result;
}

uint64_t KlattLength(uint64_t a1)
{
  if (verifyKlattHandle(a1))
  {
    return *(a1 + 6544);
  }

  else
  {
    return 0;
  }
}

uint64_t KlattMax(uint64_t a1)
{
  if (verifyKlattHandle(a1))
  {
    return *(a1 + 6552);
  }

  else
  {
    return 0;
  }
}

BOOL KlattSynth(uint64_t a1, uint64_t a2)
{
  v282 = *MEMORY[0x277D85DE8];
  result = verifyKlattHandle(a1);
  if (!result)
  {
    goto LABEL_301;
  }

  v5 = (a1 + 6420);
  ++*(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a1 + 3648);
  v9 = *(a2 + 32);
  v10 = *(a2 + 28);
  v11 = *(a1 + 6408);
  *(a1 + 8176) = v7;
  *(a1 + 8184) = v10;
  *(a1 + 0x2000) = v9;
  if (v7 | v10)
  {
    *(a1 + 6356) = 1101004800;
  }

  v12 = v6 * v8;
  if (v9)
  {
    *(a1 + 6360) = 1101004800;
  }

  v13 = v12 * v11;
  *(a1 + 8663) = 0;
  v14 = *(a2 + 108);
  v15 = *(a2 + 112);
  v17 = *(a2 + 116);
  v16 = *(a2 + 120);
  v19 = *(a2 + 124);
  v18 = *(a2 + 128);
  *&v269[3] = v14;
  *&v269[4] = v19;
  v263[3] = v15;
  v263[4] = v18;
  v21 = *(a2 + 132);
  v20 = *(a2 + 136);
  *&v269[1] = v17;
  *&v269[2] = v21;
  v263[1] = v16;
  v263[2] = v20;
  v22 = *(a2 + 40);
  v23 = *(a2 + 52);
  v24 = *(a2 + 56);
  v270[0] = *(a2 + 36);
  v270[1] = v23;
  v264[0] = v22;
  v264[1] = v24;
  v25 = *(a2 + 60);
  v26 = *(a2 + 64);
  v275 = v23;
  v276 = v25;
  v27 = *(a2 + 68);
  v28 = *(a2 + 72);
  v270[2] = v25;
  v270[3] = v27;
  v264[2] = v26;
  v264[3] = v28;
  v29 = *(a2 + 76);
  v30 = *(a2 + 80);
  v277 = v27;
  v278 = v29;
  v274 = v270[0];
  v270[4] = v29;
  v264[4] = v30;
  v31 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 140)));
  v265 = *(a2 + 176);
  v32 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 148)));
  v259[0] = v31;
  v259[1] = v32;
  v266 = *(a2 + 192);
  v260 = *(a2 + 156);
  v33 = *(a1 + 8160);
  if (v33 >= 6)
  {
    v34 = *(a2 + 88);
    v35 = *(a2 + 92);
    v36 = *(a2 + 96);
    v271 = *(a2 + 84);
    v272 = v35;
    v264[5] = v34;
    v264[6] = v36;
    v37 = *(a2 + 100);
    v38 = *(a2 + 104);
    v280 = v35;
    v281 = v37;
    v279 = v271;
    v273 = v37;
    v264[7] = v38;
    v267 = *(a2 + 196);
    v261 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 160)));
    v268 = *(a2 + 204);
    v262 = *(a2 + 168);
  }

  v250 = v13;
  v39 = *(a1 + 6356);
  v40 = v39;
  if (v39 > 0.00001)
  {
    if (v14 == v17 && v15 == v16)
    {
      *(a1 + 320) = 0;
      *(a1 + 496) = 0;
    }

    else
    {
      *(a1 + 320) = v39;
      *(a1 + 496) = v39;
      if (v14 != *(a1 + 480))
      {
        *(a1 + 6188) = cosf(v14 * *(a1 + 6404));
      }

      if (v17 != *(a1 + 304))
      {
        *(a1 + 6180) = cosf(v17 * *(a1 + 6404));
      }

      if (v15 != *(a1 + 484))
      {
        *(a1 + 6272) = expf(-(*(a1 + 6400) * v15));
      }

      if (v16 != *(a1 + 308))
      {
        *(a1 + 6264) = expf(-(*(a1 + 6400) * v16));
      }
    }

    if (v19 == v21 && v18 == v20)
    {
      *(a1 + 408) = 0;
      *(a1 + 584) = 0;
    }

    else
    {
      *(a1 + 408) = v39;
      *(a1 + 584) = v39;
      if (v19 != *(a1 + 568))
      {
        *(a1 + 6192) = cosf(v19 * *(a1 + 6404));
      }

      if (v21 != *(a1 + 392))
      {
        *(a1 + 6184) = cosf(v21 * *(a1 + 6404));
      }

      if (v18 != *(a1 + 572))
      {
        *(a1 + 6276) = expf(-(*(a1 + 6400) * v18));
      }

      if (v20 != *(a1 + 396))
      {
        *(a1 + 6268) = expf(-(*(a1 + 6400) * v20));
      }
    }
  }

  v253 = a2;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = v33 + 5;
  v258 = a1 + 160;
  v248 = (a1 + 6260);
  while (v43 + 5 < v46)
  {
    *(a1 + v44 + 672) = *(a1 + 6356);
    v47 = *&v270[v45 / 4];
    if (v47 != *(a1 + v44 + 656))
    {
      *(a1 + v45 + 6196) = cosf(v47 * *(a1 + 6404));
    }

    v48 = *&v264[v45 / 4];
    if (v48 != *(a1 + v44 + 660) && *(a1 + 6356) != 0.0)
    {
      *(a1 + v45 + 6280) = expf(-(*(a1 + 6400) * v48));
    }

    v49 = *(a1 + 6360);
    if (v49 <= 0.00001)
    {
      *(a1 + v44 + 1376) = 0;
    }

    else
    {
      if (*(v259 + v43))
      {
        *(a1 + v44 + 1376) = v49;
      }

      *(a1 + v45 + 6228) = *(a1 + v45 + 6196);
      v50 = *(&v265 + v45);
      if (v50 != *(a1 + v44 + 1364))
      {
        *(a1 + v45 + 6312) = expf(-(*(a1 + 6400) * v50));
      }
    }

    v45 += 4;
    v44 += 88;
    ++v43;
  }

  v51 = (a1 + 260);
  for (i = 1; i < v46; ++i)
  {
    v53 = v258 + 88 * i;
    if (*(v53 + 72) != 0.0)
    {
      v54 = v248[i];
      v55 = -(v54 * v54);
      *(v53 + 8) = v55;
      v56 = (v54 * *(a1 + 6176 + 4 * i)) + (v54 * *(a1 + 6176 + 4 * i));
      *v53 = (1.0 - v56) - v55;
      *(v53 + 4) = v56;
      v57 = *(v53 + 56);
      if (v57 == 0.0 || *&v269[i] == v57 && v263[i] == *(v53 + 60))
      {
        *(v53 + 80) = 0;
      }

      else
      {
        *(v53 + 80) = 3;
        v58 = (v56 - *(v53 + 64)) * 0.25;
        v59 = (v55 - *(v53 + 68)) * 0.25;
        v60 = -3;
        v61 = v51;
        do
        {
          v62 = (v60 + 4);
          v63 = *(v53 + 68) + (v62 * v59);
          v61[6] = v63;
          v64 = *(v53 + 64) + (v62 * v58);
          v61[3] = v64;
          *v61++ = (1.0 - v64) - v63;
          ++v60;
        }

        while (v60);
      }
    }

    v51 += 22;
  }

  v65 = *(a1 + 8208) + *(a1 + 0x2000) + *(a1 + 8224);
  v66 = *(a2 + 172);
  if (v66 != 0.0)
  {
    v67 = db2lin(v65 + v66);
    *(a1 + 4552) = *&v67 * -0.0000000033599;
  }

  v68 = 0;
  v69 = 0.0000000033599;
  v70 = 1376;
  v71 = 6228;
  while (v68 + 13 < *(a1 + 8160) + 13)
  {
    v72 = a1 + v70;
    if (*(a1 + v70) != 0.0)
    {
      v73 = *(a1 + v71 + 84);
      *(v72 - 64) = -(v73 * v73);
      *(v72 - 68) = (v73 * *(a1 + v71)) + (v73 * *(a1 + v71));
      v74 = *(v259 + v68);
      if (v74)
      {
        v75 = db2lin(v74 + v65);
        v76 = (v69 * *&v75) * ((1.0 - *(v72 - 68)) - *(v72 - 64));
      }

      else
      {
        v76 = 0.0;
      }

      *(v72 - 72) = v76;
    }

    v69 = -v69;
    ++v68;
    v70 += 88;
    v71 += 4;
  }

  if (*(a1 + 6356) > 0.0001)
  {
    v77 = (a1 + 284);
    for (j = 1; j != 3; ++j)
    {
      v79 = v258 + 88 * j;
      if (*(v79 + 72) != 0.0)
      {
        LODWORD(v40) = *v79;
        v80 = a1 + 2008 + 12 * j;
        *v80 = 1.0 / *v79;
        v40 = COERCE_DOUBLE(vdiv_f32(vneg_f32(*(v79 + 4)), vdup_lane_s32(*&v40, 0)));
        *(v80 + 4) = v40;
        if (*(v79 + 80))
        {
          v81 = v77;
          v82 = 3;
          do
          {
            v83 = *(v81 - 6);
            *(v81 - 6) = 1.0 / v83;
            *(v81 - 3) = -*(v81 - 3) / v83;
            *v81 = -*v81 / v83;
            ++v81;
            --v82;
          }

          while (v82);
        }
      }

      v77 += 22;
    }
  }

  *(a1 + 6376) = *(v253 + 4);
  *(a1 + 6372) = *(v253 + 24);
  *(a1 + 6388) = *(v253 + 12) * 0.01;
  v84 = 200;
  if (v250 < 200)
  {
    v84 = v250;
  }

  *(a1 + 6448) = v84;
  v85 = *(a1 + 8184);
  if (v85)
  {
    v86 = db2lin(*(a1 + 8208) + v85 + *(a1 + 8216));
    v87 = *&v86 * 0.000011921;
  }

  else
  {
    v87 = 0.0;
  }

  v254 = (a1 + 6504);
  v88 = (a1 + 6560);
  v89 = (a1 + 8665);
  v251 = a1 + 512;
  v90 = a1 + 2048;
  v91 = 10000.0;
  v92 = 0.001;
  v249 = 1;
  v252 = 1;
  v93 = v250;
  while (v93 >= 1)
  {
    if (*(a1 + 6448) >= v93)
    {
      v94 = v93;
    }

    else
    {
      v94 = *(a1 + 6448);
    }

    *(a1 + 6448) = v94;
    *(a1 + 6364) = (1000 * v94) / *(a1 + 3652);
    v256 = v93;
    if (*(a1 + 6356) >= 0.0001)
    {
      v95 = *v254;
LABEL_93:
      *(a1 + 8232) = 0;
      *(a1 + 6560) = 0;
      if (v95)
      {
        goto LABEL_94;
      }

      v96 = 0;
      goto LABEL_102;
    }

    v95 = *(a1 + 6504);
    if (*(a1 + 6360) >= 0.0001)
    {
      goto LABEL_93;
    }

    if (v95)
    {
      *(a1 + 8232) = 0;
      *(a1 + 6560) = 0;
LABEL_94:
      if (v95 >= v94)
      {
        v96 = v94;
      }

      else
      {
        v96 = v95;
      }

      clr_vector(*(a1 + 4544), v96);
      *(a1 + 6504) -= v96;
      OUTLINED_FUNCTION_7_54();
      v97 = v94 - v96;
      v88[v99] = v98 + v96;
      v100 = *(a1 + 8232) + 1;
      goto LABEL_103;
    }

    if (!*(a1 + 6536))
    {
      v101 = *(a1 + 6512);
      if (!v101)
      {
        for (k = v94; v101 < k; k = *(a1 + 6448))
        {
          *(v90 + 8 * v101++) = 0;
        }

        goto LABEL_293;
      }
    }

    v96 = 0;
    *v88 = 0;
LABEL_102:
    v100 = 1;
    v97 = v94;
LABEL_103:
    v257 = v94;
    *(a1 + 8232) = v100;
    v88[v100] = 0;
    v102 = *(a1 + 6512);
    if (v102)
    {
      if (v102 >= v97)
      {
        v103 = v97;
      }

      else
      {
        v103 = *(a1 + 6512);
      }

      *(a1 + 6480) = v103;
      v104 = *(a1 + 6416);
      v105 = v103 + v96;
      while (v96 < v105)
      {
        *(*(a1 + 4544) + 4 * v96) = v104 + (-(*(a1 + 6424) * v104) * v104);
        v104 = v104 + *(a1 + 6420);
        ++v96;
      }

      *(a1 + 6416) = v104;
      *(a1 + 6512) = v102 - v103;
      v97 -= v103;
      OUTLINED_FUNCTION_1_73(v103);
    }

    else
    {
      v105 = v96;
    }

    OUTLINED_FUNCTION_0_80();
    v106 = *(a1 + 6536);
    if (v106 && v97)
    {
      if (v106 >= v97)
      {
        v107 = v97;
      }

      else
      {
        v107 = *(a1 + 6536);
      }

      *(a1 + 6496) = v107;
      v108 = OUTLINED_FUNCTION_3_63();
      clr_vector(v108, v109);
      v110 = *(a1 + 6496);
      *(a1 + 6536) -= v110;
      v97 -= v110;
      v105 += v110;
      OUTLINED_FUNCTION_1_73(v110);
    }

    if (v105 < 1)
    {
      v111 = 0;
    }

    else
    {
      pole_filter(v258, *(a1 + 4544), v105);
      v111 = v105;
    }

    v255 = v111;
    if (v97 < 1)
    {
      goto LABEL_204;
    }

    v112 = *(a1 + 6376);
    if (v112 != 0.0)
    {
      v116 = *(a1 + 8176);
      if (v116)
      {
        if (v252)
        {
          v117 = *(v253 + 20);
          if (v117 != 0.0)
          {
            v118 = v92;
            v119 = v91;
            v120 = (v112 * v117) * 0.0002;
            v121 = *(a1 + 6352);
            v122 = sinf(v121 * 0.079796);
            v123 = v122 + sinf(v121 * 0.044611);
            v124 = v120 * (sinf(v121 * 0.029531) + v123);
            v91 = v119;
            v92 = v118;
            *(a1 + 8248) = v124;
            v112 = v112 + v124;
            *(a1 + 6376) = v112;
            if (v112 <= 0.0)
            {
              *(a1 + 6376) = 1065353216;
              v112 = 1.0;
            }
          }

          *(a1 + 6380) = v91 / v112;
          v125 = (v91 / v112) * (*(a1 + 3652) * v92);
          *(a1 + 6384) = v125;
          v126 = *(a1 + 6388);
          if (v126 > 0.0)
          {
            v127 = *(a1 + 8200) + v116 + *(a1 + 8208);
            if (v127 < 1)
            {
              *(a1 + 6436) = 0;
            }

            else
            {
              *(a1 + 6440) = 1.5 / (v126 * v125);
              v128 = db2lin(v127);
              v129 = *(a1 + 6440);
              *&v128 = (*&v128 * 18.469) * v129;
              *(a1 + 6436) = LODWORD(v128);
              *(a1 + 6440) = v129 / *&v128;
            }
          }

          v133 = *(a1 + 6372);
          if (*(a1 + 8660))
          {
            if (v133 == 0.0)
            {
              *(a1 + 8660) = 0;
              goto LABEL_143;
            }

LABEL_141:
            v134 = 1.0 - (v133 * 0.01);
            *(a1 + 6368) = v134;
            *(a1 + 6464) = (((v133 * *(a1 + 6384)) * (1.0 - *(a1 + 6388))) * 0.01);
            if (v134 <= 0.0)
            {
              *(a1 + 6428) = 0;
            }

            else
            {
              *(a1 + 6428) = v134 * *(a1 + 6436);
              *(a1 + 6432) = *(a1 + 6440) / v134;
            }
          }

          else
          {
            if (v133 > 0.0)
            {
              *(a1 + 8660) = 1;
              goto LABEL_141;
            }

LABEL_143:
            *v5 = *(a1 + 6436);
          }

          v135 = *(v253 + 16);
          if (v135 >= 35.0)
          {
            v135 = 35.0;
          }

          v136 = v135;
          *(a1 + 8168) = v135;
          if (v135 && (v137 = *(a1 + 6356), v137 > 0.0001))
          {
            *(a1 + 232) = v137;
            *(a1 + 240) = 0;
            v138 = tl_table[v136];
            *v269 = v138;
            v139 = v138 * 0.375;
            v263[0] = v138 * 0.375;
            v140 = *(a1 + 8868);
            if (v140)
            {
              if (v140 == 2 || v140 == 1)
              {
                v249 = 0;
                v141 = &tilt16;
                goto LABEL_158;
              }

              if (v138 != *(a1 + 216))
              {
                *(a1 + 6176) = cosf(v138 * *(a1 + 6404));
              }

              if (v139 == *(a1 + 220))
              {
                v144 = *v248;
              }

              else
              {
                v144 = expf(-(*(a1 + 6400) * v139));
                *(a1 + 6260) = v144;
              }

              v249 = 0;
              v145 = -(v144 * v144);
              *(a1 + 168) = v145;
              v146 = (v144 * *(a1 + 6176)) + (v144 * *(a1 + 6176));
              *(a1 + 160) = (1.0 - v146) - v145;
              *(a1 + 164) = v146;
              *(a1 + 240) = 0;
            }

            else
            {
              v249 = 0;
              v141 = &tilt8;
LABEL_158:
              v143 = &v141[12 * v136];
              *(a1 + 160) = *v143;
              *(a1 + 168) = *(v143 + 2);
            }
          }

          else
          {
            *(a1 + 232) = 0;
          }
        }

        compute_voicing_size(a1);
        v252 = 0;
        goto LABEL_177;
      }
    }

    if (*(a1 + 8184))
    {
      *(a1 + 6456) = v97;
      *(a1 + 6472) = v97;
      OUTLINED_FUNCTION_5_57();
      v115 = &v88[v114];
    }

    else
    {
      *(a1 + 6472) = 0;
      OUTLINED_FUNCTION_0_80();
      v115 = (a1 + 6456);
      v113 = v97;
    }

    *v115 = v97;
    *(a1 + 6488) = v113;
    OUTLINED_FUNCTION_5_57();
    v88[v131] = v130;
    v132 = OUTLINED_FUNCTION_3_63();
    clr_vector(v132, v97);
    v97 = 0;
    *(a1 + 6392) = 0;
LABEL_177:
    while (v97 >= 1 && v97 >= *(a1 + 6456))
    {
      if (*(a1 + 8660))
      {
        if (*(a1 + 8661))
        {
          *v5 = *(a1 + 6428);
          *(a1 + 6496) = *(a1 + 6488) - *(a1 + 6464);
          v147 = OUTLINED_FUNCTION_3_63();
          clr_vector(v147, v148);
          v149 = *(a1 + 6464);
          v105 += v149;
          OUTLINED_FUNCTION_1_73(v149);
          v150 = *(a1 + 8661) == 0;
        }

        else
        {
          OUTLINED_FUNCTION_6_56();
          v150 = 1;
        }

        *(a1 + 8661) = v150;
      }

      OUTLINED_FUNCTION_0_80();
      v151 = *(a1 + 6420);
      if (v151 == 0.0)
      {
        v155 = OUTLINED_FUNCTION_3_63();
        clr_vector(v155, *(a1 + 6472));
        v153 = *(a1 + 6472);
        v154 = v153 + v105;
      }

      else
      {
        v152 = v151 * (*(a1 + 6392) * *(a1 + 6408));
        v153 = *(a1 + 6472);
        v154 = v153 + v105;
        while (v105 < v154)
        {
          *(*(a1 + 4544) + 4 * v105) = v152 + (-(*(a1 + 6424) * v152) * v152);
          v152 = v152 + *(a1 + 6420);
          ++v105;
        }
      }

      OUTLINED_FUNCTION_1_73(v153);
      OUTLINED_FUNCTION_0_80();
      clr_vector((*(a1 + 4544) + 4 * v154), *(a1 + 6496));
      v156 = *(a1 + 6496);
      v105 = v156 + v154;
      v88[*(a1 + 8232)] += v156;
      v97 -= *(a1 + 6456);
      compute_v_start(a1);
      compute_voicing_size(a1);
    }

    if (v97 < 1)
    {
      *(a1 + 6536) = 0;
      *v254 = 0;
      *(a1 + 6512) = 0;
    }

    else
    {
      if (*(a1 + 8660))
      {
        if (*(a1 + 8661))
        {
          *v5 = *(a1 + 6428);
          v158 = *(a1 + 6464);
          *(a1 + 6496) -= v158;
          if (v158 >= v97)
          {
            v159 = v97;
          }

          else
          {
            v159 = v158;
          }

          v160 = OUTLINED_FUNCTION_3_63();
          clr_vector(v160, v159);
          *(a1 + 6504) = *(a1 + 6464) - v159;
          v105 += v159;
          v97 -= v159;
          OUTLINED_FUNCTION_7_54();
          v88[v162] = v161 + v159;
          v163 = *(a1 + 8661) == 0;
        }

        else
        {
          OUTLINED_FUNCTION_6_56();
          *(a1 + 6504) = 0;
          v163 = 1;
        }

        *(a1 + 8661) = v163;
      }

      OUTLINED_FUNCTION_0_80();
      v164 = *(a1 + 6472);
      if (v164 >= v97)
      {
        v165 = v97;
      }

      else
      {
        v165 = *(a1 + 6472);
      }

      *(a1 + 6480) = v165;
      v166 = *(a1 + 6420);
      v167 = (*(a1 + 6392) * *(a1 + 6408)) * v166;
      if (v166 == 0.0)
      {
        v169 = OUTLINED_FUNCTION_3_63();
        clr_vector(v169, v170);
        v164 = *(a1 + 6472);
        v165 = *(a1 + 6480);
        v166 = *(a1 + 6420);
      }

      else
      {
        for (m = v105; m < v165 + v105; ++m)
        {
          *(*(a1 + 4544) + 4 * m) = v167 + (-(*(a1 + 6424) * v167) * v167);
          v166 = *(a1 + 6420);
          v167 = v167 + v166;
        }
      }

      *(a1 + 6416) = v167;
      *(a1 + 6512) = v164 - v165;
      *(a1 + 6520) = v164;
      *(a1 + 6528) = v166;
      OUTLINED_FUNCTION_7_54();
      v88[v173] = v172 + v171;
      OUTLINED_FUNCTION_5_57();
      v88[v176] = 0;
      if (*(a1 + 6496) >= v175)
      {
        v177 = v175;
      }

      else
      {
        v177 = *(a1 + 6496);
      }

      clr_vector((*(a1 + 4544) + 4 * v105 + 4 * v174), v177);
      *(a1 + 6536) = *(a1 + 6496) - v177;
      OUTLINED_FUNCTION_7_54();
      v88[v179] = v178 + v177;
      compute_v_start(a1);
    }

LABEL_204:
    OUTLINED_FUNCTION_0_80();
    OUTLINED_FUNCTION_0_80();
    v93 = v256;
    v94 = v257;
    if (*(a1 + 8663))
    {
      v180 = 0;
      v181 = 0;
      v182 = 0;
      while (v181 < *(a1 + 8232) / 2)
      {
        v183 = v88[2 * v181] + v182;
        while (v180 < v183)
        {
          v89[v180++] = 0;
        }

        v182 = v88[2 * v181 + 1] + v183;
        while (v180 < v182)
        {
          v89[v180++] = 1;
        }

        ++v181;
      }
    }

    pole_filter(v258, (*(a1 + 4544) + 4 * v255), *(a1 + 6448) - v255);
    if (!*(a1 + 3676))
    {
      if (*(a1 + 6356) > 0.0001)
      {
        if (*(a1 + 8184))
        {
          *(a1 + 8656) = noise(a1, *(a1 + 8656));
          OUTLINED_FUNCTION_2_67();
          mul1_vector((a1 + 8256), v87, v184, v185);
        }

        OUTLINED_FUNCTION_2_67();
        pole_filter(a1 + 424, v186, v187);
        zero_filter(a1 + 248, (a1 + 2020), *(a1 + 4544), *(a1 + 6448));
        OUTLINED_FUNCTION_2_67();
        pole_filter(v251, v188, v189);
        zero_filter(a1 + 336, (a1 + 2032), *(a1 + 4544), *(a1 + 6448));
        v190 = *(a1 + 8160);
        v191 = v190 + 4;
        v192 = v251 + 88 * v190;
        while (v191 >= 6)
        {
          OUTLINED_FUNCTION_2_67();
          pole_filter(v192, v193, v194);
          --v191;
          v192 -= 88;
        }

        v195 = *(a1 + 8663);
        OUTLINED_FUNCTION_2_67();
        if (v200)
        {
          v201 = 2;
          v93 = v256;
          v94 = v257;
          if (*(a1 + 672) != 0.0)
          {
            *(v196 - 2) = *(a1 + 652);
            *(v196 - 1) = *(a1 + 648);
            v202 = 0;
            v203 = 0;
            v204 = 0;
            switch(*(a1 + 156))
            {
              case 0:
                v205 = *(a1 + 680);
                if (v205 >= v197)
                {
                  v206 = v197;
                }

                else
                {
                  v206 = *(a1 + 680);
                }

                v202 = v206 & ~(v206 >> 63);
                v207 = (a1 + 648 - 4 * v205);
                v208 = v196;
                for (n = v202; n; --n)
                {
                  v210 = (*(v207 - 3) * *(v208 - 1)) + (*(v207 - 6) * *v208);
                  v211 = *v207++;
                  *v208 = v210 + (v211 * *(v208 - 2));
                  ++v208;
                }

                *(a1 + 680) = v205 - v206;
                goto LABEL_245;
              case 1:
                goto LABEL_245;
              case 2:
                goto LABEL_233;
              case 3:
                goto LABEL_239;
              default:
                v202 = 0;
                if (*v89)
                {
                  goto LABEL_232;
                }

                break;
            }

LABEL_238:
            *(a1 + 156) = 3;
            v204 = v202;
LABEL_239:
            v214 = &v196[v204];
            v202 = v204;
            while (2)
            {
              if (v202 < v197)
              {
                if (!v89[v202])
                {
                  *&v199 = *(v214 - 1);
                  *&v198 = *(a1 + 604) * *&v199;
                  OUTLINED_FUNCTION_4_58(*&v198 + (*(a1 + 600) * *v214), *(a1 + 608), v198, v199, *(v214 - 2));
                  continue;
                }

                v213 = 3;
LABEL_244:
                *(a1 + 8240) = v213;
                *(a1 + 156) = 1;
LABEL_245:
                for (ii = &v196[v202]; ; OUTLINED_FUNCTION_4_58(*&v198 + (v218[3] * *ii), v218[9], v198, v199, *(ii - 2)))
                {
                  if (v202 >= v197)
                  {
                    goto LABEL_252;
                  }

                  v216 = *(a1 + 8240);
                  if (v89[v202])
                  {
                    v217 = v216 - 1;
                    *(a1 + 8240) = v216 - 1;
                    if (v216 < 1)
                    {
LABEL_232:
                      *(a1 + 156) = v201;
                      v203 = v202;
LABEL_233:
                      v212 = &v196[v203];
                      v202 = v203;
                      while (1)
                      {
                        if (v202 >= v197)
                        {
                          goto LABEL_252;
                        }

                        if (!v89[v202])
                        {
                          break;
                        }

                        *&v199 = *(v212 - 1);
                        *&v198 = *algn_280669E0C * *&v199;
                        OUTLINED_FUNCTION_4_58((*algn_280669E0C * *&v199) + (*f1d * *v212), *&dword_280669E10, v198, v199, *(v212 - 2));
                      }

                      v213 = -1;
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    v217 = v216 + 1;
                    *(a1 + 8240) = v216 + 1;
                    if (v216 > 1)
                    {
                      goto LABEL_238;
                    }
                  }

                  v218 = &f1d[v217];
                  *&v199 = *(ii - 1);
                  *&v198 = v218[6] * *&v199;
                }
              }

              break;
            }

LABEL_252:
            v219 = &v196[v202];
            v220 = v219 - 2;
            if (v197 <= 1)
            {
              v220 = (a1 + 648);
            }

            *(a1 + 652) = *v220;
            *(a1 + 648) = *(v219 - 1);
          }
        }

        else
        {
          pole_filter(a1 + 600, v196, v197);
          v93 = v256;
          v94 = v257;
        }

        if (!*(a1 + 8184) && !*(a1 + 8176))
        {
          v221 = *(a1 + 6356) - *(a1 + 6364);
          *(a1 + 6356) = v221;
          if (v221 < 0.00001)
          {
            *(a1 + 6356) = 0;
          }
        }
      }

      if (*(a1 + 6360) <= 0.0001)
      {
        goto LABEL_286;
      }

      if (*(a1 + 0x2000))
      {
        *(a1 + 8658) = noise(a1, *(a1 + 8658));
        v222 = *(a1 + 6448) & ~(*(a1 + 6448) >> 63);
        v223 = (a1 + 4556);
        for (jj = (a1 + 8256); v222; --v222)
        {
          v225 = *jj++;
          *v223++ = v225;
        }
      }

      if (*(v253 + 172) != 0.0 && *(a1 + 0x2000))
      {
        v226 = *(a1 + 4552);
        OUTLINED_FUNCTION_2_67();
        mulf_vector((a1 + 4556), v229, v227, v228);
      }

      v230 = 13;
      while (2)
      {
        if (v230 >= *(a1 + 8160) + 13)
        {
          v93 = v256;
          v94 = v257;
          if (!*(a1 + 0x2000))
          {
            v238 = *(a1 + 6360) - *(a1 + 6364);
            *(a1 + 6360) = v238;
            if (v238 < 0.0001)
            {
              *(a1 + 6360) = 0;
            }
          }

          break;
        }

        v231 = v258 + 88 * v230;
        if (*(v231 + 72) != 0.0)
        {
          if (*(a1 + 0x2000))
          {
            v232 = v230 - 13;
            v233 = *(a1 + 6448);
            if (*(&v259[-6] + v230 - 1))
            {
              for (kk = 0; (v233 & ~(v233 >> 63)) != kk; ++kk)
              {
                *(*(a1 + 6168) + 4 * kk) = *(a1 + 4556 + 4 * kk);
              }

              pole_filter(v231, *(a1 + 6168), v233);
              goto LABEL_279;
            }
          }

          else
          {
            v233 = *(a1 + 6448);
            v232 = v230 - 13;
          }

          parallel0_filter((v258 + 88 * v230), *(a1 + 6168), v233);
          if (!*(v259 + v232))
          {
            v235 = *(v231 + 72) - *(a1 + 6364);
            *(v231 + 72) = v235;
            if (v235 < 0.0)
            {
              *(v231 + 72) = 0;
            }
          }

LABEL_279:
          v236 = 0;
          v237 = *(a1 + 6448) & ~(*(a1 + 6448) >> 63);
          while (v237 != v236)
          {
            *(*(a1 + 4544) + 4 * v236) = *(*(a1 + 6168) + 4 * v236) + *(*(a1 + 4544) + 4 * v236);
            ++v236;
          }
        }

        ++v230;
        continue;
      }
    }

LABEL_286:
    for (mm = 0; ; ++mm)
    {
      k = *(a1 + 6448);
      if (mm >= k)
      {
        break;
      }

      v240 = *(*(a1 + 4544) + 4 * mm);
      *(v90 + 8 * mm) = v240;
      if (v240 < 0)
      {
        v240 = -v240;
      }

      if (v240 > *(a1 + 6552))
      {
        *(a1 + 6552) = v240;
      }
    }

LABEL_293:
    v93 -= v94;
    output_speech(a1, k);
  }

  *(a1 + 6352) = *(a1 + 6352) + (*v253 * *(a1 + 3648));
  v241 = v249;
  *(a1 + 6544) += v250;
  v242 = a1 + 88 * v249 + 160;
  while (v241 <= 20)
  {
    if (*(v242 + 72) == 0.0)
    {
      *(v242 + 48) = 0;
      v245 = 0;
      v246 = 52;
      v243 = 0;
      v244 = 0.0;
    }

    else
    {
      v243 = v269[v241];
      v244 = v263[v241];
      v245 = *(v242 + 8);
      *(v242 + 64) = *(v242 + 4);
      v246 = 68;
    }

    *(v242 + v246) = v245;
    ++v241;
    *(v242 + 56) = v243;
    *(v242 + 60) = v244;
    v242 += 88;
  }

  result = 1;
LABEL_301:
  v247 = *MEMORY[0x277D85DE8];
  return result;
}

double db2lin(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  if (a1 >= 0x190)
  {
    a1 = 400;
  }

  v1 = ldiv(a1, 20);
  *&result = p10[v1.quot] * l10[v1.rem];
  return result;
}

float pole_filter(uint64_t a1, float *a2, uint64_t a3)
{
  result = *(a1 + 72);
  if (result != 0.0)
  {
    *(a2 - 2) = *(a1 + 52);
    v4 = (a1 + 48);
    *(a2 - 1) = *(a1 + 48);
    v5 = *(a1 + 80);
    if (v5)
    {
      if (v5 >= a3)
      {
        v6 = a3;
      }

      else
      {
        v6 = *(a1 + 80);
      }

      v7 = v6 & ~(v6 >> 63);
      v8 = (a1 - 4 * v5 + 48);
      v9 = a2;
      for (i = v7; i; --i)
      {
        v11 = (*(v8 - 3) * *(v9 - 1)) + (*(v8 - 6) * *v9);
        v12 = *v8++;
        *v9 = v11 + (v12 * *(v9 - 2));
        ++v9;
      }

      *(a1 + 80) = v5 - v6;
    }

    else
    {
      v7 = 0;
    }

    v13 = &a2[v7 - 2];
    while (v7 < a3)
    {
      v13[2] = ((*(a1 + 4) * v13[1]) + (*a1 * v13[2])) + (*(a1 + 8) * *v13);
      ++v7;
      ++v13;
    }

    if (a3 > 1)
    {
      v4 = v13;
    }

    *(a1 + 52) = *v4;
    result = v13[1];
    *(a1 + 48) = result;
  }

  return result;
}

double compute_voicing_size(float *a1)
{
  v1 = a1[1595];
  v2 = a1[1598];
  v3 = a1[1602];
  v4 = (((v1 - v2) * v3) + 0.9999);
  result = (v3 * -(v2 - (a1[1597] * v1))) + 0.4999;
  *(a1 + 807) = v4;
  *(a1 + 809) = result;
  *(a1 + 810) = result;
  v6 = v4 - result;
  *(a1 + 811) = v6;
  *(a1 + 812) = v6;
  return result;
}

float compute_v_start(float *a1)
{
  result = (a1[1598] + (*(a1 + 807) * a1[1603])) - a1[1595];
  a1[1598] = result;
  return result;
}

uint64_t noise(_WORD *a1, __int16 a2)
{
  v2 = 20077 * a2 + 12345;
  a1[4128] = v2;
  *(a1 + 8865) = 0;
  v3 = *(a1 + 806);
  v4 = a1 + 4129;
  for (i = 1; i < v3; ++i)
  {
    v2 = 20077 * v2 + 12345;
    *v4++ = v2;
  }

  if (*(a1 + 1022))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a1 + 820);
    v9 = (*(a1 + 1029) / 2) & ~((*(a1 + 1029) / 2) >> 63);
    while (v6 != v9)
    {
      while (v7 < v8)
      {
        a1[v7 + 4128] = a1[v7 + 4128] >> 1;
        ++v7;
      }

      v10 = &a1[8 * v6 + 3280];
      v7 += *(v10 + 1);
      v8 = v7 + *(v10 + 2);
      ++v6;
    }
  }

  return v2;
}

uint64_t zero_filter(uint64_t result, float *a2, float *a3, uint64_t a4)
{
  if (*(result + 72) != 0.0)
  {
    v5 = *(result + 48);
    v4 = *(result + 52);
    v6 = *(result + 80);
    if (v6)
    {
      if (v6 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = *(result + 80);
      }

      v8 = v7 & ~(v7 >> 63);
      v9 = (result - 4 * v6 + 24);
      v10 = v8;
      v11 = a3;
      while (1)
      {
        v12 = v5;
        if (!v10)
        {
          break;
        }

        v5 = *v11;
        *v11 = ((v12 * v9[3]) + (*v9 * *v11)) + (v9[6] * v4);
        ++v11;
        --v10;
        ++v9;
        v4 = v12;
      }

      *(result + 80) = v6 - v7;
    }

    else
    {
      v8 = 0;
    }

    while (1)
    {
      v13 = v5;
      if (v8 >= a4)
      {
        break;
      }

      v5 = a3[v8];
      a3[v8++] = ((v13 * a2[1]) + (*a2 * v5)) + (a2[2] * v4);
      v4 = v13;
    }

    if (a4 <= 1)
    {
      v4 = *(result + 48);
    }

    *(result + 48) = v5;
    *(result + 52) = v4;
  }

  return result;
}

BOOL klattSetVolumeMultiplier(uint64_t a1, float a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 148) = a2;
  }

  return result;
}

void OUTLINED_FUNCTION_0_80()
{
  v2 = *(v0 + 8232) + 1;
  *(v0 + 8232) = v2;
  *(v1 + 8 * v2) = 0;
}

float OUTLINED_FUNCTION_4_58(float a1, float a2, double a3, double a4, float a5)
{
  result = a1 + (a2 * a5);
  *v5 = result;
  return result;
}

double OUTLINED_FUNCTION_6_56()
{
  result = v1[2];
  *v1 = result;
  *(v0 + 6496) = *(v0 + 6488);
  return result;
}

void *dynaBufNew(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x1010040FAA616C6uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    if (a1)
    {
      v4 = a1 + 1;
    }

    else
    {
      v4 = 16;
    }

    if (v4)
    {
      v5 = ((v4 - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
    }

    else
    {
      v5 = 16;
    }

    if (resize(v2, v5))
    {
      **v3 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t resize(uint64_t a1, size_t size)
{
  if (!size)
  {
    return 0;
  }

  v4 = *a1;
  if (v4)
  {
    result = malloc_type_realloc(v4, size, 0x100004077774924uLL);
    if (!result)
    {
      return result;
    }

    *a1 = result;
  }

  else
  {
    result = malloc_type_malloc(size, 0x100004077774924uLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 8) = size;
  return 1;
}

uint64_t dynaBufDelete(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1);
  }

  return 0;
}

uint64_t dynaBufReset(uint64_t result)
{
  *(result + 16) = 0;
  **result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t dynaBufAddChar(uint64_t *a1, char a2, int a3)
{
  if (a3)
  {
    v6 = a1[2];
  }

  else
  {
    v7 = a1[2];
    v6 = a1[3];
    if (v6 != v7)
    {
      goto LABEL_10;
    }
  }

  result = setUsed(a1, v6 + 1);
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    v7 = a1[2];
    v6 = a1[3];
LABEL_10:
    if (v6 == v7 - 1)
    {
      *(*a1 + v7) = 0;
      v6 = a1[3];
    }

    goto LABEL_12;
  }

  for (i = a1[2]; ; --i)
  {
    v6 = a1[3];
    if (i < v6 + 1)
    {
      break;
    }

    *(*a1 + i) = *(*a1 + i - 1);
  }

LABEL_12:
  v10 = *a1;
  a1[3] = v6 + 1;
  *(v10 + v6) = a2;
  return 1;
}

uint64_t setUsed(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= (a2 + 1) || (result = resize(a1, (a2 & 0xFFFFFFFFFFFFFFF0) + 16), result))
  {
    *(a1 + 16) = a2;
    return 1;
  }

  return result;
}

uint64_t dynaBufAddString(uint64_t *a1, char *__s, int a3)
{
  v4 = __s;
  v6 = strlen(__s);
  v7 = v6;
  if (a3 || (v8 = a1[2] - a1[3], v7 = v6 - v8, v6 > v8))
  {
    if (v7)
    {
      result = setUsed(a1, a1[2] + v7);
      if (!result)
      {
        return result;
      }

      *(*a1 + a1[2]) = 0;
      if (a3)
      {
        for (i = a1[2] - 1; i >= a1[3] + v7; --i)
        {
          *(*a1 + i) = *(*a1 + i - v7);
        }
      }
    }
  }

  while (1)
  {
    v13 = *v4;
    if (!*v4)
    {
      break;
    }

    v11 = *a1;
    v12 = a1[3];
    a1[3] = v12 + 1;
    *(v11 + v12) = v13;
    ++v4;
  }

  return 1;
}

uint64_t dynaBufAddInt(uint64_t *a1, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __sprintf_chk(__s, 0, 0x14uLL, "%d", a2);
  result = dynaBufAddString(a1, __s, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dynaBufAddDynaBuf(uint64_t *a1, void *a2, int a3)
{
  if (a3)
  {
    v6 = a2[2];
  }

  else
  {
    v7 = a1[2] - a1[3];
    v8 = a2[2];
    v6 = v8 - v7;
    if (v8 <= v7)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    result = setUsed(a1, a1[2] + v6);
    if (!result)
    {
      return result;
    }

    if (a3)
    {
      v10 = a1[2];
      v11 = v10 - v6;
      while (v10 >= a1[3] + v6)
      {
        *(*a1 + v10--) = *(*a1 + v11--);
      }
    }
  }

LABEL_10:
  for (i = 0; i < a2[2]; ++i)
  {
    v13 = *(*a2 + i);
    v14 = *a1;
    v15 = a1[3];
    a1[3] = v15 + 1;
    *(v14 + v15) = v13;
  }

  *(*a1 + a1[2]) = 0;
  return 1;
}

uint64_t *dynaBufDeleteChars(uint64_t *result, unint64_t a2)
{
  v3 = result[2];
  v2 = result[3];
  if (v3 - v2 <= a2)
  {
    v5 = *result;
    result[2] = v2;
    *(v5 + v2) = 0;
  }

  else if (a2)
  {
    v4 = v3 - a2;
    result[2] = v4;
    while (v2 <= v4)
    {
      *(*result + v2) = *(*result + v2 + a2);
      ++v2;
      v4 = result[2];
    }
  }

  return result;
}

uint64_t dynaBufMoveRel(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = -a2;
    v4 = *(a1 + 24);
    v5 = v4 >= v3;
    v2 = v4 - v3;
    if (!v5)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = *(a1 + 24) + a2;
    if (v2 >= *(a1 + 16))
    {
      v2 = *(a1 + 16);
    }
  }

  return OUTLINED_FUNCTION_0_81(a1, v2);
}

uint64_t dynaBufMoveAbs(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = a2;
  }

  return OUTLINED_FUNCTION_0_81(a1, v2);
}

uint64_t dynaBufChar(void *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || a1[2] < a2)
  {
    return 0;
  }

  else
  {
    return *(*a1 + a2);
  }
}

uint64_t dynaBufCurrentChar(uint64_t *a1, int a2)
{
  v2 = a1[3];
  if (a2 && v2 < a1[2])
  {
    v3 = *a1;
    a1[3] = v2 + 1;
  }

  else
  {
    v3 = *a1;
  }

  return *(v3 + v2);
}

uint64_t dynaBufExtract(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  if ((a2 & 0x80000000) != 0 || a1[2] < a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a4;
  v6 = a2;
  while (a4 != v4)
  {
    if (a1[2] <= v6)
    {
      v5 = v4;
      break;
    }

    v7 = *(*a1 + v6++);
    *(a3 + v4++) = v7;
  }

  *(a3 + v5) = 0;
  return a3;
}

uint64_t errorStd(uint64_t a1, const char *a2, char *a3, ...)
{
  va_start(va, a3);
  v4 = MEMORY[0x277D85DF8];
  if (a2 && *a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: ", a2);
  }

  vfprintf(*v4, a3, va);
  fwrite(".\n", 2uLL, 1uLL, *v4);
  return 0;
}

int strcasecmp(const char *a1, const char *a2)
{
  while (1)
  {
    v4 = *a2;
    v5 = *a2;
    if (!*a1)
    {
      goto LABEL_10;
    }

    if (!*a2)
    {
      return 1;
    }

    v6 = __tolower(*a1);
    if (v6 != __tolower(v4))
    {
      break;
    }

    ++a1;
    ++a2;
  }

  v7 = *a2;
  v5 = v7;
  if (!*a1)
  {
LABEL_10:
    if (v5)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    return 1;
  }

  v8 = __tolower(*a1);
  if (v8 < __tolower(v7))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

char *__cdecl strdup(const char *__s1)
{
  v2 = strlen(__s1);
  result = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (result)
  {

    return strcpy(result, __s1);
  }

  return result;
}

uint64_t atoiOK(char *a1, _DWORD *a2)
{
  v3 = *a1;
  *a2 = 0;
  if (v3 == 45)
  {
    v4 = a1 + 1;
  }

  else
  {
    v4 = a1;
  }

  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      return 0;
    }

    if (!isspace(*v4))
    {
      break;
    }

    ++v4;
  }

  v6 = 0;
  for (i = v5; ; i = v11)
  {
    v8 = i;
    v9 = i - 48;
    if (v9 >= 0xA)
    {
      break;
    }

    if (v6 > 214748364)
    {
      return 0;
    }

    v10 = 10 * v6;
    *a2 = 10 * v6;
    if (10 * v6 > -2147483601 - v8)
    {
      return 0;
    }

    v6 = v10 + v9;
    *a2 = v10 + v9;
    v11 = *++v4;
  }

  v13 = 1;
  while (i)
  {
    result = isspace(i);
    if (!result)
    {
      return result;
    }

    i = v4[v13++];
  }

  if (v3 == 45)
  {
    *a2 = -v6;
  }

  return 1;
}

uint64_t cleanLiteral(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a2)
  {
    if (*a1 != a2)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = a1 + 1;
  }

  v4 = 0;
  for (i = v3; ; v3 = i)
  {
    v7 = *i++;
    v6 = v7;
    if (v7 == a3 || v6 == 0)
    {
      break;
    }

    if (v6 == 92)
    {
      i = v3 + 2;
      v9 = v3[1];
      LOBYTE(v6) = v9 - 48;
      if ((v9 - 48) >= 8)
      {
        if (v9 == 98)
        {
          LOBYTE(v6) = 8;
        }

        else if (v9 == 102)
        {
          LOBYTE(v6) = 12;
        }

        else
        {
          if (v9 == 116)
          {
            LOBYTE(v6) = 9;
          }

          else
          {
            LOBYTE(v6) = v3[1];
          }

          if (v9 == 114)
          {
            LOBYTE(v6) = 13;
          }

          if (v9 == 110)
          {
            LOBYTE(v6) = 10;
          }
        }
      }

      else
      {
        v10 = v3 + 4;
        v11 = 2;
        while (1)
        {
          v12 = *i;
          if (v12 > 55 || (v12 - 48) > 9)
          {
            break;
          }

          ++i;
          LOBYTE(v6) = v12 + 8 * v6 - 48;
          if (!--v11)
          {
            i = v10;
            break;
          }
        }
      }
    }

    *a1++ = v6;
    v4 = (v4 + 1);
  }

  *a1 = 0;
  return v4;
}

uint64_t strncpyWithEllipsis(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; a3 != i; ++i)
  {
    if (!*(a2 + i))
    {
      a3 = i;
      break;
    }

    *(result + i) = *(a2 + i);
  }

  *(result + a3) = 0;
  if (*(a2 + a3))
  {
    v4 = a3 - 1;
    v5 = -3;
    do
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        *(result + v4) = 46;
      }

      ++v5;
      --v4;
    }

    while (v5);
  }

  return result;
}

uint64_t changeExtension(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = 0;
  v5 = a3 & ~(a3 >> 31);
  v6 = (a2 + 1);
  while (v5 != v4)
  {
    v7 = *(result + v4);
    if (!*(result + v4) || v7 == 46)
    {
      if (a4 && *a4)
      {
        LODWORD(v4) = v4 + 1;
        *(v6 - 1) = 46;
        if (a3 <= v4)
        {
          LODWORD(v5) = v4;
        }

        else
        {
          LODWORD(v5) = a3;
        }

        while (v4 < a3)
        {
          if (!*a4)
          {
            goto LABEL_14;
          }

          *v6++ = *a4++;
          LODWORD(v4) = v4 + 1;
        }
      }

      else
      {
LABEL_14:
        LODWORD(v5) = v4;
      }

      break;
    }

    *(v6 - 1) = v7;
    ++v4;
    ++v6;
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t changeMatchingExt(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, _BYTE *a5)
{
  result = hasExtension(a1, a2);
  if (result)
  {

    return changeExtension(a1, a3, a4, a5);
  }

  else
  {
    v10 = 0;
    v11 = a4 & ~(a4 >> 31);
    while (1)
    {
      if (v11 == v10)
      {
        v10 = a4 & ~(a4 >> 31);
        goto LABEL_11;
      }

      if (!*(a1 + v10))
      {
        break;
      }

      *(a3 + v10) = *(a1 + v10);
      ++v10;
    }

    LODWORD(v11) = v10;
LABEL_11:
    *(a3 + v10) = 46;
    if (a4 <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = a4;
    }

    while (++v10 < a4)
    {
      if (!*a5)
      {
        v12 = v10;
        break;
      }

      *(a3 + v10) = *a5++;
    }

    *(a3 + v12) = 0;
  }

  return result;
}

BOOL hasExtension(_BOOL8 result, _BYTE *a2)
{
  if (result)
  {
    for (i = (result + 1); ; ++i)
    {
      v3 = *(i - 1);
      if (!*(i - 1) || v3 == 46)
      {
        break;
      }
    }

    if (a2 && *(i - 1))
    {
      if (!*a2)
      {
        return 0;
      }

      do
      {
        v5 = *i++;
        v4 = v5;
        v7 = *a2++;
        v6 = v7;
      }

      while (v4 == v7 && v6 != 0);
      return v4 == v6;
    }

    result = v3 == 0;
    if (a2 && !*(i - 1))
    {
      return *a2 == 0;
    }
  }

  return result;
}

uint64_t stripPath(uint64_t result)
{
  if (result)
  {
    v1 = 0;
LABEL_3:
    for (i = v1; *(result + i); ++i)
    {
      if (*(result + i) == 47)
      {
        v1 = i + 1;
        goto LABEL_3;
      }
    }

    result += v1;
  }

  return result;
}

_BYTE *stripFileName(_BYTE *result, _BYTE *a2)
{
  v2 = a2;
  while (1)
  {
    v3 = *result;
    if (!*result)
    {
      break;
    }

    if (v3 == 47)
    {
      v2 = a2;
    }

    *a2++ = v3;
    ++result;
  }

  *v2 = 0;
  return result;
}

uint64_t bareFilename(uint64_t a1, uint64_t a2, int a3)
{
  v5 = stripPath(a1);

  return changeExtension(v5, a2, a3, 0);
}

const char *fileExists(const char *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      bzero(&v2, 0x90uLL);
      return (stat(v1, &v2) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *filenameModTime(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    bzero(&v2, 0x90uLL);
    if (stat(v1, &v2) < 0)
    {
      return 0;
    }

    else
    {
      return v2.st_mtimespec.tv_sec;
    }
  }

  return result;
}

__darwin_time_t fileModTime(__darwin_time_t result)
{
  if (result)
  {
    v1 = result;
    bzero(&v3, 0x90uLL);
    v2 = fileno(v1);
    if (fstat(v2, &v3) < 0)
    {
      return 0;
    }

    else
    {
      return v3.st_mtimespec.tv_sec;
    }
  }

  return result;
}

uint64_t fileFindProgDir(uint64_t __s, char *a2)
{
  if (__s)
  {
    v2 = __s;
    if (!*__s)
    {
      return 0;
    }

    if (strchr(__s, 47))
    {
      stripFileName(v2, a2);
    }

    else
    {
      __s = fileFindInPath();
      if (!__s)
      {
        return __s;
      }

      v4 = strlen(a2);
      a2[v4 - strlen(v2)] = 0;
    }

    return 1;
  }

  return __s;
}

uint64_t fileFindInPath()
{
  v0 = MEMORY[0x28223BE20]();
  v14 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    goto LABEL_12;
  }

  v2 = v0;
  if (!*v0)
  {
    goto LABEL_12;
  }

  v3 = v1;
  if (fileExists(v0))
  {
    if (v3)
    {
      strcpy(v3, v2);
    }

    v4 = 1;
    goto LABEL_13;
  }

  v5 = getenv("PATH");
  if (!v5)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = strlen(v5);
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  v9 = strcpy(v8, v6);
  if (strtok(v9, ":"))
  {
    while (1)
    {
      __strcpy_chk();
      v10 = &__s[strlen(__s)];
      *v10 = 47;
      strcpy(v10 + 1, v2);
      if (fileExists(__s))
      {
        break;
      }

      if (!strtok(0, ":"))
      {
        goto LABEL_11;
      }
    }

    if (v3)
    {
      strcpy(v3, __s);
    }

    v4 = 1;
  }

  else
  {
LABEL_11:
    v4 = 0;
  }

  free(v8);
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void *hashNew(int a1, char a2, int a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10A0040E78F1B74uLL);
  v7 = v6;
  if (v6)
  {
    if (a1 < 1)
    {
      a1 = 211;
    }

    else if (a3)
    {
      if ((a1 & 1) == 0 && a1 < 0x7FFFFFFE)
      {
        ++a1;
      }

LABEL_9:
      if (a1 <= 2147483645)
      {
        v9 = 2;
        while (v9 < a1)
        {
          if (!(a1 % v9++))
          {
            a1 += 2;
            goto LABEL_9;
          }
        }
      }
    }

    *v6 = a1;
    *(v6 + 4) = a2;
    v11 = malloc_type_calloc(a1, 8uLL, 0x2004093837F09uLL);
    v7[1] = v11;
    if (!v11)
    {
      free(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t hashDelete(void *a1, int a2, int a3)
{
  if (a1)
  {
    if (a1[1])
    {
      for (i = 0; ; ++i)
      {
        v7 = a1[1];
        if (i >= *a1)
        {
          break;
        }

        v8 = v7[i];
        if (v8)
        {
          do
          {
            v9 = *(v8 + 8);
            if (a2 && *(a1 + 4))
            {
              free(*v8);
            }

            if (a3)
            {
              free(*(v8 + 16));
            }

            free(v8);
            v8 = v9;
          }

          while (v9);
        }
      }

      free(v7);
    }

    free(a1);
  }

  return 0;
}

uint64_t hashInsertInt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_82(a1, a2);
  v10 = v7 - v9 * v8;
  v11 = *(*(v6 + 1) + 8 * v10);
  result = OUTLINED_FUNCTION_1_74();
  if (result)
  {
    *result = a2;
    *(result + 8) = v11;
    *(result + 16) = a3;
    *(*(a1 + 8) + 8 * v10) = result;
    return 1;
  }

  return result;
}

uint64_t hashLookupInt(uint64_t a1, unsigned int a2)
{
  for (i = (*(a1 + 8) + 8 * ((((a2 ^ HIWORD(a2)) >> 10) & 0xF ^ a2 ^ HIWORD(a2)) % *a1)); ; i = (v3 + 2))
  {
    v3 = *i;
    if (!v3)
    {
      return 0;
    }

    if (*v3 == a2)
    {
      break;
    }
  }

  return OUTLINED_FUNCTION_2_68(v3);
}

uint64_t hashDeleteInt(_DWORD *a1, unsigned int a2)
{
  v2 = OUTLINED_FUNCTION_0_82(a1, a2);
  v8 = v5 - v7 * v6;
  v9 = *(v2 + 1);
  v10 = *(v9 + 8 * v8);
  if (*v10 == v3)
  {
    *(v9 + 8 * v8) = *(v10 + 1);
    if (v4)
    {
LABEL_3:
      free(*(v10 + 2));
    }
  }

  else
  {
    do
    {
      v12 = v10;
      v10 = *(v10 + 1);
      if (!v10)
      {
        return 0;
      }
    }

    while (*v10 != v3);
    v12[1] = *(v10 + 1);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  free(v10);
  return 1;
}

uint64_t hashMoveInt(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  v4 = (((a2 ^ HIWORD(a2)) >> 10) & 0xF ^ a2 ^ HIWORD(a2)) % *a1;
  v5 = (*(a1 + 8) + 8 * v4);
  while (1)
  {
    v6 = *v5;
    if (!*v5)
    {
      return 0;
    }

    if (*v6 == a2)
    {
      break;
    }

    v5 = (v6 + 8);
    v3 = v6;
  }

  v8 = (((a3 ^ HIWORD(a3)) >> 10) & 0xF ^ a3 ^ HIWORD(a3)) % *a1;
  *v6 = a3;
  if (v8 != v4)
  {
    if (v3)
    {
      v9 = (v3 + 8);
    }

    else
    {
      v9 = (*(a1 + 8) + 8 * v4);
    }

    *v9 = *(v6 + 8);
    v10 = *(a1 + 8);
    *(v6 + 8) = *(v10 + 8 * v8);
    *(v10 + 8 * v8) = v6;
  }

  return OUTLINED_FUNCTION_2_68(v6);
}

uint64_t hashInsertString(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = stringHashFunction(a1, a2);
  v7 = *(*(a1 + 8) + 8 * v6);
  result = OUTLINED_FUNCTION_1_74();
  if (result)
  {
    *(result + 8) = v7;
    *(result + 16) = a3;
    *result = a2;
    *(*(a1 + 8) + 8 * v6) = result;
    return 1;
  }

  return result;
}

uint64_t stringHashFunction(int *a1, _BYTE *a2)
{
  v2 = 0;
  while (*a2)
  {
    v2 = (*a2 + 16 * v2) & 0xFFFFFFFF0FFFFFFFLL ^ ((*a2 + 16 * v2) >> 24) & 0xF0;
    ++a2;
  }

  return (v2 % *a1);
}

uint64_t hashLookupString(uint64_t a1, char *a2)
{
  v3 = *(a1 + 8);
  for (i = (v3 + 8 * stringHashFunction(a1, a2)); ; i = (v5 + 8))
  {
    v5 = *i;
    if (!*i)
    {
      return 0;
    }

    if (!strcmp(*v5, a2))
    {
      break;
    }
  }

  return *(v5 + 16);
}

uint64_t hashDeleteString(uint64_t a1, char *a2, int a3, int a4)
{
  v8 = stringHashFunction(a1, a2);
  v9 = *(a1 + 8);
  v10 = *(v9 + 8 * v8);
  if (!strcmp(*v10, a2))
  {
    *(v9 + 8 * v8) = *(v10 + 8);
    if (a3)
    {
LABEL_7:
      free(*v10);
    }
  }

  else
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
      if (!v10)
      {
        return 0;
      }
    }

    while (strcmp(*v10, a2));
    *(v11 + 8) = *(v10 + 8);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  if (a4)
  {
    free(*(v10 + 16));
  }

  free(v10);
  return 1;
}

uint64_t hashMoveString(uint64_t a1, char *a2, _BYTE *a3)
{
  v6 = 0;
  v7 = stringHashFunction(a1, a2);
  v8 = (*(a1 + 8) + 8 * v7);
  while (1)
  {
    v9 = *v8;
    if (!*v8)
    {
      return 0;
    }

    if (!strcmp(*v9, a2))
    {
      break;
    }

    v8 = (v9 + 8);
    v6 = v9;
  }

  v11 = stringHashFunction(a1, a3);
  *v9 = a3;
  if (v11 != v7)
  {
    if (v6)
    {
      v12 = (v6 + 8);
    }

    else
    {
      v12 = (*(a1 + 8) + 8 * v7);
    }

    *v12 = *(v9 + 8);
    v13 = *(a1 + 8);
    *(v9 + 8) = *(v13 + 8 * v11);
    *(v13 + 8 * v11) = v9;
  }

  return *(v9 + 16);
}

BOOL hashIterConstruct(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v2 = **(a2 + 8);
  *(a1 + 16) = v2;
  return v2 || hashIterNext(a1);
}

BOOL hashIterNext(uint64_t a1)
{
  i = *(a1 + 16);
  if (!i)
  {
    goto LABEL_4;
  }

  for (i = *(i + 8); ; i = *(*(*a1 + 8) + 8 * v2))
  {
    *(a1 + 16) = i;
LABEL_4:
    if (i)
    {
      break;
    }

    v2 = *(a1 + 8) + 1;
    *(a1 + 8) = v2;
    if (v2 >= **a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      return i != 0;
    }
  }

  return i != 0;
}

void *OUTLINED_FUNCTION_1_74()
{

  return malloc_type_malloc(0x18uLL, 0x10F2040DD287011uLL);
}

uint64_t ECollection::size(ECollection *this)
{
  ECollectIter::ECollectIter(&v3, this);
  v1 = 0;
  while ((**v4)(v4))
  {
    (*(*v4 + 40))(v4, 0);
    v1 = (v1 + 1);
  }

  ECollectIter::~ECollectIter(&v3);
  return v1;
}

uint64_t ECollectIter::operator++(uint64_t a1)
{
  return (*(**(a1 + 8) + 40))();
}

{
  return (*(**(a1 + 8) + 32))();
}

uint64_t EList::reset(EList *this)
{
  while (1)
  {
    result = (**this)(this);
    if (result)
    {
      break;
    }

    (*(*this + 64))(this);
  }

  return result;
}

void ESList::ESList(ESList *this, const ESList *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_287EDF5F8;
  OUTLINED_FUNCTION_4_59();
  v4 = (v3 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_50(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(this);
    OUTLINED_FUNCTION_11_51();
  }
}

uint64_t ESListIter::operator++(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = *(v1 + 16);
  return v1;
}

{
  v1 = *(*(a1 + 16) + 16);
  *(a1 + 16) = v1;
  return v1;
}

EList *ESList::operator=(EList *a1, uint64_t a2)
{
  EList::reset(a1);
  OUTLINED_FUNCTION_4_59();
  v4 = (a2 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_50(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(a1);
    OUTLINED_FUNCTION_11_51();
  }

  return a1;
}

uint64_t ESList::addToTail(ESList *this, ESList *a2)
{
  if ((**this)(this))
  {
    v4 = (this + 8);
  }

  else
  {
    v4 = (*(this + 2) + 16);
  }

  *v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5)
  {
    *(this + 2) = v5;
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  return 1;
}

uint64_t ESList::addAfter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_53(a1, a2);
  if (v3 != v2[2])
  {
    OUTLINED_FUNCTION_5_58();
  }

  v4 = *(*v2 + 48);

  return v4();
}

void ESList::removeHead(ESList *this)
{
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {
    v3 = 0;
    *(this + 2) = 0;
  }

  else
  {
    v3 = *(v2 + 16);
  }

  *(this + 1) = v3;
  OUTLINED_FUNCTION_1_75();
}

void ESList::removeAfter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  *(v3 + 16) = *(v4 + 16);
  if (v4 == *(a1 + 16))
  {
    *(a1 + 16) = v3;
  }

  OUTLINED_FUNCTION_1_75();
}

void EDList::EDList(EDList *this, const EDList *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_287EDF668;
  OUTLINED_FUNCTION_3_64();
  v4 = (v3 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_50(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(this);
    OUTLINED_FUNCTION_11_51();
  }
}

uint64_t EDListIter::operator++(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = *(v1 + 16);
  return v1;
}

{
  v1 = *(*(a1 + 16) + 16);
  *(a1 + 16) = v1;
  return v1;
}

EList *EDList::operator=(EList *a1, uint64_t a2)
{
  EList::reset(a1);
  OUTLINED_FUNCTION_3_64();
  v4 = (a2 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_50(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(a1);
    OUTLINED_FUNCTION_11_51();
  }

  return a1;
}

uint64_t EDList::addAfter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_53(a1, a2);
  if (v3 != v2[2])
  {
    OUTLINED_FUNCTION_2_69();
  }

  v4 = *(*v2 + 48);

  return v4();
}

uint64_t EDList::addBefore(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_53(a1, a2);
  if (v3 != v2[1])
  {
    OUTLINED_FUNCTION_2_69();
  }

  v4 = *(*v2 + 40);

  return v4();
}

void EDList::removeHead(EDList *this)
{
  v1 = (this + 16);
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 16);
    v1 = (v3 + 24);
  }

  *v1 = 0;
  *(this + 1) = v3;
  OUTLINED_FUNCTION_0_83();
}

void EDList::removeTail(EDList *this)
{
  v1 = *(this + 2);
  v2 = (this + 8);
  if (*(this + 1) == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 24);
    v2 = (v3 + 16);
  }

  *v2 = 0;
  *(this + 2) = v3;
  OUTLINED_FUNCTION_0_83();
}

uint64_t EDList::removeAt(EDList *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 1))
  {
    if (v2 != *(a1 + 2))
    {
      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      *(v4 + 24) = v3;
      *(v3 + 16) = v4;
      OUTLINED_FUNCTION_0_83();
    }

    EDList::removeTail(a1);
  }

  return (*(*a1 + 64))();
}

void EDList::removeAfter(EDList *this, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  if (v4 != *(this + 2))
  {
    v5 = *(v4 + 16);
    *(v5 + 24) = v3;
    *(v3 + 16) = v5;
    OUTLINED_FUNCTION_1_75();
  }

  EDList::removeTail(this);
}

void EDList::~EDList(EDList *this)
{
  EDList::~EDList(this);

  JUMPOUT(0x27437BDA0);
}

{
  *this = &unk_287EDF668;
  EList::reset(this);
}

void *ECollectIter::ECollectIter(void *a1, uint64_t a2)
{
  *a1 = &unk_287EDF850;
  a1[1] = (*(*a2 + 8))(a2);
  return a1;
}

void ECollectIter::~ECollectIter(ECollectIter *this)
{
  ECollectIter::~ECollectIter(this);

  JUMPOUT(0x27437BDA0);
}

{
  *this = &unk_287EDF850;
  MEMORY[0x27437BDA0](*(this + 1), 0x81C40B8603338);
}

void OUTLINED_FUNCTION_2_69()
{

  operator new();
}

void OUTLINED_FUNCTION_5_58()
{

  operator new();
}

void OUTLINED_FUNCTION_6_57(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
}

void OUTLINED_FUNCTION_10_52()
{

  operator new();
}

uint64_t IndexQueue::addOffsetFromLast(IndexQueue *this, int a2, uint64_t a3)
{
  LODWORD(v6[0]) = a2;
  v6[1] = a3;
  result = EListQueue::add(this, v6);
  if (result)
  {
    *(this + 3) += a3;
    return 1;
  }

  return result;
}

uint64_t IndexQueue::reduceLeadTime(IndexQueue *this, unint64_t a2)
{
  LeadTime = a2;
  if (IndexQueue::getLeadTime(this) < a2)
  {
    LeadTime = IndexQueue::getLeadTime(this);
  }

  v4 = (*(*this + 24))(this);
  *(v4 + 8) -= LeadTime;
  return OUTLINED_FUNCTION_0_84();
}

uint64_t IndexQueue::reduceLeadTime(IndexQueue *this)
{
  v2 = *((*(*this + 24))(this) + 8);
  *((*(*this + 24))(this) + 8) = 0;
  return OUTLINED_FUNCTION_0_84();
}

uint64_t IndexQueue::increaseLeadTime(IndexQueue *this, uint64_t a2)
{
  result = (**this)(this);
  if (!result)
  {
    *(this + 3) += a2;
    result = (*(*this + 24))(this);
    *(result + 8) += a2;
  }

  return result;
}

void IndexQueue::remove(IndexQueue *this)
{
  v2 = *(*(*this + 24))(this);
  *(this + 3) -= *((*(*this + 24))(this) + 8);
  ESList::removeHead(this);
}

void IniFileWriter::IniFileWriter(IniFileWriter *this, const char *a2)
{
  *this = 0;
  *(this + 514) = 0;
  *(this + 516) = 0;
  *(this + 515) = 0;
  if (a2)
  {
    v3 = this + 8;
    v4 = strcpy(this + 8, a2);
    *&v3[strlen(v4)] = 47;
    *&v3[strlen(this + 8)] = 0x696E692E696365;
  }
}

void IniFileWriter::~IniFileWriter(IniFileWriter *this)
{
  v2 = *(this + 514);
  if (v2)
  {
    MEMORY[0x27437BD90](v2, 0x1000C8077774924);
    *(this + 514) = 0;
  }
}

void IniFileWriter::readFileIntoMemory(IniFileWriter *this, const char *a2)
{
  OUTLINED_FUNCTION_5_59();
  *(v4 + 4120) = xmmword_26E1F93F0;
  v5 = *(v4 + 4112);
  if (v5)
  {
    MEMORY[0x27437BD90](v5, v2);
    *(this + 514) = 0;
    v6 = *(this + 516);
  }

  operator new[]();
}

uint64_t IniFileWriter::stringSearch(IniFileWriter *this, const char *__s, uint64_t a3, uint64_t a4)
{
  v8 = strlen(__s);
  v9 = __s + 1;
  while (1)
  {
    v10 = a3;
    if (a3 >= a4)
    {
      break;
    }

    v11 = *(this + 514);
    v12 = *(v11 + a3);
    if (v12 == *__s)
    {
      v13 = 0;
      v14 = v11 + a3 + 1;
      v15 = a3;
      do
      {
        ++v15;
        v16 = v13 + 1;
        v17 = v13 + 1 + a3;
        v18 = *(v14 + v13);
        v19 = v9[v13];
        v21 = v17 < a4 && v18 == v19 && v16 < v8;
        v13 = v16;
      }

      while (v21);
      a3 += v16;
      if (v8 == v16)
      {
        if (v18 <= 0x3D && ((1 << v18) & 0x2000000000000401) != 0)
        {
          v10 += v16;
          return v10 - v8;
        }

        if (v12 == 91 && !*v9)
        {
          v10 = v15;
          return v10 - v8;
        }
      }
    }

    else
    {
      v23 = v11 + 1;
      if (v12)
      {
        while (v12 != 10)
        {
          if (v10 >= a4)
          {
            v10 = a4;
            break;
          }

          v12 = *(v23 + v10++);
          if (!v12)
          {
            break;
          }
        }
      }

      if (v10 >= a4)
      {
        a3 = v10;
      }

      else
      {
        a3 = v10 + 1;
      }
    }
  }

  v8 = 0;
  return v10 - v8;
}

void IniFileWriter::writeToMemory(IniFileWriter *this, char *a2, char *a3, char *a4)
{
  v5 = a3;
  if (!a2)
  {
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  for (i = a2; ; ++i)
  {
    v8 = *i;
    v9 = IniFileWriter::ensureBufferSpace(this);
    if (!v8)
    {
      break;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_4_60(*i);
    }

    OUTLINED_FUNCTION_0_85();
    if (!v10)
    {
      return;
    }
  }

  if (v9)
  {
    OUTLINED_FUNCTION_1_76();
    *(v11 + v12) = 10;
    if (v5)
    {
LABEL_13:
      while (1)
      {
        v13 = *v5;
        v14 = IniFileWriter::ensureBufferSpace(this);
        if (!v13)
        {
          break;
        }

        if (v14)
        {
          OUTLINED_FUNCTION_4_60(*v5);
        }

        OUTLINED_FUNCTION_0_85();
        ++v5;
        if (!v15)
        {
          return;
        }
      }

      if (v14)
      {
        OUTLINED_FUNCTION_1_76();
        *(v16 + v17) = 61;
        if (a4)
        {
LABEL_20:
          while (1)
          {
            v18 = *a4;
            v19 = IniFileWriter::ensureBufferSpace(this);
            if (!v18)
            {
              break;
            }

            if (v19)
            {
              OUTLINED_FUNCTION_4_60(*a4);
            }

            OUTLINED_FUNCTION_0_85();
            ++a4;
            if (!v20)
            {
              return;
            }
          }

          if (v19)
          {
            OUTLINED_FUNCTION_1_76();
            *(v21 + v22) = 10;
          }
        }
      }

      return;
    }

LABEL_9:
    if (a4)
    {
      goto LABEL_20;
    }
  }
}

uint64_t IniFileWriter::ensureBufferSpace(IniFileWriter *this)
{
  if (*(this + 516) <= *(this + 515))
  {
    IniFileWriter::doubleBuffer(this);
  }

  return 1;
}

uint64_t IniFileWriter::goEndSection(IniFileWriter *this)
{
  v1 = *(this + 514);
  for (i = *(this + 515); ; *(this + 515) = i)
  {
    v3 = *(v1 + i);
    if (v3 == 10)
    {
      break;
    }

    if (!*(v1 + i))
    {
      return v3;
    }

LABEL_9:
    ++i;
  }

  v4 = *(v1 + i + 1);
  if (v4 != 10 && v4 != 0)
  {
    goto LABEL_9;
  }

  *(this + 515) = i + 1;
  return 1;
}

uint64_t IniFileWriter::goEndKey(IniFileWriter *this)
{
  v1 = *(this + 514);
  for (i = *(this + 515); ; *(this + 515) = i)
  {
    v3 = *(v1 + i);
    if (!*(v1 + i))
    {
      break;
    }

    if (v3 == 61)
    {
      *(this + 515) = i + 1;
      return 1;
    }

    ++i;
  }

  return v3;
}

uint64_t IniFileWriter::goEndData(IniFileWriter *this, uint64_t *a2)
{
  v2 = *(this + 514);
  for (i = *a2; ; *a2 = i)
  {
    result = *(v2 + i);
    if (!*(v2 + i))
    {
      break;
    }

    if (result == 10)
    {
      *a2 = i + 1;
      return 1;
    }

    ++i;
  }

  return result;
}

uint64_t IniFileWriter::writeFileFromMemory(IniFileWriter *this)
{
  *(this + 515) = 0;
  v2 = fopen(this + 8, "w");
  *this = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 515);
  while (1)
  {
    v4 = *(this + 514);
    if (!*(v4 + v3))
    {
      v5 = 1;
      goto LABEL_9;
    }

    if (fputc(*(v4 + v3), *this) == -1)
    {
      break;
    }

    OUTLINED_FUNCTION_0_85();
  }

  v5 = 0;
LABEL_9:
  fclose(*this);
  return v5;
}

void RequestLicense::RequestLicense(RequestLicense *this)
{
  *this = &unk_287EDF8C0;
  OUTLINED_FUNCTION_0_86(this);
}

{
  *this = &unk_287EDF8C0;
  OUTLINED_FUNCTION_0_86(this);
}

BOOL RequestLicense::queryInterface(RequestLicense *this, uint64_t a2, void **a3)
{
  *a3 = 0;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 0;
  }

  *a3 = this;
  (*(*this + 8))(this);
  return *a3 != 0;
}

void init_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x260uLL, 0x10F004008EEF3F9uLL);
  *(a1 + 184) = v2;
  bzero(v2, 0x260uLL);
  v3 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL);
  **(a1 + 184) = v3;
  *v3 = "STATEMENT";
  OUTLINED_FUNCTION_1_77();
  *(v4 + 8) = "TEST";
  OUTLINED_FUNCTION_1_77();
  *(v5 + 16) = "NULL";
  OUTLINED_FUNCTION_1_77();
  *(v6 + 24) = "LOOP";
  OUTLINED_FUNCTION_1_77();
  *(v7 + 32) = "COMMAND";
  *(**(a1 + 184) + 40) = &unk_26E1F9428;
  v8 = *(a1 + 184);
  *(v8 + 8) = 3;
  *(v8 + 28) = 2;
  *(v8 + 444) = 5;
  *(v8 + 496) = 1;
  *(v8 + 528) = &unk_26E1F9428;
}

void init_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 184);
    if (*v2)
    {
      free(*v2);
      v2 = *(a1 + 184);
      *v2 = 0;
    }

    bzero(v2, 0x260uLL);
    free(*(a1 + 184));
    *(a1 + 184) = 0;
  }
}

uint64_t vcmdinit(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  *(v2 + 472) = 14000;
  *(v3 + 8864) = 1;
  *(v3 + 9084) = *(a1 + 288) + 6;
  result = logicalIOInit(a1, *(v2 + 448) + *(a1 + 304), errorIgnore);
  if (result)
  {
    v5 = builtInLogicalFiles(a1);
    while (v5 < *(a1 + 304))
    {
      v6 = vfdef_lf(a1, *(*(a1 + 296) + 8 * v5++));
      if (v6 == -1)
      {
        return 0;
      }
    }

    result = logicalFileAddPhysical(a1, **(a1 + 216), "null", (*(a1 + 216) + 240), 0, 0);
    if (result)
    {
      v7 = *(*(a1 + 216) + 5);
      v8 = OUTLINED_FUNCTION_0_87();
      result = logicalFileAddPhysical(v8, v9, v10, v11, v12, 1);
      if (result)
      {
        v13 = *(*(a1 + 216) + 1);
        v14 = OUTLINED_FUNCTION_0_87();
        result = logicalFileAddPhysical(v14, v15, v16, v17, v18, 0);
        if (result)
        {
          v19 = *(*(a1 + 216) + 4);
          v20 = OUTLINED_FUNCTION_0_87();
          result = logicalFileAddPhysical(v20, v21, v22, v23, v24, 1);
          if (result)
          {
            v25 = *(*(a1 + 216) + 2);
            v26 = OUTLINED_FUNCTION_0_87();
            result = logicalFileAddPhysical(v26, v27, v28, v29, v30, 1);
            if (result)
            {
              result = logicalFileOpen(a1, "pgmin", 0);
              if (result)
              {
                result = logicalFileOpen(a1, "pgmout", 1);
                if (result)
                {
                  result = logicalFileOpen(a1, "cmdin", 0);
                  if (result)
                  {
                    result = logicalFileOpen(a1, "cmdout", 1);
                    if (result)
                    {
                      result = logicalFileOpen(a1, "prompt", 1);
                      if (result)
                      {
                        result = vmeminit(a1);
                        if (result)
                        {
                          result = vdelinit(a1);
                          if (result)
                          {
                            result = vdltinit(a1, 1);
                            if (result)
                            {
                              result = vdictinit(a1);
                              if (result)
                              {
                                vlinkinit(a1);
                                return 1;
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

uint64_t vlinkinit(uint64_t result)
{
  v1 = 0;
  for (i = 9224; ; i += 120)
  {
    v3 = *(result + 192);
    if (v1 >= *(v3 + 9114))
    {
      break;
    }

    v4 = *(v3 + i - 48);
    if (v4)
    {
      **v4 = v3 + i - 56;
      **(v4 + 8) = *(v3 + i);
      **(v4 + 24) = *(v4 + 16);
    }

    ++v1;
  }

  v5 = *(v3 + 9112) & ~(*(v3 + 9112) >> 31);
  v6 = (v3 + 9136);
  if ((*(v3 + 9112) & ~(*(v3 + 9112) >> 31)) != 0)
  {
    do
    {
      v7 = *(v6 - 2);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 16) + 80 * *(v6 - 4);
          *v6 = v9;
          *(v9 + 40) = v7;
        }
      }

      --v5;
      v6 += 3;
    }

    while (v5);
  }

  return result;
}

double logio_new(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x178uLL, 0x10D0040C1D992DBuLL);
    *(a1 + 216) = v2;
    bzero(v2, 0x178uLL);
    v3 = *(a1 + 216);
    *(v3 + 4) = -1;
    *v3 = -1;
    v4 = *&off_28203C170;
    *(v3 + 80) = xmmword_28203C160;
    *(v3 + 96) = v4;
    v5 = unk_28203C150;
    *(v3 + 48) = diskFileClass_glob;
    *(v3 + 64) = v5;
    v6 = *(a1 + 216);
    v7 = unk_28203C190;
    v6[7] = dynaBufFileClass_glob;
    v6[8] = v7;
    v8 = *&off_28203C1B0;
    v6[9] = xmmword_28203C1A0;
    v6[10] = v8;
    v9 = *(a1 + 216);
    v10 = *&off_28203C1F0;
    v9[13] = xmmword_28203C1E0;
    v9[14] = v10;
    v11 = unk_28203C1D0;
    v9[11] = stdTermFileClass_glob;
    v9[12] = v11;
    v12 = *(a1 + 216);
    v13 = *&off_28203C230;
    v12[17] = xmmword_28203C220;
    v12[18] = v13;
    v14 = unk_28203C210;
    v12[15] = nullFileClass_glob;
    v12[16] = v14;
    v15 = *(a1 + 216);
    v16 = unk_28203C250;
    v15[19] = stdErrorFileClass_glob;
    v15[20] = v16;
    result = *&xmmword_28203C260;
    v18 = *&off_28203C270;
    v15[21] = xmmword_28203C260;
    v15[22] = v18;
  }

  return result;
}

void logio_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 216);
    if (v2)
    {
      bzero(v2, 0x178uLL);
      free(*(a1 + 216));
      *(a1 + 216) = 0;
    }
  }
}

uint64_t logicalIOInit(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 216);
  *(v4 + 32) = a3;
  *(v4 + 16) = a2;
  result = malloc_type_calloc(0x40uLL, a2, 0x1020040D7C1602FuLL);
  *(*(a1 + 216) + 8) = result;
  if (result)
  {
    v6 = addLogicalFile(a1, "pgmin");
    **(a1 + 216) = v6;
    if (v6 == -1)
    {
      return 0;
    }

    v7 = addLogicalFile(a1, "pgmout");
    *(*(a1 + 216) + 5) = v7;
    if (v7 == -1)
    {
      return 0;
    }

    v8 = addLogicalFile(a1, "cmdin");
    *(*(a1 + 216) + 1) = v8;
    if (v8 == -1)
    {
      return 0;
    }

    v9 = addLogicalFile(a1, "cmdout");
    *(*(a1 + 216) + 4) = v9;
    if (v9 == -1)
    {
      return 0;
    }

    v10 = addLogicalFile(a1, "prompt");
    *(*(a1 + 216) + 2) = v10;
    if (v10 == -1)
    {
      return 0;
    }

    v11 = addLogicalFile(a1, "prmout");
    v12 = *(a1 + 216);
    *(v12 + 3) = v11;
    if (v11 == -1)
    {
      return 0;
    }

    else
    {
      *(v12 + 20) = v11 + 1;
      return 1;
    }
  }

  return result;
}

uint64_t addLogicalFile(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return -1;
  }

  v4 = vffind_lf(a1, a2);
  v5 = *(a1 + 216);
  if (v4 != -1)
  {
    (*(v5 + 32))(a1, "LFILE", "%s is already defined");
    return -1;
  }

  v6 = 0;
  v7 = *(v5 + 8);
  do
  {
    v8 = v6;
  }

  while (*(v7 + (v6++ << 6)));
  if (*(v5 + 16) <= v8)
  {
    (*(v5 + 32))(a1, "LOGIO", "There are too many interactive lfiles; use a bigger -lfiles argument on the DeltaTools command line");
    return -1;
  }

  v10 = v7 + (v8 << 6);
  strncpy(v10, a2, 0x14uLL);
  *(v10 + 28) = 0;
  *(v10 + 20) = 0;
  *(v10 + 44) = 0;
  *(v10 + 36) = 0;
  v11 = *(v10 + 48);
  if (!v11)
  {
    v13 = dynaBufNew(0);
    *(v10 + 48) = v13;
    if (v13)
    {
      return v8;
    }

    goto LABEL_14;
  }

  dynaBufReset(v11);
  if (!*(v10 + 48))
  {
LABEL_14:
    *v10 = 0;
    return -1;
  }

  return v8;
}

void logicalIOCleanup(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (*(v1 + 8))
  {
    for (i = 0; *(v1 + 16) > i; ++i)
    {
      if (*(*(v1 + 8) + (i << 6)))
      {
        vfundef_lf(a1, i);
        v1 = *(a1 + 216);
      }
    }

    *(v1 + 16) = 0;
    free(*(v1 + 8));
    *(*(a1 + 216) + 8) = 0;
  }
}

void vfundef_lf(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_3_66(a1);
  v4 = a2;
  v6 = *(v5 + (a2 << 6) + 40);
  if (v6)
  {
    do
    {
      v7 = v6[2];
      removeOutputElement(v2, v6, a2);
      v6 = v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_0_88();
  *(v8 + 32) = 0;
  v9 = *(v8 + 24);
  if (v9)
  {
    do
    {
      v10 = *(v9 + 72);
      (*(v9 + 64))(v9 + 8);
      free(*v9);
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_1_78();
  *(v11 + (v4 << 6)) = 0;
  OUTLINED_FUNCTION_0_88();
  dynaBufDelete(*(v12 + 48));
  OUTLINED_FUNCTION_0_88();
  *(v14 + 48) = v13;
}

uint64_t vffind_lf(uint64_t a1, char *__s2)
{
  if (__s2 && *__s2)
  {
    v3 = 0;
    v4 = *(a1 + 216);
    v5 = *(v4 + 16);
    while (v5 > v3)
    {
      if (!strcmp((*(v4 + 8) + (v3 << 6)), __s2))
      {
        return v3;
      }

      ++v3;
    }
  }

  return -1;
}

uint64_t logicalFileName(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 216);
  if (*(v2 + 16) < a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8) + (a2 << 6);
  }
}

BOOL vf_eof(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 216) + 8) + (a2 << 6);
  if (*(v2 + 20) != 1)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  return !v3 || (*(v3 + 56))(v3 + 8) != 0;
}

uint64_t vfstat(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 216);
  if (*(v2 + 16) < a2)
  {
    return 0;
  }

  v3 = *(v2 + 8) + (a2 << 6);
  if (!*v3)
  {
    return 0;
  }

  *(v3 + 20);
  v5 = OUTLINED_FUNCTION_4_61();
  result = vf_printf(v5, v6, 1, v7, v8, v9, v10, v11, v3);
  if (result)
  {
    v12 = (v3 + 24);
    if (*(v3 + 24))
    {
      v13 = OUTLINED_FUNCTION_4_61();
      result = vf_puts(v13, v14, v15, 1);
      if (!result)
      {
        return result;
      }

      v16 = (v3 + 24);
      while (1)
      {
        v17 = *v16;
        if (!v17)
        {
          break;
        }

        v18 = *v17;
        v16 = (v17 + 9);
        v19 = OUTLINED_FUNCTION_4_61();
        v25 = vf_printf(v19, v20, 1, "      %.70s\n", v21, v22, v23, v24, v18);
        result = 0;
        if (!v25)
        {
          return result;
        }
      }
    }

    v27 = *(v3 + 40);
    v26 = (v3 + 40);
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_4_61();
      result = vf_puts(v28, v29, v30, 0);
      if (!result)
      {
        return result;
      }

      v31 = v26;
      while (1)
      {
        v32 = *v31;
        if (!*v31)
        {
          break;
        }

        v47 = **(v32 + 8);
        v33 = OUTLINED_FUNCTION_4_61();
        result = vf_printf(v33, v34, 0, "      %.70s", v35, v36, v37, v38, v47);
        if (result)
        {
          if (*v32 != 1 || (v39 = OUTLINED_FUNCTION_4_61(), result = vf_puts(v39, v40, " (+)", 1), result))
          {
            v41 = OUTLINED_FUNCTION_4_61();
            v43 = vf_puts(v41, v42, "\n", 1);
            result = 0;
            v31 = (v32 + 16);
            if (v43)
            {
              continue;
            }
          }
        }

        return result;
      }
    }

    if (*v12)
    {
      return 1;
    }

    if (*v26)
    {
      return 1;
    }

    v44 = OUTLINED_FUNCTION_4_61();
    result = vf_puts(v44, v45, v46, 1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t vf_printf(uint64_t a1, int a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *(a1 + 216);
  v13 = a2;
  v14 = *(v12 + 8) + (a2 << 6);
  if (!*(v14 + 20) && !*(v14 + 56))
  {
    (*(v12 + 32))(a1, "LFILE", "Logical file %s is not open for output", v14);
    v21 = 0;
    *(*(*(a1 + 216) + 8) + (v13 << 6) + 56) = 1;
    return v21;
  }

  if (!a4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_71();
  v16 = malloc_type_malloc(0x200uLL, v15);
  if (v16)
  {
    v17 = v16;
    __vsprintf_chk(v16, 0, 0x200uLL, a4, &a9);
    for (i = (*(*(a1 + 216) + 8) + (v13 << 6) + 40); ; i = (v19 + 16))
    {
      v19 = *i;
      if (!*i)
      {
        break;
      }

      v20 = *(v19 + 8);
      if (v20)
      {
        if (!(*(v20 + 56))(v20 + 16, v17, a3))
        {
          break;
        }
      }
    }

    v21 = v19 == 0;
    free(v17);
    return v21;
  }

  v22 = *(*(a1 + 216) + 32);

  return v22(a1, "Logical I/O", "Out of memory (LOGIO:1)");
}

uint64_t vf_puts(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 216);
  v7 = a2;
  v8 = *(v6 + 8) + (a2 << 6);
  if (*(v8 + 20) || *(v8 + 56))
  {
    for (i = (v8 + 40); ; i = (v10 + 16))
    {
      v10 = *i;
      if (!*i)
      {
        break;
      }

      v11 = *(v10 + 8);
      if (v11)
      {
        result = (*(v11 + 56))(v11 + 16, a3, a4);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  else
  {
    v14 = *(v6 + 8) + (a2 << 6);
    (*(v6 + 32))(a1);
    result = 0;
    *(*(*(a1 + 216) + 8) + (v7 << 6) + 56) = 1;
  }

  return result;
}

uint64_t vfstatall(uint64_t a1, int a2)
{
  result = vf_puts(a1, a2, "logical files:\n", 1);
  if (result)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 216);
      if (*(v5 + 16) <= v4)
      {
        break;
      }

      if (*(v5 + 40))
      {
        break;
      }

      result = vfstat(a1, v4++);
    }

    while (result);
  }

  return result;
}

uint64_t logicalFileOpen(uint64_t a1, char *a2, int a3)
{
  v6 = vffind_lf(a1, a2);
  if (v6 == -1)
  {
    v6 = addLogicalFile(a1, a2);
    if (v6 == -1)
    {
      return 0;
    }
  }

  v7 = v6;
  v8 = *(a1 + 216);
  v9 = *(v8 + 8) + (v6 << 6);
  *(v9 + 56) = 0;
  v10 = *(v9 + 20);
  if (v10)
  {
    if (!a3 && v10 == 2)
    {
      v11 = *(v8 + 32);
      if ((v6 & 0x80000000) == 0)
      {
        *(v8 + 16);
      }

      v22 = "The file %s is currently opened for OUTPUT";
      return v11(a1, "LFILE OPEN", v22);
    }

    if (a3 == 1 && v10 == 1)
    {
      v11 = *(v8 + 32);
      if ((v6 & 0x80000000) == 0)
      {
        *(v8 + 16);
      }

      v22 = "The file %s is currently opened for INPUT";
      return v11(a1, "LFILE OPEN", v22);
    }

    return 1;
  }

  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
LABEL_23:
      v16 = 0;
LABEL_24:
      v17 = (v9 + 40);
      while (1)
      {
        v18 = *v17;
        if (!*v17)
        {
          break;
        }

        if (a3 == 2)
        {
          v19 = 1;
        }

        else
        {
          v19 = *v18;
        }

        v20 = openOutputFile(a1, *(v18 + 8), v19);
        v17 = (v18 + 16);
        if (!v20)
        {
          return 0;
        }
      }

      if (!v16)
      {
        *(v9 + 20) = 2;
        return 1;
      }

      v21 = 1;
      *(v9 + 20) = 1;
      dynaBufReset(*(v9 + 48));
      return v21;
    }

    v15 = *(v9 + 24);
    if (!v15)
    {
      v24 = fileExists(v9);
      v25 = *(a1 + 216);
      if (!v24)
      {
        v12 = *(v25 + 32);
        v13 = "Opening file %s with no input file attached";
        return v12(a1, "LFILE OPEN", v13);
      }

      if (!assignInputFile(a1, v9, v7, (v25 + 48), 0))
      {
        return 0;
      }

      v15 = *(v9 + 24);
    }

    if (openInputFile(a1, v15, v7))
    {
      v16 = 1;
      goto LABEL_24;
    }

    return 0;
  }

  if (*(v9 + 40) || assignOutputFile(a1, v9, v6, (v8 + 48), 0, a3 != 1))
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_60();
  v13 = "Can't open logical file %s with physical file %s";
  return v12(a1, "LFILE OPEN", v13);
}

uint64_t assignOutputFile(uint64_t a1, char *a2, int a3, _OWORD *a4, uint64_t a5, int a6)
{
  result = findOutputFile(a1, a2);
  if (result)
  {
    v13 = result;
    if (findOutputElement(a1, a3, result))
    {
      return 1;
    }

    v20 = *(a1 + 216);
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    if (!a4)
    {
      return result;
    }

    result = malloc_type_malloc(0x58uLL, 0x10F004011FC8696uLL);
    if (!result)
    {
      return result;
    }

    v13 = result;
    strlen(a2);
    OUTLINED_FUNCTION_2_71();
    v16 = malloc_type_malloc(v14 + 1, v15);
    *v13 = v16;
    if (!v16)
    {
      free(v13);
      return 0;
    }

    strcpy(v16, a2);
    v13[1] = 0;
    v17 = a4[2];
    v18 = a4[3];
    v19 = a4[1];
    *(v13 + 1) = *a4;
    *(v13 + 2) = v19;
    *(v13 + 3) = v17;
    *(v13 + 4) = v18;
    v13[3] = *v13;
    v13[4] = a5;
    v20 = *(a1 + 216);
    v13[10] = *(v20 + 24);
    *(v20 + 24) = v13;
  }

  v21 = *(v20 + 8);
  result = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  if (result)
  {
    *result = a6;
    v22 = v21 + (a3 << 6);
    v23 = *(v22 + 40);
    *(v22 + 40) = result;
    *(result + 8) = v13;
    *(result + 16) = v23;
    ++*(v13 + 3);
    if (!*(*(*(a1 + 216) + 8) + (a3 << 6) + 20))
    {
      return 1;
    }

    return openOutputFile(a1, v13, a6);
  }

  return result;
}

uint64_t assignInputFile(uint64_t a1, const char *a2, int a3, _OWORD *a4, uint64_t a5)
{
  result = 0;
  if (a2)
  {
    if (a4)
    {
      result = malloc_type_malloc(0x50uLL, 0xF0040EFA0FAE9uLL);
      if (result)
      {
        v11 = result;
        strlen(a2);
        OUTLINED_FUNCTION_2_71();
        v14 = malloc_type_malloc(v12 + 1, v13);
        *v11 = v14;
        if (v14)
        {
          strcpy(v14, a2);
          v15 = a4[2];
          v16 = a4[3];
          v17 = a4[1];
          *(v11 + 8) = *a4;
          *(v11 + 24) = v17;
          *(v11 + 56) = v16;
          *(v11 + 40) = v15;
          *(v11 + 2) = *v11;
          *(v11 + 3) = a5;
          *(v11 + 9) = 0;
          OUTLINED_FUNCTION_1_78();
          v19 = v18 + (a3 << 6);
          v20 = (v19 + 24);
          v21 = *(v19 + 24);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *(v21 + 72);
            }

            while (v21);
            v20 = (v22 + 72);
          }

          *v20 = v11;
          if (*(v19 + 20) != 1 || *(v19 + 32) || openInputFile(a1, v11, a3))
          {
            return 1;
          }

          else
          {
            OUTLINED_FUNCTION_5_60();
            return v23(a1, "LFILE ASSIGN", "Can't open assigned input file %s", a2);
          }
        }

        else
        {
          free(v11);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t openInputFile(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(a2 + 32))(a1, a2 + 8, 0);
  if (result)
  {
    *(*(*(a1 + 216) + 8) + (a3 << 6) + 32) = a2;
    return 1;
  }

  return result;
}

uint64_t openOutputFile(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if ((*(a2 + 40))(a1, a2 + 16, v5))
  {
    ++*(a2 + 8);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_60();
    return v7(a1, "LFILE OPEN", "Can't open %s for output", *a2);
  }
}

void vfclose_lf(uint64_t a1)
{
  OUTLINED_FUNCTION_3_66(a1);
  v2 = v1;
  v4 = *(v3 + (v1 << 6) + 40);
  while (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v4 = v6;
    v7 = *(v5 + 8) - 1;
    *(v5 + 8) = v7;
    if (!v7)
    {
      (*(v5 + 72))(v5 + 16);
      v4 = v6;
    }
  }

  OUTLINED_FUNCTION_1_78();
  for (i = (v8 + (v2 << 6) + 24); ; i = (v10 + 72))
  {
    v10 = *i;
    if (!*i)
    {
      break;
    }

    (*(v10 + 64))(v10 + 8);
  }

  OUTLINED_FUNCTION_1_78();
  v12 = v11 + (v2 << 6);
  *(v12 + 20) = 0;
  *(v12 + 32) = 0;
}

uint64_t vf_gets(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 216);
  v6 = *(v5 + 8) + (a2 << 6);
  if (*(v6 + 20) != 1)
  {
    return (*(v5 + 32))(a1, "LOGIO", "Logical file %s is not open for input");
  }

  if (!*(v6 + 24))
  {
    return (*(v5 + 32))(a1, "LOGIO", "No input files are assigned to logical file %s");
  }

  v7 = *(v6 + 32);
  if (v7)
  {
    dynaBufReset(*(v6 + 48));
    do
    {
      if ((*(v7 + 56))(v7 + 8))
      {
        if (!*(v7 + 72))
        {
          return 0;
        }

        (*(v7 + 64))(v7 + 8);
        v7 = *(v7 + 72);
        *(v6 + 32) = v7;
        if (!openInputFile(a1, v7, a2))
        {
          return 0;
        }

        if (!v7)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (!(*(v7 + 40))(v7 + 8, *(v6 + 48), a3))
      {
        return 0;
      }
    }

    while (!dynaBufLength(*(v6 + 48)));
    v9 = dynaBufContents(*(v6 + 48));
    v14 = 1;
    if (vf_puts(a1, a2, v9, 1))
    {
      return v14;
    }

    OUTLINED_FUNCTION_5_60();
    v11 = "Can't echo input to file %s";
  }

  else
  {
    v10 = *(v5 + 32);
    v11 = "No input file is open for logical file %s";
  }

  return v10(a1, "LOGIO", v11);
}

uint64_t vf_getc(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_3_66(a1);
  if (!dynaBufAtEnd(*(v4 + (a2 << 6) + 48)))
  {
    goto LABEL_4;
  }

  if (vf_gets(v2, a2, &unk_26E1F942A) == 1)
  {
    OUTLINED_FUNCTION_0_88();
    dynaBufMoveAbs(*(v5 + 48), 0);
LABEL_4:
    OUTLINED_FUNCTION_0_88();
    return dynaBufCurrentChar(*(v6 + 48), 1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t vf_ungetc(uint64_t a1)
{
  OUTLINED_FUNCTION_3_66(a1);
  v2 = v1;
  result = dynaBufMoveRel(*(v3 + (v1 << 6) + 48), 0);
  if (result)
  {
    OUTLINED_FUNCTION_1_78();
    dynaBufMoveRel(*(v5 + (v2 << 6) + 48), 0xFFFFFFFF);
    return 1;
  }

  return result;
}

uint64_t logicalFileAddPhysical(uint64_t a1, int a2, char *a3, _OWORD *a4, uint64_t a5, int a6)
{
  if (a6)
  {
    return assignOutputFile(a1, a3, a2, a4, a5, a6 != 1);
  }

  else
  {
    return assignInputFile(a1, a3, a2, a4, a5);
  }
}

uint64_t logicalFileRemovePhysical(uint64_t a1, int a2, char *__s2, int a4)
{
  if (!__s2)
  {
    return 0;
  }

  if (a4)
  {
    if (findInputFile(a1, __s2, a2))
    {
      v7 = OUTLINED_FUNCTION_7_56();
      removeInputFile(v7, v8, a2);
      return 1;
    }

    OUTLINED_FUNCTION_6_58();
    v14 = "The input file %s is not assigned to %s";
  }

  else
  {
    OutputFile = findOutputFile(a1, __s2);
    if (!OutputFile)
    {
      OUTLINED_FUNCTION_5_60();
      return v15(a1, "LFILE REMOVE", "The output physical file %s is not defined", __s2);
    }

    if (findOutputElement(a1, a2, OutputFile))
    {
      v11 = OUTLINED_FUNCTION_7_56();
      removeOutputElement(v11, v12, a2);
      return 1;
    }

    OUTLINED_FUNCTION_6_58();
    v14 = "The output file %s is not assigned to %s";
  }

  return v13(a1, "LFILE REMOVE", v14);
}

const char **findInputFile(uint64_t a1, char *__s2, int a3)
{
  for (i = (*(*(a1 + 216) + 8) + (a3 << 6) + 24); ; i = (v5 + 9))
  {
    v5 = *i;
    if (!*i || !strcmp(*v5, __s2))
    {
      break;
    }
  }

  return v5;
}

void removeInputFile(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(a1 + 216) + 8) + (a3 << 6);
  v8 = (v6 + 24);
  v7 = *(v6 + 24);
  if (v7 == a2)
  {
LABEL_5:
    *v8 = *(a2 + 72);
  }

  else
  {
    while (1)
    {
      v9 = v7;
      v7 = *(v7 + 72);
      if (!v7)
      {
        break;
      }

      if (v7 == a2)
      {
        v8 = (v9 + 72);
        goto LABEL_5;
      }
    }
  }

  if (*(v6 + 32) == a2)
  {
    (*(a2 + 64))(a2 + 8);
    *(v6 + 32) = 0;
    v10 = *(a2 + 72);
    if (v10)
    {
      if (!openInputFile(a1, v10, a3))
      {
        (*(*(a1 + 216) + 32))(a1, "LFILE REMOVE", "Can't open the next input file %s for logical file %s", **(a2 + 72), v6);
        *(v6 + 32) = 0;
      }
    }
  }

  free(*a2);

  free(a2);
}

const char **findOutputFile(uint64_t a1, char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  for (i = (*(a1 + 216) + 24); ; i = (v4 + 10))
  {
    v4 = *i;
    if (!*i || !strcmp(*v4, __s2))
    {
      break;
    }
  }

  return v4;
}

uint64_t findOutputElement(uint64_t a1, int a2, void *a3)
{
  for (i = (*(*(a1 + 216) + 8) + (a2 << 6) + 40); ; i = (result + 16))
  {
    result = *i;
    if (!*i || **(result + 8) == *a3)
    {
      break;
    }
  }

  return result;
}

void removeOutputElement(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 216);
  v6 = *(v5 + 8) + (a3 << 6);
  v7 = *(v6 + 40);
  if (v7 == a2)
  {
    v9 = a2[1];
    *(v6 + 40) = a2[2];
LABEL_6:
    v10 = *(v6 + 20);
    v11 = *(v9 + 8);
    if (v10)
    {
      *(v9 + 8) = --v11;
    }

    if (!v11)
    {
      (*(v9 + 72))(v9 + 16);
    }

    v12 = *(v9 + 12) - 1;
    *(v9 + 12) = v12;
    if (!v12)
    {
      v13 = *(a1 + 216);
      v16 = *(v13 + 24);
      v15 = (v13 + 24);
      v14 = v16;
      if (v16 == v9)
      {
LABEL_15:
        *v15 = *(v14 + 80);
      }

      else
      {
        while (1)
        {
          v17 = v14;
          v14 = *(v14 + 80);
          if (!v14)
          {
            break;
          }

          if (v14 == v9)
          {
            v15 = (v17 + 80);
            v14 = v9;
            goto LABEL_15;
          }
        }
      }

      free(*v9);
      free(v9);
    }

    free(a2);
  }

  else
  {
    while (1)
    {
      v8 = v7;
      v7 = v7[2];
      if (!v7)
      {
        break;
      }

      if (v7 == a2)
      {
        v9 = a2[1];
        v8[2] = a2[2];
        goto LABEL_6;
      }
    }

    (*(v5 + 32))(a1, "LFILE REMOVE", "The output file %s is not assigned to the logical file %s", *a2[1], v6);
  }
}

void logicalFileRemoveAllPhysical(uint64_t a1, char *__s2)
{
  if (__s2)
  {
    for (i = 0; ; ++i)
    {
      v5 = *(*(a1 + 216) + 16);
      if (v5 <= i)
      {
        break;
      }

      if (findInputFile(a1, __s2, i))
      {
        v6 = OUTLINED_FUNCTION_7_56();
        removeInputFile(v6, v7, i);
      }
    }

    OutputFile = findOutputFile(a1, __s2);
    if (OutputFile)
    {
      v9 = OutputFile;
      for (j = 0; v5 > j; ++j)
      {
        if (findOutputElement(a1, j, v9))
        {
          v11 = OUTLINED_FUNCTION_7_56();
          removeOutputElement(v11, v12, j);
          v5 = *(*(a1 + 216) + 16);
        }
      }
    }
  }
}

const char **logicalFileFindPhysical(uint64_t a1, int a2, char *__s2, int a4, int a5)
{
  if (!__s2 || !*__s2)
  {
    return 0;
  }

  if (a4)
  {
    InputFile = findInputFile(a1, __s2, a2);
    if (a5)
    {
      return (InputFile == *(*(*(a1 + 216) + 8) + (a2 << 6) + 32));
    }
  }

  else
  {
    result = findOutputFile(a1, __s2);
    if (!result)
    {
      return result;
    }

    InputFile = findOutputElement(a1, a2, result);
  }

  return (InputFile != 0);
}

void OUTLINED_FUNCTION_6_58()
{
  v2 = *(v0 + 216);
  v3 = *(v2 + 32);
  v4 = *(v2 + 8) + (v1 << 6);
}

BOOL diskFileOpen(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a2 = a1;
  if (*(a2 + 16))
  {
    return 1;
  }

  if (a3 > 2)
  {
    v5 = &unk_26E1F942A;
  }

  else
  {
    v5 = (&off_279DA76E8)[a3];
  }

  v6 = fopen(*(a2 + 8), v5);
  *(a2 + 16) = v6;
  return v6 != 0;
}

uint64_t diskFileRead(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 && !feof(v3))
  {
    while (!feof(*(a1 + 16)))
    {
      if (!fgets(__s, 64, *(a1 + 16)) && !feof(*(a1 + 16)) || !dynaBufAddString(a2, __s, 0))
      {
        goto LABEL_3;
      }

      v8 = dynaBufMoveRel(a2, 0xFFFFFFFF);
      if (dynaBufCurrentChar(a2, 0) == 10)
      {
        v11 = dynaBufMoveRel(a2, 0xFFFFFFFF);
        if (dynaBufCurrentChar(a2, 0) == 32)
        {
          if (v8 != v11)
          {
            v5 = 1;
            v12 = OUTLINED_FUNCTION_2_72();
            dynaBufMoveRel(v12, v13);
            goto LABEL_4;
          }
        }

        else
        {
          if (v8 != v11)
          {
            v14 = OUTLINED_FUNCTION_2_72();
            dynaBufMoveRel(v14, v15);
          }

          dynaBufAddChar(a2, 32, 0);
          v16 = OUTLINED_FUNCTION_1_79();
          dynaBufAddChar(v16, v17, v18);
        }

        break;
      }

      v9 = OUTLINED_FUNCTION_2_72();
      dynaBufMoveRel(v9, v10);
    }

    v5 = 1;
  }

  else
  {
LABEL_3:
    v5 = 0;
  }

LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL diskFileWrite(uint64_t a1, char *a2, int a3)
{
  result = 0;
  if (a2 && *(a1 + 16))
  {
    if (fputs(a2, *(a1 + 16)) == -1)
    {
      return 0;
    }

    else
    {
      return !a3 || fflush(*(a1 + 16)) != -1;
    }
  }

  return result;
}

BOOL diskFileEof(uint64_t *a1)
{
  if (checkInterrupt(*a1))
  {
    setInterrupt(*a1, 0);
    return 1;
  }

  v3 = a1[2];
  if (!v3)
  {
    return 1;
  }

  return feof(v3) != 0;
}

BOOL dynaBufFileOpen(uint64_t a1, void *a2, int a3)
{
  *a2 = a1;
  v4 = a2[2];
  if (v4)
  {
    switch(a3)
    {
      case 2:
        v5 = -1;
        goto LABEL_8;
      case 1:
        dynaBufReset(v4);
        break;
      case 0:
        v5 = 0;
LABEL_8:
        dynaBufMoveAbs(v4, v5);
        break;
    }
  }

  return a2[2] != 0;
}

uint64_t dynaBufFileRead(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  while (1)
  {
    v4 = dynaBufCurrentChar(*(a1 + 16), 1);
    if (!v4 || v4 == 10)
    {
      break;
    }

    if (!dynaBufAddChar(a2, v4, 0))
    {
      return 0;
    }
  }

  addSpace(a2);
  v7 = OUTLINED_FUNCTION_1_79();

  return dynaBufAddChar(v7, v8, v9);
}

uint64_t addSpace(uint64_t *a1)
{
  v2 = dynaBufMoveRel(a1, 0);
  v3 = dynaBufMoveRel(a1, 0xFFFFFFFF);
  result = dynaBufCurrentChar(a1, 0);
  if (result == 32)
  {
    if (v2 != v3)
    {
      v7 = OUTLINED_FUNCTION_2_72();

      return dynaBufMoveRel(v7, v8);
    }
  }

  else
  {
    if (v2 != v3)
    {
      v5 = OUTLINED_FUNCTION_2_72();
      dynaBufMoveRel(v5, v6);
    }

    return dynaBufAddChar(a1, 32, 0);
  }

  return result;
}

uint64_t *dynaBufFileWrite(uint64_t a1, char *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return (dynaBufAddString(result, a2, 0) != 0);
  }

  return result;
}

uint64_t stdTermFileRead(int a1, uint64_t *a2, char *a3)
{
  if (a3)
  {
    fputs(a3, *MEMORY[0x277D85E08]);
  }

  while (1)
  {
    v4 = getchar();
    if (v4 == -1 || v4 == 10)
    {
      break;
    }

    result = dynaBufAddChar(a2, v4, 0);
    if (!result)
    {
      return result;
    }
  }

  addSpace(a2);
  v7 = OUTLINED_FUNCTION_1_79();

  return dynaBufAddChar(v7, v8, v9);
}

BOOL stdTermFileWrite(int a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = MEMORY[0x277D85E08];
  if (fputs(a2, *MEMORY[0x277D85E08]) == -1)
  {
    return 0;
  }

  if (a3)
  {
    return fflush(*v4) != -1;
  }

  return 1;
}

BOOL stdErrorFileWrite(int a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = MEMORY[0x277D85DF8];
  if (fputs(a2, *MEMORY[0x277D85DF8]) == -1)
  {
    return 0;
  }

  if (a3)
  {
    return fflush(*v4) != -1;
  }

  return 1;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}