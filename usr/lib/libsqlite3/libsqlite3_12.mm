uint64_t sqlite3_exec_b(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  if (!a1)
  {
    v10 = "NULL";
    goto LABEL_14;
  }

  v9 = *(a1 + 113);
  if (v9 != 186)
  {
    if (v9 != 118)
    {
      if (v9 != 109)
      {
        v10 = "invalid";
        goto LABEL_14;
      }

      goto LABEL_5;
    }

    if (!a2)
    {
      a2 = &byte_181A2878D;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = a2;
      xmmword_1ED452F18(v12);
      a2 = v13;
    }

    *(a1 + 80) = 0;
    if (*(a1 + 416))
    {
      v14 = a2;
      sub_181932D5C(a1, 0);
      a2 = v14;
    }

    else
    {
      *(a1 + 84) = -1;
    }

    v27 = 0;
    while (1)
    {
      if (!*a2)
      {
        v17 = 0;
        goto LABEL_39;
      }

      v26 = 0;
      v16 = sub_1818954B4(a1, a2, 0xFFFFFFFFLL, 128, 0, &v26, &v27, a8);
      if (v16)
      {
        v17 = v16;
        goto LABEL_39;
      }

      if (v26)
      {
        break;
      }

      v17 = 0;
      a2 = v27;
LABEL_19:
      if (v17)
      {
        goto LABEL_39;
      }
    }

    while (1)
    {
      v18 = sqlite3_step(v26);
      v19 = v18;
      if (a3)
      {
        if (v18 != 100 && (v18 != 101 || (*(a1 + 49) & 1) == 0))
        {
LABEL_30:
          v20 = v26;
          if (*(v26 + 267))
          {
            v17 = sub_1818A32FC(v26);
          }

          else
          {
            v17 = 0;
          }

          sub_181901AB4(v20);
          v26 = 0;
          a2 = v27 - 1;
          do
          {
            v21 = *++a2;
          }

          while ((byte_181A204C8[v21] & 1) != 0);
          goto LABEL_19;
        }

        if ((*(a3 + 16))(a3, v26))
        {
          break;
        }
      }

      if (v19 != 100)
      {
        goto LABEL_30;
      }
    }

    v22 = v26;
    if (*(v26 + 267))
    {
      sub_1818A32FC(v26);
    }

    sub_181901AB4(v22);
    v26 = 0;
    v17 = 4;
    *(a1 + 80) = 4;
    sub_181932D5C(a1, 4);
LABEL_39:
    v23 = v26;
    if (v26)
    {
      if (*(v26 + 267))
      {
        sub_1818A32FC(v26);
      }

      sub_181901AB4(v23);
    }

    if (v17 || *(a1 + 103))
    {
      v24 = sub_18193C988(a1, v17);
      v25 = *(a1 + 24);
      if (!v25)
      {
        return v24;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a1 + 24);
      if (!v25)
      {
        return v24;
      }
    }

    xmmword_1ED452F28(v25);
    return v24;
  }

LABEL_5:
  v10 = "unopened";
LABEL_14:
  sqlite3_log(21, "API call with %s database connection pointer", v10);

  return sub_1819012D0(146902);
}

int sqlite3_cancel_auto_extension(void (*xEntryPoint)(void))
{
  if (word_1ED452E84)
  {
    v2 = qword_1ED452F08(2);
    if (xEntryPoint)
    {
      if (v2)
      {
        v3 = v2;
        xmmword_1ED452F18(v2);
        xmmword_1ED452F28(v3);
      }
    }
  }

  return 0;
}

void sqlite3_reset_auto_extension(void)
{
  if (!sqlite3_initialize())
  {
    if (word_1ED452E84)
    {
      v0 = qword_1ED452F08(2);
      if (v0)
      {
        v1 = v0;
        xmmword_1ED452F18(v0);
        v2 = xmmword_1ED452F28;

        v2(v1);
      }
    }
  }
}

int sqlite3_create_module(sqlite3 *db, const char *zName, const sqlite3_module *p, void *pClientData)
{
  if (!db)
  {
    v6 = "NULL";
    goto LABEL_12;
  }

  v5 = *(db + 113);
  if (v5 == 186)
  {
LABEL_5:
    v6 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v6);
    goto LABEL_13;
  }

  if (v5 != 118)
  {
    if (v5 != 109)
    {
      v6 = "invalid";
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (!zName)
  {
LABEL_13:

    return sub_1819012D0(166473);
  }

  return sub_181894BA4(db, zName, p, pClientData, 0);
}

int sqlite3_create_module_v2(sqlite3 *db, const char *zName, const sqlite3_module *p, void *pClientData, void (__cdecl *xDestroy)(void *))
{
  if (!db)
  {
    v7 = "NULL";
    goto LABEL_12;
  }

  v6 = *(db + 113);
  if (v6 == 186)
  {
LABEL_5:
    v7 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    goto LABEL_13;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (!zName)
  {
LABEL_13:

    return sub_1819012D0(166489);
  }

  return sub_181894BA4(db, zName, p, pClientData, xDestroy);
}

int sqlite3_drop_modules(sqlite3 *db, const char **azKeep)
{
  if (!db)
  {
    v4 = "NULL";
    goto LABEL_19;
  }

  v3 = *(db + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_19:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(166501);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  v5 = *(db + 72);
  if (v5)
  {
    v7 = azKeep + 1;
    do
    {
      v8 = v5[2];
      v5 = *v5;
      if (azKeep && (v9 = *azKeep) != 0)
      {
        v10 = *(v8 + 8);
        v11 = v7;
        while (strcmp(v9, v10))
        {
          v12 = *v11++;
          v9 = v12;
          if (!v12)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        sub_181894BA4(db, *(v8 + 8), 0, 0, 0);
      }
    }

    while (v5);
  }

  return 0;
}

int sqlite3_declare_vtab(sqlite3 *a1, const char *zSQL)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_22;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_22:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    goto LABEL_23;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (!zSQL)
  {
LABEL_23:
    v19 = 167183;
LABEL_24:

    return sub_1819012D0(v19);
  }

  v46 = 0;
  v6 = zSQL;
  do
  {
    v6 += sub_1818966D0(v6, &v46);
  }

  while ((v46 & 0xFFFFFFFE) == 0xB8);
  if (v46 != 17)
  {
    goto LABEL_27;
  }

  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  do
  {
    v6 += sub_1818966D0(v6, &v46);
  }

  while ((v46 & 0xFFFFFFFE) == 0xB8);
  if (v46 == 16)
  {
    v13 = a1;
    v14 = *(a1 + 3);
    if (v14)
    {
      xmmword_1ED452F18(v14);
      v13 = a1;
    }

    v15 = *(v13 + 74);
    if (!v15 || *(v15 + 24))
    {
      v16 = v13;
      v17 = sub_1819012D0(167208);
      *(v16 + 80) = v17;
      sub_181932D5C(v16, v17);
      v18 = *(v16 + 24);
      if (v18)
      {
        xmmword_1ED452F28(v18);
      }

      v19 = 167210;
      goto LABEL_24;
    }

    v25 = zSQL;
    v26 = *(v15 + 8);
    memset(v47 + 8, 0, 176);
    memset(&v52[1], 0, 136);
    *(&v48 + 1) = *(v13 + 43);
    *(v13 + 43) = v47;
    *&v47[0] = v13;
    if (*(v13 + 103))
    {
      sub_181910730(v47, "out of memory", v7, v8, v9, v10, v11, v12, v45);
      v25 = zSQL;
      v13 = a1;
    }

    BYTE6(v52[3]) = 1;
    BYTE10(v47[2]) = 1;
    v27 = *(v13 + 197);
    *(v13 + 197) = 0;
    WORD6(v47[1]) = 1;
    if (sub_181895EE0(v47, v25))
    {
      if (*(&v47[0] + 1))
      {
        v28 = "%s";
      }

      else
      {
        v28 = 0;
      }

      v29 = 1;
      sub_181907EC4(a1, 1, v28, *(&v47[0] + 1));
      if (*(&v47[0] + 1))
      {
        sub_181929C84(a1, *(&v47[0] + 1));
      }

      v30 = a1;
    }

    else
    {
      if (*(v26 + 8))
      {
        v29 = 0;
        v30 = a1;
      }

      else
      {
        v31 = v52[9];
        *(v26 + 8) = *(v52[9] + 8);
        v32 = *(v31 + 80);
        v30 = a1;
        if (v32)
        {
          sub_18194E5B8(a1, v32);
          v30 = a1;
        }

        v33 = *(v31 + 54);
        *(v26 + 54) = v33;
        *(v26 + 56) = v33;
        *(v26 + 48) |= *(v31 + 48) & 0x280;
        *(v31 + 54) = 0;
        *(v31 + 8) = 0;
        if ((*(v31 + 48) & 0x80) != 0 && *(**(*v15 + 8) + 104))
        {
          v34 = v31 + 16;
          do
          {
            v35 = *v34;
            v36 = *(*v34 + 99) & 3;
            v34 = *v34 + 40;
          }

          while (v36 != 2);
          v29 = *(v35 + 94) != 1;
        }

        else
        {
          v29 = 0;
        }

        v37 = *(v31 + 16);
        if (v37)
        {
          *(v26 + 16) = v37;
          *(v31 + 16) = 0;
          *(v37 + 24) = v26;
        }
      }

      *(v15 + 24) = 1;
    }

    BYTE6(v52[3]) = 0;
    v38 = *&v47[1];
    if (*&v47[1])
    {
      if (*(*&v47[1] + 267))
      {
        sub_1818A32FC(*&v47[1]);
      }

      sub_181901AB4(v38);
      v30 = a1;
    }

    v39 = v52[9];
    if (v52[9])
    {
      if (*(v30 + 103) || (v40 = *(v52[9] + 44) - 1, (*(v52[9] + 44) = v40) == 0))
      {
        sub_18194E094(a1, v39);
      }
    }

    sub_181910CA0(v47);
    *(a1 + 197) = v27;
    if (v29)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(a1 + 103) == 0;
    }

    if (v41)
    {
      v42 = a1;
      result = 0;
    }

    else
    {
      result = sub_18193C988(a1, v29);
      v42 = a1;
    }

    v43 = *(v42 + 3);
    if (v43)
    {
      v44 = result;
      xmmword_1ED452F28(v43);
      return v44;
    }
  }

  else
  {
LABEL_27:
    v21 = a1;
    v22 = *(a1 + 3);
    if (v22)
    {
      xmmword_1ED452F18(v22);
      v21 = a1;
    }

    v23 = v21;
    sub_181907EC4(v21, 1, "syntax error");
    v24 = *(v23 + 3);
    if (v24)
    {
      xmmword_1ED452F28(v24);
    }

    return 1;
  }

  return result;
}

int sqlite3_vtab_on_conflict(sqlite3 *a1)
{
  if (!a1)
  {
    v2 = "NULL";
    goto LABEL_10;
  }

  v1 = *(a1 + 113);
  if (v1 == 186)
  {
LABEL_5:
    v2 = "unopened";
LABEL_10:
    sqlite3_log(21, "API call with %s database connection pointer", v2);
    goto LABEL_11;
  }

  if (v1 != 118)
  {
    if (v1 != 109)
    {
      v2 = "invalid";
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v3 = *(a1 + 108);
  if ((v3 - 1) < 5)
  {
    return byte_181A205C8[v3 - 1];
  }

LABEL_11:
  sub_1819012D0(167682);
  return 0;
}

int sqlite3_vtab_config(sqlite3 *a1, int op, ...)
{
  va_start(va, op);
  v13 = va_arg(va, void);
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_15;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_15:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(167703);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v4 = a1;
    v5 = op;
    xmmword_1ED452F18(*(a1 + 3));
    op = v5;
    a1 = v4;
  }

  v6 = *(a1 + 74);
  if (!v6)
  {
    v9 = a1;
    v10 = 167708;
LABEL_23:
    v7 = sub_1819012D0(v10);
    *(v9 + 20) = v7;
    sub_181932D5C(v9, v7);
    a1 = v9;
    goto LABEL_24;
  }

  if (op > 2)
  {
    if (op == 3)
    {
      *(*v6 + 30) = 2;
      v7 = 0;
      goto LABEL_24;
    }

    if (op == 4)
    {
      *(*v6 + 29) = 1;
      v7 = 0;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (op == 1)
  {
    *(*v6 + 28) = v13;
    v7 = 0;
    goto LABEL_24;
  }

  if (op != 2)
  {
LABEL_22:
    v9 = a1;
    v10 = 167730;
    goto LABEL_23;
  }

  *(*v6 + 30) = 0;
  v7 = 0;
LABEL_24:
  v11 = *(a1 + 3);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  return v7;
}

const char *sqlite3_vtab_collation(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1819012D0(177715);
    return 0;
  }

  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    return 0;
  }

  v8 = *(*(a1 + 8) + 12 * a2 + 8);
  for (i = *(a1 + 96); ; i = *(i + 8))
  {
    v10 = *(i + 20);
    if (v8 < v10)
    {
      break;
    }

    v8 -= v10;
  }

  v12 = *(*(i + 32) + 56 * v8);
  if (*(v12 + 16))
  {
    v13 = *(a1 + 104);
    v14 = 24;
    if ((*(v12 + 4) & 0x400) != 0)
    {
      v15 = 24;
    }

    else
    {
      v15 = 16;
    }

    if ((*(v12 + 4) & 0x400) != 0)
    {
      v14 = 16;
    }

    v16 = *(v12 + v15);
    if ((v16[5] & 2) == 0)
    {
      v17 = *(v12 + v14);
      if (!v17 || (v17[5] & 2) == 0)
      {
        v18 = v13;
        v19 = sub_1818B4720(v13, v16, a3, a4, a5, a6, a7, a8);
        if (v19)
        {
          return *v19;
        }

        v13 = v18;
      }

      v16 = v17;
    }

    v19 = sub_1818B4720(v13, v16, a3, a4, a5, a6, a7, a8);
    if (v19)
    {
      return *v19;
    }
  }

  return "BINARY";
}

int sqlite3_vtab_in(sqlite3_index_info *a1, int iCons, int bHandle)
{
  if (!a1 || iCons < 0)
  {
    sub_1819012D0(177742);
    return 0;
  }

  v3 = 1 << iCons;
  if (iCons >= 0x20)
  {
    v3 = 0;
  }

  if ((*(&a1[1].nOrderBy + 1) & v3) == 0)
  {
    return 0;
  }

  if (!bHandle)
  {
    v4 = a1[1].aOrderBy & ~v3;
    goto LABEL_12;
  }

  if (bHandle >= 1)
  {
    v4 = LODWORD(a1[1].aOrderBy) | v3;
LABEL_12:
    LODWORD(a1[1].aOrderBy) = v4;
  }

  return 1;
}

int sqlite3_vtab_rhs_value(sqlite3_index_info *a1, int a2, sqlite3_value **ppVal)
{
  if (a1)
  {
    if (a2 < 0 || a1->nConstraint <= a2)
    {
      result = sub_1819012D0(177780);
      v6 = 0;
    }

    else
    {
      v5 = a1 + 8 * a2;
      v8 = *(v5 + 16);
      v7 = (v5 + 128);
      v6 = v8;
      if (v8)
      {
        result = 0;
      }

      else
      {
        iTermOffset = a1->aConstraint[a2].iTermOffset;
        for (i = *&a1[1].nConstraint; ; i = *(i + 8))
        {
          v13 = *(i + 20);
          if (iTermOffset < v13)
          {
            break;
          }

          iTermOffset -= v13;
        }

        v14 = *(*(*(i + 32) + 56 * iTermOffset) + 24);
        if (v14)
        {
          result = sub_18194BC5C(*a1[1].aConstraint, v14, *(*a1[1].aConstraint + 100), 65, v7);
          v6 = *v7;
        }

        else
        {
          v6 = 0;
          result = 0;
        }
      }
    }

    *ppVal = v6;
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = result == 0;
    }

    if (v10)
    {
      return 12;
    }
  }

  else
  {

    return sub_1819012D0(177775);
  }

  return result;
}

int sqlite3_vtab_distinct(sqlite3_index_info *a1)
{
  if (!a1 || (result = a1[1].nOrderBy, result >= 4))
  {
    sub_1819012D0(177813);
    return 0;
  }

  return result;
}

int sqlite3_keyword_name(int a1, const char **a2, int *a3)
{
  if (!a2)
  {
    return sub_1819012D0(190320);
  }

  *a2 = 0;
  if (!a3)
  {
    return sub_1819012D0(190320);
  }

  if (a1 > 0x92)
  {
    return 1;
  }

  result = 0;
  v5 = a1 + 1;
  *a2 = &aReindexedescap[word_181A20868[v5]];
  *a3 = byte_181A20990[v5];
  return result;
}

int sqlite3_keyword_check(const char *a1, int a2)
{
  if (!a1 || a2 < 0)
  {
    sub_1819012D0(190332);
  }

  else if (a2 >= 2)
  {
    v2 = byte_181A20F13[((3 * byte_181A20298[a1[a2 - 1]]) ^ (4 * byte_181A20298[*a1]) ^ a2) % 0x7F];
    if (byte_181A20F13[((3 * byte_181A20298[a1[a2 - 1]]) ^ (4 * byte_181A20298[*a1]) ^ a2) % 0x7F])
    {
      do
      {
        if (byte_181A20990[v2] == a2)
        {
          v3 = word_181A20868[v2];
          if ((*a1 & 0xDF) == aReindexedescap[v3] && (a1[1] & 0xDF) == aReindexedescap[v3 + 1])
          {
            if (a2 == 2)
            {
              return 1;
            }

            v4 = &aReindexedescap[v3 + 2];
            v5 = a1 + 2;
            v6 = a2 - 2;
            while (1)
            {
              v7 = *v5++;
              v8 = v7 & 0xFFFFFFDF;
              v9 = *v4++;
              if (v8 != v9)
              {
                break;
              }

              if (!--v6)
              {
                return 1;
              }
            }
          }
        }

        v2 = byte_181A21026[v2];
      }

      while (v2);
    }
  }

  return 0;
}

uint64_t sub_1819126D8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 60;
  v4 = 60;
  if (a2 >= 2)
  {
    sub_18194EBC8(a1, a2, &v4);
    return v4;
  }

  return v2;
}

int sqlite3_complete(const char *sql)
{
  if (sql)
  {
    v1 = 0;
    while (1)
    {
      v3 = *sql;
      if (*sql > 0x26u)
      {
        if (*sql > 0x3Au)
        {
          switch(v3)
          {
            case ';':
              v2 = 0;
              goto LABEL_5;
            case '[':
              while (1)
              {
                v8 = *++sql;
                v7 = v8;
                if (!v8)
                {
                  return 0;
                }

                if (v7 == 93)
                {
                  goto LABEL_32;
                }
              }

              goto LABEL_26;
          }
        }

        else
        {
          switch(v3)
          {
            case '\'':
              goto LABEL_26;
            case '-':
              if (sql[1] == 45)
              {
                v9 = 45;
                while (v9 != 10)
                {
                  v10 = *++sql;
                  v9 = v10;
                  if (!v10)
                  {
                    return v1 == 1;
                  }
                }

LABEL_4:
                v2 = 1;
                goto LABEL_5;
              }

              goto LABEL_32;
            case '/':
              if (sql[1] == 42)
              {
                for (sql += 3; ; ++sql)
                {
                  if (*(sql - 1) == 42)
                  {
                    if (*sql == 47)
                    {
                      goto LABEL_4;
                    }
                  }

                  else if (!*(sql - 1))
                  {
                    return 0;
                  }
                }
              }

LABEL_32:
              v2 = 2;
              goto LABEL_5;
          }
        }
      }

      else if (*sql <= 0xBu)
      {
        if ((v3 - 9) < 2)
        {
          goto LABEL_4;
        }

        if (!*sql)
        {
          return v1 == 1;
        }
      }

      else
      {
        if ((v3 - 12) < 2 || v3 == 32)
        {
          goto LABEL_4;
        }

        if (v3 == 34)
        {
          do
          {
LABEL_26:
            v5 = *++sql;
            v4 = v5;
            if (v5)
            {
              v6 = v4 == v3;
            }

            else
            {
              v6 = 1;
            }
          }

          while (!v6);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_32;
        }
      }

      if ((byte_181A204C8[v3] & 0x46) == 0)
      {
        goto LABEL_32;
      }

      v11 = 0;
      v12 = 0xFFFFFFFF00000000;
      do
      {
        v13 = byte_181A204C8[sql[v11 + 1]];
        v12 += 0x100000000;
        ++v11;
      }

      while ((v13 & 0x46) != 0);
      v14 = v3 - 67;
      if ((v3 - 67) > 0x31)
      {
LABEL_202:
        v2 = 2;
        goto LABEL_203;
      }

      if (((1 << v14) & 0x100000001) != 0)
      {
        if (v11 != 6)
        {
          goto LABEL_202;
        }

        if ((v3 & 0xFFFFFFDF) == 0x43)
        {
          v20 = *(sql + 1);
          if (!sql[1])
          {
            v21 = "reate";
            goto LABEL_172;
          }

          if ((v20 & 0xFFFFFFDF) == 0x52)
          {
            v20 = *(sql + 2);
            if (!sql[2])
            {
              v21 = "eate";
              goto LABEL_172;
            }

            if ((v20 & 0xFFFFFFDF) == 0x45)
            {
              v20 = *(sql + 3);
              if (!sql[3])
              {
                v21 = "ate";
                goto LABEL_172;
              }

              if ((v20 & 0xFFFFFFDF) == 0x41)
              {
                v20 = *(sql + 4);
                if (!sql[4])
                {
                  v21 = "te";
                  goto LABEL_172;
                }

                if ((v20 & 0xFFFFFFDF) == 0x54)
                {
                  v20 = *(sql + 5);
                  if (sql[5])
                  {
                    if ((v20 & 0xFFFFFFDF) != 0x45)
                    {
                      v20 += byte_181A20298;
                      v21 = "e";
                      goto LABEL_171;
                    }

LABEL_173:
                    v2 = 4;
                    goto LABEL_203;
                  }

                  v21 = "e";
LABEL_172:
                  if (v20 != byte_181A20298[*v21])
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_173;
                }

                v20 += byte_181A20298;
                v21 = "te";
              }

              else
              {
                v20 += byte_181A20298;
                v21 = "ate";
              }
            }

            else
            {
              v20 += byte_181A20298;
              v21 = "eate";
            }
          }

          else
          {
            v20 += byte_181A20298;
            v21 = "reate";
          }
        }

        else
        {
          v20 = &byte_181A20298[v3];
          v21 = "create";
        }

LABEL_171:
        LODWORD(v20) = *v20;
        goto LABEL_172;
      }

      if (((1 << v14) & 0x400000004) != 0)
      {
        break;
      }

      v15 = 1 << v14;
      v2 = 2;
      if ((v15 & 0x2000000020000) != 0)
      {
        if (v11 == 4)
        {
          if ((v3 & 0xFFFFFFDF) == 0x54)
          {
            v24 = *(sql + 1);
            if (!sql[1])
            {
              v25 = "emp";
              goto LABEL_200;
            }

            if ((v24 & 0xFFFFFFDF) == 0x45)
            {
              v24 = *(sql + 2);
              if (!sql[2])
              {
                v25 = "mp";
                goto LABEL_200;
              }

              if ((v24 & 0xFFFFFFDF) == 0x4D)
              {
                v24 = *(sql + 3);
                if (!sql[3])
                {
                  v25 = "p";
                  goto LABEL_200;
                }

                if ((v24 & 0xFFFFFFDF) == 0x50)
                {
                  goto LABEL_201;
                }

                v24 += byte_181A20298;
                v25 = "p";
              }

              else
              {
                v24 += byte_181A20298;
                v25 = "mp";
              }
            }

            else
            {
              v24 += byte_181A20298;
              v25 = "emp";
            }
          }

          else
          {
            v24 = &byte_181A20298[v3];
            v25 = "temp";
          }

          goto LABEL_199;
        }

        if (v11 == 9)
        {
          if ((v3 & 0xFFFFFFDF) == 0x54)
          {
            v24 = *(sql + 1);
            if (!sql[1])
            {
              v25 = "emporary";
              goto LABEL_200;
            }

            if ((v24 & 0xFFFFFFDF) == 0x45)
            {
              v24 = *(sql + 2);
              if (!sql[2])
              {
                v25 = "mporary";
                goto LABEL_200;
              }

              if ((v24 & 0xFFFFFFDF) == 0x4D)
              {
                v24 = *(sql + 3);
                if (!sql[3])
                {
                  v25 = "porary";
                  goto LABEL_200;
                }

                if ((v24 & 0xFFFFFFDF) == 0x50)
                {
                  v24 = *(sql + 4);
                  if (!sql[4])
                  {
                    v25 = "orary";
                    goto LABEL_200;
                  }

                  if ((v24 & 0xFFFFFFDF) == 0x4F)
                  {
                    v24 = *(sql + 5);
                    if (!sql[5])
                    {
                      v25 = "rary";
                      goto LABEL_200;
                    }

                    if ((v24 & 0xFFFFFFDF) == 0x52)
                    {
                      v24 = *(sql + 6);
                      if (!sql[6])
                      {
                        v25 = "ary";
                        goto LABEL_200;
                      }

                      if ((v24 & 0xFFFFFFDF) == 0x41)
                      {
                        v24 = *(sql + 7);
                        if (!sql[7])
                        {
                          v25 = "ry";
                          goto LABEL_200;
                        }

                        if ((v24 & 0xFFFFFFDF) == 0x52)
                        {
                          v24 = *(sql + 8);
                          if (sql[8])
                          {
                            if ((v24 & 0xFFFFFFDF) != 0x59)
                            {
                              v24 += byte_181A20298;
                              v25 = "y";
                              goto LABEL_199;
                            }

LABEL_201:
                            v2 = 5;
                            goto LABEL_203;
                          }

                          v25 = "y";
LABEL_200:
                          if (v24 != byte_181A20298[*v25])
                          {
                            goto LABEL_202;
                          }

                          goto LABEL_201;
                        }

                        v24 += byte_181A20298;
                        v25 = "ry";
                      }

                      else
                      {
                        v24 += byte_181A20298;
                        v25 = "ary";
                      }
                    }

                    else
                    {
                      v24 += byte_181A20298;
                      v25 = "rary";
                    }
                  }

                  else
                  {
                    v24 += byte_181A20298;
                    v25 = "orary";
                  }
                }

                else
                {
                  v24 += byte_181A20298;
                  v25 = "porary";
                }
              }

              else
              {
                v24 += byte_181A20298;
                v25 = "mporary";
              }
            }

            else
            {
              v24 += byte_181A20298;
              v25 = "emporary";
            }
          }

          else
          {
            v24 = &byte_181A20298[v3];
            v25 = "temporary";
          }

LABEL_199:
          LODWORD(v24) = *v24;
          goto LABEL_200;
        }

        if (v11 != 7)
        {
          goto LABEL_202;
        }

        if ((v3 & 0xFFFFFFDF) == 0x54)
        {
          v16 = *(sql + 1);
          if (!sql[1])
          {
            v17 = "rigger";
            goto LABEL_191;
          }

          if ((v16 & 0xFFFFFFDF) == 0x52)
          {
            v16 = *(sql + 2);
            if (!sql[2])
            {
              v17 = "igger";
              goto LABEL_191;
            }

            if ((v16 & 0xFFFFFFDF) == 0x49)
            {
              v16 = *(sql + 3);
              if (!sql[3])
              {
                v17 = "gger";
                goto LABEL_191;
              }

              if ((v16 & 0xFFFFFFDF) == 0x47)
              {
                v16 = *(sql + 4);
                if (!sql[4])
                {
                  v17 = "ger";
                  goto LABEL_191;
                }

                if ((v16 & 0xFFFFFFDF) == 0x47)
                {
                  v16 = *(sql + 5);
                  if (!sql[5])
                  {
                    v17 = "er";
                    goto LABEL_191;
                  }

                  if ((v16 & 0xFFFFFFDF) == 0x45)
                  {
                    v16 = *(sql + 6);
                    if (sql[6])
                    {
                      if ((v16 & 0xFFFFFFDF) != 0x52)
                      {
                        v16 += byte_181A20298;
                        v17 = "r";
                        goto LABEL_190;
                      }

LABEL_192:
                      v2 = 6;
                      goto LABEL_203;
                    }

                    v17 = "r";
LABEL_191:
                    if (v16 != byte_181A20298[*v17])
                    {
                      goto LABEL_202;
                    }

                    goto LABEL_192;
                  }

                  v16 += byte_181A20298;
                  v17 = "er";
                }

                else
                {
                  v16 += byte_181A20298;
                  v17 = "ger";
                }
              }

              else
              {
                v16 += byte_181A20298;
                v17 = "gger";
              }
            }

            else
            {
              v16 += byte_181A20298;
              v17 = "igger";
            }
          }

          else
          {
            v16 += byte_181A20298;
            v17 = "rigger";
          }
        }

        else
        {
          v16 = &byte_181A20298[v3];
          v17 = "trigger";
        }

LABEL_190:
        LODWORD(v16) = *v16;
        goto LABEL_191;
      }

LABEL_203:
      sql += v12 >> 32;
LABEL_5:
      v1 = byte_181A20A24[8 * v1 + v2];
      ++sql;
    }

    if (v11 == 7)
    {
      if ((v3 & 0xFFFFFFDF) == 0x45)
      {
        v22 = *(sql + 1);
        if (!sql[1])
        {
          v23 = "xplain";
          goto LABEL_184;
        }

        if ((v22 & 0xFFFFFFDF) == 0x58)
        {
          v22 = *(sql + 2);
          if (!sql[2])
          {
            v23 = "plain";
            goto LABEL_184;
          }

          if ((v22 & 0xFFFFFFDF) == 0x50)
          {
            v22 = *(sql + 3);
            if (!sql[3])
            {
              v23 = "lain";
              goto LABEL_184;
            }

            if ((v22 & 0xFFFFFFDF) == 0x4C)
            {
              v22 = *(sql + 4);
              if (!sql[4])
              {
                v23 = "ain";
                goto LABEL_184;
              }

              if ((v22 & 0xFFFFFFDF) == 0x41)
              {
                v22 = *(sql + 5);
                if (!sql[5])
                {
                  v23 = "in";
                  goto LABEL_184;
                }

                if ((v22 & 0xFFFFFFDF) == 0x49)
                {
                  v22 = *(sql + 6);
                  if (sql[6])
                  {
                    if ((v22 & 0xFFFFFFDF) != 0x4E)
                    {
                      v22 += byte_181A20298;
                      v23 = "n";
                      goto LABEL_183;
                    }

LABEL_185:
                    v2 = 3;
                    goto LABEL_203;
                  }

                  v23 = "n";
LABEL_184:
                  if (v22 != byte_181A20298[*v23])
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_185;
                }

                v22 += byte_181A20298;
                v23 = "in";
              }

              else
              {
                v22 += byte_181A20298;
                v23 = "ain";
              }
            }

            else
            {
              v22 += byte_181A20298;
              v23 = "lain";
            }
          }

          else
          {
            v22 += byte_181A20298;
            v23 = "plain";
          }
        }

        else
        {
          v22 += byte_181A20298;
          v23 = "xplain";
        }
      }

      else
      {
        v22 = &byte_181A20298[v3];
        v23 = "explain";
      }

LABEL_183:
      LODWORD(v22) = *v22;
      goto LABEL_184;
    }

    if (v11 != 3)
    {
      goto LABEL_202;
    }

    if ((v3 & 0xFFFFFFDF) == 0x45)
    {
      v18 = *(sql + 1);
      if (!sql[1])
      {
        v19 = "nd";
        goto LABEL_140;
      }

      if ((v18 & 0xFFFFFFDF) == 0x4E)
      {
        v18 = *(sql + 2);
        if (!sql[2])
        {
          v19 = "d";
LABEL_140:
          if (v18 != byte_181A20298[*v19])
          {
            goto LABEL_202;
          }

          goto LABEL_141;
        }

        if ((v18 & 0xFFFFFFDF) == 0x44)
        {
LABEL_141:
          v2 = 7;
          goto LABEL_203;
        }

        v18 += byte_181A20298;
        v19 = "d";
      }

      else
      {
        v18 += byte_181A20298;
        v19 = "nd";
      }
    }

    else
    {
      v18 = &byte_181A20298[v3];
      v19 = "end";
    }

    LODWORD(v18) = *v18;
    goto LABEL_140;
  }

  sub_1819012D0(191232);
  return 0;
}

int sqlite3_complete16(const void *sql)
{
  result = sqlite3_initialize();
  if (result)
  {
    return result;
  }

  v3 = sub_181902484(64, 0x10F2040695A4BFELL);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 20) = 1;
  *(v3 + 24) = 0;
  sub_1818900D0(v3, sql, -1, 2u, 0);
  v5 = *(v4 + 20);
  if ((~v5 & 0x202) != 0 || *(v4 + 22) != 1)
  {
    if (v5)
    {
      goto LABEL_10;
    }

    v6 = sub_18193CB70(v4, 1);
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sqlite3_complete(v6);
    goto LABEL_11;
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = 7;
LABEL_11:
  if ((*(v4 + 20) & 0x9000) != 0 || *(v4 + 32))
  {
    sub_18193CA00(v4);
  }

  sub_181929C84(*(v4 + 24), v4);
  return v7;
}

uint64_t sub_181913154()
{
  dword_1ED45305C = 0;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v1 = dword_1ED45305C | 0x20;
  }

  else
  {
    v1 = dword_1ED45305C;
  }

  v2 = v1 | 1;
  dword_1ED45305C = v1 | 1;
  v3 = getenv("SQLITE_ENABLE_LOGGING");
  if (v3 && *v3 == 48 && !v3[1])
  {
    v2 = v1 & 0xFFFFFFFE;
    dword_1ED45305C = v1 & 0xFFFFFFFE;
  }

  if (has_internal_content)
  {
    v2 |= 2u;
    dword_1ED45305C = v2;
  }

  v4 = getenv("SQLITE_ENABLE_FILE_ASSERTIONS");
  if (v4)
  {
    if (*v4 == 48 && !v4[1])
    {
      v2 &= ~2u;
    }

    else
    {
      v2 |= 6u;
    }

    dword_1ED45305C = v2;
  }

  if (has_internal_content)
  {
    v2 |= 8u;
    dword_1ED45305C = v2;
  }

  v5 = getenv("SQLITE_ENABLE_THREAD_ASSERTIONS");
  if (v5)
  {
    if (*v5 == 48 && !v5[1])
    {
      v2 &= ~8u;
    }

    else
    {
      v2 |= 0x18u;
    }

    dword_1ED45305C = v2;
  }

  if (has_internal_content)
  {
    v2 |= 0x40u;
    dword_1ED45305C = v2;
  }

  v6 = getenv("SQLITE_ENABLE_VNODE_GUARDS");
  if (v6)
  {
    if (*v6 == 48 && !v6[1])
    {
      v7 = v2 & 0xFFFFFFBF;
    }

    else
    {
      v7 = v2 | 0x40;
    }

    dword_1ED45305C = v7;
  }

  if (dyld_get_program_sdk_version() >> 8 > 0xC02 || (v8 = getprogname(), !strcmp(v8, "xctest")))
  {
    dword_1ED45305C |= 0x80u;
  }

  v9 = getprogname();
  result = strcmp(v9, "testfixture");
  if (result)
  {
    v11 = getprogname();
    result = strcmp(v11, "sqlite3");
    if (result)
    {
      result = dyld_program_sdk_at_least();
      if ((result & 1) != 0 || (v12 = getprogname(), result = strcmp(v12, "xctest"), !result))
      {
        dword_1ED45305C |= 0x100u;
      }
    }
  }

  return result;
}

