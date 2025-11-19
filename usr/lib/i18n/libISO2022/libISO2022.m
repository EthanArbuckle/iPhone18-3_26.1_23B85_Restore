uint64_t _citrus_ISO2022_stdenc_init(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v7 = malloc_type_calloc(1uLL, 0x58uLL, 0x10200402AC5C75EuLL);
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v37 = a1;
      v38 = a4;
      v7[2] = 0u;
      v9 = (v7 + 2);
      *(v7 + 10) = 0;
      *v7 = 0u;
      v7[1] = 0u;
      v7[3] = 0u;
      v10 = *a2;
      if (*a2)
      {
        v36 = 0;
        v35 = (v7 + 4);
        while (1)
        {
          while (v10 == 9 || v10 == 32)
          {
            v11 = *++a2;
            v10 = v11;
          }

          v12 = 0;
          while (v10 > 0x20 || ((1 << v10) & 0x100000201) == 0)
          {
            v10 = a2[++v12];
          }

          if (!v12)
          {
            goto LABEL_94;
          }

          if (v12 > 0x13)
          {
            goto LABEL_95;
          }

          snprintf(__str, 0x14uLL, "%.*s", v12, a2);
          v13 = __str[0];
          if (memchr("0123", __str[0], 5uLL))
          {
            if (__str[1] == 61)
            {
              break;
            }
          }

          if (*__str == 1414090313)
          {
            v21 = __str[4];
            if (memchr("0123", __str[4], 5uLL))
            {
              if (__str[5] == 61)
              {
                if (__c_2 != 57)
                {
                  goto LABEL_95;
                }

                if (__c_3 != 54)
                {
                  if (__c_3 != 52)
                  {
                    goto LABEL_95;
                  }

                  v22 = v42;
                  if (v42 == 36)
                  {
                    v23 = v43;
                    if (!v43 || v44)
                    {
                      goto LABEL_44;
                    }

                    v24 = 2;
                  }

                  else
                  {
                    if (!v42)
                    {
                      goto LABEL_95;
                    }

                    v23 = v43;
LABEL_44:
                    if (v23)
                    {
                      goto LABEL_95;
                    }

                    v24 = 0;
LABEL_60:
                    LOBYTE(v23) = v22;
                  }

LABEL_61:
                  v26 = &v35[4 * v21];
                  *(v26 - 192) = v24;
                  *(v26 - 191) = v23;
                  *(v26 - 95) = 0;
                  goto LABEL_81;
                }

                v22 = v42;
                if (v42 == 36)
                {
                  v23 = v43;
                  if (v43 && !v44)
                  {
                    v24 = 3;
                    goto LABEL_61;
                  }
                }

                else
                {
                  if (!v42)
                  {
                    goto LABEL_95;
                  }

                  v23 = v43;
                }

                if (v23)
                {
                  goto LABEL_95;
                }

                v24 = 1;
                goto LABEL_60;
              }
            }
          }

          if (!(*__str ^ 0x3158414D | __str[4]))
          {
            v25 = 1;
LABEL_54:
            *(v8 + 20) = v25;
            goto LABEL_81;
          }

          if (!(*__str ^ 0x3258414D | __str[4]))
          {
            v25 = 2;
            goto LABEL_54;
          }

          if (!(*__str ^ 0x3358414D | __str[4]))
          {
            v25 = 3;
            goto LABEL_54;
          }

          if (*__str != 1296913732 || *&__str[4] != 89)
          {
            v17 = 16;
            v18 = &get_flags_tags;
            while (--v17)
            {
              v19 = v18 + 2;
              v20 = strcmp(__str, v18[2]);
              v18 = v19;
              if (!v20)
              {
                goto LABEL_63;
              }
            }

LABEL_95:
            free(*v8);
            free(*(v8 + 1));
            free(*(v8 + 2));
            free(*(v8 + 3));
            goto LABEL_96;
          }

          v19 = &get_flags_tags;
LABEL_63:
          v36 |= *(v19 + 2);
          *(v8 + 21) = v36;
LABEL_81:
          a2 += v12;
          v10 = *a2;
          if (!*a2)
          {
            goto LABEL_94;
          }
        }

        if (__str[2] != 57)
        {
          goto LABEL_69;
        }

        if (__str[3] == 54)
        {
          v14 = __str[4];
          if (__str[4])
          {
            if (__str[4] == 36)
            {
              v14 = __str[5];
              if (__str[5])
              {
                if (!__c_2)
                {
                  v15 = 3;
                  goto LABEL_75;
                }

                goto LABEL_69;
              }

              v15 = 1;
              goto LABEL_91;
            }

            if (!__str[5])
            {
              v15 = 1;
              goto LABEL_75;
            }

LABEL_69:
            if (*&__str[2] == 2372665)
            {
              v14 = 2;
            }

            else
            {
              if (*&__str[2] != 2373177)
              {
                goto LABEL_95;
              }

              v14 = 3;
            }

            v27 = &__str[5];
            goto LABEL_74;
          }

          v14 = 1;
        }

        else
        {
          if (__str[3] != 52)
          {
            goto LABEL_69;
          }

          v14 = __str[4];
          if (__str[4])
          {
            if (__str[4] == 36)
            {
              v14 = __str[5];
              if (__str[5])
              {
                if (!__c_2)
                {
                  v15 = 2;
LABEL_75:
                  v28 = v13 - 48;
                  v29 = *(v8 + v28);
                  if (v29)
                  {
                    v30 = *&v9[8 * v28];
                    v31 = malloc_type_realloc(v29, 4 * v30 + 4, 0x100004052888210uLL);
                    if (!v31)
                    {
                      goto LABEL_95;
                    }

                    *(v8 + v28) = v31;
                  }

                  else
                  {
                    v31 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
                    *(v8 + v28) = v31;
                    if (!v31)
                    {
                      goto LABEL_95;
                    }

                    v30 = *&v9[8 * v28];
                  }

                  *&v9[8 * v28] = v30 + 1;
                  v31[4 * v30 + 1] = v14;
                  v32 = &v31[4 * v30 + 4];
                  *(v32 - 1) = 0;
                  *(v32 - 4) = v15;
                  goto LABEL_81;
                }

                goto LABEL_69;
              }

              v15 = 0;
LABEL_91:
              v14 = 36;
              goto LABEL_75;
            }

            if (!__str[5])
            {
              v15 = 0;
              goto LABEL_75;
            }

            goto LABEL_69;
          }
        }

        v27 = &__str[4];
LABEL_74:
        v15 = v14;
        v14 = *v27;
        goto LABEL_75;
      }

LABEL_94:
      result = 0;
      *(v37 + 8) = v8;
      *v38 = xmmword_29601CE80;
      *(v38 + 16) = 1;
    }

    else
    {
LABEL_96:
      free(v8);
      result = 79;
    }
  }

  else
  {
    result = *__error();
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void _citrus_ISO2022_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_ISO2022_stdenc_init_state(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 84))
  {
    v3 = 8;
  }

  else
  {
    v3 = 56;
  }

  *(a2 + 16) = v3 | *(a2 + 16) & 0xFFC0;
  v4 = (v2 + 66);
  v5 = (a2 + 2);
  v6 = 4;
  do
  {
    v7 = *(v4 - 1);
    if (v7)
    {
      *(v5 - 2) = *(v4 - 2);
      *(v5 - 1) = v7;
      *v5 = *v4;
    }

    v4 += 4;
    v5 += 4;
    --v6;
  }

  while (v6);
  *(a2 + 16) |= 0xFC0u;
  *(a2 + 40) |= 1u;
  return 0;
}

