uint64_t sub_168A1C(int a1, unsigned int a2, char *a3, unsigned int *a4, _BYTE *a5)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v9 = sub_160F34(0xD4u);
    v10 = sub_175AE4();
    v11 = sub_160F68(8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p %p %p\n", v10, 212, v11, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5);
      v12 = sub_175AE4();
      v43 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v12, 212, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v10, 212, v11);
    }
  }

  if (a2 - 1 <= 2)
  {
    *a5 = (a2 - 1) | 0xA0;
    v13 = *a4;
    v48 = a4;
    if (*a4 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v46 = a3;
      v47 = a3 + 4;
      v16 = a4 + 1;
      v17 = 3;
      v18 = a1;
      do
      {
        v19 = &v16[4 * v14];
        v20 = v19[3];
        if (v20 && *v19 == __PAIR64__(v18, a2))
        {
          v51 = v15;
          *&a5[v17] = bswap32(v20 - 4) >> 16;
          v49 = v17 + 2;
          v50 = v20 - 4;
          v21 = (v20 - 4);
          memcpy(&a5[v49], &v47[v19[2]], v21);
          if (sub_160EF0(0xD4u, 8))
          {
            v22 = sub_160F34(0xD4u);
            v23 = sub_175AE4();
            v24 = sub_160F68(8);
            v25 = *v19;
            v26 = v19[1];
            if (v22)
            {
              printf("%lld %d AVE %s: type %d layer id %d\n", v23, 212, v24, *v19, v26);
              v23 = sub_175AE4();
              v24 = sub_160F68(8);
              v25 = *v19;
              v26 = v19[1];
            }

            syslog(3, "%lld %d AVE %s: type %d layer id %d", v23, 212, v24, v25, v26);
          }

          if (v21)
          {
            v27 = 0;
            v28 = v46;
            do
            {
              if (sub_160EF0(0xD4u, 8))
              {
                v29 = sub_160F34(0xD4u);
                v30 = sub_175AE4();
                v31 = sub_160F68(8);
                v32 = &v28[v19[2]];
                v33 = *v32;
                if (v29)
                {
                  printf("%lld %d AVE %s: %p: 0x%x\n", v30, 212, v31, &v28[v19[2]], v33);
                  v30 = sub_175AE4();
                  v31 = sub_160F68(8);
                  v32 = &v28[v19[2]];
                  v33 = *v32;
                }

                syslog(3, "%lld %d AVE %s: %p: 0x%x", v30, 212, v31, v32, v33);
              }

              v27 += 2;
              v28 += 2;
            }

            while (v27 < v21);
          }

          v17 = v49 + v50;
          v15 = v51 + 1;
          a4 = v48;
          v13 = *v48;
          v18 = a1;
        }

        ++v14;
      }

      while (v14 < v13);
      a3 = v46;
      if (v15)
      {
        *(a5 + 1) = BYTE1(v15) | (v15 << 8);
        goto LABEL_31;
      }
    }

    if (sub_160EF0(0xD4u, 4))
    {
      v34 = sub_160F34(0xD4u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PS %d\n", v35, 212, v36, "AVE_PS_ComposeNALUArray", 489, "cnt != 0", *a4);
        v35 = sub_175AE4();
        sub_160F68(4);
        v37 = *v48;
        a4 = v48;
      }

      else
      {
        v45 = *a4;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | no PS %d", v35);
    }
  }

  v17 = 4294966295;
LABEL_31:
  if (sub_160EF0(0xD4u, 8))
  {
    v38 = sub_160F34(0xD4u);
    v39 = sub_175AE4();
    v40 = sub_160F68(8);
    if (v38)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %p %p %d\n", v39, 212, v40, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5, v17);
      v41 = sub_175AE4();
      v44 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v41, 212, v44, "AVE_PS_ComposeNALUArray");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v39, 212, v40, "AVE_PS_ComposeNALUArray");
    }
  }

  return v17;
}

uint64_t sub_168F1C(uint64_t a1, char *a2, int *a3, uint64_t a4, int a5, const void *a6, int a7, uint64_t a8, _BYTE *a9, int a10)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v14 = sub_160F34(0xD4u);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d\n", v15, 212, v16, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v48 = sub_175AE4();
      v17 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v48, 212, v17, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v15, 212, v16, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  *a9 = 1;
  v18 = *(a8 + 20);
  LOBYTE(v18) = (32 * sub_17D658(*(a8 + 24))) | (v18 << 6);
  a9[1] = v18 | sub_17D4BC(*(a8 + 28));
  sub_1700F4(a8, (a9 + 2), 4);
  sub_170148(a8, a9 + 6, 6);
  a9[12] = sub_17DA3C(*(a8 + 80));
  *(a9 + 13) = 240;
  a9[15] = -4;
  a9[16] = *(a8 + 452) | 0xFC;
  a9[17] = *(a8 + 496) | 0xF8;
  a9[18] = *(a8 + 500) | 0xF8;
  *(a9 + 19) = 0;
  a9[21] = 11;
  v19 = sub_1696B0(a3, a1);
  v20 = a4 != 0;
  if (a6)
  {
    ++v20;
  }

  a9[22] = v20 + v19;
  v21 = sub_168A1C(a1, 1u, a2, a3, a9 + 23);
  if (v21 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v32 = sub_160F34(0xD4u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose VPS failed\n", v33, 212, v34, "AVE_PS_Compose_hvcC", 593, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose VPS failed");
    }

    goto LABEL_32;
  }

  v22 = (v21 + 23);
  v23 = sub_168A1C(a1, 2u, a2, a3, &a9[v22]);
  if (v23 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v35 = sub_160F34(0xD4u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v36, 212, v37, "AVE_PS_Compose_hvcC", 599, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_32;
  }

  v24 = (v23 + v22);
  v25 = sub_168A1C(a1, 3u, a2, a3, &a9[v24]);
  if (v25 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v38 = sub_160F34(0xD4u);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v39, 212, v40, "AVE_PS_Compose_hvcC", 605, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_32:
    v41 = 4294966296;
    goto LABEL_33;
  }

  v26 = v25 + v24;
  if (a4)
  {
    v27 = &a9[v26];
    *v27 = -89;
    *(v27 + 1) = 256;
    *(v27 + 3) = ((a5 - 4) >> 8) | ((a5 - 4) << 8);
    v26 = (v26 + 5);
    memcpy(&a9[v26], (a4 + 4), a5 - 4);
    LODWORD(v26) = v26 + a5 - 4;
  }

  if (a6)
  {
    v28 = &a9[v26];
    *v28 = -89;
    *(v28 + 1) = 256;
    *(v28 + 3) = BYTE1(a7) | (a7 << 8);
    v26 = v26 + 5;
    memcpy(&a9[v26], a6, a7);
    LODWORD(v26) = v26 + a7;
  }

  if (v26 <= a10)
  {
    v41 = 0;
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v29 = sub_160F34(0xD4u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d offset > num %d > %d\n", v30, 212, v31, "AVE_PS_Compose_hvcC", 651, v26, a10);
        v30 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d offset > num %d > %d", v30);
    }

    v41 = 4294966277;
  }

LABEL_33:
  if (sub_160EF0(0xD4u, 8))
  {
    v42 = sub_160F34(0xD4u);
    v43 = sub_175AE4();
    v44 = sub_160F68(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v41);
      v45 = sub_175AE4();
      v47 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v45, 212, v47, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  return v41;
}

uint64_t sub_1696B0(int *a1, int a2)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v4 = sub_160F34(0xD4u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v5, 212, v6, "AVE_PS_CalcNumOfType", a1, a2);
      v7 = sub_175AE4();
      v20 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 212, v20, "AVE_PS_CalcNumOfType", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v5, 212, v6, "AVE_PS_CalcNumOfType", a1, a2);
    }
  }

  if (a1)
  {
    v8 = 0;
    for (i = 1; i != 4; ++i)
    {
      if (*a1 >= 1)
      {
        v10 = *a1;
        v11 = a1 + 2;
        while (*(v11 - 1) != i || *v11 != a2)
        {
          v11 += 4;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        v8 = (v8 + 1);
      }

LABEL_14:
      ;
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v12 = sub_160F34(0xD4u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d\n", v13, 212, v14, "AVE_PS_CalcNumOfType", 386, "psInfo != __null", 0, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d", v13, 212);
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v15 = sub_160F34(0xD4u);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v16, 212, v17, "AVE_PS_CalcNumOfType", a1, a2, v8);
      v18 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v16);
    }
  }

  return v8;
}

uint64_t sub_16998C(int a1, unsigned int *a2)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v4 = sub_160F34(0xD4u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", v5, 212, v6, "AVE_PS_CalcSizeOflhvC", a1, a2);
      v7 = sub_175AE4();
      v18 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 212, v18, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v5, 212, v6, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }
  }

  v19 = 0;
  v8 = *a2;
  if (v8 < 1)
  {
    v10 = 6;
  }

  else
  {
    v9 = a2 + 2;
    v10 = 6;
    do
    {
      v11 = v9[2];
      if (v11)
      {
        if (*v9 == a1)
        {
          v12 = *(v9 - 1);
          if ((v12 & 0xFFFFFFFE) == 2)
          {
            if ((*(&v19 + v12) & 1) == 0)
            {
              LODWORD(v10) = v10 + 3;
              *(&v19 + v12) = 1;
            }

            v10 = (v11 + v10 - 2);
          }
        }
      }

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v13 = sub_160F34(0xD4u);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v14, 212, v15, "AVE_PS_CalcSizeOflhvC", a1, a2, v10);
      v16 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v14);
    }
  }

  return v10;
}

uint64_t sub_169BA0(int a1, char *a2, int *a3, const void *a4, _BYTE *a5, int a6)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v12 = sub_160F34(0xD4u);
    v13 = sub_175AE4();
    v14 = sub_160F68(8);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %d\n", v13, 212, v14, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v31 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v15, 212, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v13, 212, v14);
    }
  }

  *a5 = -67047423;
  a5[4] = -53;
  a5[5] = sub_1696B0(a3, a1);
  v16 = sub_168A1C(a1, 2u, a2, a3, a5 + 6);
  if (v16 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v20 = sub_160F34(0xD4u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v21, 212, v22, "AVE_PS_Compose_lhvC", 789, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_18;
  }

  v17 = (v16 + 6);
  v18 = sub_168A1C(a1, 3u, a2, a3, &a5[v17]);
  if (v18 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v23 = sub_160F34(0xD4u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v24, 212, v25, "AVE_PS_Compose_lhvC", 795, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_18:
    v19 = 4294966296;
    goto LABEL_19;
  }

  if (v18 + v17 <= a6)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4294966277;
  }

LABEL_19:
  if (sub_160EF0(0xD4u, 8))
  {
    v26 = sub_160F34(0xD4u);
    v27 = sub_175AE4();
    v28 = sub_160F68(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d %d\n", v27, 212, v28, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6, v19);
      v29 = sub_175AE4();
      v32 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v29, 212, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v27, 212, v28);
    }
  }

  return v19;
}

uint64_t sub_169F6C(int a1, char *a2, int *a3, int *a4, __CFData **a5)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v52 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v24 = sub_160F34(0xD4u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_avcC", 835, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = sub_175AE4();
        v54 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_avcC", 835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_avcC", 835);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = sub_167DB0(a1, a3, *a4);
  if (v14 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v28 = sub_160F34(0xD4u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_avcC", 842, "size > 0", a1, a2, a3, a4, v14);
        v31 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_avcC", 842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_avcC", 842);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a5;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v19 = sub_16821C(a1, a2, a3, a4, MutableBytePtr, v14);
      if (sub_160EF0(0xD4u, 8))
      {
        v20 = sub_160F34(0xD4u);
        v21 = sub_175AE4();
        v22 = sub_160F68(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d avcC data: size %d\n", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
          v23 = sub_175AE4();
          v53 = sub_160F68(8);
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v23, 212, v53, "AVE_PS_Make_avcC", 861, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
        }
      }

      v58 = a1;
      for (i = 0; i < v14; i += 2)
      {
        if (sub_160EF0(0xD4u, 8))
        {
          v46 = sub_160F34(0xD4u);
          v47 = sub_175AE4();
          v48 = sub_160F68(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = sub_175AE4();
            v51 = sub_160F68(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        v18 += 2;
      }

      v44 = v59;
      a5 = v60;
      *v60 = v59;
      a1 = v58;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (sub_160EF0(0xD4u, 4))
    {
      v36 = sub_160F34(0xD4u);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (sub_160EF0(0xD4u, 4))
  {
    v32 = sub_160F34(0xD4u);
    v33 = sub_175AE4();
    v34 = sub_160F68(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_avcC", 847, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = sub_175AE4();
      v56 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_avcC", 847);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_avcC", 847);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (sub_160EF0(0xD4u, 8))
  {
    v39 = sub_160F34(0xD4u);
    v40 = sub_175AE4();
    v41 = sub_160F68(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5, v19);
      v42 = sub_175AE4();
      v57 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_avcC");
    }
  }

  return v19;
}

uint64_t sub_16A75C(int a1, char *a2, int *a3, int *a4, __CFDictionary **a5)
{
  v47 = 0;
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v41 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    *a5 = 0;
    v14 = sub_169F6C(a1, a2, a3, a4, &v47);
    if (v14)
    {
      v15 = v14;
      if (sub_160EF0(0xD4u, 4))
      {
        v16 = sub_160F34(0xD4u);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = sub_175AE4();
          v42 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v42, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }
      }

      v25 = 0;
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"avcC", v47);
        v26 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v26)
        {
          v27 = v26;
          CFDictionaryAddValue(v26, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v25);
          CFDictionaryAddValue(v27, kCMFormatDescriptionExtension_FormatName, @"H.264");
          v15 = 0;
          *a5 = v27;
          goto LABEL_33;
        }

        if (sub_160EF0(0xD4u, 4))
        {
          v32 = sub_160F34(0xD4u);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p\n", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932, "pDict != __null", a1, a2, a3, a4, v25);
            v35 = sub_175AE4();
            v45 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v35, 212, v45, "AVE_PS_Make_avcC_Dict", 932);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xD4u, 4))
        {
          v28 = sub_160F34(0xD4u);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p\n", v29, 212, v30, "AVE_PS_Make_avcC_Dict", 924, "pDataDict != __null", a2, a3, a4, v47);
            v31 = sub_175AE4();
            v44 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v31, 212, v44, "AVE_PS_Make_avcC_Dict");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v29, 212, v30, "AVE_PS_Make_avcC_Dict");
          }
        }

        v25 = 0;
      }

      v27 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v20 = sub_160F34(0xD4u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v43, "AVE_PS_Make_avcC_Dict", 911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911);
      }
    }

    v25 = 0;
    v27 = 0;
    v15 = 4294966296;
  }

LABEL_33:
  if (v47)
  {
    CFRelease(v47);
    v47 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15 && v27)
  {
    CFRelease(v27);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v36 = sub_160F34(0xD4u);
    v37 = sub_175AE4();
    v38 = sub_160F68(8);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5, v15);
      v39 = sub_175AE4();
      v46 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v39, 212, v46, "AVE_PS_Make_avcC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC_Dict");
    }
  }

  return v15;
}

uint64_t sub_16AE28(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFData **a9)
{
  v13 = a9;
  if (sub_160EF0(0xD4u, 8))
  {
    v14 = sub_160F34(0xD4u);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", v15, 212, v16, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v17 = sub_175AE4();
      v54 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v17, 212, v54, "AVE_PS_Make_hvcC", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v15, 212, v16, "AVE_PS_Make_hvcC", a1, a2, a3);
    }
  }

  if (!a2 || !a3 || !a8 || !a9 || (a4 == 0) != (a5 == 0))
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v18 = sub_160F34(0xD4u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v21 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v21, 212, v55, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    goto LABEL_20;
  }

  v64 = a4;
  *a9 = 0;
  v22 = sub_1687B8(a1, a3, a5, a7);
  if (v22 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v37 = sub_160F34(0xD4u);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d\n", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1, a2, a3, v64, a5, a8, v22);
        v40 = sub_175AE4();
        a4 = v64;
        v58 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v40, 212, v58, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

LABEL_20:
      v27 = 4294966296;
      goto LABEL_21;
    }

    v27 = 4294966296;
    goto LABEL_37;
  }

  Mutable = CFDataCreateMutable(0, v22);
  if (!Mutable)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v41 = sub_160F34(0xD4u);
      v42 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v41)
      {
        v61 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d\n", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1, a2, a3, v64, a5, a8, v61);
        v44 = sub_175AE4();
        v59 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v44, 212, v59, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      v27 = 4294966293;
      goto LABEL_21;
    }

    v27 = 4294966293;
LABEL_37:
    a4 = v64;
    goto LABEL_21;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22);
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  if (!MutableBytePtr)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v45 = sub_160F34(0xD4u);
      v46 = sub_175AE4();
      v47 = sub_160F68(4);
      if (v45)
      {
        v62 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d\n", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2, a3, v64, a5, a8, v24, v62);
        v48 = sub_175AE4();
        v60 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v48, 212, v60, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      v27 = 4294966293;
    }

    else
    {
      v27 = 4294966293;
      a4 = v64;
    }

LABEL_53:
    CFRelease(v24);
    goto LABEL_21;
  }

  v26 = MutableBytePtr;
  v63 = a8;
  v27 = sub_168F1C(a1, a2, a3, v64, a5, a6, a7, a8, MutableBytePtr, v22);
  if (sub_160EF0(0xD4u, 8))
  {
    v28 = sub_160F34(0xD4u);
    v29 = sub_175AE4();
    v30 = sub_160F68(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d hvcC data: size %d\n", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
      v31 = sub_175AE4();
      v56 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v31, 212, v56, "AVE_PS_Make_hvcC", 1030, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
    }
  }

  for (i = 0; i < v22; i += 2)
  {
    if (sub_160EF0(0xD4u, 8))
    {
      v50 = sub_160F34(0xD4u);
      v51 = sub_175AE4();
      v52 = sub_160F68(8);
      v53 = *v26;
      if (v50)
      {
        printf("%lld %d AVE %s: %p: 0x%x\n", v51, 212, v52, v26, v53);
        v51 = sub_175AE4();
        v52 = sub_160F68(8);
        v53 = *v26;
      }

      syslog(3, "%lld %d AVE %s: %p: 0x%x", v51, 212, v52, v26, v53);
    }

    ++v26;
  }

  v13 = a9;
  *a9 = v24;
  a4 = v64;
  a8 = v63;
  if (v27)
  {
    goto LABEL_53;
  }

LABEL_21:
  if (sub_160EF0(0xD4u, 8))
  {
    v32 = sub_160F34(0xD4u);
    v33 = sub_175AE4();
    v34 = sub_160F68(8);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, v13, v27);
      v35 = sub_175AE4();
      v57 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v35, 212, v57, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }
  }

  return v27;
}

uint64_t sub_16B828(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFDictionary **a9)
{
  v54 = 0;
  if (sub_160EF0(0xD4u, 8))
  {
    v11 = sub_160F34(0xD4u);
    v12 = sub_175AE4();
    v13 = sub_160F68(8);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", v12, 212, v13, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v14 = sub_175AE4();
      v42 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v14, 212, v42, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v12, 212, v13, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }
  }

  if (a2 && a3 && a8 && a9 && (a4 == 0) == (a5 == 0))
  {
    *a9 = 0;
    v19 = sub_16AE28(a1, a2, a3, a4, a5, a6, a7, a8, &v54);
    if (v19)
    {
      v20 = v19;
      if (sub_160EF0(0xD4u, 4))
      {
        v21 = sub_160F34(0xD4u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d\n", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2, a3, a4, a5, a8, a9, v20);
          v24 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v24, 212, v44, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }
      }

      v25 = 0;
      v26 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"hvcC", v54);
        v33 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v33)
        {
          v26 = v33;
          CFDictionaryAddValue(v33, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v25);
          CFDictionaryAddValue(v26, kCMFormatDescriptionExtension_FormatName, @"HEVC");
          v20 = 0;
          *a9 = v26;
          goto LABEL_19;
        }

        if (sub_160EF0(0xD4u, 4))
        {
          v38 = sub_160F34(0xD4u);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p\n", v39, 212, v40, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1, a2, a3, a4, a5, a8, v25);
            v41 = sub_175AE4();
            v47 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v41, 212, v47, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v39, 212, v40, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xD4u, 4))
        {
          v34 = sub_160F34(0xD4u);
          v35 = sub_175AE4();
          v36 = sub_160F68(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p\n", v35, 212, v36, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1, a2, a3, a4, a5, a8, v54);
            v37 = sub_175AE4();
            v46 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v37, 212, v46, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v35, 212, v36, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }
        }

        v25 = 0;
      }

      v26 = 0;
      v20 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v15 = sub_160F34(0xD4u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v18 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v18, 212, v43, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    v25 = 0;
    v26 = 0;
    v20 = 4294966296;
  }

LABEL_19:
  if (v54)
  {
    CFRelease(v54);
    v54 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v20 && v26)
  {
    CFRelease(v26);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v27 = sub_160F34(0xD4u);
    v28 = sub_175AE4();
    v29 = sub_160F68(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
      v30 = sub_175AE4();
      v45 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v30, 212, v45, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }
  }

  return v20;
}

uint64_t sub_16C1A8(int a1, char *a2, unsigned int *a3, const void *a4, __CFData **a5)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_lhvC", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v52 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v24 = sub_160F34(0xD4u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_lhvC", 1172, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = sub_175AE4();
        v54 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_lhvC", 1172);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_lhvC", 1172);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = sub_16998C(a1, a3);
  if (v14 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v28 = sub_160F34(0xD4u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_lhvC", 1179, "size > 0", a1, a2, a3, a4, v14);
        v31 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_lhvC", 1179);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_lhvC", 1179);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a4;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v58 = a5;
      v19 = sub_169BA0(a1, a2, a3, v60, MutableBytePtr, v14);
      if (sub_160EF0(0xD4u, 8))
      {
        v20 = sub_160F34(0xD4u);
        v21 = sub_175AE4();
        v22 = sub_160F68(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d lhvC data: size %d\n", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
          v23 = sub_175AE4();
          v53 = sub_160F68(8);
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v23, 212, v53, "AVE_PS_Make_lhvC", 1198, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
        }
      }

      for (i = 0; i < v14; i += 2)
      {
        if (sub_160EF0(0xD4u, 8))
        {
          v46 = sub_160F34(0xD4u);
          v47 = sub_175AE4();
          v48 = sub_160F68(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = sub_175AE4();
            v51 = sub_160F68(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        ++v18;
      }

      a5 = v58;
      v44 = v59;
      *v58 = v59;
      a4 = v60;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (sub_160EF0(0xD4u, 4))
    {
      v36 = sub_160F34(0xD4u);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (sub_160EF0(0xD4u, 4))
  {
    v32 = sub_160F34(0xD4u);
    v33 = sub_175AE4();
    v34 = sub_160F68(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_lhvC", 1184, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = sub_175AE4();
      v56 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_lhvC", 1184);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_lhvC", 1184);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (sub_160EF0(0xD4u, 8))
  {
    v39 = sub_160F34(0xD4u);
    v40 = sub_175AE4();
    v41 = sub_160F68(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_lhvC", a1, a2, a3, a4, a5, v19);
      v42 = sub_175AE4();
      v57 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_lhvC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_lhvC");
    }
  }

  return v19;
}

uint64_t sub_16C9A8(int a1, char *a2, unsigned int *a3, const void *a4, const __CFDictionary *a5)
{
  v39 = 0;
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v34 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    v14 = sub_16C1A8(a1, a2, a3, a4, &v39);
    if (v14)
    {
      v15 = v14;
      if (sub_160EF0(0xD4u, 4))
      {
        v16 = sub_160F34(0xD4u);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v35, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }
      }
    }

    else
    {
      Value = CFDictionaryGetValue(a5, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms);
      if (Value)
      {
        CFDictionaryAddValue(Value, @"lhvC", v39);
        v15 = 0;
      }

      else
      {
        if (sub_160EF0(0xD4u, 4))
        {
          v25 = sub_160F34(0xD4u);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p\n", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342, "pDataDict != __null", a1, a2, a3, a4, v39);
            v28 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v28, 212, v37, "AVE_PS_Add_lhvC_Dict", 1342);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342);
          }
        }

        v15 = 4294966293;
      }
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v20 = sub_160F34(0xD4u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331, "pInData != __null && pInfo != __null && pSPS != __null && pCFDict != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v36, "AVE_PS_Add_lhvC_Dict", 1331);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331);
      }
    }

    v15 = 4294966296;
  }

  if (v39)
  {
    CFRelease(v39);
    v39 = 0;
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v29 = sub_160F34(0xD4u);
    v30 = sub_175AE4();
    v31 = sub_160F68(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v30, 212, v31, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5, v15);
      v32 = sub_175AE4();
      v38 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v32, 212, v38, "AVE_PS_Add_lhvC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v30, 212, v31, "AVE_PS_Add_lhvC_Dict");
    }
  }

  return v15;
}

uint64_t sub_16CEF8(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v52, 0, sizeof(v52));
  sub_CB274(a4, a5, v52, 32, a5, a6, a7, a8);
  v11 = a3;
  if (sub_160EF0(a2, a3))
  {
    v12 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v47 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v48 = *(a1 + 4);
        v49 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v52, a1, *a1);
      }

      else
      {
        v32 = *(a1 + 1);
        v33 = *(a1 + 2);
        v34 = v32;
        v35 = ((v32 - v32) * 1000.0);
        v36 = v33;
        v37 = ((v33 - v33) * 1000.0);
        v38 = *(a1 + 3);
        v39 = *(a1 + 4);
        v40 = v38;
        v41 = v38 - v38;
        if (v35 < 0)
        {
          v35 = -v35;
        }

        if (v37 < 0)
        {
          v37 = -v37;
        }

        v42 = (v41 * 1000.0);
        if (v42 < 0)
        {
          v42 = -v42;
        }

        v43 = ((v39 - v39) * 1000.0);
        if (v43 < 0)
        {
          v43 = -v43;
        }

        printf("DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v52, a1, *a1, v34, v35, v36, v37, v40, v42, v39, v43);
        v44 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v45 = *(a1 + 4);
        v46 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v52, a1, *a1);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      v15 = sub_175AE4();
      v16 = sub_160F68(v11);
      v17 = *(a1 + 1);
      v18 = *(a1 + 2);
      v19 = v17;
      v20 = ((v17 - v17) * 1000.0);
      v21 = v18;
      v22 = ((v18 - v18) * 1000.0);
      v23 = *(a1 + 3);
      v24 = *(a1 + 4);
      v25 = v23;
      v26 = v23 - v23;
      if (v20 < 0)
      {
        v20 = -v20;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      v27 = (v26 * 1000.0);
      if (v27 < 0)
      {
        v27 = -v27;
      }

      v28 = ((v24 - v24) * 1000.0);
      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (((v14 | (v13 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v15, a2, v16, v52, a1, *a1, v19, v20, v21, v22, v25, v27, v24, v28);
        v15 = sub_175AE4();
        v16 = sub_160F68(v11);
        v29 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v30 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        v31 = ((*(a1 + 4) - *(a1 + 4)) * 1000.0);
        v51 = *a1;
      }

      syslog(3, "%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v15, a2, v16, v52);
    }
  }

  return 0;
}

uint64_t sub_16D34C(int a1, int a2, unsigned int *a3)
{
  if (sub_160EF0(0xE3u, 7))
  {
    v6 = sub_160F34(0xE3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", v7, 227, v8, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", v7);
  }

  if (a3)
  {
    if (a1 > 0)
    {
      v9 = 1;
      v10 = a1;
LABEL_15:
      *a3 = v10;
      if (sub_160EF0(0xE3u, 8))
      {
        v14 = sub_160F34(0xE3u);
        v15 = sub_175AE4();
        v16 = sub_160F68(8);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %d %d %d %d %d\n", v15, 227, v16, "AVE_RC_DecideVBVMaxBitRate", 259, a1, a2, *a3, v9, 0);
          v15 = sub_175AE4();
          sub_160F68(8);
          v17 = *a3;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d", v15, 227);
      }

      v18 = 0;
      goto LABEL_23;
    }

    if (a2 > 0)
    {
      v9 = 2;
      v10 = a2;
      goto LABEL_15;
    }

    if (sub_160EF0(0xE3u, 4))
    {
      v24 = sub_160F34(0xE3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p\n", v25, 227, v26, "AVE_RC_DecideVBVMaxBitRate", 253, "0", a1, a2, a3);
        v25 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p", v25, 227);
    }

    v18 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0xE3u, 4))
    {
      v11 = sub_160F34(0xE3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v12, 227, v13, "AVE_RC_DecideVBVMaxBitRate", 237, "piVBVMaxBitRate != __null", a1, a2, 0);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v12, 227);
    }

    v18 = 4294966295;
  }

LABEL_23:
  if (sub_160EF0(0xE3u, 7))
  {
    v19 = sub_160F34(0xE3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v20, 227, v21, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3, v18);
      v22 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v22, 227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v20, 227);
    }
  }

  return v18;
}

