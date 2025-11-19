uint64_t PRerr(unsigned __int8 *a1, int a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = 0;
  *(a1 + 21) = 0;
  *(a1 + 22) = 0;
  v4 = a1 + 84;
  *(a1 + 46) = 0;
  if (!*(a1 + 1))
  {
    v27 = 0xE6FFFFFF8ALL;
LABEL_64:
    *(a1 + 84) = v27;
    v28 = 540;
    goto LABEL_65;
  }

  v7 = PRGetAppElem(*a1);
  if (!v7)
  {
    *(a1 + 84) = 0xE6FFFFFF93;
    v28 = 480;
LABEL_65:
    *(a1 + 46) = v28;
    result = 230;
    goto LABEL_66;
  }

  v8 = v7;
  *(v7 + 32) = v4;
  v9 = PRGetDbElem(*a1, a1[1]);
  if (!v9)
  {
    v27 = 0xE6FFFFFF92;
    goto LABEL_64;
  }

  v10 = v9;
  v51 = 0;
  v49 = 0;
  v11 = *(v9 + 8);
  v12 = *(v9 + 48);
  v13 = a1[80];
  v14 = *(a1 + 48);
  v15 = (v14 & 0xF0) == 0x20 && v13 == 16;
  v16 = v14 & 0xF0;
  if (v15)
  {
    v16 = 64;
  }

  if (v13 == 13 && v16 == 32)
  {
    v16 = 0x80;
  }

  if (v13 == 13 && v16 == 16)
  {
    v17 = 64;
  }

  else
  {
    v17 = v16;
  }

  PRLangDialPos(*(v9 + 48), &v51, 1, a1[80], v17);
  v18 = *(a1 + 1);
  v19 = v18[12];
  v20 = v18[13];
  v21 = a1[16];
  if (a2 != 18)
  {
    if (a2 == 17)
    {
      if (!a3)
      {
        v29 = *(a1 + 3);
        if (v29)
        {
          free(v29);
          *(a1 + 3) = 0;
          AltEmOff = 1;
        }

        else
        {
          AltEmOff = 0;
        }

        v33 = *(a1 + 4);
        if (v33)
        {
          free(v33);
          *(a1 + 4) = 0;
          AltEmOff = 1;
        }

        v34 = *(a1 + 5);
        if (v34)
        {
          free(v34);
          *(a1 + 5) = 0;
          AltEmOff = 1;
        }

        v35 = *(a1 + 7);
        if (v35)
        {
          free(v35);
          *(a1 + 7) = 0;
          AltEmOff = 1;
        }

        v36 = *(a1 + 8);
        if (v36)
        {
          free(v36);
          v38 = *(a1 + 9);
          v37 = a1 + 72;
          result = v38;
          *(v37 - 1) = 0;
          if (!v38)
          {
            goto LABEL_66;
          }

          v39 = v37;
        }

        else
        {
          v39 = a1 + 72;
          result = *(a1 + 9);
          if (!result)
          {
            goto LABEL_145;
          }
        }

        free(result);
        result = 0;
        *v39 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      if (a2 != 16)
      {
        v27 = 0xE6FFFFFF95;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v31 = a1[48];
        if ((v31 & 0x15) != 0)
        {
          if (((a1[48] & 0x10) == 0 || !*(a1 + 7)) && ((a1[48] & 4) == 0 || !*(a1 + 8)) && ((a1[48] & 1) == 0 || !*(a1 + 9)))
          {
            if (v18[32])
            {
              v41 = bswap32(*(*(v12 + 96) + 4 * v18[32] - 4));
            }

            else
            {
              v41 = 0;
            }

            if (v18[33])
            {
              v42 = bswap32(*(*(v12 + 96) + 4 * v18[33] - 4));
            }

            else
            {
              v42 = 0;
            }

            v43 = v18[34];
            if (v43)
            {
              v44 = bswap32(*(*(v12 + 96) + 4 * v43 - 4));
            }

            else
            {
              v44 = 0;
            }

            AltEmOff = 0;
            if ((a1[48] & 0x10) != 0 && v41)
            {
              v23 = PRgetWarn(a1 + 7, v41, v12, v13, v17, v11, v8, v10);
              if (v23)
              {
                goto LABEL_122;
              }

              AltEmOff = 1;
            }

            if ((v31 & 4) != 0 && v42)
            {
              v23 = PRgetWarn(a1 + 8, v42, v12, v13, v17, v11, v8, v10);
              if (v23)
              {
                goto LABEL_122;
              }

              AltEmOff = 1;
            }

            if ((v31 & 1) != 0 && v44)
            {
              v23 = PRgetWarn(a1 + 9, v44, v12, v13, v17, v11, v8, v10);
              if (v23)
              {
                goto LABEL_122;
              }

              AltEmOff = 1;
            }

            if (((v31 & 0x10) == 0 || *(a1 + 7)) && ((v31 & 4) == 0 || *(a1 + 8)) && ((v31 & 1) == 0 || *(a1 + 9)))
            {
LABEL_145:
              if (AltEmOff)
              {
                result = 0;
                goto LABEL_66;
              }

              goto LABEL_45;
            }

LABEL_147:
            *(a1 + 84) = 0x4000001F8;
            *(a1 + 46) = 540;
            result = 4;
            goto LABEL_66;
          }

          goto LABEL_63;
        }
      }

      else if (a3 == 1 && (v21 & 0x15) != 0)
      {
        if (((v21 & 0x10) == 0 || !*(a1 + 3)) && ((v21 & 4) == 0 || !*(a1 + 4)) && ((v21 & 1) == 0 || !*(a1 + 5)))
        {
          AltEmOff = GetAltEmOff(v12, v52, v19, v20, v51);
          if (!AltEmOff)
          {
            if ((v21 & 0x10) != 0 && v53)
            {
              v23 = PRgetmsg(&v50, v53, v12);
              if (v23)
              {
                goto LABEL_122;
              }

              inserted = InsertString(a1 + 3, *(a1 + 1), &v50, 1, v13, v11, v8, v10);
              if (inserted)
              {
LABEL_38:
                v25 = inserted;
                if (v50)
                {
                  free(v50);
                }

                result = 220;
                *(a1 + 21) = v25;
                *(a1 + 22) = 220;
                goto LABEL_55;
              }

              if (v13 == 16)
              {
                ConvertString(*(a1 + 3), v10);
              }

              AltEmOff = 1;
            }

            if ((v21 & 4) == 0 || !v54)
            {
              goto LABEL_119;
            }

            v23 = PRgetmsg(&v50, v54, v12);
            if (!v23)
            {
              inserted = InsertString(a1 + 4, *(a1 + 1), &v50, 2, v13, v11, v8, v10);
              if (inserted)
              {
                goto LABEL_38;
              }

              if (v13 == 16)
              {
                ConvertString(*(a1 + 4), v10);
              }

              AltEmOff = 1;
LABEL_119:
              if ((v21 & 1) == 0 || !v55)
              {
                goto LABEL_139;
              }

              v23 = PRgetmsg(a1 + 5, v55, v12);
              if (v23)
              {
                goto LABEL_122;
              }

              v49 = strlen(*(a1 + 5));
              v45 = *(v10 + 20);
              if (v45 == 6)
              {
                if (*(v10 + 16) != 64)
                {
LABEL_131:
                  if (*(v10 + 20) == 8 && (*(v10 + 18) & 0x40) != 0)
                  {
                    v48 = strlen(*(a1 + 5));
                    ToUpUnaccentedCnv(*(a1 + 5), v48, 8, v11);
                  }

                  if (*(v8 + 28))
                  {
                    SLchcnv(*(a1 + 5), v49, *(a1 + 5), 0, v13);
                  }

                  if (v13 == 16)
                  {
                    ConvertString(*(a1 + 5), v10);
                  }

                  AltEmOff = 1;
LABEL_139:
                  if (((v21 & 0x10) == 0 || *(a1 + 3)) && ((v21 & 4) == 0 || *(a1 + 4)) && ((v21 & 1) == 0 || *(a1 + 5)))
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_147;
                }

                OneToMultiChrCnv(a1 + 5, &v49, 223, v8);
                v45 = *(v10 + 20);
              }

              if (v45 == 5)
              {
                v46 = *(v10 + 18);
                if ((v46 & 0x10) != 0)
                {
                  OneToMultiChrCnv(a1 + 5, &v49, 247, v8);
                  OneToMultiChrCnv(a1 + 5, &v49, 230, v8);
                  v46 = *(v10 + 18);
                }

                if ((v46 & 0x40) != 0)
                {
                  v47 = strlen(*(a1 + 5));
                  ToUpUnaccentedCnv(*(a1 + 5), v47, 5, v11);
                }
              }

              goto LABEL_131;
            }

LABEL_122:
            AltEmOff = v23;
            result = 220;
            goto LABEL_54;
          }

LABEL_53:
          result = 230;
LABEL_54:
          *(a1 + 21) = AltEmOff;
          *(a1 + 22) = result;
LABEL_55:
          *(a1 + 46) = 540;
          goto LABEL_66;
        }

LABEL_63:
        v27 = 0xE6FFFFFF8CLL;
        goto LABEL_64;
      }
    }

LABEL_45:
    v27 = 0xE6FFFFFF8BLL;
    goto LABEL_64;
  }

  if (a3)
  {
    v27 = 0xE6FFFFFF94;
    goto LABEL_64;
  }

  v30 = GetAltEmOff(v12, v52, v19, v20, v51);
  if (v30)
  {
    AltEmOff = v30;
    goto LABEL_53;
  }

  if (((v53 != 0) & (v21 >> 4)) != 0)
  {
    v40 = 16;
  }

  else
  {
    v40 = 0;
  }

  a1[16] = v40;
  if ((v21 & 4) != 0 && v54)
  {
    v40 |= 4u;
    a1[16] = v40;
  }

  result = 0;
  if ((v21 & 1) != 0 && v55)
  {
    result = 0;
    a1[16] = v40 | 1;
  }

LABEL_66:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRLangDialPos(uint64_t a1, _BYTE *a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 112);
  *a2 = 0;
  v6 = *(a1 + 25);
  if (*(a1 + 25))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = *v5;
      v14 = v5 + 2;
      v15 = *(v5 + 1);
      if (v5[1])
      {
        break;
      }

      if (v13 != a4)
      {
        if (a3)
        {
          *a2 = ++v11;
        }

LABEL_12:
        v5 = &v14[strlen(v14) + 1];
        if (v12++ < v6)
        {
          continue;
        }
      }

      return 0;
    }

    v16 = &v5[(v15 - 1) + 3];
    while (v13 != a4 || *v14 != a5)
    {
      --v15;
      ++v14;
      *a2 = ++v11;
      if (!v15)
      {
        v14 = v16;
        goto LABEL_12;
      }
    }
  }

  return 0;
}

uint64_t GetAltEmOff(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5)
{
  v23 = 0;
  if (!BinarySearch(*(a1 + 32), *(a1 + 26), 1, a3, 1, &v23))
  {
    return 115;
  }

  v9 = bswap32(*(*(a1 + 48) + 4 * (a4 + (bswap32(*(*(a1 + 40) + 2 * v23)) >> 16) - 1)));
  if (v9 == -1)
  {
    return 115;
  }

  v10 = 0;
  v11 = (*(a1 + 64) + v9);
  v12 = *v11;
  v13 = v12 >> 6;
  v24[0] = *v11 >> 6;
  do
  {
    v24[1] = (v12 >> 4) & 3;
    v24[2] = (v12 >> 2) & 3;
    v24[3] = v12 & 3;
    if (v10 != a5)
    {
      v24[0] = 0;
      v13 += (v12 & 3) + ((v12 >> 4) & 3) + ((v12 >> 2) & 3) + 1;
      v11 += v13;
      v12 = *v11;
    }
  }

  while (v10++ < a5);
  v15 = 0;
  v16 = v11 + 1;
  do
  {
    *(a2 + 4 * v15) = 0;
    v17 = v24[v15];
    if (v24[v15])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        *(a2 + 4 * v15) = v19 << 8;
        v20 = *v16++;
        v21 = v20 | (v19 << 8);
        *(a2 + 4 * v15) = v21;
        ++v18;
        v19 = v21;
      }

      while (v18 < v17);
      *(a2 + 4 * v15) = 4 * v21;
    }

    ++v15;
  }

  while (v15 != 4);
  return 0;
}

