uint64_t sub_181987C40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = *(v11 + 144);
  if (*(a3 + 63) == 1)
  {
    for (i = *(a3 + 80); i; i = i[5])
    {
      if (*i == *a1)
      {
        break;
      }
    }

    if (v12 < 2)
    {
      return 0;
    }
  }

  else
  {
    i = 0;
    if (v12 < 2)
    {
      return 0;
    }
  }

  v14 = 1;
  while (1)
  {
    v15 = &byte_1EA831A58;
    if (!*(*v11 + 103))
    {
      v15 = (*(v11 + 136) + 40 * v14);
    }

    v16 = *v15;
    if (v16 == 173)
    {
      if (*(v15 + 2) == i)
      {
        return 1;
      }

      goto LABEL_10;
    }

    if (v16 == 102 && *(v15 + 3) == v9)
    {
      v17 = *(v15 + 2);
      if (v17 == *(a3 + 40))
      {
        return 1;
      }

      v18 = *(a3 + 16);
      if (v18)
      {
        break;
      }
    }

LABEL_10:
    if (++v14 == v12)
    {
      return 0;
    }
  }

  while (v17 != *(v18 + 88))
  {
    v18 = *(v18 + 40);
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t sub_181987D5C(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v35[0] = a1;
  v35[1] = a2;
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  for (i = 0; ; ++i)
  {
    if (!*v8)
    {
      return 0;
    }

    if (sub_18195EDEC(v35, *v8, a3, a4, a5, a6, a7, a8) || sub_18195ECC4(v35, *(v8 + 1), v10, v11, v12, v13, v14, v15))
    {
      return 1;
    }

    v16 = *(a2 + 24);
    v17 = *v8;
    v18 = *(a2 + 36);
    if ((*(v16 + 48) & 0x80) != 0 || *v17 != 1 || (v19 = *(v17 + 1), *v19 != 168) || *(v19 + 12) != -1)
    {
      v33 = i;
      v40 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v44 = 0u;
      memset(v45, 0, sizeof(v45));
      v42 = 0u;
      v43 = 0u;
      LOBYTE(v40) = 114;
      v41 = v45;
      v45[0] = -88;
      HIDWORD(v46) = v18;
      v20 = *(v16 + 16);
      if (v20)
      {
        while (1)
        {
          if (*(v20 + 98))
          {
            v21 = *(v20 + 94);
            if (*v17 == v21)
            {
              a3 = *(v20 + 72);
              if (!a3)
              {
                goto LABEL_19;
              }

              v22 = *(v8 + 1);
              if (v22)
              {
                if (!sub_181959260(a1, v22, a3, v18))
                {
                  break;
                }
              }
            }
          }

LABEL_12:
          v20 = *(v20 + 40);
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        v21 = *(v20 + 94);
LABEL_19:
        if (v21)
        {
          v23 = 0;
          v24 = v21;
          do
          {
            *(&v40 + 1) = *(*(v20 + 64) + 8 * v23);
            v25 = *(*(v20 + 8) + 2 * v23);
            if (v25 == -2)
            {
              v26 = *(*(v20 + 80) + 24 * v23 + 8);
              if (*v26 == 114)
              {
                goto LABEL_26;
              }

              *&v41 = *(*(v20 + 80) + 24 * v23 + 8);
            }

            else
            {
              *&v41 = v45;
              LODWORD(v47) = v25;
            }

            v26 = &v40;
LABEL_26:
            v27 = v24;
            v28 = (v17 + 2);
            while (sub_181959260(0, *v28, v26, v18) > 1)
            {
              v28 += 3;
              if (!--v27)
              {
                goto LABEL_12;
              }
            }

            ++v23;
          }

          while (v23 != v24);
        }

        *(v8 + 7) = v20;
        v29 = a4;
        if (a4)
        {
          do
          {
            if (!*v29)
            {
              break;
            }

            if (*(v29 + 7) == v20)
            {
              break;
            }

            v29 = *(v29 + 4);
          }

          while (v29);
        }

        if (v29 != v8)
        {
          v8[41] = 1;
        }
      }

LABEL_37:
      i = v33;
      if (!*(v8 + 7))
      {
        break;
      }
    }

    v8 = *(v8 + 4);
    if (!v8)
    {
      return 0;
    }
  }

  if (v33 || *(v8 + 4))
  {
    sqlite3_snprintf(16, v39, "%r ", (v33 + 1));
  }

  else
  {
    v39[0] = 0;
  }

  sub_181910730(a1, "%sON CONFLICT clause does not match any PRIMARY KEY or UNIQUE constraint", a3, a4, a5, a6, a7, a8, v39);
  return 1;
}

BOOL sub_181988040(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 94) != *(a2 + 94) || *(a1 + 96) != *(a2 + 96) || *(a1 + 98) != *(a2 + 98))
  {
    return 0;
  }

  if (!*(a1 + 94))
  {
    return sub_181959260(0, *(a2 + 72), *(a1 + 72), 0xFFFFFFFFLL) == 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a2 + 8) + 2 * v2);
    if (v3 != *(*(a1 + 8) + 2 * v2))
    {
      return 0;
    }

    if (v3 == 65534)
    {
      v4 = a1;
      v5 = a2;
      v6 = sub_181959260(0, *(*(a2 + 80) + 24 * v2 + 8), *(*(a1 + 80) + 24 * v2 + 8), 0xFFFFFFFFLL);
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
        return 0;
      }
    }

    if (*(*(a2 + 56) + v2) != *(*(a1 + 56) + v2))
    {
      return 0;
    }

    v8 = *(*(a2 + 64) + 8 * v2);
    v9 = *(*(a1 + 64) + 8 * v2);
    if (v8)
    {
      if (v9)
      {
        while (1)
        {
          if (*v8 == *v9)
          {
            if (!*v8)
            {
              goto LABEL_19;
            }
          }

          else if (byte_181A20298[*v8] != byte_181A20298[*v9])
          {
            return 0;
          }

          ++v8;
          ++v9;
        }
      }

      return 0;
    }

    if (v9)
    {
      return 0;
    }

LABEL_19:
    if (++v2 >= *(a2 + 94))
    {
      return sub_181959260(0, *(a2 + 72), *(a1 + 72), 0xFFFFFFFFLL) == 0;
    }
  }
}

uint64_t sub_1819881C0(uint64_t result, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__s)
  {
    v9 = result;
    result = *(result + 144);
    if (*(v9 + 148) <= result)
    {
      result = sub_18194C8AC(v9, 118, 0, 1, 0, a6, a7, a8);
    }

    else
    {
      *(v9 + 144) = result + 1;
      v10 = *(v9 + 136) + 40 * result;
      *v10 = 118;
      *(v10 + 4) = 0x100000000;
      *(v10 + 12) = 0;
      *(v10 + 28) = 0;
      *(v10 + 20) = 0;
      *(v10 + 36) = 0;
    }

    if (!*(*v9 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        LODWORD(result) = *(v9 + 144) - 1;
      }

      result = sub_18194CB90(v9, *(v9 + 136) + 40 * result, __s, 0);
    }

    v11 = *(v9 + 144);
    if (*(v9 + 148) <= v11)
    {

      return sub_18194C8AC(v9, 84, 1uLL, 1, 0, a6, a7, a8);
    }

    else
    {
      *(v9 + 144) = v11 + 1;
      v12 = *(v9 + 136) + 40 * v11;
      *v12 = 84;
      *(v12 + 4) = 0x100000001;
      *(v12 + 12) = 0;
      *(v12 + 28) = 0;
      *(v12 + 20) = 0;
      *(v12 + 36) = 0;
    }
  }

  return result;
}

uint64_t sub_1819882F4(void *a1, uint64_t a2)
{
  v4 = *(a2 + 11);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2 + 11);
  }

  result = sub_1818BAF94(a1, v5);
  if (v4)
  {
    v7 = 0;
    v8 = *(a2 + 10);
    v9 = v4 << 6;
    v10 = &off_1E6A277A0[v8];
    do
    {
      if (!*(*a1 + 103))
      {
        result = sub_1818900D0(a1[19] + v7, *v10, -1, 1u, 0);
      }

      v7 += 64;
      ++v10;
    }

    while (v9 != v7);
  }

  else if (!*(*a1 + 103))
  {
    v11 = *a2;
    v12 = a1[19];

    return sub_1818900D0(v12, v11, -1, 1u, 0);
  }

  return result;
}

uint64_t sub_1819883CC(void **a1, uint64_t a2)
{
  v4 = sub_181929E8C(*a1, 8uLL, 2029538362);
  v8 = v4;
  if (v4)
  {
    *v4 = a2;
  }

  result = *(a1 + 36);
  if (*(a1 + 37) <= result)
  {
    result = sub_18194C8AC(a1, 72, 0, 1, 0, v5, v6, v7);
  }

  else
  {
    *(a1 + 36) = result + 1;
    v10 = &a1[17][5 * result];
    *v10 = 72;
    *(v10 + 4) = 0x100000000;
    *(v10 + 12) = 0;
    *(v10 + 28) = 0;
    *(v10 + 20) = 0;
    *(v10 + 36) = 0;
  }

  if (*(*a1 + 103))
  {
    if (v8)
    {
      result = sub_181939EC8(*a1, v8);
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(a1 + 36) - 1);
    }

    v11 = &a1[17][5 * result];
    if (*(v11 + 1))
    {
      result = sub_18194CB90(a1, v11, v8, 0xFFFFFFF3);
    }

    else if (v8)
    {
      *(v11 + 16) = v8;
      *(v11 + 1) = -13;
    }
  }

  v12 = *(a1 + 36);
  if (*(a1 + 37) <= v12)
  {

    return sub_18194C8AC(a1, 84, 1uLL, 1, 0, v5, v6, v7);
  }

  else
  {
    *(a1 + 36) = v12 + 1;
    v13 = &a1[17][5 * v12];
    *v13 = 84;
    *(v13 + 4) = 0x100000001;
    *(v13 + 12) = 0;
    *(v13 + 28) = 0;
    *(v13 + 20) = 0;
    *(v13 + 36) = 0;
  }

  return result;
}

uint64_t sub_181988554(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v2 = a1;
      v3 = a2;
      sub_181932DEC(a1);
      a2 = v3;
      a1 = v2;
    }
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if ((a2 & 0x80000000) == 0)
  {
    v5 = v5 & 0xFFFFFFF3 | (4 * a2);
    *(v4 + 40) = v5;
  }

  v6 = (v5 >> 2) & 3;
  if (*(a1 + 17))
  {
    v7 = *(a1 + 20) - 1;
    *(a1 + 20) = v7;
    if (!v7)
    {
      sub_181932ECC(a1);
    }
  }

  return v6;
}

uint64_t sub_1819885E8(_BYTE *a1)
{
  if (a1)
  {
    v1 = "exclusive";
    for (i = a1; ; ++i)
    {
      if (*i == *v1)
      {
        if (!*i)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*i] != byte_181A20298[*v1])
      {
        for (j = "normal"; ; ++j)
        {
          if (*a1 == *j)
          {
            if (!*a1)
            {
              return 0;
            }
          }

          else if (byte_181A20298[*a1] != byte_181A20298[*j])
          {
            return 0xFFFFFFFFLL;
          }

          ++a1;
        }
      }

      ++v1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_181988680(unsigned __int8 *a1)
{
  for (i = 0; a1[i] == aNone[i]; ++i)
  {
    if (!a1[i])
    {
      return 0;
    }

LABEL_3:
    ;
  }

  if (byte_181A20298[a1[i]] == byte_181A20298[aNone[i]])
  {
    goto LABEL_3;
  }

  for (j = 0; a1[j] == aFull[j]; ++j)
  {
    if (!a1[j])
    {
      return 1;
    }

LABEL_9:
    ;
  }

  if (byte_181A20298[a1[j]] == byte_181A20298[aFull[j]])
  {
    goto LABEL_9;
  }

  for (k = 0; a1[k] == aIncremental[k]; ++k)
  {
    if (!a1[k])
    {
      return 2;
    }

LABEL_15:
    ;
  }

  if (byte_181A20298[a1[k]] == byte_181A20298[aIncremental[k]])
  {
    goto LABEL_15;
  }

  v8 = v1;
  v9 = v2;
  v7 = 0;
  sub_181949B34(a1, &v7);
  if (v7 >= 3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_181988784(uint64_t result)
{
  if (*(result + 101))
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2 >= 1)
    {
      v3 = v2 + 1;
      for (i = (*(result + 32) + 16); ; i += 32)
      {
        v5 = *(i - 1);
        if (v5)
        {
          break;
        }

LABEL_4:
        if (--v3 <= 1)
        {
          return result;
        }
      }

      v6 = *i;
      v7 = *(v1 + 48);
      v8 = *(v5 + 8);
      if (*(v5 + 17))
      {
        ++*(v5 + 20);
        if (!*(v5 + 18))
        {
          result = sub_181932DEC(v5);
        }
      }

      v9 = *v8;
      if (*(*v8 + 16))
      {
        v10 = 0;
        *(v9 + 11) = 1;
        *(v9 + 13) = 0;
      }

      else
      {
        v10 = (v6 & 7u) > 2;
        *(v9 + 12) = v10;
        *(v9 + 13) = (v6 & 7) == 4;
        *(v9 + 11) = (v6 & 7) == 1;
        if ((v6 & 7) != 1)
        {
          v12 = 0;
          if ((v7 & 8) != 0)
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          *(v9 + 14) = v11;
          goto LABEL_13;
        }
      }

      v11 = 0;
      *(v9 + 14) = 0;
      v12 = 1;
LABEL_13:
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if ((v7 & 0x10) != 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = 4 * v11;
      }

      else
      {
        v15 = 12;
      }

      *(v9 + 15) = v15 | v13;
      v16 = *(v9 + 25) & 0xFE;
      if ((v7 & 0x38u) < 0x20uLL)
      {
        ++v16;
      }

      *(v9 + 25) = v16;
      if (*(v5 + 17))
      {
        v17 = *(v5 + 20) - 1;
        *(v5 + 20) = v17;
        if (!v17)
        {
          result = sub_181932ECC(v5);
        }
      }

      goto LABEL_4;
    }
  }

  return result;
}

uint64_t *sub_181988914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v4 = a2;
      sub_181932DEC(a1);
      a2 = v4;
    }
  }

  v5 = *v3;
  *(v5 + 160) = a2;
  result = *(v5 + 72);
  v7 = *result;
  if (*result && *v7 >= 3)
  {
    v10 = a2;
    *(v5 + 27) = a2 > 0;
    v8 = sub_181933ECC;
    if (!*(v5 + 48))
    {
      if (a2 < 1 || (v8 = sub_181933ED8, *(v5 + 296)))
      {
        v8 = sub_18193417C;
      }
    }

    *(v5 + 288) = v8;
    result = (*(v7 + 80))();
  }

  if (*(a1 + 17))
  {
    v9 = *(a1 + 20) - 1;
    *(a1 + 20) = v9;
    if (!v9)
    {
      return sub_181932ECC(a1);
    }
  }

  return result;
}

void sub_181988A14(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a2;
  if ((v9 - 48) < 3)
  {
    v10 = (v9 - 48);
    goto LABEL_16;
  }

  v11 = a2 + 1;
  v12 = "file";
  for (i = *a2; *v12 == i; i = v14)
  {
    if (!i)
    {
      v10 = 1;
      goto LABEL_16;
    }

LABEL_5:
    ++v12;
    v14 = *v11++;
  }

  if (byte_181A20298[i] == byte_181A20298[*v12])
  {
    goto LABEL_5;
  }

  v15 = (a2 + 1);
  for (j = "memory"; *j == v9; ++j)
  {
    if (!v9)
    {
      v10 = 2;
      goto LABEL_16;
    }

LABEL_11:
    v17 = *v15++;
    LOBYTE(v9) = v17;
  }

  if (byte_181A20298[v9] == byte_181A20298[*j])
  {
    goto LABEL_11;
  }

  v10 = 0;
LABEL_16:
  v18 = *a1;
  if (v10 != *(*a1 + 102))
  {
    v19 = *(*(v18 + 32) + 40);
    if (v19)
    {
      if (!*(v18 + 101) || *(v19 + 16))
      {

        sub_181910730(a1, "temporary storage cannot be changed from within a transaction", a3, a4, a5, a6, a7, a8, a9);
        return;
      }

      sub_1818E3028(*(*(v18 + 32) + 40));
      *(*(v18 + 32) + 40) = 0;
      sub_181908F74(v18);
    }

    *(v18 + 102) = v10;
  }
}

void sub_181988B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a1;
  v10 = *(*(*a1 + 32) + 40);
  if (v10)
  {
    if (*(v9 + 101) && !*(v10 + 16))
    {
      sub_1818E3028(*(*(*a1 + 32) + 40));
      *(*(v9 + 32) + 40) = 0;

      sub_181908F74(v9);
    }

    else
    {

      sub_181910730(a1, "temporary storage cannot be changed from within a transaction", a3, a4, a5, a6, a7, a8, a9);
    }
  }
}

uint64_t sub_181988BE4(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  if (*a1 - 58 >= 0xFFFFFFFFFFFFFFF6)
  {
    v15 = 0;
    sub_181949B34(a1, &v15);
    return v15;
  }

  v6 = strlen(a1);
  v7 = 0;
  v8 = v6 & 0x3FFFFFFF;
  while (1)
  {
    if (v8 != byte_181A2469F[v7])
    {
      goto LABEL_3;
    }

    if (v8)
    {
      v9 = &aOnoffalseyestr[byte_181A24697[v7]];
      v10 = v8 + 1;
      v11 = a1;
      while (1)
      {
        v12 = *v9;
        if (!*v9)
        {
          break;
        }

        LODWORD(v12) = byte_181A20298[v12];
        v13 = byte_181A20298[*v11];
        if (v12 != v13)
        {
          goto LABEL_12;
        }

        ++v9;
        ++v11;
        if (--v10 <= 1)
        {
          goto LABEL_13;
        }
      }

      v13 = byte_181A20298[*v11];
LABEL_12:
      if (v12 != v13)
      {
        goto LABEL_3;
      }
    }

LABEL_13:
    if (!a2 || (v7 | 0xFFFFFFF8uLL) <= 0xFFFFFFFD)
    {
      return byte_181A246A7[v7];
    }

LABEL_3:
    if (++v7 == 8)
    {
      return a3;
    }
  }
}

uint64_t sub_181988D08(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = result;
  v12 = 0;
  v25 = &a9;
  v13 = a2;
  while (1)
  {
    while (1)
    {
      v15 = *(a3 + v12);
      if (v15 != 105)
      {
        break;
      }

      v20 = v25++;
      v21 = *v20;
      v22 = *(v11 + 144);
      if (*(v11 + 148) > v22)
      {
        *(v11 + 144) = v22 + 1;
        v14 = *(v11 + 136) + 40 * v22;
        *v14 = 71;
        *(v14 + 4) = v21;
        *(v14 + 8) = v13 + v12;
        *(v14 + 12) = 0;
        *(v14 + 28) = 0;
        *(v14 + 20) = 0;
        *(v14 + 36) = 0;
        goto LABEL_3;
      }

      result = sub_18194C8AC(v11, 71, v21, (v13 + v12++), 0, a6, a7, a8);
    }

    if (v15 != 115)
    {
      break;
    }

    v16 = v25++;
    v17 = *v16;
    if (*v16)
    {
      v18 = 118;
    }

    else
    {
      v18 = 75;
    }

    result = *(v11 + 144);
    if (*(v11 + 148) <= result)
    {
      result = sub_18194C8AC(v11, v18, 0, (v13 + v12), 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = result + 1;
      v19 = *(v11 + 136) + 40 * result;
      *v19 = v18;
      *(v19 + 2) = 0;
      *(v19 + 4) = 0;
      *(v19 + 8) = v13 + v12;
      *(v19 + 1) = 0;
      *(v19 + 12) = 0;
      *(v19 + 28) = 0;
      *(v19 + 20) = 0;
      *(v19 + 36) = 0;
    }

    if (*(*v11 + 103))
    {
LABEL_3:
      ++v12;
    }

    else
    {
      if ((result & 0x80000000) != 0)
      {
        LODWORD(result) = *(v11 + 144) - 1;
      }

      result = sub_18194CB90(v11, *(v11 + 136) + 40 * result, v17, 0);
      ++v12;
    }
  }

  if (!*(a3 + v12))
  {
    v23 = *(v11 + 144);
    if (*(v11 + 148) <= v23)
    {
      return sub_18194C8AC(v11, 84, a2, v12, 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v23 + 1;
      v24 = *(v11 + 136) + 40 * v23;
      *v24 = 84;
      *(v24 + 4) = v13;
      *(v24 + 8) = v12;
      *(v24 + 12) = 0;
      *(v24 + 28) = 0;
      *(v24 + 20) = 0;
      *(v24 + 36) = 0;
    }
  }

  return result;
}

uint64_t sub_181988F04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a4;
    v9 = a2;
    v10 = result;
    do
    {
      if (*(v9 + 24) && (v8 || (*(v9 + 4) & 0x40000) == 0))
      {
        result = sub_181988D08(v10, 1uLL, "sissii", a4, a5, a6, a7, a8, *(v9 + 56));
      }

      v9 = *(v9 + 16);
    }

    while (v9);
  }

  return result;
}

uint64_t sub_181989004(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = &unk_181A246AF;
  }

  else
  {
    v3 = &unk_181A204C4;
  }

  if (a2)
  {
    v4 = 12;
  }

  else
  {
    v4 = 4;
  }

  sub_181893FF0(a1, "like", 2, 1, v3, sub_1818EDC84, 0, 0, 0, 0, 0);
  v5 = sub_181893B48(a1, "like", 2, 1u, 0);
  *(v5 + 4) = *(v5 + 4) & 0xFFDFFFFF | v4;
  sub_181893FF0(a1, "like", 3, 1, v3, sub_1818EDC84, 0, 0, 0, 0, 0);
  result = sub_181893B48(a1, "like", 3, 1u, 0);
  *(result + 4) = *(result + 4) & 0xFFDFFFFF | v4;
  return result;
}

uint64_t sub_18198911C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 144);
  if (*(a1 + 148) <= v9)
  {
    sub_18194C8AC(a1, 84, 3uLL, 1, 0, a6, a7, a8);
  }

  else
  {
    *(a1 + 144) = v9 + 1;
    v10 = *(a1 + 136) + 40 * v9;
    *v10 = 84;
    *(v10 + 4) = 0x100000003;
    *(v10 + 12) = 0;
    *(v10 + 28) = 0;
    *(v10 + 20) = 0;
    *(v10 + 36) = 0;
  }

  v11 = *(a1 + 144);
  v12 = (v11 + 2);
  if (*(a1 + 148) <= v11)
  {
    v11 = sub_18194C8AC(a1, 50, 1uLL, v12, 1, a6, a7, a8);
  }

  else
  {
    *(a1 + 144) = v11 + 1;
    v13 = *(a1 + 136) + 40 * v11;
    *v13 = 0x100000032;
    *(v13 + 8) = v12;
    *(v13 + 12) = 1;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0;
  }

  v14 = *(a1 + 144);
  if (*(a1 + 148) <= v14)
  {
    sub_18194C8AC(a1, 70, 0, 0, 0, a6, a7, a8);
  }

  else
  {
    *(a1 + 144) = v14 + 1;
    v15 = *(a1 + 136) + 40 * v14;
    *v15 = 70;
    *(v15 + 1) = 0u;
    *(v15 + 17) = 0u;
    *(v15 + 32) = 0;
  }

  return v11;
}