uint64_t sub_16D7F4(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  if (sub_160EF0(0xE3u, 7))
  {
    v10 = sub_160F34(0xE3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = ((a3 - a3) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a4 - a4) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a5 - a5) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a5 - a5) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v11, 227, v12, "AVE_RC_DecideVBVBufferSize", a3, v14, a4, v16, a5, v18, a1, a2);
      v19 = sub_175AE4();
      v57 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v19, 227, v57, "AVE_RC_DecideVBVBufferSize");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v11, 227, v12, "AVE_RC_DecideVBVBufferSize");
    }
  }

  if (a2)
  {
    if ((a1 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 20;
    }

    v21 = 2.5;
    if ((a1 & 0x80000000) == 0)
    {
      v21 = 1.0;
    }

    if (a5 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (a5 > 0.0)
    {
      v21 = a5;
    }

    if (a4 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    if (a4 > 0.0)
    {
      v21 = a4;
    }

    if (a3 <= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (a3 > 0.0)
    {
      v21 = a3;
    }

    *a2 = v21;
    if (sub_160EF0(0xE3u, 8))
    {
      v25 = sub_160F34(0xE3u);
      v60 = sub_175AE4();
      v26 = sub_160F68(8);
      v27 = ((a3 - a3) * 1000.0);
      v28 = ((a4 - a4) * 1000.0);
      if (v27 >= 0)
      {
        v29 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v29 = -v27;
      }

      if (v28 >= 0)
      {
        v30 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v30 = -v28;
      }

      v31 = ((a5 - a5) * 1000.0);
      if (v31 >= 0)
      {
        v32 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v32 = -v31;
      }

      v33 = *a2;
      v34 = ((*a2 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a3, v29, a4, v30, a5, v32, a1, v33, v34, v24, 0);
        v35 = sub_175AE4();
        v36 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v35, 227, v36, "AVE_RC_DecideVBVBufferSize", 332, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a3);
      }
    }

    v47 = 0;
  }

  else
  {
    if (sub_160EF0(0xE3u, 4))
    {
      v37 = sub_160F34(0xE3u);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      v40 = ((a3 - a3) * 1000.0);
      if (v40 >= 0)
      {
        v41 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v41 = -v40;
      }

      v42 = ((a4 - a4) * 1000.0);
      if (v42 >= 0)
      {
        v43 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v43 = -v42;
      }

      v44 = ((a5 - a5) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294, "pfVBVBufferSize != __null", a3, v41, a4, v43, a5, v45, a1, 0);
        v46 = sub_175AE4();
        v58 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v46, 227, v58, "AVE_RC_DecideVBVBufferSize", 294);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294);
      }
    }

    v47 = 4294966295;
  }

  if (sub_160EF0(0xE3u, 7))
  {
    v48 = sub_160F34(0xE3u);
    v49 = sub_175AE4();
    v50 = sub_160F68(7);
    v51 = ((a3 - a3) * 1000.0);
    if (v51 >= 0)
    {
      v52 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v52 = -v51;
    }

    v53 = ((a4 - a4) * 1000.0);
    if (v53 >= 0)
    {
      v54 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v54 = -v53;
    }

    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a3, v52, a4, v54, a4, v54, a1, a2, v47);
      v55 = sub_175AE4();
      v59 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v55, 227, v59, "AVE_RC_DecideVBVBufferSize", a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a3);
    }
  }

  return v47;
}

uint64_t sub_16DDF4(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (sub_160EF0(0xE3u, 7))
  {
    v11 = sub_160F34(0xE3u);
    v66 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = ((a3 - a3) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a4 - a4) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a5 - a5) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a5 - a5) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    v19 = ((a6 - a6) * 1000.0);
    if (v19 >= 0)
    {
      v20 = ((a6 - a6) * 1000.0);
    }

    else
    {
      v20 = -v19;
    }

    v6 = a2;
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v66, 227, v12, "AVE_RC_DecideVBVInitialDelay", a3, v14, a4, v16, a5, v18, a6, v20, a1, a2);
      v67 = sub_175AE4();
      v63 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v67, 227, v63, "AVE_RC_DecideVBVInitialDelay", a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v66, 227, v12, "AVE_RC_DecideVBVInitialDelay", a3);
    }
  }

  if (v6)
  {
    if (a3 >= 0.0)
    {
      v21 = 1;
      v22 = a3;
    }

    else if (a4 >= 0.0)
    {
      v21 = 2;
      v22 = a4;
    }

    else if (a5 >= 0.0)
    {
      v21 = 4;
      v22 = a5 * a6 / 100.0;
    }

    else
    {
      if ((a1 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = 20;
      }

      v22 = 2.25;
      if ((a1 & 0x80000000) == 0)
      {
        v22 = 0.5;
      }
    }

    *v6 = v22;
    if (sub_160EF0(0xE3u, 8))
    {
      v36 = sub_160F34(0xE3u);
      v68 = sub_175AE4();
      v37 = sub_160F68(8);
      v38 = ((a3 - a3) * 1000.0);
      if (v38 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = -v38;
      }

      v40 = ((a4 - a4) * 1000.0);
      v41 = ((a5 - a5) * 1000.0);
      if (v40 >= 0)
      {
        v42 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v42 = -v40;
      }

      if (v41 >= 0)
      {
        v43 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v43 = -v41;
      }

      v44 = ((a6 - a6) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a6 - a6) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      v46 = *v6;
      v47 = ((*v6 - v46) * 1000.0);
      if (v47 < 0)
      {
        v47 = -v47;
      }

      if (v36)
      {
        v48 = v39;
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a3, v39, a4, v42, a5, v43, a6, v45, a1, v46, v47, v21, 0);
        v69 = sub_175AE4();
        v49 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v69, 227, v49, "AVE_RC_DecideVBVInitialDelay", 409, a3, v48);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a3, v39);
      }
    }

    v35 = 0;
  }

  else
  {
    if (sub_160EF0(0xE3u, 4))
    {
      v23 = sub_160F34(0xE3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      v26 = ((a3 - a3) * 1000.0);
      if (v26 >= 0)
      {
        v27 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v27 = -v26;
      }

      v28 = ((a4 - a4) * 1000.0);
      if (v28 >= 0)
      {
        v29 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v29 = -v28;
      }

      v30 = ((a5 - a5) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      v32 = ((a6 - a6) * 1000.0);
      if (v32 >= 0)
      {
        v33 = ((a6 - a6) * 1000.0);
      }

      else
      {
        v33 = -v32;
      }

      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null", a3, v27, a4, v29, a5, v31, a6, v33, a1, 0);
        v34 = sub_175AE4();
        v64 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v34, 227, v64, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }
    }

    v35 = 4294966295;
  }

  if (sub_160EF0(0xE3u, 7))
  {
    v50 = sub_160F34(0xE3u);
    v51 = sub_175AE4();
    v52 = sub_160F68(7);
    v53 = ((a3 - a3) * 1000.0);
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = ((a4 - a4) * 1000.0);
    if (v55 >= 0)
    {
      v56 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v56 = -v55;
    }

    v57 = ((a5 - a5) * 1000.0);
    if (v57 >= 0)
    {
      v58 = ((a5 - a5) * 1000.0);
    }

    else
    {
      v58 = -v57;
    }

    v59 = ((a6 - a6) * 1000.0);
    if (v59 >= 0)
    {
      v60 = ((a6 - a6) * 1000.0);
    }

    else
    {
      v60 = -v59;
    }

    if (v50)
    {
      v65 = v54;
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a3, v54, a4, v56, a5, v58, a6, v60, a1, a2, v35);
      v70 = sub_175AE4();
      v61 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v70, 227, v61, "AVE_RC_DecideVBVInitialDelay", a3, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a3, v54);
    }
  }

  return v35;
}

uint64_t sub_16E570(CFDictionaryRef theDict, uint64_t a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    v4 = sub_14BE4C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Acknowledged, a2);
    v5 = sub_14BE4C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Reserved, (a2 + 1)) + v4;
    v6 = sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceIndex, &v14);
    *(a2 + 2) = v14;
    v7 = v5 + v6 + sub_14BE4C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceAnchor, (a2 + 3));
    return v7 + sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_RefFrameNum, (a2 + 4));
  }

  else
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v9 = sub_160F34(0xE2u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 226, v11, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 226, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_16E730(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = sub_14B618(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Acknowledged, *a1, theDict);
    v5 = sub_14B618(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Reserved, a1[1], theDict) + v4;
    v6 = sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceIndex, a1[2], theDict);
    v7 = v5 + v6 + sub_14B618(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceAnchor, a1[3], theDict);
    return v7 + sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_RefFrameNum, *(a1 + 1), theDict);
  }

  else
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v9 = sub_160F34(0xE2u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 226, v11, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 226, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_16E8E4(CFDictionaryRef theDict, _DWORD *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_ReferenceType, &v33);
    *a2 = v33;
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumber, &v33);
    a2[1] = v33;
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumberFromIDR, &v33);
    a2[2] = v33;
    sub_14CBBC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PresentationTimestamp, a2 + 2);
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PTSTimescale, &v33);
    a2[6] = v33;
    Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_OriginalBuffer);
    if (Value)
    {
      v5 = Value;
      v6 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width;
      sub_14C90C(Value, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width, &v33);
      a2[12] = v33;
      v7 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height;
      sub_14C90C(v5, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height, &v33);
      a2[14] = v33;
      v8 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID;
      sub_14C90C(v5, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID, &v33);
      a2[16] = v33;
      v9 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_RVRABuffer);
      if (v9)
      {
        v10 = v9;
        sub_14C90C(v9, v6, &v33);
        a2[13] = v33;
        sub_14C90C(v10, v7, &v33);
        a2[15] = v33;
        sub_14C90C(v10, v8, &v33);
        a2[17] = v33;
        v11 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData);
        v12 = sub_16E570(v11, (a2 + 18));
        if (v12 && sub_160EF0(0xE2u, 4))
        {
          v13 = sub_160F34(0xE2u);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", v14, 226, v15, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, v12);
            v16 = sub_175AE4();
            v29 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v14, 226, v15);
          }
        }

        return v12;
      }

      if (sub_160EF0(0xE2u, 4))
      {
        v24 = sub_160F34(0xE2u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (sub_160EF0(0xE2u, 4))
    {
      v21 = sub_160F34(0xE2u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = sub_175AE4();
        v31 = sub_160F68(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v17 = sub_160F34(0xE2u);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = sub_175AE4();
      v30 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

uint64_t sub_16EE2C(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_ReferenceType, *a1, a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumber, *(a1 + 4), a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumberFromIDR, *(a1 + 8), a2);
    sub_14BC0C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PresentationTimestamp, *(a1 + 16), a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PTSTimescale, *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width;
      sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width, *(a1 + 48), Mutable);
      v7 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height;
      sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height, *(a1 + 56), v5);
      v8 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID;
      sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID, *(a1 + 64), v5);
      CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_OriginalBuffer, v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v9)
      {
        v10 = v9;
        sub_14B9CC(v6, *(a1 + 52), v9);
        sub_14B9CC(v7, *(a1 + 60), v10);
        sub_14B9CC(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_RVRABuffer, v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v11)
        {
          v12 = v11;
          v13 = sub_16E730((a1 + 72), v11);
          if (v13)
          {
            if (sub_160EF0(0xE2u, 4))
            {
              v14 = sub_160F34(0xE2u);
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", v15, 226, v16, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, v13);
                v17 = sub_175AE4();
                v29 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v15, 226, v16);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData, v12);
          }

          CFRelease(v12);
          return v13;
        }

        if (sub_160EF0(0xE2u, 4))
        {
          v26 = sub_160F34(0xE2u);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!sub_160EF0(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = sub_160F34(0xE2u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!sub_160EF0(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = sub_160F34(0xE2u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = sub_175AE4();
    v31 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v18 = sub_160F34(0xE2u);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = sub_175AE4();
      v30 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t sub_16F3AC(CFDictionaryRef theDict, _DWORD *a2)
{
  v37 = 0;
  if (!theDict || !a2)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v14 = sub_160F34(0xE2u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v15, 226, v16, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v15, 226, v16);
      }
    }

    return 4294966295;
  }

  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_FrameNumberFromIDR, &v37);
  a2[340] = v37;
  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_LongTermFrameNumberFromIDR, &v37);
  a2[341] = v37;
  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_HowManyShortTermFromIDR, &v37);
  a2[342] = v37;
  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_NumberOfReferenceFrames, &v37);
  v4 = v37;
  a2[343] = v37;
  if (v4 >= 17)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v18 = sub_160F34(0xE2u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = a2[343];
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames);
  if (!Value)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v22 = sub_160F34(0xE2u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v23, 226, v24, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v25 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v25, 226, v35);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v23, 226, v24);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v26 = sub_160F34(0xE2u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v27, 226, v28, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v27 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v27);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 20)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    v13 = sub_16E8E4(ValueAtIndex, i);
    if (v13)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return v13;
    }
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v29 = sub_160F34(0xE2u);
    v30 = sub_175AE4();
    v31 = sub_160F68(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v30, 226, v31, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, v13);
      v32 = sub_175AE4();
      v36 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v32, 226, v36, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v30, 226, v31, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return v13;
}

uint64_t sub_16F950(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_FrameNumberFromIDR, a1[340], a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_LongTermFrameNumberFromIDR, a1[341], a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_HowManyShortTermFromIDR, a1[342], a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_NumberOfReferenceFrames, a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        v10 = 0;
LABEL_19:
        CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames, v5);
        CFRelease(v5);
        return v10;
      }

      v6 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = a1;
        while (1)
        {
          v10 = sub_16EE2C(v9, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v9 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(v10) = 0;
      v9 = a1;
LABEL_21:
      if (sub_160EF0(0xE2u, 4))
      {
        v19 = sub_160F34(0xE2u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", v20, 226, v21, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v9, v8, v10);
          v22 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v22, 226, v26, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v20, 226, v21, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (sub_160EF0(0xE2u, 4))
    {
      v15 = sub_160F34(0xE2u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v16, 226, v17, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v18 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v16, 226, v17);
      }
    }

    return 4294966293;
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v11 = sub_160F34(0xE2u);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v12, 226, v13, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v14 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
    }
  }

  return 4294966295;
}

char *sub_16FD90(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &unk_203CF0 + 72 * a1;
  }
}

uint64_t sub_16FDAC(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 24);
  }

  return v3;
}

uint64_t sub_16FE54(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t sub_16FEFC(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 40);
  }

  return v3;
}

uint64_t sub_16FFA4(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 48);
  }

  return v3;
}

uint64_t sub_17004C(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 56);
  }

  return v3;
}

uint64_t sub_1700F4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 4)
  {
    return 4294966277;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *(a2 + v5) |= *(a1 + 32 + v4) << (v4 & 7 ^ 7);
    if ((v4 & 7) == 7)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 != 32);
  return 4;
}

uint64_t sub_170148(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 < 6)
  {
    return 4294966277;
  }

  v7 = sub_17D4BC(*(a1 + 28));
  bzero(a2, a3);
  v9 = (*(a1 + 65) << 6) | (*(a1 + 64) << 7) | (32 * *(a1 + 66)) | (16 * *(a1 + 67));
  *a2 = v9;
  if (v7 == 4 || v7 == 5 || (*(a1 + 36) & 1) != 0 || v7 == 6 || (*(a1 + 37) & 1) != 0 || v7 == 7 || (*(a1 + 38) & 1) != 0 || v7 == 8 || (*(a1 + 39) & 1) != 0 || v7 == 9 || (*(a1 + 40) & 1) != 0 || v7 == 10 || (*(a1 + 41) & 1) != 0 || v7 == 11 || (*(a1 + 42) & 1) != 0 || *(a1 + 43) == 1)
  {
    *a2 = (8 * *(a1 + 68)) | (4 * *(a1 + 69)) | (2 * *(a1 + 70)) | *(a1 + 71) | v9;
    v8.i32[0] = *(a1 + 72);
    v10 = vshl_u16(*&vmovl_u8(v8), 0x4000500060007);
    v11 = v10.i32[0] | v10.i32[1] | ((*&v10 | HIDWORD(*&v10)) >> 16) | (8 * *(a1 + 76));
  }

  else
  {
    if (v7 != 2 && *(a1 + 34) != 1)
    {
      return 5;
    }

    LOBYTE(v11) = 16 * *(a1 + 75);
  }

  a2[1] = v11;
  return 5;
}

uint64_t sub_1702C8(CFArrayRef theArray, _DWORD *a2, int *a3)
{
  if (theArray && a2 && a3 && *a3 > 0)
  {
    Count = CFArrayGetCount(theArray);
    v7 = *a3;
    if (Count < *a3)
    {
      v7 = Count;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < 1)
    {
LABEL_17:
      result = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = a2;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        sub_14C90C(ValueAtIndex, @"ReferenceFrameNumDriver", v11);
        sub_14C90C(v13, @"ReferenceRVRAIndex", v11 + 1);
        ++v9;
        v11 += 2;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }

      if (sub_160EF0(0xE1u, 4))
      {
        v19 = sub_160F34(0xE1u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p\n", v20, 225, v21, "AVE_Ref_RetrieveArray", 36, "pDict != __null", theArray, a2, a3);
          v22 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v22, 225, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v20, 225, v21);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0xE1u, 4))
    {
      v15 = sub_160F34(0xE1u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v16, 225, v17, "AVE_Ref_RetrieveArray", 25, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", theArray, a2, a3);
        v18 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 225, v17);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_170570(char *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = a2;
    v7 = (a1 + 4);
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        break;
      }

      v9 = Mutable;
      sub_14B9CC(@"ReferenceFrameNumDriver", *(v7 - 1), Mutable);
      v10 = *v7;
      v7 += 2;
      sub_14B9CC(@"ReferenceRVRAIndex", v10, v9);
      CFArrayAppendValue(a3, v9);
      CFRelease(v9);
      if (!--v6)
      {
        return 0;
      }
    }

    if (sub_160EF0(0xE1u, 4))
    {
      v16 = sub_160F34(0xE1u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p\n", v17, 225, v18, "AVE_Ref_MakeArray", 73, "pDict != __null", a1, a2, a3);
        v19 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v19, 225, v21);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v17, 225, v18);
      }
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0xE1u, 4))
    {
      v12 = sub_160F34(0xE1u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v13, 225, v14, "AVE_Ref_MakeArray", 65, "pInfo != __null && iNum > 0 && pArray != __null", a1, a2, a3);
        v15 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 225, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v13, 225, v14);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_17080C(CFDictionaryRef theDict, int a2, int *a3)
{
  if (a2 <= 4 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"WeightData_WeightFlagArray");
    v7 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v8 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v9 = v8;
    v52 = Value;
    if (Value && v7 && v8)
    {
      Count = CFArrayGetCount(Value);
      v11 = CFArrayGetCount(v7);
      v12 = CFArrayGetCount(v9);
      if (a2 < 1)
      {
        return 0;
      }

      else
      {
        v51 = 0;
        v13 = 0;
        v46 = v11;
        v47 = Count;
        if (Count >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = Count;
        }

        v45 = v12;
        if (v14 >= v12)
        {
          v14 = v12;
        }

        v15 = a3 + 11;
        v16 = a3 + 3;
        v50 = v14;
        v48 = a2;
        v17 = a3 + 50;
        while (2)
        {
          v18 = 0;
          v49 = v17;
          do
          {
            v54[0] = 0;
            v53 = 0;
            v19 = v51 + v18;
            if (v51 + v18 >= v50)
            {
              if (sub_160EF0(0xD7u, 4))
              {
                v35 = sub_160F34(0xD7u);
                v36 = sub_175AE4();
                v37 = sub_160F68(4);
                if (v35)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d\n", v36, 215, v37, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v47, v46, v45, v19);
                  v36 = sub_175AE4();
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = sub_160F68(4);
                }

                else
                {
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = v37;
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d", v36, 215, v40, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v41, v42, v43, v44);
              }

              return 4294966295;
            }

            result = sub_14A8C4(v52, v51 + v18, v54);
            if (result)
            {
              return result;
            }

            if (v18)
            {
              v15[v13] = v54[0];
              result = sub_14AE14(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              v21 = v15[v13] ? v53 : 1 << a3[1];
              *(v17 - 16) = v21;
              v17[24] = (-1 << a3[1]) + v21;
              result = sub_14AE14(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v15[v13])
              {
                v24 = v53;
              }

              else
              {
                v24 = 0;
              }

              *v17 = v24;
              v25 = v24 + (*(v17 - 16) << 7 >> a3[1]) - 128;
              if (v25 <= -512)
              {
                v25 = -512;
              }

              if (v25 >= 511)
              {
                v25 = 511;
              }

              v17[40] = v25;
            }

            else
            {
              v16[v13] = v54[0];
              result = sub_14AE14(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v22 = v53;
                v23 = *a3;
              }

              else
              {
                v23 = *a3;
                v22 = 1 << *a3;
              }

              a3[v13 + 19] = v22;
              a3[v13 + 67] = (-1 << v23) + v22;
              result = sub_14AE14(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v26 = v53;
              }

              else
              {
                v26 = 0;
              }

              a3[v13 + 27] = v26;
            }

            ++v18;
            ++v17;
          }

          while (v18 != 3);
          result = 0;
          ++v13;
          v51 += 3;
          v17 = v49 + 2;
          if (v13 != v48)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (sub_160EF0(0xD7u, 4))
      {
        v31 = sub_160F34(0xD7u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p\n", v32, 215, v33, "AVE_WtPred_RetrieveArray", 39, "pFlagArray != __null && pWeightArray != __null && pOffsetArray != __null", Value, v7, v9);
          v34 = sub_175AE4();
          v39 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v34, 215, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v32, 215, v33);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0xD7u, 4))
    {
      v27 = sub_160F34(0xD7u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v28, 215, v29, "AVE_WtPred_RetrieveArray", 30, "pDict != __null && pInfo != __null && iFrameCount <= 4", theDict, a3, a2);
        v30 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v30, 215, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v28, 215, v29);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_170D74(CFDictionaryRef theDict, int a2, _OWORD *a3)
{
  if (!theDict || !a3)
  {
    if (sub_160EF0(0xD7u, 4))
    {
      v12 = sub_160F34(0xD7u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 215, v14, "AVE_WtPred_GetInfo", 246, "pDict != __null && pInfo != __null", theDict, a3);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 215);
    }

    return 4294966295;
  }

  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  *(a3 + 412) = 0u;
  Value = CFDictionaryGetValue(theDict, @"WeightedPredictionInfo");
  if (!Value)
  {
    if (sub_160EF0(0xD7u, 4))
    {
      v15 = sub_160F34(0xD7u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p\n", v16, 215, v17, "AVE_WtPred_GetInfo", 254, "pWPInfoDict != __null", theDict, 0);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p", v16, 215);
    }

    return 4294966288;
  }

  v7 = Value;
  if (sub_160EF0(0x1Du, 6))
  {
    v8 = sub_160F34(0x1Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found \n", v9, 29, v10);
      v11 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v11, 29, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v9, 29, v10);
    }
  }

  v19 = sub_14C90C(v7, @"WeightData_LumaLog2WeightDenom", a3);
  if (v19)
  {
    v18 = v19;
    if (sub_160EF0(0xD7u, 4))
    {
      v20 = sub_160F34(0xD7u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 261, "ret == 0", v7, a3, v18);
        v23 = sub_175AE4();
        v28 = sub_160F68(4);
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 215, v28);
        return v18;
      }

      goto LABEL_33;
    }

    return v18;
  }

  v24 = sub_14C90C(v7, @"WeightData_ChromaLog2WeightDenom", a3 + 1);
  if (v24)
  {
    v18 = v24;
    if (sub_160EF0(0xD7u, 4))
    {
      v25 = sub_160F34(0xD7u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 266, "ret == 0", v7, a3, v18);
        v23 = sub_175AE4();
        v28 = sub_160F68(4);
        goto LABEL_26;
      }

LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v21, 215, v22);
    }

    return v18;
  }

  return sub_17080C(v7, a2, a3);
}

