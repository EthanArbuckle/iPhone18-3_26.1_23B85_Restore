uint64_t Hyphenate(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v10 = a4;
  v14 = (a1 + a4);
  v15 = strlen(v14);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v10;
    do
    {
      *(a3 + 4 * (v17 >> 5)) &= ~(1 << ~v17);
      ++v17;
      ++v16;
    }

    while (v15 > v16);
  }

  if (!a7 || !a6 || v15 > 120 || v15 < (a7 + a6))
  {
    if (a2)
    {
      strcpy(a2, v14);
    }

LABEL_10:
    LOWORD(v18) = 0;
    return v18;
  }

  v96 = a7;
  v97 = a1;
  v20 = a5 + 370;
  bzero((a5 + 370), 0x2E4uLL);
  *a5 = 46;
  *(a5 + 124) = 30;
  v21 = a5 + 124;
  v22 = 1;
  for (i = 2; ; ++i)
  {
    v25 = *v14++;
    v24 = v25;
    v26 = 6;
    v27 = 125;
    if (v25 > 195)
    {
      switch(v24)
      {
        case 196:
          goto LABEL_23;
        case 197:
          goto LABEL_24;
        case 214:
LABEL_21:
          v26 = 9;
          v27 = 124;
          goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v24 > 91)
    {
      if (v24 == 92)
      {
        goto LABEL_21;
      }

      if (v24 == 93)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v24 == 91)
    {
LABEL_23:
      v26 = 8;
      v27 = 123;
      goto LABEL_24;
    }

    if (!v24)
    {
      break;
    }

LABEL_26:
    if (v24 > 0x7E)
    {
      goto LABEL_10;
    }

    v27 = __tolower(v24);
    if ((v27 - 97) >= 0x1Du)
    {
      v26 = 0;
    }

    else
    {
      v26 = word_1D2BFAB80[(v27 - 97)];
    }

LABEL_24:
    v28 = v22;
    *(a5 + v22++) = v27;
    *(v21 + 2 * v28) = v26;
  }

  *(a5 + v22) = 46;
  *(v21 + 2 * v22) = 30;
  v29 = (v22 + 1);
  if (v22 < 0x7FFFu)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = keytable;
    v98 = a5 + 618;
    v99 = a5 + 864;
    v35 = brtable;
    while (1)
    {
      if (v30 >= 4)
      {
        v33 = *(v30 + a5 - 1);
      }

      v36 = 0;
      v37 = *v34;
      v38 = *(a5 + v30);
      v39 = v30 - 1;
      for (j = v30; ; ++j)
      {
        v41 = *(a5 + j);
        if (v37 != 43)
        {
          goto LABEL_57;
        }

        if (v30 >= 4)
        {
          v42 = *(v21 + 2 * v39);
          v43 = v42 > 9 || v38 == v33;
          if (!v43 || v30 != 4 && v42 <= 11 && *(v21 + 2 * (v30 - 2)) < 10 || *(v99 + 2 * v39) == 5)
          {
            v44 = v34[(v36 + 1)];
            if (v44 == 49)
            {
              v45 = v36 + 2;
              v46 = v34[(v36 + 2)];
              if (v46 == 32)
              {
                v47 = 1;
LABEL_55:
                *(v98 + 2 * v30) = v47;
                goto LABEL_56;
              }

              LOBYTE(v44) = 49;
              do
              {
                if (v46 == v33)
                {
                  LOBYTE(v44) = 50;
                }

                v46 = v34[++v45];
              }

              while (v46 != 32);
            }

            if ((v44 - 49) <= 4u)
            {
              v47 = (v44 - 48);
              goto LABEL_55;
            }
          }
        }

LABEL_56:
        v48 = *(v35 + 2 * v36);
        v36 = *(v35 + 2 * v36);
        v37 = v34[v48];
LABEL_57:
        if (v37 != 45)
        {
          goto LABEL_72;
        }

        if (v29 - 3 > j && *(v21 + 2 * j) <= 9 && *(a5 + j - 1) != v41)
        {
          v49 = v34[(v36 + 1)];
          if (v49 == 49)
          {
            v50 = v36 + 2;
            v51 = v34[(v36 + 2)];
            if (v51 == 32)
            {
              v52 = 1;
LABEL_70:
              *(v99 + 2 * (j - 1)) = v52;
              goto LABEL_71;
            }

            LOBYTE(v49) = 49;
            do
            {
              if (v51 == v41)
              {
                LOBYTE(v49) = 53;
              }

              v51 = v34[++v50];
            }

            while (v51 != 32);
          }

          if ((v49 - 49) <= 4u)
          {
            v52 = (v49 - 48);
            goto LABEL_70;
          }
        }

LABEL_71:
        v53 = *(v35 + 2 * v36);
        v36 = *(v35 + 2 * v36);
        v37 = v34[v53];
LABEL_72:
        if (v37 == 63)
        {
          LOWORD(v54) = v36 + 1;
          v55 = *(a5 + 1110);
          if (v55 != (v36 + 1))
          {
            do
            {
              v56 = &v34[v54];
              if (*v56 - 48 < 0xA)
              {
                v32 = (*v56 - 48);
              }

              v57 = v56[1] - 48;
              v58 = (v56[1] - 48);
              if (v57 >= 0xA)
              {
                v59 = v31;
              }

              else
              {
                v59 = v58;
              }

              v31 = v59;
              v60 = v30 + v32;
              if (v59 > *(v20 + 2 * v60))
              {
                *(v20 + 2 * v60) = v59;
                LOWORD(v55) = *(a5 + 1110);
              }

              v54 = *(v35 + 2 * v54);
            }

            while (v54 != v55);
          }

          v61 = *(v35 + 2 * v36);
          v36 = *(v35 + 2 * v36);
          v37 = v34[v61];
        }

        if (j == v29)
        {
          break;
        }

        while (1)
        {
          if (v37 == 32)
          {
            goto LABEL_88;
          }

          if (v37 == v41)
          {
            break;
          }

          v62 = *(v35 + 2 * v36);
          v36 = *(v35 + 2 * v36);
          v37 = v34[v62];
        }

        v37 = v34[++v36];
      }

LABEL_88:
      if (++v30 == i)
      {
        v63 = v29 - 1;
        if (v29 >= 2)
        {
          v64 = 0;
          v65 = 0;
          do
          {
            v66 = v64;
            v67 = v64 + 1;
            v68 = *(v98 + 2 * v67);
            v69 = *(v99 + 2 * v65);
            if (v68 == 1 || v69 == 1)
            {
              if (*(v20 + 2 * v65) <= 7)
              {
                *(v20 + 2 * v65) = 8;
              }

              if (*(v20 + 2 * v67) < 7)
              {
                *(v20 + 2 * v67) = 7;
              }

              if (*(v20 + 2 * (v66 + 2)) <= 7)
              {
                *(v20 + 2 * (v66 + 2)) = 8;
              }
            }

            else if (v68 != 4 && v69 != 4)
            {
              if (v68 == 2)
              {
                if (*(v20 + 2 * (v66 + 2)) <= 1)
                {
                  *(v20 + 2 * (v66 + 2)) = 2;
                }

                if (*(v20 + 2 * v65) <= 1)
                {
                  *(v20 + 2 * v65) = 2;
                }
              }

              else if (v68 == 3 || v69 == 2)
              {
                if (*(v20 + 2 * v65) <= 1)
                {
                  *(v20 + 2 * v65) = 2;
                }

                if (v68 == 3 && *(v20 + 2 * (v66 + 2)) <= 1)
                {
                  if (*(a5 + 1114))
                  {
                    *(v20 + 2 * (v66 + 2)) = 2;
                  }

                  else
                  {
                    *(v98 + 2 * v67) = 6;
                  }
                }
              }
            }

            v64 = ++v65;
          }

          while (v63 > v65);
        }

        v79 = 0;
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v88 = (a5 + 368);
        v89 = i;
        v73 = v97;
        v74 = v96;
        while (1)
        {
          v90 = *(v88 - 122);
          v91 = v88[1];
          v92 = v87;
          if (v87 == 2)
          {
            if (v90 <= 9)
            {
              if (v81 || v83 && v82 != 1)
              {
                v83 = 0;
                v81 = 0;
                v87 = 1;
              }

              else
              {
                v87 = 1;
                v95 = ((v91 + ((v91 & 0x8000) >> 15)) & 0xFFFFFFFE) != v91 || v80 == 0;
                v83 = 0;
                v81 = 0;
                if (!v95)
                {
                  *v88 = 1;
                }
              }

              v85 = v84;
              v79 = 1;
              goto LABEL_193;
            }

            if (v90 <= 0x1D)
            {
              if (v90 > 0x18)
              {
                v83 = 1;
              }

              ++v82;
              if (((v91 + ((v91 & 0x8000) >> 15)) & 0xFFFFFFFE) != v91)
              {
                v81 = 1;
              }

              v80 = v91 == 0;
            }

            v87 = 2;
          }

          else
          {
            if (v87 != 1)
            {
              v93 = v90 <= 9;
              if (v90 <= 9)
              {
                v94 = 1;
              }

              else
              {
                LODWORD(v90) = v85;
                v94 = v79;
              }

              if (v87)
              {
                v90 = v85;
              }

              else
              {
                v87 = v93;
                v90 = v90;
              }

              if (!v92)
              {
                v79 = v94;
              }

              goto LABEL_192;
            }

            if (v90 <= 9)
            {
              ++v79;
              if (v90 == v85)
              {
                if (v84 < 1)
                {
                  v87 = 1;
                }

                else
                {
                  v87 = 1;
                  if (!*v88)
                  {
                    *v88 = 1;
                  }
                }

                v86 = 1;
                v90 = v85;
              }

              else if ((v85 > 3 || v90 <= 6) && (v85 < 7 || v90 > 3))
              {
                v87 = 1;
                if (v86)
                {
                  v86 = 0;
                  if (!v88[1])
                  {
                    v88[1] = 1;
                  }
                }
              }

              else
              {
                v86 = 0;
                *v88 = 589832;
                v88[2] = 8;
                v87 = 1;
              }

              goto LABEL_193;
            }

            if (v90 <= 0x1D)
            {
              if (v79 == 2 && *(a5 + 1113) && *v88 == 1)
              {
                *v88 = 0;
              }

              v86 = 0;
              v85 = 0;
              if (v90 > 0x18)
              {
                v83 = 1;
              }

              if (((v91 + ((v91 & 0x8000) >> 15)) & 0xFFFFFFFE) != v91)
              {
                v81 = 1;
              }

              v80 = v91 == 0;
              v82 = 1;
              v87 = 2;
              v90 = 0;
              goto LABEL_193;
            }

            if (v79 == 2)
            {
              if (*(a5 + 1113) && *v88 == 1)
              {
                *v88 = 0;
              }

              v79 = 2;
            }

            v87 = 1;
          }

          v90 = v85;
LABEL_192:
          v85 = v84;
LABEL_193:
          ++v88;
          v84 = v85;
          v85 = v90;
          if (!--v89)
          {
            goto LABEL_127;
          }
        }
      }
    }
  }

  LOWORD(v63) = v22;
  v73 = a1;
  v74 = v96;
LABEL_127:
  v75 = 2;
  if (a6 >= 2 && v63 >= 3)
  {
    v75 = 2;
    do
    {
      ++v75;
      LOWORD(v10) = v10 + 1;
    }

    while (a6 >= v75 && v63 > v75);
  }

  v76 = (v29 - v74);
  if (v76 <= v75)
  {
    goto LABEL_10;
  }

  v18 = 0;
  v77 = v75;
  do
  {
    if (((*(v20 + 2 * v77) + ((*(v20 + 2 * v77) & 0x8000u) >> 15)) & 0xFFFFFFFE) != *(v20 + 2 * v77))
    {
      v78 = (v73 + v10);
      if (v78[1] - 65 <= 0x1C && *v78 - 65 <= 0x1C)
      {
        *(a3 + 4 * (v10 >> 5)) |= 1 << ~v10;
        if (!v18)
        {
          v18 = v77;
        }
      }
    }

    ++v77;
    LOWORD(v10) = v10 + 1;
  }

  while (v77 < v76);
  return v18;
}

void EndHyphen()
{
  free(brtable);
  v0 = keytable;

  free(v0);
}