unsigned __int8 *sub_181989258(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = a3 - a2;
  do
  {
    v4 = a2;
    v5 = v3;
    v6 = *a2++;
    --v3;
  }

  while ((byte_181A204C8[v6] & 1) != 0);
  v7 = v5;
  v8 = (v5 << 32) + 0x100000000;
  v9 = v7 - 2;
  do
  {
    v10 = byte_181A204C8[a2[v9]];
    v8 -= 0x100000000;
    --v9;
  }

  while ((v10 & 1) != 0);
  v11 = v8 >> 32;
  result = sub_181929E8C(a1, (v8 >> 32) + 1, 1565185748);
  if (result)
  {
    v13 = result;
    memcpy(result, v4, v11);
    result = v13;
    v13[v11] = 0;
    v14 = *v13;
    if (*v13)
    {
      v15 = v13 + 1;
      do
      {
        if (byte_181A204C8[v14])
        {
          *(v15 - 1) = 32;
        }

        v16 = *v15++;
        v14 = v16;
      }

      while (v16);
    }
  }

  return result;
}

void sub_181989324(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(*a1 + 24);
  }

  else
  {
    v10 = 0;
  }

  v139 = 0;
  __s = 0;
  v138 = 0;
  *v136 = 0;
  v137 = 0;
  v11 = *a3;
  if (*a3)
  {
    v12 = *(v11 + 20);
    if ((~v12 & 0x202) == 0 && *(v11 + 22) == 1)
    {
      v13 = *(v11 + 8);
      v14 = a3[1];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if ((v12 & 1) == 0)
    {
      v13 = sub_18193CB70(v11, 1);
      v14 = a3[1];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = a3[1];
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_13:
  v15 = *(v14 + 20);
  if ((~v15 & 0x202) != 0 || *(v14 + 22) != 1)
  {
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_18193CB70(v14, 1);
    }
  }

  else
  {
    v14 = *(v14 + 8);
  }

LABEL_19:
  if (!v13)
  {
    v13 = &byte_181A2878D;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &byte_181A2878D;
  }

  if ((*(v10 + 198) & 4) != 0)
  {
    v135 = 0;
    if (sqlite3_initialize())
    {
      return;
    }

    if (word_1ED452E84)
    {
      v24 = qword_1ED452F08(2);
      v25 = v24;
      if (v24)
      {
        xmmword_1ED452F18(v24);
        v26 = 0;
LABEL_58:
        for (i = qword_1ED456AE8; i; i = *(i + 16))
        {
          if (!strcmp("memdb", *(i + 24)))
          {
            break;
          }
        }

        if ((v26 & 1) == 0)
        {
          xmmword_1ED452F28(v25);
        }

        *v136 = i;
        if (!i)
        {
          return;
        }

        v28 = sub_18189049C(i, "x", v10, &v135, 0, 0x100u);
        if (v28)
        {
          goto LABEL_242;
        }

        v37 = v135;
        v38 = sub_181893800(v10, v135, v31, v32, v33, v34, v35, v36);
        if (!v38)
        {
          sub_1818E3028(v37);
          v28 = 7;
          goto LABEL_242;
        }

        v45 = v38;
        v46 = *(v10 + 32) + 32 * *(v10 + 196);
        v47 = *(v46 + 8);
        if (v47)
        {
          sub_1818E3028(v47);
        }

        *(v46 + 8) = v37;
        *(v46 + 24) = v45;
        *(v10 + 111) = 0;
        v48 = (v10 + 111);
LABEL_101:
        v70 = sub_181893800(v10, v37, v39, v40, v41, v42, v43, v44);
        *(v46 + 24) = v70;
        if (v70)
        {
          if (*(v70 + 112) && *(v70 + 113) != *(v10 + 100))
          {
            v133 = 0;
            v137 = sub_1818A8BAC(v10, "attached databases must use the same text encoding as main database", v71, v72, v41, v42, v43, v44, v132);
            v28 = 1;
          }

          else
          {
            v28 = 0;
            v133 = 1;
          }
        }

        else
        {
          v133 = 0;
          v28 = 7;
        }

        v73 = *(v46 + 8);
        if (*(v73 + 17))
        {
          ++*(v73 + 20);
          if (!*(v73 + 18))
          {
            sub_181932DEC(v73);
            v73 = *(v46 + 8);
          }
        }

        v74 = **(v73 + 8);
        if (!*(v74 + 16))
        {
          v75 = *(v74 + 344);
          if (!v75 || *(v75 + 63) != 2)
          {
            *(v74 + 8) = *(v10 + 105);
          }
        }

        v76 = *(*(v10 + 32) + 8);
        v134 = v48;
        if (!v76)
        {
          LOWORD(v77) = 0;
          goto LABEL_125;
        }

        if (!*(v76 + 17))
        {
          v77 = (*(*(v76 + 8) + 40) >> 2) & 3;
          goto LABEL_125;
        }

        ++*(v76 + 20);
        if (*(v76 + 18))
        {
          v77 = (*(*(v76 + 8) + 40) >> 2) & 3;
        }

        else
        {
          sub_181932DEC(v76);
          v77 = (*(*(v76 + 8) + 40) >> 2) & 3;
          if (!*(v76 + 17))
          {
            goto LABEL_125;
          }
        }

        v78 = *(v76 + 20) - 1;
        *(v76 + 20) = v78;
        if (!v78)
        {
          sub_181932ECC(v76);
        }

LABEL_125:
        if (*(v73 + 17))
        {
          ++*(v73 + 20);
          if (*(v73 + 18))
          {
            *(*(v73 + 8) + 40) = *(*(v73 + 8) + 40) & 0xFFF3 | (4 * v77);
          }

          else
          {
            sub_181932DEC(v73);
            v79 = *(v73 + 17);
            *(*(v73 + 8) + 40) = *(*(v73 + 8) + 40) & 0xFFF3 | (4 * v77);
            if (!v79)
            {
              goto LABEL_132;
            }
          }

          v80 = *(v73 + 20) - 1;
          *(v73 + 20) = v80;
          if (!v80)
          {
            sub_181932ECC(v73);
          }
        }

        else
        {
          *(*(v73 + 8) + 40) = *(*(v73 + 8) + 40) & 0xFFF3 | (4 * v77);
        }

LABEL_132:
        v81 = *(v46 + 8);
        v82 = *(v10 + 48);
        v83 = *(v81 + 8);
        if (*(v81 + 17))
        {
          ++*(v81 + 20);
          if (!*(v81 + 18))
          {
            sub_181932DEC(v81);
          }
        }

        v84 = *v83;
        v85 = *(*v83 + 16);
        if (*(*v83 + 16))
        {
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 1;
        }

        else
        {
          v89 = 0;
          if ((v82 & 8) != 0)
          {
            v88 = 12;
          }

          else
          {
            v88 = 8;
          }

          if ((v82 & 8) != 0)
          {
            v87 = 3;
          }

          else
          {
            v87 = 2;
          }

          v86 = 1;
        }

        v48 = v134;
        v84[11] = v89;
        v84[12] = v86;
        v84[13] = 0;
        v84[14] = v87;
        if (v85)
        {
          v90 = 1;
        }

        else
        {
          v90 = (v82 & 0x10) == 0;
        }

        if (v90)
        {
          v91 = v88;
        }

        else
        {
          v91 = 12;
        }

        v84[15] = v91 | v87;
        v92 = v84[25] & 0xFE;
        if ((v82 & 0x20) == 0)
        {
          ++v92;
        }

        v84[25] = v92;
        if (*(v81 + 17))
        {
          v93 = *(v81 + 20) - 1;
          *(v81 + 20) = v93;
          if (!v93)
          {
            sub_181932ECC(v81);
          }
        }

        v94 = *(v46 + 8);
        if (*(v94 + 17))
        {
          v95 = *(v94 + 20) - 1;
          *(v94 + 20) = v95;
          if (!v95)
          {
            sub_181932ECC(v94);
          }
        }

        *(v46 + 16) = 3;
        if (!v133)
        {
          goto LABEL_193;
        }

        if (*v46)
        {
          v96 = a3[2];
          if (v96)
          {
            v97 = *(v96 + 20);
            v98 = byte_181A203AA[v97 & 0x3F];
            if ((v98 - 1) < 2)
            {
              v102 = sub_181929E8C(v10, 0x12uLL, 354097263);
              if (v102)
              {
                strcpy(v102, "Invalid key value");
              }

              v137 = v102;
              v28 = 1;
              goto LABEL_193;
            }

            if ((v98 - 3) < 2)
            {
              if ((v97 & 2) != 0 && *(v96 + 22) == 1)
              {
                v99 = *(v96 + 16);
              }

              else if ((v97 & 0x10) != 0)
              {
                v99 = *(v96 + 16);
                if ((*(v96 + 20) & 0x400) != 0)
                {
                  v99 += *v96;
                }
              }

              else if (v97)
              {
                v99 = 0;
              }

              else
              {
                v99 = sub_18193CB44(v96, 1);
                v96 = a3[2];
              }

              v109 = sqlite3_value_blob(v96);
              v107 = *(v10 + 40) - 1;
              v108 = v10;
              v110 = v99;
              goto LABEL_192;
            }

            if (v98 == 5)
            {
              v103 = __s;
              if (sub_18198B05C(v10, v16, __s))
              {
                v28 = 0;
                goto LABEL_194;
              }

              v104 = *(*(v10 + 32) + 8);
              v105 = *(**(v104 + 8) + 320);
              if (v105 && (v106 = *v105, v105 += 2, (v28 = v106) != 0) || (v28 = 0, sub_181918F14(v104) >= 1))
              {
                v107 = *(v10 + 40) - 1;
                v108 = v10;
                v109 = v105;
                v110 = v28;
LABEL_192:
                v28 = sub_181928904(v108, v107, v109, v110);
              }
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            sub_1819012D0(99877);
            v28 = 0;
          }
        }

        else
        {
          v28 = 7;
        }

LABEL_193:
        v103 = __s;
LABEL_194:
        if (!v103)
        {
          goto LABEL_207;
        }

          ;
        }

        v112 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(j);
          --qword_1ED456A90;
          off_1ED452EB0(j);
          j = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_207:
            if (v28)
            {
              goto LABEL_231;
            }

            if (!*v48)
            {
              sub_181932C40(v10);
            }

            *(v10 + 196) = 0;
            *(v10 + 44) &= ~0x10u;
            if (*(v10 + 792))
            {
              LODWORD(v135) = 1;
              v113 = *(**(*(v46 + 8) + 8) + 72);
              if (*v113)
              {
                (*(*v113 + 80))(v113, 44, &v135);
              }
            }

            if ((*(v10 + 198) & 4) != 0)
            {
              v28 = 0;
              if (!*v48)
              {
                goto LABEL_224;
              }

              goto LABEL_230;
            }

            v114 = *(v10 + 44);
            v115 = *(*(v10 + 32) + 24);
            *(v10 + 100) = *(v115 + 113);
            if ((*(v115 + 114) & 1) != 0 || (v116 = sub_18189F330(v10, 0, &v137, 0, v41, v42, v43, v44)) == 0)
            {
              v117 = *(v10 + 40);
              if (v117 < 2)
              {
LABEL_226:
                v28 = 0;
                if (v114)
                {
                  if (!*v48)
                  {
                    goto LABEL_224;
                  }
                }

                else
                {
                  *(v10 + 44) &= ~1u;
                  if (!*v48)
                  {
LABEL_224:
                    sub_181932CD8(v10);
                    if (!v28)
                    {
                      return;
                    }

                    goto LABEL_231;
                  }
                }

LABEL_230:
                if (!v28)
                {
                  return;
                }

LABEL_231:
                if ((*(v10 + 198) & 4) == 0)
                {
                  v119 = *(v10 + 40) - 1;
                  v120 = *(*(v10 + 32) + 32 * v119 + 8);
                  if (v120)
                  {
                    sub_1818E3028(v120);
                    v121 = *(v10 + 32) + 32 * v119;
                    *(v121 + 8) = 0;
                    *(v121 + 24) = 0;
                  }

                  sub_181908F74(v10);
                  *(v10 + 40) = v119;
                  if (v28 == 3082 || v28 == 7)
                  {
                    if (!*(v10 + 103) && !*(v10 + 104))
                    {
                      *(v10 + 103) = 1;
                      if (*(v10 + 220) >= 1)
                      {
                        *(v10 + 424) = 1;
                      }

                      ++*(v10 + 432);
                      *(v10 + 436) = 0;
                      v130 = *(v10 + 344);
                      if (v130)
                      {
                        sub_181910730(v130, "out of memory", v122, v123, v124, v125, v126, v127, v132);
                        for (k = *(v10 + 344); ; ++*(k + 52))
                        {
                          *(k + 24) = 7;
                          k = *(k + 216);
                          if (!k)
                          {
                            break;
                          }
                        }
                      }
                    }

                    if (v137)
                    {
                      sub_181929C84(v10, v137);
                    }

                    v128 = sub_1818A8BAC(v10, "out of memory", v122, v123, v124, v125, v126, v127, v132);
                  }

                  else
                  {
                    v27 = v137;
                    if (v137)
                    {
                      goto LABEL_244;
                    }

                    v128 = sub_1818A8BAC(v10, "unable to open database: %s", v122, v123, v124, v125, v126, v127, v13);
                  }

                  v27 = v128;
                  v137 = v128;
LABEL_243:
                  if (!v27)
                  {
LABEL_247:
                    if (a1)
                    {
                      if (v28)
                      {
                        a1[9] = v28;
                        if (*(*a1 + 20))
                        {
                          switch(v28)
                          {
                            case 516:
                              v129 = "abort due to ROLLBACK";
                              break;
                            case 101:
                              v129 = "no more rows available";
                              break;
                            case 100:
                              v129 = "another row available";
                              break;
                            default:
                              if (v28 > 0x1Cu || ((0x1410004uLL >> v28) & 1) != 0)
                              {
                                v129 = "unknown error";
                              }

                              else
                              {
                                v129 = off_1E6A27DD8[v28];
                              }

                              break;
                          }

                          sub_18190B23C(a1, v129, -1, 1u, 0);
                        }
                      }
                    }

                    return;
                  }

LABEL_244:
                  if (!a1 || (a1[9] = 1, sub_1818900D0(*a1, v27, -1, 1u, 0xFFFFFFFFFFFFFFFFLL), (v27 = v137) != 0))
                  {
                    sub_181929C84(v10, v27);
                  }

                  goto LABEL_247;
                }

LABEL_242:
                v27 = v137;
                goto LABEL_243;
              }

              v118 = 32 * v117 - 8;
              while (1)
              {
                if ((*(*(*(v10 + 32) + v118) + 114) & 1) == 0)
                {
                  v116 = sub_18189F330(v10, (v117 - 1), &v137, 0, v41, v42, v43, v44);
                  if (v116)
                  {
                    break;
                  }
                }

                --v117;
                v118 -= 32;
                if ((v117 + 1) <= 2)
                {
                  goto LABEL_226;
                }
              }
            }

            v28 = v116;
            if (!*v48)
            {
              goto LABEL_224;
            }

            goto LABEL_230;
          }

          v112 = &xmmword_1ED452F28;
        }

        (*v112)(j);
        goto LABEL_207;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 1;
    goto LABEL_58;
  }

  v17 = *(v10 + 40);
  if (v17 >= *(v10 + 164) + 2)
  {
    v23 = sub_1818A8BAC(v10, "too many attached databases - max %d", a3, a4, a5, a6, a7, a8, *(v10 + 164));
LABEL_48:
    v27 = v23;
    v28 = 0;
    v137 = v23;
    goto LABEL_243;
  }

  v18 = *(v10 + 32);
  if (v17 < 1)
  {
    goto LABEL_49;
  }

  for (m = 0; m != v17; ++m)
  {
    for (n = 0; *(v18[4 * m] + n) == v16[n]; ++n)
    {
      if (!*(v18[4 * m] + n))
      {
LABEL_42:
        v23 = sub_1818A8BAC(v10, "database %s is already in use", a3, a4, a5, a6, a7, a8, v16);
        goto LABEL_48;
      }

LABEL_30:
      ;
    }

    if (byte_181A20298[*(v18[4 * m] + n)] == byte_181A20298[v16[n]])
    {
      goto LABEL_30;
    }

    if (!m)
    {
      v21 = "main";
      for (ii = v16; ; ++ii)
      {
        if (*v21 == *ii)
        {
          if (!*v21)
          {
            goto LABEL_42;
          }
        }

        else if (byte_181A20298[*v21] != byte_181A20298[*ii])
        {
          break;
        }

        ++v21;
      }
    }
  }

LABEL_49:
  if (v18 == (v10 + 696))
  {
    v49 = sub_181929E8C(v10, 0x60uLL, 0x1030040D67ECA3BLL);
    if (v49)
    {
      v18 = v49;
      v50 = *(v10 + 32);
      v51 = *v50;
      v52 = v50[1];
      v53 = v50[3];
      v49[2] = v50[2];
      v49[3] = v53;
      *v49 = v51;
      v49[1] = v52;
      goto LABEL_76;
    }

    return;
  }

  v29 = 32 * v17 + 32;
  if (!v18)
  {
    v54 = sub_181929E8C(v10, v29, 0x1030040D67ECA3BLL);
    goto LABEL_75;
  }

  if (*(v10 + 512) <= v18)
  {
    goto LABEL_74;
  }

  if (*(v10 + 496) <= v18)
  {
    if (v29 < 0x81)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  if (*(v10 + 504) > v18 || v29 > *(v10 + 438))
  {
LABEL_74:
    v54 = sub_181929F38(v10, v18, v29, 0x1030040D67ECA3BLL);
LABEL_75:
    v18 = v54;
    if (v54)
    {
      goto LABEL_76;
    }

    return;
  }

LABEL_76:
  *(v10 + 32) = v18;
  v46 = &v18[4 * *(v10 + 40)];
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v138 = *(v10 + 76);
  v55 = sub_18198A7CC(*(*v10 + 24), v13, &v138, v136, &__s, &v139);
  if (!v55)
  {
    v65 = *(v10 + 48);
    if ((v65 & 0x2000000000) != 0)
    {
      if ((v65 & 0x1000000000) != 0)
      {
        v66 = v138;
      }

      else
      {
        v66 = v138 & 0xFFFFFFFB;
      }
    }

    else
    {
      v66 = v138 & 0xFFFFFFF8 | 1;
    }

    v138 = v66 | 0x100;
    v28 = sub_18189049C(*v136, __s, v10, (v46 + 8), 0, v66 | 0x100);
    ++*(v10 + 40);
    v67 = strlen(v16);
    v68 = sub_181929E8C(v10, v67 + 1, 354097263);
    v69 = v68;
    if (v68)
    {
      memcpy(v68, v16, v67 + 1);
    }

    *v46 = v69;
    *(v10 + 111) = 0;
    v48 = (v10 + 111);
    if (v28 == 19)
    {
      v137 = sub_1818A8BAC(v10, "database is already attached", v39, v40, v41, v42, v43, v44, v132);
      v28 = 1;
    }

    else if (!v28)
    {
      v37 = *(v46 + 8);
      goto LABEL_101;
    }

    *(v46 + 16) = 3;
    goto LABEL_193;
  }

  if (v55 == 7 && !*(v10 + 103) && !*(v10 + 104))
  {
    *(v10 + 103) = 1;
    if (*(v10 + 220) >= 1)
    {
      *(v10 + 424) = 1;
    }

    ++*(v10 + 432);
    *(v10 + 436) = 0;
    v100 = *(v10 + 344);
    if (v100)
    {
      sub_181910730(v100, "out of memory", v56, v57, v58, v59, v60, v61, v132);
      for (jj = *(v10 + 344); ; ++*(jj + 52))
      {
        *(jj + 24) = 7;
        jj = *(jj + 216);
        if (!jj)
        {
          break;
        }
      }
    }
  }

  v62 = v139;
  if (a1)
  {
    a1[9] = 1;
    sub_1818900D0(*a1, v62, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v62)
  {
    v63 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_88;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v62);
    --qword_1ED456A90;
    off_1ED452EB0(v62);
    v62 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v63 = &xmmword_1ED452F28;
LABEL_88:
      v64 = *v63;

      v64(v62);
    }
  }
}

void sub_18198A198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = a2;
  memset(v71, 0, 56);
  v14 = *a1;
  if (*(*a1 + 197))
  {
    goto LABEL_2;
  }

  v16 = *(v14 + 44);
  v17 = *(*(v14 + 32) + 24);
  *(v14 + 100) = *(v17 + 113);
  if ((*(v17 + 114) & 1) == 0)
  {
    v18 = a4;
    v19 = sub_18189F330(v14, 0, (a1 + 8), 0, a5, a6, a7, a8);
    a4 = v18;
    if (v19)
    {
LABEL_15:
      *(a1 + 24) = v19;
      ++*(a1 + 52);
      goto LABEL_66;
    }
  }

  v70 = a4;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v24 = v12;
  v25 = *(v14 + 40);
  if (v25 >= 2)
  {
    v26 = 32 * v25 - 8;
    while (1)
    {
      if ((*(*(*(v14 + 32) + v26) + 114) & 1) == 0)
      {
        v19 = sub_18189F330(v14, (v25 - 1), (a1 + 8), 0, a5, a6, a7, a8);
        if (v19)
        {
          break;
        }
      }

      --v25;
      v26 -= 32;
      if ((v25 + 1) <= 2)
      {
        goto LABEL_16;
      }
    }

    v8 = v22;
    v9 = v21;
    v10 = v20;
    goto LABEL_15;
  }

LABEL_16:
  v12 = v24;
  if ((v16 & 1) == 0)
  {
    *(v14 + 44) &= ~1u;
  }

  v11 = v23;
  a4 = v70;
  v8 = v22;
  v9 = v21;
  v10 = v20;
  if (*(v14 + 111))
  {
    *(v14 + 44) |= 0x10u;
  }

LABEL_2:
  if (*(a1 + 52))
  {
    goto LABEL_66;
  }

  memset(v71 + 8, 0, 48);
  *&v71[0] = a1;
  if (!v10)
  {
    v15 = 0;
    if (!v9)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (*v9 == 60)
    {
      *v9 = 118;
    }

    else
    {
      DWORD2(v71[2]) = v15 & 0xF7FF6FEF;
      v28 = *&v71[0];
      v72 = *&v71[0];
      v73 = sub_1818B1AF8;
      if ((v15 & 0x80000) != 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = sub_1818B15A0;
      }

      v74 = v29;
      v75 = 0;
      v76 = 0;
      v77 = v71;
      v30 = *(*&v71[0] + 308) + *(v9 + 40);
      *(*&v71[0] + 308) = v30;
      v31 = *(*v28 + 148);
      if (v31 < v30)
      {
        goto LABEL_42;
      }

      v32 = a4;
      v33 = v9;
      v34 = v8;
      v35 = v15 & 0x8009010;
      sub_181959BA0(&v72, v33);
      v36 = v72;
      *(v72 + 308) -= *(v33 + 40);
      v38 = DWORD1(v71[2]);
      v37 = DWORD2(v71[2]);
      *(v33 + 4) |= WORD4(v71[2]) & 0x8010;
      v15 = v37 | v35;
      v8 = v34;
      v9 = v33;
      DWORD2(v71[2]) = v15;
      if (v38 >= 1 || *(v36 + 52) > 0)
      {
        goto LABEL_66;
      }

      a4 = v32;
    }

LABEL_23:
    if (v8)
    {
      if (*v8 == 60)
      {
        *v8 = 118;
        goto LABEL_26;
      }

      DWORD2(v71[2]) = v15 & 0xF7FF6FEF;
      v28 = *&v71[0];
      v72 = *&v71[0];
      v73 = sub_1818B1AF8;
      if ((v15 & 0x80000) != 0)
      {
        v39 = 0;
      }

      else
      {
        v39 = sub_1818B15A0;
      }

      v74 = v39;
      v75 = 0;
      v76 = 0;
      v77 = v71;
      v40 = *(*&v71[0] + 308) + *(v8 + 40);
      *(*&v71[0] + 308) = v40;
      v31 = *(*v28 + 148);
      if (v31 < v40)
      {
LABEL_42:
        sub_181910730(v28, "Expression tree is too large (maximum depth %d)", a3, a4, a5, a6, a7, a8, v31);
        goto LABEL_66;
      }

      v58 = a4;
      v59 = v8;
      v60 = v15 & 0x8009010;
      sub_181959BA0(&v72, v59);
      v61 = v72;
      *(v72 + 308) -= *(v59 + 40);
      v63 = DWORD1(v71[2]);
      v62 = DWORD2(v71[2]);
      *(v59 + 4) |= WORD4(v71[2]) & 0x8010;
      v64 = v62 | v60;
      v8 = v59;
      DWORD2(v71[2]) = v64;
      if (v63 >= 1)
      {
        goto LABEL_66;
      }

      a4 = v58;
      if (*(v61 + 52) > 0)
      {
        goto LABEL_66;
      }
    }

LABEL_26:
    if (!a4 || (*a4 != 118 ? (a3 = 0) : (a3 = *(a4 + 8)), (v44 = *a1, (v45 = *(*a1 + 528)) == 0) || *(v44 + 197) || *(a1 + 302)))
    {
LABEL_51:
      v46 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
      v47 = *(a1 + 44);
      v48 = __OFSUB__(v47, 4);
      v49 = v47 - 4;
      if (v49 < 0 != v48)
      {
        v50 = *(a1 + 60);
        v51 = (v50 + 1);
        *(a1 + 60) = v50 + 4;
      }

      else
      {
        v51 = *(a1 + 48);
        *(a1 + 44) = v49;
        *(a1 + 48) = v51 + 4;
      }

      sub_181956EF4(a1, v10, v51);
      sub_181956EF4(a1, v9, (v51 + 1));
      sub_181956EF4(a1, v8, (v51 + 2));
      if (v46)
      {
        sub_181958B0C(a1, 0, (v51 + 3 - *v11), (v51 + 3), *v11, v11, 0);
        v55 = v12 == 24;
        v56 = *(v46 + 144);
        if (*(v46 + 148) <= v56)
        {
          sub_18194C8AC(v46, 166, v55, 0, 0, v52, v53, v54);
        }

        else
        {
          *(v46 + 144) = v56 + 1;
          v57 = *(v46 + 136) + 40 * v56;
          *v57 = 166;
          *(v57 + 4) = v55;
          *(v57 + 8) = 0u;
          *(v57 + 24) = 0u;
        }
      }

LABEL_66:
      if (!v10)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v65 = v45(*(v44 + 536), v12, a3, 0, 0, *(a1 + 368));
    if (v65 == 1)
    {
      v66 = v8;
      v67 = 23;
      v68 = "not authorized";
    }

    else
    {
      if ((v65 & 0xFFFFFFFD) == 0)
      {
        if (v65)
        {
          goto LABEL_66;
        }

        goto LABEL_51;
      }

      v66 = v8;
      v67 = 1;
      v68 = "authorizer malfunction";
    }

    sub_181910730(a1, v68, a3, a4, a5, a6, a7, a8, v69);
    *(a1 + 24) = v67;
    v8 = v66;
    goto LABEL_66;
  }

  if (*v10 == 60)
  {
    v15 = 0;
    *v10 = 118;
    if (!v9)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  DWORD2(v71[2]) = 0;
  v72 = a1;
  v73 = sub_1818B1AF8;
  v74 = sub_1818B15A0;
  v75 = 0;
  v76 = 0;
  v77 = v71;
  v27 = *(a1 + 308) + *(v10 + 40);
  *(a1 + 308) = v27;
  if (*(*a1 + 148) >= v27)
  {
    v41 = a4;
    sub_181959BA0(&v72, v10);
    v42 = v72;
    *(v72 + 308) -= *(v10 + 40);
    v43 = DWORD1(v71[2]);
    v15 = DWORD2(v71[2]);
    *(v10 + 4) |= WORD4(v71[2]) & 0x8010;
    if (v43 <= 0 && *(v42 + 52) <= 0)
    {
      a4 = v41;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_181910730(a1, "Expression tree is too large (maximum depth %d)", a3, a4, a5, a6, a7, a8, *(*a1 + 148));
  }

LABEL_67:
  sub_1819439E0(v14, v10);
LABEL_68:
  if (v9)
  {
    sub_1819439E0(v14, v9);
  }

  if (v8)
  {
    sub_1819439E0(v14, v8);
  }
}

uint64_t sub_18198A7CC(const char *a1, char *__s, unsigned int *a3, uint64_t *a4, const char **a5, char **a6)
{
  v12 = *a3;
  if (!__s)
  {
    LODWORD(v15) = 0;
    goto LABEL_14;
  }

  v13 = strlen(__s);
  LODWORD(v15) = v13 & 0x3FFFFFFF;
  if ((v12 & 0x40) != 0)
  {
    if (v15 < 5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (byte_1ED452E86)
    {
      v16 = v15 > 4;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
LABEL_14:
      if (!sqlite3_initialize())
      {
        v19 = sub_181902484((v15 + 8), 4117238463);
        if (v19)
        {
          *v19 = 0;
          v20 = (v19 + 1);
          if (v15)
          {
            v15 = v15;
            memcpy(v19 + 1, __s, v15);
          }

          else
          {
            v15 = 0;
          }

          *&v20[v15] = 0;
          v24 = v12 & 0xFFFFFFBF;
          goto LABEL_23;
        }
      }

      return 7;
    }
  }

  if (*__s != 1701603686 || __s[4] != 58)
  {
    goto LABEL_14;
  }

  v21 = (v15 + 8);
  v22 = v13 & 0x3FFFFFFF;
  if (v22 < 4)
  {
    v23 = 0;
    goto LABEL_64;
  }

  if (v22 >= 0x10)
  {
    v34 = 0uLL;
    v35 = (v15 + 8);
    v36.i64[0] = 0x2626262626262626;
    v36.i64[1] = 0x2626262626262626;
    v37 = vdupq_n_s64(1uLL);
    v23 = v22 - (v13 & 0xF);
    v38 = v23;
    v39 = __s;
    v40 = 0uLL;
    v14 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    do
    {
      v45 = *v39;
      v39 += 16;
      v46 = vceqq_s8(v45, v36);
      v47 = vmovl_u8(*v46.i8);
      v48 = vmovl_u16(*v47.i8);
      v49.i64[0] = v48.u32[0];
      v49.i64[1] = v48.u32[1];
      v50 = vandq_s8(v49, v37);
      v49.i64[0] = v48.u32[2];
      v49.i64[1] = v48.u32[3];
      v51 = vandq_s8(v49, v37);
      v52 = vmovl_high_u16(v47);
      v49.i64[0] = v52.u32[0];
      v49.i64[1] = v52.u32[1];
      v53 = vandq_s8(v49, v37);
      v54 = vmovl_high_u8(v46);
      v55 = vmovl_u16(*v54.i8);
      v49.i64[0] = v55.u32[0];
      v49.i64[1] = v55.u32[1];
      v56 = vandq_s8(v49, v37);
      v49.i64[0] = v52.u32[2];
      v49.i64[1] = v52.u32[3];
      v57 = vandq_s8(v49, v37);
      v49.i64[0] = v55.u32[2];
      v49.i64[1] = v55.u32[3];
      v58 = vandq_s8(v49, v37);
      v59 = vmovl_high_u16(v54);
      v49.i64[0] = v59.u32[0];
      v49.i64[1] = v59.u32[1];
      v60 = vandq_s8(v49, v37);
      v49.i64[0] = v59.u32[2];
      v49.i64[1] = v59.u32[3];
      v44 = vaddq_s64(v44, vandq_s8(v49, v37));
      v43 = vaddq_s64(v43, v60);
      v42 = vaddq_s64(v42, v58);
      v14 = vaddq_s64(v14, v57);
      v41 = vaddq_s64(v41, v56);
      v40 = vaddq_s64(v40, v53);
      v34 = vaddq_s64(v34, v51);
      v35 = vaddq_s64(v35, v50);
      v38 -= 16;
    }

    while (v38);
    v21 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v35, v41), vaddq_s64(v40, v43)), vaddq_s64(vaddq_s64(v34, v42), vaddq_s64(v14, v44))));
    if ((v13 & 0xF) == 0)
    {
      goto LABEL_68;
    }

    if ((v13 & 0xFu) < 4uLL)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v23 = 0;
  }

  v61 = &__s[v23];
  v62 = v23 + (v13 & 3);
  v23 = v22 - (v13 & 3);
  v63 = v21;
  v64 = 0uLL;
  v65 = v62 - v22;
  v66 = vdupq_n_s64(1uLL);
  do
  {
    v67 = *v61;
    v61 += 4;
    v14.i32[0] = v67;
    v68 = vmovl_u16(vceq_s16(*&vmovl_u8(*v14.i8), 0x26002600260026));
    v69.i64[0] = v68.u32[0];
    v69.i64[1] = v68.u32[1];
    v70 = vandq_s8(v69, v66);
    v69.i64[0] = v68.u32[2];
    v69.i64[1] = v68.u32[3];
    v14 = vandq_s8(v69, v66);
    v64 = vaddq_s64(v64, v14);
    v63 = vaddq_s64(v63, v70);
    v65 += 4;
  }

  while (v65);
  v21 = vaddvq_s64(vaddq_s64(v63, v64));
  if ((v13 & 3) != 0)
  {
LABEL_64:
    v71 = &__s[v23];
    v72 = v22 - v23;
    do
    {
      v73 = *v71++;
      if (v73 == 38)
      {
        ++v21;
      }

      --v72;
    }

    while (v72);
  }

LABEL_68:
  if (sqlite3_initialize())
  {
    return 7;
  }

  v74 = sub_181902484(v21, 1860182944);
  if (!v74)
  {
    return 7;
  }

  v24 = v12 | 0x40;
  *v74 = 0;
  v20 = (v74 + 1);
  if (__s[5] == 47 && __s[6] == 47)
  {
    v75 = 0;
    v76 = __s + 7;
    v77 = __s[7];
    if (__s[7])
    {
      do
      {
        if (v77 == 47)
        {
          break;
        }

        v77 = v76[++v75];
      }

      while (v76[v75]);
    }

    v78 = v75 + 7;
    if (v75 == 9)
    {
      if (*(__s + 7) != 0x736F686C61636F6CLL || __s[15] != 116)
      {
        goto LABEL_161;
      }

      v78 = 16;
    }

    else if (v75)
    {
LABEL_161:
      v25 = sqlite3_mprintf("invalid uri authority: %.*s");
      goto LABEL_26;
    }
  }

  else
  {
    v78 = 5;
  }

  v79 = 0;
  v80 = 0;
LABEL_80:
  v81 = v80;
  v82 = &v20[v80];
  v83 = v78;
LABEL_81:
  while (1)
  {
    v84 = __s[v83];
    if (!__s[v83] || v84 == 35)
    {
      break;
    }

    v78 = v83 + 1;
    if (v84 == 37 && (v85 = __s[v78], (byte_181A204C8[v85] & 8) != 0) && (v86 = __s[v83 + 2], (byte_181A204C8[v86] & 8) != 0))
    {
      v83 += 3;
      v84 = ((((2 * v86) >> 7) & 0xF9) + v86) & 0xF | (16 * ((((2 * v85) >> 7) & 9) + v85));
      if (((((2 * v86) >> 7) & 0xF9) + v86) & 0xF | (16 * ((((2 * v85) >> 7) & 9) + v85)))
      {
        v78 = v83;
        goto LABEL_111;
      }

      v87 = &__s[v83];
      while (1)
      {
        v89 = *v87++;
        v88 = v89;
        if (!v89 || v88 == 35 || !v79 && v88 == 63)
        {
          break;
        }

        if (v79 == 1)
        {
          if (v88 == 38 || v88 == 61)
          {
            goto LABEL_81;
          }
        }

        else if (v79 == 2 && v88 == 38)
        {
          goto LABEL_81;
        }

        ++v83;
      }
    }

    else
    {
      if (v79 != 1)
      {
        if (!v79 && v84 == 63 || v79 == 2 && v84 == 38)
        {
          LOBYTE(v84) = 0;
LABEL_117:
          v79 = 1;
        }

LABEL_111:
        ++v80;
        v20[v81] = v84;
        goto LABEL_80;
      }

      if (v84 != 61 && v84 != 38)
      {
        goto LABEL_117;
      }

      if (*(v82 - 1))
      {
        if (v84 == 38)
        {
          LOBYTE(v84) = 0;
          ++v80;
          *v82 = 0;
          v81 = v80;
          v79 = 1;
        }

        else
        {
          LOBYTE(v84) = 0;
          v79 = 2;
        }

        goto LABEL_111;
      }

      ++v83;
      for (i = &__s[v78]; ; ++i)
      {
        v79 = 1;
        if (!*i || *i == 35)
        {
          break;
        }

        if (*(i - 1) == 38)
        {
          v79 = 1;
          goto LABEL_81;
        }

        ++v83;
      }
    }
  }

  if (v79 == 1)
  {
    *v82 = 0;
    v81 = v80 + 1;
  }

  *&v20[v81] = 0;
  v91 = &v20[strlen(v20) & 0x3FFFFFFF];
  v93 = *(v91 + 1);
  v92 = (v91 + 1);
  if (!v93)
  {
LABEL_23:
    if (sqlite3_initialize())
    {
      *a4 = 0;
LABEL_25:
      v25 = sqlite3_mprintf("no such vfs: %s");
LABEL_26:
      v26 = 1;
      goto LABEL_27;
    }

    if (word_1ED452E84)
    {
      v30 = qword_1ED452F08(2);
      v31 = v30;
      if (v30)
      {
        xmmword_1ED452F18(v30);
        v32 = 0;
LABEL_48:
        v33 = qword_1ED456AE8;
        if (a1 && qword_1ED456AE8)
        {
          do
          {
            if (!strcmp(a1, *(v33 + 24)))
            {
              break;
            }

            v33 = *(v33 + 16);
          }

          while (v33);
        }

        if ((v32 & 1) == 0)
        {
          xmmword_1ED452F28(v31);
        }

        *a4 = v33;
        if (v33)
        {
          result = 0;
          goto LABEL_56;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = 1;
    goto LABEL_48;
  }

  v113 = a5;
  while (1)
  {
    v114 = v24;
    v94 = strlen(v92) & 0x3FFFFFFF;
    v95 = &v92[v94];
    v96 = v95 + 1;
    v97 = strlen(v95 + 1);
    if (v94 == 5)
    {
      break;
    }

    if (v94 == 4)
    {
      if (*v92 == 1701080941)
      {
        v111 = v114 & 0x87;
        v100 = -136;
        v101 = &off_1E6A27C28;
        v102 = "access";
        goto LABEL_147;
      }
    }

    else if (v94 == 3 && *v92 == 26230 && v92[2] == 115)
    {
      a1 = v95 + 1;
    }

LABEL_143:
    v24 = v114;
LABEL_144:
    v104 = &v96[v97 & 0x3FFFFFFF];
    v105 = v104[1];
    v92 = v104 + 1;
    if (!v105)
    {
      a5 = v113;
      goto LABEL_23;
    }
  }

  if (*v92 != 1751343459 || v92[4] != 101)
  {
    goto LABEL_143;
  }

  v111 = 393216;
  v100 = -393217;
  v101 = &off_1E6A27BF8;
  v102 = "cache";
LABEL_147:
  v112 = v102;
  v106 = *v101;
  if (!*v101)
  {
    goto LABEL_155;
  }

  v107 = (v101 + 2);
  while (((strlen(v106) ^ v97) & 0x3FFFFFFF) != 0 || memcmp(v96, v106, v97 & 0x3FFFFFFF))
  {
    v108 = *v107;
    v107 += 2;
    v106 = v108;
    if (!v108)
    {
      goto LABEL_155;
    }
  }

  v109 = *(v107 - 2);
  if (!v109)
  {
LABEL_155:
    v25 = sqlite3_mprintf("no such %s mode: %s", v112, v96);
    v26 = 1;
    goto LABEL_156;
  }

  if ((v109 & 0xFFFFFF7F) <= v111)
  {
    v24 = v109 | v100 & v114;
    goto LABEL_144;
  }

  v25 = sqlite3_mprintf("%s mode not allowed: %s", v112, v96);
  v26 = 3;
LABEL_156:
  a5 = v113;
  v24 = v114;
LABEL_27:
  *a6 = v25;
    ;
  }

  v28 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v29 = v26;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(j);
    --qword_1ED456A90;
    off_1ED452EB0(j);
    j = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v28 = &xmmword_1ED452F28;
      goto LABEL_42;
    }
  }

  else
  {
    v29 = v26;
LABEL_42:
    (*v28)(j);
  }

  v20 = 0;
  result = v29;
LABEL_56:
  *a3 = v24;
  *a5 = v20;
  return result;
}