void sub_18191331C()
{
  for (i = 0; i != 5; ++i)
  {
    v2 = &unk_1ED455848 + 72 * i;
    v3 = *(v2 + 7);
    if (v3)
    {
      v4 = strlen(*(v2 + 7)) & 0x3FFFFFFF;
    }

    else
    {
      v4 = 0;
    }

    v5 = &xmmword_1ED456B50 + (v4 + *v3) % 23;
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_15;
    }

    v7 = *v5;
    do
    {
      v8 = v7[7];
      for (j = *(v2 + 7); *v8 == *j; ++j)
      {
        if (!*v8)
        {
          v6 = v7[2];
          v5 = v7 + 2;
          v1 = 16;
          goto LABEL_2;
        }

LABEL_10:
        ++v8;
      }

      if (byte_181A20298[*v8] == byte_181A20298[*j])
      {
        goto LABEL_10;
      }

      v7 = v7[8];
    }

    while (v7);
LABEL_15:
    *(v2 + 2) = 0;
    v1 = 64;
LABEL_2:
    *&v2[v1] = v6;
    *v5 = v2;
  }

  v10 = 0;
  while (2)
  {
    v12 = &unk_1ED4559B0 + 72 * v10;
    v13 = *(v12 + 7);
    if (v13)
    {
      v14 = strlen(*(v12 + 7)) & 0x3FFFFFFF;
    }

    else
    {
      v14 = 0;
    }

    v15 = &xmmword_1ED456B50 + (v14 + *v13) % 23;
    v16 = *v15;
    if (!*v15)
    {
      goto LABEL_30;
    }

    v17 = *v15;
    do
    {
      v18 = v17[7];
      for (k = *(v12 + 7); *v18 == *k; ++k)
      {
        if (!*v18)
        {
          v16 = v17[2];
          v15 = v17 + 2;
          v11 = 16;
          goto LABEL_17;
        }

LABEL_25:
        ++v18;
      }

      if (byte_181A20298[*v18] == byte_181A20298[*k])
      {
        goto LABEL_25;
      }

      v17 = v17[8];
    }

    while (v17);
LABEL_30:
    *(v12 + 2) = 0;
    v11 = 64;
LABEL_17:
    *&v12[v11] = v16;
    *v15 = v12;
    if (++v10 != 15)
    {
      continue;
    }

    break;
  }

  v20 = 0;
  while (2)
  {
    v22 = &unk_1ED455DE8 + 72 * v20;
    v23 = *(v22 + 7);
    if (v23)
    {
      v24 = strlen(*(v22 + 7)) & 0x3FFFFFFF;
    }

    else
    {
      v24 = 0;
    }

    v25 = &xmmword_1ED456B50 + (v24 + *v23) % 23;
    v26 = *v25;
    if (!*v25)
    {
      goto LABEL_45;
    }

    v27 = *v25;
    while (2)
    {
      v28 = v27[7];
      v29 = *(v22 + 7);
      while (2)
      {
        if (*v28 == *v29)
        {
          if (!*v28)
          {
            v26 = v27[2];
            v25 = v27 + 2;
            v21 = 16;
            goto LABEL_32;
          }

          goto LABEL_40;
        }

        if (byte_181A20298[*v28] == byte_181A20298[*v29])
        {
LABEL_40:
          ++v28;
          ++v29;
          continue;
        }

        break;
      }

      v27 = v27[8];
      if (v27)
      {
        continue;
      }

      break;
    }

LABEL_45:
    *(v22 + 2) = 0;
    v21 = 64;
LABEL_32:
    *&v22[v21] = v26;
    *v25 = v22;
    if (++v20 != 10)
    {
      continue;
    }

    break;
  }

  v30 = 0;
  while (2)
  {
    v32 = &unk_1ED4560B8 + 72 * v30;
    v33 = *(v32 + 7);
    if (v33)
    {
      v34 = strlen(*(v32 + 7)) & 0x3FFFFFFF;
    }

    else
    {
      v34 = 0;
    }

    v35 = &xmmword_1ED456B50 + (v34 + *v33) % 23;
    v36 = *v35;
    if (!*v35)
    {
      goto LABEL_60;
    }

    v37 = *v35;
    while (2)
    {
      v38 = v37[7];
      v39 = *(v32 + 7);
      while (2)
      {
        if (*v38 == *v39)
        {
          if (!*v38)
          {
            v36 = v37[2];
            v35 = v37 + 2;
            v31 = 16;
            goto LABEL_47;
          }

          goto LABEL_55;
        }

        if (byte_181A20298[*v38] == byte_181A20298[*v39])
        {
LABEL_55:
          ++v38;
          ++v39;
          continue;
        }

        break;
      }

      v37 = v37[8];
      if (v37)
      {
        continue;
      }

      break;
    }

LABEL_60:
    *(v32 + 2) = 0;
    v31 = 64;
LABEL_47:
    *&v32[v31] = v36;
    *v35 = v32;
    if (++v30 != 34)
    {
      continue;
    }

    break;
  }

  v40 = 0;
  while (2)
  {
    v42 = &unk_1ED453B50 + 72 * v40;
    v43 = *(v42 + 7);
    if (v43)
    {
      v44 = strlen(*(v42 + 7)) & 0x3FFFFFFF;
    }

    else
    {
      v44 = 0;
    }

    v45 = &xmmword_1ED456B50 + (v44 + *v43) % 23;
    v46 = *v45;
    if (!*v45)
    {
      goto LABEL_75;
    }

    v47 = *v45;
    while (2)
    {
      v48 = v47[7];
      v49 = *(v42 + 7);
      while (2)
      {
        if (*v48 == *v49)
        {
          if (!*v48)
          {
            v46 = v47[2];
            v45 = v47 + 2;
            v41 = 16;
            goto LABEL_62;
          }

          goto LABEL_70;
        }

        if (byte_181A20298[*v48] == byte_181A20298[*v49])
        {
LABEL_70:
          ++v48;
          ++v49;
          continue;
        }

        break;
      }

      v47 = v47[8];
      if (v47)
      {
        continue;
      }

      break;
    }

LABEL_75:
    *(v42 + 2) = 0;
    v41 = 64;
LABEL_62:
    *&v42[v41] = v46;
    *v45 = v42;
    if (++v40 != 103)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1819137C8()
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v1 = sub_181902484(10, 3880978168);
  if (!v1)
  {
    return 7;
  }

  v2 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      v3 = v1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      v1 = v3;
    }

    v4 = v1;
    qword_1ED456A48 -= xmmword_1ED452EC0(v1);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_10;
    }

    v2 = &xmmword_1ED452F28;
  }

  (*v2)();
