void free_stream_list(int *a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 1);
    if (v2 >= *a1)
    {
      break;
    }

    free(*&v4[i]);
    ++v2;
  }

  free(v4);
  *(a1 + 1) = 0;
}

BOOL insert_string(uint64_t *a1, int a2, unint64_t a3, char *a4)
{
  *__s2 = 0;
  v4 = &vstmtbl[12 * a2];
  v6 = v4[1];
  v5 = v4 + 1;
  if (*(v6 + 15) >= 0xFFFEu && LOBYTE(vstmtbl[12 * a2 + 10]))
  {
    if ((*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*(*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 2) == 0)
    {
LABEL_8:
      ins_sync(a1, a2, a3, 1);
    }

LABEL_9:
    if (!*a4)
    {
      result = 1;
      *(a1[23] + 452) = 1;
      return result;
    }

    v12 = 0;
    __s2[0] = *a4;
    v13 = *v5;
    v14 = *(*v5 + 14) & ~(*(*v5 + 14) >> 31);
    while (v14 != v12)
    {
      if (!strcmp(*(*(v13 + 2) + 8 * v12), __s2))
      {
        if (*(v13 + 15) == -1)
        {
          v18 = v12;
          v15 = &v18;
        }

        else
        {
          v17 = v12;
          v15 = &v17;
        }

        result = ins_tok_named(a1, a2, v15, __s2, a3);
        if (!result)
        {
          return result;
        }

        if (*++a4)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      ++v12;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_72@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X3>, char a5@<W8>)
{
  *a3 = a5;
  *a4 = *(*(*(a2 + 8) + 16 * *(*(a1 + 200) + 300) + 8) + *(*(a1 + 200) + 304));
  return 1;
}

void *OUTLINED_FUNCTION_9_53(size_t a1)
{
  *v1 = a1;

  return malloc_type_calloc(a1, 0x10uLL, 0x1010040449DF08BuLL);
}

void OUTLINED_FUNCTION_10_52(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 + 2 * a3;
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
}

int *OUTLINED_FUNCTION_12_50()
{

  return __error();
}

uint64_t vproj_r(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_55();
    if (*(v9 + 8864))
    {
      OUTLINED_FUNCTION_2_66(v5, 1);
      OUTLINED_FUNCTION_2_66(v5, 0);
      v8 = *(*(v5 + 192) + 9084) + v6;
    }

    v10 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v10 || (v11 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL, (*v10 & 2) == 0))
    {
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v12 = OUTLINED_FUNCTION_3_61();
    project_rl(v12, v13, v7, v14, v6);
    if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
    {
      v15 = OUTLINED_FUNCTION_3_61();
      DELSPINE(v15, v16);
      v17 = OUTLINED_FUNCTION_3_61();
      INSSPINEL(v17, v18, v11);
    }
  }

  return 1;
}

unint64_t vgetsc(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  if (a3)
  {
    if (*(*(a1 + 192) + 8868))
    {
      if (!NONSEQ(a4))
      {
        v9 = *(a1 + 192);
        if (!*(*(v9 + 9072) + a5))
        {
          if (!a2)
          {
            for (i = *(v9 + 9084); ; v6 = *(v6 + 8 * i - 16) & 0xFFFFFFFFFFFFFFFCLL)
            {
              if (*(v6 + 8 * (i + a5)))
              {
                if (!NONSEQ(v6))
                {
                  return v6;
                }

                OUTLINED_FUNCTION_9_54();
              }
            }
          }

          while (1)
          {
            if (*(v6 + 8 * (*(v9 + 9084) + a5)))
            {
              if (!NONSEQ(v6))
              {
                return v6;
              }

              v9 = *(a1 + 192);
            }

            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          }
        }
      }
    }

    v10 = 0;
    v11 = 1;
    v12 = v6;
    v13 = v6;
LABEL_6:
    if (v11 >= 1 && v6)
    {
      while (1)
      {
        v14 = v6;
        OUTLINED_FUNCTION_9_54();
        if ((*(v6 + 8 * (v15 + a5)) & 1) == 0)
        {
          break;
        }

        v6 = *(v6 + 8 * v15 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v10 = v14;
        if (!v6)
        {
          goto LABEL_29;
        }
      }

      for (j = 0; ; ++j)
      {
        v17 = *(a1 + 288);
        OUTLINED_FUNCTION_9_54();
        if (j >= v19)
        {
          v24 = v14 + 8 * v18;
          v25 = *(v24 - 8);
          v6 = v25 & 0xFFFFFFFFFFFFFFFCLL;
          *(v24 - 8) = v25 & 3;
          if (v10)
          {
            OUTLINED_FUNCTION_5_57();
            *(v10 + 8 * v26 - 8) = *(v10 + 8 * v26 - 8) & 3 | v6;
          }

          else
          {
            v13 = v25 & 0xFFFFFFFFFFFFFFFCLL;
          }

          --v11;
          goto LABEL_6;
        }

        if ((*(v14 + 8 * (j + v18)) & 1) == 0)
        {
          goto LABEL_23;
        }

        if (a2)
        {
          if (!VLSYNC(v14, j))
          {
            goto LABEL_23;
          }
        }

        else if (!VRSYNC(a1, v14, j))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_5_57();
        v22 = v21 - 1;
        if (*(v20 + 8 * v22) <= 3uLL && v20 != v12)
        {
          *(v12 + 8 * v22) = *(v12 + 8 * v22) & 3 | v20;
          ++v11;
          goto LABEL_24;
        }

LABEL_23:
        v20 = v12;
LABEL_24:
        v12 = v20;
      }
    }

LABEL_29:
    v6 = 0;
    v27 = *(*(a1 + 200) + 8 * (a2 != 0));
LABEL_30:
    while (1)
    {
      v28 = v13;
      if (v11 < 2)
      {
        break;
      }

      while (v28)
      {
        v29 = v28;
        OUTLINED_FUNCTION_5_57();
        v28 = *(v28 + 8 * v30 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v31 = *(v29 + 16);
        if ((v31 & 1) == 0)
        {
          v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
          if (v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v29;
          }

          if (a2)
          {
            v34 = VRSYNC(a1, v33, a5);
          }

          else
          {
            v34 = VLSYNC(v33, a5);
          }

          if (v34 == v27)
          {
            v11 = 1;
            v6 = v29;
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_5_57();
          if (*(v35 + 8 * v36 - 8) > 3uLL || v35 == v12)
          {
            *(v29 + 16) |= 1uLL;
            --v11;
          }

          else
          {
            *(v29 + 16) = *(v29 + 16) & 3 | v35;
          }
        }
      }
    }

    while (v13)
    {
      if (!v6)
      {
        if (*(v13 + 16))
        {
          v6 = 0;
        }

        else
        {
          v6 = v13;
        }
      }

      OUTLINED_FUNCTION_5_57();
      *(v13 + 8 * v38 - 8) &= 3uLL;
      *(v13 + 16) &= 2uLL;
      OUTLINED_FUNCTION_5_57();
      v40 = v13 + 8 * v39;
      v13 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      *(v40 - 8) &= ~1uLL;
    }
  }

  else
  {
    if (a2)
    {
      v42 = (a4 + 8 * a5 + 24);
    }

    else
    {
      OUTLINED_FUNCTION_9_54();
      v42 = (v6 + 8 * (v43 + a5));
    }

    return *v42 & 0xFFFFFFFFFFFFFFFCLL;
  }

  return v6;
}

void project_rl(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int a5)
{
  v10 = *(*(a1 + 192) + 9084) + a5;
  *(a2 + 8 * v10) |= 1uLL;
  CLRONESTM(a2);
  if (ALLNSQ(a2) && !*(*(*(a1 + 192) + 9072) + a5))
  {
    CLRALLNSQ(a2);
  }

  if (a3 != a4)
  {
    *(a2 + 8 * (a5 + 3)) = *(a2 + 8 * (a5 + 3)) & 3 | a3;
    v11 = *(*(a1 + 192) + 9084) + a5;
    *(a2 + 8 * v11) = *(a2 + 8 * v11) & 3 | a4;
    if (a3 && (*a3 & 2) != 0)
    {
      v12 = *(*(a1 + 192) + 9084) + a5;
      *(a3 + 8 * v12) = *(a3 + 8 * v12) & 3 | a2;
      if (!a4)
      {
LABEL_11:
        *a4 = a2;
        return;
      }
    }

    else
    {
      *(a3 + 8) = a2;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    if ((*a4 & 2) == 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_8_55(a5 + 3);
  }
}

uint64_t vproj_l(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_55();
  if (*(v8 + 8864))
  {
    OUTLINED_FUNCTION_2_66(v5, 1);
    if ((*(v4 + 8 * (*(*(v5 + 192) + 9084) + v6)) & 1) == 0)
    {
      OUTLINED_FUNCTION_2_66(v5, 0);
    }
  }

  v9 = (v7[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v9;
    v11 = v7[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL;
    if ((*v9 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0];
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_10:
  v12 = OUTLINED_FUNCTION_3_61();
  project_rl(v12, v13, v14, v7, v6);
  if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
  {
    v15 = OUTLINED_FUNCTION_3_61();
    DELSPINE(v15, v16);
    v17 = OUTLINED_FUNCTION_3_61();
    INSSPINER(v17, v18, v11);
  }

  return 1;
}

uint64_t vctxtinit(uint64_t a1)
{
  if (*(a1 + 288))
  {
    *(*(a1 + 200) + 352) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 360) = OUTLINED_FUNCTION_6_56();
    *(*(a1 + 200) + 368) = OUTLINED_FUNCTION_6_56();
    *(*(a1 + 200) + 376) = OUTLINED_FUNCTION_6_56();
    *(*(a1 + 200) + 384) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v3 = *(a1 + 200);
    v3[49] = v2;
  }

  else
  {
    v3 = *(a1 + 200);
  }

  v4 = v3[44];
  if (v4 && v3[45] && v3[46] && v3[47] && v3[48] && v3[49])
  {
    return 1;
  }

  free(v4);
  free(*(*(a1 + 200) + 360));
  free(*(*(a1 + 200) + 368));
  free(*(*(a1 + 200) + 376));
  free(*(*(a1 + 200) + 384));
  free(*(*(a1 + 200) + 392));
  return 0;
}

uint64_t vproject(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5)
{
  v5 = *(*(a1 + 192) + 9084) + a5;
  if ((*(a2 + 8 * v5) & 1) == 0)
  {
    if (a3 && a4 && (*a3 & 2) != 0)
    {
      if ((*a4 & 2) != 0)
      {
        v11 = a5 + 3;
        OUTLINED_FUNCTION_1_69(v5);
        v12 = ALLNSQ(a2);
        v13 = *(a1 + 192);
        if (v12 && !*(*(v13 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v13 = *(a1 + 192);
        }

        OUTLINED_FUNCTION_4_57(v13);
        *&a4[8 * v11] = *&a4[8 * v11] & 3 | a2;
        OUTLINED_FUNCTION_0_73(*(a1 + 192));
        v14 = (a2 + 8 * v11);
LABEL_24:
        *v14 = *v14 & 3 | a3;
        if (NONSEQ(a2))
        {
          if (*(*(a1 + 192) + 8868))
          {
            DELSPINE(a1, a2);
            INSSPINEL(a1, a2, a4);
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 && (*a4 & 2) != 0)
      {
        OUTLINED_FUNCTION_1_69(v5);
        v19 = ALLNSQ(a2);
        v20 = *(a1 + 192);
        if (v19 && !*(*(v20 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v20 = *(a1 + 192);
        }

        *(a3 + 8) = a2;
        OUTLINED_FUNCTION_0_73(v20);
        OUTLINED_FUNCTION_8_55(a5 + 3);
        v14 = (a2 + 8 * v21);
        goto LABEL_24;
      }

      if (!a3)
      {
        return 0;
      }
    }

    if ((*a3 & 2) != 0)
    {
      OUTLINED_FUNCTION_1_69(v5);
      v16 = ALLNSQ(a2);
      v17 = *(a1 + 192);
      if (v16)
      {
        v18 = a5;
        if (!*(*(v17 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v17 = *(a1 + 192);
        }
      }

      else
      {
        v18 = a5;
      }

      OUTLINED_FUNCTION_4_57(v17);
      OUTLINED_FUNCTION_0_73(*(a1 + 192));
      *a4 = a2;
      v14 = (a2 + 8 * v18 + 24);
      goto LABEL_24;
    }

    return 0;
  }

  return 1;
}

uint64_t vdef_proj(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)))
  {
    return 1;
  }

  v6 = vgetsc(a1, 1, 1, a2, a3);
  if (*(*(a1 + 192) + 8864))
  {
    v7 = vgetsc(a1, 0, 1, a2, a3);
  }

  else
  {
    v7 = VRSYNC(a1, v6, a3);
  }

  return vproject(a1, a2, v6, v7, a3);
}

uint64_t vsetsc(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a2)
  {
    v6 = (a4 + 8 * a5 + 24);
  }

  else
  {
    v6 = (a4 + 8 * (*(*(result + 192) + 9084) + a5));
  }

  *v6 = *v6 & 3 | a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_69@<X0>(uint64_t a1@<X8>)
{
  *(*(v3 + 184) + 452) = 1;
  *(v2 + 8 * a1) = v1 | 1;

  return CLRONESTM(v2);
}

unint64_t OUTLINED_FUNCTION_2_66(uint64_t a1, int a2)
{

  return vgetsc(a1, a2, 1, v2, v3);
}

void *OUTLINED_FUNCTION_6_56()
{
  v3 = 8 * *(v0 + 288);

  return malloc_type_malloc(v3, v1);
}

double delta_lib_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x930uLL, 0x10B00402BA2B37CuLL);
  *(a1 + 200) = v2;
  bzero(v2, 0x930uLL);
  v3 = *(a1 + 200);
  *(v3 + 336) = "---";
  *(v3 + 344) = 1;
  result = NAN;
  *(v3 + 656) = -1;
  *(v3 + 2232) = 0;
  return result;
}

void delta_lib_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
      bzero(v2, 0x930uLL);
      free(*(a1 + 200));
      *(a1 + 200) = 0;
    }
  }
}

uint64_t absoluteSyncNumPtr(uint64_t a1)
{
  if (a1)
  {
    return a1 & 0xFFFFFFFC;
  }

  else
  {
    return -1;
  }
}

uint64_t absoluteSyncNum(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return getDeltaHeapSegNumber(a1, a2, *(*(a1 + 200) + 248));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *VLSYNC(uint64_t a1, int a2)
{
  result = (*(a1 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return (*result & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return result;
}

unint64_t VRSYNC(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 0xFFFFFFFFFFFFFFFCLL;
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return *(result + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  return result;
}

uint64_t SETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) |= 2uLL;
  return result;
}

uint64_t UNSETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) &= ~2uLL;
  return result;
}

uint64_t SETSPINER(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 8 * *(*(result + 192) + 9084);
  *(v3 - 16) = *(v3 - 16) & 3 | a3;
  return result;
}

void INSSPINER(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a3 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + v3) = v4 | *(a2 + v3) & 3;
  *(v4 + 8) = *(v4 + 8) & 3 | a2;
  v5 = a3 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a2;
  *(a2 + 8) = *(a2 + 8) & 3 | a3;
  OUTLINED_FUNCTION_0_74(&spine_changed);
}

void INSSPINEL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + 8) = v3 | *(a2 + 8) & 3;
  v4 = v3 + 8 * *(*(a1 + 192) + 9084);
  *(v4 - 16) = *(v4 - 16) & 3 | a2;
  *(a3 + 8) = *(a3 + 8) & 3 | a2;
  v5 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a3;
  OUTLINED_FUNCTION_0_74(&spine_changed);
}

void DELSPINE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a2 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) = v4 | *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) & 3;
  *(v4 + 8) = v2 & 0xFFFFFFFFFFFFFFFCLL | *(v4 + 8) & 3;
  OUTLINED_FUNCTION_0_74(&spine_changed);
}

uint64_t vinit_stm(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = &vstmtbl[12 * a2];
  vdel_2pt(a1, a2, **(a1 + 200), *(*(a1 + 200) + 8));
  if (!*(v4 + 48))
  {
    return 1;
  }

  v9 = 0;
  v5 = v4[1];
  v6 = v4[2];
  LOWORD(v9) = *(v5 + 15);
  BYTE2(v9) = v5[32];
  v8 = (*v6)(v4[5]);
  result = vins_tok(a1, v2, **(a1 + 200), *(*(a1 + 200) + 8), &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t vdel_2pt(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[25];
  *(v8 + 136) = a2;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v9 = a2;
  v10 = VRSYNC(a1, a3, a2);
  *(v8 + 104) = v10;
  *(v8 + 112) = VLSYNC(a4, v9);
  OUTLINED_FUNCTION_8_56(a1[23]);
  if (v10 == a4)
  {
    v11 = (*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v11 || (*v11 & 2) == 0)
    {
      fdeldel(a1, v11, v11);
    }
  }

  else
  {
    fdel(a1, 0);
  }

  return 1;
}

uint64_t vins_tok(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[24];
  *(a1[23] + 452) = 1;
  v12 = a4 + 8 * a2;
  if ((*(a3 + 8 * (*(v10 + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != a4 || (*(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a3)
  {
    vdel_2pt(a1, a2, a3, a4);
  }

  v13 = &vstmtbl[12 * a2];
  result = alloc_tok(a1, v13);
  if (result)
  {
    v15 = *(a1[24] + 9084) + a2;
    *(a3 + 8 * v15) = *(a3 + 8 * v15) & 3 | result;
    *(v12 + 24) = *(v12 + 24) & 3 | result;
    *result = a3;
    *(result + 8) = a4;
    if (*(a5 + 8) < 0)
    {
      vinitflds(result, a2, (result + 16), *a5);
    }

    else
    {
      memcpy((result + 16), *a5, *(v13 + 17));
    }

    result = 1;
    v16 = a1[24];
    *(a1[23] + 452) = 1;
    *(v16 + 9080) = 0;
  }

  return result;
}

uint64_t vmergable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a2 != a3 && *(*(a1 + 192) + 8864))
  {
    v5 = *(a1 + 200);
    v6 = *v5;
    v7 = v5[1];
    if (v6 == a2 && v7 == a3)
    {
      return OUTLINED_FUNCTION_2_67();
    }

    else
    {
      return v6 != a3 || v7 != a2;
    }
  }

  return result;
}

uint64_t vmerge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a2 != a3)
  {
    v5 = a3;
    *(*(a1 + 184) + 452) = 1;
    v6 = *(a1 + 200);
    if (*v6 == a3 || v6[1] == a3 || *(*(a1 + 192) + 8868) && (*(a2 + 16) & 2) != 0)
    {
      v7 = a3;
      v5 = a2;
    }

    else
    {
      v7 = a2;
    }

    v8 = 0;
    v9 = *(a1 + 288);
    while (1)
    {
      if (v8 >= v9)
      {
        v11 = 0;
        goto LABEL_15;
      }

      v10 = *(*(a1 + 192) + 9084) + v8;
      if (*(v7 + 8 * v10) & 1) != 0 && (*(v5 + 8 * v10))
      {
        break;
      }

      ++v8;
    }

    v11 = v7 == (*(v5 + 8 * v8 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_15:
    for (i = 0; ; i = v13 + 1)
    {
      v13 = i;
      if (i >= v9)
      {
        break;
      }

      v14 = *(*(a1 + 192) + 9084) + i;
      if (*(v5 + 8 * v14))
      {
        if ((*(v7 + 8 * v14) & 1) == 0 && v11)
        {
          v15 = OUTLINED_FUNCTION_7_56();
          result = vproj_l(v15, v16, v17, v18);
          if (!result)
          {
            return result;
          }

          v19 = OUTLINED_FUNCTION_7_56();
          result = vproj_r(v19, v20, v21, v22);
          if (!result)
          {
            return result;
          }
        }

        vdel_1pt(a1, v13, v5);
        v9 = *(a1 + 288);
      }
    }

    return 1;
  }

  return result;
}

uint64_t vdel_1pt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_56(*(a1 + 184));
  v7 = *(v6 + 200);
  *(v7 + 136) = v8;
  *(v7 + 104) = v9;
  *(v7 + 112) = v9;
  v10 = v8;
  *(v7 + 120) = VLSYNC(v9, v8);
  *(v7 + 128) = VRSYNC(a1, a3, v10);
  v11 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2));
  if (v11)
  {
    v23 = 0;
    v21 = 0;
    v12 = (*(a3 + 8 * (a2 + 3)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v12 || (*v12 & 2) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*v13 & 2) == 0)
      {
        v14 = &vstmtbl[12 * a2];
        LOWORD(v21) = *(vstmtbl[12 * a2 + 1] + 15);
        LOWORD(v23) = v21;
        v15 = v14[2];
        BYTE2(v21) = v14[1][32];
        BYTE2(v23) = BYTE2(v21);
        __dst = (*v15)((v12 + 16));
        v20 = (*v14[2])(v13 + 16);
        if (*(v14 + 86))
        {
          vadd(a1, &v20, &__dst);
          vinitflds(v16, a2, __dst, v20);
          v17 = *(a1 + 192);
          *(*(a1 + 184) + 452) = 1;
          v18 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          *(a3 + 8 * (*(v17 + 9084) + a2)) = v18 | *(a3 + 8 * (*(v17 + 9084) + a2)) & 3;
          *(v18 + 8 * (a2 + 3)) = *(v18 + 8 * (a2 + 3)) & 3 | a3;
          cacheDeletedDeltaObject(a1, v13);
        }
      }
    }

    fdel(a1, 1);
  }

  return 1;
}

uint64_t vscanadv(void *a1, int a2, int a3)
{
  i = 0;
  v4 = a1[24];
  v5 = *(v4 + 8080);
  v6 = *(v4 + 8088);
  if (a3)
  {
    v7 = *(v4 + 8121);
    if (*(v4 + 8121))
    {
      if (*(v4 + 8090))
      {
        i = 0;
      }

      else
      {
        for (i = 0; i < v7; ++i)
        {
          v11 = *(v4 + 9084);
          v12 = *(a1[31] + i);
          if (*(v5 + 8 * (v11 + v12)))
          {
            return OUTLINED_FUNCTION_2_67();
          }

          v13 = *(v5 + 8 * (v11 + v12));
          v14 = a1[35];
          if ((v13 & 2) != 0 && v6 != v12 && !*(v14 + i))
          {
            return OUTLINED_FUNCTION_2_67();
          }

          *(v14 + i) = 0;
          v4 = a1[24];
          v7 = *(v4 + 8121);
        }
      }
    }
  }

  if (!v5)
  {
    return OUTLINED_FUNCTION_2_67();
  }

  v8 = (*(v4 + 8089) ? v5 + 8 * (*(v4 + 9084) + v6) : v5 + 8 * v6 + 24);
  v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v9)
  {
    return OUTLINED_FUNCTION_2_67();
  }

  if ((*v9 & 2) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_2_67();
  }

  v9 = (*&v9[8 * (*(v4 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL);
LABEL_13:
  *(v4 + 8080) = v9;
  *(v4 + 8090) = 0;
  while (i < *(v4 + 8121))
  {
    *(a1[35] + i++) = 0;
    v4 = a1[24];
  }

  return OUTLINED_FUNCTION_4_58();
}

uint64_t vscanadvUptoTokenOrMarker(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_53(a1);
  do
  {
    if (v4)
    {
      i = 0;
      if (v3)
      {
        v10 = *(v8 + 8121);
        if (v10)
        {
          if (*(v8 + 8090))
          {
            i = 0;
          }

          else
          {
            for (i = 0; i < v10; ++i)
            {
              v12 = *(v8 + 9084);
              v13 = *(v1[31] + i);
              if (*&v4[8 * v12 + 8 * v13])
              {
                return OUTLINED_FUNCTION_2_67();
              }

              v14 = *&v4[8 * v12 + 8 * v13];
              v15 = v1[35];
              if ((v14 & 2) != 0 && v5 != v13 && !*(v15 + i))
              {
                return OUTLINED_FUNCTION_2_67();
              }

              *(v15 + i) = 0;
              v8 = v1[24];
              v10 = *(v8 + v7);
            }
          }
        }
      }

      v11 = v6;
      if (*(v8 + 8089))
      {
        v11 = *(v8 + 9084) + v5;
      }

      v4 = (*&v4[8 * v11] & 0xFFFFFFFFFFFFFFFCLL);
      if (v4)
      {
        goto LABEL_10;
      }
    }

    return OUTLINED_FUNCTION_2_67();
LABEL_10:
    if ((*v4 & 2) == 0)
    {
      break;
    }

    *(v8 + 8080) = v4;
    *(v8 + 8090) = 0;
    while (i < *(v8 + v7))
    {
      *(v1[35] + i++) = 0;
      v8 = v1[24];
    }
  }

  while (v4 != v2);
  return OUTLINED_FUNCTION_4_58();
}

uint64_t vscanadvUptoToken(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_53(a1);
  while (1)
  {
    if (!v3)
    {
      return OUTLINED_FUNCTION_2_67();
    }

    i = 0;
    if (v2)
    {
      v9 = *(v7 + 8121);
      if (v9)
      {
        if (*(v7 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v9; ++i)
          {
            v11 = *(v7 + 9084);
            v12 = *(v1[31] + i);
            if (*&v3[8 * v11 + 8 * v12])
            {
              return OUTLINED_FUNCTION_2_67();
            }

            v13 = *&v3[8 * v11 + 8 * v12];
            v14 = v1[35];
            if ((v13 & 2) != 0 && v4 != v12 && !*(v14 + i))
            {
              return OUTLINED_FUNCTION_2_67();
            }

            *(v14 + i) = 0;
            v7 = v1[24];
            v9 = *(v7 + v6);
          }
        }
      }
    }

    v10 = v5;
    if (*(v7 + 8089))
    {
      v10 = *(v7 + 9084) + v4;
    }

    v3 = (*&v3[8 * v10] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v3)
    {
      return OUTLINED_FUNCTION_2_67();
    }

    if ((*v3 & 2) == 0)
    {
      break;
    }

    *(v7 + 8080) = v3;
    *(v7 + 8090) = 0;
    while (i < *(v7 + v6))
    {
      *(v1[35] + i++) = 0;
      v7 = v1[24];
    }
  }

  return OUTLINED_FUNCTION_4_58();
}

uint64_t vscanadvOverToken(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_53(a1);
  while (v3)
  {
    i = 0;
    if (v2)
    {
      v9 = *(v7 + 8121);
      if (v9)
      {
        if (*(v7 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v9; ++i)
          {
            v11 = *(v7 + 9084);
            v12 = *(v1[31] + i);
            if (*&v3[8 * v11 + 8 * v12])
            {
              return OUTLINED_FUNCTION_2_67();
            }

            v13 = *&v3[8 * v11 + 8 * v12];
            v14 = v1[35];
            if ((v13 & 2) != 0 && v4 != v12 && !*(v14 + i))
            {
              return OUTLINED_FUNCTION_2_67();
            }

            *(v14 + i) = 0;
            v7 = v1[24];
            v9 = *(v7 + v6);
          }
        }
      }
    }

    v10 = v5;
    if (*(v7 + 8089))
    {
      v10 = *(v7 + 9084) + v4;
    }

    v3 = (*&v3[8 * v10] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v3)
    {
      break;
    }

    *(v7 + 8080) = v3;
    *(v7 + 8090) = 0;
    while (i < *(v7 + 8121))
    {
      *(v1[35] + i++) = 0;
      v7 = v1[24];
    }

    if ((*v3 & 2) == 0)
    {
      *(v7 + 8080) = *&v3[8 * (*(v7 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL;
      return OUTLINED_FUNCTION_4_58();
    }
  }

  return OUTLINED_FUNCTION_2_67();
}

_BYTE *vmovel(_BYTE *a1, int a2)
{
  do
  {
    v2 = a1;
    a1 = (*&a1[8 * a2 + 24] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a1 && (*a1 & 2) != 0);
  return v2;
}

_BYTE *vmover(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *(*(a1 + 192) + 9084) + a3;
  do
  {
    result = a2;
    a2 = (*&a2[8 * v3] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a2 && (*a2 & 2) != 0);
  return result;
}

uint64_t vmark(uint64_t *a1, unsigned int a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a3;
  v11 = a1[25];
  *(v11 + 96) = -1;
  *(v11 + 88) = &v16;
  *(v11 + 98) = 0;
  v12 = &vstmtbl[12 * a2];
LABEL_2:
  v13 = *(v11 + 8);
  while (a4 != a5 && a4 != v13)
  {
    a4 = *(a4 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a4 || (*a4 & 2) == 0)
    {
      (*&v12[3][8 * v16])(a4 + 16, a6);
      a4 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = a1[25];
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_8_56(a1[23]);
  return 1;
}

uint64_t vsplit_time(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v28 = 0;
  v29 = 0;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = (*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v11 = vins_sync(a1, a2, a3, v8);
    v12 = v5;
    v5 = v11;
    if (v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = (*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (v10 && (*v10 & 2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v10;
  }

  v11 = vins_sync(a1, a2, v10, v5);
  v12 = v11;
  if (!v11)
  {
    return 0;
  }

LABEL_10:
  v27 = 0;
  v25 = 0;
  v26 = 0;
  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = &vstmtbl[12 * a2];
  v14 = *(v13[1] + 15);
  if (v14 == 65532)
  {
    v19 = *(*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_55();
    v27 = v20;
    v17 = (v9 + 16);
    v18 = &v27;
  }

  else
  {
    if (v14 != 65533)
    {
      goto LABEL_16;
    }

    v15 = *(*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_55();
    v17 = (v9 + 16);
    v18 = &v29;
  }

  vinitflds(v16, a2, v17, v18);
LABEL_16:
  if (v4 >= 0)
  {
    v21 = v4;
  }

  else
  {
    v21 = -v4;
  }

  v28 = v21;
  v22 = *(vstmtbl[12 * a2 + 1] + 15);
  if (v22 == 65532)
  {
    LOWORD(v26) = -4;
    v27 = v21;
    v23 = &v27;
  }

  else
  {
    if (v22 != 65533)
    {
      goto LABEL_24;
    }

    LOWORD(v26) = -3;
    v23 = &v28;
  }

  v25 = v23;
  BYTE2(v26) = 0;
LABEL_24:
  if (vins_tok(a1, a2, v12, v5, &v25))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t vins_sync(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v8 = alloc_sync(a1);
  if (v8)
  {
    OUTLINED_FUNCTION_5_58();
    *(v8 + 8 * v9) |= 1uLL;
    if (*(*(*(a1 + 192) + 9072) + a2))
    {
      *(v8 + 8) |= 2uLL;
    }

    OUTLINED_FUNCTION_8_56(*(a1 + 184));
    if (a3 && (v10 = *a3, (*a3 & 2) != 0))
    {
      OUTLINED_FUNCTION_5_58();
      *(a3 + 8 * v11) = *(a3 + 8 * v11) & 3 | v8;
      v12 = a3;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      *(a3 + 8) = v8;
    }

    *(v8 + 8 * (a2 + 3)) = *(v8 + 8 * (a2 + 3)) & 3 | a3;
    if (a4 && (*a4 & 2) != 0)
    {
      *(a4 + 8 * (a2 + 3)) = *(a4 + 8 * (a2 + 3)) & 3 | v8;
      v13 = a4;
    }

    else
    {
      v13 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      *a4 = v8;
    }

    OUTLINED_FUNCTION_5_58();
    *(v8 + 8 * v14) = *(v8 + 8 * v14) & 3 | a4;
    v15 = *(a1 + 192);
    if (*(v15 + 8868))
    {
      v16 = *(v15 + 9084) - 2;
      v17 = *(v12 + 8 * v16);
      v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      if (v13 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
        if (*(*(v15 + 9072) + a2))
        {
LABEL_15:
          *(v8 + 16) |= 2uLL;
          if (*(*(a1 + 192) + 8864) && (*(v8 + 8) & 1) == 0 && !vchkseqbad(a1, v8))
          {
            return 0;
          }
        }

        else
        {
          while (v18 != v13)
          {
            if ((*(v18 + 8) & 3) == 0)
            {
              goto LABEL_15;
            }

            v18 = *(v18 + 8 * v16) & 0xFFFFFFFFFFFFFFFCLL;
          }

          while (1)
          {
            v20 = v17 & 0xFFFFFFFFFFFFFFFCLL;
            if (v13 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
            {
              break;
            }

            *(v20 + 16) |= 2uLL;
            v21 = *(a1 + 192);
            if (*(v21 + 8864) && (*(v20 + 8) & 1) == 0)
            {
              if (!vchkseqbad(a1, v20))
              {
                return 0;
              }

              v21 = *(a1 + 192);
            }

            v17 = *(v20 + 8 * *(v21 + 9084) - 16);
          }
        }
      }

      INSSPINER(a1, v8, v12);
      v15 = *(a1 + 192);
    }

    *(v15 + 9080) = 0;
  }

  return v8;
}

void *vinitflds(int a1, unsigned int a2, void *__dst, unsigned __int8 *a4)
{
  v6 = &vstmtbl[12 * a2];
  memmove(__dst, v6[5], *(v6 + 17));
  result = (*v6[3])(__dst, a4);
  v8 = v6[4];
  if (v8)
  {
    v9 = *(v6[1] + 15);
    if (v9 == 0xFFFF)
    {
      v10 = *a4;
    }

    else
    {
      if (v9 != 65534)
      {
        return result;
      }

      v10 = *a4;
    }

    v11 = *(v6 + 19);
    v12 = &v8[*(v6 + 18) * v10];

    return memmove(__dst, v12, v11);
  }

  return result;
}

uint64_t vchkseqbad(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 3) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (*(a1 + 288) != v2)
    {
      v5 = *(a1 + 192);
      if (*(a2 + 8 * (v2 + *(v5 + 9084))))
      {
        ++v3;
        if (*(*(v5 + 9072) + v2))
        {
          ++v4;
        }
      }

      ++v2;
    }

    if (v3 < 2 || v4 >= v3)
    {
      return 1;
    }
  }

  vseqbad();
  return 0;
}

uint64_t vnsqflags(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(*(result + 200) + 160);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      break;
    }

    v7 = *(a2 + 8 * (*(*(result + 192) + 9084) + v5)) & 1;
    v2 += v7;
    if (v7)
    {
      v3 = 1;
    }
  }

  v8 = *(result + 288);
LABEL_6:
  v9 = v8;
  while (1)
  {
    v8 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = *(result + 192);
    v11 = *(a2 - 8 + 8 * *(v10 + 9084) + 8 * v9--);
    if (v11)
    {
      if (!*(*(v10 + 9072) + v8))
      {
        ++v2;
        v3 = 0;
      }

      if (v2 >= 2 && v3 == 0)
      {
        v3 = 0;
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  if (v2 == 1)
  {
    v13 = *(a2 + 8) | 1;
    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
LABEL_20:
  *(a2 + 8) = v13 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v3 != 0));
  return result;
}

uint64_t visnonseq(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 288);
  while (1)
  {
    if (v7 >= v8)
    {
      return 0;
    }

    if (a2 != v7)
    {
      v10 = v7 + *(*(a1 + 192) + 9084);
      if ((*(a3 + 8 * v10) & 1) != 0 && (*(a4 + 8 * v10) & 1) != 0 && VRSYNC(a1, a3, v7) != a4)
      {
        break;
      }
    }

    ++v7;
  }

  return 1;
}

uint64_t fdeldel(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  *(*(result + 184) + 452) = 1;
  if (a2)
  {
    v6 = *a2;
    if ((*a2 & 2) != 0)
    {
      v6 = a2[*(*(result + 200) + 136) + 3];
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (!v4)
    {
      return result;
    }

    if ((*v4 & 2) == 0)
    {
      v8 = *(v4 + 8);
LABEL_35:
      result = cacheDeletedDeltaObject(v5, v4);
      goto LABEL_36;
    }

    v9 = *(*(v5 + 192) + 9084) + *(*(v5 + 200) + 136);
    v8 = *(v4 + 8 * v9);
    v10 = *(v4 + 8);
    *(v4 + 8 * v9) = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = v4 + 8 * *(*(v5 + 200) + 136);
    *(v11 + 24) &= 3uLL;
    LODWORD(v11) = *(*(v5 + 192) + 9084) + *(*(v5 + 200) + 136);
    *(v4 + 8 * v11) &= 3uLL;
    if (v10)
    {
      if (*(*(v5 + 192) + 8868))
      {
        DELSPINE(v5, v4);
      }

      goto LABEL_35;
    }

    result = vnsqflags(v5, v4);
    v12 = *(v5 + 192);
    if (!*(v12 + 8868))
    {
      goto LABEL_36;
    }

    v13 = *(v5 + 200);
    v14 = v4;
    do
    {
      v14 = *(v14 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v14 + 16) & 2) != 0);
    v15 = *(v12 + 9084);
    v16 = v4;
    do
    {
      v16 = *(v16 + 8 * v15 - 16) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v16 + 16) & 2) != 0);
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    v20 = *(v5 + 288);
    v21 = v16 + 8 * v15 - 8;
    v22 = v14 + 8 * v15 - 8;
LABEL_16:
    v23 = v17;
    for (i = v20; i > *(v13 + 136); --i)
    {
      if ((*(v4 + 8 * v15 - 8 + 8 * i) & 1) == 0)
      {
        v20 = i - 1;
        LODWORD(v17) = 1;
        if (!v23)
        {
          LODWORD(v17) = 0;
          if (*(v22 + 8 * i))
          {
            v17 = *(v21 + 8 * i) & 1;
          }
        }

        goto LABEL_16;
      }

      if (*(v22 + 8 * i))
      {
        if (v19 || (*(v21 + 8 * i) & 1) != 0)
        {
          goto LABEL_36;
        }

        v19 = 0;
        ++v18;
      }

      else
      {
        if (v19)
        {
          goto LABEL_21;
        }

        if (*(v21 + 8 * i))
        {
          if (v18)
          {
            goto LABEL_36;
          }

LABEL_21:
          v19 = 1;
          continue;
        }

        v19 = 0;
      }
    }

    v26 = 8 * v15;
    v27 = *(v13 + 136);
    if (*(v13 + 136))
    {
      do
      {
        if (*(v4 + v26))
        {
          if (*(v14 + v26))
          {
            if (v19 || (*(v16 + v26) & 1) != 0)
            {
              goto LABEL_36;
            }

            v19 = 0;
            ++v18;
          }

          else if (v19)
          {
            v19 = 1;
          }

          else
          {
            if (v18)
            {
              goto LABEL_36;
            }

            v19 = *(v16 + v26) & 1;
          }
        }

        else if (v23)
        {
          v23 = 1;
        }

        else if (*(v14 + v26))
        {
          v23 = *(v16 + v26) & 1;
        }

        else
        {
          v23 = 0;
        }

        v26 += 8;
        --v27;
      }

      while (v27);
    }

    if (!v19 || !v18)
    {
      if (v23)
      {
        *(v13 + 16) = 0;
        *(v13 + 24) = v4;
        *(v13 + 32) = v4;
        v28 = (*(v4 + 8) & 2) == 0 && (*(v4 + 8) & 1) == 0;
        *(v13 + 20) = v28;
        if (v19 | v18)
        {
          if (v19)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if (v19)
          {
            v30 = v14;
          }

          else
          {
            v30 = v16;
          }

          *(v13 + 48) = v30;
        }

        else
        {
          v29 = 2;
        }

        *(v13 + 40) = v29;
        goto LABEL_82;
      }

      if (v19 | v18)
      {
        v31 = v19 == 0;
        if (v19)
        {
          v32 = -1;
        }

        else
        {
          v32 = 1;
        }

        if (v19)
        {
          v33 = v14;
        }

        else
        {
          v33 = v16;
        }

        *(v13 + 16) = v32;
        v34 = v13 + 16;
        *(v34 + 8) = v33;
        if (v31)
        {
          v35 = -1;
        }

        else
        {
          v35 = 1;
        }

        *(v34 + 32) = v4;
        *(v34 + 24) = v35;
        result = seqscan(v5, v34);
        v13 = *(v5 + 200);
        v29 = *(v13 + 40);
LABEL_82:
        switch(v29)
        {
          case 0xFFu:
LABEL_85:
            result = seqscan(v5, (v13 + 40));
            v13 = *(v5 + 200);
            break;
          case 2u:
            if (*(v13 + 24) == v14 && *(v13 + 16) == 255)
            {
              *(v13 + 64) = -1;
              v44 = *(v13 + 32);
              *(v13 + 72) = v14;
              *(v13 + 80) = v44;
              *(v13 + 68) = *(v13 + 20);
            }

            else
            {
              *(v13 + 64) = -1;
              v36 = v13 + 64;
              *(v36 + 8) = v14;
              seqscan(v5, v36);
              v13 = *(v5 + 200);
            }

            *(v13 + 40) = 1;
            v37 = v13 + 40;
            *(v37 + 8) = v16;
            result = seqscan(v5, v37);
            v13 = *(v5 + 200);
            *(v13 + 48) = *(v13 + 80);
            *(v13 + 44) |= *(v13 + 68);
            break;
          case 1u:
            goto LABEL_85;
        }

        v38 = v13 + 24 * (*(v13 + 20) != 0);
        v41 = *(v38 + 16);
        v39 = v38 + 16;
        v40 = v41;
        for (j = *(v39 + 8); ; j = *v43 & 0xFFFFFFFFFFFFFFFCLL)
        {
          *(j + 16) |= 2uLL;
          if (*(*(v5 + 192) + 8864))
          {
            if ((*(j + 8) & 1) == 0)
            {
              result = vchkseqbad(v5, j);
              if (!result)
              {
                break;
              }
            }
          }

          if (j == *(v39 + 16))
          {
            break;
          }

          if (v40 < 0)
          {
            v43 = (j + 8);
          }

          else
          {
            v43 = (j + 8 * *(*(v5 + 192) + 9084) - 16);
          }
        }
      }
    }

LABEL_36:
    v25 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = v4 == a3;
    v4 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  }

  while (!v31);
  if (v7 && (*v7 & 2) != 0)
  {
    v45 = *(*(v5 + 192) + 9084) + *(*(v5 + 200) + 136);
    *(v7 + 8 * v45) = *(v7 + 8 * v45) & 3 | v25;
    if (v25 && (*v25 & 2) != 0)
    {
LABEL_109:
      v46 = v25 + 8 * *(*(v5 + 200) + 136);
      *(v46 + 24) = *(v46 + 24) & 3 | v7;
    }

    else
    {
      *v25 = v7;
    }
  }

  else if (v25 && (*v25 & 2) != 0)
  {
    *(v7 + 8) = v25;
    goto LABEL_109;
  }

  return result;
}

uint64_t fdel(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  if (a2)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
  }

  else
  {
    v5 = *(v2 + 136);
    v3 = (*(*(v2 + 120) + 8 * (*(*(a1 + 192) + 9084) + v5)) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = *(*(v2 + 128) + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  }

  return fdeldel(a1, v3, v4);
}

uint64_t vdelinit(uint64_t a1)
{
  *(*(a1 + 192) + 9072) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  result = 0;
  v4 = *(a1 + 192);
  *(*(a1 + 200) + 160) = v2;
  if (*(v4 + 9072) && v2)
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      *(*(*(a1 + 192) + 9072) + i) = 0;
    }

    **(*(a1 + 200) + 160) = -1;
    return 1;
  }

  return result;
}

void vdelCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 160);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 160) = 0;
  }

  v3 = *(*(a1 + 192) + 9072);
  if (v3)
  {
    free(v3);
    *(*(a1 + 192) + 9072) = 0;
  }
}

uint64_t setnonseqIndex(uint64_t result, int a2)
{
  v2 = 0;
  v3 = *(*(result + 200) + 160);
  while (1)
  {
    v4 = *(v3 + v2);
    if (v4 == -1)
    {
      break;
    }

    ++v2;
    if (v4 == a2)
    {
      return result;
    }
  }

  *(v3 + v2) = a2;
  *(*(*(result + 200) + 160) + v2 + 1) = -1;
  return result;
}

uint64_t mapsyncs(uint64_t a1, uint64_t a2)
{
  result = absoluteSyncNum(a1, a2);
  v5 = 0;
  v6 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v6 - 24) |= 2uLL;
  v7 = *(a1 + 200);
  v8 = *(v7 + 200);
  *(v7 + 200) = v8 + 1;
  *(*(v7 + 192) + 2 * result) = v8;
  while (1)
  {
    v9 = v5;
    if (v5 >= *(a1 + 288))
    {
      break;
    }

    v10 = *(*(a1 + 192) + 9084);
    if (*(a2 + 8 * (v10 + v5)))
    {
      result = VRSYNC(a1, a2, v5);
      if (result)
      {
        if ((*(result + 8 * v10 - 24) & 2) == 0)
        {
          result = mapsyncs(a1, result);
        }
      }
    }

    v5 = v9 + 1;
  }

  return result;
}

uint64_t vredoctxt(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 200);
  v5[86] = 0;
  v5[56] = a2;
  v5[57] = 0;
  while (*(a1 + 288) > v4)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v4))
    {
      v7 = *(a1 + 192);
      if (*(*(a1 + 200) + 224))
      {
        v8 = i[*(v7 + 9084) - 3];
        if ((v8 & 2) != 0 || (!v8 ? (v9 = *i > 3uLL) : (v9 = 1), !v9 ? (v10 = ((*i | v8) & 1) == 0, *i) : (v10 = 0), !v10))
        {
          v11 = checkInterrupt(a1);
          v12 = *(a1 + 200);
          if (v11)
          {
            *(v12 + 224) = 0;
          }

          else if (*(v12 + 224))
          {
            *(v12 + 228) = 1;
            goto LABEL_20;
          }

          v7 = *(a1 + 192);
        }
      }

      OUTLINED_FUNCTION_6_57(v7);
      *(v14 - 24) = v13 & 0xFFFFFFFFFFFFFFFDLL;
      *i &= ~1uLL;
      OUTLINED_FUNCTION_6_57(*(a1 + 192));
      *(v16 - 24) = v15 & 0xFFFFFFFFFFFFFFFELL;
      *i &= 3uLL;
      OUTLINED_FUNCTION_6_57(*(a1 + 192));
      *(v18 - 24) = v17 & 3;
    }

    ++v4;
  }

LABEL_20:
  vclrctxt(a1);
  v23 = *(a1 + 200);
  if (a2 && !*(v23 + 228))
  {
    vf_printf(a1, *(*(a1 + 216) + 4), 1, "The delta is correct.\n", v19, v20, v21, v22, v25);
    v23 = *(a1 + 200);
  }

  *(v23 + 344) = 1;
  return 1;
}

uint64_t vclrctxt(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 288);
  while (v3 > v2)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v2))
    {
      for (j = 0; v3 != j; ++j)
      {
        if ((i[j + *(*(a1 + 192) + 9084)] & 1) == 0)
        {
          i[j + 3] &= 3uLL;
          v6 = j + *(*(a1 + 192) + 9084);
          i[v6] &= 3uLL;
          *(*(a1 + 200) + 228) = 1;
        }
      }
    }

    ++v2;
  }

  return 1;
}

uint64_t seqscan(uint64_t result, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 1);
  *(a2 + 2) = v3;
  if (v2 == 1)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = (v3 + 8 * *(*(result + 192) + 9084) - 16);
  }

  v5 = 0;
  v6 = 0;
  v7 = *v4 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(result + 288);
  while (v8 != v5)
  {
    if (*(v7 + 8 * (v5 + *(*(result + 192) + 9084))))
    {
      v13[v6++] = v5;
    }

    ++v5;
  }

LABEL_9:
  v9 = 0;
  do
  {
    if (v6 <= v9)
    {
      v11 = (v3 + 8);
      if ((~*(v3 + 8) & 3) != 0)
      {
        *(a2 + 1) = 1;
      }

      *(a2 + 2) = v3;
      if (v2 == 1)
      {
        v11 = (v3 + 8 * *(*(result + 192) + 9084) - 16);
      }

      v3 = *v11 & 0xFFFFFFFFFFFFFFFCLL;
      goto LABEL_9;
    }

    v10 = *(v3 + 8 * (*(*(result + 192) + 9084) + v13[v9++]));
  }

  while ((v10 & 1) == 0);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_53(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(v1 + 8080);
  v3 = *(v1 + 8088) + 3;
  return result;
}

uint64_t varloc(uint64_t a1, __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = a3 | (a2 << 8);
  if ((a2 & 0x80) != 0)
  {
    v7 = *(a1 + 192) + 8 * ((a3 | (a2 << 8)) & 0x3FFF) + 9288;
    return *v7;
  }

  v5 = *(a1 + 192);
  if (!a4 || *(v5 + 8104) == a4)
  {
    result = *(*(v5 + 8112) + 8);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = vonstack(a1, a4);
  if (result)
  {
LABEL_7:
    v7 = *(result + 16) + 8 * (v4 & 0x3FFF);
    return *v7;
  }

  return result;
}

uint64_t vrd_nvar()
{
  OUTLINED_FUNCTION_14_51();
  v2 = 0;
  v3 = 0;
  v28 = *MEMORY[0x277D85DE8];
LABEL_2:
  while ((v3 & 1) == 0)
  {
    v4 = 1;
    v5 = v27;
    while (1)
    {
      v6 = v4;
      v7 = OUTLINED_FUNCTION_8_57();
      v9 = vf_getc(v7, v8);
      if (v9 == 10)
      {
        break;
      }

      if ((v9 + 1) < 2)
      {
        *v5 = 0;
        v10 = 1;
        vf_puts(v0, *(*(v0 + 216) + 5), *(v0 + 184) + 32, 1);
        *(*(v0 + 184) + 32) = 0;
        *(*(v0 + 184) + 436) = 0;
        OUTLINED_FUNCTION_8_57();
        v11 = var_rderr();
        v2 = 0;
        v3 = 0;
        if (!v11)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      }

      if (v9 == 32)
      {
        v4 = 1;
        if ((v6 & 1) == 0)
        {
          v2 = 32;
          goto LABEL_13;
        }
      }

      else
      {
        v4 = 0;
        *v5++ = v9;
      }
    }

    v2 = 10;
LABEL_13:
    *v5 = 0;
    v12 = *(v1 + 8);
    if (v12 == 65532)
    {
      if (chk_itok(v27))
      {
        **v1 = atoi(v27);
        v3 = 1;
        continue;
      }

      v13 = OUTLINED_FUNCTION_8_57();
      v20 = "%s is not an integer";
    }

    else
    {
      v3 = 1;
      if (v12 != 65533)
      {
        continue;
      }

      if (chk_itok(v27))
      {
        **v1 = atol(v27);
        v3 = 1;
        continue;
      }

      v13 = OUTLINED_FUNCTION_8_57();
      v20 = "%s is not an long integer (longint)";
    }

    readErrorReport(v13, v14, v15, v20, v16, v17, v18, v19, v27);
    OUTLINED_FUNCTION_8_57();
    v21 = var_rderr();
    v3 = 1;
    if (v21)
    {
      v10 = 1;
      goto LABEL_27;
    }
  }

  if (v2 != 10)
  {
    v22 = OUTLINED_FUNCTION_8_57();
    if (vf_getc(v22, v23) != 10)
    {
      v24 = OUTLINED_FUNCTION_8_57();
      vf_ungetc(v24);
    }
  }

  v10 = 0;
LABEL_27:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t var_rderr()
{
  OUTLINED_FUNCTION_14_51();
  if (OUTLINED_FUNCTION_26_36(v1, v2, "cmdwin") || (v3 = 1, v4 = OUTLINED_FUNCTION_8_57(), OUTLINED_FUNCTION_26_36(v4, v5, v6)))
  {
    v7 = OUTLINED_FUNCTION_8_57();
    v9 = logicalFileInputBuffer(v7, v8);
    v10 = dynaBufMoveRel(v9, 0);
    v11 = dynaBufLength(v9);
    dynaBufMoveAbs(v9, v11 - 1);
    dynaBufDeleteChars(v9, 1uLL);
    dynaBufMoveAbs(v9, v10);
    LOBYTE(v9) = dynaBufContents(v9);
    v22 = v9 + v10 - strlen(v0);
    v12 = OUTLINED_FUNCTION_8_57();
    vf_printf(v12, v13, 1, v14, v15, v16, v17, v18, v22);
    v19 = OUTLINED_FUNCTION_8_57();
    vf_clrbuf(v19, v20);
    return 0;
  }

  return v3;
}

uint64_t chk_itok(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 43 && v1 != 45 && (v1 - 48) > 9)
  {
    return 0;
  }

  v2 = (a1 + 1);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (!v4)
    {
      break;
    }

    if ((v3 - 48) >= 0xA)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t readErrorReport(uint64_t a1, unsigned __int8 a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a1 + 216);
  v12 = 4;
  if (*(v11 + 1) != a2)
  {
    v12 = 5;
  }

  v13 = *(v11 + v12);
  vf_printf(a1, v13, 0, "Error: %s: ", a5, a6, a7, a8, "DELTIO");
  return vf_printf(a1, v13, 1, a4, v14, v15, v16, v17, &a9);
}

size_t lithex(size_t result, char *a2, int a3)
{
  v4 = result;
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3 - 8;
  v6 = a2;
  while (1)
  {
    v7 = *v4;
    if (!*v4 || v6 - a2 >= v5)
    {
      break;
    }

    if ((v7 - 127) >= 0xA1u)
    {
      *v6++ = v7;
    }

    else
    {
      if ((v7 - 7) > 6)
      {
        OUTLINED_FUNCTION_25_36();
        __sprintf_chk(v13, v14, v15, "'\\x%2x'");
      }

      else
      {
        v9 = (&off_279DA69E0)[(v7 - 7)];
        OUTLINED_FUNCTION_25_36();
        __sprintf_chk(v10, v11, v12, "'\\%s'");
      }

      strcpy(v6, __src);
      result = strlen(__src);
      v6 += result;
    }

    ++v4;
  }

  *v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t vrd_tvar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  v64 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0.0;
  v8 = *(a3 + 8);
  v9 = &vstmtbl[12 * *(a3 + 8)];
  v10 = v8;
  while (1)
  {
    v11 = v5;
    if (v7)
    {
      vinitflds(a1, v8, *a3, v5);
      if (v6 != 10)
      {
        v52 = OUTLINED_FUNCTION_6_58();
        if (vf_getc(v52, v53) != 10)
        {
          v54 = OUTLINED_FUNCTION_6_58();
          vf_ungetc(v54);
        }
      }

      result = 0;
      goto LABEL_38;
    }

    v12 = gettok_0(a1, v8, a2, __s1);
    if (!v12)
    {
      break;
    }

    v6 = v12;
    if (checkInterrupt(a1))
    {
      break;
    }

    v7 = 0;
    v5 = v11;
    if (v6 != 10)
    {
      v13 = STMTYP(v10);
      v7 = 1;
      v5 = v11;
      switch(v13)
      {
        case -5:
          v19 = chk_ftok(__s1);
          if (v19)
          {
            v58 = atof(__s1);
            v7 = 1;
            v5 = &v58;
          }

          else
          {
            v49 = OUTLINED_FUNCTION_10_54(v19, v20, v21, v22, v23, v24);
            v7 = 0;
            v5 = &v58;
            if (v49)
            {
              goto LABEL_33;
            }
          }

          continue;
        case -4:
          v42 = chk_itok(__s1);
          if (v42)
          {
            v59 = atoi(__s1);
            v7 = 1;
            v5 = &v59;
          }

          else
          {
            v50 = OUTLINED_FUNCTION_10_54(v42, v43, v44, v45, v46, v47);
            v7 = 0;
            v5 = &v59;
            if (v50)
            {
              goto LABEL_33;
            }
          }

          break;
        case -3:
          v30 = chk_itok(__s1);
          if (v30)
          {
            v60 = atol(__s1);
            v7 = 1;
            v5 = &v60;
          }

          else
          {
            v48 = OUTLINED_FUNCTION_10_54(v30, v31, v32, v33, v34, v35);
            v7 = 0;
            v5 = &v60;
            if (v48)
            {
              goto LABEL_33;
            }
          }

          continue;
        case -2:
          v57 = v10;
          v36 = 0;
          v37 = v9;
          v38 = v9[1];
          v39 = *(v38 + 14);
          v40 = v39 & ~(v39 >> 31);
          while (1)
          {
            v61 = v36;
            if (v40 == v36)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v38 + 2) + 8 * v36++));
            if (!v13)
            {
              LODWORD(v40) = v36 - 1;
              break;
            }
          }

          v7 = 1;
          v5 = &v61;
          v29 = v40 == v39;
          v9 = v37;
          v10 = v57;
LABEL_20:
          if (v29)
          {
            v41 = OUTLINED_FUNCTION_10_54(v13, v14, v15, v16, v17, v18);
            v7 = 0;
            v5 = v11;
            if (v41)
            {
              goto LABEL_33;
            }
          }

          continue;
        case -1:
          v25 = 0;
          v26 = v9[1];
          v27 = *(v26 + 14);
          do
          {
            v62 = v25;
            v28 = v25;
            if (v25 >= v27)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v26 + 2) + 8 * v25));
            v25 = v28 + 1;
          }

          while (v13);
          v7 = 1;
          v5 = &v62;
          v29 = v28 == v27;
          goto LABEL_20;
        default:
          continue;
      }
    }
  }

  OUTLINED_FUNCTION_24_36();
LABEL_33:
  result = 1;
LABEL_38:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gettok_0(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = &vstmtbl[12 * a2];
  v5 = *(v4 + 20);
  v6 = a2;
  if (STMTYP(a2) == -4 || STMTYP(v6) == -3)
  {
    v7 = 0;
  }

  else
  {
    v8 = STMTYP(v6) != -5 && v5 == 1;
    v7 = v8;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_12_51();
    v13 = vf_getc(v11, v12);
    v14 = v13;
    if (v13 == 92)
    {
      v15 = OUTLINED_FUNCTION_12_51();
      v17 = vf_getc(v15, v16);
      v18 = v17;
      if ((v17 & 0xFFFFFFF8) == 0x30)
      {
        v19 = 0;
        while ((v18 & 0xFFFFFFF8) == 0x30)
        {
          v19 = v18 + 8 * v19 - 48;
          v20 = OUTLINED_FUNCTION_12_51();
          v18 = vf_getc(v20, v21);
        }

        v26 = OUTLINED_FUNCTION_12_51();
        vf_ungetc(v26);
        LOBYTE(v18) = v19;
      }

      else
      {
        if ((v17 & 0xFFFFFFDF) == 0x58)
        {
          for (LOBYTE(v18) = 0; ; LOBYTE(v18) = v24 + 16 * v18 + v25)
          {
            v22 = OUTLINED_FUNCTION_12_51();
            v24 = vf_getc(v22, v23);
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 97) >= 6)
              {
                if ((v24 - 65) > 5)
                {
                  v27 = OUTLINED_FUNCTION_12_51();
                  vf_ungetc(v27);
                  goto LABEL_27;
                }

                v25 = -55;
              }

              else
              {
                v25 = -87;
              }
            }

            else
            {
              v25 = -48;
            }
          }
        }

        switch(v17)
        {
          case 'n':
            LOBYTE(v18) = 10;
            break;
          case 'o':
          case 'p':
          case 'q':
          case 's':
          case 'u':
            break;
          case 'r':
            LOBYTE(v18) = 13;
            break;
          case 't':
            LOBYTE(v18) = 9;
            break;
          case 'v':
            LOBYTE(v18) = 11;
            break;
          default:
            switch(v17)
            {
              case 'a':
                LOBYTE(v18) = 7;
                break;
              case 'f':
                LOBYTE(v18) = 12;
                break;
              case 'b':
                LOBYTE(v18) = 8;
                break;
            }

            break;
        }
      }

LABEL_27:
      v14 = v18;
    }

    if (v13 != 92 && v14 == 10)
    {
      break;
    }

    if (v13 != 92 && (v14 + 1) <= 1)
    {
      LOBYTE(v14) = 0;
LABEL_71:
      *a4 = 0;
      return v14;
    }

    if (v13 == 92)
    {
      goto LABEL_48;
    }

    if (v14 == *(v4 + 84))
    {
      v8 = v9 == 0;
      v9 = 1;
      if (!v8)
      {
        if (v14 == *(v4 + 85))
        {
          goto LABEL_78;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v14 == *(v4 + 85))
      {
        if (v9)
        {
LABEL_78:
          *a4 = 0;
          LOBYTE(v14) = *(a4 - 1);
          return v14;
        }

LABEL_73:
        LOBYTE(v14) = 0;
        return v14;
      }

LABEL_48:
      if (v13 == 92 || (v14 == 32 ? (v30 = v5 == 1) : (v30 = 1), v30 || v9))
      {
        *a4++ = v14;
        v31 = v7 ^ 1;
        if (v9)
        {
          v31 = 1;
        }

        if (v7)
        {
          v9 = 1;
        }

        else
        {
          v10 = 1;
        }

        if ((v31 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v9 = 0;
        v8 = v10 == 0;
        v10 = 0;
        if (!v8)
        {
          *a4 = 0;
          LOBYTE(v14) = 32;
          return v14;
        }
      }
    }
  }

  if (v9)
  {
    if (v5 == 1)
    {
      LOBYTE(v14) = *(v4 + 84);
      *a4 = v14;
      return v14;
    }

    goto LABEL_73;
  }

  *a4 = 0;
  if (v10)
  {
    v32 = OUTLINED_FUNCTION_12_51();
    vf_ungetc(v32);
    LOBYTE(v14) = *(a4 - 1);
  }

  else
  {
    LOBYTE(v14) = 10;
  }

  return v14;
}

uint64_t rdtokverr(uint64_t a1, unsigned __int8 a2, unsigned int a3, size_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  lithex(a4, v15, 75);
  v14 = vstmtbl[12 * a3];
  readErrorReport(a1, a2, v7, "%s is not a token name in stream %s", v8, v9, v10, v11, v15);
  result = var_rderr();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t chk_ftok(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 > 0x2E || ((1 << v1) & 0x680000000000) == 0;
  if (v2 && (v1 - 48) > 9)
  {
    return 0;
  }

  v3 = 0;
  for (i = a1 + 1; ; ++i)
  {
    if (v1 == 46)
    {
      if (v3)
      {
        return 0;
      }

      v1 = *i;
      if (!*i)
      {
        return 0;
      }

      v3 = 1;
    }

    else
    {
      v1 = *i;
    }

    if (v1 != 46)
    {
      break;
    }

LABEL_14:
    ;
  }

  if (v1)
  {
    if ((v1 - 48) >= 0xA)
    {
      return 0;
    }

    goto LABEL_14;
  }

  return 1;
}

uint64_t vrd_delta(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0.0;
  v44 = 0;
  v6 = a3;
  v45 = STMTYP(a3);
  v7 = &vstmtbl[12 * a3];
  v9 = v7[1];
  v8 = v7 + 1;
  BYTE2(v45) = v9[32];
  v10 = *(a1 + 200);
  v11 = *(v10 + 292);
  v12 = *(v10 + 1720) - v11;
  *(v10 + 1720) = v12;
  *(v10 + 1728) -= v11;
  *v12 = 5;
  *(v12 + 8) = *(v10 + 1760);
  *(v10 + 1760) = v12;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_6_58();
    v16 = gettok_0(v13, v14, a2, v15);
    if (v16 == 10)
    {
      result = 0;
      goto LABEL_29;
    }

    v17 = v16;
    if (checkInterrupt(a1))
    {
      break;
    }

    if (!v17)
    {
      OUTLINED_FUNCTION_24_36();
      break;
    }

    switch(STMTYP(v6))
    {
      case 0xFFFBu:
        v44 = &v46;
        if (!chk_ftok(__s1))
        {
          goto LABEL_23;
        }

        v46 = atof(__s1);
        goto LABEL_25;
      case 0xFFFCu:
        v44 = &v47;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v47 = atoi(__s1);
        goto LABEL_25;
      case 0xFFFDu:
        v44 = &v48;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v48 = atol(__s1);
        goto LABEL_25;
      case 0xFFFEu:
        v23 = 0;
        v44 = &v49;
        v24 = *v8;
        v25 = *(*v8 + 14);
        v26 = v25 & ~(v25 >> 31);
        break;
      case 0xFFFFu:
        v18 = 0;
        v44 = &v50;
        v19 = *v8;
        v20 = *(*v8 + 14);
        do
        {
          v50 = v18;
          v21 = v18;
          if (v18 >= v20)
          {
            break;
          }

          v22 = strcmp(__s1, *(*(v19 + 2) + 8 * v18));
          v18 = v21 + 1;
        }

        while (v22);
        if (v21 != v20)
        {
          goto LABEL_25;
        }

LABEL_23:
        v35 = OUTLINED_FUNCTION_17_45();
        readErrorReport(v35, v36, v37, "%s is not a token name", v38, v39, v40, v41, __s1);
        goto LABEL_24;
      default:
        goto LABEL_25;
    }

    while (1)
    {
      v49 = v23;
      if (v26 == v23)
      {
        break;
      }

      if (!strcmp(__s1, *(*(v24 + 2) + 8 * v23++)))
      {
        LODWORD(v26) = v23 - 1;
        break;
      }
    }

    if (v26 == v25)
    {
      v28 = OUTLINED_FUNCTION_17_45();
      readErrorReport(v28, v29, v30, "%s is not a token name", v31, v32, v33, v34, __s1);
      v44 = 0;
LABEL_24:
      OUTLINED_FUNCTION_17_45();
      if (dlt_rderr())
      {
        break;
      }
    }

LABEL_25:
    vpush_var(a1, &v44);
  }

  result = 1;
LABEL_29:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dlt_rderr()
{
  OUTLINED_FUNCTION_14_51();
  if (OUTLINED_FUNCTION_26_36(v2, v3, "cmdwin") || (v4 = 1, v5 = OUTLINED_FUNCTION_8_57(), OUTLINED_FUNCTION_26_36(v5, v6, v7)))
  {
    v8 = OUTLINED_FUNCTION_8_57();
    v10 = logicalFileInputBuffer(v8, v9);
    v11 = dynaBufMoveRel(v10, 0);
    v12 = dynaBufLength(v10);
    dynaBufMoveAbs(v10, v12 - 1);
    dynaBufDeleteChars(v10, 1uLL);
    dynaBufMoveAbs(v10, v11);
    LOBYTE(v10) = dynaBufContents(v10);
    v26 = v10 + v11 - strlen(v1);
    v13 = OUTLINED_FUNCTION_8_57();
    vf_printf(v13, v14, 1, v15, v16, v17, v18, v19, v26);
    v20 = *(v0 + 200);
    v21 = *(v20 + 1744);
    if (v21)
    {
      v22 = *(v20 + 1760);
      *(v20 + 1720) = v22;
      *(v20 + 1728) = *(v20 + 1780) + v22 - *(v21 + 32);
    }

    v23 = OUTLINED_FUNCTION_8_57();
    vf_clrbuf(v23, v24);
    return 0;
  }

  return v4;
}

uint64_t vprt_strm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  while (1)
  {
    OUTLINED_FUNCTION_23_38();
    if (a3 == a4 || a3 == v14)
    {
      break;
    }

    a3 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a5)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a3 || (*a3 & 2) == 0)
    {
      disptok(v13, a3 + 16, a5, a6, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

      __strcat_chk();
      v16 = OUTLINED_FUNCTION_6_58();
      vf_puts(v16, v17, v18, 0);
      a3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v19 = strlen(a7);
  __memset_chk();
  __s1[v19] = 0;
  v20 = OUTLINED_FUNCTION_6_58();
  vf_puts(v20, v21, v22, 0);
  __memset_chk();
  v23 = OUTLINED_FUNCTION_6_58();
  result = vf_puts(v23, v24, v25, 1);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disptok(int a1, int a2, int a3, int a4, char *__s1)
{
  v6 = &vstmtbl[12 * a3];
  v7 = &v6[1][40 * a4];
  switch(*(v7 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_7_57();
      v9(v8);
      v10 = OUTLINED_FUNCTION_3_63();
      v28 = *v11(v10);
      sprintf(__s1, v6, v28);
      break;
    case 0xFFFC:
      v23 = OUTLINED_FUNCTION_7_57();
      v24(v23);
      v25 = OUTLINED_FUNCTION_3_63();
      v20 = *v26(v25);
      goto LABEL_8;
    case 0xFFFD:
      v16 = OUTLINED_FUNCTION_7_57();
      v17(v16);
      v18 = OUTLINED_FUNCTION_3_63();
      v20 = *v19(v18);
LABEL_8:
      sprintf(__s1, v6, v20);
      break;
    case 0xFFFE:
      v12 = *(v7 + 16);
      v21 = OUTLINED_FUNCTION_7_57();
      v15 = *v22(v21);
      goto LABEL_6;
    case 0xFFFF:
      v12 = *(v7 + 16);
      v13 = OUTLINED_FUNCTION_7_57();
      v15 = *v14(v13);
LABEL_6:
      strcpy(__s1, *(v12 + 8 * v15));
      break;
    default:
      break;
  }

  result = strcmp(__s1, "undefined");
  if (!result)
  {
    *__s1 = 2960685;
  }

  return result;
}

uint64_t vsvdelta(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (!*(v2 + 248))
  {
    return 0;
  }

  *(v2 + 478) = a2;
  if (!*(v2 + 400))
  {
    v4 = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 400) = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = 8 * *(a1 + 288);
  while (1)
  {
    v7 = *(a1 + 200);
    if (v6 == v5)
    {
      break;
    }

    *(*(v7 + 400) + v5) = *v7;
    v5 += 8;
  }

  v8 = *(v7 + 478);
  v9 = OUTLINED_FUNCTION_5_59();
  vf_puts(v9, v10, v11, v12);
  v13 = 0;
  v14 = vstmtbl;
  while (1)
  {
    v15 = *(a1 + 200);
    if (v13 >= *(a1 + 288))
    {
      break;
    }

    v77 = *v14;
    v16 = OUTLINED_FUNCTION_2_68(v15);
    __sprintf_chk(v16, v17, v18, "\nset ^_%s = ^left", v77);
    v19 = OUTLINED_FUNCTION_0_75();
    vf_puts(v19, v20, v21, v22);
    v23 = *v14;
    v14 += 12;
    v24 = OUTLINED_FUNCTION_2_68(*(a1 + 200));
    __sprintf_chk(v24, v25, v26, "\ndelta delete %s ^left...^right", v23);
    v27 = OUTLINED_FUNCTION_0_75();
    vf_puts(v27, v28, v29, v30);
    ++v13;
  }

  v31 = *(v15 + 478);
  v32 = OUTLINED_FUNCTION_5_59();
  vf_puts(v32, v33, v34, v35);
  v36 = *(a1 + 288);
  while (1)
  {
    v37 = __OFSUB__(v36--, 1);
    if (v36 < 0 != v37)
    {
      break;
    }

    OUTLINED_FUNCTION_4_59();
    vf_puts(a1, v38, "\nprint . to cmdout", 1);
    v39 = *(*(a1 + 200) + 8);
    v40 = OUTLINED_FUNCTION_6_58();
    reach(v40, v41, v42, 0xFFFFFFFF);
  }

  OUTLINED_FUNCTION_4_59();
  v43 = OUTLINED_FUNCTION_5_59();
  vf_puts(v43, v44, v45, v46);
  v47 = 0;
  v48 = vstmtbl;
  while (v47 < *(a1 + 288))
  {
    v49 = *v48;
    v48 += 12;
    v50 = OUTLINED_FUNCTION_2_68(*(a1 + 200));
    __sprintf_chk(v50, v51, v52, "\ndelta delete %s ^_%s", v49, v49);
    v53 = OUTLINED_FUNCTION_0_75();
    vf_puts(v53, v54, v55, v56);
    ++v47;
  }

  v57 = 1162;
  v58 = 9186;
  while (v57 - 1161 < *(a1 + 16))
  {
    v59 = *(a1 + 192);
    v60 = v59 + v58;
    if (*(v59 + v58 - 2) == -6 && (*(v59 + v58) & 0x20) == 0)
    {
      v61 = **(v59 + 8 * v57);
      v62 = *(a1 + 200);
      if (v61 == *v62 || v61 == v62[1])
      {
        v78 = *(v60 - 18);
        v63 = OUTLINED_FUNCTION_13_51();
        __sprintf_chk(v63, v64, v65, v66, v78);
        v67 = OUTLINED_FUNCTION_0_75();
        vf_puts(v67, v68, v69, v70);
      }
    }

    ++v57;
    v58 += 24;
  }

  OUTLINED_FUNCTION_4_59();
  v71 = 1;
  v72 = OUTLINED_FUNCTION_5_59();
  vf_puts(v72, v73, v74, v75);
  return v71;
}

void reach(uint64_t a1, int a2, _BYTE *a3, unsigned int a4)
{
  v5 = *(*(*(a1 + 200) + 400) + 8 * a2);
  if (v5 != a3)
  {
    for (i = VRSYNC(a1, v5, a2); i != a3; i = VRSYNC(a1, i, a2))
    {
      v8 = 0;
      v9 = 0;
      for (j = vstmtbl; ; j += 12)
      {
        OUTLINED_FUNCTION_18_44();
        if (v11)
        {
          break;
        }

        if (a2 != v8)
        {
          OUTLINED_FUNCTION_9_56();
          if (*&i[8 * v12])
          {
            v13 = ",";
            if (!v9)
            {
              OUTLINED_FUNCTION_21_40();
              prstuff(a1, a2, *(v14 + 8 * a2), i, 0xFFFFFFFFLL);
              OUTLINED_FUNCTION_21_40();
              *(v15 + 8 * a2) = i;
              OUTLINED_FUNCTION_4_59();
              vf_puts(a1, v16, "\ndelta project ", 1);
              v13 = &unk_26DD32C5A;
            }

            v17 = *(a1 + 200);
            v37 = v13;
            v39 = *j;
            v18 = OUTLINED_FUNCTION_13_51();
            __sprintf_chk(v18, v19, v20, "%s%s", v37, v39);
            OUTLINED_FUNCTION_4_59();
            v9 = 1;
            v21 = OUTLINED_FUNCTION_5_59();
            vf_puts(v21, v22, v23, v24);
          }
        }

        ++v8;
      }

      if (v9)
      {
        v38 = vstmtbl[12 * a2];
        v25 = OUTLINED_FUNCTION_2_68(*(a1 + 200));
        __sprintf_chk(v25, v26, v27, " (.1) ^_%s", v38);
        v28 = OUTLINED_FUNCTION_0_75();
        vf_puts(v28, v29, v30, v31);
        for (k = 0; k < *(a1 + 288); ++k)
        {
          if (a2 != k)
          {
            OUTLINED_FUNCTION_9_56();
            if (*&i[8 * v33])
            {
              v34 = OUTLINED_FUNCTION_6_58();
              reach(v34);
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_21_40();
    prstuff(a1, a2, *(v35 + 8 * a2), a3, a4);
    OUTLINED_FUNCTION_21_40();
    *(v36 + 8 * a2) = i;
  }
}

uint64_t svgetl(uint64_t a1)
{
  OUTLINED_FUNCTION_11_53(a1);
  fread(&__ptr, 1uLL, 4uLL, v1);
  return bswap32(__ptr);
}

uint64_t svgeti(uint64_t a1)
{
  OUTLINED_FUNCTION_11_53(a1);
  fread(__ptr, 1uLL, 2uLL, v1);
  return (__ptr[0] << 8) | __ptr[1];
}

uint64_t svgetc(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_71(a1);
  fread(v1, v2, v3, v4);
  return 0;
}

uint64_t svgetu(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_71(a1);
  fread(v1, v2, v3, v4);
  return 0;
}

uint64_t svgets(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = 496;
  do
  {
    fread((v2 + v3), 1uLL, 1uLL, *(v2 + 480));
    v2 = *(a1 + 200);
  }

  while (*(v2 + v3++));
  return v2 + 496;
}

size_t svputl(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2);
  OUTLINED_FUNCTION_11_53(a1);
  return fwrite(&__ptr, 1uLL, 4uLL, v2);
}

size_t svputi(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2) >> 16;
  OUTLINED_FUNCTION_11_53(a1);
  return fwrite(&__ptr, 1uLL, 2uLL, v2);
}

size_t svputs(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*(a1 + 200) + 480);

  return fwrite(__s, 1uLL, v4 + 1, v5);
}

uint64_t svputlptrs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  v3 = *(v2 + 8112);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v2 + 8104);
      if (v5)
      {
        v7 = result;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        while (v9 < *(v5 + 58))
        {
          v11 = *(v5 + 16);
          if (*(v11 + v8 + 16) == -6 && (*(v11 + v8 + 18) & 0x80000000) == 0 && **(*(v4 + 16) + 8 * v9) == a2)
          {
            if (!v10)
            {
              v12 = OUTLINED_FUNCTION_6_58();
              svputc(v12);
              v11 = *(*(*(v7 + 192) + 8104) + 16);
            }

            result = svputs(v7, *(v11 + v8));
            v5 = *(*(v7 + 192) + 8104);
            v10 = 1;
          }

          ++v9;
          v8 += 24;
        }

        if (v10)
        {

          return svputs(v7, &unk_26DD32C5A);
        }
      }
    }
  }

  return result;
}

uint64_t vsv2delta(uint64_t a1, char *__filename)
{
  v40 = *MEMORY[0x277D85DE8];
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "wb");
  *(*(a1 + 200) + 480) = result;
  if (result)
  {
    svputs(a1, &unk_26DD32C5A);
    v4 = OUTLINED_FUNCTION_16_47();
    svputi(v4, v5);
    svputi(a1, 1u);
    v6 = OUTLINED_FUNCTION_16_47();
    svputi(v6, v7);
    svputi(a1, *(*(a1 + 192) + 8868));
    for (i = 0; ; ++i)
    {
      OUTLINED_FUNCTION_18_44();
      if (v10)
      {
        break;
      }

      v11 = &vstmtbl[12 * i];
      svputs(a1, *v11);
      svputi(a1, *(v11 + 16));
      v12 = *(*(*(a1 + 192) + 9072) + i);
      svputc(a1);
      v13 = 0;
      for (j = 0; j < *(v11 + 16); ++j)
      {
        v15 = &v11[1][v13];
        svputs(a1, *v15);
        svputi(a1, *(v15 + 15));
        svputi(a1, *(v15 + 14));
        svputi(a1, v15[32]);
        v13 += 40;
      }
    }

    for (k = -2; k < v9; k = v17)
    {
      v17 = k + 1;
      if (k != -1)
      {
        svputc(a1);
        v18 = OUTLINED_FUNCTION_17_45();
        svputi(v18, v19);
        if (k == -2)
        {
          v20 = 0;
        }

        else
        {
          v20 = &vstmtbl[12 * k];
        }

        v21 = **(a1 + 200);
        if (k == -2)
        {
          v22 = -99;
        }

        else
        {
          v22 = -2;
        }

        for (; v21; v21 = (*v29 & 0xFFFFFFFFFFFFFFFCLL))
        {
          if ((*v21 & 2) != 0)
          {
            v30 = *(a1 + 200);
            if (v21 != *v30 && v21 != v30[1])
            {
              svputc(a1);
              v31 = absoluteSyncNum(a1, v21);
              svputi(a1, v31);
              v32 = *(a1 + 192);
              LODWORD(v33) = v22;
              if (!*(v32 + 8868))
              {
                v33 = -2;
                v34 = 1;
                while (*(a1 + 288) != v33)
                {
                  if (v34 && k > v33 && (*&v21[8 * v33 + 8 * *(v32 + 9084)] & 1) != 0)
                  {
                    goto LABEL_40;
                  }

                  ++v33;
                  --v34;
                }

                LODWORD(v33) = -99;
              }

LABEL_40:
              svputc(a1);
              if (v33 == -99)
              {
                NONSEQ(v21);
                svputc(a1);
                ONESTM(v21);
                svputc(a1);
                ALLNSQ(v21);
                svputc(a1);
                svputlptrs(a1, v21);
              }
            }

            v29 = &v21[8 * k + 8 * *(*(a1 + 192) + 9084)];
          }

          else
          {
            svputc(a1);
            v23 = 0;
            v24 = 30;
            while (v23 < *(v20 + 16))
            {
              v25 = v20[1];
              v26 = (*&v20[2][8 * v23])(v21 + 16);
              switch(*&v25[v24])
              {
                case 0xFFFB:
                  __sprintf_chk(__s, 0, 0x32uLL, "%g", *v26);
                  svputs(a1, __s);
                  break;
                case 0xFFFC:
                  v28 = *v26;
                  goto LABEL_27;
                case 0xFFFD:
                  svputl(a1, *v26);
                  break;
                case 0xFFFE:
                  v28 = *v26;
LABEL_27:
                  svputi(a1, v28);
                  break;
                case 0xFFFF:
                  v27 = *v26;
                  svputu(a1);
                  break;
                default:
                  break;
              }

              ++v23;
              v24 += 40;
            }

            v29 = v21 + 8;
          }
        }

        v9 = *(a1 + 288);
        v17 = k + 1;
      }
    }

    OUTLINED_FUNCTION_22_39();
    svputlptrs(a1, v35);
    OUTLINED_FUNCTION_20_42();
    svputlptrs(a1, v36);
    svputc(a1);
    fclose(*(*(a1 + 200) + 480));
    v37 = OUTLINED_FUNCTION_16_47();
    result = vclrctxt(v37);
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void *findsync(uint64_t a1, int a2, char a3)
{
  v4 = (4 * a2);
  v5 = **(a1 + 200);
  for (i = a3; v5; v5 = VRSYNC(a1, v5, i))
  {
    if ((*v5 & 0xFFFFFFFFFFFFFFFCLL) == v4)
    {
      break;
    }
  }

  return v5;
}

FILE *vrsdelta2(uint64_t a1, char *__filename)
{
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "rb");
  *(*(a1 + 200) + 480) = result;
  if (!result)
  {
    return result;
  }

  if (*svgets(a1) || svgeti(a1) || svgeti(a1) != 1 || svgeti(a1) || svgeti(a1) != *(*(a1 + 192) + 8868))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_16_47();
  vdltinit(v4, v5);
  *(*(a1 + 184) + 452) = 1;
  OUTLINED_FUNCTION_22_39();
  v7 = *v6;
  ***(a1 + 200) = (4 * absoluteSyncNum(a1, v6)) | (v7 & 3);
  OUTLINED_FUNCTION_20_42();
  v9 = *v8;
  **(*(a1 + 200) + 8) = (4 * absoluteSyncNum(a1, v8)) | (v9 & 3);
  v10 = *(a1 + 16);
  v11 = 1162;
  for (i = 9184; ; i += 24)
  {
    v13 = v11 - 1161;
    if (v11 - 1161 >= v10)
    {
      break;
    }

    v14 = *(a1 + 192);
    if (*(v14 + i) == -6 && v13 != *(a1 + 290) && v13 != *(a1 + 292))
    {
      **(v14 + 8 * v11) = 0;
    }

    ++v11;
  }

  for (j = 0; ; ++j)
  {
    OUTLINED_FUNCTION_18_44();
    if (v16)
    {
      break;
    }

    v17 = &vstmtbl[12 * j];
    svgets(a1);
    v18 = *(v17 + 16);
    if (v18 != svgeti(a1))
    {
      return 0;
    }

    *(*(*(a1 + 192) + 9072) + j) = svgetc(a1);
    v19 = OUTLINED_FUNCTION_6_58();
    setnonseqIndex(v19, v20);
    if (*(*(*(a1 + 192) + 9072) + j) > 1u)
    {
      return 0;
    }

    v21 = 0;
    v22 = -1;
    while (++v22 < *(v17 + 16))
    {
      v23 = v17[1];
      svgets(a1);
      v24 = *&v23[v21 + 30];
      if (svgeti(a1) != v24)
      {
        return 0;
      }

      v25 = *&v23[v21 + 28];
      if (svgeti(a1) != v25)
      {
        return 0;
      }

      v26 = v23[v21 + 32];
      v27 = svgeti(a1);
      result = 0;
      v21 += 40;
      if (v27 != v26)
      {
        return result;
      }
    }
  }

  if (svgetc(a1) != 125)
  {
    return 0;
  }

  v28 = 0;
  for (k = -2; ; k = v32)
  {
    OUTLINED_FUNCTION_18_44();
    if (v30 == v31)
    {
      fclose(*(*(a1 + 200) + 480));
      if (v28)
      {
        v62 = 0;
        do
        {
          if (v62 >= *(a1 + 288))
          {
            break;
          }

          for (m = **(a1 + 200); m; m = (*v64 & 0xFFFFFFFFFFFFFFFCLL))
          {
            if ((*m & 2) != 0)
            {
              *m &= 3uLL;
              v64 = &m[*(*(a1 + 192) + 9084) + v62];
            }

            else
            {
              v64 = m + 1;
            }
          }

          ++v62;
        }

        while (!checkInterrupt(a1));
        *(*(a1 + 192) + 9080) = 0;
        return 1;
      }

      return 0;
    }

    v32 = k + 1;
    if (k != -1)
    {
      break;
    }

LABEL_86:
    ;
  }

  if (v28)
  {
    return 0;
  }

  v67 = svgeti(a1);
  if (v67 != k)
  {
    return 0;
  }

  v28 = 0;
  v33 = &vstmtbl[12 * k];
  v34 = **(a1 + 200);
  v65 = k + 3;
  v35 = 1;
  while (2)
  {
    if ((v35 & 1) == 0)
    {
      v32 = k + 1;
      goto LABEL_86;
    }

    v35 = 1;
    switch(svgetc(a1))
    {
      case 't':
        OUTLINED_FUNCTION_20_42();
        goto LABEL_57;
      case 'u':
        OUTLINED_FUNCTION_22_39();
LABEL_57:
        v38 = a1;
        goto LABEL_58;
      case 'v':
        v38 = a1;
        v36 = v34;
LABEL_58:
        svgetptrs(v38, v36, 0);
        continue;
      case 'w':
        OUTLINED_FUNCTION_20_42();
        goto LABEL_40;
      case 'x':
        OUTLINED_FUNCTION_22_39();
LABEL_40:
        v39 = a1;
        goto LABEL_61;
      case 'y':
        v35 = 0;
        v28 = 1;
        continue;
      case 'z':
        v39 = a1;
        v37 = v34;
LABEL_61:
        svgetptrs(v39, v37, 1);
        continue;
      case '{':
        v66 = v28;
        v40 = 0;
        v41 = 30;
LABEL_42:
        if (v40 >= *(v33 + 16))
        {
          v35 = 1;
          v28 = v66;
          continue;
        }

        v71 = 0;
        v70 = 0;
        v69 = 0;
        v68 = 0;
        switch(*&v33[1][v41])
        {
          case 0xFFFB:
            v43 = svgets(a1);
            v42 = &v68;
            sscanf(v43, "%lg", &v68);
            break;
          case 0xFFFC:
            v69 = svgeti(a1);
            v42 = &v69;
            break;
          case 0xFFFD:
          case 0xFFFE:
            v70 = svgetl(a1);
            v42 = &v70;
            break;
          case 0xFFFF:
            v71 = svgetu(a1);
            v42 = &v71;
            break;
          default:
            v42 = 0;
            break;
        }

        if (v40)
        {
          (*&v33[3][8 * v40])(16, v42);
          v44 = v34;
LABEL_55:
          ++v40;
          v41 += 40;
          v34 = v44;
          goto LABEL_42;
        }

        v45 = *(v33[1] + 15);
        result = alloc_tok(a1, v33);
        if (result)
        {
          v44 = result;
          OUTLINED_FUNCTION_9_56();
          *(v34 + 8 * v46) = *(v34 + 8 * v46) & 3 | v47;
          OUTLINED_FUNCTION_23_38();
          *(v48 + 8 * k + 24) = *(v48 + 8 * k + 24) & 3 | v49;
          OUTLINED_FUNCTION_23_38();
          *v50 = v34;
          v50[1] = v51;
          if (v45 < 0)
          {
            vinitflds(a1, v67, &v44->_flags, v42);
          }

          else
          {
            memcpy(&v44->_flags, v42, *(v33 + 17));
          }

          goto LABEL_55;
        }

        return result;
      case '|':
        v52 = svgeti(a1);
        v53 = svgetc(a1);
        v54 = (4 * v52);
        if (v53 != -99)
        {
          v56 = v53;
          v57 = *(a1 + 200);
          v55 = *v57;
          while (v55 != v57[1])
          {
            if ((*v55 & 0xFFFFFFFFFFFFFFFCLL) == v54)
            {
              goto LABEL_78;
            }

            v55 = VRSYNC(a1, v55, v56);
            v57 = *(a1 + 200);
          }

          return 0;
        }

        result = alloc_sync(a1);
        if (!result)
        {
          return result;
        }

        v55 = result;
        result->_p = (result->_p & 3 | v54);
        if (svgetc(a1))
        {
          SETNONSEQ(v55);
        }

        else
        {
          CLRNONSEQ(v55);
        }

        if (svgetc(a1))
        {
          SETONESTM(v55);
        }

        else
        {
          CLRONESTM(v55);
        }

        if (svgetc(a1))
        {
          SETALLNSQ(v55);
        }

        else
        {
          CLRALLNSQ(v55);
        }

LABEL_78:
        if (k != -2)
        {
          OUTLINED_FUNCTION_9_56();
          *(v55 + 8 * v58) |= 1uLL;
        }

        OUTLINED_FUNCTION_23_38();
        *(v59 + 8 * v65) = *(v59 + 8 * v65) & 3 | v55;
        v60 = k + *(*(a1 + 192) + 9084);
        *(v55 + 8 * v60) = *(v55 + 8 * v60) & 3 | *(*(a1 + 200) + 8);
        *(v55 + 8 * v65) = *(v55 + 8 * v65) & 3 | v34;
        if (v34 && (*v34 & 2) != 0)
        {
          OUTLINED_FUNCTION_9_56();
          *(v34 + 8 * v61) = *(v34 + 8 * v61) & 3 | v55;
        }

        else
        {
          *(v34 + 8) = v55;
        }

        v35 = 1;
        v34 = v55;
        continue;
      case '}':
        v35 = 0;
        continue;
      default:
        continue;
    }
  }
}

_BYTE *svgetptrs(uint64_t a1, uint64_t a2, int a3)
{
  while (1)
  {
    result = svgets(a1);
    if (!*result)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_15_49();
    if (a3)
    {
      if (!getgptr(v6, v7, v8))
      {
        v9 = OUTLINED_FUNCTION_15_49();
        getlptr(v9, v10, v11);
      }
    }

    else if (!getlptr(v6, v7, v8))
    {
      v12 = OUTLINED_FUNCTION_15_49();
      getgptr(v12, v13, v14);
    }
  }

  return result;
}

uint64_t prstuff(uint64_t result, int a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v6 = a3;
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = &vstmtbl[12 * a2];
    v12 = a3;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    if (!v10)
    {
      v13 = OUTLINED_FUNCTION_6_58();
      LODWORD(result) = prinsert(v13);
    }

    v14 = *(v11[1] + 15);
    disptok(result, v12 + 16, a2, 0, (*(v8 + 200) + 408));
    OUTLINED_FUNCTION_4_59();
    if (v17 > 2)
    {
      vf_puts(v8, v15, "'", 1);
      v20 = OUTLINED_FUNCTION_0_75();
      vf_puts(v20, v21, v22, v23);
      OUTLINED_FUNCTION_4_59();
      v19 = v8;
      v18 = "'";
    }

    else
    {
      v18 = (v16 + 408);
      v19 = v8;
    }

    vf_puts(v19, v15, v18, 1);
    OUTLINED_FUNCTION_4_59();
    v10 = 1;
    result = vf_puts(v8, v24, " ", 1);
    v9 = 0;
    v25 = v12 + 8;
    while (1)
    {
      v12 = (*v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v12)
      {
        goto LABEL_4;
      }

LABEL_3:
      if ((*v12 & 2) == 0)
      {
        goto LABEL_4;
      }

      if (v9)
      {
        if (v10)
        {
          v26 = OUTLINED_FUNCTION_6_58();
          prrange(v26);
        }

        v27 = OUTLINED_FUNCTION_6_58();
        result = prinsert(v27);
        v10 = 0;
      }

      v28 = a5;
      v30 = a5 >= 0 && v12 == a4;
      v31 = v6;
      if (v12 != v6 && !v30)
      {
        v32 = 9184;
        for (i = 1162; i - 1161 < *(v8 + 16); ++i)
        {
          v34 = *(v8 + 192);
          v35 = v34 + v32;
          if (*(v34 + v32) == -6 && **(v34 + 8 * i) == v12)
          {
            v36 = *(v8 + 200);
            if (v12 != *v36 && v12 != v36[1])
            {
              v63 = *(v35 - 16);
              v37 = OUTLINED_FUNCTION_13_51();
              __sprintf_chk(v37, v38, v39, "!%s ", v63);
              v40 = OUTLINED_FUNCTION_0_75();
              result = vf_puts(v40, v41, v42, v43);
            }
          }

          v32 += 24;
        }
      }

      if (v9)
      {
        v44 = OUTLINED_FUNCTION_6_58();
        result = prrange(v44);
      }

      if (v12 == a4)
      {
        break;
      }

      v25 = &v12[8 * *(*(v8 + 192) + 9084) + 8 * a2];
      v9 = 1;
      a5 = v28;
      v6 = v31;
    }

    if (v10)
    {
      v45 = OUTLINED_FUNCTION_6_58();
      result = prrange(v45);
    }

    if ((v28 & 0x80000000) == 0)
    {
      v46 = &vstmtbl[12 * v28];
      v64 = *v46;
      v47 = OUTLINED_FUNCTION_2_68(*(v8 + 200));
      __sprintf_chk(v47, v48, v49, v50, v64);
      v51 = OUTLINED_FUNCTION_0_75();
      result = vf_puts(v51, v52, v53, v54);
      if (!v10)
      {
        v65 = vstmtbl[12 * a2];
        v66 = *v46;
        v55 = OUTLINED_FUNCTION_2_68(*(v8 + 200));
        __sprintf_chk(v55, v56, v57, v58, v65, v66);
        v59 = OUTLINED_FUNCTION_0_75();

        return vf_puts(v59, v60, v61, v62);
      }
    }
  }

  return result;
}

uint64_t prrange(uint64_t a1)
{
  OUTLINED_FUNCTION_19_44(a1);
  v12 = *(vstmtbl + v1);
  v3 = OUTLINED_FUNCTION_2_68(v2);
  __sprintf_chk(v3, v4, v5, v6, v12, v12);
  v7 = OUTLINED_FUNCTION_0_75();

  return vf_puts(v7, v8, v9, v10);
}

uint64_t prinsert(uint64_t a1)
{
  OUTLINED_FUNCTION_19_44(a1);
  v12 = *(vstmtbl + v1);
  v3 = OUTLINED_FUNCTION_2_68(v2);
  __sprintf_chk(v3, v4, v5, v6, "%", v12);
  v7 = OUTLINED_FUNCTION_0_75();

  return vf_puts(v7, v8, v9, v10);
}

uint64_t getgptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v6 = *(a1 + 16);
  v7 = 1162;
  for (i = 9184; ; i += 24)
  {
    if (v7 - 1161 >= v6)
    {
      return 0;
    }

    v9 = *(a1 + 192);
    if (*(v9 + i) == -6 && !strcmp(*(v9 + i - 16), __s2))
    {
      break;
    }

    ++v7;
  }

  **(v9 + 8 * v7) = a2;
  return 1;
}

