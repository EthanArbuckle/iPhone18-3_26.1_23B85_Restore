uint64_t sub_1818D0A24(unsigned __int8 *a1)
{
LABEL_1:
  while (2)
  {
    v1 = a1 + 1;
    v2 = *a1;
    while (v2 > 171)
    {
      if (v2 != 172)
      {
        if (v2 == 177)
        {
LABEL_21:
          a1 = *(*(a1 + 4) + 8);
        }

        else
        {
          if (v2 != 178)
          {
            goto LABEL_16;
          }

          a1 = *(*(*(*(a1 + 2) + 32) + 32) + 24 * *(a1 + 12) + 8);
        }

        goto LABEL_1;
      }

      if (*v1 == 88)
      {
        goto LABEL_21;
      }

LABEL_16:
      if ((*(a1 + 5) & 0x420) != 0)
      {
        a1 = *(a1 + 2);
        goto LABEL_1;
      }

      if (v2 == 176)
      {
        v2 = a1[2];
        if (v2 != 176)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    if (v2 > 169)
    {
      if (v2 == 170)
      {
        v3 = *(a1 + 9);
        if (v3)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_16;
    }

    if (v2 == 36)
    {
      v4 = *(a1 + 1);
      v5 = *v4;
      if (!*v4)
      {
        return 67;
      }

      v6 = 0;
      v7 = v4 + 1;
      v8 = 67;
      while (1)
      {
        v6 = byte_181A20298[v5] | (v6 << 8);
        v11 = 66;
        if (v6 > 1668050785)
        {
          if (v6 == 1668050786 || v6 == 1952807028)
          {
            goto LABEL_30;
          }
        }

        else if (v6 == 1651273570)
        {
          v11 = 65;
          if (v8 == 67 || v8 == 69)
          {
            goto LABEL_30;
          }
        }

        else if (v6 == 1667785074)
        {
          goto LABEL_30;
        }

        v13 = v6 == 1718382433 || v6 == 1919246700 || v6 == 1685026146;
        if (v13 && v8 == 67)
        {
          v11 = 69;
        }

        else
        {
          v11 = v8;
          if ((v6 & 0xFFFFFF) == 0x696E74)
          {
            return 68;
          }
        }

LABEL_30:
        v10 = *v7++;
        v5 = v10;
        v8 = v11;
        if (!v10)
        {
          return v11;
        }
      }
    }

    if (v2 == 139)
    {
      a1 = *(*(*(a1 + 4) + 32) + 8);
      continue;
    }

    break;
  }

  if (v2 != 168)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 9);
LABEL_50:
  v14 = *(a1 + 12);
  if ((v14 & 0x80000000) != 0 || v14 >= *(v3 + 54))
  {
    return 68;
  }

  v1 = (*(v3 + 8) + 16 * v14 + 9);
LABEL_53:
  LOBYTE(v11) = *v1;
  return v11;
}

uint64_t sub_1818D0C40(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v11 = **a2;
  if (v11 == 54)
  {
LABEL_4:
    v8 = sub_1818B8080(a1, *(*a2 + 24), a6, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  if (v11 != 51)
  {
    if (v11 != 45)
    {
      sub_18197ACA8(a1, a2, a3, a4, a5, a6);
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v12 = a1[2];
  v13 = *(v12 + 144);
  if (*(v12 + 148) <= v13)
  {
    sub_18194C8AC(v12, 75, 0, a6, 0, a6, a7, a8);
  }

  else
  {
    *(v12 + 144) = v13 + 1;
    v14 = *(v12 + 136) + 40 * v13;
    *v14 = 75;
    *(v14 + 8) = a6;
    *(v14 + 12) = 0;
    *(v14 + 28) = 0;
    *(v14 + 20) = 0;
    *(v14 + 36) = 0;
  }

LABEL_9:
  if ((*(*(a3 + 96) + 50) & 0x20) == 0 || (*(a2 + 10) & 0x800) == 0)
  {
    sub_1818E1F5C(a3, a2);
  }

  return v8;
}

uint64_t sub_1818D0D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 20);
  v4 = *(a2 + 20);
  if ((v4 | v3))
  {
    return (v4 & 1) - (v3 & 1u);
  }

  if (((v4 | v3) & 0x2C) == 0)
  {
    if (((v4 | v3) & 2) != 0)
    {
      if ((v3 & 2) == 0)
      {
        return 1;
      }

      if ((v4 & 2) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (a3)
      {
        return sub_1819433F0(a1, a2, a3, 0);
      }
    }

    return sub_1819435AC(a1, a2);
  }

  if ((v4 & v3 & 0x24) != 0)
  {
    goto LABEL_4;
  }

  if ((v4 & v3 & 8) != 0)
  {
    if (*a1 >= *a2)
    {
      return *a1 > *a2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if ((v3 & 0x24) != 0)
    {
      if ((v4 & 8) == 0)
      {
        if ((v4 & 0x24) != 0)
        {
LABEL_4:
          if (*a1 >= *a2)
          {
            return *a1 > *a2;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

        return 0xFFFFFFFFLL;
      }

      v8 = *a2;
      if (*a2 >= -9.22337204e18)
      {
        if (v8 >= 9.22337204e18)
        {
          return 0xFFFFFFFFLL;
        }

        v9 = *a1;
        if (*a1 < v8)
        {
          return 0xFFFFFFFFLL;
        }

        if (*a1 <= v8)
        {
          v11 = v8 <= v9;
          v10 = v8 < v9;
          if (v11)
          {
            return v10;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      return 1;
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    if ((v4 & 0x24) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = *a1;
    result = 0xFFFFFFFFLL;
    if (v6 < -9.22337204e18)
    {
      return result;
    }

    if (v6 >= 9.22337204e18)
    {
      return 1;
    }

    v7 = *a2;
    if (*a2 < v6)
    {
      return 1;
    }

    if (*a2 <= v6)
    {
      v11 = v6 <= v7;
      if (v6 >= v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = -1;
      }

      if (v11)
      {
        return v12;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1818D0EC0(int a1, int a2, void *__s1, int a4, void *__s2)
{
  v5 = a2 - a4;
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  LODWORD(result) = memcmp(__s1, __s2, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1818D0EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_181938B20(a2);
  v6 = *(a2 + 64);
  WORD2(v21) = 0;
  *(&v21 + 1) = a1;
  LODWORD(v22) = 0;
  result = sub_18193E044(a2, v6, &v20);
  if (result)
  {
    return result;
  }

  v8 = *(&v20 + 1);
  v9 = **(&v20 + 1);
  if ((v9 & 0x80000000) != 0)
  {
    v14 = *(*(&v20 + 1) + 1);
    if (*(*(&v20 + 1) + 1) < 0)
    {
      v15 = *(*(&v20 + 1) + 2);
      if (v15 < 0)
      {
        v24 = 0;
        sub_1818C7200(*(&v20 + 1), &v24);
        if (HIDWORD(v24))
        {
          v9 = -1;
        }

        else
        {
          v9 = v24;
        }

        if (v9 >= 3)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v9 = ((v9 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v15;
        if (v9 >= 3)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v9 = v14 | ((v9 & 0x7F) << 7);
      if (v9 >= 3)
      {
        goto LABEL_4;
      }
    }

LABEL_30:
    if (v22)
    {
      sub_18193CA00(&v20);
    }

    return sub_18190EDA8(98972);
  }

  if (v9 < 3)
  {
    goto LABEL_30;
  }

LABEL_4:
  v10 = v21;
  if (v9 > v21)
  {
    goto LABEL_30;
  }

  v11 = (v8 + v9 - 1);
  v12 = *v11;
  if (v12 < 0)
  {
    v13 = v11[1];
    if (v11[1] < 0)
    {
      v16 = v11[2];
      if (v16 < 0)
      {
        v24 = 0;
        sub_1818C7200(v11, &v24);
        if (HIDWORD(v24))
        {
          v12 = -1;
        }

        else
        {
          v12 = v24;
        }
      }

      else
      {
        v12 = ((v12 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v16;
      }
    }

    else
    {
      v12 = v13 | ((v12 & 0x7F) << 7);
    }
  }

  if (v12 == 7 || (v12 - 10) < 0xFFFFFFF7)
  {
    goto LABEL_30;
  }

  v18 = byte_181A20DA4[v12];
  if (v10 < v9 + v18)
  {
    goto LABEL_30;
  }

  sub_1818C7394((v8 + v10 - v18), v12, v19);
  *a3 = *&v19[0];
  if (v22)
  {
    sub_18193CA00(&v20);
  }

  return 0;
}

uint64_t sub_1818D10D4(uint64_t a1, int a2, const char **a3, const char **a4)
{
  v5 = a3;
  v9 = *(a1 + 16);
  v8 = *(a1 + 20);
  if (a3)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = a2 << v11;
  if (v12 + *(a1 + 28) > v9)
  {
    *(a1 + 16) = v12 + 2 * v9;
    v13 = sub_18190287C(*a1, 8 * (v12 + 2 * v9), 0x10040436913F5);
    if (!v13)
    {
LABEL_33:
      *(a1 + 32) = 7;
      return 1;
    }

    *a1 = v13;
    v8 = *(a1 + 20);
  }

  if (v8)
  {
    if (*(a1 + 24) != a2)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v14);
          --qword_1ED456A90;
          off_1ED452EB0(v14);
          v14 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_19;
          }

          v15 = &xmmword_1ED452F28;
        }

        (*v15)(v14);
      }

LABEL_19:
      *(a1 + 8) = sqlite3_mprintf("sqlite3_get_table() called with two or more incompatible queries");
      result = 1;
      *(a1 + 32) = 1;
      return result;
    }

    goto LABEL_24;
  }

  *(a1 + 24) = a2;
  if (a2 >= 1)
  {
    v17 = a2;
    do
    {
      v18 = sqlite3_mprintf("%s", *a4);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = *a1;
      v20 = *(a1 + 28);
      *(a1 + 28) = v20 + 1;
      *(v19 + 8 * v20) = v18;
      ++a4;
    }

    while (--v17);
  }

LABEL_24:
  if (!v5)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    for (i = a2; i; --i)
    {
      if (*v5)
      {
        v25 = strlen(*v5);
        if (sqlite3_initialize())
        {
          goto LABEL_33;
        }

        v26 = v25 & 0x3FFFFFFF;
        v27 = sub_181902484(v26 + 1, 3848184466);
        if (!v27)
        {
          goto LABEL_33;
        }

        v22 = v27;
        memcpy(v27, *v5, v26 + 1);
      }

      else
      {
        v22 = 0;
      }

      v23 = *a1;
      v24 = *(a1 + 28);
      *(a1 + 28) = v24 + 1;
      *(v23 + 8 * v24) = v22;
      ++v5;
    }
  }

  result = 0;
  ++*(a1 + 20);
  return result;
}

char *sqlite3_mprintf(const char *a1, ...)
{
  va_start(va, a1);
  if (sqlite3_initialize())
  {
    return 0;
  }

  else
  {
    return sqlite3_vmprintf(a1, va);
  }
}

void sqlite3_free_table(char **result)
{
  if (!result)
  {
    return;
  }

  v1 = result;
  v2 = result - 1;
  if (*(result - 1) >= 2)
  {
    for (i = (*(result - 1) & 0x7FFFFFFF) - 1; i; --i)
    {
      v4 = *v1;
      if (*v1)
      {
        v5 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v4);
          --qword_1ED456A90;
          off_1ED452EB0(v4);
          v4 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_5;
          }

          v5 = &xmmword_1ED452F28;
        }

        (*v5)(v4);
      }

LABEL_5:
      ++v1;
    }
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_17;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
LABEL_17:
    v7 = *v6;

    v7(v2);
  }
}

void sub_1818D14E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *a1;
  v10 = *(*a1 + 528);
  if (v10 && !*(v9 + 197) && !*(a1 + 302))
  {
    v25 = a1;
    v26 = v10(*(v9 + 536), 22, "BEGIN", 0, 0, *(a1 + 368));
    if (v26 == 1)
    {
      v27 = 23;
      v28 = "not authorized";
    }

    else
    {
      if ((v26 & 0xFFFFFFFD) == 0)
      {
        v29 = v26;
        a1 = v25;
        if (v29)
        {
          return;
        }

        goto LABEL_4;
      }

      v27 = 1;
      v28 = "authorizer malfunction";
    }

    sub_181910730(v25, v28, a3, a4, a5, a6, a7, a8, v30);
    *(v25 + 24) = v27;
    return;
  }

LABEL_4:
  v11 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    v15 = v11;
    if (v8 != 7 && *(v9 + 40) >= 1)
    {
      v16 = 0;
      if (v8 == 9)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v18 = 8;
      do
      {
        v19 = *(*(v9 + 32) + v18);
        if (v19 && (*(*(v19 + 8) + 40) & 1) != 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = v17;
        }

        v21 = *(v15 + 144);
        if (*(v15 + 148) <= v21)
        {
          sub_18194C8AC(v15, 2, v16, v20, 0, v12, v13, v14);
        }

        else
        {
          *(v15 + 144) = v21 + 1;
          v22 = *(v15 + 136) + 40 * v21;
          *v22 = 2;
          *(v22 + 4) = v16;
          *(v22 + 8) = v20;
          *(v22 + 12) = 0;
          *(v22 + 28) = 0;
          *(v22 + 20) = 0;
          *(v22 + 36) = 0;
        }

        *(v15 + 272) |= 1 << v16;
        if (v18 != 40 && *(*(*(*v15 + 32) + v18) + 17))
        {
          *(v15 + 276) |= 1 << v16;
        }

        ++v16;
        v18 += 32;
      }

      while (v16 < *(v9 + 40));
    }

    v23 = *(v15 + 144);
    if (*(v15 + 148) <= v23)
    {

      sub_18194C8AC(v15, 1, 0, 0, 0, v12, v13, v14);
    }

    else
    {
      *(v15 + 144) = v23 + 1;
      v24 = *(v15 + 136) + 40 * v23;
      *v24 = 1;
      *(v24 + 1) = 0u;
      *(v24 + 17) = 0u;
      *(v24 + 32) = 0;
    }
  }
}

uint64_t sub_1818D1728(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 80);
  v4 = *(v2 + 112);
  v5 = *(v4 + 40);
  if ((*(v4 + 52) & 4) != 0 && v5[8] >= *(v4 + 48))
  {
    if (!v5[32])
    {
LABEL_12:
      strcpy(v3, "SQLite format 3");
      *(v3 + 16) = BYTE1(*(a1 + 52));
      *(v3 + 17) = *(a1 + 54);
      *(v3 + 18) = 257;
      *(v3 + 20) = *(a1 + 52) - *(a1 + 56);
      *(v3 + 21) = 8256;
      *(v3 + 23) = 32;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 84) = 0u;
      v11 = *(v2 + 72);
      v10 = *(v2 + 80);
      v12 = *(v2 + 9);
      if ((*(v11 + 40) & 0xC) != 0)
      {
        v13 = a1;
        bzero((v10 + v12), (*(v11 + 56) - v12));
        a1 = v13;
      }

      v6 = 0;
      v14 = v10 + v12;
      *v14 = 13;
      *(v14 + 1) = 0;
      *(v14 + 7) = 0;
      *(v14 + 5) = BYTE1(*(v11 + 56));
      *(v14 + 6) = *(v11 + 56);
      *(v2 + 20) = (*(v11 + 56) - (v12 + 8));
      v15 = *(v2 + 72);
      *(v2 + 11) = *(v15 + 37);
      *(v2 + 10) = 0;
      *(v2 + 8) = 1;
      *(v2 + 120) = sub_1819355AC;
      *(v2 + 128) = sub_1818C7030;
      *(v2 + 1) = 257;
      *(v2 + 14) = *(v15 + 46);
      *(v2 + 18) = v12 + 8;
      v16 = *(v11 + 52);
      *(v2 + 88) = v10 + v16;
      *(v2 + 96) = v10 + v12 + 8;
      *(v2 + 104) = v10;
      *(v2 + 12) = 0;
      *(v2 + 26) = v16 - 1;
      *(v2 + 24) = 0;
      *v2 = 1;
      *(a1 + 40) |= 2u;
      LOBYTE(v16) = *(a1 + 33);
      *(v3 + 52) = 0;
      *(v3 + 54) = 0;
      *(v3 + 55) = v16;
      LOBYTE(v16) = *(a1 + 34);
      *(v3 + 64) = 0;
      *(v3 + 66) = 0;
      *(v3 + 67) = v16;
      *(a1 + 64) = 1;
      *(v3 + 31) = 1;
      return v6;
    }

    v7 = a1;
    v9 = sub_1819360C0(*(v2 + 112));
  }

  else
  {
    v6 = v5[12];
    if (v6)
    {
      return v6;
    }

    v7 = a1;
    v8 = *(v2 + 112);
    if (v5[46] <= v5[50])
    {
      v9 = sub_1818D8DD8(v8);
    }

    else
    {
      v9 = sub_181936438(v8);
    }
  }

  v6 = v9;
  a1 = v7;
  if (!v6)
  {
    goto LABEL_12;
  }

  return v6;
}

void *sub_1818D195C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned int **a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  *v357 = 0;
  v356 = 0;
  v354 = 0u;
  v355 = 0u;
  v353 = 0;
  v12 = *a1;
  if (*(a1 + 52))
  {
    result = sub_1818BB5B0(*a1, a2);
    v14 = 0;
    v15 = 0;
    goto LABEL_51;
  }

  DWORD1(v354) = 0;
  v348 = a5;
  if (a3 && (*(a3 + 5) & 2) != 0 && !*(a3 + 80))
  {
    v17 = *(a3 + 32);
    *(a3 + 32) = 0;
    sub_1818BB408(v12, a3, 1);
    v10 = 0;
    if ((*(a2 + 35) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = *(a2 + 72);
    v20 = *(*a1 + 32);
    if (v19)
    {
      v21 = (v20 + 24);
      v22 = 0xFFFFFFFF00000000;
      do
      {
        v23 = *v21;
        v21 += 4;
        v22 += 0x100000000;
      }

      while (v23 != v19);
      v24 = v22 >> 32;
    }

    else
    {
      v24 = -32768;
    }

    v18 = (v20 + 32 * v24);
    goto LABEL_15;
  }

  v17 = 0;
  if (*(a2 + 35))
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = (a2 + 72);
LABEL_15:
  v31 = sub_1818CA520(a1, 0, *(a2 + 8), *v18, a5, a6, a7, a8);
  v32 = *(a2 + 24);
  if (v32)
  {
    v33 = *a1;
    if (*(*a1 + 824) || (v34 = *(v32 + 44) - 1, (*(v32 + 44) = v34) == 0))
    {
      sub_18194E094(v33, v32);
    }
  }

  *(a2 + 24) = v31;
  *(a2 + 33) |= 0x400u;
  if (!v31)
  {
    goto LABEL_48;
  }

  ++*(v31 + 44);
  if ((*(a2 + 33) & 2) == 0)
  {
    goto LABEL_30;
  }

  v35 = *(v31 + 16);
  if (!v35)
  {
LABEL_29:
    sub_181910730(a1, "no such index: %s", v25, v26, v27, v28, v29, v30, *(a2 + 48));
    v15 = 0;
    v14 = 0;
    *(a1 + 43) |= 8u;
    goto LABEL_49;
  }

LABEL_22:
  v36 = *v35;
  for (i = *(a2 + 48); *v36 != *i; ++i)
  {
    if (byte_181A20298[*v36] != byte_181A20298[*i])
    {
      v35 = *(v35 + 40);
      if (!v35)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_24:
    ++v36;
  }

  if (*v36)
  {
    goto LABEL_24;
  }

  *(a2 + 56) = v35;
LABEL_30:
  v38 = *(v31 + 96);
  v39 = *(v12 + 32);
  if (v38)
  {
    v40 = (v39 + 24);
    LODWORD(v41) = -1;
    do
    {
      v42 = *v40;
      v40 += 4;
      v41 = (v41 + 1);
    }

    while (v42 != v38);
  }

  else
  {
    v41 = 4294934528;
  }

  v43 = *a1;
  v44 = *(*a1 + 528);
  if (v44 && !*(v43 + 197) && !*(a1 + 302))
  {
    v74 = v44(*(v43 + 536), 18, *v31, 0, *(v39 + 32 * v41), *(a1 + 368));
    if (v74 == 1)
    {
      v75 = 23;
      v76 = "not authorized";
    }

    else
    {
      if ((v74 & 0xFFFFFFFD) == 0)
      {
        if (!v74)
        {
          goto LABEL_38;
        }

LABEL_48:
        v15 = 0;
        v14 = 0;
        goto LABEL_49;
      }

      v75 = 1;
      v76 = "authorizer malfunction";
    }

    sub_181910730(a1, v76, v25, v26, v27, v28, v29, v30, v301);
    v15 = 0;
    v14 = 0;
    *(a1 + 24) = v75;
    goto LABEL_49;
  }

LABEL_38:
  v346 = *(v31 + 48);
  if ((*(v31 + 88) || (v46 = *(*(*a1 + 32) + 56)) != 0 && *(v46 + 64)) && !*(a1 + 42))
  {
    v45 = sub_181980B5C(a1, v31, 128, 0, &v353, v28, v29, v30);
  }

  else
  {
    v45 = 0;
    v353 = 0;
  }

  v344 = *(v31 + 63);
  if ((v344 == 1 || *(v31 + 54) <= 0) && sub_181960D84(a1, v31, v25, v26, v27, v28, v29, v30))
  {
    goto LABEL_48;
  }

  if (sub_181980528(a1, v31, v45, v26, v27, v28, v29, v30))
  {
    goto LABEL_48;
  }

  v57 = sub_1818E7DFC(a1, v47, v48, v49, v50, v51, v52, v53);
  if (!v57)
  {
    goto LABEL_48;
  }

  v343 = v31;
  v340 = v17;
  if (!*(a1 + 30))
  {
    *(v57 + 268) |= 0x10u;
  }

  v338 = v45;
  v339 = v57;
  v61 = (v10 | v45) != 0;
  if (*(a1 + 152))
  {
    v62 = *(a1 + 152);
  }

  else
  {
    v62 = a1;
  }

  v63 = *(v62 + 116);
  v64 = 1 << v41;
  if ((v63 & (1 << v41)) == 0)
  {
    *(v62 + 116) = v63 | v64;
    if (v41 == 1)
    {
      sub_1819108F4(v62);
    }
  }

  *(v62 + 112) |= v64;
  *(v62 + 32) |= v61;
  v65 = v343;
  if (!a4 && v10 && !v338 && sub_1818F75F0(a1, v343, v10, v348, v41, v58, v59, v60))
  {
    v72 = 0;
    v15 = 0;
    v14 = 0;
    v17 = v340;
LABEL_80:
    if (!*(a1 + 30) && !*(a1 + 160) && *(a1 + 144))
    {
      v73 = v72;
      sub_18198590C(a1, v72, v66, v67, v68, v69, v70, v71);
      v72 = v73;
    }

    if (v72)
    {
      sub_181980A28(v339, v72, "rows inserted", v67, v68, v69, v70, v71);
    }

    goto LABEL_49;
  }

  v324 = a2 + 8;
  v77 = sub_181987B00(a1, v41, v343);
  v84 = *(a1 + 60);
  v85 = *(v343 + 54);
  v86 = v84 + 1 + v85;
  *(a1 + 60) = v86;
  v323 = v84 + 1;
  v337 = v84 + 1;
  v17 = v340;
  if (*(v343 + 63) == 1)
  {
    v337 = v84 + 2;
    *(a1 + 60) = v86 + 1;
  }

  v322 = v77;
  v87 = (*(v343 + 48) & 0x440) == 0;
  if (a4)
  {
    v329 = (*(v343 + 48) & 0x440) == 0;
    v14 = sub_18190C56C(v12, 4 * v85, 0x100004052888210);
    if (!v14)
    {
      v15 = 0;
      goto LABEL_49;
    }

    v88 = *a4;
    if (*a4 >= 1)
    {
      v89 = 0;
      v90 = a4 + 1;
      v91 = *(v343 + 8);
      v92 = *(v343 + 54);
      v93 = v343 + 104;
      if (v92 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = v92;
      }

      v95 = -1;
      v87 = v329;
      v341 = v14;
      v314 = v94;
      while (1)
      {
        v96 = v90[v89];
        if (v96 && (v97 = *v96) != 0)
        {
          v98 = 0;
          v99 = v96 + 1;
          do
          {
            v98 += byte_181A20298[v97];
            v100 = *v99++;
            v97 = v100;
          }

          while (v100);
        }

        else
        {
          v98 = 0;
        }

        j = *(v93 + (v98 & 0xF));
        v102 = v91 + 16 * j;
        if (*(v102 + 11) != v98)
        {
LABEL_110:
          for (j = 0; j != v94; ++j)
          {
            v105 = v91 + 16 * j;
            if (*(v105 + 11) == v98)
            {
              v106 = *v105;
              for (k = v90[v89]; ; ++k)
              {
                if (*v106 == *k)
                {
                  if (!*v106)
                  {
                    goto LABEL_118;
                  }
                }

                else if (byte_181A20298[*v106] != byte_181A20298[*k])
                {
                  break;
                }

                ++v106;
              }
            }
          }

          v330 = v88;
          if (sub_18191882C(v96) && (v346 & 0x80) == 0)
          {
            v87 = 0;
            v95 = v89;
            v14 = v341;
            v90 = a4 + 1;
            v94 = v314;
            v93 = v343 + 104;
            v88 = v330;
            goto LABEL_126;
          }

          sub_181910730(a1, "table %S has no column named %s", v78, v79, v80, v81, v82, v83, v324);
          v15 = 0;
          *(a1 + 43) |= 8u;
LABEL_253:
          v17 = v340;
          v14 = v341;
          goto LABEL_49;
        }

        v103 = *v102;
        for (m = v90[v89]; *v103 != *m; ++m)
        {
          if (byte_181A20298[*v103] != byte_181A20298[*m])
          {
            goto LABEL_110;
          }

LABEL_106:
          ++v103;
        }

        if (*v103)
        {
          goto LABEL_106;
        }

LABEL_118:
        v14 = v341;
        v108 = j;
        if (!*(v341 + j))
        {
          *(v341 + j) = v89 + 1;
        }

        v109 = v91 + 16 * j;
        if ((*(v109 + 14) & 0x60) != 0)
        {
          sub_181910730(a1, "cannot INSERT into generated column %s", v78, v79, v80, v81, v82, v83, *v109);
          v15 = 0;
          v17 = v340;
          goto LABEL_49;
        }

        if (v108 == *(v343 + 52))
        {
          v95 = v89;
        }

        if (v89 != v108)
        {
          v87 = 0;
        }

        v88 = *a4;
LABEL_126:
        if (++v89 >= v88)
        {
          v17 = v340;
          v65 = v343;
          goto LABEL_139;
        }
      }
    }

    v95 = -1;
    v87 = v329;
  }

  else
  {
    v14 = 0;
    v95 = -1;
  }

LABEL_139:
  v110 = v337 + 1;
  if (!v10)
  {
    v352 = 0u;
    v351 = 0u;
    v350 = 0u;
    v349 = a1;
    if (v17)
    {
      v123 = v95;
      v316 = *v17;
      if (sub_18195EDEC(&v349, v17, v78, v79, v80, v81, v82, v83))
      {
        sub_1818BB5B0(v12, a2);
        v15 = 0;
        goto LABEL_50;
      }

      v95 = v123;
      v110 = v337 + 1;
      v124 = v316;
    }

    else
    {
      v124 = 0;
    }

    v310 = 0;
    v311 = 1;
    v313 = -1;
    goto LABEL_181;
  }

  v331 = v87;
  v327 = v337 + 1;
  v320 = v95;
  v111 = *(v10 + 40);
  v342 = v14;
  if (*v111 == 1 && (*(v111 + 33) & 0x40) != 0 && !*(v10 + 80))
  {
    v129 = (v111 + 8);
    v130 = *(v111 + 72);
    v310 = v130[4];
    DWORD1(v354) = v130[3];
    v317 = **(*v130 + 32);
    sub_18195AD8C(a1, 0, "SCAN %S", v129);
    if (v331 && v317 == *(v65 + 54))
    {
      v337 = v310 - 1;
      v323 = v310 - 1 - (*(v65 + 63) == 1);
      v327 = v310;
    }
  }

  else
  {
    v112 = (*(a1 + 60) + 1);
    *(a1 + 60) = v112;
    v315 = *(v339 + 144);
    sub_1818A2964(v339, 11, v112, 0, (v315 + 1), v81, v82, v83);
    LOBYTE(v354) = 13;
    *(&v354 + 4) = v112;
    *(&v355 + 1) = 0;
    v118 = v337 + 1;
    if (!v331)
    {
      v118 = 0;
    }

    v119 = *(v65 + 54);
    HIDWORD(v354) = v118;
    LODWORD(v355) = v119;
    if (sub_1818A9A10(a1, v10, &v354, v113, v114, v115, v116, v117) || *(a1 + 52))
    {
      v15 = 0;
      v14 = v342;
      goto LABEL_49;
    }

    v310 = HIDWORD(v354);
    sub_1818A2964(v339, 68, v112, 0, 0, v120, v121, v122);
    v127 = *(v339 + 24);
    *(v127 + 31) = 0;
    *(v127 + 44) = 0;
    if (*(*v339 + 103))
    {
      v128 = &byte_1EA831A58;
    }

    else
    {
      v128 = (*(v339 + 136) + 40 * v315);
    }

    v14 = v342;
    v65 = v343;
    *(v128 + 2) = *(v339 + 144);
    v317 = **(v10 + 32);
  }

  if (v338 || sub_181987C40(a1, v41, v65, v125, v126, v81, v82, v83))
  {
    v313 = *(a1 + 56);
    *(a1 + 56) = v313 + 1;
    v131 = *(a1 + 31);
    if (v131)
    {
      *(a1 + 31) = v131 - 1;
      v132 = *(a1 + 184 + 4 * (v131 - 1));
      if (v131 != 1)
      {
        v332 = *(a1 + 184 + 4 * (v131 - 1));
        v133 = v131 - 2;
        *(a1 + 31) = v133;
        v307 = *(a1 + 184 + 4 * v133);
        goto LABEL_170;
      }

      v134 = *(a1 + 60);
    }

    else
    {
      v134 = *(a1 + 60) + 1;
      v132 = v134;
    }

    v332 = v132;
    v307 = v134 + 1;
    *(a1 + 60) = v134 + 1;
LABEL_170:
    sub_1818A2964(v339, 117, v313, v317, 0, v81, v82, v83);
    v312 = sub_1818A2964(v339, 12, DWORD1(v354), 0, 0, v135, v136, v137);
    sub_1818A2964(v339, 97, v310, v317, v332, v138, v139, v140);
    sub_1818A2964(v339, 127, v313, v307, 0, v141, v142, v143);
    sub_1818A2964(v339, 128, v313, v332, v307, v144, v145, v146);
    sub_1818A2964(v339, 9, 0, v312, 0, v147, v148, v149);
    if (*(*v339 + 103))
    {
      v150 = &byte_1EA831A58;
    }

    else
    {
      v150 = (*(v339 + 136) + 40 * v312);
    }

    v14 = v342;
    v65 = v343;
    v95 = v320;
    *(v150 + 2) = *(v339 + 144);
    if (v332)
    {
      v151 = *(a1 + 31);
      if (v151 <= 7)
      {
        *(a1 + 31) = v151 + 1;
        *(a1 + 4 * v151 + 184) = v332;
      }
    }

    if (v307 && (v152 = *(a1 + 31), v152 <= 7))
    {
      v311 = 0;
      *(a1 + 31) = v152 + 1;
      *(a1 + 4 * v152 + 184) = v307;
    }

    else
    {
      v311 = 0;
    }
  }

  else
  {
    v311 = 1;
    v313 = 0;
    v95 = v320;
  }

  v110 = v327;
  v124 = v317;
LABEL_181:
  v328 = v110;
  if (!a4 && v124 >= 1)
  {
    v153 = *(v65 + 52);
    v154 = *(v65 + 48);
    if ((v153 & 0x80000000) == 0 && *(v65 + 52) && (v154 & 0x60) != 0)
    {
      v155 = *(v65 + 8);
      if (v153 < 2)
      {
        v156 = *(v65 + 52);
        goto LABEL_192;
      }

      v157 = 0;
      v156 = *(v65 + 52) & 1;
      v158 = (v155 + 16 * v153 - 2);
      v159 = *(v65 + 52) & 0x7FFE;
      v160 = *(v65 + 52);
      do
      {
        v160 -= (*v158 & 0x60) != 0;
        v157 -= (*(v158 - 8) & 0x60) != 0;
        v158 -= 16;
        v159 -= 2;
      }

      while (v159);
      v95 = v157 + v160;
      v161 = (*(v65 + 52) & 0x7FFE) == v153;
      LODWORD(v153) = v157 + v160;
      if (!v161)
      {
LABEL_192:
        v162 = v156 + 1;
        v163 = (v155 + 16 * v156 - 2);
        v95 = v153;
        do
        {
          v164 = *v163;
          v163 -= 8;
          v95 -= (v164 & 0x60) != 0;
          --v162;
        }

        while (v162 > 1);
      }
    }

    else
    {
      v95 = *(v65 + 52);
    }

    v165 = 0;
    v166 = *(v65 + 54);
    if ((v154 & 0x62) != 0 && v166 >= 1)
    {
      v167 = *(v65 + 8);
      if (v166 < 5)
      {
        v168 = 0;
        v165 = 0;
        goto LABEL_210;
      }

      if (v166 < 0x11)
      {
        v165 = 0;
        v168 = 0;
        goto LABEL_205;
      }

      v169 = 16;
      if ((*(v65 + 54) & 0xF) != 0)
      {
        v169 = *(v65 + 54) & 0xF;
      }

      v168 = v166 - v169;
      v170 = (v167 + 142);
      v171 = 0uLL;
      v172.i64[0] = 0x62006200620062;
      v172.i64[1] = 0x62006200620062;
      v173.i64[0] = 0x100000001;
      v173.i64[1] = 0x100000001;
      v174 = *(v65 + 54);
      v175 = 0uLL;
      v176 = 0uLL;
      v177 = 0uLL;
      do
      {
        v78 = (v170 - 8);
        v79 = (v170 + 8);
        v80 = (v170 + 16);
        v81 = (v170 + 24);
        v82 = (v170 + 32);
        v83 = (v170 + 40);
        v178.i16[0] = *(v170 - 64);
        v178.i16[1] = *(v170 - 56);
        v178.i16[2] = *(v170 - 48);
        v178.i16[3] = *(v170 - 40);
        v178.i16[4] = *(v170 - 32);
        v178.i16[5] = *(v170 - 24);
        v178.i16[6] = *(v170 - 16);
        v178.i16[7] = *(v170 - 8);
        v179.i16[0] = *v170;
        v179.i16[1] = v170[8];
        v179.i16[2] = v170[16];
        v179.i16[3] = v170[24];
        v179.i16[4] = v170[32];
        v179.i16[5] = v170[40];
        v179.i16[6] = v170[48];
        v179.i16[7] = v170[56];
        v180 = vtstq_s16(v178, v172);
        v181 = vtstq_s16(v179, v172);
        v175 = vaddq_s32(v175, vandq_s8(vmovl_high_u16(v180), v173));
        v171 = vaddq_s32(v171, vandq_s8(vmovl_u16(*v180.i8), v173));
        v177 = vaddq_s32(v177, vandq_s8(vmovl_high_u16(v181), v173));
        v176 = vaddq_s32(v176, vandq_s8(vmovl_u16(*v181.i8), v173));
        v174 -= 16;
        v170 += 128;
      }

      while (v169 != v174);
      v165 = vaddvq_s32(vaddq_s32(vaddq_s32(v176, v171), vaddq_s32(v177, v175)));
      v65 = v343;
      if (v169 >= 5)
      {
LABEL_205:
        v182 = v166 & 3;
        if ((v166 & 3) == 0)
        {
          v182 = 4;
        }

        v183 = v167 + 16 * v168;
        v184 = v182 + v168;
        v168 = v166 - v182;
        v185 = v165;
        v186 = (v183 + 46);
        v187 = v184 - v166;
        v188.i64[0] = 0x100000001;
        v188.i64[1] = 0x100000001;
        do
        {
          v189.i16[0] = *(v186 - 16);
          v189.i16[1] = *(v186 - 8);
          v189.i16[2] = *v186;
          v189.i16[3] = v186[8];
          v185 = vaddq_s32(v185, vandq_s8(vmovl_u16(vtst_s16(v189, 0x62006200620062)), v188));
          v186 += 32;
          v187 += 4;
        }

        while (v187);
        v165 = vaddvq_s32(v185);
      }

LABEL_210:
      v190 = (v167 + 16 * v168 + 14);
      v191 = v166 - v168;
      do
      {
        v192 = *v190;
        v190 += 8;
        if ((v192 & 0x62) != 0)
        {
          ++v165;
        }

        --v191;
      }

      while (v191);
    }

    if (v124 != v166 - v165)
    {
      sub_181910730(a1, "table %S has %d columns but %d values were supplied", v78, v79, v80, v81, v82, v83, v324);
LABEL_231:
      v15 = 0;
      goto LABEL_49;
    }
  }

  if (a4 && v124 != *a4)
  {
    sub_181910730(a1, "%d values for %d columns", v78, v79, v80, v81, v82, v83, v124);
    goto LABEL_231;
  }

  v321 = v95;
  if ((*(v12 + 52) & 1) == 0 || *(a1 + 30) || *(a1 + 160) || *(a1 + 40))
  {
    v306 = 0;
  }

  else
  {
    v281 = *(a1 + 60);
    v282 = (v281 + 1);
    *(a1 + 60) = v282;
    v306 = v281 + 1;
    sub_1818A2964(v339, 71, 0, v282, 0, v81, v82, v83);
  }

  v318 = v124;
  v341 = v14;
  if (v344 == 2)
  {
    v15 = 0;
  }

  else
  {
    v193 = sub_1818D348C(a1, v65, 113, 0, 0xFFFFFFFFuLL, 0, &v357[1], v357);
    v194 = sub_181929E8C(v12, 4 * v193 + 8, 0x100004052888210);
    v15 = v194;
    if (!v194)
    {
      v14 = v341;
      goto LABEL_49;
    }

    v195 = *(a1 + 60);
    if (v193 < 1)
    {
      v197 = 0;
    }

    else
    {
      v196 = (v65 + 16);
      v197 = v193;
      v198 = v193;
      v199 = v194;
      do
      {
        v200 = *v196;
        v201 = v195 + 1;
        *(a1 + 60) = v201;
        *v199++ = v201;
        v195 = *(a1 + 60) + *(v200 + 96);
        *(a1 + 60) = v195;
        v196 = (v200 + 40);
        --v198;
      }

      while (v198);
    }

    v202 = v195 + 1;
    *(a1 + 60) = v202;
    *(v194 + 4 * v197) = v202;
  }

  if (!a6)
  {
LABEL_246:
    if (v311)
    {
      v17 = v340;
      v207 = v343;
      if (v10)
      {
        v208 = sub_1818A2964(v339, 12, DWORD1(v354), 0, 0, v81, v82, v83);
        v304 = v208;
        if ((v321 & 0x80000000) != 0)
        {
          v305 = v208;
        }

        else
        {
          v210 = v208;
          sub_1818A2964(v339, 80, v321 + v310, v337, 0, v81, v82, v209);
          v305 = v210;
        }
      }

      else
      {
        v304 = 0;
        v305 = 0;
      }

      v211 = v348;
    }

    else
    {
      v304 = sub_1818A2964(v339, 36, v313, 0, 0, v81, v82, v83);
      v305 = *(v339 + 144);
      v211 = v348;
      v17 = v340;
      v207 = v343;
    }

    LODWORD(v212) = *(v207 + 54);
    if (v212 >= 1)
    {
      v213 = 0;
      v214 = 0;
      v325 = 0;
      v303 = v17 + 2;
      v215 = v328;
      do
      {
        if (v214 == *(v207 + 52))
        {
          goto LABEL_259;
        }

        v219 = *(v207 + 8);
        v220 = *(v219 + v213 + 14);
        if ((v220 & 0x62) != 0)
        {
          ++v325;
          if ((v220 & 0x20) != 0)
          {
            LODWORD(v215) = v215 - 1;
            goto LABEL_260;
          }

          if ((v220 & 0x40) != 0)
          {
            if ((v353 & 1) == 0)
            {
              goto LABEL_260;
            }

LABEL_259:
            v333 = v215;
            v216 = v214;
            v217 = v207;
            v218 = v213;
            sub_1818A2964(v339, 76, v215, 0, 0, v81, v82, v211);
            LODWORD(v215) = v333;
            v213 = v218;
            v207 = v217;
            v214 = v216;
            v17 = v340;
            v211 = v348;
            goto LABEL_260;
          }

          if (!a4)
          {
            v221 = *(v219 + v213 + 12);
            v308 = v213;
            if (!v221)
            {
              goto LABEL_294;
            }

            if (*(v207 + 63))
            {
              goto LABEL_294;
            }

            v222 = *(v207 + 80);
            if (!v222)
            {
              goto LABEL_294;
            }

            goto LABEL_305;
          }
        }

        else if (!a4)
        {
          if (!v318)
          {
            v221 = *(v219 + v213 + 12);
            v308 = v213;
            if (!v221 || *(v207 + 63))
            {
LABEL_294:
              v227 = 0;
              goto LABEL_295;
            }

            v222 = *(v207 + 80);
            if (v222)
            {
LABEL_305:
              if (*v222 < v221)
              {
                goto LABEL_306;
              }

              v227 = *&v222[6 * (v221 - 1) + 2];
            }

            else
            {
LABEL_306:
              v227 = 0;
            }

            v17 = v340;
            v207 = v343;
LABEL_295:
            v334 = v215;
            v228 = a1;
            v229 = v215;
LABEL_296:
            sub_18195CD44(v228, v227, v229);
            goto LABEL_297;
          }

          v224 = (v214 - v325);
          goto LABEL_278;
        }

        v223 = *(v341 + v214);
        if (!v223)
        {
          v226 = *(v219 + v213 + 12);
          v308 = v213;
          if (v226 && !*(v207 + 63) && (v234 = *(v207 + 80)) != 0 && *v234 >= v226)
          {
            v227 = *&v234[6 * (v226 - 1) + 2];
          }

          else
          {
            v227 = 0;
          }

          v228 = a1;
          v229 = v215;
          v334 = v215;
          goto LABEL_296;
        }

        v224 = (v223 - 1);
LABEL_278:
        if ((v311 & 1) == 0)
        {
          v225 = v215;
          v309 = v213;
          sub_1818A2964(v339, 94, v313, v224, v215, v81, v82, v211);
          LODWORD(v215) = v225;
          v213 = v309;
LABEL_300:
          v211 = v348;
          v207 = v343;
          goto LABEL_260;
        }

        if (!v10)
        {
          v308 = v213;
          v302 = *&v303[6 * v224];
          v334 = v215;
          v230 = sub_1818B8080(a1, v302, v215, v224, v80, v81, v82, v211);
          LODWORD(v215) = v334;
          v207 = v343;
          if (v230 != v334)
          {
            if ((*(v302 + 4) & 0x400000) != 0)
            {
              v232 = 80;
            }

            else
            {
              v232 = 81;
            }

            sub_1818A2964(v339, v232, v230, v334, 0, v81, v82, v231);
LABEL_297:
            LODWORD(v215) = v334;
          }

          v211 = v348;
          v213 = v308;
          goto LABEL_260;
        }

        if (v310 != v328)
        {
          v335 = v215;
          v233 = v213;
          sub_1818A2964(v339, 81, v224 + v310, v215, 0, v81, v82, v211);
          LODWORD(v215) = v335;
          v213 = v233;
          goto LABEL_300;
        }

        v207 = v343;
LABEL_260:
        ++v214;
        v215 = (v215 + 1);
        v212 = *(v207 + 54);
        v213 += 16;
      }

      while (v214 < v212);
    }

    v326 = *(a1 + 72) - 1;
    *(a1 + 72) = v326;
    v14 = v341;
    if (v353)
    {
      v238 = sub_18195883C(a1, v212 + 1);
      v336 = v238;
      if ((v321 & 0x80000000) != 0)
      {
        v243 = v339;
        v244 = 71;
        v245 = 0xFFFFFFFFLL;
        v246 = v238;
      }

      else
      {
        if (v311)
        {
          sub_181956EF4(a1, *&v17[6 * v321 + 2], v238);
          v242 = v339;
        }

        else
        {
          v242 = v339;
          sub_1818A2964(v339, 94, v313, v321, v238, v235, v236, v237);
        }

        v319 = sub_1818A2964(v242, 52, v336, 0, 0, v239, v240, v241);
        sub_1818A2964(v242, 71, 0xFFFFFFFFuLL, v336, 0, v247, v248, v249);
        v250 = v242[36];
        if (*(*v242 + 103))
        {
          v251 = &byte_1EA831A58;
        }

        else
        {
          v251 = (*(v339 + 136) + 40 * v319);
        }

        v14 = v341;
        *(v251 + 2) = v250;
        v243 = v339;
        v244 = 13;
        v245 = v336;
        v246 = 0;
      }

      sub_1818A2964(v243, v244, v245, v246, 0, v235, v236, v237);
      sub_1818A2964(v339, 80, v337 + 1, v336 + 1, (*(v207 + 56) - 1), v252, v253, v254);
      if ((*(v207 + 48) & 0x60) != 0)
      {
        sub_181986E24(a1, v336 + 1, v207, v255, v256, v257, v258, v259);
      }

      if (v344 != 2)
      {
        sub_18195E17C(v339, v207, v336 + 1, v255, v256, v257, v258, v259);
      }

      sub_1819813E4(a1, v338, 128, 0, 1, v207, v336 + ~*(v207 + 54), v348, v326);
      v260 = *(v207 + 54);
      if (*(v207 + 54))
      {
        v211 = v348;
        if (*(a1 + 44) <= v260)
        {
          *(a1 + 44) = v260 + 1;
          *(a1 + 48) = v336;
        }
      }

      else
      {
        v211 = v348;
        if (v336)
        {
          v261 = *(a1 + 31);
          if (v261 <= 7)
          {
            *(a1 + 31) = v261 + 1;
            *(a1 + 4 * v261 + 184) = v336;
          }
        }
      }
    }

    if (v344 == 2)
    {
LABEL_375:
      if (v306)
      {
        sub_1818A2964(v339, 86, v306, 1, 0, v81, v82, v211);
        v211 = v348;
      }

      v295 = v326;
      if (v338)
      {
        sub_1819813E4(a1, v338, 128, 0, 2, v207, v328 - *(v207 + 54) - 2, v211, v326);
        v295 = v326;
      }

      sub_181958CD8(v339, v295);
      if (v311)
      {
        if (v10)
        {
          sub_1818A2964(v339, 9, 0, v305, 0, v69, v70, v71);
          if (*(*v339 + 103))
          {
            v296 = &byte_1EA831A58;
          }

          else
          {
            v296 = (*(v339 + 136) + 40 * v304);
          }

          v72 = v306;
          *(v296 + 2) = *(v339 + 144);
        }

        else
        {
          v72 = v306;
        }
      }

      else
      {
        sub_1818A2964(v339, 39, v313, v305, 0, v69, v70, v71);
        if (*(*v339 + 103))
        {
          v300 = &byte_1EA831A58;
        }

        else
        {
          v300 = (*(v339 + 136) + 40 * v304);
        }

        *(v300 + 2) = *(v339 + 144);
        sub_1818A2964(v339, 122, v313, 0, 0, v297, v298, v299);
        v72 = v306;
      }

      goto LABEL_80;
    }

    v262 = v339;
    if (*(v207 + 63) == 1)
    {
      sub_1818A2964(v339, 75, 0, v323, 0, v81, v82, v211);
    }

    if ((v321 & 0x80000000) != 0)
    {
      if (*(v207 + 63) != 1 && (v346 & 0x80) == 0)
      {
        sub_1818A2964(v339, 127, v357[1], v337, v322, v81, v82, v211);
        v269 = v322;
        v270 = 1;
        if (v322 < 1)
        {
          goto LABEL_354;
        }

        goto LABEL_353;
      }

      v277 = v339;
      v278 = 75;
      v279 = 0;
      v280 = v337;
    }

    else
    {
      if (v311)
      {
        if (!v10)
        {
          v263 = *&v17[6 * v321 + 2];
          if (*v263 == 122 && *(v343 + 63) != 1)
          {
            sub_1818A2964(v339, 127, v357[1], v337, v322, v81, v82, v211);
            v269 = v322;
            v270 = 1;
            v17 = v340;
            v207 = v343;
            if (v322 < 1)
            {
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          sub_181956EF4(a1, v263, v337);
          v262 = v339;
          v17 = v340;
          v207 = v343;
        }
      }

      else
      {
        sub_1818A2964(v339, 94, v313, v321, v337, v81, v82, v211);
      }

      if (*(v207 + 63) == 1)
      {
        sub_1818A2964(v262, 51, v337, (*(v262 + 144) + 2), 0, v81, v82, v211);
      }

      else
      {
        v271 = v262;
        v272 = sub_1818A2964(v262, 52, v337, 0, 0, v81, v82, v211);
        sub_1818A2964(v271, 127, v357[1], v337, v322, v273, v274, v275);
        if (*(*v271 + 103))
        {
          v276 = &byte_1EA831A58;
        }

        else
        {
          v276 = (*(v339 + 136) + 40 * v272);
        }

        *(v276 + 2) = v271[36];
        v262 = v339;
        v17 = v340;
        v207 = v343;
      }

      v277 = v262;
      v278 = 13;
      v279 = v337;
      v280 = 0;
    }

    sub_1818A2964(v277, v278, v279, v280, 0, v81, v82, v211);
    v270 = 0;
    v269 = v322;
    if (v322 < 1)
    {
LABEL_354:
      if ((*(v207 + 48) & 0x60) != 0)
      {
        sub_181986E24(a1, v337 + 1, v207, v264, v265, v266, v267, v268);
      }

      if (*(v207 + 63) == 1)
      {
        for (n = *(v207 + 80); n; n = n[5])
        {
          if (*n == v12)
          {
            break;
          }
        }

        sub_181980924(a1, v207);
        v287 = sub_1818A2964(v339, 7, 1uLL, (*(v207 + 54) + 2), v323, v284, v285, v286);
        sub_1818B49F8(v339, v287, n, 0xFFFFFFF5);
        v288 = *(v339 + 144);
        v211 = v348;
        if (v288 >= 1)
        {
          if (v348 == 11)
          {
            v289 = 2;
          }

          else
          {
            v289 = v348;
          }

          *(*(v339 + 136) + 40 * v288 - 38) = v289;
        }

        v290 = *(a1 + 152);
        if (!v290)
        {
          v290 = a1;
        }

        *(v290 + 33) = 1;
        v14 = v341;
        v207 = v343;
      }

      else
      {
        v347 = v270;
        LODWORD(v349) = 0;
        v291 = v357[1];
        v345 = v357[0];
        sub_1818D3738(a1, v207, v15, v357[1], v357[0], v323, 0, (v321 & 0x80000000) == 0, v348, v326, &v349, 0, a6);
        if ((*(v12 + 49) & 0x40) != 0)
        {
          sub_1818D7680(a1, v207, 0, v323, 0, 0, v292, v293);
        }

        if (v349)
        {
          v294 = *(v339 + 376) == 0;
        }

        else
        {
          v294 = 1;
        }

        sub_1818D80A8(a1, v207, v291, v345, v323, v15, 0, v347, v294);
        v211 = v348;
        v14 = v341;
      }

      goto LABEL_375;
    }

LABEL_353:
    sub_1818A2964(*(a1 + 16), 159, v269, v337, 0, v266, v267, v268);
    goto LABEL_354;
  }

  v14 = v341;
  v203 = *(v343 + 63);
  v17 = v340;
  if (v203 == 2)
  {
    sub_181910730(a1, "cannot UPSERT a view", v78, v79, v80, v81, v82, v83, v301);
  }

  else if (v203 == 1)
  {
    sub_181910730(a1, "UPSERT not implemented for virtual table %s", v78, v79, v80, v81, v82, v83, *v343);
  }

  else if (!sub_181962290(a1, *a6, v78, v79, v80, v81, v82, v83))
  {
    v205 = v357[0];
    v204 = v357[1];
    *(a2 + 36) = v357[1];
    v206 = a6;
    while (1)
    {
      v206[8] = a2;
      *(v206 + 18) = v328;
      *(v206 + 19) = v204;
      *(v206 + 20) = v205;
      if (*v206)
      {
        if (sub_181987D5C(a1, a2, v206, a6, v80, v81, v82, v83))
        {
          goto LABEL_253;
        }
      }

      v206 = v206[4];
      if (!v206)
      {
        goto LABEL_246;
      }
    }
  }

LABEL_49:
  result = sub_1818BB5B0(v12, a2);
  if (v17)
  {
LABEL_50:
    result = sub_18194E5B8(v12, v17);
  }

LABEL_51:
  if (a6)
  {
    result = sub_18194E51C(v12, a6);
  }

  if (v10)
  {
    result = sub_1818BB408(v12, v10, 1);
  }

  if (a4)
  {
    v54 = *a4;
    if (*a4 >= 1)
    {
      v55 = 0;
      do
      {
        v56 = a4[v55 + 1];
        if (v56)
        {
          sub_181929C84(v12, v56);
          v54 = *a4;
        }

        ++v55;
      }

      while (v55 < v54);
    }

    result = sub_181939EC8(v12, a4);
    if (v14)
    {
      result = sub_181929C84(v12, v14);
    }
  }

  if (v15)
  {
    return sub_181939EC8(v12, v15);
  }

  return result;
}

uint64_t sub_1818D348C(uint64_t a1, uint64_t a2, int a3, __int16 a4, unint64_t a5, _BYTE *a6, _DWORD *a7, _DWORD *a8)
{
  v34 = a3;
  if (*(a2 + 63) == 1)
  {
    v8 = 0;
    *a8 = -999;
    *a7 = -999;
    return v8;
  }

  v12 = *a1;
  v13 = *(a2 + 96);
  if (!v13)
  {
    v15 = 4294934528;
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_38:
    a5 = *(a1 + 56);
    goto LABEL_7;
  }

  v14 = (*(v12 + 32) + 24);
  LODWORD(v15) = -1;
  do
  {
    v16 = *v14;
    v14 += 4;
    v15 = (v15 + 1);
  }

  while (v16 != v13);
  if ((a5 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_7:
  v17 = *(a1 + 16);
  v18 = (a5 + 1);
  *a7 = a5;
  if ((*(a2 + 48) & 0x80) != 0 || a6 && !*a6)
  {
    if (*(v12 + 111) || v15 == 1 || !*(*(*(v12 + 32) + 32 * v15 + 8) + 17))
    {
      goto LABEL_16;
    }

    v19 = a8;
    v20 = a7;
    sub_1819570CC(a1, v15, *(a2 + 40), a3 == 113, *a2);
  }

  else
  {
    v19 = a8;
    v20 = a7;
    sub_1818B69D8(a1, a5, v15, a2, a3, a6, a7, a8);
  }

  a7 = v20;
  a8 = v19;
LABEL_16:
  *a8 = v18;
  v21 = *(a2 + 16);
  if (v21)
  {
    v32 = a7;
    v8 = 0;
    do
    {
      v22 = v18 + v8;
      if ((*(v21 + 99) & 3) == 2 && (*(a2 + 48) & 0x80) != 0)
      {
        a4 = 0;
        *v32 = v22;
      }

      if (!a6 || a6[v8 + 1])
      {
        v23 = *(v21 + 88);
        v24 = *(v17 + 144);
        if (*(v17 + 148) <= v24)
        {
          sub_18194C8AC(v17, v34, v22, v23, v15, a6, a7, a8);
        }

        else
        {
          *(v17 + 144) = v24 + 1;
          v25 = *(v17 + 136) + 40 * v24;
          *v25 = v34;
          *(v25 + 2) = 0;
          *(v25 + 4) = v22;
          *(v25 + 8) = v23;
          *(v25 + 12) = v15;
          *(v25 + 1) = 0;
          *(v25 + 24) = 0;
          *(v25 + 32) = 0;
          *(v25 + 16) = 0;
        }

        v26 = *(a1 + 16);
        v27 = sub_1819572CC(a1, v21);
        if (v27)
        {
          if (*(*v26 + 103))
          {
            if (!*(*v26 + 824) && (*v27)-- == 1)
            {
              sub_181939EC8(*(v27 + 16), v27);
            }
          }

          else
          {
            v29 = *(v26 + 136) + 40 * *(v26 + 144);
            *(v29 - 39) = -8;
            *(v29 - 24) = v27;
          }
        }

        v30 = *(v17 + 144);
        if (v30 >= 1)
        {
          *(*(v17 + 136) + 40 * v30 - 38) = a4;
        }
      }

      ++v8;
      v21 = *(v21 + 40);
    }

    while (v21);
    LODWORD(v18) = v18 + v8;
  }

  else
  {
    v8 = 0;
  }

  if (v18 > *(a1 + 56))
  {
    *(a1 + 56) = v18;
  }

  return v8;
}

void sub_1818D3738(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, unsigned __int8 a9, unsigned int a10, int *a11, uint64_t a12, uint64_t a13)
{
  v337 = a8;
  v339 = a7;
  v13 = a6;
  v327 = a5;
  v320 = a4;
  v341 = a3;
  v14 = a2;
  v15 = a12;
  v345 = *a1;
  v16 = *(a1 + 16);
  v17 = *(a2 + 48);
  if ((v17 & 0x80) != 0)
  {
    v19 = a2 + 16;
    do
    {
      v20 = *v19;
      v21 = *(*v19 + 99) & 3;
      v19 = *v19 + 40;
    }

    while (v21 != 2);
    v353 = v20;
    v18 = *(v20 + 94);
  }

  else
  {
    v353 = 0;
    v18 = 1;
  }

  v330 = v18;
  v356 = a9;
  v354 = a2;
  v359 = *(a1 + 16);
  v344 = a6;
  if ((v17 & 0x800) != 0)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = *(a2 + 54);
    v351 = a6 + 1;
    v45.i64[0] = 0x1000100010001;
    v45.i64[1] = 0x1000100010001;
    v46 = 1;
    while (1)
    {
      v357 = v42;
      if (v44 >= 1)
      {
        break;
      }

LABEL_145:
      v42 = v357;
      v13 = v344;
      if (v41 & 1 | ((v43 | v357) == 0))
      {
        goto LABEL_7;
      }

      v46 = 0;
      v41 = 1;
      if (v357 >= 1)
      {
        v46 = 0;
        if ((*(v14 + 48) & 0x60) != 0)
        {
          sub_181986E24(a1, v351, v14, a4, a5, a6, a7, a8);
          v45.i64[0] = 0x1000100010001;
          v45.i64[1] = 0x1000100010001;
          v46 = 0;
        }
      }
    }

    v348 = v46;
    v47 = 0;
    v48 = 0;
    while (1)
    {
      v49 = *(v14 + 8);
      v50 = v49 + 16 * v48;
      v51 = *(v50 + 8) & 0xF;
      if ((*(v50 + 8) & 0xF) == 0 || v48 == *(v14 + 52))
      {
        goto LABEL_61;
      }

      if (!(v41 & 1 | ((*(v50 + 14) & 0x60) == 0)))
      {
        ++v43;
        goto LABEL_61;
      }

      if (v15 && (*(v50 + 14) & 0x60) == 0 && (*(v15 + 4 * v48) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      if (v51 == 11)
      {
        v51 = 2;
      }

      v52 = a9 == 11 ? v51 : a9;
      if (v52 == 5)
      {
        v52 = (v41 & 1) != 0 || !*(v50 + 12) ? 2 : 5;
      }

      else if ((((*(v50 + 14) & 0x60) == 0) & ~v348) != 0)
      {
        v16 = v359;
        goto LABEL_61;
      }

      v53 = v48;
      if ((v48 & 0x8000) == 0 && (*(v14 + 48) & 0x20) != 0)
      {
        break;
      }

LABEL_104:
      v74 = v351 + v53;
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          goto LABEL_115;
        }

        if (v52 == 5)
        {
          v76 = *(v359 + 36);
          if (*(v359 + 37) <= v76)
          {
            v86 = sub_18194C8AC(v359, 52, v351 + v53, 0, 0, a6, a7, a8);
            v45.i64[0] = 0x1000100010001;
            v45.i64[1] = 0x1000100010001;
            v76 = v86;
            v78 = *(v50 + 12);
            if (!*(v50 + 12))
            {
              goto LABEL_131;
            }
          }

          else
          {
            *(v359 + 36) = v76 + 1;
            v77 = &v359[17][5 * v76];
            *v77 = 52;
            *(v77 + 4) = v74;
            *(v77 + 8) = 0u;
            *(v77 + 24) = 0u;
            v78 = *(v50 + 12);
            if (!*(v50 + 12))
            {
              goto LABEL_131;
            }
          }

          if (*(v14 + 63) || (v90 = *(v14 + 80)) == 0 || *v90 < v78)
          {
LABEL_131:
            v87 = 0;
            v88 = *a1;
          }

          else
          {
            a2 = *&v90[6 * (v78 - 1) + 2];
            v88 = *a1;
            if (a2)
            {
              v91 = sub_1818C7FEC(*a1, a2, 0, 0);
              v45.i64[0] = 0x1000100010001;
              v45.i64[1] = 0x1000100010001;
              v87 = v91;
            }

            else
            {
              v87 = 0;
            }
          }

          if (*(v88 + 103))
          {
            if (v87)
            {
              goto LABEL_134;
            }
          }

          else
          {
            sub_181956EF4(a1, v87, v74);
            v45.i64[0] = 0x1000100010001;
            v45.i64[1] = 0x1000100010001;
            if (v87)
            {
LABEL_134:
              sub_1819439E0(v88, v87);
              v45.i64[0] = 0x1000100010001;
              v45.i64[1] = 0x1000100010001;
            }
          }

          v89 = &byte_1EA831A58;
          v15 = a12;
          if (!*(*v359 + 103))
          {
            v89 = &v359[17][5 * v76];
          }

          ++v357;
          *(v89 + 2) = *(v359 + 36);
          v14 = v354;
          v16 = v359;
          goto LABEL_61;
        }
      }

      else
      {
        if (v52 == 1)
        {
          goto LABEL_115;
        }

        if (v52 == 2)
        {
          v75 = *(a1 + 152);
          if (!v75)
          {
            v75 = a1;
          }

          *(v75 + 33) = 1;
LABEL_115:
          v79 = sub_1818A8BAC(v345, "%s.%s", a3, a4, a5, a6, a7, a8, *v14);
          v80 = *(v359 + 36);
          if (*(v359 + 37) <= v80)
          {
            sub_18194C8AC(v359, 69, 0x513uLL, v52, v74, a6, a7, a8);
          }

          else
          {
            *(v359 + 36) = v80 + 1;
            v81 = &v359[17][5 * v80];
            *v81 = 0x51300000045;
            *(v81 + 8) = v52;
            *(v81 + 12) = v74;
            *(v81 + 24) = 0;
            *(v81 + 32) = 0;
            *(v81 + 16) = 0;
          }

          v16 = v359;
          v15 = a12;
          v45.i64[0] = 0x1000100010001;
          v45.i64[1] = 0x1000100010001;
          if (*(*v359 + 103))
          {
            if (v79)
            {
              sub_181939EC8(*v359, v79);
              v45.i64[0] = 0x1000100010001;
              v45.i64[1] = 0x1000100010001;
            }
          }

          else
          {
            v82 = &v359[17][5 * *(v359 + 36)];
            *(v82 - 39) = -6;
            *(v82 - 24) = v79;
          }

          v83 = *(v359 + 36);
          if (v83 >= 1)
          {
            *(&v359[17][5 * v83 - 4] - 3) = 1;
          }

          v14 = v354;
          goto LABEL_61;
        }
      }

      v16 = v359;
      v84 = *(v359 + 36);
      if (*(v359 + 37) <= v84)
      {
        sub_18194C8AC(v359, 51, v74, a10, 0, a6, a7, a8);
        v45.i64[0] = 0x1000100010001;
        v45.i64[1] = 0x1000100010001;
      }

      else
      {
        *(v359 + 36) = v84 + 1;
        v85 = &v359[17][5 * v84];
        *v85 = 51;
        *(v85 + 4) = v74;
        *(v85 + 8) = a10;
        *(v85 + 12) = 0;
        *(v85 + 28) = 0;
        *(v85 + 20) = 0;
        *(v85 + 36) = 0;
      }

      v15 = a12;
LABEL_61:
      ++v48;
      --v47;
      if (v48 == v44)
      {
        goto LABEL_145;
      }
    }

    if (!v48)
    {
      v55 = 0;
LABEL_101:
      if ((*(v49 + 16 * ((v48 << 16) >> 16) + 14) & 0x20) != 0)
      {
        v53 = v48 - v55 + *(v14 + 56);
      }

      else
      {
        v53 = v55;
      }

      goto LABEL_104;
    }

    if (v48 >= 5)
    {
      if (v48 >= 0x11)
      {
        v56 = 16;
        if ((v48 & 0xF) != 0)
        {
          v56 = v48 & 0xF;
        }

        v54 = v48 - v56;
        v57 = (v49 + 142);
        v58 = 0uLL;
        v59 = v48;
        v60 = 0uLL;
        do
        {
          a2 = (v57 - 16);
          a3 = (v57 - 8);
          a4 = (v57 + 8);
          a5 = (v57 + 16);
          a6 = (v57 + 24);
          a7 = (v57 + 32);
          a8 = (v57 + 40);
          v61.i16[0] = *(v57 - 64);
          v61.i16[1] = *(v57 - 56);
          v61.i16[2] = *(v57 - 48);
          v61.i16[3] = *(v57 - 40);
          v61.i16[4] = *(v57 - 32);
          v61.i16[5] = *(v57 - 24);
          v61.i16[6] = *(v57 - 16);
          v61.i16[7] = *(v57 - 8);
          v62.i16[0] = *v57;
          v62.i16[1] = v57[8];
          v62.i16[2] = v57[16];
          v62.i16[3] = v57[24];
          v62.i16[4] = v57[32];
          v62.i16[5] = v57[40];
          v62.i16[6] = v57[48];
          v62.i16[7] = v57[56];
          v58 = vaddq_s16(vbicq_s8(v45, vshrq_n_u16(v61, 5uLL)), v58);
          v60 = vaddq_s16(vbicq_s8(v45, vshrq_n_u16(v62, 5uLL)), v60);
          v59 -= 16;
          v57 += 128;
        }

        while (v56 != v59);
        v55 = vaddvq_s16(vaddq_s16(v60, v58));
        if (v56 < 5)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v55 = 0;
        v54 = 0;
      }

      v63 = 4;
      if ((v48 & 3) != 0)
      {
        v63 = v48 & 3;
      }

      v64 = v49 + 16 * v54;
      v65 = v54 + v47;
      v54 = v48 - v63;
      v66 = v55;
      v67 = (v64 + 46);
      v68 = v63 + v65;
      do
      {
        v69.i16[0] = *(v67 - 16);
        v69.i16[1] = *(v67 - 8);
        v69.i16[2] = *v67;
        v69.i16[3] = v67[8];
        v66 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v69, 5uLL)), v66);
        v67 += 32;
        v68 += 4;
      }

      while (v68);
      v55 = vaddv_s16(v66);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

LABEL_98:
    v70 = v54 + v47;
    v71 = (v49 + 16 * v54 + 14);
    do
    {
      v72 = *v71;
      v71 += 8;
      v55 += ((v72 >> 5) & 1) == 0;
    }

    while (!__CFADD__(v70++, 1));
    goto LABEL_101;
  }

LABEL_7:
  v22 = *(v14 + 32);
  if (v22)
  {
    v23 = a1;
    if ((*(v345 + 49) & 2) != 0)
    {
      v342 = 0;
    }

    else
    {
      *(a1 + 68) = ~v13;
      if (*v22 >= 1)
      {
        v24 = 0;
        v342 = 0;
        if (a9 == 11)
        {
          LODWORD(v25) = 2;
        }

        else
        {
          LODWORD(v25) = a9;
        }

        v26 = (v22 + 4);
        while (1)
        {
          v27 = *(v26 - 1);
          if (a12)
          {
            v362[0] = 0;
            v363 = 0u;
            v362[1] = sub_181987278;
            v364 = 0;
            v365 = a12;
            if (v27)
            {
              sub_181959BA0(v362, v27);
              v28 = WORD2(v364);
            }

            else
            {
              v28 = 0;
            }

            if (!v337)
            {
              v28 &= ~2u;
            }

            if (!v28)
            {
              goto LABEL_16;
            }
          }

          if (!v342)
          {
            sub_18195E17C(v16, v14, v344 + 1, a4, a5, a6, a7, a8);
            v342 = 1;
          }

          v29 = *(a1 + 72);
          *(a1 + 72) = v29 - 1;
          if (!v27)
          {
            break;
          }

          v30 = sub_1818C7FEC(v345, v27, 0, 0);
          if (!*(v345 + 103))
          {
            goto LABEL_28;
          }

LABEL_29:
          if (v30)
          {
            sub_1819439E0(v345, v30);
          }

          if (v25 == 4)
          {
            v16 = v359;
            v31 = *(v359 + 36);
            if (*(v359 + 37) <= v31)
            {
              sub_18194C8AC(v359, 9, 0, a10, 0, a6, a7, a8);
            }

            else
            {
              *(v359 + 36) = v31 + 1;
              v32 = &v359[17][5 * v31];
              *v32 = 9;
              *(v32 + 8) = a10;
              *(v32 + 12) = 0;
              *(v32 + 28) = 0;
              *(v32 + 20) = 0;
              *(v32 + 36) = 0;
            }

            LODWORD(v25) = 4;
          }

          else
          {
            v33 = *v26;
            if (v25 == 5)
            {
              v25 = 2;
            }

            else
            {
              v25 = v25;
            }

            v34 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
            v35 = v34;
            if (v25 == 2)
            {
              v36 = *(a1 + 152);
              if (!v36)
              {
                v36 = a1;
              }

              *(v36 + 33) = 1;
            }

            v37 = *(v34 + 144);
            if (*(v35 + 148) <= v37)
            {
              v37 = sub_18194C8AC(v35, 70, 0x113uLL, v25, 0, a6, a7, a8);
            }

            else
            {
              *(v35 + 144) = v37 + 1;
              v38 = *(v35 + 136) + 40 * v37;
              *v38 = 0x11300000046;
              *(v38 + 8) = v25;
              *(v38 + 12) = 0;
              *(v38 + 28) = 0;
              *(v38 + 20) = 0;
              *(v38 + 36) = 0;
            }

            if (!*(*v35 + 103))
            {
              if (v37 < 0)
              {
                v37 = *(v35 + 144) - 1;
              }

              sub_18194CB90(v35, *(v35 + 136) + 40 * v37, v33, 0);
            }

            v39 = *(v35 + 144);
            if (v39 >= 1)
            {
              *(*(v35 + 136) + 40 * v39 - 38) = 3;
            }

            v16 = v359;
          }

          v40 = v16[3];
          a3 = -v29;
          if (*(v40 + 72) + *(v40 + 76) >= 0)
          {
            *(*(v40 + 80) + 4 * a3) = *(v16 + 36);
          }

          else
          {
            sub_18195CB84(v40, v16, a3);
          }

          v14 = v354;
LABEL_16:
          ++v24;
          v26 += 3;
          if (v24 >= *v22)
          {
            goto LABEL_152;
          }
        }

        v30 = 0;
        if (*(v345 + 103))
        {
          goto LABEL_29;
        }

LABEL_28:
        sub_1818ECA90(a1, v30, (v29 - 1), 16, a5, a6, a7, a8);
        goto LABEL_29;
      }

      v342 = 0;
LABEL_152:
      v23 = a1;
      *(a1 + 68) = 0;
      v13 = v344;
    }
  }

  else
  {
    v342 = 0;
    v23 = a1;
  }

  v92 = *(v14 + 16);
  v361 = v92;
  v93 = v341;
  v94 = a13;
  if (!a13)
  {
    goto LABEL_161;
  }

  if (!*a13)
  {
    v98 = 0;
    if (*(a13 + 40))
    {
      v99 = 6;
    }

    else
    {
      v94 = 0;
      v99 = 4;
    }

    v356 = v99;
    goto LABEL_166;
  }

  if (!v92)
  {
LABEL_161:
    v98 = 0;
LABEL_166:
    v338 = 1;
    goto LABEL_167;
  }

  v95 = 0;
  v96 = 0;
  v97 = 0;
  do
  {
    v92 = *(v92 + 40);
    ++v97;
    v96 += 16;
    v95 += 18;
  }

  while (v92);
  LODWORD(v361) = v97;
  if (v345)
  {
    v98 = sub_181929E8C(v345, v95, 3747369572);
    if (!v98)
    {
      return;
    }
  }

  else
  {
    v98 = sub_181902484(v95, 3747369572);
    if (!v98)
    {
      return;
    }
  }

  bzero(v98, v95);
  v112 = 0;
  *(a13 + 48) = v98;
  v113 = a13;
  v23 = a1;
  do
  {
    if (!*v113)
    {
      break;
    }

    v114 = v113[7];
    if (v114)
    {
      v115 = *(v14 + 16);
      v116 = 0;
      if (v115)
      {
        v117 = v115 == v114;
      }

      else
      {
        v117 = 1;
      }

      if (!v117)
      {
        do
        {
          ++v116;
          v115 = *(v115 + 40);
          if (v115)
          {
            v118 = v115 == v114;
          }

          else
          {
            v118 = 1;
          }
        }

        while (!v118);
      }

      if (!*(v98 + v116 + v96))
      {
        *(v98 + v116 + v96) = 1;
        v119 = &v98[2 * v112];
        *v119 = v115;
        *(v119 + 2) = v116;
        ++v112;
      }
    }

    v113 = v113[4];
  }

  while (v113);
  v120 = *(v14 + 16);
  if (v120)
  {
    v121 = 0;
    do
    {
      if (!*(v98 + v121 + v96))
      {
        v122 = &v98[2 * v112];
        *v122 = v120;
        *(v122 + 2) = v121;
        ++v112;
      }

      ++v121;
      v120 = *(v120 + 40);
    }

    while (v120);
  }

  v338 = 0;
LABEL_167:
  v100 = *(v345 + 48);
  if ((v100 & 0x6000) == 0)
  {
    v326 = 0;
    v321 = 0;
    v319 = 0;
    goto LABEL_184;
  }

  if ((v100 & 0x2000) != 0)
  {
    if (!*(v14 + 88) && ((v101 = *(*(*v23 + 32) + 56)) == 0 || !*(v101 + 64)) || v23[42] || (v319 = sub_181980B5C(v23, v14, 129, 0, 0, a6, a7, a8)) == 0)
    {
      v319 = 0;
      if (!sub_1818D6F14(v23, v14, 0, 0))
      {
        goto LABEL_181;
      }
    }
  }

  else
  {
    v319 = 0;
    if (!sub_1818D6F14(v23, v14, 0, 0))
    {
LABEL_181:
      v326 = 0;
      v321 = 0;
      goto LABEL_184;
    }
  }

  v102 = (*(v23 + 15) + 1);
  *(v23 + 15) = v102;
  v103 = *(v16 + 36);
  if (*(v16 + 37) <= v103)
  {
    sub_18194C8AC(v16, 71, 0, v102, 0, a6, a7, a8);
  }

  else
  {
    *(v16 + 36) = v103 + 1;
    v104 = &v16[17][5 * v103];
    *v104 = 71;
    *(v104 + 8) = v102;
    *(v104 + 12) = 0;
    *(v104 + 28) = 0;
    *(v104 + 20) = 0;
    *(v104 + 36) = 0;
  }

  v326 = v102;
  v321 = *(v23 + 18) - 1;
  *(v23 + 18) = v321;
LABEL_184:
  v105 = 0;
  v328 = 0;
  if (!v337)
  {
    v332 = 0;
    v324 = 0;
    v325 = 0;
    v106 = 0;
    v323 = 0;
    goto LABEL_283;
  }

  v332 = 0;
  v324 = 0;
  v325 = 0;
  v106 = 0;
  v323 = 0;
  if (v353)
  {
    goto LABEL_283;
  }

  v107 = *(v23 + 18);
  v108 = v107 - 1;
  *(v23 + 18) = v107 - 1;
  v109 = v356;
  if (v356 == 11)
  {
    if (*(v14 + 62) == 11)
    {
      v109 = 2;
    }

    else
    {
      v109 = *(v14 + 62);
    }
  }

  if (v94)
  {
    v105 = v94;
    while (*v105 && *(v105 + 56))
    {
      v105 = *(v105 + 32);
      if (!v105)
      {
        goto LABEL_195;
      }
    }

    if (*(v105 + 40))
    {
      v109 = 6;
    }

    else
    {
      v109 = 4;
    }

    if (v105 == v94)
    {
      v332 = 0;
      goto LABEL_227;
    }

LABEL_195:
    v110 = *(v16 + 36);
    if (*(v16 + 37) <= v110)
    {
      v332 = sub_18194C8AC(v16, 9, 0, 0, 0, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v110 + 1;
      v332 = v110;
      v111 = &v16[17][5 * v110];
      *v111 = 9;
      *(v111 + 1) = 0u;
      *(v111 + 17) = 0u;
      *(v111 + 32) = 0;
    }
  }

  else
  {
    v105 = 0;
    v332 = 0;
  }

LABEL_227:
  if (v109 != 5 || v356 == 5)
  {
    v324 = 0;
  }

  else
  {
    v324 = 0;
    if (*(v14 + 16) && !v332)
    {
      v126 = *(v16 + 36);
      if (*(v16 + 37) <= v126)
      {
        v324 = sub_18194C8AC(v16, 9, 0, 0, 0, a6, a7, a8) + 1;
      }

      else
      {
        v324 = v126 + 1;
        *(v16 + 36) = v126 + 1;
        v127 = &v16[17][5 * v126];
        *v127 = 9;
        *(v127 + 1) = 0u;
        *(v127 + 17) = 0u;
        *(v127 + 32) = 0;
      }
    }
  }

  v124 = *(v16 + 36);
  if (v339)
  {
    if (*(v16 + 37) <= v124)
    {
      sub_18194C8AC(v16, 54, v13, (v107 - 1), v339, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v124 + 1;
      v125 = &v16[17][5 * v124];
      *v125 = 54;
      *(v125 + 4) = v13;
      *(v125 + 8) = v108;
      *(v125 + 12) = v339;
      *(v125 + 24) = 0;
      *(v125 + 32) = 0;
      *(v125 + 16) = 0;
    }

    v124 = *(v16 + 36);
    if (v124 >= 1)
    {
      *(&v16[17][5 * v124 - 4] - 3) = 144;
    }
  }

  if (*(v16 + 37) <= v124)
  {
    sub_18194C8AC(v16, 31, v320, (v107 - 1), v13, a6, a7, a8);
  }

  else
  {
    *(v16 + 36) = v124 + 1;
    v128 = &v16[17][5 * v124];
    *v128 = 31;
    *(v128 + 4) = v320;
    *(v128 + 8) = v108;
    *(v128 + 12) = v13;
    *(v128 + 24) = 0;
    *(v128 + 32) = 0;
    *(v128 + 16) = 0;
  }

  v93 = v341;
  if (v109 <= 3)
  {
    if ((v109 - 1) < 3)
    {
LABEL_258:
      sub_1819872F0(a1, v109, v14, a4, a5, a6, a7, a8);
LABEL_259:
      v130 = 0;
      v323 = 0;
      goto LABEL_260;
    }

LABEL_257:
    v109 = 2;
    goto LABEL_258;
  }

  if (v109 == 4)
  {
LABEL_254:
    v129 = *(v16 + 36);
    if (*(v16 + 37) > v129)
    {
      v130 = 0;
      v323 = 0;
      *(v16 + 36) = v129 + 1;
      v131 = &v16[17][5 * v129];
      *v131 = 9;
      *(v131 + 8) = a10;
      *(v131 + 12) = 0;
      *(v131 + 28) = 0;
      *(v131 + 20) = 0;
      *(v131 + 36) = 0;
      goto LABEL_260;
    }

    sub_18194C8AC(v16, 9, 0, a10, 0, a6, a7, a8);
    goto LABEL_259;
  }

  if (v109 != 5)
  {
    if (v109 != 6)
    {
      goto LABEL_257;
    }

    sub_181987480(a1, v94, v14, 0, v320, a6, a7, a8);
    goto LABEL_254;
  }

  if (v326)
  {
    v139 = *(a1 + 152);
    if (!v139)
    {
      v139 = a1;
    }

    v130 = 1;
    *(v139 + 32) = 1;
    sub_1818D61BC(a1, v14, v319, v320, v327, v13, 1, 0, 5u, 1u, 0xFFFFFFFF);
    v140 = *(v16 + 36);
    if (*(v16 + 37) <= v140)
    {
      sub_18194C8AC(v16, 86, v326, 1, 0, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v140 + 1;
      v141 = &v16[17][5 * v140];
      *v141 = 86;
      *(v141 + 4) = v326;
      *(v141 + 8) = 1;
      *(v141 + 12) = 0;
      *(v141 + 28) = 0;
      *(v141 + 20) = 0;
      *(v141 + 36) = 0;
    }

    v323 = 1;
  }

  else
  {
    v311 = *(v16 + 36);
    if (*(v16 + 37) <= v311)
    {
      sub_18194C8AC(v16, 130, v320, 64, 0, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v311 + 1;
      v312 = &v16[17][5 * v311];
      *v312 = 130;
      *(v312 + 4) = v320;
      *(v312 + 8) = 64;
      *(v312 + 12) = 0;
      *(v312 + 28) = 0;
      *(v312 + 20) = 0;
      *(v312 + 36) = 0;
    }

    if (!*(*v16 + 103))
    {
      v313 = &v16[17][5 * *(v16 + 36)];
      *(v313 - 39) = -5;
      *(v313 - 24) = v14;
    }

    v323 = 1;
    if (*(v14 + 16))
    {
      v314 = *(a1 + 152);
      if (!v314)
      {
        v314 = a1;
      }

      *(v314 + 32) = 1;
      sub_1819816BC(a1, v14, v320, v327, 0, -1);
    }

    v130 = 0;
  }

LABEL_260:
  v325 = v130;
  v132 = v16[3];
  v133 = -v107;
  if (*(v132 + 72) + *(v132 + 76) < 0)
  {
    sub_18195CB84(v132, v16, v133);
    v23 = a1;
    if (!v94)
    {
      goto LABEL_267;
    }
  }

  else
  {
    *(*(v132 + 80) + 4 * v133) = *(v16 + 36);
    v23 = a1;
    if (!v94)
    {
      goto LABEL_267;
    }
  }

  if (v105 != v94)
  {
    v134 = *(v16 + 36);
    if (*(v16 + 37) <= v134)
    {
      v328 = sub_18194C8AC(v16, 9, 0, 0, 0, a6, a7, a8);
      v106 = 0;
    }

    else
    {
      v106 = 0;
      *(v16 + 36) = v134 + 1;
      v328 = v134;
      v135 = &v16[17][5 * v134];
      *v135 = 9;
      *(v135 + 1) = 0u;
      *(v135 + 17) = 0u;
      *(v135 + 32) = 0;
    }

    goto LABEL_283;
  }

LABEL_267:
  if (v324)
  {
    v136 = *(v16 + 36);
    if (*(v16 + 37) <= v136)
    {
      v136 = sub_18194C8AC(v16, 9, 0, 0, 0, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v136 + 1;
      v137 = &v16[17][5 * v136];
      *v137 = 9;
      *(v137 + 1) = 0u;
      *(v137 + 17) = 0u;
      *(v137 + 32) = 0;
    }

    if (*(*v16 + 103))
    {
      v138 = &byte_1EA831A58;
    }

    else
    {
      v138 = &v16[17][5 * v324 - 5];
    }

    v328 = 0;
    *(v138 + 2) = *(v16 + 36);
    v106 = v136;
  }

  else
  {
    v328 = 0;
    v324 = 0;
    v106 = 0;
  }

LABEL_283:
  v316 = v106;
  v333 = v98;
  if (v338)
  {
    LODWORD(v142) = 0;
    v143 = v361;
    if (v361)
    {
LABEL_285:
      v343 = 0;
      v352 = v13 + 1;
      v358 = ~v13;
      v317 = v23 + 184;
      if (v339)
      {
        v144 = v319 == 0;
      }

      else
      {
        v144 = 1;
      }

      v145 = !v144;
      v315 = v145;
      v318 = v332 + 1;
      v146.i64[0] = 0x1000100010001;
      v146.i64[1] = 0x1000100010001;
      v329 = v321;
      while (1)
      {
        v355 = v142;
        if (*(v93 + 4 * v142))
        {
          break;
        }

LABEL_386:
        v198 = v343;
LABEL_387:
        if (v338)
        {
          LODWORD(v142) = v355 + 1;
          v143 = *(v361 + 40);
          v361 = v143;
          if (!v143)
          {
            goto LABEL_575;
          }
        }

        else
        {
          v142 = v198 + 1;
          if (v142 >= v361)
          {
            goto LABEL_575;
          }

          v343 = v142;
          v199 = &v333[2 * v142];
          LODWORD(v142) = *(v199 + 2);
          v143 = *v199;
          if (!*v199)
          {
            goto LABEL_575;
          }
        }
      }

      if (v94)
      {
        v105 = v94;
        do
        {
          if (!*v105)
          {
            break;
          }

          if (*(v105 + 56) == v143)
          {
            break;
          }

          v105 = *(v105 + 32);
        }

        while (v105);
        if (v332 && v105 == v94)
        {
          v147 = &byte_1EA831A58;
          if (!*(*v16 + 103))
          {
            v147 = &v16[17][5 * v332];
          }

          *(v147 + 2) = *(v16 + 36);
        }
      }

      v148 = *(v23 + 18);
      v346 = v148 - 1;
      *(v23 + 18) = v148 - 1;
      if (v342)
      {
        if (!*(v143 + 72))
        {
LABEL_318:
          a5 = *(v93 + 4 * v355);
          v155 = (a5 + 1);
          v340 = v148;
          v334 = a5;
          if (*(v143 + 96))
          {
            v156 = 0;
            while (1)
            {
              v157 = *(*(v143 + 8) + 2 * v156);
              if (v157 == -1)
              {
                goto LABEL_330;
              }

              v158 = *(*(v143 + 8) + 2 * v156);
              if (v158 == 65534)
              {
                *(v23 + 17) = v358;
                v159 = *(*(v143 + 80) + 24 * v156 + 8);
                v160 = *v23;
                if (v159)
                {
                  v161 = sub_1818C7FEC(v160, v159, 0, 0);
                  v146.i64[0] = 0x1000100010001;
                  v146.i64[1] = 0x1000100010001;
                  v162 = v161;
                  if (!*(v160 + 103))
                  {
                    goto LABEL_326;
                  }
                }

                else
                {
                  v162 = 0;
                  if (!*(v160 + 103))
                  {
LABEL_326:
                    sub_181956EF4(a1, v162, (v155 + v156));
                    v146.i64[0] = 0x1000100010001;
                    v146.i64[1] = 0x1000100010001;
                  }
                }

                if (v162)
                {
                  sub_1819439E0(v160, v162);
                  v146.i64[0] = 0x1000100010001;
                  v146.i64[1] = 0x1000100010001;
                }

                v23 = a1;
                *(a1 + 68) = 0;
                goto LABEL_321;
              }

              if (v158 == *(v14 + 52))
              {
LABEL_330:
                v163 = v156 + v155;
                v164 = *(v16 + 36);
                if (*(v16 + 37) <= v164)
                {
                  v166 = v16;
                  v167 = 82;
                  v168 = v13;
LABEL_362:
                  sub_18194C8AC(v166, v167, v168, v163, 0, a6, a7, a8);
                  v146.i64[0] = 0x1000100010001;
                  v146.i64[1] = 0x1000100010001;
                  goto LABEL_321;
                }

                *(v16 + 36) = v164 + 1;
                v165 = &v16[17][5 * v164];
                *v165 = 82;
                *(v165 + 4) = v13;
                goto LABEL_360;
              }

              if ((v157 & 0x8000) == 0 && (*(v14 + 48) & 0x20) != 0)
              {
                break;
              }

LABEL_358:
              v168 = v352 + v158;
              v163 = v156 + v155;
              v189 = *(v16 + 36);
              if (*(v16 + 37) <= v189)
              {
                v166 = v16;
                v167 = 81;
                goto LABEL_362;
              }

              *(v16 + 36) = v189 + 1;
              v165 = &v16[17][5 * v189];
              *v165 = 81;
              *(v165 + 4) = v168;
LABEL_360:
              *(v165 + 8) = v163;
              *(v165 + 12) = 0;
              *(v165 + 28) = 0;
              *(v165 + 20) = 0;
              *(v165 + 36) = 0;
LABEL_321:
              ++v156;
              a4 = *(v143 + 96);
              if (v156 >= a4)
              {
                a5 = *(v341 + 4 * v355);
                v148 = v340;
                goto LABEL_365;
              }
            }

            v169 = *(v14 + 8);
            if (!*(*(v143 + 8) + 2 * v156))
            {
              v157 = 0;
              v171 = 0;
LABEL_355:
              if ((*(v169 + 16 * v157 + 14) & 0x20) != 0)
              {
                LOWORD(v158) = v158 - v171 + *(v14 + 56);
              }

              else
              {
                LOWORD(v158) = v171;
              }

              goto LABEL_358;
            }

            if (v158 >= 5)
            {
              if (v158 >= 0x11)
              {
                v172 = 16;
                if ((v157 & 0xF) != 0)
                {
                  v172 = v157 & 0xF;
                }

                v170 = v157 - v172;
                v173 = (v169 + 142);
                v174 = 0uLL;
                v175 = *(*(v143 + 8) + 2 * v156);
                v176 = 0uLL;
                do
                {
                  a6 = (v173 + 16);
                  a7 = (v173 + 24);
                  a8 = (v173 + 32);
                  v177.i16[0] = *(v173 - 64);
                  v177.i16[1] = *(v173 - 56);
                  v177.i16[2] = *(v173 - 48);
                  v177.i16[3] = *(v173 - 40);
                  v177.i16[4] = *(v173 - 32);
                  v177.i16[5] = *(v173 - 24);
                  v177.i16[6] = *(v173 - 16);
                  v177.i16[7] = *(v173 - 8);
                  v178.i16[0] = *v173;
                  v178.i16[1] = v173[8];
                  v178.i16[2] = v173[16];
                  v178.i16[3] = v173[24];
                  v178.i16[4] = v173[32];
                  v178.i16[5] = v173[40];
                  v178.i16[6] = v173[48];
                  v178.i16[7] = v173[56];
                  v174 = vaddq_s16(vbicq_s8(v146, vshrq_n_u16(v177, 5uLL)), v174);
                  v176 = vaddq_s16(vbicq_s8(v146, vshrq_n_u16(v178, 5uLL)), v176);
                  v175 -= 16;
                  v173 += 128;
                }

                while (v172 != v175);
                v171 = vaddvq_s16(vaddq_s16(v176, v174));
                v13 = v344;
                if (v172 < 5)
                {
                  goto LABEL_353;
                }
              }

              else
              {
                v171 = 0;
                v170 = 0;
              }

              v179 = v157 & 3;
              if ((v157 & 3) == 0)
              {
                v179 = 4;
              }

              v180 = v169 + 16 * v170;
              v181 = v179 + v170;
              v170 = v157 - v179;
              v182 = v171;
              v183 = (v180 + 46);
              v184 = v181 - v157;
              do
              {
                v185.i16[0] = *(v183 - 16);
                v185.i16[1] = *(v183 - 8);
                v185.i16[2] = *v183;
                v185.i16[3] = v183[8];
                v182 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v185, 5uLL)), v182);
                v183 += 32;
                v184 += 4;
              }

              while (v184);
              v171 = vaddv_s16(v182);
            }

            else
            {
              v170 = 0;
              v171 = 0;
            }

LABEL_353:
            v186 = v157 - v170;
            v187 = (v169 + 16 * v170 + 14);
            do
            {
              v188 = *v187;
              v187 += 8;
              v171 += ((v188 >> 5) & 1) == 0;
              --v186;
            }

            while (v186);
            goto LABEL_355;
          }

          a4 = 0;
LABEL_365:
          v190 = *(v16 + 36);
          if (*(v16 + 37) <= v190)
          {
            sub_18194C8AC(v16, 97, v155, a4, a5, a6, a7, a8);
            v146.i64[0] = 0x1000100010001;
            v146.i64[1] = 0x1000100010001;
            if (!v339)
            {
              goto LABEL_371;
            }
          }

          else
          {
            *(v16 + 36) = v190 + 1;
            v191 = &v16[17][5 * v190];
            *v191 = 97;
            *(v191 + 4) = v155;
            *(v191 + 8) = a4;
            *(v191 + 12) = a5;
            *(v191 + 24) = 0;
            *(v191 + 32) = 0;
            *(v191 + 16) = 0;
            if (!v339)
            {
              goto LABEL_371;
            }
          }

          if (!v337 && v353 == v143)
          {
LABEL_382:
            v196 = v16[3];
            v197 = -v148;
            if (*(v196 + 72) + *(v196 + 76) < 0)
            {
              sub_18195CB84(v196, v16, v197);
              v146.i64[0] = 0x1000100010001;
              v146.i64[1] = 0x1000100010001;
            }

            else
            {
              *(*(v196 + 80) + 4 * v197) = *(v16 + 36);
            }

            v93 = v341;
            goto LABEL_386;
          }

LABEL_371:
          v192 = *(v143 + 98);
          if (*(v143 + 98))
          {
            if (v192 == 11)
            {
              v192 = 2;
            }

            if (v356 != 11)
            {
              v192 = v356;
            }

            if (v105)
            {
              if (*(v105 + 40))
              {
                v192 = 6;
              }

              else
              {
                v192 = 4;
              }
            }

            v331 = v192;
            v193 = v355 + v327;
            a6 = *(v143 + 94);
            v194 = *(v16 + 36);
            if (*(v16 + 37) <= v194)
            {
              v194 = sub_18194CAFC(v16, 27, v355 + v327, v346, v155, a6, a7, a8);
            }

            else
            {
              *(v16 + 36) = v194 + 1;
              v195 = &v16[17][5 * v194];
              *v195 = 64795;
              *(v195 + 4) = v193;
              *(v195 + 8) = v346;
              *(v195 + 12) = v155;
              *(v195 + 16) = a6;
              *(v195 + 24) = 0;
              *(v195 + 32) = 0;
            }

            v335 = v155;
            if (v353 != v143)
            {
              if (v330 == 1)
              {
                if (v23[31])
                {
                  v200 = v23[31] - 1;
                  v23[31] = v200;
                  v335 = *&v317[4 * v200];
                  goto LABEL_403;
                }

                v205 = *(v23 + 15) + 1;
                v335 = v205;
              }

              else
              {
                v201 = *(v23 + 11);
                v202 = __OFSUB__(v201, v330);
                v203 = v201 - v330;
                if (v203 < 0 == v202)
                {
                  v335 = *(v23 + 12);
                  *(v23 + 11) = v203;
                  *(v23 + 12) = v335 + v330;
                  goto LABEL_403;
                }

                v204 = *(v23 + 15);
                v335 = v204 + 1;
                v205 = v204 + v330;
              }

              *(v23 + 15) = v205;
            }

LABEL_403:
            v336 = v355 + v327;
            v322 = v194;
            if (!v339 && v331 != 5)
            {
              goto LABEL_405;
            }

            if ((*(v14 + 48) & 0x80) == 0)
            {
              v206 = *(v359 + 36);
              if (*(v359 + 37) <= v206)
              {
                sub_18194C8AC(v359, 142, v193, v335, 0, a6, a7, a8);
                if (!v339)
                {
                  goto LABEL_405;
                }
              }

              else
              {
                *(v359 + 36) = v206 + 1;
                v207 = &v359[17][5 * v206];
                *v207 = 142;
                *(v207 + 4) = v193;
                *(v207 + 8) = v335;
                *(v207 + 12) = 0;
                *(v207 + 28) = 0;
                *(v207 + 20) = 0;
                *(v207 + 36) = 0;
                if (!v339)
                {
                  goto LABEL_405;
                }
              }

              v264 = *(v359 + 36);
              if (*(v359 + 37) <= v264)
              {
                sub_18194C8AC(v359, 54, v335, v346, v339, a6, a7, a8);
              }

              else
              {
                *(v359 + 36) = v264 + 1;
                v265 = &v359[17][5 * v264];
                *v265 = 54;
                *(v265 + 4) = v335;
                *(v265 + 8) = v346;
                *(v265 + 12) = v339;
                *(v265 + 24) = 0;
                *(v265 + 32) = 0;
                *(v265 + 16) = 0;
              }

              v266 = *(v359 + 36);
              if (v266 >= 1)
              {
                *(&v359[17][5 * v266 - 4] - 3) = 144;
              }

LABEL_405:
              if (v331 - 1 < 3)
              {
                sub_181963324(v23, v331, v143, a4, a5, a6, a7, a8);
                v16 = v359;
                goto LABEL_407;
              }

              v16 = v359;
              v13 = v344;
              if (v331 != 4)
              {
                if (v331 == 6)
                {
                  sub_181987480(v23, v94, v14, v143, v336, a6, a7, a8);
                  goto LABEL_415;
                }

                v260 = *(v359 + 36);
                if (v326)
                {
                  v261 = *(v23 + 19);
                  if (!v261)
                  {
                    v261 = v23;
                  }

                  v261[32] = 1;
                  ++v325;
                }

                if (v315)
                {
                  if (*(v359 + 37) <= v260)
                  {
                    v263 = v320;
                    sub_18194C8AC(v359, 167, v320, 0, 0, a6, a7, a8);
                  }

                  else
                  {
                    *(v359 + 36) = v260 + 1;
                    v262 = &v359[17][5 * v260];
                    v263 = v320;
                    *v262 = 167;
                    *(v262 + 4) = v320;
                    *(v262 + 8) = 0u;
                    *(v262 + 24) = 0u;
                  }

                  sub_1818D61BC(v23, v14, v319, v263, v327, v335, v330, 0, 5u, v353 == v143, v336);
                  v267 = *(v359 + 36);
                  if (*(v359 + 37) <= v267)
                  {
                    sub_18194C8AC(v359, 168, v263, 0, 0, a6, a7, a8);
                  }

                  else
                  {
                    *(v359 + 36) = v267 + 1;
                    v268 = &v359[17][5 * v267];
                    *v268 = 168;
                    *(v268 + 4) = v263;
                    *(v268 + 8) = 0u;
                    *(v268 + 24) = 0u;
                  }
                }

                else
                {
                  sub_1818D61BC(v23, v14, v319, v320, v327, v335, v330, 0, 5u, v353 == v143, v336);
                }

                v146.i64[0] = 0x1000100010001;
                v146.i64[1] = 0x1000100010001;
                if (v326)
                {
                  v269 = *(v359 + 36);
                  if (*(v359 + 37) <= v269)
                  {
                    sub_18194C8AC(v359, 86, v326, 1, 0, a6, a7, a8);
                  }

                  else
                  {
                    *(v359 + 36) = v269 + 1;
                    v270 = &v359[17][5 * v269];
                    *v270 = 86;
                    *(v270 + 4) = v326;
                    *(v270 + 8) = 1;
                    *(v270 + 12) = 0;
                    *(v270 + 28) = 0;
                    *(v270 + 20) = 0;
                    *(v270 + 36) = 0;
                  }

                  v271 = *(v359 + 36);
                  if (*(v359 + 37) <= v271)
                  {
                    v347 = sub_18194C8AC(v359, 9, 0, 0, 0, a6, a7, a8);
                  }

                  else
                  {
                    *(v359 + 36) = v271 + 1;
                    v347 = v271;
                    v272 = &v359[17][5 * v271];
                    *v272 = 9;
                    *(v272 + 1) = 0u;
                    *(v272 + 17) = 0u;
                    *(v272 + 32) = 0;
                  }

                  v273 = v359[3];
                  v274 = ~v329;
                  if (*(v273 + 72) + *(v273 + 76) < 0)
                  {
                    sub_18195CB84(v273, v359, v274);
                  }

                  else
                  {
                    *(*(v273 + 80) + 4 * v274) = *(v359 + 36);
                  }

                  v329 = *(v23 + 18) - 1;
                  *(v23 + 18) = v329;
                  if (*(v143 + 72))
                  {
                    v275 = *(v359 + 36);
                    if (*(v359 + 37) <= v275)
                    {
                      sub_18194C8AC(v359, 51, v334, v329, 0, a6, a7, a8);
                    }

                    else
                    {
                      *(v359 + 36) = v275 + 1;
                      v276 = &v359[17][5 * v275];
                      *v276 = 51;
                      *(v276 + 4) = v334;
                      *(v276 + 8) = v329;
                      *(v276 + 12) = 0;
                      *(v276 + 28) = 0;
                      *(v276 + 20) = 0;
                      *(v276 + 36) = 0;
                    }
                  }

                  if (v260 - v322 >= 1)
                  {
                    v277 = 5 * v322;
                    v278 = v260 - v322 + 1;
                    do
                    {
                      v279 = &byte_1EA831A58;
                      if (!*(*v16 + 103))
                      {
                        v279 = &v16[17][v277];
                      }

                      v280 = *v279;
                      if (v280 != 142)
                      {
                        v281 = v279[1];
                        v282 = *(v279 + 1);
                        v283 = *(v279 + 2);
                        v284 = *(v279 + 1);
                        v286 = v279 + 8;
                        v285 = *(v279 + 2);
                        a5 = *(v286 + 1);
                        if (byte_181A203EA[v280])
                        {
                          a4 = v329;
                        }

                        else
                        {
                          a4 = v285;
                        }

                        if (v281 == -3)
                        {
                          v287 = v283;
                        }

                        else
                        {
                          v287 = v283;
                        }

                        v288 = *(v16 + 36);
                        v350 = v282;
                        if (*(v16 + 37) <= v288)
                        {
                          v288 = sub_18194C8AC(v16, v280, v284, a4, a5, a6, a7, a8);
                        }

                        else
                        {
                          *(v16 + 36) = v288 + 1;
                          v289 = &v16[17][5 * v288];
                          *v289 = v280;
                          *(v289 + 2) = 0;
                          *(v289 + 4) = v284;
                          *(v289 + 8) = a4;
                          *(v289 + 12) = a5;
                          *(v289 + 1) = 0;
                          *(v289 + 24) = 0;
                          *(v289 + 32) = 0;
                          *(v289 + 16) = 0;
                        }

                        if (*(*v16 + 103))
                        {
                          if (v281 != -11)
                          {
                            sub_1818A3B68(*v16, v281, v287);
                          }
                        }

                        else
                        {
                          if (v288 < 0)
                          {
                            v288 = *(v359 + 36) - 1;
                          }

                          v290 = &v359[17][5 * v288];
                          if ((v281 & 0x80000000) != 0 && !*(v290 + 1))
                          {
                            if (v281 == -3)
                            {
                              *(v290 + 16) = v283;
                              *(v290 + 1) = -3;
                            }

                            else if (v283)
                            {
                              *(v290 + 16) = v283;
                              *(v290 + 1) = v281;
                              if (v281 == -11)
                              {
                                ++*(v283 + 24);
                              }
                            }
                          }

                          else
                          {
                            sub_18194CB90(v359, v290, v287, v281);
                          }
                        }

                        v16 = v359;
                        v23 = a1;
                        v291 = *(v359 + 36);
                        if (v291 >= 1)
                        {
                          *(&v359[17][5 * v291 - 4] - 3) = v350;
                        }
                      }

                      v277 += 5;
                      --v278;
                    }

                    while (v278 > 1);
                  }

                  sub_181963324(v23, 2, v143, a4, a5, a6, a7, a8);
                  v292 = &byte_1EA831A58;
                  if (!*(*v16 + 103))
                  {
                    v292 = &v16[17][5 * v347];
                  }

                  *(v292 + 2) = *(v16 + 36);
                  v323 = 1;
                  v14 = v354;
LABEL_407:
                  v13 = v344;
LABEL_481:
                  v198 = v343;
                  v146.i64[0] = 0x1000100010001;
                  v146.i64[1] = 0x1000100010001;
                }

                else
                {
                  v323 = 1;
                  v198 = v343;
                }

                v253 = v16[3];
                v254 = -v340;
                if (*(v253 + 72) + *(v253 + 76) < 0)
                {
                  sub_18195CB84(v253, v16, v254);
                  v146.i64[0] = 0x1000100010001;
                  v146.i64[1] = 0x1000100010001;
                }

                else
                {
                  *(*(v253 + 80) + 4 * v254) = *(v16 + 36);
                }

                v117 = v335 == v155;
                v93 = v341;
                if (!v117)
                {
                  if (v330 == 1)
                  {
                    if (v335)
                    {
                      v256 = v23[31];
                      if (v256 <= 7)
                      {
                        v23[31] = v256 + 1;
                        *&v317[4 * v256] = v335;
                      }
                    }
                  }

                  else if (*(v23 + 11) < v330)
                  {
                    *(v23 + 11) = v330;
                    *(v23 + 12) = v335;
                  }
                }

                if (v105 && v328)
                {
                  v255 = v105;
                  while (1)
                  {
                    v255 = *(v255 + 32);
                    if (!v255 || !*v255 || !*(v255 + 56))
                    {
                      break;
                    }

                    if (!*(v255 + 41))
                    {
                      goto LABEL_387;
                    }
                  }

                  v257 = *(v16 + 36);
                  if (*(v16 + 37) <= v257)
                  {
                    sub_18194C8AC(v16, 9, 0, v318, 0, a6, a7, a8);
                    v146.i64[0] = 0x1000100010001;
                    v146.i64[1] = 0x1000100010001;
                  }

                  else
                  {
                    *(v16 + 36) = v257 + 1;
                    v258 = &v16[17][5 * v257];
                    *v258 = 9;
                    *(v258 + 8) = v318;
                    *(v258 + 12) = 0;
                    *(v258 + 28) = 0;
                    *(v258 + 20) = 0;
                    *(v258 + 36) = 0;
                  }

                  v259 = &byte_1EA831A58;
                  if (!*(*v16 + 103))
                  {
                    v259 = &v16[17][5 * v328];
                  }

                  v328 = 0;
                  *(v259 + 2) = *(v16 + 36);
                }

                goto LABEL_387;
              }

LABEL_415:
              v208 = *(v359 + 36);
              if (*(v359 + 37) <= v208)
              {
                sub_18194C8AC(v359, 9, 0, a10, 0, a6, a7, a8);
              }

              else
              {
                *(v359 + 36) = v208 + 1;
                v209 = &v359[17][5 * v208];
                *v209 = 9;
                *(v209 + 8) = a10;
                *(v209 + 12) = 0;
                *(v209 + 28) = 0;
                *(v209 + 20) = 0;
                *(v209 + 36) = 0;
              }

              goto LABEL_481;
            }

            if (v353 != v143 && *(v353 + 94))
            {
              v210 = 0;
              do
              {
                if (*(v143 + 96))
                {
                  a4 = 0;
                  while (*(*(v353 + 8) + 2 * v210) != *(*(v143 + 8) + 2 * a4))
                  {
                    if (*(v143 + 96) == ++a4)
                    {
                      goto LABEL_426;
                    }
                  }
                }

                else
                {
LABEL_426:
                  a4 = 0xFFFFFFFFLL;
                }

                a5 = v210 + v335;
                v212 = *(v359 + 36);
                if (*(v359 + 37) > v212)
                {
                  *(v359 + 36) = v212 + 1;
                  v211 = &v359[17][5 * v212];
                  *v211 = 94;
                  *(v211 + 4) = v193;
                  *(v211 + 8) = a4;
                  *(v211 + 12) = a5;
                  *(v211 + 24) = 0;
                  *(v211 + 32) = 0;
                  *(v211 + 16) = 0;
                }

                else
                {
                  sub_18194C8AC(v359, 94, v193, a4, a5, a6, a7, a8);
                }

                ++v210;
              }

              while (v210 < *(v353 + 94));
            }

            if (!v339 || !*(v353 + 94))
            {
              goto LABEL_405;
            }

            v213 = 0;
            if ((*(v143 + 99) & 3) == 2)
            {
              v214 = v155;
            }

            else
            {
              v214 = v335;
            }

            v349 = *(v359 + 36) + *(v353 + 94);
            v215 = 53;
            while (2)
            {
              v216 = *(*(v353 + 64) + 8 * v213);
              v217 = *v23;
              v218 = *(*v23 + 100);
              v219 = *(*v23 + 197);
              v220 = sub_181949138(v217, v218, v216, v219);
              v222 = v220;
              if (v219 || v220 && *(v220 + 3))
              {
                v23 = a1;
              }

              else
              {
                v23 = a1;
                v222 = sub_18194E6B8(a1, v218, v220, v216, v221, a6, a7, a8);
              }

              v14 = v354;
              v223 = *(*(v353 + 8) + 2 * v213);
              v224 = *(*(v353 + 8) + 2 * v213);
              v225 = v349;
              if (v213 == *(v353 + 94) - 1)
              {
                v225 = v346;
              }

              v349 = v225;
              if (v213 == *(v353 + 94) - 1)
              {
                v215 = 54;
              }

              v226.i64[0] = 0x1000100010001;
              v226.i64[1] = 0x1000100010001;
              if ((v223 & 0x8000000000000000) == 0 && (*(v354 + 48) & 0x20) != 0)
              {
                v227 = *(v354 + 8);
                if (*(*(v353 + 8) + 2 * v213))
                {
                  if (v224 < 5)
                  {
                    v228 = 0;
                    v229 = 0;
                    goto LABEL_463;
                  }

                  if (v224 < 0x11)
                  {
                    v229 = 0;
                    v228 = 0;
                    goto LABEL_458;
                  }

                  v230 = 16;
                  if ((v223 & 0xF) != 0)
                  {
                    v230 = v223 & 0xF;
                  }

                  v228 = v223 - v230;
                  v231 = (v227 + 142);
                  v232 = 0uLL;
                  v233 = *(*(v353 + 8) + 2 * v213);
                  v234 = 0uLL;
                  do
                  {
                    a4 = (v231 - 8);
                    a6 = (v231 + 16);
                    a7 = (v231 + 24);
                    a8 = (v231 + 32);
                    v235.i16[0] = *(v231 - 64);
                    v235.i16[1] = *(v231 - 56);
                    v235.i16[2] = *(v231 - 48);
                    v235.i16[3] = *(v231 - 40);
                    v235.i16[4] = *(v231 - 32);
                    v235.i16[5] = *(v231 - 24);
                    v235.i16[6] = *(v231 - 16);
                    v235.i16[7] = *(v231 - 8);
                    v236.i16[0] = *v231;
                    v236.i16[1] = v231[8];
                    v236.i16[2] = v231[16];
                    v236.i16[3] = v231[24];
                    v236.i16[4] = v231[32];
                    v236.i16[5] = v231[40];
                    v236.i16[6] = v231[48];
                    v236.i16[7] = v231[56];
                    v232 = vaddq_s16(vbicq_s8(v226, vshrq_n_u16(v235, 5uLL)), v232);
                    v234 = vaddq_s16(vbicq_s8(v226, vshrq_n_u16(v236, 5uLL)), v234);
                    v233 -= 16;
                    v231 += 128;
                  }

                  while (v230 != v233);
                  v229 = vaddvq_s16(vaddq_s16(v234, v232));
                  v23 = a1;
                  if (v230 >= 5)
                  {
LABEL_458:
                    v237 = v223 & 3;
                    if ((v223 & 3) == 0)
                    {
                      v237 = 4;
                    }

                    v238 = v227 + 16 * v228;
                    v239 = v237 + v228;
                    v228 = v223 - v237;
                    v240 = v229;
                    v241 = (v238 + 46);
                    v242 = v239 - v223;
                    do
                    {
                      v243.i16[0] = *(v241 - 16);
                      v243.i16[1] = *(v241 - 8);
                      v243.i16[2] = *v241;
                      v243.i16[3] = v241[8];
                      v240 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v243, 5uLL)), v240);
                      v241 += 32;
                      v242 += 4;
                    }

                    while (v242);
                    v229 = vaddv_s16(v240);
                  }

LABEL_463:
                  v244 = v223 - v228;
                  v245 = (v227 + 16 * v228 + 14);
                  do
                  {
                    v246 = *v245;
                    v245 += 8;
                    v229 += ((v246 >> 5) & 1) == 0;
                    --v244;
                  }

                  while (v244);
                }

                else
                {
                  v223 = 0;
                  v229 = 0;
                }

                if ((*(v227 + 16 * v223 + 14) & 0x20) != 0)
                {
                  LOWORD(v224) = v224 - v229 + *(v354 + 56);
                }

                else
                {
                  LOWORD(v224) = v229;
                }
              }

              v247 = v339 + 1 + v224;
              a5 = v213 + v214;
              v248 = v359;
              v249 = *(v359 + 36);
              if (*(v359 + 37) <= v249)
              {
                v249 = sub_18194C8AC(v359, v215, v247, v349, a5, a6, a7, a8);
              }

              else
              {
                *(v359 + 36) = v249 + 1;
                v250 = &v359[17][5 * v249];
                *v250 = v215;
                *(v250 + 2) = 0;
                *(v250 + 4) = v247;
                *(v250 + 8) = v349;
                *(v250 + 12) = a5;
                *(v250 + 1) = 0;
                *(v250 + 24) = 0;
                *(v250 + 32) = 0;
                *(v250 + 16) = 0;
              }

              if (!*(*v359 + 103))
              {
                if (v249 < 0)
                {
                  v249 = *(v359 + 36) - 1;
                }

                v248 = v359;
                v251 = &v359[17][5 * v249];
                if (*(v251 + 1))
                {
                  sub_18194CB90(v359, v251, v222, 0xFFFFFFFE);
                }

                else if (v222)
                {
                  *(v251 + 16) = v222;
                  *(v251 + 1) = -2;
                }
              }

              v252 = *(v248 + 36);
              if (v252 >= 1)
              {
                *(&v248[17][5 * v252 - 4] - 3) = 144;
              }

              if (++v213 >= *(v353 + 94))
              {
                goto LABEL_405;
              }

              continue;
            }
          }

          goto LABEL_382;
        }
      }

      else
      {
        sub_18195E17C(v16, v14, v352, a4, a5, a6, a7, a8);
        v146.i64[0] = 0x1000100010001;
        v146.i64[1] = 0x1000100010001;
        v342 = 1;
        if (!*(v143 + 72))
        {
          goto LABEL_318;
        }
      }

      v149 = *(v93 + 4 * v355);
      v150 = *(v16 + 36);
      if (*(v16 + 37) <= v150)
      {
        sub_18194C8AC(v16, 75, 0, v149, 0, a6, a7, a8);
      }

      else
      {
        *(v16 + 36) = v150 + 1;
        v151 = &v16[17][5 * v150];
        *v151 = 75;
        *(v151 + 8) = v149;
        *(v151 + 12) = 0;
        *(v151 + 28) = 0;
        *(v151 + 20) = 0;
        *(v151 + 36) = 0;
      }

      *(v23 + 17) = v358;
      v152 = *(v143 + 72);
      v153 = *v23;
      if (v152)
      {
        v154 = sub_1818C7FEC(v153, v152, 0, 0);
      }

      else
      {
        v154 = 0;
      }

      v146.i64[0] = 0x1000100010001;
      v146.i64[1] = 0x1000100010001;
      if (*(v153 + 103))
      {
        if (!v154)
        {
LABEL_317:
          v23 = a1;
          *(a1 + 68) = 0;
          goto LABEL_318;
        }
      }

      else
      {
        sub_1818DD640(a1, v154, v346, 16, a5, a6, a7, a8);
        v146.i64[0] = 0x1000100010001;
        v146.i64[1] = 0x1000100010001;
        if (!v154)
        {
          goto LABEL_317;
        }
      }

      sub_1819439E0(v153, v154);
      v146.i64[0] = 0x1000100010001;
      v146.i64[1] = 0x1000100010001;
      goto LABEL_317;
    }
  }

  else
  {
    LODWORD(v142) = *(v98 + 2);
    v143 = *v98;
    if (v143)
    {
      goto LABEL_285;
    }
  }

  v329 = v321;
LABEL_575:
  v293 = v324;
  if (v324)
  {
    v294 = *(v16 + 36);
    if (*(v16 + 37) <= v294)
    {
      sub_18194C8AC(v16, 9, 0, v324, 0, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v294 + 1;
      v295 = &v16[17][5 * v294];
      *v295 = 9;
      *(v295 + 8) = v324;
      *(v295 + 12) = 0;
      *(v295 + 28) = 0;
      *(v295 + 20) = 0;
      *(v295 + 36) = 0;
    }

    if (*(*v16 + 103))
    {
      v296 = &byte_1EA831A58;
    }

    else
    {
      v296 = &v16[17][5 * v316];
    }

    *(v296 + 2) = *(v16 + 36);
  }

  if (!v325)
  {
LABEL_604:
    if ((*(v14 + 48) & 0x80) != 0)
    {
      goto LABEL_611;
    }

    goto LABEL_605;
  }

  v297 = *(v16 + 36);
  if (*(v16 + 37) <= v297)
  {
    sub_18194C8AC(v16, 17, v326, v329, 0, a6, a7, a8);
  }

  else
  {
    *(v16 + 36) = v297 + 1;
    v298 = &v16[17][5 * v297];
    *v298 = 17;
    *(v298 + 4) = v326;
    *(v298 + 8) = v329;
    *(v298 + 12) = 0;
    *(v298 + 28) = 0;
    *(v298 + 20) = 0;
    *(v298 + 36) = 0;
  }

  v299 = *(v16 + 36);
  if (v353)
  {
    if (*(v16 + 37) <= v299)
    {
      sub_18194C8AC(v16, 9, 0, v321, 0, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v299 + 1;
      v300 = &v16[17][5 * v299];
      *v300 = 9;
      *(v300 + 8) = v321;
      *(v300 + 12) = 0;
      *(v300 + 28) = 0;
      *(v300 + 20) = 0;
      *(v300 + 36) = 0;
    }
  }

  else
  {
    if (v339)
    {
      if (*(v16 + 37) <= v299)
      {
        sub_18194C8AC(v16, 54, v344, v321, v339, a6, a7, a8);
      }

      else
      {
        *(v16 + 36) = v299 + 1;
        v301 = &v16[17][5 * v299];
        *v301 = 54;
        *(v301 + 4) = v344;
        *(v301 + 8) = v321;
        *(v301 + 12) = v339;
        *(v301 + 24) = 0;
        *(v301 + 32) = 0;
        *(v301 + 16) = 0;
      }

      v302 = *(v16 + 36);
      if (v302 >= 1)
      {
        *(&v16[17][5 * v302 - 4] - 3) = 144;
      }
    }

    else
    {
      v302 = *(v16 + 36);
    }

    if (*(v16 + 37) <= v302)
    {
      sub_18194C8AC(v16, 31, v320, v321, v344, a6, a7, a8);
    }

    else
    {
      *(v16 + 36) = v302 + 1;
      v303 = &v16[17][5 * v302];
      *v303 = 31;
      *(v303 + 4) = v320;
      *(v303 + 8) = v321;
      *(v303 + 12) = v344;
      *(v303 + 24) = 0;
      *(v303 + 32) = 0;
      *(v303 + 16) = 0;
    }

    sub_1819872F0(v23, 2, v14, v293, a5, a6, a7, a8);
  }

  v304 = v16[3];
  v305 = ~v329;
  if (*(v304 + 72) + *(v304 + 76) >= 0)
  {
    *(*(v304 + 80) + 4 * v305) = *(v16 + 36);
    goto LABEL_604;
  }

  sub_18195CB84(v304, v16, v305);
  if ((*(v14 + 48) & 0x80) != 0)
  {
    goto LABEL_611;
  }

LABEL_605:
  v306 = *(v93 + 4 * v142);
  v307 = v344 + 1;
  v308 = *(v14 + 56);
  v309 = *(v16 + 36);
  if (*(v16 + 37) <= v309)
  {
    sub_18194C8AC(v16, 97, v307, v308, v306, a6, a7, a8);
    if (!v342)
    {
LABEL_609:
      sub_18195E17C(v16, v14, 0, v308, v306, a6, a7, a8);
    }
  }

  else
  {
    *(v16 + 36) = v309 + 1;
    v310 = &v16[17][5 * v309];
    *v310 = 97;
    *(v310 + 4) = v307;
    *(v310 + 8) = v308;
    *(v310 + 12) = v306;
    *(v310 + 24) = 0;
    *(v310 + 32) = 0;
    *(v310 + 16) = 0;
    if (!v342)
    {
      goto LABEL_609;
    }
  }

LABEL_611:
  *a11 = v323;
}

uint64_t sub_1818D61BC(uint64_t a1, char **a2, uint64_t a3, unint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned int a11)
{
  v11 = a8;
  v131 = a7;
  v13 = a4;
  v17 = a11;
  v18 = a10;
  v19 = *(a1 + 16);
  v132 = *(a1 + 72);
  v135 = v132 - 1;
  *(a1 + 72) = v132 - 1;
  if ((a2[6] & 0x80) != 0)
  {
    v20 = 28;
  }

  else
  {
    v20 = 31;
  }

  v130 = v20;
  if (!a10)
  {
    v21 = *(v19 + 144);
    if (*(v19 + 148) <= v21)
    {
      sub_18194CAFC(v19, v130, a4, v135, a6, a7, a7, a8);
    }

    else
    {
      *(v19 + 144) = v21 + 1;
      v22 = *(v19 + 136) + 40 * v21;
      *v22 = v130;
      *(v22 + 2) = 0;
      *(v22 + 4) = a4;
      *(v22 + 8) = v135;
      *(v22 + 12) = a6;
      *(v22 + 16) = a7;
      *(v22 + 1) = -3;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
    }
  }

  v23 = sub_1818D6F14(a1, a2, 0, 0);
  v137 = v19;
  v128 = a5;
  v129 = v11;
  if (!a3 && !v23)
  {
    v31 = 0;
    goto LABEL_102;
  }

  if (*(a2 + 63) != 2)
  {
    v32 = 0;
    if (!a3)
    {
      goto LABEL_29;
    }

    v33 = a3;
    while (1)
    {
      if (*(v33 + 16) != 129 || (*(v33 + 17) & 3) == 0)
      {
        goto LABEL_16;
      }

      if (*(v33 + 18))
      {
        v32 = -1;
      }

      else
      {
        v34 = *(a1 + 152);
        if (!v34)
        {
          v34 = a1;
        }

        v35 = *(v34 + 168);
        if (v35)
        {
          while (*v35 != v33 || *(v35 + 24) != a9)
          {
            v35 = *(v35 + 8);
            if (!v35)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
LABEL_23:
          v35 = sub_1818ED318(a1, v33, a2, a9);
          *(*a1 + 84) = -1;
          if (!v35)
          {
            goto LABEL_16;
          }
        }

        v32 |= *(v35 + 28);
      }

LABEL_16:
      v33 = *(v33 + 64);
      if (!v33)
      {
        goto LABEL_29;
      }
    }
  }

  v32 = -1;
LABEL_29:
  v136 = v13;
  v42 = sub_181980FF0(a1, a2, v25, v26, v27, v28, v29, v30);
  v43 = *(a1 + 60);
  v44 = (v43 + 1);
  *(a1 + 60) = v44 + *(a2 + 27);
  v45 = *(v19 + 144);
  v134 = v43 + 1;
  if (*(v19 + 148) <= v45)
  {
    sub_18194C8AC(v19, 80, a6, v44, 0, v39, v40, v41);
  }

  else
  {
    *(v19 + 144) = v45 + 1;
    v46 = *(v19 + 136) + 40 * v45;
    *v46 = 80;
    *(v46 + 4) = a6;
    *(v46 + 8) = v44;
    *(v46 + 12) = 0;
    *(v46 + 28) = 0;
    *(v46 + 20) = 0;
    *(v46 + 36) = 0;
  }

  v47 = *(a2 + 27);
  if (v47 >= 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = v42 | v32;
    v51 = v43 + 2;
    v52.i64[0] = 0x1000100010001;
    v52.i64[1] = 0x1000100010001;
    while (1)
    {
      if (v50 != -1 && (v49 > 0x1F || ((v50 >> v49) & 1) == 0))
      {
        goto LABEL_35;
      }

      v53 = v49;
      if ((v49 & 0x8000) == 0 && (a2[6] & 0x20) != 0)
      {
        break;
      }

LABEL_34:
      sub_181959FA4(v19, a2, v136, v49, (v51 + v53), v39, v40, v41);
      v52.i64[0] = 0x1000100010001;
      v52.i64[1] = 0x1000100010001;
      LOWORD(v47) = *(a2 + 27);
LABEL_35:
      ++v49;
      --v48;
      if (v49 >= v47)
      {
        goto LABEL_63;
      }
    }

    v54 = a2[1];
    if (!v49)
    {
      v53 = 0;
      goto LABEL_61;
    }

    if (v49 < 5)
    {
      v55 = 0;
      v53 = 0;
LABEL_58:
      v70 = v55 + v48;
      v71 = &v54[16 * v55 + 14];
      do
      {
        v72 = *v71;
        v71 += 16;
        v53 += ((v72 >> 5) & 1) == 0;
      }

      while (!__CFADD__(v70++, 1));
LABEL_61:
      if ((*&v54[16 * ((v49 << 16) >> 16) + 14] & 0x20) != 0)
      {
        v53 = v49 - v53 + *(a2 + 28);
      }

      goto LABEL_34;
    }

    if (v49 >= 0x11)
    {
      if ((v49 & 0xF) != 0)
      {
        v56 = v49 & 0xF;
      }

      else
      {
        v56 = 16;
      }

      v55 = v49 - v56;
      v57 = (v54 + 142);
      v58 = 0uLL;
      v59 = v49;
      v60 = 0uLL;
      do
      {
        v39 = (v57 + 32);
        v40 = (v57 + 40);
        v41 = *(v57 - 64);
        v61.i16[0] = *(v57 - 64);
        v61.i16[1] = *(v57 - 56);
        v61.i16[2] = *(v57 - 48);
        v61.i16[3] = *(v57 - 40);
        v61.i16[4] = *(v57 - 32);
        v61.i16[5] = *(v57 - 24);
        v61.i16[6] = *(v57 - 16);
        v61.i16[7] = *(v57 - 8);
        v62.i16[0] = *v57;
        v62.i16[1] = v57[8];
        v62.i16[2] = v57[16];
        v62.i16[3] = v57[24];
        v62.i16[4] = v57[32];
        v62.i16[5] = v57[40];
        v62.i16[6] = v57[48];
        v62.i16[7] = v57[56];
        v58 = vaddq_s16(vbicq_s8(v52, vshrq_n_u16(v61, 5uLL)), v58);
        v60 = vaddq_s16(vbicq_s8(v52, vshrq_n_u16(v62, 5uLL)), v60);
        v59 -= 16;
        v57 += 128;
      }

      while (v56 != v59);
      v53 = vaddvq_s16(vaddq_s16(v60, v58));
      if (v56 < 5)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v63 = v49 & 3;
    if ((v49 & 3) == 0)
    {
      v63 = 4;
    }

    v64 = &v54[16 * v55];
    v65 = v55 + v48;
    v55 = v49 - v63;
    v66 = v53;
    v67 = (v64 + 46);
    v68 = v63 + v65;
    do
    {
      v69.i16[0] = *(v67 - 16);
      v69.i16[1] = *(v67 - 8);
      v69.i16[2] = *v67;
      v69.i16[3] = v67[8];
      v66 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v69, 5uLL)), v66);
      v67 += 32;
      v68 += 4;
    }

    while (v68);
    v53 = vaddv_s16(v66);
    goto LABEL_58;
  }

LABEL_63:
  if (!a3)
  {
    v31 = v134;
    v17 = a11;
    v18 = a10;
    v13 = v136;
    goto LABEL_101;
  }

  v74 = *(v19 + 144);
  v75 = a3;
  do
  {
    if (*(v75 + 16) == 129 && *(v75 + 17) == 1)
    {
      if (*(v75 + 18))
      {
        if (!*(a1 + 152))
        {
          sub_181982280(a1, v75, a2, v134);
        }
      }

      else
      {
        v76 = sub_1818E7DFC(a1, v36, v37, v44, v38, v39, v40, v41);
        v77 = *(a1 + 152);
        if (!v77)
        {
          v77 = a1;
        }

        v78 = *(v77 + 168);
        if (v78)
        {
          while (*v78 != v75 || *(v78 + 24) != a9)
          {
            v78 = *(v78 + 8);
            if (!v78)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
LABEL_74:
          v78 = sub_1818ED318(a1, v75, a2, a9);
          *(*a1 + 84) = -1;
          if (!v78)
          {
            goto LABEL_65;
          }
        }

        if (*v75)
        {
          v79 = (*(*a1 + 49) & 0x20) == 0;
        }

        else
        {
          v79 = 0;
        }

        v38 = (*(a1 + 60) + 1);
        *(a1 + 60) = v38;
        v80 = *(v78 + 16);
        v81 = *(v76 + 144);
        if (*(v76 + 148) <= v81)
        {
          v81 = sub_18194C8AC(v76, 48, v134, v135, v38, v39, v40, v41);
        }

        else
        {
          *(v76 + 144) = v81 + 1;
          v82 = *(v76 + 136) + 40 * v81;
          *v82 = 48;
          *(v82 + 4) = v134;
          *(v82 + 8) = v135;
          *(v82 + 12) = v38;
          *(v82 + 24) = 0;
          *(v82 + 32) = 0;
          *(v82 + 16) = 0;
        }

        if (!*(*v76 + 103))
        {
          if (v81 < 0)
          {
            v81 = *(v76 + 144) - 1;
          }

          v36 = *(v76 + 136) + 40 * v81;
          if (*(v36 + 1))
          {
            sub_18194CB90(v76, v36, v80, 0xFFFFFFFC);
          }

          else if (v80)
          {
            *(v36 + 16) = v80;
            *(v36 + 1) = -4;
          }
        }

        v83 = *(v76 + 144);
        if (v83 >= 1)
        {
          *(*(v76 + 136) + 40 * v83 - 38) = v79;
        }
      }
    }

LABEL_65:
    v75 = *(v75 + 64);
  }

  while (v75);
  v84 = *(v19 + 144);
  v85 = v74 < v84;
  v31 = v134;
  v17 = a11;
  v18 = a10;
  v13 = v136;
  if (v85)
  {
    if (*(v19 + 148) <= v84)
    {
      sub_18194CAFC(v19, v130, v136, v135, a6, v131, v40, v41);
    }

    else
    {
      *(v19 + 144) = v84 + 1;
      v86 = *(v19 + 136) + 40 * v84;
      *v86 = v130;
      *(v86 + 2) = 0;
      *(v86 + 4) = v136;
      *(v86 + 8) = v135;
      *(v86 + 12) = a6;
      *(v86 + 16) = v131;
      *(v86 + 1) = -3;
      *(v86 + 24) = 0;
      *(v86 + 32) = 0;
    }

    v17 = 0xFFFFFFFFLL;
  }

LABEL_101:
  sub_1818D7680(a1, a2, v31, 0, 0, 0, v40, v41);
LABEL_102:
  if (*(a2 + 63) != 2)
  {
    sub_1819816BC(a1, a2, v13, v128, 0, v17);
    v26 = v129 != 0;
    v87 = *(v19 + 144);
    if (*(v19 + 148) <= v87)
    {
      sub_18194C8AC(v19, 130, v13, v26, 0, v28, v29, v30);
      if (*(a1 + 30))
      {
        goto LABEL_107;
      }

LABEL_113:
      if (!*(*v19 + 103))
      {
        v91 = *(v19 + 136) + 40 * *(v19 + 144);
        *(v91 - 39) = -5;
        *(v91 - 24) = a2;
      }
    }

    else
    {
      *(v19 + 144) = v87 + 1;
      v88 = *(v19 + 136) + 40 * v87;
      *v88 = 130;
      *(v88 + 4) = v13;
      *(v88 + 8) = v26;
      *(v88 + 12) = 0;
      *(v88 + 28) = 0;
      *(v88 + 20) = 0;
      *(v88 + 36) = 0;
      if (!*(a1 + 30))
      {
        goto LABEL_113;
      }

LABEL_107:
      v89 = *a2;
      if (*a2)
      {
        for (i = "sqlite_stat1"; ; ++i)
        {
          if (*v89 == *i)
          {
            if (!*v89)
            {
              goto LABEL_113;
            }
          }

          else if (byte_181A20298[*v89] != byte_181A20298[*i])
          {
            break;
          }

          ++v89;
        }
      }
    }

    if (v18)
    {
      v92 = *(v19 + 144);
      if (v92 >= 1)
      {
        *(*(v19 + 136) + 40 * v92 - 38) = 4;
      }
    }

    if ((v17 & 0x80000000) == 0 && v17 != v13)
    {
      v93 = *(v19 + 144);
      if (*(v19 + 148) <= v93)
      {
        sub_18194C8AC(v19, 130, v17, 0, 0, v28, v29, v30);
      }

      else
      {
        *(v19 + 144) = v93 + 1;
        v94 = *(v19 + 136) + 40 * v93;
        *v94 = 130;
        *(v94 + 4) = v17;
        *(v94 + 8) = 0u;
        *(v94 + 24) = 0u;
      }
    }

    v95 = *(v19 + 144);
    if (v95 >= 1)
    {
      *(*(v19 + 136) + 40 * v95 - 38) = 2 * (v18 == 2);
    }
  }

  if ((*(*a1 + 49) & 0x40) != 0)
  {
    v96 = a2[12];
    v97 = **a2;
    if (v97)
    {
      v98 = 0;
      v99 = (*a2 + 1);
      do
      {
        v98 = -1640531535 * (v98 + (v97 & 0xDF));
        v100 = *v99++;
        v97 = v100;
      }

      while (v100);
    }

    else
    {
      v98 = 0;
    }

    v101 = v96 + 80;
    v102 = *(v96 + 12);
    if (v102)
    {
      v101 = (v102 + 16 * (v98 % *v101));
      v103 = *v101;
      if (*v101)
      {
LABEL_133:
        v104 = (v101 + 2);
        do
        {
          v104 = *v104;
          if (v98 == *(v104 + 8))
          {
            v105 = v104[3];
            for (j = *a2; ; ++j)
            {
              if (*v105 == *j)
              {
                if (!*v105)
                {
                  goto LABEL_144;
                }
              }

              else if (byte_181A20298[*v105] != byte_181A20298[*j])
              {
                break;
              }

              ++v105;
            }
          }

          --v103;
        }

        while (v103);
        v107 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_172;
        }

LABEL_147:
        while (2)
        {
          v108 = sub_181984B88(a1, a2, v107, 0, v27, v28, v29, v30);
          if (v108)
          {
            v109 = v108;
            v110 = sub_1818E7DFC(a1, v24, v25, v26, v27, v28, v29, v30);
            v111 = *(a1 + 152);
            if (!v111)
            {
              v111 = a1;
            }

            v112 = *(v111 + 168);
            if (v112)
            {
              while (*v112 != v109 || *(v112 + 24) != 2)
              {
                v112 = *(v112 + 8);
                if (!v112)
                {
                  goto LABEL_151;
                }
              }
            }

            else
            {
LABEL_151:
              v112 = sub_1818ED318(a1, v109, a2, 2);
              *(*a1 + 84) = -1;
              if (!v112)
              {
                goto LABEL_146;
              }
            }

            if (*v109)
            {
              v113 = (*(*a1 + 49) & 0x20) == 0;
            }

            else
            {
              v113 = 0;
            }

            v27 = (*(a1 + 60) + 1);
            *(a1 + 60) = v27;
            v114 = *(v112 + 16);
            v115 = *(v110 + 144);
            if (*(v110 + 148) <= v115)
            {
              v115 = sub_18194C8AC(v110, 48, v31, 0, v27, v28, v29, v30);
            }

            else
            {
              *(v110 + 144) = v115 + 1;
              v116 = *(v110 + 136) + 40 * v115;
              *v116 = 48;
              *(v116 + 4) = v31;
              *(v116 + 8) = 0;
              *(v116 + 12) = v27;
              *(v116 + 24) = 0;
              *(v116 + 32) = 0;
              *(v116 + 16) = 0;
            }

            if (!*(*v110 + 103))
            {
              if (v115 < 0)
              {
                v115 = *(v110 + 144) - 1;
              }

              v24 = *(v110 + 136) + 40 * v115;
              if (*(v24 + 1))
              {
                sub_18194CB90(v110, v24, v114, 0xFFFFFFFC);
              }

              else if (v114)
              {
                *(v24 + 16) = v114;
                *(v24 + 1) = -4;
              }
            }

            v117 = *(v110 + 144);
            if (v117 >= 1)
            {
              *(*(v110 + 136) + 40 * v117 - 38) = v113;
            }
          }

LABEL_146:
          v107 = *(v107 + 24);
          if (!v107)
          {
            goto LABEL_172;
          }

          continue;
        }
      }
    }

    else
    {
      v103 = *(v96 + 21);
      if (v103)
      {
        goto LABEL_133;
      }
    }

    v104 = &qword_1EA831A30;
LABEL_144:
    v107 = v104[2];
    if (v107)
    {
      goto LABEL_147;
    }
  }

LABEL_172:
  if (a3)
  {
    while (2)
    {
      if (*(a3 + 16) == 129 && *(a3 + 17) == 2)
      {
        if (*(a3 + 18))
        {
          if (!*(a1 + 152))
          {
            sub_181982280(a1, a3, a2, v31);
          }
        }

        else
        {
          v118 = sub_1818E7DFC(a1, v24, v25, v26, v27, v28, v29, v30);
          v119 = *(a1 + 152);
          if (!v119)
          {
            v119 = a1;
          }

          v120 = *(v119 + 168);
          if (v120)
          {
            while (*v120 != a3 || *(v120 + 24) != a9)
            {
              v120 = *(v120 + 8);
              if (!v120)
              {
                goto LABEL_183;
              }
            }
          }

          else
          {
LABEL_183:
            v120 = sub_1818ED318(a1, a3, a2, a9);
            *(*a1 + 84) = -1;
            if (!v120)
            {
              goto LABEL_174;
            }
          }

          if (*a3)
          {
            v121 = (*(*a1 + 49) & 0x20) == 0;
          }

          else
          {
            v121 = 0;
          }

          v27 = (*(a1 + 60) + 1);
          *(a1 + 60) = v27;
          v122 = *(v120 + 16);
          v123 = *(v118 + 144);
          if (*(v118 + 148) <= v123)
          {
            v123 = sub_18194C8AC(v118, 48, v31, v135, v27, v28, v29, v30);
          }

          else
          {
            *(v118 + 144) = v123 + 1;
            v124 = *(v118 + 136) + 40 * v123;
            *v124 = 48;
            *(v124 + 4) = v31;
            *(v124 + 8) = v135;
            *(v124 + 12) = v27;
            *(v124 + 24) = 0;
            *(v124 + 32) = 0;
            *(v124 + 16) = 0;
          }

          if (!*(*v118 + 103))
          {
            if (v123 < 0)
            {
              v123 = *(v118 + 144) - 1;
            }

            v24 = *(v118 + 136) + 40 * v123;
            if (*(v24 + 1))
            {
              sub_18194CB90(v118, v24, v122, 0xFFFFFFFC);
            }

            else if (v122)
            {
              *(v24 + 16) = v122;
              *(v24 + 1) = -4;
            }
          }

          v125 = *(v118 + 144);
          if (v125 >= 1)
          {
            *(*(v118 + 136) + 40 * v125 - 38) = v121;
          }
        }
      }

LABEL_174:
      a3 = *(a3 + 64);
      if (!a3)
      {
        break;
      }

      continue;
    }
  }

  result = *(v137 + 24);
  v127 = -v132;
  if (*(result + 72) + *(result + 76) < 0)
  {

    return sub_18195CB84(result, v137, v127);
  }

  else
  {
    *(*(result + 80) + 4 * v127) = *(v137 + 144);
  }

  return result;
}

uint64_t sub_1818D6F14(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v4 = *(*a1 + 48);
  if ((v4 & 0x4000) == 0 || *(a2 + 63))
  {
    return 0;
  }

  if (a3)
  {
    v6 = a2[9];
    v7 = 0;
    result = 1;
    if (!v6)
    {
LABEL_7:
      v8 = a2[12];
      v9 = **a2;
      if (v9)
      {
        v10 = 0;
        v11 = (*a2 + 1);
        do
        {
          v10 = -1640531535 * (v10 + (v9 & 0xDF));
          v12 = *v11++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v10 = 0;
      }

      v24 = (v8 + 80);
      v25 = *(v8 + 12);
      if (v25)
      {
        v24 = (v25 + 16 * (v10 % *v24));
        v26 = *v24;
        if (*v24)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v26 = *(v8 + 21);
        if (v26)
        {
LABEL_36:
          v27 = v24 + 2;
          do
          {
            v27 = *v27;
            if (v10 == v27[8])
            {
              v28 = *(v27 + 3);
              for (i = *a2; ; ++i)
              {
                if (*v28 == *i)
                {
                  if (!*v28)
                  {
                    j = *(v27 + 2);
                    if (j)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_48;
                  }
                }

                else if (byte_181A20298[*v28] != byte_181A20298[*i])
                {
                  break;
                }

                ++v28;
              }
            }

            --v26;
          }

          while (v26);
          for (j = qword_1EA831A40; j; j = *(j + 24))
          {
LABEL_71:
            v37 = *(j + 40);
            if (v37 >= 1)
            {
              v38 = 0;
              v39 = *(a2 + 27);
              while (v39 < 1)
              {
LABEL_87:
                if (++v38 == v37)
                {
                  goto LABEL_70;
                }
              }

              v40 = 0;
              while (1)
              {
                if ((*(a3 + 4 * v40) & 0x80000000) == 0 || a4 && v40 == *(a2 + 26))
                {
                  v41 = &a2[1][16 * v40];
                  if (*(j + 64 + 16 * v38 + 8))
                  {
                    v42 = *v41;
                    for (k = *(j + 64 + 16 * v38 + 8); ; ++k)
                    {
                      if (*v42 == *k)
                      {
                        if (!*v42)
                        {
                          goto LABEL_89;
                        }
                      }

                      else if (byte_181A20298[*v42] != byte_181A20298[*k])
                      {
                        goto LABEL_76;
                      }

                      ++v42;
                    }
                  }

                  if (*(v41 + 14))
                  {
                    break;
                  }
                }

LABEL_76:
                if (++v40 == v39)
                {
                  goto LABEL_87;
                }
              }

LABEL_89:
              if ((v4 & 0x800000000) == 0 && *(j + 46))
              {
                return 2;
              }

              v7 = 1;
            }

LABEL_70:
            ;
          }

LABEL_48:
          if (!v7)
          {
            return 0;
          }

          return result;
        }
      }

      j = qword_1EA831A40;
      if (qword_1EA831A40)
      {
        goto LABEL_71;
      }

      goto LABEL_48;
    }

    while (1)
    {
      v13 = *(v6 + 10);
      if (v13 >= 1)
      {
        v14 = (v6 + 64);
        while (1)
        {
          v16 = *v14;
          v14 += 4;
          v15 = v16;
          if ((*(a3 + 4 * v16) & 0x80000000) == 0 || a4 && v15 == *(a2 + 26))
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_13;
          }
        }

        v17 = *a2;
        v18 = *(v6 + 2);
        if (*a2)
        {
          if (v18)
          {
            while (1)
            {
              if (*v17 == *v18)
              {
                if (!*v17)
                {
                  goto LABEL_28;
                }
              }

              else if (byte_181A20298[*v17] != byte_181A20298[*v18])
              {
                break;
              }

              ++v17;
              ++v18;
            }
          }
        }

        else if (!v18)
        {
LABEL_28:
          v7 = 1;
          result = 2;
          goto LABEL_13;
        }

        v7 = 1;
      }

LABEL_13:
      v6 = *(v6 + 1);
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  v19 = a2[12];
  v20 = **a2;
  if (v20)
  {
    v21 = 0;
    v22 = (*a2 + 1);
    do
    {
      v21 = -1640531535 * (v21 + (v20 & 0xDF));
      v23 = *v22++;
      v20 = v23;
    }

    while (v23);
  }

  else
  {
    v21 = 0;
  }

  v31 = (v19 + 80);
  v32 = *(v19 + 12);
  if (v32)
  {
    v31 = (v32 + 16 * (v21 % *v31));
    v33 = *v31;
    if (*v31)
    {
      goto LABEL_53;
    }

LABEL_64:
    if (qword_1EA831A40)
    {
      return 1;
    }

    goto LABEL_65;
  }

  v33 = *(v19 + 21);
  if (!v33)
  {
    goto LABEL_64;
  }

LABEL_53:
  v34 = v31 + 2;
  while (1)
  {
    v34 = *v34;
    if (v21 == v34[8])
    {
      break;
    }

LABEL_54:
    if (!--v33)
    {
      if (qword_1EA831A40)
      {
        return 1;
      }

      goto LABEL_65;
    }
  }

  v35 = *(v34 + 3);
  for (m = *a2; *v35 != *m; ++m)
  {
    if (byte_181A20298[*v35] != byte_181A20298[*m])
    {
      goto LABEL_54;
    }

LABEL_58:
    ++v35;
  }

  if (*v35)
  {
    goto LABEL_58;
  }

  if (*(v34 + 2))
  {
    return 1;
  }

LABEL_65:
  result = 1;
  if (!a2[9])
  {
    return 0;
  }

  return result;
}

uint64_t sub_1818D72E8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v14 = *(a1 + 16);
  if (a6)
  {
    v15 = *(a2 + 72);
    if (v15)
    {
      v16 = *(a1 + 72) - 1;
      *(a1 + 72) = v16;
      *a6 = v16;
      *(a1 + 68) = a3 + 1;
      v17 = (a1 + 68);
      v18 = *a6;
      v19 = *a1;
      v9 = sub_1818C7FEC(*a1, v15, 0, 0);
      if (!*(v19 + 103))
      {
        sub_1818DD640(a1, v9, v18, 16, v20, a6, a7, a8);
      }

      if (v9)
      {
        sub_1819439E0(v19, v9);
        v9 = 0;
      }
    }

    else
    {
      v17 = a6;
    }

    *v17 = 0;
  }

  if (a5 && (*(a2 + 99) & 8) != 0)
  {
    v21 = 94;
  }

  else
  {
    v21 = 96;
  }

  v22 = *(a2 + v21);
  if (v22 == 1)
  {
    if (*(a1 + 31))
    {
      v23 = *(a1 + 31) - 1;
      *(a1 + 31) = v23;
      v24 = *(a1 + 4 * v23 + 184);
      v47 = a4;
      v48 = v24;
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v24 = *(a1 + 60) + 1;
      *(a1 + 60) = v24;
      v47 = a4;
      v48 = v24;
      if (!v9)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v25 = *(a1 + 44);
    v26 = __OFSUB__(v25, v22);
    v27 = v25 - v22;
    if (v27 < 0 != v26)
    {
      v28 = *(a1 + 60);
      v24 = v28 + 1;
      *(a1 + 60) = v28 + v22;
      v47 = a4;
      v48 = v28 + 1;
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v24 = *(a1 + 48);
      *(a1 + 44) = v27;
      *(a1 + 48) = v24 + v22;
      v47 = a4;
      v48 = v24;
      if (!v9)
      {
        goto LABEL_27;
      }
    }
  }

  if (v24 != v8 || *(v9 + 72))
  {
    v9 = 0;
  }

LABEL_27:
  v49 = v22;
  if (v22)
  {
    v29 = 0;
    v30 = 2 * v22;
    v31 = 8;
    v32 = v48;
    while (1)
    {
      v33 = *(a2 + 8);
      if (!v9)
      {
        break;
      }

      v34 = *(*(v9 + 8) + v29);
      v35 = *(v33 + v29);
      if (v34 == 65534 || v34 != v35)
      {
        if (v35 == 65534)
        {
          goto LABEL_36;
        }

LABEL_43:
        sub_181959FA4(*(a1 + 16), *(a2 + 24), a3, v35, v32, a6, a7, a8);
LABEL_44:
        if ((*(*(a2 + 8) + v29) & 0x80000000) == 0)
        {
          v41 = *(v14 + 144);
          if (v41 >= 1)
          {
            v42 = *(v14 + 136) + 40 * v41;
            if (*(v42 - 40) == 87 && !*(*v14 + 103))
            {
              sub_1818A3B68(*v14, *(v42 - 39), *(v42 - 24));
              *(v42 - 24) = 0;
              *(v42 - 40) = 187;
            }
          }
        }
      }

      v29 += 2;
      v32 = (v32 + 1);
      v31 += 24;
      if (v30 == v29)
      {
        goto LABEL_51;
      }
    }

    v35 = *(v33 + v29);
    if (v35 != 65534)
    {
      goto LABEL_43;
    }

LABEL_36:
    v37 = v14;
    *(a1 + 68) = a3 + 1;
    v38 = *(*(a2 + 80) + v31);
    v39 = *a1;
    if (v38)
    {
      v40 = sub_1818C7FEC(*a1, v38, 0, 0);
      if (*(v39 + 103))
      {
LABEL_39:
        if (v40)
        {
          sub_1819439E0(v39, v40);
        }

        *(a1 + 68) = 0;
        v14 = v37;
        goto LABEL_44;
      }
    }

    else
    {
      v40 = 0;
      if (*(v39 + 103))
      {
        goto LABEL_39;
      }
    }

    sub_181956EF4(a1, v40, v32);
    goto LABEL_39;
  }

LABEL_51:
  if (v47)
  {
    v43 = *(v14 + 144);
    if (*(v14 + 148) <= v43)
    {
      sub_18194C8AC(v14, 97, v48, v49, v47, a6, a7, a8);
      if (v49 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_59;
    }

    *(v14 + 144) = v43 + 1;
    v44 = *(v14 + 136) + 40 * v43;
    *v44 = 97;
    *(v44 + 4) = v48;
    *(v44 + 8) = v49;
    *(v44 + 12) = v47;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 16) = 0;
  }

  if (v49 == 1)
  {
LABEL_55:
    if (v48)
    {
      v45 = *(a1 + 31);
      if (v45 <= 7)
      {
        *(a1 + 31) = v45 + 1;
        *(a1 + 4 * v45 + 184) = v48;
      }
    }

    return v48;
  }

LABEL_59:
  if (*(a1 + 44) < v49)
  {
    *(a1 + 44) = v49;
    *(a1 + 48) = v48;
  }

  return v48;
}

void sub_1818D7680(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v113 = *a1;
  if ((*(*a1 + 49) & 0x40) == 0)
  {
    return;
  }

  v9 = a2;
  if (*(a2 + 63))
  {
    return;
  }

  v10 = a5;
  v11 = a4;
  v12 = *(a2 + 96);
  v13 = *(v113 + 32);
  if (v12)
  {
    v14 = (v13 + 24);
    v15 = -1;
    v16 = a1;
    do
    {
      v17 = *v14;
      v14 += 4;
      ++v15;
    }

    while (v17 != v12);
  }

  else
  {
    v15 = -32768;
    v16 = a1;
  }

  v108 = *(v16 + 42);
  v18 = *(a2 + 72);
  v107 = a5;
  v106 = a4;
  if (v18)
  {
    v109 = v15;
    v19 = *(v13 + 32 * v15);
    v111 = a3 + 1;
    v105 = a6;
    v103 = v19;
    while (1)
    {
      v115 = 0;
      v116 = 0;
      v114 = 0;
      if (!v10)
      {
        goto LABEL_30;
      }

      v21 = *v9;
      v22 = *(v18 + 16);
      if (*v9)
      {
        if (v22)
        {
          while (1)
          {
            if (*v21 == *v22)
            {
              if (!*v21)
              {
                goto LABEL_30;
              }
            }

            else if (byte_181A20298[*v21] != byte_181A20298[*v22])
            {
              break;
            }

            ++v21;
            ++v22;
          }
        }
      }

      else if (!v22)
      {
        goto LABEL_30;
      }

      v23 = *(v18 + 40);
      if (v23 < 1)
      {
        goto LABEL_13;
      }

      v24 = (v18 + 64);
      while (1)
      {
        v26 = *v24;
        v24 += 4;
        v25 = v26;
        if ((*(v10 + 4 * v26) & 0x80000000) == 0 || a6 && v25 == *(v9 + 52))
        {
          break;
        }

        if (!--v23)
        {
          goto LABEL_13;
        }
      }

LABEL_30:
      if (*(v16 + 42))
      {
        v31 = sub_181917F20(v113, *(v18 + 16), v19);
        if (!v31)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v31 = sub_1818CA520(v16, 0, *(v18 + 16), v19, a5, v9, a7, a8);
        if (!v31)
        {
          goto LABEL_35;
        }
      }

      if (!sub_181981F28(v16, v31, v18, &v116, &v115, v30, a7, a8))
      {
        v65 = v115;
        if (!v115)
        {
          v114 = *(v18 + 64);
          v65 = &v114;
        }

        v66 = a2;
        if (*(v18 + 40) < 1)
        {
          v69 = 0;
        }

        else
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v70 = v116;
          do
          {
            if (v65[v68] == *(v66 + 52))
            {
              v65[v68] = -1;
            }

            if (*(v113 + 528))
            {
              v71 = (v31 + 52);
              if (v70)
              {
                v71 = (*(v70 + 8) + v67);
              }

              v69 = sub_1818DEFEC(a1, *v31, *(*(v31 + 8) + 16 * *v71), v109) == 2;
              v66 = a2;
            }

            ++v68;
            v67 += 2;
          }

          while (v68 < *(v18 + 40));
        }

        v16 = a1;
        if (v109 != 1 && *(*(*(*a1 + 32) + 32 * v109 + 8) + 17))
        {
          sub_1819570CC(a1, v109, *(v31 + 40), 0, *v31);
        }

        ++*(a1 + 56);
        a6 = v105;
        v11 = v106;
        v10 = v107;
        a7 = a3;
        if (a3)
        {
          sub_181982A08(a1, v109, v31, v116, v18, v65, a3, 0xFFFFFFFFLL, v69);
        }

        if (v106)
        {
          v73 = *(a1 + 152);
          if (!v73)
          {
            v73 = a1;
          }

          v74 = *(v73 + 168);
          if (!v74 || ((v75 = *v74, v75 != *(v18 + 48)) || *(v18 + 45) != 8) && (v75 != *(v18 + 56) || *(v18 + 46) != 8))
          {
            sub_181982A08(a1, v109, v31, v116, v18, v65, v106, 1, v69);
          }
        }

        v9 = a2;
        v19 = v103;
        if (!v115)
        {
          goto LABEL_13;
        }

        sub_181929C84(v113, v115);
        goto LABEL_12;
      }

LABEL_35:
      if (!v108 || *(v113 + 103))
      {
        return;
      }

      v9 = a2;
      if (v31)
      {
        goto LABEL_13;
      }

      v33 = sub_1818E7DFC(v16, v27, v28, v29, a5, a2, a7, a8);
      v34 = *(v33 + 144);
      v35 = *(v18 + 40);
      if (v35 >= 1)
      {
        v36 = 0;
        v37 = (v34 + v35 + 1);
        v38.i64[0] = 0x1000100010001;
        v38.i64[1] = 0x1000100010001;
        while (1)
        {
          v40 = *(v18 + 64 + 16 * v36);
          v41 = v40;
          if ((v40 & 0x8000) == 0)
          {
            v42 = *v18;
            if ((*(*v18 + 48) & 0x20) != 0)
            {
              break;
            }
          }

LABEL_65:
          v63 = v111 + v41;
          v64 = *(v33 + 144);
          if (*(v33 + 148) > v64)
          {
            *(v33 + 144) = v64 + 1;
            v39 = *(v33 + 136) + 40 * v64;
            *v39 = 51;
            *(v39 + 4) = v63;
            *(v39 + 8) = v37;
            *(v39 + 12) = 0;
            *(v39 + 28) = 0;
            *(v39 + 20) = 0;
            *(v39 + 36) = 0;
          }

          else
          {
            sub_18194C8AC(v33, 51, v63, v37, 0, v32, a7, a8);
            v38.i64[0] = 0x1000100010001;
            v38.i64[1] = 0x1000100010001;
          }

          if (++v36 >= *(v18 + 40))
          {
            v34 = *(v33 + 144);
            v16 = a1;
            v19 = v103;
            goto LABEL_79;
          }
        }

        v43 = v40 & 0x7FFF;
        v44 = *(v42 + 8);
        if (v40)
        {
          if (v43 < 5)
          {
            v45 = 0;
            v41 = 0;
            goto LABEL_61;
          }

          if (v43 < 0x11)
          {
            v41 = 0;
            v45 = 0;
            goto LABEL_56;
          }

          if ((v40 & 0xF) != 0)
          {
            v46 = v40 & 0xF;
          }

          else
          {
            v46 = 16;
          }

          v45 = v43 - v46;
          v47 = (v44 + 142);
          v48 = 0uLL;
          v49 = v40 & 0x7FFF;
          v50 = 0uLL;
          do
          {
            a5 = (v47 - 8);
            v32 = (v47 + 8);
            a7 = (v47 + 16);
            a8 = (v47 + 24);
            v51.i16[0] = *(v47 - 64);
            v51.i16[1] = *(v47 - 56);
            v51.i16[2] = *(v47 - 48);
            v51.i16[3] = *(v47 - 40);
            v51.i16[4] = *(v47 - 32);
            v51.i16[5] = *(v47 - 24);
            v51.i16[6] = *(v47 - 16);
            v51.i16[7] = *(v47 - 8);
            v52.i16[0] = *v47;
            v52.i16[1] = v47[8];
            v52.i16[2] = v47[16];
            v52.i16[3] = v47[24];
            v52.i16[4] = v47[32];
            v52.i16[5] = v47[40];
            v52.i16[6] = v47[48];
            v52.i16[7] = v47[56];
            v48 = vaddq_s16(vbicq_s8(v38, vshrq_n_u16(v51, 5uLL)), v48);
            v50 = vaddq_s16(vbicq_s8(v38, vshrq_n_u16(v52, 5uLL)), v50);
            v49 -= 16;
            v47 += 128;
          }

          while (v46 != v49);
          v41 = vaddvq_s16(vaddq_s16(v50, v48));
          a6 = v105;
          v11 = v106;
          v10 = v107;
          if (v46 >= 5)
          {
LABEL_56:
            v53 = v40 & 3;
            if ((v40 & 3) == 0)
            {
              v53 = 4;
            }

            v54 = v44 + 16 * v45;
            v55 = v53 + v45;
            v45 = v43 - v53;
            v56 = v41;
            v57 = (v54 + 46);
            v58 = v55 - v43;
            do
            {
              v59.i16[0] = *(v57 - 16);
              v59.i16[1] = *(v57 - 8);
              v59.i16[2] = *v57;
              v59.i16[3] = v57[8];
              v56 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v59, 5uLL)), v56);
              v57 += 32;
              v58 += 4;
            }

            while (v58);
            v41 = vaddv_s16(v56);
          }

LABEL_61:
          v60 = v43 - v45;
          v61 = (v44 + 16 * v45 + 14);
          do
          {
            v62 = *v61;
            v61 += 8;
            v41 += ((v62 >> 5) & 1) == 0;
            --v60;
          }

          while (v60);
        }

        else
        {
          v41 = 0;
        }

        if ((*(v44 + 16 * v43 + 14) & 0x20) != 0)
        {
          v41 = v40 - v41 + *(v42 + 56);
        }

        goto LABEL_65;
      }

LABEL_79:
      v72 = *(v18 + 44);
      if (*(v33 + 148) > v34)
      {
        *(v33 + 144) = v34 + 1;
        v20 = *(v33 + 136) + 40 * v34;
        *v20 = 158;
        *(v20 + 4) = v72;
        *(v20 + 8) = -1;
        *(v20 + 12) = 0;
        *(v20 + 28) = 0;
        *(v20 + 20) = 0;
        *(v20 + 36) = 0;
      }

      else
      {
        sub_18194C8AC(v33, 158, v72, 0xFFFFFFFFLL, 0, v32, a7, a8);
      }

LABEL_12:
      v9 = a2;
LABEL_13:
      v18 = *(v18 + 8);
      if (!v18)
      {
        v12 = *(v9 + 96);
        break;
      }
    }
  }

  v76 = **v9;
  if (v76)
  {
    v77 = 0;
    v78 = (*v9 + 1);
    do
    {
      v77 = -1640531535 * (v77 + (v76 & 0xDF));
      v79 = *v78++;
      v76 = v79;
    }

    while (v79);
  }

  else
  {
    v77 = 0;
  }

  v80 = (v12 + 80);
  v81 = *(v12 + 96);
  if (!v81)
  {
    v82 = *(v12 + 84);
    if (v82)
    {
      goto LABEL_106;
    }

LABEL_116:
    v83 = &qword_1EA831A30;
LABEL_117:
    v86 = v83[2];
    if (!v86)
    {
      return;
    }

    goto LABEL_118;
  }

  v80 = (v81 + 16 * (v77 % *v80));
  v82 = *v80;
  if (!*v80)
  {
    goto LABEL_116;
  }

LABEL_106:
  v83 = (v80 + 2);
  do
  {
    v83 = *v83;
    if (v77 == *(v83 + 8))
    {
      v84 = v83[3];
      for (i = *v9; ; ++i)
      {
        if (*v84 == *i)
        {
          if (!*v84)
          {
            goto LABEL_117;
          }
        }

        else if (byte_181A20298[*v84] != byte_181A20298[*i])
        {
          break;
        }

        ++v84;
      }
    }

    --v82;
  }

  while (v82);
  v86 = qword_1EA831A40;
  if (qword_1EA831A40)
  {
LABEL_118:
    v87 = v10 != 0;
    do
    {
      v115 = 0;
      v116 = 0;
      if (v10)
      {
        v88 = *(v86 + 40);
        if (v88 < 1)
        {
          goto LABEL_119;
        }

        v89 = 0;
        v90 = *(v9 + 54);
        while (v90 < 1)
        {
LABEL_137:
          if (++v89 == v88)
          {
            goto LABEL_119;
          }
        }

        v91 = 0;
        while (1)
        {
          if ((*(v10 + 4 * v91) & 0x80000000) == 0 || a6 && v91 == *(v9 + 52))
          {
            v92 = *(v9 + 8) + 16 * v91;
            if (*(v86 + 64 + 16 * v89 + 8))
            {
              v93 = *v92;
              for (j = *(v86 + 64 + 16 * v89 + 8); ; ++j)
              {
                if (*v93 == *j)
                {
                  if (!*v93)
                  {
                    goto LABEL_139;
                  }
                }

                else if (byte_181A20298[*v93] != byte_181A20298[*j])
                {
                  goto LABEL_126;
                }

                ++v93;
              }
            }

            if (*(v92 + 14))
            {
              break;
            }
          }

LABEL_126:
          if (++v91 == v90)
          {
            goto LABEL_137;
          }
        }
      }

LABEL_139:
      if (*(v86 + 44) || (*(v113 + 50) & 8) != 0 || *(a1 + 152) || *(a1 + 32))
      {
        if (sub_181981F28(a1, v9, v86, &v116, &v115, v9, a7, a8))
        {
          v9 = a2;
          if (!v108 || *(v113 + 103))
          {
            return;
          }
        }

        else
        {
          v95 = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
          if (v95)
          {
            v96 = v95;
            *v95 = 0x100000001;
            *(v95 + 8) = 0u;
            *(v95 + 56) = 0u;
            *(v95 + 40) = 0u;
            *(v95 + 24) = 0u;
            *(v95 + 8) = 0;
            *(v95 + 72) = 0;
            v97 = *v86;
            *(v95 + 24) = *v86;
            *(v95 + 8) = *v97;
            ++*(v97 + 44);
            LODWORD(v97) = *(a1 + 56);
            *(a1 + 56) = v97 + 1;
            *(v95 + 36) = v97;
            if (v11)
            {
              sub_181983EE4(a1, v95, a2, v116, v86, v115, v11, 0xFFFFFFFFLL);
            }

            if (a3)
            {
              v98 = (*(v113 + 48) >> 35) & 1;
              v99 = *(v86 + v87 + 45) & 0xFD;
              sub_181983EE4(a1, v96, a2, v116, v86, v115, a3, 1);
              v100 = v99 == 8;
              v11 = v106;
              v101 = v100 ? v98 : 1;
              v10 = v107;
              if (!*(v86 + 44))
              {
                if (v101)
                {
                  v102 = *(a1 + 152);
                  if (!v102)
                  {
                    v102 = a1;
                  }

                  *(v102 + 33) = 1;
                }
              }
            }

            v96[1] = 0;
            sub_1818BB5B0(v113, v96);
          }

          v9 = a2;
          if (v115)
          {
            sub_181929C84(v113, v115);
            v9 = a2;
          }
        }
      }

LABEL_119:
      v86 = *(v86 + 24);
    }

    while (v86);
  }
}

uint64_t sub_1818D80A8(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a6;
  v11 = a9;
  v42 = result;
  v12 = *(result + 16);
  v13 = *(a2 + 16);
  if (!v13)
  {
    v30 = 0;
    if ((*(a2 + 48) & 0x80) != 0)
    {
      return result;
    }

    goto LABEL_27;
  }

  v39 = a8;
  v40 = a3;
  v41 = a5;
  v15 = 0;
  v43 = a7;
  v16 = a7 & 2 | (16 * (a9 != 0)) | 1;
  do
  {
    v17 = *(v9 + 4 * v15);
    if (v17)
    {
      if (*(v13 + 72))
      {
        v18 = *(v12 + 144);
        v19 = (v18 + 2);
        if (*(v12 + 148) <= v18)
        {
          result = sub_18194C8AC(v12, 51, v17, v19, 0, a6, a7, a8);
        }

        else
        {
          *(v12 + 144) = v18 + 1;
          v20 = *(v12 + 136) + 40 * v18;
          *v20 = 51;
          *(v20 + 4) = v17;
          *(v20 + 8) = v19;
          *(v20 + 12) = 0;
          *(v20 + 28) = 0;
          *(v20 + 20) = 0;
          *(v20 + 36) = 0;
        }
      }

      v21 = *(v13 + 99);
      if ((v21 & 3) == 2)
      {
        v22 = *(a2 + 48);
        if ((v22 & 0x80) != 0)
        {
          v23 = v16;
        }

        else
        {
          v23 = 16 * (a9 != 0);
        }

        if ((v22 & 0x80) != 0 && !v43)
        {
          result = sub_18198795C(v42, a2, a4, *(v9 + 4 * v15), a5, a6, a7, a8);
          v21 = *(v13 + 99);
          v23 = v16;
        }
      }

      else
      {
        v23 = 16 * (a9 != 0);
      }

      v24 = *(v9 + 4 * v15);
      a5 = (v24 + 1);
      v25 = (v21 & 8) == 0;
      v26 = 94;
      if (v25)
      {
        v26 = 96;
      }

      a6 = *(v13 + v26);
      v27 = *(v12 + 144);
      if (*(v12 + 148) <= v27)
      {
        result = sub_18194CAFC(v12, 138, a4, v24, a5, a6, a7, a8);
      }

      else
      {
        *(v12 + 144) = v27 + 1;
        v28 = *(v12 + 136) + 40 * v27;
        *v28 = 64906;
        *(v28 + 4) = a4;
        *(v28 + 8) = v24;
        *(v28 + 12) = a5;
        *(v28 + 16) = a6;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
      }

      v29 = *(v12 + 144);
      if (v29 >= 1)
      {
        *(*(v12 + 136) + 40 * v29 - 38) = v23;
      }
    }

    ++v15;
    v13 = *(v13 + 40);
    a4 = (a4 + 1);
  }

  while (v13);
  v30 = v15;
  a3 = v40;
  a5 = v41;
  v11 = a9;
  a8 = v39;
  a7 = v43;
  if ((*(a2 + 48) & 0x80) == 0)
  {
LABEL_27:
    v31 = a7 | 1;
    if (!a7)
    {
      v31 = 33;
    }

    if (*(v42 + 30))
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    if (a8)
    {
      v32 |= 8u;
    }

    if (v11)
    {
      v33 = v32 | 0x10;
    }

    else
    {
      v33 = v32;
    }

    v34 = *(v9 + 4 * v30);
    v35 = *(v12 + 144);
    if (*(v12 + 148) <= v35)
    {
      result = sub_18194C8AC(v12, 128, a3, v34, a5, a6, a7, a8);
    }

    else
    {
      *(v12 + 144) = v35 + 1;
      v36 = *(v12 + 136) + 40 * v35;
      *v36 = 128;
      *(v36 + 4) = a3;
      *(v36 + 8) = v34;
      *(v36 + 12) = a5;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 16) = 0;
    }

    if (!*(v42 + 30) && !*(*v12 + 103))
    {
      v37 = *(v12 + 136) + 40 * *(v12 + 144);
      *(v37 - 39) = -5;
      *(v37 - 24) = a2;
    }

    v38 = *(v12 + 144);
    if (v38 >= 1)
    {
      *(*(v12 + 136) + 40 * v38 - 38) = v33;
    }
  }

  return result;
}

void sub_1818D8380(uint64_t a1, __int128 *a2, __int16 a3)
{
  if ((*(a1 + 20) & 0x9000) != 0)
  {
    sub_181943178(a1, a2, a3);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
    if ((*(a2 + 21) & 0x20) == 0)
    {
      *(a1 + 20) = *(a1 + 20) & 0x8FFF | a3;
    }
  }
}

uint64_t sub_1818D83C0(uint64_t result, int a2, int a3)
{
  if (a2 < 67)
  {
    if (a2 != 66)
    {
      return result;
    }

    v8 = *(result + 20);
    if ((v8 & 2) != 0 || (v8 & 0x2C) == 0)
    {
      goto LABEL_29;
    }

    if (*(result + 32) >= 32)
    {
      v11 = *(result + 40);
      *(result + 8) = v11;
      v10 = result;
      *(result + 20) = v8 & 0x2D;
    }

    else
    {
      v10 = result;
      if (sub_1818BB128(result, 32, 0))
      {
        result = v10;
        *(v10 + 22) = 0;
LABEL_29:
        v7 = *(result + 20) & 0xFFD3;
        goto LABEL_30;
      }

      v11 = *(v10 + 8);
    }

    sub_18193CE24(v11, v10);
    result = v10;
    *(v10 + 22) = 1;
    *(v10 + 20) = *(v10 + 20) & 0xFDD1 | 0x202;
    if (a3 != 1)
    {
      sub_1818F1820(v10, a3);
      result = v10;
    }

    goto LABEL_29;
  }

  v4 = *(result + 20);
  if ((v4 & 4) != 0)
  {
    return result;
  }

  if ((v4 & 0x28) != 0)
  {
    if (a2 > 0x45)
    {
      return result;
    }

    if ((v4 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    if (fabs(*result) <= 9.22337204e18 && *result == *result && (*result + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *result = *result;
LABEL_14:
      v7 = v4 & 0xF240 | 4;
LABEL_30:
      *(result + 20) = v7;
    }
  }

  else if ((v4 & 2) != 0)
  {

    return sub_18190FC94(result, 1);
  }

  return result;
}

uint64_t sub_1818D8528(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 20);
    if ((v2 & 0x24) != 0)
    {
      return *a1;
    }

    else if ((v2 & 8) != 0)
    {
      v4 = *a1;
      if (*a1 >= -9.22337204e18)
      {
        if (v4 <= 9.22337204e18)
        {
          return v4;
        }

        else
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        return 0x8000000000000000;
      }
    }

    else if ((v2 & 0x12) != 0 && *(a1 + 8))
    {

      return sub_18193CFCC(a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1819012D0(92237);
    return 0;
  }
}

uint64_t sub_1818D85D8(unsigned __int8 *a1, char a2)
{
  v2 = *(a1 + 1);
  v3 = *(v2 + 8);
  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  if (v4 >= 3)
  {
    v80 = 0;
    if (v4 == 4)
    {
      return *(a1 + 1);
    }

    v7 = a2;
    *a1 = 1;
    if (off_1ED453038)
    {
      v8 = a1;
      v9 = off_1ED453038(410);
      a1 = v8;
      if (v9)
      {
        return 10;
      }
    }

    v10 = a1;
    v5 = sub_1818DC828(a1, *(a1 + 3), *(a1 + 9), 0, &v80);
    if (v5)
    {
      return v5;
    }

    a1 = v10;
    v11 = *(v10 + 3);
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      a1 = v10;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_19;
      }

      v12 = &xmmword_1ED452F28;
    }

    (*v12)(v11);
    a1 = v10;
LABEL_19:
    *(a1 + 3) = 0;
    if (v80)
    {
      *(a1 + 1) = v80;
LABEL_22:
      if (!*a1)
      {
        *a1 = 2;
      }

      return 0;
    }

    v5 = *(a1 + 1);
    if (v5)
    {
      goto LABEL_22;
    }

    v13 = *a1;
    v80 = 0;
    a2 = v7;
    if (v13)
    {
      return v5;
    }

LABEL_26:
    v15 = (a1 + 136);
    v14 = *(a1 + 17);
    v16 = *(a1 + 43);
    v17 = *(v14 + 24);
    if (v17 <= v16)
    {
      v25 = 89062;
      goto LABEL_31;
    }

    v77 = a1[84];
    v18 = *(v14 + 80);
    v19 = *(v14 + 26);
    v20 = *(v14 + 96);
    v21 = (v20 + 2 * v16);
    v22 = *v21;
    v23 = v21[1];
    if ((*(v14 + 20) & 0x80000000) != 0)
    {
      v76 = v3;
      v27 = *(a1 + 43);
      v28 = a2;
      v29 = a1;
      if (sub_1819454C4(v14))
      {
        v25 = 89066;
        goto LABEL_31;
      }

      v20 = *(v14 + 96);
      v17 = *(v14 + 24);
      a1 = v29;
      a2 = v28;
      LODWORD(v16) = v27;
      v3 = v76;
    }

    v24 = v18 + ((v23 | (v22 << 8)) & v19);
    if (v24 < v20 + v17)
    {
      v25 = 89069;
LABEL_31:

      return sub_18193596C(v25, v14);
    }

    if ((a2 & 2) != 0)
    {
      v30 = a2;
      if (*(v14 + 8) && (v31 = *(v14 + 20), v32 = a1, v33 = (*(v14 + 120))(v14, v24), a1 = v32, v31 + v33 + 2 <= (2 * *(v3 + 56) / 3u)) && *(v14 + 24) != 1)
      {
        v26 = 1;
      }

      else
      {
        v34 = a1;
        v35 = sub_1819389F0(a1);
        if (v35)
        {
          return v35;
        }

        v26 = 0;
        a1 = v34;
      }

      a2 = v30;
      if (*(v14 + 8))
      {
LABEL_54:
        if ((a1[1] & 0x20) != 0)
        {
          v39 = *(v3 + 16);
          if (v39)
          {
            v40 = *(a1 + 20);
            do
            {
              if (v39 != a1 && (!v40 || *(v39 + 80) == v40))
              {
                v41 = a1;
                v42 = a2;
                v43 = sub_18193880C(v39, v40, a1);
                a2 = v42;
                v5 = v43;
                a1 = v41;
                v80 = v5;
                if (v5)
                {
                  return v5;
                }

                goto LABEL_66;
              }

              v39 = *(v39 + 40);
            }

            while (v39);
            if (!a1)
            {
              goto LABEL_65;
            }
          }

          a1[1] &= ~0x20u;
LABEL_65:
          v80 = 0;
        }

LABEL_66:
        if (!*(a1 + 16) && *(v2 + 19))
        {
          v44 = *(a1 + 20);
          v45 = *(a1 + 6);
          v46 = a1;
          v47 = v2;
          v48 = a2;
          sub_181943D9C(v47, v44, v45, 0);
          a2 = v48;
          a1 = v46;
        }

        v49 = *(v14 + 112);
        v50 = *(v49 + 40);
        if ((*(v49 + 52) & 4) != 0 && v50[8] >= *(v49 + 48))
        {
          if (!v50[32])
          {
            goto LABEL_78;
          }

          v51 = a2;
          v52 = a1;
          v54 = sub_1819360C0(*(v14 + 112));
        }

        else
        {
          v5 = v50[12];
          if (v5)
          {
            return v5;
          }

          v51 = a2;
          v52 = a1;
          v53 = *(v14 + 112);
          if (v50[46] <= v50[50])
          {
            v54 = sub_1818D8DD8(v53);
          }

          else
          {
            v54 = sub_181936438(v53);
          }
        }

        v5 = v54;
        a1 = v52;
        a2 = v51;
        if (v5)
        {
          return v5;
        }

LABEL_78:
        v55 = a2;
        v56 = a1;
        (*(v14 + 128))(v14, v24, v78);
        if (v79 == WORD2(v79))
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_181943DF0(v14, v24, v78);
        }

        v80 = v57;
        sub_1818D927C(v14, v16, HIWORD(v79), &v80);
        v5 = v80;
        if (v80)
        {
          return v5;
        }

        v58 = v56;
        v59 = v55;
        if (!*(v14 + 8))
        {
          v66 = *v15;
          if ((*(*v15 + 20) & 0x80000000) != 0)
          {
            v5 = sub_1819454C4(*v15);
            v58 = v56;
            if (v5)
            {
              return v5;
            }
          }

          if (v58[84] - 1 <= v77)
          {
            v67 = v15;
          }

          else
          {
            v67 = &v58[8 * v77 + 152];
          }

          v68 = *(v66 + 96) + 2 * *(v66 + 24);
          v69 = (*(v68 - 1) | (*(v68 - 2) << 8)) & *(v66 + 26);
          if (v69 <= 3)
          {
            return sub_18193596C(89160, v66);
          }

          v72 = *(*v67 + 4);
          v73 = *(v66 + 80) + v69;
          v74 = (*(v66 + 120))(v66, v73);
          v75 = *(v3 + 136);
          v80 = sub_1818D8D88(*(v66 + 112));
          if (!v80)
          {
            v80 = sub_1818DCB50(v14, v16, (v73 - 4), v74 + 4, v75, v72);
          }

          sub_1818D927C(v66, *(v66 + 24) - 1, v74, &v80);
          v5 = v80;
          v58 = v56;
          v59 = v55;
          if (v80)
          {
            return v5;
          }
        }

        if (3 * *(*(v58 + 17) + 20) <= 2 * *(*(v58 + 4) + 56) || (v60 = sub_1818D93BC(v56), v59 = v55, v5 = v60, v58 = v56, !v5))
        {
          if (v58[84] <= v77)
          {
            goto LABEL_93;
          }

          sub_181932B18(*(*(v58 + 17) + 112));
          v61 = v56;
          v62 = --v56[84];
          if (v62 > v77)
          {
            do
            {
              while (1)
              {
                v63 = v62 - 1;
                v61[84] = v62 - 1;
                v64 = *&v56[8 * v62 + 144];
                if (!v64)
                {
                  break;
                }

                sub_181932B18(*(v64 + 112));
                v61 = v56;
                v62 = v56[84];
                if (v77 >= v62)
                {
                  goto LABEL_92;
                }
              }

              v62 = v63;
            }

            while (v77 < v63);
          }

LABEL_92:
          *(v61 + 17) = *&v61[8 * v62 + 144];
          v5 = sub_1818D93BC(v56);
          v58 = v56;
          v59 = v55;
          if (!v5)
          {
LABEL_93:
            if (v26)
            {
              *v58 = 2;
              v65 = *(v14 + 24);
              v5 = 0;
              if (v16 >= v65)
              {
                *(v58 + 1) = -1;
                *(v58 + 43) = v65 - 1;
              }

              else
              {
                *(v58 + 1) = 1;
              }
            }

            else
            {
              v70 = v59;
              v71 = sub_1818C6AC0(v58);
              if ((v70 & 2) != 0)
              {
                sub_1819388DC(v56);
                *v56 = 3;
              }

              if (v71 == 16)
              {
                return 0;
              }

              else
              {
                return v71;
              }
            }
          }
        }

        return v5;
      }
    }

    else
    {
      v26 = 0;
      if (*(v14 + 8))
      {
        goto LABEL_54;
      }
    }

    a1[1] &= 0xF1u;
    *(a1 + 35) = 0;
    if (!*a1 && *(a1 + 43) && *(*v15 + 8))
    {
      --*(a1 + 43);
    }

    else
    {
      v36 = a1;
      v37 = a2;
      v38 = sub_1819450D8(a1);
      a2 = v37;
      v5 = v38;
      a1 = v36;
      if (v5)
      {
        return v5;
      }
    }

    goto LABEL_54;
  }

  return sub_18190EDA8(89053);
}

uint64_t sub_1818D8D88(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(a1 + 52) & 4) != 0 && v1[8] >= *(a1 + 48))
  {
    v2 = v1[32];
    if (!v2)
    {
      return v2;
    }

    return sub_1819360C0(a1);
  }

  else
  {
    v2 = v1[12];
    if (v2)
    {
      return v2;
    }

    if (v1[46] <= v1[50])
    {
      return sub_1818D8DD8(a1);
    }

    else
    {
      return sub_181936438(a1);
    }
  }
}

uint64_t sub_1818D8DD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 21);
  if (v3 == 2)
  {
    result = *(v2 + 48);
    if (result)
    {
      return result;
    }

    if (*(v2 + 344) || *(v2 + 9) == 2)
    {
      goto LABEL_5;
    }

    v19 = *v2;
    v20 = *(v2 + 32);
    v21 = sub_181902484(512, 0x102204086A6B74CLL);
    if (!v21)
    {
      *(v2 + 64) = 0;
      return 7;
    }

    v21[30] = 0u;
    v21[31] = 0u;
    v21[28] = 0u;
    v21[29] = 0u;
    v21[26] = 0u;
    v21[27] = 0u;
    v21[24] = 0u;
    v21[25] = 0u;
    v21[22] = 0u;
    v21[23] = 0u;
    v21[20] = 0u;
    v21[21] = 0u;
    v21[18] = 0u;
    v21[19] = 0u;
    v21[16] = 0u;
    v21[17] = 0u;
    v21[14] = 0u;
    v21[15] = 0u;
    v21[12] = 0u;
    v21[13] = 0u;
    v21[10] = 0u;
    v21[11] = 0u;
    v21[8] = 0u;
    v21[9] = 0u;
    v21[6] = 0u;
    v21[7] = 0u;
    v21[4] = 0u;
    v21[5] = 0u;
    v21[2] = 0u;
    v21[3] = 0u;
    *v21 = 0u;
    v21[1] = 0u;
    *v21 = v20;
    *(v2 + 64) = v21;
    v22 = *(v2 + 80);
    if (!*v22)
    {
      if (*(v2 + 9) == 4)
      {
        *(v22 + 48) = 0uLL;
        *(v22 + 64) = 0uLL;
        *(v22 + 16) = 0uLL;
        *(v22 + 32) = 0uLL;
        *v22 = 0uLL;
        *v22 = &unk_1EEF8FF50;
        *(v22 + 8) = -4294966280;
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
      }

      else
      {
        v23 = *(v2 + 180);
        if (*(v2 + 16))
        {
          v24 = 4126;
        }

        else
        {
          v24 = 2054;
        }

        if (*(v2 + 16))
        {
          v25 = dword_1ED452E9C;
        }

        else
        {
          v25 = 0;
        }

        v26 = sub_181936E64(v2);
        if (v26)
        {
          goto LABEL_59;
        }

        v27 = *(v2 + 224);
        v28 = *(v2 + 80);
        *(v28 + 48) = 0u;
        *(v28 + 64) = 0u;
        *(v28 + 16) = 0u;
        *(v28 + 32) = 0u;
        *v28 = 0u;
        if (v25)
        {
          *v28 = &unk_1EEF8FF50;
          if (v25 <= 0)
          {
            v29 = 1016;
          }

          else
          {
            v29 = v25;
          }

          *(v28 + 8) = v29;
          *(v28 + 12) = v25;
          *(v28 + 56) = v24 | v23 & 0x1700000;
          *(v28 + 64) = v19;
          *(v28 + 72) = v27;
        }

        else
        {
          v26 = (*(v19 + 40))(v19, v27);
          if (v26)
          {
            goto LABEL_59;
          }
        }
      }
    }

    *(v2 + 52) = 0;
    *(v2 + 24) = 0;
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    v26 = sub_1818E6D94(v2);
    if (!v26)
    {
LABEL_5:
      v3 = 3;
      *(v2 + 21) = 3;
      goto LABEL_6;
    }

LABEL_59:
    v30 = v26;
    sub_1818EFAC4(*(v2 + 64));
    result = v30;
    *(v2 + 64) = 0;
    *(v2 + 96) = 0;
    return result;
  }

LABEL_6:
  v5 = *(a1 + 52);
  if ((v5 & 0x11) != 0)
  {
    v6 = v5 & 0xFFEF;
    *(a1 + 52) = v5 & 0xFFEF;
    if (v5)
    {
      v6 ^= 3u;
      *(a1 + 52) = v6;
      v7 = *(a1 + 24);
      v8 = *v7;
      *(a1 + 64) = *v7;
      *(a1 + 72) = 0;
      if (v8)
      {
        *(v8 + 72) = a1;
      }

      else
      {
        v7[1] = a1;
        if (*(v7 + 48))
        {
          *(v7 + 49) = 1;
        }
      }

      *v7 = a1;
      if ((v5 & 8) == 0 && !v7[2])
      {
        v7[2] = a1;
      }
    }
  }

  else
  {
    v6 = *(a1 + 52);
  }

  v9 = *(v2 + 64);
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 48);
  v11 = v10 - 1;
  if (v10 - 1 < *v9)
  {
    while (1)
    {
      v12 = v9[2];
      if (!v12)
      {
        break;
      }

      v13 = v11 / v12;
      v11 %= v12;
      v9 = *&v9[2 * v13 + 4];
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    if (*v9 >= 0xF81u)
    {
      v15 = v11 % 0x7C;
      v16 = v9 + 4;
      v17 = v16[v11 % 0x7C];
      if (v17)
      {
        v18 = v11 + 1;
        while (v17 != v18)
        {
          if (v15 == 123)
          {
            v15 = 0;
          }

          else
          {
            ++v15;
          }

          v17 = v16[v15];
          if (!v17)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_27;
      }
    }

    else if ((*(v9 + (v11 >> 3) + 16) >> (v11 & 7)))
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  if (v10 <= *(v2 + 36))
  {
    result = sub_1819367F8(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 52);
  }

  else if (v3 != 4)
  {
    v6 |= 8u;
  }

LABEL_27:
  *(a1 + 52) = v6 | 4;
  if (*(v2 + 128) < 1)
  {
    result = 0;
  }

  else
  {
    result = sub_1819360C0(a1);
  }

  v14 = *(a1 + 48);
  if (*(v2 + 32) < v14)
  {
    *(v2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1818D9150(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[4];
  if ((a2[4] & 0x80000000) == 0)
  {
    v3 = 4;
    goto LABEL_10;
  }

  v4 = a2[5] & 0x7F | ((v2 & 0x7F) << 7);
  if ((a2[5] & 0x80) == 0)
  {
    v3 = 5;
LABEL_5:
    v2 = v4;
    goto LABEL_10;
  }

  v2 = a2[6] & 0x7F | (v4 << 7);
  if ((a2[6] & 0x80) != 0)
  {
    v2 = a2[7] & 0x7F | (v2 << 7);
    if ((a2[7] & 0x80) != 0)
    {
      v4 = a2[8] & 0x7F | (v2 << 7);
      if ((a2[8] & 0x80) == 0)
      {
        v3 = 8;
        goto LABEL_5;
      }

      v2 = a2[9] & 0x7F | (v4 << 7);
      if ((a2[9] & 0x80) != 0)
      {
        v4 = a2[10] & 0x7F | (v2 << 7);
        if ((a2[10] & 0x80) == 0)
        {
          v3 = 10;
          goto LABEL_5;
        }

        v2 = a2[11] & 0x7F | (v4 << 7);
        if ((a2[11] & 0x80) != 0)
        {
          v4 = a2[12] & 0x7F | (v2 << 7);
          v3 = 12;
          goto LABEL_5;
        }

        v3 = 11;
      }

      else
      {
        v3 = 9;
      }
    }

    else
    {
      v3 = 7;
    }
  }

  else
  {
    v3 = 6;
  }

LABEL_10:
  v5 = a2 + v3 + 1;
  v6 = *(a1 + 14);
  if (v2 <= v6)
  {
    return (v2 + v5 - a2);
  }

  v7 = (v2 - *(a1 + 16)) % (*(*(a1 + 72) + 56) - 4) + *(a1 + 16);
  if (v7 > v6)
  {
    LOWORD(v7) = *(a1 + 16);
  }

  return (v5 - a2 + v7 + 4);
}

uint64_t sub_1818D927C(uint64_t result, int a2, int a3, _DWORD *a4)
{
  if (!*a4)
  {
    v5 = (*(result + 96) + 2 * a2);
    v6 = __rev16(*v5);
    if ((v6 + a3) <= *(*(result + 72) + 56))
    {
      v8 = *(result + 80);
      v9 = *(result + 9);
      v10 = result;
      result = sub_181945948(result, v6, a3);
      if (result)
      {
        *a4 = result;
      }

      else
      {
        v11 = *(v10 + 24) - 1;
        *(v10 + 24) = v11;
        if (v11)
        {
          result = memmove(v5, v5 + 1, 2 * (v11 - a2));
          v12 = v8 + v9;
          *(v12 + 3) = *(v10 + 25);
          *(v12 + 4) = *(v10 + 24);
          *(v10 + 20) += 2;
        }

        else
        {
          v13 = v8 + v9;
          *(v13 + 1) = 0;
          *(v13 + 7) = 0;
          *(v13 + 5) = BYTE1(*(*(v10 + 72) + 56));
          *(v13 + 6) = *(*(v10 + 72) + 56);
          *(v10 + 20) = *(*(v10 + 72) + 56) - (*(v10 + 9) + *(v10 + 10)) - 8;
        }
      }
    }

    else
    {
      result = sub_18190EDA8(86482);
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_1818D93BC(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = a1 + 144;
  v4 = a1 + 88;
  v439 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 136);
  v378 = vdupq_n_s64(8uLL);
  v401 = a1 + 88;
  while (1)
  {
    if ((*(v5 + 20) & 0x80000000) != 0 && sub_1819454C4(v5))
    {
LABEL_474:
      v13 = 0;
      goto LABEL_477;
    }

    if (*(v5 + 12))
    {
      break;
    }

    if (3 * *(v5 + 20) <= 2 * *(*(v1 + 32) + 56))
    {
      goto LABEL_474;
    }

    v8 = *(v1 + 84);
    if (!*(v1 + 84))
    {
      goto LABEL_474;
    }

LABEL_23:
    if (*(*(v5 + 112) + 56) >= 2)
    {
      v361 = 88362;
      v14 = v5;
LABEL_476:
      v13 = sub_18193596C(v361, v14);
      goto LABEL_477;
    }

    v15 = v8 - 1;
    v16 = *(v3 + 8 * v15);
    v406 = *(v4 + 2 * v15);
    v17 = *(v16 + 112);
    v18 = *(v17 + 40);
    if ((*(v17 + 52) & 4) != 0 && v18[8] >= *(v17 + 48))
    {
      if (v18[32])
      {
        v13 = sub_1819360C0(v17);
        if (v13)
        {
          goto LABEL_283;
        }
      }
    }

    else
    {
      v13 = v18[12];
      if (v13)
      {
        goto LABEL_283;
      }

      if (v18[46] <= v18[50])
      {
        v13 = sub_1818D8DD8(v17);
        if (v13)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v13 = sub_181936438(v17);
        if (v13)
        {
          goto LABEL_283;
        }
      }
    }

    if ((*(v16 + 20) & 0x80000000) != 0)
    {
      v26 = sub_1819454C4(v16);
      if (v26)
      {
        v13 = v26;
        goto LABEL_283;
      }
    }

    v403 = v5;
    if (*(v5 + 2) && *(v5 + 12) == 1 && *(v5 + 28) == *(v5 + 24) && *(v16 + 4) != 1 && *(v16 + 24) == v406)
    {
      if (*(v5 + 28))
      {
        v19 = *(v5 + 72);
        v424 = 0;
        v430[0] = 0;
        v13 = sub_1818E21FC(v19, &v424, v430, 0, 0);
        if (!v13)
        {
          v383 = v3;
          v233 = v1;
          v234 = v5;
          v235 = v2;
          v436 = *(v234 + 40);
          LOWORD(v429[0]) = (*(v234 + 120))();
          v419 = 0;
          v417 = 0u;
          v418 = 0u;
          v415 = 0u;
          v416 = 0u;
          v413 = 0u;
          v414 = 0u;
          v236 = v424;
          v238 = *(v424 + 72);
          v237 = *(v424 + 80);
          v239 = *(v424 + 9);
          if ((*(v238 + 40) & 0xC) != 0)
          {
            bzero((v237 + v239), (*(v238 + 56) - v239));
          }

          v240 = v237 + v239;
          *v240 = 13;
          *(v240 + 1) = 0;
          *(v240 + 7) = 0;
          *(v240 + 5) = BYTE1(*(v238 + 56));
          *(v240 + 6) = *(v238 + 56);
          *(v236 + 20) = (*(v238 + 56) - (v239 + 8));
          v241 = *(v236 + 72);
          *(v236 + 11) = *(v241 + 37);
          *(v236 + 10) = 0;
          *(v236 + 8) = 1;
          *(v236 + 120) = sub_1819355AC;
          *(v236 + 128) = sub_1818C7030;
          *(v236 + 1) = 257;
          *(v236 + 14) = *(v241 + 46);
          *(v236 + 18) = v239 + 8;
          v242 = *(v238 + 52);
          *(v236 + 88) = v237 + v242;
          *(v236 + 96) = v237 + v239 + 8;
          *(v236 + 104) = v237;
          *(v236 + 12) = 0;
          *(v236 + 26) = v242 - 1;
          *(v236 + 24) = 0;
          *v236 = 1;
          LODWORD(v413) = 1;
          *(&v413 + 1) = v403;
          *&v414 = &v436;
          v243 = *(v403 + 88);
          *(&v414 + 1) = v429;
          *&v415 = v243;
          LODWORD(v418) = 2;
          HIDWORD(v419) = 0x7FFFFFFF;
          v244 = sub_181945EEC(&v413, 0, 1, v236);
          v431[0] = v244;
          if (v244)
          {
            v13 = v244;
            v245 = *(v236 + 112);
            v2 = v235;
            v1 = v233;
            v4 = v401;
            if ((*(v245 + 52) & 0x20) != 0)
            {
              v248 = *(v245 + 40);
              --*(v248 + 152);
              *(v245 + 32) = *(v248 + 168);
              *(v248 + 168) = v245;
              (*(**(v248 + 72) + 144))(*(v248 + 72), *(v248 + 200) * (*(v245 + 48) - 1), *(v245 + 8));
            }

            else
            {
              sub_181932B68(v245);
            }

            v3 = v383;
            v5 = v403;
          }

          else
          {
            *(v236 + 20) = *(v19 + 56) - (*(v236 + 18) + LOWORD(v429[0])) - 2;
            v2 = v235;
            v1 = v233;
            v3 = v383;
            v4 = v401;
            v5 = v403;
            if (*(v19 + 33))
            {
              sub_1818EF720(v19, v430[0], 5, *(v16 + 4), v431);
              if (LOWORD(v429[0]) > *(v236 + 16) && !v431[0])
              {
                v246 = v436;
                v433 = 0uLL;
                *&v434 = 0;
                (*(v236 + 128))(v236, v436, &v433);
                if (v434 > WORD2(v434))
                {
                  v247 = *(v236 + 88);
                  if (v247 <= v246 || &v246[WORD2(v434)] <= v247)
                  {
                    sub_1818EF720(*(v236 + 72), bswap32(*&v246[WORD3(v434) - 4]), 3, *(v236 + 4), v431);
                  }

                  else
                  {
                    v431[0] = sub_18190EDA8(80846);
                  }
                }
              }
            }

            v351 = 0;
            v352 = *(v403 + 96) + 2 * *(v403 + 24);
            v353 = (*(v403 + 80) + ((*(v352 - 1) | (*(v352 - 2) << 8)) & *(v403 + 26)));
            do
            {
              v354 = v353 + 1;
              v436 = v353 + 1;
              if (v351 > 7)
              {
                break;
              }

              ++v351;
              v355 = *v353++;
            }

            while (v355 < 0);
            v356 = 0;
            do
            {
              v357 = &v354[v356 + 1];
              v436 = v357;
              v358 = v354[v356];
              __src[v356 + 4] = v354[v356];
              ++v356;
            }

            while (v358 < 0 && v357 < (v354 + 9));
            v13 = v431[0];
            if (!v431[0])
            {
              v13 = sub_1818DCB50(v16, *(v16 + 24), __src, v356 + 4, 0, *(v403 + 4));
            }

            *(*(v16 + 80) + *(v16 + 9) + 8) = bswap32(v430[0]);
            v359 = *(v236 + 112);
            if ((*(v359 + 52) & 0x20) != 0)
            {
              v360 = *(v359 + 40);
              --*(v360 + 152);
              *(v359 + 32) = *(v360 + 168);
              *(v360 + 168) = v359;
              (*(**(v360 + 72) + 144))(*(v360 + 72), *(v360 + 200) * (*(v359 + 48) - 1), *(v359 + 8));
            }

            else
            {
              sub_181932B68(v359);
            }
          }
        }
      }

      else
      {
        v13 = sub_18190EDA8(87210);
      }

      goto LABEL_283;
    }

    v20 = sub_1819352D4(*(*(v1 + 32) + 52));
    v21 = *(v1 + 3);
    v435 = 0;
    v433 = 0u;
    v434 = 0u;
    v432[0] = 0;
    v432[1] = 0;
    v420 = 0;
    v421 = 0;
    v419 = 0x7FFFFFFF00000000;
    v417 = 0u;
    v418 = 0u;
    v413 = 0u;
    v414 = 0u;
    v415 = 0u;
    v416 = 0u;
    v400 = v20;
    if (!v20)
    {
      v13 = 7;
      if (v2)
      {
        goto LABEL_281;
      }

      goto LABEL_282;
    }

    v384 = v21 & 1;
    v22 = *(v16 + 12);
    v23 = *(v16 + 24);
    v24 = v23 + v22;
    if ((v23 + v22) >= 2)
    {
      if (v406)
      {
        if (v24 == v406)
        {
          v25 = v406 + v384 - 2;
        }

        else
        {
          v25 = v406 - 1;
        }
      }

      else
      {
        v25 = 0;
      }

      v24 = 2 - v384;
    }

    else
    {
      v25 = 0;
    }

    v436 = 0;
    v437 = 0;
    v438 = 0;
    v27 = v25 - v22 + v24;
    v28 = *(v16 + 80);
    v399 = *(v16 + 72);
    v379 = v1;
    v380 = v2;
    v382 = v3;
    v372 = v8;
    if (v27 == v23)
    {
      v29 = (v28 + *(v16 + 9) + 8);
    }

    else
    {
      v30 = (*(v16 + 96) + 2 * v27);
      v29 = (v28 + ((v30[1] | (*v30 << 8)) & *(v16 + 26)));
    }

    v31 = 0;
    v402 = v24 + 1;
    v373 = v29;
    v32 = bswap32(*v29);
    v33 = v24;
    v381 = v24;
    v34 = v24;
    v398 = v25;
    v411 = v25 - 1;
    v387 = v24;
    v35 = *(v16 + 72);
    while (1)
    {
      v36 = sub_181943894(v35, v32, &(&v436)[v34]);
      v423 = v36;
      if (v36)
      {
        v13 = v36;
        goto LABEL_83;
      }

      v37 = (&v436)[v33];
      if ((*(v37 + 5) & 0x80000000) != 0)
      {
        v38 = sub_1819454C4((&v436)[v33]);
        v423 = v38;
        if (v38)
        {
          v13 = v38;
LABEL_83:
          __memset_chk();
          v47 = 0;
          v3 = v382;
          v4 = v401;
LABEL_84:
          v5 = v403;
          goto LABEL_85;
        }
      }

      v31 += *(v37 + 12) + 4;
      if (!v33)
      {
        break;
      }

      if (!*(v16 + 12))
      {
        v40 = v411 + v33;
        goto LABEL_79;
      }

      if (v411 + v33 != *(v16 + 28))
      {
        v40 = v398 + v33 - 1;
LABEL_79:
        v41 = (*(v16 + 96) + 2 * (v40 - *(v16 + 12)));
        v42 = (*(v16 + 80) + ((v41[1] | (*v41 << 8)) & *(v16 + 26)));
        *&v431[2 * v33 + 3] = v42;
        v43 = *v42;
        v44 = (*(v16 + 120))(v16, v42);
        v45 = v44;
        *&v428[4 * v33 + 12] = v44;
        if ((*(v35 + 40) & 0xC) != 0)
        {
          v46 = v42 - *(v16 + 80);
          if ((v46 + v44) <= *(v35 + 56))
          {
            memcpy((v400 + v46), v42, v44);
            v35 = v399;
            *&v431[2 * v33 + 3] = v42 + v400 - *(v16 + 80);
          }
        }

        v32 = bswap32(v43);
        sub_1818D927C(v16, v40 - *(v16 + 12), v45, &v423);
        v13 = v423;
        goto LABEL_69;
      }

      v39 = *(v16 + 40);
      *&v431[2 * v33 + 3] = v39;
      v32 = bswap32(*v39);
      v13 = 0;
      *&v428[4 * v33 + 12] = (*(v16 + 120))(v16);
      *(v16 + 12) = 0;
LABEL_69:
      --v34;
      --v33;
      if (v13)
      {
        goto LABEL_83;
      }
    }

    v422 = v32;
    v55 = (v31 + 3);
    v56 = v55 & 0x7FFFFFFC;
    v57 = sub_181902484(*(v35 + 52) + 10 * v56, 230231204);
    *&v414 = v57;
    if (!v57)
    {
      v47 = 0;
      v13 = 7;
      v3 = v382;
      v4 = v401;
      v5 = v403;
      v50 = v381;
      v51 = v436;
      if (!v436)
      {
        goto LABEL_98;
      }

      goto LABEL_95;
    }

    v58 = v57;
    v59 = 0;
    LODWORD(v60) = 0;
    v61 = v57 + 8 * v56;
    v388 = v61 + 2 * v56;
    v62 = 0;
    *(&v414 + 1) = v61;
    *(&v413 + 1) = v436;
    v365 = v436[8];
    v412 = v436[2];
    v374 = v57 + 8;
    v377 = 4 * v436[8];
    v366 = v57 + 16;
    v367 = v57 + 40 * ((v55 >> 2) & 0x1FFFFFFF);
    v368 = v57 - 40;
    v4 = v401;
    v392 = v61;
    do
    {
      v63 = (&v436)[v62];
      v64 = *(v63 + 80);
      if (*v64 != **(v436 + 10))
      {
        v13 = sub_18193596C(87634, (&v436)[v62]);
        v47 = 0;
        v3 = v382;
        goto LABEL_84;
      }

      v404 = v62;
      v65 = *(v63 + 24);
      v66 = *(v63 + 26);
      v67 = *(v63 + 18);
      v68 = &v64[v67];
      bzero((v61 + 2 * v60), 2 * (*(v63 + 12) + v65));
      v69 = *(v63 + 12);
      v70 = vdupq_n_s64(v64);
      if (!*(v63 + 12))
      {
        v4 = v401;
        v73.i64[0] = 0x100000001;
        v73.i64[1] = 0x100000001;
        goto LABEL_133;
      }

      v71 = *(v63 + 28);
      if (v65 < v71)
      {
        v13 = sub_18193596C(87658, v63);
        v47 = 0;
        v3 = v382;
        v4 = v401;
        goto LABEL_84;
      }

      v72 = v60;
      if (!*(v63 + 28))
      {
        v4 = v401;
        v73.i64[0] = 0x100000001;
        v73.i64[1] = 0x100000001;
        if (v69 <= 3)
        {
          goto LABEL_129;
        }

        goto LABEL_128;
      }

      v73.i64[0] = 0x100000001;
      v73.i64[1] = 0x100000001;
      if (v71 <= 0xF || ((v74 = (v58 + 8 * v60), v75 = (v71 - 1), v74 < &v64[2 * v75 + 2 + v67]) ? (v76 = v68 >= v374 + 8 * (v60 + v75)) : (v76 = 1), !v76))
      {
        LODWORD(v77) = 0;
LABEL_123:
        v98 = v71 - v77;
        do
        {
          *(v58 + 8 * v72) = &v64[(*(v68 + 1) | (*v68 << 8)) & v66];
          v68 += 2;
          ++v72;
          --v98;
        }

        while (v98);
        goto LABEL_125;
      }

      v77 = v71 & 0xFFF0;
      v72 = v77 + v60;
      v68 += 2 * v77;
      v78 = vdupq_n_s64(v66);
      v79 = v77;
      do
      {
        v80 = &v64[v67];
        v441 = vld2q_s8(v80);
        v81 = vmovl_u8(*v441.val[0].i8);
        v82 = vmovl_u16(*v81.i8);
        v83 = vmovl_high_u16(v81);
        v84 = vmovl_high_u8(v441.val[0]);
        v85 = vmovl_u16(*v84.i8);
        v86 = vmovl_high_u16(v84);
        v87 = vmovl_high_u8(v441.val[1]);
        v88 = vmovl_high_u16(v87);
        v89 = vmovl_u16(*v87.i8);
        v441.val[0] = vmovl_u8(*v441.val[1].i8);
        v441.val[1] = vmovl_high_u16(v441.val[0]);
        v441.val[0] = vmovl_u16(*v441.val[0].i8);
        v90 = vorr_s8(vshl_n_s32(*&vextq_s8(v82, v82, 8uLL), 8uLL), *&vextq_s8(v441.val[0], v441.val[0], 8uLL));
        v91.i64[0] = v90.u32[0];
        v91.i64[1] = v90.u32[1];
        v92 = v91;
        *v441.val[0].i8 = vorr_s8(vshl_n_s32(*v82.i8, 8uLL), *v441.val[0].i8);
        v91.i64[0] = v441.val[0].u32[0];
        v91.i64[1] = v441.val[0].u32[1];
        v441.val[0] = v91;
        *v82.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v83, v83, 8uLL), 8uLL), *&vextq_s8(v441.val[1], v441.val[1], 8uLL));
        v91.i64[0] = v82.u32[0];
        v91.i64[1] = v82.u32[1];
        v93 = v91;
        v94 = vorr_s8(vshl_n_s32(*&vextq_s8(v85, v85, 8uLL), 8uLL), *&vextq_s8(v89, v89, 8uLL));
        v91.i64[0] = v94.u32[0];
        v91.i64[1] = v94.u32[1];
        v95 = v91;
        *v441.val[1].i8 = vorr_s8(vshl_n_s32(*v83.i8, 8uLL), *v441.val[1].i8);
        v91.i64[0] = v441.val[1].u32[0];
        v91.i64[1] = v441.val[1].u32[1];
        v441.val[1] = v91;
        *v83.i8 = vorr_s8(vshl_n_s32(*v85.i8, 8uLL), *v89.i8);
        v91.i64[0] = v83.u32[0];
        v91.i64[1] = v83.u32[1];
        v96 = v91;
        *v85.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v86, v86, 8uLL), 8uLL), *&vextq_s8(v88, v88, 8uLL));
        v91.i64[0] = v85.u32[0];
        v91.i64[1] = v85.u32[1];
        v97 = v91;
        *v86.i8 = vorr_s8(vshl_n_s32(*v86.i8, 8uLL), *v88.i8);
        v91.i64[0] = v86.u32[0];
        v91.i64[1] = v86.u32[1];
        v74[6] = vaddq_s64(v70, vandq_s8(v91, v78));
        v74[7] = vaddq_s64(v70, vandq_s8(v97, v78));
        v74[4] = vaddq_s64(v70, vandq_s8(v96, v78));
        v74[5] = vaddq_s64(v70, vandq_s8(v95, v78));
        v74[2] = vaddq_s64(v70, vandq_s8(v441.val[1], v78));
        v74[3] = vaddq_s64(v70, vandq_s8(v93, v78));
        *v74 = vaddq_s64(v70, vandq_s8(v441.val[0], v78));
        v74[1] = vaddq_s64(v70, vandq_s8(v92, v78));
        v74 += 8;
        v67 += 32;
        v79 -= 16;
      }

      while (v79);
      if (v77 != v71)
      {
        goto LABEL_123;
      }

LABEL_125:
      v72 = v72;
      v4 = v401;
      if (v69 <= 3)
      {
        goto LABEL_129;
      }

LABEL_128:
      v99 = 8 * v72;
      if ((v368 + 8 * v72 - v63) >= 0x20)
      {
        v100 = v69 & 0xFC;
        v72 += v100;
        v143 = (v366 + v99);
        v144 = (v63 + 56);
        v145 = v100;
        do
        {
          v146 = *v144;
          *(v143 - 1) = *(v144 - 1);
          *v143 = v146;
          v143 += 2;
          v144 += 2;
          v145 -= 4;
        }

        while (v145);
        if (v100 == v69)
        {
          goto LABEL_132;
        }

        goto LABEL_130;
      }

LABEL_129:
      v100 = 0;
LABEL_130:
      v101 = v69 - v100;
      v102 = (v63 + 8 * v100 + 40);
      do
      {
        v103 = *v102++;
        *(v58 + 8 * v72++) = v103;
        --v101;
      }

      while (v101);
LABEL_132:
      LODWORD(v413) = v72;
      LODWORD(v60) = v72;
LABEL_133:
      v104 = *(v63 + 18);
      v105 = 2 * *(v63 + 24);
      v106 = &v64[v104 + v105];
      if (v68 >= v106)
      {
        goto LABEL_177;
      }

      v107 = v60;
      v108 = &v64[v105 + v104];
      v109 = v68 + 2;
      if (v108 <= v68 + 2)
      {
        v110 = v68 + 2;
      }

      else
      {
        v110 = v108;
      }

      v111 = v110 + ~v68;
      if (v111 < 0xE)
      {
        goto LABEL_138;
      }

      v114 = (v58 + 8 * v60);
      if (v108 <= v109)
      {
        v108 = v68 + 2;
      }

      v115 = v108 + ~v68;
      v116 = v374 + 8 * (v60 + (v115 >> 1));
      v117 = v109 + (v115 & 0xFFFFFFFFFFFFFFFELL);
      v118 = v114 >= v117 || v68 >= v116;
      v119 = !v118;
      v120 = &v413 >= v117 || v68 >= &v413 + 4;
      v121 = !v120;
      v122 = &v413 >= v116 || v114 >= (&v413 + 4);
      if (!v122 || v119 || v121)
      {
LABEL_138:
        v60 = v60;
        v112 = v68;
        goto LABEL_139;
      }

      v123 = (v111 >> 1) + 1;
      v124 = vdupq_n_s64(v66);
      if (v111 >= 0x1E)
      {
        v147 = vdupq_n_s64(v60);
        v148 = vaddq_s64(v147, xmmword_181A1FF60);
        v125 = v123 & 0xFFFFFFFFFFFFFFF0;
        v149 = vaddq_s64(v147, xmmword_181A1FF70);
        v150 = vaddq_s64(v147, xmmword_181A1FF80);
        v151 = vaddq_s64(v147, xmmword_181A1FF90);
        v152 = vaddq_s64(v147, xmmword_181A1FFA0);
        v153 = vaddq_s64(v147, xmmword_181A1FFB0);
        v154 = vaddq_s64(v147, xmmword_181A1FFC0);
        v155 = vaddq_s64(v147, xmmword_181A1FE70);
        v126 = (v123 & 0xFFFFFFFFFFFFFFF0) + v60;
        v156 = v123 & 0xFFFFFFFFFFFFFFF0;
        v157 = v68;
        do
        {
          v442 = vld2q_s8(v157);
          v157 += 32;
          v158 = vmovl_u8(*v442.val[0].i8);
          v159 = vmovl_u16(*v158.i8);
          v160 = vmovl_high_u16(v158);
          v161 = vmovl_high_u8(v442.val[0]);
          v162 = vmovl_u16(*v161.i8);
          v163 = vmovl_high_u16(v161);
          v164 = vmovl_high_u8(v442.val[1]);
          v165 = vmovl_high_u16(v164);
          v166 = vmovl_u16(*v164.i8);
          v442.val[0] = vmovl_u8(*v442.val[1].i8);
          v442.val[1] = vmovl_high_u16(v442.val[0]);
          v442.val[0] = vmovl_u16(*v442.val[0].i8);
          v167 = vorr_s8(vshl_n_s32(*&vextq_s8(v159, v159, 8uLL), 8uLL), *&vextq_s8(v442.val[0], v442.val[0], 8uLL));
          v168.i64[0] = v167.u32[0];
          v168.i64[1] = v167.u32[1];
          v169 = v168;
          *v442.val[0].i8 = vorr_s8(vshl_n_s32(*v159.i8, 8uLL), *v442.val[0].i8);
          v168.i64[0] = v442.val[0].u32[0];
          v168.i64[1] = v442.val[0].u32[1];
          v442.val[0] = v168;
          *v159.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v160, v160, 8uLL), 8uLL), *&vextq_s8(v442.val[1], v442.val[1], 8uLL));
          v168.i64[0] = v159.u32[0];
          v168.i64[1] = v159.u32[1];
          v170 = v168;
          v171 = vorr_s8(vshl_n_s32(*&vextq_s8(v162, v162, 8uLL), 8uLL), *&vextq_s8(v166, v166, 8uLL));
          v168.i64[0] = v171.u32[0];
          v168.i64[1] = v171.u32[1];
          v172 = v168;
          *v442.val[1].i8 = vorr_s8(vshl_n_s32(*v160.i8, 8uLL), *v442.val[1].i8);
          v168.i64[0] = v442.val[1].u32[0];
          v168.i64[1] = v442.val[1].u32[1];
          v442.val[1] = v168;
          *v160.i8 = vorr_s8(vshl_n_s32(*v162.i8, 8uLL), *v166.i8);
          v168.i64[0] = v160.u32[0];
          v168.i64[1] = v160.u32[1];
          v173 = v168;
          *v162.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v163, v163, 8uLL), 8uLL), *&vextq_s8(v165, v165, 8uLL));
          v168.i64[0] = v162.u32[0];
          v168.i64[1] = v162.u32[1];
          v174 = v168;
          *v163.i8 = vorr_s8(vshl_n_s32(*v163.i8, 8uLL), *v165.i8);
          v168.i64[0] = v163.u32[0];
          v168.i64[1] = v163.u32[1];
          v114[6] = vaddq_s64(v70, vandq_s8(v168, v124));
          v114[7] = vaddq_s64(v70, vandq_s8(v174, v124));
          v114[4] = vaddq_s64(v70, vandq_s8(v173, v124));
          v114[5] = vaddq_s64(v70, vandq_s8(v172, v124));
          v114[2] = vaddq_s64(v70, vandq_s8(v442.val[1], v124));
          v114[3] = vaddq_s64(v70, vandq_s8(v170, v124));
          *v114 = vaddq_s64(v70, vandq_s8(v442.val[0], v124));
          v114[1] = vaddq_s64(v70, vandq_s8(v169, v124));
          v114 += 8;
          v175 = vaddq_s32(vuzp1q_s32(v149, v148), v73);
          LODWORD(v413) = v175.i32[3];
          v442.val[1] = vdupq_n_s64(0x10uLL);
          v153 = vaddq_s64(v153, v442.val[1]);
          v154 = vaddq_s64(v154, v442.val[1]);
          v155 = vaddq_s64(v155, v442.val[1]);
          v152 = vaddq_s64(v152, v442.val[1]);
          v151 = vaddq_s64(v151, v442.val[1]);
          v150 = vaddq_s64(v150, v442.val[1]);
          v149 = vaddq_s64(v149, v442.val[1]);
          v148 = vaddq_s64(v148, v442.val[1]);
          v156 -= 16;
        }

        while (v156);
        if (v123 == v125)
        {
          LODWORD(v60) = v175.i32[3];
          goto LABEL_177;
        }

        if ((v123 & 8) == 0)
        {
          v112 = (v68 + 2 * v125);
          v60 = v125 + v60;
          goto LABEL_139;
        }
      }

      else
      {
        v125 = 0;
        v126 = v60;
      }

      v60 = (v123 & 0xFFFFFFFFFFFFFFF8) + v60;
      v112 = (v68 + 2 * (v123 & 0xFFFFFFFFFFFFFFF8));
      v127 = vdupq_n_s64(v126);
      v128 = vaddq_s64(v127, xmmword_181A1FFA0);
      v129 = vaddq_s64(v127, xmmword_181A1FFB0);
      v130 = vaddq_s64(v127, xmmword_181A1FFC0);
      v131 = vaddq_s64(v127, xmmword_181A1FE70);
      v132 = (v58 + 8 * v125 + 8 * v107);
      v133 = (v68 + 2 * v125);
      v134 = v125 - (v123 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v440 = vld2_s8(v133);
        v133 += 16;
        v135 = vmovl_u8(*v440.i8);
        v136 = vmovl_u16(*v135.i8);
        v137 = vmovl_high_u16(v135);
        v440 = vmovl_u8(v440.u64[1]);
        *(&v440 + 8) = vmovl_high_u16(v440);
        v440 = vmovl_u16(*v440.i8);
        v138 = vorr_s8(vshl_n_s32(*&vextq_s8(v136, v136, 8uLL), 8uLL), *&vextq_s8(v440, v440, 8uLL));
        v139.i64[0] = v138.u32[0];
        v139.i64[1] = v138.u32[1];
        v140 = v139;
        *v440.i8 = vorr_s8(vshl_n_s32(*v136.i8, 8uLL), *v440.i8);
        v139.i64[0] = v440.u32[0];
        v139.i64[1] = v440.u32[1];
        v440 = v139;
        *v136.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v137, v137, 8uLL), 8uLL), *&vextq_s8(*(&v440 + 8), *(&v440 + 8), 8uLL));
        v139.i64[0] = v136.u32[0];
        v139.i64[1] = v136.u32[1];
        v141 = v139;
        v440.u64[1] = vorr_s8(vshl_n_s32(*v137.i8, 8uLL), v440.u64[1]);
        v139.i64[0] = v440.u32[2];
        v139.i64[1] = v440.u32[3];
        v132[2] = vaddq_s64(v70, vandq_s8(v139, v124));
        v132[3] = vaddq_s64(v70, vandq_s8(v141, v124));
        *v132 = vaddq_s64(v70, vandq_s8(v440, v124));
        v132[1] = vaddq_s64(v70, vandq_s8(v140, v124));
        v132 += 4;
        v142 = vaddq_s32(vuzp1q_s32(v129, v128), v73);
        LODWORD(v413) = v142.i32[3];
        v129 = vaddq_s64(v129, v378);
        v130 = vaddq_s64(v130, v378);
        v131 = vaddq_s64(v131, v378);
        v128 = vaddq_s64(v128, v378);
        v134 += 8;
      }

      while (v134);
      if (v123 == (v123 & 0xFFFFFFFFFFFFFFF8))
      {
        LODWORD(v60) = v142.i32[3];
LABEL_177:
        v61 = v392;
        goto LABEL_178;
      }

LABEL_139:
      v113 = (v58 + 8 * v60);
      v61 = v392;
      do
      {
        *v113++ = &v64[(v112[1] | (*v112 << 8)) & v66];
        LODWORD(v60) = v60 + 1;
        LODWORD(v413) = v60;
        v112 += 2;
      }

      while (v112 < v106);
LABEL_178:
      v430[v404] = v60;
      if (v404 < v387 && !v412)
      {
        v176 = v429[v404];
        *(v61 + 2 * v60) = v429[v404];
        v177 = (v388 + v59);
        v59 += v176;
        memcpy(v177, v432[v404], v176);
        v61 = v392;
        *(v58 + 8 * v60) = &v177[v377];
        v178 = *(v392 + 2 * v60) - 4 * v365;
        *(v392 + 2 * v60) = v178;
        if (*(v63 + 8))
        {
          if (v178 <= 3u)
          {
            v179 = (v367 + v59);
            do
            {
              *v179++ = 0;
              v180 = ++*(v392 + 2 * v60);
              ++v59;
            }

            while (v180 < 4);
          }
        }

        else
        {
          *&v177[v377] = *(*(v63 + 80) + 8);
        }

        LODWORD(v60) = v60 + 1;
        LODWORD(v413) = v60;
      }

      v62 = v404 + 1;
    }

    while (v404 + 1 != v402);
    v185 = 0;
    v186 = 0;
    v405 = v377 + *(v399 + 56) - 12;
    do
    {
      v187 = (&v436)[v185];
      *(&v415 + v186) = *(v187 + 11);
      v188 = v430[v185];
      *(&v418 + v186) = v188;
      if (v186)
      {
        if (v188 == *(&v418 + v186 - 1))
        {
          LODWORD(v189) = v186 - 1;
        }

        else
        {
          LODWORD(v189) = v186;
        }

        if (!v412)
        {
LABEL_208:
          v189 = v189 + 1;
          *(&v415 + v189) = *(v16 + 88);
          *(&v418 + v189) = v188 + 1;
        }
      }

      else
      {
        LODWORD(v189) = 0;
        if (!v412)
        {
          goto LABEL_208;
        }
      }

      v190 = v405 - *(v187 + 5);
      v429[v185] = v190;
      if (v187[12])
      {
        v191 = 0;
        do
        {
          v190 += (*(v187 + 15))(v187, *&v187[8 * v191 + 40]) + 2;
          v429[v185] = v190;
          ++v191;
        }

        while (v191 < v187[12]);
      }

      v431[v185++] = v188;
      v186 = v189 + 1;
    }

    while (v185 != v402);
    v192 = 0;
    v193 = v413;
    v194 = *(&v414 + 1);
    v375 = v413;
    v369 = *(&v414 + 1) + 2;
    v5 = v403;
    v195 = v402;
    v3 = v382;
    v389 = *(&v414 + 1);
    v393 = v413;
    do
    {
      v196 = v429[v192];
      if (v196 <= v405)
      {
        v204 = v3;
        v200 = v431[v192];
        v197 = v192 + 1;
      }

      else
      {
        v197 = v192 + 1;
        do
        {
          if (v197 >= v195)
          {
            if (v192 >= 4)
            {
              v429[v192] = v196;
              v13 = sub_18190EDA8(87759);
              v47 = 0;
              v4 = v401;
              goto LABEL_85;
            }

            v429[v197] = 0;
            v431[v197] = v193;
            v195 = v192 + 2;
          }

          v199 = v431[v192];
          v200 = v199 - 1;
          v201 = *(v194 + 2 * (v199 - 1));
          if (!*(v194 + 2 * (v199 - 1)))
          {
            v201 = sub_18194644C(&v413, v199 - 1);
            v194 = v389;
            v193 = v393;
          }

          v202 = v201 + 2;
          v198 = v201 + 2;
          if (!v412)
          {
            if (v199 >= v193)
            {
              v198 = 0;
            }

            else
            {
              v203 = *(v194 + 2 * v199);
              if (!*(v194 + 2 * v199))
              {
                v203 = sub_18194644C(&v413, v199);
                v194 = v389;
                v193 = v393;
              }

              v198 = v203 + 2;
            }
          }

          v196 -= v202;
          v429[v197] += v198;
          v431[v192] = v200;
          v5 = v403;
        }

        while (v196 > v405);
        v204 = v3;
      }

      v429[v192] = v196;
      if (v200 >= v193)
      {
LABEL_244:
        v195 = v197;
        v3 = v204;
        v4 = v401;
        v5 = v403;
      }

      else
      {
        v205 = v375 - v200;
        v206 = (v369 + 2 * v200);
        v207 = v200 + 1;
        while (1)
        {
          v209 = *(v206 - 1);
          if (!*(v206 - 1))
          {
            v209 = sub_18194644C(&v413, v200);
            v194 = v389;
            v193 = v393;
          }

          v208 = v209 + 2;
          v196 += v209 + 2;
          if (v196 > v405)
          {
            break;
          }

          v429[v192] = v196;
          v431[v192] = ++v200;
          if (!v412)
          {
            if (v207 >= v375)
            {
              v208 = 0;
            }

            else
            {
              v210 = *v206;
              if (!*v206)
              {
                v210 = sub_18194644C(&v413, v200);
                v194 = v389;
                v193 = v393;
              }

              v208 = v210 + 2;
            }
          }

          v429[v197] -= v208;
          ++v206;
          ++v207;
          if (!--v205)
          {
            goto LABEL_244;
          }
        }

        if (v192)
        {
          v211 = v431[v192 - 1];
        }

        else
        {
          v211 = 0;
        }

        v3 = v204;
        v4 = v401;
        v5 = v403;
        if (v211 >= v200)
        {
          v13 = sub_18190EDA8(87792);
          v47 = 0;
          goto LABEL_85;
        }
      }

      v192 = v197;
    }

    while (v197 < v195);
    v212 = -2 * v412;
    v213 = (v195 - 1);