uint64_t sub_18198B05C(uint64_t a1, _BYTE *a2, char *__s)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 0;
  }

  v6 = &__s[strlen(__s) & 0x3FFFFFFF];
  v8 = v6[1];
  v7 = v6 + 1;
  if (!v8)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = strcmp(v7, "hexkey");
    v10 = strlen(v7);
    v11 = &v7[v10 & 0x3FFFFFFF];
    v12 = v11 + 1;
    if (!v9)
    {
      break;
    }

    v13 = &v12[strlen(v11 + 1) & 0x3FFFFFFF];
    v14 = v13[1];
    v7 = v13 + 1;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (!*v12)
  {
LABEL_12:
    v19 = &__s[strlen(__s) & 0x3FFFFFFF];
    v21 = v19[1];
    v20 = v19 + 1;
    if (v21)
    {
      while (1)
      {
        v22 = strcmp(v20, "key");
        v23 = &v20[(strlen(v20) & 0x3FFFFFFF) + 1];
        v24 = strlen(v23);
        if (!v22)
        {
          break;
        }

        v25 = &v23[v24 & 0x3FFFFFFF];
        v26 = *(v25 + 1);
        v20 = v25 + 1;
        if (!v26)
        {
          goto LABEL_15;
        }
      }

      v35 = v24 & 0x3FFFFFFF;
      v36 = a1;
      v37 = a2;
      v38 = v23;
      goto LABEL_22;
    }

LABEL_15:
    v27 = &__s[strlen(__s) & 0x3FFFFFFF];
    v29 = v27[1];
    v28 = v27 + 1;
    if (v29)
    {
      while (1)
      {
        v30 = strcmp(v28, "textkey");
        v31 = &v28[strlen(v28) & 0x3FFFFFFF];
        if (!v30)
        {
          break;
        }

        v32 = &v31[(strlen(v31 + 1) & 0x3FFFFFFF) + 1];
        v33 = *(v32 + 1);
        v28 = (v32 + 1);
        if (!v33)
        {
          return 0;
        }
      }

      v36 = a1;
      v37 = a2;
      v38 = (v31 + 1);
      v35 = -1;
      goto LABEL_22;
    }

    return 0;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    v17 = v7[(v10 & 0x3FFFFFFF) + 1 + v15];
    if ((byte_181A204C8[v17] & 8) == 0)
    {
      break;
    }

    v18 = ((((2 * v17) >> 7) & 0xF9) + v17) & 0xF | (16 * v16);
    if (v15)
    {
      v39[v15 >> 1] = v18;
    }

    ++v15;
    v16 = v18;
  }

  while (v15 != 80);
  v35 = v15 >> 1;
  v38 = v39;
  v36 = a1;
  v37 = a2;
LABEL_22:
  sqlite3_key_v2(v36, v37, v38, v35);
  return 1;
}

