uint64_t _sqlite3_db_clone(uint64_t a1, const char *a2, const char *a3, int a4)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_32;
  }

  v4 = *(a1 + 113);
  if (v4 != 186)
  {
    if (v4 != 118)
    {
      if (v4 != 109)
      {
        v5 = "invalid";
        goto LABEL_32;
      }

      goto LABEL_5;
    }

    v6 = a1;
    if (*(a1 + 24))
    {
      v8 = a4;
      v9 = a2;
      xmmword_1ED452F18(*(a1 + 24));
      a2 = v9;
      a4 = v8;
      a1 = v6;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "main";
    }

    v11 = *(a1 + 40);
    v12 = (v11 - 1);
    if (v11 < 1)
    {
      goto LABEL_42;
    }

    v13 = *(a1 + 32);
    v14 = (v13 + 32 * v12);
    while (1)
    {
      v15 = *v14;
      if (*v14)
      {
        break;
      }

LABEL_21:
      if (!v12)
      {
        v18 = "main";
        for (i = v10; ; ++i)
        {
          if (*v18 == *i)
          {
            if (!*v18)
            {
              LODWORD(v12) = 0;
              goto LABEL_36;
            }
          }

          else if (byte_181A20298[*v18] != byte_181A20298[*i])
          {
            break;
          }

          ++v18;
        }
      }

      v14 -= 4;
      v17 = v12 <= 0;
      LODWORD(v12) = v12 - 1;
      if (v17)
      {
        goto LABEL_42;
      }
    }

    for (j = v10; ; ++j)
    {
      if (*v15 == *j)
      {
        if (!*v15)
        {
          if ((v12 & 0x80000000) == 0)
          {
LABEL_36:
            v21 = *(v13 + 32 * v12 + 8);
            if (v21)
            {
              v22 = a4;
              if (*(v21 + 17))
              {
                ++*(v21 + 20);
                if (!*(v21 + 18))
                {
                  sub_181932DEC(v21);
                }
              }

              v23 = **(v21 + 8);
              v24 = v23[9];
              if (strncmp(*(*v23 + 24), "unix", 4uLL))
              {
                v25 = sub_1819012D0(197120);
                goto LABEL_129;
              }

              if (a3)
              {
                v28 = *(v24 + 56);
                if (v28)
                {
                  v50 = 0;
                  if (v22)
                  {
                    v29 = v22;
                  }

                  else
                  {
                    v29 = 16777224;
                  }

                  v30 = *(v24 + 124);
                  if (*v24 == &unk_1EEF8FD48)
                  {
                    v31 = 33;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  v32 = v31 | v30;
                  v25 = sub_18188D94C(v28, &v50, v31 | v30, 0);
                  v33 = v50;
                  if (v25)
                  {
                    goto LABEL_126;
                  }

                  v34 = sqlite3_exec(v50, "BEGIN DEFERRED; PRAGMA schema_version", 0, 0, 0);
                  v25 = v34;
                  if (v34 != 14)
                  {
                    goto LABEL_63;
                  }

                  sub_181914B98(v50, 0);
                  v25 = sub_18188D94C(*(v24 + 56), &v50, v32 & 0xFFFFFFFC | 2, 0);
                  v33 = v50;
                  if (v25)
                  {
                    goto LABEL_126;
                  }

                  v34 = sqlite3_exec(v50, "BEGIN DEFERRED; PRAGMA schema_version", 0, 0, 0);
                  v25 = v34;
LABEL_63:
                  if (v25)
                  {
LABEL_125:
                    v33 = v50;
LABEL_126:
                    sub_181914B98(v33, 0);
                    goto LABEL_127;
                  }

                  flags = v29;
                  v35 = 0;
                  v36 = 0x1EE341000;
                  while (2)
                  {
                    v37 = v28;
                    v38 = a3;
                    v39 = a3;
                    if (v35)
                    {
                      v40 = *(&off_1E6A28230 + v35);
                      v37 = sqlite3_mprintf("%s%s", v28, v40);
                      v34 = sqlite3_mprintf("%s%s", a3, v40);
                      v38 = a3;
                      v39 = v34;
                    }

                    if (!v37 || !v39)
                    {
                      v25 = 7;
                      goto LABEL_101;
                    }

                    if ((*(v36 + 2808))(v37, 4) && *__error() == 2)
                    {
                      if (!v35)
                      {
                        v34 = __error();
                        v44 = *v34;
LABEL_97:
                        *(v24 + 32) = v44;
                        v25 = 10;
                        v38 = a3;
                        goto LABEL_101;
                      }

                      goto LABEL_80;
                    }

                    v34 = (*(v36 + 2808))(v39, 0);
                    if (!v34)
                    {
                      v44 = 17;
                      goto LABEL_97;
                    }

                    v34 = copyfile(v37, v39, 0, flags);
                    if (v34)
                    {
                      v34 = __error();
                      v43 = *v34;
                      if (*v34)
                      {
                        if (v43 == 12)
                        {
                          v25 = 7;
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        sqlite3_log(28, "copyfile returned unsuccessfully without setting errno, assuming target path was inaccessible");
                        v43 = 2;
                      }

                      *(v24 + 32) = v43;
                      v25 = 10;
LABEL_100:
                      v38 = a3;
LABEL_101:
                      if (off_1EA831A10)
                      {
                        v34 = off_1EA831A10(v34);
                        v38 = a3;
                      }

                      if (!v35)
                      {
LABEL_123:
                        if (off_1EA831A18)
                        {
                          off_1EA831A18(v34);
                        }

                        goto LABEL_125;
                      }

                      v45 = v35 + 1;
                      while (2)
                      {
                        if (v37)
                        {
                          v46 = &off_1ED452EB0;
                          if (!dword_1ED452E80)
                          {
                            goto LABEL_111;
                          }

                          if (xmmword_1ED456AF0)
                          {
                            xmmword_1ED452F18(xmmword_1ED456AF0);
                          }

                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v37);
                          --qword_1ED456A90;
                          v34 = off_1ED452EB0(v37);
                          v37 = xmmword_1ED456AF0;
                          v38 = a3;
                          if (xmmword_1ED456AF0)
                          {
                            v46 = &xmmword_1ED452F28;
LABEL_111:
                            v34 = (*v46)(v37);
                            v38 = a3;
                          }
                        }

                        if (v39)
                        {
                          v47 = &off_1ED452EB0;
                          if (!dword_1ED452E80)
                          {
                            goto LABEL_118;
                          }

                          if (xmmword_1ED456AF0)
                          {
                            xmmword_1ED452F18(xmmword_1ED456AF0);
                          }

                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v39);
                          --qword_1ED456A90;
                          v34 = off_1ED452EB0(v39);
                          v39 = xmmword_1ED456AF0;
                          v38 = a3;
                          if (xmmword_1ED456AF0)
                          {
                            v47 = &xmmword_1ED452F28;
LABEL_118:
                            v34 = (*v47)(v39);
                            v38 = a3;
                          }
                        }

                        v39 = v38;
                        if (v45 != 2)
                        {
                          v34 = sqlite3_mprintf("%s%s", v38, "-wal");
                          v39 = v34;
                        }

                        if (!v39)
                        {
                          goto LABEL_123;
                        }

                        v34 = off_1EE341C48(v39);
                        v38 = a3;
                        v37 = 0;
                        if (--v45 <= 1)
                        {
                          goto LABEL_123;
                        }

                        continue;
                      }
                    }

                    if (v35)
                    {
LABEL_80:
                      v41 = &off_1ED452EB0;
                      if (!dword_1ED452E80)
                      {
                        goto LABEL_85;
                      }

                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v37);
                      --qword_1ED456A90;
                      off_1ED452EB0(v37);
                      v37 = xmmword_1ED456AF0;
                      v36 = 0x1EE341000uLL;
                      if (xmmword_1ED456AF0)
                      {
                        v41 = &xmmword_1ED452F28;
LABEL_85:
                        (*v41)(v37);
                      }

                      v42 = &off_1ED452EB0;
                      if (dword_1ED452E80)
                      {
                        if (xmmword_1ED456AF0)
                        {
                          xmmword_1ED452F18(xmmword_1ED456AF0);
                        }

                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v39);
                        --qword_1ED456A90;
                        v34 = off_1ED452EB0(v39);
                        v39 = xmmword_1ED456AF0;
                        v36 = 0x1EE341000;
                        if (xmmword_1ED456AF0)
                        {
                          v42 = &xmmword_1ED452F28;
                          goto LABEL_67;
                        }
                      }

                      else
                      {
LABEL_67:
                        v34 = (*v42)(v39);
                      }
                    }

                    if (++v35 == 3)
                    {
                      v25 = 0;
                      goto LABEL_125;
                    }

                    continue;
                  }
                }

                v25 = 10;
              }

              else
              {
                v25 = sub_1819012D0(46636);
              }

LABEL_127:
              a1 = v6;
              if (*v24)
              {
                (*(*v24 + 80))(v24, 4, v6 + 92);
LABEL_129:
                a1 = v6;
              }

              if (*(v21 + 17))
              {
                v48 = *(v21 + 20) - 1;
                *(v21 + 20) = v48;
                if (!v48)
                {
                  sub_181932ECC(v21);
                  a1 = v6;
                }
              }

LABEL_43:
              *(a1 + 80) = v25;
              v26 = *(a1 + 416);
              if (v26)
              {
                if ((*(v26 + 20) & 0x9000) == 0)
                {
                  *(v26 + 20) = 1;
                  v27 = *(a1 + 24);
                  if (!v27)
                  {
                    return v25;
                  }

                  goto LABEL_47;
                }

                sub_18193CA54(*(a1 + 416));
                a1 = v6;
              }

              v27 = *(a1 + 24);
              if (!v27)
              {
                return v25;
              }

LABEL_47:
              xmmword_1ED452F28(v27);
              return v25;
            }
          }

LABEL_42:
          v25 = 1;
          goto LABEL_43;
        }
      }

      else if (byte_181A20298[*v15] != byte_181A20298[*j])
      {
        goto LABEL_21;
      }

      ++v15;
    }
  }

LABEL_5:
  v5 = "unopened";
LABEL_32:
  sqlite3_log(21, "API call with %s database connection pointer", v5);

  return sub_1819012D0(197105);
}

uint64_t _sqlite3_integrity_check(char *a1)
{
  v11 = 0;
  v2 = sub_18188D94C(a1, &v11, 6u, 0);
  pStmt = 0;
  if (!v2)
  {
    v3 = sub_1818954B4(v11, "PRAGMA integrity_check", 0xFFFFFFFFLL, 0, 0, &pStmt, 0, v1);
    if (v3 || (v3 = sqlite3_step(pStmt), v3 != 100))
    {
      v2 = v3;
    }

    else
    {
      while (2)
      {
        v4 = sqlite3_column_text(pStmt, 0);
        v5 = v4;
        do
        {
          v6 = strchr(v5, 10);
          if (!v6)
          {
            v6 = &v5[strlen(v5)];
          }

          if (!strncmp("ok", v5, v6 - v5))
          {
            v2 = 0;
            goto LABEL_19;
          }

          if (strncmp("*** ", v5, 4uLL) && (v6 - v5 < 14 || strncmp(" is never used", v6 - 14, 0xEuLL)))
          {
            v9 = v4;
            v2 = 11;
            sqlite3_log(11, "Integrity check failed: %s", v9);
            goto LABEL_19;
          }

          if (*v6)
          {
            v5 = v6 + 1;
          }

          else
          {
            v5 = v6;
          }
        }

        while (*v5);
        v2 = sqlite3_step(pStmt);
        if (v2 == 100)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    if (pStmt)
    {
      sqlite3_finalize(pStmt);
    }
  }

  if (v11)
  {
    sub_181914B98(v11, 0);
  }

  if (v2 == 26)
  {
    v7 = 11;
  }

  else
  {
    v7 = v2;
  }

  if ((v2 & 0xFFFFFFFE) == 0x64)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t _sqlite3_db_truncate(sqlite3 *a1, const char *a2)
{
  if (a2)
  {
    if (sqlite3_initialize() || (v6 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
    {
      v4 = &unk_1EA831560;
    }

    else
    {
      v4 = v6;
      if (a1)
      {
        v7 = *(a1 + 34);
      }

      else
      {
        v7 = 2147483645;
      }

      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 20) = v7;
      *(v6 + 24) = 0;
      *(v6 + 28) = 0;
    }

    sqlite3_str_appendf(v4, "VACUUM %s", a2);
    v5 = sqlite3_str_finish(v4);
    if (!v5)
    {
      return 7;
    }
  }

  else
  {
    v5 = 0;
  }

  sqlite3_exec(a1, "SELECT 1 FROM sqlite_master LIMIT 1", 0, 0, 0);
  result = sqlite3_db_config(a1, 1009, 1, 0);
  if (result)
  {
    if (!v5)
    {
      return result;
    }

    v9 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v10 = result;
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
        return v10;
      }

      v9 = &xmmword_1ED452F28;
    }

    else
    {
      v10 = result;
    }

    (*v9)(v5);
    return v10;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = "VACUUM";
  }

  v12 = sqlite3_exec(a1, v11, 0, 0, 0);
  if (v5)
  {
    v13 = &off_1ED452EB0;
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
        goto LABEL_28;
      }

      v13 = &xmmword_1ED452F28;
    }

    (*v13)(v5);
  }

LABEL_28:
  v14 = sqlite3_db_config(a1, 1009, 0, 0);
  result = v12;
  if (!v12)
  {
    result = v14;
    if (!v14)
    {
      if (a2)
      {
        v15 = a2;
      }

      else
      {
        v15 = "main";
      }

      return sqlite3_wal_checkpoint_v2(a1, v15, 0, 0, 0);
    }
  }

  return result;
}

