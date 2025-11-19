uint64_t sub_1819D630C(uint64_t a1)
{
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  v4 = *(a1 + 8);
  if (v3)
  {
    v5 = *v2;
    if (*v2)
    {
      for (i = *(v4 + 72); i; i = *(i + 11))
      {
        v8 = *i;
        if (*i)
        {
          for (j = *v2; ; ++j)
          {
            if (*j == *v8)
            {
              if (!*j)
              {
                goto LABEL_15;
              }
            }

            else if (byte_181A20298[*j] != byte_181A20298[*v8])
            {
              break;
            }

            ++v8;
          }
        }
      }

      goto LABEL_7;
    }
  }

  i = *(v4 + 80);
  if (!i)
  {
    v5 = *v2;
LABEL_7:
    sub_1819D75B8(a1, "no such tokenizer: %s", v5);
    result = 1;
LABEL_29:
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    return result;
  }

LABEL_15:
  if (*(i + 4))
  {
    v10 = *(i + 7);
    *(a1 + 136) = i + 48;
  }

  else
  {
    v10 = *(i + 3);
    *(a1 + 144) = i + 24;
  }

  if (v2)
  {
    v11 = v2 + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v3)
  {
    v12 = (v3 - 1);
  }

  else
  {
    v12 = 0;
  }

  result = (v10)(*(i + 1), v11, v12, a1 + 128);
  if (result == 7)
  {
    goto LABEL_29;
  }

  if (result)
  {
    v13 = result;
    sub_1819D75B8(a1, "error in tokenizer constructor");
    result = v13;
    goto LABEL_29;
  }

  if (*(i + 4))
  {
    return 0;
  }

  if (*(i + 3) == sub_1819D769C && (v14 = *(a1 + 128), !v14[1]))
  {
    if (*v14)
    {
      v15 = 65;
    }

    else
    {
      v15 = 66;
    }
  }

  else
  {
    v15 = 0;
  }

  result = 0;
  *(a1 + 164) = v15;
  return result;
}

uint64_t sub_1819D6494(uint64_t a1, int a2)
{
  pStmt = 0;
  v18 = 0;
  *(a1 + 196) = xmmword_181A201E0;
  *(a1 + 212) = 0x100000;
  *(a1 + 236) = 10;
  v4 = sub_1819D6A30(&v18, "SELECT k, v FROM %Q.'%q_config'", *(a1 + 16), *(a1 + 24));
  if (!v4)
  {
    result = v18;
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v6 = v4;
  v7 = sub_1818954B4(*a1, v4, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v5);
  v8 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
  --qword_1ED456A90;
  off_1ED452EB0(v6);
  v6 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v8 = &xmmword_1ED452F28;
LABEL_7:
    (*v8)(v6);
  }

  result = v7;
  if (v7)
  {
LABEL_9:
    *(a1 + 188) = 0;
    return result;
  }

LABEL_11:
  if (sqlite3_step(pStmt) == 100)
  {
    LODWORD(v10) = 0;
    while (1)
    {
      v11 = sqlite3_column_text(pStmt, 0);
      v12 = sqlite3_column_value(pStmt, 1);
      if (!v11)
      {
LABEL_13:
        sub_1819D950C(a1, v11, v12, &v17);
        goto LABEL_14;
      }

      v13 = v11;
      for (i = "version"; *v13 != *i; ++i)
      {
        if (byte_181A20298[*v13] != byte_181A20298[*i])
        {
          goto LABEL_13;
        }

LABEL_18:
        ++v13;
      }

      if (*v13)
      {
        goto LABEL_18;
      }

      if (v12)
      {
        v15 = *(v12 + 10);
        if ((v15 & 0x24) != 0)
        {
          v10 = *v12;
        }

        else if ((v15 & 8) != 0)
        {
          v16 = *v12;
          if (*v12 >= -9.22337204e18)
          {
            if (v16 <= 9.22337204e18)
            {
              v10 = v16;
            }

            else
            {
              LODWORD(v10) = -1;
            }
          }

          else
          {
            LODWORD(v10) = 0;
          }
        }

        else if ((v15 & 0x12) != 0 && *(v12 + 1))
        {
          LODWORD(v10) = sub_18193CFCC(v12);
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      else
      {
        sub_1819012D0(92237);
        LODWORD(v10) = 0;
      }

LABEL_14:
      if (sqlite3_step(pStmt) != 100)
      {
        goto LABEL_36;
      }
    }
  }

  LODWORD(v10) = 0;
LABEL_36:
  result = sqlite3_finalize(pStmt);
  if (result || (v10 - 6) > 0xFFFFFFFD)
  {
    *(a1 + 188) = v10;
    if (!result)
    {
      *(a1 + 192) = a2;
    }
  }

  else
  {
    sub_1819D75B8(a1, "invalid fts5 file format (found %d, expected %d or %d) - run 'rebuild'", v10, 4, 5);
    return 1;
  }

  return result;
}

uint64_t sub_1819D6770(_DWORD *a1, char *__s, unsigned int a3)
{
  if (*a1)
  {
    return 0;
  }

  v4 = a3;
  if ((a3 & 0x80000000) != 0)
  {
    v4 = strlen(__s);
    v7 = sqlite3_initialize();
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = sqlite3_initialize();
  }

  if (!v7)
  {
    v8 = sub_181902484(v4 + 1, 0x100004077774924);
    if (v8)
    {
      v9 = v4;
      v10 = v8;
      memcpy(v8, __s, v9);
      result = v10;
      *(v10 + v9) = 0;
      return result;
    }
  }

LABEL_9:
  result = 0;
  *a1 = 7;
  return result;
}

char *sub_1819D6824(_DWORD *a1, char *__s, unsigned __int8 **a3, _DWORD *a4)
{
  v6 = __s;
  v8 = strlen(__s);
  if (!sqlite3_initialize())
  {
    v10 = sub_181902484(v8 + 1, 1057733548);
    *a4 = 0;
    *a3 = 0;
    if (!v10)
    {
      goto LABEL_3;
    }

    v11 = v10;
    memcpy(v10, v6, v8 + 1);
    v12 = *v11;
    if ((v12 - 34) > 0x3E || ((1 << (v12 - 34)) & 0x4200000000000021) == 0)
    {
      for (i = 0; ; ++i)
      {
        v20 = *v6;
        if ((v20 & 0x8000000000000000) == 0 && !byte_181A25753[v20])
        {
          break;
        }

        ++v6;
      }

      if (i)
      {
        v11[i] = 0;
        *a3 = v11;
        return v6;
      }
    }

    else
    {
      if (v12 == 91)
      {
        v14 = 93;
      }

      else
      {
        v14 = *v11;
      }

      v15 = v11[1];
      v16 = 0;
      if (v11[1])
      {
        v17 = 1;
        do
        {
          v18 = v17 + 1;
          if (v15 == v14)
          {
            if (v11[v18] != v14)
            {
              goto LABEL_20;
            }

            LODWORD(v18) = v17 + 2;
            LOBYTE(v15) = v14;
          }

          v11[v16++] = v15;
          v15 = v11[v18];
          v17 = v18;
        }

        while (v11[v18]);
        v18 = v18;
LABEL_20:
        v16 = v16;
      }

      else
      {
        v18 = 1;
      }

      v11[v16] = 0;
      *a4 = 1;
      if (v6)
      {
        v6 += v18;
        *a3 = v11;
        return v6;
      }
    }

    v21 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return 0;
      }

      v21 = &xmmword_1ED452F28;
    }

    (*v21)(v11);
    return 0;
  }

  *a4 = 0;
  *a3 = 0;
LABEL_3:
  v6 = 0;
  *a1 = 7;
  return v6;
}

char *sub_1819D6A30(_DWORD *a1, char *a2, ...)
{
  va_start(va, a2);
  if (*a1)
  {
    return 0;
  }

  result = sqlite3_vmprintf(a2, va);
  if (!result)
  {
    *a1 = 7;
  }

  return result;
}

int *sub_1819D6A90(int *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 16))
  {
    v2 = *(result + 18);
    if (v2)
    {
      v3 = (v2 + 8);
    }

    else
    {
      v3 = (*(result + 17) + 16);
    }

    (*v3)();
  }

  v4 = *(v1 + 19);
  if (v4)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_13:
      (*v5)(v4);
      goto LABEL_14;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_13;
    }
  }

LABEL_14:
  v6 = *(v1 + 2);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_20;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v6);
  --qword_1ED456A90;
  off_1ED452EB0(v6);
  v6 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v7 = &xmmword_1ED452F28;
LABEL_20:
    (*v7)(v6);
  }

LABEL_21:
  v8 = *(v1 + 3);
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_27;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v8);
  --qword_1ED456A90;
  off_1ED452EB0(v8);
  v8 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v9 = &xmmword_1ED452F28;
LABEL_27:
    (*v9)(v8);
  }

LABEL_28:
  if (v1[8] >= 1)
  {
    for (i = 0; i < v1[8]; ++i)
    {
      v11 = *(*(v1 + 5) + 8 * i);
      if (v11)
      {
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
          if (!xmmword_1ED456AF0)
          {
            continue;
          }

          v12 = &xmmword_1ED452F28;
        }

        (*v12)(v11);
      }
    }
  }

  v13 = *(v1 + 5);
  if (v13)
  {
    v14 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_44:
      (*v14)(v13);
      goto LABEL_45;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v13);
    --qword_1ED456A90;
    off_1ED452EB0(v13);
    v13 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v14 = &xmmword_1ED452F28;
      goto LABEL_44;
    }
  }

LABEL_45:
  v15 = *(v1 + 8);
  if (!v15)
  {
    goto LABEL_52;
  }

  v16 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_51;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v15);
  --qword_1ED456A90;
  off_1ED452EB0(v15);
  v15 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v16 = &xmmword_1ED452F28;
LABEL_51:
    (*v16)(v15);
  }

LABEL_52:
  v17 = *(v1 + 27);
  if (!v17)
  {
    goto LABEL_59;
  }

  v18 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_58;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v17);
  --qword_1ED456A90;
  off_1ED452EB0(v17);
  v17 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v18 = &xmmword_1ED452F28;
LABEL_58:
    (*v18)(v17);
  }

LABEL_59:
  v19 = *(v1 + 28);
  if (!v19)
  {
    goto LABEL_66;
  }

  v20 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_65;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v19);
  --qword_1ED456A90;
  off_1ED452EB0(v19);
  v19 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v20 = &xmmword_1ED452F28;
LABEL_65:
    (*v20)(v19);
  }

LABEL_66:
  v21 = *(v1 + 11);
  if (!v21)
  {
    goto LABEL_73;
  }

  v22 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_72;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v21);
  --qword_1ED456A90;
  off_1ED452EB0(v21);
  v21 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v22 = &xmmword_1ED452F28;
LABEL_72:
    (*v22)(v21);
  }

LABEL_73:
  v23 = *(v1 + 12);
  if (!v23)
  {
    goto LABEL_80;
  }

  v24 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_79;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v23);
  --qword_1ED456A90;
  off_1ED452EB0(v23);
  v23 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v24 = &xmmword_1ED452F28;
LABEL_79:
    (*v24)(v23);
  }

LABEL_80:
  v25 = *(v1 + 15);
  if (!v25)
  {
    goto LABEL_87;
  }

  v26 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_86;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v25);
  --qword_1ED456A90;
  off_1ED452EB0(v25);
  v25 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v26 = &xmmword_1ED452F28;
LABEL_86:
    (*v26)(v25);
  }

LABEL_87:
  v27 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_92:
    v28 = *v27;

    return v28(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v27 = &xmmword_1ED452F28;
    goto LABEL_92;
  }

  return result;
}

unsigned __int8 *sub_1819D7094(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x4D)
  {
    if (*a1 > 0x6Du)
    {
      if (v1 == 120)
      {
LABEL_24:
        if (a1[1] == 39)
        {
          v11 = a1 + 3;
          for (i = 2; ; ++i)
          {
            if ((*(v11 - 1) - 48) >= 0xAu)
            {
              v13 = *(v11 - 1) - 39;
              if (v13 > 0x3F)
              {
                return 0;
              }

              if (((1 << v13) & 0xFC000000FC000000) == 0)
              {
                break;
              }
            }

            ++v11;
          }

          if (*(v11 - 1) == 39)
          {
            if (i)
            {
              return 0;
            }

            else
            {
              return v11;
            }
          }
        }

        return 0;
      }

      v2 = a1;
      if (v1 != 110)
      {
        do
        {
LABEL_10:
          v4 = *v2++;
          v3 = v4;
        }

        while ((v4 - 58) > 0xFFFFFFF5);
        v5 = v2 - 1;
        if (v3 == 46 && *v2 - 58 >= 0xFFFFFFF6)
        {
          v5 = v2;
          do
          {
            v6 = *++v5;
          }

          while ((v6 - 58) > 0xFFFFFFF5);
        }

        if (v5 == a1)
        {
          return 0;
        }

        else
        {
          return v5;
        }
      }
    }

    else if (v1 != 78)
    {
      v2 = a1;
      if (v1 != 88)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

    v8 = a1 + 4;
    if ((a1[1] & 0xDF) == 0x55)
    {
      if ((a1[2] & 0xDF) == 0x4C)
      {
        v10 = a1[3];
        v9 = a1 + 3;
        if ((v10 & 0xFFFFFFDF) == 0x4C)
        {
          return v8;
        }

        v16 = 108;
      }

      else
      {
        v16 = 108;
        v9 = a1 + 2;
      }
    }

    else
    {
      v16 = 117;
      v9 = a1 + 1;
    }

    if (v16 == byte_181A20298[*v9])
    {
      return v8;
    }

    return 0;
  }

  if (v1 != 39)
  {
    if (v1 == 43 || (v2 = a1, v1 == 45))
    {
      v2 = a1 + 1;
    }

    goto LABEL_10;
  }

  result = a1 + 1;
  while (1)
  {
    if (*result == 39)
    {
      v15 = *++result;
      if (v15 != 39)
      {
        break;
      }
    }

    if (!*++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1819D726C(_BYTE **a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);
  v7 = *a1;
  if (*a1)
  {
    v8 = v6;
    v9 = 0;
    v10 = v6 + 1;
    v11 = -1;
    while (1)
    {
      if (v8 < 0)
      {
        sub_1819012D0(37608);
      }

      else
      {
        if (!__s)
        {
          goto LABEL_3;
        }

        if (v8)
        {
          v12 = v10;
          v13 = __s;
          while (1)
          {
            v14 = *v7;
            if (!*v7)
            {
              break;
            }

            LODWORD(v14) = byte_181A20298[v14];
            v15 = byte_181A20298[*v13];
            if (v14 != v15)
            {
              goto LABEL_16;
            }

            ++v7;
            ++v13;
            if (--v12 <= 1)
            {
              goto LABEL_13;
            }
          }

          v15 = byte_181A20298[*v13];
LABEL_16:
          if (v14 != v15)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_13:
      if ((v11 & 0x80000000) == 0)
      {
        return 1;
      }

      v11 = a1[2 * v9 + 1];
LABEL_3:
      ++v9;
      v7 = a1[2 * v9];
      if (!v7)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = -1;
LABEL_19:
  *a3 = v11;
  return v11 >> 31;
}

char *sub_1819D7370(char *result, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if (*result)
  {
    return result;
  }

  v4 = result;
  result = sqlite3_vmprintf(a3, va);
  if (!result)
  {
    *v4 = 7;
    return result;
  }

  v5 = result;
  v6 = strlen(result);
  v7 = (v6 + 1);
  if (v6 != -1)
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 12);
    v10 = (v8 + v7);
    if (v10 <= v9)
    {
      v14 = *a2;
LABEL_14:
      memcpy((v14 + v8), v5, v7);
      *(a2 + 8) += v7;
      goto LABEL_15;
    }

    if (v9)
    {
      LODWORD(v11) = *(a2 + 12);
    }

    else
    {
      LODWORD(v11) = 64;
    }

    v11 = v11;
    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v10);
    v13 = *a2;
    if (!sqlite3_initialize())
    {
      v14 = sub_18190287C(v13, v12, 688041480);
      if (v14)
      {
        *(a2 + 12) = v12;
        *a2 = v14;
        v8 = *(a2 + 8);
        goto LABEL_14;
      }
    }

    *v4 = 7;
  }

LABEL_15:
  --*(a2 + 8);
  v15 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v15)(v5);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
  --qword_1ED456A90;
  result = off_1ED452EB0(v5);
  v5 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v15 = &xmmword_1ED452F28;
    return (*v15)(v5);
  }

  return result;
}

uint64_t sub_1819D750C(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  LODWORD(v3) = *(a2 + 12);
  if (v3 >= a3)
  {
    return 0;
  }

  if (!v3)
  {
    LODWORD(v3) = 64;
  }

  v3 = v3;
  do
  {
    v5 = v3;
    v3 *= 2;
  }

  while (v5 < a3);
  v7 = *a2;
  if (sqlite3_initialize() || (v9 = sub_18190287C(v7, v5, 688041480)) == 0)
  {
    *a1 = 7;
    return 1;
  }

  else
  {
    v10 = v9;
    result = 0;
    *(a2 + 12) = v5;
    *a2 = v10;
  }

  return result;
}

char *sub_1819D75B8(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  result = sqlite3_vmprintf(a2, va);
  v4 = *(a1 + 248);
  if (v4)
  {
    *v4 = result;
    return result;
  }

  if (result)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      return (*v5)();
    }

    if (xmmword_1ED456AF0)
    {
      v6 = result;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      result = v6;
    }

    v7 = result;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(result);
    --qword_1ED456A90;
    off_1ED452EB0(v7);
    result = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      return (*v5)();
    }
  }

  return result;
}

uint64_t sub_1819D769C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    goto LABEL_42;
  }

  if (!sqlite3_initialize())
  {
    v7 = sub_181902484(8, 0x100004000313F17);
    if (!v7)
    {
      v8 = 7;
      goto LABEL_44;
    }

    *v7 = 1;
    if (a3 < 1)
    {
      goto LABEL_34;
    }

    v9 = 0;
    v10 = 0;
    v11 = 1;
LABEL_7:
    v12 = a2 + 8 * v10;
    v13 = *v12;
    if (*v12)
    {
      v14 = *(v12 + 8);
      v15 = v13;
      for (i = "case_sensitive"; ; ++i)
      {
        if (*v15 == *i)
        {
          if (!*v15)
          {
            v18 = *v14;
            if ((v18 & 0xFE) == 0x30 && !v14[1])
            {
              v11 = v18 == 48;
              *v7 = v11;
              goto LABEL_25;
            }

            break;
          }
        }

        else if (byte_181A20298[*v15] != byte_181A20298[*i])
        {
          for (j = "remove_diacritics"; ; ++j)
          {
            if (*v13 == *j)
            {
              if (!*v13)
              {
                v19 = *v14;
                if ((v19 - 48) > 2 || v14[1])
                {
                  goto LABEL_28;
                }

                v9 = 2 * (v19 != 48);
                *(v7 + 4) = v9;
LABEL_25:
                v10 += 2;
                if (v10 >= a3)
                {
                  v20 = 1;
                  goto LABEL_29;
                }

                goto LABEL_7;
              }
            }

            else if (byte_181A20298[*v13] != byte_181A20298[*j])
            {
              goto LABEL_28;
            }

            ++v13;
          }
        }

        ++v15;
      }
    }

LABEL_28:
    v20 = 0;
LABEL_29:
    if (v9)
    {
      if (v11)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        goto LABEL_34;
      }
    }

    else if (v20)
    {
LABEL_34:
      v8 = 0;
      goto LABEL_44;
    }

    v22 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        v23 = v7;
        xmmword_1ED452F18(xmmword_1ED456AF0);
        v7 = v23;
      }

      v24 = v7;
      qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
      --qword_1ED456A90;
      off_1ED452EB0(v24);
      v7 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_43;
      }

      v22 = &xmmword_1ED452F28;
    }

    (*v22)();
LABEL_42:
    v7 = 0;
LABEL_43:
    v8 = 1;
    goto LABEL_44;
  }

  v7 = 0;
  v8 = 7;
LABEL_44:
  *a4 = v7;
  return v8;
}