uint64_t sub_171244(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v125, 0, sizeof(v125));
  if (!a1)
  {
    return 4294966295;
  }

  sub_CB274(a4, a5, v125, 32, a5, a6, a7, a8);
  if (sub_160EF0(a2, a3))
  {
    v11 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v11 || (-a3 & 0x20) != 0)
      {
        v18 = *a1;
      }

      else
      {
        printf("WP %s luma_log2_weight_denom = %d\n", v125, *a1);
        v17 = *a1;
      }

      syslog(3, "WP %s luma_log2_weight_denom = %d");
    }

    else
    {
      v12 = v11 ^ 1;
      v13 = sub_175AE4();
      v14 = sub_160F68(a3);
      if ((v12 | ((a3 & 0x20) >> 5)))
      {
        v113 = *a1;
      }

      else
      {
        printf("%lld %d AVE %s: WP %s luma_log2_weight_denom = %d\n", v13, a2, v14, v125, *a1);
        sub_175AE4();
        sub_160F68(a3);
        v15 = *a1;
      }

      syslog(3, "%lld %d AVE %s: WP %s luma_log2_weight_denom = %d");
    }
  }

  if (sub_160EF0(a2, a3))
  {
    v19 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v19 || (-a3 & 0x20) != 0)
      {
        v25 = a1[1];
      }

      else
      {
        printf("WP %s chroma_log2_weight_denom = %d\n", v125, a1[1]);
        v24 = a1[1];
      }

      syslog(3, "WP %s chroma_log2_weight_denom = %d");
    }

    else
    {
      v20 = v19 ^ 1;
      v21 = sub_175AE4();
      v22 = sub_160F68(a3);
      if ((v20 | ((a3 & 0x20) >> 5)))
      {
        v114 = a1[1];
      }

      else
      {
        printf("%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d\n", v21, a2, v22, v125, a1[1]);
        sub_175AE4();
        sub_160F68(a3);
        v23 = a1[1];
      }

      syslog(3, "%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d");
    }
  }

  if (sub_160EF0(a2, a3))
  {
    v26 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v26 || (-a3 & 0x20) != 0)
      {
        v32 = a1[2];
      }

      else
      {
        printf("WP %s delta_chroma_log2_weight_denom = %d\n", v125, a1[2]);
        v31 = a1[2];
      }

      syslog(3, "WP %s delta_chroma_log2_weight_denom = %d");
    }

    else
    {
      v27 = v26 ^ 1;
      v28 = sub_175AE4();
      v29 = sub_160F68(a3);
      if ((v27 | ((a3 & 0x20) >> 5)))
      {
        v115 = a1[2];
      }

      else
      {
        printf("%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d\n", v28, a2, v29, v125, a1[2]);
        sub_175AE4();
        sub_160F68(a3);
        v30 = a1[2];
      }

      syslog(3, "%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d");
    }
  }

  v33 = 0;
  v118 = a1 + 3;
  v123 = -a3;
  v34 = a1 + 27;
  v35 = a1 + 67;
  v119 = a1 + 51;
  v116 = a1 + 11;
  v36 = a1 + 27;
  v124 = a1 + 67;
  v117 = a1 + 19;
  do
  {
    v120 = v33;
    if (sub_160EF0(a2, a3))
    {
      v37 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v123 & 0x20) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = v37;
        }

        if (v44 == 1)
        {
          printf("WP %s luma_weight_l0_flag[%d] = %d\n", v125, v120, v118[v120]);
        }

        syslog(3, "WP %s luma_weight_l0_flag[%d] = %d", v125, v120, v118[v120]);
      }

      else
      {
        v38 = v37 ^ 1;
        v39 = sub_175AE4();
        v40 = sub_160F68(a3);
        v41 = v118[v120];
        if ((v38 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v39, a2, v40, v125, v120, v41);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d\n", v39, a2, v40, v125, v120, v41);
          v42 = sub_175AE4();
          v43 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v42, a2, v43, v125, v120, v118[v120]);
        }

        v34 = v36;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v45 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v123 & 0x20) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = v45;
        }

        if (v51 == 1)
        {
          printf("WP %s luma_weight_l0[%d] = %d\n", v125, v120, v117[v120]);
        }

        syslog(3, "WP %s luma_weight_l0[%d] = %d", v125, v120, v117[v120]);
      }

      else
      {
        v46 = v45 ^ 1;
        v47 = sub_175AE4();
        v48 = sub_160F68(a3);
        v49 = v117[v120];
        if ((v46 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v47, a2, v48, v125, v120, v49);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d\n", v47, a2, v48, v125, v120, v49);
          v121 = sub_175AE4();
          v50 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v121, a2, v50, v125, v120, v117[v120]);
        }

        v34 = v36;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v52 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v123 & 0x20) != 0)
        {
          v59 = 0;
        }

        else
        {
          v59 = v52;
        }

        if (v59 == 1)
        {
          printf("WP %s luma_offset_l0[%d] = %d\n", v125, v120, v34[v120]);
        }

        syslog(3, "WP %s luma_offset_l0[%d] = %d", v125, v120, v34[v120]);
      }

      else
      {
        v53 = v52 ^ 1;
        v54 = sub_175AE4();
        v55 = sub_160F68(a3);
        v56 = v34[v120];
        if ((v53 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v54, a2, v55, v125, v120, v56);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d\n", v54, a2, v55, v125, v120, v56);
          v57 = sub_175AE4();
          v58 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v57, a2, v58, v125, v120, v34[v120]);
        }

        v35 = v124;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v60 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v123 & 0x20) != 0)
        {
          v67 = 0;
        }

        else
        {
          v67 = v60;
        }

        if (v67 == 1)
        {
          printf("WP %s delta_luma_weight_l0[%d] = %d\n", v125, v120, v35[v120]);
        }

        syslog(3, "WP %s delta_luma_weight_l0[%d] = %d", v125, v120, v35[v120]);
      }

      else
      {
        v61 = v60 ^ 1;
        v62 = sub_175AE4();
        v63 = sub_160F68(a3);
        v64 = v35[v120];
        if ((v61 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v62, a2, v63, v125, v120, v64);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d\n", v62, a2, v63, v125, v120, v64);
          v65 = sub_175AE4();
          v66 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v65, a2, v66, v125, v120, v35[v120]);
        }

        v34 = v36;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v68 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v123 & 0x20) != 0)
        {
          v74 = 0;
        }

        else
        {
          v74 = v68;
        }

        if (v74 == 1)
        {
          printf("WP %s chroma_weight_l0_flag[%d] = %d\n", v125, v120, v116[v120]);
        }

        syslog(3, "WP %s chroma_weight_l0_flag[%d] = %d", v125, v120, v116[v120]);
      }

      else
      {
        v69 = v68 ^ 1;
        v70 = sub_175AE4();
        v71 = sub_160F68(a3);
        v72 = v116[v120];
        if ((v69 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v70, a2, v71, v125, v120, v72);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d\n", v70, a2, v71, v125, v120, v72);
          v122 = sub_175AE4();
          v73 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v122, a2, v73, v125, v120, v116[v120]);
        }

        v34 = v36;
      }
    }

    v75 = 0;
    v76 = v119;
    do
    {
      if (sub_160EF0(a2, a3))
      {
        v77 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v123 & 0x20) != 0)
          {
            v84 = 0;
          }

          else
          {
            v84 = v77;
          }

          v85 = *(v76 - 16);
          if (v84 == 1)
          {
            printf("WP %s chroma_weight_l0[%d][%d] = %d\n", v125, v120, v75, v85);
            syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v125, v120, v75, *(v76 - 16));
          }

          else
          {
            syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v125, v120, v75, v85);
          }
        }

        else
        {
          v78 = v77 ^ 1;
          v79 = sub_175AE4();
          v80 = sub_160F68(a3);
          v81 = *(v76 - 16);
          if ((v78 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v79, a2, v80, v125, v120, v75, v81);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d\n", v79, a2, v80, v125, v120, v75, v81);
            v82 = sub_175AE4();
            v83 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v82, a2, v83, v125, v120, v75, *(v76 - 16));
          }

          v34 = v36;
          v35 = v124;
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v86 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v123 & 0x20) != 0)
          {
            v93 = 0;
          }

          else
          {
            v93 = v86;
          }

          v94 = *v76;
          if (v93 == 1)
          {
            printf("WP %s chroma_offset_l0[%d][%d] = %d\n", v125, v120, v75, v94);
            syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v125, v120, v75, *v76);
          }

          else
          {
            syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v125, v120, v75, v94);
          }
        }

        else
        {
          v87 = v86 ^ 1;
          v88 = sub_175AE4();
          v89 = sub_160F68(a3);
          v90 = *v76;
          if ((v87 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v88, a2, v89, v125, v120, v75, v90);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d\n", v88, a2, v89, v125, v120, v75, v90);
            v91 = sub_175AE4();
            v92 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v91, a2, v92, v125, v120, v75, *v76);
          }

          v34 = v36;
          v35 = v124;
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v95 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v123 & 0x20) != 0)
          {
            v102 = 0;
          }

          else
          {
            v102 = v95;
          }

          v103 = v76[24];
          if (v102 == 1)
          {
            printf("WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v125, v120, v75, v103);
            syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v125, v120, v75, v76[24]);
          }

          else
          {
            syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v125, v120, v75, v103);
          }
        }

        else
        {
          v96 = v95 ^ 1;
          v97 = sub_175AE4();
          v98 = sub_160F68(a3);
          v99 = v76[24];
          if ((v96 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v97, a2, v98, v125, v120, v75, v99);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v97, a2, v98, v125, v120, v75, v99);
            v100 = sub_175AE4();
            v101 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v100, a2, v101, v125, v120, v75, v76[24]);
          }

          v34 = v36;
          v35 = v124;
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v104 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v123 & 0x20) != 0)
          {
            v111 = 0;
          }

          else
          {
            v111 = v104;
          }

          v112 = v76[40];
          if (v111 == 1)
          {
            printf("WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v125, v120, v75, v112);
            syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v125, v120, v75, v76[40]);
          }

          else
          {
            syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v125, v120, v75, v112);
          }
        }

        else
        {
          v105 = v104 ^ 1;
          v106 = sub_175AE4();
          v107 = sub_160F68(a3);
          v108 = v76[40];
          if ((v105 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v106, a2, v107, v125, v120, v75, v108);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v106, a2, v107, v125, v120, v75, v108);
            v109 = sub_175AE4();
            v110 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v109, a2, v110, v125, v120, v75, v76[40]);
          }

          v34 = v36;
          v35 = v124;
        }
      }

      ++v75;
      ++v76;
    }

    while (v75 != 2);
    v33 = v120 + 1;
    v119 += 2;
  }

  while (v120 != 3);
  return 0;
}

uint64_t sub_1720BC(char *a1, int a2, const char *a3, va_list a4)
{
  result = vsnprintf(a1, a2, a3, a4);
  if (a1)
  {
    if (result >= a2)
    {
      result = a2 - 1;
      a1[result] = 0;
    }
  }

  return result;
}

char *sub_17212C(char *a1, const char *a2, int a3)
{
  result = strncpy(a1, a2, a3);
  result[a3 - 1] = 0;
  return result;
}

uint64_t sub_17215C(double *a1, int a2, __CFDictionary *a3)
{
  if (a2 <= 1)
  {
    sub_14B76C(kVTSampleAttachmentQualityMetricsKey_LumaMeanSquaredError, a3, a1[3]);
    sub_14B76C(kVTSampleAttachmentQualityMetricsKey_ChromaBlueMeanSquaredError, a3, a1[4]);
    sub_14B76C(kVTSampleAttachmentQualityMetricsKey_ChromaRedMeanSquaredError, a3, a1[5]);
    return 0;
  }

  LODWORD(v6) = a2;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    if (sub_160EF0(0x10u, 4))
    {
      v14 = sub_160F34(0x10u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v15, 16, v16, "AVE_MSE_MakeDict", 48, "pLumaMSEArr != __null", a1, v6, a3);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v17, 16, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v15, 16, v16);
      }
    }

    return 4294966293;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!v9)
  {
    if (sub_160EF0(0x10u, 4))
    {
      v18 = sub_160F34(0x10u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v19, 16, v20, "AVE_MSE_MakeDict", 52, "pChromaBlueMSEArr != __null", a1, v6, a3);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v21, 16, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v19, 16, v20);
      }
    }

    CFRelease(v8);
    return 4294966293;
  }

  v10 = v9;
  v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v11)
  {
    v6 = v6;
    v12 = a1 + 5;
    do
    {
      sub_14A680(v8, *(v12 - 2));
      sub_14A680(v10, *(v12 - 1));
      v13 = *v12;
      v12 += 9;
      sub_14A680(v11, v13);
      --v6;
    }

    while (v6);
    CFDictionaryAddValue(a3, kVTSampleAttachmentQualityMetricsKey_LumaMeanSquaredError, v8);
    CFDictionaryAddValue(a3, kVTSampleAttachmentQualityMetricsKey_ChromaBlueMeanSquaredError, v10);
    CFDictionaryAddValue(a3, kVTSampleAttachmentQualityMetricsKey_ChromaRedMeanSquaredError, v11);
    v5 = 0;
  }

  else
  {
    if (sub_160EF0(0x10u, 4))
    {
      v22 = sub_160F34(0x10u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v23, 16, v24, "AVE_MSE_MakeDict", 56, "pChromaRedMSEArr != __null", a1, v6, a3);
        v25 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v25, 16, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v23, 16, v24);
      }
    }

    v5 = 4294966293;
  }

  CFRelease(v8);
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  return v5;
}

uint64_t sub_172598(uint64_t result)
{
  *result = off_206E78;
  *(result + 8) = 0;
  *(result + 32) = result + 40;
  *(result + 4136) = 1;
  *(result + 16) = 0x100000000000;
  *(result + 24) = 0xFFFF;
  return result;
}

uint64_t sub_1725DC(uint64_t result, uint64_t a2, int a3, char a4)
{
  *result = off_206E78;
  *(result + 8) = 0;
  *(result + 32) = a2;
  *(result + 4136) = a4;
  *(result + 16) = 0;
  *(result + 20) = a3;
  *(result + 24) = 0xFFFF;
  return result;
}

uint64_t sub_17262C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = a2 & 1 | (2 * v2);
  *(a1 + 24) = v3;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  if (v4 != 8)
  {
    return 0;
  }

  v5 = v2 & 0x7FFFFE;
  if (*(a1 + 4136) == 1 && v5 == 0)
  {
    v7 = *(a1 + 12);
    if (v7 >= *(a1 + 20))
    {
      return 4294966277;
    }

    v8 = *(a1 + 32);
    *(a1 + 12) = v7 + 1;
    *(v8 + v7) = 3;
    v3 = *(a1 + 24) | 0x300;
    *(a1 + 24) = v3;
    *(a1 + 16) += 8;
  }

  v9 = *(a1 + 12);
  if (v9 >= *(a1 + 20))
  {
    return 4294966277;
  }

  v10 = 0;
  v11 = *(a1 + 32);
  *(a1 + 12) = v9 + 1;
  *(v11 + v9) = v3;
  *(a1 + 8) = 0;
  return v10;
}

uint64_t sub_1726E0(uint64_t a1, unsigned int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  while (1)
  {
    v4 = 8 - v3;
    if (a3 < 8 - v3)
    {
      v4 = a3;
    }

    v3 += v4;
    *(a1 + 8) = v3;
    a3 -= v4;
    v5 = (a2 >> a3) & ~(-1 << v4) | (*(a1 + 24) << v4);
    *(a1 + 24) = v5;
    if (v3 != 8)
    {
      goto LABEL_12;
    }

    if (*(a1 + 4136) == 1 && (v5 & 0xFFFFFC) == 0)
    {
      v6 = *(a1 + 12);
      if (v6 >= *(a1 + 20))
      {
        return 4294966277;
      }

      v7 = *(a1 + 32);
      *(a1 + 12) = v6 + 1;
      *(v7 + v6) = 3;
      v5 = *(a1 + 24) | 0x300;
      *(a1 + 24) = v5;
      *(a1 + 16) += 8;
    }

    v8 = *(a1 + 12);
    if (v8 >= *(a1 + 20))
    {
      return 4294966277;
    }

    v3 = 0;
    v9 = *(a1 + 32);
    *(a1 + 12) = v8 + 1;
    *(v9 + v8) = v5;
    *(a1 + 8) = 0;
LABEL_12:
    if (!a3)
    {
      return 0;
    }
  }
}

uint64_t sub_1727BC(uint64_t a1, signed int a2, int a3)
{
  if (a2 < 0)
  {
    a2 = 0x80000000 - a2;
  }

  return sub_1726E0(a1, a2, a3);
}

uint64_t sub_1727F8(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 >= *(a1 + 20))
  {
    return 4294966277;
  }

  v2 = *(a1 + 32);
  *(a1 + 12) = v1 + 1;
  *(v2 + v1) = 0;
  v3 = *(a1 + 12);
  if (v3 >= *(a1 + 20))
  {
    return 4294966277;
  }

  v4 = *(a1 + 32);
  *(a1 + 12) = v3 + 1;
  *(v4 + v3) = 0;
  v5 = *(a1 + 12);
  if (v5 >= *(a1 + 20))
  {
    return 4294966277;
  }

  v6 = *(a1 + 32);
  *(a1 + 12) = v5 + 1;
  *(v6 + v5) = 0;
  v7 = *(a1 + 12);
  if (v7 >= *(a1 + 20))
  {
    return 4294966277;
  }

  v8 = 0;
  v9 = *(a1 + 32);
  *(a1 + 12) = v7 + 1;
  *(v9 + v7) = 1;
  return v8;
}

uint64_t sub_172890(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = *a2++;
    result = sub_1726E0(a1, v6, 8);
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1728F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) | *(a2 + 8))
  {
    return 4294966296;
  }

  v4 = *(a1 + 12);
  v5 = *(a2 + 12);
  if (v5 + v4 > *(a1 + 20))
  {
    return 4294966277;
  }

  memcpy((*(a1 + 32) + v4), *(a2 + 32), v5);
  result = 0;
  *(a1 + 12) += *(a2 + 12);
  return result;
}

uint64_t sub_172978(uint64_t a1)
{
  result = sub_17262C(a1, 1);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {

      return sub_1726E0(a1, 0, 8 - v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_1729E0(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0x80000000) == 0)
  {
    if (a2)
    {
      v3 = *(a2 + 8);
      if (v3 >= 1)
      {
        if (!a1)
        {
          v2 = 14400000;
        }

        result = v2 * *a2 / v3;
        *a2 = result;
        *(a2 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t sub_172A38(int a1, uint64_t a2)
{
  v2 = 4294966296;
  if (a1 && a2)
  {
    if (14400000 % a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = 14400000;
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = (v3 * (*a2 + v4 / a1) / v4);
    }

    else
    {
      v5 = 0;
    }

    v2 = 0;
    *a2 = v5;
    *(a2 + 8) = v3;
  }

  return v2;
}

uint64_t sub_172AA4(int a1, int a2, int a3)
{
  v5 = sub_16FDAC(a1, 5, 0);
  if (!v5)
  {
    return 4294966294;
  }

  v6 = *v5;
  if (v6 < 1)
  {
    v10 = 4294966294;
  }

  else
  {
    v7 = v5 + 3;
    v8 = 1;
    v9 = 1;
    do
    {
      if (*(v7 - 1) <= a2 && *v7 <= a3)
      {
        break;
      }

      v9 = v8 < v6;
      v7 += 3;
      ++v8;
    }

    while (v8 - v6 != 1);
    v10 = v9 ? 0 : 4294966294;
  }

  v11 = v5[13];
  if (v11 < 1)
  {
    return 4294966294;
  }

  for (i = v5 + 16; *(i - 1) < a2 || *i < a3; i += 3)
  {
    if (!--v11)
    {
      return 4294966294;
    }
  }

  return v10;
}

uint64_t sub_172B78(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  if (sub_160EF0(0xDu, 7))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v7, 13, v8, "AVE_Session_DMV_Create", a1);
      v9 = sub_175AE4();
      v45 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v9, 13, v45, "AVE_Session_DMV_Create", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v7, 13, v8, "AVE_Session_DMV_Create", a1);
    }
  }

  v10 = sub_1502C8();
  *(a1 + 10724) = 2;
  *(a1 + 88) = 5;
  *(a1 + 10508) = 0x100000001;
  *(a1 + 664) = v10[103];
  v11 = sub_1289FC(5, 2);
  if (v11)
  {
    v12 = v11;
    if (!sub_160EF0(0xDu, 4))
    {
      goto LABEL_39;
    }

    v13 = sub_160F34(0xDu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Create failed %p %lld %d\n", v14, 13, v15, "AVE_Session_DMV_Create", 55, "ret == 0", a1, 0, v12);
      v16 = sub_175AE4();
      v46 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Create failed %p %lld %d", v16, 13, v46);
      goto LABEL_39;
    }

    v53 = 0;
    v54 = v12;
    v51 = a1;
    v50 = 55;
    v47 = v15;
    v24 = "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Create failed %p %lld %d";
    goto LABEL_13;
  }

  *(a1 + 92) = sub_129100(*(a1 + 24));
  *(a1 + 80) = sub_129118(*(a1 + 24));
  *(a1 + 96) = *(sub_16FD90(*(a1 + 92)) + 1);
  sub_13EF48(*(a1 + 80), v10[403], (a1 + 72));
  if (sub_160EF0(0xDu, 7))
  {
    v17 = sub_160F34(0xDu);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    v20 = *(a1 + 92);
    v21 = *(a1 + 96);
    if (v17)
    {
      printf("%lld %d AVE %s: DeviceID: %d, DeviceType: %d\n\n", v18, 13, v19, *(a1 + 92), v21);
      v22 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: DeviceID: %d, DeviceType: %d\n", v22, 13, v23, *(a1 + 92), *(a1 + 96));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: DeviceID: %d, DeviceType: %d\n", v18, 13, v19, *(a1 + 92), v21);
    }
  }

  if (*(a1 + 96) > 29)
  {
    sub_CBCA0(*(a1 + 80), (a1 + 616));
    *(a1 + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (sub_160EF0(0xDu, 7))
    {
      v29 = sub_160F34(0xDu);
      v30 = sub_175AE4();
      v31 = sub_160F68(7);
      if (v29)
      {
        printf("%lld %d AVE %s: %s ENTER\n", v30, 13, v31, "AVE_DMV_SetParamsDefault");
        v32 = sub_175AE4();
        v48 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s ENTER", v32, 13, v48, "AVE_DMV_SetParamsDefault");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s ENTER", v30, 13, v31, "AVE_DMV_SetParamsDefault");
      }
    }

    *(a1 + 11696) = 0u;
    *(a1 + 11680) = 0u;
    *(a1 + 11664) = 0u;
    *(a1 + 11648) = 0u;
    *(a1 + 11632) = 0u;
    *(a1 + 11616) = 0u;
    *(a1 + 11600) = 0u;
    *(a1 + 11584) = 0u;
    *(a1 + 11568) = 0u;
    *(a1 + 11552) = 0u;
    *(a1 + 11536) = 0u;
    *(a1 + 11520) = 0u;
    *(a1 + 11504) = 0u;
    *(a1 + 11488) = 0u;
    *(a1 + 11472) = 0u;
    *(a1 + 11456) = 0u;
    *(a1 + 11440) = 0u;
    *(a1 + 11424) = 0u;
    v33 = -288;
    do
    {
      *(a1 + v33 + 11712) = 1;
      v33 += 48;
    }

    while (v33);
    *(a1 + 11416) = 0x100000006;
    *(a1 + 11724) = 0;
    *(a1 + 11744) = 0;
    *(a1 + 11752) = 0;
    *(a1 + 11756) = 0;
    bzero((a1 + 11952), 0x2FCCuLL);
    *(a1 + 648) = 0;
    *(a1 + 668) = 0;
    if (sub_160EF0(0xDu, 7))
    {
      v34 = sub_160F34(0xDu);
      v35 = sub_175AE4();
      v36 = sub_160F68(7);
      if (v34)
      {
        printf("%lld %d AVE %s: %s Exit\n", v35, 13, v36, "AVE_DMV_SetParamsDefault");
        v37 = sub_175AE4();
        v49 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Exit", v37, 13, v49, "AVE_DMV_SetParamsDefault");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Exit", v35, 13, v36, "AVE_DMV_SetParamsDefault");
      }
    }

    v12 = sub_1732B0(a1, a3);
    if (v12)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v38 = sub_160F34(0xDu);
        v14 = sub_175AE4();
        v39 = sub_160F68(4);
        if (!v38)
        {
          v51 = v12;
          v50 = 83;
          v47 = v39;
          v24 = "%lld %d AVE %s: %s:%d %s | DMV: AVE_SetSessionProperties failed, err = %d";
LABEL_13:
          syslog(3, v24, v14, 13, v47, "AVE_Session_DMV_Create", v50, "ret == 0", v51, v53, v54);
          goto LABEL_39;
        }

        printf("%lld %d AVE %s: %s:%d %s | DMV: AVE_SetSessionProperties failed, err = %d\n", v14, 13, v39, "AVE_Session_DMV_Create", 83, "ret == 0", v12);
        v40 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: AVE_SetSessionProperties failed, err = %d", v40);
      }
    }

    else
    {
      *(a1 + 64) = 30565;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v25 = sub_160F34(0xDu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | device %d is not supported\n", v26, 13, v27, "AVE_Session_DMV_Create", 68, "false", *(a1 + 96));
        v26 = sub_175AE4();
        sub_160F68(4);
        v28 = *(a1 + 96);
      }

      else
      {
        v52 = *(a1 + 96);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | device %d is not supported", v26);
    }

    v12 = 4294966294;
  }

LABEL_39:
  if (sub_160EF0(0xDu, 7))
  {
    v41 = sub_160F34(0xDu);
    v42 = sub_175AE4();
    v43 = sub_160F68(7);
    if (v41)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v42, 13, v43, "AVE_Session_DMV_Create", a1, a2, a3, v12);
      v42 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v42, 13);
  }

  return v12;
}

