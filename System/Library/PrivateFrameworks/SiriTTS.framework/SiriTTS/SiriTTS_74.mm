uint64_t open_DctRom(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  v5 = a1[6];
  if (v5)
  {
    v11 = a1[6];
  }

  else
  {
    v8 = brk_DataOpenEx(a1[3], a2, 1, (a1 + 4));
    if (v8)
    {
      v6 = v8;
      a1[4] = 0;
      return v6;
    }

    v9 = brk_DataMap(a1[3], a1[4], 0, 40, &v11);
    if (v9)
    {
      v6 = v9;
      brk_DataClose(a1[3], a1[4]);
      a1[4] = 0;
      return v6;
    }

    v5 = v11;
  }

  v6 = 2306875417;
  if (*v5 == 65279 && !LH_strnicmp((v5 + 1), "SCANSOFT", 8uLL) && !LH_strnicmp((v11 + 3), "SYS_DCT", 7uLL))
  {
    v7 = v11[5];
    if (!a1[6])
    {
      brk_DataUnmap(a1[3], a1[4], v11);
    }

    v6 = 0;
    *a3 = v7 - 40;
  }

  return v6;
}

uint64_t close_DctRom(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    brk_DataClose(*(a1 + 24), v1);
  }

  return 0;
}

uint64_t query_DctRom(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a3;
  v15 = 0;
  *a5 = 0;
  v9 = brk_DataMap(*(a1 + 24), *(a1 + 32), 40, a3, &v15);
  if (v9)
  {
    v10 = v9;
    brk_DataClose(*(a1 + 24), *(a1 + 32));
    *(a1 + 32) = 0;
  }

  else
  {
    v11 = v15;
    if (v6)
    {
      v12 = 0;
      while (LH_stricmp((v11 + v12), a2))
      {
        v11 = v15;
        v13 = strlen((v15 + v12));
        v12 += v13 + ((~v13 - v12) & 3) + 5;
        if (v12 >= v6)
        {
          goto LABEL_9;
        }
      }

      *a5 = 1;
      v11 = v15;
    }

LABEL_9:
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), v11);
    return 0;
  }

  return v10;
}

uint64_t init_DctRom(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v36 = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    v36 = (v8 + 40);
  }

  else
  {
    v15 = brk_DataMap(*(a1 + 24), *(a1 + 32), 40, a3, &v36);
    if (v15)
    {
LABEL_10:
      v14 = v15;
      brk_DataClose(*(a1 + 24), *(a1 + 32));
      *(a1 + 32) = 0;
      return v14;
    }
  }

  if (v5)
  {
    v9 = 0;
    v10 = v36;
    while (1)
    {
      v11 = LH_stricmp(&v10[v9], a2);
      v10 = v36;
      v12 = strlen(&v36[v9]);
      v13 = (~v12 - v9) & 3;
      if (!v11)
      {
        break;
      }

      v9 += v13 + v12 + 5;
      if (v9 >= v5)
      {
        goto LABEL_7;
      }
    }

    v16 = *&v36[v12 + 1 + v9 + v13];
    v17 = *(a1 + 48);
    if (v17 || (brk_DataUnmap(*(a1 + 24), *(a1 + 32), v36), (v17 = *(a1 + 48)) != 0))
    {
      if (v16 > *(a1 + 56))
      {
        return 2306875412;
      }

      LODWORD(v18) = *(v17 + v16);
      goto LABEL_16;
    }

    v15 = brk_DataMap(*(a1 + 24), *(a1 + 32), v16, 4, &v36);
    if (!v15)
    {
      v17 = *(a1 + 48);
      v18 = *v36;
      if (!v17)
      {
        brk_DataUnmap(*(a1 + 24), *(a1 + 32), v36);
        v14 = brk_DataMap(*(a1 + 24), a4, v16, v18, *(a1 + 16));
        if (v14)
        {
          return v14;
        }

        v20 = *(a1 + 16);
        v19 = *v20;
        goto LABEL_17;
      }

LABEL_16:
      v19 = v17 + v16;
      v20 = *(a1 + 16);
      *v20 = v19;
LABEL_17:
      v14 = 0;
      v21 = v19 + 72 + ((*(v19 + 5) - *(v19 + 4) + 4) & 0xFFFFFFFC);
      v20[1] = v19 + 72;
      v20[2] = v21;
      v22 = v21 + ((2 * (*(v19 + 7) - *(v19 + 6)) + 5) & 0xFFFFFFFC);
      LODWORD(v21) = *(v19 + 46);
      v23 = v22 + ((v21 + 3) & 0x1FFFC);
      v20[3] = v22;
      v20[4] = v23;
      v24 = v23 + 4 * v21;
      v25 = v24 + 4 * v21;
      v20[5] = v24;
      v20[6] = v25;
      v26 = v25 + 4 * *(v19 + 26) + 4;
      v27 = v26 + 4 * *(v19 + 28) + 4;
      v20[7] = v26;
      v20[8] = v27;
      v28 = v27 + 4 * *(v19 + 30) + 4;
      v29 = v28 + 4 * *(v19 + 32) + 4;
      v20[9] = v28;
      v20[10] = v29;
      v30 = v29 + 4 * *(v19 + 34) + 4;
      v31 = v30 + ((2 * *(v19 + 36) + 3) & 0x3FFFC);
      v20[11] = v30;
      v20[12] = v31;
      v32 = v31 + ((*(v19 + 38) + 3) & 0x1FFFC);
      v33 = v32 + ((*(v19 + 40) + 3) & 0x1FFFC);
      v20[13] = v32;
      v20[14] = v33;
      v20[15] = v33 + ((2 * *(v19 + 42) + 3) & 0x3FFFC);
      LODWORD(v33) = *(v19 + 60);
      v34 = *(v19 + 64);
      LODWORD(v33) = ((v33 + 3) & 0xFFFFFFFC) + v18 + v16;
      *(v20 + 32) = v18 + v16;
      *(v20 + 33) = v33;
      *(v20 + 34) = ((v34 + 3) & 0xFFFFFFFC) + v33;
      return v14;
    }

    goto LABEL_10;
  }

LABEL_7:
  v14 = 2306875412;
  if (!*(a1 + 48))
  {
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), v36);
  }

  return v14;
}

uint64_t exit_DctRom(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    brk_DataUnmap(*(a1 + 24), a2, **(a1 + 16));
  }

  return 0;
}

BOOL test_DCT(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 > a4)
  {
    return a4 >= a3;
  }

  LOWORD(v10) = a3;
  while (1)
  {
    v11 = *(a2 + v10);
    if (a5)
    {
      LODWORD(v11) = depes_tolower(v11);
    }

    v12 = **(a1 + 16);
    if (v11 < *(v12 + 4) || v11 > *(v12 + 5))
    {
      break;
    }

    v10 = (v10 + 1);
    if (v10 > a4)
    {
      return a4 >= a3;
    }
  }

  return 0;
}

uint64_t DctLookup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, __int16 *a4, int a5, _WORD *a6, uint64_t a7)
{
  v63 = *MEMORY[0x1E69E9840];
  memset(v62, 0, 41);
  v9 = *a4;
  v10 = *a3;
  if ((v9 - v10) > 0x7FFEu || *(**(a1 + 16) + 22) <= (v9 - v10) || !test_DCT(a1, a2, v10, v9, a5))
  {
    goto LABEL_26;
  }

  v16 = WordToHashOpt(a1, a2, *a3, *a4, a5, a7);
  if (v16 == -2)
  {
LABEL_7:
    result = 10;
    goto LABEL_27;
  }

  if (v16 < 0)
  {
    goto LABEL_26;
  }

  v17 = DecoAddr(a1, v16);
  if (v17 == -2)
  {
    goto LABEL_7;
  }

  if ((v17 & 0x80000000) != 0)
  {
LABEL_26:
    result = 20;
    goto LABEL_27;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    v20 = (v19 + *(*(a1 + 16) + 132) + v17);
    *(a1 + 8) = v20;
  }

  else
  {
    result = brk_DataMap(*(a1 + 24), *(a1 + 32), *(*(a1 + 16) + 132) + v17, *(**(a1 + 16) + 52), a1 + 8);
    if (result)
    {
      goto LABEL_27;
    }

    v20 = *(a1 + 8);
  }

  v21 = 0;
  LOWORD(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = *v20;
  v25 = *(a1 + 40);
  do
  {
    v25[v23++] = v24;
    v26 = *(a1 + 16);
    v25 = *(a1 + 40);
    v27 = *v26;
    do
    {
      v22 = v22;
      v28 = v26[2][2 * (v25[v22] - v27[6])];
      if (v28)
      {
        v29 = v23 - 1;
        do
        {
          if (v22 < (v23 - 1))
          {
            v30 = v29;
            do
            {
              *(*(a1 + 40) + v30 + 1) = *(*(a1 + 40) + v30);
              --v30;
            }

            while (v30 > v22);
            v26 = *(a1 + 16);
            v25 = *(a1 + 40);
            v27 = *v26;
          }

          ++v23;
          v25[v22 + 1] = v26[2][2 * (v25[v22] - v27[6]) + 1];
          *(*(a1 + 40) + v22) = v28;
          v26 = *(a1 + 16);
          v25 = *(a1 + 40);
          v27 = *v26;
          v28 = v26[2][2 * (v25[v22] - (*v26)[6])];
          ++v29;
        }

        while (v28);
      }

      LODWORD(v22) = (v22 + 1);
    }

    while (v22 < v23);
    ++v21;
    v24 = *(*(a1 + 8) + v21);
    v31 = v27[10];
  }

  while (v24 != v27[8] && (v24 < v31 || v24 > v27[11]));
  v32 = *v25;
  if (v32 >= v31)
  {
    do
    {
      v34 = v32;
      v35 = v27[11];
      if (v32 > v35)
      {
        break;
      }

      v36 = *(a1 + 8);
      v37 = v27[8];
      v38 = *(v36 + v21);
      if (v38 == v37)
      {
        v39 = 1;
      }

      else
      {
        v40 = (v36 + v21 + 1);
        while (1)
        {
          v41 = v38 < v31 || v38 > v35;
          v39 = v41;
          if (v39 != 1)
          {
            break;
          }

          LODWORD(v21) = v21 + 1;
          v42 = *v40++;
          LOBYTE(v38) = v42;
          if (v42 == v37)
          {
            goto LABEL_42;
          }
        }

        LOBYTE(v37) = v38;
      }

LABEL_42:
      LODWORD(v21) = v21 + v39;
      v43 = v31;
      v44 = v31 - 1;
      if (v37 <= v35 && v37 >= v43)
      {
        v44 = v37;
      }

      if (v44 >= v32)
      {
        LODWORD(v21) = v21 + 1;
      }

      else
      {
        LOWORD(v46) = 0;
        v47 = 0;
        v48 = v26[2];
        v49 = v27[6];
        v21 = v21;
        do
        {
          v50 = v47++;
          *(v62 + v50) = *(v36 + v21);
          do
          {
            v46 = v46;
            v51 = *(v62 + v46);
            if (v48[2 * (v51 - v49)])
            {
              v52 = v47 - 1;
              do
              {
                if (v46 < (v47 - 1))
                {
                  v53 = v62 + v52 + 1;
                  v54 = v52;
                  v55 = v53;
                  do
                  {
                    v56 = *--v55;
                    *v53 = v56;
                    --v54;
                    v53 = v55;
                  }

                  while (v54 > v46);
                  v51 = *(v62 + v46);
                }

                v57 = &v48[2 * (v51 - v49)];
                *(v62 + v46 + 1) = v57[1];
                v51 = *v57;
                *(v62 + v46) = v51;
                ++v47;
                ++v52;
              }

              while (v48[2 * (v51 - v49)]);
            }

            LODWORD(v46) = (v46 + 1);
            LOBYTE(v32) = v32 - 1;
          }

          while (v46 < v47 && v32 >= v44);
          ++v21;
        }

        while (v32 >= v44);
        v58 = v34 - v44;
        if (v23 >= 2)
        {
          v59 = v23 - 1;
          v60 = (v23 + v34 - v44) - 1;
          do
          {
            *(*(a1 + 40) + v60--) = *(*(a1 + 40) + v59--);
          }

          while (v59);
        }

        if ((v58 & 0x80000000) == 0)
        {
          v61 = 0;
          do
          {
            *(*(a1 + 40) + v61) = *(v62 + v61);
            ++v61;
          }

          while (v58 >= v61);
        }

        LOWORD(v23) = v23 + v58;
        LOBYTE(v32) = v44;
      }

      v26 = *(a1 + 16);
      v27 = *v26;
      v31 = (*v26)[10];
    }

    while (v31 <= v32);
  }

  if (!*(a1 + 48))
  {
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), *(a1 + 8));
  }

  result = 0;
  *a6 = v23;
LABEL_27:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HuffDecode(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a2 + 4 * a3);
  if (*v3 != -1)
  {
    v4 = *(a1 + 1);
    v5 = *a1;
    v6 = *(v4 + v5);
    v7 = *(a1 + 4);
    while (v7)
    {
      v8 = v3[(v6 & (1 << v7)) == 0];
      if (v7 <= 6)
      {
        goto LABEL_7;
      }

      v7 = 0;
      *(a1 + 4) = 0;
      LODWORD(v5) = v5 + 1;
      *a1 = v5;
LABEL_8:
      v3 = (a2 + 4 * v8);
      if (*v3 == -1)
      {
        return v8;
      }
    }

    v6 = *(v4 + v5);
    v8 = *(v3 + (~(2 * v6) & 2));
LABEL_7:
    *(a1 + 4) = ++v7;
    goto LABEL_8;
  }

  return a3;
}

uint64_t DecodeSourceLink(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*v2 + 12);
  v4 = HuffDecode(a1, v2[10], *(*v2 + 34));
  v5 = (v4 * v3) & 0xF;
  v6 = 16 - v5;
  v7 = *(a1 + 16);
  v8 = (v7[15] + 2 * ((v4 * v3) >> 4));
  v9 = *v8 >> ((v4 * v3) & 0xF);
  if (16 - v5 >= v3)
  {
    result = v9 & (0xFFFFu >> (16 - v3));
  }

  else
  {
    v10 = v8[1];
    if (32 - v5 >= v3)
    {
      result = (((0xFFFFu >> (-v3 - v5)) & v10) << v6) + v9;
    }

    else
    {
      result = (v10 << v6) + v9 + (((0xFFFFu >> (48 - v3 - v5)) & v8[2]) << (32 - v5));
    }
  }

  v12 = *v7;
  if (result > *(v12 + 18))
  {
    return (result << *(v12 + 14));
  }

  return result;
}

uint64_t GetSourceAddress(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = **(a1 + 2);
  v3 = *(v2 + 12);
  v4 = *(a1 + 4);
  v5 = v4 + v3;
  v6 = *a1;
  v7 = *(v1 + v6) >> v4;
  if ((v4 + v3) < 9)
  {
    v12 = v7 & (0xFFu >> (8 - v3));
  }

  else
  {
    if (v5 < 0x11)
    {
      v11 = 16;
      LOBYTE(v9) = 8;
      v8 = 1;
    }

    else
    {
      v8 = 1;
      LOBYTE(v9) = 8;
      v10 = 1;
      do
      {
        v7 += *(v1 + (v8 + v6)) << (v9 - v4);
        v8 = ++v10;
        v9 = 8 * v10;
        v11 = 8 * v10 + 8;
      }

      while (v5 > v9 + 8);
    }

    v12 = (((0xFFu >> (v11 - v5)) & *(v1 + (v8 + v6))) << (v9 - v4)) + v7;
  }

  v13 = v4 + v3;
  *a1 = v6 + ((v13 >> 3) & 7);
  *(a1 + 4) = v13 & 7;
  return v12 << *(v2 + 14);
}

uint64_t DecodeSourceHash(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*v2 + 13);
  v4 = HuffDecode(a1, v2[9], *(*v2 + 32));
  if (v3 <= 0x10)
  {
    return *(*(*(a1 + 16) + 112) + 2 * v4);
  }

  v6 = (v4 * v3) & 0xF;
  v7 = (*(*(a1 + 16) + 112) + 2 * ((v4 * v3) >> 4));
  v8 = *v7 >> ((v4 * v3) & 0xF);
  v9 = v7[1];
  if (32 - v6 >= v3)
  {
    return (((0xFFFFu >> (-v3 - v6)) & v9) << (16 - v6)) + v8;
  }

  else
  {
    return (v9 << (16 - v6)) + v8 + (((0xFFFFu >> (48 - v3 - v6)) & v7[2]) << (32 - v6));
  }
}

uint64_t try_flipped(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != 1163019088)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v5;
  *a2 = v4;
  *(a2 + 4) = vrev32_s8(*(a1 + 4));
  *(a2 + 16) = vrev16_s8(a1[1]);
  *(a2 + 24) = bswap32(*(a1 + 12)) >> 16;
  *(a2 + 26) = bswap32(*(a1 + 13)) >> 16;
  *(a2 + 28) = bswap32(*(a1 + 14)) >> 16;
  if (a3)
  {
    v6 = *a3;
    v7 = a3[1];
    *(a4 + 32) = *(a3 + 4);
    *a4 = v6;
    *(a4 + 16) = v7;
    *a4 = vrev32_s8(*a3);
  }

  return a2;
}

uint64_t nuance_pcre_fullinfo(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  result = 4294967294;
  if (!a1 || !a4)
  {
    goto LABEL_52;
  }

  if (a2 && (*a2 & 1) != 0)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  memset(v15, 0, sizeof(v15));
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  if (*a1 != 1346589253)
  {
    v10 = try_flipped(a1, v15, v9, v16);
    if (!v10)
    {
      result = 4294967292;
      goto LABEL_52;
    }

    a1 = v10;
    if (v9)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }
  }

  result = 4294967293;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
        result = 0;
        v12 = a1 + *(a1 + 24);
        goto LABEL_47;
      }

      if (a3 != 10)
      {
        if (a3 != 11)
        {
          goto LABEL_52;
        }

        result = 0;
        v12 = &pcre_default_tables;
LABEL_47:
        *a4 = v12;
        goto LABEL_52;
      }

      if (v9)
      {
        v12 = *v9;
        goto LABEL_46;
      }

LABEL_45:
      v12 = 0;
      goto LABEL_46;
    }

    if (a3 != 6)
    {
      result = 0;
      if (a3 == 7)
      {
        v11 = *(a1 + 26);
      }

      else
      {
        v11 = *(a1 + 28);
      }

      goto LABEL_51;
    }

    if ((*(a1 + 11) & 0x20) != 0)
    {
      v11 = *(a1 + 22);
    }

    else
    {
      v11 = -1;
    }

