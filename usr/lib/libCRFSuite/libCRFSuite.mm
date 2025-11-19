uint64_t model_release(_DWORD *a1)
{
  v2 = crfsuite_interlocked_decrement(a1 + 2);
  if (!v2)
  {
    v3 = *a1;
    crf1dt_delete(**(*a1 + 40));
    free(v3[5]);
    free(v3[4]);
    free(v3[1]);
    crf1dm_close(*v3);
    free(v3);
    free(a1);
  }

  return v2;
}

void crf1dt_delete(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    crf1dc_delete(v2);
  }

  free(a1);
}

void crf1dc_delete(void **a1)
{
  if (a1)
  {
    free(a1[9]);
    free(a1[12]);
    free(a1[10]);
    free(a1[3]);
    free(a1[7]);
    free(a1[8]);
    free(a1[6]);
    free(a1[5]);
    free(a1[13]);
    free(a1[11]);
    free(a1[4]);
  }

  free(a1);
}

uint64_t crfsuite_interlocked_decrement(_DWORD *a1)
{
  v1 = (*a1 - 1);
  *a1 = v1;
  return v1;
}

void crf1dm_close(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      cqdb_delete(v2);
    }

    v3 = a1[8];
    if (v3 && !*(a1 + 1))
    {
      cqdb_delete(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[6];
    if (v6)
    {
      free(v6);
    }

    v7 = a1[1];
    if (v7 && *(a1 + 80) == 1)
    {
      free(v7);
    }

    free(a1);
  }
}

FILE **cqdb_writer(FILE *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x1028uLL, 0x1030040A4FE97ADuLL);
  v5 = v4;
  if (v4)
  {
    bzero(v4 + 4, 0x1024uLL);
    *v5 = a2;
    v5[1] = a1;
    v6 = MEMORY[0x29C2730D0](a1);
    *(v5 + 4) = v6;
    *(v5 + 5) = 2072;
    for (i = 4; i != 516; i += 2)
    {
      v5[i] = 0;
    }

    *(v5 + 515) = 0u;
    if (fseek(v5[1], (v6 + 2072), 0))
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t cqdb_writer_put(uint64_t a1, char *__s, unsigned int a3)
{
  v6 = strlen(__s);
  v7 = (v6 + 1);
  v8 = hashlittle(__s, v7, 0);
  if ((a3 & 0x80000000) != 0)
  {
    result = 4294966278;
    goto LABEL_5;
  }

  v9 = v8;
  __ptr = a3;
  fwrite(&__ptr, 1uLL, 4uLL, *(a1 + 8));
  v21 = v6 + 1;
  fwrite(&v21, 1uLL, 4uLL, *(a1 + 8));
  fwrite(__s, v7, 1uLL, *(a1 + 8));
  if (!ferror(*(a1 + 8)))
  {
    v11 = a1 + 16 * v9;
    v12 = *(v11 + 24);
    v13 = *(v11 + 28);
    if (v13 <= v12)
    {
      *(v11 + 28) = 2 * v13 + 2;
      v14 = malloc_type_realloc(*(v11 + 32), 8 * (2 * v13 + 2), 0x100004000313F17uLL);
      *(v11 + 32) = v14;
      if (!v14)
      {
        goto LABEL_21;
      }

      v12 = *(v11 + 24);
    }

    else
    {
      v14 = *(v11 + 32);
    }

    v15 = &v14[8 * v12];
    v16 = *(a1 + 20);
    *v15 = v9;
    *(v15 + 1) = v16;
    *(v11 + 24) = v12 + 1;
    if (*a1)
    {
LABEL_16:
      result = 0;
      *(a1 + 20) = v6 + v16 + 9;
      return result;
    }

    v17 = *(a1 + 4132);
    if (v17 > a3)
    {
LABEL_13:
      if (*(a1 + 4128) <= a3)
      {
        *(a1 + 4128) = a3 + 1;
      }

      v16 = *(a1 + 20);
      *(*(a1 + 4120) + 4 * a3) = v16;
      goto LABEL_16;
    }

    do
    {
      v17 = 2 * v17 + 2;
    }

    while (v17 <= a3);
    v18 = malloc_type_realloc(*(a1 + 4120), 4 * v17, 0x100004052888210uLL);
    *(a1 + 4120) = v18;
    if (v18)
    {
      while (1)
      {
        v19 = *(a1 + 4132);
        if (v19 >= v17)
        {
          break;
        }

        *(a1 + 4132) = v19 + 1;
        v18[v19] = 0;
      }

      goto LABEL_13;
    }

LABEL_21:
    result = 4294966274;
    goto LABEL_5;
  }

  result = 4294966275;
LABEL_5:
  *a1 |= 0x10000u;
  return result;
}

uint64_t cqdb_writer_close(uint64_t a1)
{
  if ((*(a1 + 2) & 1) == 0)
  {
    v2 = 0;
    v27 = 0;
    v26 = 1111773507;
    v3 = *(a1 + 4128);
    v28 = 1648644977;
    v29 = v3;
    v30 = 0;
    do
    {
      v4 = (a1 + 24 + 16 * v2);
      if (*(v4 + 1))
      {
        v5 = 2 * *v4;
        v6 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
        if (!v6)
        {
          v18 = 4294966274;
          goto LABEL_28;
        }

        v7 = v6;
        v8 = *v4;
        if (v8)
        {
          v9 = 0;
          v10 = *(v4 + 1);
          do
          {
            v11 = (v10 + 8 * v9);
            v12 = (*v11 >> 8) % v5;
            for (i = &v6[2 * v12]; i[1]; i = &v6[2 * v12])
            {
              v12 = (v12 + 1) % v5;
            }

            *i = *v11;
            i[1] = v11[1];
            ++v9;
          }

          while (v9 != v8);
        }

        if (v5 >= 1)
        {
          v14 = v6 + 1;
          do
          {
            __ptr = *(v14 - 1);
            fwrite(&__ptr, 1uLL, 4uLL, *(a1 + 8));
            v15 = *v14;
            v14 += 2;
            __ptr = v15;
            fwrite(&__ptr, 1uLL, 4uLL, *(a1 + 8));
            --v5;
          }

          while (v5);
        }

        free(v7);
      }

      ++v2;
    }

    while (v2 != 256);
    if ((*a1 & 1) == 0)
    {
      if (*(a1 + 4132))
      {
        v30 = MEMORY[0x29C2730D0](*(a1 + 8)) - *(a1 + 16);
        if (*(a1 + 4128))
        {
          v16 = 0;
          do
          {
            __ptr = *(*(a1 + 4120) + 4 * v16);
            fwrite(&__ptr, 1uLL, 4uLL, *(a1 + 8));
            ++v16;
          }

          while (v16 < *(a1 + 4128));
        }
      }
    }

    v17 = *(a1 + 8);
    if (ferror(v17))
    {
LABEL_22:
      v18 = 4294966275;
LABEL_28:
      fseek(*(a1 + 8), *(a1 + 16), 0);
      cqdb_writer_delete(a1);
      return v18;
    }

    v19 = MEMORY[0x29C2730D0](v17);
    if (v19 == -1)
    {
      v18 = 4294966276;
      goto LABEL_28;
    }

    v20 = v19;
    v21 = *(a1 + 16);
    LODWORD(v27) = v19 - v21;
    if (fseek(*(a1 + 8), v21, 0))
    {
      goto LABEL_26;
    }

    fwrite(&v26, 4uLL, 1uLL, *(a1 + 8));
    write_uint32(a1, v27);
    write_uint32(a1, SHIDWORD(v27));
    write_uint32(a1, v28);
    write_uint32(a1, v29);
    write_uint32(a1, v30);
    for (j = 24; j != 4120; j += 16)
    {
      v23 = *(a1 + j);
      if (v23)
      {
        v23 = *(a1 + 20);
      }

      __ptr = v23;
      fwrite(&__ptr, 1uLL, 4uLL, *(a1 + 8));
      __ptr = 2 * *(a1 + j);
      fwrite(&__ptr, 1uLL, 4uLL, *(a1 + 8));
      *(a1 + 20) += 16 * *(a1 + j);
    }

    v24 = *(a1 + 8);
    if (ferror(v24))
    {
      goto LABEL_22;
    }

    if (fseek(v24, v20, 0))
    {
LABEL_26:
      v18 = 4294966277;
      goto LABEL_28;
    }
  }

  cqdb_writer_delete(a1);
  return 0;
}

void cqdb_writer_delete(void **a1)
{
  for (i = 4; i != 516; i += 2)
  {
    free(a1[i]);
  }

  free(a1[515]);

  free(a1);
}

void *cqdb_reader(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x818 || *a1 != 1111773507)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x1038uLL, 0x103004030E487C9uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    *(v4 + 1) = a2;
    strncpy(v4 + 16, a1, 4uLL);
    v6 = *(a1 + 4);
    *(v5 + 5) = v6;
    *(v5 + 6) = *(a1 + 8);
    v7 = *(a1 + 12);
    *(v5 + 7) = v7;
    *(v5 + 8) = *(a1 + 16);
    *(v5 + 9) = *(a1 + 20);
    if (v7 != 1648644977 || v6 > a2)
    {
      free(v5);
      return 0;
    }

    LODWORD(v9) = 0;
    v10 = 0;
    *(v5 + 1036) = 0;
    v11 = (a1 + 24);
    do
    {
      v13 = *v11;
      v12 = v11[1];
      v14 = &v5[2 * v10 + 5];
      if (v13)
      {
        v15 = *v5;
        v16 = malloc_type_calloc(v11[1], 8uLL, 0x100004000313F17uLL);
        if (v12)
        {
          v17 = (v15 + v13);
          v18 = v16 + 4;
          v19 = v12;
          do
          {
            *(v18 - 1) = *v17;
            *v18 = v17[1];
            v18 += 2;
            v17 += 2;
            --v19;
          }

          while (v19);
        }

        *(v14 + 8) = v16;
        *v14 = v12;
        LODWORD(v9) = *(v5 + 1036);
      }

      else
      {
        *(v14 + 8) = 0;
        *v14 = 0;
      }

      v11 += 2;
      v9 = v9 + (v12 >> 1);
      *(v5 + 1036) = v9;
      ++v10;
    }

    while (v10 != 256);
    v20 = *(v5 + 9);
    if (v20)
    {
      v21 = *v5;
      v22 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
      if (v9)
      {
        v23 = (v21 + v20);
        v24 = v22;
        do
        {
          v25 = *v23++;
          *v24++ = v25;
          --v9;
        }

        while (v9);
      }

      v5[517] = v22;
    }

    else
    {
      v5[517] = 0;
    }
  }

  return v5;
}

void cqdb_delete(void **a1)
{
  if (a1)
  {
    for (i = 6; i != 518; i += 2)
    {
      free(a1[i]);
    }

    free(a1[517]);

    free(a1);
  }
}

uint64_t cqdb_to_id(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = hashlittle(__s, v4 + 1, 0);
  v6 = &a1[2 * v5];
  v9 = *(v6 + 10);
  v7 = v6 + 5;
  v8 = v9;
  if (v9)
  {
    v10 = v7[1];
    if (v10)
    {
      v11 = v5;
      v12 = (v5 >> 8) % v8;
      for (i = (v10 + 8 * v12); ; i = (v10 + 8 * v12))
      {
        v14 = i[1];
        if (!v14)
        {
          break;
        }

        if (*i == v11)
        {
          v15 = (*a1 + v14);
          if (!strcmp(__s, v15 + 8))
          {
            return *v15;
          }
        }

        v12 = (v12 + 1) % v8;
      }
    }
  }

  return 4294966273;
}

uint64_t cqdb_to_string(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4136);
  if (v2 && *(a1 + 32) > a2 && (v3 = *(v2 + 4 * a2), v3))
  {
    return *a1 + v3 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t hashword(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 + 4 * a2 - 559038737);
  if (a2 < 4)
  {
    v5 = a3 + 4 * a2 - 559038737;
    v4 = v5;
  }

  else
  {
    v4 = a3 + 4 * a2 - 559038737;
    v5 = v4;
    do
    {
      v6 = a1[1] + v4;
      v7 = a1[2] + v3;
      v8 = (*a1 + v5 - v7) ^ __ROR4__(v7, 28);
      v9 = v7 + v6;
      v10 = (v6 - v8) ^ __ROR4__(v8, 26);
      v11 = v8 + v9;
      v12 = (v9 - v10) ^ __ROR4__(v10, 24);
      v13 = v10 + v11;
      v14 = (v11 - v12) ^ __ROR4__(v12, 16);
      v15 = v12 + v13;
      v16 = (v13 - v14) ^ __ROR4__(v14, 13);
      v5 = v14 + v15;
      v3 = (v15 - v16) ^ __ROR4__(v16, 28);
      v4 = v16 + v5;
      a2 -= 3;
      a1 += 3;
    }

    while (a2 > 3);
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      LODWORD(v3) = a1[2] + v3;
    }

    v4 += a1[1];
  }

  else if (!a2)
  {
    return v3;
  }

  HIDWORD(v17) = v4;
  LODWORD(v17) = v4;
  v18 = (v3 ^ v4) - (v17 >> 18);
  HIDWORD(v17) = v18;
  LODWORD(v17) = v18;
  v19 = ((*a1 + v5) ^ v18) - (v17 >> 21);
  HIDWORD(v17) = v19;
  LODWORD(v17) = v19;
  v20 = (v19 ^ v4) - (v17 >> 7);
  HIDWORD(v17) = v20;
  LODWORD(v17) = v20;
  v21 = (v20 ^ v18) - (v17 >> 16);
  HIDWORD(v17) = v21;
  LODWORD(v17) = v21;
  HIDWORD(v17) = (v21 ^ v19) - (v17 >> 28);
  LODWORD(v17) = HIDWORD(v17);
  HIDWORD(v17) = (HIDWORD(v17) ^ v20) - (v17 >> 18);
  LODWORD(v17) = HIDWORD(v17);
  return (HIDWORD(v17) ^ v21) - (v17 >> 8);
}

_DWORD *hashword2(_DWORD *result, uint64_t a2, int *a3, _DWORD *a4)
{
  v4 = *a3 + 4 * a2 - 559038737;
  v5 = v4 + *a4;
  v6 = v4;
  if (a2 >= 4)
  {
    do
    {
      v7 = result[1] + v4;
      v8 = result[2] + v5;
      v9 = (*result + v6 - v8) ^ __ROR4__(v8, 28);
      v10 = v8 + v7;
      v11 = (v7 - v9) ^ __ROR4__(v9, 26);
      v12 = v9 + v10;
      v13 = (v10 - v11) ^ __ROR4__(v11, 24);
      v14 = v11 + v12;
      v15 = (v12 - v13) ^ __ROR4__(v13, 16);
      v16 = v13 + v14;
      v17 = (v14 - v15) ^ __ROR4__(v15, 13);
      v6 = v15 + v16;
      v5 = (v16 - v17) ^ __ROR4__(v17, 28);
      v4 = v17 + v6;
      a2 -= 3;
      result += 3;
    }

    while (a2 > 3);
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v5 += result[2];
    }

    v4 += result[1];
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  HIDWORD(v18) = v4;
  LODWORD(v18) = v4;
  v19 = (v5 ^ v4) - (v18 >> 18);
  HIDWORD(v18) = v19;
  LODWORD(v18) = v19;
  v20 = ((*result + v6) ^ v19) - (v18 >> 21);
  HIDWORD(v18) = v20;
  LODWORD(v18) = v20;
  v21 = (v20 ^ v4) - (v18 >> 7);
  HIDWORD(v18) = v21;
  LODWORD(v18) = v21;
  v22 = (v21 ^ v19) - (v18 >> 16);
  HIDWORD(v18) = v22;
  LODWORD(v18) = v22;
  HIDWORD(v18) = (v22 ^ v20) - (v18 >> 28);
  LODWORD(v18) = HIDWORD(v18);
  v4 = (HIDWORD(v18) ^ v21) - (v18 >> 18);
  HIDWORD(v18) = v4;
  LODWORD(v18) = v4;
  v5 = (v4 ^ v22) - (v18 >> 8);
LABEL_10:
  *a3 = v5;
  *a4 = v4;
  return result;
}

uint64_t hashlittle(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v3 = (a2 + a3 - 559038737);
  if (a2 < 0xD)
  {
    v5 = a2 + a3 - 559038737;
    v4 = v5;
  }

  else
  {
    v4 = a2 + a3 - 559038737;
    v5 = v4;
LABEL_3:
    v6 = v4 + a1[4] + (a1[5] << 8) + (a1[6] << 16) + (a1[7] << 24);
    v7 = v3 + a1[8] + (a1[9] << 8) + (a1[10] << 16) + (a1[11] << 24);
    v8 = (v5 + *a1 + (a1[1] << 8) + (a1[2] << 16) + (a1[3] << 24) - v7) ^ __ROR4__(v7, 28);
    v9 = v7 + v6;
    v10 = (v6 - v8) ^ __ROR4__(v8, 26);
    v11 = v8 + v9;
    v12 = (v9 - v10) ^ __ROR4__(v10, 24);
    v13 = v10 + v11;
    v14 = (v11 - v12) ^ __ROR4__(v12, 16);
    v15 = v12 + v13;
    v16 = (v13 - v14) ^ __ROR4__(v14, 13);
    v5 = v14 + v15;
    v3 = (v15 - v16) ^ __ROR4__(v16, 28);
    v4 = v16 + v5;
    a2 -= 12;
    a1 += 12;
  }

  switch(a2)
  {
    case 0uLL:
      return v3;
    case 1uLL:
      goto LABEL_17;
    case 2uLL:
      goto LABEL_16;
    case 3uLL:
      goto LABEL_15;
    case 4uLL:
      goto LABEL_14;
    case 5uLL:
      goto LABEL_13;
    case 6uLL:
      goto LABEL_12;
    case 7uLL:
      goto LABEL_11;
    case 8uLL:
      goto LABEL_10;
    case 9uLL:
      goto LABEL_9;
    case 0xAuLL:
      goto LABEL_8;
    case 0xBuLL:
      goto LABEL_7;
    case 0xCuLL:
      LODWORD(v3) = v3 + (a1[11] << 24);
LABEL_7:
      LODWORD(v3) = v3 + (a1[10] << 16);
LABEL_8:
      LODWORD(v3) = v3 + (a1[9] << 8);
LABEL_9:
      LODWORD(v3) = v3 + a1[8];
LABEL_10:
      v4 += a1[7] << 24;
LABEL_11:
      v4 += a1[6] << 16;
LABEL_12:
      v4 += a1[5] << 8;
LABEL_13:
      v4 += a1[4];
LABEL_14:
      v5 += a1[3] << 24;
LABEL_15:
      v5 += a1[2] << 16;
LABEL_16:
      v5 += a1[1] << 8;
LABEL_17:
      HIDWORD(v17) = v4;
      LODWORD(v17) = v4;
      v18 = (v3 ^ v4) - (v17 >> 18);
      HIDWORD(v17) = v18;
      LODWORD(v17) = v18;
      v19 = ((v5 + *a1) ^ v18) - (v17 >> 21);
      HIDWORD(v17) = v19;
      LODWORD(v17) = v19;
      v20 = (v19 ^ v4) - (v17 >> 7);
      HIDWORD(v17) = v20;
      LODWORD(v17) = v20;
      v21 = (v20 ^ v18) - (v17 >> 16);
      HIDWORD(v17) = v21;
      LODWORD(v17) = v21;
      HIDWORD(v17) = (v21 ^ v19) - (v17 >> 28);
      LODWORD(v17) = HIDWORD(v17);
      HIDWORD(v17) = (HIDWORD(v17) ^ v20) - (v17 >> 18);
      LODWORD(v17) = HIDWORD(v17);
      return (HIDWORD(v17) ^ v21) - (v17 >> 8);
    default:
      goto LABEL_3;
  }
}

unsigned __int8 *hashlittle2(unsigned __int8 *result, unint64_t a2, int *a3, _DWORD *a4)
{
  v4 = a2 - 559038737 + *a3;
  v5 = v4 + *a4;
  v6 = v4;
  if (a2 >= 0xD)
  {
LABEL_2:
    v7 = v4 + result[4] + (result[5] << 8) + (result[6] << 16) + (result[7] << 24);
    v8 = v5 + result[8] + (result[9] << 8) + (result[10] << 16) + (result[11] << 24);
    v9 = (v6 + *result + (result[1] << 8) + (result[2] << 16) + (result[3] << 24) - v8) ^ __ROR4__(v8, 28);
    v10 = v8 + v7;
    v11 = (v7 - v9) ^ __ROR4__(v9, 26);
    v12 = v9 + v10;
    v13 = (v10 - v11) ^ __ROR4__(v11, 24);
    v14 = v11 + v12;
    v15 = (v12 - v13) ^ __ROR4__(v13, 16);
    v16 = v13 + v14;
    v17 = (v14 - v15) ^ __ROR4__(v15, 13);
    v6 = v15 + v16;
    v5 = (v16 - v17) ^ __ROR4__(v17, 28);
    v4 = v17 + v6;
    a2 -= 12;
    result += 12;
  }

  switch(a2)
  {
    case 0uLL:
      goto LABEL_16;
    case 1uLL:
      goto LABEL_15;
    case 2uLL:
      goto LABEL_14;
    case 3uLL:
      goto LABEL_13;
    case 4uLL:
      goto LABEL_12;
    case 5uLL:
      goto LABEL_11;
    case 6uLL:
      goto LABEL_10;
    case 7uLL:
      goto LABEL_9;
    case 8uLL:
      goto LABEL_8;
    case 9uLL:
      goto LABEL_7;
    case 0xAuLL:
      goto LABEL_6;
    case 0xBuLL:
      goto LABEL_5;
    case 0xCuLL:
      v5 += result[11] << 24;
LABEL_5:
      v5 += result[10] << 16;
LABEL_6:
      v5 += result[9] << 8;
LABEL_7:
      v5 += result[8];
LABEL_8:
      v4 += result[7] << 24;
LABEL_9:
      v4 += result[6] << 16;
LABEL_10:
      v4 += result[5] << 8;
LABEL_11:
      v4 += result[4];
LABEL_12:
      v6 += result[3] << 24;
LABEL_13:
      v6 += result[2] << 16;
LABEL_14:
      v6 += result[1] << 8;
LABEL_15:
      HIDWORD(v18) = v4;
      LODWORD(v18) = v4;
      v19 = (v5 ^ v4) - (v18 >> 18);
      HIDWORD(v18) = v19;
      LODWORD(v18) = v19;
      v20 = ((v6 + *result) ^ v19) - (v18 >> 21);
      HIDWORD(v18) = v20;
      LODWORD(v18) = v20;
      v21 = (v20 ^ v4) - (v18 >> 7);
      HIDWORD(v18) = v21;
      LODWORD(v18) = v21;
      v22 = (v21 ^ v19) - (v18 >> 16);
      HIDWORD(v18) = v22;
      LODWORD(v18) = v22;
      HIDWORD(v18) = (v22 ^ v20) - (v18 >> 28);
      LODWORD(v18) = HIDWORD(v18);
      v4 = (HIDWORD(v18) ^ v21) - (v18 >> 18);
      HIDWORD(v18) = v4;
      LODWORD(v18) = v4;
      v5 = (v4 ^ v22) - (v18 >> 8);
LABEL_16:
      *a3 = v5;
      *a4 = v4;
      return result;
    default:
      goto LABEL_2;
  }
}