uint64_t DCengan(uint64_t result, unsigned int a2, uint64_t a3, _WORD *a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = *result;
  v7 = *(result + 1);
  qmemcpy(v12, "BCDGJKPQTVWYZ", 13);
  qmemcpy(v11, "AEIOaeioFHLMNRSXU", 17);
  *a4 = 12336;
  if (a2 <= 3 && a2 != 2)
  {
    LODWORD(v6) = ((*(a3 + 4 * v6) >> 25) & 0x20) + v6;
    if ((*(a3 + 4 * v6) & 0x10000000) != 0)
    {
      result = v6;
      if (v6 != 101 || (((*(a3 + 4 * v7) >> 25) & 0x20) + v7) != 117)
      {
        result = char_in(v6, v11 + 4, 4);
        if (result)
        {
          v8 = 49;
        }

        else
        {
          v8 = 50;
        }

        *a4 = v8;
      }
    }
  }

  if (a2 == 2)
  {
    result = char_in(v6, v12, 13);
    if (result)
    {
      v9 = 48;
LABEL_17:
      *a4 = v9;
      goto LABEL_18;
    }

    result = char_in(v6, v11, 4);
    if (result)
    {
      v9 = 49;
      goto LABEL_17;
    }

    result = char_in(v6, &v11[1], 9);
    if (result)
    {
      v9 = 50;
      goto LABEL_17;
    }
  }

LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DCposclt(int a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  __dst[44] = *MEMORY[0x1E69E9840];
  result = memcpy(__dst, "arei", 0x160uLL);
  v17[0] = 0x75F46F69EA65E161;
  *(v17 + 5) = 0xED6D7A727375F46FLL;
  v16 = 0x72646E736F696561;
  v9 = *(a2 + a3 - 1);
  *a4 = 12336;
  if (a1 == 8)
  {
    v12 = &v16;
    v13 = v9;
    v14 = 8;
  }

  else
  {
    if (a1 != 12)
    {
LABEL_13:
      *a4 = 49;
      goto LABEL_14;
    }

    for (i = 0; i != 44; ++i)
    {
      while (1)
      {
        v11 = byte_1D2BFAD30[i];
        if (v11 <= a3)
        {
          break;
        }

        if (++i == 44)
        {
          goto LABEL_10;
        }
      }

      result = cmp_end_char(a2, a3, &__dst[i], v11);
      if (result == 1)
      {
        goto LABEL_14;
      }
    }

    if (result)
    {
      goto LABEL_14;
    }

LABEL_10:
    v12 = v17;
    v13 = v9;
    v14 = 13;
  }

  result = char_in(v13, v12, v14);
  if (result)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DCposcls(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = 0xEFED69E8E965E061;
  *(v15 + 7) = -218927121;
  qmemcpy(v14, "mos", 3);
  v13 = -19;
  v12 = -185933453;
  v7 = *(a2 + a3 - 1);
  *a5 = 12336;
  if (a3 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + a3 - 2);
  }

  switch(result)
  {
    case 3:
      result = char_in(v7, v15, 11);
      v10 = result == 0;
      v9 = 49;
      goto LABEL_11;
    case 5:
      v9 = 53;
      goto LABEL_13;
    case 0xC:
      result = cmp_end_char(a2, a3, v14, 3);
      if (result)
      {
        v9 = 49;
LABEL_13:
        *a5 = v9;
        break;
      }

      result = char_in(v7, &v12, 5);
      v9 = 50;
      if (result || (v7 & 0xFFFFFFF7) == 0x72)
      {
        goto LABEL_13;
      }

      if (v7 == 109)
      {
        v9 = 52;
        goto LABEL_13;
      }

      v9 = 51;
      if ((*(a4 + 4 * v7) & 0x10000000) == 0)
      {
        goto LABEL_13;
      }

      v10 = v8 == 210 || v8 == 245;
LABEL_11:
      if (v10)
      {
        ++v9;
      }

      goto LABEL_13;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DCposacc(uint64_t result, unsigned int a2, uint64_t a3, char *a4)
{
  v7 = result;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = *(result + a2 - 1);
  qmemcpy(v15, "mos", 3);
  qmemcpy(v14, "ndo", 3);
  v18[0] = 0x656F616F65656165;
  v16 = *"eaneenoenua";
  v17 = 110;
  *a4 = 12336;
  if (!a2)
  {
LABEL_5:
    if (v8 == 114 || v8 == 100)
    {
      goto LABEL_7;
    }

    result = cmp_end_char(result, a2, v14, 3);
    if (result || (result = cmp_end_char(v7, a2, v15, 3), result))
    {
      v12 = 52;
      goto LABEL_11;
    }

    result = cmp_end_char(v7, a2, v18, 2);
    if (result || (result = cmp_end_char(v7, a2, v18 + 2, 2), result) || (result = cmp_end_char(v7, a2, v18 + 4, 2), result) || (result = cmp_end_char(v7, a2, v18 + 6, 2), result))
    {
LABEL_7:
      v12 = 50;
    }

    else
    {
      result = cmp_end_char(v7, a2, &v16, 3);
      if (!result)
      {
        result = cmp_end_char(v7, a2, &v16 + 3, 3);
        if (!result)
        {
          result = cmp_end_char(v7, a2, &v16 + 6, 3);
          if (!result)
          {
            if (a2 >= 3)
            {
              result = DCcalacc(v7, a2, a3, a4);
            }

            goto LABEL_12;
          }
        }
      }

      v12 = 51;
    }

LABEL_11:
    a4[1] = v12;
    goto LABEL_12;
  }

  v9 = a2;
  v10 = result;
  while (1)
  {
    v11 = *v10++;
    if ((*(a3 + 4 * v11) & 0x4000000) != 0)
    {
      break;
    }

    if (!--v9)
    {
      goto LABEL_5;
    }
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DCcalacc(uint64_t a1, unsigned int a2, uint64_t a3, char *__str)
{
  v5 = a2;
  v6 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v19[0] = *"ua";
  v19[1] = *"o";
  v19[2] = xmmword_1D2BFADA8;
  memset(v20, 0, sizeof(v20));
  v7 = xmmword_1D2BF7920;
  v8 = vdupq_n_s64(v19);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    v10.i64[0] = 3 * v7.i64[0];
    v10.i64[1] = 3 * v7.i64[1];
    v20[v6] = vaddq_s64(v8, v10);
    v7 = vaddq_s64(v7, v9);
    ++v6;
  }

  while (v6 != 8);
  v18[2] = 0;
  *__str = 12336;
  if (a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = a2 - 1;
    while (1)
    {
      if ((*(a3 + 4 * *(a1 + v13)) & 0x10000000) != 0)
      {
        if (v12)
        {
          if (!v13)
          {
            break;
          }

          if (v11)
          {
            v17 = (a1 + v13);
            if ((*(a3 + 4 * *(v17 - 1)) & 0x10000000) != 0)
            {
              v18[0] = *(v17 - 1);
              v18[1] = *v17;
              if (cmp_strings(v18, 2, v20, 0x10u))
              {
                v5 -= v13;
              }

              else
              {
                v5 = v5 - v13 + 1;
              }
            }

            else
            {
              v5 = a2 - v13;
            }

            break;
          }

          v11 = 0;
        }

        else
        {
          v12 = v13;
        }
      }

      else if (v12)
      {
        v11 = v13;
      }

      v14 = v13-- + 1;
      if (v14 <= 1)
      {
        v5 = 0;
        break;
      }
    }
  }

  result = snprintf(__str, 3uLL, "%02d", v5);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t char_in(int a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 0;
    while (*(a2 + v3) != a1)
    {
      if (a3 == ++v3)
      {
        return 0;
      }
    }

    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t cmp_strings(_BYTE *a1, int a2, unsigned __int8 **a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = a4;
  while (SLstrncmp(a1, *a3, a2))
  {
    ++a3;
    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t an_init(void *a1, const char *a2, int *a3, int a4)
{
  v8 = malloc_type_calloc(0x1C8uLL, 1uLL, 0xB072328DuLL);
  *a1 = v8;
  if (!v8)
  {
    return 4294966895;
  }

  v9 = v8;
  *v8 = a4;
  v8[1] = has_lang_nont(a4);
  v10 = is_hun_unsuff_word;
  v11 = is_hun_antiword;
  v12 = is_hun_prefix;
  v13 = prefix_stem_suffix_check_hun;
  v14 = stem_suffix_check_hun;
  if (a4 != 14)
  {
    if (a4 != 21)
    {
      goto LABEL_6;
    }

    v10 = is_pol_unsuff_word;
    v11 = is_pol_antiword;
    v12 = is_pol_prefix;
    v13 = prefix_stem_suffix_check_pol;
    v14 = stem_suffix_check_pol;
  }

  *(v9 + 1) = v14;
  *(v9 + 2) = v13;
  *(v9 + 3) = v12;
  *(v9 + 4) = v11;
  *(v9 + 5) = v10;
LABEL_6:
  *(v9 + 6) = 0;
  v15 = (v9 + 12);
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  result = hdr_init(v9 + 6, a2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v17 = hdr_find(*(v9 + 6), 769);
  result = mt_init(v9 + 17, v9 + 18, a2, v17);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v18 = hdr_find(*v15, 259);
  v19 = hdr_find(*v15, 515);
  result = db_init(v9 + 16, a2, v18, v19, a3[2], a3[5]);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  embmax = db_get_embmax(*(v9 + 16));
  infosize = db_get_infosize(*(v9 + 16));
  v22 = malloc_type_calloc(embmax + embmax * infosize, 1uLL, 0xE7B6901CuLL);
  *(v9 + 23) = v22;
  if (!v22)
  {
    return 4294966895;
  }

  if (v9[1])
  {
    v23 = hdr_find(*v15, 258);
    v24 = hdr_find(*v15, 514);
    result = db_init(v9 + 15, a2, v23, v24, a3[1], a3[4]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v25 = db_get_embmax(*(v9 + 15));
    v26 = db_get_infosize(*(v9 + 15));
    v27 = malloc_type_calloc(v25 + v25 * v26, 1uLL, 0xE7122295uLL);
    *(v9 + 22) = v27;
    if (!v27)
    {
      return 4294966895;
    }
  }

  v28 = hdr_find(*v15, 257);
  v29 = hdr_find(*v15, 513);
  result = db_init(v9 + 14, a2, v28, v29, *a3, a3[3]);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v30 = db_get_embmax(*(v9 + 14));
  v31 = db_get_infosize(*(v9 + 14));
  v32 = malloc_type_calloc(v30 + v30 * v31, 1uLL, 0x698D068AuLL);
  *(v9 + 19) = v32;
  if (!v32)
  {
    return 4294966895;
  }

  v33 = db_get_embmax(*(v9 + 14));
  v34 = db_get_infosize(*(v9 + 14));
  v35 = malloc_type_calloc(v33 + v33 * v34, 1uLL, 0x90B55236uLL);
  *(v9 + 20) = v35;
  if (!v35)
  {
    return 4294966895;
  }

  v36 = db_get_embmax(*(v9 + 14));
  v37 = db_get_infosize(*(v9 + 14));
  v38 = malloc_type_calloc(v36 + v36 * v37, 1uLL, 0x8E8D671uLL);
  *(v9 + 21) = v38;
  if (!v38)
  {
    return 4294966895;
  }

  v39 = f_open(a2, 1);
  if (!v39)
  {
    return 4294967094;
  }

  v40 = v39;
  v47 = 0;
  v41 = hdr_find(*v15, 1281);
  f_seek(v40, v41, 0);
  if (fgetl_lsb1st(v40, &v47) == -1 || fgetl_lsb1st(v40, v9 + 11) == -1 || fgetl_lsb1st(v40, v9 + 9) == -1)
  {
    goto LABEL_32;
  }

  v42 = malloc_type_calloc(*(v9 + 9) * *(v9 + 11), 1uLL, 0xA0BA968CuLL);
  *(v9 + 7) = v42;
  if (!v42)
  {
LABEL_35:
    f_close(v40);
    return 4294966895;
  }

  if (f_read(v42, v9[22] * v9[18], 1, v40) != 1 || (v43 = hdr_find(*v15, 1282), f_seek(v40, v43, 0), fgetl_lsb1st(v40, &v47) == -1) || fgetl_lsb1st(v40, v9 + 12) == -1 || fgetl_lsb1st(v40, v9 + 10) == -1)
  {
LABEL_32:
    f_close(v40);
    return 4294967092;
  }

  v44 = malloc_type_calloc(*(v9 + 10) * *(v9 + 12), 1uLL, 0xEE202060uLL);
  *(v9 + 8) = v44;
  if (!v44)
  {
    goto LABEL_35;
  }

  v45 = f_read(v44, v9[24] * v9[20], 1, v40);
  f_close(v40);
  if (v45 != 1)
  {
    return 4294967092;
  }

  v46 = open(a2, 0, 511, v47);
  v9[26] = v46;
  if (v46 == -1)
  {
    return 4294967094;
  }

  db_set_file(*(v9 + 14), v46);
  if (v9[1])
  {
    db_set_file(*(v9 + 15), v9[26]);
  }

  db_set_file(*(v9 + 16), v9[26]);
  return 0;
}

BOOL stem_suffix_check_hun(uint64_t a1)
{
  v1 = *(a1 + 336);
  v10 = v1 == 0;
  v2 = v1 != 0;
  if (v10)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (*(a1 + 328))
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(a1 + 350);
  if (v4 <= 1)
  {
    v6 = (v5 & 0x9000) != 4096;
    v7 = (v5 & 0xFFFF800F) != 0x8000;
    if (v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  v9 = v5 & 0x800F;
  if (v4 == 2)
  {
    if (v9 != 0x8000)
    {
      v10 = (*(a1 + 360) & 0x9000) == 4096;
      return !v10;
    }

    return 0;
  }

  if (v9 == 0x8000)
  {
    return 0;
  }

  v10 = (*(a1 + 360) & 0x800F) == 0x8000;
  return !v10;
}

uint64_t prefix_stem_suffix_check_hun(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = v1 == 0;
  v3 = v1 != 0;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (*(a1 + 328))
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = *(a1 + 350);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if ((v6 & 0x8000) != 0)
      {
        v13 = (v6 & 0xFFFF800F) != 0x8000;
        return (*(a1 + 360) & 0x9000) == 0 && v13;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v10 = *(a1 + 360);
      v11 = (v6 & 0xFFFF800F) != 0x8000;
      if ((v10 & 0x8000) != 0)
      {
        v11 = 0;
      }

      v12 = (v10 & 0xFFFF800F) != 0x8000;
      if ((v6 & 0x8000) != 0)
      {
        return v11;
      }

      else
      {
        return v12;
      }
    }
  }

  else
  {
    v7 = (v6 & 0x9000) == 0;
    v8 = (v6 & 0x8000u) == 0;
    if (v5)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t stem_suffix_check_pol(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = v1 == 0;
  v3 = v1 != 0;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (*(a1 + 328))
  {
    v3 = v4;
  }

  if (!v3)
  {
    if (!v3)
    {
      v5 = *(a1 + 272);
      if ((v5 & 0x4000) == 0 && ((v5 & 0x1000) == 0 || *(a1 + 350) < 0 && *(a1 + 348) != 54))
      {
        return 1;
      }
    }

    return 0;
  }

  v7 = *(a1 + 272);
  v8 = *(a1 + 350);
  if ((v7 & 0x4000) == 0 || (v8 & 0x8000) == 0 && (*(a1 + 368) & 0xFC) == 0x68)
  {
    if ((v8 & 0xFFFF8003) == 0x8000)
    {
      if ((v7 & 0x2000) != 0 || *(a1 + 368) != 102)
      {
        return (v8 & 0xFFFF800F) != 32773;
      }
    }

    else if ((v7 & 0x1000) == 0 || v8 < 0 || *(a1 + 368) - 114 <= 3)
    {
      return (v8 & 0xFFFF800F) != 32773;
    }
  }

  return 0;
}

uint64_t prefix_stem_suffix_check_pol(uint64_t a1)
{
  if (*(a1 + 328))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 336) == 0;
  }

  if (v1)
  {
    return 0;
  }

  v2 = *(a1 + 272);
  if ((v2 & 0x4000) != 0 || (v2 & 0x1000) != 0 && (*(a1 + 350) & 0x80000000) == 0 && *(a1 + 368) - 114 > 3)
  {
    return 0;
  }

  v3 = *(a1 + 350);
  if ((v3 & 0xFFFF8003) == 0x8000)
  {
    if ((v2 & 0x2000) == 0 && *(a1 + 368) == 102)
    {
      return 0;
    }

    v4 = ((((*(a1 + 346) & 0x80FF) + 32731) >> 6) | (((*(a1 + 346) & 0x80FF) + 32731) << 10));
    if (v4 <= 1)
    {
      if ((((*(a1 + 346) & 0x80FF) + 32731) >> 6) | (((*(a1 + 346) & 0x80FF) + 32731) << 10))
      {
        if (v4 != 1)
        {
          return 0;
        }

        if ((*(a1 + 370) & 0x9303) != 0x8000)
        {
          return 0;
        }

        v5 = *(*(a1 + 192) + **(a1 + 304));
        if ((v5 - 97) >= 0x1A && !strchr(is_cwi_lower_pol_lower8, v5))
        {
          return 0;
        }
      }

      else
      {
        v10 = *(a1 + 370);
        if ((v10 & 0xFFFF8003) != 0x8000 || (v10 & 0x1300) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (v4 == 2)
    {
      if ((*(a1 + 370) & 0x9303) == 0x8000)
      {
        return 1;
      }
    }

    else if (v4 == 3)
    {
      return 1;
    }

    return 0;
  }

  if ((v3 & 0x8000) != 0 || *(a1 + 370) < 0)
  {
    return 0;
  }

  v6 = *(a1 + 368);
  v7 = v6 - 114;
  v8 = v6 == 117;
  return v7 < 3 || v8;
}

void an_finish(uint64_t a1)
{
  if (a1)
  {
    close(*(a1 + 104));
    v2 = *(a1 + 64);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      free(v3);
    }

    db_finish(*(a1 + 112));
    v4 = *(a1 + 152);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 160);
    if (v5)
    {
      free(v5);
    }

    v6 = *(a1 + 168);
    if (v6)
    {
      free(v6);
    }

    if (*(a1 + 4))
    {
      db_finish(*(a1 + 120));
      v7 = *(a1 + 176);
      if (v7)
      {
        free(v7);
      }
    }

    db_finish(*(a1 + 128));
    v8 = *(a1 + 184);
    if (v8)
    {
      free(v8);
    }

    mt_finish(*(a1 + 136), *(a1 + 144));
    hdr_finish(*(a1 + 48));

    free(a1);
  }
}

uint64_t an_analyze(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  result = 4294966886;
  if (a3 > 64)
  {
    return result;
  }

  v8 = a3;
  if (!a3)
  {
    return result;
  }

  infosize = db_get_infosize(*(a1 + 112));
  if (v8 >= 1)
  {
    bzero((a1 + 392), v8);
  }

  *(a1 + 108) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = v8;
  *(a1 + 204) = 0;
  *(a1 + 272) = a4;
  *(a1 + 376) = xmmword_1D2BFADC0;
  v14 = a2[v8];
  a2[v8] = 0;
  v15 = *(a1 + 152);
  v109 = *(a1 + 160);
  v16 = *(a1 + 168);
  v17 = db_search(*(a1 + 112), a2, v15);
  *(a1 + 276) = v17;
  if (v17 < 0)
  {
    a2[v8] = v14;
    return *(a1 + 276);
  }

  v18 = v17;
  v105 = v16;
  v107 = v14;
  v103 = a5;
  v104 = a6;
  v110 = infosize;
  if (v17)
  {
    v108 = 0;
    v19 = infosize + 1;
    v20 = a1 + 392;
    v21 = v19;
    v22 = -v19;
    v112 = v19;
    while (1)
    {
      v23 = v18--;
      v24 = (v15 + v21 * (v23 - 1));
      while (1)
      {
        *(a1 + 312) = 0;
        *(a1 + 320) = 0;
        *(a1 + 304) = v24;
        v25 = *v24;
        if (stem_check(a1, v24, *v24))
        {
          break;
        }

        if ((*(a1 + 32))(*(a1 + 350)))
        {
          if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }
        }

        else
        {
          v26 = 0;
        }

        --v23;
        *(v25 + v20 - 1) |= v26;
        --v18;
        v24 += v22;
        if (v23 + 1 <= 1)
        {
          goto LABEL_99;
        }
      }

      *(a1 + 344) = *(a1 + 348);
      v27 = *(a1 + 350);
      *(a1 + 352) = v27;
      *(a1 + 346) = v27;
      if ((*(a1 + 24))())
      {
        v28 = **(a1 + 304);
        if (v28 != v8 || (*(a1 + 273) & 2) != 0)
        {
          v29 = db_search(*(a1 + 112), &a2[v28], v109);
          *(a1 + 280) = v29;
          if (v29 < 0)
          {
            goto LABEL_168;
          }

          v30 = v29;
          v99 = v8;
          v106 = a2;
          if (v29)
          {
            do
            {
              v31 = v30--;
              v32 = (v109 + v112 * (v31 - 1));
              while (1)
              {
                *(a1 + 312) = v32;
                v33 = **(a1 + 304);
                v34 = *v32;
                v35 = v34 + v33;
                v36 = stem_check(a1, v32, v34 + v33);
                v37 = *(a1 + 350);
                if (v36)
                {
                  break;
                }

                if ((*(a1 + 32))(v37))
                {
                  if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v38 = 2;
                  }
                }

                else
                {
                  v38 = 0;
                }

                --v31;
                *(v35 + v20 - 1) |= v38;
                --v30;
                v32 += v22;
                if (v31 + 1 <= 1)
                {
                  goto LABEL_94;
                }
              }

              *(a1 + 354) = v37;
              v8 = v99;
              if (!(*(a1 + 24))())
              {
                *(a1 + 296) = *(a1 + 312);
                v108 = scan(a1, *(a1 + 16), v103, v108, v104);
                if (v108 == v104 || (v108 & 0x80000000) != 0 || (*(a1 + 108) & 4) != 0)
                {
                  goto LABEL_169;
                }
              }

              v39 = v31 < 2;
              a2 = v106;
            }

            while (!v39);
          }
        }

        else if (*a1 == 14)
        {
          *(a1 + 328) = 0;
          *(a1 + 336) = 0;
          v108 = process_result(a1, v103, v108);
          if (v108 == v104)
          {
            a2[v8] = v107;
            return v104;
          }
        }
      }

      else
      {
        if (*a1 == 14 && *(a1 + 350) == -32768)
        {
          if (**(a1 + 304) != 3)
          {
            goto LABEL_49;
          }

          if (!SLstrncmp(a2, "leg", 3))
          {
            goto LABEL_55;
          }

          if (*(a1 + 350) == -32768)
          {
LABEL_49:
            if (**(a1 + 304) == 8 && !SLstrncmp(a2, "legesleg", 8))
            {
LABEL_55:
              v40 = db_search(*(a1 + 112), &a2[**(a1 + 304)], v109);
              *(a1 + 280) = v40;
              if (v40 < 0)
              {
LABEL_168:
                a2[v8] = v107;
                return *(a1 + 280);
              }

              v41 = v40;
              v99 = v8;
              v106 = a2;
              if (v40)
              {
                do
                {
                  v42 = v41--;
                  v43 = (v109 + v112 * (v42 - 1));
                  while (1)
                  {
                    *(a1 + 312) = v43;
                    v44 = **(a1 + 304);
                    v45 = *v43;
                    v46 = v45 + v44;
                    v47 = stem_check(a1, v43, v45 + v44);
                    v48 = *(a1 + 350);
                    if (v47)
                    {
                      break;
                    }

                    if ((*(a1 + 32))(v48))
                    {
                      if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
                      {
                        v49 = 1;
                      }

                      else
                      {
                        v49 = 2;
                      }
                    }

                    else
                    {
                      v49 = 0;
                    }

                    --v42;
                    *(v46 + v20 - 1) |= v49;
                    --v41;
                    v43 += v22;
                    if (v42 + 1 <= 1)
                    {
LABEL_94:
                      v8 = v99;
                      a2 = v106;
                      goto LABEL_95;
                    }
                  }

                  *(a1 + 354) = v48;
                  if ((*(a1 + 24))())
                  {
                    v50 = db_search(*(a1 + 112), &v106[**(a1 + 304) + **(a1 + 312)], v105);
                    *(a1 + 284) = v50;
                    v8 = v99;
                    if (v50 < 0)
                    {
LABEL_170:
                      v106[v8] = v107;
                      return *(a1 + 284);
                    }

                    if (v50)
                    {
                      do
                      {
                        v51 = v50;
                        v52 = v50 - 1;
                        v53 = (v105 + v112 * (v51 - 1));
                        while (1)
                        {
                          v98 = v51;
                          v101 = v52;
                          *(a1 + 320) = v53;
                          v54 = **(a1 + 312) + **(a1 + 304);
                          v55 = *v53;
                          v56 = v54 + v55;
                          v57 = stem_check(a1, v53, v54 + v55);
                          v58 = *(a1 + 350);
                          if (v57)
                          {
                            break;
                          }

                          if ((*(a1 + 32))(v58))
                          {
                            v59 = v98;
                            if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
                            {
                              v60 = 1;
                            }

                            else
                            {
                              v60 = 2;
                            }

                            v61 = v101;
                          }

                          else
                          {
                            v60 = 0;
                            v61 = v101;
                            v59 = v98;
                          }

                          v51 = v59 - 1;
                          *(v56 + v20 - 1) |= v60;
                          v52 = v61 - 1;
                          v53 += v22;
                          if (v51 + 1 <= 1)
                          {
                            v8 = v99;
                            goto LABEL_91;
                          }
                        }

                        *(a1 + 356) = v58;
                        if ((*(a1 + 24))())
                        {
                          v8 = v99;
                        }

                        else
                        {
                          *(a1 + 296) = *(a1 + 320);
                          v108 = scan(a1, supl_prefix_stem_suffix_check_hun, v103, v108, v104);
                          v8 = v99;
                          if (v108 == v104 || (v108 & 0x80000000) != 0 || (*(a1 + 108) & 4) != 0)
                          {
                            goto LABEL_169;
                          }
                        }

                        v50 = v101;
                      }

                      while (v98 >= 2);
                    }
                  }

                  else
                  {
                    *(a1 + 296) = *(a1 + 312);
                    v108 = scan(a1, supl_stem_suffix_check_hun, v103, v108, v104);
                    v8 = v99;
                    if (v108 == v104 || (v108 & 0x80000000) != 0 || (*(a1 + 108) & 4) != 0)
                    {
                      goto LABEL_169;
                    }
                  }

LABEL_91:
                  v39 = v42 < 2;
                  a2 = v106;
                }

                while (!v39);
              }

              goto LABEL_95;
            }
          }
        }

        if ((*(a1 + 273) & 2) == 0)
        {
          *(a1 + 296) = *(a1 + 304);
          v108 = scan(a1, *(a1 + 8), v103, v108, v104);
          if (v108 == v104 || (v108 & 0x80000000) != 0 || (*(a1 + 108) & 4) != 0)
          {
            goto LABEL_165;
          }
        }
      }

LABEL_95:
      v21 = v112;
      if (v23 < 2)
      {
        goto LABEL_99;
      }
    }
  }

  v108 = 0;
LABEL_99:
  if (*a1 != 14 || (*(a1 + 273) & 4) != 0 || (v62 = *(a1 + 276), v62 < 1))
  {
LABEL_165:
    a2[v8] = v107;
    return v108;
  }

  v113 = a1 + 392;
  v63 = v110 + 1;
  v111 = -v63;
  v64 = v15;
  v100 = v8;
  v102 = v63;
  v106 = a2;
  while (1)
  {
    v65 = (v64 + (v62 - 1) * v63);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 304) = v65;
    v66 = *v65;
    if (stem_check(a1, v65, *v65))
    {
      break;
    }

    if ((*(a1 + 32))(*(a1 + 350)))
    {
      if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
      {
        v97 = 1;
      }

      else
      {
        v97 = 2;
      }
    }

    else
    {
      v97 = 0;
    }

    *(v66 + v113 - 1) |= v97;
LABEL_163:
    v39 = v62-- < 2;
    if (v39)
    {
      goto LABEL_165;
    }
  }

  *(a1 + 344) = *(a1 + 348);
  v67 = *(a1 + 350);
  *(a1 + 352) = v67;
  *(a1 + 346) = v67;
  *(a1 + 296) = *(a1 + 304);
  if ((*(a1 + 24))())
  {
    goto LABEL_163;
  }

  if (!match_stem_null(a1))
  {
    goto LABEL_163;
  }

  v68 = *(a1 + 350);
  if ((~v68 & 0x8010) == 0 && (v68 & 0xE) != 6 && (*(a1 + 273) & 1) == 0)
  {
    goto LABEL_163;
  }

  v69 = db_search(*(a1 + 112), &a2[**(a1 + 304)], v109);
  *(a1 + 280) = v69;
  if (v69 < 0)
  {
    goto LABEL_168;
  }

  v70 = v69;
  if (!v69)
  {
    goto LABEL_163;
  }

  while (1)
  {
    v71 = v70--;
    v72 = (v109 + v63 * (v71 - 1));
    while (1)
    {
      *(a1 + 312) = v72;
      *(a1 + 320) = 0;
      v73 = **(a1 + 304);
      v74 = *v72;
      v75 = v74 + v73;
      v76 = stem_check(a1, v72, v74 + v73);
      v77 = *(a1 + 350);
      if (v76)
      {
        break;
      }

      if ((*(a1 + 32))(v77))
      {
        if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
        {
          v78 = 1;
        }

        else
        {
          v78 = 2;
        }
      }

      else
      {
        v78 = 0;
      }

      --v71;
      *(v75 + v113 - 1) |= v78;
      --v70;
      v72 += v111;
      if (v71 + 1 <= 1)
      {
        a2 = v106;
        v63 = v102;
        goto LABEL_163;
      }
    }

    *(a1 + 354) = v77;
    if ((*(a1 + 24))())
    {
      break;
    }

    v93 = *(a1 + 350);
    v94 = ~v93 & 0x8010;
    v95 = v93 & 0xE;
    if (v94)
    {
      v96 = 1;
    }

    else
    {
      v96 = v95 == 6;
    }

    if (v96 || (*(a1 + 273) & 1) != 0)
    {
      *(a1 + 296) = *(a1 + 312);
      v108 = scan(a1, stem_stem_suffix_check_hun, v103, v108, v104);
      if (v108 == v104 || (v108 & 0x80000000) != 0 || (*(a1 + 108) & 4) != 0)
      {
        goto LABEL_169;
      }
    }

LABEL_153:
    v39 = v71 < 2;
    a2 = v106;
    v64 = v15;
    v63 = v102;
    if (v39)
    {
      goto LABEL_163;
    }
  }

  v79 = db_search(*(a1 + 112), &v106[**(a1 + 304) + **(a1 + 312)], v105);
  *(a1 + 284) = v79;
  if (v79 < 0)
  {
    goto LABEL_170;
  }

  v80 = v79;
  if (!v79)
  {
    goto LABEL_153;
  }

  while (1)
  {
    v81 = v80--;
    v82 = (v105 + v102 * (v81 - 1));
    while (1)
    {
      *(a1 + 320) = v82;
      v83 = **(a1 + 312) + **(a1 + 304);
      v84 = *v82;
      v85 = v83 + v84;
      v86 = stem_check(a1, v82, v83 + v84);
      v87 = *(a1 + 350);
      if (v86)
      {
        break;
      }

      if ((*(a1 + 32))(v87))
      {
        if (*a1 == 14 && (*(a1 + 350) & 1) != 0)
        {
          v88 = 1;
        }

        else
        {
          v88 = 2;
        }
      }

      else
      {
        v88 = 0;
      }

      --v81;
      *(v85 + v113 - 1) |= v88;
      --v80;
      v82 += v111;
      if (v81 + 1 <= 1)
      {
        LODWORD(v8) = v100;
        goto LABEL_153;
      }
    }

    *(a1 + 356) = v87;
    LODWORD(v8) = v100;
    if (!(*(a1 + 24))())
    {
      v89 = *(a1 + 350);
      v90 = ~v89 & 0x8010;
      v91 = v89 & 0xE;
      v92 = v90 || v91 == 6;
      if (v92 || (*(a1 + 273) & 1) != 0)
      {
        *(a1 + 296) = *(a1 + 320);
        v108 = scan(a1, stem_prefix_stem_suffix_check_hun, v103, v108, v104);
        if (v108 == v104 || (v108 & 0x80000000) != 0 || (*(a1 + 108) & 4) != 0)
        {
          break;
        }
      }
    }

    if (v81 < 2)
    {
      goto LABEL_153;
    }
  }

LABEL_169:
  v106[v8] = v107;
  return v108;
}

uint64_t stem_check(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  if (v6 >= 1)
  {
    v7 = (*(a2 + 2) << 8) | *(a2 + 1);
    v5 += v7 + v7 * (v6 - 1);
  }

  v8 = *v5;
  v9 = *(v5 + 1);
  *(a1 + 348) = v8;
  *(a1 + 350) = v9;
  if ((*(a1 + 32))(v9))
  {
    return 0;
  }

  v11 = *(a1 + a3 + 391);
  if (!*(a1 + a3 + 391) || (v11 & 1) != 0 && (*(a1 + 272) & 0x100) != 0)
  {
    if (*a1 == 14)
    {
      if (v8 == 67 && v9 == 32784)
      {
        return 0;
      }

      if ((v9 & 0x800E) != 0x8006 && (*(a1 + 272) & 0x800) != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 108) |= v11;
  }

  return result;
}

uint64_t scan(uint64_t a1, unsigned int (*a2)(uint64_t), uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a1 + 392;
  v11 = *(*(a1 + 200) + a1 + 392 - 1);
  if (*(*(a1 + 200) + a1 + 392 - 1) && ((v11 & 1) == 0 || (*(a1 + 272) & 0x100) == 0))
  {
    v13 = *(a1 + 108) | v11;
    goto LABEL_7;
  }

  if (*(a1 + 4))
  {
    v12 = (db_get_infosize(*(a1 + 120)) + 1);
  }

  else
  {
    v12 = 1;
  }

  v62 = v12;
  infosize = db_get_infosize(*(a1 + 128));
  v15 = *(a1 + 296);
  v16 = *(a1 + 304);
  v17 = *v16;
  if (v15 != v16)
  {
    v18 = *(a1 + 312);
    v17 += *v18;
    if (v15 != v18)
    {
      v17 += **(a1 + 320);
    }
  }

  if (*(a1 + 4))
  {
    v19 = *(a1 + 176);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 184);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v21 = *(a1 + 200);
  if (v17 == v21)
  {
    if (!match_stem_null(a1) || !a2(a1))
    {
      return a4;
    }

    return process_result(a1, a3, a4);
  }

  if (*a1 == 21 && *(a1 + 348) == 65)
  {
    return a4;
  }

  if (*(a1 + 388))
  {
    LODWORD(v23) = *(a1 + 292);
  }

  else
  {
    v24 = (a1 + 204);
    if (!*(a1 + 204))
    {
      v25 = *(a1 + 192);
      v24[v21] = 0;
      if (v21 >= 1)
      {
        v26 = (v21 + a1 + 203);
        v27 = v21 + 1;
        do
        {
          v28 = *v25++;
          *v26-- = v28;
          --v27;
        }

        while (v27 > 1);
      }
    }

    v23 = db_search(*(a1 + 128), v24, v20);
    *(a1 + 292) = v23;
    if ((v23 & 0x80000000) != 0)
    {
      return v23;
    }

    *(a1 + 388) = 1;
  }

  v60 = a5;
  v61 = a2;
  v58 = v20;
  v59 = a3;
  if (v23 >= 1)
  {
    for (i = 0; i < *(a1 + 292); ++i)
    {
      *(a1 + 336) = v20;
      if ((v17 + *v20) > *(a1 + 200))
      {
        break;
      }

      fill_term(a1);
      v30 = *(a1 + 200);
      v31 = **(a1 + 336);
      v32 = *(v10 + v30 + ~v31);
      if (*(v10 + v30 + ~v31) && ((v32 & 1) == 0 || (*(a1 + 272) & 0x100) == 0))
      {
        *(a1 + 108) |= v32;
        break;
      }

      if (v17 + v31 == v30)
      {
        v33 = *(a1 + 350) < 0 ? *(a1 + 144) : *(a1 + 136);
        if (mt_match(v33, *(a1 + 348), *(a1 + 368)) && ((*(a1 + 370) ^ *(a1 + 350)) & *(a1 + 372)) == 0 && a2(a1) && (*a1 != 14 || (*(a1 + 350) & 0x80000000) == 0 || *(a1 + 368) != 110 || *(*(a1 + 192) + v17 - 1) == *(*(a1 + 192) + v17)))
        {
          a4 = process_result(a1, v59, a4);
          if (a4 == a5)
          {
            return v60;
          }
        }
      }

      v20 += infosize + 1;
    }
  }

  if (!*(a1 + 4))
  {
    return a4;
  }

  if (*(a1 + 384) != v17)
  {
    v23 = db_search(*(a1 + 120), (*(a1 + 192) + v17), v19);
    *(a1 + 288) = v23;
    if ((v23 & 0x80000000) == 0)
    {
      *(a1 + 384) = v17;
      goto LABEL_57;
    }

    return v23;
  }

  LODWORD(v23) = *(a1 + 288);
LABEL_57:
  if (v23 < 1)
  {
    return a4;
  }

  v34 = 0;
  v35 = v17 - 1;
  v36 = infosize + 1;
  while (1)
  {
    v37 = (v19 + v34 * v62);
    *(a1 + 328) = v37;
    *(a1 + 336) = 0;
    v38 = *(a1 + 56);
    v39 = *(a1 + 88);
    if (v39 >= 1)
    {
      v40 = (v37[2] << 8) | v37[1];
      v38 += v40 + v40 * (v39 - 1);
    }

    *(a1 + 358) = *v38;
    *(a1 + 360) = *(v38 + 1);
    v41 = *(a1 + 64);
    v42 = *(a1 + 96);
    if (v42 >= 1)
    {
      v43 = (v37[4] << 8) | v37[3];
      v41 += v43 + v43 * (v42 - 1);
    }

    *(a1 + 362) = *v41;
    *(a1 + 364) = *(v41 + 1);
    *(a1 + 366) = *(v41 + 3);
    v44 = *v37;
    v45 = *(v10 + v35 + v44);
    if (*(v10 + v35 + v44))
    {
      if ((v45 & 1) == 0 || (*(a1 + 272) & 0x100) == 0)
      {
        break;
      }
    }

    v46 = v17 + v44;
    v47 = *(a1 + 200);
    if (v46 != v47)
    {
      if (v46 <= v47)
      {
        v51 = v58;
        if (match_stem_nont(a1))
        {
          if (*(a1 + 292) >= 1)
          {
            v52 = 0;
            while (1)
            {
              *(a1 + 336) = v51;
              if ((v17 + *v51 + **(a1 + 328)) > *(a1 + 200))
              {
                break;
              }

              fill_term(a1);
              v53 = *(a1 + 200);
              v54 = **(a1 + 336);
              v55 = *(v10 + v53 + ~v54);
              if (*(v10 + v53 + ~v54) && ((v55 & 1) == 0 || (*(a1 + 272) & 0x100) == 0))
              {
                *(a1 + 108) |= v55;
                goto LABEL_98;
              }

              if (v17 + v54 + **(a1 + 328) == v53)
              {
                v56 = *(a1 + 360) < 0 ? *(a1 + 144) : *(a1 + 136);
                if (mt_match(v56, *(a1 + 358), *(a1 + 368)))
                {
                  if (((*(a1 + 370) ^ *(a1 + 360)) & *(a1 + 372)) == 0)
                  {
                    if (v61(a1))
                    {
                      if (*a1 != 14 || (*(a1 + 360) & 0x80000000) == 0 || *(a1 + 368) != 110 || (v57 = (*(a1 + 192) + **(a1 + 328) + v17), *(v57 - 1) == *v57))
                      {
                        a4 = process_result(a1, v59, a4);
                        if (a4 == v60)
                        {
                          return v60;
                        }
                      }
                    }
                  }
                }
              }

              v51 += v36;
              if (++v52 >= *(a1 + 292))
              {
                goto LABEL_98;
              }
            }
          }
        }
      }

      goto LABEL_98;
    }

    if (match_stem_nont(a1))
    {
      if (*(a1 + 360) < 0)
      {
        v48 = *(a1 + 144);
        v49 = *(a1 + 358);
      }

      else
      {
        v48 = *(a1 + 136);
        v49 = *(a1 + 358);
        if (*a1 == 14)
        {
          v50 = 100;
LABEL_95:
          if (mt_match(v48, v49, v50))
          {
            if (v61(a1))
            {
              a4 = process_result(a1, v59, a4);
              if (a4 == v60)
              {
                return v60;
              }
            }
          }

          goto LABEL_98;
        }
      }

      v50 = 97;
      goto LABEL_95;
    }

LABEL_98:
    if (++v34 >= *(a1 + 288))
    {
      return a4;
    }
  }

  v13 = *(a1 + 108) | v45;
LABEL_7:
  *(a1 + 108) = v13;
  return a4;
}

BOOL supl_stem_suffix_check_hun(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = v1 == 0;
  v3 = v1 != 0;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (*(a1 + 328))
  {
    v3 = v4;
  }

  return v3 >= 2 && (v3 == 2 || (*(a1 + 360) & 0x800F) != 0x8000) && (*(a1 + 350) & 0x800F) != 0x8000 && strstr((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "bb") != 0;
}

BOOL supl_prefix_stem_suffix_check_hun(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = v1 == 0;
  v3 = v1 != 0;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (*(a1 + 328))
  {
    v3 = v4;
  }

  return v3 >= 2 && (v3 == 2 || (*(a1 + 360) & 0x800F) != 0x8000) && (*(a1 + 350) & 0x800F) != 0x8000 && strstr((*(a1 + 192) + **(a1 + 304) + **(a1 + 312) + **(a1 + 320)), "bb") != 0;
}

uint64_t match_stem_null(uint64_t a1)
{
  if (*(a1 + 350) < 0)
  {
    v1 = *(a1 + 144);
    v2 = *(a1 + 348);
    goto LABEL_6;
  }

  v1 = *(a1 + 136);
  v2 = *(a1 + 348);
  if (*a1 != 14)
  {
LABEL_6:
    v3 = v1;
    v4 = 97;
    return mt_match(v3, v2, v4);
  }

  v3 = *(a1 + 136);
  v4 = 100;
  return mt_match(v3, v2, v4);
}

uint64_t stem_prefix_stem_suffix_check_hun(uint64_t a1)
{
  v2 = **(a1 + 304);
  if ((*(a1 + 273) & 1) == 0)
  {
    v3 = **(a1 + 312) + v2;
    if (**(a1 + 312))
    {
      v4 = 0;
      v5 = (*(a1 + 192) + v3 - 1);
      v6 = **(a1 + 312) + v2;
      do
      {
        --v6;
        v7 = *v5;
        v8 = *--v5;
        v4 += is_cwi_vowel_hun(v7, v8);
      }

      while (v6 > v2);
      if (v4 > 1)
      {
        goto LABEL_8;
      }
    }

    if ((~*(a1 + 346) & 0x8003) == 0 || (~*(a1 + 350) & 0x8003) == 0)
    {
LABEL_8:
      v9 = *(a1 + 328);
      v10 = v3 + **(a1 + 320);
      if (v9)
      {
        v10 += *v9;
      }

      if (v10)
      {
        v11 = 0;
        v12 = *(a1 + 192);
        v13 = v10;
        do
        {
          v14 = v12 + v13;
          if (v13 < 2)
          {
            v15 = 32;
          }

          else
          {
            v15 = *(v14 - 2);
          }

          --v13;
          v11 += is_cwi_vowel_hun(*(v14 - 1), v15);
        }

        while (v13);
        if (v11 >= 7)
        {
          result = 0;
          *(a1 + 108) |= 4u;
          return result;
        }
      }
    }
  }

  if (v2 >= 2)
  {
    v17 = (*(a1 + 192) + v2);
    v18 = *v17;
    if (v18 == *(v17 - 1) && v18 == *(v17 - 2))
    {
      return 0;
    }
  }

  if (v2 != **(a1 + 320) || (result = SLstrncmp(*(a1 + 192), (*(a1 + 192) + **(a1 + 312) + v2), v2), result))
  {
    v19 = *(a1 + 336);
    v20 = v19 == 0;
    v21 = v19 != 0;
    if (v20)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    if (*(a1 + 328))
    {
      v21 = v22;
    }

    if (v21 >= 2 && (v21 == 2 || (*(a1 + 360) & 0x800F) != 0x8000))
    {
      v23 = *(a1 + 350);
      if ((v23 & 0xFFFF800F) != 0x8000)
      {
        v24 = *(a1 + 360);
        if (((~v24 & 0x8010) != 0 || (v24 & 0xE) == 6) && (v23 & 0x8000) == 0)
        {
          v25 = (v24 & 0x8006) == 32770;
          return (*(a1 + 346) & 0x8006) == 0x8002 && v25;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL stem_stem_suffix_check_hun(uint64_t a1)
{
  if ((*(a1 + 273) & 1) == 0)
  {
    v2 = *(a1 + 346);
    v3 = ~v2 & 0x8003;
    v4 = v2 & 0x800E;
    v5 = v3 || v4 == 32774;
    if (!v5 || (v6 = *(a1 + 350), (~v6 & 0x8003) == 0) && (v6 & 0x800E) != 0x8006)
    {
      v7 = **(a1 + 312) + **(a1 + 304);
      v8 = *(a1 + 328);
      if (v8)
      {
        v7 += *v8;
      }

      if (v7)
      {
        v9 = 0;
        v10 = *(a1 + 192);
        v11 = v7;
        do
        {
          v12 = v10 + v11;
          if (v11 < 2)
          {
            v13 = 32;
          }

          else
          {
            v13 = *(v12 - 2);
          }

          --v11;
          v9 += is_cwi_vowel_hun(*(v12 - 1), v13);
        }

        while (v11);
        if (v9 >= 7)
        {
          v14 = 0;
          *(a1 + 108) |= 4u;
          return v14;
        }
      }
    }
  }

  v15 = **(a1 + 304);
  if (v15 < 2)
  {
    goto LABEL_58;
  }

  v16 = (*(a1 + 192) + v15);
  v17 = *v16;
  v18 = *v16;
  v19 = *(v16 - 1);
  if (v18 == v19 && v18 == *(v16 - 2))
  {
    return 0;
  }

  if (v15 == 2 || **(a1 + 312) < 2u || v16[1] != v19 || v18 != *(v16 - 2) || *(v16 - 3) != v17)
  {
    goto LABEL_58;
  }

  v20 = memchr("glnt", v17, 5uLL);
  if (v19 == 121 && v20 != 0)
  {
    return 0;
  }

  if (v18 <= 99)
  {
    if (v18)
    {
      goto LABEL_40;
    }
  }

  else if (v18 != 100)
  {
    if (v18 == 122)
    {
      goto LABEL_41;
    }

    if (v18 != 115)
    {
      goto LABEL_42;
    }
  }

  if (v19 == 122)
  {
    return 0;
  }

  if (v18)
  {
LABEL_40:
    if (v18 != 99)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v19 == 115)
  {
    return 0;
  }

LABEL_42:
  v22 = memchr("GLNT", v17, 5uLL);
  if (v19 == 89 && v22 != 0)
  {
    return 0;
  }

  v24 = v17;
  if (v17 <= 0x43u)
  {
    if (v17)
    {
      goto LABEL_56;
    }
  }

  else if (v17 != 68)
  {
    if (v17 == 90)
    {
      goto LABEL_57;
    }

    if (v17 != 83)
    {
      goto LABEL_58;
    }
  }

  if (v19 == 90)
  {
    return 0;
  }

  if (v17)
  {
    v24 = v17;
    if (v17 != 90)
    {
LABEL_56:
      if (v24 != 67)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_57:
  if (v19 == 83)
  {
    return 0;
  }

LABEL_58:
  if (v15 == **(a1 + 312) && !SLstrncmp(*(a1 + 192), (*(a1 + 192) + v15), v15))
  {
    return 0;
  }

  v25 = *(a1 + 336);
  v5 = v25 == 0;
  v26 = v25 != 0;
  if (v5)
  {
    v27 = 2;
  }

  else
  {
    v27 = 3;
  }

  if (*(a1 + 328))
  {
    v26 = v27;
  }

  if (v26 > 1)
  {
    if (v26 != 2 && (*(a1 + 360) & 0x800F) == 0x8000)
    {
      return 0;
    }

    v30 = *(a1 + 350);
    if ((v30 & 0xFFFF800F) == 0x8000)
    {
      return 0;
    }

    v31 = *(a1 + 360);
    if ((~v31 & 0x8010) == 0 && (v31 & 0xE) != 6)
    {
      return 0;
    }

    v32 = *(a1 + 346);
    if ((v32 & 0x8006) != 0x8002 || (v14 = 1, (v30 & 0x800E) != 0x8002) && (v31 & 0x8006) != 0x8002)
    {
      if ((v32 & 0x800E) != 0x800A || (v14 = 1, (v30 & 0x800E) != 0x8002) && (v31 & 0x800E) != 0x8002)
      {
        if ((v32 & 0xFFFF800F) != 0x8006 || (v30 & 0x800E) != 0x8002 || (v30 & 0xFFFF8003) == 0x8003 || (v14 = 1, SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "\xA3", 1)) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "\x96", 1) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "j\xA3", 2) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "j\x96", 2) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "nyi", 3) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "s", 1) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "os", 2) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "es", 2) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "as", 2) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "\x94s", 2) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "nk\x82nt", 5) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "onk\x82nt", 6) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "enk\x82nt", 6) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "ank\x82nt", 6) && SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "\x94nk\x82nt", 6) && (SLstrncmp((*(a1 + 192) + **(a1 + 304) + **(a1 + 312)), "i", 1) || (SLstrncmp((*(a1 + 192) + **(a1 + 304)), "nap", 3) || **(a1 + 312) != 3) && (SLstrncmp((*(a1 + 192) + **(a1 + 304)), "het", 3) || **(a1 + 312) != 3) && (SLstrncmp((*(a1 + 192) + **(a1 + 304)), "hav", 3) || **(a1 + 312) != 3) && (SLstrncmp((*(a1 + 192) + **(a1 + 304)), "\x82v", 2) || **(a1 + 312) != 2)))
        {
          v28 = *(a1 + 346);
          if ((v28 & 0x800E) == 0x8006)
          {
            v29 = *(a1 + 350);
            if ((v29 & 0x800E) == 0x8006)
            {
              if ((v28 & 0x8016) == 0x8006 && (v29 & 0x8016) == 0x8016)
              {
                return 1;
              }

LABEL_73:
              if ((v28 & 0x801E) != 0x8006 || (v29 & 0x801E) != 0x8006)
              {
                goto LABEL_127;
              }

LABEL_123:
              if (!SLstrncmp((*(a1 + 192) + **(a1 + 304)), "ezer", 4) || !SLstrncmp((*(a1 + 192) + **(a1 + 304)), "egyezer", 7) || !SLstrncmp((*(a1 + 192) + **(a1 + 304)), "ezr", 3) || !SLstrncmp((*(a1 + 192) + **(a1 + 304)), "egyezr", 6))
              {
                goto LABEL_127;
              }

              return 1;
            }
          }

          return 0;
        }
      }
    }
  }

  else
  {
    if (!v26)
    {
      v28 = *(a1 + 346);
      if ((v28 & 0x8006) == 0x8002 && (*(a1 + 350) & 0x800E) == 0x8002)
      {
        return 1;
      }

      if ((v28 & 0x800E) == 0x8006)
      {
        v29 = *(a1 + 350);
        if ((v29 & 0x800E) == 0x8006)
        {
          if ((v28 & 0x8016) == 0x8006 && (v29 & 0x8016) == 0x8016)
          {
            return 1;
          }

          goto LABEL_73;
        }
      }

      return 0;
    }

    v33 = *(a1 + 350);
    if ((v33 & 0xFFFF800F) == 0x8000)
    {
      return 0;
    }

    v35 = *(a1 + 346);
    if ((v33 & 0x800E) == 0x8002 && (v35 & 0x8006) == 0x8002)
    {
      return 1;
    }

    v14 = 0;
    if ((v33 & 0x800E) == 0x8006 && (v35 & 0x800E) == 0x8006)
    {
      if ((~v33 & 0x8016) == 0 && (v35 & 0x8016) == 0x8006)
      {
        return 1;
      }

      if ((v33 & 0x801E) != 0x8006 || (v35 & 0x801E) != 0x8006)
      {
LABEL_127:
        if (SLstrncmp(*(a1 + 192), "ezer", 4))
        {
          return SLstrncmp(*(a1 + 192), "egyezer", 7) == 0;
        }

        return 1;
      }

      goto LABEL_123;
    }
  }

  return v14;
}

uint64_t is_nominal_result(uint64_t a1, int a2)
{
  v2 = *(a1 + 34);
  if (a2 == 21 && (v2 & 0x80000000) == 0 && *(a1 + 22) && memchr("defrstu", *(a1 + 38), 8uLL))
  {
    return 1;
  }

  else
  {
    return v2 >> 15;
  }
}

uint64_t fill_term(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(result + 96);
  if (v2 >= 1)
  {
    v3 = (*(*(result + 336) + 2) << 8) | *(*(result + 336) + 1);
    v1 += v3 + v3 * (v2 - 1);
  }

  *(result + 368) = *v1;
  *(result + 370) = *(v1 + 1);
  *(result + 372) = *(v1 + 3);
  return result;
}

uint64_t match_stem_nont(uint64_t a1)
{
  v2 = *(a1 + 348);
  v3 = *(a1 + 362);
  if (*(a1 + 350) < 0)
  {
    v4 = *(a1 + 144);
  }

  else
  {
    v4 = *(a1 + 136);
  }

  result = mt_match(v4, v2, v3);
  if (result)
  {
    return ((*(a1 + 364) ^ *(a1 + 350)) & *(a1 + 366)) == 0;
  }

  return result;
}

unint64_t is_cwi_vowel_hun(int __c, int a2)
{
  result = memchr("a\xA0e\x82i\xA1o\xA2\x94\x93u\xA3\x81\x96A\x8FE\x90I\x8DO\x95\x99\xA7U\x97\x9A\x98", __c, 0x1DuLL);
  if (result)
  {
    return (__c & 0xFFFFFFDF) != 0x59 || memchr("glntGLNT", a2, 9uLL) == 0;
  }

  return result;
}

double cdict_init(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *a1 = a2;
  *(a1 + 8) = -1;
  *(a1 + 16) = a5;
  *(a1 + 20) = 0;
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void cdict_finish(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    do
    {
      v3 = dlk_next(v2);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    do
    {
      v5 = dlk_next(v4);
      free(v4);
      v4 = v5;
    }

    while (v5);
  }
}

uint64_t cdict_access(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = a2;
    if (*(a1 + 20) > a2)
    {
      v7 = *(a1 + 48);
      v8 = *(v7 + 20);
      if (v8 <= a2)
      {
        do
        {
          v5 -= v8;
          v7 = dlk_next(v7);
          v8 = *(v7 + 20);
        }

        while (v5 >= v8);
      }

      v9 = v7 + 16 * ((*(v7 + 16) + v5) % *(a1 + 28));
      *a3 = *(v9 + 24);
      *(a3 + 8) = *(v9 + 32);
      *(a3 + 16) = v7;
      *(a3 + 24) = v5;
      return 1;
    }
  }

  return result;
}

uint64_t cdict_find_first(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = a2[a3];
  a2[a3] = 0;
  v6 = *(a1 + 20);
  v7 = v6 - 1;
  if (v6 < 1)
  {
LABEL_8:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v9 = 0;
  memset(v14, 0, sizeof(v14));
  while (1)
  {
    v10 = (v7 + v9) >> 1;
    cdict_access(a1, v10, v14);
    v11 = _strcomp(a2, (*&v14[0] + SDWORD2(v14[0]) + 20), a1);
    if (v11 < 0)
    {
      v7 = v10 - 1;
      goto LABEL_7;
    }

    if (!v11)
    {
      break;
    }

    v9 = v10 + 1;
LABEL_7:
    if (v7 < v9)
    {
      goto LABEL_8;
    }
  }

  do
  {
    v13 = __OFSUB__(v10--, 1);
    if (v10 < 0 != v13)
    {
      result = 0;
      goto LABEL_9;
    }

    cdict_access(a1, v10, v14);
  }

  while (!_strcomp(a2, (*&v14[0] + SDWORD2(v14[0]) + 20), a1));
  result = (v10 + 1);
LABEL_9:
  a2[a3] = v5;
  return result;
}

uint64_t _strcomp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a3 + 256;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      break;
    }

    if ((*(a3 + 16) & 2) != 0)
    {
      v4 = *(v3 + v4);
      v6 = *(v3 + v6);
    }
  }

  while (v4 == v6);
  if (v4 >= v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v4 > v6)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t cdict_locate_first(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = a2[a3];
  a2[a3] = 0;
  v6 = *(a1 + 20);
  v7 = (v6 - 1);
  if (v6 >= 1)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    do
    {
      v10 = (v7 + v9) >> 1;
      cdict_access(a1, v10, v18);
      v11 = _strcomp(a2, (*&v18[0] + SDWORD2(v18[0]) + 20), a1);
      if (v11 < 0)
      {
        v7 = (v10 - 1);
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v16 = __OFSUB__(v10--, 1);
            if (v10 < 0 != v16)
            {
              goto LABEL_21;
            }

            cdict_access(a1, v10, v18);
            if (_strcomp(a2, (*&v18[0] + SDWORD2(v18[0]) + 20), a1))
            {
              v7 = (v10 + 1);
              goto LABEL_24;
            }
          }
        }

        v9 = v10 + 1;
      }
    }

    while (v7 >= v9);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      cdict_access(a1, v7, v18);
      v12 = *&v18[0] + SDWORD2(v18[0]);
      v13 = _strcommon(a2, v12 + 20, a1);
      if (!v13)
      {
LABEL_13:
        v7 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      v14 = v13;
      if (v13 == strlen((v12 + 20)))
      {
        break;
      }

      v15 = v7 <= 0;
      LODWORD(v7) = v7 - 1;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v16 = __OFSUB__(v7, 1);
      LODWORD(v7) = v7 - 1;
      if (v7 < 0 != v16)
      {
        break;
      }

      cdict_access(a1, v7, v18);
      if (_strcommon(a2, *&v18[0] + SDWORD2(v18[0]) + 20, a1) < v14)
      {
        v7 = (v7 + 1);
        goto LABEL_24;
      }
    }

LABEL_21:
    v7 = 0;
  }