LABEL_253:
    if (v213 >= 1)
    {
      v215 = v429[v213];
      v216 = v213 - 1;
      v217 = v429[v213 - 1];
      v218 = v431[v213 - 1];
      if (!*(v194 + 2 * (v218 - v412)))
      {
        sub_18194644C(&v413, v218 - v412);
        v212 = -2 * v412;
        v194 = v389;
        v193 = v393;
      }

      v370 = v213;
      if (v213 == v195 - 1)
      {
        v219 = 0;
      }

      else
      {
        v219 = -2;
      }

      v220 = v194 + 2 * v218;
      v221 = v218 + 1;
      while (1)
      {
        v223 = v218 - 1;
        v224 = *(v220 - 2);
        if (*(v220 - 2))
        {
          v225 = *(v220 + v212);
          if (!v215)
          {
            goto LABEL_260;
          }
        }

        else
        {
          v224 = sub_18194644C(&v413, v218 - 1);
          v212 = -2 * v412;
          v194 = v389;
          v193 = v393;
          v225 = *(v220 - 2 * v412);
          if (!v215)
          {
LABEL_260:
            v222 = v225 + 2;
            goto LABEL_261;
          }
        }

        if (v384 || (v222 = v215 + v225 + 2, v222 > v217 + v219 - v224))
        {
          v223 = v218;
          v222 = v215;
LABEL_269:
          v429[v370] = v222;
          v429[v216] = v217;
          v4 = v401;
          if (v370 == 1)
          {
            v214 = 0;
          }

          else
          {
            v214 = v431[(v370 - 2)];
          }

          v3 = v382;
          v213 = v216;
          v5 = v403;
          if (v223 <= v214)
          {
            v13 = sub_18190EDA8(87836);
            v47 = 0;
            goto LABEL_85;
          }

          goto LABEL_253;
        }

LABEL_261:
        v431[v216] = v223;
        v217 = v217 - v224 - 2;
        v220 -= 2;
        --v221;
        --v218;
        v215 = v222;
        if (v221 <= 1)
        {
          goto LABEL_269;
        }
      }
    }

    v390 = **(v436 + 10);
    if (v195 < 1)
    {
      v47 = 0;
      goto LABEL_335;
    }

    v249 = 0;
    v47 = 0;
    v407 = (v406 - v398);
    v250 = v195;
    while (2)
    {
      v424 = 0;
      if (v249 > v387)
      {
        v251 = v47;
        if (v384)
        {
          v252 = 1;
        }

        else
        {
          v252 = v422;
        }

        v253 = sub_1818E21FC(v399, &v424, &v422, v252, 0);
        v423 = v253;
        if (v253)
        {
          v13 = v253;
LABEL_438:
          v47 = v251;
          v4 = v401;
          goto LABEL_85;
        }

        v254 = v424;
        sub_1818E2114(v424, v390);
        *(&v433 + v249) = v254;
        v251 = v47 + 1;
        v193 = v393;
        v430[v249] = v393;
        if (*(v399 + 33))
        {
          sub_1818EF720(v399, *(v254 + 4), 5, *(v16 + 4), &v423);
          v13 = v423;
          if (v423)
          {
            goto LABEL_438;
          }

          ++v47;
          v193 = v393;
        }

        else
        {
          ++v47;
        }

LABEL_304:
        if (v250 != ++v249)
        {
          continue;
        }

        if (v47 < 1)
        {
          v4 = v401;
LABEL_335:
          v376 = 0;
          v371 = 0;
          LODWORD(v262) = v47 - 1;
        }

        else
        {
          v272 = v47;
          v4 = v401;
          if (v47 == 1)
          {
            v273 = 0;
            goto LABEL_447;
          }

          v273 = v47 & 0x7FFFFFFE;
          v329 = v273;
          v330 = v428;
          v331 = &v433 + 8;
          do
          {
            v332 = *(*v331 + 4);
            *(v330 - 1) = *(*(v331 - 1) + 4);
            *v330 = v332;
            v331 += 16;
            v330 += 2;
            v329 -= 2;
          }

          while (v329);
          if (v273 != v47)
          {
LABEL_447:
            v333 = v47 - v273;
            v334 = &__src[4 * v273 + 13];
            v335 = &v433 + v273;
            do
            {
              v336 = *v335++;
              *v334 = *(v336 + 4);
              v334 += 4;
              --v333;
            }

            while (v333);
          }

          v262 = (v47 - 1);
          if (v47 == 1)
          {
            v376 = 0;
            v47 = 1;
            v371 = 1;
          }

          else
          {
            v337 = 0;
            v338 = 1;
            v386 = (v47 - 1);
            do
            {
              v339 = v338;
              v340 = v337;
              do
              {
                if (*(*(&v433 + v339) + 4) < *(*(&v433 + v340) + 4))
                {
                  v340 = v339;
                }

                ++v339;
              }

              while (v272 != v339);
              if (v337 != v340)
              {
                v341 = *(&v433 + v337);
                v342 = *(v341 + 4);
                v343 = *(&v433 + v340);
                v410 = *(v343 + 4);
                v344 = dword_1EA8315A8 / *(v399 + 52);
                v345 = *(v341 + 112);
                v346 = v3;
                v347 = *(v345 + 52);
                v348 = *(*(v343 + 112) + 52);
                *(v345 + 52) = v348;
                sub_181939854(v345, v344 + 1);
                v349 = *(v343 + 112);
                *(v349 + 52) = v347;
                v3 = v346;
                sub_181939854(v349, v342);
                v350 = *(v341 + 112);
                *(v350 + 52) = v348;
                sub_181939854(v350, v410);
                v193 = v393;
                *(v341 + 4) = v410;
                v262 = v386;
                *(v343 + 4) = v342;
              }

              ++v337;
              ++v338;
            }

            while (v337 != v262);
            v376 = 1;
            v47 = v272;
            v371 = 1;
            v4 = v401;
          }
        }

        v263 = *(&v433 + v262);
        *v373 = bswap32(*(v263 + 4));
        if ((v390 & 8) == 0 && v402 != v47)
        {
          if (v47 <= v402)
          {
            v264 = &v436;
          }

          else
          {
            v264 = &v433;
          }

          *(*(v263 + 80) + 8) = *(*(v264[v387] + 10) + 8);
        }

        v391 = v47;
        v385 = v262;
        if (*(v399 + 33) && v193 >= 1)
        {
          v265 = 0;
          v266 = 0;
          v267 = 0;
          v268 = v412 == 0;
          v269 = v433;
          LODWORD(v270) = *(v433 + 24) + *(v433 + 12);
          v271 = v433;
          do
          {
            if (v265 == v270)
            {
              v274 = 8 * v266;
              v275 = &v437 + v274;
              v276 = &v433 + v274 + 8;
              v277 = v266 + 1;
              do
              {
                if (v277 >= v391)
                {
                  v278 = v275;
                }

                else
                {
                  v278 = v276;
                }

                v271 = *v278;
                v270 = v270 + v268 + *(*v278 + 24) + *(*v278 + 12);
                ++v266;
                v275 += 8;
                v276 += 8;
                ++v277;
              }

              while (v265 == v270);
            }

            v279 = *(v414 + 8 * v265);
            if (v265 != v431[v267] || (v269 = *(&v433 + v267 + 1), v267 = v267 + 1, v412))
            {
              if (v266 >= v391 || *(v269 + 4) != *&__src[4 * v266 + 13] || v279 < *(v271 + 80) || v279 >= *(v271 + 88))
              {
                v408 = v267;
                if (!v365)
                {
                  v394 = *(v414 + 8 * v265);
                  v280 = v269;
                  sub_1818EF720(v399, bswap32(*v279), 5, *(v269 + 4), &v423);
                  v279 = v394;
                  v269 = v280;
                  v267 = v408;
                  v268 = v412 == 0;
                }

                v281 = *(*(&v414 + 1) + 2 * v265);
                if (!*(*(&v414 + 1) + 2 * v265))
                {
                  v395 = v279;
                  v282 = v269;
                  v281 = sub_18194644C(&v413, v265);
                  v279 = v395;
                  v269 = v282;
                  v267 = v408;
                  v268 = v412 == 0;
                }

                v13 = v423;
                if (v281 > *(v269 + 16))
                {
                  if (!v423)
                  {
                    v425 = 0;
                    v424 = 0;
                    v426 = 0;
                    v283 = v279;
                    v396 = v269;
                    (*(v269 + 128))(v269, v279, &v424);
                    v269 = v396;
                    v267 = v408;
                    v268 = v412 == 0;
                    if (v426 > WORD2(v426))
                    {
                      v284 = *(v271 + 88);
                      if (v284 <= v283 || v283 + WORD2(v426) <= v284)
                      {
                        sub_1818EF720(*(v396 + 72), bswap32(*(v283 + HIWORD(v426) - 4)), 3, *(v396 + 4), &v423);
                        v269 = v396;
                      }

                      else
                      {
                        v285 = sub_18190EDA8(80846);
                        v269 = v396;
                        v423 = v285;
                      }

                      v268 = v412 == 0;
                      v267 = v408;
                    }
                  }

                  v13 = v423;
                }

                if (v13)
                {
                  v5 = v403;
                  v47 = v391;
                  goto LABEL_85;
                }

                v193 = v413;
              }
            }

            ++v265;
          }

          while (v265 < v193);
        }

        v397 = v193;
        if (v376)
        {
          v286 = 0;
          v287 = 0;
          v289 = *(&v414 + 1);
          v288 = v414;
          v409 = v414;
          while (1)
          {
            v290 = *(&v433 + v286);
            v291 = v431[v286];
            v292 = *(v288 + 8 * v291);
            v293 = *(v289 + 2 * v291);
            v294 = v293 + v377;
            v295 = (v400 + v287);
            if (*(v290 + 8))
            {
              if (v412)
              {
                v296 = v400 + v287;
                v425 = 0;
                v424 = 0;
                v426 = 0;
                LODWORD(v291) = v291 - 1;
                (*(v290 + 128))(v290, *(v288 + 8 * v291), &v424);
                v297 = v424;
                if (v424 > 0x7F)
                {
                  v292 = (v400 + v287);
                  if (v424 >> 14)
                  {
                    v300 = sub_1819436D0((v296 + 4), v424);
                    v292 = (v400 + v287);
                    v294 = v300 + 4;
                  }

                  else
                  {
                    *(v296 + 4) = (v424 >> 7) | 0x80;
                    *(v296 + 5) = v297 & 0x7F;
                    v294 = 6;
                  }
                }

                else
                {
                  v292 = (v400 + v287);
                  *(v296 + 4) = v424;
                  v294 = 5;
                }

                v295 = 0;
              }

              else
              {
                v292 -= 4;
                if (v293 == 4)
                {
                  v298 = v292;
                  v299 = (*(v16 + 120))(v16, v292);
                  v295 = (v400 + v287);
                  v288 = v409;
                  v292 = v298;
                  v294 = v299;
                }
              }
            }

            else
            {
              *(*(v290 + 80) + 8) = *v292;
            }

            v301 = &v418;
            v302 = &v414 + 1;
            do
            {
              v303 = *v301++;
              ++v302;
            }

            while (v303 <= v291);
            v304 = *v302;
            if (v292 < v304 && &v292[v294] > v304)
            {
              break;
            }

            v306 = sub_1818DCB50(v16, v398 + v286, v292, v294, v295, *(v290 + 4));
            v4 = v401;
            if (v306)
            {
              v13 = v306;
              goto LABEL_443;
            }

            v287 += v294;
            if (++v286 == v385)
            {
              goto LABEL_397;
            }
          }

          v319 = sub_18190EDA8(88070);
LABEL_441:
          v13 = v319;
          v4 = v401;
LABEL_443:
          v5 = v403;
          v47 = v391;
          goto LABEL_85;
        }

LABEL_397:
        v307 = v397;
        v308 = 1 - v391;
        if (1 - v391 >= v391)
        {
LABEL_415:
          v423 = 0;
          if (v372 == 1 && !*(v16 + 24) && (v320 = v433, *(v433 + 20) >= *(v16 + 9)))
          {
            v423 = sub_1818EF3D0(v433, -1);
            sub_1818E61B4(v320, v16, &v423);
            v13 = v423;
            v4 = v401;
            v323 = v381;
            v47 = v391;
            if (!v423)
            {
              v13 = sub_1818F0E10(*(v320 + 72), v320, *(v320 + 4));
            }
          }

          else
          {
            if (*(v399 + 33))
            {
              v321 = v365 == 0;
            }

            else
            {
              v321 = 0;
            }

            v322 = v371;
            if (!v321)
            {
              v322 = 0;
            }

            v4 = v401;
            v323 = v381;
            v47 = v391;
            if (v322 == 1)
            {
              v324 = v391;
              v325 = &v433;
              do
              {
                v326 = *v325++;
                sub_1818EF720(v399, bswap32(*(*(v326 + 80) + 8)), 5, *(v326 + 4), &v423);
                --v324;
              }

              while (v324);
              v13 = v423;
            }

            else
            {
              v13 = 0;
            }
          }

          if (v47 <= v323)
          {
            v327 = &(&v436)[v47];
            v328 = v323 - v47 + 1;
            v5 = v403;
            do
            {
              if (!v13)
              {
                v13 = sub_1818F0E10(*(*v327 + 72), *v327, *(*v327 + 4));
              }

              ++v327;
              --v328;
            }

            while (v328);
          }

          else
          {
            v5 = v403;
          }

          goto LABEL_85;
        }

        v309 = v412 == 0;
        v310 = v431[0];
        v311 = 2 * v391 - 1;
        while (2)
        {
          if (v308 >= 0)
          {
            v312 = v308;
          }

          else
          {
            v312 = -v308;
          }

          if (!*(&v420 + v312))
          {
            if (v308 < 0)
            {
              v313 = v312 - 1;
              if (v430[v313] >= v431[v313])
              {
LABEL_408:
                if (v312 <= v381)
                {
                  v314 = v313;
                  v315 = v430[v313] + v309;
                }

                else
                {
                  v314 = v313;
                  v315 = v307;
                }

                v316 = v431[v314] + v309;
                v317 = v431[v312] - v316;
                goto LABEL_413;
              }
            }

            else
            {
              if (v308)
              {
                LODWORD(v313) = v312 - 1;
                goto LABEL_408;
              }

              v316 = 0;
              v315 = 0;
              v317 = v310;
LABEL_413:
              v318 = *(&v433 + v312);
              v319 = sub_1819460F8(v318, v315, v316, v317, &v413);
              if (v319)
              {
                goto LABEL_441;
              }

              *(&v420 + v312) = 1;
              *(v318 + 20) = v405 - v429[v312];
              v307 = v397;
            }
          }

          ++v308;
          if (!--v311)
          {
            goto LABEL_415;
          }

          continue;
        }
      }

      break;
    }

    v255 = (&v436)[v249];
    *(&v433 + v249) = v255;
    (&v436)[v249] = 0;
    v256 = *(v255 + 14);
    v257 = *(v256 + 40);
    if ((*(v256 + 52) & 4) != 0 && v257[8] >= *(v256 + 48))
    {
      if (v257[32])
      {
        v259 = sub_1819360C0(v256);
        v193 = v393;
        v13 = v259;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = v257[12];
      if (!v13)
      {
        if (v257[46] <= v257[50])
        {
          v258 = sub_1818D8DD8(v256);
        }

        else
        {
          v258 = sub_181936438(v256);
        }

        v13 = v258;
        v193 = v393;
      }
    }

    v423 = v13;
    ++v47;
    if (v407 == v249)
    {
      v260 = 2;
    }

    else
    {
      v260 = 1;
    }

    if (v260 == *(*(v255 + 14) + 56) || v13 != 0)
    {
      if (v13)
      {
        goto LABEL_436;
      }

      goto LABEL_304;
    }

    v13 = sub_18190EDA8(87869);
LABEL_436:
    v4 = v401;
LABEL_85:
    v48 = v414;
    if (!v414)
    {
      v50 = v381;
LABEL_94:
      v51 = v436;
      if (!v436)
      {
        goto LABEL_98;
      }

LABEL_95:
      v52 = *(v51 + 14);
      if ((*(v52 + 52) & 0x20) != 0)
      {
        v53 = *(v52 + 40);
        --*(v53 + 152);
        *(v52 + 32) = *(v53 + 168);
        *(v53 + 168) = v52;
        (*(**(v53 + 72) + 144))(*(v53 + 72), *(v53 + 200) * (*(v52 + 48) - 1), *(v52 + 8));
      }

      else
      {
        sub_181932B68(v52);
      }

      goto LABEL_98;
    }

    v49 = &off_1ED452EB0;
    v50 = v381;
    if (!dword_1ED452E80)
    {
      goto LABEL_91;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v48);
    --qword_1ED456A90;
    off_1ED452EB0(v48);
    v48 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_94;
    }

    v49 = &xmmword_1ED452F28;
