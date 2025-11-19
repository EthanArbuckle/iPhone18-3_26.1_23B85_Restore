uint64_t sub_10001CFAC()
{
  __chkstk_darwin();
  v0 = &off_100030000;
  v1 = &unk_100031000;
  do
  {
    do
    {
LABEL_2:
      v2 = sub_1000202A4(0);
    }

    while (v2 == 9);
    v10 = v2;
  }

  while (v2 == 32);
  v1[374] = *(v0[396] + 8);
  if (v2 == 35)
  {
    do
    {
      v25 = sub_1000202A4(0);
      v10 = v25;
    }

    while (v25 != -1 && v25 != 10);
  }

  else if (v2 == 36 && !qword_100031880)
  {
    v11 = sub_1000202A4(0);
    if (v11 != -1)
    {
      v12 = v11;
      v13 = v1;
      v14 = v0;
      for (i = 0; i != 8094; ++i)
      {
        if (v12 > 0x7F)
        {
          v16 = __maskrune(v12, 0x500uLL);
        }

        else
        {
          v16 = _DefaultRuneLocale.__runetype[v12] & 0x500;
        }

        if (v12 != 95 && !v16)
        {
          __s1[i] = 0;
          sub_10001D7C8(v12);
          v24 = &off_100030B88;
          v0 = v14;
          v1 = v13;
          while (1)
          {
            v24 = *v24;
            if (!v24)
            {
              break;
            }

            if (!strcmp(__s1, v24[3]))
            {
              *(v24 + 4) = 1;
              if (v24[4])
              {
                qword_100031880 = v24[4];
                dword_100031888 = 0;
                goto LABEL_2;
              }

              break;
            }
          }

          sub_10001D73C("macro '%s' not defined", v17, v18, v19, v20, v21, v22, v23, __s1);
          goto LABEL_67;
        }

        __s1[i] = v12;
        v12 = sub_1000202A4(0);
        if (v12 == -1)
        {
          return 0;
        }
      }

      goto LABEL_66;
    }

    return 0;
  }

  if (v10 > 44)
  {
    switch(v10)
    {
      case '-':
        v32 = sub_1000202A4(0);
        if (v32 == 62)
        {
          return 290;
        }

        sub_10001D7C8(v32);
        goto LABEL_56;
      case '<':
        v26 = sub_1000202A4(0);
        if (v26 == 62)
        {
          v27 = &unk_100031000;
          v28 = 8;
          goto LABEL_51;
        }

        goto LABEL_52;
      case '>':
        v26 = sub_1000202A4(0);
        if (v26 == 60)
        {
          v27 = &unk_100031000;
          v28 = 1;
LABEL_51:
          v27[324] = v28;
          return 387;
        }

LABEL_52:
        sub_10001D7C8(v26);
        v33 = __s1;
        goto LABEL_64;
    }

LABEL_53:
    if ((v10 - 48) > 9)
    {
      v33 = __s1;
      goto LABEL_63;
    }

LABEL_56:
    v34 = 0;
    do
    {
      __s1[v34] = v10;
      if ((v34 + 1) >> 5 >= 0xFDuLL)
      {
        goto LABEL_66;
      }

      v35 = sub_1000202A4(0);
      LODWORD(v10) = v35;
      ++v34;
    }

    while ((v35 - 48) < 0xA);
    sub_10001D7C8(v35);
    if (v34 == 1 && __s1[0] == 45)
    {
      goto LABEL_61;
    }

    if (v10 == -1 || (v10 > 0x7F ? (v48 = __maskrune(v10, 0x4000uLL)) : (v48 = _DefaultRuneLocale.__runetype[v10] & 0x4000), v48 || v10 <= 0x3D && ((1 << v10) & 0x2000920000000000) != 0 || v10 == 125))
    {
      __errstrp = 0;
      __s1[v34] = 0;
      *&xmmword_100031510 = strtonum(__s1, 0x8000000000000000, 0x7FFFFFFFFFFFFFFFLL, &__errstrp);
      if (!__errstrp)
      {
        return 386;
      }

      sub_10001D73C("%s invalid number: %s", v49, v50, v51, v52, v53, v54, v55, __s1);
      goto LABEL_67;
    }

    if (v34 == 1)
    {
LABEL_61:
      v36 = 1;
    }

    else
    {
      do
      {
        v36 = v34 - 1;
        sub_10001D7C8(__s1[v34 - 1]);
      }

      while (v34-- > 2);
    }

    v37 = __s1[v36 - 1];
    v33 = &__s1[v36 - 1];
    v10 = v37;
    if (v37 == 45)
    {
      return v10;
    }

LABEL_63:
    if (v10 >= 0x80)
    {
      if (__maskrune(v10, 0x500uLL))
      {
        goto LABEL_65;
      }

      goto LABEL_87;
    }

LABEL_64:
    if ((_DefaultRuneLocale.__runetype[v10] & 0x500) != 0)
    {
LABEL_65:
      *v33 = v10;
      v38 = v33 + 1;
      if ((v33 + 1 - __s1) >> 5 > 0xFCuLL)
      {
LABEL_66:
        sub_10001D73C("string too long", v3, v4, v5, v6, v7, v8, v9, v58);
LABEL_67:
        sub_10002044C();
        return 293;
      }

      v39 = v33 - __s1 + 2;
      while (1)
      {
        v40 = sub_1000202A4(0);
        v41 = v40;
        if (v40 == -1)
        {
LABEL_82:
          sub_10001D7C8(v41);
          *v38 = 0;
          v44 = bsearch(__s1, &off_10002D0A0, 0x7FuLL, 0x10uLL, sub_10002029C);
          if (!v44 || (v10 = v44[2], v10 == 385))
          {
            *&xmmword_100031510 = strdup(__s1);
            if (!xmmword_100031510)
            {
              sub_100021438();
            }

            return 385;
          }

          return v10;
        }

        if (v40 > 0x7F)
        {
          if (__maskrune(v40, 0x500uLL))
          {
            goto LABEL_80;
          }

          v42 = __maskrune(v41, 0x2000uLL);
        }

        else
        {
          if ((_DefaultRuneLocale.__runetype[v40] & 0x500) != 0)
          {
            goto LABEL_80;
          }

          v42 = _DefaultRuneLocale.__runetype[v40] & 0x2000;
        }

        if (!v42 || v41 <= 0x3E && ((1 << v41) & 0x7000930A00000000) != 0 || v41 == 125 || v41 == 123)
        {
          goto LABEL_82;
        }

LABEL_80:
        *v38++ = v41;
        v43 = v39++ >> 5;
        if (v43 > 0xFC)
        {
          goto LABEL_66;
        }
      }
    }

LABEL_87:
    if (v10 <= 57)
    {
      if (v10 != -1)
      {
        if (v10 == 10)
        {
          v45 = v0[396];
          v46 = v45[8];
          v1[374] = v46;
          v45[8] = v46 + 1;
        }

        return v10;
      }

      return 0;
    }

    if (v10 != 95 && v10 != 58)
    {
      return v10;
    }

    goto LABEL_65;
  }

  if (v10 != 34 && v10 != 39)
  {
    goto LABEL_53;
  }

  for (j = 0; ; ++j)
  {
    while (1)
    {
      while (1)
      {
        v30 = sub_1000202A4(v10);
        if (v30 != 10)
        {
          break;
        }

        ++*(v0[396] + 8);
      }

      if (v30 != 92)
      {
        break;
      }

      v31 = sub_1000202A4(v10);
      if (v31 == -1)
      {
        return 0;
      }

      if (v31 == v10)
      {
        LOBYTE(v30) = v10;
        goto LABEL_45;
      }

      if (v31 != 10)
      {
        sub_10001D7C8(v31);
        LOBYTE(v30) = 92;
        goto LABEL_45;
      }
    }

    if (v30 == -1)
    {
      return 0;
    }

    if (v30 == v10)
    {
      break;
    }

LABEL_45:
    if (j == 8094)
    {
      goto LABEL_66;
    }

    __s1[j] = v30;
  }

  __s1[j] = 0;
  v56 = strdup(__s1);
  *&xmmword_100031510 = v56;
  if (!v56)
  {
    sub_100021438();
  }

  return 385;
}