uint64_t InsertString(const char **a1, uint64_t a2, const char **a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  LOWORD(__n) = 0;
  if (a4 == 1)
  {
    v14 = *(a2 + 24);
    if (a5 == 16)
    {
      if (v14)
      {
        v15 = *(v14 + 18);
        if (*(v14 + 18))
        {
          v16 = *v14;
          v17 = *(v14 + 8);
          do
          {
            v19 = *v17++;
            v18 = v19;
            if (*(v16 + v19))
            {
              ConvertString((v16 + v18), a8);
            }

            --v15;
          }

          while (v15);
        }
      }
    }

    LOWORD(__n) = strlen(*a3);
    if (*(a8 + 20) == 5)
    {
      v20 = *(a8 + 18);
      if ((v20 & 0x10) != 0)
      {
        OneToMultiChrCnv(a3, &__n, 247, a7);
        OneToMultiChrCnv(a3, &__n, 230, a7);
        v20 = *(a8 + 18);
      }

      if ((v20 & 0x40) != 0)
      {
        ToUpUnaccentedCnv(*a3, __n, 5, a6);
      }
    }

    v21 = *(a2 + 72);
    if (v21)
    {
      v22 = *(v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    if (*(a7 + 28))
    {
      ConvertAlts(v14, 1, v10);
    }
  }

  else
  {
    v14 = 0;
    v22 = 0;
  }

  v70 = a8;
  v23 = *(a2 + 72);
  if (!v23)
  {
    v24 = 0;
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_24:
    if (*(v14 + 18))
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v24 = *v23;
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_25:
  if ((!v24 || !*(v24 + 18)) && (!v22 || !*(v22 + 18)))
  {
    v61 = *a3;
    v62 = a1;
    *a1 = *a3;
    LOWORD(__n) = strlen(v61);
    goto LABEL_97;
  }

LABEL_29:
  v25 = malloc_type_calloc(1uLL, 0x281uLL, 0x100004077774924uLL);
  if (!v25)
  {
    return 120;
  }

  v26 = v25;
  v72 = v14;
  v67 = a7;
  v68 = v10;
  LOWORD(__n) = strlen(*a3);
  if (a4 == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = Alt_Str[0];
    v30 = Fil_Str[0];
    while (1)
    {
      v31 = *a3;
      v32 = v28;
      v33 = (*a3)[v28];
      v34 = v33 == v29;
      v35 = v33 == v29 || v33 == v30;
      if (v35 || ((v34 = 0, v43 = Ref_Str[0], (*a3)[v28]) ? (v44 = v33 == Ref_Str[0]) : (v44 = 1), v44 || v27 > 0x27Fu))
      {
        v36 = v72;
      }

      else
      {
        v45 = v27;
        v36 = v72;
        while (1)
        {
          ++v27;
          v26[v45] = v33;
          ++v28;
          v31 = *a3;
          v32 = v28;
          v33 = (*a3)[v28];
          v34 = v33 == v29;
          if (v33 == v29 || v33 == v30)
          {
            break;
          }

          v47 = v45 + 1;
          if ((*a3)[v28])
          {
            v48 = v33 == v43;
          }

          else
          {
            v48 = 1;
          }

          if (!v48)
          {
            v49 = v45++ > 0x27E;
            if (!v49)
            {
              continue;
            }
          }

          v34 = 0;
          v27 = v47;
          break;
        }
      }

      if (v27 > 0x27Fu || !v33)
      {
        LOWORD(v42) = v27;
        goto LABEL_95;
      }

      v37 = !v34;
      if (!v36)
      {
        v37 = 1;
      }

      if ((v37 & 1) != 0 || (v38 = Alt_Str, !*v36))
      {
        v39 = v33 != Ref_Str[0] || v22 == 0;
        if (v39 || (v36 = v22, v38 = Ref_Str, !*v22))
        {
          if (!v24)
          {
            goto LABEL_71;
          }

          v36 = v24;
          v38 = Fil_Str;
          if (!*v24)
          {
            goto LABEL_71;
          }
        }
      }

      v40 = CompString(v36, v38, &v31[v32], v26, v27);
      v29 = Alt_Str[0];
      v30 = Fil_Str[0];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v42 = strlen(v26);
LABEL_72:
      v28 += v41;
      v27 = v42;
      if (__n < v28)
      {
        goto LABEL_95;
      }
    }

    v31 = *a3;
LABEL_71:
    v50 = v31[v32];
    v42 = v27 + 1;
    v26[v27] = v50;
    v41 = 1;
    goto LABEL_72;
  }

  v42 = 0;
  v51 = 0;
  do
  {
    v52 = Fil_Str[0];
    v53 = *a3;
    v54 = v51;
    v55 = (*a3)[v51];
    v56 = v55 == Fil_Str[0] || v55 == 0;
    if (!v56 && v42 <= 0x27Fu)
    {
      v59 = v42;
      while (1)
      {
        ++v42;
        v26[v59] = v55;
        ++v51;
        v53 = *a3;
        v54 = v51;
        v55 = (*a3)[v51];
        if (v55 == v52)
        {
          break;
        }

        v60 = v59 + 1;
        if ((*a3)[v51])
        {
          v49 = v59++ > 0x27E;
          if (!v49)
          {
            continue;
          }
        }

        v42 = v60;
        break;
      }
    }

    if (v42 > 0x27Fu)
    {
      break;
    }

    v57 = CompString(v24, Fil_Str, &v53[v54], v26, v42);
    if (v57)
    {
      v58 = v57;
      v42 = strlen(v26);
    }

    else
    {
      v26[v42] = (*a3)[v54];
      v58 = 1;
      ++v42;
    }

    v51 += v58;
  }

  while (__n >= v51);
LABEL_95:
  v26[v42] = 0;
  LOWORD(__n) = strlen(v26);
  v63 = malloc_type_malloc(__n + 1, 0x100004077774924uLL);
  v62 = a1;
  *a1 = v63;
  if (!v63)
  {
    free(v26);
    return 120;
  }

  strncpy(v63, v26, __n);
  (*a1)[__n] = 0;
  free(v26);
  free(*a3);
  *a3 = 0;
  v10 = v68;
  a7 = v67;
  v14 = v72;
LABEL_97:
  v64 = *(v70 + 20);
  if (v64 != 6)
  {
LABEL_100:
    if (v64 == 8 && (*(v70 + 18) & 0x40) != 0)
    {
      v65 = strlen(*v62);
      ToUpUnaccentedCnv(*v62, v65, 8, a6);
    }

    goto LABEL_103;
  }

  if (*(v70 + 16) == 64)
  {
    OneToMultiChrCnv(v62, &__n, 223, a7);
    v64 = *(v70 + 20);
    goto LABEL_100;
  }

LABEL_103:
  if (*(a7 + 28))
  {
    SLchcnv(*v62, __n, *v62, 0, v10);
    if (*(a7 + 28))
    {
      ConvertAlts(v14, 0, v10);
    }
  }

  return 0;
}

char *ConvertString(char *result, uint64_t a2)
{
  v2 = *(a2 + 16) & 0xF0;
  if (v2 == 64)
  {
    v3 = 115;
  }

  else
  {
    v3 = 122;
  }

  while (1)
  {
    v4 = *result;
    if (v4 == 31)
    {
      break;
    }

    if (v4 == 127)
    {
      *result = v3;
    }

    else if (!*result)
    {
      return result;
    }

LABEL_13:
    ++result;
  }

  if (v2 != 128)
  {
    *result++ = 39;
    goto LABEL_13;
  }

  if (result[1])
  {
    *result = result[1];
    *++result = 39;
    goto LABEL_13;
  }

  return result;
}

uint64_t PRgetWarn(char **a1, int a2, unsigned int *a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = *a3;
  if (SLSeek(*a3, a3[1] + a2, 0))
  {
    result = 111;
    goto LABEL_41;
  }

  __s = 0;
  v39 = 0;
  v38 = 0;
  if (SLFRead(v14, 162, __dst, &v39))
  {
    result = 112;
    goto LABEL_41;
  }

  v16 = __dst[0];
  if (__dst[0])
  {
    v17 = 0;
    v18 = 0;
    v19 = __dst;
    v20 = 1;
    do
    {
      v21 = v19[1];
      if (v21 < 0)
      {
        v18 = v19[2];
        v19 += 3;
        v22 = 3;
      }

      else
      {
        v19 += 2;
        v22 = 2;
      }

      --v16;
      v23 = v21 & 0x7F;
      v24 = v18 != a5 && v21 <= -1;
      v25 = *v19;
      v26 = v22 + v20;
      if (!v24 && v23 == a4)
      {
        v17 = 1;
      }

      if (v17)
      {
        v28 = 0;
      }

      else
      {
        v28 = *v19;
      }

      v20 = v26 + v28;
    }

    while (v16);
    v29 = v20;
  }

  else
  {
    v25 = 0;
    v29 = 1;
  }

  v30 = v25;
  v31 = malloc_type_malloc(v25 + 1, 0x100004077774924uLL);
  *a1 = v31;
  if (!v31)
  {
    result = 120;
    goto LABEL_41;
  }

  v32 = v31;
  __s = v31;
  memcpy(v31, &__dst[v29], v30);
  v32[v30] = 0;
  SLcrypt(v32, v30, &SLWkey, 7);
  v33 = *(a8 + 20);
  if (v33 != 6)
  {
    goto LABEL_29;
  }

  if (*(a8 + 16) == 64)
  {
    OneToMultiChrCnv(&__s, &v38, 223, a7);
    v33 = *(a8 + 20);
LABEL_29:
    if (v33 == 5)
    {
      v34 = *(a8 + 18);
      if ((v34 & 0x10) != 0)
      {
        OneToMultiChrCnv(&__s, &v38, 247, a7);
        OneToMultiChrCnv(&__s, &v38, 230, a7);
        v34 = *(a8 + 18);
      }

      if ((v34 & 0x40) != 0)
      {
        v35 = strlen(__s);
        ToUpUnaccentedCnv(__s, v35, 5, a6);
      }
    }
  }

  if (*(a8 + 20) == 8 && (*(a8 + 18) & 0x40) != 0)
  {
    v36 = strlen(__s);
    ToUpUnaccentedCnv(__s, v36, 8, a6);
  }

  if (*(a7 + 28))
  {
    SLchcnv(__s, v30, __s, 0, a4);
  }

  result = 0;
LABEL_41:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ConvertAlts(uint64_t result, int a2, unsigned int a3)
{
  if (result)
  {
    v3 = *(result + 18);
    if (*(result + 18))
    {
      v6 = *result;
      v7 = *(result + 8);
      do
      {
        v9 = *v7++;
        v8 = v9;
        if (*(v6 + v9))
        {
          v10 = strlen((v6 + v8));
          result = SLchcnv((v6 + v8), v10, (v6 + v8), a2, a3);
        }

        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t CompString(uint64_t *a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, unsigned int a5)
{
  if (SLstrncmp(a3, a2, 3))
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a3[3] - 49;
  if (*a2 == Alt_Str[0])
  {
    *(a4 + a5) = 123;
    LOWORD(a5) = a5 + 1;
  }

  *(a4 + a5) = 0;
  v14 = strlen(a4);
  v15 = *(v12 + 2 * v13);
  if (*(v11 + v15))
  {
    v16 = v14;
    if ((strlen((v11 + v15)) + v14) >= 0x281uLL)
    {
      strncat(a4, (v11 + v15), (640 - v16));
      *(a4 + 640) = 0;
      return 4;
    }

    strcat(a4, (v11 + v15));
    if (*a2 != Alt_Str[0])
    {
      return 4;
    }

    v18 = strlen(a4);
    *(a4 + v18) = 125;
    v17 = (v18 + 1);
LABEL_15:
    *(a4 + v17) = 0;
    return 4;
  }

  if (a5)
  {
    v17 = (a5 - 1);
    if (*(a4 + v17) == 32)
    {
      goto LABEL_15;
    }
  }

  if (a3[4] == 32)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t PRevamac(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5, int a6, int a7)
{
  v7 = *a3;
  v8 = *(a1 + 16);
  v9 = *(*a3 + 4);
  switch(a5)
  {
    case 1:
      while (1)
      {
        v7 = *(v7 + 72);
        if (!v7)
        {
          break;
        }

        v10 = *(v7 + 40);
        if (v10)
        {
          goto LABEL_7;
        }
      }

      v10 = *(v8 + 24);
      if (!v10)
      {
        return 1;
      }

LABEL_7:
      result = 1;
      do
      {
        v12 = *v10;
        if (!*v10)
        {
          return 0;
        }

        if (v12 == 10 || v12 == 13)
        {
          return 1;
        }

        ++v10;
      }

      while (v12 != *(a2 + 22));
      return result;
    case 2:
      v15 = *(v7 + 40);
      if (!v15)
      {
        return 0;
      }

      result = 1;
      do
      {
        v16 = *v15;
        if (!*v15)
        {
          return 0;
        }

        if (v16 == 10 || v16 == 13)
        {
          return 1;
        }

        ++v15;
      }

      while (v16 != *(a2 + 22));
      return result;
    case 4:
      v59 = *(v7 + 152);
      v60 = *(v59 + 16);
      v61 = *(v59 + 92);
      if ((v61 & 0x4000) != 0)
      {
        v62 = *(v59 + 176);
        if (v62)
        {
          v63 = *(v62 + 144);
          if (v63)
          {
            v60 = *v63;
          }
        }
      }

      if (v60 && (v61 & 0x10000) == 0)
      {
        return *v60 == 104;
      }

      return 0;
    case 5:
      v96 = *(v7 + 152);
      v60 = *(v96 + 16);
      v97 = *(v96 + 92);
      if ((v97 & 0x4000) != 0)
      {
        v98 = *(v96 + 176);
        if (v98)
        {
          v99 = *(v98 + 144);
          if (v99)
          {
            v60 = *v99;
          }
        }
      }

      if (!v60 || (v97 & 0x10000) == 0)
      {
        return 0;
      }

      return *v60 == 104;
    case 6:
      v27 = *(v7 + 16);
      if ((*(v7 + 93) & 0x40) != 0)
      {
        v28 = *(v7 + 176);
        if (v28)
        {
          v29 = *(v28 + 144);
          if (v29)
          {
            v27 = *v29;
          }
        }
      }

      if (!v27)
      {
        return 0;
      }

      v30 = *(*(a2 + 8) + 4 * *v27);
      v31 = v30 & 0x60000040;
      v32 = v30 & 0x10000000;
      return v31 && v32 == 0;
    case 7:
      v75 = *(v7 + 16);
      if ((*(v7 + 93) & 0x40) != 0)
      {
        v76 = *(v7 + 176);
        if (v76)
        {
          v77 = *(v76 + 144);
          if (v77)
          {
            v75 = *v77;
          }
        }
      }

      return v75 && (*(*(a2 + 8) + 4 * *v75) & 0x10000000) != 0;
    case 8:
      result = 1;
      if (v9 > -536870881)
      {
        if (v9 == -536870880 || v9 == 0x40000)
        {
          return result;
        }
      }

      else if (v9 == -2147483632 || v9 == -536870896)
      {
        return result;
      }

      return 0;
    case 9:
      return (v9 & 0xE0000070) != 0;
    case 10:
      v107 = *(v7 + 16);
      if ((*(v7 + 93) & 0x40) != 0)
      {
        v108 = *(v7 + 176);
        if (v108)
        {
          v109 = *(v108 + 144);
          if (v109)
          {
            v107 = *v109;
          }
        }
      }

      if (!v107)
      {
        return 0;
      }

      v110 = *v107;
      v111 = *(*(a2 + 8) + 4 * *v107);
      if ((v111 & 0x60000040) == 0)
      {
        return 0;
      }

      v112 = v111 & 0x10000000;
      return (v110 & 0xFFFFFFDF) != 0x48 && v112 == 0;
    case 11:
      return *(*(v7 + 152) + 40) != 0;
    case 12:
      return (*(v7 + 98) & 0xC00) != 0;
    case 13:
      return *(v7 + 50) != 0;
    case 14:
      v121 = *(v7 + 16);
      if (v121)
      {
        if (*v121 != 45)
        {
          return 0;
        }

        if (v121[1])
        {
          v122 = v121[1] == 45;
        }

        else
        {
          v122 = 1;
        }

        return !v122;
      }

      v129 = *(v7 + 72);
      if (!v129 || *(v129 + 40) || *(v129 + 32) != 1)
      {
        return 0;
      }

      goto LABEL_496;
    case 15:
      v18 = *(v7 + 32);
      return v18 == a6;
    case 16:
      v70 = *(v7 + 16);
      v71 = 46;
      return strchr(v70, v71) != 0;
    case 17:
      return (*(v7 + 93) & 0x80) != 0;
    case 18:
      if ((*(v7 + 93) & 0x80) == 0)
      {
        return 0;
      }

      v39 = *(v7 + 112);
      if (!v39)
      {
        return 0;
      }

      if (!SLstrncmp(*(v7 + 112), "-me", 3) || !SLstrncmp(v39, "-te", 3) || !SLstrncmp(v39, "-se", 3) || !SLstrncmp(v39, "-nos", 4))
      {
        return 1;
      }

      v40 = "-vos";
      v41 = v39;
      v42 = 4;
      return !SLstrncmp(v41, v40, v42);
    case 19:
      return (*(v7 + 93) & 0x40) != 0;
    case 20:
      v78 = *(v7 + 72);
      v79 = (v8 + 24);
      if (v78)
      {
        v80 = (v78 + 40);
      }

      else
      {
        v80 = v79;
      }

      return *v80 != 0;
    case 21:
      v70 = *(v7 + 16);
      v71 = 47;
      return strchr(v70, v71) != 0;
    case 22:
      v123 = *(v7 + 16);
      if (v123)
      {
        v124 = *(v7 + 32);
        if (v124 >= 2 && *(v123 + v124 - 1) == 45 && *(v123 + (v124 - 2)) != 45)
        {
          return 1;
        }
      }

      else if (!*(v7 + 40))
      {
        v129 = *(v7 + 80);
        if (v129)
        {
          if (*(v129 + 32) == 1)
          {
LABEL_496:
            if (**(v129 + 16) == 45)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    case 23:
      if (v9 != -2147483136)
      {
        return 0;
      }

      v26 = *(v7 + 32) - 1;
      if (v26 >= 5)
      {
        return 0;
      }

      return dword_1D2BFC3C8[v26];
    case 24:
      if (v9 != -2147483136)
      {
        if (a4 != 1 && v9 == -2147483632)
        {
          v7 = *(v7 + 72);
          if (v7)
          {
            if (*(v7 + 4) == -2147483136 && (*(v7 + 32) | 2) == 3)
            {
              goto LABEL_479;
            }
          }
        }

        return 0;
      }

      v19 = *(v7 + 32);
      if (v19 == 4 || v19 == 7)
      {
        return 1;
      }

      if (a4 != 1)
      {
        return 0;
      }

      if ((v19 | 2) != 3)
      {
        return 0;
      }

      v7 = *(v7 + 80);
      if (!v7)
      {
        return 0;
      }

      v21 = *(v7 + 4);
      v22 = -2147483632;
LABEL_266:
      if (v21 != v22)
      {
        return 0;
      }

      goto LABEL_479;
    case 25:
      v81 = v9 == 0x40000 || v9 == 268435457;
      if (!v81 && (*(v7 + 92) & 0xC) == 0)
      {
        return (*(v7 + 98) & 0x80) != 0;
      }

      return 1;
    case 26:
      return (*(v7 + 98) & 0x80) != 0 && *(*(v7 + 16) + *(v7 + 32) - 1) != 46;
    case 27:
      if (v9 == 0x40000 || v9 == 268435457 || v9 == 268435459)
      {
        return 1;
      }

      v102 = *(v7 + 92);
      if ((v102 & 8) != 0)
      {
        return 1;
      }

      if ((*&v102 & 0xC00000) != 0x400000)
      {
        return 0;
      }

      return (*(v7 + 98) & 0x80) != 0;
    case 28:
      result = 1;
      if (!a7 || (a7 & 0x10) != 0)
      {
        return result;
      }

      return 0;
    case 29:
      return (v9 & 0x80000040) == 0x40;
    case 30:
    case 111:
      v14 = v9 & 0x80000008;
      return v14 == 8;
    case 31:
      return (*(v7 + 98) & 0x10) != 0;
    case 32:
      v24 = *(v7 + 98);
      v25 = 3072;
      return (v25 & ~v24) == 0;
    case 33:
      v24 = *(v7 + 98);
      v25 = 768;
      return (v25 & ~v24) == 0;
    case 34:
      v89 = -536870848;
      goto LABEL_288;
    case 35:
      if ((~v9 & 0xC1000000) != 0)
      {
        goto LABEL_97;
      }

      if ((v9 & 0x1F0000) != 0)
      {
        return 1;
      }

      v9 &= 0x1FFFF0u;
LABEL_97:
      if (*(a2 + 20) != 6)
      {
        return 0;
      }

      v43 = v9 == -536870848;
      v44 = -1073741312;
      return v43 || v9 == v44;
    case 36:
      v104 = *(a2 + 20);
      if (v104 == 6 && v9 == -1073741760)
      {
        return 1;
      }

      if (v104 == 6)
      {
        return 0;
      }

      v45 = -536870848;
      return v9 == v45;
    case 37:
      return (*(v7 + 96) & 0x100) != 0;
    case 38:
      v45 = -536870911;
      return v9 == v45;
    case 39:
      if ((~v9 & 0xC1000000) != 0)
      {
        v125 = *(a2 + 20);
        v126 = -536870848;
LABEL_484:
        v127 = v126 - 62;
        if (v125 == 6 && v9 == v127)
        {
          return 1;
        }
      }

      else if ((v9 & 0x3800) != 0)
      {
        return 1;
      }

      return 0;
    case 40:
      v45 = -2147483584;
      return v9 == v45;
    case 41:
      v45 = -2147483646;
      return v9 == v45;
    case 42:
      return *(*(v7 + 152) + 80) != *(*(v7 + 152) + 176);
    case 43:
      return (*(v7 + 93) & 1) != 0;
    case 44:
      if (*(v7 + 32) != 1)
      {
        return 0;
      }

      v114 = **(v7 + 16);
      result = 1;
      v115 = (v114 - 131) > 0x22 || ((1 << (v114 + 125)) & 0x500000001) == 0;
      if (v115 && v114 != 36)
      {
        return 0;
      }

      return result;
    case 45:
      return v9 == -2147483644 || v9 == -2147483640 || v9 == -2147483392;
    case 46:
      if ((v9 & 0x80000020) != 0x20)
      {
        return 0;
      }

      v35 = *(v7 + 32);
      return v35 == 1;
    case 47:
      result = 1;
      if ((*(v7 + 92) & 1) != 0 || (v9 & 0x80000020) == 0x20)
      {
        return result;
      }

      return 0;
    case 48:
      return (*(v7 + 92) & 2) != 0;
    case 49:
      return (v9 & 0x1F0000) != 0;
    case 50:
      v45 = -2147483392;
      return v9 == v45;
    case 51:
      return ((v9 + 2147483644) & 0xFFFFFFFB) == 0;
    case 52:
      v106 = -536870848;
      goto LABEL_420;
    case 53:
      return (*(v7 + 98) & 0xC00) == 0x800;
    case 54:
      v14 = *(v7 + 96) & 0xC;
      return v14 == 8;
    case 55:
      if ((v9 & 0x80000020) != 0x20)
      {
        return 0;
      }

      v41 = *(v7 + 16);
      if (!v41)
      {
        return 0;
      }

      v40 = "15";
      goto LABEL_442;
    case 56:
      v38 = 268435458;
      return (v38 & ~v9) == 0;
    case 57:
      return !*(v7 + 60);
    case 58:
      v35 = *(v7 + 60);
      return v35 == 1;
    case 59:
      v52 = *(v7 + 60);
      return v52 == 2;
    case 60:
      v73 = *(v7 + 60);
      return v73 == 4;
    case 61:
      return *(v7 + 104) || *(v7 + 112);
    case 62:
      if ((v9 & 0x80000020) != 0x20)
      {
        return 0;
      }

      v41 = *(v7 + 16);
      if (!v41)
      {
        return 0;
      }

      v40 = "14";
LABEL_442:
      v42 = 2;
      return !SLstrncmp(v41, v40, v42);
    case 63:
      v45 = -2147483616;
      return v9 == v45;
    case 64:
      return (*(v7 + 93) & 2) != 0;
    case 65:
      return (*(v7 + 92) & 0x80) != 0;
    case 66:
      return (v9 & 0x80010000) == 0x10000;
    case 67:
      v54 = *(v7 + 24);
      if (!v54)
      {
        return 0;
      }

      v55 = *v54;
      if (!*v54)
      {
        return 0;
      }

      v56 = v54 + 1;
      while (1)
      {
        v57 = *(*(a2 + 8) + 4 * v55);
        if ((v57 & 0x1000000) == 0)
        {
          break;
        }

        v58 = *v56++;
        v55 = v58;
        if (!v58)
        {
          return 0;
        }
      }

      return (v57 & 0x20000000) != 0;
    case 68:
      v116 = *(v7 + 24);
      if (!v116)
      {
        return 0;
      }

      v117 = *v116;
      if (!*v116)
      {
        return 0;
      }

      v118 = v116 + 1;
      while (1)
      {
        v119 = *(*(a2 + 8) + 4 * v117);
        if ((v119 & 0x1000000) == 0)
        {
          break;
        }

        v120 = *v118++;
        v117 = v120;
        if (!v120)
        {
          return 0;
        }
      }

      return (v119 & 0x40000000) != 0;
    case 69:
      v106 = -1073741760;
LABEL_420:
      v45 = v106 - 48;
      return v9 == v45;
    case 70:
      return (*(v7 + 93) & 8) != 0;
    case 71:
      return (*(v7 + 94) & 8) != 0;
    case 72:
      return (*(v7 + 94) & 4) != 0;
    case 73:
      v66 = -1073741760;
      goto LABEL_295;
    case 74:
      return (*(v7 + 93) & 0x10) != 0;
    case 75:
      return !*(v7 + 51);
    case 76:
      if ((v9 & 0xE0000000) == 0xC0000000 && (v9 & 0x200003D) != 0)
      {
        return 1;
      }

      v47 = *(a2 + 20);
      if (v47 == 6 && (v9 == -1073741822 || v9 == -1073741760))
      {
        return 1;
      }

      v50 = (v47 & 0xFFFFFFFB) == 8 || v47 == 9 || v47 == 5;
      v51 = -1073741760;
      goto LABEL_517;
    case 77:
      return (*(v7 + 98) & 0x20) != 0;
    case 78:
      return (*(v7 + 98) & 8) != 0;
    case 79:
      return (*(v7 + 98) & 0xC00) == 0x400;
    case 80:
      v73 = *(v7 + 96) & 0xC;
      return v73 == 4;
    case 81:
      return (*(v7 + 92) & 4) != 0;
    case 82:
      return *(v7 + 51) == 3;
    case 83:
      v38 = 268435460;
      return (v38 & ~v9) == 0;
    case 84:
      result = 1;
      if (!a7 || (a7 & 0x20) != 0)
      {
        return result;
      }

      return 0;
    case 85:
      v53 = *(v7 + 96);
      if (a4 == 1)
      {
        if ((*(v7 + 96) & 0x1000) == 0)
        {
          return 0;
        }

          ;
        }
      }

      else
      {
        if ((*(v7 + 96) & 0x100) == 0)
        {
          return 0;
        }

          ;
        }
      }

LABEL_479:
      *a3 = v7;
      return 1;
    case 86:
      return (v9 & 0x80000020) == 0x20;
    case 87:
      return (*(v7 + 93) & 4) != 0;
    case 88:
      return *(v7 + 32) == 1 && !SLstrcmp(*(v7 + 16), "1");
    case 89:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
      return 0;
    case 90:
      v89 = -1073741760;
LABEL_288:
      v45 = v89 - 60;
      return v9 == v45;
    case 91:
      if ((~v9 & 0xC2000000) != 0)
      {
        goto LABEL_353;
      }

      if ((v9 & 0x1F0000) != 0)
      {
        return 1;
      }

      v9 &= 0x1FFFF0u;
LABEL_353:
      if (*(a2 + 20) != 6)
      {
        return 0;
      }

      v44 = -1073741760;
      v43 = v9 == -1073741568;
      return v43 || v9 == v44;
    case 92:
      v64 = *(a2 + 20);
      if (v64 == 6 && v9 == -536870848)
      {
        return 1;
      }

      if (v64 == 6)
      {
        return 0;
      }

      v45 = -1073741760;
      return v9 == v45;
    case 93:
      return (*(v7 + 96) & 0x1000) != 0;
    case 94:
      v45 = -1073741823;
      return v9 == v45;
    case 95:
      if ((~v9 & 0xC2000000) == 0)
      {
        return (v9 & 0xBC00) != 0;
      }

      v125 = *(a2 + 20);
      v126 = -1073741760;
      goto LABEL_484;
    case 96:
    case 99:
    case 100:
    case 102:
    case 146:
      return (*(v7 + 92) & 0x20) != 0;
    case 97:
      return (*(v7 + 92) & 0x20) != 0;
    case 98:
    case 124:
      return (*(v7 + 94) & 0x10) != 0;
    case 101:
      return (*(v7 + 92) & 0x80) != 0;
    case 103:
      v43 = v9 == -2147483632;
      v44 = 0x40000;
      return v43 || v9 == v44;
    case 104:
      return (*(v7 + 92) & 8) != 0;
    case 105:
      return (*(v7 + 98) & 0x300) == 0x200;
    case 106:
      v52 = *(v7 + 96) & 3;
      return v52 == 2;
    case 107:
      v18 = (*(v7 + 92) >> 28) & 7;
      return v18 == a6;
    case 108:
      if (!*(v7 + 16))
      {
        return 0;
      }

      if (!a4 && v9 == -2147483647)
      {
        v7 = *(v7 + 72);
        if (v7)
        {
          if (*(v7 + 32) && *(*(v7 + 16) + *(v7 + 32) - 1) == 115)
          {
            goto LABEL_479;
          }
        }
      }

      v90 = *(v7 + 32);
      v91 = *(v7 + 16);
      if (*(v91 + v90 - 1) != 115)
      {
        return 0;
      }

      if (v90 >= 2 && *(v91 + (v90 - 2)) == 39)
      {
        return 1;
      }

      if (a4 != 1)
      {
        return 0;
      }

      v7 = *(v7 + 80);
      if (!v7)
      {
        return 0;
      }

      v21 = *(v7 + 4);
      v22 = -2147483647;
      goto LABEL_266;
    case 109:
      v18 = *(v7 + 95) & 0xF;
      return v18 == a6;
    case 110:
      return v9 < 0;
    case 112:
      v66 = -536870848;
LABEL_295:
      v45 = v66 - 32;
      return v9 == v45;
    case 113:
      return (*(v7 + 98) & 0x40) != 0;
    case 114:
      v45 = -2147483632;
      return v9 == v45;
    case 115:
      return (*(v7 + 98) & 4) != 0;
    case 116:
      return (*(v7 + 92) & 0x10) != 0;
    case 117:
      v45 = -2147483520;
      return v9 == v45;
    case 118:
      return v7 == *(v8 + 72);
    case 119:
      if (*(v8 + 14) < *(v8 + 18))
      {
          ;
        }

        if (i == v7)
        {
          return 1;
        }
      }

      return 0;
    case 120:
      return *(v7 + 32) == 1 && !SLstrcmp(*(v7 + 16), "7");
    case 121:
      return (*(v7 + 98) & 0x300) == 0x100;
    case 122:
      v67 = v9 & 0x80004000;
      return v67 == 0x4000;
    case 123:
      return (v9 & 0x80001000) == 0x1000;
    case 125:
      v35 = *(v7 + 96) & 3;
      return v35 == 1;
    case 126:
      v67 = *(v7 + 98) & 0xC000;
      return v67 == 0x4000;
    case 127:
      return (*(v7 + 98) & 0xC000) == 0x8000;
    case 128:
      return (v9 & 0xBC00) != 0;
    case 129:
      v68 = *(*a3 + 4) & 0x2000;
      v69 = *(v7 + 32) == 2;
      return v69 && v68 != 0;
    case 130:
      if ((v9 & 0x80000020) == 0x20)
      {
        v72 = *(v7 + 16);
        if (v72)
        {
          if (!SLstrncmp(v72, "13", 2))
          {
            return 1;
          }
        }
      }

      return 0;
    case 131:
    case 132:
      return (*(v7 + 92) & 0x40) != 0;
    case 133:
      v74 = *(a2 + 20);
      if ((v9 & 0xE0000000) == 0xC0000000)
      {
        if ((v9 & 0x1000000) != 0)
        {
          return 1;
        }
      }

      else if ((v9 & 0xE0000000) == 0x80000000)
      {
        if ((v9 & 0xD3) != 0)
        {
          return 1;
        }
      }

      else if (v9 >> 29 == 7 && (v9 & 0x3D) != 0)
      {
        return 1;
      }

      if (v74 != 6 || (v9 != -536870910 ? (v131 = v9 == -536870848) : (v131 = 1), !v131))
      {
        v132 = (v74 & 0xFFFFFFFB) == 8 || v74 == 9;
        v50 = v132 || v74 == 5;
        v51 = -536870848;
LABEL_517:
        if (!v50 || v9 != v51)
        {
          return 0;
        }
      }

      return 1;
    case 134:
      return *(v7 + 51) == 2;
    case 135:
      return (*(v7 + 93) & 0x20) != 0;
    case 136:
      result = 1;
      if (!a7 || (a7 & 0x40) != 0)
      {
        return result;
      }

      return 0;
    case 137:
      return (*(v7 + 94) & 0x80) != 0 && (*(v7 + 98) & 0x80) == 0;
    case 141:
      return (*(v7 + 98) & 3) == 1;
    case 142:
      return (*(v7 + 98) & 3) == 0;
    case 144:
      return v9 == -2147483647;
    case 145:
      v92 = *(v7 + 32);
      if (!*(v7 + 32))
      {
        return 0;
      }

      v93 = 0;
      v94 = *(v7 + 16);
      break;
    case 147:
      v38 = 268435464;
      return (v38 & ~v9) == 0;
    case 148:
      v82 = ~v9 & 0xC2000000;
      v68 = v9 & 0x1FBC00;
      goto LABEL_230;
    case 149:
      v82 = ~v9 & 0xC1000000;
      v68 = v9 & 0x1F3800;
LABEL_230:
      v69 = v82 == 0;
      return v69 && v68 != 0;
    case 150:
      return *(v7 + 32) == 1 && **(v7 + 16) == 38;
    case 151:
      return *(v7 + 32) == 1 && **(v7 + 16) == 150;
    case 159:
      v84 = *(v7 + 16);
      if (!v84 || v9 != 32)
      {
        return 0;
      }

      v85 = *v84;
      if (*v84)
      {
        v86 = 0;
        v87 = v84 + 1;
        do
        {
          if ((*(*(a2 + 8) + 4 * v85) & 0x8000000) == 0)
          {
            return 0;
          }

          v86 = 10 * v86 + v85 - 48;
          v88 = *v87++;
          v85 = v88;
        }

        while (v88);
      }

      else
      {
        v86 = 0;
      }

      return a6 == v86;
    default:
      v23 = *(a1 + 32);
      *v23 = 0xDC0000008CLL;
      *(v23 + 8) = a5;
      return 220;
  }

  while (*(v94 + v93) - 48 <= 9)
  {
    if (++v93 >= v92)
    {
      v93 = v92;
      break;
    }
  }

  if (!v93 || v93 + 1 != v92)
  {
    return 0;
  }

  return ((*(v94 + v93) - 97) & 0xFB) == 0;
}

uint64_t PRExprMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = 0uLL;
  v52 = 0uLL;
  v3 = *(a1 + 56);
  v4 = *(a1 + 14);
  v5 = *(a3 + 96);
  v6 = v5[1];
  v7 = v5[2];
  v8 = *v5;
  v9 = *(*v5 + 4);
  *&v55 = v3;
  *(&v55 + 1) = 0x100000000;
  if (!v3)
  {
    return 0;
  }

  v43 = (v8 + __rev16(v9));
  v10 = *(v3 + 3);
  if (v10)
  {
    LOBYTE(v10) = *v10;
  }

  v49 = 0;
  BYTE14(v55) = v10;
  v11 = 0xFFFF;
LABEL_5:
  v48 = 0;
  v44 = 0;
  v51 = 0;
  v54 = v55;
  v12 = 1;
  v13 = v43;
  v42 = v3;
  v45 = v3;
  if (!v43)
  {
    goto LABEL_90;
  }

  while (1)
  {
    while (1)
    {
LABEL_6:
      v53 = v54;
      BYTE13(v53) = 0;
      v14 = v13[1];
      if (v14 >= 0x40)
      {
        v20 = bswap32(*(v13 + 2));
        if (v14 >> 6 == 1)
        {
          v22 = *(v54 + 98);
        }

        else if (v14 >> 6 == 3)
        {
          if (v54 == *(a1 + 64) && v20 == 1)
          {
            goto LABEL_89;
          }

          v22 = *(v54 + 51);
        }

        else
        {
          v22 = *(v54 + 4);
          if (!v22)
          {
            goto LABEL_57;
          }
        }

        v26 = (v14 >> 4) & 3;
        if (v26 > 1)
        {
          if (v26 != 2)
          {
            if ((v14 & 4) == 0)
            {
              goto LABEL_89;
            }

LABEL_57:
            v15 = v13 + 6;
LABEL_58:
            if ((v14 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_59;
          }

          v28 = (v22 & v20) != 0;
        }

        else
        {
          v27 = (v20 & ~v22) == 0;
          v28 = v22 == v20;
          if (!v26)
          {
            v28 = v27;
          }
        }

        if (((((v14 & 4) == 0) ^ v28) & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_89;
      }

      if (v14 >= 0x10)
      {
        if (v14 > 0x1F == v4 < (*v54 + 1))
        {
          goto LABEL_89;
        }

        v15 = v13 + 2;
        if ((v14 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_59:
        v29 = v6 + 32 * *v15;
        *v29 = v54;
        *(v29 + 16) = v53;
        if (BYTE13(v53) && BYTE14(v53))
        {
          ++*(v29 + 26);
        }

        ++v15;
        LOBYTE(v14) = v13[1];
        goto LABEL_63;
      }

      v15 = v13 + 3;
      v16 = &v13[2 * v13[2] + 3];
      while (1)
      {
        v17 = __rev16(*v15);
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v53 == 0;
        }

        if (!v18)
        {
          v19 = 0;
          if (BYTE12(v53) > 1u)
          {
            if (BYTE12(v53) == 2)
            {
              goto LABEL_24;
            }

            if (BYTE12(v53) == 3)
            {
              v19 = WORD4(v53);
              goto LABEL_24;
            }
          }

          else
          {
            if (!BYTE12(v53))
            {
              goto LABEL_20;
            }

            if (BYTE12(v53) == 1)
            {
              v19 = WORD4(v53);
LABEL_20:
              WORD5(v53) += *(v53 + 32) - v19;
              v19 = 0;
LABEL_24:
              WORD5(v53) += *(v53 + 48) - v19;
            }
          }

          *&v53 = *(v53 + 80);
          WORD4(v53) = 0;
          WORD6(v53) = (4 * (v53 == 0));
          goto LABEL_26;
        }

        if (PRdoFsa((v8 + v17), &v53, v8 + 16) == 4)
        {
          break;
        }

LABEL_26:
        v15 += 2;
        if (v15 >= v16)
        {
          break;
        }

        if (BYTE13(v53))
        {
          NEXT_TLPOS(&v53);
        }
      }

      if (v15 < v16)
      {
        goto LABEL_89;
      }

      LOBYTE(v14) = v13[1];
      if ((v14 & 2) == 0)
      {
        goto LABEL_58;
      }

      v23 = *(v54 + 72);
      if (!v23)
      {
        if ((v13[1] & 4) != 0)
        {
          v25 = (v15[2] & 1) == 0;
          if (v15[2])
          {
            goto LABEL_70;
          }

LABEL_43:
          if (v25)
          {
            v15 += 3;
            if ((v14 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_59;
          }
        }

        goto LABEL_89;
      }

      v52 = v23;
      v24 = PRdoFsa((v8 + __rev16(*v15)), &v52, v8 + 16) == 0;
      LOBYTE(v14) = v13[1];
      v25 = v24 ^ ((v14 & 4) >> 2);
      v49 = v23;
      if ((v15[2] & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_70:
      if (!v25)
      {
        goto LABEL_89;
      }

      v31 = v6 + 32 * v15[3];
      *v31 = v49;
      *(v31 + 8) = 0;
      *(v31 + 16) = v52;
      if (BYTE13(v52) && BYTE14(v52))
      {
        ++*(v31 + 26);
      }

      v15 += 4;
      LOBYTE(v14) = v13[1];
      if (v14)
      {
        goto LABEL_59;
      }

LABEL_63:
      if ((v14 & 8) != 0)
      {
        break;
      }

      v30 = v7 + 24 * ++v11;
      *v30 = v54;
      *(v30 + 16) = v13;
      v54 = v53;
      if (BYTE13(v53))
      {
        NEXT_TLPOS(&v54);
      }

      v13 = (v8 + __rev16(*v15));
      if (!v8)
      {
LABEL_90:
        while ((v11 & 0x8000) == 0)
        {
          v36 = v7 + 24 * v11;
          v54 = *v36;
          v37 = *(v36 + 16);
          v38 = *v37;
          v39 = &v37[v38];
          --v11;
          if (v38)
          {
            v13 = v39;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            goto LABEL_6;
          }
        }

        if (v48)
        {
          v3 = *(v45 + 10);
        }

        else
        {
          v3 = *(v42 + 10);
        }

        *&v55 = v3;
        DWORD2(v55) = 0;
        BYTE12(v55) = 1;
        if (v3)
        {
          v40 = *(v3 + 3);
          if (v40)
          {
            LOBYTE(v40) = *v40;
          }
        }

        else
        {
          LOBYTE(v40) = 0;
        }

        BYTE14(v55) = v40;
        if (!v3)
        {
          return 0;
        }

        goto LABEL_5;
      }
    }

    if (PRdoAction(a2, a3, (v8 + __rev16(*v15)), &v55, v6, v8, v8 + 16, v4 == 0, &v51) == 8)
    {
      return 220;
    }

    if (v51)
    {
      v48 = v51;
      v32 = *v53;
      v33 = *v45;
      if (v32 == v33)
      {
        v34 = BYTE12(v53);
        if (BYTE12(v53) == v12)
        {
          if (v12 <= 4 && ((1 << v12) & 0x15) != 0)
          {
            goto LABEL_89;
          }

          v34 = v12;
          if ((WORD4(v53) - v44) < 1)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if (BYTE12(v53) > v12)
        {
          goto LABEL_88;
        }
      }

      else if (v32 > v33)
      {
        v34 = BYTE12(v53);
LABEL_88:
        v44 = WORD4(v53);
        v45 = v53;
        v12 = v34;
      }
    }

    else
    {
      v48 = 0;
    }

LABEL_89:
    v35 = *v13;
    v13 += v35;
    if (!v35)
    {
      goto LABEL_90;
    }
  }
}

uint64_t PRwakeExprData(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a2 + 96);
  *a3 = v6;
  *a4 = *v6;
  *a5 = v6[2];
  *a6 = v6[1];
  return 1;
}

uint64_t PRdoFsa(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  *(a2 + 13) = 0;
  v4 = *(a2 + 14);
  v5 = *a1 & 0x10;
  if ((*a1 & 0x10) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ((*a1 & 0x10) != 0)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = &a1[((a1[1] - 1) << ((*a1 & 0x10) >> 4)) + 1];
  v10 = *(v8 + 1);
  v9 = (v8 + 1);
  if (v10 < 0)
  {
    v12 = *a2;
    v11 = a2[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = a1 + 2;
  while (*(a2 + 12) == 2)
  {
    if ((*v9 & 4) == 0)
    {
      goto LABEL_38;
    }

    v14 = &v9[-v6];
LABEL_33:
    v19 = *v14;
    if (v5)
    {
      v19 = v14[1] | (v19 << 8);
    }

    v9 = &v13[v19];
    if (v13[v19] < 0)
    {
      *(a2 + 13) = 1;
      v12 = *a2;
      v11 = a2[1];
    }

    NEXT_TLPOS(a2);
    v4 = *(a2 + 14);
  }

  if (!*(a2 + 12))
  {
    if ((*v9 & 8) == 0)
    {
      goto LABEL_38;
    }

    v14 = &v9[-(v6 << ((*v9 & 4) != 0))];
    goto LABEL_33;
  }

  v14 = v9 + 1;
  if ((*v9 & 0x40) != 0)
  {
    goto LABEL_33;
  }

  if ((*v9 & 0x20) != 0)
  {
    v15 = v9[1];
    v14 = v9 + 2;
    if ((*v9 & 0x10) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
    if ((*v9 & 0x10) != 0)
    {
LABEL_20:
      v17 = *v14++;
      v16 = v17;
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  v16 = 0;
  if (v15)
  {
LABEL_24:
    v18 = &v14[v7 * v15];
    ++v14;
    while (((1 << (v4 & 7)) & *(a3 + (v4 >> 3) + 32 * *(v14 - 1))) == 0)
    {
      --v15;
      v14 += v7;
      if (!v15)
      {
        v14 = v18;
        goto LABEL_28;
      }
    }

    goto LABEL_33;
  }

LABEL_28:
  if (v16)
  {
    ++v14;
    while (v4 != *(v14 - 1))
    {
      --v16;
      v14 += v7;
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_33;
  }

LABEL_38:
  if (!v12)
  {
    return 4;
  }

  result = 0;
  *a2 = v12;
  a2[1] = v11;
  return result;
}

_BYTE *NEXT_TLPOS(_BYTE *result)
{
  v1 = result[12];
  if (v1 > 1)
  {
    if (v1 == 4)
    {
      return result;
    }

    if (v1 == 3)
    {
      ++*(result + 5);
      LOWORD(v2) = *(result + 4) + 1;
      *(result + 4) = v2;
      v2 = v2;
    }

    else
    {
      v2 = 0;
      result[12] = 3;
      *(result + 4) = 0;
    }

    v7 = *result;
    v8 = *(*result + 40);
    if (v8)
    {
      v9 = *(v8 + v2);
      result[14] = v9;
      if (v9)
      {
        return result;
      }
    }

    else
    {
      result[14] = 0;
    }

    v10 = *(v7 + 80);
    *result = v10;
    if (v10)
    {
      result[12] = 0;
      return result;
    }

    v6 = 4;
    goto LABEL_20;
  }

  if (v1 == 1)
  {
    ++*(result + 5);
    LOWORD(v3) = *(result + 4) + 1;
    *(result + 4) = v3;
    v3 = v3;
  }

  else
  {
    v3 = 0;
    result[12] = 1;
    *(result + 4) = 0;
  }

  v4 = *(*result + 24);
  if (!v4)
  {
    result[12] = 2;
    result[14] = 0;
    return result;
  }

  v5 = *(v4 + v3);
  result[14] = v5;
  if (!v5)
  {
    v6 = 2;
LABEL_20:
    result[12] = v6;
  }

  return result;
}

uint64_t PRdoAction(uint64_t a1, uint64_t a2, _BYTE *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, _BYTE *a9)
{
  *a9 = 1;
  v64 = 0;
  v9 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v63 = 0;
  v15 = a3 + 1;
  v16 = a3 + 1;
  while (1)
  {
    v18 = *v16;
    v16 += 3;
    v17 = v18;
    v19 = v18 - 33;
    if (v18 <= 33)
    {
      break;
    }

    if ((v17 - 34) < 6)
    {
      v27 = *(v64 + 9);
      if (v27)
      {
        v22 = *v27;
        if (!*v27)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v39 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        *(v64 + 9) = v39;
        if (!v39)
        {
          goto LABEL_80;
        }

        v27 = v39;
        *v39 = 0;
        v39[1] = 0;
LABEL_31:
        v24 = PRmkList(a1, v27, 6);
        if (v24)
        {
LABEL_79:
          v56 = v24;
          goto LABEL_86;
        }

        v22 = **(v64 + 9);
      }

LABEL_33:
      v25 = v15 + 1;
      v26 = v19;
      goto LABEL_34;
    }

    if (v17 == 42)
    {
      v40 = (a5 + 32 * v15[1]);
      v41 = v40[2];
      v42 = bswap32(*(v15 + 2));
      for (i = *v40; i != v41; i = *(i + 80))
      {
        *(i + 92) |= v42;
      }

      *(v41 + 92) |= v42;
      v16 = v15 + 6;
    }

    else
    {
      if (v17 != 43)
      {
        goto LABEL_84;
      }

      v16 = v15 + 1;
    }

LABEL_71:
    v50 = v9--;
    v15 = v16;
    if (v50 <= 1)
    {
      v56 = 0;
      if (v14)
      {
        v52 = v64;
        if (v64)
        {
          v56 = 0;
          *(v64 + 5) = *(v14 + 160);
          *(v14 + 160) = v52;
        }
      }

      return v56;
    }
  }

  v19 = v17 - 27;
  if (v17 > 27)
  {
    if ((v17 - 28) < 3)
    {
      v22 = *(v64 + 3);
      if (!v22)
      {
        v24 = PRmkList(a1, v64 + 3, 3);
        if (v24)
        {
          goto LABEL_79;
        }

        v22 = *(v64 + 3);
      }

      goto LABEL_33;
    }

    if ((v17 - 31) >= 3)
    {
      goto LABEL_84;
    }

    v20 = *(v64 + 9);
    if (!v20)
    {
      v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
      *(v64 + 9) = v20;
      if (!v20)
      {
LABEL_80:
        v53 = *(a1 + 32);
        *v53 = 0xDC00000078;
        *(v53 + 8) = 0;
        v56 = 220;
        goto LABEL_86;
      }
    }

    v23 = v20[1];
    v21 = v20 + 1;
    v22 = v23;
    if (!v23)
    {
      v24 = PRmkList(a1, v21, 3);
      if (v24)
      {
        goto LABEL_79;
      }

      v22 = *(*(v64 + 9) + 8);
    }

    v25 = v15 + 1;
    v26 = (v17 - 30);
LABEL_34:
    if (PRbldStr(a1, v25, v22, a5, v26, &v63) == 8)
    {
      goto LABEL_85;
    }

    v16 = &v25[v63];
    goto LABEL_71;
  }

  if ((v17 - 25) < 3)
  {
    v28 = v64;
    if (!v64)
    {
      v29 = PRliveRule(a1, a2, 0, v13, v12, 1, a8);
      if (v29)
      {
        if (v29 == 4)
        {
          return 4;
        }

        else
        {
          return 8;
        }
      }

      if (PRmkErr(a1, a2, &v64, 0, 0, v13, v12))
      {
        goto LABEL_85;
      }

      v28 = v64;
      *(v64 + 1) = 0;
      v28[3] = 0;
      v28[5] = 0;
    }

    v30 = a5 + 32 * v15[2];
    v31 = *v30;
    v32 = a5 + 32 * v15[3];
    v35 = *(v32 + 16);
    v34 = v32 + 16;
    v33 = v35;
    v36 = *(*v30 + 8);
    v37 = *(v30 + 12);
    if (v37 > 2)
    {
      if (v37 == 3)
      {
        v36 += *(v31 + 32) + *(v30 + 8);
      }

      else if (v37 == 4)
      {
        v51 = *(a1 + 32);
        *v51 = 0xE6FFFFFF9ALL;
        *(v51 + 8) = 0;
        goto LABEL_85;
      }
    }

    else if (v37 == 1)
    {
      v38 = *(v30 + 8);
LABEL_51:
      v36 += v38;
    }

    else if (v37 == 2)
    {
      v38 = *(v31 + 32);
      goto LABEL_51;
    }

    v44 = 0;
    v45 = *(v34 + 12);
    if (v45 > 2)
    {
      if (v45 == 3)
      {
        v46 = *(v34 + 13) == 0;
        v44 = *(v34 + 8) + v33[16];
        goto LABEL_61;
      }

      if (v45 == 4)
      {
        v44 = v33[24] + v33[16];
      }
    }

    else
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          v44 = v33[16];
        }

        goto LABEL_63;
      }

      v44 = *(v34 + 8);
      v46 = *(v34 + 13) == 0;
LABEL_61:
      if (!v46)
      {
        ++v44;
      }
    }

LABEL_63:
    v47 = v33[4];
    v48 = *v15;
    switch(v48)
    {
      case 27:
        v28[4] = v36;
        v49 = 5;
        break;
      case 26:
        v28[2] = v36;
        v49 = 3;
        break;
      case 25:
        *v28 = v36;
        v49 = 1;
        break;
      default:
LABEL_70:
        v16 = v15 + 4;
        goto LABEL_71;
    }

    v28[v49] = v44 - v36 + v47;
    v14 = v31;
    goto LABEL_70;
  }

  if (v17 == 23)
  {
    v62 = *a4;
    if (!PRdoFsa((a6 + __rev16(*(v15 + 1))), &v62, a7))
    {
      *a9 = 0;
      v56 = 4;
      goto LABEL_86;
    }

    goto LABEL_71;
  }

  if (v17 == 24)
  {
    v13 = v15[1];
    v12 = v15[2];
    goto LABEL_71;
  }

LABEL_84:
  v54 = *(a1 + 32);
  *v54 = 0x800000096;
  *(v54 + 8) = 260;
LABEL_85:
  v56 = 8;
LABEL_86:
  if (v64)
  {
    PRfreeErr(v64);
  }

  return v56;
}

uint64_t CMP_TLPOS(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 > v3;
  if (v2 == v3 && (v5 = *(a1 + 12), v6 = *(a2 + 12), v4 = v5 > v6, v5 == v6))
  {
    v4 = v5 > 4;
    v7 = (1 << v5) & 0x15;
    if (v4 || v7 == 0)
    {
      return (*(a1 + 4) - *(a2 + 4));
    }

    else
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t PRdoSub(_BYTE *__src, unsigned __int16 *a2, unsigned __int8 *a3, unsigned int a4, _BYTE *a5, size_t __n, void *a7, unsigned __int16 *a8, _WORD *a9, char a10)
{
  if (!a4)
  {
    return 4;
  }

  v11 = a2;
  v12 = *a2;
  if (v12 < a4)
  {
    return 4;
  }

  v16 = __n;
  v17 = __src;
  if (__n > a4 || a10)
  {
    v19 = a3;
    v20 = a5;
    v21 = *a2 % a4 + *a2 / a4 * __n;
    __src = malloc_type_malloc(v21, 0x100004077774924uLL);
    *a7 = __src;
    if (!__src)
    {
      return 8;
    }

    v53 = v21;
    v54 = a8;
    v55 = a7;
    v18 = 0;
    a5 = v20;
    a3 = v19;
  }

  else
  {
    v53 = 0;
    v54 = a8;
    v18 = __n >= a4;
    v55 = a7;
    *a7 = 0;
  }

  v22 = 0;
  v23 = 0;
  v25 = a3 + 1;
  v26 = v17;
  v27 = v16;
  do
  {
    v28 = 0;
    while (1)
    {
      v29 = v23 + 1;
      if (v17[v23] == *a3)
      {
        v30 = a4 != 1;
        if (a4 != 1)
        {
          v30 = 1;
          if (v12 > v29)
          {
            v31 = &v17[v23 + 1];
            v32 = 1;
            v33 = v25;
            do
            {
              v35 = *v31++;
              v34 = v35;
              v36 = *v33++;
              if (v34 != v36)
              {
                goto LABEL_20;
              }

              v30 = ++v32 < a4;
            }

            while (v32 < a4 && v12 > (v32 + v23));
          }
        }

        if (!v30)
        {
          break;
        }
      }

LABEL_20:
      ++v28;
      ++v23;
      if (v12 <= v29)
      {
        if (v28)
        {
          if (!v18)
          {
            v38 = v22;
            v39 = a9;
            memcpy(&__src[v22], v26, v28);
            a9 = v39;
            LOWORD(v22) = v38;
          }

          LOWORD(v22) = v28 + v22;
        }

        goto LABEL_37;
      }
    }

    if (v28)
    {
      if (!v18)
      {
        v40 = __src;
        v41 = v27;
        v49 = a3;
        v51 = a5;
        v45 = a9;
        v47 = v22;
        v43 = v18;
        memcpy(&__src[v22], v26, v28);
        __src = v40;
        v27 = v41;
        v18 = v43;
        a9 = v45;
        v22 = v47;
        a3 = v49;
        a5 = v51;
      }

      v22 += v28;
    }

    if (v16)
    {
      if (v16 == 1)
      {
        __src[v22] = *a5;
      }

      else
      {
        v37 = __src;
        v50 = a3;
        v52 = a5;
        v46 = a9;
        v48 = v22;
        v44 = v18;
        v42 = v27;
        memcpy(&__src[v22], a5, v27);
        v27 = v42;
        v18 = v44;
        __src = v37;
        a9 = v46;
        v22 = v48;
        a3 = v50;
        a5 = v52;
      }

      v22 += v16;
    }

    v23 += a4;
    v26 = &v17[v23];
  }

  while (v12 > v23);
LABEL_37:
  if (*v55)
  {
    *v54 = v53;
    v11 = a9;
  }

  result = 0;
  *v11 = v22;
  return result;
}

uint64_t PRbldStr(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5, _WORD *a6)
{
  if (a5)
  {
    v11 = a5 - 1;
    v12 = *(a3 + 18);
    if (v12 >= (a5 - 1))
    {
      v13 = *(a3 + 24);
    }

    else
    {
      v13 = *(a3 + 24);
      do
      {
        *(*(a3 + 8) + 2 * v12) = v13;
        if (PRgrow(a3, (a3 + 22), *(a3 + 24), 1))
        {
          goto LABEL_48;
        }

        *(*a3 + *(a3 + 24)) = 0;
        v13 = *(a3 + 24) + 1;
        *(a3 + 24) = v13;
        LOWORD(v12) = *(a3 + 18) + 1;
        *(a3 + 18) = v12;
      }

      while (v12 < v11);
    }

    v14 = *(a3 + 8);
    *(a3 + 18) = v12 + 1;
    *(v14 + 2 * v12) = v13;
  }

  v47 = a6;
  v15 = a2 + 1;
  v16 = *a2;
  if (!*a2)
  {
LABEL_47:
    result = PRgrow(a3, (a3 + 22), *(a3 + 24), 1);
    if (result)
    {
      goto LABEL_48;
    }

    *(*a3 + (*(a3 + 24))++) = 0;
    *v47 = v15 - a2;
    return result;
  }

  *__src = 0u;
  v52 = 0u;
  while (1)
  {
    v17 = *v15;
    if (v17 <= 0x27)
    {
      if (*v15)
      {
        if (v17 != 5)
        {
          goto LABEL_53;
        }

        result = PRcatContainer(a3, (a3 + 22), (a3 + 24), a4 + 32 * v15[1]);
        if (result == 8)
        {
LABEL_51:
          v45 = *(a1 + 32);
          *v45 = 0x800000078;
          *(v45 + 8) = 0;
          return result;
        }

        v15 += 2;
      }

      else
      {
        v29 = v15[1];
        v28 = v15 + 1;
        result = PRcatBytes(a3, (a3 + 22), (a3 + 24), v28 + 1, v29);
        if (result == 8)
        {
          goto LABEL_51;
        }

        v15 = &v28[*v28 + 1];
      }

      goto LABEL_46;
    }

    if (v17 == 40)
    {
      break;
    }

    if (v17 != 41)
    {
LABEL_53:
      v43 = *(a1 + 32);
      v44 = 0x800000096;
      goto LABEL_49;
    }

    v19 = a4 + 32 * v15[2];
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v20 = v22;
    for (i = *(a4 + 32 * v15[1]); i != v20; i = *(i + 80))
    {
      v24 = *(i + 24);
      if (v24)
      {
        v25 = strlen(*(i + 24));
        result = PRcatBytes(a3, (a3 + 22), (a3 + 24), v24, v25);
        if (result == 8)
        {
          goto LABEL_51;
        }
      }

      v26 = *(i + 40);
      if (v26)
      {
        v27 = strlen(*(i + 40));
        result = PRcatBytes(a3, (a3 + 22), (a3 + 24), v26, v27);
        if (result == 8)
        {
          goto LABEL_51;
        }
      }
    }

    v36 = *(i + 24);
    if (v36)
    {
      if (*(v21 + 12) == 1)
      {
        v37 = *(v21 + 8);
        if (*(v21 + 13))
        {
          ++v37;
        }

        v38 = (a3 + 22);
        v39 = (a3 + 24);
        v40 = v37;
      }

      else
      {
        v41 = strlen(*(i + 24));
        v38 = (a3 + 22);
        v39 = (a3 + 24);
        v40 = v41;
      }

      result = PRcatBytes(a3, v38, v39, v36, v40);
      if (result == 8)
      {
        goto LABEL_51;
      }
    }

    v15 += 3;
LABEL_46:
    v42 = v16--;
    if (v42 <= 1)
    {
      goto LABEL_47;
    }
  }

  v50 = 0;
  v49 = 0;
  v48 = 0;
  v30 = &v15[v15[1] + 1];
  v31 = v30 + 1 + *(v30 + 1) + 1;
  __src[0] = 0;
  *(&v52 + 6) = 0;
  if (PRbldStr(a1, v31, __src, a4, 0, &v50) == 8 && __src[0] != 0)
  {
    free(__src[0]);
    return 8;
  }

  --WORD4(v52);
  if (PRdoSub(__src[0], &v52 + 4, v15 + 2, v15[1], (v30 + 2), *(v30 + 1), &v49, &v48 + 1, &v48, 0) == 8)
  {
    v46 = __src[0];
    goto LABEL_56;
  }

  v33 = v49;
  if (v49)
  {
    v34 = PRcatBytes(a3, (a3 + 22), (a3 + 24), v49, v48);
    free(v33);
    v35 = __src[0];
    if (v34 == 8)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  v35 = __src[0];
  if (PRcatBytes(a3, (a3 + 22), (a3 + 24), __src[0], WORD4(v52)) != 8)
  {
LABEL_42:
    free(v35);
    v15 = (v31 + v50);
    goto LABEL_46;
  }

LABEL_55:
  v46 = v35;
LABEL_56:
  free(v46);
LABEL_48:
  v43 = *(a1 + 32);
  v44 = 0x800000078;
LABEL_49:
  *v43 = v44;
  *(v43 + 8) = 0;
  return 8;
}

uint64_t PRcatBytes(const void **a1, unsigned __int16 *a2, _WORD *a3, const void *a4, unsigned int a5)
{
  if (PRgrow(a1, a2, *a3, a5))
  {
    return 8;
  }

  memcpy(*a1 + *a3, a4, a5);
  result = 0;
  *a3 += a5;
  return result;
}

uint64_t PRcatContainer(const void **a1, unsigned __int16 *a2, _WORD *a3, uint64_t a4)
{
  v4 = (*(a4 + 26) - *(a4 + 10));
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = *(a4 + 12);
    v10 = *(a4 + 8);
    v11 = *a4;
    do
    {
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          v10 = 0;
          v9 = 3;
          continue;
        }

        if (v9 != 3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v10 = 0;
        }

        v12 = v11[3];
        if (v12)
        {
          v8 = *(v12 + v10);
          if (v8)
          {
            ++v10;
            v9 = 1;
LABEL_18:
            v14 = *a3;
            if (*a2 < (v14 + 1))
            {
              result = PRgrow(a1, a2, v14, 1);
              if (result == 8)
              {
                return result;
              }

              v14 = *a3;
            }

            *(*a1 + v14) = v8;
            ++*a3;
            LOWORD(v4) = v4 - 1;
            continue;
          }
        }

        v10 = 0;
      }

      v13 = v11[5];
      if (v13)
      {
        v8 = *(v13 + v10);
        if (v8)
        {
          ++v10;
          v9 = 3;
          goto LABEL_18;
        }
      }

      v10 = 0;
      v11 = v11[10];
      v9 = 1;
    }

    while (v4 >= 1);
  }

  return 0;
}

uint64_t PRcatCString(const void **a1, unsigned __int16 *a2, _WORD *a3, char *__s)
{
  v8 = strlen(__s);

  return PRcatBytes(a1, a2, a3, __s, v8);
}

uint64_t PRgrow(const void **a1, unsigned __int16 *a2, unsigned int a3, __int16 a4)
{
  if (*a2 >= (a4 + a3))
  {
    return 0;
  }

  v6 = ((a4 + a3) & 0xFFC0) + 64;
  *a2 = v6;
  v7 = *a1;
  v8 = malloc_type_malloc(v6 & 0xFFC0, 0x100004077774924uLL);
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      memcpy(v8, *a1, a3);
      free(*a1);
      *a1 = v9;
      return 0;
    }
  }

  else
  {
    *a1 = v8;
    if (v8)
    {
      return 0;
    }
  }

  return 8;
}

uint64_t PRfastSpell(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v106 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  *v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  *(a3 + 16) = 0;
  v104[0] = 0;
  v105[0] = 0;
  v76 = *(a1 + 28);
  i = *(a2 + 128);
  *(*(i + 3184) + 304) = 11;
  *(i + 1408) = 1;
  *i = 3;
  if (*(a3 + 61) && (*a2 & 2) == 0)
  {
    v6 = *(a1 + 32);
    *v6 = 0xE6000001F9;
    *(v6 + 8) = 1020;
    result = 230;
    goto LABEL_162;
  }

  *(i + 1339) = 0;
  v8 = (*a3 + *(a3 + 14) + *(a3 + 16));
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_159;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v89 = 0;
  v91 = 0;
  v14 = 0;
  v15 = v104;
  v16 = v105;
  v82 = i;
  while (2)
  {
    v84 = v14;
    v17 = 0;
    v18 = 0;
    v19 = *(a2 + 34);
    v20 = *(a2 + 32);
    v21 = *(a2 + 33);
    v22 = *(a2 + 8);
    do
    {
      if ((*(v22 + 4 * v9) & 0x2000000) == 0 && v9 != v19 && v9 != v20 && v9 != v21)
      {
        break;
      }

      v18 = (v18 + 1);
      ++v17;
      v9 = v8[v18];
      if (*(a2 + 32))
      {
        v23 = v9 != v20 || v20 == v21;
        if (!v23)
        {
          do
          {
            v18 = (v18 + 1);
            ++v17;
            v9 = v8[v18];
            if (v8[v18])
            {
              v24 = v9 == v21;
            }

            else
            {
              v24 = 1;
            }
          }

          while (!v24);
        }
      }
    }

    while (v9);
    __s1 = v15;
    v25 = v8[v18];
    __src = v16;
    v86 = v13;
    if (!v8[v18])
    {
      v85 = 0;
      v27 = 0;
      v30 = 0;
      LOWORD(v45) = 0;
      goto LABEL_87;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(v22 + 4 * v25);
      if ((v31 & 0x2000000) != 0)
      {
        break;
      }

      if (v25 == v19)
      {
        v18 = (v18 + 1);
      }

      else
      {
        if (v25 != v20)
        {
          v18 = (v18 + 1);
          if (v30 > 63)
          {
            break;
          }

          if (v29 || (v31 & 0x60000040) == 0)
          {
            if (v29 && v26 && (v31 & 0x60000040) != 0)
            {
              if (v26 == 2)
              {
                if ((v31 & 0x20000000) == 0)
                {
                  v26 = 2;
                  goto LABEL_49;
                }

                v35 = 0;
                v28 = 1;
              }

              else
              {
                if ((v31 & 0x20000000) != 0 || v28)
                {
                  v28 = 1;
                  goto LABEL_49;
                }

                v35 = 2;
              }

LABEL_38:
              v26 = v35;
            }
          }

          else
          {
            v28 = 0;
            v35 = 1;
            v29 = 1;
            if ((v31 & 0x40000000) != 0)
            {
              goto LABEL_38;
            }
          }

LABEL_49:
          v36 = v30++;
          v16[v36] = v25;
          if (v25 == *(a2 + 26))
          {
            v37 = *(v3 + 32);
            v38 = v37[1];
            if (v38 <= 1)
            {
              v38 = 1;
            }

            do
            {
              if (v8[v18] == 10)
              {
                v18 = (v18 + 1);
              }

              else
              {
                v18 = v18;
              }

              v23 = v38-- == 0;
            }

            while (!v23);
            if (v37[3])
            {
              v39 = v37[3];
              while (v8[v18 + v39] == 9)
              {
                v40 = v39--;
                if (v40 <= 1)
                {
                  goto LABEL_61;
                }
              }
            }

            else
            {
LABEL_61:
              v18 = v18 + v37[3];
            }

            v41 = v37[2];
            if (v41)
            {
              v42 = v41;
              while (v8[v18 + v42] == 32)
              {
                v43 = v42--;
                if (v43 < 2)
                {
                  v18 = (v18 + v41);
                  break;
                }
              }
            }

            v27 = 1;
          }

          goto LABEL_68;
        }

        do
        {
          v32 = v18;
          v33 = v8[v18];
          v18 = (v18 + 1);
          if (v33)
          {
            v34 = v33 == v21;
          }

          else
          {
            v34 = 1;
          }
        }

        while (!v34);
        v18 = v32;
      }

LABEL_68:
      v25 = v8[v18];
    }

    while (v8[v18]);
    v85 = v26;
    v44 = v8[v18];
    if (v8[v18])
    {
      v45 = 0;
      do
      {
        if ((*(v22 + 4 * v44) & 0x2000000) == 0 && v44 != v19 && v44 != v20 && v44 != v21)
        {
          break;
        }

        LODWORD(v18) = v18 + 1;
        ++v45;
        v46 = v8[v18];
        if (v44 == v20)
        {
          while (v46 && v46 != v21)
          {
            LODWORD(v18) = v18 + 1;
            ++v45;
            v46 = v8[v18];
          }
        }

        v44 = v46;
      }

      while (v46);
    }

    else
    {
      LOWORD(v45) = 0;
    }

LABEL_87:
    v16[v30] = 0;
    if (*(a1 + 28))
    {
      SLchcnv(v16, v30, v16, 1, *(a2 + 20));
    }

    if (v18 <= v17)
    {
      if (v17 && !*(v3 + 16))
      {
        *(v3 + 16) = v17;
      }

LABEL_159:
      if ((*(v3 + 10) & 0x20) != 0)
      {
        result = 0;
      }

      else
      {
        result = 200;
      }

      break;
    }

    if (*(v3 + 61))
    {
      v48 = v27 == 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = !v48;
    *(i + 1308) = v49;
    if (ICspl(__src, i) == 8)
    {
      v73 = *(a1 + 32);
      *v73 = 0xDC000000A0;
      *(v73 + 8) = 1020;
LABEL_164:
      result = 220;
      break;
    }

    v50 = *(i + 4);
    if (v50 == 4 || !*(i + 1328) && v50 != 11 && !*(i + 1322))
    {
      v12 = v45;
      v15 = __src;
      goto LABEL_148;
    }

    v77 = v10;
    v51 = v18 - (v17 + v45);
    if (*(i + 1482))
    {
      v52 = strlen((i + 1482));
      LOWORD(v45) = v45 + v52;
      v51 -= v52;
      __src[v51] = 0;
    }

    else
    {
      v52 = 0;
    }

    if (*(i + 1417))
    {
      v53 = strlen((i + 1417));
      LOWORD(v17) = v17 + v53;
      __src += v53;
      v83 = v53;
      v51 -= v53;
    }

    else
    {
      v83 = 0;
    }

    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    *v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    WORD4(v92) = v17 + v91;
    LOWORD(v94) = v51;
    v54 = malloc_type_calloc(1uLL, v51 + 1, 0xAEE9D704uLL);
    v93[0] = v54;
    if (!v54)
    {
      v75 = *(a1 + 32);
      *v75 = 0xDC00000078;
      *(v75 + 8) = 1020;
      result = 120;
      break;
    }

    strcpy(v54, __src);
    if (PRFillError(a1, a2, &v92, 0))
    {
      goto LABEL_164;
    }

    free(v93[0]);
    v55 = v102;
    if (!v102)
    {
LABEL_146:
      v12 = v45;
      v15 = __src;
      v3 = a3;
      i = v82;
      goto LABEL_147;
    }

    *(a3 + 40) = v102;
    v88 = v86 - v12;
    v87 = v86 - v12;
    v79 = v83 + v52;
    v56 = v18 - v17;
    do
    {
      v57 = *(v55 + 12);
      if (v57 != 5)
      {
        goto LABEL_119;
      }

      v58 = *(v55 + 13);
      if (v58 == 3)
      {
        goto LABEL_118;
      }

      if (v58 == 2 && *v55)
      {
        --*v55;
LABEL_118:
        ++*(v55 + 2);
      }

LABEL_119:
      v59 = *(a2 + 20);
      if (v59 == 16)
      {
        if (v57 != 6)
        {
          goto LABEL_135;
        }

        *v55 = v89;
        *(v55 + 2) = v88;
        if (!v11)
        {
          goto LABEL_135;
        }

        ***(v55 + 24) = 65;
        v59 = *(a2 + 20);
      }

      if (v59 == 15)
      {
        v60 = *(v55 + 12);
        if (v60 != 6)
        {
          goto LABEL_136;
        }

        *v55 = v89;
        *(v55 + 2) = v87;
        if (*(v82 + 1404) == 2)
        {
          __s1[v87] = 0;
          strcat(__s1, **(v55 + 24));
          v61 = *(v55 + 24);
          if (v61)
          {
            *(v61 + 18) = 0;
            *(v61 + 24) = 0;
            if (*(v61 + 16))
            {
              v62 = 0;
              v63 = *(v61 + 8);
              do
              {
                *(v63 + 2 * v62++) = -1;
              }

              while (v62 < *(v61 + 16));
            }
          }

          PRaddList(v61, __s1, 1, 0);
        }

        if (v11)
        {
          v64 = *(v55 + 24);
          if (*(v64 + 9))
          {
            v65 = 0;
            do
            {
              v66 = *v64;
              v67 = *(v64[1] + 2 * v65);
              v68 = strlen((*v64 + v67));
              SLrecap((v66 + v67), v68, 0, 0, v11, *(a2 + 8));
              ++v65;
              v64 = *(v55 + 24);
            }

            while (v65 < *(v64 + 9));
          }
        }
      }

LABEL_135:
      v60 = *(v55 + 12);
LABEL_136:
      if (v60 == 52)
      {
        if (*(v55 + 13) == 100)
        {
          *v55 -= v83;
          *(v55 + 2) += v79;
        }
      }

      else if (v60 == 4)
      {
        *v55 = v91;
        *(v55 + 2) = v56;
        *(v55 + 8) = v91;
        *(v55 + 10) = v56;
      }

      v55 = *(v55 + 40);
    }

    while (v55);
    if (!v76)
    {
      goto LABEL_146;
    }

    v3 = a3;
    v69 = *(a3 + 40);
    for (i = v82; v69; v69 = *(v69 + 40))
    {
      ConvertAlts(*(v69 + 24), 0, *(a2 + 20));
    }

    v12 = v45;
    v15 = __src;
LABEL_147:
    v10 = v77;
LABEL_148:
    v70 = v18 + v91;
    v71 = *(v3 + 14);
    v11 = v85;
    if (*(v3 + 12) <= (v71 + v18 + v91))
    {
      if ((*(v3 + 10) & 0x20) != 0)
      {
        result = 0;
        *(v3 + 16) = v70;
      }

      else
      {
        v74 = *(v3 + 40);
        if (v74)
        {
          *(v3 + 16) = v91;
          PRfreeErrList(v74);
          *(v3 + 40) = 0;
        }

        else
        {
          *(v3 + 16) = v70;
        }

        result = 200;
      }
    }

    else
    {
      *(v3 + 16) = v70;
      if (!*(v3 + 40) && ++v10 < *(a2 + 28))
      {
        v89 = v17 + v91;
        v13 = v18 - v17;
        v14 = v105;
        if (v84 == v105)
        {
          v14 = v104;
        }

        v8 = (*v3 + v71 + v70);
        v9 = *v8;
        v91 += v18;
        v16 = v14;
        if (!*v8)
        {
          goto LABEL_159;
        }

        continue;
      }

      result = 0;
    }

    break;
  }

LABEL_162:
  v72 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRNpBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  v4 = FR_TOUT_STR;
  v5 = FR_ARTICLES_STR;
  if (v3 != 5)
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = FR_DE_STR;
  if (v3 != 5)
  {
    v6 = 0;
  }

  if (v3 == 9)
  {
    v4 = IT_TUTTO_STR;
    v5 = IT_ARTICLES_STR;
    v6 = IT_DI_STR;
  }

  if (v3 == 8)
  {
    v4 = SP_TOUT_STR;
    v5 = SP_ARTICLES_STR;
    v6 = SP_DE_STR;
  }

  if (v3 == 12)
  {
    v4 = PO_TOUT_STR;
  }

  v68 = v4;
  if (v3 == 12)
  {
    v7 = PO_ARTICLES_STR;
  }

  else
  {
    v7 = v5;
  }

  v8 = PO_DE_STR;
  if (v3 != 12)
  {
    v8 = v6;
  }

  v58 = v8;
  v59 = v7;
  v9 = *(a3 + 56);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v66 = 0;
    v12 = 0;
    v71 = 0;
    v70 = 0;
    v13 = 0;
    v77 = *(a2 + 20);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v65 = 0;
    v67 = 0;
    v75 = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v69) = 0;
    LOBYTE(v78) = 0;
    v76 = 0;
    v64 = 1;
    do
    {
      v73 = v13;
      v74 = v14;
      v18 = v15;
      v19 = v16;
      v20 = v9;
      v21 = *(v9 + 152);
      if (v9 != v21)
      {
        v22 = 0;
        v23 = **(v9 + 144);
        v24 = 1;
        goto LABEL_31;
      }

      if (*(v9 + 80) == *(v9 + 176) || (v25 = *(v9 + 144)) == 0)
      {
        v23 = *(v20 + 16);
        if (v77 <= 0xC && ((1 << v77) & 0x1120) != 0)
        {
          v27 = *(v20 + 51);
          if ((v27 - 2) < 2 || v27 == 1 && v20 != *(a3 + 72))
          {
            LOBYTE(v17) = 0;
            v10 = 12;
            LOBYTE(v78) = 1;
            v76 = 3;
            LOBYTE(v69) = 1;
            v24 = 1;
            v22 = 1;
            goto LABEL_31;
          }
        }

        v26 = v11;
      }

      else
      {
        v26 = v11;
        v23 = *v25;
      }

      v22 = 0;
      v24 = PRwrdlst(v23, v58) == 0;
      v11 = v26;
LABEL_31:
      v72 = v24;
      if (v77 == 9)
      {
        if (v11 && PRwrdlst(v23, IT_QUALE_STR))
        {
          LOBYTE(v78) = 0;
          *(v20 + 98) &= ~0x40u;
          v60 = 1;
        }

        else
        {
          v60 = 0;
        }

        if (PRwrdlst(v23, IT_I_STR))
        {
          LOBYTE(v69) = 0;
          LOBYTE(v17) = 0;
          v10 = 4;
          LOBYTE(v78) = 1;
          v76 = 2;
          v22 = 1;
        }

        v29 = PRwrdlst(v23, IT_GLI_LE_STR);
        if (v29 && *(v21 + 80) != *(v21 + 176))
        {
          if (v29 == 1)
          {
            v10 = 4;
          }

          else
          {
            v10 = 8;
          }

          v76 = 2;
          v13 = v73;
          v16 = v19;
          v15 = v18;
          goto LABEL_64;
        }

        goto LABEL_49;
      }

      if (v77 != 12)
      {
        v60 = 0;
LABEL_49:
        v16 = v19;
        goto LABEL_50;
      }

      v28 = PRwrdlst(v23, PO_O_A_STR);
      v16 = v19;
      if (v28)
      {
        v15 = v18;
        v60 = 0;
        if (v28 == 1)
        {
          v10 = 4;
          v76 = v28;
        }

        else
        {
          v76 = 1;
          v10 = 8;
        }

        v13 = v73;
LABEL_64:
        v32 = v74;
        LOBYTE(v17) = 0;
        LOBYTE(v69) = 0;
        v30 = (v20 + 98);
        v33 = *(v20 + 98) & 0xF08F | 0x40;
        *(v20 + 98) = v33;
        LOBYTE(v78) = 1;
        goto LABEL_65;
      }

      v60 = v28;
LABEL_50:
      v15 = v18;
      v30 = (v20 + 98);
      v31 = *(v20 + 98);
      v32 = v74;
      if (!v22)
      {
        v10 = (v31 >> 8) & 0xC;
        v76 = (v31 >> 8) & 3;
        v78 = (v31 >> 6) & 1;
        v69 = (v31 >> 5) & 1;
        v17 = (v31 >> 4) & 1;
        v13 = v73;
        v34 = v77;
        goto LABEL_69;
      }

      v33 = v31 & 0xF08F;
      if (v78)
      {
        v33 |= 0x40u;
      }

      if (v17)
      {
        v33 |= 0x10u;
      }

      if (v69)
      {
        v33 |= 0x20u;
      }

      *v30 = v33;
      if (!v10)
      {
        v10 = 0;
        v13 = v73;
        v34 = v77;
        goto LABEL_66;
      }

      v13 = v73;
LABEL_65:
      v34 = v77;
      v33 |= v10 << 8;
      *v30 = v33;
LABEL_66:
      if (v76)
      {
        *v30 = v33 | (v76 << 8);
      }

      else
      {
        v76 = 0;
      }

LABEL_69:
      if ((v34 | 4) == 0xC && PRwrdlst(v23, v68))
      {
        *(v20 + 98) |= 0x40u;
        LOBYTE(v78) = 1;
      }

      if (v32)
      {
        v35 = !v75;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v10;
      }

      if (v17)
      {
        v37 = v10 == 0;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        v10 = v36;
      }

      if (!v10)
      {
        if (v32)
        {
          v40 = v70;
          result = set_np_attributes(v66, v12, v70, v13, a1, a2, a3, v16, v15);
          if (result)
          {
            return result;
          }

          v16 = 0;
          v15 = 0;
          v42 = 1;
          HIDWORD(v70) = v70;
          v71 = v13;
        }

        else
        {
          v40 = v70;
          v42 = HIDWORD(v67);
        }

        v14 = 0;
        v46 = v67;
        if (v17)
        {
          v46 = 1;
        }

        LODWORD(v67) = v46;
        v39 = 1;
        goto LABEL_156;
      }

      if (v32)
      {
        if ((!v12 || (*(v12 + 94) & 0x80) == 0) && !v78)
        {
          LOBYTE(v78) = 0;
          v39 = v34 != 9 || v60 == 0;
          goto LABEL_113;
        }

        if (!v64)
        {
          v39 = 1;
          LOBYTE(v78) = 1;
LABEL_113:
          v40 = v70;
          v47 = (v10 & WORD2(v70)) == 0;
          if ((v76 & v71) == 0)
          {
            v47 = 1;
          }

          v42 = HIDWORD(v67);
          if (v70 == 12)
          {
            v40 = v10;
          }

          else if (v70 == 4)
          {
            if (v47)
            {
              v48 = v16;
            }

            else
            {
              v48 = 1;
            }

            if (v10 == 8)
            {
              v16 = v48;
            }

            else
            {
              v16 = v16;
            }

            if (v10 == 8)
            {
              v40 = 16;
            }

            else
            {
              v40 = 4;
            }
          }

          else
          {
            v49 = v70 == 8;
            v50 = v10 == 4;
            if (v47)
            {
              v51 = v16;
            }

            else
            {
              v51 = 1;
            }

            if (v49 && v50)
            {
              v16 = v51;
            }

            else
            {
              v16 = v16;
            }

            if (v49 && v50)
            {
              v40 = 16;
            }
          }

          if (v13 == 3)
          {
            v14 = 1;
            v13 = v76;
          }

          else
          {
            if (v13 == 1)
            {
              if (v47)
              {
                v52 = v15;
              }

              else
              {
                v52 = 1;
              }

              if (v76 == 2)
              {
                v15 = v52;
              }

              else
              {
                v15 = v15;
              }

              if (v76 == 2)
              {
                v13 = 32;
              }

              else
              {
                v13 = 1;
              }
            }

            else
            {
              v53 = v13 == 2;
              v54 = v76 == 1;
              if (v47)
              {
                v55 = v15;
              }

              else
              {
                v55 = 1;
              }

              if (v53 && v54)
              {
                v15 = v55;
              }

              else
              {
                v15 = v15;
              }

              if (v53 && v54)
              {
                v13 = 32;
              }
            }

            v14 = 1;
          }

          goto LABEL_156;
        }

        v43 = v70;
        result = set_np_attributes(v66, v12, v70, v13, a1, a2, a3, v16, v15);
        if (result)
        {
          return result;
        }

        v16 = 0;
        v15 = 0;
        LOBYTE(v78) = 1;
        v42 = 1;
      }

      else
      {
        v43 = HIDWORD(v70);
        v13 = v71;
        v42 = HIDWORD(v67);
      }

      LODWORD(v67) = 0;
      v39 = v69 == 0;
      *(v20 + 96) |= 0x1000u;
      if (v65)
      {
        v44 = v13;
      }

      else
      {
        v44 = 0;
      }

      if (v65)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0;
      }

      HIDWORD(v70) = v45;
      v71 = v44;
      v14 = 1;
      v66 = v20;
      v40 = v10;
      v13 = v76;
LABEL_156:
      if (v72 || (v56 = 1, !v42) && !v67)
      {
        v56 = 0;
      }

      v65 = v56;
      if (!v39 || (v57 = 0, v10) && !*(v20 + 176))
      {
        result = set_np_attributes(v66, v20, v40, v13, a1, a2, a3, v16, v15);
        if (result)
        {
          return result;
        }

        v16 = 0;
        v15 = 0;
        v14 = 0;
        v57 = 1;
        HIDWORD(v70) = v40;
        v71 = v13;
      }

      if (v78)
      {
        v75 = PRwrdlst(v23, v59) == 0;
      }

      else
      {
        v75 = 0;
      }

      LODWORD(v70) = v40;
      v64 = PRwrdlst(v23, v68) == 0;
      HIDWORD(v67) = v57;
      v11 = v77 == 9 && PRwrdlst(v23, IT_IL_LA_STR);
      v9 = *(v20 + 176);
      v12 = v20;
    }

    while (v9);
  }

  return 0;
}

uint64_t PRwrdlst(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    v6 = 1;
    do
    {
      if (v4)
      {
        v7 = v3;
        v8 = v4;
        while (1)
        {
          v2 = *a2;
          if (v8 != v2)
          {
            break;
          }

          ++a2;
          v9 = *v7++;
          v8 = v9;
          if (!v9)
          {
            v2 = *a2;
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        if ((v2 | 0x20) == 0x20)
        {
          return v6;
        }
      }

      while ((v2 | 0x20) != 0x20)
      {
        v10 = *++a2;
        v2 = v10;
      }

      if (v2 == 32)
      {
        ++a2;
      }

      ++v6;
      v2 = *a2;
    }

    while (*a2);
  }

  return 0;
}

uint64_t set_np_attributes(unsigned __int16 *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  v13 = *(a6 + 20);
  if (a8)
  {
    v14 = 0;
  }

  else
  {
    v14 = 52;
  }

  if (a8)
  {
    v15 = 12;
  }

  else
  {
    v15 = 0;
  }

  v16 = (a8 == 0) << 9;
  if (a8)
  {
    v17 = 53;
  }

  else
  {
    v17 = 54;
  }

  if (a3 == 16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 53;
  }

  if (a3 != 16)
  {
    v14 = 0;
    v15 = a3;
    v16 = 0;
  }

  if (a9)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v18 = v14;
    v20 = v16;
  }

  else
  {
    v20 = v16 | 0x400;
  }

  if (a4 == 32)
  {
    v21 = v19;
  }

  else
  {
    v21 = a4;
  }

  if (a4 == 32)
  {
    v22 = v18;
  }

  else
  {
    v22 = v14;
  }

  if (a4 == 32)
  {
    v23 = v20;
  }

  else
  {
    v23 = v16;
  }

  v24 = v21 | v15;
  *(a1 + 23) |= v23;
  v25 = a1;
  if (a1)
  {
    v25 = a1;
    if (a1 != a2)
    {
      v25 = a1;
      do
      {
        v25[48] |= v24 | 0x2000;
        if (v13 == 9)
        {
          *(v25 + 23) |= v23;
        }

        v25 = *(v25 + 22);
        if (v25)
        {
          v26 = v25 == a2;
        }

        else
        {
          v26 = 1;
        }
      }

      while (!v26);
    }
  }

  *(a2 + 96) |= v24 | 0x2100;
  if (v13 == 9)
  {
    *(v25 + 23) |= v23;
  }

  if (!v22 || *(a7 + 2) != 2 || *a1 < *(a7 + 16) || PRliveRule(a5, a6, 0, 0x3Au, v22, 1, 1))
  {
    return 0;
  }

  v31 = 0;
  result = PRmkErr(a5, a6, &v31, *(a1 + 19), 0, 0x3Au, v22);
  if (!result)
  {
    v28 = *(*(a1 + 19) + 8);
    v29 = *(*(a2 + 152) + 32) + *(*(a2 + 152) + 8) - v28;
    v30 = v31;
    *v31 = v28;
    v30[1] = v29;
  }

  return result;
}

uint64_t PRfixSpan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(*(a1 + 16) + 40))
  {
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    if (*(v4 + 2))
    {
      result = FixSpan(a1, (a2 + 32), *(a2 + 8), a4, *(*(a1 + 16) + 40), v4, (v4 + 2));
      if (result)
      {
        break;
      }
    }

    if (*(v4 + 6))
    {
      result = FixSpan(a1, (a2 + 32), *(a2 + 8), a4, *(*(a1 + 16) + 40), (v4 + 4), (v4 + 6));
      if (result)
      {
        break;
      }
    }

    if (*(v4 + 10))
    {
      result = FixSpan(a1, (a2 + 32), *(a2 + 8), a4, *(*(a1 + 16) + 40), (v4 + 8), (v4 + 10));
      if (result)
      {
        break;
      }
    }

    v4 = *(v4 + 40);
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FixSpan(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 *a6, __int16 *a7)
{
  v7 = *a6;
  v8 = *a7;
  v9 = v7 & 0xFFFFFFF0;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = (*a4 + *(a5 + 2 * (v7 >> 4)));
  v15 = *v14;
  if (*v14)
  {
    v16 = v9 == v7;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    do
    {
      if (v15 == v10)
      {
        do
        {
          v17 = *v14++;
        }

        while (v17 != v11);
      }

      else
      {
        if (v15 != v12)
        {
          if (v15 == v13)
          {
            do
            {
              v18 = *++v14;
            }

            while ((*(a3 + 4 * v18) & 0x2000000) != 0);
            ++v9;
            goto LABEL_14;
          }

          ++v9;
        }

        ++v14;
      }

LABEL_14:
      v15 = *v14;
    }

    while (*v14 && v7 > v9);
  }

  if (*a7 && !v15)
  {
    v19 = *(a1 + 32);
    *v19 = 0xDCFFFFFF9BLL;
    *(v19 + 8) = 3022;
    return 220;
  }

  *a6 = v14 - *a4 - *(a4 + 14);
  v21 = *v14;
  if (*v14)
  {
    v22 = v8 < 1;
  }

  else
  {
    v22 = 1;
  }

  LOWORD(v23) = v14;
  if (!v22)
  {
    v23 = v14;
    do
    {
      if (v21 == v10)
      {
        do
        {
          v24 = *v23++;
        }

        while (v24 != v11);
      }

      else
      {
        if (v21 != v12)
        {
          if (v21 == v13)
          {
            do
            {
              v25 = *++v23;
            }

            while ((*(a3 + 4 * v25) & 0x2000000) != 0);
            --v8;
            goto LABEL_33;
          }

          --v8;
        }

        ++v23;
      }

LABEL_33:
      v21 = *v23;
      if (*v23)
      {
        v26 = v8 <= 0;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
  }

  result = 0;
  *a7 = v23 - v14;
  return result;
}

uint64_t PRfixPars(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 16) + 40);
  if (!v3)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = 0;
  result = FixSpan(a1, (a2 + 32), *(a2 + 8), a3, v3, (a3 + 16), &v5);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t PRgetmsg(char **a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (SLSeek(*a3, *(a3 + 4) + a2, 0))
  {
    v6 = 111;
    goto LABEL_5;
  }

  v12 = 0;
  if (SLFRead(v5, 322, &__dst, &v12))
  {
LABEL_4:
    v6 = 112;
    goto LABEL_5;
  }

  v9 = __rev16(__dst);
  v10 = malloc_type_malloc((v9 + 1), 0x100004077774924uLL);
  *a1 = v10;
  if (!v10)
  {
    v6 = 120;
    goto LABEL_5;
  }

  v11 = v10;
  if (v9 < 0x141)
  {
    memcpy(v10, v14, v9);
  }

  else
  {
    memcpy(v10, v14, 0x140uLL);
    if (SLFRead(v5, v9 - 320, v11 + 320, &v12))
    {
      free(v11 + 320);
      *a1 = 0;
      goto LABEL_4;
    }

    v11 = *a1;
  }

  v11[v9] = 0;
  if (v9 && *(a3 + 88))
  {
    v6 = PRdecomp(v11, v9, *(a3 + 80));
    if (v6)
    {
      free(v11);
      *a1 = 0;
    }
  }

  else
  {
    SLcrypt(v11, v9, &SLkey, 7);
    v6 = 0;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t PRIcsTokWalk(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v86 = *MEMORY[0x1E69E9840];
  v82 = 0;
  v8 = *(a3 + 128);
  v9 = *(v8 + 8);
  v10 = *(a3 + 8);
  *(v8 + 1339) = 0;
  if (a4 && (*a3 & 2) == 0)
  {
    v11 = *(a2 + 32);
    *v11 = 0x4000001F9;
    *(v11 + 8) = 821;
  }

  result = PRmkList(a2, &v82, 7);
  if (result == 220)
  {
    goto LABEL_153;
  }

  v13 = (v8 + 1339);
  if (!a1)
  {
    *v13 = 0;
LABEL_152:
    PRfreeList(v82);
    result = 0;
    goto LABEL_153;
  }

  v81 = (v8 + 1614);
  v14 = a1;
  while (1)
  {
    v15 = *(v14 + 72);
    if (v15)
    {
      v16 = *(v15 + 4);
      if ((v16 & 0x80000000) == 0 && (v16 & 0x221C0) != 0)
      {
        v17 = *(v15 + 16);
        if (v17)
        {
          v18 = *(v15 + 32);
          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = *v17++;
              if ((*(v10 + 4 * v20) & 0x60000040) != 0)
              {
                if (v19)
                {
                  goto LABEL_20;
                }

                v19 = 1;
              }

              --v18;
            }

            while (v18);
          }
        }
      }

      if (v16 != 4096 && v16 != 0x4000)
      {
        *v13 = 0;
      }
    }

LABEL_20:
    v22 = 0;
    if (a4)
    {
      if ((*a3 & 2) != 0)
      {
        v21 = *(v14 + 16);
        if (v21)
        {
          if (strchr(v21, *(a3 + 26)))
          {
            v22 = 1;
          }
        }
      }
    }

    *(v8 + 1308) = v22;
    v23 = *(v14 + 4);
    if (v23 != -1073733632 && v23 != -1073739776)
    {
      break;
    }

    LOBYTE(v25) = 1;
    if (v9 <= 0x10)
    {
      if (((1 << v9) & 0x2CC0) != 0)
      {
        v26 = *(v14 + 72);
        if (!v26)
        {
          goto LABEL_66;
        }

        v27 = *(v26 + 32);
        if (v27 < 3)
        {
          goto LABEL_66;
        }

        v28 = *(*(v26 + 16) + (v27 - 1));
        if ((v28 - 115) > 7 || ((1 << (v28 - 115)) & 0xA1) == 0)
        {
          if (!v28)
          {
            goto LABEL_66;
          }

          if (v28 != 97 || v9 != 7)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        if (v9 != 16)
        {
          goto LABEL_67;
        }

        v26 = *(v14 + 72);
        if (!v26 || (v33 = *(v26 + 32), v33 < 3) || *(*(v26 + 16) + (v33 - 1)) != 115)
        {
LABEL_66:
          LOBYTE(v25) = 1;
          goto LABEL_67;
        }
      }

      if (!*(v26 + 48))
      {
        v23 = -2147483647;
        *(v14 + 4) = -2147483647;
      }

      goto LABEL_66;
    }

LABEL_67:
    if ((v23 & 0x221C0) == 0)
    {
      LOBYTE(v25) = 1;
    }

    if ((v23 & 0x10055011) != 0 || (v25 & 1) == 0)
    {
      if (*(v14 + 32))
      {
        v35 = 0;
        do
        {
          v13[v35] = *(*(v14 + 16) + v35);
          ++v35;
        }

        while (v35 < *(v14 + 32));
      }

      else
      {
        v35 = 0;
      }

      v13[v35] = 0;
    }

LABEL_77:
    v14 = *(v14 + 80);
    if (!v14)
    {
      v70 = 0;
      *v13 = 0;
      do
      {
        *(a1 + 88) = v70;
        a1 = *(a1 + 176);
        ++v70;
      }

      while (a1);
      goto LABEL_152;
    }
  }

  LODWORD(v25) = v23 >> 31;
  if ((v23 & 0x80000000) != 0 || (*(v14 + 4) & 0x221C0) == 0)
  {
    goto LABEL_67;
  }

  if ((*(v14 + 92) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  LODWORD(v25) = (v23 & 0x10000002) != 0;
  if ((*(v14 + 4) & 0x20000) != 0)
  {
    LODWORD(v25) = 0;
  }

  if ((v23 & 0x10000004) != 0 && !v25)
  {
    goto LABEL_67;
  }

  v25 = *(v14 + 16);
  if (!v25)
  {
    goto LABEL_67;
  }

  v30 = *(v14 + 32);
  if (!*(v14 + 32))
  {
LABEL_55:
    LOBYTE(v25) = 0;
    goto LABEL_67;
  }

  v31 = 0;
  while (1)
  {
    v32 = *v25++;
    if ((*(v10 + 4 * v32) & 0x60000040) != 0)
    {
      break;
    }

LABEL_54:
    if (!--v30)
    {
      goto LABEL_55;
    }
  }

  if (!v31)
  {
    v31 = 1;
    goto LABEL_54;
  }

  v36 = *(v14 + 72);
  v39 = 0;
  if (v36)
  {
    v37 = *(v36 + 4);
    v38 = v37 == -2147483640 || v37 == -2147483644;
    if (v38 && !*(v36 + 40))
    {
      v39 = 1;
    }
  }

  *(v8 + 1414) = v39;
  if (*(v14 + 40))
  {
    LOBYTE(v40) = 0;
  }

  else
  {
    v40 = *(v14 + 80);
    if (v40)
    {
      LOBYTE(v40) = ((*(v40 + 4) + 2147483644) & 0xFFFFFFFB) == 0;
    }
  }

  *(v8 + 1413) = v40;
  *(v8 + 1412) = 0;
  v41 = PRIcs(v6, a3, 0, 0, 0, *(v14 + 24), v14, v8, 3, 1);
  if (v41 > 10)
  {
    if (v41 == 11)
    {
      *(v14 + 4) |= 0x10000004u;
    }

    else if (v41 == 16)
    {
      *(v14 + 4) |= 0x10000008u;
    }

    goto LABEL_141;
  }

  if ((v41 - 2) < 2)
  {
    v42 = 0x10000000;
    goto LABEL_99;
  }

  if (v41 != 10)
  {
    goto LABEL_141;
  }

  v42 = 268435458;
LABEL_99:
  *(v14 + 4) |= v42;
  if (!*(a3 + 72))
  {
LABEL_141:
    v69 = *(v8 + 4);
    if (v69 != 4 && (*(v8 + 1328) || v69 == 11 || *(v8 + 1322)) && PRFillError(v6, a3, v14, 1))
    {
      goto LABEL_167;
    }

    goto LABEL_77;
  }

  v79 = v82;
  v80 = v6;
  v43 = *(a3 + 8);
  if (*(v8 + 4) == 2 && (*(v8 + 1329) & 0x20) != 0)
  {
LABEL_140:
    v6 = v80;
    goto LABEL_141;
  }

  v44 = *(a3 + 20);
  if (v44 <= 0xC && ((1 << v44) & 0x1320) != 0)
  {
    v77 = v84;
  }

  else
  {
    v77 = 0;
  }

  v83 = 0;
  v78 = v43;
  if (!*v81)
  {
    CompNum = GetCompNum((v8 + 1547), v82, v84, &v83, v6, a3);
    if (CompNum == 220)
    {
      v72 = 817;
      goto LABEL_165;
    }

    v63 = CompNum;
    if (CompNum || *(v8 + 1624))
    {
      if (CompNum)
      {
        v64 = CompNum;
      }

      else
      {
        v64 = 1;
      }

      v65 = malloc_type_calloc(v64, 8uLL, 0x10040436913F5uLL);
      *(v14 + 144) = v65;
      if (v65)
      {
        v66 = FillWordElems(v63, (v8 + 1547), v79, v77, v83, v14, v78);
        v61 = v14;
        if (v66)
        {
          goto LABEL_137;
        }

        v72 = 819;
      }

      else
      {
        v72 = 818;
      }

      goto LABEL_165;
    }

    goto LABEL_140;
  }

  v45 = *(v14 + 98);
  *(v14 + 98) = 0;
  v46 = *v81;
  v76 = v45;
  v47 = 0;
  if (*v81)
  {
    v48 = 0;
    do
    {
      __s[v47] = ((*(v43 + 4 * v46) >> 25) & 0x20) + v46;
      v47 = ++v48;
      v46 = v81[v48];
    }

    while (v46);
  }

  __s[v47] = 0;
  v49 = GetCompNum(__s, v79, v84, &v83, v6, a3);
  if (v49 == 220)
  {
    v72 = 809;
    goto LABEL_165;
  }

  v50 = v49;
  if (v49 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v49;
  }

  *(v14 + 92) |= 0x20000u;
  v52 = malloc_type_calloc((v51 + 1), 8uLL, 0x10040436913F5uLL);
  *(v14 + 144) = v52;
  if (!v52)
  {
    v72 = 810;
    goto LABEL_165;
  }

  v53 = v78;
  if (v50)
  {
    v54 = FillWordElems(v50, __s, v79, v77, v83, v14, v78);
    v53 = v78;
    if (!v54)
    {
      v72 = 812;
      goto LABEL_165;
    }
  }

  if (!AddToWordElems(v14, __s, *(v14 + 136), 1, v53))
  {
    v72 = 811;
    goto LABEL_165;
  }

  v55 = v80;
  v56 = GetCompNum((v8 + 1547), v79, v84, &v83, v80, a3);
  if (v56 == 220)
  {
    v72 = 813;
    goto LABEL_166;
  }

  v75 = v56;
  v57 = v14;
  do
  {
    v58 = v57;
    v57 = v57[22];
  }

  while (v57 != v58[10]);
  if (!CreateExpTok(v58))
  {
    v72 = 814;
    goto LABEL_165;
  }

  v74 = v58[22];
  *(v74 + 98) = v76;
  if (v75 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v75;
  }

  v60 = malloc_type_calloc(v59, 8uLL, 0x10040436913F5uLL);
  *(v74 + 144) = v60;
  if (!v60)
  {
    v72 = 815;
    goto LABEL_165;
  }

  v61 = v74;
  if (!FillWordElems(v75, (v8 + 1547), v79, v77, v83, v74, v78))
  {
    v72 = 816;
    goto LABEL_165;
  }

LABEL_137:
  if (!*(v8 + 1624))
  {
    goto LABEL_140;
  }

  v67 = strlen((v8 + 1624));
  v68 = malloc_type_malloc(v67 + 1, 0x5315E894uLL);
  *(v61 + 112) = v68;
  if (v68)
  {
    strcpy(v68, (v8 + 1624));
    goto LABEL_140;
  }

  v72 = 820;
LABEL_165:
  v55 = v80;
LABEL_166:
  v73 = *(v55 + 32);
  *v73 = 0xDC00000078;
  *(v73 + 8) = v72;
LABEL_167:
  result = 220;
LABEL_153:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GetCompNum(const char *a1, uint64_t a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 8);
  v13 = strlen(a1);
  v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL);
  if (v14)
  {
    v15 = v14;
    if (v13 >= 1)
    {
      v16 = 0;
      do
      {
        v14[v16] = ((*(v12 + 4 * a1[v16]) >> 25) & 0x20) + a1[v16];
        ++v16;
      }

      while (v13 > v16);
    }

    PRCtGet(v14, 2, a5, a6, a2, a3, a4);
    free(v15);
    return *(a2 + 18);
  }

  else
  {
    return 220;
  }
}

uint64_t FillWordElems(int a1, char *a2, uint64_t *a3, char *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = AddToWordElems(a6, a2, 0, 0, a7);
    if (!result)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v12 = a5 - 1;
  if (a5 != 1)
  {
    v13 = v12;
    if (v12 >= 1)
    {
      LOWORD(v14) = 0;
      v15 = a6;
      do
      {
        CreateExpTok(v15);
        v15 = v15[22];
        result = malloc_type_calloc(a1, 8uLL, 0x10040436913F5uLL);
        v15[18] = result;
        if (!result)
        {
          goto LABEL_36;
        }

        v14 = (v14 + 1);
      }

      while (v14 < v13);
    }

    if (a1 >= 1)
    {
      v17 = 0;
      v18 = a1;
      v19 = *a3;
      while (1)
      {
        v20 = *(a3[1] + 2 * v17);
        if (*(v19 + v20))
        {
          break;
        }

LABEL_19:
        if (++v17 == v18)
        {
          goto LABEL_27;
        }
      }

      v21 = v8;
      while (1)
      {
        for (i = 0; ; ++i)
        {
          v23 = v20;
          LODWORD(v20) = *(v19 + v20);
          if ((v20 | 0x20) == 0x20)
          {
            break;
          }

          v24 = i;
          __s[v24] = v20;
          LOWORD(v20) = v23 + 1;
        }

        __s[i] = 0;
        v25 = *(v19 + v23);
        result = AddToWordElems(v21, __s, *(v21 + 136), 0, a7);
        if (!result)
        {
          goto LABEL_36;
        }

        if (v25)
        {
          LOWORD(v20) = v23 + 1;
        }

        else
        {
          LOWORD(v20) = v23;
        }

        v21 = *(v21 + 176);
        v19 = *a3;
        if (!*(*a3 + v20))
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_27;
  }

  if (a1 < 1)
  {
LABEL_27:
    if (a4 && a5 >= 1)
    {
      v28 = a5;
      do
      {
        v29 = *(v8 + 98) & 0xF09F;
        *(v8 + 98) = v29;
        v30 = v29 & 0xF0FF | ((*a4 & 0xF) << 8);
        *(v8 + 98) = v30;
        v31 = *a4;
        if ((*a4 & 0x10) != 0)
        {
          v30 |= 0x40u;
          *(v8 + 98) = v30;
          v31 = *a4;
        }

        if ((v31 & 0x20) != 0)
        {
          *(v8 + 98) = v30 | 0x20;
        }

        v8 = *(v8 + 176);
        ++a4;
        --v28;
      }

      while (v28);
    }

LABEL_35:
    result = 1;
    goto LABEL_36;
  }

  v26 = 0;
  while (1)
  {
    result = AddToWordElems(v8, (*a3 + *(a3[1] + 2 * v26)), v26, 0, a7);
    if (!result)
    {
      break;
    }

    if (a1 == ++v26)
    {
      goto LABEL_27;
    }
  }

LABEL_36:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AddToWordElems(uint64_t a1, char *__s, int a3, int a4, uint64_t a5)
{
  v10 = strlen(__s);
  if (!a3 || a4 || (v11 = **(a1 + 144)) == 0 || SLstrcmp(v11, __s))
  {
    result = malloc_type_calloc(v10 + 1, 1uLL, 0x100004077774924uLL);
    *(*(a1 + 144) + 8 * a3) = result;
    if (!result)
    {
      return result;
    }

    strcpy(*(*(a1 + 144) + 8 * a3), __s);
    if (v10 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(*(a1 + 144) + 8 * a3);
        *(v14 + v13) += (*(a5 + 4 * *(v14 + v13)) >> 25) & 0x20;
        ++v13;
      }

      while (v10 > v13);
    }

    if (!a4)
    {
      ++*(a1 + 136);
    }
  }

  return 1;
}

uint64_t CreateExpTok(void *a1)
{
  result = malloc_type_calloc(1uLL, 0xB8uLL, 0x10B00409DE433CAuLL);
  a1[22] = result;
  if (result)
  {
    *(result + 152) = a1[19];
    v3 = a1[10];
    *(result + 72) = a1[9];
    *(result + 80) = v3;
    *(result + 168) = a1;
    *(result + 176) = v3;
    if (v3)
    {
      *(v3 + 168) = result;
    }

    return 1;
  }

  return result;
}

uint64_t PRmapost(int a1, uint64_t a2, unsigned int a3, unsigned int a4, __int16 **a5, char a6, uint64_t a7, __int16 a8, __int128 *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = a5;
  v217 = *MEMORY[0x1E69E9840];
  v208 = 0;
  if ((a6 & 0x10) != 0)
  {
    v16 = *(a7 + 1);
    v17 = *a5;
    v18 = a10[1];
    v204 = *a10;
    v205 = v18;
    v19 = a9[1];
    *__s = *a9;
    v214 = v19;
    v215 = a9[2];
    v216 = *(a9 + 6);
    EvaActionMacro(v16, v17, &v204, __s, a11);
    if (*(a7 + 1) < 0)
    {
      v20 = (a7 + 2);
      do
      {
        v21 = *v20;
        v22 = *v13;
        v23 = a10[1];
        v204 = *a10;
        v205 = v23;
        v24 = a9[1];
        *__s = *a9;
        v214 = v24;
        v215 = a9[2];
        v216 = *(a9 + 6);
        EvaActionMacro(v21, v22, &v204, __s, a11);
        v25 = *v20++;
      }

      while (v25 < 0);
    }
  }

  v203 = v13;
  v26 = 0;
  v27 = *v13;
  v28 = a9[1];
  v204 = *a9;
  v205 = v28;
  v206 = a9[2];
  v207 = *(a9 + 6);
  while (v26 != 3 && *(&v204 + v26))
  {
    __s[0] = 0;
    v29 = &v204 + 2 * v26 + 1;
    v30 = *v29;
    if (*v29)
    {
      v31 = v29[1];
      while (v30 != v31)
      {
        if (*(v30 + 24))
        {
          strlen(__s);
          __strncat_chk();
          if (*(v30 + 40))
          {
            strlen(__s);
            __strncat_chk();
          }
        }

        v30 = *(v30 + 80);
      }

      if (!*(v30 + 24))
      {
        v32 = **(v30 + 144);
      }

      strlen(__s);
      __strncat_chk();
    }

    if (PRaddRefs(a12, v27, __s, 1u, ++v26))
    {
      if (*(*(a12 + 32) + 4))
      {
        result = 0;
        goto LABEL_65;
      }

      break;
    }
  }

  v34 = a13;
  v35 = *v13;
  v204 = *a10;
  v37 = *(a10 + 2);
  v36 = *(a10 + 3);
  v210 = 0;
  *(v209 + 3) = -911886373;
  v209[0] = -612264979;
  v38 = *(a13 + 20);
  v39 = (*(a2 + 48) + ((4 * (a8 + (bswap32(*(*(a2 + 40) + 2 * a3)) >> 16)) - 4) & 0xFFFC));
  v40 = (*(a2 + 64) + ((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8) | v39[3]));
  v41 = *v40;
  v42 = a11;
  if (v41 < 0x40)
  {
    goto LABEL_39;
  }

  v43 = 0;
  v44 = v41 >> 6;
  v45 = v40 + 1;
  do
  {
    v46 = *v45++;
    v43 = v46 | (v43 << 8);
    --v44;
  }

  while (v44);
  v47 = *a2;
  if (SLSeek(*a2, *(a2 + 4) + 4 * v43, 0) == 8)
  {
    v48 = *(a12 + 32);
    *v48 = 0xDC0000006FLL;
    v49 = 665;
LABEL_38:
    *(v48 + 8) = v49;
    goto LABEL_39;
  }

  if (SLFRead(v47, 2, &__dst, &v210) == 8 || v210 != 2)
  {
    v48 = *(a12 + 32);
    *v48 = 0xDC00000070;
    v49 = 666;
    goto LABEL_38;
  }

  v193 = v38;
  v212 = 0;
  v51 = __rev16(__dst);
  v52 = malloc_type_calloc(v51 + 4, 1uLL, 0x100004077774924uLL);
  if (!v52)
  {
    v48 = *(a12 + 32);
    *v48 = 0xDC00000078;
    v49 = 667;
    goto LABEL_38;
  }

  v53 = v52;
  v195 = v35;
  if (SLFRead(v47, v51 + 3, v52, &v210) == 8 || v210 != v51 + 3)
  {
    free(v53);
    v48 = *(a12 + 32);
    *v48 = 0xDC00000070;
    v49 = 668;
    goto LABEL_38;
  }

  v53[v51 + 3] = 0;
  v65 = *v53;
  v66 = v53[2];
  v67 = (v53 + 3);
  SLcrypt(v53 + 3, v51, v209, 7);
  v68 = v66;
  v200 = v66;
  if (v66 < 0x40)
  {
    v69 = 0;
    v34 = a13;
    goto LABEL_289;
  }

  v188 = v53;
  v70 = bswap32(v65) >> 16;
  v194 = v68 >> 6;
  v71 = v37;
  do
  {
    v72 = v71;
    if (*(v71 + 51) != 5)
    {
      break;
    }

    v71 = *(v71 + 176);
  }

  while (v71);
  v192 = v72;
  v73 = 0;
  v74 = 0;
  v191 = (a4 >> 2) & 0x1F;
  v197 = v68 >> 1;
  v202 = v37;
  do
  {
    if (!v73)
    {
      LOBYTE(v68) = v70;
    }

    if (v73 == 1)
    {
      v75 = v197;
    }

    else
    {
      v75 = v68;
    }

    *(v195 + 32 + v73) = v70 >> 13;
    if ((v70 & 0x800) == 0)
    {
      if ((v70 & 0x1000) != 0)
      {
        ++v73;
        v93 = *(v192 + 51);
        *__s = v204;
        *&v214 = v37;
        *(&v214 + 1) = v36;
        v94 = CheckAltStr(v67, v195, a12, __s, v42, v73, v93, v75 & 1, v193);
      }

      else
      {
        if (v191 >= 2)
        {
          for (i = 1; i < v191; ++i)
          {
            v67 = strchr(v67, 124) + 1;
          }
        }

        v77 = v67 + 1;
        if (*v67 != 124)
        {
          v77 = v67;
        }

        v78 = v77 - 2;
        do
        {
          v79 = v78;
          v80 = v78[2];
          ++v78;
        }

        while (v80 == 32);
        v67 = v78 + 1;
        v81 = strchr(v78 + 1, 124);
        if (v81)
        {
          v82 = v81;
          *v81 = 0;
          for (j = v81; ; *j = 0)
          {
            v84 = *--j;
            if (v84 != 32)
            {
              break;
            }
          }

          ++v73;
          v107 = *(v192 + 51);
          *__s = v204;
          *&v214 = v202;
          *(&v214 + 1) = v36;
          v108 = v78 + 1;
          v42 = a11;
          v69 = CheckAltStr(v108, v195, a12, __s, a11, v73, v107, v75 & 1, v193);
          v67 = v82 + 1;
          v37 = v202;
          goto LABEL_276;
        }

        v110 = strlen(v78 + 1);
        if (v78[v110] == 32)
        {
          v111 = &v79[v110];
          do
          {
            v111[1] = 0;
            v112 = *v111--;
          }

          while (v112 == 32);
        }

        ++v73;
        v113 = *(v192 + 51);
        *__s = v204;
        v37 = v202;
        *&v214 = v202;
        *(&v214 + 1) = v36;
        v114 = v78 + 1;
        v42 = a11;
        v94 = CheckAltStr(v114, v195, a12, __s, a11, v73, v113, v75 & 1, v193);
      }

      v69 = v94;
      goto LABEL_276;
    }

    v85 = *v67;
    if (v37 == v36)
    {
      v92 = 0;
    }

    else
    {
      v86 = v37;
      v87 = 0;
      v88 = v85 == 7;
      for (k = v86; ; k = *(k + 80))
      {
        if (*(k + 32))
        {
          v90 = *(k + 32) + v87;
          if (*(k + 40))
          {
            ++v90;
          }
        }

        else
        {
          v90 = v87 + strlen(**(k + 144));
        }

        if (k == v36)
        {
          break;
        }

        if (v85 != 3)
        {
          v90 += *(k + 48);
        }

        v87 = v90 + v88;
      }

      v91 = malloc_type_calloc(2 * (v90 + v88) + 2, 1uLL, 0x100004077774924uLL);
      if (!v91)
      {
        v109 = *(a12 + 32);
        *v109 = 0xDC00000078;
        *(v109 + 8) = 663;
        v13 = v203;
        goto LABEL_275;
      }

      v92 = v91;
      *v91 = 0;
      v13 = v203;
    }

    v95 = v74 + 1;
    if (v85 <= 6)
    {
      if (v85 > 4)
      {
        if (v85 != 5)
        {
          v115 = *(v202 + 24);
          for (m = strchr(v115, 45); m; m = strchr(v115, 45))
          {
            *m = 32;
          }

          PRaddAlts(a12, v195, v115, 0, 1uLL, (v74 + 1));
          while (1)
          {
            v117 = strchr(v115, 32);
            if (!v117)
            {
              break;
            }

            *v117 = 45;
          }

          goto LABEL_275;
        }

        v130 = v202;
        if (v202 != v36)
        {
          do
          {
            v131 = *(v130 + 24);
            if (v131)
            {
              if (!*(v130 + 51))
              {
                v132 = *v131;
                if ((*(a11 + 4 * v132) & 0x20000000) != 0)
                {
                  LOBYTE(v132) = v132 - 32;
                }

                *v131 = v132;
                v131 = *(v130 + 24);
              }

              strcat(v92, v131);
              v133 = *(v130 + 40);
              if (v133)
              {
                strcat(v92, v133);
              }

              if (!*(v130 + 51))
              {
                **(v130 + 24) += (*(a11 + 4 * **(v130 + 24)) >> 25) & 0x20;
              }

              v130 = *(v130 + 80);
            }
          }

          while (v130 != v36);
          v134 = *(v130 + 24);
          if (v134)
          {
            if (!*(v130 + 51))
            {
              v135 = *v134;
              if ((*(a11 + 4 * v135) & 0x20000000) != 0)
              {
                LOBYTE(v135) = v135 - 32;
              }

              *v134 = v135;
              v134 = *(v130 + 24);
            }

            strcat(v92, v134);
            if (!*(v130 + 51))
            {
              **(v130 + 24) += (*(a11 + 4 * **(v130 + 24)) >> 25) & 0x20;
            }
          }

          goto LABEL_271;
        }

        if (a1 < 0)
        {
          if (!*(v202 + 51))
          {
            v174 = *(v202 + 24);
            v175 = *v174;
            if ((*(a11 + 4 * v175) & 0x20000000) != 0)
            {
              LOBYTE(v175) = v175 - 32;
            }

            *v174 = v175;
          }

          PRaddAlts(a12, v195, *(v202 + 24), 0, 1uLL, v95);
          if (!*(v202 + 51))
          {
            **(v202 + 24) += (*(a11 + 4 * **(v202 + 24)) >> 25) & 0x20;
          }

          goto LABEL_275;
        }

        v189 = v95;
        v156 = *(v202 + 80);
        if (v156)
        {
          v157 = *(v156 + 168);
        }

        else
        {
          v177 = *(v202 + 176);
          do
          {
            v157 = v177;
            v177 = *(v177 + 176);
          }

          while (v177);
        }

        if (*(v202 + 32))
        {
          v178 = strlen(*(*(v157 + 144) + 8 * a1));
          v179 = 0;
          while (SLstrncmp((*(v202 + 16) + v179), *(*(v157 + 144) + 8 * a1), v178))
          {
            if (++v179 >= *(v202 + 32))
            {
              goto LABEL_266;
            }
          }

          v180 = *(v202 + 24);
          if (v180)
          {
            v181 = *(v180 + v179);
            if ((*(a11 + 4 * v181) & 0x20000000) != 0)
            {
              *(v180 + v179) = v181 - 32;
              PRaddAlts(a12, v195, *(v202 + 24), 0, 1uLL, v189);
              *(v180 + v179) += (*(a11 + 4 * *(v180 + v179)) >> 25) & 0x20;
              goto LABEL_275;
            }
          }
        }

LABEL_266:
        v154 = *(v202 + 24);
        v155 = v189;
      }

      else
      {
        if (v85 == 3)
        {
          v128 = v202;
          if (v202 != v36)
          {
            while (1)
            {
              v129 = *(v128 + 24);
              if (!v129)
              {
                v129 = **(v128 + 144);
              }

              strcat(v92, v129);
              if (v128 == v36)
              {
                break;
              }

              v128 = *(v128 + 80);
            }

            goto LABEL_271;
          }

          v154 = *(v202 + 24);
          if (!v154)
          {
            v154 = **(v202 + 144);
          }
        }

        else
        {
          if (v85 != 4)
          {
            goto LABEL_199;
          }

          v104 = v202;
          if (v202 != v36)
          {
            while (1)
            {
              v105 = *(v104 + 16);
              if (!v105)
              {
                v105 = **(v104 + 144);
              }

              strcat(v92, v105);
              if (v104 == v36)
              {
                break;
              }

              v106 = *(v104 + 40);
              if (v106)
              {
                strcat(v92, v106);
              }

              v104 = *(v104 + 80);
            }

            goto LABEL_271;
          }

          v154 = *(v202 + 16);
        }

        v155 = v95;
      }

      PRaddAlts(a12, v195, v154, 0, 1uLL, v155);
      goto LABEL_275;
    }

    if (v85 > 8)
    {
      switch(v85)
      {
        case 9:
          if (v202 != v36)
          {
            strcpy(v92, *(v202 + 24));
LABEL_271:
            v139 = v95;
LABEL_272:
            PRaddAlts(a12, v195, v92, 0, 1uLL, v139);
            goto LABEL_273;
          }

          v158 = malloc_type_calloc(*(v202 + 32) + 1, 1uLL, 0x100004077774924uLL);
          if (!v158)
          {
            v176 = *(a12 + 32);
            *v176 = 0xDC00000078;
            *(v176 + 8) = 664;
            goto LABEL_275;
          }

          v92 = v158;
          strcpy(v158, *(v202 + 24));
          v159 = *(v202 + 32);
          if (!*(v202 + 32))
          {
LABEL_270:
            v92[v159] = 0;
            goto LABEL_271;
          }

          v153 = 0;
          v160 = v92;
          do
          {
            v162 = *v160++;
            v161 = v162;
            if (v162 != 46)
            {
              v163 = v153++;
              v92[v163] = v161;
            }

            --v159;
          }

          while (v159);
LABEL_230:
          v159 = v153;
          goto LABEL_270;
        case 10:
          v140 = *(v202 + 24);
          v141 = &v140[*(v202 + 32)];
          v142 = *(v141 - 1);
          if (v142 == 115)
          {
            if (*(v141 - 2) == 39)
            {
              *(v141 - 2) = 0;
              PRaddAlts(a12, v195, v140, 0, 1uLL, (v74 + 1));
              v140[*(v202 + 32) - 2] = 39;
            }
          }

          else if (v142 == 39)
          {
            *(v141 - 1) = 0;
            PRaddAlts(a12, v195, v140, 0, 1uLL, (v74 + 1));
            v140[*(v202 + 32) - 1] = 39;
          }

          goto LABEL_275;
        case 12:
          v96 = v74 + 1;
          v97 = v202;
          if (v202 == v36)
          {
            v92 = malloc_type_calloc(*(v202 + 32) + 2, 1uLL, 0x100004077774924uLL);
          }

          v98 = 0;
          while (1)
          {
            v99 = *(v97 + 24);
            if (v99)
            {
              if (*(v97 + 51) != 2)
              {
                v100 = *v99;
                if (*v99)
                {
                  v101 = v99 + 1;
                  do
                  {
                    if ((*(a11 + 4 * v100) & 0x20000000) != 0)
                    {
                      v100 -= 32;
                    }

                    v92[v98++] = v100;
                    v102 = *v101++;
                    v100 = v102;
                  }

                  while (v102);
                }
              }

              if (v97 != v36)
              {
                v103 = *(v97 + 40);
                if (v103)
                {
                  strcat(v92, v103);
                  ++v98;
                }
              }
            }

            if (v97 == v36)
            {
              break;
            }

            v97 = *(v97 + 80);
          }

          v92[v98] = 0;
          v139 = v96;
          goto LABEL_272;
      }

LABEL_199:
      if ((v85 - 13) <= 1)
      {
        if (v202 != v36)
        {
          goto LABEL_275;
        }

        v143 = *(v202 + 32);
        v144 = malloc_type_calloc(v143 + 1, 1uLL, 0x100004077774924uLL);
        v92 = v144;
        if (v143)
        {
          v145 = 0;
          v146 = 0;
          do
          {
            v147 = *(*(v202 + 24) + v145);
            if (v147 == 58)
            {
              if (v85 == 14)
              {
                break;
              }
            }

            else
            {
              v148 = v146++;
              v144[v148] = v147;
            }

            ++v145;
          }

          while (v143 != v145);
        }

        else
        {
          v146 = 0;
        }

        v159 = (v146 - (v143 == v146));
        goto LABEL_270;
      }

      if (v85 == 16)
      {
        v190 = v74 + 1;
        v164 = malloc_type_calloc(*(v195 + 2) + 2, 1uLL, 0x100004077774924uLL);
        v121 = v164;
        v165 = v202;
        if (v202 != v36)
        {
          v166 = 0;
          *v164 = 0;
          while (1)
          {
            v167 = *(v165 + 24);
            if (*v167 == 47 && ++v166 == 2)
            {
              v166 = 2;
              v167 = " ";
            }

            strcat(v121, v167);
            if (v165 == v36)
            {
              break;
            }

            v165 = *(v165 + 80);
          }

          v126 = v190;
          goto LABEL_161;
        }

        goto LABEL_162;
      }

      if (v85 == 15)
      {
        if (v202 == v36)
        {
          v149 = malloc_type_calloc(*(v202 + 32) + 2, 1uLL, 0x100004077774924uLL);
          v92 = v149;
          v150 = *(v202 + 32);
          if (*(v202 + 32))
          {
            v151 = 0;
            while (1)
            {
              v152 = *(*(v202 + 24) + v151);
              if ((*(a11 + 4 * v152) & 0x8000000) == 0)
              {
                break;
              }

              v149[v151++] = v152;
              if (v150 == v151)
              {
                v149[v150] = 58;
                v153 = v150 + 1;
                goto LABEL_230;
              }
            }

            v182 = v151;
          }

          else
          {
            v182 = 0;
          }

          v183 = v182;
          v149[v182] = 58;
          v153 = v182 + 1;
          if (v150 > v182)
          {
            do
            {
              v149[v153++] = *(*(v202 + 24) + v183++);
            }

            while (v150 != v183);
          }

          goto LABEL_230;
        }
      }

      else
      {
        if ((v85 - 17) > 1)
        {
          goto LABEL_275;
        }

        if (v202 == v36 && *(v202 + 51) == 2)
        {
          v168 = malloc_type_calloc(3 * *(v202 + 32) + 2, 1uLL, 0x100004077774924uLL);
          v92 = v168;
          *v168 = 0;
          v169 = *(v202 + 32);
          if (v169)
          {
            v170 = 0;
            v171 = 0;
            v172 = (v169 - 1);
            while (1)
            {
              v173 = v171 + 1;
              v168[v171] = *(*(v202 + 24) + v170);
              if (v85 == 18)
              {
                v168[(v171 + 1)] = 46;
                v173 = v171 + 2;
              }

              if (v172 == v170)
              {
                break;
              }

              v171 = v173 + 1;
              v168[v173] = 32;
              ++v170;
            }
          }

          goto LABEL_271;
        }
      }

LABEL_273:
      v127 = v92;
      goto LABEL_274;
    }

    if (v85 == 7)
    {
      if (v202 == v36)
      {
        v92 = malloc_type_calloc(*(v202 + 32) + 2, 1uLL, 0x100004077774924uLL);
      }

      v136 = strcat(v92, *(v202 + 24));
      *&v92[strlen(v136)] = 46;
      if (v202 != v36)
      {
        v137 = v202;
        do
        {
          *&v92[strlen(v92)] = 32;
          v137 = *(v137 + 80);
          v138 = strcat(v92, *(v137 + 24));
          *&v92[strlen(v138)] = 46;
        }

        while (v137 != v36);
      }

      v139 = v95;
      goto LABEL_272;
    }

    v118 = 0;
    for (n = *(v202 + 24); *n == 46; ++n)
    {
      ++v118;
LABEL_154:
      ;
    }

    if (*n)
    {
      goto LABEL_154;
    }

    v120 = malloc_type_calloc(*(v202 + 32) + v118 + 1, 1uLL, 0x100004077774924uLL);
    v121 = v120;
    v122 = *(v202 + 32);
    if (*(v202 + 32))
    {
      v123 = 0;
      v124 = 0;
      do
      {
        v125 = *(*(v202 + 24) + v123);
        v120[v124] = v125;
        if (v125 == 46)
        {
          v120[++v124] = 32;
        }

        ++v123;
        ++v124;
      }

      while (v122 != v123);
    }

    v126 = (v74 + 1);
LABEL_161:
    PRaddAlts(a12, v195, v121, 0, 1uLL, v126);
LABEL_162:
    v127 = v121;
LABEL_274:
    free(v127);
LABEL_275:
    v69 = 0;
    ++v67;
    ++v73;
    v42 = a11;
    v37 = v202;
LABEL_276:
    v67 += strlen(v67) + 1;
    LODWORD(v68) = v200;
    if (v73 >= v194)
    {
      break;
    }

    LOWORD(v70) = 32 * v70;
    v74 = v73;
  }

  while (!v69);
  v34 = a13;
  v184 = *(a13 + 20);
  if (v184 > 0xC)
  {
    v53 = v188;
    if (!v69)
    {
      goto LABEL_289;
    }

    goto LABEL_294;
  }

  v53 = v188;
  if (((1 << v184) & 0x1320) != 0)
  {
    *__s = v204;
    *&v214 = v37;
    *(&v214 + 1) = v36;
    v69 = PRAltMod(a12, a13, v195, __s);
  }

  LODWORD(v68) = v200;
  if (v69)
  {
LABEL_294:
    if (!v69)
    {
      v187 = (v68 >> 2) & 3;
      if (v187)
      {
        PRaddFils(a12, v195, v67, v187, 4);
      }
    }

    goto LABEL_297;
  }

LABEL_289:
  v185 = (v68 >> 4) & 3;
  if (!v185)
  {
    goto LABEL_294;
  }

  if (!PRaddFils(a12, v195, v67, (v68 >> 4) & 3, 1))
  {
    v186 = 0;
    do
    {
      v67 += strlen(v67) + 1;
      ++v186;
    }

    while (v185 > v186);
    v69 = 0;
    v34 = a13;
    LODWORD(v68) = v200;
    goto LABEL_294;
  }

LABEL_297:
  free(v53);
LABEL_39:
  v55 = *(a10 + 3);
  if (v55)
  {
    v56 = *(v55 + 40);
    if (v56)
    {
      LOWORD(v56) = *(v55 + 48);
    }
  }

  else
  {
    LOWORD(v56) = 0;
  }

  v57 = *v13;
  v58 = (*v13)[1] - v56;
  v57[1] = v58;
  v57[2] = *v57;
  v57[3] = v58;
  if (*(a10 + 2))
  {
    v59 = *(v57 + 3);
    if (v59)
    {
      v60 = *(v34 + 20);
      if (v60 == 6)
      {
        if (*(v34 + 16) == 64)
        {
          CalExtBytesAfterCnv(v59, &v208, 223);
          if (v208)
          {
            AltOneToMultiChrCnv(*(*v13 + 3), 223, v208, a12);
          }
        }

        v60 = *(v34 + 20);
      }

      if (v60 == 5)
      {
        if ((*(v34 + 18) & 0x10) != 0)
        {
          CalExtBytesAfterCnv(*(*v13 + 3), &v208, 247);
          if (v208)
          {
            AltOneToMultiChrCnv(*(*v13 + 3), 247, v208, a12);
          }

          CalExtBytesAfterCnv(*(*v13 + 3), &v208, 230);
          if (v208)
          {
            AltOneToMultiChrCnv(*(*v13 + 3), 230, v208, a12);
          }
        }

        if ((*(v34 + 18) & 0x40) != 0)
        {
          ToUpUnaccentedCnv(**(*v13 + 3), *(*(*v13 + 3) + 24), 5, v42);
        }
      }

      if (*(v34 + 20) == 8 && (*(v34 + 18) & 0x40) != 0)
      {
        ToUpUnaccentedCnv(**(*v13 + 3), *(*(*v13 + 3) + 24), 8, v42);
      }
    }

    v61 = *(a10 + 2);
    v62 = *(v61 + 160);
    v63 = *v13;
    if (v62)
    {
      *(v63 + 5) = v62;
      v63 = *v13;
    }

    *(v61 + 160) = v63;
    *v13 = 0;
  }

  result = 1;
LABEL_65:
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

size_t EvaActionMacro(size_t result, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  if (result == 11)
  {
    if ((*(v6 + 93) & 0x40) == 0)
    {
      return result;
    }

    a2[4] = *(v6 + 8);
    result = strlen(*(*(v6 + 144) + 8 * *(v6 + 136)));
  }

  else
  {
    if (result == 2)
    {
      v9 = *(a4 + 8);
      if (!v9)
      {
        return result;
      }

      v10 = *(a4 + 16);
      v11 = *(v9 + 8);
      a2[4] = *(v9 + 8);
      if (v9 == v10)
      {
        v12 = 0;
        v13 = v9;
      }

      else
      {
        v12 = 0;
        v13 = v9;
        do
        {
          v12 += *(v13 + 32);
          if (*(v13 + 40))
          {
            v12 += *(v13 + 48);
          }

          v13 = *(v13 + 80);
        }

        while (v13 != v10);
      }

      result = *(v13 + 32) + v12;
      if (*(v13 + 48) && (*(v13 + 4) & 0x80000000) == 0)
      {
        result = result + *(v13 + 48);
        goto LABEL_31;
      }

      if (v11 < 1)
      {
        goto LABEL_31;
      }

      v17 = *(v9 + 72);
      if (!v17)
      {
        goto LABEL_31;
      }

      v18 = *(v17 + 48);
      if (!v18)
      {
        goto LABEL_31;
      }

      result = (v18 + result);
      v8 = v11 - v18;
    }

    else
    {
      if (result != 1)
      {
        return result;
      }

      v7 = *(a3 + 24);
      if (!*(v7 + 40))
      {
        v14 = *(v7 + 80);
        if (v14)
        {
          if ((*(a5 + 4 * **(v14 + 16)) & 0x1000000) != 0)
          {
            v15 = *(v6 + 72);
            if (v15)
            {
              if (*(v15 + 40))
              {
                v16 = *(v15 + 48);
                a2[4] = *a2 - v16;
                result = a2[1] + v16;
                goto LABEL_31;
              }
            }
          }
        }
      }

      result = a2[1];
      if ((*(v7 + 4) & 0x80000000) != 0)
      {
        result = result - *(v7 + 48);
      }

      v8 = *a2;
    }

    a2[4] = v8;
  }

LABEL_31:
  a2[5] = result;
  return result;
}

uint64_t CheckAltStr(const char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, unsigned __int8 a7, int a8, unsigned __int8 a9)
{
  v11 = a1;
  v91 = *(a3 + 16);
  v12 = a4[3];
  v106 = a4[2];
  v13 = 0;
  v14 = strlen(a1) - 4;
  if ((v14 & 0x8000) == 0)
  {
    v15 = 0;
    v16 = v14;
    do
    {
      if (SLstrncmp(&v11[v15], "POSTCLITIC", 10))
      {
        v17 = SLstrncmp(&v11[v15], "STEM", 4) == 0;
      }

      else
      {
        v17 = 2;
      }

      v13 |= v17;
      ++v15;
    }

    while (v16 >= v15);
  }

  v18 = a9;
  v96 = strlen(v11);
  v19 = *a4;
  if (!*a4)
  {
    v24 = a4[1];
    if (v24)
    {
      v20 = *(v24 + 176);
      if (v20 && *(v20 + 136))
      {
        v23 = *(v20 + 136) - 1;
        v22 = 1;
        goto LABEL_20;
      }

      v35 = 0;
      v36 = 0;
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v35 = 0;
      v36 = 0;
      v20 = 0;
    }

LABEL_36:
    v25 = 1;
    goto LABEL_37;
  }

  v20 = *(v19 + 152);
  if (v20 && (*(v20 + 93) & 0x40) != 0)
  {
    v26 = *(a2 + 72);
    if (v26)
    {
      v27 = *(v26 + 8);
      if (v27)
      {
        if (!SLstrncmp(v11, "REF", 3))
        {
          v28 = v11[3];
          if (v28 >= 0x31)
          {
            v29 = *(v20 + 32);
            if (v29 < 1)
            {
              goto LABEL_32;
            }

            v30 = (*v27 + *(v27[1] + 2 * v28 - 98));
            v31 = *(v20 + 16);
            v25 = 1;
            while (1)
            {
              v32 = *v30++;
              v33 = ((*(a5 + 4 * v32) >> 25) & 0x20) + v32;
              v34 = *v31++;
              if (v34 != v33)
              {
                break;
              }

              if (!--v29)
              {
                v22 = 0;
                v35 = 0;
                v36 = 0;
                goto LABEL_37;
              }
            }
          }
        }
      }
    }

    v22 = 0;
    v25 = 0;
    v23 = *(v20 + 136);
    goto LABEL_31;
  }

  if (!*(v19 + 136))
  {
LABEL_32:
    v22 = 0;
LABEL_33:
    v35 = 0;
    v36 = 0;
    goto LABEL_36;
  }

  v21 = *(v19 + 16);
  v22 = v21 != 0;
  if (v21)
  {
    v20 = *(v19 + 176);
  }

  if (!v20 || !*(v20 + 136))
  {
    goto LABEL_33;
  }

  v23 = *(v20 + 136) - 1;
LABEL_20:
  v25 = 1;
LABEL_31:
  v35 = v23;
  v36 = strlen(*(*(v20 + 144) + 8 * v23));
LABEL_37:
  v37 = v36;
  if (!v36 && !v13)
  {
    v38 = 0;
    v39 = 0;
    goto LABEL_95;
  }

  v90 = v25;
  v92 = a6;
  v94 = v36;
  if ((v13 & 1) == 0)
  {
    v40 = 0;
    v41 = 0;
    goto LABEL_52;
  }

  v20 = v106;
  if (v106 == v12)
  {
LABEL_46:
    v42 = *(v20 + 152);
    if (!*(v42 + 144))
    {
LABEL_48:
      v41 = *(*(v106 + 80) + 24);
      goto LABEL_49;
    }
  }

  else
  {
    v20 = v106;
    while (1)
    {
      v42 = *(v20 + 152);
      if (*(v42 + 144))
      {
        break;
      }

      v20 = *(v20 + 176);
      if (v20 == v12)
      {
        goto LABEL_46;
      }
    }
  }

  v41 = **(*(v42 + 176) + 144);
  if (!v41)
  {
    goto LABEL_48;
  }

LABEL_49:
  v43 = strlen(v41);
  v40 = v43;
  if (*(v42 + 51) == 3 && ((*(v42 + 52) << (*(v42 + 32) - v43)) & 0x80000000) != 0)
  {
    ReCapAltStr(v41, v91, v42, a5, a9);
  }

LABEL_52:
  if ((v13 & 2) != 0)
  {
    v46 = *(v106 + 176);
    v45 = *(v46 + 112);
    if (v45)
    {
      v44 = strlen(*(v46 + 112));
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v47 = malloc_type_calloc((v37 + v96 + v44 + v40 + 2) + 1, 1uLL, 0x100004077774924uLL);
  if (!v47)
  {
    v51 = *(a3 + 32);
    *v51 = 0xDC00000078;
    *(v51 + 8) = 661;
    return 220;
  }

  v48 = v22;
  v49 = v47;
  v97 = v48;
  if (!v94)
  {
    LOBYTE(v48) = 1;
  }

  if (v48)
  {
    goto LABEL_61;
  }

  v53 = *(a2 + 72);
  if (!v53 || (v54 = *(v53 + 8)) == 0 || SLstrncmp(v11, "REF", 3) || (v55 = v11[3], v55 < 0x31))
  {
LABEL_72:
    strcpy(v49, *(*(v20 + 144) + 8 * v35));
    if ((*(v20 + 93) & 0x40) != 0)
    {
      v50 = v94;
    }

    else
    {
      *&v49[strlen(v49)] = 32;
      v50 = ++v94;
    }

    goto LABEL_75;
  }

  v56 = *(v20 + 32);
  if (v56 >= 1)
  {
    v57 = (*v54 + *(v54[1] + 2 * v55 - 98));
    v58 = *(v20 + 16);
    do
    {
      v59 = *v57++;
      v60 = ((*(a5 + 4 * v59) >> 25) & 0x20) + v59;
      v61 = *v58++;
      if (v61 != v60)
      {
        goto LABEL_72;
      }
    }

    while (--v56);
  }

LABEL_61:
  v50 = 0;
LABEL_75:
  if (!*v11)
  {
    goto LABEL_88;
  }

  while (1)
  {
    if (!SLstrncmp(v11, "STEM", 4))
    {
      strcat(v49, v41);
      v11 += 4;
      v65 = v40;
      goto LABEL_85;
    }

    v62 = SLstrncmp(v11, "POSTCLITIC", 10);
    if (v45)
    {
      if (!v62)
      {
        break;
      }
    }

    v63 = *v11;
    if (v63 == 45)
    {
      v64 = SLstrncmp(v11 + 1, "POSTCLITIC", 10);
      if (!v45 && !v64)
      {
        goto LABEL_88;
      }

      LOBYTE(v63) = *v11;
    }

    ++v11;
    v49[v50] = v63;
    v65 = 1;
LABEL_85:
    v50 += v65;
    if (!*v11)
    {
      goto LABEL_88;
    }
  }

  strcat(v49, v45);
LABEL_88:
  v38 = v94 != 0;
  v66 = v90;
  if (!v20)
  {
    v66 = 0;
  }

  v39 = v49;
  if ((v97 & v66) == 1)
  {
    *&v49[strlen(v49)] = 32;
    a6 = v92;
    v18 = a9;
    if (*(v20 + 136))
    {
      strcat(v49, *(*(v20 + 144) + 8 * (*(v20 + 136) - 1)));
    }

    v11 = v49;
  }

  else
  {
    v11 = v49;
    a6 = v92;
    v18 = a9;
  }

LABEL_95:
  if (a8 && (v67 = *(a2 + 72)) != 0)
  {
    v98 = a7;
    v101 = v38;
    v103 = v39;
    v93 = a6;
    v68 = *(v67 + 8);
    v69 = *v68;
    v70 = *(v68 + 8);
    v71 = strlen(v11);
    v107 = v71;
    if (((v71 - 4) & 0x8000) == 0)
    {
      v72 = 0;
      v73 = (v71 - 4);
      v74 = v71;
      while (SLstrncmp(&v11[v72], "REF1", 4))
      {
        if (!SLstrncmp(&v11[v72], "REF2", 4))
        {
          v72 += 4;
          v75 = v70[1];
          goto LABEL_106;
        }

        if (!SLstrncmp(&v11[v72], "REF3", 4))
        {
          v72 += 4;
          v75 = v70[2];
          goto LABEL_106;
        }

        ++v72;
LABEL_107:
        if (v73 < v72)
        {
          goto LABEL_115;
        }
      }

      v72 += 4;
      v75 = *v70;
LABEL_106:
      v74 = v74 + strlen(&v69[v75]) - 4;
      goto LABEL_107;
    }

    LOWORD(v74) = v71;
LABEL_115:
    v76 = malloc_type_calloc(v74 + 1, 1uLL, 0x100004077774924uLL);
    if (v76)
    {
      v77 = v76;
      v95 = v74;
      *v76 = 0;
      __s2[1] = 0;
      v39 = v103;
      v38 = v101;
      if (v107 >= 1)
      {
        v78 = 0;
        while (1)
        {
          if (!SLstrncmp(&v11[v78], "REF1", 4))
          {
            strcat(v77, v69);
            v79 = v78 + 4;
            if (!*v69 && v11[v79] == 32)
            {
              v79 = v78 + 5;
            }

            goto LABEL_132;
          }

          if (!SLstrncmp(&v11[v78], "REF2", 4))
          {
            break;
          }

          if (!SLstrncmp(&v11[v78], "REF3", 4))
          {
            strcat(v77, &v69[v70[2]]);
            v80 = v78 + 4;
            v81 = v70[2];
LABEL_128:
            v82 = v69[v81];
            v79 = v80;
            if (!v82)
            {
              if (v11[v80] == 32)
              {
                v79 = v78 + 5;
              }

              else
              {
                v79 = v80;
              }
            }

            goto LABEL_132;
          }

          __s2[0] = v11[v78];
          strcat(v77, __s2);
          v79 = v78 + 1;
LABEL_132:
          v78 = v79;
          if (v107 <= v79)
          {
            goto LABEL_133;
          }
        }

        strcat(v77, &v69[v70[1]]);
        v80 = v78 + 4;
        v81 = v70[1];
        goto LABEL_128;
      }

LABEL_133:
      if ((v98 - 1) <= 1)
      {
        v83 = v77;
        do
        {
          v85 = *v83++;
          v84 = v85;
          v86 = *(a5 + 4 * v85);
        }

        while ((v86 & 0x1000000) != 0);
        if ((v86 & 0x20000000) != 0)
        {
          v84 -= 32;
        }

        *(v83 - 1) = v84;
      }

      if (v77[v95 - 1] == 32)
      {
        v77[v95 - 1] = 0;
      }

      PRaddAlts(a3, a2, v77, 0, 1uLL, v93);
      free(v77);
    }

    else
    {
      v39 = v103;
      v87 = *(a3 + 32);
      *v87 = 0xDC00000078;
      *(v87 + 8) = 662;
      v38 = v101;
    }

    v52 = 0;
  }

  else
  {
    if (a7 == 1 || a7 == 3 && (*(v106 + 52) & 0x80000000) != 0)
    {
      ReCapAltStr(v11, v91, v106, a5, v18);
    }

    v52 = PRaddAlts(a3, a2, v11, 0, 1uLL, a6);
  }

  if (v13)
  {
    v88 = 1;
  }

  else
  {
    v88 = v38;
  }

  if (v88 == 1)
  {
    free(v39);
  }

  return v52;
}

unsigned __int8 *ReCapAltStr(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v6 = *result++;
    v5 = v6;
    v7 = *(a4 + 4 * v6);
  }

  while ((v7 & 0x1000000) != 0);
  if (a5 != 6)
  {
    goto LABEL_23;
  }

  if (*(a2 + 72) == a3 || *(a2 + 56) == a3)
  {
    v11 = (v7 & 0x20000000) == 0;
LABEL_24:
    if (!v11)
    {
      v5 -= 32;
    }

    *(result - 1) = v5;
    return result;
  }

  v8 = *(a3 + 168);
  if (!v8 || !*(v8 + 16))
  {
    return result;
  }

  v9 = *(v8 + 4);
  if (v9 > -1073217537)
  {
    if (v9 > -536870911)
    {
      if (v9 != -536870848)
      {
        v10 = -536870910;
LABEL_22:
        if (v9 != v10)
        {
          return result;
        }
      }
    }

    else if (v9 != -1073217536)
    {
      v10 = -1072693248;
      goto LABEL_22;
    }

LABEL_23:
    v11 = (v7 & 0x20000000) == 0;
    goto LABEL_24;
  }

  if (v9 == -2147483584 || v9 == -1073725440 || v9 == -1073709056)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t PRmatchr(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v90[7] = *MEMORY[0x1E69E9840];
  v82 = 0;
  v3 = *(a1 + 16);
  v4 = *(v3 + 56);
  if (!v4)
  {
    v61 = *(a1 + 32);
    *v61 = 0xE6FFFFFF89;
    *(v61 + 8) = 640;
    result = 230;
    goto LABEL_100;
  }

  v5 = a2;
  v6 = *(v3 + 14);
  v7 = *(a2 + 48);
  result = PRmkErr(a1, a2, &v82, 0, 0, 0, 0);
  if (!result)
  {
    LOBYTE(v65) = 0;
    v66 = v6;
    v63 = 0;
    v67 = v5;
    v68 = v2;
    v9 = v7;
    v73 = v7;
    while (1)
    {
      v10 = *(v2 + 32);
      v11 = *(v10 + 4);
      if ((v11 | 4) == 4)
      {
        if (!v4)
        {
          goto LABEL_97;
        }
      }

      else if (v11 != 210 || v4 == 0)
      {
LABEL_97:
        if (v82)
        {
          PRfreeErr(v82);
          v10 = *(v2 + 32);
        }

        result = *(v10 + 4);
        goto LABEL_100;
      }

      v64 = v4;
      if (*(v9 + 34))
      {
        break;
      }

LABEL_64:
      if (v11)
      {
        if (v11 != 210 && v11 != 4)
        {
          goto LABEL_97;
        }
      }

      if (*(v9 + 84))
      {
        v90[0] = v4;
        v81 = *(v9 + 77);
        if (!*(v9 + 77))
        {
          LOBYTE(v65) = 0;
          goto LABEL_91;
        }

        v46 = 0;
        v65 = 0;
        v47 = v9[18];
        v89[0] = 0;
        v48 = v66;
        v78 = v47;
        do
        {
          if (PRevamac(v2, v5, v90, 1, _byteswap_ushort(*(v47 + 4 * v46)), 0, 0) == 1)
          {
            v49 = *(v47 + 4 * v46 + 3) | (*(v47 + 4 * v46 + 2) << 8);
            v9 = v73;
            v50 = v73[20];
            while (1)
            {
              v51 = (v50 + v49);
              v52 = *(v50 + v49 + 5);
              v53 = *(v50 + v49 + 4);
              v54 = v9;
              if (!BinarySearch(v9[4], *(v9 + 26), 1, v53, 1, v89))
              {
                LOBYTE(v65) = 0;
                v60 = *(v2 + 32);
                *v60 = 0xE6FFFFFF8ELL;
                *(v60 + 8) = 642;
                v5 = v67;
                v9 = v54;
                goto LABEL_91;
              }

              v55 = bswap32(*(*(v54 + 176) + 4 * v89[0])) + (bswap32(*v51) >> 16);
              v56 = **(v90[0] + 152);
              v57 = v56 < v48;
              if (PRliveRule(v2, v67, 0, v53, *(*(v54 + 184) + v55), v57, v56 >= v48))
              {
                v48 = v66;
                v9 = v54;
                if (*(*(v2 + 32) + 4) == 220)
                {
                  goto LABEL_86;
                }
              }

              else
              {
                v58 = PRmevrul(v90[0], -1, v54, v89[0], v55, v52 & 0xFFFFFF80, v57, 0, v53, v51[5], &v82, v2, v67, 0);
                v59 = v65;
                if (v58)
                {
                  v59 = 1;
                }

                v65 = v59;
                if (*(*(v2 + 32) + 4) == 220)
                {
                  LOBYTE(v65) = 0;
                  v5 = v67;
                  v9 = v73;
                  goto LABEL_91;
                }

                v48 = v66;
                v9 = v73;
              }

              v49 = v51[3] | ((v51[2] & 0x7F) << 8);
              if (!v49)
              {
                goto LABEL_86;
              }
            }
          }

          v9 = v73;
LABEL_86:
          ++v46;
          v47 = v78;
          v5 = v67;
        }

        while (v46 != v81);
LABEL_91:
        v4 = v64;
      }

      if (v63 == 1 || v65 == 1)
      {
        **(v2 + 16) = 210;
      }

      v4 = *(v4 + 176);
    }

    v84 = 0;
    v83 = 0;
    v13 = v9[16];
    PRDerive(v2, v5, v4, 10, v90, v89, v88, v87, v86, v85, &v83);
    if (!v83)
    {
      v63 = 0;
      v9 = v73;
      goto LABEL_63;
    }

    v14 = 0;
    v63 = 0;
    v9 = v73;
    v72 = v13;
LABEL_14:
    LOWORD(v15) = 0;
    v16 = 0;
    v71 = 0;
    v17 = 1;
    v70 = v14;
LABEL_15:
    v18 = 0;
    v19 = 0;
    v69 = v87[v14];
    v20 = *(v90 + v14);
    v21 = *(v9 + 70);
    v22 = *(v9 + 24);
    v76 = v22;
    v77 = v15;
    if (v21 >> 2 >= 0x753)
    {
      v23 = 63;
    }

    else
    {
      v23 = 31;
    }

    if (v21 < 0x9C4)
    {
      v23 = 15;
    }

    if (v21 < 0x3E8)
    {
      v23 = 7;
    }

    v24 = (v23 >> 1) - (v20 & v23);
    v25 = 2 * (v20 & v23);
    v15 = v89[v14] % v21;
    v74 = v25;
    v75 = *(v90 + v14);
    while (1)
    {
      v26 = (v13 - v15 + 8 * v15);
      v27 = __rev16(*(v26 + 1));
      if (!v27)
      {
LABEL_57:
        v2 = v68;
LABEL_58:
        v14 = v70;
        goto LABEL_59;
      }

      if (v27 != v20)
      {
        goto LABEL_30;
      }

      if (!(v17 & 1 | v18))
      {
        break;
      }

      v79 = v18;
      v28 = *v26;
      v29 = v26[1];
      v30 = v26[4];
      if (!BinarySearch(v9[4], *(v9 + 26), 1, v30, 1, &v84))
      {
        v2 = v68;
        v44 = *(v68 + 32);
        *v44 = 0xE6FFFFFF8ELL;
        *(v44 + 8) = 644;
        v13 = v72;
        v9 = v73;
        goto LABEL_58;
      }

      if (v30 >= v16)
      {
        v9 = v73;
        v32 = bswap32(*(v73[22] + 4 * v84)) + (v29 | (v28 << 8));
        v33 = *(v73[23] + v32);
        if (v30 != v16 || v33 > v71)
        {
          v35 = v26[5];
          if ((v69 - 1) >= 0x3F)
          {
            v36 = 63;
          }

          else
          {
            v36 = (v69 - 1);
          }

          v14 = v70;
          if ((v35 & 0x3F) == v36)
          {
            v37 = v26[6];
            v2 = v68;
            if (v85[v70] != 30)
            {
              goto LABEL_49;
            }

            if (*(v64 + 16))
            {
              v38 = *(v64 + 80);
              if (v38)
              {
                v39 = *(v38 + 168);
                if (v39)
                {
                  v80 = 1;
                  v40 = v64;
                  goto LABEL_50;
                }
              }

LABEL_49:
              v80 = 0;
              v40 = v64;
              v39 = v64;
LABEL_50:
              v41 = **(v40 + 152);
              v42 = v41 < v66;
              v63 = 0;
              if (PRliveRule(v68, v67, 0, v30, v33, v42, v41 >= v66))
              {
                v16 = v30;
                v71 = v33;
                v9 = v73;
                v14 = v70;
                goto LABEL_52;
              }

              v43 = PRmevrul(v39, v86[v70], v73, v84, v32, v37 >> 7, v42, v88[v70], v30, v37, &v82, v68, v67, v80);
              v14 = v70;
              v9 = v73;
              v63 = v43;
              v16 = v30;
              v71 = v33;
              if ((v35 & 0x40) == 0)
              {
LABEL_56:
                v13 = v72;
                goto LABEL_59;
              }
            }

            else
            {
LABEL_52:
              if ((v35 & 0x40) == 0)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v2 = v68;
            if ((v26[5] & 0x40) == 0)
            {
              goto LABEL_56;
            }
          }

          v17 = 0;
          v13 = v72;
          if (*(*(v2 + 32) + 4) != 220)
          {
            goto LABEL_15;
          }

LABEL_59:
          if (++v14 >= v83)
          {
LABEL_63:
            v10 = *(v2 + 32);
            v11 = *(v10 + 4);
            v5 = v67;
            v4 = v64;
            goto LABEL_64;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v9 = v73;
      }

      v13 = v72;
      v18 = v79;
      v20 = v75;
      v22 = v76;
      v25 = v74;
LABEL_36:
      if (v22 < v19++)
      {
        goto LABEL_57;
      }
    }

    v18 = v77 == v15;
LABEL_30:
    v24 += v25;
    v31 = v24 + v15;
    do
    {
      v15 = v31;
      v31 -= v21;
    }

    while (v21 <= v15);
    goto LABEL_36;
  }

LABEL_100:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRmevrul(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5, int a6, unsigned int a7, char a8, unsigned __int8 a9, unsigned __int8 a10, __int16 **a11, uint64_t a12, uint64_t a13, char a14)
{
  v113[0] = a6;
  v112 = a8;
  memset(v109, 0, sizeof(v109));
  v101 = 0;
  v100 = 0;
  v19 = *(a13 + 8);
  v105 = 0;
  v104[0] = 1;
  v106 = a1;
  v103 = 0;
  v110 = a10 & 3;
  LOBYTE(v94) = a10 & 3;
  if (a1 && (a10 & 3) != 0)
  {
    SetRef(v109, a1, 1, a10 & 3);
  }

  v20 = (*(a3 + 184) + a5);
  v21 = *v20;
  v111 = v20 + 1;
  v22 = *a11;
  if (*a11)
  {
    *(v22 + 12) = a9;
    *(v22 + 13) = v21;
    if (PRgetSeverity(a12, a13, &v100, 0, a9, v21))
    {
      return 0;
    }

    *(*a11 + 14) = v100;
  }

  else if (PRmkErr(a12, a13, a11, 0, 0, a9, v21))
  {
    return 0;
  }

  v87 = a4;
  v107 = 0u;
  v108 = 0u;
  if (!a6)
  {
    goto LABEL_14;
  }

  if (!a14)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x80000000) == 0)
  {
LABEL_11:
    *&v107 = a1;
    *(&v107 + 1) = a1;
  }

LABEL_14:
  v88 = v21;
  v84 = v19;
  v86 = a3;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  v102 = 0;
  v26 = 1;
  v27 = 1;
  v85 = a2;
  v92 = a2;
  v28 = 0;
  do
  {
LABEL_15:
    while (1)
    {
      v89 = v23;
      LOBYTE(v29) = v105;
      while (1)
      {
        v30 = *(a12 + 32);
        if ((*(v30 + 4) | 4) != 4 || (v28 & 0x40) != 0)
        {
          v105 = v29;
          goto LABEL_188;
        }

        if (v26 != 17)
        {
          v27 = v26;
        }

        v31 = v111;
        v32 = *v111;
        v33 = *v111;
        if ((*v111 & 0x20) != 0)
        {
          break;
        }

        if ((*v111 & 0x40) != 0)
        {
          v95 = v27;
          v34 = v28;
          v35 = 0;
          v36 = 0;
          if (v110 && v106)
          {
            v37 = v111[1];
            if ((v37 - 139) < 2)
            {
              v35 = 0;
              LOBYTE(v94) = v110;
              v36 = v106;
            }

            else
            {
              if (v37 == 3 || v37 == 138)
              {
                v36 = 0;
                v35 = 1;
              }

              else
              {
                v36 = 0;
                v35 = 0;
              }

              LOBYTE(v94) = v110;
            }
          }

          v24 = EvaMacRulePiece(&v111, &v106, v26, &v112, &v102, a7, v113, &v110, &v101, v109, a12, a13);
          if (!v24)
          {
            v28 = v34;
            v27 = v95;
            goto LABEL_60;
          }

          v38 = v106;
          if (!v36)
          {
            if (v106)
            {
              v42 = v35;
            }

            else
            {
              v42 = 0;
            }

            v28 = v34;
            v27 = v95;
            if (v42 != 1)
            {
              goto LABEL_50;
            }

            v41 = v26;
            v40 = v94;
            v39 = v106;
            goto LABEL_49;
          }

          if (v36 == v106)
          {
            v109[v94 - 1] = 1;
            v28 = v34;
            v27 = v95;
          }

          else
          {
            SetRef(v109, v36, v26, v94);
            v28 = v34;
            v27 = v95;
            if (!v38 || v110 == v94)
            {
              goto LABEL_50;
            }

            if (v26 == 1)
            {
              v39 = *(v38 + 168);
              if (v39)
              {
                v40 = v94;
                v41 = 1;
LABEL_49:
                SetRef(v109, v39, v41, v40);
              }
            }

            else
            {
              v39 = *(v38 + 176);
              if (v39)
              {
                v41 = v26;
                v40 = v94;
                goto LABEL_49;
              }
            }
          }

LABEL_50:
          v92 = v101;
          goto LABEL_51;
        }

        v24 = EvaWordRulePiece(&v111, &v106, v26, &v103, &v112, &v101, v113, a12, a13);
        v102 = 0;
LABEL_51:
        if (v24 == 1 && (v32 & 0x40) == 0 && v103 == 30)
        {
          if (v26 == 1)
          {
            v43 = *(v106 + 80);
            if (!v43)
            {
LABEL_59:
              LOBYTE(v24) = 1;
              v92 = v101;
              goto LABEL_60;
            }

            v44 = *(v43 + 168);
          }

          else
          {
            v44 = *(v106 + 152);
          }

          v106 = v44;
          goto LABEL_59;
        }

LABEL_60:
        v25 = v33 & 0x80;
        v29 = (v29 + 1);
        if (v29 <= 5)
        {
          v104[v29] = v24;
        }
      }

      v28 = v32;
      v105 = v29;
      v94 = v110;
      if ((v32 & 0x40) != 0)
      {
        if ((v105 & 0x8000000000000000) == 0)
        {
          LOBYTE(v24) = v104[v105];
        }

        if (v24)
        {
          v75 = v106;
          if (v106)
          {
            if (v113[0])
            {
              SetHilite(v106, v92, v27, *a11, &v107);
              v75 = v106;
            }

            if (v94 && v75)
            {
              SetRef(v109, v75, v27, v94);
            }
          }
        }

        if (v89)
        {
LABEL_189:
          if (v107)
          {
            v72 = *(&v107 + 1) == 0;
          }

          else
          {
            v72 = 1;
          }

          v73 = v72 || v107 == *(&v107 + 1);
          if (!v73 && *(&v107 + 1) == *(*(v107 + 80) + 168))
          {
            v107 = 0uLL;
          }

          v98[0] = *v109;
          v98[1] = *&v109[16];
          v98[2] = *&v109[32];
          v99 = *&v109[48];
          v97[0] = v107;
          v97[1] = v108;
          PRmapost(v85, v86, v87, a10, a11, v28, v111, v88, v98, v97, v84, a12, a13);
          return 1;
        }

LABEL_188:
        if (v24 != 1)
        {
          goto LABEL_211;
        }

        goto LABEL_189;
      }

      v110 = 0;
      if ((v33 & 0x80000000) != 0)
      {
        v69 = (v111[1] & 3) == 0;
        v110 = v111[1] & 3;
        v45 = v69;
      }

      else
      {
        v45 = 1;
      }

      v46 = (v33 >> 1) & 1;
      v47 = v33 & 1;
      if ((v33 >> 2))
      {
        v50 = v32;
        v92 = -1;
        v23 = v89;
        goto LABEL_80;
      }

      v48 = (v33 >> 3) & 1;
      v49 = v33;
      if (v46 | v47)
      {
        v23 = v89;
      }

      else
      {
        v23 = (v33 >> 4) & 1;
      }

      if (!(v46 | v47))
      {
        v26 = v48;
      }

      v50 = v49;
      if ((v49 & 3) == 0)
      {
        break;
      }

LABEL_80:
      EvaLogInGlueByte(v104, &v105, (v50 >> 2) & 1, v46, v47);
      v51 = 1;
      if (v50 < 0)
      {
        v51 = 2;
      }

      v111 = &v31[v51];
    }

    if ((v28 & 0x80000000) != 0 || (v111[1] & 0x40) == 0)
    {
      if ((v28 & 0x80000000) != 0 && (v111[2] & 0x40) != 0 && v111[3] == 3)
      {
LABEL_78:
        v26 = 17;
      }
    }

    else if (v111[2] == 3)
    {
      goto LABEL_78;
    }

    if (*(v111 - 1) != v88 && (*(v111 - 3) & 0x40) != 0 && *(v111 - 2) == 3)
    {
      v26 = 17;
    }

    if (v105)
    {
      *v30 = 0xDC000000AALL;
      *(v30 + 8) = 650;
      goto LABEL_211;
    }

    v105 = -1;
    if (!(v104[0] | v89))
    {
      goto LABEL_211;
    }

    v52 = v106;
    if (v27 == 1 && !v26)
    {
      if (v104[0] && v106)
      {
        if (v113[0])
        {
          v53 = v45;
          SetHilite(v106, v92, 1, *a11, &v107);
          v45 = v53;
          v52 = v106;
        }

        if (v94 && v52)
        {
          v54 = v45;
          SetRef(v109, v52, 1, v94);
          v45 = v54;
        }
      }

      v26 = 0;
      if (a14)
      {
        v55 = *(a1 + 152);
      }

      else
      {
        v55 = a1;
      }

      v52 = *(v55 + 168);
      v106 = v52;
      goto LABEL_131;
    }

    if (!v106)
    {
      v60 = v111 + 2;
      if (v49 >= 0)
      {
        v60 = v111 + 1;
      }

      v111 = v60;
      break;
    }

    if (v104[0])
    {
      v96 = v45;
      if (v113[0])
      {
        v56 = *a11;
        v57 = v92;
        v58 = v27;
        v59 = v106;
        goto LABEL_118;
      }

      if (v25)
      {
        v58 = v27;
        v61 = 176;
        if (v27 == 8)
        {
          v61 = 168;
        }

        v59 = *(v106 + v61);
        v56 = *a11;
        if (v59 == *(v59 + 152))
        {
          v57 = -1;
        }

        else
        {
          v57 = 0;
        }

LABEL_118:
        SetHilite(v59, v57, v58, v56, &v107);
        v45 = v96;
      }

      v52 = v106;
      if (v94 && v106)
      {
        v90 = v106;
        SetRef(v109, v106, v27, v94);
        v52 = v90;
        v45 = v96;
      }

      if (v26 == 1)
      {
        v62 = 176;
        goto LABEL_130;
      }

      if (!v26)
      {
        v62 = 168;
LABEL_130:
        v52 = *(v52 + v62);
        v106 = v52;
        v103 = 0;
        goto LABEL_131;
      }
    }

    v103 = 0;
    if (v26 == 17)
    {
      if (*(v31 - 1) != v88 && (*(v31 - 3) & 0x40) != 0)
      {
        if (*(v31 - 2) == 3)
        {
          v26 = v48;
        }

        else
        {
          v26 = 17;
        }
      }

      else
      {
        v26 = 17;
      }
    }

LABEL_131:
    v60 = v31 + 2;
    if (v50 >= 0)
    {
      v60 = v31 + 1;
    }

    v111 = v60;
    LOBYTE(v24) = 1;
  }

  while (v52);
  if (!v45)
  {
    goto LABEL_211;
  }

  if ((*v60 & 0x20) != 0)
  {
    if ((*v60 & 0x80) != 0)
    {
      goto LABEL_211;
    }

    if ((*v60 & 0x10) != 0)
    {
      v23 = 1;
    }

    v111 = ++v60;
  }

  v63 = 0;
  v64 = 1;
  while (1)
  {
    while (1)
    {
      v65 = *v60;
      if ((v65 & 0x20) != 0)
      {
        break;
      }

      if (((v64 != 0) & (v65 >> 4)) != 0)
      {
        v63 = 1;
      }

      if ((v65 & 0x40) == 0)
      {
        v64 = 0;
        if ((v60[2] & 0x80u) == 0)
        {
          v66 = 3;
        }

        else
        {
          v66 = 4;
        }

        v60 += v66;
        continue;
      }

      v68 = v60[1] | ((v65 & 0xF) << 8);
      v69 = v68 == 138 || v68 == 3;
      if (v69)
      {
        if (!v23)
        {
          goto LABEL_211;
        }

        v60 += 3;
LABEL_173:
        if ((v68 - 107) <= 0x34 && ((1 << (v68 - 107)) & 0x10000000000005) != 0 || v68 == 15)
        {
          v64 = 0;
          v60 += 3;
        }

        else
        {
          v64 = 0;
          v60 += 2;
        }

        continue;
      }

      if ((v68 - 139) > 1)
      {
        goto LABEL_173;
      }

      v71 = 2;
      if (v68 != 139)
      {
        v71 = 3;
      }

      v60 += v71;
      if ((*v60 & 0x20) != 0)
      {
        if ((*v60 & 0x80) != 0)
        {
          goto LABEL_211;
        }

LABEL_166:
        ++v60;
        continue;
      }
    }

    if ((v65 & 2) != 0)
    {
      break;
    }

    if ((v65 & 1) == 0)
    {
      if (!(v23 | v63))
      {
        goto LABEL_211;
      }

      goto LABEL_183;
    }

    v67 = *++v60;
    if ((v67 & 0x20) != 0 && (v23 || (v65 & 4) != 0))
    {
      goto LABEL_183;
    }
  }

  if ((v65 & 0x80) != 0)
  {
    goto LABEL_211;
  }

  v70 = v60[1];
  if ((v70 & 0x20) == 0)
  {
    goto LABEL_166;
  }

  if ((v60[1] & 4) != 0)
  {
    v60 += 2;
LABEL_183:
    v111 = v60;
    v105 = 0;
    LOBYTE(v24) = 1;
    v104[0] = 1;
    goto LABEL_15;
  }

  ++v60;
  if ((v70 & 3) != 0)
  {
    goto LABEL_166;
  }

  if (v23 || (v65 & 4) != 0)
  {
    goto LABEL_183;
  }

LABEL_211:
  v76 = *a11;
  *(v76 + 3) = 0;
  *v76 = 0;
  v77 = *(v76 + 3);
  if (v77)
  {
    free(*v77);
    *v77 = 0;
    v78 = *(v77 + 8);
    *(v78 + 4) = -1;
    *v78 = -1;
    *(v77 + 18) = 0;
  }

  v79 = *(v76 + 9);
  if (v79)
  {
    v80 = *v79;
    if (!*v79 || (free(*v80), *v80 = 0, v81 = *(v80 + 8), *(v81 + 8) = -1, *v81 = -1, *(v80 + 18) = 0, (v79 = *(v76 + 9)) != 0))
    {
      v82 = v79[1];
      if (v82)
      {
        free(*v82);
        result = 0;
        *v82 = 0;
        v83 = *(v82 + 8);
        *(v83 + 4) = -1;
        *v83 = -1;
        *(v82 + 18) = 0;
        return result;
      }
    }
  }

  return 0;
}

uint64_t SetRef(uint64_t result, uint64_t a2, int a3, char a4)
{
  *(result + (a4 - 1)) = 1;
  v4 = result + 16 * (a4 - 1);
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    v10 = (a2 + 152);
    v11 = vld1q_dup_f64(v10);
    *v5 = v11;
    return result;
  }

  if ((a3 & 0xFFFFFFEF) == 1)
  {
    v8 = *(v6 + 8);
    v9 = *(a2 + 152);
    if (v8 <= *(v9 + 8))
    {
      *(v5 + 8) = v9;
      return result;
    }
  }

  else
  {
    if (a3)
    {
      return result;
    }

    v9 = *(a2 + 152);
  }

  *v5 = v9;
  return result;
}

uint64_t SetHilite(uint64_t result, int a2, int a3, _WORD *a4, void *a5)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a2 < 0)
      {
        a5[1] = 0;
      }

      else
      {
        a5[1] = result;
      }
    }
  }

  else if (*(result + 16) && (a2 < 0 || a5[2]))
  {
    *a5 = 0;
  }

  else
  {
    *a5 = result;
  }

  v5 = *(result + 152);
  if (!*a4 && !a4[1])
  {
    *a4 = v5[4];
    a4[1] = v5[24] + v5[16];
    a5[2] = v5;
    a5[3] = v5;
    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v9 = a5[2];
    if (v9 == v5)
    {
      return result;
    }

    v8 = a4[1];
    do
    {
      v9 = *(v9 + 72);
      v8 += *(v9 + 48) + *(v9 + 32);
    }

    while (v9 != v5);
    v10 = *(v9 + 8);
    a5[2] = v9;
    *a4 = v10;
LABEL_29:
    a4[1] = v8;
    return result;
  }

  v6 = a5[3];
  if (*(v6 + 8) <= v5[4])
  {
    if (v6 == v5)
    {
      return result;
    }

    v8 = a4[1];
    do
    {
      v6 = *(v6 + 80);
      v8 += *(v6 + 48) + *(v6 + 32);
    }

    while (v6 != v5);
    a5[3] = v6;
    goto LABEL_29;
  }

  if (v6 != v5)
  {
    v7 = a4[1];
    do
    {
      v7 -= *(v6 + 48) + *(v6 + 32);
      v6 = *(v6 + 72);
    }

    while (v6 != v5);
    a4[1] = v7;
    a5[3] = v6;
  }

  return result;
}

uint64_t EvaLogInGlueByte(uint64_t result, _BYTE *a2, int a3, int a4, int a5)
{
  if (a4)
  {
    v5 = *a2;
    if (v5 < 0)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_10;
    }

    v6 = *(result + v5);
    *a2 = v5 - 1;
    if (v5)
    {
      v7 = *(result + (v5 - 1));
      LOBYTE(v5) = v5 - 2;
LABEL_10:
      v10 = v5 + 1;
      *a2 = v5 + 1;
      if (v5 > 4)
      {
        goto LABEL_20;
      }

      v6 |= v7;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!a5)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v8 = *a2;
  if (v8 < 0)
  {
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *(result + v8);
    *a2 = v8 - 1;
    if (!v8)
    {
      v6 = 0;
LABEL_18:
      v10 = 0;
      v7 = 0;
      *a2 = 0;
      goto LABEL_19;
    }

    v7 = *(result + (v8 - 1));
    LOBYTE(v8) = v8 - 2;
  }

  v10 = v8 + 1;
  *a2 = v8 + 1;
  if (v8 > 4)
  {
    goto LABEL_20;
  }

  v6 = v7 & v9;
LABEL_19:
  *(result + v10) = v6;
LABEL_20:
  if (a3)
  {
    v11 = *a2;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v7 = *(result + v11);
      LOBYTE(v11) = v11 - 1;
    }

    v12 = v11;
    v13 = v11 + 1;
    *a2 = v13;
    if (v12 <= 4)
    {
      *(result + v13) = v7 == 0;
    }
  }

  return result;
}