LABEL_50:
    result = 0;
    goto LABEL_51;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      result = 0;
      v11 = *(a1 + 18);
      goto LABEL_51;
    }

    if (a3 != 4)
    {
      if (v9 && (*(v9 + 4) & 1) != 0)
      {
        v12 = *(a2 + 8) + 8;
LABEL_46:
        result = 0;
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = *(a1 + 8);
    if ((v13 & 0x40000000) != 0)
    {
      v11 = *(a1 + 20);
    }

    else if ((v13 & 0x10000000) != 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = -2;
    }

    goto LABEL_50;
  }

  switch(a3)
  {
    case 0:
      result = 0;
      v12 = *(a1 + 8) & 0x7A7FLL;
      goto LABEL_47;
    case 1:
      result = 0;
      v12 = *(a1 + 4);
      goto LABEL_47;
    case 2:
      result = 0;
      v11 = *(a1 + 16);
LABEL_51:
      *a4 = v11;
      break;
  }

LABEL_52:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nuance_pcre_compile(uint64_t a1, int a2, char *a3, uint64_t a4, const char **a5, _DWORD *a6, char *a7)
{
  v196[126] = *MEMORY[0x1E69E9840];
  v196[0] = 0;
  v195 = 0;
  v194 = 0;
  if ((safeh_HandleCheck(a1, a2, 56663, 32) & 0x80000000) != 0 || !a5)
  {
    v14 = 0;
    goto LABEL_12;
  }

  *a5 = 0;
  if (!a6)
  {
    v14 = 0;
    v15 = "erroffset passed as NULL";
    goto LABEL_11;
  }

  *a6 = 0;
  if ((a4 & 0x2800) == 0x800)
  {
    valid = valid_utf8(a3, -1);
    *a6 = valid;
    if ((valid & 0x80000000) == 0)
    {
      v14 = 0;
      v15 = "invalid UTF-8 string";
LABEL_11:
      *a5 = v15;
      goto LABEL_12;
    }
  }

  if ((a4 & 0xFFFF8580) != 0)
  {
    v14 = 0;
    v15 = "unknown option bit(s) set";
    goto LABEL_11;
  }

  v177 = 0;
  v178 = 0;
  v18 = 0;
  v19 = 0;
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  if (a7)
  {
    v20 = a7;
  }

  else
  {
    v20 = &pcre_default_tables;
  }

  v186 = v20;
  v187 = v20 + 256;
  v176 = v20;
  v179 = a3;
  v188 = v20 + 512;
  v189 = v20 + 832;
  *&v192 = 0;
  v193 = (a3 - 1);
  v21 = digitab;
  v22 = -1;
  v23 = 3;
  v24 = a4;
  while (1)
  {
    v25 = v193;
    v26 = v193 + 1;
    v27 = *++v193;
    if (!v27)
    {
LABEL_414:
      if ((v24 & 0x4000) != 0)
      {
        v152 = 10;
      }

      else
      {
        v152 = 4;
      }

      v153 = v152 + v23;
      if (v152 + v23 > 0x10000)
      {
        v14 = 0;
        v15 = "regular expression too large";
        goto LABEL_11;
      }

      v154 = v24;
      v155 = heap_Calloc(*(*a1 + 8), 1, (v153 + (v177 + 3) * HIDWORD(v177) + 48));
      v14 = v155;
      if (!v155)
      {
        v15 = "failed to get memory";
        goto LABEL_11;
      }

      *v155 = 1346589253;
      *(v155 + 4) = v153 + (v177 + 3) * HIDWORD(v177) + 48;
      *(v155 + 30) = 0;
      *(v155 + 8) = v154;
      *(v155 + 12) = 0;
      *(v155 + 24) = 48;
      *(v155 + 26) = v177 + 3;
      *(v155 + 28) = WORD2(v177);
      if (v176 == &pcre_default_tables)
      {
        v156 = 0;
      }

      else
      {
        v156 = v176;
      }

      *(v155 + 32) = v156;
      *(v155 + 40) = 0;
      DWORD2(v191) = 0;
      HIDWORD(v191) = v177 + 3;
      *&v191 = v155 + 48;
      v157 = (v155 + 48 + (v177 + 3) * WORD2(v177));
      *&v190 = v157;
      *(&v190 + 1) = v179;
      *(&v192 + 1) = 0;
      v193 = v179;
      v194 = v157;
      *v157 = 80;
      v195 = 0;
      compile_regex_0(v154, v154 & 7, &v195, &v194, &v193, a5, 0, 0, v196 + 1, v196, 0, &v186);
      *(v14 + 16) = v195;
      v158 = HIDWORD(v192);
      *(v14 + 18) = v192;
      if (v158)
      {
        *(v14 + 8) |= 0x4000000u;
      }

      if (!*a5 && *v193)
      {
        *a5 = "unmatched parentheses";
      }

      v159 = v194;
      *v194 = 0;
      if (v159 - v157 + 1 > v153)
      {
        *a5 = "internal error: code overflow";
      }

      if (*(v14 + 18) > *(v14 + 16))
      {
        *a5 = "reference to non-existent subpattern";
LABEL_434:
        heap_Free(*(*a1 + 8), v14);
        goto LABEL_437;
      }

      if (*a5)
      {
        goto LABEL_434;
      }

      if ((v154 & 0x10) == 0)
      {
        v184 = v154;
        v161 = DWORD1(v192);
        if (is_anchored_0(v14 + 48 + (v177 + 3) * WORD2(v177), &v184, 0, SDWORD1(v192)))
        {
          v162 = 16;
        }

        else
        {
          LOWORD(firstassertedchar) = WORD2(v196[0]);
          if ((v196[0] & 0x8000000000000000) != 0 && (firstassertedchar = find_firstassertedchar(v14 + 48 + (v177 + 3) * WORD2(v177), &v184, 0), firstassertedchar < 0))
          {
            if (!is_startline_0(v14 + 48 + (v177 + 3) * WORD2(v177), 0, v161))
            {
              goto LABEL_448;
            }

            v162 = 0x10000000;
          }

          else
          {
            if ((firstassertedchar & 0x100) == 0 || (v164 = firstassertedchar, v187[firstassertedchar] != firstassertedchar))
            {
              v164 = firstassertedchar;
            }

            *(v14 + 20) = v164;
            v162 = 0x40000000;
          }
        }

        *(v14 + 8) |= v162;
      }

LABEL_448:
      v165 = v196[0];
      if ((v196[0] & 0x80000000) == 0)
      {
        v166 = *(v14 + 8);
        if ((v196[0] & 0x200) != 0 || (v166 & 0x10) == 0)
        {
          if ((v196[0] & 0x100) != 0 && v187[LOBYTE(v196[0])] == LOBYTE(v196[0]))
          {
            v165 = v196[0] & 0xFEFF;
          }

          *(v14 + 22) = v165;
          *(v14 + 8) = v166 | 0x20000000;
        }
      }

      goto LABEL_12;
    }

    v185 = 0;
    if (v19)
    {
      if ((v24 & 0x4000) != 0)
      {
        v23 += 6;
      }

      if (v27 == 92)
      {
        v29 = v25[2];
        v28 = v25 + 2;
        if (v29 != 69)
        {
          v23 += 2;
LABEL_70:
          v37 = 2;
          v18 = 1;
          goto LABEL_400;
        }

        v19 = 0;
        v193 = v28;
LABEL_67:
        v37 = 2;
        goto LABEL_400;
      }

      goto LABEL_71;
    }

    if ((v24 & 8) != 0)
    {
      if (v189[v27])
      {
        goto LABEL_60;
      }

      if (v27 == 35)
      {
        while (1)
        {
          v33 = *++v26;
          v32 = v33;
          if (v33 == 10)
          {
            break;
          }

          if (!v32)
          {
            goto LABEL_414;
          }
        }

        v19 = 0;
        goto LABEL_66;
      }
    }

    ++v22;
    v181 = v24;
    if ((v24 & 0x4000) != 0 && (v27 - 42) >= 2 && v27 != 63)
    {
      if (v27 == 123)
      {
        v175 = v22;
        v30 = is_counted_repeat(v25 + 2);
        v22 = v175;
        v21 = digitab;
        v24 = v181;
        if (v30)
        {
          goto LABEL_88;
        }
      }

      v23 += 6;
    }

    if (v27 > 62)
    {
      if (v27 > 93)
      {
        switch(v27)
        {
          case '^':
            goto LABEL_69;
          case '{':
            v175 = v22;
LABEL_88:
            if (!is_counted_repeat(v25 + 2))
            {
              v19 = 0;
              v23 += 2;
              v37 = 2;
              v18 = 1;
              goto LABEL_99;
            }

            repeat_counts_0 = read_repeat_counts_0(v25 + 2, &v185 + 1, &v185, a5);
            v193 = repeat_counts_0;
            if (*a5)
            {
              goto LABEL_437;
            }

            v26 = repeat_counts_0;
            if (HIDWORD(v185))
            {
              v50 = v185;
              v24 = v181;
              if (v185 != 0x1FFFFFFFFLL)
              {
                if (SHIDWORD(v185) <= 0)
                {
                  v51 = -v18;
                }

                else
                {
                  v51 = 3;
                }

                if (HIDWORD(v185) == 1)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v51;
                }

LABEL_262:
                v79 = v50 < 1;
                v104 = v23 + v18 + v52;
                if (v79)
                {
                  v23 = v104 + 1;
                }

                else
                {
                  v23 = v104 + 3;
                }

LABEL_265:
                v21 = digitab;
                v22 = v175;
                if (repeat_counts_0[1] == 63)
                {
                  v193 = repeat_counts_0 + 1;
                  v26 = repeat_counts_0 + 1;
                }

                goto LABEL_58;
              }
            }

            else
            {
              v50 = v185;
              v24 = v181;
              if (v185 != -1 && v185 != 1)
              {
                v52 = -v18;
                goto LABEL_262;
              }
            }

            ++v23;
            goto LABEL_265;
          case '|':
            v19 = 0;
            v23 += v178 + 3;
            goto LABEL_67;
        }
      }

      else
      {
        switch(v27)
        {
          case '?':
            goto LABEL_57;
          case '[':
            v46 = v25 + 2;
            v47 = v25[2];
            v193 = v25 + 2;
            if (v47 == 94)
            {
              v47 = v25[3];
              v193 = v25 + 3;
              v48 = 10;
              v46 = v25 + 3;
            }

            else
            {
              v48 = 0;
            }

            if (!v47)
            {
LABEL_435:
              v160 = "missing terminating ] for character class";
              goto LABEL_436;
            }

            v173 = v48;
            v175 = v22;
            v56 = 0;
            v168 = v189;
            v180 = v195;
            v169 = v24 & 1;
            if (v24)
            {
              v57 = 127;
            }

            else
            {
              v57 = 255;
            }

            v170 = v57;
            v171 = 0;
            v58 = 1;
LABEL_111:
            v59 = v56;
            while (v58)
            {
              if (v47 != 92)
              {
                if (v47 == 91)
                {
                  v61 = v46 + 2;
                  if (v46[2] == 94)
                  {
                    v61 = v46 + 3;
                  }

                  do
                  {
                    v63 = *v61++;
                    v62 = v63;
                  }

                  while ((v168[v63] & 2) != 0);
                  if (v62 == v46[1] && *v61 == 93)
                  {
                    v59 = 0;
                    v193 = v61;
                    goto LABEL_195;
                  }
                }

                goto LABEL_131;
              }

              v60 = check_escape(&v193, a5, v180, v24, 1);
              if (*a5)
              {
                goto LABEL_437;
              }

              v47 = v60;
              if (v60 != -19)
              {
                v24 = v181;
                if (v60 == -15)
                {
                  v47 = 88;
                }

                else
                {
                  if (v60 == -4)
                  {
                    v47 = 8;
                    goto LABEL_147;
                  }

                  if (v60 < 0)
                  {
                    if ((v60 & 0xFFFFFFFE) == 0xFFFFFFF2)
                    {
                      v59 = 0;
                      v69 = v23 + 4;
                      if (v171)
                      {
                        v69 = v23;
                      }

                      v23 = v69 + 2;
LABEL_193:
                      v171 = 1;
                      v173 = 10;
                      goto LABEL_196;
                    }

                    v59 = 0;
LABEL_195:
                    v173 = 10;
                    goto LABEL_196;
                  }
                }

LABEL_147:
                v70 = v193;
                if (v193[1] == 45)
                {
                  v71 = v193 + 2;
                  v72 = v193[2];
                  if (v193[2] && v72 != 93)
                  {
                    if (v72 == 92)
                    {
                      v193 += 2;
                      v73 = check_escape(&v193, a5, v180, v24, 1);
                      if (*a5)
                      {
                        goto LABEL_437;
                      }

                      v72 = v73;
                      if (v73 == -15)
                      {
                        v72 = 88;
                        v24 = v181;
                        goto LABEL_170;
                      }

                      v24 = v181;
                      if (v73 == -4)
                      {
                        v72 = 8;
LABEL_170:
                        if (v72 >= v47)
                        {
                          if ((a4 & 0x800) != 0)
                          {
                            v79 = v169 && v72 > 0x7F;
                            v80 = v79;
                            if (v72 > 0xFF || v80)
                            {
                              if (!v171)
                              {
                                v23 += 4;
                              }

                              if (!v169)
                              {
LABEL_221:
                                v93 = ord2utf8(v47, &v184);
                                v23 += v93 + ord2utf8(v72, &v184) + 1;
                                v171 = 1;
                                v173 = 10;
                                v24 = v181;
                                goto LABEL_196;
                              }

                              v183 = 0;
                              v85 = v72;
                              v182 = v47;
LABEL_201:
                              v167 = v85 + 1;
                              v174 = v85;
                              while (1)
                              {
                                for (i = v23; ; i += v90 + v91 + 1)
                                {
                                  do
                                  {
                                    if (!get_othercase_range(&v182, v72, &v183 + 1, &v183))
                                    {
                                      v23 = i;
                                      v72 = v174;
                                      goto LABEL_221;
                                    }

                                    v87 = v183;
                                    v86 = HIDWORD(v183);
                                  }

                                  while (SHIDWORD(v183) >= v47 && v183 <= v174);
                                  if (SHIDWORD(v183) < v47 && v183 >= v47 - 1)
                                  {
                                    break;
                                  }

                                  if (v183 > v174 && SHIDWORD(v183) <= v167)
                                  {
                                    v85 = v183;
                                    v23 = i;
                                    goto LABEL_201;
                                  }

                                  v90 = ord2utf8(SHIDWORD(v183), &v184);
                                  if (v86 == v87)
                                  {
                                    v91 = 0;
                                  }

                                  else
                                  {
                                    v92 = v90;
                                    v91 = ord2utf8(v87, &v184);
                                    v90 = v92;
                                  }
                                }

                                v47 = HIDWORD(v183);
                                v23 = i;
                              }
                            }
                          }

                          goto LABEL_195;
                        }

LABEL_456:
                        v160 = "range out of order in character class";
                        goto LABEL_436;
                      }
                    }

                    else
                    {
                      v193 += 2;
                      if ((a4 & 0x800) == 0)
                      {
                        if (v47 <= v72)
                        {
                          goto LABEL_195;
                        }

                        goto LABEL_456;
                      }

                      if ((~v72 & 0xC0) != 0)
                      {
                        v74 = 0;
                      }

                      else
                      {
                        v74 = utf8_table4[v72 & 0x3F];
                        v72 = (utf8_table3[v74] & v72) << (6 * v74);
                        v75 = (v70 + 3);
                        if (v74 <= 1)
                        {
                          v76 = 1;
                        }

                        else
                        {
                          v76 = v74;
                        }

                        v77 = 6 * v74 - 6;
                        do
                        {
                          v78 = *v75++;
                          v72 |= (v78 & 0x3F) << v77;
                          v77 -= 6;
                          --v76;
                        }

                        while (v76);
                      }

                      v193 = &v71[v74];
                    }

                    if ((v72 & 0x80000000) == 0)
                    {
                      goto LABEL_170;
                    }
                  }

                  v193 = v70;
                }

                if ((a4 & 0x800) != 0 && v47 > v170)
                {
                  if (v171)
                  {
                    v82 = v23;
                  }

                  else
                  {
                    v82 = v23 + 4;
                  }

                  v83 = ord2utf8(v47, &v184);
                  v24 = v181;
                  v23 = ((v83 + 1) << v169) + v82;
                  goto LABEL_193;
                }

                ++v173;
LABEL_196:
                v84 = v193;
                v46 = v193 + 1;
                v47 = *++v193;
                if (!v47)
                {
                  goto LABEL_435;
                }

                v58 = v59 == 0;
                v56 = 1;
                if (!v59)
                {
                  v56 = 0;
                  if (v47 == 93)
                  {
                    if (v173 == 1)
                    {
                      v19 = 0;
                      v23 += 3;
                      v37 = 2;
                      goto LABEL_100;
                    }

                    if (v84[2] == 123 && is_counted_repeat(v84 + 3))
                    {
                      v127 = read_repeat_counts_0(v84 + 3, &v185 + 1, &v185, a5);
                      v193 = v127;
                      if (*a5)
                      {
                        goto LABEL_437;
                      }

                      if (HIDWORD(v185))
                      {
                        v128 = HIDWORD(v185) == 1 && v185 == -1;
                      }

                      else
                      {
                        v128 = ((v185 + 1) & 0xFFFFFFFD) == 0;
                      }

                      if (v128)
                      {
                        v148 = 34;
                      }

                      else
                      {
                        v148 = 38;
                      }

                      v23 += v148;
                      v151 = v127[1];
                      v149 = v127 + 1;
                      v150 = v151;
                      if (v151 == 63)
                      {
                        v19 = 0;
                        v193 = v149;
                      }

                      else
                      {
                        v19 = 0;
                        if (v150 == 43)
                        {
                          v193 = v149;
                          v23 += 6;
                        }
                      }

                      v37 = 2;
                    }

                    else
                    {
                      v19 = 0;
                      v37 = 2;
                      v23 += 33;
                    }

LABEL_99:
                    v24 = v181;
LABEL_100:
                    v21 = digitab;
                    v22 = v175;
                    goto LABEL_400;
                  }
                }

                goto LABEL_111;
              }

              v58 = 0;
              v46 = v193 + 1;
              v47 = *++v193;
              v59 = 1;
              v24 = v181;
              if (!v47)
              {
                goto LABEL_435;
              }
            }

            if (v47 == 92 && v46[1] == 69)
            {
              v59 = 0;
              v193 = v46 + 1;
              goto LABEL_196;
            }

LABEL_131:
            if ((a4 & 0x800) != 0)
            {
              if ((~v47 & 0xC0) != 0)
              {
                v64 = 0;
              }

              else
              {
                v64 = utf8_table4[v47 & 0x3F];
                v47 = (utf8_table3[v64] & v47) << (6 * v64);
                v65 = (v46 + 1);
                if (v64 <= 1)
                {
                  v66 = 1;
                }

                else
                {
                  v66 = v64;
                }

                v67 = 6 * v64 - 6;
                do
                {
                  v68 = *v65++;
                  v47 |= (v68 & 0x3F) << v67;
                  v67 -= 6;
                  --v66;
                }

                while (v66);
              }

              v193 = &v46[v64];
            }

            goto LABEL_147;
          case '\\':
            v34 = v22;
            v35 = v21;
            v36 = check_escape(&v193, a5, v195, v24, 0);
            if (*a5)
            {
              goto LABEL_437;
            }

            if ((v36 & 0x80000000) == 0)
            {
              v19 = 0;
              v23 += 2;
              v37 = 2;
              v18 = 1;
              v24 = v181;
              if ((a4 & 0x800) != 0)
              {
                v21 = v35;
                v22 = v34;
                if (v36 < 0x80)
                {
                  goto LABEL_400;
                }

                for (j = 0; j != 6; ++j)
                {
                  if (v36 <= utf8_table1[j])
                  {
                    break;
                  }
                }

                v19 = 0;
                v23 += j;
                v18 = j + 1;
                goto LABEL_67;
              }

LABEL_244:
              v21 = v35;
              v22 = v34;
              goto LABEL_400;
            }

            if (v36 + 14 < 2)
            {
              if ((get_ucp_0(&v193, &v184, a5) & 0x80000000) != 0)
              {
                goto LABEL_437;
              }

              v19 = 0;
              v23 += 2;
              v18 = 2;
              goto LABEL_242;
            }

            v24 = v181;
            v21 = v35;
            v22 = v34;
            if (v36 == -19)
            {
              v37 = 2;
              v18 = 1;
              v19 = 1;
              goto LABEL_400;
            }

            v18 = 1;
            if (v36 > 0xFFFFFFEC)
            {
              v19 = 0;
              ++v23;
              goto LABEL_67;
            }

            v106 = -20 - v36;
            v107 = 1 << (-20 - v36);
            if (v36 <= 0xFFFFFFCC)
            {
              v107 = 1;
            }

            v108 = DWORD1(v192) | v107;
            if (v106 <= v192)
            {
              v106 = v192;
            }

            *&v192 = __PAIR64__(v108, v106);
            v109 = v193;
            if (v193[1] != 123)
            {
              v19 = 0;
              v37 = 2;
              v23 += 3;
              goto LABEL_244;
            }

            if (is_counted_repeat(v193 + 2))
            {
              v110 = read_repeat_counts_0(v109 + 2, &v185 + 1, &v185, a5);
              v193 = v110;
              if (*a5)
              {
                goto LABEL_437;
              }

              if (HIDWORD(v185))
              {
                v111 = HIDWORD(v185) == 1 && v185 == -1;
              }

              else
              {
                v111 = ((v185 + 1) & 0xFFFFFFFD) == 0;
              }

              if (v111)
              {
                v144 = 4;
              }

              else
              {
                v144 = 8;
              }

              v23 += v144;
              v146 = v110[1];
              v145 = v110 + 1;
              v19 = 0;
              if (v146 == 63)
              {
                v193 = v145;
              }

LABEL_242:
              v37 = 2;
            }

            else
            {
              v19 = 0;
              v37 = 2;
              v23 += 3;
            }

            v24 = v181;
            goto LABEL_244;
        }
      }

      goto LABEL_71;
    }

    if (v27 > 41)
    {
      if ((v27 - 42) < 2)
      {
LABEL_57:
        ++v23;
        goto LABEL_58;
      }

      if (v27 == 46)
      {
LABEL_69:
        v19 = 0;
        ++v23;
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v27 == 36)
    {
      goto LABEL_69;
    }

    if (v27 == 40)
    {
      break;
    }

    if (v27 == 41)
    {
      v23 += 3;
      if (HIDWORD(v178))
      {
        v31 = v23 - *(&v196[26] + (HIDWORD(v178) - 1));
        LODWORD(v178) = *(&v196[1] + --HIDWORD(v178));
      }

      else
      {
        HIDWORD(v178) = 0;
        v31 = 0;
      }

LABEL_226:
      v94 = v26 + 1;
      v95 = v26[1];
      if (v95 <= 0x3E)
      {
        if (v95 == 42)
        {
          v185 = 0xFFFFFFFFLL;
          ++v23;
          goto LABEL_249;
        }

        if (v95 == 43)
        {
          v185 = 0x1FFFFFFFFLL;
LABEL_249:
          ++v26;
          v193 = v94;
          goto LABEL_58;
        }

LABEL_245:
        v185 = 0x100000001;
        goto LABEL_58;
      }

      if (v95 == 63)
      {
        v100 = 1;
        v185 = 1;
        v193 = v26 + 1;
        ++v23;
        ++v26;
      }

      else
      {
        if (v95 != 123)
        {
          goto LABEL_245;
        }

        v96 = v21;
        v97 = v22;
        v98 = is_counted_repeat(v26 + 2);
        v22 = v97;
        v21 = v96;
        v24 = v181;
        if (!v98)
        {
          goto LABEL_245;
        }

        v99 = read_repeat_counts_0(v26 + 2, &v185 + 1, &v185, a5);
        v193 = v99;
        if (*a5)
        {
          goto LABEL_437;
        }

        v26 = v99;
        v100 = v185;
        if (HIDWORD(v185))
        {
          if (v185 > SHIDWORD(v185))
          {
            v23 = v23 + (HIDWORD(v185) - 1) * v31 + (v185 - HIDWORD(v185)) * (v31 + 7) - 6;
          }

          else
          {
            v23 += (HIDWORD(v185) - 1) * v31;
          }

          v24 = v181;
          v21 = v96;
          v22 = v97;
          goto LABEL_58;
        }

        ++v23;
        v24 = v181;
        v21 = v96;
        v22 = v97;
        if (v185 < 1)
        {
LABEL_58:
          v40 = v26[1];
          v39 = v26 + 1;
          if (v40 == 43)
          {
            v19 = 0;
            v193 = v39;
            v23 += 6;
          }

          else
          {
LABEL_60:
            v19 = 0;
          }

          goto LABEL_67;
        }
      }

      v23 += (v100 - 1) * (v31 + 7);
      goto LABEL_58;
    }

LABEL_71:
    v23 += 2;
    v37 = 2;
    v18 = 1;
    if ((a4 & 0x800) != 0 && v27 >= 0xC0)
    {
      v41 = v25[2] & 0xC0;
      while (v41 == 128)
      {
        ++v18;
        ++v23;
        v41 = v26[2] & 0xC0;
        ++v26;
      }

LABEL_66:
      v193 = v26;
      goto LABEL_67;
    }

LABEL_400:
    if (v37 != 2)
    {
      goto LABEL_437;
    }
  }

  if (v25[2] != 63)
  {
    v53 = 0;
    if ((v24 & 0x1000) != 0)
    {
      v55 = 3;
    }

    else
    {
      v54 = v195++;
      if (v54 <= 99)
      {
        v55 = 3;
      }

      else
      {
        v55 = 6;
      }
    }

    v101 = HIDWORD(v178);
    goto LABEL_296;
  }

  HIDWORD(v183) = 0;
  v184 = 0;
  v26 = v25 + 3;
  v42 = v25[3];
  if (v42 > 0x39)
  {
    if (v25[3] <= 0x42u)
    {
      if (v42 - 61 < 2 || v42 == 58)
      {
LABEL_293:
        v53 = 0;
        v193 = v25 + 3;
        goto LABEL_294;
      }

      if (v42 == 60)
      {
        v103 = v25[4];
        v102 = v103;
        v193 = v25 + 4;
        if (v103 == 61 || v102 == 33)
        {
          v23 += 3;
          v53 = 3;
          goto LABEL_294;
        }

        v105 = "unrecognized character after (?<";
        goto LABEL_268;
      }

      goto LABEL_314;
    }

    if (v42 == 82)
    {
      v43 = v25[4];
      v26 = v25 + 4;
      goto LABEL_80;
    }

    if (v42 != 80)
    {
      if (v42 == 67)
      {
        do
        {
          v113 = *++v26;
          v112 = v113;
        }

        while ((v21[v113] & 4) != 0);
        v193 = v26;
        if (v112 == 41)
        {
          v23 += 6;
          goto LABEL_350;
        }

        v105 = "closing) for (?C expected";
        goto LABEL_268;
      }

      goto LABEL_314;
    }

    v120 = v25[4];
    v119 = v25 + 4;
    v118 = v120;
    v193 = v119;
    if ((v120 - 61) >= 2)
    {
      v129 = v22;
      if (v118 == 60)
      {
        v130 = -1;
        do
        {
          v132 = *++v119;
          v131 = v132;
          ++v130;
        }

        while ((v189[v132] & 0x10) != 0);
        v193 = v119;
        if (v131 == 62)
        {
          v53 = 0;
          v133 = v177;
          if (v130 > v177)
          {
            v133 = v130;
          }

          v177 = __PAIR64__(HIDWORD(v177), v133) + 0x100000000;
          goto LABEL_382;
        }

        v139 = "syntax error after (?P";
      }

      else
      {
        v139 = "unrecognized character after (?P";
      }

      goto LABEL_398;
    }

    do
    {
      v122 = *++v119;
      v121 = v122;
    }

    while ((v189[v122] & 0x10) != 0);
    v193 = v119;
    if (v121 == 41)
    {
      v53 = 0;
      v24 = v181;
      goto LABEL_294;
    }

    v138 = "syntax error after (?P";
LABEL_384:
    *a5 = v138;
    v37 = 8;
LABEL_385:
    v24 = v181;
    goto LABEL_399;
  }

  if (v25[3] > 0x2Fu)
  {
    do
    {
      v44 = *++v26;
      v43 = v44;
    }

    while ((v21[v44] & 4) != 0);
LABEL_80:
    v193 = v26;
    if (v43 == 41)
    {
      v45 = v26[1];
      if ((v45 - 42) < 2 || v45 == 63 || v45 == 123)
      {
        v23 += 9;
        v31 = 11;
        goto LABEL_226;
      }

      v23 += 3;
LABEL_350:
      v37 = 2;
LABEL_399:
      v19 = 0;
      goto LABEL_400;
    }

    v105 = "(?R or (?digits must be followed by)";
LABEL_268:
    *a5 = v105;
    v37 = 8;
    goto LABEL_399;
  }

  switch(v42)
  {
    case '!':
      goto LABEL_293;
    case '#':
      for (k = v25 + 4; *k; ++k)
      {
        if (*k == 41)
        {
          v193 = k;
          goto LABEL_350;
        }
      }

      v193 = k;
      v105 = "missing) after comment";
      goto LABEL_268;
    case '(':
      v114 = v25 + 4;
      v115 = v25[4];
      if (v115 == 82)
      {
        v117 = v25[5];
        v116 = v25 + 5;
        if (v117 == 41)
        {
          v53 = 0;
          v193 = v116;
          v23 += 3;
          goto LABEL_294;
        }

LABEL_366:
        v193 = v114;
        v105 = "assertion expected after (?(";
        goto LABEL_268;
      }

      v129 = v22;
      if ((v21[v25[4]] & 4) == 0)
      {
        v193 = v25 + 2;
        v24 = v181;
        if (v115 == 63)
        {
          v134 = v25[5];
          if (v134 <= 0x3D && ((1 << v134) & 0x3000000200000000) != 0)
          {
            v53 = 0;
            goto LABEL_294;
          }
        }

        goto LABEL_366;
      }

      v140 = v25 + 4;
      do
      {
        v142 = *++v140;
        v141 = v142;
      }

      while ((v21[v142] & 4) != 0);
      v23 += 3;
      v193 = v140;
      if (v141 == 41)
      {
        v53 = 0;
LABEL_382:
        v24 = v181;
        v101 = HIDWORD(v178);
        v22 = v129;
        goto LABEL_295;
      }

      v139 = "malformed number after (?(";
LABEL_398:
      *a5 = v139;
      v37 = 8;
      v24 = v181;
      v22 = v129;
      goto LABEL_399;
  }

LABEL_314:
  v184 = 0;
  v124 = &v184;
  while (2)
  {
    if (v42 > 0x68u)
    {
      if (v42 > 0x72u)
      {
        if (v42 == 115)
        {
          v125 = 4;
        }

        else
        {
          if (v42 != 120)
          {
            goto LABEL_383;
          }

          v125 = 8;
        }
      }

      else if (v42 == 105)
      {
        v125 = 1;
      }

      else
      {
        if (v42 != 109)
        {
          goto LABEL_383;
        }

        v125 = 2;
      }

LABEL_332:
      *v124 |= v125;
LABEL_333:
      v126 = *++v26;
      LOBYTE(v42) = v126;
      continue;
    }

    break;
  }

  if (v42 > 0x54u)
  {
    if (v42 == 85)
    {
      v125 = 512;
    }

    else
    {
      if (v42 != 88)
      {
        goto LABEL_383;
      }

      v125 = 64;
    }

    goto LABEL_332;
  }

  if (v42 == 45)
  {
    v124 = &v183 + 1;
    goto LABEL_333;
  }

  if (v42 == 41)
  {
    v193 = v26;
    v135 = BYTE4(v183);
    v136 = v184;
    if (!v22)
    {
      v181 = (v184 | v181) & ~HIDWORD(v183);
      HIDWORD(v183) = 0;
      v184 = 0;
      v22 = -1;
      v135 = 0;
      v136 = 0;
    }

    v137 = v135 | v136;
    if ((v137 & 7) != 0)
    {
      v23 += 4;
      v181 |= (v137 & 1) << 27;
      if (v178 == 3 || !v178)
      {
        LODWORD(v178) = v178 + 2;
      }
    }

    v37 = 2;
    goto LABEL_385;
  }

  if (v42 != 58)
  {
LABEL_383:
    v193 = v26;
    v138 = "unrecognized character after (?";
    goto LABEL_384;
  }

  v193 = v26;
  if (((BYTE4(v183) | v184) & 7) != 0)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (((BYTE4(v183) | v184) & 7) != 0)
  {
    v23 += 4;
    v24 = (((BYTE4(v183) | v184) & 1) << 27) | v181;
  }

  else
  {
    v24 = v181;
  }

LABEL_294:
  v101 = HIDWORD(v178);
LABEL_295:
  v55 = 3;
LABEL_296:
  if (v101 <= 0xC7)
  {
    v19 = 0;
    *(&v196[1] + v101) = v178;
    *(&v196[26] + v101) = v23;
    v23 += v55;
    v37 = 2;
    LODWORD(v178) = v53;
    HIDWORD(v178) = v101 + 1;
    goto LABEL_400;
  }

  v160 = "parentheses nested too deeply";
LABEL_436:
  *a5 = v160;
LABEL_437:
  v14 = 0;
  *a6 = v193 - v179;
LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t valid_utf8(char *a1, int a2)
{
  if (a2 < 0)
  {
    a2 = -1;
    v2 = a1;
    do
    {
      v3 = *v2++;
      ++a2;
    }

    while (v3);
  }

  if (a2 >= 1)
  {
    v4 = a1;
    do
    {
      v5 = a2 - 1;
      if (*v4 < 0)
      {
        v7 = *v4;
        if ((~v7 & 0xC0) != 0)
        {
          return (v4 - a1);
        }

        v8 = utf8_table4[*v4 & 0x3F];
        if (a2 <= v8)
        {
          return (v4 - a1);
        }

        v6 = (v4 + 1);
        if ((v4[1] & 0xC0) != 0x80)
        {
          return (v6 - a1);
        }

        v5 -= v8;
        if (utf8_table4[*v4 & 0x3F] > 2u)
        {
          if (v8 == 3)
          {
            if (v7 == 240 && (v4[1] & 0x30) == 0)
            {
              return (v6 - a1);
            }
          }

          else if (v8 == 4)
          {
            if (v7 == 248 && (v4[1] & 0x38) == 0)
            {
              return (v6 - a1);
            }
          }

          else if (v8 == 5 && (v7 > 0xFD || v7 == 252 && (v4[1] & 0x3C) == 0))
          {
            return (v6 - a1);
          }

LABEL_31:
          LODWORD(v4) = 1 - a1 + v4;
          while (1)
          {
            v9 = __OFSUB__(v8--, 1);
            if ((v8 < 0) ^ v9 | (v8 == 0))
            {
              break;
            }

            v10 = *++v6;
            v4 = (v4 + 1);
            if ((v10 & 0xC0) != 0x80)
            {
              return v4;
            }
          }

          goto LABEL_8;
        }

        if (v8 != 1)
        {
          if (v8 == 2 && v7 == 224 && (v4[1] & 0x20) == 0)
          {
            return (v6 - a1);
          }

          goto LABEL_31;
        }

        if ((v7 & 0x3E) == 0)
        {
          return (v6 - a1);
        }
      }

      else
      {
        v6 = v4;
      }

LABEL_8:
      v4 = (v6 + 1);
      a2 = v5;
    }

    while (v5 >= 1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t is_counted_repeat(unsigned __int8 *a1)
{
  if ((digitab[*a1] & 4) == 0)
  {
    return 0;
  }

  do
  {
    v2 = a1;
    v4 = *++a1;
    v3 = v4;
  }

  while ((digitab[v4] & 4) != 0);
  if (v3 != 44)
  {
    return v3 == 125;
  }

  v5 = v2[2];
  if (v5 == 125)
  {
    return 1;
  }

  if ((digitab[v5] & 4) == 0)
  {
    return 0;
  }

  v6 = 2;
  do
  {
    v7 = a1[v6++];
  }

  while ((digitab[v7] & 4) != 0);
  return v7 == 125;
}

uint64_t check_escape(void *a1, const char **a2, int a3, __int16 a4, int a5)
{
  v5 = *a1;
  v7 = (*a1 + 1);
  v6 = *v7;
  if (!*v7)
  {
    v9 = "\\ at end of pattern";
    goto LABEL_6;
  }

  if ((v6 - 123) >= 0xFFFFFFB5)
  {
    v8 = v6 - 48;
    if (escapes_0[(v6 - 48)])
    {
      v6 = escapes_0[v8];
      goto LABEL_7;
    }

    if ((v6 - 49) < 9)
    {
      if (a5)
      {
        goto LABEL_24;
      }

      v11 = v5[2];
      v12 = *a1 + 1;
      v13 = v6 - 48;
      if ((digitab[v5[2]] & 4) != 0)
      {
        v12 = *a1 + 1;
        v13 = v6 - 48;
        do
        {
          v13 = v11 + 10 * v13 - 48;
          v11 = *(v12 + 2);
          v14 = digitab[*(v12 + 2)];
          ++v12;
        }

        while ((v14 & 4) != 0);
      }

      if (v13 >= 10 && v13 > a3)
      {
LABEL_24:
        if (v6 > 0x37)
        {
          v6 = 0;
LABEL_26:
          v7 = v5;
          goto LABEL_7;
        }

LABEL_34:
        v19 = v5 + 3;
        v20 = 2;
        v21 = *a1 + 1;
        while (1)
        {
          v23 = *++v21;
          v22 = v23;
          if ((v23 & 0xF8) != 0x30)
          {
            break;
          }

          LOBYTE(v8) = v22 + 8 * v8 - 48;
          v7 = v21;
          if (!--v20)
          {
            v7 = v19;
            break;
          }
        }

        v6 = v8;
        goto LABEL_7;
      }

      v6 = (-20 - v13);
LABEL_20:
      v7 = v12;
      goto LABEL_7;
    }

    v16 = (v6 - 76);
    if (v16 <= 0x2C)
    {
      if (((1 << (v6 - 76)) & 0x20100000205) != 0)
      {
        v9 = "PCRE does not support \\L, \\l, \\N, \\U, or \\u";
        goto LABEL_6;
      }

      if (v16 == 23)
      {
        v24 = v5[2];
        v5 += 2;
        v6 = v24;
        if (!v24)
        {
          *a2 = "\\c at end of pattern";
          return v6;
        }

        if ((v6 - 97) < 0x1A)
        {
          LODWORD(v6) = v6 - 32;
        }

        v6 = v6 ^ 0x40;
        goto LABEL_26;
      }

      if (v16 == 44)
      {
        if ((a4 & 0x800) == 0 || v5[2] != 123)
        {
          goto LABEL_57;
        }

        v12 = (v5 + 3);
        v17 = v5[3];
        if ((digitab[v5[3]] & 8) != 0)
        {
          LODWORD(v6) = 0;
          v25 = -1;
          do
          {
            if (v17 > 0x60)
            {
              v17 -= 32;
            }

            v27 = *++v12;
            v26 = v27;
            v28 = v17 + 16 * v6;
            if (v17 >= 65)
            {
              v29 = -55;
            }

            else
            {
              v29 = -48;
            }

            v6 = (v28 + v29);
            v17 = v26;
            ++v25;
          }

          while ((digitab[v26] & 8) != 0);
          v18 = v25 > 7;
        }

        else
        {
          v6 = 0;
          v18 = 0;
        }

        if (v17 != 125)
        {
LABEL_57:
          v6 = 0;
          v5 += 3;
          v30 = 2;
          v31 = *a1 + 1;
          while (1)
          {
            v33 = *++v31;
            v32 = v33;
            if ((digitab[v33] & 8) == 0)
            {
              goto LABEL_7;
            }

            v34 = v32 - 32;
            if (v32 <= 0x60)
            {
              v34 = v32;
            }

            v35 = v34 + 16 * v6;
            if (v34 >= 65)
            {
              v36 = -55;
            }

            else
            {
              v36 = -48;
            }

            v6 = (v35 + v36);
            v7 = v31;
            if (!--v30)
            {
              goto LABEL_26;
            }
          }
        }

        if (v6 < 0 || v18)
        {
          *a2 = "character value in \\x{...} sequence is too large";
        }

        goto LABEL_20;
      }
    }

    if (v6 == 48)
    {
      goto LABEL_34;
    }

    if ((a4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    v9 = "unrecognized character follows \";
LABEL_6:
    *a2 = v9;
  }

LABEL_7:
  *a1 = v7;
  return v6;
}

uint64_t get_ucp_0(void *a1, _DWORD *a2, const char **a3)
{
  v5 = *a1;
  v7 = (*a1 + 1);
  v6 = *v7;
  if (!*v7)
  {
LABEL_13:
    v15 = "malformed \\P or \\p sequence";
LABEL_22:
    *a3 = v15;
    *a1 = v7;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (v6 == 123)
  {
    v9 = *(v5 + 2);
    v8 = (v5 + 2);
    if (v9 == 94)
    {
      *a2 = 1;
      v7 = v8;
    }

    ++v7;
    p_s1 = &__s1;
    v11 = 3;
    while (1)
    {
      v12 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }

      if (v12 == 125)
      {
        goto LABEL_15;
      }

      *p_s1++ = v12;
      ++v7;
      if (!--v11)
      {
        --v7;
        while (1)
        {
          v14 = *++v7;
          v13 = v14;
          if (!v14)
          {
            goto LABEL_13;
          }

          if (v13 == 125)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  __s1 = v6;
  p_s1 = v23;
LABEL_15:
  v16 = 0;
  *p_s1 = 0;
  *a1 = v7;
  v17 = 37;
  while (1)
  {
    v18 = (v17 + v16) / 2;
    v19 = &(&utt)[2 * v18];
    v20 = strcmp(&__s1, *v19);
    if (!v20)
    {
      return *(v19 + 2);
    }

    if (v20 <= 0)
    {
      v17 = (v17 + v16) / 2;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 >= v17)
    {
LABEL_21:
      v15 = "unknown property name after \\P or \\p";
      goto LABEL_22;
    }
  }
}

unsigned __int8 *read_repeat_counts_0(unsigned __int8 *result, int *a2, int *a3, const char **a4)
{
  v4 = *result;
  if ((digitab[*result] & 4) != 0)
  {
    v5 = 0;
    v6 = *result;
    do
    {
      v7 = *++result;
      v4 = v7;
      v5 = v6 + 10 * v5 - 48;
      v6 = v7;
    }

    while ((digitab[v7] & 4) != 0);
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 125)
  {
    v8 = v5;
  }

  else
  {
    v10 = *++result;
    v9 = v10;
    if (v10 == 125)
    {
      v8 = -1;
    }

    else
    {
      if ((digitab[v9] & 4) != 0)
      {
        v8 = 0;
        do
        {
          v11 = v9 + 10 * v8;
          v12 = *++result;
          v9 = v12;
          v8 = v11 - 48;
        }

        while ((digitab[v12] & 4) != 0);
      }

      else
      {
        v8 = 0;
      }

      if (v8 < v5)
      {
        v13 = "numbers out of order in {} quantifier";
        goto LABEL_19;
      }
    }
  }

  if (v5 < 0x10000 && v8 < 0x10000)
  {
    *a2 = v5;
    *a3 = v8;
    return result;
  }

  v13 = "number too big in {} quantifier";
LABEL_19:
  *a4 = v13;
  return result;
}

uint64_t get_othercase_range(int *a1, int a2, _DWORD *a3, unsigned int *a4)
{
  v16 = 0;
  v4 = *a1;
  if (*a1 > a2)
  {
    return 0;
  }

  v9 = a2 + 1;
  while (1)
  {
    v10 = ucp_findchar(v4, &v17, &v16);
    v11 = v16;
    if (v10 == 1 && v16 != 0)
    {
      break;
    }

    if (v9 == ++v4)
    {
      return 0;
    }
  }

  *a3 = v16;
  do
  {
    v14 = v11;
    v15 = v4 + 1;
    if (v4 >= a2)
    {
      break;
    }

    if (ucp_findchar(v4 + 1, &v17, &v16) != 1)
    {
      break;
    }

    v11 = v14 + 1;
    ++v4;
  }

  while (v14 + 1 == v16);
  *a4 = v14;
  *a1 = v15;
  return 1;
}

uint64_t ord2utf8(int a1, uint64_t a2)
{
  v2 = 0;
  v3 = &utf8_table1;
  while (1)
  {
    v4 = *v3++;
    if (v4 >= a1)
    {
      break;
    }

    if (--v2 == -6)
    {
      v5 = (a2 + 6);
      v6 = 6;
      LODWORD(v7) = 6;
      goto LABEL_7;
    }
  }

  v6 = -v2;
  v5 = (a2 - v2);
  if (!v2)
  {
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v7 = -v2;
LABEL_7:
  v8 = v7 + 1;
  do
  {
    *v5-- = a1 & 0x3F | 0x80;
    a1 >>= 6;
    --v8;
  }

  while (v8 > 1);
LABEL_9:
  *v5 = utf8_table2[4 * v6] | a1;
  return (v7 + 1);
}

uint64_t compile_regex_0(uint64_t a1, int a2, int *a3, unsigned __int8 **a4, unsigned __int8 **a5, const char **a6, int a7, int a8, int *a9, int *a10, uint64_t a11, uint64_t a12)
{
  v12 = a7;
  v13 = a2;
  v15 = 0;
  v380 = *MEMORY[0x1E69E9840];
  v16 = *a4;
  v17 = &(*a4)[a8];
  v18 = *a5;
  v366 = a11;
  v367 = v16;
  *(v16 + 1) = 0;
  v317 = v16;
  v324 = v16;
  v322 = -2;
  v323 = -2;
  while (2)
  {
    if ((a1 & 7) == v13)
    {
      v19 = (v17 + 3);
    }

    else
    {
      v17[3] = 18;
      v19 = (v17 + 5);
      v17[4] = a1 & 7;
    }

    if (v12)
    {
      v321 = v19 + 1;
      *v19 = 73;
      v19[2] = 0;
      v19 += 3;
    }

    else
    {
      v321 = v15;
    }

    v17 = 0;
    v20 = 0;
    v329 = 0;
    v364 = 0;
    v353 = 0;
    v374 = 0;
    v375 = 0;
    v21 = a1 & 0x800;
    v327 = (a1 >> 11) & 1;
    v373 = v18;
    v372 = 0;
    v337 = (a1 >> 9) & 1;
    v338 = 0;
    v330 = (a1 & 0x200) == 0;
    v357 = (a1 & 1) << 8;
    v22 = 4294967294;
    __src = 0;
    v23 = 4294967294;
    v362 = -2;
    v24 = 4294967294;
    v25 = a12;
    v356 = v21;
    while (1)
    {
      v370 = 0;
      v26 = *v18;
      if (v364 && *v18)
      {
        if (v26 == 92 && v18[1] == 69)
        {
          v364 = 0;
          v373 = v18 + 1;
          goto LABEL_569;
        }

        if (v17)
        {
          *(v17 + 2) = bswap32(v18 - *(v25 + 40) - (bswap32(*(v17 + 1)) >> 16)) >> 16;
        }

        if ((a1 & 0x4000) != 0)
        {
          v31 = v373;
          *v19 = -192;
          v19[2] = (v31 - *(v25 + 40)) >> 8;
          v19[3] = v31 - *(v25 + 40);
          *(v19 + 2) = 0;
          v17 = v19;
          v19 += 6;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_27;
      }

      v27 = 1;
      v358 = v24;
      if ((v26 - 42) >= 2 && v26 != 63)
      {
        if (v26 == 123)
        {
          v28 = v22;
          v29 = v23;
          v30 = is_counted_repeat(v18 + 1);
          v24 = v358;
          v21 = v356;
          v69 = v30 == 0;
          v23 = v29;
          v22 = v28;
          v27 = !v69;
          if (v27)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v27 = 0;
        }

        if (v17)
        {
          if (v353 <= 0)
          {
            v27 = 0;
            *(v17 + 2) = bswap32(v18 - *(v25 + 40) - (bswap32(*(v17 + 1)) >> 16)) >> 16;
            --v353;
            v17 = 0;
            if ((a1 & 8) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_96;
          }

          v27 = 0;
          --v353;
        }
      }

LABEL_62:
      if ((a1 & 8) == 0)
      {
        goto LABEL_63;
      }

LABEL_96:
      if (*(*(v25 + 24) + v26))
      {
        goto LABEL_569;
      }

      if (v26 == 35)
      {
        v55 = v373;
        do
        {
          v57 = *++v55;
          v56 = v57;
          if (v57 == 10)
          {
            v373 = v55;
            goto LABEL_569;
          }
        }

        while (v56);
        v26 = 0;
        v373 = v55;
      }

LABEL_63:
      v45 = (a1 & 0x4000) != 0 ? v27 : 1;
      if (v45)
      {
        v363 = v17;
        v17 = v19;
      }

      else
      {
        v46 = v373;
        *v19 = -192;
        v19[2] = (v46 - *(v25 + 40)) >> 8;
        v19[3] = v46 - *(v25 + 40);
        *(v19 + 2) = 0;
        v17 = (v19 + 6);
        v363 = v19;
      }

      if (v26 > 62)
      {
        break;
      }

      if (v26 > 41)
      {
        switch(v26)
        {
          case '*':
            HIDWORD(v375) = 0;
            break;
          case '+':
            HIDWORD(v375) = 1;
            break;
          case '.':
            if (v24 == -2)
            {
              v22 = 0xFFFFFFFFLL;
            }

            else
            {
              v22 = v24;
            }

            *v17 = 11;
            v19 = (v17 + 1);
            goto LABEL_535;
          default:
            goto LABEL_421;
        }

        LODWORD(v375) = -1;
        goto LABEL_303;
      }

      if (v26 <= 39)
      {
        if (v26 == 36)
        {
          v20 = 0;
          v51 = 20;
LABEL_117:
          *v17++ = v51;
          goto LABEL_118;
        }

        if (v26)
        {
          goto LABEL_421;
        }

        goto LABEL_675;
      }

      if (v26 != 40)
      {
        goto LABEL_675;
      }

      v58 = v373;
      v59 = *++v373;
      if (v59 != 63)
      {
        if ((a1 & 0x1000) == 0)
        {
          goto LABEL_342;
        }

        v160 = 0;
        v161 = 80;
LABEL_386:
        v178 = a1;
        goto LABEL_449;
      }

      v369 = 0;
      v61 = v58 + 2;
      v60 = v58[2];
      v373 = v58 + 2;
      if (v60 <= 57)
      {
        if (v60 > 47)
        {
          goto LABEL_107;
        }

        switch(v60)
        {
          case '!':
            v160 = 0;
            v373 = v58 + 3;
            v161 = 70;
            goto LABEL_447;
          case '#':
            v269 = v58 + 2;
            do
            {
              v270 = *++v269;
            }

            while (v270 != 41);
            v373 = v269;
            v216 = 4;
            goto LABEL_496;
          case '(':
            v222 = v58 + 3;
            v223 = v58[3];
            if (v223 == 82)
            {
              *(v17 + 3) = -180;
              v17[5] = -1;
              v373 += 3;
              goto LABEL_654;
            }

            if (!digitab[v223])
            {
              v160 = 0;
              v161 = 75;
              goto LABEL_447;
            }

            v287 = v223 - 48;
            v289 = v58 + 4;
            v288 = v58[4];
            if (v288 != 41)
            {
              v222 = v58 + 3;
              do
              {
                v287 = v288 + 10 * v287 - 48;
                v288 = v222[2];
                ++v222;
              }

              while (v288 != 41);
              v289 = v222 + 1;
            }

            v373 = v289;
            if (v287)
            {
              v373 = v222 + 2;
              v17[3] = 76;
              v17[4] = BYTE1(v287);
              v17[5] = v287;
LABEL_654:
              v161 = 75;
              v160 = 3;
              goto LABEL_447;
            }

            *a6 = "invalid condition (?(0)";
            v338 = 75;
            v216 = 9;
LABEL_496:
            v19 = v17;
            v17 = v363;
            goto LABEL_581;
        }

        goto LABEL_609;
      }

      if (v60 <= 61)
      {
        switch(v60)
        {
          case ':':
            v160 = 0;
            v373 = v58 + 3;
            v161 = 80;
            goto LABEL_447;
          case '<':
            v268 = v58[3];
            v373 = v58 + 3;
            if (v268 != 33)
            {
              if (v268 == 61)
              {
                v160 = 0;
                v373 = v58 + 4;
                v161 = 71;
                goto LABEL_447;
              }

              v160 = 0;
              v178 = a1;
LABEL_659:
              v161 = v338;
LABEL_448:
              if (v161 < 74)
              {
                v20 = 0;
              }

              else
              {
LABEL_449:
                v20 = v17;
              }

              *v17 = v161;
              v374 = v17;
              v203 = *(v25 + 72);
              v338 = v161;
              v204 = compile_regex_0(v178, a1 & 7, a3, &v374, &v373, a6, (v161 - 71) < 2, v160, &v370, &v370 + 4, &v366, v25);
              v21 = v356;
              v205 = v358;
              if (!v204)
              {
                goto LABEL_710;
              }

              if (v338 == 75)
              {
                v206 = 1;
                do
                {
                  v17 += __rev16(*(v17 + 1));
                  --v206;
                }

                while (*v17 != 66);
                if (-v206 != 1 && v206 != 0)
                {
                  v309 = "conditional group contains more than two branches";
                  goto LABEL_709;
                }

                if (!v206)
                {
                  v370 = -1;
                }
              }

              if (v338 > 79 || (v338 & 0xFFFFFFFE) == 0x4A)
              {
                v17 = v363;
                if (v358 == -2)
                {
                  v207 = v370 >= 0;
                  if (v370 < 0)
                  {
                    v210 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v210 = v370;
                  }

                  v205 = 0xFFFFFFFFLL;
                  v209 = HIDWORD(v370);
                }

                else
                {
                  v207 = 0;
                  v209 = HIDWORD(v370);
                  if ((v370 & 0x80000000) == 0 && v370 < 0)
                  {
                    v207 = 0;
                    v209 = v370 | v203;
                    HIDWORD(v370) = v370 | v203;
                  }

                  v210 = v358;
                }

                if (v209 < 0)
                {
                  v209 = v362;
                }
              }

              else
              {
                v207 = 0;
                v208 = SHIDWORD(v370) > -1 && v338 == 69;
                v209 = v362;
                if (v208)
                {
                  v209 = HIDWORD(v370);
                }

                v210 = v358;
                v17 = v363;
              }

              if (*v373 == 41)
              {
                v329 = v207;
                v19 = v374;
                v22 = v205;
                v23 = v362;
                v362 = v209;
                v24 = v210;
                goto LABEL_569;
              }

              v309 = "missing)";
LABEL_709:
              *a6 = v309;
              goto LABEL_710;
            }

            v160 = 0;
            v373 = v58 + 4;
            v161 = 72;
LABEL_447:
            v178 = a1;
            goto LABEL_448;
          case '=':
            v160 = 0;
            v373 = v58 + 3;
            v161 = 69;
            goto LABEL_447;
        }

        goto LABEL_609;
      }

      if (v60 <= 79)
      {
        if (v60 == 62)
        {
          v160 = 0;
          v373 = v58 + 3;
          v161 = 74;
          goto LABEL_447;
        }

        if (v60 == 67)
        {
          *v17 = 64;
          v189 = v17 + 1;
          v190 = v373 + 1;
          v191 = v373[1];
          if ((digitab[v191] & 4) == 0)
          {
            LOBYTE(v192) = 0;
            ++v373;
LABEL_646:
            v20 = 0;
            v17[1] = v192;
            v17[2] = (v373 - *(v25 + 40) + 1) >> 8;
            v17[3] = v373 - *(v25 + 40) + 1;
            *(v17 + 2) = 0;
            v19 = (v17 + 6);
            v353 = 1;
            v216 = 4;
            goto LABEL_581;
          }

          v192 = 0;
          do
          {
            v192 = v191 + 10 * v192 - 48;
            v286 = *++v190;
            LODWORD(v191) = v286;
          }

          while ((digitab[v286] & 4) != 0);
          v373 = v190;
          if (v192 < 256)
          {
            goto LABEL_646;
          }

          *a6 = "number after (?C is > 255";
          v353 = 1;
          v216 = 9;
          v363 = v17;
LABEL_670:
          v17 = v189;
          goto LABEL_496;
        }

        goto LABEL_609;
      }

      if (v60 == 80)
      {
        v260 = v58[3];
        v373 = v58 + 3;
        if ((v260 - 61) < 2)
        {
          v336 = v23;
          v351 = v22;
          v261 = a1;
          v262 = *(a12 + 48);
          v263 = v58 + 3;
          v264 = 0xFFFFFFFF00000000;
          do
          {
            v265 = *++v263;
            v264 += 0x100000000;
          }

          while (v265 != 41);
          v373 = v263;
          v266 = *(a12 + 56);
          if (v266 < 1)
          {
LABEL_600:
            *a6 = "reference to non-existent subpattern";
            v216 = 9;
            a1 = v261;
            v25 = a12;
            v21 = v356;
            v24 = v358;
            v22 = v351;
            v23 = v336;
            goto LABEL_496;
          }

          v267 = v264 >> 32;
          while (strncmp(v58 + 4, v262 + 2, v267))
          {
            v262 += *(a12 + 60);
            if (!--v266)
            {
              goto LABEL_600;
            }
          }

          v290 = *v262;
          v291 = *(v262 + 1);
          v62 = v291 | (v290 << 8);
          if (v260 != 62)
          {
            *v17 = 62;
            v17[1] = v290;
            v17[2] = v291;
            v189 = v17 + 3;
            v292 = 1 << v62;
            if (v62 >= 0x20)
            {
              v292 = 1;
            }

            v25 = a12;
            v293 = *(a12 + 64);
            *(a12 + 68) |= v292;
            a1 = v261;
            v21 = v356;
            v24 = v358;
            v22 = v351;
            v23 = v336;
            if (v62 > v293)
            {
              *(a12 + 64) = v62;
            }

            v216 = 4;
            v20 = v17;
            goto LABEL_670;
          }

          a1 = v261;
          v25 = a12;
          v21 = v356;
          v24 = v358;
          v22 = v351;
          v23 = v336;
LABEL_427:
          *v17 = 0;
          v197 = *(v25 + 32);
          if (v62)
          {
            for (i = *v197; i; v197 = v201)
            {
              if (i < 0x51)
              {
                v200 = OP_lengths[i];
                v201 = &v197[v200];
                if (v21)
                {
                  if (i - 24 < 9 || i - 21 < 2)
                  {
                    v201 = &v197[v200 - 1];
                    do
                    {
                      v202 = *++v201;
                      i = v202;
                    }

                    while ((v202 & 0xC0) == 0x80);
                    continue;
                  }

                  if (i == 61)
                  {
                    v201 += __rev16(*(v201 + 1)) + 1;
                  }
                }
              }

              else
              {
                if (i < 0xB5)
                {
                  v199 = i - 80;
                }

                else
                {
                  v199 = __rev16(*(v197 + 2));
                }

                if (v199 == v62)
                {
                  goto LABEL_493;
                }

                v201 = v197 + 3;
              }

              i = *v201;
            }

LABEL_495:
            *a6 = "reference to non-existent subpattern";
            v216 = 9;
            v20 = v17;
            goto LABEL_496;
          }

          if (!v197)
          {
            goto LABEL_495;
          }

LABEL_493:
          v332 = v23;
          v347 = v22;
          if (__rev16(*(v197 + 1)))
          {
LABEL_494:
            *v17 = 63;
            v17[1] = (v197 - *(v25 + 32)) >> 8;
            v17[2] = v197 - *(v25 + 32);
            v19 = (v17 + 3);
            v216 = 4;
            v20 = v17;
          }

          else
          {
            v257 = &v366;
            do
            {
              v258 = v257[1];
              if (v258 < v197)
              {
                break;
              }

              v259 = could_be_empty_branch(v258, v17, v327);
              v24 = v358;
              v21 = v356;
              if (!v259)
              {
                goto LABEL_494;
              }

              v257 = *v257;
            }

            while (v257);
            *a6 = "recursive call could loop indefinitely";
            v216 = 9;
            v20 = v17;
            v19 = v17;
          }

          v17 = v363;
LABEL_580:
          v22 = v347;
          v23 = v332;
          goto LABEL_581;
        }

        if (v260 != 60)
        {
          v160 = 0;
          v178 = a1;
          v25 = a12;
          goto LABEL_659;
        }

        v342 = a1;
        v276 = *(a12 + 48);
        v277 = v58 + 4;
        v278 = 0x100000000;
        v279 = 0xFFFFFFFF00000000;
        v280 = v277;
        do
        {
          v281 = *v280++;
          v278 += 0x100000000;
          v279 += 0x100000000;
        }

        while (v281 != 62);
        v373 = v280;
        v282 = *(a12 + 56);
        v283 = v279 >> 32;
        v284 = v278 >> 32;
        if (v282 >= 1)
        {
          v332 = v23;
          v347 = v22;
          while (1)
          {
            v285 = memcmp(v277, v276 + 2, v283);
            if (!v285)
            {
              break;
            }

            if (v285 < 0)
            {
              goto LABEL_672;
            }

            v276 += *(a12 + 60);
            if (!--v282)
            {
              goto LABEL_673;
            }
          }

          if (!v276[v284])
          {
            *a6 = "two named groups have the same name";
            v216 = 9;
            v19 = v17;
            a1 = v342;
            v25 = a12;
            v21 = v356;
            v17 = v363;
            v24 = v358;
            goto LABEL_580;
          }

LABEL_672:
          memmove(&v276[*(a12 + 60)], v276, *(a12 + 60) * v282);
        }

LABEL_673:
        *v276 = (*a3 + 1) >> 8;
        v276[1] = *a3 + 1;
        memcpy(v276 + 2, v277, v283);
        v276[v284] = 0;
        v25 = a12;
        ++*(a12 + 56);
        a1 = v342;
LABEL_342:
        v159 = (*a3)++;
        if (v159 < 100)
        {
          v160 = 0;
          v161 = v159 + 81;
          goto LABEL_447;
        }

        v17[3] = 79;
        v17[4] = BYTE1(*a3);
        v17[5] = *a3;
        v160 = 3;
        v161 = 181;
        goto LABEL_386;
      }

      if (v60 == 82)
      {
        v60 = v58[3];
        v61 = v58 + 3;
LABEL_107:
        if ((digitab[v60] & 4) != 0)
        {
          v62 = 0;
          do
          {
            v195 = 10 * v62 + v60;
            v196 = *++v61;
            LOBYTE(v60) = v196;
            v62 = v195 - 48;
          }

          while ((digitab[v196] & 4) != 0);
        }

        else
        {
          v62 = 0;
        }

        v373 = v61;
        goto LABEL_427;
      }

LABEL_609:
      HIDWORD(v369) = 0;
      v271 = v58 + 3;
      v272 = &v369 + 1;
      while (v60 != 41 && v60 != 58)
      {
        if (v60 <= 104)
        {
          switch(v60)
          {
            case '-':
              v272 = &v369;
              goto LABEL_629;
            case 'U':
              v273 = *v272 | 0x200;
              break;
            case 'X':
              v273 = *v272 | 0x40;
              break;
            default:
              goto LABEL_629;
          }
        }

        else if (v60 > 114)
        {
          if (v60 == 115)
          {
            v273 = *v272 | 4;
          }

          else
          {
            if (v60 != 120)
            {
              goto LABEL_629;
            }

            v273 = *v272 | 8;
          }
        }

        else if (v60 == 105)
        {
          v273 = *v272 | 1;
        }

        else
        {
          if (v60 != 109)
          {
            goto LABEL_629;
          }

          v273 = *v272 | 2;
        }

        *v272 = v273;
LABEL_629:
        v274 = *v271++;
        v60 = v274;
      }

      v275 = v23;
      v373 = v271 - 1;
      v178 = (HIDWORD(v369) | a1) & ~v369;
      if (v60 != 41)
      {
        v160 = 0;
        v373 = v271;
        v161 = 80;
        goto LABEL_448;
      }

      if ((a1 & 7) != ((BYTE4(v369) | a1) & ~v369 & 7))
      {
        *v17 = 18;
        v17[1] = v178 & 7;
        v17 += 2;
      }

      v20 = 0;
      v337 = (v178 >> 9) & 1;
      v330 = (v178 & 0x200) == 0;
      v357 = (v178 & 1) << 8;
      v216 = 4;
      a1 = v178;
      v19 = v17;
      v17 = v363;
      v23 = v275;
LABEL_581:
      if (v216 != 4)
      {
LABEL_710:
        result = 0;
        *a5 = v373;
        goto LABEL_711;
      }

LABEL_569:
      v18 = ++v373;
    }

    if (v26 <= 93)
    {
      if (v26 != 63)
      {
        if (v26 != 91)
        {
          if (v26 == 92)
          {
            v47 = v23;
            v48 = v22;
            v49 = check_escape(&v373, a6, *a3, a1, 0);
            v50 = v49;
            if ((v49 & 0x80000000) == 0)
            {
              v21 = v356;
              if (v356 && v49 >= 0x80)
              {
                v34 = ord2utf8(v49, &v376);
                v21 = v356;
                v19 = v17;
                v17 = v363;
                v24 = v358;
                goto LABEL_33;
              }

              v376 = v49;
              v24 = v358;
              goto LABEL_39;
            }

            v21 = v356;
            v24 = v358;
            if (v49 != -19)
            {
              if (v49 + 15 >= 0xB)
              {
                v188 = -2;
              }

              else
              {
                v188 = -1;
              }

              if (v358 == -2)
              {
                v22 = v188;
              }

              else
              {
                v22 = v358;
              }

              if (v49 <= 0xFFFFFFEC)
              {
                *v17 = 62;
                v17[1] = (-20 - v49) >> 8;
                v17[2] = -20 - v49;
                v19 = (v17 + 3);
                goto LABEL_535;
              }

              if ((v49 & 0xFFFFFFFE) == 0xFFFFFFF2)
              {
                HIDWORD(v369) = 0;
                v219 = v22;
                ucp_0 = get_ucp_0(&v373, &v369 + 1, a6);
                v21 = v356;
                if (HIDWORD(v369) == (v50 == -14))
                {
                  v221 = 13;
                }

                else
                {
                  v221 = 14;
                }

                *v17 = v221;
                v19 = (v17 + 2);
                v17[1] = ucp_0;
                v22 = v219;
                v20 = v17;
                v23 = v362;
                v24 = v219;
                goto LABEL_537;
              }

              if (v49 + 15 >= 0xB)
              {
                v20 = 0;
              }

              else
              {
                v20 = v17;
              }

              *v17 = -v49;
              v19 = (v17 + 1);
              goto LABEL_536;
            }

            if (v373[1] != 92)
            {
              v364 = 1;
              v19 = v17;
              v17 = v363;
              v22 = v48;
              v23 = v47;
              goto LABEL_569;
            }

            v22 = v48;
            v23 = v47;
            if (v373[2] == 69)
            {
              v373 += 2;
            }

            else
            {
              v364 = 1;
            }

LABEL_118:
            v19 = v17;
            goto LABEL_537;
          }

LABEL_421:
          v19 = v17;
          v17 = v363;
LABEL_27:
          v376 = v26;
          if (!v21 || (v26 & 0xC0) != 0xC0)
          {
            v363 = v17;
            v17 = v19;
            goto LABEL_39;
          }

          v32 = v373;
          v33 = v373[1];
          v34 = 1;
          if ((v33 & 0xC0) == 0x80)
          {
            v35 = v377;
            do
            {
              *v35++ = v33;
              v33 = v32[2];
              ++v34;
              ++v32;
            }

            while ((v33 & 0xC0) == 0x80);
          }

          v373 = v32;
LABEL_33:
          if (a1)
          {
            v36 = 22;
          }

          else
          {
            v36 = 21;
          }

          *v19 = v36;
          v37 = v19 + 1;
          if (v34 >= 1)
          {
            goto LABEL_43;
          }

          v38 = 0;
          goto LABEL_46;
        }

        v64 = v373;
        v67 = v373[1];
        v65 = v373 + 1;
        v66 = v67;
        v68 = (1 << v67) & 0x2400400000000000;
        v69 = v67 > 0x3D || v68 == 0;
        if (!v69)
        {
          v70 = v373 + 2;
          if (v373[2] == 94)
          {
            v70 = v373 + 3;
          }

          do
          {
            v72 = *v70++;
            v71 = v72;
          }

          while ((*(*(v25 + 24) + v72) & 2) != 0);
          if (v71 == v66 && *v70 == 93)
          {
            v309 = "POSIX collating elements are not supported";
            if (v66 == 58)
            {
              v309 = "POSIX named classes are supported only within a class";
            }

            goto LABEL_709;
          }
        }

        ++v373;
        LODWORD(v73) = v66;
        v331 = v66;
        if (v66 == 94)
        {
          LODWORD(v73) = v64[2];
          v373 = v64 + 2;
          v65 = v64 + 2;
        }

        v344 = 0;
        v74 = 0;
        v19 = (v17 + 2);
        v75 = v17 + 36;
        v378 = 0u;
        v379 = 0u;
        v76 = -1;
        v325 = v17 + 36;
        v339 = a1;
        while (2)
        {
          if (v21 && v73 < 0 && (v73 & 0xC0) == 0xC0)
          {
            v77 = utf8_table4[v73 & 0x3F];
            LODWORD(v73) = (utf8_table3[v77] & v73) << (6 * v77);
            v78 = (v65 + 1);
            if (v77 <= 1)
            {
              v79 = 1;
            }

            else
            {
              v79 = v77;
            }

            v80 = 6 * v77 - 6;
            do
            {
              v81 = *v78++;
              LODWORD(v73) = ((v81 & 0x3F) << v80) | v73;
              v80 -= 6;
              --v79;
            }

            while (v79);
            v65 += v77;
            v373 = v65;
          }

          if (v364)
          {
            if (v73 == 92)
            {
              v83 = v65[1];
              v82 = v65 + 1;
              if (v83 == 69)
              {
                goto LABEL_143;
              }

              LODWORD(v73) = 92;
              goto LABEL_188;
            }

LABEL_185:
            if (v21 && (v73 > 255 || (a1 & (v73 > 127)) != 0))
            {
              v344 = 1;
              *v75 = 1;
              v75 += ord2utf8(v73, (v75 + 1)) + 1;
              if ((a1 & 1) == 0)
              {
                goto LABEL_198;
              }

              LODWORD(v369) = 0;
              if ((ucp_findchar(v73, &v369 + 1, &v369) & 0x80000000) == 0 && v369 >= 1)
              {
                *v75 = 1;
                v75 += ord2utf8(v369, (v75 + 1)) + 1;
              }

              v24 = v358;
              v344 = 1;
LABEL_203:
              v21 = v356;
              goto LABEL_191;
            }

LABEL_188:
            v378.i8[v73 / 8] |= 1 << (v73 & 7);
            if (a1)
            {
              v73 = *(*(a12 + 8) + v73);
              v378.i8[v73 >> 3] |= 1 << (v73 & 7);
            }

            ++v74;
            v76 = v73;
LABEL_191:
            v105 = v373[1];
            v65 = v373 + 1;
            LODWORD(v73) = v105;
            ++v373;
            if (v105 == 93 && v364 == 0)
            {
              if (v74 == 1)
              {
                if (!v21 || (v331 == 94 ? (v157 = v76 < 128) : (v157 = 1), !v157 ? (v158 = 0) : (v158 = 1), !v344 && v158))
                {
                  if (v331 != 94)
                  {
                    v25 = a12;
                    if (v21 && v76 >= 128)
                    {
                      v34 = ord2utf8(v76, &v376);
                      v24 = v358;
                      v21 = v356;
                      v364 = 0;
                      v19 = v17;
                      v17 = v363;
                      goto LABEL_33;
                    }

                    v364 = 0;
                    v376 = v76;
LABEL_39:
                    if (a1)
                    {
                      v39 = 22;
                    }

                    else
                    {
                      v39 = 21;
                    }

                    *v17 = v39;
                    v37 = (v17 + 1);
                    v34 = 1;
                    v19 = v17;
                    v17 = v363;
LABEL_43:
                    v40 = &v376;
                    v41 = v34;
                    do
                    {
                      v42 = *v40++;
                      v36 = v42;
                      *v37++ = v42;
                      --v41;
                    }

                    while (v41);
                    v38 = v34 == 1;
LABEL_46:
                    if (v357)
                    {
                      v43 = v38;
                    }

                    else
                    {
                      v43 = 1;
                    }

                    if (v24 == -2)
                    {
                      if (!v43)
                      {
                        v22 = 0xFFFFFFFFLL;
                        v20 = v19;
                        v19 = v37;
                        v23 = v362;
                        v362 = -1;
                        v24 = 0xFFFFFFFFLL;
                        goto LABEL_569;
                      }

                      v24 = v357 | v376;
                      if (!v38)
                      {
                        v23 = v362;
                        v44 = *(v25 + 72) | v36;
                        v22 = 0xFFFFFFFFLL;
                        v20 = v19;
                        v19 = v37;
                        goto LABEL_52;
                      }

                      v22 = 0xFFFFFFFFLL;
                      v20 = v19;
                      v19 = v37;
                    }

                    else
                    {
                      if (v43)
                      {
                        v23 = v362;
                        v44 = *(v25 + 72) | v357 | v36;
                        v20 = v19;
                        v19 = v37;
                        v22 = v24;
LABEL_52:
                        v362 = v44;
                        goto LABEL_569;
                      }

                      v20 = v19;
                      v19 = v37;
                      v22 = v24;
                    }

                    v23 = v362;
                    goto LABEL_569;
                  }

                  v364 = 0;
                  if (v24 == -2)
                  {
                    v22 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v22 = v24;
                  }

                  *v17 = 23;
                  v17[1] = v76;
                  v20 = v17;
                  v23 = v362;
                  v24 = v22;
                  v25 = a12;
LABEL_537:
                  v17 = v363;
                  goto LABEL_569;
                }
              }

              if (v24 == -2)
              {
                v22 = 0xFFFFFFFFLL;
              }

              else
              {
                v22 = v24;
              }

              if (v344)
              {
                *v75 = 0;
                v176 = (v75 + 1);
                *v17 = 61;
                v17[3] = v331 == 94;
                if (v74 < 1)
                {
                  v217 = v176 - v325;
                  v218 = v22;
                  memmove(v17 + 4, v325, v217);
                  v22 = v218;
                  v21 = v356;
                  v19 = &v17[v217 + 1 + 3];
                }

                else
                {
                  v17[3] = (v331 == 94) | 2;
                  v177 = v378;
                  *(v17 + 20) = v379;
                  *(v17 + 4) = v177;
                  v19 = v176;
                }

                v25 = a12;
                v364 = 0;
                *(v17 + 1) = bswap32(v19 - v17) >> 16;
              }

              else
              {
                v193 = (v17 + 1);
                v25 = a12;
                if (v331 == 94)
                {
                  v237 = 0;
                  *v17 = 60;
                  do
                  {
                    v193->i8[v237] = ~v378.i8[v237];
                    ++v237;
                  }

                  while (v237 != 32);
                }

                else
                {
                  *v17 = 59;
                  v194 = v379;
                  *v193 = v378;
                  *(v17 + 17) = v194;
                }

                v364 = 0;
                v19 = (v17 + 33);
              }

LABEL_535:
              v20 = v17;
LABEL_536:
              v23 = v362;
              v24 = v22;
              goto LABEL_537;
            }

            continue;
          }

          break;
        }

        if (v73 != 92)
        {
          if (v73 == 91)
          {
            v84 = v65[1];
            LODWORD(v73) = 91;
            if (v84 <= 0x3D && ((1 << v84) & 0x2400400000000000) != 0)
            {
              v85 = 0;
              v88 = v65[2];
              v86 = (v65 + 2);
              v87 = v88;
              if (v88 == 94)
              {
                v89 = v86 + 1;
              }

              else
              {
                v89 = v86;
              }

              do
              {
                v90 = v89[v85];
                v91 = *(*(a12 + 24) + v89[v85++]);
              }

              while ((v91 & 2) != 0);
              if (v90 == v84 && v89[v85] == 93)
              {
                if (v84 != 58)
                {
                  v309 = "POSIX collating elements are not supported";
                  goto LABEL_709;
                }

                v92 = 0;
                v93 = 0;
                v365 = *(a12 + 16);
                v373 = v89;
                while (posix_name_lengths_0[v93] + 1 != v85 || strncmp(v89, posix_names_0[v93], (v85 - 1)))
                {
                  ++v93;
                  v92 += 3;
                  if (v93 == 14)
                  {
                    v309 = "unknown POSIX class name";
                    goto LABEL_709;
                  }
                }

                v116 = strncmp(v89, "blank", 5uLL);
                v24 = v358;
                v21 = v356;
                v117 = 0;
                if ((v339 & (v93 < 3)) != 0)
                {
                  v118 = 0;
                }

                else
                {
                  v118 = v92;
                }

                while (2)
                {
                  if ((0x36DB6DB41B4uLL >> (v117 + v118)))
                  {
LABEL_250:
                    v364 = 0;
                    v373 = &v89[v85];
                    v74 = 10;
                    a1 = v339;
                    goto LABEL_191;
                  }

                  v119 = posix_class_maps_0[v117 + v118];
                  if (v87 == 94)
                  {
                    v120 = v365 + v119;
                    v121 = 0;
                    if (v117)
                    {
                      do
                      {
                        *(&v378 + v121) = vbicq_s8(*(&v378 + v121), *(v120 + v121));
                        v121 += 16;
                      }

                      while (v121 != 32);
                    }

                    else
                    {
                      do
                      {
                        *(&v378 + v121) = vornq_s8(*(&v378 + v121), *(v120 + v121));
                        v121 += 16;
                      }

                      while (v121 != 32);
                    }

                    if (!v116)
                    {
                      v122 = v378.i8[1] | 0x3C;
                      goto LABEL_248;
                    }
                  }

                  else
                  {
                    v123 = 0;
                    v124 = v365 + v119;
                    do
                    {
                      *(&v378 + v123) = vorrq_s8(*(&v378 + v123), *(v124 + v123));
                      v123 += 16;
                    }

                    while (v123 != 32);
                    if (!v116)
                    {
                      v122 = v378.i8[1] & 0xC3;
LABEL_248:
                      v378.i8[1] = v122;
                    }
                  }

                  if (++v117 == 3)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }
              }

              LODWORD(v73) = 91;
              a1 = v339;
            }
          }

          goto LABEL_171;
        }

        v94 = check_escape(&v373, a6, *a3, a1, 1);
        if (v94 == -19)
        {
          v24 = v358;
          if (v373[1] == 92)
          {
            v82 = v373 + 2;
            v21 = v356;
            if (v373[2] != 69)
            {
              v364 = 1;
              goto LABEL_191;
            }

LABEL_143:
            v364 = 0;
            v373 = v82;
            goto LABEL_191;
          }

          v364 = 1;
          goto LABEL_203;
        }

        LODWORD(v73) = v94;
        v24 = v358;
        if (v94 == -4)
        {
          LODWORD(v73) = 8;
          v21 = v356;
          goto LABEL_171;
        }

        v21 = v356;
        if (v94 == -15)
        {
          LODWORD(v73) = 88;
          goto LABEL_171;
        }

        if ((v94 & 0x80000000) == 0)
        {
LABEL_171:
          v95 = v373;
          if (v373[1] != 45)
          {
            goto LABEL_185;
          }

          v354 = v75;
          v96 = a1;
          v98 = v373 + 2;
          v97 = v373[2];
          if (v97 != 93)
          {
            v373 += 2;
            if (v21 && (v97 & 0xC0) == 0xC0)
            {
              v99 = utf8_table4[v97 & 0x3F];
              LODWORD(v97) = (utf8_table3[v99] & v97) << (6 * v99);
              v100 = (v95 + 3);
              if (v99 <= 1)
              {
                v101 = 1;
              }

              else
              {
                v101 = v99;
              }

              v102 = 6 * v99 - 6;
              do
              {
                v103 = *v100++;
                v97 = ((v103 & 0x3F) << v102) | v97;
                v102 -= 6;
                --v101;
              }

              while (v101);
              v98 += v99;
              v373 = v98;
            }

            if (v97 != 92)
            {
              goto LABEL_183;
            }

            v104 = check_escape(&v373, a6, *a3, v96, 1);
            v24 = v358;
            v21 = v356;
            v97 = v104;
            if ((v104 & 0x80000000) == 0)
            {
              goto LABEL_183;
            }

            if (v104 == -4)
            {
              v97 = 8;
              goto LABEL_183;
            }

            if (v104 == -15)
            {
              v97 = 88;
LABEL_183:
              if (v97 != v73)
              {
                a1 = v96;
                if (v21)
                {
                  if (v97 > 255 || (v96 & (v97 > 127)) != 0)
                  {
                    if ((v96 & 1) == 0)
                    {
                      LODWORD(v108) = v97;
                      goto LABEL_278;
                    }

                    v369 = 0;
                    v108 = v97;
                    v368 = v73;
LABEL_259:
                    v127 = v108;
LABEL_260:
                    v108 = v127;
                    while (get_othercase_range(&v368, v97, &v369 + 1, &v369))
                    {
                      v127 = v369;
                      if (SHIDWORD(v369) < v73 || v369 > v108)
                      {
                        if (SHIDWORD(v369) < v73 && v369 >= v73 - 1)
                        {
                          LODWORD(v73) = HIDWORD(v369);
                          goto LABEL_259;
                        }

                        if (v369 <= v108 || SHIDWORD(v369) > v108 + 1)
                        {
                          v130 = (v354 + 1);
                          if (HIDWORD(v369) == v369)
                          {
                            *v354 = 1;
                          }

                          else
                          {
                            *v354 = 2;
                            v130 += ord2utf8(SHIDWORD(v369), v130);
                          }

                          v354 = (v130 + ord2utf8(v369, v130));
                          goto LABEL_259;
                        }

                        goto LABEL_260;
                      }
                    }

                    a1 = v96;
LABEL_278:
                    *v354 = 2;
                    v131 = &v354[ord2utf8(v73, (v354 + 1)) + 1];
                    v364 = 0;
                    v75 = (v131 + ord2utf8(v108, v131));
                    v344 = 1;
LABEL_198:
                    v21 = v356;
                    v24 = v358;
                    goto LABEL_191;
                  }
                }

                if (v73 <= v97)
                {
                  v109 = v73;
                  v76 = v73 - 1;
                  do
                  {
                    v110 = v76++;
                    if (v76 >= 0)
                    {
                      v111 = v110 + 1;
                    }

                    else
                    {
                      v111 = v110 + 8;
                    }

                    v378.i8[v111 >> 3] |= 1 << (v76 & 7);
                    if (v96)
                    {
                      v112 = *(*(a12 + 8) + v109);
                      v378.i8[v112 >> 3] |= 1 << (v112 & 7);
                    }

                    ++v109;
                  }

                  while (v97 != v76);
                  v364 = 0;
                  v74 = v97 + v74 + 1 - v73;
                }

                else
                {
                  v364 = 0;
                }

                v75 = v354;
                goto LABEL_191;
              }
            }

            else
            {
              v373 = v98 - 2;
            }
          }

          a1 = v96;
          v75 = v354;
          goto LABEL_185;
        }

        v113 = *(a12 + 16);
        if (v94 > -9)
        {
          if (v94 > -7)
          {
            if (v94 == -6)
            {
              v364 = 0;
              v137 = v113[4];
              v138 = v113[5];
              goto LABEL_295;
            }

            if (v94 != -5)
            {
              goto LABEL_297;
            }

            v132 = 0;
            v133 = v113 + 4;
            do
            {
              *(&v378 + v132 * 16) = vornq_s8(*(&v378 + v132 * 16), v133[v132]);
              ++v132;
            }

            while (v132 != 2);
LABEL_283:
            v364 = 0;
          }

          else
          {
            if (v94 == -8)
            {
              for (j = 0; j != 2; ++j)
              {
                *(&v378 + j * 16) = vorrq_s8(*(&v378 + j * 16), v113[j]);
              }

              v364 = 0;
              v126 = v378.i8[1] & 0xF7;
            }

            else
            {
              for (k = 0; k != 2; ++k)
              {
                *(&v378 + k * 16) = vornq_s8(*(&v378 + k * 16), v113[k]);
              }

              v364 = 0;
              v126 = v378.i8[1] | 8;
            }

            v378.i8[1] = v126;
          }
        }

        else
        {
          if ((v94 + 14) < 2)
          {
            HIDWORD(v369) = 0;
            v134 = get_ucp_0(&v373, &v369 + 1, a6);
            if (v134 < 0)
            {
              goto LABEL_710;
            }

            v364 = 0;
            if (HIDWORD(v369) == (v73 == -14))
            {
              v135 = 4;
            }

            else
            {
              v135 = 3;
            }

            *v75 = v135;
            v75[1] = v134;
            v75 += 2;
            v344 = 1;
            goto LABEL_198;
          }

          if (v94 != -10)
          {
            if (v94 == -9)
            {
              v114 = 0;
              v115 = v113 + 10;
              do
              {
                *(&v378 + v114 * 16) = vornq_s8(*(&v378 + v114 * 16), v115[v114]);
                ++v114;
              }

              while (v114 != 2);
              goto LABEL_283;
            }

LABEL_297:
            if ((a1 & 0x40) != 0)
            {
              v309 = "invalid escape sequence in character class";
              goto LABEL_709;
            }

            LODWORD(v73) = *v373;
            goto LABEL_171;
          }

          v364 = 0;
          v137 = v113[10];
          v138 = v113[11];
LABEL_295:
          v378 = vorrq_s8(v378, v137);
          v379 = vorrq_s8(v379, v138);
        }

        v74 += 2;
        goto LABEL_191;
      }

      v375 = 1;
LABEL_303:
      if (!v20)
      {
        v309 = "nothing to repeat";
        goto LABEL_709;
      }

      v139 = HIDWORD(v375) != v375;
      v140 = v362;
      if (!HIDWORD(v375))
      {
        v140 = v23;
      }

      v362 = v140;
      if (HIDWORD(v375))
      {
        v24 = v24;
      }

      else
      {
        v24 = v22;
      }

      v374 = v20;
      v141 = v373[1];
      if (v141 == 43)
      {
        v142 = 0;
        ++v373;
      }

      else
      {
        v142 = v337;
        if (v141 == 63)
        {
          ++v373;
          v142 = v330;
        }
      }

      v143 = *v20;
      if (v143 == 63)
      {
        *(v20 + 3) = *v20;
        v20[5] = v20[2];
        *v20 = 80;
        v144 = v17 + 3 - v20;
        v20[1] = HIBYTE(v144);
        v20[2] = v144;
        v17[3] = 66;
        v17[4] = HIBYTE(v144);
        v17[5] = v144;
        v17 += 6;
        v143 = *v20;
      }

      if (v143 - 21 < 2)
      {
        if (v21 && *(v17 - 1) < 0)
        {
          v340 = a1;
          v145 = v142;
          v146 = v141;
          v147 = v139;
          v148 = v23;
          v149 = v22;
          v150 = v24;
          v151 = 0;
          v152 = v17;
          do
          {
            v153 = *--v152;
            ++v151;
          }

          while ((v153 & 0xC0) == 0x80);
          __memcpy_chk();
          v154 = 0;
          v155 = v151 | 0x80;
          v143 = *v20;
          v21 = v356;
          v24 = v150;
          v22 = v149;
          v23 = v148;
          v139 = v147;
          v141 = v146;
          v142 = v145;
          a1 = v340;
        }

        else
        {
          v155 = *(v17 - 1);
          v154 = 0;
          if (SHIDWORD(v375) >= 2)
          {
            v362 = *(a12 + 72) | v155 | v357;
          }
        }

LABEL_345:
        if (v143 - 13 > 1)
        {
          v156 = -1;
        }

        else
        {
          v156 = v20[1];
        }

LABEL_348:
        v162 = v375;
        if (v375)
        {
          if (v375 != 1)
          {
            *(a12 + 76) = 1;
          }

          v163 = v154 + v142;
          if (HIDWORD(v375) != 1)
          {
            v355 = v139;
            if (!HIDWORD(v375))
            {
              v164 = v20 + 1;
              v17 = v363;
              if (v162 == 1)
              {
                v165 = v163 + 28;
LABEL_391:
                *v20 = v165;
                if (!v21)
                {
                  goto LABEL_562;
                }
              }

              else
              {
                if (v162 == -1)
                {
                  v165 = v163 + 24;
                  goto LABEL_391;
                }

                *v20 = v163 + 30;
                v20[1] = BYTE1(v375);
                v20[2] = v375;
                v164 = v20 + 3;
                if (!v21)
                {
LABEL_562:
                  *v164 = v155;
                  v175 = v164 + 1;
                  if ((v156 & 0x80000000) == 0)
                  {
                    goto LABEL_563;
                  }

                  goto LABEL_564;
                }
              }

LABEL_489:
              if (v155 < 128)
              {
                goto LABEL_562;
              }

              v211 = v155 & 7;
              v212 = v22;
              v213 = v141;
              v214 = v23;
              v215 = v24;
              memcpy(v164, &__src, v211);
              v23 = v214;
              v141 = v213;
              v22 = v212;
              v24 = v215;
              v21 = v356;
              v175 = &v164[v211];
              if ((v156 & 0x80000000) == 0)
              {
LABEL_563:
                *v175++ = v156;
              }

LABEL_564:
              if (v141 == 43)
              {
                v247 = v374;
                v248 = v175 - v374;
                v249 = v22;
                v250 = v23;
                v251 = v24;
                memmove(v374 + 3, v374, v175 - v374);
                v23 = v250;
                v22 = v249;
                v24 = v251;
                v21 = v356;
                *v247 = 74;
                v175[3] = 66;
                v175[4] = (v248 + 3) >> 8;
                v175[5] = v248 + 3;
                v20 = v175 + 6;
                *(v374 + 1) = bswap32(v248 + 3) >> 16;
              }

              else
              {
                v20 = v175;
              }

              v25 = a12;
              v139 = v355;
LABEL_568:
              v19 = v20;
              *(v25 + 72) |= v139 << 9;
              v20 = 0;
              goto LABEL_569;
            }

            *v20 = v154 | 0x20;
            v20[1] = BYTE5(v375);
            v20[2] = BYTE4(v375);
            v164 = v20 + 3;
            v17 = v363;
            if ((v375 & 0x80000000) != 0)
            {
              if (v21 && v155 >= 128)
              {
                v179 = v155 & 7;
                v346 = v22;
                v180 = v141;
                v181 = v23;
                v182 = v20 + 3;
                v183 = v24;
                v184 = v155;
                memcpy(v182, &__src, v179);
                v155 = v184;
                v23 = v181;
                v141 = v180;
                v22 = v346;
                v24 = v183;
                v21 = v356;
                v185 = &v164[v179];
              }

              else
              {
                v20[3] = v155;
                if (v156 < 0)
                {
                  v185 = v20 + 4;
                }

                else
                {
                  v185 = v20 + 5;
                  v20[4] = v156;
                }
              }

              *v185 = v163 + 24;
              v164 = v185 + 1;
              if (!v21)
              {
                goto LABEL_562;
              }

              goto LABEL_489;
            }

            if (v375 != HIDWORD(v375))
            {
              if (v21 && v155 >= 128)
              {
                v166 = v155 & 7;
                v345 = v22;
                v167 = v141;
                v168 = v23;
                v169 = v20 + 3;
                v170 = v24;
                v171 = v155;
                memcpy(v169, &__src, v166);
                v155 = v171;
                v23 = v168;
                v141 = v167;
                v22 = v345;
                v24 = v170;
                v21 = v356;
                v172 = &v164[v166];
                if (v156 < 0)
                {
LABEL_487:
                  LODWORD(v375) = v375 - HIDWORD(v375);
                  *v172 = v163 + 30;
                  v172[1] = BYTE1(v375);
                  v172[2] = v375;
                  v164 = v172 + 3;
                  goto LABEL_488;
                }
              }

              else
              {
                v172 = v20 + 4;
                v20[3] = v155;
                if (v156 < 0)
                {
                  goto LABEL_487;
                }
              }

              *v172++ = v156;
              goto LABEL_487;
            }

LABEL_488:
            if (!v21)
            {
              goto LABEL_562;
            }

            goto LABEL_489;
          }

          if (v162 != 1)
          {
            v355 = v139;
            if (v162 == -1)
            {
              *v20 = v163 + 26;
              v164 = v20 + 1;
            }

            else
            {
              *v17 = v163 + 30;
              v17[1] = (v375 - 1) >> 8;
              v17[2] = v375 - 1;
              v164 = v17 + 3;
            }

            v17 = v363;
            if (!v21)
            {
              goto LABEL_562;
            }

            goto LABEL_489;
          }

          v20 = v17;
        }

LABEL_394:
        v25 = a12;
        v17 = v363;
        goto LABEL_568;
      }

      if (v143 == 23)
      {
        v155 = v20[1];
        v156 = -1;
        v154 = 9;
        goto LABEL_348;
      }

      if (v143 <= 0xF)
      {
        v154 = 18;
        v155 = v143;
        goto LABEL_345;
      }

      if (v143 - 59 <= 3)
      {
        v173 = v375;
        if (!v375)
        {
          goto LABEL_394;
        }

        v355 = v139;
        if (v375 == 1)
        {
          if (HIDWORD(v375))
          {
            goto LABEL_369;
          }

          v238 = v142 + 55;
LABEL_587:
          *v17 = v238;
          v175 = v17 + 1;
        }

        else
        {
          *(a12 + 76) = 1;
          if (v173 == -1 && !HIDWORD(v375))
          {
            v238 = v142 + 51;
            goto LABEL_587;
          }

          if (v173 == -1 && HIDWORD(v375) == 1)
          {
            v238 = v142 + 53;
            goto LABEL_587;
          }

LABEL_369:
          *v17 = v142 + 57;
          v17[1] = BYTE5(v375);
          v17[2] = BYTE4(v375);
          v174 = v375;
          if (v375 == -1)
          {
            v174 = 0;
          }

          LODWORD(v375) = v174;
          v17[3] = BYTE1(v174);
          v17[4] = v375;
          v175 = v17 + 5;
        }

LABEL_591:
        v17 = v363;
        goto LABEL_564;
      }

      if (v143 <= 0x4F && (v143 & 0xFE) != 0x4A)
      {
        v309 = "internal error: unexpected repeat";
        goto LABEL_709;
      }

      v186 = v375;
      if (v375 == -1)
      {
        v224 = v20;
        do
        {
          v224 = (v224 + __rev16(*(v224 + 1)));
        }

        while (*v224 != 66);
        v187 = v224 - v17;
      }

      else
      {
        v187 = 0;
      }

      v225 = v17 - v20;
      v226 = HIDWORD(v375);
      if (HIDWORD(v375))
      {
        v355 = v139;
        v341 = a1;
        v175 = v17;
        if (SHIDWORD(v375) > 1)
        {
          v359 = v187;
          v333 = v142;
          v227 = v23;
          v348 = v22;
          v228 = v362;
          v229 = (v362 & 0x80000000) == 0 || !v329;
          v230 = v24;
          if (!v229)
          {
            v228 = v24;
          }

          v362 = v228;
          v231 = v225;
          v232 = 1;
          v175 = v17;
          do
          {
            memcpy(v175, v20, v231);
            v175 += v231;
            ++v232;
            v226 = HIDWORD(v375);
          }

          while (v232 < SHIDWORD(v375));
          v186 = v375;
          v21 = v356;
          v24 = v230;
          v22 = v348;
          v23 = v227;
          v142 = v333;
          v187 = v359;
          v225 = v17 - v20;
        }

        v233 = 0;
        if (v186 >= 1)
        {
          v186 -= v226;
          LODWORD(v375) = v186;
        }

        v239 = v20;
        if ((v186 & 0x80000000) == 0)
        {
          goto LABEL_546;
        }

LABEL_590:
        v175[v187] = v142 + 67;
        a1 = v341;
        goto LABEL_591;
      }

      if (!v375)
      {
        goto LABEL_394;
      }

      v360 = v187;
      v355 = v139;
      v334 = v23;
      v349 = v22;
      v234 = v24;
      v341 = a1;
      *v17 = 0;
      v235 = v225;
      if (v186 > 1)
      {
        adjust_recurse(v20, 4, v327, a12);
        v236 = v20 + 4;
        memmove(v20 + 4, v20, v235);
        v175 = v17 + 4;
        v233 = (v20 + 2);
        *(v20 + 1) = 80;
        v20[3] = 0;
      }

      else
      {
        adjust_recurse(v20, 1, v327, a12);
        v236 = v20 + 1;
        memmove(v20 + 1, v20, v235);
        v233 = 0;
        v175 = v17 + 1;
      }

      *v20 = v142 + 77;
      v186 = v375 - 1;
      LODWORD(v375) = v186;
      v21 = v356;
      v24 = v234;
      v22 = v349;
      v23 = v334;
      v187 = v360;
      v225 = v17 - v20;
      v239 = v236;
      if (v186 < 0)
      {
        goto LABEL_590;
      }

LABEL_546:
      if (v186)
      {
        v326 = v141;
        v335 = v23;
        v350 = v22;
        v361 = v24;
        v240 = v225;
        *v175 = v142 + 77;
        v241 = v175 + 1;
        v242 = v186 - 1;
        if (v186 != 1)
        {
          v243 = v175 + 2;
          v244 = v17 - v20 + 4;
          do
          {
            v245 = v243 - v233;
            if (!v233)
            {
              v245 = 0;
            }

            v241[1] = HIBYTE(v245);
            v233 = (v241 + 1);
            *v241 = 80;
            v241[2] = v245;
            v246 = v239;
            memcpy(v241 + 3, v239, v240);
            v239 = v246;
            v241 += v240 + 4;
            *(v241 - 1) = v142 + 77;
            v243 += v244;
            --v242;
          }

          while (v242);
          v233 = &v241[-v240 - 3];
        }

        memcpy(v241, v239, v240);
        v175 = &v241[v240];
        v21 = v356;
        v17 = v363;
        v24 = v361;
        v22 = v350;
        v23 = v335;
        v141 = v326;
        if (!v233)
        {
          goto LABEL_573;
        }

LABEL_571:
        v252 = v175 + 1;
        do
        {
          v253 = v252 - v233;
          v254 = &v175[-(v252 - v233)];
          v255 = *(v254 + 1);
          *v175 = 66;
          v256 = __rev16(v255);
          v175[1] = (v252 - v233) >> 8;
          v233 -= v256;
          v175[2] = v253;
          v175 += 3;
          v254[1] = HIBYTE(v253);
          v254[2] = v253;
          v252 += 3;
        }

        while (v256);
      }

      else
      {
        v17 = v363;
        if (v233)
        {
          goto LABEL_571;
        }
      }

LABEL_573:
      a1 = v341;
      goto LABEL_564;
    }

    if (v26 == 94)
    {
      v20 = 0;
      if (v24 == -2)
      {
        v63 = -1;
      }

      else
      {
        v63 = v24;
      }

      if ((a1 & 2) != 0)
      {
        v24 = v63;
      }

      else
      {
        v24 = v24;
      }

      v51 = 19;
      goto LABEL_117;
    }

    if (v26 == 123)
    {
      if ((v27 & 1) == 0)
      {
        v376 = 123;
        goto LABEL_39;
      }

      v52 = v22;
      v53 = v23;
      repeat_counts_0 = read_repeat_counts_0(v373 + 1, &v375 + 1, &v375, a6);
      LODWORD(v24) = v358;
      v21 = v356;
      v373 = repeat_counts_0;
      v23 = v53;
      v22 = v52;
      if (*a6)
      {
        goto LABEL_710;
      }

      goto LABEL_303;
    }

    if (v26 != 124)
    {
      goto LABEL_421;
    }

LABEL_675:
    v294 = v373;
    v295 = *v324;
    v297 = v322 < 0 || v322 == v24;
    if (v323 >= 0)
    {
      v298 = v323;
    }

    else
    {
      v298 = v322;
    }

    v299 = !v297;
    if (v297)
    {
      v300 = v322;
    }

    else
    {
      v300 = -1;
    }

    if (!v299)
    {
      v298 = v323;
    }

    if (v24 > -1 && (v300 & v362 & 0x80000000) != 0)
    {
      v302 = v24;
    }

    else
    {
      v302 = v362;
    }

    v303 = v302 ^ v298;
    v304 = v302 | v298;
    if ((v303 & 0xFFFFFDFF) != 0)
    {
      v304 = -1;
    }

    if (v295 == 65)
    {
      v305 = v300;
    }

    else
    {
      v305 = v24;
    }

    if (v295 == 65)
    {
      v306 = v304;
    }

    else
    {
      v306 = v362;
    }

    v322 = v305;
    v323 = v306;
    v12 = a7;
    v13 = a2;
    v15 = v321;
    if (!a7)
    {
LABEL_706:
      if (*v294 != 124)
      {
        v312 = v324;
        v313 = v17 - v324;
        do
        {
          v314 = __rev16(*(v312 + 1));
          *(v312 + 1) = bswap32(v313) >> 16;
          v312 -= v314;
          v313 = v314;
        }

        while (v314);
        *v17 = 66;
        v17[1] = (v17 - v317) >> 8;
        v17[2] = v17 - v317;
        v315 = (v17 + 3);
        if ((a1 & 7) != a2 && *v294 == 41)
        {
          v17[3] = 18;
          v315 = (v17 + 5);
          v17[4] = a2;
        }

        *a4 = v315;
        *a5 = v294;
        *a9 = v322;
        result = 1;
        *a10 = v323;
        goto LABEL_711;
      }

      *v17 = 65;
      v17[1] = (v17 - v324) >> 8;
      v17[2] = v17 - v324;
      v367 = v17;
      v18 = v294 + 1;
      v324 = v17;
      continue;
    }

    break;
  }

  *v17 = 0;
  fixedlength = find_fixedlength(v324, a1);
  v308 = fixedlength;
  if ((fixedlength & 0x80000000) == 0)
  {
    *v321 = bswap32(fixedlength) >> 16;
    goto LABEL_706;
  }

  result = 0;
  if (v308 == -2)
  {
    v316 = "\\C not allowed in lookbehind assertion";
  }

  else
  {
    v316 = "lookbehind assertion is not fixed length";
  }

  *a6 = v316;
  *a5 = v294;
LABEL_711:
  v311 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t is_anchored_0(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v6 = a4 & a3;
  while (1)
  {
    significant_code_0 = first_significant_code_0((a1 + 3), a2, 2, 0);
    v8 = *significant_code_0;
    if (v8 < 0x51)
    {
      break;
    }

    if (v8 >= 0xB5)
    {
      v9 = __rev16(*(significant_code_0 + 2));
    }

LABEL_8:
    if (!is_anchored_0())
    {
      return 0;
    }

LABEL_9:
    a1 += __rev16(*(a1 + 1));
    if (*a1 != 65)
    {
      return 1;
    }
  }

  v10 = *significant_code_0 & 0x7E;
  if (v10 == 74 || *significant_code_0 == 80 || *significant_code_0 == 69)
  {
    goto LABEL_8;
  }

  if (v10 != 42)
  {
    if ((*significant_code_0 - 3) <= 0xFDu)
    {
      v11 = 0;
      if (*significant_code_0 != 19 || (*a2 & 2) != 0)
      {
        return v11;
      }
    }

    goto LABEL_9;
  }

  if ((*a2 & 4) != 0)
  {
    v11 = 0;
    if (v6 || significant_code_0[1] != 11)
    {
      return v11;
    }

    goto LABEL_9;
  }

  return 0;
}

uint64_t find_firstassertedchar(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = 0xFFFFFFFFLL;
  do
  {
    significant_code_0 = first_significant_code_0((a1 + 3), a2, 1, 1);
    v8 = *significant_code_0;
    v9 = v8 >= 0x50 ? 80 : *significant_code_0;
    result = 0xFFFFFFFFLL;
    v11 = (v9 - 21);
    if (v11 > 0x3B)
    {
      break;
    }

    if (((1 << v11) & 0x63) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v11) & 0x861000000000000) == 0)
    {
      if (v11 != 11)
      {
        return result;
      }

      significant_code_0 += 2;
LABEL_15:
      if (!a3)
      {
        return result;
      }

      v13 = significant_code_0[1];
      if ((v6 & 0x80000000) != 0)
      {
        v6 = v13 & 0xFFFFFEFF | ((*a2 & 1) << 8);
      }

      else if (v6 != v13)
      {
        return result;
      }

      goto LABEL_20;
    }

    firstassertedchar = find_firstassertedchar(significant_code_0, a2, v8 == 69);
    if ((firstassertedchar & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if ((v6 & 0x80000000) != 0)
    {
      v6 = firstassertedchar;
    }

    else if (v6 != firstassertedchar)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    a1 += __rev16(*(a1 + 1));
    result = v6;
  }

  while (*a1 == 65);
  return result;
}

uint64_t is_startline_0(uint64_t a1, int a2, int a3)
{
  v4 = a3 & a2;
  while (1)
  {
    significant_code_0 = first_significant_code_0((a1 + 3), 0, 0, 0);
    v6 = *significant_code_0;
    v7 = *significant_code_0;
    if (v7 >= 0x51)
    {
      if (v7 >= 0xB5)
      {
        v8 = __rev16(*(significant_code_0 + 2));
      }

LABEL_8:
      if (!is_startline_0())
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((v6 & 0x7E) == 0x4A || *significant_code_0 == 80 || *significant_code_0 == 69)
    {
      goto LABEL_8;
    }

    if ((v6 & 0x7E) == 0x2A)
    {
      v9 = 0;
      if (v4 || significant_code_0[1] != 11)
      {
        return v9;
      }

      goto LABEL_9;
    }

    if (*significant_code_0 != 19)
    {
      return 0;
    }

LABEL_9:
    a1 += __rev16(*(a1 + 1));
    if (*a1 != 65)
    {
      return 1;
    }
  }
}

uint64_t nuance_pcre_exec2(void *a1, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, unsigned int a8, _DWORD *a9, int a10, uint64_t (*a11)(__int128 *))
{
  v94 = *MEMORY[0x1E69E9840];
  if ((safeh_HandleCheck(a1, a2, 56663, 32) & 0x80000000) != 0)
  {
    result = 4294967280;
    goto LABEL_5;
  }

  pcre_clearMem(a1);
  if ((a8 & 0xFFFF5A6F) != 0)
  {
    result = 4294967293;
    goto LABEL_5;
  }

  result = 4294967294;
  if (a3 && a5 && (a9 || a10 <= 0))
  {
    if (a10 < 0)
    {
      result = 4294967281;
      goto LABEL_5;
    }

    v22 = 0uLL;
    v90 = 0u;
    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v86, 0, sizeof(v86));
    v82 = 0;
    *__b = 0u;
    v83 = 10000000;
    v91 = 0uLL;
    v23 = *(a3 + 32);
    if (!a4)
    {
      v25 = 0;
      goto LABEL_21;
    }

    v24 = *a4;
    if (*a4)
    {
      v25 = *(a4 + 1);
    }

    else
    {
      v25 = 0;
    }

    if ((v24 & 2) != 0)
    {
      v83 = *(a4 + 2);
      if ((v24 & 4) == 0)
      {
LABEL_19:
        if ((v24 & 8) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v24 & 4) == 0)
    {
      goto LABEL_19;
    }

    *&v91 = *(a4 + 3);
    if ((v24 & 8) == 0)
    {
LABEL_21:
      v93 = 0;
      memset(v92, 0, sizeof(v92));
      memset(v81, 0, sizeof(v81));
      if (v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = &pcre_default_tables;
      }

      if (*a3 == 1346589253)
      {
        v27 = a3;
      }

      else
      {
        v76 = v26;
        v28 = v25;
        v29 = try_flipped(a3, v81, v25, v92);
        if (!v29)
        {
          result = 4294967292;
          goto LABEL_5;
        }

        v27 = v29;
        if (v28)
        {
          v25 = v92;
        }

        else
        {
          v25 = 0;
        }

        v26 = v76;
      }

      v30 = *(v27 + 8);
      *&v87 = a3 + *(v27 + 24) + *(v27 + 26) * *(v27 + 28);
      *(&v87 + 1) = a5;
      LODWORD(v90) = a7;
      v31 = &a5[a6];
      *&v88 = v31;
      v22.i64[0] = __PAIR64__(v30, a8);
      v32.i64[0] = 0x100000001;
      v32.i64[1] = 0x100000001;
      v33 = vandq_s8(vshlq_u32(vzip1q_s32(v22, v22), xmmword_1C37F9FE0), v32);
      *(v86 + 4) = v33;
      DWORD1(v86[1]) = (a8 >> 10) & 1;
      *(&v86[1] + 1) = (a8 & 0xFFFF8000) != 0;
      *(&v90 + 1) = 0;
      *&v85 = v26;
      *(&v85 + 1) = v26 + 832;
      if (a8 >= 0x8000 && (v30 & 0x4000000) != 0)
      {
        result = 4294967283;
        goto LABEL_5;
      }

      v80 = v30;
      v34 = &a5[a7];
      if ((a8 & 0x2000) == 0 && v33.i32[2])
      {
        v73 = v25;
        v77 = v26;
        if ((valid_utf8(a5, a6) & 0x80000000) == 0)
        {
          result = 4294967286;
          goto LABEL_5;
        }

        v25 = v73;
        v26 = v77;
        if (a7 >= 1 && a7 < a6 && *v34 < -64)
        {
          result = 4294967285;
          goto LABEL_5;
        }
      }

      v35 = *(v27 + 18);
      v36 = a10 / 3u;
      if (*(v27 + 18))
      {
        v37 = v36 > v35;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37;
      v67 = v38;
      if (v37)
      {
        LODWORD(v39) = 3 * v36;
        __b[0] = a9;
        v40 = a9;
      }

      else
      {
        v74 = v25;
        v78 = v26;
        v39 = 3 * v35 + 3;
        v40 = heap_Calloc(*(*a1 + 8), 1, 4 * v39);
        __b[0] = v40;
        if (!v40)
        {
          result = 4294967290;
          goto LABEL_5;
        }

        v25 = v74;
        v26 = v78;
      }

      v75 = v80 | a8;
      LODWORD(__b[1]) = v39;
      HIDWORD(__b[1]) = (1431655766 * (2 * v39)) >> 32;
      LODWORD(v86[0]) = 0;
      HIDWORD(v89) = -1;
      v41 = 2 * *(v27 + 16) + 2;
      if (v41 > a10)
      {
        v41 = v39;
      }

      v79 = v41;
      if (v40 && v41 >= 4)
      {
        v42 = &v40[4 * v39];
        v43 = &v42[-4 * (v41 >> 1) + 4];
        v44 = v42 - 4;
        do
        {
          *v44 = -1;
          v44 -= 4;
        }

        while (v44 >= v43);
      }

      v45 = *(v27 + 8);
      if (((v80 | a8) & 0x10) != 0)
      {
        v46 = 0;
      }

      else
      {
        if ((v45 & 0x40000000) != 0)
        {
          v47 = *(v27 + 20);
          if ((*(v27 + 20) & 0x100) != 0)
          {
            v72 = 0;
            v46 = 0;
            LODWORD(v47) = *(v85 + v47);
            goto LABEL_73;
          }

          v46 = 0;
          goto LABEL_72;
        }

        v46 = 0;
        LODWORD(v47) = -1;
        v72 = 1;
        if ((v80 & 0x10000000) != 0 || !v25)
        {
LABEL_73:
          v48 = v34 - 1;
          v49 = a6;
          if ((v45 & 0x20000000) != 0)
          {
            v52 = *(v27 + 22);
            v51 = v52;
            v50 = v26[v52 + 256];
            v68 = (v52 & 0x100) == 0;
          }

          else
          {
            v50 = -1;
            v68 = 1;
            v51 = -1;
          }

          v69 = a7;
          v70 = v47 >= 0;
          v53 = &a5[v49];
          v71 = 4 * v79;
          while (1)
          {
            if (__b[0])
            {
              v54 = v79 < 1;
            }

            else
            {
              v54 = 1;
            }

            if (!v54)
            {
              v55 = __b[0] + v71;
              if (__b[0] + v71 <= __b[0] + 4)
              {
                v55 = __b[0] + 4;
              }

              memset(__b[0], 255, (&v55[~__b[0]] & 0xFFFFFFFFFFFFFFFCLL) + 4);
            }

            if ((v47 & 0x80000000) == 0)
            {
              break;
            }

            if ((v80 & 0x10000000) != 0)
            {
              if (v34 > *(&v87 + 1) + v69 && v34 < v31)
              {
                v63 = v53 - v34;
                while (*(v34 - 1) != 10)
                {
                  ++v34;
                  if (!--v63)
                  {
LABEL_125:
                    v57 = v53;
                    if ((v51 & 0x80000000) == 0)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_126;
                  }
                }
              }

              goto LABEL_106;
            }

            if (!v46)
            {
              goto LABEL_106;
            }

            do
            {
              v57 = v34;
              if (v34 >= v31)
              {
                break;
              }

              ++v34;
            }

            while (((v46[*v57 >> 3] >> (*v57 & 7)) & 1) == 0);
LABEL_107:
            if ((v51 & 0x80000000) == 0)
            {
LABEL_108:
              if (v31 - v57 <= 999 && !DWORD2(v86[1]))
              {
                v60 = &v57[v70];
                if (&v57[v70] > v48)
                {
                  if (v68)
                  {
                    do
                    {
                      v48 = v60;
                      if (v60 >= v31)
                      {
                        break;
                      }

                      ++v60;
                    }

                    while (v51 != *v48);
                  }

                  else
                  {
                    do
                    {
                      v48 = v60;
                      if (v60 >= v31)
                      {
                        break;
                      }

                      ++v60;
                      v61 = *v48;
                    }

                    while (v51 != v61 && v50 != v61);
                  }

                  if (v48 >= v31)
                  {
                    goto LABEL_135;
                  }
                }
              }
            }

LABEL_126:
            *(&v88 + 1) = v57;
            v82 = 0;
            result = match_2(a1, v57, v87, &v82, v80 & 7, a11, v18, v19);
            if (result)
            {
              if (result == 1)
              {
                if ((v67 & 1) == 0)
                {
                  if (a10 >= 4)
                  {
                    memcpy(a9 + 2, __b[0] + 8, 4 * (a10 - 2));
                  }

                  if (SDWORD2(v89) > a10)
                  {
                    LODWORD(v86[0]) = 1;
                  }

                  heap_Free(*(*a1 + 8), __b[0]);
                }

                if (LODWORD(v86[0]))
                {
                  result = 0;
                }

                else
                {
                  result = (SDWORD2(v89) / 2);
                }

                if (a10 >= 2)
                {
                  v66 = v89 - DWORD2(v87);
                  *a9 = v57 - DWORD2(v87);
                  a9[1] = v66;
                }

                else
                {
                  result = 0;
                }
              }

              goto LABEL_5;
            }

            v34 = v57 + 1;
            if (HIDWORD(v86[0]) && v34 < v31)
            {
              v64 = v53 - 1 - v57;
              while ((*v34 & 0xC0) == 0x80)
              {
                ++v34;
                if (!--v64)
                {
                  v34 = v31;
                  break;
                }
              }
            }

            if ((v75 & 0x10) != 0 || v34 > v31)
            {
LABEL_135:
              if ((v67 & 1) == 0)
              {
                heap_Free(*(*a1 + 8), __b[0]);
              }

              if (HIDWORD(v86[1]))
              {
                v65 = DWORD2(v86[1]) == 0;
              }

              else
              {
                v65 = 1;
              }

              if (v65)
              {
                result = 0xFFFFFFFFLL;
              }

              else
              {
                result = 4294967284;
              }

              goto LABEL_5;
            }
          }

          if (v72)
          {
            if (v34 < v31)
            {
              v56 = v53 - v34;
              while (v47 != *v34)
              {
                ++v34;
                if (!--v56)
                {
                  goto LABEL_125;
                }
              }
            }
          }

          else if (v34 < v31)
          {
            v58 = v53 - v34;
            while (v47 != *(v85 + *v34))
            {
              ++v34;
              if (!--v58)
              {
                goto LABEL_125;
              }
            }
          }

LABEL_106:
          v57 = v34;
          goto LABEL_107;
        }

        if (*(v25 + 4))
        {
          v46 = v25 + 8;
        }

        else
        {
          v46 = 0;
        }
      }

      LODWORD(v47) = -1;
LABEL_72:
      v72 = 1;
      goto LABEL_73;
    }

LABEL_20:
    v23 = *(a4 + 4);
    goto LABEL_21;
  }

LABEL_5:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void *pcre_clearMem(void *result)
{
  v1 = result;
  if (*(result + 8) >= 2u)
  {
    v2 = 1;
    do
    {
      v3 = *(v1[1] + 8 * v2);
      if (v3)
      {
        heap_Free(*(*v1 + 8), *v3);
        v5 = *v1;
        v4 = v1[1];
        **(v4 + 8 * v2) = 0;
        heap_Free(*(v5 + 8), *(*(v4 + 8 * v2) + 16));
        v6 = v1[1];
        *(*(v6 + 8 * v2) + 16) = 0;
        v7 = *(v6 + 8 * v2);
      }

      else
      {
        v7 = 0;
      }

      result = heap_Free(*(*v1 + 8), v7);
      *(v1[1] + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 1;
  *(v1 + 6) = 0;
  *(v1 + 14) = 0;
  return result;
}

uint64_t nuance_pcre_ObjOpen(_WORD *a1, int a2, uint64_t a3)
{
  v17 = 0;
  if (!a3)
  {
    return 2320506887;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v17 + 32), "PCRE", 4, 0, "PCRE ObjOpen: Begin", v4, v5, v6, v15);
    v8 = heap_Calloc(*(v17 + 8), 1, 32);
    v13 = v17;
    if (v8)
    {
      *v8 = v17;
      *a3 = v8;
      *(a3 + 8) = 56663;
    }

    else
    {
      log_OutPublic(*(v17 + 32), "PCRE", 1000, 0, v9, v10, v11, v12, v16);
      v13 = v17;
      inited = 2320506890;
    }

    log_OutText(*(v13 + 32), "PCRE", 4, 0, "PCRE ObjOpen: End (%x)", v10, v11, v12, inited);
  }

  return inited;
}

uint64_t nuance_pcre_Init(void *a1, int a2, unsigned int a3, __int16 a4)
{
  v11 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *a1;
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE Init: Begin", v8, v9, v10, v26);
    *(a1 + 10) = 416;
    *(a1 + 8) = 0;
    *(a1 + 11) = a3;
    *(a1 + 6) = 0;
    *(a1 + 14) = 0;
    *(a1 + 9) = a4;
    v13 = heap_Calloc(*(v12 + 8), 1, 8 * a3 + 8);
    a1[1] = v13;
    if (!v13)
    {
      goto LABEL_7;
    }

    v18 = heap_Calloc(*(v12 + 8), 1, 32);
    v19 = *(a1 + 8);
    *(a1[1] + 8 * v19) = v18;
    v20 = *(a1[1] + 8 * v19);
    if (!v20)
    {
      goto LABEL_7;
    }

    v21 = *(a1 + 9) * *(a1 + 10) + 1;
    *(v20 + 8) = v21;
    *v20 = 0;
    v22 = heap_Calloc(*(v12 + 8), 1, v21);
    *v20 = v22;
    if (!v22)
    {
      goto LABEL_7;
    }

    *(v20 + 24) = 0;
    *(v20 + 16) = 0;
    v23 = heap_Calloc(*(v12 + 8), 1, *(a1 + 9) + 1);
    *(v20 + 16) = v23;
    if (v23)
    {
      v24 = *(a1 + 8) + 1;
      *(a1 + 8) = v24;
      *(a1 + 13) = v24;
    }

    else
    {
LABEL_7:
      log_OutPublic(*(v12 + 32), "PCRE", 1000, 0, v14, v15, v16, v17, v27);
      nuance_pcre_DeInit(a1, a2);
      v11 = 2320506890;
    }

    log_OutText(*(v12 + 32), "PCRE", 4, 0, "PCRE ObjOpen: End (%x)", v15, v16, v17, v11);
  }

  return v11;
}

uint64_t nuance_pcre_DeInit(void *a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v6 & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE DeInit : Begin", v3, v4, v5, v16);
    pcre_clearMem(a1);
    v10 = a1[1];
    if (v10)
    {
      if (*v10)
      {
        heap_Free(*(*a1 + 8), **v10);
        v12 = *a1;
        v11 = a1[1];
        **v11 = 0;
        heap_Free(*(v12 + 8), *(*v11 + 16));
        v14 = *a1;
        v13 = a1[1];
        *(*v13 + 16) = 0;
        heap_Free(*(v14 + 8), *v13);
        *a1[1] = 0;
        v10 = a1[1];
      }

      heap_Free(*(*a1 + 8), v10);
      a1[1] = 0;
    }

    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE DeInit : End (%x)", v7, v8, v9, v6);
    return 0;
  }

  return v6;
}

uint64_t nuance_pcre_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a1;
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "PCRE", 4, 0, "PCRE ObjClose : End (%x)", v8, v9, v10, v6);
    return 0;
  }

  return v6;
}

uint64_t nuance_pcre_ErrorToLhError(unsigned int a1)
{
  if (a1 < 0xFFFFFFF0)
  {
    return 2320514663;
  }

  else
  {
    return *(&unk_1C3810984 + a1 + 16);
  }
}

uint64_t ucp_findchar(int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1 != 12063)
  {
    LOWORD(v4) = -26112;
    v5 = 12063;
    v6 = &ucp_table;
    do
    {
      if (v5 <= a1)
      {
        v7 = v6[2];
        if (v7 < 0x1000)
        {
          return 0xFFFFFFFFLL;
        }

        v6 += 3 * (1 << ((v7 >> 12) - 1));
      }

      else
      {
        if ((v4 & 0x8000) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v6 += 3;
      }

      v4 = *v6;
      v5 = v6[1] | (*v6 << 16);
    }

    while (v5 != a1);
    v8 = (v4 >> 8) & 0x3F;
    *a2 = v8;
    if (v8 > 9)
    {
      if (v8 <= 0x1D)
      {
        if (((1 << v8) & 0x7F0000) != 0)
        {
          return 4;
        }

        if (((1 << v8) & 0x7800000) != 0)
        {
          return 5;
        }

        if (((1 << v8) & 0x38000000) != 0)
        {
          return 6;
        }
      }

      if (v8 - 10 < 3)
      {
        return 2;
      }

      if (v8 - 13 < 3)
      {
        return 3;
      }
    }

    else
    {
      if (((v4 >> 8) & 0x3F) <= 4)
      {
        return 0;
      }

      if (v8 - 6 < 3)
      {
        *a3 = 0;
        return 1;
      }

      if (v8 == 5 || v8 == 9)
      {
        v9 = v6[2];
        if ((v9 & 0x100) != 0)
        {
          v10 = v9 & 0xFFF | 0xFFFFF000;
        }

        else
        {
          v10 = v9 & 0xFFF;
        }

        if (v10)
        {
          v11 = v10 + a1;
        }

        else
        {
          v11 = 0;
        }

        *a3 = v11;
        return 1;
      }
    }

    return 0xFFFFFFFFLL;
  }

  *a2 = 26;
  return 5;
}

uint64_t find_fixedlength(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a1 + 3);
  v5 = 0xFFFFFFFFLL;
  while (2)
  {
    v6 = v4;
    v7 = *v4;
    if (v7 >= 0x50)
    {
      v8 = 80;
    }

    else
    {
      v8 = v7;
    }

    result = 4294967294;
    switch(v8)
    {
      case 0:
      case 65:
      case 66:
      case 67:
      case 68:
        if ((v5 & 0x80000000) != 0)
        {
          v5 = v3;
        }

        else if (v5 != v3)
        {
          return 0xFFFFFFFFLL;
        }

        if (v7 == 65)
        {
          v3 = 0;
          v4 = v6 + 3;
          continue;
        }

        return v5;
      case 1:
      case 2:
      case 3:
      case 4:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 64:
      case 73:
      case 76:
      case 79:
        goto LABEL_10;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        goto LABEL_19;
      case 12:
        return result;
      case 13:
      case 14:
        ++v6;
LABEL_19:
        v3 = (v3 + 1);
        v4 = v6 + 1;
        continue;
      case 21:
      case 22:
        v3 = (v3 + 1);
        v4 = v6 + 2;
        if ((a2 & 0x800) != 0)
        {
          v4 = v6 + 1;
          do
          {
            v10 = *++v4;
          }

          while ((v10 & 0xC0) == 0x80);
        }

        continue;
      case 32:
        v3 = v3 + (bswap32(*(v6 + 1)) >> 16);
        v4 = v6 + 4;
        if ((a2 & 0x800) != 0)
        {
          v4 = v6 + 3;
          do
          {
            v11 = *++v4;
          }

          while (v11 < 0);
        }

        continue;
      case 50:
        v3 = v3 + (bswap32(*(v6 + 1)) >> 16);
        v4 = v6 + 4;
        continue;
      case 59:
      case 60:
        goto LABEL_29;
      case 61:
        v6 = &v6[__rev16(*(v6 + 1)) - 33];
LABEL_29:
        v4 = v6 + 33;
        v12 = v6[33];
        if (v12 > 0x3A)
        {
          goto LABEL_34;
        }

        if (((1 << v12) & 0x600000000000000) != 0)
        {
          v13 = __rev16(*(v6 + 17));
          if (v13 != bswap32(*(v6 + 18)) >> 16)
          {
            return 0xFFFFFFFFLL;
          }

          v3 = v13 + v3;
          v4 = v6 + 38;
        }

        else
        {
          if (((1 << v12) & 0x198000000000000) != 0)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_34:
          v3 = (v3 + 1);
        }

        continue;
      case 69:
      case 70:
      case 71:
      case 72:
        do
        {
          v6 += __rev16(*(v6 + 1));
          v7 = *v6;
        }

        while (v7 == 65);
LABEL_10:
        v4 = &v6[OP_lengths[v7]];
        continue;
      case 74:
      case 75:
      case 80:
        result = find_fixedlength(v6, a2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        do
        {
          v6 += __rev16(*(v6 + 1));
        }

        while (*v6 == 65);
        v3 = (result + v3);
        v4 = v6 + 3;
        continue;
      default:
        return 0xFFFFFFFFLL;
    }
  }
}

unsigned __int8 *adjust_recurse(unsigned __int8 *result, int a2, int a3, uint64_t a4)
{
  v4 = result;
  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *v4;
      if (v6 != 63)
      {
        break;
      }

      v9 = __rev16(*(v4 + 1));
      if (*(a4 + 32) + v9 >= result)
      {
        *(v5 + 1) = bswap32(v9 + a2) >> 16;
      }

LABEL_12:
      v4 = v5 + 3;
    }

    if (!*v4)
    {
      return result;
    }

    if (v6 >= 0x51)
    {
      goto LABEL_12;
    }

    v7 = OP_lengths[*v4];
    v4 += v7;
    if (a3)
    {
      if (v6 - 24 < 9 || v6 - 21 < 2)
      {
        v4 = &v5[v7 - 1];
        do
        {
          v8 = *++v4;
        }

        while ((v8 & 0xC0) == 0x80);
      }

      else if (v6 == 61)
      {
        v4 += __rev16(*(v4 + 1)) + 1;
      }
    }
  }
}

uint64_t could_be_empty_branch(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 1;
  significant_code_0 = first_significant_code_0((a1 + 3), 0, 0, 1);
  if (significant_code_0 < a2)
  {
    while (1)
    {
      v7 = *significant_code_0;
      if (v7 < 0x50)
      {
        v5 = 0;
        v12 = 33;
        switch(*significant_code_0)
        {
          case 5u:
          case 6u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x15u:
          case 0x16u:
          case 0x17u:
          case 0x1Au:
          case 0x1Bu:
          case 0x20u:
          case 0x23u:
          case 0x24u:
          case 0x29u:
          case 0x2Cu:
          case 0x2Du:
          case 0x32u:
            return v5;
          case 0x18u:
          case 0x19u:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
            if (a3)
            {
              --significant_code_0;
              do
              {
                v13 = significant_code_0[3] & 0xC0;
                ++significant_code_0;
              }

              while (v13 == 128);
            }

            goto LABEL_17;
          case 0x3Bu:
          case 0x3Cu:
            goto LABEL_20;
          case 0x3Du:
            v12 = __rev16(*(significant_code_0 + 1));
LABEL_20:
            v5 = 0;
            v14 = &significant_code_0[v12];
            v15 = *v14;
            if (v15 > 0x3A)
            {
              return v5;
            }

            if (((1 << v15) & 0x198000000000000) != 0)
            {
              goto LABEL_17;
            }

            if (((1 << v15) & 0x600000000000000) == 0)
            {
              return v5;
            }

            if (__rev16(*(v14 + 1)))
            {
              return 0;
            }

            goto LABEL_17;
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
            return 1;
          default:
            goto LABEL_17;
        }
      }

      if (!__rev16(*(significant_code_0 + 1)))
      {
        return 1;
      }

      v8 = 1;
      do
      {
        while (1)
        {
          v9 = significant_code_0;
          if (v8)
          {
            break;
          }

          v8 = 0;
          v11 = __rev16(*(significant_code_0 + 1));
          significant_code_0 += v11;
          if (v9[v11] != 65)
          {
            goto LABEL_16;
          }
        }

        v10 = could_be_empty_branch(significant_code_0, a2, a3);
        v8 = v10 == 0;
        v11 = __rev16(*(v9 + 1));
        significant_code_0 = &v9[v11];
      }

      while (v9[v11] == 65);
      if (!v10)
      {
        return 0;
      }

LABEL_16:
      significant_code_0 = &v9[v11 + 3];
      v7 = *significant_code_0;
LABEL_17:
      v5 = 1;
      significant_code_0 = first_significant_code_0(&significant_code_0[OP_lengths[v7]], 0, 0, 1);
      if (significant_code_0 >= a2)
      {
        return v5;
      }
    }
  }

  return v5;
}

unsigned __int8 *first_significant_code_0(unsigned __int8 *result, _DWORD *a2, int a3, int a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *result;
        v5 = v4 - 18;
        if ((v4 - 18) > 0x3D)
        {
          goto LABEL_12;
        }

        if (((1 << v5) & 0x70000000000000) == 0)
        {
          break;
        }

        if (!a4)
        {
          return result;
        }

        do
        {
          result += __rev16(*(result + 1));
          v7 = *result;
        }

        while (v7 == 65);
        result += OP_lengths[v7];
      }

      if (((1 << v5) & 0x2400400000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v4 != 18)
      {
        break;
      }

      if (a3 >= 1)
      {
        v6 = result[1];
        if (((*a2 ^ v6) & a3) != 0)
        {
          *a2 = v6;
        }
      }

      result += 2;
    }

LABEL_12:
    if ((v4 - 3) >= 2 || a4 == 0)
    {
      return result;
    }

LABEL_16:
    result += OP_lengths[*result];
  }
}

uint64_t pcre_getMem(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = 0;
  v9 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v19 = 2320506880;
    v20 = *(*a1 + 32);
    v21 = 1001;
    v22 = 0;
    goto LABEL_12;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(v12 + 8 * v13);
  if (*(v14 + 12) + *(a1 + 20) >= *(v14 + 8))
  {
    if (v9 < *(a1 + 22))
    {
      if (v13 + 1 < v9)
      {
        goto LABEL_9;
      }

      v25 = heap_Calloc(*(*a1 + 8), 1, 32);
      v30 = *(a1 + 16);
      *(*(a1 + 8) + 8 * v30) = v25;
      v31 = *(*(a1 + 8) + 8 * v30);
      if (v31)
      {
        v32 = *(a1 + 18) * *(a1 + 20) + 1;
        *(v31 + 8) = v32;
        *v31 = 0;
        *(v31 + 16) = 0;
        v33 = heap_Calloc(*(*a1 + 8), 1, v32);
        *v31 = v33;
        if (v33)
        {
          *(v31 + 24) = 0;
          v35 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 18) + 1);
          *(v31 + 16) = v35;
          if (v35)
          {
            ++*(a1 + 16);
            LOWORD(v13) = *(a1 + 24);
            v12 = *(a1 + 8);
LABEL_9:
            v23 = v13 + 1;
            *(a1 + 24) = v23;
            v14 = *(v12 + 8 * v23);
            if (*(a1 + 26) < v23)
            {
              *(a1 + 26) = v23;
            }

            goto LABEL_3;
          }
        }

        log_OutPublic(*(*a1 + 32), "PCRE", 1000, 0, v34, a6, a7, a8, v37);
        if (*v31)
        {
          heap_Free(*(*a1 + 8), *v31);
          *v31 = 0;
        }

        v36 = *(v31 + 16);
        if (v36)
        {
          heap_Free(*(*a1 + 8), v36);
          *(v31 + 16) = 0;
        }

        heap_Free(*(*a1 + 8), v31);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "PCRE", 1000, 0, v26, v27, v28, v29, v37);
      }

      return 2320506890;
    }

    v19 = 2320506880;
    v20 = *(*a1 + 32);
    v39 = *(a1 + 18);
    v37 = "maxBlocks";
    v22 = "%s%hu%s%hu";
    v21 = 1002;
LABEL_12:
    log_OutPublic(v20, "PCRE", v21, v22, a5, a6, a7, a8, v37);
    return v19;
  }

LABEL_3:
  v15 = *(v14 + 12);
  *(v14 + 12) = v15 + *(a1 + 20);
  *(*(v14 + 16) + *(v14 + 24)) = a2;
  v16 = *(v14 + 24) + 1;
  *(v14 + 24) = v16;
  v17 = *(a1 + 28);
  if (v17 < v16)
  {
    v17 = v16;
    *(a1 + 28) = v16;
  }

  *a3 = *v14 + v15;
  v18 = *(a1 + 20);
  v38 = *(a1 + 22) * v18 * *(a1 + 18);
  log_OutText(*(*a1 + 32), "PCRE", 4, 0, "Memory now in use: %d of %d", a6, a7, a8, *(v14 + 12) + v18 * *(a1 + 24) * v17);
  return 0;
}

uint64_t pcre_freeMem(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (*(result + 16))
  {
    v9 = *(result + 8);
    v10 = *(result + 24);
    v11 = *(v9 + 8 * v10);
    v12 = *(v11 + 12);
    if (v12)
    {
LABEL_5:
      *(v11 + 12) = v12 - *(result + 20);
      v13 = *(v11 + 24) - 1;
      *(v11 + 24) = v13;
      *a2 = *(*(v11 + 16) + v13);
      return result;
    }

    if (*(result + 24))
    {
      *(result + 24) = v10 - 1;
      v11 = *(v9 + 8 * (v10 - 1));
      v12 = *(v11 + 12);
      goto LABEL_5;
    }

    v14 = *(*result + 32);
    v15 = 1004;
  }

  else
  {
    v14 = *(*result + 32);
    v15 = 1003;
  }

  return log_OutPublic(v14, "PCRE", v15, 0, a5, a6, a7, a8, a9);
}

uint64_t match_ref_0(int a1, unsigned __int8 *a2, int a3, void *a4, char a5)
{
  if (a4[12] - a2 < a3)
  {
    return 0;
  }

  v6 = (a4[11] + *(a4[2] + 4 * a1));
  if (a5)
  {
    while (1)
    {
      v7 = __OFSUB__(a3--, 1);
      if (a3 < 0 != v7)
      {
        break;
      }

      v11 = a4[4];
      v12 = *v6++;
      v13 = *(v11 + v12);
      v14 = *a2++;
      if (v13 != *(v11 + v14))
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v7 = __OFSUB__(a3--, 1);
      if (a3 < 0 != v7)
      {
        break;
      }

      v9 = *v6++;
      v8 = v9;
      v10 = *a2++;
      if (v8 != v10)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t match_xclass(int a1, _BYTE *a2)
{
  v3 = *a2 & 1;
  if (a1 <= 255 && (*a2 & 2) != 0 && ((a2[a1 / 8 + 1] >> (a1 & 7)) & 1) != 0)
  {
    return !(*a2 & 1);
  }

  if ((*a2 & 2) != 0)
  {
    v4 = a2 + 33;
  }

  else
  {
    v4 = a2 + 1;
  }

  do
  {
    while (1)
    {
      v5 = *v4;
      if (v5 == 1)
      {
        break;
      }

      if (v5 == 2)
      {
        v10 = (v4 + 2);
        v11 = v4[1];
        if ((~v11 & 0xC0) == 0)
        {
          v12 = utf8_table4[v11 & 0x3F];
          v11 = (utf8_table3[utf8_table4[v11 & 0x3F]] & v11) << (6 * v12);
          v13 = 6 * v12 - 6;
          v14 = v12 + 1;
          do
          {
            v15 = *v10++;
            v11 |= (v15 & 0x3F) << v13;
            v13 -= 6;
            --v14;
          }

          while (v14 > 1);
        }

        v16 = *v10;
        v4 = (v10 + 1);
        if ((~v16 & 0xC0) == 0)
        {
          v17 = utf8_table4[v16 & 0x3F];
          v16 = (utf8_table3[utf8_table4[v16 & 0x3F]] & v16) << (6 * v17);
          v18 = 6 * v17 - 6;
          v19 = v17 + 1;
          do
          {
            v20 = *v4++;
            v16 |= (v20 & 0x3F) << v18;
            v18 -= 6;
            --v19;
          }

          while (v19 > 1);
        }

        if (v11 <= a1 && v16 >= a1)
        {
          return v3 ^ 1;
        }
      }

      else
      {
        if (!*v4)
        {
          return v3;
        }

        v28 = 0;
        v6 = v4 + 2;
        v7 = v4[1];
        v8 = v4[1];
        v9 = ucp_findchar(a1, &v28 + 1, &v28);
        if (v7 < 0)
        {
          v4 = v6;
          if ((v5 != 3) != (v8 - 128 == v9))
          {
            return v3 ^ 1;
          }
        }

        else
        {
          v4 = v6;
          if ((v5 != 3) != (HIDWORD(v28) == v8))
          {
            return v3 ^ 1;
          }
        }
      }
    }

    v21 = v4 + 2;
    v22 = v4[1];
    if ((~v22 & 0xC0) == 0)
    {
      v23 = utf8_table4[v22 & 0x3F];
      v22 = (utf8_table3[utf8_table4[v22 & 0x3F]] & v22) << (6 * v23);
      v24 = 6 * v23 - 6;
      v25 = v23 + 1;
      do
      {
        v26 = *v21++;
        v22 |= (v26 & 0x3F) << v24;
        v24 -= 6;
        --v25;
      }

      while (v25 > 1);
    }

    v4 = v21;
  }

  while (v22 != a1);
  return v3 ^ 1;
}

uint64_t clcml_ObjOpen(_WORD *a1, int a2, char *a3, uint64_t *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  *v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  __src = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  inited = InitRsrcFunction(a1, a2, v62);
  if ((inited & 0x80000000) != 0)
  {
    Str = inited;
    goto LABEL_56;
  }

  v12 = heap_Calloc(*(*v62 + 8), 1, 544);
  *a4 = v12;
  v13 = *(*v62 + 32);
  if (!v12)
  {
    Str = 2358255626;
    log_OutPublic(v13, "FE_CLCML", 60000, 0, v8, v9, v10, v11, v48);
    goto LABEL_56;
  }

  log_OutTraceTuningData(v13, 600, "%s%s", v7, v8, v9, v10, v11, "BEG");
  Object = rsrc_Open(*(*v62 + 8), *(*v62 + 16), 0, 0, *a4 + 8);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = InitRsrcFunction(*(*a4 + 8), *(*a4 + 16), *a4);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v20 = *v62;
  *(**a4 + 64) = *(*v62 + 64);
  *(**a4 + 384) = *(v20 + 384);
  *(**a4 + 24) = *(v20 + 24);
  *(**a4 + 32) = *(v20 + 32);
  Object = paramc_ObjOpen(0, *(*a4 + 8), *(*a4 + 16), (**a4 + 40));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = objc_ObjOpen(0, *(*a4 + 8), *(*a4 + 16), (**a4 + 48));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  *(*a4 + 540) = 0;
  if ((objc_GetObject(*(*v62 + 48), "LANGCODECONVERTER", &v57) & 0x80000000) == 0)
  {
    Object = objc_RegisterObject(*(**a4 + 48), "LANGCODECONVERTER", v57);
    if ((Object & 0x80000000) != 0)
    {
LABEL_53:
      Str = Object;
      goto LABEL_54;
    }

    *(*a4 + 540) = 1;
    objc_ReleaseObject(*(*v62 + 48), "LANGCODECONVERTER");
  }

  if ((paramc_ParamGetStr(*(*v62 + 40), "noclmset", &v55) & 0x80000000) != 0)
  {
    v55 = 0;
  }

  if ((paramc_ParamGetStr(*(*v62 + 40), "datapackagename", &v54) & 0x80000000) != 0)
  {
    v54 = 0;
  }

  if ((paramc_ParamGetUInt(*(*v62 + 40), "pipelineswitchexecuting", &v52) & 0x80000000) != 0)
  {
    v52 = 0;
  }

  if ((paramc_ParamGetStr(*(*v62 + 40), "blockautoinsertionfeclm", &v53) & 0x80000000) != 0)
  {
    v53 = 0;
  }

  *v62 = **a4;
  paramc_ParamSetUInt(*(*v62 + 40), "pipelineswitchexecuting", v52);
  paramc_ParamSetUInt(*(*v62 + 40), "readmode", 1u);
  paramc_ParamSetUInt(*(*v62 + 40), "infiniteloopdetectlimit", 0x2710u);
  paramc_ParamSetStr(*(*v62 + 40), "inputmimetype", "text/plain;charset=utf-8");
  paramc_ParamSetStr(*(*v62 + 40), "numberoutputtranscriptions", "1");
  paramc_ParamSetStr(*(*v62 + 40), "numberoutputorthsubstitutes", "1");
  paramc_ParamSetStr(*(*v62 + 40), "numberpartialorthvariants", "1");
  paramc_ParamSetStr(*(*v62 + 40), "clmvariants", "no");
  paramc_ParamSetStr(*(*v62 + 40), "norichtranscription", "false");
  paramc_ParamSetStr(*(*v62 + 40), "clcpppipelinemode", "internal");
  paramc_ParamSetStr(*(*v62 + 40), "fedatapackaging", a3);
  paramc_ParamSetStr(*(*v62 + 40), "foreignpron", "yes");
  paramc_ParamSetStr(*(*v62 + 40), "fedataprefix", "");
  paramc_ParamSetStr(*(*v62 + 40), "feextcfgdataprefix", "");
  if (v54)
  {
    paramc_ParamSetStr(*(*v62 + 40), "datapackagename", v54);
  }

  if (v55)
  {
    paramc_ParamSetStr(*(*v62 + 40), "noclmset", v55);
  }

  if (v53)
  {
    paramc_ParamSetStr(*(*v62 + 40), "blockautoinsertionfeclm", v53);
  }

  *(*a4 + 120) = 0;
  brokeraux_ComposeBrokerString(*v62, "pipeline", 0, 1, 0, 0, 0, v63, 0x400uLL);
  v21 = *a4;
  Object = brk_DataOpen(*(*v62 + 24));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = brk_DataMap(*(*v62 + 24), *(*a4 + 120), 0, 0, &v61);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = hdrpars_ReadHeader(*(*a4 + 8), *(*a4 + 16), 0, v61, &v60, &v59);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  if (v59)
  {
    *&v50 = 0;
    if (vector_GetElemAt(v59, 0, &v50))
    {
      v22 = 1;
      do
      {
        ssftmap_ObjClose(*v50);
      }

      while (vector_GetElemAt(v59, v22++, &v50));
    }

    vector_ObjClose(v59);
    v59 = 0;
    log_OutPublic(*(*v62 + 32), "FE_CLCML", 60001, 0, v24, v25, v26, v27, v49);
    Str = 2358255623;
    goto LABEL_54;
  }

  if (v61)
  {
    brk_DataUnmap(*(*v62 + 24), *(*a4 + 120), v61);
    v61 = 0;
  }

  v29 = *(*v62 + 8);
  v30 = *a4;
  v50 = xmmword_1F42D61A8;
  v51 = off_1F42D61B8;
  if (vector_ObjOpen(v29, &v50, 1, (v30 + 32)))
  {
    Object = clcpipeline_LoadObject(*(*a4 + 8), *(*a4 + 16), "SYNTHSTREAM", "synthstream", *(*a4 + 32), 0);
    if ((Object & 0x80000000) == 0)
    {
      Object = objc_GetObject(*(*v62 + 48), "SYNTHSTREAM", &v57);
      if ((Object & 0x80000000) == 0)
      {
        *(*a4 + 40) = *(v57 + 1);
        Object = clcpipeline_LoadObject(*(*a4 + 8), *(*a4 + 16), "LINGDB", "lingdb", *(*a4 + 32), 0);
        if ((Object & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(*v62 + 48), "LINGDB", &v57);
          if ((Object & 0x80000000) == 0)
          {
            *(*a4 + 48) = *(v57 + 1);
            Object = clcpipeline_ObjOpen(*(*a4 + 8), *(*a4 + 16), v60, *(*a4 + 32), (*a4 + 24), &v58);
            if ((Object & 0x80000000) == 0)
            {
              paramc_ParamSetStr(*(*v62 + 40), "nativetypeofchar", "utf-8");
              paramc_ParamSetStr(*(*v62 + 40), "inputmimetype", "text/plain;charset=utf-8");
              if (v60)
              {
                ssftmap_ObjClose(v60);
              }

              v35 = *(*(*a4 + 40) + 32);
              NullHandle = safeh_GetNullHandle();
              v37 = *(*a4 + 8);
              v38 = *(*a4 + 16);
              Object = v35(NullHandle);
              if ((Object & 0x80000000) == 0)
              {
                v39 = *(*(*a4 + 48) + 32);
                v40 = safeh_GetNullHandle();
                v41 = *(*a4 + 8);
                v42 = *(*a4 + 16);
                Object = v39(v40);
                if ((Object & 0x80000000) == 0)
                {
                  Object = (*(*(*a4 + 40) + 64))(*(*a4 + 56), *(*a4 + 64), 201, "text/plain;charset=utf-8", 0, 1, *a4 + 88);
                  if ((Object & 0x80000000) == 0)
                  {
                    v43 = 0;
                    while (v43 < *(*(*a4 + 24) + 16))
                    {
                      v44 = v43 + 1;
                      (*(*(*a4 + 40) + 56))(*(*a4 + 56), *(*a4 + 64), (v43 + 1));
                      v45 = *(*(*(*a4 + 24) + 8) + 8 * v43++);
                      if (((*(v45[2] + 96))(v45[3], v45[4], *(*a4 + 56), *(*a4 + 64)) & 0x80000000) != 0)
                      {
                        *(*(*a4 + 24) + 16) = v44 - 1;
                        break;
                      }
                    }

                    Str = paramc_ParamGetStr(*(*v62 + 40), "langcode", &__src);
                    if ((Str & 0x80000000) == 0)
                    {
                      strncpy((*a4 + 128), __src, 3uLL);
                    }

                    goto LABEL_54;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_53;
  }

  Str = 2358255626;
  log_OutPublic(*(*v62 + 32), "FE_CLCML", 60000, 0, v31, v32, v33, v34, v49);
LABEL_54:
  log_OutTraceTuningData(*(*v62 + 32), 600, "%s%s", v15, v16, v17, v18, v19, "END");
  if ((Str & 0x80000000) != 0)
  {
    clcml_ObjClose(*a4);
  }

LABEL_56:
  v46 = *MEMORY[0x1E69E9840];
  return Str;
}

uint64_t vclc_loc_ElemCopyPartsString(const char **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = strlen(*a1) + 1;
  }

  else
  {
    v6 = 1;
  }

  result = heap_Alloc(a2, v6);
  *a3 = result;
  if (result)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = "";
    }

    strcpy(result, v8);
    return 1;
  }

  return result;
}

uint64_t *vclc_loc_ElemFreePartsString(uint64_t *result, void *a2)
{
  if (*result)
  {
    return heap_Free(a2, *result);
  }

  return result;
}

uint64_t clcml_ObjClose(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 && *(v2 + 16))
  {
    v3 = 0;
    LODWORD(v4) = 0;
    do
    {
      v5 = *(*(v2 + 8) + 8 * v3);
      v6 = (*(v5[2] + 112))(v5[3], v5[4]);
      if (v4 > -1 && v6 < 0)
      {
        v4 = v6;
      }

      else
      {
        v4 = v4;
      }

      ++v3;
      v2 = *(a1 + 24);
    }

    while (v3 < *(v2 + 16));
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    brk_DataClose(*(*a1 + 24), v8);
    *(a1 + 120) = 0;
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(*(a1 + 88), *(a1 + 96), NullHandle, v10))
  {
    v18 = (*(*(a1 + 40) + 72))(*(a1 + 88), *(a1 + 96));
    *(a1 + 88) = safeh_GetNullHandle();
    *(a1 + 96) = v11;
    if (v18 >= 0 || v4 <= -1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v18;
    }
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    v21 = (*(*(a1 + 40) + 40))(v20, *(a1 + 64));
    if (v4 > -1 && v21 < 0)
    {
      v4 = v21;
    }

    else
    {
      v4 = v4;
    }
  }

  v23 = *(a1 + 72);
  if (v23)
  {
    v24 = (*(*(a1 + 48) + 40))(v23, *(a1 + 80));
    if (v4 > -1 && v24 < 0)
    {
      v4 = v24;
    }

    else
    {
      v4 = v4;
    }
  }

  v26 = *(a1 + 24);
  if (v26)
  {
    v27 = clcpipeline_ObjClose(v26, v11, v12, v13, v14, v15, v16, v17);
    if (v27 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v27;
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 48))
  {
    v28 = objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    if (v28 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v28;
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 40))
  {
    v29 = objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    if (v29 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v29;
    }

    *(a1 + 40) = 0;
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = clcpipeline_UnloadObjects(*(a1 + 8), *(a1 + 16), v30);
    if (v31 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v31;
    }

    vector_ObjClose(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  v32 = *a1;
  if (*a1)
  {
    if ((v33 = v32[6]) == 0 || !*(a1 + 540) || ((v34 = objc_UnregisterObject(v33, "LANGCODECONVERTER"), v4 > -1) ? (v35 = v34 < 0) : (v35 = 0), !v35 ? (v4 = v4) : (v4 = v34), (v32 = *a1) != 0))
    {
      v36 = v32[6];
      if (v36)
      {
        v37 = objc_ObjClose(v36);
        v32 = *a1;
        *(*a1 + 48) = 0;
        if (v4 > -1 && v37 < 0)
        {
          v4 = v37;
        }

        else
        {
          v4 = v4;
        }
      }

      v39 = v32[5];
      if (v39)
      {
        v40 = paramc_ObjClose(v39);
        v32 = *a1;
        *(*a1 + 40) = 0;
        if (v4 > -1 && v40 < 0)
        {
          v4 = v40;
        }

        else
        {
          v4 = v4;
        }
      }

      v42 = v32[1];
      v43 = *(a1 + 8);
      if (v43)
      {
        v44 = rsrc_Close(v43, *(a1 + 16));
        if (v4 > -1 && v44 < 0)
        {
          v4 = v44;
        }

        else
        {
          v4 = v4;
        }
      }

      v46 = *(a1 + 528);
      if (v46)
      {
        heap_Free(v42, v46);
      }

      heap_Free(v42, a1);
    }
  }

  return v4;
}

uint64_t clcml_Process(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int PreviousUtf8Offset, char *__s1, const char *a6)
{
  v88 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v86 = 0;
  v84 = 0;
  HIWORD(v80) = 0;
  **(a1 + 104) = 0;
  *(a1 + 260) = 0;
  if (!__s1 || !strcmp(__s1, "normal"))
  {
    for (i = 0; i != 3; ++i)
    {
      __s1a[i] = ssft_tolower(*(a1 + 128 + i));
    }
  }

  else
  {
    for (j = 0; j != 3; ++j)
    {
      __s1a[j] = ssft_tolower(__s1[j]);
    }
  }

  for (__s1a[3] = 0; PreviousUtf8Offset > a3; PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, PreviousUtf8Offset))
  {
    if (*(a2 + utf8_GetPreviousUtf8Offset(a2, PreviousUtf8Offset)) > 0x20u)
    {
      break;
    }
  }

  v14 = PreviousUtf8Offset - a3;
  if (PreviousUtf8Offset != a3)
  {
    v16 = heap_Calloc(*(*a1 + 8), *(*(a1 + 24) + 16), 4);
    if (!v16)
    {
      v15 = 2358255626;
      log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0, v18, v19, v20, v21, v77);
      goto LABEL_102;
    }

    v22 = v16;
    v83 = 0;
    v81 = 0;
    log_OutTraceTuningData(*(*a1 + 32), 600, "%s%s", v17, v18, v19, v20, v21, "BEG");
    v23 = (*(*(a1 + 48) + 64))(*(a1 + 72), *(a1 + 80));
    if ((v23 & 0x80000000) == 0)
    {
      if (!__s1 || (strcpy(__s, "\x1B\\lang="), __strcat_chk(), __strcat_chk(), v24 = strlen(__s), v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), __s, v24), (v23 & 0x80000000) == 0))
      {
        if (!strcmp(a6, "normal") || !strcmp(a6, "mpthree") || (strcpy(__s, "\x1B\\tn="), __strcat_chk(), __strcat_chk(), v25 = strlen(__s), v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), __s, v25), (v23 & 0x80000000) == 0))
        {
          v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), a2 + a3, v14);
          if ((v23 & 0x80000000) == 0)
          {
            v29 = 0;
            v30 = v22;
            while (1)
            {
              v31 = *(a1 + 24);
              if (v29 >= *(v31 + 16))
              {
                break;
              }

              log_OutText(*(*a1 + 32), "FE_CLCML", 4, 0, "Calling Process for %s", v26, v27, v28, *(*(*(v31 + 8) + 8 * v29) + 8));
              v32 = *(*(*(a1 + 24) + 8) + 8 * v29);
              v15 = (*(v32[2] + 104))(v32[3], v32[4], *(a1 + 72), *(a1 + 80), v30);
              v33 = *(a1 + 48);
              if (*(v33 + 200))
              {
                *__s2 = 0;
                if (((*(v33 + 216))(*(a1 + 72), *(a1 + 80), __s2) & 0x80000000) == 0)
                {
                  if (*__s2)
                  {
                    (*(*(a1 + 48) + 200))(*(a1 + 72), *(a1 + 80), 0, *(*(*(*(a1 + 24) + 8) + 8 * v29) + 8), 1);
                  }
                }
              }

              ++v29;
              v30 += 4;
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_101;
              }
            }

            v15 = (*(*(a1 + 48) + 104))(*(a1 + 72), *(a1 + 80), 1, 0, &v86 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }

            if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), HIWORD(v86), 0, &v80 + 2) & 0x80000000) != 0 || HIWORD(v80) != 1)
            {
              goto LABEL_77;
            }

            v15 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), HIWORD(v86), 0, a1 + 520, &v86);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }

            if (((*(*(a1 + 48) + 152))(*(a1 + 72), *(a1 + 80), 2, HIWORD(v86), &v80 + 2) & 0x80000000) == 0)
            {
              if (HIWORD(v80))
              {
                v15 = (*(*(a1 + 48) + 104))(*(a1 + 72), *(a1 + 80), 2, HIWORD(v86), &v84);
                if ((v15 & 0x80000000) != 0)
                {
                  goto LABEL_101;
                }
              }
            }

            *(a1 + 112) = 0;
            v34 = v84;
            if (!v84)
            {
LABEL_77:
              v53 = *(a1 + 104);
              if (*(a1 + 112))
              {
                v54 = *(a1 + 112) - 1;
                if (v53[v54] == 95)
                {
                  v53[v54] = 0;
                  --*(a1 + 112);
                  v53 = *(a1 + 104);
                }
              }

              v55 = strstr(v53, "_\\TQ\\_");
              if (v55)
              {
                v56 = v55;
                v57 = strlen(v55 + 6);
                memmove(v56, v56 + 6, v57 + 1);
                *(a1 + 112) -= 6;
                v53 = *(a1 + 104);
              }

              v58 = strstr(v53, "\\TQ\");
              if (v58)
              {
                v59 = v58;
                v60 = strlen(v58 + 4);
                memmove(v59, v59 + 4, v60 + 1);
                *(a1 + 112) -= 4;
              }

              if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), HIWORD(v86), 1, &v80 + 2) & 0x80000000) == 0 && HIWORD(v80) == 1)
              {
                *__s2 = 0;
                LOWORD(v80) = 0;
                *(a1 + 536) = 0;
                v15 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), HIWORD(v86), 1, __s2, &v80);
                if ((v15 & 0x80000000) == 0)
                {
                  v61 = v80;
                  if (v80)
                  {
                    v62 = *__s2;
                    do
                    {
                      v63 = *v62;
                      v62 += 8;
                      if (v63 == 1)
                      {
                        ++*(a1 + 536);
                      }

                      --v61;
                    }

                    while (v61);
                  }

                  if (*(a1 + 536))
                  {
                    v64 = heap_Realloc(*(*a1 + 8), *(a1 + 528), 4 * *(a1 + 536));
                    if (v64)
                    {
                      *(a1 + 528) = v64;
                      v65 = v80;
                      if (v80)
                      {
                        v66 = 0;
                        v67 = *__s2;
                        v68 = *__s2;
                        do
                        {
                          if (*v68 == 1)
                          {
                            v69 = v66++;
                            *(v64 + 4 * v69) = v68[3] - v67[3];
                          }

                          v68 += 8;
                          --v65;
                        }

                        while (v65);
                      }
                    }

                    else
                    {
LABEL_103:
                      v15 = 2358255626;
                      log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0, v47, v48, v49, v50, v78);
                    }
                  }
                }
              }

              goto LABEL_101;
            }

            v35 = 0;
            while (1)
            {
              v23 = (*(*(a1 + 48) + 168))(*(a1 + 72), *(a1 + 80), v34, 0, 1, &v85, &v86);
              if ((v23 & 0x80000000) != 0)
              {
                break;
              }

              if (v85 <= 0xA && ((1 << v85) & 0x610) != 0)
              {
                v80 = 0;
                v23 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), v84, 3, &v83, &v86);
                if ((v23 & 0x80000000) != 0)
                {
                  break;
                }

                if (!strcmp(a6, "mpthree"))
                {
                  v23 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), v84, 9, &v81, &v86);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*v81)
                  {
                    for (k = 0; k != 3; ++k)
                    {
                      __s2[k] = ssft_tolower(v81[k]);
                    }
                  }

                  else
                  {
                    for (m = 0; m != 3; ++m)
                    {
                      __s2[m] = ssft_tolower(*(a1 + 128 + m));
                    }
                  }

                  __s2[3] = 0;
                  if (strcmp(__s1a, __s2))
                  {
                    v39 = *(a1 + 260);
                    if (v39 <= 0x3F)
                    {
                      strcpy((a1 + 262 + 4 * v39), __s2);
                      v40 = *(a1 + 260);
                      *(a1 + 260) = v40 + 1;
                      *(a1 + 132 + 2 * v40) = v35;
                    }
                  }

                  for (n = 0; n != 4; ++n)
                  {
                    __s1a[n] = ssft_tolower(__s2[n]);
                  }

                  ++v35;
                }

                if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), v84, 8, &v80 + 2) & 0x80000000) == 0 && HIWORD(v80) == 1)
                {
                  v23 = (*(*(a1 + 48) + 168))(*(a1 + 72), *(a1 + 80), v84, 8, 1, &v80, &v86);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v42 = v83;
                v43 = strlen(v83);
                if (v43 && (*v83 != 95 || v83[1]))
                {
                  v44 = *(a1 + 112);
                  v45 = *(a1 + 104);
                  if (v43 + v44 - 1023 <= 0xFFFFFFFFFFFFFBFFLL)
                  {
                    v46 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (v43 + v44 + 2));
                    if (!v46)
                    {
                      goto LABEL_103;
                    }

                    v45 = v46;
                    *(a1 + 104) = v46;
                    LOWORD(v44) = *(a1 + 112);
                    v42 = v83;
                  }

                  *(a1 + 112) = v44 + strlen(v42) + 1;
                  strcat(v45, v42);
                  v51 = strlen(*(a1 + 104));
                  if (v80)
                  {
                    v52 = 35;
                  }

                  else
                  {
                    v52 = 95;
                  }

                  *(*(a1 + 104) + v51) = v52;
                }

                else if (v80 && *(a1 + 112))
                {
                  *(*(a1 + 104) + *(a1 + 112) - 1) = 35;
                }
              }

              v15 = (*(*(a1 + 48) + 120))(*(a1 + 72), *(a1 + 80), v84, &v84);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_101;
              }

              v34 = v84;
              if (!v84)
              {
                goto LABEL_77;
              }
            }
          }
        }
      }
    }

    v15 = v23;