LABEL_91:
    (*v49)(v48);
    v51 = v436;
    if (v436)
    {
      goto LABEL_95;
    }

LABEL_98:
    if (v50)
    {
      if (v437)
      {
        v54 = *(v437 + 112);
        if ((*(v54 + 52) & 0x20) != 0)
        {
          v181 = *(v54 + 40);
          --*(v181 + 152);
          *(v54 + 32) = *(v181 + 168);
          *(v181 + 168) = v54;
          (*(**(v181 + 72) + 144))(*(v181 + 72), *(v181 + 200) * (*(v54 + 48) - 1), *(v54 + 8));
        }

        else
        {
          sub_181932B68(v54);
        }
      }

      if (v402 != 2)
      {
        if (v438)
        {
          v182 = *(v438 + 112);
          if ((*(v182 + 52) & 0x20) != 0)
          {
            v183 = *(v182 + 40);
            --*(v183 + 152);
            *(v182 + 32) = *(v183 + 168);
            *(v183 + 168) = v182;
            (*(**(v183 + 72) + 144))(*(v183 + 72), *(v183 + 200) * (*(v182 + 48) - 1), *(v182 + 8));
          }

          else
          {
            sub_181932B68(v182);
          }
        }

        if (v402 != 3 && v439)
        {
          v184 = *(v439 + 112);
          if ((*(v184 + 52) & 0x20) != 0)
          {
            v226 = *(v184 + 40);
            --*(v226 + 152);
            *(v184 + 32) = *(v226 + 168);
            *(v226 + 168) = v184;
            (*(**(v226 + 72) + 144))(*(v226 + 72), *(v226 + 200) * (*(v184 + 48) - 1), *(v184 + 8));
          }

          else
          {
            sub_181932B68(v184);
          }
        }
      }
    }

    if (v47 >= 1)
    {
      v227 = v47;
      v228 = &v433;
      do
      {
        if (*v228)
        {
          v229 = *(*v228 + 112);
          if ((*(v229 + 52) & 0x20) != 0)
          {
            v230 = *(v229 + 40);
            --*(v230 + 152);
            *(v229 + 32) = *(v230 + 168);
            *(v230 + 168) = v229;
            (*(**(v230 + 72) + 144))(*(v230 + 72), *(v230 + 200) * (*(v229 + 48) - 1), *(v229 + 8));
          }

          else
          {
            sub_181932B68(v229);
          }
        }

        v228 = (v228 + 8);
        --v227;
      }

      while (v227);
    }

    v1 = v379;
    v2 = v380;
    if (v380)
    {
LABEL_281:
      sub_181935120(v2);
    }

