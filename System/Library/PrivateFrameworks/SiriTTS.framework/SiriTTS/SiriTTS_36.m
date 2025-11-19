uint64_t usextract_GetSentType(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, int a6, _WORD *a7)
{
  LOBYTE(v7) = a5;
  *a7 = 0;
  if (*a4 == 92)
  {
    v14 = a4 + 1;
    v15 = strchr(a4 + 1, 92);
    if (v15)
    {
      *a7 = v15 - a4 + 1;
      if ((v15 - a4 + 1) >= 3u)
      {
        v20 = *v14;
        if (v20 != 47)
        {
          v21 = v15 - a4 - 1;
          if ((*(a3 + 3092) & 0x80000000) != 0)
          {
            if (v15 - a4 - 1) == 2 && v20 == 84 && (((a4[2] - 77) >> 1) | ((a4[2] - 77) << 7)) < 6u && ((0x2Du >> (((a4[2] - 77) >> 1) | ((a4[2] - 77) << 7))))
            {
              return (0x30002010000uLL >> (8 * (((a4[2] - 77) >> 1) & 0x1Fu)));
            }

            else
            {
              if (a6)
              {
                log_OutPublic(*(a1 + 32), a2, 19018, "%s%.*s", v16, v17, v18, v19, "tag");
              }

              LOBYTE(v7) = 2;
            }
          }

          else
          {
            v22 = *(a3 + 2464);
            v23 = *v22;
            if (*v22)
            {
              v24 = 0;
              v25 = v21;
              while (strncmp(v23, v14, v25) || v23[v25])
              {
                v23 = v22[++v24];
                if (!v23)
                {
                  goto LABEL_11;
                }
              }

              LOBYTE(v7) = v24;
            }

            else
            {
LABEL_11:
              if (a6)
              {
                log_OutText(*(a1 + 32), a2, 3, 0, "Internal tag doesn't match the voice's tag alphabet, tag = %s", v17, v18, v19, v14);
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t usextract_finishPrompt(uint64_t result, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (*(result + 32) && *(result + 40))
  {
    result = log_HasTraceTuningDataSubscriber(*(a2 + 32));
    if (result)
    {
      v34 = *(v12 + 40);
      v33 = *(v12 + 32);
      log_OutTraceTuningData(*(a2 + 32), 302, "%s%s %s%s %s%s", v13, v14, a6, a7, a8, "BEG");
      *(v12 + 76);
      result = log_OutTraceTuningData(*(a2 + 32), 302, "%s%s %s%s", v15, v16, v17, v18, v19, "END");
    }

    if (!*(v12 + 76))
    {
      log_OutText(*(a2 + 32), a3, 3, 0, "    Warning: no match, conflicting phonetics", a6, a7, a8, v32);
      log_OutText(*(a2 + 32), a3, 3, 0, "    Carrier:  %s", v20, v21, v22, *(v12 + 40));
      result = log_OutText(*(a2 + 32), a3, 3, 0, "    Phonemes: %s", v23, v24, v25, *(v12 + 32));
    }
  }

  if (!*(v12 + 76))
  {
    v26 = *(v12 + 80);
    if (v26 == -1)
    {
      result = log_OutText(*(a2 + 32), a3, 3, 0, "    Warning: uninitialized prompt", a6, a7, a8, v32);
    }

    else if (v26 < a5)
    {
      v27 = *(*a4 + 3578);
      v28 = (v26 * v27) << 32;
      do
      {
        if (v27)
        {
          v29 = a4[451];
          v30 = v28;
          v31 = v27;
          do
          {
            result = v30 >> 30;
            *(v29 + (v30 >> 30)) = -1;
            v30 += 0x100000000;
            --v31;
          }

          while (v31);
        }

        ++v26;
        v28 += v27 << 32;
      }

      while (v26 != a5);
    }
  }

  *(v12 + 76) = 1;
  *(v12 + 52) = 0;
  *(v12 + 20) = 0;
  return result;
}

uint64_t usextract_readWordPrm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = 0;
  v12 = 0;
  *a5 = 0;
  v10 = 0;
  if (((*(a1 + 184))(a2, a3, a4, 13, &v13 + 2) & 0x80000000) == 0 && HIWORD(v13) == 1)
  {
    v10 = (*(a1 + 176))(a2, a3, a4, 13, &v12, &v13);
    if ((v10 & 0x80000000) == 0)
    {
      *a5 = atoi(v12);
    }
  }

  return v10;
}

uint64_t usextract_startNewPrompt(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, int a4)
{
  v8 = *a2;
  *(a1 + 80) = a4;
  **(a1 + 40) = 0;
  **(a1 + 32) = 0;
  v10 = (a1 + 8);
  v9 = *(a1 + 8);
  *(a1 + 48) = 0;
  result = usextract_matchPhon(*a2, a3, 0, v9, 0);
  if (result || (*(a1 + 48) = 1, result = usextract_matchPhon(*a2, a3, 1, *(a1 + 8), 0), result) || (*(a1 + 48) = 256, result = usextract_matchPhon(*a2, a3, 0, *(a1 + 8), 1), result) || (*(a1 + 48) = 257, result = usextract_matchPhon(*a2, a3, 1, *(a1 + 8), 1), result))
  {
    v12 = *(a1 + 49);
    if (*(a1 + 49))
    {
      do
      {
        if (**v10)
        {
          *(a1 + 8) = *v10 + 1;
          result = skipUnvalidPhonemes(v8, v10);
          *(a1 + 64) += 4 * *(v8 + 3578);
          v12 = *(a1 + 49);
        }

        *(a1 + 49) = --v12;
      }

      while (v12);
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 52) = 1;
    *(a1 + 76) = 0;
  }

  if (a4 >= 1 && *(a2[4] + a4 - 1) != 35 && !*(v8 + 2692))
  {
    *(a1 + 56) = 1;
  }

  return result;
}

char *usextract_handleWordStart(uint64_t a1, void *a2, char *__s, int a4)
{
  if (a4 >= 1)
  {
    v8 = a2[72];
    if (v8)
    {
      v9 = v8 + a4;
      if (*(v9 - 1) <= 1u)
      {
        *(v9 - 1) = 2;
      }
    }
  }

  v10 = *(a1 + 672);
  LODWORD(v11) = *(a1 + 672);
  if (v10 < a4 && (v10 & 0x80000000) == 0 && a2[74])
  {
    v12 = *(a1 + 672);
    do
    {
      v13 = a2[74];
      if (*(v13 + v12) <= 1u)
      {
        *(v13 + v12) = 2;
      }

      ++v12;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a1 + 672);
  }

  v16 = (v11 & 0x8000u) == 0 && a2[68] != 0 && v11 < a4;
  if (v11 == *(a1 + 674))
  {
    if (v16)
    {
      v11 = v11;
      do
      {
        v17 = a2[68];
        if (*(v17 + v11) >= 0xAu)
        {
          *(v17 + v11) = 9;
        }

        ++v11;
      }

      while (a4 != v11);
      LODWORD(v11) = *(a1 + 672);
    }

    if (v11 < a4 && (v11 & 0x80000000) == 0 && a2[180])
    {
      v11 = v11;
      do
      {
        v18 = a2[180];
        if (*(v18 + v11) >= 0xAu)
        {
          *(v18 + v11) = 9;
        }

        ++v11;
      }

      while (a4 != v11);
    }
  }

  else
  {
    if (v16)
    {
      v11 = v11;
      do
      {
        v19 = a2[68];
        if (*(v19 + v11) >= 0xBu)
        {
          *(v19 + v11) = 10;
        }

        ++v11;
      }

      while (a4 != v11);
      LODWORD(v11) = *(a1 + 672);
    }

    if (v11 < a4 && (v11 & 0x80000000) == 0 && a2[180])
    {
      v11 = v11;
      do
      {
        v20 = a2[180];
        if (*(v20 + v11) >= 0xBu)
        {
          *(v20 + v11) = 10;
        }

        ++v11;
      }

      while (a4 != v11);
    }
  }

  *(a1 + 672) = a4;
  *(a1 + 674) = a4;
  *(a1 + 684) = -1;
  *(a1 + 688) = -1;
  *(a1 + 10) = 0;
  *(a1 + 22) = 0;
  *(a1 + 35) = 1;
  *(a1 + 38) = 1;
  if (strchr(__s, 45))
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  *(a1 + 11) = v21;
  *(a1 + 23) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = strchr(__s, 34) != 0;
  result = strchr(__s, 34);
  if (result)
  {
    if (*(a1 + 177) <= 1u)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 180) = v23;
  if (*(a1 + 70) <= 1u)
  {
    *(a1 + 70) = 2;
  }

  if (*(a1 + 72) <= 1u)
  {
    *(a1 + 72) = 2;
  }

  if (*(a1 + 78) <= 1u)
  {
    *(a1 + 78) = 2;
  }

  if (*(a1 + 74) <= 1u)
  {
    *(a1 + 74) = 2;
  }

  if (*(a1 + 67) >= 0xCu)
  {
    *(a1 + 67) = 11;
  }

  if (*(a1 + 179) >= 0xCu)
  {
    *(a1 + 179) = 11;
  }

  if (a4 >= 2)
  {
    *(a2[14] + a4 - 1) = 2;
  }

  *(a1 + 217) = 0;
  return result;
}

uint64_t usextract_handleBoundaryShape(uint64_t a1, void *a2)
{
  result = a2[417];
  if (result && (result = usextract_getIndex(result, "BNDSHAPE", ""), (result & 0x80000000) == 0) && (v5 = *(*(a1 + 656) + result), v6 = *(*(a2[418] + 8 * result) + 8 * v5), *(a1 + 197) = v5, v7 = a2[309], (v8 = *v7) != 0))
  {
    v9 = 0;
    v10 = v7 + 1;
    while (1)
    {
      result = strcmp(v6, v8);
      if (!result)
      {
        break;
      }

      v8 = v10[v9++];
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 708) = 1;
  }

  else
  {
LABEL_7:
    LOBYTE(v9) = 0;
    *(a1 + 708) = 0;
  }

  *(a1 + 174) = v9;
  return result;
}

uint64_t usextract_handleWordEnd(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  if (*(result + 72) == 1)
  {
    if (*(result + 20))
    {
      v11 = *(*a5 + 3578);
      if (*(*a5 + 3578))
      {
        v12 = *(result + 64);
        v13 = (a5[451] + 4 * *(*a5 + 3578) * a7);
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          --v11;
        }

        while (v11);
      }
    }
  }

  *(a2 + 67) = 2060;
  *(a2 + 74) = 2;
  *(a2 + 78) = 2;
  *(a2 + 69) = 9;
  *(a2 + 186) = 9;
  *(a2 + 178) = 3085;
  if (*(a2 + 674) == a7)
  {
    v15 = 19017;
  }

  else
  {
    if (*(a2 + 672) != a7)
    {
      goto LABEL_11;
    }

    v15 = 19013;
  }

  result = log_OutPublic(*(a3 + 32), a4, v15, "%s%s", a5, a6, a7, a8, "word");
LABEL_11:
  v16 = *(a2 + 15);
  if (v16 != 255)
  {
    *(a2 + 15) = v16 + 1;
  }

  *(a2 + 14) = 2;
  if (a5[36])
  {
    v17 = *(a2 + 680);
    if (v17 >= *(a2 + 674) && v17 < v8)
    {
      v18 = *(a2 + 680);
      do
      {
        v19 = a5[36];
        if (*(v19 + v18) == 1)
        {
          *(v19 + v18) = 3;
        }

        ++v18;
      }

      while (v8 != v18);
    }
  }

  v20 = a5[23] + v8;
  if (*(v20 - 1) >= 2u)
  {
    *(v20 - 1) = 4;
  }

  v21 = a5[39];
  if (v21)
  {
    v22 = *(a2 + 38);
    if (v22 >= 2)
    {
      result = memset((v21 + *(a2 + 674)), v22, (v8 - *(a2 + 674)) & ~((v8 - *(a2 + 674)) >> 31));
    }
  }

  if ((*(a2 + 12) | 2) == 3)
  {
    *(a2 + 12) = 2;
  }

  return result;
}

uint64_t usextract_handlePhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, signed int a7)
{
  v49 = 0;
  v48 = 0;
  if (a6[78])
  {
    result = (*(a2 + 176))(a3, a4, a5, 4, &v48, &v49 + 2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*v48 - 80 > 9)
    {
      v15 = 3;
    }

    else
    {
      v15 = byte_1C37B1428[(*v48 - 80)];
    }

    *(a1 + 77) = v15;
  }

  result = (*(a2 + 168))(a3, a4, a5, 7, 1, &v49, &v49 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (*(a1 + 708))
    {
      v16 = v49 == 2;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = 7;
      *(a1 + 78) = 7;
      *(a1 + 70) = 117901063;
      *(a1 + 74) = 1799;
      LODWORD(v18) = *(a1 + 672);
      v27 = *(a1 + 664);
      if (v18 == v27)
      {
        v20 = 6;
      }

      else
      {
        v20 = 7;
      }

      v21 = 8;
      *(a1 + 67) = 8;
      v28 = *(a1 + 666);
      if (v18 == v28)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      *(a1 + 179) = 5;
      v29 = *(a1 + 674);
      if (v29 == v27)
      {
        v22 = 6;
      }

      else
      {
        v22 = 7;
      }

      if (v29 == v28)
      {
        v25 = 3;
      }

      else
      {
        v25 = 4;
      }

      *(a1 + 69) = 8;
      *(a1 + 186) = 5;
      *(a1 + 666) = a7;
      *(a1 + 664) = a7;
      *(a1 + 700) = 0;
      v26 = 2;
      v23 = 7;
    }

    else if (v49 == 2)
    {
      v17 = 3;
      *(a1 + 78) = 3;
      *(a1 + 70) = 50529027;
      *(a1 + 74) = 771;
      LODWORD(v18) = *(a1 + 672);
      v19 = *(a1 + 664);
      if (v18 == v19)
      {
        v20 = 6;
      }

      else
      {
        v20 = 7;
      }

      v21 = 8;
      *(a1 + 67) = 8;
      *(a1 + 179) = 8;
      if (*(a1 + 674) == v19)
      {
        v22 = 6;
      }

      else
      {
        v22 = 7;
      }

      *(a1 + 69) = 8;
      *(a1 + 186) = 8;
      *(a1 + 664) = a7;
      v23 = 13;
      v24 = v20;
      v25 = v22;
      v26 = 13;
    }

    else if (v49 == 1)
    {
      v17 = 4;
      *(a1 + 78) = 4;
      *(a1 + 70) = 67372036;
      *(a1 + 74) = 1028;
      LODWORD(v18) = *(a1 + 672);
      v44 = *(a1 + 668);
      if (v18 == v44)
      {
        v20 = 3;
      }

      else
      {
        v20 = 4;
      }

      *(a1 + 67) = 5;
      v45 = *(a1 + 666);
      if (v18 == v45)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      *(a1 + 179) = 5;
      v46 = *(a1 + 674);
      if (v46 == v44)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }

      if (v46 == v45)
      {
        v25 = 3;
      }

      else
      {
        v25 = 4;
      }

      *(a1 + 69) = 5;
      *(a1 + 186) = 5;
      *(a1 + 668) = a7;
      *(a1 + 666) = a7;
      *(a1 + 664) = a7;
      *(a1 + 700) = 0;
      *(a1 + 692) = 0;
      v23 = 7;
      v21 = 2;
      v26 = 2;
    }

    else
    {
      v17 = 5;
      *(a1 + 78) = 5;
      *(a1 + 70) = 84215045;
      *(a1 + 74) = 1285;
      LODWORD(v18) = *(a1 + 672);
      v47 = *(a1 + 670);
      v20 = v18 != v47;
      *(a1 + 67) = 2;
      *(a1 + 179) = 2;
      v22 = *(a1 + 674) != v47;
      *(a1 + 69) = 2;
      *(a1 + 186) = 2;
      *(a1 + 664) = vdup_n_s16(a7);
      v23 = 6;
      *(a1 + 692) = 0u;
      v21 = 1;
      v24 = v18 != v47;
      v25 = v22;
      v26 = 1;
    }

    if (a7 != -32768)
    {
      v30 = a6[72];
      if (v30)
      {
        *(v30 + a7 - 1) = v17;
        LOWORD(v18) = *(a1 + 672);
        v17 = *(a1 + 73);
      }
    }

    *(a1 + 71) = 0;
    if (a7 > v18 && a6[74])
    {
      v18 = v18;
      do
      {
        *(a6[74] + v18++) = v17;
      }

      while (v18 != a7);
    }

    *(a1 + 73) = 1;
    if (*(a1 + 674) < a7 && a6[76] != 0)
    {
      v32 = *(a1 + 674);
      v33 = *(a1 + 75);
      do
      {
        *(a6[76] + v32++) = v33;
      }

      while (v32 != a7);
    }

    *(a1 + 75) = 2;
    v34 = *(a1 + 672);
    if (v34 < a7 && (v34 & 0x80000000) == 0 && a6[68])
    {
      v35 = *(a1 + 672);
      do
      {
        v36 = a6[68];
        if (*(v36 + v35) > v20)
        {
          *(v36 + v35) = v20;
        }

        ++v35;
      }

      while (a7 != v35);
      LOWORD(v34) = *(a1 + 672);
    }

    if (a7 > v34 && (v34 & 0x8000) == 0 && a6[180])
    {
      v37 = v34;
      do
      {
        v38 = a6[180];
        if (*(v38 + v37) > v24)
        {
          *(v38 + v37) = v24;
        }

        ++v37;
      }

      while (a7 != v37);
    }

    v39 = *(a1 + 674);
    if (v39 < a7 && (v39 & 0x80000000) == 0 && a6[70])
    {
      v40 = *(a1 + 674);
      do
      {
        v41 = a6[70];
        if (*(v41 + v40) > v22)
        {
          *(v41 + v40) = v22;
        }

        ++v40;
      }

      while (a7 != v40);
      LOWORD(v39) = *(a1 + 674);
    }

    if (a7 > v39 && (v39 & 0x8000) == 0 && a6[187])
    {
      v42 = v39;
      do
      {
        v43 = a6[187];
        if (*(v43 + v42) > v25)
        {
          *(v43 + v42) = v25;
        }

        ++v42;
      }

      while (a7 != v42);
    }

    usextract_updateLastStrAcc(a6, a7, *(a1 + 676), v21);
    return usextract_updateLastStrAccShp(a6, a7, *(a1 + 678), v23, v26);
  }

  return result;
}

uint64_t usextract_updateLastStrAcc(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (a3 >= 1 && a2 >= 1)
  {
    LODWORD(v4) = (a2 - 1);
    if (*(result + 552) && v4 >= a3)
    {
      do
      {
        v6 = *(result + 552);
        v4 = v4;
        v7 = *(v6 + v4);
        if (v7 <= 5 && v7 > a4)
        {
          *(v6 + v4) = a4;
        }

        LODWORD(v4) = (v4 - 1);
      }

      while (v4 >= a3);
    }
  }

  return result;
}

uint64_t usextract_updateLastStrAccShp(uint64_t result, int a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a3 >= 1 && a2 >= 1)
  {
    LODWORD(v5) = (a2 - 1);
    if (*(result + 1432) && v5 >= a3)
    {
      do
      {
        v7 = *(result + 1432);
        v5 = v5;
        v8 = *(v7 + v5);
        v9 = v8 <= 5 && v8 > a5;
        v10 = a5;
        if (v9 || (v8 <= 0xA ? (v11 = v8 > a4) : (v11 = 0), v10 = a4, v11))
        {
          *(v7 + v5) = v10;
        }

        LODWORD(v5) = (v5 - 1);
      }

      while (v5 >= a3);
    }
  }

  return result;
}

uint64_t usextract_setUnknownOnPauses(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        v2 = *(result + 536);
        if (v2)
        {
          *(v2 + v1) = 4;
        }

        v3 = *(result + 1424);
        if (v3)
        {
          *(v3 + v1) = 100;
        }

        v4 = *(result + 544);
        if (v4)
        {
          *(v4 + v1) = 13;
        }

        v5 = *(result + 1440);
        if (v5)
        {
          *(v5 + v1) = 100;
        }

        v6 = *(result + 552);
        if (v6)
        {
          *(v6 + v1) = 9;
        }

        v7 = *(result + 1432);
        if (v7)
        {
          *(v7 + v1) = 100;
        }

        v8 = *(result + 560);
        if (v8)
        {
          *(v8 + v1) = 10;
        }

        v9 = *(result + 1496);
        if (v9)
        {
          *(v9 + v1) = 100;
        }

        v10 = *(result + 568);
        if (v10)
        {
          *(v10 + v1) = 6;
        }

        v11 = *(result + 576);
        if (v11)
        {
          *(v11 + v1) = 6;
        }

        v12 = *(result + 584);
        if (v12)
        {
          *(v12 + v1) = 6;
        }

        v13 = *(result + 632);
        if (v13)
        {
          *(v13 + v1) = 6;
        }

        v14 = *(result + 592);
        if (v14)
        {
          *(v14 + v1) = 6;
        }

        v15 = *(result + 600);
        if (v15)
        {
          *(v15 + v1) = 6;
        }

        v16 = *(result + 608);
        if (v16)
        {
          *(v16 + v1) = 6;
        }

        v17 = *(result + 624);
        if (v17)
        {
          *(v17 + v1) = 3;
        }
      }

      ++v1;
    }

    while (v1 < *(result + 10));
  }

  return result;
}

size_t usextract_setNextDifferentiator(size_t result, uint64_t a2)
{
  if (((*(a2 + 10) - 2) & 0x8000) == 0)
  {
    v3 = result;
    v4 = (*(a2 + 10) - 2);
    do
    {
      v5 = *(a2 + 32);
      if (*(v5 + v4 + 1) == 35)
      {
        result = strlen((v3 + 2400));
        v6 = result + 1;
      }

      else if (*(v5 + v4) == 35)
      {
        v6 = 0;
      }

      else
      {
        if (!*(*(a2 + 112) + v4))
        {
          v7 = *(a2 + 616);
          v6 = *(v7 + v4 + 1);
          goto LABEL_10;
        }

        v6 = *(*(a2 + 264) + v4 + 1);
      }

      v7 = *(a2 + 616);
LABEL_10:
      *(v7 + v4) = v6;
    }

    while (v4-- > 0);
  }

  return result;
}

uint64_t usextract_setPrePostSylBnd(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        *(*(result + 72) + v1) = 1;
        *(*(result + 80) + v1) = 1;
        if (v1 + 1 < *(result + 10))
        {
          *(*(result + 80) + v1 + 1) = 1;
        }
      }

      if (v1 && v1 + 1 < *(result + 10) && *(*(result + 32) + v1 + 1) == 35)
      {
        *(*(result + 112) + v1) = 3;
      }

      if (*(*(result + 112) + v1))
      {
        *(*(result + 72) + v1++) = 1;
        if (v1 < *(result + 10))
        {
          *(*(result + 80) + v1) = 1;
        }
      }

      else
      {
        ++v1;
      }
    }

    while (v1 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setWordPhrs(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    for (i = 0; i < *(result + 10); ++i)
    {
      if (*(*(result + 32) + i) == 35)
      {
        v2 = *(result + 176);
      }

      else
      {
        v3 = *(*(result + 104) + i);
        v2 = *(result + 176);
        if (v3 > 2)
        {
          if (v3 == 3)
          {
            *(v2 + i) = 0;
            continue;
          }

          if (v3 == 4)
          {
            *(v2 + i) = 2;
            continue;
          }
        }

        else
        {
          if (v3 == 1)
          {
            *(v2 + i) = 3;
            continue;
          }

          if (v3 == 2)
          {
            *(v2 + i) = 1;
            continue;
          }
        }
      }

      *(v2 + i) = 4;
    }
  }

  return result;
}