uint64_t sub_1819D78E4(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    v2 = result;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    result = v2;
  }

  v3 = result;
  qword_1ED456A48 -= xmmword_1ED452EC0(result);
  --qword_1ED456A90;
  off_1ED452EB0(v3);
  result = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v1 = &xmmword_1ED452F28;
LABEL_7:
    v4 = *v1;

    return v4();
  }

  return result;
}

uint64_t sub_1819D79B0(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 160);
  if (v2)
  {
    if ((*v2)-- > 1)
    {
      goto LABEL_21;
    }

    if (v2[7] < 1)
    {
LABEL_15:
      v8 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
        --qword_1ED456A90;
        off_1ED452EB0(v2);
        v2 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_21;
        }

        v8 = &xmmword_1ED452F28;
      }

      (*v8)(v2);
LABEL_21:
      *(v1 + 160) = 0;
      goto LABEL_22;
    }

    v4 = 0;
    v5 = (v2 + 10);
    while (1)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
          --qword_1ED456A90;
          off_1ED452EB0(v6);
          v6 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_8;
          }

          v7 = &xmmword_1ED452F28;
        }

        (*v7)(v6);
      }

LABEL_8:
      ++v4;
      v5 += 2;
      if (v4 >= v2[7])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_22:
  sqlite3_finalize(*(v1 + 80));
  sqlite3_finalize(*(v1 + 88));
  sqlite3_finalize(*(v1 + 96));
  sqlite3_finalize(*(v1 + 104));
  sqlite3_finalize(*(v1 + 112));
  sqlite3_finalize(*(v1 + 120));
  sqlite3_finalize(*(v1 + 144));
  sqlite3_finalize(*(v1 + 136));
  v9 = *(v1 + 24);
  if (!v9)
  {
    goto LABEL_36;
  }

  sub_1819D8C28(*(v1 + 24));
  v10 = *(v9 + 32);
  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_29:
      (*v11)(v10);
      goto LABEL_30;
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
      goto LABEL_29;
    }
  }

LABEL_30:
  v12 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_35:
    (*v12)(v9);
    goto LABEL_36;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
  --qword_1ED456A90;
  off_1ED452EB0(v9);
  v9 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v12 = &xmmword_1ED452F28;
    goto LABEL_35;
  }

LABEL_36:
  v13 = *(v1 + 8);
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_42;
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
    v14 = &xmmword_1ED452F28;
LABEL_42:
    (*v14)(v13);
  }

LABEL_43:
  v15 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_48:
    v16 = *v15;

    return v16(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v15 = &xmmword_1ED452F28;
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1819D7DA4(sqlite3 *a1, char **a2, char *a3, ...)
{
  va_start(va, a3);
  v5 = sqlite3_vmprintf(a3, va);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  v7 = sqlite3_exec(a1, v5, 0, 0, a2);
  v8 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
  --qword_1ED456A90;
  off_1ED452EB0(v6);
  v6 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v8 = &xmmword_1ED452F28;
LABEL_7:
    (*v8)(v6);
  }

  return v7;
}

unsigned __int8 *sub_1819D7E9C(unsigned __int8 *result, uint64_t a2, char *a3, unsigned int a4)
{
  if (*(result + 15))
  {
    return result;
  }

  v7 = result;
  v8 = (result + 80);
  v9 = *(result + 10);
  if (!v9)
  {
    result = sqlite3_mprintf("REPLACE INTO '%q'.'%q_data'(id, block) VALUES(?,?)", *(*result + 16), *(*result + 24));
    v12 = result;
    if (!*(v7 + 15))
    {
      if (result)
      {
        result = sub_1818954B4(**v7, result, 0xFFFFFFFFLL, 133, 0, v8, 0, v11);
        if (result == 1)
        {
          v13 = 11;
        }

        else
        {
          v13 = result;
        }
      }

      else
      {
        v13 = 7;
      }

      *(v7 + 15) = v13;
    }

    if (!v12)
    {
      goto LABEL_36;
    }

    v22 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
      --qword_1ED456A90;
      result = off_1ED452EB0(v12);
      v12 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_36;
      }

      v22 = &xmmword_1ED452F28;
    }

    result = (*v22)(v12);
LABEL_36:
    if (*(v7 + 15))
    {
      return result;
    }

    v9 = *v8;
  }

  if (!sub_1818DF6EC(v9, 0))
  {
    v10 = v9[16];
    if ((*(v10 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v10, a2);
    }

    else
    {
      *v10 = a2;
      *(v10 + 20) = 4;
    }

    v14 = *(*v9 + 24);
    if (v14)
    {
      xmmword_1ED452F28(v14);
    }
  }

  if ((a4 & 0x80000000) != 0)
  {
    sub_1819012D0(101409);
  }

  else
  {
    v15 = *v8;
    if (!sub_1818DF6EC(v15, 1u))
    {
      if (a3)
      {
        v16 = sub_1818900D0(v15[16] + 64, a3, a4, 0, 0);
        if (v16)
        {
          v17 = v16;
          v18 = *v15;
          *(v18 + 80) = v17;
          sub_181932D5C(v18, v17);
          sub_18193C988(*v15, v17);
        }
      }

      v19 = *(*v15 + 24);
      if (v19)
      {
        xmmword_1ED452F28(v19);
      }
    }
  }

  sqlite3_step(*(v7 + 10));
  *(v7 + 15) = sqlite3_reset(*(v7 + 10));
  v20 = *(v7 + 10);
  result = sub_1818DF6EC(v20, 1u);
  if (!result)
  {
    result = *(*v20 + 24);
    if (result)
    {
      v21 = xmmword_1ED452F28;

      return v21();
    }
  }

  return result;
}

unsigned __int8 *sub_1819D8134(unsigned __int8 *result, uint64_t a2)
{
  if (*(result + 15))
  {
    return result;
  }

  v3 = result;
  v4 = *(*result + 192);
  if (sqlite3_initialize() || (v8 = sub_18190287C(0, 0x40uLL, 688041480)) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(v3 + 15) = 7;
  }

  else
  {
    v5 = v8;
    *v8 = bswap32(v4 & ~(v4 >> 31));
    if (*(a2 + 16))
    {
      *(v8 + 1) = 16777471;
      v9 = 8;
    }

    else
    {
      v9 = 4;
    }

    v10 = &v8[v9];
    v11 = *(a2 + 28);
    if (v11 > 0x7F)
    {
      if (v11 >> 14)
      {
        v12 = sub_1819436D0(v10, v11);
      }

      else
      {
        v10->i8[0] = (v11 >> 7) | 0x80;
        v10->i8[1] = v11 & 0x7F;
        v12 = 2;
      }
    }

    else
    {
      v10->i8[0] = v11;
      v12 = 1;
    }

    v13 = v9 + v12;
    v14 = &v5[v13];
    v15 = *(a2 + 24);
    if (v15 > 0x7F)
    {
      if (v15 >> 14)
      {
        v16 = sub_1819436D0(v14, v15);
      }

      else
      {
        v14->i8[0] = (v15 >> 7) | 0x80;
        v14->i8[1] = v15 & 0x7F;
        v16 = 2;
      }
    }

    else
    {
      v14->i8[0] = v15;
      v16 = 1;
    }

    v17 = v13 + v16;
    v18 = &v5[v17];
    v19 = *(a2 + 8);
    if (v19 > 0x7F)
    {
      if (v19 >> 14)
      {
        v20 = sub_1819436D0(v18, v19);
      }

      else
      {
        v18->i8[0] = (v19 >> 7) | 0x80;
        v18->i8[1] = v19 & 0x7F;
        v20 = 2;
      }
    }

    else
    {
      v18->i8[0] = v19;
      v20 = 1;
    }

    v6 = v17 + v20;
    v7 = 64;
  }

  if (*(a2 + 28) >= 1)
  {
    v21 = 0;
    v90 = a2 + 32;
    v92 = a2;
    do
    {
      v91 = v21;
      v22 = (v90 + 16 * v21);
      v23 = *v22;
      v24 = (v6 + 9);
      if (v24 > v7)
      {
        if (v7)
        {
          LODWORD(v25) = v7;
        }

        else
        {
          LODWORD(v25) = 64;
        }

        v25 = v25;
        do
        {
          v26 = v25;
          v25 *= 2;
        }

        while (v26 < v24);
        if (sqlite3_initialize() || (v27 = sub_18190287C(v5, v26, 688041480)) == 0)
        {
          *(v3 + 15) = 7;
          goto LABEL_44;
        }

        v5 = v27;
        v7 = v26;
      }

      v28 = &v5[v6];
      if (v23 > 0x7F)
      {
        if (v23 >> 14)
        {
          v29 = sub_1819436D0(v28, v23);
        }

        else
        {
          v28->i8[0] = (v23 >> 7) | 0x80;
          v28->i8[1] = v23 & 0x7F;
          v29 = 2;
        }
      }

      else
      {
        v28->i8[0] = v23;
        v29 = 1;
      }

      v6 += v29;
      LODWORD(v24) = v6 + 9;
LABEL_44:
      v30 = v22[1];
      if (v24 > v7)
      {
        if (v7)
        {
          LODWORD(v31) = v7;
        }

        else
        {
          LODWORD(v31) = 64;
        }

        v31 = v31;
        do
        {
          v32 = v31;
          v31 *= 2;
        }

        while (v32 < v24);
        if (sqlite3_initialize() || (v33 = sub_18190287C(v5, v32, 688041480)) == 0)
        {
          *(v3 + 15) = 7;
          goto LABEL_60;
        }

        v5 = v33;
        v7 = v32;
      }

      v34 = &v5[v6];
      if (v30 > 0x7F)
      {
        if (v30 >> 14)
        {
          v35 = sub_1819436D0(v34, v30);
        }

        else
        {
          v34->i8[0] = (v30 >> 7) | 0x80;
          v34->i8[1] = v30 & 0x7F;
          v35 = 2;
        }
      }

      else
      {
        v34->i8[0] = v30;
        v35 = 1;
      }

      v6 += v35;
LABEL_60:
      if (v22[1] >= 1)
      {
        for (i = 0; i < v22[1]; ++i)
        {
          v38 = (*(v22 + 1) + 56 * i);
          v39 = *v38;
          v40 = (v6 + 9);
          if (v40 > v7)
          {
            if (v7)
            {
              LODWORD(v41) = v7;
            }

            else
            {
              LODWORD(v41) = 64;
            }

            v41 = v41;
            do
            {
              v42 = v41;
              v41 *= 2;
            }

            while (v42 < v40);
            if (sqlite3_initialize() || (v43 = sub_18190287C(v5, v42, 688041480)) == 0)
            {
              *(v3 + 15) = 7;
              goto LABEL_81;
            }

            v5 = v43;
            v7 = v42;
          }

          v44 = &v5[v6];
          if (v39 > 0x7F)
          {
            if (v39 >> 14)
            {
              v45 = sub_1819436D0(v44, v39);
            }

            else
            {
              v44->i8[0] = (v39 >> 7) | 0x80;
              v44->i8[1] = v39 & 0x7F;
              v45 = 2;
            }
          }

          else
          {
            v44->i8[0] = v39;
            v45 = 1;
          }

          v6 += v45;
          LODWORD(v40) = v6 + 9;
LABEL_81:
          v46 = v38[1];
          if (v40 > v7)
          {
            if (v7)
            {
              LODWORD(v47) = v7;
            }

            else
            {
              LODWORD(v47) = 64;
            }

            v47 = v47;
            do
            {
              v48 = v47;
              v47 *= 2;
            }

            while (v48 < v40);
            if (sqlite3_initialize() || (v49 = sub_18190287C(v5, v48, 688041480)) == 0)
            {
              *(v3 + 15) = 7;
              goto LABEL_97;
            }

            v5 = v49;
            v7 = v48;
          }

          v50 = &v5[v6];
          if (v46 > 0x7F)
          {
            if (v46 >> 14)
            {
              v51 = sub_1819436D0(v50, v46);
            }

            else
            {
              v50->i8[0] = (v46 >> 7) | 0x80;
              v50->i8[1] = v46 & 0x7F;
              v51 = 2;
            }
          }

          else
          {
            v50->i8[0] = v46;
            v51 = 1;
          }

          v6 += v51;
          LODWORD(v40) = v6 + 9;
LABEL_97:
          v52 = v38[2];
          if (v40 > v7)
          {
            if (v7)
            {
              LODWORD(v53) = v7;
            }

            else
            {
              LODWORD(v53) = 64;
            }

            v53 = v53;
            do
            {
              v54 = v53;
              v53 *= 2;
            }

            while (v54 < v40);
            if (sqlite3_initialize() || (v55 = sub_18190287C(v5, v54, 688041480)) == 0)
            {
              *(v3 + 15) = 7;
              goto LABEL_113;
            }

            v5 = v55;
            v7 = v54;
          }

          v56 = &v5[v6];
          if (v52 > 0x7F)
          {
            if (v52 >> 14)
            {
              v57 = sub_1819436D0(v56, v52);
            }

            else
            {
              v56->i8[0] = (v52 >> 7) | 0x80;
              v56->i8[1] = v52 & 0x7F;
              v57 = 2;
            }
          }

          else
          {
            v56->i8[0] = v52;
            v57 = 1;
          }

          v6 += v57;
LABEL_113:
          if (!*(v92 + 16))
          {
            continue;
          }

          v58 = *(v38 + 2);
          v59 = (v6 + 9);
          if (v59 > v7)
          {
            if (v7)
            {
              LODWORD(v60) = v7;
            }

            else
            {
              LODWORD(v60) = 64;
            }

            v60 = v60;
            do
            {
              v61 = v60;
              v60 *= 2;
            }

            while (v61 < v59);
            if (sqlite3_initialize() || (v62 = sub_18190287C(v5, v61, 688041480)) == 0)
            {
              *(v3 + 15) = 7;
              goto LABEL_130;
            }

            v5 = v62;
            v7 = v61;
          }

          v63 = &v5[v6];
          if (v58 > 0x7F)
          {
            if (v58 >> 14)
            {
              v64 = sub_1819436D0(v63, v58);
            }

            else
            {
              v63->i8[0] = (v58 >> 7) | 0x80;
              v63->i8[1] = v58 & 0x7F;
              v64 = 2;
            }
          }

          else
          {
            v63->i8[0] = v58;
            v64 = 1;
          }

          v6 += v64;
          LODWORD(v59) = v6 + 9;
LABEL_130:
          v65 = *(v38 + 3);
          if (v59 > v7)
          {
            if (v7)
            {
              LODWORD(v66) = v7;
            }

            else
            {
              LODWORD(v66) = 64;
            }

            v66 = v66;
            do
            {
              v67 = v66;
              v66 *= 2;
            }

            while (v67 < v59);
            if (sqlite3_initialize() || (v68 = sub_18190287C(v5, v67, 688041480)) == 0)
            {
              *(v3 + 15) = 7;
              goto LABEL_146;
            }

            v5 = v68;
            v7 = v67;
          }

          v69 = &v5[v6];
          if (v65 > 0x7F)
          {
            if (v65 >> 14)
            {
              v70 = sub_1819436D0(v69, v65);
            }

            else
            {
              v69->i8[0] = (v65 >> 7) | 0x80;
              v69->i8[1] = v65 & 0x7F;
              v70 = 2;
            }
          }

          else
          {
            v69->i8[0] = v65;
            v70 = 1;
          }

          v6 += v70;
          LODWORD(v59) = v6 + 9;
LABEL_146:
          v71 = v38[8];
          if (v59 > v7)
          {
            if (v7)
            {
              LODWORD(v72) = v7;
            }

            else
            {
              LODWORD(v72) = 64;
            }

            v72 = v72;
            do
            {
              v73 = v72;
              v72 *= 2;
            }

            while (v73 < v59);
            if (sqlite3_initialize() || (v74 = sub_18190287C(v5, v73, 688041480)) == 0)
            {
              *(v3 + 15) = 7;
              goto LABEL_162;
            }

            v5 = v74;
            v7 = v73;
          }

          v75 = &v5[v6];
          if (v71 > 0x7F)
          {
            if (v71 >> 14)
            {
              v76 = sub_1819436D0(v75, v71);
            }

            else
            {
              v75->i8[0] = (v71 >> 7) | 0x80;
              v75->i8[1] = v71 & 0x7F;
              v76 = 2;
            }
          }

          else
          {
            v75->i8[0] = v71;
            v76 = 1;
          }

          v6 += v76;
          LODWORD(v59) = v6 + 9;
LABEL_162:
          v77 = *(v38 + 5);
          if (v59 <= v7)
          {
            goto LABEL_172;
          }

          if (v7)
          {
            LODWORD(v78) = v7;
          }

          else
          {
            LODWORD(v78) = 64;
          }

          v78 = v78;
          do
          {
            v79 = v78;
            v78 *= 2;
          }

          while (v79 < v59);
          if (!sqlite3_initialize())
          {
            v80 = sub_18190287C(v5, v79, 688041480);
            if (v80)
            {
              v5 = v80;
              v7 = v79;
LABEL_172:
              v81 = &v5[v6];
              if (v77 > 0x7F)
              {
                if (v77 >> 14)
                {
                  v82 = sub_1819436D0(v81, v77);
                }

                else
                {
                  v81->i8[0] = (v77 >> 7) | 0x80;
                  v81->i8[1] = v77 & 0x7F;
                  v82 = 2;
                }
              }

              else
              {
                v81->i8[0] = v77;
                v82 = 1;
              }

              v6 += v82;
              LODWORD(v59) = v6 + 9;
              goto LABEL_178;
            }
          }

          *(v3 + 15) = 7;
LABEL_178:
          v83 = *(v38 + 6);
          if (v59 <= v7)
          {
            goto LABEL_188;
          }

          if (v7)
          {
            LODWORD(v84) = v7;
          }

          else
          {
            LODWORD(v84) = 64;
          }

          v84 = v84;
          do
          {
            v85 = v84;
            v84 *= 2;
          }

          while (v85 < v59);
          if (!sqlite3_initialize())
          {
            v86 = sub_18190287C(v5, v85, 688041480);
            if (v86)
            {
              v5 = v86;
              v7 = v85;
LABEL_188:
              v87 = &v5[v6];
              if (v83 <= 0x7F)
              {
                v87->i8[0] = v83;
                v37 = 1;
              }

              else if (v83 >> 14)
              {
                v37 = sub_1819436D0(v87, v83);
              }

              else
              {
                v87->i8[0] = (v83 >> 7) | 0x80;
                v87->i8[1] = v83 & 0x7F;
                v37 = 2;
              }

              v6 += v37;
              continue;
            }
          }

          *(v3 + 15) = 7;
        }
      }

      v21 = v91 + 1;
    }

    while (v91 + 1 < *(v92 + 28));
  }

  result = sub_1819D7E9C(v3, 10, v5, v6);
  if (!v5)
  {
    return result;
  }

  v88 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_198;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
  --qword_1ED456A90;
  result = off_1ED452EB0(v5);
  v5 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v88 = &xmmword_1ED452F28;
LABEL_198:
    v89 = *v88;

    return v89(v5);
  }

  return result;
}

void sub_1819D8AE8(int *a1)
{
  if (!a1)
  {
    return;
  }

  if ((*a1)-- > 1)
  {
    return;
  }

  if (a1[7] >= 1)
  {
    v3 = 0;
    v4 = (a1 + 10);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
          --qword_1ED456A90;
          off_1ED452EB0(v5);
          v5 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_7;
          }

          v6 = &xmmword_1ED452F28;
        }

        (*v6)(v5);
      }

LABEL_7:
      ++v3;
      v4 += 2;
    }

    while (v3 < a1[7]);
  }

  sqlite3_free(a1);
}

void sub_1819D8C28(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2 > 0)
  {
    v3 = 0;
    while (1)
    {
      v5 = *(*(a1 + 32) + 8 * v3);
      if (v5)
      {
        break;
      }

LABEL_4:
      ++v3;
      v4 = v2;
      if (v3 >= v2)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v6 = *v5;
      v7 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_8;
        }

        v7 = &xmmword_1ED452F28;
      }

      (*v7)(v5);