uint64_t _sqlite3_db_copy(char *a1, sqlite3 *a2, const char *a3)
{
  result = _sqlite3_db_clone(a2, a3, a1, 0x2000000);
  if (result && result != 5)
  {
    pDest = 0;
    v7 = sub_18188D94C(a1, &pDest, 6u, 0);
    v8 = pDest;
    if (v7)
    {
      v9 = v7;
LABEL_17:
      sub_181914B98(v8, 0);
      return v9;
    }

    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = "main";
    }

    v11 = sqlite3_backup_init(pDest, "main", a2, v10);
    if (v11)
    {
      v12 = v11;
      sqlite3_backup_step(v11, -1);
      sqlite3_backup_finish(v12);
    }

    if (!pDest)
    {
      goto LABEL_15;
    }

    v13 = *(pDest + 113);
    if (v13 == 109 || v13 == 118 || v13 == 186)
    {
      if (*(pDest + 103))
      {
LABEL_15:
        v14 = 7;
LABEL_16:
        v9 = v14;
        v8 = pDest;
        goto LABEL_17;
      }

      v14 = (*(pDest + 22) & *(pDest + 20));
      if (v14 == 26)
      {
LABEL_23:
        if (!a3 || !strcasecmp("main", a3))
        {
          v14 = sqlite3_file_control(pDest, "main", 102, a2);
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sqlite3_log(21, "API call with %s database connection pointer", "invalid");
      v14 = sub_1819012D0(194582);
      if (v14 == 26)
      {
        goto LABEL_23;
      }
    }

    if (v14 != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t _sqlite3_db_copy_compact(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v11 = *(a2 + 24);
  if (v11)
  {
    xmmword_1ED452F18(v11);
  }

  v12 = "main";
  if (a3)
  {
    v12 = a3;
  }

  v13 = *(a2 + 40);
  v14 = (v13 - 1);
  if (v13 < 1)
  {
    goto LABEL_30;
  }

  v15 = (*(a2 + 32) + 32 * v14);
  while (1)
  {
    v16 = *v15;
    if (*v15)
    {
      break;
    }

LABEL_14:
    if (!v14)
    {
      v19 = "main";
      for (i = v12; ; ++i)
      {
        if (*v19 == *i)
        {
          if (!*v19)
          {
            LODWORD(v14) = 0;
            goto LABEL_25;
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
    v18 = v14 <= 0;
    LODWORD(v14) = v14 - 1;
    if (v18)
    {
      goto LABEL_30;
    }
  }

  for (j = v12; *v16 != *j; ++j)
  {
    if (byte_181A20298[*v16] != byte_181A20298[*j])
    {
      goto LABEL_14;
    }

LABEL_10:
    ++v16;
  }

  if (*v16)
  {
    goto LABEL_10;
  }

  if ((v14 & 0x80000000) != 0)
  {
LABEL_30:
    v28 = a3;
    v22 = 1;
    sub_181907EC4(a2, 1, "invalid database name %s", v28);
    goto LABEL_31;
  }

LABEL_25:
  v21 = sub_1818A8BAC(a2, "VACUUM %w INTO '%q'", a3, a4, a5, a6, a7, a8, v12);
  v22 = sqlite3_exec(a2, v21, 0, 0, 0);
  if (v21)
  {
    sub_181929C84(a2, v21);
  }

  if (v22)
  {
LABEL_31:
    v24 = 0;
    v23 = 0;
    v25 = *(a2 + 24);
    if (!v25)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v23 = *(a2 + 76) & 0xFFFFFFFC | 2;
  v24 = *(**(*(*(a2 + 32) + 32 * v14 + 8) + 8) + 9) == 5;
  v25 = *(a2 + 24);
  if (v25)
  {
LABEL_32:
    xmmword_1ED452F28(v25);
  }

LABEL_33:
  if (v24)
  {
    v22 = sub_18188D94C(a1, &v29, v23, 0);
    v26 = v29;
    if (!v22)
    {
      v22 = sqlite3_exec(v29, "PRAGMA journal_mode=wal", 0, 0, 0);
      sqlite3_exec(v29, "PRAGMA user_version", 0, 0, 0);
      v26 = v29;
    }
  }

  else
  {
    v26 = 0;
  }

  sub_181914B98(v26, 0);
  return v22;
}

uint64_t _sqlite3_maintain_load_factor(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v34 = 0;
  v4 = *(a1 + 140);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v4;
  sub_181906814(&v30, "PRAGMA ", 7u);
  if (a2)
  {
    sqlite3_str_appendf(&v30, "%Q.", a2);
  }

  v10 = v34;
  if (v34 + 11 >= v32)
  {
    sub_181906814(&v30, "auto_vacuum", 0xBu);
    v12 = v31;
    if (!v31)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LODWORD(v34) = v34 + 11;
    v11 = &v31[v10];
    *v11 = *"auto_vacuum";
    *(v11 + 7) = 1836414307;
    v12 = v31;
    if (!v31)
    {
      goto LABEL_10;
    }
  }

  v12[v34] = 0;
  if (v33 && (v34 & 0x40000000000) == 0)
  {
    v13 = sub_18192A12C(&v30);
    goto LABEL_11;
  }

LABEL_10:
  v13 = v31;
LABEL_11:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 0x40000000;
  v29[2] = sub_18191C018;
  v29[3] = &unk_1E6A26830;
  v29[4] = &v35;
  v14 = sqlite3_exec_b(a1, v13, v29, v5, v6, v7, v8, v9);
  if (!v13)
  {
    goto LABEL_18;
  }

  v15 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_17;
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
    v15 = &xmmword_1ED452F28;
LABEL_17:
    (*v15)(v13);
  }

LABEL_18:
  if (v14)
  {
    goto LABEL_54;
  }

  if (*(v36 + 6) != 1)
  {
    v18 = *(a1 + 140);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v18;
    LODWORD(v34) = 0;
    WORD2(v34) = 0;
    sub_181906814(&v30, "PRAGMA ", 7u);
    if (a2)
    {
      sqlite3_str_appendf(&v30, "%Q.", a2);
    }

    v19 = v34;
    if (v34 + 13 >= v32)
    {
      sub_181906814(&v30, "auto_vacuum=1", 0xDu);
      v20 = v31;
      if (!v31)
      {
        goto LABEL_33;
      }
    }

    else
    {
      LODWORD(v34) = v34 + 13;
      qmemcpy(&v31[v19], "auto_vacuum=1", 13);
      v20 = v31;
      if (!v31)
      {
        goto LABEL_33;
      }
    }

    v20[v34] = 0;
    if (v33 && (v34 & 0x40000000000) == 0)
    {
      v21 = sub_18192A12C(&v30);
      goto LABEL_34;
    }

LABEL_33:
    v21 = v31;
LABEL_34:
    v14 = sqlite3_exec(a1, v21, 0, 0, 0);
    if (v21)
    {
      v22 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_40:
        (*v22)(v21);
        goto LABEL_41;
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
        goto LABEL_40;
      }
    }

LABEL_41:
    if (v14)
    {
      goto LABEL_54;
    }

    if (!*(v36 + 6))
    {
      if (a2)
      {
        v23 = *(a1 + 140);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = v23;
        LODWORD(v34) = 0;
        WORD2(v34) = 0;
        sqlite3_str_appendall(&v30, "VACUUM");
        sqlite3_str_appendf(&v30, " %Q", a2);
        v24 = sub_181891AB4(&v30);
        v14 = sqlite3_exec(a1, v24, 0, 0, 0);
        sqlite3_free(v24);
      }

      else
      {
        v14 = sqlite3_exec(a1, "VACUUM", 0, 0, 0);
      }

      if (v14)
      {
        goto LABEL_54;
      }
    }
  }

  v16 = *(a1 + 113);
  if (v16 == 186)
  {
    goto LABEL_23;
  }

  if (v16 != 118)
  {
    if (v16 != 109)
    {
      v17 = "invalid";
      goto LABEL_53;
    }

LABEL_23:
    v17 = "unopened";
LABEL_53:
    sqlite3_log(21, "API call with %s database connection pointer", v17);
    v14 = sub_1819012D0(194243);
    goto LABEL_54;
  }

  v25 = *(a1 + 24);
  if (v25)
  {
    xmmword_1ED452F18(v25);
  }

  v26 = *(a1 + 328);
  if (v26)
  {
    v26(*(a1 + 320));
  }

  *(a1 + 328) = 0;
  *(a1 + 336) = sub_18191C054;
  *(a1 + 320) = 0;
  v27 = *(a1 + 24);
  if (v27)
  {
    xmmword_1ED452F28(v27);
  }

  v14 = 0;
LABEL_54:
  _Block_object_dispose(&v35, 8);
  return v14;
}

uint64_t sub_18191C054(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (!a4)
  {
    return 0;
  }

  v5 = (a3 - a4) / a3;
  if (!((a5 * a4) >> 21) && v5 > 0.85)
  {
    return 0;
  }

  if (v5 <= 0.4)
  {
    return a4 - (a3 - a4);
  }

  return (a4 * 0.2);
}

int sqlite3_snapshot_get(sqlite3 *db, const char *zSchema, sqlite3_snapshot **ppSnapshot)
{
  if (ppSnapshot)
  {
    *ppSnapshot = 0;
  }

  if (db)
  {
    v3 = *(db + 113);
    switch(v3)
    {
      case 186:
        goto LABEL_7;
      case 118:
        if (*(db + 3))
        {
          v5 = db;
          v6 = ppSnapshot;
          v7 = zSchema;
          xmmword_1ED452F18(*(db + 3));
          zSchema = v7;
          ppSnapshot = v6;
          db = v5;
        }

        if (*(db + 101))
        {
          goto LABEL_57;
        }

        if (zSchema)
        {
          v8 = *(db + 10);
          v9 = (v8 - 1);
          if (v8 < 1)
          {
LABEL_36:
            v14 = v9;
          }

          else
          {
            v10 = *(db + 4);
            v11 = (v10 + 32 * v9);
            do
            {
              v12 = *v11;
              if (*v11)
              {
                for (i = zSchema; ; ++i)
                {
                  if (*v12 == *i)
                  {
                    if (!*v12)
                    {
                      goto LABEL_36;
                    }
                  }

                  else if (byte_181A20298[*v12] != byte_181A20298[*i])
                  {
                    break;
                  }

                  ++v12;
                }
              }

              if (!v9)
              {
                v16 = "main";
                for (j = zSchema; ; ++j)
                {
                  if (*v16 == *j)
                  {
                    if (!*v16)
                    {
                      v18 = 0;
LABEL_41:
                      v20 = *(v10 + 32 * v18 + 8);
                      if (v20 && *(v20 + 16) == 2)
                      {
                        goto LABEL_57;
                      }

                      v21 = **(v20 + 8);
                      v22 = *(v21 + 344);
                      if (v22)
                      {
                        *(v22 + 152) = 1;
                      }

                      if (*(v20 + 17) || !*(v20 + 16))
                      {
                        v23 = db;
                        v24 = ppSnapshot;
                        v25 = sub_181932F08(v20, 0, 0);
                        ppSnapshot = v24;
                        v26 = v25;
                        db = v23;
                        v22 = *(v21 + 344);
                      }

                      else
                      {
                        v26 = 0;
                      }

                      if (v22)
                      {
                        *(v22 + 144) = 0;
                        *(v22 + 152) = 0;
                      }

                      if (!v26)
                      {
                        v27 = *(**(v20 + 8) + 344);
                        if (v27)
                        {
                          v28 = (*(v27 + 96) | *(v27 + 104));
                          if (*(v27 + 96) == 0)
                          {
                            v26 = 1;
                            goto LABEL_64;
                          }

                          v29 = ppSnapshot;
                          v30 = db;
                          if (sqlite3_initialize() || (v32 = sub_181902484(48, 0x1000040EED21634)) == 0)
                          {
                            v26 = 7;
                            v31 = *(v30 + 3);
                            if (!v31)
                            {
                              return v26;
                            }
                          }

                          else
                          {
                            v28 = v32;
                            v26 = 0;
                            v33 = *(v27 + 72);
                            v34 = *(v27 + 104);
                            *&v32->hidden[16] = *(v27 + 88);
                            *&v32->hidden[32] = v34;
                            *v32->hidden = v33;
                            db = v30;
                            ppSnapshot = v29;
LABEL_64:
                            *ppSnapshot = v28;
                            v31 = *(db + 3);
                            if (!v31)
                            {
                              return v26;
                            }
                          }

LABEL_59:
                          xmmword_1ED452F28(v31);
                          return v26;
                        }

LABEL_57:
                        v26 = 1;
                      }

                      v31 = *(db + 3);
                      if (!v31)
                      {
                        return v26;
                      }

                      goto LABEL_59;
                    }
                  }

                  else if (byte_181A20298[*v16] != byte_181A20298[*j])
                  {
                    break;
                  }

                  ++v16;
                }
              }

              v11 -= 4;
              v14 = -1;
              v15 = v9 <= 0;
              LODWORD(v9) = v9 - 1;
            }

            while (!v15);
          }
        }

        else
        {
          v14 = -1;
        }

        if (!v14 || v14 >= 2)
        {
          v10 = *(db + 4);
          v18 = v14;
          goto LABEL_41;
        }

        goto LABEL_57;
      case 109:
LABEL_7:
        v4 = "unopened";
        break;
      default:
        v4 = "invalid";
        break;
    }
  }

  else
  {
    v4 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v4);

  return sub_1819012D0(197425);
}

int sqlite3_snapshot_open(sqlite3 *db, const char *zSchema, sqlite3_snapshot *pSnapshot)
{
  if (!db)
  {
    v4 = "NULL";
    goto LABEL_31;
  }

  v3 = *(db + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_31:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(197465);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_31;
    }

    goto LABEL_5;
  }

  if (*(db + 3))
  {
    v5 = db;
    v6 = pSnapshot;
    v7 = zSchema;
    xmmword_1ED452F18(*(db + 3));
    zSchema = v7;
    pSnapshot = v6;
    db = v5;
  }

  if (*(db + 101))
  {
    goto LABEL_52;
  }

  if (zSchema)
  {
    v8 = *(db + 10);
    v9 = (v8 - 1);
    if (v8 < 1)
    {
LABEL_34:
      v14 = v9;
    }

    else
    {
      v10 = *(db + 4);
      v11 = (v10 + 32 * v9);
      do
      {
        v12 = *v11;
        if (*v11)
        {
          for (i = zSchema; ; ++i)
          {
            if (*v12 == *i)
            {
              if (!*v12)
              {
                goto LABEL_34;
              }
            }

            else if (byte_181A20298[*v12] != byte_181A20298[*i])
            {
              break;
            }

            ++v12;
          }
        }

        if (!v9)
        {
          v16 = "main";
          for (j = zSchema; ; ++j)
          {
            if (*v16 == *j)
            {
              if (!*v16)
              {
                v18 = 0;
                goto LABEL_39;
              }
            }

            else if (byte_181A20298[*v16] != byte_181A20298[*j])
            {
              break;
            }

            ++v16;
          }
        }

        v11 -= 4;
        v14 = -1;
        v15 = v9 <= 0;
        LODWORD(v9) = v9 - 1;
      }

      while (!v15);
    }
  }

  else
  {
    v14 = -1;
  }

  if (v14 && v14 < 2)
  {
    goto LABEL_52;
  }

  v10 = *(db + 4);
  v18 = v14;
LABEL_39:
  v20 = *(v10 + 32 * v18 + 8);
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21 == 2)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v21 = MEMORY[0x10];
  }

  v22 = **(v20 + 8);
  if (v21)
  {
    if (!*(db + 52))
    {
      v23 = db;
      v24 = pSnapshot;
      v25 = sub_18191C6EC(v22, pSnapshot);
      db = v23;
      if (v25)
      {
        goto LABEL_53;
      }

      v26 = sub_18191C7A4(v20);
      v27 = *(v22 + 344);
      if (v26)
      {
        v25 = v26;
        db = v23;
        goto LABEL_63;
      }

      v28 = (v22 + 344);
      db = v23;
      pSnapshot = v24;
      if (!v24)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_52:
    v25 = 1;
    goto LABEL_53;
  }

  v27 = *(v22 + 344);
  if (!v27)
  {
    goto LABEL_52;
  }

  v28 = (v22 + 344);
  if (!pSnapshot)
  {
LABEL_51:
    v29 = 0;
    *(v27 + 144) = pSnapshot;
    goto LABEL_57;
  }

LABEL_50:
  if (*pSnapshot->hidden)
  {
    goto LABEL_51;
  }

  v29 = 1;
LABEL_57:
  *(v27 + 152) = v29;
  if (*(v20 + 17) || !*(v20 + 16))
  {
    v31 = db;
    v25 = sub_181932F08(v20, 0, 0);
    db = v31;
    v27 = *v28;
    if (!*v28)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v25 = 0;
  }

  *(v27 + 144) = 0;
  *(v27 + 152) = 0;
  if (v21)
  {
LABEL_63:
    if (!*(v27 + 63))
    {
      v32 = db;
      (*(**(v27 + 8) + 112))(*(v27 + 8), 1, 1, 5);
      db = v32;
    }
  }

LABEL_53:
  v30 = *(db + 3);
  if (v30)
  {
    xmmword_1ED452F28(v30);
  }

  return v25;
}

uint64_t sub_18191C6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 344);
  if (!v2)
  {
    return 1;
  }

  if (*(v2 + 63) || (v4 = a2, result = (*(**(v2 + 8) + 112))(*(v2 + 8), 1, 1, 6), a2 = v4, !result))
  {
    if (*(a2 + 32) == *(v2 + 104) && *(a2 + 16) >= *(**(v2 + 48) + 128))
    {
      return 0;
    }

    else
    {
      if (!*(v2 + 63))
      {
        (*(**(v2 + 8) + 112))(*(v2 + 8), 1, 1, 5);
      }

      return 769;
    }
  }

  return result;
}

uint64_t sub_18191C7A4(uint64_t a1)
{
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  result = sub_1818CC964(a1, 0);
  if (!result)
  {
    result = sub_1818CCD6C(a1, 0);
  }

  if (*(a1 + 17))
  {
    v3 = *(a1 + 20) - 1;
    *(a1 + 20) = v3;
    if (!v3)
    {
      v4 = result;
      sub_181932ECC(a1);
      return v4;
    }
  }

  return result;
}

int sqlite3_snapshot_recover(sqlite3 *db, const char *zDb)
{
  if (!db)
  {
    v3 = "NULL";
    goto LABEL_30;
  }

  v2 = *(db + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_30:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(197518);
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

  if (*(db + 3))
  {
    v4 = db;
    v5 = zDb;
    xmmword_1ED452F18(*(db + 3));
    zDb = v5;
    db = v4;
  }

  if (!zDb)
  {
    v17 = -1;
    goto LABEL_37;
  }

  v6 = *(db + 10);
  v7 = (v6 - 1);
  if (v6 < 1)
  {
    v17 = v6 - 1;
LABEL_37:
    if (v17 < 2)
    {
      goto LABEL_41;
    }

LABEL_38:
    v8 = *(db + 4);
    v15 = v17;
    goto LABEL_39;
  }

  v8 = *(db + 4);
  v9 = (v8 + 32 * v7);
  while (1)
  {
    v10 = *v9;
    if (*v9)
    {
      for (i = zDb; ; ++i)
      {
        if (*v10 == *i)
        {
          if (!*v10)
          {
            v17 = v7;
            goto LABEL_34;
          }
        }

        else if (byte_181A20298[*v10] != byte_181A20298[*i])
        {
          break;
        }

        ++v10;
      }
    }

    if (!v7)
    {
      break;
    }

LABEL_20:
    v9 -= 4;
    v17 = -1;
    v12 = v7 <= 0;
    LODWORD(v7) = v7 - 1;
    if (v12)
    {
LABEL_34:
      if (!v17)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  v13 = "main";
  for (j = zDb; *v13 != *j; ++j)
  {
    if (byte_181A20298[*v13] != byte_181A20298[*j])
    {
      goto LABEL_20;
    }

LABEL_25:
    ++v13;
  }

  if (*v13)
  {
    goto LABEL_25;
  }

  v15 = 0;
LABEL_39:
  v18 = *(v8 + 32 * v15 + 8);
  if (v18 && *(v18 + 16))
  {
LABEL_41:
    v19 = 1;
    goto LABEL_116;
  }

  if (!*(v18 + 17) && *(v18 + 16) || (v20 = db, v19 = sub_181932F08(v18, 0, 0), db = v20, !v19))
  {
    v21 = *(**(v18 + 8) + 344);
    if (v21)
    {
      if (*(v21 + 63) || (v37 = db, v19 = (*(**(v21 + 8) + 112))(*(v21 + 8), 1, 1, 10), db = v37, !v19))
      {
        v50 = db;
        v22 = *(v21 + 56);
        v23 = sqlite3_initialize();
        if (v22 >= 1 && v23 == 0)
        {
          v25 = sub_181902484(v22, 4093342046);
        }

        else
        {
          v25 = 0;
        }

        v26 = *(v21 + 56);
        v27 = sqlite3_initialize();
        if (v26 < 1 || v27 != 0)
        {
          v19 = 7;
          if (v25)
          {
            v29 = 0;
            v30 = 1;
            goto LABEL_90;
          }

LABEL_104:
          db = v50;
          goto LABEL_105;
        }

        v31 = sub_181902484(v26, 3679203994);
        v29 = v31;
        v30 = v31 == 0;
        if (v25 && v31)
        {
          *(v21 + 65) = 1;
          v32 = *(v21 + 56);
          v53 = 0;
          v19 = (*(**(v21 + 8) + 48))(*(v21 + 8), &v53);
          if (!v19)
          {
            v33 = **(v21 + 48);
            v34 = *(v33 + 128);
            v49 = v33;
            if (v34 > *(v33 + 96))
            {
              v35 = v34 - 1;
              v36 = v34 + 4096;
              while (1)
              {
                v51 = 0;
                v52 = 0;
                v38 = (v36 + 0xFFFFFFFF021) >> 12;
                if (*(v21 + 40) > v38 && (v39 = *(*(v21 + 48) + 8 * v38), (v51 = v39) != 0))
                {
                  v19 = 0;
                }

                else
                {
                  v40 = sub_1819346F0(v21, (v36 + 0xFFFFFFFF021) >> 12, &v51);
                  v19 = v40;
                  v39 = v51;
                  if (!v51)
                  {
                    if (v40 <= 1)
                    {
                      v19 = 1;
                    }

                    else
                    {
                      v19 = v40;
                    }

                    break;
                  }
                }

                if (v38)
                {
                  v41 = (v38 << 12) - 34;
                }

                else
                {
                  v41 = 0;
                  v39 += 136;
                  v51 = v39;
                }

                LODWORD(v52) = v41;
                if (v19)
                {
                  break;
                }

                v42 = (*(v39 + 4 * (v35 - v41)) - 1) * v32;
                if ((v42 + v32) <= v53)
                {
                  v43 = (*(**(v21 + 16) + 16))(*(v21 + 16), v25, v32, v35 * (v32 + 24) + 56);
                  if (v43 || (v43 = (*(**(v21 + 8) + 16))(*(v21 + 8), v29, v32, v42)) != 0)
                  {
                    v19 = v43;
                    break;
                  }

                  if (!memcmp(v25, v29, v32))
                  {
LABEL_82:
                    v19 = 0;
                    break;
                  }
                }

                *(v49 + 128) = v35;
                --v36;
                v12 = v35-- > *(v49 + 96);
                if (!v12)
                {
                  goto LABEL_82;
                }
              }
            }
          }

          v30 = 0;
          *(v21 + 65) = 0;
LABEL_90:
          v44 = &off_1ED452EB0;
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
            if (xmmword_1ED456AF0)
            {
              v44 = &xmmword_1ED452F28;
              goto LABEL_95;
            }
          }

          else
          {
LABEL_95:
            (*v44)(v25);
          }

          db = v50;
        }

        else
        {
          v19 = 7;
          db = v50;
          if (v25)
          {
            goto LABEL_90;
          }
        }

        if (!v30)
        {
          v45 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v29);
            --qword_1ED456A90;
            off_1ED452EB0(v29);
            v29 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_104;
            }

            v45 = &xmmword_1ED452F28;
          }

          (*v45)(v29);
          goto LABEL_104;
        }

LABEL_105:
        if (!*(v21 + 63))
        {
          (*(**(v21 + 8) + 112))(*(v21 + 8), 1, 1, 9);
          db = v50;
        }
      }
    }

    else
    {
      v19 = 1;
    }

    v46 = db;
    if (*(v18 + 17))
    {
      ++*(v18 + 20);
      if (!*(v18 + 18))
      {
        sub_181932DEC(v18);
      }
    }

    if (!sub_1818CC964(v18, 0))
    {
      sub_1818CCD6C(v18, 0);
    }

    if (*(v18 + 17))
    {
      v47 = *(v18 + 20) - 1;
      *(v18 + 20) = v47;
      if (!v47)
      {
        sub_181932ECC(v18);
      }
    }

    db = v46;
  }

LABEL_116:
  v48 = *(db + 3);
  if (v48)
  {
    xmmword_1ED452F28(v48);
  }

  return v19;
}

void sqlite3_snapshot_free(sqlite3_snapshot *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    v2 = a1;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    a1 = v2;
  }

  v3 = a1;
  qword_1ED456A48 -= xmmword_1ED452EC0(a1);
  --qword_1ED456A90;
  off_1ED452EB0(v3);
  if (xmmword_1ED456AF0)
  {
    v1 = &xmmword_1ED452F28;
LABEL_7:
    v4 = *v1;

    v4();
  }
}

int sqlite3_compileoption_used(const char *zOptName)
{
  if (zOptName)
  {
    v1 = zOptName;
    v2 = *zOptName;
    if (!*zOptName)
    {
      v12 = 0;
      v10 = "SQLITE_";
      goto LABEL_32;
    }

    if ((v2 & 0xFFFFFFDF) == 0x53)
    {
      v3 = *(zOptName + 1);
      if (!zOptName[1])
      {
        v12 = 0;
        v10 = "QLITE_";
        goto LABEL_32;
      }

      if ((v3 & 0xFFFFFFDF) == 0x51)
      {
        v4 = *(zOptName + 2);
        if (!zOptName[2])
        {
          v12 = 0;
          v10 = "LITE_";
          goto LABEL_32;
        }

        if ((v4 & 0xFFFFFFDF) == 0x4C)
        {
          v5 = *(zOptName + 3);
          if (!zOptName[3])
          {
            v12 = 0;
            v10 = "ITE_";
            goto LABEL_32;
          }

          if ((v5 & 0xFFFFFFDF) == 0x49)
          {
            v6 = *(zOptName + 4);
            if (!zOptName[4])
            {
              v12 = 0;
              v10 = "TE_";
              goto LABEL_32;
            }

            if ((v6 & 0xFFFFFFDF) == 0x54)
            {
              v7 = *(zOptName + 5);
              if (!zOptName[5])
              {
                v12 = 0;
                v10 = "E_";
                goto LABEL_32;
              }

              if ((v7 & 0xFFFFFFDF) == 0x45)
              {
                v8 = *(zOptName + 6);
                if (!zOptName[6])
                {
                  v12 = 0;
                  v10 = "_";
LABEL_32:
                  if (v12 != byte_181A20298[*v10])
                  {
LABEL_34:
                    v13 = strlen(v1);
                    v14 = 0;
                    v15 = v13 & 0x3FFFFFFF;
                    v16 = v13 & 0x3FFFFFFF;
                    while (1)
                    {
                      v17 = off_1E6A28248[v14];
                      if (v17)
                      {
                        if (!v15)
                        {
                          goto LABEL_35;
                        }

                        v18 = v15 + 1;
                        v19 = off_1E6A28248[v14];
                        v20 = v1;
                        while (1)
                        {
                          v21 = *v20;
                          if (!*v20)
                          {
                            break;
                          }

                          LODWORD(v21) = byte_181A20298[v21];
                          v22 = byte_181A20298[*v19];
                          if (v21 != v22)
                          {
                            goto LABEL_45;
                          }

                          ++v20;
                          ++v19;
                          if (--v18 <= 1)
                          {
                            goto LABEL_35;
                          }
                        }

                        v22 = byte_181A20298[*v19];
LABEL_45:
                        if (v21 == v22)
                        {
LABEL_35:
                          if ((byte_181A204C8[v17[v16]] & 0x46) == 0)
                          {
                            return 1;
                          }
                        }
                      }

                      if (++v14 == 72)
                      {
                        return 0;
                      }
                    }
                  }

LABEL_33:
                  v1 = zOptName + 7;
                  goto LABEL_34;
                }

                if (v8 == 95)
                {
                  goto LABEL_33;
                }

                v9 = &byte_181A20298[v8];
                v10 = "_";
              }

              else
              {
                v9 = &byte_181A20298[v7];
                v10 = "E_";
              }
            }

            else
            {
              v9 = &byte_181A20298[v6];
              v10 = "TE_";
            }
          }

          else
          {
            v9 = &byte_181A20298[v5];
            v10 = "ITE_";
          }
        }

        else
        {
          v9 = &byte_181A20298[v4];
          v10 = "LITE_";
        }
      }

      else
      {
        v9 = &byte_181A20298[v3];
        v10 = "QLITE_";
      }
    }

    else
    {
      v9 = &byte_181A20298[v2];
      v10 = "SQLITE_";
    }

    v12 = *v9;
    goto LABEL_32;
  }

  sub_1819012D0(197562);
  return 0;
}

const char *__cdecl sqlite3_compileoption_get(int N)
{
  if (N > 0x47)
  {
    return 0;
  }

  else
  {
    return off_1E6A28248[N];
  }
}

int sqlite3_rtree_geometry_callback(sqlite3 *db, const char *zGeom, int (__cdecl *xGeom)(sqlite3_rtree_geometry *, int, sqlite3_rtree_dbl *, int *), void *pContext)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v9 = sub_181902484(32, 0x8004018A671A6);
  if (!v9)
  {
    return 7;
  }

  *v9 = xGeom;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = pContext;
  return sub_181915678(db, zGeom, 0xFFFFFFFFLL, 5, v9, sub_18191D2B8, 0, 0, 0, 0, sub_18191D4D8);
}