uint64_t usextract_setFineSylPosInPhrs(uint64_t result)
{
  if (((*(result + 10) - 1) & 0x8000) == 0)
  {
    v1 = result;
    v2 = 0;
    v3 = (*(result + 10) - 1);
    do
    {
      if (!v3 || v3 == *(v1 + 10) - 1 || *(*(v1 + 112) + v3) == 3)
      {
        v4 = *(*(v1 + 128) + v3);
        v2 = *(*(v1 + 128) + v3);
      }

      else
      {
        v4 = *(*(v1 + 128) + v3);
      }

      result = usextract_getCurFineSyl(v4, v2);
      *(*(v1 + 144) + v3) = result;
    }

    while (v3-- > 0);
  }

  return result;
}

uint64_t usextract_finalizeSylType(uint64_t result)
{
  LOWORD(v1) = *(result + 10) - 1;
  if ((v1 & 0x8000) == 0)
  {
    v2 = 0;
    v3 = 0;
    v1 = v1;
    while (1)
    {
      v4 = v2;
      if (*(*(result + 112) + v1) == 3)
      {
        ++v3;
        v2 = 0;
      }

      if (*(*(result + 88) + v1) != 3)
      {
        goto LABEL_16;
      }

      if (*(*(result + 112) + v1))
      {
        ++v2;
      }

      else
      {
        v2 = v4;
      }

      if (v2 != 1)
      {
        goto LABEL_16;
      }

      v5 = *(result + 160);
      if (v3 == 1)
      {
        break;
      }

      if (*(v5 + v1) == 2)
      {
        v6 = 5;
        goto LABEL_14;
      }

LABEL_15:
      v2 = 1;
LABEL_16:
      v7 = *(result + 160);
      if (*(v7 + v1) == 4 && *(*(result + 144) + v1) == 4 && !*(*(result + 128) + v1))
      {
        if (v3 == 1)
        {
          v8 = 6;
        }

        else
        {
          v8 = 5;
        }

        *(v7 + v1) = v8;
      }

      if (v1-- <= 0)
      {
        return result;
      }
    }

    v6 = 6;
LABEL_14:
    *(v5 + v1) = v6;
    goto LABEL_15;
  }

  return result;
}

uint64_t usextract_setSylPos(uint64_t result, int a2)
{
  if (((*(result + 10) - 1) & 0x8000) == 0)
  {
    v2 = (*(result + 10) - 1) + 1;
    do
    {
      v3 = v2 - 1;
      if (*(*(result + 32) + v2 - 1) == 35)
      {
        v4 = *(result + 152) + v2;
      }

      else
      {
        v5 = *(*(result + 128) + v2 - 1);
        if (*(*(result + 144) + v2 - 1) != 4)
        {
          if (*(*(result + 128) + v2 - 1))
          {
            v6 = *(*(result + 96) + v2 - 1);
            switch(v6)
            {
              case 3:
                *(*(result + 152) + v2 - 1) = 6;
                break;
              case 2:
                *(*(result + 152) + v2 - 1) = 5;
                break;
              case 1:
                *(*(result + 152) + v2 - 1) = 4;
                break;
            }
          }

          else
          {
            *(*(result + 152) + v2 - 1) = 0;
          }

          goto LABEL_6;
        }

        if (!*(*(result + 128) + v2 - 1))
        {
          *(*(result + 152) + v2 - 1) = 2;
          goto LABEL_6;
        }

        v4 = *(result + 152) + v2;
        if (v3 < a2)
        {
          *(v4 - 1) = 1;
          goto LABEL_6;
        }
      }

      *(v4 - 1) = 3;
LABEL_6:
      v2 = v3;
    }

    while (v3 > 0);
  }

  return result;
}

uint64_t usextract_finalizeNrSylInPhrs(uint64_t result)
{
  LOWORD(v1) = *(result + 10) - 1;
  if ((v1 & 0x8000) == 0)
  {
    v1 = v1;
    LOBYTE(v2) = 1;
    do
    {
      v3 = *(result + 128);
      if (*(*(result + 112) + v1) == 3)
      {
        v2 = *(v3 + v1);
        if (v2 != 255)
        {
          *(v3 + v1) = v2 + 1;
          LOBYTE(v2) = *(*(result + 128) + v1);
        }
      }

      else
      {
        *(v3 + v1) = v2;
      }
    }

    while (v1-- > 0);
  }

  return result;
}

uint64_t usextract_finalizePhnCntSyl(uint64_t result)
{
  if (((*(result + 10) - 1) & 0x8000) == 0)
  {
    v1 = (*(result + 10) - 1);
    v2 = 1;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        *(*(result + 192) + v1) = 1;
      }

      else
      {
        v3 = *(result + 192);
        if (*(*(result + 112) + v1))
        {
          v2 = *(v3 + v1);
        }

        else
        {
          *(v3 + v1) = v2;
        }
      }
    }

    while (v1-- > 0);
  }

  return result;
}

uint64_t usextract_setNrSylInIP4(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = -1;
    v3 = 0xFFFFLL;
    v4 = 1;
    v5 = 1;
    do
    {
      v6 = *(*(result + 576) + v1);
      if (v6 <= 7)
      {
        if (((1 << v6) & 0x36) != 0)
        {
          if (((v4 + 1) & 0x100) != 0)
          {
            v4 = -1;
          }

          else
          {
            ++v4;
          }

          if (((v5 + 1) & 0x100) != 0)
          {
            v5 = -1;
          }

          else
          {
            ++v5;
          }
        }

        else
        {
          v7 = v1;
          if (((1 << v6) & 0xC0) != 0)
          {
            LOWORD(v8) = v3 + 1;
            v9 = v1 + 1;
            if (v1 >= v8 && *(result + 1416))
            {
              v8 = v8;
              do
              {
                *(*(result + 1416) + v8++) = v4;
              }

              while (v9 != v8);
            }

            LOWORD(v10) = v2 + 1;
            v4 = 1;
            if (v1 >= v10 && *(result + 1408))
            {
              v10 = v10;
              do
              {
                *(*(result + 1408) + v10++) = v5;
              }

              while (v9 != v10);
              v5 = 1;
              v4 = 1;
            }

            else
            {
              v5 = 1;
            }

            v2 = v1;
            goto LABEL_33;
          }

          if (v6 == 3)
          {
            LOWORD(v11) = v3 + 1;
            if (v1 >= (v3 + 1) && *(result + 1416))
            {
              v11 = v11;
              do
              {
                *(*(result + 1416) + v11++) = v4;
              }

              while (v1 + 1 != v11);
            }

            if (((v5 + 1) & 0x100) != 0)
            {
              v5 = -1;
            }

            else
            {
              ++v5;
            }

            v4 = 1;
            goto LABEL_33;
          }
        }
      }

      v7 = v3;
LABEL_33:
      ++v1;
      v3 = v7;
    }

    while (v1 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setSylNrInIP4(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = -1;
    do
    {
      v4 = *(*(result + 576) + v1);
      if (v4 <= 7)
      {
        if (((1 << v4) & 0xE) != 0)
        {
          if (((v2 + 1) & 0x100) != 0)
          {
            v2 = -1;
          }

          else
          {
            ++v2;
          }

          goto LABEL_21;
        }

        if (((1 << v4) & 0xB0) != 0)
        {
          LOWORD(v5) = v3 + 1;
          if (v1 >= (v3 + 1) && *(result + 1456))
          {
            v5 = v5;
            do
            {
              *(*(result + 1456) + v5++) = v2;
            }

            while (v1 + 1 != v5);
          }

LABEL_19:
          v2 = 0;
          goto LABEL_20;
        }

        if (v4 == 6)
        {
          v2 = 0;
          LOWORD(v6) = v3 + 1;
          if (v1 >= v6 && *(result + 1456))
          {
            v6 = v6;
            do
            {
              *(*(result + 1456) + v6++) = 0;
            }

            while (v1 + 1 != v6);
            goto LABEL_19;
          }

LABEL_20:
          v3 = v1;
        }
      }

LABEL_21:
      ++v1;
    }

    while (v1 < *(result + 10));
  }

  return result;
}

uint64_t usextract_finalizeFineSylPosInIP4(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0xFFFFLL;
    while (1)
    {
      v5 = *(*(v1 + 576) + v2);
      if (v5 > 7)
      {
        break;
      }

      if (((1 << v5) & 0xE) != 0)
      {
        v10 = v4 + 1;
        v7 = v2 + 1;
        v11 = *(v1 + 1456);
        v12 = v3;
        result = usextract_getCurFineSyl(v3, *(v11 + v2));
        if (v2 >= v10 && v11)
        {
          v13 = v10;
          do
          {
            *(*(v1 + 1456) + v13++) = result;
          }

          while (v7 != v13);
        }

        if (((v12 + 1) & 0x100) != 0)
        {
          v3 = -1;
        }

        else
        {
          v3 = v12 + 1;
        }

        goto LABEL_25;
      }

      if (((1 << v5) & 0xB0) != 0)
      {
        v6 = v4 + 1;
        v7 = v2 + 1;
        v8 = *(v1 + 1456);
        result = usextract_getCurFineSyl(v3, *(v8 + v2));
        v3 = 0;
        if (v2 < v6 || !v8)
        {
          goto LABEL_25;
        }

        v9 = v6;
        do
        {
          *(*(v1 + 1456) + v9++) = result;
        }

        while (v7 != v9);
      }

      else
      {
        if (v5 != 6)
        {
          break;
        }

        v3 = 0;
        v14 = v4 + 1;
        v7 = v2 + 1;
        if (v2 < v14 || !*(v1 + 1456))
        {
          goto LABEL_25;
        }

        v15 = v14;
        do
        {
          *(*(v1 + 1456) + v15++) = 7;
        }

        while (v7 != v15);
      }

      v3 = 0;
LABEL_25:
      v4 = v2;
      v2 = v7;
      if (v7 >= *(v1 + 10))
      {
        return result;
      }
    }

    v7 = v2 + 1;
    v2 = v4;
    goto LABEL_25;
  }

  return result;
}

