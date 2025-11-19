uint64_t PRssPost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 56);
  if (v5 < 0x40)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 65;
  }

  if (*(a3 + 56))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 50);
  if (*(a3 + 50))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 40);
    v12 = (v11 + 2);
    do
    {
      v13 = v11 + 40 * v9;
      v14 = *(v13 + 18);
      if (*(v13 + 18))
      {
        v15 = *(v13 + 18);
        v16 = v12;
        do
        {
          v17 = *v16++;
          v18 = 2 * v17;
          if (v17 >= 0x40)
          {
            v19 = 128;
          }

          else
          {
            v19 = v18;
          }

          v7 += v19;
          --v15;
        }

        while (v15);
      }

      v20 = v7 + 2 * v14;
      v21 = *(v13 + 36);
      if (v21 < 0x40)
      {
        v22 = v21 + 1;
      }

      else
      {
        v22 = 65;
      }

      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v7 = v20 + v23;
      v10 += v14;
      ++v9;
      v12 += 20;
    }

    while (v9 != v8);
  }

  else
  {
    v10 = 0;
  }

  v24 = *(a2 + 64);
  v25 = *(a2 + 8);
  v26 = *(a1 + 16);
  if (v7)
  {
    v27 = malloc_type_malloc(v7, 0x100004077774924uLL);
    if (!v27)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v27 = 0;
  }

  if (v10)
  {
    v28 = malloc_type_calloc(v10, 0xB8uLL, 0x10B00409DE433CAuLL);
    if (!v28)
    {
LABEL_37:
      v37 = *(a1 + 32);
      *v37 = 0xDC00000078;
      *(v37 + 8) = 980;
      return 220;
    }

    v29 = v28;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = &v28[v30];
      *&v28[v30] = v31;
      if (v30)
      {
        *(v32 + 21) = v32 - 184;
        *(v32 + 9) = v32 - 184;
      }

      if (v31 < (v10 - 1))
      {
        v33 = &v28[v30];
        v34 = &v28[v30 + 184];
        *(v33 + 22) = v34;
        *(v33 + 10) = v34;
      }

      *&v28[v30 + 152] = v32;
      v30 += 184;
      ++v31;
    }

    while (184 * v10 != v30);
    LOWORD(v35) = 0;
    *(v26 + 72) = 0;
    v36 = (v26 + 72);
    *(v26 + 56) = v28;
    *(v26 + 64) = v28;
    *(v26 + 80) = &v28[184 * v10 - 184];
  }

  else
  {
    v29 = 0;
    LOWORD(v35) = *(v3 + 56);
    *(v26 + 72) = 0;
    v36 = (v26 + 72);
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
  }

  v39 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v40 = *(v3 + 16);
    *(v26 + 24) = v27;
    if (v39 >= 0x41)
    {
      *(v26 + 32) = v39 - 64;
      v39 = 64;
    }

    ++v27;
    do
    {
      v41 = *v40++;
      *(v27 - 1) = v41;
      --v39;
      ++v27;
    }

    while (v39);
    *(v27 - 1) = 0;
  }

  v42 = *(v3 + 50);
  if (*(v3 + 50))
  {
    v78 = v26;
    v79 = v10;
    v43 = 0;
    v81 = v24 + 16;
    v44 = v29;
    v84 = v36;
    v85 = v29;
    v83 = v3;
    while (1)
    {
      v45 = (*(v3 + 40) + 40 * v43);
      v35 = *v45;
      if (!v45[9])
      {
        goto LABEL_124;
      }

      v80 = v43;
      v46 = 0;
      v47 = 0;
      v48 = (*(v3 + 16) + v35);
      v49 = v45 + 1;
      do
      {
        *(v44 + 8) = v35;
        v50 = v49[v46];
        if (v50 >= 0x40)
        {
          v51 = 64;
        }

        else
        {
          v51 = v49[v46];
        }

        *(v44 + 32) = v51;
        v52 = v49[v46];
        v53 = v52 - 64;
        if (v52 < 64)
        {
          v53 = 0;
        }

        *(v44 + 34) = v53;
        v54 = &v27[v51 + 1];
        *(v44 + 16) = v27;
        *(v44 + 24) = v54;
        if (v50)
        {
          v55 = 0;
          do
          {
            v56 = v48[v55];
            *(*(v44 + 24) + v55) = v56;
            *(*(v44 + 16) + v55++) = ((*(v25 + 4 * v56) >> 25) & 0x20) + v56;
          }

          while (v51 != v55);
          v54 = *(v44 + 24);
          v48 += v55;
        }

        *(v54 + v51) = 0;
        *(*(v44 + 16) + v51) = 0;
        v57 = *(v44 + 34);
        if (!*v36 && v46 == v45[16])
        {
          *v36 = v44;
        }

        LODWORD(v35) = v52 + v35;
        v48 += v57;
        if (v45[9] - 1 == v47 && (v58 = v45[18], v45[18]))
        {
          v59 = 0;
          *(v44 + 40) = &v27[(2 * v51 + 2) & 0xFFFE];
          LODWORD(v35) = v58 + v35;
          v61 = v58 - 64;
          v60 = v58 < 64;
          if (v58 >= 0x40)
          {
            LOWORD(v58) = 64;
          }

          *(v44 + 48) = v58;
          if (v60)
          {
            v62 = 0;
          }

          else
          {
            v62 = v61;
          }

          *(v44 + 36) = v62;
          v27 += 2 * v51 + 3;
          do
          {
            v63 = *v48++;
            *(v27 - 1) = v63;
            ++v59;
            ++v27;
          }

          while (v59 < *(v44 + 48));
          *(v27 - 1) = 0;
        }

        else
        {
          v27 += (2 * v51 + 2) & 0xFFFE;
        }

        if (v44 == v29 && *(v83 + 62))
        {
          *(v44 + 4) = 16;
          *v36 = 0;
          v68 = 5;
LABEL_116:
          *(v44 + 51) = v68;
          goto LABEL_117;
        }

        v64 = v45[16];
        if (v45[19] < 0 && v46 == v64 && v49[v46] != 2)
        {
          *(v44 + 4) = 268435457;
          v67 = 268435457;
        }

        else if (v46 == v64 && (v65 = *(v45 + 6), (v65 & 0x1000000) != 0) && (*(v45 + 6) & 0x68000000) != 0 || v64 + 2 == v47 && (*(v45 + 7) & 0x1000000) != 0 && (v65 = *(v45 + 7), (v65 & 0x68000000) != 0))
        {
          if ((v65 & 0x60000000) == 0)
          {
            v67 = 8;
LABEL_108:
            *(v44 + 4) = v67;
            goto LABEL_109;
          }

          v66 = *(v44 + 32);
          if (v66 == 2)
          {
            if (*(*(v44 + 16) + 1) == 46)
            {
              v67 = 0x10000;
            }

            else
            {
              v67 = 256;
            }

            goto LABEL_108;
          }

          v67 = 256;
          *(v44 + 4) = 256;
          if (v66 >= 4)
          {
            v70 = *(v44 + 16);
            v71 = *v70;
            if (*v70)
            {
              v72 = (v66 - 1);
              v73 = *(v44 + 16);
              while ((*(v81 + 4 * v71) & 0x20000000) != 0 && *(v73 + 1) == 46)
              {
                v74 = 2;
                if (*(v73 + 2) == 45 && v72 > (v73 + 2 - v70))
                {
                  v74 = 3;
                }

                v71 = *(v73 + v74);
                if (*(v73 + 2) == 45 && v72 > (v73 + 2 - v70))
                {
                  v73 += 3;
                }

                else
                {
                  v73 += 2;
                }

                if (!v71)
                {
                  goto LABEL_105;
                }
              }
            }

            else
            {
LABEL_105:
              *(v44 + 92) = 8;
            }

            v67 = 256;
          }
        }

        else
        {
          if (*(v44 + 40))
          {
            v69 = 0;
          }

          else
          {
            v69 = *v48;
          }

          v67 = PRtoktyp(*(a2 + 20), v44, 0, *(a2 + 26), v69);
          *(v44 + 4) = v67;
          v36 = v84;
          v29 = v85;
        }

LABEL_109:
        v68 = 5;
        if (v67 < 0 || v67 == 16)
        {
          goto LABEL_116;
        }

        v75 = v45[16];
        if (v46 == v75 && (*(v45 + 27) & 0x40) != 0 || v75 + 2 == v47 && (*(v45 + 31) & 0x40) != 0)
        {
          v76 = SLcap(*(v44 + 24), 0, (v51 - 1), (v44 + 52), v25);
          v36 = v84;
          v29 = v85;
          v68 = v76;
          goto LABEL_116;
        }

LABEL_117:
        if ((*(v45 + 25) & 0x40) != 0 && v46 == v45[16] || (*(v45 + 29) & 0x40) != 0 && v45[16] + 2 == v47)
        {
          *(v44 + 50) = 1;
        }

        v44 = *(v44 + 80);
        v47 = ++v46;
      }

      while (v46 < v45[9]);
      v3 = v83;
      v42 = *(v83 + 50);
      v43 = v80;
LABEL_124:
      if (++v43 >= v42)
      {
        v26 = v78;
        v10 = v79;
        goto LABEL_127;
      }
    }
  }

  v42 = 0;
LABEL_127:
  *(v26 + 18) = v10;
  if (!*(v3 + 59))
  {
    LOWORD(v35) = v35 - *(*(v3 + 40) + 40 * v42 - 4);
  }

  *(v26 + 20) = v35;
  *(v26 + 4) = *(v3 + 64);
  *(v26 + 6) = *(v3 + 61);
  v77 = *(v3 + 58);
  *(v26 + 8) = v77;
  *(v26 + 10) = *(v3 + 60);
  if (!*(v3 + 63) || v77 || *(v26 + 9))
  {
    *(v26 + 2) = 1;
    *(v26 + 14) = v10;
    *(v26 + 16) = v35;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0;
  }

  else
  {
    *(v26 + 2) = 2;
    *(v26 + 14) = 0;
  }

  result = 0;
  *(v26 + 40) = *(v3 + 32);
  return result;
}