LABEL_8:
      v5 = v6;
      if (!v6)
      {
        v2 = *(a1 + 20);
        goto LABEL_4;
      }
    }
  }

  v4 = v2;
LABEL_15:
  bzero(*(a1 + 32), 8 * v4);
  *(a1 + 16) = 0;
}

uint64_t sub_1819D8D48(uint64_t *a1, char *a2, const sqlite3_value *a3, int a4)
{
  v23 = 0;
  result = sub_1819D907C(a1, 10, &v23, 0);
  if (!result)
  {
    v9 = v23;
    sub_1818DF574(v23, 1, a2, -1, 0, 1u);
    if (a3)
    {
      sqlite3_bind_value(v9, 2, a3);
    }

    else if (!sub_1818DF6EC(v9, 1u))
    {
      v10 = *(v9 + 16);
      if ((*(v10 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v10 + 64, a4);
      }

      else
      {
        *(v10 + 64) = a4;
        *(v10 + 84) = 4;
      }

      v11 = *(*v9 + 24);
      if (v11)
      {
        xmmword_1ED452F28(v11);
      }
    }

    sqlite3_step(v9);
    v12 = sqlite3_reset(v9);
    if (!sub_1818DF6EC(v9, 0))
    {
      v13 = *(*v9 + 24);
      if (v13)
      {
        xmmword_1ED452F28(v13);
      }
    }

    if (a3)
    {
      result = v12;
      if (!v12)
      {
        v14 = a1[1];
        v15 = *(*a1 + 192) + 1;
        v17 = *v14;
        v16 = v14[1];
        ppBlob = 0;
        v25[0] = HIBYTE(v15);
        v25[1] = BYTE2(v15);
        v25[2] = BYTE1(v15);
        v25[3] = v15;
        result = sqlite3_blob_open(*v17, *(v17 + 16), v16, "block", 10, 1, &ppBlob);
        if (!result)
        {
          sub_181910DE0(ppBlob, v25, 4, 0, sub_18191100C);
          v18 = ppBlob;
          if (!ppBlob)
          {
            goto LABEL_23;
          }

          v19 = *(ppBlob + 3);
          v20 = *(ppBlob + 4);
          v21 = v20[3];
          if (v21)
          {
            xmmword_1ED452F18(v21);
          }

          sub_181929C84(v20, v18);
          v22 = v20[3];
          if (v22)
          {
            xmmword_1ED452F28(v22);
          }

          result = sqlite3_finalize(v19);
          if (!result)
          {
LABEL_23:
            result = 0;
            *(*a1 + 192) = v15;
          }
        }
      }
    }

    else
    {
      return v12;
    }
  }

  return result;
}

uint64_t sub_1819D8F54(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  sqlite3_finalize(*(result + 48));
  sqlite3_finalize(v1[7]);
  sqlite3_finalize(v1[8]);
  sqlite3_finalize(v1[9]);
  sqlite3_finalize(v1[10]);
  sqlite3_finalize(v1[11]);
  sqlite3_finalize(v1[12]);
  sqlite3_finalize(v1[13]);
  sqlite3_finalize(v1[14]);
  sqlite3_finalize(v1[15]);
  sqlite3_finalize(v1[16]);
  sqlite3_finalize(v1[17]);
  v2 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v2 = &xmmword_1ED452F28;
LABEL_7:
    v3 = *v2;

    return v3(v1);
  }

  return result;
}

uint64_t sub_1819D907C(uint64_t *a1, int a2, sqlite3_stmt **a3, char **a4)
{
  v5 = 0;
  v33 = 0;
  v6 = &a1[a2];
  v8 = v6[6];
  v7 = (v6 + 6);
  if (v8)
  {
    goto LABEL_46;
  }

  v12 = *a1;
  if (a2 <= 3)
  {
    if (a2 < 2)
    {
      v16 = sqlite3_mprintf(off_1E6A28100[a2], *(v12 + 120), *(v12 + 88), *(v12 + 96), *(v12 + 96), *(v12 + 96));
      goto LABEL_25;
    }

    if ((a2 - 2) < 2)
    {
      v16 = sqlite3_mprintf(off_1E6A28100[a2], *(v12 + 120), *(v12 + 88), *(v12 + 96));
LABEL_25:
      v20 = v16;
      goto LABEL_26;
    }

LABEL_24:
    v16 = sqlite3_mprintf(off_1E6A28100[a2], *(v12 + 16), *(v12 + 24));
    goto LABEL_25;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      if (*(v12 + 76))
      {
        v19 = ",origin";
      }

      else
      {
        v19 = &byte_181A2878D;
      }

      v16 = sqlite3_mprintf("SELECT sz%s FROM %Q.'%q_docsize' WHERE id=?", v19, *(v12 + 16), *(v12 + 24));
      goto LABEL_25;
    }

    if (a2 == 11)
    {
      v16 = sqlite3_mprintf("SELECT %s FROM %s AS T");
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((a2 - 4) >= 2)
  {
    if (a2 == 7)
    {
      if (*(v12 + 76))
      {
        v18 = ",?";
      }

      else
      {
        v18 = &byte_181A2878D;
      }

      v16 = sqlite3_mprintf("REPLACE INTO %Q.'%q_docsize' VALUES(?,?%s)", *(v12 + 16), *(v12 + 24), v18);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((*(v12 + 32) & 0x80000000) != 0)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 1;
    v14 = sub_1819D6A30(&v33, "%z%s?%d", 0, &byte_181A2878D, 1);
    if (!v33)
    {
      v15 = 1;
      do
      {
        v28 = *(v12 + 32);
        v13 = v15 <= v28;
        if (v15 > v28)
        {
          break;
        }

        v29 = v15 - 1;
        while (*(v12 + 72) && !*(*(v12 + 48) + v29))
        {
          v13 = ++v29 < v28;
          if (v29 >= v28)
          {
            goto LABEL_57;
          }
        }

        v27 = ",";
        if (!v14)
        {
          v27 = &byte_181A2878D;
        }

        v15 = v29 + 2;
        v14 = sub_1819D6A30(&v33, "%z%s?%d", v14, v27, v29 + 2);
      }

      while (!v33);
    }
  }

LABEL_57:
  if (*(v12 + 112) && *(v12 + 72) == 0 && !v13)
  {
    v31 = 0;
    do
    {
      v32 = *(v12 + 32);
      if (v31 >= v32)
      {
        break;
      }

      while (*(*(v12 + 48) + v31))
      {
        if (++v31 >= v32)
        {
          goto LABEL_59;
        }
      }

      v14 = sub_1819D6A30(&v33, "%z,?%d", v14, (v32 + 2) + v31++);
    }

    while (!v33);
  }

LABEL_59:
  v20 = sub_1819D6A30(&v33, off_1E6A28100[a2], *(v12 + 16), *(v12 + 24), v14);
  if (v14)
  {
    v30 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_65:
      (*v30)(v14);
      goto LABEL_26;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v14 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v30 = &xmmword_1ED452F28;
      goto LABEL_65;
    }
  }

LABEL_26:
  if (!v20)
  {
    v5 = 7;
    goto LABEL_46;
  }

  ++*(*a1 + 184);
  if (a2 <= 3)
  {
    v21 = 129;
  }

  else
  {
    v21 = 133;
  }

  LODWORD(v5) = sub_1818954B4(*v12, v20, 0xFFFFFFFFLL, v21, 0, v7, 0, v17);
  --*(*a1 + 184);
  v22 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_36;
    }

    v22 = &xmmword_1ED452F28;
  }

  (*v22)(v20);
LABEL_36:
  if (a4 && v5)
  {
    v23 = sqlite3_errmsg(*v12);
    *a4 = sqlite3_mprintf("%s", v23);
  }

  if (v5 != 1 || (a2 - 4) >= 7)
  {
    v5 = v5;
  }

  else
  {
    v5 = 11;
  }

LABEL_46:
  v25 = *v7;
  *a3 = *v7;
  sqlite3_reset(v25);
  return v5;
}

uint64_t sub_1819D950C(_DWORD *a1, _BYTE *a2, sqlite3_value *a3, _DWORD *a4)
{
  if (!a2)
  {
    goto LABEL_90;
  }

  v5 = "pgsz";
  for (i = a2; *i == *v5; ++i)
  {
    if (!*i)
    {
      if (!a3)
      {
        goto LABEL_89;
      }

      v17 = *(a3 + 10);
      if ((0x4000000040004uLL >> v17))
      {
        v23 = a1;
        v24 = a3;
        sub_18190FC94(a3, 0);
        a3 = v24;
        a1 = v23;
        v17 = *(v24 + 10);
      }

      if ((0x50505050uLL >> (v17 & 0x3F)))
      {
        if ((v17 & 0x24) != 0)
        {
          v25 = *a3;
        }

        else if ((v17 & 8) != 0)
        {
          if (fabs(*a3) > 9.22337204e18)
          {
            goto LABEL_90;
          }

          v25 = *a3;
        }

        else
        {
          if ((v17 & 0x12) == 0 || !*(a3 + 1))
          {
            goto LABEL_90;
          }

          v37 = a1;
          LODWORD(v25) = sub_18193CFCC(a3);
          a1 = v37;
        }

        if ((v25 - 65537) > 0xFFFF001E)
        {
          a1[49] = v25;
          return 0;
        }
      }

      goto LABEL_90;
    }

LABEL_4:
    ++v5;
  }

  if (byte_181A20298[*i] == byte_181A20298[*v5])
  {
    goto LABEL_4;
  }

  v7 = "hashsize";
  for (j = a2; ; ++j)
  {
    if (*j == *v7)
    {
      if (*j)
      {
        goto LABEL_9;
      }

      if (!a3)
      {
        goto LABEL_89;
      }

      v20 = *(a3 + 10);
      if ((0x4000000040004uLL >> v20))
      {
        v29 = a1;
        v30 = a3;
        sub_18190FC94(a3, 0);
        a3 = v30;
        a1 = v29;
        v20 = *(v30 + 10);
      }

      if ((0x50505050uLL >> (v20 & 0x3F)))
      {
        if ((v20 & 0x24) != 0)
        {
          v31 = *a3;
        }

        else if ((v20 & 8) != 0)
        {
          if (fabs(*a3) > 9.22337204e18)
          {
            goto LABEL_90;
          }

          v31 = *a3;
        }

        else
        {
          if ((v20 & 0x12) == 0 || !*(a3 + 1))
          {
            goto LABEL_90;
          }

          v42 = a1;
          LODWORD(v31) = sub_18193CFCC(a3);
          a1 = v42;
        }

        if (v31 > 0)
        {
          a1[53] = v31;
          return 0;
        }
      }

LABEL_90:
      result = 0;
      *a4 = 1;
      return result;
    }

    if (byte_181A20298[*j] != byte_181A20298[*v7])
    {
      break;
    }

LABEL_9:
    ++v7;
  }

  v9 = "automerge";
  for (k = a2; ; ++k)
  {
    if (*k == *v9)
    {
      if (*k)
      {
        goto LABEL_14;
      }

      if (!a3)
      {
        goto LABEL_89;
      }

      v27 = *(a3 + 10);
      if ((0x4000000040004uLL >> v27))
      {
        v38 = a1;
        v39 = a3;
        sub_18190FC94(a3, 0);
        a3 = v39;
        a1 = v38;
        v27 = *(v39 + 10);
      }

      if (((0x50505050uLL >> (v27 & 0x3F)) & 1) == 0)
      {
        goto LABEL_90;
      }

      if ((v27 & 0x24) != 0)
      {
        v40 = *a3;
LABEL_82:
        if (v40 >= 0x41)
        {
          goto LABEL_90;
        }

        if (v40 == 1)
        {
          LODWORD(v40) = 4;
        }

        goto LABEL_140;
      }

      if ((v27 & 8) != 0)
      {
        v61 = *a3;
        if (*a3 >= -9.22337204e18)
        {
          if (v61 > 9.22337204e18)
          {
            goto LABEL_90;
          }

          v40 = v61;
          goto LABEL_82;
        }
      }

      else if ((v27 & 0x12) != 0)
      {
        v40 = *(a3 + 1);
        if (v40)
        {
          v52 = a1;
          LODWORD(v40) = sub_18193CFCC(a3);
          a1 = v52;
          goto LABEL_82;
        }

LABEL_140:
        a1[50] = v40;
        return 0;
      }

      LODWORD(v40) = 0;
      goto LABEL_140;
    }

    if (byte_181A20298[*k] != byte_181A20298[*v9])
    {
      break;
    }

LABEL_14:
    ++v9;
  }

  v11 = "usermerge";
  for (m = a2; *m != *v11; ++m)
  {
    if (byte_181A20298[*m] != byte_181A20298[*v11])
    {
      v13 = "crisismerge";
      for (n = a2; ; ++n)
      {
        if (*n == *v13)
        {
          if (!*n)
          {
            if (a3)
            {
              v41 = *(a3 + 10);
              if ((0x4000000040004uLL >> v41))
              {
                v53 = a1;
                v54 = a3;
                sub_18190FC94(a3, 0);
                a3 = v54;
                a1 = v53;
                v41 = *(v54 + 10);
              }

              if (((0x50505050uLL >> (v41 & 0x3F)) & 1) == 0)
              {
                goto LABEL_90;
              }

              if ((v41 & 0x24) != 0)
              {
                v55 = *a3;
                goto LABEL_124;
              }

              if ((v41 & 8) == 0)
              {
                if ((v41 & 0x12) != 0 && *(a3 + 1))
                {
                  v66 = a1;
                  LODWORD(v55) = sub_18193CFCC(a3);
                  a1 = v66;
                  goto LABEL_124;
                }

                goto LABEL_163;
              }

              v68 = *a3;
              if (*a3 < -9.22337204e18)
              {
                goto LABEL_163;
              }

              if (v68 > 9.22337204e18)
              {
                goto LABEL_90;
              }

              v55 = v68;
LABEL_124:
              if ((v55 & 0x80000000) != 0)
              {
                goto LABEL_90;
              }

              v56 = v55 >= 0x7CF ? 1999 : v55;
              if (v55 <= 1)
              {
LABEL_163:
                v56 = 16;
              }

              a1[51] = v56;
              return 0;
            }

LABEL_89:
            sub_1819012D0(99877);
            goto LABEL_90;
          }
        }

        else if (byte_181A20298[*n] != byte_181A20298[*v13])
        {
          v15 = "deletemerge";
          for (ii = a2; ; ++ii)
          {
            if (*ii == *v15)
            {
              if (!*ii)
              {
                if (a3)
                {
                  v46 = *(a3 + 10);
                  v47 = a1;
                  if ((0x4000000040004uLL >> v46))
                  {
                    v48 = a3;
                    sub_18190FC94(a3, 0);
                    a3 = v48;
                    v46 = *(v48 + 10);
                  }

                  if ((0x50505050uLL >> (v46 & 0x3F)))
                  {
                    v49 = sqlite3_value_int(a3);
                    if (v49 <= 0x64)
                    {
                      v50 = v49;
                    }

                    else
                    {
                      v50 = 0;
                    }

                    if (v49 >= 0)
                    {
                      v51 = v50;
                    }

                    else
                    {
                      v51 = 10;
                    }

                    goto LABEL_143;
                  }
                }

                else
                {
                  v47 = a1;
                  sub_1819012D0(99877);
                }

                *a4 = 1;
                v51 = 10;
LABEL_143:
                result = 0;
                v47[59] = v51;
                return result;
              }
            }

            else if (byte_181A20298[*ii] != byte_181A20298[*v15])
            {
              v18 = "rank";
              for (jj = a2; ; ++jj)
              {
                if (*jj == *v18)
                {
                  if (!*jj)
                  {
                    if (a3)
                    {
                      v57 = *(a3 + 10);
                      if ((~v57 & 0x202) == 0 && *(a3 + 22) == 1)
                      {
                        v58 = a1;
                        v59 = *(a3 + 1);
LABEL_159:
                        v69 = 0;
                        v70 = 0;
                        result = sub_1819D9D44(v59, &v70, &v69);
                        if (result == 1)
                        {
                          goto LABEL_90;
                        }

                        if (!result)
                        {
                          sqlite3_free(v58[27]);
                          sqlite3_free(v58[28]);
                          result = 0;
                          v67 = v69;
                          v58[27] = v70;
                          v58[28] = v67;
                        }

                        return result;
                      }

                      v58 = a1;
                      if ((v57 & 1) == 0)
                      {
                        v59 = sub_18193CB70(a3, 1);
                        goto LABEL_159;
                      }
                    }

                    else
                    {
                      v58 = a1;
                    }

                    v59 = 0;
                    goto LABEL_159;
                  }
                }

                else if (byte_181A20298[*jj] != byte_181A20298[*v18])
                {
                  v21 = "secure-delete";
                  for (kk = a2; ; ++kk)
                  {
                    if (*kk == *v21)
                    {
                      if (!*kk)
                      {
                        v62 = a1;
                        v63 = a3;
                        if (sqlite3_value_numeric_type(a3) != 1)
                        {
                          goto LABEL_90;
                        }

                        v64 = sqlite3_value_int(v63);
                        if (v64 < 0)
                        {
                          goto LABEL_90;
                        }

                        v65 = v64;
                        result = 0;
                        v62[58] = v65 != 0;
                        return result;
                      }
                    }

                    else if (byte_181A20298[*kk] != byte_181A20298[*v21])
                    {
                      for (mm = "insttoken"; ; ++mm)
                      {
                        if (*a2 == *mm)
                        {
                          if (!*a2)
                          {
                            v33 = a1;
                            v34 = a3;
                            if (sqlite3_value_numeric_type(a3) == 1)
                            {
                              v35 = sqlite3_value_int(v34);
                              if ((v35 & 0x80000000) == 0)
                              {
                                v36 = v35;
                                result = 0;
                                v33[60] = v36 != 0;
                                return result;
                              }
                            }

                            goto LABEL_90;
                          }
                        }

                        else if (byte_181A20298[*a2] != byte_181A20298[*mm])
                        {
                          goto LABEL_90;
                        }

                        ++a2;
                      }
                    }

                    ++v21;
                  }
                }

                ++v18;
              }
            }

            ++v15;
          }
        }

        ++v13;
      }
    }

LABEL_19:
    ++v11;
  }

  if (*m)
  {
    goto LABEL_19;
  }

  if (!a3)
  {
    goto LABEL_89;
  }

  v32 = *(a3 + 10);
  if ((0x4000000040004uLL >> v32))
  {
    v43 = a1;
    v44 = a3;
    sub_18190FC94(a3, 0);
    a3 = v44;
    a1 = v43;
    v32 = *(v44 + 10);
  }

  if (((0x50505050uLL >> (v32 & 0x3F)) & 1) == 0)
  {
    goto LABEL_90;
  }

  if ((v32 & 0x24) != 0)
  {
    v45 = *a3;
  }

  else if ((v32 & 8) != 0)
  {
    if (fabs(*a3) > 9.22337204e18)
    {
      goto LABEL_90;
    }

    v45 = *a3;
  }

  else
  {
    if ((v32 & 0x12) == 0 || !*(a3 + 1))
    {
      goto LABEL_90;
    }

    v60 = a1;
    LODWORD(v45) = sub_18193CFCC(a3);
    a1 = v60;
  }

  if ((v45 - 17) <= 0xFFFFFFF0)
  {
    goto LABEL_90;
  }

  a1[52] = v45;
  return 0;
}