void sub_18191D2B8(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = 0;
    if (!sqlite3_initialize())
    {
      goto LABEL_5;
    }

LABEL_20:

    sqlite3_result_error_nomem(a1);
    return;
  }

  v6 = *(*(a1 + 1) + 8);
  if (sqlite3_initialize())
  {
    goto LABEL_20;
  }

LABEL_5:
  v7 = sub_181902484(16 * a2 + 56, 0x108004050D49FC9);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  *v7 = 16 * a2 + 56;
  v9 = *v6;
  *(v7 + 24) = v6[1];
  *(v7 + 8) = v9;
  *(v7 + 48) = v7 + 8 * a2 + 56;
  *(v7 + 40) = a2;
  if (a2 < 1)
  {
    goto LABEL_25;
  }

  v10 = 0;
  v11 = 0;
  v12 = 8 * a2;
  do
  {
    *(*(v8 + 48) + v10) = sqlite3_value_dup(*(a3 + v10));
    if (!*(*(v8 + 48) + v10))
    {
      v11 = 1;
    }

    v14 = *(a3 + v10);
    if (!v14)
    {
      sub_1819012D0(92272);
LABEL_17:
      v13 = 0.0;
      goto LABEL_9;
    }

    v15 = *(v14 + 20);
    if ((v15 & 8) != 0)
    {
      v13 = *v14;
      goto LABEL_9;
    }

    if ((v15 & 0x24) != 0)
    {
      v13 = *v14;
      goto LABEL_9;
    }

    if ((v15 & 0x12) == 0)
    {
      goto LABEL_17;
    }

    v13 = sub_18193CF90(v14);
LABEL_9:
    *(v8 + v10 + 56) = v13;
    v10 += 8;
  }

  while (v12 != v10);
  if (v11)
  {
    sqlite3_result_error_nomem(a1);
    goto LABEL_30;
  }

LABEL_25:
  if (a1)
  {
    v16 = *a1;
    if ((*(v16 + 20) & 0x9000) != 0 || *(v16 + 32))
    {
      sub_18193CA00(v16);
    }

    *(v16 + 20) = 1;
    sub_18193CA00(v16);
    *v16 = "RtreeMatchArg";
    *(v16 + 8) = v8;
    *(v16 + 20) = 6657;
    *(v16 + 23) = 112;
    *(v16 + 56) = 0;
    *(v16 + 48) = sub_181A10988;
  }

  else
  {
LABEL_30:

    sub_181A10988(v8);
  }
}

uint64_t sub_18191D4D8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(*(a1 + 24));
  }

  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_8;
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
    v3 = &xmmword_1ED452F28;
LABEL_8:
    v5 = *v3;

    return v5(v1);
  }

  return result;
}

int sqlite3_rtree_query_callback(sqlite3 *db, const char *zQueryFunc, int (__cdecl *xQueryFunc)(sqlite3_rtree_query_info *), void *pContext, void (__cdecl *xDestructor)(void *))
{
  if (sqlite3_initialize() || (v11 = sub_181902484(32, 0x8004018A671A6)) == 0)
  {
    if (xDestructor)
    {
      (xDestructor)(pContext);
    }

    return 7;
  }

  else
  {
    *v11 = 0;
    v11[1] = xQueryFunc;
    v11[2] = xDestructor;
    v11[3] = pContext;
    return sub_181915678(db, zQueryFunc, 0xFFFFFFFFLL, 5, v11, sub_18191D2B8, 0, 0, 0, 0, sub_18191D4D8);
  }
}

uint64_t sqlite3_intarray_create(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (sqlite3_initialize())
  {
    *a3 = 0;
    return 7;
  }

  v7 = sub_181902484(24, 0x1090040D449AA06);
  *a3 = v7;
  if (!v7)
  {
    return 7;
  }

  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  if (!a1)
  {
    v9 = "NULL";
    goto LABEL_21;
  }

  v8 = a1[113];
  if (v8 == 186)
  {
LABEL_10:
    v9 = "unopened";
LABEL_21:
    sqlite3_log(21, "API call with %s database connection pointer", v9);
    goto LABEL_22;
  }

  if (v8 != 118)
  {
    if (v8 != 109)
    {
      v9 = "invalid";
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (a2)
  {
    result = sub_181894BA4(a1, a2, &unk_1EE341830, v7, sub_18191D85C);
    if (result)
    {
      return result;
    }

    v10 = sqlite3_mprintf("CREATE VIRTUAL TABLE temp.%Q USING %Q", a2, a2);
    result = sqlite3_exec(a1, v10, 0, 0, 0);
    if (!v10)
    {
      return result;
    }

    v11 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v12 = result;
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
        return v12;
      }

      v11 = &xmmword_1ED452F28;
    }

    else
    {
      v12 = result;
    }

    (*v11)(v10);
    return v12;
  }

LABEL_22:

  return sub_1819012D0(166489);
}

uint64_t sub_18191D85C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(*(a1 + 8));
  }

  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_8;
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
    v3 = &xmmword_1ED452F28;
LABEL_8:
    v5 = *v3;

    return v5(v1);
  }

  return result;
}

uint64_t sqlite3_intarray_bind(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v8(*(a1 + 8));
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 0;
}

uint64_t sqlite3session_diff(uint64_t a1, const char *a2, char *__s, char **a4)
{
  v8 = *(a1 + 36);
  v108[0] = 0;
  v108[1] = 0;
  *(a1 + 96) = v108;
  *(a1 + 104) = sub_181A10DC4;
  *(a1 + 112) = sub_181A10E04;
  *(a1 + 120) = sub_181A10E40;
  *(a1 + 128) = sub_181A10EC0;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (!*a1)
  {
    v12 = "NULL";
    goto LABEL_10;
  }

  v11 = *(v9 + 113);
  if (v11 == 186)
  {
LABEL_5:
    v12 = "unopened";
LABEL_10:
    sqlite3_log(21, "API call with %s database connection pointer", v12);
    sub_1819012D0(192543);
    goto LABEL_11;
  }

  if (v11 != 118)
  {
    if (v11 != 109)
    {
      v12 = "invalid";
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v13 = *(v9 + 24);
  if (v13)
  {
    xmmword_1ED452F18(v13);
  }

LABEL_11:
  if (a4)
  {
    *a4 = 0;
  }

  if (v8)
  {
    goto LABEL_39;
  }

  v101 = v10;
  v103 = a2;
  v14 = *a1;
  v15 = *(a1 + 28);
  *(a1 + 28) = v15 + 1;
  if (__s)
  {
    v16 = (strlen(__s) & 0x3FFFFFFF) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (__s)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16 + 1;
  v19 = a1 + 88;
  while (1)
  {
    v19 = *v19;
    if (!v19)
    {
      break;
    }

    v22 = *(v19 + 8);
    if (v22)
    {
      v21 = 1;
    }

    else
    {
      v21 = v17;
    }

    if (v22)
    {
      v23 = __s == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = v18;
      v25 = __s;
      while (1)
      {
        v26 = *v22;
        if (!*v22)
        {
          break;
        }

        LODWORD(v26) = byte_181A20298[v26];
        v20 = byte_181A20298[*v25];
        if (v26 != v20)
        {
          goto LABEL_22;
        }

        ++v22;
        ++v25;
        if (--v24 <= 1)
        {
          goto LABEL_36;
        }
      }

      v20 = byte_181A20298[*v25];
LABEL_22:
      v21 = v26 - v20;
    }

    if (!v21)
    {
LABEL_36:
      v27 = v14;
      goto LABEL_37;
    }
  }

  if (v15 == -1 || (v53 = *(a1 + 48)) != 0 && !v53(*(a1 + 40), __s))
  {
LABEL_95:
    v8 = 0;
    goto LABEL_96;
  }

  v8 = sqlite3session_attach(a1, __s);
  if (v8)
  {
LABEL_96:
    --*(a1 + 28);
    goto LABEL_39;
  }

  v54 = *(a1 + 88);
  do
  {
    if (!v54)
    {
      goto LABEL_95;
    }

    v19 = v54;
    v54 = *v54;
  }

  while (v54);
  v27 = *a1;
  v15 = *(a1 + 28) - 1;
LABEL_37:
  *(a1 + 28) = v15;
  if (sub_18191E5A4(a1, v19, v27, *(a1 + 8)))
  {
    v8 = *(a1 + 36);
    goto LABEL_39;
  }

  v107 = 0;
  v106 = 0;
  v109 = 0;
  v105 = 0;
  v33 = sqlite3_mprintf("SELECT * FROM %Q.sqlite_schema", a2);
  if (!v33)
  {
    v8 = 7;
    goto LABEL_39;
  }

  v35 = v33;
  pStmt = 0;
  v36 = sub_1818954B4(v14, v33, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v34);
  v37 = v36;
  v8 = v36;
  if (v36 == 1)
  {
    v8 = 0;
    v107 = -1;
  }

  sqlite3_finalize(pStmt);
  v38 = &off_1ED452EB0;
  v39 = &unk_1ED456000;
  if (!dword_1ED452E80)
  {
    goto LABEL_58;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
  --qword_1ED456A90;
  off_1ED452EB0(v35);
  v39 = &unk_1ED456000;
  v35 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v38 = &xmmword_1ED452F28;
LABEL_58:
    (*v38)(v35);
  }

  if (!v8 && v37 != 1)
  {
    v40 = &v106;
    if (!*(a1 + 32))
    {
      v40 = 0;
    }

    v8 = sub_18191E83C(0, v14, a2, __s, &v107, 0, 0, &v105, 0, 0, &v109, v40);
  }

  if (v8)
  {
    goto LABEL_65;
  }

  v55 = *(v19 + 16);
  if (v55 == v107)
  {
    if (v55 < 1)
    {
      v8 = 0;
LABEL_65:
      v41 = 0;
      v42 = 1;
      goto LABEL_66;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    while (1)
    {
      if (*(*(v19 + 56) + v56) != *(v109 + v56))
      {
        v57 = 1;
      }

      v59 = *(v105 + 8 * v56);
      v60 = *(*(v19 + 32) + 8 * v56);
      if (v59)
      {
        break;
      }

      if (v60)
      {
        goto LABEL_101;
      }

LABEL_102:
      if (*(v109 + v56))
      {
        v58 = 1;
      }

      if (++v56 == v55)
      {
        v8 = 0;
        v42 = v57 == 0;
        v41 = v58 != 0;
        goto LABEL_66;
      }
    }

    if (v60)
    {
      while (1)
      {
        if (*v59 == *v60)
        {
          if (!*v59)
          {
            goto LABEL_102;
          }
        }

        else if (byte_181A20298[*v59] != byte_181A20298[*v60])
        {
          break;
        }

        ++v59;
        ++v60;
      }
    }

LABEL_101:
    v57 = 1;
    goto LABEL_102;
  }

  v41 = 0;
  v42 = v107 < 1;
  if (v107 <= 0)
  {
    v8 = 17;
  }

  else
  {
    v8 = 0;
  }

  if (a4 && v107 <= 0)
  {
    v41 = 0;
    *a4 = sqlite3_mprintf("no such table: %s.%s", v103, __s);
    v42 = 1;
    v8 = 17;
  }

LABEL_66:
  v43 = v105;
  if (v105)
  {
    v44 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_72:
      (*v44)(v43);
      goto LABEL_73;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
    --qword_1ED456A90;
    off_1ED452EB0(v43);
    v39 = &unk_1ED456000;
    v43 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v44 = &xmmword_1ED452F28;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (!v42)
  {
    if (a4 != 0 && !v42)
    {
      *a4 = sqlite3_mprintf("table schemas do not match");
    }

    v8 = 17;
    goto LABEL_39;
  }

  v45 = !v41;
  if (v8)
  {
    v45 = 1;
  }

  if (v45)
  {
    goto LABEL_39;
  }

  v46 = *(v19 + 16);
  if (v46 >= 1)
  {
    v47 = 0;
    v48 = *(v19 + 8);
    v49 = &byte_181A2878D;
    v50 = *(v19 + 32);
    v51 = *(v19 + 56);
    while (1)
    {
      if (*v51++)
      {
        v47 = sqlite3_mprintf("%z%s%w.%w.%w=%w.%w.%w", v47, v49, v101, v48, *v50, v103, v48, *v50);
        if (!v47)
        {
          goto LABEL_123;
        }

        v49 = " AND ";
      }

      ++v50;
      if (!--v46)
      {
        goto LABEL_123;
      }
    }
  }

  v47 = 0;
LABEL_123:
  v61 = sub_18191EE78(18, a1, v19, v101, v103, v47);
  if (!v61)
  {
    v62 = sub_18191EE78(9, a1, v19, v103, v101, v47);
    if (v62)
    {
      v8 = v62;
      goto LABEL_194;
    }

    v63 = *(v19 + 16);
    if (v63 < 1)
    {
      goto LABEL_138;
    }

    v64 = 0;
    v65 = 0;
    v66 = *(a1 + 8);
    v67 = *(v19 + 8);
    v68 = v63 - 1;
    v69 = &byte_181A2878D;
    v70 = *(v19 + 32);
    v71 = 1;
    v72 = *(v19 + 56);
    v73 = "%z%s%w.%w.%w IS NOT %w.%w.%w";
    do
    {
      while (!*(v72 + v64))
      {
        v100 = v68;
        v102 = v70;
        v74 = v67;
        v75 = v66;
        v76 = v73;
        v65 = sqlite3_mprintf(v73, v65, v69, v66, v67, *(v70 + 8 * v64), v103, v67, *(v70 + 8 * v64));
        if (!v65)
        {
          goto LABEL_148;
        }

        v71 = 0;
        v69 = " OR ";
        v68 = v100;
        v70 = v102;
        v23 = v100 == v64++;
        v66 = v75;
        v67 = v74;
        v73 = v76;
        if (v23)
        {
          goto LABEL_140;
        }
      }

      ++v64;
    }

    while (v63 != v64);
    if (v71)
    {
LABEL_138:
      v65 = sqlite3_mprintf("0");
    }

    if (!v65)
    {
LABEL_148:
      v8 = 7;
      v39 = &unk_1ED456000;
      goto LABEL_194;
    }

LABEL_140:
    v77 = v65;
    if (*(v19 + 16) < 1)
    {
      v79 = 0;
    }

    else
    {
      v78 = 0;
      v79 = 0;
      v80 = *(a1 + 8);
      while (1)
      {
        v81 = v79 ? ", " : &byte_181A2878D;
        v79 = sqlite3_mprintf("%z%s%w.%w.%w", v79, v81, v80, *(v19 + 8), *(*(v19 + 32) + 8 * v78));
        if (!v79)
        {
          break;
        }

        ++v78;
        v82 = *(v19 + 16);
        if (v78 >= v82)
        {
          goto LABEL_151;
        }
      }

      LODWORD(v82) = *(v19 + 16);
LABEL_151:
      if (v82 >= 1)
      {
        v83 = v79;
        v84 = 0;
        v85 = 0;
        do
        {
          if (v85)
          {
            v86 = ", ";
          }

          else
          {
            v86 = &byte_181A2878D;
          }

          v85 = sqlite3_mprintf("%z%s%w.%w.%w", v85, v86, v103, *(v19 + 8), *(*(v19 + 32) + 8 * v84));
          if (!v85)
          {
            break;
          }

          ++v84;
        }

        while (v84 < *(v19 + 16));
        v79 = v83;
LABEL_160:
        v87 = v79;
        v89 = sqlite3_mprintf("SELECT %s,%s FROM %w.%w, %w.%w WHERE %s AND (%z)", v79, v85, *(a1 + 8), *(v19 + 8), v103, *(v19 + 8), v47, v77);
        v8 = 7;
        if (v85)
        {
          v90 = v87;
          if (!v87 || !v89)
          {
LABEL_172:
            if (!v89)
            {
              goto LABEL_179;
            }

            v94 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v89);
              --qword_1ED456A90;
              off_1ED452EB0(v89);
              v89 = xmmword_1ED456AF0;
              v90 = v87;
              if (!xmmword_1ED456AF0)
              {
LABEL_179:
                if (!v90)
                {
                  goto LABEL_186;
                }

                v95 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                    v90 = v87;
                  }

                  v96 = v90;
                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
                  --qword_1ED456A90;
                  off_1ED452EB0(v96);
                  if (!xmmword_1ED456AF0)
                  {
LABEL_186:
                    if (v85)
                    {
                      v97 = &off_1ED452EB0;
                      if (dword_1ED452E80)
                      {
                        if (xmmword_1ED456AF0)
                        {
                          xmmword_1ED452F18(xmmword_1ED456AF0);
                        }

                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v85);
                        --qword_1ED456A90;
                        off_1ED452EB0(v85);
                        v85 = xmmword_1ED456AF0;
                        if (!xmmword_1ED456AF0)
                        {
                          goto LABEL_193;
                        }

                        v97 = &xmmword_1ED452F28;
                      }

                      (*v97)(v85);
                    }

LABEL_193:
                    v39 = &unk_1ED456000;
                    goto LABEL_194;
                  }

                  v95 = &xmmword_1ED452F28;
                }

                (*v95)();
                goto LABEL_186;
              }

              v94 = &xmmword_1ED452F28;
            }

            (*v94)(v89);
            v90 = v87;
            goto LABEL_179;
          }

          v109 = 0;
          v8 = sub_1818954B4(*a1, v89, 0xFFFFFFFFLL, 0, 0, &v109, 0, v88);
          if (!v8)
          {
            v91 = *(a1 + 96);
            v92 = v109;
            *v91 = v109;
            *(v91 + 12) = *(v19 + 16);
            while (sqlite3_step(v92) == 100)
            {
              if (*(v19 + 28))
              {
                v93 = sqlite3_column_int64(v109, 0);
              }

              else
              {
                v93 = 0;
              }

              sub_181A10EC8(23, v93, a1, v19);
              v92 = v109;
            }

            v8 = sqlite3_finalize(v109);
          }
        }

        v90 = v87;
        goto LABEL_172;
      }
    }

    v85 = 0;
    goto LABEL_160;
  }

  v8 = v61;
LABEL_194:
  if (!v47)
  {
    goto LABEL_39;
  }

  v98 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_200;
  }

  v99 = *(v39 + 350);
  if (v99)
  {
    xmmword_1ED452F18(v99);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v47);
  --qword_1ED456A90;
  off_1ED452EB0(v47);
  v47 = *(v39 + 350);
  if (v47)
  {
    v98 = &xmmword_1ED452F28;
LABEL_200:
    (*v98)(v47);
  }

LABEL_39:
  v28 = *a1;
  *(a1 + 96) = *a1;
  *(a1 + 104) = j__sqlite3_preupdate_old;
  *(a1 + 112) = j__sqlite3_preupdate_new;
  *(a1 + 120) = sub_181A13338;
  *(a1 + 128) = sub_181A13358;
  if (!v28)
  {
    v30 = "NULL";
    goto LABEL_48;
  }

  v29 = *(v28 + 113);
  if (v29 == 186)
  {
LABEL_43:
    v30 = "unopened";
LABEL_48:
    sqlite3_log(21, "API call with %s database connection pointer", v30);
    sub_1819012D0(192543);
    return v8;
  }

  if (v29 != 118)
  {
    if (v29 != 109)
    {
      v30 = "invalid";
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v31 = *(v28 + 24);
  if (v31)
  {
    xmmword_1ED452F28(v31);
  }

  return v8;
}

uint64_t sub_18191E5A4(uint64_t a1, uint64_t a2, sqlite3 *a3, const char *a4)
{
  v6 = (a2 + 16);
  if (*(a2 + 16))
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v22 = 0;
  v8 = *(a2 + 32);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = &off_1ED452EB0;
  v10 = a4;
  v11 = a3;
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
    a4 = v10;
    a3 = v11;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_11;
    }

    v9 = &xmmword_1ED452F28;
  }

  (*v9)(v8);
  a4 = v10;
  a3 = v11;
LABEL_11:
  *(a2 + 56) = 0;
  v12 = *(a2 + 8);
  if (a1)
  {
    if (*(a1 + 32))
    {
      v13 = sub_18191E83C(a1, a3, a4, v12, v6, (a2 + 20), 0, (a2 + 32), (a2 + 40), (a2 + 48), &v22, (a2 + 28));
    }

    else
    {
      v13 = sub_18191E83C(a1, a3, a4, v12, v6, (a2 + 20), 0, (a2 + 32), (a2 + 40), (a2 + 48), &v22, 0);
    }

    if (v13)
    {
      *(a1 + 36) = v13;
      return 1;
    }
  }

  else
  {
    result = sub_18191E83C(0, a3, a4, v12, v6, (a2 + 20), 0, (a2 + 32), (a2 + 40), (a2 + 48), &v22, (a2 + 28));
    if (result)
    {
      return result;
    }
  }

  v14 = *v6;
  if (v14 >= 1)
  {
    v15 = 0;
    while (!*(v22 + v15))
    {
      if (v14 == ++v15)
      {
        goto LABEL_25;
      }
    }

    *(a2 + 56) = v22;
  }

LABEL_25:
  v16 = *(a2 + 8);
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = "sqlite_stat1";
  for (i = *(a2 + 8); *v17 != *i; ++i)
  {
    if (byte_181A20298[*v17] != byte_181A20298[*i])
    {
      goto LABEL_32;
    }

LABEL_28:
    ++v17;
  }

  if (*v17)
  {
    goto LABEL_28;
  }

  *(a2 + 24) = 1;