uint64_t sub_18198B2B4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (*a3)
  {
    v5 = *(v4 + 20);
    if ((~v5 & 0x202) == 0 && *(v4 + 22) == 1)
    {
      v4 = *(v4 + 8);
      if (!a1)
      {
        goto LABEL_11;
      }

LABEL_9:
      v6 = *(*a1 + 24);
      goto LABEL_12;
    }

    if (v5)
    {
      v4 = 0;
      if (a1)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v4 = sub_18193CB70(v4, 1);
  }

  if (a1)
  {
    goto LABEL_9;
  }

LABEL_11:
  v6 = 0;
LABEL_12:
  v7 = &byte_181A2878D;
  if (v4)
  {
    v7 = v4;
  }

  v8 = *(v6 + 40);
  if (v8 < 1)
  {
LABEL_33:
    result = sqlite3_snprintf(128, __s, "no such database: %s");
    goto LABEL_38;
  }

  v9 = 0;
  v10 = *(v6 + 32);
  v11 = "cannot detach database %s";
  while (1)
  {
    v12 = v10 + 32 * v9;
    v13 = *(v12 + 8);
    if (v13)
    {
      break;
    }

LABEL_17:
    if (++v9 == v8)
    {
      goto LABEL_33;
    }
  }

  v14 = *v12;
  for (i = v7; *v14 != *i; ++i)
  {
    if (byte_181A20298[*v14] != byte_181A20298[*i])
    {
      if (!v9)
      {
        v16 = "main";
        for (j = v7; ; ++j)
        {
          if (*v16 == *j)
          {
            if (!*v16)
            {
              goto LABEL_37;
            }
          }

          else if (byte_181A20298[*v16] != byte_181A20298[*j])
          {
            goto LABEL_17;
          }

          ++v16;
        }
      }

      goto LABEL_17;
    }

LABEL_21:
    ++v14;
  }

  if (*v14)
  {
    goto LABEL_21;
  }

  if (v9 < 2)
  {
    result = sqlite3_snprintf(128, __s, "cannot detach database %s");
    goto LABEL_38;
  }

  if (!*(v13 + 16) && !*(v13 + 24))
  {
    v19 = *(*(v10 + 56) + 64);
    if (v19)
    {
      v20 = *(v12 + 24);
      do
      {
        v21 = v19[2];
        if (*(v21 + 48) == v20)
        {
          *(v21 + 48) = *(v21 + 40);
        }

        v19 = *v19;
      }

      while (v19);
    }

    result = sub_1818E3028(v13);
    *(v12 + 8) = 0;
    *(v12 + 24) = 0;
    if (*(v6 + 40) < 3)
    {
      *(v6 + 40) = 2;
    }

    else
    {
      v22 = 0;
      v23 = 2;
      v24 = 2;
      do
      {
        v25 = *(v6 + 32);
        v26 = v25 + v22;
        if (*(v25 + v22 + 72))
        {
          if (v23 > v24)
          {
            v27 = *(v26 + 80);
            v28 = (v25 + 32 * v24);
            *v28 = *(v26 + 64);
            v28[1] = v27;
          }

          ++v24;
        }

        else
        {
          v29 = *(v26 + 64);
          if (v29)
          {
            result = sub_181929C84(v6, v29);
          }

          *(v26 + 64) = 0;
        }

        ++v23;
        v22 += 32;
      }

      while (v23 < *(v6 + 40));
      *(v6 + 40) = v24;
      if (v24 > 2)
      {
        return result;
      }
    }

    v30 = *(v6 + 32);
    v31 = (v6 + 696);
    if (v30 != (v6 + 696))
    {
      v32 = *v30;
      v33 = v30[1];
      v34 = v30[3];
      *(v6 + 728) = v30[2];
      *(v6 + 744) = v34;
      *v31 = v32;
      *(v6 + 712) = v33;
      if (v30)
      {
        result = sub_181929C84(v6, v30);
      }

      *(v6 + 32) = v31;
    }

    return result;
  }

  v11 = "database %s is locked";
LABEL_37:
  result = sqlite3_snprintf(128, __s, v11, v7);
LABEL_38:
  if (a1)
  {
    *(a1 + 9) = 1;
    return sub_1818900D0(*a1, __s, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_18198B5C8(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(*a1 + 32) + 32 * a2 + 24);
  if (a1[19])
  {
    v11 = a1[19];
  }

  else
  {
    v11 = a1;
  }

  v12 = *(v11 + 116);
  v13 = 1 << a2;
  if ((v12 & (1 << a2)) == 0)
  {
    *(v11 + 116) = v12 | v13;
    if (a2 == 1)
    {
      sub_1819108F4(v11);
    }
  }

  *(v11 + 112) |= v13;
  v14 = *(a1 + 14);
  *(a1 + 14) = v14 + 3;
  sub_18198B8A8(a1, a2, v14, 0, 0, a6, a7, a8);
  v22 = *(v10 + 16);
  if (v22)
  {
    v23 = *(a1 + 14);
    v24 = *(a1 + 15);
    do
    {
      sub_18198BB38(a1, v22[2], 0, v14, (v24 + 1), v23, v20, v21);
      v22 = *v22;
    }

    while (v22);
  }

  result = sub_1818E7DFC(a1, v15, v16, v17, v18, v19, v20, v21);
  if (result)
  {
    v29 = *(result + 144);
    if (*(result + 148) <= v29)
    {

      return sub_18194C8AC(result, 150, a2, 0, 0, v26, v27, v28);
    }

    else
    {
      *(result + 144) = v29 + 1;
      v30 = *(result + 136) + 40 * v29;
      *v30 = 150;
      *(v30 + 4) = a2;
      *(v30 + 8) = 0u;
      *(v30 + 24) = 0u;
    }
  }

  return result;
}

uint64_t sub_18198B720(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[12];
  if (v9)
  {
    v10 = (*(*a1 + 32) + 24);
    LODWORD(v11) = -1;
    do
    {
      v12 = *v10;
      v10 += 4;
      v11 = (v11 + 1);
    }

    while (v12 != v9);
  }

  else
  {
    v11 = 4294934528;
  }

  if (a1[19])
  {
    v13 = a1[19];
  }

  else
  {
    v13 = a1;
  }

  v14 = *(v13 + 116);
  v15 = 1 << v11;
  if ((v14 & (1 << v11)) == 0)
  {
    *(v13 + 116) = v14 | v15;
    if (v11 == 1)
    {
      v16 = a1;
      v17 = a2;
      sub_1819108F4(v13);
      a2 = v17;
      a1 = v16;
    }
  }

  *(v13 + 112) |= v15;
  v18 = *(a1 + 14);
  *(a1 + 14) = v18 + 3;
  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = a2;
  }

  if (a3)
  {
    v20 = "idx";
  }

  else
  {
    v20 = "tbl";
  }

  v21 = a1;
  v22 = a2;
  sub_18198B8A8(a1, v11, v18, *v19, v20, a6, a7, a8);
  sub_18198BB38(v21, v22, a3, v18, (*(v21 + 60) + 1), *(v21 + 56), v23, v24);
  result = sub_1818E7DFC(v21, v25, v26, v27, v28, v29, v30, v31);
  if (result)
  {
    v36 = *(result + 144);
    if (*(result + 148) <= v36)
    {

      return sub_18194C8AC(result, 150, v11, 0, 0, v33, v34, v35);
    }

    else
    {
      *(result + 144) = v36 + 1;
      v37 = *(result + 136) + 40 * v36;
      *v37 = 150;
      *(v37 + 4) = v11;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
    }
  }

  return result;
}

void sub_18198B8A8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v13)
  {
    v14 = 0;
    v15 = off_1E6A27C80;
    v32 = v13;
    v16 = (*(v12 + 32) + 32 * a2);
    do
    {
      v19 = *(v15 - 1);
      v33[v14] = 0;
      v20 = sub_181917F20(v12, v19, *v16);
      if (v20)
      {
        v25 = *(v20 + 40);
        v34[v14] = v25;
        if (a2 != 1 && *(*(*(*a1 + 32) + 32 * a2 + 8) + 17))
        {
          sub_1819570CC(a1, a2, v25, 1, v19);
        }

        if (a4)
        {
          sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v21, v22, v23, v24, v17, v18, *v16);
        }

        else if (*(v12 + 360))
        {
          sub_1818F73B0(a1, "DELETE FROM %Q.%s", v21, v22, v23, v24, v17, v18, *v16);
        }

        else
        {
          v26 = *(v32 + 144);
          if (*(v32 + 148) <= v26)
          {
            sub_18194C8AC(v32, 145, v25, a2, 0, v24, v17, v18);
          }

          else
          {
            *(v32 + 144) = v26 + 1;
            v27 = *(v32 + 136) + 40 * v26;
            *v27 = 145;
            *(v27 + 4) = v25;
            *(v27 + 8) = a2;
            *(v27 + 12) = 0;
            *(v27 + 28) = 0;
            *(v27 + 20) = 0;
            *(v27 + 36) = 0;
          }
        }
      }

      else if (!v14)
      {
        sub_1818F73B0(a1, "CREATE TABLE %Q.%s(%s)", v21, v22, v23, v24, v17, v18, *v16);
        v34[0] = a1[64];
        v33[0] = 16;
      }

      ++v14;
      v15 += 2;
    }

    while (v14 != 3);
    v28 = v34[0];
    v29 = *(v32 + 144);
    if (*(v32 + 148) <= v29)
    {
      sub_18194CAFC(v32, 113, v9, v34[0], a2, 3, v17, v18);
    }

    else
    {
      *(v32 + 144) = v29 + 1;
      v30 = *(v32 + 136) + 40 * v29;
      *v30 = 64881;
      *(v30 + 4) = v9;
      *(v30 + 8) = v28;
      *(v30 + 12) = a2;
      *(v30 + 16) = 3;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
    }

    v31 = *(v32 + 144);
    if (v31 >= 1)
    {
      *(*(v32 + 136) + 40 * v31 - 38) = v33[0];
    }
  }
}

void sub_18198BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v191 = a5 + 9;
  if (*(a1 + 60) < a5 + 9)
  {
    *(a1 + 60) = v191;
  }

  v14 = *a1;
  v15 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v12)
  {
    return;
  }

  v19 = v15;
  if (!v15 || *(v12 + 63) || *v12 && !sub_1818EDFDC("sqlite\\_%", *v12, byte_181A204C4, 92))
  {
    return;
  }

  v20 = v12[12];
  v21 = *(v14 + 32);
  if (v20)
  {
    v22 = (v21 + 24);
    LODWORD(v23) = -1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 = (v23 + 1);
    }

    while (v24 != v20);
  }

  else
  {
    v23 = 4294934528;
  }

  v25 = *v13;
  v26 = *(*v13 + 528);
  if (v26 && !*(v25 + 197) && !*(v13 + 302))
  {
    v166 = v26(*(v25 + 536), 28, *v12, 0, *(v21 + 32 * v23), *(v13 + 46));
    if (v166 == 1)
    {
      v170 = 23;
      v171 = "not authorized";
    }

    else
    {
      if ((v166 & 0xFFFFFFFD) == 0)
      {
        if (v166)
        {
          return;
        }

        goto LABEL_17;
      }

      v170 = 1;
      v171 = "authorizer malfunction";
    }

    sub_181910730(v13, v171, v167, v168, v169, v16, v17, v18, v172);
    v13[6] = v170;
    return;
  }

LABEL_17:
  v186 = v23;
  if (*(v14 + 360))
  {
    __s = sub_181929E8C(v14, 0x85uLL, 0x10B2040A26A9E65);
    if (!__s)
    {
      return;
    }

    *(__s + 125) = 0;
    *(__s + 6) = 0u;
    *(__s + 7) = 0u;
    *(__s + 4) = 0u;
    *(__s + 5) = 0u;
    *(__s + 2) = 0u;
    *(__s + 3) = 0u;
    *__s = 0u;
    *(__s + 1) = 0u;
    strcpy(__s + 120, "sqlite_stat1");
    *__s = __s + 120;
    *(__s + 13) = 0x3FFFF;
    v30 = *(v13 + 2);
    v31 = sub_1818A2964(v30, 187, 0, 0, 0, v27, v28, v29);
    v32 = v30;
    v23 = v186;
    sub_1818B49F8(v32, v31, __s, 0xFFFFFFFA);
  }

  else
  {
    __s = 0;
  }

  v33 = (v9 + 6);
  if (v23 != 1 && *(*(*(*v13 + 32) + 32 * v23 + 8) + 17))
  {
    sub_1819570CC(v13, v23, *(v12 + 10), 0, *v12);
  }

  v34 = a6 + 2;
  if (v13[14] > a6 + 2)
  {
    v34 = v13[14];
  }

  v13[14] = v34;
  sub_1818B69D8(v13, a6, v23, v12, 102, v16, v17, v18);
  v38 = *v12;
  v39 = *(v19 + 144);
  if (*(v19 + 148) <= v39)
  {
    v39 = sub_18194C8AC(v19, 118, 0, (v9 + 6), 0, v35, v36, v37);
  }

  else
  {
    *(v19 + 144) = v39 + 1;
    v40 = *(v19 + 136) + 40 * v39;
    *v40 = 118;
    *(v40 + 8) = v33;
    *(v40 + 12) = 0;
    *(v40 + 28) = 0;
    *(v40 + 20) = 0;
    *(v40 + 36) = 0;
  }

  v196 = v9 + 4;
  v185 = v9 + 7;
  if (!*(*v19 + 103))
  {
    if (v39 < 0)
    {
      v39 = *(v19 + 144) - 1;
    }

    sub_18194CB90(v19, *(v19 + 136) + 40 * v39, v38, 0);
  }

  v41 = v12[2];
  v173 = 1;
  if (v41)
  {
    v193 = v9 + 2;
    v183 = v9 + 5;
    v184 = v9 + 3;
    v195 = a6 + 1;
    v42 = 1;
    v182 = v10;
    v187 = v11;
    v189 = v12;
    v174 = v9 + 6;
    v175 = v9;
    v181 = v14;
    while (1)
    {
      if (v11 && v41 != v11)
      {
        goto LABEL_37;
      }

      if (!*(v41 + 72))
      {
        v42 = 0;
      }

      v190 = v42;
      v43 = *(v41 + 99);
      if ((v12[6] & 0x80) != 0 && (v43 & 3) == 2)
      {
        v44 = *(v41 + 94);
        v45 = *v12;
        v46 = *(v41 + 94);
      }

      else
      {
        v44 = *(v41 + 96);
        v45 = *v41;
        if ((v43 & 8) != 0)
        {
          v46 = *(v41 + 94);
        }

        else
        {
          v46 = *(v41 + 96);
        }
      }

      v47 = *(v19 + 144);
      v194 = v41;
      if (*(v19 + 148) <= v47)
      {
        v47 = sub_18194C8AC(v19, 118, 0, v185, 0, v35, v36, v37);
        v41 = v194;
      }

      else
      {
        *(v19 + 144) = v47 + 1;
        v48 = *(v19 + 136) + 40 * v47;
        *v48 = 118;
        *(v48 + 8) = v185;
        *(v48 + 12) = 0;
        *(v48 + 28) = 0;
        *(v48 + 20) = 0;
        *(v48 + 36) = 0;
      }

      if (!*(*v19 + 103))
      {
        if (v47 < 0)
        {
          v47 = *(v19 + 144) - 1;
        }

        sub_18194CB90(v19, *(v19 + 136) + 40 * v47, v45, 0);
        v41 = v194;
      }

      v192 = v46 - 1;
      if (v13[15] < (v192 + v191))
      {
        v13[15] = v192 + v191;
      }

      v49 = *(v41 + 88);
      v50 = *(v19 + 144);
      if (*(v19 + 148) <= v50)
      {
        sub_18194C8AC(v19, 102, v195, v49, v186, v35, v36, v37);
        v41 = v194;
      }

      else
      {
        *(v19 + 144) = v50 + 1;
        v51 = *(v19 + 136) + 40 * v50;
        *v51 = 102;
        *(v51 + 4) = v195;
        *(v51 + 8) = v49;
        *(v51 + 12) = v186;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
        *(v51 + 16) = 0;
      }

      v52 = *(v13 + 2);
      v53 = sub_1819572CC(v13, v41);
      if (v53)
      {
        if (*(*v52 + 103))
        {
          if (!*(*v52 + 824) && (*v53)-- == 1)
          {
            sub_181939EC8(*(v53 + 16), v53);
          }
        }

        else
        {
          v58 = *(v52 + 136) + 40 * *(v52 + 144);
          *(v58 - 39) = -8;
          *(v58 - 24) = v53;
        }
      }

      v59 = *(v14 + 768);
      v60 = *(v19 + 144);
      if (*(v19 + 148) <= v60)
      {
        sub_18194C8AC(v19, 71, v59, v183, 0, v54, v55, v56);
      }

      else
      {
        *(v19 + 144) = v60 + 1;
        v61 = *(v19 + 136) + 40 * v60;
        *v61 = 71;
        *(v61 + 4) = v59;
        *(v61 + 8) = v183;
        *(v61 + 12) = 0;
        *(v61 + 28) = 0;
        *(v61 + 20) = 0;
        *(v61 + 36) = 0;
      }

      v12 = v189;
      v62 = *(v19 + 144);
      if (*(v19 + 148) <= v62)
      {
        sub_18194C8AC(v19, 71, v44, v193, 0, v54, v55, v56);
      }

      else
      {
        *(v19 + 144) = v62 + 1;
        v63 = *(v19 + 136) + 40 * v62;
        *v63 = 71;
        *(v63 + 4) = v44;
        *(v63 + 8) = v193;
        *(v63 + 12) = 0;
        *(v63 + 28) = 0;
        *(v63 + 20) = 0;
        *(v63 + 36) = 0;
      }

      v64 = *(v194 + 94);
      v65 = *(v19 + 144);
      if (*(v19 + 148) <= v65)
      {
        sub_18194C8AC(v19, 71, v64, v184, 0, v54, v55, v56);
      }

      else
      {
        *(v19 + 144) = v65 + 1;
        v66 = *(v19 + 136) + 40 * v65;
        *v66 = 71;
        *(v66 + 4) = v64;
        *(v66 + 8) = v184;
        *(v66 + 12) = 0;
        *(v66 + 28) = 0;
        *(v66 + 20) = 0;
        *(v66 + 36) = 0;
      }

      v67 = (*(v14 + 96) >> 11) & 1;
      v68 = *(v19 + 144);
      if (*(v19 + 148) <= v68)
      {
        sub_18194C8AC(v19, 98, v195, v196, v67, v54, v55, v56);
      }

      else
      {
        *(v19 + 144) = v68 + 1;
        v69 = *(v19 + 136) + 40 * v68;
        *v69 = 98;
        *(v69 + 4) = v195;
        *(v69 + 8) = v196;
        *(v69 + 12) = v67;
        *(v69 + 24) = 0;
        *(v69 + 32) = 0;
        *(v69 + 16) = 0;
      }

      sub_181958B0C(v13, 0, v193, (v9 + 1), 4, &unk_1EEF90180, 0);
      v73 = *(v19 + 144);
      if (*(v19 + 148) <= v73)
      {
        v73 = sub_18194C8AC(v19, 36, v195, 0, 0, v70, v71, v72);
      }

      else
      {
        *(v19 + 144) = v73 + 1;
        v74 = *(v19 + 136) + 40 * v73;
        *v74 = 36;
        *(v74 + 4) = v195;
        *(v74 + 8) = 0u;
        *(v74 + 24) = 0u;
      }

      v75 = *(v19 + 144);
      if (*(v19 + 148) <= v75)
      {
        sub_18194C8AC(v19, 71, 0, v193, 0, v70, v71, v72);
        if (v46 < 2)
        {
LABEL_84:
          v188 = *(v19 + 144);
          v11 = v187;
          goto LABEL_144;
        }
      }

      else
      {
        *(v19 + 144) = v75 + 1;
        v76 = *(v19 + 136) + 40 * v75;
        *v76 = 71;
        *(v76 + 8) = v193;
        *(v76 + 12) = 0;
        *(v76 + 28) = 0;
        *(v76 + 20) = 0;
        *(v76 + 36) = 0;
        if (v46 < 2)
        {
          goto LABEL_84;
        }
      }

      v179 = v73;
      v178 = v13[18];
      v180 = v178 - 1;
      v13[18] = v178 - 1;
      v77 = sub_181929E8C(v14, 4 * (v46 - 1), 0x100004052888210);
      v11 = v187;
      if (v77)
      {
        break;
      }

      v41 = v194;
LABEL_36:
      v42 = v190;
LABEL_37:
      v41 = *(v41 + 40);
      if (!v41)
      {
        v173 = v42 != 0;
        goto LABEL_195;
      }
    }

    v78 = v77;
    v79 = *(v19 + 144);
    if (*(v19 + 148) <= v79)
    {
      sub_18194C8AC(v19, 9, 0, 0, 0, v35, v36, v37);
    }

    else
    {
      *(v19 + 144) = v79 + 1;
      v80 = *(v19 + 136) + 40 * v79;
      *v80 = 9;
      *(v80 + 1) = 0u;
      *(v80 + 17) = 0u;
      *(v80 + 32) = 0;
    }

    v81 = v194;
    v82 = *(v19 + 144);
    v176 = *(v19 + 144);
    if (v192 == 1 && *(v194 + 94) == 1 && *(v194 + 98))
    {
      if (*(v19 + 148) <= v82)
      {
        sub_18194C8AC(v19, 52, v191, v180, 0, v35, v36, v37);
        v81 = v194;
      }

      else
      {
        *(v19 + 144) = v82 + 1;
        v83 = *(v19 + 136) + 40 * v176;
        *v83 = 52;
        *(v83 + 4) = v191;
        *(v83 + 8) = v180;
        *(v83 + 12) = 0;
        *(v83 + 28) = 0;
        *(v83 + 20) = 0;
        *(v83 + 36) = 0;
      }
    }

    v188 = v82;
    v84 = 0;
    v85 = v191;
    do
    {
      v86 = *(*(v81 + 64) + 8 * v84);
      v87 = v13;
      v88 = *v13;
      v89 = *(*v13 + 100);
      v90 = *(*v13 + 197);
      v91 = sub_181949138(v88, v89, v86, v90);
      v96 = v91;
      if (v90 || v91 && *(v91 + 3))
      {
        v13 = v87;
      }

      else
      {
        v13 = v87;
        v96 = sub_18194E6B8(v87, v89, v91, v86, v92, v93, v94, v95);
      }

      v97 = *(v19 + 144);
      if (*(v19 + 148) <= v97)
      {
        sub_18194C8AC(v19, 71, v84, v193, 0, v93, v94, v95);
      }

      else
      {
        *(v19 + 144) = v97 + 1;
        v98 = *(v19 + 136) + 40 * v97;
        *v98 = 71;
        *(v98 + 4) = v84;
        *(v98 + 8) = v193;
        *(v98 + 12) = 0;
        *(v98 + 28) = 0;
        *(v98 + 20) = 0;
        *(v98 + 36) = 0;
      }

      v99 = *(v19 + 144);
      if (*(v19 + 148) <= v99)
      {
        sub_18194C8AC(v19, 94, v195, v84, v196, v93, v94, v95);
      }

      else
      {
        *(v19 + 144) = v99 + 1;
        v100 = *(v19 + 136) + 40 * v99;
        *v100 = 94;
        *(v100 + 4) = v195;
        *(v100 + 8) = v84;
        *(v100 + 12) = v196;
        *(v100 + 24) = 0;
        *(v100 + 32) = 0;
        *(v100 + 16) = 0;
      }

      v101 = *(v19 + 144);
      if (*(v19 + 148) <= v101)
      {
        v101 = sub_18194C8AC(v19, 53, v196, 0, v85, v93, v94, v95);
      }

      else
      {
        *(v19 + 144) = v101 + 1;
        v102 = *(v19 + 136) + 40 * v101;
        *v102 = 53;
        *(v102 + 4) = v196;
        *(v102 + 12) = v85;
        *(v102 + 24) = 0;
        *(v102 + 32) = 0;
        *(v102 + 16) = 0;
      }

      if (!*(*v19 + 103))
      {
        v103 = v101;
        if (v101 < 0)
        {
          v103 = *(v19 + 144) - 1;
        }

        v104 = *(v19 + 136) + 40 * v103;
        if (*(v104 + 1))
        {
          sub_18194CB90(v19, v104, v96, 0xFFFFFFFE);
        }

        else if (v96)
        {
          *(v104 + 16) = v96;
          *(v104 + 1) = -2;
        }
      }

      *(v78 + v84) = v101;
      v105 = *(v19 + 144);
      if (v105 >= 1)
      {
        *(*(v19 + 136) + 40 * v105 - 38) = 128;
      }

      ++v84;
      v85 = (v85 + 1);
      v81 = v194;
    }

    while (v192 != v84);
    if (*(v19 + 148) <= v105)
    {
      sub_18194C8AC(v19, 71, v192, v193, 0, v93, v94, v95);
    }

    else
    {
      *(v19 + 144) = v105 + 1;
      v106 = *(v19 + 136) + 40 * v105;
      *v106 = 71;
      *(v106 + 4) = v192;
      *(v106 + 8) = v193;
      *(v106 + 12) = 0;
      *(v106 + 28) = 0;
      *(v106 + 20) = 0;
      *(v106 + 36) = 0;
    }

    v9 = v175;
    v107 = *(v19 + 144);
    v14 = v181;
    if (*(v19 + 148) <= v107)
    {
      sub_18194C8AC(v19, 9, 0, v180, 0, v93, v94, v95);
    }

    else
    {
      *(v19 + 144) = v107 + 1;
      v108 = *(v19 + 136) + 40 * v107;
      *v108 = 9;
      *(v108 + 8) = v180;
      *(v108 + 12) = 0;
      *(v108 + 28) = 0;
      *(v108 + 20) = 0;
      *(v108 + 36) = 0;
    }

    v33 = v174;
    v109 = &byte_1EA831A58;
    if (!*(*v19 + 103))
    {
      v109 = (*(v19 + 136) + 40 * v176 - 40);
    }

    v110 = 0;
    *(v109 + 2) = *(v19 + 144);
    if (v192 <= 1)
    {
      v111 = 1;
    }

    else
    {
      v111 = v192;
    }

    v112 = v191;
    do
    {
      v114 = *(v19 + 144);
      v115 = &byte_1EA831A58;
      if (!*(*v19 + 103))
      {
        v115 = (*(v19 + 136) + 40 * *(v78 + v110));
      }

      *(v115 + 2) = v114;
      if (*(v19 + 148) > v114)
      {
        *(v19 + 144) = v114 + 1;
        v113 = *(v19 + 136) + 40 * v114;
        *v113 = 94;
        *(v113 + 4) = v195;
        *(v113 + 8) = v110;
        *(v113 + 12) = v112;
        *(v113 + 24) = 0;
        *(v113 + 32) = 0;
        *(v113 + 16) = 0;
      }

      else
      {
        sub_18194C8AC(v19, 94, v195, v110, v112, v93, v94, v95);
      }

      ++v110;
      v112 = (v112 + 1);
    }

    while (v111 != v110);
    v116 = *(v19 + 24);
    v117 = -v178;
    if (*(v116 + 72) + *(v116 + 76) < 0)
    {
      sub_18195CB84(v116, v19, v117);
    }

    else
    {
      *(*(v116 + 80) + 4 * v117) = *(v19 + 144);
    }

    v10 = v182;
    v11 = v187;
    sub_181929C84(v181, v78);
    v73 = v179;
LABEL_144:
    sub_181958B0C(v13, 1uLL, (v9 + 1), v196, 2, &unk_1EEF901C8, 0);
    v122 = *(v19 + 144);
    v121 = *(v19 + 148);
    if (*(v14 + 768))
    {
      v123 = v33;
      v124 = v73;
      if (v121 <= v122)
      {
        v122 = sub_18194C8AC(v19, 51, v196, 0, 0, v118, v119, v120);
      }

      else
      {
        *(v19 + 144) = v122 + 1;
        v125 = *(v19 + 136) + 40 * v122;
        *v125 = 51;
        *(v125 + 4) = v196;
        *(v125 + 8) = 0u;
        *(v125 + 24) = 0u;
      }

      v127 = *(v19 + 144);
      if (*(v19 + 148) <= v127)
      {
        v127 = sub_18194C8AC(v19, 16, v196, 0, 0, v118, v119, v120);
      }

      else
      {
        *(v19 + 144) = v127 + 1;
        v128 = *(v19 + 136) + 40 * v127;
        *v128 = 16;
        *(v128 + 4) = v196;
        *(v128 + 8) = 0u;
        *(v128 + 24) = 0u;
      }

      v129 = *(v19 + 144);
      if (*(v19 + 148) <= v129)
      {
        v129 = sub_18194CAFC(v19, 24, v195, 0, v191, 1, v119, v120);
      }

      else
      {
        *(v19 + 144) = v129 + 1;
        v130 = *(v19 + 136) + 40 * v129;
        *v130 = 64792;
        *(v130 + 4) = v195;
        *(v130 + 8) = 0;
        *(v130 + 12) = v191;
        *(v130 + 16) = 1;
        *(v130 + 24) = 0;
        *(v130 + 32) = 0;
      }

      v131 = *(v19 + 144);
      v132 = &byte_1EA831A58;
      if (!*(*v19 + 103))
      {
        v132 = (*(v19 + 136) + 40 * v122);
      }

      *(v132 + 2) = v131;
      if (*(v19 + 148) <= v131)
      {
        sub_18194C8AC(v19, 39, v195, v188, 0, v118, v119, v120);
      }

      else
      {
        *(v19 + 144) = v131 + 1;
        v133 = *(v19 + 136) + 40 * v131;
        *v133 = 39;
        *(v133 + 4) = v195;
        *(v133 + 8) = v188;
        *(v133 + 12) = 0;
        *(v133 + 28) = 0;
        *(v133 + 20) = 0;
        *(v133 + 36) = 0;
      }

      v12 = v189;
      v134 = *(v19 + 144);
      if (*(*v19 + 103))
      {
        v135 = &byte_1EA831A58;
        dword_1EA831A60 = *(v19 + 144);
      }

      else
      {
        v136 = *(v19 + 136);
        *(v136 + 40 * v127 + 8) = v134;
        v135 = (v136 + 40 * v129);
      }

      *(v135 + 2) = v134;
      v10 = v182;
      v73 = v124;
      v33 = v123;
      v14 = v181;
      if (!*(v194 + 72))
      {
        goto LABEL_171;
      }
    }

    else
    {
      if (v121 <= v122)
      {
        sub_18194C8AC(v19, 39, v195, v188, 0, v118, v119, v120);
      }

      else
      {
        *(v19 + 144) = v122 + 1;
        v126 = *(v19 + 136) + 40 * v122;
        *v126 = 39;
        *(v126 + 4) = v195;
        *(v126 + 8) = v188;
        *(v126 + 12) = 0;
        *(v126 + 28) = 0;
        *(v126 + 20) = 0;
        *(v126 + 36) = 0;
      }

      v12 = v189;
      if (!*(v194 + 72))
      {
LABEL_171:
        sub_181958B0C(v13, 0, (v9 + 1), (v9 + 8), 1, &unk_1EEF90210, 0);
        v138 = *(v19 + 144);
        if (*(v19 + 148) <= v138)
        {
          v138 = sub_18194C8AC(v19, 97, v33, 3, v196, v35, v36, v37);
        }

        else
        {
          *(v19 + 144) = v138 + 1;
          v139 = *(v19 + 136) + 40 * v138;
          *v139 = 97;
          *(v139 + 4) = v33;
          *(v139 + 8) = 3;
          *(v139 + 12) = v196;
          *(v139 + 24) = 0;
          *(v139 + 32) = 0;
          *(v139 + 16) = 0;
        }

        if (!*(*v19 + 103))
        {
          if (v138 < 0)
          {
            v138 = *(v19 + 144) - 1;
          }

          sub_18194CB90(v19, *(v19 + 136) + 40 * v138, "BBB", 0);
        }

        v140 = *(v19 + 144);
        if (*(v19 + 148) <= v140)
        {
          sub_18194C8AC(v19, 127, v10, v9, 0, v35, v36, v37);
        }

        else
        {
          *(v19 + 144) = v140 + 1;
          v141 = *(v19 + 136) + 40 * v140;
          *v141 = 127;
          *(v141 + 4) = v10;
          *(v141 + 8) = v9;
          *(v141 + 12) = 0;
          *(v141 + 28) = 0;
          *(v141 + 20) = 0;
          *(v141 + 36) = 0;
        }

        v142 = *(v19 + 144);
        if (*(v19 + 148) <= v142)
        {
          sub_18194C8AC(v19, 128, v10, v196, v9, v35, v36, v37);
        }

        else
        {
          *(v19 + 144) = v142 + 1;
          v143 = *(v19 + 136) + 40 * v142;
          *v143 = 128;
          *(v143 + 4) = v10;
          *(v143 + 8) = v196;
          *(v143 + 12) = v9;
          *(v143 + 24) = 0;
          *(v143 + 32) = 0;
          *(v143 + 16) = 0;
        }

        v41 = v194;
        if (!*(*v19 + 103))
        {
          v144 = *(v19 + 136) + 40 * *(v19 + 144);
          if (*(v144 - 39))
          {
            sub_18194CB90(v19, v144 - 40, __s, 0xFFFFFFFB);
            v41 = v194;
          }

          else if (__s)
          {
            *(v144 - 24) = __s;
            *(v144 - 39) = -5;
          }
        }

        v145 = *(v19 + 144);
        if (v145 >= 1)
        {
          *(*(v19 + 136) + 40 * v145 - 38) = 8;
        }

        if (v73)
        {
          v146 = &byte_1EA831A58;
          if (!*(*v19 + 103))
          {
            v146 = (*(v19 + 136) + 40 * v73);
          }

          *(v146 + 2) = v145;
        }

        goto LABEL_36;
      }
    }

    v137 = &byte_1EA831A58;
    if (!*(*v19 + 103))
    {
      v137 = (*(v19 + 136) + 40 * v73);
    }

    v73 = 0;
    *(v137 + 2) = *(v19 + 144);
    goto LABEL_171;
  }