uint64_t hashbig(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v3 = (a2 + a3 - 559038737);
  if (a2 < 0xD)
  {
    v5 = a2 + a3 - 559038737;
    v4 = v5;
  }

  else
  {
    v4 = a2 + a3 - 559038737;
    v5 = v4;
LABEL_3:
    v6 = v4 + (a1[4] << 24) + (a1[5] << 16) + (a1[6] << 8) + a1[7];
    v7 = v3 + (a1[8] << 24) + (a1[9] << 16) + (a1[10] << 8) + a1[11];
    v8 = (v5 + (*a1 << 24) + (a1[1] << 16) + (a1[2] << 8) + a1[3] - v7) ^ __ROR4__(v7, 28);
    v9 = v7 + v6;
    v10 = (v6 - v8) ^ __ROR4__(v8, 26);
    v11 = v8 + v9;
    v12 = (v9 - v10) ^ __ROR4__(v10, 24);
    v13 = v10 + v11;
    v14 = (v11 - v12) ^ __ROR4__(v12, 16);
    v15 = v12 + v13;
    v16 = (v13 - v14) ^ __ROR4__(v14, 13);
    v5 = v14 + v15;
    v3 = (v15 - v16) ^ __ROR4__(v16, 28);
    v4 = v16 + v5;
    a2 -= 12;
    a1 += 12;
  }

  switch(a2)
  {
    case 0uLL:
      return v3;
    case 1uLL:
      goto LABEL_17;
    case 2uLL:
      goto LABEL_16;
    case 3uLL:
      goto LABEL_15;
    case 4uLL:
      goto LABEL_14;
    case 5uLL:
      goto LABEL_13;
    case 6uLL:
      goto LABEL_12;
    case 7uLL:
      goto LABEL_11;
    case 8uLL:
      goto LABEL_10;
    case 9uLL:
      goto LABEL_9;
    case 0xAuLL:
      goto LABEL_8;
    case 0xBuLL:
      goto LABEL_7;
    case 0xCuLL:
      LODWORD(v3) = v3 + a1[11];
LABEL_7:
      LODWORD(v3) = v3 + (a1[10] << 8);
LABEL_8:
      LODWORD(v3) = v3 + (a1[9] << 16);
LABEL_9:
      LODWORD(v3) = v3 + (a1[8] << 24);
LABEL_10:
      v4 += a1[7];
LABEL_11:
      v4 += a1[6] << 8;
LABEL_12:
      v4 += a1[5] << 16;
LABEL_13:
      v4 += a1[4] << 24;
LABEL_14:
      v5 += a1[3];
LABEL_15:
      v5 += a1[2] << 8;
LABEL_16:
      v5 += a1[1] << 16;
LABEL_17:
      HIDWORD(v17) = v4;
      LODWORD(v17) = v4;
      v18 = (v3 ^ v4) - (v17 >> 18);
      HIDWORD(v17) = v18;
      LODWORD(v17) = v18;
      v19 = ((v5 + (*a1 << 24)) ^ v18) - (v17 >> 21);
      HIDWORD(v17) = v19;
      LODWORD(v17) = v19;
      v20 = (v19 ^ v4) - (v17 >> 7);
      HIDWORD(v17) = v20;
      LODWORD(v17) = v20;
      v21 = (v20 ^ v18) - (v17 >> 16);
      HIDWORD(v17) = v21;
      LODWORD(v17) = v21;
      HIDWORD(v17) = (v21 ^ v19) - (v17 >> 28);
      LODWORD(v17) = HIDWORD(v17);
      HIDWORD(v17) = (HIDWORD(v17) ^ v20) - (v17 >> 18);
      LODWORD(v17) = HIDWORD(v17);
      return (HIDWORD(v17) ^ v21) - (v17 >> 8);
    default:
      goto LABEL_3;
  }
}

uint64_t crf1dc_new(int a1, int a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x70uLL, 0x109004037870131uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[1] = a2;
    v8 = (a2 * a2);
    v9 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
    *(v7 + 32) = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    if ((*v7 & 2) != 0)
    {
      memptr = 0;
      v10 = malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * (v8 + 4), 0xF64C10C0uLL);
      v11 = memptr;
      if (v10)
      {
        v11 = 0;
      }

      *(v7 + 88) = v11;
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
      *(v7 + 104) = v12;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (!crf1dc_set_num_items(v7, a3))
    {
      *(v7 + 8) = 0;
    }

    else
    {
LABEL_9:
      crf1dc_delete(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t crf1dc_set_num_items(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  *(a1 + 8) = a2;
  if (*(a1 + 12) >= a2)
  {
    return 0;
  }

  free(*(a1 + 72));
  free(*(a1 + 24));
  free(*(a1 + 96));
  free(*(a1 + 80));
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 48));
  free(*(a1 + 40));
  v5 = malloc_type_calloc(v2 * a2, 8uLL, 0x100004000313F17uLL);
  *(a1 + 40) = v5;
  if (!v5)
  {
    return 2147483649;
  }

  v6 = malloc_type_calloc(v2 * a2, 8uLL, 0x100004000313F17uLL);
  *(a1 + 48) = v6;
  if (!v6)
  {
    return 2147483649;
  }

  v7 = malloc_type_calloc(a2, 8uLL, 0x100004000313F17uLL);
  *(a1 + 56) = v7;
  if (!v7)
  {
    return 2147483649;
  }

  v8 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
  *(a1 + 64) = v8;
  if (!v8)
  {
    return 2147483649;
  }

  if (*a1)
  {
    v9 = malloc_type_calloc(v2 * a2, 4uLL, 0x100004052888210uLL);
    *(a1 + 72) = v9;
    if (!v9)
    {
      return 2147483649;
    }
  }

  v10 = malloc_type_calloc(v2 * a2, 8uLL, 0x100004000313F17uLL);
  *(a1 + 24) = v10;
  if (!v10)
  {
    return 2147483649;
  }

  if ((*a1 & 2) != 0)
  {
    memptr = 0;
    v11 = malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * v2 * a2 + 32, 0xF64C10C0uLL);
    v12 = memptr;
    if (v11)
    {
      v12 = 0;
    }

    *(a1 + 80) = v12;
    if (!v12)
    {
      return 2147483649;
    }

    v13 = malloc_type_calloc(v2 * a2, 8uLL, 0x100004000313F17uLL);
    *(a1 + 96) = v13;
    if (!v13)
    {
      return 2147483649;
    }
  }

  result = 0;
  *(a1 + 12) = a2;
  return result;
}

void crf1dc_reset(uint64_t a1, char a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  if (a2)
  {
    bzero(*(a1 + 24), 8 * v4 * v5);
  }

  if ((a2 & 2) != 0)
  {
    bzero(*(a1 + 32), 8 * (v4 * v4));
  }

  if ((*a1 & 2) != 0)
  {
    bzero(*(a1 + 96), 8 * v4 * v5);
    bzero(*(a1 + 104), 8 * (v4 * v4));
    *(a1 + 16) = 0;
  }
}

void crf1dc_exp_state(uint64_t a1)
{
  v2 = (*(a1 + 4) * *(a1 + 8));
  memcpy(*(a1 + 80), *(a1 + 24), 8 * v2);
  if (v2 >= 1)
  {
    v3 = *(a1 + 80);
    do
    {
      *v3 = exp(*v3);
      ++v3;
      --v2;
    }

    while (v2);
  }
}

void crf1dc_exp_transition(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = (v2 * v2);
  memcpy(*(a1 + 88), *(a1 + 32), 8 * v3);
  if (v2)
  {
    v4 = *(a1 + 88);
    do
    {
      *v4 = exp(*v4);
      ++v4;
      --v3;
    }

    while (v3);
  }
}

double crf1dc_alpha_score(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 8);
  v4 = *(a1 + 4);
  v5 = v4;
  v6 = *(a1 + 40);
  v41 = 8 * v4;
  memcpy(v6, *(a1 + 80), 8 * v4);
  if (v4 <= 0)
  {
    *v2 = 1.0;
  }

  else
  {
    v7 = 0.0;
    v8 = v6;
    v9 = v4;
    do
    {
      v10 = *v8++;
      v7 = v7 + v10;
      --v9;
    }

    while (v9);
    if (v7 == 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 1.0 / v7;
    }

    *v2 = v11;
    v12 = v4;
    do
    {
      *v6 = v11 * *v6;
      ++v6;
      --v12;
    }

    while (v12);
  }

  if (v3 > 1)
  {
    v13 = 1;
    do
    {
      ++v2;
      v14 = *(a1 + 40);
      v15 = *(a1 + 4);
      v16 = v15 * v13;
      v17 = (v14 + 8 * v15 * v13);
      v18 = *(a1 + 80);
      bzero(v17, v41);
      if (v5 < 1)
      {
        *v2 = 1.0;
      }

      else
      {
        v19 = 0;
        v20 = *(a1 + 88);
        v21 = 8 * *(a1 + 4);
        do
        {
          v22 = *(v14 + 8 * v15 * (v13 - 1) + 8 * v19);
          v23 = v20;
          v24 = (v14 + 8 * v16);
          v25 = v5;
          do
          {
            v26 = *v23++;
            *v24 = *v24 + v22 * v26;
            ++v24;
            --v25;
          }

          while (v25);
          ++v19;
          v20 = (v20 + v21);
        }

        while (v19 != v5);
        v27 = (v18 + 8 * v16);
        v28 = (v14 + 8 * v16);
        v29 = v5;
        do
        {
          v30 = *v27++;
          *v28 = v30 * *v28;
          ++v28;
          --v29;
        }

        while (v29);
        v31 = 0.0;
        v32 = (v14 + 8 * v16);
        v33 = v5;
        do
        {
          v34 = *v32++;
          v31 = v31 + v34;
          --v33;
        }

        while (v33);
        if (v31 == 0.0)
        {
          v35 = 1.0;
        }

        else
        {
          v35 = 1.0 / v31;
        }

        *v2 = v35;
        v36 = v5;
        do
        {
          *v17 = v35 * *v17;
          ++v17;
          --v36;
        }

        while (v36);
      }

      ++v13;
    }

    while (v13 != v3);
  }

  if (v3 < 1)
  {
    v38 = 0.0;
  }

  else
  {
    v37 = *(a1 + 56);
    v38 = 0.0;
    do
    {
      v39 = *v37++;
      v38 = v38 + log(v39);
      --v3;
    }

    while (v3);
  }

  result = -v38;
  *(a1 + 16) = -v38;
  return result;
}

_DWORD *crf1dc_beta_score(_DWORD *result)
{
  v1 = result;
  v2 = result[2];
  v3 = result[1];
  v4 = v3;
  v5 = *(result + 8);
  v6 = v2 - 1;
  v7 = (*(result + 7) + 8 * (v2 - 1));
  v37 = v3;
  if (v3 >= 1)
  {
    v8 = *v7;
    v9 = (v3 + 1) & 0xFFFFFFFE;
    v10 = vdupq_n_s64(v3 - 1);
    v11 = (*(result + 6) + 8 * v3 * v6 + 8);
    v12 = xmmword_297732570;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v10, v12));
      if (v14.i8[0])
      {
        *(v11 - 1) = v8;
      }

      if (v14.i8[4])
      {
        *v11 = v8;
      }

      v12 = vaddq_s64(v12, v13);
      v11 += 2;
      v9 -= 2;
    }

    while (v9);
  }

  if (v2 > 1)
  {
    v15 = v2 - 2;
    do
    {
      --v7;
      v16 = *(v1 + 6);
      v17 = v1[1];
      v18 = *(v1 + 10);
      result = memcpy(v5, (v16 + 8 * (v17 + v17 * v15)), 8 * v37);
      if (v4 >= 1)
      {
        v19 = (v16 + 8 * v17 * v15);
        v20 = (v18 + 8 * v17 * v6);
        v21 = v5;
        v22 = v4;
        do
        {
          v23 = *v20++;
          *v21 = v23 * *v21;
          ++v21;
          --v22;
        }

        while (v22);
        if (v37 >= 1)
        {
          v24 = 0;
          v25 = *(v1 + 11);
          v26 = 8 * v1[1];
          do
          {
            v27 = 0.0;
            v28 = v25;
            v29 = v5;
            v30 = v4;
            do
            {
              v31 = *v28++;
              v32 = v31;
              v33 = *v29++;
              v27 = v27 + v32 * v33;
              --v30;
            }

            while (v30);
            v19[v24++] = v27;
            v25 = (v25 + v26);
          }

          while (v24 != v4);
          v34 = *v7;
          v35 = v4;
          do
          {
            *v19 = v34 * *v19;
            ++v19;
            --v35;
          }

          while (v35);
        }
      }

      --v6;
    }

    while (v15-- > 0);
  }

  return result;
}

unsigned int *crf1dc_marginals(unsigned int *result)
{
  v1 = result[2];
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = result[1];
    v5 = result[1];
    do
    {
      v6 = v2[1] * v3;
      v7 = *(v2 + 6);
      v8 = (*(v2 + 12) + 8 * v6);
      result = memcpy(v8, (*(v2 + 5) + 8 * v6), 8 * v4);
      if (v5 >= 1)
      {
        v9 = (v7 + 8 * v6);
        v10 = v8;
        v11 = v4;
        do
        {
          v12 = *v9++;
          *v10 = v12 * *v10;
          ++v10;
          --v11;
        }

        while (v11);
        v13 = 1.0 / *(*(v2 + 7) + 8 * v3);
        v14 = v4;
        do
        {
          *v8 = v13 * *v8;
          ++v8;
          --v14;
        }

        while (v14);
      }

      ++v3;
    }

    while (v3 != v1);
    if (v1 != 1)
    {
      v15 = 0;
      v37 = v1 - 2;
      v16 = 1;
      do
      {
        v17 = v2[1];
        v18 = *(v2 + 10);
        v19 = *(v2 + 5);
        v20 = *(v2 + 8);
        result = memcpy(v20, (*(v2 + 6) + 8 * (v17 * (v15 + 1))), 8 * v4);
        if (v4 >= 1)
        {
          v21 = (v18 + 8 * (v17 * v16));
          v22 = v20;
          v23 = v4;
          do
          {
            v24 = *v21++;
            *v22 = v24 * *v22;
            ++v22;
            --v23;
          }

          while (v23);
          v25 = 0;
          v26 = *(v2 + 11);
          v27 = *(v2 + 13);
          v28 = 8 * v2[1];
          do
          {
            v29 = v4;
            v30 = v26;
            v31 = v20;
            v32 = v27;
            do
            {
              v33 = *v30++;
              v34 = v33;
              v35 = *v31++;
              *v32 = *v32 + *(v19 + 8 * (v17 * v15) + 8 * v25) * v34 * v35;
              ++v32;
              --v29;
            }

            while (v29);
            ++v25;
            v27 = (v27 + v28);
            v26 = (v26 + v28);
          }

          while (v25 != v4);
        }

        ++v16;
      }

      while (v15++ != v37);
    }
  }

  return result;
}

double crf1dc_marginal_path(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 4);
  v5 = *(a2 + 4 * a3);
  v6 = *(a1 + 56);
  result = *(*(a1 + 40) + 8 * v4 * a3 + 8 * v5) * *(*(a1 + 48) + 8 * v4 * (a4 - 1) + 8 * *(a2 + 4 * (a4 - 1))) / *(v6 + 8 * a3);
  if (a4 - 1 > a3)
  {
    v8 = (v6 + 8 * a3);
    v9 = ~a3 + a4;
    v10 = (a2 + 4 * a3 + 4);
    v11 = *(a1 + 80) + 8 * (v4 + v4 * a3);
    do
    {
      v12 = v5 * v4;
      v13 = *v10++;
      LODWORD(v5) = v13;
      v14 = *(*(a1 + 88) + 8 * v12 + 8 * v13) * *(v11 + 8 * v13);
      v15 = *v8++;
      result = result * (v14 * v15);
      v11 += 8 * v4;
      --v9;
    }

    while (v9);
  }

  return result;
}

double crf1dc_score(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a1 + 24);
  result = *(v4 + 8 * v3);
  if (v2 >= 2)
  {
    v6 = *(a1 + 4);
    v7 = v4 + 8 * v6;
    v8 = a2 + 1;
    v9 = v2 - 1;
    do
    {
      v10 = *v8++;
      result = result + *(*(a1 + 32) + 8 * v6 * v3 + 8 * v10) + *(v7 + 8 * v10);
      v7 += 8 * v6;
      LODWORD(v3) = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t crf1dc_viterbi(uint64_t result, uint64_t a2)
{
  v3 = *(result + 4);
  v2 = *(result + 8);
  v4 = *(result + 40);
  v5 = *(result + 24);
  if (v3 >= 1)
  {
    v6 = *(result + 4);
    v7 = *(result + 24);
    v8 = *(result + 40);
    do
    {
      v9 = *v7++;
      *v8++ = v9;
      --v6;
    }

    while (v6);
  }

  v10 = v3;
  v11 = v2 - 1;
  if (v2 > 1)
  {
    v12 = 0;
    v13 = *(result + 72);
    for (i = 1; i != v2; ++i)
    {
      if (v3 >= 1)
      {
        v15 = 0;
        v16 = *(result + 4);
        v17 = v4 + 8 * v16 * i;
        v18 = v5 + 8 * v16 * i;
        v19 = v13 + 4 * v16 * i;
        v20 = *(result + 32);
        v21 = v4 + 8 * v16 * v12;
        do
        {
          v22 = 0;
          v23 = -1.79769313e308;
          do
          {
            v24 = *(v21 + 8 * v22) + *(v20 + 8 * v15 + 8 * *(result + 4) * v22);
            if (v23 < v24)
            {
              *(v19 + 4 * v15) = v22;
              v23 = v24;
            }

            ++v22;
          }

          while (v3 != v22);
          *(v17 + 8 * v15) = v23 + *(v18 + 8 * v15);
          ++v15;
        }

        while (v15 != v3);
      }

      ++v12;
    }

    v10 = *(result + 4);
  }

  if (v3 >= 1)
  {
    v25 = 0;
    v26 = v4 + 8 * v10 * v11;
    v27 = -1.79769313e308;
    do
    {
      v28 = *(v26 + 8 * v25);
      if (v27 < v28)
      {
        *(a2 + 4 * v11) = v25;
        v27 = v28;
      }

      ++v25;
    }

    while (v3 != v25);
  }

  if (v2 > 1)
  {
    v29 = (v2 - 2);
    v30 = *(result + 72);
    v31 = v29 + 1;
    v32 = (a2 + 4 * v29 + 4);
    do
    {
      *(v32 - 1) = *(v30 + 4 * *(result + 4) * v31 + 4 * *v32);
      --v32;
      --v31;
    }

    while (v31);
  }

  return result;
}

uint64_t crf1dc_debug_context(FILE *a1)
{
  v90 = *MEMORY[0x29EDCA608];
  v2 = crf1dc_new(2, 3, 3);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  *v3 = xmmword_297732580;
  *(v3 + 16) = 0x3FB999999999999ALL;
  v5 = *(v2 + 4);
  v6 = v3 + 8 * v5;
  *v6 = 0x3FD999999999999ALL;
  *(v6 + 8) = xmmword_297732590;
  v7 = v3 + 16 * v5;
  *v7 = 0x3FD999999999999ALL;
  *(v7 + 8) = xmmword_297732590;
  *v4 = xmmword_2977325A0;
  *(v4 + 16) = 0x3FD999999999999ALL;
  v8 = v4 + 8 * v5;
  *v8 = 0x3FE3333333333333;
  *(v8 + 8) = xmmword_2977325B0;
  v9 = v4 + 16 * v5;
  *v9 = 0x3FE0000000000000;
  *(v9 + 8) = xmmword_2977325B0;
  *(v2 + 8) = *(v2 + 12);
  crf1dc_alpha_score(v2);
  crf1dc_beta_score(v2);
  v10 = 0;
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = *(v2 + 4);
  v14 = v89;
  do
  {
    v15 = 0;
    v16 = *(v11 + 8 * v10);
    v17 = v14;
    v18 = v12;
    do
    {
      v19 = 0;
      v20 = v16 * *(v12 + 8 * v10 * v13 + 8 * v15) * *(v11 + 8 * v13 + 8 * v15);
      do
      {
        *&v17[v19] = v20 * *(v18 + v19) * *(v11 + 16 * v13 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      ++v15;
      v18 += 8 * v13;
      v17 += 24;
    }

    while (v15 != 3);
    ++v10;
    v14 += 72;
  }

  while (v10 != 3);
  v21 = 0;
  v22 = 0.0;
  v23 = v89;
  do
  {
    v24 = 0;
    v25 = v23;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        v22 = v22 + *&v25[i];
      }

      ++v24;
      v25 += 24;
    }

    while (v24 != 3);
    ++v21;
    v23 += 72;
  }

  while (v21 != 3);
  fwrite("Check for the partition factor... ", 0x22uLL, 1uLL, a1);
  v27 = exp(*(v2 + 16));
  check_values(a1, v27, v22);
  v28 = 0;
  v29 = v89;
  do
  {
    v30 = 0;
    v31 = v29;
    do
    {
      for (j = 0; j != 3; ++j)
      {
        v88[0] = v28;
        v88[1] = v30;
        v88[2] = j;
        v33 = crf1dc_score(v2, v88) - *(v2 + 16);
        fprintf(a1, "Check for the sequence %d-%d-%d... ", v28, v30, j);
        v34 = exp(v33);
        check_values(a1, v34, *&v31[8 * j] / v22);
      }

      ++v30;
      v31 += 24;
    }

    while (v30 != 3);
    ++v28;
    v29 += 72;
  }

  while (v28 != 3);
  v35 = 0;
  v36 = v89;
  do
  {
    v37 = 0;
    v38 = 0.0;
    v39 = v36;
    do
    {
      for (k = 0; k != 24; k += 8)
      {
        v38 = v38 + *&v39[k];
      }

      ++v37;
      v39 += 24;
    }

    while (v37 != 3);
    v41 = *(*(v2 + 40) + 8 * v35);
    v42 = *(*(v2 + 48) + 8 * v35);
    v43 = 1.0 / **(v2 + 56);
    fprintf(a1, "Check for the marginal probability (0,%d)... ", v35);
    check_values(a1, v41 * v42 * v43, v38 / v22);
    ++v35;
    v36 += 72;
  }

  while (v35 != 3);
  v44 = 0;
  v45 = v89;
  do
  {
    v46 = 0;
    v47 = 0.0;
    v48 = v45;
    do
    {
      for (m = 0; m != 24; m += 8)
      {
        v47 = v47 + *&v48[m];
      }

      ++v46;
      v48 += 72;
    }

    while (v46 != 3);
    v50 = *(v2 + 4);
    v51 = *(*(v2 + 40) + 8 * v50 + 8 * v44);
    v52 = *(*(v2 + 48) + 8 * v50 + 8 * v44);
    v53 = 1.0 / *(*(v2 + 56) + 8);
    fprintf(a1, "Check for the marginal probability (1,%d)... ", v44);
    check_values(a1, v51 * v52 * v53, v47 / v22);
    ++v44;
    v45 += 24;
  }

  while (v44 != 3);
  v54 = 0;
  v55 = v89;
  do
  {
    v56 = 0;
    v57 = 0.0;
    v58 = v55;
    do
    {
      for (n = 0; n != 72; n += 24)
      {
        v57 = v57 + *&v58[n];
      }

      ++v56;
      v58 += 72;
    }

    while (v56 != 3);
    v60 = *(v2 + 4);
    v61 = *(*(v2 + 40) + 16 * v60 + 8 * v54);
    v62 = *(*(v2 + 48) + 16 * v60 + 8 * v54);
    v63 = 1.0 / *(*(v2 + 56) + 16);
    fprintf(a1, "Check for the marginal probability (2,%d)... ", v54);
    check_values(a1, v61 * v62 * v63, v57 / v22);
    ++v54;
    v55 += 8;
  }

  while (v54 != 3);
  v64 = 0;
  v65 = v89;
  do
  {
    v66 = 0;
    v67 = v65;
    do
    {
      v68 = 0;
      v69 = 0.0;
      do
      {
        v69 = v69 + *&v67[v68];
        v68 += 8;
      }

      while (v68 != 24);
      v70 = *(v2 + 4);
      v71 = *(*(v2 + 40) + 8 * v64);
      v72 = *(*(v2 + 48) + 8 * v70 + 8 * v66);
      v73 = *(*(v2 + 80) + 8 * v70 + 8 * v66);
      v74 = *(*(v2 + 88) + 8 * v70 * v64 + 8 * v66);
      fprintf(a1, "Check for the marginal probability (0,%d)-(1,%d)... ", v64, v66);
      check_values(a1, v72 * (v73 * (v71 * v74)), v69 / v22);
      ++v66;
      v67 += 24;
    }

    while (v66 != 3);
    ++v64;
    v65 += 72;
  }

  while (v64 != 3);
  v75 = 0;
  v76 = v89;
  do
  {
    v77 = 0;
    v78 = v76;
    do
    {
      v79 = 0;
      v80 = 0.0;
      do
      {
        v80 = v80 + *&v78[v79];
        v79 += 72;
      }

      while (v79 != 216);
      v81 = *(v2 + 4);
      v82 = *(*(v2 + 40) + 8 * v81 + 8 * v75);
      v83 = *(*(v2 + 48) + 16 * v81 + 8 * v77);
      v84 = *(*(v2 + 80) + 16 * v81 + 8 * v77);
      v85 = *(*(v2 + 88) + 8 * v81 * v75 + 8 * v77);
      fprintf(a1, "Check for the marginal probability (1,%d)-(2,%d)... ", v75, v77);
      result = check_values(a1, v83 * (v84 * (v82 * v85)), v80 / v22);
      ++v77;
      v78 += 8;
    }

    while (v77 != 3);
    ++v75;
    v76 += 24;
  }

  while (v75 != 3);
  v87 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t check_values(FILE *a1, double a2, double a3)
{
  if (vabdd_f64(a2, a3) >= 0.000000001)
  {
    return fprintf(a1, "FAIL: %f (%f)\n");
  }

  else
  {
    return fprintf(a1, "OK (%f)\n");
  }
}

void *crf1d_create_encoder()
{
  v0 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10E004068B496E0uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040C0EB2904uLL);
    if (v1)
    {
      v1[1] = 0u;
      v1[2] = 0u;
      *v1 = 0u;
      v0[7] = encoder_exchange_options;
      v0[8] = encoder_initialize;
      v0[9] = encoder_objective_and_gradients_batch;
      v0[17] = encoder_save_model;
      v0[18] = encoder_save_model_to_file_pointer;
      v0[10] = encoder_features_on_path;
      v0[11] = encoder_set_weights;
      v0[12] = encoder_set_instance;
      v0[13] = encoder_score;
      v0[14] = encoder_viterbi;
      v0[15] = encoder_partition_factor;
      v0[16] = encoder_objective_and_gradients;
      *v0 = v1;
      v0[19] = encoder_release;
    }
  }

  return v0;
}

uint64_t encoder_exchange_options(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *a1;
  if (a3 < 0)
  {
    (*(a2 + 96))(a2, "feature.minfreq", v4 + 48);
    (*(a2 + 88))(a2, "feature.possible_states", v4 + 56);
    (*(a2 + 88))(a2, "feature.possible_transitions", v4 + 60);
  }

  else if (a3)
  {
    (*(a2 + 72))(a2, "feature.minfreq", *(v4 + 48));
    (*(a2 + 64))(a2, "feature.possible_states", *(v4 + 56));
    (*(a2 + 64))(a2, "feature.possible_transitions", *(v4 + 60));
  }

  else
  {
    params_add_float(a2, "feature.minfreq", "The minimum frequency of features.", 0.0);
    params_add_int(a2, "feature.possible_states", 0, "Force to generate possible state features.");
    params_add_int(a2, "feature.possible_transitions", 0, "Force to generate possible transition features.");
  }

  return 0;
}

uint64_t encoder_initialize(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = *(a2 + 20);
  v8 = *(a2 + 24);
  v9 = *(a2 + 16);
  *(v6 + 40) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 8) = 0u;
  *v6 = v7;
  *(v6 + 4) = v8;
  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *dataset_get(a2, v10);
      if (v11 <= v12)
      {
        v11 = v12;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  v13 = crf1dc_new(3, v7, v11);
  *(v6 + 40) = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

  logging(a3, "Feature generation\n", v14, v15, v16, v17, v18, v19, v67);
  logging(a3, "type: CRF1d\n", v20, v21, v22, v23, v24, v25, v68);
  logging(a3, "feature.minfreq: %f\n", v26, v27, v28, v29, v30, v31, *(v6 + 48));
  logging(a3, "feature.possible_states: %d\n", v32, v33, v34, v35, v36, v37, *(v6 + 56));
  logging(a3, "feature.possible_transitions: %d\n", v38, v39, v40, v41, v42, v43, *(v6 + 60));
  v44 = clock();
  v45 = crf1df_generate((v6 + 12), a2, v7, *(v6 + 48), v8, *(v6 + 56) != 0, *(v6 + 60) != 0, a3[1], *a3);
  *(v6 + 16) = v45;
  if (!v45)
  {
    goto LABEL_13;
  }

  logging(a3, "Number of features: %d\n", v46, v47, v48, v49, v50, v51, *(v6 + 12));
  v52 = clock();
  logging(a3, "Seconds required: %.3f\n", v53, v54, v55, v56, v57, v58, COERCE__INT64((v52 - v44) / 1000000.0));
  logging(a3, "\n", v59, v60, v61, v62, v63, v64, v69);
  crf1df_init_references((v6 + 24), (v6 + 32), *(v6 + 16), *(v6 + 12), v8, v7);
  if (*(v6 + 24) && *(v6 + 32))
  {
    result = 0;
  }

  else
  {
LABEL_13:
    crf1de_finish(v6);
    result = 2147483649;
  }

  a1[3] = a2;
  v66 = *(*(v6 + 40) + 12);
  *(a1 + 11) = *(v6 + 12);
  *(a1 + 12) = v66;
  return result;
}

uint64_t encoder_objective_and_gradients_batch(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a2 + 16);
  v11 = *(*a1 + 12);
  if (v11 >= 1)
  {
    v12 = (v9[2] + 16);
    v13 = a5;
    do
    {
      v14 = *v12;
      v12 += 3;
      *v13++ = -v14;
      --v11;
    }

    while (v11);
  }

  crf1dc_reset(v9[5], 2);
  crf1de_transition_score(v9, a3);
  crf1dc_exp_transition(v9[5]);
  if (v10 < 1)
  {
    v16 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = 0.0;
    do
    {
      v17 = dataset_get(a2, v15);
      crf1dc_set_num_items(v9[5], *v17);
      crf1dc_reset(v9[5], 1);
      crf1de_state_score(v9, v17, a3);
      crf1dc_exp_state(v9[5]);
      crf1dc_alpha_score(v9[5]);
      crf1dc_beta_score(v9[5]);
      crf1dc_marginals(v9[5]);
      v18 = crf1dc_score(v9[5], *(v17 + 16));
      v16 = v16 + v18 - crf1dc_lognorm(v9[5]);
      crf1de_model_expectation(v9, v17, a5, 1.0);
      ++v15;
    }

    while (v10 != v15);
  }

  *a4 = -v16;
  return 0;
}