LABEL_32:
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v19 = v14;
    v20 = 1;
    if (v14 >= 0x80)
    {
      do
      {
        v21 = v19 >> 14;
        v19 >>= 7;
        ++v20;
      }

      while (v21);
    }

    *(a1 + 64) += strlen(v16) + v14 + v20 + 1 + 1;
  }

LABEL_3:
  *(a1 + 36) = 0;
  return *(a2 + 56) == 0;
}

uint64_t sub_18191E83C(uint64_t a1, sqlite3 *a2, const char *a3, char *__s, _DWORD *a5, _DWORD *a6, void *a7, void *a8, void *a9, void *a10, void *a11, _BOOL4 *a12)
{
  v14 = a5;
  *a8 = 0;
  *a11 = 0;
  *a5 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (!__s)
  {
    v18 = 0;
LABEL_18:
    v21 = sqlite3_mprintf("PRAGMA '%q'.table_xinfo('%q')", a3, __s);
    v22 = (v18 + 1);
    if (!v21)
    {
      return 7;
    }

LABEL_19:
    v60 = v14;
    v63 = 0;
    v23 = sub_1818954B4(a2, v21, 0xFFFFFFFFLL, 128, 0, &v63, 0, v20);
    v24 = &off_1ED452EB0;
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
LABEL_25:
        if (v23)
        {
          return v23;
        }

        v25 = 0;
        if (sqlite3_step(v63) == 100)
        {
          v26 = a12 != 0;
          v27 = v22;
          do
          {
            v28 = v27 + sqlite3_column_bytes(v63, 1);
            v27 = v28 + sqlite3_column_bytes(v63, 4);
            if (!sqlite3_column_int(v63, 6))
            {
              ++v25;
            }

            if (sqlite3_column_int(v63, 5))
            {
              v26 = 0;
            }
          }

          while (sqlite3_step(v63) == 100);
          if (v25)
          {
LABEL_40:
            v23 = sqlite3_reset(v63);
            if (v23)
            {
              v32 = a1;
              if (a1)
              {
                goto LABEL_42;
              }

              goto LABEL_67;
            }

            v54 = v26 + v25;
            v37 = v27 + 23 * (v26 + v25);
            if (sqlite3_initialize())
            {
              v38 = a1;
              v35 = a12;
              if (!a1)
              {
                v23 = 7;
                goto LABEL_87;
              }

              v39 = 0;
            }

            else
            {
              v41 = sub_181902484(v37 + 7, 451894878);
              v39 = v41;
              v38 = a1;
              if (!a1)
              {
                goto LABEL_61;
              }

              if (v41)
              {
                v58 = v41;
                v42 = xmmword_1ED452EC0(v41);
                v39 = v58;
                v40 = v42;
                goto LABEL_60;
              }
            }

            v40 = 0;
LABEL_60:
            *(v38 + 56) += v40;
LABEL_61:
            if (v39)
            {
              v59 = v39;
              bzero(v39, v37 + 7);
              v43 = v59;
              v55 = &v59[v54];
              v56 = &v55[v54];
              v57 = &v56[v54];
              v44 = &v57[v54];
              if (a7)
              {
                memcpy(v44, __s, v22);
                v43 = v59;
                *a7 = v44;
                v44 = (v44 + v22);
              }

              if (v26)
              {
                *v44 = 0x5F6469776F725FLL;
                *v43 = v44++;
                v45 = 1;
                *v57 = 1;
                *v56 = -1;
              }

              else
              {
                v45 = 0;
              }

              while (sqlite3_step(v63) == 100)
              {
                if (!sqlite3_column_int(v63, 6))
                {
                  v46 = sqlite3_column_bytes(v63, 1);
                  v47 = sqlite3_column_bytes(v63, 4);
                  v48 = sqlite3_column_text(v63, 1);
                  v49 = sqlite3_column_text(v63, 4);
                  if (!v48)
                  {
                    break;
                  }

                  v50 = v49;
                  memcpy(v44, v48, v46 + 1);
                  v59[v45] = v44;
                  v44 = (v44 + v46 + 1);
                  if (v50)
                  {
                    memcpy(v44, v50, v47 + 1);
                    v51 = v44;
                    v44 = (v44 + v47 + 1);
                  }

                  else
                  {
                    v51 = 0;
                  }

                  v55[v45] = v51;
                  v57[v45] = sqlite3_column_int(v63, 5);
                  v56[v45++] = sqlite3_column_int(v63, 0);
                }

                if (a6)
                {
                  ++*a6;
                }
              }

              v52 = sqlite3_reset(v63);
              if (!v52)
              {
                v35 = a12;
                *a8 = v59;
                if (a9)
                {
                  *a9 = v55;
                }

                *a11 = v57;
                *v60 = v54;
                v23 = 0;
                if (a10)
                {
                  *a10 = v56;
                }

                goto LABEL_87;
              }

              v23 = v52;
              v32 = a1;
              v33 = v59;
              v35 = a12;
              if (!a1)
              {
LABEL_44:
                v36 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v33);
                  --qword_1ED456A90;
                  off_1ED452EB0(v33);
                  v33 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_87;
                  }

                  v36 = &xmmword_1ED452F28;
                }

                (*v36)(v33);
LABEL_87:
                if (v35)
                {
                  *v35 = v26;
                }

                sqlite3_finalize(v63);
                return v23;
              }

              v33 = v59;
              v34 = xmmword_1ED452EC0(v59);
LABEL_43:
              *(v32 + 56) -= v34;
              if (!v33)
              {
                goto LABEL_87;
              }

              goto LABEL_44;
            }

            v23 = 7;
            v32 = a1;
            if (a1)
            {
LABEL_42:
              v33 = 0;
              v34 = 0;
              v35 = a12;
              goto LABEL_43;
            }

LABEL_67:
            v35 = a12;
            goto LABEL_87;
          }
        }

        else
        {
          v27 = v22;
        }

        v26 = 0;
        goto LABEL_40;
      }

      v24 = &xmmword_1ED452F28;
    }

    (*v24)(v21);
    goto LABEL_25;
  }

  v18 = strlen(__s) & 0x3FFFFFFF;
  if (v18 != 12)
  {
    goto LABEL_18;
  }

  for (i = 0; aSqliteStat1[i] != __s[i]; ++i)
  {
    if (byte_181A20298[aSqliteStat1[i]] != byte_181A20298[__s[i]])
    {
      v18 = 12;
      goto LABEL_18;
    }

LABEL_13:
    ;
  }

  if (aSqliteStat1[i])
  {
    goto LABEL_13;
  }

  v29 = v14;
  v30 = sqlite3_table_column_metadata(a2, a3, __s, 0, 0, 0, 0, 0, 0);
  if (v30 == 1)
  {
    v31 = sqlite3_mprintf(&byte_181A2878D);
LABEL_55:
    v21 = v31;
    v22 = 13;
    v14 = v29;
    if (!v31)
    {
      return 7;
    }

    goto LABEL_19;
  }

  v23 = v30;
  if (!v30)
  {
    v31 = sqlite3_mprintf("SELECT 0, 'tbl',  '', 0, '', 1, 0     UNION ALL SELECT 1, 'idx',  '', 0, '', 2, 0     UNION ALL SELECT 2, 'stat', '', 0, '', 0, 0");
    goto LABEL_55;
  }

  return v23;
}

uint64_t sub_18191EE78(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 28))
  {
    v9 = "_rowid_, *";
  }

  else
  {
    v9 = "*";
  }

  v10 = sqlite3_mprintf("SELECT %s FROM %w.%w WHERE NOT EXISTS( SELECT 1 FROM %w.%w WHERE %s)", v9, a4, *(a3 + 8), a5, *(a3 + 8), a6);
  if (!v10)
  {
    return 7;
  }

  v12 = v10;
  v20 = 0;
  v13 = sub_1818954B4(*a2, v10, 0xFFFFFFFFLL, 0, 0, &v20, 0, v11);
  if (!v13)
  {
    v14 = a2[12];
    v15 = v20;
    *v14 = v20;
    v14[1] = *(a3 + 28);
    while (sqlite3_step(v15) == 100)
    {
      if (*(a3 + 28))
      {
        v16 = sqlite3_column_int64(v20, 0);
      }

      else
      {
        v16 = 0;
      }

      sub_181A10EC8(a1, v16, a2, a3);
      v15 = v20;
    }

    v13 = sqlite3_finalize(v20);
  }

  v18 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v19 = v13;
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
      return v19;
    }

    v18 = &xmmword_1ED452F28;
  }

  else
  {
    v19 = v13;
  }

  (*v18)(v12);
  return v19;
}

uint64_t sqlite3session_create(uint64_t a1, char *__s, uint64_t *a3)
{
  if (__s)
  {
    v6 = strlen(__s) & 0x3FFFFFFF;
  }

  else
  {
    v6 = 0;
  }

  *a3 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484((v6 + 137), 0x10B0040B2415F56);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 128) = 0;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v10 = (v8 + 136);
  *v9 = a1;
  *(v9 + 8) = v10;
  *(v9 + 20) = 1;
  memcpy(v10, __s, (v6 + 1));
  *(v9 + 96) = a1;
  *(v9 + 104) = j__sqlite3_preupdate_old;
  *(v9 + 112) = j__sqlite3_preupdate_new;
  *(v9 + 120) = sub_181A13338;
  *(v9 + 128) = sub_181A13358;
  if (!a1)
  {
    v13 = "NULL";
    sqlite3_log(21, "API call with %s database connection pointer", "NULL");
    sub_1819012D0(192543);
    *(v9 + 80) = 0;
    goto LABEL_28;
  }

  v11 = *(a1 + 113);
  switch(v11)
  {
    case 186:
      goto LABEL_11;
    case 118:
      v14 = *(a1 + 24);
      if (v14)
      {
        xmmword_1ED452F18(v14);
      }

      goto LABEL_17;
    case 109:
LABEL_11:
      v12 = "unopened";
      break;
    default:
      v12 = "invalid";
      break;
  }

  sqlite3_log(21, "API call with %s database connection pointer", v12);
  sub_1819012D0(192543);
LABEL_17:
  v15 = *(a1 + 24);
  if (v15)
  {
    xmmword_1ED452F18(v15);
    v16 = *(a1 + 24);
    v17 = *(a1 + 352);
    *(a1 + 352) = v9;
    *(a1 + 360) = sub_18191F274;
    if (v16)
    {
      xmmword_1ED452F28(v16);
    }
  }

  else
  {
    v17 = *(a1 + 352);
    *(a1 + 352) = v9;
    *(a1 + 360) = sub_18191F274;
  }

  *(v9 + 80) = v17;
  v18 = *(a1 + 113);
  switch(v18)
  {
    case 186:
      goto LABEL_24;
    case 118:
      v19 = *(a1 + 24);
      if (v19)
      {
        xmmword_1ED452F28(v19);
      }

      goto LABEL_29;
    case 109:
LABEL_24:
      v13 = "unopened";
      break;
    default:
      v13 = "invalid";
      break;
  }

LABEL_28:
  sqlite3_log(21, "API call with %s database connection pointer", v13);
  sub_1819012D0(192543);
LABEL_29:
  result = 0;
  *a3 = v9;
  return result;
}

void sub_18191F274(uint64_t a1, int a2, int a3, char *__s, const char *a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  if (!__s)
  {
    v12 = 1;
    if (!a1)
    {
      return;
    }

LABEL_5:
    if (a5)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 + 1;
    while (1)
    {
      if (*(v11 + 20) && !*(v11 + 36))
      {
        v16 = *(v11 + 8);
        if (__s)
        {
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = v14;
          v18 = __s;
          while (1)
          {
            v19 = *v18;
            if (!*v18)
            {
              break;
            }

            LODWORD(v19) = byte_181A20298[v19];
            v20 = byte_181A20298[*v16];
            if (v19 != v20)
            {
              goto LABEL_27;
            }

            ++v18;
            ++v16;
            if (--v17 <= 1)
            {
              goto LABEL_28;
            }
          }

          v20 = byte_181A20298[*v16];
LABEL_27:
          if (v19 != v20)
          {
            goto LABEL_11;
          }

LABEL_28:
          if (a5)
          {
            v22 = (strlen(a5) & 0x3FFFFFFF) + 1;
          }

          else
          {
            v22 = 1;
          }

          v23 = v22 + 1;
          v24 = (v11 + 88);
          while (1)
          {
            v24 = *v24;
            if (!v24)
            {
              break;
            }

            v27 = v24[1];
            if (v27)
            {
              v26 = 1;
            }

            else
            {
              v26 = v13;
            }

            if (v27)
            {
              v28 = a5 == 0;
            }

            else
            {
              v28 = 1;
            }

            if (!v28)
            {
              v29 = v23;
              v30 = a5;
              while (1)
              {
                v31 = *v27;
                if (!*v27)
                {
                  break;
                }

                LODWORD(v31) = byte_181A20298[v31];
                v25 = byte_181A20298[*v30];
                if (v31 != v25)
                {
                  goto LABEL_33;
                }

                ++v27;
                ++v30;
                if (--v29 <= 1)
                {
                  goto LABEL_47;
                }
              }

              v25 = byte_181A20298[*v30];
LABEL_33:
              v26 = v31 - v25;
            }

            if (!v26)
            {
LABEL_47:
              *(v11 + 36) = 0;
              sub_181A10EC8(a3, a6, v11, v24);
              if (a3 == 23)
              {
                sub_181A10EC8(18, a7, v11, v24);
              }

              goto LABEL_11;
            }
          }

          if (*(v11 + 28))
          {
            v32 = *(v11 + 48);
            if (!v32 || (v15 = v32(*(v11 + 40), a5)) != 0)
            {
              v15 = sqlite3session_attach(v11, a5);
              if (!v15)
              {
                v33 = *(v11 + 88);
                while (v33)
                {
                  v24 = v33;
                  v33 = *v33;
                  if (!v33)
                  {
                    goto LABEL_47;
                  }
                }

                goto LABEL_9;
              }
            }
          }

          else
          {
LABEL_9:
            v15 = 0;
          }

          *(v11 + 36) = v15;
          goto LABEL_11;
        }

        if (v16)
        {
          v21 = -1;
        }

        else
        {
          v21 = 0;
        }

        if (!v21)
        {
          goto LABEL_28;
        }
      }

LABEL_11:
      v11 = *(v11 + 80);
      if (!v11)
      {
        return;
      }
    }
  }

  v12 = (strlen(__s) & 0x3FFFFFFF) + 1;
  if (v11)
  {
    goto LABEL_5;
  }
}

uint64_t sqlite3session_delete(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    v5 = "NULL";
    sqlite3_log(21, "API call with %s database connection pointer", "NULL");
    sub_1819012D0(192543);
LABEL_34:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192543);
    goto LABEL_35;
  }

  v3 = *(v2 + 113);
  if (v3 == 186)
  {
    goto LABEL_5;
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
LABEL_15:
      sqlite3_log(21, "API call with %s database connection pointer", v4);
      sub_1819012D0(192543);
      v7 = *(v2 + 24);
      if (!v7)
      {
        goto LABEL_16;
      }

LABEL_10:
      xmmword_1ED452F18(v7);
      v8 = *(v2 + 24);
      v9 = *(v2 + 352);
      *(v2 + 352) = 0;
      *(v2 + 360) = 0;
      if (v8)
      {
        xmmword_1ED452F28(v8);
      }

      v21 = v9;
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

LABEL_5:
    v4 = "unopened";
    goto LABEL_15;
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = *(v2 + 24);
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_16:
  v9 = *(v2 + 352);
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  v21 = v9;
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v9 == v1)
  {
    v11 = &v21;
LABEL_22:
    *v11 = *(v9 + 80);
    v12 = v21;
    if (v21)
    {
      v13 = *(v2 + 24);
      if (v13)
      {
        xmmword_1ED452F18(v13);
        v14 = *(v2 + 24);
        *(v2 + 352) = v12;
        *(v2 + 360) = sub_18191F274;
        if (v14)
        {
          xmmword_1ED452F28(v14);
        }
      }

      else
      {
        *(v2 + 352) = v21;
        *(v2 + 360) = sub_18191F274;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9;
      v9 = *(v9 + 80);
      if (!v9)
      {
        break;
      }

      if (v9 == v1)
      {
        v11 = (v10 + 80);
        goto LABEL_22;
      }
    }
  }

LABEL_27:
  v15 = *(v2 + 113);
  if (v15 == 186)
  {
LABEL_30:
    v5 = "unopened";
    goto LABEL_34;
  }

  if (v15 != 118)
  {
    if (v15 != 109)
    {
      v5 = "invalid";
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v16 = *(v2 + 24);
  if (v16)
  {
    xmmword_1ED452F28(v16);
  }

LABEL_35:
  v17 = *(v1 + 72);
  if (v17)
  {
    if ((*(v17 + 20) & 0x9000) != 0 || *(v17 + 32))
    {
      sub_18193CA00(*(v1 + 72));
    }

    sub_181929C84(*(v17 + 24), v17);
  }

  sub_18191F78C(v1, *(v1 + 88));
  v18 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_45;
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
    v18 = &xmmword_1ED452F28;
LABEL_45:
    v20 = *v18;

    return v20(v1);
  }

  return result;
}

uint64_t sub_18191F78C(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v16 = *v2;
      v5 = *(v2 + 17);
      if (v5 >= 1)
      {
        v6 = 0;
        while (1)
        {
          v7 = *(v2[9] + 8 * v6);
          if (v7)
          {
            break;
          }

LABEL_9:
          if (++v6 >= v5)
          {
            goto LABEL_21;
          }
        }

        while (2)
        {
          v8 = *(v7 + 24);
          if (v3)
          {
            *(v3 + 56) -= xmmword_1ED452EC0(v7);
          }

          v9 = &off_1ED452EB0;
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
            if (xmmword_1ED456AF0)
            {
              v9 = &xmmword_1ED452F28;
              goto LABEL_12;
            }
          }

          else
          {
LABEL_12:
            (*v9)(v7);
          }

          v7 = v8;
          if (!v8)
          {
            v5 = *(v2 + 17);
            goto LABEL_9;
          }

          continue;
        }
      }

LABEL_21:
      sqlite3_finalize(v2[10]);
      v10 = v2[4];
      if (v3)
      {
        if (v10)
        {
          v11 = xmmword_1ED452EC0(v2[4]);
        }

        else
        {
          v11 = 0;
        }

        *(v3 + 56) -= v11;
      }

      if (!v10)
      {
        goto LABEL_33;
      }

      v12 = &off_1ED452EB0;
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
          goto LABEL_33;
        }

        v12 = &xmmword_1ED452F28;
      }

      (*v12)(v10);
LABEL_33:
      v13 = v2[9];
      if (v3)
      {
        if (v13)
        {
          v14 = xmmword_1ED452EC0(v2[9]);
        }

        else
        {
          v14 = 0;
        }

        *(v3 + 56) -= v14;
      }

      if (v13)
      {
        v15 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_44;
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
          v15 = &xmmword_1ED452F28;
LABEL_44:
          (*v15)(v13);
        }
      }

      if (v3)
      {
        *(v3 + 56) -= xmmword_1ED452EC0(v2);
      }

      v4 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
        --qword_1ED456A90;
        result = off_1ED452EB0(v2);
        v2 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_5;
        }

        v4 = &xmmword_1ED452F28;
      }

      result = (*v4)(v2);
LABEL_5:
      v2 = v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sqlite3session_table_filter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 28) = 1;
  *(result + 40) = a3;
  *(result + 48) = a2;
  return result;
}

uint64_t sqlite3session_attach(uint64_t *a1, uint64_t __s)
{
  v4 = *a1;
  if (!*a1)
  {
    v6 = "NULL";
    goto LABEL_26;
  }

  v5 = *(v4 + 113);
  if (v5 == 186)
  {
LABEL_5:
    v6 = "unopened";
    goto LABEL_26;
  }

  if (v5 != 118)
  {
    if (v5 == 109)
    {
      goto LABEL_5;
    }

    v6 = "invalid";
LABEL_26:
    sqlite3_log(21, "API call with %s database connection pointer", v6);
    sub_1819012D0(192543);
    if (!__s)
    {
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v7 = *(v4 + 24);
  if (v7)
  {
    xmmword_1ED452F18(v7);
  }

  if (!__s)
  {
LABEL_27:
    *(a1 + 7) = 1;
    v16 = *a1;
    if (*a1)
    {
      goto LABEL_28;
    }

LABEL_39:
    v18 = "NULL";
    goto LABEL_40;
  }

LABEL_10:
  v8 = strlen(__s) & 0x3FFFFFFF;
  v10 = a1 + 11;
  v9 = a1[11];
  if (v9)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12)
      {
        break;
      }

LABEL_14:
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    v13 = v8 + 2;
    v14 = __s;
    while (1)
    {
      v15 = *v12;
      if (!*v12)
      {
        break;
      }

      LODWORD(v15) = byte_181A20298[v15];
      v11 = byte_181A20298[*v14];
      if (v15 != v11)
      {
        goto LABEL_13;
      }

      ++v12;
      ++v14;
      if (--v13 <= 1)
      {
        goto LABEL_20;
      }
    }

    v11 = byte_181A20298[*v14];
LABEL_13:
    if (v15 != v11)
    {
      goto LABEL_14;
    }

LABEL_20:
    __s = 0;
    v16 = *a1;
    if (!*a1)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_22:
    if (sqlite3_initialize() || (v20 = sub_181902484((v8 + 89), 451894878)) == 0)
    {
      __s = 7;
      v16 = *a1;
      if (*a1)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }

    v21 = v20;
    a1[7] += xmmword_1ED452EC0(v20);
    *(v21 + 80) = 0;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *v21 = 0u;
    *(v21 + 8) = v21 + 88;
    memcpy((v21 + 88), __s, (v8 + 1));
    do
    {
      v22 = v10;
      v10 = *v10;
    }

    while (v10);
    __s = 0;
    *v22 = v21;
    v16 = *a1;
    if (!*a1)
    {
      goto LABEL_39;
    }
  }

LABEL_28:
  v17 = *(v16 + 113);
  if (v17 == 186)
  {
    goto LABEL_31;
  }

  if (v17 != 118)
  {
    if (v17 != 109)
    {
      v18 = "invalid";
      goto LABEL_40;
    }

LABEL_31:
    v18 = "unopened";
LABEL_40:
    sqlite3_log(21, "API call with %s database connection pointer", v18);
    sub_1819012D0(192543);
    return __s;
  }

  v19 = *(v16 + 24);
  if (v19)
  {
    xmmword_1ED452F28(v19);
  }

  return __s;
}