LABEL_195:
  if (!v11 && v173)
  {
    sub_1818A2964(v19, 98, a6, (v9 + 8), 0, v35, v36, v37);
    v150 = sub_1818A2964(v19, 17, (v9 + 8), 0, 0, v147, v148, v149);
    sub_1818A2964(v19, 75, 0, v185, 0, v151, v152, v153);
    v157 = sub_1818A2964(v19, 97, v33, 3, v196, v154, v155, v156);
    sub_1818B49F8(v19, v157, "BBB", 0);
    sub_1818A2964(v19, 127, v10, v9, 0, v158, v159, v160);
    sub_1818A2964(v19, 128, v10, v196, v9, v161, v162, v163);
    v164 = *(v19 + 144);
    if (v164 >= 1)
    {
      *(*(v19 + 136) + 40 * v164 - 38) = 8;
    }

    sub_1818B49F8(v19, -1, __s, 0xFFFFFFFB);
    if (*(*v19 + 103))
    {
      v165 = &byte_1EA831A58;
    }

    else
    {
      v165 = (*(v19 + 136) + 40 * v150);
    }

    *(v165 + 2) = *(v19 + 144);
  }
}

void sub_18198CDB8(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1819012D0(92237);
    goto LABEL_7;
  }

  v5 = 0;
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(v6 + 20);
  if ((v7 & 0x24) != 0)
  {
    v8 = *v6;
    goto LABEL_8;
  }

  if ((v7 & 8) == 0)
  {
    if ((v7 & 0x12) != 0 && *(v6 + 8))
    {
      LODWORD(v8) = sub_18193CFCC(v6);
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v21 = *v6;
  if (*v6 >= -9.22337204e18)
  {
    if (v21 <= 9.22337204e18)
    {
      *&v8 = v21;
    }

    else
    {
      LODWORD(v8) = -1;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

LABEL_8:
  v9 = a3[1];
  if (!v9)
  {
    sub_1819012D0(92237);
    goto LABEL_12;
  }

  v10 = *(v9 + 20);
  if ((v10 & 0x24) != 0)
  {
    v11 = *v9;
    goto LABEL_13;
  }

  if ((v10 & 8) == 0)
  {
    if ((v10 & 0x12) != 0 && *(v9 + 8))
    {
      LODWORD(v11) = sub_18193CFCC(v9);
      goto LABEL_13;
    }

LABEL_12:
    LODWORD(v11) = 0;
    goto LABEL_13;
  }

  v22 = *v9;
  if (*v9 >= -9.22337204e18)
  {
    if (v22 <= 9.22337204e18)
    {
      *&v11 = v22;
    }

    else
    {
      LODWORD(v11) = -1;
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

LABEL_13:
  v12 = 8 * SLODWORD(v8);
  if (v5)
  {
    v13 = sub_181929E8C(v5, v12 + 48, 2189763462);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = sub_181902484(v12 + 48, 2189763462);
    if (v13)
    {
LABEL_15:
      bzero(v13, v12 + 48);
      *v13 = v5;
      v14 = a3[2];
      if (v14)
      {
        v15 = *(v14 + 20);
        if ((v15 & 0x24) != 0)
        {
          v16 = *v14;
          goto LABEL_32;
        }

        if ((v15 & 8) != 0)
        {
          v23 = *v14;
          if (*v14 >= -9.22337204e18)
          {
            if (v23 <= 9.22337204e18)
            {
              v16 = v23;
            }

            else
            {
              v16 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v16 = 0x8000000000000000;
          }

LABEL_32:
          v13[1] = v16;
          v13[2] = 0;
          v17 = a3[3];
          if (v17)
          {
            v18 = *(v17 + 20);
            if ((v18 & 0x24) != 0)
            {
              v19 = *v17;
              goto LABEL_37;
            }

            if ((v18 & 8) != 0)
            {
              v24 = *v17;
              if (*v17 >= -9.22337204e18)
              {
                if (v24 <= 9.22337204e18)
                {
                  *&v19 = v24;
                }

                else
                {
                  LODWORD(v19) = -1;
                }
              }

              else
              {
                LODWORD(v19) = 0;
              }

LABEL_37:
              *(v13 + 6) = LODWORD(v19);
              *(v13 + 7) = LODWORD(v8);
              *(v13 + 8) = LODWORD(v11);
              *(v13 + 36) = 0;
              v13[5] = v13 + 6;
              if (a1)
              {

                sub_18190B23C(a1, v13, 48, 0, sub_18198D138);
              }

              else
              {
                v20 = *v13;

                sub_181929C84(v20, v13);
              }

              return;
            }

            if ((v18 & 0x12) != 0 && *(v17 + 8))
            {
              LODWORD(v19) = sub_18193CFCC(v17);
              goto LABEL_37;
            }
          }

          else
          {
            sub_1819012D0(92237);
          }

          LODWORD(v19) = 0;
          goto LABEL_37;
        }

        if ((v15 & 0x12) != 0 && *(v14 + 8))
        {
          v16 = sub_18193CFCC(v14);
          goto LABEL_32;
        }
      }

      else
      {
        sub_1819012D0(92237);
      }

      v16 = 0;
      goto LABEL_32;
    }
  }

  sqlite3_result_error_nomem(a1);
}

void sub_18198D144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sqlite3_value_blob(*a3);
  v6 = *(a3 + 8);
  if (!v6)
  {
    sub_1819012D0(92237);
    goto LABEL_6;
  }

  v7 = *(v6 + 20);
  if ((v7 & 0x24) != 0)
  {
    v8 = *v6;
    v9 = *(v5 + 2);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if ((v7 & 8) == 0)
  {
    if ((v7 & 0x12) != 0 && *(v6 + 8))
    {
      LODWORD(v8) = sub_18193CFCC(v6);
      v9 = *(v5 + 2);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

LABEL_6:
    LODWORD(v8) = 0;
    v9 = *(v5 + 2);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  LODWORD(v10) = -1;
  if (*v6 <= 9.22337204e18)
  {
    v10 = *v6;
  }

  if (*v6 >= -9.22337204e18)
  {
    LODWORD(v8) = v10;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = *(v5 + 2);
  if (v9)
  {
LABEL_19:
    v11 = v5[7];
    if (v11 > SLODWORD(v8))
    {
      v12 = *(v5 + 5);
      v13 = v11 - SLODWORD(v8);
      v14 = SLODWORD(v8);
      if (v13 < 4)
      {
        goto LABEL_24;
      }

      v14 = SLODWORD(v8) + (v13 & 0xFFFFFFFFFFFFFFFCLL);
      v15 = (v12 + 8 * SLODWORD(v8) + 16);
      v16 = vdupq_n_s64(1uLL);
      v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = vaddq_s64(*v15, v16);
        v15[-1] = vaddq_s64(v15[-1], v16);
        *v15 = v18;
        v15 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_24:
        v19 = (v12 + 8 * v14);
        v20 = v11 - v14;
        do
        {
          ++*v19++;
          --v20;
        }

        while (v20);
      }

      v9 = *(v5 + 2);
    }
  }

LABEL_27:
  v21 = v9 + 1;
  *(v5 + 2) = v9 + 1;
  v22 = v5[6];
  if (v22)
  {
    if (v21 > v22 + v22 * *(v5 + 36))
    {
      ++*(v5 + 36);
      if (a1)
      {
        v23 = **(v5 + 5) != 0;
        v24 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v24, v23);
        }

        else
        {
          *v24 = v23;
          *(v24 + 20) = 4;
        }
      }
    }
  }
}

void sub_18198D320(_DWORD *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = sqlite3_value_blob(*a3);
  v5 = v4;
  v25 = 0;
  v6 = 100 * v4[8] + 100;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v6;
  v7 = 2;
  if (!*(v4 + 36))
  {
    v7 = 4;
  }

  sqlite3_str_appendf(&v21, "%llu", *&v4[v7]);
  if (v5[8] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v5 + 5) + 8 * v8);
      v10 = v9 + 1;
      v11 = *(v5 + 2);
      v12 = (v11 + v9) / (v9 + 1);
      if (10 * v11 <= (11 * v10))
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 == 2)
      {
        v12 = v13;
      }

      sqlite3_str_appendf(&v21, " %llu", v12);
      ++v8;
    }

    while (v8 < v5[8]);
  }

  v14 = BYTE4(v25);
  if (BYTE4(v25))
  {
    if (!a1 || (a1[9] = BYTE4(v25), (*(*a1 + 20) & 1) == 0))
    {
LABEL_34:
      if ((v25 & 0x40000000000) != 0)
      {
        if (v22)
        {
          sub_181929C84(v21, v22);
        }
      }

      return;
    }

    if (v14 == 100)
    {
      v15 = "another row available";
    }

    else if (v14 == 101)
    {
      v15 = "no more rows available";
    }

    else if (v14 > 0x1C || ((0x1410004uLL >> v14) & 1) != 0)
    {
      v15 = "unknown error";
    }

    else
    {
      v15 = off_1E6A27DD8[v14];
    }

    v16 = a1;
    v17 = -1;
LABEL_33:
    sub_18190B23C(v16, v15, v17, 1u, 0);
    goto LABEL_34;
  }

  if ((v25 & 0x40000000000) == 0)
  {
    if (!a1)
    {
      return;
    }

    v15 = &byte_181A2878D;
    v16 = a1;
    v17 = 0;
    goto LABEL_33;
  }

  v18 = v22;
  if (a1)
  {
    sub_18190B23C(a1, v22, v25, 1u, sub_181916CE4);
  }

  else if (v22[103])
  {
    v19 = *(v22 + 55);
    if (!v19)
    {
      v22[103] = 0;
      *(v18 + 106) = 0;
      v20 = *(v18 + 108) - 1;
      *(v18 + 108) = v20;
      if (!v20)
      {
        LOWORD(v19) = *(v18 + 219);
      }

      *(v18 + 218) = v19;
    }
  }
}

uint64_t sub_18198D540(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*a2)
  {
    v9 = *v8;
    if (!*v8)
    {
      v18 = 0;
      v17 = "sqlite_";
      goto LABEL_30;
    }

    if ((v9 & 0xFFFFFFDF) == 0x53)
    {
      v10 = v8[1];
      if (!v8[1])
      {
        v18 = 0;
        v17 = "qlite_";
        goto LABEL_30;
      }

      if ((v10 & 0xFFFFFFDF) == 0x51)
      {
        v11 = v8[2];
        if (!v8[2])
        {
          v18 = 0;
          v17 = "lite_";
          goto LABEL_30;
        }

        if ((v11 & 0xFFFFFFDF) == 0x4C)
        {
          v12 = v8[3];
          if (!v8[3])
          {
            v18 = 0;
            v17 = "ite_";
            goto LABEL_30;
          }

          if ((v12 & 0xFFFFFFDF) == 0x49)
          {
            v13 = v8[4];
            if (!v8[4])
            {
              v18 = 0;
              v17 = "te_";
              goto LABEL_30;
            }

            if ((v13 & 0xFFFFFFDF) == 0x54)
            {
              v14 = v8[5];
              if (!v8[5])
              {
                v18 = 0;
                v17 = "e_";
                goto LABEL_30;
              }

              if ((v14 & 0xFFFFFFDF) == 0x45)
              {
                v15 = v8[6];
                if (!v8[6])
                {
                  v18 = 0;
                  v17 = "_";
LABEL_30:
                  if (v18 == byte_181A20298[*v17])
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_31;
                }

                if (v15 == 95)
                {
                  goto LABEL_39;
                }

                v16 = &byte_181A20298[v15];
                v17 = "_";
              }

              else
              {
                v16 = &byte_181A20298[v14];
                v17 = "e_";
              }
            }

            else
            {
              v16 = &byte_181A20298[v13];
              v17 = "te_";
            }
          }

          else
          {
            v16 = &byte_181A20298[v12];
            v17 = "ite_";
          }
        }

        else
        {
          v16 = &byte_181A20298[v11];
          v17 = "lite_";
        }
      }

      else
      {
        v16 = &byte_181A20298[v10];
        v17 = "qlite_";
      }
    }

    else
    {
      v16 = &byte_181A20298[v9];
      v17 = "sqlite_";
    }

    v18 = *v16;
    goto LABEL_30;
  }

LABEL_31:
  v19 = *(a2 + 12);
  if ((v19 & 0x8000) == 0)
  {
    if ((v19 & 0x1000) == 0)
    {
      return 0;
    }

    v20 = *a1;
    if ((*(*a1 + 51) & 0x10) == 0 || *(v20 + 592) || *(v20 + 220) || *(v20 + 564) >= 1 && !*(v20 + 600))
    {
      return 0;
    }
  }

LABEL_39:
  sub_181910730(a1, "table %s may not be altered", a3, a4, a5, a6, a7, a8, v8);
  return 1;
}

uint64_t sub_18198D740(uint64_t *a1, unint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a1[2];
  if (result)
  {
    v12 = (**(*(*a1 + 32) + 32 * a2 + 24) + 1);
    v13 = *(result + 144);
    if (*(result + 148) <= v13)
    {
      sub_18194C8AC(result, 100, a2, 1, v12, a6, a7, a8);
    }

    else
    {
      *(result + 144) = v13 + 1;
      v14 = *(result + 136) + 40 * v13;
      *v14 = 100;
      *(v14 + 4) = a2;
      *(v14 + 8) = 1;
      *(v14 + 12) = v12;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 0;
    }

    result = sub_18195E8E8(a1[2], a2, 0, a3, v12, a6, a7, a8);
    if (a2 != 1)
    {
      v19 = a1[2];

      return sub_18195E8E8(v19, 1uLL, 0, a3, v15, v16, v17, v18);
    }
  }

  return result;
}

void sub_18198D830(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *(a1 + 43) |= 1u;
  sub_1818F73B0(a1, "SELECT 1 FROM %w.sqlite_master WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d, %Q, %d)=NULL ", a3, a4, a5, a6, a7, a8, a2);
  if (!v8)
  {
    sub_1818F73B0(a1, "SELECT 1 FROM temp.sqlite_master WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1, %Q, %d)=NULL ", v11, v12, v13, v14, v15, v16, a2);
  }
}

void sub_18198D8B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_rename_quotefix(%Q, sql)WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%'", a3, a4, a5, a6, a7, a8, a2);
  if (!v9)
  {

    sub_1818F73B0(a1, "UPDATE temp.sqlite_master SET sql = sqlite_rename_quotefix('temp', sql)WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%'", v11, v12, v13, v14, v15, v16, a9);
  }
}