LABEL_10:
  sqlite3_os_init();
  return 0;
}

uint64_t sub_1819138A0()
{
  if (sqlite3_initialize())
  {
    return 1;
  }

  if (word_1ED452E84 && (v1 = qword_1ED452F08(2)) != 0)
  {
    v2 = v1;
    xmmword_1ED452F18(v1);
    v3 = qword_1ED456AE8;
    xmmword_1ED452F28(v2);
    if (!v3)
    {
      return 1;
    }
  }

  else
  {
    v3 = qword_1ED456AE8;
    if (!qword_1ED456AE8)
    {
      return 1;
    }
  }

  v4 = *(v3 + 4);
  *algn_1ED453A98 = v3;
  if (v4 <= 0x18)
  {
    v4 = 24;
  }

  dword_1ED453A7C = v4;
  result = sqlite3_initialize();
  if (!result)
  {
    if (word_1ED452E84)
    {
      v5 = qword_1ED452F08(2);
      if (v5)
      {
        v6 = v5;
        xmmword_1ED452F18(v5);
        v5 = v6;
        v7 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 1;
LABEL_17:
    v8 = &qword_1ED456AE8;
    v9 = qword_1ED456AE8;
    if (qword_1ED456AE8 != &unk_1ED453A78)
    {
      if (!qword_1ED456AE8)
      {
        goto LABEL_30;
      }

      v10 = qword_1ED456AE8;
      do
      {
        v11 = v10;
        v10 = v10[2];
        if (v10)
        {
          v12 = v10 == &unk_1ED453A78;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
      if (v10 != &unk_1ED453A78)
      {
LABEL_28:
        if (v9)
        {
          v15 = *(v9 + 16);
          v13 = (v9 + 16);
          v14 = v15;
LABEL_31:
          qword_1ED453A88 = v14;
          *v13 = &unk_1ED453A78;
          if ((v7 & 1) == 0)
          {
            xmmword_1ED452F28(v5);
          }

          return 0;
        }

LABEL_30:
        v14 = 0;
        v13 = &qword_1ED456AE8;
        goto LABEL_31;
      }

      v8 = v11 + 2;
    }

    *v8 = qword_1ED453A88;
    v9 = qword_1ED456AE8;
    goto LABEL_28;
  }

  return result;
}

void *sub_181913A24(void *result, int a2, int a3)
{
  if (xmmword_1EA8319D0)
  {
    if (result)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }

    v4 = a2 & 0xFFFFFFF8;
    dword_1EA831A08 = v3;
    if (!v3)
    {
      v4 = 0;
    }

    HIDWORD(xmmword_1EA8319D0) = v4;
    dword_1EA8319E0 = v3;
    if (v3 < 91)
    {
      dword_1EA8319E4 = v3 / 10 + 1;
      qword_1EA8319E8 = result;
      qword_1EA831A00 = 0;
      dword_1EA831A0C = 0;
      if (!v3)
      {
LABEL_13:
        *&xmmword_1EA8319F0 = result;
        return result;
      }
    }

    else
    {
      dword_1EA8319E4 = 10;
      qword_1EA8319E8 = result;
      dword_1EA831A0C = 0;
    }

    v5 = 0;
    do
    {
      *result = v5;
      v5 = result;
      result = (result + v4);
      --v3;
    }

    while (v3);
    qword_1EA831A00 = result - v4;
    goto LABEL_13;
  }

  return result;
}

int sqlite3_shutdown(void)
{
  if (qword_1ED452FEC)
  {
    os_unfair_recursive_lock_lock_with_options();
    HIDWORD(qword_1ED452FEC) = 1;
    if (!qword_1ED452FEC)
    {
      qword_1ED452FEC = 0;
      os_unfair_recursive_lock_unlock();
      return 0;
    }

    qword_1ED456B10 = 0;
    if (!sqlite3_initialize())
    {
      if (word_1ED452E84)
      {
        v0 = qword_1ED452F08(2);
        if (v0)
        {
          v1 = v0;
          xmmword_1ED452F18(v0);
          xmmword_1ED452F28(v1);
        }
      }
    }

    qword_1ED452FEC = 0;
    os_unfair_recursive_lock_unlock();
  }

  if (dword_1ED452FFC)
  {
    if (*(&xmmword_1ED452F50 + 1))
    {
      (*(&xmmword_1ED452F50 + 1))(qword_1ED452F48);
    }

    dword_1ED452FFC = 0;
  }

  if (dword_1ED452FF8)
  {
    if (off_1ED452ED8)
    {
      off_1ED452ED8(xmmword_1ED452EE0);
    }

    xmmword_1ED456AF0 = 0u;
    *&qword_1ED456B00 = 0u;
    dword_1ED452FF8 = 0;
    sqlite3_data_directory = 0;
    sqlite3_temp_directory = 0;
  }

  if (dword_1ED452FF4)
  {
    if (*(&xmmword_1ED452EF8 + 1))
    {
      (*(&xmmword_1ED452EF8 + 1))();
    }

    dword_1ED452FF4 = 0;
  }

  return 0;
}

uint64_t sub_181913C48()
{
  if (dword_1ED452FDC)
  {
    v0 = dword_1ED452FD8 == 0;
  }

  else
  {
    v0 = 1;
  }

  v1 = v0 || qword_1ED452FD0 == 0;
  v2 = &unk_1EEF902B0;
  if (v1)
  {
    v2 = &unk_1EEF90318;
  }

  return sqlite3_config(18, v2);
}

sqlite3_mutex *__cdecl sqlite3_db_mutex(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 3);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192543);
  return 0;
}

int sqlite3_db_release_memory(sqlite3 *a1)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_23;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_23:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(192558);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  if (!*(a1 + 111))
  {
    sub_181932C40(a1);
  }

  v5 = *(a1 + 10);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 4) + v7);
      if (v8 && off_1ED452FA0)
      {
        (off_1ED452FA0)(*(*(**(v8 + 8) + 336) + 72));
        v5 = *(a1 + 10);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  if (!*(a1 + 111))
  {
    sub_181932CD8(a1);
  }

  v9 = *(a1 + 3);
  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

  return 0;
}

int sqlite3_db_cacheflush(sqlite3 *a1)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_34;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_34:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(192584);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_34;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  if (!*(a1 + 111))
  {
    sub_181932C40(a1);
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = v5;
    v8 = *(a1 + 10);
    if (v5 >= v8)
    {
      break;
    }

    v9 = *(*(a1 + 4) + 32 * v5 + 8);
    if (v9 && *(v9 + 16) == 2)
    {
      v10 = **(v9 + 8);
      v11 = *(v10 + 48);
      if (!*(v10 + 19))
      {
        v12 = *(v10 + 48);
        v13 = sub_181936ED4(*(v10 + 336));
        v11 = v12;
        if (!v12 && v13 != 0)
        {
          do
          {
            v15 = *(v13 + 32);
            if (*(v13 + 56))
            {
              v11 = 0;
            }

            else
            {
              v11 = sub_1819447E4(v10, v13);
              if (v11)
              {
                break;
              }
            }

            v13 = v15;
          }

          while (v15);
        }
      }

      if (v11 == 5)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11;
      }

      if (v11 == 5)
      {
        v6 = 1;
      }

      v5 = v7 + 1;
      if (v16)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v5 = v7 + 1;
    }
  }

  v16 = 0;
LABEL_38:
  if (!*(a1 + 111))
  {
    sub_181932CD8(a1);
  }

  v18 = *(a1 + 3);
  if (v18)
  {
    xmmword_1ED452F28(v18);
  }

  if (v6)
  {
    v19 = v7 < v8;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    return v16;
  }

  else
  {
    return 5;
  }
}

int sqlite3_db_config(sqlite3 *a1, int op, ...)
{
  va_start(va, op);
  v16 = va_arg(va, void *);
  v17 = va_arg(va, int *);
  v18 = va_arg(va, void);
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_12;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(192612);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v4 = a1;
    v5 = op;
    xmmword_1ED452F18(*(a1 + 3));
    op = v5;
    a1 = v4;
  }

  v6 = &unk_181A20A68;
  switch(op)
  {
    case 1000:
      v7 = 0;
      **(a1 + 4) = v16;
      goto LABEL_47;
    case 1001:
      v9 = a1;
      v10 = sub_18191439C(a1, v16, v17, v18);
      goto LABEL_29;
    case 1002:
      goto LABEL_38;
    case 1003:
      v6 = &unk_181A20A78;
      goto LABEL_38;
    case 1004:
      if ((dword_1ED45305C & 0x80) == 0)
      {
        v6 = &unk_181A20A98;
LABEL_38:
        v11 = *(a1 + 6);
        if (v16 < 1)
        {
          if (v16)
          {
LABEL_45:
            v7 = 0;
            if (v17)
            {
              *v17 = (v6[1] & *(a1 + 6)) != 0;
            }

            goto LABEL_47;
          }

          v12 = v11 & ~v6[1];
        }

        else
        {
          v12 = v6[1] | v11;
        }

        *(a1 + 6) = v12;
        if (v11 != v12)
        {
          for (i = *(a1 + 1); i; i = *(i + 16))
          {
            *(i + 268) = *(i + 268) & 0xFFFC | 1;
          }
        }

        goto LABEL_45;
      }

      v7 = 0;
      if (v17)
      {
        *v17 = (*(a1 + 12) >> 22) & 1;
      }

LABEL_47:
      v14 = *(a1 + 3);
      if (v14)
      {
        xmmword_1ED452F28(v14);
      }

      return v7;
    case 1005:
      v9 = a1;
      v10 = sub_1819012D0(192633);
LABEL_29:
      v7 = v10;
      a1 = v9;
      goto LABEL_47;
    case 1006:
      v6 = &unk_181A20AB8;
      goto LABEL_38;
    case 1007:
      v6 = &unk_181A20AC8;
      goto LABEL_38;
    case 1008:
      v6 = &unk_181A20AD8;
      goto LABEL_38;
    case 1009:
      v6 = &unk_181A20AE8;
      goto LABEL_38;
    case 1010:
      v6 = &unk_181A20AF8;
      goto LABEL_38;
    case 1011:
      v6 = &unk_181A20B08;
      goto LABEL_38;
    case 1012:
      v6 = &unk_181A20B18;
      goto LABEL_38;
    case 1013:
      v6 = &unk_181A20B38;
      goto LABEL_38;
    case 1014:
      v6 = &unk_181A20B28;
      goto LABEL_38;
    case 1015:
      v6 = &unk_181A20A88;
      goto LABEL_38;
    case 1016:
      v6 = &unk_181A20B48;
      goto LABEL_38;
    case 1017:
      v6 = &unk_181A20B58;
      goto LABEL_38;
    case 1018:
      v6 = &unk_181A20B68;
      goto LABEL_38;
    case 1019:
      v6 = &unk_181A20B78;
      goto LABEL_38;
    case 1020:
      v6 = &unk_181A20B88;
      goto LABEL_38;
    case 1021:
      v6 = &unk_181A20B98;
      goto LABEL_38;
    case 1022:
      v6 = &unk_181A20BA8;
      goto LABEL_38;
    default:
      v7 = 1;
      goto LABEL_47;
  }
}

uint64_t sub_18191439C(uint64_t a1, void *a2, int a3, int a4)
{
  v5 = a1;
  v6 = *(a1 + 464);
  if (!v6)
  {
    v7 = 2;
    v8 = *(a1 + 472);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = -1;
    v10 = *(a1 + 480);
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v7 = 2;
  do
  {
    v6 = *v6;
    ++v7;
  }

  while (v6);
  v8 = *(a1 + 472);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = -1;
  do
  {
    v8 = *v8;
    ++v9;
  }

  while (v8);
  v10 = *(a1 + 480);
  if (v10)
  {
LABEL_8:
    v11 = -1;
    do
    {
      v10 = *v10;
      ++v11;
    }

    while (v10);
    v12 = *(a1 + 488);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_17:
    v13 = -1;
    goto LABEL_18;
  }

LABEL_16:
  v11 = -1;
  v12 = *(a1 + 488);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_11:
  v13 = -1;
  do
  {
    v12 = *v12;
    ++v13;
  }

  while (v12);
LABEL_18:
  if (v7 + v11 + v9 + v13 - *(a1 + 444) < -1)
  {
    return 5;
  }

  if (*(a1 + 440))
  {
    v15 = *(a1 + 504);
    if (v15)
    {
      v16 = &off_1ED452EB0;
      v17 = a4;
      v18 = a3;
      if (!dword_1ED452E80)
      {
LABEL_27:
        a1 = (*v16)(v15);
        a4 = v17;
        a3 = v18;
        goto LABEL_28;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      a1 = off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      a4 = v17;
      a3 = v18;
      if (xmmword_1ED456AF0)
      {
        v16 = &xmmword_1ED452F28;
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  if ((a3 & 0xFFFFFFF8) >= 0xFFF8)
  {
    v19 = 65528;
  }

  else
  {
    v19 = a3 & 0xFFFFFFF8;
  }

  if ((a3 & 0xFFFFFFF8) >= 9)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = a4 & ~(a4 >> 31);
  if (v20 && (0x7FFF0000 / v19) < a4)
  {
    v21 = 0x7FFF0000 / v19;
  }

  v22 = v21 * v20;
  if (v22)
  {
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      if (off_1EA831A10)
      {
        off_1EA831A10(a1);
      }

      v24 = sub_181902484(v22, 1409934480);
      v23 = v24;
      if (off_1EA831A18)
      {
        off_1EA831A18(v24);
      }

      if (v23)
      {
        v22 = xmmword_1ED452EC0(v23);
      }
    }

    if (v20 < 0x180)
    {
      if (v20 < 0x100)
      {
        if (v20)
        {
          LODWORD(v26) = 0;
          v25 = v22 / v20;
        }

        else
        {
          v19 = 0;
          LODWORD(v25) = 0;
          LODWORD(v26) = 0;
        }
      }

      else
      {
        v25 = v22 / (v20 + 128);
        v26 = (v22 - v25 * v20 + (v22 - v25 * v20 < 0 ? 0x7FuLL : 0)) >> 7;
      }
    }

    else
    {
      v25 = v22 / (v20 + 384);
      v26 = (v22 - v25 * v20 + (v22 - v25 * v20 < 0 ? 0x7FuLL : 0)) >> 7;
    }

    *(v5 + 504) = v23;
    *(v5 + 464) = 0;
    *(v5 + 472) = 0;
    *(v5 + 436) = v19;
    *(v5 + 438) = v19;
    if (v23)
    {
      if (v25 >= 1)
      {
        v27 = 0;
        v28 = v25;
        do
        {
          *v23 = v27;
          v27 = v23;
          v23 = (v23 + v19);
          --v28;
        }

        while (v28);
        *(v5 + 464) = v23 - v19;
      }

      *(v5 + 480) = 0;
      *(v5 + 488) = 0;
      *(v5 + 496) = v23;
      if (v26 >= 1)
      {
        v29 = 0;
        v30 = v26;
        do
        {
          v31 = v23;
          *v23 = v29;
          v23 += 16;
          v29 = v31;
          --v30;
        }

        while (v30);
        *(v5 + 480) = v23 - 16;
      }

      *(v5 + 512) = v23;
      *(v5 + 432) = 0;
      *(v5 + 440) = a2 == 0;
      v32 = v26 + v25;
      goto LABEL_65;
    }
  }

  else
  {
    *(v5 + 438) = 0;
    *(v5 + 464) = 0;
    *(v5 + 472) = 0;
  }

  v23 = 0;
  v32 = 0;
  *(v5 + 504) = 0;
  *(v5 + 512) = 0;
  *(v5 + 488) = 0;
  *(v5 + 496) = 0;
  *(v5 + 480) = 0;
  *(v5 + 432) = 1;
  *(v5 + 436) = 0;
  *(v5 + 440) = 0;
LABEL_65:
  result = 0;
  *(v5 + 444) = v32;
  *(v5 + 520) = v23;
  return result;
}

void sqlite3_set_last_insert_rowid(sqlite3 *a1, sqlite3_int64 a2)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_13;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_13:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    sub_1819012D0(192799);
    return;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    xmmword_1ED452F18(*(a1 + 3));
    v6 = *(a1 + 3);
    *(a1 + 7) = a2;
    if (v6)
    {
      v7 = xmmword_1ED452F28;

      v7();
    }
  }

  else
  {
    *(a1 + 7) = a2;
  }
}

sqlite3_int64 sqlite3_changes64(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 15);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192814);
  return 0;
}

sqlite3_int64 sqlite3_total_changes64(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 16);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192830);
  return 0;
}

int sqlite3_total_changes(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 32);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192830);
  return 0;
}