uint64_t getlptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 192);
  v8 = *(*(v7 + 8112) + 8);
  v9 = *(v7 + 8104);
  v10 = 8 * (*(v9 + 58) & ~(*(v9 + 58) >> 31));
  while (1)
  {
    if (v10 == v6)
    {
      return 0;
    }

    v11 = *(v9 + 16);
    if (*(v11 + v5 + 16) == -6 && !strcmp(*(v11 + v5), __s2))
    {
      break;
    }

    v6 += 8;
    v5 += 24;
  }

  **(*(v8 + 16) + v6) = a2;
  return 1;
}

uint64_t OUTLINED_FUNCTION_3_63()
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 8) + 40 * v2 + 8);
  v5 = *(v3 + 8 * v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return rdtokverr(v6, v7, v8, va);
}

const char **OUTLINED_FUNCTION_26_36(uint64_t a1, int a2, char *a3)
{

  return logicalFileFindPhysical(a1, a2, a3, 1, 1);
}

uint64_t vdur_ass(uint64_t *a1, uint64_t *a2, void *a3, int a4, uint64_t a5)
{
  v24 = a5;
  v23 = 0;
  if (vrange_2pt(a1, a2, a3, a4, 0))
  {
    return 1;
  }

  v11 = vdur(a1, a2, a3, a4);
  v12.n128_u64[0] = 0;
  v13 = 0.0;
  if (v11)
  {
    v13 = a5 / v11;
  }

  v14 = &vstmtbl[12 * a4];
  v15 = -0.5;
  if (v13 >= 0.0)
  {
    v15 = 0.5;
  }

  if ((*(v14[1] + 15) & 0xFFFE) == 0xFFFC)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  for (i = *a2; i != *a3; i = (*v21 & 0xFFFFFFFFFFFFFFFCLL))
  {
    if (i && (*i & 2) != 0)
    {
      OUTLINED_FUNCTION_1_72();
      v21 = &i[8 * v22 + 8 * a4];
    }

    else
    {
      v18 = *(v14[1] + 15);
      v19 = (*v14[2])(i + 16, v12);
      if (v18 == -3)
      {
        v24 = (v16 + *v19 * v13);
        v20 = &v24;
      }

      else
      {
        v24 = (v16 + *v19 * v13);
        v23 = v24;
        v20 = &v23;
      }

      vinitflds(a1, a4, i + 16, v20);
      v21 = i + 8;
    }
  }

  return 0;
}