LABEL_24:
  a2[a3] = v5;
  return v7;
}

uint64_t _strcommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = 0; ; ++result)
  {
    v5 = *(a1 + result);
    if (v5 != *(a2 + result))
    {
      break;
    }

    if (!*(a1 + result))
    {
      return result;
    }

LABEL_14:
    ;
  }

  if ((*(a3 + 16) & 2) != 0)
  {
    v6 = !*(a2 + result) || v5 == 0;
    if (!v6 && *(*a3 + 256 + *(a1 + result)) == *(*a3 + 256 + *(a2 + result)))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t cdict_delete(uint64_t a1, int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = a2;
    if (*(a1 + 20) > a2)
    {
      v5 = *(a1 + 48);
      for (i = *(v5 + 20); v4 >= i; i = *(v5 + 20))
      {
        v4 -= i;
        v5 = dlk_next(v5);
      }

      v7 = i - 1;
      if (v4 < i - 1)
      {
        v8 = v5 + 24;
        v9 = *(a1 + 28);
        v10 = v4 + *(v5 + 16);
        v11 = ~v4 + i;
        do
        {
          v12 = v10 % v9;
          v13 = v8 + 16 * (++v10 % v9);
          v14 = v8 + 16 * v12;
          *v14 = *v13;
          *(v14 + 8) = *(v13 + 8);
          --v11;
        }

        while (v11);
      }

      *(v5 + 20) = v7;
      *(a1 + 8) = 1;
      if (!v7)
      {
        dlk_unlink((a1 + 48), v5);
      }

      --*(a1 + 20);
      return 1;
    }
  }

  return result;
}