int sqlite3_txn_state(sqlite3 *a1, const char *zSchema)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_30;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_30:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    sub_1819012D0(193053);
    return -1;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_30;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v4 = a1;
    v5 = zSchema;
    xmmword_1ED452F18(*(a1 + 3));
    zSchema = v5;
    a1 = v4;
  }

  v6 = *(a1 + 10);
  if (!zSchema)
  {
    v16 = v6 - 1;
    if (v6 >= 1)
    {
      LODWORD(v8) = 0;
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = (v6 - 1);
  if (v8 < 0 != v7)
  {
LABEL_41:
    v10 = -1;
    goto LABEL_42;
  }

  v9 = (*(a1 + 4) + 32 * v8);
  v10 = -1;
  while (1)
  {
    v11 = *v9;
    if (*v9)
    {
      for (i = zSchema; ; ++i)
      {
        if (*v11 == *i)
        {
          if (!*v11)
          {
            v16 = v8;
            if ((v8 & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_41;
          }
        }

        else if (byte_181A20298[*v11] != byte_181A20298[*i])
        {
          break;
        }

        ++v11;
      }
    }

    if (!v8)
    {
      break;
    }

LABEL_20:
    v9 -= 4;
    v13 = v8 <= 0;
    LODWORD(v8) = v8 - 1;
    if (v13)
    {
      goto LABEL_42;
    }
  }

  v14 = "main";
  for (j = zSchema; *v14 != *j; ++j)
  {
    if (byte_181A20298[*v14] != byte_181A20298[*j])
    {
      goto LABEL_20;
    }

LABEL_25:
    ++v14;
  }

  if (*v14)
  {
    goto LABEL_25;
  }

  LODWORD(v8) = 0;
  v16 = 0;
LABEL_35:
  v18 = (*(a1 + 4) + 32 * v8 + 8);
  v19 = v16 - v8 + 1;
  v10 = -1;
  do
  {
    v20 = *v18;
    if (*v18)
    {
      LODWORD(v20) = *(v20 + 16);
    }

    if (v20 > v10)
    {
      v10 = v20;
    }

    v18 += 4;
    --v19;
  }

  while (v19);
LABEL_42:
  v21 = *(a1 + 3);
  if (v21)
  {
    xmmword_1ED452F28(v21);
  }

  return v10;
}

uint64_t sub_181914B98(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a1 + 113);
  if (v6 == 109 || v6 == 118 || v6 == 186)
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      xmmword_1ED452F18(v7);
    }

    if ((*(a1 + 110) & 8) != 0)
    {
      (*(a1 + 240))(8, *(a1 + 248), a1, 0);
    }

    if (!*(a1 + 111))
    {
      sub_181932C40(a1);
    }

    v8 = *(a1 + 40);
    if (v8 >= 1)
    {
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 32) + 32 * i + 24);
        if (v10)
        {
          v11 = *(v10 + 16);
          if (v11)
          {
            do
            {
              v12 = v11[2];
              if (*(v12 + 63) == 1)
              {
                sub_1819A97C4(a1, v12);
              }

              v11 = *v11;
            }

            while (v11);
            v8 = *(a1 + 40);
          }
        }
      }
    }

    for (j = *(a1 + 576); j; j = *j)
    {
      v15 = *(j[2] + 40);
      if (v15)
      {
        sub_1819A97C4(a1, v15);
      }
    }

    v14 = *(a1 + 608);
    if (v14)
    {
      *(a1 + 608) = 0;
      do
      {
        v16 = *(v14 + 40);
        v17 = *v14;
        v18 = *(v14 + 24) - 1;
        *(v14 + 24) = v18;
        if (!v18)
        {
          v19 = *(v14 + 16);
          v20 = v17;
          if (v19)
          {
            (*(*v19 + 32))(v19);
            v20 = *v14;
          }

          v21 = *(v14 + 8);
          v22 = *(v21 + 16) - 1;
          *(v21 + 16) = v22;
          if (!v22)
          {
            v23 = *(v21 + 32);
            if (v23)
            {
              v23(*(v21 + 24));
            }

            sub_181929C84(v20, v21);
          }

          sub_181929C84(v17, v14);
        }

        v14 = v16;
      }

      while (v16);
    }

    if (!*(a1 + 111))
    {
      sub_181932CD8(a1);
    }

    v24 = *(a1 + 600);
    if (v24)
    {
      *(a1 + 600) = 0;
      if (*(a1 + 564) >= 1)
      {
        v25 = 0;
        do
        {
          v26 = v24[v25];
          v27 = *(v26 + 16);
          if (v27)
          {
            v28 = *(*v27 + 136);
            if (v28)
            {
              v28();
            }
          }

          *(v26 + 32) = 0;
          v29 = *v26;
          v30 = *(v26 + 24) - 1;
          *(v26 + 24) = v30;
          if (!v30)
          {
            v31 = *(v26 + 16);
            v32 = v29;
            if (v31)
            {
              (*(*v31 + 32))(v31);
              v32 = *v26;
            }

            v33 = *(v26 + 8);
            v34 = *(v33 + 16) - 1;
            *(v33 + 16) = v34;
            if (!v34)
            {
              v35 = *(v33 + 32);
              if (v35)
              {
                v35(*(v33 + 24));
              }

              sub_181929C84(v32, v33);
            }

            sub_181929C84(v29, v26);
          }

          ++v25;
        }

        while (v25 < *(a1 + 564));
      }

      sub_181929C84(a1, v24);
      *(a1 + 564) = 0;
    }

    v36 = *(a1 + 8);
    if (!v36)
    {
      v41 = *(a1 + 40);
      if (v41 < 1)
      {
LABEL_81:
        if (off_1ED453020)
        {
          off_1ED453020(qword_1ED453028, a1, 0, 2);
        }

        for (k = *(a1 + 832); k; k = *(a1 + 832))
        {
          *(a1 + 832) = *k;
          v48 = k[2];
          if (v48)
          {
            v48(k[1]);
          }

          v47 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(k);
            --qword_1ED456A90;
            off_1ED452EB0(k);
            k = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              continue;
            }

            v47 = &xmmword_1ED452F28;
          }

          (*v47)(k);
        }

        *(a1 + 113) = -89;
        sub_1819095C4(a1);
        if (v5)
        {
          if (qword_1ED456C38 != -1)
          {
            sub_181A1EA60();
          }

          v49 = qword_1ED456C30;
          v50 = os_signpost_id_make_with_pointer(qword_1ED456C30, a1);
          if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v51 = v50;
            if (os_signpost_enabled(v49))
            {
              *buf = 134218240;
              v55 = v5;
              v56 = 2048;
              v57 = a1;
              _os_signpost_emit_with_name_impl(&dword_18188D000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v51, "close", "startTime=%{signpost.description:begin_time}llu db=%p", buf, 0x16u);
            }

            if (os_signpost_enabled(v49))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18188D000, v49, OS_SIGNPOST_INTERVAL_END, v51, "close", &unk_181A3484A, buf, 2u);
            }
          }
        }

        return 0;
      }

      v42 = *(a1 + 32) + 8;
      while (!*v42 || !*(*v42 + 24))
      {
        v42 += 32;
        if (!--v41)
        {
          goto LABEL_81;
        }
      }
    }

    if (a2)
    {
      v37 = 28;
      if (v36)
      {
LABEL_57:
        v38 = *(*v36 + 24);
        if (v38)
        {
          xmmword_1ED452F18(v38);
          v39 = *(*v36 + 24);
          v40 = v36[40];
          if (v39)
          {
            xmmword_1ED452F28(v39);
          }

          if (v40)
          {
            goto LABEL_61;
          }
        }

        else if (v36[40])
        {
LABEL_61:
          sqlite3_log(v37, "%s unfinalized statement: %s");
          goto LABEL_80;
        }

        sqlite3_log(v37, "%s unfinalized statement");
LABEL_80:
        if (!a2)
        {
          if ((dword_1ED45305C & 0x100) != 0 && (v52 = getprogname(), strcmp(v52, "xctest")) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            sub_181A1EA88();
            v53 = *(a1 + 24);
            if (!v53)
            {
              return v37;
            }
          }

          else
          {
            v53 = *(a1 + 24);
            if (!v53)
            {
              return v37;
            }
          }

          xmmword_1ED452F28(v53);
          return v37;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v37 = 5;
      sub_181907EC4(a1, 5, "unable to close due to unfinalized statements or unfinished backups");
      v36 = *(a1 + 8);
      if (v36)
      {
        goto LABEL_57;
      }
    }

    v44 = *(a1 + 40);
    if (v44 >= 1)
    {
      v45 = *(a1 + 32) + 8;
      while (!*v45 || !*(*v45 + 24))
      {
        v45 += 32;
        if (!--v44)
        {
          goto LABEL_80;
        }
      }

      sqlite3_log(v37, "%s unfinished backup");
    }

    goto LABEL_80;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "invalid");

  return sub_1819012D0(192934);
}

uint64_t sub_181915228(uint64_t *a1, int a2)
{
  v4 = *(a1 + 193);
  v5 = *a1;
  if (*v5 >= 2 && (v6 = *(v5 + 136)) != 0)
  {
    v6();
    v7 = 0;
    if (!a2)
    {
LABEL_4:
      a1[97] = v7;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0.0;
    (*(v5 + 120))(v5, &v12);
    v7 = (v12 * 86400000.0);
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  v8 = v7 - *(a1 + 194);
  if (v8 < 0)
  {
    return 0;
  }

  if (*(a1 + 193) > v8)
  {
LABEL_12:
    (*(*a1 + 112))();
    return 1;
  }

  if (a2 > 46)
  {
    v9 = 1000;
    v10 = 1000 * a2 - 38773;
    goto LABEL_10;
  }

LABEL_9:
  v9 = word_181A24CB4[a2];
  v10 = word_181A24D12[a2];
LABEL_10:
  if (v10 + v9 <= v4 || v4 - v10 >= 1)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sqlite3_setlk_timeout(uint64_t a1, int a2, int a3)
{
  v15 = a3 & 1;
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_10;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_10:
    sqlite3_log(21, "API call with %s database connection pointer", v5);

    return sub_1819012D0(193664);
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (a2 < -1)
  {
    return 25;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = a3;
    v9 = a2;
    xmmword_1ED452F18(v7);
    a2 = v9;
    a3 = v8;
  }

  *(a1 + 788) = a2;
  *(a1 + 792) = a3;
  if (!*(a1 + 111))
  {
    sub_181932C40(a1);
  }

  v10 = *(a1 + 40);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 32) + v12);
      if (v13)
      {
        v14 = *(**(v13 + 8) + 72);
        if (*v14)
        {
          (*(*v14 + 80))(v14, 44, &v15);
          v10 = *(a1 + 40);
        }
      }

      ++v11;
      v12 += 32;
    }

    while (v11 < v10);
  }

  if (!*(a1 + 111))
  {
    sub_181932CD8(a1);
  }

  result = *(a1 + 24);
  if (result)
  {
    xmmword_1ED452F28(result);
    return 0;
  }

  return result;
}

void sqlite3_interrupt(sqlite3 *a1)
{
  if (a1)
  {
    v2 = *(a1 + 113);
    switch(v2)
    {
      case 186:
        goto LABEL_5;
      case 118:
LABEL_9:
        *(a1 + 106) = 1;
        return;
      case 109:
LABEL_5:
        v3 = "unopened";
        break;
      default:
        v3 = "invalid";
        break;
    }

    sqlite3_log(21, "API call with %s database connection pointer", v3);
    if (*(a1 + 113) == 167)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sqlite3_log(21, "API call with %s database connection pointer", "NULL");
  }

  sub_1819012D0(193697);
}

BOOL sqlite3_is_interrupted(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 113);
    switch(v2)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 424) != 0;
      case 109:
LABEL_5:
        v3 = "unopened";
        break;
      default:
        v3 = "invalid";
        break;
    }

    sqlite3_log(21, "API call with %s database connection pointer", v3);
    if (*(a1 + 113) == 167)
    {
      return *(a1 + 424) != 0;
    }
  }

  else
  {
    sqlite3_log(21, "API call with %s database connection pointer", "NULL");
  }

  sub_1819012D0(193713);
  return 0;
}

uint64_t sub_181915678(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t))
{
  if (!a1)
  {
    v13 = "NULL";
    goto LABEL_19;
  }

  v12 = *(a1 + 113);
  if (v12 != 186)
  {
    if (v12 != 118)
    {
      if (v12 != 109)
      {
        v13 = "invalid";
        goto LABEL_19;
      }

      goto LABEL_5;
    }

    v14 = *(a1 + 24);
    v43 = a5;
    if (v14)
    {
      v15 = a8;
      v16 = a7;
      v17 = a6;
      v18 = a4;
      v19 = a3;
      v20 = a2;
      xmmword_1ED452F18(v14);
      a2 = v20;
      a3 = v19;
      a4 = v18;
      a6 = v17;
      a7 = v16;
      a8 = v15;
      a5 = v43;
    }

    if (!a11)
    {
      v33 = sub_181893FF0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0);
      goto LABEL_23;
    }

    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a6;
    v41 = a7;
    v42 = a8;
    v25 = sub_181902484(24, 0x1080040C4643742);
    if (!v25)
    {
      v38 = v43;
      if (!*(a1 + 103) && !*(a1 + 104))
      {
        *(a1 + 103) = 1;
        if (*(a1 + 220) >= 1)
        {
          *(a1 + 424) = 1;
        }

        ++*(a1 + 432);
        *(a1 + 436) = 0;
        if (*(a1 + 344))
        {
          sub_181910730(*(a1 + 344), "out of memory", v26, v27, v28, v29, v30, v31, v40);
          v38 = v43;
          for (i = *(a1 + 344); ; ++*(i + 52))
          {
            *(i + 24) = 7;
            i = *(i + 216);
            if (!i)
            {
              break;
            }
          }
        }
      }

      a11(v38);
      v33 = 1;
      goto LABEL_30;
    }

    v32 = v25;
    *v25 = 0;
    *(v25 + 8) = a11;
    *(v25 + 16) = v43;
    v33 = sub_181893FF0(a1, v21, v22, v23, v43, v24, v41, v42, a9, a10, v25);
    if (!*v32)
    {
      a11(v43);
      v34 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_17:
        (*v34)(v32);
        goto LABEL_23;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v32);
      --qword_1ED456A90;
      off_1ED452EB0(v32);
      v32 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v34 = &xmmword_1ED452F28;
        goto LABEL_17;
      }
    }

LABEL_23:
    if (!v33 && !*(a1 + 103))
    {
      v36 = 0;
      v37 = *(a1 + 24);
      if (!v37)
      {
        return v36;
      }

      goto LABEL_31;
    }

LABEL_30:
    v36 = sub_18193C988(a1, v33);
    v37 = *(a1 + 24);
    if (!v37)
    {
      return v36;
    }

LABEL_31:
    xmmword_1ED452F28(v37);
    return v36;
  }

LABEL_5:
  v13 = "unopened";
LABEL_19:
  sqlite3_log(21, "API call with %s database connection pointer", v13);

  return sub_1819012D0(193879);
}

int sqlite3_create_function16(sqlite3 *db, const void *zFunctionName, int nArg, int eTextRep, void *pApp, void (__cdecl *xFunc)(sqlite3_context *, int, sqlite3_value **), void (__cdecl *xStep)(sqlite3_context *, int, sqlite3_value **), void (__cdecl *xFinal)(sqlite3_context *))
{
  if (!db)
  {
    v9 = "NULL";
    goto LABEL_13;
  }

  v8 = *(db + 113);
  if (v8 == 186)
  {
LABEL_5:
    v9 = "unopened";
LABEL_13:
    sqlite3_log(21, "API call with %s database connection pointer", v9);
    goto LABEL_14;
  }

  if (v8 != 118)
  {
    if (v8 != 109)
    {
      v9 = "invalid";
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (!zFunctionName)
  {
LABEL_14:

    return sub_1819012D0(193970);
  }

  v10 = *&nArg;
  v16 = db;
  if (*(db + 3))
  {
    v17 = zFunctionName;
    xmmword_1ED452F18(*(db + 3));
    zFunctionName = v17;
    db = v16;
  }

  v34 = 0u;
  v35 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = db;
  sub_1818900D0(&v31, zFunctionName, -1, 2u, 0);
  if ((v32 & 0x200000000) != 0)
  {
    v18 = xFinal;
    v19 = xStep;
    v20 = xFunc;
    v21 = pApp;
    v22 = eTextRep;
    v23 = v10;
    if (BYTE6(v32) != 1)
    {
      sub_1818F1820(&v31, 1);
      v23 = v10;
      v22 = eTextRep;
      v21 = pApp;
      v20 = xFunc;
      v19 = xStep;
      v18 = xFinal;
    }
  }

  else
  {
    BYTE6(v32) = 1;
    v18 = xFinal;
    v19 = xStep;
    v20 = xFunc;
    v21 = pApp;
    v22 = eTextRep;
    v23 = v10;
  }

  v25 = v16;
  if (*(v16 + 103))
  {
    if (WORD2(v32) & 0x9000 | v34)
    {
      sub_18193CA00(&v31);
      v23 = v10;
      v22 = eTextRep;
      v21 = pApp;
      v20 = xFunc;
      v19 = xStep;
      v18 = xFinal;
      v25 = v16;
    }

    v26 = sub_181893FF0(v25, 0, v23, v22, v21, v20, v19, v18, 0, 0, 0);
  }

  else
  {
    v27 = *(&v31 + 1);
    v26 = sub_181893FF0(v16, *(&v31 + 1), v23, v22, v21, v20, v19, v18, 0, 0, 0);
    if (v27)
    {
      sub_181929C84(v16, v27);
    }
  }

  if (v26 || (v28 = v16, *(v16 + 103)))
  {
    v29 = sub_18193C988(v16, v26);
    v28 = v16;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v28 + 3);
  if (v30)
  {
    xmmword_1ED452F28(v30);
  }

  return v29;
}

uint64_t sub_181915C24(uint64_t a1)
{
  if (a1)
  {
    v2 = sqlite3_mprintf("unable to use function %s in the requested context", *(*(a1 + 8) + 8));
    *(a1 + 36) = 1;
    result = sub_1818900D0(*a1, v2, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    result = sqlite3_mprintf("unable to use function %s in the requested context", 0);
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_10;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  result = off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
LABEL_10:
    v5 = *v4;

    return v5(v2);
  }

  return result;
}

void *__cdecl sqlite3_trace(sqlite3 *a1, void (__cdecl *xTrace)(void *, const char *), void *a3)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_13;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_13:
    sqlite3_log(21, "API call with %s database connection pointer", v4);
    sub_1819012D0(194056);
    return 0;
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    v6 = a1;
    v7 = a3;
    v8 = xTrace;
    xmmword_1ED452F18(*(a1 + 3));
    xTrace = v8;
    a1 = v6;
    a3 = v7;
    v5 = *(v6 + 3);
  }

  v9 = *(a1 + 31);
  *(a1 + 110) = (xTrace != 0) << 6;
  *(a1 + 30) = xTrace;
  *(a1 + 31) = a3;
  if (v5)
  {
    xmmword_1ED452F28(v5);
  }

  return v9;
}

int sqlite3_trace_v2(sqlite3 *a1, unsigned int uMask, int (__cdecl *xCallback)(unsigned int, void *, void *, void *), void *pCtx)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_19;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_19:
    sqlite3_log(21, "API call with %s database connection pointer", v5);

    return sub_1819012D0(194080);
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a1;
    v8 = pCtx;
    v9 = uMask;
    v10 = xCallback;
    xmmword_1ED452F18(*(a1 + 3));
    xCallback = v10;
    uMask = v9;
    a1 = v7;
    pCtx = v8;
    v6 = *(v7 + 3);
  }

  if (uMask)
  {
    v11 = xCallback;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = uMask;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 110) = v12;
  *(a1 + 30) = v11;
  *(a1 + 31) = pCtx;
  if (v6)
  {
    xmmword_1ED452F28(v6);
  }

  return 0;
}

void *__cdecl sqlite3_profile(sqlite3 *a1, void (__cdecl *xProfile)(void *, const char *, sqlite3_uint64), void *a3)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_16;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_16:
    sqlite3_log(21, "API call with %s database connection pointer", v4);
    sub_1819012D0(194111);
    return 0;
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    v6 = a1;
    v7 = xProfile;
    v8 = a3;
    xmmword_1ED452F18(*(a1 + 3));
    a3 = v8;
    xProfile = v7;
    a1 = v6;
    v5 = *(v6 + 3);
  }

  v9 = *(a1 + 33);
  *(a1 + 32) = xProfile;
  *(a1 + 33) = a3;
  if (xProfile)
  {
    v10 = *(a1 + 110) & 0xF | 0x80;
  }

  else
  {
    v10 = *(a1 + 110) & 0xF;
  }

  *(a1 + 110) = v10;
  if (v5)
  {
    xmmword_1ED452F28(v5);
  }

  return v9;
}

void *__cdecl sqlite3_commit_hook(sqlite3 *a1, int (__cdecl *a2)(void *), void *a3)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_11;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(194141);
    return 0;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a1;
    xmmword_1ED452F18(v6);
    v10 = *(v7 + 3);
    result = *(v7 + 34);
    *(v7 + 34) = a3;
    *(v7 + 35) = a2;
    if (v10)
    {
      v12 = result;
      xmmword_1ED452F28(v10);
      return v12;
    }
  }

  else
  {
    result = *(a1 + 34);
    *(a1 + 34) = a3;
    *(a1 + 35) = a2;
  }

  return result;
}

void *__cdecl sqlite3_update_hook(sqlite3 *a1, void (__cdecl *a2)(void *, int, const char *, const char *, sqlite3_int64), void *a3)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_11;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(194166);
    return 0;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a1;
    xmmword_1ED452F18(v6);
    v10 = *(v7 + 3);
    result = *(v7 + 38);
    *(v7 + 38) = a3;
    *(v7 + 39) = a2;
    if (v10)
    {
      v12 = result;
      xmmword_1ED452F28(v10);
      return v12;
    }
  }

  else
  {
    result = *(a1 + 38);
    *(a1 + 38) = a3;
    *(a1 + 39) = a2;
  }

  return result;
}

void *__cdecl sqlite3_rollback_hook(sqlite3 *a1, void (__cdecl *a2)(void *), void *a3)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_11;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(194191);
    return 0;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a1;
    xmmword_1ED452F18(v6);
    v10 = *(v7 + 3);
    result = *(v7 + 36);
    *(v7 + 36) = a3;
    *(v7 + 37) = a2;
    if (v10)
    {
      v12 = result;
      xmmword_1ED452F28(v10);
      return v12;
    }
  }

  else
  {
    result = *(a1 + 36);
    *(a1 + 36) = a3;
    *(a1 + 37) = a2;
  }

  return result;
}

void *sqlite3_preupdate_hook(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = result[3];
    if (v6)
    {
      xmmword_1ED452F18(v6);
      v7 = v5[3];
      result = v5[44];
      v5[44] = a3;
      v5[45] = a2;
      if (v7)
      {
        v8 = result;
        xmmword_1ED452F28(v7);
        return v8;
      }
    }

    else
    {
      result = v5[44];
      v5[44] = a3;
      v5[45] = a2;
    }
  }

  return result;
}