uint64_t vrange_2pt(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4, int a5)
{
  if (a5)
  {
    v10 = *a2;
    OUTLINED_FUNCTION_3_64();
    if ((*&v12[8 * v13 + 8 * *(a2 + 8)] & 1) == 0 || a2[2])
    {
      v11 = vnormalize(a1, a2);
      if (v11 == 2)
      {
        *a2 = vsplit_time(a1, *(a2 + 8), *a2, a2[2]);
        v20 = *(a2 + 8);
        OUTLINED_FUNCTION_3_64();
        v25 = *(v21 + 8 * (v24 + v22));
        goto LABEL_22;
      }

      if (v11 == 4)
      {
LABEL_13:
        v14 = *a2;
        v15 = a1[25];
        if (a5 == 205)
        {
          v16 = v15[1];
          if (v14 != v16)
          {
LABEL_20:
            if (v14 != v16)
            {
              v26 = *(a2 + 8);
              OUTLINED_FUNCTION_3_64();
              v25 = *(v23 + 8 * (v27 + v22));
LABEL_22:
              v28 = OUTLINED_FUNCTION_20_43(v21, v22, v23, v25 & 0xFFFFFFFFFFFFFFFCLL);
              *a3 = v28;
              if (!v28)
              {
                return 1;
              }

              goto LABEL_26;
            }

            return 1;
          }
        }

        else if (a5 != 206)
        {
          v16 = v15[1];
          goto LABEL_20;
        }

        if (v14 == *v15)
        {
          return 1;
        }

        *a3 = v14;
        v29 = OUTLINED_FUNCTION_20_43(v11, *(a2 + 8), *(*a2 + 8 * *(a2 + 8) + 24) & 0xFFFFFFFFFFFFFFFCLL, *a2);
        *a2 = v29;
        if (!v29)
        {
          return 1;
        }

LABEL_26:
        v19 = 1;
        *(a2 + 24) = 1;
        *(a3 + 24) = 1;
        goto LABEL_27;
      }

      if (v11 != 3)
      {
        return 1;
      }

      v12 = *a2;
    }

    *a3 = v12;
    if ((a5 - 205) <= 1)
    {
      v11 = lmost(*(a2 + 8), *a2);
      *a2 = v11;
      v12 = *a3;
    }

    if ((a5 & 0xFFFFFFFD) == 0xCD)
    {
      v11 = rmost(a1, *(a2 + 8), v12);
      v12 = v11;
      *a3 = v11;
    }

    if (*a2 != v12)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  v17 = *(a2 + 1);
  v32[0] = *a2;
  v32[1] = v17;
  v18 = *(a3 + 16);
  v31[0] = *a3;
  v31[1] = v18;
  vcomp_pta(a1, v32, v31);
  if (!*(a1[24] + 8120))
  {
    return 1;
  }

  vtmark_tv(a1, a2);
  v19 = 1;
  vtmark_tv(a1, a3);
LABEL_27:
  if (vdef_proj(a1, *a2, a4) && vdef_proj(a1, *a3, a4))
  {
    return 0;
  }

  return v19;
}

uint64_t gcql(uint64_t a1, uint64_t a2, int a3, int a4)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_72();
    if (*(v6 + 8 * (v7 + a3)))
    {
      break;
    }

    VLSYNC(v6, a4);
  }

  return v6;
}