uint64_t usextract_setSylStressedPrm(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = -1;
    while (1)
    {
      v3 = *(*(result + 576) + v1);
      if ((v3 - 1) < 5)
      {
        break;
      }

      if (v3 == 6)
      {
        v7 = v1 + 1;
        v13 = (v2 + 1);
        if (v1 >= v13 && *(result + 1472))
        {
          v14 = v13;
          do
          {
            *(*(result + 1472) + v14++) = 0;
          }

          while (v7 != v14);
        }

        if (v1 >= v13 && *(result + 1464))
        {
          do
          {
            *(*(result + 1464) + v13++) = 0;
          }

          while (v7 != v13);
        }

        goto LABEL_31;
      }

      if (v3 == 7)
      {
        break;
      }

      v7 = v1 + 1;
LABEL_32:
      v1 = v7;
      if (v7 >= *(result + 10))
      {
        return result;
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 = *(result + 1472);
    }

    else
    {
      v4 = *(result + 1472);
      if (*(*(result + 1432) + v2) <= 0xBu)
      {
        LOWORD(v5) = v2 + 1;
        if (v1 >= (v2 + 1) && v4)
        {
          v6 = *(*(result + 1424) + v2);
          v5 = v5;
          do
          {
            *(*(result + 1472) + v5++) = v6;
          }

          while (v1 + 1 != v5);
        }

        goto LABEL_19;
      }
    }

    LOWORD(v8) = v2 + 1;
    if (v1 >= (v2 + 1) && v4)
    {
      v8 = v8;
      do
      {
        *(*(result + 1472) + v8++) = 0;
      }

      while (v1 + 1 != v8);
    }

LABEL_19:
    v7 = v1 + 1;
    if (*(result + 10) - 1 <= v1)
    {
      v9 = *(result + 1464);
    }

    else
    {
      v9 = *(result + 1464);
      if (*(*(result + 1432) + v7) <= 0xBu)
      {
        if ((v2 + 1) < v7 && v9)
        {
          v10 = *(*(result + 1424) + v7);
          v11 = (v2 + 1);
          do
          {
            *(*(result + 1464) + v11++) = v10;
          }

          while (v11 != v7);
        }

LABEL_31:
        v2 = v1;
        goto LABEL_32;
      }
    }

    LOWORD(v12) = v2 + 1;
    if (v1 >= v12 && v9)
    {
      v12 = v12;
      do
      {
        *(*(result + 1464) + v12++) = 0;
      }

      while (v7 != v12);
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t usextract_setWrdBndTone(uint64_t result)
{
  v1 = *(result + 10);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = -1;
    while (1)
    {
      v4 = *(result + 576);
      v5 = *(v4 + v2);
      if ((v5 - 2) < 4)
      {
        break;
      }

      if (v5 == 6)
      {
        v10 = v2 + 1;
        v19 = (v3 + 1);
        if (v2 >= v19 && *(result + 1488))
        {
          v20 = (v3 + 1);
          do
          {
            *(*(result + 1488) + v20++) = 0;
          }

          while (v10 != v20);
        }

        if (v2 >= v19 && *(result + 1480))
        {
          do
          {
            *(*(result + 1480) + v19++) = 0;
          }

          while (v10 != v19);
        }

        goto LABEL_33;
      }

      if (v5 == 7)
      {
        break;
      }

      v10 = v2 + 1;
LABEL_34:
      LOWORD(v1) = *(result + 10);
      v2 = v10;
      if (v10 >= v1)
      {
        return result;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v6 = *(v4 + v3);
      if (v3)
      {
        v7 = v6 == 6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = *(*(result + 1400) + v3 - v8);
    }

    LODWORD(v11) = (v3 + 1);
    v10 = v2 + 1;
    v12 = (v2 + 1);
    if (v11 < (v2 + 1) && *(result + 1488))
    {
      v13 = v11;
      do
      {
        *(*(result + 1488) + v13++) = v9;
      }

      while (v12 != v13);
      LOWORD(v1) = *(result + 10);
    }

    if (v2 >= v1 - 1)
    {
      v18 = 0;
    }

    else
    {
      v14 = v2 < v1 - 2 && *(*(result + 576) + v10) == 6;
      v15 = *(result + 1400);
      v16 = v15 + v2 + 2;
      v17 = (v15 + v10);
      if (v14)
      {
        v17 = v16;
      }

      v18 = *v17;
    }

    if (v11 < v12 && *(result + 1480))
    {
      v11 = v11;
      do
      {
        *(*(result + 1480) + v11++) = v18;
      }

      while (v12 != v11);
    }

LABEL_33:
    v3 = v2;
    goto LABEL_34;
  }

  return result;
}

uint64_t usextract_setIP4PosInSent(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = 1;
    v3 = -1;
    v4 = -1;
    v5 = 1;
    do
    {
      v6 = *(*(result + 576) + v1);
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          LOWORD(v15) = v4 + 1;
          v8 = v1 + 1;
          if (v1 >= v15 && *(result + 1512))
          {
            v15 = v15;
            do
            {
              *(*(result + 1512) + v15++) = v2;
            }

            while (v8 != v15);
          }

          v2 = 0;
          v4 = v1;
          goto LABEL_39;
        }

        if (v6 == 4)
        {
LABEL_7:
          LOWORD(v7) = v4 + 1;
          v8 = v1 + 1;
          if (v1 >= (v4 + 1) && *(result + 1512))
          {
            v7 = v7;
            do
            {
              *(*(result + 1512) + v7++) = 2;
            }

            while (v8 != v7);
          }

          v9 = v3 + 1;
          v2 = 1;
          if (v1 >= v9 && *(result + 1504))
          {
            v10 = v9;
            do
            {
              *(*(result + 1504) + v10++) = v5;
            }

            while (v8 != v10);
            v5 = 0;
            v2 = 1;
          }

          else
          {
            v5 = 0;
          }

LABEL_38:
          v4 = v1;
          v3 = v1;
          goto LABEL_39;
        }
      }

      else
      {
        switch(v6)
        {
          case 5u:
            LOWORD(v11) = v4 + 1;
            v8 = v1 + 1;
            if (v1 >= v11 && *(result + 1512))
            {
              v11 = v11;
              do
              {
                *(*(result + 1512) + v11++) = 2;
              }

              while (v8 != v11);
            }

            LOWORD(v12) = v3 + 1;
            if (v1 >= v12 && *(result + 1504))
            {
              v12 = v12;
              do
              {
                *(*(result + 1504) + v12++) = 2;
              }

              while (v8 != v12);
            }

            goto LABEL_38;
          case 6u:
            LOWORD(v13) = v4 + 1;
            v8 = v1 + 1;
            if (v1 >= v13 && *(result + 1512))
            {
              v13 = v13;
              do
              {
                *(*(result + 1512) + v13++) = 100;
              }

              while (v8 != v13);
            }

            LOWORD(v14) = v3 + 1;
            if (v1 >= v14 && *(result + 1504))
            {
              v14 = v14;
              do
              {
                *(*(result + 1504) + v14++) = 100;
              }

              while (v8 != v14);
            }

            goto LABEL_38;
          case 7u:
            goto LABEL_7;
        }
      }

      v8 = v1 + 1;
LABEL_39:
      v1 = v8;
    }

    while (v8 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setRhythmRelated(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0xFFFFLL;
    do
    {
      v11 = *(*(result + 576) + v1);
      if ((v11 - 1) < 5)
      {
        goto LABEL_4;
      }

      if (v11 == 6)
      {
        v15 = v1 + 1;
        v23 = (v10 + 1);
        if (v1 >= v23 && *(result + 1528))
        {
          v24 = (v10 + 1);
          do
          {
            *(*(result + 1528) + v24++) = 100;
          }

          while (v15 != v24);
        }

        if (v1 >= v23 && *(result + 1544))
        {
          v25 = (v10 + 1);
          do
          {
            *(*(result + 1544) + v25++) = 100;
          }

          while (v15 != v25);
        }

        if (v1 >= v23 && *(result + 1560))
        {
          v26 = (v10 + 1);
          do
          {
            *(*(result + 1560) + v26++) = 100;
          }

          while (v15 != v26);
        }

        v9 = 0;
        if (v1 >= v23 && *(result + 1576))
        {
          do
          {
            *(*(result + 1576) + v23++) = 100;
          }

          while (v15 != v23);
          v9 = 0;
          v8 = 0;
          v7 = 0;
          v6 = 0;
          v5 = 0;
          v4 = 0;
          v3 = 0;
          v2 = 0;
        }

        else
        {
          v8 = 0;
          v7 = 0;
          v6 = 0;
          v5 = 0;
          v4 = 0;
          v3 = 0;
          v2 = 0;
        }

        goto LABEL_68;
      }

      if (v11 == 7)
      {
LABEL_4:
        v12 = *(*(result + 1432) + v1);
        if (v12 > 0xB)
        {
          v9 = 0;
          v5 = 1;
        }

        v13 = (v12 - 1);
        if (v13 < 0xB)
        {
          v8 = 0;
          v4 = 1;
        }

        if (v13 < 0xA)
        {
          v7 = 0;
          v3 = 1;
        }

        v14 = v12 - 6;
        if ((v12 - 6) >= 0xFBu)
        {
          v6 = 0;
        }

        v15 = v1 + 1;
        v16 = (v10 + 1);
        if (v1 >= v16 && *(result + 1528))
        {
          v17 = v16;
          do
          {
            *(*(result + 1528) + v17++) = v9;
          }

          while (v15 != v17);
        }

        if (v1 >= v16 && *(result + 1544))
        {
          v18 = v16;
          do
          {
            *(*(result + 1544) + v18++) = v8;
          }

          while (v15 != v18);
        }

        if (v1 >= v16 && *(result + 1560))
        {
          v19 = v16;
          do
          {
            *(*(result + 1560) + v19++) = v7;
          }

          while (v15 != v19);
        }

        if (v1 >= v16 && *(result + 1576))
        {
          do
          {
            *(*(result + 1576) + v16++) = v6;
          }

          while (v15 != v16);
        }

        if (v9 != -1 && v5 != 0)
        {
          ++v9;
        }

        if (v8 != -1 && v4 != 0)
        {
          ++v8;
        }

        if (v7 != -1 && v3 != 0)
        {
          ++v7;
        }

        if (v14 > 0xFAu || v2)
        {
          if (((v6 + 1) & 0x100) != 0)
          {
            v6 = -1;
          }

          else
          {
            ++v6;
          }

          v2 = 1;
        }
      }

      else
      {
        v15 = v1 + 1;
        v1 = v10;
      }

LABEL_68:
      v10 = v1;
      v1 = v15;
    }

    while (v15 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setRhythmRelatedBackward(uint64_t result)
{
  v1 = *(result + 10);
  LOWORD(v2) = v1 - 1;
  if (((v1 - 1) & 0x8000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = v2;
    do
    {
      v11 = *(*(result + 568) + v2);
      if ((v11 - 1) >= 5)
      {
        if (v11 == 6)
        {
          if (v2 < v1 && *(result + 1520))
          {
            v23 = v2;
            do
            {
              *(*(result + 1520) + v23++) = 100;
            }

            while (v1 != v23);
          }

          if (v2 < v1 && *(result + 1536))
          {
            v24 = v2;
            do
            {
              *(*(result + 1536) + v24++) = 100;
            }

            while (v1 != v24);
          }

          if (v2 < v1 && *(result + 1552))
          {
            v25 = v2;
            do
            {
              *(*(result + 1552) + v25++) = 100;
            }

            while (v1 != v25);
          }

          v10 = 0;
          if (v2 < v1 && *(result + 1568))
          {
            v26 = v2;
            do
            {
              *(*(result + 1568) + v26++) = 100;
            }

            while (v1 != v26);
            v10 = 0;
            v9 = 0;
            v8 = 0;
            v7 = 0;
            v6 = 0;
            v5 = 0;
            v4 = 0;
            v3 = 0;
          }

          else
          {
            v9 = 0;
            v8 = 0;
            v7 = 0;
            v6 = 0;
            v5 = 0;
            v4 = 0;
            v3 = 0;
          }

          goto LABEL_49;
        }

        if (v11 != 7)
        {
          continue;
        }
      }

      v12 = *(*(result + 1432) + v2);
      if (v12 > 0xB)
      {
        v10 = 0;
        v6 = 1;
      }

      v13 = (v12 - 1);
      if (v13 < 0xB)
      {
        v9 = 0;
        v5 = 1;
      }

      if (v13 < 0xA)
      {
        v8 = 0;
        v4 = 1;
      }

      v14 = v12 - 6;
      if (v14 >= 0xFBu)
      {
        v7 = 0;
      }

      if (v2 < v1 && *(result + 1520))
      {
        v15 = v2;
        do
        {
          *(*(result + 1520) + v15++) = v10;
        }

        while (v1 != v15);
      }

      if (v2 < v1 && *(result + 1536))
      {
        v16 = v2;
        do
        {
          *(*(result + 1536) + v16++) = v9;
        }

        while (v1 != v16);
      }

      if (v2 < v1 && *(result + 1552))
      {
        v17 = v2;
        do
        {
          *(*(result + 1552) + v17++) = v8;
        }

        while (v1 != v17);
      }

      if (v2 < v1 && *(result + 1568))
      {
        v18 = v2;
        do
        {
          *(*(result + 1568) + v18++) = v7;
        }

        while (v1 != v18);
      }

      if (v10 != -1 && v6 != 0)
      {
        ++v10;
      }

      if (v9 != -1 && v5 != 0)
      {
        ++v9;
      }

      if (v8 != -1 && v4 != 0)
      {
        ++v8;
      }

      if (v14 > 0xFAu || v3)
      {
        if (((v7 + 1) & 0x100) != 0)
        {
          v7 = -1;
        }

        else
        {
          ++v7;
        }

        v3 = 1;
      }

LABEL_49:
      v1 = v2;
    }

    while (v2-- > 0);
  }

  return result;
}

uint64_t usextract_finalizeFineSylBndShape(uint64_t result)
{
  v1 = *(result + 10);
  LOWORD(v2) = v1 - 1;
  if (((v1 - 1) & 0x8000) == 0)
  {
    v3 = 0;
    v2 = v2;
    v4 = 1;
    v5 = 1;
    do
    {
      v6 = *(*(result + 568) + v2);
      if (v6 <= 7)
      {
        v7 = v2;
        if (((1 << v6) & 0xB8) != 0)
        {
          v8 = *(result + 1584);
          if (v5 && !v3)
          {
            v3 = *(v8 + v2);
            if (v4)
            {
              v3 += 100;
            }

            v4 = 0;
          }

          v5 = 1;
          if (v2 < v1 && v8)
          {
            v9 = v2;
            do
            {
              *(*(result + 1584) + v9++) = v3;
            }

            while (v1 != v9);
            v3 = 0;
            v5 = 1;
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_36;
        }

        if (((1 << v6) & 6) != 0)
        {
          v10 = *(result + 1584);
          if (v5 && !v3)
          {
            v3 = *(v10 + v2);
            if (v4)
            {
              v3 += 100;
            }

            v4 = 0;
          }

          if (v2 < v1 && v10)
          {
            v11 = v2;
            do
            {
              *(*(result + 1584) + v11++) = v3;
            }

            while (v1 != v11);
          }

          if (*(*(result + 1432) + v2) - 1 < 0xA)
          {
            v3 = 0;
            v5 = 0;
          }

          goto LABEL_36;
        }

        if (v6 == 6)
        {
          if (v2 < v1 && *(result + 1584))
          {
            v12 = v2;
            do
            {
              *(*(result + 1584) + v12++) = 0;
            }

            while (v1 != v12);
          }

          goto LABEL_36;
        }
      }

      v7 = v1;
LABEL_36:
      v1 = v7;
    }

    while (v2-- > 0);
  }

  return result;
}

uint64_t usextract_setSylIndexInWordFromStart(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    **(result + 1384) = 0;
    if (*(result + 10) >= 3)
    {
      v1 = 1;
      v2 = 1;
      do
      {
        v3 = *(result + 32);
        if (*(v3 + v2) == 35)
        {
          v4 = 0;
        }

        else
        {
          v5 = v1 - 1;
          v6 = *(*(result + 112) + v5);
          if (v6 <= 1 && *(v3 + v5) != 35)
          {
            v7 = *(result + 1384);
            v4 = *(v7 + v5);
            if (v6 == 1 && v4 < 7u)
            {
              ++v4;
            }

            goto LABEL_10;
          }

          v4 = 1;
        }

        v7 = *(result + 1384);
LABEL_10:
        *(v7 + v2++) = v4;
        v1 = v2;
      }

      while (*(result + 10) - 1 > v2);
    }
  }

  return result;
}

uint64_t usextract_setSylIndexInWordFromEnd(uint64_t result)
{
  v1 = *(result + 10);
  if (v1 >= 1)
  {
    *(*(result + 1392) + (v1 - 1)) = 0;
    LOWORD(v1) = *(result + 10);
  }

  LOWORD(v1) = v1 - 2;
  if ((v1 & 0x8000) == 0)
  {
    v1 = v1;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        *(*(result + 1392) + v1) = 0;
      }

      else
      {
        v2 = *(*(result + 112) + v1);
        if (v2 < 2)
        {
          v3 = (*(result + 1392) + v1);
          v4 = v3[1];
          v5 = v2 != 1 || v4 > 6;
          if (v5)
          {
            *v3 = v4;
          }

          else
          {
            *v3 = v4 + 1;
          }
        }

        else
        {
          *(*(result + 1392) + v1) = 1;
        }
      }

      v5 = v1-- <= 0;
    }

    while (!v5);
  }

  return result;
}

uint64_t usextract_setSylPosInWordRelEnd(uint64_t result)
{
  LOWORD(v1) = *(result + 10) - 1;
  if ((v1 & 0x8000) == 0)
  {
    v1 = v1;
    do
    {
      if (*(*(result + 32) + v1) == 35 || (v2 = *(*(result + 112) + v1), (v2 - 2) < 2))
      {
        *(*(result + 304) + v1) = 1;
      }

      else if (v2 == 1)
      {
        *(*(result + 304) + v1) = *(*(result + 304) + v1 + 1) + 1;
      }

      else if (v1 + 1 < *(result + 10))
      {
        *(*(result + 304) + v1) = *(*(result + 304) + (v1 + 1));
      }
    }

    while (v1-- > 0);
  }

  return result;
}

void *usextract_setSylPosInSenRelStr(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  if (a2 < 0)
  {
    v3 = *(a1 + 10) - 1;
  }

  v5 = *(a1 + 10);
  if ((a3 & 0x80000000) == 0)
  {
    if (v5 <= a3)
    {
      v6 = 0;
    }

    else
    {
      a3 = a3;
      while (*(*(a1 + 72) + a3) != 1)
      {
        if (v5 <= ++a3)
        {
          v6 = 0;
          LOWORD(a3) = *(a1 + 10);
          goto LABEL_11;
        }
      }

      v6 = 1;
    }

LABEL_11:
    LOWORD(v5) = a3 + v6;
  }

  v7 = *(a1 + 296);
  v8 = v5;
  if (v5 >= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  result = memset(v7, 1, v9);
  if (v8 < v3)
  {
    result = memset((*(a1 + 296) + v8), 2, (v3 - v8) & ~((v3 - v8) >> 31));
  }

  v11 = *(a1 + 10);
  if (v11 > v3)
  {
    v12 = (*(a1 + 296) + v3);

    return memset(v12, 3, (v11 - v3) & ~((v11 - v3) >> 31));
  }

  return result;
}

uint64_t usextract_setPitchAndDurFromCart(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 2144;
    v6 = result + 859;
    do
    {
      v7 = *(v5 + *(*(a2 + 32) + v4));
      if ((*(v3 + 3068) & 0x80000000) == 0 && *(v6 + v7) == 118)
      {
        v8 = *(a2 + 1712);
        if (v8)
        {
          v9 = v8 + v4;
        }

        else
        {
          v9 = 0;
        }

        v10 = *(a2 + 1720);
        if (v10)
        {
          v11 = v10 + v4;
        }

        else
        {
          v11 = 0;
        }

        result = (*(v3 + 28168))(v3 + 28176, v3 + 28200, 0, a2, v4, *(a2 + 216) + v4, *(a2 + 224) + v4, v9, v11);
      }

      if ((*(v3 + 3072) & 0x80000000) == 0)
      {
        v12 = *(a2 + 1728);
        if (v12)
        {
          v13 = v12 + v4;
        }

        else
        {
          v13 = 0;
        }

        v14 = *(a2 + 1736);
        if (v14)
        {
          v15 = v14 + v4;
        }

        else
        {
          v15 = 0;
        }

        result = (*(v3 + 28168))(v3 + 28208, *(v3 + 28232) + 8 * v7, 1, a2, v4, *(a2 + 232) + v4, *(a2 + 240) + v4, v13, v15);
      }

      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  return result;
}

uint64_t usextract_setSylTrans(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a2 + 248);
    v5 = *(result + 3528);
    v6 = *(a2 + 80);
    v7 = 1;
    do
    {
      v8 = *(v4 + v2);
      if (*(v6 + v2) == 1)
      {
        v7 = 1;
      }

      v9 = *(v5 + 2 * v8);
      v10 = *(v5 + 2 + 2 * v8);
      if (v9 < v10)
      {
        v11 = *(result + 1116 + *(result + 2144 + *(*(a2 + 32) + v2))) == 86 && v7 == 1;
        if (v11)
        {
          if (v3)
          {
            v12 = v3;
            if ((*(result + 3392) & 0x80000000) != 0)
            {
              v17 = *(a2 + 160);
              v18 = *(v17 + v3);
              v15 = (*(result + 3544) + 16 * v9);
              v19 = v9 + 1;
              while (1)
              {
                if (v18 == v15[4])
                {
                  v20 = *(a2 + 152);
                  if (*(v20 + v12) == v15[5] && *(v17 + v2) == v15[6] && *(v20 + v2) == v15[7])
                  {
                    break;
                  }
                }

                v15 += 8;
                v11 = v10 == v19++;
                if (v11)
                {
                  goto LABEL_26;
                }
              }
            }

            else
            {
              v13 = *(a2 + 264);
              v14 = *(v13 + v3);
              v15 = (*(result + 3536) + 12 * v9);
              v16 = v9 + 1;
              while (v14 != v15[4] || *(v13 + v2) != v15[5])
              {
                v15 += 6;
                v11 = v10 == v16++;
                if (v11)
                {
                  goto LABEL_26;
                }
              }
            }

            v7 = 0;
            v21 = *(a2 + 3552);
            v24 = (v21 + 8 * v2);
            *v24 = *v15;
            v24[1] = v15[1];
            v24[2] = v15[2];
            v23 = v15[3];
            v3 = v2;
            goto LABEL_28;
          }

LABEL_26:
          v7 = 0;
          v3 = v2;
        }
      }

      v21 = *(a2 + 3552);
      v22 = v21 + 8 * v2;
      *v22 = -13041864;
      v23 = 200;
      *(v22 + 4) = 200;
LABEL_28:
      *(v21 + 8 * v2++ + 6) = v23;
    }

    while (v2 < *(a2 + 10));
  }

  return result;
}

uint64_t usextract_setSylChunk(uint64_t result)
{
  v1 = *(result + 10);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      v3 = v2 + 1;
      v4 = v2 + 1 == v1;
      v5 = 9 * v2;
      if (v4)
      {
        v6 = (*(result + 3560) + v5);
        v6[5] = *(*(result + 32) + v2 - 1);
        v6[6] = 35;
        *v6 = 35;
      }

      else
      {
        if (*(*(result + 80) + v2) == 1)
        {
          v7 = *(result + 32);
          if (v2)
          {
            v8 = *(v7 + v2 - 1);
          }

          else
          {
            v8 = 35;
          }

          v11 = (*(result + 3560) + v5);
          v11[5] = v8;
          v12 = *(v7 + v2);
          *v11 = v12;
          *(*(result + 3560) + v5 + 7) = v12;
          v13 = *(result + 10);
          if (v2)
          {
            if (v3 >= *(result + 10) || *(*(result + 112) + v2))
            {
              v14 = v2;
            }

            else
            {
              v18 = 1;
              v14 = v2;
              do
              {
                if (v18 > 4)
                {
                  if (v18 == 5)
                  {
                    v19 = *(result + 3560) + v5;
                    *(v19 + 8) = 0;
                    *v19 = 0;
                  }
                }

                else
                {
                  *(*(result + 3560) + v5 + v18) = *(*(result + 32) + v3);
                }

                v3 = ++v14 + 1;
                v13 = *(result + 10);
                if (v3 >= v13)
                {
                  break;
                }

                ++v18;
              }

              while (!*(*(result + 112) + v14));
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14 + 1;
          v16 = *(result + 32);
          if (v15 >= v13)
          {
            v17 = 35;
          }

          else
          {
            v17 = *(v16 + v15);
          }

          v9 = *(result + 3560) + v5;
          *(v9 + 6) = v17;
          v10 = *(v16 + v14);
        }

        else
        {
          v9 = *(result + 3560) + v5;
          *v9 = *(v9 - 9);
          v10 = *(v9 - 1);
        }

        *(v9 + 8) = v10;
      }

      ++v2;
      LOWORD(v1) = *(result + 10);
    }

    while (v2 < v1);
  }

  return result;
}

uint64_t usextract_applyGenericContextRules(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 3520);
  if (v2)
  {
    v3 = *(a2 + 10);
    if (v3 >= 2)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = *(a1 + 3520);
        if (v6)
        {
          break;
        }

LABEL_62:
        v2 = 0;
        v4 = ++v5;
        if (v3 - 1 <= v5)
        {
          return v2;
        }
      }

      while (1)
      {
        for (i = *v6; i; i = *(i + 40))
        {
          v8 = v5 + *(i + 2);
          if (v8 < 0 || *(a2 + 10) <= v8)
          {
            if (*(i + 1) != 2)
            {
              goto LABEL_60;
            }

            v10 = 35;
          }

          else
          {
            v9 = (*i ? *(a2 + 3504) + 8 * *(i + 1) : a2 + 16 + 8 * *(i + 1));
            v10 = *(*v9 + v8);
          }

          if (((*(i + (v10 >> 3) + 3) >> (v10 & 7)) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v11 = v6[1];
        if (v11)
        {
          break;
        }

LABEL_60:
        v6 = v6[2];
        if (!v6)
        {
          LOWORD(v3) = *(a2 + 10);
          goto LABEL_62;
        }
      }

      while (1)
      {
        v12 = *v11;
        if (*v11 > 4)
        {
          break;
        }

        if (v12 > 2)
        {
          if (v12 != 3)
          {
            if (v12 != 4)
            {
              return 2229280769;
            }

            *(*(a2 + 3600) + *(v11 + 4) + *(*a2 + 2966) * v4) = *(v11 + 8);
            goto LABEL_59;
          }

          v13 = 0;
          v14 = *(a2 + 3592);
LABEL_37:
          v19 = *(*a2 + 3360);
LABEL_38:
          v18 = (v14 + 4 * (*(v11 + 4) + v4 * v19));
          if (!v18)
          {
            goto LABEL_59;
          }

          goto LABEL_39;
        }

        if (v12 != 1)
        {
          if (v12 != 2)
          {
            return 2229280769;
          }

          v13 = 0;
          v14 = *(a2 + 3584);
          goto LABEL_37;
        }

        v17 = *(v11 + 4) + v4 * *(*a2 + 2966);
        v18 = (*(a2 + 3568) + 4 * v17);
        v13 = (*(a2 + 3576) + 4 * v17);
        if (!v18)
        {
          goto LABEL_59;
        }

LABEL_39:
        v20 = *(v11 + 8);
        if (v20 == 10)
        {
          *v18 *= 5;
          if (v13)
          {
            *v13 *= 5;
          }

          v20 = *(v11 + 8);
        }

        if (!v20)
        {
          *v18 = 0;
          if (v13)
          {
            *v13 = 0;
          }

          goto LABEL_59;
        }

        v21 = *v18;
        if (*v18 < 0x80000000 / v20)
        {
          *v18 = v21 * v20 / 0xA;
          if (v13)
          {
            *v13 = *(v11 + 8) * *v13 / 0xA;
          }

          goto LABEL_59;
        }

        if (v21 % 0xA && (!(v20 % 0xA) || v21 <= v20))
        {
          *v18 = v21 * (v20 / 0xA);
          if (v13)
          {
            v22 = *(v11 + 8) / 0xAu * *v13;
            goto LABEL_58;
          }
        }

        else
        {
          *v18 = v21 / 0xA * v20;
          if (v13)
          {
            v22 = *v13 / 0xA * *(v11 + 8);
LABEL_58:
            *v13 = v22;
          }
        }

LABEL_59:
        v11 = *(v11 + 16);
        if (!v11)
        {
          goto LABEL_60;
        }
      }

      if (v12 > 6)
      {
        if (v12 == 8)
        {
          v15 = *(v11 + 8);
          v16 = *(a2 + 1704);
        }

        else
        {
          if (v12 != 7)
          {
            return 2229280769;
          }

          v15 = *(v11 + 8);
          v16 = *(a2 + 1696);
        }

        *(v16 + v5) = v15;
        goto LABEL_59;
      }

      if (v12 == 5)
      {
        v13 = 0;
        v14 = *(a2 + 3568);
      }

      else
      {
        if (v12 != 6)
        {
          return 2229280769;
        }

        v13 = 0;
        v14 = *(a2 + 3576);
      }

      v19 = *(*a2 + 2966);
      goto LABEL_38;
    }

    return 0;
  }

  return v2;
}

void *usextract_removePromptColumns(uint64_t a1)
{
  result = strstr((*a1 + 152), "bet4");
  v3 = *(a1 + 10);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v3; v5 = ++i)
    {
      v7 = v3 - 1;
      if (v7 > i)
      {
        v8 = i;
        v9 = i;
        v10 = i;
        do
        {
          v11 = *(*(a1 + 3608) + 4 * v9 * *(*a1 + 3578));
          if (v11 != -2)
          {
            break;
          }

          v9 = ++v10;
        }

        while (v7 > v10);
        if (v10 != i)
        {
          if (v5 >= v9)
          {
            v12 = 0;
          }

          else
          {
            v12 = 0;
            v13 = (*(a1 + 1800) + 2 * v5);
            v14 = v9 - v5;
            do
            {
              v15 = *v13++;
              v12 += v15;
              --v14;
            }

            while (v14);
          }

          v16 = (v3 - v9) & ~((v3 - v9) >> 31);
          v18 = v11 != -2 || v4 != 0;
          if (i < 1 || !v18)
          {
            goto LABEL_28;
          }

          v19 = (*(a1 + 32) + i);
          if (*(v19 - 1) != 35)
          {
            *v19 = 35;
            *(*(a1 + 1800) + 2 * i) = 0;
            *(*(a1 + 1784) + 2 * i) = 1;
            if (*(*a1 + 3578))
            {
              result = memset((*(a1 + 3608) + 4 * v5 * *(*a1 + 3578)), 255, 4 * *(*a1 + 3578));
            }

            v8 = ++i;
          }

          if (v4 && i >= 1 && (v20 = *(a1 + 32), *(v20 + v10) != 35))
          {
            if (i == v10)
            {
              result = hlpMoveColumns(a1, v10, (v10 + 1), v16);
              v20 = *(a1 + 32);
              ++v10;
            }

            *(v20 + i) = 35;
            *(*(a1 + 1800) + 2 * i) = 0;
            *(*(a1 + 1784) + 2 * i) = 1;
            if (*(*a1 + 3578))
            {
              result = memset((*(a1 + 3608) + 4 * v8 * *(*a1 + 3578)), 255, 4 * *(*a1 + 3578));
            }

            ++i;
          }

          else
          {
LABEL_28:
            v8 = v9;
          }

          *(*(a1 + 1800) + 2 * v8) += v12;
          if (i < v10)
          {
            result = hlpMoveColumns(a1, v10, i, v16);
          }
        }
      }

      v3 = *(a1 + 10);
    }
  }

  return result;
}

uint64_t usextract_logAllFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  __s[0] = 0;
  result = LH_itoa(0x4Eu, v21, 0xAu);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = 0;
    v10 = *(a3 + 10);
    if (v10 >= 1)
    {
      v11 = *(a3 + 10);
    }

    else
    {
      v11 = 0;
    }

    v12 = 99;
    if (v7 - 2 < 4 || !v7)
    {
      goto LABEL_6;
    }

    v13 = *(*a3 + v7 + 2748);
    if (v7 == 1)
    {
      v8 = "application/x-realspeak-marker-counts;version=4.0";
      goto LABEL_33;
    }

    v9 = 0;
    if (!*(*a3 + v7 + 2748))
    {
      goto LABEL_6;
    }

    if (v7 > 0x33u)
    {
      if (v7 > 0x35u)
      {
        if (v7 == 56)
        {
          v14 = 2966;
          v13 = 1;
          v15 = (a3 + 3600);
        }

        else
        {
          if (v7 != 54)
          {
            goto LABEL_32;
          }

          v13 = 4;
          v14 = 3360;
          v15 = (a3 + 3592);
        }
      }

      else if (v7 == 52)
      {
        v13 = 4;
        v14 = 2966;
        v15 = (a3 + 3576);
      }

      else
      {
        if (v7 != 53)
        {
          goto LABEL_32;
        }

        v13 = 4;
        v14 = 3360;
        v15 = (a3 + 3584);
      }

      goto LABEL_31;
    }

    v16 = (a3 + 3552);
    if (v7 == 24 || (v16 = (a3 + 3560), v7 == 46))
    {
      v9 = *v16;
      goto LABEL_32;
    }

    if (v7 == 51)
    {
      v13 = 4;
      v14 = 2966;
      v15 = (a3 + 3568);
LABEL_31:
      v9 = *v15;
      v11 = *(*a3 + v14) * v10;
    }

LABEL_32:
    v8 = __s;
    __strcpy_chk();
    v17 = strlen(__s);
    result = LH_itoa(v7, &__s[v17], 0xAu);
    v12 = 100;
LABEL_33:
    if (v13 <= 1)
    {
      if (!v13)
      {
LABEL_6:
        if (v7 != 1 || !*(a3 + 24))
        {
          goto LABEL_43;
        }
      }

      if (!v9)
      {
        v9 = *(a3 + 8 * v7 + 16);
      }

      result = log_OutBinary(*(a1 + 32), a2, v12, 0, v21, v8, v9, v11, 0);
      goto LABEL_43;
    }

    if (v13 == 2)
    {
      if (!v9)
      {
        v9 = *(a3 + 8 * v7 + 1760);
      }

      v18 = *(a1 + 32);
      v19 = 2 * v11;
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_43;
      }

      v18 = *(a1 + 32);
      v19 = 4 * v11;
    }

    result = log_OutBinary(v18, a2, v12, 0, v21, v8, v9, v19, 0);
LABEL_43:
    ++v7;
  }

  while (v7 != 218);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t usextract_allocateLayers(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v8 = 0;
  v9 = 0;
  do
  {
    if (*(*a3 + 2748 + v8) == 1)
    {
      ++v9;
    }

    ++v8;
  }

  while (v8 != 218);
  v10 = heap_Calloc(*(a1 + 8), v9 * a4, 1);
  if (!v10)
  {
    goto LABEL_52;
  }

  v15 = v10;
  for (i = 0; i != 218; ++i)
  {
    v17 = *a3;
    v18 = *(*a3 + i + 2748);
    if (!*(*a3 + i + 2748))
    {
      continue;
    }

    if (v18 == 2)
    {
      v19 = heap_Calloc(*(a1 + 8), a4, 2);
      a3[i + 220] = v19;
      if (!v19)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v18 == 1)
      {
        a3[i + 2] = v15;
        v15 += a4;
        continue;
      }

      if (i <= 0x33u)
      {
        switch(i)
        {
          case 0x18u:
            v26 = heap_Calloc(*(a1 + 8), a4, 8);
            a3[444] = v26;
            if (!v26)
            {
              goto LABEL_52;
            }

            break;
          case 0x2Eu:
            v31 = heap_Calloc(*(a1 + 8), a4, 9);
            a3[445] = v31;
            if (!v31)
            {
              goto LABEL_52;
            }

            break;
          case 0x33u:
            v22 = *(v17 + 2966);
            if (v22)
            {
              v23 = heap_Calloc(*(a1 + 8), v22 * a4, 4);
              a3[446] = v23;
              if (!v23)
              {
                goto LABEL_52;
              }
            }

            break;
          default:
            goto LABEL_34;
        }
      }

      else if (i > 0x35u)
      {
        if (i == 54)
        {
          v29 = *(v17 + 3360);
          if (v29)
          {
            v30 = heap_Calloc(*(a1 + 8), v29 * a4, 4);
            a3[449] = v30;
            if (!v30)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          if (i != 56)
          {
LABEL_34:
            if (a2)
            {
              log_OutPublic(*(a1 + 32), a2, 55007, "%s%u", v11, v12, v13, v14, "feature");
            }

            continue;
          }

          v24 = *(v17 + 2966);
          if (v24)
          {
            v25 = heap_Calloc(*(a1 + 8), v24 * a4, 1);
            a3[450] = v25;
            if (!v25)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else if (i == 52)
      {
        v27 = *(v17 + 2966);
        if (v27)
        {
          v28 = heap_Calloc(*(a1 + 8), v27 * a4, 4);
          a3[447] = v28;
          if (!v28)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        if (i != 53)
        {
          goto LABEL_34;
        }

        v20 = *(v17 + 3360);
        if (v20)
        {
          v21 = heap_Calloc(*(a1 + 8), v20 * a4, 4);
          a3[448] = v21;
          if (!v21)
          {
            goto LABEL_52;
          }
        }
      }
    }
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(a1, a2, a3, a4);
  if ((GenericFeatureLayers & 0x80000000) != 0)
  {
    return GenericFeatureLayers;
  }

  v37 = *(*a3 + 3578);
  if (v37 >= 4)
  {
    v42 = *(*a3 + 3578);
    log_OutPublic(*(a1 + 32), a2, 55000, "Invalid number of states per phoneme", v33, v34, v35, v36, "%s%u");
    return 2229280783;
  }

  v39 = heap_Calloc(*(a1 + 8), v37 * a4, 4);
  a3[451] = v39;
  if (v39)
  {
    if (*(*a3 + 3578) * a4)
    {
      memset(v39, 255, 4 * *(*a3 + 3578) * a4);
    }

    return 0;
  }

LABEL_52:
  v38 = 2229280778;
  if (a2)
  {
    log_OutPublic(*(a1 + 32), a2, 55000, 0, v11, v12, v13, v14, v41);
  }

  return v38;
}

uint64_t usextract_allocateGenericFeatureLayers(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = *(*a3 + 3336);
  if (!v5 || !*v5)
  {
    v19 = 0;
    a3[438] = 0;
    return v19;
  }

  v9 = 0;
  v10 = v5 + 1;
    ;
  }

  v12 = heap_Calloc(*(a1 + 8), v9, 8);
  a3[438] = v12;
  if (v12)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = 0;
    v18 = 8 * v9;
    while (1)
    {
      *(a3[438] + v17) = heap_Calloc(*(a1 + 8), a4, 1);
      if (!*(a3[438] + v17))
      {
        break;
      }

      v17 += 8;
      if (v18 == v17)
      {
        return 0;
      }
    }
  }

  v19 = 2229280778;
  if (a2)
  {
    log_OutPublic(*(a1 + 32), a2, 55000, 0, v13, v14, v15, v16, v21);
  }

  return v19;
}

uint64_t usextract_freeLayers(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = 0;
  v12 = 1;
  do
  {
    v13 = *(*a3 + v11 + 2748);
    if (!*(*a3 + v11 + 2748))
    {
      goto LABEL_11;
    }

    if (v13 == 2)
    {
      a2 = a3[v11 + 220];
      if (!a2)
      {
        goto LABEL_11;
      }

LABEL_10:
      heap_Free(*(a1 + 8), a2);
      goto LABEL_11;
    }

    if (v13 == 1)
    {
      if (v12)
      {
        a2 = a3[v11 + 2];
        if (a2)
        {
          heap_Free(*(a1 + 8), a2);
        }

        v12 = 0;
      }

      goto LABEL_11;
    }

    if (v11 <= 0x33u)
    {
      switch(v11)
      {
        case 0x18u:
          a2 = a3[444];
          if (a2)
          {
            goto LABEL_10;
          }

          break;
        case 0x2Eu:
          a2 = a3[445];
          if (a2)
          {
            goto LABEL_10;
          }

          break;
        case 0x33u:
          a2 = a3[446];
          if (a2)
          {
            goto LABEL_10;
          }

          break;
        default:
          goto LABEL_30;
      }
    }

    else if (v11 > 0x35u)
    {
      if (v11 == 54)
      {
        a2 = a3[449];
        if (a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v11 != 56)
        {
LABEL_30:
          if (v9)
          {
            log_OutPublic(*(a1 + 32), v9, 55010, "%s%u", a5, a6, a7, a8, "feature");
          }

          goto LABEL_11;
        }

        a2 = a3[450];
        if (a2)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v11 == 52)
    {
      a2 = a3[447];
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v11 != 53)
      {
        goto LABEL_30;
      }

      a2 = a3[448];
      if (a2)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    ++v11;
  }

  while (v11 != 218);
  usextract_freeGenericFeatureLayers(a1, a2, a3);
  v14 = a3[451];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  *a3 = 0;
  return 0;
}

void *usextract_freeGenericFeatureLayers(void *result, uint64_t a2, void *a3)
{
  v3 = *(*a3 + 3336);
  if (v3)
  {
    v5 = a3[438];
    if (v5)
    {
      v6 = result;
      if (!*v3)
      {
        goto LABEL_9;
      }

      v7 = 0;
      v8 = v3 + 1;
      do
      {
        v9 = *(a3[438] + 8 * v7);
        if (v9)
        {
          result = heap_Free(v6[1], v9);
        }
      }

      while (v8[v7++]);
      v5 = a3[438];
      if (v5)
      {
LABEL_9:
        result = heap_Free(v6[1], v5);
      }

      a3[438] = 0;
    }
  }

  return result;
}

uint64_t usextract_getIndex(const char **a1, char *__s1, unint64_t a3)
{
  if (a3 <= __s1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = (a3 - __s1);
  v7 = a1 + 1;
  while (strncmp(__s1, v3, v6) || strlen(v3) != v6)
  {
    v3 = v7[v5++];
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

BOOL usextract_matchPhon(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5)
{
  result = 0;
  v13 = a4;
  v14 = a2;
  if (a2 && a4)
  {
    skipUnvalidPhonemes(a1, &v14);
    if (a3)
    {
      do
      {
        if (!*v14)
        {
          break;
        }

        --a3;
        ++v14;
        skipUnvalidPhonemes(a1, &v14);
      }

      while (a3);
    }

    v9 = v14;
    v10 = *v14;
    if (*v14)
    {
      skipUnvalidPhonemes(a1, &v13);
      if (a5)
      {
        do
        {
          if (!*v13)
          {
            break;
          }

          --a5;
          ++v13;
          skipUnvalidPhonemes(a1, &v13);
        }

        while (a5);
      }

      if (*v13)
      {
        v11 = v13;
        v12 = *v13;
        if (v10 == v12)
        {
          while (1)
          {
            v14 = v9 + 1;
            skipUnvalidPhonemes(a1, &v14);
            v13 = v11 + 1;
            skipUnvalidPhonemes(a1, &v13);
            v9 = v14;
            if (!*v14)
            {
              break;
            }

            v11 = v13;
            if (*v14 != *v13)
            {
              goto LABEL_14;
            }
          }

LABEL_15:
          if (usextract_nrOfValidPhonemes(a1, v9) <= 1)
          {
            return usextract_nrOfValidPhonemes(a1, v13) < 2;
          }

          return 0;
        }

LABEL_14:
        if (v10 == v12)
        {
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t usextract_getCurFineSyl(uint64_t result, int a2)
{
  if (result == a2)
  {
    return 4;
  }

  if (a2 - 1 == result)
  {
    return 6;
  }

  if (result >= 2)
  {
    if ((19662 * a2) >> 16 <= result)
    {
      v2 = 5;
    }

    else
    {
      v2 = 3;
    }

    if ((a2 - ((19662 * a2) >> 16)) >= result)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void *hlpMoveColumns(unsigned __int16 **a1, int a2, int a3, size_t __len)
{
  v8 = 0;
  v9 = a3;
  v10 = a2;
  v11 = 2 * __len;
  do
  {
    v12 = a1[v8 + 4];
    if (v12)
    {
      memmove(v12 + v9, v12 + v10, __len);
    }

    v13 = a1[v8 + 222];
    if (v13)
    {
      memmove(&v13[v9], &v13[v10], v11);
    }

    ++v8;
  }

  while (v8 != 216);
  v14 = a1[444];
  if (v14)
  {
    memmove(&v14[4 * v9], &v14[4 * v10], 8 * __len);
  }

  v15 = a1[445];
  if (v15)
  {
    memmove(v15 + 9 * v9, v15 + 9 * v10, 9 * __len);
  }

  v16 = *a1;
  v17 = 4 * __len;
  if ((*a1)[1483])
  {
    memmove(&a1[446][2 * (*a1)[1483] * a3], &a1[446][2 * (*a1)[1483] * a2], v17 * (*a1)[1483]);
    memmove(&a1[447][2 * (*a1)[1483] * a3], &a1[447][2 * (*a1)[1483] * a2], v17 * (*a1)[1483]);
    v16 = *a1;
  }

  if (v16[1680])
  {
    memmove(&a1[448][2 * v16[1680] * a3], &a1[448][2 * v16[1680] * a2], v17 * v16[1680]);
    memmove(&a1[449][2 * (*a1)[1680] * a3], &a1[449][2 * (*a1)[1680] * a2], v17 * (*a1)[1680]);
    v16 = *a1;
  }

  if (v16[1483])
  {
    memmove(a1[450] + v16[1483] * v9, a1[450] + v16[1483] * v10, v16[1483] * __len);
    v16 = *a1;
  }

  result = memmove(&a1[451][2 * a3 * v16[1789]], &a1[451][2 * a2 * v16[1789]], 4 * __len * v16[1789]);
  if (a1[438])
  {
    v19 = *a1;
    if (**(*a1 + 417))
    {
      v20 = 0;
      do
      {
        v21 = *&a1[438][v20];
        if (v21)
        {
          result = memmove((v21 + v9), (v21 + v10), __len);
          v19 = *a1;
        }

        v22 = *(*(v19 + 417) + v20 * 2 + 8);
        v20 += 4;
      }

      while (v22);
    }
  }

  *(a1 + 5) += a3 - a2;
  return result;
}

uint64_t usextract_setMNXfeatures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = *(a3 + 5);
  if (v6 < 1)
  {
    v16 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = a3[128];
      if (v8)
      {
        if ((v7 + 2) >= v6)
        {
          v9 = 45;
        }

        else
        {
          v9 = *(a3[4] + v7 + 2);
        }

        *(v8 + v7) = v9;
      }

      v10 = a3[126];
      if (v10 && a3[127])
      {
        if ((v7 + 1) >= *(a3 + 5))
        {
          *(v10 + v7) = 45;
          v11 = 6;
        }

        else
        {
          *(v10 + v7) = *(a3[4] + v7 + 1);
          v11 = *(a3[72] + v7 + 1);
        }

        *(a3[127] + v7) = v11;
      }

      v12 = a3[123];
      if (v12)
      {
        if (v7 >= 2)
        {
          v13 = *(a3[4] + v7 - 2);
        }

        else
        {
          v13 = 45;
        }

        *(v12 + v7) = v13;
      }

      v14 = a3[125];
      if (v14 && a3[124])
      {
        if (v7)
        {
          v14[v7] = *(a3[4] + v7 - 1);
          v15 = *(a3[71] + v7 - 1);
        }

        else
        {
          *v14 = 45;
          v15 = 6;
        }

        *(a3[124] + v7) = v15;
      }

      ++v7;
      v6 = *(a3 + 5);
    }

    while (v7 < v6);
    v16 = v6 < 1;
  }

  if (a3[132] && a3[133])
  {
    if (!a3[134])
    {
      v16 = 1;
    }

    if (!v16)
    {
      v54 = 0;
      v55 = 0uLL;
      do
      {
        v56 = a3[4];
        if (*(v56 + v54) == 35)
        {
          *(a3[132] + v54) = 35;
          *(a3[133] + v54) = 35;
          *(a3[134] + v54) = 35;
        }

        else if (*(a3[10] + v54) == 1)
        {
          v57 = 0;
          v87 = v55;
          v88 = v55;
          v85 = v55;
          v86 = v55;
          v83 = v55;
          v84 = v55;
          *__s = v55;
          v82 = v55;
          *(a3[132] + v54) = *(v56 + v54);
          v58 = a3[9];
          v59 = a3[4];
          v60 = v54;
          while (1)
          {
            v61 = *(v59 + v60);
            if (*(v58 + v60) == 1)
            {
              break;
            }

            __s[v57] = v61;
            ++v60;
            if (++v57 == 128)
            {
              goto LABEL_33;
            }
          }

          __s[v57] = v61;
          *(a3[134] + v54) = v61;
          *(a3[133] + v54) = 48;
          v62 = (*a3 + 28272);
          v66 = strlen(v62);
          if (v66)
          {
            while (1)
            {
              v68 = *v62++;
              v67 = v68;
              if (strchr(__s, v68))
              {
                break;
              }

              if (!--v66)
              {
                goto LABEL_155;
              }
            }

            *(a3[133] + v54) = v67;
          }

LABEL_155:
          if (*(a3[133] + v54) == 48)
          {
            log_OutText(*(a1 + 32), a2, 3, 0, "Warning: the syllable: %s doesn't have NUCLEUS, the first phonme %c is set to be the default", v63, v64, v65, __s);
            *(a3[133] + v54) = __s[0];
          }

          v55 = 0uLL;
        }

        else
        {
          *(a3[132] + v54) = *(a3[132] + v54 - 1);
          *(a3[133] + v54) = *(a3[133] + v54 - 1);
          *(a3[134] + v54) = *(a3[134] + v54 - 1);
        }

        ++v54;
      }

      while (v54 < *(a3 + 5));
    }
  }

LABEL_33:
  if (a3[129] && a3[131] && a3[130] && a3[159] && a3[158] && a3[10] && *(a3 + 5) >= 1)
  {
    v17 = 0;
    while (v17)
    {
      v18 = (v17 - 1);
      if (*(a3[10] + v17) == 1)
      {
        *(a3[129] + v17) = *(a3[132] + v18);
        *(a3[131] + v17) = *(a3[134] + v18);
        *(a3[130] + v17) = *(a3[133] + v18);
        v19 = a3[11];
        v20 = a3[159];
      }

      else
      {
        *(a3[129] + v17) = *(a3[129] + v18);
        *(a3[131] + v17) = *(a3[131] + v18);
        *(a3[130] + v17) = *(a3[130] + v18);
        v20 = a3[159];
        v19 = v20;
      }

      *(v20 + v17) = *(v19 + v18);
      if (v17 == 1)
      {
        goto LABEL_47;
      }

      if (*(a3[10] + v17) != 1)
      {
        v22 = a3[158];
        v21 = *(v22 + v17 - 1);
        goto LABEL_49;
      }

      v21 = *(a3[159] + v17 - 1);
LABEL_48:
      v22 = a3[158];
LABEL_49:
      *(v22 + v17++) = v21;
      if (v17 >= *(a3 + 5))
      {
        goto LABEL_54;
      }
    }

    *a3[129] = 45;
    *a3[131] = 45;
    *a3[130] = 45;
    *a3[159] = 0;
LABEL_47:
    v21 = 0;
    goto LABEL_48;
  }

LABEL_54:
  if (a3[135])
  {
    if (a3[137])
    {
      if (a3[136])
      {
        if (a3[160])
        {
          if (a3[161])
          {
            if (a3[10])
            {
              LOWORD(v23) = *(a3 + 5) - 1;
              if ((v23 & 0x8000) == 0)
              {
                v23 = v23;
                while (1)
                {
                  v24 = v23 + 1;
                  if (v23 + 1 >= *(a3 + 5))
                  {
                    break;
                  }

                  if (*(a3[9] + v23) == 1)
                  {
                    *(a3[135] + v23) = *(a3[132] + v24);
                    *(a3[137] + v23) = *(a3[134] + v24);
                    *(a3[136] + v23) = *(a3[133] + v24);
                    v25 = *(a3[11] + v24);
LABEL_66:
                    v26 = a3[160];
                    goto LABEL_68;
                  }

                  *(a3[135] + v23) = *(a3[135] + v24);
                  *(a3[137] + v23) = *(a3[137] + v24);
                  *(a3[136] + v23) = *(a3[136] + v24);
                  v26 = a3[160];
                  v25 = *(v26 + v24);
LABEL_68:
                  *(v26 + v23) = v25;
                  if (v23 + 2 >= *(a3 + 5))
                  {
                    v27 = 0;
                  }

                  else
                  {
                    if (*(a3[9] + v23) != 1)
                    {
                      v28 = a3[161];
                      v27 = *(v28 + v24);
                      goto LABEL_74;
                    }

                    v27 = *(a3[160] + v24);
                  }

                  v28 = a3[161];
LABEL_74:
                  *(v28 + v23) = v27;
                  v29 = v23-- <= 0;
                  if (v29)
                  {
                    goto LABEL_76;
                  }
                }

                v25 = 0;
                *(a3[135] + v23) = 45;
                *(a3[137] + v23) = 45;
                *(a3[136] + v23) = 45;
                goto LABEL_66;
              }
            }
          }
        }
      }
    }
  }

LABEL_76:
  if (a3[139] && a3[141] && a3[145] && a3[147] && a3[150] && a3[153] && *(a3 + 5) >= 1)
  {
    v30 = 0;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = *(a3[72] + v30);
      *(a3[138] + v30) = v36;
      *(a3[139] + v30) = v36;
      *(a3[141] + v30) = v35;
      *(a3[143] + v30) = v34;
      *(a3[145] + v30) = v34;
      *(a3[146] + v30) = v33;
      *(a3[147] + v30) = v33;
      *(a3[149] + v30) = v32;
      *(a3[150] + v30) = v32;
      *(a3[152] + v30) = v31;
      *(a3[153] + v30) = v31;
      if (v37 && v37 != 6)
      {
        ++v34;
        if (v37 == 1)
        {
          ++v36;
          ++v35;
        }

        else if (v37 == 5)
        {
          v36 = 1;
          v35 = 1;
          v34 = 1;
          v33 = 1;
          v32 = 1;
          v31 = 1;
        }

        else
        {
          ++v31;
          if (v37 == 3)
          {
            ++v35;
            ++v32;
            v36 = 1;
            v33 = 1;
          }

          else if (v37 == 2)
          {
            ++v36;
            ++v35;
            ++v33;
            ++v32;
          }

          else
          {
            v36 = 1;
            v35 = 1;
            v33 = 1;
            v32 = 1;
          }
        }
      }

      ++v30;
    }

    while (v30 < *(a3 + 5));
  }

  if (a3[138] && a3[143] && a3[146] && a3[149] && a3[152] && a3[140] && a3[142] && a3[144] && a3[148] && a3[151] && a3[154] && ((*(a3 + 5) - 1) & 0x8000) == 0)
  {
    v38 = (*(a3 + 5) - 1);
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    do
    {
      v44 = *(a3[72] + v38);
      if (v44 > 6 || ((1 << v44) & 0x47) == 0)
      {
        v43 = *(a3[138] + v38);
        v41 = *(a3[146] + v38);
        if (v44 != 3)
        {
          v46 = a3[149];
          if (v46)
          {
            v40 = *(v46 + v38);
          }

          if (v44 != 4)
          {
            v47 = a3[143];
            if (v47)
            {
              v42 = *(v47 + v38);
            }

            v48 = a3[152];
            if (v48)
            {
              v39 = *(v48 + v38);
            }
          }
        }
      }

      *(a3[138] + v38) = v43;
      *(a3[143] + v38) = v42;
      *(a3[146] + v38) = v41;
      *(a3[149] + v38) = v40;
      *(a3[152] + v38) = v39;
      *(a3[140] + v38) = *(a3[138] + v38) - *(a3[139] + v38) + 1;
      *(a3[142] + v38) = *(a3[16] + v38) - *(a3[141] + v38) + 1;
      *(a3[144] + v38) = *(a3[143] + v38) - *(a3[145] + v38) + 1;
      *(a3[148] + v38) = *(a3[146] + v38) - *(a3[147] + v38) + 1;
      *(a3[151] + v38) = *(a3[149] + v38) - *(a3[150] + v38) + 1;
      *(a3[154] + v38) = *(a3[152] + v38) - *(a3[153] + v38) + 1;
      v29 = v38-- <= 0;
    }

    while (!v29);
  }

  if (!a3[33] || !a3[157] || !a3[156] || ((*(a3 + 5) - 1) & 0x8000) != 0)
  {
    goto LABEL_172;
  }

  v49 = *a3;
  v50 = (*(a3 + 5) - 1);
  do
  {
    v51 = a3[4];
    if (*(v51 + v50) == 35)
    {
      v52 = 0;
LABEL_136:
      v53 = a3[157];
      goto LABEL_137;
    }

    if (*(v51 + v50 + 1) == 35)
    {
      v52 = strlen((v49 + 2400)) + 1;
      goto LABEL_136;
    }

    if (*(a3[14] + v50))
    {
      v52 = *(a3[77] + v50 + 1);
      goto LABEL_136;
    }

    v53 = a3[157];
    v52 = *(v53 + v50 + 1);
LABEL_137:
    *(v53 + v50) = v52;
    v29 = v50-- <= 0;
  }

  while (!v29);
  if (*(a3 + 5) >= 1)
  {
    for (i = 0; i < *(a3 + 5); ++i)
    {
      v70 = a3[4];
      if (*(v70 + i) == 35)
      {
        v71 = 0;
      }

      else if (*(v70 + i - 1) == 35)
      {
        v71 = strlen((v49 + 2400)) + 1;
      }

      else
      {
        if (!*(a3[14] + i - 1))
        {
          v72 = a3[156];
          v71 = *(v72 + i - 1);
          goto LABEL_169;
        }

        v71 = *(a3[34] + i - 1);
      }

      v72 = a3[156];
LABEL_169:
      *(v72 + i) = v71;
    }
  }

LABEL_172:
  if (a3[163])
  {
    LODWORD(v73) = *(a3 + 5);
    if (v73 >= 1)
    {
      v74 = 0;
      do
      {
        if (*(a3[4] + v74) == 35)
        {
          *(a3[163] + v74) = 119;
        }

        else if (*(a3[71] + v74) <= 1u)
        {
          *(a3[163] + v74) = *(a3[163] + v74 - 1);
        }

        ++v74;
      }

      while (v74 < *(a3 + 5));
      LOWORD(v73) = *(a3 + 5);
    }

    v75 = a3[162];
    if (v75)
    {
      *v75 = 84;
      LODWORD(v73) = *(a3 + 5);
      if (v73 >= 2)
      {
        v76 = 0;
        do
        {
          if (*(a3[71] + v76 + 1) > 1u)
          {
            *(a3[162] + v76 + 1) = *(a3[163] + v76);
          }

          else
          {
            *(a3[162] + v76 + 1) = *(a3[162] + v76);
          }

          v77 = v76 + 2;
          ++v76;
        }

        while (v77 < *(a3 + 5));
        LOWORD(v73) = *(a3 + 5);
      }
    }

    v78 = a3[164];
    if (v78)
    {
      *(v78 + v73 - 1) = 84;
      LOWORD(v73) = *(a3 + 5) - 2;
      if ((v73 & 0x8000) == 0)
      {
        v73 = v73;
        do
        {
          if (*(a3[72] + v73) > 1u)
          {
            *(a3[164] + v73) = *(a3[163] + v73 + 1);
          }

          else
          {
            *(a3[164] + v73) = *(a3[164] + v73 + 1);
          }

          v29 = v73-- <= 0;
        }

        while (!v29);
      }
    }
  }

  v79 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t initLDO(uint64_t a1, void *a2)
{
  v2 = PNEW_LDO_ConFromText(a1, a1, "", "SENTENCE", "SENTENCE", a2);

  return LH_ERROR_to_VERROR(v2);
}

uint64_t deinitLDO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OOC_PlacementDeleteObject(a1, a2);
  }

  return a1;
}

uint64_t importFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v18 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 176))(a3, a4, HIWORD(v18), 0, &v16, &v18);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a2 + 168))(a3, a4, HIWORD(v18), 3, 1, &v17, &v18);
      if ((result & 0x80000000) == 0)
      {
        v11 = *a5;
        v12 = *(*a5 + 16);
        v13 = LDOTreeNode_SetText(v12, v16);
        result = LH_ERROR_to_VERROR(v13);
        if ((result & 0x80000000) == 0)
        {
          LDOObject_SetU32Attribute(v12, "EOS", v17 != 0);
          result = LH_ERROR_to_VERROR(v14);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a2 + 176))(a3, a4, HIWORD(v18), 1, &v15, &v18);
            if ((result & 0x80000000) == 0)
            {
              result = loc_importTokenRecFromLingDB(a1, a2, a3, a4, v11, HIWORD(v18), 0);
              if ((result & 0x80000000) == 0)
              {
                result = loc_importTokenRecFromLingDB(a1, a2, a3, a4, v11, HIWORD(v18), 1);
                if ((result & 0x80000000) == 0)
                {
                  return loc_importMrkFromLingDB(v11, v15, v18, v12, 0);
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

uint64_t loc_importTokenRecFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v34 = 0;
  v33 = 0;
  result = (*(a2 + 104))(a3, a4, 3, a6, &v34);
  if ((result & 0x80000000) == 0)
  {
    v14 = v34;
    if (v34)
    {
      while (1)
      {
        LOWORD(v35) = 0;
        LOWORD(v37) = 0;
        LOWORD(v36) = 0;
        __s1 = 0;
        result = (*(a2 + 168))(a3, a4, v14, 0, 1, &v33, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v15 = 0;
            v16 = "TOKEN_PUNCT";
            goto LABEL_14;
          }

          if (v33 != 3)
          {
            goto LABEL_11;
          }

          v15 = 0;
          v16 = "TOKEN_WSPACE";
        }

        else
        {
          if (!v33)
          {
            v15 = 0;
            v16 = "TOKEN_ALPHA";
            goto LABEL_14;
          }

          if (v33 != 1)
          {
LABEL_11:
            v16 = 0;
            v15 = 1;
            goto LABEL_14;
          }

          v15 = 0;
          v16 = "TOKEN_DIGIT";
        }

LABEL_14:
        result = (*(a2 + 168))(a3, a4, v14, 1, 1, &v37, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(a2 + 168))(a3, a4, v14, 2, 1, &v36, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v33 != 6)
        {
          goto LABEL_20;
        }

        result = (*(a2 + 176))(a3, a4, v14, 4, &__s1, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v35 && !strcmp(__s1, "_PR_"))
        {
          v15 = 0;
          v17 = v37;
          v18 = v36;
          v16 = "TOKEN_INT_TN";
        }

        else
        {
LABEL_20:
          v17 = v37;
          v18 = v36;
          v19 = v15 ^ 1;
          if (!a7)
          {
            v19 = 1;
          }

          if ((v19 & 1) == 0)
          {
            v20 = v34;
            v21 = v33;
            v35 = 0;
            v36 = v36;
            v37 = v37;
            v22 = LDO_AddLabelOnSubstring(a5, "TOKEN", "TOKEN", &v37, &v36, &v35);
            result = LH_ERROR_to_VERROR(v22);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            LDOObject_SetU32Attribute(v35, "_TTYPE", v21);
            result = LH_ERROR_to_VERROR(v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            switch(v21)
            {
              case 4:
                v32 = v35;
                goto LABEL_50;
              case 5:
                v28 = v35;
                __s1 = 0;
                v38 = 0;
                result = (*(a2 + 176))(a3, a4, v20, 4, &__s1, &v38 + 2);
                if ((result & 0x80000000) == 0)
                {
                  v29 = LDOObject_SetStringAttribute(v28, "TNTAG", __s1);
                  result = LH_ERROR_to_VERROR(v29);
                  if ((result & 0x80000000) == 0)
                  {
                    result = (*(a2 + 184))(a3, a4, v20, 3, &v38);
                    if ((result & 0x80000000) == 0)
                    {
                      if (!v38 || (result = (*(a2 + 176))(a3, a4, v20, 3, &__s1, &v38 + 2), (result & 0x80000000) == 0) && (v30 = LDOObject_SetStringAttribute(v28, "NORM", __s1), result = LH_ERROR_to_VERROR(v30), (result & 0x80000000) == 0))
                      {
                        result = (*(a2 + 184))(a3, a4, v20, 6, &v38);
                        if ((result & 0x80000000) == 0)
                        {
                          if (v38)
                          {
                            result = (*(a2 + 176))(a3, a4, v20, 6, &__s1, &v38 + 2);
                            if ((result & 0x80000000) == 0)
                            {
                              v31 = LDOObject_SetStringAttribute(v28, "LANGMAP", __s1);
                              result = LH_ERROR_to_VERROR(v31);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_51;
              case 6:
                v24 = v35;
LABEL_37:
                result = loc_importTokenIntTnFieldsFromLingDB(a1, a2, a3, a4, v24, v20);
                goto LABEL_51;
            }

            goto LABEL_52;
          }
        }

        if ((v15 & 1) == 0 && !a7)
        {
          v20 = v34;
          v25 = v33;
          __s1 = 0;
          appended = LDO_AppendNewNode(a5, *(a5 + 16), "TOKEN", v16, v17, v18, &__s1);
          result = LH_ERROR_to_VERROR(appended);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LDOObject_SetU32Attribute(__s1, "_TTYPE", v25);
          result = LH_ERROR_to_VERROR(v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v25 == 4)
          {
            v32 = __s1;
LABEL_50:
            result = loc_importTokenDctFieldsFromLingDB(a2, a3, a4, v32, v20);
LABEL_51:
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            goto LABEL_52;
          }

          if (v25 == 6)
          {
            v24 = __s1;
            goto LABEL_37;
          }
        }

LABEL_52:
        result = (*(a2 + 120))(a3, a4, v34, &v34, v17, v18);
        if ((result & 0x80000000) == 0)
        {
          v14 = v34;
          if (v34)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t loc_importMrkFromLingDB(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v45 = 0;
  v46 = 0;
  v42 = 0;
  if (a3)
  {
    v6 = a1;
    v7 = 0;
    v8 = a3;
    v37 = 1;
    while (1)
    {
      v41 = 0;
      v9 = *a2;
      if (*a2 <= 50)
      {
        break;
      }

      if (v9 <= 60)
      {
        switch(v9)
        {
          case '3':
            v10 = 0;
            v11 = "MARKER_NLU";
            goto LABEL_36;
          case '9':
            v10 = 0;
            v11 = "MARKER_NEW";
            goto LABEL_36;
          case '<':
            v10 = 0;
            v11 = "MARKER_SET_STYLE";
            goto LABEL_36;
        }

LABEL_35:
        v10 = 0;
        v11 = "MARKER";
        goto LABEL_36;
      }

      if (v9 == 61)
      {
        v10 = 0;
        v11 = "MARKER_AGREEMENT";
        goto LABEL_36;
      }

      if (v9 == 99)
      {
        v10 = 0;
        v11 = "MARKER_SET_PINYIN";
        goto LABEL_36;
      }

      if (v9 != 0x4000)
      {
        goto LABEL_35;
      }

      v12 = v37;
      if (v37 == 1)
      {
        v7 = *(a2 + 12);
      }

      else
      {
        v7 = v7;
      }

      if (v37 == 1)
      {
        v12 = 0;
      }

      v37 = v12;
      v10 = 1;
      v11 = "MARKER_SYNC";
LABEL_36:
      v13 = *(a2 + 12);
      v14 = v13 >= v7;
      v15 = v13 - v7;
      if (!v14)
      {
        return 2147499534;
      }

      v44 = v15;
      v43 = *(a2 + 16) + v15;
      v16 = loc_compute_overflow(v6, &v44, &v43, &v46, &v45);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      v17 = LDO_CountLeafNodesOnRange(v6, &v44, &v43, &v42, 0);
      v34 = LH_ERROR_to_VERROR(v17);
      if ((v34 & 0x80000000) != 0)
      {
        return v34;
      }

      if (*a2 == 40)
      {
        goto LABEL_41;
      }

      if (!v42 && v43 != v44)
      {
        if (a5 != 1)
        {
          goto LABEL_46;
        }

LABEL_41:
        v18 = LDO_AddSpecialLabel(v6, "MARKER", v11, &v44, &v43, &v41);
        goto LABEL_45;
      }

      v18 = LDO_AddLabelOnSubstring(v6, "MARKER", v11, &v44, &v43, &v41);
LABEL_45:
      v34 = LH_ERROR_to_VERROR(v18);
      if ((v34 & 0x80000000) != 0)
      {
        return v34;
      }

LABEL_46:
      if (v41)
      {
        LDOObject_SetU32Attribute(a4, "SENT_REC_OFFSET", v7);
        v16 = LH_ERROR_to_VERROR(v19);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v20 = v7;
        v21 = v41;
        v22 = v45;
        v24 = *a2;
        v23 = *(a2 + 4);
        v25 = *(a2 + 8);
        v39 = *(a2 + 24);
        if (v46)
        {
          LDOObject_SetU32Attribute(v41, "FROMOVERFLOW", v46);
          v16 = LH_ERROR_to_VERROR(v26);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }
        }

        if (v22)
        {
          LDOObject_SetU32Attribute(v21, "TOOVERFLOW", v22);
          v16 = LH_ERROR_to_VERROR(v27);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }
        }

        LDOObject_SetU32Attribute(v21, "_MTYPE", v24);
        v16 = LH_ERROR_to_VERROR(v28);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v29 = LDOLabel_SetReferenceFrom(v21, v23);
        v16 = LH_ERROR_to_VERROR(v29);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v30 = LDOLabel_SetReferenceTo(v21, v25 + v23);
        v31 = LH_ERROR_to_VERROR(v30);
        v34 = v31;
        if (v31 < 0)
        {
          v32 = 1;
        }

        else
        {
          v32 = v10;
        }

        if (v32)
        {
          v7 = v20;
          v6 = a1;
          if ((v31 & 0x80000000) != 0)
          {
            return v34;
          }

          goto LABEL_66;
        }

        v48 = 0;
        v47 = 0;
        marker_tag2string(v24, &v48, &v47);
        if ((v47 - 3) > 1)
        {
          if ((v47 - 1) <= 1)
          {
            LDOObject_SetU32Attribute(v21, "U32ARGS", v39);
            goto LABEL_64;
          }
        }

        else
        {
          v33 = LDOObject_SetStringAttribute(v21, "STRARGS", v39);
LABEL_64:
          v34 = LH_ERROR_to_VERROR(v33);
          if ((v34 & 0x80000000) != 0)
          {
            return v34;
          }
        }

        v7 = v20;
        v6 = a1;
      }

LABEL_66:
      a2 += 32;
      if (!--v8)
      {
        return v34;
      }
    }

    if (v9 > 35)
    {
      switch(v9)
      {
        case '$':
          v10 = 0;
          v11 = "MARKER_SET_LANG";
          goto LABEL_36;
        case '%':
          v10 = 0;
          v11 = "MARKER_SET_HEXA";
          goto LABEL_36;
        case '(':
          v10 = 0;
          v11 = "MARKER_INSERT_PROMPT";
          goto LABEL_36;
      }
    }

    else
    {
      switch(v9)
      {
        case 1:
          v10 = 1;
          v11 = "MARKER_WORD";
          goto LABEL_36;
        case 7:
          v10 = 0;
          v11 = "MARKER_SET_TYPE_OF_INPUT";
          goto LABEL_36;
        case 26:
          v10 = 0;
          v11 = "MARKER_INSERT_AUDIO";
          goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  return 0;
}

uint64_t importFromLingDBWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v22 + 2);
  if ((result & 0x80000000) == 0)
  {
    v13 = *a5;
    v14 = *(*a5 + 16);
    result = (*(a2 + 176))(a3, a4, HIWORD(v22), 0, &v19, &v22);
    if ((result & 0x80000000) == 0)
    {
      v15 = LDOTreeNode_SetText(v14, v19);
      result = LH_ERROR_to_VERROR(v15);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a2 + 168))(a3, a4, HIWORD(v22), 3, 1, &v20, &v22);
        if ((result & 0x80000000) == 0)
        {
          LDOObject_SetU32Attribute(v14, "EOS", v20 != 0);
          result = LH_ERROR_to_VERROR(v16);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a2 + 184))(a3, a4, HIWORD(v22), 2, &v21);
            if ((result & 0x80000000) == 0)
            {
              if (!v21 || (result = (*(a2 + 176))(a3, a4, HIWORD(v22), 2, &v19, &v22), (result & 0x80000000) == 0) && (v17 = LDOObject_SetStringAttribute(v14, "SYNTAX", v19), result = LH_ERROR_to_VERROR(v17), (result & 0x80000000) == 0))
              {
                result = (*(a2 + 176))(a3, a4, HIWORD(v22), 1, &v18, &v22);
                if ((result & 0x80000000) == 0)
                {
                  result = loc_importWordRecFromLingDB(a1, a2, a3, a4, v13, HIWORD(v22), 0, a6);
                  if ((result & 0x80000000) == 0)
                  {
                    result = loc_importWordRecFromLingDB(a1, a2, a3, a4, v13, HIWORD(v22), 1, a6);
                    if ((result & 0x80000000) == 0)
                    {
                      return loc_importMrkFromLingDB(v13, v18, v22, v14, 1);
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

uint64_t loc_importWordRecFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v28 = 0;
  v29 = 0;
  result = (*(a2 + 104))(a3, a4, 2, a6, &v29);
  if ((result & 0x80000000) == 0)
  {
    v14 = v29;
    if (v29)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOWORD(v32) = 0;
        LOWORD(v31) = 0;
        WORD2(v30) = 0;
        __s1 = 0;
        result = (*(a2 + 168))(a3, a4, v14, 0, 1, &v28, &v32);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v17 = &dword_1E81A38A8;
        v18 = 18;
        while (v28 != *(v17 - 16))
        {
          v17 += 6;
          if (!--v18)
          {
            v19 = 0;
            goto LABEL_10;
          }
        }

        v19 = *(v17 - 1);
        v16 = *v17;
LABEL_10:
        result = (*(a2 + 168))(a3, a4, v14, 1, 1, &v31, &v32);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(a2 + 168))(a3, a4, v14, 2, 1, &v30 + 4, &v32);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v28 == 6)
        {
          result = (*(a2 + 176))(a3, a4, v14, 4, &__s1, &v32);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v32 && !strcmp(__s1, "_PR_"))
          {
            v16 = 0;
          }
        }

        v20 = v31;
        v21 = WORD2(v30);
        ++v15;
        if (a7 && v16)
        {
          v22 = v29;
          v23 = v28;
          v30 = 0;
          __s1 = 0;
          v31 = v21;
          v32 = v20;
          result = loc_compute_overflow(a5, &v32, &v31, &v30 + 1, &v30);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          appended = LDO_AddSpecialLabel(a5, "WORD", v19, &v32, &v31, &__s1);
        }

        else
        {
          if (a7 | v16)
          {
            goto LABEL_27;
          }

          v22 = v29;
          v23 = v28;
          __s1 = 0;
          v30 = 0;
          v31 = v21;
          v32 = v20;
          result = loc_compute_overflow(a5, &v32, &v31, &v30 + 1, &v30);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          appended = LDO_AppendNewNode(a5, *(a5 + 16), "WORD", v19, v32, v31, &__s1);
        }

        result = LH_ERROR_to_VERROR(appended);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        LDOObject_SetU32Attribute(__s1, "_WTYPE", v23);
        result = LH_ERROR_to_VERROR(v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = loc_importWordRecordFieldsFromLingDB(a1, a2, a3, a4, __s1, v22, v15, a8, SHIDWORD(v30), v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_27:
        result = (*(a2 + 120))(a3, a4, v29, &v29);
        if ((result & 0x80000000) == 0)
        {
          v14 = v29;
          if (v29)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t exportToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 1;
  v16 = (*(a2 + 64))(a3, a4);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(a2 + 56))(a3, a4);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(a2 + 104))(a3, a4, 1, 0, &v68);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = loc_exportSentenceFields(a2, a3, a4, a5, a6, &v68, &v66 + 1);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = loc_exportMrkLabelsToLingDB(a1, a2, a3, a4, a6, v68, SHIDWORD(v66));
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v62 = a7;
  v56 = a5;
  v70 = 0;
  v69 = 0;
  v17 = *(a6 + 32);
  v18 = *(v17 + 24);
  v55 = a8;
  v59 = a1;
  if (v18 >= *(v17 + 32))
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
LABEL_47:
    v33 = HIDWORD(v70);
    if (HIDWORD(v70))
    {
LABEL_48:
      v21 = LH_ERROR_to_VERROR(v33);
    }

    if ((v21 & 0x80000000) == 0)
    {
      v43 = *(a6 + 16);
      v44 = v20;
      v45 = *(v43 + 80);
      v46 = *(v43 + 88);
      v64 = v44;
      v47 = v19;
      v48 = v45 >= v46 || v19 >= v44;
      if (v48)
      {
LABEL_55:
        if (v45 >= v46)
        {
LABEL_58:
          if (v47 < v64)
          {
            v49 = v47 + 1;
            do
            {
              v21 = loc_exportNonMarkerLabelWithTType(v59, a2, a3, a4, v68, *(v49 - 1), v55, &v65, &v67);
              if ((v21 & 0x80000000) != 0)
              {
                break;
              }

              v48 = v49++ >= v64;
            }

            while (!v48);
          }
        }

        else
        {
          while (1)
          {
            v21 = loc_exportNode(v59, a2, a3, a4, v68, *v45, v62, &v65, &v67);
            if ((v21 & 0x80000000) != 0)
            {
              break;
            }

            if (++v45 >= v46)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v50 = *v45;
          v51 = *v47;
          v52 = LDOTreeNode_ComputeAbsoluteFrom(*v45, &v66);
          v53 = LH_ERROR_to_VERROR(v52);
          if ((v53 & 0x80000000) != 0)
          {
            break;
          }

          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v51);
          if (v66 <= AbsoluteFrom)
          {
            v21 = loc_exportNode(v59, a2, a3, a4, v68, v50, v62, &v65, &v67);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_74;
            }

            ++v45;
          }

          else
          {
            v21 = loc_exportNonMarkerLabelWithTType(v59, a2, a3, a4, v68, v51, v55, &v65, &v67);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_74;
            }

            ++v47;
          }

          if (v45 >= v46 || v47 >= v64)
          {
            goto LABEL_55;
          }
        }

        v21 = v53;
      }
    }
  }

  else
  {
    v57 = a6;
    v58 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *v18;
      if (*(*v18 + 26) == 1)
      {
        U32Attribute = LDOObject_GetU32Attribute(*v18, "_TTYPE", &v70, &v69);
        v21 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

        if (v70 == 1)
        {
          LDOObject_SetU32Attribute(v23, "__ldoutilID", *(v23 + 4));
          v21 = LH_ERROR_to_VERROR(v25);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_74;
          }

          v61 = v22;
          *(v23 + 4) = v22;
          v63 = v20;
          v60 = v20 - v19;
          v26 = 0;
          if (v20 != v19)
          {
            v27 = (v20 - v19) >> 3;
            do
            {
              v28 = v27 >> 1;
              v29 = LDOLabel_CompareToWithID(v23, *(v19 + 8 * v26 + 8 * (v27 >> 1)));
              if (v29 < 1)
              {
                v27 >>= 1;
                if ((v29 & 0x80000000) == 0)
                {
                  v20 = v63;
                  a6 = v57;
                  goto LABEL_34;
                }
              }

              else
              {
                v26 += v28 + 1;
                v27 -= v28 + 1;
              }
            }

            while (v27);
          }

          v30 = v60 >> 3;
          if ((v60 >> 3) == -1 || v58 != v30)
          {
            v34 = (v60 >> 3);
            v35 = v63;
          }

          else
          {
            v31 = 2 * v58;
            if (2 * v58 >= v58 + 1000000)
            {
              v31 = v58 + 1000000;
            }

            if (v31 <= v58 + 1)
            {
              v32 = v58 + 1;
            }

            else
            {
              v32 = v31;
            }

            if (v32 <= 8)
            {
              v32 = 8;
            }

            v58 = v32;
            v19 = OOCAllocator_Realloc(v56, v19, 8 * v32, &v70 + 1);
            v33 = HIDWORD(v70);
            if (HIDWORD(v70))
            {
              a6 = v57;
              v20 = v63;
              goto LABEL_48;
            }

            v34 = (v60 >> 3);
            v35 = v19 + 8 * v30;
          }

          v36 = v34 > v26;
          v37 = v34 - v26;
          a6 = v57;
          if (v36)
          {
            memmove((v19 + 8 * v26 + 8), (v19 + 8 * v26), 8 * v37);
          }

          v20 = v35 + 8;
          *(v19 + 8 * v26) = v23;
LABEL_34:
          v22 = v61 + 1;
        }
      }

      ++v18;
    }

    while (v18 < *(*(a6 + 32) + 32));
    if (v19 >= v20)
    {
      goto LABEL_47;
    }

    v39 = v19;
    while (1)
    {
      v40 = *v39;
      v41 = LDOObject_GetU32Attribute(*v39, "__ldoutilID", &v70, &v69);
      v21 = LH_ERROR_to_VERROR(v41);
      if ((v21 & 0x80000000) != 0)
      {
        break;
      }

      if (v70 == 1)
      {
        *(v40 + 4) = v69;
        v42 = LDOObject_RemoveAttribute(v40, "__ldoutilID");
        v21 = LH_ERROR_to_VERROR(v42);
        if ((v21 & 0x80000000) != 0)
        {
          break;
        }
      }

      if (++v39 >= v20)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_74:
  if (v19)
  {
    OOCAllocator_Free(v56, v19);
  }

  return v21;
}

uint64_t loc_exportSentenceFields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, _DWORD *a7)
{
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  __s = 0;
  v14 = LDO_ComputeText(a5, &v30);
  v15 = LH_ERROR_to_VERROR(v14);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v16 = *(a1 + 160);
  v17 = *a6;
  v18 = LHString_Length(v30) + 1;
  v19 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v30);
  v20 = v16(a2, a3, v17, 0, v18, v19, &v33);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v21 = *(a5 + 16);
  U32Attribute = LDOObject_GetU32Attribute(v21, "SENT_REC_OFFSET", &v32, a7);
  v20 = LH_ERROR_to_VERROR(U32Attribute);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v23 = 2147491860;
  if (v32 != 1)
  {
    goto LABEL_12;
  }

  v24 = LDOObject_GetU32Attribute(v21, "EOS", &v32, &v29);
  v20 = LH_ERROR_to_VERROR(v24);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  if (v32 != 1)
  {
    goto LABEL_12;
  }

  v31 = v29;
  v20 = (*(a1 + 160))(a2, a3, *a6, 3, 1, &v31, &v33);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  StringAttribute = LDOObject_GetStringAttribute(v21, "SYNTAX", &v32, &__s);
  v23 = LH_ERROR_to_VERROR(StringAttribute);
  if ((v23 & 0x80000000) == 0 && v32)
  {
    v26 = strlen(__s);
    v20 = (*(a1 + 160))(a2, a3, *a6, 2, (v26 + 1), __s, &v33);
LABEL_11:
    v23 = v20;
  }

LABEL_12:
  if (v30)
  {
    OOC_PlacementDeleteObject(a4, v30);
  }

  return v23;
}

uint64_t loc_exportMrkLabelsToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v12 = *(a5 + 32);
  v13 = *(v12 + 24);
  if (v13 >= *(v12 + 32))
  {
    LOWORD(v15) = 0;
LABEL_43:
    v19 = 0;
LABEL_44:
    v41 = (*(a2 + 160))(a3, a4, a6, 1, v15, v19, &v52);
    if (v19)
    {
      goto LABEL_45;
    }

    return v41;
  }

  v15 = 0;
  do
  {
    if (*(*v13 + 26) == 1)
    {
      U32Attribute = LDOObject_GetU32Attribute(*v13, "_MTYPE", &v51, &v49 + 1);
      v17 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (v51)
      {
        ++v15;
      }

      v12 = *(a5 + 32);
    }

    ++v13;
  }

  while (v13 < *(v12 + 32));
  if (!v15)
  {
    goto LABEL_43;
  }

  v18 = heap_Calloc(*(a1 + 8), v15, 32);
  if (!v18)
  {
    return 2147491850;
  }

  v19 = v18;
  v43 = a2;
  v44 = a1;
  v20 = *(a5 + 32);
  v21 = *(v20 + 24);
  if (v21 >= *(v20 + 32))
  {
LABEL_41:
    marker_sort(v19, v15);
    a2 = v43;
    a1 = v44;
    goto LABEL_44;
  }

  v22 = 0;
  while (1)
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = *v21;
    if (*(*v21 + 26) != 1)
    {
LABEL_35:
      a6 = v25;
      a4 = v24;
      goto LABEL_40;
    }

    v27 = LDOObject_GetU32Attribute(*v21, "_MTYPE", &v51, &v49 + 1);
    v28 = LH_ERROR_to_VERROR(v27);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    if (!v51)
    {
      goto LABEL_35;
    }

    v45 = v22;
    v29 = v19 + 32 * v22;
    v30 = *(v26 + 96);
    v31 = *(v26 + 100);
    *v29 = HIDWORD(v49);
    *(v29 + 4) = v30;
    *(v29 + 8) = v31 - v30;
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v26);
    *(v29 + 12) = AbsoluteFrom + a7;
    if ((*v29 - 36) <= 0x22 && ((1 << (*v29 - 36)) & 0x402008001) != 0 || *v29 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = LDOLabel_GetAbsoluteTo(v26) - AbsoluteFrom;
    }

    *(v29 + 16) = v40;
    v35 = LDOObject_GetU32Attribute(v26, "FROMOVERFLOW", &v51, &v48 + 1);
    v36 = LH_ERROR_to_VERROR(v35);
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

    if (v51)
    {
      *(v29 + 16) += HIDWORD(v48);
    }

    v37 = LDOObject_GetU32Attribute(v26, "TOOVERFLOW", &v51, &v48);
    v36 = LH_ERROR_to_VERROR(v37);
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

    if (v51)
    {
      *(v29 + 16) += v48;
    }

    StringAttribute = LDOObject_GetStringAttribute(v26, "STRARGS", &v50 + 1, &v47);
    v36 = LH_ERROR_to_VERROR(StringAttribute);
    if ((v36 & 0x80000000) != 0 || (v39 = LDOObject_GetU32Attribute(v26, "U32ARGS", &v50, &v49), v36 = LH_ERROR_to_VERROR(v39), (v36 & 0x80000000) != 0))
    {
LABEL_49:
      v41 = v36;
      a1 = v44;
      goto LABEL_45;
    }

    if (HIDWORD(v50))
    {
      *(v29 + 24) = v47;
      a6 = v25;
    }

    else
    {
      a6 = v25;
      if (v50)
      {
        *(v29 + 24) = v49;
      }

      else
      {
        *(v29 + 24) = 0;
      }
    }

    a4 = v24;
    v22 = v45 + 1;
LABEL_40:
    a3 = v23;
    if (++v21 >= *(*(a5 + 32) + 32))
    {
      goto LABEL_41;
    }
  }

  v41 = v28;
  a1 = v44;
LABEL_45:
  heap_Free(*(a1 + 8), v19);
  return v41;
}

uint64_t loc_exportNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, _DWORD *a8, unsigned __int16 *a9)
{
  v21 = 0;
  v22 = 0;
  if (a7 == 1 || (v16 = LDOObject_GetU32Attribute(a6, "_TTYPE", &v22, &v21), result = LH_ERROR_to_VERROR(v16), (result & 0x80000000) == 0) && v22 && v21 >= 4)
  {
    if (*a8 == 1)
    {
      result = (*(a2 + 72))(a3, a4, 3, a5, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *a8 = 0;
    }

    else
    {
      result = (*(a2 + 80))(a3, a4, *a9, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v28 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    U32Attribute = LDOObject_GetU32Attribute(a6, "_TTYPE", &v23, &v25);
    result = LH_ERROR_to_VERROR(U32Attribute);
    if ((result & 0x80000000) == 0)
    {
      if (v23)
      {
        v29 = v25;
        result = (*(a2 + 160))(a3, a4, *a9, 0, 1, &v29, &v28);
        if ((result & 0x80000000) == 0)
        {
          v19 = LDOTreeNode_ComputeAbsoluteFrom(a6, &v24 + 1);
          result = LH_ERROR_to_VERROR(v19);
          if ((result & 0x80000000) == 0)
          {
            v27 = WORD2(v24);
            result = (*(a2 + 160))(a3, a4, *a9, 1, 1, &v27, &v28);
            if ((result & 0x80000000) == 0)
            {
              v20 = LDOTreeNode_ComputeAbsoluteTo(a6, &v24);
              result = LH_ERROR_to_VERROR(v20);
              if ((result & 0x80000000) == 0)
              {
                v26 = v24;
                result = (*(a2 + 160))(a3, a4, *a9, 2, 1, &v26, &v28);
                if ((result & 0x80000000) == 0 && v29 == 6)
                {
                  return loc_exportTokenIntTnSpecificFieldToLingDB(a1, a2, a3, a4, a6, *a9);
                }
              }
            }
          }
        }
      }

      else
      {
        return 2147491860;
      }
    }
  }

  return result;
}

uint64_t loc_exportNonMarkerLabelWithTType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, _DWORD *a8, unsigned __int16 *a9)
{
  if (a7 != 1 || (LODWORD(__s) = 0, v41 = 0, v37 = 0, v16 = LDOObject_GetU32Attribute(a6, "_TTYPE", &__s, &v41), result = LH_ERROR_to_VERROR(v16), (result & 0x80000000) == 0) && (v41 != 6 || (v18 = LDOObject_GetU32Attribute(a6, "CREATED_BEFORE_TOKENTN", &__s, &v37), result = LH_ERROR_to_VERROR(v18), (result & 0x80000000) == 0) && __s && v37 == 1))
  {
    if (*a8 == 1)
    {
      result = (*(a2 + 72))(a3, a4, 3, a5, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *a8 = 0;
    }

    else
    {
      result = (*(a2 + 80))(a3, a4, *a9, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v19 = *a9;
    v40 = 0;
    v36 = 0;
    v37 = 0;
    __s = 0;
    U32Attribute = LDOObject_GetU32Attribute(a6, "_TTYPE", &v36, &v37);
    result = LH_ERROR_to_VERROR(U32Attribute);
    if ((result & 0x80000000) == 0)
    {
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a6);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(a6);
      v41 = v37;
      result = (*(a2 + 160))(a3, a4, v19, 0, 1, &v41, &v40);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a2 + 160))(a3, a4, v19, 1, 1, &AbsoluteFrom, &v40);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a2 + 160))(a3, a4, v19, 2, 1, &AbsoluteTo, &v40);
          if ((result & 0x80000000) == 0)
          {
            v21 = v41;
            if (v41 == 6)
            {
              result = loc_exportTokenIntTnSpecificFieldToLingDB(a1, a2, a3, a4, a6, v19);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v21 = v41;
            }

            if ((v21 & 0xFFFFFFFD) == 5)
            {
              StringAttribute = LDOObject_GetStringAttribute(a6, "TNTAG", &v36, &__s);
              result = LH_ERROR_to_VERROR(StringAttribute);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v36)
              {
                v23 = strlen(__s);
                result = (*(a2 + 160))(a3, a4, v19, 4, (v23 + 1), __s, &v40);
                if ((result & 0x80000000) == 0)
                {
                  v24 = LDOObject_GetStringAttribute(a6, "NORM", &v36, &__s);
                  result = LH_ERROR_to_VERROR(v24);
                  if ((result & 0x80000000) == 0)
                  {
                    if (!v36 || (v25 = strlen(__s), result = (*(a2 + 160))(a3, a4, v19, 3, (v25 + 1), __s, &v40), (result & 0x80000000) == 0))
                    {
                      v26 = LDOObject_GetStringAttribute(a6, "LANGMAP", &v36, &__s);
                      result = LH_ERROR_to_VERROR(v26);
                      if ((result & 0x80000000) == 0)
                      {
                        if (v36)
                        {
                          v27 = *(a2 + 160);
                          v28 = __s;
                          v29 = (strlen(__s) + 1);
                          v30 = a3;
                          v31 = a4;
                          v32 = v19;
                          v33 = 6;
                          return v27(v30, v31, v32, v33, v29, v28, &v40);
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                return 2147491860;
              }
            }

            else if (v21 == 4)
            {
              v34 = LDOObject_GetStringAttribute(a6, "NORM", &v36, &__s);
              result = LH_ERROR_to_VERROR(v34);
              if ((result & 0x80000000) == 0)
              {
                if (v36)
                {
                  v27 = *(a2 + 160);
                  v28 = __s;
                  v29 = (strlen(__s) + 1);
                  v30 = a3;
                  v31 = a4;
                  v32 = v19;
                  v33 = 3;
                  return v27(v30, v31, v32, v33, v29, v28, &v40);
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

uint64_t exportToLingDBWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 1;
  v59 = 0;
  v57 = 0;
  v14 = (*(a2 + 64))(a3, a4);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a2 + 56))(a3, a4);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a2 + 104))(a3, a4, 1, 0, &v62);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = loc_exportSentenceFields(a2, a3, a4, a5, a6, &v62, &v60 + 1);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = loc_exportMrkLabelsToLingDB(a1, a2, a3, a4, a6, v62, SHIDWORD(v60));
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v64 = 0;
  v63 = 0;
  v15 = *(a6 + 32);
  v16 = *(v15 + 24);
  if (v16 < *(v15 + 32))
  {
    v50 = a1;
    v51 = a7;
    v52 = a5;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *v16;
      if (*(*v16 + 26) == 1)
      {
        U32Attribute = LDOObject_GetU32Attribute(*v16, "_WTYPE", &v64, &v63);
        v19 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v19 & 0x80000000) != 0)
        {
          a5 = v52;
          goto LABEL_50;
        }

        if (v64 == 1)
        {
          v53 = v20;
          v23 = v18;
          v24 = v56 - v18;
          v25 = (v56 - v18) >> 3;
          if (v17 != v25 || v25 == -1)
          {
            v30 = (v24 >> 3);
            v18 = v23;
          }

          else
          {
            v26 = 2 * v17;
            if (2 * v17 >= v17 + 1000000)
            {
              v26 = v17 + 1000000;
            }

            if (v26 <= v17 + 1)
            {
              v27 = v17 + 1;
            }

            else
            {
              v27 = v26;
            }

            if (v27 <= 8)
            {
              v17 = 8;
            }

            else
            {
              v17 = v27;
            }

            v28 = OOCAllocator_Realloc(v52, v23, 8 * v17, &v64 + 1);
            v29 = HIDWORD(v64);
            if (HIDWORD(v64))
            {
              v18 = v28;
              goto LABEL_30;
            }

            v30 = (v24 >> 3);
            v56 = v28 + 8 * v25;
            v18 = v28;
          }

          v31 = v30 > v53;
          v32 = v30 - v53;
          if (v31)
          {
            memmove((v18 + 8 * v53 + 8), (v18 + 8 * v53), 8 * v32);
          }

          v56 += 8;
          *(v18 + 8 * v53) = v21;
          v20 = v53 + 1;
        }
      }

      ++v16;
    }

    while (v16 < *(*(a6 + 32) + 32));
    v29 = HIDWORD(v64);
    if (!HIDWORD(v64))
    {
      goto LABEL_31;
    }

LABEL_30:
    v19 = LH_ERROR_to_VERROR(v29);
LABEL_31:
    a5 = v52;
    a7 = v51;
    a1 = v50;
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_50;
    }

    v33 = *(a6 + 16);
    v35 = *(v33 + 80);
    v34 = *(v33 + 88);
    v36 = v56;
    v37 = v35 >= v34 || v18 >= v56;
    if (v37)
    {
      v49 = v18;
      v54 = v18;
      goto LABEL_39;
    }

    v42 = v18;
    v48 = v34;
    while (1)
    {
      v43 = *v35;
      v55 = v42;
      v44 = *v42;
      v45 = LDOObject_GetU32Attribute(*v35, "INDEX", &v57, &v60);
      v14 = LH_ERROR_to_VERROR(v45);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v46 = LDOObject_GetU32Attribute(v44, "INDEX", &v57, &v59);
      v14 = LH_ERROR_to_VERROR(v46);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (v60 <= v59)
      {
        v19 = loc_exportNode_WordRecord(v50, a2, a3, a4, v62, v43, &v58, &v61, v51);
        v36 = v56;
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        ++v35;
        a7 = v51;
        a1 = v50;
        v42 = v55;
      }

      else
      {
        a7 = v51;
        a1 = v50;
        v19 = loc_exportNonMarkerLabelWithWType(v50, a2, a3, a4, v62, v44, &v58, &v61, v51);
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v36 = v56;
        v42 = v55 + 1;
      }

      v34 = v48;
      if (v35 >= v48 || v42 >= v36)
      {
        v54 = v42;
        v49 = v18;
        goto LABEL_39;
      }
    }
  }

  v49 = 0;
  v19 = 0;
  v54 = 0;
  v38 = *(a6 + 16);
  v36 = 0;
  v35 = *(v38 + 80);
  v34 = *(v38 + 88);
LABEL_39:
  if (v35 >= v34)
  {
LABEL_42:
    if (v54 < v36)
    {
      v40 = a5;
      v41 = v54 + 8;
      do
      {
        v19 = loc_exportNonMarkerLabelWithWType(a1, a2, a3, a4, v62, *(v41 - 8), &v58, &v61, a7);
        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

        v37 = v41 >= v36;
        v41 += 8;
      }

      while (!v37);
      a5 = v40;
      v18 = v49;
      goto LABEL_50;
    }
  }

  else
  {
    while (1)
    {
      v39 = v34;
      v19 = loc_exportNode_WordRecord(a1, a2, a3, a4, v62, *v35, &v58, &v61, a7);
      if ((v19 & 0x80000000) != 0)
      {
        break;
      }

      ++v35;
      v34 = v39;
      if (v35 >= v39)
      {
        goto LABEL_42;
      }
    }
  }

  v18 = v49;
LABEL_50:
  if (v18)
  {
    OOCAllocator_Free(a5, v18);
  }

  return v19;
}

uint64_t loc_exportNode_WordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, unsigned __int16 *a8, int a9)
{
  if (*a7 == 1)
  {
    result = (*(a2 + 72))(a3, a4, 2, a5, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *a7 = 0;
  }

  else
  {
    result = (*(a2 + 80))(a3, a4, *a8, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v31 = 0;
  v30 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  U32Attribute = LDOObject_GetU32Attribute(a6, "_WTYPE", &v24, &v26);
  result = LH_ERROR_to_VERROR(U32Attribute);
  if ((result & 0x80000000) == 0)
  {
    if (v24)
    {
      v31 = v26;
      result = (*(a2 + 160))(a3, a4, *a8, 0, 1, &v31, &v30);
      if ((result & 0x80000000) == 0)
      {
        v18 = LDOTreeNode_ComputeAbsoluteFrom(a6, &v25 + 1);
        result = LH_ERROR_to_VERROR(v18);
        if ((result & 0x80000000) == 0)
        {
          v19 = WORD2(v25);
          v29 = WORD2(v25);
          v20 = LDOObject_GetU32Attribute(a6, "FROMOVERFLOW", &v24, &v27);
          result = LH_ERROR_to_VERROR(v20);
          if ((result & 0x80000000) == 0)
          {
            if (v24)
            {
              v29 = v27 + v19;
            }

            result = (*(a2 + 160))(a3, a4, *a8, 1, 1, &v29, &v30);
            if ((result & 0x80000000) == 0)
            {
              v21 = LDOTreeNode_ComputeAbsoluteTo(a6, &v25);
              result = LH_ERROR_to_VERROR(v21);
              if ((result & 0x80000000) == 0)
              {
                v22 = v25;
                v28 = v25;
                v23 = LDOObject_GetU32Attribute(a6, "TOOVERFLOW", &v24, &v26 + 1);
                result = LH_ERROR_to_VERROR(v23);
                if ((result & 0x80000000) == 0)
                {
                  if (v24)
                  {
                    v28 = WORD2(v26) + v22;
                  }

                  result = (*(a2 + 160))(a3, a4, *a8, 2, 1, &v28, &v30);
                  if ((result & 0x80000000) == 0)
                  {
                    return loc_exportWordRecordCommonFieldsToLingDB(a1, a2, a3, a4, a6, *a8, a9);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 2147491860;
    }
  }

  return result;
}

uint64_t loc_exportNonMarkerLabelWithWType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, unsigned __int16 *a8, int a9)
{
  if (*a7 == 1)
  {
    result = (*(a2 + 72))(a3, a4, 2, a5, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *a7 = 0;
  }

  else
  {
    result = (*(a2 + 80))(a3, a4, *a8, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v17 = *a8;
  v28 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  U32Attribute = LDOObject_GetU32Attribute(a6, "_WTYPE", &v23, &v24);
  result = LH_ERROR_to_VERROR(U32Attribute);
  if ((result & 0x80000000) == 0)
  {
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a6);
    v27 = AbsoluteFrom;
    v20 = LDOObject_GetU32Attribute(a6, "FROMOVERFLOW", &v23, &v25);
    result = LH_ERROR_to_VERROR(v20);
    if ((result & 0x80000000) == 0)
    {
      if (v23)
      {
        v27 = v25 + AbsoluteFrom;
      }

      AbsoluteTo = LDOLabel_GetAbsoluteTo(a6);
      v26 = AbsoluteTo;
      v22 = LDOObject_GetU32Attribute(a6, "TOOVERFLOW", &v23, &v24 + 1);
      result = LH_ERROR_to_VERROR(v22);
      if ((result & 0x80000000) == 0)
      {
        if (v23)
        {
          v26 = WORD2(v24) + AbsoluteTo;
        }

        v29 = v24;
        result = (*(a2 + 160))(a3, a4, v17, 0, 1, &v29, &v28);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a2 + 160))(a3, a4, v17, 1, 1, &v27, &v28);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a2 + 160))(a3, a4, v17, 2, 1, &v26, &v28);
            if ((result & 0x80000000) == 0)
            {
              return loc_exportWordRecordCommonFieldsToLingDB(a1, a2, a3, a4, a6, v17, a9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t replaceBasicTokensWithTokenIntTnInLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v58 = 0;
  v57 = 0;
  v7 = *(a5 + 32);
  v8 = *(v7 + 24);
  if (v8 >= *(v7 + 32))
  {
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v13 = *v8;
    if (*(*v8 + 26) == 1)
    {
      U32Attribute = LDOObject_GetU32Attribute(*v8, "_TTYPE", &v57 + 1, &v58);
      v6 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }

      if (HIDWORD(v57) && v58 == 6)
      {
        AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v13);
        AbsoluteTo = LDOLabel_GetAbsoluteTo(v13);
        v17 = LDOObject_GetU32Attribute(v13, "CREATED_BEFORE_TOKENTN", &v57 + 1, &v57);
        v6 = LH_ERROR_to_VERROR(v17);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        if (!HIDWORD(v57) || v57 != 1)
        {
          break;
        }
      }
    }

LABEL_49:
    if (++v8 >= *(*(a5 + 32) + 32))
    {
      return v6;
    }
  }

  v61 = 0;
  v62 = 0;
  v60 = 0;
  v18 = (*(a2 + 104))(a3, a4, 1, 0, &v62 + 2);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_57:
    v6 = v18;
    v25 = a6;
    v48 = a1;
    goto LABEL_60;
  }

  v25 = (*(a2 + 104))(a3, a4, 3, HIWORD(v62), &v62);
  if ((v25 & 0x80000000) != 0 || !v62)
  {
    log_OutText(*(a1 + 32), a6, 4, 0, "ldoutil : loc_replaceBasicTokensWithTokenIntTnInLingDB End (%x) ", v22, v23, v24, v25);
    v6 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      return v25 | 0x80002000;
    }

    goto LABEL_49;
  }

  v53 = 0;
  v54 = AbsoluteFrom;
  v26 = AbsoluteTo;
  v27 = 1;
  while (1)
  {
    v28 = v62;
    LOWORD(v63) = 0;
    v66 = 0;
    v29 = (*(a2 + 184))(a3, a4, v62, 1, &v63);
    v34 = 24031;
    if (v29 < 0 || v63 != 1)
    {
      goto LABEL_55;
    }

    (*(a2 + 168))(a3, a4, v28, 1, 1, &v61 + 2, &v66);
    if (v66 != 1)
    {
      break;
    }

    v35 = v62;
    LOWORD(v63) = 0;
    v66 = 0;
    v36 = (*(a2 + 184))(a3, a4, v62, 2, &v63);
    v34 = 24031;
    if (v36 < 0 || v63 != 1)
    {
      goto LABEL_55;
    }

    (*(a2 + 168))(a3, a4, v35, 2, 1, &v61, &v66);
    if (v66 != 1)
    {
      break;
    }

    v37 = v62;
    LOWORD(v63) = 0;
    v66 = 0;
    if (((*(a2 + 184))(a3, a4, v62, 0, &v63) & 0x80000000) == 0 && v63 == 1)
    {
      (*(a2 + 168))(a3, a4, v37, 0, 1, &v60, &v66);
      if (v66 != 1)
      {
        v6 = 2147491840;
        v25 = a6;
        v48 = a1;
        v49 = *(a1 + 32);
        v50 = a6;
        v34 = 24030;
        goto LABEL_56;
      }
    }

    if (HIWORD(v61) >= v26 && v60 != 5)
    {
      v6 = 0;
LABEL_53:
      log_OutText(*(a1 + 32), a6, 4, 0, "ldoutil : loc_replaceBasicTokensWithTokenIntTnInLingDB End (%x) ", v31, v32, v33, v6);
      goto LABEL_49;
    }

    if (HIWORD(v61) < v54 || v61 > v26 || v60 > 3)
    {
      v6 = 0;
      v47 = v62;
      goto LABEL_45;
    }

    if (v27 == 1)
    {
      if (HIWORD(v61) != v54)
      {
        v6 = 0;
        v27 = 1;
        goto LABEL_39;
      }

      v59 = v62;
      v38 = (*(a2 + 80))(a3, a4);
      if (v38 < 0)
      {
        LODWORD(v25) = v38;
        return v25 | 0x80002000;
      }

      v39 = v59;
      v66 = v54;
      v65 = v26;
      v64 = 0;
      v63 = 6;
      v40 = (*(a2 + 160))(a3, a4, v59, 0, 1, &v63, &v64);
      if ((v40 & 0x80000000) != 0 || (v40 = (*(a2 + 160))(a3, a4, v39, 1, 1, &v66, &v64), (v40 & 0x80000000) != 0) || (v40 = (*(a2 + 160))(a3, a4, v39, 2, 1, &v65, &v64), (v40 & 0x80000000) != 0))
      {
        v6 = v40;
LABEL_59:
        v25 = a6;
        v48 = a1;
        goto LABEL_60;
      }

      v6 = loc_exportTokenIntTnSpecificFieldToLingDB(a1, a2, a3, a4, v13, v39);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v6 = 0;
    }

    v27 = 0;
LABEL_39:
    v45 = (*(a2 + 192))(a3, a4, v62);
    v46 = *(a1 + 32);
    if (v45)
    {
      log_OutPublic(v46, a6, 24033, "%s%d", v41, v42, v43, v44, "tokenRecId");
      goto LABEL_53;
    }

    log_OutText(v46, a6, 5, 0, "deleting key %d", v42, v43, v44, v62);
    if (!v53)
    {
      v18 = (*(a2 + 104))(a3, a4, 3, HIWORD(v62), &v62);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      continue;
    }

    v47 = v53;
    LOWORD(v62) = v53;
LABEL_45:
    v53 = v47;
    if ((*(a2 + 120))(a3, a4, v47, &v62) || !v62)
    {
      goto LABEL_53;
    }
  }

  v34 = 24030;
LABEL_55:
  v6 = 2147491840;
  v25 = a6;
  v48 = a1;
  v49 = *(a1 + 32);
  v50 = a6;
LABEL_56:
  log_OutPublic(v49, v50, v34, 0, v30, v31, v32, v33, v52);
LABEL_60:
  log_OutText(*(v48 + 32), v25, 4, 0, "ldoutil : loc_replaceBasicTokensWithTokenIntTnInLingDB End (%x) ", v19, v20, v21, v6);
  LODWORD(v25) = v6;
  return v25 | 0x80002000;
}

uint64_t LingDBIsValid(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    v9 = (*(a1 + 184))(a2, a3, HIWORD(v10), 3, &v10);
    result = 0;
    if ((v9 & 0x80000000) == 0)
    {
      if (v10)
      {
        result = 0;
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t LingDBHasSentence(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v11 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, HIWORD(v11), 0, &v11);
    if ((result & 0x80000000) == 0)
    {
      if (v11)
      {
        result = (*(a1 + 176))(a2, a3, HIWORD(v11), 0, &v9, &v10);
        if ((result & 0x80000000) == 0 && v10 >= 2u)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t loc_importTokenIntTnFieldsFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  LDOObject_SetU32Attribute(a5, "CREATED_BEFORE_TOKENTN", 1);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a2 + 176))(a3, a4, a6, 3, &v29, &v28 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = LDOObject_SetStringAttribute(a5, "NORM", v29);
  v13 = LH_ERROR_to_VERROR(v14);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a2 + 176))(a3, a4, a6, 4, &v29, &v28 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = LDOObject_SetStringAttribute(a5, "TNTAG", v29);
  v13 = LH_ERROR_to_VERROR(v15);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a2 + 184))(a3, a4, a6, 5, &v28);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (!v28)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v13 = (*(a2 + 176))(a3, a4, a6, 5, &v27, &v28 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  LDOObject_SetU32Attribute(a5, "_MRKRD", HIWORD(v28));
  v13 = LH_ERROR_to_VERROR(v16);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (HIWORD(v28))
  {
    v17 = heap_Calloc(*(a1 + 8), HIWORD(v28), 4);
    if (!v17)
    {
      return 2147491850;
    }

    v18 = v17;
    v19 = HIWORD(v28);
    if (HIWORD(v28))
    {
      v20 = 0;
      v21 = v27;
      do
      {
        *(v17 + 4 * v20) = *(v21 + 2 * v20);
        ++v20;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v18 = 0;
    LODWORD(v19) = 0;
  }

  v24 = LDOObject_SetListU32Attribute(a5, "_MRK", v18, v19);
  v25 = LH_ERROR_to_VERROR(v24);
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v22 = (*(a2 + 184))(a3, a4, a6, 6, &v28);
  if ((v22 & 0x80000000) == 0 && v28)
  {
    v25 = (*(a2 + 176))(a3, a4, a6, 6, &v29, &v28 + 2);
    if ((v25 & 0x80000000) == 0)
    {
      v26 = LDOObject_SetStringAttribute(a5, "LANGMAP", v29);
      v25 = LH_ERROR_to_VERROR(v26);
    }

LABEL_25:
    v22 = v25;
  }

  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
  }

  return v22;
}

uint64_t loc_importTokenDctFieldsFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v13 = 0;
  LDOObject_SetU32Attribute(a4, "CREATED_BEFORE_TOKENTN", 1);
  result = LH_ERROR_to_VERROR(v10);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 176))(a2, a3, a5, 3, &v14, &v13);
    if ((result & 0x80000000) == 0)
    {
      v12 = LDOObject_SetStringAttribute(a4, "NORM", v14);
      return LH_ERROR_to_VERROR(v12);
    }
  }

  return result;
}

uint64_t loc_compute_overflow(uint64_t a1, unsigned int *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v16 = 0;
  v9 = LDO_ComputeText(a1, &v16);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = LHString_Length(v16);
    *a4 = 0;
    *a5 = 0;
    v12 = *a3;
    if (*a3 > v11)
    {
      *a5 = *a3 - v11;
      *a3 = v11;
      v12 = v11;
    }

    v13 = *a2;
    if (*a2 > v11)
    {
      *a4 = *a2 - v11;
      *a2 = v11;
      v12 = *a3;
      v13 = v11;
    }

    if (v13 > v12)
    {
      *a2 = v12;
    }
  }

  if (v16)
  {
    v14 = LDOString_BorrowAllocator(v16);
    OOC_PlacementDeleteObject(v14, v16);
  }

  return v10;
}

uint64_t loc_importWordRecordFieldsFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  v51 = 0;
  v50 = 0;
  v48 = 0;
  __s = 0;
  LDOObject_SetU32Attribute(a5, "INDEX", a7);
  v18 = LH_ERROR_to_VERROR(v17);
  if ((v18 & 0x80000000) == 0)
  {
    if (!a9 || (LDOObject_SetU32Attribute(a5, "FROMOVERFLOW", a9), v18 = LH_ERROR_to_VERROR(v19), (v18 & 0x80000000) == 0))
    {
      if (!a10 || (LDOObject_SetU32Attribute(a5, "TOOVERFLOW", a10), v18 = LH_ERROR_to_VERROR(v20), (v18 & 0x80000000) == 0))
      {
        v46 = a8;
        v47 = a1;
        v21 = "PRIORITY";
        v22 = 4;
        v23 = &off_1E81A3768;
        do
        {
          v24 = *(v23 - 8);
          v18 = (*(a2 + 184))(a3, a4, a6, v24, &v51);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          if (v51)
          {
            v18 = (*(a2 + 168))(a3, a4, a6, v24, 1, &v50, &v51 + 2);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            LDOObject_SetU32Attribute(a5, v21, v50);
            v18 = LH_ERROR_to_VERROR(v25);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }
          }

          v26 = *v23;
          v23 += 2;
          v21 = v26;
          --v22;
        }

        while (v22);
        v45 = a5;
        v27 = "PHON";
        v28 = 14;
        v29 = &off_1E81A37B8;
        v30 = v46;
        while (1)
        {
          v31 = *(v29 - 8);
          v18 = (*(a2 + 184))(a3, a4, a6, v31, &v51);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          if (v51)
          {
            v18 = (*(a2 + 176))(a3, a4, a6, v31, &__s, &v51 + 2);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            if (v30)
            {
              if (v31 <= 0xF && ((1 << v31) & 0x8808) != 0)
              {
LABEL_19:
                v32 = __s;
                v52 = 0;
                v33 = strlen(__s);
                v34 = Utf8_DepesLengthInBytesUtf8(__s, v33);
                v35 = heap_Calloc(*(v47 + 8), v34 + 1, 1);
                if (!v35)
                {
                  return 2147491850;
                }

                v36 = v35;
                v37 = strlen(v32);
                v38 = utf8_DepesToUtf8(v32, v37, 0, v36, v34, &v52, 0);
                if ((v38 & 0x80000000) != 0 || (v36[v52] = 0, v38 = (*(a2 + 320))(a3, a4, 0), (v38 & 0x80000000) != 0) || (v39 = LDOObject_SetStringAttribute(v45, v27, v36), v38 = LH_ERROR_to_VERROR(v39), (v38 & 0x80000000) != 0))
                {
                  v42 = v38;
                  heap_Free(*(v47 + 8), v36);
                  return v42;
                }

                heap_Free(*(v47 + 8), v36);
                v30 = v46;
                goto LABEL_26;
              }
            }

            else if (v31 == 15)
            {
              goto LABEL_19;
            }

            v40 = LDOObject_SetStringAttribute(v45, v27, __s);
            v18 = LH_ERROR_to_VERROR(v40);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }
          }

LABEL_26:
          v41 = *v29;
          v29 += 2;
          v27 = v41;
          if (!--v28)
          {
            v42 = (*(a2 + 184))(a3, a4, a6, 16, &v51);
            if ((v42 & 0x80000000) != 0 || !v51)
            {
              return v42;
            }

            v18 = (*(a2 + 176))(a3, a4, a6, 16, &v48, &v51 + 2);
            if ((v18 & 0x80000000) == 0)
            {
              v43 = LDOObject_SetListU32Attribute(v45, "SGT", v48, HIWORD(v51));
              return LH_ERROR_to_VERROR(v43);
            }

            return v18;
          }
        }
      }
    }
  }

  return v18;
}

uint64_t loc_exportTokenIntTnSpecificFieldToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v38 = 1;
  __s = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  StringAttribute = LDOObject_GetStringAttribute(a5, "NORM", &v38, &__s);
  v13 = LH_ERROR_to_VERROR(StringAttribute);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = 2147491860;
  if (!v38)
  {
    return 2147491860;
  }

  v15 = strlen(__s);
  v13 = (*(a2 + 160))(a3, a4, a6, 3, (v15 + 1), __s, &v36);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v16 = LDOObject_GetStringAttribute(a5, "TNTAG", &v38, &__s);
  v13 = LH_ERROR_to_VERROR(v16);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (!v38)
  {
    return 2147491860;
  }

  v17 = strlen(__s);
  v13 = (*(a2 + 160))(a3, a4, a6, 4, (v17 + 1), __s, &v36);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v18 = LDOObject_GetStringAttribute(a5, "LANGMAP", &v38, &__s);
  v13 = LH_ERROR_to_VERROR(v18);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v38)
  {
    v19 = strlen(__s);
    v13 = (*(a2 + 160))(a3, a4, a6, 6, (v19 + 1), __s, &v36);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

  U32Attribute = LDOObject_GetU32Attribute(a5, "ORIGREFDUR", &v38, &v34);
  v13 = LH_ERROR_to_VERROR(U32Attribute);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v38)
  {
    v33 = v34;
    v13 = (*(a2 + 160))(a3, a4, a6, 8, 1, &v33, &v36);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

  v21 = LDOObject_GetU32Attribute(a5, "_MRKRD", &v38, &v35);
  v22 = LH_ERROR_to_VERROR(v21);
  if ((v22 & 0x80000000) == 0 && v38)
  {
    v32 = 0;
    v31 = 0;
    ListU32Attribute = LDOObject_GetListU32Attribute(a5, "_MRK", &v38, &v32, &v31);
    v24 = LH_ERROR_to_VERROR(ListU32Attribute);
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    if (!v38)
    {
      return v14;
    }

    v30 = v31;
    v25 = v31;
    if (v31)
    {
      v26 = heap_Calloc(*(a1 + 8), v31, 2);
      if (!v26)
      {
        return 2147491850;
      }
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v28 = 0;
      v29 = v32;
      do
      {
        *(v26 + 2 * v28) = *(v29 + 4 * v28);
        ++v28;
      }

      while (v28 < v25);
    }

    v22 = (*(a2 + 160))(a3, a4, a6, 5, v35, v26, &v30);
    if (v26)
    {
      heap_Free(*(a1 + 8), v26);
    }

    if (v32)
    {
      heap_Free(*(a1 + 8), v32);
    }
  }

  return v22;
}

uint64_t loc_exportWordRecordCommonFieldsToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7)
{
  v39 = 0;
  __s = 0;
  v42 = 0;
  v41 = 0;
  v12 = "PRIORITY";
  v40 = 0;
  v13 = &off_1E81A3768;
  v14 = 4;
  while (1)
  {
    v15 = *(v13 - 8);
    U32Attribute = LDOObject_GetU32Attribute(a5, v12, &v39, &v41);
    v17 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v17 & 0x80000000) != 0)
    {
      break;
    }

    if (v39)
    {
      v17 = (*(a2 + 160))(a3, a4, a6, v15, 1, &v41, &v42);
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }
    }

    v18 = *v13;
    v13 += 2;
    v12 = v18;
    if (!--v14)
    {
      v36 = a6;
      v19 = "PHON";
      v20 = &off_1E81A37B8;
      v21 = 14;
      while (1)
      {
        v22 = *(v20 - 8);
        StringAttribute = LDOObject_GetStringAttribute(a5, v19, &v39, &__s);
        v17 = LH_ERROR_to_VERROR(StringAttribute);
        if ((v17 & 0x80000000) != 0)
        {
          break;
        }

        if (v39)
        {
          if (a7 && (!strcmp(v19, "PHON") || !strcmp(v19, "MULTIPHON")) || !strcmp(v19, "SPTCHK"))
          {
            v25 = __s;
            v26 = strlen(__s);
            v27 = (v26 + 1);
            v44 = v26 + 1;
            v28 = heap_Calloc(*(a1 + 8), v27, 1);
            if (!v28)
            {
              return 2147491850;
            }

            v29 = v28;
            v17 = utf8_Utf8ToDepes(v25, v27, 0, v28, v27, &v44, 0);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v29[v44 - 1] = 0;
            v17 = (*(a2 + 320))(a3, a4, 1);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v30 = strlen(v29);
            v31 = (*(a2 + 160))(a3, a4, v36, v22, (v30 + 1), v29, &v42);
            heap_Free(*(a1 + 8), v29);
            if ((v31 & 0x80000000) != 0)
            {
              return v31;
            }
          }

          else
          {
            v24 = strlen(__s);
            v17 = (*(a2 + 160))(a3, a4, v36, v22, (v24 + 1), __s, &v42);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }
          }
        }

        v32 = *v20;
        v20 += 2;
        v19 = v32;
        if (!--v21)
        {
          ListU32Attribute = LDOObject_GetListU32Attribute(a5, "SGT", &v39, &v40, &v39 + 1);
          v31 = LH_ERROR_to_VERROR(ListU32Attribute);
          v34 = v40;
          if ((v31 & 0x80000000) == 0 && v39 && (v31 = (*(a2 + 160))(a3, a4, v36, 16, WORD2(v39), v40, &v42), v34 = v40, (v31 & 0x80000000) == 0) && v40 || v34)
          {
            heap_Free(*(a1 + 8), v34);
          }

          return v31;
        }
      }

      return v17;
    }
  }

  return v17;
}

uint64_t luavmldoutil_destroy_lua_vm(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result, v3);
    *a2 = 0;
  }

  return result;
}

uint64_t hlp_luavmldoutil_initialize_lua_vm(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char *a7, unsigned int a8, int a9)
{
  v21 = 0;
  if (*a6)
  {
    OOC_PlacementDeleteObject(a3, *a6);
    *a6 = 0;
  }

  if (a9 == 1)
  {
    IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, a7, &v21);
    if (IsLuaCodeAvailable)
    {
      goto LABEL_7;
    }

    if (!v21)
    {
      v18 = 0;
      goto LABEL_10;
    }
  }

  v21 = 0;
  IsLuaCodeAvailable = PNEW_LuaVMLDO_Con(a3, a3, a1, a2, a5, a6);
  if (IsLuaCodeAvailable)
  {
    goto LABEL_7;
  }

  v20 = *a6;
  if (a9 != 1)
  {
    IsLuaCodeAvailable = LuaVMLDO_LoadScriptFromBuffer(v20, a7, a8);
    if (!IsLuaCodeAvailable)
    {
      goto LABEL_20;
    }

LABEL_7:
    if (IsLuaCodeAvailable == 1)
    {
      v18 = -2147475446;
    }

    else
    {
      v18 = -2147475456;
    }

    goto LABEL_10;
  }

  IsLuaCodeAvailable = LuaVMLDO_LoadScriptFromRIFF(v20, a7);
  if (IsLuaCodeAvailable)
  {
    goto LABEL_7;
  }

LABEL_20:
  result = LuaVMLDO_IsLuaFunctionAvailable(*a6, a4, &v21);
  if (result == 1)
  {
    v18 = -2147475446;
  }

  else
  {
    if (result)
    {
      v18 = -2147475456;
    }

    else
    {
      v18 = 0;
    }

    if (!result && v21)
    {
      return result;
    }
  }

LABEL_10:
  if (*a6)
  {
    OOC_PlacementDeleteObject(a3, *a6);
    *a6 = 0;
  }

  if (v18 < 0)
  {
    return v18;
  }

  else
  {
    return 2147491860;
  }
}

uint64_t LDO_ConFromText(void *a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LDO;
    a1[1] = a2;
    result = PNEW_LDOString_ConFromCPtr(a2, a2, a3, a1 + 3);
    if (!result)
    {
      result = PNEW_LDOTreeNode_ConRoot(a1[1], a1[1], a3, a4, a5, a1 + 2);
      if (!result)
      {
        v11 = a1[1];

        return PNEW_LDOLabelSet_Con(v11, v11, a1 + 4);
      }
    }
  }

  return result;
}

uint64_t LDO_Des(uint64_t *a1)
{
  v2 = a1[3];
  if (!v2 || (result = OOC_PlacementDeleteObject(a1[1], v2), !result))
  {
    v4 = a1[2];
    if (!v4 || (result = OOC_PlacementDeleteObject(a1[1], v4), !result))
    {
      v5 = a1[4];
      if (!v5 || (result = OOC_PlacementDeleteObject(a1[1], v5), !result))
      {

        return Object_Des();
      }
    }
  }

  return result;
}

uint64_t LDO_AddLabel(uint64_t a1, char *a2, char *a3, uint64_t a4, void *a5)
{
  v16 = 0;
  if (((*(a4 + 16) - *(a4 + 8)) & 0x7FFFFFFF8) != 0)
  {
    if (LDOTreeNode_HaveSameParent(a4) == 1)
    {
      PNEW_LDOLabel_Con(*(a1 + 8), *(a1 + 8), a2, a3, a4, &v16);
      v11 = v16;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v15 = LDOLabelSet_AddLabel(*(a1 + 32), v16);
        v12 = v15;
        v11 = v16;
        if (a5 && !v15)
        {
          *a5 = v16;
          return v12;
        }
      }

      if (v12)
      {
        if (v11)
        {
          OOC_PlacementDeleteObject(*(a1 + 8), v11);
        }
      }

      return v12;
    }

    v13 = "pvecNodes has elements with different parent nodes";
  }

  else
  {
    v13 = "pvecNodes has no elements";
  }

  return kaldi::OffsetFileInputImpl::MyType(v13);
}

uint64_t LDO_AddLabelOnSubstring(uint64_t a1, char *a2, char *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v12 = LDO_ValidateIndices(a1, a4, a5, &v15 + 1, &v15, 0);
  if (v12)
  {
    return v12;
  }

  if (HIDWORD(v15) == v15)
  {
    return LDO_AddSpecialLabel(a1, a2, a3, &v15 + 1, &v15, a6);
  }

  v12 = LDO_ComputeLeafNodesByRange(a1, a4, a5, &v16);
  if (v12)
  {
    return v12;
  }

  v13 = LDO_AddLabel(a1, a2, a3, &v16, a6);
  LODWORD(v16) = 0;
  if (v17)
  {
    OOCAllocator_Free(*(a1 + 8), v17);
  }

  return v13;
}

uint64_t LDO_ValidateIndices(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v18 = 0;
  LDOTreeNode_ComputeAbsoluteTo(*(a1 + 16), &v18);
  if (a2)
  {
    v11 = *a2;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = &v18;
    }

    v13 = *v12;
    if (v11 > v13)
    {
      v14 = "u32From is greater than u32To";
      return kaldi::OffsetFileInputImpl::MyType(v14);
    }

    v16 = v18;
    if (v11 > v18)
    {
      v14 = "u32From is greater than u32Length";
      return kaldi::OffsetFileInputImpl::MyType(v14);
    }
  }

  else
  {
    v11 = 0;
    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = &v18;
    }

    v13 = *v15;
    v16 = v18;
  }

  if (v13 > v16)
  {
    v14 = "u32To is greater than u32Length";
    return kaldi::OffsetFileInputImpl::MyType(v14);
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = v13;
  }

  result = 0;
  if (a6)
  {
    *a6 = v16;
  }

  return result;
}

uint64_t LDO_AddSpecialLabel(uint64_t a1, char *a2, char *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v16 = 0;
  v17 = 0;
  v10 = LDO_ValidateIndices(a1, a4, a5, &v16 + 1, &v16, 0);
  if (!v10)
  {
    PNEW_LDOLabel_ConSpecial(*(a1 + 8), *(a1 + 8), a2, a3, SHIDWORD(v16), v16, &v17);
    v13 = v17;
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v15 = LDOLabelSet_AddLabel(*(a1 + 32), v17);
      v10 = v15;
      v13 = v17;
      if (a6 && !v15)
      {
        *a6 = v17;
        return v10;
      }
    }

    if (v10)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v13);
    }
  }

  return v10;
}

uint64_t LDO_ComputeLeafNodesByRange(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned int *a4)
{
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  LDOTreeNode_ComputeAbsoluteTo(*(a1 + 16), &v26);
  if (a2)
  {
    LODWORD(a2) = *a2;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &v26;
  }

  v9 = *v8;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  v28 = LDOTreeNode_ComputeSubtreeNodes(*(a1 + 16), &v23);
  if (!v28)
  {
    if (a2 > v9)
    {
      v10 = "u32From is greater than u32To";
LABEL_13:
      v28 = kaldi::OffsetFileInputImpl::MyType(v10);
      goto LABEL_14;
    }

    if (a2 > v26)
    {
      v10 = "u32From is greater than u32Length";
      goto LABEL_13;
    }

    if (v9 > v26)
    {
      v10 = "u32To is greater than u32Length";
      goto LABEL_13;
    }

    for (i = v24; i < v25; ++i)
    {
      v13 = *i;
      if (LDOTreeNode_IsLeaf(*i))
      {
        LDOTreeNode_ComputeAbsoluteFrom(v13, &v27);
        if (a2 <= v27)
        {
          LDOTreeNode_ComputeAbsoluteTo(v13, &v26 + 1);
          if (v9 >= HIDWORD(v26))
          {
            v14 = *(a4 + 1);
            v15 = *(a4 + 2);
            v16 = v15 - v14;
            v17 = ((v15 - v14) >> 3) + 1;
            v18 = *a4;
            if (v17 > *a4)
            {
              v19 = 2 * v18;
              v20 = v18 + 1000000;
              if (v19 >= v20)
              {
                v19 = v20;
              }

              if (v19 <= v17)
              {
                v19 = v17;
              }

              if (v19 <= 8)
              {
                v21 = 8;
              }

              else
              {
                v21 = v19;
              }

              v22 = OOCAllocator_Realloc(*(a1 + 8), v14, 8 * v21, &v28);
              *(a4 + 1) = v22;
              if (v28)
              {
                break;
              }

              *a4 = v21;
              v15 = (v22 + (v16 & 0x7FFFFFFF8));
              *(a4 + 2) = v15;
            }

            *v15 = v13;
            *(a4 + 2) += 8;
          }
        }
      }
    }
  }

LABEL_14:
  LODWORD(v23) = 0;
  if (v24)
  {
    OOCAllocator_Free(*(a1 + 8), v24);
  }

  return v28;
}

uint64_t LDO_AppendNewNode(uint64_t a1, size_t a2, char *a3, char *a4, int a5, unsigned int a6, void *a7)
{
  v9 = 0;
  result = PNEW_LDOTreeNode_Con(*(a1 + 8), *(a1 + 8), a2, a3, a4, a5, a6, &v9);
  if (a7)
  {
    if (!result)
    {
      *a7 = v9;
    }
  }

  return result;
}

uint64_t LDO_ComputeLeafNodeContainingRange(uint64_t a1, _DWORD *a2, _DWORD *a3, size_t *a4)
{
  v4 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  *a4 = 0;
  if (*a2 != *a3)
  {
    v9 = LDO_ComputeLeafNodesByRange(a1, 0, 0, &v16);
    v10 = v17;
    if (v9)
    {
      goto LABEL_3;
    }

    v11 = v18;
    if (v17 < v18)
    {
      v12 = v17;
      while (1)
      {
        v13 = *v12;
        v9 = LDOTreeNode_ComputeAbsoluteFrom(*v12, &v15 + 1);
        if (v9)
        {
          break;
        }

        v9 = LDOTreeNode_ComputeAbsoluteTo(v13, &v15);
        if (v9)
        {
          break;
        }

        if (HIDWORD(v15) <= *a2 && v15 >= *a3)
        {
          v4 = 0;
          *a4 = v13;
          if (v10)
          {
            goto LABEL_13;
          }

          return v4;
        }

        if (++v12 >= v11)
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v4 = v9;
      if (!v10)
      {
        return v4;
      }

      goto LABEL_13;
    }

LABEL_12:
    v4 = 0;
    if (v10)
    {
LABEL_13:
      OOCAllocator_Free(*(a1 + 8), v10);
    }
  }

  return v4;
}

uint64_t LDO_FreeLDOTreeNodeVector(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return 0;
}

uint64_t LDO_ComputeNodesCoveredByLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  *(a3 + 8) = 0;
  v5 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  v7 = a2 + 72;
  v6 = *(a2 + 72);
  v8 = *(v7 + 8) - v6;
  if (!(v8 >> 3))
  {
    v10 = 0;
    goto LABEL_8;
  }

  if ((v8 >> 3) <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8 >> 3;
  }

  v10 = OOCAllocator_Realloc(*(a1 + 8), 0, 8 * v9, &v13);
  *v5 = v10;
  v11 = v13;
  if (!v13)
  {
    *a3 = v9;
    *(a3 + 16) = v10;
    v6 = *(a2 + 72);
    v8 = *(a2 + 80) - v6;
LABEL_8:
    memcpy(v10, v6, v8 & 0x7FFFFFFF8);
    *(a3 + 16) += (*(a2 + 80) - *(a2 + 72)) & 0x7FFFFFFF8;
    return v13;
  }

  return v11;
}

uint64_t LDO_ComputeOverlappingLabels(uint64_t a1, unsigned int *a2, unsigned int *a3, int a4, unsigned int *a5)
{
  v9 = 0;
  result = LDO_ValidateIndices(a1, a2, a3, &v9 + 1, &v9, 0);
  if (!result)
  {
    return LDOLabelSet_ComputeOverlappingLabels(*(a1 + 32), HIDWORD(v9), v9, a4, a5);
  }

  return result;
}

uint64_t LDO_CountLeafNodesOnRange(uint64_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = LDO_ComputeLeafNodesByRange(a1, a2, a3, &v12);
  if (v8)
  {
    v9 = v13;
    goto LABEL_3;
  }

  v9 = v13;
  v10 = (v14 - v13) >> 3;
  *a4 = v10;
  if (!a5 || !v10)
  {
LABEL_3:
    if (!v9)
    {
      return v8;
    }

    goto LABEL_8;
  }

  LDOTreeNode_ComputeAbsoluteFrom(*v9, a5);
LABEL_8:
  OOCAllocator_Free(*(a1 + 8), v9);
  return v8;
}

__n128 LDO_GetLabels@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 32);
  result = v2[1];
  *a2 = result;
  a2[1].n128_u64[0] = v2[2].n128_u64[0];
  return result;
}