uint64_t *sub_18198D924(uint64_t *result)
{
  v1 = result[47];
  if (v1)
  {
    v2 = result[43];
    if (v2)
    {
      v3 = *(result + 96);
      v4 = result;
      v5 = sub_181929E8C(*result, v3 + 1, 1565185748);
      v11 = v5;
      if (v5)
      {
        memcpy(v5, v1, v3);
        *(v11 + v3) = 0;
      }

      return sub_18194DFCC(v4, v2, v11, v6, v7, v8, v9, v10);
    }
  }

  return result;
}

void *sub_18198D9C8(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    if (*a2 >= 1)
    {
      v4 = 0;
      v5 = a2 + 4;
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          sub_18194E5B8(v3, v6);
        }

        if (*v5)
        {
          sub_1818BB408(v3, *v5, 1);
        }

        v7 = *(v5 - 2);
        if (v7)
        {
          sub_181929C84(v3, v7);
        }

        ++v4;
        v5 += 6;
      }

      while (v4 < *a2);
    }

    return sub_181929C84(v3, a2);
  }

  return result;
}

void sub_18198DA78(uint64_t a1)
{
  if (a1)
  {
    sub_18190B23C(a1, "3.51.0", -1, 1u, 0);
  }
}

void sub_18198DA98(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    v5 = *(v4 + 20);
    if ((~v5 & 0x202) != 0 || *(v4 + 22) != 1)
    {
      if (v5)
      {
        return;
      }

      v6 = sub_18193CB70(v4, 1);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v6 = *(v4 + 8);
      if (!v6)
      {
        return;
      }
    }

    v7 = sqlite3_compileoption_used(v6);
    if (a1)
    {
      v8 = v7;
      v9 = *a1;
      if ((*(*a1 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v9, v8);
      }

      else
      {
        *v9 = v8;
        *(v9 + 20) = 4;
      }
    }
  }
}

void sub_18198DB44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v6 = a1;
    sub_1819012D0(92237);
    a1 = v6;
    goto LABEL_8;
  }

  v4 = *(v3 + 20);
  if ((v4 & 0x24) != 0)
  {
    LODWORD(v3) = *v3;
    goto LABEL_4;
  }

  if ((v4 & 8) == 0)
  {
    if ((v4 & 0x12) != 0 && *(v3 + 8))
    {
      v7 = a1;
      LODWORD(v3) = sub_18193CFCC(*a3);
      a1 = v7;
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v3) = 0;
    goto LABEL_9;
  }

  v8 = *v3;
  if (*v3 < -9.22337204e18)
  {
    goto LABEL_8;
  }

  if (v8 <= 9.22337204e18)
  {
    v3 = v8;
LABEL_4:
    if (v3 > 0x47)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = off_1E6A28248[v3];
    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = 0;
  if (!a1)
  {
    return;
  }

LABEL_10:

  sub_18190B23C(a1, v5, -1, 1u, 0);
}

void sub_18198DC38(sqlite3_context *a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v6 + 20)))
    {
      return;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v6 = *a3;
    if (!*a3)
    {
      return;
    }
  }

  v7 = *(v6 + 20);
  if ((~v7 & 0x202) != 0 || *(v6 + 22) != 1)
  {
    if (v7)
    {
      return;
    }

    v8 = sub_18193CB70(v6, 1);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *(v6 + 8);
    if (!v8)
    {
      return;
    }
  }

  v9 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_21;
  }

  v10 = *(v9 + 20);
  if ((v10 & 2) != 0 && *(v9 + 22) == 1)
  {
    v11 = *(v9 + 16);
    if (a2 != 1)
    {
      goto LABEL_22;
    }

LABEL_29:
    v15 = &dword_181A249F8;
    LODWORD(v16) = 1;
    v17 = off_1E6A27CA8;
    goto LABEL_30;
  }

  if ((v10 & 0x10) != 0)
  {
    v11 = *(v9 + 16);
    if ((*(v9 + 20) & 0x400) != 0)
    {
      v11 += *v9;
    }

    if (a2 == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if (v10)
  {
LABEL_21:
    v11 = 0;
    if (a2 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v11 = sub_18193CB44(v9, 1);
  if (a2 == 1)
  {
    goto LABEL_29;
  }

LABEL_22:
  v12 = a3[1];
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 20);
  if ((~v13 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if (v13)
    {
      return;
    }

    v14 = sub_18193CB70(v12, 1);
  }

  else
  {
    v14 = *(v12 + 8);
  }

  if (v14)
  {
    v26 = *v14;
    if (!*v14)
    {
      goto LABEL_88;
    }

    LODWORD(v27) = 0;
    v28 = v14;
    do
    {
      if (v26 < 0xC0)
      {
        v29 = *++v28;
        v26 = v29;
      }

      else
      {
        do
        {
          v30 = *++v28;
          v26 = v30;
        }

        while ((v30 & 0xC0) == 0x80);
      }

      v27 = (v27 + 1);
    }

    while (v26);
    v39 = 4 * (v27 + 2 * v27);
    if (a1)
    {
      v40 = *a1;
      if (v39 > *(*(*a1 + 24) + 136))
      {
        *(a1 + 9) = 18;

        sub_1818900D0(v40, "string or blob too big", -1, 1u, 0);
        return;
      }
    }

    else if (v39 > MEMORY[0x88])
    {
      return;
    }

    v41 = v14;
    v42 = sub_181902484(4 * (v27 + 2 * v27), 3621441365);
    if (v42)
    {
      if (*v41)
      {
        v17 = v42;
        v43 = v41;
        v16 = 0;
        v15 = (v42 + 8 * v27);
        v44 = v41;
        do
        {
          *(v42 + 8 * v16) = v43;
          v45 = *v44++;
          if (v45 >= 0xC0)
          {
            v44 = v43;
            do
            {
              v46 = *++v44;
            }

            while ((v46 & 0xC0) == 0x80);
          }

          v15[v16++] = v44 - v43;
          v43 = v44;
        }

        while (*v44);
LABEL_30:
        if (a1)
        {
          v18 = *(*(a1 + 1) + 8);
          v48 = v15;
          if ((v18 & 1) != 0 && v11)
          {
            v19 = v16;
            v47 = v17;
            while (2)
            {
              v20 = v19;
              v21 = v17;
              v22 = v15;
              while (1)
              {
                v24 = *v22++;
                v23 = v24;
                if (v11 >= v24 && !memcmp(v8, *v21, v23))
                {
                  break;
                }

                ++v21;
                if (!--v20)
                {
                  v17 = v47;
                  v15 = v48;
                  goto LABEL_51;
                }
              }

              v25 = 0;
              v8 += v23;
              v11 -= v23;
              v17 = v47;
              v15 = v48;
              v19 = v16;
              if (v11)
              {
                continue;
              }

              break;
            }

LABEL_63:
            if (a2 == 1)
            {
              goto LABEL_70;
            }

            v38 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
              --qword_1ED456A90;
              off_1ED452EB0(v17);
              v17 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
LABEL_70:
                if (!a1)
                {
                  return;
                }

LABEL_71:

                sub_18190B23C(a1, v8, v25, 1u, 0xFFFFFFFFFFFFFFFFLL);
                return;
              }

              v38 = &xmmword_1ED452F28;
            }

            (*v38)(v17);
            goto LABEL_70;
          }

LABEL_51:
          if ((v18 & 2) != 0 && v11)
          {
            if (v16 <= 1)
            {
              v31 = 1;
            }

            else
            {
              v31 = v16;
            }

            do
            {
              v32 = v31;
              v33 = v15;
              v34 = v17;
              while (1)
              {
                v36 = *v33++;
                v35 = v36;
                if (v11 >= v36)
                {
                  v37 = v11 - v35;
                  if (!memcmp(&v8[v37], *v34, v35))
                  {
                    break;
                  }
                }

                ++v34;
                if (!--v32)
                {
                  goto LABEL_62;
                }
              }

              v11 = v37;
              v15 = v48;
            }

            while (v37);
            v25 = 0;
            goto LABEL_63;
          }
        }

LABEL_62:
        v25 = v11;
        goto LABEL_63;
      }

LABEL_88:
      v25 = v11;
      if (!a1)
      {
        return;
      }

      goto LABEL_71;
    }

    sqlite3_result_error_nomem(a1);
  }
}

void sub_18198E0E0(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    if (*(*(a1 + 1) + 8))
    {
      v5 = -1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*(a1 + 3) + 136) + 40 * *(a1 + 8) - 24);
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)))
    {
      return;
    }

    if (a2 >= 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = a2;
    sub_1819012D0(99877);
    a2 = v11;
    if (v11 >= 2)
    {
LABEL_9:
      v7 = 0;
      v8 = 1;
      v9 = a2;
      do
      {
        v10 = *(a3 + 8 * v8);
        if (v10)
        {
          if ((0xAAAAAAAAAAAAAAAALL >> *(v10 + 20)))
          {
            return;
          }
        }

        else
        {
          sub_1819012D0(99877);
          v10 = *(a3 + 8 * v8);
        }

        if ((sub_1818D0D40(*(a3 + 8 * v7), v10, v6) ^ v5) >= 0)
        {
          v7 = v8;
        }

        ++v8;
      }

      while (v9 != v8);
      v12 = v7;
      goto LABEL_20;
    }
  }

  v12 = 0;
LABEL_20:
  v13 = *(a3 + 8 * v12);

  sqlite3_result_value(a1, v13);
}