int sqlite3_autovacuum_pages(sqlite3 *db, unsigned int (__cdecl *a2)(void *, const char *, unsigned int, unsigned int, unsigned int), void *a3, void (__cdecl *a4)(void *))
{
  if (!db)
  {
    v7 = "NULL";
    goto LABEL_15;
  }

  v6 = *(db + 113);
  if (v6 == 186)
  {
LABEL_5:
    v7 = "unopened";
LABEL_15:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    if (a4)
    {
      (a4)(a3);
    }

    return sub_1819012D0(194243);
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (*(db + 3))
  {
    v8 = db;
    v9 = a2;
    xmmword_1ED452F18(*(db + 3));
    a2 = v9;
    db = v8;
  }

  v10 = *(db + 41);
  if (v10)
  {
    v11 = db;
    v12 = a2;
    v10(*(db + 40));
    a2 = v12;
    db = v11;
  }

  *(db + 41) = a4;
  *(db + 42) = a2;
  *(db + 40) = a3;
  v13 = *(db + 3);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  return 0;
}

int sqlite3_wal_autocheckpoint(sqlite3 *db, int N)
{
  if (!db)
  {
    v3 = "NULL";
    goto LABEL_12;
  }

  v2 = *(db + 113);
  if (v2 != 186)
  {
    if (v2 != 118)
    {
      if (v2 != 109)
      {
        v3 = "invalid";
        goto LABEL_12;
      }

      goto LABEL_5;
    }

    if (N < 1)
    {
      if (!*(db + 3))
      {
        *(db + 47) = 0;
        *(db + 48) = 0;
        return 0;
      }

      xmmword_1ED452F18(*(db + 3));
      v6 = *(db + 3);
      *(db + 47) = 0;
      *(db + 48) = 0;
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v4 = N;
      if (!*(db + 3))
      {
        *(db + 47) = sub_1818DD5CC;
        *(db + 48) = N;
        return 0;
      }

      xmmword_1ED452F18(*(db + 3));
      v6 = *(db + 3);
      *(db + 47) = sub_1818DD5CC;
      *(db + 48) = v4;
      if (!v6)
      {
        return 0;
      }
    }

    xmmword_1ED452F28(v6);
    return 0;
  }

LABEL_5:
  v3 = "unopened";
LABEL_12:
  sqlite3_log(21, "API call with %s database connection pointer", v3);

  return sub_1819012D0(194297);
}

void *__cdecl sqlite3_wal_hook(sqlite3 *a1, int (__cdecl *a2)(void *, sqlite3 *, const char *, int), void *a3)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_11;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(194321);
    return 0;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a1;
    xmmword_1ED452F18(v6);
    v10 = *(v7 + 3);
    result = *(v7 + 48);
    *(v7 + 47) = a2;
    *(v7 + 48) = a3;
    if (v10)
    {
      v12 = result;
      xmmword_1ED452F28(v10);
      return v12;
    }
  }

  else
  {
    result = *(a1 + 48);
    *(a1 + 47) = a2;
    *(a1 + 48) = a3;
  }

  return result;
}

int sqlite3_wal_checkpoint_v2(sqlite3 *db, const char *zDb, int eMode, int *pnLog, int *pnCkpt)
{
  if (!db)
  {
    v7 = "NULL";
    goto LABEL_14;
  }

  v6 = *(db + 113);
  if (v6 == 186)
  {
LABEL_5:
    v7 = "unopened";
LABEL_14:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    v9 = 194353;
    goto LABEL_15;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  if (pnLog)
  {
    *pnLog = -1;
  }

  if (pnCkpt)
  {
    *pnCkpt = -1;
  }

  if (eMode >= 4)
  {
    v9 = 194367;
LABEL_15:

    return sub_1819012D0(v9);
  }

  v12 = *(db + 3);
  if (v12)
  {
    v13 = pnCkpt;
    v14 = zDb;
    xmmword_1ED452F18(v12);
    zDb = v14;
    pnCkpt = v13;
  }

  if (!zDb || !*zDb)
  {
    LODWORD(v16) = 12;
    v17 = pnLog;
    goto LABEL_42;
  }

  v15 = *(db + 10);
  v16 = (v15 - 1);
  if (v15 < 1)
  {
    goto LABEL_66;
  }

  v17 = pnLog;
  v18 = (*(db + 4) + 32 * v16);
  while (1)
  {
    v19 = *v18;
    if (*v18)
    {
      break;
    }

LABEL_31:
    if (!v16)
    {
      v22 = "main";
      for (i = zDb; ; ++i)
      {
        if (*v22 == *i)
        {
          if (!*v22)
          {
            LODWORD(v16) = 0;
            goto LABEL_42;
          }
        }

        else if (byte_181A20298[*v22] != byte_181A20298[*i])
        {
          break;
        }

        ++v22;
      }
    }

    v18 -= 4;
    v21 = v16 <= 0;
    LODWORD(v16) = v16 - 1;
    if (v21)
    {
LABEL_66:
      v28 = 1;
      sub_181907EC4(db, 1, "unknown database: %s", zDb);
      goto LABEL_67;
    }
  }

  for (j = zDb; *v19 != *j; ++j)
  {
    if (byte_181A20298[*v19] != byte_181A20298[*j])
    {
      goto LABEL_31;
    }

LABEL_27:
    ++v19;
  }

  if (*v19)
  {
    goto LABEL_27;
  }

  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_42:
  *(db + 172) = 0;
  v24 = *(db + 10);
  if (v24 <= 0)
  {
    *(db + 20) = 0;
    goto LABEL_60;
  }

  v25 = 0;
  v26 = 8;
  v27 = 1;
  do
  {
    if (v16 == 12 || v27 - v16 == 1)
    {
      v29 = sub_1819A9910(*(*(db + 4) + v26), eMode, v17, pnCkpt);
      v17 = 0;
      pnCkpt = 0;
      if (v29 == 5)
      {
        v28 = 0;
      }

      else
      {
        v28 = v29;
      }

      if (v29 == 5)
      {
        v25 = 1;
      }

      v24 = *(db + 10);
    }

    else
    {
      v28 = 0;
    }

    if (v27 >= v24)
    {
      break;
    }

    v26 += 32;
    ++v27;
  }

  while (!v28);
  if (!v28 && v25)
  {
    v28 = 5;
    *(db + 20) = 5;
    goto LABEL_62;
  }

  *(db + 20) = v28;
  if (v28)
  {
LABEL_62:
    sub_181932D5C(db, v28);
    if (!v28)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_60:
    if (*(db + 52))
    {
      v28 = 0;
      goto LABEL_62;
    }

    v28 = 0;
    *(db + 21) = -1;
LABEL_63:
    if (!*(db + 103))
    {
      v30 = 0;
      goto LABEL_68;
    }
  }

LABEL_67:
  v30 = sub_18193C988(db, v28);
LABEL_68:
  if (!*(db + 52))
  {
    *(db + 106) = 0;
  }

  v31 = *(db + 3);
  if (v31)
  {
    xmmword_1ED452F28(v31);
  }

  return v30;
}

int sqlite3_error_offset(sqlite3 *db)
{
  if (!db)
  {
    return -1;
  }

  v1 = *(db + 113);
  if (v1 != 109 && v1 != 118 && v1 != 186)
  {
    sqlite3_log(21, "API call with %s database connection pointer", "invalid");
    return -1;
  }

  if (!*(db + 20))
  {
    return -1;
  }

  if (!*(db + 3))
  {
    return *(db + 21);
  }

  xmmword_1ED452F18(*(db + 3));
  v3 = *(db + 3);
  result = *(db + 21);
  if (v3)
  {
    v5 = *(db + 21);
    xmmword_1ED452F28(v3);
    return v5;
  }

  return result;
}

const void *__cdecl sqlite3_errmsg16(sqlite3 *a1)
{
  if (!a1)
  {
    return L"out of memory";
  }

  v2 = *(a1 + 113);
  if (v2 != 109 && v2 != 118 && v2 != 186)
  {
    sqlite3_log(21, "API call with %s database connection pointer", "invalid");
    return L"bad parameter or other API misuse";
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    xmmword_1ED452F18(v3);
  }

  if (!*(a1 + 103))
  {
    v7 = *(a1 + 52);
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = *(v7 + 20);
    if ((~v8 & 0x202) != 0 || *(v7 + 22) != 2)
    {
      if (v8)
      {
        goto LABEL_21;
      }

      result = sub_18193CB70(v7, 2);
    }

    else
    {
      result = *(v7 + 8);
    }

    if (result)
    {
LABEL_38:
      if (*(a1 + 103))
      {
        v11 = *(a1 + 55);
        if (!v11)
        {
          *(a1 + 103) = 0;
          *(a1 + 106) = 0;
          v12 = *(a1 + 108) - 1;
          *(a1 + 108) = v12;
          if (!v12)
          {
            LOWORD(v11) = *(a1 + 219);
          }

          *(a1 + 218) = v11;
        }
      }

      goto LABEL_9;
    }

LABEL_21:
    v9 = *(a1 + 20);
    switch(v9)
    {
      case 516:
        sub_181907EC4(a1, 516, "abort due to ROLLBACK");
        break;
      case 101:
        sub_181907EC4(a1, 101, "no more rows available");
        break;
      case 100:
        sub_181907EC4(a1, 100, "another row available");
        break;
      default:
        if (*(a1 + 20) > 0x1Cu || ((0x1410004uLL >> v9) & 1) != 0)
        {
          sub_181907EC4(a1, v9, "unknown error");
        }

        else
        {
          sub_181907EC4(a1, v9, off_1E6A27DD8[*(a1 + 20)]);
        }

        break;
    }

    result = *(a1 + 52);
    if (result)
    {
      v10 = *(result + 10);
      if ((~v10 & 0x202) != 0 || *(result + 22) != 2)
      {
        if (v10)
        {
          result = 0;
        }

        else
        {
          result = sub_18193CB70(result, 2);
        }
      }

      else
      {
        result = *(result + 1);
      }
    }

    goto LABEL_38;
  }

  result = L"out of memory";
LABEL_9:
  v5 = *(a1 + 3);
  if (v5)
  {
    v6 = result;
    xmmword_1ED452F28(v5);
    return v6;
  }

  return result;
}

uint64_t sub_181916CE4(uint64_t result)
{
  if (*(result + 103) && !*(result + 220))
  {
    *(result + 103) = 0;
    *(result + 424) = 0;
    v1 = *(result + 432) - 1;
    *(result + 432) = v1;
    if (v1)
    {
      *(result + 436) = 0;
    }

    else
    {
      *(result + 436) = *(result + 438);
    }
  }

  return result;
}

int sqlite3_errcode(sqlite3 *db)
{
  if (!db)
  {
    return 7;
  }

  v2 = *(db + 113);
  if (v2 == 109 || v2 == 118 || v2 == 186)
  {
    if (*(db + 103))
    {
      return 7;
    }

    return *(db + 22) & *(db + 20);
  }

  else
  {
    sqlite3_log(21, "API call with %s database connection pointer", "invalid");

    return sub_1819012D0(194582);
  }
}

int sqlite3_extended_errcode(sqlite3 *db)
{
  if (!db)
  {
    return 7;
  }

  v2 = *(db + 113);
  if (v2 == 109 || v2 == 118 || v2 == 186)
  {
    if (*(db + 103))
    {
      return 7;
    }

    return *(db + 20);
  }

  else
  {
    sqlite3_log(21, "API call with %s database connection pointer", "invalid");

    return sub_1819012D0(194591);
  }
}

int sqlite3_system_errno(sqlite3 *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 23);
  }

  return a1;
}

const char *__cdecl sqlite3_errstr(int a1)
{
  switch(a1)
  {
    case 516:
      return "abort due to ROLLBACK";
    case 101:
      return "no more rows available";
    case 100:
      return "another row available";
  }

  if (a1 > 0x1Cu || ((0x1410004uLL >> a1) & 1) != 0)
  {
    return "unknown error";
  }

  return off_1E6A27DD8[a1];
}

int sqlite3_limit(sqlite3 *a1, int id, int newVal)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_10;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_10:
    sqlite3_log(21, "API call with %s database connection pointer", v4);
    sub_1819012D0(194760);
    return -1;
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (id > 0xB)
  {
    return -1;
  }

  v6 = a1 + 136;
  result = *(a1 + id + 34);
  if ((newVal & 0x80000000) == 0)
  {
    v7 = *(&xmmword_181A20C18 + id);
    if (newVal <= 0x1E)
    {
      v8 = 30;
    }

    else
    {
      v8 = newVal;
    }

    if (id)
    {
      v8 = newVal;
    }

    if (v7 >= newVal)
    {
      v7 = v8;
    }

    *&v6[4 * id] = v7;
  }

  return result;
}

int sqlite3_create_collation_v2(sqlite3 *a1, const char *zName, int eTextRep, void *pArg, int (__cdecl *xCompare)(void *, int, const void *, int, const void *), void (__cdecl *xDestroy)(void *))
{
  if (!a1)
  {
    v7 = "NULL";
    goto LABEL_14;
  }

  v6 = *(a1 + 113);
  if (v6 == 186)
  {
LABEL_5:
    v7 = "unopened";
LABEL_14:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    goto LABEL_15;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  if (!zName)
  {
LABEL_15:

    return sub_1819012D0(195757);
  }

  if (*(a1 + 3))
  {
    v9 = xDestroy;
    v10 = xCompare;
    v11 = pArg;
    v12 = zName;
    v13 = eTextRep;
    xmmword_1ED452F18(*(a1 + 3));
    LOBYTE(eTextRep) = v13;
    zName = v12;
    pArg = v11;
    xCompare = v10;
    xDestroy = v9;
  }

  v14 = sub_18188F708(a1, zName, eTextRep, pArg, xCompare, xDestroy);
  if (v14 || (v15 = a1, *(a1 + 103)))
  {
    v16 = sub_18193C988(a1, v14);
    v15 = a1;
  }

  else
  {
    v16 = 0;
  }

  v18 = *(v15 + 3);
  if (v18)
  {
    xmmword_1ED452F28(v18);
  }

  return v16;
}

int sqlite3_create_collation16(sqlite3 *a1, const void *zName, int eTextRep, void *pArg, int (__cdecl *xCompare)(void *, int, const void *, int, const void *))
{
  if (!a1)
  {
    v6 = "NULL";
    goto LABEL_13;
  }

  v5 = *(a1 + 113);
  if (v5 == 186)
  {
LABEL_5:
    v6 = "unopened";
LABEL_13:
    sqlite3_log(21, "API call with %s database connection pointer", v6);
    goto LABEL_14;
  }

  if (v5 != 118)
  {
    if (v5 != 109)
    {
      v6 = "invalid";
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (!zName)
  {
LABEL_14:

    return sub_1819012D0(195782);
  }

  v7 = eTextRep;
  v10 = a1;
  if (*(a1 + 3))
  {
    v11 = zName;
    xmmword_1ED452F18(*(a1 + 3));
    zName = v11;
    a1 = v10;
  }

  v24 = 0u;
  v25 = 0u;
  v21 = 0u;
  v22 = 0;
  v23 = a1;
  sub_1818900D0(&v21, zName, -1, 2u, 0);
  if ((v22 & 0x200000000) != 0)
  {
    v12 = xCompare;
    v13 = pArg;
    v14 = v7;
    if (BYTE6(v22) != 1)
    {
      sub_1818F1820(&v21, 1);
      v14 = v7;
      v13 = pArg;
      v12 = xCompare;
    }
  }

  else
  {
    BYTE6(v22) = 1;
    v12 = xCompare;
    v13 = pArg;
    v14 = v7;
  }

  v16 = v10;
  if (*(v10 + 103))
  {
    if (WORD2(v22) & 0x9000 | v24)
    {
      sub_18193CA00(&v21);
      v16 = v10;
    }
  }

  else
  {
    v17 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v18 = sub_18188F708(v10, *(&v21 + 1), v14, v13, v12, 0);
      sub_181929C84(v10, v17);
      v16 = v10;
      goto LABEL_25;
    }
  }

  v18 = 0;
LABEL_25:
  if (v18 || *(v16 + 103))
  {
    v19 = sub_18193C988(v10, v18);
    v16 = v10;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v16 + 3);
  if (v20)
  {
    xmmword_1ED452F28(v20);
  }

  return v19;
}

int sqlite3_collation_needed(sqlite3 *a1, void *a2, void (__cdecl *a3)(void *, sqlite3 *, int, const char *))
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_11;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(195807);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    xmmword_1ED452F18(*(a1 + 3));
    v8 = *(a1 + 3);
    *(a1 + 49) = a3;
    *(a1 + 50) = 0;
    *(a1 + 51) = a2;
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  else
  {
    *(a1 + 49) = a3;
    *(a1 + 50) = 0;
    *(a1 + 51) = a2;
  }

  return 0;
}

int sqlite3_collation_needed16(sqlite3 *a1, void *a2, void (__cdecl *a3)(void *, sqlite3 *, int, const void *))
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_11;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(195828);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    xmmword_1ED452F18(*(a1 + 3));
    v8 = *(a1 + 3);
    *(a1 + 49) = 0;
    *(a1 + 50) = a3;
    *(a1 + 51) = a2;
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  else
  {
    *(a1 + 49) = 0;
    *(a1 + 50) = a3;
    *(a1 + 51) = a2;
  }

  return 0;
}

uint64_t sqlite3_get_clientdata(uint64_t a1, char *__s2)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_15;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_15:
    sqlite3_log(21, "API call with %s database connection pointer", v4);
    sub_1819012D0(195845);
    return 0;
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = (a1 + 832);
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (!strcmp(v7 + 24, __s2))
    {
      result = *(v7 + 1);
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = *(v7 + 1);
        xmmword_1ED452F28(v9);
        return v10;
      }

      return result;
    }
  }

  result = *(a1 + 24);
  if (!result)
  {
    return result;
  }

  xmmword_1ED452F28(result);
  return 0;
}

uint64_t sqlite3_set_clientdata(uint64_t a1, char *__s, uint64_t a3, void (*a4)(uint64_t))
{
  if (!a1)
  {
    v6 = "NULL";
    goto LABEL_18;
  }

  v5 = *(a1 + 113);
  if (v5 == 186)
  {
LABEL_5:
    v6 = "unopened";
LABEL_18:
    sqlite3_log(21, "API call with %s database connection pointer", v6);
    goto LABEL_19;
  }

  if (v5 != 118)
  {
    if (v5 != 109)
    {
      v6 = "invalid";
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  if (!__s)
  {
LABEL_19:

    return sub_1819012D0(195872);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    xmmword_1ED452F18(v10);
  }

  v11 = (a1 + 832);
  v12 = (a1 + 832);
  while (1)
  {
    v13 = v12;
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if (!strcmp(v12 + 24, __s))
    {
      v14 = v12[2];
      if (v14)
      {
        v14(v12[1]);
      }

      if (a3)
      {
LABEL_16:
        v12[1] = a3;
        v12[2] = a4;
      }

      else
      {
        *v13 = *v12;
        v18 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
          --qword_1ED456A90;
          off_1ED452EB0(v12);
          v12 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_35;
          }

          v18 = &xmmword_1ED452F28;
        }

        (*v18)(v12);
      }

LABEL_35:
      result = *(a1 + 24);
      if (result)
      {
        xmmword_1ED452F28(result);
        return 0;
      }

      return result;
    }
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  v16 = strlen(__s);
  if (!sqlite3_initialize())
  {
    v19 = sub_181902484(v16 + 25, 3219991037);
    if (v19)
    {
      v12 = v19;
      memcpy((v19 + 24), __s, v16 + 1);
      *v12 = *v11;
      *v11 = v12;
      goto LABEL_16;
    }
  }

  if (a4)
  {
    a4(a3);
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    xmmword_1ED452F28(v17);
  }

  return 7;
}

int sqlite3_get_autocommit(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 101);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(195930);
  return 0;
}