uint64_t encoder_save_model(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = **(a1 + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = crf1mmw(a2);
  if (!v10)
  {
    return 2147483652;
  }

  v12 = v10;
  v13 = crf1de_write_model(v6, v10, a3, v8, v9, a4, 0, v11);
  crf1dmw_close(v12);
  return v13;
}

uint64_t encoder_save_model_to_file_pointer(unsigned int **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *a1[3];
  v11 = *(v10 + 16);
  if (a5)
  {
    if (v11)
    {
      fwrite("Warning: attributes will not be stored, because crfsuite_training_do_not_store_attributes is specified.\n", 0x6AuLL, 1uLL, *MEMORY[0x29EDCA610]);
      v10 = *a1[3];
    }
  }

  else if (!v11)
  {
    v12 = *MEMORY[0x29EDCA610];
    v13 = "Error: missing attribute dictionary.\n";
    v14 = 37;
LABEL_15:
    fwrite(v13, v14, 1uLL, v12);
    return 2147483651;
  }

  v16 = *(v10 + 24);
  if (!v16)
  {
    v12 = *MEMORY[0x29EDCA610];
    v13 = "Error: missing label dictionary.\n";
    v14 = 33;
    goto LABEL_15;
  }

  if ((a5 & 0x14) == 0)
  {
    v24 = *(v10 + 16);
    v25 = crf1mmw_from_file_pointer(a2);
    if (v25)
    {
      v27 = v25;
      v28 = crf1de_write_model(v9, v25, a3, v24, v16, a4, a5, v26);
      crf1dmw_close(v27);
      return v28;
    }

    return 2147483652;
  }

  if ((~a5 & 3) != 0)
  {
    v12 = *MEMORY[0x29EDCA610];
    v13 = "To use compact or quantized format, you must store attributes and labels out side of crfsuite model.\n";
    v14 = 101;
    goto LABEL_15;
  }

  if ((a5 & 4) != 0)
  {
    compact_model_writer_from_file_pointer = create_compact_model_writer_from_file_pointer(a2);
  }

  else
  {
    compact_model_writer_from_file_pointer = create_quantized_model_writer_from_file_pointer(a2);
  }

  v30 = compact_model_writer_from_file_pointer;
  if (!compact_model_writer_from_file_pointer)
  {
    return 2147483652;
  }

  logging(a4, "Storing the model\n", v18, v19, v20, v21, v22, v23, v125);
  v31 = clock();
  logging(a4, "Writing label features\n", v32, v33, v34, v35, v36, v37, v126);
  v38 = malloc_type_calloc(8uLL, *v9 * *v9, 0x100004000313F17uLL);
  v39 = v38;
  v40 = *v9;
  if (v40 < 1)
  {
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = *(v9 + 4);
    do
    {
      v44 = (v43 + 16 * v41);
      v45 = *v44;
      if (v45 >= 1)
      {
        v46 = *(v44 + 1);
        do
        {
          v48 = *v46++;
          v47 = v48;
          v49 = *(a3 + 8 * v48);
          if (v49 != 0.0)
          {
            v50 = (*(v9 + 2) + 24 * v47);
            if (*v50 != 1)
            {
              encoder_save_model_to_file_pointer_cold_1();
            }

            v42 = (v42 + 1);
            *(v38 + v50[2] + v40 * v41) = v49;
          }

          --v45;
        }

        while (v45);
      }

      ++v41;
    }

    while (v41 != v40);
  }

  v130 = v31;
  write_label_features(v30);
  free(v39);
  logging(a4, "Writing attribute feature counts and offsets.\n", v51, v52, v53, v54, v55, v56, v127);
  v57 = malloc_type_calloc(4uLL, v9[1], 0x100004052888210uLL);
  v58 = malloc_type_calloc(4uLL, v9[1], 0x100004052888210uLL);
  v59 = v58;
  if (v9[1] < 1)
  {
    v61 = 0;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v62 = *(v9 + 3);
    do
    {
      v63 = (v62 + 16 * v60);
      *(v58 + v60) = v61;
      v64 = *v63;
      if (v64 < 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = 0;
        v66 = *(v63 + 1);
        do
        {
          v67 = *v66++;
          v68 = *(a3 + 8 * v67);
          if (v68 == 0.0)
          {
            v61 = v61;
          }

          else
          {
            v61 = (v61 + 1);
          }

          if (v68 != 0.0)
          {
            ++v65;
          }

          --v64;
        }

        while (v64);
      }

      v57[v60++] = v65;
    }

    while (v60 < v9[1]);
  }

  write_attribute_feature_counts_and_offsets(v30);
  free(v57);
  free(v59);
  logging(a4, "Writing attribute features.\n", v69, v70, v71, v72, v73, v74, v128);
  open_attribute_features(v30);
  v81 = v9[1];
  if (v81 >= 1)
  {
    v82 = 0;
    do
    {
      v83 = *(v9 + 3) + 16 * v82;
      v84 = *v83;
      if (*v83 >= 1)
      {
        v85 = 0;
        do
        {
          v86 = *(*(v83 + 8) + 4 * v85);
          if (*(a3 + 8 * v86) != 0.0)
          {
            v87 = *(*(v9 + 2) + 24 * v86 + 8);
            write_attribute_feature(v30);
            v84 = *v83;
          }

          ++v85;
        }

        while (v85 < v84);
        v81 = v9[1];
      }

      ++v82;
    }

    while (v82 < v81);
  }

  logging(a4, "Number of attributes: %d\n", v75, v76, v77, v78, v79, v80, v81);
  logging(a4, "Number of labels: %d\n", v88, v89, v90, v91, v92, v93, *v9);
  logging(a4, "Number of features: %d\n", v94, v95, v96, v97, v98, v99, v9[3]);
  logging(a4, "Number of active label features: %d\n", v100, v101, v102, v103, v104, v105, v42);
  logging(a4, "Number of active attribute features: %d\n", v106, v107, v108, v109, v110, v111, v61);
  v112 = clock();
  logging(a4, "Seconds required: %.3f\n", v113, v114, v115, v116, v117, v118, COERCE__INT64((v112 - v130) / 1000000.0));
  logging(a4, "\n", v119, v120, v121, v122, v123, v124, v129);
  close_writer(v30);
  return 0;
}

uint64_t encoder_features_on_path(void *a1, unsigned int *a2, uint64_t a3, void (*a4)(uint64_t, double), uint64_t a5)
{
  v22 = *a2;
  if (v22 >= 1)
  {
    v7 = 0;
    v8 = *a1;
    v9 = -1;
    do
    {
      v25 = v9;
      v10 = *(a2 + 1) + 16 * v7;
      v9 = *(a3 + 4 * v7);
      v11 = *v10;
      if (*v10 >= 1)
      {
        v12 = 0;
        do
        {
          v13 = (*(v10 + 8) + 16 * v12);
          v14 = v8[3] + 16 * *v13;
          v15 = *v14;
          if (*v14 >= 1)
          {
            v16 = 0;
            v17 = v13[1];
            do
            {
              if (*(v8[2] + 24 * *(*(v14 + 8) + 4 * v16) + 8) == v9)
              {
                a4(a5, v17);
                v15 = *v14;
              }

              ++v16;
            }

            while (v16 < v15);
            v11 = *v10;
          }

          ++v12;
        }

        while (v12 < v11);
      }

      if (v25 != -1)
      {
        v18 = v8[4] + 16 * v25;
        v19 = *v18;
        if (*v18 >= 1)
        {
          v20 = 0;
          do
          {
            if (*(v8[2] + 24 * *(*(v18 + 8) + 4 * v20) + 8) == v9)
            {
              a4(a5, 1.0);
              v19 = *v18;
            }

            ++v20;
          }

          while (v20 < v19);
        }
      }

      ++v7;
    }

    while (v7 != v22);
  }

  return 0;
}

uint64_t encoder_set_weights(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 40) = 0;
  set_level(a1, 1);
  return 0;
}

uint64_t encoder_set_instance(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = 1;
  set_level(a1, 2);
  return 0;
}

uint64_t encoder_viterbi(uint64_t a1, uint64_t a2, void *a3)
{
  crf1dc_viterbi(*(*a1 + 40), a2);
  if (a3)
  {
    *a3 = v4;
  }

  return 0;
}

uint64_t encoder_partition_factor(uint64_t *a1, double *a2)
{
  v3 = *a1;
  set_level(a1, 3);
  *a2 = crf1dc_lognorm(*(v3 + 40));
  return 0;
}

uint64_t encoder_objective_and_gradients(void *a1, double *a2, uint64_t a3, double a4)
{
  v8 = *a1;
  set_level(a1, 4);
  v9 = a1[4];
  v10 = *v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v13 = *(v9 + 1);
    v12 = *(v9 + 2);
    v14 = -1;
    do
    {
      v15 = (v13 + 16 * v11);
      v16 = *(v12 + 4 * v11);
      v17 = *v15;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = *(v15 + 1);
        v20 = v8[3];
        do
        {
          v21 = (v19 + 16 * v18);
          v22 = (v20 + 16 * *v21);
          v23 = *v22;
          if (v23 >= 1)
          {
            v24 = v21[1];
            v25 = *(v22 + 1);
            v26 = v8[2];
            do
            {
              v28 = *v25++;
              v27 = v28;
              if (*(v26 + 24 * v28 + 8) == v16)
              {
                *(a3 + 8 * v27) = *(a3 + 8 * v27) + v24 * a4;
              }

              --v23;
            }

            while (v23);
          }

          ++v18;
        }

        while (v18 != v17);
      }

      if (v14 != -1)
      {
        v29 = (v8[4] + 16 * v14);
        v30 = *v29;
        if (v30 >= 1)
        {
          v31 = *(v29 + 1);
          v32 = v8[2];
          do
          {
            v34 = *v31++;
            v33 = v34;
            if (*(v32 + 24 * v34 + 8) == v16)
            {
              *(a3 + 8 * v33) = *(a3 + 8 * v33) + a4;
            }

            --v30;
          }

          while (v30);
        }
      }

      ++v11;
      v14 = v16;
    }

    while (v11 != v10);
  }

  crf1de_model_expectation(v8, v9, a3, -a4);
  v35 = crf1dc_score(v8[5], *(a1[4] + 16));
  *a2 = crf1dc_lognorm(v8[5]) - v35;
  return 0;
}

void encoder_release(int **a1)
{
  v2 = *a1;
  crf1de_finish(*a1);
  free(v2);

  free(a1);
}

void crf1de_finish(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    crf1dc_delete(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    free(v3);
    *(a1 + 2) = 0;
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    if (a1[1] >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        free(*(*(a1 + 3) + v6));
        ++v5;
        v6 += 16;
      }

      while (v5 < a1[1]);
      v4 = *(a1 + 3);
    }

    free(v4);
    *(a1 + 3) = 0;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    if (*a1 >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        free(*(*(a1 + 4) + v9));
        ++v8;
        v9 += 16;
      }

      while (v8 < *a1);
      v7 = *(a1 + 4);
    }

    free(v7);
    *(a1 + 4) = 0;
  }
}