uint64_t cdict_add(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = *(a1 + 20);
  if (v3 < -1)
  {
    return 4294967285;
  }

  if (*(a1 + 24) < a3)
  {
    return 4294967286;
  }

  v40 = 0u;
  v41 = 0u;
  if (!v3)
  {
    v11 = 1;
    goto LABEL_32;
  }

  v8 = v3 - 1;
  cdict_access(a1, v3 - 1, &v40);
  v9 = _strcomp(a2, (v40 + SDWORD2(v40) + 20), a1);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = (*(a1 + 16) & 1) != 0 && v9 == 0;
    v11 = !v10;
    if (v10)
    {
      --v3;
    }

    goto LABEL_32;
  }

  if (v3 < 1)
  {
    v3 = 0;
    v11 = 1;
    goto LABEL_31;
  }

  v12 = 0;
  while (1)
  {
    v3 = (v8 + v12) >> 1;
    cdict_access(a1, v3, &v40);
    v13 = _strcomp(a2, (v40 + SDWORD2(v40) + 20), a1);
    if (v13 < 0)
    {
      v8 = v3 - 1;
      goto LABEL_23;
    }

    if (!v13)
    {
      break;
    }

    v12 = v3 + 1;
LABEL_23:
    if (v8 < v12)
    {
      v11 = 1;
      v3 = v12;
      goto LABEL_31;
    }
  }

  if (*(a1 + 16))
  {
    v11 = 0;
  }

  else
  {
    do
    {
      v14 = v3 + 1;
      if (v3 >= *(a1 + 20) - 1)
      {
        break;
      }

      cdict_access(a1, ++v3, &v40);
    }

    while (!_strcomp(a2, (v40 + SDWORD2(v40) + 20), a1));
    v11 = 1;
    v3 = v14;
  }

LABEL_31:
  *(a1 + 12) = 0;
LABEL_32:
  v15 = *(a1 + 32);
  if (!v15)
  {
LABEL_35:
    v16 = malloc_type_calloc(*(a1 + 24) + 23, 1uLL, 0x3E77E72DuLL);
    if (v16)
    {
      v15 = v16;
      v16[4] = 0;
      dlk_link((a1 + 32), v16, 0);
      goto LABEL_37;
    }

    return 0xFFFFFFFFLL;
  }

  while (*(v15 + 16) + a3 > *(a1 + 24))
  {
    v15 = dlk_next(v15);
    if (!v15)
    {
      goto LABEL_35;
    }
  }

LABEL_37:
  v17 = *(v15 + 16);
  memcpy((v15 + v17 + 20), a2, a3);
  *(v15 + 16) += a3;
  if (v3 != *(a1 + 20))
  {
    cdict_access(a1, v3, &v40);
    if (v11)
    {
      goto LABEL_42;
    }

    goto LABEL_60;
  }

  v18 = *(a1 + 56);
  *&v41 = v18;
  if (!v18)
  {
    v36 = malloc_type_calloc(16 * *(a1 + 28) + 24, 1uLL, 0x92FFD5C1uLL);
    *&v41 = v36;
    if (v36)
    {
      v36[2] = 0;
      dlk_link((a1 + 48), v36, 0);
      DWORD2(v41) = 0;
      if (v11)
      {
        goto LABEL_42;
      }

LABEL_60:
      v37 = v41 + 16 * ((*(v41 + 16) + DWORD2(v41)) % *(a1 + 28));
      *(v37 + 24) = v15;
      *(v37 + 32) = v17;
      --*(a1 + 20);
      goto LABEL_64;
    }

    return 0xFFFFFFFFLL;
  }

  DWORD2(v41) = *(v18 + 20);
  if ((v11 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_42:
  v19 = v41;
  v20 = DWORD2(v41);
  while (2)
  {
    v21 = *(v19 + 20);
    if (v20)
    {
      v22 = *(a1 + 28);
LABEL_45:
      v23 = v21 - v20;
      if (v21 > v20)
      {
        v24 = v20 + *(v19 + 16);
        do
        {
          v25 = v15;
          v26 = v17;
          v27 = v19 + 24 + 16 * (v24 % v22);
          v15 = *v27;
          LODWORD(v17) = *(v27 + 8);
          *v27 = v25;
          *(v27 + 8) = v26;
          ++v24;
          --v23;
        }

        while (v23);
        v20 = v21;
      }

      if (v20 != v22)
      {
        v35 = v19 + 16 * ((*(v19 + 16) + v20) % v22);
        *(v35 + 24) = v15;
        *(v35 + 32) = v17;
        goto LABEL_63;
      }

LABEL_54:
      if (dlk_next(v19))
      {
        v19 = dlk_next(v19);
        v20 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(16 * *(a1 + 28) + 24, 1uLL, 0xFE70F840uLL);
        if (!v34)
        {
          return 0xFFFFFFFFLL;
        }

        v19 = v34;
        v34[2] = 0;
        dlk_link((a1 + 48), v34, 0);
        v20 = 0;
      }

      continue;
    }

    break;
  }

  v22 = *(a1 + 28);
  if (!v21)
  {
    goto LABEL_45;
  }

  v28 = v19 + 24;
  v29 = *(v19 + 16);
  if (v21 == v22)
  {
    v30 = (v21 + v29 - 1) % v21;
    v31 = v28 + 16 * v30;
    v32 = *v31;
    v33 = *(v31 + 8);
    *v31 = v15;
    *(v31 + 8) = v17;
    *(v19 + 16) = v30;
    v15 = v32;
    LODWORD(v17) = v33;
    goto LABEL_54;
  }

  v38 = (v22 + v29 - 1) % v22;
  v39 = v28 + 16 * v38;
  *v39 = v15;
  *(v39 + 8) = v17;
  *(v19 + 16) = v38;
LABEL_63:
  *(v19 + 20) = v21 + 1;
LABEL_64:
  result = 0;
  *(a1 + 8) = 1;
  ++*(a1 + 20);
  return result;
}

uint64_t letter_stat(uint64_t result, _BYTE *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  v5 = *a2;
  if (*a2)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(result + 1024 + 8 * v5);
      v8 = a5;
      if ((v7 & 4) != 0)
      {
        goto LABEL_7;
      }

      if ((v7 & 2) != 0)
      {
        break;
      }

LABEL_8:
      v5 = a2[++v6];
      if (!v5)
      {
        return result;
      }
    }

    v8 = a4;
    if (!v6)
    {
      ++*a3;
      v8 = a4;
    }

LABEL_7:
    ++*v8;
    goto LABEL_8;
  }

  return result;
}

void *dlk_link(void *result, void *a2, uint64_t *a3)
{
  v3 = result + 1;
  if (a3)
  {
    v3 = a3;
  }

  v4 = *v3;
  *v3 = a2;
  if (*result == a3)
  {
    v5 = result;
  }

  else
  {
    v5 = (v4 + 8);
  }

  *v5 = a2;
  *a2 = v4;
  a2[1] = a3;
  return result;
}

void *dlk_unlink(void *a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a1 == a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = (*a2 + 8);
  }

  *v4 = v3;
  v6 = a1[1];
  result = a1 + 1;
  if (v6 == a2)
  {
    v3 = result;
  }

  *v3 = v2;
  return result;
}

uint64_t stpcopy(uint64_t a1, unsigned __int8 *a2)
{
  result = a1 - 1;
  do
  {
    v3 = *a2++;
    *++result = v3;
  }

  while (v3);
  return result;
}

_BYTE *stpncopy(_BYTE *result, char *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *a2;
    if (!*a2)
    {
      break;
    }

    ++a2;
    *result++ = v3;
  }

  *result = 0;
  return result;
}