uint64_t sub_18191FD18(uint64_t a1, uint64_t a2)
{
  if (sqlite3_initialize())
  {
    result = 0;
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = sub_181902484(a2, 451894878);
    if (!a1)
    {
      return result;
    }

    if (result)
    {
      v6 = result;
      LODWORD(v5) = xmmword_1ED452EC0(result);
      result = v6;
      v5 = v5;
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *(a1 + 56) += v5;
  return result;
}

uint64_t sqlite3session_changeset(uint64_t a1, int *a2, uint64_t *a3)
{
  if (a2 && a3)
  {
    return sub_18191FDBC(a1, 0, 0, 0, a2, a3);
  }

  else
  {
    return 21;
  }
}

uint64_t sub_18191FDBC(uint64_t a1, int a2, uint64_t (*a3)(void, void), uint64_t a4, int *a5, uint64_t *a6)
{
  v6 = a3;
  v190 = *a1;
  v203 = 0;
  v204 = 0;
  if (a3)
  {
    result = *(a1 + 36);
    if (result)
    {
      return result;
    }
  }

  else
  {
    *a5 = 0;
    *a6 = 0;
    result = *(a1 + 36);
    if (result)
    {
      return result;
    }
  }

  v192 = a1;
  result = sqlite3_exec(*a1, "SAVEPOINT changeset", 0, 0, 0);
  v9 = v192;
  if (!result)
  {
    if (v190)
    {
      v10 = *(v190 + 113);
      switch(v10)
      {
        case 186:
          goto LABEL_10;
        case 118:
          v12 = *(v190 + 3);
          if (!v12)
          {
            goto LABEL_17;
          }

          xmmword_1ED452F18(v12);
LABEL_16:
          v9 = v192;
LABEL_17:
          v13 = *(v9 + 88);
          if (v13)
          {
            v14 = 0;
            v15 = 0;
            v196 = v6;
            while (1)
            {
              if (*(v13 + 64))
              {
                v191 = v15;
                v17 = *(v13 + 8);
                pStmt = 0;
                v18 = *(v13 + 16);
                v202 = sub_181A1172C(v9, v13);
                if (!v202 && *(v13 + 16) != v18)
                {
                  v202 = sub_181A11950(v192, v13);
                }

                sub_181A13378(&v203, a2, v13, &v202);
                v19 = v202;
                if (v202)
                {
                  v198 = v204;
                  goto LABEL_27;
                }

                v19 = sub_181A13594(v190, 0, *(v192 + 8), v17, *(v13 + 16), *(v13 + 32), *(v13 + 56), &pStmt);
                v202 = v19;
                v198 = v204;
                v22 = *(v13 + 68);
                if (v22 >= 1 && !v19)
                {
                  v23 = 0;
                  v197 = v13;
                  do
                  {
                    v193 = v23;
                    v24 = *(*(v13 + 72) + 8 * v23);
                    if (!v24)
                    {
                      v181 = 1;
                      goto LABEL_362;
                    }

                    while (1)
                    {
                      v25 = pStmt;
                      v26 = *(v13 + 16);
                      if (v26 <= 0)
                      {
                        v202 = 0;
                        goto LABEL_82;
                      }

                      v27 = 0;
                      v28 = *(v13 + 56);
                      v29 = *(v24 + 2);
                      do
                      {
                        v19 = 0;
                        v31 = v29 + 1;
                        v30 = *v29;
                        if (v30 <= 1)
                        {
                          if (!*v29)
                          {
LABEL_45:
                            ++v29;
                            goto LABEL_77;
                          }

                          if (v30 != 1)
                          {
                            goto LABEL_50;
                          }

                          if (!*(v28 + v27))
                          {
                            goto LABEL_52;
                          }

                          v19 = sqlite3_bind_int64(v25, v27 + 1, bswap64(*(v29 + 1)));
                          v29 += 9;
                        }

                        else
                        {
                          switch(v30)
                          {
                            case 2u:
                              if (!*(v28 + v27))
                              {
LABEL_52:
                                v19 = 0;
                                v29 += 9;
                                break;
                              }

                              v19 = sqlite3_bind_double(v25, v27 + 1, COERCE_DOUBLE(bswap64(*(v29 + 1))));
                              v29 += 9;
                              break;
                            case 3u:
                              v32 = *v31;
                              if (v32 < 0)
                              {
                                v36 = v29[2];
                                if (v29[2] < 0)
                                {
                                  v38 = v29[3];
                                  if (v38 < 0)
                                  {
                                    v205 = 0;
                                    v40 = sub_1818C7200(v29 + 1, &v205);
                                    v32 = v205;
                                    if (HIDWORD(v205))
                                    {
                                      v32 = -1;
                                    }

                                    v33 = v40;
                                  }

                                  else
                                  {
                                    v32 = ((v32 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v38;
                                    v33 = 3;
                                  }
                                }

                                else
                                {
                                  v32 = v36 | ((v32 & 0x7F) << 7);
                                  v33 = 2;
                                }
                              }

                              else
                              {
                                v33 = 1;
                              }

                              v41 = &v31[v33];
                              v42 = v32;
                              if (*(v28 + v27))
                              {
                                v19 = sub_1818DF574(v25, v27 + 1, v41, v32, 0xFFFFFFFFFFFFFFFFLL, 1u);
                                v29 = &v41[v42];
                              }

                              else
                              {
                                v19 = 0;
                                v29 = &v41[v32];
                              }

                              break;
                            case 5u:
                              goto LABEL_45;
                            default:
LABEL_50:
                              v34 = *v31;
                              if (v34 < 0)
                              {
                                v37 = v29[2];
                                if (v29[2] < 0)
                                {
                                  v39 = v29[3];
                                  if (v39 < 0)
                                  {
                                    v205 = 0;
                                    v43 = sub_1818C7200(v29 + 1, &v205);
                                    if (HIDWORD(v205))
                                    {
                                      v34 = -1;
                                    }

                                    else
                                    {
                                      v34 = v205;
                                    }

                                    v35 = v43;
                                  }

                                  else
                                  {
                                    v34 = ((v34 & 0x7F) << 14) | ((v37 & 0x7F) << 7) | v39;
                                    v35 = 3;
                                  }
                                }

                                else
                                {
                                  v34 = v37 | ((v34 & 0x7F) << 7);
                                  v35 = 2;
                                }
                              }

                              else
                              {
                                v35 = 1;
                              }

                              v44 = &v31[v35];
                              if (*(v28 + v27))
                              {
                                if (v34 < 0)
                                {
                                  v19 = sub_1819012D0(101409);
                                }

                                else
                                {
                                  v19 = sub_1818DF574(v25, v27 + 1, v44, v34, 0xFFFFFFFFFFFFFFFFLL, 0);
                                }
                              }

                              else
                              {
                                v19 = 0;
                              }

                              v29 = &v44[v34];
                              break;
                          }
                        }

LABEL_77:
                        ++v27;
                      }

                      while (v27 < v26 && !v19);
                      v202 = v19;
                      if (v19)
                      {
                        goto LABEL_360;
                      }

                      v25 = pStmt;
LABEL_82:
                      v45 = sqlite3_step(v25);
                      v46 = *v24;
                      if (v45 != 100)
                      {
                        if (v46 == 18)
                        {
                          goto LABEL_346;
                        }

                        v56 = *(v13 + 16);
                        v57 = *(v13 + 56);
                        v58 = v204;
                        v59 = HIDWORD(v204);
                        v60 = v204;
                        if (v204 < SHIDWORD(v204))
                        {
                          v61 = v203;
                          goto LABEL_92;
                        }

                        if (!HIDWORD(v204))
                        {
                          v59 = 128;
                        }

                        v93 = v59;
                        do
                        {
                          v94 = v93;
                          v93 *= 2;
                        }

                        while (v93 <= v204);
                        if (v94 > 1073741695)
                        {
                          v93 = 2147483391;
                          if (v204 > 2147483390)
                          {
                            goto LABEL_165;
                          }
                        }

                        v95 = v203;
                        v96 = sqlite3_initialize();
                        v68 = 0;
                        v67 = 7;
                        if (v93 && !v96)
                        {
                          v61 = sub_18190287C(v95, v93, 0x100004077774924);
                          if (v61)
                          {
                            v203 = v61;
                            HIDWORD(v204) = v93;
                            v58 = v204;
                            v60 = v204;
LABEL_92:
                            LODWORD(v204) = v58 + 1;
                            *(v61 + v60) = 9;
                            v62 = v24[1];
                            v63 = v204;
                            v64 = HIDWORD(v204);
                            v65 = v204;
                            if (v204 < SHIDWORD(v204))
                            {
                              v66 = v203;
                              goto LABEL_94;
                            }

                            if (!HIDWORD(v204))
                            {
                              v64 = 128;
                            }

                            v107 = v64;
                            do
                            {
                              v108 = v107;
                              v107 *= 2;
                            }

                            while (v107 <= v204);
                            if (v108 > 1073741695)
                            {
                              v107 = 2147483391;
                              if (v204 > 2147483390)
                              {
LABEL_165:
                                v68 = 0;
                                v67 = 7;
                                if (!a2)
                                {
                                  goto LABEL_95;
                                }

LABEL_305:
                                if (v56 >= 1)
                                {
                                  v162 = 0;
                                  v163 = *(v24 + 2);
                                  v19 = v67;
                                  while (1)
                                  {
                                    v164 = v163;
                                    v166 = *v163++;
                                    v165 = v166;
                                    if ((v166 - 1) < 2)
                                    {
                                      break;
                                    }

                                    if (v165)
                                    {
                                      v167 = v165 == 5;
                                    }

                                    else
                                    {
                                      v167 = 1;
                                    }

                                    if (v167)
                                    {
                                      goto LABEL_317;
                                    }

                                    v168 = *v163;
                                    if (v168 < 0)
                                    {
                                      v178 = v164[2];
                                      if (v164[2] < 0)
                                      {
                                        v179 = v164[3];
                                        if (v179 < 0)
                                        {
                                          v205 = 0;
                                          v180 = v19;
                                          LODWORD(v169) = sub_1818C7200(v163, &v205);
                                          v19 = v180;
                                          v168 = v205;
                                          if (HIDWORD(v205))
                                          {
                                            v168 = -1;
                                          }

                                          v169 = v169;
                                        }

                                        else
                                        {
                                          v168 = ((v168 & 0x7F) << 14) | ((v178 & 0x7F) << 7) | v179;
                                          v169 = 3;
                                        }
                                      }

                                      else
                                      {
                                        v168 = v178 | ((v168 & 0x7F) << 7);
                                        v169 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v169 = 1;
                                    }

                                    v163 += v169 + v168;
                                    if (!*(v57 + v162))
                                    {
                                      goto LABEL_308;
                                    }

LABEL_318:
                                    v170 = v163 - v164;
                                    if (v163 - v164 < 1 || v19)
                                    {
                                      goto LABEL_308;
                                    }

                                    v171 = v204;
                                    v172 = (v170 & 0x7FFFFFFF) + v204;
                                    if (v172 <= SHIDWORD(v204))
                                    {
                                      v177 = v203;
                                      goto LABEL_334;
                                    }

                                    if (HIDWORD(v204))
                                    {
                                      v173 = SHIDWORD(v204);
                                    }

                                    else
                                    {
                                      v173 = 128;
                                    }

                                    do
                                    {
                                      v174 = v173;
                                      v173 *= 2;
                                    }

                                    while (v173 < v172);
                                    if (v174 <= 1073741695 || (v173 = 2147483391, v172 <= 2147483391))
                                    {
                                      v175 = v203;
                                      v176 = sqlite3_initialize();
                                      v19 = 7;
                                      if (!v173 || v176)
                                      {
                                        goto LABEL_308;
                                      }

                                      v177 = sub_18190287C(v175, v173, 0x100004077774924);
                                      if (v177)
                                      {
                                        v203 = v177;
                                        HIDWORD(v204) = v173;
                                        v171 = v204;
LABEL_334:
                                        memcpy((v177 + v171), v164, v170 & 0x7FFFFFFF);
                                        v19 = 0;
                                        LODWORD(v204) = v204 + v170;
                                        goto LABEL_308;
                                      }
                                    }

                                    v19 = 7;
LABEL_308:
                                    if (++v162 == v56)
                                    {
                                      goto LABEL_345;
                                    }
                                  }

                                  v163 = v164 + 9;
LABEL_317:
                                  if (!*(v57 + v162))
                                  {
                                    goto LABEL_308;
                                  }

                                  goto LABEL_318;
                                }

LABEL_344:
                                v19 = v67;
LABEL_345:
                                v202 = v19;
                                v6 = v196;
                                v13 = v197;
                                if (v19)
                                {
                                  goto LABEL_360;
                                }

                                goto LABEL_346;
                              }
                            }

                            v160 = v203;
                            v161 = sqlite3_initialize();
                            v68 = 0;
                            v67 = 7;
                            if (v107 && !v161)
                            {
                              v66 = sub_18190287C(v160, v107, 0x100004077774924);
                              if (!v66)
                              {
                                v68 = 0;
                                if (!a2)
                                {
                                  goto LABEL_95;
                                }

                                goto LABEL_305;
                              }

                              v203 = v66;
                              HIDWORD(v204) = v107;
                              v63 = v204;
                              v65 = v204;
LABEL_94:
                              v67 = 0;
                              LODWORD(v204) = v63 + 1;
                              *(v66 + v65) = v62;
                              v68 = 1;
                              if (a2)
                              {
                                goto LABEL_305;
                              }

LABEL_95:
                              v69 = *(v24 + 2);
                              if (v69 < 1 || !v68)
                              {
                                goto LABEL_344;
                              }

                              v70 = *(v24 + 2);
                              v71 = v204;
                              v72 = v204 + v69;
                              if (v72 <= SHIDWORD(v204))
                              {
                                v67 = 0;
                                v77 = v203;
                              }

                              else
                              {
                                if (HIDWORD(v204))
                                {
                                  v73 = SHIDWORD(v204);
                                }

                                else
                                {
                                  v73 = 128;
                                }

                                do
                                {
                                  v74 = v73;
                                  v73 *= 2;
                                }

                                while (v73 < v72);
                                if (v74 > 1073741695)
                                {
                                  v73 = 2147483391;
                                  if (v72 > 2147483391)
                                  {
                                    goto LABEL_359;
                                  }
                                }

                                v75 = v203;
                                v76 = sqlite3_initialize();
                                v19 = 7;
                                if (!v73 || v76)
                                {
                                  goto LABEL_345;
                                }

                                v77 = sub_18190287C(v75, v73, 0x100004077774924);
                                if (!v77)
                                {
LABEL_359:
                                  v19 = 7;
                                  goto LABEL_345;
                                }

                                v203 = v77;
                                HIDWORD(v204) = v73;
                                v71 = v204;
                              }

                              memcpy((v77 + v71), v70, v69);
                              LODWORD(v204) = v204 + v69;
                              goto LABEL_344;
                            }
                          }

                          else
                          {
                            v68 = 0;
                          }
                        }

                        if (a2)
                        {
                          goto LABEL_305;
                        }

                        goto LABEL_95;
                      }

                      if (v46 != 18)
                      {
                        break;
                      }

                      v47 = v204;
                      v48 = HIDWORD(v204);
                      v49 = v204;
                      if (v204 < SHIDWORD(v204))
                      {
                        v50 = v203;
                        goto LABEL_86;
                      }

                      if (!HIDWORD(v204))
                      {
                        v48 = 128;
                      }

                      v89 = v48;
                      do
                      {
                        v90 = v89;
                        v89 *= 2;
                      }

                      while (v89 <= v204);
                      if (v90 > 1073741695)
                      {
                        v89 = 2147483391;
                        if (v204 > 2147483390)
                        {
                          goto LABEL_153;
                        }
                      }

                      v91 = v203;
                      v92 = sqlite3_initialize();
                      if (!v89)
                      {
                        goto LABEL_153;
                      }

                      if (v92)
                      {
                        goto LABEL_153;
                      }

                      v50 = sub_18190287C(v91, v89, 0x100004077774924);
                      if (!v50)
                      {
                        goto LABEL_153;
                      }

                      v203 = v50;
                      HIDWORD(v204) = v89;
                      v47 = v204;
                      v49 = v204;
LABEL_86:
                      LODWORD(v204) = v47 + 1;
                      *(v50 + v49) = 18;
                      v51 = v24[1];
                      v53 = v204;
                      v52 = HIDWORD(v204);
                      v54 = v204;
                      if (v204 < SHIDWORD(v204))
                      {
                        v55 = v203;
                        goto LABEL_88;
                      }

                      if (!HIDWORD(v204))
                      {
                        v52 = 128;
                      }

                      v101 = v52;
                      do
                      {
                        v102 = v101;
                        v101 *= 2;
                      }

                      while (v101 <= v204);
                      if (v102 > 1073741695)
                      {
                        v101 = 2147483391;
                        if (v204 > 2147483390)
                        {
                          goto LABEL_153;
                        }
                      }

                      v103 = v203;
                      v104 = sqlite3_initialize();
                      if (v101 && !v104 && (v105 = sub_18190287C(v103, v101, 0x100004077774924)) != 0)
                      {
                        v55 = v105;
                        v203 = v105;
                        HIDWORD(v204) = v101;
                        v53 = v204;
                        v54 = v204;
LABEL_88:
                        v19 = 0;
                        LODWORD(v204) = v53 + 1;
                        *(v55 + v54) = v51;
                      }

                      else
                      {
LABEL_153:
                        v19 = 7;
                        v202 = 7;
                      }

                      if (*(v13 + 16) < 1)
                      {
                        goto LABEL_284;
                      }

                      v106 = 0;
                      do
                      {
                        sub_181A14308(&v203, pStmt, v106++, &v202);
                      }

                      while (v106 < *(v13 + 16));
                      v19 = v202;
                      if (v202)
                      {
                        goto LABEL_360;
                      }

LABEL_346:
                      v19 = sqlite3_reset(pStmt);
                      v202 = v19;
                      if (v6 && !v19 && v204 > v198 && v204 > dword_1EA8315B8)
                      {
                        v19 = v6(a4, v203);
                        v202 = v19;
                        LODWORD(v204) = 0;
                        v198 = -1;
                      }

                      if (!v19)
                      {
                        v24 = *(v24 + 3);
                        if (v24)
                        {
                          continue;
                        }
                      }

                      goto LABEL_360;
                    }

                    v78 = pStmt;
                    v199 = *(v13 + 56);
                    v207 = 0;
                    v205 = 0;
                    v206 = 0;
                    v79 = *(v24 + 2);
                    v80 = HIDWORD(v204);
                    v81 = v204;
                    v195 = v204;
                    if (v204 >= SHIDWORD(v204))
                    {
                      if (!HIDWORD(v204))
                      {
                        v80 = 128;
                      }

                      v97 = v80;
                      do
                      {
                        v98 = v97;
                        v97 *= 2;
                      }

                      while (v97 <= v204);
                      if (v98 > 1073741695 && (v97 = 2147483391, v204 > 2147483390) || (v99 = v203, v100 = sqlite3_initialize(), !v97) || v100 || (v82 = sub_18190287C(v99, v97, 0x100004077774924)) == 0)
                      {
LABEL_177:
                        v207 = 7;
                        goto LABEL_178;
                      }

                      v203 = v82;
                      HIDWORD(v204) = v97;
                      v83 = v204;
                      v81 = v204;
                    }

                    else
                    {
                      v82 = v203;
                      v83 = v204;
                    }

                    LODWORD(v204) = v83 + 1;
                    *(v82 + v81) = 23;
                    v84 = v24[1];
                    v85 = v204;
                    v86 = HIDWORD(v204);
                    v87 = v204;
                    if (v204 >= SHIDWORD(v204))
                    {
                      if (!HIDWORD(v204))
                      {
                        v86 = 128;
                      }

                      v109 = v86;
                      do
                      {
                        v110 = v109;
                        v109 *= 2;
                      }

                      while (v109 <= v204);
                      if (v110 > 1073741695)
                      {
                        v109 = 2147483391;
                        if (v204 > 2147483390)
                        {
                          goto LABEL_177;
                        }
                      }

                      v111 = v203;
                      v112 = sqlite3_initialize();
                      if (!v109)
                      {
                        goto LABEL_177;
                      }

                      if (v112)
                      {
                        goto LABEL_177;
                      }

                      v88 = sub_18190287C(v111, v109, 0x100004077774924);
                      if (!v88)
                      {
                        goto LABEL_177;
                      }

                      v203 = v88;
                      HIDWORD(v204) = v109;
                      v85 = v204;
                      v87 = v204;
                    }

                    else
                    {
                      v88 = v203;
                    }

                    LODWORD(v204) = v85 + 1;
                    *(v88 + v87) = v84;
LABEL_178:
                    v113 = 0;
                    v114 = 1;
                    while (1)
                    {
                      if (!v78)
                      {
                        v117 = 0;
                        goto LABEL_189;
                      }

                      v115 = *(*v78 + 24);
                      if (!v115)
                      {
                        break;
                      }

                      xmmword_1ED452F18(v115);
                      v116 = *(*v78 + 24);
                      v117 = v78[130];
                      if (v116)
                      {
                        xmmword_1ED452F28(v116);
                        if (v113 >= v117)
                        {
                          goto LABEL_273;
                        }

                        goto LABEL_190;
                      }

LABEL_189:
                      if (v113 >= v117)
                      {
                        goto LABEL_273;
                      }

LABEL_190:
                      v118 = *v79;
                      if ((v118 - 1) < 2)
                      {
                        if (sqlite3_column_type(v78, v113) == v118)
                        {
                          v119 = COERCE_DOUBLE(bswap64(*(v79 + 1)));
                          if (v118 == 1)
                          {
                            v120 = 9;
                            if (*&v119 != sqlite3_column_int64(v78, v113))
                            {
                              goto LABEL_217;
                            }
                          }

                          else
                          {
                            v120 = 9;
                            if (sqlite3_column_double(v78, v113) != v119)
                            {
                              goto LABEL_217;
                            }
                          }

                          goto LABEL_222;
                        }

                        v120 = 9;
LABEL_217:
                        if (a2 || v120 <= 0)
                        {
LABEL_180:
                          v114 = 0;
LABEL_181:
                          sub_181A14308(&v205, v78, v113, &v207);
                          goto LABEL_182;
                        }

LABEL_219:
                        v114 = 0;
                        v127 = 0;
                        if (!v207)
                        {
                          goto LABEL_228;
                        }

                        goto LABEL_220;
                      }

                      if (v118 == 5)
                      {
                        v120 = 1;
                        if (sqlite3_column_type(v78, v113) == 5)
                        {
                          goto LABEL_222;
                        }

                        if (a2)
                        {
                          goto LABEL_180;
                        }

                        goto LABEL_219;
                      }

                      v121 = v79[1];
                      if (v121 < 0)
                      {
                        v123 = v79[2];
                        if (v79[2] < 0)
                        {
                          v124 = v79[3];
                          if (v124 < 0)
                          {
                            v208 = 0;
                            v125 = sub_1818C7200(v79 + 1, &v208);
                            if (HIDWORD(v208))
                            {
                              v121 = -1;
                            }

                            else
                            {
                              v121 = v208;
                            }

                            v122 = (v125 + 1);
                          }

                          else
                          {
                            v121 = ((v121 & 0x7F) << 14) | ((v123 & 0x7F) << 7) | v124;
                            v122 = 4;
                          }
                        }

                        else
                        {
                          v121 = v123 | ((v121 & 0x7F) << 7);
                          v122 = 3;
                        }
                      }

                      else
                      {
                        v122 = 2;
                      }

                      v120 = v122 + v121;
                      if (sqlite3_column_type(v78, v113) != v118)
                      {
                        goto LABEL_217;
                      }

                      if (v121 != sqlite3_column_bytes(v78, v113))
                      {
                        goto LABEL_217;
                      }

                      if (v121)
                      {
                        v126 = sqlite3_column_blob(v78, v113);
                        if (memcmp(&v79[v122], v126, v121))
                        {
                          goto LABEL_217;
                        }
                      }

LABEL_222:
                      if (a2)
                      {
                        if (*(v199 + v113))
                        {
                          goto LABEL_181;
                        }

                        goto LABEL_241;
                      }

                      if (*(v199 + v113))
                      {
                        if (v120 < 1)
                        {
                          goto LABEL_241;
                        }

                        v127 = 1;
                        if (!v207)
                        {
LABEL_228:
                          v128 = v204;
                          v129 = v204 + v120;
                          if (v129 <= SHIDWORD(v204))
                          {
                            v134 = v203;
                            goto LABEL_240;
                          }

                          if (HIDWORD(v204))
                          {
                            v130 = SHIDWORD(v204);
                          }

                          else
                          {
                            v130 = 128;
                          }

                          do
                          {
                            v131 = v130;
                            v130 *= 2;
                          }

                          while (v130 < v129);
                          if ((v131 <= 1073741695 || (v130 = 2147483391, v129 <= 2147483391)) && (v132 = v203, v133 = sqlite3_initialize(), v130) && !v133 && (v134 = sub_18190287C(v132, v130, 0x100004077774924)) != 0)
                          {
                            v203 = v134;
                            HIDWORD(v204) = v130;
                            v128 = v204;
LABEL_240:
                            memcpy((v134 + v128), v79, v120);
                            LODWORD(v204) = v204 + v120;
                            if ((v127 & 1) == 0)
                            {
                              goto LABEL_181;
                            }
                          }

                          else
                          {
                            v207 = 7;
                            if ((v127 & 1) == 0)
                            {
                              goto LABEL_181;
                            }
                          }

LABEL_241:
                          if (v207)
                          {
                            goto LABEL_182;
                          }

LABEL_242:
                          v135 = HIDWORD(v206);
                          v136 = v206;
                          if (v206 < SHIDWORD(v206))
                          {
                            v137 = v205;
LABEL_244:
                            LODWORD(v206) = v136 + 1;
                            *(v137 + v136) = 0;
                            goto LABEL_182;
                          }

                          if (!HIDWORD(v206))
                          {
                            v135 = 128;
                          }

                          v138 = v135;
                          do
                          {
                            v139 = v138;
                            v138 *= 2;
                          }

                          while (v138 <= v206);
                          if (v139 <= 1073741695 || (v138 = 2147483391, v206 <= 2147483390))
                          {
                            v140 = v205;
                            v141 = sqlite3_initialize();
                            if (v138)
                            {
                              if (!v141)
                              {
                                v137 = sub_18190287C(v140, v138, 0x100004077774924);
                                if (v137)
                                {
                                  v205 = v137;
                                  HIDWORD(v206) = v138;
                                  goto LABEL_244;
                                }
                              }
                            }
                          }

                          goto LABEL_272;
                        }

LABEL_220:
                        if ((v127 & 1) == 0)
                        {
                          goto LABEL_181;
                        }

                        goto LABEL_241;
                      }

                      if (v207)
                      {
                        goto LABEL_182;
                      }

                      v142 = HIDWORD(v204);
                      v143 = v204;
                      if (v204 < SHIDWORD(v204))
                      {
                        LODWORD(v204) = v204 + 1;
                        *(v203 + v143) = 0;
                        if (v207)
                        {
                          goto LABEL_182;
                        }

                        goto LABEL_242;
                      }

                      if (!HIDWORD(v204))
                      {
                        v142 = 128;
                      }

                      v144 = v142;
                      do
                      {
                        v145 = v144;
                        v144 *= 2;
                      }

                      while (v144 <= v204);
                      if (v145 <= 1073741695 || (v144 = 2147483391, v204 <= 2147483390))
                      {
                        v146 = v203;
                        v147 = sqlite3_initialize();
                        if (v144)
                        {
                          if (!v147)
                          {
                            v148 = sub_18190287C(v146, v144, 0x100004077774924);
                            if (v148)
                            {
                              v203 = v148;
                              v149 = v204;
                              LODWORD(v204) = v204 + 1;
                              HIDWORD(v204) = v144;
                              *(v148 + v149) = 0;
                              if (v207)
                              {
                                goto LABEL_182;
                              }

                              goto LABEL_242;
                            }
                          }
                        }
                      }

LABEL_272:
                      v207 = 7;
LABEL_182:
                      v79 += v120;
                      ++v113;
                    }

                    if (v113 < v78[130])
                    {
                      goto LABEL_190;
                    }

LABEL_273:
                    if (v114)
                    {
                      LODWORD(v204) = v195;
                      v150 = v205;
                      goto LABEL_275;
                    }

                    v150 = v205;
                    v152 = v206;
                    if (v206 < 1)
                    {
LABEL_275:
                      v6 = v196;
                      v13 = v197;
                    }

                    else
                    {
                      v6 = v196;
                      v13 = v197;
                      if (!v207)
                      {
                        v153 = v204;
                        v154 = v204 + v206;
                        if (v154 <= SHIDWORD(v204))
                        {
                          v159 = v203;
LABEL_355:
                          memcpy((v159 + v153), v150, v152);
                          LODWORD(v204) = v204 + v152;
                        }

                        else
                        {
                          if (HIDWORD(v204))
                          {
                            v155 = SHIDWORD(v204);
                          }

                          else
                          {
                            v155 = 128;
                          }

                          do
                          {
                            v156 = v155;
                            v155 *= 2;
                          }

                          while (v155 < v154);
                          if (v156 <= 1073741695 || (v155 = 2147483391, v154 <= 2147483391))
                          {
                            v157 = v203;
                            v158 = sqlite3_initialize();
                            if (v155)
                            {
                              if (!v158)
                              {
                                v159 = sub_18190287C(v157, v155, 0x100004077774924);
                                if (v159)
                                {
                                  v203 = v159;
                                  HIDWORD(v204) = v155;
                                  v153 = v204;
                                  goto LABEL_355;
                                }
                              }
                            }
                          }

                          v207 = 7;
                        }
                      }
                    }

                    if (v150)
                    {
                      v151 = &off_1ED452EB0;
                      if (!dword_1ED452E80)
                      {
                        goto LABEL_282;
                      }

                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v150);
                      --qword_1ED456A90;
                      off_1ED452EB0(v150);
                      v150 = xmmword_1ED456AF0;
                      if (xmmword_1ED456AF0)
                      {
                        v151 = &xmmword_1ED452F28;
LABEL_282:
                        (*v151)(v150);
                      }
                    }

                    v19 = v207;
                    v202 = v207;
LABEL_284:
                    if (!v19)
                    {
                      goto LABEL_346;
                    }

LABEL_360:
                    v22 = *(v13 + 68);
                    v181 = v19 == 0;
LABEL_362:
                    v23 = v193 + 1;
                  }

                  while (v193 + 1 < v22 && v181);
                }

LABEL_27:
                v20 = v19;
                sqlite3_finalize(pStmt);
                v21 = v204;
                if (v204 == v198)
                {
                  v21 = v191;
                  LODWORD(v204) = v191;
                }

                v14 = v20;
                v16 = v20 == 0;
                v15 = v21;
                v9 = v192;
                if (v20)
                {
LABEL_365:
                  if (!v16)
                  {
                    goto LABEL_370;
                  }

                  if (v6)
                  {
                    if (v15 >= 1)
                    {
                      v14 = v6(a4, v203);
                    }

LABEL_370:
                    v182 = v203;
                    if (v203)
                    {
                      v183 = &off_1ED452EB0;
                      if (dword_1ED452E80)
                      {
                        v184 = v14;
                        if (xmmword_1ED456AF0)
                        {
                          xmmword_1ED452F18(xmmword_1ED456AF0);
                        }

                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v182);
                        --qword_1ED456A90;
                        off_1ED452EB0(v182);
                        v182 = xmmword_1ED456AF0;
                        if (xmmword_1ED456AF0)
                        {
                          v183 = &xmmword_1ED452F28;
                          goto LABEL_379;
                        }
                      }

                      else
                      {
                        v184 = v14;
LABEL_379:
                        (*v183)(v182);
                      }
                    }

                    else
                    {
                      v184 = v14;
                    }

LABEL_380:
                    sqlite3_exec(v190, "RELEASE changeset", 0, 0, 0);
                    if (!v190)
                    {
                      v186 = "NULL";
                      goto LABEL_389;
                    }

                    v185 = *(v190 + 113);
                    if (v185 == 186)
                    {
                      goto LABEL_384;
                    }

                    if (v185 == 118)
                    {
                      v187 = *(v190 + 3);
                      if (v187)
                      {
                        xmmword_1ED452F28(v187);
                      }
                    }

                    else
                    {
                      if (v185 == 109)
                      {
LABEL_384:
                        v186 = "unopened";
                      }

                      else
                      {
                        v186 = "invalid";
                      }

LABEL_389:
                      sqlite3_log(21, "API call with %s database connection pointer", v186);
                      sub_1819012D0(192543);
                    }

                    return v184;
                  }

LABEL_377:
                  v184 = v14;
                  *a5 = v15;
                  *a6 = v203;
                  v203 = 0;
                  goto LABEL_380;
                }
              }

              else
              {
                v16 = 1;
              }

              v13 = *v13;
              if (!v13)
              {
                goto LABEL_365;
              }
            }
          }

          v14 = 0;
          v15 = 0;
          if (v6)
          {
            goto LABEL_370;
          }

          goto LABEL_377;
        case 109:
LABEL_10:
          v11 = "unopened";
          break;
        default:
          v11 = "invalid";
          break;
      }
    }

    else
    {
      v11 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v11);
    sub_1819012D0(192543);
    goto LABEL_16;
  }

  return result;
}

uint64_t sqlite3session_changeset_strm(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  if (a2)
  {
    return sub_18191FDBC(a1, 0, a2, a3, 0, 0);
  }

  else
  {
    return 21;
  }
}

uint64_t sqlite3session_patchset_strm(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  if (a2)
  {
    return sub_18191FDBC(a1, 1, a2, a3, 0, 0);
  }

  else
  {
    return 21;
  }
}

uint64_t sqlite3session_patchset(uint64_t a1, int *a2, uint64_t *a3)
{
  if (a2 && a3)
  {
    return sub_18191FDBC(a1, 1, 0, 0, a2, a3);
  }

  else
  {
    return 21;
  }
}

uint64_t sqlite3session_enable(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v6 = "NULL";
    goto LABEL_18;
  }

  v5 = *(v4 + 113);
  if (v5 == 186)
  {
LABEL_5:
    v6 = "unopened";
    goto LABEL_18;
  }

  if (v5 != 118)
  {
    if (v5 == 109)
    {
      goto LABEL_5;
    }

    v6 = "invalid";
LABEL_18:
    sqlite3_log(21, "API call with %s database connection pointer", v6);
    sub_1819012D0(192543);
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v7 = *(v4 + 24);
  if (v7)
  {
    xmmword_1ED452F18(v7);
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_19:
    a2 = *(a1 + 5);
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a1 + 5) = a2;
  v8 = *a1;
  if (!*a1)
  {
LABEL_20:
    v10 = "NULL";
    goto LABEL_22;
  }

LABEL_11:
  v9 = *(v8 + 113);
  if (v9 == 186)
  {
LABEL_14:
    v10 = "unopened";
LABEL_22:
    sqlite3_log(21, "API call with %s database connection pointer", v10);
    sub_1819012D0(192543);
    return a2;
  }

  if (v9 != 118)
  {
    if (v9 != 109)
    {
      v10 = "invalid";
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v11 = *(v8 + 24);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  return a2;
}

uint64_t sqlite3session_indirect(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v6 = "NULL";
    goto LABEL_18;
  }

  v5 = *(v4 + 113);
  if (v5 == 186)
  {
LABEL_5:
    v6 = "unopened";
    goto LABEL_18;
  }

  if (v5 != 118)
  {
    if (v5 == 109)
    {
      goto LABEL_5;
    }

    v6 = "invalid";
LABEL_18:
    sqlite3_log(21, "API call with %s database connection pointer", v6);
    sub_1819012D0(192543);
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v7 = *(v4 + 24);
  if (v7)
  {
    xmmword_1ED452F18(v7);
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_19:
    a2 = *(a1 + 6);
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a1 + 6) = a2;
  v8 = *a1;
  if (!*a1)
  {
LABEL_20:
    v10 = "NULL";
    goto LABEL_22;
  }

LABEL_11:
  v9 = *(v8 + 113);
  if (v9 == 186)
  {
LABEL_14:
    v10 = "unopened";
LABEL_22:
    sqlite3_log(21, "API call with %s database connection pointer", v10);
    sub_1819012D0(192543);
    return a2;
  }

  if (v9 != 118)
  {
    if (v9 != 109)
    {
      v10 = "invalid";
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v11 = *(v8 + 24);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  return a2;
}

BOOL sqlite3session_isempty(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v4 = "NULL";
    goto LABEL_12;
  }

  v3 = *(v2 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
    goto LABEL_12;
  }

  if (v3 != 118)
  {
    if (v3 == 109)
    {
      goto LABEL_5;
    }

    v4 = "invalid";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v4);
    sub_1819012D0(192543);
    v6 = a1[11];
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_22:
    v9 = 1;
    v10 = *a1;
    if (*a1)
    {
      goto LABEL_18;
    }

LABEL_23:
    v12 = "NULL";
    goto LABEL_27;
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    xmmword_1ED452F18(v5);
  }

  v6 = a1[11];
  if (!v6)
  {
    goto LABEL_22;
  }

  do
  {
LABEL_13:
    v7 = *(v6 + 16);
    v6 = *v6;
    if (v6)
    {
      v8 = v7 < 1;
    }

    else
    {
      v8 = 0;
    }
  }

  while (v8);
  v9 = v7 < 1;
  v10 = *a1;
  if (!*a1)
  {
    goto LABEL_23;
  }

LABEL_18:
  v11 = *(v10 + 113);
  if (v11 == 186)
  {
LABEL_21:
    v12 = "unopened";
LABEL_27:
    sqlite3_log(21, "API call with %s database connection pointer", v12);
    sub_1819012D0(192543);
    return v9;
  }

  if (v11 != 118)
  {
    if (v11 != 109)
    {
      v12 = "invalid";
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  return v9;
}

uint64_t sqlite3session_object_config(uint64_t a1, int a2, int *a3)
{
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return 21;
    }

    v3 = *a3;
    if (*a3 < 0)
    {
      v5 = 0;
      v4 = 16;
      goto LABEL_12;
    }

    v4 = 16;
    if (*(a1 + 88))
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = 0;
    *(a1 + v4) = v3 != 0;
    goto LABEL_12;
  }

  v3 = *a3;
  if (*a3 < 0)
  {
    v5 = 0;
    v4 = 32;
    goto LABEL_12;
  }

  v4 = 32;
  if (!*(a1 + 88))
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = 21;
LABEL_12:
  *a3 = *(a1 + v4);
  return v5;
}

double sqlite3changeset_start(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  if (!sqlite3_initialize())
  {
    v7 = sub_181902484(152, 0x10B00400C7E3458);
    if (v7)
    {
      result = 0.0;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 16) = a3;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 144) = 0;
      *(v7 + 112) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 48) = 0u;
      *v7 = 0u;
      *(v7 + 24) = a2;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 1;
      *(v7 + 92) = 0;
      *(v7 + 96) = 0;
      *a1 = v7;
    }
  }

  return result;
}

double sqlite3changeset_start_v2(uint64_t *a1, int a2, uint64_t a3, unsigned int a4)
{
  *a1 = 0;
  if (!sqlite3_initialize())
  {
    v9 = sub_181902484(152, 0x10B00400C7E3458);
    if (v9)
    {
      result = 0.0;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 16) = a3;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 144) = 0;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 48) = 0u;
      *v9 = 0u;
      *(v9 + 24) = a2;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 1;
      *(v9 + 92) = (a4 >> 1) & 1;
      *a1 = v9;
    }
  }

  return result;
}