uint64_t sub_1819D9D44(unsigned __int8 *a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (!a1)
  {
    return 1;
  }

  v3 = a1 - 1;
  do
  {
    v5 = *a1++;
    v4 = v5;
    ++v3;
  }

  while (v5 == 32);
  v6 = 0;
  v7 = a1 - 1;
  while ((v4 & 0x80) != 0 || byte_181A25753[v4])
  {
    v4 = a1[v6++];
  }

  if (!v6)
  {
    return 1;
  }

  v8 = a1;
  if (sqlite3_initialize() || (v12 = sub_181902484(v6 + 1, 1913357809)) == 0)
  {
    if ((v6 + 1) > 0)
    {
      return 7;
    }

    v13 = 0;
  }

  else
  {
    v13 = v12;
    bzero(v12, v6 + 1);
    memcpy(v13, v7, v6);
  }

  v14 = &v8[v6 - 2];
  v15 = &v3[v6];
  v16 = a3;
  v17 = a2;
  do
  {
    v19 = *++v14;
    v18 = v19;
    ++v15;
  }

  while (v19 == 32);
  if (v18 != 40)
  {
LABEL_34:
    result = 1;
LABEL_35:
    if (!v13)
    {
      return result;
    }

    v30 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v31 = result;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
      --qword_1ED456A90;
      off_1ED452EB0(v13);
      v13 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return v31;
      }

      v30 = &xmmword_1ED452F28;
    }

    else
    {
      v31 = result;
    }

    (*v30)(v13);
    return v31;
  }

  do
  {
    v21 = *++v14;
    v20 = v21;
    ++v15;
  }

  while (v21 == 32);
  if (v20 != 41)
  {
    v23 = -v15;
    v24 = v14;
    while (1)
    {
      do
      {
        v25 = v24;
        v26 = *v24++;
      }

      while (v26 == 32);
      v24 = sub_1819D7094(v25);
      if (!v24)
      {
        goto LABEL_34;
      }

      v27 = &v24[v23];
      do
      {
        v29 = *v24++;
        v28 = v29;
        ++v27;
      }

      while (v29 == 32);
      if (v28 != 44)
      {
        if (v28 != 41)
        {
          goto LABEL_34;
        }

        if (sqlite3_initialize() || (v32 = sub_181902484(v27 + 1, 1913357809)) == 0)
        {
          if ((v27 + 1) > 0)
          {
            result = 7;
            goto LABEL_35;
          }

          v22 = 0;
        }

        else
        {
          v22 = v32;
          bzero(v32, v27 + 1);
          memcpy(v22, v14, v27);
        }

        v16 = a3;
        v17 = a2;
        goto LABEL_23;
      }
    }
  }

  v22 = 0;
LABEL_23:
  result = 0;
  *v17 = v13;
  *v16 = v22;
  return result;
}

uint64_t sub_1819D9FD4(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 88);
  if (!v1)
  {
LABEL_4:
    v2 = *(*(a1 + 40) + 8);
    if (sub_1819DA194(v2) == *(v2 + 152))
    {
      goto LABEL_26;
    }

    v3 = *(v2 + 160);
    if (!v3)
    {
      goto LABEL_26;
    }

    if ((*v3)-- > 1)
    {
      goto LABEL_25;
    }

    if (v3[7] < 1)
    {
LABEL_19:
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
        --qword_1ED456A90;
        off_1ED452EB0(v3);
        v3 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_25;
        }

        v10 = &xmmword_1ED452F28;
      }

      (*v10)(v3);
LABEL_25:
      *(v2 + 160) = 0;
LABEL_26:
      result = *(v2 + 60);
      *(v2 + 60) = 0;
      return result;
    }

    v5 = 0;
    v6 = (v3 + 10);
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
          --qword_1ED456A90;
          off_1ED452EB0(v7);
          v7 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_11;
          }

          v8 = &xmmword_1ED452F28;
        }

        (*v8)(v7);
      }

LABEL_11:
      ++v5;
      v6 += 2;
      if (v5 >= v3[7])
      {
        goto LABEL_19;
      }
    }
  }

  while (*v1 != a1)
  {
    v1 = v1[1];
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

sqlite3_int64 sub_1819DA194(uint64_t a1)
{
  if (*(a1 + 60))
  {
    return 0;
  }

  v4 = (a1 + 144);
  v3 = *(a1 + 144);
  if (v3)
  {
    goto LABEL_4;
  }

  v6 = sqlite3_mprintf("PRAGMA %Q.data_version", *(*a1 + 16));
  v8 = v6;
  if (!*(a1 + 60))
  {
    if (v6)
    {
      v9 = sub_1818954B4(**a1, v6, 0xFFFFFFFFLL, 133, 0, v4, 0, v7);
      if (v9 == 1)
      {
        v10 = 11;
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = 7;
    }

    *(a1 + 60) = v10;
  }

  if (v8)
  {
    v11 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
      --qword_1ED456A90;
      off_1ED452EB0(v8);
      v8 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_22;
      }

      v11 = &xmmword_1ED452F28;
    }

    (*v11)(v8);
  }

LABEL_22:
  if (*(a1 + 60))
  {
    return 0;
  }

  v3 = *v4;
LABEL_4:
  if (sqlite3_step(v3) == 100)
  {
    v5 = sqlite3_column_int64(*v4, 0);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 60) = sqlite3_reset(*(a1 + 144));
  return v5;
}

double sub_1819DA320(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[20];
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v4)(v3);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v5 = a1[22];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_14;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
  --qword_1ED456A90;
  off_1ED452EB0(v5);
  v5 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
LABEL_14:
    (*v6)(v5);
  }

LABEL_15:
  v7 = a1[7];
  if (!v7)
  {
    goto LABEL_21;
  }

  if (*(a1 + 8) == 5)
  {
    v8 = *(a1 + 9) != 0;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(v2 + 40) + 48;
  if (*(v9 + 8 * v8))
  {
    sqlite3_finalize(v7);
LABEL_21:
    v10 = a1[9];
    if (!v10)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v34 = a1[7];
  sqlite3_reset(v7);
  *(v9 + 8 * v8) = v34;
  v10 = a1[9];
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_22:
  sqlite3_finalize(*v10);
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_27:
    (*v11)(v10);
    goto LABEL_28;
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
    goto LABEL_27;
  }

LABEL_28:
  v12 = a1 + 4;
  if (*(a1 + 8) == 2)
  {
    goto LABEL_43;
  }

  v13 = a1[8];
  if (!v13)
  {
    goto LABEL_43;
  }

  sub_1819DA880(*(v13 + 16));
  v14 = *(v13 + 32);
  if (v14)
  {
    v15 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
      --qword_1ED456A90;
      off_1ED452EB0(v14);
      v14 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_37;
      }

      v15 = &xmmword_1ED452F28;
    }

    (*v15)(v14);
  }

LABEL_37:
  v16 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_42:
    (*v16)(v13);
    goto LABEL_43;
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
    v16 = &xmmword_1ED452F28;
    goto LABEL_42;
  }

LABEL_43:
  v17 = a1[19];
  if (v17)
  {
    do
    {
      v18 = v17[2];
      v19 = v17[3];
      if (v18)
      {
        v18(v17[1]);
      }

      v20 = &off_1ED452EB0;
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
          goto LABEL_46;
        }

        v20 = &xmmword_1ED452F28;
      }

      (*v20)(v17);
LABEL_46:
      v17 = v19;
    }

    while (v19);
  }

  sqlite3_finalize(a1[17]);
  v21 = a1[16];
  if (v21)
  {
    v22 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_60:
      (*v22)(v21);
      goto LABEL_61;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
    --qword_1ED456A90;
    off_1ED452EB0(v21);
    v21 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v22 = &xmmword_1ED452F28;
      goto LABEL_60;
    }
  }

LABEL_61:
  if ((a1[10] & 0x10) == 0)
  {
    goto LABEL_76;
  }

  v23 = a1[12];
  if (v23)
  {
    v24 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_68:
      (*v24)(v23);
      goto LABEL_69;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
    --qword_1ED456A90;
    off_1ED452EB0(v23);
    v23 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v24 = &xmmword_1ED452F28;
      goto LABEL_68;
    }
  }

LABEL_69:
  v25 = a1[13];
  if (!v25)
  {
    goto LABEL_76;
  }

  v26 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_75;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v25);
  --qword_1ED456A90;
  off_1ED452EB0(v25);
  v25 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v26 = &xmmword_1ED452F28;
LABEL_75:
    (*v26)(v25);
  }

LABEL_76:
  v27 = *(v2 + 32);
  v28 = *(v27 + 72);
  if (v28)
  {
    *(v27 + 72) = 0;
    v29 = v28[3];
    v30 = v28[4];
    v31 = v30[3];
    if (v31)
    {
      xmmword_1ED452F18(v31);
    }

    sub_181929C84(v30, v28);
    v32 = v30[3];
    if (v32)
    {
      xmmword_1ED452F28(v32);
    }

    sqlite3_finalize(v29);
  }

  *(v27 + 60) = 0;
  v12[18] = 0;
  result = 0.0;
  *(v12 + 7) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 5) = 0u;
  *(v12 + 6) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  return result;
}

uint64_t sub_1819DA880(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 40) >= 1)
  {
    v2 = 0;
    do
    {
      sub_1819DA880(*(v1 + 48 + 8 * v2++));
    }

    while (v2 < *(v1 + 40));
  }

  sub_1819DA97C(*(v1 + 32));
  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_10;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v3 = &xmmword_1ED452F28;
LABEL_10:
    v4 = *v3;

    return v4(v1);
  }

  return result;
}

uint64_t sub_1819DA97C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 16) >= 1)
  {
    v2 = 0;
    do
    {
      sub_1819DAAEC(*(v1 + 24 + 8 * v2++));
    }

    while (v2 < *(v1 + 16));
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_11:
      (*v4)(v3);
      goto LABEL_12;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_11;
    }
  }

LABEL_12:
  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_17:
    v6 = *v5;

    return v6(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v5 = &xmmword_1ED452F28;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1819DAAEC(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v49 = result;
  if (*(result + 24) >= 1)
  {
    v1 = 0;
    v48 = result + 32;
    do
    {
      v50 = v1;
      v2 = (v48 + 40 * v1);
      v3 = v2[1];
      if (v3)
      {
        v4 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
          --qword_1ED456A90;
          off_1ED452EB0(v3);
          v3 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_12;
          }

          v4 = &xmmword_1ED452F28;
        }

        (*v4)(v3);
      }

LABEL_12:
      v5 = v2[3];
      if (!v5)
      {
        goto LABEL_51;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 32);
      if (!v6)
      {
        goto LABEL_44;
      }

      if (*(v6 + 32) >= 1)
      {
        v8 = 0;
        do
        {
          sub_1819DB2CC(*(v6 + 56 + 8 * v8++));
        }

        while (v8 < *(v6 + 32));
      }

      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_23;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
        --qword_1ED456A90;
        off_1ED452EB0(v9);
        v9 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v10 = &xmmword_1ED452F28;
LABEL_23:
          (*v10)(v9);
        }
      }

      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v11 = *(v6 + 40);
      if (!v11)
      {
        goto LABEL_31;
      }

      v12 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_30;
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
        v12 = &xmmword_1ED452F28;
LABEL_30:
        (*v12)(v11);
      }

LABEL_31:
      v13 = *(v6 + 8);
      if (v13)
      {
        v14 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
          --qword_1ED456A90;
          off_1ED452EB0(v13);
          v13 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_38;
          }

          v14 = &xmmword_1ED452F28;
        }

        (*v14)(v13);
      }

LABEL_38:
      v15 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
        --qword_1ED456A90;
        off_1ED452EB0(v6);
        v6 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_44;
        }

        v15 = &xmmword_1ED452F28;
      }

      (*v15)(v6);
LABEL_44:
      sub_1819DB2CC(v5);
      v16 = *(v7 + 72);
      if (v16)
      {
        *(v7 + 72) = 0;
        v17 = v16[3];
        v18 = v16[4];
        v19 = v18[3];
        if (v19)
        {
          xmmword_1ED452F18(v19);
        }

        sub_181929C84(v18, v16);
        v20 = v18[3];
        if (v20)
        {
          xmmword_1ED452F28(v20);
        }

        sqlite3_finalize(v17);
      }

      *(v7 + 60) = 0;
LABEL_51:
      v21 = v2[4];
      if (v21)
      {
        while (1)
        {
          v24 = v21[3];
          v23 = v21[4];
          if (!v24)
          {
            goto LABEL_95;
          }

          v25 = *(v24 + 24);
          v26 = *(v24 + 32);
          if (!v25)
          {
            goto LABEL_88;
          }

          if (*(v25 + 32) >= 1)
          {
            v27 = 0;
            do
            {
              sub_1819DB2CC(*(v25 + 56 + 8 * v27++));
            }

            while (v27 < *(v25 + 32));
          }

          v28 = *(v25 + 16);
          if (v28)
          {
            v29 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_67;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v28);
            --qword_1ED456A90;
            off_1ED452EB0(v28);
            v28 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              break;
            }
          }

LABEL_68:
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          v30 = *(v25 + 40);
          if (!v30)
          {
            goto LABEL_75;
          }

          v31 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_74;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v30);
          --qword_1ED456A90;
          off_1ED452EB0(v30);
          v30 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v31 = &xmmword_1ED452F28;
LABEL_74:
            (*v31)(v30);
          }

LABEL_75:
          v32 = *(v25 + 8);
          if (v32)
          {
            v33 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v32);
              --qword_1ED456A90;
              off_1ED452EB0(v32);
              v32 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_82;
              }

              v33 = &xmmword_1ED452F28;
            }

            (*v33)(v32);
          }

LABEL_82:
          v34 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v25);
            --qword_1ED456A90;
            off_1ED452EB0(v25);
            v25 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_88;
            }

            v34 = &xmmword_1ED452F28;
          }

          (*v34)(v25);
LABEL_88:
          sub_1819DB2CC(v24);
          v35 = *(v26 + 72);
          if (v35)
          {
            *(v26 + 72) = 0;
            v36 = v35[3];
            v37 = v35[4];
            v38 = v37[3];
            if (v38)
            {
              xmmword_1ED452F18(v38);
            }

            sub_181929C84(v37, v35);
            v39 = v37[3];
            if (v39)
            {
              xmmword_1ED452F28(v39);
            }

            sqlite3_finalize(v36);
          }

          *(v26 + 60) = 0;
LABEL_95:
          v40 = v21[5];
          if (!v40)
          {
            goto LABEL_102;
          }

          v41 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_101;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
          --qword_1ED456A90;
          off_1ED452EB0(v40);
          v40 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v41 = &xmmword_1ED452F28;
LABEL_101:
            (*v41)(v40);
          }

LABEL_102:
          v21[5] = 0;
          v21[6] = 0;
          v22 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
            --qword_1ED456A90;
            off_1ED452EB0(v21);
            v21 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_55;
            }

            v22 = &xmmword_1ED452F28;
          }

          (*v22)(v21);
LABEL_55:
          v21 = v23;
          if (!v23)
          {
            goto LABEL_4;
          }
        }

        v29 = &xmmword_1ED452F28;
LABEL_67:
        (*v29)(v28);
        goto LABEL_68;
      }

LABEL_4:
      result = v49;
      v1 = v50 + 1;
    }

    while (v50 + 1 < *(v49 + 24));
  }

  if (*(result + 20) >= 1)
  {
    v42 = (result + 8);
    v43 = *(result + 8);
    if (v43)
    {
      v44 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
        --qword_1ED456A90;
        off_1ED452EB0(v43);
        v43 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_115;
        }

        v44 = &xmmword_1ED452F28;
      }

      (*v44)(v43);
    }

LABEL_115:
    *v42 = 0;
    v42[1] = 0;
    result = v49;
  }

  v45 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_121:
    v47 = *v45;

    return v47(result);
  }

  v46 = result;
  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v46);
  --qword_1ED456A90;
  off_1ED452EB0(v46);
  result = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v45 = &xmmword_1ED452F28;
    goto LABEL_121;
  }

  return result;
}

uint64_t sub_1819DB2CC(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 72) >= 1)
  {
    v2 = 0;
    v28 = result;
    v29 = result + 104;
    while (1)
    {
      v3 = v29 + (v2 << 7);
      v4 = *(v3 + 96);
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_12;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v4);
      --qword_1ED456A90;
      off_1ED452EB0(v4);
      v4 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        break;
      }

LABEL_13:
      *(v3 + 96) = 0;
      *(v3 + 104) = 0;
      v6 = *(v3 + 16);
      if (v6)
      {
        v7 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v6);
          --qword_1ED456A90;
          off_1ED452EB0(v6);
          v6 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_20;
          }

          v7 = &xmmword_1ED452F28;
        }

        (*v7)(v6);
      }

LABEL_20:
      v8 = *(v3 + 24);
      if (v8)
      {
        v9 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_26;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v8);
        --qword_1ED456A90;
        off_1ED452EB0(v8);
        v8 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v9 = &xmmword_1ED452F28;
LABEL_26:
          (*v9)(v8);
        }
      }

      v10 = *(v3 + 40);
      if (!v10)
      {
        goto LABEL_47;
      }

      if ((*v10)-- > 1)
      {
        goto LABEL_47;
      }

      if (v10[1] >= 1)
      {
        for (i = 0; i < v10[1]; ++i)
        {
          v13 = *&v10[2 * i + 2];
          if (v13)
          {
            v14 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v13);
              --qword_1ED456A90;
              off_1ED452EB0(v13);
              v13 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                continue;
              }

              v14 = &xmmword_1ED452F28;
            }

            (*v14)(v13);
          }
        }
      }

      v15 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        v1 = v28;
        goto LABEL_46;
      }

      v1 = v28;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v15 = &xmmword_1ED452F28;
LABEL_46:
        (*v15)(v10);
      }

LABEL_47:
      v16 = *(v3 + 88);
      if (!v16)
      {
        goto LABEL_65;
      }

      if (*v16 >= 1)
      {
        v17 = 0;
        v18 = 2;
        do
        {
          v19 = *&v16[v18];
          if (v19)
          {
            v20 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v19);
              --qword_1ED456A90;
              off_1ED452EB0(v19);
              v19 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_51;
              }

              v20 = &xmmword_1ED452F28;
            }

            (*v20)(v19);
          }

LABEL_51:
          ++v17;
          v18 += 8;
        }

        while (v17 < *v16);
      }

      v21 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        v1 = v28;
        goto LABEL_64;
      }

      v1 = v28;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v16);
      --qword_1ED456A90;
      off_1ED452EB0(v16);
      v16 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v21 = &xmmword_1ED452F28;
LABEL_64:
        (*v21)(v16);
      }

LABEL_65:
      v22 = *(v3 + 80);
      if (v22)
      {
        v23 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v22);
          --qword_1ED456A90;
          off_1ED452EB0(v22);
          v22 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_5;
          }

          v23 = &xmmword_1ED452F28;
        }

        (*v23)(v22);
      }

LABEL_5:
      *(v3 + 96) = 0u;
      *(v3 + 112) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      if (++v2 >= *(v1 + 72))
      {
        goto LABEL_71;
      }
    }

    v5 = &xmmword_1ED452F28;
LABEL_12:
    (*v5)(v4);
    goto LABEL_13;
  }

LABEL_71:
  v24 = *(v1 + 40);
  if (v24)
  {
    v25 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_77:
      (*v25)(v24);
      goto LABEL_78;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v24);
    --qword_1ED456A90;
    off_1ED452EB0(v24);
    v24 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v25 = &xmmword_1ED452F28;
      goto LABEL_77;
    }
  }

LABEL_78:
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v26 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_83:
    v27 = *v26;

    return v27(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v26 = &xmmword_1ED452F28;
    goto LABEL_83;
  }

  return result;
}