void sub_18198E224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0 && *(v3 + 32))
  {
    v4 = *a3;
    v5 = *(a1 + 16);
    if (*(v5 + 20) < 0)
    {
      v6 = a1;
      v7 = *(v5 + 8);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v6 = a1;
      v7 = sub_18190C2E0(a1, 64);
      if (!v7)
      {
        return;
      }
    }

    if (v4)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v4 + 20)))
      {
        if (!*(v7 + 20))
        {
          return;
        }

LABEL_20:
        *(v6 + 36) = -1;
        *(v6 + 41) = 1;
        return;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    if (*(v7 + 20))
    {
      v8 = *(*(v6 + 8) + 8);
      v9 = sub_1818D0D40(v7, v4, *(*(*(v6 + 24) + 136) + 40 * *(v6 + 32) - 24));
      v10 = v9 >= 0;
      if (!v8)
      {
        v10 = v9 < 1;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      if ((*(v7 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v7);
      }
    }

    else
    {
      *(v7 + 24) = *(*v6 + 24);
    }

    v11 = *v4;
    v12 = *(v4 + 16);
    *(v7 + 16) = v12;
    *v7 = v11;
    *(v7 + 20) = WORD2(v12) & 0xEFFF;
    if ((v12 & 0x1200000000) != 0 && (*(v4 + 20) & 0x2000) == 0)
    {
      *(v7 + 20) = WORD2(v12) & 0xAFFF | 0x4000;

      sub_18190B020(v7);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_18198E3D0(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0 && *(v1 + 32))
  {
    v2 = *(a1 + 16);
    if (*(v2 + 20) < 0)
    {
      v3 = a1;
      v4 = *(v2 + 8);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v3 = a1;
      v4 = sub_18190C2E0(a1, 0);
      if (!v4)
      {
        return;
      }
    }

    if (*(v4 + 20) && (sqlite3_result_value(v3, v4), (*(v4 + 20) & 0x9000) != 0) || *(v4 + 32))
    {

      sub_18193CA00(v4);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_18198E4A0(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0 && *(v1 + 32))
  {
    v2 = *(a1 + 16);
    if (*(v2 + 20) < 0)
    {
      v3 = a1;
      v4 = *(v2 + 8);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v3 = a1;
      v4 = sub_18190C2E0(a1, 0);
      if (!v4)
      {
        return;
      }
    }

    if (*(v4 + 10))
    {

      sqlite3_result_value(v3, v4);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_18198E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v4 = byte_181A203AA[*(*a3 + 20) & 0x3F] - 1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v6 = a1;
    sub_1819012D0(99877);
    a1 = v6;
    v4 = -1;
    if (!v6)
    {
      return;
    }
  }

  v5 = off_1E6A27CB0[v4];

  sub_18190B23C(a1, v5, -1, 1u, 0);
}

void sub_18198E5D4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    if ((*(v4 + 20) & 0x800) != 0)
    {
      v5 = *(v4 + 23);
      if (!a1)
      {
        return;
      }
    }

    else
    {
      v5 = 0;
      if (!a1)
      {
        return;
      }
    }
  }

  else
  {
    sub_1819012D0(99765);
    v5 = 0;
    if (!a1)
    {
      return;
    }
  }

  v6 = *a1;
  if ((*(*a1 + 20) & 0x9000) != 0)
  {

    sub_18193D288(v6, v5);
  }

  else
  {
    *v6 = v5;
    *(v6 + 20) = 4;
  }
}

void sub_18198E66C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    goto LABEL_10;
  }

  v5 = *(v4 + 20);
  v6 = byte_181A203AA[v5 & 0x3F];
  if ((v6 - 1) < 2)
  {
LABEL_5:
    if ((v5 & 2) != 0 && *(v4 + 22) == 1)
    {
      v7 = *(v4 + 16);
      if (!a1)
      {
        return;
      }

      goto LABEL_22;
    }

    if ((v5 & 0x10) == 0)
    {
      if (v5)
      {
        v7 = 0;
        if (!a1)
        {
          return;
        }
      }

      else
      {
        v7 = sub_18193CB44(v4, 1);
        if (!a1)
        {
          return;
        }
      }

      goto LABEL_22;
    }

    v7 = *(v4 + 16);
    if ((v5 & 0x400) != 0)
    {
      v7 += *v4;
    }

    if (a1)
    {
LABEL_22:
      v8 = *a1;
      if ((*(*a1 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v8, v7);
        return;
      }

      *v8 = v7;
      v10 = 4;
LABEL_32:
      *(v8 + 20) = v10;
      return;
    }

    return;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (!a1)
    {
      return;
    }

    v8 = *a1;
    if ((*(*a1 + 20) & 0x9000) == 0)
    {
      v10 = 1;
      goto LABEL_32;
    }

    sub_18193CA54(v8);
    return;
  }

  if ((~v5 & 0x202) != 0 || *(v4 + 22) != 1)
  {
    if (v5)
    {
      return;
    }

    v9 = sub_18193CB70(v4, 1);
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *(v4 + 8);
    if (!v9)
    {
      return;
    }
  }

  v11 = *v9;
  if (*v9)
  {
    v12 = v9;
    do
    {
      v13 = v11;
      v14 = *++v12;
      v11 = v14;
      if (v13 >= 0xC0)
      {
        while ((v11 & 0xC0) == 0x80)
        {
          v15 = *++v12;
          v11 = v15;
          LODWORD(v9) = v9 + 1;
        }
      }
    }

    while (v11);
  }

  else
  {
    LODWORD(v12) = v9;
  }

  if (a1)
  {
    v7 = v12 - v9;
    goto LABEL_22;
  }
}

void sub_18198E828(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  v6 = byte_181A203AA[v5 & 0x3F];
  if ((v6 - 1) < 2)
  {
    v9 = *a1;
    v10 = *(*(*a1 + 24) + 100);
    if ((v5 & 2) != 0 && *(v4 + 22) == 1)
    {
      v11 = *(v4 + 16);
    }

    else if ((v5 & 0x10) != 0)
    {
      v11 = *(v4 + 16);
      if ((*(v4 + 20) & 0x400) != 0)
      {
        v11 += *v4;
      }
    }

    else if (v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_18193CB44(v4, 1);
      v9 = *a1;
    }

    v15 = v11 << (v10 > 1);
    if ((*(v9 + 20) & 0x9000) == 0)
    {
      *v9 = v15;
      *(v9 + 20) = 4;
      return;
    }

    v8 = v9;
    goto LABEL_51;
  }

  if (v6 == 3)
  {
    v12 = *(v4 + 22);
    if (v12 > 1)
    {
      if ((v5 & 2) == 0)
      {
        if ((v5 & 0x10) == 0)
        {
          if ((v5 & 1) == 0)
          {
            v14 = 2;
            goto LABEL_30;
          }

LABEL_57:
          v7 = 0;
          if (!a1)
          {
            return;
          }

          goto LABEL_50;
        }

LABEL_45:
        v7 = *(v4 + 16);
        if ((*(v4 + 20) & 0x400) == 0)
        {
          goto LABEL_49;
        }

        v7 += *v4;
        if (!a1)
        {
          return;
        }

LABEL_50:
        v8 = *a1;
        v15 = v7;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {
LABEL_51:

          sub_18193D288(v8, v15);
          return;
        }

        *v8 = v7;
        v13 = 4;
LABEL_55:
        *(v8 + 20) = v13;
        return;
      }
    }

    else if ((v5 & 2) == 0 || v12 != 1)
    {
      if ((v5 & 0x10) == 0)
      {
        if ((v5 & 1) == 0)
        {
LABEL_29:
          v14 = 1;
LABEL_30:
          v7 = sub_18193CB44(v4, v14);
          goto LABEL_49;
        }

        goto LABEL_57;
      }

      goto LABEL_45;
    }

    v7 = *(v4 + 16);
    if (!a1)
    {
      return;
    }

    goto LABEL_50;
  }

  if (v6 == 4)
  {
    if ((v5 & 2) != 0 && *(v4 + 22) == 1)
    {
      v7 = *(v4 + 16);
      goto LABEL_49;
    }

    if ((v5 & 0x10) != 0)
    {
      v7 = *(v4 + 16);
      if ((*(v4 + 20) & 0x400) != 0)
      {
        v7 += *v4;
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_29;
      }

      v7 = 0;
    }

LABEL_49:
    if (!a1)
    {
      return;
    }

    goto LABEL_50;
  }

LABEL_9:
  if (!a1)
  {
    return;
  }

  v8 = *a1;
  if ((*(*a1 + 20) & 0x9000) == 0)
  {
    v13 = 1;
    goto LABEL_55;
  }

  sub_18193CA54(v8);
}

void sub_18198EA4C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (*a3)
  {
    v5 = byte_181A203AA[*(*a3 + 10) & 0x3F];
    v6 = a3[1];
    if (v6)
    {
LABEL_3:
      v7 = byte_181A203AA[*(v6 + 10) & 0x3F];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v5 = 0;
    v6 = a3[1];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  sub_1819012D0(99877);
  v7 = 0;
LABEL_6:
  if (v5 == 5 || v7 == 5)
  {
    return;
  }

  v9 = *a3;
  if (*a3)
  {
    v10 = *(v9 + 20);
    if ((v10 & 2) != 0 && *(v9 + 22) == 1)
    {
      v11 = *(v9 + 16);
      v12 = a3[1];
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    if ((v10 & 0x10) != 0)
    {
      v11 = *(v9 + 16);
      if ((*(v9 + 20) & 0x400) != 0)
      {
        v11 += *v9;
      }

      v12 = a3[1];
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    if ((v10 & 1) == 0)
    {
      v11 = sub_18193CB44(v9, 1);
      v12 = a3[1];
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_1819012D0(93690);
  }

  v11 = 0;
  v12 = a3[1];
  if (!v12)
  {
LABEL_21:
    sub_1819012D0(93690);
    goto LABEL_48;
  }

LABEL_25:
  v13 = *(v12 + 20);
  if ((v13 & 2) != 0 && *(v12 + 22) == 1)
  {
    v14 = *(v12 + 16);
  }

  else if ((v13 & 0x10) != 0)
  {
    v14 = *(v12 + 16);
    if ((*(v12 + 20) & 0x400) != 0)
    {
      v14 += *v12;
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_48;
    }

    v14 = sub_18193CB44(v12, 1);
  }

  if (v14 < 1)
  {
LABEL_48:
    v19 = 0;
    v20 = 0;
    v21 = 1;
    if (a1)
    {
      goto LABEL_49;
    }

    goto LABEL_84;
  }

  v15 = v5 == 4 && v7 == 4;
  v16 = v15;
  if (v15)
  {
    v17 = sqlite3_value_blob(*a3);
    v18 = sqlite3_value_blob(a3[1]);
    if (v18)
    {
LABEL_43:
      v19 = 0;
      v20 = 0;
      if (v11 && !v17)
      {
        goto LABEL_83;
      }

      goto LABEL_45;
    }

LABEL_81:
    v19 = 0;
    goto LABEL_82;
  }

  v23 = *a3;
  if (v5 != 4 && v7 != 4)
  {
    if (!v23)
    {
      goto LABEL_73;
    }

    v27 = *(v23 + 10);
    if ((~v27 & 0x202) == 0 && *(v23 + 22) == 1)
    {
      v17 = *(v23 + 1);
      goto LABEL_74;
    }

    if (v27)
    {
LABEL_73:
      v17 = 0;
    }

    else
    {
      v17 = sub_18193CB70(v23, 1);
    }

LABEL_74:
    v29 = a3[1];
    if (v29)
    {
      v30 = *(v29 + 10);
      if ((~v30 & 0x202) != 0 || *(v29 + 22) != 1)
      {
        if (v30)
        {
          goto LABEL_81;
        }

        v18 = sub_18193CB70(v29, 1);
        if (!v18)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v18 = *(v29 + 1);
        if (!v18)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_43;
    }

    goto LABEL_81;
  }

  v25 = sqlite3_value_dup(v23);
  v19 = v25;
  if (!v25)
  {
    goto LABEL_82;
  }

  v26 = *(v25 + 10);
  if ((~v26 & 0x202) == 0 && *(v25 + 22) == 1)
  {
    v17 = *(v25 + 1);
    goto LABEL_67;
  }

  if (v26)
  {
LABEL_82:
    v20 = 0;
LABEL_83:
    sqlite3_result_error_nomem(a1);
    goto LABEL_84;
  }

  v17 = sub_18193CB70(v25, 1);
LABEL_67:
  if (!v17)
  {
    goto LABEL_82;
  }

  v28 = *(v19 + 20);
  if ((v28 & 2) != 0 && *(v19 + 22) == 1)
  {
    v11 = *(v19 + 16);
  }

  else if ((v28 & 0x10) != 0)
  {
    v11 = *(v19 + 16);
    if ((*(v19 + 20) & 0x400) != 0)
    {
      v11 += *v19;
    }
  }

  else if (v28)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_18193CB44(v19, 1);
  }

  v37 = sqlite3_value_dup(a3[1]);
  v20 = v37;
  if (!v37)
  {
    goto LABEL_83;
  }

  v38 = *(v37 + 10);
  if ((~v38 & 0x202) != 0 || *(v37 + 22) != 1)
  {
    if (v38)
    {
      goto LABEL_83;
    }

    v18 = sub_18193CB70(v37, 1);
  }

  else
  {
    v18 = *(v37 + 1);
  }

  if (!v18)
  {
    goto LABEL_83;
  }

  v39 = *(v20 + 20);
  if ((v39 & 2) != 0 && *(v20 + 22) == 1)
  {
    v14 = *(v20 + 16);
  }

  else if ((v39 & 0x10) != 0)
  {
    v14 = *(v20 + 16);
    if ((*(v20 + 20) & 0x400) != 0)
    {
      v14 += *v20;
    }
  }

  else if (v39)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_18193CB44(v20, 1);
  }

LABEL_45:
  if (v14 <= v11)
  {
    v32 = *v18;
    v33 = 1;
    while (*v17 != v32 || memcmp(v17, v18, v14))
    {
      ++v33;
      v35 = v17 + 1;
      v34 = v11 + 1;
      while (1)
      {
        v17 = v35;
        v36 = v34;
        if (v16)
        {
          break;
        }

        ++v35;
        --v34;
        if ((*v17 & 0xC0) != 0x80)
        {
          goto LABEL_99;
        }
      }

      v34 = v11;
LABEL_99:
      v11 = v36 - 2;
      if (v14 >= v34)
      {
        v33 = 0;
        break;
      }
    }

    v21 = v33;
    if (!a1)
    {
      goto LABEL_84;
    }

    goto LABEL_49;
  }

  v21 = 0;
  if (a1)
  {
LABEL_49:
    v22 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v22, v21);
    }

    else
    {
      *v22 = v21;
      *(v22 + 20) = 4;
    }
  }

LABEL_84:
  if (v19)
  {
    if ((*(v19 + 20) & 0x9000) != 0 || *(v19 + 32))
    {
      sub_18193CA00(v19);
    }

    sub_181929C84(*(v19 + 24), v19);
  }

  if (v20)
  {
    if ((*(v20 + 20) & 0x9000) != 0 || *(v20 + 32))
    {
      sub_18193CA00(v20);
    }

    v31 = *(v20 + 24);

    sub_181929C84(v31, v20);
  }
}

void sub_18198EF44(uint64_t a1, int a2, int **a3)
{
  v21 = 0x20000000000;
  if (a1)
  {
    v3 = *(*a1 + 24);
    v4 = a2 - 1;
    if (a2 < 1)
    {
      return;
    }
  }

  else
  {
    v3 = 0;
    v4 = a2 - 1;
    if (a2 < 1)
    {
      return;
    }
  }

  v5 = *a3;
  if (!*a3)
  {
    return;
  }

  v6 = *(v5 + 10);
  if ((~v6 & 0x202) != 0 || *(v5 + 22) != 1)
  {
    if (v6)
    {
      return;
    }

    v8 = a1;
    v9 = a3;
    v10 = sub_18193CB70(*a3, 1);
    a3 = v9;
    v7 = v10;
    a1 = v8;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *(v5 + 1);
    if (!v7)
    {
      return;
    }
  }

  v11 = a1;
  v22[0] = v4;
  v22[1] = 0;
  v23 = a3 + 1;
  v12 = *(v3 + 136);
  v17 = v3;
  v18 = 0;
  v19 = 0;
  v20 = v12;
  sqlite3_str_appendf(&v17, v7, v22);
  v13 = v21;
  if (!v18 || (v18[v21] = 0, !v20) || (v21 & 0x40000000000) != 0)
  {
    v14 = v18;
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_22:
    sub_18190B23C(v11, v14, v13, 1u, sub_181916CE4);
    return;
  }

  v14 = sub_18192A12C(&v17);
  if (v11)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v14[103])
  {
    v15 = *(v14 + 55);
    if (!v15)
    {
      v14[103] = 0;
      *(v14 + 106) = 0;
      v16 = *(v14 + 108) - 1;
      *(v14 + 108) = v16;
      if (!v16)
      {
        LOWORD(v15) = *(v14 + 219);
      }

      *(v14 + 218) = v15;
    }
  }
}

void sub_18198F0AC(uint64_t *a1, uint64_t a2, int **a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = *(v3 + 10);
    if ((~v4 & 0x202) != 0 || *(v3 + 22) != 1)
    {
      if (v4)
      {
        return;
      }

      v6 = a1;
      v5 = sub_18193CB70(*a3, 1);
      a1 = v6;
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *(v3 + 1);
      if (!v5)
      {
        return;
      }
    }

    v7 = *v5;
    if (*v5)
    {
      if (v7 >= 0xC0)
      {
        v7 = byte_181A20D3A[v7 - 192];
        v8 = v5[1];
        if ((v8 & 0xC0) == 0x80)
        {
          v9 = v5 + 2;
          do
          {
            v7 = v8 & 0x3F | (v7 << 6);
            v10 = *v9++;
            v8 = v10;
          }

          while ((v10 & 0xC0) == 0x80);
        }

        if (v7 < 0x80 || v7 >> 1 == 0x7FFF || v7 >> 11 == 27)
        {
          v7 = 65533;
        }
      }

      if (a1)
      {
        v13 = *a1;
        if ((*(v13 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v13, v7);
        }

        else
        {
          *v13 = v7;
          *(v13 + 20) = 4;
        }
      }
    }
  }
}

void sub_18198F1C8(sqlite3_context *a1, int a2, uint64_t *a3)
{
  LODWORD(i) = a2;
  if (sqlite3_initialize() || (v6 = sub_181902484(((4 * i) | 1), 3917743400)) == 0)
  {

    sqlite3_result_error_nomem(a1);
  }

  else
  {
    v7 = v6;
    v8 = v6;
    if (i >= 1)
    {
      v8 = v6;
      for (i = i; i; --i)
      {
        v9 = *a3;
        if (!*a3)
        {
          sub_1819012D0(92237);
LABEL_17:
          *v8++ = 0;
          goto LABEL_9;
        }

        v10 = *(v9 + 20);
        if ((v10 & 0x24) != 0)
        {
          v11 = *v9;
        }

        else if ((v10 & 8) != 0)
        {
          if (fabs(*v9) > 9.22337204e18)
          {
LABEL_14:
            LODWORD(v12) = 65533;
LABEL_15:
            *v8 = (v12 >> 12) | 0xE0;
            v8[1] = (v12 >> 6) & 0x3F | 0x80;
            v8[2] = v12 & 0x3F | 0x80;
            v8 += 3;
            goto LABEL_9;
          }

          *&v11 = *v9;
        }

        else
        {
          if ((v10 & 0x12) == 0)
          {
            goto LABEL_17;
          }

          v12 = *(v9 + 8);
          if (!v12)
          {
            goto LABEL_8;
          }

          v11 = COERCE_DOUBLE(sub_18193CFCC(v9));
        }

        if (*&v11 >> 16 > 0x10uLL)
        {
          goto LABEL_14;
        }

        LODWORD(v12) = LODWORD(v11) & 0x1FFFFF;
        if ((LODWORD(v11) & 0x1FFFFFu) > 0x7F)
        {
          if (v12 <= 0x7FF)
          {
            *v8 = (LODWORD(v11) >> 6) | 0xC0;
            v8[1] = LOBYTE(v11) & 0x3F | 0x80;
            v8 += 2;
            goto LABEL_9;
          }

          if (WORD1(v12))
          {
            *v8 = (LODWORD(v11) >> 18) | 0xF0;
            v8[1] = (LODWORD(v11) >> 12) & 0x3F | 0x80;
            v8[2] = (LODWORD(v11) >> 6) & 0x3F | 0x80;
            v8[3] = LOBYTE(v11) & 0x3F | 0x80;
            v8 += 4;
            goto LABEL_9;
          }

          goto LABEL_15;
        }

LABEL_8:
        *v8++ = v12;
LABEL_9:
        ++a3;
      }
    }

    *v8 = 0;

    sqlite3_result_text64(a1, v7, v8 - v7, sqlite3_free, 1u);
  }
}

void sub_18198F3D8(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    v4 = *a3;
    if (!*a3)
    {
      sub_1819012D0(92272);
      goto LABEL_20;
    }

LABEL_10:
    v9 = *(v4 + 20);
    if ((v9 & 8) != 0)
    {
      v10 = *v4;
      goto LABEL_23;
    }

    if ((v9 & 0x24) != 0)
    {
      v10 = *v4;
      goto LABEL_23;
    }

    if ((v9 & 0x12) != 0)
    {
      v10 = sub_18193CF90(v4);
LABEL_23:
      if (v10 >= 0.0)
      {
        v12 = v10;
      }

      else
      {
        v12 = -v10;
      }

      if (a1)
      {
        v13 = *a1;
        if ((*(v13 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v13);
        }

        else
        {
          *(v13 + 20) = 1;
        }

        *v13 = v12;
        *(v13 + 20) = 8;
      }

      else
      {

        sub_1819012D0(100067);
      }

      return;
    }

LABEL_20:
    v10 = 0.0;
    goto LABEL_23;
  }

  v5 = *(v4 + 20);
  v6 = byte_181A203AA[v5 & 0x3F];
  if (v6 != 5)
  {
    if (v6 == 1)
    {
      if ((v5 & 0x24) != 0)
      {
        v7 = *v4;
        goto LABEL_6;
      }

      if ((v5 & 8) != 0)
      {
        v14 = *v4;
        if (*v4 < -9.22337204e18)
        {
LABEL_41:
          if (a1)
          {
            a1[9] = 1;
            v15 = *a1;

            sub_1818900D0(v15, "integer overflow", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
          }

          return;
        }

        if (v14 <= 9.22337204e18)
        {
          v7 = v14;
LABEL_6:
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          if (v7 != 0x8000000000000000)
          {
            v7 = -v7;
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if ((v5 & 0x12) != 0 && *(v4 + 8))
        {
          v7 = sub_18193CFCC(v4);
          goto LABEL_6;
        }

        v7 = 0;
      }

LABEL_48:
      if (a1)
      {
        v16 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v16, v7);
        }

        else
        {
          *v16 = v7;
          *(v16 + 20) = 4;
        }
      }

      return;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    v11 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {

      sub_18193CA54(v11);
    }

    else
    {
      *(v11 + 20) = 1;
    }
  }
}

void sub_18198F664(sqlite3_context *a1, int a2, uint64_t *a3)
{
  if (a2 != 2)
  {
    v6 = 0;
    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_25;
    }

LABEL_6:
    if ((0xAAAAAAAAAAAAAAAALL >> *(v7 + 20)))
    {
      return;
    }

    goto LABEL_26;
  }

  v5 = a3[1];
  if (v5)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v5 + 20)))
    {
      return;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v5 = a3[1];
    if (!v5)
    {
      sub_1819012D0(92237);
LABEL_16:
      v9 = 0;
      goto LABEL_22;
    }
  }

  v8 = *(v5 + 20);
  if ((v8 & 0x24) != 0)
  {
    v9 = *v5;
    goto LABEL_22;
  }

  if ((v8 & 8) == 0)
  {
    if ((v8 & 0x12) != 0 && *(v5 + 8))
    {
      v9 = sub_18193CFCC(v5);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v10 = *v5;
  if (*v5 >= -9.22337204e18)
  {
    if (v10 <= 9.22337204e18)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0x8000000000000000;
  }

LABEL_22:
  v11 = 30;
  if (v9 < 30)
  {
    v11 = v9;
  }

  v6 = v11 & ~(v11 >> 63);
  v7 = *a3;
  if (*a3)
  {
    goto LABEL_6;
  }

LABEL_25:
  sub_1819012D0(99877);
  v7 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92272);
    goto LABEL_33;
  }

LABEL_26:
  v12 = *(v7 + 20);
  if ((v12 & 8) != 0)
  {
    v13 = *v7;
    goto LABEL_34;
  }

  if ((v12 & 0x24) != 0)
  {
    v13 = *v7;
    goto LABEL_34;
  }

  if ((v12 & 0x12) != 0)
  {
    v13 = sub_18193CF90(v7);
    goto LABEL_34;
  }

LABEL_33:
  v13 = 0.0;
LABEL_34:
  v20 = v13;
  if (fabs(v13) > 4.50359963e15)
  {
    goto LABEL_44;
  }

  if (!v6)
  {
    v19 = 0.5;
    if (v13 < 0.0)
    {
      v19 = -0.5;
    }

    v13 = (v13 + v19);
    if (a1)
    {
      goto LABEL_45;
    }

LABEL_52:

    sub_1819012D0(100067);
    return;
  }

  v14 = sqlite3_mprintf("%!.*f", v6, *&v13);
  if (v14)
  {
    v15 = v14;
    v16 = strlen(v14);
    sub_1818E6334(v15, &v20, v16 & 0x3FFFFFFF, 1);
    v17 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_43;
      }

      v17 = &xmmword_1ED452F28;
    }

    (*v17)(v15);
LABEL_43:
    v13 = v20;
LABEL_44:
    if (a1)
    {
LABEL_45:
      v18 = *a1;
      if ((*(v18 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v18);
      }

      else
      {
        *(v18 + 20) = 1;
      }

      *v18 = v13;
      *(v18 + 20) = 8;
      return;
    }

    goto LABEL_52;
  }

  sqlite3_result_error_nomem(a1);
}