unsigned __int16 *PRisListEnum(unsigned __int16 *result, uint64_t a2, char *a3)
{
  *a3 = 0;
  v4 = result[9];
  if (v4 == 1)
  {
    v5 = result[1];
    if (v5 <= 2)
    {
      v6 = *(*(a2 + 16) + *result);
      if (v5 == 1)
      {
        if (*(*(a2 + 16) + *result) <= 0x3Cu)
        {
          if (*(*(a2 + 16) + *result) > 0x2Cu)
          {
            if (v6 == 45)
            {
              LOBYTE(v5) = 7;
            }

            else
            {
              if (v6 != 46)
              {
                goto LABEL_15;
              }

              LOBYTE(v5) = 5;
            }
          }

          else if (v6 == 42)
          {
            LOBYTE(v5) = 4;
          }

          else
          {
            if (v6 != 43)
            {
              goto LABEL_15;
            }

            LOBYTE(v5) = 2;
          }

          goto LABEL_13;
        }

        if (*(*(a2 + 16) + *result) <= 0x7Du)
        {
          if (v6 != 61)
          {
            if (v6 != 111)
            {
              goto LABEL_15;
            }

            LOBYTE(v5) = 3;
          }

          goto LABEL_13;
        }

        if (v6 == 126)
        {
          LOBYTE(v5) = 6;
          goto LABEL_13;
        }

        if (v6 != 151)
        {
          if (v6 != 183)
          {
LABEL_15:
            v4 = result[9];
            goto LABEL_16;
          }

          LOBYTE(v5) = 9;
LABEL_13:
          *a3 = v5;
          v5 = 0;
          goto LABEL_15;
        }

LABEL_12:
        LOBYTE(v5) = 8;
        goto LABEL_13;
      }

      if (v6 == 45)
      {
        goto LABEL_12;
      }
    }

    v5 = 1;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_16:
  if (v4 == 2 && result[1] == 1 && result[2] == 1)
  {
    v7 = (*(a2 + 16) + *result);
    if (*v7 == 45 && v7[1] == 45)
    {
      *a3 = 8;
      return result;
    }
  }

  if (v5)
  {
    if (!v4)
    {
      v12 = 0;
LABEL_29:
      v13 = (*(a2 + 16) + *result);
      v14 = v13[v12];
      v13[v12] = 0;
      result = SLlisten(v13);
      if (result == 1)
      {
        v15 = 10;
      }

      else
      {
        if (result != 2)
        {
LABEL_34:
          v13[v12] = v14;
          return result;
        }

        v15 = 11;
      }

      *a3 = v15;
      goto LABEL_34;
    }

    v8 = 0;
    v9 = (result + 1);
    v10 = v4;
    do
    {
      v11 = *v9++;
      v8 += v11;
      --v10;
    }

    while (v10);
    if (v4 <= 0xA)
    {
      v12 = v8;
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t PRgermScan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v11 = v10 + 40 * *(a4 + 10);
  v12 = v10 + 40 * *(a3 + 50);
  v13 = *(v11 - 40);
  v14 = *(v11 - 40);
  if (*(v11 - 6))
  {
    if (*(v11 - 6) >= 8u)
    {
      v15 = 8;
    }

    else
    {
      v15 = *(v11 - 6);
    }

    v16 = (v11 - 38);
    v14 = *(v11 - 40);
    do
    {
      v17 = *v16++;
      v14 += v17;
      --v15;
    }

    while (v15);
  }

  if (*(a4 + 8) == 46 && *(a4 + 6) == 1)
  {
    v18 = *(a4 + 4);
    if (v18 != v14)
    {
      goto LABEL_42;
    }

    v19 = *(v11 - 2);
    if (v19 < 0)
    {
      goto LABEL_60;
    }

    if ((*(v12 - 2) & 0x40) != 0)
    {
LABEL_42:
      result = 0;
      *a5 = 1;
      *(a3 + 50) = *(a4 + 10);
      goto LABEL_43;
    }

    if (v14 < 2u)
    {
      goto LABEL_60;
    }

    v20 = *(a2 + 8);
    v21 = *(a3 + 16);
    if ((*(v20 + 4 * *(v21 + v18 - 1)) & 0x60000040) != 0)
    {
      v22 = *(v21 + (v18 - 2));
      if (v22 == 46 || (*(v20 + 4 * v22) & 0x2000000) != 0)
      {
        goto LABEL_60;
      }
    }

    v23 = *(v11 - 12);
    if (v23)
    {
      if ((v23 & 0x61100200) == 0)
      {
        goto LABEL_60;
      }

      LODWORD(v24) = *(v11 - 8);
      if (v24 == 0xFFFE)
      {
        v53 = 65534;
        v27 = *(v11 - 40);
        goto LABEL_59;
      }

      if (((v24 + 2) & 0xFFF8) != 0)
      {
        v25 = 8;
      }

      else
      {
        v25 = (v24 + 2);
      }

      v26 = (v11 - 38);
      v27 = *(v11 - 40);
      do
      {
        v28 = *v26++;
        v27 += v28;
        --v25;
      }

      while (v25);
    }

    else
    {
      v44 = (v11 - 38);
      v24 = *(v11 - 8);
      v45 = *(v11 - 16);
      if ((v45 & 0x60000000) != 0 && *(v11 - 38 + 2 * v24) == 1 || (v45 & 0x61100200) == 0)
      {
        goto LABEL_60;
      }

      if (!*(v11 - 8))
      {
        if (PRisRoman((v21 + v13)))
        {
          goto LABEL_60;
        }

        goto LABEL_67;
      }

      if (v24 >= 8)
      {
        v48 = 8;
      }

      else
      {
        v48 = *(v11 - 8);
      }

      v27 = *(v11 - 40);
      do
      {
        v49 = *v44++;
        v27 += v49;
        --v48;
      }

      while (v48);
    }

    v53 = v24;
LABEL_59:
    if (PRisRoman((v21 + v27)))
    {
      goto LABEL_60;
    }

    if (v53)
    {
      if (v53 >= 8)
      {
        v50 = 8;
      }

      else
      {
        v50 = v53;
      }

      v51 = (v11 - 38);
      do
      {
        v52 = *v51++;
        LOWORD(v13) = v52 + v13;
        --v50;
      }

      while (v50);
    }

LABEL_67:
    if ((v19 & 0x20) == 0)
    {
      v54 = 0;
      result = PRpendTermIsDot(a1, a2, a3, v13, v14, 1, 0, &v55, &v54);
      if (result)
      {
        goto LABEL_43;
      }

      if (!v54)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_28;
  }

  if (*(a4 + 4) == v14 && !*(v12 - 8) || (*(v12 - 2) & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  v29 = *(v12 - 40);
  v30 = *(v12 - 40);
  if (*(v12 - 22))
  {
    if (*(v12 - 22) >= 8u)
    {
      v31 = 8;
    }

    else
    {
      v31 = *(v12 - 22);
    }

    v32 = (v12 - 38);
    v30 = *(v12 - 40);
    do
    {
      v33 = *v32++;
      v30 += v33;
      --v31;
    }

    while (v31);
  }

  v34 = (v30 - v29);
  if (v34 > 64)
  {
    goto LABEL_42;
  }

  v35 = *(a2 + 128);
  if (v29 == v30)
  {
    v36 = (v30 - v29);
  }

  else
  {
    v37 = *(a2 + 8);
    v38 = (*(a3 + 16) + v29);
    v36 = v34;
    v39 = __s;
    v40 = v36;
    do
    {
      v41 = *v38++;
      *v39++ = ((*(v37 + 4 * v41) >> 25) & 0x20) + v41;
      --v40;
    }

    while (v40);
  }

  __s[v36] = 0;
  *(v35 + 1412) = 0;
  *(v35 + 1408) = 1;
  if (PRIcs(a1, a2, 0, 0, 0, __s, 0, v35, 3, 0) != 8)
  {
    if ((*(v35 + 1328) & 0x400) == 0)
    {
      goto LABEL_42;
    }

LABEL_60:
    result = 0;
    *a5 = 0;
    *(a4 + 2) = 0;
    goto LABEL_43;
  }

  result = 220;
LABEL_43:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL PRisDutchOpenCompound(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = a3[16];
  if (a3[9] < (v3 + 3))
  {
    return 0;
  }

  v4 = *a3;
  LOWORD(v5) = v3 - 1;
  if (v5)
  {
    if ((v5 & 0xFFF8) != 0)
    {
      v5 = 8;
    }

    else
    {
      v5 = v5;
    }

    v6 = (a3 + 1);
    do
    {
      v7 = *v6++;
      v4 += v7;
      --v5;
    }

    while (v5);
  }

  v8 = (*(a2 + 16) + v4);
  v9 = a1 + 16;
  return (*(a1 + 16 + 4 * *v8) & 0x8000) != 0 && v8[1] == 115 && (*(v9 + 4 * v8[2]) & 0x4000) != 0 && (*(v9 + 4 * v8[3]) & 0x40000000) != 0;
}

uint64_t PRpendTermIsDot(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, unsigned __int16 *a8, BOOL *a9)
{
  v12 = a4;
  v14 = *(a2 + 128);
  v15 = *(a3 + 16);
  v16 = *(v15 + a5);
  *(v15 + a5) = 0;
  *(v14 + 1412) = a6;
  *(v14 + 1408) = a7;
  v17 = PRIcs(a1, a2, 0, 0, 0, (*(a3 + 16) + a4), 0, v14, 3, 0);
  *(*(a3 + 16) + a5) = v16;
  if (v17 == 8)
  {
    return 220;
  }

  if ((v17 & 0xFFFFFFF7) == 2)
  {
    v19 = strlen((v14 + 1547));
    *a8 = v19;
    v20 = a6 && v19 && *(v14 + 1547 + v19 - 1) == 46 && (v19 > (a5 - v12) || *(v14 + 1614));
  }

  else
  {
    v20 = 0;
    *a8 = 0;
  }

  result = 0;
  *a9 = v20;
  return result;
}

BOOL PRisRoman(unsigned __int8 *a1)
{
  v1 = 0;
  while (1)
  {
    v2 = *a1;
    if (v2 > 0x55)
    {
      if (v2 == 86)
      {
        v3 = &romanFsa + 3 * v1 + 1;
      }

      else
      {
        if (v2 != 88)
        {
          return 0;
        }

        v3 = &romanFsa + 3 * v1 + 2;
      }

      goto LABEL_9;
    }

    if (v2 != 73)
    {
      break;
    }

    v3 = &romanFsa + 3 * v1;
LABEL_9:
    v1 = *v3;
    ++a1;
    if (!v1)
    {
      return 0;
    }
  }

  return v2 == 46 && v1 != 0;
}

uint64_t PRssClr(uint64_t a1)
{
  if (!a1)
  {
    return 220;
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  else
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        free(v5);
      }
    }
  }

  if (*(a1 + 56))
  {
    FreeList((a1 + 56));
  }

  result = *(a1 + 40);
  if (result)
  {
    free(result);
    result = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t PRSSWdGet(const char *a1, unsigned int a2, char *a3, uint64_t a4)
{
  v24 = 0;
  *a3 = 0;
  v4 = *(a4 + 64);
  if (v4)
  {
    v8 = *(v4 + 1);
    v9 = *v4;
    v10 = *(v4 + 1);
    v11 = v4[1];
    v12 = strlen(a1);
    SLfun(a1, 0, (v12 - 1), &v24 + 1, &v24);
    v13 = 0;
    v14 = (v10 & HIWORD(v24));
    v15 = v24 % v9;
    v16 = 2 * v14;
    v17 = v14 + (v10 >> 1) + v9;
    while (1)
    {
      v18 = (v8 + 3 * v15);
      v19 = __rev16(*v18);
      if (v19 == HIWORD(v24))
      {
        break;
      }

      v15 += v17;
      do
      {
        v15 -= v9;
      }

      while (v15 >= v9);
      if (v11 >= v13)
      {
        ++v13;
        v17 += v16;
        if (v19)
        {
          continue;
        }
      }

      return 0;
    }

    v20 = *(v18 + 2);
    *a3 = v20;
    if (a2 >= 3)
    {
      if (a2 != 3)
      {
        return 0;
      }

      v21 = (v20 & 4) == 0;
    }

    else
    {
      v20 = *a3;
      v21 = (*a3 & 3u) > a2;
    }

    v22 = v20 & 0xF8;
    if (v21)
    {
      v22 = 0;
    }

    *a3 = v22;
  }

  return 0;
}

uint64_t PRtoktyp(unsigned int a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v10 = SLLngToA(a1);
  if (a2)
  {
    a3 = *(a2 + 24);
  }

  v11 = strlen(a3);
  result = v11;
  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      v17 = *a3;
      if (v17 > 0x3B)
      {
        if (v17 == 60)
        {
          if (a3[1] == 60)
          {
            return 3221225536;
          }

          v17 = 60;
        }

        else
        {
          if (v17 != 62)
          {
            goto LABEL_74;
          }

          if (a3[1] == 62)
          {
            return 3758096448;
          }

          v17 = 62;
        }

        goto LABEL_75;
      }

      if (v17 == 45)
      {
        if (a3[1] == 45)
        {
          return 2147483904;
        }

        v17 = 45;
        goto LABEL_75;
      }

      if (v17 != 46)
      {
        goto LABEL_74;
      }

      if (a1 != 10 || a3[1] != 46)
      {
LABEL_75:
        v30 = a3 + 1;
        v31 = v17;
        while ((*(v10 + 4 * v31) & 0x8000000) != 0)
        {
          v32 = *v30++;
          v31 = v32;
          if (!v32)
          {
            return 32;
          }
        }

        v33 = a3 + 1;
        v34 = v17;
        while ((*(v10 + 4 * v34) & 0x40000000) != 0)
        {
          v35 = *v33++;
          v34 = v35;
          if (!v35)
          {
            return 0x2000;
          }
        }

        v36 = a3 + 1;
        v37 = 1;
        v38 = v17;
        while (1)
        {
          v39 = v37;
          if ((*(v10 + 4 * v38) & 0x200) == 0)
          {
            break;
          }

          v41 = *v36++;
          v40 = v41;
          if (v38 != v41 && v40 != 0)
          {
            v37 = 0;
          }

          v38 = v40;
          if (!v40)
          {
            v43 = v39 == 0;
            v44 = 2048;
            v45 = 1024;
            goto LABEL_101;
          }
        }

        v46 = a3 + 1;
        v47 = 1;
        do
        {
          if (v17 != a4)
          {
            v48 = *(v10 + 4 * v17);
            if ((v48 & 0x60000040) == 0)
            {
              if ((v48 & 0x8000000) != 0)
              {
                v47 = 0;
              }

              else if ((v48 & 0x1000000) == 0)
              {
                return 0;
              }
            }
          }

          v49 = *v46++;
          v17 = v49;
        }

        while (v49);
        v43 = v47 == 0;
        v44 = 128;
        v45 = 64;
LABEL_101:
        if (v43)
        {
          return v45;
        }

        else
        {
          return v44;
        }
      }

      return 2147484160;
    }

    if (v11 == 3)
    {
      v17 = *a3;
      if (v17 == 46)
      {
        if (a3[1] == 46 && a3[2] == 46)
        {
          return 2147484160;
        }

        v17 = 46;
      }

      goto LABEL_23;
    }

LABEL_22:
    v17 = *a3;
LABEL_23:
    v18 = v11 << 16;
    if (v18 <= 196608)
    {
      goto LABEL_74;
    }

    if (v18 != 327680 || v17 != 46)
    {
      if (v17 - 45 > 1)
      {
        goto LABEL_74;
      }

      goto LABEL_43;
    }

    if (a3[2] != 46 || a3[4] != 46 || a3[1] != 32 || a3[3] != 32)
    {
LABEL_43:
      v19 = a3[1];
      if (!a3[1])
      {
        return 2147485696;
      }

      if (v19 == 32)
      {
        v20 = a3 + 3;
        while (v19 == 32)
        {
          if (*(v20 - 1) != v17)
          {
            goto LABEL_74;
          }

          v21 = *v20;
          v20 += 2;
          v19 = v21;
        }

        if (v19)
        {
LABEL_74:
          if (!v17)
          {
            return 32;
          }

          goto LABEL_75;
        }

        return 2147485696;
      }

      v22 = a3 + 2;
      while (v17 == v19)
      {
        v23 = *v22++;
        v19 = v23;
        if (!v23)
        {
          return 2147485696;
        }
      }

      goto LABEL_75;
    }

    return 2147484160;
  }

  if (!v11)
  {
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_22;
  }

  v13 = a3;
  if (a2)
  {
    v13 = *(a2 + 24);
  }

  v14 = *v13;
  v15 = *(v10 + 4 * v14);
  if ((v15 & 0x20000000) != 0)
  {
    return 0x4000;
  }

  if ((v15 & 0x40000000) != 0)
  {
    return 4096;
  }

  if (a2 && v14 == 45)
  {
    result = 2147483656;
    if ((*(v10 + 4 * a5) & 0x60000040) == 0)
    {
      v16 = *(a2 + 72);
      if (!v16 || *(v16 + 40) || (*(v10 + 4 * *(*(v16 + 16) + *(v16 + 32) - 1)) & 0x60000040) == 0)
      {
        return 2147483652;
      }
    }

    return result;
  }

  v24 = 0;
  v25 = 0;
  v26 = 40;
  v27 = 40;
  while (1)
  {
    v28 = &OneByteTokenType_PunTab[2 * v25];
    if (*v28 == v14)
    {
      break;
    }

    v28 = &OneByteTokenType_PunTab[2 * v27];
    if (*v28 == v14)
    {
      break;
    }

    v29 = (v24 + v26) >> 1;
    if (OneByteTokenType_PunTab[2 * v29] >= v14)
    {
      v27 = v29;
    }

    else
    {
      v25 = v29 + 1;
    }

    v24 = v25;
    v26 = v27;
    if (v25 == v27)
    {
      result = v15 & 0x200;
      goto LABEL_72;
    }
  }

  result = v28[1];
LABEL_72:
  if (!result)
  {
    v17 = *a3;
    goto LABEL_74;
  }

  return result;
}

void FreeList(void **a1)
{
  v2 = *a1;
  v3 = v2;
  if (v2)
  {
    do
    {
      v2 = v2[22];
      FreeTokenNode(&v3);
      v3 = v2;
    }

    while (v2);
    if (*a1)
    {
      free(*a1);
    }
  }

  *a1 = 0;
}

void FreeTokenNode(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  if (v3)
  {
    if (((*(v2 + 92) >> 17) & 1) + *(v2 + 136))
    {
      v4 = 0;
      v5 = 8 * (((*(v2 + 92) >> 17) & 1) + *(v2 + 136));
      do
      {
        v6 = *(*(v2 + 144) + v4);
        if (v6)
        {
          free(v6);
        }

        v4 += 8;
      }

      while (v5 != v4);
      v3 = *(v2 + 144);
    }

    free(v3);
  }

  v7 = *(v2 + 104);
  if (v7)
  {
    free(v7);
  }

  v8 = *(v2 + 112);
  if (v8)
  {
    free(v8);
  }

  v9 = *(v2 + 128);
  if (v9)
  {
    free(v9);
  }

  v10 = *(v2 + 160);
  if (v10)
  {
    do
    {
      v11 = v10[5];
      PRfreeErr(v10);
      *(v2 + 160) = v11;
      v10 = v11;
    }

    while (v11);
  }

  if (*(v2 + 152) != v2)
  {
    free(v2);
  }

  *a1 = 0;
}

uint64_t PRFillError(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 128);
  v9 = *(v8 + 1322);
  v10 = *(v8 + 1328);
  v11 = *(v8 + 4);
  if (v11 == 2)
  {
    v12 = (*(v8 + 1690) != 0) & (v10 >> 10);
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0 && *(v8 + 1690))
  {
    v12 = *(v8 + 1686);
  }

  v13 = *(v8 + 8);
  if (((a4 != 0) & ((v9 & 0x800) >> 11)) != 0)
  {
    v14 = v10 & 0xFFFFFBFF;
  }

  else
  {
    v14 = *(v8 + 1328);
  }

  if ((v10 & 0x400) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v8 + 1328);
  }

  if ((v15 & 0x8000) != 0 && v11 != 11)
  {
    if (v13 == 6 && (v16 = *(a3 + 72)) != 0 && *(a3 + 51) != *(v16 + 51))
    {
      *(v8 + 1328) = v10 & 0xFFFFFFFFFFFF7FFFLL;
    }

    else if (PRMakenFillErr(a1, a2, v8, a3, "", 0, 4, 1, a4))
    {
      return 8;
    }
  }

  v48 = v12;
  if ((v15 & 0x1000000) != 0)
  {
    if (v11 == 2)
    {
      v17 = 6;
    }

    else
    {
      v17 = 4;
    }

    if (PRMakenFillErr(a1, a2, v8, a3, "", 0, 1, v17, a4))
    {
      return 8;
    }
  }

  else
  {
    v17 = 0;
  }

  if ((v15 & 0x40000) != 0 && PRMakenFillErr(a1, a2, v8, a3, "", 0, 52, 100, a4))
  {
    return 8;
  }

  v18 = v15 & 0x10000000;
  if (v13 != 16 || v18 == 0)
  {
    if (v13 != 15 || v18 == 0)
    {
      if (v13 != 4)
      {
        goto LABEL_50;
      }

      if (v15 == 0x4000000)
      {
        v21 = PRMakenFillErr(a1, a2, v8, a3, "", 0, 7, 5, a4);
      }

      else
      {
        if (v15 != 0x8000000)
        {
          goto LABEL_50;
        }

        v21 = PRMakenFillErr(a1, a2, v8, a3, "", 0, 7, 4, a4);
      }
    }

    else
    {
      v23 = *(v8 + 1404) - 1;
      if (v23 > 0x1B)
      {
        goto LABEL_50;
      }

      v21 = PRMakenFillErr(a1, a2, v8, a3, *(&pGreekErrors + 2 * v23 + 1), *(&pGreekErrors + 16 * v23 + 1), 6, *(&pGreekErrors + 16 * v23), a4);
    }
  }

  else
  {
    v22 = *(v8 + 1404);
    if (v22 == 30)
    {
      v21 = PRMakenFillErr(a1, a2, v8, a3, "", 0, 6, 2, a4);
    }

    else
    {
      if (v22 != 29)
      {
        goto LABEL_50;
      }

      v21 = PRMakenFillErr(a1, a2, v8, a3, "", 0, 6, 1, a4);
    }
  }

  if (v21)
  {
    return 8;
  }

LABEL_50:
  v46 = a1;
  v47 = v9;
  if ((v9 & 0x100) != 0)
  {
    if (v13 == 16)
    {
      v25 = *(a3 + 16);
      v26 = strchr(v25, 45);
      if (v26)
      {
        v27 = v26;
        if (v26 > v25 + 1 && *(v26 - 1) == 121 && *(v26 - 2) == 108)
        {
          *v26 = 32;
          v28 = PRMakenFillErr(v46, a2, v8, a3, *(a3 + 16), 1uLL, 60, 46, a4);
          *v27 = 45;
          if (v28)
          {
            return v28;
          }
        }
      }
    }

    else if (PRMakenFillErr(a1, a2, v8, a3, "", 0, 7, 2, a4))
    {
      return 8;
    }
  }

  v24 = v46;
  if (v15 & 8 | v47 & 0x10)
  {
    if ((v47 & 0x40) != 0)
    {
      if ((v47 & 4) != 0)
      {
        v17 = 2;
      }

      else if ((v47 & 2) != 0)
      {
        v17 = 4;
      }

      else if (!v17)
      {
        goto LABEL_72;
      }
    }

    else if ((v47 & 0x10) != 0)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    if (PRMakenFillErr(v46, a2, v8, a3, "", 0, 2, v17, a4))
    {
      return 8;
    }
  }

LABEL_72:
  if ((v15 & 2) != 0)
  {
    v29 = v48;
    if ((v13 & 0xFE) == 8)
    {
      *(a3 + 98) &= 0xF0FFu;
      v30 = PRMakenFillErr(v46, a2, v8, a3, "", 0, 1, 1, a4);
    }

    else
    {
      v30 = PRMakenFillErr(v46, a2, v8, a3, "", 0, 10, 1, a4);
    }

    if (v30)
    {
      return 8;
    }

    if (v13 == 8)
    {
      v15 &= ~0x400u;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v29 = v48;
    if ((v15 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  if (PRMakenFillErr(v46, a2, v8, a3, "", 0, 9, 1, a4))
  {
    return 8;
  }

LABEL_83:
  if (v11 == 11)
  {
    if ((v15 & 0x20) != 0)
    {
      v33 = PRMakenFillErr(v46, a2, v8, a3, "", 0, 1, 3, a4);
    }

    else
    {
      v33 = PRMakenFillErr(v46, a2, v8, a3, "", 0, 1, 1, a4);
    }

    if (v33)
    {
      return 8;
    }

    return 0;
  }

  if (v11 == 3)
  {
    v31 = 128;
    for (i = &byte_1D2BFC7DC; (v31 & v15) == 0 || !PRMakenFillErr(v46, a2, v8, a3, "", 0, *i, i[1], a4); i += 8)
    {
      v31 = *(i + 1);
      if (!v31)
      {
        return 0;
      }
    }

    return 8;
  }

  if (v11 != 2)
  {
    return 0;
  }

  if (v13 == 16 && (v15 & 0x4000) != 0)
  {
    if (!PRMakenFillErr(v46, a2, v8, a3, (v8 + 1690), v29, 51, 4, a4))
    {
LABEL_112:
      v36 = 4;
      v37 = &byte_1D2BFC7FC;
      while ((v36 & v15) == 0 || !PRMakenFillErr(v24, a2, v8, a3, (v8 + 1690), v29, *v37, v37[1], a4))
      {
        v36 = *(v37 + 1);
        v37 += 8;
        if (!v36)
        {
          goto LABEL_116;
        }
      }

      return 8;
    }

    return 8;
  }

  if (v13 != 6)
  {
LABEL_111:
    v24 = v46;
    v29 = v48;
    if (v15)
    {
      goto LABEL_112;
    }

LABEL_116:
    if (v47)
    {
      v38 = 512;
      for (j = &word_1D2BFC83C; (v38 & v47) == 0 || !PRMakenFillErr(v24, a2, v8, a3, (v8 + 1690), v29, *(j - 2), *(j - 1), a4); j += 2)
      {
        v40 = *j;
        v38 = v40;
        if (!v40)
        {
          return 0;
        }
      }

      return 8;
    }

    return 0;
  }

  if ((v15 & 0x400000) != 0 && PRMakenFillErr(v46, a2, v8, a3, (v8 + 1690), v29, 51, 3, a4))
  {
    return 8;
  }

  if ((v15 & 0x400) == 0 || !a4 || (v47 & 0x400) == 0)
  {
    goto LABEL_106;
  }

  v41 = *(v46 + 16);
  v42 = *(v41 + 64);
  v15 &= ~0x400u;
  if (!v42)
  {
    v42 = *(v41 + 56);
  }

  v43 = *(a3 + 72);
  if (!v43)
  {
    goto LABEL_106;
  }

  v44 = *(v43 + 1);
  if (v44 <= -1072693249)
  {
    if (v44 == -2147483584)
    {
      goto LABEL_106;
    }

    v45 = -1073709056;
  }

  else
  {
    if (v44 == -1072693248 || v44 == -536870910)
    {
      goto LABEL_106;
    }

    v45 = -536870848;
  }

  if (v44 != v45)
  {
    while ((*(v43 + 1) & 0x80000000) != 0)
    {
      v43 = *(v43 + 9);
      if (!v43)
      {
        goto LABEL_139;
      }
    }

    if (!v42 || *v43 < *v42)
    {
LABEL_139:
      v24 = v46;
      v29 = v48;
      goto LABEL_106;
    }

    v24 = v46;
    v29 = v48;
    if (PRMakenFillErr(v46, a2, v8, a3, (v8 + 1690), v48, 3, 3, a4))
    {
      return 8;
    }
  }

LABEL_106:
  if ((v47 & 1) == 0)
  {
    goto LABEL_111;
  }

  v35 = v29 <= 1 ? 1 : 2;
  v28 = 8;
  if (!PRMakenFillErr(v24, a2, v8, a3, (v8 + 1690), v29, 8, v35, a4))
  {
    goto LABEL_111;
  }

  return v28;
}

uint64_t PRMakenFillErr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, size_t a6, signed int a7, int a8, char a9)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!*(a4 + 16))
  {
    goto LABEL_95;
  }

  v17 = *(a2 + 26);
  *v47 = 0;
  if (a9)
  {
    v18 = PRliveRule(a1, a2, 0, a7, a8, 0, 1);
    if (v18)
    {
      if (v18 == 4)
      {
        result = 0;
      }

      else
      {
        result = 8;
      }

      goto LABEL_96;
    }

    if (PRmkErr(a1, a2, v47, a4, 0, a7, a8))
    {
      goto LABEL_95;
    }

    if (a7 == 5 && (a8 & 0xFE) == 2)
    {
      if (a8 == 2)
      {
        v27 = *(*(a4 + 72) + 8);
        v28 = *(a4 + 32) - v27 + *(a4 + 8);
      }

      else
      {
        v27 = *(a4 + 8);
        v28 = *(*(a4 + 80) + 32) - v27 + *(*(a4 + 80) + 8);
      }

      goto LABEL_23;
    }

    if (a7 == 6)
    {
      v29 = *(a4 + 72);
      v27 = *(v29 + 8);
      v28 = *(v29 + 32);
LABEL_23:
      v22 = *v47;
      **v47 = v27;
      v22[1] = v28;
      goto LABEL_24;
    }
  }

  else if (PRmkErr(a1, a2, v47, a4, 0, a7, a8))
  {
    goto LABEL_95;
  }

  v20 = *(a4 + 32);
  v21 = *(a4 + 8);
  v22 = *v47;
  **v47 = v21;
  v22[1] = v20;
  if (a7 == 4 && a9)
  {
    v23 = *(*(a4 + 72) + 48);
    v22[4] = v21 - v23;
    v22[5] = v20 + v23;
    goto LABEL_11;
  }

LABEL_24:
  if (a7 <= 5)
  {
    if (a7 == 1)
    {
      if ((a8 & 0xFFFFFFFB) != 2)
      {
        if (a8 != 5)
        {
          goto LABEL_97;
        }

        goto LABEL_72;
      }

LABEL_43:
      __strcpy_chk();
      __strcat_chk();
      goto LABEL_44;
    }

    if (a7 != 2)
    {
      if (a7 == 3)
      {
        if (a8 == 3)
        {
          v30 = *(a4 + 16);
          goto LABEL_93;
        }

        if (a8 != 1)
        {
          goto LABEL_97;
        }

        goto LABEL_43;
      }

LABEL_11:
      if (!a6)
      {
        goto LABEL_97;
      }

      v24 = a1;
      v25 = a5;
      v26 = a6;
LABEL_13:
      if (!PRaddAlts(v24, v22, v25, 0, v26, 0))
      {
        goto LABEL_97;
      }

      goto LABEL_95;
    }

    result = 8;
    if (a8 > 2)
    {
      if (a8 == 3)
      {
        __strcpy_chk();
        v37 = *(*(*(a3 + 3184) + 288) + 18);
LABEL_111:
        PRinsOneHyp(v48, (a3 + 1640), v17, v37);
        v22 = *v47;
        v25 = v48;
        v24 = a1;
        v26 = 1;
        goto LABEL_13;
      }

      if (a8 != 4)
      {
        goto LABEL_96;
      }

      __strcpy_chk();
      if (PRaddAlts(a1, *v47, v48, 0, 1uLL, 0))
      {
        goto LABEL_95;
      }

      *(a3 + 1690);
      __strcpy_chk();
      v37 = v48[0];
      if (!v48[0])
      {
        goto LABEL_111;
      }

      v39 = 0;
      while (((*(a3 + 1640 + 4 * (v39 >> 5)) >> ~v39) & 1) == 0)
      {
        v37 = ++v39;
        if (!v48[v39])
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      if (a8 == 1)
      {
        if (!*(a4 + 24))
        {
          v43 = *(a4 + 16);
        }

        __strcpy_chk();
        v44 = 0;
        do
        {
          v37 = v44;
          v45 = v48[v44++];
          if (v45)
          {
            v46 = v45 == v17;
          }

          else
          {
            v46 = 1;
          }
        }

        while (!v46);
        goto LABEL_111;
      }

      if (a8 != 2)
      {
        goto LABEL_96;
      }

      __strcpy_chk();
      v35 = v48[0];
      if (v48[0])
      {
        v36 = 0;
        v35 = 0;
        do
        {
          if (*(*(a4 + 16) + v36) == v17)
          {
            break;
          }

          v36 = ++v35;
        }

        while (v48[v35]);
      }

      PRinsOneHyp(v48, (a3 + 3156), v17, v35);
      if (PRaddAlts(a1, *v47, v48, 0, 1uLL, 0))
      {
        goto LABEL_95;
      }

      __strcpy_chk();
      v37 = v48[0];
      if (!v48[0])
      {
        goto LABEL_111;
      }

      v38 = 0;
      v39 = 0;
      while (*(*(a4 + 16) + v38) != v17)
      {
        v38 = ++v39;
        v37 = v39;
        if (!v48[v39])
        {
          goto LABEL_111;
        }
      }
    }

    v37 = v39;
    goto LABEL_111;
  }

  if (a7 > 9)
  {
    if (a7 == 10)
    {
      if (a8 != 3)
      {
        if (a8 == 2)
        {
          __strcpy_chk();
          __strcat_chk();
          __strcat_chk();
          if (PRaddAlts(a1, *v47, v49, 0, 1uLL, 0))
          {
            goto LABEL_95;
          }
        }

        else if ((a8 - 1) > 1u)
        {
          goto LABEL_97;
        }

        __strcpy_chk();
        result = PRaddRefs(a1, *v47, __s, 1u, 0);
        if (result)
        {
          goto LABEL_96;
        }

        __strcpy_chk();
        v33 = *v47;
        v34 = v49;
        goto LABEL_99;
      }

      __strcpy_chk();
      __strcat_chk();
      if (!PRaddAlts(a1, *v47, v49, 0, 1uLL, 0))
      {
        __strcpy_chk();
        result = PRaddRefs(a1, *v47, v49, 1u, 0);
        if (result)
        {
          goto LABEL_96;
        }

        goto LABEL_86;
      }

LABEL_95:
      result = 8;
      goto LABEL_96;
    }

    if (a7 != 51)
    {
      goto LABEL_11;
    }

    if (a8 != 1)
    {
      if ((a8 - 3) > 1u)
      {
        goto LABEL_97;
      }

LABEL_72:
      v30 = (a3 + 1690);
      goto LABEL_93;
    }

    goto LABEL_43;
  }

  if (a7 == 6)
  {
    v31 = *(a3 + 8);
    if (v31 == 16)
    {
      v48[0] = 97;
      if (a8 == 1)
      {
        v48[2] = 0;
        v32 = 110;
      }

      else
      {
        v32 = 0;
      }

      v48[1] = v32;
      if (a9 && *(*(a4 + 72) + 51))
      {
        v48[0] = 65;
      }

      v30 = v48;
      goto LABEL_93;
    }

    if (a6 && v31 == 15)
    {
      v40 = a1;
      v30 = a5;
      v41 = a6;
      goto LABEL_94;
    }

    goto LABEL_97;
  }

  if (a7 != 9)
  {
    goto LABEL_11;
  }

  if (a8 != 1)
  {
    if (a8 == 2)
    {
      __strcpy_chk();
LABEL_44:
      __strcat_chk();
      v22 = *v47;
      v30 = v49;
LABEL_93:
      v40 = a1;
      v41 = 1;
LABEL_94:
      if (PRaddAlts(v40, v22, v30, 0, v41, 0))
      {
        goto LABEL_95;
      }
    }

LABEL_97:
    v33 = *v47;
    v34 = *(a4 + 24);
    if (!v34)
    {
      v34 = *(a4 + 16);
    }

    goto LABEL_99;
  }

  __strcpy_chk();
  result = PRaddRefs(a1, *v47, v49, 1u, 0);
  if (result)
  {
    goto LABEL_96;
  }

LABEL_86:
  __strcpy_chk();
  v33 = *v47;
  v34 = __s;
LABEL_99:
  result = PRaddRefs(a1, v33, v34, 1u, 0);
  if (!result)
  {
    result = 0;
  }

LABEL_96:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRIcs(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *__s, uint64_t a7, size_t a8, __int16 a9, char a10)
{
  *(a8 + 1322) = 0;
  *(a8 + 1328) = 0;
  if (a7)
  {
    v15 = *(a7 + 92);
  }

  else
  {
    v15 = 0;
  }

  *(a8 + 1338) = *(a2 + 26);
  *a8 = a9;
  if (a9 == 1)
  {
    *(a8 + 8) = a3;
    *(a8 + 20) = a4;
    *(a8 + 24) = a5;
    *(a8 + 1308) = 1;
    return ICspl("", a8);
  }

  v17 = *(a8 + 8);
  v18 = (a9 - 8) >= 0xFFFDu || (a9 & 0xFFFFFFFC) == 100;
  v19 = !v18;
  v20 = *(a8 + 3184);
  if (a7 || (v19 & 1) != 0)
  {
    *(v20 + 304) = 11;
    if (a7)
    {
      *(a8 + 1408) = 0;
    }
  }

  else
  {
    *(v20 + 304) = 6;
  }

  if (a9 <= 0x16 && ((1 << a9) & 0x6000EC) != 0 || (a9 - 100) < 4)
  {
    if (a9 == 3)
    {
      v21 = strlen(__s);
      v22 = v21;
      if (a10)
      {
        v23 = &__s[v21];
        if (*(v23 - 1) == 46)
        {
          v15 |= 0x400000u;
          *(a8 + 1412) = 1;
          *(v23 - 1) = 0;
        }

        else
        {
          v15 &= ~0x400000u;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = ICspl(__s, a8);
    v25 = v24;
    if (a9 == 3 && (v15 & 0x400000) != 0)
    {
      v26 = v22 - 1;
      __s[v26] = 46;
      *(a8 + 1412) = 0;
      v27 = *(a8 + v26 + 1547);
      if (v24 != 11 && v27 != 46)
      {
        v15 |= 0x800000u;
      }
    }

    if (!a7)
    {
      return v25;
    }
  }

  else
  {
    v25 = 220;
    if (!a7)
    {
      return v25;
    }
  }

  if (a9 != 3)
  {
    return v25;
  }

  v29 = SLLngToA(*(a2 + 20));
  v30 = *(*(a8 + 3184) + 288);
  *(a7 + 98) = *v30;
  if (*(a8 + 1614))
  {
    v31 = v15 | 0x4000;
  }

  else
  {
    v31 = v15;
  }

  if (*(a8 + 1624))
  {
    v31 |= 0x8000u;
  }

  v32 = *(v30 + 12);
  if ((v32 & 0xF) != 0)
  {
    v33 = v31 | 0x10000;
  }

  else
  {
    v33 = v31;
  }

  if (v25 != 11)
  {
    v33 |= (*(a8 + 1328) & 3) << 18;
  }

  v34 = *(a7 + 104);
  if (v34)
  {
    free(v34);
    *(a7 + 104) = 0;
  }

  v35 = *(a7 + 112);
  if (v35)
  {
    free(v35);
    *(a7 + 112) = 0;
  }

  v68 = a1;
  v36 = *(v30 + 14);
  if ((v36 & 4) != 0)
  {
    *(a7 + 98) |= 8u;
  }

  v67 = v25;
  if ((v36 & 8) != 0)
  {
    *(a7 + 98) |= 4u;
  }

  v37 = *(v30 + 18);
  if (*(v30 + 18))
  {
    v66 = v17;
    v38 = *(v30 + 16);
    v39 = *(a8 + 1612);
    v40 = malloc_type_malloc(v38 + 1, 0x10080524uLL);
    *(a7 + 104) = v40;
    if (!v40 || (v64 = v33, v41 = v39 - v37, v42 = (v39 - v37), v43 = malloc_type_malloc(v42 + 1, 0xF54DD26AuLL), (*(a7 + 112) = v43) == 0))
    {
      v57 = *(v68 + 32);
LABEL_76:
      *v57 = 0xDC00000078;
      *(v57 + 8) = 0;
      return 220;
    }

    memcpy(*(a7 + 104), (a8 + 1547), v38);
    *(*(a7 + 104) + v38) = 0;
    if (v38)
    {
      v44 = 0;
      v45 = *(a7 + 104);
      do
      {
        *v45 += (*(v29 + 4 * *v45) >> 25) & 0x20;
        ++v45;
        ++v44;
      }

      while (v44 < v38);
    }

    memcpy(*(a7 + 112), (a8 + 1547 + *(v30 + 18)), (v39 - v37));
    *(*(a7 + 112) + v42) = 0;
    v18 = v37 == v39;
    v33 = v64;
    v17 = v66;
    if (!v18)
    {
      v46 = 0;
      v47 = *(a7 + 112);
      do
      {
        *v47 += (*(v29 + 4 * *v47) >> 25) & 0x20;
        ++v47;
        ++v46;
      }

      while (v46 < v41);
    }
  }

  v48 = v68;
  if (v17 != 5)
  {
    goto LABEL_83;
  }

  if ((*(a7 + 98) & 0x3000) != 0x2000)
  {
LABEL_85:
    if ((*(a7 + 98) & 4) == 0 || !SLstrcmp((v30 + 19), *(a7 + 16)))
    {
      goto LABEL_89;
    }

    v60 = strlen((v30 + 19));
    v61 = malloc_type_calloc(v60 + 1, 1uLL, 0x100004077774924uLL);
    *(a7 + 128) = v61;
    if (v61)
    {
      strcpy(v61, (v30 + 19));
      goto LABEL_89;
    }

    v57 = *(v48 + 32);
    goto LABEL_76;
  }

  v65 = v33;
  v49 = *(a7 + 16);
  v50 = *(a7 + 32);
  TwoToOneChrCnv_pNewStr[0] = 0;
  TwoToOneChrCnv_pOeStr = 247;
  TwoToOneChrCnv_pAeStr = 230;
  if (!v50)
  {
    v56 = 1;
    goto LABEL_80;
  }

  v51 = 0;
  v52 = 0;
  do
  {
    v53 = (v49 + v51);
    v54 = *v53;
    if (v54 == 97)
    {
      if (v53[1] == 101)
      {
        goto LABEL_71;
      }
    }

    else if (v54 == 111 && v53[1] == 101)
    {
LABEL_71:
      __strcat_chk();
      ++v51;
      ++v52;
      goto LABEL_73;
    }

    v55 = v52++;
    TwoToOneChrCnv_pNewStr[v55] = v54;
    TwoToOneChrCnv_pNewStr[v52] = 0;
LABEL_73:
    ++v51;
  }

  while (v50 > v51);
  v56 = v52 + 1;
  v17 = 5;
LABEL_80:
  v58 = malloc_type_calloc(v56, 1uLL, 0x100004077774924uLL);
  *(a7 + 128) = v58;
  v48 = v68;
  v33 = v65;
  if (v58)
  {
    strcpy(v58, TwoToOneChrCnv_pNewStr);
  }

  else
  {
    v59 = *(v68 + 32);
    *v59 = 0xDC00000078;
    *(v59 + 8) = 841;
  }

LABEL_83:
  if (v17 <= 0xC && ((1 << v17) & 0x1320) != 0)
  {
    goto LABEL_85;
  }

LABEL_89:
  v62 = v33 | (v32 << 24) | (16 * *(a8 + 1328)) & 0x800 | (*(a8 + 1328) << 6) & 0x1000 | (*(a8 + 1328) << 18) & 0x200000;
  v63 = *(a8 + 1322);
  if ((v63 & 0x100) != 0)
  {
    v62 = v33 & 0xFFFC1FFF | (v32 << 24) | (16 * *(a8 + 1328)) & 0x800 | (*(a8 + 1328) << 6) & 0x1000 | (*(a8 + 1328) << 18) & 0x200000 | 0x2000;
    *(a7 + 98) &= 0xF09Cu;
  }

  *(a7 + 92) = v62;
  v25 = v67;
  if (v17 == 5)
  {
    if ((v63 & 0x20) != 0 && (*(v29 + 4 * *(a8 + 1547)) & 0x10000000) == 0)
    {
      *(a7 + 92) = v62 & 0xF0FFFFFF;
    }

    if ((v63 & 0x100) != 0 && (*(a8 + 1547) | 0x20) != 0x68 && (*(v29 + 4 * *(a8 + 1547)) & 0x10000000) == 0)
    {
      *(a7 + 92) = v62 & 0xF0FFFFFF;
    }
  }

  *(a7 + 60) = *(v30 + 84);
  return v25;
}

uint64_t PRgetSeverity(uint64_t a1, uint64_t a2, int *a3, int a4, unsigned int a5, int a6)
{
  v16 = 0;
  if (a4)
  {
    v7 = *(a1 + 32);
    v8 = 0xE6FFFFFF8FLL;
LABEL_5:
    *v7 = v8;
    *(v7 + 8) = 525;
    return 230;
  }

  v11 = *(a2 + 48);
  v12 = *(v11 + 256);
  if (getPosition(0, &v16 + 1, &v16, 0, *(v11 + 32), *(v11 + 200), *(v11 + 26), a5, a6))
  {
    v7 = *(a1 + 32);
    v8 = 0xE6FFFFFF8ELL;
    goto LABEL_5;
  }

  if (a6)
  {
    if (!v16)
    {
      v7 = *(a1 + 32);
      v8 = 0xE6FFFFFF8DLL;
      goto LABEL_5;
    }

    v14 = *(v12 + ((2 * v16) >> 3)) << ((2 * v16) & 6);
    *a3 = v14 >> 6;
    if (v14 >> 6)
    {
      return 0;
    }
  }

  result = 0;
  if (((*(v12 + ((2 * HIDWORD(v16)) >> 3)) << ((2 * BYTE4(v16)) & 6)) >> 6) <= 1u)
  {
    v15 = 1;
  }

  else
  {
    v15 = (*(v12 + ((2 * HIDWORD(v16)) >> 3)) << ((2 * BYTE4(v16)) & 6)) >> 6;
  }

  *a3 = v15;
  return result;
}

uint64_t getPosition(unsigned __int16 *a1, _DWORD *a2, _DWORD *a3, int *a4, uint64_t a5, unsigned __int16 *a6, int a7, unsigned int a8, unsigned __int8 a9)
{
  v19 = 0;
  if (!BinarySearch(a5, a7, 1, a8, 1, &v19))
  {
    return 230;
  }

  v14 = v19;
  if (a1)
  {
    *a1 = v19;
  }

  if (!v14)
  {
    v15 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15 = (v14 + (bswap32(a6[v14 - 1]) >> 16));
  if (a2)
  {
LABEL_6:
    *a2 = v15;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_7:
  if (v14)
  {
    v16 = (HIBYTE(a6[v14]) | (LOBYTE(a6[v14]) << 8)) - (bswap32(a6[v14 - 1]) >> 16);
  }

  else
  {
    LOWORD(v16) = __rev16(*a6);
  }

  v18 = v15 + a9;
  if (a9 > v16)
  {
    v18 = 0;
  }

  *a3 = v18;
  if (!a4)
  {
    return 0;
  }

  result = 0;
  *a4 = HIBYTE(a6[v14]) | (LOBYTE(a6[v14]) << 8);
  return result;
}

uint64_t getMapVal(uint64_t a1, int a2, int a3)
{
  v3 = (a3 * a2) >> 3;
  v4 = (a3 * a2) & 7;
  if (a3 == 2)
  {
    return (*(a1 + v3) << v4) >> 6;
  }

  if (a3 == 1)
  {
    return (0x80u >> v4) & *(a1 + v3);
  }

  return 0;
}

uint64_t PRliveRule(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, int a6, int a7)
{
  if (*(a1 + 26) < a4)
  {
    return 4;
  }

  v27[11] = v7;
  v27[12] = v8;
  v27[0] = 0;
  if (a3)
  {
    v11 = *(a1 + 32);
    *v11 = 0xE6FFFFFF8FLL;
    *(v11 + 8) = 524;
    return 230;
  }

  v17 = *(a2 + 48);
  v18 = *(v17 + 32);
  v19 = *(v17 + 200);
  v25 = *(v17 + 304);
  v20 = *(v17 + 26);
  if (getPosition(0, v27 + 1, 0, 0, v18, v19, v20, a4, 0))
  {
    return 4;
  }

  if (a5)
  {
    Position = getPosition(0, 0, v27, 0, v18, v19, v20, a4, a5);
    v22 = v27[0];
    if (Position)
    {
      v23 = 1;
    }

    else
    {
      v23 = LODWORD(v27[0]) == 0;
    }

    if (v23)
    {
      return 4;
    }
  }

  else
  {
    v22 = 0;
  }

  if (((*(v25 + (HIDWORD(v27[0]) >> 3)) << (BYTE4(v27[0]) & 7)) & 0x80) != 0 || a5 && ((*(v25 + (v22 >> 3)) << (v22 & 7)) & 0x80) != 0 || a6 && !a7 && ((*(*(v17 + 272) + (v22 >> 3)) << (v22 & 7)) & 0x80) == 0)
  {
    return 4;
  }

  if (!*(a1 + 27))
  {
LABEL_25:
    v24 = *(v17 + 288);
    if (!v24 || ((*(v24 + (LODWORD(v27[0]) >> 3)) << (v27[0] & 7)) & 0x80) != 0)
    {
      return 0;
    }

    return 4;
  }

  v26 = 0;
  result = PRgetSeverity(a1, a2, &v26, 0, a4, a5);
  if (!result)
  {
    if (v26 != 3)
    {
      goto LABEL_25;
    }

    return 4;
  }

  return result;
}

uint64_t BinarySearch(uint64_t a1, int a2, int a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 0;
  v6 = a2 / a3 - 1;
  if ((v6 & 0x8000) != 0)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = (v7 + v6) / 2;
    v9 = (a1 + v8 * a3);
    v10 = *v9;
    if (a5 == 2)
    {
      v10 = v9[1] | (v10 << 8);
    }

    if (v10 == a4)
    {
      break;
    }

    v11 = v10 >= a4;
    if (v10 <= a4)
    {
      v12 = v6;
    }

    else
    {
      v12 = v8 - 1;
    }

    if (!v11)
    {
      v12 = v6;
    }

    LOWORD(v6) = v12;
    if (!v11)
    {
      v7 = v8 + 1;
    }

    if (v7 > v12)
    {
      return 0;
    }
  }

  *a6 = v8;
  return 1;
}

uint64_t getTypeIndex(uint64_t a1, _WORD *a2, int a3, unsigned int a4, int a5)
{
  if (BinarySearch(a1, a3, 1, a4, 1, a2))
  {
    return 0;
  }

  result = 230;
  if (a5 && a3)
  {
    v11 = 0;
    while (*(a1 + v11) <= a4)
    {
      if (a3 == ++v11)
      {
        return 230;
      }
    }

    result = 0;
    *a2 = v11;
  }

  return result;
}

char *CalExtBytesAfterCnv(char *result, _WORD *a2, int a3)
{
  *a2 = 0;
  v5 = *(result + 9);
  if (*(result + 9))
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = *result;
    v10 = *(result + 1);
    do
    {
      result = strchr((v9 + *(v10 + 2 * v8)), a3);
      if (result)
      {
        do
        {
          *a2 = ++v7;
          result = strchr(result + 1, a3);
        }

        while (result);
        v5 = *(v6 + 9);
      }

      ++v8;
    }

    while (v8 < v5);
    v11 = 2 * v7;
  }

  else
  {
    v11 = 0;
  }

  if (a3 == 133)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t AltOneToMultiChrCnv(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  result = 0;
  v8 = *(a1 + 24);
  if (a2 <= 222)
  {
    if (a2 == 133)
    {
      v10 = 0;
      v12 = 46;
      v11 = 46;
      v9 = 46;
    }

    else
    {
      if (a2 != 151)
      {
        return result;
      }

      v9 = 0;
      v10 = 1;
      v12 = 45;
      v11 = 45;
    }
  }

  else
  {
    switch(a2)
    {
      case 223:
        v9 = 0;
        v10 = 1;
        v12 = 115;
        v11 = 115;
        break;
      case 230:
        v9 = 0;
        v10 = 1;
        v11 = 101;
        v12 = 97;
        break;
      case 247:
        v9 = 0;
        v10 = 1;
        v11 = 101;
        v12 = 111;
        break;
      default:
        return result;
    }
  }

  v13 = v8 + a3;
  v14 = malloc_type_calloc((v8 + a3) + 1, 1uLL, 0x100004077774924uLL);
  if (v14)
  {
    v15 = v14;
    if (*(a1 + 24))
    {
      v16 = 0;
      v17 = 0;
      v18 = 2;
      do
      {
        v19 = *(*a1 + v16);
        if (v19 == a2)
        {
          v14[v17] = v12;
          v14[(v17 + 1)] = v11;
          if (v10)
          {
            ++v17;
          }

          else
          {
            v17 += 2;
            v14[v17] = v9;
          }
        }

        else
        {
          v14[v17] = v19;
          if (!*(*a1 + v16) && *(a1 + 18) >= v18)
          {
            *(*(a1 + 8) + 2 * v18++ - 2) = v17 + 1;
          }
        }

        ++v16;
        ++v17;
      }

      while (v16 < *(a1 + 24));
    }

    *(a1 + 24) = v13;
    free(*a1);
    result = 0;
    *a1 = v15;
  }

  else
  {
    v20 = *(a4 + 32);
    *v20 = 0xDC00000078;
    *(v20 + 8) = 842;
    return 220;
  }

  return result;
}

char *OneToMultiChrCnv(const char **a1, unsigned __int16 *a2, int a3, uint64_t a4)
{
  v8 = *a1;
  v9 = strlen(*a1);
  result = strchr(v8, a3);
  if (!result)
  {
    return result;
  }

  v11 = 0;
  v12 = v8 + 1;
  do
  {
    ++v11;
  }

  while (strchr(v12++, a3));
  if (!v11)
  {
    return 0;
  }

  v14 = 0;
  v15 = 1;
  v26 = a4;
  if (a3 <= 222)
  {
    if (a3 == 133)
    {
      v15 = 0;
      v11 *= 2;
      v14 = 46;
      v16 = 46;
      v17 = 46;
      goto LABEL_17;
    }

    if (a3 == 151)
    {
      v17 = 45;
      v16 = 45;
      goto LABEL_16;
    }
  }

  else
  {
    switch(a3)
    {
      case 223:
        v17 = 115;
        v16 = 115;
        goto LABEL_16;
      case 230:
        v16 = 101;
        v17 = 97;
        goto LABEL_16;
      case 247:
        v16 = 101;
        v17 = 111;
LABEL_16:
        v14 = 0;
        goto LABEL_17;
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_17:
  v18 = v11 + v9;
  v19 = malloc_type_calloc(v18 + 1, 1uLL, 0x100004077774924uLL);
  if (v19)
  {
    v20 = v19;
    if (v9)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = (*a1)[v21];
        if (v23 == a3)
        {
          v19[v22] = v17;
          v24 = v22 + 1;
          v19[(v22 + 1)] = v16;
          if ((v15 & 1) == 0)
          {
            v24 = v22 + 2;
            v19[(v22 + 2)] = v14;
          }
        }

        else
        {
          v19[v22] = v23;
          v24 = v22;
        }

        ++v21;
        v22 = v24 + 1;
      }

      while (v9 != v21);
    }

    v19[v18] = 0;
    free(*a1);
    result = 0;
    *a1 = v20;
    *a2 = v18;
  }

  else
  {
    v25 = *(v26 + 32);
    *v25 = 0xDC00000078;
    *(v25 + 8) = 840;
    return 220;
  }

  return result;
}

_BYTE *ToUpUnaccentedCnv(_BYTE *result, int a2, int a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      v5 = *result;
      if ((v5 - 192) <= 0x1C && (a3 != 8 || (*(a4 + 4 * v5) & 0x40000) == 0) && ((0x1A300E8uLL >> v5) & 1) == 0)
      {
        *result = byte_1D2BFC844[v5 - 192];
      }

      ++result;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *PRinsOneHyp(char *result, _DWORD *a2, int a3, unsigned int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *result;
  if (*result)
  {
    LOWORD(v5) = 0;
    v6 = 0;
    do
    {
      if (v4 != a3)
      {
        result[v5] = v4;
        LOWORD(v5) = v5 + 1;
      }

      v4 = result[++v6];
    }

    while (result[v6]);
  }

  else
  {
    LOWORD(v5) = 0;
  }

  v5 = v5;
  result[v5] = 0;
  if (*a2)
  {
    if ((a2[a4 >> 5] >> ~a4))
    {
      if (v5)
      {
LABEL_11:
        v7 = 0;
        v8 = a4;
        v9 = result;
        do
        {
          v10 = *v9++;
          v11 = v7 + 1;
          __src[v7] = v10;
          if (!v8)
          {
            __src[(v7 + 1)] = a3;
            v11 = v7 + 2;
          }

          --v8;
          v7 = v11;
          --v5;
        }

        while (v5);
        v12 = v11;
        goto LABEL_36;
      }
    }

    else
    {
      if (a4)
      {
        v13 = a4 - 1;
        do
        {
          v14 = v13 - 1;
          if (!v13)
          {
            break;
          }

          v15 = a2[v13 >> 5];
          v16 = 1 << ~v13--;
        }

        while ((v16 & v15) == 0);
        v17 = v14 + 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = (v5 - 1);
      for (i = a4; v18 > i; ++i)
      {
        if ((a2[i >> 5] >> ~i))
        {
          break;
        }
      }

      if ((a4 - v17) <= (i - a4))
      {
        v20 = v17;
      }

      else
      {
        v20 = i;
      }

      if (v5 - 1 == i)
      {
        v21 = v17;
      }

      else
      {
        v21 = v20;
      }

      if (v17)
      {
        LOWORD(a4) = v21;
      }

      else
      {
        LOWORD(a4) = i;
      }

      if (v5)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
LABEL_36:
    __src[v12] = 0;
    result = strcpy(result, __src);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRword(uint64_t a1, int a2, int a3)
{
  v139 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_106;
  }

  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v126 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  v6 = a1 + 112;
  *(a1 + 120) = 0;
  if (a2 <= 7)
  {
    if (a2 != 3 && a2 != 7)
    {
LABEL_25:
      v12 = *(a1 + 8);
      if (v12)
      {
        *(v12 + 18) = 0;
        *(v12 + 24) = 0;
        if (*(v12 + 16))
        {
          v13 = 0;
          v14 = *(v12 + 8);
          do
          {
            *(v14 + 2 * v13++) = -1;
          }

          while (v13 < *(v12 + 16));
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (a2 == 8)
    {
      goto LABEL_29;
    }

    if (a2 != 103 && a2 != 17)
    {
      goto LABEL_25;
    }
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    do
    {
      v8 = v7[5];
      PRfreeErr(v7);
      v7 = v8;
    }

    while (v8);
  }

  *(a1 + 96) = 0;
  if (a2 != 8)
  {
    if (a2 == 17)
    {
      v9 = *(a1 + 8);
      if (v9)
      {
        PRfreeList(v9);
      }

      *(a1 + 8) = 0;
      v10 = *(a1 + 136);
      if (!v10)
      {
        goto LABEL_215;
      }

      if (*v10)
      {
        PRfreeList(*v10);
        v10 = *(a1 + 136);
      }

      if (*(v10 + 8))
      {
        PRfreeList(*(v10 + 8));
        v10 = *(a1 + 136);
      }

      if (*(v10 + 16))
      {
        free(*(v10 + 16));
        v10 = *(a1 + 136);
      }

      if (*(v10 + 24))
      {
        free(*(v10 + 24));
        v10 = *(a1 + 136);
      }

      free(v10);
      v11 = 0;
      *(a1 + 136) = 0;
      goto LABEL_107;
    }

    goto LABEL_25;
  }

LABEL_29:
  v15 = PRGetAppElem(*(a1 + 129));
  if (!v15)
  {
    v24 = 0xE6FFFFFF93;
LABEL_41:
    *(a1 + 112) = v24;
    *(a1 + 120) = 500;
LABEL_106:
    v11 = 230;
    goto LABEL_107;
  }

  v16 = v15;
  *(v15 + 32) = v6;
  *(v15 + 24) = 0;
  v17 = PRGetDbElem(*(a1 + 129), *(a1 + 130));
  if (!v17)
  {
    v24 = 0xE6FFFFFF92;
    goto LABEL_41;
  }

  v18 = v17;
  v19 = *(v17 + 128);
  v20 = *(v16 + 28);
  if (a2 == 7 || a2 == 103)
  {
    *(v19 + 1308) = 1;
    if (a2 == 103)
    {
      v21 = 3;
    }

    else
    {
      v21 = a2;
    }

    if ((*v17 & 2) == 0)
    {
      v22 = *(v16 + 32);
      if (v21 == 7)
      {
        v23 = 0xE6000001F9;
LABEL_105:
        *v22 = v23;
        *(v22 + 8) = 500;
        goto LABEL_106;
      }

      *v22 = 0x4000001F9;
      *(v22 + 8) = 500;
      *(v19 + 1308) = 0;
    }
  }

  else
  {
    *(v19 + 1308) = 0;
    v21 = a2;
  }

  v25 = *(a1 + 127);
  *(v19 + 1408) = v25;
  if (!v25)
  {
    v26 = *(a1 + 104);
    *(v19 + 1412) = *(v26 + 252);
    *(v19 + 1416) = *(v26 + 256);
  }

  *(v19 + 1339) = 0;
  v27 = *a1;
  if (*a1)
  {
    v28 = strlen(*a1);
    LOWORD(v29) = v28;
    if (!v20)
    {
      if (v28 < 0x41u)
      {
        v20 = 0;
      }

      else
      {
        LOWORD(v29) = 64;
        strncpy(__dst, v27, 0x40uLL);
        v20 = 0;
        v27 = __dst;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (!v20)
    {
      v27 = 0;
      LOWORD(v29) = 0;
      goto LABEL_56;
    }

    LOWORD(v29) = 0;
  }

  if ((v29 & 0xFFC0) != 0)
  {
    v29 = 64;
  }

  else
  {
    v29 = v29;
  }

  v20 = 1;
  SLchcnv(v27, v29, __dst, 1, *(v18 + 20));
  v27 = __dst;
LABEL_56:
  if (v21 <= 7u)
  {
    if (v21 - 5 >= 2)
    {
      if (v21 != 3 && v21 != 7)
      {
        goto LABEL_86;
      }

      if (a3)
      {
        goto LABEL_79;
      }

      *(v19 + 1339) = 0;
      if (PRIcs(v16, v18, 0, 0, 0, v27, 0, v19, v21, 0) == 8)
      {
        goto LABEL_198;
      }

      *(a1 + 16) = *(v19 + 1640);
      *(a1 + 88) = *(v19 + 3156);
      **(a1 + 104) = *(v19 + 1664);
      *(*(a1 + 104) + 8) = *(v19 + 1672);
      *(*(a1 + 104) + 16) = *(v19 + 1648);
      *(*(a1 + 104) + 24) = *(v19 + 1656);
      if (v20)
      {
        v35 = strlen((v19 + 3090));
        SLchcnv((v19 + 3090), v35, (a1 + 24), 0, *(v18 + 20));
        v36 = strlen((v19 + 1614));
        SLchcnv((v19 + 1614), v36, (*(a1 + 104) + 32), 0, *(v18 + 20));
        v37 = strlen((v19 + 1624));
        SLchcnv((v19 + 1624), v37, (*(a1 + 104) + 42), 0, *(v18 + 20));
        v38 = strlen((v19 + 1547));
        SLchcnv((v19 + 1547), v38, (*(a1 + 104) + 55), 0, *(v18 + 20));
        v39 = strlen((v19 + 1417));
        SLchcnv((v19 + 1417), v39, (*(a1 + 104) + 122), 0, *(v18 + 20));
        v40 = strlen((v19 + 1482));
        SLchcnv((v19 + 1482), v40, (*(a1 + 104) + 187), 0, *(v18 + 20));
      }

      else
      {
        __strcpy_chk();
        v87 = *(a1 + 104);
        __strcpy_chk();
        v88 = *(a1 + 104);
        __strcpy_chk();
        v89 = *(a1 + 104);
        __strcpy_chk();
        v90 = *(a1 + 104);
        __strcpy_chk();
        v91 = *(a1 + 104);
        __strcpy_chk();
      }

      v92 = *(a1 + 104);
      *(v92 + 252) = *(v19 + 1412);
      *(v92 + 256) = *(v19 + 1416);
      v93 = *(v19 + 4);
      if (v93 == 4 || !*(v19 + 1328) && v93 != 11 && !*(v19 + 1322))
      {
        goto LABEL_215;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v126 = 0u;
      v127 = v27;
      LOWORD(v128) = v29;
      if (PRFillError(v16, v18, &v126, 0))
      {
        goto LABEL_200;
      }

      v94 = v136;
      *(a1 + 96) = v136;
      if (v94)
      {
        v95 = v20;
      }

      else
      {
        v95 = 0;
      }

      if (v94)
      {
        v11 = 210;
      }

      else
      {
        v11 = 0;
      }

      if (v95 == 1)
      {
        do
        {
          ConvertAlts(*(v94 + 24), 0, *(v18 + 20));
          v94 = *(v136 + 40);
          *&v136 = v94;
          v11 = 210;
        }

        while (v94);
      }

      goto LABEL_107;
    }

    if (a3)
    {
      goto LABEL_79;
    }

    *(v19 + 1408) = 0;
    *(v19 + 1684) = *(a1 + 124);
    *(v19 + 1339) = 0;
    if (PRIcs(v16, v18, 0, 0, 0, v27, 0, v19, v21, 0) == 8)
    {
      goto LABEL_198;
    }

    v63 = *(a1 + 8);
    v62 = (a1 + 8);
    if (!v63 && PRmkList(v16, v62, 100) == 220)
    {
      goto LABEL_200;
    }

    v64 = *(v19 + 1686);
    if (!*(v19 + 1686))
    {
      goto LABEL_215;
    }

    if (v20)
    {
      SLchcnv((v19 + *(v19 + 2890) + 1690), (*(v19 + 1688) - *(v19 + 2890)), (v19 + *(v19 + 2890) + 1690), 0, *(v18 + 20));
      v64 = *(v19 + 1686);
    }

    v65 = PRaddList(*v62, (v19 + *(v19 + 2890) + 1690), v64, 0);
LABEL_115:
    v11 = v65;
    goto LABEL_107;
  }

  if (v21 <= 0xAu)
  {
    if (v21 - 9 < 2)
    {
      v30 = *(v16 + 8 * *(a1 + 131) + 56);
      if (v30)
      {
        v31 = *(a1 + 132);
        v32 = *(v30 + 776);
        if (v21 == 9 && *(a1 + 126) && (v33 = a1 + 24, *(a1 + 24)))
        {
          v34 = strlen((a1 + 24));
          if (!v20)
          {
            *(v32 + 2128) = v33;
            *(v32 + 2136) = v34;
            v96 = *a1;
            __strcpy_chk();
            goto LABEL_91;
          }

          SLchcnv((a1 + 24), v34, (a1 + 24), 1, v31);
          *(v32 + 2128) = v33;
          *(v32 + 2136) = v34;
        }

        else
        {
          *(v32 + 2128) = 0;
          *(v32 + 2136) = 0;
          if ((v20 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        v48 = strlen(*a1);
        SLchcnv(*a1, v48, *a1, 1, v31);
LABEL_90:
        v49 = *a1;
        __strcpy_chk();
        if (v21 != 9)
        {
          v50 = 2;
LABEL_117:
          *(v32 + 4) = *v30;
          *v32 = v50;
          if (ICpd(v19, v32) == 8)
          {
            if (v21 == 9)
            {
              v66 = 710;
            }

            else
            {
              v66 = 709;
            }

            if (*(v32 + 2148) == 5151)
            {
              v66 = 714;
              v67 = 710;
            }

            else
            {
              v67 = 500;
            }

            v11 = 230;
            *(a1 + 112) = v66;
            *(a1 + 116) = 230;
            *(a1 + 120) = v67;
            goto LABEL_107;
          }

LABEL_215:
          v11 = 0;
          goto LABEL_107;
        }

LABEL_91:
        *(v32 + 2125) = *(a1 + 126);
        v50 = 1;
        goto LABEL_117;
      }

LABEL_104:
      v22 = *(v16 + 32);
      v23 = 0xE6000002C0;
      goto LABEL_105;
    }

    if (v21 == 8)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v47 = 0;
          v46 = 103;
          v45 = 1;
          goto LABEL_192;
        }

        if (a3 == 64)
        {
          v45 = 0;
          v47 = 0;
          v46 = 101;
          goto LABEL_192;
        }

LABEL_79:
        v22 = *(v16 + 32);
        v23 = 0xE6FFFFFF94;
        goto LABEL_105;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          v45 = 0;
          v46 = 102;
          v47 = 1;
LABEL_192:
          v112 = PRIcs(v16, v18, 0, 0, 0, "", 0, v19, v46, 0);
          v11 = v112;
          if ((v112 - 20) < 3)
          {
            v113 = (a1 + 8);
            if (*(a1 + 8) || PRmkList(v16, (a1 + 8), 100) != 220)
            {
              if ((v45 | v47))
              {
                v114 = 0;
              }

              else
              {
                v114 = *(*v113 + 9);
              }

              LODWORD(v115) = *(v19 + 1686);
              if (v114 < v115)
              {
                v125 = v20;
                v116 = v19 + 1690;
                v117 = v19 + 2890;
                v118 = v114;
                while (*(*v113 + 9) < *(*v113 + 8))
                {
                  v119 = *(v117 + 2 * v118);
                  if (v125)
                  {
                    v120 = strlen((v116 + v119));
                    SLchcnv((v116 + v119), v120, (v116 + v119), 0, *(v18 + 20));
                    v65 = PRaddList(*v113, (v116 + *(v117 + 2 * v118)), 1, 0);
                    if (v65)
                    {
                      goto LABEL_115;
                    }

                    v121 = *(v117 + 2 * v118);
                    v122 = strlen((v116 + v121));
                    SLchcnv((v116 + v121), v122, (v116 + v121), 1, *(v18 + 20));
                  }

                  else
                  {
                    v65 = PRaddList(*v113, (v116 + v119), 1, 0);
                    if (v65)
                    {
                      goto LABEL_115;
                    }
                  }

                  ++v118;
                  v115 = *(v19 + 1686);
                  if (v118 >= v115)
                  {
                    goto LABEL_212;
                  }
                }

                LODWORD(v115) = 1;
              }

LABEL_212:
              if (v11 == 22)
              {
                v11 = 0;
                *(a1 + 128) = 1;
                goto LABEL_107;
              }

              if (v11 != 21)
              {
                v11 = 240;
                goto LABEL_107;
              }

              if (v115)
              {
                goto LABEL_215;
              }

LABEL_218:
              v123 = *(v16 + 32);
              *v123 = 0x4000001F5;
              *(v123 + 8) = 500;
              v11 = 4;
              goto LABEL_107;
            }

LABEL_200:
            v11 = 220;
            goto LABEL_107;
          }

          if (v112 != 8)
          {
            goto LABEL_107;
          }

          goto LABEL_198;
        }

        goto LABEL_79;
      }

      *(v19 + 1680) = 0;
      v77 = *(a1 + 8);
      if (v77)
      {
        *(v77 + 18) = 0;
        *(v77 + 24) = 0;
        if (*(v77 + 16))
        {
          v78 = 0;
          v79 = *(v77 + 8);
          do
          {
            *(v79 + 2 * v78++) = -1;
          }

          while (v78 < *(v77 + 16));
        }
      }

      if (!SLstrcmp((v19 + 1339), v27))
      {
        v45 = 0;
        v47 = 0;
LABEL_191:
        v46 = 100;
        goto LABEL_192;
      }

      *(v19 + 1339) = 0;
      v80 = PRIcs(v16, v18, 0, 0, 0, v27, 0, v19, 3, 0);
      if (v80 == 4)
      {
        goto LABEL_218;
      }

      if (v80 != 8)
      {
        *(a1 + 16) = *(v19 + 1640);
        *(a1 + 88) = *(v19 + 3156);
        **(a1 + 104) = *(v19 + 1664);
        *(*(a1 + 104) + 8) = *(v19 + 1672);
        *(*(a1 + 104) + 16) = *(v19 + 1648);
        *(*(a1 + 104) + 24) = *(v19 + 1656);
        if (v20)
        {
          v81 = strlen((v19 + 3090));
          SLchcnv((v19 + 3090), v81, (a1 + 24), 0, *(v18 + 20));
          v82 = strlen((v19 + 1614));
          SLchcnv((v19 + 1614), v82, (*(a1 + 104) + 32), 0, *(v18 + 20));
          v83 = strlen((v19 + 1624));
          SLchcnv((v19 + 1624), v83, (*(a1 + 104) + 42), 0, *(v18 + 20));
          v84 = strlen((v19 + 1547));
          SLchcnv((v19 + 1547), v84, (*(a1 + 104) + 55), 0, *(v18 + 20));
          v85 = strlen((v19 + 1417));
          SLchcnv((v19 + 1417), v85, (*(a1 + 104) + 122), 0, *(v18 + 20));
          v86 = strlen((v19 + 1482));
          SLchcnv((v19 + 1482), v86, (*(a1 + 104) + 187), 0, *(v18 + 20));
        }

        else
        {
          __strcpy_chk();
          v106 = *(a1 + 104);
          __strcpy_chk();
          v107 = *(a1 + 104);
          __strcpy_chk();
          v108 = *(a1 + 104);
          __strcpy_chk();
          v109 = *(a1 + 104);
          __strcpy_chk();
          v110 = *(a1 + 104);
          __strcpy_chk();
        }

        v45 = 0;
        v47 = 0;
        v111 = *(a1 + 104);
        *(v111 + 252) = *(v19 + 1412);
        *(v111 + 256) = *(v19 + 1416);
        goto LABEL_191;
      }

LABEL_198:
      v69 = *(v16 + 32);
      v70 = 0xDC000000A0;
      goto LABEL_199;
    }

LABEL_86:
    v22 = *(v16 + 32);
    v23 = 0xE6FFFFFF95;
    goto LABEL_105;
  }

  if (v21 == 11)
  {
    v51 = *(v16 + 8 * *(a1 + 131) + 56);
    if (!v51)
    {
      goto LABEL_104;
    }

    v52 = *(v51 + 776);
    *(v52 + 4) = *v51;
    if (*(v51 + 784))
    {
      goto LABEL_94;
    }

    if (a3 == 3)
    {
      v68 = 4;
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_79;
      }

      v68 = 5;
    }

    *v52 = v68;
    v97 = *(a1 + 134);
    *(v52 + 2138) = v97;
    if (v97 > 0x14 || !v97)
    {
      v22 = *(v16 + 32);
      v23 = 0xE6FFFFFF85;
      goto LABEL_105;
    }

    if (ICpd(v19, v52) == 8)
    {
      goto LABEL_133;
    }

    *(v51 + 784) = a3;
    v98 = *(a1 + 136);
    if (!v98)
    {
      v124 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B00405BDECF31uLL);
      *(a1 + 136) = v124;
      if (!v124)
      {
        goto LABEL_133;
      }

      if (PRmkList(v16, v124, *(a1 + 134)) == 220 || PRmkList(v16, (*(a1 + 136) + 8), *(a1 + 134)) == 220)
      {
        goto LABEL_200;
      }

      v98 = *(a1 + 136);
    }

    v99 = *(a1 + 134);
    if (*(v98 + 32))
    {
      if (*(v98 + 32) >= v99)
      {
LABEL_180:
        *(v52 + 2192) = malloc_type_calloc(v99, 8uLL, 0x2004093837F09uLL);
        **(v52 + 2192) = malloc_type_calloc(*(a1 + 134), 0x94uLL, 0x10000403212CEEEuLL);
        v104 = *(a1 + 134);
        if (v104 >= 2)
        {
          for (i = 1; i != v104; ++i)
          {
            *(*(v52 + 2192) + 8 * i) = **(v52 + 2192) + 148 * i;
          }
        }

LABEL_94:
        v53 = *(a1 + 136);
        v54 = *v53;
        if (*v53)
        {
          *(v54 + 18) = 0;
          *(v54 + 24) = 0;
          if (*(v54 + 16))
          {
            v55 = 0;
            v56 = *(v54 + 8);
            do
            {
              *(v56 + 2 * v55++) = -1;
            }

            while (v55 < *(v54 + 16));
          }
        }

        v57 = v53[1];
        if (v57)
        {
          *(v57 + 18) = 0;
          *(v57 + 24) = 0;
          if (*(v57 + 16))
          {
            v58 = 0;
            v59 = *(v57 + 8);
            do
            {
              *(v59 + 2 * v58++) = -1;
            }

            while (v58 < *(v57 + 16));
          }
        }

        *v52 = 6;
        if (ICpd(v19, v52) == 8)
        {
          *(a1 + 112) = 0xE60000007BLL;
          *(a1 + 120) = 500;
          goto LABEL_200;
        }

        if (!*(v52 + 2184))
        {
          goto LABEL_215;
        }

        v72 = 0;
        while (1)
        {
          v73 = *(v52 + 2192);
          v74 = *(v73 + 8 * v72);
          if (v20)
          {
            v75 = strlen(*(v73 + 8 * v72));
            SLchcnv(v74, v75, v74, 0, *(v18 + 20));
            v76 = strlen((v74 + 80));
            SLchcnv((v74 + 80), v76, (v74 + 80), 0, *(v18 + 20));
          }

          v65 = PRaddList(**(a1 + 136), v74, 1, v72);
          if (v65)
          {
            goto LABEL_115;
          }

          v11 = PRaddList(*(*(a1 + 136) + 8), (v74 + 80), 1, v72);
          if (!v11)
          {
            *(*(*(a1 + 136) + 16) + 8 * v72) = *(v74 + 72);
            *(*(*(a1 + 136) + 24) + v72++) = *(v74 + 68);
            if (v72 < *(v52 + 2184))
            {
              continue;
            }
          }

          goto LABEL_107;
        }
      }

      free(*(v98 + 16));
      free(*(*(a1 + 136) + 24));
      v100 = *(a1 + 136);
      *(v100 + 16) = 0;
      *(v100 + 24) = 0;
      *(v100 + 32) = 0;
      v99 = *(a1 + 134);
    }

    v101 = malloc_type_malloc(8 * v99, 0x100004000313F17uLL);
    *(*(a1 + 136) + 16) = v101;
    if (!v101)
    {
      goto LABEL_133;
    }

    v102 = malloc_type_malloc(*(a1 + 134), 0x100004077774924uLL);
    v103 = *(a1 + 136);
    *(v103 + 24) = v102;
    if (!v102)
    {
      goto LABEL_133;
    }

    v99 = *(a1 + 134);
    *(v103 + 32) = v99;
    goto LABEL_180;
  }

  if (v21 != 15)
  {
    goto LABEL_86;
  }

  v41 = *(v16 + 8 * *(a1 + 131) + 56);
  if (!v41)
  {
    goto LABEL_104;
  }

  v42 = *(v41 + 776);
  *(v42 + 4) = *v41;
  v43 = *(v41 + 784);
  if (v43 == 3)
  {
    v44 = 7;
  }

  else
  {
    if (v43 != 4)
    {
      goto LABEL_86;
    }

    v44 = 8;
  }

  *v42 = v44;
  if (ICpd(v19, v42) == 8)
  {
LABEL_133:
    v69 = *(v16 + 32);
    v70 = 0xDC00000078;
LABEL_199:
    *v69 = v70;
    *(v69 + 8) = 500;
    goto LABEL_200;
  }

  v71 = *(v42 + 2192);
  if (v71)
  {
    free(*v71);
    free(*(v42 + 2192));
    *(v42 + 2192) = 0;
  }

  v11 = 0;
  *(v41 + 784) = 0;
LABEL_107:
  v60 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t add_phrase(unsigned __int8 **a1, const char *a2, unsigned __int8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0x1070040A09EEE56;
LABEL_3:
  v6 = *a2;
  if ((v6 - 65) >= 0x1A && (v6 - 192) >= 0x17)
  {
    if ((v6 - 216) >= 7)
    {
      if ((v6 - 138) > 0x15 || ((1 << (v6 + 118)) & 0x200015) == 0)
      {
        if (!*a2)
        {
          v4[2] = a3;
          return 1;
        }

        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 - 138) <= 0x15 && ((1 << (v6 + 118)) & 0x200015) != 0)
  {
LABEL_19:
    if (v6 == 159)
    {
      v6 = 255;
    }

    else
    {
      v6 += 16;
    }

    goto LABEL_22;
  }

  v6 += 32;
LABEL_22:
  v10 = *(v4 + 5);
  if (!*(v4 + 5))
  {
    v30 = 0;
LABEL_91:
    v29 = 1;
    v31 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
    *v31 = a2;
    v31[4] = strlen(a2);
    *(v31 + 2) = a3;
    v4[v10 + 3] = v31;
    *(v4 + 5) = v30 + 1;
    return v29;
  }

  v11 = (v4 + 3);
  v12 = *(v4 + 5);
  do
  {
    v13 = *v11;
    v14 = **v11;
    v15 = *v14;
    if ((v15 - 65) < 0x1A || (v15 - 192) < 0x17)
    {
      if ((v15 - 138) > 0x15 || ((1 << (v15 + 118)) & 0x200015) == 0)
      {
LABEL_35:
        v15 += 32;
        goto LABEL_43;
      }

LABEL_40:
      if (v15 == 159)
      {
        v15 = 255;
      }

      else
      {
        v15 += 16;
      }

      goto LABEL_43;
    }

    if ((v15 - 216) < 7)
    {
      goto LABEL_35;
    }

    if ((v15 - 138) <= 0x15 && ((1 << (v15 + 118)) & 0x200015) != 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    if (v6 == v15)
    {
      v19 = *(v13 + 4);
      if (*(v13 + 4))
      {
        v20 = 0;
        while (1)
        {
          v21 = a2[v20];
          if ((v21 - 65) < 0x1A || (v21 - 192) < 0x17)
          {
            break;
          }

          if ((v21 - 216) < 7)
          {
            goto LABEL_59;
          }

          if ((v21 - 138) <= 0x15 && ((1 << (v21 + 118)) & 0x200015) != 0)
          {
LABEL_64:
            if (v21 == 159)
            {
              v21 = 255;
            }

            else
            {
              v21 += 16;
            }
          }

LABEL_67:
          v25 = v14[v20];
          if ((v25 - 65) >= 0x1A && (v25 - 192) >= 0x17)
          {
            if ((v25 - 216) >= 7)
            {
              if ((v25 - 138) > 0x15 || ((1 << (v25 + 118)) & 0x200015) == 0)
              {
                goto LABEL_81;
              }

LABEL_78:
              if (v25 == 159)
              {
                v25 = 255;
              }

              else
              {
                v25 += 16;
              }

              goto LABEL_81;
            }
          }

          else if ((v25 - 138) <= 0x15 && ((1 << (v25 + 118)) & 0x200015) != 0)
          {
            goto LABEL_78;
          }

          v25 += 32;
LABEL_81:
          if (v21 != v25)
          {
            goto LABEL_85;
          }

          if (v19 == ++v20)
          {
            v20 = *(v13 + 4);
            goto LABEL_87;
          }
        }

        if ((v21 - 138) <= 0x15 && ((1 << (v21 + 118)) & 0x200015) != 0)
        {
          goto LABEL_64;
        }

LABEL_59:
        v21 += 32;
        goto LABEL_67;
      }

      v20 = 0;
LABEL_85:
      if (v20 < v19)
      {
        v27 = v5;
        v28 = malloc_type_calloc(1uLL, 0xF8uLL, v5);
        v5 = v27;
        *v28 = v14;
        v28[4] = v20;
        v28[5] = 1;
        *(v28 + 3) = v13;
        *v13 = &v14[v20];
        *(v13 + 4) = v19 - v20;
        v13 = v28;
        *v11 = v28;
      }

LABEL_87:
      a2 += v20;
      v4 = v13;
      goto LABEL_3;
    }

    ++v11;
    --v12;
  }

  while (v12);
  v30 = *(v4 + 5);
  if (v10 < 0x1C)
  {
    goto LABEL_91;
  }

  return 0;
}

uint64_t find_phrase(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, int a5, unsigned __int8 **a6, void *a7)
{
  v7 = 0;
  if (!a1 || !a3)
  {
    return v7;
  }

  v11 = a4;
  v12 = *a2;
  if (!a5)
  {
    goto LABEL_21;
  }

  if ((v12 - 65) >= 0x1A && (v12 - 192) >= 0x17)
  {
    if ((v12 - 216) >= 7)
    {
      if ((v12 - 138) > 0x15 || ((1 << (v12 + 118)) & 0x200015) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((v12 - 138) <= 0x15 && ((1 << (v12 + 118)) & 0x200015) != 0)
  {
LABEL_18:
    if (v12 == 159)
    {
      LOBYTE(v12) = -1;
    }

    else
    {
      LOBYTE(v12) = v12 + 16;
    }

    goto LABEL_21;
  }

  LOBYTE(v12) = v12 + 32;
LABEL_21:
  v7 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    return v7;
  }

  v15 = 0;
  v16 = a1 + 24;
  while (1)
  {
    v17 = *(v16 + 8 * v15);
    v18 = **v17;
    if (a5)
    {
      if ((v18 - 65) >= 0x1A && (v18 - 192) >= 0x17)
      {
        if ((v18 - 216) >= 7)
        {
          if ((v18 - 138) > 0x15 || ((1 << (v18 + 118)) & 0x200015) == 0)
          {
            goto LABEL_43;
          }

LABEL_40:
          if (v18 == 159)
          {
            LOBYTE(v18) = -1;
          }

          else
          {
            LOBYTE(v18) = v18 + 16;
          }

          goto LABEL_43;
        }
      }

      else if ((v18 - 138) <= 0x15 && ((1 << (v18 + 118)) & 0x200015) != 0)
      {
        goto LABEL_40;
      }

      LOBYTE(v18) = v18 + 32;
    }

LABEL_43:
    if (v12 == v18)
    {
      v22 = *(v17 + 4);
      if (a3 >= v22)
      {
        v23 = 0;
        if (*(v17 + 4))
        {
          while (1)
          {
            v24 = (*v17)[v23];
            if ((v24 - 65) < 0x1A || (v24 - 192) < 0x17)
            {
              break;
            }

            if ((v24 - 216) < 7)
            {
              goto LABEL_57;
            }

            if ((v24 - 138) <= 0x15 && ((1 << (v24 + 118)) & 0x200015) != 0)
            {
LABEL_62:
              if (v24 == 159)
              {
                v24 = 255;
              }

              else
              {
                v24 += 16;
              }
            }

LABEL_65:
            v28 = a2[v23];
            if ((v28 - 65) >= 0x1A && (v28 - 192) >= 0x17)
            {
              if ((v28 - 216) >= 7)
              {
                if ((v28 - 138) > 0x15 || ((1 << (v28 + 118)) & 0x200015) == 0)
                {
                  goto LABEL_79;
                }

LABEL_76:
                if (v28 == 159)
                {
                  v28 = 255;
                }

                else
                {
                  v28 += 16;
                }

                goto LABEL_79;
              }
            }

            else if ((v28 - 138) <= 0x15 && ((1 << (v28 + 118)) & 0x200015) != 0)
            {
              goto LABEL_76;
            }

            v28 += 32;
LABEL_79:
            if (v24 != v28)
            {
              goto LABEL_82;
            }

            if (v22 == ++v23)
            {
              goto LABEL_85;
            }
          }

          if ((v24 - 138) <= 0x15 && ((1 << (v24 + 118)) & 0x200015) != 0)
          {
            goto LABEL_62;
          }

LABEL_57:
          v24 += 32;
          goto LABEL_65;
        }

LABEL_82:
        if (v23 >= v22)
        {
          break;
        }
      }
    }

    if (++v15 == v7)
    {
      return 0;
    }
  }

LABEL_85:
  v30 = &a2[v22];
  if (find_phrase(*(v16 + 8 * v15), &a2[v22], a3 - v22, a4))
  {
    return 1;
  }

  v7 = v17[2];
  if (v7)
  {
    if (v11 && a3 != v22 && isAnyAlpha(*v30))
    {
      return 0;
    }

    if (a6)
    {
      *a6 = v30;
    }

    if (a7)
    {
      *a7 = v17[2];
    }

    return 1;
  }

  return v7;
}

BOOL isAnyAlpha(int a1)
{
  result = 1;
  if (a1 <= 247 && (a1 - 216) >= 0x1F && (a1 - 192) >= 0x17 && (a1 & 0xFFFFFFDF) - 65 >= 0x1A && ((a1 - 131) > 0x1B || ((1 << (a1 + 125)) & 0xA800A81) == 0))
  {
    return a1 == 159;
  }

  return result;
}

BOOL find_partial_phrase(_BOOL8 result, unsigned __int8 *a2, unint64_t a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = 1;
  if (!a3)
  {
    return result;
  }

LABEL_3:
  v5 = *a2;
  if (!a4)
  {
    goto LABEL_23;
  }

  if ((v5 - 65) >= 0x1A && (v5 - 192) >= 0x17)
  {
    if ((v5 - 216) >= 7)
    {
      if ((v5 - 138) > 0x15 || ((1 << (v5 + 118)) & 0x200015) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 - 138) <= 0x15 && ((1 << (v5 + 118)) & 0x200015) != 0)
  {
LABEL_20:
    if (v5 == 159)
    {
      LOBYTE(v5) = -1;
    }

    else
    {
      LOBYTE(v5) = v5 + 16;
    }

    goto LABEL_23;
  }

  LOBYTE(v5) = v5 + 32;
LABEL_23:
  v9 = *(v4 + 5);
  if (!*(v4 + 5))
  {
    return 0;
  }

  v10 = 0;
  v11 = (v4 + 24);
  v12 = v5;
  while (1)
  {
    v4 = v11[v10];
    v13 = *v4;
    v14 = **v4;
    if (!a4)
    {
      goto LABEL_45;
    }

    if ((v14 - 65) < 0x1A || (v14 - 192) < 0x17)
    {
      if ((v14 - 138) > 0x15 || ((1 << (v14 + 118)) & 0x200015) == 0)
      {
LABEL_37:
        LOBYTE(v14) = v14 + 32;
        goto LABEL_45;
      }

LABEL_42:
      if (v14 == 159)
      {
        LOBYTE(v14) = -1;
      }

      else
      {
        LOBYTE(v14) = v14 + 16;
      }

      goto LABEL_45;
    }

    if ((v14 - 216) < 7)
    {
      goto LABEL_37;
    }

    if ((v14 - 138) <= 0x15 && ((1 << (v14 + 118)) & 0x200015) != 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    if (v12 != v14)
    {
      goto LABEL_85;
    }

    v18 = *(v4 + 4);
    if (a3 <= v18)
    {
      break;
    }

    v19 = 0;
    if (*(v4 + 4))
    {
      while (1)
      {
        v20 = *(v13 + v19);
        if ((v20 - 65) < 0x1A || (v20 - 192) < 0x17)
        {
          break;
        }

        if ((v20 - 216) < 7)
        {
          goto LABEL_59;
        }

        if ((v20 - 138) <= 0x15 && ((1 << (v20 + 118)) & 0x200015) != 0)
        {
LABEL_64:
          if (v20 == 159)
          {
            v20 = 255;
          }

          else
          {
            v20 += 16;
          }
        }

LABEL_67:
        v24 = a2[v19];
        if ((v24 - 65) >= 0x1A && (v24 - 192) >= 0x17)
        {
          if ((v24 - 216) >= 7)
          {
            if ((v24 - 138) > 0x15 || ((1 << (v24 + 118)) & 0x200015) == 0)
            {
              goto LABEL_81;
            }

LABEL_78:
            if (v24 == 159)
            {
              v24 = 255;
            }

            else
            {
              v24 += 16;
            }

            goto LABEL_81;
          }
        }

        else if ((v24 - 138) <= 0x15 && ((1 << (v24 + 118)) & 0x200015) != 0)
        {
          goto LABEL_78;
        }

        v24 += 32;
LABEL_81:
        if (v20 != v24)
        {
          goto LABEL_84;
        }

        if (v18 == ++v19)
        {
          goto LABEL_87;
        }
      }

      if ((v20 - 138) <= 0x15 && ((1 << (v20 + 118)) & 0x200015) != 0)
      {
        goto LABEL_64;
      }

LABEL_59:
      v20 += 32;
      goto LABEL_67;
    }

LABEL_84:
    if (v19 >= v18)
    {
LABEL_87:
      a2 += v18;
      a3 -= v18;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_3;
    }

LABEL_85:
    if (++v10 == v9)
    {
      return 0;
    }
  }

  for (i = 0; i != a3; ++i)
  {
    v27 = *(v13 + i);
    if ((v27 - 65) < 0x1A || (v27 - 192) < 0x17)
    {
      if ((v27 - 138) <= 0x15 && ((1 << (v27 + 118)) & 0x200015) != 0)
      {
        goto LABEL_108;
      }

LABEL_103:
      v27 += 32;
      goto LABEL_111;
    }

    if ((v27 - 216) < 7)
    {
      goto LABEL_103;
    }

    if ((v27 - 138) <= 0x15 && ((1 << (v27 + 118)) & 0x200015) != 0)
    {
LABEL_108:
      if (v27 == 159)
      {
        v27 = 255;
      }

      else
      {
        v27 += 16;
      }
    }

LABEL_111:
    v31 = a2[i];
    if ((v31 - 65) < 0x1A || (v31 - 192) < 0x17)
    {
      if ((v31 - 138) > 0x15 || ((1 << (v31 + 118)) & 0x200015) == 0)
      {
LABEL_119:
        v31 += 32;
        goto LABEL_125;
      }

LABEL_122:
      if (v31 == 159)
      {
        v31 = 255;
      }

      else
      {
        v31 += 16;
      }

      goto LABEL_125;
    }

    if ((v31 - 216) < 7)
    {
      goto LABEL_119;
    }

    if ((v31 - 138) <= 0x15 && ((1 << (v31 + 118)) & 0x200015) != 0)
    {
      goto LABEL_122;
    }

LABEL_125:
    if (v27 != v31)
    {
      return i >= a3;
    }
  }

  i = a3;
  return i >= a3;
}

uint64_t print_node(const char **a1, uint64_t a2)
{
  if (a2)
  {
    ++print_node_num_nodes;
    v4 = a2;
    do
    {
      putchar(32);
      --v4;
    }

    while (v4);
  }

  else
  {
    print_node_num_nodes = 1;
  }

  printf("node %p ", a1);
  if (*a1 && *(a1 + 4))
  {
    printf(" phrase <%.*s> ", *(a1 + 4), *a1);
  }

  if (a1[2])
  {
    printf("suggestion <%p> ", a1[2]);
  }

  if (!*(a1 + 5))
  {
    result = putchar(10);
    if (a2)
    {
      return result;
    }

    return printf("%lu total nodes\n", print_node_num_nodes);
  }

  result = printf("%u children\n", *(a1 + 5));
  if (*(a1 + 5))
  {
    v6 = 0;
    do
    {
      result = print_node(a1[v6++ + 3], a2 + 1);
    }

    while (v6 < *(a1 + 5));
  }

  if (!a2)
  {
    return printf("%lu total nodes\n", print_node_num_nodes);
  }

  return result;
}

unsigned __int8 **create_phrase_root_from_strings(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  if (*a1)
  {
    do
    {
      v3 = strlen(a1);
      v4 = &a1[v3 + 1];
      if (!*v4)
      {
        break;
      }

      v5 = &v4[strlen(&a1[v3 + 1])];
      add_phrase(v2, a1, v4);
      a1 = (v5 + 1);
    }

    while (v5[1]);
  }

  return v2;
}

unsigned __int8 *next_phrase(unsigned __int8 *a1, unint64_t a2, uint64_t a3, unsigned __int8 **a4, void *a5)
{
  if (a3 && a2)
  {
    v10 = a1;
    v11 = a2;
    while (!find_phrase(a3, v10, v11, 1, 1, a4, a5))
    {
      ++v10;
      if (!--v11)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (a4)
    {
      *a4 = &a1[a2];
    }

    v10 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v10;
}

unsigned __int8 **pinyin_root()
{
  v0 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  phrases_3 = v0;
  v1 = "a";
  v2 = &off_1E8407388;
  do
  {
    add_phrase(v0, v1, *(v2 - 2));
    v3 = *v2;
    v2 += 2;
    v1 = v3;
  }

  while (v3);
  return v0;
}

unsigned __int8 **jyutping_root()
{
  v0 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  phrases_2 = v0;
  v1 = "aa";
  v2 = &off_1E8408D28;
  do
  {
    add_phrase(v0, v1, *(v2 - 2));
    v3 = *v2;
    v2 += 2;
    v1 = v3;
  }

  while (v3);
  return v0;
}

unsigned __int8 **pinyin_root_extended(int a1)
{
  v1 = &phrases_2;
  if (a1 != 1)
  {
    v1 = &phrases_3;
  }

  v2 = *v1;
  if (v2)
  {
    return v2;
  }

  if (a1 == 1)
  {
    return jyutping_root();
  }

  return pinyin_root();
}

unsigned __int8 *next_pinyin(unsigned __int8 *a1, unint64_t a2, int a3, int a4, unsigned __int8 **a5, _DWORD *a6)
{
  v11 = pinyin_root_extended(a3);
  if (!v11 || (v17 = 0, v18 = 0, !find_phrase(v11, a1, a2, 0, 0, &v17, &v18)) || (v12 = v17, !a4) && &a1[a2] > v17 && is_interjection(a1, v17 - a1))
  {
    if (a5)
    {
      *a5 = a1;
    }

    a1 = 0;
    if (a6)
    {
      v13 = 0;
      goto LABEL_19;
    }

    return a1;
  }

  v13 = v18;
  v14 = MEMORY[0x1E69E9830];
  while (1)
  {
    v15 = *v12;
    if (v15 < 0)
    {
      break;
    }

    if ((*(v14 + 4 * v15 + 60) & 0x2000) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    v17 = ++v12;
  }

  if (__maskrune(*v12, 0x2000uLL))
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a5)
  {
    *a5 = v12;
  }

  if (a6)
  {
LABEL_19:
    *a6 = v13;
  }

  return a1;
}

BOOL is_interjection(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v6 = a1[1];
    if ((v6 - 65) >= 0x1A && (v6 - 192) >= 0x17)
    {
      if ((v6 - 216) >= 7)
      {
        if ((v6 - 138) <= 0x15 && ((1 << (v6 + 118)) & 0x200015) != 0)
        {
          return 0;
        }

LABEL_30:
        if (v6 != 111)
        {
          return 0;
        }

        v9 = *a1;
        if ((v9 - 65) < 0x1A || (v9 - 192) < 0x17)
        {
          result = 1;
          if ((v9 - 138) <= 0x15 && ((1 << (v9 + 118)) & 0x200015) != 0)
          {
            return 0;
          }

          if (v9 == 76)
          {
            return result;
          }
        }

        else if ((v9 - 216) >= 7)
        {
          if ((v9 - 108) <= 0x33)
          {
            if (((1 << (v9 - 108)) & 0x8000540000000) != 0)
            {
              return 0;
            }

            if (v9 == 108)
            {
              return 1;
            }
          }

          return v9 == 121;
        }

        v9 += 32;
        return v9 == 121;
      }
    }

    else if ((v6 - 138) <= 0x15 && ((1 << (v6 + 118)) & 0x200015) != 0)
    {
      return 0;
    }

    v6 += 32;
    goto LABEL_30;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v2 = *a1;
  if ((v2 - 65) >= 0x1A && (v2 - 192) >= 0x17)
  {
    if ((v2 - 216) >= 7)
    {
      if ((v2 - 97) <= 0x3E)
      {
        if (((1 << (v2 - 97)) & 0x40002A0000000000) != 0)
        {
          return 0;
        }

        if (v2 == 97)
        {
          return 1;
        }
      }

      return v2 == 111;
    }

LABEL_25:
    v2 += 32;
    return v2 == 111;
  }

  result = 1;
  if ((v2 - 138) <= 0x15 && ((1 << (v2 + 118)) & 0x200015) != 0)
  {
    return 0;
  }

  if (v2 != 65)
  {
    goto LABEL_25;
  }

  return result;
}

unsigned __int8 **is_partial_pinyin(unsigned __int8 *a1, unint64_t a2, int a3, _DWORD *a4)
{
  result = pinyin_root_extended(a3);
  if (result)
  {
    result = find_partial_phrase(result, a1, a2, 0);
    if (result)
    {
      if (a4)
      {
        *a4 = 255;
      }

      return 1;
    }
  }

  return result;
}

uint64_t internalFromExternalZhuyin(unsigned int a1)
{
  if (a1 - 12549 > 0x24)
  {
    if (a1 - 711 > 0x12)
    {
LABEL_7:
      if (a1 >= 0x100)
      {
        return 39;
      }

      else
      {
        return a1;
      }
    }

    else
    {
      v2 = 0;
      while (toneCharacters[v2] != a1)
      {
        if (++v2 == 5)
        {
          goto LABEL_7;
        }
      }

      return (v2 + 49);
    }
  }

  else
  {
    return internalLetters[a1 - 12549];
  }
}

uint64_t externalZhuyinFromInternal(uint64_t result)
{
  for (i = 0; i != 37; ++i)
  {
    if (internalLetters[i] == result)
    {
      LOWORD(result) = i + 12549;
      return result;
    }
  }

  if ((result - 49) <= 4)
  {
    LOWORD(result) = toneCharacters[(result - 49)];
  }

  return result;
}

uint64_t add_zhuyin(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v26 = 0;
  v27 = 0;
  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      while (1)
      {
        ++v5;
        v7 = *v4;
        if (v7 != 203)
        {
          break;
        }

        v8 = 1;
LABEL_8:
        v4 += v8 + 1;
      }

      if (v7 == 227 && v4[1] == 132)
      {
        v8 = 2;
        goto LABEL_8;
      }

      v4 = a2[++v6];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v5 = 0;
LABEL_12:
  result = malloc_type_malloc(v5, 0xA27894E3uLL);
  add_zhuyin_internal_syllables = result;
  v10 = *a2;
  if (!*a2)
  {
    return result;
  }

  v11 = result;
  v12 = 0;
  do
  {
    v13 = v11++;
    v14 = 255;
    while (1)
    {
      v15 = *v10;
      if (v15 != 203)
      {
        break;
      }

      v16 = 576;
      v17 = 1;
LABEL_20:
      v18 = &v10[v17];
      v19 = *v18;
      v10 = v18 + 1;
      v20 = internalFromExternalZhuyin(v16 + v19);
      if ((v20 - 49) >= 5)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if ((v20 - 49) < 5)
      {
        v14 = (1 << (v20 - 49));
      }

      *(v11++ - 1) = v21;
    }

    if (v15 == 227 && v10[1] == 132)
    {
      v16 = 12416;
      v17 = 2;
      goto LABEL_20;
    }

    *(v11 - 1) = 0;
    v22 = strlen(v13);
    phrase = find_phrase(a1, v13, v22, 0, 0, &v26, &v27);
    v24 = &v13[v22] != v26 || phrase == 0;
    v25 = v27;
    if (v24)
    {
      v25 = 0;
    }

    result = add_phrase(a1, v13, (v25 | v14));
    v10 = a2[++v12];
  }

  while (v10);
  return result;
}

unsigned __int8 **zhuyin_root1()
{
  v0 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  phrases_0 = v0;
  add_zhuyin(v0, zhuyin_syllables1);
  return v0;
}

unsigned __int8 **zhuyin_root2()
{
  v0 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  phrases_1 = v0;
  add_zhuyin(v0, zhuyin_syllables2);
  return v0;
}

unsigned __int8 *next_zhuyin(unsigned __int8 *a1, unint64_t a2, int a3, int a4, void *a5, _DWORD *a6)
{
  v12 = phrases_0;
  v13 = phrases_1;
  if (phrases_0)
  {
    if (phrases_1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
    phrases_0 = v12;
    add_zhuyin(v12, zhuyin_syllables1);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  phrases_1 = v13;
  add_zhuyin(v13, zhuyin_syllables2);
LABEL_3:
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v23 = 0;
    v24 = 0;
    if (find_phrase(v12, a1, a2, 0, 0, &v23, &v24) || find_phrase(v13, a1, a2, 0, 0, &v23, &v24))
    {
      v15 = v23;
      v16 = &a1[a2];
      if (a3 || v16 <= v23)
      {
        if (v16 <= v23)
        {
          goto LABEL_28;
        }
      }

      else if (is_interjection(a1, v23 - a1))
      {
        goto LABEL_28;
      }

      if (*v15 - 49 <= 4)
      {
        v17 = v24;
        if (a4 || (v24 & (1 << (*v15 - 49))) != 0)
        {
          v18 = v15 + 1;
          v19 = MEMORY[0x1E69E9830];
          do
          {
            v23 = v18;
            v20 = *v18;
            if (v20 < 0)
            {
              v21 = __maskrune(*v18, 0x2000uLL);
            }

            else
            {
              v21 = *(v19 + 4 * v20 + 60) & 0x2000;
            }

            ++v18;
          }

          while (v21);
          if (a5)
          {
            *a5 = v18 - 1;
          }

          if (!a6)
          {
            return a1;
          }

LABEL_32:
          *a6 = v17;
          return a1;
        }
      }
    }
  }

LABEL_28:
  if (a5)
  {
    *a5 = a1;
  }

  a1 = 0;
  if (a6)
  {
    v17 = 0;
    goto LABEL_32;
  }

  return a1;
}

BOOL is_partial_zhuyin(unsigned __int8 *a1, unint64_t a2, _DWORD *a3)
{
  v6 = phrases_0;
  v7 = phrases_1;
  if (phrases_0)
  {
    if (phrases_1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
    phrases_0 = v6;
    add_zhuyin(v6, zhuyin_syllables1);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1070040A09EEE56uLL);
  phrases_1 = v7;
  add_zhuyin(v7, zhuyin_syllables2);
LABEL_3:
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  partial_phrase = find_partial_phrase(v6, a1, a2, 0);
  if (partial_phrase || (result = find_partial_phrase(v7, a1, a2, 0)))
  {
    if (a3)
    {
      *a3 = 255;
    }

    return 1;
  }

  return result;
}

void sub_1D2BD732C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t findZhuyin(unint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 **a5, unsigned __int8 **a6, unsigned __int8 **a7, void *a8, void *a9, void *a10, _BYTE *a11, void *a12)
{
  v14 = 0;
  v43 = 0;
  v15 = MEMORY[0x1E69E9830];
  do
  {
    v16 = *(a1 + v14);
    if (v16 < 0)
    {
      v17 = __maskrune(*(a1 + v14), 0x2000uLL);
    }

    else
    {
      v17 = *(v15 + 4 * v16 + 60) & 0x2000;
    }

    ++v14;
  }

  while (v17);
  v18 = (a1 + v14 - 1);
  v44 = v18;
  v19 = (a1 + a2);
  if (v18 >= a1 + a2)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v21 = 0;
    v30 = 0;
    v29 = 0;
    if (a12)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v40 = 0;
  while (1)
  {
    v26 = v24;
    v27 = v23;
    v28 = v22;
    v29 = v20;
    v24 = next_zhuyin(v18, v19 - v18, a3, a4, &v44, &v43 + 1);
    v18 = v44;
    if (v24)
    {
      if (a12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!is_partial_zhuyin(v44, v19 - v44, &v43))
      {
        goto LABEL_23;
      }

      v24 = v44;
      v44 = v19;
      v40 = 1;
      v18 = v19;
      if (a12)
      {
LABEL_10:
        a12[v29] = v18 - v24;
      }
    }

    if (!v24 || v24 < a1 || v18 < a1)
    {
      break;
    }

    v20 = v29 + 1;
    v21 = v28;
    v22 = v27;
    v23 = v26;
    v25 = v18;
    if (v18 >= v19)
    {
      goto LABEL_22;
    }
  }

  v18 = v25;
  v24 = v26;
  v26 = v27;
  v27 = v28;
  v28 = v21;
LABEL_22:
  v21 = v28;
  v28 = v27;
  v27 = v26;
  ++v29;
  v25 = v18;
  v26 = v24;
LABEL_23:
  v30 = v40;
  if (a12)
  {
LABEL_24:
    *a12 = *a12 + v14 - 1;
  }

LABEL_25:
  if (v25)
  {
    v31 = v26 == 0;
  }

  else
  {
    v31 = 1;
  }

  result = !v31;
  if (!v31)
  {
    if (a5)
    {
      v33 = &v21[-a1];
      if (!v21)
      {
        v33 = 0;
      }

      *a5 = v33;
    }

    if (a6)
    {
      v34 = &v28[-a1];
      if (!v28)
      {
        v34 = 0;
      }

      *a6 = v34;
    }

    if (a7)
    {
      v35 = &v27[-a1];
      if (!v27)
      {
        v35 = 0;
      }

      *a7 = v35;
    }

    if (a8)
    {
      *a8 = &v26[-a1];
    }

    if (a9)
    {
      *a9 = &v25[-a1];
    }

    if (a10)
    {
      *a10 = v29;
    }

    if (a11)
    {
      *a11 = v30 & 1;
    }
  }

  return result;
}

void *modificationArrayFilteredByMaskAndLength(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v26 + 1) + 8 * v9) syllableRange];
      if (v11 + v10 + 7 < a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (!a2)
    {
      goto LABEL_21;
    }
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if (((1 << [v17 modificationType]) & a2) == 0)
        {
          v18 = [v17 syllableRange];
          if (v19 + v18 + 7 >= a3)
          {
            [v12 addObject:v17];
          }
        }
      }

      v14 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v5 = v12;
LABEL_21:
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _NSSpellingDictDirectoryPath2()
{
  v0 = NSUserName();
  v1 = [(NSString *)NSHomeDirectoryForUser(v0) stringByAppendingPathComponent:@"Library"];

  return [(NSString *)v1 stringByAppendingPathComponent:@"Spelling"];
}

BOOL adjacentMatch(int a1, int a2, int a3)
{
  v3 = a2 - 97;
  if ((a2 - 97) > 0x19)
  {
    if (a3 != 517)
    {
      return 0;
    }

    v3 = a2 - 208;
    if ((a2 - 208) > 0x1F)
    {
      return 0;
    }

    v4 = &adjacentMatchesCyrillic;
  }

  else
  {
    v4 = &adjacentMatches;
  }

  v5 = &v4[24 * v3];
  return *v5 == a1 || *(v5 + 1) == a1 || *(v5 + 2) == a1 || *(v5 + 3) == a1 || *(v5 + 4) == a1 || *(v5 + 5) == a1;
}

uint64_t restrictedEditDistance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2 + 1;
  v9 = a4 + 1;
  v10 = malloc_type_calloc((a4 + 1) * (a2 + 1), 8uLL, 0x100004000313F17uLL);
  if (!v10)
  {
    return a4 + a2;
  }

  v11 = 0;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = vdupq_n_s64(v12 - 1);
  v14 = xmmword_1D2BF7920;
  v15 = vdupq_n_s64(2uLL);
  v16 = v10;
  do
  {
    v17 = vmovn_s64(vcgeq_u64(v13, v14));
    if (v17.i8[0])
    {
      *v16 = v11;
    }

    if (v17.i8[4])
    {
      v16[a4 + 1] = v11 + 1;
    }

    v11 += 2;
    v14 = vaddq_s64(v14, v15);
    v16 += 2 * a4 + 2;
  }

  while (((v12 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
  v18 = 0;
  if (v9 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = vdupq_n_s64(v19 - 1);
  v21 = xmmword_1D2BF7920;
  v22 = vdupq_n_s64(2uLL);
  do
  {
    v23 = vmovn_s64(vcgeq_u64(v20, v21));
    if (v23.i8[0])
    {
      v10[v18] = v18;
    }

    if (v23.i8[4])
    {
      v10[v18 + 1] = v18 + 1;
    }

    v18 += 2;
    v21 = vaddq_s64(v21, v22);
  }

  while (((v19 + 1) & 0xFFFFFFFFFFFFFFFELL) != v18);
  if (a2)
  {
    v24 = 0;
    v25 = (v10 + 1);
    v26 = 8 * v9;
    do
    {
      if (a4)
      {
        v27 = 0;
        v28 = v24 + 1;
        v29 = v10[(v24 + 1) * v9];
        v30 = &v25[v26 * v24];
        do
        {
          v31 = *(a1 + v24);
          v32 = *(a3 + v27);
          v33 = *(v30 - 1);
          v34 = *v30;
          if (v31 != v32)
          {
            ++v33;
          }

          if (v34 + 1 < v33)
          {
            v33 = v34 + 1;
          }

          if (v29 + 1 < v33)
          {
            ++v29;
          }

          else
          {
            v29 = v33;
          }

          if (v24 && v27 && v31 == *(a3 + v27 - 1) && *(a1 + v24 - 1) == v32 && *(&v10[v27 - 1] + v26 * (v24 - 1)) + (v31 != v32) < v29)
          {
            v29 = *(&v10[v27 - 1] + v26 * (v24 - 1)) + (v31 != v32);
          }

          *&v25[8 * v27 + v26 * (v24 + 1)] = v29;
          v30 += 8;
          ++v27;
        }

        while (a4 != v27);
      }

      else
      {
        v28 = v24 + 1;
      }

      v24 = v28;
    }

    while (v28 != a2);
  }

  v35 = v10[v9 * a2 + a4];
  free(v10);
  return v35;
}

uint64_t effectiveEditDistance(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 != 3 || a4 - 32 < 0xFFFFFFFFFFFFFFE4;
  if (a4 == 3 && a2 == 4)
  {
    return 3;
  }

  if (a4 - 3 > 0x1C)
  {
    return 3;
  }

  if (a2 - 3 > 0x1C)
  {
    return 3;
  }

  if (!v5)
  {
    return 3;
  }

  if (a2 + 2 < a4)
  {
    return 3;
  }

  if (a4 + 2 < a2)
  {
    return 3;
  }

  v7 = *(a3 + a4 - 1);
  if (v7 == 46)
  {
    return 3;
  }

  v8 = a4 + 1 == a2 && *(a1 + a2 - 1) == 115;
  v9 = !v8 || v7 == 115;
  v10 = v9;
  if (a4 + 2 == a2)
  {
    v11 = *(a1 + a2 - 2);
    if (v11 == 44 || v11 == 59)
    {
      return 3;
    }
  }

  if (!v10)
  {
    return 3;
  }

  else
  {
    return restrictedEditDistance(a1, a2, a3, a4);
  }
}

uint64_t restrictedUTF16EditDistance(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v8 = a2 + 1;
  v9 = a4 + 1;
  v10 = malloc_type_calloc((a4 + 1) * (a2 + 1), 8uLL, 0x100004000313F17uLL);
  if (!v10)
  {
    return a4 + a2;
  }

  v11 = 0;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = vdupq_n_s64(v12 - 1);
  v14 = xmmword_1D2BF7920;
  v15 = vdupq_n_s64(2uLL);
  v16 = v10;
  do
  {
    v17 = vmovn_s64(vcgeq_u64(v13, v14));
    if (v17.i8[0])
    {
      *v16 = v11;
    }

    if (v17.i8[4])
    {
      v16[a4 + 1] = v11 + 1;
    }

    v11 += 2;
    v14 = vaddq_s64(v14, v15);
    v16 += 2 * a4 + 2;
  }

  while (((v12 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
  v18 = 0;
  if (v9 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = vdupq_n_s64(v19 - 1);
  v21 = xmmword_1D2BF7920;
  v22 = vdupq_n_s64(2uLL);
  do
  {
    v23 = vmovn_s64(vcgeq_u64(v20, v21));
    if (v23.i8[0])
    {
      v10[v18] = v18;
    }

    if (v23.i8[4])
    {
      v10[v18 + 1] = v18 + 1;
    }

    v18 += 2;
    v21 = vaddq_s64(v21, v22);
  }

  while (((v19 + 1) & 0xFFFFFFFFFFFFFFFELL) != v18);
  if (a2)
  {
    v24 = 0;
    v25 = (v10 + 1);
    v26 = 8 * v9;
    do
    {
      if (a4)
      {
        v27 = 0;
        v28 = *(a1 + 2 * v24);
        v29 = v24 + 1;
        v30 = v10[(v24 + 1) * v9];
        v31 = v10 + v26 * (v24 - 1) - 8;
        v32 = &v25[v26 * v24];
        v33 = a3;
        v34 = a3;
        do
        {
          v36 = *v34++;
          v35 = v36;
          v37 = v28 != v36;
          v38 = *(v32 - 1);
          v39 = *v32;
          if (v28 != v36)
          {
            ++v38;
          }

          if (v39 + 1 < v38)
          {
            v38 = v39 + 1;
          }

          if (v30 + 1 < v38)
          {
            ++v30;
          }

          else
          {
            v30 = v38;
          }

          if (v24 && v27 && v28 == *(v33 - 1) && *(a1 + 2 * (v24 - 1)) == v35 && *(v31 + 8 * v27) + v37 < v30)
          {
            v30 = *(v31 + 8 * v27) + v37;
          }

          *&v25[8 * v27 + v26 * (v24 + 1)] = v30;
          v32 += 8;
          v33 = v34;
          ++v27;
        }

        while (a4 != v27);
      }

      else
      {
        v29 = v24 + 1;
      }

      v24 = v29;
    }

    while (v29 != a2);
  }

  v40 = v10[v9 * a2 + a4];
  free(v10);
  return v40;
}

uint64_t effectiveUTF16EditDistance(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v5 = a2 != 3 || a4 - 32 < 0xFFFFFFFFFFFFFFE4;
  if (a4 == 3 && a2 == 4)
  {
    return 3;
  }

  if (a4 - 3 > 0x1C)
  {
    return 3;
  }

  if (a2 - 3 > 0x1C)
  {
    return 3;
  }

  if (!v5)
  {
    return 3;
  }

  if (a2 + 2 < a4)
  {
    return 3;
  }

  if (a4 + 2 < a2)
  {
    return 3;
  }

  v7 = a3[a4 - 1];
  if (v7 == 46)
  {
    return 3;
  }

  v8 = a1 + 2 * a2;
  v9 = a4 + 1 == a2 && *(v8 - 2) == 115;
  v10 = !v9 || v7 == 115;
  v11 = v10;
  if (a4 + 2 == a2)
  {
    v12 = *(v8 - 4);
    if (v12 == 44 || v12 == 59)
    {
      return 3;
    }
  }

  if (!v11)
  {
    return 3;
  }

  else
  {
    return restrictedUTF16EditDistance(a1, a2, a3, a4);
  }
}

uint64_t toLowerX_1(uint64_t result, int a2)
{
  v2 = result - 65;
  if (a2 <= 1279)
  {
    if (a2 == 514)
    {
      if (v2 >= 0x1A && (result - 192) >= 0x17 && ((result - 161) > 0x3D || ((1 << (result + 95)) & 0x3F80000000006F35) == 0))
      {
        return result;
      }

      if (result - 161) < 0xF && ((0x6F35u >> (result + 95)))
      {
        return dword_1D2BFD2D8[(result - 161)];
      }

      return (result + 32);
    }

    if (a2 == 517)
    {
      if (v2 >= 0x1A && (result - 176) > 0x1F)
      {
        if ((result & 0xFFFFFFFE) != 0xAE && (result - 161) >= 0xC)
        {
          return result;
        }

        else
        {
          return (result + 80);
        }
      }

      return (result + 32);
    }

LABEL_18:
    if (v2 >= 0x1A)
    {
      return result;
    }

    else
    {
      return (result + 32);
    }
  }

  if (a2 != 1284)
  {
    if (a2 != 1280)
    {
      goto LABEL_18;
    }

    if (v2 >= 0x1A && (result - 192) >= 0x17)
    {
      if ((result - 216) < 7)
      {
        return (result + 32);
      }

      goto LABEL_44;
    }

    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return (result + 32);
    }

LABEL_46:
    if (result == 159)
    {
      return 255;
    }

    else
    {
      return (result + 16);
    }
  }

  if (v2 < 0x1A || (result - 192) < 0x17)
  {
    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      if (result == 73)
      {
        return 253;
      }

      return (result + 32);
    }

    goto LABEL_46;
  }

  if (result <= 215)
  {
LABEL_44:
    if ((result - 138) > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  if ((result - 216) < 5)
  {
    return (result + 32);
  }

  if (result == 221)
  {
    return 105;
  }

  if (result == 222)
  {
    return (result + 32);
  }

  return result;
}

uint64_t removeDiacriticsX_0(uint64_t result, int a2)
{
  if (a2 == 514)
  {
    if (result < 161)
    {
      return result;
    }

    if (result > 0xF7 || (result - 216) < 0x1F || (result - 192) < 0x17 || (result & 0x7FFFFFDF) - 65 < 0x1A)
    {
      if (result == 161)
      {
        return 65;
      }
    }

    else
    {
      if (result - 161 > 0x1E)
      {
        return result;
      }

      if (((1 << (result + 95)) & 0x6F356F34) == 0)
      {
        if (result == 161)
        {
          return 65;
        }

        return result;
      }
    }

    if (result < 0xA6)
    {
      return 76;
    }

    if (result < 0xAB)
    {
      return 83;
    }

    if (result == 171)
    {
      return 84;
    }

    if (result < 0xB0)
    {
      return 90;
    }

    if (result == 177)
    {
      return 97;
    }

    if (result < 0xB6)
    {
      return 108;
    }

    if (result < 0xBB)
    {
      return 115;
    }

    if (result == 187)
    {
      return 116;
    }

    if (result < 0xC0)
    {
      return 122;
    }

    if (result == 192)
    {
      return 82;
    }

    if (result < 0xC5)
    {
      return 65;
    }

    if (result == 197)
    {
      return 76;
    }

    if (result >= 0xC9)
    {
      if (result < 0xCD)
      {
        return 69;
      }

      if (result < 0xCF)
      {
        return 73;
      }

      if (result == 208)
      {
        return 68;
      }

      if (result < 0xD3)
      {
        return 78;
      }

      if (result < 0xD7)
      {
        return 79;
      }

      if (result == 216)
      {
        return 82;
      }

      v3 = result - 221;
      if (result < 0xDD)
      {
        return 85;
      }

      if (v3 < 4)
      {
        return dword_1D2BF7A40[v3];
      }

      if (result < 0xE5)
      {
        return 65;
      }

      if (result == 229)
      {
        return 76;
      }

      if (result >= 0xE9)
      {
        if (result < 0xED)
        {
          return 69;
        }

        if (result < 0xEF)
        {
          return 73;
        }

        if (result == 240)
        {
          return 68;
        }

        if (result < 0xF3)
        {
          return 78;
        }

        if (result < 0xF7)
        {
          return 79;
        }

        if (result == 248)
        {
          return 82;
        }

        if (result >= 0xFD)
        {
          if (result == 254)
          {
            v4 = 84;
          }

          else
          {
            v4 = 255;
          }

          if (result == 253)
          {
            return 89;
          }

          else
          {
            return v4;
          }
        }

        return 85;
      }
    }

    return 67;
  }

  if (a2 != 1284 && a2 != 1280 || result < 193)
  {
    return result;
  }

  if (result < 0xC6)
  {
    return 65;
  }

  if (result == 199)
  {
    return 67;
  }

  v2 = result & 0x7FFFFFFC;
  if ((result & 0x7FFFFFFC) == 0xC8)
  {
    return 69;
  }

  if (v2 == 204)
  {
    return 73;
  }

  if (result - 209) < 8 && ((0xBFu >> (result + 47)))
  {
    return dword_1D2BFD314[(result - 209)];
  }

  if ((result - 217) < 4)
  {
    return 85;
  }

  if (result == 221)
  {
    return 89;
  }

  if ((result - 224) < 6)
  {
    return 97;
  }

  if (result == 231)
  {
    return 99;
  }

  if (v2 == 232)
  {
    return 101;
  }

  if (v2 == 236)
  {
    return 105;
  }

  if (result - 241) < 8 && ((0xBFu >> (result + 15)))
  {
    return dword_1D2BFD334[(result - 241)];
  }

  if ((result - 249) < 4)
  {
    return 117;
  }

  if ((result & 0x7FFFFFFD) == 0xFD)
  {
    return 121;
  }

  return result;
}

uint64_t toUpperX_0(uint64_t result, int a2)
{
  v2 = result - 97;
  if (a2 > 1279)
  {
    if (a2 == 1284)
    {
      if ((result - 223) < 0x18 || result > 247 || v2 < 0x1A)
      {
        if (result <= 157)
        {
          if (result == 105)
          {
            return 221;
          }

          if (result != 154 && result != 156)
          {
            return (result - 32);
          }
        }

        else
        {
          if (result > 252)
          {
            if (result == 253)
            {
              return 73;
            }

            if (result == 255)
            {
              return 159;
            }

            return (result - 32);
          }

          if (result != 158)
          {
            if (result == 223)
            {
              return result;
            }

            return (result - 32);
          }
        }

        return (result - 16);
      }
    }

    else
    {
      if (a2 != 1280)
      {
        goto LABEL_25;
      }

      if ((result - 223) < 0x18 || result > 247 || v2 < 0x1A)
      {
        if ((result - 154) > 4 || ((1 << (result + 102)) & 0x15) == 0)
        {
          if (result == 255)
          {
            v4 = 159;
          }

          else
          {
            v4 = result - 32;
          }

          if (result == 223)
          {
            return 223;
          }

          else
          {
            return v4;
          }
        }

        return (result - 16);
      }
    }

    if ((result - 154) > 4 || ((1 << (result + 102)) & 0x15) == 0)
    {
      return result;
    }

    return (result - 16);
  }

  if (a2 != 514)
  {
    if (a2 == 517)
    {
      if (v2 >= 0x1A && (result - 208) > 0x1F)
      {
        if ((result - 241) >= 0xC && result <= 253)
        {
          return result;
        }

        else
        {
          return (result - 80);
        }
      }

      return (result - 32);
    }

LABEL_25:
    if (v2 >= 0x1A)
    {
      return result;
    }

    else
    {
      return (result - 32);
    }
  }

  if (v2 < 0x1A || (result - 223) < 0x18 || (result - 177) <= 0xE && ((1 << (result + 79)) & 0x6F35) != 0 || (result - 248) < 7)
  {
    if (result - 177) < 0xF && ((0x6F35u >> (result + 79)))
    {
      return dword_1D2BFD354[(result - 177)];
    }

    return (result - 32);
  }

  return result;
}

void sub_1D2BE4048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t findPinyin(unsigned __int8 *a1, uint64_t a2, int a3, int a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, _BYTE *a12, uint64_t *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v21 = 0;
  v22 = a17;
  v23 = a13;
  v87 = 0;
  v86 = 0;
  v24 = MEMORY[0x1E69E9830];
  do
  {
    v25 = a1[v21];
    if (v25 < 0)
    {
      v26 = __maskrune(a1[v21], 0x2000uLL);
    }

    else
    {
      v26 = *(v24 + 4 * v25 + 60) & 0x2000;
    }

    ++v21;
  }

  while (v26);
  v84 = a4;
  v27 = &a1[v21 - 1];
  v88 = 0;
  v89[0] = v27;
  v28 = &a1[a2];
  v76 = a1;
  v82 = &a1[a2];
  if (v27 >= &a1[a2])
  {
    v27 = 0;
    v33 = 0;
    v38 = 0;
    v39 = 0;
    v57 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v71 = 0;
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v75 = 0;
    v29 = 0;
    v30 = 0;
    v80 = 0;
    v81 = 0;
    v74 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v71 = 0;
    v36 = a3;
    v37 = a18;
    while (1)
    {
      v38 = v33;
      v39 = v32;
      v40 = v31;
      v79 = v30;
      v78 = v29;
      pinyin = next_pinyin(v27, v28 - v27, v36, v84, v89, &v87 + 1);
      if (pinyin)
      {
        v33 = pinyin;
        if (v37)
        {
          v37[v81] = v89[0] - pinyin;
        }

        v80 += HIDWORD(v87);
        ++v81;
      }

      else
      {
        v33 = v89[0];
        if (*v89[0] == 127)
        {
          ++v89[0];
          if (v37)
          {
            v37[v81] = 1;
          }

          ++v81;
        }

        else if (is_partial_pinyin(v89[0], v28 - v89[0], v36, &v86))
        {
          v33 = v89[0];
          v89[0] = v28;
          if (v37)
          {
            v37[v81] = v28 - v33;
          }

          v80 += v86;
          ++v81;
          v71 = 1;
        }

        else
        {
          v33 = 0;
        }
      }

      v77 = v40;
      v42 = 0;
      v43 = 1;
      do
      {
        v44 = v43;
        if (v35 && !v33 && v38)
        {
          if (v35 > &v38[v42 + 1] && v38 == next_pinyin(v38, &v35[-v42 - 1] - v38, a3, v84, &v88, &v87) && (v89[0] = v88, v45 = next_pinyin(v88, v82 - v88, a3, v84, v89, &v87 + 1), v46 = v89[0], v89[0] > v35))
          {
            v33 = v45;
            if (v45)
            {
              if (a18)
              {
                v47 = &a18[v81];
                *(v47 - 1) = v45 - v38;
                *v47 = v46 - v45;
              }

              v80 = v80 - v79 + (HIDWORD(v87) + v87);
              ++v81;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        v43 = 0;
        v42 = 1;
      }

      while ((v44 & 1) != 0);
      v48 = 0;
      v49 = 1;
      v36 = a3;
      do
      {
        v50 = v49;
        if (v34 && !v33 && v39)
        {
          if (v34 > &v39[v48 + 1] && v39 == next_pinyin(v39, v34 - 1 - v48 - v39, v36, v84, &v88, &v87))
          {
            v85 = 0;
            v51 = next_pinyin(v88, v82 - v88, v36, v84, &v88, &v85);
            if (v51 && (v52 = v36, v53 = v51, v89[0] = v88, v54 = next_pinyin(v88, v82 - v88, v52, v84, v89, &v87 + 1), v55 = v89[0], v89[0] > v35))
            {
              v33 = v54;
              if (v54)
              {
                if (a18)
                {
                  v56 = &a18[v81];
                  *(v56 - 2) = v53 - v39;
                  *(v56 - 1) = v54 - v53;
                  *v56 = v55 - v54;
                }

                ++v81;
                v80 = v80 - (v78 + v79) + (v85 + v87 + HIDWORD(v87));
              }
            }

            else
            {
              v33 = 0;
            }

            v36 = a3;
          }

          else
          {
            v33 = 0;
          }
        }

        v49 = 0;
        v48 = 1;
      }

      while ((v50 & 1) != 0);
      if (!v33)
      {
        break;
      }

      v37 = a18;
      v28 = v82;
      v57 = v77;
      v58 = v78;
      v59 = v79;
      if (v33 < v76)
      {
        break;
      }

      v27 = v89[0];
      if (v89[0] < v76)
      {
        break;
      }

      v30 = HIDWORD(v87);
      v75 = v78;
      v29 = v79;
      v74 = v77;
      v31 = v39;
      v32 = v38;
      v34 = v35;
      v35 = v89[0];
      if (v89[0] >= v82)
      {
        goto LABEL_58;
      }
    }

    v27 = v35;
    v33 = v38;
    v38 = v39;
    v39 = v77;
    v57 = v74;
    v30 = v79;
    v59 = v78;
    v58 = v75;
LABEL_58:
    v60 = v30;
    v61 = v59;
    v62 = v58;
    v23 = a13;
    v22 = a17;
  }

  v88 = 0;
  if (a18)
  {
    *a18 = *a18 + v21 - 1;
  }

  if (v27)
  {
    v63 = v33 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = !v63;
  if (!v63)
  {
    if (a5)
    {
      v65 = v57 - v76;
      if (!v57)
      {
        v65 = 0;
      }

      *a5 = v65;
    }

    if (a6)
    {
      v66 = v39 - v76;
      if (!v39)
      {
        v66 = 0;
      }

      *a6 = v66;
    }

    if (a7)
    {
      v67 = v38 - v76;
      if (!v38)
      {
        v67 = 0;
      }

      *a7 = v67;
    }

    if (a8)
    {
      *a8 = v33 - v76;
    }

    if (a9)
    {
      *a9 = v27 - v76;
    }

    if (v27 < v82 && v27 > v33 + 1 && v33 == next_pinyin(v33, &v27[~v33], a3, v84, &v88, &v87 + 1))
    {
      if (a10)
      {
        *a10 = v88 - v76;
      }

      if (a14)
      {
        *a14 = v80 - v60 + HIDWORD(v87);
      }
    }

    if (a11)
    {
      *a11 = v81;
    }

    if (a12)
    {
      *a12 = v71 & 1;
    }

    if (a15)
    {
      *a15 = v80 - v60;
    }

    if (a16)
    {
      *a16 = v80 - (v61 + v60);
    }

    if (v22)
    {
      *v22 = v80 - v62 - (v61 + v60);
    }

    if (v23)
    {
      *v23 = v80;
    }
  }

  return v64;
}

uint64_t isFullOrAbbreviatedPinyin(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = (a1 - 1);
  v9 = MEMORY[0x1E69E9830];
  do
  {
    v10 = v8[1];
    if (v10 < 0)
    {
      v11 = __maskrune(v8[1], 0x2000uLL);
    }

    else
    {
      v11 = *(v9 + 4 * v10 + 60) & 0x2000;
    }

    ++v8;
  }

  while (v11);
  v17 = v8;
  v12 = a1 + a2;
  if (v8 >= a1 + a2)
  {
    v13 = 0;
    if (!a4)
    {
      return 1;
    }

    goto LABEL_19;
  }

  v13 = 0;
  do
  {
    if (next_pinyin(v8, v12 - v8, a3, 1, &v17, 0))
    {
      ++v13;
    }

    else
    {
      v14 = v17;
      v15 = *v17;
      if (memchr("bcdfghjklmnpqrstwxyz", v15, 0x15uLL))
      {
        ++v13;
      }

      else if ((v15 & 0x80) != 0)
      {
        result = __maskrune(v15, 0x2000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *(v9 + 4 * v15 + 60) & 0x2000;
        if (!result)
        {
          return result;
        }
      }

      v17 = v14 + 1;
    }

    v8 = v17;
  }

  while (v17 < v12);
  if (a4)
  {
LABEL_19:
    *a4 = v13;
  }

  return 1;
}

uint64_t PRCopyAlternativesForPinyinInputString(uint64_t a1)
{
  v2 = _sharedChecker;
  if (!_sharedChecker)
  {
    v2 = objc_alloc_init(AppleSpell);
    _sharedChecker = v2;
  }

  return [(AppleSpell *)v2 spellServer:0 _retainedAlternativesForPinyinInputString:a1 extended:0];
}

uint64_t PRCopyPrefixesForPinyinInputString(uint64_t a1)
{
  v2 = _sharedChecker;
  if (!_sharedChecker)
  {
    v2 = objc_alloc_init(AppleSpell);
    _sharedChecker = v2;
  }

  return [(AppleSpell *)v2 spellServer:0 _retainedPrefixesForPinyinInputString:a1];
}

uint64_t PRCopyCorrectionsForPinyinInputString(uint64_t a1)
{
  v2 = _sharedChecker;
  if (!_sharedChecker)
  {
    v2 = objc_alloc_init(AppleSpell);
    _sharedChecker = v2;
  }

  return [(AppleSpell *)v2 spellServer:0 _retainedCorrectionsForPinyinInputString:a1];
}

uint64_t PRCopyModificationsForPinyinInputString(uint64_t a1)
{
  v2 = _sharedChecker;
  if (!_sharedChecker)
  {
    v2 = objc_alloc_init(AppleSpell);
    _sharedChecker = v2;
  }

  return [(AppleSpell *)v2 spellServer:0 _retainedModificationsForPinyinInputString:a1 geometryModelData:0];
}

uint64_t PRCopyModificationsForPinyinInputStringWithGeometryModelData(uint64_t a1, uint64_t a2)
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 _retainedModificationsForPinyinInputString:a1 geometryModelData:a2];
}

uint64_t PRCopyFinalModificationsForPinyinInputString(uint64_t a1)
{
  v2 = _sharedChecker;
  if (!_sharedChecker)
  {
    v2 = objc_alloc_init(AppleSpell);
    _sharedChecker = v2;
  }

  return [(AppleSpell *)v2 spellServer:0 _retainedFinalModificationsForPinyinInputString:a1 geometryModelData:0];
}

uint64_t ConvertStringToHangulCompatibilityJamo(void *a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - v4;
  v6 = 0;
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = [a1 characterAtIndex:v7];
      v9 = v11;
      if ((v11 & 0xFF00) == 0x1100)
      {
        if ((v8 & ((v10 - 4520) < 0x1B)) != 0 || (v11 - 4371) <= 0xFFFFFFEC)
        {
          v12 = 0;
          v13 = 22;
          while (1)
          {
            v14 = (v12 + v13) / 2;
            v15 = (&CompoundJamoTable + 6 * v14);
            v16 = v15[2];
            if (v16 == v11)
            {
              break;
            }

            if (v16 >= v11)
            {
              v13 = v14 - 1;
            }

            else
            {
              v12 = v14 + 1;
            }

            if (v12 > v13)
            {
              goto LABEL_12;
            }
          }

          v17 = v15[1];
          v18 = &v5[2 * v6];
          *v18 = HangulJamoToCompatibility(*v15);
          v6 += 2;
          *(v18 + 1) = HangulJamoToCompatibility(v17);
          v8 = 1;
          goto LABEL_15;
        }

LABEL_12:
        v8 = 0;
        *&v5[2 * v6] = HangulJamoToCompatibility(v11);
      }

      else
      {
        v8 = 0;
        *&v5[2 * v6] = v11;
      }

      ++v6;
LABEL_15:
      ++v7;
    }

    while (v7 != v2);
  }

  result = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:v6];
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HangulJamoToCompatibility(uint64_t result)
{
  if ((result & 0xFF00) == 0x1100)
  {
    if (result >> 3 >= 0x235)
    {
      v1 = result - 4520;
      if ((result - 4520) > 0x1A)
      {
        return result;
      }

      v2 = &JongToCompatibilityTable;
      return v2[v1];
    }

    if (result < 0x1161)
    {
      v1 = result - 4352;
      if ((result - 4352) > 0x12)
      {
        return result;
      }

      v2 = &ChoToCompatibilityTable;
      return v2[v1];
    }

    v1 = result - 4449;
    if ((result - 4449) <= 0x14)
    {
      v2 = &JungToCompatibilityTable;
      return v2[v1];
    }

    if (result == 4513)
    {
      v3 = 12686;
    }

    else
    {
      v3 = result;
    }

    if (result == 4510)
    {
      return 12685;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t ConvertStringFromHangulCompatibilityJamo(void *a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - v4;
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [a1 characterAtIndex:v7++];
      v10 = v7 >= v2 || [a1 characterAtIndex:v7] - 12687 < 0xFFFFFFC0;
      if (v9 - 12593 <= 0x5D)
      {
        v11 = HangulCompatibilityToJamo(v9, (v8 - 4371 < 0xFFFFFFED) & v10);
        if (!v6)
        {
          goto LABEL_15;
        }

        v12 = 0;
        v13 = 1;
        v14 = &word_1D2BFD874;
        while (*(v14 - 2) != v8 || *(v14 - 1) != v11)
        {
          v13 = v12 < 0x16;
          v14 += 3;
          if (++v12 == 23)
          {
            goto LABEL_15;
          }
        }

        if (v13)
        {
          v9 = *v14;
          --v6;
        }

        else
        {
LABEL_15:
          v9 = HangulCompatibilityToJamo(v9, (v8 - 4449 < 0x42) & v10);
        }
      }

      *&v5[2 * v6++] = v9;
      v8 = v9;
    }

    while (v7 != v2);
  }

  result = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:?];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HangulCompatibilityToJamo(unsigned int a1, int a2)
{
  if (a1 - 12593 > 0x1D)
  {
    if (a1 - 12623 <= 0x3F)
    {
      v3 = &JungToCompatibilityTable;
      v2 = 21;
      v4 = 4449;
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 19;
    if (a2)
    {
      v2 = 27;
    }

    v3 = &ChoToCompatibilityTable;
    if (a2)
    {
      v3 = &JongToCompatibilityTable;
    }

    v4 = 4352;
    if (a2)
    {
      v4 = 4520;
    }

LABEL_11:
    while (1)
    {
      v5 = *v3++;
      if (v5 == a1)
      {
        break;
      }

      ++v4;
      if (!--v2)
      {
        goto LABEL_15;
      }
    }

    a1 = v4;
  }

LABEL_15:
  if (a1 == 12686)
  {
    v6 = 4513;
  }

  else
  {
    v6 = a1;
  }

  if (a1 == 12685)
  {
    return 4510;
  }

  else
  {
    return v6;
  }
}

void sub_1D2BF02AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1D2BF0718()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D2BF074C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PRGenerativeExperiencesRunner();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1D2BF07E4()
{
  v0 = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  sub_1D2BF3FB8();
}

uint64_t sub_1D2BF08B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void), uint64_t a6)
{
  v37 = a4;
  v38 = a5;
  v36 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v32 - v9;
  v11 = sub_1D2BF3F98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCE0, &qword_1D2BFD988);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v32 - v17;

  sub_1D2BF3F88();
  if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    sub_1D2BF385C(v18, &qword_1EC72BCE0, &qword_1D2BFD988);
    return v38(0, 0, 0);
  }

  else
  {
    v33 = *(v12 + 32);
    v34 = v32 - v14;
    v33(v32 - v14, v18, v11);
    v20 = sub_1D2BF4048();
    v21 = *(*(v20 - 8) + 56);
    v35 = v10;
    v22 = v21(v10, 1, 1, v20);
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](v22);
    v23 = v32 - v14;
    (*(v12 + 16))(v32 - v14, v32 - v14, v11);
    v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v25 = a6;
    v26 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = v36;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v27;
    v33(&v28[v24], v23, v11);
    v29 = v38;
    *&v28[v26] = v37;
    v30 = &v28[(v26 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v30 = v29;
    *(v30 + 1) = v25;

    v31 = v27;
    sub_1D2BF10F0(0, 0, v35, &unk_1D2BFD998, v28);

    return (*(v12 + 8))(v34, v11);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2BF0C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D2BF0C88, 0, 0);
}

uint64_t sub_1D2BF0C88()
{
  v0[7] = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  v1 = *(MEMORY[0x1E69C9B00] + 4);
  v7 = (*MEMORY[0x1E69C9B00] + MEMORY[0x1E69C9B00]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D2BF0D54;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return v7(v5, v3, v4);
}

uint64_t sub_1D2BF0D54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = sub_1D2BF0F2C;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v9 = sub_1D2BF0E88;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2BF0E88()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v2;
  v5(v2, v1, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D2BF0F2C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v1;
  v4(0, 0, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2BF0FC8()
{
  v2 = *(sub_1D2BF3F98() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1D2BF3B98;

  return sub_1D2BF0C60(v10, v11, v12, v7, v0 + v3, v6, v8, v9);
}

uint64_t sub_1D2BF10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D2BF37EC(a3, v27 - v11);
  v13 = sub_1D2BF4048();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D2BF385C(v12, &qword_1EC72BCD8, &qword_1D2BFD980);
  }

  else
  {
    sub_1D2BF4038();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D2BF4028();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D2BF4008() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D2BF385C(a3, &qword_1EC72BCD8, &qword_1D2BFD980);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D2BF385C(a3, &qword_1EC72BCD8, &qword_1D2BFD980);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D2BF13E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D2BF37EC(a3, v27 - v11);
  v13 = sub_1D2BF4048();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D2BF385C(v12, &qword_1EC72BCD8, &qword_1D2BFD980);
  }

  else
  {
    sub_1D2BF4038();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D2BF4028();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D2BF4008() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D2BF385C(a3, &qword_1EC72BCD8, &qword_1D2BFD980);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D2BF385C(a3, &qword_1EC72BCD8, &qword_1D2BFD980);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1D2BF17B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_1D2BF3FD8();
    if (a3)
    {
LABEL_3:
      v8 = sub_1D2BF3F48();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

uint64_t sub_1D2BF186C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_1D2BF4048();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;

  v18 = a1;
  sub_1D2BF13E0(0, 0, v15, &unk_1D2BFD9A8, v17);
}

uint64_t sub_1D2BF19B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2BF19E4, 0, 0);
}

uint64_t sub_1D2BF19E4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;

  v10 = sub_1D2BF3F78();

  *v7 = v10;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2BF1AF0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D2BF3B98;

  return sub_1D2BF19B0(a1, v10, v11, v4, v5, v6, v7, v9);
}

void sub_1D2BF1D5C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a1)
  {
    sub_1D2BF3694();
    v9 = sub_1D2BF4018();
  }

  if (a3)
  {
    a3 = sub_1D2BF3FD8();
  }

  if (a4)
  {
    v10 = sub_1D2BF3F48();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a5 + 16))(a5, v9, a2, a3);
}

uint64_t sub_1D2BF1E40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void), uint64_t a8)
{
  v44 = a1;
  v45 = a7;
  v42 = a3;
  v43 = a6;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_1D2BF3F68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCE8, &qword_1D2BFD9B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;

  sub_1D2BF3F58();
  if ((*(v14 + 48))(v20, 1, v13) == 1)
  {
    sub_1D2BF385C(v20, &qword_1EC72BCE8, &qword_1D2BFD9B0);
    return v45(0, 0, 0, 0);
  }

  else
  {
    v40 = a8;
    v37 = *(v14 + 32);
    v38 = &v36 - v16;
    v37(&v36 - v16, v20, v13);
    v22 = sub_1D2BF4048();
    v23 = *(*(v22 - 8) + 56);
    v39 = v12;
    v24 = v23(v12, 1, 1, v22);
    v36 = &v36;
    MEMORY[0x1EEE9AC00](v24);
    v25 = &v36 - v16;
    (*(v14 + 16))(&v36 - v16, &v36 - v16, v13);
    v26 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    v30 = v43;
    v29 = v44;
    v32 = v41;
    v31 = v42;
    *(v28 + 4) = v44;
    *(v28 + 5) = v32;
    *(v28 + 6) = v31;
    v37(&v28[v26], v25, v13);
    *&v28[v27] = v30;
    v33 = &v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8];
    v34 = v40;
    *v33 = v45;
    *(v33 + 1) = v34;

    v35 = v29;
    sub_1D2BF13E0(0, 0, v39, &unk_1D2BFD9C0, v28);

    return (*(v14 + 8))(v38, v13);
  }
}

uint64_t sub_1D2BF21BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D2BF21F0, 0, 0);
}

uint64_t sub_1D2BF21F0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v13 = v0[2];
  v8 = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;

  v10 = sub_1D2BF3FA8();

  *v13 = v10;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2BF2308(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2BF3F68() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + v7);
  v12 = v1[6];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1D2BF3B98;

  return sub_1D2BF21BC(a1, v15, v16, v9, v10, v12, v1 + v6, v11);
}

void sub_1D2BF255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = sub_1D2BF3FD8();
    if (a4)
    {
LABEL_3:
      v10 = sub_1D2BF3F48();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a5 + 16))(a5, a1, a2, v9);
}

id sub_1D2BF2628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PRGenerativeExperiencesRunner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D2BF2754(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2BF2774(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for _NSRange()
{
  if (!qword_1EC72BCF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC72BCF0);
    }
  }
}

uint64_t sub_1D2BF27EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2BF28E4;

  return v7(a1);
}

uint64_t sub_1D2BF28E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D2BF29DC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1D2BF2AD0;

  return v6(v2 + 16);
}

uint64_t sub_1D2BF2AD0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D2BF2C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void))
{
  v37 = a4;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v39 = swift_allocObject();
  *(v39 + 16) = a5;
  v10 = sub_1D2BF3F98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCE0, &qword_1D2BFD988);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  _Block_copy(a5);

  sub_1D2BF3F88();
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_1D2BF385C(v17, &qword_1EC72BCE0, &qword_1D2BFD988);
    a5[2](a5, 0, 0, 0);
  }

  else
  {
    v35 = *(v11 + 32);
    v36 = &v32 - v13;
    v32 = v10;
    v35(&v32 - v13, v17, v10);
    v18 = sub_1D2BF4048();
    v19 = (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v34 = &v32;
    MEMORY[0x1EEE9AC00](v19);
    v20 = &v32 - v13;
    (*(v11 + 16))(&v32 - v13, &v32 - v13, v10);
    v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    v25 = v37;
    v24 = v38;
    v33 = v9;
    v26 = v39;
    *(v23 + 4) = v38;
    v27 = v20;
    v28 = v32;
    v35(&v23[v21], v27, v32);
    *&v23[v22] = v25;
    v29 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v29 = sub_1D2BF36E0;
    v29[1] = v26;

    v30 = v24;
    sub_1D2BF10F0(0, 0, v33, &unk_1D2BFDA48, v23);

    (*(v11 + 8))(v36, v28);
  }
}

uint64_t sub_1D2BF2FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void, void, void))
{
  v42 = a3;
  v43 = a6;
  v41 = a2;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v45 = swift_allocObject();
  *(v45 + 16) = a7;
  v12 = sub_1D2BF3F68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCE8, &qword_1D2BFD9B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v36 - v18;
  _Block_copy(a7);

  sub_1D2BF3F58();
  if ((*(v13 + 48))(v19, 1, v12) == 1)
  {
    sub_1D2BF385C(v19, &qword_1EC72BCE8, &qword_1D2BFD9B0);
    a7[2](a7, 0, 0, 0, 0);
  }

  else
  {
    v39 = *(v13 + 32);
    v40 = &v36 - v15;
    v36 = v12;
    v39(&v36 - v15, v19, v12);
    v20 = sub_1D2BF4048();
    v21 = (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    v38 = &v36;
    MEMORY[0x1EEE9AC00](v21);
    v22 = &v36 - v15;
    (*(v13 + 16))(&v36 - v15, &v36 - v15, v12);
    v23 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    v27 = v43;
    v26 = v44;
    v37 = v11;
    v28 = v45;
    v30 = v41;
    v29 = v42;
    *(v25 + 4) = v44;
    *(v25 + 5) = v30;
    *(v25 + 6) = v29;
    v31 = v22;
    v32 = v36;
    v39(&v25[v23], v31, v36);
    *&v25[v24] = v27;
    v33 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v33 = sub_1D2BF336C;
    v33[1] = v28;

    v34 = v26;
    sub_1D2BF13E0(0, 0, v37, &unk_1D2BFDA38, v25);

    (*(v13 + 8))(v40, v32);
  }
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_1D2BF3F68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D2BF34C8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D2BF35A0;

  return sub_1D2BF19B0(a1, v10, v11, v4, v5, v6, v7, v9);
}

uint64_t sub_1D2BF35A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1D2BF3694()
{
  result = qword_1EC72BCF8;
  if (!qword_1EC72BCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC72BCF8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_1D2BF3F98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1D2BF37EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2BF385C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D2BF38BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2BF3B98;

  return sub_1D2BF29DC(a1, v5);
}

uint64_t sub_1D2BF3974(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2BF35A0;

  return sub_1D2BF29DC(a1, v5);
}

void sub_1D2BF3A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = [objc_opt_self() valueWithRange_];
  v10(a1, v11, a4, a5);
}

uint64_t sub_1D2BF3AE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2BF3B98;

  return sub_1D2BF27EC(a1, v5);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}