_WORD *sub_2775AECA4()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  *&v22[27300] = *MEMORY[0x277D85DE8];
  sub_2775AE0C4(v22, v0, v7, v10, v11, v5, v3, v12);
  result = sub_2775AE40C();
  if (v4 >= 1)
  {
    v14 = 0;
    v15 = *(v2 + 10);
    v16 = &v21;
    do
    {
      if (v6 >= 1)
      {
        for (i = 0; i != v6; v9[i++] = v20)
        {
          v18 = v9[i] + ((*&v16[2 * i] * v15 + 1024) >> 11);
          if (v18 >= 0xFF)
          {
            LOBYTE(v19) = -1;
          }

          else
          {
            v19 = v9[i] + ((*&v16[2 * i] * v15 + 1024) >> 11);
          }

          if (v18 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }
      }

      v9 += v8;
      ++v14;
      v16 += 768;
    }

    while (v14 != v4);
  }

  return result;
}

_WORD *sub_2775AEDF0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  *&v22[27300] = *MEMORY[0x277D85DE8];
  sub_2775AE0C4(v22, v0, v7, v10, v11, v5, v3, v12);
  result = sub_2775AE40C();
  if (v4 >= 1)
  {
    v14 = 0;
    v15 = *(v2 + 8);
    v16 = &v21;
    do
    {
      if (v6 >= 1)
      {
        for (i = 0; i != v6; v9[i++] = v20)
        {
          v18 = v9[i] + ((*&v16[2 * i] * v15 + 1024) >> 11);
          if (v18 >= 0xFF)
          {
            LOBYTE(v19) = -1;
          }

          else
          {
            v19 = v9[i] + ((*&v16[2 * i] * v15 + 1024) >> 11);
          }

          if (v18 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }
      }

      v9 += v8;
      ++v14;
      v16 += 768;
    }

    while (v14 != v4);
  }

  return result;
}

uint64_t sub_2775AEF3C()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  *&v33[27300] = *MEMORY[0x277D85DE8];
  result = sub_2775AE0C4(v33, v0, v7, v10, v11, v5, v3, v12);
  if (v4 >= -5)
  {
    v14 = 0;
    v15 = &v32;
    v16 = v33;
    do
    {
      if (v6 >= 1)
      {
        v17 = 0;
        v18 = v16;
        do
        {
          v19 = 0;
          v20 = (v16[v17 + 3] << 7) + 0x4000;
          do
          {
            result = v18[v19];
            v20 += *(v2 + 2 * v19++) * result;
          }

          while (v19 != 7);
          v21 = (v20 + 4) >> 3;
          if (v21 >= 0x1FFF)
          {
            v21 = 0x1FFF;
          }

          *&v15[2 * v17++] = v21 & ~(v21 >> 31);
          ++v18;
        }

        while (v17 != v6);
      }

      v16 += 390;
      v15 += 780;
    }

    while (v14++ != ((v4 + 5) & ~((v4 + 5) >> 31)));
    if (v4 >= 1)
    {
      v23 = 0;
      v24 = &v32;
      do
      {
        if (v6 >= 1)
        {
          v25 = 0;
          v26 = v24;
          do
          {
            v27 = 0;
            v28 = -262144;
            v29 = v26;
            do
            {
              v28 += *(v2 + 16 + v27) * *v29;
              v27 += 2;
              v29 += 390;
            }

            while (v27 != 14);
            v30 = (v28 + 1024) >> 11;
            if (v30 >= 0xFF)
            {
              result = 255;
            }

            else
            {
              result = v30;
            }

            if (v30 >= 0)
            {
              v31 = result;
            }

            else
            {
              v31 = 0;
            }

            v9[v23 * v8 + v25++] = v31;
            ++v26;
          }

          while (v25 != v6);
        }

        ++v23;
        v24 += 390;
      }

      while (v23 != v4);
    }
  }

  return result;
}

uint64_t sub_2775AF124(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = 4294967274;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (a3 >= 1)
      {
        v21 = a2;
        v22 = a2;
        v6 = &a2[a3];
        v23 = &a2[a3];
        v3 = 4294967294;
        v19 = 0;
        v20 = 0;
        do
        {
          if (v4 >= v6)
          {
            v8 = 0;
            v20 = 0x1FFFFFFFFLL;
          }

          else
          {
            v21 = v4 + 1;
            v7 = *v4;
            LODWORD(v20) = 7;
            v8 = v7 << 57;
          }

          v19 = v8;
          v9 = sub_2775CF2C4(&v19, 4u);
          if (v20)
          {
            v10 = 2 * v19;
            v11 = v19 >> 63;
            v12 = v20 - 1;
            if (v20 == 1)
            {
              if (v21 < v23)
              {
                v13 = *v21++;
                LODWORD(v20) = 7;
                v19 = v13 << 57;
                LODWORD(v14) = (v13 >> 7) & 1;
                goto LABEL_17;
              }

              HIDWORD(v20) = 1;
            }
          }

          else if (v21 >= v23)
          {
            HIDWORD(v20) = 1;
            v12 = -1;
            v10 = 2 * v19;
            v11 = v19 >> 63;
          }

          else
          {
            v15 = *v21++;
            v10 = v15 << 57;
            LODWORD(v11) = (v15 >> 7) & 1;
            v12 = 7;
          }

          LODWORD(v20) = v12 - 1;
          v19 = 2 * v10;
          v14 = v10 >> 63;
LABEL_17:
          sub_2775CF2C4(&v19, (8 * v11) | 1);
          v4 = v23;
          if (v14)
          {
            v16 = sub_2775CF3E4(&v19);
            if (v4 - v21 < v16)
            {
              return 4294967274;
            }

            v4 = &v21[v16];
          }

          if (v9 == 1)
          {
            v17 = sub_2775AF314(a1, &v19, 0);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            if (v21 > v4)
            {
              return 4294967274;
            }

            v3 = 0;
            LODWORD(v20) = 0;
            v19 = 0;
          }

          if (HIDWORD(v20))
          {
            return 4294967274;
          }

          v21 = v4;
          v6 = v23;
        }

        while (v4 < v23);
      }
    }
  }

  return v3;
}

uint64_t sub_2775AF314(unsigned __int8 *a1, uint64_t *a2, int a3)
{
  bzero(a1, 0x328uLL);
  v6 = sub_2775CF2C4(a2, 3u);
  *a1 = v6;
  if (v6 > 2u)
  {
    return 4294967274;
  }

  a1[356] = sub_2775CF264(a2);
  v8 = sub_2775CF264(a2);
  a1[357] = v8;
  if (!v8)
  {
    v9 = sub_2775CF264(a2);
    a1[358] = v9;
    if (v9)
    {
      *(a1 + 90) = sub_2775CF2C4(a2, 0x20u);
      v10 = sub_2775CF2C4(a2, 0x20u);
      *(a1 + 91) = v10;
      if (a3 && (!*(a1 + 90) || !v10))
      {
        return 4294967274;
      }

      v11 = sub_2775CF264(a2);
      a1[368] = v11;
      if (v11)
      {
        if (sub_2775CF264(a2))
        {
          v12 = 0;
        }

        else
        {
          v39 = -1;
          do
          {
            if (v39 == 30)
            {
              return 4294967274;
            }

            v40 = v39;
            v41 = sub_2775CF264(a2);
            v39 = v40 + 1;
          }

          while (!v41);
          v42 = 2 << (v40 + 1);
          v43 = sub_2775CF2C4(a2, v40 + 2);
          v12 = v42 + v43 - 1;
          if (!(v42 + v43))
          {
            return 4294967274;
          }
        }

        *(a1 + 93) = v12 + 1;
      }

      v13 = sub_2775CF264(a2);
      a1[376] = v13;
      if (v13)
      {
        a1[377] = sub_2775CF2C4(a2, 5u) + 1;
        v14 = sub_2775CF2C4(a2, 0x20u);
        *(a1 + 95) = v14;
        if (a3 && !v14)
        {
          return 4294967274;
        }

        a1[384] = sub_2775CF2C4(a2, 5u) + 1;
        a1[385] = sub_2775CF2C4(a2, 5u) + 1;
      }
    }

    a1[386] = sub_2775CF264(a2);
    v15 = sub_2775CF2C4(a2, 5u);
    a1[34] = v15 + 1;
    if (((v15 + 1) & 0x100) != 0)
    {
      goto LABEL_34;
    }

    v16 = 0;
    v17 = a1 + 432;
    v18 = a1 + 44;
    while (1)
    {
      v19 = sub_2775CF2C4(a2, 0xCu);
      *(v18 - 2) = v19;
      if (v19 && (!v19 || (v19 & 0xF00) == 0))
      {
        return 4294967274;
      }

      *(v18 - 8) = sub_2775CF2C4(a2, 3u) + 2;
      *(v18 - 7) = sub_2775CF2C4(a2, 2u);
      if (*(v18 - 8) >= 4u)
      {
        *(v18 - 2) = sub_2775CF264(a2);
      }

      if (a1[376])
      {
        v20 = sub_2775CF264(a2);
        *(v18 - 1) = v20;
        if (v20)
        {
          *(v17 - 2) = sub_2775CF2C4(a2, a1[377]);
          *(v17 - 1) = sub_2775CF2C4(a2, a1[377]);
          *v17 = sub_2775CF264(a2);
        }
      }

      if (a1[386])
      {
        v21 = sub_2775CF264(a2);
        *v18 = v21;
        if (!v21)
        {
          goto LABEL_32;
        }
      }

      else if (!*v18)
      {
LABEL_32:
        v22 = 10;
        goto LABEL_33;
      }

      v22 = sub_2775CF2C4(a2, 4u) + 1;
LABEL_33:
      *(v18 - 6) = v22;
      ++v16;
      v17 += 12;
      v18 += 10;
      if (v16 >= a1[34])
      {
        goto LABEL_34;
      }
    }
  }

  if (!a1[356])
  {
    return 4294967274;
  }

  a1[34] = 1;
  a1[36] = sub_2775CF2C4(a2, 3u);
  a1[37] = sub_2775CF2C4(a2, 2u);
  a1[38] = 10;
LABEL_34:
  a1[387] = sub_2775CF2C4(a2, 4u) + 1;
  a1[388] = sub_2775CF2C4(a2, 4u) + 1;
  *(a1 + 1) = sub_2775CF2C4(a2, a1[387]) + 1;
  *(a1 + 2) = sub_2775CF2C4(a2, a1[388]) + 1;
  if (!a1[357])
  {
    v23 = sub_2775CF264(a2);
    a1[389] = v23;
    if (v23)
    {
      a1[390] = sub_2775CF2C4(a2, 4u) + 2;
      a1[391] = sub_2775CF2C4(a2, 3u) + a1[390] + 1;
    }
  }

  a1[392] = sub_2775CF264(a2);
  a1[393] = sub_2775CF264(a2);
  a1[394] = sub_2775CF264(a2);
  if (a1[357])
  {
    *(a1 + 404) = 0x200000002;
    goto LABEL_49;
  }

  a1[395] = sub_2775CF264(a2);
  a1[396] = sub_2775CF264(a2);
  a1[397] = sub_2775CF264(a2);
  a1[398] = sub_2775CF264(a2);
  v24 = sub_2775CF264(a2);
  a1[399] = v24;
  if (v24)
  {
    a1[400] = sub_2775CF264(a2);
    a1[401] = sub_2775CF264(a2);
  }

  if (sub_2775CF264(a2))
  {
    *(a1 + 101) = 2;
  }

  else
  {
    v25 = sub_2775CF264(a2);
    *(a1 + 101) = v25;
    if (!v25)
    {
LABEL_45:
      v26 = 2;
      goto LABEL_47;
    }
  }

  if (sub_2775CF264(a2))
  {
    goto LABEL_45;
  }

  v26 = sub_2775CF264(a2);
LABEL_47:
  *(a1 + 102) = v26;
  if (a1[399])
  {
    a1[412] = sub_2775CF2C4(a2, 3u) + 1;
  }

LABEL_49:
  a1[413] = sub_2775CF264(a2);
  a1[414] = sub_2775CF264(a2);
  a1[415] = sub_2775CF264(a2);
  v27 = sub_2775CF264(a2);
  a1[32] = v27;
  v28 = *a1;
  if (v28 == 2 && v27)
  {
    a1[32] += sub_2775CF264(a2);
    v28 = *a1;
  }

  if (v28 != 1)
  {
    a1[418] = sub_2775CF264(a2);
  }

  v29 = sub_2775CF264(a2);
  a1[419] = v29;
  if (v29)
  {
    *(a1 + 4) = sub_2775CF2C4(a2, 8u);
    *(a1 + 5) = sub_2775CF2C4(a2, 8u);
    v30 = sub_2775CF2C4(a2, 8u);
  }

  else
  {
    *(a1 + 2) = 0x200000002;
    v30 = 2;
  }

  *(a1 + 6) = v30;
  if (a1[418])
  {
    v31 = sub_2775CF264(a2);
    v32 = 0;
    a1[33] = v31;
    *(a1 + 3) = 0;
    *(a1 + 208) = 257;
LABEL_88:
    *(a1 + 7) = v32;
    goto LABEL_89;
  }

  if (*(a1 + 4) != 1 || *(a1 + 5) != 13 || v30)
  {
    a1[33] = sub_2775CF264(a2);
    v34 = *a1;
    if (v34 != 2)
    {
      if (v34 != 1)
      {
        if (!*a1)
        {
          *(a1 + 3) = 1;
          *(a1 + 208) = 257;
        }

        goto LABEL_85;
      }

      goto LABEL_74;
    }

    if (a1[32] == 2)
    {
      v35 = sub_2775CF264(a2);
      a1[416] = v35;
      if (!v35 || (v36 = sub_2775CF264(a2), a1[417] = v36, !a1[416]))
      {
LABEL_74:
        v38 = 3;
LABEL_84:
        *(a1 + 3) = v38;
LABEL_85:
        if ((a1[417] & a1[416]) != 0)
        {
          v32 = sub_2775CF2C4(a2, 2u);
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_88;
      }

      v37 = v36;
    }

    else
    {
      a1[416] = 1;
      v37 = a1[417];
    }

    if (v37)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    goto LABEL_84;
  }

  *(a1 + 3) = 3;
  a1[33] = 1;
  v33 = *a1;
  if (v33 != 1 && (v33 != 2 || a1[32] != 2))
  {
    return 4294967274;
  }

LABEL_89:
  if (a3 && !*(a1 + 6) && *(a1 + 3) != 3)
  {
    return 4294967274;
  }

  if (!a1[418])
  {
    a1[420] = sub_2775CF264(a2);
  }

  a1[421] = sub_2775CF264(a2);

  return sub_2775AF9FC(a2, a3);
}

uint64_t sub_2775AF9FC(uint64_t a1, int a2)
{
  v4 = sub_2775CF264(a1);
  if (*(a1 + 12))
  {
    return 4294967274;
  }

  if (a2)
  {
    if (!v4 || *a1)
    {
      return 4294967274;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 32) - v6;
    if (v7 >= 1)
    {
      v8 = v6 - 1;
      while (!*(v8 + v7))
      {
        if (v7-- <= 1)
        {
          return 0;
        }
      }

      return 4294967274;
    }

    if (v7)
    {
      return 4294967274;
    }
  }

  return 0;
}

uint64_t sub_2775AFA78(uint64_t a1, char **a2)
{
  v2 = a2;
  v3 = a1;
  block[9] = *MEMORY[0x277D85DE8];
  v4 = a1 + 63052;
  v5 = *a2;
  v6 = a2[1];
  __src = v5;
  v839 = v5;
  v840 = &v5[v6];
  v836 = 0;
  v837 = 0;
  if (v6 <= 0)
  {
    v837 = 0x1FFFFFFFFLL;
    v836 = 0;
    v8 = (a1 + 63072);
  }

  else
  {
    __src = v5 + 1;
    v7 = *v5;
    LODWORD(v837) = 7;
    v836 = v7 << 57;
    v8 = (a1 + 63072);
    if (*(a1 + 63072) && (v7 & 0x80000000) != 0)
    {
      goto LABEL_1096;
    }
  }

  v15 = sub_2775CF2C4(&v836, 4u);
  v16 = v837;
  if (!v837)
  {
    v17 = __src;
    if (__src < v840)
    {
      __src = __src + 1;
      v18 = *v17;
      v19 = 7;
      LODWORD(v837) = 7;
      v20 = v18 << 57;
      v836 = v18 << 57;
      LODWORD(v21) = (v18 >> 7) & 1;
LABEL_17:
      v25 = v19 - 1;
      LODWORD(v837) = v25;
      v23 = 2 * v20;
      v836 = 2 * v20;
      v24 = v20 >> 63;
      goto LABEL_19;
    }

    HIDWORD(v837) = 1;
  }

  v22 = v836;
  v20 = 2 * v836;
  v836 *= 2;
  v21 = v22 >> 63;
  v19 = v837 - 1;
  LODWORD(v837) = v837 - 1;
  if (v16 == 1)
  {
    v29 = __src;
    if (__src >= v840)
    {
      HIDWORD(v837) = 1;
      goto LABEL_17;
    }

    __src = __src + 1;
    v30 = *v29;
    v25 = 7;
    LODWORD(v837) = 7;
    v23 = v30 << 57;
    v836 = v30 << 57;
    LODWORD(v24) = (v30 >> 7) & 1;
  }

  else
  {
    v23 = 2 * v20;
    v836 = 2 * v20;
    v24 = v20 >> 63;
    v25 = v19 - 1;
    LODWORD(v837) = v25;
    if (!v25)
    {
      v26 = __src;
      if (__src < v840)
      {
        __src = __src + 1;
        v27 = *v26;
        LODWORD(v837) = 7;
        v28 = v27 << 57;
        goto LABEL_20;
      }

      HIDWORD(v837) = 1;
    }
  }

LABEL_19:
  LODWORD(v837) = v25 - 1;
  v28 = 2 * v23;
LABEL_20:
  v836 = v28;
  if (v21)
  {
    v31 = sub_2775CF2C4(&v836, 3u);
    v32 = sub_2775CF2C4(&v836, 2u);
    sub_2775CF2C4(&v836, 3u);
    if (!v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v31 = 0;
    if (!v24)
    {
      goto LABEL_26;
    }
  }

  v33 = sub_2775CF3E4(&v836);
  if (v840 - __src < v33)
  {
    goto LABEL_1096;
  }

  v840 = __src + v33;
LABEL_26:
  if (HIDWORD(v837))
  {
    goto LABEL_1096;
  }

  if ((v15 - 3) <= 0xFFFFFFFD)
  {
    if (v21)
    {
      v34 = *(v4 + 4);
      if (v34)
      {
        if ((((1 << (v32 + 8)) | (1 << v31)) & ~v34) != 0)
        {
          return v840 - v839;
        }
      }
    }
  }

  v35 = (v3 + 49920);
  v831 = v3;
  if (v15 <= 4)
  {
    if (v15 <= 2)
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          *(v4 + 40) |= 4u;
          goto LABEL_904;
        }

LABEL_46:
        sub_2775E9DFC(v3, "Unknown OBU type %d of size %td\n", v9, v10, v11, v12, v13, v14, v15);
        goto LABEL_904;
      }

      v40 = *(v3 + 72);
      v41 = sub_2775C68C0(v40, 0x350);
      if (v41)
      {
        v42 = *v41;
        *(v41 - 5) = *v41;
        v43 = v41 - 40;
        *(v41 - 4) = v40;
        *(v41 - 3) = 1;
        *(v41 - 2) = sub_2775DA1FC;
        *(v41 - 1) = v41;
        block[0] = (v41 - 40);
        if ((sub_2775AF314(v42, &v836, *v8) & 0x80000000) != 0)
        {
          sub_2775E9DFC(v3, "Error parsing sequence header\n", v44, v45, v46, v47, v48, v49, v817);
          sub_2775DA200(block);
          goto LABEL_1096;
        }

        v50 = *v4;
        if (*v4 >= v42[34])
        {
          v50 = 0;
        }

        v51 = *&v42[10 * v50 + 40];
        *(v4 + 4) = v51;
        v52 = __clz(v51 >> 8) ^ 0x1F;
        if (v51 >= 0x100)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        *(v4 + 12) = v53;
        v54 = *(v3 + 88);
        if (v54)
        {
          if (!memcmp(v42, *(v3 + 88), 0x1A8uLL))
          {
            if (!memcmp(v42 + 424, (v54 + 424), 0x180uLL))
            {
LABEL_123:
              sub_2775DA200((v3 + 80));
              *(v3 + 80) = v43;
              *(v3 + 88) = v42;
              goto LABEL_904;
            }

            v62 = 2;
          }

          else
          {
            v826 = v8;
            v55 = v2;
            *(v3 + 112) = 0;
            *(v3 + 144) = 0;
            *(v3 + 128) = 0;
            sub_2775DA200((v3 + 136));
            sub_2775DA200((v3 + 120));
            v56 = 0;
            v57 = 52696;
            v58 = v3 + 52696;
            v59 = 52704;
            do
            {
              v60 = v58 + v56;
              if (*(v58 + v56 - 2752))
              {
                sub_2775DE04C(v60 - 2760);
                *(v60 - 2472) = 0;
              }

              sub_2775DA200((v60 - 2464));
              sub_2775DA200((v60 - 2456));
              v61 = (v3 + v59);
              *v61 = 0;
              v61[1] = 0;
              sub_2775DA200((v3 + v57));
              v56 += 344;
              v57 += 24;
              v59 += 24;
            }

            while (v56 != 2752);
            v62 = 1;
            v2 = v55;
            v35 = (v3 + 49920);
            v8 = v826;
          }
        }

        else
        {
          *(v3 + 112) = 0;
          v62 = 1;
        }

        *(v4 + 40) |= v62;
        goto LABEL_123;
      }

      return -12;
    }

    if (v15 != 3)
    {
      v36 = *(v3 + 112);
      if (!v36)
      {
        goto LABEL_1096;
      }

      v37 = (v3 + 60);
      v38 = *(v3 + 60);
      if (*(v3 + 56) > v38)
      {
LABEL_890:
        v514 = v36[449] * v36[445];
        if (v514 >= 2)
        {
          v515 = __src;
          if (__src >= v840)
          {
            v527 = v836;
            v837 = 0x1FFFFFFFFLL;
            v836 *= 2;
            if (v527 < 0)
            {
              goto LABEL_893;
            }
          }

          else
          {
            __src = __src + 1;
            v516 = *v515;
            LODWORD(v837) = 7;
            v836 = v516 << 57;
            if ((v516 >> 7))
            {
LABEL_893:
              v517 = *(v3 + 112);
              v834 = v37;
              v518 = *(v517 + 444);
              v519 = *(v517 + 448);
              v520 = sub_2775CF2C4(&v836, v519 + v518);
              v521 = *(v3 + 48);
              v522 = v4;
              v523 = v35;
              v524 = v8;
              v525 = v521 + 80 * v38;
              *(v525 + 72) = v520;
              v526 = v519 + v518;
              v37 = v834;
              *(v525 + 76) = sub_2775CF2C4(&v836, v526);
              v8 = v524;
              v35 = v523;
              v4 = v522;
LABEL_896:
              LODWORD(v837) = 0;
              v836 = 0;
              if (HIDWORD(v837))
              {
                goto LABEL_1096;
              }

              v529 = v521 + 80 * v38;
              v530 = v2[2];
              if (v530)
              {
                atomic_fetch_add_explicit(v530 + 4, 1u, memory_order_relaxed);
              }

              v531 = v2[8];
              if (v531)
              {
                atomic_fetch_add_explicit(v531 + 4, 1u, memory_order_relaxed);
              }

              *v529 = *v2;
              v533 = *(v2 + 2);
              v532 = *(v2 + 3);
              v534 = *(v2 + 1);
              *(v529 + 64) = v2[8];
              *(v529 + 32) = v533;
              *(v529 + 48) = v532;
              *(v529 + 16) = v534;
              v535 = __src;
              v536 = *(v3 + 60);
              v537 = *(v3 + 48) + 80 * v536;
              *v537 = __src;
              *(v537 + 8) = v840 - v535;
              v539 = *(v537 + 72);
              v538 = *(v537 + 76);
              if (v539 > v538 || v539 != *(v3 + 64))
              {
                if ((v536 & 0x80000000) == 0)
                {
                  v558 = 0;
                  v559 = -1;
                  do
                  {
                    sub_2775A9300(*(v3 + 48) + v558);
                    ++v559;
                    v558 += 80;
                  }

                  while (v559 < *(v3 + 60));
                }

                *v37 = 0;
                goto LABEL_1096;
              }

              *(v3 + 60) = v536 + 1;
              *(v3 + 64) = v538 + 1;
              goto LABEL_904;
            }
          }
        }

        v521 = *(v3 + 48);
        v528 = v521 + 80 * v38;
        *(v528 + 72) = 0;
        *(v528 + 76) = v514 - 1;
        goto LABEL_896;
      }

      if (v38 > 26843544)
      {
        goto LABEL_1096;
      }

      v39 = v38 + 1;
LABEL_888:
      v512 = malloc_type_realloc(*(v3 + 48), 80 * v39, 0x10700408B15705AuLL);
      if (!v512)
      {
        goto LABEL_1096;
      }

      *(v3 + 48) = v512;
      v513 = &v512[80 * *(v3 + 60)];
      *(v513 + 3) = 0u;
      *(v513 + 4) = 0u;
      *(v513 + 1) = 0u;
      *(v513 + 2) = 0u;
      *v513 = 0u;
      v38 = *(v3 + 60);
      *(v3 + 56) = v38 + 1;
      v36 = *(v3 + 112);
      goto LABEL_890;
    }

LABEL_68:
    if (!*(v3 + 88))
    {
      goto LABEL_1096;
    }

    v827 = v8;
    v64 = *(v3 + 104);
    if (v64)
    {
      v65 = *v64;
    }

    else
    {
      v66 = *(v3 + 96);
      v67 = sub_2775C68C0(v66, 0x4A8);
      if (!v67)
      {
        *(v3 + 104) = 0;
        return -12;
      }

      v68 = v67;
      v65 = *v67;
      *(v68 - 5) = v65;
      *(v68 - 4) = v66;
      *(v68 - 3) = 1;
      *(v68 - 2) = sub_2775DA1FC;
      *(v68 - 1) = v68;
      *(v3 + 104) = v68 - 40;
    }

    *(v3 + 112) = v65;
    bzero(v65, 0x480uLL);
    v69 = *(v3 + 112);
    *(v69 + 249) = v31;
    *(v69 + 250) = v32;
    v832 = *(v3 + 88);
    v821 = v4;
    v824 = (v3 + 49920);
    v819 = v15;
    v820 = v2;
    if (*(v832 + 357))
    {
      v70 = 0;
      *(v69 + 232) = 0;
      v829 = (v69 + 232);
      *(v69 + 251) = 0;
LABEL_75:
      v818 = (v69 + 264);
      *(v69 + 264) = 1;
      goto LABEL_76;
    }

    if (!v837)
    {
      v78 = __src;
      if (__src < v840)
      {
        __src = __src + 1;
        v79 = *v78;
        LODWORD(v837) = 7;
        v836 = v79 << 57;
        LODWORD(v79) = (v79 >> 7) & 1;
        goto LABEL_126;
      }

      HIDWORD(v837) = 1;
    }

    v95 = v836;
    LODWORD(v837) = v837 - 1;
    v836 *= 2;
    v79 = v95 >> 63;
LABEL_126:
    *(v69 + 251) = v79;
    if (v79)
    {
      *(v69 + 252) = sub_2775CF2C4(&v836, 3u);
      if (*(v832 + 376) && !*(v832 + 368))
      {
        *(v69 + 260) = sub_2775CF2C4(&v836, *(v832 + 385));
      }

      if (*(v832 + 389))
      {
        v96 = sub_2775CF2C4(&v836, *(v832 + 391));
        *(v69 + 256) = v96;
        v97 = *(v3 + 344 * *(v69 + 252) + 49944);
        if (!v97 || *(v97 + 256) != v96)
        {
          goto LABEL_1095;
        }
      }

      goto LABEL_876;
    }

    v70 = sub_2775CF2C4(&v836, 2u);
    v98 = *(v832 + 357);
    *(v69 + 232) = v70;
    v829 = (v69 + 232);
    if (v98)
    {
      goto LABEL_75;
    }

    if (!v837)
    {
      v99 = __src;
      if (__src < v840)
      {
        __src = __src + 1;
        v100 = *v99;
        v101 = 7;
        LODWORD(v837) = 7;
        v102 = v100 << 57;
        v836 = v100 << 57;
        LODWORD(v100) = (v100 >> 7) & 1;
        v818 = (v69 + 264);
        *(v69 + 264) = v100;
        if (!v100)
        {
LABEL_1204:
          LODWORD(v837) = v101 - 1;
          v836 = 2 * v102;
          v71 = v102 >> 63;
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      HIDWORD(v837) = 1;
    }

    v670 = v836;
    v101 = v837 - 1;
    LODWORD(v837) = v837 - 1;
    v102 = 2 * v836;
    v836 *= 2;
    v670 >>= 63;
    v818 = (v69 + 264);
    *(v69 + 264) = v670;
    if (!v670)
    {
      if (!v101)
      {
        v671 = __src;
        if (__src < v840)
        {
          __src = __src + 1;
          v71 = *v671;
          LODWORD(v837) = 7;
          v836 = v71 << 57;
          LODWORD(v71) = (v71 >> 7) & 1;
          goto LABEL_80;
        }

        HIDWORD(v837) = 1;
      }

      goto LABEL_1204;
    }

LABEL_76:
    if (*(v832 + 376) && !*(v832 + 368))
    {
      *(v69 + 260) = sub_2775CF2C4(&v836, *(v832 + 385));
      v70 = *(v69 + 232);
    }

    LOBYTE(v71) = v70 != 0;
LABEL_80:
    *(v69 + 265) = v71;
    if (v70 == 3 || !v70 && *v818 || *(v832 + 357))
    {
      LOBYTE(v72) = 1;
      goto LABEL_85;
    }

    if (!v837)
    {
      v85 = __src;
      if (__src < v840)
      {
        __src = __src + 1;
        v72 = *v85;
        LODWORD(v837) = 7;
        v836 = v72 << 57;
        LODWORD(v72) = (v72 >> 7) & 1;
        goto LABEL_85;
      }

      HIDWORD(v837) = 1;
    }

    v189 = v836;
    LODWORD(v837) = v837 - 1;
    v836 *= 2;
    v72 = v189 >> 63;
LABEL_85:
    *(v69 + 266) = v72;
    if (!v837)
    {
      v73 = __src;
      if (__src < v840)
      {
        __src = __src + 1;
        v77 = *v73;
        v74 = 7;
        LODWORD(v837) = 7;
        v75 = v77 << 57;
        v836 = v77 << 57;
        v76 = (v69 + 267);
        *(v69 + 267) = (v77 & 0x80) != 0;
        LODWORD(v77) = *(v832 + 404);
        if (v77 != 2)
        {
LABEL_141:
          *(v69 + 268) = v77;
          if (v77)
          {
            LODWORD(v103) = *(v832 + 408);
            if (v103 != 2)
            {
              goto LABEL_159;
            }

            if (!v74)
            {
              v103 = __src;
              if (__src < v840)
              {
                __src = __src + 1;
                v104 = *v103;
                LODWORD(v837) = 7;
                v836 = v104 << 57;
                LODWORD(v103) = (v104 >> 7) & 1;
                goto LABEL_159;
              }

              HIDWORD(v837) = 1;
            }

            LODWORD(v837) = v74 - 1;
            v836 = 2 * v75;
            v103 = (v75 >> 63);
          }

          else
          {
            LOBYTE(v103) = 0;
          }

LABEL_159:
          if (v70)
          {
            v112 = v103;
          }

          else
          {
            v112 = 1;
          }

          *(v69 + 269) = v112;
          if (*(v832 + 389))
          {
            *(v69 + 256) = sub_2775CF2C4(&v836, *(v832 + 391));
          }

          if (*(v832 + 357))
          {
            LOBYTE(v113) = 0;
            goto LABEL_177;
          }

          if (*v829 == 3)
          {
            LOBYTE(v113) = 1;
            goto LABEL_177;
          }

          if (!v837)
          {
            v114 = __src;
            if (__src < v840)
            {
              __src = __src + 1;
              v113 = *v114;
              LODWORD(v837) = 7;
              v836 = v113 << 57;
              LODWORD(v113) = (v113 >> 7) & 1;
              goto LABEL_177;
            }

            HIDWORD(v837) = 1;
          }

          v119 = v836;
          LODWORD(v837) = v837 - 1;
          v836 *= 2;
          v113 = v119 >> 63;
LABEL_177:
          *(v69 + 270) = v113;
          if (*(v832 + 399))
          {
            v120 = sub_2775CF2C4(&v836, *(v832 + 412));
          }

          else
          {
            v120 = 0;
          }

          *(v69 + 248) = v120;
          if (!*(v69 + 266) && (*v829 & 1) != 0)
          {
            v121 = sub_2775CF2C4(&v836, 3u);
          }

          else
          {
            v121 = 7;
          }

          *(v69 + 271) = v121;
          v122 = v832;
          if (!*(v832 + 376))
          {
            goto LABEL_199;
          }

          if (!v837)
          {
            v123 = __src;
            if (__src < v840)
            {
              __src = __src + 1;
              v124 = *v123;
              LODWORD(v837) = 7;
              v836 = v124 << 57;
              LODWORD(v124) = (v124 >> 7) & 1;
LABEL_190:
              *(v69 + 272) = v124;
              if (v124)
              {
                v126 = *(v3 + 88);
                if (*(v126 + 34))
                {
                  v127 = 0;
                  v128 = (v832 + 40);
                  do
                  {
                    if (*(v128 + 3))
                    {
                      v129 = *v128;
                      if (!*v128 || ((v129 >> *(v69 + 249)) & 1) != 0 && ((256 << *(v69 + 250)) & v129) != 0)
                      {
                        *(v69 + 276 + 4 * v127) = sub_2775CF2C4(&v836, *(v832 + 384));
                      }
                    }

                    ++v127;
                    v128 += 5;
                  }

                  while (v127 < *(v126 + 34));
                }
              }

LABEL_199:
              v130 = *v829;
              if ((*v829 & 1) == 0)
              {
                if (v130 || !*v818)
                {
                  v131 = sub_2775CF2C4(&v836, 8u);
                  v132 = (v69 + 404);
                  *(v69 + 404) = v131;
                  if (v131 != -1 && *(v69 + 266) && *(v832 + 399))
                  {
                    v133 = 8;
                    do
                    {
                      sub_2775CF2C4(&v836, *(v832 + 412));
                      --v133;
                    }

                    while (v133);
                    v122 = v832;
                  }
                }

                else
                {
                  v132 = (v69 + 404);
                  *(v69 + 404) = -1;
                }

                if (*v827 && *v829 == 2 && *v132 == 255 || (sub_2775B5504(v3, &v836, 0) & 0x80000000) != 0)
                {
                  goto LABEL_1095;
                }

                if (!*(v69 + 268) || *(v69 + 417))
                {
                  LOBYTE(v140) = 0;
LABEL_229:
                  LOBYTE(v141) = 0;
                  *(v69 + 419) = v140;
                  goto LABEL_338;
                }

                if (!v837)
                {
                  v140 = __src;
                  if (__src < v840)
                  {
                    __src = __src + 1;
                    v142 = *v140;
                    LODWORD(v837) = 7;
                    v836 = v142 << 57;
                    LODWORD(v140) = (v142 >> 7) & 1;
                    goto LABEL_229;
                  }

                  HIDWORD(v837) = 1;
                }

                v477 = v836;
                LODWORD(v837) = v837 - 1;
                v836 *= 2;
                v140 = (v477 >> 63);
                goto LABEL_229;
              }

              *(v69 + 419) = 0;
              if (v130 == 3)
              {
                v134 = -1;
              }

              else
              {
                v134 = sub_2775CF2C4(&v836, 8u);
              }

              *(v69 + 404) = v134;
              v135 = *(v832 + 399);
              if (*(v69 + 266))
              {
                if (!*(v832 + 399))
                {
                  goto LABEL_219;
                }

                v136 = 8;
                do
                {
                  sub_2775CF2C4(&v836, *(v832 + 412));
                  --v136;
                }

                while (v136);
                v135 = *(v832 + 399);
                v122 = v832;
              }

              if (v135)
              {
                if (!v837)
                {
                  v137 = __src;
                  if (__src < v840)
                  {
                    __src = __src + 1;
                    v138 = *v137;
                    LODWORD(v837) = 7;
                    v836 = v138 << 57;
                    LODWORD(v138) = (v138 >> 7) & 1;
                    goto LABEL_235;
                  }

                  HIDWORD(v837) = 1;
                }

                v143 = v836;
                LODWORD(v837) = v837 - 1;
                v836 *= 2;
                v138 = v143 >> 63;
LABEL_235:
                v139 = (v69 + 420);
                *(v69 + 420) = v138;
                if (v138)
                {
                  v144 = (v69 + 421);
                  *(v69 + 421) = sub_2775CF2C4(&v836, 3u);
                  *(v69 + 422) = -1;
                  v145 = sub_2775CF2C4(&v836, 3u);
                  v146 = 0;
                  *(v69 + 424) = v145;
                  *(v69 + 427) = -1;
                  *(v69 + 425) = -1;
                  v122 = v832;
                  v147 = *(v832 + 412);
                  v148 = 1 << (v147 - 1);
                  v149 = v3 + 49944;
                  do
                  {
                    if (!*v149)
                    {
                      goto LABEL_1095;
                    }

                    if (v147)
                    {
                      v150 = *(*v149 + 248) - *(v69 + 248);
                      v151 = (v150 & (v148 - 1)) - (v150 & v148);
                    }

                    else
                    {
                      v151 = 0;
                    }

                    *(block + v146) = v151 + v148;
                    v146 += 4;
                    v149 += 344;
                  }

                  while (v146 != 32);
                  v152 = 0;
                  v841 = 0u;
                  v842 = 0u;
                  *(&v841 + *v144) = 1;
                  *(&v841 + v145) = 1;
                  v153 = -1;
                  v154 = -1;
                  do
                  {
                    v155 = *(block + v152);
                    if (*(&v841 + v152))
                    {
                      v156 = 1;
                    }

                    else
                    {
                      v156 = v155 < v148;
                    }

                    if (!v156 && v155 >= v153)
                    {
                      *(v69 + 427) = v152;
                      v154 = v152;
                      v153 = v155;
                    }

                    ++v152;
                  }

                  while (v152 != 8);
                  if (v153 != -1)
                  {
                    *(&v841 + v154) = 1;
                  }

                  v158 = 0;
                  v159 = 0x7FFFFFFF;
                  v160 = -1;
                  do
                  {
                    v161 = *(block + v158);
                    if (*(&v841 + v158))
                    {
                      v162 = 1;
                    }

                    else
                    {
                      v162 = v161 < v148;
                    }

                    if (!v162 && v161 < v159)
                    {
                      *(v69 + 425) = v158;
                      v160 = v158;
                      v159 = v161;
                    }

                    ++v158;
                  }

                  while (v158 != 8);
                  if (v159 != 0x7FFFFFFF)
                  {
                    *(&v841 + v160) = 1;
                  }

                  v164 = 0;
                  v165 = 0x7FFFFFFF;
                  v166 = -1;
                  do
                  {
                    v167 = *(block + v164);
                    if (*(&v841 + v164))
                    {
                      v168 = 1;
                    }

                    else
                    {
                      v168 = v167 < v148;
                    }

                    if (!v168 && v167 < v165)
                    {
                      *(v69 + 426) = v164;
                      v166 = v164;
                      v165 = v167;
                    }

                    ++v164;
                  }

                  while (v164 != 8);
                  if (v165 != 0x7FFFFFFF)
                  {
                    *(&v841 + v166) = 1;
                  }

                  for (i = 1; i != 7; ++i)
                  {
                    v171 = v144[i];
                    if (v171 < 0)
                    {
                      v172 = 0;
                      v173 = -1;
                      do
                      {
                        v174 = *(block + v172);
                        if (*(&v841 + v172))
                        {
                          v175 = 0;
                        }

                        else
                        {
                          v175 = v174 < v148;
                        }

                        if (v175 && v174 >= v173)
                        {
                          v144[i] = v172;
                          LOBYTE(v171) = v172;
                          v173 = v174;
                        }

                        ++v172;
                      }

                      while (v172 != 8);
                      if (v173 != -1)
                      {
                        *(&v841 + v171) = 1;
                      }
                    }
                  }

                  v177 = 0;
                  v178 = -1;
                  v179 = 0x7FFFFFFF;
                  do
                  {
                    if (*(block + v177) < v179)
                    {
                      v178 = v177;
                      v179 = *(block + v177);
                    }

                    ++v177;
                  }

                  while (v177 != 8);
                  for (j = 0; j != 7; ++j)
                  {
                    if (v144[j] < 0)
                    {
                      v144[j] = v178;
                    }
                  }
                }

LABEL_303:
                v181 = 0;
                v182 = v69 + 421;
                do
                {
                  if (!*v139)
                  {
                    *(v182 + v181) = sub_2775CF2C4(&v836, 3u);
                  }

                  if (v122[389])
                  {
                    v183 = sub_2775CF2C4(&v836, v122[390]);
                    v184 = *(v3 + 49936 + 344 * *(v182 + v181) + 8);
                    if (!v184 || *(v184 + 256) != ((*(v69 + 256) + (1 << v122[391]) + ~v183) & ((1 << v122[391]) - 1)))
                    {
                      goto LABEL_1095;
                    }
                  }

                  ++v181;
                }

                while (v181 != 7);
                if (*(v69 + 266))
                {
                  v185 = 0;
                }

                else
                {
                  v185 = *(v69 + 270) != 0;
                }

                if ((sub_2775B5504(v3, &v836, v185) & 0x80000000) != 0)
                {
                  goto LABEL_1095;
                }

                v186 = v837;
                if (*(v69 + 269))
                {
                  LOBYTE(v187) = 0;
                  goto LABEL_323;
                }

                if (!v837)
                {
                  v188 = __src;
                  if (__src < v840)
                  {
                    __src = __src + 1;
                    v187 = *v188;
                    v186 = 7;
                    LODWORD(v837) = 7;
                    v836 = v187 << 57;
                    LODWORD(v187) = (v187 >> 7) & 1;
                    goto LABEL_323;
                  }

                  HIDWORD(v837) = 1;
                }

                v190 = v836;
                v186 = v837 - 1;
                LODWORD(v837) = v837 - 1;
                v836 *= 2;
                v187 = v190 >> 63;
LABEL_323:
                *(v69 + 428) = v187;
                if (!v186)
                {
                  v191 = __src;
                  if (__src < v840)
                  {
                    __src = __src + 1;
                    v193 = *v191;
                    v192 = 7;
                    LODWORD(v837) = 7;
                    v836 = v193 << 57;
                    LODWORD(v193) = (v193 >> 7) & 1;
                    goto LABEL_328;
                  }

                  HIDWORD(v837) = 1;
                }

                v194 = v836;
                v192 = v186 - 1;
                LODWORD(v837) = v192;
                v836 *= 2;
                v193 = v194 >> 63;
LABEL_328:
                if (v193)
                {
                  v195 = 4;
                }

                else
                {
                  v195 = sub_2775CF2C4(&v836, 2u);
                  v192 = v837;
                }

                *(v69 + 432) = v195;
                if (!v192)
                {
                  v196 = __src;
                  if (__src < v840)
                  {
                    __src = __src + 1;
                    v199 = *v196;
                    v197 = 7;
                    LODWORD(v837) = 7;
                    v198 = v199 << 57;
                    v836 = v199 << 57;
                    LODWORD(v199) = (v199 >> 7) & 1;
LABEL_336:
                    *(v69 + 436) = v199;
                    if (*(v69 + 266) || !v122[401] || !v122[399] || (*v829 & 1) == 0)
                    {
                      LOBYTE(v141) = 0;
                      goto LABEL_338;
                    }

                    if (!v197)
                    {
                      v203 = __src;
                      if (__src < v840)
                      {
                        __src = __src + 1;
                        v141 = *v203;
                        LODWORD(v837) = 7;
                        v836 = v141 << 57;
                        LODWORD(v141) = (v141 >> 7) & 1;
                        goto LABEL_338;
                      }

                      HIDWORD(v837) = 1;
                    }

                    LODWORD(v837) = v197 - 1;
                    v836 = 2 * v198;
                    v141 = v198 >> 63;
LABEL_338:
                    *(v69 + 437) = v141;
                    if (v122[357])
                    {
                      v201 = 0;
                      v202 = v837;
                      goto LABEL_355;
                    }

                    v202 = v837;
                    if (*v76)
                    {
                      v201 = 0;
                      goto LABEL_355;
                    }

                    if (!v837)
                    {
                      v204 = __src;
                      if (__src < v840)
                      {
                        __src = __src + 1;
                        v205 = *v204;
                        v202 = 7;
                        LODWORD(v837) = 7;
                        v836 = v205 << 57;
                        LODWORD(v205) = (v205 >> 7) & 1;
LABEL_354:
                        v201 = v205 == 0;
LABEL_355:
                        *(v69 + 438) = v201;
                        if (!v202)
                        {
                          v207 = __src;
                          if (__src < v840)
                          {
                            __src = __src + 1;
                            v208 = *v207;
                            v209 = 7;
                            LODWORD(v837) = 7;
                            v210 = v208 << 57;
                            v836 = v208 << 57;
                            LODWORD(v211) = (v208 >> 7) & 1;
LABEL_360:
                            *(v69 + 440) = v211;
                            v213 = v122[392];
                            v214 = (64 << v213) - 1;
                            v215 = v213 + 6;
                            v216 = (v214 + *(v69 + 236)) >> (v213 + 6);
                            v217 = *(v69 + 244);
                            v218 = 0x40u >> v213;
                            v219 = -1;
                            do
                            {
                              ++v219;
                            }

                            while (v218 << v219 < v216);
                            v220 = 2 * v215;
                            v221 = v219;
                            *(v69 + 442) = v219;
                            if (v216 >= 64)
                            {
                              v222 = 64;
                            }

                            else
                            {
                              v222 = v216;
                            }

                            v223 = -1;
                            do
                            {
                              ++v223;
                            }

                            while (1 << v223 < v222);
                            v224 = (v214 + v217) >> v215;
                            *(v69 + 443) = v223;
                            if (v224 >= 64)
                            {
                              v225 = 64;
                            }

                            else
                            {
                              v225 = (v214 + v217) >> v215;
                            }

                            v226 = -1;
                            do
                            {
                              ++v226;
                            }

                            while (1 << v226 < v225);
                            v227 = 0x900000u >> v220;
                            v228 = v226;
                            *(v69 + 447) = v226;
                            v229 = v216 * v224;
                            v230 = -1;
                            do
                            {
                              ++v230;
                            }

                            while ((v227 << v230) < v229);
                            if (v230 <= v219)
                            {
                              v231 = v219;
                            }

                            else
                            {
                              v231 = v230;
                            }

                            if (v211)
                            {
                              *(v69 + 444) = v219;
                              if (v223 > v219)
                              {
                                v232 = v840;
                                v233 = __src;
                                while (1)
                                {
                                  if (!v209)
                                  {
                                    if (v233 < v232)
                                    {
                                      __src = v233 + 1;
                                      v234 = *v233;
                                      v209 = 7;
                                      LODWORD(v837) = 7;
                                      v210 = v234 << 57;
                                      v836 = v234 << 57;
                                      LODWORD(v235) = (v234 >> 7) & 1;
                                      v233 = __src;
                                      goto LABEL_385;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  LODWORD(v837) = --v209;
                                  v235 = v210 >> 63;
                                  v210 *= 2;
                                  v836 = v210;
LABEL_385:
                                  if (v235)
                                  {
                                    *(v69 + 444) = ++v221;
                                    if (v221 < v223)
                                    {
                                      continue;
                                    }
                                  }

                                  break;
                                }
                              }

                              if (v216 < 1)
                              {
                                v237 = 0;
                              }

                              else
                              {
                                v236 = 0;
                                v237 = 0;
                                do
                                {
                                  *(v69 + 450 + 2 * v237++) = v236;
                                  v236 += ((v216 - 1) >> v221) + 1;
                                }

                                while (v236 < v216);
                              }

                              *(v69 + 445) = v237;
                              v244 = (v231 - v221) & ~((v231 - v221) >> 31);
                              *(v69 + 446) = (v231 - v221) & ~((v231 - v221) >> 31);
                              *(v69 + 448) = (v231 - v221) & ~((v231 - v221) >> 31);
                              if (v228 > v244)
                              {
                                v245 = v840;
                                v246 = __src;
                                while (1)
                                {
                                  if (!v209)
                                  {
                                    if (v246 < v245)
                                    {
                                      __src = v246 + 1;
                                      v247 = *v246;
                                      v209 = 7;
                                      LODWORD(v837) = 7;
                                      v210 = v247 << 57;
                                      v836 = v247 << 57;
                                      LODWORD(v248) = (v247 >> 7) & 1;
                                      v246 = __src;
                                      goto LABEL_412;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  LODWORD(v837) = --v209;
                                  v248 = v210 >> 63;
                                  v210 *= 2;
                                  v836 = v210;
LABEL_412:
                                  if (v248)
                                  {
                                    *(v69 + 448) = ++v244;
                                    if (v244 < v228)
                                    {
                                      continue;
                                    }
                                  }

                                  break;
                                }
                              }

                              if (v224 < 1)
                              {
                                v250 = 0;
                              }

                              else
                              {
                                v249 = 0;
                                v250 = 0;
                                do
                                {
                                  *(v69 + 580 + 2 * v250++) = v249;
                                  v249 += ((v224 - 1) >> v244) + 1;
                                }

                                while (v249 < v224);
                              }

                              *(v69 + 449) = v250;
                            }

                            else
                            {
                              *(v69 + 445) = 0;
                              if (v216 < 1)
                              {
                                v243 = 0;
                                v239 = 0;
                              }

                              else
                              {
                                v238 = 0;
                                v239 = 0;
                                for (k = 0; k < v216; k += v242)
                                {
                                  if (v216 - k >= v218)
                                  {
                                    v241 = v218;
                                  }

                                  else
                                  {
                                    v241 = v216 - k;
                                  }

                                  if (v241 < 2)
                                  {
                                    v242 = 1;
                                  }

                                  else
                                  {
                                    v242 = sub_2775CF45C(&v836, v241) + 1;
                                    v238 = *(v69 + 445);
                                  }

                                  *(v69 + 450 + 2 * v238) = k;
                                  if (v239 <= v242)
                                  {
                                    v239 = v242;
                                  }

                                  v243 = ++v238;
                                  *(v69 + 445) = v238;
                                  if (v238 > 0x3Fu)
                                  {
                                    break;
                                  }
                                }
                              }

                              v251 = -1;
                              do
                              {
                                ++v251;
                              }

                              while (1 << v251 < v243);
                              *(v69 + 444) = v251;
                              if (v231)
                              {
                                v252 = v231 + 1;
                              }

                              else
                              {
                                v252 = 0;
                              }

                              v253 = (v229 >> v252) / v239;
                              if (v253 <= 1)
                              {
                                v254 = 1;
                              }

                              else
                              {
                                v254 = v253;
                              }

                              *(v69 + 449) = 0;
                              if (v224 < 1)
                              {
                                v250 = 0;
                              }

                              else
                              {
                                v250 = 0;
                                for (m = 0; m < v224; m += v257)
                                {
                                  if (v224 - m >= v254)
                                  {
                                    v256 = v254;
                                  }

                                  else
                                  {
                                    v256 = v224 - m;
                                  }

                                  if (v256 < 2)
                                  {
                                    v257 = 1;
                                  }

                                  else
                                  {
                                    v257 = sub_2775CF45C(&v836, v256) + 1;
                                    v250 = *(v69 + 449);
                                  }

                                  *(v69 + 580 + 2 * v250++) = m;
                                  *(v69 + 449) = v250;
                                  if (v250 > 0x3Fu)
                                  {
                                    break;
                                  }
                                }
                              }

                              v258 = -1;
                              do
                              {
                                ++v258;
                              }

                              while (1 << v258 < v250);
                              v244 = v258;
                              *(v69 + 448) = v258;
                              v237 = *(v69 + 445);
                              v221 = *(v69 + 444);
                            }

                            *(v69 + 2 * v237 + 450) = v216;
                            *(v69 + 2 * v250 + 580) = v224;
                            if (v221 | v244)
                            {
                              v259 = sub_2775CF2C4(&v836, v244 + v221);
                              *(v69 + 710) = v259;
                              if (*(v69 + 449) * *(v69 + 445) <= v259)
                              {
                                goto LABEL_1095;
                              }

                              *(v69 + 441) = sub_2775CF2C4(&v836, 2u) + 1;
                            }

                            else
                            {
                              *(v69 + 441) = 0;
                              *(v69 + 710) = 0;
                            }

                            *(v69 + 712) = sub_2775CF2C4(&v836, 8u);
                            if (!v837)
                            {
                              v260 = __src;
                              if (__src < v840)
                              {
                                __src = __src + 1;
                                v262 = *v260;
                                v261 = 7;
                                LODWORD(v837) = 7;
                                v836 = v262 << 57;
                                LODWORD(v262) = (v262 >> 7) & 1;
                                goto LABEL_453;
                              }

                              HIDWORD(v837) = 1;
                            }

                            v263 = v836;
                            v261 = v837 - 1;
                            LODWORD(v837) = v837 - 1;
                            v836 *= 2;
                            v262 = v263 >> 63;
LABEL_453:
                            if (v262)
                            {
                              v264 = sub_2775CF350(&v836, 7u);
                              v261 = v837;
                            }

                            else
                            {
                              v264 = 0;
                            }

                            *(v69 + 713) = v264;
                            if (v122[418])
                            {
LABEL_500:
                              if (!v261)
                              {
                                v286 = __src;
                                if (__src < v840)
                                {
                                  __src = __src + 1;
                                  v288 = *v286;
                                  v287 = 7;
                                  LODWORD(v837) = 7;
                                  v836 = v288 << 57;
                                  LODWORD(v288) = (v288 >> 7) & 1;
                                  goto LABEL_505;
                                }

                                HIDWORD(v837) = 1;
                              }

                              v289 = v836;
                              v287 = v261 - 1;
                              LODWORD(v837) = v287;
                              v836 *= 2;
                              v288 = v289 >> 63;
LABEL_505:
                              *(v69 + 718) = v288;
                              if (v288)
                              {
                                *(v69 + 719) = sub_2775CF2C4(&v836, 4u);
                                v290 = sub_2775CF2C4(&v836, 4u);
                                *(v69 + 720) = v290;
                                if (v122[420])
                                {
                                  v290 = sub_2775CF2C4(&v836, 4u);
                                }

                                *(v69 + 721) = v290;
                                v287 = v837;
                              }

                              if (!v287)
                              {
                                v291 = __src;
                                if (__src < v840)
                                {
                                  __src = __src + 1;
                                  v294 = *v291;
                                  v292 = 7;
                                  LODWORD(v837) = 7;
                                  v293 = v294 << 57;
                                  v836 = v294 << 57;
                                  LODWORD(v294) = (v294 >> 7) & 1;
                                  goto LABEL_514;
                                }

                                HIDWORD(v837) = 1;
                              }

                              v295 = v836;
                              v292 = v287 - 1;
                              LODWORD(v837) = v287 - 1;
                              v293 = 2 * v836;
                              v836 *= 2;
                              v294 = v295 >> 63;
LABEL_514:
                              *(v69 + 722) = v294;
                              if (!v294)
                              {
                                v297 = 0;
                                *(v69 + 806) = 0;
                                *(v69 + 774) = 0u;
                                *(v69 + 790) = 0u;
                                *(v69 + 742) = 0u;
                                *(v69 + 758) = 0u;
                                *(v69 + 726) = 0u;
                                do
                                {
                                  *(v69 + 732 + v297) = -1;
                                  v297 += 10;
                                }

                                while (v297 != 80);
                                goto LABEL_596;
                              }

                              v296 = *(v69 + 271);
                              if (v296 == 7)
                              {
                                *(v69 + 723) = 1;
                                *(v69 + 725) = 1;
LABEL_538:
                                v308 = 0;
                                *(v69 + 806) = -256;
                                v309 = (v69 + 734);
                                while (1)
                                {
                                  if (!v292)
                                  {
                                    v310 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v311 = *v310;
                                      v312 = 7;
                                      LODWORD(v837) = 7;
                                      v836 = v311 << 57;
                                      if (((v311 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_542;
                                      }

                                      goto LABEL_545;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v312 = v292 - 1;
                                  LODWORD(v837) = v312;
                                  v836 = 2 * v293;
                                  if (v293 >= 0)
                                  {
LABEL_542:
                                    v313 = 0;
                                    goto LABEL_546;
                                  }

LABEL_545:
                                  v313 = sub_2775CF350(&v836, 9u);
                                  *(v69 + 807) = v308;
                                  v312 = v837;
LABEL_546:
                                  *(v309 - 4) = v313;
                                  if (!v312)
                                  {
                                    v314 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v315 = *v314;
                                      v316 = 7;
                                      LODWORD(v837) = 7;
                                      v836 = v315 << 57;
                                      if (((v315 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_549;
                                      }

                                      goto LABEL_552;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v318 = v836;
                                  v316 = v312 - 1;
                                  LODWORD(v837) = v312 - 1;
                                  v836 *= 2;
                                  if (v318 >= 0)
                                  {
LABEL_549:
                                    v317 = 0;
                                    goto LABEL_553;
                                  }

LABEL_552:
                                  v317 = sub_2775CF350(&v836, 7u);
                                  *(v69 + 807) = v308;
                                  v316 = v837;
LABEL_553:
                                  *(v309 - 6) = v317;
                                  if (!v316)
                                  {
                                    v319 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v320 = *v319;
                                      v321 = 7;
                                      LODWORD(v837) = 7;
                                      v836 = v320 << 57;
                                      if (((v320 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_556;
                                      }

                                      goto LABEL_559;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v323 = v836;
                                  v321 = v316 - 1;
                                  LODWORD(v837) = v321;
                                  v836 *= 2;
                                  if (v323 >= 0)
                                  {
LABEL_556:
                                    v322 = 0;
                                    goto LABEL_560;
                                  }

LABEL_559:
                                  v322 = sub_2775CF350(&v836, 7u);
                                  *(v69 + 807) = v308;
                                  v321 = v837;
LABEL_560:
                                  *(v309 - 5) = v322;
                                  if (!v321)
                                  {
                                    v324 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v325 = *v324;
                                      v326 = 7;
                                      LODWORD(v837) = 7;
                                      v836 = v325 << 57;
                                      if (((v325 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_563;
                                      }

                                      goto LABEL_566;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v328 = v836;
                                  v326 = v321 - 1;
                                  LODWORD(v837) = v326;
                                  v836 *= 2;
                                  if (v328 >= 0)
                                  {
LABEL_563:
                                    v327 = 0;
                                    goto LABEL_567;
                                  }

LABEL_566:
                                  v327 = sub_2775CF350(&v836, 7u);
                                  *(v69 + 807) = v308;
                                  v326 = v837;
LABEL_567:
                                  *(v309 - 4) = v327;
                                  if (!v326)
                                  {
                                    v329 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v330 = *v329;
                                      v331 = 7;
                                      LODWORD(v837) = 7;
                                      v836 = v330 << 57;
                                      if (((v330 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_570;
                                      }

                                      goto LABEL_573;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v333 = v836;
                                  v331 = v326 - 1;
                                  LODWORD(v837) = v331;
                                  v836 *= 2;
                                  if (v333 >= 0)
                                  {
LABEL_570:
                                    v332 = 0;
                                    goto LABEL_574;
                                  }

LABEL_573:
                                  v332 = sub_2775CF350(&v836, 7u);
                                  *(v69 + 807) = v308;
                                  v331 = v837;
LABEL_574:
                                  *(v309 - 3) = v332;
                                  if (!v331)
                                  {
                                    v334 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v335 = *v334;
                                      v336 = 7;
                                      LODWORD(v837) = 7;
                                      v836 = v335 << 57;
                                      if (((v335 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_577;
                                      }

                                      goto LABEL_580;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v338 = v836;
                                  v336 = v331 - 1;
                                  LODWORD(v837) = v336;
                                  v836 *= 2;
                                  if (v338 >= 0)
                                  {
LABEL_577:
                                    v337 = -1;
                                    goto LABEL_581;
                                  }

LABEL_580:
                                  v337 = sub_2775CF2C4(&v836, 3u);
                                  *(v69 + 807) = v308;
                                  *(v69 + 806) = 1;
                                  v336 = v837;
LABEL_581:
                                  *(v309 - 2) = v337;
                                  if (!v336)
                                  {
                                    v339 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v342 = *v339;
                                      v340 = 7;
                                      LODWORD(v837) = 7;
                                      v341 = v342 << 57;
                                      v836 = v342 << 57;
                                      LODWORD(v342) = (v342 >> 7) & 1;
                                      goto LABEL_586;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  v343 = v836;
                                  v340 = v336 - 1;
                                  LODWORD(v837) = v340;
                                  v341 = 2 * v836;
                                  v836 *= 2;
                                  v342 = v343 >> 63;
LABEL_586:
                                  *(v309 - 1) = v342;
                                  if (v342)
                                  {
                                    *(v69 + 807) = v308;
                                    *(v69 + 806) = 1;
                                  }

                                  if (v340)
                                  {
                                    goto LABEL_592;
                                  }

                                  v344 = __src;
                                  if (__src >= v840)
                                  {
                                    HIDWORD(v837) = 1;
LABEL_592:
                                    v292 = v340 - 1;
                                    LODWORD(v837) = v340 - 1;
                                    v293 = 2 * v341;
                                    v836 = 2 * v341;
                                    v345 = v341 >> 63;
                                    goto LABEL_593;
                                  }

                                  __src = __src + 1;
                                  v345 = *v344;
                                  v292 = 7;
                                  LODWORD(v837) = 7;
                                  v293 = v345 << 57;
                                  v836 = v345 << 57;
                                  LODWORD(v345) = (v345 >> 7) & 1;
LABEL_593:
                                  *v309 = v345;
                                  if (v345)
                                  {
                                    *(v69 + 807) = v308;
                                    *(v69 + 806) = 1;
                                  }

                                  ++v308;
                                  v309 += 10;
                                  if (v308 == 8)
                                  {
                                    goto LABEL_596;
                                  }
                                }
                              }

                              if (!v292)
                              {
                                v298 = __src;
                                if (__src < v840)
                                {
                                  __src = __src + 1;
                                  v299 = *v298;
                                  v300 = 7;
                                  LODWORD(v837) = 7;
                                  v301 = v299 << 57;
                                  v836 = v299 << 57;
                                  v302 = (v299 >> 7) & 1;
                                  *(v69 + 723) = v302;
                                  if (!v302)
                                  {
                                    goto LABEL_529;
                                  }

                                  goto LABEL_531;
                                }

                                HIDWORD(v837) = 1;
                              }

                              v300 = v292 - 1;
                              LODWORD(v837) = v300;
                              v301 = 2 * v293;
                              v836 = 2 * v293;
                              v303 = v293 >> 63;
                              *(v69 + 723) = v303;
                              if (!v303)
                              {
                                goto LABEL_532;
                              }

                              if (!v300)
                              {
                                v304 = __src;
                                if (__src < v840)
                                {
                                  __src = __src + 1;
                                  v305 = *v304;
                                  v300 = 7;
                                  LODWORD(v837) = 7;
                                  v301 = v305 << 57;
                                  v836 = v305 << 57;
                                  v302 = (v305 >> 7) & 1;
LABEL_529:
                                  *(v69 + 724) = v302;
                                  goto LABEL_536;
                                }

                                HIDWORD(v837) = 1;
                              }

LABEL_531:
                              LODWORD(v837) = --v300;
                              v303 = v301 >> 63;
                              v301 *= 2;
                              v836 = v301;
LABEL_532:
                              *(v69 + 724) = v303;
                              if (!v300)
                              {
                                v306 = __src;
                                if (__src < v840)
                                {
                                  __src = __src + 1;
                                  v307 = *v306;
                                  v292 = 7;
                                  LODWORD(v837) = 7;
                                  v293 = v307 << 57;
                                  v836 = v307 << 57;
                                  LODWORD(v307) = (v307 >> 7) & 1;
LABEL_537:
                                  *(v69 + 725) = v307;
                                  if (v307)
                                  {
                                    goto LABEL_538;
                                  }

                                  v349 = *(v831 + 344 * *(v69 + v296 + 421) + 49944);
                                  if (!v349)
                                  {
                                    goto LABEL_1095;
                                  }

                                  v350 = *(v349 + 742);
                                  *(v69 + 726) = *(v349 + 726);
                                  *(v69 + 742) = v350;
                                  v351 = *(v349 + 758);
                                  v352 = *(v349 + 774);
                                  v353 = *(v349 + 790);
                                  *(v69 + 806) = *(v349 + 806);
                                  *(v69 + 774) = v352;
                                  *(v69 + 790) = v353;
                                  *(v69 + 758) = v351;
LABEL_596:
                                  if (!*(v69 + 712))
                                  {
                                    *(v69 + 824) = 0;
                                    v346 = v831;
                                    goto LABEL_611;
                                  }

                                  v346 = v831;
                                  if (!v292)
                                  {
                                    v347 = __src;
                                    if (__src < v840)
                                    {
                                      __src = __src + 1;
                                      v348 = *v347;
                                      LODWORD(v837) = 7;
                                      v836 = v348 << 57;
                                      LODWORD(v348) = (v348 >> 7) & 1;
                                      goto LABEL_605;
                                    }

                                    HIDWORD(v837) = 1;
                                  }

                                  LODWORD(v837) = v292 - 1;
                                  v836 = 2 * v293;
                                  v348 = v293 >> 63;
LABEL_605:
                                  *(v69 + 824) = v348;
                                  if (v348)
                                  {
                                    v354 = sub_2775CF2C4(&v836, 2u);
                                    v355 = *(v69 + 824);
                                    *(v69 + 825) = v354;
                                    if (v355 && !*(v69 + 419))
                                    {
                                      if (!v837)
                                      {
                                        v356 = __src;
                                        if (__src < v840)
                                        {
                                          __src = __src + 1;
                                          v357 = *v356;
                                          LODWORD(v837) = 7;
                                          v836 = v357 << 57;
                                          LODWORD(v357) = (v357 >> 7) & 1;
                                          goto LABEL_833;
                                        }

                                        HIDWORD(v837) = 1;
                                      }

                                      v479 = v836;
                                      LODWORD(v837) = v837 - 1;
                                      v836 *= 2;
                                      v357 = v479 >> 63;
LABEL_833:
                                      *(v69 + 826) = v357;
                                      if (v357)
                                      {
                                        v480 = sub_2775CF2C4(&v836, 2u);
                                        LODWORD(v358) = *(v69 + 826);
                                        *(v69 + 827) = v480;
                                        if (!v358)
                                        {
                                          goto LABEL_614;
                                        }

                                        if (!v837)
                                        {
                                          v481 = __src;
                                          if (__src < v840)
                                          {
                                            __src = __src + 1;
                                            v358 = *v481;
                                            LODWORD(v837) = 7;
                                            v836 = v358 << 57;
                                            LODWORD(v358) = (v358 >> 7) & 1;
                                            goto LABEL_614;
                                          }

                                          HIDWORD(v837) = 1;
                                        }

                                        v727 = v836;
                                        LODWORD(v837) = v837 - 1;
                                        v836 *= 2;
                                        v358 = v727 >> 63;
LABEL_614:
                                        *(v69 + 828) = v358;
                                        v359 = !*(v69 + 713) && !*(v69 + 714) && !*(v69 + 715) && !*(v69 + 716) && *(v69 + 717) == 0;
                                        *(v69 + 829) = 1;
                                        v360 = (v69 + 816);
                                        v361 = *(v69 + 722);
                                        v362 = *(v69 + 712);
                                        for (n = 726; n != 806; n += 10)
                                        {
                                          v364 = v362;
                                          if (v361)
                                          {
                                            v365 = *(v69 + n) + v362;
                                            if (v365 >= 0xFF)
                                            {
                                              v366 = -1;
                                            }

                                            else
                                            {
                                              v366 = *(v69 + n) + v362;
                                            }

                                            if (v365 >= 0)
                                            {
                                              v364 = v366;
                                            }

                                            else
                                            {
                                              v364 = 0;
                                            }
                                          }

                                          *v360 = v364;
                                          v367 = v364 == 0 && v359;
                                          *(v360 - 8) = v367;
                                          v368 = v367 & *(v69 + 829);
                                          *(v69 + 829) = v368;
                                          ++v360;
                                        }

                                        if (v368 || *(v69 + 419))
                                        {
                                          *(v69 + 846) = 0;
                                          *(v69 + 830) = 0;
                                          *(v69 + 834) = 257;
                                          *(v69 + 836) = 0xFF000000010000;
                                          *(v69 + 844) = -1;
LABEL_631:
                                          if (*(v69 + 829) || !*(v832 + 414) || *(v69 + 419))
                                          {
                                            *(v69 + 848) = 0;
                                            *(v69 + 857) = 0;
                                          }

                                          else
                                          {
                                            *(v69 + 847) = sub_2775CF2C4(&v836, 2u) + 3;
                                            v370 = sub_2775CF2C4(&v836, 2u);
                                            *(v69 + 848) = v370;
                                            if (v370 != 31)
                                            {
                                              v371 = 0;
                                              v372 = (v69 + 857);
                                              do
                                              {
                                                *(v372 - 8) = sub_2775CF2C4(&v836, 6u);
                                                if (!*(v832 + 418))
                                                {
                                                  *v372 = sub_2775CF2C4(&v836, 6u);
                                                }

                                                ++v371;
                                                ++v372;
                                              }

                                              while (v371 < 1 << *(v69 + 848));
                                            }
                                          }

                                          if (*(v69 + 829) && !*(v69 + 417) || !*(v832 + 415) || *(v69 + 419))
                                          {
                                            *(v69 + 868) = 0;
                                            *(v69 + 872) = 0;
                                            goto LABEL_638;
                                          }

                                          v375 = sub_2775CF2C4(&v836, 2u);
                                          *(v69 + 868) = v375;
                                          if (*(v832 + 418))
                                          {
                                            v376 = v375;
                                            v377 = 0;
                                            *(v69 + 872) = 0;
                                          }

                                          else
                                          {
                                            *(v69 + 872) = sub_2775CF2C4(&v836, 2u);
                                            v377 = sub_2775CF2C4(&v836, 2u);
                                            v376 = *(v69 + 868);
                                          }

                                          *(v69 + 876) = v377;
                                          if (!v376 && !(*(v69 + 872) | v377))
                                          {
                                            *(v69 + 880) = 8;
                                            goto LABEL_638;
                                          }

                                          v444 = *(v832 + 392);
                                          v445 = v444 + 6;
                                          *(v69 + 880) = v444 + 6;
                                          if (!v837)
                                          {
                                            v446 = __src;
                                            if (__src < v840)
                                            {
                                              __src = __src + 1;
                                              v449 = *v446;
                                              v447 = 7;
                                              LODWORD(v837) = 7;
                                              v448 = v449 << 57;
                                              v836 = v449 << 57;
                                              LODWORD(v449) = (v449 >> 7) & 1;
LABEL_814:
                                              if (!v449 || (v445 = v444 + 7, *(v69 + 880) = v444 + 7, *(v832 + 392)))
                                              {
LABEL_1192:
                                                *(v69 + 881) = v445;
                                                if (!(*(v69 + 872) | v377) || *(v832 + 416) != 1 || *(v832 + 417) != 1)
                                                {
LABEL_638:
                                                  if (*(v69 + 829))
                                                  {
                                                    v369 = 0;
                                                    goto LABEL_670;
                                                  }

                                                  if (!v837)
                                                  {
                                                    v373 = __src;
                                                    if (__src < v840)
                                                    {
                                                      __src = __src + 1;
                                                      v374 = *v373;
                                                      LODWORD(v837) = 7;
                                                      v836 = v374 << 57;
                                                      LODWORD(v374) = (v374 >> 7) & 1;
                                                      goto LABEL_667;
                                                    }

                                                    HIDWORD(v837) = 1;
                                                  }

                                                  v386 = v836;
                                                  LODWORD(v837) = v837 - 1;
                                                  v836 *= 2;
                                                  v374 = v386 >> 63;
LABEL_667:
                                                  if (v374)
                                                  {
                                                    v369 = 2;
                                                  }

                                                  else
                                                  {
                                                    v369 = 1;
                                                  }

LABEL_670:
                                                  *(v69 + 884) = v369;
                                                  if ((*(v69 + 232) & 1) == 0)
                                                  {
                                                    LOBYTE(v387) = 0;
                                                    *(v69 + 888) = 0;
                                                    goto LABEL_712;
                                                  }

                                                  if (!v837)
                                                  {
                                                    v388 = __src;
                                                    if (__src < v840)
                                                    {
                                                      __src = __src + 1;
                                                      v391 = *v388;
                                                      v389 = 7;
                                                      LODWORD(v837) = 7;
                                                      v390 = v391 << 57;
                                                      v836 = v391 << 57;
                                                      LODWORD(v391) = (v391 >> 7) & 1;
                                                      goto LABEL_677;
                                                    }

                                                    HIDWORD(v837) = 1;
                                                  }

                                                  v392 = v836;
                                                  v389 = v837 - 1;
                                                  LODWORD(v837) = v837 - 1;
                                                  v390 = 2 * v836;
                                                  v836 *= 2;
                                                  v391 = v392 >> 63;
LABEL_677:
                                                  *(v69 + 888) = v391;
                                                  *(v69 + 889) = 0;
                                                  if (v391 && *(v832 + 399))
                                                  {
                                                    v393 = 0;
                                                    v394 = 0;
                                                    v395 = 0;
                                                    v396 = *(v69 + 248);
                                                    v397 = v346 + 49936;
                                                    v398 = v69 + 421;
                                                    v399 = -1;
                                                    v9 = 1;
                                                    v400 = -1;
                                                    v401 = v832;
                                                    do
                                                    {
                                                      v10 = *(v397 + 344 * *(v398 + v393) + 8);
                                                      if (!v10)
                                                      {
                                                        goto LABEL_1095;
                                                      }

                                                      v402 = *(v832 + 412);
                                                      if (v402)
                                                      {
                                                        v10 = *(v10 + 248);
                                                        v11 = (1 << (v402 - 1));
                                                        v12 = (v11 - 1);
                                                        v14 = v12 & (v10 - v396);
                                                        v13 = v14 - (v11 & (v10 - v396));
                                                        if (v13 < 1)
                                                        {
                                                          if ((v13 & 0x80000000) != 0)
                                                          {
                                                            if (v400 == -1 || (v13 = (v10 - v400), v12 = v12 & v13, v11 = v11 & v13, v12 > v11))
                                                            {
                                                              v400 = v10;
                                                              v395 = v393;
                                                            }
                                                          }
                                                        }

                                                        else if (v399 == -1 || (v13 = (v399 - v10), v12 = v12 & v13, v11 = v11 & v13, v12 > v11))
                                                        {
                                                          v399 = v10;
                                                          v394 = v393;
                                                        }
                                                      }

                                                      ++v393;
                                                    }

                                                    while (v393 != 7);
                                                    if (v400 == -1 || v399 == -1)
                                                    {
                                                      if (v400 == -1)
                                                      {
                                                        goto LABEL_791;
                                                      }

                                                      v403 = 0;
                                                      v394 = 0;
                                                      v404 = 1 << (v402 - 1);
                                                      v405 = v404 - 1;
                                                      v406 = -1;
                                                      v9 = 344;
                                                      do
                                                      {
                                                        v10 = *(v397 + 344 * *(v398 + v403) + 8);
                                                        if (!v10)
                                                        {
                                                          goto LABEL_1095;
                                                        }

                                                        if (*(v832 + 412))
                                                        {
                                                          v10 = *(v10 + 248);
                                                          v12 = v405 & (v10 - v400);
                                                          v11 = v404 & (v10 - v400);
                                                          if (v12 < v11)
                                                          {
                                                            if (v406 == -1 || (v12 = v405 & (v10 - v406), v11 = v404 & (v10 - v406), v12 > v11))
                                                            {
                                                              v406 = v10;
                                                              v394 = v403;
                                                            }
                                                          }
                                                        }

                                                        ++v403;
                                                      }

                                                      while (v403 != 7);
                                                      if (v406 == -1)
                                                      {
LABEL_791:
                                                        LOBYTE(v387) = 0;
                                                        goto LABEL_713;
                                                      }
                                                    }

                                                    if (v395 >= v394)
                                                    {
                                                      v407 = v394;
                                                    }

                                                    else
                                                    {
                                                      v407 = v395;
                                                    }

                                                    *(v69 + 891) = v407;
                                                    if (v395 <= v394)
                                                    {
                                                      LOBYTE(v395) = v394;
                                                    }

                                                    *(v69 + 892) = v395;
                                                    *(v69 + 889) = 1;
                                                    if (!v389)
                                                    {
                                                      v408 = __src;
                                                      if (__src < v840)
                                                      {
                                                        __src = __src + 1;
                                                        v387 = *v408;
                                                        LODWORD(v837) = 7;
                                                        v836 = v387 << 57;
                                                        LODWORD(v387) = (v387 >> 7) & 1;
LABEL_713:
                                                        *(v69 + 890) = v387;
                                                        if (*(v69 + 266) || (*v829 & 1) == 0)
                                                        {
                                                          LOBYTE(v409) = 0;
                                                          goto LABEL_716;
                                                        }

                                                        LOBYTE(v409) = v401[397];
                                                        if (v409)
                                                        {
                                                          if (!v837)
                                                          {
                                                            v412 = __src;
                                                            if (__src < v840)
                                                            {
                                                              __src = __src + 1;
                                                              v409 = *v412;
                                                              LODWORD(v837) = 7;
                                                              v836 = v409 << 57;
                                                              LODWORD(v409) = (v409 >> 7) & 1;
                                                              goto LABEL_716;
                                                            }

                                                            HIDWORD(v837) = 1;
                                                          }

                                                          v478 = v836;
                                                          LODWORD(v837) = v837 - 1;
                                                          v836 *= 2;
                                                          v409 = v478 >> 63;
                                                        }

LABEL_716:
                                                        *(v69 + 893) = v409;
                                                        if (!v837)
                                                        {
                                                          v410 = __src;
                                                          if (__src < v840)
                                                          {
                                                            __src = __src + 1;
                                                            v411 = *v410;
                                                            LODWORD(v837) = 7;
                                                            v836 = v411 << 57;
                                                            LODWORD(v411) = (v411 >> 7) & 1;
LABEL_725:
                                                            *(v69 + 894) = v411;
                                                            v414 = (v69 + 896);
                                                            for (ii = 896; ii != 1148; ii += 36)
                                                            {
                                                              v416 = v69 + ii;
                                                              *v416 = xmmword_2775EF554;
                                                              *(v416 + 16) = *&dword_2775EF564;
                                                              *(v416 + 32) = 0;
                                                            }

                                                            if (*v829)
                                                            {
                                                              for (jj = 896; jj != 1148; jj += 36)
                                                              {
                                                                if (!v837)
                                                                {
                                                                  v418 = __src;
                                                                  if (__src < v840)
                                                                  {
                                                                    __src = __src + 1;
                                                                    v419 = *v418;
                                                                    v420 = 7;
                                                                    LODWORD(v837) = 7;
                                                                    v421 = v419 << 57;
                                                                    v836 = v419 << 57;
                                                                    if ((v419 >> 7))
                                                                    {
                                                                      goto LABEL_741;
                                                                    }

                                                                    goto LABEL_739;
                                                                  }

                                                                  HIDWORD(v837) = 1;
                                                                }

                                                                v422 = v836;
                                                                v420 = v837 - 1;
                                                                LODWORD(v837) = v837 - 1;
                                                                v421 = 2 * v836;
                                                                v836 *= 2;
                                                                if (v422 < 0)
                                                                {
                                                                  if (!v420)
                                                                  {
                                                                    v423 = __src;
                                                                    if (__src < v840)
                                                                    {
                                                                      __src = __src + 1;
                                                                      v424 = *v423;
                                                                      v425 = 7;
                                                                      LODWORD(v837) = 7;
                                                                      v426 = v424 << 57;
                                                                      v836 = v424 << 57;
                                                                      if (((v424 >> 7) & 1) == 0)
                                                                      {
LABEL_747:
                                                                        LODWORD(v837) = v425 - 1;
                                                                        v836 = 2 * v426;
                                                                        v429 = v426 >> 63;
                                                                        goto LABEL_748;
                                                                      }

LABEL_742:
                                                                      v427 = 2;
                                                                      goto LABEL_751;
                                                                    }

                                                                    HIDWORD(v837) = 1;
                                                                  }

LABEL_741:
                                                                  v425 = v420 - 1;
                                                                  LODWORD(v837) = v420 - 1;
                                                                  v426 = 2 * v421;
                                                                  v836 = 2 * v421;
                                                                  if (v421 < 0)
                                                                  {
                                                                    goto LABEL_742;
                                                                  }

                                                                  if (v425)
                                                                  {
                                                                    goto LABEL_747;
                                                                  }

                                                                  v428 = __src;
                                                                  if (__src >= v840)
                                                                  {
                                                                    HIDWORD(v837) = 1;
                                                                    goto LABEL_747;
                                                                  }

                                                                  __src = __src + 1;
                                                                  v429 = *v428;
                                                                  LODWORD(v837) = 7;
                                                                  v836 = v429 << 57;
                                                                  LODWORD(v429) = (v429 >> 7) & 1;
LABEL_748:
                                                                  if (v429)
                                                                  {
                                                                    v427 = 1;
                                                                  }

                                                                  else
                                                                  {
                                                                    v427 = 3;
                                                                  }

LABEL_751:
                                                                  *v414 = v427;
                                                                  v430 = *(v69 + 271);
                                                                  v431 = &xmmword_2775EF554;
                                                                  if (v430 != 7)
                                                                  {
                                                                    v432 = *(v831 + 49936 + 344 * *(v69 + 421 + v430) + 8);
                                                                    if (!v432)
                                                                    {
                                                                      goto LABEL_1095;
                                                                    }

                                                                    v431 = (v432 + jj);
                                                                  }

                                                                  if (v427 <= 1)
                                                                  {
                                                                    if (*(v69 + 428))
                                                                    {
                                                                      v433 = 9;
                                                                    }

                                                                    else
                                                                    {
                                                                      v433 = 8;
                                                                    }

                                                                    if (*(v69 + 428))
                                                                    {
                                                                      v436 = 13;
                                                                    }

                                                                    else
                                                                    {
                                                                      v436 = 14;
                                                                    }

                                                                    v434 = v414[4];
                                                                  }

                                                                  else
                                                                  {
                                                                    v433 = 12;
                                                                    v414[3] = 2 * sub_2775CF4C0(&v836, (v431[3] - 0x10000) >> 1, 12) + 0x10000;
                                                                    v434 = 2 * sub_2775CF4C0(&v836, v431[4] >> 1, 12);
                                                                    v414[4] = v434;
                                                                    if (*v414 == 3)
                                                                    {
                                                                      v414[5] = 2 * sub_2775CF4C0(&v836, v431[5] >> 1, 12);
                                                                      v435 = 2 * sub_2775CF4C0(&v836, (v431[6] - 0x10000) >> 1, 12) + 0x10000;
                                                                      v436 = 10;
LABEL_766:
                                                                      v414[6] = v435;
                                                                      v414[1] = sub_2775CF4C0(&v836, v431[1] >> v436, v433) << v436;
                                                                      v414[2] = sub_2775CF4C0(&v836, v431[2] >> v436, v433) << v436;
                                                                      goto LABEL_767;
                                                                    }

                                                                    v436 = 10;
                                                                  }

                                                                  v414[5] = -v434;
                                                                  v435 = v414[3];
                                                                  goto LABEL_766;
                                                                }

LABEL_739:
                                                                *v414 = 0;
LABEL_767:
                                                                v414 += 9;
                                                              }
                                                            }

                                                            if (!v401[421] || !*v818 && !*(v69 + 265))
                                                            {
                                                              *(v69 + 224) = 0;
                                                              goto LABEL_782;
                                                            }

                                                            if (!v837)
                                                            {
                                                              v437 = __src;
                                                              if (__src < v840)
                                                              {
                                                                __src = __src + 1;
                                                                v438 = *v437;
                                                                LODWORD(v837) = 7;
                                                                v836 = v438 << 57;
                                                                LODWORD(v438) = (v438 >> 7) & 1;
                                                                goto LABEL_777;
                                                              }

                                                              HIDWORD(v837) = 1;
                                                            }

                                                            v439 = v836;
                                                            LODWORD(v837) = v837 - 1;
                                                            v836 *= 2;
                                                            v438 = v439 >> 63;
LABEL_777:
                                                            *(v69 + 224) = v438;
                                                            if (v438)
                                                            {
                                                              v440 = sub_2775CF2C4(&v836, 0x10u);
                                                              v441 = v440;
                                                              if (*v829 != 1)
                                                              {
                                                                *(v69 + 225) = 1;
                                                                goto LABEL_795;
                                                              }

                                                              if (!v837)
                                                              {
                                                                v442 = __src;
                                                                if (__src < v840)
                                                                {
                                                                  __src = __src + 1;
                                                                  v443 = *v442;
                                                                  LODWORD(v837) = 7;
                                                                  v836 = v443 << 57;
                                                                  LODWORD(v443) = (v443 >> 7) & 1;
LABEL_794:
                                                                  *(v69 + 225) = v443;
                                                                  if (v443)
                                                                  {
LABEL_795:
                                                                    *v69 = v440;
                                                                    LODWORD(v451) = sub_2775CF2C4(&v836, 4u);
                                                                    *(v69 + 4) = v451;
                                                                    if (v451 > 14)
                                                                    {
                                                                      goto LABEL_1095;
                                                                    }

                                                                    if (v451 >= 1)
                                                                    {
                                                                      v452 = 0;
                                                                      v453 = (v69 + 9);
                                                                      do
                                                                      {
                                                                        v454 = sub_2775CF2C4(&v836, 8u);
                                                                        *(v453 - 1) = v454;
                                                                        if (v452)
                                                                        {
                                                                          if (*(v453 - 3) >= v454)
                                                                          {
                                                                            goto LABEL_1095;
                                                                          }
                                                                        }

                                                                        *v453 = sub_2775CF2C4(&v836, 8u);
                                                                        v453 += 2;
                                                                        ++v452;
                                                                        v451 = *(v69 + 4);
                                                                      }

                                                                      while (v452 < v451);
                                                                    }

                                                                    if (v401[418])
                                                                    {
                                                                      *(v69 + 36) = 0;
                                                                      v833 = (v69 + 36);
LABEL_841:
                                                                      *(v69 + 40) = 0;
LABEL_842:
                                                                      if (v401[416] != 1 || v401[417] != 1 || (*(v69 + 40) != 0) != (*(v69 + 44) == 0))
                                                                      {
                                                                        *(v69 + 88) = sub_2775CF2C4(&v836, 2u) + 8;
                                                                        v483 = sub_2775CF2C4(&v836, 2u);
                                                                        *(v69 + 92) = v483;
                                                                        v484 = 2 * (v483 + v483 * v483);
                                                                        if (*(v69 + 4) && v484 >= 1)
                                                                        {
                                                                          v485 = (v69 + 96);
                                                                          v486 = (2 * (v483 + v483 * v483));
                                                                          do
                                                                          {
                                                                            *v485++ = sub_2775CF2C4(&v836, 8u) ^ 0x80;
                                                                            --v486;
                                                                          }

                                                                          while (v486);
                                                                        }

                                                                        v487 = 0;
                                                                        v488 = v69 + 40;
                                                                        v489 = v69 + 120;
                                                                        v490 = 1;
                                                                        do
                                                                        {
                                                                          v491 = v490;
                                                                          if (*(v488 + 4 * v487) || *v833)
                                                                          {
                                                                            v492 = *(v69 + 4);
                                                                            if (v492)
                                                                            {
                                                                              v493 = (v484 + 1);
                                                                            }

                                                                            else
                                                                            {
                                                                              v493 = v484;
                                                                            }

                                                                            if (v493 >= 1)
                                                                            {
                                                                              v494 = (v489 + 28 * v487);
                                                                              v495 = v493;
                                                                              do
                                                                              {
                                                                                *v494++ = sub_2775CF2C4(&v836, 8u) ^ 0x80;
                                                                                --v495;
                                                                              }

                                                                              while (v495);
                                                                              v492 = *(v69 + 4);
                                                                            }

                                                                            if (!v492)
                                                                            {
                                                                              *(v489 + 28 * v487 + v493) = 0;
                                                                            }
                                                                          }

                                                                          v490 = 0;
                                                                          v487 = 1;
                                                                        }

                                                                        while ((v491 & 1) != 0);
                                                                        *(v69 + 176) = sub_2775CF2C4(&v836, 2u) + 6;
                                                                        v496 = 0;
                                                                        *(v69 + 184) = sub_2775CF2C4(&v836, 2u);
                                                                        v497 = 1;
                                                                        do
                                                                        {
                                                                          v498 = v497;
                                                                          if (*(v488 + 4 * v496))
                                                                          {
                                                                            *(v69 + 188 + 4 * v496) = sub_2775CF2C4(&v836, 8u) - 128;
                                                                            *(v69 + 196 + 4 * v496) = sub_2775CF2C4(&v836, 8u) - 128;
                                                                            *(v69 + 204 + 4 * v496) = sub_2775CF2C4(&v836, 9u) - 256;
                                                                          }

                                                                          v497 = 0;
                                                                          v496 = 1;
                                                                        }

                                                                        while ((v498 & 1) != 0);
                                                                        v499 = v837;
                                                                        if (!v837)
                                                                        {
                                                                          v500 = __src;
                                                                          if (__src < v840)
                                                                          {
                                                                            __src = __src + 1;
                                                                            v501 = *v500;
                                                                            v502 = 7;
                                                                            LODWORD(v837) = 7;
                                                                            v503 = v501 << 57;
                                                                            v836 = v501 << 57;
                                                                            *(v69 + 212) = (v501 >> 7) & 1;
                                                                            goto LABEL_874;
                                                                          }

                                                                          HIDWORD(v837) = 1;
                                                                        }

                                                                        v504 = v836;
                                                                        v503 = 2 * v836;
                                                                        v836 *= 2;
                                                                        *(v69 + 212) = v504 >> 63;
                                                                        v502 = v499 - 1;
                                                                        LODWORD(v837) = v502;
                                                                        if (!v502)
                                                                        {
                                                                          v505 = __src;
                                                                          if (__src < v840)
                                                                          {
                                                                            __src = __src + 1;
                                                                            v506 = *v505;
                                                                            LODWORD(v837) = 7;
                                                                            v836 = v506 << 57;
                                                                            LODWORD(v506) = (v506 >> 7) & 1;
LABEL_875:
                                                                            *(v69 + 216) = v506;
                                                                            goto LABEL_876;
                                                                          }

                                                                          HIDWORD(v837) = 1;
                                                                        }

LABEL_874:
                                                                        LODWORD(v837) = v502 - 1;
                                                                        v836 = 2 * v503;
                                                                        v506 = v503 >> 63;
                                                                        goto LABEL_875;
                                                                      }

LABEL_1095:
                                                                      v3 = v831;
                                                                      sub_2775E9DFC(v831, "Error parsing frame header\n", v9, v10, v11, v12, v13, v14, v817);
                                                                      *(v831 + 112) = 0;
                                                                      v2 = v820;
                                                                      v4 = v821;
                                                                      goto LABEL_1096;
                                                                    }

                                                                    if (!v837)
                                                                    {
                                                                      v455 = __src;
                                                                      if (__src < v840)
                                                                      {
                                                                        __src = __src + 1;
                                                                        v456 = *v455;
                                                                        LODWORD(v837) = 7;
                                                                        v836 = v456 << 57;
                                                                        LODWORD(v456) = (v456 >> 7) & 1;
LABEL_840:
                                                                        *(v69 + 36) = v456;
                                                                        v833 = (v69 + 36);
                                                                        if (!v456 && (v401[417] != 1 || v401[416] != 1 || v451))
                                                                        {
                                                                          v651 = 0;
                                                                          v652 = v69 + 40;
                                                                          v653 = 1;
                                                                          while (1)
                                                                          {
                                                                            v654 = v653;
                                                                            v655 = sub_2775CF2C4(&v836, 4u);
                                                                            *(v652 + 4 * v651) = v655;
                                                                            if (v655 > 10)
                                                                            {
                                                                              goto LABEL_1095;
                                                                            }

                                                                            if (v655 >= 1)
                                                                            {
                                                                              v656 = 0;
                                                                              v657 = (v69 + 49 + 20 * v651);
                                                                              do
                                                                              {
                                                                                v658 = sub_2775CF2C4(&v836, 8u);
                                                                                *(v657 - 1) = v658;
                                                                                if (v656)
                                                                                {
                                                                                  if (*(v657 - 3) >= v658)
                                                                                  {
                                                                                    goto LABEL_1095;
                                                                                  }
                                                                                }

                                                                                *v657 = sub_2775CF2C4(&v836, 8u);
                                                                                v657 += 2;
                                                                              }

                                                                              while (++v656 < *(v652 + 4 * v651));
                                                                            }

                                                                            v653 = 0;
                                                                            v651 = 1;
                                                                            if ((v654 & 1) == 0)
                                                                            {
                                                                              goto LABEL_842;
                                                                            }
                                                                          }
                                                                        }

                                                                        goto LABEL_841;
                                                                      }

                                                                      HIDWORD(v837) = 1;
                                                                    }

                                                                    v482 = v836;
                                                                    LODWORD(v837) = v837 - 1;
                                                                    v836 *= 2;
                                                                    v456 = v482 >> 63;
                                                                    goto LABEL_840;
                                                                  }

                                                                  v457 = sub_2775CF2C4(&v836, 3u);
                                                                  v458 = 421;
                                                                  while (v457 != *(v69 + v458))
                                                                  {
                                                                    if (++v458 == 428)
                                                                    {
                                                                      goto LABEL_1095;
                                                                    }
                                                                  }

                                                                  v459 = *(v831 + 344 * v457 + 49944);
                                                                  if (!v459)
                                                                  {
                                                                    goto LABEL_1095;
                                                                  }

                                                                  v460 = v459[1];
                                                                  *v69 = *v459;
                                                                  *(v69 + 16) = v460;
                                                                  v461 = v459[2];
                                                                  v462 = v459[3];
                                                                  v463 = v459[5];
                                                                  *(v69 + 64) = v459[4];
                                                                  *(v69 + 80) = v463;
                                                                  *(v69 + 32) = v461;
                                                                  *(v69 + 48) = v462;
                                                                  v464 = v459[6];
                                                                  v465 = v459[7];
                                                                  v466 = v459[9];
                                                                  *(v69 + 128) = v459[8];
                                                                  *(v69 + 144) = v466;
                                                                  *(v69 + 96) = v464;
                                                                  *(v69 + 112) = v465;
                                                                  v467 = v459[10];
                                                                  v468 = v459[11];
                                                                  v469 = v459[13];
                                                                  *(v69 + 192) = v459[12];
                                                                  *(v69 + 208) = v469;
                                                                  *(v69 + 160) = v467;
                                                                  *(v69 + 176) = v468;
                                                                  *v69 = v441;
LABEL_876:
                                                                  v3 = v831;
                                                                  if (*(v831 + 60) >= 1)
                                                                  {
                                                                    v507 = 0;
                                                                    v508 = 0;
                                                                    do
                                                                    {
                                                                      sub_2775A9300(*(v831 + 48) + v507);
                                                                      ++v508;
                                                                      v507 += 80;
                                                                    }

                                                                    while (v508 < *(v831 + 60));
                                                                  }

                                                                  *(v831 + 60) = 0;
                                                                  *(v831 + 64) = 0;
                                                                  v2 = v820;
                                                                  v4 = v821;
                                                                  v35 = v824;
                                                                  v8 = v827;
                                                                  if (v819 != 6 && (sub_2775AF9FC(&v836, *v827) & 0x80000000) != 0)
                                                                  {
                                                                    goto LABEL_988;
                                                                  }

                                                                  v509 = *(v821 + 16);
                                                                  if (v509)
                                                                  {
                                                                    v510 = *(v831 + 112);
                                                                    v511 = *(v510 + 240);
                                                                    if (*(v510 + 244) * v511 > v509)
                                                                    {
                                                                      sub_2775E9DFC(v831, "Frame size %dx%d exceeds limit %u\n", v9, v10, v11, v12, v13, v14, v511);
                                                                      *(v831 + 112) = 0;
                                                                      return -34;
                                                                    }
                                                                  }

                                                                  if (v819 != 6)
                                                                  {
                                                                    goto LABEL_904;
                                                                  }

                                                                  v36 = *(v831 + 112);
                                                                  if (v36[251])
                                                                  {
LABEL_988:
                                                                    *(v831 + 112) = 0;
                                                                    goto LABEL_1096;
                                                                  }

                                                                  LODWORD(v837) = 0;
                                                                  v836 = 0;
                                                                  v37 = (v831 + 60);
                                                                  if (*(v831 + 56) > 0)
                                                                  {
                                                                    v38 = 0;
                                                                    goto LABEL_890;
                                                                  }

                                                                  v39 = 1;
                                                                  goto LABEL_888;
                                                                }

                                                                HIDWORD(v837) = 1;
                                                              }

                                                              v450 = v836;
                                                              LODWORD(v837) = v837 - 1;
                                                              v836 *= 2;
                                                              v443 = v450 >> 63;
                                                              goto LABEL_794;
                                                            }

LABEL_782:
                                                            *(v69 + 192) = 0u;
                                                            *(v69 + 208) = 0u;
                                                            *(v69 + 160) = 0u;
                                                            *(v69 + 176) = 0u;
                                                            *(v69 + 128) = 0u;
                                                            *(v69 + 144) = 0u;
                                                            *(v69 + 96) = 0u;
                                                            *(v69 + 112) = 0u;
                                                            *(v69 + 64) = 0u;
                                                            *(v69 + 80) = 0u;
                                                            *(v69 + 32) = 0u;
                                                            *(v69 + 48) = 0u;
                                                            *v69 = 0u;
                                                            *(v69 + 16) = 0u;
                                                            goto LABEL_876;
                                                          }

                                                          HIDWORD(v837) = 1;
                                                        }

                                                        v413 = v836;
                                                        LODWORD(v837) = v837 - 1;
                                                        v836 *= 2;
                                                        v411 = v413 >> 63;
                                                        goto LABEL_725;
                                                      }

                                                      HIDWORD(v837) = 1;
                                                    }

                                                    LODWORD(v837) = v389 - 1;
                                                    v836 = 2 * v390;
                                                    v387 = v390 >> 63;
                                                    goto LABEL_713;
                                                  }

                                                  LOBYTE(v387) = 0;
LABEL_712:
                                                  v401 = v832;
                                                  goto LABEL_713;
                                                }

                                                if (!v447)
                                                {
                                                  v728 = __src;
                                                  if (__src < v840)
                                                  {
                                                    __src = __src + 1;
                                                    v729 = *v728;
                                                    LODWORD(v837) = 7;
                                                    v836 = v729 << 57;
                                                    LODWORD(v729) = v729 >> 7;
LABEL_1227:
                                                    *(v69 + 881) = v729 + v445;
                                                    goto LABEL_638;
                                                  }

                                                  HIDWORD(v837) = 1;
                                                }

                                                LODWORD(v837) = v447 - 1;
                                                v836 = 2 * v448;
                                                v729 = v448 >> 63;
                                                goto LABEL_1227;
                                              }

                                              if (!v447)
                                              {
                                                v471 = __src;
                                                if (__src < v840)
                                                {
                                                  __src = __src + 1;
                                                  v473 = *v471;
                                                  v447 = 7;
                                                  LODWORD(v837) = 7;
                                                  v472 = v473 << 57;
                                                  v836 = v473 << 57;
                                                  LODWORD(v473) = (v473 >> 7) & 1;
LABEL_1191:
                                                  v445 += v473;
                                                  *(v69 + 880) = v445;
                                                  v448 = v472;
                                                  goto LABEL_1192;
                                                }

                                                HIDWORD(v837) = 1;
                                              }

                                              LODWORD(v837) = --v447;
                                              v472 = 2 * v448;
                                              v836 = 2 * v448;
                                              v473 = v448 >> 63;
                                              goto LABEL_1191;
                                            }

                                            HIDWORD(v837) = 1;
                                          }

                                          v470 = v836;
                                          v447 = v837 - 1;
                                          LODWORD(v837) = v837 - 1;
                                          v448 = 2 * v836;
                                          v836 *= 2;
                                          v449 = v470 >> 63;
                                          goto LABEL_814;
                                        }

                                        *(v69 + 830) = sub_2775CF2C4(&v836, 6u);
                                        v378 = sub_2775CF2C4(&v836, 6u);
                                        *(v69 + 831) = v378;
                                        if (!*(v832 + 418) && (*(v69 + 830) || v378))
                                        {
                                          *(v69 + 832) = sub_2775CF2C4(&v836, 6u);
                                          *(v69 + 833) = sub_2775CF2C4(&v836, 6u);
                                        }

                                        *(v69 + 846) = sub_2775CF2C4(&v836, 3u);
                                        v379 = *(v69 + 271);
                                        if (v379 == 7)
                                        {
                                          *(v69 + 836) = 0xFF000000010000;
                                          *(v69 + 844) = -1;
                                        }

                                        else
                                        {
                                          v380 = *(v346 + 344 * *(v69 + v379 + 421) + 49944);
                                          if (!v380)
                                          {
                                            goto LABEL_1095;
                                          }

                                          v381 = *(v380 + 836);
                                          *(v69 + 844) = *(v380 + 844);
                                          *(v69 + 836) = v381;
                                          v346 = v831;
                                        }

                                        if (!v837)
                                        {
                                          v382 = __src;
                                          if (__src < v840)
                                          {
                                            __src = __src + 1;
                                            v383 = *v382;
                                            v384 = 7;
                                            LODWORD(v837) = 7;
                                            v385 = v383 << 57;
                                            v836 = v383 << 57;
                                            LODWORD(v383) = (v383 >> 7) & 1;
                                            *(v69 + 834) = v383;
                                            if (!v383)
                                            {
                                              goto LABEL_631;
                                            }

                                            goto LABEL_1114;
                                          }

                                          HIDWORD(v837) = 1;
                                        }

                                        v474 = v836;
                                        v384 = v837 - 1;
                                        LODWORD(v837) = v837 - 1;
                                        v385 = 2 * v836;
                                        v836 *= 2;
                                        v474 >>= 63;
                                        *(v69 + 834) = v474;
                                        if (!v474)
                                        {
                                          goto LABEL_631;
                                        }

                                        if (!v384)
                                        {
                                          v475 = __src;
                                          if (__src < v840)
                                          {
                                            __src = __src + 1;
                                            v476 = *v475;
                                            LODWORD(v837) = 7;
                                            v836 = v476 << 57;
                                            LODWORD(v476) = (v476 >> 7) & 1;
LABEL_1115:
                                            *(v69 + 835) = v476;
                                            if (!v476)
                                            {
                                              goto LABEL_631;
                                            }

                                            v672 = 0;
                                            while (1)
                                            {
                                              if (v837)
                                              {
                                                goto LABEL_1121;
                                              }

                                              v673 = __src;
                                              if (__src >= v840)
                                              {
                                                break;
                                              }

                                              __src = __src + 1;
                                              v674 = *v673;
                                              LODWORD(v837) = 7;
                                              v836 = v674 << 57;
                                              LODWORD(v674) = (v674 >> 7) & 1;
LABEL_1122:
                                              if (v674)
                                              {
                                                *(v69 + 838 + v672) = sub_2775CF350(&v836, 7u);
                                              }

                                              if (++v672 == 8)
                                              {
                                                v676 = 0;
                                                v677 = 1;
                                                while (1)
                                                {
                                                  v678 = v677;
                                                  if (v837)
                                                  {
                                                    goto LABEL_1130;
                                                  }

                                                  v679 = __src;
                                                  if (__src >= v840)
                                                  {
                                                    break;
                                                  }

                                                  __src = __src + 1;
                                                  v680 = *v679;
                                                  LODWORD(v837) = 7;
                                                  v836 = v680 << 57;
                                                  LODWORD(v680) = (v680 >> 7) & 1;
LABEL_1131:
                                                  if (v680)
                                                  {
                                                    *(v69 + 836 + v676) = sub_2775CF350(&v836, 7u);
                                                  }

                                                  v677 = 0;
                                                  v676 = 1;
                                                  if ((v678 & 1) == 0)
                                                  {
                                                    goto LABEL_631;
                                                  }
                                                }

                                                HIDWORD(v837) = 1;
LABEL_1130:
                                                v681 = v836;
                                                LODWORD(v837) = v837 - 1;
                                                v836 *= 2;
                                                v680 = v681 >> 63;
                                                goto LABEL_1131;
                                              }
                                            }

                                            HIDWORD(v837) = 1;
LABEL_1121:
                                            v675 = v836;
                                            LODWORD(v837) = v837 - 1;
                                            v836 *= 2;
                                            v674 = v675 >> 63;
                                            goto LABEL_1122;
                                          }

                                          HIDWORD(v837) = 1;
                                        }

LABEL_1114:
                                        LODWORD(v837) = v384 - 1;
                                        v836 = 2 * v385;
                                        v476 = v385 >> 63;
                                        goto LABEL_1115;
                                      }

LABEL_613:
                                      LOBYTE(v358) = 0;
                                      *(v69 + 827) = 0;
                                      goto LABEL_614;
                                    }

LABEL_612:
                                    *(v69 + 826) = 0;
                                    goto LABEL_613;
                                  }

LABEL_611:
                                  *(v69 + 825) = 0;
                                  goto LABEL_612;
                                }

                                HIDWORD(v837) = 1;
                              }

LABEL_536:
                              v292 = v300 - 1;
                              LODWORD(v837) = v292;
                              v293 = 2 * v301;
                              v836 = 2 * v301;
                              v307 = v301 >> 63;
                              goto LABEL_537;
                            }

                            if (!v122[420])
                            {
                              v267 = 1;
                              goto LABEL_465;
                            }

                            if (!v261)
                            {
                              v265 = __src;
                              if (__src < v840)
                              {
                                __src = __src + 1;
                                v266 = *v265;
                                v261 = 7;
                                LODWORD(v837) = 7;
                                v836 = v266 << 57;
                                LODWORD(v266) = (v266 >> 7) & 1;
LABEL_464:
                                v267 = v266 == 0;
LABEL_465:
                                if (!v261)
                                {
                                  v269 = __src;
                                  if (__src < v840)
                                  {
                                    __src = __src + 1;
                                    v271 = *v269;
                                    v270 = 7;
                                    LODWORD(v837) = 7;
                                    v836 = v271 << 57;
                                    LODWORD(v271) = (v271 >> 7) & 1;
                                    goto LABEL_470;
                                  }

                                  HIDWORD(v837) = 1;
                                }

                                v272 = v836;
                                v270 = v261 - 1;
                                LODWORD(v837) = v270;
                                v836 *= 2;
                                v271 = v272 >> 63;
LABEL_470:
                                if (v271)
                                {
                                  v273 = sub_2775CF350(&v836, 7u);
                                  v270 = v837;
                                }

                                else
                                {
                                  v273 = 0;
                                }

                                *(v69 + 714) = v273;
                                if (!v270)
                                {
                                  v274 = __src;
                                  if (__src < v840)
                                  {
                                    __src = __src + 1;
                                    v275 = *v274;
                                    LODWORD(v837) = 7;
                                    v836 = v275 << 57;
                                    LODWORD(v275) = (v275 >> 7) & 1;
                                    goto LABEL_478;
                                  }

                                  HIDWORD(v837) = 1;
                                }

                                v276 = v836;
                                LODWORD(v837) = v270 - 1;
                                v836 *= 2;
                                v275 = v276 >> 63;
LABEL_478:
                                if (v275)
                                {
                                  v277 = sub_2775CF350(&v836, 7u);
                                }

                                else
                                {
                                  v277 = 0;
                                }

                                *(v69 + 715) = v277;
                                if (v267)
                                {
                                  *(v69 + 716) = *(v69 + 714);
LABEL_499:
                                  *(v69 + 717) = v277;
                                  v261 = v837;
                                  goto LABEL_500;
                                }

                                if (!v837)
                                {
                                  v278 = __src;
                                  if (__src < v840)
                                  {
                                    __src = __src + 1;
                                    v280 = *v278;
                                    v279 = 7;
                                    LODWORD(v837) = 7;
                                    v836 = v280 << 57;
                                    LODWORD(v280) = (v280 >> 7) & 1;
                                    goto LABEL_488;
                                  }

                                  HIDWORD(v837) = 1;
                                }

                                v281 = v836;
                                v279 = v837 - 1;
                                LODWORD(v837) = v837 - 1;
                                v836 *= 2;
                                v280 = v281 >> 63;
LABEL_488:
                                if (v280)
                                {
                                  v282 = sub_2775CF350(&v836, 7u);
                                  v279 = v837;
                                }

                                else
                                {
                                  v282 = 0;
                                }

                                *(v69 + 716) = v282;
                                if (!v279)
                                {
                                  v283 = __src;
                                  if (__src < v840)
                                  {
                                    __src = __src + 1;
                                    v284 = *v283;
                                    LODWORD(v837) = 7;
                                    v836 = v284 << 57;
                                    LODWORD(v284) = (v284 >> 7) & 1;
                                    goto LABEL_496;
                                  }

                                  HIDWORD(v837) = 1;
                                }

                                v285 = v836;
                                LODWORD(v837) = v279 - 1;
                                v836 *= 2;
                                v284 = v285 >> 63;
LABEL_496:
                                if (v284)
                                {
                                  v277 = sub_2775CF350(&v836, 7u);
                                }

                                else
                                {
                                  v277 = 0;
                                }

                                goto LABEL_499;
                              }

                              HIDWORD(v837) = 1;
                            }

                            v268 = v836;
                            LODWORD(v837) = --v261;
                            v836 *= 2;
                            v266 = v268 >> 63;
                            goto LABEL_464;
                          }

                          HIDWORD(v837) = 1;
                        }

                        v212 = v836;
                        v209 = v202 - 1;
                        LODWORD(v837) = v202 - 1;
                        v210 = 2 * v836;
                        v836 *= 2;
                        v211 = v212 >> 63;
                        goto LABEL_360;
                      }

                      HIDWORD(v837) = 1;
                    }

                    v206 = v836;
                    v202 = v837 - 1;
                    LODWORD(v837) = v837 - 1;
                    v836 *= 2;
                    v205 = v206 >> 63;
                    goto LABEL_354;
                  }

                  HIDWORD(v837) = 1;
                }

                v200 = v836;
                v197 = v192 - 1;
                LODWORD(v837) = v197;
                v198 = 2 * v836;
                v836 *= 2;
                v199 = v200 >> 63;
                goto LABEL_336;
              }

LABEL_219:
              v139 = (v69 + 420);
              *(v69 + 420) = 0;
              goto LABEL_303;
            }

            HIDWORD(v837) = 1;
          }

          v125 = v836;
          LODWORD(v837) = v837 - 1;
          v836 *= 2;
          v124 = v125 >> 63;
          goto LABEL_190;
        }

LABEL_140:
        LODWORD(v837) = --v74;
        v77 = v75 >> 63;
        v75 *= 2;
        v836 = v75;
        goto LABEL_141;
      }

      HIDWORD(v837) = 1;
    }

    v77 = v836;
    v74 = v837 - 1;
    LODWORD(v837) = v837 - 1;
    v75 = 2 * v836;
    v836 *= 2;
    v76 = (v69 + 267);
    *(v69 + 267) = v77 < 0;
    LODWORD(v77) = *(v832 + 404);
    if (v77 != 2)
    {
      goto LABEL_141;
    }

    if (!v74)
    {
      v84 = __src;
      if (__src < v840)
      {
        __src = __src + 1;
        v77 = *v84;
        v74 = 7;
        LODWORD(v837) = 7;
        v75 = v77 << 57;
        v836 = v77 << 57;
        LODWORD(v77) = (v77 >> 7) & 1;
        goto LABEL_141;
      }

      HIDWORD(v837) = 1;
    }

    goto LABEL_140;
  }

  if (v15 > 6)
  {
    if (v15 != 7)
    {
      if (v15 == 15)
      {
        goto LABEL_904;
      }

      goto LABEL_46;
    }

    if (*(v3 + 112))
    {
      goto LABEL_904;
    }

    goto LABEL_68;
  }

  if (v15 != 5)
  {
    goto LABEL_68;
  }

  v63 = sub_2775CF3E4(&v836);
  if (HIDWORD(v837))
  {
    goto LABEL_1096;
  }

  if (v63 <= 2)
  {
    if (v63 == 1)
    {
      sub_2775DA114(4);
      block[0] = v86;
      if (v86)
      {
        v87 = v86;
        v88 = *v86;
        *v88 = sub_2775CF2C4(&v836, 0x10u);
        v88[1] = sub_2775CF2C4(&v836, 0x10u);
        if ((sub_2775AF9FC(&v836, *v8) & 0x80000000) == 0)
        {
          sub_2775DA200((v3 + 120));
          *(v3 + 120) = v87;
          *(v3 + 128) = v88;
          goto LABEL_904;
        }

LABEL_154:
        sub_2775DA200(block);
        v94 = 2;
LABEL_155:
        if (v94 == 2)
        {
          goto LABEL_1096;
        }

        return -12;
      }
    }

    else
    {
      if (v63 != 2)
      {
LABEL_1183:
        v817 = v63;
        v669 = "Unknown Metadata OBU type %d\n";
        goto LABEL_1184;
      }

      sub_2775DA114(24);
      block[0] = v80;
      if (v80)
      {
        v81 = v80;
        v82 = 0;
        v83 = *v80;
        do
        {
          *(v83 + v82) = sub_2775CF2C4(&v836, 0x10u);
          *(v83 + v82 + 2) = sub_2775CF2C4(&v836, 0x10u);
          v82 += 4;
        }

        while (v82 != 12);
        *(v83 + 12) = sub_2775CF2C4(&v836, 0x10u);
        *(v83 + 14) = sub_2775CF2C4(&v836, 0x10u);
        *(v83 + 16) = sub_2775CF2C4(&v836, 0x20u);
        *(v83 + 20) = sub_2775CF2C4(&v836, 0x20u);
        if ((sub_2775AF9FC(&v836, *v8) & 0x80000000) == 0)
        {
          sub_2775DA200((v3 + 136));
          *(v3 + 136) = v81;
          *(v3 + 144) = v83;
          goto LABEL_904;
        }

        goto LABEL_154;
      }
    }

    v94 = 1;
    goto LABEL_155;
  }

  if (v63 == 3)
  {
    goto LABEL_904;
  }

  if (v63 != 4)
  {
    if (v63 == 5)
    {
      goto LABEL_904;
    }

    goto LABEL_1183;
  }

  v89 = v840 - __src;
  if (v840 - __src >= 1)
  {
    while (!*(__src + v89 - 1))
    {
      v156 = v89-- <= 1;
      if (v156)
      {
        v89 = 0;
        break;
      }
    }
  }

  v90 = sub_2775CF2C4(&v836, 8u);
  v91 = v90;
  if (v90 == 255)
  {
    v92 = sub_2775CF2C4(&v836, 8u);
    v93 = v89 - 3;
  }

  else
  {
    v92 = 0;
    v93 = v89 - 2;
  }

  if (v93 < 1 || *(__src + v93) != 128)
  {
    v669 = "Malformed ITU-T T.35 metadata message format\n";
LABEL_1184:
    sub_2775E9DFC(v3, v669, v9, v10, v11, v12, v13, v14, v817);
    goto LABEL_904;
  }

  v105 = *(v3 + 168);
  if (v105 > 89478484)
  {
    goto LABEL_1096;
  }

  v106 = malloc_type_realloc(*(v3 + 160), 24 * v105 + 24, 0x10100400AE50DADuLL);
  if (!v106)
  {
    goto LABEL_1096;
  }

  *(v3 + 160) = v106;
  v107 = &v106[24 * *(v3 + 168)];
  *v107 = 0;
  *(v107 + 1) = 0;
  *(v107 + 2) = 0;
  if (*(v3 + 168))
  {
    atomic_load((*(v3 + 152) + 16));
    v109 = *(v3 + 152);
    v108 = *(v3 + 160);
    v110 = *(v109 + 32);
    *(v109 + 8) = v108;
  }

  else
  {
    v110 = malloc_type_malloc(0x38uLL, 0x10E004079E7A845uLL);
    if (!v110)
    {
      goto LABEL_1096;
    }

    v115 = *(v3 + 160);
    v110[2] = 0;
    v110[3] = v115;
    v110[4] = 1;
    v110[5] = sub_2775DDBC0;
    v110[6] = v110;
    *(v3 + 152) = v110 + 2;
    v108 = *(v3 + 160);
  }

  *v110 = v108;
  v116 = *(v3 + 168);
  v110[1] = v116 + 1;
  v117 = v108 + 24 * v116;
  v118 = malloc_type_malloc(v93, 0x127FE049uLL);
  *(v117 + 16) = v118;
  if (!v118)
  {
    goto LABEL_1096;
  }

  *v117 = v91;
  *(v117 + 1) = v92;
  *(v117 + 8) = v93;
  memcpy(v118, __src, v93);
  ++*(v3 + 168);
LABEL_904:
  if (!*(v3 + 88))
  {
    return v840 - v839;
  }

  v540 = *(v3 + 112);
  if (!v540)
  {
    return v840 - v839;
  }

  if (!*(v540 + 251))
  {
    if (*(v3 + 64) != *(v540 + 449) * *(v540 + 445))
    {
      return v840 - v839;
    }

    v545 = *(v540 + 232);
    if (v545 != 3)
    {
      if (v545 == 2)
      {
        v577 = *(v4 + 32);
        if (v577 > 2)
        {
          goto LABEL_980;
        }

        v547 = v577 == 1;
LABEL_966:
        if (v547 && !*(v540 + 404))
        {
LABEL_980:
          v585 = 0;
          v586 = v35 + 2;
          do
          {
            if ((*(*(v3 + 112) + 404) >> v585))
            {
              sub_2775DE04C(v586);
              v586[36] = 0;
              v586[1] = *(v3 + 112);
              *v586 = *(v3 + 88);
              v587 = *(v3 + 104);
              v586[23] = v587;
              v586[24] = *(v3 + 80);
              atomic_fetch_add_explicit((v587 + 16), 1u, memory_order_relaxed);
              atomic_fetch_add_explicit((*(v3 + 80) + 16), 1u, memory_order_relaxed);
            }

            ++v585;
            v586 += 43;
          }

          while (v585 != 8);
          sub_2775DA200((v3 + 104));
LABEL_985:
          *(v3 + 112) = 0;
          *(v3 + 64) = 0;
          return v840 - v839;
        }

LABEL_969:
        if (!*(v3 + 60))
        {
          goto LABEL_1096;
        }

        if (*(v3 + 8) < 2u)
        {
          v581 = 0;
          v580 = *v3;
          goto LABEL_1003;
        }

        pthread_mutex_lock((v3 + 896));
        v578 = *(v3 + 864);
        if (v578 + 1 == *(v3 + 8))
        {
          v579 = 0;
        }

        else
        {
          v579 = v578 + 1;
        }

        *(v3 + 864) = v579;
        v580 = *v3 + 5712 * v578;
        if (*(v580 + 3124) >= 1)
        {
          do
          {
            pthread_cond_wait((v580 + 5424), (v3 + 896));
          }

          while (*(v580 + 3124) > 0);
        }

        v581 = *(v3 + 856) + 296 * v578;
        if (*(v581 + 16) || (v582 = atomic_load((v580 + 5564))) != 0)
        {
          v583 = (v3 + 1008);
          v584 = atomic_load((v3 + 1008));
          if (v584 + 1 >= *(v3 + 8))
          {
            atomic_store(0, v583);
          }

          else
          {
            atomic_fetch_add(v583, 1u);
          }

          atomic_compare_exchange_strong((v3 + 1016), &v584, 0xFFFFFFFF);
          v588 = *(v3 + 1012);
          if (v588)
          {
            if (v588 < *(v3 + 8))
            {
              *(v3 + 1012) = v588 - 1;
            }
          }
        }

        v589 = *(v580 + 5556);
        if (v589)
        {
          *(v580 + 5556) = 0;
          *(v4 + 100) = v589;
          sub_2775DA200((v4 + 92));
          v590 = *(v581 + 72);
          v591 = *(v581 + 88);
          *(v3 + 63136) = *(v581 + 104);
          *(v3 + 63120) = v591;
          *(v3 + 63104) = v590;
          v592 = *(v4 + 92);
          if (v592)
          {
            atomic_fetch_add_explicit((v592 + 16), 1u, memory_order_relaxed);
          }
        }

        else
        {
          if (!*(v581 + 16))
          {
            goto LABEL_1003;
          }

          if ((*(v581 + 272) || *(v4 + 24)) && *(*(v581 + 288) + 4) != -2)
          {
            sub_2775DDFB8((v3 + 248), v581);
            *(v3 + 520) = *(v581 + 272);
            *(v3 + 536) = *(v581 + 288);
            v593 = *(v581 + 280);
            *(v3 + 528) = v593;
            *(v4 + 44) |= v593 & 3;
          }
        }

        sub_2775DE04C(v581);
        *(v581 + 288) = 0;
LABEL_1003:
        v594 = *(v3 + 80);
        *v580 = v594;
        atomic_fetch_add_explicit((v594 + 16), 1u, memory_order_relaxed);
        *(v580 + 16) = *(v3 + 104);
        v595 = (v580 + 16);
        *(v3 + 104) = 0;
        *(v3 + 112) = 0;
        v596 = *(*(v580 + 8) + 32);
        v597 = (v3 + 3368 * *(*(v580 + 8) + 32) + 52888);
        *(v580 + 3280) = v597;
        v598 = 2 * v596 + 8;
        v599 = v597 + 8;
        if (v597[8])
        {
          goto LABEL_1004;
        }

        if ((v596 - 1) >= 2)
        {
          if (v596)
          {
            sub_2775E9DFC(v3, "Compiled without support for %d-bit decoding\n", v9, v10, v11, v12, v13, v14, (2 * v596 + 8));
            v647 = -42;
            goto LABEL_1287;
          }

          v597[412] = sub_2775D0028;
          v597[413] = sub_2775CFFF4;
          v597[414] = sub_2775CFFBC;
          v597[415] = sub_2775CF850;
          v730 = dword_280B9A7E0;
          if (dword_280B9A7E0)
          {
            v597[412] = sub_277575298;
            v597[413] = sub_2775CF778;
            v597[414] = sub_2775CF6A0;
            v597[415] = sub_2775CF5C8;
          }

          sub_2775E984C(v599);
          sub_2775E6B94(v597 + 85);
          v597[408] = sub_277594424;
          v597[409] = sub_277594340;
          v597[410] = sub_277594274;
          v597[411] = sub_2775939E0;
          if (v730)
          {
            v597[408] = sub_27754D554;
            v597[409] = sub_27754D440;
            v597[410] = sub_27754D768;
            v597[411] = sub_27754D678;
            v597[416] = sub_27754EEB4;
            v597[417] = sub_27754F438;
            v597[418] = sub_2775AD864;
            v597[419] = sub_2775AD1E8;
            v731 = sub_2775AC39C;
          }

          else
          {
            v597[417] = sub_2775AEF3C;
            v597[416] = sub_2775AEF3C;
            v597[418] = sub_2775AEDF0;
            v597[419] = sub_2775AECA4;
            v731 = sub_2775ADF3C;
          }

          v597[420] = v731;
          sub_2775E8034(v597 + 32);
          sub_2775EC764(v597);
LABEL_1004:
          if (*(*(v580 + 8) + 32))
          {
            v600 = sub_2775D54C4;
          }

          else
          {
            v600 = sub_2775A4950;
          }

          if (*(*(v580 + 8) + 32))
          {
            v601 = sub_2775D3DD4;
          }

          else
          {
            v601 = sub_2775A32F0;
          }

          if (*(*(v580 + 8) + 32))
          {
            v602 = sub_2775D9614;
          }

          else
          {
            v602 = sub_2775A894C;
          }

          if (*(*(v580 + 8) + 32))
          {
            v603 = sub_2775D7E5C;
          }

          else
          {
            v603 = sub_2775A7250;
          }

          if (*(*(v580 + 8) + 32))
          {
            v604 = sub_2775D8774;
          }

          else
          {
            v604 = sub_2775A7B60;
          }

          if (*(*(v580 + 8) + 32))
          {
            v605 = sub_2775D9044;
          }

          else
          {
            v605 = sub_2775A83D4;
          }

          if (*(*(v580 + 8) + 32))
          {
            v606 = sub_2775D91D0;
          }

          else
          {
            v606 = sub_2775A8554;
          }

          if (*(*(v580 + 8) + 32))
          {
            v607 = sub_2775D93F8;
          }

          else
          {
            v607 = sub_2775A8750;
          }

          if (*(*(v580 + 8) + 32))
          {
            v608 = sub_2775D96AC;
          }

          else
          {
            v608 = sub_2775A89E4;
          }

          if (*(*(v580 + 8) + 32))
          {
            v609 = sub_2775D10F8;
          }

          else
          {
            v609 = sub_2775A05A0;
          }

          if (*(*(v580 + 8) + 32))
          {
            v610 = sub_2775D97E4;
          }

          else
          {
            v610 = sub_2775A8B08;
          }

          if (*(*(v580 + 8) + 32))
          {
            v611 = sub_2775D9894;
          }

          else
          {
            v611 = sub_2775A8BB8;
          }

          if (*(*(v580 + 8) + 32))
          {
            v612 = sub_2775D9968;
          }

          else
          {
            v612 = sub_2775A8C8C;
          }

          v613 = sub_2775D9F50;
          if (!*(*(v580 + 8) + 32))
          {
            v613 = sub_2775A9158;
          }

          *(v580 + 3296) = v600;
          *(v580 + 3288) = v601;
          *(v580 + 3304) = v602;
          *(v580 + 3312) = v603;
          *(v580 + 3320) = v604;
          *(v580 + 3328) = v605;
          *(v580 + 3336) = v606;
          *(v580 + 3344) = v607;
          *(v580 + 3352) = v608;
          *(v580 + 3360) = v609;
          *(v580 + 3368) = v610;
          *(v580 + 3376) = v611;
          *(v580 + 3384) = v612;
          *(v580 + 3392) = v613;
          v614 = *(v580 + 24);
          if (v614[232])
          {
            v618 = v614[271];
            if (v618 != 7 && !*(v3 + 344 * v614[v618 + 421] + 49952))
            {
              v647 = -22;
              goto LABEL_1287;
            }

            v828 = (v580 + 16);
            v830 = v581;
            v822 = v4;
            v825 = v35;
            v619 = 0;
            v620 = 0;
            v621 = v3 + 49936;
            v622 = 896;
            v623 = 3140;
            while (1)
            {
              v624 = *(v580 + 24);
              v625 = v621 + 344 * *(v624 + v620 + 421);
              if (!*(v625 + 16))
              {
                break;
              }

              v626 = *(v624 + 236);
              v627 = *(v625 + 56);
              if (v627 > 2 * v626)
              {
                break;
              }

              v628 = *(v624 + 244);
              v629 = *(v625 + 60);
              v630 = 16 * v627;
              v631 = v629 <= 2 * v628 && v626 <= v630;
              v632 = v631 && v628 <= 16 * v629;
              if (!v632 || *(*(v580 + 8) + 12) != *(v625 + 64) || v598 != *(v625 + 68))
              {
                break;
              }

              v633 = v580 + v619;
              sub_2775DDFB8((v580 + v619 + 32), v625);
              *(v633 + 304) = *(v625 + 272);
              *(v633 + 320) = *(v625 + 288);
              *(v633 + 312) = *(v625 + 280);
              *(&block[5] + v620 + 1) = *(*(v625 + 8) + 236);
              v634 = *(v580 + 24);
              v635 = *(v634 + 236);
              v637 = *(v625 + 56);
              v636 = *(v625 + 60);
              v638 = *(v634 + 244);
              if (v635 == v637 && v638 == v636)
              {
                v643 = v580 + v623;
                *(v643 - 4) = 0;
                *(v643 - 12) = 0;
              }

              else
              {
                v640 = ((v637 << 14) + (v635 >> 1)) / v635;
                v641 = (v580 + v623);
                *(v641 - 3) = v640;
                *(v641 - 2) = (v640 + 8) >> 4;
                v642 = ((v638 >> 1) + (v636 << 14)) / v638;
                *(v641 - 1) = v642;
                *v641 = (v642 + 8) >> 4;
              }

              v644 = *(v634 + v622) >= 2u && !*(v634 + 269) && !sub_2775CF000(v634 + v622) && *(v580 + v623 - 12) == 0;
              v645 = v580 + v620++;
              *(v645 + 3056) = v644;
              v619 += 296;
              v622 += 36;
              v623 += 16;
              if (v620 == 7)
              {
                v614 = *(v580 + 24);
                v581 = v830;
                v3 = v831;
                v4 = v822;
                v35 = v825;
                v595 = (v580 + 16);
                goto LABEL_1046;
              }
            }

            if (v620)
            {
              v646 = (v580 + 320);
              v3 = v831;
              v4 = v822;
              do
              {
                sub_2775DE04C((v646 - 36));
                *v646 = 0;
                v646 += 37;
                --v620;
              }

              while (v620);
              v647 = -22;
            }

            else
            {
              v647 = -22;
              v3 = v831;
              v4 = v822;
            }

LABEL_1105:
            v595 = v828;
            v581 = v830;
            goto LABEL_1287;
          }

LABEL_1046:
          v615 = v614[271];
          if (v615 == 7)
          {
            v616 = v614[712];
            *(v580 + 3064) = 0;
            if (v616 >= 0x15)
            {
              if (v616 >= 0x3D)
              {
                if (v616 < 0x79)
                {
                  v617 = 2;
                }

                else
                {
                  v617 = 3;
                }
              }

              else
              {
                v617 = 1;
              }
            }

            else
            {
              v617 = 0;
            }

            *(v580 + 3072) = v617;
          }

          else
          {
            v648 = v3 + 24 * v614[v615 + 421] + 52696;
            v649 = *v648;
            *(v580 + 3080) = *(v648 + 16);
            *(v580 + 3064) = v649;
            v650 = *v648;
            if (v650)
            {
              atomic_fetch_add_explicit((v650 + 16), 1u, memory_order_relaxed);
              v614 = *(v580 + 24);
            }
          }

          if (v614[438])
          {
            v682 = *(v3 + 8);
            v683 = v35[346];
            v684 = sub_2775C68C0(v683, 0x3630);
            if (!v684)
            {
              *(v580 + 3088) = 0;
              goto LABEL_1286;
            }

            v685 = *v684;
            *(v684 - 5) = *v684;
            *(v684 - 4) = v683;
            *(v684 - 3) = 1;
            *(v684 - 2) = sub_2775DA1FC;
            *(v684 - 1) = v684;
            *(v580 + 3088) = v684 - 40;
            *(v580 + 3096) = v685;
            if (v682 >= 2)
            {
              *(v580 + 3104) = v685 + 13824;
              *(v685 + 13824) = 0;
            }
          }

          v686 = *(v3 + 60);
          v687 = *(v580 + 3112);
          if (*(v580 + 3120) < v686)
          {
            free(v687);
            v687 = malloc_type_malloc(80 * *(v3 + 60), 0x10700408B15705AuLL);
            *(v580 + 3112) = v687;
            if (!v687)
            {
              *(v580 + 3120) = 0;
              goto LABEL_1286;
            }

            v686 = *(v3 + 60);
            *(v580 + 3120) = v686;
          }

          memcpy(v687, *(v3 + 48), 80 * v686);
          bzero(*(v3 + 48), 80 * *(v3 + 60));
          *(v580 + 3124) = *(v3 + 60);
          *(v3 + 60) = 0;
          v688 = sub_2775DDD24(v3, (v580 + 2376), *(*(v580 + 24) + 240), *(*(v580 + 24) + 244), *(v580 + 8), *v580, *(v580 + 24), *(v580 + 16), v598, (v3 + 63024), (v580 + 2664));
          if (v688)
          {
LABEL_1147:
            v647 = v688;
            goto LABEL_1287;
          }

          sub_2775DDC34(v580 + 2376, *(v3 + 128), *(v3 + 120), *(v3 + 144), *(v3 + 136), *(v3 + 160), *(v3 + 152), *(v3 + 168), (*(v580 + 3112) + 24));
          sub_2775DA200((v3 + 152));
          *(v3 + 160) = 0;
          *(v3 + 168) = 0;
          v689 = *(v580 + 24);
          v690 = *(v689 + 264);
          if (*(v689 + 264) || *(v4 + 24))
          {
            if (*(v4 + 12) == *(v689 + 250))
            {
              v691 = 0;
            }

            else
            {
              v691 = 3;
            }
          }

          else
          {
            v691 = 3;
          }

          v692 = *(v4 + 40);
          *(v580 + 2656) = v692;
          *(v4 + 40) = v692 & v691;
          *(v580 + 2648) = v690;
          *(v580 + 2652) = *(v689 + 265);
          if (*(v3 + 8) >= 2u)
          {
            **(v580 + 2664) = 0;
            *(*(v580 + 2664) + 4) = 0;
            v689 = *(v580 + 24);
          }

          v693 = *(v689 + 236);
          if (v693 == *(v689 + 240))
          {
            sub_2775DDFB8((v580 + 2104), (v580 + 2376));
          }

          else
          {
            v688 = sub_2775DDF30(v3, (v580 + 2104), v693, v580 + 2376);
            if (v688 < 0)
            {
              goto LABEL_1147;
            }
          }

          v701 = *(v580 + 24);
          if (*(v701 + 236) != *(v701 + 240))
          {
            v702 = *(v580 + 2160);
            v703 = *(v580 + 2432);
            v704 = ((v703 >> 1) + (v702 << 14)) / v703;
            *(v580 + 3240) = v704;
            v705 = *(v580 + 2168);
            v706 = v705 == 3;
            v707 = v705 != 3;
            if (v706)
            {
              v708 = v702;
            }

            else
            {
              v708 = v702 + 1;
            }

            v709 = v708 >> v707;
            if (v706)
            {
              v710 = v703;
            }

            else
            {
              v710 = v703 + 1;
            }

            v711 = v710 >> v707;
            v712 = ((v709 << 14) + (v711 >> 1)) / v711;
            *(v580 + 3244) = v712;
            *(v580 + 3248) = (((((v702 - v703) << 13) + (v703 >> 1)) / v703) - ((v704 * v703 - (v702 << 14)) / 2) + 128) & 0x3FFF;
            *(v580 + 3252) = (((((v709 - v711) << 13) + (v711 >> 1)) / v711) - ((v711 * v712 - (v709 << 14)) / 2) + 128) & 0x3FFF;
          }

          if (*(v3 + 8) == 1)
          {
            if (*(v701 + 264) || *(v4 + 24))
            {
              sub_2775DDFB8((v3 + 248), (v580 + 2376));
              *(v3 + 520) = *(v580 + 2648);
              *(v3 + 536) = *(v580 + 2664);
              v713 = *(v580 + 2656);
              *(v3 + 528) = v713;
              *(v4 + 44) |= v713 & 3;
            }
          }

          else
          {
            sub_2775DDFB8(v581, (v580 + 2376));
            *(v581 + 272) = *(v580 + 2648);
            *(v581 + 288) = *(v580 + 2664);
            *(v581 + 280) = *(v580 + 2656);
          }

          v716 = *(v580 + 24);
          *(v580 + 3440) = (*(v716 + 236) + 3) >> 2;
          v717 = *(v716 + 244);
          *(v580 + 3444) = (v717 + 3) >> 2;
          v718 = ((*(v716 + 236) + 7) >> 2) & 0xFFFFFFFE;
          *(v580 + 3448) = v718;
          v719 = ((v717 + 7) >> 2) & 0xFFFFFFFE;
          *(v580 + 3452) = v719;
          v718 += 31;
          *(v580 + 3456) = v718 >> 5;
          v720 = (v719 + 31) >> 5;
          *(v580 + 3460) = v720;
          v721 = *(*(v580 + 8) + 392);
          v722 = v721 + 4;
          *(v580 + 3468) = v721 + 4;
          v723 = 16 << v721;
          *(v580 + 3472) = v723;
          v724 = (v719 + v723 - 1) >> v722;
          *(v580 + 3464) = v724;
          v725 = (v718 & 0xFFFFFFE0);
          *(v580 + 3432) = v725;
          *(v580 + 4324) = ~(-1 << *(v580 + 2172));
          *(v580 + 5564) = 0;
          atomic_store((v724 + *(v716 + 449) * *(v716 + 445)) << (*(v3 + 8) > 1u), (v580 + 5568));
          if ((*(v716 + 232) & 1) == 0 && !*(v716 + 419))
          {
            *(v580 + 2672) = 0;
            *(v580 + 2792) = 0;
            *&v744 = 0;
            *(v580 + 2744) = 0u;
            *(v580 + 2760) = 0u;
            *(v580 + 2776) = 0u;
            goto LABEL_1218;
          }

          sub_2775DA19C(v35[1], 80 * v720 * (v725 >> 1));
          *(v580 + 2672) = v726;
          if (v726)
          {
            *(v580 + 2680) = *v726;
            v716 = *(v580 + 24);
            if (*(v716 + 419))
            {
              *(v580 + 2856) = 0;
              *(v580 + 2848) = 0;
              *(v580 + 2832) = 0u;
            }

            else
            {
              v732 = 40;
              v733 = 2832;
              do
              {
                *(v580 + v733) = *(*(v580 + v732) + 248);
                v732 += 296;
                v733 += 4;
              }

              while (v732 != 2112);
            }

            if (*(v716 + 437))
            {
              v734 = 0;
              v735 = 2860;
              v736 = 2688;
              v737 = 92;
              do
              {
                v738 = v3 + 49936 + 344 * *(*(v580 + 24) + v734 + 421);
                v739 = *(v738 + 304);
                if (v739 && (((*(&block[5] + v734 + 1) + 7) >> 2) & 0xFFFFFFFE) == *(v580 + 3448) && (((*(v580 + v737) + 7) >> 2) & 0xFFFFFFFE) == *(v580 + 3452))
                {
                  *(v580 + v736 + 56) = v739;
                  atomic_fetch_add_explicit((v739 + 16), 1u, memory_order_relaxed);
                  v740 = **(v738 + 304);
                  v741 = 2688;
                }

                else
                {
                  v740 = 0;
                  *(v580 + v736) = 0;
                  v741 = 2744;
                }

                *(v580 + v741 + 8 * v734) = v740;
                v742 = (v580 + v735);
                v743 = (v738 + 312);
                v744 = *v743;
                v694 = *(v743 + 12);
                ++v734;
                *(v742 + 12) = v694;
                *v742 = v744;
                v735 += 28;
                v736 += 8;
                v737 += 296;
              }

              while (v734 != 7);
              v716 = *(v580 + 24);
            }

            else
            {
              *(v580 + 2792) = 0;
              *&v744 = 0;
              *(v580 + 2760) = 0u;
              *(v580 + 2776) = 0u;
              *(v580 + 2744) = 0u;
            }

LABEL_1218:
            if (!*(v716 + 722))
            {
              v828 = v595;
              v830 = v581;
              v823 = v4;
              *(v580 + 2816) = 0;
              *&v744 = 0;
              *(v580 + 2800) = 0u;
              goto LABEL_1237;
            }

            *(v580 + 2808) = 0;
            *(v580 + 2824) = 0;
            if ((*(v716 + 724) || !*(v716 + 723)) && (v745 = *(v716 + 271), (((*(&block[5] + v745 + 1) + 7) >> 2) & 0xFFFFFFFE) == *(v580 + 3448)) && (((*(v580 + 296 * *(v716 + 271) + 92) + 7) >> 2) & 0xFFFFFFFE) == *(v580 + 3452))
            {
              v746 = *(v3 + 344 * *(v716 + v745 + 421) + 50232);
              *(v580 + 2808) = v746;
              if (v746)
              {
                atomic_fetch_add_explicit((v746 + 16), 1u, memory_order_relaxed);
                v746 = *(v580 + 2808);
                *(v580 + 2824) = *v746;
                v716 = *(v580 + 24);
              }
            }

            else
            {
              v746 = 0;
            }

            if (*(v716 + 723))
            {
              *&v744 = sub_2775DA19C(*v35, 32 * *(v580 + 3432) * *(v580 + 3460));
              *(v580 + 2800) = v747;
              if (v747)
              {
                v828 = v595;
                v830 = v581;
                v823 = v4;
                v748 = *v747;
LABEL_1236:
                *(v580 + 2816) = v748;
                goto LABEL_1237;
              }

              sub_2775DA200((v580 + 2808));
            }

            else
            {
              if (v746)
              {
                v828 = v595;
                v830 = v581;
                v823 = v4;
                *(v580 + 2800) = v746;
                atomic_fetch_add_explicit((v746 + 16), 1u, memory_order_relaxed);
                v748 = **(v580 + 2808);
                goto LABEL_1236;
              }

              v796 = 32 * *(v580 + 3432) * *(v580 + 3460);
              sub_2775DA19C(*v35, v796);
              *(v580 + 2800) = v797;
              if (v797)
              {
                v828 = v595;
                v830 = v581;
                v823 = v4;
                v798 = *v797;
                *(v580 + 2816) = v798;
                bzero(v798, v796);
LABEL_1237:
                v749 = 0;
                v750 = 0;
                v751 = 0;
                v835 = *(*(v580 + 24) + 404);
                v752 = v3;
                v753 = v3 + 52696;
                v754 = v752 + 52704;
                do
                {
                  if ((v835 >> v751))
                  {
                    v755 = v753 + v749;
                    if (*(v753 + v749 - 2752))
                    {
                      sub_2775DE04C(v753 + v749 - 2760);
                      *(v755 - 2472) = 0;
                    }

                    sub_2775DDFB8((v753 + v749 - 2760), (v580 + 2376));
                    *(v755 - 2488) = *(v580 + 2648);
                    *(v755 - 2472) = *(v580 + 2664);
                    *(v755 - 2480) = *(v580 + 2656);
                    v756 = (v754 + v750);
                    *v756 = 0;
                    v756[1] = 0;
                    sub_2775DA200((v753 + v750));
                    v757 = 3088;
                    if (!*(*(v580 + 24) + 438))
                    {
                      v757 = 3064;
                    }

                    v758 = v580 + v757;
                    v759 = *v758;
                    v756[1] = *(v758 + 16);
                    *(v756 - 1) = v759;
                    v760 = *v758;
                    if (v760)
                    {
                      atomic_fetch_add_explicit((v760 + 16), 1u, memory_order_relaxed);
                    }

                    v761 = v753 + v749;
                    sub_2775DA200((v753 + v749 - 2464));
                    v762 = *(v580 + 2800);
                    *(v753 + v749 - 2464) = v762;
                    if (v762)
                    {
                      atomic_fetch_add_explicit((v762 + 16), 1u, memory_order_relaxed);
                    }

                    sub_2775DA200((v761 - 2456));
                    if (!*(*(v580 + 24) + 419))
                    {
                      v763 = *(v580 + 2672);
                      *(v761 - 2456) = v763;
                      if (v763)
                      {
                        atomic_fetch_add_explicit((v763 + 16), 1u, memory_order_relaxed);
                      }
                    }

                    v764 = (v753 + v749 - 2448);
                    v744 = *(v580 + 2832);
                    v694 = *(v580 + 2844);
                    *(v764 + 12) = v694;
                    *v764 = v744;
                  }

                  ++v751;
                  v750 += 24;
                  v749 += 344;
                }

                while (v751 != 8);
                v765 = *(*(v580 + 24) + 449) * *(*(v580 + 24) + 445);
                v3 = v831;
                v766 = *(v831 + 24);
                if (v765 + 1 < v766)
                {
                  v767 = v765 + 1;
                }

                else
                {
                  v767 = *(v831 + 24);
                }

                if (*(v831 + 8) != 1)
                {
                  v783 = *(v580 + 3256);
                  atomic_store(0, (v580 + 5544));
                  *(v580 + 5504) = 1828669549 * ((v580 - *v783) >> 4);
                  *(v580 + 5508) = 0u;
                  sub_2775DF624(v580, (v580 + 5504), 1);
                  pthread_mutex_unlock((v831 + 896));
                  if (*(v831 + 32))
                  {
                    v784 = *(v831 + 28);
                    v785 = (v784 + v767) >= *(v831 + 24) ? *(v831 + 24) : v784 + v767;
                    if (v784 < v785)
                    {
                      v786 = MEMORY[0x277D85DD0];
                      do
                      {
                        v787 = *(v831 + 16) + 258752 * v784;
                        v788 = *(v831 + 32);
                        v789 = *(v831 + 40);
                        *&v841 = v786;
                        *(&v841 + 1) = 0x40000000;
                        *&v842 = sub_2775C3930;
                        *(&v842 + 1) = &unk_27A717508;
                        v843 = v787;
                        dispatch_group_async(v788, v789, &v841);
                        v784 = *(v831 + 28) + 1;
                        *(v831 + 28) = v784;
                      }

                      while (v784 < v785);
                    }
                  }

                  goto LABEL_985;
                }

                if (*(v831 + 32))
                {
                  if (v766 >= 2)
                  {
                    v768 = *(v831 + 28);
                    if (v768 < v767)
                    {
                      v769 = MEMORY[0x277D85DD0];
                      do
                      {
                        v770 = *(v831 + 16) + 258752 * v768;
                        v771 = *(v831 + 32);
                        v772 = *(v831 + 40);
                        block[0] = v769;
                        block[1] = 0x40000000;
                        block[2] = sub_2775C3928;
                        block[3] = &unk_27A7174E8;
                        block[4] = v770;
                        dispatch_group_async(v771, v772, block);
                        v768 = *(v831 + 28) + 1;
                        *(v831 + 28) = v768;
                      }

                      while (v768 < v767);
                    }
                  }
                }

                v773 = sub_2775C1C00(v580, *&v744, *&v694, v695, v696, v697, v698, v699, v700);
                v4 = v823;
                if (v773 || (v773 = sub_2775C2F00(v580)) != 0)
                {
                  v774 = v773;
                }

                else
                {
                  v799 = *(v580 + 3256);
                  if (*(v799 + 24) < 2u)
                  {
                    v801 = *(v799 + 16) + 0x58EB3458EB345BC0 * ((v580 - *v799) >> 4);
                    *(v801 + 258564) = 0;
                    *(v801 + 8) = v580;
                    v802 = *(v580 + 24);
                    v803 = *(v802 + 449);
                    if (*(v580 + 3456) * v803 >= 1)
                    {
                      v804 = 0;
                      v805 = 0;
                      do
                      {
                        sub_2775B6D74((*(v580 + 4032) + v804), (*(v802 + 232) & 1) == 0, 0);
                        ++v805;
                        v802 = *(v580 + 24);
                        v803 = *(v802 + 449);
                        v804 += 624;
                      }

                      while (v805 < (*(v580 + 3456) * *(v802 + 449)));
                    }

                    if (v803)
                    {
                      v806 = 0;
                      while (1)
                      {
                        v807 = v806 + 1;
                        v808 = *(v802 + 580 + 2 * (v806 + 1)) >= *(v580 + 3464) ? *(v580 + 3464) : *(v802 + 580 + 2 * (v806 + 1));
                        if (v808 > *(v802 + 580 + 2 * v806))
                        {
                          break;
                        }

LABEL_1332:
                        ++v806;
                        if (v807 >= *(v802 + 449))
                        {
                          goto LABEL_1333;
                        }
                      }

                      v809 = *(v802 + 580 + 2 * v806);
                      while (1)
                      {
                        v810 = v809;
                        v811 = v809 << (*(*(v580 + 8) + 392) + 4);
                        *(v801 + 28) = v811;
                        v812 = *(v580 + 24);
                        if (v812[437])
                        {
                          (*(*(v580 + 3256) + 63000))(v580 + 4048, v806, 0, (*(v580 + 3448) >> 1), (v811 >> 1));
                          v812 = *(v580 + 24);
                        }

                        v813 = v812[445];
                        if (v812[445])
                        {
                          break;
                        }

LABEL_1328:
                        if (v812[232])
                        {
                          (*(*(v580 + 3256) + 63008))(*(*(v801 + 664) + 160) + 5 * *(*(v801 + 664) + 184) * (*(v801 + 28) >> 1));
                        }

                        (*(v580 + 3304))(v580, v810);
                        v809 = (v810 + 1);
                        if (v809 == v808)
                        {
                          v802 = *(v580 + 24);
                          goto LABEL_1332;
                        }
                      }

                      v814 = 0;
                      while (1)
                      {
                        *(v801 + 16) = *(v580 + 3264) + 14624 * (v814 + v806 * v813);
                        if (sub_2775B648C(v801))
                        {
                          break;
                        }

                        ++v814;
                        v812 = *(v580 + 24);
                        v813 = v812[445];
                        if (v814 >= v813)
                        {
                          goto LABEL_1328;
                        }
                      }

                      v774 = -22;
                    }

                    else
                    {
LABEL_1333:
                      if (*(v802 + 438) && *(v580 + 5560))
                      {
                        sub_2775DAA94(v802, *(v580 + 3096), *(v580 + 3264) + 14624 * *(v802 + 710));
                      }

                      v774 = 0;
                    }
                  }

                  else
                  {
                    v800 = sub_2775DF28C(v580, 0);
                    pthread_mutex_lock(*(v580 + 5472));
                    pthread_cond_signal((*(v580 + 5472) + 64));
                    if (!v800)
                    {
                      while (1)
                      {
                        if (atomic_load((v580 + 5548)))
                        {
                          v816 = atomic_load((v580 + 5568));
                          if (v816 < 1)
                          {
                            break;
                          }
                        }

                        pthread_cond_wait((v580 + 5424), *(v580 + 5472));
                      }
                    }

                    pthread_mutex_unlock(*(v580 + 5472));
                    v774 = *(v580 + 5556);
                  }

                  v4 = v823;
                  v3 = v831;
                }

                sub_2775C375C(v580, v774);
                v647 = *(v580 + 5556);
                *(v580 + 3124) = 0;
                if ((v647 & 0x80000000) == 0)
                {
                  goto LABEL_985;
                }

                sub_2775DE04C(v3 + 248);
                v775 = 0;
                v776 = 0;
                *(v3 + 536) = 0;
                v777 = 52696;
                v778 = v3 + 52696;
                v779 = 52704;
                do
                {
                  if ((v835 >> v776))
                  {
                    v780 = v778 + v775;
                    if (*(v778 + v775 - 2752))
                    {
                      sub_2775DE04C(v780 - 2760);
                      *(v780 - 2472) = 0;
                    }

                    v781 = (v831 + v779);
                    *v781 = 0;
                    v781[1] = 0;
                    sub_2775DA200((v831 + v777));
                    sub_2775DA200((v780 - 2464));
                    v782 = (v780 - 2456);
                    v3 = v831;
                    sub_2775DA200(v782);
                  }

                  ++v776;
                  v777 += 24;
                  v779 += 24;
                  v775 += 344;
                }

                while (v776 != 8);
                goto LABEL_1105;
              }
            }
          }

LABEL_1286:
          v647 = -12;
LABEL_1287:
          *(v580 + 5564) = 1;
          *(v580 + 3072) = 0u;
          sub_2775DA200((v580 + 3064));
          if (*(*(v580 + 24) + 438))
          {
            *(v580 + 3096) = 0u;
            sub_2775DA200((v580 + 3088));
          }

          v790 = 0;
          v791 = v580;
          do
          {
            if (*(v791 + 40))
            {
              sub_2775DE04C(v791 + 32);
              *(v791 + 320) = 0;
            }

            sub_2775DA200((v580 + 2744 + v790));
            v790 += 8;
            v791 += 296;
          }

          while (v790 != 56);
          if (*(v3 + 8) == 1)
          {
            sub_2775DE04C(v3 + 248);
            v792 = (v3 + 536);
          }

          else
          {
            sub_2775DE04C(v581);
            v792 = (v581 + 288);
          }

          *v792 = 0;
          sub_2775DE04C(v580 + 2104);
          sub_2775DE04C(v580 + 2376);
          *(v580 + 2664) = 0;
          sub_2775DA200((v580 + 2672));
          sub_2775DA200(v580);
          sub_2775DA200(v595);
          sub_2775DA200((v4 + 92));
          *(v3 + 63136) = *(v3 + 232);
          *(v3 + 63104) = *(v3 + 200);
          *(v3 + 63120) = *(v3 + 216);
          v793 = *(v4 + 92);
          if (v793)
          {
            atomic_fetch_add_explicit((v793 + 16), 1u, memory_order_relaxed);
          }

          if (*(v580 + 3124) >= 1)
          {
            v794 = 0;
            v795 = 0;
            do
            {
              sub_2775A9300(*(v580 + 3112) + v794);
              ++v795;
              v794 += 80;
            }

            while (v795 < *(v580 + 3124));
          }

          *(v580 + 3124) = 0;
          if (*(v3 + 8) > 1u)
          {
            pthread_mutex_unlock((v3 + 896));
          }

          if (v647 < 0)
          {
            return v647;
          }

          goto LABEL_985;
        }

        v597[412] = sub_2775D0DE4;
        v597[413] = sub_2775D0DAC;
        v597[414] = sub_2775D0D70;
        v597[415] = sub_2775D05C4;
        v714 = dword_280B9A7E0;
        if (dword_280B9A7E0)
        {
          v597[412] = sub_27757F284;
          v597[413] = sub_2775D04E4;
          v597[414] = sub_2775D0404;
          v597[415] = sub_2775D0324;
        }

        sub_2775E9B1C(v599);
        sub_2775E9E40(v597 + 85, v598);
        v597[408] = sub_2775E2424;
        v597[409] = sub_2775E2328;
        v597[410] = sub_2775E224C;
        v597[411] = sub_2775E1970;
        if (v714)
        {
          v597[408] = sub_27754EA84;
          v597[409] = sub_27754E93C;
          v597[410] = sub_27754ECF4;
          v597[411] = sub_27754EBD4;
          v597[418] = sub_2775E67E4;
          v597[419] = sub_2775E6694;
          v597[420] = sub_2775E5928;
          v597[416] = sub_2775503A8;
          v597[417] = sub_277550A14;
          if (v598 != 10)
          {
LABEL_1283:
            sub_2775E914C(v597 + 32);
            sub_2775E7F24(v597);
            goto LABEL_1004;
          }

          v597[418] = sub_2775E51E0;
          v597[419] = sub_2775E4AB4;
          v715 = sub_2775E3BE4;
        }

        else
        {
          v597[417] = sub_2775E6934;
          v597[416] = sub_2775E6934;
          v597[418] = sub_2775E67E4;
          v597[419] = sub_2775E6694;
          v715 = sub_2775E5928;
        }

        v597[420] = v715;
        goto LABEL_1283;
      }

      if (v545 != 1)
      {
        goto LABEL_969;
      }
    }

    v546 = *(v4 + 32);
    v547 = v546 == 1;
    if (v546 > 1)
    {
      goto LABEL_980;
    }

    goto LABEL_966;
  }

  v541 = v3 + 49936;
  v542 = *(v540 + 252);
  v543 = *(v3 + 49936 + 344 * v542 + 8);
  if (!v543)
  {
    goto LABEL_1096;
  }

  v544 = *(v543 + 232);
  if (v544 != 3)
  {
    if (v544 == 2)
    {
      if (*(v4 + 32) > 2u)
      {
        goto LABEL_980;
      }

      goto LABEL_920;
    }

    if (v544 != 1)
    {
      goto LABEL_920;
    }
  }

  if (*(v4 + 32) > 1u)
  {
    goto LABEL_980;
  }

LABEL_920:
  v548 = v541 + 344 * v542;
  if (*(v548 + 16) && (!*v8 || *(v548 + 276)))
  {
    if (*(v3 + 8) == 1)
    {
      sub_2775DDFB8((v3 + 248), v548);
      v549 = *(v3 + 152);
      *(v3 + 520) = *(v548 + 272);
      *(v3 + 536) = *(v548 + 288);
      *(v3 + 528) = *(v548 + 280);
      sub_2775DDC34(v3 + 248, *(v3 + 128), *(v3 + 120), *(v3 + 144), *(v3 + 136), *(v3 + 160), v549, *(v3 + 168), (v2 + 3));
      sub_2775DA200((v3 + 152));
      *(v3 + 160) = 0;
      *(v3 + 168) = 0;
      v550 = *(*(v3 + 112) + 252);
      *(v4 + 44) |= *(v541 + 344 * *(*(v3 + 112) + 252) + 280) & 3;
LABEL_952:
      if (!*(*(v541 + 344 * v550 + 8) + 232))
      {
        v567 = 0;
        v568 = 0;
        v569 = v541 + 344 * v550;
        v570 = 344 * v550;
        *(v569 + 276) = 0;
        v571 = v831 + 52696;
        v572 = (v831 + 52696 + 24 * v550);
        do
        {
          if (v570 != v568)
          {
            v573 = v571 + v568;
            if (*(v571 + v568 - 2752))
            {
              sub_2775DE04C(v571 + v568 - 2760);
              *(v573 - 2472) = 0;
            }

            sub_2775DDFB8((v571 + v568 - 2760), v569);
            *(v573 - 2488) = *(v569 + 272);
            *(v573 - 2472) = *(v569 + 288);
            *(v573 - 2480) = *(v569 + 280);
            v574 = (v831 + 52704 + v567);
            *v574 = 0;
            v574[1] = 0;
            sub_2775DA200((v571 + v567));
            v575 = *v572;
            v574[1] = v572[2];
            *(v574 - 1) = v575;
            if (*v572)
            {
              atomic_fetch_add_explicit((*v572 + 16), 1u, memory_order_relaxed);
            }

            sub_2775DA200((v571 + v568 - 2464));
            v576 = *(v569 + 296);
            *(v571 + v568 - 2464) = v576;
            if (v576)
            {
              atomic_fetch_add_explicit((v576 + 16), 1u, memory_order_relaxed);
            }

            sub_2775DA200((v571 + v568 - 2456));
          }

          v568 += 344;
          v567 += 24;
        }

        while (v568 != 2752);
      }

      *(v831 + 112) = 0;
      return v840 - v839;
    }

    pthread_mutex_lock((v3 + 896));
    v551 = *(v3 + 864);
    if (v551 + 1 == *(v3 + 8))
    {
      v552 = 0;
    }

    else
    {
      v552 = v551 + 1;
    }

    *(v3 + 864) = v552;
    v553 = *v3 + 5712 * v551;
    if (*(v553 + 3124) >= 1)
    {
      do
      {
        pthread_cond_wait((v553 + 5424), *(v553 + 5472));
      }

      while (*(v553 + 3124) > 0);
    }

    v554 = *(v3 + 856) + 296 * v551;
    if (*(v554 + 16) || (v555 = atomic_load((v553 + 5564))) != 0)
    {
      v556 = (v3 + 1008);
      v557 = atomic_load((v3 + 1008));
      if (v557 + 1 >= *(v3 + 8))
      {
        atomic_store(0, v556);
      }

      else
      {
        atomic_fetch_add(v556, 1u);
      }

      atomic_compare_exchange_strong((v3 + 1016), &v557, 0xFFFFFFFF);
      v560 = *(v3 + 1012);
      if (v560)
      {
        if (v560 < *(v3 + 8))
        {
          *(v3 + 1012) = v560 - 1;
        }
      }
    }

    v561 = *(v553 + 5556);
    if (v561)
    {
      *(v4 + 100) = v561;
      *(v553 + 5556) = 0;
      sub_2775DA200((v4 + 92));
      v562 = *(v554 + 72);
      v563 = *(v554 + 88);
      *(v3 + 63136) = *(v554 + 104);
      *(v3 + 63120) = v563;
      *(v3 + 63104) = v562;
      v564 = *(v4 + 92);
      if (v564)
      {
        atomic_fetch_add_explicit((v564 + 16), 1u, memory_order_relaxed);
      }
    }

    else
    {
      if (!*(v554 + 16))
      {
LABEL_951:
        v566 = v541 + 344 * *(*(v3 + 112) + 252);
        sub_2775DDFB8(v554, v566);
        *(v554 + 272) = *(v566 + 272);
        *(v554 + 288) = *(v566 + 288);
        *(v554 + 280) = *(v566 + 280);
        *(v554 + 272) = 1;
        sub_2775DDC34(v554, *(v3 + 128), *(v3 + 120), *(v3 + 144), *(v3 + 136), *(v3 + 160), *(v3 + 152), *(v3 + 168), (v2 + 3));
        sub_2775DA200((v3 + 152));
        *(v3 + 160) = 0;
        *(v3 + 168) = 0;
        pthread_mutex_unlock((v3 + 896));
        v550 = *(*(v3 + 112) + 252);
        goto LABEL_952;
      }

      if ((*(v554 + 272) || *(v4 + 24)) && *(*(v554 + 288) + 4) != -2)
      {
        sub_2775DDFB8((v3 + 248), v554);
        *(v3 + 520) = *(v554 + 272);
        *(v3 + 536) = *(v554 + 288);
        v565 = *(v554 + 280);
        *(v3 + 528) = v565;
        *(v4 + 44) |= v565 & 3;
      }
    }

    sub_2775DE04C(v554);
    *(v554 + 288) = 0;
    goto LABEL_951;
  }

LABEL_1096:
  sub_2775DA200((v4 + 92));
  v665 = *(v2 + 3);
  v666 = *(v2 + 5);
  *(v3 + 63136) = *(v2 + 7);
  *(v3 + 63120) = v666;
  *(v3 + 63104) = v665;
  v667 = *(v4 + 92);
  if (v667)
  {
    atomic_fetch_add_explicit((v667 + 16), 1u, memory_order_relaxed);
  }

  if (HIDWORD(v837))
  {
    v668 = "Overrun in OBU bit buffer\n";
  }

  else
  {
    v668 = "Error parsing OBU data\n";
  }

  sub_2775E9DFC(v3, v668, v659, v660, v661, v662, v663, v664, v817);
  return -22;
}

unint64_t sub_2775B5504(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 112);
  if (a3)
  {
    v7 = 0;
    while (!sub_2775CF264(a2))
    {
      if (++v7 == 7)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 344 * *(*(a1 + 112) + v7 + 421) + 49944);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(v9 + 240);
    *(v5 + 240) = v10;
    *(v5 + 244) = *(v9 + 244);
    *(v5 + 408) = *(v9 + 408);
    if (*(v4 + 413))
    {
      v11 = sub_2775CF264(a2);
      *(v5 + 417) = v11;
      if (v11)
      {
        v12 = sub_2775CF2C4(a2, 3u);
        *(v5 + 416) = v12 + 9;
        v13 = *(v5 + 240);
        v10 = (((v12 + 9) >> 1) + 8 * v13) / (v12 + 9);
        if (v13 >= 16)
        {
          v14 = 16;
        }

        else
        {
          v14 = *(v5 + 240);
        }

        if (v10 <= v14)
        {
          v10 = v14;
        }

        goto LABEL_32;
      }

      v10 = *(v5 + 240);
    }

    else
    {
      *(v5 + 417) = 0;
    }

    *(v5 + 416) = 8;
LABEL_32:
    result = 0;
    *(v5 + 236) = v10;
    return result;
  }

LABEL_5:
  if (*(v5 + 270))
  {
    *(v5 + 240) = sub_2775CF2C4(a2, *(v4 + 387)) + 1;
    v8 = sub_2775CF2C4(a2, *(v4 + 388)) + 1;
  }

  else
  {
    *(v5 + 240) = *(v4 + 4);
    v8 = *(v4 + 8);
  }

  *(v5 + 244) = v8;
  if (*(v4 + 413))
  {
    v15 = sub_2775CF264(a2);
    *(v5 + 417) = v15;
    if (v15)
    {
      v16 = sub_2775CF2C4(a2, 3u);
      *(v5 + 416) = v16 + 9;
      v17 = *(v5 + 240);
      v18 = (((v16 + 9) >> 1) + 8 * v17) / (v16 + 9);
      if (v17 >= 16)
      {
        v19 = 16;
      }

      else
      {
        v19 = *(v5 + 240);
      }

      if (v18 <= v19)
      {
        v18 = v19;
      }

      goto LABEL_25;
    }
  }

  else
  {
    *(v5 + 417) = 0;
  }

  *(v5 + 416) = 8;
  v18 = *(v5 + 240);
LABEL_25:
  *(v5 + 236) = v18;
  result = sub_2775CF264(a2);
  *(v5 + 418) = result;
  if (result)
  {
    *(v5 + 408) = sub_2775CF2C4(a2, 0x10u) + 1;
    v21 = sub_2775CF2C4(a2, 0x10u);
    result = 0;
    *(v5 + 412) = v21 + 1;
  }

  else
  {
    *(v5 + 408) = *(v5 + 240);
  }

  return result;
}

uint64_t sub_2775B5710(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v176[13] = *MEMORY[0x277D85DE8];
  v116 = result;
  v7 = *(result + 8);
  v8 = *(v7 + 2168);
  v144 = v8 != 3;
  v153 = v8;
  v9 = v8 == 2;
  if (a4 < a5)
  {
    v172 = 0;
    v10 = *(v7 + 24);
    v130 = &unk_277601AF0 + 8 * v9;
    v11 = *(*(v7 + 3256) + 24);
    v12 = *(v10 + 236);
    v13 = *(v10 + 240);
    v14 = *(v7 + 2152);
    v15 = *(v7 + 2144);
    v16 = a4;
    if (a4 <= 0)
    {
      v17 = 8;
    }

    else
    {
      v17 = 12;
    }

    v18 = a6 != 0;
    if (v153 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

    v20 = *(*(v7 + 8) + 392);
    v21 = 7;
    if (v153 == 1)
    {
      v21 = 3;
    }

    v109 = v21;
    v110 = v19;
    v22 = 4 * a7;
    v23 = (4 << v20) * a7;
    v24 = v23 - 4;
    v171 = *(*(v7 + 3256) + 24);
    if (v11 < 2)
    {
      v18 = 1;
    }

    v115 = v18;
    if (v11 >= 2)
    {
      v25 = a7;
    }

    else
    {
      v25 = 0;
    }

    v111 = v14 * 8 * v25;
    v127 = v15 * v22;
    if (v11 >= 2)
    {
      v26 = v15 * v22;
    }

    else
    {
      v26 = 0;
    }

    v143 = v26;
    v169 = v14 * (8u >> (v153 == 1));
    if (v11 >= 2)
    {
      v27 = v14 * 8 * a7;
    }

    else
    {
      v27 = 0;
    }

    v141 = v27;
    v142 = v14 * 8 * a7;
    v136 = *(v10 + 240);
    v137 = *(v10 + 236);
    if (v12 == v13)
    {
      v28 = (4 * v20 + v23) | 2;
    }

    else
    {
      v28 = (4 * a7) | 2;
    }

    v29 = v14 * v28;
    if (v12 == v13)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4 * a7 - 4;
    }

    v139 = v14 * v30;
    v140 = v29;
    v134 = 2 * *(v7 + 3456);
    v31 = a5;
    result = *(v10 + 847);
    v120 = a2[2];
    v119 = a2[1];
    v121 = *a2;
    v168 = v7 + 5192;
    v112 = v15 * 4 * v25;
    v123 = v15 * ((4 * a7) | 2);
    v122 = v15 * ((4 * v20 + v23) | 2);
    v126 = v15 * (4 * a7 - 4);
    v125 = v15 * v24;
    v158 = 8u >> v144;
    v131 = 0x40u >> v144;
    v152 = (v7 + 2144);
    v170 = result - 1;
    v151 = 8 * v15;
    v138 = *(v7 + 3280);
    v32 = (v138 + 3304);
    v33 = *(v116 + 258544);
    v128 = (v7 + 5264);
    v129 = (v7 + 5240);
    if (v12 == v13)
    {
      v34 = v7 + 5264;
    }

    else
    {
      v34 = v7 + 5240;
    }

    v165 = v34;
    v35 = v7;
    while (1)
    {
      if ((v16 + 2) >= *(v7 + 3452))
      {
        v36 = v17 & 0xFFFFFFF7;
      }

      else
      {
        v36 = v17;
      }

      v118 = v16 + 2;
      v37 = v115;
      if ((v16 + 2) < v31)
      {
        v37 = 1;
      }

      if (v37 == 1 && (v36 & 8) != 0)
      {
        v39 = (v168 + 24 * (v33 == 0));
        v40 = v39[1];
        v41 = (*v39 + v112);
        v42 = v39[2];
        if (v15 < 0)
        {
          v43 = (v121 - v15 + 8 * v15);
          v44 = -2 * v15;
          v41 += v15;
        }

        else
        {
          v43 = (v121 + 6 * v15);
          v44 = 2 * v15;
        }

        result = memcpy(v41, v43, v44);
        v31 = a5;
        if (v153)
        {
          v45 = (v40 + v111);
          v46 = (v42 + v111);
          v47 = *(v7 + 2152);
          if (v47 < 0)
          {
            v48 = -2 * v47;
            memcpy(&v45[v47], (v119 + v47 * v109), -2 * v47);
            v50 = &v46[v47];
            v49 = (v120 + v47 * v109);
          }

          else
          {
            v48 = 2 * v47;
            memcpy(v45, (v119 + v47 * v110), 2 * v47);
            v49 = (v120 + v47 * v110);
            v50 = v46;
          }

          result = memcpy(v50, v49, v48);
          v31 = a5;
        }
      }

      v51 = v36 & 0xFFFFFFFC | 2;
      if (v134 >= 1)
      {
        break;
      }

LABEL_137:
      v15 = *(v7 + 2144);
      v121 += 8 * v15;
      v108 = (8 * *(v7 + 2152)) >> (v153 == 1);
      v119 += v108;
      v120 += v108;
      v33 = *(v116 + 258544) ^ 1;
      *(v116 + 258544) = v33;
      v17 = v51 | 4;
      v31 = a5;
      v16 = v118;
      if (v118 >= a5)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    v124 = (v16 >> 1) & 0xF;
    v55 = a6 != 0;
    v56 = v16 == a4 && a6 != 0;
    v166 = v56;
    v133 = (v16 >> 3) & 2;
    if (v118 < v31)
    {
      v55 = 1;
    }

    v164 = v55;
    v167 = v33;
    v150 = (v168 + 24 * v33);
    v57 = 1;
    v58 = v120;
    v59 = v121;
    v60 = v119;
    while (1)
    {
      v61 = v52;
      v62 = a3 + 1348 * (v54 >> 1);
      v63 = *(v62 + (v54 & 1 | v133) + 1280);
      v149 = v54;
      v147 = v60;
      v148 = v59;
      v145 = v61;
      v146 = v58;
      if (v63 != -1)
      {
        v64 = *(v7 + 24) + v63;
        result = *(v64 + 849);
        v65 = *(v64 + 857);
        if (result | v65)
        {
          break;
        }
      }

      v57 = 1;
LABEL_58:
      v59 = v148 + 64;
      v60 = v147 + v131;
      v58 = v146 + v131;
      v54 = v149 + 1;
      v51 |= 1u;
      v52 = v145 + 16;
      if (v149 + 1 == v134)
      {
        goto LABEL_137;
      }
    }

    v161 = *(v62 + 4 * v124 + 1284);
    v66 = result & 3;
    if (v66 == 3)
    {
      v66 = 4;
    }

    v157 = v66;
    if ((v65 & 3) == 3)
    {
      v67 = 4;
    }

    else
    {
      v67 = v65 & 3;
    }

    v174 = v59;
    v175 = v60;
    v176[0] = v58;
    v68 = 16 * v54;
    v69 = v68 + 16;
    v70 = *(v7 + 3448);
    v160 = v68 + 16;
    if (v68 + 16 >= v70)
    {
      v69 = *(v7 + 3448);
    }

    if (v68 >= v69)
    {
      goto LABEL_58;
    }

    v71 = (result != 0) | (2 * (v65 != 0));
    v135 = result >> 2;
    v72 = v65 >> 2;
    v156 = result;
    v159 = v65;
    v74 = result > 3 || v65 > 3;
    v154 = v74;
    v75 = v58;
    v76 = v60;
    v155 = (result != 0) | (2 * (v65 != 0));
    while (1)
    {
      v77 = v61 + 2;
      if (v70 <= v61 + 2)
      {
        v78 = v51 & 0xFFFFFFFD;
      }

      else
      {
        v78 = v51;
      }

      if (((v161 >> (v61 & 0x1E)) & 3) == 0)
      {
        v57 = 1;
        goto LABEL_131;
      }

      v162 = v61 + 2;
      if (v57)
      {
        v79 = 3;
      }

      else
      {
        v79 = ~v53;
      }

      if (v79 & v71) != 0 && (v78)
      {
        result = sub_2775B60E8(&v176[6 * v172 + 1], &v174, v152, 0, v153, v79 & v71);
      }

      if ((v78 & 2) != 0)
      {
        result = sub_2775B60E8(&v176[6 * (v172 == 0) + 1], &v174, v152, 8u, v153, v71);
      }

      v80 = 0;
      v173 = 0;
      if (v154)
      {
        result = (*(v138 + 3296))(v59, *v152, &v173);
        v80 = result;
      }

      if (v171 > 1)
      {
        v82 = v157;
        if (v166)
        {
          if (v137 == v136)
          {
            v84 = *v128;
            v85 = v125;
          }

          else
          {
            v84 = *v129;
            v85 = v126;
          }

          v81 = v84 + v85;
          v83 = (4 * v61) & 0xFFFFFFF8;
          goto LABEL_101;
        }

        v81 = *v150;
        if (!v164)
        {
          v86 = (4 * v61) & 0xFFFFFFF8;
          v87 = v81 + v127 + v86;
          if (v137 == v136)
          {
            v88 = *v128;
            v89 = v122;
          }

          else
          {
            v88 = *v129;
            v89 = v123;
          }

          v90 = v89 + v86;
          goto LABEL_102;
        }
      }

      else
      {
        v81 = *v150;
        v82 = v157;
      }

      v83 = v143 + ((4 * v61) & 0xFFFFFFF8);
LABEL_101:
      v87 = v81 + v83;
      v88 = v174;
      v90 = v151;
LABEL_102:
      v91 = v88 + v90;
      if (v156 < 4)
      {
        if (v82)
        {
          result = (*v32)(v174, *v152, &v176[6 * v172 + 1], v87, v91, 0);
        }
      }

      else
      {
        if (v173)
        {
          if (v173 >= 0x40)
          {
            v94 = __clz(v173 >> 6) ^ 0x1F;
            if (v94 >= 0xC)
            {
              v94 = 12;
            }

            v92 = v94 + 4;
          }

          else
          {
            v92 = 4;
          }

          v93 = (v92 * v135 + 8) >> 4;
        }

        else
        {
          v93 = 0;
        }

        if (v93 | v82)
        {
          result = (*v32)(v174, *v152, &v176[6 * v172 + 1], v87, v91, v93);
        }
      }

      if (v159)
      {
        if (v159 < 4)
        {
          v95 = 0;
        }

        else
        {
          v95 = v130[v80];
        }

        v96 = 0;
        v97 = (4 * v61) >> v144;
        v98 = v141 + v97;
        v99 = v139 + v97;
        v163 = v142 + v97;
        v100 = v140 + v97;
        v101 = &v175;
        v102 = 1;
        do
        {
          v103 = v96;
          if (v171 > 1)
          {
            if (v166)
            {
              v105 = *(v165 + 8 * v102) + v99;
              v104 = *v101;
              goto LABEL_125;
            }

            v104 = *v101;
            if (!v164)
            {
              v105 = *(v168 + 24 * v167 + 8 * v102) + v163;
              v106 = *(v165 + 8 * v102) + v100;
              goto LABEL_126;
            }
          }

          else
          {
            v104 = *v101;
          }

          v105 = *(v168 + 24 * v167 + 8 * v102) + v98;
LABEL_125:
          v106 = v104 + v169;
LABEL_126:
          result = (v32[3 - v153])(v104, *(v35 + 2152), &v176[6 * v172 + 1 + 2 * v102], v105, v106, v72, v67, v95, __PAIR64__(v78, v170));
          v96 = 1;
          v101 = v176;
          v102 = 2;
        }

        while ((v103 & 1) == 0);
      }

      v57 = 0;
      v172 ^= 1uLL;
      v59 = v174;
      v76 = v175;
      v75 = v176[0];
      v71 = v155;
      v53 = v155;
      v7 = v35;
      v70 = *(v35 + 3448);
      v77 = v162;
LABEL_131:
      v59 += 8;
      v76 += v158;
      v174 = v59;
      v175 = v76;
      v75 += v158;
      v176[0] = v75;
      v51 = v78 | 1;
      v107 = v160;
      if (v160 >= v70)
      {
        v107 = v70;
      }

      v61 = v77;
      if (v107 <= v77)
      {
        goto LABEL_58;
      }
    }
  }

  return result;
}

uint64_t sub_2775B60E8(uint64_t result, void *a2, void *a3, unsigned int a4, int a5, char a6)
{
  if (a6)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *(result + v6) = *(*a2 + v7 + a4 - 2);
      v7 += *a3;
      v6 += 2;
    }

    while (v6 != 16);
  }

  if (a5 && (a6 & 2) != 0)
  {
    v8 = 0;
    v9 = 8u >> (a5 == 1);
    v10 = (a4 >> (a5 != 3)) - 2;
    v11 = (result + 32);
    do
    {
      *(v11 - 8) = *(a2[1] + v10 + v8);
      *v11++ = *(a2[2] + v10 + v8);
      v8 += a3[1];
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *sub_2775B6180(_DWORD *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8, int a9, unsigned int a10, int a11, unsigned int a12, int a13)
{
  v15 = __dst;
  v16 = result;
  v17 = a13;
  v18 = *(result + 3);
  v40 = a10;
  if (*(v18 + 417))
  {
    v40 = (*(v18 + 240) + a12) >> a12;
  }

  v19 = 64 << (a7 & 1);
  if (a13)
  {
    v19 = 64;
  }

  if (a8)
  {
    v20 = 0;
  }

  else
  {
    v20 = -8;
  }

  v21 = (v19 + v20) >> a6;
  v22 = a5 >> 1;
  v23 = (a4 + 2 * (a5 >> 1) * (v21 - 2));
  if (*(*(result + 407) + 24) == 1)
  {
    if (a8)
    {
      v24 = 4 << a7;
      v25 = a3 >> 1;
      v26 = (2 * v40);
      v42 = a8;
      memcpy(__dst, &__dst[2 * (a3 >> 1) * (4 << a7)], v26);
      memcpy(&v15[a3], &v15[2 * v25 * (v24 | 1)], v26);
      memcpy(&v15[2 * a3], &v15[2 * v25 * (v24 | 2)], v26);
      result = memcpy(&v15[6 * v25], &v15[2 * v25 * (v24 | 3)], v26);
      v17 = a13;
      v22 = a5 >> 1;
      a8 = v42;
    }

    v15 += 4 * a3;
  }

  if (v17 && *(*(v16 + 3) + 236) != *(*(v16 + 3) + 240))
  {
    v33 = v21 + a8;
    if ((v21 + a8) <= a9)
    {
      v34 = a11 - 1;
      v35 = 0x40u >> a6;
      v36 = 2 * v22 * v35;
      do
      {
        if (v34 == v33)
        {
          v37 = 3;
        }

        else
        {
          v37 = 4;
        }

        LODWORD(v38) = v16[a12 + 812];
        HIDWORD(v38) = v16[1081];
        result = (*(*(v16 + 410) + 672))(v15, a3, v23, a5, v40, v37, a10, v16[a12 + 810], v38);
        v15 += 2 * (a3 >> 1) * v37;
        if (v34 == v33)
        {
          result = memcpy(v15, &v15[-2 * (a3 >> 1)], (2 * v40));
          v15 += a3;
        }

        v33 += v35;
        v23 += v36;
      }

      while (v33 <= a9);
    }
  }

  else
  {
    v27 = v21 + a8;
    if ((v21 + a8) <= a9)
    {
      v41 = 0x40u >> a6;
      v28 = v22 * ((0x40u >> a6) - 4);
      v29 = 2 * v22;
      do
      {
        if (v27 + 1 == a11)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v31 = 4;
        do
        {
          if (v30 + v31 == 4)
          {
            v32 = &v15[-a3];
          }

          else
          {
            v32 = v23;
          }

          result = memcpy(v15, v32, (2 * a10));
          v15 += a3;
          v23 += v29;
          --v31;
        }

        while (v31);
        v23 += 2 * v28;
        v27 += v41;
      }

      while (v27 <= a9);
    }
  }

  return result;
}

uint64_t sub_2775B648C(uint64_t a1)
{
  v2 = a1 + 258048;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v98 = *(*(v3 + 8) + 392);
  v5 = v98 == 0;
  v6 = *(v3 + 3256);
  __n = *(v3 + 3472);
  v7 = *(v4 + 13884);
  v8 = *(v4 + 13880);
  v9 = *(v3 + 24);
  v10 = *(v9 + 2 * v8 + 450);
  v96 = a1 + 258048;
  v97 = v6;
  if ((*(v9 + 232) & 1) == 0 && !*(v9 + 419))
  {
    goto LABEL_21;
  }

  v11 = *(v4 + 13864);
  v12 = *(v4 + 13868);
  v13 = *(v4 + 13872);
  v14 = *(v4 + 13876);
  v15 = *(a1 + 28);
  v16 = *(v3 + 3468);
  v17 = v15 >> v16;
  v18 = *(a1 + 258564);
  v19 = *(v3 + 4260);
  v20 = v19 == 1 ? 0 : *(v4 + 13884);
  *(a1 + 968) = *(v3 + 4224) + 80 * *(v3 + 4232) * v20;
  if (v19 <= 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    if (v18 == 2 && *(v3 + 4264) > 1)
    {
      v21 = 35 * *(v3 + 4248) * *(v3 + 4256);
    }
  }

  v22 = *(v3 + 4248);
  v23 = *(v3 + 4240) + 420 * v20 * v22 + 12 * v21;
  v24 = *(v3 + 4072);
  v25 = (v24 * v17) & 0x10;
  v26 = 3 * v22;
  if (v24 >= 1)
  {
    v27 = (a1 + ((((v24 * v17) >> 4) & 1) << 7) + 712);
    v28 = *(v3 + 4072);
    do
    {
      *v27++ = v23;
      v23 += 4 * v26;
      --v28;
    }

    while (v28);
  }

  v29 = a1 + 672;
  *(a1 + 672 + 8 * ((v24 * v17) & 0x10)) = v23;
  v30 = v23 + 4 * v26;
  *(a1 + 672 + 8 * (v25 | 1)) = 0;
  v31 = v25 | 2;
  *(a1 + 672 + 8 * (v25 | 2)) = v30;
  v32 = v30 + 4 * v26;
  *(a1 + 672 + 8 * (v25 | 3)) = 0;
  v33 = v25 | 4;
  *(a1 + 672 + 8 * (v25 | 4)) = v32;
  if (v17)
  {
    v34 = (v29 + 8 * (v25 + v24));
    *(v29 + 8 * v25) = *v34;
    *v34 = v23;
    v35 = *(v29 + 8 * v31);
    *(v29 + 8 * v31) = v34[2];
    v34[2] = v35;
    v36 = *(v29 + 8 * v33);
    *(v29 + 8 * v33) = v34[4];
    v34[4] = v36;
  }

  *(a1 + 664) = v3 + 4048;
  *(a1 + 984) = v13;
  if (v14 >= *(v3 + 4060))
  {
    v14 = *(v3 + 4060);
  }

  *(a1 + 988) = v14;
  *(a1 + 976) = v11;
  if (v12 >= *(v3 + 4056))
  {
    v12 = *(v3 + 4056);
  }

  *(a1 + 980) = v12;
  v37 = *(v3 + 24);
  if (*(v37 + 232))
  {
    if (*(v6 + 8) < 2u)
    {
      v38 = 0;
    }

    else
    {
      v39 = (*(v4 + 13944) + 56 * ((v15 - v13) >> v16));
      v40 = 7;
      do
      {
        memset_pattern16(v39, &unk_2775ED570, 8uLL);
        v39 += 8;
        --v40;
      }

      while (v40);
      v38 = (*(v37 + 232) & 1) == 0;
      v2 = v96;
      v6 = v97;
      v5 = v98 == 0;
    }
  }

  else
  {
LABEL_21:
    v38 = 1;
  }

  v41 = v10 >> v5;
  sub_2775B6D74((a1 + 32), v38, *(v2 + 516));
  if (*(v2 + 516) == 2)
  {
    v46 = *(v3 + 3456);
    if (*(v6 + 24) < 2u)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46 * *(*(v3 + 24) + 449);
    }

    v90 = *(v4 + 13864);
    *(a1 + 24) = v90;
    *(a1 + 656) = *(v3 + 4032) + 624 * v47 + 624 * v41 + 624 * v46 * v7;
    if (v90 < *(v4 + 13868))
    {
      while (!atomic_load_explicit(*(v6 + 848), memory_order_acquire) && !sub_2775B6DFC(a1, v5, *(&off_27A717528 + (v98 == 0))))
      {
        v91 = *(a1 + 24);
        if ((v91 & 0x10) != 0 || *(*(v3 + 8) + 392))
        {
          *(a1 + 656) += 624;
        }

        v92 = v91 + __n;
        *(a1 + 24) = v92;
        if (v92 >= *(v4 + 13868))
        {
          goto LABEL_85;
        }
      }

      return 1;
    }

LABEL_85:
    (*(v3 + 3352))(a1);
    return 0;
  }

  v48 = *(v3 + 3256);
  if (*(v48 + 24) >= 2u && *(*(v3 + 24) + 437))
  {
    (*(v48 + 63000))(v3 + 4048, *(v4 + 13884), (*(v4 + 13864) >> 1), (*(v4 + 13868) >> 1), (*(a1 + 28) >> 1), ((*(a1 + 28) + __n) >> 1));
  }

  v49 = 0.0;
  *(a1 + 8240) = 0u;
  *(a1 + 8224) = 0u;
  v50 = *(a1 + 28) >> 5;
  v51 = *(v4 + 13864);
  *(a1 + 24) = v51;
  v52 = *(v3 + 3456);
  *(a1 + 656) = *(v3 + 4032) + 624 * v41 + 624 * v52 * v7;
  *(v2 + 488) = *(v3 + 4440) + 1348 * v52 * v50 + 1348 * v41;
  if (v51 < *(v4 + 13868))
  {
    v95 = v4;
    while (!atomic_load_explicit(*(v6 + 848), memory_order_acquire))
    {
      v53 = (*(v2 + 488) + 1280);
      if (v98)
      {
        *(v2 + 504) = v53;
        *v53 = -1;
        *(*(v2 + 504) + 1) = -1;
        *(*(v2 + 504) + 2) = -1;
        v54 = (*(v2 + 504) + 3);
      }

      else
      {
        v55 = vand_s8(vshl_u32(*(a1 + 24), 0xFFFFFFFDFFFFFFFCLL), 0x200000001);
        v42 = vdup_lane_s32(v55, 1);
        v49 = COERCE_DOUBLE(vorr_s8(v42, v55));
        v54 = &v53[LODWORD(v49)];
        *(v2 + 504) = v54;
      }

      v56 = 0;
      *v54 = -1;
      do
      {
        if ((*(v3 + 5352) >> v56))
        {
          if (v56)
          {
            v57 = *(v3 + 2168);
            v58 = v57 == 1;
            v59 = v57 != 3;
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          v60 = *(v3 + 24);
          v61 = v56 ? v60 + 1 : *(v3 + 24);
          v62 = *(v61 + 880);
          v63 = *(a1 + 28);
          v64 = (4 * v63) >> v58;
          v65 = 1 << v62;
          v66 = (1 << v62) - 1;
          if ((v64 & v66) == 0 && (!v63 || v64 + (v65 >> 1) <= (*(v3 + 2164) + v58) >> v58))
          {
            v67 = v65 >> 1;
            v68 = *(v60 + 4 * v56 + 868);
            if (*(v60 + 236) == *(v60 + 240))
            {
              v69 = *(a1 + 24);
              v70 = (4 * v69) >> v59;
              if ((v70 & v66) == 0 && (!v69 || v70 + v67 <= (*(v3 + 2160) + v59) >> v59))
              {
                v71 = *(v3 + 3476) * (v63 >> 5) + (v69 >> 5);
                v72 = (v63 >> 3) & 2 | (v69 >> 4) & 1;
                sub_2775B7994(*(a1 + 16), *(v3 + 4448) + 108 * v71 + 36 * v56 + (v72 | (8 * v72)), v56, v68, v49, *&v42, v43, v44, v45);
              }
            }

            else
            {
              v73 = (((*(v3 + 2432) + v59) >> v59) + v67) >> v62;
              if (v73 <= 1)
              {
                v73 = 1;
              }

              v74 = *(v60 + 416);
              v75 = (8 << v62) - 1;
              v76 = *(a1 + 24);
              v77 = (((4 * v76 * v74) >> v59) + v75) >> (v62 + 3);
              v78 = (((4 * v74 * (v76 + __n)) >> v59) + v75) >> (v62 + 3);
              if (v78 >= v73)
              {
                v79 = v73;
              }

              else
              {
                v79 = v78;
              }

              if (v77 < v79)
              {
                v80 = v59 + v62;
                do
                {
                  v81 = *(a1 + 28);
                  v82 = (v81 >> 5) * *(v3 + 3476) + (v77 << v80 >> 7);
                  v83 = (v81 >> 3) & 2 | ((v77 << v80) >> 6) & 1;
                  sub_2775B7994(*(a1 + 16), *(v3 + 4448) + 108 * v82 + 36 * v56 + (v83 | (8 * v83)), v56, v68, v49, *&v42, v43, v44, v45);
                  ++v77;
                }

                while (v79 != v77);
              }
            }
          }
        }

        ++v56;
      }

      while (v56 != 3);
      if (sub_2775B6DFC(a1, v98 == 0, *(&off_27A717528 + (v98 == 0))))
      {
        break;
      }

      v84 = *(a1 + 24);
      v2 = v96;
      if ((v84 & 0x10) != 0 || *(*(v3 + 8) + 392))
      {
        *(a1 + 656) += 624;
        *(v96 + 488) += 1348;
      }

      v85 = v84 + __n;
      *(a1 + 24) = v85;
      v4 = v95;
      v6 = v97;
      if (v85 >= *(v95 + 13868))
      {
        goto LABEL_69;
      }
    }

    return 1;
  }

LABEL_69:
  if (*(*(v3 + 8) + 401))
  {
    v86 = *(v3 + 3256);
    if (*(v86 + 24) >= 2u && (*(*(v3 + 24) + 232) & 1) != 0)
    {
      (*(v86 + 63008))(*(*(a1 + 664) + 160) + 5 * *(*(a1 + 664) + 184) * (*(a1 + 28) >> 1));
    }
  }

  if (*(v2 + 516) != 1)
  {
    (*(v3 + 3352))(a1);
  }

  v87 = (*(v3 + 3452) + 31) & 0xFFFFFFE0;
  memcpy((*(v3 + 5160) + *(a1 + 28) + v87 * v8), (a1 + (*(a1 + 28) & 0x10) + 512), __n);
  memcpy((*(v3 + 5168) + (*(a1 + 28) >> (*(v3 + 2168) == 1)) + (v87 >> (*(v3 + 2168) == 1)) * v8), (a1 + ((*(a1 + 28) & 0x10u) >> (*(v3 + 2168) == 1)) + 544), __n >> (*(v3 + 2168) == 1));
  v88 = *(v4 + 13852);
  if (v88 < -14)
  {
    return 1;
  }

  if (!*(v6 + 63072) || (*(a1 + 28) >> *(v3 + 3468)) + 1 < *(*(v3 + 24) + 2 * v7 + 582))
  {
    return 0;
  }

  v93 = (*(v4 + 13824) + ((-7 - v88) >> 3));
  result = 1;
  if (((2 * (0x80u >> ((1 - v88) & 7)) - 1) & *(v93 - 1)) == 0x80u >> ((1 - v88) & 7))
  {
    v94 = *(v4 + 13832);
    if (v93 < v94)
    {
      while (!*v93)
      {
        result = 0;
        if (++v93 >= v94)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

_OWORD *sub_2775B6D74(_OWORD *result, unsigned int a2, int a3)
{
  v3 = vdupq_n_s8(a2);
  result[14] = v3;
  result[15] = v3;
  result[35] = 0u;
  result[36] = 0u;
  if (a2)
  {
    *result = 0uLL;
    result[1] = 0uLL;
  }

  if (a3 != 2)
  {
    result[10] = 0uLL;
    result[11] = 0uLL;
    result[12] = 0uLL;
    result[13] = 0uLL;
    *&v4 = 0x202020202020202;
    *(&v4 + 1) = 0x202020202020202;
    result[30] = v4;
    result[31] = v4;
    *&v4 = 0x101010101010101;
    *(&v4 + 1) = 0x101010101010101;
    result[32] = v4;
    result[33] = v4;
    result[34] = 0uLL;
    *&v5 = -1;
    *(&v5 + 1) = -1;
    result[26] = v5;
    result[27] = v5;
    *&v6 = 0x404040404040404;
    *(&v6 + 1) = 0x404040404040404;
    result[28] = v6;
    result[29] = v6;
    if (!a2)
    {
      result[20] = v5;
      result[21] = v5;
      result[18] = v5;
      result[19] = v5;
      result[16] = 0uLL;
      result[17] = 0uLL;
      *result = 0uLL;
      result[1] = 0uLL;
    }

    *&v7 = 0x4040404040404040;
    *(&v7 + 1) = 0x4040404040404040;
    result[6] = v7;
    result[7] = v7;
    result[4] = v7;
    result[5] = v7;
    result[2] = v7;
    result[3] = v7;
    *&v7 = 0x303030303030303;
    *(&v7 + 1) = 0x303030303030303;
    result[22] = v7;
    result[23] = v7;
    result[24] = v7;
    result[25] = v7;
    result[8] = 0uLL;
    result[9] = 0uLL;
    result[37] = 0uLL;
    result[38] = 0uLL;
  }

  return result;
}

uint64_t sub_2775B6DFC(int32x2_t *a1, unsigned int a2, unsigned __int16 *a3)
{
  v4 = a2;
  v6 = a1 + 32256;
  v7 = a1[1];
  v8 = *(*&v7 + 3448);
  v9 = a1[3].u32[0];
  v10 = a1[3].u32[1];
  v11 = *(*&v7 + 3452);
  v12 = 0x10u >> a2;
  v13 = v9 + (0x10u >> a2);
  v14 = v10 + (0x10u >> a2);
  v15 = v11 > v14;
  v17 = v8 <= v13;
  v16 = v8 > v13;
  v17 = v17 && v11 <= v14;
  if (v17)
  {
    do
    {
      v12 = 8u >> v4++;
      a3 = (a3 + a3[4]);
      v15 = v11 > v10 + v12;
      v16 = v8 > v9 + v12;
    }

    while (v8 <= v9 + v12 && v11 <= v10 + v12);
  }

  if (a1[32320].i32[1] != 2)
  {
    v21 = (v9 >> 1) & 0xF;
    v20 = (v10 >> 1) & 0xF;
    if (v16 && v15)
    {
      sub_27758434C(*&a1[2] + 13824, *&a1[2] + (v4 << 7) + 32 * ((*(*&a1[82] + v21 + 544) >> (4 - v4)) & 1 | (2 * ((a1[72].u8[v20] >> (4 - v4)) & 1u))) + 1248, byte_2775F13D9[v4]);
      if (*(*&v7 + 2168) == 2 && (v22 - 2) < 8 && ((0xB1u >> (v22 - 2)) & 1) != 0)
      {
        return 1;
      }

      goto LABEL_18;
    }

    if (v16)
    {
      sub_277584618();
      if (v26)
      {
LABEL_28:
        if (sub_2775B6DFC(a1, v4 + 1, a3 + a3[4]))
        {
          return 1;
        }

        a1[3].i32[0] += v12;
        if (sub_2775B6DFC(a1, v4 + 1, a3 + a3[5]))
        {
          return 1;
        }

        v24 = 0;
        a1[3].i32[0] -= v12;
        goto LABEL_57;
      }

LABEL_33:
      v25 = 1;
      if (!sub_2775B7C18())
      {
        v24 = 1;
        goto LABEL_72;
      }

      return 0xFFFFFFFFLL;
    }

    sub_277584618();
    if (*(*&v7 + 2168) == 2 && !v31)
    {
      return 1;
    }

LABEL_53:
    if (!v31)
    {
      v25 = 2;
      if (sub_2775B7C18())
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_71;
    }

    if (sub_2775B6DFC(a1, v4 + 1, a3 + a3[4]))
    {
      return 1;
    }

    a1[3].i32[1] += v12;
    if (sub_2775B6DFC(a1, v4 + 1, a3 + a3[6]))
    {
      return 1;
    }

    v24 = 0;
    a1[3].i32[1] -= v12;
LABEL_57:
    v25 = 3;
    goto LABEL_72;
  }

  if (!v16 || !v15)
  {
    LODWORD(v21) = 0;
    LODWORD(v20) = 0;
    if (v16)
    {
      if (v4 != *(*(*&v7 + 4360) + 32 * *(*&v7 + 3432) * v10 + 32 * v9))
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v31 = v4 != *(*(*&v7 + 4360) + 32 * *(*&v7 + 3432) * v10 + 32 * v9);
    goto LABEL_53;
  }

  v19 = (*(*&v7 + 4360) + 32 * *(*&v7 + 3432) * v10 + 32 * v9);
  if (v4 != *v19)
  {
    LODWORD(v21) = 0;
    LODWORD(v20) = 0;
    goto LABEL_46;
  }

  LODWORD(v20) = 0;
  LODWORD(v21) = 0;
  v22 = v19[2];
LABEL_18:
  if (v22 > 4)
  {
    if (v22 <= 6)
    {
      if (v22 == 5)
      {
        if (!sub_2775B7C18())
        {
          a1[3].i32[1] += v12;
          if (!sub_2775B7C18())
          {
            a1[3].i32[0] += v12;
            if (!sub_2775B7C18())
            {
              a1[3] = vsub_s32(a1[3], vdup_n_s32(v12));
              v24 = 1;
              v25 = 5;
              goto LABEL_72;
            }
          }
        }
      }

      else if (!sub_2775B7C18())
      {
        a1[3].i32[1] += v12;
        if (!sub_2775B7C18())
        {
          v39 = a1[3].i32[1] - v12;
          a1[3].i32[0] += v12;
          a1[3].i32[1] = v39;
          if (!sub_2775B7C18())
          {
            a1[3].i32[0] -= v12;
            v24 = 1;
            v25 = 6;
            goto LABEL_72;
          }
        }
      }
    }

    else
    {
      if (v22 != 7)
      {
        if (v22 != 8)
        {
          if (sub_2775B7C18())
          {
            return 0xFFFFFFFFLL;
          }

          v37 = 8u >> v4;
          a1[3].i32[0] += 8u >> v4;
          if (sub_2775B7C18())
          {
            return 0xFFFFFFFFLL;
          }

          a1[3].i32[0] += v37;
          if (sub_2775B7C18())
          {
            return 0xFFFFFFFFLL;
          }

          v38 = a1[3].i32[0] + v37;
          a1[3].i32[0] = v38;
          if (v38 < *(*&v7 + 3448))
          {
            if (sub_2775B7C18())
            {
              return 0xFFFFFFFFLL;
            }

            v38 = a1[3].i32[0];
          }

          a1[3].i32[0] = v38 - (v12 + v37);
          v24 = 1;
          v25 = 9;
          goto LABEL_72;
        }

        if (sub_2775B7C18())
        {
          return 0xFFFFFFFFLL;
        }

        v27 = 8u >> v4;
        a1[3].i32[1] += 8u >> v4;
        if (sub_2775B7C18())
        {
          return 0xFFFFFFFFLL;
        }

        a1[3].i32[1] += v27;
        if (sub_2775B7C18())
        {
          return 0xFFFFFFFFLL;
        }

        v28 = a1[3].i32[1] + v27;
        a1[3].i32[1] = v28;
        if (v28 < *(*&v7 + 3452))
        {
          if (sub_2775B7C18())
          {
            return 0xFFFFFFFFLL;
          }

          v28 = a1[3].i32[1];
        }

        a1[3].i32[1] = v28 - (v12 + v27);
        v24 = 1;
        v25 = 8;
        goto LABEL_72;
      }

      if (!sub_2775B7C18())
      {
        a1[3].i32[0] += v12;
        if (!sub_2775B7C18())
        {
          a1[3].i32[1] += v12;
          if (!sub_2775B7C18())
          {
            a1[3] = vsub_s32(a1[3], vdup_n_s32(v12));
            v24 = 1;
            v25 = 7;
            goto LABEL_72;
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v22 <= 1)
  {
    if (v22)
    {
      if (!sub_2775B7C18())
      {
        a1[3].i32[1] += v12;
        if (!sub_2775B7C18())
        {
          a1[3].i32[1] -= v12;
          v24 = 1;
          v25 = 1;
          goto LABEL_72;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (sub_2775B7C18())
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
LABEL_71:
    v24 = 1;
    goto LABEL_72;
  }

  if (v22 == 2)
  {
    if (!sub_2775B7C18())
    {
      a1[3].i32[0] += v12;
      if (!sub_2775B7C18())
      {
        a1[3].i32[0] -= v12;
        v24 = 1;
        v25 = 2;
        goto LABEL_72;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v22 == 3)
  {
LABEL_46:
    if (v4 == 4)
    {
      if (sub_2775B7C18())
      {
        return 0xFFFFFFFFLL;
      }

      v29 = v6[64].i32[0];
      ++a1[3].i32[0];
      if (sub_2775B7C18())
      {
        return 0xFFFFFFFFLL;
      }

      a1[3] = vadd_s32(a1[3], 0x1FFFFFFFFLL);
      if (sub_2775B7C18())
      {
        return 0xFFFFFFFFLL;
      }

      ++a1[3].i32[0];
      v6[64].i32[0] = v29;
      if (sub_2775B7C18())
      {
        return 0xFFFFFFFFLL;
      }

      v24 = 0;
      v30 = vadd_s32(a1[3], -1);
      goto LABEL_116;
    }

    if (!sub_2775B6DFC(a1, v4 + 1, a3 + a3[4]))
    {
      a1[3].i32[0] += v12;
      if (!sub_2775B6DFC(a1, v4 + 1, a3 + a3[5]))
      {
        v32 = a1[3].i32[1] + v12;
        a1[3].i32[0] -= v12;
        a1[3].i32[1] = v32;
        if (!sub_2775B6DFC(a1, v4 + 1, a3 + a3[6]))
        {
          a1[3].i32[0] += v12;
          if (!sub_2775B6DFC(a1, v4 + 1, a3 + a3[7]))
          {
            v24 = 0;
            v30 = vsub_s32(a1[3], vdup_n_s32(v12));
LABEL_116:
            a1[3] = v30;
            goto LABEL_57;
          }
        }
      }
    }

    return 1;
  }

  if (sub_2775B7C18())
  {
    return 0xFFFFFFFFLL;
  }

  a1[3].i32[0] += v12;
  if (sub_2775B7C18())
  {
    return 0xFFFFFFFFLL;
  }

  v23 = a1[3].i32[1] + v12;
  a1[3].i32[0] -= v12;
  a1[3].i32[1] = v23;
  if (sub_2775B7C18())
  {
    return 0xFFFFFFFFLL;
  }

  a1[3].i32[1] -= v12;
  v24 = 1;
  v25 = 4;
LABEL_72:
  result = 0;
  v34 = v24 ^ 1;
  if (v4 == 4)
  {
    v34 = 0;
  }

  if ((v34 & 1) == 0 && v6[64].i32[1] != 2)
  {
    result = 0;
    if (v12 <= 3)
    {
      if (v12 == 1)
      {
        result = 0;
        v43 = &unk_2775EF5F2 + 10 * v4 + v25;
        *(*&a1[82] + v21 + 544) = *v43;
        a1[72].i8[v20] = v43[50];
      }

      else if (v12 == 2)
      {
        result = 0;
        v40 = &unk_2775EF5F2 + 10 * v4 + v25;
        *(*&a1[82] + v21 + 544) = *v40 | (*v40 << 8);
        *(a1[72].i16 + v20) = v40[50] | (v40[50] << 8);
      }
    }

    else
    {
      switch(v12)
      {
        case 4:
          result = 0;
          v41 = &unk_2775EF5F2 + 10 * v4 + v25;
          *(*&a1[82] + v21 + 544) = 16843009 * *v41;
          *(a1[72].i32 + v20) = 16843009 * v41[50];
          break;
        case 8:
          result = 0;
          v42 = &unk_2775EF5F2 + 10 * v4 + v25;
          *(*&a1[82] + v21 + 544) = 0x101010101010101 * *v42;
          *(&a1[72] + v20) = (0x101010101010101 * v42[50]);
          break;
        case 16:
          result = 0;
          v35 = &unk_2775EF5F2 + 10 * v4 + v25;
          v36 = 0x101010101010101 * *v35;
          *(*&a1[82] + v21 + 544) = v36;
          *(*&a1[82] + v21 + 552) = v36;
          *&a1[72].i8[v20] = vdupq_n_s64(0x101010101010101 * v35[50]);
          break;
      }
    }
  }

  return result;
}

void sub_2775B7994(int16x4_t *a1, uint64_t a2, unsigned int a3, int a4, double a5, double a6, double a7, double a8, uint16x8_t a9)
{
  if (a4 == 1)
  {
    v12 = sub_2775840FC(&a1[1728], a1 + 672, 2, a5, a6, a7, a8, a9);
    if (v12)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = a4;
    v14 = 5388;
    if (a4 == 2)
    {
      v14 = 5384;
    }

    sub_277584658(&a1[1728], (a1 + v14));
    if (!v15)
    {
      *a2 = 0;
      return;
    }
  }

  *a2 = v13;
  if (v13 == 2)
  {
    if (a3)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_2775CB7F4(&a1[1728], *(*&a1[1823] + 4) + 5, 16, 1) - 5;
    }

    *(a2 + 4) = v24;
    v30 = a1 + 1823;
    *(a2 + 5) = sub_2775CB7F4(&a1[1728], *(*&a1[a3 + 1823] + 5) + 23, 32, 2) - 23;
    *(a2 + 6) = sub_2775CB7F4(&a1[1728], *(*&a1[a3 + 1823] + 6) + 17, 64, 3) - 17;
    if (a3)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_2775CB7F4(&a1[1728], *(*v30 + 1) + 5, 16, 1) - 5;
    }

    *(a2 + 1) = v31;
    *(a2 + 2) = sub_2775CB7F4(&a1[1728], *(*&v30[a3] + 2) + 23, 32, 2) - 23;
    *(a2 + 3) = sub_2775CB7F4(&a1[1728], *(*&v30[a3] + 3) + 17, 64, 3) - 17;
    *(a2 + 7) = *(*&v30[a3] + 7);
    v30[a3] = a2;
  }

  else if (v13 == 3)
  {
    v16 = 0;
    v17 = -4;
    do
    {
      sub_2775845E0();
      v16 = v18 | (2 * v16);
    }

    while (!__CFADD__(v17++, 1));
    v20 = (&unk_277601B00 + 4 * v16);
    *a2 += v16;
    v21 = *v20;
    v22 = &a1[a3];
    if (*v20)
    {
      LOBYTE(v21) = sub_2775CB7F4(&a1[1728], *(*&v22[1823] + 7) + 96, 128, 4) - 96;
    }

    *(a2 + 7) = v21;
    if (v20[1])
    {
      v23 = sub_2775CB7F4(&a1[1728], *(*&v22[1823] + 8) + 32, 128, 4) - 32;
    }

    else
    {
      v23 = 95;
    }

    *(a2 + 8) = v23;
    v25 = &a1[a3];
    v26 = v25[1823];
    v27 = *(*&v26 + 4);
    *(a2 + 6) = *(*&v26 + 6);
    *(a2 + 4) = v27;
    v28 = v25[1823];
    v29 = *(*&v28 + 1);
    *(a2 + 3) = *(*&v28 + 3);
    *(a2 + 1) = v29;
    v25[1823] = a2;
  }
}

uint64_t sub_2775B7C18()
{
  v0 = MEMORY[0x28223BE20]();
  __b = v4;
  v9 = v0;
  v996 = *MEMORY[0x277D85DE8];
  v10 = *(v0 + 8);
  v983 = *(v0 + 16);
  v980 = v0 + 258048;
  v11 = *(v0 + 258564);
  v12 = *(v0 + 28);
  if (v11)
  {
    v985 = (*(v10 + 4360) + 32 * *(v10 + 3432) * v12 + 32 * *(v0 + 24));
    v13 = *(v0 + 24);
  }

  else
  {
    v13 = *(v0 + 24);
    v985 = v988;
  }

  v14 = &byte_277601B40[4 * v2];
  v15 = v13 & 0x1F;
  v16 = *(v10 + 2168);
  v17 = *v14;
  v978 = v14;
  v18 = v14[1];
  v19 = *(v10 + 3448) - v13;
  if (v17 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v10 + 3452) - v12;
  if (v18 < v21)
  {
    v21 = v18;
  }

  v959 = v21;
  v22 = v16 != 3;
  if (v16 == 3)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + 1;
  }

  v24 = v16 == 1;
  v974 = v15 >> v22;
  v981 = v12 & 0x1F;
  v973 = v981 >> v24;
  v984 = v18;
  if (v16 == 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v18;
  }

  v960 = *(v983 + 13864);
  v956 = *(v983 + 13872);
  v967 = v12;
  if (v16 && (v17 > v22 || (v13 & 1) != 0))
  {
    if (v18 <= v24)
    {
      v26 = v12 & 1;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  v971 = v23 >> v22;
  v27 = v25 >> v24;
  v28 = 0.0;
  memset(v988, 0, sizeof(v988));
  v979 = v13 & 0x1F;
  v982 = v2;
  if (v11 != 2)
  {
    v977 = v17;
    *v985 = v1;
    *(v985 + 2) = v3;
    *(v985 + 1) = v2;
    v32 = *(v10 + 24);
    v972 = v26;
    v951 = v20;
    v952 = v16 == 1;
    v939 = v16 != 3;
    v943 = v13 > v960;
    __dst = v12 > v956;
    v946 = v16;
    if (v32[722])
    {
      if (!v32[723])
      {
        v48 = *(v10 + 2824);
        if (v48)
        {
          v49 = *(v10 + 3432);
          v50 = v48 + v49 * v12 + v13;
          v51 = 8;
          v52 = v959;
          do
          {
            if (v20 >= 1)
            {
              for (i = 0; i != v20; ++i)
              {
                if (v51 >= *(v50 + i))
                {
                  v51 = *(v50 + i);
                }
              }
            }

            v41 = __OFSUB__(v52--, 1);
            if ((v52 < 0) ^ v41 | (v52 == 0))
            {
              break;
            }

            v50 += v49;
          }

          while (v51);
          *(v985 + 4) = v51;
          LODWORD(v36) = v51;
        }

        else
        {
          LODWORD(v36) = 0;
          *(v985 + 4) = 0;
        }

        v954 = 0;
        goto LABEL_163;
      }

      if (v32[806])
      {
        v33 = v12;
        v34 = v13;
        if (v32[724])
        {
          sub_277584658(v983 + 13824, (v983 + 4 * (*(v9 + v981 + 160) + *(*(v9 + 656) + v15 + 128)) + 6036));
          if (v35)
          {
            v954 = v35;
            v36 = *(v10 + 2824);
            if (v36)
            {
              v37 = *(v10 + 3432);
              v32 = *(v10 + 24);
              v38 = v36 + v37 * *(v9 + 28) + *(v9 + 24);
              LODWORD(v36) = 8;
              v39 = v959;
              LODWORD(v2) = v982;
              do
              {
                if (v951 >= 1)
                {
                  for (j = 0; j != v951; ++j)
                  {
                    if (v36 >= *(v38 + j))
                    {
                      LODWORD(v36) = *(v38 + j);
                    }
                  }
                }

                v41 = __OFSUB__(v39--, 1);
                if ((v39 < 0) ^ v41 | (v39 == 0))
                {
                  break;
                }

                v38 += v37;
              }

              while (v36);
              *(v985 + 4) = v36;
              goto LABEL_162;
            }

            *(v985 + 4) = 0;
            v32 = *(v10 + 24);
LABEL_161:
            LODWORD(v2) = v982;
LABEL_162:
            LODWORD(v36) = v36;
LABEL_163:
            v43 = &v32[10 * v36 + 726];
            if (v32[10 * v36 + 734] || v32[10 * v36 + 732] != 255 || v32[10 * v36 + 733])
            {
              *(v985 + 5) = 0;
              v58 = v985 + 5;
              goto LABEL_167;
            }

            v54 = 0;
LABEL_69:
            if (v977 >= v984)
            {
              v55 = v984;
            }

            else
            {
              v55 = v977;
            }

            if (v32[890] && v55 > 1)
            {
              v56 = v43;
              sub_277584658(v983 + 13824, (v983 + 4 * (*(v9 + v981 + 224) + *(*(v9 + 656) + v15 + 192)) + 6024));
              *(v985 + 5) = v57;
              v58 = v985 + 5;
              if (v57)
              {
                v59 = 1;
                LODWORD(v2) = v982;
                v43 = v56;
LABEL_170:
                *(v985 + 6) = v59;
                v101 = *(v10 + 24);
                if (!v101[722] || !v101[723] || v101[806])
                {
                  goto LABEL_258;
                }

                if (!v59 && v101[724])
                {
                  sub_277584658(v983 + 13824, (v983 + 4 * (*(v9 + v981 + 160) + *(*(v9 + 656) + v15 + 128)) + 6036));
                  if (v114)
                  {
                    v954 = v114;
                    v115 = *(v10 + 2824);
                    LODWORD(v2) = v982;
                    if (v115)
                    {
                      v116 = *(v10 + 3432);
                      v117 = v115 + v116 * *(v9 + 28) + *(v9 + 24);
                      v118 = 8;
                      v119 = v959;
                      do
                      {
                        if (v951 >= 1)
                        {
                          for (k = 0; k != v951; ++k)
                          {
                            if (v118 >= *(v117 + k))
                            {
                              v118 = *(v117 + k);
                            }
                          }
                        }

                        v41 = __OFSUB__(v119--, 1);
                        if ((v119 < 0) ^ v41 | (v119 == 0))
                        {
                          break;
                        }

                        v117 += v116;
                      }

                      while (v118);
                      LODWORD(v115) = v118;
                    }

LABEL_257:
                    *(v985 + 4) = v115;
                    v101 = *(v10 + 24);
                    v43 = &v101[10 * v115 + 726];
                    v59 = *(v985 + 6);
LABEL_258:
                    v955 = v27;
                    v953 = v13;
                    if (!v59)
                    {
                      if (*(*(v10 + 8) + 392))
                      {
                        v154 = vand_s8(vshl_u32(*(v9 + 24), 0xFFFFFFFDFFFFFFFCLL), 0x200000001);
                        v5 = vdup_lane_s32(v154, 1);
                        v28 = COERCE_DOUBLE(vorr_s8(v5, v154));
                        v155 = LODWORD(v28);
                      }

                      else
                      {
                        v155 = 0;
                      }

                      v156 = *(v980 + 504);
                      if (*(v156 + v155) == 255)
                      {
                        v157 = v101[848];
                        if (v101[848])
                        {
                          v927 = v58;
                          v158 = v43;
                          v159 = 0;
                          do
                          {
                            --v157;
                            sub_2775845E0();
                            v159 = v160 | (2 * v159);
                          }

                          while (v157);
                          v156 = *(v980 + 504);
                          LODWORD(v2) = v982;
                          v43 = v158;
                          v58 = v927;
                        }

                        else
                        {
                          v159 = 0;
                        }

                        *(v156 + v155) = v159;
                        v27 = v955;
                        if (v977 >= 0x11)
                        {
                          *(*(v980 + 504) + v155 + 1) = v159;
                        }

                        if (v984 >= 0x11)
                        {
                          *(*(v980 + 504) + v155 + 2) = v159;
                          if (v977 == 32 && v984 == 32)
                          {
                            *(*(v980 + 504) + v155 + 3) = v159;
                          }
                        }
                      }
                    }

                    v161 = v2;
                    v162 = 0x1Fu >> (*(*(v10 + 8) + 392) == 0);
                    v163 = v972;
                    if ((v162 & *(v9 + 24)) != 0 || (*(v9 + 28) & v162) != 0)
                    {
                      goto LABEL_343;
                    }

                    v949 = v43;
                    v164 = *(v983 + 14056);
                    v165 = *(v10 + 24);
                    if (v165[824])
                    {
                      if (*(*(v10 + 8) + 392))
                      {
                        v166 = 0;
                      }

                      else
                      {
                        v166 = 3;
                      }

                      if (v166 == v2)
                      {
                        v167 = *(v985 + 6);
                        v931 = (v983 + 14060);
                        LODWORD(v990) = *(v983 + 14060);
                        v168 = v164;
                        if (v167)
                        {
                          goto LABEL_333;
                        }
                      }

                      else
                      {
                        v931 = (v983 + 14060);
                        LODWORD(v990) = *(v983 + 14060);
                      }

                      v924 = v164;
                      v963 = v10;
                      v169 = sub_2775840FC(v983 + 13824, (v983 + 5296), 3, v28, *&v5, v6, v7, v8);
                      if (v169 == 3)
                      {
                        v175 = 0;
                        v176 = -3;
                        do
                        {
                          sub_2775845E0();
                          v175 = v177 | (2 * v175);
                          v222 = __CFADD__(v176++, 1);
                        }

                        while (!v222);
                        v178 = 0;
                        v222 = __CFADD__(v175, 1);
                        v179 = v175 + 1;
                        if (!v222)
                        {
                          v180 = v179;
                          do
                          {
                            --v180;
                            sub_2775845E0();
                            v178 = v181 | (2 * v178);
                          }

                          while (v180);
                        }

                        v169 = (1 << v179) + v178 + 1;
                        v27 = v955;
                      }

                      if (v169)
                      {
                        v182 = v983;
                        sub_2775845E0();
                        if (v183)
                        {
                          v184 = -v169;
                        }

                        else
                        {
                          v184 = v169;
                        }

                        v10 = v963;
                        v165 = *(v963 + 24);
                        v185 = v184 << v165[825];
                      }

                      else
                      {
                        v185 = 0;
                        v10 = v963;
                        v165 = *(v963 + 24);
                        v182 = v983;
                      }

                      v186 = *(v182 + 14056) + v185;
                      if (v186 >= 255)
                      {
                        v186 = 255;
                      }

                      if (v186 <= 1)
                      {
                        v168 = 1;
                      }

                      else
                      {
                        v168 = v186;
                      }

                      *(v182 + 14056) = v168;
                      if (v165[826])
                      {
                        v928 = v58;
                        v934 = v9;
                        if (v165[828])
                        {
                          if (*(v10 + 2168))
                          {
                            v187 = 4;
                          }

                          else
                          {
                            v187 = 2;
                          }
                        }

                        else
                        {
                          v187 = 1;
                        }

                        v188 = 0;
                        v189 = v983 + 14060;
                        do
                        {
                          v190 = sub_2775840FC(v983 + 13824, (v983 + 5304 + 8 * (v188 + *(*(v10 + 24) + 828))), 3, v170, v171, v172, v173, v174);
                          if (v190 == 3)
                          {
                            v191 = 0;
                            v192 = -3;
                            do
                            {
                              sub_2775845E0();
                              v191 = v193 | (2 * v191);
                              v222 = __CFADD__(v192++, 1);
                            }

                            while (!v222);
                            v194 = 0;
                            v195 = v191 + 1;
                            if (v191 != -1)
                            {
                              v196 = v191 + 1;
                              do
                              {
                                --v196;
                                sub_2775845E0();
                                v194 = v197 | (2 * v194);
                              }

                              while (v196);
                            }

                            v190 = (1 << v195) + v194 + 1;
                            v27 = v955;
                            v15 = v979;
                          }

                          if (v190)
                          {
                            sub_2775845E0();
                            if (v198)
                            {
                              v199 = -v190;
                            }

                            else
                            {
                              v199 = v190;
                            }

                            v10 = v963;
                            v200 = v199 << *(*(v963 + 24) + 827);
                          }

                          else
                          {
                            v200 = 0;
                            v10 = v963;
                          }

                          v201 = v200 + *(v189 + v188);
                          if (v201 >= 63)
                          {
                            v201 = 63;
                          }

                          if (v201 <= -63)
                          {
                            LOBYTE(v201) = -63;
                          }

                          *(v189 + v188++) = v201;
                        }

                        while (v188 != v187);
                        v168 = *(v983 + 14056);
                        v165 = *(v10 + 24);
                        v9 = v934;
                        v163 = v972;
                        v58 = v928;
                      }

                      else
                      {
                        v163 = v972;
                      }

                      v164 = v924;
                    }

                    else
                    {
                      v931 = (v983 + 14060);
                      LODWORD(v990) = *(v983 + 14060);
                      v168 = v164;
                    }

LABEL_333:
                    if (v168 == v165[712])
                    {
                      v202 = v10;
                      v203 = v10 + 3480;
                    }

                    else
                    {
                      v204 = v931;
                      if (v168 == v164)
                      {
LABEL_338:
                        v987[1] = 0;
                        if (*v204)
                        {
                          LODWORD(v2) = v982;
                          v43 = v949;
                          if (*v204 == v990)
                          {
                            goto LABEL_343;
                          }

                          v206 = v163;
                          v207 = v161;
                          v208 = v10;
                          v209 = v983;
                          v210 = v983 + 14064;
                          v211 = v208;
                          sub_2775E2C2C((v983 + 14064), *(v208 + 24), v204);
                          v43 = v949;
                          LODWORD(v2) = v982;
                        }

                        else
                        {
                          v206 = v163;
                          v207 = v161;
                          v211 = v10;
                          v210 = v10 + 4644;
                          v209 = v983;
                          LODWORD(v2) = v982;
                          v43 = v949;
                        }

                        *(v209 + 14576) = v210;
                        v10 = v211;
                        v161 = v207;
                        v163 = v206;
LABEL_343:
                        v212 = v977;
                        if (*v58)
                        {
LABEL_344:
                          *(v985 + 3) = 0;
                          v950 = v985 + 3;
                          goto LABEL_345;
                        }

                        v243 = *(v10 + 24);
                        if (*(v243 + 232))
                        {
                          if (v43)
                          {
                            v258 = v43[6];
                            if ((v258 & 0x80000000) == 0)
                            {
                              *(v985 + 3) = v258 == 0;
                              v950 = v985 + 3;
                              if (!v258)
                              {
                                goto LABEL_588;
                              }

                              goto LABEL_345;
                            }

                            if (v43[8])
                            {
                              goto LABEL_344;
                            }
                          }

                          v415 = v58;
                          v416 = v163;
                          v417 = *(v9 + 656);
                          v418 = v43;
                          if (v953 <= v960)
                          {
                            if (v967 <= v956)
                            {
                              v420 = 0;
                            }

                            else
                            {
                              v420 = 2 * *(v417 + v15 + 224);
                            }
                          }

                          else
                          {
                            v419 = *(v9 + v981 + 256);
                            if (v967 <= v956)
                            {
                              v420 = 2 * v419;
                            }

                            else
                            {
                              v420 = *(v417 + v15 + 224) + v419;
                              if (v420 == 2)
                              {
                                v420 = 3;
                              }
                            }
                          }

                          sub_277584658(v983 + 13824, (v983 + 4 * v420 + 5620));
                          *(v985 + 3) = v447 == 0;
                          v950 = v985 + 3;
                          LODWORD(v2) = v982;
                          v43 = v418;
                          v163 = v416;
                          v58 = v415;
                          if (!v447)
                          {
                            goto LABEL_588;
                          }
                        }

                        else
                        {
                          if (!*(v243 + 419))
                          {
                            *(v985 + 3) = 1;
                            v950 = v985 + 3;
                            goto LABEL_588;
                          }

                          v244 = v58;
                          v245 = v163;
                          v246 = v43;
                          sub_277584658(v983 + 13824, (v983 + 6228));
                          v43 = v246;
                          v163 = v245;
                          v58 = v244;
                          LODWORD(v2) = v982;
                          *(v985 + 3) = v247 == 0;
                          v950 = v985 + 3;
                          if (!v247)
                          {
LABEL_588:
                            if (*(*(v10 + 24) + 232))
                            {
                              v449 = v983 + 32 * byte_2775EF66A[v161];
                              v224 = v981;
                            }

                            else
                            {
                              v448 = v983 + 160 * byte_2775EF680[*(*(v9 + 656) + v15)];
                              v224 = v981;
                              v449 = v448 + 32 * byte_2775EF680[*(v9 + v981 + 32)] + 6240;
                            }

                            sub_27758434C(v983 + 13824, v449, 12);
                            *(v985 + 8) = v450;
                            v456 = v978[2];
                            v457 = v978[3];
                            v458 = v457 + v456;
                            if ((v457 + v456) < 2 || (v459 = v450 - 1, v459 > 7))
                            {
                              v461 = 0;
                            }

                            else
                            {
                              sub_27758428C(v983 + 13824, (v983 + 16 * v459 + 3232), 6);
                              v461 = v460 - 3;
                            }

                            v462 = v982;
                            *(v985 + 13) = v461;
                            v965 = v10;
                            if (v163)
                            {
                              v969 = v456;
                              v463 = v163;
                              v464 = v224;
                              if (*(*(v10 + 24) + *(v985 + 4) + 808))
                              {
                                v465 = v161;
                                v467 = v971 == 1 && v955 == 1;
                              }

                              else
                              {
                                v465 = v161;
                                v467 = (0x3FFB80u >> v982) & 1;
                              }

                              sub_27758434C(v983 + 13824, v983 + 416 * v467 + 32 * *(v985 + 8) + 128, v467 | 0xC);
                              *(v985 + 9) = v468;
                              *(v985 + 14) = 0;
                              if (v468 == 13)
                              {
                                sub_27758428C(v983 + 13824, (v983 + 3216), 7);
                                v470 = 86 * (v469 + 1);
                                v471 = v470 >> 8;
                                v472 = -3 * (v470 >> 8) + v469 + 1;
                                if (v470 >= 0x100)
                                {
                                  if (v471 == 2)
                                  {
                                    v476 = 3;
                                  }

                                  else
                                  {
                                    v476 = 0;
                                  }

                                  sub_27758434C(v983 + 13824, v983 + 32 * (v476 + v472) + 1888, 15);
                                  v473 = ~v477;
                                  if (v471 != 1)
                                  {
                                    v473 = v477 + 1;
                                  }
                                }

                                else
                                {
                                  v473 = 0;
                                }

                                LODWORD(v456) = v969;
                                *(v985 + 15) = v473;
                                v161 = v465;
                                if (v472)
                                {
                                  if (v472 == 2)
                                  {
                                    v478 = 3;
                                  }

                                  else
                                  {
                                    v478 = 0;
                                  }

                                  sub_27758434C(v983 + 13824, v983 + 32 * (v478 + v471) + 1888, 15);
                                  v480 = ~v479;
                                  if (v472 != 1)
                                  {
                                    v480 = v479 + 1;
                                  }

                                  *(v985 + 16) = v480;
                                }

                                else
                                {
                                  *(v985 + 16) = 0;
                                }

                                v10 = v965;
                                v163 = v972;
                                v224 = v981;
                                v462 = v982;
                              }

                              else
                              {
                                v462 = v982;
                                v161 = v465;
                                v224 = v464;
                                v163 = v463;
                                LODWORD(v456) = v969;
                                if (v458 >= 2)
                                {
                                  v474 = v468 - 1;
                                  if (v474 <= 7)
                                  {
                                    sub_27758428C(v983 + 13824, (v983 + 16 * v474 + 3232), 6);
                                    v462 = v982;
                                    *(v985 + 14) = v475 - 3;
                                  }
                                }
                              }
                            }

                            *(v985 + 11) = 0;
                            if (*(*(v10 + 24) + 268))
                            {
                              v497 = v977 <= v984 ? v984 : v977;
                              if (v497 <= 0x10 && (v984 + v977) >= 4)
                              {
                                v498 = v458 - 2;
                                if (!*(v985 + 8))
                                {
                                  v499 = *(*(v9 + 656) + v979 + 592) ? (*(v9 + v224 + 624) != 0) + 1 : *(v9 + v224 + 624) != 0;
                                  sub_277584658(v983 + 13824, (v983 + 12 * v498 + 4 * v499 + 6136));
                                  v462 = v982;
                                  if (v500)
                                  {
                                    (*(v10 + 3384))(v9, v985, 0, v498, v979, v224);
                                    v462 = v982;
                                  }
                                }

                                if (v163)
                                {
                                  if (!*(v985 + 9))
                                  {
                                    sub_277584658(v983 + 13824, (v983 + 4 * (*(v985 + 11) != 0) + 6220));
                                    v462 = v982;
                                    if (v501)
                                    {
                                      (*(v10 + 3392))(v9, v985, v498, v979, v224);
                                      v462 = v982;
                                    }
                                  }
                                }
                              }
                            }

                            if (!*(v985 + 8))
                            {
                              if (*(v985 + 11))
                              {
LABEL_691:
                                v502 = *(v980 + 516);
                                if (v502)
                                {
                                  v503 = v983 + 24 * (v502 & 1);
                                  v504 = *(v503 + 13896);
                                  v505 = v977;
                                  *(v503 + 13896) = v504 + (8 * v977 * v984);
                                }

                                else
                                {
                                  v504 = v9 + 11392;
                                  v505 = v977;
                                }

                                sub_2775BF050(v9, v504, v985, 0, v951, v959, v505, v984);
                                v462 = v982;
                                goto LABEL_695;
                              }

                              if (v456 <= v457)
                              {
                                v511 = v457;
                              }

                              else
                              {
                                v511 = v456;
                              }

                              if (v511 > 3)
                              {
LABEL_695:
                                if (v163 && *(v985 + 12))
                                {
                                  v506 = *(v980 + 516);
                                  if (v506)
                                  {
                                    v507 = v983 + 24 * (v506 & 1);
                                    v508 = *(v507 + 13896);
                                    v509 = v955;
                                    v510 = v971;
                                    *(v507 + 13896) = v508 + (8 * v971 * v955);
                                  }

                                  else
                                  {
                                    v508 = v9 + 13440;
                                    v509 = v955;
                                    v510 = v971;
                                  }

                                  sub_2775BF050(v9, v508, v985, 1u, (v951 + v939) >> v939, (v959 + v952) >> v952, v510, v509);
                                  v462 = v982;
                                }

                                if (*(*(v10 + 24) + *(v985 + 4) + 808))
                                {
                                  *(v985 + 7) = 0;
                                  *(v985 + 10) = 0;
                                  v514 = &unk_277601B98;
                                }

                                else
                                {
                                  v515 = &byte_2775EF68D[4 * v161];
                                  v516 = *v515;
                                  *(v985 + 10) = v516;
                                  *(v985 + 7) = v515[*(v10 + 2168)];
                                  v514 = &unk_277601B98 + 8 * v516;
                                  if (*(*(v10 + 24) + 884) == 2)
                                  {
                                    v517 = v514[5];
                                    if (v514[5])
                                    {
                                      v518 = *(*(v9 + 656) + v979 + 416) >= v514[2];
                                      if (*(v9 + v224 + 448) >= v514[3])
                                      {
                                        ++v518;
                                      }

                                      v519 = (v983 + 24 * (v517 - 1) + 8 * v518);
                                      if (v517 >= 2)
                                      {
                                        v520 = 2;
                                      }

                                      else
                                      {
                                        v520 = v514[5];
                                      }

                                      v521 = sub_2775840FC(v983 + 13824, v519 + 628, v520, v451, v452, v453, v454, v455);
                                      v462 = v982;
                                      if (v521)
                                      {
                                        do
                                        {
                                          v516 = *(&unk_277601B98 + 8 * v516 + 6);
                                          *(v985 + 10) = v516;
                                          --v521;
                                        }

                                        while (v521);
                                        v514 = &unk_277601B98 + 8 * v516;
                                      }
                                    }
                                  }
                                }

                                if (*(v980 + 516) == 1)
                                {
                                  (*(v10 + 3360))(v9, v462, v985);
                                }

                                else
                                {
                                  (*(v10 + 3288))(v9, v462, __b, v985);
                                }

                                v522 = *(v10 + 24);
                                if (!*(v522 + 830) && !*(v522 + 831))
                                {
                                  goto LABEL_835;
                                }

                                v523 = *(v980 + 488);
                                v524 = *(v965 + 4432);
                                v525 = *(v965 + 3432);
                                v526 = (*(v983 + 14576) + (*(v985 + 4) << 6));
                                v527 = *(v9 + 24);
                                v528 = *(v9 + 28);
                                v529 = v527;
                                v530 = v528;
                                v531 = *(v965 + 3440);
                                v532 = *(v965 + 3444);
                                v533 = *(v985 + 7);
                                v534 = *(v965 + 2168);
                                v535 = *(v9 + 656);
                                if (v972)
                                {
                                  v536 = (v535 + v974 + 512);
                                }

                                else
                                {
                                  v536 = 0;
                                }

                                if (v972)
                                {
                                  v537 = (v9 + v973 + 544);
                                }

                                else
                                {
                                  v537 = 0;
                                }

                                v538 = *v978;
                                if (v531 - v527 >= v538)
                                {
                                  v539 = *v978;
                                }

                                else
                                {
                                  v539 = (v531 - v527);
                                }

                                v540 = v978[1];
                                if (v532 - v528 >= v540)
                                {
                                  v541 = v978[1];
                                }

                                else
                                {
                                  v541 = (v532 - v528);
                                }

                                v542 = *(v9 + 24) & 0x1F;
                                v543 = *(v9 + 28) & 0x1F;
                                if (!v539 || !v541)
                                {
LABEL_809:
                                  v224 = v981;
                                  if (v972)
                                  {
                                    v604 = v534 != 3;
                                    v605 = v534 == 3 ? v531 : v531 + 1;
                                    v606 = v605 >> v604;
                                    v607 = v529 >> v604;
                                    v608 = v534 == 3 ? v538 : v538 + 1;
                                    v609 = v606 - v607;
                                    v610 = v608 >> v604;
                                    v611 = v609 >= v610 ? v610 : v609;
                                    v612 = v534 == 1;
                                    v613 = v534 == 1 ? v532 + 1 : v532;
                                    v614 = v613 >> v612;
                                    v615 = v530 >> v612;
                                    v616 = v534 == 1 ? v540 + 1 : v540;
                                    v617 = v614 - v615;
                                    v618 = v616 >> v612;
                                    v619 = v617 >= v618 ? v618 : v617;
                                    if (v611 && v619)
                                    {
                                      v620 = 0;
                                      v621 = 4 * v525 * v615 + 4 * v607 + v524 + 3;
                                      do
                                      {
                                        v622 = v621;
                                        v623 = v611;
                                        do
                                        {
                                          *(v622 - 1) = v526[32];
                                          *v622 = v526[48];
                                          v622 += 4;
                                          --v623;
                                        }

                                        while (v623);
                                        ++v620;
                                        v621 += 4 * v525;
                                      }

                                      while (v620 != v619);
                                      sub_2775E251C((v523 + 768), v543 >> v612, v542 >> (v534 != 3), v611, v619, 0, v533, v536, v537, v534 != 3, 0);
                                    }
                                  }

LABEL_835:
                                  if (*(v985 + 8) == 13)
                                  {
                                    v624 = 0;
                                  }

                                  else
                                  {
                                    v624 = *(v985 + 8);
                                  }

                                  if (v984 > 7)
                                  {
                                    v27 = v955;
                                    v163 = v972;
                                    v212 = v977;
                                    v625 = v954;
                                    if (v984 == 8)
                                    {
                                      v649 = 0;
                                      v650 = 0x101010101010101 * v514[3];
                                      v651 = (v9 + v224);
                                      v651[56] = v650;
                                      v651[60] = v650;
                                      v651[4] = 0x101010101010101 * v624;
                                      v651[78] = 0x101010101010101 * *(v985 + 11);
                                      v651[20] = 0x101010101010101 * v954;
                                      v651[28] = 0;
                                      v651[32] = 0x101010101010101;
                                      v651[24] = 0x101010101010101 * *(v985 + 6);
                                      v10 = v965;
                                      if (v972)
                                      {
                                        v649 = 0x101010101010101 * *(v985 + 12);
                                      }

                                      v651[1028] = v649;
                                      if (*(*(v965 + 24) + 232))
                                      {
                                        v652 = (v9 + v224);
                                        v652[36] = 0;
                                        v652[40] = -1;
                                        v652[44] = -1;
                                        v652[48] = 0x303030303030303;
                                        v652[52] = 0x303030303030303;
                                      }
                                    }

                                    else
                                    {
                                      v10 = v965;
                                      if (v984 == 16)
                                      {
                                        v657 = 0;
                                        v658 = vdupq_n_s64(0x101010101010101 * v514[3]);
                                        v659 = (v9 + v224);
                                        v659[28] = v658;
                                        v659[30] = v658;
                                        v659[2] = vdupq_n_s64(0x101010101010101 * v624);
                                        v659[39] = vdupq_n_s64(0x101010101010101 * *(v985 + 11));
                                        v659[10] = vdupq_n_s64(0x101010101010101 * v954);
                                        v659[14].i64[0] = 0;
                                        v659[14].i64[1] = 0;
                                        v658.i64[0] = 0x101010101010101;
                                        v658.i64[1] = 0x101010101010101;
                                        v659[16] = v658;
                                        v659[12] = vdupq_n_s64(0x101010101010101 * *(v985 + 6));
                                        if (v972)
                                        {
                                          v657 = 0x101010101010101 * *(v985 + 12);
                                        }

                                        v659[514] = vdupq_n_s64(v657);
                                        if (*(*(v965 + 24) + 232))
                                        {
                                          v660 = v9 + v224;
                                          *(v660 + 288) = 0;
                                          *(v660 + 296) = 0;
                                          *&v661 = -1;
                                          *(&v661 + 1) = -1;
                                          *(v660 + 320) = v661;
                                          *(v660 + 352) = v661;
                                          *&v661 = 0x303030303030303;
                                          *(&v661 + 1) = 0x303030303030303;
                                          *(v660 + 384) = v661;
                                          *(v660 + 416) = v661;
                                        }
                                      }

                                      else if (v984 == 32)
                                      {
                                        v630 = v9 + 32;
                                        v631 = v9 + 448;
                                        v632 = vdupq_n_s64(0x101010101010101 * v514[3]);
                                        *(v631 + v224) = v632;
                                        v633 = v224 + 16;
                                        *(v631 + v633) = v632;
                                        v634 = v9 + 480;
                                        *(v634 + v224) = v632;
                                        *(v634 + v633) = v632;
                                        v635 = vdupq_n_s64(0x101010101010101 * v624);
                                        *(v630 + v224) = v635;
                                        *(v630 + v633) = v635;
                                        v636 = v9 + 624;
                                        v637 = vdupq_n_s64(0x101010101010101 * *(v985 + 11));
                                        *(v636 + v224) = v637;
                                        *(v636 + v633) = v637;
                                        v638 = v9 + 160;
                                        v639 = vdupq_n_s64(0x101010101010101 * v954);
                                        *(v638 + v224) = v639;
                                        *(v638 + v633) = v639;
                                        v640 = v9 + 224;
                                        *(v640 + v224) = 0u;
                                        *(v640 + v633) = 0u;
                                        v641 = v9 + 256;
                                        v639.i64[0] = 0x101010101010101;
                                        v639.i64[1] = 0x101010101010101;
                                        *(v641 + v224) = v639;
                                        *(v641 + v633) = v639;
                                        v642 = v9 + 192;
                                        v643 = vdupq_n_s64(0x101010101010101 * *(v985 + 6));
                                        *(v642 + v224) = v643;
                                        *(v642 + v633) = v643;
                                        v644 = v972 ? 0x101010101010101 * *(v985 + 12) : 0;
                                        v662 = v9 + 8224;
                                        v663 = vdupq_n_s64(v644);
                                        *(v662 + v224) = v663;
                                        *(v662 + v633) = v663;
                                        if (*(*(v965 + 24) + 232))
                                        {
                                          v664 = v9 + 288;
                                          *(v664 + v224) = 0u;
                                          *(v664 + v633) = 0u;
                                          v665 = v9 + 320;
                                          *&v666 = -1;
                                          *(&v666 + 1) = -1;
                                          *(v665 + v224) = v666;
                                          *(v665 + v633) = v666;
                                          v667 = v9 + 352;
                                          *(v667 + v224) = v666;
                                          *(v667 + v633) = v666;
                                          v668 = v9 + 384;
                                          *&v666 = 0x303030303030303;
                                          *(&v666 + 1) = 0x303030303030303;
                                          *(v668 + v224) = v666;
                                          *(v668 + v633) = v666;
                                          v669 = v9 + 416;
                                          *(v669 + v224) = v666;
                                          *(v669 + v633) = v666;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v27 = v955;
                                    v163 = v972;
                                    v212 = v977;
                                    v625 = v954;
                                    if (v984 == 1)
                                    {
                                      v645 = 0;
                                      v646 = v514[3];
                                      v647 = (v9 + v224);
                                      v647[448] = v646;
                                      v647[480] = v646;
                                      v647[32] = v624;
                                      v647[624] = *(v985 + 11);
                                      v647[160] = v954;
                                      v647[224] = 0;
                                      v647[256] = 1;
                                      v647[192] = *(v985 + 6);
                                      v10 = v965;
                                      if (v972)
                                      {
                                        v645 = *(v985 + 12);
                                      }

                                      v647[8224] = v645;
                                      if (*(*(v965 + 24) + 232))
                                      {
                                        v648 = (v9 + v224);
                                        v648[288] = 0;
                                        v648[320] = -1;
                                        v648[352] = -1;
                                        v648[384] = 3;
                                        v648[416] = 3;
                                      }
                                    }

                                    else
                                    {
                                      v10 = v965;
                                      if (v984 == 2)
                                      {
                                        v653 = 0;
                                        v654 = v514[3] | (v514[3] << 8);
                                        v655 = (v9 + v224);
                                        v655[224] = v654;
                                        v655[240] = v654;
                                        v655[16] = v624 | (v624 << 8);
                                        v655[312] = *(v985 + 11) | (*(v985 + 11) << 8);
                                        v655[80] = 257 * v954;
                                        v655[112] = 0;
                                        v655[128] = 257;
                                        v655[96] = *(v985 + 6) | (*(v985 + 6) << 8);
                                        if (v972)
                                        {
                                          v653 = *(v985 + 12) | (*(v985 + 12) << 8);
                                        }

                                        v655[4112] = v653;
                                        if (*(*(v965 + 24) + 232))
                                        {
                                          v656 = (v9 + v224);
                                          v656[144] = 0;
                                          v656[160] = -1;
                                          v656[176] = -1;
                                          v656[192] = 771;
                                          v656[208] = 771;
                                        }
                                      }

                                      else if (v984 == 4)
                                      {
                                        v626 = 0;
                                        v627 = 16843009 * v514[3];
                                        v628 = (v9 + v224);
                                        v628[112] = v627;
                                        v628[120] = v627;
                                        v628[8] = 16843009 * v624;
                                        v628[156] = 16843009 * *(v985 + 11);
                                        v628[40] = 16843009 * v954;
                                        v628[56] = 0;
                                        v628[64] = 16843009;
                                        v628[48] = 16843009 * *(v985 + 6);
                                        if (v972)
                                        {
                                          v626 = 16843009 * *(v985 + 12);
                                        }

                                        v628[2056] = v626;
                                        if (*(*(v965 + 24) + 232))
                                        {
                                          v629 = (v9 + v224);
                                          v629[72] = 0;
                                          v629[80] = -1;
                                          v629[88] = -1;
                                          v629[96] = 50529027;
                                          v629[104] = 50529027;
                                        }
                                      }
                                    }
                                  }

                                  if (v212 > 7)
                                  {
                                    switch(v212)
                                    {
                                      case 8:
                                        v685 = 0;
                                        v686 = 0x101010101010101 * v514[2];
                                        *(*(v9 + 656) + v979 + 416) = v686;
                                        *(*(v9 + 656) + v979 + 448) = v686;
                                        *(*(v9 + 656) + v979) = 0x101010101010101 * v624;
                                        *(*(v9 + 656) + v979 + 592) = 0x101010101010101 * *(v985 + 11);
                                        *(*(v9 + 656) + v979 + 128) = 0x101010101010101 * v625;
                                        *(*(v9 + 656) + v979 + 192) = 0;
                                        *(*(v9 + 656) + v979 + 224) = 0x101010101010101;
                                        *(*(v9 + 656) + v979 + 160) = 0x101010101010101 * *(v985 + 6);
                                        if (v163)
                                        {
                                          v685 = 0x101010101010101 * *(v985 + 12);
                                        }

                                        *(v9 + v979 + 0x2000) = v685;
                                        if (*(*(v10 + 24) + 232))
                                        {
                                          *(*(v9 + 656) + v979 + 256) = 0;
                                          *(*(v9 + 656) + v979 + 288) = -1;
                                          *(*(v9 + 656) + v979 + 320) = -1;
                                          *(*(v9 + 656) + v979 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v979 + 384) = 0x303030303030303;
                                        }

                                        break;
                                      case 0x10:
                                        v689 = 0;
                                        v690 = 0x101010101010101 * v514[2];
                                        *(*(v9 + 656) + v979 + 416) = v690;
                                        v691 = v979 + 8;
                                        *(*(v9 + 656) + v691 + 416) = v690;
                                        *(*(v9 + 656) + v979 + 448) = v690;
                                        *(*(v9 + 656) + v691 + 448) = v690;
                                        v692 = 0x101010101010101 * v624;
                                        *(*(v9 + 656) + v979) = v692;
                                        *(*(v9 + 656) + v691) = v692;
                                        v693 = 0x101010101010101 * *(v985 + 11);
                                        *(*(v9 + 656) + v979 + 592) = v693;
                                        *(*(v9 + 656) + v691 + 592) = v693;
                                        v694 = 0x101010101010101 * v625;
                                        *(*(v9 + 656) + v979 + 128) = v694;
                                        *(*(v9 + 656) + v691 + 128) = v694;
                                        *(*(v9 + 656) + v979 + 192) = 0;
                                        *(*(v9 + 656) + v691 + 192) = 0;
                                        *(*(v9 + 656) + v979 + 224) = 0x101010101010101;
                                        *(*(v9 + 656) + v691 + 224) = 0x101010101010101;
                                        v695 = 0x101010101010101 * *(v985 + 6);
                                        *(*(v9 + 656) + v979 + 160) = v695;
                                        *(*(v9 + 656) + v691 + 160) = v695;
                                        if (v163)
                                        {
                                          v689 = 0x101010101010101 * *(v985 + 12);
                                        }

                                        *(v9 + v979 + 0x2000) = vdupq_n_s64(v689);
                                        if (*(*(v10 + 24) + 232))
                                        {
                                          *(*(v9 + 656) + v979 + 256) = 0;
                                          *(*(v9 + 656) + v691 + 256) = 0;
                                          *(*(v9 + 656) + v979 + 288) = -1;
                                          *(*(v9 + 656) + v691 + 288) = -1;
                                          *(*(v9 + 656) + v979 + 320) = -1;
                                          *(*(v9 + 656) + v691 + 320) = -1;
                                          *(*(v9 + 656) + v979 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v691 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v979 + 384) = 0x303030303030303;
                                          *(*(v9 + 656) + v691 + 384) = 0x303030303030303;
                                        }

                                        break;
                                      case 0x20:
                                        v672 = 0;
                                        v673 = 0x101010101010101 * v514[2];
                                        *(*(v9 + 656) + v979 + 416) = v673;
                                        v674 = v979 + 8;
                                        *(*(v9 + 656) + v674 + 416) = v673;
                                        v675 = v979 + 16;
                                        *(*(v9 + 656) + v675 + 416) = v673;
                                        v676 = v979 + 24;
                                        *(*(v9 + 656) + v676 + 416) = v673;
                                        *(*(v9 + 656) + v979 + 448) = v673;
                                        *(*(v9 + 656) + v674 + 448) = v673;
                                        *(*(v9 + 656) + v675 + 448) = v673;
                                        *(*(v9 + 656) + v676 + 448) = v673;
                                        v677 = 0x101010101010101 * v624;
                                        *(*(v9 + 656) + v979) = v677;
                                        *(*(v9 + 656) + v674) = v677;
                                        *(*(v9 + 656) + v675) = v677;
                                        *(*(v9 + 656) + v676) = v677;
                                        v678 = 0x101010101010101 * *(v985 + 11);
                                        *(*(v9 + 656) + v979 + 592) = v678;
                                        *(*(v9 + 656) + v674 + 592) = v678;
                                        *(*(v9 + 656) + v675 + 592) = v678;
                                        *(*(v9 + 656) + v676 + 592) = v678;
                                        v679 = 0x101010101010101 * v625;
                                        *(*(v9 + 656) + v979 + 128) = v679;
                                        *(*(v9 + 656) + v674 + 128) = v679;
                                        *(*(v9 + 656) + v675 + 128) = v679;
                                        *(*(v9 + 656) + v676 + 128) = v679;
                                        *(*(v9 + 656) + v979 + 192) = 0;
                                        *(*(v9 + 656) + v674 + 192) = 0;
                                        *(*(v9 + 656) + v675 + 192) = 0;
                                        *(*(v9 + 656) + v676 + 192) = 0;
                                        *(*(v9 + 656) + v979 + 224) = 0x101010101010101;
                                        *(*(v9 + 656) + v674 + 224) = 0x101010101010101;
                                        *(*(v9 + 656) + v675 + 224) = 0x101010101010101;
                                        *(*(v9 + 656) + v676 + 224) = 0x101010101010101;
                                        v680 = 0x101010101010101 * *(v985 + 6);
                                        *(*(v9 + 656) + v979 + 160) = v680;
                                        *(*(v9 + 656) + v674 + 160) = v680;
                                        *(*(v9 + 656) + v675 + 160) = v680;
                                        *(*(v9 + 656) + v676 + 160) = v680;
                                        if (v163)
                                        {
                                          v672 = 0x101010101010101 * *(v985 + 12);
                                        }

                                        v681 = v9 + 0x2000;
                                        v682 = vdupq_n_s64(v672);
                                        *(v681 + v979) = v682;
                                        *(v681 + v675) = v682;
                                        if (*(*(v10 + 24) + 232))
                                        {
                                          *(*(v9 + 656) + v979 + 256) = 0;
                                          *(*(v9 + 656) + v674 + 256) = 0;
                                          *(*(v9 + 656) + v675 + 256) = 0;
                                          *(*(v9 + 656) + v676 + 256) = 0;
                                          *(*(v9 + 656) + v979 + 288) = -1;
                                          *(*(v9 + 656) + v674 + 288) = -1;
                                          *(*(v9 + 656) + v675 + 288) = -1;
                                          *(*(v9 + 656) + v676 + 288) = -1;
                                          *(*(v9 + 656) + v979 + 320) = -1;
                                          *(*(v9 + 656) + v674 + 320) = -1;
                                          *(*(v9 + 656) + v675 + 320) = -1;
                                          *(*(v9 + 656) + v676 + 320) = -1;
                                          *(*(v9 + 656) + v979 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v674 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v675 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v676 + 352) = 0x303030303030303;
                                          *(*(v9 + 656) + v979 + 384) = 0x303030303030303;
                                          *(*(v9 + 656) + v674 + 384) = 0x303030303030303;
                                          *(*(v9 + 656) + v675 + 384) = 0x303030303030303;
                                          *(*(v9 + 656) + v676 + 384) = 0x303030303030303;
                                        }

                                        break;
                                    }
                                  }

                                  else
                                  {
                                    switch(v212)
                                    {
                                      case 1:
                                        v683 = 0;
                                        v684 = v514[2];
                                        *(*(v9 + 656) + v979 + 416) = v684;
                                        *(*(v9 + 656) + v979 + 448) = v684;
                                        *(*(v9 + 656) + v979) = v624;
                                        *(*(v9 + 656) + v979 + 592) = *(v985 + 11);
                                        *(*(v9 + 656) + v979 + 128) = v625;
                                        *(*(v9 + 656) + v979 + 192) = 0;
                                        *(*(v9 + 656) + v979 + 224) = 1;
                                        *(*(v9 + 656) + v979 + 160) = *(v985 + 6);
                                        if (v163)
                                        {
                                          v683 = *(v985 + 12);
                                        }

                                        *(v9 + v979 + 0x2000) = v683;
                                        if (*(*(v10 + 24) + 232))
                                        {
                                          *(*(v9 + 656) + v979 + 256) = 0;
                                          *(*(v9 + 656) + v979 + 288) = -1;
                                          *(*(v9 + 656) + v979 + 320) = -1;
                                          *(*(v9 + 656) + v979 + 352) = 3;
                                          *(*(v9 + 656) + v979 + 384) = 3;
                                        }

                                        break;
                                      case 2:
                                        v687 = 0;
                                        v688 = v514[2] | (v514[2] << 8);
                                        *(*(v9 + 656) + v979 + 416) = v688;
                                        *(*(v9 + 656) + v979 + 448) = v688;
                                        *(*(v9 + 656) + v979) = v624 | (v624 << 8);
                                        *(*(v9 + 656) + v979 + 592) = *(v985 + 11) | (*(v985 + 11) << 8);
                                        *(*(v9 + 656) + v979 + 128) = 257 * v625;
                                        *(*(v9 + 656) + v979 + 192) = 0;
                                        *(*(v9 + 656) + v979 + 224) = 257;
                                        *(*(v9 + 656) + v979 + 160) = *(v985 + 6) | (*(v985 + 6) << 8);
                                        if (v163)
                                        {
                                          v687 = *(v985 + 12) | (*(v985 + 12) << 8);
                                        }

                                        *(v9 + v979 + 0x2000) = v687;
                                        if (*(*(v10 + 24) + 232))
                                        {
                                          *(*(v9 + 656) + v979 + 256) = 0;
                                          *(*(v9 + 656) + v979 + 288) = -1;
                                          *(*(v9 + 656) + v979 + 320) = -1;
                                          *(*(v9 + 656) + v979 + 352) = 771;
                                          *(*(v9 + 656) + v979 + 384) = 771;
                                        }

                                        break;
                                      case 4:
                                        v670 = 0;
                                        v671 = 16843009 * v514[2];
                                        *(*(v9 + 656) + v979 + 416) = v671;
                                        *(*(v9 + 656) + v979 + 448) = v671;
                                        *(*(v9 + 656) + v979) = 16843009 * v624;
                                        *(*(v9 + 656) + v979 + 592) = 16843009 * *(v985 + 11);
                                        *(*(v9 + 656) + v979 + 128) = 16843009 * v625;
                                        *(*(v9 + 656) + v979 + 192) = 0;
                                        *(*(v9 + 656) + v979 + 224) = 16843009;
                                        *(*(v9 + 656) + v979 + 160) = 16843009 * *(v985 + 6);
                                        if (v163)
                                        {
                                          v670 = 16843009 * *(v985 + 12);
                                        }

                                        *(v9 + v979 + 0x2000) = v670;
                                        if (*(*(v10 + 24) + 232))
                                        {
                                          *(*(v9 + 656) + v979 + 256) = 0;
                                          *(*(v9 + 656) + v979 + 288) = -1;
                                          *(*(v9 + 656) + v979 + 320) = -1;
                                          *(*(v9 + 656) + v979 + 352) = 50529027;
                                          *(*(v9 + 656) + v979 + 384) = 50529027;
                                        }

                                        break;
                                    }
                                  }

                                  if (*(v985 + 11))
                                  {
                                    (*(v10 + 3368))(v9, v979, v224, v212, v984);
                                  }

                                  v696 = v982;
                                  if (v163)
                                  {
                                    if (v27 > 7)
                                    {
                                      switch(v27)
                                      {
                                        case 8:
                                          *(v9 + v973 + 592) = 0x101010101010101 * *(v985 + 9);
                                          break;
                                        case 16:
                                          *(v9 + v973 + 592) = vdupq_n_s64(0x101010101010101 * *(v985 + 9));
                                          break;
                                        case 32:
                                          v697 = vdupq_n_s64(0x101010101010101 * *(v985 + 9));
                                          *(v9 + 592 + v973) = v697;
                                          *(v9 + 592 + v973 + 16) = v697;
                                          break;
                                      }
                                    }

                                    else
                                    {
                                      switch(v27)
                                      {
                                        case 1:
                                          *(v9 + v973 + 592) = *(v985 + 9);
                                          break;
                                        case 2:
                                          *(v9 + v973 + 592) = *(v985 + 9) | (*(v985 + 9) << 8);
                                          break;
                                        case 4:
                                          *(v9 + v973 + 592) = 16843009 * *(v985 + 9);
                                          break;
                                      }
                                    }

                                    if (v971 > 7)
                                    {
                                      switch(v971)
                                      {
                                        case 8:
                                          *(*(v9 + 656) + v974 + 560) = 0x101010101010101 * *(v985 + 9);
                                          break;
                                        case 16:
                                          v699 = 0x101010101010101 * *(v985 + 9);
                                          *(*(v9 + 656) + v974 + 560) = v699;
                                          *(*(v9 + 656) + v974 + 568) = v699;
                                          break;
                                        case 32:
                                          v698 = 0x101010101010101 * *(v985 + 9);
                                          *(*(v9 + 656) + v974 + 560) = v698;
                                          *(*(v9 + 656) + v974 + 568) = v698;
                                          *(*(v9 + 656) + v974 + 576) = v698;
                                          *(*(v9 + 656) + v974 + 584) = v698;
                                          break;
                                      }
                                    }

                                    else
                                    {
                                      switch(v971)
                                      {
                                        case 1:
                                          *(*(v9 + 656) + v974 + 560) = *(v985 + 9);
                                          break;
                                        case 2:
                                          *(*(v9 + 656) + v974 + 560) = *(v985 + 9) | (*(v985 + 9) << 8);
                                          break;
                                        case 4:
                                          *(*(v9 + 656) + v974 + 560) = 16843009 * *(v985 + 9);
                                          break;
                                      }
                                    }

                                    if (*(v985 + 12))
                                    {
                                      (*(v10 + 3376))(v9, v979, v224, v212, v984);
                                      v696 = v982;
                                    }
                                  }

                                  v700 = *(v10 + 24);
                                  if ((*(v700 + 232) & 1) != 0 || *(v700 + 419))
                                  {
                                    v701 = *(v10 + 3256);
                                    v990 = 2147516416;
                                    LOWORD(v991) = -256;
                                    HIWORD(v991) = v696;
                                    (*(v701 + 63016))(v9 + 8 * (*(v9 + 28) & 0x1FLL) + 712, &v990, *(v9 + 24), v212, v984);
                                  }

LABEL_935:
                                  v702 = *(v10 + 24);
                                  if (*(v702 + 722) && *(v702 + 723))
                                  {
                                    v703 = (*(v10 + 2816) + *(v10 + 3432) * *(v9 + 28) + *(v9 + 24));
                                    if (v212 > 7)
                                    {
                                      switch(v212)
                                      {
                                        case 8:
                                          if (!v984)
                                          {
                                            goto LABEL_975;
                                          }

                                          v709 = v984;
                                          do
                                          {
                                            *v703 = 0x101010101010101 * *(v985 + 4);
                                            v703 = (v703 + *(v10 + 3432));
                                            --v709;
                                          }

                                          while (v709);
                                          break;
                                        case 0x10:
                                          if (!v984)
                                          {
                                            goto LABEL_975;
                                          }

                                          v711 = v984;
                                          do
                                          {
                                            v712 = 0x101010101010101 * *(v985 + 4);
                                            *v703 = v712;
                                            v703[1] = v712;
                                            v703 = (v703 + *(v10 + 3432));
                                            --v711;
                                          }

                                          while (v711);
                                          break;
                                        case 0x20:
                                          if (!v984)
                                          {
                                            goto LABEL_975;
                                          }

                                          v705 = v984;
                                          do
                                          {
                                            v706 = 0x101010101010101 * *(v985 + 4);
                                            *v703 = v706;
                                            v703[1] = v706;
                                            v703[2] = v706;
                                            v703[3] = v706;
                                            v703 = (v703 + *(v10 + 3432));
                                            --v705;
                                          }

                                          while (v705);
                                          break;
                                      }
                                    }

                                    else
                                    {
                                      switch(v212)
                                      {
                                        case 1:
                                          if (!v984)
                                          {
                                            goto LABEL_975;
                                          }

                                          v707 = *(v985 + 4);
                                          v708 = v984;
                                          do
                                          {
                                            *v703 = v707;
                                            v703 = (v703 + *(v10 + 3432));
                                            --v708;
                                          }

                                          while (v708);
                                          break;
                                        case 2:
                                          if (!v984)
                                          {
                                            goto LABEL_975;
                                          }

                                          v710 = v984;
                                          do
                                          {
                                            *v703 = *(v985 + 4) | (*(v985 + 4) << 8);
                                            v703 = (v703 + *(v10 + 3432));
                                            --v710;
                                          }

                                          while (v710);
                                          break;
                                        case 4:
                                          if (!v984)
                                          {
                                            goto LABEL_975;
                                          }

                                          v704 = v984;
                                          do
                                          {
                                            *v703 = 16843009 * *(v985 + 4);
                                            v703 = (v703 + *(v10 + 3432));
                                            --v704;
                                          }

                                          while (v704);
                                          break;
                                      }
                                    }
                                  }

                                  if (*(v985 + 6))
                                  {
                                    v713 = 1;
                                  }

                                  else
                                  {
                                    v713 = v984 == 0;
                                  }

                                  if (!v713)
                                  {
                                    v714 = 0;
                                    v715 = 0xFFFFFFFF >> -v212 << (v953 & 0xF);
                                    v716 = *(v980 + 488);
                                    do
                                    {
                                      v718 = ((4 * (v224 >> 1)) | (2 * ((v953 >> 4) & 1))) + v716 + 1284;
                                      *(v718 + 2 * v714) |= v715;
                                      if (v212 == 32)
                                      {
                                        v717 = v716 + 4 * (v224 >> 1) + 1286;
                                        *(v717 + 2 * v714) |= v715;
                                      }

                                      v714 += 2;
                                    }

                                    while (v714 < v984);
                                  }

LABEL_975:
                                  if (*(v980 + 516) != 1)
                                  {
                                    return 0;
                                  }

                                  if (*v950)
                                  {
                                    return 0;
                                  }

                                  v719 = *(v10 + 24);
                                  if ((*(v719 + 232) & 1) == 0)
                                  {
                                    return 0;
                                  }

                                  v720 = *(v9 + 28);
                                  v721 = *(v983 + 13944) + 56 * ((v720 - *(v983 + 13872)) >> *(v10 + 3468));
                                  if (*(v985 + 20))
                                  {
                                    v722 = 0;
                                    v723 = v985 + 8;
                                    v724 = v10 + 3056;
                                    v725 = v985 + 24;
                                    v966 = v10;
                                    v726 = v10 + 3128;
                                    v727 = 1;
                                    do
                                    {
                                      v728 = v727;
                                      v729 = v725[v722];
                                      if (*(v985 + 21) == 6 && *(v724 + v729))
                                      {
                                        sub_2775C1280(v9, (v721 + 8 * v729), v978, (*(v966 + 24) + 36 * v725[v722] + 896));
                                      }

                                      else
                                      {
                                        sub_2775C1304((v721 + 8 * v729), *(v9 + 28), v984, *&v723[4 * v722], 0, (v726 + 16 * v729 + 8));
                                      }

                                      v727 = 0;
                                      v722 = 1;
                                    }

                                    while ((v728 & 1) != 0);
                                    if (v972)
                                    {
                                      v730 = 0;
                                      if (v971 >= v955)
                                      {
                                        v731 = v955;
                                      }

                                      else
                                      {
                                        v731 = v971;
                                      }

                                      v732 = 1;
                                      do
                                      {
                                        v733 = v732;
                                        v734 = v725[v730];
                                        v735 = *(v985 + 21) == 6 && v731 >= 2;
                                        v736 = v721 + 8 * v734;
                                        if (v735 && *(v724 + v734))
                                        {
                                          sub_2775C1650(v9, (v736 + 4), v978, (*(v966 + 24) + 36 * v725[v730] + 896));
                                        }

                                        else
                                        {
                                          sub_2775C1304((v736 + 4), *(v9 + 28), v984, *&v723[4 * v730], v952, (v726 + 16 * v734 + 8));
                                        }

                                        v732 = 0;
                                        result = 0;
                                        v730 = 1;
                                      }

                                      while ((v733 & 1) != 0);
                                      return result;
                                    }

                                    return 0;
                                  }

                                  v737 = v984;
                                  if (v212 < v984)
                                  {
                                    v737 = v212;
                                  }

                                  if (v737 >= 2)
                                  {
                                    if (*(v985 + 21) == 2)
                                    {
                                      v738 = *(v985 + 24);
                                      if (*(v10 + v738 + 3056))
                                      {
                                        v739 = (v721 + 8 * v738);
                                        if (*(v985 + 22) != 2)
                                        {
                                          v740 = (v719 + 36 * *(v985 + 24) + 896);
LABEL_1031:
                                          sub_2775C1280(v9, v739, v978, v740);
                                          goto LABEL_1034;
                                        }

LABEL_1030:
                                        v740 = (v9 + 258496);
                                        goto LABEL_1031;
                                      }
                                    }

                                    if (*(v985 + 22) == 2 && *(v980 + 448) >= 2u)
                                    {
                                      v739 = (v721 + 8 * *(v985 + 24));
                                      goto LABEL_1030;
                                    }
                                  }

                                  sub_2775C1304((v721 + 8 * *(v985 + 24)), v720, v984, *(v985 + 4), 0, (v10 + 16 * *(v985 + 24) + 3136));
                                  if (*(v985 + 22) == 1)
                                  {
                                    sub_2775C13AC(v9, v721, 0, v978, v951, v959);
                                  }

LABEL_1034:
                                  if (!v163)
                                  {
                                    return 0;
                                  }

                                  if (v212 != v939 && v984 != v952)
                                  {
LABEL_1037:
                                    v749 = v971;
                                    if (v971 >= v27)
                                    {
                                      v749 = v27;
                                    }

                                    if (v749 >= 2)
                                    {
                                      if (*(v985 + 21) == 2)
                                      {
                                        v750 = *(v985 + 24);
                                        if (*(v10 + v750 + 3056))
                                        {
                                          v751 = (v721 + 8 * v750 + 4);
                                          if (*(v985 + 22) != 2)
                                          {
                                            v752 = (*(v10 + 24) + 36 * *(v985 + 24) + 896);
LABEL_1183:
                                            sub_2775C1650(v9, v751, v978, v752);
                                            return 0;
                                          }

LABEL_1182:
                                          v752 = (v9 + 258496);
                                          goto LABEL_1183;
                                        }
                                      }

                                      if (*(v985 + 22) == 2 && *(v980 + 448) >= 2u)
                                      {
                                        v751 = (v721 + 8 * *(v985 + 24) + 4);
                                        goto LABEL_1182;
                                      }
                                    }

                                    sub_2775C1304((v721 + 8 * *(v985 + 24) + 4), *(v9 + 28) & ~v952, v984 << (v984 == v952), *(v985 + 4), v952, (v10 + 16 * *(v985 + 24) + 3136));
                                    if (*(v985 + 22) == 1)
                                    {
                                      sub_2775C13AC(v9, v721, 1u, v978, v951, v959);
                                    }

                                    return 0;
                                  }

                                  v753 = *(v9 + 28);
                                  v754 = v212;
                                  v755 = (v9 + 8 * (v753 & 0x1F) + 712);
                                  if (v754 == 1)
                                  {
                                    v756 = *v755;
                                    v757 = *(v9 + 24);
                                    v758 = *(*v755 + 12 * v757 - 4);
                                    if (v984 == v952)
                                    {
                                      v759 = *(v9 + 8 * (v753 & 0x1F) + 704);
                                      v760 = v759 + 12 * v757;
                                      v761 = *(v760 - 4);
                                      v763 = v761 < 1;
                                      v762 = v761 - 1;
                                      if (v763)
                                      {
                                        goto LABEL_1037;
                                      }

                                      v763 = *(v759 + 12 * v757 + 8) < 1 || v758 < 1;
                                      if (v763)
                                      {
                                        goto LABEL_1037;
                                      }

                                      sub_2775C1304((v721 + 8 * v762 + 4), v753 - 1, v952, *(v760 - 12), v952, (v10 + 16 * v762 + 3136));
                                      v756 = *v755;
                                      v753 = *(v9 + 28);
                                      v757 = *(v9 + 24);
                                      LOBYTE(v758) = *(*v755 + 12 * v757 - 4);
                                    }

                                    else if (v758 < 1)
                                    {
                                      goto LABEL_1037;
                                    }

                                    v909 = v952;
                                    sub_2775C1304((v721 + 8 * (v758 - 1) + 4), v753, v984, *(v756 + 12 * v757 - 12), v952, (v10 + 16 * (v758 - 1) + 3136));
                                    v753 = *(v9 + 28);
                                    if (v984 != v952)
                                    {
LABEL_1261:
                                      sub_2775C1304((v721 + 8 * *(v985 + 24) + 4), v753, v984, *(v985 + 4), v909, (v10 + 16 * *(v985 + 24) + 3136));
                                      return 0;
                                    }

                                    v867 = *(v755 - 1);
                                    v868 = *(v9 + 24);
                                  }

                                  else
                                  {
                                    if (v984 != v952)
                                    {
                                      v909 = v952;
                                      goto LABEL_1261;
                                    }

                                    v867 = *(v9 + 8 * (v753 & 0x1F) + 704);
                                    v868 = *(v9 + 24);
                                    if (*(v867 + 12 * v868 + 8) <= 0)
                                    {
                                      goto LABEL_1037;
                                    }
                                  }

                                  v909 = v952;
                                  sub_2775C1304((v721 + 8 * (*(v867 + 12 * v868 + 8) - 1) + 4), v753 - 1, v952, *(v867 + 12 * v868), v952, (v10 + 16 * (*(v867 + 12 * v868 + 8) - 1) + 3136));
                                  v753 = *(v9 + 28);
                                  goto LABEL_1261;
                                }

                                v544 = 0;
                                v545 = *(v985 + 10);
                                v546 = (v535 + v979 + 480);
                                v547 = 4 * v525 * v530 + 4 * v529 + v524 + 1;
                                do
                                {
                                  v548 = v547;
                                  v549 = v539;
                                  do
                                  {
                                    *(v548 - 1) = *v526;
                                    *v548 = v526[16];
                                    v548 += 4;
                                    --v549;
                                  }

                                  while (v549);
                                  ++v544;
                                  v547 += 4 * v525;
                                }

                                while (v544 != v541);
                                __dstb = v531;
                                v945 = v534;
                                v948 = v529;
                                v958 = v532;
                                v962 = v524;
                                v970 = v514;
                                v550 = &unk_277601B98 + 8 * v545;
                                v551 = v550[3];
                                if (v550[2] >= 2u)
                                {
                                  v552 = 2;
                                }

                                else
                                {
                                  v552 = v550[2];
                                }

                                v553 = (v9 + v981 + 512);
                                v554 = v553;
                                v555 = v541;
                                v556 = 1 << v543;
                                do
                                {
                                  v558 = *v554++;
                                  v557 = v558;
                                  if (v552 < v558)
                                  {
                                    v557 = v552;
                                  }

                                  *(v523 + 12 * v542 + 4 * v557 + 2 * ((v556 & 0xFFFF0000) != 0)) |= v556 >> (16 * ((v556 & 0xFFFF0000) != 0));
                                  v556 *= 2;
                                  --v555;
                                }

                                while (v555);
                                if (v551 >= 2)
                                {
                                  v559 = 2;
                                }

                                else
                                {
                                  v559 = v551;
                                }

                                v560 = v546;
                                v561 = v539;
                                v562 = 1 << v542;
                                do
                                {
                                  v564 = *v560++;
                                  v563 = v564;
                                  if (v559 < v564)
                                  {
                                    v563 = v559;
                                  }

                                  v565 = v523 + 384 + 12 * v543 + 4 * v563;
                                  *(v565 + 2 * ((v562 & 0xFFFF0000) != 0)) |= v562 >> (16 * ((v562 & 0xFFFF0000) != 0));
                                  v562 *= 2;
                                  --v561;
                                }

                                while (v561);
                                v566 = *v550;
                                if (v539 > v566)
                                {
                                  v567 = ((1 << v543) << v541) - (1 << v543);
                                  v568 = (12 * (v566 + v542) + 4 * v552 + v523 + 2);
                                  v569 = *v550;
                                  do
                                  {
                                    if (((1 << v543) << v541) != 1 << v543)
                                    {
                                      *(v568 - 1) |= v567;
                                    }

                                    if (v567 >= 0x10000)
                                    {
                                      *v568 |= HIWORD(v567);
                                    }

                                    v569 += v566;
                                    v568 += 6 * v566;
                                  }

                                  while (v569 < v539);
                                }

                                v570 = v550[1];
                                if (v541 > v570)
                                {
                                  v571 = ((1 << v542) << v539) - (1 << v542);
                                  v572 = (12 * (v570 + v543) + 4 * v559 + v523 + 386);
                                  v573 = v570;
                                  do
                                  {
                                    if (((1 << v542) << v539) != 1 << v542)
                                    {
                                      *(v572 - 1) |= v571;
                                    }

                                    if (v571 >= 0x10000)
                                    {
                                      *v572 |= HIWORD(v571);
                                    }

                                    v573 += v570;
                                    v572 += 6 * v570;
                                  }

                                  while (v573 < v541);
                                }

                                if (v539 > 7u)
                                {
                                  if (v539 == 8)
                                  {
                                    *v546 = 0x101010101010101 * v559;
                                    goto LABEL_794;
                                  }

                                  if (v539 != 16)
                                  {
                                    if (v539 == 32)
                                    {
                                      *v546 = 0x101010101010101 * v559;
                                      *(v546 + 1) = 0x101010101010101 * v559;
                                      *(v546 + 2) = 0x101010101010101 * v559;
                                      *(v546 + 3) = 0x101010101010101 * v559;
                                      goto LABEL_794;
                                    }

                                    goto LABEL_791;
                                  }

                                  *v546 = 0x101010101010101 * v559;
                                  *(v546 + 1) = 0x101010101010101 * v559;
                                }

                                else
                                {
                                  if (v539 == 1)
                                  {
                                    *v546 = v559;
                                    goto LABEL_794;
                                  }

                                  if (v539 != 2)
                                  {
                                    if (v539 == 4)
                                    {
                                      *v546 = 16843009 * v559;
                                      goto LABEL_794;
                                    }

LABEL_791:
                                    v594 = v533;
                                    v937 = v537;
                                    v595 = v536;
                                    v930 = v542;
                                    v596 = v523;
                                    v926 = v530;
                                    memset(v546, v559, v539);
                                    v523 = v596;
                                    LODWORD(v530) = v926;
                                    v542 = v930;
                                    v536 = v595;
                                    v537 = v937;
                                    v533 = v594;
                                    v553 = (v9 + v981 + 512);
                                    goto LABEL_794;
                                  }

                                  *v546 = v559 | (v559 << 8);
                                }

LABEL_794:
                                if (v541 > 7u)
                                {
                                  switch(v541)
                                  {
                                    case 8u:
                                      *v553 = 0x101010101010101 * v552;
                                      goto LABEL_808;
                                    case 0x10u:
                                      *v553 = 0x101010101010101 * v552;
                                      *(v553 + 1) = 0x101010101010101 * v552;
                                      goto LABEL_808;
                                    case 0x20u:
                                      *v553 = 0x101010101010101 * v552;
                                      *(v553 + 1) = 0x101010101010101 * v552;
                                      *(v553 + 2) = 0x101010101010101 * v552;
                                      *(v553 + 3) = 0x101010101010101 * v552;
                                      goto LABEL_808;
                                  }
                                }

                                else
                                {
                                  switch(v541)
                                  {
                                    case 1u:
                                      *v553 = v552;
                                      goto LABEL_808;
                                    case 2u:
                                      *v553 = v552 | (v552 << 8);
                                      goto LABEL_808;
                                    case 4u:
                                      *v553 = 16843009 * v552;
LABEL_808:
                                      v514 = v970;
                                      v524 = v962;
                                      v532 = v958;
                                      LODWORD(v529) = v948;
                                      v534 = v945;
                                      v531 = __dstb;
                                      goto LABEL_809;
                                  }
                                }

                                v597 = v553;
                                v598 = v552;
                                v599 = v533;
                                v938 = v537;
                                v600 = v536;
                                v933 = v543;
                                v601 = v542;
                                v602 = v523;
                                v603 = v530;
                                memset(v597, v598, v541);
                                LODWORD(v530) = v603;
                                v523 = v602;
                                v542 = v601;
                                v543 = v933;
                                v536 = v600;
                                v537 = v938;
                                v533 = v599;
                                goto LABEL_808;
                              }

                              if (*(*(v10 + 8) + 393))
                              {
                                sub_277584658(v983 + 13824, (v983 + 4 * v161 + 5464));
                                v462 = v982;
                                if (v512)
                                {
                                  *(v985 + 8) = 13;
                                  v513 = sub_2775840FC(v983 + 13824, (v983 + 3360), 4, v451, v452, v453, v454, v455);
                                  v462 = v982;
                                  *(v985 + 13) = v513;
                                }
                              }
                            }

                            if (!*(v985 + 11))
                            {
                              goto LABEL_695;
                            }

                            goto LABEL_691;
                          }
                        }

LABEL_345:
                        v213 = *(v10 + 24);
                        if ((v213[232] & 1) == 0)
                        {
                          v987[0] = 0;
                          v986 = 0;
                          sub_27759E444((v9 + 664), &v990, v987, &v986, 65280, v2, __b, *(v9 + 28), *(v9 + 24));
                          v219 = v990;
                          if (v990 || (v219 = v992) != 0)
                          {
                            *(v985 + 2) = v219;
                          }

                          else
                          {
                            v414 = *(*(v10 + 8) + 392);
                            if ((-16 << v414) + *(v9 + 28) >= *(v983 + 13872))
                            {
                              *(v985 + 2) = (-512 << v414);
                            }

                            else
                            {
                              *(v985 + 4) = 0;
                              *(v985 + 5) = (-512 << *(*(v10 + 8) + 392)) - 2048;
                            }
                          }

                          sub_2775BF40C(v9, v985 + 4, (v983 + 13536), 0, v214, v215, v216, v217, v218);
                          v220 = 4 * *(v983 + 13864);
                          v221 = 4 * *(v983 + 13872);
                          if (v163)
                          {
                            v222 = v946 == 3 || v977 >= 2;
                            if (!v222)
                            {
                              v220 += 4;
                            }

                            if (v946 == 1 && v984 < 2)
                            {
                              v221 += 4;
                            }
                          }

                          LODWORD(v224) = v981;
                          v225 = *(v9 + 24);
                          v226 = *(v9 + 28);
                          v227 = *(v985 + 5);
                          v228 = 4 * v225 + (v227 >> 3);
                          v229 = *(v985 + 4);
                          v230 = 4 * v226 + (v229 >> 3);
                          v231 = 4 * (v225 + v977);
                          v232 = v231 + (v227 >> 3);
                          v233 = 4 * (v226 + v984) + (v229 >> 3);
                          if (v220 <= v228)
                          {
                            v248 = 4 * ((v977 + *(v983 + 13868) - 1) & -v977);
                            if (v232 > v248)
                            {
                              v228 = 4 * v225 - v231 + v248;
                              v232 = 4 * ((v977 + *(v983 + 13868) - 1) & -v977);
                            }
                          }

                          else
                          {
                            v232 += v220 - v228;
                            v228 = v220;
                          }

                          v249 = v221 - v230;
                          if (v221 <= v230)
                          {
                            v249 = 0;
                          }

                          v250 = v233 + v249;
                          if (v230 <= v221)
                          {
                            v230 = v221;
                          }

                          v251 = *(*(v10 + 8) + 392);
                          v252 = v225 >> (v251 + 4) << (v251 + 6);
                          v253 = v226 >> (v251 + 4) << (v251 + 6);
                          v254 = 64 << v251;
                          v255 = v250 - v253;
                          if (v250 > v253)
                          {
                            v256 = v232 - v252;
                            if (v232 > v252)
                            {
                              if (v230 - v221 >= v255)
                              {
                                LOWORD(v230) = v230 - v255;
                                v250 = v253;
                              }

                              else
                              {
                                if (v228 - v220 < v256)
                                {
                                  v257 = 0;
                                }

                                else
                                {
                                  v232 = v252;
                                  v257 = v256;
                                }

                                LOWORD(v228) = v228 - v257;
                              }
                            }
                          }

                          v265 = v253 + v254;
                          if (v250 >= v253 + v254)
                          {
                            v266 = v253 + v254;
                          }

                          else
                          {
                            v266 = v250;
                          }

                          if (v266 > v253 && v232 > v252)
                          {
                            return 0xFFFFFFFFLL;
                          }

                          v267 = v265 - v250;
                          if (v265 >= v250)
                          {
                            v267 = 0;
                          }

                          *(v985 + 5) = 8 * v228 - 32 * v225;
                          *(v985 + 4) = 8 * (v230 + v267) - 32 * *(v9 + 28);
                          sub_2775BF4E4(v9, v985, v982, v979, v981);
                          if (*(v980 + 516) == 1)
                          {
                            (*(v10 + 3360))(v9, v982, v985);
                            *(v985 + 27) = 9;
                          }

                          else if ((*(v10 + 3296))(v9, v982, v985))
                          {
                            return 0xFFFFFFFFLL;
                          }

                          v268 = *(v10 + 3256);
                          *&v989 = *(v985 + 2);
                          WORD4(v989) = -256;
                          WORD5(v989) = v982;
                          (*(v268 + 63016))(v9 + 8 * (*(v9 + 28) & 0x1FLL) + 712, &v989, *(v9 + 24), v977, v984);
                          if (v984 > 7)
                          {
                            v269 = v954;
                            switch(v984)
                            {
                              case 8:
                                v482 = (v9 + v981);
                                v482[56] = 0x101010101010101 * v978[3];
                                v482[4] = 0;
                                v482[78] = 0;
                                v482[1028] = 0;
                                v482[20] = 0x101010101010101 * v954;
                                v482[28] = 0;
                                v482[32] = 0;
                                v482[24] = 0x101010101010101 * *(v985 + 6);
                                break;
                              case 16:
                                v484 = v9 + v981;
                                *(v484 + 448) = vdupq_n_s64(0x101010101010101 * v978[3]);
                                *(v484 + 32) = 0u;
                                *(v484 + 624) = 0u;
                                *(v484 + 8224) = 0u;
                                *(v484 + 160) = vdupq_n_s64(0x101010101010101 * v954);
                                *(v484 + 224) = 0u;
                                *(v484 + 256) = 0u;
                                *(v484 + 192) = vdupq_n_s64(0x101010101010101 * *(v985 + 6));
                                break;
                              case 32:
                                v395 = v9 + 32;
                                v396 = v9 + 448;
                                v397 = vdupq_n_s64(0x101010101010101 * v978[3]);
                                *(v396 + v981) = v397;
                                v398 = v981 + 16;
                                *(v396 + v398) = v397;
                                *(v395 + v981) = 0u;
                                *(v395 + v398) = 0u;
                                v399 = v9 + 624;
                                *(v399 + v981) = 0u;
                                *(v399 + v398) = 0u;
                                v400 = v9 + 8224;
                                *(v400 + v981) = 0u;
                                *(v400 + v398) = 0u;
                                v401 = v9 + 160;
                                v402 = vdupq_n_s64(0x101010101010101 * v954);
                                *(v401 + v981) = v402;
                                *(v401 + v398) = v402;
                                v403 = v9 + 224;
                                *(v403 + v981) = 0u;
                                *(v403 + v398) = 0u;
                                v404 = v9 + 256;
                                *(v404 + v981) = 0u;
                                *(v404 + v398) = 0u;
                                v405 = v9 + 192;
                                v406 = vdupq_n_s64(0x101010101010101 * *(v985 + 6));
                                *(v405 + v981) = v406;
                                *(v405 + v398) = v406;
                                break;
                            }
                          }

                          else
                          {
                            v269 = v954;
                            switch(v984)
                            {
                              case 1:
                                v481 = (v9 + v981);
                                v481[448] = v978[3];
                                v481[32] = 0;
                                v481[8224] = 0;
                                v481[624] = 0;
                                v481[160] = v954;
                                v481[224] = 0;
                                v481[256] = 0;
                                v481[192] = *(v985 + 6);
                                break;
                              case 2:
                                v483 = (v9 + v981);
                                v483[224] = v978[3] | (v978[3] << 8);
                                v483[16] = 0;
                                v483[312] = 0;
                                v483[4112] = 0;
                                v483[80] = 257 * v954;
                                v483[112] = 0;
                                v483[128] = 0;
                                v483[96] = *(v985 + 6) | (*(v985 + 6) << 8);
                                break;
                              case 4:
                                v270 = (v9 + v981);
                                v270[112] = 16843009 * v978[3];
                                v270[8] = 0;
                                v270[156] = 0;
                                v270[2056] = 0;
                                v270[40] = 16843009 * v954;
                                v270[56] = 0;
                                v270[64] = 0;
                                v270[48] = 16843009 * *(v985 + 6);
                                break;
                            }
                          }

                          if (v977 > 7)
                          {
                            if (v977 == 8)
                            {
                              v488 = v979;
                              *(*(v9 + 656) + v979 + 416) = 0x101010101010101 * v978[2];
                              *(*(v9 + 656) + v979) = 0;
                              *(*(v9 + 656) + v979 + 592) = 0;
                              *(v9 + v979 + 0x2000) = 0;
                              *(*(v9 + 656) + v979 + 128) = 0x101010101010101 * v269;
                              *(*(v9 + 656) + v979 + 192) = 0;
                              *(*(v9 + 656) + v979 + 224) = 0;
                              v491 = 0x101010101010101 * *(v985 + 6);
                            }

                            else
                            {
                              if (v977 == 16)
                              {
                                v493 = 0x101010101010101 * v978[2];
                                *(*(v9 + 656) + v979 + 416) = v493;
                                v488 = v979 + 8;
                                *(*(v9 + 656) + v488 + 416) = v493;
                                *(*(v9 + 656) + v979) = 0;
                                *(*(v9 + 656) + v488) = 0;
                                *(*(v9 + 656) + v979 + 592) = 0;
                                *(*(v9 + 656) + v488 + 592) = 0;
                                v494 = v9 + v979;
                                *(v494 + 8200) = 0;
                                *(v494 + 0x2000) = 0;
                                v495 = 0x101010101010101 * v269;
                                *(*(v9 + 656) + v979 + 128) = v495;
                                *(*(v9 + 656) + v488 + 128) = v495;
                                *(*(v9 + 656) + v979 + 192) = 0;
                                *(*(v9 + 656) + v488 + 192) = 0;
                                *(*(v9 + 656) + v979 + 224) = 0;
                                *(*(v9 + 656) + v488 + 224) = 0;
                                v491 = 0x101010101010101 * *(v985 + 6);
                                v492 = *(v9 + 656) + v979;
                              }

                              else
                              {
                                if (v977 != 32)
                                {
                                  goto LABEL_641;
                                }

                                v485 = 0x101010101010101 * v978[2];
                                *(*(v9 + 656) + v979 + 416) = v485;
                                v486 = v979 + 8;
                                *(*(v9 + 656) + v486 + 416) = v485;
                                v487 = v979 + 16;
                                *(*(v9 + 656) + v487 + 416) = v485;
                                v488 = v979 + 24;
                                *(*(v9 + 656) + v488 + 416) = v485;
                                *(*(v9 + 656) + v979) = 0;
                                *(*(v9 + 656) + v486) = 0;
                                *(*(v9 + 656) + v487) = 0;
                                *(*(v9 + 656) + v488) = 0;
                                *(*(v9 + 656) + v979 + 592) = 0;
                                *(*(v9 + 656) + v486 + 592) = 0;
                                *(*(v9 + 656) + v487 + 592) = 0;
                                *(*(v9 + 656) + v488 + 592) = 0;
                                v489 = v9 + 0x2000;
                                *(v489 + v979) = 0u;
                                *(v489 + v487) = 0u;
                                v490 = 0x101010101010101 * v269;
                                *(*(v9 + 656) + v979 + 128) = v490;
                                *(*(v9 + 656) + v486 + 128) = v490;
                                *(*(v9 + 656) + v487 + 128) = v490;
                                *(*(v9 + 656) + v488 + 128) = v490;
                                *(*(v9 + 656) + v979 + 192) = 0;
                                *(*(v9 + 656) + v486 + 192) = 0;
                                *(*(v9 + 656) + v487 + 192) = 0;
                                *(*(v9 + 656) + v488 + 192) = 0;
                                *(*(v9 + 656) + v979 + 224) = 0;
                                *(*(v9 + 656) + v486 + 224) = 0;
                                *(*(v9 + 656) + v487 + 224) = 0;
                                *(*(v9 + 656) + v488 + 224) = 0;
                                v491 = 0x101010101010101 * *(v985 + 6);
                                *(*(v9 + 656) + v979 + 160) = v491;
                                *(*(v9 + 656) + v486 + 160) = v491;
                                v492 = *(v9 + 656) + v487;
                              }

                              *(v492 + 160) = v491;
                            }

                            *(*(v9 + 656) + v488 + 160) = v491;
                          }

                          else
                          {
                            switch(v977)
                            {
                              case 1:
                                *(*(v9 + 656) + v979 + 416) = v978[2];
                                *(*(v9 + 656) + v979) = 0;
                                *(*(v9 + 656) + v979 + 592) = 0;
                                *(v9 + v979 + 0x2000) = 0;
                                *(*(v9 + 656) + v979 + 128) = v269;
                                *(*(v9 + 656) + v979 + 192) = 0;
                                *(*(v9 + 656) + v979 + 224) = 0;
                                *(*(v9 + 656) + v979 + 160) = *(v985 + 6);
                                break;
                              case 2:
                                *(*(v9 + 656) + v979 + 416) = v978[2] | (v978[2] << 8);
                                *(*(v9 + 656) + v979) = 0;
                                *(*(v9 + 656) + v979 + 592) = 0;
                                *(v9 + v979 + 0x2000) = 0;
                                *(*(v9 + 656) + v979 + 128) = 257 * v269;
                                *(*(v9 + 656) + v979 + 192) = 0;
                                *(*(v9 + 656) + v979 + 224) = 0;
                                *(*(v9 + 656) + v979 + 160) = *(v985 + 6) | (*(v985 + 6) << 8);
                                break;
                              case 4:
                                *(*(v9 + 656) + v979 + 416) = 16843009 * v978[2];
                                *(*(v9 + 656) + v979) = 0;
                                *(*(v9 + 656) + v979 + 592) = 0;
                                *(v9 + v979 + 0x2000) = 0;
                                *(*(v9 + 656) + v979 + 128) = 16843009 * v269;
                                *(*(v9 + 656) + v979 + 192) = 0;
                                *(*(v9 + 656) + v979 + 224) = 0;
                                *(*(v9 + 656) + v979 + 160) = 16843009 * *(v985 + 6);
                                break;
                            }
                          }

LABEL_641:
                          if (!v163)
                          {
                            goto LABEL_935;
                          }

LABEL_642:
                          if (v27 > 7)
                          {
                            if (v27 == 8)
                            {
                              v496 = v9 + v973;
                            }

                            else
                            {
                              if (v27 != 16)
                              {
                                if (v27 == 32)
                                {
                                  *(v9 + 592 + v973) = 0u;
                                  *(v9 + 592 + v973 + 16) = 0u;
                                }

                                goto LABEL_656;
                              }

                              v496 = v9 + v973;
                              *(v9 + v973 + 600) = 0;
                            }

                            *(v496 + 592) = 0;
                          }

                          else
                          {
                            switch(v27)
                            {
                              case 1:
                                *(v9 + v973 + 592) = 0;
                                break;
                              case 2:
                                *(v9 + v973 + 592) = 0;
                                break;
                              case 4:
                                *(v9 + v973 + 592) = 0;
                                break;
                            }
                          }

LABEL_656:
                          if (v971 > 7)
                          {
                            switch(v971)
                            {
                              case 8:
                                *(*(v9 + 656) + v974 + 560) = 0;
                                break;
                              case 16:
                                *(*(v9 + 656) + v974 + 560) = 0;
                                *(*(v9 + 656) + v974 + 568) = 0;
                                break;
                              case 32:
                                *(*(v9 + 656) + v974 + 560) = 0;
                                *(*(v9 + 656) + v974 + 568) = 0;
                                *(*(v9 + 656) + v974 + 576) = 0;
                                *(*(v9 + 656) + v974 + 584) = 0;
                                break;
                            }
                          }

                          else
                          {
                            switch(v971)
                            {
                              case 1:
                                *(*(v9 + 656) + v974 + 560) = 0;
                                break;
                              case 2:
                                *(*(v9 + 656) + v974 + 560) = 0;
                                break;
                              case 4:
                                *(*(v9 + 656) + v974 + 560) = 0;
                                break;
                            }
                          }

                          goto LABEL_935;
                        }

                        if (*v58)
                        {
                          v234 = 0;
                          goto LABEL_364;
                        }

                        v935 = v161;
                        if (v43 && (v43[6] != 255 || v43[8] || v43[7]))
                        {
                          v259 = v985 + 4;
                          *(v985 + 20) = 0;
                          v260 = v953;
                          v261 = v967;
LABEL_395:
                          v262 = v43[6];
                          v263 = v262 - 1;
                          if (v262 >= 1)
                          {
                            v264 = v43;
                            goto LABEL_1057;
                          }

                          if (v43[8] || v43[7])
                          {
                            v264 = v43;
                            v263 = 0;
                            goto LABEL_1057;
                          }

LABEL_786:
                          v264 = v43;
                          v587 = sub_2775C02A4(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                          sub_277584658(v983 + 13824, (v983 + 4 * v587 + 5760));
                          v589 = v588;
                          v590 = *(v9 + 656);
                          v591 = v9 + 32;
                          if (v589)
                          {
                            v592 = sub_2775C0030(v590, v591, v981, v979, __dst, v943);
                            sub_277584658(v983 + 13824, (v983 + 4 * v592 + 5772));
                            if (v593)
                            {
                              v263 = 6;
                            }

                            else
                            {
                              v764 = sub_2775C0170(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                              sub_277584658(v983 + 13824, (v983 + 4 * v764 + 5820));
                              v263 = v765 + 4;
                            }
                          }

                          else
                          {
                            v742 = sub_2775BFCA4(v590, v591, v981, v979, __dst, v943);
                            sub_277584658(v983 + 13824, (v983 + 4 * v742 + 5784));
                            v744 = v743;
                            v745 = *(v9 + 656);
                            v746 = v9 + 32;
                            if (v744)
                            {
                              v747 = sub_2775BFDD0(v745, v746, v981, v979, __dst, v943);
                              sub_277584658(v983 + 13824, (v983 + 4 * v747 + 5808));
                              v263 = v748 + 2;
                            }

                            else
                            {
                              v769 = sub_2775BFF10(v745, v746, v981, v979, __dst, v943);
                              sub_277584658(v983 + 13824, (v983 + 4 * v769 + 5796));
                            }
                          }

                          v261 = v967;
LABEL_1057:
                          *(v985 + 24) = v263;
                          *(v985 + 25) = -1;
                          v987[0] = 0;
                          v986 = 0;
                          sub_27759E444((v9 + 664), &v990, v987, &v986, (v263 + 1) | 0xFF00, v982, __b, *(v9 + 28), *(v9 + 24));
                          if (!v264 || !v264[7] && !v264[8])
                          {
                            v774 = v986;
                            sub_277584658(v983 + 13824, (v983 + 4 * (v986 & 7) + 5552));
                            if (!v775)
                            {
                              v806 = v261;
                              *(v985 + 21) = 3;
                              *(v985 + 23) = 0;
                              v807 = v987[0];
                              if (v987[0] < 2)
                              {
                                *v259 = v990;
                                sub_2775C04F8(*(v10 + 24), v259);
                                v224 = v981;
                                v261 = v806;
                              }

                              else
                              {
                                v808 = v993;
                                if (v991 <= 639)
                                {
                                  v809 = 2 * (v993 < 640);
                                }

                                else
                                {
                                  v809 = v993 < 640;
                                }

                                sub_277584658(v983 + 13824, (v983 + 5608 + 4 * v809));
                                v816 = *(v985 + 23) + v815;
                                *(v985 + 23) = v816;
                                v224 = v981;
                                if (v816 == 1)
                                {
                                  v88 = v807 == 2;
                                  v261 = v806;
                                  if (!v88)
                                  {
                                    v817 = v994 < 640;
                                    if (v808 <= 639)
                                    {
                                      v817 = 2 * (v994 < 640);
                                    }

                                    sub_277584658(v983 + 13824, (v983 + 5608 + 4 * v817));
                                    v816 = *(v985 + 23) + v818;
                                    *(v985 + 23) = v816;
                                  }
                                }

                                else
                                {
                                  v261 = v806;
                                }

                                *v259 = *(&v990 + 4 * v816);
                                v260 = v953;
                              }

                              sub_2775BF40C(v9, v259, (v983 + 13248), *(*(v10 + 24) + 269) == 0, v810, v811, v812, v813, v814);
                              v805 = 1;
                              v794 = v951;
                              v241 = v982;
                              v791 = v935;
LABEL_1112:
                              if (*(*(v10 + 8) + 395) && ((1 << v241) & 0x33980) != 0)
                              {
                                v820 = v805;
                                v821 = byte_2775EF66A[v791];
                                sub_277584658(v983 + 13824, (v983 + 4 * v821 + 5392));
                                if (v822)
                                {
                                  *(v985 + 18) = sub_2775840FC(v983 + 13824, (v983 + 8 * v821 + 5344), 3, *&v782, *&v770, *&v771, *&v772, v773);
                                  v823 = byte_2775EF6F5[v791];
                                  sub_277584658(v983 + 13824, (v983 + 4 * v823 + 5420));
                                  *(v985 + 28) = v824 + 1;
                                  v794 = v951;
                                  v825 = v953;
                                  v241 = v982;
                                  v805 = v820;
                                  if ((v824 + 1) != 2)
                                  {
LABEL_1119:
                                    v827 = *(v10 + 24);
                                    if (v827[436])
                                    {
                                      v828 = v977 >= v984 ? v984 : v977;
                                      if (!*(v985 + 28) && v828 >= 2)
                                      {
                                        v829 = v827[269];
                                        if (v827[269] || *(v985 + 21) != 2 || *&v827[36 * *(v985 + 24) + 896] <= 1u)
                                        {
                                          if (v825 > v960)
                                          {
                                            v830 = (v959 >> 1);
                                            if (v830 >= 1)
                                            {
                                              if (!*(v9 + 256 + v224 + 1))
                                              {
                                                goto LABEL_1142;
                                              }

                                              v831 = 0;
                                              v832 = ((v261 & 0x1F) + v9 + 259);
                                              while (v830 - 1 != v831)
                                              {
                                                v833 = *v832;
                                                v832 += 2;
                                                ++v831;
                                                if (!v833)
                                                {
                                                  if (v831 < v830)
                                                  {
                                                    goto LABEL_1142;
                                                  }

                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          if (v261 > v956)
                                          {
                                            v834 = (v794 >> 1);
                                            if (v834 >= 1)
                                            {
                                              v835 = *(v9 + 656);
                                              if (*(v835 + 224 + v979 + 1))
                                              {
                                                v836 = 0;
                                                v837 = ((v825 & 0x1F) + v835 + 227);
                                                while (v834 - 1 != v836)
                                                {
                                                  v838 = *v837;
                                                  v837 += 2;
                                                  ++v836;
                                                  if (!v838)
                                                  {
                                                    if (v836 >= v834)
                                                    {
                                                      goto LABEL_1147;
                                                    }

                                                    goto LABEL_1142;
                                                  }
                                                }

                                                goto LABEL_1147;
                                              }

LABEL_1142:
                                              v839 = v805;
                                              v989 = 0uLL;
                                              sub_2775C0728(v9, __b, v977, v984, v794, v959, v943, __dst, *(v985 + 24), &v989);
                                              if (v829 || *(v10 + 16 * *(v985 + 24) + 3128) || !v827[893] || v989 == 0)
                                              {
                                                sub_277584658(v983 + 13824, (v983 + 4 * v935 + 6048));
                                              }

                                              else
                                              {
                                                v845 = sub_2775840FC(v983 + 13824, (v983 + 8 * v935 + 5120), 2, v840, v841, v842, v843, v844);
                                              }

                                              *(v985 + 22) = v845;
                                              v163 = v972;
                                              v212 = v977;
                                              v241 = v982;
                                              v805 = v839;
                                              if (v845 == 2)
                                              {
                                                sub_2775C0A00(v9, v977, v984, v989, *(&v989 + 1), *v259, v980 + 448, *&v782, *&v770, *&v771, *&v772, *v773.i64, v846, v847, v848);
                                                if (*(v980 + 516))
                                                {
                                                  v805 = 0;
                                                  if (*(v980 + 448) == 3)
                                                  {
                                                    *(v985 + 6) = *(v980 + 460);
                                                    *(v985 + 7) = *(v980 + 464);
                                                    *(v985 + 8) = *(v980 + 468);
                                                    *(v985 + 9) = *(v980 + 472);
                                                  }

                                                  else
                                                  {
                                                    *(v985 + 6) = 0x8000;
                                                  }
                                                }

                                                else
                                                {
                                                  v805 = 0;
                                                }

                                                v241 = v982;
                                              }

                                              goto LABEL_1148;
                                            }
                                          }
                                        }
                                      }
                                    }

LABEL_1147:
                                    *(v985 + 22) = 0;
                                    v163 = v972;
                                    v212 = v977;
LABEL_1148:
                                    v234 = 1;
                                    goto LABEL_1149;
                                  }

                                  sub_27758434C(v983 + 13824, v983 + 32 * v823 + 960, 15);
                                  v805 = v820;
                                  v241 = v982;
                                  v794 = v951;
                                  v826 = 16;
                                }

                                else
                                {
                                  v826 = 28;
                                  v794 = v951;
                                  v825 = v953;
                                  v241 = v982;
                                  v805 = v820;
                                }
                              }

                              else
                              {
                                LOBYTE(v822) = 0;
                                v826 = 28;
                                v825 = v260;
                              }

                              *(v985 + v826) = v822;
                              goto LABEL_1119;
                            }

                            if (v264)
                            {
                              if (v264[7] || v264[8])
                              {
                                goto LABEL_1076;
                              }

                              v774 = v986;
                            }

                            sub_277584658(v983 + 13824, (v983 + 4 * ((v774 >> 3) & 1) + 5576));
                            if (v776)
                            {
                              sub_277584658(v983 + 13824, (v983 + 4 * (v774 >> 4) + 5584));
                              if (v777)
                              {
                                v778 = v261;
                                *(v985 + 21) = 1;
                                *(v985 + 23) = 1;
                                v779 = v987[0];
                                if (v987[0] >= 3)
                                {
                                  v780 = v994;
                                  if (v993 <= 639)
                                  {
                                    v781 = 2 * (v994 < 640);
                                  }

                                  else
                                  {
                                    v781 = v994 < 640;
                                  }

                                  sub_277584658(v983 + 13824, (v983 + 5608 + 4 * v781));
                                  v784 = *(v985 + 23) + v783;
                                  *(v985 + 23) = v784;
                                  if (v784 == 2)
                                  {
                                    v88 = v779 == 3;
                                    v224 = v981;
                                    v261 = v778;
                                    if (!v88)
                                    {
                                      v785 = v995[0] < 640;
                                      if (v780 <= 639)
                                      {
                                        v785 = 2 * (v995[0] < 640);
                                      }

                                      sub_277584658(v983 + 13824, (v983 + 5608 + 4 * v785));
                                      v784 = *(v985 + 23) + v786;
                                      *(v985 + 23) = v784;
                                    }
                                  }

                                  else
                                  {
                                    v224 = v981;
                                    v261 = v778;
                                  }

                                  *v259 = *(&v990 + 4 * v784);
                                  v791 = v935;
                                  v260 = v953;
                                  if (v784 > 1u)
                                  {
                                    goto LABEL_1108;
                                  }

                                  goto LABEL_1107;
                                }

                                v819 = &v992;
                                v791 = v935;
                                v261 = v778;
                              }

                              else
                              {
                                *(v985 + 21) = 0;
                                *(v985 + 23) = 0;
                                v819 = &v990;
                                v791 = v935;
                              }

                              *v259 = *v819;
                              v224 = v981;
LABEL_1107:
                              sub_2775C04F8(*(v10 + 24), v259);
LABEL_1108:
                              v805 = 1;
                              v794 = v951;
                              v241 = v982;
                              goto LABEL_1112;
                            }
                          }

LABEL_1076:
                          *(v985 + 21) = 2;
                          v787 = *(v10 + 24);
                          v788 = *(v985 + 24);
                          v789 = v787 + 36 * v788;
                          v790 = *(v789 + 896);
                          v224 = v981;
                          v791 = v935;
                          if (v790)
                          {
                            v792 = v789 + 896;
                            v793 = v977;
                            v794 = v951;
                            if (v790 == 1)
                            {
                              v782 = vrev64_s32(vshr_n_u32(*(v792 + 4), 0xDuLL));
                              v241 = v982;
                              if (!*(v787 + 269))
                              {
                                goto LABEL_1089;
                              }
                            }

                            else
                            {
                              if (v790 == 2)
                              {
                                v795 = (v792 + 24);
                                v796 = *(v792 + 16);
                                v797 = vld1_dup_f32(v795);
                              }

                              else
                              {
                                v796 = *(v792 + 16);
                                v797.i32[0] = *(v792 + 12);
                                v797.i32[1] = *(v792 + 24);
                              }

                              v241 = v982;
                              v798 = vshl_n_s32(*(v9 + 24), 2uLL);
                              v799 = vadd_s32(__PAIR64__(v984, v977), __PAIR64__(v984, v977));
                              v800 = vadd_s32(v797, 0xFFFF0000FFFF0000);
                              if (*(v787 + 428))
                              {
                                v801 = 13;
                              }

                              else
                              {
                                v801 = 14;
                              }

                              v773.i64[0] = -1;
                              v773.i64[1] = -1;
                              v802 = vadd_s32(vadd_s32(v798, -1), v799);
                              v803 = vadd_s32(vmla_s32(vmul_s32(v796, vrev64_s32(v802)), v800, v802), *(v792 + 4));
                              v772 = vdup_n_s32(*(v787 + 428) == 0);
                              v770 = vshl_u32(vshl_u32(vadd_s32(vdup_n_s32((1 << v801) >> 1), vabs_s32(v803)), vneg_s32(vdup_n_s32(v801))), v772);
                              v771 = vneg_s32(v770);
                              v782 = vbsl_s8(vcltz_s32(v803), v771, v770);
                              if (!*(v787 + 269))
                              {
                                goto LABEL_1089;
                              }
                            }

                            v770 = vdup_n_s32(0xFFF8u);
                            v782 = vand_s8(vadd_s32(vsra_n_u32(v782, vand_s8(v782, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), v770);
                          }

                          else
                          {
                            v782 = 0;
                            v793 = v977;
                            v794 = v951;
                            v241 = v982;
                          }

LABEL_1089:
                          *v259 = v782.u16[2] | (v782.u16[0] << 16);
                          v804 = v984;
                          if (v793 < v984)
                          {
                            v804 = v793;
                          }

                          v805 = v804 == 1 || *(*(v10 + 24) + 36 * v788 + 896) == 1;
                          goto LABEL_1112;
                        }

                        v407 = v213[888];
                        v408 = v984;
                        if (v977 < v984)
                        {
                          v408 = v977;
                        }

                        v261 = v967;
                        if (!v407 || v408 < 2)
                        {
                          goto LABEL_785;
                        }

                        v409 = v58;
                        v410 = v163;
                        v411 = v43;
                        v412 = sub_2775BF9F8(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                        sub_277584658(v983 + 13824, (v983 + 4 * v412 + 5636));
                        if (*v409)
                        {
                          v213 = *(v10 + 24);
                          v163 = v410;
                          v234 = v413 == 0;
LABEL_364:
                          v235 = v213[891];
                          *(v985 + 24) = v235;
                          v236 = *(*(v10 + 24) + 892);
                          *(v985 + 25) = v236;
                          *(v985 + 10) = 2;
                          *(v985 + 23) = 0;
                          LODWORD(v989) = 0;
                          sub_27759E444((v9 + 664), &v990, &v989, v987, (v235 + 1) | ((v236 + 1) << 8), v982, __b, *(v9 + 28), *(v9 + 24));
                          v237 = v990;
                          v238 = HIDWORD(v990);
                          *(v985 + 2) = v990;
                          *(v985 + 3) = v238;
                          v239 = *(v10 + 24);
                          v224 = v981;
                          if (*(v239 + 269))
                          {
                            *(v985 + 5) = (HIWORD(v237) + (v237 >> 31) + 3) & 0xFFF8;
                            v240 = (v237 + ((v237 & 0x8000) >> 15) + 3) & 0xFFFFFFF8;
                            v241 = v982;
                          }

                          else
                          {
                            v241 = v982;
                            if (*(v239 + 428))
                            {
                              goto LABEL_416;
                            }

                            *(v985 + 5) = ((v237 >> 31) + HIWORD(v237)) & 0xFFFE;
                            v240 = (v237 + ((v237 & 0x8000) >> 15)) & 0xFFFFFFFE;
                          }

                          *(v985 + 4) = v240;
                          v239 = *(v10 + 24);
                          if (*(v239 + 269))
                          {
                            *(v985 + 7) = (HIWORD(v238) + (v238 >> 31) + 3) & 0xFFF8;
                            v242 = (v238 + ((v238 & 0x8000) >> 15) + 3) & 0xFFFFFFF8;
LABEL_368:
                            *(v985 + 6) = v242;
                            v239 = *(v10 + 24);
                            goto LABEL_416;
                          }

                          if (!*(v239 + 428))
                          {
                            *(v985 + 7) = ((v238 >> 31) + HIWORD(v238)) & 0xFFFE;
                            v242 = (v238 + ((v238 & 0x8000) >> 15)) & 0xFFFFFFFE;
                            goto LABEL_368;
                          }

LABEL_416:
                          if (*(v239 + 432) == 4)
                          {
                            v271 = 0;
                          }

                          else
                          {
                            v271 = *(v239 + 432);
                          }

                          goto LABEL_419;
                        }

                        v43 = v411;
                        if (!v413)
                        {
LABEL_785:
                          v259 = v985 + 4;
                          *(v985 + 20) = 0;
                          v260 = v953;
                          if (!v43)
                          {
                            goto LABEL_786;
                          }

                          goto LABEL_395;
                        }

                        v574 = sub_2775BFAB8(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                        sub_277584658(v983 + 13824, (v983 + 4 * v574 + 5656));
                        v576 = v575;
                        v577 = *(v9 + 656);
                        v578 = v9 + 32;
                        if (v576)
                        {
                          v579 = sub_2775BFCA4(v577, v578, v981, v979, __dst, v943);
                          sub_277584658(v983 + 13824, (v983 + 4 * v579 + 5832));
                          v581 = v580;
                          v582 = *(v9 + 656);
                          v583 = v9 + 32;
                          if (v581)
                          {
                            v584 = sub_2775BFDD0(v582, v583, v981, v979, __dst, v943);
                            sub_277584658(v983 + 13824, (v983 + 4 * v584 + 5856));
                            v586 = v585 + 2;
                          }

                          else
                          {
                            v869 = sub_2775BFF10(v582, v583, v981, v979, __dst, v943);
                            sub_277584658(v983 + 13824, (v983 + 4 * v869 + 5844));
                          }

                          *(v985 + 24) = v586;
                          v870 = sub_2775C0030(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                          sub_277584658(v983 + 13824, (v983 + 4 * v870 + 5868));
                          if (v871)
                          {
                            v768 = 6;
                          }

                          else
                          {
                            v872 = sub_2775C0170(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                            sub_277584658(v983 + 13824, (v983 + 4 * v872 + 5880));
                            v768 = v873 + 4;
                          }

                          v874 = v985;
                        }

                        else
                        {
                          v766 = sub_2775C02A4(v577, v578, v981, v979, __dst, v943);
                          sub_277584658(v983 + 13824, (v983 + 4 * v766 + 5892));
                          if (v767)
                          {
                            *(v985 + 12) = 1540;
                            v768 = 6;
                            goto LABEL_1193;
                          }

                          v911 = sub_2775C03BC(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                          *(v985 + 24) = 0;
                          sub_277584658(v983 + 13824, (v983 + 4 * v911 + 5904));
                          v768 = v912 + 1;
                          *(v985 + 25) = v912 + 1;
                          if ((v912 + 1) != 2)
                          {
LABEL_1193:
                            LODWORD(v989) = 0;
                            v987[0] = 0;
                            sub_27759E444((v9 + 664), &v990, &v989, v987, (*(v985 + 24) + 1) | ((v768 + 1) << 8), v982, __b, *(v9 + 28), *(v9 + 24));
                            sub_27758428C(v983 + 13824, (v983 + 16 * v987[0] + 3376), 7);
                            *(v985 + 21) = v875;
                            v876 = &unk_2775EF6E5 + 2 * v875;
                            *(v985 + 23) = 0;
                            if (v875 == 7)
                            {
                              v877 = v989;
                              if (v989 >= 2)
                              {
                                v878 = v993;
                                if (v991 <= 639)
                                {
                                  v879 = 2 * (v993 < 640);
                                }

                                else
                                {
                                  v879 = v993 < 640;
                                }

                                sub_277584658(v983 + 13824, (v983 + 4 * v879 + 5608));
                                v881 = *(v985 + 23) + v880;
                                *(v985 + 23) = v881;
                                if (v881 != 1 || v877 == 2)
                                {
                                  goto LABEL_1214;
                                }

                                v882 = &v994;
                                goto LABEL_1210;
                              }
                            }

                            else if (*v876 == 1 || v876[1] == 1)
                            {
                              v881 = 1;
                              *(v985 + 23) = 1;
                              v883 = v989;
                              if (v989 < 3)
                              {
                                goto LABEL_1214;
                              }

                              v878 = v994;
                              v884 = v993 <= 639 ? 2 * (v994 < 640) : v994 < 640;
                              sub_277584658(v983 + 13824, (v983 + 4 * v884 + 5608));
                              v881 = *(v985 + 23) + v885;
                              *(v985 + 23) = v881;
                              if (v881 != 2 || v883 == 3)
                              {
                                goto LABEL_1214;
                              }

                              v882 = v995;
LABEL_1210:
                              v886 = *v882 < 640;
                              if (v878 <= 639)
                              {
                                v886 = 2 * v886;
                              }

                              sub_277584658(v983 + 13824, (v983 + 4 * v886 + 5608));
                              v881 = *(v985 + 23) + v887;
                              *(v985 + 23) = v881;
LABEL_1214:
                              v888 = *(v985 + 21) != 6;
                              v889 = *v876;
                              if (v889 < 2)
                              {
                                *(v985 + 2) = *(&v990 + 4 * v881);
                                sub_2775C04F8(*(v10 + 24), v985 + 4);
                                v163 = v972;
                                v224 = v981;
                                v890 = v935;
                              }

                              else
                              {
                                v224 = v981;
                                v890 = v935;
                                if (v889 == 2)
                                {
                                  v891 = *(v10 + 24);
                                  v892 = v891 + 36 * *(v985 + 24);
                                  if (*(v892 + 896) == 1)
                                  {
                                    v888 = 1;
                                  }

                                  *(v985 + 2) = sub_2775C0558((v892 + 896), *(v9 + 24), *(v9 + 28), v977, v984, v891);
                                }

                                else if (v889 == 3)
                                {
                                  *(v985 + 2) = *(&v990 + 4 * v881);
                                  sub_2775BF40C(v9, v985 + 4, (v983 + 13248), *(*(v10 + 24) + 269) == 0, *&v782, *&v770, *&v771, *&v772, v773);
                                }

                                v163 = v972;
                              }

                              v893 = v876[1];
                              if (v893 < 2)
                              {
                                *(v985 + 3) = *(&v990 + 4 * *(v985 + 23) + 1);
                                v894 = v10;
                                sub_2775C04F8(*(v10 + 24), v985 + 6);
                              }

                              else if (v893 == 2)
                              {
                                v894 = v10;
                                v895 = *(v10 + 24);
                                v896 = v895 + 36 * *(v985 + 25);
                                if (*(v896 + 896) == 1)
                                {
                                  v888 = 1;
                                }

                                *(v985 + 3) = sub_2775C0558((v896 + 896), *(v9 + 24), *(v9 + 28), v977, v984, v895);
                              }

                              else if (v893 == 3)
                              {
                                *(v985 + 3) = *(&v990 + 4 * *(v985 + 23) + 1);
                                v894 = v10;
                                sub_2775BF40C(v9, v985 + 6, (v983 + 13248), *(*(v10 + 24) + 269) == 0, *&v782, *&v770, *&v771, *&v772, v773);
                              }

                              else
                              {
                                v894 = v10;
                              }

                              v897 = *(v894 + 8);
                              if (v897[396])
                              {
                                v898 = *(v9 + 656) + v979;
                                v212 = v977;
                                if (*(v898 + 256) <= 2u)
                                {
                                  if (*(v898 + 288) == 6)
                                  {
                                    v899 = 3;
                                  }

                                  else
                                  {
                                    v899 = 0;
                                  }
                                }

                                else
                                {
                                  v899 = 1;
                                }

                                if (*(v9 + v224 + 288) <= 2u)
                                {
                                  if (*(v9 + v224 + 320) == 6)
                                  {
                                    v900 = 3;
                                  }

                                  else
                                  {
                                    v900 = 0;
                                  }
                                }

                                else
                                {
                                  v900 = 1;
                                }

                                v901 = v900 + v899;
                                if (v901 >= 5)
                                {
                                  v901 = 5;
                                }

                                sub_277584658(v983 + 13824, (v983 + 4 * v901 + 5700));
                                if (v902)
                                {
                                  if (((1 << v982) & 0x3BB80) != 0)
                                  {
                                    v903 = byte_2775EF6F5[v890];
                                    sub_277584658(v983 + 13824, (v983 + 4 * v903 + 5724));
                                    *(v985 + 20) = 4 - v904;
                                    if (v904)
                                    {
LABEL_1266:
                                      sub_2775845E0();
                                      *(v985 + 17) = v910;
                                      v212 = v977;
LABEL_1267:
                                      v241 = v982;
                                      v805 = v888;
                                      v234 = 0;
LABEL_1149:
                                      v271 = *(*(v10 + 24) + 432);
                                      if (v271 == 4)
                                      {
                                        if (v805)
                                        {
                                          v849 = *(v985 + 20);
                                          v850 = *(v985 + 20) != 0;
                                          v851 = *(v985 + 24);
                                          v852 = (*(v9 + 656) + v979);
                                          if (v852[288] == v851 || v852[320] == v851)
                                          {
                                            v853 = v852[352];
                                          }

                                          else
                                          {
                                            v853 = 3;
                                          }

                                          v854 = v9 + v224;
                                          if (*(v9 + v224 + 320) == v851 || *(v854 + 352) == v851)
                                          {
                                            v855 = *(v854 + 384);
                                          }

                                          else
                                          {
                                            v855 = 3;
                                          }

                                          v856 = 4 * (v849 != 0);
                                          v857 = v856 | 3;
                                          v858 = v853 + v856;
                                          if (v855 != 3)
                                          {
                                            v858 = v857;
                                          }

                                          if (v853 == 3)
                                          {
                                            v858 = v855 + 4 * (v849 != 0);
                                          }

                                          v859 = v853 + 4 * (v849 != 0);
                                          if (v853 != v855)
                                          {
                                            v859 = v858;
                                          }

                                          v860 = sub_2775840FC(v983 + 13824, (v983 + 8 * v859 + 4896), 2, *&v782, *&v770, *&v771, *&v772, v773);
                                          v271 = v860;
                                          if (*(*(v10 + 8) + 398))
                                          {
                                            v861 = sub_2775C11E8(*(v9 + 656), v9 + 32, v850, *(v985 + 24), v224, v979);
                                            v272 = sub_2775840FC(v983 + 13824, (v983 + 8 * v861 + 4960), 2, v862, v863, v864, v865, v866);
                                          }

                                          else
                                          {
                                            v272 = v860;
                                          }

                                          v212 = v977;
                                          v241 = v982;
                                        }

                                        else
                                        {
                                          v271 = 0;
                                          v272 = 0;
                                        }

LABEL_420:
                                        *(v985 + 27) = byte_2775F12E8[4 * v272 + v271];
                                        v273 = v241;
                                        sub_2775BF4E4(v9, v985, v241, v979, v224);
                                        if (*(v980 + 516) == 1)
                                        {
                                          (*(v10 + 3360))(v9, v273, v985);
                                        }

                                        else if ((*(v10 + 3296))(v9, v273, v985))
                                        {
                                          return 0xFFFFFFFFLL;
                                        }

                                        __ba = v271;
                                        v274 = *(v10 + 24);
                                        v275 = v982;
                                        if (*(v274 + 830) || *(v274 + 831))
                                        {
                                          v961 = v272;
                                          v968 = v234;
                                          if (v234)
                                          {
                                            v276 = 2;
                                          }

                                          else
                                          {
                                            v276 = 6;
                                          }

                                          v88 = v276 == *(v985 + 21);
                                          v277 = *(v985 + 4);
                                          v278 = *(v985 + 24);
                                          if (v88)
                                          {
                                            v279 = (*(v983 + 14576) + (v277 << 6) + 2 * v278);
                                          }

                                          else
                                          {
                                            v279 = (*(v983 + 14576) + (v277 << 6) + 2 * v278 + 1);
                                          }

                                          LOWORD(v989) = *(v985 + 29);
                                          WORD1(v989) = *(v985 + 15);
                                          v280 = *(v985 + 26);
                                          v281 = *(v274 + v277 + 808);
                                          if (v281)
                                          {
                                            v282 = 0;
                                          }

                                          else
                                          {
                                            v282 = *(v985 + 7);
                                          }

                                          if (v281)
                                          {
                                            v280 = 0;
                                          }

                                          v283 = *(v980 + 488);
                                          v284 = *(v10 + 4432);
                                          v285 = *(v10 + 3432);
                                          v286 = *(v9 + 24);
                                          v287 = *(v9 + 28);
                                          v288 = v286;
                                          v289 = v287;
                                          v290 = *(v10 + 3440);
                                          v291 = *(v10 + 3444);
                                          v292 = *(v985 + 6);
                                          v293 = *(v10 + 2168);
                                          v294 = *(v9 + 656);
                                          if (v163)
                                          {
                                            v295 = (v294 + v974 + 512);
                                          }

                                          else
                                          {
                                            v295 = 0;
                                          }

                                          if (v163)
                                          {
                                            v296 = (v9 + v973 + 544);
                                          }

                                          else
                                          {
                                            v296 = 0;
                                          }

                                          v957 = *v978;
                                          if (v290 - v286 >= v957)
                                          {
                                            v297 = *v978;
                                          }

                                          else
                                          {
                                            v297 = (v290 - v286);
                                          }

                                          v298 = v978[1];
                                          if (v291 - v287 >= v298)
                                          {
                                            v299 = v978[1];
                                          }

                                          else
                                          {
                                            v299 = (v291 - v287);
                                          }

                                          v300 = *(v9 + 24) & 0x1F;
                                          v301 = v287 & 0x1F;
                                          if (v297 && v299)
                                          {
                                            v915 = v978[1];
                                            v929 = *(v980 + 488);
                                            v964 = v10;
                                            v302 = 0;
                                            v303 = v280;
                                            __dsta = (v294 + v979 + 480);
                                            v936 = v9 + v224 + 512;
                                            v304 = 4 * v285 * v287 + 4 * v288 + v284 + 1;
                                            do
                                            {
                                              v305 = v304;
                                              v306 = v297;
                                              do
                                              {
                                                *(v305 - 1) = v279[2];
                                                *v305 = v279[18];
                                                v305 += 4;
                                                --v306;
                                              }

                                              while (v306);
                                              ++v302;
                                              v304 += 4 * v285;
                                            }

                                            while (v302 != v299);
                                            v916 = v293;
                                            v917 = v288;
                                            v918 = v291;
                                            v919 = v289;
                                            v920 = v284;
                                            v921 = v285;
                                            v922 = v296;
                                            v944 = v301;
                                            v947 = v300;
                                            v923 = v295;
                                            v925 = v292;
                                            v932 = v282;
                                            v307 = 0;
                                            v308 = 0;
                                            v309 = &unk_277601B98 + 8 * v303;
                                            do
                                            {
                                              v310 = 0;
                                              v311 = 0;
                                              v312 = v308;
                                              do
                                              {
                                                sub_2775E28F8(&v990 + 32 * v312 + v311, v303, 0, v307, v310, &v989);
                                                v311 += *v309;
                                                ++v310;
                                              }

                                              while (v311 < v297);
                                              v308 = v312 + v309[1];
                                              ++v307;
                                            }

                                            while (v308 < v299);
                                            v313 = 0;
                                            v314 = 1 << v944;
                                            v315 = v299;
                                            v283 = v929;
                                            v316 = v936;
                                            v317 = v936;
                                            v318 = 1 << v944;
                                            v292 = v925;
                                            do
                                            {
                                              v319 = *(&v990 + v313);
                                              v321 = *v317++;
                                              v320 = v321;
                                              if (v319 >= v321)
                                              {
                                                v319 = v320;
                                              }

                                              *(v929 + 12 * v947 + 4 * v319 + 2 * ((v318 & 0xFFFF0000) != 0)) |= v318 >> (16 * ((v318 & 0xFFFF0000) != 0));
                                              v318 *= 2;
                                              v313 += 32;
                                            }

                                            while (32 * v299 != v313);
                                            v322 = 1 << v947;
                                            v323 = 2048;
                                            v324 = __dsta;
                                            v325 = __dsta;
                                            v326 = v297;
                                            v327 = 1 << v947;
                                            v10 = v964;
                                            v163 = v972;
                                            do
                                            {
                                              v328 = *(&v990 + v323);
                                              v330 = *v325++;
                                              v329 = v330;
                                              if (v328 >= v330)
                                              {
                                                v328 = v329;
                                              }

                                              v331 = v929 + 384 + 12 * v944 + 4 * v328;
                                              *(v331 + 2 * ((v327 & 0xFFFF0000) != 0)) |= v327 >> (16 * ((v327 & 0xFFFF0000) != 0));
                                              v327 *= 2;
                                              ++v323;
                                              --v326;
                                            }

                                            while (v326);
                                            v212 = v977;
                                            v224 = v981;
                                            if (!v925)
                                            {
                                              for (m = 0; m != v299; ++m)
                                              {
                                                v333 = LOBYTE(v995[8 * m + 242]);
                                                if (v297 > v333)
                                                {
                                                  v334 = *(&v990 + 32 * m);
                                                  do
                                                  {
                                                    v335 = *(&v990 + 32 * m + v333);
                                                    if (v335 < v334)
                                                    {
                                                      v334 = *(&v990 + 32 * m + v333);
                                                    }

                                                    v336 = v929 + 12 * (v333 + v947) + 4 * v334;
                                                    *(v336 + 2 * ((v314 & 0xFFFF0000) != 0)) |= v314 >> (16 * ((v314 & 0xFFFF0000) != 0));
                                                    v333 += *(&v995[8 * m + 242] + v333);
                                                    v334 = v335;
                                                  }

                                                  while (v333 < v297);
                                                }

                                                v314 *= 2;
                                              }

                                              v337 = 0;
                                              v324 = __dsta;
                                              v316 = v936;
                                              do
                                              {
                                                v338 = *(&v995[754] + v337);
                                                if (v299 > v338)
                                                {
                                                  v339 = *(&v995[498] + v337);
                                                  do
                                                  {
                                                    v340 = *(&v995[8 * v338 + 498] + v337);
                                                    if (v339 >= v340)
                                                    {
                                                      v339 = *(&v995[8 * v338 + 498] + v337);
                                                    }

                                                    v341 = v929 + 384 + 12 * (v338 + v944) + 4 * v339;
                                                    *(v341 + 2 * ((v322 & 0xFFFF0000) != 0)) |= v322 >> (16 * ((v322 & 0xFFFF0000) != 0));
                                                    v338 += *(&v995[8 * v338 + 754] + v337);
                                                    v339 = v340;
                                                  }

                                                  while (v338 < v299);
                                                }

                                                ++v337;
                                                v322 *= 2;
                                              }

                                              while (v337 != v297);
                                            }

                                            v342 = (v297 - 1);
                                            do
                                            {
                                              *v316++ = *(&v990 + v342);
                                              v342 += 32;
                                              --v315;
                                            }

                                            while (v315);
                                            memcpy(v324, &v995[8 * (v299 - 1) + 498], v297);
                                            v275 = v982;
                                            v282 = v932;
                                            v296 = v922;
                                            v295 = v923;
                                            v301 = v944;
                                            v300 = v947;
                                            v284 = v920;
                                            v285 = v921;
                                            v289 = v919;
                                            v291 = v918;
                                            LODWORD(v288) = v917;
                                            v293 = v916;
                                            v298 = v915;
                                          }

                                          LOBYTE(v234) = v968;
                                          v272 = v961;
                                          if (v163)
                                          {
                                            v343 = v293 != 3;
                                            if (v293 == 3)
                                            {
                                              v344 = v290;
                                            }

                                            else
                                            {
                                              v344 = v290 + 1;
                                            }

                                            v345 = v344 >> v343;
                                            v346 = v288 >> v343;
                                            v347 = v957;
                                            if (v293 != 3)
                                            {
                                              v347 = v957 + 1;
                                            }

                                            v348 = v345 - v346;
                                            v349 = v347 >> v343;
                                            if (v348 >= v349)
                                            {
                                              v350 = v349;
                                            }

                                            else
                                            {
                                              v350 = v348;
                                            }

                                            v351 = v293 == 1;
                                            if (v293 == 1)
                                            {
                                              v352 = v291 + 1;
                                            }

                                            else
                                            {
                                              v352 = v291;
                                            }

                                            v353 = v352 >> v351;
                                            v354 = v289 >> v351;
                                            if (v293 == 1)
                                            {
                                              ++v298;
                                            }

                                            v355 = v353 - v354;
                                            v356 = v298 >> v351;
                                            if (v355 >= v356)
                                            {
                                              v357 = v356;
                                            }

                                            else
                                            {
                                              v357 = v355;
                                            }

                                            if (v350 && v357)
                                            {
                                              v358 = 0;
                                              v359 = 4 * v285 * v354 + 4 * v346 + v284 + 3;
                                              do
                                              {
                                                v360 = v359;
                                                v361 = v350;
                                                do
                                                {
                                                  *(v360 - 1) = v279[34];
                                                  *v360 = v279[50];
                                                  v360 += 4;
                                                  --v361;
                                                }

                                                while (v361);
                                                ++v358;
                                                v359 += 4 * v285;
                                              }

                                              while (v358 != v357);
                                              sub_2775E251C((v283 + 768), v301 >> v351, v300 >> v343, v350, v357, v292, v282, v295, v296, v293 != 3, 0);
                                              v275 = v982;
                                            }
                                          }
                                        }

                                        v362 = *(v10 + 3256);
                                        if (v234)
                                        {
                                          v363 = *(v985 + 21);
                                          v990 = *(v985 + 2);
                                          LOBYTE(v991) = *(v985 + 24) + 1;
                                          if (*(v985 + 28))
                                          {
                                            v364 = 0;
                                          }

                                          else
                                          {
                                            v364 = -1;
                                          }

                                          BYTE1(v991) = v364;
                                          BYTE2(v991) = v275;
                                          if (v212 >= v984)
                                          {
                                            v365 = v984;
                                          }

                                          else
                                          {
                                            v365 = v212;
                                          }

                                          v367 = v365 > 1 && v363 == 2;
                                          HIBYTE(v991) = v367 | (2 * (v363 == 3));
                                          (*(v362 + 63016))(v9 + 8 * (*(v9 + 28) & 0x1FLL) + 712, &v990, *(v9 + 24), v212);
                                        }

                                        else
                                        {
                                          v368 = *(v985 + 21);
                                          v88 = v368 == 6;
                                          v990 = *(v985 + 1);
                                          LOBYTE(v991) = *(v985 + 24) + 1;
                                          BYTE1(v991) = *(v985 + 25) + 1;
                                          BYTE2(v991) = v275;
                                          v369 = (0x178u >> v368) & 2;
                                          if (v88)
                                          {
                                            LOBYTE(v369) = v369 + 1;
                                          }

                                          HIBYTE(v991) = v369;
                                          (*(v362 + 63016))(v9 + 8 * (*(v9 + 28) & 0x1FLL) + 712, &v990, *(v9 + 24), v212);
                                        }

                                        if (v984 > 7)
                                        {
                                          switch(v984)
                                          {
                                            case 8:
                                              v422 = (v9 + v224);
                                              v422[20] = 0x101010101010101 * v954;
                                              v422[28] = 0x101010101010101 * *(v985 + 5);
                                              v422[32] = 0;
                                              v422[24] = 0x101010101010101 * *(v985 + 6);
                                              v422[78] = 0;
                                              v422[1028] = 0;
                                              v422[56] = 0x101010101010101 * v978[3];
                                              v422[36] = 0x101010101010101 * *(v985 + 20);
                                              v422[48] = 0x101010101010101 * __ba;
                                              v422[52] = 0x101010101010101 * v272;
                                              v422[4] = 0x101010101010101 * *(v985 + 21);
                                              v422[40] = 0x101010101010101 * *(v985 + 24);
                                              v422[44] = 0x101010101010101 * *(v985 + 25);
                                              break;
                                            case 16:
                                              v424 = v9 + v224;
                                              *(v424 + 160) = vdupq_n_s64(0x101010101010101 * v954);
                                              *(v424 + 224) = vdupq_n_s64(0x101010101010101 * *(v985 + 5));
                                              *(v424 + 256) = 0u;
                                              *(v424 + 192) = vdupq_n_s64(0x101010101010101 * *(v985 + 6));
                                              *(v424 + 624) = 0u;
                                              *(v424 + 8224) = 0u;
                                              *(v424 + 448) = vdupq_n_s64(0x101010101010101 * v978[3]);
                                              *(v424 + 288) = vdupq_n_s64(0x101010101010101 * *(v985 + 20));
                                              *(v424 + 384) = vdupq_n_s64(0x101010101010101 * __ba);
                                              *(v424 + 416) = vdupq_n_s64(0x101010101010101 * v272);
                                              *(v424 + 32) = vdupq_n_s64(0x101010101010101 * *(v985 + 21));
                                              *(v424 + 320) = vdupq_n_s64(0x101010101010101 * *(v985 + 24));
                                              *(v424 + 352) = vdupq_n_s64(0x101010101010101 * *(v985 + 25));
                                              break;
                                            case 32:
                                              v371 = v9 + 160;
                                              v372 = vdupq_n_s64(0x101010101010101 * v954);
                                              *(v371 + v224) = v372;
                                              v373 = v224 + 16;
                                              *(v371 + v373) = v372;
                                              v374 = vdupq_n_s64(0x101010101010101 * *(v985 + 5));
                                              v375 = v9 + 224;
                                              *(v375 + v224) = v374;
                                              *(v375 + v373) = v374;
                                              v376 = v9 + 256;
                                              *(v376 + v224) = 0u;
                                              *(v376 + v373) = 0u;
                                              v377 = v9 + 192;
                                              v378 = vdupq_n_s64(0x101010101010101 * *(v985 + 6));
                                              *(v377 + v224) = v378;
                                              *(v377 + v373) = v378;
                                              v379 = v9 + 624;
                                              *(v379 + v224) = 0u;
                                              *(v379 + v373) = 0u;
                                              v380 = v9 + 8224;
                                              *(v380 + v224) = 0u;
                                              *(v380 + v373) = 0u;
                                              v381 = v9 + 448;
                                              v382 = vdupq_n_s64(0x101010101010101 * v978[3]);
                                              *(v381 + v224) = v382;
                                              *(v381 + v373) = v382;
                                              v383 = v9 + 288;
                                              v384 = vdupq_n_s64(0x101010101010101 * *(v985 + 20));
                                              *(v383 + v224) = v384;
                                              *(v383 + v373) = v384;
                                              v385 = v9 + 384;
                                              v386 = vdupq_n_s64(0x101010101010101 * __ba);
                                              *(v385 + v224) = v386;
                                              *(v385 + v373) = v386;
                                              v387 = v9 + 416;
                                              v388 = vdupq_n_s64(0x101010101010101 * v272);
                                              *(v387 + v224) = v388;
                                              *(v387 + v373) = v388;
                                              v389 = vdupq_n_s64(0x101010101010101 * *(v985 + 21));
                                              v390 = v9 + 32;
                                              *(v390 + v224) = v389;
                                              *(v390 + v373) = v389;
                                              v391 = v9 + 320;
                                              v392 = vdupq_n_s64(0x101010101010101 * *(v985 + 24));
                                              *(v391 + v224) = v392;
                                              *(v391 + v373) = v392;
                                              v393 = v9 + 352;
                                              v394 = vdupq_n_s64(0x101010101010101 * *(v985 + 25));
                                              *(v393 + v224) = v394;
                                              *(v393 + v373) = v394;
                                              break;
                                          }
                                        }

                                        else
                                        {
                                          switch(v984)
                                          {
                                            case 1:
                                              v421 = (v9 + v224);
                                              v421[160] = v954;
                                              v421[224] = *(v985 + 5);
                                              v421[256] = 0;
                                              v421[192] = *(v985 + 6);
                                              v421[624] = 0;
                                              v421[8224] = 0;
                                              v421[448] = v978[3];
                                              v421[288] = *(v985 + 20);
                                              v421[384] = __ba;
                                              v421[416] = v272;
                                              v421[32] = *(v985 + 21);
                                              v421[320] = *(v985 + 24);
                                              v421[352] = *(v985 + 25);
                                              break;
                                            case 2:
                                              v423 = (v9 + v224);
                                              v423[80] = 257 * v954;
                                              v423[112] = *(v985 + 5) | (*(v985 + 5) << 8);
                                              v423[128] = 0;
                                              v423[96] = *(v985 + 6) | (*(v985 + 6) << 8);
                                              v423[312] = 0;
                                              v423[4112] = 0;
                                              v423[224] = v978[3] | (v978[3] << 8);
                                              v423[144] = *(v985 + 20) | (*(v985 + 20) << 8);
                                              v423[192] = 257 * __ba;
                                              v423[208] = 257 * v272;
                                              v423[16] = *(v985 + 21) | (*(v985 + 21) << 8);
                                              v423[160] = 257 * *(v985 + 24);
                                              v423[176] = *(v985 + 25) | (*(v985 + 25) << 8);
                                              break;
                                            case 4:
                                              v370 = (v9 + v224);
                                              v370[40] = 16843009 * v954;
                                              v370[56] = 16843009 * *(v985 + 5);
                                              v370[64] = 0;
                                              v370[48] = 16843009 * *(v985 + 6);
                                              v370[156] = 0;
                                              v370[2056] = 0;
                                              v370[112] = 16843009 * v978[3];
                                              v370[72] = 16843009 * *(v985 + 20);
                                              v370[96] = 16843009 * __ba;
                                              v370[104] = 16843009 * v272;
                                              v370[8] = 16843009 * *(v985 + 21);
                                              v370[80] = 16843009 * *(v985 + 24);
                                              v370[88] = 16843009 * *(v985 + 25);
                                              break;
                                          }
                                        }

                                        if (v212 <= 7)
                                        {
                                          switch(v212)
                                          {
                                            case 1:
                                              *(*(v9 + 656) + v979 + 128) = v954;
                                              *(*(v9 + 656) + v979 + 192) = *(v985 + 5);
                                              *(*(v9 + 656) + v979 + 224) = 0;
                                              *(*(v9 + 656) + v979 + 160) = *(v985 + 6);
                                              *(*(v9 + 656) + v979 + 592) = 0;
                                              *(v9 + v979 + 0x2000) = 0;
                                              *(*(v9 + 656) + v979 + 416) = v978[2];
                                              *(*(v9 + 656) + v979 + 256) = *(v985 + 20);
                                              *(*(v9 + 656) + v979 + 352) = __ba;
                                              *(*(v9 + 656) + v979 + 384) = v272;
                                              *(*(v9 + 656) + v979) = *(v985 + 21);
                                              *(*(v9 + 656) + v979 + 288) = *(v985 + 24);
                                              *(*(v9 + 656) + v979 + 320) = *(v985 + 25);
                                              if (!v163)
                                              {
                                                goto LABEL_582;
                                              }

                                              goto LABEL_579;
                                            case 2:
                                              *(*(v9 + 656) + v979 + 128) = 257 * v954;
                                              *(*(v9 + 656) + v979 + 192) = *(v985 + 5) | (*(v985 + 5) << 8);
                                              *(*(v9 + 656) + v979 + 224) = 0;
                                              *(*(v9 + 656) + v979 + 160) = *(v985 + 6) | (*(v985 + 6) << 8);
                                              *(*(v9 + 656) + v979 + 592) = 0;
                                              *(v9 + v979 + 0x2000) = 0;
                                              *(*(v9 + 656) + v979 + 416) = v978[2] | (v978[2] << 8);
                                              *(*(v9 + 656) + v979 + 256) = *(v985 + 20) | (*(v985 + 20) << 8);
                                              *(*(v9 + 656) + v979 + 352) = 257 * __ba;
                                              *(*(v9 + 656) + v979 + 384) = 257 * v272;
                                              *(*(v9 + 656) + v979) = *(v985 + 21) | (*(v985 + 21) << 8);
                                              *(*(v9 + 656) + v979 + 288) = 257 * *(v985 + 24);
                                              *(*(v9 + 656) + v979 + 320) = *(v985 + 25) | (*(v985 + 25) << 8);
                                              break;
                                            case 4:
                                              *(*(v9 + 656) + v979 + 128) = 16843009 * v954;
                                              *(*(v9 + 656) + v979 + 192) = 16843009 * *(v985 + 5);
                                              *(*(v9 + 656) + v979 + 224) = 0;
                                              *(*(v9 + 656) + v979 + 160) = 16843009 * *(v985 + 6);
                                              *(*(v9 + 656) + v979 + 592) = 0;
                                              *(v9 + v979 + 0x2000) = 0;
                                              *(*(v9 + 656) + v979 + 416) = 16843009 * v978[2];
                                              *(*(v9 + 656) + v979 + 256) = 16843009 * *(v985 + 20);
                                              *(*(v9 + 656) + v979 + 352) = 16843009 * __ba;
                                              *(*(v9 + 656) + v979 + 384) = 16843009 * v272;
                                              *(*(v9 + 656) + v979) = 16843009 * *(v985 + 21);
                                              *(*(v9 + 656) + v979 + 288) = 16843009 * *(v985 + 24);
                                              *(*(v9 + 656) + v979 + 320) = 16843009 * *(v985 + 25);
                                              if (!v163)
                                              {
                                                goto LABEL_582;
                                              }

LABEL_579:
                                              v27 = v955;
                                              goto LABEL_642;
                                          }

                                          goto LABEL_578;
                                        }

                                        switch(v212)
                                        {
                                          case 8:
                                            v428 = v979;
                                            *(*(v9 + 656) + v979 + 128) = 0x101010101010101 * v954;
                                            *(*(v9 + 656) + v979 + 192) = 0x101010101010101 * *(v985 + 5);
                                            *(*(v9 + 656) + v979 + 224) = 0;
                                            *(*(v9 + 656) + v979 + 160) = 0x101010101010101 * *(v985 + 6);
                                            *(*(v9 + 656) + v979 + 592) = 0;
                                            *(v9 + v979 + 0x2000) = 0;
                                            *(*(v9 + 656) + v979 + 416) = 0x101010101010101 * v978[2];
                                            *(*(v9 + 656) + v979 + 256) = 0x101010101010101 * *(v985 + 20);
                                            *(*(v9 + 656) + v979 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v979 + 384) = 0x101010101010101 * v272;
                                            *(*(v9 + 656) + v979) = 0x101010101010101 * *(v985 + 21);
                                            *(*(v9 + 656) + v979 + 288) = 0x101010101010101 * *(v985 + 24);
                                            v436 = 0x101010101010101 * *(v985 + 25);
                                            break;
                                          case 0x10:
                                            v438 = 0x101010101010101 * v954;
                                            *(*(v9 + 656) + v979 + 128) = v438;
                                            v439 = v979 + 8;
                                            *(*(v9 + 656) + v439 + 128) = v438;
                                            v440 = 0x101010101010101 * *(v985 + 5);
                                            *(*(v9 + 656) + v979 + 192) = v440;
                                            *(*(v9 + 656) + v439 + 192) = v440;
                                            *(*(v9 + 656) + v979 + 224) = 0;
                                            *(*(v9 + 656) + v439 + 224) = 0;
                                            v441 = 0x101010101010101 * *(v985 + 6);
                                            *(*(v9 + 656) + v979 + 160) = v441;
                                            *(*(v9 + 656) + v439 + 160) = v441;
                                            *(*(v9 + 656) + v979 + 592) = 0;
                                            *(*(v9 + 656) + v439 + 592) = 0;
                                            v442 = v9 + v979;
                                            *(v442 + 8200) = 0;
                                            *(v442 + 0x2000) = 0;
                                            v443 = 0x101010101010101 * v978[2];
                                            *(*(v9 + 656) + v979 + 416) = v443;
                                            *(*(v9 + 656) + v439 + 416) = v443;
                                            v444 = 0x101010101010101 * *(v985 + 20);
                                            *(*(v9 + 656) + v979 + 256) = v444;
                                            *(*(v9 + 656) + v439 + 256) = v444;
                                            *(*(v9 + 656) + v979 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v439 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v979 + 384) = 0x101010101010101 * v272;
                                            *(*(v9 + 656) + v439 + 384) = 0x101010101010101 * v272;
                                            v445 = 0x101010101010101 * *(v985 + 21);
                                            *(*(v9 + 656) + v979) = v445;
                                            *(*(v9 + 656) + v439) = v445;
                                            v446 = 0x101010101010101 * *(v985 + 24);
                                            *(*(v9 + 656) + v979 + 288) = v446;
                                            *(*(v9 + 656) + v439 + 288) = v446;
                                            v436 = 0x101010101010101 * *(v985 + 25);
                                            *(*(v9 + 656) + v979 + 320) = v436;
                                            v437 = *(v9 + 656) + v439;
LABEL_581:
                                            *(v437 + 320) = v436;
                                            if (v163)
                                            {
                                              goto LABEL_579;
                                            }

                                            goto LABEL_582;
                                          case 0x20:
                                            v425 = 0x101010101010101 * v954;
                                            *(*(v9 + 656) + v979 + 128) = v425;
                                            v426 = v979 + 8;
                                            *(*(v9 + 656) + v426 + 128) = v425;
                                            v427 = v979 + 16;
                                            *(*(v9 + 656) + v427 + 128) = v425;
                                            v428 = v979 + 24;
                                            *(*(v9 + 656) + v428 + 128) = v425;
                                            v429 = 0x101010101010101 * *(v985 + 5);
                                            *(*(v9 + 656) + v979 + 192) = v429;
                                            *(*(v9 + 656) + v426 + 192) = v429;
                                            *(*(v9 + 656) + v427 + 192) = v429;
                                            *(*(v9 + 656) + v428 + 192) = v429;
                                            *(*(v9 + 656) + v979 + 224) = 0;
                                            *(*(v9 + 656) + v426 + 224) = 0;
                                            *(*(v9 + 656) + v427 + 224) = 0;
                                            *(*(v9 + 656) + v428 + 224) = 0;
                                            v430 = 0x101010101010101 * *(v985 + 6);
                                            *(*(v9 + 656) + v979 + 160) = v430;
                                            *(*(v9 + 656) + v426 + 160) = v430;
                                            *(*(v9 + 656) + v427 + 160) = v430;
                                            *(*(v9 + 656) + v428 + 160) = v430;
                                            *(*(v9 + 656) + v979 + 592) = 0;
                                            *(*(v9 + 656) + v426 + 592) = 0;
                                            *(*(v9 + 656) + v427 + 592) = 0;
                                            *(*(v9 + 656) + v428 + 592) = 0;
                                            v431 = v9 + 0x2000;
                                            *(v431 + v979) = 0u;
                                            *(v431 + v427) = 0u;
                                            v432 = 0x101010101010101 * v978[2];
                                            *(*(v9 + 656) + v979 + 416) = v432;
                                            *(*(v9 + 656) + v426 + 416) = v432;
                                            *(*(v9 + 656) + v427 + 416) = v432;
                                            *(*(v9 + 656) + v428 + 416) = v432;
                                            v433 = 0x101010101010101 * *(v985 + 20);
                                            *(*(v9 + 656) + v979 + 256) = v433;
                                            *(*(v9 + 656) + v426 + 256) = v433;
                                            *(*(v9 + 656) + v427 + 256) = v433;
                                            *(*(v9 + 656) + v428 + 256) = v433;
                                            *(*(v9 + 656) + v979 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v426 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v427 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v428 + 352) = 0x101010101010101 * __ba;
                                            *(*(v9 + 656) + v979 + 384) = 0x101010101010101 * v272;
                                            *(*(v9 + 656) + v426 + 384) = 0x101010101010101 * v272;
                                            *(*(v9 + 656) + v427 + 384) = 0x101010101010101 * v272;
                                            *(*(v9 + 656) + v428 + 384) = 0x101010101010101 * v272;
                                            v434 = 0x101010101010101 * *(v985 + 21);
                                            *(*(v9 + 656) + v979) = v434;
                                            *(*(v9 + 656) + v426) = v434;
                                            *(*(v9 + 656) + v427) = v434;
                                            *(*(v9 + 656) + v428) = v434;
                                            v435 = 0x101010101010101 * *(v985 + 24);
                                            *(*(v9 + 656) + v979 + 288) = v435;
                                            *(*(v9 + 656) + v426 + 288) = v435;
                                            *(*(v9 + 656) + v427 + 288) = v435;
                                            *(*(v9 + 656) + v428 + 288) = v435;
                                            v436 = 0x101010101010101 * *(v985 + 25);
                                            *(*(v9 + 656) + v979 + 320) = v436;
                                            *(*(v9 + 656) + v426 + 320) = v436;
                                            *(*(v9 + 656) + v427 + 320) = v436;
                                            break;
                                          default:
LABEL_578:
                                            if (v163)
                                            {
                                              goto LABEL_579;
                                            }

LABEL_582:
                                            v27 = v955;
                                            goto LABEL_935;
                                        }

                                        v437 = *(v9 + 656) + v428;
                                        goto LABEL_581;
                                      }

LABEL_419:
                                      v272 = v271;
                                      goto LABEL_420;
                                    }

                                    sub_27758434C(v983 + 13824, v983 + 32 * v903 + 960, 15);
                                    v906 = 16;
                                  }

                                  else
                                  {
                                    v905 = 3;
                                    v906 = 20;
                                  }

                                  *(v985 + v906) = v905;
                                  goto LABEL_1266;
                                }

                                v897 = *(v10 + 8);
                              }

                              else
                              {
                                v212 = v977;
                              }

                              if (v897[400])
                              {
                                v907 = sub_2775C066C(v897[412], *(*(v10 + 2112) + 248), *(*(v10 + 32 + 296 * *(v985 + 24) + 8) + 248), *(*(v10 + 32 + 296 * *(v985 + 25) + 8) + 248), *(v9 + 656), v9 + 32, v224, v979);
                                sub_277584658(v983 + 13824, (v983 + 4 * v907 + 5676));
                                *(v985 + 20) = v908 + 1;
                              }

                              else
                              {
                                *(v985 + 20) = 2;
                              }

                              goto LABEL_1267;
                            }

                            v881 = 0;
                            goto LABEL_1214;
                          }

                          v913 = sub_2775BFDD0(*(v9 + 656), v9 + 32, v981, v979, __dst, v943);
                          sub_277584658(v983 + 13824, (v983 + 4 * v913 + 5916));
                          v874 = v985;
                          v768 = *(v985 + 25) + v914;
                        }

                        *(v874 + 25) = v768;
                        goto LABEL_1193;
                      }

                      v202 = v10;
                      v205 = *(v10 + 8);
                      v203 = v983 + 13952;
                      sub_2775BEF24(*(v205 + 32), v165, v168, v983 + 13952);
                    }

                    v204 = v931;
                    *(v983 + 14048) = v203;
                    v10 = v202;
                    goto LABEL_338;
                  }

                  v954 = 0;
                  LODWORD(v2) = v982;
                }

                v102 = *(v10 + 3432);
                v103 = *(v10 + 2816) + v102 * *(v9 + 28) + *(v9 + 24);
                if (v13 <= v960 || v967 <= v956)
                {
                  if (v13 <= v960)
                  {
                    v113 = 0;
                    if (v967 <= v956)
                    {
                      v112 = 0;
                    }

                    else
                    {
                      v112 = *(v103 - v102);
                    }
                  }

                  else
                  {
                    v113 = 0;
                    v112 = *(v103 - 1);
                  }
                }

                else
                {
                  v104 = *(v103 - 1);
                  v105 = *(v103 - v102);
                  v106 = *(v103 + ~v102);
                  v107 = v104 == v105;
                  v108 = v106 == v104;
                  v109 = v105 == v106;
                  v110 = v105 == v106 || v106 == v104;
                  v111 = (v104 == v105) | v110;
                  if (v109)
                  {
                    v112 = v105;
                  }

                  else
                  {
                    v112 = v104;
                  }

                  v113 = 2;
                  if (!v107 || !v108)
                  {
                    v113 = v111;
                  }
                }

                if (*(v985 + 6) || (sub_27758428C(v983 + 13824, (v983 + 16 * v113 + 3504), 7), v151 = *(*(v10 + 24) + 807), v153 = sub_2775BEEC8(v152, v112, v151 + 1), LODWORD(v2) = v982, v112 = v153, v153 <= v151))
                {
                  if (v112 <= 7)
                  {
                    LODWORD(v115) = v112;
                  }

                  else
                  {
                    LODWORD(v115) = 0;
                  }
                }

                else
                {
                  LODWORD(v115) = 0;
                }

                goto LABEL_257;
              }

              LODWORD(v2) = v982;
              v43 = v56;
              if (v54)
              {
LABEL_169:
                v99 = v43;
                sub_277584658(v983 + 13824, (v983 + 4 * (*(v9 + v981 + 192) + *(*(v9 + 656) + v15 + 160)) + 6012));
                v43 = v99;
                LODWORD(v2) = v982;
                v59 = v100;
                goto LABEL_170;
              }
            }

            else
            {
              *(v985 + 5) = 0;
              v58 = v985 + 5;
              if (v54)
              {
                goto LABEL_169;
              }
            }

LABEL_167:
            if (v43[7])
            {
              v59 = 1;
              goto LABEL_170;
            }

            goto LABEL_169;
          }

          v34 = *(v9 + 24);
          v33 = *(v9 + 28);
        }

        v81 = *(v10 + 3432);
        v82 = *(v10 + 2816) + v81 * v33 + v34;
        if (v13 <= v960 || v967 <= v956)
        {
          if (v13 <= v960)
          {
            v92 = 0;
            if (v967 <= v956)
            {
              v91 = 0;
            }

            else
            {
              v91 = *(v82 - v81);
            }
          }

          else
          {
            v92 = 0;
            v91 = *(v82 - 1);
          }
        }

        else
        {
          v83 = *(v82 - 1);
          v84 = *(v82 - v81);
          v85 = *(v82 + ~v81);
          v86 = v83 == v84;
          v87 = v85 == v83;
          v88 = v84 == v85;
          v89 = v84 == v85 || v85 == v83;
          v90 = (v83 == v84) | v89;
          if (v88)
          {
            v91 = v84;
          }

          else
          {
            v91 = v83;
          }

          v92 = 2;
          if (!v86 || !v87)
          {
            v92 = v90;
          }
        }

        sub_27758428C(v983 + 13824, (v983 + 16 * v92 + 3504), 7);
        v32 = *(v10 + 24);
        v96 = v32[807];
        v98 = sub_2775BEEC8(v97, v91, v96 + 1);
        v954 = 0;
        if (v96 >= v98)
        {
          LOBYTE(v36) = v98;
        }

        else
        {
          LOBYTE(v36) = 0;
        }

        if ((v36 & 0xF8) != 0)
        {
          LOBYTE(v36) = 0;
        }

        *(v985 + 4) = v36;
        goto LABEL_161;
      }

      v43 = 0;
      v954 = 0;
    }

    else
    {
      v43 = 0;
      v954 = 0;
      *(v985 + 4) = 0;
    }

    v54 = 1;
    goto LABEL_69;
  }

  if (*(v985 + 3))
  {
    (*(v10 + 3288))(v9, v2, v4, v985);
    if (*(v985 + 8) == 13)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v985 + 8);
    }

    if (v984 > 7)
    {
      if (v984 != 8)
      {
        v30 = v982;
        if (v984 == 16)
        {
          v63 = v9 + v981;
          *(v63 + 32) = vdupq_n_s64(0x101010101010101 * v29);
          *&v64 = 0x101010101010101;
          *(&v64 + 1) = 0x101010101010101;
          *(v63 + 256) = v64;
        }

        else if (v984 == 32)
        {
          v44 = v9 + 32;
          v45 = vdupq_n_s64(0x101010101010101 * v29);
          *(v44 + v981) = v45;
          v46 = v981 + 16;
          *(v44 + v46) = v45;
          v47 = v9 + 256;
          v45.i64[0] = 0x101010101010101;
          v45.i64[1] = 0x101010101010101;
          *(v47 + v981) = v45;
          *(v47 + v46) = v45;
        }

LABEL_85:
        if (v17 > 7)
        {
          if (v17 == 8)
          {
            *(*(v9 + 656) + v15) = 0x101010101010101 * v29;
            v70 = *(v9 + 656) + v15;
          }

          else
          {
            if (v17 == 16)
            {
              v71 = 0x101010101010101 * v29;
              *(*(v9 + 656) + v15) = v71;
              v68 = (v13 & 0x1F) + 8;
              *(*(v9 + 656) + v68) = v71;
              v69 = *(v9 + 656) + v15;
            }

            else
            {
              if (v17 != 32)
              {
                goto LABEL_100;
              }

              v65 = 0x101010101010101 * v29;
              *(*(v9 + 656) + v15) = v65;
              v66 = (v13 & 0x1F) + 8;
              *(*(v9 + 656) + v66) = v65;
              v67 = (v13 & 0x1F) + 16;
              *(*(v9 + 656) + v67) = v65;
              v68 = (v13 & 0x1F) + 24;
              *(*(v9 + 656) + v68) = v65;
              *(*(v9 + 656) + v15 + 224) = 0x101010101010101;
              *(*(v9 + 656) + v66 + 224) = 0x101010101010101;
              v69 = *(v9 + 656) + v67;
            }

            *(v69 + 224) = 0x101010101010101;
            v70 = *(v9 + 656) + v68;
          }

          *(v70 + 224) = 0x101010101010101;
        }

        else
        {
          switch(v17)
          {
            case 1:
              *(*(v9 + 656) + v15) = v29;
              *(*(v9 + 656) + v15 + 224) = 1;
              break;
            case 2:
              *(*(v9 + 656) + v15) = v29 | (v29 << 8);
              *(*(v9 + 656) + v15 + 224) = 257;
              break;
            case 4:
              *(*(v9 + 656) + v15) = 16843009 * v29;
              *(*(v9 + 656) + v15 + 224) = 16843009;
              break;
          }
        }

LABEL_100:
        if (*(*(v10 + 24) + 232))
        {
          v72 = v9 + 672;
          v73 = *(v9 + 28) & 0x1F;
          if (v17)
          {
            v74 = (*(v72 + 8 * (v984 + v73 + 4)) + 12 * *(v9 + 24) + 10);
            v75 = v17;
            do
            {
              *(v74 - 2) = 0;
              *v74 = v30;
              v74 += 12;
              --v75;
            }

            while (v75);
            v73 = *(v9 + 28) & 0x1F;
          }

          if (v984 >= 2)
          {
            v76 = (v72 + 8 * (v73 + 5));
            v77 = (v984 - 1);
            v78 = *(v9 + 24);
            do
            {
              *(*v76 + 12 * (v78 + v17) - 4) = 0;
              v79 = *v76++;
              v78 = *(v9 + 24);
              *(v79 + 12 * (v78 + v17) - 2) = v30;
              --v77;
            }

            while (v77);
          }
        }

        if (v26)
        {
          if (v27 > 7)
          {
            switch(v27)
            {
              case 8:
                *(v9 + v973 + 592) = 0x101010101010101 * *(v985 + 9);
                break;
              case 16:
                *(v9 + v973 + 592) = vdupq_n_s64(0x101010101010101 * *(v985 + 9));
                break;
              case 32:
                v80 = vdupq_n_s64(0x101010101010101 * *(v985 + 9));
                *(v9 + 592 + v973) = v80;
                *(v9 + 592 + v973 + 16) = v80;
                break;
            }
          }

          else
          {
            switch(v27)
            {
              case 1:
                *(v9 + v973 + 592) = *(v985 + 9);
                break;
              case 2:
                *(v9 + v973 + 592) = *(v985 + 9) | (*(v985 + 9) << 8);
                break;
              case 4:
                *(v9 + v973 + 592) = 16843009 * *(v985 + 9);
                break;
            }
          }

          result = 0;
          if (v971 > 7)
          {
            switch(v971)
            {
              case 8:
                result = 0;
                *(*(v9 + 656) + v974 + 560) = 0x101010101010101 * *(v985 + 9);
                break;
              case 16:
                result = 0;
                v95 = 0x101010101010101 * *(v985 + 9);
                *(*(v9 + 656) + v974 + 560) = v95;
                *(*(v9 + 656) + v974 + 568) = v95;
                break;
              case 32:
                result = 0;
                v94 = 0x101010101010101 * *(v985 + 9);
                *(*(v9 + 656) + v974 + 560) = v94;
                *(*(v9 + 656) + v974 + 568) = v94;
                *(*(v9 + 656) + v974 + 576) = v94;
                *(*(v9 + 656) + v974 + 584) = v94;
                break;
            }
          }

          else
          {
            switch(v971)
            {
              case 1:
                result = 0;
                *(*(v9 + 656) + v974 + 560) = *(v985 + 9);
                break;
              case 2:
                result = 0;
                *(*(v9 + 656) + v974 + 560) = *(v985 + 9) | (*(v985 + 9) << 8);
                break;
              case 4:
                result = 0;
                *(*(v9 + 656) + v974 + 560) = 16843009 * *(v985 + 9);
                break;
            }
          }

          return result;
        }

        return 0;
      }

      v61 = v9 + v981;
      *(v61 + 32) = 0x101010101010101 * v29;
      *(v61 + 256) = 0x101010101010101;
    }

    else
    {
      if (v984 != 1)
      {
        v30 = v982;
        if (v984 == 2)
        {
          v62 = v9 + v981;
          *(v62 + 32) = v29 | (v29 << 8);
          *(v62 + 256) = 257;
        }

        else if (v984 == 4)
        {
          v31 = v9 + v981;
          *(v31 + 32) = 16843009 * v29;
          *(v31 + 256) = 16843009;
        }

        goto LABEL_85;
      }

      v60 = v9 + v981;
      *(v60 + 32) = v29;
      *(v60 + 256) = 1;
    }

    v30 = v982;
    goto LABEL_85;
  }

  if ((*(*(v10 + 24) + 232) & 1) != 0 && !*(v985 + 20) && *(v985 + 22) == 2)
  {
    v42 = (v980 + 448);
    if (*(v985 + 6) == -32768)
    {
      *v42 = 0;
    }

    else
    {
      *(v980 + 448) = 3;
      *(v980 + 460) = *(v985 + 6) + 0x10000;
      *(v980 + 464) = *(v985 + 7);
      *(v980 + 468) = *(v985 + 8);
      *(v980 + 472) = *(v985 + 9) + 0x10000;
      sub_2775CF1E8(v17, v18, *(v985 + 2), v42, v13, v12);
      sub_2775CF000(v42);
      v2 = v982;
    }
  }

  if ((*(v10 + 3296))(v9, v2, v985))
  {
    return 0xFFFFFFFFLL;
  }

  v121 = &unk_2775EF656 + 2 * *(v985 + 27);
  if (v984 > 7)
  {
    v122 = v982;
    switch(v984)
    {
      case 8:
        v131 = (v9 + v981);
        v131[48] = 0x101010101010101 * *v121;
        v131[52] = 0x101010101010101 * v121[1];
        v131[32] = 0;
        break;
      case 16:
        v133 = (v9 + v981);
        v133[24] = vdupq_n_s64(0x101010101010101 * *v121);
        v133[26] = vdupq_n_s64(0x101010101010101 * v121[1]);
        v133[16].i64[0] = 0;
        v133[16].i64[1] = 0;
        break;
      case 32:
        v124 = v9 + 384;
        v125 = vdupq_n_s64(0x101010101010101 * *v121);
        *(v124 + v981) = v125;
        v126 = v981 + 16;
        *(v124 + v126) = v125;
        v127 = v9 + 416;
        v128 = vdupq_n_s64(0x101010101010101 * v121[1]);
        *(v127 + v981) = v128;
        *(v127 + v126) = v128;
        v129 = v9 + 256;
        *(v129 + v981) = 0u;
        *(v129 + v126) = 0u;
        break;
    }
  }

  else
  {
    v122 = v982;
    switch(v984)
    {
      case 1:
        v130 = (v9 + v981);
        v130[384] = *v121;
        v130[416] = v121[1];
        v130[256] = 0;
        break;
      case 2:
        v132 = (v9 + v981);
        v132[192] = *v121 | (*v121 << 8);
        v132[208] = v121[1] | (v121[1] << 8);
        v132[128] = 0;
        break;
      case 4:
        v123 = (v9 + v981);
        v123[96] = 16843009 * *v121;
        v123[104] = 16843009 * v121[1];
        v123[64] = 0;
        break;
    }
  }

  if (v17 > 7)
  {
    if (v17 == 8)
    {
      *(*(v9 + 656) + v979 + 352) = 0x101010101010101 * *v121;
      *(*(v9 + 656) + v979 + 384) = 0x101010101010101 * v121[1];
      v140 = *(v9 + 656) + v979;
    }

    else
    {
      if (v17 == 16)
      {
        v141 = 0x101010101010101 * *v121;
        *(*(v9 + 656) + v979 + 352) = v141;
        v137 = (v13 & 0x1F) + 8;
        *(*(v9 + 656) + v137 + 352) = v141;
        v142 = 0x101010101010101 * v121[1];
        *(*(v9 + 656) + v979 + 384) = v142;
        *(*(v9 + 656) + v137 + 384) = v142;
        v139 = *(v9 + 656) + v979;
      }

      else
      {
        if (v17 != 32)
        {
          goto LABEL_232;
        }

        v134 = 0x101010101010101 * *v121;
        *(*(v9 + 656) + v979 + 352) = v134;
        v135 = (v13 & 0x1F) + 8;
        *(*(v9 + 656) + v135 + 352) = v134;
        v136 = (v13 & 0x1F) + 16;
        *(*(v9 + 656) + v136 + 352) = v134;
        v137 = (v13 & 0x1F) + 24;
        *(*(v9 + 656) + v137 + 352) = v134;
        v138 = 0x101010101010101 * v121[1];
        *(*(v9 + 656) + v979 + 384) = v138;
        *(*(v9 + 656) + v135 + 384) = v138;
        *(*(v9 + 656) + v136 + 384) = v138;
        *(*(v9 + 656) + v137 + 384) = v138;
        *(*(v9 + 656) + v979 + 224) = 0;
        *(*(v9 + 656) + v135 + 224) = 0;
        v139 = *(v9 + 656) + v136;
      }

      *(v139 + 224) = 0;
      v140 = *(v9 + 656) + v137;
    }

    *(v140 + 224) = 0;
  }

  else
  {
    switch(v17)
    {
      case 1:
        *(*(v9 + 656) + v979 + 352) = *v121;
        *(*(v9 + 656) + v979 + 384) = v121[1];
        *(*(v9 + 656) + v979 + 224) = 0;
        break;
      case 2:
        *(*(v9 + 656) + v979 + 352) = *v121 | (*v121 << 8);
        *(*(v9 + 656) + v979 + 384) = v121[1] | (v121[1] << 8);
        *(*(v9 + 656) + v979 + 224) = 0;
        break;
      case 4:
        *(*(v9 + 656) + v979 + 352) = 16843009 * *v121;
        *(*(v9 + 656) + v979 + 384) = 16843009 * v121[1];
        *(*(v9 + 656) + v979 + 224) = 0;
        break;
    }
  }

LABEL_232:
  if (*(*(v10 + 24) + 232))
  {
    v143 = v9 + 672;
    v144 = *(v9 + 28) & 0x1F;
    if (v17)
    {
      v145 = (*(v143 + 8 * (v984 + v144 + 4)) + 12 * *(v9 + 24) + 10);
      v146 = v17;
      do
      {
        *(v145 - 2) = *(v985 + 24) + 1;
        *(v145 - 10) = *(v985 + 2);
        *v145 = v122;
        v145 += 12;
        --v146;
      }

      while (v146);
      v144 = *(v9 + 28) & 0x1F;
    }

    if (v984 >= 2)
    {
      v147 = (v143 + 8 * (v144 + 5));
      v148 = (v984 - 1);
      v149 = *(v9 + 24);
      do
      {
        *(*v147 + 12 * (v149 + v17) - 4) = *(v985 + 24) + 1;
        *(*v147 + 12 * (*(v9 + 24) + v17) - 12) = *(v985 + 2);
        v150 = *v147++;
        v149 = *(v9 + 24);
        *(v150 + 12 * (v149 + v17) - 2) = v122;
        --v148;
      }

      while (v148);
    }
  }

  if (!v26)
  {
    return 0;
  }

  if (v27 > 7)
  {
    if (v27 == 8)
    {
      v741 = v9 + v973;
    }

    else
    {
      if (v27 != 16)
      {
        if (v27 == 32)
        {
          *(v9 + 592 + v973) = 0u;
          *(v9 + 592 + v973 + 16) = 0u;
        }

        goto LABEL_1012;
      }

      v741 = v9 + v973;
      *(v9 + v973 + 600) = 0;
    }

    *(v741 + 592) = 0;
  }

  else
  {
    switch(v27)
    {
      case 1:
        *(v9 + v973 + 592) = 0;
        break;
      case 2:
        *(v9 + v973 + 592) = 0;
        break;
      case 4:
        *(v9 + v973 + 592) = 0;
        break;
    }
  }

LABEL_1012:
  result = 0;
  if (v971 > 7)
  {
    switch(v971)
    {
      case 8:
        result = 0;
        *(*(v9 + 656) + v974 + 560) = 0;
        break;
      case 16:
        result = 0;
        *(*(v9 + 656) + v974 + 560) = 0;
        *(*(v9 + 656) + v974 + 568) = 0;
        break;
      case 32:
        result = 0;
        *(*(v9 + 656) + v974 + 560) = 0;
        *(*(v9 + 656) + v974 + 568) = 0;
        *(*(v9 + 656) + v974 + 576) = 0;
        *(*(v9 + 656) + v974 + 584) = 0;
        break;
    }
  }

  else
  {
    switch(v971)
    {
      case 1:
        result = 0;
        *(*(v9 + 656) + v974 + 560) = 0;
        break;
      case 2:
        result = 0;
        *(*(v9 + 656) + v974 + 560) = 0;
        break;
      case 4:
        result = 0;
        *(*(v9 + 656) + v974 + 560) = 0;
        break;
    }
  }

  return result;
}