void **sub_10001D5F8(const char *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B00405D6155A9uLL);
  if (!v4 || (v5 = v4, v6 = strdup(a1), (v5[3] = v6) == 0))
  {
    warn("malloc");
    return 0;
  }

  if (qword_100030B78 || *v6 != 45 || v6[1])
  {
    v7 = fopen(v6, "r");
    v5[2] = v7;
    if (!v7)
    {
      sub_100021454(v5 + 3, v5);
      return 0;
    }

    if (a2)
    {
      v8 = fileno(v7);
      if (sub_1000204A0(v8, v5[3]))
      {
        fclose(v5[2]);
        free(v5[3]);
LABEL_10:
        free(v5);
        return 0;
      }
    }
  }

  else
  {
    v5[2] = __stdinp;
    free(v6);
    v9 = strdup("stdin");
    v5[3] = v9;
    if (!v9)
    {
      warn("strdup");
      goto LABEL_10;
    }
  }

  *(v5 + 8) = 1;
  v10 = off_100030B80;
  *v5 = 0;
  v5[1] = v10;
  *v10 = v5;
  off_100030B80 = v5;
  return v5;
}

uint64_t sub_10001D73C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = qword_100030C60;
  ++*(qword_100030C60 + 36);
  fprintf(__stderrp, "%s:%d: ", *(v10 + 24), DWORD2(xmmword_1000315D0));
  vfprintf(__stderrp, a1, &a9);
  fputc(10, __stderrp);
  return 0;
}

uint64_t sub_10001D7C8(uint64_t result)
{
  if (result != -1)
  {
    if (!qword_100031880 || (v1 = dword_100031888, --dword_100031888, v1 <= 0))
    {
      v2 = dword_100031878;
      if (dword_100031878 > 126)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        ++dword_100031878;
        byte_10003188C[v2] = result;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10001D82C(char *__s1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__s1 && ((v8 = __s1, *(__s1 + 3)) || __s1[16] || strcmp(__s1, "none")))
  {
    if ((*(qword_100030C68 + 4) & 4) != 0)
    {
      printf("set skip on {");
    }

    v9 = 0;
    v10 = v8;
    do
    {
      if ((*(qword_100030C68 + 4) & 4) != 0)
      {
        printf(" %s", v10);
      }

      if (*(v10 + 16))
      {
        sub_10001D73C("skip on ! <interface> is not supported", a2, a3, a4, a5, a6, a7, a8, v14);
        ++v9;
      }

      else
      {
        v9 += sub_10001424C(qword_100030C68, v10, 256, 1);
      }

      v10 = *(v10 + 24);
    }

    while (v10);
    if ((*(qword_100030C68 + 4) & 4) != 0)
    {
      puts(" }");
    }

    do
    {
      v11 = *(v8 + 3);
      free(v8);
      v8 = v11;
    }

    while (v11);
    return v9 != 0;
  }

  else
  {
    v13 = qword_100030C68;
    if ((*(qword_100030C68 + 4) & 4) != 0)
    {
      puts("set skip on none");
      v13 = qword_100030C68;
    }

    return sub_10001424C(v13, "", 256, 0);
  }
}

uint64_t sub_10001D99C(char *__s1, const char *a2, int a3)
{
  v6 = &off_100030B88;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = v6[3];
    if (!strcmp(__s1, v7))
    {
      if (*(v6 + 5) == 1)
      {
        return 0;
      }

      free(v7);
      free(v6[4]);
      v9 = *v6;
      v10 = v6[1];
      if (*v6)
      {
        v11 = *v6;
      }

      else
      {
        v11 = &off_100030B88;
      }

      v11[1] = v10;
      *v10 = v9;
      free(v6);
      break;
    }
  }

  v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B00400AA5D409uLL);
  if (v12)
  {
    v13 = v12;
    v14 = strdup(__s1);
    v13[3] = v14;
    if (v14)
    {
      v15 = v14;
      v16 = strdup(a2);
      v13[4] = v16;
      if (v16)
      {
        result = 0;
        *(v13 + 4) = 0;
        *(v13 + 5) = a3;
        v17 = off_100030B90;
        *v13 = 0;
        v13[1] = v17;
        *v17 = v13;
        off_100030B90 = v13;
        return result;
      }

      free(v15);
    }

    free(v13);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001DAB8(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = result + 96 * i;
    v4 = *(v3 + 32);
    v5 = *v4;
    if (*v4)
    {
      v6 = a2 + 96 * i;
      do
      {
        v7 = *(v5 + 560);
        v8 = *(v5 + 568);
        v9 = v4 + 1;
        if (v7)
        {
          v9 = (v7 + 568);
        }

        *v9 = v8;
        *v8 = v7;
        *(v5 + 560) = 0;
        v10 = *(*(v6 + 32) + 8);
        *(v5 + 568) = v10;
        *v10 = v5;
        *(*(v6 + 32) + 8) = v5 + 560;
        ++*(*(a2 + 576) + 1756);
        v4 = *(v3 + 32);
        v5 = *v4;
      }

      while (*v4);
    }

    *(*(result + 576) + 1756) = 0;
    v11 = *(v3 + 64);
    v12 = *v11;
    if (*v11)
    {
      v13 = a2 + 96 * i;
      do
      {
        v14 = *(v12 + 560);
        v15 = *(v12 + 568);
        v16 = v11 + 1;
        if (v14)
        {
          v16 = (v14 + 568);
        }

        *v16 = v15;
        *v15 = v14;
        *(v12 + 560) = 0;
        v17 = *(*(v13 + 64) + 8);
        *(v12 + 568) = v17;
        *v17 = v12;
        *(*(v13 + 64) + 8) = v12 + 560;
        v11 = *(v3 + 64);
        v12 = *v11;
      }

      while (*v11);
    }
  }

  return result;
}

uint64_t sub_10001DBA4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (__strlcpy_chk() < 0x40)
  {
    return 0;
  }

  sub_10001D73C("rule label too long (max %d chars)", v2, v3, v4, v5, v6, v7, v8, 63);
  return 0xFFFFFFFFLL;
}