uint64_t sub_1732B0(_DWORD *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (!theDict)
    {
      result = sub_160EF0(0xDu, 6);
      if (!result)
      {
        return result;
      }

      v17 = sub_160F34(0xDu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: No session properties sent in, continue...\n", v18, 13, v19);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: No session properties sent in, continue...");
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, @"AVE_DMV_ScalingFactor");
    if (Value)
    {
      v5 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        a1[343] = valuePtr;
        if (sub_160EF0(0xDu, 6))
        {
          v7 = sub_160F34(0xDu);
          v8 = sub_175AE4();
          v9 = sub_160F68(6);
          v10 = a1[343];
          if (v7)
          {
            printf("%lld %d AVE %s: received AVE_DMV_ScalingFactor = %d\n", v8, 13, v9, v10);
            v11 = sub_175AE4();
            v72 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: received AVE_DMV_ScalingFactor = %d", v11, 13, v72, a1[343]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: received AVE_DMV_ScalingFactor = %d", v8, 13, v9, v10);
          }
        }
      }
    }

    v20 = CFDictionaryGetValue(theDict, @"AVE_DMV_InterpolationMode");
    if (v20)
    {
      v21 = v20;
      v22 = CFNumberGetTypeID();
      if (v22 == CFGetTypeID(v21))
      {
        valuePtr = 0;
        CFNumberGetValue(v21, kCFNumberIntType, &valuePtr);
        a1[342] = valuePtr;
        if (sub_160EF0(0xDu, 6))
        {
          v23 = sub_160F34(0xDu);
          v24 = sub_175AE4();
          v25 = sub_160F68(6);
          v26 = a1[342];
          if (v23)
          {
            printf("%lld %d AVE %s: received AVE_DMV_InterpolationMode = %d\n", v24, 13, v25, v26);
            v27 = sub_175AE4();
            v74 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: received AVE_DMV_InterpolationMode = %d", v27, 13, v74, a1[342]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: received AVE_DMV_InterpolationMode = %d", v24, 13, v25, v26);
          }
        }
      }
    }

    v28 = CFDictionaryGetValue(theDict, @"AVE_DMV_InFormat");
    if (v28)
    {
      v29 = v28;
      v30 = CFNumberGetTypeID();
      if (v30 == CFGetTypeID(v29))
      {
        valuePtr = 0;
        CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
        a1[344] = valuePtr;
        if (sub_160EF0(0xDu, 6))
        {
          v31 = sub_160F34(0xDu);
          v32 = sub_175AE4();
          v33 = sub_160F68(6);
          v34 = a1[344];
          if (v31)
          {
            printf("%lld %d AVE %s: received AVE_DMV_InFormat = %d\n", v32, 13, v33, v34);
            v35 = sub_175AE4();
            v75 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: received AVE_DMV_InFormat = %d", v35, 13, v75, a1[344]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: received AVE_DMV_InFormat = %d", v32, 13, v33, v34);
          }
        }
      }
    }

    v36 = CFDictionaryGetValue(theDict, @"AVE_DMV_OutFormat");
    if (v36)
    {
      v37 = v36;
      v38 = CFNumberGetTypeID();
      if (v38 == CFGetTypeID(v37))
      {
        valuePtr = 0;
        CFNumberGetValue(v37, kCFNumberIntType, &valuePtr);
        a1[345] = valuePtr;
        if (sub_160EF0(0xDu, 6))
        {
          v39 = sub_160F34(0xDu);
          v40 = sub_175AE4();
          v41 = sub_160F68(6);
          v42 = a1[345];
          if (v39)
          {
            printf("%lld %d AVE %s: received AVE_DMV_OutFormat = %d\n", v40, 13, v41, v42);
            v43 = sub_175AE4();
            v76 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: received AVE_DMV_OutFormat = %d", v43, 13, v76, a1[345]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: received AVE_DMV_OutFormat = %d", v40, 13, v41, v42);
          }
        }
      }
    }

    v44 = CFDictionaryGetValue(theDict, @"AVE_DMV_SourceWidth");
    if (v44)
    {
      v45 = v44;
      v46 = CFNumberGetTypeID();
      if (v46 == CFGetTypeID(v45))
      {
        valuePtr = 0;
        CFNumberGetValue(v45, kCFNumberIntType, &valuePtr);
        a1[340] = valuePtr;
        if (sub_160EF0(0xDu, 6))
        {
          v47 = sub_160F34(0xDu);
          v48 = sub_175AE4();
          v49 = sub_160F68(6);
          v50 = a1[340];
          if (v47)
          {
            printf("%lld %d AVE %s: received AVE_DMV_MVWidth = %d\n", v48, 13, v49, v50);
            v51 = sub_175AE4();
            v77 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: received AVE_DMV_MVWidth = %d", v51, 13, v77, a1[340]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: received AVE_DMV_MVWidth = %d", v48, 13, v49, v50);
          }
        }
      }
    }

    v52 = CFDictionaryGetValue(theDict, @"AVE_DMV_SourceHeight");
    if (v52)
    {
      v53 = v52;
      v54 = CFNumberGetTypeID();
      if (v54 == CFGetTypeID(v53))
      {
        valuePtr = 0;
        CFNumberGetValue(v53, kCFNumberIntType, &valuePtr);
        a1[341] = valuePtr;
        if (sub_160EF0(0xDu, 6))
        {
          v55 = sub_160F34(0xDu);
          v56 = sub_175AE4();
          v57 = sub_160F68(6);
          v58 = a1[341];
          if (v55)
          {
            printf("%lld %d AVE %s: received AVE_DMV_MVHeight = %d\n", v56, 13, v57, v58);
            v59 = sub_175AE4();
            v78 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: received AVE_DMV_MVHeight = %d", v59, 13, v78, a1[341]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: received AVE_DMV_MVHeight = %d", v56, 13, v57, v58);
          }
        }
      }
    }

    result = CFDictionaryGetValue(theDict, @"SessionName");
    if (result)
    {
      v60 = result;
      v61 = CFStringGetTypeID();
      if (v61 == CFGetTypeID(v60))
      {
        v62 = (a1 + 25);
        v63 = sub_14CE6C(v60, v62, 512);
        sub_172100(v62, 512, "%s", v64, v65, v66, v67, v68, v63);
        result = sub_160EF0(0xDu, 6);
        if (!result)
        {
          return result;
        }

        v69 = sub_160F34(0xDu);
        v70 = sub_175AE4();
        v71 = sub_160F68(6);
        if (v69)
        {
          printf("%lld %d AVE %s: OF: received AVE_PROPERTY_KEY_SESSION_NAME = %s\n", v70, 13, v71, v62);
          sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: OF: received AVE_PROPERTY_KEY_SESSION_NAME = %s");
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v12 = sub_160F34(0xDu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pINS is NULL\n", v13, 13, v14, "AVE_DMV_SetSessionProperties", 517, "pINS != __null");
        v15 = sub_175AE4();
        v73 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | pINS is NULL", v15, 13, v73, "AVE_DMV_SetSessionProperties", 517, "pINS != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | pINS is NULL", v13, 13, v14, "AVE_DMV_SetSessionProperties", 517, "pINS != __null");
      }
    }

    return 4294954394;
  }

  return result;
}

uint64_t sub_173A20(uint64_t a1, unint64_t a2, const __CFDictionary *a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (sub_160EF0(0xDu, 7))
  {
    v7 = sub_160F34(0xDu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s ENTER width = %d, height = %d\n", v8, 13, v9, "AVE_Session_DMV_Start", v4, v6);
      v10 = sub_175AE4();
      v44 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s ENTER width = %d, height = %d", v10, 13, v44, "AVE_Session_DMV_Start", v4, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s ENTER width = %d, height = %d", v8, 13, v9, "AVE_Session_DMV_Start", v4, v6);
    }
  }

  v11 = sub_1732B0(a1, a3);
  if (v11)
  {
    v12 = v11;
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE_DMV_SetSessionProperties failed, ret = %d\n", v14, 13, v15, "AVE_Session_DMV_Start", 108, "ret == 0", v12);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_DMV_SetSessionProperties failed, ret = %d", v14);
    }

    goto LABEL_48;
  }

  *(a1 + 1392) = v4;
  *(a1 + 1396) = v6;
  *(a1 + 11404) = v4;
  *(a1 + 11408) = v6;
  if (!sub_172AA4(*(a1 + 92), *(a1 + 1360), *(a1 + 1364)))
  {
    if ((*(a1 + 87200) & 1) == 0)
    {
      if (sub_160EF0(3u, 4))
      {
        v20 = sub_160F34(3u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | DMV indicator must be true\n\n", v21, 3, v22, "AVE_DMV_VerifySessionProperties", 488, "pINS->bUseDMV");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | DMV indicator must be true\n");
      }

      goto LABEL_42;
    }

    if (*(a1 + 1376) >= 2)
    {
      if (sub_160EF0(3u, 4))
      {
        v23 = sub_160F34(3u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalide input format %u\n\n", v24, 3, v25, "AVE_DMV_VerifySessionProperties", 492, "pINS->sSessionCfg.sDMV.iInFormat < 2", *(a1 + 1376));
          v24 = sub_175AE4();
          sub_160F68(4);
        }

        v46 = *(a1 + 1376);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalide input format %u\n", v24);
      }

      goto LABEL_42;
    }

    if (*(a1 + 1380) >= 2)
    {
      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_42;
      }

      v26 = sub_160F34(3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalide output format %u\n\n", v27, 3, v28, "AVE_DMV_VerifySessionProperties", 496, "pINS->sSessionCfg.sDMV.iOutFormat < 2", *(a1 + 1380));
        v27 = sub_175AE4();
        sub_160F68(4);
        v29 = *(a1 + 1380);
      }

      else
      {
        v47 = *(a1 + 1380);
      }
    }

    else
    {
      if (*(a1 + 1368) <= 2)
      {
        v19 = *(a1 + 1372);
        if (v19 <= 8 && ((1 << v19) & 0x114) != 0)
        {
          v12 = 0;
          *(a1 + 87136) = 0;
          *(a1 + 64) = 30566;
          goto LABEL_48;
        }

        if (sub_160EF0(3u, 4))
        {
          v41 = sub_160F34(3u);
          v42 = sub_175AE4();
          v43 = sub_160F68(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalide scaling factor %u\n\n", v42, 3, v43, "AVE_DMV_VerifySessionProperties", 506, "pINS->sSessionCfg.sDMV.iScaleRatio == 2 || pINS->sSessionCfg.sDMV.iScaleRatio == 4 || pINS->sSessionCfg.sDMV.iScaleRatio == 8", *(a1 + 1372));
            v42 = sub_175AE4();
            sub_160F68(4);
          }

          v49 = *(a1 + 1372);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalide scaling factor %u\n", v42);
        }

LABEL_42:
        if (sub_160EF0(0xDu, 4))
        {
          v33 = sub_160F34(0xDu);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          if (v33)
          {
            v12 = 4294966296;
            printf("%lld %d AVE %s: %s:%d %s | AVE_DMV_VerifySessionProperties failed, ret = %d\n", v34, 13, v35, "AVE_Session_DMV_Start", 126, "ret == 0", -1000);
            v34 = sub_175AE4();
            sub_160F68(4);
          }

          else
          {
            v12 = 4294966296;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_DMV_VerifySessionProperties failed, ret = %d", v34);
        }

        else
        {
          v12 = 4294966296;
        }

        goto LABEL_48;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_42;
      }

      v30 = sub_160F34(3u);
      v27 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalide output format %u\n\n", v27, 3, v31, "AVE_DMV_VerifySessionProperties", 500, "pINS->sSessionCfg.sDMV.iInterpMethod < 3", *(a1 + 1368));
        v27 = sub_175AE4();
        sub_160F68(4);
        v32 = *(a1 + 1368);
      }

      else
      {
        v48 = *(a1 + 1368);
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalide output format %u\n", v27);
    goto LABEL_42;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v16 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v18 = sub_160F68(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | Dimension (%dx%d) is not supported\n", v17, 13, v18, "AVE_Session_DMV_Start", 122, "dimensionsRequirement == 0", v4, v6);
      v17 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Dimension (%dx%d) is not supported", v17);
  }

  v12 = 4294966295;
LABEL_48:
  if (sub_160EF0(0xDu, 7))
  {
    v36 = sub_160F34(0xDu);
    v37 = sub_175AE4();
    v38 = sub_160F68(7);
    if (v36)
    {
      printf("%lld %d AVE %s: Exit %s, ret = %d\n", v37, 13, v38, "AVE_Session_DMV_Start", v12);
      v39 = sub_175AE4();
      v45 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Exit %s, ret = %d", v39, 13, v45, "AVE_Session_DMV_Start", v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s, ret = %d", v37, 13, v38, "AVE_Session_DMV_Start", v12);
    }
  }

  return v12;
}

uint64_t sub_174284()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = (v0 + 86016);
  pixelBuffer = 0;
  v88 = v3;
  if (sub_160EF0(0xDu, 7))
  {
    v9 = sub_160F34(0xDu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v10, 13, v11, "AVE_Session_DMV_Process", v7, v4, v2);
      v10 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v10);
  }

  v12 = sub_175AE4();
  v8[284] = CVPixelBufferGetWidthOfPlane(v4, 0);
  v8[285] = CVPixelBufferGetHeightOfPlane(v4, 0);
  if (!v8[280])
  {
    v13 = sub_1502C8();
    v90[0] = *(v7 + 1392);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
    v15 = sub_167CD8(PixelFormatType);
    if (!v15)
    {
      if (sub_160EF0(3u, 4))
      {
        v29 = sub_160F34(3u);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        v32 = *(v7 + 80);
        v33 = CVPixelBufferGetPixelFormatType(v4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v30, 3, v31, "AVE_Session_DMV_Process", 189, "pPixelFmt != __null", v7, v32, v33);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          v34 = *(v7 + 80);
          CVPixelBufferGetPixelFormatType(v4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v30, 3, v31);
      }

      v50 = 0;
      v37 = -1001;
      goto LABEL_66;
    }

    if (v13[420])
    {
      v16 = v13 + 420;
    }

    else
    {
      v16 = 0;
    }

    sub_CC848(*(v7 + 616), v16, *(v7 + 88), 4, *(v13 + 103), *(v13 + 104), v90, 1, *(v15 + 3), *(v15 + 1), 0);
  }

  sub_CCF60(*(v7 + 616), 0, v4);
  v17 = *(v7 + 64);
  if (v17 == 30566)
  {
    v21 = sub_174DC4(v7, &v88);
    if (v21)
    {
      v22 = v21;
      if (sub_160EF0(0xDu, 4))
      {
        v23 = sub_160F34(0xDu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_DMV_VerifyImageBuffer failed, ret = %d\n", v24, 13, v25, "AVE_Session_DMV_Process", 215, "ret == 0", v22);
          v24 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_DMV_VerifyImageBuffer failed, ret = %d", v24);
      }

      goto LABEL_52;
    }

    bzero(v91, 0x1078uLL);
    v90[0] = v7 + 624;
    v90[1] = v7 + 1392;
    v35 = *(v7 + 616);
    v90[2] = v7 + 10704;
    v91[1] = v35;
    v94 = v7 + 11952;
    v95 = v7 + 24188;
    v96 = v7 + 31992;
    v97 = v7 + 41624;
    v98 = v7 + 63112;
    v99 = v12;
    v36 = sub_12A644(*(v7 + 24), v90, v7 + 32, 1, *(v7 + 16), 0, 0, v7 + 100, (v7 + 11724), 0);
    if (v36)
    {
      v37 = v36;
      if (sub_160EF0(0xDu, 4))
      {
        v38 = sub_160F34(0xDu);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, ret = %d\n", v39, 13, v40, "AVE_Session_DMV_Process", 235, "ret == 0", v37);
          v39 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, ret = %d", v39);
      }

      goto LABEL_65;
    }

LABEL_36:
    *(v7 + 64) = 30568;
    bzero(v89, 0x1738uLL);
    v84 = 0;
    v83 = 0u;
    v82 = 0u;
    *&v81[16] = 0u;
    *v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    memset(v72, 0, sizeof(v72));
    v73 = 0;
    bzero(v90, 0x4A40uLL);
    v74[1] = v4;
    *&v81[8] = *(v7 + 87168);
    *&v82 = v90;
    *(&v82 + 1) = v89;
    *&v81[24] = v72;
    v41 = v8[284];
    if (!v41)
    {
      v41 = *(v7 + 1392);
    }

    v92 = v41;
    v42 = v8[285];
    if (!v42)
    {
      v42 = *(v7 + 1396);
    }

    v93 = v42;
    v85 = v8[280];
    v86 = 0;
    v74[0] = v6;
    v43 = *(v7 + 8);
    MotionVectorPixelBuffer = VTMotionEstimationProcessorSessionCreateMotionVectorPixelBuffer();
    if (MotionVectorPixelBuffer)
    {
      v45 = MotionVectorPixelBuffer;
      if (sub_160EF0(0xDu, 4))
      {
        v37 = sub_160F34(0xDu);
        v46 = sub_175AE4();
        v47 = sub_160F68(4);
        if (!v37)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | creation of output buffer failed, err = %d", v46, 13, v47, "AVE_Session_DMV_Process", 279, "err == noErr", v45);
          goto LABEL_56;
        }

        printf("%lld %d AVE %s: %s:%d %s | creation of output buffer failed, err = %d\n", v46, 13, v47, "AVE_Session_DMV_Process", 279, "err == noErr", v45);
        v48 = sub_175AE4();
        v49 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | creation of output buffer failed, err = %d", v48, 13, v49, "AVE_Session_DMV_Process", 279, "err == noErr", v45);
      }

      v37 = 0;
LABEL_56:
      v50 = 4294966296;
      goto LABEL_66;
    }

    if (sub_160EF0(0xDu, 6))
    {
      v51 = sub_160F34(0xDu);
      v52 = sub_175AE4();
      v53 = sub_160F68(6);
      v54 = pixelBuffer;
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      if (v51)
      {
        printf("%lld %d AVE %s: created output buffer %p: width: %zu, height: %zu\n\n", v52, 13, v53, v54, Width, Height);
        v57 = sub_175AE4();
        v58 = sub_160F68(6);
        v59 = pixelBuffer;
        v60 = CVPixelBufferGetWidth(pixelBuffer);
        v70 = CVPixelBufferGetHeight(pixelBuffer);
        syslog(3, "%lld %d AVE %s: created output buffer %p: width: %zu, height: %zu\n", v57, 13, v58, v59, v60, v70);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: created output buffer %p: width: %zu, height: %zu\n", v52, 13, v53, v54, Width, Height);
      }
    }

    *(&v75 + 1) = pixelBuffer;
    v37 = sub_12D95C(*(v7 + 24), v74);
    if (v37 && sub_160EF0(0xDu, 4))
    {
      v61 = sub_160F34(0xDu);
      v62 = sub_175AE4();
      v63 = sub_160F68(4);
      if (v61)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Process failed, ret = %d\n", v62, 13, v63, "AVE_Session_DMV_Process", 288, "ret == 0", v37);
        v62 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Process failed, ret = %d", v62);
    }

LABEL_65:
    v50 = 0;
    goto LABEL_66;
  }

  if (v17 == 30568)
  {
    if (sub_174DC4(v7, &v88))
    {
      if (sub_160EF0(3u, 4))
      {
        v18 = sub_160F34(3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_DMV_VerifyImageBuffer failed.\n", v19, 3, v20, "AVE_Session_DMV_Process", 207, "ret == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_DMV_VerifyImageBuffer failed.");
      }

LABEL_52:
      v50 = 0;
      v37 = -1000;
      goto LABEL_66;
    }

    goto LABEL_36;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v26 = sub_160F34(0xDu);
    v27 = sub_175AE4();
    v28 = sub_160F68(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | Incorrect session status = 0x%08x.\n", v27, 13, v28, "AVE_Session_DMV_Process", 244, "false", *(v7 + 64));
      v27 = sub_175AE4();
      sub_160F68(4);
    }

    v71 = *(v7 + 64);
    syslog(3, "%lld %d AVE %s: %s:%d %s | Incorrect session status = 0x%08x.", v27);
  }

  v50 = 0;
  v37 = -1011;
LABEL_66:
  if (v37 && pixelBuffer)
  {
    CFRelease(pixelBuffer);
    pixelBuffer = 0;
  }

  ++v8[280];
  if (sub_160EF0(0xDu, 7))
  {
    v64 = sub_160F34(0xDu);
    v65 = sub_175AE4();
    v66 = sub_160F68(7);
    if (v64)
    {
      printf("%lld %d AVE %s: %s EXIT ret = %d\n", v65, 13, v66, "AVE_Session_DMV_Process", v37);
      v67 = sub_175AE4();
      v69 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s EXIT ret = %d", v67, 13, v69, "AVE_Session_DMV_Process", v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s EXIT ret = %d", v65, 13, v66, "AVE_Session_DMV_Process", v37);
    }
  }

  return v50;
}

uint64_t sub_174DC4(uint64_t a1, CVPixelBufferRef *a2)
{
  if (sub_160EF0(0xDu, 7))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s ENTER\n", v5, 13, v6, "AVE_DMV_VerifyImageBuffer");
      v7 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s ENTER", v7, 13, v27, "AVE_DMV_VerifyImageBuffer");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s ENTER", v5, 13, v6, "AVE_DMV_VerifyImageBuffer");
    }
  }

  Width = CVPixelBufferGetWidth(*a2);
  Height = CVPixelBufferGetHeight(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  if (Width == *(a1 + 1392))
  {
    if (Height == *(a1 + 1396))
    {
      v11 = PixelFormatType;
      if (PixelFormatType == 1278226536)
      {
        v12 = 0;
        goto LABEL_23;
      }

      if (sub_160EF0(0xDu, 4))
      {
        v19 = sub_160F34(0xDu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid input format: %d instead of %d\n", v20, 13, v21, "AVE_DMV_VerifyImageBuffer", 433, "(format == kCVPixelFormatType_OneComponent16Half)", v11, 1278226536);
          v20 = sub_175AE4();
          v30 = v11;
          v28 = sub_160F68(4);
        }

        else
        {
          v30 = v11;
          v28 = v21;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input format: %d instead of %d", v20, 13, v28, "AVE_DMV_VerifyImageBuffer", 433, "(format == kCVPixelFormatType_OneComponent16Half)", v30, 1278226536);
      }
    }

    else if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid input height: %zu instead of %d\n", v17, 13, v18, "AVE_DMV_VerifyImageBuffer", 430, "(pINS->VideoParams.ui32Height == height)", Width, *(a1 + 1396));
        v17 = sub_175AE4();
        sub_160F68(4);
      }

      v32 = *(a1 + 1396);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input height: %zu instead of %d", v17, 13);
    }
  }

  else if (sub_160EF0(0xDu, 4))
  {
    v13 = sub_160F34(0xDu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid input width: %zu instead of %d\n", v14, 13, v15, "AVE_DMV_VerifyImageBuffer", 427, "(pINS->VideoParams.ui32Width == width)", Width, *(a1 + 1392));
      v14 = sub_175AE4();
      sub_160F68(4);
    }

    v31 = *(a1 + 1392);
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input width: %zu instead of %d", v14, 13);
  }

  v12 = 4294966295;
LABEL_23:
  if (sub_160EF0(0xDu, 7))
  {
    v22 = sub_160F34(0xDu);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v23, 13, v24, "AVE_DMV_VerifyImageBuffer", v12);
      v25 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v25, 13, v29, "AVE_DMV_VerifyImageBuffer", v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v23, 13, v24, "AVE_DMV_VerifyImageBuffer", v12);
    }
  }

  return v12;
}

uint64_t sub_1751F8(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 13, v4, "AVE_Session_DMV_Complete", a1);
      v5 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v24, "AVE_Session_DMV_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 13, v4, "AVE_Session_DMV_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 72);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 64) == 30568)
    {
      v27 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 24), &v27);
      if (v8 && sub_160EF0(0xDu, 4))
      {
        v9 = sub_160F34(0xDu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v12 = *(a1 + 80);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d\n", v10, 13, v11, "AVE_Session_DMV_Complete", 329, "ret == 0", a1, *(a1 + 80), v8);
          v10 = sub_175AE4();
          v11 = sub_160F68(4);
          v13 = *(a1 + 80);
        }

        else
        {
          v26 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d", v10, 13, v11);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v14 = sub_160F34(0xDu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 13, v16, "AVE_Session_DMV_Complete", 317, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v8 = 4294966295;
  }

  v17 = *(a1 + 72);
  v18 = sub_175AE4();
  sub_1403FC(v17, 6u, v18);
  if (sub_160EF0(0xDu, 7))
  {
    v19 = sub_160F34(0xDu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v20, 13, v21, "AVE_Session_DMV_Complete", a1, v8);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 13, v25, "AVE_Session_DMV_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 13, v21, "AVE_Session_DMV_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_17558C(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: ENTER %s\n", v3, 13, v4, "AVE_Session_DMV_Destroy");
      v5 = sub_175AE4();
      v21 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER %s", v5, 13, v21, "AVE_Session_DMV_Destroy");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER %s", v3, 13, v4, "AVE_Session_DMV_Destroy");
    }
  }

  v6 = sub_175AE4();
  if (*(a1 + 64) == 30568)
  {
    v23 = v6;
    sub_12C9EC(*(a1 + 24), &v23, 1);
  }

  v7 = sub_12916C(*(a1 + 24));
  *(a1 + 24) = 0;
  if (v7 && sub_160EF0(0xDu, 4))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed, ret= %d\n", v9, 13, v10, "AVE_Session_DMV_Destroy", 374, "ret == 0", v7);
      v9 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed, ret= %d", v9);
  }

  sub_151B10();
  v11 = *(a1 + 72);
  if (v11)
  {
    sub_13FB64(v11);
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 616);
  if (v12)
  {
    sub_CCDA4(v12);
    sub_CC04C(*(a1 + 616));
    *(a1 + 616) = 0;
  }

  v13 = *(a1 + 87144);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 87144) = 0;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 16) = 0;
  }

  v15 = *(a1 + 87160);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 87160) = 0;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v16 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s  EXIT\n", v17, 13, v18, "AVE_Session_DMV_Destroy");
      v19 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s  EXIT", v19, 13, v22, "AVE_Session_DMV_Destroy");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s  EXIT", v17, 13, v18, "AVE_Session_DMV_Destroy");
    }
  }

  return v7;
}

uint64_t sub_175860(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  *v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  if (!a4)
  {
    return 4294966295;
  }

  *a4 = 0;
  setlocale(0, &unk_1A7265);
  time(&v16);
  v8 = localtime(&v16);
  strftime(v17, 0x2DuLL, "%Y-%m-%d_%H-%M-%S", v8);
  v14 = "/var/mobile/Media/DCIM/";
  if (a1)
  {
    LOBYTE(v14) = a1;
  }

  sub_172100(a4, a5, "%s%s%s%s%s", v9, v10, v11, v12, v13, v14);
  return 0;
}