LABEL_282:
    v2 = v400;
LABEL_283:
    *(v5 + 12) = 0;
    v231 = *(v5 + 112);
    if ((*(v231 + 52) & 0x20) != 0)
    {
      v232 = *(v231 + 40);
      --*(v232 + 152);
      *(v231 + 32) = *(v232 + 168);
      *(v232 + 168) = v231;
      (*(**(v232 + 72) + 144))(*(v232 + 72), *(v232 + 200) * (*(v231 + 48) - 1), *(v231 + 8));
    }

    else
    {
      sub_181932B68(v231);
    }

    v6 = *(v1 + 84) - 1;
    *(v1 + 84) = v6;
    v7 = *(v3 + 8 * v6);
LABEL_4:
    *(v1 + 136) = v7;
    v5 = v7;
    if (v13)
    {
      goto LABEL_477;
    }
  }

  v8 = *(v1 + 84);
  if (*(v1 + 84))
  {
    goto LABEL_23;
  }

  v9 = *(*(v1 + 32) + 16);
  if (v9)
  {
    while (1)
    {
      if (v9 != v1 && !*v9)
      {
        v14 = *(v1 + 136);
        if (*(v9 + 136) == v14)
        {
          break;
        }
      }

      v9 = *(v9 + 40);
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v361 = 88302;
    goto LABEL_476;
  }

LABEL_10:
  *&v413 = 0;
  LODWORD(v424) = 0;
  v10 = *(v5 + 72);
  v11 = *(v5 + 112);
  v12 = *(v11 + 40);
  if ((*(v11 + 52) & 4) != 0 && v12[8] >= *(v11 + 48))
  {
    if (v12[32])
    {
      v13 = sub_1819360C0(v11);
      if (v13)
      {
        goto LABEL_480;
      }
    }
  }

  else
  {
    v13 = v12[12];
    if (v13)
    {
LABEL_480:
      *(v1 + 152) = 0;
      goto LABEL_477;
    }

    if (v12[46] <= v12[50])
    {
      v13 = sub_1818D8DD8(v11);
      if (v13)
      {
        goto LABEL_480;
      }
    }

    else
    {
      v13 = sub_181936438(v11);
      if (v13)
      {
        goto LABEL_480;
      }
    }
  }

  LODWORD(v433) = sub_1818E21FC(v10, &v413, &v424, *(v5 + 4), 0);
  v7 = v413;
  sub_1818E61B4(v5, v413, &v433);
  if (*(v10 + 33))
  {
    sub_1818EF720(v10, v424, 5, *(v5 + 4), &v433);
  }

  v13 = v433;
  if (!v433)
  {
    memcpy((v7 + 28), (v5 + 28), 2 * *(v5 + 12));
    memcpy((v7 + 40), (v5 + 40), 8 * *(v5 + 12));
    *(v7 + 12) = *(v5 + 12);
    sub_1818E2114(v5, **(v7 + 80) & 0xF7);
    *(*(v5 + 80) + *(v5 + 9) + 8) = bswap32(v424);
    *(v1 + 84) = 1;
    *(v1 + 86) = 0;
    *(v1 + 144) = v5;
    *(v1 + 152) = v7;
    goto LABEL_4;
  }

  *(v1 + 152) = 0;
  if (v7)
  {
    v363 = *(v7 + 112);
    if ((*(v363 + 52) & 0x20) != 0)
    {
      v364 = *(v363 + 40);
      --*(v364 + 152);
      *(v363 + 32) = *(v364 + 168);
      *(v364 + 168) = v363;
      (*(**(v364 + 72) + 144))(*(v364 + 72), *(v364 + 200) * (*(v363 + 48) - 1), *(v363 + 8));
    }

    else
    {
      sub_181932B68(v363);
    }
  }

LABEL_477:
  if (v2)
  {
    sub_181935120(v2);
  }

  return v13;
}