void *crf1de_transition_score(void *result, uint64_t a2)
{
  v2 = *result;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[4];
    v5 = result[5];
    v6 = *(v5 + 32);
    v7 = *(v5 + 4);
    do
    {
      v8 = (v4 + 16 * v3);
      v9 = *v8;
      if (v9 >= 1)
      {
        v10 = *(v8 + 1);
        v11 = result[2];
        do
        {
          v12 = *v10++;
          *(v6 + 8 * v3 * v7 + 8 * *(v11 + 24 * v12 + 8)) = *(a2 + 8 * v12);
          --v9;
        }

        while (v9);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void *crf1de_state_score(void *result, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = result[5];
    v6 = *(a2 + 1);
    v7 = *(v5 + 24);
    v8 = *(v5 + 4);
    do
    {
      v9 = (v6 + 16 * v4);
      v10 = *v9;
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = *(v9 + 1);
        v13 = result[3];
        do
        {
          v14 = (v12 + 16 * v11);
          v15 = (v13 + 16 * *v14);
          v16 = *v15;
          if (v16 >= 1)
          {
            v17 = v14[1];
            v18 = *(v15 + 1);
            v19 = result[2];
            do
            {
              v20 = *v18++;
              v21 = *(v19 + 24 * v20 + 8);
              *(v7 + 8 * v4 * v8 + 8 * v21) = *(v7 + 8 * v4 * v8 + 8 * v21) + *(a3 + 8 * v20) * v17;
              --v16;
            }

            while (v16);
          }

          ++v11;
        }

        while (v11 != v10);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

void *crf1de_model_expectation(void *result, unsigned int *a2, uint64_t a3, double a4)
{
  v4 = result[5];
  v5 = *a2;
  v6 = *result;
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = *(v4 + 96);
    v9 = *(v4 + 4);
    v10 = *(a2 + 1);
    do
    {
      v11 = (v10 + 16 * v7);
      v12 = *v11;
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = *(v11 + 1);
        v15 = result[3];
        do
        {
          v16 = (v14 + 16 * v13);
          v17 = (v15 + 16 * *v16);
          v18 = *v17;
          if (v18 >= 1)
          {
            v19 = v16[1];
            v20 = *(v17 + 1);
            v21 = result[2];
            do
            {
              v22 = *v20++;
              *(a3 + 8 * v22) = *(a3 + 8 * v22) + v19 * *(v8 + 8 * v7 * v9 + 8 * *(v21 + 24 * v22 + 8)) * a4;
              --v18;
            }

            while (v18);
          }

          ++v13;
        }

        while (v13 != v12);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  if (v6 >= 1)
  {
    v23 = 0;
    v24 = *(v4 + 104);
    v25 = *(v4 + 4);
    v26 = result[4];
    do
    {
      v27 = (v26 + 16 * v23);
      v28 = *v27;
      if (v28 >= 1)
      {
        v29 = *(v27 + 1);
        v30 = result[2];
        do
        {
          v31 = *v29++;
          *(a3 + 8 * v31) = *(a3 + 8 * v31) + *(v24 + 8 * v23 * v25 + 8 * *(v30 + 24 * v31 + 8)) * a4;
          --v28;
        }

        while (v28);
      }

      ++v23;
    }

    while (v23 != v6);
  }

  return result;
}

uint64_t crf1de_write_model(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v112 = a7;
  v9 = a3;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[3];
  logging(a6, "Storing the model\n", a3, a4, a5, a6, a7, a8, v101);
  v15 = clock();
  v16 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  if (v16)
  {
    v17 = v16;
    if (v14 >= 1)
    {
      memset(v16, 255, 4 * v14);
    }

    v18 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
    if (!v18)
    {
      v21 = 1;
LABEL_28:
      v37 = v17;
LABEL_29:
      free(v37);
      return v21;
    }

    v19 = v18;
    v109 = v12;
    if (v13 >= 1)
    {
      memset(v18, 255, 4 * v13);
    }

    v20 = crf1dmw_open_features(a2);
    if (v20)
    {
      goto LABEL_8;
    }

    v105 = v15;
    v106 = v13;
    v107 = a6;
    v108 = v17;
    if (v14 >= 1)
    {
      v22 = 0;
      v110 = 0;
      v23 = 0;
      while (1)
      {
        v24 = *v9;
        if (*v9 != 0.0)
        {
          v25 = *(a1 + 2);
          __s = 0;
          v115 = 0;
          v116 = 0.0;
          *v17 = v23;
          v27 = (v25 + v22 + 4);
          v26 = *(v25 + v22);
          if (v26)
          {
            v28 = v23;
          }

          else
          {
            v29 = *v27;
            if ((v19[v29] & 0x80000000) != 0)
            {
              v19[v29] = v110;
              v29 = *v27;
              v26 = *(v25 + v22);
              v28 = *v17;
              v110 = (v110 + 1);
            }

            else
            {
              v26 = 0;
              v28 = v23;
            }

            v27 = &v19[v29];
          }

          __s = __PAIR64__(*v27, v26);
          LODWORD(v115) = *(v25 + v22 + 8);
          v116 = v24;
          v30 = crf1dmw_put_feature(a2, v28, &__s);
          if (v30)
          {
            goto LABEL_26;
          }

          v23 = (v23 + 1);
        }

        ++v17;
        ++v9;
        v22 += 24;
        if (24 * v14 == v22)
        {
          goto LABEL_25;
        }
      }
    }

    v23 = 0;
    v110 = 0;
LABEL_25:
    v30 = crf1dmw_close_features(a2);
    if (v30)
    {
LABEL_26:
      v21 = v30;
      v17 = v108;
      goto LABEL_27;
    }

    logging(v107, "Number of active features: %d (%d)\n", v31, v32, v33, v34, v35, v36, v23);
    logging(v107, "Number of active attributes: %d (%d)\n", v39, v40, v41, v42, v43, v44, v110);
    logging(v107, "Number of active labels: %d (%d)\n", v45, v46, v47, v48, v49, v50, v12);
    v57 = v112;
    if ((v112 & 2) != 0)
    {
      crf1dmw_set_no_labels(a2, v12);
      v17 = v108;
    }

    else
    {
      logging(v107, "Writing labels\n", v51, v52, v53, v54, v55, v56, v12);
      v20 = crf1dmw_open_labels(a2, v12);
      v58 = v12;
      v17 = v108;
      if (v20)
      {
        goto LABEL_8;
      }

      v59 = a5;
      if (v109 >= 1)
      {
        v60 = 0;
        do
        {
          __s = 0;
          (*(v59 + 48))(v59, v60, &__s);
          if (__s)
          {
            v20 = crf1dmw_put_label(a2, v60, __s);
            if (v20)
            {
              goto LABEL_8;
            }

            v59 = a5;
            (*(a5 + 64))(a5, __s);
            v58 = v109;
          }

          v60 = (v60 + 1);
        }

        while (v58 != v60);
      }

      v20 = crf1dmw_close_labels(a2);
      v57 = v112;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    if (v57)
    {
      crf1dmw_set_no_attributes(a2, v110);
    }

    else
    {
      logging(v107, "Writing attributes\n", v61, v62, v63, v64, v65, v66, v102);
      v20 = crf1dmw_open_attrs(a2, v110);
      if (v20)
      {
        goto LABEL_8;
      }

      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          if ((v19[i] & 0x80000000) == 0)
          {
            __s = 0;
            (*(a4 + 48))(a4, i, &__s);
            if (__s)
            {
              v20 = crf1dmw_put_attr(a2, v19[i], __s);
              if (v20)
              {
                goto LABEL_8;
              }

              (*(a4 + 64))(a4, __s);
            }
          }
        }
      }

      v20 = crf1dmw_close_attrs(a2);
      if (v20)
      {
        goto LABEL_8;
      }
    }

    logging(v107, "Writing feature references for transitions\n", v68, v69, v70, v71, v72, v73, v102);
    v20 = crf1dmw_open_labelrefs(a2, v109 + 2);
    if (!v20)
    {
      v74 = v17;
      if (v109 < 1)
      {
LABEL_59:
        v77 = crf1dmw_close_labelrefs(a2);
        if (!v77)
        {
          logging(v107, "Writing feature references for attributes\n", v78, v79, v80, v81, v82, v83, v103);
          v77 = crf1dmw_open_attrrefs(a2, v110);
          if (!v77)
          {
            if (v106 < 1)
            {
LABEL_68:
              v21 = crf1dmw_close_attrrefs(a2);
              if (!v21)
              {
                v88 = clock();
                logging(v107, "Seconds required: %.3f\n", v89, v90, v91, v92, v93, v94, COERCE__INT64((v88 - v105) / 1000000.0));
                logging(v107, "\n", v95, v96, v97, v98, v99, v100, v104);
                free(v19);
                v37 = v74;
                goto LABEL_29;
              }

              goto LABEL_62;
            }

            v84 = 0;
            v85 = v19;
            while (1)
            {
              v87 = *v85++;
              v86 = v87;
              if ((v87 & 0x80000000) == 0)
              {
                v77 = crf1dmw_put_attrref(a2, v86, (*(a1 + 3) + v84), v74);
                if (v77)
                {
                  break;
                }
              }

              v84 += 16;
              if (16 * v106 == v84)
              {
                goto LABEL_68;
              }
            }
          }
        }
      }

      else
      {
        v75 = 0;
        v76 = 0;
        while (1)
        {
          v77 = crf1dmw_put_labelref(a2, v76, (*(a1 + 4) + v75), v74);
          if (v77)
          {
            break;
          }

          ++v76;
          v75 += 16;
          if (16 * v109 == v75)
          {
            goto LABEL_59;
          }
        }
      }

      v21 = v77;
LABEL_62:
      v17 = v74;
      goto LABEL_27;
    }

LABEL_8:
    v21 = v20;
LABEL_27:
    free(v19);
    goto LABEL_28;
  }

  return 1;
}

void set_level(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = *a1;
  if (v4 < 1)
  {
    crf1dc_reset(v5[5], 2);
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 == 1.0)
    {
      crf1de_transition_score(v5, v6);
    }

    else
    {
      v8 = *v5;
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = v5[4];
        v11 = v5[5];
        v12 = *(v11 + 32);
        v13 = *(v11 + 4);
        do
        {
          v14 = (v10 + 16 * v9);
          v15 = *v14;
          if (v15 >= 1)
          {
            v16 = *(v14 + 1);
            v17 = v5[2];
            do
            {
              v18 = *v16++;
              *(v12 + 8 * v9 * v13 + 8 * *(v17 + 24 * v18 + 8)) = v7 * *(v6 + 8 * v18);
              --v15;
            }

            while (v15);
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }
  }

  if (a2 > 1 && v4 < 2)
  {
    crf1dc_set_num_items(v5[5], **(a1 + 32));
    crf1dc_reset(v5[5], 1);
    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    if (v21 == 1.0)
    {
      crf1de_state_score(v5, v19, v20);
    }

    else
    {
      v22 = *v19;
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v5[5];
        v25 = *(v19 + 1);
        v26 = *(v24 + 24);
        v27 = *(v24 + 4);
        do
        {
          v28 = (v25 + 16 * v23);
          v29 = *v28;
          if (v29 >= 1)
          {
            v30 = 0;
            v31 = *(v28 + 1);
            v32 = v5[3];
            do
            {
              v33 = (v31 + 16 * v30);
              v34 = (v32 + 16 * *v33);
              v35 = *v34;
              if (v35 >= 1)
              {
                v36 = v21 * v33[1];
                v37 = *(v34 + 1);
                v38 = v5[2];
                do
                {
                  v39 = *v37++;
                  v40 = *(v38 + 24 * v39 + 8);
                  *(v26 + 8 * v23 * v27 + 8 * v40) = *(v26 + 8 * v23 * v27 + 8 * v40) + *(v20 + 8 * v39) * v36;
                  --v35;
                }

                while (v35);
              }

              ++v30;
            }

            while (v30 != v29);
          }

          ++v23;
        }

        while (v23 != v22);
      }
    }
  }

  if (a2 > 2 && v4 < 3)
  {
    crf1dc_exp_transition(v5[5]);
    crf1dc_exp_state(v5[5]);
    crf1dc_alpha_score(v5[5]);
    crf1dc_beta_score(v5[5]);
  }

  if (a2 > 3 && v4 <= 3)
  {
    crf1dc_marginals(v5[5]);
  }

  *(a1 + 40) = a2;
}

void ME_Efficient_Model_Trainer::regularized_func_grad(ME_Efficient_Model_Trainer *this, double a2, uint64_t **a3, double **a4)
{
  v6 = ME_Efficient_Model_Trainer::FunctionGradient(this, a3, a4);
  v7 = a3[1];
  v8 = v7 - *a3;
  if (v7 != *a3)
  {
    v9 = 0;
    v10 = v8 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v6 = v6 + a2 * fabs(*(*a3 + (v9 >> 29)));
      v9 += 0x100000000;
      --v10;
    }

    while (v10);
  }
}

double ME_Efficient_Model_Trainer::constrained_line_search(ME_Efficient_Model_Trainer *this, double a2, const Vec *a3, const Vec *a4, double a5, const Vec *a6, void **a7, double **a8)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v53, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
  v16 = v53;
  if (v54 != v53)
  {
    v17 = 0;
    v18 = (v54 - v53) >> 3;
    v19 = *a4;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    do
    {
      if (*(v16 + (v17 >> 29)) == 0.0)
      {
        v16[v17 >> 32] = -*(v19 + 8 * (v17 >> 32));
      }

      v17 += 0x100000000;
      --v18;
    }

    while (v18);
  }

  v20 = 2.0;
  do
  {
    while (1)
    {
      Vec::Vec(&v49, (*(a6 + 1) - *a6) >> 3, 0.0);
      v20 = v20 * 0.5;
      v21 = *a6;
      v22 = *(a6 + 1);
      v23 = v22 - *a6;
      if (v22 != *a6)
      {
        v24 = 0;
        v25 = v23 >> 3;
        v26 = v49;
        if (v25 <= 1)
        {
          v25 = 1;
        }

        do
        {
          *&v26[v24 >> 29] = v20 * *(v21 + (v24 >> 29));
          v24 += 0x100000000;
          --v25;
        }

        while (v25);
      }

      Vec::Vec(&__p, (*(a3 + 1) - *a3) >> 3, 0.0);
      v27 = *a3;
      v28 = *(a3 + 1);
      v29 = v28 - *a3;
      v30 = v49;
      if (v29 != v50 - v49)
      {
        __assert_rtn("operator+", "mathvec.h", 64, "a.Size() == b.Size()");
      }

      if (v28 != v27)
      {
        v31 = 0;
        v32 = v29 >> 3;
        v33 = __p;
        if (v32 <= 1)
        {
          v32 = 1;
        }

        do
        {
          *&v33[v31 >> 29] = *(v27 + (v31 >> 29)) + *&v30[v31 >> 29];
          v31 += 0x100000000;
          --v32;
        }

        while (v32);
      }

      if (&__p != a7)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a7, __p, v52, (v52 - __p) >> 3);
      }

      if (__p)
      {
        v52 = __p;
        operator delete(__p);
      }

      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }

      Vec::Project(a7, &v53);
      ME_Efficient_Model_Trainer::regularized_func_grad(this, a2, a7, a8);
      v35 = v34;
      Vec::Vec(&__p, (a7[1] - *a7) >> 3, 0.0);
      v36 = *a7;
      v37 = a7[1];
      v38 = v37 - *a7;
      v39 = *a3;
      if (v38 != *(a3 + 1) - *a3)
      {
        __assert_rtn("operator-", "mathvec.h", 74, "a.Size() == b.Size()");
      }

      if (v37 != v36)
      {
        v40 = 0;
        v41 = v38 >> 3;
        v42 = __p;
        if (v41 <= 1)
        {
          v41 = 1;
        }

        do
        {
          *&v42[v40 >> 29] = *(v36 + (v40 >> 29)) - *(v39 + (v40 >> 29));
          v40 += 0x100000000;
          --v41;
        }

        while (v41);
      }

      v43 = v52 - __p;
      if (v52 == __p)
      {
        break;
      }

      v44 = 0;
      v45 = v43 >> 3;
      if ((v43 >> 3) <= 1)
      {
        v45 = 1;
      }

      v46 = 0.0;
      do
      {
        v46 = v46 + *(__p + (v44 >> 29)) * *(*a4 + (v44 >> 29));
        v44 += 0x100000000;
        --v45;
      }

      while (v45);
      v47 = a5 + v46 * 0.1;
      v52 = __p;
      operator delete(__p);
      if (v35 <= v47)
      {
        goto LABEL_38;
      }
    }

    if (v52)
    {
      v52 = __p;
      operator delete(__p);
    }
  }

  while (v35 > a5);
LABEL_38:
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  return v35;
}

void sub_297704C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Vec::Project(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = v3 - *result;
  if (v3 != *result)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = *a2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      if (*v2 * *(v7 + (v5 >> 29)) <= 0.0)
      {
        *v2 = 0.0;
      }

      ++v2;
      v5 += 0x100000000;
      --v6;
    }

    while (v6);
  }

  return result;
}

void ME_Efficient_Model_Trainer::perform_OWLQN(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v93 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v10 = (v8 - v7) >> 3;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v87, v7, v8, v10);
  Vec::Vec(&v85, v10, 0.0);
  Vec::Vec(&v83, v10, 0.0);
  ME_Efficient_Model_Trainer::regularized_func_grad(a1, a4, &v87, &v85);
  v12 = v11;
  for (i = 0; i != 30; i += 3)
  {
    Vec::Vec(&v92[i], 0, 0.0);
  }

  v73 = a3;
  for (j = 0; j != 30; j += 3)
  {
    Vec::Vec(&v91[j], 0, 0.0);
  }

  v15 = 0;
  v16 = MEMORY[0x29EDCA610];
  while (v15 != 300)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v80, v85, v86, (v86 - v85) >> 3);
    v17 = v87;
    if (v88 != v87)
    {
      v18 = 0;
      v19 = (v88 - v87) >> 3;
      v20 = v85;
      v21 = v80;
      if (v19 <= 1)
      {
        v19 = 1;
      }

      do
      {
        v22 = v18 >> 32;
        v23 = *&v17[v18 >> 29];
        v24 = v23 <= 0.0;
        if (v23 == 0.0)
        {
          v27 = v20[v22];
          if (v27 - a4 > 0.0)
          {
            v21[v22] = v27 - a4;
            goto LABEL_22;
          }

          v26 = v27 + a4;
          if (v26 >= 0.0)
          {
            v21[v22] = 0.0;
            goto LABEL_22;
          }
        }

        else
        {
          if (v23 >= 0.0)
          {
            v25 = 0.0;
          }

          else
          {
            v25 = -1.0;
          }

          if (!v24)
          {
            v25 = 1.0;
          }

          v26 = v21[v22] + a4 * v25;
        }

        v21[v22] = v26;
LABEL_22:
        v18 += 0x100000000;
        --v19;
      }

      while (v19);
    }

    v28 = v15 + 1;
    fprintf(*v16, "%3d  obj(err) = %f (%6.4f)", v15 + 1, -v12, *(a1 + 336));
    if (*(a1 + 352) >= 1)
    {
      v29 = ME_Efficient_Model_Trainer::heldout_likelihood(a1);
      fprintf(*v16, "  heldout_logl(err) = %f (%6.4f)", v29, *(a1 + 344));
    }

    fputc(10, *v16);
    v30 = v80;
    if (v81 == v80)
    {
      v33 = 0.0;
    }

    else
    {
      v31 = 0;
      v32 = (v81 - v80) >> 3;
      if (v32 <= 1)
      {
        v32 = 1;
      }

      v33 = 0.0;
      do
      {
        v33 = v33 + *(v80 + (v31 >> 29)) * *(v80 + (v31 >> 29));
        v31 += 0x100000000;
        --v32;
      }

      while (v32);
    }

    v34 = sqrt(v33);
    if (v34 >= 0.0001)
    {
      approximate_Hg(&v80, v92, v91, v90, v15, &v76);
      Vec::Vec(&__p, (v77 - v76) >> 3, 0.0);
      v35 = v76;
      if (v77 != v76)
      {
        v36 = 0;
        v37 = (v77 - v76) >> 3;
        v38 = __p;
        if (v37 <= 1)
        {
          v37 = 1;
        }

        do
        {
          *&v38[v36 >> 29] = -*&v35[v36 >> 29];
          v36 += 0x100000000;
          --v37;
        }

        while (v37);
      }

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v83, __p, v79, (v79 - __p) >> 3);
      if (__p)
      {
        v79 = __p;
        operator delete(__p);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      if (v84 == v83)
      {
        goto LABEL_47;
      }

      v39 = 0;
      v40 = (v84 - v83) >> 3;
      if (v40 <= 1)
      {
        v40 = 1;
      }

      v41 = 0.0;
      do
      {
        v41 = v41 + *(v83 + (v39 >> 29)) * *(v80 + (v39 >> 29));
        v39 += 0x100000000;
        --v40;
      }

      while (v40);
      if (v41 >= 0.0)
      {
LABEL_47:
        Vec::Vec(&__p, (v81 - v80) >> 3, 0.0);
        v42 = v80;
        if (v81 != v80)
        {
          v43 = 0;
          v44 = (v81 - v80) >> 3;
          v45 = __p;
          if (v44 <= 1)
          {
            v44 = 1;
          }

          do
          {
            *&v45[v43 >> 29] = -*&v42[v43 >> 29];
            v43 += 0x100000000;
            --v44;
          }

          while (v44);
        }

        v46 = v83;
        v47 = __p;
        if (v84 != v83)
        {
          v48 = 0;
          v49 = (v84 - v83) >> 3;
          if (v49 <= 1)
          {
            v49 = 1;
          }

          do
          {
            if (*v46 * *&v47[v48 >> 29] <= 0.0)
            {
              *v46 = 0.0;
            }

            v48 += 0x100000000;
            ++v46;
            --v49;
          }

          while (v49);
          v47 = __p;
        }

        if (v47)
        {
          v79 = v47;
          operator delete(v47);
        }
      }

      Vec::Vec(&__p, v10, 0.0);
      Vec::Vec(&v76, v10, 0.0);
      v12 = ME_Efficient_Model_Trainer::constrained_line_search(a1, a4, &v87, &v80, v12, &v83, &__p, &v76);
      Vec::Vec(&v74, (v79 - __p) >> 3, 0.0);
      v50 = __p;
      v51 = v87;
      if (v79 - __p != v88 - v87)
      {
        __assert_rtn("operator-", "mathvec.h", 74, "a.Size() == b.Size()");
      }

      if (v79 != __p)
      {
        v52 = 0;
        v53 = (v79 - __p) >> 3;
        v54 = v74;
        if (v53 <= 1)
        {
          v53 = 1;
        }

        do
        {
          *&v54[v52 >> 29] = *&v50[v52 >> 29] - *&v51[v52 >> 29];
          v52 += 0x100000000;
          --v53;
        }

        while (v53);
      }

      v55 = v15 % 0xA;
      v56 = &v92[3 * v55];
      if (v56 != &v74)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v92[3 * v55], v74, v75, (v75 - v74) >> 3);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      Vec::Vec(&v74, (v77 - v76) >> 3, 0.0);
      v57 = v76;
      v58 = v85;
      if (v77 - v76 != v86 - v85)
      {
        __assert_rtn("operator-", "mathvec.h", 74, "a.Size() == b.Size()");
      }

      if (v77 != v76)
      {
        v59 = 0;
        v60 = (v77 - v76) >> 3;
        v61 = v74;
        if (v60 <= 1)
        {
          v60 = 1;
        }

        do
        {
          *&v61[v59 >> 29] = *&v57[v59 >> 29] - *&v58[v59 >> 29];
          v59 += 0x100000000;
          --v60;
        }

        while (v60);
      }

      v62 = &v91[3 * v55];
      if (v62 != &v74)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v91[3 * v55], v74, v75, (v75 - v74) >> 3);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      v63 = v62[1];
      v64 = v63 - *v62;
      if (v63 == *v62)
      {
        v67 = 0.0;
      }

      else
      {
        v65 = 0;
        v66 = v64 >> 3;
        if ((v64 >> 3) <= 1)
        {
          v66 = 1;
        }

        v67 = 0.0;
        do
        {
          v67 = v67 + *(*v62 + (v65 >> 29)) * *(*v56 + (v65 >> 29));
          v65 += 0x100000000;
          --v66;
        }

        while (v66);
      }

      v90[v55] = 1.0 / v67;
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v87, __p, v79, (v79 - __p) >> 3);
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v85, v76, v77, (v77 - v76) >> 3);
      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      if (__p)
      {
        v79 = __p;
        operator delete(__p);
      }

      v30 = v80;
    }

    if (v30)
    {
      v81 = v30;
      operator delete(v30);
    }

    v15 = v28;
    if (v34 < 0.0001)
    {
      break;
    }
  }

  *v73 = 0;
  v73[1] = 0;
  v73[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v73, v87, v88, (v88 - v87) >> 3);
  for (k = 0; k != -30; k -= 3)
  {
    v69 = v91[k + 27];
    if (v69)
    {
      v91[k + 28] = v69;
      operator delete(v69);
    }
  }

  for (m = 0; m != -30; m -= 3)
  {
    v71 = v92[m + 27];
    if (v71)
    {
      v92[m + 28] = v71;
      operator delete(v71);
    }
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  v72 = *MEMORY[0x29EDCA608];
}