int sqlite3_table_column_metadata(sqlite3 *db, const char *zDbName, const char *zTableName, const char *zColumnName, const char **pzDataType, const char **pzCollSeq, int *pNotNull, int *pPrimaryKey, int *pAutoinc)
{
  v9 = pPrimaryKey;
  v10 = pNotNull;
  v13 = zTableName;
  v79 = 0;
  if (pzDataType)
  {
    *pzDataType = 0;
  }

  if (pzCollSeq)
  {
    *pzCollSeq = 0;
  }

  if (!db)
  {
    v17 = "NULL";
    goto LABEL_25;
  }

  v16 = *(db + 113);
  if (v16 == 186)
  {
LABEL_9:
    v17 = "unopened";
LABEL_25:
    sqlite3_log(21, "API call with %s database connection pointer", v17);
    goto LABEL_26;
  }

  if (v16 != 118)
  {
    if (v16 != 109)
    {
      v17 = "invalid";
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  if (!zTableName)
  {
LABEL_26:

    return sub_1819012D0(196051);
  }

  v18 = *(db + 3);
  if (v18)
  {
    xmmword_1ED452F18(v18);
  }

  if (!*(db + 111))
  {
    sub_181932C40(db);
  }

  v19 = *(db + 11);
  v20 = *(*(db + 4) + 24);
  *(db + 100) = *(v20 + 113);
  if ((*(v20 + 114) & 1) != 0 || (v21 = sub_18189F330(db, 0, &v79, 0, pzDataType, pzCollSeq, pNotNull, pPrimaryKey)) == 0)
  {
    v75 = v19;
    v24 = *(db + 10);
    if (v24 < 2)
    {
LABEL_29:
      if ((v75 & 1) == 0)
      {
        *(db + 11) &= ~1u;
      }

      v37 = sub_181917F20(db, v13, zDbName);
      v26 = v37;
      v35 = pAutoinc;
      if (v37)
      {
        v38 = *(v37 + 63);
        v34 = zColumnName;
        if (v38 == 2)
        {
          goto LABEL_33;
        }

        if (!zColumnName)
        {
          goto LABEL_78;
        }

        v39 = *zColumnName;
        v40 = 0;
        if (*zColumnName)
        {
          v41 = zColumnName + 1;
          v42 = *zColumnName;
          do
          {
            v40 += byte_181A20298[v42];
            v43 = *v41++;
            v42 = v43;
          }

          while (v43);
        }

        v44 = *(v26 + 8);
        v45 = *(v26 + 54);
        v46 = *(v26 + (v40 & 0xF) + 104);
        v47 = (v44 + 16 * v46);
        if (*(v47 + 11) == v40)
        {
          v48 = *v47;
          for (i = zColumnName + 1; ; ++i)
          {
            if (*v48 == v39)
            {
              if (!v39)
              {
LABEL_58:
                if (v44)
                {
                  goto LABEL_59;
                }

LABEL_78:
                v60 = 0;
                v30 = 0;
                v32 = 0;
                v31 = 1;
                v28 = "INTEGER";
                goto LABEL_79;
              }
            }

            else if (byte_181A20298[*v48] != byte_181A20298[v39])
            {
              break;
            }

            ++v48;
            v50 = *i;
            v39 = v50;
          }
        }

        v51 = 0;
        v52 = v45 <= 1 ? 1 : v45;
        do
        {
          v53 = v44 + 16 * v51;
          if (*(v53 + 11) == v40)
          {
            v54 = *v53;
            for (j = zColumnName; ; ++j)
            {
              if (*v54 == *j)
              {
                if (!*v54)
                {
                  LODWORD(v46) = v51;
                  goto LABEL_58;
                }
              }

              else if (byte_181A20298[*v54] != byte_181A20298[*j])
              {
                break;
              }

              ++v54;
            }
          }

          ++v51;
        }

        while (v51 != v52);
        if ((*(v26 + 48) & 0x80) != 0)
        {
LABEL_33:
          v33 = 0;
          LODWORD(v26) = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          goto LABEL_83;
        }

        if (sub_18191882C(zColumnName))
        {
          LODWORD(v46) = *(v26 + 52);
          if ((v46 & 0x80000000) != 0)
          {
            v60 = 0;
            v30 = 0;
            v32 = 0;
            v31 = 1;
            v28 = "INTEGER";
            v34 = zColumnName;
          }

          else
          {
            v34 = zColumnName;
            if (!v44)
            {
              goto LABEL_78;
            }

LABEL_59:
            v56 = v44 + 16 * v46;
            v57 = *(v56 + 14);
            v76 = v46;
            if ((v57 & 4) != 0)
            {
              v59 = strlen(*v56);
              v57 = *(v56 + 14);
              v28 = (*v56 + v59 + 1);
            }

            else
            {
              v58 = *(v56 + 8);
              if (v58 >= 0x10)
              {
                v28 = off_1EA831620[(v58 >> 4) - 1];
              }

              else
              {
                v28 = 0;
              }
            }

            if ((v57 & 0x200) != 0)
            {
              v62 = *v56 - 1;
              v34 = zColumnName;
              v61 = v76;
                ;
              }

              if ((v57 & 4) != 0)
              {
                  ;
                }
              }

              v60 = (v62 + 1);
            }

            else
            {
              v60 = 0;
              v34 = zColumnName;
              v61 = v76;
            }

            v30 = (*(v56 + 8) & 0xF) != 0;
            v31 = v57 & 1;
            if (v61 == *(v26 + 52))
            {
              v32 = (*(v26 + 48) >> 3) & 1;
            }

            else
            {
              v32 = 0;
            }
          }

LABEL_79:
          v33 = 0;
          LODWORD(v26) = 0;
          if (v60)
          {
            v29 = v60;
          }

          else
          {
            v29 = "BINARY";
          }

          v27 = 1;
          goto LABEL_83;
        }

        v33 = 0;
        LODWORD(v26) = 0;
      }

      else
      {
        v33 = 0;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v34 = zColumnName;
      goto LABEL_83;
    }

    v25 = 32 * v24 - 8;
    while (1)
    {
      if ((*(*(*(db + 4) + v25) + 114) & 1) == 0)
      {
        v21 = sub_18189F330(db, (v24 - 1), &v79, 0, pzDataType, pzCollSeq, pNotNull, pPrimaryKey);
        if (v21)
        {
          break;
        }
      }

      --v24;
      v25 -= 32;
      if ((v24 + 1) <= 2)
      {
        goto LABEL_29;
      }
    }
  }

  LODWORD(v26) = v21;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 1;
  v35 = pAutoinc;
  v34 = zColumnName;
LABEL_83:
  if (!*(db + 111))
  {
    v65 = v28;
    v74 = v10;
    v77 = v13;
    v72 = v29;
    v73 = v9;
    v66 = v31;
    LODWORD(v13) = v32;
    v67 = v33;
    sub_181932CD8(db);
    v33 = v67;
    v32 = v13;
    v31 = v66;
    v29 = v72;
    v9 = v73;
    v10 = v74;
    LOBYTE(v13) = v77;
    v28 = v65;
    v35 = pAutoinc;
    v34 = zColumnName;
  }

  if (pzDataType)
  {
    *pzDataType = v28;
  }

  if (pzCollSeq)
  {
    *pzCollSeq = v29;
  }

  if (v10)
  {
    *v10 = v30;
  }

  if (v9)
  {
    *v9 = v31;
  }

  if (v35)
  {
    *v35 = v32;
  }

  v68 = v79;
  if (((v33 | v27) & 1) == 0)
  {
    if (v79)
    {
      sub_181929C84(db, v79);
      v34 = zColumnName;
    }

    v71 = v34;
    v68 = sub_1818A8BAC(db, "no such table column: %s.%s", v22, v23, pzDataType, pzCollSeq, pNotNull, pPrimaryKey, v13);
    v79 = v68;
    LODWORD(v26) = 1;
  }

  if (v68)
  {
    sub_181907EC4(db, v26, "%s");
  }

  else
  {
    sub_181907EC4(db, v26, 0, 0, v71);
  }

  if (v79)
  {
    sub_181929C84(db, v79);
  }

  if (v26 || *(db + 103))
  {
    v69 = sub_18193C988(db, v26);
  }

  else
  {
    v69 = 0;
  }

  v70 = *(db + 3);
  if (v70)
  {
    xmmword_1ED452F28(v70);
  }

  return v69;
}

uint64_t sub_181917F20(uint64_t a1, char *a2, _BYTE *a3)
{
  if (!a3)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    if (*a2)
    {
      v11 = 0;
      v12 = a2 + 1;
      v13 = *a2;
      do
      {
        v11 = -1640531535 * (v11 + (v13 & 0xDF));
        v14 = *v12++;
        v13 = v14;
      }

      while (v14);
    }

    else
    {
      v11 = 0;
    }

    v15 = (v10 + 8);
    v16 = *(v10 + 24);
    if (v16)
    {
      v15 = (v16 + 16 * (v11 % *v15));
      v17 = *v15;
      if (*v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = *(v10 + 12);
      if (v17)
      {
LABEL_24:
        v18 = (v15 + 2);
        do
        {
          v18 = *v18;
          if (v11 == *(v18 + 8))
          {
            v19 = v18[3];
            for (i = a2; ; ++i)
            {
              if (*v19 == *i)
              {
                if (!*v19)
                {
                  goto LABEL_35;
                }
              }

              else if (byte_181A20298[*v19] != byte_181A20298[*i])
              {
                break;
              }

              ++v19;
            }
          }

          --v17;
        }

        while (v17);
        v21 = qword_1EA831A40;
        if (qword_1EA831A40)
        {
          return v21;
        }

LABEL_36:
        v22 = *(v9 + 24);
        v23 = 0;
        if (*a2)
        {
          v24 = a2 + 1;
          v25 = *a2;
          do
          {
            v23 = -1640531535 * (v23 + (v25 & 0xDF));
            v26 = *v24++;
            v25 = v26;
          }

          while (v26);
        }

        v27 = (v22 + 8);
        v28 = *(v22 + 24);
        if (v28)
        {
          v27 = (v28 + 16 * (v23 % *v27));
          v29 = *v27;
          if (*v27)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v29 = *(v22 + 12);
          if (v29)
          {
LABEL_41:
            v30 = (v27 + 2);
            do
            {
              v30 = *v30;
              if (v23 == *(v30 + 8))
              {
                v31 = v30[3];
                for (j = a2; ; ++j)
                {
                  if (*v31 == *j)
                  {
                    if (!*v31)
                    {
                      goto LABEL_89;
                    }
                  }

                  else if (byte_181A20298[*v31] != byte_181A20298[*j])
                  {
                    break;
                  }

                  ++v31;
                }
              }

              --v29;
            }

            while (v29);
            v21 = qword_1EA831A40;
            if (qword_1EA831A40)
            {
              return v21;
            }

            goto LABEL_90;
          }
        }

        v30 = &qword_1EA831A30;
LABEL_89:
        v21 = v30[2];
        if (v21)
        {
          return v21;
        }

LABEL_90:
        v56 = *(a1 + 40);
        if (v56 < 3)
        {
LABEL_111:
          if (!sqlite3_strnicmp(a2, "sqlite_", 7))
          {
            v71 = a2 + 7;
            v72 = "schema";
            for (k = a2 + 7; ; ++k)
            {
              if (*k == *v72)
              {
                if (!*k)
                {
                  v75 = "sqlite_master";
                  v38 = (*(*(a1 + 32) + 24) + 8);
LABEL_179:

                  return sub_1819493D0(v38, v75);
                }
              }

              else if (byte_181A20298[*k] != byte_181A20298[*v72])
              {
                for (m = "temp_schema"; ; ++m)
                {
                  if (*v71 == *m)
                  {
                    if (!*v71)
                    {
                      v75 = "sqlite_temp_master";
                      v38 = (*(*(a1 + 32) + 56) + 8);
                      goto LABEL_179;
                    }
                  }

                  else if (byte_181A20298[*v71] != byte_181A20298[*m])
                  {
                    return 0;
                  }

                  ++v71;
                }
              }

              ++v72;
            }
          }

          return 0;
        }

        v57 = 2;
        while (1)
        {
          v58 = 0;
          if (*a2)
          {
            v59 = a2 + 1;
            v60 = *a2;
            do
            {
              v58 = -1640531535 * (v58 + (v60 & 0xDF));
              v61 = *v59++;
              v60 = v61;
            }

            while (v61);
          }

          v62 = *(v9 + 32 * v57 + 24);
          v63 = (v62 + 8);
          v64 = *(v62 + 24);
          if (v64)
          {
            v63 = (v64 + 16 * (v58 % *v63));
            v65 = *v63;
            if (*v63)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v65 = *(v62 + 12);
            if (v65)
            {
LABEL_99:
              v66 = (v63 + 2);
              do
              {
                v66 = *v66;
                if (v58 == *(v66 + 8))
                {
                  v67 = v66[3];
                  for (n = a2; ; ++n)
                  {
                    if (*v67 == *n)
                    {
                      if (!*v67)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (byte_181A20298[*v67] != byte_181A20298[*n])
                    {
                      break;
                    }

                    ++v67;
                  }
                }

                --v65;
              }

              while (v65);
            }
          }

          v66 = &qword_1EA831A30;
LABEL_109:
          v21 = v66[2];
          if (v21)
          {
            return v21;
          }

          if (++v57 == v56)
          {
            goto LABEL_111;
          }
        }
      }
    }

    v18 = &qword_1EA831A30;
LABEL_35:
    v21 = v18[2];
    if (v21)
    {
      return v21;
    }

    goto LABEL_36;
  }

  v3 = *(a1 + 40);
  if (v3 < 1)
  {
LABEL_11:
    for (ii = "main"; ; ++ii)
    {
      if (*a3 == *ii)
      {
        if (!*a3)
        {
          LODWORD(v4) = 0;
          v5 = *(a1 + 32);
          goto LABEL_51;
        }
      }

      else if (byte_181A20298[*a3] != byte_181A20298[*ii])
      {
        return 0;
      }

      ++a3;
    }
  }

  v4 = 0;
  v5 = *(a1 + 32);
LABEL_4:
  v6 = *(v5 + 32 * v4);
  for (jj = a3; *jj != *v6; ++jj)
  {
    if (byte_181A20298[*jj] != byte_181A20298[*v6])
    {
      if (++v4 == v3)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }

LABEL_6:
    ++v6;
  }

  if (*jj)
  {
    goto LABEL_6;
  }

LABEL_51:
  v33 = *(v5 + 32 * v4 + 24);
  v34 = *a2;
  if (*a2)
  {
    v35 = 0;
    v36 = a2 + 1;
    do
    {
      v35 = -1640531535 * (v35 + (v34 & 0xDF));
      v37 = *v36++;
      v34 = v37;
    }

    while (v37);
  }

  else
  {
    v35 = 0;
  }

  v38 = (v33 + 8);
  v39 = *(v33 + 24);
  if (!v39)
  {
    v45 = (v33 + 12);
    v40 = (v33 + 8);
    v41 = *v45;
    if (v41)
    {
      goto LABEL_58;
    }

    goto LABEL_68;
  }

  v40 = (v39 + 16 * (v35 % *v38));
  v41 = *v40;
  if (!*v40)
  {
LABEL_68:
    v42 = &qword_1EA831A30;
LABEL_69:
    v21 = v42[2];
    if (v21)
    {
      return v21;
    }

    goto LABEL_70;
  }

LABEL_58:
  v42 = (v40 + 2);
  do
  {
    v42 = *v42;
    if (v35 == *(v42 + 8))
    {
      v43 = v42[3];
      for (kk = a2; ; ++kk)
      {
        if (*v43 == *kk)
        {
          if (!*v43)
          {
            goto LABEL_69;
          }
        }

        else if (byte_181A20298[*v43] != byte_181A20298[*kk])
        {
          break;
        }

        ++v43;
      }
    }

    --v41;
  }

  while (v41);
  v21 = qword_1EA831A40;
  if (qword_1EA831A40)
  {
    return v21;
  }

LABEL_70:
  v46 = *a2;
  if (!*a2)
  {
    v55 = 0;
    v54 = "sqlite_";
    goto LABEL_142;
  }

  if ((v46 & 0xFFFFFFDF) != 0x53)
  {
    v53 = &byte_181A20298[v46];
    v54 = "sqlite_";
LABEL_141:
    v55 = *v53;
    goto LABEL_142;
  }

  v47 = a2[1];
  if (!a2[1])
  {
    v55 = 0;
    v54 = "qlite_";
    goto LABEL_142;
  }

  if ((v47 & 0xFFFFFFDF) != 0x51)
  {
    v53 = &byte_181A20298[v47];
    v54 = "qlite_";
    goto LABEL_141;
  }

  v48 = a2[2];
  if (!a2[2])
  {
    v55 = 0;
    v54 = "lite_";
    goto LABEL_142;
  }

  if ((v48 & 0xFFFFFFDF) != 0x4C)
  {
    v53 = &byte_181A20298[v48];
    v54 = "lite_";
    goto LABEL_141;
  }

  v49 = a2[3];
  if (!a2[3])
  {
    v55 = 0;
    v54 = "ite_";
    goto LABEL_142;
  }

  if ((v49 & 0xFFFFFFDF) != 0x49)
  {
    v53 = &byte_181A20298[v49];
    v54 = "ite_";
    goto LABEL_141;
  }

  v50 = a2[4];
  if (!a2[4])
  {
    v55 = 0;
    v54 = "te_";
    goto LABEL_142;
  }

  if ((v50 & 0xFFFFFFDF) != 0x54)
  {
    v53 = &byte_181A20298[v50];
    v54 = "te_";
    goto LABEL_141;
  }

  v51 = a2[5];
  if (!a2[5])
  {
    v55 = 0;
    v54 = "e_";
    goto LABEL_142;
  }

  if ((v51 & 0xFFFFFFDF) != 0x45)
  {
    v53 = &byte_181A20298[v51];
    v54 = "e_";
    goto LABEL_141;
  }

  v52 = a2[6];
  if (!a2[6])
  {
    v55 = 0;
    v54 = "_";
LABEL_142:
    if (v55 == byte_181A20298[*v54])
    {
      goto LABEL_143;
    }

    return 0;
  }

  if (v52 != 95)
  {
    v53 = &byte_181A20298[v52];
    v54 = "_";
    goto LABEL_141;
  }

LABEL_143:
  v76 = a2 + 7;
  if (v4 != 1)
  {
    for (mm = "schema"; ; ++mm)
    {
      if (*v76 == *mm)
      {
        if (!*v76)
        {
          v75 = "sqlite_master";
          goto LABEL_179;
        }
      }

      else if (byte_181A20298[*v76] != byte_181A20298[*mm])
      {
        return 0;
      }

      ++v76;
    }
  }

  v77 = "temp_schema";
  v78 = a2 + 7;
  while (2)
  {
    if (*v78 != *v77)
    {
      if (byte_181A20298[*v78] != byte_181A20298[*v77])
      {
        v79 = "schema";
        for (nn = a2 + 7; ; ++nn)
        {
          if (*nn == *v79)
          {
            if (!*nn)
            {
              goto LABEL_167;
            }
          }

          else if (byte_181A20298[*nn] != byte_181A20298[*v79])
          {
            for (i1 = "master"; ; ++i1)
            {
              if (*v76 == *i1)
              {
                if (!*v76)
                {
                  goto LABEL_167;
                }
              }

              else if (byte_181A20298[*v76] != byte_181A20298[*i1])
              {
                return 0;
              }

              ++v76;
            }
          }

          ++v79;
        }
      }

      goto LABEL_146;
    }

    if (*v78)
    {
LABEL_146:
      ++v78;
      ++v77;
      continue;
    }

    break;
  }

LABEL_167:
  v84 = *(v5 + 56);
  v85 = (v84 + 8);
  v86 = *(v84 + 24);
  if (!v86)
  {
    v87 = *(v84 + 12);
    if (v87)
    {
      goto LABEL_169;
    }

    return qword_1EA831A40;
  }

  v85 = (v86 + 16 * (0x72DF5832u % *v85));
  v87 = *v85;
  if (!*v85)
  {
    return qword_1EA831A40;
  }

LABEL_169:
  v88 = (v85 + 2);
  do
  {
    v88 = *v88;
    if (*(v88 + 8) == 1927239730)
    {
      v89 = v88[3];
      for (i2 = "sqlite_temp_master"; ; ++i2)
      {
        if (*v89 == *i2)
        {
          if (!*v89)
          {
            return v88[2];
          }
        }

        else if (byte_181A20298[*v89] != byte_181A20298[*i2])
        {
          break;
        }

        ++v89;
      }
    }

    --v87;
  }

  while (v87);
  v88 = &qword_1EA831A30;
  return v88[2];
}

uint64_t sub_18191882C(_BYTE *a1)
{
  v1 = "_ROWID_";
  for (i = a1; *i == *v1; ++i)
  {
    if (!*i)
    {
      return 1;
    }

LABEL_3:
    ++v1;
  }

  if (byte_181A20298[*i] == byte_181A20298[*v1])
  {
    goto LABEL_3;
  }

  v4 = "ROWID";
  for (j = a1; *j == *v4; ++j)
  {
    if (!*j)
    {
      return 1;
    }

LABEL_9:
    ++v4;
  }

  if (byte_181A20298[*j] == byte_181A20298[*v4])
  {
    goto LABEL_9;
  }

  for (k = "OID"; *a1 == *k; ++k)
  {
    if (!*a1)
    {
      return 1;
    }

LABEL_15:
    ++a1;
  }

  if (byte_181A20298[*a1] == byte_181A20298[*k])
  {
    goto LABEL_15;
  }

  return 0;
}

char *sub_181918904(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 14) & 4) != 0)
  {
    return (*a1 + strlen(*a1) + 1);
  }

  v2 = *(a1 + 8);
  if (v2 >= 0x10)
  {
    return off_1EA831620[(v2 >> 4) - 1];
  }

  return a2;
}