uint64_t sub_175994(uint64_t result)
{
  if (result <= -2002)
  {
    if (result > -2006)
    {
      if (result == -2005)
      {
        return 4294948264;
      }

      else
      {
        return 4294954396;
      }
    }

    else if (result > -2008)
    {
      if (result == -2007)
      {
        return 4294948263;
      }

      else
      {
        return 4294948265;
      }
    }

    else if (result == -2009)
    {
      return 4294948262;
    }

    else if (result == -2008)
    {
      return 4294949598;
    }

    else
    {
      return 4294949605;
    }
  }

  else
  {
    switch(result)
    {
      case 0xFFFFFC01:
      case 0xFFFFFC02:
      case 0xFFFFFC03:
      case 0xFFFFFC04:
      case 0xFFFFFC05:
      case 0xFFFFFC06:
      case 0xFFFFFC07:
      case 0xFFFFFC08:
      case 0xFFFFFC09:
      case 0xFFFFFC0A:
      case 0xFFFFFC0B:
      case 0xFFFFFC0C:
      case 0xFFFFFC0D:
      case 0xFFFFFC0E:
      case 0xFFFFFC0F:
      case 0xFFFFFC10:
      case 0xFFFFFC11:
      case 0xFFFFFC12:
      case 0xFFFFFC13:
      case 0xFFFFFC14:
      case 0xFFFFFC16:
      case 0xFFFFFC18:
        return 4294949605;
      case 0xFFFFFC15:
        return 4294954392;
      case 0xFFFFFC17:
        return 4294954394;
      default:
        if (result == -2001)
        {
          result = 4294947942;
        }

        else if (result)
        {
          return 4294949605;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_175B1C()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 1000;
}

uint64_t sub_175B74(int a1)
{
  v1 = &dword_19F350;
  v2 = 26;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 4294966296;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_175BA8(_DWORD *a1, int a2, uint64_t a3, _DWORD *a4)
{
  LODWORD(v4) = *a1;
  if (*a1 >= *a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = v4;
  }

  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 2;
    v7 = a1 + 2;
    do
    {
      v8 = *v7;
      v7 += 2;
      if ((a2 & ~v8) == 0)
      {
        *(a3 + 4 * v5++) = *(v6 - 1);
      }

      v6 = v7;
      --v4;
    }

    while (v4);
  }

  *a4 = v5;
  return 0;
}

uint64_t AVE_Plugin_HEVC_CreateInstance(uint64_t a1, const void *a2, void *a3)
{
  memset(v75, 0, sizeof(v75));
  v5 = sub_175AE4();
  sub_160F98();
  sub_151990();
  v6 = sub_1502C8();
  sub_1621A4(v6 + 552);
  if (sub_160EF0(0xBu, 0))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(0);
    if (v7)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v8, 11, v9, "905.5.3", "prod", "Oct 23 2025", "06:45:19");
      v8 = sub_175AE4();
      sub_160F68(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v8);
  }

  v10 = sub_160D68(v75, 128);
  if (v10 >= 1 && sub_160EF0(0xBu, 0))
  {
    v11 = sub_160F34(0xBu);
    v12 = sub_175AE4();
    v13 = sub_160F68(0);
    if (v11)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v12, 11, v13, v75);
      v14 = sub_175AE4();
      v60 = sub_160F68(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v14, 11, v60, v75);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v12, 11, v13, v75);
    }
  }

  if (sub_160EF0(0xBu, 6))
  {
    v15 = sub_160F34(0xBu);
    v16 = sub_175AE4();
    v17 = sub_160F68(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %lld\n", v16, 11, v17, "AVE_Plugin_HEVC_CreateInstance", a1, a2, a3, 0);
      v16 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %lld", v16, 11);
  }

  if (!a3)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v19 = sub_160F34(0xBu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_CreateInstance", 1350, "instanceOut != __null", a1, a2, 0, 0, v10);
        v20 = sub_175AE4();
        v61 = sub_160F68(4);
      }

      else
      {
        v61 = v21;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d", v20, 11, v61, "AVE_Plugin_HEVC_CreateInstance", 1350);
    }

    goto LABEL_45;
  }

  if (a1 != 1752589105)
  {
    if (a1 == 1869117027)
    {
      v18 = 2048;
      goto LABEL_25;
    }

    if (sub_160EF0(0xBu, 4))
    {
      v28 = sub_160F34(0xBu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d\n", v29, 11, v30, "AVE_Plugin_HEVC_CreateInstance", 1356, "codecType == kCMVideoCodecType_HEVC || codecType == kFigVideoCodecType_HEVC_WirelessDisplayEncrypted", a1, a2, a3, 0, v10);
        v31 = sub_175AE4();
        v63 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v31, 11, v63, "AVE_Plugin_HEVC_CreateInstance", 1356);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v29, 11, v30, "AVE_Plugin_HEVC_CreateInstance", 1356);
      }
    }

LABEL_45:
    v33 = 0;
    v45 = 0;
    v40 = 4294966295;
    goto LABEL_60;
  }

  v18 = 0;
LABEL_25:
  kdebug_trace();
  *a3 = 0;
  VTVideoEncoderGetClassID();
  v22 = CMDerivedObjectCreate();
  if (v22)
  {
    v23 = v22;
    if (sub_160EF0(0xBu, 4))
    {
      v24 = sub_160F34(0xBu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create HEVC Object %d %p %p %lld %d\n", v25, 11, v26, "AVE_Plugin_HEVC_CreateInstance", 1371, "res == noErr", a1, a2, a3, 0, v23);
        v27 = sub_175AE4();
        v62 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create HEVC Object %d %p %p %lld %d", v27, 11, v62, "AVE_Plugin_HEVC_CreateInstance", 1371);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create HEVC Object %d %p %p %lld %d", v25, 11, v26, "AVE_Plugin_HEVC_CreateInstance", 1371);
      }
    }

    v40 = 4294966292;
LABEL_58:
    v45 = 0;
    v33 = 0;
    goto LABEL_59;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v41 = sub_160F34(0xBu);
      v42 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC Object %d %p %p %lld %p %d\n", v42, 11, v43, "AVE_Plugin_HEVC_CreateInstance", 1376, "pPI != __null", a1, a2, a3, 0, 0, v10);
        v44 = sub_175AE4();
        v65 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC Object %d %p %p %lld %p %d", v44, 11, v65, "AVE_Plugin_HEVC_CreateInstance", 1376, "pPI != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC Object %d %p %p %lld %p %d", v42, 11, v43, "AVE_Plugin_HEVC_CreateInstance", 1376, "pPI != __null");
      }
    }

    v40 = 4294966296;
    goto LABEL_58;
  }

  v33 = DerivedStorage;
  bzero(DerivedStorage, 0x1A608uLL);
  v34 = sub_13DB68();
  *v33 = v34;
  if (!v34)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v46 = sub_160F34(0xBu);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d\n", v47, 11, v48, "AVE_Plugin_HEVC_CreateInstance", 1383, "pPI->pPIMutex != __null", a1, a2, a3, 0, 0, v33, v10);
        v49 = sub_175AE4();
        v66 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v49, 11, v66, "AVE_Plugin_HEVC_CreateInstance", 1383, "pPI->pPIMutex != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v47, 11, v48, "AVE_Plugin_HEVC_CreateInstance", 1383, "pPI->pPIMutex != __null", a1);
      }
    }

    goto LABEL_55;
  }

  v35 = sub_114FC8(v33, v18);
  if (v35)
  {
    v36 = v35;
    if (sub_160EF0(0xBu, 4))
    {
      v37 = sub_160F34(0xBu);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create HEVC %d %p %p %lld %p %p 0x%llx %d\n", v38, 11, v39, "AVE_Plugin_HEVC_CreateInstance", 1388, "ret == 0", a1, a2, a3, 0, 0, v33, v18, v36);
        v38 = sub_175AE4();
        v72 = v18;
        v73 = v36;
        v71 = v33;
        v70 = a3;
        v68 = a1;
        v69 = a2;
        v64 = sub_160F68(4);
      }

      else
      {
        v72 = v18;
        v73 = v36;
        v71 = v33;
        v70 = a3;
        v68 = a1;
        v69 = a2;
        v64 = v39;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create HEVC %d %p %p %lld %p %p 0x%llx %d", v38, 11, v64, "AVE_Plugin_HEVC_CreateInstance", 1388, "ret == 0", v68, v69, v70, 0, 0, v71, v72, v73);
    }

LABEL_55:
    if (*v33)
    {
      sub_13DBD0(*v33);
      *v33 = 0;
    }

    v40 = 4294966293;
    goto LABEL_58;
  }

  v40 = 0;
  v45 = v33[7];
  *a3 = 0;
LABEL_59:
  kdebug_trace();
LABEL_60:
  v50 = sub_175AE4() - v5;
  if (v50 >= 50000)
  {
    v51 = 5;
  }

  else
  {
    v51 = 6;
  }

  v52 = sub_175994(v40);
  if (v40)
  {
    v53 = 4;
  }

  else
  {
    v53 = v51;
  }

  if (sub_160EF0(0xBu, v53))
  {
    v54 = a3;
    v55 = sub_160F34(0xBu);
    v56 = sub_175AE4();
    v57 = sub_160F68(v53);
    if (v55)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d\n", v56, 11, v57, "AVE_Plugin_HEVC_CreateInstance", a1, a2, v54, v45, 0, v33, v50, v40, v52);
      v58 = sub_175AE4();
      v67 = sub_160F68(v53);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v58, 11, v67, "AVE_Plugin_HEVC_CreateInstance", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v56, 11, v57, "AVE_Plugin_HEVC_CreateInstance", a1, a2);
    }
  }

  return v52;
}

uint64_t AVE_Plugin_HEVC_SetCallback(const void *a1, _OWORD *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_HEVC_SetCallback", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      v11 = 0;
      v12 = a2[1];
      *(v9 + 8) = *a2;
      *(v9 + 9) = v12;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_SetCallback", 1455, "pPI != __null", a1, a2, 0, 0);
          v20 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_HEVC_SetCallback");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_SetCallback");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v13 = sub_160F34(0xBu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_HEVC_SetCallback", 1450, "encoder != __null && pCallback != __null", a1, a2, 0, 0);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_HEVC_SetCallback");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_HEVC_SetCallback");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v21 = sub_175AE4() - v4;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = sub_175994(v11);
  if (v11)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_HEVC_SetCallback", a1, a2, v10, v21, v11, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_176BE0(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_HEVC_Invalidate", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_HEVC_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_HEVC_Invalidate", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_FC344(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_Invalidate", 57, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop HEVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_HEVC_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_Invalidate");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_Invalidate", 46, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_Invalidate", 41, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_Invalidate", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

void sub_1770E4(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_HEVC_Finalize", a1, 0);
      v6 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v30, "AVE_Plugin_HEVC_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_HEVC_Finalize", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_FC5F0(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to destroy HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_Finalize", 112, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy HEVC %p %lld %p %d", v14, 11, v31, "AVE_Plugin_HEVC_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_Finalize");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_Finalize", 101, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
    sub_13DBD0(*v8);
    *v8 = 0;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_Finalize", 96, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_Finalize", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }
}

uint64_t sub_1775EC(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %lld\n", v10, 11, v11, "AVE_Plugin_HEVC_CopyProperty", a1, a2, a3, a4, 0);
      v12 = sub_175AE4();
      v34 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v12, 11, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v10, 11, v11);
    }
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v15 = v14[7];
      kdebug_trace();
      v16 = sub_1114E8(v14, a3, a2, a4);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_HEVC_CopyProperty", 220, "pPI != __null", a1, a2, a3, a4, 0, 0);
          v24 = sub_175AE4();
          v36 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %p %lld %d", v24, 11, v36, "AVE_Plugin_HEVC_CopyProperty", 220, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %p %lld %d", v22, 11, v23, "AVE_Plugin_HEVC_CopyProperty", 220, "pPI != __null");
        }
      }

      v15 = 0;
      v16 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v14);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0, 0);
        v20 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v20, 11, v35, "AVE_Plugin_HEVC_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }
    }

    v15 = 0;
    v16 = 4294966295;
  }

  v25 = sub_175AE4() - v8;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = sub_175994(v16);
  if (v16)
  {
    v26 = 4;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v28 = a2;
    v29 = a3;
    v30 = sub_160F34(0xBu);
    v38 = sub_175AE4();
    v31 = sub_160F68(v26);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v38, 11, v31, "AVE_Plugin_HEVC_CopyProperty", a1, v28, v29, a4, v15, v25, v16, v27);
      v32 = sub_175AE4();
      v37 = sub_160F68(v26);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v37, "AVE_Plugin_HEVC_CopyProperty", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v38, 11, v31, "AVE_Plugin_HEVC_CopyProperty", a1);
    }
  }

  return v27;
}

uint64_t sub_177AC8(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_HEVC_SetProperty", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_FBB5C(v11, a2, a3);
      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_HEVC_SetProperty", 163, "pPI != __null", a1, a2, a3, 0, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v21, 11, v32, "AVE_Plugin_HEVC_SetProperty", 163);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_HEVC_SetProperty", 163);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v15, 11, v16, "AVE_Plugin_HEVC_SetProperty", 158, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v17, 11, v31, "AVE_Plugin_HEVC_SetProperty", 158);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v15, 11, v16, "AVE_Plugin_HEVC_SetProperty", 158);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = sub_175AE4() - v6;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 7;
  }

  v24 = sub_175994(v13);
  if (v13)
  {
    v23 = 4;
  }

  if (sub_160EF0(0xBu, v23))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_HEVC_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v28 = sub_175AE4();
      v29 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_HEVC_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v26, 11, v27, "AVE_Plugin_HEVC_SetProperty");
    }
  }

  return v24;
}

uint64_t sub_177F38(const void *a1, pthread_mutex_t *a2, unint64_t a3, pthread_mutex_t *a4)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  v48 = 0;
  v7 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v8 = sub_160F34(0xBu);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d %p %lld\n", v9, 11, v10, "AVE_Plugin_HEVC_StartSession", a1, a2, v5, v6, a4, 0);
      v11 = sub_175AE4();
      v39 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v11, 11, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v9, 11, v10);
    }
  }

  v45 = v6;
  if (a1 && a2 && v5 >= 1 && v6 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = DerivedStorage;
    if (DerivedStorage)
    {
      v48 = __PAIR64__(v6, v5);
      sub_13DC18(*DerivedStorage);
      v14 = v13[7];
      kdebug_trace();
      v13[2] = a2;
      v13[14] = a4;
      *(v13 + 8) = 1;
      v15 = sub_FCB00(v13, &v48);
      if (!v15)
      {
        v29 = v13[14];
        v24 = a4;
        if (v29)
        {
          CFRetain(v29);
        }

        v16 = 0;
        goto LABEL_30;
      }

      v16 = v15;
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d\n", v18, 11, v19, "AVE_Plugin_HEVC_StartSession", 303, "ret == 0", a1, a2, v5, v45, a4, v14, v13, v16);
          v44 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v44, 11, v40, "AVE_Plugin_HEVC_StartSession", 303, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v18, 11, v19, "AVE_Plugin_HEVC_StartSession", 303, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v25 = sub_160F34(0xBu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d\n", v26, 11, v27, "AVE_Plugin_HEVC_StartSession", 283, "pPI != __null", a1, a2, v5, v6, a4, 0, 0);
          v28 = sub_175AE4();
          v42 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v28, 11, v42, "AVE_Plugin_HEVC_StartSession", 283, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v26, 11, v27, "AVE_Plugin_HEVC_StartSession", 283, "pPI != __null");
        }
      }

      v14 = 0;
      v16 = 4294966296;
    }

    v24 = a4;
    v13[2] = 0;
    v13[14] = 0;
LABEL_30:
    kdebug_trace();
    sub_13DC4C(*v13);
    goto LABEL_31;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v20 = sub_160F34(0xBu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v21, 11, v22, "AVE_Plugin_HEVC_StartSession", 277, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a2, v5, v6, a4, 0, 0);
      v23 = sub_175AE4();
      v24 = a4;
      v41 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v41, "AVE_Plugin_HEVC_StartSession", 277, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }

    else
    {
      v24 = a4;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v21, 11, v22, "AVE_Plugin_HEVC_StartSession", 277, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }
  }

  else
  {
    v24 = a4;
  }

  v14 = 0;
  v16 = 4294966295;
LABEL_31:
  v30 = sub_175AE4() - v7;
  if (v30 >= 50000)
  {
    v31 = 5;
  }

  else
  {
    v31 = 6;
  }

  v32 = sub_175994(v16);
  if (v16)
  {
    v33 = 4;
  }

  else
  {
    v33 = v31;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v34 = sub_160F34(0xBu);
    v35 = sub_175AE4();
    v36 = sub_160F68(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_HEVC_StartSession", a1, a2, v5, v45, v24, v14, v30, v16, v32);
      v37 = sub_175AE4();
      v43 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v37, 11, v43, "AVE_Plugin_HEVC_StartSession", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v35, 11, v36, "AVE_Plugin_HEVC_StartSession", a1);
    }
  }

  return v32;
}

uint64_t sub_17868C(const void *a1, const void *a2, const void *a3, uint64_t *a4, void *a5, const __CFDictionary *a6, _DWORD *a7)
{
  v82[0] = 0;
  v82[1] = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v14 = sub_175AE4();
  v75 = a7;
  if (sub_160EF0(0xBu, 8))
  {
    v15 = sub_160F34(0xBu);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, v17, "AVE_Plugin_HEVC_EncodeFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = sub_175AE4();
      v22 = sub_160F68(8);
      v66 = *(a5 + 3);
      v68 = a5[2];
      v59 = *a5;
      v62 = *(a5 + 2);
      v58 = a4[2];
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_HEVC_EncodeFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, v17, "AVE_Plugin_HEVC_EncodeFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v73 = a3;
  v74 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = *a4;
      v80 = a4[1];
      v81 = a4[2];
      v76 = *a5;
      v77 = a5[1];
      v78 = a5[2];
      v79 = v26;
      sub_13DC18(*DerivedStorage);
      v27 = *(v25 + 56);
      kdebug_trace();
      v28 = sub_10FE10(v25, a2, a3, v82, &v79, &v76, v23);
      ++*(v25 + 48);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v37 = sub_160F34(0xBu);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      v40 = *a4;
      v41 = *(a4 + 2);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v38, 11, v39, "AVE_Plugin_HEVC_EncodeFrame", 383, "pPI != __null", a1, a2, a3, v40, v41, *a5, *(a5 + 2), v23, v75, 0, 0);
        v70 = sub_175AE4();
        v42 = sub_160F68(4);
        v61 = *a5;
        v64 = *(a5 + 2);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d", v70, 11, v42, "AVE_Plugin_HEVC_EncodeFrame", 383, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d", v38, 11, v39, "AVE_Plugin_HEVC_EncodeFrame", 383, "pPI != __null", a1, a2, a3, v40, v41);
      }

      v27 = 0;
      v28 = 4294966296;
    }

    else
    {
      v27 = 0;
      v28 = 4294966296;
    }

    v36 = a2;
    kdebug_trace();
    if (v75)
    {
      *v75 |= 1u;
    }

    sub_13DC4C(*v25);
    a6 = v23;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v29 = sub_160F34(0xBu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      v32 = *a4;
      v33 = *(a4 + 2);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_EncodeFrame", 375, "encoder != __null && imageBuffer != __null", a1, a2, a3, v32, v33, *a5, *(a5 + 2), a6, a7, 0, 0);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        v60 = *a5;
        v63 = *(a5 + 2);
        v56 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v34, 11, v35, "AVE_Plugin_HEVC_EncodeFrame", 375, "encoder != __null && imageBuffer != __null", a1, a2, v56, *a4, *(a4 + 2));
      }

      else
      {
        v57 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v30, 11, v31, "AVE_Plugin_HEVC_EncodeFrame", 375, "encoder != __null && imageBuffer != __null", a1, a2, v57, v32, v33);
      }
    }

    else
    {
      v36 = a2;
    }

    v27 = 0;
    v28 = 4294966295;
  }

  v43 = sub_175AE4() - v14;
  if (v43 >= 50000)
  {
    v44 = 5;
  }

  else
  {
    v44 = 8;
  }

  v45 = sub_175994(v28);
  if (v28)
  {
    v46 = 4;
  }

  else
  {
    v46 = v44;
  }

  if (sub_160EF0(0xBu, v46))
  {
    v47 = sub_160F34(0xBu);
    v71 = sub_175AE4();
    v48 = sub_160F68(v46);
    v49 = *a4;
    v50 = *(a4 + 2);
    v51 = *(a4 + 3);
    v52 = a4[2];
    v53 = *a5;
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v71, 11, v48, "AVE_Plugin_HEVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53, *(a5 + 2), *(a5 + 3), a5[2], a6, v75, v27, v43, v28, v45);
      v72 = sub_175AE4();
      v54 = sub_160F68(v46);
      v67 = *(a5 + 3);
      v69 = a5[2];
      v65 = *(a5 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v72, 11, v54, "AVE_Plugin_HEVC_EncodeFrame", v74, v36, v73, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v71, 11, v48, "AVE_Plugin_HEVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53);
    }
  }

  return v45;
}

uint64_t sub_178D9C(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    v8 = *(a2 + 2);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, v7, "AVE_Plugin_HEVC_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = sub_175AE4();
      sub_160F68(7);
      v9 = *a2;
    }

    v36 = *(a2 + 2);
    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_110DC8(v11);
      if (v13 && sub_160EF0(0xBu, 4))
      {
        v14 = sub_160F34(0xBu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %d %lld %p %d\n", v15, 11, v16, "AVE_Plugin_HEVC_CompleteFrames", 479, "ret == 0", a1, *a2, *(a2 + 2), v12, v11, v13);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v39 = *(a2 + 2);
          v38 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %d %lld %p %d", v15, 11, v16, "AVE_Plugin_HEVC_CompleteFrames", 479, "ret == 0");
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v22, 11, v23, "AVE_Plugin_HEVC_CompleteFrames", 467, "pPI != __null", a1, 0, 0);
          v24 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v24, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v23);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v11);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_CompleteFrames", 462, "encoder != __null", 0, *a2, *(a2 + 2), 0, 0);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *a2;
        v40 = *(a2 + 2);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_CompleteFrames", 462);
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v25 = sub_175AE4() - v4;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v26 = 4;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v28 = sub_160F34(0xBu);
    v29 = sub_175AE4();
    v30 = sub_160F68(v26);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v29, 11, v30, "AVE_Plugin_HEVC_CompleteFrames", a1, *a2, *(a2 + 2), v12, v25, v13, v27);
      v31 = sub_175AE4();
      v32 = sub_160F68(v26);
      v35 = *a2;
      v37 = *(a2 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v31, 11, v32, "AVE_Plugin_HEVC_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v29, 11, v30, "AVE_Plugin_HEVC_CompleteFrames");
    }
  }

  return v27;
}

uint64_t sub_17931C(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = *(v9 + 56);
      kdebug_trace();
      v11 = sub_111160(v9, a2);
      if (v11 && sub_160EF0(0xBu, 4))
      {
        v12 = sub_160F34(0xBu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC property dictionary %p %p %lld %d\n", v13, 11, v14, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", 542, "ret == 0", a1, a2, v10, v11);
          v15 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC property dictionary %p %p %lld %d", v15, 11, v32, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC property dictionary %p %p %lld %d", v13, 11, v14, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", 530, "pPI != __null", a1, a2, 0, 0);
          v23 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v23, 11, v34, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v21, 11, v22, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v17, 11, v18, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", 523, "encoder != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0, 0);
        v19 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v19, 11, v33, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v17, 11, v18, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = sub_175AE4() - v4;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = sub_175994(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", a1, a2, v10, v24, v11, v26);
      v30 = sub_175AE4();
      v35 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v29);
    }
  }

  return v26;
}

uint64_t sub_17984C(const void *a1, const __CFDictionary *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_HEVC_SetProperties", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, sub_17CD84, v9);
      kdebug_trace();
      sub_13DC4C(*v9);
      v11 = 0;
      v12 = 1;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_SetProperties", 610, "pPI != __null", a1, a2, 0, 0);
          v20 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_HEVC_SetProperties");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_SetProperties");
        }
      }

      v12 = 0;
      v10 = 0;
      v11 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v13 = sub_160F34(0xBu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_HEVC_SetProperties", 605, "encoder != __null && propertyDictionary != __null", a1, a2, 0, 0);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_HEVC_SetProperties");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_HEVC_SetProperties");
      }
    }

    v12 = 0;
    v10 = 0;
    v11 = 4294966295;
  }

  v21 = sub_175AE4() - v4;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 7;
  }

  v23 = sub_175994(v11);
  if (v12)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_HEVC_SetProperties", a1, a2, v10, v21, v11, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_179CA4(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_1117B4();
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_PrepareToEncodeFrames", 674, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_HEVC_PrepareToEncodeFrames");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_PrepareToEncodeFrames");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_PrepareToEncodeFrames", 663, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_PrepareToEncodeFrames", 659, "encoder != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

uint64_t sub_17A1A8(const void *a1, int a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x %p %lld\n", v8, 11, v9, "AVE_Plugin_HEVC_BeginPass", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x %p %lld", v8, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_FDFEC(v11, a2);
      if (v13 && sub_160EF0(0xBu, 4))
      {
        v14 = sub_160F34(0xBu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to begin HEVC Multipass %p 0x%x %lld %p %d\n", v15, 11, v16, "AVE_Plugin_HEVC_BeginPass", 734, "ret == 0", a1, a2, v12, v11, v13);
          v17 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin HEVC Multipass %p 0x%x %lld %p %d", v17, 11, v35, "AVE_Plugin_HEVC_BeginPass", 734);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin HEVC Multipass %p 0x%x %lld %p %d", v15, 11, v16, "AVE_Plugin_HEVC_BeginPass", 734);
        }
      }

      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v22 = sub_160F34(0xBu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p 0x%x %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_BeginPass", 723, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p 0x%x %p %lld %d", v25, 11, v37, "AVE_Plugin_HEVC_BeginPass", 723);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p 0x%x %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_BeginPass", 723);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v18 = sub_160F34(0xBu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d\n", v19, 11, v20, "AVE_Plugin_HEVC_BeginPass", 718, "encoder != __null", 0, a2, a3, 0, 0);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v21, 11, v36, "AVE_Plugin_HEVC_BeginPass", 718);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v19, 11, v20, "AVE_Plugin_HEVC_BeginPass", 718);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((sub_175AE4() - v6) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_BeginPass", a1, a2, a3, v12, v13);
      v32 = sub_175AE4();
      v33 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_17A718(const void *a1, _BYTE *a2, const void *a3)
{
  v38 = 0;
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_HEVC_EndPass", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      *a2 = 0;
      v13 = sub_FE678(v11, &v38);
      if (v13)
      {
        if (sub_160EF0(0xBu, 4))
        {
          v14 = sub_160F34(0xBu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to end HEVC Multipass %p %p %p %lld %p %d\n", v15, 11, v16, "AVE_Plugin_HEVC_EndPass", 798, "ret == 0", a1, a2, a3, v12, v11, v13);
            v17 = sub_175AE4();
            v35 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end HEVC Multipass %p %p %p %lld %p %d", v17, 11, v35, "AVE_Plugin_HEVC_EndPass", 798, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end HEVC Multipass %p %p %p %lld %p %d", v15, 11, v16, "AVE_Plugin_HEVC_EndPass", 798, "ret == 0");
          }
        }
      }

      else if (v38)
      {
        *a2 = 1;
      }

      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v22 = sub_160F34(0xBu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_EndPass", 785, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v25, 11, v37, "AVE_Plugin_HEVC_EndPass", 785);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_EndPass", 785);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v18 = sub_160F34(0xBu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_HEVC_EndPass", 780, "encoder != __null && furtherPassesRequestedOut != __null", a1, a2, a3, 0, 0);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v21, 11, v36, "AVE_Plugin_HEVC_EndPass", 780);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_HEVC_EndPass", 780);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((sub_175AE4() - v6) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_EndPass", a1, a2, a3, v12, v13);
      v32 = sub_175AE4();
      v33 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_17AC84(const void *a1, pthread_mutex_t *a2, const void *a3, unint64_t a4, pthread_mutex_t *a5)
{
  v6 = a4;
  v8 = HIDWORD(a4);
  v51 = 0;
  v9 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v10 = sub_160F34(0xBu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld\n", v11, 11, v12, "AVE_Plugin_HEVC_StartTileSession", a1, a2, a3, v6, v8, a5, 0);
      v13 = sub_175AE4();
      v43 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v13, 11, v43, "AVE_Plugin_HEVC_StartTileSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v11, 11, v12, "AVE_Plugin_HEVC_StartTileSession");
    }
  }

  v48 = a3;
  if (a1 && a2 && v6 >= 1 && v8 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = DerivedStorage;
    if (DerivedStorage)
    {
      v51 = __PAIR64__(v8, v6);
      sub_13DC18(*DerivedStorage);
      v16 = v15[7];
      kdebug_trace();
      v15[2] = a2;
      v15[14] = a5;
      *(v15 + 8) = 2;
      v17 = sub_111D00(v15, &v51);
      if (!v17)
      {
        v31 = v15[14];
        if (v31)
        {
          CFRetain(v31);
        }

        v18 = 0;
        goto LABEL_29;
      }

      v18 = v17;
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d\n", v20, 11, v21, "AVE_Plugin_HEVC_StartTileSession", 879, "ret == 0", a1, a2, v6, v8, a5, v16, v15, v18);
          v47 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v47, 11, v44, "AVE_Plugin_HEVC_StartTileSession", 879, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v20, 11, v21, "AVE_Plugin_HEVC_StartTileSession", 879, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v26 = a5;
        v27 = sub_160F34(0xBu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v42 = v28;
        a5 = v26;
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d\n", v42, 11, v29, "AVE_Plugin_HEVC_StartTileSession", 859, "pPI != __null", a1, a2, v6, v8, v26, 0, 0);
          v30 = sub_175AE4();
          v46 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v30, 11, v46, "AVE_Plugin_HEVC_StartTileSession", 859, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v42, 11, v29, "AVE_Plugin_HEVC_StartTileSession", 859, "pPI != __null");
        }
      }

      v16 = 0;
      v18 = 4294966296;
    }

    v15[2] = 0;
    v15[14] = 0;
LABEL_29:
    kdebug_trace();
    sub_13DC4C(*v15);
    goto LABEL_30;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v22 = sub_160F34(0xBu);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_StartTileSession", 853, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0", a1, a2, v6, v8, a5, 0, 0);
      v25 = sub_175AE4();
      v45 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v25, 11, v45, "AVE_Plugin_HEVC_StartTileSession", 853, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_StartTileSession", 853, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }
  }

  v16 = 0;
  v18 = 4294966295;