uint64_t sub_1819DB894(uint64_t a1, unsigned int a2, int a3, unsigned __int8 *a4, uint64_t *a5, void *a6)
{
  *a5 = 0;
  *a6 = 0;
  v109 = 0u;
  v110 = 0u;
  v111 = a2;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v12 = sub_181902484(2432, 1131228522);
  if (!v12)
  {
    return 7;
  }

  v13 = v12;
  v100 = a3;
  v99 = a5;
  v101 = a1;
  v102 = a6;
  *(v12 + 32) = 0;
  *(v12 + 16) = v12 + 2408;
  *(v12 + 24) = v12 + 32;
  *v12 = v12 + 32;
  v108 = a1;
  do
  {
    v14 = a4;
    v15 = a4;
    while (2)
    {
      v16 = *v15;
      switch(*v15)
      {
        case 0:
          v17 = 0;
          goto LABEL_38;
        case 9:
        case 0xA:
        case 0xD:
        case 0x20:
          ++v15;
          ++v14;
          continue;
        case 0x22:
          v23 = v15;
          break;
        case 0x28:
          v17 = 10;
          goto LABEL_38;
        case 0x29:
          v17 = 11;
          goto LABEL_38;
        case 0x2A:
          v17 = 15;
          goto LABEL_38;
        case 0x2B:
          v17 = 14;
          goto LABEL_38;
        case 0x2C:
          v17 = 13;
          goto LABEL_38;
        case 0x2D:
          v17 = 6;
          goto LABEL_38;
        case 0x3A:
          v17 = 5;
          goto LABEL_38;
        case 0x5E:
          v17 = 12;
          goto LABEL_38;
        case 0x7B:
          v17 = 7;
          goto LABEL_38;
        case 0x7D:
          v17 = 8;
LABEL_38:
          v106 = 1;
          LODWORD(i) = 1;
          goto LABEL_39;
        default:
          if ((v16 & 0x80) == 0 && !byte_181A25753[v16])
          {
            v107 = a4;
            sub_1819DD064(&v108, "fts5: syntax error near %.1s");
            goto LABEL_197;
          }

          for (i = 1; ; ++i)
          {
            v19 = v15[i];
            if ((v19 & 0x8000000000000000) == 0 && !byte_181A25753[v19])
            {
              break;
            }
          }

          v106 = i;
          if (i == 2)
          {
            if (*v15 == 21071)
            {
              v17 = 1;
            }

            else
            {
              v17 = 9;
            }
          }

          else if (i == 3)
          {
            v20 = *v15;
            v21 = *(v15 + 2);
            if (v20 ^ 0x4F4E | v21 ^ 0x54)
            {
              v22 = 9;
            }

            else
            {
              v22 = 3;
            }

            if (v20 ^ 0x4E41 | v21 ^ 0x44)
            {
              v17 = v22;
            }

            else
            {
              v17 = 2;
            }
          }

          else
          {
            v17 = 9;
          }

          goto LABEL_39;
      }

      break;
    }

    while (1)
    {
      v25 = v23 + 1;
      v24 = *(v23 + 1);
      if (v24 == 34)
      {
        v25 = v23 + 2;
        if (v23[2] != 34)
        {
          break;
        }
      }

      v23 = v25;
      if (!v24)
      {
        v107 = a4;
        sub_1819DD064(&v108, "unterminated string");
LABEL_197:
        v17 = 0;
        v106 = 1;
        goto LABEL_40;
      }
    }

    LODWORD(i) = v23 - v14 + 2;
    v106 = i;
    v17 = 9;
LABEL_39:
    v107 = &v15[i];
LABEL_40:
    v112 = 0;
    v113 = 0;
    v13[1] = &v108;
    v26 = *v13;
    v27 = **v13;
    v28 = v17;
    while (1)
    {
      if (v27 <= 0x22)
      {
        v32 = byte_181A257F4[v27] + v28;
        v33 = byte_181A25817[v32];
        v34 = &byte_181A258B3[v32];
        v35 = &unk_181A25890 + v27;
        if (v33 == v28)
        {
          v35 = v34;
        }

        v27 = *v35;
      }

      if (v27 < 0x53)
      {
        break;
      }

      if (v27 != 105 && v27 != 110)
      {
        v36 = v13[1];
LABEL_55:
        switch(v27)
        {
          case 'S':
            *(v36 + 32) = *(v26 + 1);
            goto LABEL_43;
          case 'T':
            v56 = *(v26 - 2);
            if (*(v36 + 16))
            {
              v57 = 0;
              if (!v56)
              {
                goto LABEL_164;
              }
            }

            else
            {
              v66 = *(*v36 + 32);
              if (sqlite3_initialize() || (v103 = 8 * ((v66 + 3) / 2), (v68 = sub_181902484(v103, 1913357809)) == 0))
              {
                v57 = 0;
                if (v66 >= -1)
                {
                  *(v36 + 16) = 7;
                }
              }

              else
              {
                v57 = v68;
                bzero(v68, v103);
                if (v66 >= 1)
                {
                  v69 = 0;
                  for (j = 0; j != v66; ++j)
                  {
                    if (v69 < *v56 && j == v56[v69 + 1])
                    {
                      ++v69;
                    }

                    else
                    {
                      v71 = *v57;
                      *v57 = v71 + 1;
                      v57[v71 + 1] = j;
                    }
                  }

                  goto LABEL_158;
                }
              }

              if (!v56)
              {
                goto LABEL_164;
              }
            }

LABEL_158:
            v79 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_163;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v56);
            --qword_1ED456A90;
            off_1ED452EB0(v56);
            v56 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v79 = &xmmword_1ED452F28;
LABEL_163:
              (*v79)(v56);
            }

LABEL_164:
            *(v26 - 8) = v57;
            goto LABEL_43;
          case 'U':
          case '^':
            *(v26 - 5) = *(v26 - 2);
            goto LABEL_43;
          case 'V':
          case 'Y':
            *(v26 + 1) = sub_1819DD220(v36, 0, (v26 + 8));
            goto LABEL_43;
          case 'W':
            v58 = sub_1819DD220(v36, 0, (v26 + 8));
            v59 = v58;
            *(v26 - 2) = v58;
            if (*(v36 + 16))
            {
              v60 = 0;
              if (!v58)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v67 = *(*v36 + 32);
              if (sqlite3_initialize() || (v104 = 8 * ((v67 + 3) / 2), (v72 = sub_181902484(v104, 1913357809)) == 0))
              {
                v60 = 0;
                if (v67 >= -1)
                {
                  *(v36 + 16) = 7;
                }
              }

              else
              {
                v60 = v72;
                bzero(v72, v104);
                if (v67 >= 1)
                {
                  v73 = 0;
                  for (k = 0; k != v67; ++k)
                  {
                    if (v73 < *v59 && k == v59[v73 + 1])
                    {
                      ++v73;
                    }

                    else
                    {
                      v75 = *v60;
                      *v60 = v75 + 1;
                      v60[v75 + 1] = k;
                    }
                  }

                  goto LABEL_165;
                }
              }

              if (!v59)
              {
                goto LABEL_171;
              }
            }

LABEL_165:
            v80 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_170;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v59);
            --qword_1ED456A90;
            off_1ED452EB0(v59);
            v59 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v80 = &xmmword_1ED452F28;
LABEL_170:
              (*v80)(v59);
LABEL_171:
              *(v26 - 2) = v60;
              goto LABEL_43;
            }

            *(v26 - 2) = v60;
            goto LABEL_43;
          case 'X':
            *(v26 - 2) = sub_1819DD220(v36, *(v26 - 2), (v26 + 8));
            goto LABEL_43;
          case 'Z':
            v45 = *(v26 - 5);
            v46 = *(v26 + 1);
            v47 = v36;
            v48 = 2;
            goto LABEL_102;
          case '[':
            v45 = *(v26 - 5);
            v46 = *(v26 + 1);
            v47 = v36;
            v48 = 1;
            goto LABEL_102;
          case '\\':
            v45 = *(v26 - 5);
            v46 = *(v26 + 1);
            v47 = v36;
            v48 = 3;
LABEL_102:
            *(v26 - 5) = sub_1819DD640(v47, v48, v45, v46, 0);
            goto LABEL_43;
          case ']':
            v54 = *(v26 - 2);
            v55 = *(v26 - 11);
            v114 = v55;
            if (*(*v36 + 116) == 1)
            {
              sub_1819DD064(v36, "fts5: column queries are not supported (detail=none)");
              if (!v55)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_1819E240C(v36, v54, v55, &v114);
              v55 = v114;
              if (!v114)
              {
                goto LABEL_42;
              }
            }

            v63 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_41;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v55);
            --qword_1ED456A90;
            off_1ED452EB0(v55);
            v55 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v63 = &xmmword_1ED452F28;
LABEL_41:
              (*v63)(v55);
            }

LABEL_42:
            *(v26 - 11) = *(v26 - 2);
            goto LABEL_43;
          case 'a':
            v52 = *(v26 - 2);
            v53 = *(v26 + 1);
            if (*(v36 + 16))
            {
              sub_1819DA880(*(v26 - 2));
              sub_1819DA880(v53);
              *(v26 - 2) = 0;
            }

            else
            {
              v65 = *(v26 - 2);
              if (*v52 == 2)
              {
                v65 = *&v52[2 * v52[10] + 10];
              }

              if (*v53)
              {
                if (*v65)
                {
                  *(v26 - 2) = sub_1819DD640(v36, 2, *(v26 - 2), *(v26 + 1), 0);
                }

                else
                {
                  v76 = *(v26 + 1);
                  v105 = v65;
                  if (v65 != v52)
                  {
                    *&v52[2 * v52[10] + 10] = v53;
                    v76 = v52;
                  }

                  v77 = *(*(v53 + 32) + 16);
                  v78 = *(v36 + 24) + 8 * (*(v36 + 20) + ~v77);
                  memmove(v78, (v78 + 8), 8 * v77);
                  --*(v36 + 20);
                  sub_1819DA880(v105);
                  *(v26 - 2) = v76;
                }
              }

              else
              {
                sub_1819DA880(*(v26 + 1));
                --*(v36 + 20);
                *(v26 - 2) = v52;
              }
            }

            goto LABEL_43;
          case 'b':
            *(v26 + 1) = sub_1819DD640(v36, 9, 0, 0, *(v26 + 1));
            goto LABEL_43;
          case 'c':
            v61 = sub_1819DD640(v36, 9, 0, 0, *(v26 + 1));
            v62 = *(v26 - 5);
            v114 = v62;
            if (*(*v36 + 116) == 1)
            {
              sub_1819DD064(v36, "fts5: column queries are not supported (detail=none)");
              if (!v62)
              {
                goto LABEL_117;
              }
            }

            else
            {
              sub_1819E240C(v36, v61, v62, &v114);
              v62 = v114;
              if (!v114)
              {
                goto LABEL_117;
              }
            }

            v64 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_116;
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
              v64 = &xmmword_1ED452F28;
LABEL_116:
              (*v64)(v62);
            }

LABEL_117:
            *(v26 - 5) = v61;
            goto LABEL_43;
          case 'd':
          case 'g':
            *(v26 + 1) = sub_1819DD9E4(v36, 0, *(v26 + 1));
            goto LABEL_43;
          case 'e':
            v50 = *(v26 + 1);
            if (v50 && *(v50 + 24))
            {
              *(v50 + 33) = 1;
              v50 = *(v26 + 1);
            }

            v51 = v36;
            v49 = 0;
            goto LABEL_100;
          case 'f':
            v37 = *(v26 - 11);
            if (*(v26 - 20) != 4 || *v37 != 1380009294)
            {
              sub_1819DD064(v36, "fts5: syntax error near %.*s", *(v26 - 20), v37);
            }

            v38 = *(v26 - 5);
            if (!v38)
            {
              goto LABEL_132;
            }

            v39 = *(v26 - 2);
            if (!v39)
            {
              v41 = 10;
LABEL_131:
              *v38 = v41;
              goto LABEL_132;
            }

            if (v39 < 1)
            {
              v41 = 0;
              goto LABEL_131;
            }

            v40 = 0;
            v41 = 0;
            v42 = *(v26 - 2);
            while (1)
            {
              v43 = v42[v40] - 48;
              if (v43 >= 0xA)
              {
                break;
              }

              v44 = 10 * v41 + v43;
              if (v41 < 214748363)
              {
                v41 = v44;
              }

              if (v39 == ++v40)
              {
                goto LABEL_131;
              }
            }

            sub_1819DD064(v36, "expected integer, got %.*s", *(v26 - 2), v42);
LABEL_132:
            *(v26 - 11) = *(v26 - 5);
            break;
          case 'h':
            v49 = *(v26 - 2);
            v50 = *(v26 + 1);
            v51 = v36;
LABEL_100:
            *(v26 - 2) = sub_1819DD9E4(v51, v49, v50);
            goto LABEL_43;
          case 'i':
            *(v26 + 4) = 0;
            *(v26 + 10) = 0;
            goto LABEL_43;
          case 'j':
            *(v26 - 1) = *(v26 + 8);
            goto LABEL_43;
          case 'k':
            *(v26 - 8) = sub_1819DDB50(v36, *(v26 - 8), (v26 - 16), *(v26 + 2));
            goto LABEL_43;
          case 'l':
            *(v26 - 2) = sub_1819DDB50(v36, 0, (v26 - 16), *(v26 + 2));
            goto LABEL_43;
          case 'm':
            *(v26 + 2) = 1;
            goto LABEL_43;
          case 'n':
            *(v26 + 8) = 0;
            goto LABEL_43;
          default:
            goto LABEL_43;
        }

        goto LABEL_43;
      }

      v36 = v13[1];
      if (v26 >= v13[2])
      {
        while (v26 > v13[3])
        {
          *v13 = v26 - 24;
          sub_1819DD0B8(v26[1], v26 + 1);
          v26 = *v13;
        }

        sub_1819DD064(v36, "fts5: parser stack overflow");
        v13[1] = v36;
        goto LABEL_188;
      }

      if (v27 - 83 <= 0x1B)
      {
        goto LABEL_55;
      }

LABEL_43:
      v29 = v27 - 83;
      v30 = byte_181A2591C[v29];
      v31 = &v26[24 * byte_181A257D8[v29]];
      v27 = byte_181A258B3[byte_181A25938[*v31] + v30];
      v31[24] = v27;
      v26 = v31 + 24;
      *v13 = v26;
      v26[1] = v30;
    }

    if (v27 > 0x4F)
    {
      if (v27 == 81)
      {
        *v13 = v26 - 24;
      }

      else
      {
        v112 = v14;
        v113 = v106;
        v83 = v13[1];
        sub_1819DD064(v83, "fts5: syntax error near %.*s", v106, v15);
        v13[1] = v83;
        sub_1819DD0B8(v28, &v112);
      }
    }

    else
    {
      *v13 = v26 + 24;
      if (v26 + 24 <= v13[2])
      {
        v82 = v27 + 31;
        if (v27 <= 0x22)
        {
          v82 = v27;
        }

        v26[24] = v82;
        v26[25] = v28;
        *(v26 + 4) = v14;
        *(v26 + 5) = v106;
      }

      else
      {
        *v13 = v26;
        v81 = v13[1];
        while (v26 > v13[3])
        {
          *v13 = v26 - 24;
          sub_1819DD0B8(v26[1], v26 + 1);
          v26 = *v13;
        }

        sub_1819DD064(v81, "fts5: parser stack overflow");
        v13[1] = v81;
      }
    }

LABEL_188:
    a4 = v107;
  }

  while (v28 && !DWORD2(v109));
  v84 = *v13;
  v85 = v13[3];
  while (v84 > v85)
  {
    v86 = v84[1];
    if (v86 >= 0x10)
    {
      sub_1819DD0B8(v86, v84 + 1);
      v85 = v13[3];
    }

    v84 -= 24;
  }

  v87 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
    --qword_1ED456A90;
    off_1ED452EB0(v13);
    v13 = xmmword_1ED456AF0;
    v88 = v102;
    if (xmmword_1ED456AF0)
    {
      v87 = &xmmword_1ED452F28;
      goto LABEL_209;
    }
  }

  else
  {
    v88 = v102;
LABEL_209:
    (*v87)(v13);
  }

  if (!DWORD2(v109))
  {
    if (*(v101 + 32) <= v100)
    {
      goto LABEL_224;
    }

    if (sqlite3_initialize())
    {
      goto LABEL_226;
    }

    v89 = sub_181902484(8, 1913357809);
    if (!v89)
    {
      goto LABEL_226;
    }

    v90 = v89;
    *v89 = 0;
    *v89 = 1;
    v89[1] = v100;
    v112 = v89;
    if (*(v108 + 116) == 1)
    {
      sub_1819DD064(&v108, "fts5: column queries are not supported (detail=none)");
      goto LABEL_217;
    }

    sub_1819E240C(&v108, *(&v110 + 1), v89, &v112);
    v90 = v112;
    if (v112)
    {
LABEL_217:
      v91 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_222;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
      --qword_1ED456A90;
      off_1ED452EB0(v90);
      v90 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v91 = &xmmword_1ED452F28;
LABEL_222:
        (*v91)(v90);
      }
    }

    if (!DWORD2(v109))
    {
LABEL_224:
      if (sqlite3_initialize())
      {
        *v99 = 0;
        goto LABEL_226;
      }

      v96 = sub_181902484(40, 0x10A004066E89D7ELL);
      *v99 = v96;
      if (v96)
      {
        v97 = *(&v110 + 1);
        *v96 = 0;
        *(v96 + 8) = v101;
        *(v96 + 16) = v97;
        *(v96 + 32) = v110;
        v98 = HIDWORD(v109);
        *(v96 + 24) = 0;
        *(v96 + 28) = v98;
        *&v110 = 0;
        goto LABEL_234;
      }

LABEL_226:
      DWORD2(v109) = 7;
    }
  }

  sub_1819DA880(*(&v110 + 1));
  v92 = v110;
  if (!v110)
  {
    goto LABEL_234;
  }

  v93 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_233:
    (*v93)(v92);
    goto LABEL_234;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v92);
  --qword_1ED456A90;
  off_1ED452EB0(v92);
  v92 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v93 = &xmmword_1ED452F28;
    goto LABEL_233;
  }

LABEL_234:
  v94 = v109;
  if (*v88)
  {
    if (v109)
    {
      v95 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_241;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v94);
      --qword_1ED456A90;
      off_1ED452EB0(v94);
      v94 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v95 = &xmmword_1ED452F28;
LABEL_241:
        (*v95)(v94);
      }
    }
  }

  else
  {
    *v88 = v109;
  }

  return DWORD2(v109);
}

uint64_t sub_1819DC8C4(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (!a2 || (v3 = *a1) == 0)
  {
    v6 = 0;
    if (a2)
    {
      *a1 = a2;
    }

    return v6;
  }

  v4 = *(v3 + 28);
  v5 = *(a2 + 28);
  *(v3 + 16) = sub_1819DD640(&v18, 2, *(v3 + 16), *(a2 + 16), 0);
  *(v2 + 16) = 0;
  v6 = v19;
  if (!v19)
  {
    v7 = *(v3 + 32);
    if (sqlite3_initialize() || (v8 = v5 + v4, (v9 = sub_18190287C(v7, (8 * v8) & ~((8 * v8) >> 31), 0x2004093837F09)) == 0))
    {
      v6 = 7;
    }

    else
    {
      v10 = v9;
      memmove(&v9[8 * *(v2 + 28)], v9, 8 * *(v3 + 28));
      v11 = *(v2 + 28);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = 8 * v11;
        do
        {
          *&v10[v12] = *(*(v2 + 32) + v12);
          v12 += 8;
        }

        while (v13 != v12);
      }

      v6 = 0;
      *(v3 + 28) = v8;
      *(v3 + 32) = v10;
    }
  }

  v14 = *(v2 + 32);
  if (v14)
  {
    v15 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
      --qword_1ED456A90;
      off_1ED452EB0(v14);
      v14 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_20;
      }

      v15 = &xmmword_1ED452F28;
    }

    (*v15)(v14);
  }

LABEL_20:
  v16 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_25:
    (*v16)(v2);
    return v6;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v16 = &xmmword_1ED452F28;
    goto LABEL_25;
  }

  return v6;
}

uint64_t sub_1819DCAE0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 40);
  v6 = *(v4 + 16);
  *v4 = *(a1 + 32);
  *(v4 + 24) = a3;
  result = sub_1819E2F50(v4, v6);
  if (result)
  {
    goto LABEL_14;
  }

  if (*(v6 + 4))
  {
    goto LABEL_3;
  }

  v8 = *(v6 + 24);
  if (*(v4 + 24))
  {
    if (v8 > v5)
    {
      goto LABEL_8;
    }

LABEL_3:
    result = 0;
    goto LABEL_10;
  }

  if (v8 >= v5)
  {
    goto LABEL_3;
  }

LABEL_8:
  result = (*(v6 + 16))(v4, v6, 1, v5);
LABEL_10:
  while (*(v6 + 8) && result == 0)
  {
    result = (*(v6 + 16))(v4, v6, 0, 0);
  }

LABEL_14:
  *(a2 + 80) |= 0x4E | (*(*(v4 + 16) + 4) != 0);
  return result;
}