int sqlite3_sleep(int a1)
{
  if (sqlite3_initialize())
  {
    return 0;
  }

  if (word_1ED452E84 && (v3 = qword_1ED452F08(2)) != 0)
  {
    v4 = v3;
    xmmword_1ED452F18(v3);
    v5 = qword_1ED456AE8;
    xmmword_1ED452F28(v4);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = qword_1ED456AE8;
    if (!qword_1ED456AE8)
    {
      return 0;
    }
  }

  if (a1 >= 0)
  {
    v6 = (1000 * a1);
  }

  else
  {
    v6 = 0;
  }

  return (*(v5 + 112))(v5, v6) / 1000;
}

int sqlite3_file_control(sqlite3 *a1, const char *zDbName, int op, void *a4)
{
  if (a1)
  {
    v4 = *(a1 + 113);
    if (v4 == 186)
    {
      goto LABEL_5;
    }

    if (v4 == 118)
    {
      v8 = a1;
      if (*(a1 + 3))
      {
        v9 = *&op;
        xmmword_1ED452F18(*(a1 + 3));
        *&op = v9;
        a1 = v8;
      }

      v10 = *&op;
      if (!zDbName)
      {
        LODWORD(v12) = 0;
        v14 = *(a1 + 4);
        v13 = a4;
        goto LABEL_35;
      }

      v11 = *(a1 + 10);
      v12 = (v11 - 1);
      if (v11 < 1)
      {
        goto LABEL_46;
      }

      v13 = a4;
      v14 = *(a1 + 4);
      v15 = (v14 + 32 * v12);
      while (1)
      {
        v16 = *v15;
        if (*v15)
        {
          break;
        }

LABEL_19:
        if (!v12)
        {
          v19 = "main";
          for (i = zDbName; ; ++i)
          {
            if (*v19 == *i)
            {
              if (!*v19)
              {
                LODWORD(v12) = 0;
                goto LABEL_35;
              }
            }

            else if (byte_181A20298[*v19] != byte_181A20298[*i])
            {
              break;
            }

            ++v19;
          }
        }

        v15 -= 4;
        v18 = v12 <= 0;
        LODWORD(v12) = v12 - 1;
        if (v18)
        {
          goto LABEL_46;
        }
      }

      for (j = zDbName; ; ++j)
      {
        if (*v16 == *j)
        {
          if (!*v16)
          {
            if ((v12 & 0x80000000) == 0)
            {
LABEL_35:
              v22 = *(v14 + 32 * v12 + 8);
              if (v22)
              {
                if (*(v22 + 17))
                {
                  ++*(v22 + 20);
                  if (!*(v22 + 18))
                  {
                    v23 = v10;
                    sub_181932DEC(v22);
                    v10 = v23;
                    v13 = a4;
                    a1 = v8;
                  }
                }

                v24 = *(v22 + 8);
                v25 = *v24;
                v26 = *(*v24 + 72);
                if (v10 <= 34)
                {
                  switch(v10)
                  {
                    case 7:
                      v27 = 0;
                      *v13 = v26;
                      goto LABEL_89;
                    case 0x1B:
                      v27 = 0;
                      goto LABEL_60;
                    case 0x1C:
                      v27 = 0;
                      v28 = *(v25 + 344);
                      v25 += 80;
                      if (v28)
                      {
                        v25 = v28 + 16;
                      }

LABEL_60:
                      *v13 = *v25;
                      goto LABEL_89;
                  }

LABEL_55:
                  v29 = *(a1 + 172);
                  v30 = *v26;
                  v31 = v10 - 101;
                  if ((v10 - 101) <= 1 && v30)
                  {
                    v32 = *(**(*(*(a1 + 4) + 8) + 8) + 320);
                    v33 = v10;
                    if (v32)
                    {
                      v35 = *v32;
                      v32 += 2;
                      v34 = v35;
                    }

                    else
                    {
                      v34 = 0;
                    }

                    v47 = v34;
                    (*(v30 + 80))(v26, 107, &v47);
                    v30 = *v26;
                    if (*v26)
                    {
                      (*(v30 + 80))(v26, 108, v32);
                      v30 = *v26;
                    }

                    v13 = a4;
                    v10 = v33;
                    a1 = v8;
                  }

                  if (!v30)
                  {
                    *(a1 + 172) = v29;
                    v27 = 12;
                    goto LABEL_89;
                  }

                  v27 = (*(v30 + 80))(v26, v10, v13);
                  a1 = v8;
                  v41 = *v26;
                  *(v8 + 172) = v29;
                  if (v31 > 1 || (v41 ? (v42 = v27 == 0) : (v42 = 0), !v42))
                  {
LABEL_89:
                    if (*(v22 + 17))
                    {
                      v44 = *(v22 + 20) - 1;
                      *(v22 + 20) = v44;
                      if (!v44)
                      {
                        sub_181932ECC(v22);
                        a1 = v8;
                      }
                    }

                    *(a1 + 20) = v27;
                    if (v27)
                    {
LABEL_95:
                      sub_181932D5C(v8, v27);
                      v45 = *(v8 + 3);
                      if (!v45)
                      {
                        return v27;
                      }
                    }

                    else
                    {
                      if (*(a1 + 52))
                      {
                        v27 = 0;
                        goto LABEL_95;
                      }

                      v27 = 0;
                      *(a1 + 21) = -1;
                      v45 = *(a1 + 3);
                      if (!v45)
                      {
                        return v27;
                      }
                    }

                    xmmword_1ED452F28(v45);
                    return v27;
                  }

                  sub_181908F74(v8);
LABEL_87:
                  a1 = v8;
                  goto LABEL_88;
                }

                if (v10 == 35)
                {
                  v27 = 0;
                  *v13 = *(v25 + 132);
                  goto LABEL_89;
                }

                if (v10 != 38)
                {
                  if (v10 != 42)
                  {
                    goto LABEL_55;
                  }

                  if (!*(v24 + 36) && !*(v25 + 16))
                  {
                    sub_181934D80(v25);
                    goto LABEL_87;
                  }

                  goto LABEL_88;
                }

                v36 = *v13;
                if (*(v22 + 17))
                {
                  v37 = *(v22 + 20);
                  *(v22 + 20) = v37 + 1;
                  if (*(v22 + 18))
                  {
                    v38 = *(v24 + 38);
                    v39 = *(v24 + 52);
LABEL_67:
                    *(v22 + 20) = v37;
                    if (!v37)
                    {
                      v46 = v39;
                      sub_181932ECC(v22);
                      v39 = v46;
                      v13 = a4;
                      a1 = v8;
                    }
                  }

                  else
                  {
                    sub_181932DEC(v22);
                    v40 = *(v22 + 8);
                    v38 = *(v40 + 38);
                    v39 = *(v40 + 52);
                    if (*(v22 + 17))
                    {
                      v37 = *(v22 + 20) - 1;
                      a1 = v8;
                      v13 = a4;
                      goto LABEL_67;
                    }

                    a1 = v8;
                    v13 = a4;
                  }
                }

                else
                {
                  v38 = *(v24 + 38);
                  v39 = *(v24 + 52);
                }

                v43 = vsub_s32(v39, vdup_lane_s32(v39, 1)).u32[0];
                if (v43 <= v38)
                {
                  v43 = v38;
                }

                *v13 = v43;
                if (v36 <= 0xFF)
                {
                  sub_1818F7260(v22, 0, v36, 0);
                  goto LABEL_87;
                }

LABEL_88:
                v27 = 0;
                goto LABEL_89;
              }
            }

LABEL_46:
            v27 = 1;
            *(a1 + 20) = 1;
            goto LABEL_95;
          }
        }

        else if (byte_181A20298[*v16] != byte_181A20298[*j])
        {
          goto LABEL_19;
        }

        ++v16;
      }
    }

    if (v4 == 109)
    {
LABEL_5:
      v5 = "unopened";
    }

    else
    {
      v5 = "invalid";
    }
  }

  else
  {
    v5 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v5);

  return sub_1819012D0(196175);
}

uint64_t sub_181918F14(uint64_t a1)
{
  if (!*(a1 + 17))
  {
    v4 = *(a1 + 8);
    v2 = *(v4 + 38);
    v3 = *(v4 + 52);
    goto LABEL_8;
  }

  ++*(a1 + 20);
  if (*(a1 + 18))
  {
    v1 = *(a1 + 8);
    v2 = *(v1 + 38);
    v3 = *(v1 + 52);
  }

  else
  {
    v5 = a1;
    sub_181932DEC(a1);
    a1 = v5;
    v6 = *(v5 + 17);
    v7 = *(v5 + 8);
    v2 = *(v7 + 38);
    v3 = *(v7 + 52);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v8 = *(a1 + 20) - 1;
  *(a1 + 20) = v8;
  if (!v8)
  {
    v11 = v3;
    sub_181932ECC(a1);
    v3 = v11;
  }

LABEL_8:
  v9 = vsub_s32(v3, vdup_lane_s32(v3, 1)).u32[0];
  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

int sqlite3_test_control(int op, ...)
{
  va_start(va, op);
  *&v93 = va_arg(va, double);
  v94 = va_arg(va, int *);
  v95 = va_arg(va, unint64_t *);
  v96 = va_arg(va, int *);
  LODWORD(v2) = 0;
  switch(op)
  {
    case 5:
      LODWORD(v2) = 0;
      v3 = &xmmword_1ED456CA4;
      v4 = &xmmword_1EA831AA0;
      goto LABEL_50;
    case 6:
      LODWORD(v2) = 0;
      v3 = &xmmword_1EA831AA0;
      v4 = &xmmword_1ED456CA4;
LABEL_50:
      *(v4 + 32) = *(v3 + 32);
      v24 = v3[7];
      v4[6] = v3[6];
      v4[7] = v24;
      v25 = v3[3];
      v4[2] = v3[2];
      v4[3] = v25;
      v26 = v3[5];
      v4[4] = v3[4];
      v4[5] = v26;
      v27 = v3[1];
      *v4 = *v3;
      v4[1] = v27;
      return v2;
    case 7:
      v17 = *(v93 + 48);
      LODWORD(v2) = 0;
      if (v94)
      {
        v18 = v17 | 0x800000000;
      }

      else
      {
        v18 = v17 & 0xFFFFFFF7FFFFFFFFLL;
      }

      *(v93 + 48) = v18;
      return v2;
    case 8:
      __buf = 0;
      v20 = sub_181902484(512, 0x102204086A6B74CLL);
      v21 = v20;
      if (v93 <= 0)
      {
        v23 = 0;
        if (v20)
        {
          *v20 = 0u;
          v20[1] = 0u;
          *v20 = -2 * v93;
          v20[30] = 0u;
          v20[31] = 0u;
          v20[28] = 0u;
          v20[29] = 0u;
          v20[26] = 0u;
          v20[27] = 0u;
          v20[24] = 0u;
          v20[25] = 0u;
          v20[22] = 0u;
          v20[23] = 0u;
          v20[20] = 0u;
          v20[21] = 0u;
          v20[18] = 0u;
          v20[19] = 0u;
          v20[16] = 0u;
          v20[17] = 0u;
          v20[14] = 0u;
          v20[15] = 0u;
          v20[12] = 0u;
          v20[13] = 0u;
          v20[10] = 0u;
          v20[11] = 0u;
          v20[8] = 0u;
          v20[9] = 0u;
          v20[6] = 0u;
          v20[7] = 0u;
          v20[4] = 0u;
          v20[5] = 0u;
          v20[2] = 0u;
          v20[3] = 0u;
        }
      }

      else
      {
        if (v20)
        {
          v20[30] = 0u;
          v20[31] = 0u;
          v20[28] = 0u;
          v20[29] = 0u;
          v20[26] = 0u;
          v20[27] = 0u;
          v20[24] = 0u;
          v20[25] = 0u;
          v20[22] = 0u;
          v20[23] = 0u;
          v20[20] = 0u;
          v20[21] = 0u;
          v20[18] = 0u;
          v20[19] = 0u;
          v20[16] = 0u;
          v20[17] = 0u;
          v20[14] = 0u;
          v20[15] = 0u;
          v20[12] = 0u;
          v20[13] = 0u;
          v20[10] = 0u;
          v20[11] = 0u;
          v20[8] = 0u;
          v20[9] = 0u;
          v20[6] = 0u;
          v20[7] = 0u;
          v20[4] = 0u;
          v20[5] = 0u;
          v20[2] = 0u;
          v20[3] = 0u;
          *v20 = 0u;
          v20[1] = 0u;
          *v20 = v93;
        }

        v22 = sub_181902484(((v93 + 7) >> 3) + 1, 2439008808);
        v23 = v22;
        if (v22)
        {
          bzero(v22, ((v93 + 7) >> 3) + 1);
        }
      }

      if (sqlite3_initialize())
      {
        v29 = -1;
        goto LABEL_217;
      }

      v30 = sub_181902484(512, 1163382217);
      v31 = v30;
      v29 = -1;
      if (!v21 || !v30)
      {
        goto LABEL_208;
      }

      v32 = v93 >= 1 && v23 == 0;
      if (v32)
      {
        goto LABEL_209;
      }

      __buf = 0;
      v33 = *v94;
      if (!*v94)
      {
        goto LABEL_138;
      }

      v34 = 0;
      v35 = v94;
      do
      {
        if (v33 >= 6)
        {
          ++v34;
        }

        else
        {
          if (v33 <= 5 && ((1 << v33) & 0x26) != 0)
          {
            v36 = v35[2];
            v37 = v36 - 1;
            v35[2] = v35[3] + v36;
            v38 = 4;
          }

          else
          {
            sqlite3_initialize();
            arc4random_buf(&__buf, 4uLL);
            v38 = 2;
            v37 = __buf;
          }

          v39 = v35[1];
          v7 = __OFSUB__(v39--, 1);
          v35[1] = v39;
          if (!((v39 < 0) ^ v7 | (v39 == 0)))
          {
            v38 = 0;
          }

          v34 += v38;
          v40 = (v37 & 0x7FFFFFFF) % v93;
          __buf = v40;
          if (v33)
          {
            if (v23)
            {
              v23[(v40 + 1) >> 3] |= 1 << ((v40 + 1) & 7);
            }

            if (v33 != 5 && sub_1818E70E0(v21, __buf + 1))
            {
              v29 = -1;
              goto LABEL_208;
            }
          }

          else
          {
            if (v23)
            {
              v23[(v40 + 1) >> 3] &= ~(1 << ((v40 + 1) & 7));
              v40 = __buf;
            }

            v41 = v21;
            while (1)
            {
              v42 = v41[2];
              if (!v42)
              {
                break;
              }

              v43 = v40 / v42;
              v40 %= v42;
              v41 = *&v41[2 * v43 + 4];
              if (!v41)
              {
                goto LABEL_83;
              }
            }

            if (*v41 > 0xF80u)
            {
              v44 = v41 + 4;
              memcpy(v31, v41 + 4, 0x1F0uLL);
              v45 = 0;
              *(v41 + 1) = 0u;
              *(v41 + 2) = 0u;
              *(v41 + 3) = 0u;
              *(v41 + 4) = 0u;
              *(v41 + 5) = 0u;
              *(v41 + 6) = 0u;
              *(v41 + 7) = 0u;
              *(v41 + 8) = 0u;
              *(v41 + 9) = 0u;
              *(v41 + 10) = 0u;
              *(v41 + 11) = 0u;
              *(v41 + 12) = 0u;
              *(v41 + 13) = 0u;
              *(v41 + 14) = 0u;
              *(v41 + 15) = 0u;
              *(v41 + 16) = 0u;
              *(v41 + 17) = 0u;
              *(v41 + 18) = 0u;
              *(v41 + 19) = 0u;
              *(v41 + 20) = 0u;
              *(v41 + 21) = 0u;
              *(v41 + 22) = 0u;
              *(v41 + 23) = 0u;
              *(v41 + 24) = 0u;
              *(v41 + 25) = 0u;
              *(v41 + 26) = 0u;
              *(v41 + 27) = 0u;
              *(v41 + 28) = 0u;
              *(v41 + 29) = 0u;
              *(v41 + 30) = 0u;
              *(v41 + 31) = 0u;
              v41[1] = 0;
              do
              {
                v46 = *(v31 + v45);
                if (v46)
                {
                  v47 = v46 == v40 + 1;
                }

                else
                {
                  v47 = 1;
                }

                if (!v47)
                {
                  v48 = (v46 - 1) % 0x7Cu;
                  ++v41[1];
                  while (v44[v48])
                  {
                    if ((v48 + 1) <= 0x7B)
                    {
                      v48 = (v48 + 1);
                    }

                    else
                    {
                      v48 = 0;
                    }
                  }

                  v44[v48] = *(v31 + v45);
                }

                ++v45;
              }

              while (v45 != 124);
            }

            else
            {
              *(v41 + (v40 >> 3) + 16) &= ~(1 << (v40 & 7));
            }
          }
        }

LABEL_83:
        v35 = &v94[v34];
        v33 = *v35;
      }

      while (*v35);
LABEL_138:
      if (!v23)
      {
        v29 = 0;
        goto LABEL_208;
      }

      if (*v21 <= v93)
      {
        goto LABEL_143;
      }

      v55 = v21;
      v56 = v93;
      while (1)
      {
        v57 = v55[2];
        if (!v57)
        {
          break;
        }

        v58 = v56 / v57;
        v56 %= v57;
        v55 = *&v55[2 * v58 + 4];
        if (!v55)
        {
          goto LABEL_143;
        }
      }

      if (*v55 > 0xF80u)
      {
        v83 = v56 % 0x7C;
        v84 = v55 + 4;
        v85 = v84[v56 % 0x7C];
        if (v85)
        {
          v86 = v56 + 1;
          while (v85 != v86)
          {
            if (v83 == 123)
            {
              v83 = 0;
            }

            else
            {
              ++v83;
            }

            v85 = v84[v83];
            if (!v85)
            {
              goto LABEL_143;
            }
          }

          v59 = 1;
        }

        else
        {
LABEL_143:
          v59 = 0;
        }
      }

      else
      {
        v59 = (*(v55 + (v56 >> 3) + 16) >> (v56 & 7)) & 1;
      }

      v29 = v59 - v93 + *v21;
      v60 = 1;
      __buf = 1;
      if (v93 < 1)
      {
        goto LABEL_208;
      }

      while (2)
      {
        v61 = v60 - 1;
        if (v60 - 1 >= *v21)
        {
          goto LABEL_149;
        }

        v62 = v21;
        while (1)
        {
          v63 = v62[2];
          if (!v63)
          {
            break;
          }

          v64 = v61 / v63;
          v61 %= v63;
          v62 = *&v62[2 * v64 + 4];
          if (!v62)
          {
            goto LABEL_149;
          }
        }

        if (*v62 > 0xF80u)
        {
          v66 = v61 % 0x7C;
          v67 = v62 + 4;
          v68 = v67[v61 % 0x7C];
          if (v68)
          {
            v69 = v61 + 1;
            while (v68 != v69)
            {
              if (v66 == 123)
              {
                v66 = 0;
              }

              else
              {
                ++v66;
              }

              v68 = v67[v66];
              if (!v68)
              {
                goto LABEL_149;
              }
            }

            v65 = 1;
          }

          else
          {
LABEL_149:
            v65 = 0;
          }
        }

        else
        {
          v65 = (*(v62 + (v61 >> 3) + 16) >> (v61 & 7)) & 1;
        }

        if (((v23[v60 >> 3] >> (v60 & 7)) & 1) == v65)
        {
          __buf = v60 + 1;
          v32 = v60++ == v93;
          if (v32)
          {
            goto LABEL_208;
          }

          continue;
        }

        break;
      }

      v29 = v60;
LABEL_208:
      if (v31)
      {
LABEL_209:
        v87 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v88 = v29;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v31);
          --qword_1ED456A90;
          off_1ED452EB0(v31);
          v31 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v87 = &xmmword_1ED452F28;
            goto LABEL_215;
          }
        }

        else
        {
          v88 = v29;
LABEL_215:
          (*v87)(v31);
        }

        v29 = v88;
      }

LABEL_217:
      v89 = v29;
      if (v23)
      {
        v90 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_223;
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
          v90 = &xmmword_1ED452F28;
LABEL_223:
          (*v90)(v23);
        }
      }

      sub_1818EFAC4(v21);
      LODWORD(v2) = v89;
      return v2;
    case 9:
      off_1ED453038 = v93;
      LODWORD(v2) = 0;
      if (*&v93 != 0.0)
      {
        LODWORD(v2) = (v93)(0);
      }

      return v2;
    case 10:
      LODWORD(v2) = 0;
      off_1EA831A10 = v93;
      off_1EA831A18 = v94;
      return v2;
    case 11:
      LODWORD(v2) = dword_1EA8315A8;
      if (v93)
      {
        dword_1EA8315A8 = v93;
      }

      return v2;
    case 12:
      __buf = 0;
      LODWORD(v2) = 0;
      return v2;
    case 13:
      LODWORD(v2) = v93;
      return v2;
    case 15:
      LODWORD(v2) = 0;
      *(v93 + 96) = v94;
      return v2;
    case 16:
      LODWORD(v2) = 0;
      v15 = v94;
      v16 = *(v93 + 96);
      goto LABEL_195;
    case 17:
      LODWORD(v2) = 0;
      *(v93 + 44) ^= 0x20u;
      return v2;
    case 18:
      dword_1ED453040 = v93;
      LODWORD(v2) = 0;
      if (v93 == 2)
      {
        off_1ED453048 = v94;
      }

      else
      {
        off_1ED453048 = 0;
      }

      return v2;
    case 19:
      LODWORD(v2) = 0;
      dword_1ED453050 = v93;
      return v2;
    case 20:
      LODWORD(v2) = 0;
      dword_1ED452E90 = v93;
      return v2;
    case 22:
      LODWORD(v2) = 123410;
      return v2;
    case 23:
      LODWORD(v2) = qword_1ED452FEC == 0;
      return v2;
    case 24:
      LODWORD(v2) = 0;
      *(v93 + 184) = v94;
      return v2;
    case 25:
      v5 = *(v93 + 24);
      if (v5)
      {
        xmmword_1ED452F18(v5);
      }

      if (!v94)
      {
        goto LABEL_125;
      }

      v6 = *(v93 + 40);
      v7 = __OFSUB__(v6, 1);
      v8 = (v6 - 1);
      if (v8 < 0 != v7)
      {
        goto LABEL_125;
      }

      v9 = (*(v93 + 32) + 32 * v8);
      while (1)
      {
        v10 = *v9;
        if (*v9)
        {
          break;
        }

LABEL_15:
        if (!v8)
        {
          v13 = "main";
          for (i = v94; ; i = (i + 1))
          {
            if (*v13 == *i)
            {
              if (!*v13)
              {
                LOBYTE(v8) = 0;
LABEL_120:
                *(v93 + 196) = v8;
                *(v93 + 198) = *(v93 + 198) & 0xFD | (2 * (v95 & 1));
                *(v93 + 197) = v95 & 1;
                *(v93 + 192) = v96;
                if ((v95 & 1) == 0 && v96 != 0)
                {
                  sub_181908F74(v93);
                }

LABEL_125:
                v2 = *(v93 + 24);
                if (v2)
                {
                  xmmword_1ED452F28(v2);
                  LODWORD(v2) = 0;
                }

                return v2;
              }
            }

            else if (byte_181A20298[*v13] != byte_181A20298[*i])
            {
              break;
            }

            ++v13;
          }
        }

        v9 -= 4;
        v12 = v8 <= 0;
        LODWORD(v8) = v8 - 1;
        if (v12)
        {
          goto LABEL_125;
        }
      }

      for (j = v94; ; j = (j + 1))
      {
        if (*v10 == *j)
        {
          if (!*v10)
          {
            if ((v8 & 0x80000000) == 0)
            {
              goto LABEL_120;
            }

            goto LABEL_125;
          }
        }

        else if (byte_181A20298[*v10] != byte_181A20298[*j])
        {
          goto LABEL_15;
        }

        ++v10;
      }

    case 27:
      v19 = *(*v93 + 20);
      LODWORD(v2) = 0;
      if ((v19 & 4) != 0)
      {
        *(*v93 + 20) = v19 & 0xFFDB | 0x20;
      }

      return v2;
    case 28:
      LODWORD(v2) = sub_1819012D0(196295);
      return v2;
    case 29:
      LODWORD(v2) = 0;
      byte_1ED452E89 = v93;
      return v2;
    case 30:
      LODWORD(v2) = 0;
      *v94 = 0;
      return v2;
    case 31:
      LODWORD(v2) = 0;
      v15 = v94;
      if (v93 > 1)
      {
        if (v93 == 2)
        {
          LODWORD(v2) = 0;
          v16 = dword_1EA83187C;
          goto LABEL_195;
        }

        if (v93 == 3)
        {
          LODWORD(v2) = 0;
          dword_1EA83187C = *v94;
        }
      }

      else
      {
        if (!v93)
        {
          LODWORD(v2) = 0;
          v16 = dword_1EA831878;
          goto LABEL_195;
        }

        if (v93 == 1)
        {
          LODWORD(v2) = 0;
          dword_1EA831878 = *v94;
        }
      }

      return v2;
    case 33:
      if (*&v93 <= 1.0)
      {
        goto LABEL_129;
      }

      if (*&v93 <= 2000000000.0)
      {
        v50 = *&v93;
        if (*&v93 >= 8)
        {
          v52 = 40;
          if (v50 >= 0x100)
          {
            v53 = *&v93;
            do
            {
              v52 += 40;
              v50 = v53 >> 4;
              v12 = v53 > 0xFFF;
              v53 >>= 4;
            }

            while (v12);
          }

          if (v50 < 0x10)
          {
            LOBYTE(v54) = v50;
          }

          else
          {
            do
            {
              v52 += 10;
              v54 = v50 >> 1;
              v12 = v50 > 0x1F;
              v50 >>= 1;
            }

            while (v12);
          }
        }

        else
        {
          if (v50 < 2)
          {
LABEL_129:
            LOWORD(v28) = 0;
            v51 = v95;
            v15 = v96;
            *v94 = 0;
            goto LABEL_173;
          }

          v52 = 40;
          do
          {
            v52 -= 10;
            LOBYTE(v54) = 2 * v50;
            v70 = v50 >= 4;
            v50 *= 2;
          }

          while (!v70);
        }

        LOWORD(v28) = v52 + word_181A27AA2[v54 & 7] - 10;
      }

      else
      {
        v28 = 10 * (v93 >> 52) - 10220;
      }

      v51 = v95;
      v15 = v96;
      *v94 = v28;
      if (v28 >= 610)
      {
        v71 = 0x7FFFFFFFFFFFFFFFLL;
        *v95 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_184;
      }