uint64_t sqlite3changeset_start_strm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v7 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  result = 0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 144) = 0;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 64) = a2 == 0;
  *(v8 + 92) = 0;
  *(v8 + 96) = 0;
  *a1 = v8;
  return result;
}

uint64_t sqlite3changeset_start_v2_strm(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *a1 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v9 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v9)
  {
    return 7;
  }

  v10 = v9;
  result = 0;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 144) = 0;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 64) = a2 == 0;
  *(v10 + 92) = (a4 >> 1) & 1;
  *(v10 + 96) = 0;
  *a1 = v10;
  return result;
}

uint64_t sub_181921A00(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  while (2)
  {
    v93 = 0;
    result = *(a1 + 100);
    if (result)
    {
      break;
    }

    v8 = *(a1 + 144);
    if (v8)
    {
      v9 = *(a1 + 120);
      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = *(a1 + 144);
          v12 = *(v11 + 8 * v10);
          if (v12)
          {
            if ((*(v12 + 20) & 0x9000) != 0 || *(v12 + 32))
            {
              sub_18193CA00(*(v11 + 8 * v10));
            }

            sub_181929C84(*(v12 + 24), v12);
            v9 = *(a1 + 120);
          }

          ++v10;
        }

        while (v10 < 2 * v9);
        v8 = *(a1 + 144);
      }

      bzero(v8, 16 * v9);
    }

    result = sub_181A147FC(a1, 2);
    *(a1 + 100) = result;
    if (result)
    {
      break;
    }

    v15 = *(a1 + 8);
    *(a1 + 4) = v15;
    if (!*(a1 + 48) || v15 < dword_1EA8315B8)
    {
      if (v15 < *(a1 + 24))
      {
        goto LABEL_30;
      }

      return 101;
    }

    v16 = (*(a1 + 40) - v15);
    if (v16 < 1)
    {
      v17 = v15;
    }

    else
    {
      memmove(*(a1 + 32), (*(a1 + 32) + v15), v16);
      v17 = *(a1 + 4);
      LODWORD(v15) = *(a1 + 8);
      LODWORD(v16) = *(a1 + 40) - v17;
    }

    *(a1 + 40) = v16;
    LODWORD(v15) = v15 - v17;
    *(a1 + 4) = 0;
    *(a1 + 8) = v15;
    *(a1 + 24) = v16;
    if (v15 >= v16)
    {
      return 101;
    }