void sub_18198F99C(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *(v4 + 20);
  if ((~v5 & 0x202) == 0 && *(v4 + 22) == 1)
  {
    v6 = *(v4 + 8);
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v5 & 1) == 0)
  {
    v6 = sub_18193CB70(v4, 1);
    v4 = *a3;
    if (*a3)
    {
      LOWORD(v5) = *(v4 + 20);
      if ((v5 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_11:
    sub_1819012D0(93690);
    v8 = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_24;
  }

  v6 = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (*(v4 + 22) == 1)
  {
    v8 = *(v4 + 16);
    if (!v6)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_17:
  if ((v5 & 0x10) != 0)
  {
    v8 = *(v4 + 16);
    if ((v5 & 0x400) != 0)
    {
      v8 += *v4;
    }

    if (!v6)
    {
      return;
    }
  }

  else if (v5)
  {
    v8 = 0;
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = sub_18193CB44(v4, 1);
    if (!v6)
    {
      return;
    }
  }

LABEL_24:
  if (a1)
  {
    v9 = *a1;
    if (v8 >= *(*(*a1 + 24) + 136))
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v9, "string or blob too big", -1, 1u, 0);
      return;
    }
  }

  else if (v8 >= MEMORY[0x88])
  {
    return;
  }

  v10 = sub_181902484(v8 + 1, 3621441365);
  if (v10)
  {
    v11 = v10;
    if (v8 >= 1)
    {
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v6++;
        *v13++ = v14 & (~byte_181A204C8[v14] | 0xDF);
        --v12;
      }

      while (v12);
    }

    if (a1)
    {

      sub_18190B23C(a1, v10, v8, 1u, sqlite3_free);
      return;
    }

    v15 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_48;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v15 = &xmmword_1ED452F28;
LABEL_48:
      v16 = *v15;

      v16(v11);
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_18198FC50(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *(v4 + 20);
  if ((~v5 & 0x202) == 0 && *(v4 + 22) == 1)
  {
    v6 = *(v4 + 8);
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v5 & 1) == 0)
  {
    v6 = sub_18193CB70(v4, 1);
    v4 = *a3;
    if (*a3)
    {
      LOWORD(v5) = *(v4 + 20);
      if ((v5 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_11:
    sub_1819012D0(93690);
    v8 = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_24;
  }

  v6 = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (*(v4 + 22) == 1)
  {
    v8 = *(v4 + 16);
    if (!v6)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_17:
  if ((v5 & 0x10) != 0)
  {
    v8 = *(v4 + 16);
    if ((v5 & 0x400) != 0)
    {
      v8 += *v4;
    }

    if (!v6)
    {
      return;
    }
  }

  else if (v5)
  {
    v8 = 0;
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = sub_18193CB44(v4, 1);
    if (!v6)
    {
      return;
    }
  }

LABEL_24:
  if (a1)
  {
    v9 = *a1;
    if (v8 >= *(*(*a1 + 24) + 136))
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v9, "string or blob too big", -1, 1u, 0);
      return;
    }
  }

  else if (v8 >= MEMORY[0x88])
  {
    return;
  }

  v10 = sub_181902484(v8 + 1, 3621441365);
  if (v10)
  {
    v11 = v10;
    if (v8 >= 1)
    {
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v6++;
        *v13++ = byte_181A20298[v14];
        --v12;
      }

      while (v12);
    }

    if (a1)
    {

      sub_18190B23C(a1, v10, v8, 1u, sqlite3_free);
      return;
    }

    v15 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_48;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v15 = &xmmword_1ED452F28;
LABEL_48:
      v16 = *v15;

      v16(v11);
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_18198FEF8(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_value_blob(*a3);
  v6 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_11;
  }

  v7 = *(v6 + 10);
  if ((v7 & 2) == 0 || *(v6 + 22) != 1)
  {
    if ((v7 & 0x10) != 0)
    {
      v8 = *(v6 + 4);
      if ((*(v6 + 10) & 0x400) != 0)
      {
        v8 += *v6;
      }

      v9 = 2 * v8;
      if (a1)
      {
        goto LABEL_17;
      }

LABEL_12:
      if (v9 >= MEMORY[0x88])
      {
        return;
      }

      goto LABEL_18;
    }

    if ((v7 & 1) == 0)
    {
      v8 = sub_18193CB44(v6, 1);
      v9 = 2 * v8;
      if (a1)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    v9 = 0;
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v8 = *(v6 + 4);
  v9 = 2 * v8;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_17:
  v10 = *a1;
  if (v9 < *(*(*a1 + 24) + 136))
  {
LABEL_18:
    v11 = sub_181902484((2 * v8) | 1, 3621441365);
    if (v11)
    {
      v12 = v11;
      if (v8 >= 1)
      {
        v13 = v11;
        do
        {
          v14 = *v5++;
          *v13 = a0123456789abcd_2[v14 >> 4];
          v12 = v13 + 2;
          v13[1] = a0123456789abcd_2[v14 & 0xF];
          v13 += 2;
          --v8;
        }

        while (v8);
      }

      *v12 = 0;

      sqlite3_result_text64(a1, v11, v12 - v11, sqlite3_free, 1u);
    }

    else
    {

      sqlite3_result_error_nomem(a1);
    }

    return;
  }

  *(a1 + 9) = 18;

  sub_1818900D0(v10, "string or blob too big", -1, 1u, 0);
}

void sub_1819900D4(sqlite3_context *a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  if (!*a3)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v7 = *(v6 + 20);
  if ((~v7 & 0x202) == 0 && *(v6 + 22) == 1)
  {
    v8 = *(v6 + 8);
    if ((v7 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v8 = 0;
    if ((v7 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v8 = sub_18193CB70(v6, 1);
  v6 = *a3;
  if (!*a3)
  {
LABEL_11:
    sub_1819012D0(93690);
    goto LABEL_12;
  }

  LOWORD(v7) = *(v6 + 20);
  if ((v7 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(v6 + 22) == 1)
  {
    v9 = *(v6 + 16);
    if (a2 == 2)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

LABEL_19:
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v9 = sub_18193CB44(v6, 1);
      if (a2 == 2)
      {
        goto LABEL_26;
      }

LABEL_13:
      v10 = 0;
      v11 = &byte_181A2878D;
      if (!v8)
      {
        return;
      }

      goto LABEL_49;
    }

LABEL_12:
    v9 = 0;
    if (a2 == 2)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  v9 = *(v6 + 16);
  if ((v7 & 0x400) != 0)
  {
    v9 += *v6;
  }

  if (a2 != 2)
  {
    goto LABEL_13;
  }

LABEL_26:
  v12 = a3[1];
  if (!v12)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v13 = *(v12 + 20);
  if ((~v13 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if (v13)
    {
      v11 = 0;
      if ((v13 & 2) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      if (*(v12 + 22) == 1)
      {
        v10 = *(v12 + 16);
        if (!v8)
        {
          return;
        }

        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v11 = sub_18193CB70(v12, 1);
    v12 = a3[1];
    if (v12)
    {
      LOWORD(v13) = *(v12 + 20);
      if ((v13 & 2) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

LABEL_36:
    sub_1819012D0(93690);
    v10 = 0;
    if (!v8)
    {
      return;
    }

    goto LABEL_49;
  }

  v11 = *(v12 + 8);
  if ((v13 & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  if ((v13 & 0x10) != 0)
  {
    v10 = *(v12 + 16);
    if ((v13 & 0x400) != 0)
    {
      v10 += *v12;
    }

    if (!v8)
    {
      return;
    }
  }

  else if (v13)
  {
    v10 = 0;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v10 = sub_18193CB44(v12, 1);
    if (!v8)
    {
      return;
    }
  }

LABEL_49:
  if (!v11)
  {
    return;
  }

  v14 = v9 / 2;
  if (a1)
  {
    v15 = *a1;
    if (*(*(*a1 + 24) + 136) <= v14)
    {
      *(a1 + 9) = 18;
      sub_1818900D0(v15, "string or blob too big", -1, 1u, 0);
      v16 = 0;
      LODWORD(v17) = 0;
LABEL_99:
      if (((v17 - v16) & 0x80000000) == 0)
      {

        sub_18190B23C(a1, v16, v17 - v16, 0, sqlite3_free);
        return;
      }

LABEL_104:
      if (v16)
      {
        v37 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
          --qword_1ED456A90;
          off_1ED452EB0(v16);
          v16 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_111;
          }

          v37 = &xmmword_1ED452F28;
        }

        (*v37)(v16);
      }

LABEL_111:
      if (a1)
      {
        *(a1 + 9) = 18;
        v38 = *a1;

        sub_1818900D0(v38, "string or blob too big", -1, 1u, 0);
      }

      return;
    }
  }

  else if (MEMORY[0x88] <= v14)
  {
    return;
  }

  v18 = sub_181902484(v14 + 1, 3621441365);
  v16 = v18;
  if (!v18)
  {
    sqlite3_result_error_nomem(a1);
    LODWORD(v17) = 0;
LABEL_98:
    if (!a1)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  LOBYTE(v19) = *v8;
  if (!*v8)
  {
    LODWORD(v17) = v18;
    if (!a1)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  v17 = v18;
LABEL_57:
  while (1)
  {
    v20 = v8 + 1;
    if ((byte_181A204C8[v19] & 8) == 0)
    {
      break;
    }

    v33 = *v20;
    if ((byte_181A204C8[v33] & 8) == 0)
    {
      goto LABEL_89;
    }

    *v17++ = ((((2 * v33) >> 7) & 0xF9) + v33) & 0xF | (16 * ((((2 * v19) >> 7) & 0xF9) + v19));
    v34 = v8[2];
    v8 += 2;
    LOBYTE(v19) = v34;
    if (!v34)
    {
      goto LABEL_98;
    }
  }

  v19 = v19;
  if (v19 >= 0xC0u)
  {
    v19 = byte_181A20D3A[v19 - 192];
    v21 = *v20;
    if ((*v20 & 0xC0) == 0x80)
    {
      do
      {
        v22 = *++v20;
        v19 = v21 & 0x3F | (v19 << 6);
        v21 = v22;
      }

      while ((v22 & 0xC0) == 0x80);
    }

    if (v19 < 0x80 || v19 >> 1 == 0x7FFF || v19 >> 11 == 27)
    {
      v19 = 65533;
    }
  }

  v8 = v20;
  v25 = v11;
  while (v25 < &v11[v10])
  {
    v29 = *v25++;
    v28 = v29;
    v30 = v29 - 192;
    if (v29 >= 0xC0)
    {
      v28 = byte_181A20D3A[v30];
      v31 = *v25;
      if ((*v25 & 0xC0) == 0x80)
      {
        do
        {
          v32 = *++v25;
          v28 = v31 & 0x3F | (v28 << 6);
          v31 = v32;
        }

        while ((v32 & 0xC0) == 0x80);
      }

      if (v28 < 0x80 || v28 >> 1 == 0x7FFF || v28 >> 11 == 27)
      {
        v28 = 65533;
      }
    }

    if (v28 == v19)
    {
      LOBYTE(v19) = *v8;
      if (*v8)
      {
        goto LABEL_57;
      }

      goto LABEL_98;
    }
  }

LABEL_89:
  v35 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_94;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
  --qword_1ED456A90;
  off_1ED452EB0(v16);
  v16 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v35 = &xmmword_1ED452F28;
LABEL_94:
    v36 = *v35;

    v36(v16);
  }
}

void sub_181990664(sqlite3_context *a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_11;
  }

  v7 = *(v6 + 20);
  if ((v7 & 2) == 0 || *(v6 + 22) != 1)
  {
    if ((v7 & 0x10) != 0)
    {
      v8 = *(v6 + 16);
      if ((*(v6 + 20) & 0x400) != 0)
      {
        v8 += *v6;
      }

      v9 = *a3;
      if (!*a3)
      {
        return;
      }

      goto LABEL_16;
    }

    if ((v7 & 1) == 0)
    {
      v8 = sub_18193CB44(v6, 1);
      v9 = *a3;
      if (!*a3)
      {
        return;
      }

      goto LABEL_16;
    }

LABEL_11:
    v8 = 0;
    v9 = *a3;
    if (!*a3)
    {
      return;
    }

    goto LABEL_16;
  }

  v8 = *(v6 + 16);
  v9 = *a3;
  if (!*a3)
  {
    return;
  }

LABEL_16:
  v10 = *(v9 + 20);
  if ((~v10 & 0x202) != 0 || *(v9 + 22) != 1)
  {
    if (v10)
    {
      return;
    }

    v11 = sub_18193CB70(v9, 1);
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *(v9 + 8);
    if (!v11)
    {
      return;
    }
  }

  sub_181994C1C(a1, a2 - 1, a3 + 1, v8, v11);
}

void sub_181990780(uint64_t *a1)
{
  __buf = 0;
  sqlite3_initialize();
  arc4random_buf(&__buf, 8uLL);
  v2 = __buf;
  if (__buf < 0)
  {
    v2 = -(__buf & 0x7FFFFFFFFFFFFFFFLL);
    __buf = v2;
  }

  if (a1)
  {
    v3 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v3, v2);
    }

    else
    {
      *v3 = v2;
      *(v3 + 20) = 4;
    }
  }
}

void sub_1819907FC(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92237);
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 20);
  if ((v5 & 0x24) != 0)
  {
    v6 = *v4;
    goto LABEL_6;
  }

  if ((v5 & 8) != 0)
  {
    v13 = *v4;
    if (*v4 >= -9.22337204e18)
    {
      if (v13 <= 9.22337204e18)
      {
        v6 = v13;
      }

      else
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v6 = 0x8000000000000000;
    }

    goto LABEL_6;
  }

  if ((v5 & 0x12) == 0 || !*(v4 + 8))
  {
    goto LABEL_5;
  }

  v6 = sub_18193CFCC(v4);
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (a1)
  {
    v8 = *a1;
    if (v7 > *(*(*a1 + 24) + 136))
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v8, "string or blob too big", -1, 1u, 0);
      return;
    }
  }

  else if (v7 > MEMORY[0x88])
  {
    return;
  }

  v9 = sub_181902484(v7, 3621441365);
  if (v9)
  {
    v10 = v9;
    sqlite3_initialize();
    arc4random_buf(v10, v7);
    if (a1)
    {

      sub_18190B23C(a1, v10, v7, 0, sqlite3_free);
      return;
    }

    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_33;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v11 = &xmmword_1ED452F28;
LABEL_33:
      v12 = *v11;

      v12(v10);
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_181990A48(uint64_t a1)
{
  if (a1)
  {
    sub_18190B23C(a1, "2025-06-12 13:14:41 f0ca7bba1c5e232e5d279fad6338121ab55af0c8c68c84cdfb18ba5114dcaapl", -1, 1u, 0);
  }
}

void sub_181990A68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92237);
    goto LABEL_5;
  }

  v5 = *(v4 + 20);
  if ((v5 & 0x24) != 0)
  {
    v6 = *v4;
    goto LABEL_6;
  }

  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x12) != 0 && *(v4 + 8))
    {
      LODWORD(v6) = sub_18193CFCC(v4);
      goto LABEL_6;
    }

LABEL_5:
    LODWORD(v6) = 0;
    goto LABEL_6;
  }

  v9 = *v4;
  if (*v4 >= -9.22337204e18)
  {
    if (v9 <= 9.22337204e18)
    {
      *&v6 = v9;
    }

    else
    {
      LODWORD(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

LABEL_6:
  v7 = a3[1];
  if (v7)
  {
    v8 = *(v7 + 20);
    if ((~v8 & 0x202) != 0 || *(v7 + 22) != 1)
    {
      if (v8)
      {
        v7 = 0;
      }

      else
      {
        v7 = sub_18193CB70(v7, 1);
      }
    }

    else
    {
      v7 = *(v7 + 8);
    }
  }

  sqlite3_log(SLODWORD(v6), "%s", v7);
}

void sub_181990B74(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    return;
  }

  v5 = *(v4 + 20);
  if ((~v5 & 0x202) != 0 || *(v4 + 22) != 1)
  {
    if (v5)
    {
      return;
    }

    v7 = a3;
    v8 = sub_18193CB70(v4, 1);
    a3 = v7;
    v6 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = *(v4 + 8);
    if (!v6)
    {
      return;
    }
  }

  v9 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
LABEL_18:
    v11 = 0;
    if (sqlite3_initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v10 = *(v9 + 20);
  if ((v10 & 2) != 0 && *(v9 + 22) == 1)
  {
    v11 = *(v9 + 16);
    if (!sqlite3_initialize())
    {
      goto LABEL_26;
    }

LABEL_23:

    sqlite3_result_error_nomem(a1);
    return;
  }

  if ((v10 & 0x10) != 0)
  {
    v11 = *(v9 + 16);
    if ((*(v9 + 20) & 0x400) != 0)
    {
      v11 += *v9;
    }

    if (sqlite3_initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v10)
  {
    goto LABEL_18;
  }

  v11 = sub_18193CB44(v9, 1);
  if (sqlite3_initialize())
  {
    goto LABEL_23;
  }

LABEL_26:
  v12 = sub_181902484(v11 + 1, 596797734);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  if (v11 < 1)
  {
    v14 = 0;
LABEL_102:
    v13[v14] = 0;

    sqlite3_result_text64(a1, v13, v14, sqlite3_free, 1u);
    return;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    while (1)
    {
      v16 = (v6 + v15);
      v17 = strchr(v16, 92);
      if (!v17)
      {
        memmove(&v13[v14], v16, v11 - v15);
        v14 += v11 - v15;
        goto LABEL_102;
      }

      v18 = v17 - v16;
      if (v17 - v16 >= 1)
      {
        memmove(&v13[v14], (v6 + v15), v18 & 0x7FFFFFFF);
        v14 += v18;
        v15 += v18;
      }

      v19 = (v6 + v15);
      v20 = v19[1];
      if (v20 != 92)
      {
        break;
      }

      v15 += 2;
      v13[v14++] = 92;
      if (v15 >= v11)
      {
        goto LABEL_102;
      }
    }

    if ((byte_181A204C8[v20] & 8) != 0)
    {
      break;
    }

    switch(v20)
    {
      case 'u':
        v56 = v19[2];
        if ((byte_181A204C8[v56] & 8) == 0)
        {
          goto LABEL_90;
        }

        v57 = v19[3];
        if ((byte_181A204C8[v57] & 8) == 0)
        {
          goto LABEL_90;
        }

        v58 = v19[4];
        if ((byte_181A204C8[v58] & 8) == 0)
        {
          goto LABEL_90;
        }

        v59 = v19[5];
        if ((byte_181A204C8[v59] & 8) == 0)
        {
          goto LABEL_90;
        }

        v60 = (((2 * v56) >> 7) & 9) + v56;
        v61 = ((((2 * v57) >> 7) & 0xF9) + v57) & 0xF | (16 * v60);
        v62 = (16 * (((((2 * v58) >> 7) & 0xF9) + v58) & 0xF)) | (v61 << 8);
        v63 = (16 * (((((2 * v58) >> 7) & 0xF9) + v58) & 0xF)) | ((((2 * v59) >> 7) & 0xF9) + v59) & 0xF;
        v64 = &v13[v14];
        if (v62 > 0x7F)
        {
          v65 = v63 & 0x3F | 0x80;
          if (v61 > 7u)
          {
            *v64 = v60 & 0xF | 0xE0;
            v64[1] = (v62 >> 6) & 0x3F | 0x80;
            v64[2] = v65;
            v33 = 3;
          }

          else
          {
            *v64 = (v62 >> 6) | 0xC0;
            v64[1] = v65;
            v33 = 2;
          }

          v15 += 6;
        }

        else
        {
          *v64 = v63;
          v33 = 1;
          v15 += 6;
        }

        break;
      case 'U':
        v42 = v19[2];
        if ((byte_181A204C8[v42] & 8) == 0)
        {
          goto LABEL_90;
        }

        v43 = v19[3];
        if ((byte_181A204C8[v43] & 8) == 0)
        {
          goto LABEL_90;
        }

        v44 = v19[4];
        if ((byte_181A204C8[v44] & 8) == 0)
        {
          goto LABEL_90;
        }

        v45 = v19[5];
        if ((byte_181A204C8[v45] & 8) == 0)
        {
          goto LABEL_90;
        }

        v46 = v19[6];
        if ((byte_181A204C8[v46] & 8) == 0)
        {
          goto LABEL_90;
        }

        v47 = v19[7];
        if ((byte_181A204C8[v47] & 8) == 0)
        {
          goto LABEL_90;
        }

        v48 = v19[8];
        if ((byte_181A204C8[v48] & 8) == 0)
        {
          goto LABEL_90;
        }

        v49 = v19[9];
        if ((byte_181A204C8[v49] & 8) == 0)
        {
          goto LABEL_90;
        }

        v50 = (16 * (((((2 * v44) >> 7) & 0xF9) + v44) & 0xF)) | ((((((2 * v43) >> 7) & 0xF9) + v43) & 0xF | (16 * ((((2 * v42) >> 7) & 0xF9) + v42))) << 8) | ((((2 * v45) >> 7) & 0xF9) + v45) & 0xF;
        v51 = (((2 * v46) >> 7) & 9) + v46;
        v52 = ((((2 * v47) >> 7) & 0xF9) + v47) & 0xF | (16 * ((((2 * v46) >> 7) & 9) + v46)) | (v50 << 8);
        v53 = (16 * (((((2 * v48) >> 7) & 0xF9) + v48) & 0xF)) | (v52 << 8);
        v54 = (16 * (((((2 * v48) >> 7) & 0xF9) + v48) & 0xF)) | ((((2 * v49) >> 7) & 0xF9) + v49) & 0xF;
        v55 = &v13[v14];
        if (v53 > 0x7F)
        {
          if (v52 > 7)
          {
            if (v50)
            {
              *v55 = (v50 >> 2) & 7 | 0xF0;
              v55[1] = (v52 >> 4) & 0x3F | 0x80;
              v55[2] = (v53 >> 6) & 0x3F | 0x80;
              v55[3] = v54 & 0x3F | 0x80;
              v33 = 4;
            }

            else
            {
              *v55 = v51 & 0xF | 0xE0;
              v55[1] = (v53 >> 6) & 0x3F | 0x80;
              v55[2] = v54 & 0x3F | 0x80;
              v33 = 3;
            }
          }

          else
          {
            *v55 = (v53 >> 6) | 0xC0;
            v55[1] = v54 & 0x3F | 0x80;
            v33 = 2;
          }
        }

        else
        {
          *v55 = v54;
          v33 = 1;
        }

        v15 += 10;
        break;
      case '+':
        v21 = v19[2];
        if ((byte_181A204C8[v21] & 8) == 0)
        {
          goto LABEL_90;
        }

        v22 = v19[3];
        if ((byte_181A204C8[v22] & 8) == 0)
        {
          goto LABEL_90;
        }

        v23 = v19[4];
        if ((byte_181A204C8[v23] & 8) == 0)
        {
          goto LABEL_90;
        }

        v24 = v19[5];
        if ((byte_181A204C8[v24] & 8) == 0)
        {
          goto LABEL_90;
        }

        v25 = v19[6];
        if ((byte_181A204C8[v25] & 8) == 0)
        {
          goto LABEL_90;
        }

        v26 = v19[7];
        if ((byte_181A204C8[v26] & 8) == 0)
        {
          goto LABEL_90;
        }

        v27 = ((((2 * v22) >> 7) & 0xF9) + v22) & 0xF | (16 * ((((2 * v21) >> 7) & 9) + v21));
        v28 = (((2 * v23) >> 7) & 9) + v23;
        v29 = ((((2 * v24) >> 7) & 0xF9) + v24) & 0xF | (16 * ((((2 * v23) >> 7) & 9) + v23)) | (v27 << 8);
        v30 = (16 * (((((2 * v25) >> 7) & 0xF9) + v25) & 0xF)) | (v29 << 8);
        v31 = (16 * (((((2 * v25) >> 7) & 0xF9) + v25) & 0xF)) | ((((2 * v26) >> 7) & 0xF9) + v26) & 0xF;
        v32 = &v13[v14];
        if (v30 > 0x7F)
        {
          if (v29 > 7)
          {
            v66 = (v30 >> 6) & 0x3F | 0x80;
            v67 = v31 & 0x3F | 0x80;
            if (v27)
            {
              *v32 = (v27 >> 2) & 7 | 0xF0;
              v32[1] = (v29 >> 4) & 0x3F | 0x80;
              v32[2] = v66;
              v32[3] = v67;
              v33 = 4;
            }

            else
            {
              *v32 = v28 & 0xF | 0xE0;
              v32[1] = v66;
              v32[2] = v67;
              v33 = 3;
            }

            v15 += 8;
          }

          else
          {
            *v32 = (v30 >> 6) | 0xC0;
            v32[1] = v31 & 0x3F | 0x80;
            v33 = 2;
            v15 += 8;
          }
        }

        else
        {
          *v32 = v31;
          v33 = 1;
          v15 += 8;
        }

        break;
      default:
        goto LABEL_90;
    }

LABEL_87:
    v14 += v33;
    if (v15 >= v11)
    {
      goto LABEL_102;
    }
  }

  v34 = v19[2];
  if ((byte_181A204C8[v34] & 8) != 0)
  {
    v35 = v19[3];
    if ((byte_181A204C8[v35] & 8) != 0)
    {
      v36 = v19[4];
      if ((byte_181A204C8[v36] & 8) != 0)
      {
        v37 = (((2 * v20) >> 7) & 9) + v20;
        v38 = ((((2 * v34) >> 7) & 0xF9) + v34) & 0xF | (16 * v37);
        v39 = (16 * (((((2 * v35) >> 7) & 0xF9) + v35) & 0xF)) | (v38 << 8);
        v40 = v39 & 0xF0 | ((((2 * v36) >> 7) & 0xF9) + v36) & 0xF;
        v41 = &v13[v14];
        if (v39 > 0x7F)
        {
          if (v38 > 7u)
          {
            *v41 = v37 & 0xF | 0xE0;
            v41[1] = (v39 >> 6) & 0x3F | 0x80;
            v41[2] = v40 & 0x3F | 0x80;
            v33 = 3;
          }

          else
          {
            *v41 = (v39 >> 6) | 0xC0;
            v41[1] = v40 & 0x3F | 0x80;
            v33 = 2;
          }

          v15 += 5;
        }

        else
        {
          *v41 = v40;
          v33 = 1;
          v15 += 5;
        }

        goto LABEL_87;
      }
    }
  }

LABEL_90:
  v68 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_95;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
  --qword_1ED456A90;
  off_1ED452EB0(v13);
  v13 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v68 = &xmmword_1ED452F28;
LABEL_95:
    (*v68)(v13);
  }

  if (a1)
  {
    *(a1 + 9) = 1;
    v69 = *a1;

    sub_1818900D0(v69, "invalid Unicode escape", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_181991424(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v29 = 0u;
  v30 = 0u;
  if (!a1)
  {
    DWORD1(v30) = MEMORY[0x88];
    v6 = "%Q";
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_1819012D0(99877);
    goto LABEL_14;
  }

  v4 = *(a1 + 1);
  v5 = *(*(*a1 + 24) + 136);
  *&v29 = *(*a1 + 24);
  DWORD1(v30) = v5;
  if (*(v4 + 8))
  {
    v6 = "%#Q";
  }

  else
  {
    v6 = "%Q";
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

LABEL_6:
  v8 = *(v7 + 20);
  v9 = byte_181A203AA[v8 & 0x3F];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if ((~v8 & 0x202) != 0 || *(v7 + 22) != 1)
      {
        if (v8)
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_18193CB70(v7, 1);
        }
      }

      else
      {
        v14 = *(v7 + 8);
      }

      sqlite3_str_appendf(&v29, v6, v14);
      goto LABEL_53;
    }

    if (v9 != 4)
    {
      goto LABEL_14;
    }

    v11 = sqlite3_value_blob(v7);
    v12 = *(v7 + 20);
    if ((v12 & 2) != 0 && *(v7 + 22) == 1)
    {
      v13 = *(v7 + 16);
    }

    else if ((v12 & 0x10) != 0)
    {
      v13 = *(v7 + 16);
      if ((*(v7 + 20) & 0x400) != 0)
      {
        v13 += *v7;
      }
    }

    else if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_18193CB44(v7, 1);
    }

    v16 = 2 * v13;
    sub_181906424(&v29, v16 + 4);
    if (!BYTE12(v30))
    {
      v17 = *(&v29 + 1);
      if (v13 >= 1)
      {
        v18 = v13;
        v19 = (*(&v29 + 1) + 3);
        do
        {
          *(v19 - 1) = a0123456789abcd_2[*v11 >> 4];
          v20 = *v11++;
          *v19 = a0123456789abcd_2[v20 & 0xF];
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      v17[v16 / 2 + 1] = 39;
      *v17 = 10072;
      DWORD2(v30) = v16 + 3;
    }
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v31 = 0.0;
        if ((v8 & 8) != 0)
        {
          v10 = *v7;
        }

        else if ((v8 & 0x24) != 0)
        {
          v10 = *v7;
        }

        else if ((v8 & 0x12) != 0)
        {
          v10 = sub_18193CF90(v7);
        }

        else
        {
          v10 = 0.0;
        }

        sqlite3_str_appendf(&v29, "%!0.15g", *&v10);
        if (DWORD2(v30))
        {
          *(*(&v29 + 1) + DWORD2(v30)) = 0;
          v15 = *(&v29 + 1);
          if (*(&v29 + 1))
          {
            sub_1818E6334(*(&v29 + 1), &v31, SDWORD2(v30), 1);
            if (v10 != v31)
            {
              if ((BYTE13(v30) & 4) != 0)
              {
                sub_181929C84(v29, v15);
                BYTE13(v30) &= ~4u;
              }

              LODWORD(v30) = 0;
              DWORD2(v30) = 0;
              *(&v29 + 1) = 0;
              sqlite3_str_appendf(&v29, "%!0.20e", *&v10);
            }
          }
        }

        goto LABEL_53;
      }

LABEL_14:
      sub_181906814(&v29, "NULL", 4u);
      goto LABEL_53;
    }

    if ((v8 & 0x24) == 0 && (v8 & 8) == 0 && (v8 & 0x12) != 0 && *(v7 + 8))
    {
      sub_18193CFCC(v7);
    }

    sqlite3_str_appendf(&v29, "%lld");
  }

LABEL_53:
  if (!*(&v29 + 1) || (*(*(&v29 + 1) + DWORD2(v30)) = 0, !DWORD1(v30)) || (BYTE13(v30) & 4) != 0)
  {
    v21 = *(&v29 + 1);
    if (!a1)
    {
      goto LABEL_57;
    }

LABEL_63:
    sub_18190B23C(a1, v21, SDWORD2(v30), 1u, sub_181916CE4);
    v24 = BYTE12(v30);
    if (!BYTE12(v30))
    {
      return;
    }

    v25 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v25);
      v24 = BYTE12(v30);
      v26 = *(*a1 + 20);
      if (BYTE12(v30))
      {
        v27 = BYTE12(v30);
      }

      else
      {
        v27 = -1;
      }

      a1[9] = v27;
      if ((v26 & 1) == 0)
      {
        return;
      }

      if (v24 != 100)
      {
        goto LABEL_70;
      }
    }

    else
    {
      *(v25 + 20) = 1;
      a1[9] = v24;
      if (v24 != 100)
      {
LABEL_70:
        if (v24 == 101)
        {
          v28 = "no more rows available";
        }

        else if (v24 > 0x1C || ((0x1410004uLL >> v24) & 1) != 0)
        {
          v28 = "unknown error";
        }

        else
        {
          v28 = off_1E6A27DD8[v24];
        }

        goto LABEL_78;
      }
    }

    v28 = "another row available";
LABEL_78:
    sub_18190B23C(a1, v28, -1, 1u, 0);
    return;
  }

  v21 = sub_18192A12C(&v29);
  if (a1)
  {
    goto LABEL_63;
  }

LABEL_57:
  if (v21[103])
  {
    v22 = *(v21 + 55);
    if (!v22)
    {
      v21[103] = 0;
      *(v21 + 106) = 0;
      v23 = *(v21 + 108) - 1;
      *(v21 + 108) = v23;
      if (!v23)
      {
        LOWORD(v22) = *(v21 + 219);
      }

      *(v21 + 218) = v22;
    }
  }
}