LABEL_173:
      v72 = v28;
      v73 = ((26215 * v72) >> 18) + ((26215 * v72) >> 31);
      v74 = v28 % 10;
      v75 = v74 - 1;
      if (!v74)
      {
        v75 = 0;
      }

      if (v74 <= 4u)
      {
        v76 = v75;
      }

      else
      {
        v76 = v74 - 2;
      }

      v77 = v76 + 8;
      v78 = v77 << (v73 - 3);
      v71 = v77 >> (3 - v73);
      if (v72 > 29)
      {
        v71 = v78;
      }

      *v51 = v71;
      if (v71 < 8)
      {
        if (v71 < 2)
        {
          v16 = 0;
          goto LABEL_194;
        }

        v79 = 40;
        do
        {
          v81 = v71;
          v79 -= 10;
          v71 *= 2;
        }

        while (v81 < 4);
LABEL_193:
        v16 = (v79 + word_181A27AA2[v71 & 7] - 10);
LABEL_194:
        LODWORD(v2) = 0;
LABEL_195:
        *v15 = v16;
        return v2;
      }

      if (v71 < 0x100)
      {
        v79 = 40;
        goto LABEL_191;
      }

LABEL_184:
      v79 = 40;
      do
      {
        v80 = v71;
        v79 += 40;
        v71 >>= 4;
      }

      while (v80 > 0xFFF);
LABEL_191:
      if (v71 >= 0x10)
      {
        do
        {
          v82 = v71;
          v79 += 10;
          v71 >>= 1;
        }

        while (v82 > 0x1F);
      }

      goto LABEL_193;
    default:
      return v2;
  }
}

uint64_t sub_181919E10(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = 40;
    if (a1 >= 0x100)
    {
      v3 = a1;
      do
      {
        v2 += 40;
        a1 = v3 >> 4;
        v4 = v3 > 0xFFF;
        v3 >>= 4;
      }

      while (v4);
    }

    if (a1 < 0x10)
    {
      LOBYTE(v5) = a1;
    }

    else
    {
      do
      {
        v2 += 10;
        v5 = a1 >> 1;
        v4 = a1 > 0x1F;
        a1 >>= 1;
      }

      while (v4);
    }
  }

  else
  {
    if (a1 < 2)
    {
      return 0;
    }

    v2 = 40;
    do
    {
      v2 -= 10;
      LOBYTE(v5) = 2 * a1;
      v6 = a1 >= 4;
      a1 *= 2;
    }

    while (!v6);
  }

  return (v2 + word_181A27AA2[v5 & 7] - 10);
}

char *__cdecl sqlite3_create_filename(const char *zDatabase, const char *zJournal, const char *zWal, int nParam, const char **azParam)
{
  if (!zDatabase || !zJournal || !zWal || nParam < 0 || (v8 = azParam, nParam) && !azParam)
  {
    sub_1819012D0(196863);
    return 0;
  }

  v11 = strlen(zDatabase);
  v12 = strlen(zJournal);
  v13 = v11 + v12 + strlen(zWal) + 10;
  v14 = (2 * nParam);
  if (nParam)
  {
    v15 = (2 * nParam);
    v16 = v8;
    do
    {
      v17 = *v16++;
      v13 += strlen(v17) + 1;
      --v15;
    }

    while (v15);
  }

  if (sqlite3_initialize())
  {
    return 0;
  }

  result = sub_181902484(v13, 3116229021);
  if (result)
  {
    *result = 0;
    v18 = result + 4;
    v19 = zDatabase;
    v20 = strlen(zDatabase);
    memcpy(v18, v19, v20 + 1);
    v21 = &v18[v20];
    if (nParam)
    {
      v22 = v21 + 1;
      do
      {
        v23 = *v8++;
        v24 = strlen(v23);
        memcpy(v22, v23, v24 + 1);
        v21 = &v22[v24];
        v22 += v24 + 1;
        --v14;
      }

      while (v14);
    }

    v25 = v21 + 2;
    v21[1] = 0;
    v26 = strlen(zJournal) + 1;
    memcpy(v25, zJournal, v26);
    v27 = &v25[v26];
    v28 = strlen(zWal);
    memcpy(v27, zWal, v28 + 1);
    *&v27[v28 + 1] = 0;
    return v18;
  }

  return result;
}

void sqlite3_free_filename(char *a1)
{
  if (!a1)
  {
    return;
  }

    ;
  }

  v2 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_13;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(i);
  --qword_1ED456A90;
  off_1ED452EB0(i);
  i = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v2 = &xmmword_1ED452F28;
LABEL_13:
    v3 = *v2;

    v3(i);
  }
}

const char *__cdecl sqlite3_uri_parameter(const char *zFilename, const char *zParam)
{
  v2 = 0;
  if (zFilename && zParam)
  {
      ;
    }

    v5 = &i[strlen(i - 1) & 0x3FFFFFFF];
    if (*v5)
    {
      while (1)
      {
        v6 = strcmp(v5, zParam);
        v7 = &v5[strlen(v5) & 0x3FFFFFFF];
        v2 = v7 + 1;
        if (!v6)
        {
          break;
        }

        v8 = &v2[strlen(v7 + 1) & 0x3FFFFFFF];
        v9 = *(v8 + 1);
        v5 = v8 + 1;
        if (!v9)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

const char *__cdecl sqlite3_uri_key(const char *zFilename, int N)
{
  result = 0;
  if (zFilename)
  {
    v4 = N;
    if ((N & 0x80000000) == 0)
    {
        ;
      }

      v6 = &i[strlen(i - 1) & 0x3FFFFFFF];
      v7 = *v6;
      if (*v6)
      {
        v8 = v4 < 1;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        do
        {
          v9 = &v6[(strlen(v6) & 0x3FFFFFFF) + 1];
          v10 = &v9[strlen(v9) & 0x3FFFFFFF];
          v11 = *(v10 + 1);
          v6 = v10 + 1;
          v7 = v11;
          if (v11)
          {
            v12 = v4 > 1;
          }

          else
          {
            v12 = 0;
          }

          --v4;
        }

        while (v12);
      }

      if (v7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

int sqlite3_uri_BOOLean(const char *zFile, const char *zParam, int bDefault)
{
  v4 = sqlite3_uri_parameter(zFile, zParam);
  result = bDefault != 0;
  if (v4)
  {
    return sub_181988BE4(v4, 1, bDefault != 0) != 0;
  }

  return result;
}

sqlite3_int64 sqlite3_uri_int64(const char *a1, const char *a2, sqlite3_int64 a3)
{
  v4 = sqlite3_uri_parameter(a1, a2);
  if (v4)
  {
    v6 = 0;
    if (!sub_18191A360(v4, &v6))
    {
      return v6;
    }
  }

  return a3;
}

uint64_t sub_18191A360(uint64_t a1, unint64_t *a2)
{
  if (*a1 == 48 && (*(a1 + 1) | 0x20) == 0x78)
  {
    v3 = 1;
    do
    {
      v4 = *(a1 + 2 + v3++ - 1);
    }

    while (v4 == 48);
    v5 = v3;
    v6 = *(a1 + v3);
    if ((byte_181A204C8[v6] & 8) != 0)
    {
      v7 = 0;
      v13 = v3 + 1;
      do
      {
        v7 = ((((2 * v6) >> 7) & 0xF9) + v6) & 0xF | (16 * v7);
        v6 = *(a1 + v13++);
      }

      while ((byte_181A204C8[v6] & 8) != 0);
      v5 = v13 - 1;
      v8 = v5;
    }

    else
    {
      v7 = 0;
      v8 = v3;
    }

    *a2 = v7;
    if (v8 - v3 <= 16)
    {
      return *(a1 + v5) != 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v10 = strspn(a1, "+- \n\t0123456789");
    if (*(a1 + (v10 & 0x3FFFFFFF)))
    {
      v11 = (v10 & 0x3FFFFFFF) + 1;
    }

    else
    {
      v11 = v10 & 0x3FFFFFFF;
    }

    return sub_18193D008(a1, a2, v11, 1);
  }
}

const char *__cdecl sqlite3_filename_database(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  do
  {
    do
    {
      v1 = a1;
    }

    while (*--a1);
  }

  while (*(v1 - 2) || *(v1 - 3) || *(v1 - 4));
  return v1;
}

const char *__cdecl sqlite3_filename_journal(const char *result)
{
  if (result)
  {
    do
    {
      do
      {
        v1 = result;
      }

      while (*--result);
    }

    while (*(v1 - 2) || *(v1 - 3) || *(v1 - 4));
    while (1)
    {
      v3 = &v1[strlen(v1) & 0x3FFFFFFF];
      if (!v3[1])
      {
        break;
      }

      v1 = &v3[(strlen(v3 + 1) & 0x3FFFFFFF) + 2];
    }

    return v3 + 2;
  }

  return result;
}

const char *__cdecl sqlite3_filename_wal(const char *result)
{
  if (result)
  {
    do
    {
      do
      {
        v1 = result;
      }

      while (*--result);
    }

    while (*(v1 - 2) || *(v1 - 3) || *(v1 - 4));
    while (1)
    {
      v3 = &v1[strlen(v1) & 0x3FFFFFFF];
      if (!v3[1])
      {
        break;
      }

      v1 = &v3[(strlen(v3 + 1) & 0x3FFFFFFF) + 2];
    }

    return &v3[(strlen(v3 + 2) & 0x3FFFFFFF) + 3];
  }

  return result;
}

const char *__cdecl sqlite3_db_name(sqlite3 *db, int N)
{
  if (!db)
  {
    v3 = "NULL";
    goto LABEL_11;
  }

  v2 = *(db + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    sub_1819012D0(197005);
    return 0;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (N < 0 || *(db + 10) <= N)
  {
    return 0;
  }

  else
  {
    return *(*(db + 4) + 32 * N);
  }
}

const char *__cdecl sqlite3_db_filename(sqlite3 *db, const char *zDbName)
{
  if (!db)
  {
    v3 = "NULL";
    goto LABEL_28;
  }

  v2 = *(db + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_28:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    sub_1819012D0(197024);
    return 0;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_28;
    }

    goto LABEL_5;
  }

  if (!zDbName)
  {
    LODWORD(v5) = 0;
    v6 = *(db + 4);
    goto LABEL_32;
  }

  v4 = *(db + 10);
  v5 = (v4 - 1);
  if (v4 < 1)
  {
    return 0;
  }

  v6 = *(db + 4);
  v7 = (v6 + 32 * v5);
  do
  {
    v8 = *v7;
    if (*v7)
    {
      for (i = zDbName; ; ++i)
      {
        if (*v8 == *i)
        {
          if (!*v8)
          {
            if ((v5 & 0x80000000) == 0)
            {
LABEL_32:
              v14 = *(v6 + 32 * v5 + 8);
              if (v14)
              {
                v15 = **(v14 + 8);
                if (*(v15 + 19) || *v15 == &unk_1ED453A78)
                {
                  return &unk_181A20D35;
                }

                else
                {
                  return *(v15 + 216);
                }
              }
            }

            return 0;
          }
        }

        else if (byte_181A20298[*v8] != byte_181A20298[*i])
        {
          break;
        }

        ++v8;
      }
    }

    if (!v5)
    {
      v12 = "main";
      for (j = zDbName; ; ++j)
      {
        if (*v12 == *j)
        {
          if (!*v12)
          {
            LODWORD(v5) = 0;
            goto LABEL_32;
          }
        }

        else if (byte_181A20298[*v12] != byte_181A20298[*j])
        {
          break;
        }

        ++v12;
      }
    }

    result = 0;
    v7 -= 4;
    v11 = v5 <= 0;
    LODWORD(v5) = v5 - 1;
  }

  while (!v11);
  return result;
}

int sqlite3_db_readonly(sqlite3 *db, const char *zDbName)
{
  if (!db)
  {
    v3 = "NULL";
    goto LABEL_28;
  }

  v2 = *(db + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_28:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    sub_1819012D0(197040);
    return -1;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_28;
    }

    goto LABEL_5;
  }

  if (!zDbName)
  {
    LODWORD(v5) = 0;
    v6 = *(db + 4);
    goto LABEL_32;
  }

  v4 = *(db + 10);
  v5 = (v4 - 1);
  if (v4 < 1)
  {
    return -1;
  }

  v6 = *(db + 4);
  v7 = (v6 + 32 * v5);
  result = -1;
  do
  {
    v9 = *v7;
    if (*v7)
    {
      for (i = zDbName; ; ++i)
      {
        if (*v9 == *i)
        {
          if (!*v9)
          {
            if ((v5 & 0x80000000) == 0)
            {
LABEL_32:
              v14 = *(v6 + 32 * v5 + 8);
              if (v14)
              {
                return *(*(v14 + 8) + 40) & 1;
              }
            }

            return -1;
          }
        }

        else if (byte_181A20298[*v9] != byte_181A20298[*i])
        {
          break;
        }

        ++v9;
      }
    }

    if (!v5)
    {
      v12 = "main";
      for (j = zDbName; ; ++j)
      {
        if (*v12 == *j)
        {
          if (!*v12)
          {
            LODWORD(v5) = 0;
            goto LABEL_32;
          }
        }

        else if (byte_181A20298[*v12] != byte_181A20298[*j])
        {
          break;
        }

        ++v12;
      }
    }

    v7 -= 4;
    v11 = v5 <= 0;
    LODWORD(v5) = v5 - 1;
  }

  while (!v11);
  return result;
}

uint64_t _sqlite3_lockstate(char *a1, int a2)
{
  v6 = 0;
  if (sub_18188D94C(a1, &v6, 1u, 0))
  {
    if (v6)
    {
      sub_181914B98(v6, 0);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    sqlite3_db_config(v6, 1006, 1, 0);
    v4 = a2;
    v5 = -1;
    sqlite3_file_control(v6, 0, 103, &v4);
    sub_181914B98(v6, 0);
    return v5;
  }
}

uint64_t sub_18191AA48(uint64_t *a1, int a2)
{
  LODWORD(v8) = 0;
  v4 = *a1;
  if (*v4 >= 2 && (v5 = *(v4 + 136)) != 0)
  {
    v5();
  }

  else
  {
    v9 = 0.0;
    (*(v4 + 120))(v4, &v9);
    v8 = (v9 * 86400000.0);
  }

  ++*(a1 + 784);
  if (!a2)
  {
    return 109;
  }

  result = 0;
  v7 = v8 - *(a1 + 194);
  if (*(a1 + 193) >= v7 && (v7 & 0x80000000) == 0)
  {
    return 109;
  }

  return result;
}