uint64_t sub_1819DCBC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(v4 + 28);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 24);
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = 8 * ((v5 + 2) / 2);
  v9 = sub_181902484(v8 + 24, 0x1070040E4B9883DLL);
  if (!v9)
  {
    return 7;
  }

  v10 = v9;
  bzero(v9, v8 + 24);
  *(v10 + 6) = v5;
  result = sub_1819F1508(v10, v6, v11, v12, v13, v14, v15, v16, v6[2]);
  *(a2 + 72) = v10;
  if (result || (*(a1 + 56) = a2, result = sub_1819F16C0(a2), *(a1 + 56) = 0, result))
  {
    v17 = result;
    sqlite3_finalize(*v10);
    v18 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_15;
      }

      v18 = &xmmword_1ED452F28;
    }

    (*v18)(v10);
LABEL_15:
    *(a2 + 72) = 0;
    return v17;
  }

  return result;
}

char *sub_1819DCD80(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v5)(v4);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  result = sqlite3_vmprintf(a2, va);
  *(a1 + 16) = result;
  return result;
}

BOOL sub_1819DCE5C(uint64_t a1, sqlite3_value *a2)
{
  if (!a2)
  {
    sub_1819012D0(99877);
    return 0;
  }

  if (((0x1000000010001uLL >> *(a2 + 10)) & 1) == 0)
  {
    return 0;
  }

  v4 = sqlite3_value_blob(a2);
  v5 = a2;
  v6 = *(a2 + 10);
  if ((v6 & 2) != 0 && *(a2 + 22) == 1)
  {
    v7 = *(a2 + 4);
    goto LABEL_12;
  }

  if ((v6 & 0x10) == 0)
  {
    if ((v6 & 1) == 0)
    {
      v8 = v4;
      v7 = sub_18193CB44(v5, 1);
      v4 = v8;
      goto LABEL_12;
    }

    return 0;
  }

  v7 = *(a2 + 4);
  if ((*(a2 + 10) & 0x400) != 0)
  {
    v7 += *a2;
  }

LABEL_12:
  if (v7 < 17)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v11 = *(v9 + 96);
  v10 = *(v9 + 104);
  return *v4 == v11 && v4[1] == v10;
}

uint64_t sub_1819DCF2C(uint64_t a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  v10 = sqlite3_value_blob(a1);
  if (!a1)
  {
    sub_1819012D0(93690);
    goto LABEL_11;
  }

  v11 = *(a1 + 20);
  if ((v11 & 2) == 0 || *(a1 + 22) != 1)
  {
    if ((v11 & 0x10) != 0)
    {
      v12 = *(a1 + 16);
      if ((*(a1 + 20) & 0x400) != 0)
      {
        v12 += *a1;
      }

      v13 = v10 + 16;
      if (v10[16])
      {
        goto LABEL_16;
      }

LABEL_12:
      v14 = 16;
      LODWORD(v15) = 16;
LABEL_20:
      v19 = 0;
      *a4 = v13;
      *a5 = v15 - 16;
      *a2 = &v10[v14 + 1];
      *a3 = v12 + ~v15;
      return v19;
    }

    if ((v11 & 1) == 0)
    {
      v12 = sub_18193CB44(a1, 1);
      v13 = v10 + 16;
      if (v10[16])
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_11:
    v12 = 0;
    v13 = v10 + 16;
    if (!v10[16])
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v12 = *(a1 + 16);
  v13 = v10 + 16;
  if (!v10[16])
  {
    goto LABEL_12;
  }

LABEL_16:
  v16 = (v10 + 17);
  v17 = -16;
  while (-(v12 - 1) != v17)
  {
    v18 = *v16++;
    --v17;
    if (!v18)
    {
      v14 = -v17;
      v15 = -v17;
      goto LABEL_20;
    }
  }

  return 20;
}

char *sub_1819DD064(char *result, char *a2, ...)
{
  va_start(va, a2);
  if (!*(result + 4))
  {
    v2 = result;
    result = sqlite3_vmprintf(a2, va);
    *(v2 + 8) = result;
    *(v2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1819DD0B8(uint64_t result, uint64_t *a2)
{
  if (result > 21)
  {
    if ((result - 22) >= 2)
    {
      if (result == 24)
      {
        v7 = *a2;

        return sub_1819DAAEC(v7);
      }
    }

    else
    {
      v3 = *a2;

      return sub_1819DA97C(v3);
    }
  }

  else
  {
    if ((result - 17) < 3)
    {
      v2 = *a2;

      return sub_1819DA880(v2);
    }

    if ((result - 20) >= 2)
    {
      return result;
    }

    v4 = *a2;
    if (!*a2)
    {
      return result;
    }

    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_17;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    result = off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
LABEL_17:
      v6 = *v5;

      return v6(v4);
    }
  }

  return result;
}

_DWORD *sub_1819DD220(uint64_t *a1, int *a2, uint64_t a3)
{
  if (*(a1 + 4))
  {
LABEL_18:
    if (a2)
    {
      v17 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(a2);
        --qword_1ED456A90;
        off_1ED452EB0(a2);
        a2 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          return 0;
        }

        v17 = &xmmword_1ED452F28;
      }

      (*v17)(a2);
    }

    return 0;
  }

  v5 = *a3;
  v6 = *(a3 + 8);
  if ((v6 & 0x80000000) != 0)
  {
    v6 = strlen(*a3);
    v7 = sqlite3_initialize();
    if ((v6 & 0x80000000) != 0)
    {
LABEL_17:
      *(a1 + 4) = 7;
      goto LABEL_18;
    }
  }

  else
  {
    v7 = sqlite3_initialize();
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v8 = sub_181902484(v6 + 1, 0x100004077774924);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  memcpy(v8, v5, v6);
  v9[v6] = 0;
  if (*(a1 + 4))
  {
    goto LABEL_18;
  }

  v10 = *a1;
  v11 = *v9;
  if ((v11 - 34) <= 0x3E && ((1 << (v11 - 34)) & 0x4200000000000021) != 0)
  {
    if (v11 == 91)
    {
      v13 = 93;
    }

    else
    {
      v13 = *v9;
    }

    v14 = *(v9 + 1);
    if (v9[1])
    {
      v15 = 0;
      v16 = 1;
      while (1)
      {
        v19 = v16 + 1;
        if (v14 == v13)
        {
          if (v9[v19] != v13)
          {
LABEL_31:
            v15 = v15;
            goto LABEL_33;
          }

          LODWORD(v19) = v16 + 2;
          LOBYTE(v14) = v13;
        }

        v9[v15++] = v14;
        v14 = v9[v19];
        v16 = v19;
        if (!v9[v19])
        {
          goto LABEL_31;
        }
      }
    }

    v15 = 0;
LABEL_33:
    v9[v15] = 0;
  }

  v20 = *(v10 + 32);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *(v10 + 40);
    while (1)
    {
      v23 = *(v22 + 8 * v21);
      if (v23)
      {
        break;
      }

LABEL_36:
      if (++v21 == v20)
      {
        goto LABEL_44;
      }
    }

    for (i = v9; ; ++i)
    {
      if (*v23 == *i)
      {
        if (!*v23)
        {
          if (v21 == v20)
          {
            goto LABEL_44;
          }

LABEL_46:
          if (a2)
          {
            v26 = *a2;
          }

          else
          {
            v26 = 0;
          }

          v27 = sqlite3_initialize();
          if ((v26 + 4) < 3 || v27 || (v25 = sub_18190287C(a2, 8 * ((v26 + 3) / 2), 0x100004000313F17)) == 0)
          {
            v25 = 0;
            *(a1 + 4) = 7;
          }

          else if (v26 < 1)
          {
            LODWORD(v28) = 0;
LABEL_60:
            if (v26 > v28)
            {
              v30 = v26 - v28;
              v31 = v26;
              if (v30 < 8)
              {
                goto LABEL_78;
              }

              v31 = v26 - (v30 & 0xFFFFFFFFFFFFFFF8);
              v32 = &v25[v26 - 3];
              v33 = v30 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v34 = *(v32 - 1);
                *(v32 + 4) = *v32;
                *(v32 - 12) = v34;
                v32 -= 2;
                v33 -= 8;
              }

              while (v33);
              if (v30 != (v30 & 0xFFFFFFFFFFFFFFF8))
              {
LABEL_78:
                do
                {
                  v25[v31 + 1] = v25[v31];
                  --v31;
                }

                while (v31 > v28);
              }
            }

            v25[v28 + 1] = v21;
            *v25 = v26 + 1;
          }

          else
          {
            v28 = 0;
            while (1)
            {
              v29 = v25[v28 + 1];
              if (v29 == v21)
              {
                break;
              }

              if (v29 > v21)
              {
                goto LABEL_60;
              }

              if (v26 == ++v28)
              {
                LODWORD(v28) = v26;
                goto LABEL_60;
              }
            }
          }

          goto LABEL_67;
        }
      }

      else if (byte_181A20298[*v23] != byte_181A20298[*i])
      {
        goto LABEL_36;
      }

      ++v23;
    }
  }

  LODWORD(v21) = 0;
  if (v20)
  {
    goto LABEL_46;
  }

LABEL_44:
  sub_1819DD064(a1, "no such column: %s", v9);
  v25 = 0;
LABEL_67:
  v35 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    v36 = v25;
    goto LABEL_73;
  }

  v36 = v25;
  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
  --qword_1ED456A90;
  off_1ED452EB0(v9);
  v9 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v35 = &xmmword_1ED452F28;
LABEL_73:
    (*v35)(v9);
  }

  result = v36;
  if (!v36)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1819DD640(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (*(a1 + 16))
  {
    goto LABEL_2;
  }

  if (a2 == 9 && !a5)
  {
    return 0;
  }

  if (a2 != 9 && !a3)
  {
    return a4;
  }

  if (a2 != 9 && !a4)
  {
    return a3;
  }

  if (a2 != 9)
  {
    if (a2 == 3)
    {
      v9 = 3;
      v10 = a1;
      v8 = a3;
      v11 = 2;
      goto LABEL_29;
    }

    if ((a2 - 1) <= 1)
    {
      if (*a3 == a2)
      {
        v11 = a3[10] + 1;
      }

      else
      {
        v11 = 2;
      }

      v8 = a3;
      v9 = a2;
      v10 = a1;
      if (*a4 == a2)
      {
        v11 = v11 + a4[10] - 1;
      }

      goto LABEL_29;
    }

LABEL_24:
    v9 = a2;
    v10 = a1;
    v8 = a3;
    v11 = 0;
    goto LABEL_29;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_24;
  }

  v8 = a3;
  if (*(*(a5 + 24) + 24) >= 2)
  {
    result = sub_1819DDECC(a1, a5);
    a3 = v8;
    goto LABEL_17;
  }

  v9 = 9;
  v10 = a1;
  v11 = 0;
LABEL_29:
  if (sqlite3_initialize() || (v12 = 8 * v11, (v13 = sub_181902484(v12 + 48, 1913357809)) == 0))
  {
    a3 = v8;
    if (v11 >= -5)
    {
      *(v10 + 16) = 7;
    }

    goto LABEL_2;
  }

  v14 = v13;
  bzero(v13, v12 + 48);
  result = v14;
  *v14 = v9;
  *(v14 + 32) = v5;
  v15 = sub_1819DE848;
  if (v9 == 1)
  {
    a3 = v8;
    goto LABEL_44;
  }

  a3 = v8;
  if (v9 == 2)
  {
    v15 = sub_1819DE9B0;
LABEL_44:
    *(v14 + 16) = v15;
LABEL_45:
    sub_1819DE178(v14, a3);
    sub_1819DE178(v14, v6);
    result = v14;
    if (*(v14 + 12) < 257)
    {
      return result;
    }

    sub_1819DD064(v10, "fts5 expression tree is too large (maximum depth %d)", 256);
    sub_1819DA880(v14);
    v6 = 0;
    a3 = 0;
LABEL_2:
    sub_1819DA880(a3);
    sub_1819DA880(v6);
    sub_1819DA97C(v5);
    return 0;
  }

  if (v9 != 9)
  {
    *(v14 + 16) = sub_1819DEA0C;
    goto LABEL_45;
  }

  v16 = sub_1819DE478;
  if (*(v5 + 16) == 1)
  {
    v17 = *(v5 + 24);
    v16 = sub_1819DE478;
    if (*(v17 + 24) == 1)
    {
      v16 = sub_1819DE478;
      if (!*(v17 + 64))
      {
        v16 = sub_1819DE478;
        if (!*(v17 + 33))
        {
          *v14 = 4;
          v16 = sub_1819DE2C4;
        }
      }
    }
  }

  *(v14 + 16) = v16;
  v18 = *(v5 + 16);
  if (v18 < 1)
  {
    if (!*(*v10 + 116))
    {
      return result;
    }

    goto LABEL_60;
  }

  v19 = 0;
  v20 = (v5 + 24);
  do
  {
    *v20[v19] = v14;
    if (!*(v20[v19] + 24))
    {
      *(v14 + 16) = 0;
      *v14 = 0;
      v18 = *(v5 + 16);
    }

    ++v19;
  }

  while (v19 < v18);
  if (!*(*v10 + 116))
  {
    goto LABEL_17;
  }

  if (v18 != 1)
  {
LABEL_60:
    v23 = "NEAR";
    goto LABEL_61;
  }

  v21 = *v20;
  v22 = *(v21 + 24);
  if (v22 > 1 || v22 == 1 && *(v21 + 33))
  {
    v23 = "phrase";
LABEL_61:
    sub_1819DD064(v10, "fts5: %s queries are not supported (detail!=full)", v23);
    sub_1819DA880(v14);
    v5 = 0;
    a3 = v8;
    goto LABEL_2;
  }

LABEL_17:
  if (!result)
  {
    goto LABEL_2;
  }

  return result;
}

_OWORD *sub_1819DD9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v5 = *(a2 + 16);
    if ((v5 & 7) != 0)
    {
      result = a2;
      goto LABEL_5;
    }

    v11 = a2;
    if (sqlite3_initialize())
    {
      goto LABEL_14;
    }

    result = sub_18190287C(v11, 8 * v5 + 96, 0x1020040903548AELL);
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
    if (sqlite3_initialize() || (result = sub_181902484(96, 654747354)) == 0)
    {
LABEL_14:
      *(a1 + 16) = 7;
      a2 = v11;
LABEL_15:
      sub_1819DA97C(a2);
      sub_1819DAAEC(a3);
      return 0;
    }

    result[4] = 0u;
    result[5] = 0u;
    result[2] = 0u;
    result[3] = 0u;
    *result = 0u;
    result[1] = 0u;
  }

LABEL_5:
  v7 = *(result + 4);
  if (v7 >= 1)
  {
    v8 = *(result + (v7 - 1) + 3);
    if (!*(a3 + 24))
    {
      v12 = result;
      sub_1819DAAEC(a3);
      result = v12;
      --*(v12 + 4);
      --*(a1 + 20);
      v7 = *(v12 + 4);
      goto LABEL_17;
    }

    if (!*(v8 + 24))
    {
      v9 = result;
      sub_1819DAAEC(v8);
      result = v9;
      v10 = *(a1 + 20);
      *(*(a1 + 24) + 8 * v10 - 16) = a3;
      *(a1 + 20) = v10 - 1;
      v7 = *(v9 + 4) - 1;
    }
  }

  v8 = a3;
LABEL_17:
  *(result + 4) = v7 + 1;
  *(result + v7 + 3) = v8;
  return result;
}

uint64_t sub_1819DDB50(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v34[1] = *a1;
  v35 = 0;
  v34[0] = a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  if ((v9 & 0x80000000) != 0)
  {
    v9 = strlen(*a3);
  }

  v10 = sqlite3_initialize();
  v11 = 7;
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  if (v10)
  {
    goto LABEL_40;
  }

  v12 = sub_181902484(v9 + 1, 0x100004077774924);
  if (!v12)
  {
    goto LABEL_40;
  }

  v13 = v12;
  memcpy(v12, v8, v9);
  v13[v9] = 0;
  if (a4)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = *v13;
  if ((v15 - 34) <= 0x3E && ((1 << (v15 - 34)) & 0x4200000000000021) != 0)
  {
    if (v15 == 91)
    {
      v17 = 93;
    }

    else
    {
      v17 = *v13;
    }

    v18 = v13[1];
    if (v13[1])
    {
      v19 = 0;
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (v18 == v17)
        {
          if (v13[v21] != v17)
          {
LABEL_22:
            v19 = v19;
            goto LABEL_24;
          }

          LODWORD(v21) = v20 + 2;
          LOBYTE(v18) = v17;
        }

        v13[v19++] = v18;
        v18 = v13[v21];
        v20 = v21;
        if (!v13[v21])
        {
          goto LABEL_22;
        }
      }
    }

    v19 = 0;
LABEL_24:
    v13[v19] = 0;
  }

  v22 = strlen(v13);
  if (*(v7 + 128) || (v11 = sub_1819D630C(v7)) == 0)
  {
    v23 = *(v7 + 144);
    if (v23)
    {
      v24 = (*(v23 + 16))(*(v7 + 128), v34, v14, v13, v22, sub_1819E21D0);
    }

    else
    {
      v24 = (*(*(v7 + 136) + 24))(*(v7 + 128), v34, v14, v13, v22, *(v7 + 168), *(v7 + 176), sub_1819E21D0);
    }

    v11 = v24;
  }

  v25 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_37;
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
    v25 = &xmmword_1ED452F28;
LABEL_37:
    (*v25)(v13);
  }

  if (v11 || (v11 = v35) != 0)
  {
LABEL_40:
    *(a1 + 16) = v11;
LABEL_41:
    sub_1819DAAEC(v34[0]);
    return 0;
  }

  if (!a2)
  {
    v27 = *(a1 + 20);
    if ((v27 & 7) == 0)
    {
      v30 = v27 + 8;
      v31 = *(a1 + 24);
      v32 = sqlite3_initialize();
      if (!v30 || v32 || (v33 = sub_18190287C(v31, 8 * v30, 0x2004093837F09)) == 0)
      {
        *(a1 + 16) = 7;
        goto LABEL_41;
      }

      *(a1 + 24) = v33;
      v27 = *(a1 + 20);
    }

    *(a1 + 20) = v27 + 1;
  }

  v28 = v34[0];
  if (v34[0])
  {
    v29 = *(v34[0] + 24);
    if (v29)
    {
      *(v34[0] + 40 * (v29 - 1) + 32) = a4;
    }
  }

  else if (*(a1 + 16))
  {
    v28 = 0;
    v34[0] = 0;
  }

  else if (sqlite3_initialize() || (v28 = sub_181902484(72, 1913357809)) == 0)
  {
    v28 = 0;
    *(a1 + 16) = 7;
    v34[0] = 0;
  }

  else
  {
    *(v28 + 64) = 0;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *v28 = 0u;
    *(v28 + 16) = 0u;
    v34[0] = v28;
  }

  *(*(a1 + 24) + 8 * *(a1 + 20) - 8) = v28;
  return v34[0];
}