uint64_t gcqr(uint64_t a1, uint64_t a2, int a3, int a4)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_72();
    if (*(v7 + 8 * (v8 + a3)))
    {
      break;
    }

    VRSYNC(a1, v7, a4);
  }

  return v7;
}

uint64_t dur2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = *a2;
  v8 = *a3;
  if (v7 == *a3)
  {
    return *(a3 + 16) - *(a2 + 16);
  }

  if (a5)
  {
    v11 = v7;
  }

  else
  {
    v13 = visleft(a1, v7, *a3);
    if (v13)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    if (v13)
    {
      v15 = a3;
    }

    else
    {
      v15 = a2;
    }

    v8 = *v15;
    v11 = *v14;
    v7 = *a2;
  }

  v16 = *(*(a1 + 192) + 9084) + a4;
  if ((*(v7 + 8 * v16) & 1) == 0)
  {
    if (!ctxt_clstr(a1, v7, a4))
    {
      return -2147483647;
    }

    v16 = *(*(a1 + 192) + 9084) + a4;
  }

  if ((*(*a3 + 8 * v16) & 1) == 0 && !ctxt_clstr(a1, *a3, a4))
  {
    return -2147483647;
  }

  v17 = 0;
  v18 = 0;
  v19 = &vstmtbl[12 * a4];
  while (v11 != v8 && v11)
  {
    if ((*v11 & 2) != 0)
    {
      v21 = &v11[8 * *(*(a1 + 192) + 9084) + 8 * a4];
    }

    else
    {
      v20 = *(v19[1] + 15);
      if (v20 == 65532)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      else if (v20 == 65533)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      v21 = v11 + 8;
      v18 = 1;
    }

    v11 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v22 = *(a2 + 24);
  if (v8 == *a2)
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 += *(a2 + 16);
    }

    if ((*(a3 + 24) & 2) != 0)
    {
      v17 -= *(a3 + 16);
    }

    v17 = -v17;
  }

  else
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 -= *(a2 + 16);
    }

    if ((*(a3 + 24) & 2) != 0)
    {
      v17 += *(a3 + 16);
    }
  }

  if (v17)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18 == 0;
  }

  if (v23)
  {
    return -2147483647;
  }

  else
  {
    return v17;
  }
}