void sub_2977054D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  v33 = &STACK[0x200];
  v34 = -240;
  while (1)
  {
    v35 = *(v33 - 1);
    if (v35)
    {
      *v33 = v35;
      operator delete(v35);
    }

    v33 -= 3;
    v34 += 24;
    if (!v34)
    {
      v36 = &STACK[0x2F0];
      v37 = -240;
      while (1)
      {
        v38 = *(v36 - 1);
        if (v38)
        {
          *v36 = v38;
          operator delete(v38);
        }

        v36 -= 3;
        v37 += 24;
        if (!v37)
        {
          if (__p)
          {
            operator delete(__p);
          }

          if (a29)
          {
            operator delete(a29);
          }

          if (a32)
          {
            operator delete(a32);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6D4D0, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void Vec::Vec(Vec *this, unint64_t a2, double a3)
{
  v3 = a3;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<double>::resize(this, a2, &v3);
}

void sub_29770596C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_297732570)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_297732570)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_297705BE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *crf1df_generate(unsigned int *a1, uint64_t a2, int a3, double a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v69 = *(a2 + 16);
  v72[1] = a8;
  v72[2] = 0;
  v72[0] = a9;
  v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  v22 = v14;
  v67 = a1;
  HIDWORD(v64) = a7;
  if (v14)
  {
    *(v14 + 2) = 0;
    v23 = rumavl_new(0x18, featureset_comp, 0, 0);
    *v22 = v23;
    if (!v23)
    {
      free(v22);
      v22 = 0;
    }
  }

  logging_progress_start(v72, v15, v16, v17, v18, v19, v20, v21, v64);
  if (v69 >= 1)
  {
    v31 = 0;
    if (a6)
    {
      v32 = a3 < 1;
    }

    else
    {
      v32 = 1;
    }

    v33 = v32;
    do
    {
      v70 = v31;
      v34 = dataset_get(a2, v31);
      v71 = *v34;
      if (v71 >= 1)
      {
        v41 = v34;
        v42 = 0;
        v43 = a3;
        do
        {
          v44 = *(v41 + 1);
          v45 = *(*(v41 + 2) + 4 * v42);
          if (v43 != a3)
          {
            LODWORD(v73) = 1;
            HIDWORD(v73) = v43;
            LODWORD(v74) = v45;
            v75 = 0x3FF0000000000000;
            featureset_add(v22, &v73);
          }

          v46 = (v44 + 16 * v42);
          if (*v46 >= 1)
          {
            v47 = 0;
            do
            {
              v48 = *(v46 + 1) + 16 * v47;
              v49 = *v48;
              LODWORD(v73) = 0;
              HIDWORD(v73) = v49;
              LODWORD(v74) = v45;
              v75 = *(v48 + 8);
              featureset_add(v22, &v73);
              if ((v33 & 1) == 0)
              {
                v50 = 0;
                do
                {
                  v51 = *(*(v46 + 1) + 16 * v47);
                  LODWORD(v73) = 0;
                  HIDWORD(v73) = v51;
                  LODWORD(v74) = v50;
                  v75 = 0;
                  featureset_add(v22, &v73);
                  ++v50;
                }

                while (a3 != v50);
              }

              ++v47;
            }

            while (v47 < *v46);
          }

          ++v42;
          v43 = v45;
        }

        while (v42 != v71);
      }

      logging_progress(v72, 100 * v31++ / v69, v35, v36, v37, v38, v39, v40);
    }

    while (v70 + 1 != v69);
  }

  logging_progress_end(v72, v24, v25, v26, v27, v28, v29, v30, v65);
  if (v66 && a3 >= 1)
  {
    v52 = 0;
    do
    {
      v53 = 0;
      do
      {
        LODWORD(v73) = 1;
        HIDWORD(v73) = v52;
        LODWORD(v74) = v53;
        v75 = 0;
        featureset_add(v22, &v73);
        ++v53;
      }

      while (a3 != v53);
      ++v52;
    }

    while (v52 != a3);
  }

  v76 = 0;
  v54 = rumavl_node_next(*v22, 0, 1, &v76);
  if (v54)
  {
    v55 = v54;
    v56 = 0;
    do
    {
      if (v76[2] >= a4)
      {
        ++v56;
      }

      v55 = rumavl_node_next(*v22, v55, 1, &v76);
    }

    while (v55);
  }

  else
  {
    v56 = 0;
  }

  v57 = malloc_type_calloc(v56, 0x18uLL, 0x10000401E56706BuLL);
  if (v57)
  {
    v58 = rumavl_node_next(*v22, 0, 1, &v76);
    if (v58)
    {
      v59 = v58;
      v60 = 0;
      do
      {
        if (v76[2] >= a4)
        {
          v61 = *v76;
          v62 = &v57[24 * v60];
          *(v62 + 2) = v76[2];
          *v62 = v61;
          ++v60;
        }

        v59 = rumavl_node_next(*v22, v59, 1, &v76);
      }

      while (v59);
    }
  }

  else
  {
    v56 = 0;
  }

  *v67 = v56;
  rumavl_destroy(*v22);
  free(v22);
  return v57;
}

uint64_t featureset_add(uint64_t a1, double *a2)
{
  result = rumavl_find(*a1, a2);
  if (result)
  {
    *(result + 16) = a2[2] + *(result + 16);
  }

  else
  {
    result = rumavl_insert(*a1, a2);
    ++*(a1 + 8);
  }

  return result;
}

uint64_t crf1df_init_references(void ***a1, void ***a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(a5, 0x10uLL, 0x101004082113244uLL);
  if (!v12)
  {
    v14 = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_38;
  }

  v39 = a2;
  v13 = malloc_type_calloc(a6, 0x10uLL, 0x101004082113244uLL);
  v14 = v13;
  if (!v13)
  {
LABEL_26:
    if (a5 >= 1)
    {
      v33 = a5;
      v34 = v12 + 1;
      do
      {
        v35 = *v34;
        v34 += 2;
        free(v35);
        --v33;
      }

      while (v33);
    }

    free(v12);
    if (v14)
    {
      if (a6 >= 1)
      {
        v36 = a6;
        v37 = v14 + 1;
        do
        {
          v38 = *v37;
          v37 += 2;
          free(v38);
          --v36;
        }

        while (v36);
      }

      free(v14);
      v12 = 0;
      v14 = 0;
    }

    else
    {
      v12 = 0;
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

  if (a4 >= 1)
  {
    v15 = a4;
    v16 = (a3 + 4);
    while (1)
    {
      v17 = *(v16 - 1);
      v18 = v12;
      if (!v17)
      {
        goto LABEL_8;
      }

      if (v17 == 1)
      {
        break;
      }

LABEL_9:
      v16 += 6;
      if (!--v15)
      {
        goto LABEL_10;
      }
    }

    v18 = v13;
LABEL_8:
    ++LODWORD(v18[2 * *v16]);
    goto LABEL_9;
  }

LABEL_10:
  if (a5 >= 1)
  {
    v19 = a5;
    v20 = v12;
    do
    {
      v21 = malloc_type_calloc(*v20, 4uLL, 0x100004052888210uLL);
      v20[1] = v21;
      if (!v21)
      {
        goto LABEL_26;
      }

      *v20 = 0;
      v20 += 2;
    }

    while (--v19);
  }

  if (a6 >= 1)
  {
    v22 = a6;
    v23 = v14;
    do
    {
      v24 = malloc_type_calloc(*v23, 4uLL, 0x100004052888210uLL);
      v23[1] = v24;
      if (!v24)
      {
        goto LABEL_26;
      }

      *v23 = 0;
      v23 += 2;
    }

    while (--v22);
  }

  if (a4 < 1)
  {
    result = 0;
LABEL_37:
    a2 = v39;
    goto LABEL_38;
  }

  v25 = 0;
  v26 = (a3 + 4);
  a2 = v39;
  do
  {
    v27 = *(v26 - 1);
    v28 = v12;
    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_24;
      }

      v28 = v14;
    }

    v29 = &v28[2 * *v26];
    v30 = v29[1];
    v31 = *v29;
    *v29 = v31 + 1;
    v30[v31] = v25;
LABEL_24:
    ++v25;
    v26 += 6;
  }

  while (a4 != v25);
  result = 0;
LABEL_38:
  *a1 = v12;
  *a2 = v14;
  return result;
}

uint64_t featureset_comp(_DWORD *a1, _DWORD *a2)
{
  v2 = (*a1 > *a2) - (*a1 < *a2);
  if (!v2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v6 = __OFSUB__(v3, v4);
    v5 = v3 - v4 < 0;
    v7 = v3 > v4;
    v8 = v5 ^ v6;
    v2 = (v7 - v8);
    if (!v2)
    {
      v9 = a1[2];
      v10 = a2[2];
      v6 = __OFSUB__(v9, v10);
      v5 = v9 - v10 < 0;
      v11 = v9 > v10;
      v12 = v5 != v6;
      return (v11 - v12);
    }
  }

  return v2;
}

FILE *crf1mmw_close_file_pointer(FILE *result)
{
  if (LOBYTE(result->_ur) == 1)
  {
    result = result->_p;
    if (result)
    {
      return fclose(result);
    }
  }

  return result;
}

uint64_t crf1mmw_initialize_header(uint64_t a1)
{
  *(a1 + 12) = 1179796332;
  *(a1 + 20) = 0x66434D4F46;
  *(a1 + 64) = 0;
  if (fseek(*a1, 48, 1))
  {
    return 2147483651;
  }

  else
  {
    return 0;
  }
}

char *crf1mmw(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A0040501B4AF5uLL);
  if (v2)
  {
    v3 = fopen(a1, "wb");
    *v2 = v3;
    if (!v3 || (v2[112] = 1, *(v2 + 13) = 0, *(v2 + 3) = 1179796332, *(v2 + 20) = 0x66434D4F46, *(v2 + 16) = 0, fseek(v3, 48, 1)))
    {
      if (v2[112] == 1 && *v2)
      {
        fclose(*v2);
      }

      free(v2);
      return 0;
    }
  }

  return v2;
}

_BYTE *crf1mmw_from_file_pointer(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A0040501B4AF5uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[112] = 0;
    *(v2 + 13) = MEMORY[0x29C2730D0](a1);
    *(v3 + 3) = 1179796332;
    *(v3 + 20) = 0x66434D4F46;
    *(v3 + 16) = 0;
    if (fseek(*v3, 48, 1))
    {
      if (v3[112] == 1 && *v3)
      {
        fclose(*v3);
      }

      free(v3);
      return 0;
    }
  }

  return v3;
}

size_t write_header_to_file(FILE *a1, _DWORD *a2)
{
  write_uint8_array(a1, a2);
  __ptr = a2[1];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  write_uint8_array(a1, (a2 + 2));
  __ptr = a2[3];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[4];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[5];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[6];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[7];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[8];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[9];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[10];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[11];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[12];
  fwrite(&__ptr, 4uLL, 1uLL, a1);
  __ptr = a2[13];
  return fwrite(&__ptr, 4uLL, 1uLL, a1);
}

size_t write_uint8_array(FILE *__stream, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    __ptr = *(a2 + i);
    result = fwrite(&__ptr, 1uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t crf1dmw_close(unsigned int *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x29C2730D0](*a1);
  v4 = *(a1 + 13);
  a1[4] = v3 - v4;
  if (fseek(v2, v4, 0) || (write_header_to_file(v2, a1 + 3), ferror(v2)))
  {
    if (*(a1 + 112) != 1)
    {
      v7 = 1;
      goto LABEL_7;
    }

    v5 = *a1;
    v6 = 1;
    v7 = 1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    fseek(v2, *(a1 + 13) + a1[4], 0);
    v7 = 0;
    if (*(a1 + 112) == 1)
    {
      v6 = 0;
      v7 = 0;
      v5 = *a1;
      if (*a1)
      {
LABEL_5:
        fclose(v5);
        v7 = v6;
      }
    }
  }

LABEL_7:
  free(a1);
  return v7;
}

uint64_t crf1dmw_open_labels(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  *(a1 + 44) = MEMORY[0x29C2730D0](*a1) - *(a1 + 104);
  v5 = cqdb_writer(*a1, 0);
  *(a1 + 72) = v5;
  if (v5)
  {
    result = 0;
    *(a1 + 8) = 1;
    *(a1 + 32) = a2;
  }

  else
  {
    *(a1 + 44) = 0;
    return 1;
  }

  return result;
}

uint64_t crf1dmw_close_labels(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  result = cqdb_writer_close(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t crf1dmw_set_no_labels(uint64_t result, int a2)
{
  *(result + 32) = a2;
  *(result + 44) = 0;
  return result;
}

uint64_t crf1dmw_open_attrs(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  *(a1 + 48) = MEMORY[0x29C2730D0](*a1) - *(a1 + 104);
  v5 = cqdb_writer(*a1, 0);
  *(a1 + 72) = v5;
  if (v5)
  {
    result = 0;
    *(a1 + 8) = 2;
    *(a1 + 36) = a2;
  }

  else
  {
    *(a1 + 48) = 0;
    return 1;
  }

  return result;
}

uint64_t crf1dmw_close_attrs(uint64_t a1)
{
  if (*(a1 + 8) != 2)
  {
    return 1;
  }

  result = cqdb_writer_close(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t crf1dmw_open_labelrefs(void *a1, int a2)
{
  if (*(a1 + 2))
  {
    return 2147483652;
  }

  v15 = v2;
  v16 = v3;
  v7 = *a1;
  v8 = 4 * a2;
  v9 = malloc_type_calloc(v8 + 12, 1uLL, 0x1000040451B5BE8uLL);
  if (!v9)
  {
    return 2147483649;
  }

  v10 = v9;
  v11 = MEMORY[0x29C2730D0](v7);
  if ((v11 & 3) != 0)
  {
    v12 = v11 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, v7);
    }

    while ((v12++ & 3) != 0);
  }

  *(a1 + 14) = MEMORY[0x29C2730D0](*a1) - *(a1 + 26);
  fseek(v7, v8 + 12, 1);
  result = 0;
  *v10 = 1179797068;
  v10[2] = a2;
  a1[11] = v10;
  *(a1 + 2) = 3;
  return result;
}

uint64_t crf1dmw_close_labelrefs(void *a1)
{
  if (*(a1 + 2) != 3)
  {
    return 2147483652;
  }

  v15 = v1;
  v16 = v2;
  v4 = *a1;
  v5 = a1[11];
  v6 = *(a1 + 14);
  v7 = MEMORY[0x29C2730D0](*a1);
  v8 = a1[13];
  v9 = v7 - v8;
  v5[1] = v7 - v8 - v6;
  fseek(v4, v8 + v6, 0);
  write_uint8_array(v4, v5);
  __ptr = v5[1];
  fwrite(&__ptr, 4uLL, 1uLL, v4);
  v13 = v5[2];
  fwrite(&v13, 4uLL, 1uLL, v4);
  if (v5[2])
  {
    v10 = 0;
    do
    {
      v14 = v5[v10 + 3];
      fwrite(&v14, 4uLL, 1uLL, v4);
      ++v10;
    }

    while (v10 < v5[2]);
  }

  fseek(v4, a1[13] + v9, 0);
  free(v5);
  result = 0;
  a1[11] = 0;
  *(a1 + 2) = 0;
  return result;
}

uint64_t crf1dmw_put_labelref(void *a1, int a2, unsigned int *a3, uint64_t a4)
{
  if (*(a1 + 2) != 3)
  {
    return 2147483652;
  }

  v19 = v4;
  v20 = v5;
  v8 = *a1;
  v9 = a1[11];
  *(v9 + 4 * a2 + 12) = MEMORY[0x29C2730D0](*a1) - *(a1 + 26);
  v10 = *a3;
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(a3 + 1);
    do
    {
      v13 = *v12++;
      v11 += *(a4 + 4 * v13) >= 0;
      --v10;
    }

    while (v10);
  }

  __ptr = v11;
  fwrite(&__ptr, 4uLL, 1uLL, v8);
  v15 = *a3;
  if (*a3 >= 1)
  {
    v16 = 0;
    do
    {
      if ((*(a4 + 4 * *(*(a3 + 1) + 4 * v16)) & 0x80000000) == 0)
      {
        v18 = *(a4 + 4 * *(*(a3 + 1) + 4 * v16));
        fwrite(&v18, 4uLL, 1uLL, v8);
        v15 = *a3;
      }

      ++v16;
    }

    while (v16 < v15);
  }

  return 0;
}

uint64_t crf1dmw_open_attrrefs(void *a1, int a2)
{
  if (*(a1 + 2))
  {
    return 2147483652;
  }

  v15 = v2;
  v16 = v3;
  v7 = *a1;
  v8 = 4 * a2;
  v9 = malloc_type_calloc(v8 + 12, 1uLL, 0x1000040451B5BE8uLL);
  if (!v9)
  {
    return 2147483649;
  }

  v10 = v9;
  v11 = MEMORY[0x29C2730D0](v7);
  if ((v11 & 3) != 0)
  {
    v12 = v11 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, v7);
    }

    while ((v12++ & 3) != 0);
  }

  *(a1 + 15) = MEMORY[0x29C2730D0](*a1) - *(a1 + 26);
  fseek(v7, v8 + 12, 1);
  result = 0;
  *v10 = 1179797057;
  v10[2] = a2;
  a1[11] = v10;
  *(a1 + 2) = 4;
  return result;
}

uint64_t crf1dmw_close_attrrefs(void *a1)
{
  if (*(a1 + 2) != 4)
  {
    return 2147483652;
  }

  v15 = v1;
  v16 = v2;
  v4 = *a1;
  v5 = a1[11];
  v6 = *(a1 + 15);
  v7 = MEMORY[0x29C2730D0](*a1);
  v8 = a1[13];
  v9 = v7 - v8;
  v5[1] = v7 - v8 - v6;
  fseek(v4, v8 + v6, 0);
  write_uint8_array(v4, v5);
  __ptr = v5[1];
  fwrite(&__ptr, 4uLL, 1uLL, v4);
  v13 = v5[2];
  fwrite(&v13, 4uLL, 1uLL, v4);
  if (v5[2])
  {
    v10 = 0;
    do
    {
      v14 = v5[v10 + 3];
      fwrite(&v14, 4uLL, 1uLL, v4);
      ++v10;
    }

    while (v10 < v5[2]);
  }

  fseek(v4, a1[13] + v9, 0);
  free(v5);
  result = 0;
  a1[11] = 0;
  *(a1 + 2) = 0;
  return result;
}

uint64_t crf1dmw_put_attrref(void *a1, int a2, unsigned int *a3, uint64_t a4)
{
  if (*(a1 + 2) != 4)
  {
    return 2147483652;
  }

  v19 = v4;
  v20 = v5;
  v8 = *a1;
  v9 = a1[11];
  *(v9 + 4 * a2 + 12) = MEMORY[0x29C2730D0](*a1) - *(a1 + 26);
  v10 = *a3;
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(a3 + 1);
    do
    {
      v13 = *v12++;
      v11 += *(a4 + 4 * v13) >= 0;
      --v10;
    }

    while (v10);
  }

  __ptr = v11;
  fwrite(&__ptr, 4uLL, 1uLL, v8);
  v15 = *a3;
  if (*a3 >= 1)
  {
    v16 = 0;
    do
    {
      if ((*(a4 + 4 * *(*(a3 + 1) + 4 * v16)) & 0x80000000) == 0)
      {
        v18 = *(a4 + 4 * *(*(a3 + 1) + 4 * v16));
        fwrite(&v18, 4uLL, 1uLL, v8);
        v15 = *a3;
      }

      ++v16;
    }

    while (v16 < v15);
  }

  return 0;
}

uint64_t crf1dmw_set_no_attributes(uint64_t result, int a2)
{
  *(result + 36) = a2;
  *(result + 48) = 0;
  return result;
}

uint64_t crf1dmw_open_features(void *a1)
{
  if (*(a1 + 2))
  {
    return 2147483652;
  }

  v3 = *a1;
  v4 = malloc_type_calloc(0xCuLL, 1uLL, 0x10000403E1C8BA9uLL);
  if (!v4)
  {
    return 2147483649;
  }

  v5 = v4;
  *(a1 + 10) = MEMORY[0x29C2730D0](*a1) - *(a1 + 26);
  fseek(v3, 12, 1);
  result = 0;
  *v5 = 1413563718;
  a1[12] = v5;
  *(a1 + 2) = 5;
  return result;
}

uint64_t crf1dmw_close_features(void *a1)
{
  if (*(a1 + 2) != 5)
  {
    return 2147483652;
  }

  v13 = v1;
  v14 = v2;
  v4 = *(a1 + 10);
  v5 = a1[12];
  v6 = *a1;
  v7 = MEMORY[0x29C2730D0](*a1);
  v8 = a1[13];
  v9 = v7 - v8;
  v5[1] = v7 - v8 - v4;
  fseek(v6, v8 + v4, 0);
  write_uint8_array(v6, v5);
  __ptr = v5[1];
  fwrite(&__ptr, 4uLL, 1uLL, v6);
  v12 = v5[2];
  fwrite(&v12, 4uLL, 1uLL, v6);
  fseek(v6, a1[13] + v9, 0);
  free(v5);
  result = 0;
  a1[12] = 0;
  *(a1 + 2) = 0;
  return result;
}

uint64_t crf1dmw_put_feature(uint64_t a1, int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  result = 2147483652;
  if (*(a1 + 8) == 5)
  {
    v5 = *(a1 + 96);
    if (*(v5 + 8) == a2)
    {
      v7 = *a1;
      LODWORD(v9[0]) = *a3;
      fwrite(v9, 4uLL, 1uLL, v7);
      LODWORD(v9[0]) = *(a3 + 4);
      fwrite(v9, 4uLL, 1uLL, v7);
      LODWORD(v9[0]) = *(a3 + 8);
      fwrite(v9, 4uLL, 1uLL, v7);
      v9[0] = *(a3 + 16);
      fwrite(v9, 1uLL, 8uLL, v7);
      result = 0;
      ++*(v5 + 8);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t read_attributes(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 36);
  if (!v2)
  {
    v4 = 1;
    goto LABEL_5;
  }

  v3 = cqdb_reader(*(a1 + 16) + v2, (*(a1 + 24) - v2));
  *(a1 + 64) = v3;
  if (v3)
  {
    v4 = 0;
LABEL_5:
    result = 0;
    *(a1 + 4) = v4;
    return result;
  }

  return 1;
}

void *create_buffer_from_file(FILE *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0;
  }

  fseek(a1, 0, 2);
  *a2 = MEMORY[0x29C2730D0](a1);
  fseek(a1, 0, 0);
  v4 = malloc_type_malloc(*a2, 0x100004077774924uLL);
  if (fread(v4, 1uLL, *a2, a1) != *a2)
  {
    free(v4);
    return 0;
  }

  return v4;
}

BOOL read_header_from_buffer(_DWORD *a1, char *__s1)
{
  for (i = 0; i != 4; ++i)
  {
    __s1[i] = *(a1 + i);
  }

  v5 = strncmp(__s1, "lCRF", 4uLL);
  if (!v5)
  {
    v6 = 0;
    *(__s1 + 1) = a1[1];
    do
    {
      __s1[v6 + 8] = *(a1 + v6 + 8);
      ++v6;
    }

    while (v6 != 4);
    *(__s1 + 3) = a1[3];
    *(__s1 + 4) = a1[4];
    *(__s1 + 5) = a1[5];
    *(__s1 + 6) = a1[6];
    *(__s1 + 7) = a1[7];
    *(__s1 + 8) = a1[8];
    *(__s1 + 9) = a1[9];
    *(__s1 + 10) = a1[10];
    *(__s1 + 11) = a1[11];
    *(__s1 + 12) = a1[12];
    *(__s1 + 13) = a1[13];
  }

  return v5 == 0;
}

uint64_t crf1dm_initialize_header(uint64_t a1)
{
  if (*(a1 + 24) < 0x10u)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (strncmp(v3, "lCRF", 4uLL))
  {
    return 0;
  }

  v4 = *(v3 + 12);
  *a1 = v4;
  switch(v4)
  {
    case 210:
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v10 = malloc_type_calloc(1uLL, 0x37uLL, 0x1000040DA929A6CuLL);
      *(a1 + 48) = v10;
      v11 = *(a1 + 16);
      v13 = v11[1];
      v12 = v11[2];
      v14 = *v11;
      *(v10 + 47) = *(v11 + 47);
      *v10 = v14;
      *(v10 + 1) = v13;
      *(v10 + 2) = v12;
      break;
    case 200:
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
      *(a1 + 40) = v6;
      v7 = *(a1 + 16);
      v8 = *v7;
      v9 = v7[2];
      v6[1] = v7[1];
      v6[2] = v9;
      *v6 = v8;
      break;
    case 102:
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      *(a1 + 32) = v5;
      if (!read_header_from_buffer(*(a1 + 16), v5))
      {
        return 0;
      }

      break;
    default:
      return 0;
  }

  return 1;
}

uint64_t crf1dm_instantiate_internal(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      result = crf1dm_initialize_header(result);
      if (result)
      {
        if (*v1 == 102)
        {
          v2 = *(*(v1 + 32) + 32);
          *(v1 + 56) = cqdb_reader(*(v1 + 16) + v2, (*(v1 + 24) - v2));
          read_attributes(v1);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *crf1dm_new(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x10B00405FED4E8AuLL);
  if (v2)
  {
    v3 = fopen(a1, "rb");
    if (!v3 || (v4 = v3, buffer_from_file = create_buffer_from_file(v3, v2 + 6), *(v2 + 1) = buffer_from_file, *(v2 + 2) = buffer_from_file, *(v2 + 80) = 1, fclose(v4), (crf1dm_instantiate_internal(v2) & 1) == 0))
    {
      crf1dm_close(v2);
      return 0;
    }
  }

  return v2;
}

void *crf1dm_new_from_buffer(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x58uLL, 0x10B00405FED4E8AuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = a1;
    v4[2] = a1;
    *(v4 + 6) = a2;
    *(v4 + 80) = 0;
    if ((crf1dm_instantiate_internal(v4) & 1) == 0)
    {
      crf1dm_close(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t crf1dm_get_num_attrs@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*a1 == 102)
  {
    v3 = 24;
    v4 = 8;
    return *(*&a1[v4] + v3);
  }

  if (v2 == 210)
  {
    v3 = 35;
    v4 = 12;
    return *(*&a1[v4] + v3);
  }

  if (v2 == 200)
  {
    v3 = 28;
    v4 = 10;
    return *(*&a1[v4] + v3);
  }

  return a2;
}

uint64_t crf1dm_get_num_labels@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*a1 == 210)
  {
    return *(*(a1 + 6) + 34);
  }

  if (v2 == 200)
  {
    return *(*(a1 + 5) + 24);
  }

  if (v2 == 102)
  {
    return *(*(a1 + 4) + 20);
  }

  return a2;
}

uint64_t crf1dm_to_label(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 56);
  if (result)
  {
    return cqdb_to_string(result, a2);
  }

  return result;
}

uint64_t crf1dm_to_lid(uint64_t a1, char *a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    return cqdb_to_id(v2, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t crf1dm_to_aid(uint64_t a1, char *a2)
{
  v3 = *(a1 + 64);
  if (v3 && !*(a1 + 4))
  {
    return cqdb_to_id(v3, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t crf1dm_to_attr(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  if (v3 && !*(a1 + 4))
  {
    return cqdb_to_string(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t crf1dm_get_labelref(uint64_t a1, int a2, uint64_t a3)
{
  v3 = (*(a1 + 16) + *(*(a1 + 16) + *(*(a1 + 32) + 44) + 4 * a2 + 12));
  *a3 = *v3;
  *(a3 + 8) = v3 + 1;
  return 0;
}

uint64_t crf1dm_get_attrref(uint64_t a1, int a2, uint64_t a3)
{
  v3 = (*(a1 + 16) + *(*(a1 + 16) + *(*(a1 + 32) + 48) + 4 * a2 + 12));
  *a3 = *v3;
  *(a3 + 8) = v3 + 1;
  return 0;
}

uint64_t crf1dm_get_feature(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16) + (*(*(a1 + 32) + 28) + 20 * a2 + 12);
  *a3 = *v3;
  *(a3 + 4) = *(v3 + 4);
  *(a3 + 8) = *(v3 + 8);
  *(a3 + 16) = *(v3 + 12);
  return 0;
}

uint64_t crf1dm_dump(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 32);
  fwrite("FILEHEADER = {\n", 0xFuLL, 1uLL, __stream);
  fprintf(__stream, "  magic: %c%c%c%c\n", *v4, v4[1], v4[2], v4[3]);
  fprintf(__stream, "  size: %d\n", *(v4 + 1));
  fprintf(__stream, "  type: %c%c%c%c\n", v4[8], v4[9], v4[10], v4[11]);
  fprintf(__stream, "  version: %d\n", *(v4 + 3));
  fprintf(__stream, "  num_features: %d\n", *(v4 + 4));
  fprintf(__stream, "  num_labels: %d\n", *(v4 + 5));
  fprintf(__stream, "  num_attrs: %d\n", *(v4 + 6));
  fprintf(__stream, "  off_features: 0x%X\n", *(v4 + 7));
  fprintf(__stream, "  off_labels: 0x%X\n", *(v4 + 8));
  fprintf(__stream, "  off_attrs: 0x%X\n", *(v4 + 9));
  fprintf(__stream, "  off_labelrefs: 0x%X\n", *(v4 + 11));
  fprintf(__stream, "  off_attrrefs: 0x%X\n", *(v4 + 12));
  fwrite("}\n", 2uLL, 1uLL, __stream);
  fputc(10, __stream);
  fwrite("LABELS = {\n", 0xBuLL, 1uLL, __stream);
  if (*(v4 + 5))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        v6 = cqdb_to_string(v6, v5);
      }

      fprintf(__stream, "  %5d: %s\n", v5++, v6);
    }

    while (v5 < *(v4 + 5));
  }

  fwrite("}\n", 2uLL, 1uLL, __stream);
  fputc(10, __stream);
  fwrite("ATTRIBUTES = {\n", 0xFuLL, 1uLL, __stream);
  if (*(v4 + 6))
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        if (*(a1 + 4))
        {
          v8 = 0;
        }

        else
        {
          v8 = cqdb_to_string(v8, v7);
        }
      }

      fprintf(__stream, "  %5d: %s\n", v7++, v8);
    }

    while (v7 < *(v4 + 6));
  }

  fwrite("}\n", 2uLL, 1uLL, __stream);
  fputc(10, __stream);
  fwrite("TRANSITIONS = {\n", 0x10uLL, 1uLL, __stream);
  v9 = *(v4 + 5);
  v37 = v4;
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = *(a1 + 16);
      v12 = *(v11 + *(*(a1 + 32) + 44) + 4 * i + 12);
      v13 = (v11 + v12 + 4);
      v14 = *(v11 + v12);
      if (v14 >= 1)
      {
        do
        {
          v15 = *v13++;
          v16 = (*(a1 + 16) + (*(*(a1 + 32) + 28) + 20 * v15 + 12));
          v17 = *v16;
          v18 = *(v16 + 3);
          v19 = *(a1 + 56);
          if (v19)
          {
            v20 = v16[2];
            v21 = cqdb_to_string(v19, v16[1]);
            v19 = *(a1 + 56);
            if (v19)
            {
              v19 = cqdb_to_string(v19, v20);
            }
          }

          else
          {
            v21 = 0;
          }

          fprintf(__stream, "  (%d) %s --> %s: %f\n", v17, v21, v19, v18);
          --v14;
        }

        while (v14);
        v4 = v37;
        v9 = *(v37 + 5);
      }
    }
  }

  fwrite("}\n", 2uLL, 1uLL, __stream);
  fputc(10, __stream);
  fwrite("STATE_FEATURES = {\n", 0x13uLL, 1uLL, __stream);
  v22 = *(v4 + 6);
  if (v22)
  {
    for (j = 0; j < v22; ++j)
    {
      v24 = *(a1 + 16);
      v25 = *(v24 + *(*(a1 + 32) + 48) + 4 * j + 12);
      v26 = (v24 + v25 + 4);
      v27 = *(v24 + v25);
      if (v27 >= 1)
      {
        do
        {
          v28 = *v26++;
          v29 = (*(a1 + 16) + (*(*(a1 + 32) + 28) + 20 * v28 + 12));
          v30 = *v29;
          v31 = v29[2];
          v32 = *(v29 + 3);
          v33 = *(a1 + 64);
          if (v33 && !*(a1 + 4))
          {
            v34 = cqdb_to_string(v33, v29[1]);
          }

          else
          {
            v34 = 0;
          }

          v35 = *(a1 + 56);
          if (v35)
          {
            v35 = cqdb_to_string(v35, v31);
          }

          fprintf(__stream, "  (%d) %s --> %s: %f\n", v30, v34, v35, v32);
          --v27;
        }

        while (v27);
        v22 = *(v37 + 6);
      }
    }
  }

  fwrite("}\n", 2uLL, 1uLL, __stream);

  return fputc(10, __stream);
}