LABEL_30:
  v32 = sub_175AE4() - v9;
  if (v32 >= 50000)
  {
    v33 = 5;
  }

  else
  {
    v33 = 6;
  }

  v34 = sub_175994(v18);
  if (v18)
  {
    v33 = 4;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v35 = v16;
    v36 = sub_160F34(0xBu);
    v37 = sub_175AE4();
    v38 = sub_160F68(v33);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d\n", v37, 11, v38, "AVE_Plugin_HEVC_StartTileSession", a1, a2, v48, v6, v8, a5, v35, v32, v18, v34);
      v39 = sub_175AE4();
      v40 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v39, 11, v40, "AVE_Plugin_HEVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v37, 11, v38, "AVE_Plugin_HEVC_StartTileSession", a1, a2);
    }
  }

  return v34;
}

uint64_t sub_17B420(const void *a1, int a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v6, 11, v7, "AVE_Plugin_HEVC_PrepareToEncodeTiles", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v6);
  }

  if (a1)
  {
    if (a2)
    {
      if (sub_160EF0(0xBu, 4))
      {
        v8 = sub_160F34(0xBu);
        v9 = sub_175AE4();
        v10 = sub_160F68(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d\n", v9, 11, v10, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 942, "!expectPartialTiles", a1, a2, 0, 0);
          v11 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v11, 11, v37, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v9, 11, v10, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
        }
      }

      v18 = 0;
      v19 = 4294966294;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = DerivedStorage;
      if (DerivedStorage)
      {
        sub_13DC18(*DerivedStorage);
        v18 = v17[7];
        kdebug_trace();
        v19 = sub_1117B4();
        if (v19 && sub_160EF0(0xBu, 4))
        {
          v20 = sub_160F34(0xBu);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %d %lld %p %d\n", v21, 11, v22, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 957, "ret == 0", a1, 0, v18, v17, v19);
            v23 = sub_175AE4();
            v39 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %d %lld %p %d", v23, 11, v39, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 957);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %d %lld %p %d", v21, 11, v22, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 957);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xBu, 4))
        {
          v24 = sub_160F34(0xBu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %d %lld %d\n", v25, 11, v26, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 946, "pPI != __null", a1, 0, 0, 0);
            v27 = sub_175AE4();
            v40 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %d %lld %d", v27, 11, v40, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %d %lld %d", v25, 11, v26, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
          }
        }

        v18 = 0;
        v19 = 4294966296;
      }

      kdebug_trace();
      sub_13DC4C(*v17);
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v12 = sub_160F34(0xBu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d\n", v13, 11, v14, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 937, "encoder != __null", 0, a2, 0, 0);
        v15 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v15, 11, v38, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v13, 11, v14, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
      }
    }

    v18 = 0;
    v19 = 4294966295;
  }

  v28 = sub_175AE4() - v4;
  if (v28 >= 50000)
  {
    v29 = 5;
  }

  else
  {
    v29 = 6;
  }

  v30 = sub_175994(v19);
  if (v19)
  {
    v31 = 4;
  }

  else
  {
    v31 = v29;
  }

  if (sub_160EF0(0xBu, v31))
  {
    v32 = sub_160F34(0xBu);
    v33 = sub_175AE4();
    v34 = sub_160F68(v31);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d\n", v33, 11, v34, "AVE_Plugin_HEVC_PrepareToEncodeTiles", a1, a2, v18, v28, v19, v30);
      v35 = sub_175AE4();
      v41 = sub_160F68(v31);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v35, 11, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v33, 11, v34);
    }
  }

  return v30;
}

uint64_t sub_17BA4C(const void *a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5, const void *a6, _DWORD *a7)
{
  v8 = a5;
  v11 = HIDWORD(a4);
  v12 = HIDWORD(a5);
  v13 = sub_175AE4();
  v45 = v11;
  v46 = v8;
  v48 = v12;
  if (sub_160EF0(0xBu, 8))
  {
    v42 = v13;
    v14 = sub_160F34(0xBu);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld\n", v15, 11, v16, "AVE_Plugin_HEVC_EncodeTile", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0);
      v17 = sub_175AE4();
      v38 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v17, 11, v38, "AVE_Plugin_HEVC_EncodeTile", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v15, 11, v16, "AVE_Plugin_HEVC_EncodeTile", a1, a2);
    }

    v13 = v42;
  }

  if (a1 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v20 = v19[7];
      kdebug_trace();
      v21 = sub_112998();
      v19[6] = (v19[6] + 1);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v44 = v13;
      v26 = sub_160F34(0xBu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %d %d %d %d %p %p %lld %d\n", v27, 11, v28, "AVE_Plugin_HEVC_EncodeTile", 1024, "pPI != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
        v41 = sub_175AE4();
        v40 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %d %d %d %d %p %p %lld %d", v41, 11, v40, "AVE_Plugin_HEVC_EncodeTile", 1024, "pPI != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %d %d %d %d %p %p %lld %d", v27, 11, v28, "AVE_Plugin_HEVC_EncodeTile", 1024, "pPI != __null", a1, a2, a3);
      }

      v20 = 0;
      v21 = 4294966296;
      v13 = v44;
    }

    else
    {
      v20 = 0;
      v21 = 4294966296;
    }

    kdebug_trace();
    if (a7)
    {
      *a7 |= 1u;
    }

    sub_13DC4C(*v19);
  }

  else if (sub_160EF0(0xBu, 4))
  {
    v43 = v13;
    v22 = sub_160F34(0xBu);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_EncodeTile", 1016, "encoder != __null && imageBuffer != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
      v25 = sub_175AE4();
      v39 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v25, 11, v39, "AVE_Plugin_HEVC_EncodeTile", 1016, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_EncodeTile", 1016, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    v20 = 0;
    v21 = 4294966295;
    v13 = v43;
  }

  else
  {
    v20 = 0;
    v21 = 4294966295;
  }

  v29 = sub_175AE4() - v13;
  if (v29 >= 50000)
  {
    v30 = 5;
  }

  else
  {
    v30 = 8;
  }

  v31 = sub_175994(v21);
  if (v21)
  {
    v32 = 4;
  }

  else
  {
    v32 = v30;
  }

  if (sub_160EF0(0xBu, v32))
  {
    v33 = sub_160F34(0xBu);
    v34 = sub_175AE4();
    v35 = sub_160F68(v32);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d\n", v34, 11, v35, "AVE_Plugin_HEVC_EncodeTile", a1, a2, a3, a4, v45, v46, v48, a6, a7, v20, v29, v21, v31);
      v47 = sub_175AE4();
      v36 = sub_160F68(v32);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v47, 11, v36, "AVE_Plugin_HEVC_EncodeTile", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v34, 11, v35, "AVE_Plugin_HEVC_EncodeTile", a1, a2, a3, a4);
    }
  }

  return v31;
}

uint64_t sub_17C168(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_HEVC_CompleteTiles", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_HEVC_CompleteTiles", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_HEVC_CompleteTiles", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_110DC8(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_CompleteTiles", 1109, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_HEVC_CompleteTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_CompleteTiles");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_CompleteTiles", 1098, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_CompleteTiles", 1093, "encoder != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 7;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v24 = 4;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v26 = sub_160F34(0xBu);
    v27 = sub_175AE4();
    v28 = sub_160F68(v24);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_HEVC_CompleteTiles", a1, v9, v23, v10, v25);
      v29 = sub_175AE4();
      sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v29, 11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v27, 11);
    }
  }

  return v25;
}

uint64_t sub_17C674(const void *a1, const void *a2, void *a3, uint64_t *a4, void *a5, const void *a6, _DWORD *a7)
{
  v82[0] = 0;
  v82[1] = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v14 = sub_175AE4();
  v75 = a7;
  if (sub_160EF0(0xBu, 8))
  {
    v15 = sub_160F34(0xBu);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, v17, "AVE_Plugin_HEVC_EncodeMultiImageFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = sub_175AE4();
      v22 = sub_160F68(8);
      v66 = *(a5 + 3);
      v68 = a5[2];
      v59 = *a5;
      v62 = *(a5 + 2);
      v58 = a4[2];
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_HEVC_EncodeMultiImageFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, v17, "AVE_Plugin_HEVC_EncodeMultiImageFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v73 = a3;
  v74 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = *a4;
      v80 = a4[1];
      v81 = a4[2];
      v76 = *a5;
      v77 = a5[1];
      v78 = a5[2];
      v79 = v26;
      sub_13DC18(*DerivedStorage);
      v27 = *(v25 + 56);
      kdebug_trace();
      v28 = sub_11027C(v25, a2, a3, v82, &v79, &v76, v23);
      ++*(v25 + 48);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v37 = sub_160F34(0xBu);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      v40 = *a4;
      v41 = *(a4 + 2);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v38, 11, v39, "AVE_Plugin_HEVC_EncodeMultiImageFrame", 1179, "pPI != __null", a1, a2, a3, v40, v41, *a5, *(a5 + 2), v23, v75, 0, 0);
        v70 = sub_175AE4();
        v42 = sub_160F68(4);
        v61 = *a5;
        v64 = *(a5 + 2);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d", v70, 11, v42, "AVE_Plugin_HEVC_EncodeMultiImageFrame", 1179, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d", v38, 11, v39, "AVE_Plugin_HEVC_EncodeMultiImageFrame", 1179, "pPI != __null", a1, a2, a3, v40, v41);
      }

      v27 = 0;
      v28 = 4294966296;
    }

    else
    {
      v27 = 0;
      v28 = 4294966296;
    }

    v36 = a2;
    kdebug_trace();
    if (v75)
    {
      *v75 |= 1u;
    }

    sub_13DC4C(*v25);
    a6 = v23;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v29 = sub_160F34(0xBu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      v32 = *a4;
      v33 = *(a4 + 2);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_EncodeMultiImageFrame", 1171, "encoder != __null && taggedBufferGroup != __null", a1, a2, a3, v32, v33, *a5, *(a5 + 2), a6, a7, 0, 0);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        v60 = *a5;
        v63 = *(a5 + 2);
        v56 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v34, 11, v35, "AVE_Plugin_HEVC_EncodeMultiImageFrame", 1171, "encoder != __null && taggedBufferGroup != __null", a1, a2, v56, *a4, *(a4 + 2));
      }

      else
      {
        v57 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v30, 11, v31, "AVE_Plugin_HEVC_EncodeMultiImageFrame", 1171, "encoder != __null && taggedBufferGroup != __null", a1, a2, v57, v32, v33);
      }
    }

    else
    {
      v36 = a2;
    }

    v27 = 0;
    v28 = 4294966295;
  }

  v43 = sub_175AE4() - v14;
  if (v43 >= 50000)
  {
    v44 = 5;
  }

  else
  {
    v44 = 8;
  }

  v45 = sub_175994(v28);
  if (v28)
  {
    v46 = 4;
  }

  else
  {
    v46 = v44;
  }

  if (sub_160EF0(0xBu, v46))
  {
    v47 = sub_160F34(0xBu);
    v71 = sub_175AE4();
    v48 = sub_160F68(v46);
    v49 = *a4;
    v50 = *(a4 + 2);
    v51 = *(a4 + 3);
    v52 = a4[2];
    v53 = *a5;
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v71, 11, v48, "AVE_Plugin_HEVC_EncodeMultiImageFrame", v74, v36, v73, v49, v50, v51, v52, v53, *(a5 + 2), *(a5 + 3), a5[2], a6, v75, v27, v43, v28, v45);
      v72 = sub_175AE4();
      v54 = sub_160F68(v46);
      v67 = *(a5 + 3);
      v69 = a5[2];
      v65 = *(a5 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v72, 11, v54, "AVE_Plugin_HEVC_EncodeMultiImageFrame", v74, v36, v73, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v71, 11, v48, "AVE_Plugin_HEVC_EncodeMultiImageFrame", v74, v36, v73, v49, v50, v51, v52, v53);
    }
  }

  return v45;
}

void sub_17CD84(const __CFString *a1, const void *a2, const void *a3)
{
  v6 = sub_FBB5C(a3, a1, a2);
  if (v6)
  {
    v7 = v6;
    if (sub_160EF0(0xBu, 4))
    {
      v8 = sub_160F34(0xBu);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d fail to set property HEVC %p %p %p %d\n", v9, 11, v10, "AVE_Plugin_HEVC_ApplierFunc", 578, a1, a2, a3, v7);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property HEVC %p %p %p %d", v11, 11, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property HEVC %p %p %p %d", v9, 11, v10);
      }
    }
  }
}

uint64_t sub_17CEA8(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, qword_20D218[i]);
  }

  return 0;
}

uint64_t sub_17CEF8(CFMutableArrayRef theArray)
{
  for (i = 0; i != 8; ++i)
  {
    CFArrayAppendValue(theArray, qword_20D248[i]);
  }

  CFArrayAppendValue(theArray, kCVImageBufferTransferFunction_UseGamma);
  return 0;
}

uint64_t sub_17CF5C(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, qword_20D288[i]);
  }

  return 0;
}

void sub_17CFAC()
{
  qword_20D218 = kCVImageBufferColorPrimaries_ITU_R_709_2;
  unk_20D220 = kCVImageBufferColorPrimaries_EBU_3213;
  qword_20D228 = kCVImageBufferColorPrimaries_SMPTE_C;
  unk_20D230 = kCVImageBufferColorPrimaries_ITU_R_2020;
  qword_20D238 = kCVImageBufferColorPrimaries_P3_D65;
  unk_20D240 = kCVImageBufferColorPrimaries_DCI_P3;
  qword_20D248 = kCVImageBufferTransferFunction_ITU_R_709_2;
  unk_20D250 = kCVImageBufferTransferFunction_SMPTE_240M_1995;
  qword_20D258 = kCVImageBufferTransferFunction_Linear;
  unk_20D260 = kCVImageBufferTransferFunction_sRGB;
  qword_20D268 = kCVImageBufferTransferFunction_ITU_R_2020;
  unk_20D270 = kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ;
  qword_20D278 = kCVImageBufferTransferFunction_SMPTE_ST_428_1;
  unk_20D280 = kCVImageBufferTransferFunction_ITU_R_2100_HLG;
  qword_20D288 = kCVImageBufferYCbCrMatrix_Identity;
  unk_20D290 = kCVImageBufferYCbCrMatrix_ITU_R_709_2;
  qword_20D298 = kCVImageBufferYCbCrMatrix_ITU_R_601_4;
  unk_20D2A0 = kCVImageBufferYCbCrMatrix_SMPTE_240M_1995;
  qword_20D2A8 = kCVImageBufferYCbCrMatrix_ITU_R_2020;
  unk_20D2B0 = kCVImageBufferYCbCrMatrix_ITU_R_2100_ICtCp;
}

uint64_t sub_17D0E0(int a1, int a2)
{
  if (-6 * a2 + 48 <= a1 && a1 <= 51)
  {
    return 0;
  }

  else
  {
    return 4294966278;
  }
}

uint64_t sub_17D104(int *a1, int a2)
{
  v2 = -6 * a2 + 48;
  v3 = a1[1];
  if (v2 <= *a1 && *a1 <= 51)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1018;
  }

  if (v2 <= v3 && v3 <= 51)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1018;
  }

  return (v7 + v5);
}