uint64_t val_expr2(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7)
{
  v9 = a2;
  *a7 = 0;
  v11 = *(a2 + 8);
  if (!a5)
  {
    if (BYTE4(vstmtbl[12 * a3 + 11]))
    {
      a5 = vstmtbl[12 * *(a2 + 8) + 11];
    }

    else
    {
      a5 = 0;
    }
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v103 = a5;
  if (a6 == 9)
  {
    v12 = -2147483647;
    switch(vnormalize(a1, a2))
    {
      case 2u:
        v13 = *v9;
        if ((v9[2] & 0x8000000000000000) != 0)
        {
          v15 = *(*(v13 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          OUTLINED_FUNCTION_1_72();
          v15 = v13;
          v13 = *((*(v13 + 8 * (v14 + v11)) & 0xFFFFFFFFFFFFFFFCLL) + 8) & 0xFFFFFFFFFFFFFFFCLL;
        }

        *&v108 = v15;
        *&v106 = v13;
        OUTLINED_FUNCTION_10_55();
        v17 = gcql(v35, v36, v37, v38);
        goto LABEL_14;
      case 3u:
        v19 = rmost(a1, v11, *v9);
        firstdefd(a1, v11, v19, a3, 0);
        v20 = lmost(v11, *v9);
        v104 = 1;
        firstdefd(a1, v11, v20, a3, 1);
        OUTLINED_FUNCTION_10_55();
        v17 = gcql(v21, v22, v23, v24);
        OUTLINED_FUNCTION_10_55();
        v18 = gcqr(v25, v26, v27, v28);
        goto LABEL_15;
      case 4u:
        v29 = *v9;
        OUTLINED_FUNCTION_10_55();
        v17 = gcql(v30, v31, v32, v33);
        v34 = *v9;
LABEL_14:
        OUTLINED_FUNCTION_10_55();
        v18 = gcqr(v39, v40, v41, v42);
        v104 = 1;
        goto LABEL_15;
      default:
        return v12;
    }
  }

  v104 = 0;
  v16 = *(a1 + 200);
  v17 = *(*(v16 + 616) + 8 * a3);
  v18 = *(*(v16 + 624) + 8 * a3);
LABEL_15:
  v43 = 0;
  v105 = a3;
  v44 = v17;
  v12 = -2147483647;
  while (v44 != v18)
  {
    if (v44 && (*v44 & 2) != 0)
    {
      v45 = v11;
      v46 = v9;
      v47 = *&v44[8 * *(*(a1 + 192) + 9084) + 8 * a3] & 0xFFFFFFFFFFFFFFFCLL;
      v48 = *&vstmtbl[12 * a3 + 1][40 * a4 + 30];
      if (v48 == 65532)
      {
        OUTLINED_FUNCTION_2_69();
        v51 = v50(v47 + 16);
        if (*v51 == -32767)
        {
          v43 = -2147483647;
        }

        else
        {
          v43 = *v51;
        }
      }

      else if (v48 == 65533)
      {
        OUTLINED_FUNCTION_2_69();
        v43 = *v49(v47 + 16);
      }

      v52 = v43;
      if (v12 != -2147483647)
      {
        v52 = v12;
        if (v12 != v43)
        {
          return -2147483647;
        }
      }

      v44 = (*(v47 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      v12 = v52;
      v9 = v46;
      v11 = v45;
    }
  }

  if (v12 == -2147483647)
  {
    *&v109 = 0;
    BYTE8(v109) = 1;
    *&v107 = 0;
    BYTE8(v107) = 1;
    if (!v17)
    {
LABEL_32:
      v53 = -2147483647;
      goto LABEL_43;
    }

    while ((*v17 & 2) != 0)
    {
      v17 = *(v17 + 8 * (a3 + 3)) & 0xFFFFFFFFFFFFFFFCLL;
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    v54 = *(v17 + 8);
    OUTLINED_FUNCTION_1_72();
    if ((*(v55 + 8 * (v56 + v11)) & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_11_54();
      v55 = vgetsc(v57, 0, 1, v58, v59);
    }

    *&v108 = v55;
    OUTLINED_FUNCTION_15_50();
    v53 = -2147483647;
    if (v60 == 65532)
    {
      OUTLINED_FUNCTION_2_69();
      v63 = v62(v17 + 16);
      v53 = -2147483647;
      OUTLINED_FUNCTION_5_60(v63);
      if (!v89)
      {
        v53 = v64;
      }
    }

    else if (v60 == 65533)
    {
      OUTLINED_FUNCTION_2_69();
      v53 = *v61(v17 + 16);
    }

    while (1)
    {
LABEL_43:
      if (!v18)
      {
        if (!v17)
        {
          return -32767;
        }

        v66 = *(*(a1 + 200) + 640);
        v67 = OUTLINED_FUNCTION_17_46();
        v72 = durcalc(v67, v68, v69, v70, v71, v104);
        if (!v72)
        {
          return v53;
        }

        v12 = -2147483647;
        if (v72 == -2147483647)
        {
          return v53;
        }

        return v12;
      }

      if ((*v18 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_1_72();
      v18 = (v18[v65 + a3] & 0xFFFFFFFFFFFFFFFCLL);
    }

    OUTLINED_FUNCTION_1_72();
    if ((*(v73 + 8 * (v74 + v11)) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_54();
      OUTLINED_FUNCTION_16_48();
      v73 = vgetsc(v75, v76, v77, v78, v79);
    }

    *&v106 = v73;
    OUTLINED_FUNCTION_15_50();
    if (v80 == 65532)
    {
      OUTLINED_FUNCTION_2_69();
      v84 = v83(v18 + 2);
      OUTLINED_FUNCTION_5_60(v84);
      if (v89)
      {
        v81 = -2147483647;
      }

      else
      {
        v81 = v85;
      }
    }

    else if (v80 == 65533)
    {
      OUTLINED_FUNCTION_2_69();
      v81 = *v82(v18 + 2);
    }

    v86 = v81;
    v87 = *(a1 + 200);
    if (v17)
    {
      v88 = durcalc(a1, &v108, &v106, v11, (*(v87 + 632) + 24 * v105), v104);
      v89 = v88 == -2147483647 || v88 == 0;
      if (!v89)
      {
        v92 = v88;
        *a7 = 1;
        v93 = *(*(a1 + 200) + 640);
        v94 = OUTLINED_FUNCTION_17_46();
        v99 = durcalc(v94, v95, v96, v97, v98, v104);
        if (v99 == -2147483647)
        {
          v100 = 0;
        }

        else
        {
          v100 = v99;
        }

        return (v53 + (v86 - v53) * (v100 / v92));
      }

      if (v103 == -1)
      {
        return v53;
      }

      if (v103 != 1)
      {
        if (v103)
        {
          return -2147483647;
        }

        return vcvtd_n_f64_s64(v86 + v53, 1uLL);
      }
    }

    else
    {
      v91 = durcalc(a1, v9, &v106, v11, (*(v87 + 648) + 24 * v105), v104);
      if (v91)
      {
        v12 = -2147483647;
        if (v91 != -2147483647)
        {
          return v12;
        }
      }
    }

    return v86;
  }

  return v12;
}

uint64_t vnormalize(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = &vstmtbl[12 * v5];
  v41 = *v6[2];
  v7 = *(a2 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v16 = 0;
    v17 = 65532;
    v18 = *(a2 + 16);
    v19 = &v4[v5 + 3];
LABEL_17:
    v11 = v18;
    v20 = v19;
    while (v4 != **(a1 + 200))
    {
      v19 = (*v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v19 || (*v19 & 2) == 0)
      {
        v21 = *(v6[1] + 15);
        if (v21 == v17)
        {
          v23 = v41(v19 + 16);
          OUTLINED_FUNCTION_5_60(v23);
          if (v24)
          {
            v16 = -2147483647;
          }
        }

        else if (v21 == 65533)
        {
          v22 = v41(v19 + 16);
          v17 = 65532;
          v16 = *v22;
        }

        v18 = v16 + v11;
        if (v16 != -2147483647 && v18 < 1)
        {
          goto LABEL_17;
        }

        break;
      }

      v20 = &v19[8 * v5 + 24];
      v4 = v19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_59();
    v10 = &v4[v9];
    v11 = v7;
LABEL_3:
    v12 = *(*(a1 + 200) + 8);
    while (v4 != v12)
    {
      v13 = (*v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v13 || (*v13 & 2) == 0)
      {
        v15 = *(v6[1] + 15);
        if (v15 == 65532)
        {
          v8 = *v41(v13 + 16);
          if (v8 == -32767)
          {
            break;
          }
        }

        else
        {
          if (v15 == 65533)
          {
            v8 = *v41(v13 + 16);
          }

          if (v8 == -2147483647)
          {
            break;
          }
        }

        if (v11 - v8 < 0)
        {
          break;
        }

        v10 = v13 + 8;
        v11 -= v8;
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_59();
      v10 = &v13[8 * v14];
      v4 = v13;
    }
  }

  v26 = *(a2 + 24);
  if ((v26 & 4) != 0)
  {
    if (v11 < 0)
    {
      if ((v4[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v32 = *(v4[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL);
        if ((v32 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v32 = MEMORY[0];
      }

      v4 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    }

    else if (!v11)
    {
      v4 = lmost(v5, v4);
      v27 = *(a2 + 24);
LABEL_51:
      v34 = v27 ^ 4;
      goto LABEL_52;
    }

LABEL_50:
    v27 = *(a2 + 24);
    goto LABEL_51;
  }

  if ((v26 & 8) == 0)
  {
    v28 = v7 >> 63;
    v29 = 1;
    goto LABEL_53;
  }

  if (v11 >= 1)
  {
    OUTLINED_FUNCTION_3_64();
    v31 = v4[v30 + v5] & 0xFFFFFFFFFFFFFFFCLL;
    if (!v31 || (*v31 & 2) == 0)
    {
      v4 = (*(v31 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    }

    goto LABEL_46;
  }

  if (v11 < 0)
  {
LABEL_46:
    v33 = v26;
    goto LABEL_47;
  }

  v4 = rmost(a1, v5, v4);
  v33 = *(a2 + 24);
LABEL_47:
  v34 = v33 ^ 8;
LABEL_52:
  v11 = 0;
  v29 = 0;
  LODWORD(v28) = (v26 >> 2) & 1;
  *(a2 + 24) = v34;
LABEL_53:
  *a2 = v4;
  *(a2 + 16) = v11;
  v35 = *(a1 + 200);
  if (v4 == *v35 && v11 < 0)
  {
    return 1;
  }

  if (v4 == v35[1] && v11 > 0)
  {
    return 1;
  }

  if (v11)
  {
    return 2;
  }

  if (!v29)
  {
    return 4;
  }

  if (v28)
  {
    v38 = *(*(a1 + 192) + 9084) + v5;
  }

  else
  {
    v38 = v5 + 3;
  }

  v39 = (v4[v38] & 0xFFFFFFFFFFFFFFFCLL);
  v40 = *(v6[1] + 15);
  if (v40 == 65532)
  {
    if (v39 && ((*v39 & 2) != 0 || !*v41(v39 + 16)))
    {
      return 3;
    }

    return 4;
  }

  if (v40 != 65533 || !v39 || (*v39 & 2) == 0 && *v41(v39 + 16))
  {
    return 4;
  }

  return 3;
}

_BYTE *firstdefd(uint64_t a1, int a2, _BYTE *a3, int a4, int a5)
{
  v7 = a3;
  v10 = 0;
  v11 = &vstmtbl[12 * a2];
  v21 = *v11[2];
  v12 = *(v11 + 86);
  v13 = 8 * (a5 != 0);
  if (a3)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_3:
    v14 = *(v11[1] + 15);
    if (v14 == 65532)
    {
      v10 = 0;
      if (v7 && v12)
      {
        v15 = *v21(v7 + 16) == 0;
LABEL_15:
        v10 = v15;
      }
    }

    else if (v14 == 65533)
    {
      v10 = 0;
      if (v7)
      {
        if (v12)
        {
          v15 = *v21(v7 + 16) == 0;
          goto LABEL_15;
        }
      }
    }

    if (!v10)
    {
      return a3;
    }

    v18 = &v7[v13];
    v10 = 1;
    while (1)
    {
      v7 = (*v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v7)
      {
        break;
      }

LABEL_2:
      if ((*v7 & 2) == 0)
      {
        goto LABEL_3;
      }

      v16 = *(*(a1 + 192) + 9084);
      if (*&v7[8 * v16 + 8 * a4])
      {
        return v7;
      }

      v17 = v16 + a2;
      if (!a5)
      {
        v17 = a2 + 3;
      }

      v18 = &v7[8 * v17];
    }
  }
}

_BYTE *rmost(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = a3;
  v4 = 0;
  v5 = &vstmtbl[12 * a2];
  v6 = *v5[2];
  v7 = *(v5 + 86);
  v8 = &a3[8 * *(*(a1 + 192) + 9084) + 8 * a2];
  while (1)
  {
    while (1)
    {
      v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v9 || (*v9 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_6_59();
      v8 = &v9[8 * v12];
      v3 = v9;
    }

    v10 = *(v5[1] + 15);
    if (v10 == 65532)
    {
      v4 = 0;
      if (v9 && v7)
      {
        v11 = *v6(v9 + 16) == 0;
LABEL_12:
        v4 = v11;
      }
    }

    else if (v10 == 65533)
    {
      v4 = 0;
      if (v9)
      {
        if (v7)
        {
          v11 = *v6(v9 + 16) == 0;
          goto LABEL_12;
        }
      }
    }

    if (!v4)
    {
      return v3;
    }

    v8 = v9 + 8;
    v4 = 1;
  }
}

void *lmost(int a1, void *a2)
{
  v3 = 0;
  v4 = &vstmtbl[12 * a1];
  v5 = *v4[2];
  v6 = *(v4 + 86);
  v7 = a1 + 3;
LABEL_2:
  v8 = &a2[v7];
  do
  {
    v8 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      a2 = v8;
      goto LABEL_2;
    }

    v9 = *(v4[1] + 15);
    if (v9 == 65532)
    {
      v3 = 0;
      if (v8 && v6)
      {
        v10 = *v5(v8 + 2) == 0;
LABEL_13:
        v3 = v10;
      }
    }

    else if (v9 == 65533)
    {
      v3 = 0;
      if (v8)
      {
        if (v6)
        {
          v10 = *v5(v8 + 2) == 0;
          goto LABEL_13;
        }
      }
    }

    v10 = v3 == 0;
    v3 = 1;
  }

  while (!v10);
  return a2;
}

uint64_t durcalc(uint64_t a1, void *a2, uint64_t *a3, int a4, void *a5, int a6)
{
  if (a6)
  {

    return dur2(a1, a2, a3, a4, 0);
  }

  else
  {
    v17[2] = 0;
    v16[2] = 0;
    v16[3] = 1;
    v17[3] = 1;
    v12 = a5[1];
    v17[0] = *a5;
    v17[1] = 0;
    v16[0] = v12;
    v16[1] = 0;
    v13 = a5[2];
    v14 = dur2(a1, v16, a3, a4, 1) + v13;
    result = v14 - dur2(a1, v17, a2, a4, 1);
    a5[2] = result - a3[2] + a2[2];
    v15 = *a3;
    *a5 = *a2;
    a5[1] = v15;
  }

  return result;
}

uint64_t vgen(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v139 = *MEMORY[0x277D85DE8];
  v138[0] = 0;
  if ((~*(a4 + 24) & 7) != 0)
  {
LABEL_87:
    result = 0;
    goto LABEL_88;
  }

  v8 = a2;
  v10 = *(a4 + 8);
  *(a2 + 8) = *(a4 + 8);
  *(a2 + 24) = 2;
  *(a2 + 16) = 0;
  result = dynaBufNew(40);
  v137 = result;
  if (result)
  {
    v12 = *(a1 + 200);
    if (!*(v12 + 616))
    {
      *(*(a1 + 200) + 616) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
      *(*(a1 + 200) + 624) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
      v42 = OUTLINED_FUNCTION_7_58();
      *(*(a1 + 200) + 640) = malloc_type_malloc(v42, 0x1080040CC6EE3FDuLL);
      v43 = OUTLINED_FUNCTION_7_58();
      *(*(a1 + 200) + 632) = malloc_type_malloc(v43, 0x1080040CC6EE3FDuLL);
      v44 = OUTLINED_FUNCTION_7_58();
      v45 = malloc_type_malloc(v44, 0x1080040CC6EE3FDuLL);
      v12 = *(a1 + 200);
      *(v12 + 648) = v45;
      v46 = *(v12 + 616);
      if (!v46 || !*(v12 + 624) || !*(v12 + 640) || !v45)
      {
        free(v46);
        free(*(*(a1 + 200) + 624));
        free(*(*(a1 + 200) + 640));
        free(*(*(a1 + 200) + 632));
        v47 = *(*(a1 + 200) + 648);
LABEL_36:
        free(v47);
        goto LABEL_87;
      }
    }

    v13 = 0;
    v14 = *(a1 + 288);
    while (v14 > v13)
    {
      *(*(v12 + 624) + 8 * v13) = 0;
      *(*(*(a1 + 200) + 616) + 8 * v13) = 0;
      v12 = *(a1 + 200);
      v15 = vld1q_dup_f64(v12);
      v16 = *(v12 + 648) + 24 * v13;
      *v16 = v15;
      v17 = *(v12 + 632) + 24 * v13;
      *v17 = v15;
      v18 = *(v12 + 640) + 24 * v13;
      *v18 = v15;
      *(v16 + 16) = 0;
      *(v17 + 16) = 0;
      *(v18 + 16) = 0;
      ++v13;
    }

    v134 = a3;
    v130 = a5;
    v19 = dynaBufContents(*(a4 + 16));
    v20 = 0;
    v21 = 0;
    v23 = (v19 + 1);
    v22 = *v19;
    v136 = v8;
    v132 = v22;
    while (v22 > v21)
    {
      v24 = *v23;
      v25 = *v8;
      OUTLINED_FUNCTION_16_48();
      v30 = vgetsc(v26, v27, v28, v29, v24);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = (*&v30[8 * v24 + 24] & 0xFFFFFFFFFFFFFFFCLL);
        }

        while (v30 && (*v30 & 2) != 0);
      }

      else
      {
        v31 = 0;
      }

      if (vgetsc(a1, 0, 1, *v134, v24))
      {
        OUTLINED_FUNCTION_13_52();
        v34 = v33 + v24;
        do
        {
          v35 = v32;
          v32 = (*&v32[8 * v34] & 0xFFFFFFFFFFFFFFFCLL);
        }

        while (v32 && (*v32 & 2) != 0);
        if (v31)
        {
LABEL_21:
          while (1)
          {
            OUTLINED_FUNCTION_13_52();
            if ((*(v31 + 8 * (v36 + v10)) & 1) == 0)
            {
              goto LABEL_86;
            }

            v37 = VRSYNC(a1, v31, v24);
            if (v37)
            {
              v31 = v37;
              if (v37 != v35)
              {
                continue;
              }
            }

            break;
          }
        }
      }

      else
      {
        v35 = 0;
        if (v31)
        {
          goto LABEL_21;
        }
      }

      v8 = v136;
      *(*(*(a1 + 200) + 616) + 8 * v24) = gcql(a1, *v136, v24, v10);
      v38 = gcqr(a1, *v136, v24, v10);
      v39 = 0;
      *(*(*(a1 + 200) + 624) + 8 * v24) = v38;
      v40 = v23[1];
      while (v39 < v40)
      {
        if (*(a4 + 9) == v20)
        {
          v41 = v20 + 1;
        }

        else
        {
          v41 = v20;
        }

        v20 = v41 + 1;
        ++v39;
      }

      v23 += v40 + 2;
      ++v21;
      v22 = v132;
    }

    v133 = malloc_type_malloc(8 * v20 * *(a1 + 288), 0x10040436913F5uLL);
    if (!v133)
    {
LABEL_86:
      dynaBufDelete(v137);
      goto LABEL_87;
    }

    v128 = 0;
    v129 = 0;
    v48 = 0;
    v49 = 1;
    HIDWORD(v121) = v130;
    v135 = vdur(a1, v8, v134, *(a4 + 8));
    for (i = v135; i >= 1; i = v131 - v115)
    {
      v51 = *v136;
      if (v129 == 3 && (v48 & 1) != 0)
      {
        v51 = lmost(v10, *v136);
      }

      v52 = vnormalize(a1, v136);
      v127 = v51;
      if (v52 - 3 >= 2)
      {
        if (v52 != 2)
        {
LABEL_89:
          dynaBufDelete(v137);
          v47 = v133;
          goto LABEL_36;
        }

        v53 = v136[2] <= v128;
      }

      else
      {
        v53 = 1;
      }

      LODWORD(v124) = v53;
      v54 = v52;
      v55 = *a4;
      if (i < *a4)
      {
        v55 = i;
      }

      v128 = v55;
      v137 = dynaBufReset(v137);
      v56 = dynaBufContents(*(a4 + 16));
      v57 = 0;
      v58 = 0;
      v60 = (v56 + 1);
      v59 = *v56;
      v129 = v54;
      v131 = i;
      HIDWORD(v123) = v49 | (v54 != 2);
      v61 = v136;
      HIDWORD(v124) = v59;
      do
      {
        if (v59 <= v58)
        {
          break;
        }

        HIDWORD(v126) = v58;
        v62 = *v60;
        v63 = *(a1 + 200);
        v64 = *(*(v63 + 616) + 8 * v62);
        v65 = v60[1];
        v125 = *(*(v63 + 624) + 8 * v62);
        v66 = *v61;
        switch(v129)
        {
          case 2:
            goto LABEL_93;
          case 4:
            v68 = *v61;
            break;
          case 3:
            firstdefd(a1, v10, *v61, *v60, 0);
            v122 = v64;
            v67 = lmost(v10, v66);
            v66 = firstdefd(a1, v10, v67, v62, 1);
            break;
          default:
            goto LABEL_89;
        }

        OUTLINED_FUNCTION_13_52();
        if (v66[v70 + v62])
        {
          v72 = 0;
          *(*(*(a1 + 200) + 624) + 8 * v62) = v69;
          *(*(*(a1 + 200) + 616) + 8 * v62) = v66;
        }

        else
        {
LABEL_93:
          if (v124)
          {
            while (1)
            {
              OUTLINED_FUNCTION_13_52();
              if (v66[v71 + v62])
              {
                break;
              }

              if (v66 == v127)
              {
                goto LABEL_62;
              }

              v66 = VLSYNC(v66, v10);
            }

            *(*(*(a1 + 200) + 616) + 8 * v62) = v66;
            *(*(*(a1 + 200) + 624) + 8 * v62) = VRSYNC(a1, v66, v62);
          }

LABEL_62:
          v72 = (v123 & 0x100000000) == 0 && (v73 = *(a1 + 200), v64 == *(*(v73 + 616) + 8 * v62)) && v125 == *(*(v73 + 624) + 8 * v62);
        }

        v74 = 0;
        v60 += 2;
        do
        {
          if (v74 >= v65)
          {
            break;
          }

          if (*(a4 + 9) == v57)
          {
            v75 = OUTLINED_FUNCTION_8_58();
            v78 = __sprintf_chk(v75, v76, v77, "%d ", v128);
            OUTLINED_FUNCTION_12_52(v78, v79, v80, v81, v82, v83, v84, v85, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
            ++v57;
          }

          if (i == v135)
          {
            v86 = vstmtbl[12 * *(a4 + 8) + 11];
          }

          else
          {
            v86 = 0;
          }

          v88 = *v60++;
          v87 = v88;
          if (!v72 || (v89 = *(v133 + v57), v89 == 0x8000000000000000))
          {
            LODWORD(v89) = val_expr2(a1, v136, v62, v87, v86, v129, v138);
            v90 = 0x8000000000000000;
            if (!v138[0])
            {
              v90 = v89;
            }

            *(v133 + v57) = v90;
          }

          if (v89 == -2147483647)
          {
            goto LABEL_89;
          }

          v118 = v89;
          v91 = OUTLINED_FUNCTION_8_58();
          v94 = __sprintf_chk(v91, v92, v93, "%d ", v118);
          OUTLINED_FUNCTION_12_52(v94, v95, v96, v97, v98, v99, v100, v101, v119, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
          ++v57;
          ++v74;
          i = v131;
        }

        while (!checkInterrupt(a1));
        v102 = checkInterrupt(a1);
        v58 = HIDWORD(v126) + 1;
        v61 = v136;
        v59 = HIDWORD(v124);
      }

      while (!v102);
      if (checkInterrupt(a1))
      {
        break;
      }

      if (*(a4 + 9) == v57)
      {
        v103 = OUTLINED_FUNCTION_8_58();
        v106 = __sprintf_chk(v103, v104, v105, "%d ", v128);
        OUTLINED_FUNCTION_12_52(v106, v107, v108, v109, v110, v111, v112, v113, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
      }

      dynaBufAddChar(v137, 10, 0);
      dynaBufAddChar(v137, 0, 0);
      v114 = dynaBufContents(v137);
      v48 = 1;
      vf_puts(a1, SHIDWORD(v121), v114, 1);
      v49 = 0;
      *(v136 + 24) = 2;
      v115 = *a4;
      v136[2] = (v136[2] + *a4);
    }

    dynaBufDelete(v137);
    free(v133);
    result = 1;
  }

LABEL_88:
  v116 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t visleft(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (!*(*(a1 + 192) + 8868) || NONSEQ(a2) || NONSEQ(v6))
      {
        v7 = 0;
        v8 = *(a1 + 288);
        while (1)
        {
          if (--v8 < 0)
          {
            OUTLINED_FUNCTION_11_54();
            OUTLINED_FUNCTION_16_48();
            result = vgetsc(v10, v11, v12, v6, v13);
            goto LABEL_15;
          }

          v9 = *(*(a1 + 192) + 9084) + (v8 & 0x7F);
          if (*(a2 + 8 * v9))
          {
            v7 = v8;
            if (*(v6 + 8 * v9))
            {
              break;
            }
          }
        }

        v7 = v8;
        result = VLSYNC(v6, v8);
        if (!result)
        {
          return result;
        }

LABEL_15:
        v14 = v7 + 3;
        while (1)
        {
          if (result == a2)
          {
            return 1;
          }

          v15 = (*(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL);
          if (!v15)
          {
            break;
          }

          if ((*v15 & 2) != 0)
          {
            result = *(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            result = *v15 & 0xFFFFFFFFFFFFFFFCLL;
          }
        }

        return 0;
      }

      else
      {
        v16 = *(a1 + 200);
        if (*(v16 + 656) == spine_changed)
        {
          v17 = 0;
          v18 = v16 + 1064;
          for (i = (v16 + 664); ; ++i)
          {
            if (v17 == 50)
            {
              v23 = *(v16 + 660);
              if (v23 <= 48)
              {
                v24 = v23 + 1;
              }

              else
              {
                v24 = 0;
              }

              *(v16 + 660) = v24;
              v25 = v24;
              while (*(v16 + 1516 + 4 * v25) >= 13)
              {
                if (v25 <= 48)
                {
                  ++v25;
                }

                else
                {
                  v25 = 0;
                }

                if (v25 == v24)
                {
                  v21 = v24;
                  v25 = v24;
LABEL_45:
                  *(v16 + 660) = v25;
                  *(v16 + 664 + 8 * v21) = a2;
                  *(*(a1 + 200) + 8 * v21 + 1064) = v6;
                  v22 = *(a1 + 200);
                  v22[v21 + 379] = 1;
                  goto LABEL_46;
                }
              }

              v21 = v25;
              goto LABEL_45;
            }

            if (*i == a2 && i[50] == v6)
            {
              break;
            }

            ++v17;
          }

          ++*(v18 + 4 * v17 + 452);
          return *(v18 + v17 + 400);
        }

        else
        {
          for (j = 0; j != 50; ++j)
          {
            *(v16 + 8 * j + 664) = 0;
            *(*(a1 + 200) + 8 * j + 1064) = 0;
            v16 = *(a1 + 200);
            *(v16 + 4 * j + 1516) = 0;
          }

          v21 = 0;
          *(v16 + 664) = a2;
          *(*(a1 + 200) + 1064) = v6;
          v22 = *(a1 + 200);
          v22[379] = 1;
          v22[165] = 0;
          v22[164] = spine_changed;
LABEL_46:
          while (1)
          {
            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
            if (!v6)
            {
              break;
            }

            if (v6 == a2)
            {
              result = 1;
              *(v22 + v21 + 1464) = 1;
              return result;
            }
          }

          result = 0;
          *(v22 + v21 + 1464) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t vsync_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    if (vnormalize(a1, a2) == 2)
    {
      *a2 = OUTLINED_FUNCTION_19_45();
    }

    OUTLINED_FUNCTION_0_76();
  }

  return 1;
}

uint64_t vtmark_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_60(a1, a2);
    if (v5 == 2)
    {
      v6 = OUTLINED_FUNCTION_19_45();
    }

    else
    {
      if (v5 != 3)
      {
LABEL_9:
        OUTLINED_FUNCTION_0_76();
        return 1;
      }

      if (v4)
      {
        v6 = lmost(*(v2 + 8), *v2);
      }

      else
      {
        v6 = rmost(v3, *(v2 + 8), *v2);
      }
    }

    *v2 = v6;
    goto LABEL_9;
  }

  return 1;
}

uint64_t vtimept_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_4_60(a1, a2);
  if (v5 != 2)
  {
    if (v5 != 4)
    {
      if (v5 != 3)
      {
        return 0;
      }

      if (v4)
      {
        v6 = lmost(*(v2 + 8), *v2);
      }

      else
      {
        v6 = rmost(v3, *(v2 + 8), *v2);
      }

      *v2 = v6;
    }

    OUTLINED_FUNCTION_0_76();
  }

  return 1;
}

BOOL vctxt_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v2 = vnormalize(a1, a2);
  if ((v2 - 3) < 2)
  {
    OUTLINED_FUNCTION_0_76();
    return 1;
  }

  return v2 == 2;
}

uint64_t vmove_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    vnormalize(a1, a2);
    OUTLINED_FUNCTION_0_76();
  }

  return 1;
}

void vtsttmark_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_60(a1, a2);
    if ((v5 - 1) >= 2)
    {
      if (v5 == 3)
      {
        if (v4)
        {
          v6 = lmost(*(v2 + 8), *v2);
        }

        else
        {
          v6 = rmost(v3, *(v2 + 8), *v2);
        }

        *v2 = v6;
      }

      OUTLINED_FUNCTION_0_76();
    }
  }
}

void vtstctx_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_60(a1, a2);
  if (v5 == 2)
  {
    v6 = v2[2];
    if (v4 == 1 && v6 >= 1)
    {
      v17 = &vstmtbl[12 * *(v2 + 8)];
      v18 = *(*v2 + 8 * (*(*(v3 + 192) + 9084) + *(v2 + 8)));
      v19 = v17[1];
      v20 = *v17[2];
      OUTLINED_FUNCTION_14_52();
      if (v21)
      {
        v25 = *v22(v23 + 16);
        v26 = -2147483647;
      }

      else
      {
        if (v24 != 65532)
        {
          v25 = 0;
LABEL_25:
          v2[2] -= v25;
LABEL_26:
          v27 = *(*v2 + 8);
LABEL_33:
          *v2 = v27 & 0xFFFFFFFFFFFFFFFCLL;
          return;
        }

        v25 = *v22(v23 + 16);
        v26 = -32767;
      }

      if (v25 == v26)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v4 || (v6 & 0x8000000000000000) == 0)
    {
      return;
    }

    v8 = &vstmtbl[12 * *(v2 + 8)];
    v9 = v8[1];
    v10 = *v8[2];
    v11 = *(*v2 + 8 * *(v2 + 8) + 24) & 0xFFFFFFFFFFFFFFFCLL;
    OUTLINED_FUNCTION_14_52();
    if (v21)
    {
      v15 = *v12(v13 + 16);
      v16 = -2147483647;
    }

    else
    {
      if (v14 != 65532)
      {
        v15 = 0;
LABEL_31:
        v2[2] += v15;
LABEL_32:
        v27 = **v2;
        goto LABEL_33;
      }

      v15 = *v12(v13 + 16);
      v16 = -32767;
    }

    if (v15 == v16)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v5 == 4 || v5 == 3)
  {
    OUTLINED_FUNCTION_0_76();
  }
}

uint64_t vcomp_pta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 24) & 1) != 0 && (*(a3 + 24))
  {
    v15 = *a2 == *a3;
LABEL_23:
    v14 = !v15;
    goto LABEL_26;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  if ((*(a3 + 24) & 2) != 0)
  {
    vnormalize(a1, a2);
    vnormalize(a1, v3);
    if (*(a2 + 8) != *(v3 + 8) || *a2 != *v3 || *(a2 + 16) != v3[2])
    {
LABEL_20:
      v10 = a1 + 192;
LABEL_21:
      v14 = 1;
      goto LABEL_27;
    }

    v14 = 0;
LABEL_26:
    v10 = a1 + 192;
    goto LABEL_27;
  }

  v6 = a3;
  v3 = a2;
LABEL_7:
  v7 = *v6;
  switch(vnormalize(a1, v3))
  {
    case 3u:
      v8 = lmost(*(v3 + 8), *v3);
      v9 = rmost(a1, *(v3 + 8), *v3);
      v10 = a1 + 192;
      v11 = *(v3 + 8);
      v12 = *(v7 + 8 * (*(*(a1 + 192) + 9084) + v11));
      v13 = v7;
      if ((v12 & 1) == 0)
      {
        v7 = *(v7 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL;
        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      }

      if (v7 != v8 && !visleft(a1, v8, v7) || v13 != v9 && !visleft(a1, v13, v9))
      {
        goto LABEL_21;
      }

      v14 = 0;
      break;
    case 4u:
      v15 = *v3 == v7;
      goto LABEL_23;
    default:
      goto LABEL_20;
  }

LABEL_27:
  *(*v10 + 8120) = v14;
  return 0;
}

uint64_t vrange_l()
{
  OUTLINED_FUNCTION_9_57();
  vtmark_tv(v5, v6);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == **(v1 + 200))
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_20_43(result, v4, *(*v2 + 8 * v4 + 24) & 0xFFFFFFFFFFFFFFFCLL, *v2);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 1);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

void dupsync(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v7 = 0;
  if (a4)
  {
    while (v7 < *(a1 + 288))
    {
      OUTLINED_FUNCTION_18_45();
      if (v8)
      {
        v9 = *&a3[8 * v7 + 24];
        v10 = OUTLINED_FUNCTION_11_54();
        if (!vproject(v10, a2, v11, a3, v12))
        {
          break;
        }
      }

      ++v7;
    }
  }

  else
  {
    while (v7 < *(a1 + 288))
    {
      OUTLINED_FUNCTION_18_45();
      if (v13)
      {
        v14 = OUTLINED_FUNCTION_11_54();
        if (!vproject(v14, a2, a3, v15, v16))
        {
          break;
        }
      }

      LODWORD(v7) = v7 + 1;
    }
  }
}

uint64_t vrange_r()
{
  OUTLINED_FUNCTION_9_57();
  vtmark_tv(v5, v6);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == *(*(v1 + 200) + 8))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_64();
      result = OUTLINED_FUNCTION_20_43(v9, v4, v10, *(v10 + 8 * (v8 + v4)) & 0xFFFFFFFFFFFFFFFCLL);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 0);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t vprt_range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vtimept_tv(a1, a2);
  if (result)
  {
    result = vtimept_tv(a1, a3);
    if (result)
    {
      if ((*(a2 + 24) & 2) != 0 && *(a2 + 16) >= 1)
      {
        *a2 = VRSYNC(a1, *a2, *(a2 + 8));
      }

      if ((*(a3 + 24) & 2) != 0 && (*(a3 + 16) & 0x8000000000000000) != 0)
      {
        *a3 = VLSYNC(*a3, *(a3 + 8));
      }

      return 1;
    }
  }

  return result;
}

uint64_t ctxt_clstr(uint64_t a1, uint64_t a2, int a3)
{
  v6 = &vstmtbl[12 * a3];
  v7 = *v6[2];
  OUTLINED_FUNCTION_16_48();
  v12 = vgetsc(v8, v9, v10, a2, v11);
  v13 = vgetsc(a1, 0, 1, a2, a3);
  while (1)
  {
    if (v12 == v13)
    {
      return 1;
    }

    if (v12 && (*v12 & 2) != 0)
    {
      OUTLINED_FUNCTION_3_64();
      v16 = &v12[8 * v15 + 8 * a3];
      goto LABEL_12;
    }

    v14 = *(v6[1] + 15);
    if (v14 == 65532)
    {
      if (*v7(v12 + 16))
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (v14 == 65533 && *v7(v12 + 16))
    {
      return 0;
    }

LABEL_11:
    v16 = v12 + 8;
LABEL_12:
    v12 = (*v16 & 0xFFFFFFFFFFFFFFFCLL);
  }
}

uint64_t OUTLINED_FUNCTION_4_60(uint64_t a1, uint64_t a2)
{

  return vnormalize(a1, a2);
}

uint64_t OUTLINED_FUNCTION_12_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{

  return dynaBufAddString(a23, (v23 - 116), 0);
}

uint64_t OUTLINED_FUNCTION_19_45()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = *v0;

  return vsplit_time(v1, v4, v5, v3);
}

uint64_t OUTLINED_FUNCTION_20_43(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{

  return vins_sync(v4, a2, a3, a4);
}

BOOL initializeDeltaHeap(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = 0;
  v6 = *(a1 + 200);
  *(v6 + 1736) = v4;
  *(v6 + 1752) = v4;
  *(v6 + 1776) = a2;
  v7 = v6 + 1800;
  while (v5 != 400)
  {
    *(v7 + v5) = 1;
    v5 += 40;
  }

  return v4 != 0;
}

_DWORD *allocDynaSegment(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 2192);
  if (v3)
  {
    v3[4] = 0;
    v4 = *(v3 + 4);
    *(v2 + 2192) = *(v3 + 5);
    --*(v2 + 2184);
    v5 = v4 & 3;
    if ((v4 & 7) == 0)
    {
      v5 = 4;
    }

    *(v3 + 5) = 0;
    *v3 = 0;
    *(v3 + 1) = v5;
  }

  else
  {
    v8 = malloc_type_malloc(0x30uLL, 0x10A0040B1233896uLL);
    v3 = v8;
    if (v8)
    {
      v8[5] = 0;
      *v8 = 0;
      *(v8 + 4) = 0;
      v9 = malloc_type_malloc(a2, 0x100004077774924uLL);
      *(v3 + 3) = v9;
      if (v9)
      {
        v10 = v9 + a2 - 1;
        *(v3 + 4) = v10;
        v11 = v10 & 3;
        v12 = (v10 & 7) == 0;
        v13 = 4;
        if (!v12)
        {
          v13 = v11;
        }

        *(v3 + 1) = v13;
      }

      else
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *allocDeltaHeapObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 1752);
  if (a2 + 8 < 1)
  {
    LODWORD(v6) = *(v3 + 2);
  }

  else
  {
    if ((a2 & 7) != 0)
    {
      v4 = ((a2 + 8) & 0x7FFFFFF8) + 8;
    }

    else
    {
      v4 = a2 + 8;
    }

    v5 = v3[1];
    v6 = v5 + v4;
    v3[1] = v6;
    v7 = *(v2 + 1776);
    if (v7 <= v6)
    {
      v3[1] = v5;
      result = allocDynaSegment(a1, v7);
      v3[5] = result;
      if (!result)
      {
        return result;
      }

      v6 = result[1] + v4;
      *result = v3;
      result[1] = v6;
      v2 = *(a1 + 200);
      if (*(v2 + 1776) < v6)
      {
        return 0;
      }

      v3 = result;
    }
  }

  v10 = v3[4];
  if (!v10)
  {
    return 0;
  }

  v11 = (v10 - v6);
  v12 = *(v2 + 1752);
  v13 = *(v12 + 40);
  if (v13)
  {
    *(v2 + 1752) = v13;
    v12 = v13;
  }

  *v11 = v12;
  result = v11 + 1;
  ++*(v12 + 16);
  return result;
}

void freeDeltaHeapObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 4) - 1;
  *(v2 + 4) = v3;
  if (!v3)
  {
    v4 = *(a1 + 200);
    v5 = *(v4 + 1752);
    if (v2 == v5)
    {
      v5[1] = v5[4] & 3;
    }

    else
    {
      v6 = *(v4 + 2184);
      v7 = v2[5];
      v8 = *v2;
      *(*v2 + 40) = v7;
      if (v6 > 19)
      {
        if (v7)
        {
          *v7 = v8;
        }

        free(v2[3]);

        free(v2);
      }

      else
      {
        if (v7)
        {
          *v7 = v8;
        }

        v2[5] = *(v4 + 2192);
        *(v4 + 2192) = v2;
        *(v4 + 2184) = v6 + 1;
      }
    }
  }
}

BOOL resetDeltaHeap(uint64_t a1)
{
  OUTLINED_FUNCTION_0_77(a1);
  freeDynaMem(*(v2 + 1736));
  v3 = *(*(v1 + 200) + 1776);

  return initializeDeltaHeap(v1, v3);
}

void freeDynaMem(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    do
    {
      v2 = *(v1 + 40);
      free(*(v1 + 24));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void freeDeltaHeapTo(uint64_t a1, uint64_t a2, int a3)
{
  for (i = 0; i != 10; ++i)
  {
    v7 = *(a1 + 200);
    v8 = v7 + 40 * i;
    if (!*(v8 + 1800) && *(v8 + 1784) == a2)
    {
      while (1)
      {
        v11 = *(v7 + 1752);
        v12 = v7 + 1784;
        if (!v11 || v11 == *(v12 + 40 * i + 8))
        {
          break;
        }

        free(*(v11 + 24));
        v9 = *(a1 + 200);
        v10 = **(v9 + 1752);
        *(v9 + 1752) = v10;
        free(*(v10 + 40));
        v7 = *(a1 + 200);
      }

      if (v11)
      {
        v14 = v12 + 40 * i;
        *(v11 + 8) = *(v14 + 24);
        *(v11 + 16) = *(v14 + 32);
        if (a3)
        {
          *(v12 + 40 * i + 16) = 1;
        }

        return;
      }
    }
  }
}

uint64_t recordDeltaHeapPos(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1 + 1744;
  v3 = 11;
  while (--v3)
  {
    v4 = v2 + 40;
    v5 = *(v2 + 56);
    v2 += 40;
    if (v5)
    {
      *(v4 + 16) = 0;
      v6 = *(v1 + 1752);
      v7 = *(v6 + 8);
      v8 = *(v6 + 32) - v7;
      *(v4 + 24) = v7;
      *(v4 + 32) = *(v6 + 16);
      *v4 = v8;
      *(v4 + 8) = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t getDeltaHeapSegNumber(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = *(a2 - 8);
  v5 = *(a1 + 200);
  for (i = (v5 + 1736); ; i = (v7 + 40))
  {
    v7 = *i;
    if (!v7 || v7 == v4)
    {
      break;
    }

    ++v3;
  }

  if (v7)
  {
    return ((*(v4 + 32) - a2) / a3) + *(v5 + 1776) / a3 * v3;
  }

  v10 = (v5 + 2192);
  do
  {
    v11 = *v10;
    v10 = (*v10 + 40);
    if (v11)
    {
      v12 = v11 == v4;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  if (v11)
  {
    return 4294967294;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t initializeDeltaStack(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = *(a1 + 200);
  *(v5 + 1744) = v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 4) - v6;
  *(v5 + 1780) = a2;
  v8 = *(v5 + 296);
  v9 = (v7 - v8);
  *(v5 + 1720) = v9;
  *(v5 + 1728) = a2 - v6 - v8;
  *v9 = 8;
  *(v5 + 1760) = v9;
  return 1;
}

uint64_t resetDeltaStack(uint64_t a1)
{
  OUTLINED_FUNCTION_0_77(a1);
  freeDynaMem(*(v2 + 1744));
  v3 = *(v1 + 200);
  *(v3 + 1744) = 0;
  v4 = *(v3 + 1780);

  return initializeDeltaStack(v1, v4);
}

uint64_t peekDeltaStackStart(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_77(a1);
  *(v3 + 1768) = *(v3 + 1720);
  peekDeltaStackNext(v2);
  return *(*(v1 + 200) + 1768);
}

uint64_t peekDeltaStackNext(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1768);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    case 8:
      v3 = 2;
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1768) = result + v3;
  return result;
}

uint64_t popDeltaStackTop(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1720);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1720) = result + v3;
  *(v1 + 1728) += v3;
  return result;
}

void deltaHeapCleanup(uint64_t a1)
{
  OUTLINED_FUNCTION_0_77(a1);
  v3 = v2[274];
  if (v3)
  {
    freeDynaMem(v3);
    v2 = *(v1 + 200);
  }

  v4 = v2[217];
  if (v4)
  {
    freeDynaMem(v4);
    v2 = *(v1 + 200);
  }

  v5 = v2[218];
  if (v5)
  {
    freeDynaMem(v5);
    v2 = *(v1 + 200);
  }

  v2[274] = 0;
  v2[217] = 0;
  v2[219] = 0;
  v2[218] = 0;
}

uint64_t vmeminit(uint64_t a1)
{
  v2 = *(a1 + 200);
  *(v2 + 276) = ((*(a1 + 232) - 1) | 3) + 1;
  *(v2 + 280) = xmmword_26DD316F0;
  *(v2 + 296) = 4;
  result = initializeDeltaStack(a1, 0xFA00u);
  if (result)
  {
    result = initializeDeltaHeap(a1, 0x2000u);
    if (result)
    {
      v4 = *(a1 + 200);
      *(*(a1 + 192) + 8112) = *(v4 + 1720);
      *(v4 + 252) = 0;
      *(v4 + 256) = 0;
      result = malloc_type_malloc(0x50uLL, 0x100004090896170uLL);
      v5 = *(a1 + 200);
      *(v5 + 264) = result;
      if (result)
      {
        *(v5 + 272) = -1;
        viasizes();
        return 1;
      }
    }
  }

  return result;
}

void *vpush_var(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = &unk_26DD31700 + 4 * (v2 + 6);
  if (v2 <= 0xFFFFFFF9)
  {
    v3 = &vstmtbl[12 * *(a2 + 8) + 8] + 4;
  }

  v4 = *v3;
  v5 = *(a1 + 200);
  v6 = *(v5 + 280);
  v7 = ((v4 - 1) | 3) + 1;
  v8 = *(v5 + 1720) - (v7 + v6);
  *(v5 + 1720) = v8;
  *(v5 + 1728) -= v7 + v6;
  *v8 = 2;
  *(v8 + 2) = v2;
  *(v8 + 16) = v4;
  v9 = *a2;
  *(v8 + 8) = v9;
  return memcpy((v8 + v6), v9, v7);
}

void vadd(uint64_t a1, double **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v9 = *(a3 + 4);
      switch(v9)
      {
        case 65531:
          v11 = OUTLINED_FUNCTION_6_60(v3, a2, a3);
          break;
        case 65532:
          v10 = *a2;
          v11 = **a2;
          v13 = **a3;
          break;
        case 65533:
          v11 = OUTLINED_FUNCTION_6_60(v3, a2, a3);
          v13 = v12;
          break;
        default:
          return;
      }

      *v10 = v11 + v13;
      break;
    case 65532:
      v7 = *(a3 + 4);
      if (v7 == 65531)
      {
        v14 = (**a3 + **a2);
        OUTLINED_FUNCTION_3_65(*a2);
      }

      else if (v7 == 65532 || v7 == 65533)
      {
        v8 = **a2 + **a3;
        OUTLINED_FUNCTION_3_65(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v16 = (**a3 + **a2);
          OUTLINED_FUNCTION_2_70(*a2);
          break;
        case 65532:
          v15 = **a2 + **a3;
          OUTLINED_FUNCTION_2_70(*a2);
          break;
        case 65533:
          v6 = **a3 + **a2;
          OUTLINED_FUNCTION_2_70(*a2);
          break;
      }

      break;
  }
}

void vsub(uint64_t a1, double **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v10 = *(a3 + 4);
      switch(v10)
      {
        case 65531:
          v12 = OUTLINED_FUNCTION_6_60(v3, a2, a3);
          break;
        case 65532:
          v11 = *a2;
          v12 = **a2;
          v14 = **a3;
          break;
        case 65533:
          v12 = OUTLINED_FUNCTION_6_60(v3, a2, a3);
          v14 = v13;
          break;
        default:
          return;
      }

      *v11 = v12 - v14;
      break;
    case 65532:
      v8 = *(a3 + 4);
      if (v8 == 65531)
      {
        v15 = (**a2 - **a3);
        OUTLINED_FUNCTION_3_65(*a2);
      }

      else if (v8 == 65532 || v8 == 65533)
      {
        v9 = **a2 - **a3;
        OUTLINED_FUNCTION_3_65(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v18 = (**a2 - **a3);
          OUTLINED_FUNCTION_2_70(*a2);
          break;
        case 65532:
          v16 = **a2;
          v17 = **a3;
          OUTLINED_FUNCTION_2_70(*a2);
          break;
        case 65533:
          v6 = **a2;
          v7 = **a3;
          OUTLINED_FUNCTION_2_70(*a2);
          break;
      }

      break;
  }
}

void vmult(uint64_t a1, double **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v9 = *(a3 + 4);
      switch(v9)
      {
        case 65531:
          v11 = OUTLINED_FUNCTION_6_60(v3, a2, a3);
          break;
        case 65532:
          v10 = *a2;
          v11 = **a2;
          v13 = **a3;
          break;
        case 65533:
          v11 = OUTLINED_FUNCTION_6_60(v3, a2, a3);
          v13 = v12;
          break;
        default:
          return;
      }

      *v10 = v11 * v13;
      break;
    case 65532:
      v7 = *(a3 + 4);
      if (v7 == 65531)
      {
        v14 = (**a3 * **a2);
        OUTLINED_FUNCTION_3_65(*a2);
      }

      else if (v7 == 65532 || v7 == 65533)
      {
        v8 = **a2 * **a3;
        OUTLINED_FUNCTION_3_65(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v16 = (**a3 * **a2);
          OUTLINED_FUNCTION_2_70(*a2);
          break;
        case 65532:
          v15 = **a2 * **a3;
          OUTLINED_FUNCTION_2_70(*a2);
          break;
        case 65533:
          v6 = **a3 * **a2;
          OUTLINED_FUNCTION_2_70(*a2);
          break;
      }

      break;
  }
}

double vdiv(double result, uint64_t a2, double **a3, uint64_t **a4)
{
  v4 = *(a3 + 4);
  switch(v4)
  {
    case 65531:
      v8 = *(a4 + 4);
      if (v8 != 65531)
      {
        if (v8 == 65532)
        {
          v9 = *a3;
          v10 = **a3;
          v11 = **a4;
        }

        else
        {
          if (v8 != 65533)
          {
            return result;
          }

          v9 = *a3;
          v10 = **a3;
          v11 = **a4;
        }

        result = v10 / v11;
        *v9 = result;
        return result;
      }

      result = **a3 / **a4;
      **a3 = result;
      break;
    case 65532:
      v7 = *(a4 + 4);
      switch(v7)
      {
        case 65531:
          v12 = **a3 / **a4;
          OUTLINED_FUNCTION_3_65(*a3);
          break;
        case 65532:
          **a3 /= **a4;
          break;
        case 65533:
          **a3 = **a3 / **a4;
          break;
      }

      break;
    case 65533:
      v5 = *(a4 + 4);
      switch(v5)
      {
        case 65531:
          v13 = **a3 / **a4;
          OUTLINED_FUNCTION_2_70(*a3);
          break;
        case 65532:
          v6 = **a4;
          goto LABEL_21;
        case 65533:
          v6 = **a4;
LABEL_21:
          **a3 /= v6;
          break;
      }

      break;
  }

  return result;
}

uint64_t vnegative(uint64_t a1, double **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      return **a2 < 0.0;
    case 65532:
      return **a2 >> 15;
    case 65533:
      return **a2 >> 63;
  }

  return 0;
}

double vnegate(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      result = -**a2;
      **a2 = result;
      break;
    case 65532:
      v5 = -**a2;
      OUTLINED_FUNCTION_3_65(*a2);
      break;
    case 65533:
      v3 = -**a2;
      OUTLINED_FUNCTION_2_70(*a2);
      break;
  }

  return result;
}

void vassign(uint64_t a1, void **a2, const void **a3)
{
  switch(*(a2 + 4))
  {
    case 0xFFFA:
      v3 = **a3;
      OUTLINED_FUNCTION_2_70(*a2);
      return;
    case 0xFFFB:
      v8 = *(a3 + 4);
      switch(v8)
      {
        case 65531:
          v10 = **a3;
          break;
        case 65532:
          v12 = **a3;
          if (v12 == 32769)
          {
            goto LABEL_23;
          }

          v10 = v12;
          break;
        case 65533:
          v9 = **a3;
          if (v9 == -2147483647)
          {
            goto LABEL_23;
          }

          v10 = v9;
          break;
        default:
          return;
      }

      **a2 = v10;
      return;
    case 0xFFFC:
      v6 = *(a3 + 4);
      switch(v6)
      {
        case 65531:
          v13 = **a3;
          if (v13 != 2.22507386e-308)
          {
            v7 = v13;
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_3_65(*a2);
          break;
        case 65532:
          goto LABEL_11;
        case 65533:
          **a2 = **a3;
          break;
      }

      return;
    case 0xFFFD:
      v4 = *(a3 + 4);
      switch(v4)
      {
        case 65531:
          v11 = **a3;
          if (v11 == 2.22507386e-308)
          {
LABEL_23:
            OUTLINED_FUNCTION_2_70(*a2);
            return;
          }

          v5 = v11;
          break;
        case 65532:
          v5 = **a3;
          break;
        case 65533:
          v5 = **a3;
          break;
        default:
          return;
      }

      **a2 = v5;
      return;
    case 0xFFFE:
LABEL_11:
      LOWORD(v7) = **a3;
LABEL_12:
      **a2 = v7;
      return;
    case 0xFFFF:
      **a2 = **a3;
      return;
    default:
      memcpy(*a2, *a3, SHIDWORD(vstmtbl[12 * *(a2 + 4) + 8]));
      return;
  }
}

void vcompare(uint64_t a1, void **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 0xFFFAu:
      v5 = absoluteSyncNumPtr(**a2);
      absoluteSyncNumPtr(**a3);
      OUTLINED_FUNCTION_4_61();
      if (v5 == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    case 0xFFFBu:
      v18 = *(a3 + 4);
      if (v18 == 65531)
      {
        v19 = OUTLINED_FUNCTION_5_61(a1, a2);
      }

      else
      {
        if (v18 != 65533)
        {
          return;
        }

        v19 = OUTLINED_FUNCTION_5_61(a1, a2);
        v21 = v20;
      }

      if (v19 < v21)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_61();
      if (v26 != v27)
      {
        goto LABEL_32;
      }

LABEL_31:
      *(v6 + v7) = 0;
      return;
    case 0xFFFCu:
      v12 = *(a3 + 4);
      if (v12 == 65532)
      {
        goto LABEL_12;
      }

      if (v12 != 65533)
      {
        return;
      }

      v13 = **a2;
      v14 = **a3;
      if (v14 > v13)
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 192);
      if (v14 != v13)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    case 0xFFFDu:
      v9 = *(a3 + 4);
      if (v9 == 65532)
      {
        v10 = **a2;
        v11 = **a3;
      }

      else
      {
        if (v9 != 65533)
        {
          return;
        }

        v10 = **a2;
        v11 = **a3;
      }

      if (v10 < v11)
      {
LABEL_29:
        OUTLINED_FUNCTION_4_61();
        v25 = -1;
        goto LABEL_33;
      }

      v15 = *(a1 + 192);
      if (v10 == v11)
      {
LABEL_19:
        *(v15 + 8120) = 0;
      }

      else
      {
LABEL_26:
        *(v15 + 8120) = 1;
      }

      break;
    case 0xFFFEu:
LABEL_12:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    case 0xFFFFu:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

LABEL_18:
      v15 = *(a1 + 192);
      if (v16 == v17)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    default:
      if (*(a3 + 4) == v4)
      {
        memcmp(*a2, *a3, SHIDWORD(vstmtbl[12 * v4 + 8]));
        OUTLINED_FUNCTION_4_61();
        *(v23 + v24) = v22;
      }

      else
      {
        OUTLINED_FUNCTION_4_61();
LABEL_32:
        v25 = 1;
LABEL_33:
        *(v6 + v7) = v25;
      }

      break;
  }
}

BOOL vcompareTypeCheck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  switch(v3)
  {
    case -6:
      v5 = *(a3 + 8) == -6;
      goto LABEL_6;
    case -5:
    case -4:
    case -3:
      return (*(a3 + 8) + 5) < 3u;
    case -2:
      v5 = *(a3 + 8) == -2;
      goto LABEL_6;
    case -1:
      v5 = *(a3 + 8) == -1;
LABEL_6:
      result = v5;
      break;
    default:
      result = (v3 & 0x80000000) == 0 && v3 < *(a1 + 288);
      break;
  }

  return result;
}

uint64_t vinitloc(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*a2 + 16);
  if (v4 < 0 || (v5 = *(a2 + 8), v5 == -1))
  {
    v9 = 0;
    *(result + 8) = v4;
    *result = *(a2 + 16);
  }

  else
  {
    v6 = *&vstmtbl[12 * *(*a2 + 16) + 2][8 * v5];
    v7 = TVFLDS(*(a2 + 16));
    result = v6(v7);
    *v3 = result;
    v8 = &vstmtbl[12 * *(*a2 + 16) + 1][40 * *(a2 + 8)];
    *(v3 + 8) = *(v8 + 15);
    v9 = v8[32];
  }

  *(v3 + 10) = v9;
  return result;
}

uint64_t vnspush(uint64_t result, _WORD **a2)
{
  v2 = *(a2 + 4);
  v3 = *(result + 200);
  v4 = *(v3 + 264);
  v5 = *(v3 + 272) + 1;
  *(v3 + 272) = v5;
  *(v4 + 16 * v5 + 8) = v2;
  switch(v2)
  {
    case 0xFFFB:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFC:
    case 0xFFFE:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFD:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFF:
      *(v4 + 16 * v5) = **a2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t vnspop(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 272);
  v4 = *(v2 + 264) + 16 * v3;
  v5 = *(v4 + 8);
  *(a2 + 8) = v5;
  *(a2 + 10) = 0;
  if (v5 >= 0xFFFB)
  {
    *a2 = v4;
  }

  *(v2 + 272) = v3 - 1;
  return result;
}

uint64_t vonstack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192) + 8112;
  while (1)
  {
    v3 = *v2;
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 8);
    v5 = *v4;
    v2 = (v4 + 7);
    if (v5 == a2)
    {
      return *(*v2 + 8);
    }
  }

  return 0;
}

void *alloc_sync(uint64_t a1)
{
  v2 = allocDeltaHeapObject(a1, *(*(a1 + 200) + 248));
  v3 = v2;
  if (v2)
  {
    bzero(v2, *(*(a1 + 200) + 248));
    *v3 |= 2uLL;
    SETONESTM(v3);
    CLRALLNSQ(v3);
  }

  return v3;
}

uint64_t vdltinit(uint64_t a1, int a2)
{
  *(*(a1 + 200) + 248) = 16 * *(a1 + 288) + 48;
  resetDeltaHeap(a1);
  **(a1 + 200) = alloc_sync(a1);
  v4 = alloc_sync(a1);
  result = 0;
  v6 = *(a1 + 200);
  v6[1] = v4;
  if (*v6)
  {
    if (v4)
    {
      result = recordDeltaHeapPos(a1);
      if (result)
      {
        CLRONESTM(**(a1 + 200));
        CLRONESTM(*(*(a1 + 200) + 8));
        v7 = 0;
        v8 = &qword_280582508;
        while (v7 < *(a1 + 288))
        {
          *v8 = 0;
          v9 = *(a1 + 192);
          OUTLINED_FUNCTION_0_78(**(a1 + 200));
          OUTLINED_FUNCTION_0_78(*(v10 + 8));
          OUTLINED_FUNCTION_1_73(v11);
          if (a2)
          {
            result = vinit_stm(a1, v7);
            if (!result)
            {
              return result;
            }
          }

          ++v7;
          v8 += 12;
        }

        SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
        SETSPINEL(*(*(a1 + 200) + 8), **(a1 + 200));
        v12 = *(a1 + 192);
        *(v12 + 8080) = 0;
        *(v12 + 8088) = 256;
        result = 1;
        *(v12 + 8090) = 1;
        *(v12 + 9080) = 1;
      }
    }
  }

  return result;
}

uint64_t vscaninit(uint64_t result)
{
  v1 = *(result + 192);
  *(v1 + 8080) = 0;
  *(v1 + 8088) = 256;
  *(v1 + 8090) = 1;
  return result;
}

uint64_t deltaReinit(uint64_t a1, int a2)
{
  CLRONESTM(**(a1 + 200));
  CLRONESTM(*(*(a1 + 200) + 8));
  v4 = 0;
  v5 = &qword_280582508;
  while (v4 < *(a1 + 288))
  {
    *v5 = 0;
    v6 = *(a1 + 192);
    OUTLINED_FUNCTION_0_78(**(a1 + 200));
    OUTLINED_FUNCTION_0_78(*(v7 + 8));
    OUTLINED_FUNCTION_1_73(v8);
    if (a2)
    {
      vinit_stm(a1, v4);
    }

    ++v4;
    v5 += 12;
  }

  SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
  v9 = *(a1 + 200);
  v11 = *v9;
  v10 = v9[1];

  return SETSPINEL(v10, v11);
}

void vnstackCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 264);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 264) = 0;
  }
}

void OUTLINED_FUNCTION_0_78(uint64_t a1@<X8>)
{
  *(a1 + 8 * (v3 + *(v1 + 9084))) |= 1uLL;
  v5 = *(v2 + 192);
  v4 = *(v2 + 200);
}

void OUTLINED_FUNCTION_1_73(void *a1@<X8>)
{
  *(*a1 + 8 * (v3 + *(v1 + 9084))) = *(*a1 + 8 * (v3 + *(v1 + 9084))) & 3 | a1[1];
  v4 = *(*(v2 + 200) + 8) + 8 * v3;
  *(v4 + 24) = *(v4 + 24) & 3 | **(v2 + 200);
}

double OUTLINED_FUNCTION_5_61(uint64_t a1, double **a2)
{
  result = **a2;
  v4 = **v2;
  return result;
}

double OUTLINED_FUNCTION_6_60(uint64_t a1, double **a2, uint64_t **a3)
{
  result = **a2;
  v4 = **a3;
  return result;
}

uint64_t print_delta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11)
{
  v112 = *MEMORY[0x277D85DE8];
  *v111 = a4;
  *&v111[8] = a5;
  v15 = malloc_type_malloc(0x58uLL, 0x10300406A7A1B15uLL);
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v15[16] = a9 + 2;
  v15[6] = a9;
  *v15 = *v111;
  *(v15 + 2) = a8;
  *(v15 + 68) = a6;
  v17 = num_fields(v15);
  *(v16 + 28) = v17;
  v18 = malloc_type_calloc(v17 + 1, 0x10uLL, 0x1010040449DF08BuLL);
  *(v16 + 32) = v18;
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = 0;
  v20 = *(v16 + 28);
  v21 = v18 + 8;
  while (v19 <= v20)
  {
    *v21 = 0;
    v21 += 2;
    ++v19;
  }

  OUTLINED_FUNCTION_15_51();
  v25 = hashNew(v22, v23, v24);
  *(v16 + 72) = v25;
  if (!v25)
  {
LABEL_19:
    free_lines(v16);
LABEL_20:
    free(v16);
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_15_51();
  v29 = hashNew(v26, v27, v28);
  *(v16 + 80) = v29;
  if (!v29)
  {
LABEL_18:
    v37 = *(v16 + 72);
    OUTLINED_FUNCTION_15_51();
    *(v16 + 72) = hashDelete(v38, v39, v40);
    goto LABEL_19;
  }

  v30 = rb_alloc(*(v16 + 28), 0);
  *(v16 + 40) = v30;
  if (!v30)
  {
LABEL_17:
    v33 = *(v16 + 80);
    OUTLINED_FUNCTION_15_51();
    *(v16 + 80) = hashDelete(v34, v35, v36);
    goto LABEL_18;
  }

  if (a6)
  {
    v31 = rb_alloc(1, 0);
    *(v16 + 48) = v31;
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v16 + 48) = 0;
  }

  if (pvlist_size(*(v16 + 16)) < 1)
  {
    *(v16 + 56) = 0;
  }

  else
  {
    v32 = rb_alloc(1, 0);
    *(v16 + 56) = v32;
    if (!v32)
    {
      rb_free(*(v16 + 48));
LABEL_16:
      rb_free(*(v16 + 40));
      goto LABEL_17;
    }
  }

  v43 = OUTLINED_FUNCTION_18_46();
  if (first_field(v43, v44, v45, v46))
  {
    v47 = 0;
    do
    {
      v48 = *(v16 + 32) + 16 * v47;
      *v48 = 0;
      *(v48 + 4) = 0;
      v49 = stream_name(0);
      v50 = 0;
      *(*(v16 + 32) + 16 * v47 + 8) = strdup(v49);
      while (v50 < *(v16 + 64))
      {
        place_char(v16, v47, v50++, 32);
      }

      place_char(v16, v47++, v50, 0);
      v51 = OUTLINED_FUNCTION_18_46();
    }

    while (next_field(v51, v52, v53, v54));
  }

  for (i = 0; ; ++i)
  {
    v56 = *(v16 + 28);
    if (i >= *(v16 + 64))
    {
      break;
    }

    place_char(v16, v56, i, 45);
  }

  place_char(v16, v56, i, 0);
  v57 = 0;
  while (1)
  {
    v58 = *(v16 + 28);
    if (v57 >= v58)
    {
      break;
    }

    v59 = left_delta(a1);
    if (register_sync(v16, v57, v59, 0))
    {
      v60 = right_delta(a1);
      if (register_sync(v16, v57++, v60, *(v16 + 64) - 1))
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (!a7)
  {
    v96 = 0;
    for (j = 0; j < v58; ++j)
    {
      if (time_stream(*(*(v16 + 32) + v96)))
      {
        v98 = OUTLINED_FUNCTION_5_62();
        if (!add_tokens(v98, v99, v100))
        {
          goto LABEL_37;
        }

        if (a11)
        {
          v101 = OUTLINED_FUNCTION_5_62();
          if (!space_syncs(v101, v102, v103))
          {
            goto LABEL_37;
          }
        }
      }

      v58 = *(v16 + 28);
      v96 += 16;
    }
  }

  v62 = 0;
  for (k = 0; k < v58; ++k)
  {
    if (!time_stream(*(*(v16 + 32) + v62)))
    {
      v64 = OUTLINED_FUNCTION_5_62();
      if (!add_tokens(v64, v65, v66))
      {
        goto LABEL_37;
      }

      if (a11)
      {
        v67 = OUTLINED_FUNCTION_5_62();
        if (!space_syncs(v67, v68, v69))
        {
          goto LABEL_37;
        }
      }
    }

    v58 = *(v16 + 28);
    v62 += 16;
  }

  if (a7)
  {
    for (m = 0; m < v58; ++m)
    {
      if (!time_stream(*(*(v16 + 32) + 16 * m)))
      {
        goto LABEL_72;
      }

      v71 = *(*(v16 + 32) + 16 * m);
      if (checkInterrupt(a1))
      {
        goto LABEL_37;
      }

      v72 = left_delta(a1);
      v73 = 0;
      while (1)
      {
        v74 = right_delta(a1);
        if (syncmark_equ(v72, v74))
        {
          break;
        }

        v75 = v72;
        do
        {
          v75 = sync_to_right(a1, v71, v75);
          v76 = hashLookupInt(*(v16 + 80), v75);
        }

        while (!v76);
        find_off(v76, v16, v75);
        v77 = OUTLINED_FUNCTION_19_46();
        v80 = place_char(v77, v78, v79, 124);
        find_off(v80, v16, v72);
        v81 = OUTLINED_FUNCTION_19_46();
        v84 = OUTLINED_FUNCTION_21_41(v81, v82, v83);
        if (v85)
        {
          goto LABEL_37;
        }

        v86 = v84;
        v87 = 1;
        while (1)
        {
          v72 = sync_to_right(a1, v71, v72);
          if (syncmark_equ(v72, v75))
          {
            break;
          }

          if (is_token_prev(v71, v72))
          {
            if (v87)
            {
              v73 = 0;
            }

            token = prev_token(v71, v72);
            v87 = 0;
            v73 += time_field_value(v71, token);
          }
        }

        if (is_token_prev(v71, v75))
        {
          if (v87)
          {
            v73 = 0;
          }

          v89 = prev_token(v71, v75);
          v73 += time_field_value(v71, v89);
          goto LABEL_67;
        }

        v72 = v75;
        if ((v87 & 1) == 0)
        {
LABEL_67:
          __sprintf_chk(v111, 0, 0x10uLL, "%i", v73);
          v90 = OUTLINED_FUNCTION_19_46();
          if (insert_token_name(v90, v91, v86, v92) == -1)
          {
            goto LABEL_37;
          }

          v93 = OUTLINED_FUNCTION_19_46();
          v72 = v75;
          if (insert_padding(v93, v94, v95) == -1)
          {
            goto LABEL_37;
          }
        }
      }

      if (a11 && !space_syncs(a1, v16, m))
      {
        goto LABEL_37;
      }

LABEL_72:
      v58 = *(v16 + 28);
    }
  }

  if (a6)
  {
    for (n = 0; n < *(v16 + 64); ++n)
    {
      if (*(*(*(*(v16 + 40) + 16) + 8 * *(v16 + 28)) + n) == 43)
      {
        sync = find_sync(v16, n);
        v106 = absoluteSyncNum(a1, sync);
        __sprintf_chk(v111, 0, 6uLL, "%i", v106);
        if (!rb_stradd(*(v16 + 48), n, v111))
        {
          goto LABEL_37;
        }
      }
    }
  }

  if (checkInterrupt(a1))
  {
LABEL_37:
    close_ddisp(v16);
    goto LABEL_21;
  }

  if (pvlist_size(*(v16 + 16)) >= 1)
  {
    for (ii = 0; ii < pvlist_size(*(v16 + 16)); ++ii)
    {
      v108 = pvlist_name(a1, *(v16 + 16), ii);
      v109 = pvlist_val(a1, *(v16 + 16), ii);
      if (v109)
      {
        off = find_off(v109, v16, v109);
        if ((off & 0x80000000) == 0 && !rb_stradd(*(v16 + 56), off, v108))
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_22:
  v41 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t add_tokens(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v6 = (*(a2 + 32) + 16 * a3);
  v7 = *v6;
  v8 = *(v6 + 1);
  if (checkInterrupt(a1))
  {
LABEL_2:
    result = 0;
  }

  else
  {
    v11 = left_delta(v5);
    while (1)
    {
      v12 = right_delta(v5);
      if (syncmark_equ(v11, v12))
      {
        break;
      }

      v13 = v11;
      do
      {
        v13 = sync_to_right(v5, v7, v13);
        v14 = hashLookupInt(*(a2 + 80), v13);
      }

      while (!v14);
      find_off(v14, a2, v13);
      v15 = OUTLINED_FUNCTION_1_74();
      v18 = place_char(v15, v16, v17, 124);
      find_off(v18, a2, v11);
      v19 = OUTLINED_FUNCTION_1_74();
      v22 = OUTLINED_FUNCTION_21_41(v19, v20, v21);
      if (v23)
      {
        goto LABEL_2;
      }

      inserted = v22;
      while (1)
      {
        v11 = sync_to_right(v5, v7, v11);
        if (syncmark_equ(v11, v13))
        {
          break;
        }

        v25 = inserted;
        while (1)
        {
          sync = col_next_sync(a2, v25);
          if (sync == -1)
          {
            break;
          }

          v27 = find_sync(a2, sync);
          if (!syncmark_order(v5, v27, v11))
          {
            break;
          }

          v28 = OUTLINED_FUNCTION_1_74();
          v25 = ensure_spaces(v28, v29, v25, v30);
          if (v25 == -1)
          {
            goto LABEL_2;
          }
        }

        v31 = hashLookupInt(*(a2 + 72), v25);
        if (v31)
        {
          if (!syncmark_equ(*(v31 + 8), v11))
          {
            v32 = OUTLINED_FUNCTION_1_74();
            result = insert_space_0(v32, v33, v25);
            if (!result)
            {
              goto LABEL_3;
            }
          }
        }

        v34 = OUTLINED_FUNCTION_1_74();
        register_sync(v34, v35, v11, v25);
        if (is_token_prev(v7, v11))
        {
          v85 = v5;
          v82 = v11;
          token = prev_token(v7, v11);
          v83 = v8;
          v84 = v7;
          v37 = field_value(v7, token, v8, v87);
          v38 = 0;
          v39 = inserted;
          v40 = inserted;
          for (i = v37 + 1; ; ++i)
          {
            v42 = v37[v38];
            if (!v42)
            {
              break;
            }

            OUTLINED_FUNCTION_9_58();
            if (*(*(v43 + 8 * a3) + v39 + v38) != 32)
            {
              break;
            }

            v44 = OUTLINED_FUNCTION_1_74();
            place_char(v44, v45, v46, v47);
            ++v38;
            ++inserted;
          }

          while (1)
          {
            if (!v42)
            {
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_9_58();
            if (*(*(v48 + 8 * a3) + v39 + v38) != 124 || *(*(v48 + 8 * *(a2 + 28)) + v39 + v38 + 1) == 43)
            {
              break;
            }

            v49 = OUTLINED_FUNCTION_1_74();
            place_char_in_stream(v49, v50, v40 + v38, 32);
            v51 = OUTLINED_FUNCTION_1_74();
            place_char_in_stream(v51, v52, v40 + v38 + 1, 124);
            place_char(a2, *(a2 + 28), v40 + v38, 45);
            place_char(a2, *(a2 + 28), v40 + v38 + 1, 43);
            v86 = inserted;
            v53 = v39;
            v54 = hashLookupInt(*(a2 + 72), v40 + v38);
            *v54 = v40 + v38 + 1;
            hashDeleteInt(*(a2 + 72), v40 + v38);
            hashInsertInt(*(a2 + 72), v40 + v38 + 1, v54);
            v55 = &v37[v38];
            v56 = v37[v38];
            v57 = OUTLINED_FUNCTION_1_74();
            place_char(v57, v58, v40 + v38++, v59);
            v42 = v55[1];
            v39 = v53;
            inserted = v86 + 1;
            ++i;
          }

          v42 = 1;
LABEL_29:
          while (v42)
          {
            v60 = OUTLINED_FUNCTION_1_74();
            result = insert_space_0(v60, v61, inserted);
            if (!result)
            {
              goto LABEL_3;
            }

            v62 = *(i - 1);
            v63 = OUTLINED_FUNCTION_1_74();
            place_char(v63, v64, inserted, v65);
            v66 = *i++;
            v42 = v66;
            ++inserted;
          }

          if (inserted == -1)
          {
            goto LABEL_2;
          }

          v67 = OUTLINED_FUNCTION_1_74();
          OUTLINED_FUNCTION_21_41(v67, v68, inserted);
          if (v23)
          {
            goto LABEL_2;
          }

          v69 = OUTLINED_FUNCTION_1_74();
          next_sync(v69, v70, v25);
          v5 = v85;
          v8 = v83;
          v7 = v84;
          v11 = v82;
        }

        v71 = OUTLINED_FUNCTION_1_74();
        inserted = insert_padding(v71, v72, v73);
        result = 0;
        if (inserted == -1)
        {
          goto LABEL_3;
        }
      }

      v11 = v13;
      if (is_token_prev(v7, v13))
      {
        v74 = prev_token(v7, v13);
        field_value(v7, v74, v8, v87);
        v75 = OUTLINED_FUNCTION_1_74();
        if (insert_token_name(v75, v76, inserted, v77) == -1)
        {
          goto LABEL_2;
        }

        v78 = OUTLINED_FUNCTION_1_74();
        v81 = insert_padding(v78, v79, v80);
        result = 0;
        v11 = v13;
        if (v81 == -1)
        {
          goto LABEL_3;
        }
      }
    }

    result = 1;
  }

LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t space_syncs(uint64_t a1, uint64_t a2, int a3)
{
  if (checkInterrupt(a1))
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1_74();
  v8 = 1;
  while (1)
  {
    sync = next_sync(v6, v7, v8);
    if (sync >= *(a2 + 64))
    {
      break;
    }

    OUTLINED_FUNCTION_9_58();
    if (*(*(v10 + 8 * a3) + sync - 1) == 124)
    {
      v11 = OUTLINED_FUNCTION_1_74();
      result = insert_space_0(v11, v12, sync);
      if (!result)
      {
        return result;
      }
    }

    v6 = OUTLINED_FUNCTION_1_74();
  }

  return 1;
}

void close_ddisp(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    OUTLINED_FUNCTION_15_51();
    *(a1 + 80) = hashDelete(v3, v4, v5);
    *(a1 + 72) = hashDelete(*(a1 + 72), 0, 1);
    rb_free(*(a1 + 40));
    rb_free(*(a1 + 48));
    rb_free(*(a1 + 56));
    free_lines(a1);

    free(a1);
  }
}

uint64_t find_sync(uint64_t a1, unsigned int a2)
{
  do
  {
    v4 = hashLookupInt(*(a1 + 72), a2--);
  }

  while (!v4);
  return *(v4 + 8);
}

uint64_t find_off(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = hashLookupInt(*(a2 + 80), a3);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void lf_print_delta(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11, int a12)
{
  v100 = *MEMORY[0x277D85DE8];
  v97 = 0;
  v98 = 0;
  if (a12)
  {
    v17 = a12;
  }

  else
  {
    v17 = 77;
  }

  fill_stream_list(a1, &v97, a5);
  if (v20)
  {
    v21 = print_delta(a1, v18, v19, v97, v98, a6, a7, a8, a9, 0, a11);
    if (v21)
    {
      v22 = v21;
      v95 = a1;
      v96 = a2;
      v23 = 0;
      v24 = 0;
      v25 = 16 * (*(v21 + 28) & ~(*(v21 + 28) >> 31));
      while (v25 != v23)
      {
        v26 = *(v22 + 32) + v23;
        v27 = strlen(*(v26 + 8));
        if (*(v26 + 4))
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v29 = v28 + v27;
        if (v24 <= v29)
        {
          v24 = v29;
        }

        v23 += 16;
      }

      __memset_chk();
      LODWORD(v30) = 0;
      v99[v24] = 0;
      HIDWORD(v94) = v17 - v24;
LABEL_15:
      while ((v30 & 0x80000000) == 0)
      {
        v31 = *(v22 + 64);
        if (v30 >= v31)
        {
          break;
        }

        v32 = 0;
        v33 = v30 + HIDWORD(v94);
        if (v30 + HIDWORD(v94) >= v31)
        {
          v34 = *(v22 + 64);
        }

        else
        {
          v34 = v30 + HIDWORD(v94);
        }

        v35 = *(v22 + 28) & ~(*(v22 + 28) >> 31);
        abs_split = v34;
        while (v32 != v35)
        {
          for (i = v34; i > v30; --i)
          {
            v38 = OUTLINED_FUNCTION_3_66();
            if (can_split_stream_line(v38, v39, i))
            {
              break;
            }
          }

          if (abs_split >= i)
          {
            abs_split = i;
          }

          ++v32;
        }

        if (*(v22 + 68))
        {
          for (j = 0; j < rb_lines(*(v22 + 48)); ++j)
          {
            rb_width(*(v22 + 48));
            OUTLINED_FUNCTION_17_47();
            if (v41 == v42)
            {
              rb_width(*(v22 + 48));
            }

            OUTLINED_FUNCTION_3_66();
            if (abs_split >= prev_abs_split())
            {
              rb_width(*(v22 + 48));
              OUTLINED_FUNCTION_17_47();
              if (v41 == v42)
              {
                rb_width(*(v22 + 48));
              }

              OUTLINED_FUNCTION_3_66();
              abs_split = prev_abs_split();
            }
          }
        }

        v43 = rb_lines(*(v22 + 56));
        if (v43 >= 1)
        {
          for (k = 0; ; ++k)
          {
            v43 = rb_lines(*(v22 + 56));
            if (k >= v43)
            {
              break;
            }

            rb_width(*(v22 + 56));
            OUTLINED_FUNCTION_17_47();
            if (v41 == v42)
            {
              rb_width(*(v22 + 56));
            }

            OUTLINED_FUNCTION_3_66();
            if (abs_split >= prev_ptr_split())
            {
              rb_width(*(v22 + 56));
              OUTLINED_FUNCTION_17_47();
              if (v41 == v42)
              {
                rb_width(*(v22 + 56));
              }

              OUTLINED_FUNCTION_3_66();
              abs_split = prev_ptr_split();
            }
          }
        }

        if (abs_split == v30)
        {
          if (v33 >= *(v22 + 64))
          {
            abs_split = *(v22 + 64);
          }

          else
          {
            abs_split = v30 + HIDWORD(v94);
          }
        }

        v51 = 0;
        while (1)
        {
          v52 = *(v22 + 28);
          if (v51 >= v52)
          {
            break;
          }

          v53 = *(v22 + 32);
          if (*(v53 + 16 * v51 + 4) < 1)
          {
            v54 = 0;
          }

          else
          {
            heading_string_buf[0] = 32;
            v54 = 1u;
          }

          for (m = 0; ; ++m)
          {
            v56 = *(*(v53 + 16 * v51 + 8) + m);
            if (!v56)
            {
              break;
            }

            heading_string_buf[v54 + m] = v56;
            v53 = *(v22 + 32);
          }

          v57 = v54 + m;
          v58 = (v54 + m);
          v59 = 58;
          do
          {
            heading_string_buf[v58] = v59;
            v58 = v57 + 1;
            LODWORD(v54) = v54 + 1;
            v59 = 32;
            ++v57;
          }

          while (v24 > m + v54);
          heading_string_buf[(m + v54)] = 0;
          OUTLINED_FUNCTION_16_49();
          v61 = *(v60 + 8 * v51);
          OUTLINED_FUNCTION_3_66();
          stream_split = next_stream_split();
          OUTLINED_FUNCTION_3_66();
          v63 = next_stream_split();
          v35 = v95;
          lf_put_disp_line(v95, v96, heading_string_buf, v61, v30, stream_split, v63, 0);
          v43 = checkInterrupt(v95);
          ++v51;
          if (v43)
          {
LABEL_74:
            LODWORD(v30) = -1;
            goto LABEL_15;
          }
        }

        if (*(v22 + 68))
        {
          OUTLINED_FUNCTION_11_55(v43, v44, v45, *(*(*(v22 + 40) + 16) + 8 * v52), v46, v47, v48, v49, v92, HIDWORD(v92), v93, v94);
          v64 = 0;
          while (v64 < rb_lines(*(v22 + 48)))
          {
            rb_gets(*(v22 + 48), v64, 0);
            OUTLINED_FUNCTION_3_66();
            next_abs_split();
            OUTLINED_FUNCTION_3_66();
            v65 = next_abs_split();
            OUTLINED_FUNCTION_8_59(v65, v66, v67, v68, v69, v70, v71, v72, v92);
            ++v64;
            if (checkInterrupt(v35))
            {
              goto LABEL_74;
            }
          }
        }

        if (rb_lines(*(v22 + 56)))
        {
          OUTLINED_FUNCTION_16_49();
          OUTLINED_FUNCTION_11_55(v74, v75, v76, *(v73 + 8 * *(v22 + 28)), v77, v78, v79, v80, v92, HIDWORD(v92), v93, v94);
          v81 = 0;
          while (v81 < rb_lines(*(v22 + 56)))
          {
            rb_gets(*(v22 + 56), v81, 0);
            OUTLINED_FUNCTION_3_66();
            next_ptr_split();
            OUTLINED_FUNCTION_3_66();
            ptr_split = next_ptr_split();
            OUTLINED_FUNCTION_8_59(ptr_split, v83, v84, v85, v86, v87, v88, v89, v92);
            ++v81;
            if (checkInterrupt(v35))
            {
              goto LABEL_74;
            }
          }
        }

        vf_puts(v95, v96, "\n", 1);
        v30 = abs_split;
        if (abs_split <= v33)
        {
          v90 = v33;
        }

        else
        {
          v90 = abs_split;
        }

        while (v30 < v33)
        {
          if (*(*(*(*(v22 + 40) + 16) + 8 * *(v22 + 28)) + v30) == 43)
          {
            goto LABEL_15;
          }

          ++v30;
        }

        LODWORD(v30) = v90;
      }

      close_ddisp(v22);
    }
  }

  v91 = *MEMORY[0x277D85DE8];
}

void free_lines(uint64_t a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 32);
    if (v2 > *(a1 + 28))
    {
      break;
    }

    free(*&v4[i]);
    *(*(a1 + 32) + i) = 0;
    ++v2;
  }

  free(v4);
  *(a1 + 32) = 0;
}

void delta_erase(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a2 + 28) > a3)
  {
    if (a4 == a5)
    {
      OUTLINED_FUNCTION_9_58();
      v10 = a3;
      if (*(*(v11 + 8 * a3) + a4) == 124)
      {
        v12 = *(*(a2 + 32) + 16 * a3);
        sync = find_sync(a2, a4);
        if (can_del_sync(a1, v12, sync))
        {
          v14 = *(*(a2 + 32) + 16 * a3);
          v15 = find_sync(a2, a4);
          if (del_sync(a1, v14, v15))
          {
            v16 = OUTLINED_FUNCTION_1_74();
            unregister_sync(v16, v17, a4);
            update_token(a2, a3, (a4 - 1));
          }
        }

LABEL_17:
        OUTLINED_FUNCTION_22_40();
        return;
      }
    }

    else
    {
      v10 = a3;
    }

    v18 = *(*(a2 + 32) + 16 * v10);
    v19 = find_sync(a2, a4);
    v20 = find_sync(a2, a5);
    if (del_two_point(a1, v18, v19, v20))
    {
      v21 = OUTLINED_FUNCTION_1_74();
      v23 = prev_sync(v21, v22, a4);
      v24 = OUTLINED_FUNCTION_1_74();
      v26 = v23;
      v27 = (next_sync(v24, v25, a5) - 1);
      v28 = v23 + 1;
      while (v26 < v27)
      {
        OUTLINED_FUNCTION_9_58();
        v30 = *(*(v29 + 8 * v10) + v26 + 1);
        v31 = OUTLINED_FUNCTION_1_74();
        if (v33 == 124)
        {
          unregister_sync(v31, v32, v28);
        }

        else
        {
          place_char_in_stream(v31, v32, v28, 32);
        }

        ++v28;
        ++v26;
      }
    }

    goto LABEL_17;
  }
}

void unregister_sync(uint64_t a1, int a2, signed int a3)
{
  if (a3 && *(a1 + 64) - 1 != a3)
  {
    place_char_in_stream(a1, a2, a3, 32);
    v5 = 0;
    v6 = *(a1 + 28);
    while (8 * (v6 & ~(v6 >> 31)) != v5)
    {
      v7 = *(*(*(*(a1 + 40) + 16) + v5) + a3);
      v5 += 8;
      if (v7 == 124)
      {
        return;
      }
    }

    place_char(a1, v6, a3, 45);
    v8 = OUTLINED_FUNCTION_1_74();
    sync = find_sync(v8, v9);
    hashDeleteInt(*(a1 + 80), sync);
    hashDeleteInt(*(a1 + 72), a3);
    if (*(a1 + 68))
    {
      rb_strdel(*(a1 + 48), a3);
    }

    if (rb_lines(*(a1 + 56)))
    {
      v11 = *(a1 + 56);

      rb_strdel(v11, a3);
    }
  }
}

unint64_t update_token(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v30 = *MEMORY[0x277D85DE8];
  sync = prev_sync(a1, a2, a3);
  v7 = OUTLINED_FUNCTION_1_74();
  v9 = next_sync(v7, v8, v3);
  v10 = *(*(a1 + 32) + 16 * v4);
  v11 = find_sync(a1, v9);
  result = prev_token(v10, v11);
  if (result)
  {
    v13 = result;
    v14 = v4;
    v15 = sync + 1;
    for (i = v15; ; ++i)
    {
      v17 = OUTLINED_FUNCTION_1_74();
      if (i >= v9)
      {
        break;
      }

      place_char_in_stream(v17, v18, i, 32);
    }

    v19 = OUTLINED_FUNCTION_21_41(v17, v18, v15);
    if (v20)
    {
LABEL_13:
      result = 0;
    }

    else
    {
      v21 = v19;
      v22 = 16 * v4;
      v23 = v19;
      while (v14 < *(a1 + 28))
      {
        v24 = *(a1 + 32);
        v25 = *(v24 + v22);
        if (v25 != *(v24 + 16 * v4))
        {
          break;
        }

        v26 = field_value(v25, v13, *(v24 + v22 + 4), v29);
        inserted = insert_token_name(a1, v14, v21, v26);
        if (inserted == -1)
        {
          goto LABEL_13;
        }

        if (v23 <= inserted)
        {
          v23 = inserted;
        }

        ++v14;
        v22 += 16;
      }

      OUTLINED_FUNCTION_21_41(a1, v4, v23);
      if (v20)
      {
        result = 0;
      }

      else
      {
        result = 1;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t prev_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 28);
  if (a3 >= -1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = a3;
  }

  if (v4 <= a2)
  {
    while ((a3 & 0x80000000) == 0)
    {
      if (*(*(*(*(a1 + 40) + 16) + 8 * v4) + a3) == 43)
      {
        return OUTLINED_FUNCTION_10_56(result, a2, a3);
      }

      a3 = (a3 - 1);
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) != 124)
    {
      a3 = (a3 - 1);
      if ((a3 & 0x80000000) != 0)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_10_56(result, a2, a3);
  }

  return result;
}

uint64_t next_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 28);
  v4 = *(*(a1 + 40) + 16);
  result = a3;
  if (v3 <= a2)
  {
    v7 = *(v4 + 8 * v3);
    while (*(v7 + result) && *(v7 + result) != 43)
    {
      ++result;
    }
  }

  else
  {
    v6 = *(v4 + 8 * a2);
    while (*(v6 + result) && *(v6 + result) != 124)
    {
      ++result;
    }
  }

  return result;
}

void place_char_in_stream(uint64_t a1, int a2, int a3, char a4)
{
  v6 = a2;
  v8 = a2;
  v9 = a2 - 1;
  v10 = 16 * a2;
  while (1)
  {
    v11 = __OFSUB__(v6, 1);
    if (--v6 < 0 != v11 || *(*(a1 + 32) + 16 * v9) != *(*(a1 + 32) + v10))
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_20_44();
    place_char(v12, v13, a3, a4);
    --v9;
  }

  for (i = v10; v8 < *(a1 + 28) && *(*(a1 + 32) + i) == *(*(a1 + 32) + v10); i += 16)
  {
    place_char(a1, v8++, a3, a4);
  }

  OUTLINED_FUNCTION_22_40();
}

uint64_t insert_spaces(uint64_t a1, int a2, uint64_t a3, int a4)
{
  for (i = 0; ; ++i)
  {
    v9 = *(a1 + 28);
    if (i >= v9)
    {
      break;
    }

    if (a2 == i)
    {
      v10 = *(a1 + 40);
      v11 = a2;
      space_or_sync = a3;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_20_44();
      space_or_sync = next_space_or_sync(v13, v14, a3);
      v10 = *(a1 + 40);
      v11 = i;
    }

    result = rb_inscn(v10, v11, space_or_sync, 32, a4);
    if (!result)
    {
      return result;
    }
  }

  result = rb_inscn(*(a1 + 40), v9, a3, 45, a4);
  if (result)
  {
    shift_table_right(*(a1 + 72), a3, *(a1 + 64), a4);
    *(a1 + 64) += a4;
    result = rb_push(*(a1 + 48), a3, a4);
    if (result)
    {
      return rb_push(*(a1 + 56), a3, a4) != 0;
    }
  }

  return result;
}

uint64_t next_space_or_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3); ; ++i)
  {
    v4 = *i;
    if (v4 != 39)
    {
      break;
    }

    if (i[1] == 32 && i[2] == 39)
    {
      LODWORD(a3) = a3 + 2;
      i += 2;
    }

LABEL_10:
    a3 = (a3 + 1);
  }

  if (*i && v4 != 32 && v4 != 124)
  {
    goto LABEL_10;
  }

  return OUTLINED_FUNCTION_10_56(a1, a2, a3);
}

_DWORD *shift_table_right(_DWORD *result, int a2, unsigned int a3, int a4)
{
  v6 = result;
  v7 = a4 + a2;
  while ((a4 + a3) >= v7)
  {
    result = hashMoveInt(v6, a3, a4 + a3);
    if (result)
    {
      *result = a4 + a3;
    }

    --a3;
  }

  return result;
}

uint64_t place_sync(uint64_t a1, uint64_t a2, int a3, signed int a4)
{
  if (preceded_by_token(a2, a3))
  {
    v8 = OUTLINED_FUNCTION_6_61();
    if (followed_by_token(v8, v9))
    {
      return 0;
    }

    v20 = *(*(a2 + 32) + 16 * a3);
    v21 = OUTLINED_FUNCTION_6_61();
    sync = next_sync(v21, v22, v23);
    find_sync(a2, sync);
    v16 = OUTLINED_FUNCTION_20_44();
    v19 = 1;
  }

  else
  {
    v11 = *(*(a2 + 32) + 16 * a3);
    v12 = OUTLINED_FUNCTION_6_61();
    v15 = prev_sync(v12, v13, v14);
    find_sync(a2, v15);
    v16 = OUTLINED_FUNCTION_20_44();
    v19 = 0;
  }

  v25 = ins_sync(v16, v17, v18, v19);
  place_char_in_stream(a2, a3, a4, 124);
  OUTLINED_FUNCTION_9_58();
  if (*(*(v26 + 8 * *(a2 + 28)) + a4) == 43)
  {
    return 1;
  }

  result = new_sync(a2, v25, a4);
  if (result)
  {
    if (!*(a2 + 68))
    {
      return 1;
    }

    v27 = absoluteSyncNum(a1, v25);
    __sprintf_chk(v28, 0, 6uLL, "%i", v27);
    result = rb_stradd(*(a2 + 48), a4, v28);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL preceded_by_token(uint64_t a1, int a2)
{
  if (*(a1 + 28) <= a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_53(a1, a2);
  return *(v2 + prev_non_blank(v3, v5, (v4 - 1))) != 124;
}

BOOL followed_by_token(uint64_t a1, int a2)
{
  if (*(a1 + 28) <= a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_53(a1, a2);
  return *(v2 + next_non_blank(v3, v5, (v4 + 1))) != 124;
}

void *new_sync(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!hashLookupInt(*(a1 + 72), a3) && !hashLookupInt(*(a1 + 80), a2))
  {
    v8 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
    v6 = v8;
    if (!v8)
    {
      return v6;
    }

    *v8 = a3;
    *(v8 + 1) = a2;
    if (hashInsertInt(*(a1 + 72), a3, v8) && hashInsertInt(*(a1 + 80), a2, v6))
    {
      place_char(a1, *(a1 + 28), a3, 43);
      return v6;
    }

    free(v6);
  }

  return 0;
}