void sub_10001DC08(uint64_t a1, const char *a2, void *a3, unsigned __int8 *a4, const char **a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char *a13)
{
  v20 = *(a1 + 1013);
  if (__strlcpy_chk() >= 0x40)
  {
    sub_1000214B0();
  }

  if (__strlcpy_chk() >= 0x40)
  {
    sub_1000214B0();
  }

  if (__strlcpy_chk() >= 0x40)
  {
    sub_1000214B0();
  }

  v122 = *(a1 + 1018);
  v123 = *(a1 + 1017);
  v21 = *(a1 + 1012);
  v132 = *(a1 + 1029);
  v133 = *(a1 + 1028);
  v128 = v21;
  if (!a2)
  {
    v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
    if (!v22)
    {
      sub_1000214E8();
    }

    a2 = v22;
    *(v22 + 3) = 0;
    v21 = v128;
  }

  v138 = 0;
  v124 = 0;
  v126 = v21 & 0xFE;
  v25 = a2;
  v113 = a2;
  do
  {
    v26 = a10;
    v137 = v25;
    if (!a4)
    {
      v27 = a9;
      v28 = a12;
      v29 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
      if (!v29)
      {
        sub_1000214E8();
      }

      a4 = v29;
      *(v29 + 1) = 0;
      a12 = v28;
      v26 = a10;
      a9 = v27;
      v25 = v137;
    }

    v125 = a4;
    do
    {
      if (!a12)
      {
        v30 = a9;
        v31 = v26;
        a12 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
        if (!a12)
        {
          sub_1000214E8();
        }

        a12[1] = 0;
        v26 = v31;
        a9 = v30;
        v25 = v137;
      }

      v112 = a12;
      v136 = a12;
      v116 = a4;
      do
      {
        if (!a6)
        {
          v32 = a9;
          v33 = v26;
          v34 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          if (!v34)
          {
            sub_1000214E8();
          }

          a6 = v34;
          v34[13] = 0;
          v26 = v33;
          a9 = v32;
          v25 = v137;
        }

        v114 = a6;
        do
        {
          if (!a7)
          {
            v35 = a9;
            v36 = v26;
            v37 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
            if (!v37)
            {
              sub_1000214E8();
            }

            a7 = v37;
            v37[1] = 0;
            v26 = v36;
            a9 = v35;
            v25 = v137;
          }

          v115 = a7;
          *v127 = a7;
          do
          {
            if (!a5)
            {
              v38 = a9;
              v39 = v26;
              v40 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300408DF105C4uLL);
              if (!v40)
              {
                sub_1000214E8();
              }

              a5 = v40;
              v40[2] = 0;
              v26 = v39;
              a9 = v38;
              v25 = v137;
            }

            v130 = a5;
            v117 = a5;
            do
            {
              if (!a8)
              {
                v41 = a9;
                v42 = v26;
                v43 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
                if (!v43)
                {
                  sub_1000214E8();
                }

                a8 = v43;
                v43[13] = 0;
                v26 = v42;
                a9 = v41;
                v25 = v137;
              }

              v118 = a8;
              v44 = a8;
              v45 = a11;
              do
              {
                if (!a9)
                {
                  v46 = v26;
                  v47 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
                  if (!v47)
                  {
                    sub_1000214E8();
                  }

                  a9 = v47;
                  v47[1] = 0;
                  v26 = v46;
                  v25 = v137;
                }

                v119 = a9;
                *v129 = a9;
                do
                {
                  if (!v26)
                  {
                    v48 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
                    if (!v48)
                    {
                      sub_1000214E8();
                    }

                    v26 = v48;
                    v48[2] = 0;
                    v25 = v137;
                  }

                  a10 = v26;
                  v131 = v26;
                  do
                  {
                    if (!v45)
                    {
                      v49 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
                      if (!v49)
                      {
                        sub_1000214E8();
                      }

                      v45 = v49;
                      v49[2] = 0;
                      v25 = v137;
                    }

                    a11 = v45;
                    do
                    {
                      *(a1 + 1013) = v20;
                      v50 = *(a6 + 80);
                      if (!v20 || (*(a6 + 80) ? (v51 = v20 == v50) : (v51 = 1), v51 && (*(v44 + 80) ? (v52 = v20 == *(v44 + 80)) : (v52 = 1), v52)))
                      {
                        if (!*(a6 + 80) || (*(v44 + 80) ? (v53 = v50 == *(v44 + 80)) : (v53 = 1), v53))
                        {
                          v54 = *(a6 + 84);
                          v55 = *(v44 + 84);
                          if (v54)
                          {
                            if (v55 && v54 != v55)
                            {
                              goto LABEL_118;
                            }

                            if (*v25)
                            {
                              if (v54 != if_nametoindex(v25))
                              {
                                goto LABEL_117;
                              }

                              v55 = *(v44 + 84);
                              v25 = v137;
                            }
                          }

                          if (!v55 || !*v25 || (v56 = if_nametoindex(v25), v25 = v137, v55 == v56))
                          {
                            if (!*(a1 + 1013))
                            {
                              v57 = *(a6 + 80);
                              if (v57 || (v57 = *(v44 + 80)) != 0)
                              {
                                *(a1 + 1013) = v57;
                              }
                            }

                            if (*v25 || if_indextoname(*(a6 + 84), v139) || if_indextoname(*(v44 + 84), v139))
                            {
                              __strlcpy_chk();
                            }

                            else
                            {
                              *(a1 + 256) = 0;
                              *(a1 + 264) = 0;
                            }

                            if (__strlcpy_chk() >= 0x40)
                            {
                              sub_1000214B0();
                            }

                            if (__strlcpy_chk() >= 0x40)
                            {
                              sub_1000214B0();
                            }

                            if (__strlcpy_chk() >= 0x40)
                            {
                              sub_1000214B0();
                            }

                            sub_100020190((a1 + 192), 0x40uLL, (a1 + 256), *(a1 + 1013), a6, *v127, v44, *v129, *v125);
                            sub_100020190((a1 + 400), 0x40uLL, (a1 + 256), *(a1 + 1013), a6, *v127, v44, *v129, *v125);
                            sub_100020190((a1 + 464), 0x40uLL, (a1 + 256), *(a1 + 1013), a6, *v127, v44, *v129, *v125);
                            v135 = sub_10000BC88(a6, *(a1 + 1013));
                            v58 = sub_10000BC88(v44, *(a1 + 1013));
                            *(a1 + 1009) = v137[16];
                            v66 = *v125;
                            *(a1 + 1014) = v66;
                            v67 = *a6;
                            v68 = *(a6 + 32);
                            *(a1 + 16) = *(a6 + 16);
                            *(a1 + 32) = v68;
                            *a1 = v67;
                            *(a1 + 56) = *(a6 + 81);
                            *(a1 + 48) = **v127;
                            *(a1 + 50) = *(*v127 + 2);
                            *(a1 + 52) = *(*v127 + 4);
                            v69 = *v44;
                            v70 = *(v44 + 32);
                            *(a1 + 80) = *(v44 + 16);
                            *(a1 + 96) = v70;
                            *(a1 + 64) = v69;
                            *(a1 + 120) = *(v44 + 81);
                            *(a1 + 112) = **v129;
                            *(a1 + 114) = *(*v129 + 2);
                            *(a1 + 116) = *(*v129 + 4);
                            *(a1 + 984) = *(v131 + 8);
                            *(a1 + 976) = *v131;
                            *(a1 + 980) = *(v131 + 1);
                            *(a1 + 996) = *(v45 + 8);
                            *(a1 + 988) = *v45;
                            *(a1 + 992) = *(v45 + 1);
                            *(a1 + 1015) = *(v136 + 1);
                            *(a1 + 1016) = *v136;
                            if (v126 == 2)
                            {
                              v71 = v128;
                              if (v66 != 6)
                              {
                                if (v66)
                                {
                                  v71 = 1;
                                }

                                else
                                {
                                  v71 = v128;
                                }
                              }

                              *(a1 + 1012) = v71;
LABEL_90:
                              v73 = v132;
                              v72 = v133;
                              if (v66)
                              {
                                v73 = v132;
                                v72 = v133;
                                if (v66 != 17)
                                {
LABEL_92:
                                  v72 = 0;
                                  v73 = 0;
                                }
                              }

                              *(a1 + 1028) = v72;
                              *(a1 + 1029) = v73;
                              if (v66 != 6 && v66)
                              {
                                v74 = 0;
                                v75 = 0;
                              }

                              else
                              {
                                v75 = v122;
                                v74 = v123;
                              }

                              v138 += v135 + v58;
                              *(a1 + 1017) = v74;
                              *(a1 + 1018) = v75;
                              if (*(v136 + 2) && v66 != *(v136 + 2))
                              {
                                sub_10001D73C("icmp-type mismatch", v59, v60, v61, v62, v63, v64, v65, v111);
                                ++v138;
                              }

                              if (*v130)
                              {
                                v76 = sub_1000092B4(*v130);
                                *(a1 + 792) = v76;
                                if ((*(qword_100030C68 + 4) & 0x80) != 0 && v76 == -2)
                                {
                                  fprintf(__stderrp, "warning: unknown '%s' OS fingerprint\n", *v130);
                                }
                              }

                              else
                              {
                                *(a1 + 792) = 0;
                              }

                              *(a1 + 576) = 0;
                              *(a1 + 584) = a1 + 576;
                              if (a3)
                              {
                                v77 = a3;
                                do
                                {
                                  v78 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
                                  if (!v78)
                                  {
                                    sub_1000214CC();
                                  }

                                  v79 = v78;
                                  v80 = *v77;
                                  v81 = *(v77 + 2);
                                  v78[1] = *(v77 + 1);
                                  v78[2] = v81;
                                  *v78 = v80;
                                  if (v77[11])
                                  {
                                    if (__strlcpy_chk() >= 0x10)
                                    {
                                      sub_1000214B0();
                                    }
                                  }

                                  else
                                  {
                                    *(v78 + 64) = 0;
                                  }

                                  *(v79 + 6) = 0;
                                  v82 = *(a1 + 584);
                                  *(v79 + 7) = v82;
                                  *v82 = v79;
                                  *(a1 + 584) = v79 + 3;
                                  v77 = v77[13];
                                }

                                while (v77);
                              }

                              if ((sub_10001F5BC(a1, *a13, v60, v61, v62, v63, v64, v65) & 0x80000000) != 0 || v138)
                              {
                                sub_10001D73C("skipping rule due to errors", v83, v84, v85, v86, v87, v88, v89, v111);
                              }

                              else
                              {
                                v90 = qword_100030C68;
                                v91 = *(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 32);
                                v92 = *(v91 + 1756);
                                *(v91 + 1756) = v92 + 1;
                                *(a1 + 948) = v92;
                                sub_100012B94(v90, a1, a13);
                                v138 = 0;
                                ++v124;
                              }

LABEL_117:
                              v25 = v137;
                              goto LABEL_118;
                            }

                            *(a1 + 1012) = v128;
                            if (v128 || *(a1 + 1004) == 4)
                            {
                              goto LABEL_90;
                            }

                            goto LABEL_92;
                          }
                        }
                      }

LABEL_118:
                      v45 = v45[2];
                    }

                    while (v45);
                    v45 = a11;
                    v131 = v131[2];
                  }

                  while (v131);
                  v26 = a10;
                  *v129 = *(*v129 + 8);
                }

                while (*v129);
                v44 = *(v44 + 104);
                a9 = v119;
              }

              while (v44);
              a5 = v117;
              a8 = v118;
              a4 = v116;
              v130 = v130[2];
            }

            while (v130);
            *v127 = *(*v127 + 8);
          }

          while (*v127);
          a6 = *(a6 + 104);
        }

        while (a6);
        a6 = v114;
        v136 = v136[1];
      }

      while (v136);
      a12 = v112;
      v125 = *(v125 + 1);
    }

    while (v125);
    v25 = *(v25 + 3);
  }

  while (v25);
  do
  {
    v93 = *(v113 + 3);
    free(v113);
    v113 = v93;
  }

  while (v93);
  do
  {
    v94 = *(v116 + 1);
    free(v116);
    v116 = v94;
  }

  while (v94);
  do
  {
    v95 = v114[13];
    free(v114);
    v114 = v95;
  }

  while (v95);
  do
  {
    v96 = v115[1];
    free(v115);
    v115 = v96;
  }

  while (v96);
  do
  {
    v97 = v117[2];
    free(v117);
    v117 = v97;
  }

  while (v97);
  do
  {
    v98 = v118[13];
    free(v118);
    v118 = v98;
  }

  while (v98);
  do
  {
    v99 = v119[1];
    free(v119);
    v119 = v99;
  }

  while (v99);
  do
  {
    v100 = a10[2];
    free(a10);
    a10 = v100;
  }

  while (v100);
  do
  {
    v101 = a11[2];
    free(a11);
    a11 = v101;
  }

  while (v101);
  do
  {
    v102 = v112[1];
    free(v112);
    v112 = v102;
  }

  while (v102);
  if (a3)
  {
    do
    {
      v110 = a3[13];
      free(a3);
      a3 = v110;
    }

    while (v110);
  }

  if (!v124)
  {
    sub_10001D73C("rule expands to no valid combination", v103, v104, v105, v106, v107, v108, v109, v111);
  }
}