uint64_t LDO_SetText(uint64_t a1, size_t a2, char *__s)
{
  v7 = 0;
  result = LDOTreeNode_ComputeUpdateInfo(a2, __s, &v7 + 1, &v7);
  if (!result)
  {
    result = LDOTreeNode_SetText(a2, __s);
    if (!result)
    {
      return LDOLabelSet_UpdateSpan(*(a1 + 32), HIDWORD(v7), v7);
    }
  }

  return result;
}

uint64_t LDO_ReplaceNodes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v27 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (((*(a2 + 16) - *(a2 + 8)) & 0x7FFFFFFF8) == 0)
  {
    v21 = "pvecOldNodes is empty";
LABEL_25:
    updated = kaldi::OffsetFileInputImpl::MyType(v21);
LABEL_26:
    v20 = updated;
    goto LABEL_27;
  }

  if (LDOTreeNode_HaveSameParent(a2) != 1)
  {
    v21 = "pvecOldNodes has elements with different parent nodes";
    goto LABEL_25;
  }

  v6 = **(a2 + 8);
  v7 = *(v6 + 64);
  if (!v7)
  {
    v7 = *(a1 + 16);
  }

  v8 = *(v6 + 104);
  updated = LDOTreeNode_ComputeFromToIndices(a2, 1, &v27 + 1, &v27);
  if (updated)
  {
    goto LABEL_26;
  }

  updated = LDOTreeNode_ComputeVectorTextLength(a2, &v26 + 1);
  if (updated)
  {
    goto LABEL_26;
  }

  updated = LDOTreeNode_ComputeVectorTextLength(a3, &v26);
  if (updated)
  {
    goto LABEL_26;
  }

  v10 = v26;
  v11 = HIDWORD(v26);
  v13 = v27;
  v12 = HIDWORD(v27);
  updated = LDOLabelSet_ComputeContainedLabels(*(a1 + 32), HIDWORD(v27), v27, 0, &v23);
  if (updated)
  {
    goto LABEL_26;
  }

  updated = __LDO_UpdateOrthography(a2, a3, v7, v8);
  if (updated)
  {
    goto LABEL_26;
  }

  updated = LDOLabelSet_UpdateRegularLabels(*(a1 + 32), a2, a3);
  if (updated)
  {
    goto LABEL_26;
  }

  updated = LDOLabelSet_UpdateSpan(*(a1 + 32), HIDWORD(v27), v10 - v11);
  if (updated)
  {
    goto LABEL_26;
  }

  v15 = v24;
  v14 = v25;
  if (v24 < v25)
  {
    v16 = v13 + v10 - v11;
    do
    {
      v17 = *v15;
      if (*(*v15 + 112) == 1)
      {
        v18 = v17[22];
        v19 = v17[23];
        v17[22] = v12;
        if (v18 == v19)
        {
          v17[23] = v12;
        }

        else
        {
          v17[23] = v16;
        }
      }

      else
      {
        updated = LDOLabel_RemoveNodes(*v15, a2);
        if (updated)
        {
          goto LABEL_26;
        }

        updated = LDOLabel_AddNodes(v17, a3);
        if (updated)
        {
          goto LABEL_26;
        }

        v14 = v25;
      }

      v17[26] = 1;
      ++v15;
    }

    while (v15 < v14);
  }

  __LDO_DestroyLDOTreeNodeVector(a2);
  v20 = 0;