LABEL_101:
    heap_Free(*(*a1 + 8), v22);
    log_OutTraceTuningData(*(*a1 + 32), 600, "%s%s", v70, v71, v72, v73, v74, "END");
    goto LABEL_102;
  }

  v15 = 0;
LABEL_102:
  v75 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t fe_clcml_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v34 = 0;
  v35 = 0;
  v5 = 2358255623;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v35);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v10 = heap_Calloc(*(v35 + 8), 1, 1000);
    v15 = v35;
    if (!v10)
    {
      log_OutPublic(*(v35 + 32), "FE_CLCML", 60000, 0, v11, v12, v13, v14, v25);
      return 2358255626;
    }

    v16 = v10;
    *v10 = v35;
    v10[1] = a3;
    v10[2] = a4;
    Object = objc_GetObject(*(v15 + 48), "SYNTHSTREAM", &v34);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    Object = objc_GetObject(*(v35 + 48), "FE_DEPES", &v33);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    Object = objc_GetObject(*(v35 + 48), "FE_DCTLKP", &v32);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    *(v16 + 24) = *(v34 + 8);
    v18 = v32;
    v19 = v33;
    *(v16 + 48) = *(v33 + 8);
    *(v16 + 32) = *(v19 + 16);
    *(v16 + 72) = *(v18 + 8);
    *(v16 + 56) = *(v18 + 16);
    *(v16 + 992) = 0;
    *(v16 + 976) = 0;
    *(v16 + 984) = 0;
    *(v16 + 968) = 0;
    if ((paramc_ParamGetStr(*(v35 + 40), "extraesclang", &v31) & 0x80000000) != 0)
    {
      Object = paramc_ParamSetStr(*(v35 + 40), "extraesclang", "");
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

    if ((paramc_ParamGetStr(*(v35 + 40), "extraesctn", &v31) & 0x80000000) != 0)
    {
      Object = paramc_ParamSetStr(*(v35 + 40), "extraesctn", "");
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

    if ((paramc_ParamGetStr(*(v35 + 40), "lidvoiceswitch", &v31) & 0x80000000) != 0)
    {
      Object = paramc_ParamSetStr(*(v35 + 40), "lidvoiceswitch", "");
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

    v20 = *(v35 + 40);
    v27 = v16;
    v26 = xmmword_1F42D61C8;
    v28 = xmmword_1F42D61C8;
    Object = paramc_ListenerAdd(v20, "extraesclang", &v27);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    v21 = *(v35 + 40);
    v27 = v16;
    v28 = v26;
    Object = paramc_ListenerAdd(v21, "extraesctn", &v27);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    v22 = *(v35 + 40);
    v27 = v16;
    v28 = v26;
    Object = paramc_ListenerAdd(v22, "lidvoiceswitch", &v27);
    if ((Object & 0x80000000) != 0 || (v23 = *(*v16 + 8), v27 = ssftmap_ElemCopyString, *&v28 = ssftmap_ElemFreeString, *(&v28 + 1) = ssftmap_ElemCompareKeysString, v29 = stringmap_loc_ElemCopyPtr_1, v30 = stringmap_loc_ElemFreeNoOp_1, Object = ssftmap_ObjOpen(v23, 0, &v27, (v16 + 976)), (Object & 0x80000000) != 0))
    {
LABEL_19:
      v5 = Object;
      *a5 = v16;
      *(a5 + 8) = 62600;
LABEL_20:
      fe_clcml_ObjClose(v16, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    v5 = hlp_activate(v16);
    *a5 = v16;
    *(a5 + 8) = 62600;
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }
  }

  return v5;
}

uint64_t fe_clcml_ParamLearnChange(uint64_t a1, const char *a2)
{
  __s2 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "clcpreventhlpactivate", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return hlp_activate(a1);
  }

  v5 = Str;
  if (strcmp("yes", __s2))
  {
    return hlp_activate(a1);
  }

  if (strcmp("extraesclang", a2) && strcmp("extraesctn", a2))
  {
    paramc_ParamSetStr(*(*a1 + 40), "clcpreventhlpactivate", "no");
  }

  return v5;
}

uint64_t hlp_activate(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  __s = 0;
  v64 = 0;
  __s1 = 0;
  v62 = 0;
  v59 = 0;
  __src = 0;
  v57 = 0;
  v58 = 0;
  Str = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v64) & 0x80000000) != 0 || !v64)
  {
    goto LABEL_105;
  }

  if (!*v64)
  {
    goto LABEL_103;
  }

  paramc_ParamGetStr(*(*a1 + 40), "extraesclang", &__s);
  paramc_ParamGetStr(*(*a1 + 40), "extraesctn", &v62);
  paramc_ParamGetStr(*(*a1 + 40), "mlset", &__s1);
  paramc_ParamGetStr(*(*a1 + 40), "langcode", &__src);
  paramc_ParamGetStr(*(*a1 + 40), "fedataprefix", &v59);
  paramc_ParamGetStr(*(*a1 + 40), "feextcfgdataprefix", &v58);
  if (LH_stricmp(v62, "mpthree") && LH_stricmp(v62, ""))
  {
    log_OutPublic(*(*a1 + 32), "FE_CLCML", 60002, "%s%s", v3, v4, v5, v6, "extraesctn");
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "voiceml", &v57);
  if ((Str & 0x80000000) == 0 && (!*v57 || *v57 == 110 && v57[1] == 111 && !v57[2]))
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "lidvoiceswitch", &v57);
    if ((Str & 0x80000000) == 0 && !LH_stricmp(v57, "yes"))
    {
      goto LABEL_103;
    }
  }

  v11 = __s;
  if (!*__s)
  {
    goto LABEL_31;
  }

  if ((Str & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = __s;
    do
    {
      if ((++v13 & 3) != 0)
      {
        v15 = v11[v12];
        if ((v15 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
        {
          __s2[v14++] = ssft_tolower(v15);
        }

        else
        {
          log_OutPublic(*(*a1 + 32), "FE_CLCML", 60003, "%s%s", v7, v8, v9, v10, "extraesclang");
        }
      }

      else
      {
        __s2[v14] = 0;
        if (v11[v12] && v11[v12] != 44)
        {
          log_OutPublic(*(*a1 + 32), "FE_CLCML", 60003, "%s%s", v7, v8, v9, v10, "extraesclang");
        }

        else if (!strstr(__s1, __s2) || !LH_stricmp(__src, __s2))
        {
          log_OutText(*(*a1 + 32), "FE_CLCML", 4, 0, "Ignoring language in extraesclang, language=%s", v16, v17, v18, __s2);
        }

        v14 = 0;
      }

      v12 = v13;
      v11 = __s;
    }

    while (strlen(__s) >= v13);
  }

  v19 = strlen(v11);
  v20 = heap_Alloc(*(*a1 + 8), (v19 + 5));
  if (!v20)
  {
LABEL_104:
    Str = 2358255626;
    log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0, v21, v22, v23, v24, v55);
    goto LABEL_105;
  }

  v25 = v20;
  v26 = strcpy(v20, __src);
  *&v25[strlen(v26)] = 44;
  strcat(v25, __s);
  Str = paramc_ParamSetStr(*(*a1 + 40), "lidlanguages", v25);
  heap_Free(*(*a1 + 8), v25);
  if ((Str & 0x80000000) == 0)
  {
LABEL_31:
    v27 = *(a1 + 984);
    if (v27)
    {
      *v27 = 0;
    }

    if (*__s || *v62)
    {
      v28 = v64;
      if (*v64)
      {
        while (1)
        {
          v56 = 0;
          v29 = *v28;
          if (v29 == 43)
          {
            v30 = 0;
          }

          else
          {
            v31 = 0;
            v30 = 0;
            while (v29 && v31 <= 0xFE)
            {
              v32 = v31 + 1;
              ++v30;
              __s2[v31] = v29;
              v29 = v28[++v31];
              if (v29 == 43)
              {
                v28 += v32;
                goto LABEL_44;
              }
            }

            v30 = v31;
            v28 += v31;
LABEL_44:
            if (v30 == 255)
            {
              goto LABEL_103;
            }
          }

          __s2[v30] = 0;
          v33 = v28 + 1;
          if (*v28 != 43)
          {
            v33 = v28;
          }

          v34 = *v33;
          if (v34 == 61)
          {
            v35 = 0;
          }

          else
          {
            v36 = 0;
            v35 = 0;
            while (v34 && v36 <= 0xFE)
            {
              v37 = v36 + 1;
              ++v35;
              v66[v36] = v34;
              v34 = v33[++v36];
              if (v34 == 61)
              {
                v33 += v37;
                goto LABEL_55;
              }
            }

            v35 = v36;
            v33 += v36;
LABEL_55:
            if (v35 == 255)
            {
              goto LABEL_103;
            }
          }

          v66[v35] = 0;
          if (*v33 == 61)
          {
            v28 = v33 + 1;
          }

          else
          {
            v28 = v33;
          }

          if (v58)
          {
            v38 = strlen(v58);
            __strcpy_chk();
          }

          else
          {
            v38 = 0;
            v65[0] = 0;
          }

          v39 = *v28;
          if (v39 == 44)
          {
            v40 = v38;
          }

          else
          {
            v40 = v38;
            while (v39 && v38 <= 0xFE)
            {
              v65[v38] = v39;
              v41 = *++v28;
              v39 = v41;
              ++v38;
              ++v40;
              if (v41 == 44)
              {
                goto LABEL_70;
              }
            }

            v40 = v38;
          }

LABEL_70:
          if (v40 == 255)
          {
            goto LABEL_103;
          }

          v65[v40] = 0;
          if (*v28 == 44)
          {
            ++v28;
          }

          if ((*__s2 == 42 || !LH_stricmp(__s2, __src) || strstr(__s1, __s2) && __s && strstr(__s, __s2)) && (*v66 == 42 || v62 && strstr(v62, v66)))
          {
            v42 = *(a1 + 984);
            if (!v42)
            {
              v43 = hlp_StringAppend(*(*a1 + 8), 0, "", (a1 + 992));
              *(a1 + 984) = v43;
              if (!v43)
              {
                goto LABEL_104;
              }

              *v43 = 0;
              v42 = *(a1 + 984);
            }

            v44 = hlp_StringAppend(*(*a1 + 8), v42, __s2, (a1 + 992));
            *(a1 + 984) = v44;
            if (!v44)
            {
              goto LABEL_104;
            }

            v45 = hlp_StringAppend(*(*a1 + 8), v44, "+", (a1 + 992));
            *(a1 + 984) = v45;
            if (!v45)
            {
              goto LABEL_104;
            }

            v46 = hlp_StringAppend(*(*a1 + 8), v45, v66, (a1 + 992));
            *(a1 + 984) = v46;
            if (!v46)
            {
              goto LABEL_104;
            }

            v47 = hlp_StringAppend(*(*a1 + 8), v46, "=", (a1 + 992));
            *(a1 + 984) = v47;
            if (!v47)
            {
              goto LABEL_104;
            }

            v48 = hlp_StringAppend(*(*a1 + 8), v47, v65, (a1 + 992));
            *(a1 + 984) = v48;
            if (!v48)
            {
              goto LABEL_104;
            }

            v49 = hlp_StringAppend(*(*a1 + 8), v48, ",", (a1 + 992));
            *(a1 + 984) = v49;
            if (!v49)
            {
              goto LABEL_104;
            }

            if (!*(a1 + 968))
            {
              v50 = heap_Alloc(*(*a1 + 8), 1024);
              *(a1 + 968) = v50;
              if (!v50)
              {
                goto LABEL_104;
              }
            }

            Str = ssftmap_FindReadOnly(*(a1 + 976), v65, &v56);
            if ((Str & 0x80000000) != 0)
            {
              v51 = clcml_ObjOpen(*(a1 + 8), *(a1 + 16), v65, &v56);
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_106;
              }

              v52 = ssftmap_Insert(*(a1 + 976), v65, v56);
LABEL_98:
              Str = v52;
              if ((v52 & 0x80000000) != 0)
              {
                goto LABEL_105;
              }
            }
          }

          else
          {
            if ((ssftmap_FindReadOnly(*(a1 + 976), v65, &v56) & 0x80000000) == 0)
            {
              v51 = ssftmap_Remove(*(a1 + 976), v65);
              if ((v51 & 0x80000000) != 0)
              {
LABEL_106:
                Str = v51;
                goto LABEL_105;
              }

              v52 = clcml_ObjClose(v56);
              goto LABEL_98;
            }

            Str = 0;
          }

          if (!*v28)
          {
            goto LABEL_105;
          }
        }
      }

      goto LABEL_105;
    }

LABEL_103:
    Str = 0;
  }

LABEL_105:
  v53 = *MEMORY[0x1E69E9840];
  return Str;
}