uint64_t sub_1819DDECC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v6 = *(*(a2 + 24) + 24);
  v7 = 8 * v6 + 56;
  if (sqlite3_initialize() || (v8 = sub_181902484(v7, 1913357809)) == 0)
  {
    if (v7 >= 1)
    {
      v2 = 0;
      *(a1 + 16) = 7;
      return v2;
    }

    return 0;
  }

  v2 = v8;
  bzero(v8, v7);
  *v2 = 2;
  *(v2 + 40) = v6;
  *(v2 + 12) = 1;
  *(v2 + 16) = sub_1819DE9B0;
  --*(a1 + 20);
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = (v2 + 48);
    v11 = 40 * v6;
    do
    {
      if (!*(a1 + 16))
      {
        if (sqlite3_initialize() || (v12 = sub_181902484(72, 1913357809)) == 0)
        {
          *(a1 + 16) = 7;
        }

        else
        {
          v13 = v12;
          *(v12 + 64) = 0;
          *(v12 + 32) = 0u;
          *(v12 + 48) = 0u;
          *v12 = 0u;
          *(v12 + 16) = 0u;
          v14 = *(a1 + 20);
          v15 = *(a1 + 24);
          if ((v14 & 7) != 0)
          {
            goto LABEL_16;
          }

          v19 = v14 + 8;
          v20 = sqlite3_initialize();
          if (v19)
          {
            if (!v20)
            {
              v21 = sub_18190287C(v15, 8 * v19, 0x2004093837F09);
              if (v21)
              {
                v15 = v21;
                *(a1 + 24) = v21;
                v14 = *(a1 + 20);
LABEL_16:
                v16 = *(a2 + 24);
                *(a1 + 20) = v14 + 1;
                *(v15 + 8 * v14) = v13;
                *(v13 + 24) = 1;
                v17 = v16 + v9;
                if (*(a1 + 16))
                {
                  v18 = 0;
                }

                else
                {
                  v22 = *(v17 + 52);
                  if ((v22 & 0x80000000) != 0)
                  {
                    v22 = strlen(*(v17 + 40));
                  }

                  __src = *(v17 + 40);
                  v23 = sqlite3_initialize();
                  if ((v22 & 0x80000000) != 0 || v23 || (v24 = sub_181902484(v22 + 1, 0x100004077774924)) == 0)
                  {
                    v18 = 0;
                    *(a1 + 16) = 7;
                  }

                  else
                  {
                    v18 = v24;
                    memcpy(v24, __src, v22);
                    v18[v22] = 0;
                  }
                }

                *(v13 + 40) = v18;
                *(v13 + 48) = *(v17 + 48);
                v25 = sub_1819DD9E4(a1, 0, v13);
                *v10 = sub_1819DD640(a1, 9, 0, 0, v25);
                goto LABEL_11;
              }
            }
          }

          *(a1 + 16) = 7;
          sub_1819DAAEC(v13);
        }
      }

LABEL_11:
      ++v10;
      v9 += 40;
    }

    while (v11 != v9);
  }

  if (*(a1 + 16))
  {
    sub_1819DA880(v2);
    return 0;
  }

  else
  {
    sub_1819DA97C(a2);
  }

  return v2;
}

_DWORD *sub_1819DE178(_DWORD *result, _DWORD *a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[10];
  if (*result == 3 || *a2 != *result)
  {
    result[10] = v4 + 1;
    *&result[2 * v4 + 12] = a2;
  }

  else
  {
    memcpy(&result[2 * v4 + 12], a2 + 12, 8 * a2[10]);
    v3[10] += v2[10];
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_8:
      result = (*v5)(v2);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    result = off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_8;
    }
  }

LABEL_10:
  v6 = v3[10];
  if (v4 < v6)
  {
    v7 = v3[3];
    v8 = &v3[2 * v4 + 12];
    v9 = v6 - v4;
    do
    {
      v10 = *v8++;
      v11 = *(v10 + 12);
      if (v7 <= v11 + 1)
      {
        v7 = v11 + 1;
      }

      v3[3] = v7;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1819DE2C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(*(a2 + 32) + 24) + 56);
  v7 = *(v6 + 72);
  if (a3)
  {
    if (v7)
    {
      v9 = *(v6 + 32);
      do
      {
        sub_1819DEB74(v9, v6, 1, a4);
        if (*(v9 + 60))
        {
          break;
        }

        if (*(v6 + 20))
        {
          break;
        }

        v10 = *(v6 + 104 + (*(*(v6 + 96) + 4) << 7) + 112);
        v11 = *(v6 + 76);
        if (!v11 && v10 >= a4)
        {
          break;
        }
      }

      while (!v11 || v10 > a4);
    }

    else
    {
      sub_1819DEA54(*(*(*(a2 + 32) + 24) + 56), 1, a4);
    }
  }

  else if (v7)
  {
    sub_1819DEB74(*(v6 + 32), *(*(*(a2 + 32) + 24) + 56), 0, 0);
  }

  else
  {
    v13 = *(v6 + 24);
    v12 = *(v6 + 32);
    v14 = *(v13 + 32);
    if (v14 >= 1)
    {
      for (i = 0; i < v14; ++i)
      {
        v16 = *(v13 + 56 + 8 * i);
        if (!*(v16 + 20) && *v16 == *v6)
        {
          sub_1819DEB74(v12, v16, 0, 0);
          v14 = *(v13 + 32);
        }
      }
    }

    if (!*(v12 + 60))
    {
      sub_1819DF108(v6);
    }
  }

  v17 = *(v6 + 32);
  result = *(v17 + 60);
  *(v17 + 60) = 0;
  if (result || *(v6 + 20))
  {
    v19 = 0;
    *(a2 + 4) = 1;
  }

  else
  {
    v20 = *(*(a2 + 32) + 24);
    v21 = *(v20 + 56);
    v22 = *(v21 + 16);
    *(v20 + 16) = v22;
    if (!*(*(a1 + 8) + 116))
    {
      *(v20 + 8) = *(v21 + 8);
    }

    *(a2 + 24) = *v21;
    v19 = v22 == 0;
  }

  *(a2 + 8) = v19;
  return result;
}

uint64_t sub_1819DE478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *(*(a2 + 32) + 24);
  *(a2 + 8) = 0;
  if (*(v8 + 64))
  {
    v9 = 0;
    v10 = 0;
    v11 = v8 + 32;
    v12 = v8 + 32;
    do
    {
      v13 = *(v12 + 24);
      if (!*(v13 + 20))
      {
        v14 = *v13;
        if (v10 && *(a1 + 24) == v14 < v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = 1;
          v9 = v14;
        }
      }

      v12 = *(v12 + 32);
    }

    while (v12);
    v15 = 1;
    while (1)
    {
      v16 = v15;
      v17 = *(v11 + 24);
      if (!*(v17 + 20))
      {
        v18 = *v17;
        if (*v17 == v9)
        {
          if (a3)
          {
LABEL_19:
            if (*(v17 + 72))
            {
              v19 = *(v17 + 32);
              do
              {
                sub_1819DEB74(v19, v17, 1, a4);
                if (*(v19 + 60))
                {
                  break;
                }

                if (*(v17 + 20))
                {
                  break;
                }

                v20 = *(v17 + 104 + (*(*(v17 + 96) + 4) << 7) + 112);
                v21 = *(v17 + 76);
                if (!v21 && v20 >= a4)
                {
                  break;
                }
              }

              while (!v21 || v20 > a4);
            }

            else
            {
              sub_1819DEA54(*(v11 + 24), 1, a4);
            }
          }

          else if (*(v17 + 72))
          {
            sub_1819DEB74(*(v17 + 32), *(v11 + 24), 0, 0);
          }

          else
          {
            v43 = v7;
            v44 = v6;
            v23 = *(v17 + 24);
            v22 = *(v17 + 32);
            v24 = *(v23 + 32);
            if (v24 >= 1)
            {
              for (i = 0; i < v24; ++i)
              {
                v26 = *(v23 + 56 + 8 * i);
                if (!*(v26 + 20) && *v26 == *v17)
                {
                  sub_1819DEB74(v22, v26, 0, 0);
                  v24 = *(v23 + 32);
                }
              }
            }

            v7 = v43;
            v6 = v44;
            if (!*(v22 + 60))
            {
              sub_1819DF108(v17);
            }
          }

          v27 = *(v17 + 32);
          result = *(v27 + 60);
          *(v27 + 60) = 0;
          if (result)
          {
            goto LABEL_43;
          }

          if (*(*(v11 + 24) + 20))
          {
            v15 = v16;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_10;
        }

        v15 = 0;
        if (a3 && v18 != a4)
        {
          if (*(v7 + 24) == v18 > a4)
          {
            goto LABEL_19;
          }

          v15 = 0;
        }
      }

LABEL_10:
      v11 = *(v11 + 32);
      if (!v11)
      {
        result = 0;
        v16 = v15;
LABEL_43:
        v29 = result | v16;
LABEL_44:
        v30 = v29 != 0;
        *(v6 + 4) = v30;
        if (!v30)
        {

          return sub_1819E0C64(v7, v6);
        }

        return result;
      }
    }
  }

  v31 = *(v8 + 56);
  v32 = *(v31 + 72);
  if (a3)
  {
    if (v32)
    {
      v33 = *(v31 + 32);
      do
      {
        sub_1819DEB74(v33, v31, 1, a4);
        if (*(v33 + 60))
        {
          break;
        }

        if (*(v31 + 20))
        {
          break;
        }

        v34 = *(v31 + 104 + (*(*(v31 + 96) + 4) << 7) + 112);
        v35 = *(v31 + 76);
        if (!v35 && v34 >= a4)
        {
          break;
        }
      }

      while (!v35 || v34 > a4);
    }

    else
    {
      sub_1819DEA54(v31, 1, a4);
    }
  }

  else if (v32)
  {
    sub_1819DEB74(*(v31 + 32), v31, 0, 0);
  }

  else
  {
    v38 = *(v31 + 24);
    v37 = *(v31 + 32);
    v39 = *(v38 + 32);
    if (v39 >= 1)
    {
      for (j = 0; j < v39; ++j)
      {
        v41 = *(v38 + 56 + 8 * j);
        if (!*(v41 + 20) && *v41 == *v31)
        {
          sub_1819DEB74(v37, v41, 0, 0);
          v39 = *(v38 + 32);
        }
      }
    }

    v7 = a1;
    if (!*(v37 + 60))
    {
      sub_1819DF108(v31);
    }
  }

  v42 = *(v31 + 32);
  result = *(v42 + 60);
  *(v42 + 60) = 0;
  if (!result)
  {
    v29 = *(v31 + 20);
    goto LABEL_44;
  }

  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1819DE848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a2 + 40);
  v6 = (a2 + 48);
  if (v5 <= 0)
  {
    v15 = *v6;
    goto LABEL_29;
  }

  v10 = 0;
  v11 = *(a2 + 24);
  do
  {
    v12 = v6[v10];
    if (*(v12 + 4))
    {
      goto LABEL_3;
    }

    v13 = *(v12 + 24);
    if (v13 != v11)
    {
      if (!a3)
      {
        goto LABEL_3;
      }

      if (*(a1 + 24))
      {
        if (v13 <= a4)
        {
          goto LABEL_3;
        }
      }

      else if (v13 >= a4)
      {
        goto LABEL_3;
      }
    }

    result = (*(v12 + 16))(a1);
    if (result)
    {
      v21 = 0;
      goto LABEL_30;
    }

    v5 = *(a2 + 40);
LABEL_3:
    ++v10;
  }

  while (v10 < v5);
  v15 = *v6;
  if (v5 >= 2)
  {
    v16 = v5 - 1;
    v17 = (a2 + 56);
    while (2)
    {
      v18 = *v17;
      if (*(*v17 + 4))
      {
        goto LABEL_17;
      }

      if (!*(v15 + 4))
      {
        v19 = *(v15 + 24);
        v20 = *(v18 + 24);
        if (*(a1 + 24))
        {
          if (v19 > v20)
          {
            goto LABEL_17;
          }

          if (v19 >= v20)
          {
LABEL_26:
            if (*(v18 + 8))
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          if (v19 < v20)
          {
            goto LABEL_17;
          }

          if (v19 <= v20)
          {
            goto LABEL_26;
          }
        }
      }

      v15 = *v17;
LABEL_17:
      ++v17;
      if (!--v16)
      {
        break;
      }

      continue;
    }
  }

LABEL_29:
  result = 0;
  *(a2 + 24) = *(v15 + 24);
  *(a2 + 4) = *(v15 + 4);
  v21 = *(v15 + 8);
LABEL_30:
  *(a2 + 8) = v21;
  return result;
}

uint64_t sub_1819DE9B0(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 48) + 16))();
  if (result)
  {
    *(a2 + 8) = 0;
  }

  else
  {

    return sub_1819E1EA4(a1, a2);
  }

  return result;
}

uint64_t sub_1819DEA0C(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 48) + 16))();
  if (result || (result = sub_1819E20BC(a1, a2), result))
  {
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_1819DEA54(void *a1, int a2, uint64_t a3)
{
  v5 = a1[3];
  v4 = a1[4];
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(v5 + 56 + 8 * v8);
      if (!*(v9 + 20))
      {
        v10 = *v9;
        v11 = a2 && v10 < a3;
        v12 = v11;
        if (v10 == *a1 || v12)
        {
          sub_1819DEB74(v4, *(v5 + 56 + 8 * v8), a2, a3);
          if (a2)
          {
            while (!*(v9 + 20))
            {
              if (*v9 >= a3)
              {
                break;
              }

              if (*(v4 + 60))
              {
                break;
              }

              sub_1819DEB74(v4, v9, 0, 0);
            }
          }
        }
      }

      ++v8;
    }

    while (v8 < *(v5 + 32));
  }

  if (!*(v4 + 60))
  {

    sub_1819DF108(a1);
  }
}