LABEL_27:
  LODWORD(v23) = 0;
  if (v24)
  {
    OOCAllocator_Free(*(a1 + 8), v24);
  }

  return v20;
}

uint64_t __LDO_UpdateOrthography(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = 0;
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 16))
  {
LABEL_5:
    for (i = *(a2 + 8); ; ++i)
    {
      if (i >= *(a2 + 16))
      {
        return 0;
      }

      v12 = *i;
      v13 = LDOTreeNode_ComputeText(*i, &v22);
      v14 = v22;
      if (v13)
      {
        break;
      }

      v15 = LHString_Length(v22);
      v16 = *(v12 + 96);
      if (v16)
      {
        v17 = LHString_Erase(v16);
        if (v17)
        {
          v13 = v17;
          v14 = v22;
          break;
        }
      }

      *(v12 + 104) = a4;
      *(v12 + 108) = a4;
      v13 = LDOTreeNode_AddChild(a3, v12);
      v14 = v22;
      if (v13)
      {
        break;
      }

      v18 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v22);
      v13 = LDOTreeNode_SetText(v12, v18);
      v14 = v22;
      if (v13)
      {
        break;
      }

      if (v22)
      {
        v19 = LDOString_BorrowAllocator(v22);
        OOC_PlacementDeleteObject(v19, v22);
        v22 = 0;
      }

      a4 += v15;
    }

    if (v14)
    {
      v20 = LDOString_BorrowAllocator(v14);
      OOC_PlacementDeleteObject(v20, v22);
    }
  }

  else
  {
    while (1)
    {
      v9 = *v7;
      v10 = LDOTreeNode_SetText(*v7, "");
      if (v10)
      {
        return v10;
      }

      v10 = LDOTreeNode_RemoveChild(a3, v9);
      if (v10)
      {
        return v10;
      }

      if (++v7 >= *(a1 + 16))
      {
        goto LABEL_5;
      }
    }
  }

  return v13;
}