uint64_t stricomp(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((v2 - 65) < 0x1A)
    {
      v2 |= 0x20u;
    }

    v3 = *a2;
    if ((v3 - 65) < 0x1A)
    {
      v3 |= 0x20u;
    }

    if (v2 != v3)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!v2)
    {
      return 0;
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t strnicomp(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a3 != 1; ; i = 1)
  {
    v4 = *a1;
    if ((v4 - 65) < 0x1A)
    {
      v4 |= 0x20u;
    }

    v5 = *a2;
    if ((v5 - 65) < 0x1A)
    {
      v5 |= 0x20u;
    }

    if (v4 != v5)
    {
      break;
    }

    ++a2;
    ++a1;
    if (i || v4 == 0)
    {
      return 0;
    }
  }

  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t freq_init(void *a1, uint64_t a2)
{
  he_language = get_he_language(a2);
  if (he_language == 14)
  {
    v5 = frequents_hun;
  }

  else
  {
    v5 = 0;
  }

  if (he_language == 14)
  {
    LODWORD(v6) = 22;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = get_he_language(a2);
  if (v7 == 21)
  {
    v8 = frequents_pol;
  }

  else
  {
    v8 = v5;
  }

  if (v7 == 21)
  {
    v6 = 127;
  }

  else
  {
    v6 = v6;
  }

  if (!v8)
  {
    return 4294966682;
  }

  v9 = 0;
  if (v6)
  {
    v10 = v6;
    v11 = v8;
    do
    {
      v12 = *v11++;
      v9 += strlen(v12) + 1;
      --v10;
    }

    while (v10);
  }

  v13 = malloc_type_calloc(v9 + 8 * v6 + 7, 1uLL, 0xAA29D11FuLL);
  *a1 = v13;
  if (!v13)
  {
    return 4294966695;
  }

  v14 = v13;
  *v13 = 0;
  v15 = v13 + 1;
  if (v6)
  {
    v16 = 0;
    v17 = a2 + 768;
    v18 = v13 + 1;
    v19 = &v15[2 * v6];
    do
    {
      v20 = v19;
      v21 = v8[v16];
      do
      {
        v22 = *v21++;
        v23 = *(v17 + v22);
        *v19++ = v23;
      }

      while (v23);
      v24 = 0;
      if (v16)
      {
        while (SLstrcmp(*&v15[2 * v24], v20) < 1)
        {
          if (v16 == ++v24)
          {
            LODWORD(v24) = v16;
            goto LABEL_28;
          }
        }

        v25 = v18;
        v26 = v16;
        v27 = v18;
        do
        {
          v28 = *--v27;
          *v25 = v28;
          --v26;
          v25 = v27;
        }

        while (v26 > v24);
      }

LABEL_28:
      *&v15[2 * v24] = v20;
      ++v16;
      ++v18;
    }

    while (v16 != v6);
  }

  result = 0;
  *v14 = v6;
  return result;
}

void freq_finish(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t is_frequent_word(int *a1, _BYTE *a2)
{
  v2 = a1 + 1;
  v3 = *a1 - 1;
  if (*a1 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = (v3 + v5) >> 1;
    v7 = SLstrcmp(a2, *&v2[2 * v6]);
    if (v7 < 0)
    {
      v3 = v6 - 1;
      goto LABEL_7;
    }

    if (!v7)
    {
      return 1;
    }

    v5 = v6 + 1;
LABEL_7:
    if (v3 < v5)
    {
      return 0;
    }
  }
}

BOOL _isTurkishVowel(int a1, BOOL *a2, BOOL *a3, _BYTE *a4)
{
  if ((a1 - 65) < 0x1A || (a1 - 192) < 0x17)
  {
    if ((a1 - 138) > 0x15 || ((1 << (a1 + 118)) & 0x200015) == 0)
    {
      if (a1 == 73)
      {
        LOBYTE(a1) = -3;
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (a1 <= 215)
  {
    if ((a1 - 138) <= 0x15 && ((1 << (a1 + 118)) & 0x200015) != 0)
    {
LABEL_14:
      if (a1 == 159)
      {
        LOBYTE(a1) = -1;
      }

      else
      {
        LOBYTE(a1) = a1 + 16;
      }
    }
  }

  else
  {
    if ((a1 - 216) < 5)
    {
      goto LABEL_11;
    }

    if (a1 == 221)
    {
      LOBYTE(a1) = 105;
      goto LABEL_17;
    }

    if (a1 == 222)
    {
LABEL_11:
      LOBYTE(a1) = a1 + 32;
    }
  }

LABEL_17:
  if (a1 == 97)
  {
    v5 = 0;
    result = 1;
    if (a2)
    {
LABEL_19:
      *a2 = v5 > 3;
    }
  }

  else
  {
    v5 = 0;
    do
    {
      if (v5 == 7)
      {
        return 0;
      }

      v7 = byte_1D2BFADD8[++v5];
    }

    while (v7 != a1);
    result = v5 - 1 < 7;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  if (a3)
  {
    *a3 = (v5 & 2) != 0;
  }

  if (a4)
  {
    *a4 = v5 & 1;
  }

  return result;
}

void sub_1D2BA67E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t hdr_init(uint64_t **a1, const char *a2)
{
  *a1 = 0;
  v4 = malloc_type_calloc(0x20uLL, 1uLL, 0x84EE9FEAuLL);
  *a1 = v4;
  if (!v4)
  {
    return 4294965195;
  }

  v5 = v4;
  v4[3] = 0;
  v6 = f_open(a2, 1);
  if (v6)
  {
    v7 = v6;
    if (fgetl_lsb1st(v6, v5) == -1 || fgetl_lsb1st(v7, v5 + 1) == -1 || fgetl_lsb1st(v7, v5 + 2) == -1)
    {
      return 4294965192;
    }

    v8 = malloc_type_calloc(24 * v5[2], 1uLL, 0xE344543EuLL);
    v5[3] = v8;
    if (v8)
    {
      if (*(v5 + 4) < 1)
      {
LABEL_13:
        f_close(v7);
        return 0;
      }

      v9 = v8;
      v10 = 0;
      while (fgetl_lsb1st(v7, v9) != -1 && fgetl_lsb1st(v7, v9 + 1) != -1 && fgetl_lsb1st(v7, v9 + 2) != -1)
      {
        ++v10;
        v9 += 3;
        if (v10 >= *(v5 + 4))
        {
          goto LABEL_13;
        }
      }

      return 4294965192;
    }

    return 4294965195;
  }

  return 4294965194;
}

uint64_t fgetl_lsb1st(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 8) & 0x10) != 0)
  {
    v4 = f_getc_txt(a1);
  }

  else
  {
    v4 = f_getc_bin(a1);
  }

  v5 = v4;
  if (v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (*(a1 + 8) & 0x10) != 0 ? f_getc_txt(a1) : f_getc_bin(a1);
  v7 = v6;
  if (v6 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = (*(a1 + 8) & 0x10) != 0 ? f_getc_txt(a1) : f_getc_bin(a1);
  v9 = v8;
  if (v8 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (*(a1 + 8) & 0x10) != 0 ? f_getc_txt(a1) : f_getc_bin(a1);
  v11 = v10;
  if (v10 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = (v9 << 16) | (v7 << 8) | (v11 << 24) | v5;
  return result;
}

void hdr_finish(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t hdr_find(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < 1)
  {
    return -1;
  }

  v2 = *(a1 + 16) & 0x7FFFFFFFLL;
  for (i = *(a1 + 24) + 8; *(i - 8) != a2; i += 24)
  {
    if (!--v2)
    {
      return -1;
    }
  }

  return *i;
}

uint64_t fgetw_lsb1st(uint64_t a1, _WORD *a2)
{
  if ((*(a1 + 8) & 0x10) != 0)
  {
    v4 = f_getc_txt(a1);
  }

  else
  {
    v4 = f_getc_bin(a1);
  }

  v5 = v4;
  if (v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (*(a1 + 8) & 0x10) != 0 ? f_getc_txt(a1) : f_getc_bin(a1);
  v7 = v6;
  if (v6 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v5 | (v7 << 8);
  return result;
}

uint64_t f_open(const char *a1, int a2)
{
  v4 = malloc_type_calloc(0x50uLL, 1uLL, 0x73408B78uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = v4;
    v4[12] = -1;
    *(v4 + 3) = 2048;
    *(v4 + 4) = 0;
    v6 = malloc_type_calloc(0x800uLL, 1uLL, 0x13684B05uLL);
    *(v5 + 32) = v6;
    if (!v6)
    {
      goto LABEL_15;
    }

    *(v5 + 40) = v6;
    if ((a2 & 8) != 0)
    {
      if ((a2 & 3) == 0)
      {
        a2 |= 3u;
      }

      v8 = open(a1, 1538, 511);
    }

    else
    {
      v7 = (a2 & 3) == 3 ? 2 : (a2 << 30 >> 31) & 0x202;
      v8 = open(a1, v7, 511);
    }

    *(v5 + 48) = v8;
    if (v8 == -1)
    {
LABEL_15:
      f_close(v5);
      return 0;
    }

    else
    {
      v9 = 0;
      *(v5 + 16) = 0;
      *(v5 + 8) = a2;
      *(v5 + 12) = 0;
      *(v5 + 72) = 0;
      if ((a2 & 4) != 0)
      {
        v9 = lseek(v8, 0, 2);
      }

      *(v5 + 56) = v9;
      *(v5 + 64) = v9;
    }
  }

  return v5;
}

ssize_t f_close(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = f_update(a1);
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 48);
  if (v4 != -1)
  {
    close(v4);
  }

  free(*a1);
  return v2;
}

ssize_t f_update(uint64_t a1)
{
  if ((*(a1 + 12) & 2) == 0 || *(a1 + 72) < 1)
  {
LABEL_6:
    result = 0;
    *(a1 + 12) = 0;
    *(a1 + 72) = 0;
    return result;
  }

  if (lseek(*(a1 + 48), *(a1 + 64), 0) != -1)
  {
    result = write(*(a1 + 48), *(a1 + 40), *(a1 + 72));
    if (result == -1)
    {
      *(a1 + 20) = 1;
      return result;
    }

    goto LABEL_6;
  }

  *(a1 + 20) = 1;
  return 0xFFFFFFFFLL;
}

uint64_t f_seek(uint64_t a1, uint64_t a2, int a3)
{
  if (f_update(a1) == -1)
  {
    return -1;
  }

  if (a3 == 2)
  {
    result = lseek(*(a1 + 48), 0, 2) + a2;
  }

  else if (a3 == 1)
  {
    result = *(a1 + 56) + a2;
  }

  else if (a3)
  {
    result = 0;
  }

  else
  {
    result = a2;
  }

  *(a1 + 56) = result;
  *(a1 + 64) = result;
  return result;
}

ssize_t f_getc_bin(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    result = f_update(a1);
    if (result == -1)
    {
      return result;
    }
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    goto LABEL_12;
  }

  *(a1 + 12) = 1;
LABEL_6:
  v4 = *(a1 + 56);
  v5 = v4 - *(a1 + 64);
  if (v5 < *(a1 + 72))
  {
LABEL_7:
    *(a1 + 56) = v4 + 1;
    return *(*(a1 + 40) + v5);
  }

  if (lseek(*(a1 + 48), v4, 0) != -1)
  {
    result = read(*(a1 + 48), *(a1 + 40), *(a1 + 24));
    if (result == -1)
    {
      *(a1 + 20) = 1;
      return result;
    }

    if (result)
    {
      LODWORD(v5) = 0;
      v4 = *(a1 + 56);
      *(a1 + 64) = v4;
      *(a1 + 72) = result;
      goto LABEL_7;
    }

    *(a1 + 16) = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_12:
  *(a1 + 20) = 1;
  return 0xFFFFFFFFLL;
}

ssize_t f_putc_bin(char a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    result = f_update(a2);
    if (result == -1)
    {
      return result;
    }
  }

  if ((*(a2 + 8) & 2) == 0)
  {
    goto LABEL_10;
  }

  *(a2 + 12) = 2;
LABEL_6:
  v6 = *(a2 + 64);
  v7 = *(a2 + 56) - v6;
  if (v7 >= *(a2 + 24))
  {
    if (lseek(*(a2 + 48), v6, 0) != -1)
    {
      result = write(*(a2 + 48), *(a2 + 40), *(a2 + 72));
      if (result == -1)
      {
        *(a2 + 20) = 1;
        return result;
      }

      LODWORD(v7) = 0;
      *(a2 + 64) = *(a2 + 56);
      *(a2 + 72) = 0;
      goto LABEL_12;
    }

LABEL_10:
    *(a2 + 20) = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_12:
  result = 0;
  *(*(a2 + 40) + v7) = a1;
  ++*(a2 + 56);
  ++*(a2 + 72);
  return result;
}

uint64_t f_gets(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  v6 = (v5 - 1);
  if ((*(a3 + 8) & 0x10) != 0)
  {
    v7 = 0;
    while (v6 != v7)
    {
      v10 = f_getc_bin(a3);
      if (v10 == -1)
      {
LABEL_15:
        result = 0;
        if (v7 && *(a3 + 16))
        {
          LODWORD(v6) = v7;
          break;
        }

        return result;
      }

      v9 = v7 + 1;
      *(a1 + v7++) = v10;
      if (v10 == 10)
      {
LABEL_14:
        LODWORD(v6) = v9;
        break;
      }
    }
  }

  else
  {
    v7 = 0;
    while (v6 != v7)
    {
      v8 = f_getc_bin(a3);
      if (v8 == -1)
      {
        goto LABEL_15;
      }

      v9 = v7 + 1;
      *(a1 + v7++) = v8;
      if (v8 == 10)
      {
        goto LABEL_14;
      }
    }
  }

  *(a1 + v6) = 0;
  return a1;
}

ssize_t f_puts(_BYTE *a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0x10) != 0)
  {
    do
    {
      result = *a1;
      if (!*a1)
      {
        break;
      }

      ++a1;
      result = f_putc_bin(result, a2);
    }

    while (result != -1);
  }

  else
  {
    do
    {
      result = *a1;
      if (!*a1)
      {
        break;
      }

      ++a1;
      result = f_putc_bin(result, a2);
    }

    while (result != -1);
  }

  return result;
}

uint64_t f_read(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 8) & 0x10) == 0)
  {
    if (a3)
    {
      v8 = 0;
      while (!a2)
      {
LABEL_8:
        if (++v8 == a3)
        {
          return a3;
        }
      }

      v9 = a2;
      while (1)
      {
        v10 = f_getc_bin(a4);
        if (v10 == -1)
        {
          return v8;
        }

        *a1++ = v10;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  while (!a2)
  {
LABEL_16:
    if (++v8 == a3)
    {
      return a3;
    }
  }

  v11 = a2;
  while (1)
  {
    v12 = f_getc_bin(a4);
    if (v12 == -1)
    {
      return v8;
    }

    *a1++ = v12;
    if (!--v11)
    {
      goto LABEL_16;
    }
  }
}

uint64_t f_write(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 8) & 0x10) == 0)
  {
    if (a3)
    {
      v8 = 0;
      while (!a2)
      {
LABEL_8:
        if (++v8 == a3)
        {
          return a3;
        }
      }

      v9 = a2;
      while (f_putc_bin(*a1, a4) != -1)
      {
        ++a1;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }

      return v8;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  while (!a2)
  {
LABEL_16:
    if (++v8 == a3)
    {
      return a3;
    }
  }

  v10 = a2;
  while (f_putc_bin(*a1, a4) != -1)
  {
    ++a1;
    if (!--v10)
    {
      goto LABEL_16;
    }
  }

  return v8;
}

uint64_t hyphen_init(void *a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = malloc_type_calloc(0x558uLL, 1uLL, 0x732DA6ECuLL);
  *a1 = v10;
  if (!v10)
  {
    result = 4294966395;
    goto LABEL_100;
  }

  v11 = v10;
  v10[2] = a2;
  *(v10 + 2) = a5;
  cdict_init((v10 + 131), a2, 1024, 256, 3);
  cdict_init((v11 + 155), a2, 1024, 256, 3);
  cdict_init((v11 + 139), a2, 1024, 256, 3);
  cdict_init((v11 + 147), a2, 1024, 256, 3);
  if (a4)
  {
    cdict_init((v11 + 163), a2, 1024, 256, 1);
  }

  if (!a3)
  {
    *(v11 + 535) = 0;
LABEL_63:
    if (!a4)
    {
      goto LABEL_70;
    }

LABEL_64:
    __strcpy_chk();
    if (a5)
    {
      goto LABEL_71;
    }

LABEL_87:
    result = 0;
    goto LABEL_100;
  }

  __strcpy_chk();
  if (!*(v11 + 535))
  {
    goto LABEL_63;
  }

  *(v11 + 313) = 1;
  *(v11 + 297) = 1;
  *(v11 + 281) = 1;
  *(v11 + 265) = 1;
  *v11 = 0;
  v12 = f_open(a3, 1);
  if (!v12)
  {
    result = 4294965694;
    goto LABEL_100;
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    v15 = f_getc_bin(v13);
    if (v15 == -1)
    {
      break;
    }

    if (v15 != 10)
    {
      v61[v14++ - 1] = v15;
      if (v14 != 129)
      {
        continue;
      }
    }

    v61[v14 - 1] = 0;
    if (v15 != 10)
    {
      f_close(v13);
      result = 4294965689;
      goto LABEL_100;
    }

LABEL_16:
    v16 = __s;
    if (!__s)
    {
      v21 = 0;
LABEL_26:
      v22 = 0;
      v23 = *v11;
      if (*v11 > 2)
      {
        if (v23 == 3)
        {
          v32 = (v11 + 139);
        }

        else
        {
          if (v23 != 4)
          {
            goto LABEL_59;
          }

          v32 = (v11 + 147);
        }

        v22 = add_hypdict(v32, &__s);
        goto LABEL_59;
      }

      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_59;
        }

        v24 = strlen(&__s);
        v25 = v24;
        if (v24)
        {
          if (v24 >= 1)
          {
            v26 = v24 & 0x7FFFFFFF;
            p_s = &__s;
            do
            {
              v28 = *p_s++;
              v62[v26-- + 129] = v28;
            }

            while (v26);
          }

          __src[v24] = 0;
          v29 = (v11 + 155);
          v30 = __src;
          v31 = v25 + 1;
LABEL_54:
          v45 = cdict_add(v29, v30, v31);
          v22 = v45 & (v45 >> 31);
          goto LABEL_59;
        }

LABEL_52:
        v22 = 0;
        goto LABEL_59;
      }

      if (!v21)
      {
        goto LABEL_52;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      for (i = v61; ; ++i)
      {
        if (v21 > 123)
        {
          if (v21 == 124)
          {
            v39 = v35 + 48;
            v40 = &__src[v34];
            *v40 = v39;
            v34 += 2;
            v40[1] = 124;
            goto LABEL_44;
          }
        }

        else
        {
          if (v21 == 43)
          {
            v37 = v35 + 48;
            v38 = &__src[v34];
            *v38 = v37;
            v34 += 2;
            v38[1] = 43;
LABEL_44:
            v35 = 0;
            goto LABEL_48;
          }

          if (!v21 || v21 == 42)
          {
            v43 = v33 + 1;
            v62[v33] = 0;
            v44 = v34 + v43;
            __src[v34] = 0;
            strcpy(&v62[v43], __src);
            v29 = (v11 + 131);
            v30 = v62;
            v31 = v44 + 1;
            goto LABEL_54;
          }
        }

        v62[v33++] = v21;
        ++v35;
LABEL_48:
        v41 = *i;
        v21 = v41;
      }
    }

    v17 = v11[2] + 768;
    v18 = &__s;
    do
    {
      v19 = v16 ^ 7;
      *v18 = v19;
      *v18 = *(v17 + v19);
      v20 = *++v18;
      v16 = v20;
    }

    while (v20);
    v21 = __s;
    if (__s != 35)
    {
      goto LABEL_26;
    }

    if (!stricomp(v61, "SEG"))
    {
      v22 = 0;
      v42 = 1;
LABEL_58:
      *v11 = v42;
      goto LABEL_59;
    }

    if (!stricomp(v61, "FIN"))
    {
      v22 = 0;
      v42 = 2;
      goto LABEL_58;
    }

    if (!stricomp(v61, "HYP"))
    {
      v22 = 0;
      v42 = 3;
      goto LABEL_58;
    }

    v22 = 0;
    if (!stricomp(v61, "AMB"))
    {
      v42 = 4;
      goto LABEL_58;
    }

    *v11 = 0;
LABEL_59:
    v14 = 0;
    if (v22 < 0)
    {
      f_close(v13);
      result = (v22 - 1600);
      goto LABEL_100;
    }
  }

  if (v14 && *(v13 + 16))
  {
    v61[v14 - 1] = 0;
    goto LABEL_16;
  }

  v47 = *(v13 + 20);
  f_close(v13);
  if (v47)
  {
    result = 4294965692;
    goto LABEL_100;
  }

  *(v11 + 312) = 0;
  *(v11 + 296) = 0;
  *(v11 + 280) = 0;
  *(v11 + 264) = 0;
  if (a4)
  {
    goto LABEL_64;
  }

LABEL_70:
  *(v11 + 24) = 0;
  if ((a5 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_71:
  if (!*(v11 + 24))
  {
    goto LABEL_87;
  }

  v48 = f_open(v11 + 24, 17);
  if (v48)
  {
    v49 = v48;
    while (f_gets(__src, 130, v49))
    {
      v50 = strchr(__src, 10);
      if (!v50)
      {
        v51 = strlen(__src);
        if (v51 != 129)
        {
          v50 = &__src[v51];
          goto LABEL_78;
        }

        v56 = -7;
        goto LABEL_93;
      }

      do
      {
        *v50 = 0;
LABEL_78:
        if (v50 <= __src)
        {
          break;
        }

        v53 = *--v50;
        v52 = v53;
      }

      while (v53 == 32 || v52 == 9);
      v55 = add_userhypdict((v11 + 163), __src);
      if (v55 < 0)
      {
        v56 = v55;
LABEL_93:
        f_close(v49);
        goto LABEL_94;
      }
    }

    v57 = *(v49 + 20);
    f_close(v49);
    if (v57)
    {
      v56 = -4;
      goto LABEL_94;
    }

    result = 0;
    *(v11 + 328) = 0;
  }

  else
  {
    v56 = -2;
LABEL_94:
    if (v56 != -2 || (a5 & 4) == 0)
    {
      result = (v56 - 1500);
    }

    else
    {
      result = 0;
    }
  }

LABEL_100:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hyphen_finish(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 8) & 2) != 0 && *(a1 + 24) && *(a1 + 1312) == 1)
    {
      __strcpy_chk();
      __s.__pn_.__r_.__value_.__s.__data_[strlen(&__s) - 1] = 125;
      __strcpy_chk();
      __to.__pn_.__r_.__value_.__s.__data_[strlen(&__to) - 1] = 123;
      v2 = f_open(&__s, 26);
      if (v2)
      {
        v3 = v2;
        if (get_userhypdict(a1 + 1304, 0, v19))
        {
          v4 = 1;
          do
          {
            if (f_puts(v19, v3) == -1)
            {
              break;
            }

            v5 = (*(v3 + 8) & 0x10) != 0 ? f_putc_txt(10, v3) : f_putc_bin(10, v3);
            if (v5 == -1)
            {
              break;
            }
          }

          while (get_userhypdict(a1 + 1304, v4++, v19));
        }

        v7 = *(v3 + 20);
        f_close(v3);
        if (v7)
        {
          v8 = 4294965791;
        }

        else
        {
          v11 = f_open(&__to, 1);
          if (v11 && (f_close(v11), unlink(&__to) == -1))
          {
            v8 = 4294965784;
          }

          else
          {
            v12 = f_open((a1 + 24), 1);
            if (v12 && (f_close(v12), rename((a1 + 24), &__to, v14), v15 == -1) || (rename(&__s, (a1 + 24), v13), v16 == -1))
            {
              v8 = 4294965783;
            }

            else
            {
              unlink(&__to);
              v8 = 0;
              *(a1 + 1312) = 0;
            }
          }
        }
      }

      else
      {
        v8 = 4294965793;
      }
    }

    else
    {
      v8 = 1;
    }

    cdict_finish(a1 + 1048);
    cdict_finish(a1 + 1240);
    cdict_finish(a1 + 1112);
    cdict_finish(a1 + 1176);
    if (*(a1 + 24))
    {
      cdict_finish(a1 + 1304);
    }

    free(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL hyphen_usr(uint64_t a1, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(v28, 0, 32);
  v4 = *(a1 + 16);
  v5 = a2[2];
  v6 = *a2;
  v7 = *(a2 + 6);
  __strncpy_chk();
  v8 = *(a2 + 6);
  *(&v28[2] + v8 + 7) = 0;
  if (v8 >= 1 && v5 != 0)
  {
    v10 = 0;
    do
    {
      *(v5 + v10++) = 32;
    }

    while (v10 < *(a2 + 6));
  }

  first = cdict_find_first(a1 + 1304, &v28[2] + *(a2 + 8) + 7, *(a2 + 9) - *(a2 + 8));
  if (first < 0)
  {
    v12 = *(a2 + 11);
    v13 = *(a2 + 12);
    if (v13 <= v12 || *(a2 + 13))
    {
      result = 0;
      if (v13 != 1 || v12 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v24 = *(a2 + 8);
    v25 = *(a2 + 9);
    if (v25 > v24)
    {
      v26 = *(a2 + 8);
      do
      {
        if (v26 > v24)
        {
          *(&v28[2] + v26 + 7) = *(v4 + 256 + *(&v28[2] + v26 + 7));
        }

        ++v26;
      }

      while (v25 != v26);
    }

    v27 = cdict_find_first(a1 + 1304, &v28[2] + v24 + 7, v25 - v24);
    first = v27;
    if (*(a2 + 11) && v27 < 0)
    {
LABEL_12:
      v15 = *(a2 + 9);
      v16 = *(a2 + 8);
      *(&v28[2] + v16 + 7) = *(v4 + *(&v28[2] + v16 + 7) + 256);
      first = cdict_find_first(a1 + 1304, &v28[2] + v16 + 7, v15 - v16);
    }
  }

  result = first >= 0;
  if (v5 && (first & 0x80000000) == 0)
  {
    cdict_access(a1 + 1304, first, v28);
    v17 = (*&v28[0] + SDWORD2(v28[0]) + 20);
    v18 = strlen(v17);
    v19 = v17[v18 + 1];
    if (v17[v18 + 1])
    {
      if (v19 == 42)
      {
        result = 0;
        goto LABEL_23;
      }

      v20 = *(a2 + 8);
      v21 = (v18 + SDWORD2(v28[0]) + *&v28[0] + 23);
      do
      {
        v20 = v20 + v19 - 48;
        if ((*(v4 + 1024 + 8 * *(&v28[2] + v20 + 7)) & 0x1000) == 0)
        {
          *(v5 + v20) = *(v21 - 1);
        }

        v22 = *v21;
        v21 += 2;
        LOBYTE(v19) = v22;
      }

      while (v22);
    }

    result = 1;
  }

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hyphen_ate(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v165 = *MEMORY[0x1E69E9840];
  memset(v163, 0, sizeof(v163));
  v4 = *(a1 + 16);
  v6 = a2[1];
  v5 = a2[2];
  *(v6 + *(a2 + 9)) = 124;
  *(v6 + *(a2 + 8)) = 124;
  v7 = *a2;
  v8 = v2[6];
  __strncpy_chk();
  v9 = v5;
  v10 = v2[6];
  v164[v10 + 65] = 0;
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      *(v5 + v11++) = 32;
    }

    while (v11 < v2[6]);
  }

  v12 = v4 + 1024;
  v14 = v2[8];
  v13 = v2[9];
  v156 = v4;
  v157 = v2;
  v162 = v9;
  if (v14 < v13)
  {
    v15 = v2[8];
    do
    {
      if (v14 == v15)
      {
        first = cdict_locate_first(a1 + 1048, &v164[v14 + 65], v13 - v14);
        if ((first & 0x80000000) == 0)
        {
          cdict_access(a1 + 1048, first, v163);
          v17 = *&v163[0];
          v18 = SDWORD2(v163[0]);
          v19 = (*&v163[0] + SDWORD2(v163[0]) + 20);
          v20 = strlen(v19);
          if (v20 >= 2)
          {
            memset((v6 + 1 + v14), 32, (v20 - 2) + 1);
          }

          v21 = v20 + 1;
          v22 = v19[v21];
          if (v22)
          {
            v23 = (v17 + v18 + v21 + 22);
            v24 = v14;
            do
            {
              v24 = v24 + v22 - 48;
              *(v6 + v24) = *(v23 - 1);
              v25 = *v23;
              v23 += 2;
              v22 = v25;
            }

            while (v25);
          }

          LODWORD(v14) = v14 + v20 - 1;
          v2 = v157;
        }

        v9 = v162;
      }

      v26 = v14;
      v27 = *(v12 + 8 * v164[v14 + 65]);
      v28 = v14 + 1;
      LODWORD(v14) = v14 + 1;
      if (v27)
      {
        if (*(v6 + v28) == 124)
        {
          v15 = v14;
        }
      }

      else
      {
        *(v6 + v28) = 124;
        *(v6 + v26) = 124;
        v15 = v14;
      }

      v13 = v2[9];
    }

    while (v14 < v13);
    v14 = v2[8];
  }

  if (v13 > v14)
  {
    v29 = 0;
    v30 = v13;
    while (1)
    {
      v164[v29] = v164[v30 + 64];
      v31 = *(v6 - 1 + v30);
      if (v31 == 43)
      {
        break;
      }

      v32 = v29 + 1;
      if (v31 == 124)
      {
        v164[v32] = 0;
        v33 = cdict_locate_first(a1 + 1240, v164, v32);
        if (v33 < 0)
        {
          break;
        }

        cdict_access(a1 + 1240, v33, v163);
        v34 = strlen((*&v163[0] + SDWORD2(v163[0]) + 20));
        LODWORD(v32) = 0;
        *(v6 + v30 + v29 - v34) = 124;
      }

LABEL_28:
      --v30;
      v29 = v32;
      if (v30 <= v2[8])
      {
        v13 = v2[9];
        v14 = v2[8];
        v4 = v156;
        v9 = v162;
        goto LABEL_30;
      }
    }

    LODWORD(v32) = 0;
    goto LABEL_28;
  }

LABEL_30:
  if (v14 < v13)
  {
    v35 = 0;
    v36 = a1 + 1176;
    v153 = v6 - 1;
    v154 = a1 + 1112;
    v37 = v6 + 1;
    v150 = v4 + 256;
    v151 = v4 + 512;
    v152 = v9 - 1;
    v155 = v9 + 1;
    v38 = v14;
    v39 = v14;
    v161 = v36;
    do
    {
      if (v14 != v38)
      {
        v65 = v39;
        goto LABEL_84;
      }

      v158 = v38;
      v40 = *(v12 + 8 * v164[v14 + 65]);
      v41 = v2[8];
      v42 = v14 <= v41 || (*(v12 + 8 * v164[v14 + 65]) & 1) == 0;
      if (!v42 && (*(v12 + 8 * v164[v14 + 64]) & 1) != 0 && v14 > v41 + 1 && v14 < v13 - 1)
      {
        *(v9 + v14) = 45;
        v13 = v2[9];
      }

      v43 = cdict_find_first(v36, &v164[v14 + 65], v13 - v14);
      if (v43 < 0)
      {
        v36 = v154;
        v43 = cdict_locate_first(v154, &v164[v14 + 65], v2[9] - v14);
        if (v43 < 0)
        {
          v35 = (v40 >> 3) & 1;
          v65 = v14 + v35;
          v9 = v162;
          v38 = v38;
          goto LABEL_84;
        }
      }

      cdict_access(v36, v43, v163);
      v44 = *&v163[0];
      v45 = SDWORD2(v163[0]);
      v46 = strlen((*&v163[0] + SDWORD2(v163[0]) + 20));
      v47 = v46;
      v48 = (v46 << 32) + 0x100000000;
      v49 = (*&v163[0] + SDWORD2(v163[0]) + 20 + (v48 >> 32));
      v50 = *v49 == 42;
      if (v46 >= 2)
      {
        memset((v155 + v14), 32, (v46 - 2) + 1);
      }

      v51 = v49[v50];
      v4 = v156;
      v9 = v162;
      if (v51)
      {
        v52 = (v44 + v45 + (v48 >> 32) + v50 + 22);
        v53 = v14;
        do
        {
          v53 = v53 + v51 - 48;
          if ((*(v12 + 8 * v164[v53 + 65]) & 0x1000) == 0)
          {
            *(v162 + v53) = *(v52 - 1);
          }

          v54 = *v52;
          v52 += 2;
          LOBYTE(v51) = v54;
        }

        while (v54);
      }

      LODWORD(v55) = v14 + v47;
      v2 = v157;
      v37 = v6 + 1;
      if (*(v156 + 3524) == 21)
      {
        v56 = v55 - 1;
        v57 = (v56 << 32) - 0x100000000;
        v58 = 1;
        v59 = v14 + v47 - 2;
        v60 = v56;
        do
        {
          v61 = v58;
          v62 = *(v6 + 1 + v60++);
          ++v59;
          v57 += 0x100000000;
          ++v58;
        }

        while (v62 != 124);
        v63 = v57 >> 32;
        if ((*(v12 + 8 * v164[v63 + 65]) & 0x10) != 0)
        {
          if (v14 < v59)
          {
            v59 = v14;
          }

          while (v56 + v61 - 1 > v14)
          {
            if (*(v153 + v56 + v61) == 124 || *(v152 + v56 + v61) != 32)
            {
              v59 = v14 + v47 - 2 + v61;
              break;
            }

            v64 = *(v12 + 8 * v164[v56 + 63 + v61--]);
            if ((v64 & 0x10) == 0)
            {
              v59 = v56 + v61;
              break;
            }
          }

          v63 = v59;
        }

        if (*(v162 + v63) != 32 && *(v6 + v63) != 124)
        {
          *(v162 + v63) = 32;
        }
      }

      v66 = 0;
      v67 = v14 + v47;
      if (v14 >= v55)
      {
        v55 = v55;
      }

      else
      {
        v55 = v14;
      }

      while (v67 + v66 > v14)
      {
        if (*(v6 + v67 + v66) == 124 || *(v162 + v67 + v66) != 32)
        {
          v14 = (v14 + v47 + v66);
          goto LABEL_78;
        }

        v68 = *(v12 + 8 * v164[v67 + 64 + v66--]);
        if ((v68 & 0x10) == 0)
        {
          v14 = (v14 + v47 + v66 + 1);
          goto LABEL_78;
        }
      }

      v14 = v55;
LABEL_78:
      v38 = v158;
      if (*(v6 + v14) == 124)
      {
        if (v14 < v157[9])
        {
          *(v162 + v14) = 45;
        }
      }

      else if (*(v162 + v14) == 32)
      {
        v35 = 1;
        v65 = v14;
        goto LABEL_84;
      }

      v35 = 0;
      v65 = ((*(v12 + 8 * v164[v14 + 65]) >> 3) & 1) + v14;
LABEL_84:
      if (v14 <= v38)
      {
        goto LABEL_113;
      }

      v69 = *(v4 + 3524);
      if (v69 == 14)
      {
        v70 = v38;
        v71 = v14;
        v72 = v164[v14 + 65];
        v73 = *(v12 + 8 * v72);
        if ((v73 & 8) == 0)
        {
          goto LABEL_306;
        }

        v74 = v14 - 1;
        if ((*(v12 + 8 * v164[v74 + 65]) & 8) == 0)
        {
          goto LABEL_306;
        }

        v75 = v2[7];
        if ((v75 & 0x10) != 0)
        {
          goto LABEL_306;
        }

        if ((v75 & 0x20) != 0)
        {
          if (*(v6 + v14 + 1) == 124)
          {
            goto LABEL_306;
          }

          v79 = v164[v14 + 66];
          if ((*(v12 + 8 * v79) & 0x10) == 0)
          {
            goto LABEL_306;
          }

          v80 = v14 + 2;
          if (*(v6 + v80) == 124)
          {
            goto LABEL_306;
          }

          v145 = v164[v80 + 65];
          v143 = v164[v14 + 66];
          v159 = v35;
          v147 = v2[7];
          v81 = is_hun_digraph(v79, v164[v80 + 65]);
          LOBYTE(v75) = v147;
          v74 = v14 - 1;
          v35 = v159;
          v9 = v162;
          if (!v81 || *(v6 + v14 + 3) == 124)
          {
            goto LABEL_102;
          }

          v82 = v143;
          v144 = v164[v14 + 68];
          v83 = is_hun_trigraph(v82, v145, v144);
          LOBYTE(v75) = v147;
          v74 = v14 - 1;
          v35 = v159;
          v9 = v162;
          if ((!v83 || (*(v12 + 8 * v164[v14 + 69]) & 0x10) == 0) && (*(v12 + 8 * v144) & 0x10) == 0)
          {
LABEL_102:
            if ((*(v12 + 8 * v145) & 0x10) == 0)
            {
LABEL_306:
              if (!v35 || (v73 & 0x10) == 0 || (v77 = v14 + 1, v84 = *(v6 + v77), v84 == 124))
              {
LABEL_106:
                v38 = v70;
                goto LABEL_107;
              }

              v91 = v164[v77 + 65];
              if ((*(v12 + 8 * v91) & 8) == 0)
              {
                if (v84 == 43)
                {
                  goto LABEL_106;
                }

                v160 = v35;
                v149 = v72;
                if (is_hun_digraph(v72, v91) && *(v6 + v14 + 2) != 124 && (*(v12 + 8 * v164[v14 + 67]) & 8) != 0)
                {
                  LODWORD(v78) = v14 + 1;
                  v9 = v162;
                  v38 = v70;
                  v35 = v160;
                  if ((v2[7] & 0x40) == 0 || *(v153 + v14) != 124)
                  {
                    v117 = v164[v14 + 64];
                    if ((v149 - 65) >= 0x1A)
                    {
                      v118 = v149;
                    }

                    else
                    {
                      v118 = v149 | 0x20;
                    }

                    if ((v117 - 65) < 0x1A)
                    {
                      LOBYTE(v117) = v117 | 0x20;
                    }

                    v4 = v156;
                    if (v118 != v117 || (v119 = *(v6 + v14), v119 == 124) || v119 == 43)
                    {
                      v76 = 45;
                    }

                    else
                    {
                      v76 = 61;
                    }

                    goto LABEL_175;
                  }

                  v71 = v14 + 1;
                  LODWORD(v14) = v14 + 1;
                }

                else
                {
                  v78 = v14 + 2;
                  v92 = *(v6 + v78);
                  v9 = v162;
                  v38 = v70;
                  v35 = v160;
                  if (v92 != 43)
                  {
                    v4 = v156;
                    if (v92 != 124)
                    {
                      v93 = v164[v77 + 65];
                      v94 = v164[v78 + 65];
                      if ((v149 - 65) >= 0x1A)
                      {
                        v95 = v149;
                      }

                      else
                      {
                        v95 = v149 | 0x20;
                      }

                      if ((v93 - 65) < 0x1A)
                      {
                        v93 |= 0x20u;
                      }

                      if ((v94 - 65) < 0x1A)
                      {
                        v94 |= 0x20u;
                      }

                      if (v95 == 100 && v93 == 122 && v94 == 115 && *(v6 + v14 + 3) != 124 && (*(v12 + 8 * v164[v14 + 68]) & 8) != 0)
                      {
                        if ((v2[7] & 0x40) != 0 && *(v153 + v14) == 124)
                        {
                          v71 = v14 + 2;
                          goto LABEL_176;
                        }

                        v136 = v164[v14 + 64];
                        if ((v136 - 65) < 0x1A)
                        {
                          v136 |= 0x20u;
                        }

                        if (v136 != 100 || (v137 = *(v6 + v14), v137 == 124) || v137 == 43)
                        {
                          v76 = 45;
                        }

                        else
                        {
                          v76 = 35;
                        }

                        v77 = v14 + 2;
LABEL_175:
                        *(v9 + v14) = v76;
                        v71 = v77;
LABEL_176:
                        LODWORD(v14) = v78;
                      }
                    }

                    goto LABEL_108;
                  }
                }

LABEL_107:
                v4 = v156;
                goto LABEL_108;
              }

              if ((v2[7] & 0x40) != 0)
              {
                v38 = v70;
                if (*(v153 + v14) == 124)
                {
                  goto LABEL_107;
                }

                v76 = 45;
                v77 = v14;
                LODWORD(v78) = v14;
              }

              else
              {
LABEL_165:
                v76 = 45;
                v77 = v14;
                LODWORD(v78) = v14;
                v38 = v70;
              }

              v4 = v156;
              goto LABEL_175;
            }
          }
        }

        if ((v75 & 0x40) != 0)
        {
          v38 = v70;
          if (*(v6 + v74) == 124)
          {
            goto LABEL_107;
          }

          v4 = v156;
          if (*(v37 + v14) != 124)
          {
            v76 = 45;
            v77 = v14;
            LODWORD(v78) = v14;
            goto LABEL_175;
          }

LABEL_108:
          if ((*(v12 + 8 * v164[v71 + 65]) & 8) != 0)
          {
            v35 = 1;
          }

          v69 = *(v4 + 3524);
          goto LABEL_111;
        }

        goto LABEL_165;
      }

LABEL_111:
      if (v69 != 21 || (v85 = v164[v14 + 65], (*(v12 + 8 * v164[v14 + 65]) & 8) == 0))
      {
LABEL_113:
        v39 = v65;
        goto LABEL_114;
      }

      v87 = v14;
      v88 = v14 - 1;
      v89 = v164[v88 + 65];
      v39 = v14 + 1;
      if ((v85 | 0x20) == 0x69)
      {
        v90 = *(v12 + 8 * v164[v88 + 65]);
        if ((v90 & 0x10) != 0 && (*(v12 + 8 * v164[v39 + 65]) & 8) != 0)
        {
          goto LABEL_113;
        }

        if ((v90 & 8) == 0)
        {
          goto LABEL_156;
        }
      }

      else if ((*(v12 + 8 * v164[v88 + 65]) & 8) == 0)
      {
        goto LABEL_156;
      }

      v96 = *(v6 + v88);
      v97 = v89 & 0xFFFFFFDF;
      if (v96 != 124 && v97 == 73 && (*(v12 + 8 * v164[v14 + 63]) & 0x10) != 0)
      {
LABEL_156:
        if (!v35)
        {
          goto LABEL_224;
        }

        v98 = v2[9] - 1;
        if (v85 != 101 || v14 != v98 || v89 != 105)
        {
          if (v85 == 105 && v14 == v98 && v89 == 99)
          {
            if (v14 > v2[8] + 2)
            {
              v87 = v14 - 2;
              if (v164[v87 + 65] == 152)
              {
LABEL_223:
                *(v9 + v87) = 45;
                goto LABEL_224;
              }
            }
          }

          else if ((v89 | 0x20) == 0x69)
          {
            goto LABEL_178;
          }

          v99 = 0;
          goto LABEL_180;
        }

        if (v14 > v2[8] + 3 && v164[v14 + 63] == 99)
        {
          v87 = v14 - 3;
          if (v164[v87 + 65] == 152)
          {
            goto LABEL_223;
          }
        }

LABEL_178:
        LODWORD(v88) = v14 - 2;
        v99 = 1;
LABEL_180:
        if (v88 < v65)
        {
          LODWORD(v87) = v88;
          goto LABEL_218;
        }

        v146 = v99;
        v100 = 2;
        v148 = v88;
        v101 = v88;
        do
        {
          if (v101 > v65)
          {
            v102 = is_pol_digraph(v164[v101 + 64], v164[v101 + 65], v4);
            v9 = v162;
            v101 -= v102;
          }

          --v100;
        }

        while (v101-- > v65);
        if (v100 == 1)
        {
          if (v148 > v65)
          {
            v104 = v148 - 1;
            v105 = v164[v104 + 65];
            v106 = v164[v148 + 65];
            goto LABEL_190;
          }

          LODWORD(v87) = v148;
          goto LABEL_218;
        }

        if (v148 > v65)
        {
          v87 = v148;
          do
          {
            v109 = v164[v87 + 65];
            v110 = v164[v87 + 64];
            if (v109 == v110 || v109 == 108 && v110 == 136)
            {
              goto LABEL_218;
            }

            if (v109 == 136 && v110 == 108)
            {
              goto LABEL_218;
            }
          }

          while (--v87 > v65);
        }

        v141 = v65 + 1;
        v142 = v148 - 1;
        if (v142 > v65 + 1)
        {
          v111 = v142;
          while (1)
          {
            v112 = v164[v111 + 65];
            v113 = &v164[v111 + 66];
            if (v112 == v164[v111 + 63])
            {
              v114 = *v113;
              if (v114 == *(v113 - 2) && is_pol_digraph(v112, v114, v4))
              {
                break;
              }
            }

            if (--v111 <= v141)
            {
              goto LABEL_210;
            }
          }

          LODWORD(v87) = v111;
          v9 = v162;
          v38 = v38;
          goto LABEL_218;
        }

LABEL_210:
        v115 = v146 ^ 1;
        if (v148 <= v65)
        {
          v115 = 1;
        }

        v9 = v162;
        v38 = v38;
        if (v115)
        {
          goto LABEL_256;
        }

        v116 = v164[v148 + 65];
        if (v116 <= 0x62)
        {
          if (v164[v148 + 65] <= 0x52u)
          {
            if (v116 == 67)
            {
              goto LABEL_247;
            }

LABEL_249:
            if (v116 == 78)
            {
LABEL_250:
              if (v164[v142 + 65] - 227 >= 2)
              {
                goto LABEL_256;
              }

LABEL_191:
              LODWORD(v87) = v148;
              goto LABEL_218;
            }

            goto LABEL_256;
          }

          if (v116 == 83)
          {
LABEL_252:
            if (v164[v142 + 65] - 151 < 2)
            {
              goto LABEL_191;
            }
          }

          if (v116 != 90)
          {
            goto LABEL_256;
          }

LABEL_254:
          v121 = v164[v142 + 65];
          if (v121 == 141 || v121 == 171)
          {
            goto LABEL_191;
          }

          goto LABEL_256;
        }

        if (v164[v148 + 65] > 0x72u)
        {
          if (v116 == 115)
          {
            goto LABEL_252;
          }

          if (v116 != 122)
          {
            goto LABEL_256;
          }

          goto LABEL_254;
        }

        if (v116 == 99)
        {
LABEL_247:
          v120 = v164[v142 + 65];
          if (v120 != 134 && v120 != 143)
          {
            goto LABEL_249;
          }

          goto LABEL_191;
        }

        if (v116 == 110)
        {
          goto LABEL_250;
        }

LABEL_256:
        if (v148 > v141)
        {
          v122 = &v164[v148 + 65];
          v123 = *v122;
          v124 = (((v123 - 67) >> 4) | (16 * (v123 - 67)));
          if (v124 > 1)
          {
            if (v124 == 3)
            {
              goto LABEL_265;
            }

            if (v124 == 2)
            {
              goto LABEL_262;
            }
          }

          else
          {
            if (((v123 - 67) >> 4) | (16 * (v123 - 67)))
            {
LABEL_265:
              if ((v164[v142 + 65] | 0x20) == 0x7A && (*(v122 - 2) | 0x20) == 0x73)
              {
                goto LABEL_191;
              }

              goto LABEL_271;
            }

LABEL_262:
            if ((v164[v142 + 65] | 0x20) == 0x7A && (*(v122 - 2) | 0x20) == 0x63)
            {
              goto LABEL_191;
            }

            if ((v123 | 0x20) == 0x73)
            {
              goto LABEL_265;
            }
          }

          if ((v123 + 67) <= 1u && (v164[v142 + 65] | 0x20) == 0x7A && (*(v122 - 2) | 0x20) == 0x72)
          {
            goto LABEL_191;
          }
        }

LABEL_271:
        v125 = 0;
        while (1)
        {
          v126 = &(&conshyp_pol_consdef)[2 * v125];
          v127 = **v126;
          if (!**v126)
          {
            break;
          }

          v128 = (*v126 + 1);
          v129 = v148;
          while (v129 >= v65 && v127 == *(v151 + *(v150 + v164[v129 + 65])))
          {
            v130 = *v128++;
            v127 = v130;
            --v129;
            if (!v130)
            {
              goto LABEL_280;
            }
          }

          if (++v125 == 276)
          {
            goto LABEL_283;
          }
        }

LABEL_280:
        v131 = *(v126 + 2);
        if (v131 >= 1)
        {
          v132 = v148 - v131;
          if (v148 - v131 < v65 || (v133 = is_pol_digraph(v164[v132 + 65], v164[v132 + 66], v4), v9 = v162, !v133))
          {
            LODWORD(v87) = v132 + 1;
            goto LABEL_218;
          }
        }

LABEL_283:
        if (v100)
        {
          v134 = v164[v142 + 65];
          if (is_pol_digraph(v134, v164[v148 + 65], v4))
          {
            v9 = v162;
            if (v148 <= v65 + 2 || (v135 = is_pol_digraph(v164[v148 + 62], v164[v148 + 63], v4), v9 = v162, LODWORD(v87) = v148 - 3, !v135))
            {
              LODWORD(v87) = v148 - 2;
            }
          }

          else
          {
            v9 = v162;
            if (v148 <= v141 || (v138 = is_pol_digraph(v164[v148 + 63], v134, v4), v9 = v162, LODWORD(v87) = v148 - 2, !v138))
            {
              LODWORD(v87) = v148 - 1;
            }
          }

          goto LABEL_218;
        }

        LODWORD(v87) = v148;
        LODWORD(v104) = v148 - 1;
        if (v148 > v65)
        {
          v105 = v164[v142 + 65];
          v106 = v164[v148 + 65];
LABEL_190:
          v107 = is_pol_digraph(v105, v106, v4);
          v9 = v162;
          LODWORD(v87) = v104;
          if (!v107)
          {
            goto LABEL_191;
          }
        }

LABEL_218:
        v87 = v87;
        if ((v2[7] & 0x40) == 0)
        {
          v39 = v14 + 1;
          goto LABEL_223;
        }

        v39 = v14 + 1;
        if (*(v6 + v87 - 1) != 124)
        {
          v108 = *(v6 + v87 + 1);
          goto LABEL_222;
        }

LABEL_224:
        v35 = 1;
LABEL_114:
        v36 = v161;
        goto LABEL_115;
      }

      v36 = v161;
      if ((v85 & 0xFFFFFFDF) != 0x59 && ((v85 & 0xFFFFFFDF) != 0x55 || v97 != 65))
      {
        if ((v2[7] & 0x40) == 0)
        {
          goto LABEL_223;
        }

        if (v96 != 124)
        {
          v108 = *(v6 + v39);
LABEL_222:
          if (v108 != 124)
          {
            goto LABEL_223;
          }

          goto LABEL_224;
        }
      }

      v35 = 1;
LABEL_115:
      v86 = v14;
      if ((*(v12 + 8 * v164[v14 + 65]) & 0x1800) != 0 || *(v37 + v14) == 124)
      {
        LODWORD(v14) = v14 + 1;
        v38 = (v86 + 1);
      }

      else
      {
        LODWORD(v14) = v14 + 1;
      }

      v13 = v2[9];
    }

    while (v14 < v13);
  }

  v139 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL is_hun_digraph(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = a1;
  if (a1 - 65 < 0x1A)
  {
    v3 = a1 | 0x20;
  }

  if (a2 - 65 < 0x1A)
  {
    v2 = a2 | 0x20;
  }

  v5 = (v3 & 0xFFFFFFFD) == 0x6C || v3 == 103 || v3 == 116;
  if (v5 && v2 == 121)
  {
    return 1;
  }

  v6 = v3 == 122 || v3 == 99;
  if (v6 && v2 == 115)
  {
    return 1;
  }

  if (v3 == 115 || v3 == 100)
  {
    return v2 == 122;
  }

  return 0;
}

BOOL is_hun_trigraph(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a1 - 65 < 0x1A)
  {
    v5 = a1 | 0x20;
  }

  if (a2 - 65 < 0x1A)
  {
    v4 = a2 | 0x20;
  }

  if (a3 - 65 < 0x1A)
  {
    v3 = a3 | 0x20;
  }

  return v5 == 100 && v4 == 122 && v3 == 115;
}

uint64_t hyphen_delete(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = strlen(__s);
  if (v4 > 64)
  {
    goto LABEL_2;
  }

  memset(v11, 0, sizeof(v11));
  __strcpy_chk();
  letter_stat(v3, v12, &v11[2], &v11[1], v11);
  first = cdict_find_first(a1 + 1304, v12, v4);
  if ((first & 0x80000000) == 0)
  {
LABEL_17:
    cdict_delete(a1 + 1304, first);
    result = 1;
    goto LABEL_18;
  }

  if (v11[1] <= v11[2] || v11[0])
  {
    result = 0;
    if (*&v11[1] != 0x100000001)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = v12[0];
  if (v12[0])
  {
    v8 = v12;
    do
    {
      if (v8 > v12)
      {
        *v8 = *(v3 + 256 + v7);
      }

      v9 = *++v8;
      v7 = v9;
    }

    while (v9);
  }

  first = cdict_find_first(a1 + 1304, v12, v4);
  if (first < 0 && v11[2])
  {
LABEL_15:
    v12[0] = *(v3 + v12[0] + 256);
    first = cdict_find_first(a1 + 1304, v12, v4);
  }

  if ((first & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_2:
  result = 0;
LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL hyphen_find(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = strlen(__s);
  if (v4 <= 64)
  {
    memset(v11, 0, sizeof(v11));
    __strcpy_chk();
    letter_stat(v3, v12, &v11[2], &v11[1], v11);
    first = cdict_find_first(a1 + 1304, v12, v4);
    if (first < 0)
    {
      if (v11[1] > v11[2] && !v11[0])
      {
        v7 = v12[0];
        if (v12[0])
        {
          v8 = v12;
          do
          {
            if (v8 > v12)
            {
              *v8 = *(v3 + 256 + v7);
            }

            v9 = *++v8;
            v7 = v9;
          }

          while (v9);
        }

        first = cdict_find_first(a1 + 1304, v12, v4);
        if ((first & 0x80000000) == 0 || !v11[2])
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (*&v11[1] == 0x100000001)
      {
LABEL_15:
        v12[0] = *(v3 + v12[0] + 256);
        first = cdict_find_first(a1 + 1304, v12, v4);
      }
    }

LABEL_16:
    result = first >= 0;
    goto LABEL_17;
  }

  result = 0;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t add_userhypdict(uint64_t a1, _BYTE *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    result = 0;
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  for (i = a2 + 1; ; ++i)
  {
    v9 = v7;
    v7 = v2;
    if (v2 != 45)
    {
      break;
    }

    if (v9 == 45)
    {
      v18[v4] = 45;
      goto LABEL_10;
    }

    v11 = &__src[v5];
    *v11 = v6 + 48;
    v5 += 2;
    v11[1] = 45;
LABEL_12:
    v6 = 0;
LABEL_13:
    v12 = *i;
    v2 = v12;
  }

  if (v2 == 61)
  {
    v10 = &__src[v5];
    *v10 = v6 + 48;
    v5 += 2;
    v10[1] = 61;
    goto LABEL_12;
  }

  if (v2)
  {
    v18[v4] = v2;
LABEL_10:
    ++v4;
    ++v6;
    goto LABEL_13;
  }

  v13 = v4 + 1;
  v18[v4] = 0;
  v14 = v5 + v13;
  __src[v5] = 0;
  strcpy(&v18[v13], __src);
  v15 = cdict_add(a1, v18, v14 + 1);
  result = v15 & (v15 >> 31);
LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_userhypdict(uint64_t a1, int a2, _BYTE *a3)
{
  memset(v13, 0, sizeof(v13));
  result = cdict_access(a1, a2, v13);
  if (result)
  {
    v5 = (*&v13[0] + SDWORD2(v13[0]) + 20);
    v6 = v5;
      ;
    }

    while (1)
    {
      v11 = *v6;
      if (!*v6)
      {
        break;
      }

      if (v11 >= 49)
      {
        v8 = (v11 - 49) + 1;
        do
        {
          v9 = *v5++;
          *a3++ = v9;
          --v8;
        }

        while (v8);
      }

      v10 = v6[1];
      if ((v10 | 0x10) == 0x3D)
      {
        *a3++ = v10;
      }

      v6 += 2;
    }

    do
    {
      v12 = *v5++;
      *a3++ = v12;
    }

    while (v12);
    return 1;
  }

  return result;
}

BOOL is_pol_digraph(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  v3 = a2;
  v4 = a1;
  if (a1 - 65 < 0x1A)
  {
    v4 = a1 | 0x20;
  }

  if (a2 - 65 < 0x1A)
  {
    v3 = a2 | 0x20;
  }

  v5 = (v4 & 0xFE) != 0x72 && (v4 - 99) > 1;
  if (!v5 && v3 == 122)
  {
    return 1;
  }

  result = v4 == 99 && v3 == 104;
  if (v4 == 100)
  {
    if (v3 == a3[939] || v3 == a3[958] || v3 == a3[909])
    {
      return 1;
    }

    return v3 == a3[957];
  }

  return result;
}

uint64_t add_hypdict(uint64_t a1, _BYTE *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    result = 0;
    goto LABEL_17;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 1;
  while (v2 > 60)
  {
    if (v2 == 61)
    {
      v10 = v6 + 48;
      v11 = &__src[v5];
      *v11 = v10;
      v5 += 2;
      v11[1] = 61;
      goto LABEL_8;
    }

LABEL_11:
    v20[v4++] = v2;
    ++v6;
LABEL_12:
    v12 = *v7++;
    v2 = v12;
  }

  if (v2 == 45)
  {
    v8 = v6 + 48;
    v9 = &__src[v5];
    *v9 = v8;
    v5 += 2;
    v9[1] = 45;
LABEL_8:
    v6 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    if (v2 == 42)
    {
      v14 = v4 + 1;
      v15 = v20;
      v20[v4] = 0;
      __src[v5] = 0;
      v16 = v4 + 2;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v16 = v4 + 1;
  v20[v4] = 0;
  v15 = __src;
  v14 = v5;
LABEL_16:
  v17 = v5 + v16;
  v15[v14] = v2;
  strcpy(&v20[v16], __src);
  v18 = cdict_add(a1, v20, v17 + 1);
  result = v18 & (v18 >> 31);
LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IChu(uint64_t a1, char *a2)
{
  v4 = *a1;
  v5 = 11;
  if (*a1 > 6)
  {
    switch(v4)
    {
      case 7:
        if (*(a1 + 1308))
        {
          if (*(a1 + 4) == 11 && (*(a1 + 1322) & 0x20) == 0 || SLstrcmp((a1 + 1547), **(*(*(a1 + 3184) + 224) + 16)) && (*(a1 + 1322) & 2) == 0)
          {
            v5 = HUfullver(a2, a1);
          }

          if (*(a1 + 4) != 11 && (*(a1 + 1322) & 2) == 0 && HUhyphenate(a1) == 8)
          {
            return 8;
          }
        }

        break;
      case 100:
        return HUcorrect(a1, a2);
      case 101:
        return HUcormore(a1, a2);
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        return HUinit(a1);
      case 2:
        HUterm(a1);
        return 0;
      case 3:
        return HUfullver(a2, a1);
    }
  }

  return v5;
}

uint64_t HUinit(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = *(v2 + 224);
  memset(v26, 0, sizeof(v26));
  v4 = *(a1 + 8);
  if (v4 == 4)
  {
    v5 = 14;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 18)
  {
    v6 = 21;
  }

  else
  {
    v6 = v5;
  }

  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x101004065F4E4D2uLL);
  v3[2] = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  *(v3[2] + 8) = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  v8[64] = 32;
  *&v9 = 0x2020202020202020;
  *(&v9 + 1) = 0x2020202020202020;
  *(v8 + 2) = v9;
  *(v8 + 3) = v9;
  *v8 = v9;
  *(v8 + 1) = v9;
  v10 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  *v3[2] = v10;
  if (!v10)
  {
    goto LABEL_17;
  }

  v10[64] = 32;
  *&v11 = 0x2020202020202020;
  *(&v11 + 1) = 0x2020202020202020;
  *(v10 + 2) = v11;
  *(v10 + 3) = v11;
  *v10 = v11;
  *(v10 + 1) = v11;
  v12 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  *(v3[2] + 16) = v12;
  if (!v12)
  {
LABEL_17:
    v20 = *(a1 + 1320) | 8;
LABEL_18:
    *(a1 + 1320) = v20;
    goto LABEL_19;
  }

  v12[64] = 32;
  *&v13 = 0x2020202020202020;
  *(&v13 + 1) = 0x2020202020202020;
  *(v12 + 2) = v13;
  *(v12 + 3) = v13;
  *v12 = v13;
  *(v12 + 1) = v13;
  v14 = SLLngToA(*(a1 + 8));
  *(*(*(a1 + 3184) + 248) + 56) = v14;
  if (!v14)
  {
    v20 = *(a1 + 1320) | 0x4000;
    goto LABEL_18;
  }

  v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040A517B1A3uLL);
  if (!v15)
  {
LABEL_19:
    result = 8;
    goto LABEL_20;
  }

  v16 = v15;
  *v15 = 757935150;
  *(v15 + 4) = 45;
  v15[2] = v6;
  v15[3] = 4250;
  v17 = charset_init(v3 + 1, v15);
  free(v16);
  if (v17 < 0)
  {
    goto LABEL_30;
  }

  SLfulfspec((a1 + 28), (a1 + 539), __dst);
  v18 = *(a1 + 3168);
  if (v18 <= 0x3FF)
  {
    *&v26[20] = 0;
    *&v26[4] = xmmword_1D2BFB280;
LABEL_16:
    v19 = 1;
LABEL_24:
    *v26 = v19;
    goto LABEL_25;
  }

  *&v26[20] = 1;
  *&v26[4] = xmmword_1D2BFB270;
  v23 = ((v18 << 6) - 0x20000) >> 16;
  *v26 = v23;
  if (v23 > 2048)
  {
    v19 = 0;
    goto LABEL_24;
  }

  if (v23 <= 0)
  {
    *&v26[12] = 0;
    goto LABEL_16;
  }

LABEL_25:
  if ((spell_init(v3, v3[1], __dst, v26) & 0x80000000) != 0)
  {
LABEL_30:
    v20 = *(a1 + 1320) | 4;
    goto LABEL_18;
  }

  v24 = *(*(a1 + 3184) + 224);
  *(v24 + 32) = 1;
  if ((suggest_init((v24 + 24), *(v24 + 8), 0, -1) & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*(a1 + 1308))
  {
    HUhyphinit(a1);
  }

  result = 0;
  *(a1 + 1320) |= 0x80u;
  v25 = *(v2 + 248);
  *(v25 + 68) = 64;
  *(v25 + 55) = *(a1 + 8);
  *(a1 + 12) = 0x8000000080;
  *(v2 + 12) = 307;
LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HUterm(uint64_t a1)
{
  v1 = *(a1 + 3184);
  if (*(a1 + 1308))
  {
    hyphen_finish(*(*(v1 + 224) + 40));
  }

  suggest_finish(*(*(v1 + 224) + 24));
  spell_finish(**(v1 + 224));
  freq_finish(*(*(v1 + 224) + 8));
  v2 = *(*(v1 + 224) + 16);
  if (v2[2])
  {
    free(v2[2]);
    v2 = *(*(v1 + 224) + 16);
  }

  if (v2[1])
  {
    free(v2[1]);
    v2 = *(*(v1 + 224) + 16);
  }

  if (!*v2 || (free(*v2), (v2 = *(*(v1 + 224) + 16)) != 0))
  {
    free(v2);
  }

  return 0;
}

uint64_t HUfullver(char *a1, uint64_t a2)
{
  result = HUver(a1, a2);
  if (*(a2 + 1308))
  {
    v4 = result == 11;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(*(a2 + 3184) + 264);
    if (*(v5 + 3472) || *(v5 + 3476))
    {

      return HUmandin(a2);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t HUcorrect(uint64_t a1, char *a2)
{
  v4 = *(*(a1 + 3184) + 224);
  v5 = *(v4 + 32);
  if (v5 == 1)
  {
    v6 = 8;
    *(*(v4 + 16) + 56) = 8;
    if (!*(a1 + 1682))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(a1 + 1682))
    {
LABEL_13:
      if (*(a1 + 1680))
      {
        suggest_words(*(v4 + 24), a1, v4, spell_f, result_f, a2, *(*(v4 + 16) + 56), -1);
        return 0;
      }

      v9 = 1;
      do
      {
        suggest_words(*(v4 + 24), a1, v4, spell_f, result_f, a2, *(*(v4 + 16) + 56), v9);
        v10 = v9 >= 0x80;
        v9 *= 2;
      }

      while (!v10);
      if (*(a1 + 1690))
      {
        return 20;
      }

      return HUcormore(a1, a2);
    }

    if (v5 < 1)
    {
      return 0;
    }

    v6 = *(*(v4 + 16) + 56);
  }

  LODWORD(result) = suggest_words(*(v4 + 24), a1, v4, spell_f, result_f, a2, v6, v5);
  v8 = 2 * *(v4 + 32);
  *(v4 + 32) = v8;
  if (v8 < 1)
  {
    return 0;
  }

  if (!*(a1 + 1690) || *(a1 + 1680))
  {
    return 20;
  }

  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 8;
  }
}

uint64_t HUcormore(uint64_t a1, char *a2)
{
  v4 = *(*(a1 + 3184) + 224);
  v5 = 256;
  do
  {
    v6 = suggest_words(*(v4 + 24), a1, v4, spell_f, result_f, a2, *(*(v4 + 16) + 56), v5);
    v5 *= 2;
  }

  while (v5 > 255);
  return (v6 >> 28) & 8;
}

uint64_t HUhyphenate(uint64_t a1)
{
  v2 = *(a1 + 3184);
  v3 = *(v2 + 264);
  v4 = *(v2 + 224);
  *(v3 + 3480) = 0;
  if ((hyphen_ate(*(v4 + 40), *(v4 + 16)) & 0x80000000) != 0)
  {
    return 8;
  }

  if (*(a1 + 1612) >= 1)
  {
    v5 = 0;
    v6 = v3 + 3480;
    while (1)
    {
      v7 = *(*(v4 + 16) + 16);
      if (*(v7 + v5) != 32)
      {
        v8 = 1;
        *(v6 + 4 * ((v5 - 1) >> 5)) |= 1 << -v5;
        v9 = *(v7 + v5);
        if (v9 == 61)
        {
          goto LABEL_8;
        }

        if (v9 == 35)
        {
          break;
        }
      }

LABEL_9:
      if (++v5 >= *(a1 + 1612))
      {
        return 0;
      }
    }

    v8 = 2;
LABEL_8:
    HUmand(a1, v5, v8);
    goto LABEL_9;
  }

  return 0;
}

uint64_t HUver(char *__src, uint64_t a2)
{
  v4 = *(a2 + 3184);
  v5 = *(v4 + 264);
  v6 = *(*(v4 + 248) + 56);
  v7 = *(*(v4 + 224) + 16);
  strcpy(*v7, __src);
  v8 = *(v7 + 8);
  *(v8 + 64) = 32;
  *&v9 = 0x2020202020202020;
  *(&v9 + 1) = 0x2020202020202020;
  *(v8 + 32) = v9;
  *(v8 + 48) = v9;
  *v8 = v9;
  *(v8 + 16) = v9;
  *(v7 + 24) = strlen(__src);
  *(v7 + 28) = 1;
  if (*(a2 + 1308))
  {
    v10 = *(v7 + 16);
    *(v10 + 64) = 32;
    *&v11 = 0x2020202020202020;
    *(&v11 + 1) = 0x2020202020202020;
    *(v10 + 32) = v11;
    *(v10 + 48) = v11;
    *v10 = v11;
    *(v10 + 16) = v11;
    *(v7 + 28) |= 0x44u;
  }

  if ((spell_check(**(v4 + 224), v7) & 0x80000000) != 0)
  {
    return 8;
  }

  result = HUres(v7, a2);
  if (result != 11)
  {
    if (result == 10)
    {
      **(v5 + 72) = 0;
    }

    goto LABEL_7;
  }

  if (*(v5 + 88))
  {
    SLrecap(*v7, *(v7 + 24), *(v5 + 88), v5 + 92, *(v5 + 88), v6);
    if ((spell_check(**(v4 + 224), v7) & 0x80000000) != 0)
    {
      return 8;
    }

    result = HUres(v7, a2);
    if (result != 11)
    {
      if (result == 10)
      {
        **(v5 + 72) = *(v5 + 88);
        v13 = *(v5 + 80);
        *v13 = *(v5 + 92);
        v13[1] = *(v5 + 96);
      }

      goto LABEL_7;
    }
  }

  strcpy(*v7, __src);
  **(v5 + 72) = 1;
  v15 = *(v5 + 72);
  v14 = *(v5 + 80);
  *v14 |= 0x80000000;
  SLrecap(*v7, *(v7 + 24), *v15, v14, *v15, v6);
  if ((spell_check(**(v4 + 224), v7) & 0x80000000) == 0)
  {
    result = HUres(v7, a2);
    if (result != 11)
    {
      goto LABEL_7;
    }

    **(v5 + 72) = 2;
    v17 = *(v5 + 72);
    v16 = *(v5 + 80);
    *v16 = -1;
    SLrecap(*v7, *(v7 + 24), *v17, v16, *(v5 + 88), v6);
    if ((spell_check(**(v4 + 224), v7) & 0x80000000) == 0)
    {
      result = HUres(v7, a2);
      if (result == 11)
      {
        *(*(v5 + 72) + 1) = 0;
        **(v5 + 72) = 0;
        **(v5 + 80) = 0;
        goto LABEL_8;
      }

LABEL_7:
      *(v5 + 102) = 1;
LABEL_8:
      *(a2 + 4) = result;
      return result;
    }
  }

  return 8;
}

uint64_t HUres(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x10) != 0)
  {
    *(a2 + 1328) |= 0x1000000uLL;
  }

  if ((v2 & 0x20) != 0)
  {
    *(a2 + 1328) |= 0x8000000uLL;
    if ((v2 & 0x80) == 0)
    {
LABEL_9:
      result = 3;
      goto LABEL_10;
    }

LABEL_8:
    *(a2 + 1328) |= 0x4000000uLL;
    goto LABEL_9;
  }

  if ((v2 & 0x80) != 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    return 11;
  }

  result = 10;
LABEL_10:
  **(a2 + 3184) |= 0x100u;
  return result;
}

uint64_t getcache(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x3FF)
  {
    *(a1 + 20) = 1;
    *(a1 + 4) = xmmword_1D2BFB270;
    v3 = ((a2 << 6) - 0x20000) >> 16;
    *a1 = v3;
    if (v3 > 2048)
    {
      v2 = 0;
      goto LABEL_6;
    }

    if (v3 > 0)
    {
      return 0;
    }

    *(a1 + 12) = 0;
  }

  else
  {
    *(a1 + 20) = 0;
    *(a1 + 4) = xmmword_1D2BFB280;
  }

  v2 = 1;
LABEL_6:
  *a1 = v2;
  return 0;
}

uint64_t HUcorinit(uint64_t a1)
{
  v1 = *(*(a1 + 3184) + 224);
  *(v1 + 32) = 1;
  return (suggest_init((v1 + 24), *(v1 + 8), 0, -1) >> 28) & 8;
}

uint64_t HUhyphinit(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 3184) + 224);
  SLfulfspec((a1 + 668), (a1 + 1179), __dst);
  v3 = hyphen_init((v2 + 40), *(v2 + 8), __dst, 0, 0);
  v4 = *(a1 + 1320);
  if (v3 < 0)
  {
    *(a1 + 1320) = v4 | 0x2000;
    *(a1 + 1308) = 0;
    result = 8;
  }

  else
  {
    result = 0;
    *(a1 + 1320) = v4 | 0x100;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t spell_f(uint64_t *a1, char *__s, int a3)
{
  v10 = 0u;
  v11 = 0u;
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = __s;
  v8 = strlen(__s);
  v9 = a3 + 1;
  result = spell_check(*a1, v7);
  if (result)
  {
    if (DWORD2(v11) != 1 || result <= 0)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t result_f(uint64_t a1, char *__src)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!__src)
  {
LABEL_21:
    result = 10;
    goto LABEL_22;
  }

  v4 = *(a1 + 3184);
  v5 = *(v4 + 264);
  v6 = **(v5 + 72);
  if (!*(v5 + 3184) || !*(v5 + 3206))
  {
    goto LABEL_12;
  }

  v7 = *(v5 + 3192);
  strcpy(*(v7 + 8), __src);
  *(v7 + 17) = *(v5 + 88);
  *(v7 + 20) = *(v5 + 92);
  *(v7 + 24) = *(v5 + 96);
  *(v7 + 42) = 1;
  v8 = 1 << (*(*(v4 + 248) + 55) - 1);
  if (!*(*(v4 + 248) + 55))
  {
    LODWORD(v8) = -1;
  }

  *(v7 + 36) = v8;
  PDword(v7, 1, 1);
  v9 = *(v7 + 50);
  if (!*(v7 + 50) || (*(v5 + 102) = v9, v9 < 1))
  {
LABEL_12:
    if (*(v5 + 88) == 3 && v6 == 0)
    {
      v6 = *(v5 + 92) >> 31;
      v12 = strchr(__src, 46);
      if (v12)
      {
        if (v12[1] == 32)
        {
          *(*(v5 + 80) + 4 * ((v12 - __src + 2) >> 5)) |= 1 << ~(v12 - __src + 2);
          v6 = 3;
        }
      }
    }

    __strcpy_chk();
    v13 = strlen(__s);
    SLrecap(__s, v13, v6, *(v5 + 80), *(v5 + 88), *(*(*(a1 + 3184) + 248) + 56));
    v14 = strlen(__s);
    SFadd(__s, v14, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
    goto LABEL_21;
  }

  v10 = *(v7 + 104);
  while (v6 != *(*v10 + 71) || !*(*v10 + 70))
  {
    v10 += 8;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  result = 11;
LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HUmand(uint64_t result, int a2, int a3)
{
  v3 = a3 + a2;
  v4 = *(*(result + 3184) + 264) + 4 * ((a2 - 1) >> 5);
  *(v4 + 3480) &= ~(1 << -a2);
  v5 = result + 4 * ((v3 - 1) >> 5);
  *(v5 + 3156) |= 1 << -v3;
  v6 = *(result + 1322);
  if ((v6 & 2) == 0)
  {
    v7 = a2;
    if (a2 < 1)
    {
      a2 = 0;
    }

    else
    {
      v8 = (result + 1547);
      v9 = a2;
      do
      {
        v8[1543] = *v8;
        ++v8;
        --v9;
      }

      while (v9);
    }

    v10 = result + 3090;
    *(result + 3090 + v7) = *(result + 1547 + v7 + 1);
    if (a3 == 2)
    {
      *(v10 + v7 + 1) = *(result + 1547 + v3);
    }

    v11 = v3;
    if (a2 < *(result + 1612))
    {
      v12 = (result + a2 + 1547);
      v13 = a2 + 1;
      v11 = v3;
      do
      {
        v14 = *v12++;
        *(v10 + v11++) = v14;
      }

      while (*(result + 1612) > v13++);
    }

    *(v10 + v11) = 0;
    v6 = *(result + 1322);
  }

  *(result + 1322) = v6 | 0x44;
  return result;
}

uint64_t HUmandin(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 3184) + 264);
  v3 = a1 + 1547;
  __strcpy_chk();
  v4 = *(a1 + 1612);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 11;
    while (1)
    {
      if ((*(v2 + 3472 + 4 * (v5 >> 5)) >> ~v5))
      {
        v7 = *(v3 + v5) - 115;
        v8 = v7 > 7;
        v9 = (1 << v7) & 0xC1;
        if (!v8 && v9 != 0)
        {
          v11 = *(v5 + v3 + 2) - 115;
          v8 = v11 > 7;
          v12 = (1 << v11) & 0xC1;
          v13 = v8 || v12 == 0;
          if (!v13 && *(v5 + v3 - 1) == *(v5 + v3 + 1))
          {
            v14 = v4 - 1;
            if (v14 <= v5)
            {
              v16 = v5;
            }

            else
            {
              v15 = v5;
              v16 = v5;
              do
              {
                __s[v16++] = *(v3 + v15 + 1);
                v15 = v16;
              }

              while (v14 > v16);
            }

            __s[v16] = 0;
            *(a1 + 1612) = v4 - 1;
            v6 = HUver(__s, a1);
            if (v6 != 11)
            {
              *(a1 + 1322) |= 2u;
              if (HUhyphenate(a1) == 8)
              {
                v6 = 8;
                goto LABEL_25;
              }

              v17 = *(a1 + 1322);
              if ((v17 & 4) != 0)
              {
                *(a1 + 1322) = v17 & 0xFFFB;
                __strcpy_chk();
                ++*(a1 + 1612);
                v21 = *(a1 + 3156);
                *(a1 + 3156) = *(v2 + 3480);
                *(a1 + 3160) = *(v2 + 3484);
                *(v2 + 3480) = v21;
                goto LABEL_25;
              }

              v18 = strlen(__s);
              SFadd(__s, v18, (v2 + 40), (v2 + 44), *(v2 + 42), *(v2 + 56), *(v2 + 48), *(v2 + 64));
              *(a1 + 1322) &= ~2u;
              **(a1 + 3184) |= 4u;
              v6 = 2;
            }
          }
        }
      }

      ++v5;
      LOWORD(v4) = *(a1 + 1612);
      if (v5 >= v4)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = 11;
LABEL_25:
  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t charset_init(void *a1, unsigned __int8 *a2)
{
  v4 = malloc_type_calloc(0xDD0uLL, 1uLL, 0x2BB6166FuLL);
  *a1 = v4;
  if (!v4)
  {
    return 4294965395;
  }

  return charset_reinit(v4, a2);
}

uint64_t charset_alloc(void *a1)
{
  v2 = malloc_type_calloc(0xDD0uLL, 1uLL, 0x2BB6166FuLL);
  *a1 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 4294967293;
  }
}

uint64_t charset_reinit(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 2);
  v3 = &lexchar_hun;
  if (v2 != 14)
  {
    v3 = 0;
  }

  v4 = &hun_symbols;
  if (v2 != 14)
  {
    v4 = 0;
  }

  if (v2 == 21)
  {
    v5 = &lexchar_pol;
  }

  else
  {
    v5 = v3;
  }

  if (v2 == 21)
  {
    v6 = &pol_symbols;
  }

  else
  {
    v6 = v4;
  }

  if (!v5)
  {
    return 4294965382;
  }

  v8 = *(a2 + 3);
  if (v8 == 4250)
  {
    v9 = &oemchar_icsl2;
  }

  else
  {
    v9 = 0;
  }

  if (v8 == 4250)
  {
    v10 = &oemsym_icsl2;
  }

  else
  {
    v10 = 0;
  }

  if (v8 != 4250)
  {
    return 4294965381;
  }

  v12 = malloc_type_calloc(0xA00uLL, 1uLL, 0x757A53CEuLL);
  if (!v12)
  {
    return 4294965395;
  }

  v13 = v12;
  v14 = malloc_type_calloc(0xA00uLL, 1uLL, 0x2FF8B4C7uLL);
  if (!v14)
  {
    free(v13);
    return 4294965395;
  }

  v15 = v14;
  v58 = a1 + 3076;
  bzero(v13, 0xA00uLL);
  bzero(v15, 0xA00uLL);
  v16 = *v5;
  if (*v5)
  {
    v17 = v5 + 3;
    do
    {
      v13[20 * *(v17 - 2) + *(v17 - 1)] = v16;
      v18 = *v17;
      v17 += 3;
      v16 = v18;
    }

    while (v18);
  }

  v19 = 0;
  v55 = a2;
  v56 = a1 + 512;
  v20 = a1 + 768;
  v21 = a1 + 1024;
  v22 = v9 + 1;
  do
  {
    if (*(v22 - 1))
    {
      v15[20 * *(v22 - 1) + *v22] = v19 | 0x80;
    }

    if ((v19 - 97) >= 0x1A)
    {
      v23 = v19;
    }

    else
    {
      v23 = v19 - 32;
    }

    v24 = (a1 + v19);
    *(a1 + v19) = v23;
    if ((v19 - 65) >= 0x1A)
    {
      v25 = v19;
    }

    else
    {
      v25 = v19 + 32;
    }

    v24[256] = v25;
    v24[512] = v19;
    v24[768] = v19;
    v24[640] = 0;
    v24[896] = 0;
    *(v21 + 8 * v19) = ascii_table[v19];
    ++v19;
    v22 += 16;
  }

  while (v19 != 128);
  v26 = 0;
  v27 = 128;
  do
  {
    v28 = a1 + v26;
    *(v28 + 128) = v26 + 0x80;
    *(v28 + 384) = v26 + 0x80;
    v29 = *v9;
    v30 = v9[1];
    v31 = 5 * v29;
    if ((v29 - 65) > 0x19)
    {
      v33 = 20 * v29;
      if ((v29 - 97) > 0x19)
      {
        goto LABEL_43;
      }

      v32 = (a1 + v27);
      v34 = v33 - 640;
    }

    else
    {
      v32 = (v28 + 384);
      v33 = 4 * v31;
      v34 = 4 * v31 + 640;
    }

    v35 = v15[v30 + v34];
    if (!v35)
    {
      LOBYTE(v35) = v26 + 0x80;
    }

    *v32 = v35;
LABEL_43:
    v36 = v13[v30 + v33];
    if (v36)
    {
      *(a1 + v26 + 640) = v36;
      *(v20 + v36) = v26 + 0x80;
    }

    *(a1 + 2048 + 8 * v26) = *(v9 + 1);
    ++v27;
    ++v26;
    v9 += 16;
  }

  while (v26 != 128);
  *(a1 + 3072) = 0;
  v37 = *v6;
  if (*v6 != -1)
  {
    v38 = 0;
    v57 = v10;
    do
    {
      v39 = v10[v37];
      if (v39)
      {
        *(v58 + 28 * v38) = v39;
        v40 = 0x1000000;
        if (!v6[1])
        {
          v40 = 0x800000;
        }

        *(v21 + 8 * v39) |= v40;
        v41 = *(v6 + 1);
        v42 = *v41;
        if (*v41)
        {
          v43 = 0;
          do
          {
            *(a1 + 3084 + 28 * *(a1 + 3072) + v43) = *(v20 + v42);
            v44 = v43 + 1;
            if (v43 > 0xD)
            {
              break;
            }

            v42 = *(*(v6 + 1) + v43++ + 1);
          }

          while (v42);
          v38 = *(a1 + 3072);
        }

        else
        {
          v44 = 0;
        }

        *(v58 + 28 * v38 + v44 + 8) = 0;
        v45 = *(a1 + 3072);
        *(v58 + 28 * v45 + 4) = strlen((v58 + 28 * v45 + 8));
        v38 = v45 + 1;
        *(a1 + 3072) = v45 + 1;
        v10 = v57;
        if (v45 == 15)
        {
          break;
        }
      }

      v46 = v6[4];
      v6 += 4;
      v37 = v46;
    }

    while (v46 != -1);
  }

  free(v13);
  free(v15);
  if (*v55)
  {
    *(v21 + 8 * *v55) |= 0x400uLL;
  }

  v47 = *(a1 + 1376);
  *(a1 + 1376) = v47 | 0x200;
  v48 = *(a1 + 1392);
  *(a1 + 1392) = v48 | 0x200;
  v49 = v55[1];
  if (v55[1])
  {
    *(a1 + 1376) = v47 & 0xFFFFFFFFFFFFFDFFLL;
    *(a1 + 1392) = v48 & 0xFFFFFFFFFFFFFDFFLL;
    *(v21 + 8 * v49) |= 0x200uLL;
  }

  v50 = v55[2];
  if (v55[2] && v50 != 45)
  {
    *(v21 + 8 * *(a1 + 813)) &= ~0x2000uLL;
    *(v21 + 8 * v50) |= 0x2000uLL;
    *(v56 + v50) = 16;
    *(a1 + 784) = v50;
  }

  v51 = v55[4];
  if (v55[4] && v51 != 45)
  {
    *(v21 + 8 * v51) |= 0x1000uLL;
    *(v56 + v51) = 18;
    *(a1 + 786) = v51;
  }

  v52 = v55[3];
  if (v55[3] && v52 != 45)
  {
    *(v21 + 8 * *(a1 + 813)) &= ~0x1000uLL;
    *(v21 + 8 * v52) |= 0x1000uLL;
    *(v56 + v52) = 45;
    *(a1 + 813) = v52;
  }

  v53 = *(v55 + 2);
  *(a1 + 3524) = v53 & 0x1FF;
  if (v53 == 14)
  {
    *(a1 + 1736) = 19;
    *(a1 + 1992) = 21;
  }

  result = 0;
  *(a1 + 3528) = *(v55 + 3);
  return result;
}

uint64_t db_init(void *a1, const char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = malloc_type_calloc(0x48uLL, 1uLL, 0x256A253BuLL);
  *a1 = v12;
  if (!v12)
  {
    return 4294966795;
  }

  v13 = v12;
  *(v12 + 1) = 0u;
  v14 = (v12 + 16);
  *(v12 + 2) = 0u;
  v15 = (v12 + 32);
  *(v12 + 16) = a5;
  *(v12 + 17) = a6;
  *(v12 + 1) = a3;
  v16 = f_open(a2, 1);
  if (!v16)
  {
    return 4294967094;
  }

  v17 = v16;
  f_seek(v16, a4, 0);
  if (fgetl_lsb1st(v17, v15) == -1 || fgetl_lsb1st(v17, v13 + 7) == -1 || fgetl_lsb1st(v17, v14 + 3) == -1 || fgetl_lsb1st(v17, v13 + 6) == -1)
  {
    f_close(v17);
    return 4294967092;
  }

  v18 = malloc_type_calloc(*(v13 + 14) + *(v13 + 14) * *(v13 + 12) + 33, 1uLL, 0x53FB7556uLL);
  if (!v18)
  {
    goto LABEL_38;
  }

  v19 = v18;
  v20 = malloc_type_calloc(32 * v13[4], 1uLL, 0xD29FC159uLL);
  v13[3] = v20;
  if (!v20)
  {
    free(v19);
LABEL_38:
    f_close(v17);
    return 4294966795;
  }

  v63 = a2;
  v64 = v14;
  v71 = v20;
  if (*v15 < 1)
  {
    v33 = 0;
    v35 = 0;
  }

  else
  {
    v21 = 0;
    while (2)
    {
      v22 = &v20[32 * v21];
      *v22 = 0;
      v23 = v19;
      do
      {
        if ((*(v17 + 8) & 0x10) != 0)
        {
          v24 = f_getc_txt(v17);
        }

        else
        {
          v24 = f_getc_bin(v17);
        }

        if (v24 == -1)
        {
          goto LABEL_35;
        }

        *v23++ = (16 * (v24 ^ 0x5C)) | ((v24 ^ 0x5Cu) >> 4);
      }

      while (__PAIR16__((16 * (v24 ^ 0x5Cu)) >> 24, 16 * (v24 ^ 0x5C)));
      if (fgetl_lsb1st(v17, v22 + 1) == -1 || fgetw_lsb1st(v17, v22 + 8) == -1 || fgetw_lsb1st(v17, v22 + 9) == -1)
      {
        goto LABEL_35;
      }

      v25 = *(v22 + 8);
      if (v25 >= 1)
      {
        v26 = 0;
        v27 = v13[6];
        v69 = v22;
        while ((v27 & 0x80000000) != 0)
        {
LABEL_30:
          if (++v26 >= v25)
          {
            goto LABEL_31;
          }
        }

        v28 = -1;
        while (1)
        {
          v29 = (*(v17 + 8) & 0x10) != 0 ? f_getc_txt(v17) : f_getc_bin(v17);
          if (v29 == -1)
          {
            break;
          }

          *v23++ = v29;
          v27 = v13[6];
          if (++v28 >= v27)
          {
            v22 = v69;
            LOWORD(v25) = *(v69 + 8);
            goto LABEL_30;
          }
        }

LABEL_35:
        v35 = -204;
        v33 = 1;
LABEL_36:
        v20 = v71;
        break;
      }

LABEL_31:
      v30 = v23 - v19;
      v31 = v23 - v19;
      v32 = v22;
      v33 = 1;
      v34 = malloc_type_calloc(v30, 1uLL, 0x64762D10uLL);
      *v32 = v34;
      if (!v34)
      {
        v35 = -501;
        goto LABEL_36;
      }

      memcpy(v34, v19, v31);
      v33 = 0;
      v35 = 0;
      ++v21;
      v20 = v71;
      if (v21 < *v15)
      {
        continue;
      }

      break;
    }
  }

  v65 = v33;
  v66 = v35;
  v67 = v19;
  v68 = v17;
  v62 = a3;
  *(v20 + 20) = -1;
  if (*v15 > 1)
  {
    v70 = *v15 & 0x7FFFFFFF;
    v37 = 1;
    do
    {
      v38 = &v20[32 * v37];
      if (*(v38 + 8) == *(v38 + 9))
      {
        v39 = -1;
        *(v38 + 5) = -1;
LABEL_60:
        *(v38 + 6) = v39;
      }

      else
      {
        v40 = v37;
        do
        {
          LODWORD(v41) = 0;
          v42 = &v20[32 * (v40 - 1)];
          v43 = *v42;
          if (**v38 && **v38 == *v43)
          {
            v41 = 0;
            do
            {
              v44 = *(*v38 + 1 + v41);
              v45 = v43[++v41];
              if (v44)
              {
                v46 = v44 == v45;
              }

              else
              {
                v46 = 0;
              }
            }

            while (v46);
          }

          v47 = strlen(*v42);
          v39 = *(v42 + 8);
          v48 = &v43[v47];
          v20 = v71;
          v49 = v48 + 1;
          while (1)
          {
            v50 = __OFSUB__(v39--, 1);
            if (v39 < 0 != v50)
            {
              break;
            }

            if (v41 >= v49[v39 + v39 * *(v13 + 12)])
            {
              *(v38 + 5) = v40 - 1;
              goto LABEL_60;
            }
          }
        }

        while (v40-- > 1);
      }

      ++v37;
    }

    while (v37 != v70);
  }

  free(v67);
  f_close(v68);
  v36 = v66;
  if ((v65 & 1) == 0)
  {
    v52 = *(v13 + 16);
    v53 = *(v13 + 8);
    if (!v52 || v52 > v53)
    {
      *(v13 + 16) = v53;
      v52 = v53;
    }

    v54 = malloc_type_calloc(16 * v52, 1uLL, 0x97EB8E30uLL);
    *v64 = v54;
    if (v54)
    {
      v55 = open(v63, 0, 511);
      if (v55 != -1)
      {
        v56 = v55;
        if (lseek(v55, v62, 0) == -1)
        {
          return 4294967090;
        }

        if (*(v13 + 16) < 1)
        {
LABEL_78:
          v36 = 0;
        }

        else
        {
          v57 = 0;
          v58 = (v13[2] + 8);
          while (1)
          {
            if (*(v13 + 17))
            {
              v59 = v57;
            }

            else
            {
              v59 = -1;
            }

            *v58 = v59;
            v60 = malloc_type_calloc(*(v13 + 10), 1uLL, 0x1C629BB0uLL);
            *(v58 - 1) = v60;
            if (!v60)
            {
              v36 = 4294966795;
              goto LABEL_84;
            }

            if (*(v13 + 17) && read(v56, v60, *(v64 + 6)) == -1)
            {
              break;
            }

            ++v57;
            v58 += 4;
            if (v57 >= *(v13 + 16))
            {
              goto LABEL_78;
            }
          }

          v36 = 4294967092;
        }

LABEL_84:
        close(v56);
        return v36;
      }

      return 4294967094;
    }

    return 4294966795;
  }

  return v36;
}

void db_finish(int *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2 && a1[16] >= 1)
    {
      v3 = 0;
      do
      {
        if (!*v2)
        {
          break;
        }

        free(*v2);
        ++v3;
        v2 += 2;
      }

      while (v3 < a1[16]);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      if (a1[8] >= 1)
      {
        v5 = 0;
        do
        {
          if (!*v4)
          {
            break;
          }

          free(*v4);
          ++v5;
          v4 += 4;
        }

        while (v5 < a1[8]);
        v4 = *(a1 + 3);
      }

      free(v4);
    }

    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
    }

    free(a1);
  }
}

uint64_t db_search(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = v5 - 1;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = (v6 + v7) >> 1;
      v9 = SLstrcmp(a2, *(v4 + 32 * v8));
      if (v9 < 0)
      {
        v6 = v8 - 1;
      }

      else
      {
        if (!v9)
        {
          v6 = (v6 + v7) >> 1;
          goto LABEL_11;
        }

        v7 = v8 + 1;
      }
    }

    while (v6 >= v7);
  }

  if (v6 != -1)
  {
LABEL_11:
    LODWORD(v10) = 0;
    v11 = v4 + 32 * v6;
    v50 = *(a1 + 48);
    v12 = *v11;
    if (*a2 && *a2 == *v12)
    {
      v10 = 0;
      do
      {
        v13 = a2[v10 + 1];
        v14 = v12[++v10];
        if (v13)
        {
          v15 = v13 == v14;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v15);
    }

    v49 = a2;
    v47 = *(v11 + 8);
    v48 = v6 % *(a1 + 64);
    v16 = *(v11 + 18);
    v17 = v16 - 1;
    if (v16 < 1)
    {
      v54 = 0;
    }

    else
    {
      v18 = *(v11 + 16);
      v19 = strlen(v12);
      v53 = v12;
      v54 = 0;
      v20 = &v12[v19 + 1];
      v21 = v12 + 1;
      LODWORD(v12) = v19;
      LODWORD(v22) = v6;
      do
      {
        if (v18 <= 0)
        {
          v23 = v4 + 32 * v22;
          v22 = *(v23 + 20);
          v24 = *(v4 + 32 * v22);
          if (*v24)
          {
            v25 = *v24 == *v53;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            v12 = 0;
            do
            {
              v26 = v12[(v24 + 1)];
              v27 = (v12++)[v21];
              if (v26)
              {
                v28 = v26 == v27;
              }

              else
              {
                v28 = 0;
              }
            }

            while (v28);
          }

          else
          {
            LODWORD(v12) = 0;
          }

          v18 = *(v23 + 24);
          v20 = &v24[strlen(*(v4 + 32 * v22)) + 1];
        }

        else
        {
          --v18;
        }

        v29 = (v20 + v18 * (v50 + 1));
        v30 = *v29;
        if (v30 <= v12)
        {
          if (v30 <= v10)
          {
            if (v17 >= v54)
            {
              v31 = (v17 + 1);
            }

            else
            {
              v31 = v54;
            }

            v54 = v31;
            memcpy((a3 + v17 * (v50 + 1)), v29, v50 + 1);
          }

          --v17;
        }
      }

      while ((v17 & 0x80000000) == 0);
    }

    v32 = *(a1 + 16) + 16 * v48;
    v33 = *v32;
    if (v6 == *(v32 + 8))
    {
      goto LABEL_47;
    }

    *(v32 + 8) = -1;
    if (lseek(*a1, *(a1 + 8) + v47, 0) == -1)
    {
      return 4294967090;
    }

    if (read(*a1, v33, *(a1 + 40)) != -1)
    {
      *(v32 + 8) = v6;
LABEL_47:
      v34 = *(a1 + 40);
      if (v34 < 1)
      {
        return v54;
      }

      v35 = &v33[v34];
      if (v10 >= v33[1])
      {
        LODWORD(v10) = v33[1];
      }

      v36 = v10;
      while (1)
      {
        v37 = *v33;
        if (v37 == 255)
        {
          return v54;
        }

        v38 = v33[1];
        if (v10 > v38)
        {
          return v54;
        }

        v39 = v33 + 2;
        if (v36 >= v38)
        {
          break;
        }

        v33 = &v39[v37 + v50 - v38];
LABEL_70:
        if (v33 >= v35)
        {
          return v54;
        }
      }

      if (v38 >= v37)
      {
        v41 = v33 + 2;
LABEL_64:
        if (v38 > v10)
        {
          LODWORD(v10) = v38;
        }

        v43 = v54;
        if (v38 != v37)
        {
LABEL_69:
          v33 = &v41[v50];
          v36 = v38;
          goto LABEL_70;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v39[v37 - v38];
        v42 = v33[1];
        do
        {
          if (v49[v38 + v40] != (((v39[v40] ^ 0x5C) >> 4) | (16 * (v39[v40] ^ 0x5C))))
          {
            LODWORD(v38) = v38 + v40;
            v41 = &v33[v37 - v42 + 2 + v40];
            goto LABEL_64;
          }

          ++v40;
          ++v42;
        }

        while (v38 - v37 + v40);
        if (v37 > v10)
        {
          LODWORD(v10) = *v33;
        }

        LODWORD(v38) = *v33;
        v43 = v54;
      }

      if (v43 == *(a1 + 56))
      {
        return 4294966776;
      }

      v44 = (a3 + v43 * (v50 + 1));
      *v44 = v37;
      memcpy(v44 + 1, v41, v50);
      v54 = (v43 + 1);
      goto LABEL_69;
    }

    return 4294967092;
  }

  return 0;
}

uint64_t mt_init(void *a1, void *a2, const char *a3, uint64_t a4)
{
  *a1 = 0;
  *a2 = 0;
  v7 = f_open(a3, 1);
  if (!v7)
  {
    return 4294966994;
  }

  v8 = v7;
  if (f_seek(v7, a4, 0) == -1)
  {
    v27 = 4294966990;
  }

  else
  {
    v9 = 1;
    do
    {
      if (v9)
      {
        v10 = a1;
      }

      else
      {
        v10 = a2;
      }

      if ((*(v8 + 8) & 0x10) != 0)
      {
        v11 = f_getc_txt(v8);
      }

      else
      {
        v11 = f_getc_bin(v8);
      }

      v12 = v11;
      if (v11 == -1 || ((*(v8 + 8) & 0x10) != 0 ? (v13 = f_getc_txt(v8)) : (v13 = f_getc_bin(v8)), (v14 = v13, v13 == -1) || ((*(v8 + 8) & 0x10) != 0 ? (v15 = f_getc_txt(v8)) : (v15 = f_getc_bin(v8)), (v16 = v15, v15 == -1) || ((*(v8 + 8) & 0x10) != 0 ? (v17 = f_getc_txt(v8)) : (v17 = f_getc_bin(v8)), v18 = v17, v17 == -1))))
      {
        v27 = 4294966992;
        goto LABEL_34;
      }

      v19 = v14 - v12 + 1 + (v14 - v12 + 1) * (v17 - v16);
      v21 = v19 + 7;
      v20 = v19 < -7;
      v22 = v19 + 14;
      if (!v20)
      {
        v22 = v21;
      }

      v23 = v22 >> 3;
      v24 = malloc_type_calloc(v23 + 4, 1uLL, 0x1B151541uLL);
      *v10 = v24;
      if (!v24)
      {
        v27 = 4294965495;
        goto LABEL_34;
      }

      *v24 = v12;
      v24[1] = v14;
      v24[2] = v16;
      v24[3] = v18;
      v25 = f_read(v24 + 4, v23, 1, v8);
      v26 = (v25 == 1) & v9;
      v9 = 0;
    }

    while ((v26 & 1) != 0);
    if (v25 == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = 4294966992;
    }
  }

LABEL_34:
  f_close(v8);
  return v27;
}

void mt_finish(void *a1, void *a2)
{
  if (a1)
  {
    free(a1);
  }

  if (a2)
  {

    free(a2);
  }
}

uint64_t mt_match(char *a1, int a2, int a3)
{
  v3 = *a1;
  if (v3 > a2)
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 < a2)
  {
    return 0;
  }

  v5 = a1[2];
  if (v5 > a3 || a1[3] < a3)
  {
    return 0;
  }

  v7 = a2 - v3;
  v8 = a3 - v5 + (a3 - v5) * (v4 - v3);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  v11 = v10 + 7;
  if (v10 < 0 == v9)
  {
    v11 = v10;
  }

  return (a1[(v11 >> 3) + 4] >> (v10 & 7)) & 1;
}

uint64_t roman2int(_BYTE *a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v2 += fsa[10 * v1 + 9];
    if (v2 > 10999)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = a1 + 1;
    v4 = *a1;
    if (v4 <= 0x48)
    {
      if (*a1 <= 0x42u)
      {
        if (!*a1)
        {
          goto LABEL_14;
        }

        if (v4 == 46 && !*v3)
        {
          v3 = a1 + 2;
LABEL_14:
          v5 = 7;
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      if (v4 != 67)
      {
        if (v4 == 68)
        {
          v5 = 1;
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v5 = 2;
    }

    else if (*a1 <= 0x4Cu)
    {
      if (v4 != 73)
      {
        if (v4 == 76)
        {
          v5 = 3;
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v5 = 6;
    }

    else
    {
      switch(v4)
      {
        case 'M':
          v5 = 0;
          break;
        case 'V':
          v5 = 5;
          break;
        case 'X':
          v5 = 4;
          break;
        default:
LABEL_21:
          v5 = 8;
          break;
      }
    }

LABEL_26:
    v1 = fsa[10 * v1 + v5];
    a1 = v3;
  }

  while (v1 > 0);
  if (v1 == 0xFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2;
  }
}

uint64_t spell_init(void *a1, uint64_t a2, const char *a3, __int128 *a4)
{
  v13 = *a4;
  v14 = *(a4 + 2);
  v7 = malloc_type_calloc(0x18uLL, 1uLL, 0xD9FD62BAuLL);
  *a1 = v7;
  if (!v7)
  {
    return 4294966495;
  }

  v8 = v7;
  *v7 = a2;
  v7[2] = 0;
  v7[1] = 0;
  v9 = v7 + 1;
  he_language = get_he_language(a2);
  result = an_init(v9, a3, &v13, he_language);
  if ((result & 0x80000000) == 0)
  {
    v12 = freq_init(v8 + 2, a2);
    return v12 & (v12 >> 31);
  }

  return result;
}

uint64_t spell_finish(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      an_finish(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      freq_finish(v3);
    }

    free(a1);
  }

  return 0;
}

uint64_t spell_check(uint64_t a1, uint64_t *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  LODWORD(v2) = *(a2 + 6);
  if (v2 > 64)
  {
    v3 = 4294966486;
    goto LABEL_134;
  }

  v5 = a1;
  v6 = *a1;
  v7 = *(a2 + 7);
  *(a2 + 8) = 0;
  *(a2 + 9) = v2;
  v8 = *a2;
  if (a2[1])
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFB;
  }

  if ((v9 & 4) != 0 && v2 >= 1)
  {
    v10 = 0;
    do
    {
      *(a2[1] + v10++) = 32;
      v2 = *(a2 + 9);
    }

    while (v10 < v2);
    v7 = *(a2 + 7);
  }

  *(a2 + 14) = 0;
  if (v7)
  {
    v11 = *(v8 + v2);
    *(v8 + v2) = 0;
    v12 = is_frequent_word(*(a1 + 16), (v8 + *(a2 + 8)));
    *(v8 + *(a2 + 9)) = v11;
    if (v12 > 0)
    {
      v3 = 1;
      goto LABEL_134;
    }

    LODWORD(v2) = *(a2 + 9);
  }

  v13 = *(a2 + 8);
  if (v13 >= v2)
  {
LABEL_132:
    v44 = 1;
    v3 = 1;
    goto LABEL_133;
  }

  v80 = v9;
  LODWORD(v14) = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = &v83;
  v20 = v6 + 1024;
  v81 = v6;
  v21 = v6 + 512;
  v22 = (v8 + v13);
  v23 = v2 - v13;
  v24 = 1;
  while (2)
  {
    v25 = *v22++;
    v26 = *(v20 + 8 * v25);
    __src[v14] = v13;
    switch(v24)
    {
      case 0u:
        goto LABEL_66;
      case 1u:
        if (v26)
        {
          goto LABEL_104;
        }

        if ((v26 & 0x1000) != 0)
        {
          if ((*(v20 + 8 * *(v81 + 813)) & 0x2000) != 0)
          {
            v24 = 7;
          }

          else
          {
            v24 = 4;
          }

          goto LABEL_105;
        }

        if ((v26 & 0x6000) != 0)
        {
          v24 = 8;
          goto LABEL_105;
        }

        if ((v26 & 0x20) != 0)
        {
          goto LABEL_97;
        }

        if ((v26 & 0x400000) != 0)
        {
          goto LABEL_70;
        }

        if ((v26 & 0x1800000) != 0)
        {
          goto LABEL_108;
        }

        if ((v26 & 0x200) != 0)
        {
          goto LABEL_89;
        }

        if ((v26 & 0xC00) != 0)
        {
          v24 = 7;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_105;
      case 2u:
        if (v26)
        {
          goto LABEL_104;
        }

        if ((v26 & 0x20) != 0)
        {
          goto LABEL_97;
        }

        if ((v26 & 0x100) != 0)
        {
          goto LABEL_89;
        }

        if ((v26 & 0x2000000) != 0)
        {
LABEL_37:
          v24 = 12;
          goto LABEL_105;
        }

        if ((v26 & 0x40) != 0)
        {
          goto LABEL_64;
        }

        if ((v26 & 0x1000) != 0)
        {
LABEL_69:
          v17 = 1;
LABEL_70:
          v24 = 4;
          goto LABEL_105;
        }

        if ((v26 & 0x428800) != 0)
        {
          goto LABEL_70;
        }

        if ((~v26 & 0x280000) != 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = 10;
        }

LABEL_105:
        v14 = (v14 + 1);
LABEL_106:
        ++v13;
        if (--v23)
        {
          continue;
        }

        if (!v18)
        {
          goto LABEL_132;
        }

        if (v24 == 9 || !v24)
        {
          *(a2 + 14) = 2;
          goto LABEL_113;
        }

        a2[5] = 0;
        a2[6] = 0;
        if (v14 < 1)
        {
          v83 = 0;
          v59 = v80;
          goto LABEL_167;
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = v14;
        break;
      case 3u:
        if ((v26 & 0x1000) != 0)
        {
          goto LABEL_69;
        }

        goto LABEL_63;
      case 4u:
        if ((v26 & 1) == 0)
        {
          if ((v26 & 0x40) != 0)
          {
            goto LABEL_64;
          }

          if ((v26 & 0x20) != 0)
          {
            v24 = 5;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_105;
        }

        v24 = 2;
        if (!v17 || v15 || v18)
        {
          v18 = 1;
          goto LABEL_105;
        }

        if (v14 < 1)
        {
          LODWORD(v14) = 0;
        }

        else
        {
          v78 = v5;
          v79 = v8;
          v29 = v19;
          v30 = v21;
          v31 = v17;
          v32 = v16;
          memcpy(__dst, __src, 4 * v14);
          v16 = v32;
          v17 = v31;
          v21 = v30;
          v19 = v29;
          v5 = v78;
          v8 = v79;
        }

        __src[0] = v13;
        v18 = 1;
        v24 = 2;
        v15 = v14;
        v14 = 1;
        goto LABEL_106;
      case 5u:
        if ((v26 & 0x20) != 0)
        {
          goto LABEL_97;
        }

        if ((v26 & 0x1000) != 0)
        {
          goto LABEL_69;
        }

        if ((v26 & 0x100) != 0)
        {
          v16 = 1;
LABEL_89:
          v24 = 6;
          goto LABEL_105;
        }

        if ((v26 & 0xE00) != 0)
        {
          v24 = 7;
          goto LABEL_105;
        }

        if ((v26 & 0x40) != 0)
        {
          goto LABEL_64;
        }

        if ((v26 & 0x1000000) != 0)
        {
LABEL_108:
          v24 = 3;
        }

        else
        {
          if (v26)
          {
            goto LABEL_104;
          }

          v24 = (v26 >> 20) & 4;
        }

        goto LABEL_105;
      case 6u:
        if ((v26 & 0x100) != 0)
        {
          v24 = 9;
          goto LABEL_105;
        }

        if ((v26 & 0x40) != 0)
        {
          goto LABEL_64;
        }

        if ((v26 & 0x1000) != 0)
        {
          if (v16)
          {
            v17 = 1;
          }

          else
          {
            v17 = v17;
          }

          v24 = 4;
          v14 = (v14 + 1);
          v16 = 0;
          goto LABEL_106;
        }

        if (v26)
        {
LABEL_104:
          v18 = 1;
          v24 = 2;
        }

        else
        {
          if ((*(v20 + 8 * *(v81 + 814)) & 0x600) == 0)
          {
            goto LABEL_72;
          }

LABEL_55:
          if ((v26 & 0x20) == 0)
          {
            v28 = (v26 & 1) == 0;
            v24 = 2 * (v26 & 1);
            goto LABEL_67;
          }

LABEL_97:
          v24 = 5;
        }

        goto LABEL_105;
      case 7u:
        goto LABEL_55;
      case 8u:
        if ((v26 & 0x20) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_97;
      case 9u:
        if ((v26 & 0x100) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_66;
      case 0xAu:
        if ((v26 & 0x1000) != 0)
        {
          v14 = (v14 - 1);
          v24 = 4;
          goto LABEL_106;
        }

LABEL_63:
        if ((v26 & 0x40) != 0)
        {
          goto LABEL_64;
        }

LABEL_66:
        v24 = 0;
        v28 = (v26 & 1) == 0;
LABEL_67:
        if (!v28)
        {
          v18 = 1;
        }

        goto LABEL_105;
      case 0xBu:
        if (v26)
        {
          v18 = 1;
        }

        else if ((v26 & 0x180) == 0x80)
        {
LABEL_64:
          v24 = 11;
          goto LABEL_105;
        }

LABEL_72:
        v24 = 0;
        goto LABEL_105;
      case 0xCu:
        if ((v26 & 0x140) == 0x40)
        {
          goto LABEL_64;
        }

        if ((v26 & 0x600000) == 0 || (v26 & 0x80000) == 0)
        {
          goto LABEL_66;
        }

        v24 = 10;
        goto LABEL_105;
      default:
        goto LABEL_105;
    }

    break;
  }

  do
  {
    v53 = *(v8 + __src[v51]);
    v54 = *(v20 + 8 * v53);
    v55 = *(v21 + v53);
    v19[v51] = v55;
    if (v55 == 18 || v55 == 17)
    {
      v19[v51] = 45;
      if ((v54 & 2) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (!v55)
      {
        *(a2 + 10) = ++v50;
      }

      if ((v54 & 2) == 0)
      {
LABEL_142:
        if ((v54 & 4) != 0)
        {
          *(a2 + 13) = ++v47;
        }

        goto LABEL_148;
      }
    }

    if (!v51)
    {
      *(a2 + 11) = ++v49;
    }

    *(a2 + 12) = ++v48;
LABEL_148:
    ++v51;
  }

  while (v14 != v51);
  v19[v14] = 0;
  if (v50 > 0)
  {
    v3 = 0;
    v44 = 16;
    goto LABEL_133;
  }

  v59 = v80;
  if ((v80 & 4) == 0)
  {
LABEL_167:
    if (!v15)
    {
      v3 = check_word(v5, v81, v19, __b, v14, v59);
      goto LABEL_180;
    }

    goto LABEL_168;
  }

  v60 = v15;
  memset(__b, 32, v14);
  v15 = v60;
  if (!v60)
  {
    v61 = __b;
    v3 = check_word(v5, v81, v19, __b, v14, v80);
    v62 = __src;
    do
    {
      v64 = *v61++;
      v63 = v64;
      v65 = *v62++;
      *(a2[1] + v65) = v63;
      --v52;
    }

    while (v52);
    goto LABEL_180;
  }

LABEL_168:
  v66 = *(v81 + 3524);
  if (v66 != 21 && v66 != 14)
  {
    goto LABEL_113;
  }

  if (v15 < 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = v15;
    v68 = v84;
    v69 = __dst;
    v70 = v15;
    do
    {
      v71 = *v69++;
      *v68++ = *(v8 + v71);
      --v70;
    }

    while (v70);
  }

  v84[v67] = 0;
  v3 = check_mac(v5, v81, v19, __b, v14, v84, v15, v59);
  if ((v59 & 4) != 0 && v14 >= 1)
  {
    v72 = v14;
    v73 = __src;
    v74 = __b;
    do
    {
      v76 = *v74++;
      v75 = v76;
      v77 = *v73++;
      *(a2[1] + v77) = v75;
      --v72;
    }

    while (v72);
  }

LABEL_180:
  if (!v3)
  {
LABEL_113:
    if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_184;
    }

    v33 = *(a2 + 9);
    v34 = *(v8 + v33);
    *(v8 + v33) = 0;
    v35 = roman2int((v8 + *(a2 + 8)));
    v3 = v35 > 0;
    if (v35 <= 0)
    {
      *(v8 + *(a2 + 9)) = v34;
      v36 = *(a2 + 9);
      v37 = *(a2 + 8);
      if (v37 + 1 < v36 - 1)
      {
        v38 = v37 + 1;
        do
        {
          v39 = *(*a2 + v38);
          v40 = v39 > 0x2D || ((1 << v39) & 0x200000060000) == 0;
          if (!v40 || v39 == 196)
          {
            v41 = *(v8 + v38);
            *(v8 + v38) = 0;
            v42 = roman2int((v8 + *(a2 + 8)));
            *(v8 + v38) = v41;
            v36 = *(a2 + 9);
            if (v42)
            {
              v43 = *(v8 + v36);
              *(v8 + v36) = 0;
              if (roman2int((v8 + v38 + 1)) <= 0)
              {
                v3 = v3;
              }

              else
              {
                v3 = (v3 + 1);
              }

              *(v8 + *(a2 + 9)) = v43;
              v36 = *(a2 + 9);
            }
          }

          ++v38;
        }

        while (v38 < v36 - 1);
      }
    }

    if (!v3)
    {
LABEL_184:
      if (*(a2 + 14))
      {
        v3 = 0;
      }

      else
      {
        status = an_get_status(v5[1]);
        if ((status & 4) != 0)
        {
          v57 = 128;
        }

        else
        {
          v57 = 8;
        }

        if ((status & 2) != 0)
        {
          v58 = 64;
        }

        else
        {
          v58 = v57;
        }

        if (status)
        {
          v44 = 32;
        }

        else
        {
          v44 = v58;
        }

        v3 = 0;
LABEL_133:
        *(a2 + 14) = v44;
      }
    }
  }

LABEL_134:
  v45 = *MEMORY[0x1E69E9840];
  return v3;
}