uint64_t sub_17D13C(CFArrayRef theArray, char *a2)
{
  v15 = 0;
  v16 = 0.0;
  if (theArray && a2)
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Count = CFArrayGetCount(theArray);
    v5 = Count >> 1;
    if (Count >> 1 >= 1)
    {
      v6 = 0;
      v7 = (a2 + 16);
      v8 = (Count >> 1);
      do
      {
        if (sub_14B364(theArray, v6, &v16))
        {
          result = sub_14B0BC(theArray, v6, &v15);
          if (result)
          {
            return result;
          }

          v10 = v15;
        }

        else
        {
          v10 = v16;
        }

        *(v7 - 1) = v10;
        if (sub_14B364(theArray, (v6 + 1), &v16))
        {
          result = sub_14B0BC(theArray, (v6 + 1), &v15);
          if (result)
          {
            return result;
          }

          v11 = v15;
        }

        else
        {
          v11 = v16;
        }

        *v7 = v11;
        v7 += 2;
        v6 = (v6 + 2);
        --v8;
      }

      while (v8);
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    if (sub_160EF0(0x35u, 4))
    {
      v12 = sub_160F34(0x35u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 53, v14, "AVE_DRL_Retrieve", 28, "pArray != __null && pDRL != __null", theArray, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17D318(int *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    if (*a1 < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      for (i = (a1 + 4); ; i += 2)
      {
        v6 = sub_14A444(a2, *(i - 1));
        result = sub_14A444(a2, *i) + v6;
        if (result)
        {
          break;
        }

        if (++v4 >= *a1)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (sub_160EF0(0x35u, 4))
    {
      v8 = sub_160F34(0x35u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v9, 53, v10, "AVE_DRL_Make", 95, "pDRL != __null && pArray != __null", a1, a2);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v9, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17D488(int a1)
{
  v1 = &dword_206FC4;
  v2 = 10;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_17D4BC(int a1)
{
  if ((a1 - 1) < 0xA)
  {
    return dword_206FC0[6 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v3 = sub_160F34(0xD1u);
    v4 = sub_175AE4();
    v5 = sub_160F68(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 209, v5, "HEVC_FindProfileIdc", 101, "(HEVC_Profile_Invalid < eProfile) && (eProfile < HEVC_Profile_Max)", a1);
      v4 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

int *sub_17D5E4(int a1)
{
  result = &dword_206FC0;
  v3 = 10;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_17D614(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    if (dword_2070B0[4 * v1 + 1] == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  return dword_2070B0[4 * v1];
}

uint64_t sub_17D658(int a1)
{
  if ((a1 - 1) < 2)
  {
    return dword_2070B0[4 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v3 = sub_160F34(0xD1u);
    v4 = sub_175AE4();
    v5 = sub_160F68(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 209, v5, "HEVC_FindTierFlag", 211, "(HEVC_Tier_Invalid < eTier) && (eTier < HEVC_Tier_Max)", a1);
      v4 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

uint64_t sub_17D77C(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD1u, 6))
  {
    v12 = sub_160F34(0xD1u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", v13, 209, v14, "HEVC_FindLevel", a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", v13, 209);
  }

  v15 = 0;
  if (a3 <= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  v17 = a4 * a3;
  if (a1 == 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 * a5;
  }

  if (a1 == 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a6;
  }

  for (i = dword_1A2B98; v17 > i[2] || v16 > i[3] || v18 > *(i + 2); i += 12)
  {
    if (v15 > 0x10)
    {
      goto LABEL_26;
    }

LABEL_20:
    ++v15;
  }

  if (*&i[2 * a2 + 4] < v19 && v15 < 0x11)
  {
    goto LABEL_20;
  }

LABEL_26:
  v22 = *i;
  if (sub_160EF0(0xD1u, 6))
  {
    v23 = sub_160F34(0xD1u);
    v24 = sub_175AE4();
    v25 = sub_160F68(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d\n", v24, 209, v25, "HEVC_FindLevel", a1, a2, a3, a4, v18, a6, v22);
      v26 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d", v26, 209, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d", v24, 209, v25);
    }
  }

  return v22;
}

uint64_t sub_17DA08(int a1)
{
  v1 = &dword_1A2B9C;
  v2 = 18;
  while (*v1 != a1)
  {
    v1 += 12;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_17DA3C(int a1)
{
  if ((a1 - 1) < 0x12)
  {
    return dword_1A2B98[12 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v3 = sub_160F34(0xD1u);
    v4 = sub_175AE4();
    v5 = sub_160F68(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 209, v5, "HEVC_FindLevelIdc", 378, "(HEVC_Level_Invalid < eLevel) && (eLevel < HEVC_Level_Max)", a1);
      v4 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

uint64_t sub_17DB64(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, unsigned int a8, char a9, int a10)
{
  v50 = result;
  v72[128] = 4;
  v72[129] = a6;
  v44 = 1;
  v73 = 1 << (a6 - 1);
  v74 = 0x1000000001;
  v75 = 0u;
  v76 = 0u;
  v68[64] = 4;
  v68[65] = a6;
  v68[66] = v73;
  v69 = 0x1000000001;
  if (a6 <= 8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v46 = v10;
  v70 = 0uLL;
  v71 = 0uLL;
  v64[64] = 4;
  v64[65] = a6;
  v64[66] = 1 << (a6 - 1);
  v65 = 0x1000000001;
  v66 = 0uLL;
  v67 = 0uLL;
  if (a5 >= 1)
  {
    v43 = 0;
    v55 = 0;
    v11 = a6 != 8;
    if (a6 == 8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (a7)
    {
      v13 = 8;
    }

    else
    {
      v13 = 16;
    }

    v14 = -1 << a6;
    if (a7)
    {
      v11 = v12;
    }

    v15 = a8 >> v11;
    if (a7)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v42 = 16 * v15;
    v62 = v13;
    v48 = 2 * v13;
    v49 = v16;
    if (a7)
    {
      v17 = 8;
    }

    else
    {
      v17 = 4;
    }

    v45 = v17;
    v18 = ~v14;
    v53 = 2 * v15;
    v54 = v15;
    v41 = 8 * v15;
    v47 = ~v14;
    do
    {
      if (a4 >= 1)
      {
        v19 = 0;
        v20 = v43;
        v21 = v44;
        do
        {
          v22 = *(v50 + (v55 >> 3 >> a9) * a10 + 4 * ((v19 >> v49 << a9) + (~(-1 << a9) & (v55 >> 3))));
          v23 = (a2 + (v22 & 0xFFFFFFF));
          v78 = v23;
          v79 = 0;
          v77 = 0;
          if (v22 >> 28)
          {
            result = sub_17E05C(&v77, v46, v45, v80, 128, 16);
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            do
            {
              v25 -= a6;
              HIDWORD(v77) = v25;
              if (v25 < 0)
              {
                do
                {
                  v27 = v23 + 1;
                  v78 = v23 + 1;
                  v26 = *v23 | (v26 << 8);
                  v25 += 8;
                  v77 = __PAIR64__(v25, v26);
                  ++v23;
                }

                while (v25 >= 8);
              }

              else
              {
                v27 = v23;
              }

              v80[v24++] = (v26 >> v25) & v18;
              v23 = v27;
            }

            while (v24 != 128);
          }

          v28 = 0;
          v29 = 0;
          v57 = v20;
          v52 = v21;
          v30 = v21;
          do
          {
            v31 = 0;
            v56 = v30;
            do
            {
              v33 = (v29 | v55) < a5 && v19 + v31 < a4;
              v34 = &v80[v28];
              v35 = *v34;
              v36 = v22 >> 28;
              if (a7)
              {
                if (v36)
                {
                  result = sub_17E344(v68, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v37 = v30 - 1;
                  if (a6 == 8)
                  {
                    *(a3 + v37) = v35;
                  }

                  else
                  {
                    *(a3 + 2 * v37) = v35;
                  }
                }

                v39 = v34[1];
                if (v36)
                {
                  result = sub_17E344(v64, v29, v31, v39);
                  LOWORD(v39) = result;
                }

                if (v33)
                {
                  if (a6 == 8)
                  {
                    *(a3 + v30) = v39;
                  }

                  else
                  {
                    *(a3 + 2 * v30) = v39;
                  }
                }

                v40 = 2;
              }

              else
              {
                if (v36)
                {
                  result = sub_17E278(v72, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v38 = (v57 + v31);
                  if (a6 == 8)
                  {
                    *(a3 + v38) = v35;
                  }

                  else
                  {
                    *(a3 + 2 * v38) = v35;
                  }
                }

                v40 = 1;
              }

              v28 += v40;
              ++v31;
              v30 += 2;
            }

            while (v62 != v31);
            ++v29;
            v30 = v56 + v53;
            v57 += v54;
          }

          while (v29 != 8);
          v19 += v62;
          v18 = v47;
          v21 = v52 + v48;
          v20 += v62;
        }

        while (v19 < a4);
      }

      v44 += v42;
      v43 += v41;
      v55 += 8;
    }

    while (v55 < a5);
  }

  return result;
}

uint64_t sub_17DFF0(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 4) - a2;
  *(a1 + 4) = v3;
  if (v3 < 0)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    do
    {
      v7 = v6 + 1;
      *(a1 + 8) = v6 + 1;
      if (v5 && v6 >= v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v6;
      }

      v2 = v8 | (v2 << 8);
      v4 = v3 + 8;
      *a1 = v2;
      *(a1 + 4) = v3 + 8;
      v6 = v7;
      v9 = v3 < -8;
      v3 += 8;
    }

    while (v9);
  }

  else
  {
    v4 = v3;
  }

  return (v2 >> v4) & ~(-1 << a2);
}

uint64_t sub_17E05C(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 4))
  {
    sub_181994();
  }

  v8 = *(a1 + 8);
  v33 = a5 - 1;
  if (a5 >= 1)
  {
    v10 = a3;
    v30 = *(a1 + 8);
    v11 = 0;
    v12 = 0;
    v13 = a6 + 1;
    v35 = -a3;
    v36 = a3;
    v31 = a6 + 1;
    do
    {
      v14 = sub_17DFF0(a1, a2) + 2;
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v14 > v13;
        if (v11 <= a5)
        {
          v18 = a5;
        }

        else
        {
          v18 = v11;
        }

        v19 = (v18 - v11);
        v20 = (a4 + 4 * v11);
        do
        {
          if (v19 == v16)
          {
            break;
          }

          *v20 = sub_17DFF0(a1, v15);
          if ((~v16 & 3) == 0)
          {
            if (v17 || (v21 = *(a1 + 16)) != 0 && *(a1 + 8) > v21)
            {
              v17 = 0;
              *(v20 - 1) = 0;
              *(v20 - 3) = 0;
            }

            else
            {
              v17 = 0;
            }
          }

          ++v16;
          ++v20;
        }

        while (v36 != v16);
        v22 = 0;
        v10 = a3;
        v23 = v33;
        v13 = v31;
        v24 = v35;
        do
        {
          v25 = v11 + v22;
          if (v11 + v22 >= a5)
          {
            break;
          }

          if (v12)
          {
            v26 = v22 + v11;
            if ((v22 + v11 + a3 + a3 * (*(a4 + 4 * v26) & 0x1F)) >= a5)
            {
              v27 = v23 - v11;
            }

            else
            {
              v27 = a3 + a3 * (*(a4 + 4 * v26) & 0x1F);
            }

            *(a4 + 4 * v26) = 0;
            if (v27)
            {
              bzero((a4 + 4 * (v22 + v11 + 1)), 4 * v27);
              v11 += v27;
              v25 = v22 + v11;
            }

            v24 = v35;
          }

          if (*(a4 + 4 * v25) == 1)
          {
            v12 = 0;
            v28 = v24 + v22 == -2 || a3 == 1;
            if (v28 && v25 + 2 < a5)
            {
              *(a4 + 4 * v25) = 0;
              v12 = 1;
            }
          }

          else
          {
            v12 = 0;
          }

          ++v22;
          --v23;
        }

        while (v24 + v22);
      }

      v11 += v10;
    }

    while (v11 < a5);
    LODWORD(v8) = v30;
    if (*(a1 + 4) >= 8)
    {
      sub_1819C0();
    }
  }

  *(a1 + 4) = 0;
  return (*(a1 + 8) - v8);
}

uint64_t sub_17E278(_DWORD *a1, int a2, int a3, int a4)
{
  if (a1[131])
  {
    v8 = sub_17E410(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 130;
    if (a2 >= 1)
    {
      v9 = &a1[16 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[16 * a2 + (a3 - 1)];
    }

    v8 = *v9;
    a1[133] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[139] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[129])
  {
    a1[140] = 1;
  }

  result = v11 & ~(-1 << a1[132]);
  a1[16 * a2 + a3] = result;
  return result;
}

uint64_t sub_17E344(_DWORD *a1, int a2, int a3, int a4)
{
  if (a1[67])
  {
    v8 = sub_17E518(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 66;
    if (a2 >= 1)
    {
      v9 = &a1[8 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[8 * a2 + a3 - 1];
    }

    v8 = *v9;
    a1[69] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[75] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[65])
  {
    a1[76] = 1;
  }

  result = v11 & ~(-1 << a1[68]);
  a1[8 * a2 + a3] = result;
  return result;
}

uint64_t sub_17E410(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[128])
    {
      v3 = a1[138] + a1[139];
      a1[138] = v3;
      v4 = a1[136];
      v5 = a1[137];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[16 * v9 + a3];
        a1[134] = v5;
        v8 = &a1[16 * v10 + a3];
      }

      else
      {
        v8 = &a1[16 * a2 + (a3 - 1)];
        v5 = *(v8 - 16);
        a1[134] = v5;
      }

      v11 = *v8;
      a1[133] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[136] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[137] = v5;
      a1[138] = v3;
    }

    v12 = a1[16 * a2 - 16 + a3];
    a1[135] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[136] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[137] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 130;
    }

    v7 = *v6;
    a1[133] = v7;
  }

  return v7;
}

uint64_t sub_17E518(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[64])
    {
      v3 = a1[74] + a1[75];
      a1[74] = v3;
      v4 = a1[72];
      v5 = a1[73];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[8 * v9 + a3];
        a1[70] = v5;
        v8 = &a1[8 * v10 + a3];
      }

      else
      {
        v8 = &a1[8 * a2 + a3 - 1];
        v5 = *(v8 - 8);
        a1[70] = v5;
      }

      v11 = *v8;
      a1[69] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[72] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[73] = v5;
      a1[74] = v3;
    }

    v12 = a1[8 * a2 - 8 + a3];
    a1[71] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[72] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[73] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 66;
    }

    v7 = *v6;
    a1[69] = v7;
  }

  return v7;
}

BOOL sub_17E620(int a1, unsigned int a2)
{
  v2 = a1 - 1;
  result = 0;
  if (a2 || v2 >= 2)
  {
    v3 = a2 == 6 || a2 == 8;
    v4 = v3;
    if (a1 != 2 || !v4)
    {
      v5 = a2 != 25 && a2 - 9 >= 2;
      v6 = !v5;
      if ((a1 != 3 || !v6) && (a2 > 0x1A || ((1 << a2) & 0x4C00000) == 0 || v2 >= 2))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_17E698(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, unsigned int a9, int a10, unsigned int a11, int a12, unsigned int a13)
{
  if (a7)
  {
    v13 = 16;
  }

  else
  {
    v13 = 32;
  }

  v107 = v13;
  if ((a6 | 2) != 0xA)
  {
    sub_1819EC();
  }

  if (a7)
  {
    v17 = 8;
  }

  else
  {
    v17 = 1;
  }

  if (a7)
  {
    v18 = 10;
  }

  else
  {
    v18 = 3;
  }

  if (a7)
  {
    v19 = 4;
  }

  else
  {
    v19 = 5;
  }

  v95 = v19;
  if (a6 == 8)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  v21 = a11 + a5;
  v22 = &dword_1A35D0[28 * v20];
  v90 = v22[a13 + 4];
  result = sub_1802F8(v114, v20, a13, 0);
  memset(v115, 0, 512);
  if (v21)
  {
    v98 = 0;
    v24 = a9 + a4;
    v25 = (v107 - 1 + a10 + v24) >> v95;
    v26 = (v107 - 1 + a12 + v21) >> v95;
    v27 = 32 - __clz(v26 - 1);
    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = 32 - __clz(v25 - 1);
    if (v25 < 2)
    {
      v29 = 0;
    }

    if (v29 >= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    v31 = 5;
    if (a7)
    {
      v31 = 3;
    }

    v87 = v31;
    v88 = 2 * v30;
    v79 = v22 + 8;
    v80 = &dword_1A4210[11 * v20];
    v84 = vdupq_n_s64(v30 - 1);
    v83 = (v30 + 1) & 0x7E;
    v82 = -a9 - a4 * a11;
    v81 = -(2 * a4 * a11 + 2 * a9);
    v32 = vdupq_n_s64(1uLL);
    v33 = vdupq_n_s64(2uLL);
    v85 = v33;
    v86 = v32;
    v89 = v30;
    v103 = v21;
    do
    {
      if (v24)
      {
        v34 = 0;
        v35 = v98 >> v95;
        v94 = v35 * ((v107 - 1 + a10 + v24) >> v95);
        v106 = ~(-1 << v80[7]);
        v105 = v79[a13];
        v36 = vdupq_n_s64(v35);
        v37 = v81;
        v38 = v82;
        v93 = v36;
        do
        {
          v39 = v34 >> v95;
          if (v30)
          {
            v40 = vdupq_n_s64(v39);
            v41 = 0uLL;
            v42 = v83;
            v43 = xmmword_185C60;
            do
            {
              v44 = v41;
              v45 = v43;
              v46 = vnegq_s64(v43);
              v47 = vaddq_s64(v45, v45);
              v41 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v40, v46), v32), v47), vshlq_u64(vandq_s8(vshlq_u64(v36, v46), v32), vorrq_s8(v47, v32))), v44);
              v43 = vaddq_s64(v43, v33);
              v42 -= 2;
            }

            while (v42);
            v48 = vbslq_s8(vcgtq_u64(v45, v84), v44, v41);
            v49 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
          }

          else
          {
            v49 = 0;
          }

          v50 = 0;
          v51 = (a2 + (v39 + v94) * v90);
          v52 = (a1 + ((*&v49 | ((v39 | (v98 >> v95)) >> v30 << v88)) << v87));
          v96 = v38;
          v97 = v37;
          v99 = v34;
          do
          {
            v53 = 0;
            v102 = v50;
            v54 = v98 + v50;
            v55 = v34;
            v101 = v37;
            v56 = v37;
            v100 = v38;
            v57 = v38;
            do
            {
              v110 = v56;
              v111 = v53;
              v112 = v52;
              v58 = v55;
              v59 = *v52;
              v109 = v59 & 0xF0;
              if (*v52)
              {
                v60 = (v59 & v106) + 1;
              }

              else
              {
                v60 = 0;
              }

              v108 = v60;
              v113 = v51;
              v61 = v57;
              sub_17EC58(v114, v51, v59, v115);
              v62 = v61;
              LODWORD(v21) = v103;
              v63 = &v115[1];
              v64 = 0;
              v65 = v110;
              v66 = v62;
              do
              {
                v68 = v64 + v54 >= a11 && v64 + v54 < v103;
                v69 = v58;
                v70 = v65;
                v71 = v66;
                v72 = v63;
                v73 = 8;
                do
                {
                  v75 = v69 >= a9 && v69 < v24;
                  result = v68 & v75;
                  if (result == 1)
                  {
                    result = *(v72 - 1);
                    if (a7)
                    {
                      v76 = v70 + 1;
                      if (a6 == 8)
                      {
                        *(a3 + v70) = result;
                        result = *v72;
                        *(a3 + v76) = result;
                      }

                      else
                      {
                        *(a3 + 2 * v70) = result;
                        result = *v72;
                        *(a3 + 2 * v76) = result;
                      }
                    }

                    else if (a6 == 8)
                    {
                      *(a3 + v71) = result;
                    }

                    else
                    {
                      *(a3 + 2 * v71) = result;
                    }
                  }

                  v72 += 4;
                  ++v71;
                  v70 += 2;
                  ++v69;
                  --v73;
                }

                while (v73);
                ++v64;
                v63 += 32;
                v66 += a4;
                v65 += 2 * a4;
              }

              while (v64 != 4);
              if (v109 != 240 || a13 == 0)
              {
                v78 = v108;
              }

              else
              {
                v78 = v105;
              }

              v51 = &v113[v78];
              v52 = v112 + 1;
              v53 = v111 + 8;
              v57 = v62 + 8;
              v56 = v110 + 16;
              v55 = v58 + 8;
            }

            while (v111 + 8 < v107);
            v50 = v102 + 4;
            v38 = v100 + 4 * a4;
            v37 = v101 + 8 * a4;
            v34 = v99;
          }

          while (v102 + 4 < v107);
          v34 = v99 + v107;
          v38 = v96 + v107;
          v37 = v97 + 2 * v107;
          LODWORD(v30) = v89;
          v33 = v85;
          v32 = v86;
          v36 = v93;
        }

        while (v99 + v107 < v24);
      }

      v82 += v107 * a4;
      v81 += 2 * v107 * a4;
      v98 += v107;
    }

    while (v98 < v21);
  }

  return result;
}

uint64_t sub_17EC58(_DWORD *a1, char *a2, uint64_t a3, int *a4)
{
  v8 = dword_1A4210[11 * a1[85] + 7];
  if ((a1[87] - 1) <= 2)
  {
    v9 = sub_1803D0(a1, a3);
    v10 = a1[85];
    if (v9 > dword_1A35D0[28 * v10 + 8 + a1[87]] || v9 < sub_1803D0(a1, LOBYTE(dword_1A4210[11 * v10 + 8])))
    {
      goto LABEL_215;
    }

    if ((~a3 & 0xF0) == 0)
    {
      v11 = a1[87];
      if ((v11 - 1) <= 2)
      {
        v12 = 0;
        v13 = vdupq_n_s32(a3);
        v14 = a1[85];
        v169 = dword_1A35D0[28 * v14 + 8 + v11] >> 2;
        *v13.i8 = vand_s8(vmovn_s32(vtstq_s32(v13, xmmword_1A2F30)), 0x1000100010001);
        v184 = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
        v167 = a2;
        v168 = a4;
        while (1)
        {
          memset(v185, 0, sizeof(v185));
          v15 = a1[87];
          v16 = a1[88];
          v183 = v16;
          v170 = v12;
          if (*(&v184 + v12) != 1)
          {
            break;
          }

          v17 = 0;
          v18 = dword_1A35D0[28 * v14 + 8 + v15] >> 2;
          v202 = &a2[v12 * v169];
          v201 = v18;
          v205 = 1;
          v204 = 0;
          v203 = 8 * v18;
          v19 = &unk_1A46E0 + 52 * v14;
          v173 = v19 + 12;
          v176 = *(v19 + 2);
          v20 = v16 & 0xFFFFFFFE;
          v171 = &dword_1A35D0[28 * v14 + 12 + 4 * v15];
          v21 = v185;
          do
          {
            v180 = v17;
            v23 = v171;
            v22 = v173;
            v178 = v21;
            v24 = v176;
            if (v176)
            {
              do
              {
                v26 = *v23++;
                v25 = v26;
                v28 = *v22;
                v22 += 4;
                v27 = v28;
                v29 = -1 << v28;
                if (v28 == 32)
                {
                  v30 = -1;
                }

                else
                {
                  v30 = ~v29;
                }

                v31 = 1 << (v27 - 1);
                v32 = (sub_18058C(v200, v27 - v25) << v25) & v30;
                v34 = v20 != 2 || v32 != v31;
                if (v32 >> v25 == v30 >> v25)
                {
                  v35 = v30;
                }

                else
                {
                  v35 = ((1 << (v25 - 1)) - ((v32 >> v25) & 1)) | v32;
                }

                if (!v34 || v32 == 0)
                {
                  v37 = v32;
                }

                else
                {
                  v37 = v35;
                }

                if (!v25)
                {
                  v37 = v32;
                }

                if (v183 != 1)
                {
                  v32 = v37;
                }

                if (v20 == 2)
                {
                  v38 = v31;
                }

                else
                {
                  v38 = 0;
                }

                *v21++ = v32 ^ v38;
                --v24;
              }

              while (v24);
            }

            v17 = v180 + 1;
            v21 = v178 + 4;
          }

          while (v180 != 7);
LABEL_175:
          v131 = 0;
          v132 = v185;
          a2 = v167;
          do
          {
            if (a1[85] == 27)
            {
              v14 = 27;
            }

            else
            {
              v133 = 0;
              v134 = vdupq_n_s32(v131 + 8 * v170);
              v135.i64[0] = 0x100000001;
              v135.i64[1] = 0x100000001;
              v136 = vshlq_u32(vandq_s8(vshlq_u32(v134, xmmword_1A2F00), v135), xmmword_1A2F10);
              v137 = vshlq_u32(vandq_s8(vshlq_u32(v134, xmmword_1A2F20), v135), xmmword_1A2F10);
              v138 = &v168[32 * (vorr_s8(*v137.i8, *&vextq_s8(v137, v137, 8uLL)).u32[0] | v137.i32[1]) + 4 * (vorr_s8(*v136.i8, *&vextq_s8(v136, v136, 8uLL)).u32[0] | v136.i32[1])];
              do
              {
                v138[v133] = *(v132 + v133);
                ++v133;
                v14 = a1[85];
              }

              while (v133 < *(&unk_1A46E0 + 13 * v14 + 2));
            }

            ++v131;
            ++v132;
          }

          while (v131 != 8);
          v12 = v170 + 1;
          if (v170 == 3)
          {
            return 1;
          }
        }

        v39 = (&unk_1A46E0 + 52 * v14);
        v40 = v39[2];
        v174 = v39;
        v177 = v40;
        v41 = (v39 + 3);
        v166 = a1[87];
        LODWORD(v39) = dword_1A35D0[28 * v14 + 8 + v15];
        v202 = &a2[v12 * v169];
        LODWORD(v39) = 2 * v39;
        v201 = (v39 >> 3) & 0x7FFFFFF;
        v205 = 1;
        v204 = 0;
        v179 = v39;
        v203 = v39 & 0x3FFFFFF8;
        v172 = v41;
        if (!v40)
        {
          v181 = 0;
LABEL_84:
          v197 = 0;
          v198 = 0;
          v195 = 0;
          v196 = 0;
          v194[0] = sub_17FE38(v174[3]);
          v194[1] = sub_17FE38(v174[4]);
          v194[2] = sub_17FE38(v174[5]);
          v194[3] = sub_17FE38(v174[6]);
          sub_17FEC0(v177, v194, v207, &v197, &v195);
          v192 = 0;
          v193 = 0;
          v190 = 0;
          v191 = 0;
          if (v177)
          {
            v67 = 0;
            do
            {
              v68 = *&v172[v67];
              v69 = sub_17FE38(v68);
              v70 = v207[v67 / 4];
              v71 = &dword_1A4DE8[160 * v69 + 10 * v70];
              v72 = dword_1A4DA0[3 * v69 + v166 - 1];
              v73 = v71[5];
              *(&v192 + v67) = v72 + v71[4];
              *(&v190 + v67) = v73 + v72;
              sub_180288(v69, v70, *(&v197 + v67), *(&v195 + v67), (&v192 + v67), (&v190 + v67));
              v74 = *(&v192 + v67);
              if (v68 < v74)
              {
                v74 = v68;
              }

              *(&v192 + v67) = v74;
              if (v73)
              {
                v75 = v68;
              }

              else
              {
                v75 = 0;
              }

              if (v75 >= *(&v190 + v67))
              {
                v75 = *(&v190 + v67);
              }

              *(&v190 + v67) = v75;
              v67 += 4;
            }

            while (4 * v177 != v67);
          }

          if (v14 == 19 && v208 == 1 && HIDWORD(v196) - HIDWORD(v198) <= 1)
          {
            v192 = 0;
            v193 = 0;
            v190 = 0;
            v191 = 0;
          }

          v189[0] = 0;
          v189[1] = 0;
          v76 = v177;
          v77 = v181;
          if (v177)
          {
            v78 = v189;
            v79 = v206;
            v80 = &v192;
            v81 = v207;
            v82 = v172;
            do
            {
              v83 = *v81++;
              if (v83 || (*v82 - 8) > 4)
              {
                v84 = *v80;
                *v78 = sub_18058C(v200, *v80) << (*v82 - v84);
                v77 += v84;
              }

              else
              {
                *v78 = *v79;
              }

              ++v78;
              ++v79;
              v82 += 4;
              ++v80;
              --v76;
            }

            while (v76);
            v187 = 0;
            v188 = 0;
            v85 = &v187;
            v86 = &v190;
            v87 = v177;
            v88 = v179;
            do
            {
              v89 = *v86;
              v86 = (v86 + 4);
              if (v89)
              {
                v90 = sub_1812C8(v200, v204, 3u);
                v204 += 3;
                *v85 = v90;
                v77 += 3;
              }

              v85 = (v85 + 4);
              --v87;
            }

            while (v87);
          }

          else
          {
            v187 = 0;
            v188 = 0;
            v88 = v179;
          }

          v91 = (v88 & 0x3FFFFFFE) - v77;
          v92 = v91 / 7;
          v93 = v204 + v91 - 7 * (v91 / 7);
          v204 = v93;
          v94 = v203;
          if (v93 > v203)
          {
            sub_181B20();
          }

          v95 = 0;
          v96 = v186;
          memset(v186, 0, sizeof(v186));
          v97 = v177;
          do
          {
            v98 = 0;
            if (v97)
            {
              v99 = &v190;
              v100 = v96;
              do
              {
                v102 = *v99++;
                v101 = v102;
                if (v102)
                {
                  *v100 = sub_18058C(v200, v101);
                  v98 += v101;
                }

                v100 += 7;
                --v97;
              }

              while (v97);
              if (v98 > v92)
              {
                sub_181AC8();
              }

              v93 = v204;
              v94 = v203;
              v97 = v177;
            }

            v93 += v92 - v98;
            v204 = v93;
            if (v93 > v94)
            {
              sub_181B20();
            }

            ++v95;
            ++v96;
          }

          while (v95 != 7);
          if (v97)
          {
            v103 = 0;
            v104 = v185;
            do
            {
              v105 = *&v172[4 * v103];
              v106 = sub_17FE38(v105);
              v107 = 0;
              v108 = 0;
              v109 = *&dword_1A4DE8[160 * v106 + 2 + 10 * v207[v103]];
              v110 = *(&v190 + v103);
              v111 = v109 >> v110;
              if (v109 >> v110 <= 1)
              {
                v111 = 1;
              }

              if (v111 >> 1 >= (1 << (v105 - *(&v192 + v103))) >> 1)
              {
                v112 = (1 << (v105 - *(&v192 + v103))) >> 1;
              }

              else
              {
                v112 = v111 >> 1;
              }

              v113 = *(v189 + v103);
              v114 = (1 << (v105 - 1));
              v115 = ~(-1 << v110);
              v116 = v109 + v113;
              v117 = 1 << v105;
              if (!v113)
              {
                v112 = 0;
              }

              if (v105 == 16)
              {
                v118 = 31744;
              }

              else
              {
                v118 = 2139095040;
              }

              if (v105 == 16)
              {
                v119 = 64512;
              }

              else
              {
                v119 = 4286578688;
              }

              if (v105 == 16)
              {
                v120 = 32256;
              }

              else
              {
                v120 = 2143289344;
              }

              v121 = 4290772992;
              if (v105 == 16)
              {
                v121 = 65024;
              }

              v182 = v121;
              v175 = v104;
              v122 = v104;
              do
              {
                if (v110)
                {
                  if (v107 == *(&v187 + v103))
                  {
                    v123 = v112;
                    v124 = v113 == v114;
                  }

                  else
                  {
                    v125 = v186[7 * v103 + v108];
                    v124 = (v114 - v113) / v111 == v125;
                    if (v125 > v115)
                    {
                      sub_181AF4();
                    }

                    if (v125 | v113)
                    {
                      if (v116 < v117 || (v123 = v117 - 1, v125 != v115))
                      {
                        v123 = (v111 >> 1) + v111 * v125;
                      }
                    }

                    else
                    {
                      v123 = 0;
                    }

                    ++v108;
                  }
                }

                else
                {
                  v123 = 0;
                  v124 = v111 > v114 - v113;
                }

                v126 = v123 + v113;
                v127 = v126;
                if (v183 == 1)
                {
                  if (v126 < v118 || (v127 = (v118 - 1), v126 >= v120))
                  {
                    if (v126 < v120 || (v127 = v114, v126 >= v114))
                    {
                      if (v126 < v182 && v126 >= v119)
                      {
                        v127 = (v119 - 1);
                      }

                      else
                      {
                        v127 = v126;
                      }
                    }
                  }
                }

                if (v127 >= v117)
                {
                  v129 = v117 - 1;
                }

                else
                {
                  v129 = v127;
                }

                if (v124)
                {
                  v130 = 0;
                }

                else
                {
                  v130 = v129 ^ v114;
                }

                if ((v183 & 0xFFFFFFFE) != 2)
                {
                  v130 = v129;
                }

                *v122 = v130;
                v122 += 4;
                ++v107;
              }

              while (v107 != 8);
              ++v103;
              v104 = (v175 + 4);
            }

            while (v103 != v177);
          }

          goto LABEL_175;
        }

        v42 = 0;
        v43 = v199;
        v44 = v41;
        v45 = v41;
        do
        {
          v47 = *v44;
          v44 += 4;
          v46 = v47;
          if (v47 == 2)
          {
            v48 = 1;
          }

          else if ((v46 - 8) >= 5)
          {
            v48 = 4;
            if (v46 != 16 && v46 != 32)
            {
              sub_181A70();
            }
          }

          else
          {
            v48 = 3;
          }

          *v43++ = sub_18058C(v200, v48);
          v42 += v48;
          --v40;
        }

        while (v40);
        v181 = v42;
        v49 = 0;
        v50 = v207;
        v51 = v45;
        v52 = v206;
        v53 = v199;
        v54 = v177;
        while (1)
        {
          v56 = *v51++;
          v55 = v56;
          if (v56 == 2)
          {
            v57 = *v53;
            *v52 = 0;
            v58 = v57 & 1;
            v59 = v50;
          }

          else
          {
            v60 = v55 - 8 < 5 || v55 == 16;
            if (!v60 && v55 != 32)
            {
              sub_181A9C();
            }

            v61 = *v53;
            if (((v55 & 0xFFFFFFFD) == 8 || v55 == 12) && v61 == 0)
            {
              v64 = sub_1812C8(v200, v204, 2u);
              v204 += 2;
              v181 += 2;
              *v52 = 0;
              v58 = v64 & 3;
              v65 = v52;
              v59 = v50;
            }

            else
            {
              v59 = &v207[v49];
              *v52 = 0;
              if (v55 >= 0x10)
              {
                v58 = v61 & 0xF;
                goto LABEL_50;
              }

              v58 = 0;
              v65 = &v206[v49];
            }

            v66 = v61 & 7;
            *v59 = v66;
            if ((v55 & 0xD) == 8)
            {
              if ((v61 & 7) != 0)
              {
                v58 = v66 + 2;
              }

              else
              {
                if (v58 > 1)
                {
                  if (v58 == 2)
                  {
                    v58 = 1;
                  }

                  else
                  {
                    v58 = 2;
                  }

                  goto LABEL_50;
                }

                if (!v58)
                {
LABEL_79:
                  *v65 = 0;
                  goto LABEL_50;
                }

                v58 = 0;
                *v65 = ~(-1 << v55);
              }
            }

            else
            {
              if (v55 != 12)
              {
                goto LABEL_51;
              }

              if ((v61 & 7) != 0)
              {
                v58 = v66 + 3;
              }

              else if (!v58)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_50:
          *v59 = v58;
LABEL_51:
          ++v49;
          ++v50;
          ++v52;
          ++v53;
          if (!--v54)
          {
            goto LABEL_84;
          }
        }
      }
    }
  }

  v139 = a1[85];
  v140 = &dword_1A4210[11 * v139];
  if (v140[8] == a3)
  {
    v141 = (a3 & ~(-1 << v140[7])) + 1;
    v202 = a2;
    v201 = v141 << (v139 == 26);
    v205 = 1;
    v204 = 0;
    v203 = 8 * v201;
    if (v139 == 27)
    {
      v142 = 27;
    }

    else
    {
      v151 = 0;
      do
      {
        a4[v151] = sub_18058C(v200, *(&unk_1A46E0 + 13 * v139 + v151 + 3));
        ++v151;
        v139 = a1[85];
      }

      while (v151 < *(&unk_1A46E0 + 13 * v139 + 2));
      v142 = a1[85];
    }

    v152 = 0;
    for (i = 0; i != 4; ++i)
    {
      v154 = 0;
      v155 = v152;
      do
      {
        if (v142 == 27)
        {
          v142 = 27;
        }

        else
        {
          v156 = 0;
          v157 = a4;
          do
          {
            *(v157 + v155) = *v157;
            ++v156;
            v142 = a1[85];
            ++v157;
          }

          while (v156 < *(&unk_1A46E0 + 13 * v142 + 2));
        }

        ++v154;
        v155 += 16;
      }

      while (v154 != 8);
      v152 += 128;
    }

    return 1;
  }

  if (v140[9] == a3)
  {
    v143 = 0;
    v144 = dword_1A4210[11 * v139 + 5];
    v202 = a2;
    v201 = v144;
    v205 = 1;
    v204 = 0;
    v203 = 8 * v144;
    do
    {
      if (v139 != 27)
      {
        v145 = 0;
        v146 = vdupq_n_s32(v143);
        v147.i64[0] = 0x100000001;
        v147.i64[1] = 0x100000001;
        v148 = vshlq_u32(vandq_s8(vshlq_u32(v146, xmmword_1A2F20), v147), xmmword_1A2F10);
        v149 = vshlq_u32(vandq_s8(vshlq_u32(v146, xmmword_1A2F00), v147), xmmword_1A2F10);
        v150 = &a4[32 * (vorr_s8(*v148.i8, *&vextq_s8(v148, v148, 8uLL)).u32[0] | v148.i32[1]) + 4 * (vorr_s8(*v149.i8, *&vextq_s8(v149, v149, 8uLL)).u32[0] | v149.i32[1])];
        do
        {
          v150[v145] = sub_18058C(v200, *(&unk_1A46E0 + 13 * v139 + v145 + 3));
          ++v145;
          v139 = a1[85];
        }

        while (v145 < *(&unk_1A46E0 + 13 * v139 + 2));
      }

      ++v143;
    }

    while (v143 != 32);
    if (a1[87])
    {
      sub_181A44();
    }

    return 1;
  }

  if (v140[10] == a3)
  {
    for (j = 0; j != 32; ++j)
    {
      v160 = vdupq_n_s32(j);
      v161.i64[0] = 0x100000001;
      v161.i64[1] = 0x100000001;
      v162 = vshlq_u32(vandq_s8(vshlq_u32(v160, xmmword_1A2F20), v161), xmmword_1A2F10);
      v163 = vshlq_u32(vandq_s8(vshlq_u32(v160, xmmword_1A2F00), v161), xmmword_1A2F10);
      sub_1805D4(&unk_1A46E0 + 13 * v139, a2, &a4[32 * (vorr_s8(*v162.i8, *&vextq_s8(v162, v162, 8uLL)).u32[0] | v162.i32[1]) + 4 * (vorr_s8(*v163.i8, *&vextq_s8(v163, v163, 8uLL)).u32[0] | v163.i32[1])]);
      v139 = a1[85];
      a2 += *(&unk_1A46E0 + 13 * v139 + 1);
    }

    if (a1[87])
    {
      sub_181A18();
    }

    return 1;
  }

  v164 = ((a3 & ~(-1 << v8)) + 1) << (v139 == 26);
  v165 = dword_1A4210[11 * v139 + 5];
  v202 = a2;
  if (v165 >= v164)
  {
    v165 = v164;
  }

  v201 = v165;
  v205 = 1;
  v204 = 0;
  v203 = 8 * v165;
  if (sub_180690(a1, a2, a3, v200))
  {
    sub_180A60(a1, a2, a3, v200, a4);
    sub_18118C(a1, a4);
    return 1;
  }

LABEL_215:
  sub_1804A4(a1, a4);
  return 0;
}

uint64_t sub_17FBA4(unsigned int *a1, unsigned int a2, int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = sub_17FCA4(a1, a2, a3);
  v8 = &a1[3 * v6];
  v8[1] = result;
  v9 = v8 + 1;
  if (a4 >> result)
  {
    sub_181B4C();
  }

  v9[1] = a4;
  v9[2] = 1;
  return result;
}

uint64_t sub_17FBFC(unsigned int *a1)
{
  v2 = *a1;
  v3 = dword_1A2F40[15 * *a1 + 14];
  for (i = 3; i != 7; ++i)
  {
    if (v2 == 27)
    {
      v2 = 27;
    }

    else
    {
      v5 = 0;
      do
      {
        v3 = sub_17FCA4(a1, i, v5++) + v3;
        v2 = *a1;
      }

      while (v5 < *(&unk_1A46E0 + 13 * *a1 + 2));
    }
  }

  return v3;
}

uint64_t sub_17FCA4(unsigned int *a1, unsigned int a2, int a3)
{
  if (a2 <= 1)
  {
    return dword_1A2F40[15 * *a1 + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = a1 + 1;
    if (!a1[3 * a3 + 3])
    {
      sub_181BA4();
    }

    if (!v4[3 * (a3 + 4) + 2])
    {
      sub_181B78();
    }

    if ((v4[3 * a3 + 1] & 8) != 0)
    {
      return v4[3 * (a3 + 4) + 1] + 1;
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&unk_1A46E0 + 13 * *a1 + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      sub_181BFC();
    }

    if (!a1[3 * a3 + 3])
    {
      sub_181C28();
    }

    if ((a1[3 * a3 + 2] & 3) == 2)
    {
      return *(&unk_1A46E0 + 13 * *a1 + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!a1[3 * a3 + 3])
  {
    sub_181BD0();
  }

  if ((a1[3 * a3 + 2] & 4) == 0)
  {
    return 0;
  }

  if (*(&unk_1A46E0 + 13 * *a1 + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_17FE38(int a1)
{
  if (a1 <= 11)
  {
    if (a1 == 8)
    {
      return 0;
    }

    if (a1 == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 12:
        return 2;
      case 16:
        return 3;
      case 32:
        return 4;
    }
  }

  if (a1 == 2)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if ((a1 | 2) != 2)
  {
    sub_181C54(a1);
  }

  return v1;
}

uint64_t sub_17FEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 12);
  if (v5 == 5)
  {
    v6 = *(a3 + 12);
    if (v6 >= 2)
    {
      sub_181CC0();
    }

    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 5;
    }

    *(a3 + 12) = v7;
    *(a2 + 12) = 1;
  }

  if (!result)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = *(a3 + 4 * v8);
    if (v13 > v11 || v8 == 1 && v13 == v11)
    {
      v11 = *(a3 + 4 * v8);
      v10 = v8;
    }

    if (v13 < v12)
    {
      v12 = *(a3 + 4 * v8);
      v9 = v8;
    }

    v14 = dword_1A4DE8[160 * *(a2 + 4 * v8) + 6 + 10 * v13];
    *(a5 + 4 * v8) = v14;
    *(a4 + 4 * v8++) = v14;
  }

  while (result != v8);
  if (result != 1)
  {
LABEL_19:
    v15 = (v10 + 1) % 3;
    if (v15 == v9)
    {
      v15 = (v10 + 2) % 3;
    }

    v16 = *(a3 + 4 * v15);
    v17 = *(a3 + 4 * (6 - (v10 + v9) - v15));
    v18 = v16 > v17;
    if (v16 <= v17)
    {
      v19 = v15;
    }

    else
    {
      v19 = 6 - (v10 + v9) - v15;
    }

    if (!v18)
    {
      v15 = 6 - (v10 + v9) - v15;
    }

    v20 = *(a3 + 4 * v10);
    v21 = *(a3 + 4 * v9);
    if (result == 2)
    {
      if (v20 == v21 || *(a4 + 4 * v9) < 1)
      {
LABEL_47:
        if (v5 == 5)
        {
          *(a2 + 12) = 5;
          *(a3 + 12) = *(a3 + 12) != 5;
          if (*(a4 + 12) >= 1)
          {
            sub_181C94();
          }
        }

        return result;
      }

      *(a5 + 4 * v9) = 0;
      v22 = *(a4 + 4 * v9);
      v23 = *(a5 + 4 * v10);
      goto LABEL_30;
    }

    v25 = *(a3 + 4 * v19);
    if ((v20 - v25) <= 1 && v21 <= 1)
    {
      *(a5 + 4 * v9) = 0;
      v30 = 1431655766 * *(a4 + 4 * v9);
      *(a5 + 4 * v19) += HIDWORD(v30) + (v30 >> 63);
      v31 = 1431655766 * (*(a4 + 4 * v9) + 1);
      *(a5 + 4 * v15) += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (*(a4 + 4 * v9) + 2);
      v33 = HIDWORD(v32) + (v32 >> 63);
      v34 = *(a5 + 4 * v10);
LABEL_45:
      v24 = v33 + v34;
      goto LABEL_46;
    }

    v27 = *(a3 + 4 * v15);
    if ((v20 - v27) <= 1 && v21 <= 1)
    {
      *(a5 + 4 * v9) = 0;
      v35 = *(a4 + 4 * v19) & (*(a4 + 4 * v19) >> 31);
      *(a5 + 4 * v19) = v35;
      *(a5 + 4 * v15) += (*(a4 + 4 * v9) - v35 + *(a4 + 4 * v19)) / 2;
      v24 = *(a5 + 4 * v10) + (*(a4 + 4 * v9) + *(a4 + 4 * v19) - *(a5 + 4 * v19) + 1) / 2;
      goto LABEL_46;
    }

    if (v27 - v21 > 1)
    {
      if (v27 - v21 != 2)
      {
        goto LABEL_57;
      }

      v29 = *(a4 + 4 * v10);
    }

    else
    {
      v29 = *(a4 + 4 * v10);
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      result = *(a4 + 4 * v15);
      if (result > 0)
      {
LABEL_54:
        v36 = 0;
        *(a5 + 4 * v9) = 0;
        *(a5 + 4 * v19) = 0;
        if (*(a4 + 4 * v19) + *(a4 + 4 * v9) >= 6)
        {
          v36 = *(a4 + 4 * v15);
        }

        *(a5 + 4 * v15) = v36;
        v33 = *(a4 + 4 * v9) - v36 + *(a4 + 4 * v19);
        v34 = *(a4 + 4 * v15) + *(a5 + 4 * v10);
        goto LABEL_45;
      }
    }

    if (v29 <= -2 && *(a4 + 4 * v15) >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v21 || *(a4 + 4 * v9) < 1 || *(a4 + 4 * v19) < 1 || (*(a4 + 4 * v15) & 0x80000000) != 0 || *(a4 + 4 * v10) > -2)
    {
      if (v20 != v21 && *(a4 + 4 * v9) >= 1)
      {
        *(a5 + 4 * v9) = 0;
        *(a5 + 4 * v10) += *(a4 + 4 * v9);
      }

      if (v27 != v25 && *(a4 + 4 * v19) >= 1)
      {
        *(a5 + 4 * v19) = 0;
        *(a5 + 4 * v15) += *(a4 + 4 * v19);
      }

      goto LABEL_47;
    }

    *(a5 + 4 * v9) = 0;
    *(a5 + 4 * v19) = 0;
    *(a5 + 4 * v15) = *(a4 + 4 * v15);
    v23 = *(a4 + 4 * v19);
    v22 = *(a4 + 4 * v9) + *(a5 + 4 * v10);
LABEL_30:
    v24 = v23 + v22;
LABEL_46:
    *(a5 + 4 * v10) = v24;
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_180288(uint64_t result, int a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v7 = &unk_1A4DE8 + 640 * result + 40 * a2;
    if (*(v7 + 7) < a3 - a4)
    {
      --*a6;
      if (!*(v7 + 8))
      {
        v6 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v6;
LABEL_4:
    *a5 += v6;
  }

  return result;
}

uint64_t sub_1802F8(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  *a1 = a2;
  if (dword_1A2F40[15 * a2] != a2)
  {
    sub_181CEC();
  }

  *(a1 + 4) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 340) = a2;
  *(a1 + 348) = a3;
  *(a1 + 352) = a4;
  if (!sub_17E620(a3, a2))
  {
    sub_181D18();
  }

  if (a3 && a4 >= 4)
  {
    sub_181D44();
  }

  *(a1 + 344) = *(&unk_1A46E0 + 52 * a2 + 48);
  return a1;
}

uint64_t sub_1803D0(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(a1 + 348);
    if ((v2 - 1) <= 2)
    {
      return dword_1A35D0[28 * *(a1 + 340) + 8 + v2];
    }
  }

  v4 = *(a1 + 340);
  v5 = &dword_1A4210[11 * v4];
  if (v5[8] == a2)
  {
    return ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  }

  if (v5[9] == a2)
  {
    return v5[5];
  }

  if (!a2)
  {
    return 0;
  }

  v6 = ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  v7 = dword_1A4210[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1804A4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(result + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_1A2F20), v3), xmmword_1A2F10);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_1A2F00), v3), xmmword_1A2F10);
      v9 = a2 + ((vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1]) << 7) + 16 * (vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]);
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&unk_1A46E0 + 13 * v4 + v5 + 3));
        }

        *(v9 + 4 * v5++) = v10;
        v4 = *(result + 340);
      }

      while (v5 < *(&unk_1A46E0 + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return result;
}

uint64_t sub_18058C(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    sub_181D70();
  }

  result = sub_1812C8(a1, *(a1 + 540), a2);
  *(a1 + 540) += a2;
  return result;
}

void *sub_1805D4(unsigned int *a1, const void *a2, uint64_t a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, a1[1]);
  if (a1[2])
  {
    v6 = 0;
    v7 = a1 + 7;
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      *(a3 + 4 * v6++) = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < a1[2]);
  }

  return result;
}

BOOL sub_180690(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 340);
  v5 = dword_1A4210[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &dword_1A2F40[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    sub_181D9C();
  }

  v11 = *(a4 + 512);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = sub_18058C(a4, v9);
  *(a1 + 4) = 0u;
  v19 = a1 + 4;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  sub_17FBA4(a1, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < sub_17FBFC(a1))
      {
        return 0;
      }
    }

    else
    {
      if (i != 8)
      {
        v21 = i >> 2;
        if (i >> 2 == 6)
        {
          continue;
        }

        goto LABEL_11;
      }

      sub_18058C(a4, dword_1A2F40[15 * *(a1 + 340) + 13] + v15 - *(a4 + 540));
    }

    v21 = i >> 2;
LABEL_11:
    v22 = sub_17FCA4(a1, v21, i & 3);
    v23 = sub_18058C(a4, v22);
    sub_17FBA4(a1, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = sub_17FCA4(a1, 6u, i & 3);
      v25 = sub_18058C(a4, v24);
      sub_17FBA4(a1, 6u, i & 3, v25);
    }
  }

  v26 = sub_17FBFC(a1);
  sub_18058C(a4, v26 + v15 - *(a4 + 540));
  v27 = *(a1 + 340);
  if (v27 == 21)
  {
    if (!*(a1 + 24))
    {
      sub_181DC8();
    }

    if (!*(a1 + 36))
    {
      sub_181DC8();
    }

    v28 = *(a1 + 20);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(a1 + 32);
      *(a1 + 344) = 2;
      sub_17FBA4(a1, 0, 1, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      sub_17FBA4(a1, 0, 2, v29 & 0xFFFFFFEF);
      v27 = *(a1 + 340);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &unk_1A46E0 + 52 * v27;
  LODWORD(v33) = *(v32 + 2);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v33;
  }

  v34 = v32 + 12;
  do
  {
    if (v27 != 27)
    {
      v35 = 0;
      v36 = (a1 + 12);
      v37 = (a1 + 12);
      do
      {
        v38 = *v37;
        v37 += 3;
        if (!v38)
        {
          sub_181DC8();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*(v19 + 12 * (v35 + 12) + 8))
          {
            sub_181DC8();
          }

          v40 = *(v19 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*(v19 + 12 * (v35 + 4) + 8))
          {
            sub_181DC8();
          }

          v42 = *&v34[4 * v35];
          if (v42 == 32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v40 >> (v30 << v43);
          if (v42 == 32)
          {
            v45 = 15;
          }

          else
          {
            v45 = 3;
          }

          v41 = *(v19 + 12 * (v35 + 4) + 4) - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += dword_1A4D90[v30] * v41;
        ++v35;
        v36 = v37;
      }

      while (v33 != v35);
    }

    ++v30;
  }

  while (v30 != 4);
  if (v27 == 26)
  {
    v46 = 15;
  }

  else
  {
    v46 = 7;
  }

  if (((*(a4 + 540) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return sub_18139C(a1) == 0;
}

uint64_t sub_180A60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = result + 4;
  v77 = (result + 12);
  v8 = 0uLL;
  v82 = a5;
  v88 = result;
  do
  {
    v9 = 0;
    v76 = v5;
    v86 = v5 >> 2 << 6;
    v79 = a5 + ((v6 & 1) << 8) + v86;
    v81 = 4 * (v5 >> 2);
    v89[6] = v8;
    v89[7] = v8;
    v89[4] = v8;
    v89[5] = v8;
    v89[2] = v8;
    v89[3] = v8;
    v89[0] = v8;
    v89[1] = v8;
    if (dword_1A4D90[v6] <= 1u)
    {
      v10 = 1;
    }

    else
    {
      v10 = dword_1A4D90[v6];
    }

    v11 = *(result + 340);
    v12 = v11;
    v84 = v10;
    do
    {
      if (v12 == 27)
      {
        v13 = v9 + 1;
      }

      else
      {
        v14 = 0;
        v13 = v9 + 1;
        v15 = v89;
        v16 = v77;
        v17 = &unk_1A46EC;
        v18 = v77;
        do
        {
          v19 = *v18;
          v18 += 3;
          if (!v19)
          {
            sub_181DC8();
          }

          v20 = *(v16 - 4);
          if ((v20 & 4) != 0)
          {
            if (!*(v7 + 12 * (v14 + 12) + 8))
            {
              sub_181DC8();
            }

            v21 = *(v7 + 12 * (v14 + 12) + 4);
          }

          else
          {
            v21 = 0;
          }

          v22 = v20 & 3;
          if (v22 == 3)
          {
            v23 = 0;
          }

          else
          {
            if (!*(v7 + 12 * (v14 + 4) + 8))
            {
              sub_181DC8();
            }

            v24 = v17[13 * v12] == 32;
            if (v17[13 * v12] == 32)
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }

            v26 = v21 >> (v6 << v25);
            if (v24)
            {
              v27 = 15;
            }

            else
            {
              v27 = 3;
            }

            v23 = *(v7 + 12 * (v14 + 4) + 4) - (v26 & v27) + 1;
          }

          v28 = sub_18058C(a4, v23);
          if (v23 >= 0x21)
          {
            sub_181DF4();
          }

          if (v22 == 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = 7;
          }

          if (v9 != 6)
          {
            v29 = v9 + 1;
          }

          if (v6)
          {
            v29 = v9;
          }

          v30 = vdupq_n_s32(v29);
          v31.i64[0] = 0x100000001;
          v31.i64[1] = 0x100000001;
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_1A2F20), v31), xmmword_1A2F10);
          v33 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_1A2F00), v31), xmmword_1A2F10);
          LODWORD(v15[4 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1]) + (vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)).u32[0] | v33.i32[1])]) = v28 << -v23 >> -v23;
          ++v14;
          v12 = *(v88 + 340);
          ++v17;
          v15 = (v15 + 4);
          v16 = v18;
          v8 = 0uLL;
        }

        while (v14 < *(&unk_1A46E0 + 13 * v12 + 2));
        v11 = *(v88 + 340);
        a5 = v82;
        result = v88;
        v10 = v84;
      }

      v9 = v13;
    }

    while (v13 != v10);
    v34 = v86;
    if (v11 != 27)
    {
      v35 = 0;
      v36 = (2 * v6) & 2;
      v78 = v89;
      do
      {
        if (!*(v7 + 12 * v35 + 8))
        {
          sub_181DC8();
        }

        v37 = v35;
        v38 = *(v7 + 12 * v35 + 4);
        if ((v38 & 4) != 0)
        {
          if (!*(v7 + 12 * (v35 + 12) + 8))
          {
            sub_181DC8();
          }

          v39 = *(v7 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(v7 + 12 * v35 + 4);
        v41 = *(&unk_1A46E0 + 13 * v11 + v37 + 3) == 32;
        if (*(&unk_1A46E0 + 13 * v11 + v37 + 3) == 32)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v43 = v39 >> (v6 << v42);
        if (v41)
        {
          v44 = 15;
        }

        else
        {
          v44 = 3;
        }

        v45 = v43 & v44;
        v46 = v38 & 3;
        if (v46 == 3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (!*(v7 + 12 * (v37 + 4) + 8))
          {
            sub_181DC8();
          }

          v47 = *(v7 + 12 * (v37 + 4) + 4) - v45 + 1;
          if ((v38 & 1 | 2) == 2)
          {
            v48 = 0;
          }

          else
          {
            v48 = 3;
          }

          v49 = (v38 & 1 | 2) != 2;
        }

        v85 = (v7 + 12 * (v37 + 8) + 8);
        if (!*v85)
        {
          sub_181DC8();
        }

        v50 = 0;
        v51 = v7 + 12 * (v37 + 8);
        v53 = *(v51 + 4);
        v52 = (v51 + 4);
        *(a5 + (v49 << 7) + 16 * v48 + 4 * v37) = v53;
        v54 = (v45 == 0) & (v40 >> 3);
        v55 = v7 + 12 * (v37 + 16);
        v56 = v7 + 12 * (v37 + 20);
        v57 = v7 + 12 * (v37 + 24);
        v58 = 1;
        do
        {
          v59 = 0;
          v60 = 0;
          v80 = v58;
          v61 = -v50;
          v83 = v50 | v36;
          v62 = &v78[4 * v50];
          v63 = v6 & 1 ^ v50 ^ 1;
          v64 = v79 + (v50 << 7);
          v65 = v63 | v36;
          v66 = 3;
          v67 = &v89[4 * v63];
          do
          {
            if (v61 != v36 || v34 + v59 * 16)
            {
              if (v54)
              {
                if (!*(v55 + 8))
                {
                  sub_181DC8();
                }

                v68 = *(v55 + 4);
              }

              else
              {
                v68 = 0;
              }

              if (v47 >= 0x21)
              {
                sub_181DF4();
              }

              v69 = v68 << (-v47 & 0x1F) >> (-v47 & 0x1F);
              if (v46 > 1)
              {
                if (v46 == 2)
                {
                  if (!*(v56 + 8))
                  {
                    sub_181DC8();
                  }

                  v70 = *(&unk_1A46E0 + 13 * *(result + 340) + v37 + 3);
                  if (v70 >= 0x42)
                  {
                    sub_181DF4();
                  }

                  if (!*(v57 + 8))
                  {
                    sub_181DC8();
                  }

                  if (!*v85)
                  {
                    sub_181DC8();
                  }

                  if (v70 >= 0x21)
                  {
                    sub_181E20();
                  }

                  result = v88;
                  a5 = v82;
                  v71 = *v52 - v69 + LODWORD(v62[v59]) + ((*(v57 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * v83 + ((*(v56 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * (v81 + v60);
                  v34 = v86;
LABEL_79:
                  v72 = ((v71 & ~(-1 << v70)) << -v70) >> -v70;
                }

                else
                {
                  v72 = *(a5 + 4 * v37);
                }

                *(v64 + v59 * 16) = v72;
                goto LABEL_87;
              }

              if (!v46)
              {
                if (!*v85)
                {
                  sub_181DC8();
                }

                v70 = *(&unk_1A46E0 + 13 * *(result + 340) + v37 + 3);
                if (v70 >= 0x21)
                {
                  sub_181E20();
                }

                v71 = *v52 - v69 + LODWORD(v62[v59]);
                goto LABEL_79;
              }

              v73 = *(&unk_1A46E0 + 13 * *(result + 340) + v37 + 3);
              if (v73 >= 0x21)
              {
                sub_181E20();
              }

              if (v6 >= 2)
              {
                v74 = v60;
              }

              else
              {
                v74 = v66;
              }

              v75 = v74 | (2 * v6) & 4;
              v34 = v86;
              *(a5 + (v65 << 7) + 16 * v75 + 4 * v37) = (((*(a5 + (dword_1A4C90[16 * v65 + 1 + 2 * v75] << 7) + 16 * dword_1A4C90[16 * v65 + 2 * v75] + 4 * v37) - v69 + *(&v67[v74] + v37)) & ~(-1 << v73)) << -v73) >> -v73;
            }

LABEL_87:
            ++v60;
            --v66;
            ++v59;
          }

          while (v59 != 4);
          v58 = 0;
          v50 = 1;
        }

        while ((v80 & 1) != 0);
        v35 = v37 + 1;
        v11 = *(result + 340);
        v78 = (v78 + 4);
        v79 += 4;
      }

      while ((v37 + 1) < *(&unk_1A46E0 + 13 * v11 + 2));
    }

    ++v6;
    v5 = v76 + 2;
  }

  while (v6 != 4);
  return result;
}

_DWORD *sub_18118C(_DWORD *result, int *a2)
{
  v2 = 0;
  v3 = result[85];
  v4 = a2;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      if (v7 != 27)
      {
        v8 = 0;
        v9 = result + 3;
        v10 = v6;
        v11 = &unk_1A46EC;
        do
        {
          if (!*v9)
          {
            sub_181DC8();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = result[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                sub_181E20();
              }

              *v10 = ((((a2[32 * v2 + 4 * v5 + v12] >> (*(&unk_1A46E0 + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = result[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = result[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&unk_1A46E0 + 13 * v3 + 2));
      }

      ++v5;
      v6 += 4;
    }

    while (v5 != 8);
    ++v2;
    v4 += 32;
  }

  while (v2 != 4);
  return result;
}

uint64_t sub_1812C8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    sub_181E4C();
  }

  v3 = a2;
  v4 = *(a1 + 536);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 85, "0");
  }

  v5 = *(a1 + 512);
  __dst = 0;
  v6 = 520;
  if (*(a1 + 544))
  {
    v6 = 528;
  }

  v7 = *(a1 + v6);
  LODWORD(v8) = v5 - (a2 >> 3);
  if (v8 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v8;
  }

  v9 = -1 << a3;
  memcpy(&__dst, (v7 + (a2 >> 3)), v8);
  return (__dst >> (v3 & 7)) & ~v9;
}

uint64_t sub_18139C(unsigned int *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  if (!a1[3 * *(&unk_1A46E0 + 52 * *a1 + 48) + 3])
  {
    sub_181DC8();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (LOBYTE(v1[3 * *(&unk_1A46E0 + 52 * *a1 + 48) + 1]) >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &unk_1A46E0 + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = a1 + 3;
    v9 = a1 + 3;
    do
    {
      v10 = *v9;
      v9 += 3;
      if (!v10)
      {
        sub_181DC8();
      }

      v11 = *(v8 - 4);
      if ((v11 & 3u) - 1 >= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = result | 2;
      }

      if ((v11 & 0x10) == 0)
      {
        v12 = result;
      }

      if ((v2 > 0x16 || ((1 << v2) & 0x4000C3) == 0) && (v11 & 3) == 2)
      {
        v12 |= 4u;
      }

      v13 = v11 & 3;
      if (v13 == 3)
      {
        if (!v1[3 * (v5 + 4) + 2])
        {
          sub_181DC8();
        }

        if (v11 & 4 | v1[3 * (v5 + 4) + 1])
        {
          v12 |= 0x10u;
        }
      }

      else
      {
        v14 = v12 | 8;
        if (v2 != 26)
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v12 = v14;
        }
      }

      if (!v1[3 * (v5 + 4) + 2])
      {
        sub_181DC8();
      }

      if (v1[3 * (v5 + 4) + 1] + 1 <= *&v6[4 * v5 + 12])
      {
        result = v12;
      }

      else
      {
        result = v12 | 0x20;
      }

      ++v5;
      v8 = v9;
    }

    while (v7 != v5);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}