LABEL_30:
    while (1)
    {
      v18 = *(a1 + 16);
      v19 = v15 + 1;
      *(a1 + 8) = v19;
      v20 = *(v18 + v15);
      if ((v20 | 4) != 0x54)
      {
        break;
      }

      if (a4)
      {
        *a4 = 1;
      }

      *(a1 + 88) = v20 == 80;
      v94 = 0;
      result = sub_181A14ECC(a1, &v94);
      if (!result)
      {
        v24 = *(a1 + 8);
        v25 = (*(a1 + 16) + v24);
        v26 = *v25;
        if (v26 < 0)
        {
          v36 = v25[1];
          if (v25[1] < 0)
          {
            v38 = v25[2];
            if (v38 < 0)
            {
              v95 = 0;
              v27 = sub_1818C7200(v25, &v95);
              if (HIDWORD(v95))
              {
                v26 = -1;
              }

              else
              {
                v26 = v95;
              }
            }

            else
            {
              v26 = ((v26 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v38;
              v27 = 3;
            }
          }

          else
          {
            v26 = v36 | ((v26 & 0x7F) << 7);
            v27 = 2;
          }

          *(a1 + 120) = v26;
          if (v26 >= 1)
          {
LABEL_38:
            v28 = v94 - v27;
            *(a1 + 8) = v27 + v24;
            v29 = v28 + 16 * v26;
            *(a1 + 80) = 0;
            v30 = *(a1 + 84);
            if (v29 <= v30)
            {
              v35 = *(a1 + 72);
              goto LABEL_58;
            }

            if (!v30)
            {
              v30 = 128;
            }

            v31 = v30;
            do
            {
              v32 = v31;
              v31 *= 2;
            }

            while (v31 < v29);
            if (v32 < 1073741696)
            {
LABEL_46:
              v33 = *(a1 + 72);
              v34 = sqlite3_initialize();
              result = 7;
              if (!v31 || v34)
              {
                goto LABEL_34;
              }

              v35 = sub_18190287C(v33, v31, 0x100004077774924);
              if (v35)
              {
                *(a1 + 72) = v35;
                *(a1 + 84) = v31;
                v26 = *(a1 + 120);
LABEL_58:
                v37 = 16 * v26;
                bzero(v35, v37);
                memcpy((*(a1 + 72) + v37), (*(a1 + 16) + *(a1 + 8)), v28);
                result = 0;
                *(a1 + 8) += v28;
                goto LABEL_34;
              }
            }

            else if (v29 <= 2147483391)
            {
              v31 = 2147483391;
              goto LABEL_46;
            }

            result = 7;
            goto LABEL_34;
          }
        }

        else
        {
          *(a1 + 120) = v26;
          v27 = 1;
          if (v26 >= 1)
          {
            goto LABEL_38;
          }
        }

        result = sub_18190EDA8(242823);
      }

LABEL_34:
      v21 = *(a1 + 72);
      *(a1 + 144) = v21;
      if (v21)
      {
        v22 = *(a1 + 120);
        v21 += 16 * v22;
        v23 = v21 + v22;
      }

      else
      {
        v23 = 0;
      }

      *(a1 + 136) = v21;
      *(a1 + 112) = v23;
      *(a1 + 100) = result;
      if (result)
      {
        goto LABEL_15;
      }

      result = sub_181A147FC(a1, 2);
      *(a1 + 100) = result;
      if (result)
      {
        goto LABEL_15;
      }

      LODWORD(v15) = *(a1 + 8);
      *(a1 + 4) = v15;
      if (v15 >= *(a1 + 24))
      {
        return 101;
      }
    }

    v39 = 242909;
    if (!*(a1 + 112) || (v40 = *(a1 + 88)) != 0 && *(a1 + 92))
    {
LABEL_103:
      result = sub_18190EDA8(v39);
      *(a1 + 100) = result;
      break;
    }

    *(a1 + 124) = v20;
    *(a1 + 8) = v15 + 2;
    *(a1 + 128) = *(v18 + v19);
    if (v20 > 0x17 || ((1 << v20) & 0x840200) == 0)
    {
      v39 = 242915;
      goto LABEL_103;
    }

    if (a2)
    {
      if (v20 == 23 && v40 == 0)
      {
        v45 = 2 * *(a1 + 120);
        goto LABEL_105;
      }

      v43 = *(a1 + 120);
      v44 = v20 != 9 || v40 == 0;
      v45 = *(a1 + 120);
      if (!v44)
      {
        if (v43 < 1)
        {
          v45 = 0;
          goto LABEL_105;
        }

        v46 = *(a1 + 136);
        if (v43 >= 4)
        {
          if (v43 >= 0x20)
          {
            v62 = 0uLL;
            v47 = v43 & 0x7FFFFFE0;
            v63 = 0uLL;
            v64 = v46 + 1;
            v65 = v47;
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            v70 = 0uLL;
            v71 = 0uLL;
            v72.i64[0] = 0x100000001;
            v72.i64[1] = 0x100000001;
            do
            {
              v73 = vtstq_s8(v64[-1], v64[-1]);
              v74 = vmovl_u8(*v73.i8);
              v75 = vmovl_high_u8(v73);
              v76 = vtstq_s8(*v64, *v64);
              v77 = vmovl_u8(*v76.i8);
              v78 = vmovl_high_u8(v76);
              v67 = vaddq_s32(v67, vandq_s8(vmovl_high_u16(v75), v72));
              v66 = vaddq_s32(v66, vandq_s8(vmovl_u16(*v75.i8), v72));
              v63 = vaddq_s32(v63, vandq_s8(vmovl_high_u16(v74), v72));
              v62 = vaddq_s32(v62, vandq_s8(vmovl_u16(*v74.i8), v72));
              v71 = vaddq_s32(v71, vandq_s8(vmovl_high_u16(v78), v72));
              v70 = vaddq_s32(v70, vandq_s8(vmovl_u16(*v78.i8), v72));
              v69 = vaddq_s32(v69, vandq_s8(vmovl_high_u16(v77), v72));
              v68 = vaddq_s32(v68, vandq_s8(vmovl_u16(*v77.i8), v72));
              v64 += 2;
              v65 -= 32;
            }

            while (v65);
            v13 = vaddq_s32(vaddq_s32(v69, v63), vaddq_s32(v71, v67));
            v45 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v68, v62), vaddq_s32(v70, v66)), v13));
            if (v47 == v43)
            {
              goto LABEL_105;
            }

            if ((v43 & 0x1C) == 0)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v45 = 0;
            v47 = 0;
          }

          v79 = v47;
          v47 = v43 & 0x7FFFFFFC;
          v80 = v45;
          v81 = (v46->i32 + v79);
          v82 = v79 - v47;
          v83.i64[0] = 0x100000001;
          v83.i64[1] = 0x100000001;
          do
          {
            v84 = *v81++;
            v13.i32[0] = v84;
            v85 = vmovl_u8(*v13.i8).u64[0];
            v13 = vandq_s8(vmovl_u16(vtst_s16(v85, v85)), v83);
            v80 = vaddq_s32(v80, v13);
            v82 += 4;
          }

          while (v82);
          v45 = vaddvq_s32(v80);
          if (v47 != v43)
          {
            goto LABEL_137;
          }
        }

        else
        {
          v47 = 0;
          v45 = 0;
LABEL_137:
          v86 = v43 - v47;
          v87 = &v46->u8[v47];
          do
          {
            if (*v87++)
            {
              ++v45;
            }

            --v86;
          }

          while (v86);
        }
      }

LABEL_105:
      result = sub_181A149F4(a1, v45, a3);
      *(a1 + 100) = result;
      if (!result)
      {
        v56 = *(a1 + 8);
        *a2 = *(a1 + 16) + v56;
        *(a1 + 8) = *a3 + v56;
        goto LABEL_16;
      }

      break;
    }

    v48 = *(a1 + 92);
    v49 = *(a1 + 144);
    v50 = *(a1 + 120);
    if (v48)
    {
      v51 = v49 + 8 * v50;
    }

    else
    {
      v51 = *(a1 + 144);
    }

    if (v48)
    {
      v52 = *(a1 + 144);
    }

    else
    {
      v52 = v49 + 8 * v50;
    }

    v54 = v20 == 9 || v40 == 0;
    if (v20 != 18 && v54)
    {
      if (v40)
      {
        v55 = *(a1 + 136);
      }

      else
      {
        v55 = 0;
      }

      result = sub_181A14B3C(a1, v50, v55, v51, 0);
      *(a1 + 100) = result;
      if (result)
      {
        break;
      }

      v20 = *(a1 + 124);
    }

    if (v20 == 9 || (result = sub_181A14B3C(a1, *(a1 + 120), 0, v52, &v93), (*(a1 + 100) = result) == 0))
    {
      v57 = *(a1 + 88);
      if (v57)
      {
        v58 = *(a1 + 124);
        goto LABEL_115;
      }

      v58 = *(a1 + 124);
      if (!*(a1 + 92))
      {
        goto LABEL_146;
      }

LABEL_115:
      if (v58 == 23)
      {
        v59 = *(a1 + 120);
        if (v59 >= 1)
        {
          for (i = 0; v59 != i; ++i)
          {
            if (*(*(a1 + 136) + i))
            {
              *(*(a1 + 144) + 8 * i) = *(*(a1 + 144) + 8 * i + 8 * v59);
              v61 = *(a1 + 144);
              if (!*(v61 + 8 * i))
              {
                v39 = 242959;
                goto LABEL_103;
              }

              *(v61 + 8 * v59 + 8 * i) = 0;
            }
          }
        }

        v58 = 23;
      }

      else
      {
        if (!*(a1 + 92))
        {
          goto LABEL_145;
        }

        if (v58 == 18)
        {
          v58 = 9;
        }

        else
        {
          if (v58 != 9)
          {
            goto LABEL_145;
          }

          v58 = 18;
        }

        *(a1 + 124) = v58;
      }

LABEL_145:
      if (!v57)
      {
LABEL_146:
        if (v58 == 23)
        {
          v89 = *(a1 + 120);
          if (v89 >= 1)
          {
            for (j = 0; j < v89; ++j)
            {
              if (!*(*(a1 + 136) + j))
              {
                v91 = *(a1 + 144);
                if (!*(v91 + 8 * (j + v89)))
                {
                  sub_18190B0E8(*(v91 + 8 * j));
                  *(*(a1 + 144) + 8 * j) = 0;
                  v89 = *(a1 + 120);
                }
              }
            }
          }
        }
      }

LABEL_16:
      if (*(a1 + 96))
      {
        v14 = v93 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return 100;
      }

      continue;
    }

    break;
  }

LABEL_15:
  if (result == 100)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sqlite3changeset_op(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a4 = *(a1 + 124);
  *a3 = *(a1 + 120);
  *a2 = *(a1 + 112);
  if (a5)
  {
    *a5 = *(a1 + 128);
  }

  return 0;
}

uint64_t sqlite3changeset_pk(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = *(a1 + 136);
  if (a3)
  {
    *a3 = *(a1 + 120);
  }

  return 0;
}

uint64_t sqlite3changeset_old(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = *(a1 + 124);
  if (v3 != 23 && v3 != 9)
  {
    return 21;
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 120) <= a2)
  {
    return 25;
  }

  result = 0;
  *a3 = *(*(a1 + 144) + 8 * a2);
  return result;
}

uint64_t sqlite3changeset_new(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 124);
  if (v3 != 23 && v3 != 18)
  {
    return 21;
  }

  if (a2 < 0)
  {
    return 25;
  }

  v5 = *(a1 + 120);
  if (v5 <= a2)
  {
    return 25;
  }

  result = 0;
  *a3 = *(*(a1 + 144) + 8 * (v5 + a2));
  return result;
}

uint64_t sqlite3changeset_conflict(uint64_t a1, int a2, sqlite3_value **a3)
{
  v4 = *(a1 + 104);
  if (!v4)
  {
    return 21;
  }

  if (a2 < 0 || *(a1 + 120) <= a2)
  {
    return 25;
  }

  v6 = sqlite3_column_value(v4, a2);
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t sqlite3changeset_fk_conflicts(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 104))
  {
    return 21;
  }

  if (*(a1 + 144))
  {
    return 21;
  }

  result = 0;
  *a2 = *(a1 + 120);
  return result;
}

uint64_t sqlite3changeset_finalize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = *(a1 + 100);
  if (*(a1 + 144))
  {
    v3 = *(a1 + 120);
    if (v3 >= 1)
    {
      v4 = 0;
      do
      {
        v5 = *(v1 + 144);
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          if ((*(v6 + 20) & 0x9000) != 0 || *(v6 + 32))
          {
            sub_18193CA00(*(v5 + 8 * v4));
          }

          sub_181929C84(*(v6 + 24), v6);
          v3 = *(v1 + 120);
        }

        ++v4;
      }

      while (v4 < 2 * v3);
    }
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    v8 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_18:
      (*v8)(v7);
      goto LABEL_19;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
    --qword_1ED456A90;
    off_1ED452EB0(v7);
    v7 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v8 = &xmmword_1ED452F28;
      goto LABEL_18;
    }
  }

LABEL_19:
  v9 = *(v1 + 32);
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_25;
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
LABEL_25:
    (*v10)(v9);
  }

LABEL_26:
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_31:
    (*v11)(v1);
    return v2;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v11 = &xmmword_1ED452F28;
    goto LABEL_31;
  }

  return v2;
}

uint64_t sqlite3changeset_invert(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v5 = 0u;
  v7 = a1;
  v6 = a2;
  return sub_18192259C(&v5, 0, 0, a3, a4);
}

uint64_t sub_18192259C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  if (a5)
  {
    *a5 = 0;
    *a4 = 0;
  }

  v8 = sub_181A147FC(a1, 2);
  if (v8)
  {
    return v8;
  }

  v109 = a4;
  v110 = a5;
  v9 = 0;
  v10 = 0;
  LODWORD(v11) = 0;
  v113 = 0;
  v12 = 0;
  v13 = 0;
  v117 = 0;
  while (1)
  {
    v15 = *(a1 + 8);
    if (v15 >= *(a1 + 24))
    {
      break;
    }

    __dst = v9;
    v115 = v10;
    v16 = (*(a1 + 16) + v15);
    v17 = *v16;
    if (v17 > 0x16)
    {
      if (v17 != 23)
      {
        if (v17 != 84)
        {
          goto LABEL_235;
        }

        __n[0] = 0;
        *(a1 + 8) = v15 + 1;
        v30 = sub_181A14ECC(a1, __n);
        if (v30)
        {
          goto LABEL_236;
        }

        v31 = *(a1 + 16);
        v32 = *(a1 + 8);
        v33 = v31 + v32;
        v10 = v115;
        v113 = *(v31 + v32);
        if (v113 < 0)
        {
          v71 = *(v33 + 1);
          v35 = v117;
          if (*(v33 + 1) < 0)
          {
            v83 = *(v33 + 2);
            if (v83 < 0)
            {
              *&__n[1] = 0;
              v34 = sub_1818C7200(v33, &__n[1]);
              if (__n[2])
              {
                v84 = -1;
              }

              else
              {
                v84 = __n[1];
              }

              v113 = v84;
            }

            else
            {
              v113 = ((v113 & 0x7F) << 14) | ((v71 & 0x7F) << 7) | v83;
              v34 = 3;
            }
          }

          else
          {
            v113 = v71 | ((v113 & 0x7F) << 7);
            v34 = 2;
          }
        }

        else
        {
          v34 = 1;
          v35 = v117;
        }

        if (v113 >= 1)
        {
          if (v113 <= v11)
          {
            v88 = v9;
          }

          else
          {
            if (v11)
            {
              v85 = v11;
            }

            else
            {
              v85 = 128;
            }

            v11 = v85;
            do
            {
              v86 = v11;
              v11 *= 2;
            }

            while (v11 < v113);
            if (v86 > 1073741695)
            {
              v11 = 2147483391;
              if (v113 > 0x7FFFFEFF)
              {
LABEL_238:
                v8 = 7;
                goto LABEL_244;
              }
            }

            v87 = sqlite3_initialize();
            v8 = 7;
            if (!v11 || v87)
            {
              goto LABEL_244;
            }

            v88 = sub_18190287C(v9, v11, 0x100004077774924);
            if (!v88)
            {
              v10 = v115;
              goto LABEL_244;
            }

            v35 = v117;
          }

          __dst = v88;
          memcpy(v88, (v31 + v32 + v34), v113);
        }

        v89 = v13;
        if (v13 >= v12)
        {
          if (v12)
          {
            v90 = v12;
          }

          else
          {
            v90 = 128;
          }

          v91 = v90;
          do
          {
            v92 = v91;
            v91 *= 2;
          }

          while (v91 <= v13);
          if (v92 > 1073741695)
          {
            v91 = 2147483391;
            if (v13 > 2147483390)
            {
LABEL_239:
              v8 = 7;
              goto LABEL_243;
            }
          }

          v93 = sqlite3_initialize();
          v8 = 7;
          if (!v91)
          {
            goto LABEL_243;
          }

          if (v93)
          {
            goto LABEL_243;
          }

          v94 = sub_18190287C(v117, v91, 0x100004077774924);
          if (!v94)
          {
            goto LABEL_243;
          }

          v35 = v94;
          v12 = v91;
        }

        v13 = v13 + 1;
        *(v35 + v89) = 84;
        v95 = __n[0];
        if (__n[0] < 1)
        {
          v9 = __dst;
        }

        else
        {
          v96 = *(a1 + 16);
          v97 = *(a1 + 8);
          v98 = __n[0] + v13;
          if (v98 > v12)
          {
            if (v12)
            {
              v99 = v12;
            }

            else
            {
              v99 = 128;
            }

            do
            {
              v100 = v99;
              v99 *= 2;
            }

            while (v99 < v98);
            v117 = v35;
            if (v100 > 1073741695)
            {
              v99 = 2147483391;
              if (v98 > 2147483391)
              {
                goto LABEL_239;
              }
            }

            v101 = sqlite3_initialize();
            v8 = 7;
            if (!v99)
            {
              goto LABEL_243;
            }

            if (v101)
            {
              goto LABEL_243;
            }

            v102 = sub_18190287C(v117, v99, 0x100004077774924);
            if (!v102)
            {
              goto LABEL_243;
            }

            v12 = v99;
            v35 = v102;
          }

          v9 = __dst;
          memcpy((v35 + v13), (v96 + v97), v95);
          v13 = (v95 + v13);
        }

        *(a1 + 8) += __n[0];
        if (v115)
        {
          v103 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_225;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v115);
          --qword_1ED456A90;
          off_1ED452EB0(v115);
          if (xmmword_1ED456AF0)
          {
            v103 = &xmmword_1ED452F28;
LABEL_225:
            (*v103)();
          }
        }

        v117 = v35;
        v10 = 0;
        if (!a2)
        {
          goto LABEL_6;
        }

        goto LABEL_138;
      }

      v10 = v115;
      v36 = v117;
      if (!v115)
      {
        if (sqlite3_initialize())
        {
          v10 = 0;
          v8 = 7;
          goto LABEL_244;
        }

        v37 = sub_181902484(16 * v113, 0x2004093837F09);
        v10 = v37;
        if (!v37)
        {
          goto LABEL_238;
        }

        bzero(v37, 16 * v113);
      }

      v116 = v10;
      if (v13 >= v12)
      {
        if (v12)
        {
          v42 = v12;
        }

        else
        {
          v42 = 128;
        }

        v43 = v42;
        do
        {
          v44 = v43;
          v43 *= 2;
        }

        while (v43 <= v13);
        if (v44 <= 1073741695 || (v43 = 2147483391, v13 <= 2147483390))
        {
          v45 = sqlite3_initialize();
          if (v43)
          {
            if (!v45)
            {
              v46 = sub_18190287C(v117, v43, 0x100004077774924);
              if (v46)
              {
                v36 = v46;
                v12 = v43;
                goto LABEL_42;
              }
            }
          }
        }

        v38 = v13;
      }

      else
      {
LABEL_42:
        *(v36 + v13) = 23;
        v38 = v13 + 1;
        v39 = *(*(a1 + 16) + *(a1 + 8) + 1);
        if (v38 < v12)
        {
          goto LABEL_43;
        }

        if (v12)
        {
          v72 = v12;
        }

        else
        {
          v72 = 128;
        }

        v73 = v72;
        do
        {
          v74 = v73;
          v73 *= 2;
        }

        while (v73 <= v38);
        if (v74 <= 1073741695 || (v73 = 2147483391, v13 <= 2147483389))
        {
          v75 = sqlite3_initialize();
          if (v73)
          {
            if (!v75)
            {
              v76 = sub_18190287C(v36, v73, 0x100004077774924);
              if (v76)
              {
                v36 = v76;
                v12 = v73;
LABEL_43:
                *(v36 + v38) = v39;
                v38 = (v13 + 2);
              }
            }
          }
        }
      }

      v117 = v36;
      *(a1 + 8) += 2;
      v50 = v113;
      v10 = v116;
      v8 = sub_181A14B3C(a1, v113, 0, v116, 0);
      if (!v8)
      {
        v8 = sub_181A14B3C(a1, v113, 0, v116 + 8 * v113, 0);
      }

      v9 = __dst;
      if (v113 < 1)
      {
LABEL_136:
        bzero(v10, 16 * v50);
        v13 = v38;
        if (v8)
        {
          goto LABEL_244;
        }

LABEL_137:
        if (!a2)
        {
          goto LABEL_6;
        }

        goto LABEL_138;
      }

      v51 = 0;
      while (2)
      {
        if (*(v9 + v51))
        {
          v52 = 0;
        }

        else
        {
          v52 = v113;
        }

        if (!v8)
        {
          v53 = *(v10 + v52 + v51);
          *&__n[1] = 0;
          v54 = sub_181A12484(0, v53, &__n[1]);
          if (v54)
          {
            v8 = v54;
          }

          else
          {
            v55 = *&__n[1] + v38;
            if (v55 <= v12)
            {
              v58 = v117;
              goto LABEL_94;
            }

            if (v12)
            {
              v56 = v12;
            }

            else
            {
              v56 = 128;
            }

            do
            {
              v57 = v56;
              v56 *= 2;
            }

            while (v56 < v55);
            if (v57 > 1073741695)
            {
              v56 = 2147483391;
              if (v55 > 2147483391)
              {
                v8 = 7;
                goto LABEL_99;
              }
            }

            v59 = sqlite3_initialize();
            v8 = 7;
            if (v56 && !v59 && (v58 = sub_18190287C(v117, v56, 0x100004077774924)) != 0)
            {
              v12 = v56;
              v9 = __dst;
LABEL_94:
              v117 = v58;
              sub_181A12484(v58 + v38, v53, 0);
              v8 = 0;
              v38 = (v38 + __n[1]);
            }

            else
            {
LABEL_99:
              v9 = __dst;
            }

            v10 = v116;
          }
        }

        if (++v51 != v113)
        {
          continue;
        }

        break;
      }

      v60 = 0;
      while (2)
      {
        if (*(v9 + v60))
        {
          v61 = 0;
          if (!v8)
          {
LABEL_108:
            *&__n[1] = 0;
            v62 = sub_181A12484(0, v61, &__n[1]);
            if (v62)
            {
              v8 = v62;
            }

            else
            {
              v63 = *&__n[1] + v38;
              if (v63 <= v12)
              {
                v66 = v117;
                goto LABEL_118;
              }

              if (v12)
              {
                v64 = v12;
              }

              else
              {
                v64 = 128;
              }

              do
              {
                v65 = v64;
                v64 *= 2;
              }

              while (v64 < v63);
              if (v65 > 1073741695)
              {
                v64 = 2147483391;
                if (v63 > 2147483391)
                {
                  v8 = 7;
                  goto LABEL_123;
                }
              }

              v67 = sqlite3_initialize();
              v8 = 7;
              if (v64 && !v67 && (v66 = sub_18190287C(v117, v64, 0x100004077774924)) != 0)
              {
                v12 = v64;
                v9 = __dst;
LABEL_118:
                v117 = v66;
                sub_181A12484(v66 + v38, v61, 0);
                v8 = 0;
                v38 = (v38 + __n[1]);
              }

              else
              {
LABEL_123:
                v9 = __dst;
              }

              v10 = v116;
            }
          }
        }

        else
        {
          v61 = *(v10 + v60);
          if (!v8)
          {
            goto LABEL_108;
          }
        }

        if (++v60 == v113)
        {
          v50 = v113;
          v68 = v10;
          if (2 * v113 <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = (2 * v113);
          }

          do
          {
            v70 = *v68;
            if (*v68)
            {
              if ((*(v70 + 20) & 0x9000) != 0 || *(v70 + 32))
              {
                sub_18193CA00(*v68);
              }

              sub_181929C84(*(v70 + 24), v70);
            }

            ++v68;
            --v69;
          }

          while (v69);
          v9 = __dst;
          v10 = v116;
          goto LABEL_136;
        }

        continue;
      }
    }

    if (v17 != 9 && v17 != 18)
    {
LABEL_235:
      v30 = sub_18190EDA8(243324);
LABEL_236:
      v8 = v30;
      v10 = v115;
      goto LABEL_244;
    }

    __n[1] = 0;
    v19 = v16[1];
    *(a1 + 8) = v15 + 2;
    v20 = sub_181A149F4(a1, v113, &__n[1]);
    if (v17 == 9)
    {
      v21 = 18;
    }

    else
    {
      v21 = 9;
    }

    if (v20)
    {
      v8 = v20;
      v10 = v115;
      goto LABEL_19;
    }

    if (v13 >= v12)
    {
      if (v12)
      {
        v47 = v12;
      }

      else
      {
        v47 = 128;
      }

      v48 = v47;
      do
      {
        v49 = v48;
        v48 *= 2;
      }

      while (v48 <= v13);
      if (v49 > 1073741695)
      {
        v48 = 2147483391;
        if (v13 > 2147483390)
        {
          v8 = 7;
LABEL_158:
          v9 = __dst;
          v10 = v115;
          goto LABEL_19;
        }
      }

      v77 = sqlite3_initialize();
      v8 = 7;
      if (!v48)
      {
        goto LABEL_158;
      }

      if (v77)
      {
        goto LABEL_158;
      }

      v40 = sub_18190287C(v117, v48, 0x100004077774924);
      if (!v40)
      {
        goto LABEL_158;
      }

      v12 = v48;
      v9 = __dst;
    }

    else
    {
      v40 = v117;
    }

    *(v40 + v13) = v21;
    v41 = v13 + 1;
    v117 = v40;
    if (v41 < v12)
    {
      v10 = v115;
LABEL_48:
      v8 = 0;
      v13 = (v13 + 2);
      *(v117 + v41) = v19;
      goto LABEL_19;
    }

    if (v12)
    {
      v78 = v12;
    }

    else
    {
      v78 = 128;
    }

    v79 = v78;
    v10 = v115;
    do
    {
      v80 = v79;
      v79 *= 2;
    }

    while (v79 <= v41);
    if (v80 <= 1073741695 || (v79 = 2147483391, v13 <= 2147483389))
    {
      v81 = sqlite3_initialize();
      v8 = 7;
      if (v79)
      {
        if (!v81)
        {
          v82 = sub_18190287C(v117, v79, 0x100004077774924);
          if (v82)
          {
            v117 = v82;
            v12 = v79;
            v9 = __dst;
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v8 = 7;
    }

    v13 = v13 + 1;
    v9 = __dst;
LABEL_19:
    v22 = *(a1 + 8);
    v23 = __n[1];
    if (__n[1] < 1)
    {
      *(a1 + 8) = v22 + __n[1];
      if (v8)
      {
        goto LABEL_244;
      }

      goto LABEL_137;
    }

    if (v8)
    {
      goto LABEL_242;
    }

    v24 = *(a1 + 16);
    v25 = __n[1] + v13;
    if (v25 <= v12)
    {
      v29 = v117;
    }

    else
    {
      if (v12)
      {
        v26 = v12;
      }

      else
      {
        v26 = 128;
      }

      do
      {
        v27 = v26;
        v26 *= 2;
      }

      while (v26 < v25);
      if (v27 > 1073741695)
      {
        v26 = 2147483391;
        if (v25 > 2147483391)
        {
          v8 = 7;
LABEL_242:
          *(a1 + 8) += v23;
LABEL_243:
          v9 = __dst;
          v10 = v115;
          goto LABEL_244;
        }
      }

      v28 = sqlite3_initialize();
      v8 = 7;
      if (!v26 || v28)
      {
        goto LABEL_242;
      }

      v29 = sub_18190287C(v117, v26, 0x100004077774924);
      if (!v29)
      {
        LODWORD(v23) = __n[1];
        goto LABEL_242;
      }

      v12 = v26;
      v9 = __dst;
    }

    v117 = v29;
    memcpy((v29 + v13), (v24 + v22), v23);
    v13 = (v23 + v13);
    *(a1 + 8) += __n[1];
    v10 = v115;
    if (!a2)
    {
      goto LABEL_6;
    }

LABEL_138:
    if (v13 >= dword_1EA8315B8)
    {
      v14 = a2(a3, v117, v13);
      if (v14)
      {
        goto LABEL_234;
      }

      v13 = 0;
    }

LABEL_6:
    v14 = sub_181A147FC(a1, 2);
    if (v14)
    {
      goto LABEL_234;
    }
  }

  if (v109 && v110)
  {
    v104 = v10;
    v8 = 0;
    *v109 = v13;
    *v110 = v117;
    goto LABEL_253;
  }

  v8 = 0;
  if (a2 && v13 >= 1)
  {
    v14 = a2(a3, v117, v13);
LABEL_234:
    v8 = v14;
  }

LABEL_244:
  v104 = v10;
  if (!v117)
  {
LABEL_253:
    if (!v104)
    {
      goto LABEL_260;
    }

    goto LABEL_254;
  }

  v105 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_250:
    (*v105)(v117);
    goto LABEL_251;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v117);
  --qword_1ED456A90;
  off_1ED452EB0(v117);
  v117 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v105 = &xmmword_1ED452F28;
    goto LABEL_250;
  }