uint64_t fe_clcml_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62600, 1000);
  if ((result & 0x80000000) != 0)
  {
    return 2358255624;
  }

  if (a1)
  {
    v4 = *(*a1 + 40);
    v10 = a1;
    v9 = xmmword_1F42D61C8;
    v11 = xmmword_1F42D61C8;
    paramc_ListenerRemove(v4, "extraesclang", &v10);
    v5 = *(*a1 + 40);
    v10 = a1;
    v11 = v9;
    paramc_ListenerRemove(v5, "extraesctn", &v10);
    v6 = *(*a1 + 40);
    v10 = a1;
    v11 = v9;
    paramc_ListenerRemove(v6, "lidvoiceswitch", &v10);
    if (a1[122])
    {
      hlp_deactivate(a1);
      ssftmap_ObjClose(a1[122]);
    }

    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[9])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v7 = a1[121];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    v8 = a1[123];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_deactivate(uint64_t a1)
{
  v4 = 0;
  result = *(a1 + 976);
  if (result)
  {
    result = ssftmap_IteratorOpen(result, 0, 1, &v4);
    if ((result & 0x80000000) == 0)
    {
      v2 = 0;
      v3 = 0;
      while ((ssftmap_IteratorNext(v4, &v3, &v2) & 0x80000000) == 0)
      {
        clcml_ObjClose(v2);
        ssftmap_IteratorRemove(v4);
      }

      return ssftmap_IteratorClose(v4);
    }
  }

  return result;
}