uint64_t __LDO_DestroyLDOTreeNodeVector(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < *(result + 16))
  {
    v2 = result;
    do
    {
      v3 = *v1++;
      v4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v3);
      result = OOC_PlacementDeleteObject(v4, v3);
    }

    while (v1 < *(v2 + 16));
  }

  return result;
}

uint64_t LDO_ToString(uint64_t a1, uint64_t *a2)
{
  v18 = 0;
  v4 = PNEW_LDOString_Con(*(a1 + 8), *(a1 + 8), a2);
  if (v4)
  {
    return v4;
  }

  v5 = *a2;
  appended = LHString_Append(v5, "LDO\n");
  if (!appended)
  {
    appended = LDOString_AppendPrefixStringSuffix(v5, "  Initial text: ", *(a1 + 24), "\n");
    if (!appended)
    {
      v10 = LDOTreeNode_ComputeText(*(a1 + 16), &v18);
      v11 = v18;
      if (v10)
      {
        goto LABEL_13;
      }

      v10 = LDOString_AppendPrefixStringSuffix(v5, "  Current text: ", v18, "\n");
      v11 = v18;
      if (v10)
      {
        goto LABEL_13;
      }

      if (v18)
      {
        v13 = LDOString_BorrowAllocator(v18);
        OOC_PlacementDeleteObject(v13, v18);
        v18 = 0;
      }

      v14 = *(a1 + 16);
      if (v14)
      {
        v10 = (*(*v14 + 24))(v14, &v18, v11);
        v11 = v18;
        if (v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      v10 = LDOString_AppendPrefixStringSuffix(v5, "LDO Tree:\n", v11, "\n");
      v11 = v18;
      if (!v10)
      {
        if (v18)
        {
          v15 = LDOString_BorrowAllocator(v18);
          OOC_PlacementDeleteObject(v15, v18);
          v18 = 0;
        }

        v16 = *(a1 + 32);
        if (!v16)
        {
          v11 = 0;
LABEL_29:
          v4 = LDOString_AppendPrefixStringSuffix(v5, "LDO Labels:\n", v11, "\n");
          v11 = v18;
          if (!v4 && v18)
          {
            v17 = LDOString_BorrowAllocator(v18);
            OOC_PlacementDeleteObject(v17, v18);
            return 0;
          }

          goto LABEL_14;
        }

        v10 = LDOLabelSet_ToString(v16, &v18);
        v11 = v18;
        if (!v10)
        {
          goto LABEL_29;
        }
      }

LABEL_13:
      v4 = v10;
LABEL_14:
      if (v11)
      {
        v12 = LDOString_BorrowAllocator(v11);
        OOC_PlacementDeleteObject(v12, v18);
        v18 = 0;
      }

      goto LABEL_5;
    }
  }

  v4 = appended;
LABEL_5:
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = LDOString_BorrowAllocator(v5);
    OOC_PlacementDeleteObject(v8, v5);
  }

  return v4;
}

uint64_t PNEW_LDO_ConFromText(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 40, &v14);
  result = v14;
  if (!v14)
  {
    result = LDO_ConFromText(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

double LDOLabel_Con(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  if (!LDOObject_Con(a1, a2))
  {
    *a1 = &__LDOLabel;
    *(a1 + 112) = 0;
    if (!LDOObject_SetCategory(a1, a3) && !LDOObject_SetType(a1, a4))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      if (!LDOLabel_AddNodes(a1, a5) && !LDOTreeNode_ComputeFromToIndices(a5, 1, (a1 + 96), (a1 + 100)))
      {
        *&result = 1;
        *(a1 + 104) = 1;
      }
    }
  }

  return result;
}

uint64_t LDOLabel_AddNodes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 16))
  {
    return 0;
  }

  while (1)
  {
    result = LDOLabel_AddNode(a1, *v2);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a2 + 16))
    {
      return 0;
    }
  }

  return result;
}