LABEL_251:
  if (!v10)
  {
    goto LABEL_260;
  }

LABEL_254:
  v106 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_259:
    (*v106)(v104);
    goto LABEL_260;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v104);
  --qword_1ED456A90;
  off_1ED452EB0(v104);
  if (xmmword_1ED456AF0)
  {
    v104 = xmmword_1ED456AF0;
    v106 = &xmmword_1ED452F28;
    goto LABEL_259;
  }

LABEL_260:
  if (v9)
  {
    v107 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_266:
      (*v107)(v9);
      return v8;
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
      v107 = &xmmword_1ED452F28;
      goto LABEL_266;
    }
  }

  return v8;
}

uint64_t sqlite3changeset_invert_strm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v10 = a1;
  v11 = a2;
  v12 = 0;
  v4 = sub_18192259C(v8, a3, a4, 0, 0);
  v5 = v9;
  if (v9)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v6)(v5);
      return v4;
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

  return v4;
}

uint64_t sqlite3changeset_apply_v2(sqlite3 *a1, int a2, uint64_t a3, unsigned int (*a4)(uint64_t, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, void *a7, _DWORD *a8, unsigned int a9)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v18 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v18)
  {
    return 7;
  }

  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 144) = 0;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 16) = a3;
  *(v18 + 24) = a2;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  *(v18 + 92) = (a9 >> 1) & 1;
  *(v18 + 96) = 1;

  return sub_1819235F4(a1, v18, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1819235F4(sqlite3 *a1, uint64_t a2, unsigned int (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6, _DWORD *a7, unsigned int a8)
{
  v13 = a1;
  v93 = 0;
  v14 = *(a1 + 113);
  v75 = *(a1 + 6);
  switch(v14)
  {
    case 186:
      goto LABEL_4;
    case 118:
      v16 = *(a1 + 3);
      if (v16)
      {
        xmmword_1ED452F18(v16);
      }

      goto LABEL_9;
    case 109:
LABEL_4:
      v15 = "unopened";
      break;
    default:
      v15 = "invalid";
      break;
  }

  sqlite3_log(21, "API call with %s database connection pointer", v15);
  sub_1819012D0(192543);
LABEL_9:
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  if ((a8 & 8) != 0)
  {
    *(v13 + 6) |= 0x800000000uLL;
    **(*(v13 + 4) + 24) -= 32;
  }

  *a2 = 1;
  v85 = 0uLL;
  v86 = 0uLL;
  v87 = 0uLL;
  v88 = 0uLL;
  v74 = a6;
  v89 = 0uLL;
  v90 = 0uLL;
  if (a6)
  {
    v17 = a7 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v91 = 0uLL;
  v92 = 0uLL;
  BYTE9(v92) = v18;
  LODWORD(v90) = (a8 >> 1) & 1;
  BYTE10(v92) = (a8 & 4) != 0;
  v76 = a8;
  if ((a8 & 1) == 0)
  {
    v19 = sqlite3_exec(v13, "SAVEPOINT changeset_apply", 0, 0, 0);
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v19 = sqlite3_exec(v13, "PRAGMA defer_foreign_keys = 1", 0, 0, 0);
  if (v19)
  {
    goto LABEL_20;
  }

  v78 = a4;
  v23 = 0;
  v24 = 0;
  v80 = v13;
  while (1)
  {
    while (1)
    {
      if (sub_181921A00(a2, 0, 0, 0) != 100)
      {
        v21 = *(a2 + 88);
        v52 = sqlite3changeset_finalize(a2);
        if (v52)
        {
          v20 = v52;
          goto LABEL_22;
        }

        v53 = sub_181A14FF8(v13, v21, v93, &v85, v78, a5);
        v22 = v76;
        if (v53)
        {
          v20 = v53;
          goto LABEL_23;
        }

        v54 = *(v13 + 113);
        switch(v54)
        {
          case 186:
            goto LABEL_113;
          case 118:
            v56 = *(v13 + 3);
            if (v56)
            {
              xmmword_1ED452F18(v56);
            }

            v57 = *(v13 + 102) > 0 || *(v13 + 101) > 0;
            v73 = *(v13 + 3);
            if (v73)
            {
              xmmword_1ED452F28(v73);
            }

            if (v57)
            {
              v84 = 0;
              v82 = 0u;
              v83 = 0u;
              memset(v81, 0, sizeof(v81));
              DWORD2(v82) = v57;
              if (v78(a5, 5, v81))
              {
                v20 = 19;
                goto LABEL_23;
              }
            }

LABEL_121:
            v20 = sqlite3_exec(v13, "PRAGMA defer_foreign_keys = 0", 0, 0, 0);
            if ((v76 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_122;
          case 109:
LABEL_113:
            v55 = "unopened";
            break;
          default:
            v55 = "invalid";
            break;
        }

        sqlite3_log(21, "API call with %s database connection pointer", v55);
        sub_1819012D0(25486);
        goto LABEL_121;
      }

      v25 = *(a2 + 120);
      v26 = *(a2 + 112);
      if (!v93)
      {
        goto LABEL_45;
      }

      if (v24 > -2)
      {
        break;
      }

      sub_1819012D0(37608);
      if (!v23)
      {
        goto LABEL_28;
      }

LABEL_90:
      v23 = 1;
      v13 = v80;
    }

    if (!v26)
    {
      break;
    }

    if (v24 == -1)
    {
      v24 = -1;
      if (!v23)
      {
        goto LABEL_28;
      }

      goto LABEL_90;
    }

    v27 = v24 + 2;
    v28 = v93;
    v29 = *(a2 + 112);
    do
    {
      v30 = *v29;
      if (!*v29)
      {
        break;
      }

      LODWORD(v30) = byte_181A20298[v30];
      v31 = byte_181A20298[*v28];
      if (v30 != v31)
      {
        goto LABEL_44;
      }

      ++v29;
      ++v28;
      --v27;
    }

    while (v27 > 1);
    v31 = byte_181A20298[*v28];
LABEL_44:
    if (v30 != v31)
    {
      break;
    }

LABEL_89:
    if (v23)
    {
      goto LABEL_90;
    }

LABEL_28:
    v13 = v80;
    v20 = sub_181A16A3C(v80, a2, &v85, v78, a5);
    if (v20)
    {
      goto LABEL_21;
    }
  }

LABEL_45:
  v32 = sub_181A14FF8(v80, *(a2 + 88), v93, &v85, v78, a5);
  if (v32)
  {
    goto LABEL_107;
  }

  v33 = v89;
  if (v89)
  {
    do
    {
      v45 = *(v33 + 16);
      sqlite3_finalize(*v33);
      v46 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v33);
        --qword_1ED456A90;
        off_1ED452EB0(v33);
        v33 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_73;
        }

        v46 = &xmmword_1ED452F28;
      }

      (*v46)(v33);
LABEL_73:
      v33 = v45;
    }

    while (v45);
  }

  *&v89 = 0;
  v34 = *(&v88 + 1);
  if (*(&v88 + 1))
  {
    v35 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_53;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
    --qword_1ED456A90;
    off_1ED452EB0(v34);
    v34 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v35 = &xmmword_1ED452F28;
LABEL_53:
      (*v35)(v34);
    }
  }

  *(&v88 + 1) = 0;
  v36 = *(&v87 + 1);
  if (*(&v87 + 1))
  {
    v37 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_60;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v36);
    --qword_1ED456A90;
    off_1ED452EB0(v36);
    v36 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v37 = &xmmword_1ED452F28;
LABEL_60:
      (*v37)(v36);
    }
  }

  sqlite3_finalize(*(&v85 + 1));
  sqlite3_finalize(v86);
  sqlite3_finalize(*(&v86 + 1));
  v85 = v80;
  v86 = 0uLL;
  LODWORD(v87) = 0;
  *(&v87 + 1) = 0;
  *&v88 = 0;
  *(&v89 + 1) = 0x100000000;
  BYTE8(v92) = 0;
  HIDWORD(v92) = 0;
  *(&v90 + 1) = 0;
  *&v91 = 0;
  if (a3 && !a3(a5, v26))
  {
    v47 = sqlite3_mprintf("%s", v26);
    v93 = v47;
    if (!v47)
    {
      v20 = 7;
      v13 = v80;
      goto LABEL_21;
    }

    v48 = v47;
    v24 = strlen(v47);
    *(&v87 + 1) = v48;
    goto LABEL_90;
  }

  v38 = *(a2 + 136);
  v32 = sub_18191E83C(0, v80, "main", v26, &v87, 0, &v93, &v87 + 1, 0, 0, &v88, &v92 + 3);
  if (v32)
  {
LABEL_107:
    v20 = v32;
    v13 = v80;
    goto LABEL_21;
  }

  if (v87 < 1)
  {
    v39 = 0;
    v43 = v25;
    v13 = v80;
    if (!v87)
    {
      sqlite3_log(17, "sqlite3changeset_apply(): no such table: %s");
      goto LABEL_86;
    }
  }

  else
  {
    v39 = 0;
    v40 = 1;
    v41 = v88;
    v42 = v87;
    v43 = v25;
    do
    {
      if (*v41++)
      {
        v39 = v40;
      }

      ++v40;
      --v42;
    }

    while (v42);
    v13 = v80;
  }

  if (v87 < v43)
  {
    sqlite3_log(17, "sqlite3changeset_apply(): table %s has %d columns, expected %d or more");
LABEL_86:
    v23 = 1;
    goto LABEL_87;
  }

  if (v43 < v39 || (v49 = v88, memcmp(v88, v38, v43)))
  {
    sqlite3_log(17, "sqlite3changeset_apply(): primary key mismatch for table %s");
    goto LABEL_86;
  }

  LODWORD(v87) = v43;
  if (!v93)
  {
LABEL_101:
    v19 = sub_181A13594(v13, BYTE10(v92), "main", v93, v43, *(&v87 + 1), v49, &v86 + 1);
    if (v19)
    {
      goto LABEL_20;
    }

    v19 = sub_181A15370(v13, v93, &v85);
    if (v19)
    {
      goto LABEL_20;
    }

    v19 = sub_181A162B4(v13, v93, &v85);
    if (v19)
    {
      goto LABEL_20;
    }

    v23 = 0;
    DWORD2(v89) = 0;
LABEL_87:
    if (!v93)
    {
      v24 = 0;
      if (!v23)
      {
        goto LABEL_28;
      }

      goto LABEL_90;
    }

    v24 = strlen(v93) & 0x3FFFFFFF;
    goto LABEL_89;
  }

  v50 = v93;
  for (i = "sqlite_stat1"; *v50 != *i; ++i)
  {
    if (byte_181A20298[*v50] != byte_181A20298[*i])
    {
      goto LABEL_101;
    }

LABEL_96:
    ++v50;
  }

  if (*v50)
  {
    goto LABEL_96;
  }

  v19 = sub_181A152C0(v13, &v85);
  if (!v19)
  {
    v23 = 0;
    DWORD2(v89) = 1;
    goto LABEL_87;
  }

LABEL_20:
  v20 = v19;
LABEL_21:
  v21 = *(a2 + 88);
  sqlite3changeset_finalize(a2);
LABEL_22:
  v22 = v76;
LABEL_23:
  sqlite3_exec(v13, "PRAGMA defer_foreign_keys = 0", 0, 0, 0);
  if ((v22 & 1) == 0)
  {
LABEL_24:
    if (v20 || (v20 = sqlite3_exec(v13, "RELEASE changeset_apply", 0, 0, 0), v20))
    {
      sqlite3_exec(v13, "ROLLBACK TO changeset_apply", 0, 0, 0);
      sqlite3_exec(v13, "RELEASE changeset_apply", 0, 0, 0);
      goto LABEL_126;
    }
  }

LABEL_122:
  if (!v20 && !v21 && BYTE9(v92))
  {
    v20 = 0;
    *v74 = *(&v91 + 1);
    *a7 = v92;
    *(&v91 + 1) = 0;
  }

LABEL_126:
  v58 = v89;
  if (v89)
  {
    while (2)
    {
      v59 = *(v58 + 16);
      sqlite3_finalize(*v58);
      v60 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_128;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v58);
      --qword_1ED456A90;
      off_1ED452EB0(v58);
      v58 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v60 = &xmmword_1ED452F28;
LABEL_128:
        (*v60)(v58);
      }

      v58 = v59;
      if (!v59)
      {
        break;
      }

      continue;
    }
  }

  *&v89 = 0;
  v61 = *(&v88 + 1);
  if (*(&v88 + 1))
  {
    v62 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_141;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v61);
    --qword_1ED456A90;
    off_1ED452EB0(v61);
    v61 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v62 = &xmmword_1ED452F28;
LABEL_141:
      (*v62)(v61);
    }
  }

  *(&v88 + 1) = 0;
  sqlite3_finalize(v86);
  sqlite3_finalize(*(&v85 + 1));
  sqlite3_finalize(*(&v86 + 1));
  v63 = *(&v87 + 1);
  if (*(&v87 + 1))
  {
    v64 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_148;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v63);
    --qword_1ED456A90;
    off_1ED452EB0(v63);
    v63 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v64 = &xmmword_1ED452F28;
LABEL_148:
      (*v64)(v63);
    }
  }

  v65 = *(&v90 + 1);
  if (*(&v90 + 1))
  {
    v66 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_155;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v65);
    --qword_1ED456A90;
    off_1ED452EB0(v65);
    v65 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v66 = &xmmword_1ED452F28;
LABEL_155:
      (*v66)(v65);
    }
  }

  v67 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v68 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_162;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v67);
    --qword_1ED456A90;
    off_1ED452EB0(v67);
    v67 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v68 = &xmmword_1ED452F28;
LABEL_162:
      (*v68)(v67);
    }
  }

  if ((v22 & 8) != 0 && (v75 & 0x800000000) == 0)
  {
    *(v13 + 6) &= ~0x800000000uLL;
    **(*(v13 + 4) + 24) -= 32;
  }

  v69 = *(v13 + 113);
  switch(v69)
  {
    case 186:
LABEL_169:
      v70 = "unopened";
      goto LABEL_173;
    case 118:
      v71 = *(v13 + 3);
      if (v71)
      {
        xmmword_1ED452F28(v71);
      }

      break;
    case 109:
      goto LABEL_169;
    default:
      v70 = "invalid";
LABEL_173:
      sqlite3_log(21, "API call with %s database connection pointer", v70);
      sub_1819012D0(192543);
      break;
  }

  return v20;
}