uint64_t _citrus_ISO2022_stdenc_mbtocs(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 **a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v19 = 0;
  v12 = _citrus_ISO2022_mbrtowc_priv(*(a1 + 8), &v19, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      if ((v19 & 0x800000) != 0)
      {
        v14 = 2147451008;
      }

      else
      {
        v14 = 2130739328;
      }

      v15 = v14 & v19;
      if ((v19 & 0x800000) != 0)
      {
        v16 = 32639;
      }

      else
      {
        v16 = 8355711;
      }

      v17 = v16 & v19;
      v18 = v15 | 0x7F0000;
      if (v17 >= 0x100)
      {
        v15 |= 0x7F00u;
      }

      if (v17 >= 0x10000)
      {
        v15 = v18;
      }

      *a2 = v15;
      *a3 = v17;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_ISO2022_stdenc_cstomb(uint64_t a1, void *a2, size_t a3, int a4, int a5, uint64_t a6, size_t *a7)
{
  if (a4 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 & 0x7F808080 | a5;
  }

  return _citrus_ISO2022_wcrtomb_priv(*(a1 + 8), a2, a3, v7, a6, a7);
}

uint64_t _citrus_ISO2022_stdenc_mbtowc(uint64_t a1, _DWORD *a2, unsigned __int8 **a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v9 = _citrus_ISO2022_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_ISO2022_stdenc_put_state_reset(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, size_t *a5)
{
  v8 = *(a1 + 8);
  v11 = 0;
  result = _ISO2022_sputwchar(v8, 0, __src, &v13, a4, &v11);
  v10 = v11;
  if (!result)
  {
    if (v11 <= 6 && (v10 = v11 - 1, v11 - 1 <= a3))
    {
      memcpy(a2, __src, v10);
      result = 0;
    }

    else
    {
      result = 7;
      v10 = -1;
    }
  }

  *a5 = v10;
  return result;
}

uint64_t _citrus_ISO2022_stdenc_get_state_desc(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (a3)
  {
    return 102;
  }

  if (*(a2 + 32))
  {
    if (*(a2 + 18) == 27)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  result = 0;
  *a4 = v5;
  return result;
}

uint64_t _citrus_ISO2022_stdenc_getops(uint64_t a1)
{
  v1 = *&off_2A1A8EF20;
  *a1 = _citrus_ISO2022_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8EF30;
  v3 = *&off_2A1A8EF40;
  v4 = xmmword_2A1A8EF50;
  *(a1 + 80) = qword_2A1A8EF60;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_ISO2022_mbrtowc_priv(uint64_t a1, _DWORD *a2, unsigned __int8 **a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a6;
  v8 = *a3;
  if (*a3)
  {
    v9 = *(a5 + 32);
    if (v9 >= 8)
    {
      v41 = a6;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *a5 = 0u;
      if (*(a1 + 84))
      {
        v10 = 8;
      }

      else
      {
        v10 = 56;
      }

      *(a5 + 16) = v10 | *(a5 + 16) & 0xFFC0;
      v11 = (a1 + 66);
      v12 = (a5 + 2);
      v13 = 4;
      do
      {
        v14 = *(v11 - 1);
        if (v14)
        {
          *(v12 - 2) = *(v11 - 2);
          *(v12 - 1) = v14;
          *v12 = *v11;
        }

        v11 += 4;
        v12 += 4;
        --v13;
      }

      while (v13);
      *(a5 + 16) |= 0xFC0u;
      *(a5 + 40) |= 1u;
LABEL_11:
      *(a5 + 32) = 0;
      result = 92;
      v16 = -1;
      v6 = v41;
      goto LABEL_50;
    }

    __src = 0;
    if (v9)
    {
      v41 = a6;
      v25 = 0;
      v26 = a5 + 18;
      v27 = (a5 + 18);
      while (1)
      {
        v28 = *(a5 + 32);
        if (v28 > 6)
        {
          goto LABEL_11;
        }

        if (a4)
        {
          v29 = *v8++;
          *(a5 + 32) = v28 + 1;
          *(v26 + v28) = v29;
          --a4;
          v28 = *(a5 + 32);
        }

        v30 = _ISO2022_sgetwchar(v27, v26 - v27 + v28, &__src, a5);
        v31 = (__src - v27);
        v25 += __src - v27;
        if (v30 != -1)
        {
          v37 = v30;
          v38 = *(a5 + 32);
          if (v38 > v25)
          {
            memmove((a5 + 18), __src, v38 - v25);
            v38 = *(a5 + 32);
          }

          v39 = v38 >= v25;
          v40 = v38 - v25;
          if (!v39)
          {
            v40 = 0;
          }

          v6 = v41;
          goto LABEL_40;
        }

        v27 = __src;
        if (!a4)
        {
          if (v31 == *(a5 + 32))
          {
            v32 = 0;
            v33 = v8;
            goto LABEL_47;
          }

          v33 = v8;
          v6 = v41;
          goto LABEL_49;
        }
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = _ISO2022_sgetwchar(v8, a4, &__src, a5);
      v33 = __src;
      if (v35 != -1)
      {
        break;
      }

      v36 = __src - v8;
      if (__src <= v8)
      {
        v41 = v6;
        v32 = a4 + v34;
        if (v32 > 6)
        {
          goto LABEL_11;
        }

        memcpy((a5 + 18), &v8[-v34], a4 + v34);
LABEL_47:
        v6 = v41;
        *(a5 + 32) = v32;
LABEL_49:
        result = 0;
        *a3 = v33;
        v16 = -2;
        goto LABEL_50;
      }

      v34 += v36;
      v8 = __src;
      a4 -= v36;
      if (!a4)
      {
        goto LABEL_49;
      }
    }

    v37 = v35;
    v40 = 0;
    v25 = v34 + __src - v8;
    v8 = __src;
LABEL_40:
    *(a5 + 32) = v40;
    *a3 = v8;
    if (a2)
    {
      *a2 = v37;
    }

    result = 0;
    LODWORD(v16) = v25 - v9;
    if (!v37)
    {
      LODWORD(v16) = 0;
    }

    v16 = v16;
  }

  else
  {
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    if (*(a1 + 84))
    {
      v17 = 8;
    }

    else
    {
      v17 = 56;
    }

    *(a5 + 16) = v17 | *(a5 + 16) & 0xFFC0;
    v18 = (a1 + 66);
    v19 = (a5 + 2);
    v20 = 4;
    do
    {
      v21 = *(v18 - 1);
      if (v21)
      {
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = v21;
        *v19 = *v18;
      }

      v18 += 4;
      v19 += 4;
      --v20;
    }

    while (v20);
    result = 0;
    *(a5 + 16) |= 0xFC0u;
    *(a5 + 40) |= 1u;
    v16 = 1;
  }

LABEL_50:
  *v6 = v16;
  return result;
}

uint64_t _ISO2022_sgetwchar(unsigned __int8 *a1, unint64_t a2, void *a3, uint64_t a4)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
      if (!a2)
      {
        goto LABEL_9;
      }

      result = *a1;
      if (*a1 > 0x1Au)
      {
        break;
      }

      if (result != 14)
      {
        if (result == 15)
        {
          v9 = *(a4 + 16) & 0xFFF8;
          goto LABEL_19;
        }

        if (!*a1)
        {
          goto LABEL_108;
        }

LABEL_47:
        if (result >= 0x20 && (result - 127) >= 0x21)
        {
          v27 = *(a4 + 16);
          v28 = 4;
          if ((result & 0x80u) == 0)
          {
            v28 = 7;
          }

          v29 = v27 << v28 << 16 >> 29;
          v30 = 10;
          if ((result & 0x80u) == 0)
          {
            v30 = 13;
          }

          v31 = v27 << v30 << 16 >> 29;
          if (v29 == -1)
          {
            v29 = v31;
          }

          if (v29 != -1)
          {
            v32 = (a4 + 4 * v29);
            v33 = *v32;
            if ((v33 & 0xFE) == 2)
            {
              if ((v32[1] & 0xF0) == 0x60)
              {
                if (a2 < 3 || (result & 0x80) != (a1[1] & 0x80) || (result & 0x80) != (a1[2] & 0x80))
                {
                  goto LABEL_75;
                }
              }

              else if (a2 == 1 || ((a1[1] ^ result) & 0x80) != 0)
              {
                goto LABEL_75;
              }
            }

            if (*v32 <= 1u)
            {
              if (*v32)
              {
                if ((result & 0x60) != 0)
                {
                  v34 = v32[1];
                  v35 = v32[2];
                  if (v34 == 65 && v35 == 0)
                  {
                    ++a1;
                    result = result | 0x80;
                  }

                  else
                  {
                    if (v35)
                    {
                      v37 = (v35 << 16) | 0x800000;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    ++a1;
                    result = v37 | (v34 << 24) | result | 0x80;
                  }

                  goto LABEL_114;
                }
              }

              else
              {
                v39 = result & 0x7F;
                if (v39 >= 0x21 && v39 != 127)
                {
                  v40 = v32[1];
                  v41 = v32[2];
                  if (v40 == 66 && v41 == 0)
                  {
                    ++a1;
                    result &= 0x7Fu;
                  }

                  else
                  {
                    if (v41)
                    {
                      v43 = (v41 << 16) | 0x800000;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    ++a1;
                    result = v43 | (v40 << 24) | v39;
                  }

                  goto LABEL_114;
                }
              }

              goto LABEL_108;
            }

            if (v33 == 2)
            {
              v38 = result & 0x7F;
              if (v38 < 0x21)
              {
                goto LABEL_108;
              }

              if (v38 == 127)
              {
                goto LABEL_108;
              }

              v44 = a1[1] & 0x7F;
              if (v44 < 0x21 || v44 == 127)
              {
                goto LABEL_108;
              }

LABEL_100:
              v45 = v32[1];
              if ((v45 & 0xF0) == 0x60)
              {
                v46 = a1 + 1;
              }

              else
              {
                v46 = a1;
              }

              if ((v45 & 0xF0) != 0x60)
              {
                v38 = 0;
              }

              a1 = v46 + 2;
              v47 = (v45 << 24) | (v38 << 16) | ((*v46 & 0x7F) << 8) | v46[1] & 0x7F;
              if (v33 == 3)
              {
                result = v47 | 0x80;
              }

              else
              {
                result = v47;
              }

              goto LABEL_114;
            }

            if (v33 != 3)
            {
              result = 0;
LABEL_114:
              if (a3)
              {
                *a3 = a1;
              }

LABEL_111:
              *(a4 + 16) = v27 | 0xFC0;
              return result;
            }

            if ((result & 0x60) != 0 && (a1[1] & 0x60) != 0)
            {
              v38 = result & 0x7F;
              goto LABEL_100;
            }
          }
        }

LABEL_108:
        if (a3)
        {
          *a3 = a1 + 1;
        }

        LOWORD(v27) = *(a4 + 16);
        goto LABEL_111;
      }

      v9 = *(a4 + 16) & 0xFFF8 | 1;
LABEL_19:
      *(a4 + 16) = v9;
      ++a1;
      --a2;
    }

    if ((result - 142) < 2)
    {
      v9 = *(a4 + 16) & 0xF03F | ((result & 7 ^ 4) << 9) | ((result & 7 ^ 4) << 6);
      goto LABEL_19;
    }

    if (result != 27)
    {
      goto LABEL_47;
    }

LABEL_9:
    v10 = 3;
    v11 = &seqtable;
    while (1)
    {
      v12 = seqmatch(a1, a2, v11);
      if (a2 >= v10 && v10 == v12)
      {
        break;
      }

      v10 = v11[21];
      v11 += 16;
      if (!v10)
      {
        goto LABEL_38;
      }
    }

    v13 = *v11;
    if (v13 == -1)
    {
      break;
    }

    v14 = v11[1];
    if (v14 == -1)
    {
      v15 = 0;
    }

    else
    {
      if (v13 > 3)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = qword_29601D2D0[v13] + a1[v14];
    }

    v20 = a4 + 4 * v15;
    *v20 = v13;
    *(v20 + 1) = 0;
    *(v20 + 3) = 0;
    v21 = v11[2];
    if (v21 != -1)
    {
      *(v20 + 1) = a1[v21];
    }

    v22 = v11[3];
    if (v22 != -1)
    {
      *(v20 + 2) = a1[v22];
    }

    v23 = v11[4];
    if (v23 != -1)
    {
      *(v20 + 3) = a1[v23];
    }

    a1 += v10;
    a2 -= v10;
  }

  if (a2 >= 2 && *a1 == 27)
  {
    v16 = a1[1];
    v17 = v16;
    if ((v16 - 110) < 2)
    {
      v18 = v16 & 7 ^ 4;
      v19 = *(a4 + 16) & 0xFFF8;
LABEL_37:
      *(a4 + 16) = v19 | v18;
      a1 += 2;
      a2 -= 2;
      goto LABEL_1;
    }

    if (a1[1])
    {
      if (memchr("~}|", v16, 4uLL))
      {
        v18 = (56 - 8 * v17) & 0x38;
        v19 = *(a4 + 16) & 0xFFC7;
        goto LABEL_37;
      }

      if ((v17 & 0xFFFFFFFE) == 0x4E)
      {
        v18 = (v17 & 3) << 6;
        v19 = *(a4 + 16) & 0xFE3F;
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  v24 = &seqtable;
  v25 = 3;
  do
  {
    v26 = seqmatch(a1, a2, v24);
    if (v26)
    {
      if (a2 >= v25)
      {
        if (v26 == v25)
        {
          break;
        }
      }

      else if (a2 == v26)
      {
        goto LABEL_75;
      }
    }

    v25 = v24[21];
    v24 += 16;
  }

  while (v25);
  if (a2)
  {
    result = *a1;
    goto LABEL_47;
  }

LABEL_75:
  if (a3)
  {
    *a3 = a1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t seqmatch(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 0;
    v6 = (a3 + 24);
    v7 = *(a3 + 20);
    for (i = 4; ; i += 4)
    {
      if (v5 >= v7)
      {
        return v5;
      }

      v9 = *v6;
      v10 = *a1;
      if (*v6 <= -2)
      {
        if (v9 == -3)
        {
          if (!*a1)
          {
            return v5;
          }

          v11 = "@AB";
          v12 = 4;
LABEL_21:
          if (!memchr(v11, v10, v12))
          {
            return v5;
          }

          goto LABEL_24;
        }

        if (v9 != -2)
        {
LABEL_23:
          if (v9 != v10)
          {
            return v5;
          }

          goto LABEL_24;
        }

        if ((v10 & 0xFFFFFFF0) != 0x20)
        {
          return v5;
        }
      }

      else
      {
        if (v9 == 1)
        {
          if (!*a1)
          {
            return v5;
          }

          v11 = ",-./";
LABEL_18:
          v12 = 5;
          goto LABEL_21;
        }

        if (!v9)
        {
          if (!*a1)
          {
            return v5;
          }

          v11 = "()*+";
          goto LABEL_18;
        }

        if (v9 != -1)
        {
          goto LABEL_23;
        }

        if (v10 <= 47)
        {
          return v5;
        }
      }

LABEL_24:
      ++v6;
      ++a1;
      v5 = i >> 2;
      if (v5 >= a2)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t _citrus_ISO2022_wcrtomb_priv(uint64_t a1, void *a2, size_t a3, unsigned int a4, uint64_t a5, size_t *a6)
{
  __n = 0;
  result = _ISO2022_sputwchar(a1, a4, __src, &v14, a5, &__n);
  v10 = __n;
  if (!result)
  {
    if (__n > 6 || __n > a3)
    {
      result = 7;
      v10 = -1;
    }

    else
    {
      memcpy(a2, __src, __n);
      result = 0;
    }
  }

  *a6 = v10;
  return result;
}

uint64_t _ISO2022_sputwchar(uint64_t a1, unsigned int a2, char *__dst, void *a4, uint64_t a5, uint64_t *a6)
{
  v7 = a2;
  if (a2 > 0x1Fu)
  {
    if (a2 > -97)
    {
      if (a2 > 0xFF)
      {
        v9 = HIBYTE(a2) & 0x7F;
        v10 = HIWORD(a2) & ((a2 << 8) >> 31) & 0x7F;
        if ((a2 & 0x7F00) != 0)
        {
          v11 = 3;
        }

        else
        {
          v11 = 1;
        }

        if ((a2 & 0x80) != 0)
        {
          LOBYTE(v8) = v11;
        }

        else
        {
          LOBYTE(v8) = 2 * ((a2 & 0x7F00) != 0);
        }
      }

      else
      {
        LOBYTE(v10) = 0;
        LOBYTE(v8) = a2 > 0x7F;
        if (a2 > 0x7F)
        {
          LOBYTE(v9) = 65;
        }

        else
        {
          LOBYTE(v9) = 66;
        }
      }

      goto LABEL_20;
    }

    if (!*(a1 + 69))
    {
      LOBYTE(v10) = 0;
      LOBYTE(v8) = 1;
      LOBYTE(v9) = 65;
      goto LABEL_20;
    }

    v8 = *(a1 + 68);
  }

  else
  {
    if (!*(a1 + 65))
    {
      LOBYTE(v10) = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 66;
      goto LABEL_20;
    }

    v8 = *(a1 + 64);
  }

  v9 = v8 >> 8;
  v10 = HIWORD(v8);
LABEL_20:
  v12 = 0;
  v13 = a1 + 32;
  while (1)
  {
    v14 = *(v13 + 8 * v12);
    if (v14)
    {
      break;
    }

LABEL_27:
    if (++v12 == 4)
    {
      v12 = 0;
      while (1)
      {
        v16 = *(v13 + 8 * v12);
        if (v16)
        {
          break;
        }

LABEL_37:
        if (++v12 == 4)
        {
          LODWORD(v12) = ((v8 - 1) & 0xFD) == 0;
          if (!*(a1 + 80))
          {
            LODWORD(v12) = 0;
          }

          goto LABEL_40;
        }
      }

      v17 = (*(a1 + 8 * v12) + 2);
      while (*(v17 - 2) != v8 || v9 && *(v17 - 1) != v9 || v10 && *v17 != v10)
      {
        v17 += 4;
        if (!--v16)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_40;
    }
  }

  v15 = (*(a1 + 8 * v12) + 2);
  while (*(v15 - 2) != v8 || *(v15 - 1) != v9 || *v15 != v10)
  {
    v15 += 4;
    if (!--v14)
    {
      goto LABEL_27;
    }
  }

LABEL_40:
  v18 = *(a1 + 84);
  v19 = v12;
  v20 = (a5 + 4 * v12);
  if (*v20 != v8 || v20[1] != v9 || v20[2] != v10)
  {
    __src = 27;
    if ((v8 & 0xFE) == 2)
    {
      v22 = &v44;
      v43 = 36;
      if (!v12 && v8 == 2)
      {
        v39 = v18;
        v40 = a2;
        v41 = a5;
        v23 = a4;
        v24 = __dst;
        v25 = a6;
        v26 = memchr("@AB", v9, 4uLL);
        v27 = "()*+";
        if (v26)
        {
          a6 = v25;
          if (!v10)
          {
            __dst = v24;
            a4 = v23;
            a5 = v41;
            v18 = v39;
            v7 = v40;
            if ((v39 & 2) == 0)
            {
LABEL_57:
              *v22 = v9;
              p_src = v22 + 1;
              *v20 = v8;
              v20[1] = v9;
              v20[2] = v10;
              goto LABEL_58;
            }

LABEL_54:
            *v22 = v27[v19];
            if (v10)
            {
              v22[1] = v10;
              v22 += 2;
            }

            else
            {
              ++v22;
            }

            goto LABEL_57;
          }
        }

        else
        {
          a6 = v25;
        }

        __dst = v24;
        a4 = v23;
        a5 = v41;
        v18 = v39;
        v7 = v40;
        goto LABEL_54;
      }
    }

    else
    {
      v22 = &v43;
    }

    v27 = ",-./";
    if ((v8 & 0xFD) == 0)
    {
      v27 = "()*+";
    }

    goto LABEL_54;
  }

  p_src = &__src;
LABEL_58:
  v28 = *(a5 + 16);
  if (v19 != (v28 << 29) >> 29 && ((v18 & 1) == 0 || v19 != (v28 << 10) >> 13))
  {
    switch(v19)
    {
      case 2:
        if ((v18 & 0x40) != 0)
        {
          *p_src = 28187;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFFF8 | 2;
          goto LABEL_92;
        }

        if ((~v18 & 0x201) == 0)
        {
          *p_src = 32027;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFFC7 | 0x10;
          goto LABEL_92;
        }

        if ((v18 & 0x800) != 0)
        {
          *p_src = 19995;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFE3F | 0x80;
          goto LABEL_92;
        }

        if ((~v18 & 0x2001) != 0)
        {
          goto LABEL_106;
        }

        *p_src = 20110;
        p_src += 2;
        v30 = *(a5 + 16);
        v31 = 18;
        break;
      case 1:
        if ((v18 & 0x20) != 0)
        {
          *p_src++ = 14;
          v28 = *(a5 + 16) & 0xFFF8 | 1;
          goto LABEL_92;
        }

        if ((~v18 & 0x101) == 0)
        {
          *p_src = 32283;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFFC7 | 8;
          goto LABEL_92;
        }

LABEL_106:
        result = 92;
LABEL_118:
        v37 = -1;
        goto LABEL_122;
      case 0:
        if ((v18 & 0x10) != 0)
        {
          *p_src++ = 15;
          v28 = *(a5 + 16) & 0xFFF8;
LABEL_92:
          *(a5 + 16) = v28;
          goto LABEL_93;
        }

        goto LABEL_106;
      default:
        if (v19 == 3 && (v18 & 0x80) != 0)
        {
          *p_src = 28443;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFFF8 | 3;
          goto LABEL_92;
        }

        v29 = v18 & (v19 == 3);
        if (v29 == 1 && (v18 & 0x400) != 0)
        {
          *p_src = 31771;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFFC7 | 0x18;
          goto LABEL_92;
        }

        if (v19 == 3 && (v18 & 0x1000) != 0)
        {
          *p_src = 20251;
          p_src += 2;
          v28 = *(a5 + 16) & 0xFE3F | 0xC0;
          goto LABEL_92;
        }

        if ((v29 & ((v18 & 0x4000) >> 14)) != 1)
        {
          goto LABEL_106;
        }

        *p_src = 20367;
        p_src += 2;
        v30 = *(a5 + 16);
        v31 = 27;
        break;
    }

    v28 = v30 & 0xFFFFF03F | ((v31 & 0x3F) << 6);
    goto LABEL_92;
  }

LABEL_93:
  if (v19 == (v28 << 7) >> 13)
  {
LABEL_94:
    v32 = 0;
    goto LABEL_97;
  }

  if (v19 != (16 * v28) >> 13)
  {
    if (v19 == (v28 << 29) >> 29)
    {
      goto LABEL_94;
    }

    if ((v18 & 1) == 0 || v19 != (v28 << 10) >> 13)
    {
      goto LABEL_106;
    }
  }

  v32 = 0x80;
LABEL_97:
  if (v8 < 2u)
  {
    v33 = 1;
  }

  else
  {
    if (v8 - 2 > 1)
    {
      goto LABEL_114;
    }

    v33 = 1;
    if (v7 >= 0x20 && v7 - 127 >= 0x21)
    {
      if ((v9 & 0xF0) == 0x60)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }
    }
  }

  if (&__src - p_src + 6 < v33)
  {
    goto LABEL_106;
  }

  v35 = v33 + 1;
  v36 = 8 * v33 - 8;
  do
  {
    *p_src++ = (a2 >> v36) & 0x7F | v32;
    --v35;
    v36 -= 8;
  }

  while (v35 > 1);
  LOWORD(v28) = *(a5 + 16);
LABEL_114:
  *(a5 + 16) = v28 | 0xFC0;
  v37 = p_src - &__src;
  if ((p_src - &__src) >= 7)
  {
    if (a4)
    {
      *a4 = 0;
    }

    result = 7;
    goto LABEL_118;
  }

  v38 = a6;
  if (a4)
  {
    *a4 = &__dst[v37];
  }

  memcpy(__dst, &__src, p_src - &__src);
  result = 0;
  a6 = v38;
LABEL_122:
  *a6 = v37;
  return result;
}