uint64_t crf1dm_initialize_transition_scores(int *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 == 210)
  {
    v22 = *(a1 + 6);
    v23 = *(v22 + 34);
    if (*(v22 + 34))
    {
      v24 = 0;
      v25 = (*(a1 + 2) + *(v22 + 39));
      do
      {
        memcpy((*(a2 + 32) + 8 * *(a2 + 4) * v24++), v25, 8 * v23);
        v25 += 8 * v23;
      }

      while (v23 != v24);
    }
  }

  else if (v3 == 200)
  {
    v18 = *(a1 + 5);
    v19 = *(v18 + 24);
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = (*(a1 + 2) + *(v18 + 32));
      do
      {
        memcpy((*(a2 + 32) + 8 * *(a2 + 4) * v20++), v21, 8 * v19);
        v21 += 8 * v19;
      }

      while (v19 != v20);
    }
  }

  else if (v3 == 102)
  {
    v4 = *(a1 + 4);
    v5 = v4[5];
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 32);
      v8 = *(a2 + 4);
      v9 = *(a1 + 2);
      v10 = v9 + v4[11] + 12;
      do
      {
        v11 = (v9 + *(v10 + 4 * v6));
        v14 = *v11;
        v12 = v11 + 1;
        v13 = v14;
        if (v14 >= 1)
        {
          v15 = v4[7];
          do
          {
            v16 = *v12++;
            v17 = v9 + v15 + 20 * v16 + 12;
            *(v7 + 8 * v6 * v8 + 8 * *(v17 + 8)) = *(v17 + 12);
            --v13;
          }

          while (v13);
        }

        ++v6;
      }

      while (v6 != v5);
    }
  }

  return 0;
}

uint64_t get_quantized_weight(double a1, double a2, double a3, double a4)
{
  if (a1 <= a3)
  {
    return 0;
  }

  if (a1 >= a4)
  {
    return 0xFFFFLL;
  }

  return rint((a1 - a3) / a2);
}

uint64_t crf1dm_initialize_state_scores(int *a1, uint64_t a2, unsigned int *a3, double a4, double a5, double a6)
{
  v6 = *a1;
  if (*a1 == 210)
  {
    v47 = *(a1 + 6);
    if (!v47)
    {
      crf1dm_initialize_state_scores_cold_1();
    }

    v48 = *a3;
    if (v48 >= 1)
    {
      v49 = 0;
      v50 = *(a1 + 2);
      v51 = v50 + *(v47 + 47);
      v52 = v50 + *(v47 + 51);
      v53 = *(a3 + 1);
      v54 = *(a2 + 24);
      v55 = *(a2 + 4);
      v56 = *(v47 + 43) + v50 + 2;
      do
      {
        v57 = (v53 + 16 * v49);
        v58 = *v57;
        if (v58 >= 1)
        {
          v59 = 0;
          v60 = v54 + 8 * v49 * v55;
          v61 = *(v57 + 1);
          do
          {
            v62 = *(v61 + 16 * v59);
            v63 = *(v51 + v62);
            if (*(v51 + v62))
            {
              v64 = *(v47 + 16);
              v65 = *(v47 + 20);
              v66 = (v56 + 3 * *(v52 + 4 * v62));
              do
              {
                LOWORD(a6) = *(v66 - 1);
                v67 = *v66;
                v66 += 3;
                a6 = *(v60 + 8 * v67) + v65 + *&a6 * v64;
                *(v60 + 8 * v67) = a6;
                --v63;
              }

              while (v63);
            }

            ++v59;
          }

          while (v59 != v58);
        }

        ++v49;
      }

      while (v49 != v48);
    }
  }

  else if (v6 == 200)
  {
    v27 = *(a1 + 5);
    if (!v27)
    {
      crf1dm_initialize_state_scores_cold_2();
    }

    v28 = *a3;
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = *(a1 + 2);
      v31 = v27[9];
      v32 = v30 + v27[10];
      v33 = v30 + v27[11];
      v34 = *(a3 + 1);
      v35 = *(a2 + 24);
      v36 = *(a2 + 4);
      v37 = v31 + v30 + 8;
      do
      {
        v38 = (v34 + 16 * v29);
        v39 = *v38;
        if (v39 >= 1)
        {
          v40 = 0;
          v41 = *(v38 + 1);
          do
          {
            v42 = (v41 + 16 * v40);
            v43 = *v42;
            v44 = *(v32 + 4 * v43);
            if (v44)
            {
              v45 = v42[1];
              v46 = (v37 + 12 * *(v33 + 4 * v43));
              do
              {
                *(v35 + 8 * v29 * v36 + 8 * *v46) = *(v35 + 8 * v29 * v36 + 8 * *v46) + *(v46 - 1) * v45;
                v46 = (v46 + 12);
                --v44;
              }

              while (v44);
            }

            ++v40;
          }

          while (v40 != v39);
        }

        ++v29;
      }

      while (v29 != v28);
    }
  }

  else if (v6 == 102)
  {
    v7 = *a3;
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(a3 + 1);
      v10 = *(a2 + 24);
      v11 = *(a2 + 4);
      do
      {
        v12 = (v9 + 16 * v8);
        v13 = *v12;
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = *(v12 + 1);
          v16 = *(a1 + 2);
          v17 = *(a1 + 4);
          v18 = v16 + *(v17 + 48) + 12;
          do
          {
            v19 = (v15 + 16 * v14);
            v20 = (v16 + *(v18 + 4 * *v19));
            v23 = *v20;
            v21 = v20 + 1;
            v22 = v23;
            if (v23 >= 1)
            {
              v24 = v19[1];
              v25 = *(v17 + 28) + 12;
              do
              {
                v26 = *v21++;
                *(v10 + 8 * v8 * v11 + 8 * *(v16 + (v25 + 20 * v26) + 8)) = *(v10 + 8 * v8 * v11 + 8 * *(v16 + (v25 + 20 * v26) + 8)) + *(v16 + (v25 + 20 * v26) + 12) * v24;
                --v22;
              }

              while (v22);
            }

            ++v14;
          }

          while (v14 != v13);
        }

        ++v8;
      }

      while (v8 != v7);
    }
  }

  return 0;
}

uint64_t cmw_initialize_header(uint64_t a1)
{
  *(a1 + 8) = 1179796332;
  *(a1 + 16) = 0xC8434D4F46;
  if (fseek(*a1, 48, 1))
  {
    return 2147483651;
  }

  else
  {
    return 0;
  }
}

uint64_t cmw_close(FILE **a1)
{
  v2 = *a1;
  v3 = MEMORY[0x29C2730D0](*a1);
  v4 = a1[7];
  *(a1 + 3) = v3 - v4;
  if (fseek(v2, v4, 0) || (fwrite(a1 + 1, 0x30uLL, 1uLL, v2), ferror(v2)))
  {
    if (*(a1 + 64) != 1)
    {
      v7 = 1;
      goto LABEL_7;
    }

    v5 = *a1;
    v6 = 1;
    v7 = 1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    fseek(v2, (*(a1 + 3) + *(a1 + 14)), 0);
    v7 = 0;
    if (*(a1 + 64) == 1)
    {
      v6 = 0;
      v7 = 0;
      v5 = *a1;
      if (*a1)
      {
LABEL_5:
        fclose(v5);
        v7 = v6;
      }
    }
  }

LABEL_7:
  free(a1);
  return v7;
}

_BYTE *cmw_create_from_file_pointer(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200406F0ECAEBuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[64] = 0;
    *(v2 + 7) = MEMORY[0x29C2730D0](a1);
    *(v3 + 2) = 1179796332;
    *(v3 + 2) = 0xC8434D4F46;
    if (fseek(*v3, 48, 1))
    {
      cmw_close(v3);
      free(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t cmw_write_label_features(void *a1, int a2, int a3, const void *a4)
{
  *(a1 + 8) = a2;
  *(a1 + 6) = a3;
  v7 = MEMORY[0x29C2730D0](*a1);
  if ((v7 & 3) != 0)
  {
    v8 = v7 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, *a1);
    }

    while ((v8++ & 3) != 0);
  }

  *(a1 + 10) = MEMORY[0x29C2730D0](*a1) - *(a1 + 14);
  fwrite(a4, 8uLL, (a2 * a2), *a1);
  fseek(*a1, 0, 2);
  return 0;
}

uint64_t cmw_write_attribute_feature_counts_and_offsets(void *a1, unsigned int a2, const void *a3, const void *a4)
{
  *(a1 + 9) = a2;
  v8 = MEMORY[0x29C2730D0](*a1);
  if ((v8 & 3) != 0)
  {
    v9 = v8 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, *a1);
    }

    while ((v9++ & 3) != 0);
  }

  *(a1 + 12) = MEMORY[0x29C2730D0](*a1) - *(a1 + 14);
  fwrite(a3, 4uLL, a2, *a1);
  *(a1 + 13) = MEMORY[0x29C2730D0](*a1) - *(a1 + 14);
  fwrite(a4, 4uLL, a2, *a1);
  fseek(*a1, 0, 2);
  return 0;
}

uint64_t cmw_open_attribute_features(void *a1, int a2)
{
  *(a1 + 7) = a2;
  v3 = MEMORY[0x29C2730D0](*a1);
  if ((v3 & 3) != 0)
  {
    v4 = v3 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, *a1);
    }

    while ((v4++ & 3) != 0);
  }

  *(a1 + 11) = MEMORY[0x29C2730D0](*a1) - *(a1 + 14);
  return 0;
}

uint64_t cmw_write_attribute_feature(FILE **a1, int a2, double a3)
{
  v4 = a3;
  v5 = a2;
  if (fwrite(&v4, 1uLL, 0xCuLL, *a1) != 12)
  {
    cmw_write_attribute_feature_cold_1();
  }

  return 0;
}

uint64_t qmw_initialize_header(uint64_t a1)
{
  *(a1 + 8) = 1179796332;
  *(a1 + 32) = 1077936128;
  *(a1 + 16) = 0xD2434D4F46;
  *(a1 + 24) = 0xC040000038C000C0;
  if (fseek(*a1, 55, 1))
  {
    return 2147483651;
  }

  else
  {
    return 0;
  }
}

uint64_t qmw_close(FILE **a1)
{
  v2 = *a1;
  v3 = MEMORY[0x29C2730D0](*a1);
  v4 = a1[8];
  *(a1 + 3) = v3 - v4;
  if (fseek(v2, v4, 0) || (fwrite(a1 + 1, 0x37uLL, 1uLL, v2), ferror(v2)))
  {
    if (*(a1 + 72) != 1)
    {
      v7 = 1;
      goto LABEL_7;
    }

    v5 = *a1;
    v6 = 1;
    v7 = 1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    fseek(v2, (*(a1 + 3) + *(a1 + 16)), 0);
    v7 = 0;
    if (*(a1 + 72) == 1)
    {
      v6 = 0;
      v7 = 0;
      v5 = *a1;
      if (*a1)
      {
LABEL_5:
        fclose(v5);
        v7 = v6;
      }
    }
  }

LABEL_7:
  free(a1);
  return v7;
}

_BYTE *qmw_create_from_file_pointer(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200406F0ECAEBuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[72] = 0;
    *(v2 + 8) = MEMORY[0x29C2730D0](a1);
    *(v3 + 2) = 1179796332;
    *(v3 + 8) = 1077936128;
    *(v3 + 2) = 0xD2434D4F46;
    *(v3 + 3) = 0xC040000038C000C0;
    if (fseek(*v3, 55, 1))
    {
      qmw_close(v3);
      free(v3);
      return 0;
    }
  }

  return v3;
}

void *create_compact_model_writer_from_file_pointer(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x800407D3415B1uLL);
  *v2 = cmw_create_from_file_pointer(a1);
  v2[1] = cmw_write_label_features;
  v2[3] = cmw_open_attribute_features;
  v2[2] = cmw_write_attribute_feature_counts_and_offsets;
  v2[4] = cmw_write_attribute_feature;
  v2[5] = cmw_close;
  return v2;
}

uint64_t qmw_write_label_features(void *a1, unsigned int a2, __int16 a3, const void *a4)
{
  if (a2 >= 0x100)
  {
    qmw_write_label_features_cold_1();
  }

  *(a1 + 42) = a2;
  *(a1 + 18) = a3;
  v7 = MEMORY[0x29C2730D0](*a1);
  if ((v7 & 3) != 0)
  {
    v8 = v7 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, *a1);
    }

    while ((v8++ & 3) != 0);
  }

  *(a1 + 47) = MEMORY[0x29C2730D0](*a1) - *(a1 + 16);
  fwrite(a4, 8uLL, a2 * a2, *a1);
  fseek(*a1, 0, 2);
  return 0;
}

uint64_t qmw_open_attribute_features(void *a1, int a2)
{
  *(a1 + 38) = a2;
  v3 = MEMORY[0x29C2730D0](*a1);
  if ((v3 & 3) != 0)
  {
    v4 = v3 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, *a1);
    }

    while ((v4++ & 3) != 0);
  }

  *(a1 + 51) = MEMORY[0x29C2730D0](*a1) - *(a1 + 16);
  return 0;
}

uint64_t qmw_write_attribute_feature_counts_and_offsets(void *a1, int a2, unsigned int *a3, const void *a4)
{
  LODWORD(v6) = a2;
  *(a1 + 43) = a2;
  v8 = MEMORY[0x29C2730D0](*a1);
  if ((v8 & 3) != 0)
  {
    v9 = v8 + 1;
    do
    {
      __ptr = 0;
      fwrite(&__ptr, 1uLL, 1uLL, *a1);
    }

    while ((v9++ & 3) != 0);
  }

  *(a1 + 55) = MEMORY[0x29C2730D0](*a1) - *(a1 + 16);
  if (v6)
  {
    v6 = v6;
    v11 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      if (v13 >= 0x100)
      {
        qmw_write_attribute_feature_counts_and_offsets_cold_1();
      }

      v15 = v12;
      fwrite(&v15, 1uLL, 1uLL, *a1);
      --v11;
    }

    while (v11);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 59) = MEMORY[0x29C2730D0](*a1) - *(a1 + 16);
  fwrite(a4, 4uLL, v6, *a1);
  fseek(*a1, 0, 2);
  return 0;
}

uint64_t qmw_write_attribute_feature(uint64_t a1, unsigned int a2, double a3)
{
  if (a2 >= 0x100)
  {
    qmw_write_attribute_feature_cold_2();
  }

  v3 = *(a1 + 28);
  if (v3 >= a3)
  {
    LOWORD(v4) = 0;
  }

  else if (*(a1 + 32) <= a3)
  {
    LOWORD(v4) = -1;
  }

  else
  {
    v4 = rint((a3 - v3) / *(a1 + 24));
  }

  __ptr = v4;
  v7 = a2;
  if (fwrite(&__ptr, 1uLL, 3uLL, *a1) != 3)
  {
    qmw_write_attribute_feature_cold_1();
  }

  return 0;
}

void *create_quantized_model_writer_from_file_pointer(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x800407D3415B1uLL);
  *v2 = qmw_create_from_file_pointer(a1);
  v2[1] = qmw_write_label_features;
  v2[3] = qmw_open_attribute_features;
  v2[2] = qmw_write_attribute_feature_counts_and_offsets;
  v2[4] = qmw_write_attribute_feature;
  v2[5] = qmw_close;
  return v2;
}

uint64_t close_writer(void (**a1)(void))
{
  a1[5](*a1);
  free(a1);
  return 0;
}

uint64_t crf1m_create_instance_from_file(const char *a1, void *a2)
{
  *a2 = 0;
  v3 = crf1dm_new(a1);
  if (!v3)
  {
    return 2147483651;
  }

  v4 = v3;
  v5 = crf1m_model_initialize(v3, a2);
  if (v5)
  {
    crf1dm_close(v4);
  }

  return v5;
}

uint64_t crf1m_create_instance_from_buffer(uint64_t a1, int a2, void *a3)
{
  *a3 = 0;
  v4 = crf1dm_new_from_buffer(a1, a2);
  if (!v4)
  {
    return 2147483651;
  }

  v5 = v4;
  v6 = crf1m_model_initialize(v4, a3);
  if (v6)
  {
    crf1dm_close(v5);
  }

  return v6;
}