uint64_t sub_1819DEB74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!*(result + 60))
  {
    v4 = a4;
    v5 = a2;
    v6 = result;
    v7 = a3 == 0;
    v8 = a2 + 104;
    v50 = result;
    while (1)
    {
      v9 = *(*(v5 + 96) + 4);
      v52 = 0;
      v10 = v8 + (v9 << 7);
      if (!v7)
      {
        v11 = *(v10 + 88);
        if (v11)
        {
          break;
        }
      }

      result = (*(v10 + 48))(v6, v8 + (v9 << 7), &v52);
      if (!*(v10 + 16))
      {
        goto LABEL_54;
      }

LABEL_51:
      if (v52)
      {
LABEL_54:
        v24 = *(v5 + 72);
        v25 = v24 + v9;
LABEL_55:
        if (v25 < 2)
        {
LABEL_80:
          v10 = v8 + (*(*(v5 + 96) + 4) << 7);
          v41 = *(v10 + 16);
          *(v5 + 20) = v41 == 0;
          *(v5 + 88) = *(v10 + 112);
          v4 = a4;
          if (!v41)
          {
            return result;
          }

          goto LABEL_81;
        }

        while (2)
        {
          if (v6[15])
          {
            goto LABEL_80;
          }

          v26 = v25 >> 1;
          v27 = *(v5 + 96);
          v28 = (v25 >> 1) - v24 / 2;
          if ((v25 >> 1) >= v24 / 2)
          {
            v29 = 2 * v28;
            v30 = (2 * v28) | 1;
          }

          else
          {
            v29 = *(v27 + 4 * (v25 & 0x7FFFFFFE));
            v30 = *(v27 + 4 * (v25 | 1));
          }

          v31 = v27 + 4 * v26;
          v32 = v8 + (v29 << 7);
          *(v31 + 2) = 0;
          if (*(v32 + 16))
          {
            v33 = v8 + (v30 << 7);
            if (*(v33 + 16))
            {
              v34 = *(v32 + 104);
              v35 = *(v33 + 104);
              if (v34 >= v35)
              {
                v36 = v35;
              }

              else
              {
                v36 = v34;
              }

              if (v36 < 1 || (v37 = v8, v38 = v24, result = memcmp(*(v32 + 96), *(v33 + 96), v36), v24 = v38, v8 = v37, !result))
              {
                result = v34 - v35;
                if (v34 == v35)
                {
                  *(v31 + 2) = 1;
                  v39 = *(v32 + 112);
                  v40 = *(v33 + 112);
                  if (v39 == v40)
                  {
                    v6 = v50;
                    v5 = a2;
                    if (v30)
                    {
                      result = (*(v33 + 48))(v50, v33, 0);
                      v24 = *(a2 + 72);
                      v26 = v24 + v30;
                    }

LABEL_79:
                    v25 = v26;
                    if (v26 <= 1)
                    {
                      goto LABEL_80;
                    }

                    continue;
                  }

                  if (*(a2 + 76) == v39 > v40)
                  {
                    result = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    result = 1;
                  }
                }
              }

              if (result < 0)
              {
                LOWORD(v30) = v29;
              }

              v6 = v50;
              v5 = a2;
            }

            else
            {
              LOWORD(v30) = v29;
            }
          }

          break;
        }

        *v31 = v30;
        goto LABEL_79;
      }

      v21 = *(v10 + 112);
      v22 = *(v5 + 88);
      if (v21 == v22)
      {
        v23 = *(v5 + 76);
      }

      else
      {
        v23 = v21 < v22;
        if (*(v5 + 76) != v23)
        {
          goto LABEL_81;
        }
      }

      v42 = v9 ^ 1;
      if (v23)
      {
        v43 = 0x8000000000000000;
      }

      else
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *(v5 + 88) = v43;
      v24 = *(v5 + 72);
      v25 = v24 + v9;
      v44 = *(v5 + 96);
      for (i = v24 + v9; ; i = i / 2)
      {
        v46 = v44 + 4 * (i / 2);
        if (*(v46 + 2))
        {
          v47 = v8 + (v42 << 7);
          result = *(v10 + 112);
          v48 = *(v47 + 112);
          if (result == v48)
          {
            goto LABEL_55;
          }

          result = v48 > result;
          if (v23 == result || (result = v48 > v43, v47 = v10, v23 == result))
          {
            *(v5 + 88) = v48;
            v43 = v48;
            v10 = v47;
          }
        }

        *v46 = (v10 - v8) >> 7;
        if ((i & 0xFFFFFFFE) == 2)
        {
          break;
        }

        v42 = *(v44 + 4 * (((i + (i >> 31)) >> 1) ^ 1));
      }

LABEL_81:
      if (!*(v5 + 80) || *(v10 + 120))
      {
        result = sub_1819DF594(v5);
        if (!result)
        {
          return (*(v5 + 64))(v5, v10);
        }
      }

      v7 = 1;
      if (v6[15])
      {
        return result;
      }
    }

    v12 = *(v10 + 8);
    if ((v12 & 2) != 0)
    {
      while (!*(v11 + 20) && *(v11 + 32) > v4)
      {
        result = sub_1819E04E8(v6, v11, 0);
        v14 = v6[15];
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v14 = 0;
LABEL_22:
      v15 = *(v11 + 28);
      if (v15 < *(v10 + 12))
      {
        *(v10 + 12) = v15 + 1;
        result = sub_1819DF754(v6, (v8 + (v9 << 7)));
        v4 = a4;
        goto LABEL_45;
      }
    }

    else
    {
      if (*(v11 + 20))
      {
        goto LABEL_96;
      }

      if (*(v11 + 32) >= v4)
      {
        v14 = 0;
        v13 = *(v10 + 12);
      }

      else
      {
        while (1)
        {
          v13 = *(v11 + 28);
          result = sub_1819DF9BC(v6, v11, 0);
          v14 = v6[15];
          if (v14)
          {
            break;
          }

          if (*(v11 + 20) || *(v11 + 32) >= a4)
          {
            v14 = 0;
            break;
          }
        }
      }

      if (v13 > *(v10 + 12))
      {
        if (*(*v10 + 8) < v13)
        {
          v6[15] = 267;
          v4 = a4;
          goto LABEL_45;
        }

        v16 = *(v10 + 24);
        if (v16)
        {
          v17 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
LABEL_36:
            result = (*v17)(v16);
            goto LABEL_37;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
          --qword_1ED456A90;
          result = off_1ED452EB0(v16);
          v16 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v17 = &xmmword_1ED452F28;
            goto LABEL_36;
          }
        }

LABEL_37:
        *(v10 + 24) = 0;
        *(v10 + 12) = v13 - 1;
        v4 = a4;
        do
        {
          v6 = v50;
          if (*(v50 + 60))
          {
            goto LABEL_45;
          }

          result = sub_1819E0144(v50, (v8 + (v9 << 7)));
          v18 = *(v10 + 16);
          if (!v18)
          {
            goto LABEL_45;
          }

          v19 = __rev16(**v18);
        }

        while (!v19);
        if (v19 < 4 || *(v18 + 3) <= v19)
        {
          v6 = v50;
          *(v50 + 60) = 267;
        }

        else
        {
          *(v10 + 32) = sub_1819DFFB0(*v18 + v19, (v10 + 112)) + v19;
          v6 = v50;
          result = sub_1819E0398(v50, v8 + (v9 << 7));
        }

        goto LABEL_45;
      }
    }

    v4 = a4;
    if (v14)
    {
      goto LABEL_45;
    }

    while (1)
    {
LABEL_96:
      result = (*(v10 + 48))(v6, v8 + (v9 << 7), 0);
LABEL_45:
      if (!*(v10 + 16))
      {
        goto LABEL_54;
      }

      v20 = *(v10 + 112);
      if ((v12 & 2) != 0)
      {
        if (v20 < v4)
        {
          goto LABEL_51;
        }
      }

      else if (v20 >= v4)
      {
        goto LABEL_51;
      }

      if (v6[15])
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void sub_1819DF108(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v3 = v2[8];
  if (v3 < 1)
  {
    goto LABEL_21;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0x8000000000000000;
  do
  {
    v9 = *&v2[2 * v4 + 14];
    if (!*(v9 + 20))
    {
      v10 = *v9;
      if (v5 && v10 >= v7)
      {
        if (v10 == v7)
        {
          ++v5;
        }
      }

      else
      {
        *(a1 + 8) = *(v9 + 8);
        *(a1 + 16) = *(v9 + 16);
        v3 = v2[8];
        v5 = 1;
        v6 = v4;
        v7 = v10;
      }
    }

    ++v4;
    v8 = v3;
  }

  while (v4 < v3);
  if (!v5)
  {
LABEL_21:
    *(a1 + 20) = 1;
    return;
  }

  v11 = *(a1 + 32);
  v12 = *(*v11 + 116);
  *(a1 + 20) = 0;
  *a1 = v7;
  if (v5 == 1 && !v12)
  {
    if (!v11[15])
    {
      v13 = v2[1];
      if (v13 == *v2)
      {
        if (v13)
        {
          v14 = 2 * v13;
        }

        else
        {
          v14 = 64;
        }

        v15 = *(v2 + 1);
        if (sqlite3_initialize() || (v25 = sub_18190287C(v15, (24 * v14) & ~((24 * v14) >> 31), 0x1000040504FFAC1)) == 0)
        {
          v11[15] = 7;
          return;
        }

        *(v2 + 1) = v25;
        *v2 = v14;
        v13 = v2[1];
      }

      else
      {
        v25 = *(v2 + 1);
      }

      v26 = v25 + 24 * v13;
      *v26 = v7;
      *(v26 + 8) = -1;
      *(v26 + 16) = v6;
      *(v25 + 24 * v2[1]++ + 20) = 0;
    }

    return;
  }

  if (v5 < 2 || v12 == 1)
  {
    return;
  }

  v48 = 0;
  if (!*(v2 + 5))
  {
    if (!v11[15])
    {
      v24 = v12;
      if (!sqlite3_initialize())
      {
        v44 = sub_181902484(36 * v3, 1913357809);
        if (v44)
        {
          v45 = v44;
          bzero(v44, 36 * v8);
          v46 = v2[8];
          *(v2 + 5) = v45;
          *(v2 + 6) = &v45[32 * v46];
          v3 = v46;
          v12 = v24;
          goto LABEL_26;
        }
      }

      if (v3 >= 1)
      {
        v11[15] = 7;
      }
    }

    *(v2 + 5) = 0;
    return;
  }

LABEL_26:
  v47 = v12;
  if (v3 < 1)
  {
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *&v2[2 * v16 + 14];
      if (v7 == *v19)
      {
        v20 = *(v2 + 5);
        *(*(v2 + 6) + 4 * v18) = v16;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = v20 + 32 * v18;
        *v23 = 0u;
        *(v23 + 16) = 0u;
        *v23 = v21;
        *(v23 + 8) = v22;
        if (sub_1819E0A34(v21, v22, (v23 + 12), (v23 + 24)))
        {
          *(v23 + 17) = 1;
        }

        ++v18;
        v17 += *(v19 + 16);
        v3 = v2[8];
      }

      ++v16;
    }

    while (v16 < v3);
  }

  LODWORD(v27) = *(a1 + 52);
  v28 = (v17 + 10 * v5 + *(a1 + 48));
  if (v28 > v27)
  {
    v29 = *(a1 + 32);
    if (!v27)
    {
      LODWORD(v27) = 64;
    }

    v27 = v27;
    do
    {
      v30 = v27;
      v27 *= 2;
    }

    while (v30 < v28);
    v31 = *(a1 + 40);
    if (sqlite3_initialize() || (v32 = sub_18190287C(v31, v30, 688041480)) == 0)
    {
      *(v29 + 60) = 7;
      return;
    }

    *(a1 + 52) = v30;
    *(a1 + 40) = v32;
  }

  if (!v47)
  {
    v33 = *v2;
    if (*v2 < v2[1] + v17)
    {
      v34 = v33 + v17;
      v35 = sub_181902BE8(*(v2 + 1), 48 * (v33 + v17), 0x1000040504FFAC1);
      if (!v35)
      {
        *(*(a1 + 32) + 60) = 7;
        return;
      }

      *(v2 + 1) = v35;
      *v2 = 2 * v34;
    }
  }

  *(a1 + 48) = 0;
  if (v18 >= 1)
  {
    while (1)
    {
      v36 = 0;
      v37 = 0;
      v38 = (*(v2 + 5) + 24);
      v39 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if (!*(v38 - 7) && *v38 < v39)
        {
          v37 = v36;
          v39 = *v38;
        }

        ++v36;
        v38 += 4;
      }

      while (v18 != v36);
      if (v39 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v40 = v37;
      sub_1819E08CC((a1 + 40), &v48, v39);
      v41 = *(v2 + 5) + 32 * v40;
      if (sub_1819E0A34(*v41, *(v41 + 8), (v41 + 12), (v41 + 24)))
      {
        *(v41 + 17) = 1;
      }

      if (!v47)
      {
        v42 = *(v2 + 1);
        v43 = v42 + 24 * v2[1];
        *(v43 + 8) = v39;
        *(v43 + 16) = *(*(v2 + 6) + 4 * v40);
        LODWORD(v43) = v2[1];
        *(v42 + 24 * v43) = v7;
        v2[1] = v43 + 1;
      }
    }
  }

  *(a1 + 8) = *(a1 + 40);
  *(a1 + 16) = *(a1 + 48);
}

uint64_t sub_1819DF594(uint64_t a1)
{
  v1 = a1 + (*(*(a1 + 96) + 4) << 7);
  v2 = *(v1 + 144);
  if (*(v1 + 120))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v6 = *(v1 + 216);
  v7 = *(v2 + 4);
  v8 = v6 % v7;
  result = *(v2 + 8 + 8 * v8);
  if (!result)
  {
    v9 = v8;
    result = sub_1819DFC90(*(a1 + 32), v8 + ((**(v1 + 104) + 0x10000) << 37));
    *(v2 + 8 + 8 * v9) = result;
    if (!result)
    {
      return result;
    }

    v7 = *(v2 + 4);
    v6 = *(v1 + 216);
  }

  v10 = *result;
  v11 = **result;
  v12 = *(result + 8);
  if (v11 == 4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (v12 <= 16)
  {
    v14 = 1;
  }

  else
  {
    v14 = (v12 - 8) >> v13;
  }

  if (!v6)
  {
    return *(v10 + 1);
  }

  v15 = v6 / v7 % v14;
  v16 = v10 + 8;
  if (v11 != 4)
  {
    v20 = (v16 + 8 * v15);
    v21 = *v20;
    if (*v20)
    {
      v22 = v14 + 1;
      while (((v21 << 56) | (*(v20 + 1) << 48) | (*(v20 + 2) << 40) | (*(v20 + 3) << 32) | (*(v20 + 4) << 24) | (*(v20 + 5) << 16) | (*(v20 + 6) << 8)) + *(v20 + 7) != v6)
      {
        result = 0;
        if (--v22)
        {
          LODWORD(v15) = (v15 + 1) % v14;
          v20 = (v16 + 8 * v15);
          v21 = *v20;
          if (*v20)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }

    return 0;
  }

  v17 = (v16 + 4 * v15);
  v18 = *v17;
  if (!*v17)
  {
    return 0;
  }

  v19 = v14 + 1;
  while (((v18 << 24) | (*(v17 + 1) << 16) | (*(v17 + 2) << 8) | *(v17 + 3)) != v6)
  {
    result = 0;
    if (--v19)
    {
      LODWORD(v15) = (v15 + 1) % v14;
      v17 = (v16 + 4 * v15);
      v18 = *v17;
      if (*v17)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

unsigned int *sub_1819DF754(unsigned int *result, unsigned int **a2)
{
  v3 = result;
  v4 = a2[2];
  if (v4)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      result = (*v5)(v4);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    result = off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  a2[2] = 0;
  if (v3[15])
  {
    return result;
  }

  do
  {
    v6 = *(a2 + 3);
    if (v6 <= *(a2 + 14))
    {
      break;
    }

    v7 = v6 - 1;
    *(a2 + 3) = v7;
    result = sub_1819DFC90(v3, v7 + (**a2 << 37));
    if (result)
    {
      if (*(a2 + 3) == *(a2 + 14))
      {
        v8 = *(a2 + 15);
        if (v8 < result[3])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = __rev16(**result);
        if (v8)
        {
          if (result[3] > v8)
          {
LABEL_28:
            a2[2] = result;
            a2[4] = v8;
            goto LABEL_29;
          }

          v3[15] = 267;
        }
      }

      if (a2[2])
      {
        v8 = a2[4];
        result = a2[2];
LABEL_29:
        result = sub_1819DFFB0(v8 + *result, a2 + 14);
        a2[4] = (a2[4] + result);
        break;
      }

      v9 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          v10 = result;
          xmmword_1ED452F18(xmmword_1ED456AF0);
          result = v10;
        }

        v11 = result;
        qword_1ED456A48[0] -= xmmword_1ED452EC0(result);
        --qword_1ED456A90;
        off_1ED452EB0(v11);
        result = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          continue;
        }

        v9 = &xmmword_1ED452F28;
      }

      result = (*v9)();
    }
  }

  while (!v3[15]);
  v12 = a2[2];
  if (v12)
  {
    *(a2 + 17) = v12[2] + 1;

    return sub_1819E06E0(v3, a2);
  }

  return result;
}

uint64_t sub_1819DF9BC(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = a3;
  v7 = &a2[8 * a3];
  result = sub_1819DFB20((v7 + 2));
  if (!result)
  {
    return result;
  }

  if (a3 + 1 >= *a2)
  {
    return result;
  }

  result = sub_1819DF9BC(a1, a2);
  if (v7[13])
  {
    return result;
  }

  v9 = *(v7 + 1);
  if (v9)
  {
    v10 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
      --qword_1ED456A90;
      off_1ED452EB0(v9);
      v9 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_12;
      }

      v10 = &xmmword_1ED452F28;
    }

    (*v10)(v9);
  }

LABEL_12:
  *(v7 + 6) = 0u;
  *(v7 + 2) = 0u;
  result = sub_1819DFC90(a1, (v6 << 31) + (a2[1] << 37) + 0x1000000000 + v7[15]);
  *(v7 + 1) = result;
  if (result)
  {

    return sub_1819DFB20((v7 + 2));
  }

  return result;
}

uint64_t sub_1819DFB20(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2[2];
    if (v3 >= v4)
    {
LABEL_6:
      *(a1 + 12) = 1;
    }

    else
    {
      v5 = 0;
      v6 = *v2;
      v7 = v3 << 32;
      v8 = (v6 + v3);
      v9 = v3 - v4;
      while (!*v8++)
      {
        v7 += 0x100000000;
        if (v9 == --v5)
        {
          goto LABEL_6;
        }
      }

      v21 = 0;
      *(a1 + 20) = *(a1 + 20) - v5 + 1;
      v15 = sub_1819DFFB0((v6 + (v7 >> 32)), &v21);
      *(a1 + 24) += v21;
      *(a1 + 8) = v15 + v3 - v5;
    }
  }

  else
  {
    *(a1 + 8) = 1;
    v11 = *v2;
    v12 = (*v2 + 1);
    v13 = *v12;
    if (*v12 < 0)
    {
      v16 = *(v11 + 2);
      if (*(v11 + 2) < 0)
      {
        v17 = *(v11 + 3);
        if (v17 < 0)
        {
          v21 = 0;
          v18 = sub_1819DFFB0(v12, &v21);
          *(a1 + 20) = v21 & 0x7FFFFFFF;
          v14 = (v18 + 1);
        }

        else
        {
          *(a1 + 20) = ((v13 & 0x7F) << 14) | ((v16 & 0x7F) << 7) | v17;
          v14 = 4;
        }
      }

      else
      {
        *(a1 + 20) = ((v13 & 0x7F) << 7) | v16;
        v14 = 3;
      }
    }

    else
    {
      *(a1 + 20) = v13;
      v14 = 2;
    }

    *(a1 + 8) = v14;
    v19 = *(a1 + 8) + sub_1819DFFB0((v11 + v14), (a1 + 24));
    *(a1 + 8) = v19;
    *(a1 + 16) = v19;
  }

  return *(a1 + 12);
}

_DWORD *sub_1819DFC90(uint64_t a1, sqlite3_int64 a2)
{
  if (*(a1 + 60))
  {
    return 0;
  }

  v5 = (a1 + 72);
  v6 = *(a1 + 72);
  if (!v6)
  {
    v13 = 0;
    v14 = 1;
LABEL_17:
    if (v14)
    {
      v13 = sqlite3_blob_open(**a1, *(*a1 + 16), *(a1 + 8), "block", a2, 0, v5);
    }

    goto LABEL_19;
  }

  *v5 = 0;
  v7 = sqlite3_blob_reopen(v6, a2);
  *v5 = v6;
  if (v7)
  {
    *v5 = 0;
    v8 = *(v6 + 3);
    v9 = *(v6 + 4);
    v10 = v9[3];
    if (v10)
    {
      xmmword_1ED452F18(v10);
    }

    sub_181929C84(v9, v6);
    v11 = v9[3];
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }

    v12 = sqlite3_finalize(v8);
    if (!*(a1 + 60))
    {
      *(a1 + 60) = v12;
    }
  }

  if (v7 == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v14 = *v5 == 0;
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v13 == 1)
  {
    v15 = 267;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    result = 0;
    goto LABEL_37;
  }

  v16 = *v5;
  if (*v5 && *(v16 + 3))
  {
    v17 = *v16;
    if (!sqlite3_initialize())
    {
      goto LABEL_27;
    }

LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  v17 = 0;
  if (sqlite3_initialize())
  {
    goto LABEL_35;
  }

LABEL_27:
  result = sub_181902484(v17 + 36, 0x1010040FDD9F14CLL);
  if (!result)
  {
LABEL_36:
    v15 = 7;
    goto LABEL_37;
  }

  result[2] = v17;
  v18 = result;
  *result = result + 4;
  v15 = sub_181910DE0(*v5, result + 16, v17, 0, sub_181910FE4);
  if (v15)
  {
    v19 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
      --qword_1ED456A90;
      off_1ED452EB0(v18);
      result = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_37;
      }

      v19 = &xmmword_1ED452F28;
    }

    (*v19)();
    result = 0;
  }

  else
  {
    result = v18;
    *(*v18 + v17) = 0;
    *(*v18 + v17 + 1) = 0;
    v18[3] = __rev16(*(*v18 + 2));
  }

LABEL_37:
  *(a1 + 60) = v15;
  ++*(a1 + 128);
  return result;
}

uint64_t sub_1819DFF14(char *a1, int *a2)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    v6 = a1[1];
    if (a1[1] < 0)
    {
      v7 = a1[2];
      if (v7 < 0)
      {
        v9[3] = v2;
        v9[4] = v3;
        v9[0] = 0;
        result = sub_1819DFFB0(a1, v9);
        *a2 = v9[0] & 0x7FFFFFFF;
      }

      else
      {
        *a2 = ((v4 & 0x7F) << 14) | ((v6 & 0x7F) << 7) | v7;
        return 3;
      }
    }

    else
    {
      *a2 = ((v4 & 0x7F) << 7) | v6;
      return 2;
    }
  }

  else
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_1819DFFB0(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v4 = a1[1];
    if (a1[1] < 0)
    {
      v5 = a1[2];
      v6 = v5 & 0x7F | (v2 << 14) & 0x1FFFFF;
      if (v5 < 0)
      {
        v7 = (a1[3] | (v4 << 14)) & 0x1FC07F;
        if (a1[3] < 0)
        {
          v8 = a1[4];
          v9 = v8 | (v6 << 14);
          if (a1[4] < 0)
          {
            v10 = v7 | (v6 << 7);
            v11 = a1[5] | (v7 << 14);
            if (a1[5] < 0)
            {
              v12 = a1[6] | (v9 << 14);
              if (a1[6] < 0)
              {
                v13 = v12 & 0x1FC07F;
                v14 = a1[7] | (v11 << 14);
                if (a1[7] < 0)
                {
                  v15 = a1[8] | (v13 << 15) | (v14 << 8) & 0x1FC07F00u | (((v8 >> 3) & 0xF | (16 * v10)) << 32);
                  result = 9;
                }

                else
                {
                  v15 = v14 & 0xF01FC07F | (v13 << 7) | ((v10 >> 4) << 32);
                  result = 8;
                }

                *a2 = v15;
              }

              else
              {
                result = 7;
                *a2 = v12 & 0xF01FC07F | (v11 << 7) & 0xFE03F80 | ((v10 >> 11) << 32);
              }
            }

            else
            {
              result = 6;
              *a2 = v11 | (v9 << 7) & 0xFE03F80u | ((v10 >> 18) << 32);
            }
          }

          else
          {
            result = 5;
            *a2 = v9 | (v7 << 7) | ((v6 >> 18) << 32);
          }
        }

        else
        {
          result = 4;
          *a2 = v7 | (v6 << 7);
        }
      }

      else
      {
        result = 3;
        *a2 = v6 | ((v4 & 0x7F) << 7);
      }
    }

    else
    {
      result = 2;
      *a2 = ((v2 & 0x7F) << 7) | v4;
    }
  }

  else
  {
    result = 1;
    *a2 = v2;
  }

  return result;
}

uint64_t sub_1819E0144(uint64_t a1, unsigned int **a2)
{
  v4 = *a2;
  v5 = a2[2];
  if (v5)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v6)(v5);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v7 = *(a2 + 3);
  *(a2 + 3) = v7 + 1;
  result = a2[3];
  if (result)
  {
    a2[2] = result;
    a2[3] = 0;
    v9 = *(result + 8);
    v10 = *(result + 12);
    goto LABEL_10;
  }

  if (v7 >= v4[2])
  {
    goto LABEL_23;
  }

  result = sub_1819DFC90(a1, v7 + 1 + (*v4 << 37));
  if (!result)
  {
    goto LABEL_23;
  }

  v9 = *(result + 8);
  if (v9 < 4 || (v10 = *(result + 12), v10 > v9))
  {
    *(a1 + 60) = 267;
    v13 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        v14 = result;
        xmmword_1ED452F18(xmmword_1ED456AF0);
        result = v14;
      }

      v15 = result;
      qword_1ED456A48[0] -= xmmword_1ED452EC0(result);
      --qword_1ED456A90;
      off_1ED452EB0(v15);
      result = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_23;
      }

      v13 = &xmmword_1ED452F28;
    }

    result = (*v13)();
LABEL_23:
    a2[2] = 0;
    return result;
  }

  a2[2] = result;
LABEL_10:
  *(a2 + 16) = v10;
  if (v10 >= v9)
  {
    *(a2 + 17) = v9 + 1;
  }

  else
  {
    v11 = (*result + v10);
    v12 = *v11;
    if (*v11 < 0)
    {
      v16 = v11[1];
      if (v11[1] < 0)
      {
        v17 = v11[2];
        if (v17 < 0)
        {
          v18 = 0;
          result = sub_1819DFFB0(v11, &v18);
          *(a2 + 17) = v18 & 0x7FFFFFFF;
        }

        else
        {
          *(a2 + 17) = ((v12 & 0x7F) << 14) | ((v16 & 0x7F) << 7) | v17;
          result = 3;
        }
      }

      else
      {
        *(a2 + 17) = ((v12 & 0x7F) << 7) | v16;
        result = 2;
      }
    }

    else
    {
      *(a2 + 17) = v12;
      result = 1;
    }

    *(a2 + 16) = result + v10;
  }

  return result;
}