uint64_t sub_10001E6BC(const char *a1, uint64_t a2)
{
  v46[1] = 0;
  v46[2] = 0;
  v46[0] = 3;
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v5)
  {
    while (1)
    {
      v6 = v5[2];
      if (v6)
      {
        if (sub_10000ECA4(v46, v6, 0, sub_10000C9A8))
        {
          break;
        }
      }

      v7 = v5[1];
      if (v7 && sub_10000CA4C(v46, v7, 0, 0))
      {
        v35 = __error();
        v45 = strerror(*v35);
        sub_10001D73C("cannot create address buffer: %s", v36, v37, v38, v39, v40, v41, v42, v45);
        goto LABEL_18;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v18 = __error();
    v26 = v5[2];
    if (*v18)
    {
      v27 = __error();
      strerror(*v27);
      sub_10001D73C("cannot load %s: %s", v28, v29, v30, v31, v32, v33, v34, v26);
    }

    else
    {
      sub_10001D73C("file %s contains bad data", v19, v20, v21, v22, v23, v24, v25, v5[2]);
    }

    goto LABEL_18;
  }

LABEL_7:
  v8 = qword_100030C68;
  v9 = *(qword_100030C68 + 4);
  if ((v9 & 4) != 0)
  {
    sub_10000B93C(a1, *a2, *(a2 + 4), v4);
    v8 = qword_100030C68;
    v9 = *(qword_100030C68 + 4);
  }

  if ((v9 & 8) == 0)
  {
    if (sub_10000FD50(a1, *a2, *(a2 + 4), *(v8 + 1704) + 64, v46, *(*(v8 + 1704) + 1736)))
    {
      v10 = __error();
      sub_10000EEC8(*v10);
      sub_10001D73C("cannot define table %s: %s", v11, v12, v13, v14, v15, v16, v17, a1);
LABEL_18:
      v43 = 0xFFFFFFFFLL;
      goto LABEL_19;
    }

    v8 = qword_100030C68;
  }

  v43 = 0;
  *(v8 + 28) = 1;
LABEL_19:
  sub_10000EC68(v46);
  return v43;
}

uint64_t sub_10001E83C(void *__src, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v37[0] = a4;
  v37[1] = a5;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  memset(v49, 0, sizeof(v49));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  *__s1 = 0u;
  v39 = 0u;
  v35 = 0;
  v36 = 0;
  v8 = &off_100030000;
  if ((*(qword_100030C68 + 12) & 0x10) == 0)
  {
    if (a2)
    {
      do
      {
        v9 = v7[3];
        free(v7);
        v7 = v9;
      }

      while (v9);
    }

    if (a3)
    {
      do
      {
        v10 = a3[19];
        free(a3);
        a3 = v10;
      }

      while (v10);
    }

    return 0;
  }

  if (!a2)
  {
    v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
    if (!v13)
    {
      sub_1000214E8();
    }

    v7 = v13;
    v13[3] = 0;
  }

  LODWORD(v11) = 0;
  v14 = v7;
  do
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100021504();
    }

    if (*(v14 + 16))
    {
      sub_10001D73C("altq on ! <interface> is not supported", v15, v16, v17, v18, v19, v20, v21, v33);
      v11 = (v11 + 1);
      goto LABEL_54;
    }

    if (sub_100003A08(v8[397], __dst, v37, a6))
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_100013318(v8[397], __dst) != 0;
    }

    v23 = v8[397];
    if ((*(v23 + 4) & 4) != 0)
    {
      sub_100002FBC(v23[210] + 16, 0, v37, a6);
      if (a3 && a3[20])
      {
        printf("queue { ");
        v24 = a3;
        do
        {
          printf("%s ", v24);
          v24 = *(v24 + 19);
        }

        while (v24);
        putchar(125);
        v8 = &off_100030000;
      }

      putchar(10);
    }

    v11 = (v11 + v22);
    if ((LODWORD(__dst[6]) - 1) > 1)
    {
      goto LABEL_36;
    }

    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    memset(v49, 0, sizeof(v49));
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    *__s1 = 0u;
    v39 = 0u;
    if (__strlcpy_chk() >= 0x40)
    {
      sub_100021504();
    }

    if (__strlcat_chk() >= 0x40)
    {
      sub_10002153C();
    }

    if (__strlcpy_chk() >= 0x40)
    {
      sub_100021504();
    }

    if (__strlcpy_chk() >= 0x10)
    {
      sub_100021504();
    }

    *(v49 + 12) = *(&__dst[25] + 4);
    DWORD2(v40[0]) = __dst[5];
    DWORD1(v49[0]) = HIDWORD(__dst[24]);
    *(v40 + 12) = *(&__dst[5] + 4);
    if (HIDWORD(__dst[5]) == 1)
    {
      LOWORD(v36) = 0;
      v35 = __dst[7];
    }

    else if (HIDWORD(__dst[5]) == 2)
    {
      LOWORD(v36) = __dst[7];
      v35 = 0;
    }

    else
    {
      v35 = 0;
      LOWORD(v36) = 0;
    }

    WORD1(v36) = WORD2(__dst[5]);
    if (sub_100004138(v8[397], __s1, &v35, a6))
    {
      v11 = (v11 + 1);
LABEL_36:
      if (!a3)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }

    if (sub_100013318(v8[397], __s1))
    {
      v11 = (v11 + 1);
    }

    else
    {
      v11 = v11;
    }

    if (!a3)
    {
LABEL_37:
      v25 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
      if (!v25)
      {
        sub_1000214E8();
      }

      a3 = v25;
      v25[19] = 0;
    }