uint64_t crf1m_model_initialize(int *a1, void *a2)
{
  v4 = 1;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (!v6)
  {
    v9 = 0;
LABEL_12:
    v15 = 0;
    v11 = 0;
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  *(v6 + 4) = crf1dm_get_num_labels(a1, v5);
  *(v6 + 5) = crf1dm_get_num_attrs(a1, v7);
  *v6 = a1;
  v8 = crf1dc_new(3, *(v6 + 4), 0);
  v6[1] = v8;
  if (!v8)
  {
    crf1dt_delete(v6);
    v6 = 0;
    v9 = 0;
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v4 = 1;
    goto LABEL_14;
  }

  crf1dc_reset(v8, 2);
  crf1dm_initialize_transition_scores(a1, v6[1]);
  crf1dc_exp_transition(v6[1]);
  *(v6 + 6) = 0;
  v9 = malloc_type_calloc(1uLL, 0x30uLL, 0xA004059E6D2FFuLL);
  if (!v9)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x1080040D23F5C74uLL);
  v11 = v10;
  if (!v10)
  {
    v4 = 0;
    v15 = 0;
    goto LABEL_13;
  }

  *v10 = a1;
  *(v10 + 2) = 1;
  v10[2] = model_attrs_addref;
  v10[3] = model_attrs_release;
  v10[4] = model_attrs_get;
  v10[5] = model_attrs_to_id;
  v10[6] = model_attrs_to_string;
  v10[7] = model_attrs_num;
  v10[8] = model_attrs_free;
  v12 = malloc_type_calloc(1uLL, 0x48uLL, 0x1080040D23F5C74uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    *(v12 + 2) = 1;
    v12[2] = model_labels_addref;
    v12[3] = model_labels_release;
    v12[4] = model_labels_get;
    v12[5] = model_labels_to_id;
    v12[6] = model_labels_to_string;
    v12[7] = model_labels_num;
    v12[8] = model_labels_free;
    v14 = malloc_type_calloc(1uLL, 0x60uLL, 0x108004000789A1EuLL);
    v15 = v14;
    if (v14)
    {
      *v14 = v6;
      *(v14 + 2) = 1;
      v14[2] = tagger_addref;
      v14[3] = tagger_release;
      v14[4] = tagger_set;
      v14[5] = tagger_length;
      v14[6] = tagger_viterbi;
      v14[7] = tagger_score;
      v14[8] = tagger_lognorm;
      v14[9] = tagger_marginal_point;
      v14[10] = tagger_marginal_path;
      v14[11] = tagger_tag_paragraph;
      *v9 = a1;
      v9[1] = v11;
      v9[4] = v13;
      v9[5] = v14;
      v16 = malloc_type_calloc(1uLL, 0x58uLL, 0x10800404DCD22FDuLL);
      if (v16)
      {
        v17 = v16;
        result = 0;
        *v17 = v9;
        v17[2] = 1;
        *(v17 + 2) = model_addref;
        *(v17 + 3) = model_release;
        *(v17 + 6) = model_get_attrs;
        *(v17 + 5) = model_get_labels;
        *(v17 + 4) = model_get_tagger;
        *(v17 + 7) = model_dump;
        *(v17 + 8) = 0;
        *(v17 + 9) = model_get_number_of_labels;
        *(v17 + 10) = model_get_number_of_attributes;
        *a2 = v17;
        return result;
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = 0;
    v15 = 0;
  }

LABEL_14:
  free(v15);
  free(v13);
  free(v11);
  free(v9);
  if ((v4 & 1) == 0)
  {
    crf1dt_delete(v6);
  }

  return 2147483649;
}

uint64_t tagger_set(uint64_t *a1, int *a2)
{
  v3 = *a1;
  crf1dc_set_num_items(*(*a1 + 8), *a2);
  crf1dc_reset(*(v3 + 8), 1);
  crf1dm_initialize_state_scores(*v3, *(v3 + 8), a2, v4, v5, v6);
  *(v3 + 24) = 1;
  return 0;
}

uint64_t tagger_viterbi(uint64_t a1, uint64_t a2, void *a3)
{
  crf1dc_viterbi(*(*a1 + 8), a2);
  if (a3)
  {
    *a3 = v4;
  }

  return 0;
}

uint64_t tagger_score(uint64_t a1, int *a2, double *a3)
{
  v4 = crf1dc_score(*(*a1 + 8), a2);
  if (a3)
  {
    *a3 = v4;
  }

  return 0;
}

uint64_t tagger_lognorm(_DWORD **a1, double *a2)
{
  v3 = *a1;
  crf1dt_set_level(*a1);
  *a2 = crf1dc_lognorm(*(v3 + 8));
  return 0;
}

uint64_t tagger_marginal_point(_DWORD **a1, int a2, int a3, double *a4)
{
  v7 = *a1;
  crf1dt_set_level(*a1);
  *a4 = crf1dc_marginal_point(*(v7 + 8), a2, a3);
  return 0;
}

uint64_t tagger_marginal_path(_DWORD **a1, uint64_t a2, int a3, int a4, double *a5)
{
  v9 = *a1;
  crf1dt_set_level(*a1);
  *a5 = crf1dc_marginal_path(*(v9 + 8), a2, a3, a4);
  return 0;
}

uint64_t tagger_tag_paragraph(uint64_t *a1, int *a2, unsigned int a3, void *a4)
{
  v7 = *a1;
  v8 = *(*a1 + 8);
  item_count_for_sentence = crf_paragraph_get_item_count_for_sentence(a2, a3);
  v24 = a4;
  crf_output_init_n(a4, item_count_for_sentence);
  crf1dc_set_num_items(v8, item_count_for_sentence);
  crf1dc_reset(*(v7 + 8), 1);
  v11 = *v7;
  v10 = *(v7 + 8);
  v25 = v7;
  v26 = crf_paragraph_get_item_count_for_sentence(a2, a3);
  if (v26 >= 1)
  {
    v12 = 0;
    v13 = *a2;
    v29 = 0;
    v30 = 0.0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    v14 = *(v7 + 16);
    do
    {
      v15 = *(v10 + 24);
      v16 = v15 + 8 * *(v10 + 4) * v12;
      if (v14 >= 1)
      {
        bzero((v15 + 8 * *(v10 + 4) * v12), 8 * v14);
      }

      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          id = crf_paragraph_get_id(a2, a3, v12, i);
          if (id >= 1)
          {
            crf1dm_get_attrref(v11, id - 1, v27);
            if (SLODWORD(v27[0]) >= 1)
            {
              v19 = 0;
              do
              {
                featureid = crf1dm_get_featureid(v27, v19);
                crf1dm_get_feature(v11, featureid, &v28);
                *(v16 + 8 * v29) = v30 + *(v16 + 8 * v29);
                ++v19;
              }

              while (v19 < SLODWORD(v27[0]));
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v26);
  }

  *(v25 + 24) = 1;
  crf1dc_viterbi(*(*a1 + 8), v24[1]);
  v24[2] = v21;
  return 0;
}

_DWORD *crf1dt_set_level(_DWORD *result)
{
  v1 = result;
  if (result[6] <= 1)
  {
    v2 = *(result + 1);
    crf1dc_exp_state(v2);
    crf1dc_alpha_score(v2);
    result = crf1dc_beta_score(v2);
  }

  v1[6] = 2;
  return result;
}

uint64_t crf1de_create_instance(const char *a1, void *a2)
{
  if (strncmp(a1, "train/", 6uLL) || strncmp(a1 + 6, "crf1d/", 6uLL))
  {
    return 1;
  }

  if (!strcmp(a1 + 12, "lbfgs"))
  {
    v6 = 1;
  }

  else if (!strcmp(a1 + 12, "l2sgd"))
  {
    v6 = 2;
  }

  else if (!strcmp(a1 + 12, "averaged-perceptron"))
  {
    v6 = 3;
  }

  else if (!strcmp(a1 + 12, "passive-aggressive"))
  {
    v6 = 4;
  }

  else
  {
    if (strcmp(a1 + 12, "arow"))
    {
      return 1;
    }

    v6 = 5;
  }

  v4 = 1;
  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x1080040150B6343uLL);
  if (!v7)
  {
    return v4;
  }

  v8 = v7;
  v9 = crfsuite_train_new(v6);
  *v8 = v9;
  if (v9)
  {
    v4 = 0;
    v8[2] = 1;
    *(v8 + 2) = crfsuite_train_addref;
    *(v8 + 3) = crfsuite_train_release;
    *(v8 + 4) = crfsuite_train_params;
    *(v8 + 5) = crfsuite_train_set_message_callback;
    *(v8 + 6) = crfsuite_train_to_file;
    *(v8 + 7) = crfsuite_train_to_file_pointer;
    *a2 = v8;
    return v4;
  }

  free(v8);
  return 1;
}

void *crfsuite_train_new(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004016EE4530uLL);
  if (v2)
  {
    *(v2 + 2) = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040622C3295uLL);
    *(v2 + 1) = params_create_instance();
    *(v2 + 6) = 1;
    *(v2 + 7) = a1;
    encoder = crf1d_create_encoder();
    *v2 = encoder;
    (encoder[7])(encoder, *(v2 + 1), 0);
    v4 = *(v2 + 1);
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        crfsuite_train_lbfgs_init(v4);
      }

      else
      {
        crfsuite_train_l2sgd_init(v4);
      }
    }

    else if (a1 == 3)
    {
      crfsuite_train_averaged_perceptron_init(v4);
    }

    else if (a1 == 4)
    {
      crfsuite_train_passive_aggressive_init(v4);
    }

    else
    {
      crfsuite_train_arow_init(v4);
    }
  }

  return v2;
}

uint64_t crfsuite_train_release(_DWORD *a1)
{
  v2 = crfsuite_interlocked_decrement(a1 + 2);
  if (!v2)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*v3)
      {
        (*(*v3 + 152))();
      }

      v4 = *(v3 + 1);
      if (v4)
      {
        (*(v4 + 24))();
      }

      free(*(v3 + 2));
      free(v3);
    }

    free(a1);
  }

  return v2;
}

uint64_t crfsuite_train_set_message_callback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*result + 16);
  *v3 = a2;
  v3[1] = a3;
  return result;
}

uint64_t crfsuite_train_to_file(uint64_t **a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 2147483651;
  }

  v12 = 0;
  v7 = (*(*(a2 + 24) + 56))();
  v8 = (*(*(a2 + 16) + 56))();
  crfsuite_train_train(a1, a2, v7, v8, a4, &v12);
  if (!v12)
  {
    return 0;
  }

  v9 = (*a1)[2];
  v10 = (*(**a1 + 136))();
  free(v12);
  return v10;
}

uint64_t crfsuite_train_to_file_pointer(uint64_t **a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, char a7)
{
  if (!a5)
  {
    return 2147483651;
  }

  v13 = (*a1)[1];
  v20 = 1.0;
  v14 = (*(v13 + 96))();
  if ((a7 & 1) != 0 && !v14 && v20 > 1.0)
  {
    fwrite("ERROR: crfsuite_training_do_not_store_attributes flag is not compatible with minimal frequency value that is greater than 1!\n", 0x7FuLL, 1uLL, *MEMORY[0x29EDCA610]);
    return 2147483651;
  }

  v19 = 0;
  if (a3 <= 0)
  {
    a3 = (*(*(a2 + 24) + 56))();
  }

  if (a4 <= 0)
  {
    a4 = (*(*(a2 + 24) + 56))(*(a2 + 16));
  }

  crfsuite_train_train(a1, a2, a3, a4, a6, &v19);
  if (!v19)
  {
    return 0;
  }

  v17 = (*a1)[2];
  v16 = (*(**a1 + 144))();
  free(v19);
  return v16;
}

_DWORD *crf1de_create_trainer(int a1, unsigned int a2)
{
  v2 = 0;
  if (!a1 && a2 <= 4)
  {
    v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x1080040150B6343uLL);
    if (v2)
    {
      v4 = crfsuite_train_new(a2 + 1);
      *v2 = v4;
      if (v4)
      {
        v2[2] = 1;
        *(v2 + 2) = crfsuite_train_addref;
        *(v2 + 3) = crfsuite_train_release;
        *(v2 + 4) = crfsuite_train_params;
        *(v2 + 5) = crfsuite_train_set_message_callback;
        *(v2 + 6) = crfsuite_train_to_file;
        *(v2 + 7) = crfsuite_train_to_file_pointer;
      }

      else
      {
        free(v2);
        return 0;
      }
    }
  }

  return v2;
}

void crfsuite_train_train(uint64_t **a1, unsigned int *a2, int a3, int a4, int a5, double **a6)
{
  v11 = *a1;
  v12 = (*a1)[2];
  v13 = **a1;
  *a6 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  dataset_init_trainset(v34, a2, a3, a4, a5);
  if ((a5 & 0x80000000) == 0)
  {
    dataset_init_testset(v33, a2, a3, a4, a5);
    logging(v12, "Holdout group: %d\n", v14, v15, v16, v17, v18, v19, (a5 + 1));
    logging(v12, "\n", v20, v21, v22, v23, v24, v25, v32);
  }

  (*(v13 + 56))(v13, v11[1], 0xFFFFFFFFLL);
  (*(v13 + 64))(v13, v34, v12);
  v26 = *(v11 + 7);
  if (v26 <= 2)
  {
    if (v26 == 1)
    {
      if (a5 == -1)
      {
        v31 = 0;
      }

      else
      {
        v31 = v33;
      }

      crfsuite_train_lbfgs(v13, v34, v31, v11[1], v12, a6);
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v26 != 2)
      {
        goto LABEL_28;
      }

      if (a5 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = v33;
      }

      crfsuite_train_l2sgd(v13, v34, v28, v11[1], v12, a6);
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v26 != 3)
    {
      if (v26 == 4)
      {
        if (a5 == -1)
        {
          v30 = 0;
        }

        else
        {
          v30 = v33;
        }

        crfsuite_train_passive_aggressive(v13, v34, v30, v11[1], v12, a6);
      }

      else if (v26 == 5)
      {
        if (a5 == -1)
        {
          v27 = 0;
        }

        else
        {
          v27 = v33;
        }

        crfsuite_train_arow(v13, v34, v27, v11[1], v12, a6);
        if (a5 < 0)
        {
          goto LABEL_30;
        }

LABEL_29:
        dataset_finish(v33);
        goto LABEL_30;
      }

LABEL_28:
      if (a5 < 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (a5 == -1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v33;
    }

    crfsuite_train_averaged_perceptron(v13, v34, v29, v11[1], v12, a6);
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  dataset_finish(v34);
}

void *crfsuite_attribute_init(void *result)
{
  *result = 0;
  result[1] = 0x3FF0000000000000;
  return result;
}

uint64_t crfsuite_attribute_set(uint64_t result, int a2, double a3)
{
  *result = 0;
  *result = a2;
  *(result + 8) = a3;
  return result;
}

double crfsuite_attribute_copy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

double crfsuite_attribute_swap(double *a1, double *a2)
{
  v2 = *a1;
  result = a1[1];
  *a1 = *a2;
  a1[1] = a2[1];
  *a2 = v2;
  a2[1] = result;
  return result;
}

void *crfsuite_item_init(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *crfsuite_item_init_n(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 4) = a2;
  result = malloc_type_calloc(a2, 0x10uLL, 0x1000040F7F8B94BuLL);
  *(a1 + 8) = result;
  return result;
}

void *crfsuite_item_init_with_capacity(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  result = malloc_type_calloc(a2, 0x10uLL, 0x1000040F7F8B94BuLL);
  *(a1 + 8) = result;
  return result;
}

void crfsuite_item_finish(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

double crfsuite_item_copy(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = malloc_type_calloc(v4, 0x10uLL, 0x1000040F7F8B94BuLL);
  a1[1] = v5;
  v7 = *a1;
  if (v7 >= 1)
  {
    v8 = (a2[1] + 8);
    v9 = v5 + 8;
    do
    {
      *(v9 - 2) = *(v8 - 2);
      v10 = *v8;
      v8 += 2;
      result = v10;
      *v9 = v10;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

double crfsuite_item_swap(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  result = *a2;
  a1[1] = a2[1];
  v4 = *a1;
  *a1 = result;
  *a2 = v4;
  *(a2 + 1) = v2;
  return result;
}

uint64_t crfsuite_item_append_attribute(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 <= *a1)
  {
    v7 = 2 * v5 + 2;
    a1[1] = v7;
    v6 = malloc_type_realloc(*(a1 + 1), 16 * v7, 0x1000040F7F8B94BuLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v8 = &v6[16 * v4];
  *v8 = *a2;
  *(v8 + 1) = *(a2 + 8);
  return 0;
}

double crfsuite_instance_init(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *crfsuite_instance_init_n(uint64_t a1, int a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 4) = a2;
  v3 = a2;
  *(a1 + 8) = malloc_type_calloc(a2, 0x10uLL, 0x10200405730B0C9uLL);
  result = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
  *(a1 + 16) = result;
  return result;
}

double crfsuite_instance_finish(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1) + v2;
      free(*(v4 + 8));
      *v4 = 0;
      *(v4 + 8) = 0;
      ++v3;
      v2 += 16;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 2));
  free(*(a1 + 1));
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void crfsuite_instance_copy(int *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 1) = malloc_type_calloc(v4, 0x10uLL, 0x10200405730B0C9uLL);
  *(a1 + 2) = malloc_type_calloc(*a1, 4uLL, 0x100004052888210uLL);
  a1[6] = *(a2 + 6);
  if (*a1 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      crfsuite_item_copy((*(a1 + 1) + v5), (a2[1] + v5));
      *(*(a1 + 2) + 4 * v6) = *(a2[2] + 4 * v6);
      ++v6;
      v5 += 16;
    }

    while (v6 < *a1);
  }
}

__n128 crfsuite_instance_swap(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 6);
  v3 = *(a2 + 1);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 6) = *(a2 + 6);
  *a2 = v4;
  result = *(a1 + 1);
  *(a1 + 1) = v3;
  *(a2 + 1) = result;
  *(a2 + 6) = v2;
  return result;
}

uint64_t crfsuite_instance_append(int *a1, uint64_t *a2, int a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7 <= *a1)
  {
    v8 = 2 * v7 + 2;
    a1[1] = v8;
    *(a1 + 1) = malloc_type_realloc(*(a1 + 1), 16 * v8, 0x10200405730B0C9uLL);
    *(a1 + 2) = malloc_type_realloc(*(a1 + 2), 4 * a1[1], 0x100004052888210uLL);
    v6 = *a1;
  }

  crfsuite_item_copy((*(a1 + 1) + 16 * v6), a2);
  *(*(a1 + 2) + 4 * (*a1)++) = a3;
  return 0;
}

double crfsuite_data_init(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *crfsuite_data_init_n(uint64_t a1, int a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 4) = a2;
  result = malloc_type_calloc(a2, 0x20uLL, 0x103004044A278C3uLL);
  *(a1 + 8) = result;
  return result;
}

double crfsuite_data_finish(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      crfsuite_instance_finish((*(a1 + 1) + v2));
      ++v3;
      v2 += 32;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 1));
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void crfsuite_data_copy(int *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 1) = malloc_type_calloc(v4, 0x20uLL, 0x103004044A278C3uLL);
  if (*a1 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      crfsuite_instance_copy((*(a1 + 1) + v5), (a2[1] + v5));
      ++v6;
      v5 += 32;
    }

    while (v6 < *a1);
  }
}

double crfsuite_data_swap(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  result = *a2;
  a1[1] = a2[1];
  v4 = *a1;
  *a1 = result;
  *a2 = v4;
  *(a2 + 1) = v2;
  return result;
}

uint64_t crfsuite_data_append(int *a1, uint64_t *a2)
{
  if (*a2 >= 1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v7 = 2 * v5 + 2;
      a1[1] = v7;
      v6 = malloc_type_realloc(*(a1 + 1), 32 * v7, 0x103004044A278C3uLL);
      *(a1 + 1) = v6;
      v4 = *a1;
    }

    else
    {
      v6 = *(a1 + 1);
    }

    *a1 = v4 + 1;
    crfsuite_instance_copy(&v6[8 * v4], a2);
  }

  return 0;
}

unint64_t crfsuite_data_maxlength(unint64_t result)
{
  v1 = *result;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *(v2 + 8);
  do
  {
    v5 = *v3;
    v3 += 8;
    v4 = v5;
    if (result <= v5)
    {
      result = v4;
    }

    else
    {
      result = result;
    }

    --v1;
  }

  while (v1);
  return result;
}

unint64_t crfsuite_data_totalitems(unint64_t result)
{
  v1 = *result;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *(v2 + 8);
  do
  {
    v4 = *v3;
    v3 += 8;
    result = (v4 + result);
    --v1;
  }

  while (v1);
  return result;
}

void *crfsuite_evaluation_init(uint64_t a1, int a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = malloc_type_calloc(a2 + 1, 0x28uLL, 0x1000040E20BFF51uLL);
  *(a1 + 8) = result;
  if (result)
  {
    *a1 = a2;
  }

  return result;
}