uint64_t fe_clcml_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62600, 1000);
  if ((result & 0x80000000) != 0)
  {
    return 2358255624;
  }

  if (a1)
  {
    hlp_deactivate(a1);
    v4 = a1[123];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      a1[123] = 0;
    }

    return hlp_activate(a1);
  }

  return result;
}

uint64_t fe_clcml_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  synstrmaux_InitStreamOpener(a1 + 80, *(*a1 + 32), "FE_CLCML");
  synstrmaux_RegisterInStream((a1 + 80), "text/plain;charset=utf-8", 0, a1 + 904);
  synstrmaux_RegisterInStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 80), "text/plain;charset=utf-8", a1 + 936);
  synstrmaux_RegisterOutStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", a1 + 952);
  v7 = synstrmaux_OpenStreams((a1 + 80), *(a1 + 24), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 80), *(a1 + 24));
  }

  return v7;
}

uint64_t fe_clcml_Process(const char **a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2358255626;
  memset(v64, 0, sizeof(v64));
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  v56 = 0;
  *a5 = 1;
  result = (*(a1[3] + 18))(a1[113], a1[114], &v64[8], v64);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 18))(a1[115], a1[116], &v64[4], v64);
    if ((result & 0x80000000) == 0)
    {
      if (*&v64[8])
      {
        v9 = (*(a1[3] + 11))(a1[113], a1[114], &__src, __n);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_80;
        }

        v10 = heap_Alloc(*(*a1 + 1), (__n[0] + 1));
        *&__n[1] = v10;
        if (v10)
        {
          v15 = v10;
          memcpy(v10, __src, __n[0]);
          v15[__n[0]] = 0;
          v9 = (*(a1[3] + 11))(a1[115], a1[116], &v61, &v58 + 4);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_80;
          }

          v16 = HIDWORD(v58);
          v17 = HIDWORD(v58) >> 5;
          LODWORD(v58) = HIDWORD(v58) >> 5;
          HIDWORD(v58) >>= 5;
          v18 = heap_Calloc(*(*a1 + 1), 1, v16 & 0xFFFFFFE0);
          v60 = v18;
          v19 = *a1;
          if (!v18)
          {
LABEL_23:
            log_OutPublic(*(v19 + 4), "FE_CLCML", 60000, 0, v11, v12, v13, v14, v54);
LABEL_81:
            if (*&__n[1])
            {
              heap_Free(*(*a1 + 1), *&__n[1]);
            }

            v49 = v60;
            if (v60)
            {
              v50 = v58;
              if (v58)
              {
                v51 = 0;
                v52 = v59;
                v53 = v60 + 3;
                do
                {
                  if (v52 && *(v52 + 4 * v51) && *v53)
                  {
                    heap_Free(*(*a1 + 1), *v53);
                  }

                  ++v51;
                  v53 += 4;
                }

                while (v51 < v50);
              }

              heap_Free(*(*a1 + 1), v49);
            }

            if (v59)
            {
              heap_Free(*(*a1 + 1), v59);
            }

            return v7;
          }

          v20 = v18;
          v59 = heap_Calloc(*(v19 + 1), 1, 4 * HIDWORD(v58));
          if (v59)
          {
            v55 = *(v61 + 3);
            memcpy(v20, v61, 32 * HIDWORD(v58));
            v9 = (*(a1[6] + 14))(a1[4], a1[5], &v57, 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (!a1[123])
            {
              goto LABEL_74;
            }

            if (v16 < 0x20)
            {
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = "normal";
LABEL_68:
              v56 = 0;
              v46 = strlen(v15);
              v47 = v24 - v55;
              if (v47 >= v46 || v25 || (hlp_getclcml(a1, v23, v26, &v56) & 0x80000000) != 0 || !v56)
              {
                goto LABEL_74;
              }

              v9 = hlp_processclcml(a1, v56, &__n[1], v47, v46, &v60, &v59, v22, v21, &v58, v23, v26);
              if ((v9 & 0x80000000) == 0)
              {
                v15 = *&__n[1];
LABEL_74:
                v48 = strlen(v15);
                if (!v48 || (v9 = (*(a1[3] + 13))(a1[117], a1[118], v15, (v48 + 1)), (v9 & 0x80000000) == 0))
                {
                  v9 = (*(a1[3] + 12))(a1[113], a1[114], __n[0]);
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = (*(a1[3] + 13))(a1[119], a1[120], v60, (32 * v58));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v9 = (*(a1[3] + 12))(a1[115], a1[116], (32 * HIDWORD(v58)));
                      if ((v9 & 0x80000000) == 0)
                      {
                        v57 = v57 + strlen(v15) - __n[0] + 1;
                        v9 = (*(a1[6] + 13))(a1[4], a1[5]);
                      }
                    }
                  }
                }
              }

LABEL_80:
              v7 = v9;
              goto LABEL_81;
            }

            v28 = 0;
            v24 = 0;
            v29 = 0;
            v22 = 0;
            v21 = 0;
            v30 = "normal";
            while (1)
            {
              v31 = *&v20[32 * v21];
              v32 = v31 > 0x33;
              v33 = (1 << v31) & 0x8011400200080;
              if (!v32 && v33 != 0)
              {
                v35 = v21;
                v56 = 0;
                v36 = &v20[32 * v21];
                v38 = *(v36 + 3);
                v37 = v36 + 12;
                if (v38 > v24 && v28 == 0)
                {
                  v40 = v29;
                  v41 = v30;
                  if ((hlp_getclcml(a1, v29, v30, &v56) & 0x80000000) == 0 && v56)
                  {
                    v9 = hlp_processclcml(a1, v56, &__n[1], v24 - v55, *v37 - v55, &v60, &v59, v22, v21, &v58, v40, v41);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_80;
                    }

                    if (**(v56 + 104))
                    {
                      v35 = v21 + 2;
                    }

                    else
                    {
                      v35 = v21;
                    }

                    v20 = v60;
                    v21 = v35;
                  }

                  v29 = v40;
                  v30 = v41;
                }

                v42 = &v20[32 * v35];
                if (*v42 == 51)
                {
                  *(v42 + 4) = 0;
                }

                v24 = *(v42 + 3);
                v17 = v58;
                if (v21 < v58)
                {
                  v43 = (v42 + 24);
                  while (1)
                  {
                    if (*(v43 - 3) != v24)
                    {
                      v21 = v35;
                      break;
                    }

                    v44 = *(v43 - 6);
                    if (v44 == 7)
                    {
                      if (v28)
                      {
                        goto LABEL_61;
                      }

                      v28 = 1;
                    }

                    else
                    {
                      if (v44 != 21)
                      {
                        if (v44 == 36)
                        {
                          v28 = 0;
                          v29 = *v43;
                        }

                        else
                        {
                          if (v28)
                          {
                            v45 = 0;
                          }

                          else
                          {
                            v45 = v44 == 34;
                          }

                          if (v45)
                          {
                            v28 = 1;
                          }
                        }

                        goto LABEL_62;
                      }

                      v30 = *v43;
                      if (v28)
                      {
LABEL_61:
                        v28 = 0;
                      }
                    }

LABEL_62:
                    ++v35;
                    v43 += 4;
                    if (v58 == v35)
                    {
                      v21 = v58;
                      break;
                    }
                  }
                }

                v22 = v21--;
              }

              if (++v21 >= v17)
              {
                v26 = v30;
                v23 = v29;
                v15 = *&__n[1];
                v25 = v28 != 0;
                goto LABEL_68;
              }
            }
          }
        }

        v19 = *a1;
        goto LABEL_23;
      }

      v27 = *v64;
      if (*v64)
      {
        if (*&v64[4])
        {
          result = (*(a1[3] + 16))(a1[119], a1[120], a1[115], a1[116], 0xFFFFFFFFLL, &v58);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v27 = *v64;
        }

        if (v27)
        {
          return synstrmaux_CloseOutStreamsOnly(a1 + 40, a1[3]);
        }
      }

      else
      {
        *a5 = 0;
      }
    }
  }

  return result;
}