LABEL_43:
    v26 = a3;
    do
    {
      v27 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
      if (!v27)
      {
        sub_100021520();
      }

      v28 = v27;
      if ((LODWORD(__dst[6]) - 1) <= 1 && __strlcpy_chk() >= 0x40)
      {
        sub_100021504();
      }

      if (__strlcpy_chk() >= 0x40)
      {
        sub_100021504();
      }

      if (__strlcpy_chk() >= 0x10)
      {
        sub_100021504();
      }

      v28[36] = __dst[6];
      *(v28 + 19) = 0;
      *(v28 + 20) = v28;
      if (qword_100031500)
      {
        v29 = (qword_100031500 + 160);
        *(*(qword_100031500 + 160) + 152) = v28;
      }

      else
      {
        v29 = &qword_100031500;
      }

      *v29 = v28;
      v26 = v26[19];
    }

    while (v26);
    v8 = &off_100030000;
LABEL_54:
    v14 = v14[3];
  }

  while (v14);
  do
  {
    v30 = v7[3];
    free(v7);
    v7 = v30;
  }

  while (v30);
  if (a3)
  {
    do
    {
      v31 = a3[19];
      free(a3);
      a3 = v31;
    }

    while (v31);
  }

  return v11;
}

BOOL sub_10001ED08(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v58 = a4;
  v59 = a5;
  memset(__dst, 0, 328);
  if ((*(qword_100030C68 + 12) & 0x10) == 0)
  {
    if (a3)
    {
      do
      {
        v9 = v8[19];
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    return 0;
  }

  if (qword_100031500)
  {
    if (!a2)
    {
      v11 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
      if (!v11)
      {
        sub_1000214E8();
      }

      a2 = v11;
      v11[3] = 0;
    }

    v12 = 0;
    v57 = 0;
    v13 = a1 + 64;
    v54 = a2;
    v14 = a2;
LABEL_10:
    v15 = qword_100031500;
    if (!qword_100031500)
    {
      v16 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
      qword_100031500 = v16;
      if (!v16)
      {
        sub_1000214E8();
      }

      v15 = v16;
      v16[19] = 0;
    }

    while (1)
    {
      if (!strncmp(v13, v15, 0x40uLL))
      {
        if (*v14)
        {
          v18 = *(v14 + 16);
          v19 = strncmp(v14, (v15 + 128), 0x10uLL);
          if (v18)
          {
            if (!v19)
            {
              goto LABEL_57;
            }
          }

          else if (v19)
          {
            goto LABEL_57;
          }
        }

        memcpy(__dst, a1, 0x148uLL);
        v27 = __dst[3];
        if (LODWORD(__dst[3]))
        {
          if (LODWORD(__dst[3]) != *(v15 + 144))
          {
            v52 = "exactly one scheduler type per interface allowed";
LABEL_71:
            sub_10001D73C(v52, v20, v21, v22, v23, v24, v25, v26, v53);
            return 1;
          }
        }

        else
        {
          v27 = *(v15 + 144);
        }

        LODWORD(__dst[3]) = v27;
        if (v27 == 3)
        {
          if (v8)
          {
            v52 = "priq queues cannot have child queues";
            goto LABEL_71;
          }

          if (WORD1(v59))
          {
            v52 = "priq doesn't take bandwidth";
            goto LABEL_71;
          }
        }

        if (__strlcpy_chk() >= 0x10)
        {
          sub_100021590();
        }

        if (__strlcpy_chk() >= 0x40)
        {
          sub_100021590();
        }

        if (sub_100004138(qword_100030C68, __dst, &v58, a6))
        {
          v28 = 1;
        }

        else
        {
          v28 = sub_100013318(qword_100030C68, __dst) != 0;
        }

        v12 += v28;
        if (v8)
        {
          v29 = v8;
          do
          {
            if (!strcmp(v13, v29))
            {
              sub_10001D73C("queue cannot have itself as child", v30, v31, v32, v33, v34, v35, v36, v53);
              ++v12;
            }

            else
            {
              v37 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
              if (!v37)
              {
                sub_100021574();
              }

              v38 = v37;
              if (__strlcpy_chk() >= 0x40)
              {
                sub_100021558();
              }

              if (__strlcpy_chk() >= 0x40)
              {
                sub_100021558();
              }

              if (__strlcpy_chk() >= 0x10)
              {
                sub_100021558();
              }

              *(v38 + 144) = *(v15 + 144);
              *(v38 + 152) = 0;
              *(v38 + 160) = v38;
              v39 = qword_100031500;
              if (qword_100031500)
              {
                *(*(qword_100031500 + 160) + 152) = v38;
                *(v39 + 160) = v38;
              }

              else
              {
                qword_100031500 = v38;
              }
            }

            v29 = *(v29 + 19);
          }

          while (v29);
        }

        if ((*(qword_100030C68 + 4) & 4) == 0)
        {
          goto LABEL_56;
        }

        if (!v57)
        {
          v17 = *v14 != 0;
          goto LABEL_50;
        }

        if (v57 != -1)
        {
          if (*v14)
          {
            v17 = 1;
LABEL_50:
            sub_100003140(*(qword_100030C68 + 1680) + 16, 0, &v58, v17, a6);
            if (v8 && v8[20])
            {
              printf("{ ");
              v40 = v8;
              do
              {
                printf("%s ", v40);
                v40 = *(v40 + 19);
              }

              while (v40);
              putchar(125);
            }

            putchar(10);
          }

LABEL_56:
          ++v57;
          goto LABEL_57;
        }

        v57 = 0;
      }

LABEL_57:
      v15 = *(v15 + 152);
      if (!v15)
      {
        v14 = *(v14 + 24);
        if (v14)
        {
          goto LABEL_10;
        }

        if (v8)
        {
          do
          {
            v41 = v8[19];
            free(v8);
            v8 = v41;
          }

          while (v41);
        }

        v42 = v54;
        do
        {
          v43 = v42[3];
          free(v42);
          v42 = v43;
        }

        while (v43);
        if (!v57)
        {
          sub_10001D73C("queue %s has no parent", v44, v45, v46, v47, v48, v49, v50, v13);
          LOBYTE(v12) = v12 + 1;
        }

        return v12 != 0;
      }
    }
  }

  sub_10001D73C("queue %s has no parent", a2, a3, a4, a5, a6, a7, a8, a1 + 64);
  if (v8)
  {
    do
    {
      v51 = v8[19];
      free(v8);
      v8 = v51;
    }

    while (v51);
  }

  return 1;
}

void sub_10001F1D4(void *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 80);
      if (*a2)
      {
        if (*(v2 + 80))
        {
          v7 = v6 == *a2;
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          v8 = *(v2 + 104);
          if (v2 == *(*a1 + 112))
          {
            *(*a1 + 112) = v5;
          }

          v9 = (v5 + 104);
          if (!v5)
          {
            v9 = a1;
          }

          *v9 = v8;
          v10 = *(v2 + 88);
          if (v10)
          {
            free(v10);
          }

          free(v2);
          goto LABEL_18;
        }
      }

      else if (*(v2 + 80))
      {
        *a2 = v6;
      }

      v8 = *(v2 + 104);
      v5 = v2;
LABEL_18:
      v2 = v8;
    }

    while (v8);
  }
}