double LDOLabel_ConSpecial(uint64_t a1, uint64_t a2, char *a3, char *a4, int a5, int a6)
{
  if (!LDOObject_Con(a1, a2))
  {
    *a1 = &__LDOLabel;
    *(a1 + 112) = 1;
    if (!LDOObject_SetCategory(a1, a3) && !LDOObject_SetType(a1, a4))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = a5;
      *(a1 + 92) = a6;
      *(a1 + 96) = a5;
      *(a1 + 100) = a6;
      *&result = 1;
      *(a1 + 104) = 1;
    }
  }

  return result;
}

uint64_t LDOLabel_Des(uint64_t a1)
{
  *(a1 + 64) = 0;
  if (*(a1 + 72))
  {
    v2 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
    OOCAllocator_Free(v2, *(a1 + 72));
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = 0;

  return LDOObject_Des(a1);
}

uint64_t LDOLabel_AddNode(uint64_t a1, size_t a2)
{
  v23 = 0;
  if (*(a1 + 112) != 1)
  {
    v7 = a1 + 72;
    v5 = *(a1 + 72);
    v6 = *(v7 + 8);
    v8 = 0;
    v9 = v6 - v5;
    if (v6 != v5)
    {
      v10 = v9 >> 3;
      while (1)
      {
        v11 = v10 >> 1;
        v12 = LDOTreeNode_CompareToWithID(a2, *(*(a1 + 72) + 8 * v8 + 8 * (v10 >> 1)));
        if (v12 < 1)
        {
          v10 >>= 1;
          if ((v12 & 0x80000000) == 0)
          {
            v19 = 0;
            goto LABEL_31;
          }
        }

        else
        {
          v8 += v11 + 1;
          v10 -= v11 + 1;
        }

        if (!v10)
        {
          v5 = *(a1 + 72);
          v6 = *(a1 + 80);
          v9 = v6 - v5;
          break;
        }
      }
    }

    v13 = v9 >> 3;
    if (*(a1 + 64) == (v9 >> 3) && v13 != -1)
    {
      v15 = 2 * v13;
      if (2 * v13 >= (v13 + 1000000))
      {
        v15 = v13 + 1000000;
      }

      if (v15 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16 <= 8)
      {
        v17 = 8;
      }

      else
      {
        v17 = v16;
      }

      v18 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
      v5 = OOCAllocator_Realloc(v18, *(a1 + 72), 8 * v17, &v23);
      *(a1 + 72) = v5;
      v19 = v23;
      if (v23)
      {
        return v19;
      }

      *(a1 + 64) = v17;
      v6 = v5 + (v9 & 0x7FFFFFFF8);
    }

    *(a1 + 80) = v6 + 8;
    v20 = (v9 >> 3);
    v21 = v20 > v8;
    v22 = v20 - v8;
    if (v21)
    {
      memmove((v5 + 8 * v8 + 8), (v5 + 8 * v8), 8 * v22);
      v5 = *(a1 + 72);
      v19 = v23;
    }

    else
    {
      v19 = 0;
    }

    *(v5 + 8 * v8) = a2;
LABEL_31:
    *(a1 + 104) = 1;
    return v19;
  }

  return kaldi::OffsetFileInputImpl::MyType("The current Label is 'special' (not represented as a nodes vector), you can not add a node to it.");
}

uint64_t LDOLabel_CompareTo(uint64_t a1, uint64_t a2)
{
  AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a1);
  AbsoluteTo = LDOLabel_GetAbsoluteTo(a1);
  v6 = LDOLabel_GetAbsoluteFrom(a2);
  v7 = LDOLabel_GetAbsoluteTo(a2);
  if (AbsoluteTo >= v7)
  {
    v8 = AbsoluteTo > v7;
  }

  else
  {
    v8 = -1;
  }

  if (AbsoluteFrom <= v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (AbsoluteFrom >= v6)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LDOLabel_GetAbsoluteFrom(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 112) == 1)
  {
    return *(a1 + 88);
  }

  v2 = *(a1 + 72);
  if (((*(a1 + 80) - v2) & 0x7FFFFFFF8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  LDOTreeNode_ComputeAbsoluteFrom(*v2, &v3);
  return v3;
}

uint64_t LDOLabel_GetAbsoluteTo(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 112) == 1)
  {
    return *(a1 + 92);
  }

  v2 = *(a1 + 80);
  if (((v2 - *(a1 + 72)) & 0x7FFFFFFF8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  LDOTreeNode_ComputeAbsoluteTo(*(v2 - 8), &v3);
  return v3;
}

uint64_t LDOLabel_CompareToWithID(uint64_t a1, uint64_t a2)
{
  result = LDOLabel_CompareTo(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t LDOLabel_ComputeText(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v5 = PNEW_LDOString_Con(v4, v4, a2);
  if (!v5)
  {
    for (i = *(a1 + 72); ; ++i)
    {
      if (i >= *(a1 + 80))
      {
        return 0;
      }

      appended = LDOTreeNode_ComputeText(*i, &v11);
      v8 = v11;
      if (appended)
      {
        break;
      }

      appended = LDOString_AppendString(*a2, v11);
      v8 = v11;
      if (appended)
      {
        break;
      }

      v9 = OOC_PlacementDeleteObject(v4, v11);
      if (v9)
      {
        v5 = v9;
        v8 = v11;
        if (!v11)
        {
          return v5;
        }

LABEL_10:
        OOC_PlacementDeleteObject(v4, v8);
        return v5;
      }

      v11 = 0;
    }

    v5 = appended;
    if (!v8)
    {
      return v5;
    }

    goto LABEL_10;
  }

  return v5;
}

uint64_t LDOLabel_ContainsAllNodes(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (((v3 - v4) & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  if (v4 >= v3)
  {
LABEL_6:
    result = 0;
    *a3 = 1;
  }

  else
  {
    while (1)
    {
      result = LDOLabel_ContainsNode(a1, *v4, a3);
      if (result)
      {
        break;
      }

      if (!*a3)
      {
        return 0;
      }

      if (++v4 >= *(a2 + 16))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t LDOLabel_ContainsNode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 112) == 1)
  {

    return kaldi::OffsetFileInputImpl::MyType("The current Label is 'special' (not represented as a nodes vector), you can not check that it contains a node.");
  }

  else
  {
    *a3 = 0;
    v7 = *(a1 + 72);
    if (v7 < *(a1 + 80))
    {
      while (!LDOObject_IsEqual(a2, *v7))
      {
        if (++v7 >= *(a1 + 80))
        {
          return 0;
        }
      }

      *a3 = 1;
    }

    return 0;
  }
}

uint64_t LDOLabel_ContainsAtLeastOneNode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a2 + 8);
  if (v3 >= *(a2 + 16))
  {
    return 0;
  }

  while (1)
  {
    result = LDOLabel_ContainsNode(a1, *v3, a3);
    if (result)
    {
      break;
    }

    if (*a3 != 1 && ++v3 < *(a2 + 16))
    {
      continue;
    }

    return 0;
  }

  return result;
}

uint64_t LDOLabel_RemoveNode(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  if (*(a1 + 112) == 1)
  {

    return kaldi::OffsetFileInputImpl::MyType("The current Label is 'special' (not represented as a nodes vector), you can not remove a node from it.");
  }

  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 >= v4)
  {
LABEL_10:
    if (((v4 - v5) & 0x7FFFFFFF8) == 0)
    {
      result = 0;
      *(a1 + 104) = 0;
      return result;
    }

    return 0;
  }

  v7 = 1;
  while (!LDOObject_IsEqual(a2, *v5))
  {
    ++v5;
    v4 = *(a1 + 80);
    ++v7;
    if (v5 >= v4)
    {
      v5 = *(a1 + 72);
      goto LABEL_10;
    }
  }

  v8 = *(a1 + 72);
  v9 = (*(a1 + 80) - v8) >> 3;
  memmove((v8 + 8 * (v7 - 1)), (v8 + 8 * (v7 - 1) + 8), 8 * (v9 - v7));
  v10 = *(a1 + 80) - 8;
  *(a1 + 80) = v10;
  v11 = v9 - 1;
  if (*(a1 + 64) < (3 * (v9 - 1)))
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = 2 * v11;
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v16 = OOCAllocator_Realloc(v15, *(a1 + 72), 8 * v14, &v17);
  *(a1 + 72) = v16;
  result = v17;
  if (!v17)
  {
    *(a1 + 64) = v14;
    *(a1 + 80) = v16 + ((v10 - v12) & 0x7FFFFFFF8);
  }

  return result;
}

uint64_t LDOLabel_RemoveNodes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 16))
  {
    return 0;
  }

  while (1)
  {
    result = LDOLabel_RemoveNode(a1, *v2);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a2 + 16))
    {
      return 0;
    }
  }

  return result;
}