double crfsuite_evaluation_clear(int *a1)
{
  if ((*a1 & 0x80000000) == 0)
  {
    v1 = 0;
    v2 = -1;
    do
    {
      v3 = *(a1 + 1) + v1;
      *(v3 + 32) = 0;
      *v3 = 0uLL;
      *(v3 + 16) = 0uLL;
      ++v2;
      v1 += 40;
    }

    while (v2 < *a1);
  }

  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

double crfsuite_evaluation_finish(uint64_t a1)
{
  free(*(a1 + 8));
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t crfsuite_evaluation_accmulate(int *a1, int *a2, int *a3, int a4)
{
  if (a4 < 1)
  {
    v4 = 0;
LABEL_12:
    if (v4 == a4)
    {
      ++a1[10];
    }

    v13 = 0;
    ++a1[11];
  }

  else
  {
    v4 = 0;
    v5 = *a1;
    v6 = a4;
    while (1)
    {
      v8 = *a2++;
      v7 = v8;
      v10 = *a3++;
      v9 = v10;
      if (v5 <= v7 || v5 <= v9)
      {
        return 1;
      }

      v12 = *(a1 + 1);
      ++*(v12 + 40 * v7 + 4);
      ++*(v12 + 40 * v9 + 8);
      if (v7 == v9)
      {
        ++*(v12 + 40 * v7);
        ++v4;
      }

      ++a1[5];
      if (!--v6)
      {
        goto LABEL_12;
      }
    }
  }

  return v13;
}

double crfsuite_evaluation_finalize(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v2 = (v1 + 1);
    v3 = (*(a1 + 1) + 16);
    v4 = *a1;
    do
    {
      v5 = *(v3 - 3);
      if (v5)
      {
        v6 = *(v3 - 4);
        a1[4] += v6;
        v7 = *(v3 - 2);
        v8 = a1[7] + v7;
        a1[6] += v5;
        a1[7] = v8;
        v3[1] = 0;
        v3[2] = 0;
        *v3 = 0;
        v9 = 0.0;
        v10 = v6;
        v11.f64[0] = 0.0;
        if (v7 >= 1)
        {
          v11.f64[0] = v10 / v7;
          *v3 = *&v11.f64[0];
        }

        if (v5 >= 1)
        {
          v9 = v10 / v5;
          *(v3 + 1) = v9;
        }

        v12 = 0.0;
        if (v11.f64[0] + v9 > 0.0)
        {
          v12 = (v11.f64[0] * v9 + v11.f64[0] * v9) / (v11.f64[0] + v9);
          *(v3 + 2) = v12;
        }

        if (v4)
        {
          v11.f64[1] = v9;
          *(a1 + 14) = vaddq_f64(v11, *(a1 + 14));
          *(a1 + 9) = v12 + *(a1 + 9);
        }
      }

      --v4;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  *(a1 + 14) = vdivq_f64(*(a1 + 14), vdupq_lane_s64(COERCE__INT64(v1), 0));
  result = *(a1 + 9) / v1;
  *(a1 + 9) = result;
  *(a1 + 4) = 0;
  v14 = a1[5];
  if (v14 >= 1)
  {
    result = a1[4] / v14;
    *(a1 + 4) = result;
  }

  *(a1 + 6) = 0;
  v15 = a1[11];
  if (v15 >= 1)
  {
    result = a1[10] / v15;
    *(a1 + 6) = result;
  }

  return result;
}

void *crfsuite_evaluation_output(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = 0;
  v54[1] = a3;
  v54[2] = 0;
  v54[0] = a4;
  logging(v54, "Performance by label (#match, #model, #ref) (precision, recall, F1):\n", a3, a4, a5, a6, a7, a8, v41);
  if (*a1 >= 1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a1 + 1);
      (*(a2 + 48))(a2, v17, &v55);
      v25 = v55;
      if (!v55)
      {
        v55 = "[UNKNOWN]";
        v25 = "[UNKNOWN]";
      }

      v26 = v18 + v16;
      v27 = *(v18 + v16);
      if (*(v18 + v16 + 4))
      {
        v53 = *(v26 + 32);
        v52 = *(v26 + 16);
        v46 = *(v18 + v16 + 8);
        v51 = *(v18 + v16 + 4);
        v42 = *(v18 + v16);
        logging(v54, "    %s: (%d, %d, %d) (%1.4f, %1.4f, %1.4f)\n", v19, v20, v21, v22, v23, v24, v25);
      }

      else
      {
        v47 = *(v18 + v16 + 8);
        v43 = *(v18 + v16);
        logging(v54, "    %s: (%d, %d, %d) (******, ******, ******)\n", v19, v20, v21, v22, v23, v24, v25);
      }

      (*(a2 + 64))(a2, v55);
      ++v17;
      v16 += 40;
    }

    while (v17 < *a1);
  }

  v48 = *(a1 + 9);
  logging(v54, "Macro-average precision, recall, F1: (%f, %f, %f)\n", v10, v11, v12, v13, v14, v15, *(a1 + 7));
  v49 = *(a1 + 4);
  v44 = a1[5];
  logging(v54, "Item accuracy: %d / %d (%1.4f)\n", v28, v29, v30, v31, v32, v33, a1[4]);
  v50 = *(a1 + 6);
  v45 = a1[11];
  return logging(v54, "Instance accuracy: %d / %d (%1.4f)\n", v34, v35, v36, v37, v38, v39, a1[10]);
}

uint64_t crfsuite_interlocked_increment(_DWORD *a1)
{
  v1 = (*a1 + 1);
  *a1 = v1;
  return v1;
}

uint64_t crfsuite_model_create_from_file(const char *a1)
{
  v2 = 0;
  if (crf1m_create_instance_from_file(a1, &v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t crfsuite_model_create_from_buffer(uint64_t a1, int a2)
{
  v3 = 0;
  if (crf1m_create_instance_from_buffer(a1, a2, &v3))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t crfsuite_model_get_tagger(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 32))(a1, &v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t crfsuite_model_get_labels(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 40))(a1, &v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t crfsuite_model_get_attrs(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 48))(a1, &v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t crfsuite_dictionary_create()
{
  v1 = 0;
  if (crfsuite_dictionary_create_instance("dictionary", &v1))
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t crfsuite_dictionary_get_id_for_string(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 32;
  }

  return (*(a1 + v3))();
}

uint64_t crfsuite_dictionary_get_string_for_id(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if ((*(a1 + 48))(a1, a2, &v3))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

FILE **crfsuite_create_tokenizer_from_feature_file(const char *a1)
{
  v1 = fopen(a1, "r");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  *v3 = v2;
  v4 = iwa_reader(v2);
  v3[1] = v4;
  if (!v4)
  {
    fclose(*v3);
    free(v3);
    return 0;
  }

  return v3;
}

void crfsuite_delete_feature_tokenizer(FILE **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      fclose(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      iwa_delete(v3);
    }

    free(a1);
  }
}

int *crfsuite_feature_tokenizer_get_next_token(int *result)
{
  if (result)
  {
    return iwa_read(*(result + 1));
  }

  return result;
}

unsigned int *crfsuite_feature_token_get_type(unsigned int *result)
{
  if (result)
  {
    if (*result - 1 >= 4)
    {
      return 0;
    }

    else
    {
      return *result;
    }
  }

  return result;
}

uint64_t crfsuite_feature_token_get_attribute(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t crfsuite_feature_token_get_value(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

_DWORD *dataset_init_trainset(uint64_t a1, unsigned int *a2, int a3, int a4, int a5)
{
  v10 = *a2;
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (*(a2 + 1) + 24);
    do
    {
      v13 = *v12;
      v12 += 8;
      if (v13 != a5)
      {
        ++v11;
      }

      --v10;
    }

    while (v10);
  }

  *a1 = a2;
  *(a1 + 16) = v11;
  result = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  *(a1 + 8) = result;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  v15 = *a2;
  if (*a2 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = (*(a2 + 1) + 24);
    do
    {
      v19 = *v18;
      v18 += 8;
      if (v19 != a5)
      {
        result[v17++] = v16;
        v15 = *a2;
      }

      ++v16;
    }

    while (v16 < v15);
  }

  return result;
}

_DWORD *dataset_init_testset(uint64_t a1, unsigned int *a2, int a3, int a4, int a5)
{
  v10 = *a2;
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (*(a2 + 1) + 24);
    do
    {
      v13 = *v12;
      v12 += 8;
      if (v13 == a5)
      {
        ++v11;
      }

      --v10;
    }

    while (v10);
  }

  *a1 = a2;
  *(a1 + 16) = v11;
  result = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  *(a1 + 8) = result;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  v15 = *a2;
  if (*a2 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = (*(a2 + 1) + 24);
    do
    {
      v19 = *v18;
      v18 += 8;
      if (v19 == a5)
      {
        result[v17++] = v16;
        v15 = *a2;
      }

      ++v16;
    }

    while (v16 < v15);
  }

  return result;
}

uint64_t dataset_shuffle(uint64_t result)
{
  if (*(result + 16) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = rand();
      v3 = result % *(v1 + 16);
      v4 = *(v1 + 8);
      v5 = *(v4 + 4 * v3);
      *(v4 + 4 * v3) = *(v4 + 4 * v2);
      *(v4 + 4 * v2++) = v5;
    }

    while (v2 < *(v1 + 16));
  }

  return result;
}

uint64_t crfsuite_dictionary_create_instance(const char *a1, void *a2)
{
  if (strcmp(a1, "dictionary"))
  {
    return 1;
  }

  v4 = malloc_type_calloc(1uLL, 0x48uLL, 0x1080040D23F5C74uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = quark_new();
  result = 0;
  *v5 = v6;
  v5[2] = 1;
  *(v5 + 2) = dictionary_addref;
  *(v5 + 3) = dictionary_release;
  *(v5 + 4) = dictionary_get;
  *(v5 + 5) = dictionary_to_id;
  *(v5 + 6) = dictionary_to_string;
  *(v5 + 7) = dictionary_num;
  *(v5 + 8) = dictionary_free;
  *a2 = v5;
  return result;
}

uint64_t dictionary_release(uint64_t a1)
{
  v2 = crfsuite_interlocked_decrement((a1 + 8));
  if (!v2)
  {
    quark_delete(*a1);
    free(a1);
  }

  return v2;
}

uint64_t dictionary_to_string(uint64_t *a1, int a2, char **a3)
{
  v4 = quark_to_string(*a1, a2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = strlen(v4);
  v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  strcpy(v7, v5);
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t ME_Efficient_Model_Trainer::perform_SGD(ME_Efficient_Model_Trainer *this)
{
  if (*(this + 4) > 0.0)
  {
    v73 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: L2 regularization is currently not supported in SGD mode.");
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v73);
    exit(1);
  }

  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "performing SGD", 14);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v85, MEMORY[0x29EDC93D0]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v85);
  std::ostream::put();
  std::ostream::flush();
  v4 = *(this + 3);
  v5 = *(this + 27) - *(this + 26);
  std::vector<int>::vector[abi:ne200100](&v85, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - *(this + 5)) >> 4));
  if (v86 != v85.__locale_)
  {
    v6 = 0;
    v7 = (v86 - v85.__locale_) >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = vdupq_n_s64(v7 - 1);
    v9 = xmmword_297732610;
    v10 = xmmword_297732570;
    v11 = vdupq_n_s64(4uLL);
    v12 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (v85.__locale_ + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v14, *v8.i8).u8[0])
      {
        *(v13 - 2) = v6;
      }

      if (vuzp1_s16(v14, *&v8).i8[2])
      {
        *(v13 - 1) = v6 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v13 = v6 + 2;
        v13[1] = v6 + 3;
      }

      v6 += 4;
      v9 = vaddq_s64(v9, v11);
      v10 = vaddq_s64(v10, v11);
      v13 += 4;
    }

    while (v12 != v6);
  }

  v15 = (v5 >> 2);
  std::vector<double>::vector[abi:ne200100](v84, v15);
  v75 = *(this + 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "eta0 = ", 7);
  v17 = MEMORY[0x29C272DF0](v16, v75);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " alpha = ", 9);
  v19 = MEMORY[0x29C272DF0](v18, *(this + 2));
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v82, MEMORY[0x29EDC93D0]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v82);
  std::ostream::put();
  std::ostream::flush();
  v81[0] = 0;
  std::vector<double>::vector[abi:ne200100](&v82, v15);
  std::vector<int>::vector[abi:ne200100](v81, v15);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  __p[0] = 0;
  std::vector<double>::push_back[abi:ne200100](&v78, __p);
  if (*(this + 1) >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = MEMORY[0x29EDCA610];
    v24 = 0.0;
    while (1)
    {
      std::random_shuffle[abi:ne200100]<std::__wrap_iter<int *>>(v85.__locale_, v86);
      v25 = *(this + 5);
      if (*(this + 6) != v25)
      {
        break;
      }

      v62 = 0;
      v64 = 0.0;
      v63 = 0.0;
      v28 = 0.0;
LABEL_52:
      v65 = v28 / v62;
      if (v4 > 0.0)
      {
        v66 = *(this + 18);
        v67 = *(this + 19) - v66;
        if (v67)
        {
          v68 = v67 >> 3;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = 0.0;
          do
          {
            v70 = *v66++;
            v69 = v69 + fabs(v70);
            --v68;
          }

          while (v68);
        }

        else
        {
          v69 = 0.0;
        }

        v65 = v65 + -v4 * v69;
      }

      fprintf(*v23, "%3d  obj(err) = %f (%6.4f)", ++v22, v65, 1.0 - v63 / v64);
      if (*(this + 88) >= 1)
      {
        v71 = ME_Efficient_Model_Trainer::heldout_likelihood(this);
        fprintf(*v23, "  heldout_logl(err) = %f (%6.4f)", v71, *(this + 43));
      }

      fputc(10, *v23);
      if (v22 >= *(this + 1))
      {
        goto LABEL_64;
      }
    }

    v74 = v22;
    v26 = 0;
    v27 = 0;
    v28 = 0.0;
LABEL_17:
    v29 = *(v85.__locale_ + v27);
    std::vector<double>::vector[abi:ne200100](__p, *(this + 58));
    v30 = (v25 + 80 * v29);
    v31 = ME_Efficient_Model_Trainer::conditional_probability(this, v30, __p);
    v32 = v75 * pow(*(this + 2), v21 / (0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - *(this + 5)) >> 4)));
    v76 = *(v79 - 1) + v32 * v4;
    std::vector<double>::push_back[abi:ne200100](&v78, &v76);
    v24 = v24 + v32 * v4;
    v33 = *v30;
    v34 = log(*(__p[0] + v33));
    if (v31 == v33)
    {
      ++v26;
    }

    v36 = v30[1];
    v35 = v30[2];
    v37 = -v32;
    if (v36 == v35)
    {
      goto LABEL_33;
    }

    v38 = *(this + 36);
LABEL_21:
    v39 = v38 + 24 * *v36;
    v40 = *v39;
    if (*v39 == *(v39 + 8))
    {
      goto LABEL_32;
    }

    while (1)
    {
      v41 = ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v40);
      v42 = *(__p[0] + v41);
      v43 = *v30 == ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v40) ? 1.0 : 0.0;
      v44 = *v40;
      v45 = *(this + 18);
      v46 = *(v45 + 8 * v44) + v37 * (v42 - v43);
      *(v45 + 8 * v44) = v46;
      locale = v82.__locale_;
      if (v46 > 0.0)
      {
        break;
      }

      v48 = v46;
      if (v46 < 0.0)
      {
        v48 = fmin(v46 + v24 - *(v82.__locale_ + v44), 0.0);
        goto LABEL_29;
      }

LABEL_30:
      *(locale + v44) = *(locale + v44) + v48 - v46;
      ++v40;
      v38 = *(this + 36);
      if (v40 == *(v38 + 24 * *v36 + 8))
      {
        v35 = v30[2];
LABEL_32:
        if (++v36 == v35)
        {
LABEL_33:
          v50 = v30[4];
          v49 = v30[5];
          if (v50 == v49)
          {
            goto LABEL_47;
          }

          v51 = *(this + 36);
          while (2)
          {
            v52 = v51 + 24 * *v50;
            v53 = *v52;
            if (*v52 == *(v52 + 8))
            {
              goto LABEL_46;
            }

            while (2)
            {
              v54 = ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v53);
              v55 = *(__p[0] + v54);
              if (*v30 == ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v53))
              {
                v56 = 1.0;
              }

              else
              {
                v56 = 0.0;
              }

              v57 = *v53;
              v58 = *(this + 18);
              v59 = *(v58 + 8 * v57) + v37 * (v50[1] * (v55 - v56));
              *(v58 + 8 * v57) = v59;
              v60 = v82.__locale_;
              if (v59 > 0.0)
              {
                v61 = fmax(v59 - (v24 + *(v82.__locale_ + v57)), 0.0);
                goto LABEL_43;
              }

              v61 = v59;
              if (v59 < 0.0)
              {
                v61 = fmin(v59 + v24 - *(v82.__locale_ + v57), 0.0);
LABEL_43:
                *(v58 + 8 * v57) = v61;
              }

              *(v60 + v57) = *(v60 + v57) + v61 - v59;
              ++v53;
              v51 = *(this + 36);
              if (v53 != *(v51 + 24 * *v50 + 8))
              {
                continue;
              }

              break;
            }

            v49 = v30[5];
LABEL_46:
            v50 += 2;
            if (v50 != v49)
            {
              continue;
            }

            break;
          }

LABEL_47:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v28 = v28 + v34;
          ++v27;
          ++v21;
          v25 = *(this + 5);
          v62 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v25) >> 4);
          if (v27 >= v62)
          {
            v63 = v26;
            v64 = v27;
            v22 = v74;
            v23 = MEMORY[0x29EDCA610];
            goto LABEL_52;
          }

          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    v48 = fmax(v46 - (v24 + *(v82.__locale_ + v44)), 0.0);
LABEL_29:
    *(v45 + 8 * v44) = v48;
    goto LABEL_30;
  }

LABEL_64:
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }

  if (v82.__locale_)
  {
    v83 = v82.__locale_;
    operator delete(v82.__locale_);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (v85.__locale_)
  {
    v86 = v85.__locale_;
    operator delete(v85.__locale_);
  }

  return 0;
}

void sub_29770BA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25.__locale_)
  {
    operator delete(a25.__locale_);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31.__locale_)
  {
    operator delete(a31.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x29EDC93D0]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::random_shuffle[abi:ne200100]<std::__wrap_iter<int *>>(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result) >> 2;
  if (v2 >= 2)
  {
    v4 = result;
    v12 = xmmword_297732620;
    std::__rs_get();
    v5 = a2 - 4;
    if (v5 > v4)
    {
      v6 = v2 - 1;
      v7 = v4;
      do
      {
        v10[0] = 0;
        v10[1] = v6;
        v8 = std::uniform_int_distribution<long>::operator()<std::__rs_default>(&v12, &v11, v10);
        if (v8)
        {
          v9 = *v7;
          *v7 = v4[v8];
          v4[v8] = v9;
        }

        ++v7;
        --v6;
        ++v4;
      }

      while (v7 < v5);
    }

    return MEMORY[0x29C272D50](&v11);
  }

  return result;
}

uint64_t ME_Efficient_Model_Trainer::ME_FeatureBag::Feature(ME_Efficient_Model_Trainer::ME_FeatureBag *this, int a2)
{
  if (a2 < 0 || (v2 = *(this + 5), ((*(this + 6) - v2) >> 2) <= a2))
  {
    ME_Efficient_Model_Trainer::ME_FeatureBag::Feature();
  }

  return *(v2 + 4 * a2);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C272DD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C272DE0](v13);
  return a1;
}

void sub_29770BF54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C272DE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29770BF34);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_29770C188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_29770C218(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_29770C314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29770C3EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29770C500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::uniform_int_distribution<long>::operator()<std::__rs_default>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::__rs_default,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::__rs_default,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::__rs_default,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::__rs_default,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::__rs_default,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::__rs_default,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::__rs_default::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::__rs_default::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

void holdout_evaluation(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  memset(v18, 0, sizeof(v18));
  v8 = a2[4];
  v9 = (*(*(*a2 + 24) + 56))();
  crfsuite_evaluation_init(v18, v9);
  (*(a1 + 88))(a1, a3, 1.0);
  if (v8 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v17 = 0;
      v12 = dataset_get(a2, v10);
      if (*v12 >= 1)
      {
        free(v11);
        v11 = malloc_type_malloc(4 * *v12, 0x100004052888210uLL);
      }

      (*(a1 + 96))(a1, v12);
      (*(a1 + 112))(a1, v11, &v17);
      crfsuite_evaluation_accmulate(v18, *(v12 + 2), v11, *v12);
      ++v10;
    }

    while (v8 != v10);
  }

  crfsuite_evaluation_finalize(v18);
  crfsuite_evaluation_output(v18, *(*a2 + 24), a4[1], *a4, v13, v14, v15, v16);
  crfsuite_evaluation_finish(v18);
  if (v11)
  {
    free(v11);
  }
}

char *iwa_reader(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x1070040CBD6686FuLL);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  *v2 = a1;
  v4 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  *(v3 + 4) = v4;
  *(v3 + 5) = v4 + 0x10000;
  *(v3 + 6) = v4 + 0x10000;
  if (v4)
  {
    *(v3 + 9) = malloc_type_calloc(0x1000uLL, 1uLL, 0x100004077774924uLL);
    *(v3 + 56) = xmmword_297732630;
    *(v3 + 12) = malloc_type_calloc(0x1000uLL, 1uLL, 0x100004077774924uLL);
    *(v3 + 5) = xmmword_297732630;
  }

  else
  {
LABEL_4:
    iwa_delete(v3);
    return 0;
  }

  return v3;
}

void iwa_delete(void **a1)
{
  if (a1)
  {
    free(a1[12]);
    a1[10] = 0;
    a1[11] = 0;
    a1[12] = 0;
    free(a1[9]);
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
    free(a1[4]);
  }

  free(a1);
}

int *iwa_read(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  bzero(*(a1 + 72), *(a1 + 56));
  *(a1 + 64) = 0;
  bzero(*(a1 + 96), *(a1 + 80));
  *(a1 + 88) = 0;
  v2 = peek_char(a1);
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v2 == -1)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          return 0;
        }

        return v4;
      }
    }

    else
    {
      if (v3 == 4)
      {
        goto LABEL_19;
      }

      if (v3 != 3)
      {
        if (v3 != 2)
        {
          return v4;
        }

        goto LABEL_23;
      }
    }

    v6 = 1;
    goto LABEL_34;
  }

  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 != 2)
      {
        return v4;
      }

      goto LABEL_19;
    }

LABEL_13:
    if (peek_char(a1) != 10)
    {
      v6 = 2;
      goto LABEL_34;
    }

    if (peek_char(a1) != -1)
    {
      ++*(a1 + 40);
    }

    *v4 = 0;
    return v4;
  }

  if (v3 != 4)
  {
    if (v3 != 3)
    {
      return v4;
    }

    goto LABEL_13;
  }

LABEL_19:
  while (1)
  {
    v5 = peek_char(a1);
    if (v5 != 9)
    {
      break;
    }

    if (peek_char(a1) != -1)
    {
      ++*(a1 + 40);
    }
  }

  if (v5 == 10)
  {
    if (peek_char(a1) != -1)
    {
      ++*(a1 + 40);
    }

LABEL_23:
    v6 = 3;
LABEL_34:
    *v4 = v6;
    return v4;
  }

  read_field_unescaped(a1, (a1 + 56));
  if (peek_char(a1) == 58)
  {
    if (peek_char(a1) != -1)
    {
      ++*(a1 + 40);
    }

    read_field_unescaped(a1, (a1 + 80));
    peek_char(a1);
  }

  *(a1 + 8) = 4;
  v7 = *(a1 + 96);
  *(a1 + 16) = *(a1 + 72);
  *(a1 + 24) = v7;
  return v4;
}

uint64_t peek_char(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 48) > v1)
  {
    return *v1;
  }

  v3 = fread(*(a1 + 32), 1uLL, 0x10000uLL, *a1);
  v1 = *(a1 + 32);
  *(a1 + 40) = v1;
  *(a1 + 48) = &v1[v3];
  if (v3)
  {
    return *v1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t read_field_unescaped(uint64_t a1, unint64_t *a2)
{
  while (1)
  {
    result = peek_char(a1);
    if ((result + 1) <= 0x3B && ((1 << (result + 1)) & 0x800000000000C01) != 0)
    {
      break;
    }

    v6 = result;
    if (peek_char(a1) != -1)
    {
      ++*(a1 + 40);
    }

    if (v6 == 92)
    {
      v7 = peek_char(a1);
      LOBYTE(v6) = v7;
      if (v7 == 92 || v7 == 58)
      {
        if (peek_char(a1) != -1)
        {
          ++*(a1 + 40);
        }
      }

      else
      {
        LOBYTE(v6) = 92;
      }
    }

    v9 = *a2;
    v8 = a2[1];
    if (*a2 <= v8)
    {
      *a2 = 2 * v9;
      v10 = malloc_type_realloc(a2[2], 2 * v9, 0x100004077774924uLL);
      a2[2] = v10;
      bzero(&v10[a2[1]], *a2 - a2[1]);
      v8 = a2[1];
    }

    v11 = a2[2];
    a2[1] = v8 + 1;
    *(v11 + v8) = v6;
  }

  return result;
}

void *logging(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
    v9 = result[1];
    if (v9)
    {
      return v9(*result, a2, &a9);
    }
  }

  return result;
}

void *logging_timestamp(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = 0;
  time(&v13);
  v4 = gmtime(&v13);
  strftime(v14, 0x50uLL, "%Y-%m-%dT%H:%M:%SZ", v4);
  result = logging(a1, a2, v5, v6, v7, v8, v9, v10, v14);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *logging_progress(void *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 4);
  if (v8 < a2)
  {
    v10 = result;
    do
    {
      v11 = v8 + 1;
      *(v10 + 4) = v8 + 1;
      if (v8)
      {
        if (v11 % 10)
        {
          v12 = v10;
          v13 = ".";
        }

        else
        {
          v14 = (v11 / 10);
          v12 = v10;
          v13 = "%d";
        }

        result = logging(v12, v13, a3, a4, a5, a6, a7, a8, v14);
      }

      v8 = *(v10 + 4);
    }

    while (v8 < a2);
  }

  return result;
}

void *logging_progress_end(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  logging_progress(a1, 100, a3, a4, a5, a6, a7, a8);

  return logging(a1, "\n", v10, v11, v12, v13, v14, v15, a9);
}

_DWORD *params_create_instance()
{
  v0 = malloc_type_calloc(1uLL, 0x80uLL, 0x108004084EFEF47uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    *v0 = v1;
    if (v1)
    {
      v0[2] = 1;
      *(v0 + 2) = params_addref;
      *(v0 + 3) = params_release;
      *(v0 + 4) = params_num;
      *(v0 + 5) = params_name;
      *(v0 + 6) = params_set;
      *(v0 + 7) = params_get;
      *(v0 + 15) = params_free;
      *(v0 + 8) = params_set_int;
      *(v0 + 9) = params_set_float;
      *(v0 + 10) = params_set_string;
      *(v0 + 11) = params_get_int;
      *(v0 + 12) = params_get_float;
      *(v0 + 13) = params_get_string;
      *(v0 + 14) = params_help;
    }

    else
    {
      free(v0);
      return 0;
    }
  }

  return v0;
}

uint64_t params_release(_DWORD *a1)
{
  v2 = crfsuite_interlocked_decrement(a1 + 2);
  if (!v2)
  {
    v3 = *a1;
    if (**a1 >= 1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        free(*(v3[1] + v4));
        free(*(v3[1] + v4 + 24));
        free(*(v3[1] + v4 + 32));
        ++v5;
        v4 += 40;
      }

      while (v5 < *v3);
    }

    free(v3[1]);
    free(v3);
    free(a1);
  }

  return v2;
}

uint64_t params_set(unsigned int **a1, char *a2, const char *a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  v6 = *(param + 2);
  switch(v6)
  {
    case 3:
      free(param[3]);
      if (a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = "";
      }

      v11 = mystrdup(v10);
      result = 0;
      v5[3] = v11;
      break;
    case 2:
      if (a3)
      {
        v9 = atof(a3);
      }

      else
      {
        v9 = 0.0;
      }

      result = 0;
      *(v5 + 2) = v9;
      break;
    case 1:
      if (a3)
      {
        v7 = atoi(a3);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *(v5 + 3) = v7;
      break;
    default:
      return 0;
  }

  return result;
}