uint64_t sub_10001F284(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    while (*(v2 + 40) != 3)
    {
      v2 = *(v2 + 104);
      if (!v2)
      {
        return 0;
      }
    }

    v3 = fmtcheck(a2, "%s");
    sub_10001D73C(v3, v4, v5, v6, v7, v8, v9, v10, v2);
    return 1;
  }

  return result;
}

uint64_t sub_10001F2F0(uint64_t __s, char *a2)
{
  if (__s)
  {
    v3 = __s;
    while (*(v3 + 40) != 2 || (*(v3 + 41) & 8) != 0 && (*(strlen(v3) + v3 - 1) - 48) < 0xA)
    {
      v3 = *(v3 + 104);
      if (!v3)
      {
        return 0;
      }
    }

    v4 = fmtcheck(a2, "%s");
    sub_10001D73C(v4, v5, v6, v7, v8, v9, v10, v11, v3);
    return 1;
  }

  return __s;
}

uint64_t sub_10001F380(char *a1, int a2)
{
  v23 = 0;
  if (a2 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (sub_10001F428(a1, &v23) == -1)
  {
    v13 = sub_1000099DC(v4, a1, a2);
    if (!v13)
    {
      sub_10001D73C("unknown icmp code %s", v14, v15, v16, v17, v18, v19, v20, a1);
      return 0;
    }

    v12 = *(v13 + 9);
  }

  else
  {
    v12 = v23;
    if (v23 >= 0x100)
    {
      sub_10001D73C("invalid icmp code %lu", v5, v6, v7, v8, v9, v10, v11, v23);
      return 0;
    }
  }

  return (v12 | (v4 << 8));
}

uint64_t sub_10001F428(const char *a1, unint64_t *a2)
{
  __endptr = 0;
  *__error() = 0;
  v4 = strtoul(a1, &__endptr, 0);
  if (!*a1 || *__endptr)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*__error() == 34 && v5 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10001F4B4(const char *a1)
{
  v18 = 0;
  if (sub_10001F428(a1, &v18))
  {
    v9 = getservbyname(a1, "tcp");
    if (v9)
    {
      return v9->s_port;
    }

    v9 = getservbyname(a1, "udp");
    if (v9)
    {
      return v9->s_port;
    }

    sub_10001D73C("unknown port %s", v10, v11, v12, v13, v14, v15, v16, a1);
  }

  else
  {
    if (v18 < 0x10000)
    {
      return bswap32(v18) >> 16;
    }

    sub_10001D73C("illegal port value %lu", v2, v3, v4, v5, v6, v7, v8, v18);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
LABEL_2:
    if (a1)
    {
      return 0;
    }
  }

  else if (a1)
  {
    v10 = "address family not given and translation address expands to multiple address families";
    v11 = a1;
    while ((*(v11 + 40) & 0xFE) == 2)
    {
      v11 = *(v11 + 104);
      if (!v11)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_10;
  }

  v10 = "no translation address with matching address family found.";
LABEL_10:
  sub_10001D73C(v10, a2, a3, a4, a5, a6, a7, a8, vars0);
  return 1;
}

uint64_t sub_10001F5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v10 = *(a1 + 1004);
  if (v10 <= 0xC)
  {
    if (((1 << v10) & 0xF) != 0)
    {

      return sub_10001F684(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else if (((1 << v10) & 0x300) != 0)
    {

      return sub_10001F8DC(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else if (((1 << v10) & 0x1800) != 0)
    {
      v12 = sub_10001F684(a1, a2, a3, a4, a5, a6, a7, a8);
      return sub_10001F998(a1, a2, v13, v14, v15, v16, v17, v18) + v12;
    }
  }

  return result;
}

uint64_t sub_10001F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1014);
  v10 = v9 == 6 || v9 == 17;
  if (!v10 && (*(a1 + 52) || *(a1 + 116)))
  {
    sub_10001D73C("port only applies to tcp/udp", a2, a3, a4, a5, a6, a7, a8, v18);
    v9 = *(a1 + 1014);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != 1 && v9 != 58 && (*(a1 + 1015) || *(a1 + 1016)))
  {
    sub_10001D73C("icmp-type/code only applies to icmp", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  if (!*(a1 + 1013) && (*(a1 + 1015) || *(a1 + 1016)))
  {
    sub_10001D73C("must indicate address family with icmp-type/code", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  if (*(a1 + 528) && !*(a1 + 924) && !*(a1 + 932))
  {
    sub_10001D73C("'overload' requires 'max-src-conn' or 'max-src-conn-rate'", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  v12 = *(a1 + 1014);
  if (v12 == 58)
  {
    if (*(a1 + 1013) == 2)
    {
      v13 = "icmp6";
      goto LABEL_29;
    }
  }

  else if (v12 == 1 && *(a1 + 1013) == 30)
  {
    v13 = "icmp";
LABEL_29:
    sub_10001D73C("proto %s doesn't match address family %s", a2, a3, a4, a5, a6, a7, a8, v13);
    ++v11;
  }

  if (*(a1 + 1020))
  {
    v14 = *(a1 + 1004);
    if (v14 > 0xC || ((1 << v14) & 0x1801) == 0)
    {
      sub_10001D73C("allow-opts can only be specified for pass rules", a2, a3, a4, a5, a6, a7, a8, v18);
      ++v11;
    }
  }

  v15 = *(a1 + 1000);
  if ((v15 & 2) != 0 && (*(a1 + 52) || *(a1 + 116) || *(a1 + 1018) || *(a1 + 1015) || *(a1 + 1016)))
  {
    sub_10001D73C("fragments can be filtered only on IP header fields", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
    v15 = *(a1 + 1000);
  }

  if ((v15 & 1) != 0 && *(a1 + 1014) != 6)
  {
    sub_10001D73C("return-rst can only be applied to TCP rules", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  if (*(a1 + 916) && (*(a1 + 1000) & 0x40) == 0)
  {
    sub_10001D73C("max-src-nodes requires 'source-track rule'", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  if (*(a1 + 1004) == 1 && *(a1 + 1012))
  {
    sub_10001D73C("keep state on block rules doesn't make sense", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  v16 = *(a1 + 1000) >> 13;
  if (v16 > 4 || v16 == 3)
  {
    sub_10001D73C("tos/dscp/sc cannot be used together", a2, a3, a4, a5, a6, a7, a8, v18);
    ++v11;
  }

  return -v11;
}

uint64_t sub_10001F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1014);
  if (v9 == 6 || v9 == 17)
  {
    v11 = 0;
  }

  else
  {
    if (*(a1 + 52))
    {
      sub_10001D73C("src port only applies to tcp/udp", a2, a3, a4, a5, a6, a7, a8, v17);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    if (*(a1 + 116))
    {
      sub_10001D73C("dst port only applies to tcp/udp", a2, a3, a4, a5, a6, a7, a8, v17);
      ++v11;
    }

    if (*(a1 + 636))
    {
      sub_10001D73C("rpool port only applies to tcp/udp", a2, a3, a4, a5, a6, a7, a8, v17);
      ++v11;
    }
  }

  v12 = *(a1 + 116);
  v13 = v12 > 9;
  v14 = (1 << v12) & 0x205;
  if (v13 || v14 == 0)
  {
    sub_10001D73C("invalid port operator for rdr destination port", a2, a3, a4, a5, a6, a7, a8, v17);
    ++v11;
  }

  return -v11;
}

uint64_t sub_10001F998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v11 = *(a1 + 1004);
  if (v11 == 11)
  {
    if ((*(a1 + 1032) - 0x10000) > 0xFFFF0000)
    {
      v9 = 0;
LABEL_16:
      if (*(a1 + 1032) && !*(a1 + 1005))
      {
        sub_10001D73C("a dummynet rule cannot be specified without direction", a2, a3, a4, a5, a6, a7, a8, v12);
        ++v9;
      }

      goto LABEL_3;
    }

    sub_10001D73C("a dummynet rule needs a pipe number between 1 and 65535", a2, a3, a4, a5, a6, a7, a8, v12);
    v11 = *(a1 + 1004);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v11 == 12)
  {
    if (!*(a1 + 1032))
    {
      goto LABEL_3;
    }

    sub_10001D73C("specifying a pipe with no dummynet doesn't make sense", a2, a3, a4, a5, a6, a7, a8, v12);
    ++v9;
    v11 = *(a1 + 1004);
  }

  if (v11 == 11)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (*(a1 + 1012))
  {
    sub_10001D73C("keep state on dummynet rules is not allowed", a2, a3, a4, a5, a6, a7, a8, v12);
    ++v9;
  }

  return -v9;
}

void sub_10001FA6C(char *a1, size_t a2, const char *a3, const char *a4)
{
  v8 = malloc_type_calloc(1uLL, a2, 0x5E343BA8uLL);
  if (!v8)
  {
    sub_1000215C8();
  }

  v9 = v8;
  v10 = strstr(a1, a3);
  v11 = a1;
  if (v10)
  {
    v12 = v10;
    v11 = a1;
    do
    {
      *v12 = 0;
      if (strlcat(v9, v11, a2) >= a2 || strlcat(v9, a4, a2) >= a2)
      {
        sub_1000215AC();
      }

      v11 = &v12[strlen(a3)];
      v12 = strstr(v11, a3);
    }

    while (v12);
  }

  if (strlcat(v9, v11, a2) >= a2)
  {
    sub_1000215AC();
  }

  strlcpy(a1, v9, a2);

  free(v9);
}

void sub_10001FB80(char *__s2, char *__s1, size_t a3, const char *a4)
{
  if (strstr(__s1, __s2))
  {
    if (*a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "any";
    }

    sub_10001FA6C(__s1, a3, __s2, v8);
  }
}

void sub_10001FC04(char *__s2, char *__s1, size_t a3, int a4, unsigned __int8 *a5)
{
  if (!strstr(__s1, __s2))
  {
    return;
  }

  v10 = a5[40];
  if (v10 <= 1)
  {
    if (a5[40])
    {
      if (v10 != 1)
      {
        goto LABEL_33;
      }

      LOBYTE(v17) = 0;
      v11 = "no-route";
LABEL_11:
      *__str = *v11;
      goto LABEL_35;
    }

    if (a4)
    {
      if (a4 == 2)
      {
        if (!*a5 && !*(a5 + 4))
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 30 && !*a5 && !*(a5 + 1) && !*(a5 + 2) && !*(a5 + 3) && !*(a5 + 4) && !*(a5 + 5) && !*(a5 + 6) && !*(a5 + 7))
      {
        goto LABEL_17;
      }

      if (inet_ntop(a4, a5, v15, 0x30u))
      {
        v12 = sub_100000ACC((a5 + 16));
        if (a4 == 2 && v12 < 32 || a4 == 30 && v12 <= 127)
        {
          snprintf(__str, 0x40uLL, "%s/%d");
        }

        else
        {
          snprintf(__str, 0x40uLL, "%s");
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_17:
    strcpy(__str, "any");
    goto LABEL_35;
  }

  if (v10 == 5)
  {
    v17 = 6579564;
    v11 = "urpf-failed";
    goto LABEL_11;
  }

  if (v10 == 3)
  {
    snprintf(__str, 0x40uLL, "<%s>");
    goto LABEL_35;
  }

  if (v10 != 2)
  {
LABEL_33:
    strcpy(__str, "?");
    goto LABEL_35;
  }

  snprintf(__str, 0x40uLL, "(%s)");
LABEL_35:
  v13 = a5[81];
  v14 = __str;
  if (v13)
  {
    v14 = v15;
    snprintf(v15, 0x42uLL, "! %s", __str);
  }

  sub_10001FA6C(__s1, a3, __s2, v14);
}

void sub_10001FE38(char *__s2, char *__s1, size_t a3, unsigned __int16 *a4)
{
  memset(v11, 0, 13);
  if (strstr(__s1, __s2))
  {
    snprintf(__str, 6uLL, "%u", bswap32(*a4) >> 16);
    snprintf(v9, 6uLL, "%u", bswap32(a4[1]) >> 16);
    v8 = *(a4 + 4);
    if (v8 > 4)
    {
      if (*(a4 + 4) > 6u)
      {
        if (v8 == 7)
        {
          snprintf(v11, 0xDuLL, ">=%s");
        }

        else if (v8 == 8)
        {
          snprintf(v11, 0xDuLL, "%s<>%s");
        }
      }

      else if (v8 == 5)
      {
        snprintf(v11, 0xDuLL, "<=%s");
      }

      else if (v8 == 6)
      {
        snprintf(v11, 0xDuLL, ">%s");
      }
    }

    else if (*(a4 + 4) > 2u)
    {
      if (v8 == 3)
      {
        snprintf(v11, 0xDuLL, "!=%s");
      }

      else if (v8 == 4)
      {
        snprintf(v11, 0xDuLL, "<%s");
      }
    }

    else if (v8 == 1)
    {
      snprintf(v11, 0xDuLL, "%s><%s");
    }

    else if (v8 == 2)
    {
      snprintf(v11, 0xDuLL, "%s");
    }

    sub_10001FA6C(__s1, a3, __s2, v11);
  }
}

void sub_100020028(char *__s2, char *__s1, size_t a3, int a4)
{
  if (strstr(__s1, __s2))
  {
    v8 = getprotobynumber(a4);
    if (v8)
    {
      p_name = v8->p_name;

      sub_10001FA6C(__s1, a3, __s2, p_name);
    }

    else
    {
      snprintf(__str, 4uLL, "%u", a4);
      sub_10001FA6C(__s1, a3, __s2, __str);
    }
  }
}

void sub_1000200E0(char *__s2, char *__s1, size_t a3)
{
  if (strstr(__s1, __s2))
  {
    snprintf(__str, 0xBuLL, "%u", *(*(qword_100030C68 + 1704) + 1756));
    sub_10001FA6C(__s1, a3, __s2, __str);
  }
}

void sub_100020190(char *__s1, size_t a2, const char *a3, int a4, unsigned __int8 *a5, unsigned __int16 *a6, unsigned __int8 *a7, unsigned __int16 *a8, unsigned __int8 a9)
{
  sub_10001FB80("$if", __s1, a2, a3);
  sub_10001FC04("$srcaddr", __s1, a2, a4, a5);
  sub_10001FC04("$dstaddr", __s1, a2, a4, a7);
  sub_10001FE38("$srcport", __s1, a2, a6);
  sub_10001FE38("$dstport", __s1, a2, a8);
  sub_100020028("$proto", __s1, a2, a9);

  sub_1000200E0("$nr", __s1, a2);
}

uint64_t sub_1000202A4(unsigned int a1)
{
  if (qword_100031880)
  {
    v2 = dword_100031888++;
    if ((v2 & 0x80000000) == 0)
    {
      result = *(qword_100031880 + v2);
      if (*(qword_100031880 + v2))
      {
        return result;
      }

      qword_100031880 = 0;
    }
  }

  if (dword_100031878)
  {
    v4 = --dword_100031878;
    return byte_10003188C[v4];
  }

  else
  {
    result = getc(*(qword_100030C60 + 16));
    if (a1)
    {
      if (result == -1)
      {
        sub_10001D73C("reached end of file while parsing quoted string", v5, v6, v7, v8, v9, v10, v11, v13);
        if (sub_1000203B4() == -1)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return a1;
        }
      }
    }

    else
    {
      for (; result == 92; result = getc(*(v12 + 16)))
      {
        result = getc(*(qword_100030C60 + 16));
        if (result != 10)
        {
          break;
        }

        v12 = qword_100030C60;
        DWORD2(xmmword_1000315D0) = *(qword_100030C60 + 32);
        *(qword_100030C60 + 32) = DWORD2(xmmword_1000315D0) + 1;
      }

      while (result == -1)
      {
        result = sub_1000203B4();
        if (result == -1)
        {
          break;
        }

        result = getc(*(qword_100030C60 + 16));
      }
    }
  }

  return result;
}

uint64_t sub_1000203B4()
{
  v0 = qword_100030C60;
  v1 = *(qword_100030C60 + 8);
  v2 = **(v1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  *(v2 + 36) += *(qword_100030C60 + 36);
  v3 = *v0;
  if (*v0)
  {
    *(v3 + 8) = v1;
    v1 = *(v0 + 8);
  }

  else
  {
    off_100030B80 = v1;
  }

  *v1 = v3;
  fclose(*(v0 + 16));
  v5 = qword_100030C60;
  free(*(qword_100030C60 + 24));
  free(v5);
  result = 0;
  qword_100030C60 = v2;
  return result;
}

uint64_t sub_10002044C()
{
  qword_100031880 = 0;
  dword_100031878 = 0;
  while (1)
  {
    v0 = sub_1000202A4(0);
    if (v0 == -1)
    {
      break;
    }

    if (v0 == 10)
    {
      ++*(qword_100030C60 + 32);
      return 293;
    }
  }

  return 293;
}

uint64_t sub_1000204A0(int a1, const char *a2)
{
  memset(&v5, 0, sizeof(v5));
  if (fstat(a1, &v5))
  {
    warn("cannot stat %s", a2);
    return 0xFFFFFFFFLL;
  }

  st_uid = v5.st_uid;
  if (v5.st_uid && st_uid != getuid())
  {
    warnx("%s: owner not root or current user");
    return 0xFFFFFFFFLL;
  }

  if ((v5.st_mode & 0x3F) != 0)
  {
    warnx("%s: group/world readable/writeable");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_10002054C(const char *a1, uint64_t a2)
{
  qword_100030C68 = a2;
  dword_100030C78 = 0;
  byte_100030C70 = 0;
  dword_100030BA8 = 1;
  qword_100030C60 = sub_10001D5F8(a1, 0);
  if (qword_100030C60)
  {
    sub_100015820();
    v2 = *(qword_100030C60 + 36);
    sub_1000203B4();
    v3 = off_100030B88;
    if (off_100030B88)
    {
      v4 = qword_100030C68;
      do
      {
        if ((*(v4 + 4) & 0x80) != 0 && !*(v3 + 4))
        {
          fprintf(__stderrp, "warning: macro '%s' not used\n", *(v3 + 3));
          v4 = qword_100030C68;
        }

        free(*(v3 + 3));
        free(*(v3 + 4));
        v5 = *v3;
        v6 = *(v3 + 1);
        if (*v3)
        {
          v7 = *v3;
        }

        else
        {
          v7 = &off_100030B88;
        }

        *(v7 + 1) = v6;
        *v6 = v5;
        free(v3);
        v3 = off_100030B88;
      }

      while (off_100030B88);
    }

    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    warn("cannot open the main config file!");
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100020670(char *a1)
{
  v2 = strrchr(a1, 61);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = strlen(a1);
  v5 = strlen(v3);
  v6 = malloc_type_malloc(v4 - v5 + 1, 0x6C947A70uLL);
  if (!v6)
  {
    sub_1000215E4();
  }

  v7 = v6;
  v8 = strlen(a1);
  v9 = strlen(v3);
  strlcpy(v7, a1, v8 - v9 + 1);
  v10 = sub_10001D99C(v7, v3 + 1, 1);
  free(v7);
  return v10;
}

uint64_t sub_10002072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &qword_100030B98;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = *(a2 + 4);
    if ((v7 & 4) != 0)
    {
      fprintf(__stderrp, "\nLoading anchor %s from %s\n", v6[2], v6[3]);
      v7 = *(a2 + 4);
    }

    result = sub_1000133DC(a1, v6[3], v7, *(a2 + 8), v6[2], a3);
    if (result == -1)
    {
      return result;
    }
  }

  return 0;
}

void sub_100020FEC()
{
  if (*__error() == 16)
  {
    warnx("Current pool size exceeds requested hard limit");
  }

  else
  {
    warnx("DIOCSETLIMIT");
  }
}

void sub_100021454(void **a1, void *a2)
{
  warn("%s", *a1);
  free(*a1);

  free(a2);
}