uint64_t LDOLabel_SetReferenceFrom(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  *(a1 + 108) = 1;
  return 0;
}

uint64_t LDOLabel_SetReferenceTo(uint64_t a1, int a2)
{
  *(a1 + 100) = a2;
  *(a1 + 108) = 1;
  return 0;
}

uint64_t LDOLabel_ToString(unsigned int *a1, uint64_t *a2)
{
  v15 = 0;
  v4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v5 = PNEW_LDOString_Con(v4, v4, a2);
  if (!v5)
  {
    v6 = *a2;
    appended = LHString_Append(v6, "  LDOLabel\n");
    if (!appended)
    {
      appended = LDOObject_ToString(a1, &v15);
      if (!appended)
      {
        appended = LDOString_AppendString(v6, v15);
        if (!appended)
        {
          if (v15)
          {
            v8 = LDOString_BorrowAllocator(v15);
            OOC_PlacementDeleteObject(v8, v15);
            v15 = 0;
          }

          if (a1[26] == 1)
          {
            v9 = "  Is valid: LH_TRUE\n";
          }

          else
          {
            v9 = "  Is valid: LH_FALSE\n";
          }

          appended = LHString_Append(v6, v9);
          if (!appended)
          {
            AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a1);
            appended = LDOString_AppendPrefixU32Suffix(v6, "  Absolute from: ", AbsoluteFrom, "\n");
            if (!appended)
            {
              AbsoluteTo = LDOLabel_GetAbsoluteTo(a1);
              appended = LDOString_AppendPrefixU32Suffix(v6, "  Absolute to: ", AbsoluteTo, "\n");
              if (!appended)
              {
                if (a1[27] == 1)
                {
                  appended = LHString_Append(v6, "  Has reference indices: LH_TRUE\n");
                  if (!appended)
                  {
                    appended = LDOString_AppendPrefixU32Suffix(v6, "  Reference from: ", a1[24], "\n");
                    if (!appended)
                    {
                      appended = LDOString_AppendPrefixU32Suffix(v6, "  Reference to: ", a1[25], "\n");
                    }
                  }
                }

                else
                {
                  appended = LHString_Append(v6, "  Has reference indices: LH_FALSE\n");
                }
              }
            }
          }
        }
      }
    }

    v5 = appended;
    if (v15)
    {
      v12 = LDOString_BorrowAllocator(v15);
      OOC_PlacementDeleteObject(v12, v15);
      v15 = 0;
    }

    if (v6 && v5)
    {
      v13 = LDOString_BorrowAllocator(v6);
      OOC_PlacementDeleteObject(v13, v6);
    }
  }

  return v5;
}

uint64_t LDOLabel_UpdateSpanLength(_DWORD *a1, unsigned int a2, int a3)
{
  if (a1[28] == 1)
  {
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a1);
    v7 = LDOLabel_GetAbsoluteTo(a1) + a3;
    if (LDOLabel_GetAbsoluteFrom(a1) > a2)
    {
      if (((AbsoluteFrom + a3) & 0x80000000) == 0)
      {
        a1[22] = AbsoluteFrom + a3;
LABEL_8:
        a1[23] = v7;
        return 0;
      }

LABEL_9:
      a1[26] = 0;
      return 0;
    }

    v8 = a1[22];
    if (v8 <= a2)
    {
      if ((v7 & 0x80000000) == 0 && v7 >= v8)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  return 0;
}