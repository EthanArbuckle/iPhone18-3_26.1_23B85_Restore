uint64_t sub_1819B8F24(uint64_t a1, const char *a2, const char ***a3, char **a4)
{
  v7 = sqlite3_mprintf("%s", a2);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  v72 = a3;
  v73 = &v7[strlen(v7)];
  v9 = v8 + 1;
  for (i = v8; ; ++i)
  {
    v11 = *(v9 - 1);
    if (v11 <= 0x26)
    {
      break;
    }

    if (v11 == 39 || v11 == 96)
    {
LABEL_13:
      v12 = v9 - 1;
      v13 = *v9;
      LODWORD(j) = v9;
      if (*v9)
      {
        j = v9;
        do
        {
          if (v13 == v11)
          {
            j = v12 + 2;
            if (v12[2] != v11)
            {
              break;
            }
          }

          v12 = j;
          v15 = *++j;
          v13 = v15;
        }

        while (v15);
      }

      goto LABEL_32;
    }

    if (v11 == 91)
    {
      v17 = v9;
      do
      {
        v19 = *v17++;
        v18 = v19;
      }

      while (v19 != 93 && v18 != 0);
      if (v18)
      {
        LODWORD(j) = v17;
      }

      else
      {
        LODWORD(j) = v17 - 1;
      }

      goto LABEL_32;
    }

LABEL_10:
    if ((v11 & 0x80) != 0 || byte_181A256CE[*(v9 - 1)])
    {
      for (j = v9; ; ++j)
      {
        v16 = *j;
        if ((v16 & 0x8000000000000000) == 0 && !byte_181A256CE[v16])
        {
          break;
        }
      }

LABEL_32:
      v21 = j - i;
      v22 = v9 - 1;
      goto LABEL_33;
    }

    ++v9;
  }

  if (*(v9 - 1))
  {
    if (v11 == 34)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v21 = 0;
  v22 = 0;
LABEL_33:
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v8;
  }

  v24 = &v23[v21];
  v23[v21] = 0;
  v25 = *v23;
  if ((v25 - 34) <= 0x3E && ((1 << (v25 - 34)) & 0x4200000000000021) != 0)
  {
    if (v25 == 91)
    {
      v27 = 93;
    }

    else
    {
      v27 = *v23;
    }

    v28 = v23[1];
    if (v23[1])
    {
      v29 = 0;
      v30 = 1;
      v31 = 1;
      while (1)
      {
        if (v28 == v27)
        {
          if (v23[v30 + 1] != v27)
          {
LABEL_50:
            v29 = v29;
            goto LABEL_52;
          }

          v23[v29] = v27;
          v31 += 2;
        }

        else
        {
          ++v31;
          v23[v29] = v28;
        }

        ++v29;
        v30 = v31;
        v28 = v23[v31];
        if (!v23[v31])
        {
          goto LABEL_50;
        }
      }
    }

    v29 = 0;
LABEL_52:
    v23[v29] = 0;
  }

  v32 = strlen(v23);
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_114;
  }

  v33 = v32;
  v34 = sub_1819AE48C;
  if (*a1 == 1)
  {
    v34 = sub_181894AF0;
  }

  v35 = v34(v23, v32 + 1);
  v36 = *(a1 + 24);
  if (!v36)
  {
    goto LABEL_114;
  }

  v37 = (v36 + 16 * ((*(a1 + 16) - 1) & v35));
  v40 = *v37;
  v38 = (v37 + 2);
  v39 = v40;
  v41 = *a1 == 1 ? sub_181894B58 : sub_1819AE4C4;
  do
  {
    if (!v39)
    {
      goto LABEL_114;
    }

    v38 = *v38;
    if (!v38)
    {
      goto LABEL_114;
    }

    --v39;
  }

  while (v41(v38[3], *(v38 + 8), v23, v33 + 1));
  if (!v38[2])
  {
LABEL_114:
    sub_1819AD2A4(a4, "unknown tokenizer: %s", v23);
    v65 = 1;
    goto LABEL_115;
  }

  v70 = a4;
  v71 = v38[2];
  v42 = v24 + 1;
  if ((v24 + 1) >= v73)
  {
    v57 = 0;
    v43 = 0;
    goto LABEL_125;
  }

  v43 = 0;
  v44 = 0;
  while (2)
  {
    v45 = 0;
    v46 = v42 + 1;
    v47 = v42;
    while (2)
    {
      v48 = v42[v45];
      if (v48 > 0x26)
      {
        if (v48 == 39 || v48 == 96)
        {
          break;
        }

        if (v48 == 91)
        {
          do
          {
            v51 = *v46++;
            v50 = v51;
          }

          while (v51 != 93 && v50 != 0);
          if (!v50)
          {
            LODWORD(v46) = v46 - 1;
          }

          goto LABEL_95;
        }

        goto LABEL_75;
      }

      if (!v42[v45])
      {
        v57 = v44;
        goto LABEL_125;
      }

      if (v48 != 34)
      {
LABEL_75:
        if ((v48 & 0x80) != 0 || byte_181A256CE[v42[v45]])
        {
          while (1)
          {
            v49 = *v46;
            if ((v49 & 0x8000000000000000) == 0 && !byte_181A256CE[v49])
            {
              break;
            }

            ++v46;
          }

          goto LABEL_95;
        }

        ++v45;
        ++v46;
        ++v47;
        continue;
      }

      break;
    }

    v53 = &v42[v45];
    v46 = &v42[v45 + 1];
    v54 = *v46;
    if (!*v46)
    {
      v55 = 1;
      goto LABEL_96;
    }

    do
    {
      if (v54 == v48)
      {
        v46 = v53 + 2;
        if (v53[2] != v48)
        {
          break;
        }
      }

      v53 = v46;
      v56 = *++v46;
      v54 = v56;
    }

    while (v56);
LABEL_95:
    v55 = v46 - v42 - v45;
LABEL_96:
    if (sqlite3_initialize() || (v57 = v44 + 1, (v58 = sub_18190287C(v43, 8 * (v44 + 1), 0x50040EE9192B6)) == 0))
    {
      v68 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_140;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
      --qword_1ED456A90;
      off_1ED452EB0(v8);
      v8 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v68 = &xmmword_1ED452F28;
LABEL_140:
        (*v68)(v8);
      }

      if (v43)
      {
        v66 = &off_1ED452EB0;
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
          v65 = 7;
          if (!xmmword_1ED456AF0)
          {
            return v65;
          }

          v66 = &xmmword_1ED452F28;
        }

        else
        {
          v65 = 7;
        }

LABEL_121:
        (*v66)(v43);
        return v65;
      }

      return 7;
    }

    v43 = v58;
    *(v58 + 8 * v44) = &v42[v45];
    v42[v45 + v55] = 0;
    v59 = v42[v45];
    if ((v59 - 34) <= 0x3E && ((1 << (v59 - 34)) & 0x4200000000000021) != 0)
    {
      if (v59 == 91)
      {
        v60 = 93;
      }

      else
      {
        v60 = v42[v45];
      }

      v61 = v42[v45 + 1];
      if (v42[v45 + 1])
      {
        v62 = 0;
        v63 = 1;
        v64 = 1;
        while (1)
        {
          if (v61 == v60)
          {
            if (v42[v63 + 1 + v45] != v60)
            {
              goto LABEL_111;
            }

            *v47 = v60;
            v64 += 2;
          }

          else
          {
            ++v64;
            *v47 = v61;
          }

          ++v62;
          v63 = v64;
          v61 = v42[v64 + v45];
          ++v47;
          if (!v42[v64 + v45])
          {
            goto LABEL_111;
          }
        }
      }

      v62 = 0;
LABEL_111:
      v42[v62 + v45] = 0;
    }

    v42 += v55 + v45 + 1;
    ++v44;
    if (v42 < v73)
    {
      continue;
    }

    break;
  }

LABEL_125:
  v65 = (*(v71 + 1))(v57, v43, v72);
  if (v65)
  {
    sub_1819AD2A4(v70, "unknown tokenizer");
  }

  else
  {
    **v72 = v71;
  }

  if (v43)
  {
    v67 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_134;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
    --qword_1ED456A90;
    off_1ED452EB0(v43);
    v43 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v67 = &xmmword_1ED452F28;
LABEL_134:
      (*v67)(v43);
    }
  }

LABEL_115:
  v66 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    v43 = v8;
    goto LABEL_121;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
  --qword_1ED456A90;
  off_1ED452EB0(v8);
  v43 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v66 = &xmmword_1ED452F28;
    goto LABEL_121;
  }

  return v65;
}

uint64_t sub_1819B9668(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 24);
  if (!*(a1 + 80))
  {
    v3 = *(a1 + 88);
    v4 = sqlite3_mprintf("docid INTEGER PRIMARY KEY");
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = 0;
    while (v5 < *(a1 + 48))
    {
      v4 = sqlite3_mprintf("%z, 'c%d%q'", v4, v5, *(*(a1 + 56) + 8 * v5));
      ++v5;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    if (v3)
    {
      v4 = sqlite3_mprintf("%z, langid", v4, v3);
      if (!v4)
      {
LABEL_6:
        v9 = 7;
        sub_1819B9DBC(&v9, v2, "CREATE TABLE %Q.'%q_content'(%s)", *(a1 + 32), *(a1 + 40), 0);
        goto LABEL_7;
      }
    }

    v7 = v4;
    sub_1819B9DBC(&v9, v2, "CREATE TABLE %Q.'%q_content'(%s)", *(a1 + 32), *(a1 + 40), v4);
    v8 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_21;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
    --qword_1ED456A90;
    off_1ED452EB0(v7);
    if (xmmword_1ED456AF0)
    {
      v8 = &xmmword_1ED452F28;
LABEL_21:
      (*v8)();
    }
  }

LABEL_7:
  sub_1819B9DBC(&v9, v2, "CREATE TABLE %Q.'%q_segments'(blockid INTEGER PRIMARY KEY, block BLOB);", *(a1 + 32), *(a1 + 40));
  sub_1819B9DBC(&v9, v2, "CREATE TABLE %Q.'%q_segdir'(level INTEGER,idx INTEGER,start_block INTEGER,leaves_end_block INTEGER,end_block INTEGER,root BLOB,PRIMARY KEY(level, idx));", *(a1 + 32), *(a1 + 40));
  if (*(a1 + 462))
  {
    sub_1819B9DBC(&v9, v2, "CREATE TABLE %Q.'%q_docsize'(docid INTEGER PRIMARY KEY, size BLOB);", *(a1 + 32), *(a1 + 40));
  }

  if (!*(a1 + 461))
  {
    return v9;
  }

  sub_1819B9DBC(&v9, *(a1 + 24), "CREATE TABLE IF NOT EXISTS %Q.'%q_stat'(id INTEGER PRIMARY KEY, value BLOB);", *(a1 + 32), *(a1 + 40));
  result = v9;
  if (!v9)
  {
    *(a1 + 461) = 1;
  }

  return result;
}

unsigned __int8 *sub_1819B9880(unsigned __int8 *result, uint64_t a2)
{
  if (!*result)
  {
    pStmt[7] = v2;
    pStmt[8] = v3;
    v5 = result;
    v11 = *(a2 + 32);
    pStmt[0] = 0;
    result = sqlite3_mprintf("PRAGMA %Q.page_size", v11);
    if (result)
    {
      v7 = result;
      v8 = sub_1818954B4(*(a2 + 24), result, 0xFFFFFFFFLL, 0, 0, pStmt, 0, v6);
      if (v8 == 23)
      {
        v9 = 0;
        *(a2 + 468) = 1024;
      }

      else
      {
        v9 = v8;
        if (!v8)
        {
          sqlite3_step(pStmt[0]);
          *(a2 + 468) = sqlite3_column_int(pStmt[0], 0);
          v9 = sqlite3_finalize(pStmt[0]);
        }
      }

      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
        --qword_1ED456A90;
        result = off_1ED452EB0(v7);
        v7 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_14;
        }

        v10 = &xmmword_1ED452F28;
      }

      result = (*v10)(v7);
    }

    else
    {
      v9 = 7;
    }

LABEL_14:
    *v5 = v9;
  }

  return result;
}

char *sub_1819B99D8(char *result, uint64_t a2)
{
  if (!*result)
  {
    v3 = result;
    if (*(a2 + 88))
    {
      v4 = *(a2 + 88);
    }

    else
    {
      v4 = "__langid";
    }

    sqlite3_vtab_config(*(a2 + 24), 1, 1);
    sqlite3_vtab_config(*(a2 + 24), 2);
    v5 = sqlite3_mprintf("%Q, ", **(a2 + 56));
    if (v5)
    {
      v6 = 1;
      do
      {
        v7 = *(a2 + 48);
        v8 = v6 >= v7;
        if (v6 >= v7)
        {
          break;
        }

        v5 = sqlite3_mprintf("%z%Q, ", v5, *(*(a2 + 56) + 8 * v6++));
      }

      while (v5);
    }

    else
    {
      v8 = 0;
    }

    v16 = v4;
    v9 = v5;
    result = sqlite3_mprintf("CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)", v5, *(a2 + 40), v16);
    v10 = result;
    if (!v8 || result == 0)
    {
      v12 = 7;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = sqlite3_declare_vtab(*(a2 + 24), result);
    }

    v13 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      result = off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_23:
        if (v9)
        {
          result = v9;
          v14 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
              result = v9;
            }

            v15 = result;
            qword_1ED456A48[0] -= xmmword_1ED452EC0(result);
            --qword_1ED456A90;
            off_1ED452EB0(v15);
            result = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_30;
            }

            v14 = &xmmword_1ED452F28;
          }

          result = (*v14)(result);
        }

LABEL_30:
        *v3 = v12;
        return result;
      }

      v13 = &xmmword_1ED452F28;
    }

    result = (*v13)(v10);
    goto LABEL_23;
  }

  return result;
}

char *sub_1819B9C10(char *result, const char **a2, char *a3, ...)
{
  va_start(va, a3);
  if (!*result)
  {
    v4 = result;
    result = sqlite3_vmprintf(a3, va);
    if (!result)
    {
LABEL_12:
      v6 = 0;
      *v4 = 7;
LABEL_13:
      v8 = *a2;
      if (*a2)
      {
        v9 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          result = off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_20;
          }

          v9 = &xmmword_1ED452F28;
        }

        result = (*v9)(v8);
      }

LABEL_20:
      *a2 = v6;
      return result;
    }

    if (!*a2)
    {
      v6 = result;
      goto LABEL_20;
    }

    v5 = result;
    v6 = sqlite3_mprintf("%s%s", *a2, result);
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
      result = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_11:
        if (v6)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v7 = &xmmword_1ED452F28;
    }

    result = (*v7)();
    goto LABEL_11;
  }

  return result;
}

char *sub_1819B9DBC(char *result, sqlite3 *a2, char *a3, ...)
{
  va_start(va, a3);
  if (!*result)
  {
    v3 = result;
    result = sqlite3_vmprintf(a3, va);
    if (result)
    {
      v5 = result;
      *v3 = sqlite3_exec(a2, result, 0, 0, 0);
      v6 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        return (*v6)(v5);
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
        v6 = &xmmword_1ED452F28;
        return (*v6)(v5);
      }
    }

    else
    {
      *v3 = 7;
    }
  }

  return result;
}

double sub_1819B9EC4(uint64_t *a1)
{
  if (*(a1 + 12))
  {
    v2 = *a1;
    if (!*(*a1 + 432))
    {
      v3 = a1[2];
      *(v2 + 432) = v3;
      sqlite3_reset(v3);
      a1[2] = 0;
    }

    *(a1 + 12) = 0;
  }

  sqlite3_finalize(a1[2]);
  v4 = a1[5];
  if (v4)
  {
    while (1)
    {
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      if (!v5)
      {
        goto LABEL_16;
      }

      v7 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_15;
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
        break;
      }

LABEL_16:
      v8 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
        --qword_1ED456A90;
        off_1ED452EB0(v4);
        v4 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_8;
        }

        v8 = &xmmword_1ED452F28;
      }

      (*v8)(v4);
LABEL_8:
      v4 = v6;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v7 = &xmmword_1ED452F28;
LABEL_15:
    (*v7)(v5);
    goto LABEL_16;
  }

LABEL_21:
  a1[5] = 0;
  v9 = a1[8];
  if (v9)
  {
    v10 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_27:
      (*v10)(v9);
      goto LABEL_28;
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
      goto LABEL_27;
    }
  }

LABEL_28:
  v11 = a1[15];
  if (v11)
  {
    *v11 = 0;
    if (!v11[1] && !v11[2])
    {
      v12 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_36:
        (*v12)(v11);
        goto LABEL_37;
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
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  sub_1819BA15C(a1[3]);
  a1[15] = 0;
  result = 0.0;
  *(a1 + 13) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t sub_1819BA15C(uint64_t result)
{
  if (result)
  {
    do
    {
      do
      {
        i = result;
        result = *(result + 16);
      }

      while (result);
      result = i[3];
    }

    while (result);
    v2 = &dword_1ED452E80;
    v3 = &unk_1ED456000;
    while (1)
    {
      v48 = i[1];
      v49 = i;
      v4 = i[4];
      if (!v4)
      {
        goto LABEL_77;
      }

      v5 = *v4;
      if (!*v4)
      {
        goto LABEL_13;
      }

      v6 = (v2 + 12);
      if (*v2)
      {
        v7 = v3[350];
        if (v7)
        {
          xmmword_1ED452F18(v7);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = v3[350];
        if (!v5)
        {
          goto LABEL_13;
        }

        v6 = &xmmword_1ED452F28;
      }

      (*v6)(v5);
LABEL_13:
      if (*(v4 + 8))
      {
        v8 = v4[5];
        if (v8)
        {
          v9 = (v2 + 12);
          if (!*v2)
          {
            goto LABEL_20;
          }

          v10 = v3[350];
          if (v10)
          {
            xmmword_1ED452F18(v10);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          off_1ED452EB0(v8);
          v8 = v3[350];
          if (v8)
          {
            v9 = &xmmword_1ED452F28;
LABEL_20:
            (*v9)(v8);
          }
        }
      }

      v4[6] = 0;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      if (*(v4 + 20) >= 1)
      {
        v11 = 0;
        v50 = v4;
        v51 = v4 + 11;
        while (2)
        {
          v12 = &v51[5 * v11];
          v15 = v12[4];
          v14 = v12 + 4;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_25;
          }

          v52 = v14;
          v53 = v11;
          if (v13[2] >= 1)
          {
            v16 = 0;
            while (2)
            {
              v17 = *(*v13 + 8 * v16);
              if (!v17)
              {
                goto LABEL_30;
              }

              v18 = *(v17 + 80);
              if (v18)
              {
                v19 = (v2 + 12);
                if (!*v2)
                {
                  goto LABEL_38;
                }

                v20 = v3[350];
                if (v20)
                {
                  xmmword_1ED452F18(v20);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
                --qword_1ED456A90;
                off_1ED452EB0(v18);
                v18 = v3[350];
                if (v18)
                {
                  v19 = &xmmword_1ED452F28;
LABEL_38:
                  (*v19)(v18);
                }
              }

              if (!*(v17 + 5))
              {
                v21 = *(v17 + 40);
                if (v21)
                {
                  v22 = (v2 + 12);
                  if (!*v2)
                  {
                    goto LABEL_46;
                  }

                  v23 = v3[350];
                  if (v23)
                  {
                    xmmword_1ED452F18(v23);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
                  --qword_1ED456A90;
                  off_1ED452EB0(v21);
                  v21 = v3[350];
                  if (v21)
                  {
                    v22 = &xmmword_1ED452F28;
LABEL_46:
                    (*v22)(v21);
                  }
                }
              }

              v24 = *(v17 + 56);
              if (v24)
              {
                v25 = v3;
                v26 = v2;
                v27 = v24[3];
                v28 = v24[4];
                v29 = v28[3];
                if (v29)
                {
                  xmmword_1ED452F18(v29);
                }

                sub_181929C84(v28, v24);
                v30 = v28[3];
                if (v30)
                {
                  xmmword_1ED452F28(v30);
                }

                sqlite3_finalize(v27);
                v2 = v26;
                v3 = v25;
              }

              v31 = (v2 + 12);
              if (*v2)
              {
                v32 = v3[350];
                if (v32)
                {
                  xmmword_1ED452F18(v32);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
                --qword_1ED456A90;
                off_1ED452EB0(v17);
                v17 = v3[350];
                if (!v17)
                {
                  goto LABEL_30;
                }

                v31 = &xmmword_1ED452F28;
              }

              (*v31)(v17);
LABEL_30:
              if (++v16 >= v13[2])
              {
                break;
              }

              continue;
            }
          }

          v33 = *v13;
          if (*v13)
          {
            v34 = (v2 + 12);
            if (!*v2)
            {
              goto LABEL_64;
            }

            v35 = v3[350];
            if (v35)
            {
              xmmword_1ED452F18(v35);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v33);
            --qword_1ED456A90;
            off_1ED452EB0(v33);
            v33 = v3[350];
            if (v33)
            {
              v34 = &xmmword_1ED452F28;
LABEL_64:
              (*v34)(v33);
            }
          }

          v36 = *(v13 + 3);
          if (v36)
          {
            v37 = (v2 + 12);
            if (!*v2)
            {
              goto LABEL_71;
            }

            v38 = v3[350];
            if (v38)
            {
              xmmword_1ED452F18(v38);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v36);
            --qword_1ED456A90;
            off_1ED452EB0(v36);
            v36 = v3[350];
            if (v36)
            {
              v37 = &xmmword_1ED452F28;
LABEL_71:
              (*v37)(v36);
            }
          }

          v13[2] = 0;
          *v13 = 0;
          *(v13 + 3) = 0;
          v39 = (v2 + 12);
          v14 = v52;
          if (*v2)
          {
            v40 = v3[350];
            v4 = v50;
            v11 = v53;
            if (v40)
            {
              xmmword_1ED452F18(v40);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
            --qword_1ED456A90;
            off_1ED452EB0(v13);
            v13 = v3[350];
            if (!v13)
            {
              goto LABEL_25;
            }

            v39 = &xmmword_1ED452F28;
          }

          else
          {
            v4 = v50;
            v11 = v53;
          }

          (*v39)(v13);
LABEL_25:
          *v14 = 0;
          if (++v11 >= *(v4 + 20))
          {
            break;
          }

          continue;
        }
      }

LABEL_77:
      v41 = v49[7];
      if (!v41)
      {
        goto LABEL_84;
      }

      v42 = (v2 + 12);
      if (!*v2)
      {
        goto LABEL_83;
      }

      v43 = v3[350];
      if (v43)
      {
        xmmword_1ED452F18(v43);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v41);
      --qword_1ED456A90;
      off_1ED452EB0(v41);
      v41 = v3[350];
      if (v41)
      {
        v42 = &xmmword_1ED452F28;
LABEL_83:
        (*v42)(v41);
      }

LABEL_84:
      v44 = (v2 + 12);
      if (!*v2)
      {
        result = v49;
        v46 = v48;
        goto LABEL_90;
      }

      v45 = v3[350];
      v46 = v48;
      if (v45)
      {
        xmmword_1ED452F18(v45);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v49);
      --qword_1ED456A90;
      off_1ED452EB0(v49);
      result = v3[350];
      if (result)
      {
        v44 = &xmmword_1ED452F28;
LABEL_90:
        result = (*v44)(result);
      }

      if (!v46)
      {
        return result;
      }

      i = v46;
      if (v49 == v46[2])
      {
        v47 = v46[3];
        for (i = v46; v47; v47 = i[3])
        {
          do
          {
            i = v47;
            v47 = v47[2];
          }

          while (v47);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1819BA790(uint64_t *a1, int a2)
{
  v3 = *a1;
  if (!a2)
  {
    v6 = 1;
    goto LABEL_70;
  }

  LODWORD(v4) = a2;
  v5 = *v3;
  if ((*v3 - 3) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v3 + 16);
      v37 = *(v3 + 24);
      v8 = v37;
      v38 = v7;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v7 + 8) = 0;
      *(v8 + 8) = 0;
      v9 = (a2 - 1);
      v10 = sub_1819BA790(&v38, v9);
      if (v10)
      {
        v6 = v10;
      }

      else
      {
        v6 = sub_1819BA790(&v37, v9);
        v8 = v37;
        if (!v6)
        {
          v30 = v38;
          *(v3 + 16) = v38;
          *(v30 + 8) = v3;
          *(v3 + 24) = v8;
          *(v8 + 8) = v3;
          goto LABEL_69;
        }
      }

      sub_1819BA15C(v8);
      sub_1819BA15C(v38);
      goto LABEL_69;
    }

    v6 = 0;
    goto LABEL_71;
  }

  if (sqlite3_initialize() || (v11 = sub_181902484(8 * v4, 0x2004093837F09)) == 0)
  {
    v6 = 7;
    goto LABEL_70;
  }

  v12 = v11;
  bzero(v11, 8 * v4);
  v13 = v3;
  if (*v3 == v5)
  {
    v13 = v3;
    do
    {
      v13 = *(v13 + 16);
    }

    while (*v13 == v5);
  }

  v14 = 0;
  v38 = v13;
  while (1)
  {
    v15 = *(v13 + 8);
    *(v13 + 8) = 0;
    if (v15)
    {
      v15[2] = 0;
    }

    else
    {
      v3 = 0;
    }

    v16 = sub_1819BA790(&v38, (v4 - 1));
    if (v16)
    {
      v6 = v16;
      goto LABEL_49;
    }

    v17 = v38;
    v18 = v38 != 0;
    if (!v38 || v4 < 1)
    {
      break;
    }

    v19 = 0;
    while (1)
    {
      v20 = v14;
      v21 = v12[v19];
      if (!v21)
      {
        break;
      }

      v14[2] = v21;
      v14[3] = v17;
      *(v21 + 8) = v14;
      *(v17 + 8) = v14;
      v14 = v14[1];
      v20[1] = 0;
      v12[v19++] = 0;
      v17 = v20;
      if (v19 >= v4)
      {
        v18 = v20 != 0;
        goto LABEL_28;
      }
    }

    v12[v19] = v17;
    if (!v15)
    {
LABEL_39:
      if (v4 < 1)
      {
        v6 = 0;
        v3 = 0;
      }

      else
      {
        v3 = 0;
        v27 = v4;
        v28 = v12;
        do
        {
          if (*v28)
          {
            if (v3)
            {
              v20[3] = v3;
              v29 = *v28;
              v20[2] = *v28;
              *(v29 + 8) = v20;
              *(v3 + 8) = v20;
              v3 = v20;
              v20 = v20[1];
            }

            else
            {
              v3 = *v28;
            }

            *(v3 + 8) = 0;
          }

          ++v28;
          --v27;
        }

        while (v27);
        v6 = 0;
      }

      goto LABEL_63;
    }

LABEL_32:
    v22 = v15 + 3;
    do
    {
      v13 = *v22;
      v23 = *v22;
      v24 = *v23;
      v22 = (v23 + 4);
    }

    while (v24 == v5);
    v38 = v13;
    v25 = v15[1];
    v26 = v15[3];
    *(v26 + 8) = v25;
    if (v25)
    {
      *(v25 + 16) = v26;
    }

    else
    {
      v3 = v26;
    }

    v15[1] = v20;
    v14 = v15;
  }

  v20 = v38;
LABEL_28:
  if (!v18)
  {
    v20 = v14;
    if (!v15)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  sub_1819BA15C(v20);
  v6 = 18;
LABEL_49:
  if (v4 >= 1)
  {
    v4 = v4;
    v31 = v12;
    do
    {
      v32 = *v31++;
      sub_1819BA15C(v32);
      --v4;
    }

    while (v4);
  }

  if (v14)
  {
    while (2)
    {
      v33 = v14[1];
      v34 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_54;
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
        v34 = &xmmword_1ED452F28;
LABEL_54:
        (*v34)(v14);
      }

      v14 = v33;
      if (!v33)
      {
        break;
      }

      continue;
    }
  }

LABEL_63:
  v35 = &off_1ED452EB0;
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
    if (xmmword_1ED456AF0)
    {
      v35 = &xmmword_1ED452F28;
      goto LABEL_68;
    }
  }

  else
  {
LABEL_68:
    (*v35)(v12);
  }

LABEL_69:
  if (v6)
  {
LABEL_70:
    sub_1819BA15C(v3);
    v3 = 0;
  }

LABEL_71:
  *a1 = v3;
  return v6;
}

uint64_t sub_1819BABA0(uint64_t result, int a2)
{
  if (result)
  {
    LODWORD(v2) = a2;
    v3 = result;
    while ((v2 & 0x80000000) == 0)
    {
      v2 = (v2 - 1);
      result = sub_1819BABA0(*(v3 + 16), v2);
      if (result)
      {
        return result;
      }

      v3 = *(v3 + 24);
      if (!v3)
      {
        return 0;
      }
    }

    return 18;
  }

  return result;
}

uint64_t sub_1819BABF8(uint64_t **a1, unsigned __int8 *a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v6 = 0;
  v102 = 0;
  v103 = 1;
  v99 = a3;
  do
  {
    v106 = 0;
    v104 = a3;
    v105 = 0;
    *(a1 + 9) = 0;
    if (a3 < 1)
    {
      v7 = a3;
      v8 = a2;
      if (!a3)
      {
        goto LABEL_194;
      }
    }

    else
    {
      v7 = a3;
      v8 = a2;
      while (1)
      {
        v10 = *v8;
        if ((v10 - 9) >= 5 && v10 != 32)
        {
          break;
        }

        ++v8;
        v9 = __OFSUB__(v7--, 1);
        if ((v7 < 0) ^ v9 | (v7 == 0))
        {
          goto LABEL_194;
        }
      }
    }

    v97 = a2;
    v98 = a1;
    v11 = 0;
    v95 = v8 - a2;
    do
    {
      v12 = &(&off_1E6A28080)[2 * v11];
      if (*(v12 + 9) <= 1u)
      {
        v13 = *(v12 + 8);
        if (v7 >= v13 && !memcmp(v8, *v12, *(v12 + 8)))
        {
          v14 = *(v12 + 10);
          if (v14 == 1 && v8[4] == 47 && v8[5] - 48 <= 9)
          {
            v15 = v8[v13 + 1];
            if ((v15 - 48) > 9)
            {
              v19 = 0;
              v18 = 1;
            }

            else
            {
              v16 = 0;
              v17 = &v8[v13 + 2];
              v18 = 1;
              while (1)
              {
                v19 = 10;
                v16 = 10 * v16 + (v15 - 48);
                if (v16 >> 31)
                {
                  break;
                }

                v20 = *v17++;
                LOBYTE(v15) = v20;
                ++v18;
                if ((v20 - 48) >= 0xA)
                {
                  v19 = v16;
                  goto LABEL_37;
                }
              }

              v18 = 0;
            }

LABEL_37:
            LODWORD(v13) = v18 + v13;
          }

          else
          {
            v19 = 10;
          }

          v21 = v8[v13];
          if (v21 <= 0x29 && ((0x30500003E01uLL >> v21) & 1) != 0)
          {
            v22 = 0x30400000001uLL >> v21;
            if (sqlite3_initialize() || (v23 = sub_181902484(64, 2585922466)) == 0)
            {
              v5 = 7;
              if ((v22 & 1) == 0)
              {
                goto LABEL_195;
              }
            }

            else
            {
              v5 = 0;
              *(v23 + 32) = 0u;
              *(v23 + 48) = 0u;
              *v23 = 0u;
              *(v23 + 16) = 0u;
              *v23 = v14;
              *(v23 + 4) = v19;
              v106 = v23;
              v105 = v13 + v95;
              if ((v22 & 1) == 0)
              {
                goto LABEL_81;
              }
            }
          }

          if (v21 <= 0x29 && ((1 << v21) & 0x30400000001) != 0)
          {
            goto LABEL_81;
          }
        }
      }

      ++v11;
    }

    while (v11 != 4);
    v25 = *v8;
    switch(v25)
    {
      case '""':
        if (v7 >= 2)
        {
          v30 = 1;
          v31 = v98;
          do
          {
            if (v8[v30] == 34)
            {
              goto LABEL_53;
            }

            ++v30;
          }

          while (v7 != v30);
          v105 = v95 + v7 + 1;
          v5 = 1;
          goto LABEL_195;
        }

        LODWORD(v30) = 1;
        v31 = v98;
LABEL_53:
        v105 = v95 + v30 + 1;
        if (v30 == v7)
        {
          v5 = 1;
          goto LABEL_195;
        }

        v32 = (v30 - 1);
        v33 = *v31;
        v34 = **v31;
        v35 = *(v31 + 2);
        v110 = 0;
        v36 = (*(v34 + 24))(v33, v8 + 1, v32, &v110);
        v37 = v110;
        if (v36)
        {
          v5 = v36;
          goto LABEL_56;
        }

        *v110 = v33;
        v37 = v110;
        if (*v34 >= 1)
        {
          v71 = (*(v34 + 48))(v110, v35);
          v37 = v110;
          if (v71)
          {
            v5 = v71;
            (*(v34 + 32))(v110);
            v37 = 0;
LABEL_56:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            if (v5 != 101)
            {
              goto LABEL_133;
            }

            goto LABEL_57;
          }
        }

        v109 = 0;
        v110 = 0;
        v108 = 0;
        v107 = 0;
        v73 = (*(v34 + 40))(v37, &v110, &v109 + 4, &v109, &v108, &v107);
        if (v73)
        {
          v5 = v73;
          v41 = 0;
          v40 = 0;
          v39 = 0;
          v44 = 0;
          goto LABEL_132;
        }

        v94 = v32;
        v96 = v34;
        v76 = 0;
        v41 = 0;
        v77 = 0;
        v78 = 0;
        v40 = 0;
        while (!sqlite3_initialize())
        {
          v44 = sub_18190287C(v77, v76 + 192, 277195081);
          if (!v44)
          {
            break;
          }

LABEL_168:
          v82 = v37;
          v83 = SHIDWORD(v109);
          if (sqlite3_initialize() || !(v40 + v83) || (v84 = sub_18190287C(v78, v40 + v83, 277195081)) == 0)
          {
            if (v78)
            {
              v89 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                v37 = v82;
                goto LABEL_188;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v78);
              --qword_1ED456A90;
              off_1ED452EB0(v78);
              v78 = xmmword_1ED456AF0;
              v37 = v82;
              if (xmmword_1ED456AF0)
              {
                v89 = &xmmword_1ED452F28;
LABEL_188:
                v34 = v96;
                (*v89)(v78);
                v39 = 0;
                v5 = 7;
                goto LABEL_134;
              }

              v39 = 0;
            }

            else
            {
              v39 = 0;
              v37 = v82;
            }

LABEL_190:
            v34 = v96;
            v5 = 7;
            goto LABEL_134;
          }

          v78 = v84;
          if (!v44)
          {
            v37 = v82;
            v39 = v84;
            goto LABEL_190;
          }

          v85 = v44 + v76;
          *(v85 + 184) = 0;
          *(v85 + 168) = 0u;
          *(v85 + 152) = 0u;
          memcpy((v84 + v40), v110, SHIDWORD(v109));
          v86 = SHIDWORD(v109);
          *(v85 + 160) = HIDWORD(v109);
          v87 = v108 < v94 && v8[v108 + 1] == 42;
          *(v85 + 164) = v87;
          v79 = v109 >= 1 && v8[v109] == 94;
          v37 = v82;
          v40 += v86;
          *(v44 + v76 + 168) = v79;
          v109 = 0;
          v110 = 0;
          v108 = 0;
          v107 = 0;
          v80 = (*(v96 + 40))(v82, &v110, &v109 + 4, &v109, &v108, &v107);
          ++v41;
          v76 += 40;
          v77 = v44;
          if (v80)
          {
            v5 = v80;
            v39 = v78;
            v34 = v96;
            v31 = v98;
LABEL_132:
            v38 = v44;
            if (v5 != 101)
            {
LABEL_133:
              v44 = v38;
              goto LABEL_134;
            }

LABEL_57:
            v42 = sqlite3_initialize();
            if (v40 + 40 * v41 != -192 && !v42)
            {
              v43 = sub_18190287C(v38, v40 + 40 * v41 + 192, 277195081);
              if (v43)
              {
                v44 = v43;
                *(v43 + 64) = 0u;
                v45 = v43 + 64;
                *(v43 + 144) = 0;
                *(v43 + 112) = 0u;
                *(v43 + 128) = 0u;
                *(v43 + 80) = 0u;
                *(v43 + 96) = 0u;
                *(v43 + 32) = 0u;
                *(v43 + 48) = 0u;
                *v43 = 0u;
                *(v43 + 16) = 0u;
                *v43 = 5;
                *(v43 + 32) = v43 + 64;
                v46 = *(v31 + 8);
                *(v43 + 144) = v41;
                *(v43 + 148) = v46;
                v47 = v43 + 40 * v41 + 152;
                if (v39)
                {
                  memcpy((v43 + 40 * v41 + 152), v39, v40);
                  v45 = *(v44 + 32);
                }

                v48 = *(v45 + 80);
                if (v48 >= 1)
                {
                  v49 = (v45 + 96);
                  do
                  {
                    *(v49 - 1) = v47;
                    v47 += *v49;
                    v49 += 10;
                    --v48;
                  }

                  while (v48);
                }

                v5 = 0;
LABEL_134:
                if (v37)
                {
                  (*(v34 + 32))(v37);
                }

                if (v39)
                {
                  v74 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
                    goto LABEL_142;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v39);
                  --qword_1ED456A90;
                  off_1ED452EB0(v39);
                  v39 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    v74 = &xmmword_1ED452F28;
LABEL_142:
                    (*v74)(v39);
                  }
                }

                if (v5 && v44)
                {
                  v75 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
                    goto LABEL_150;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v44);
                  --qword_1ED456A90;
                  off_1ED452EB0(v44);
                  v44 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    v75 = &xmmword_1ED452F28;
LABEL_150:
                    (*v75)(v44);
                    v44 = 0;
                  }
                }

                v106 = v44;
                if (!v5)
                {
                  goto LABEL_82;
                }

                goto LABEL_152;
              }
            }

            if (v38)
            {
              v72 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_128;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v38);
              --qword_1ED456A90;
              off_1ED452EB0(v38);
              v38 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v72 = &xmmword_1ED452F28;
LABEL_128:
                (*v72)(v38);
              }
            }

            v44 = 0;
            v5 = 7;
            goto LABEL_134;
          }
        }

        if (v77)
        {
          v81 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v77);
            --qword_1ED456A90;
            off_1ED452EB0(v77);
            v77 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_166;
            }

            v81 = &xmmword_1ED452F28;
          }

          (*v81)(v77);
        }

LABEL_166:
        v44 = 0;
        goto LABEL_168;
      case '(':
        LODWORD(v110) = 0;
        v29 = *(v98 + 12);
        *(v98 + 12) = v29 + 1;
        if (v29 <= 999)
        {
          v5 = sub_1819BABF8();
          v105 = v95 + v110 + 1;
          if (!v5)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_152;
      case ')':
        --*(v98 + 12);
        v105 = v95 + 1;
LABEL_194:
        v5 = 101;
LABEL_195:
        a3 = v104 - v105;
        goto LABEL_196;
    }

    v26 = *(v98 + 7);
    v27 = *(v98 + 8);
    if (v26 < 1)
    {
LABEL_79:
      v56 = 0;
      goto LABEL_80;
    }

    v28 = 0;
    while (1)
    {
      v51 = v98[2][v28];
      v52 = strlen(v51);
      if (v7 <= v52 || v8[v52] != 58)
      {
        goto LABEL_68;
      }

      if (v52 < 0)
      {
        break;
      }

      if (v51)
      {
        if (!v52)
        {
          goto LABEL_78;
        }

        v53 = v52 + 1;
        v54 = v8;
        while (1)
        {
          v55 = *v51;
          if (!*v51)
          {
            break;
          }

          LODWORD(v55) = byte_181A20298[v55];
          v50 = byte_181A20298[*v54];
          if (v55 != v50)
          {
            goto LABEL_67;
          }

          ++v51;
          ++v54;
          if (--v53 <= 1)
          {
            goto LABEL_78;
          }
        }

        v50 = byte_181A20298[*v54];
LABEL_67:
        if (v55 == v50)
        {
          goto LABEL_78;
        }
      }

LABEL_68:
      if (++v28 == v26)
      {
        goto LABEL_79;
      }
    }

    v88 = v52;
    sub_1819012D0(37608);
    v52 = v88;
LABEL_78:
    v56 = v95 + v52 + 1;
    v27 = v28;
LABEL_80:
    v5 = sub_1819BB8D0(v98, v27, &v97[v56], (v104 - v56), &v106, &v105);
    v105 += v56;
LABEL_81:
    if (v5)
    {
      goto LABEL_152;
    }

LABEL_82:
    v57 = v106;
    if (!v106)
    {
LABEL_152:
      v57 = v6;
      v70 = v104;
      a1 = v98;
      goto LABEL_153;
    }

    v58 = *v106;
    if (*v106 == 5)
    {
      v59 = 0;
      v60 = v103 != 0;
      v61 = 1;
      goto LABEL_87;
    }

    v62 = *(v106 + 16);
    v61 = v62 != 0;
    v59 = v62 == 0;
    v60 = v103 != 0;
    if (!v62 && v103)
    {
      v90 = 1;
      goto LABEL_208;
    }

LABEL_87:
    if (!v59 && !v60)
    {
      if (!sqlite3_initialize())
      {
        v63 = sub_181902484(64, 2585922466);
        if (v63)
        {
          *(v63 + 32) = 0u;
          *(v63 + 48) = 0u;
          *v63 = 0u;
          *(v63 + 16) = 0u;
          *v63 = 3;
          while (1)
          {
            v64 = v6;
            v6 = *(v6 + 8);
            if (!v6)
            {
              break;
            }

            if (*v6 >= 4)
            {
              *(v6 + 24) = v63;
              *(v63 + 8) = v6;
              v65 = v102;
              goto LABEL_98;
            }
          }

          v65 = v63;
LABEL_98:
          *(v63 + 16) = v64;
          *(v64 + 8) = v63;
LABEL_99:
          v66 = v58 != 1 || v61;
          if ((v66 & 1) != 0 || *v63 == 5)
          {
            v67 = !v61;
            if (v58 == 5)
            {
              v67 = 1;
            }

            if ((v67 & 1) != 0 || *v63 != 1)
            {
              if (!v61)
              {
                goto LABEL_112;
              }

              goto LABEL_109;
            }
          }

          v90 = 1;
LABEL_209:
          sub_1819BA15C(v57);
LABEL_210:
          sub_1819BA15C(v65);
          v65 = 0;
          goto LABEL_211;
        }
      }

      v90 = 7;
LABEL_208:
      v65 = v102;
      goto LABEL_209;
    }

    if (v6)
    {
      v63 = v6;
      v65 = v102;
      goto LABEL_99;
    }

    v63 = 0;
    v65 = v102;
    if (v61)
    {
LABEL_109:
      v68 = v57;
      if (v65)
      {
        *(v63 + 24) = v57;
        *(v57 + 8) = v63;
        goto LABEL_117;
      }
    }

    else
    {
LABEL_112:
      while (1)
      {
        v69 = v63;
        v63 = *(v63 + 8);
        if (!v63)
        {
          break;
        }

        if (*v63 > *v57)
        {
          *(v63 + 24) = v57;
          *(v57 + 8) = v63;
          goto LABEL_116;
        }
      }

      v65 = v57;
LABEL_116:
      *(v57 + 16) = v69;
      *(v69 + 8) = v57;
LABEL_117:
      v68 = v65;
    }

    v5 = 0;
    v102 = v68;
    v103 = v59;
    v70 = v104;
    a1 = v98;
LABEL_153:
    a3 = v70 - v105;
    a2 = &v97[v105];
    v6 = v57;
  }

  while (!v5);
LABEL_196:
  v91 = v5 != 101 || v103 == 0;
  v65 = v102;
  if (v91 || v102 == 0)
  {
    v90 = v5;
  }

  else
  {
    v90 = 1;
  }

  *a5 = v99 - a3;
  if (v90 != 101)
  {
    goto LABEL_210;
  }

  v90 = 0;
LABEL_211:
  *a4 = v65;
  return v90;
}

uint64_t sub_1819BB8D0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v8 = a4;
  v12 = *a1;
  v13 = **a1;
  *a6 = a4;
  v14 = *(a1 + 2);
  __src = 0;
  result = (*(v13 + 24))(v12, a3, a4, &__src);
  if (result)
  {
    goto LABEL_2;
  }

  *__src = v12;
  v17 = __src;
  if (*v13 >= 1)
  {
    v18 = (*(v13 + 48))(__src, v14);
    v17 = __src;
    if (v18)
    {
      v19 = v18;
      (*(v13 + 32))(__src);
      result = v19;
LABEL_2:
      v16 = 0;
LABEL_3:
      *a5 = v16;
      return result;
    }
  }

  __n = 0;
  __src = 0;
  v36 = 0;
  v20 = (*(v13 + 40))(v17, &__src, &__n + 4, &__n, &v36 + 4, &v36);
  if (v20)
  {
    v16 = 0;
    if (!v8 || v20 != 101)
    {
      goto LABEL_31;
    }

    if (v8 < 1)
    {
LABEL_19:
      v16 = 0;
      v20 = 0;
LABEL_31:
      v31 = v20;
      (*(v13 + 32))(v17);
      result = v31;
      goto LABEL_3;
    }

    v21 = 0;
    while (1)
    {
      v22 = *(a3 + v21);
      v23 = v22 > 0x29;
      v24 = (1 << v22) & 0x30400000000;
      if (!v23 && v24 != 0)
      {
        break;
      }

      if (v8 == ++v21)
      {
        goto LABEL_19;
      }
    }

    v16 = 0;
    v20 = 0;
LABEL_30:
    *a6 = v21;
    goto LABEL_31;
  }

  if (SHIDWORD(v36) < 1)
  {
LABEL_28:
    v30 = SHIDWORD(__n);
    if (sqlite3_initialize() || (v32 = sub_181902484(v30 + 192, 2585922466)) == 0)
    {
      v16 = 0;
      v20 = 7;
      LODWORD(v21) = HIDWORD(v36);
    }

    else
    {
      v16 = v32;
      bzero(v32, v30 + 192);
      *v16 = 5;
      v16[4] = v16 + 8;
      *(v16 + 36) = 1;
      *(v16 + 37) = a2;
      v33 = SHIDWORD(__n);
      *(v16 + 40) = HIDWORD(__n);
      v16[19] = v16 + 24;
      memcpy(v16 + 24, __src, v33);
      LODWORD(v21) = HIDWORD(v36);
      if (SHIDWORD(v36) < v8 && *(a3 + SHIDWORD(v36)) == 42)
      {
        *(v16 + 41) = 1;
        LODWORD(v21) = v21 + 1;
        HIDWORD(v36) = v21;
      }

      v20 = 0;
      if (*(a1 + 6))
      {
        v34 = __n;
        if (__n >= 1)
        {
          do
          {
            if (*(a3 - 1 + v34) != 94)
            {
              break;
            }

            *(v16 + 42) = 1;
            v35 = __OFSUB__(v34--, 1);
            LODWORD(__n) = v34;
          }

          while (!((v34 < 0) ^ v35 | (v34 == 0)));
          v20 = 0;
        }
      }
    }

    goto LABEL_30;
  }

  v26 = 0;
  while (1)
  {
    v27 = *(a3 + v26);
    v23 = v27 > 0x29;
    v28 = (1 << v27) & 0x30400000000;
    if (!v23 && v28 != 0)
    {
      break;
    }

    if (HIDWORD(v36) == ++v26)
    {
      goto LABEL_28;
    }
  }

  (*(v13 + 32))(v17);
  return sub_1819BB8D0(a1, a2, a3, v26, a5, a6);
}

uint64_t sub_1819BBB94(uint64_t result, uint64_t a2, _DWORD *a3, int *a4, _DWORD *a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    while (!*a5)
    {
      if (*v8 == 5)
      {
        v11 = *(v8 + 32);
        v12 = *(v11 + 80);
        *a3 += v12;
        v33 = v12;
        if (v12 < 1)
        {
LABEL_32:
          *(v11 + 60) = -1;
        }

        else
        {
          v13 = 0;
          while (1)
          {
            v14 = *(v8 + 32) + 40 * v13;
            v17 = *(v14 + 88);
            v16 = v14 + 88;
            v15 = v17;
            v18 = *(v16 + 8);
            v19 = *(v16 + 12);
            if (sqlite3_initialize())
            {
              break;
            }

            v20 = sub_181902484(88, 0x10B0040CA1D25D9);
            if (!v20)
            {
              goto LABEL_29;
            }

            v21 = *v9;
            if (v19 && (v22 = *(v21 + 492), v22 >= 2))
            {
              v23 = (*(v21 + 496) + 40);
              for (i = 1; i != v22; ++i)
              {
                v25 = *v23;
                v23 += 10;
                if (v25 == v18)
                {
                  v30 = *(v9 + 32);
                  *(v20 + 80) = 0;
                  *(v20 + 48) = 0u;
                  *(v20 + 64) = 0u;
                  *(v20 + 16) = 0u;
                  *(v20 + 32) = 0u;
                  *v20 = 0u;
                  result = sub_1819AD3D8(v21, v30, i, 0xFFFFFFFE, v15, v18, 0, 0, v20);
                  *(v20 + 52) = 1;
                  goto LABEL_22;
                }
              }

              v26 = (*(v21 + 496) + 40);
              v27 = 1;
              while (1)
              {
                v28 = *v26;
                v26 += 10;
                if (v28 == v18 + 1)
                {
                  break;
                }

                if (v22 == ++v27)
                {
                  goto LABEL_21;
                }
              }

              v31 = *(v9 + 32);
              *(v20 + 80) = 0;
              *(v20 + 48) = 0u;
              *(v20 + 64) = 0u;
              *(v20 + 16) = 0u;
              *(v20 + 32) = 0u;
              *v20 = 0u;
              v32 = v21;
              result = sub_1819AD3D8(v21, v31, v27, 0xFFFFFFFE, v15, v18, 1, 0, v20);
              if (result)
              {
                goto LABEL_30;
              }

              result = sub_1819AD3D8(v32, *(v9 + 32), 0, 0xFFFFFFFE, v15, v18, 0, 0, v20);
            }

            else
            {
LABEL_21:
              v29 = *(v9 + 32);
              *(v20 + 80) = 0;
              *(v20 + 48) = 0u;
              *(v20 + 64) = 0u;
              *(v20 + 16) = 0u;
              *(v20 + 32) = 0u;
              *v20 = 0u;
              result = sub_1819AD3D8(v21, v29, 0, 0xFFFFFFFE, v15, v18, v19, 0, v20);
              *(v20 + 52) = v19 == 0;
            }

LABEL_22:
            *(v16 + 32) = v20;
            if (result)
            {
              goto LABEL_31;
            }

            if (++v13 == v33)
            {
              v11 = *(v8 + 32);
              goto LABEL_32;
            }
          }

          v20 = 0;
LABEL_29:
          result = 7;
LABEL_30:
          *(v16 + 32) = v20;
LABEL_31:
          *a5 = result;
        }

        return result;
      }

      v10 = *a4;
      if (*v8 == 4)
      {
        ++v10;
      }

      *a4 = v10;
      result = sub_1819BBB94(v9, *(v8 + 16), a3, a4, a5);
      v8 = *(v8 + 24);
      if (!v8)
      {
        return result;
      }
    }
  }

  return result;
}

char *sub_1819BBE24(char *result, uint64_t a2, int *a3, uint64_t *a4, void **a5, int *a6)
{
  if (*a6)
  {
    return result;
  }

  v11 = result;
  while (1)
  {
    v12 = *a3;
    if (*a3 != 4)
    {
      break;
    }

    a2 = *(a3 + 2);
    *(*a5)++ = a2;
LABEL_9:
    result = sub_1819BBE24(v11, a2, *(a3 + 2), a4, a5, a6);
    if (*a3 == 4)
    {
      a2 = *(a3 + 3);
      *(*a5)++ = a2;
    }

    a3 = *(a3 + 3);
    if (*a6)
    {
      return result;
    }
  }

  if (v12 == 2)
  {
    return result;
  }

  if (v12 != 5)
  {
    goto LABEL_9;
  }

  v13 = *(a3 + 4);
  if (*(v13 + 80) < 1)
  {
    return result;
  }

  v14 = 0;
  v15 = v13 + 88;
  v32 = v13 + 88;
  v33 = *(a3 + 4);
  while (1)
  {
    v16 = *a4;
    *a4 += 40;
    *v16 = v13;
    *(v16 + 8) = v14;
    v17 = v15 + 40 * v14;
    *(v16 + 16) = v17;
    *(v16 + 24) = a2;
    *(v16 + 36) = *(v13 + 84);
    v18 = *(v17 + 32);
    v19 = *(v18 + 8);
    if (v19 >= 1)
    {
      break;
    }

    v20 = 0;
LABEL_16:
    *(v16 + 32) = v20;
    *a6 = 0;
    if (++v14 >= *(v13 + 80))
    {
      return result;
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = *v11;
  v23 = *(*v11 + 468);
  v35 = v14;
  v36 = v16;
  v34 = v18;
  while (1)
  {
    v24 = *(*v18 + 8 * v21);
    if (!*(v24 + 64) && !*(v24 + 5))
    {
      v25 = *(v24 + 8);
      if (v25 <= *(v24 + 16))
      {
        break;
      }
    }

LABEL_18:
    if (++v21 >= v19)
    {
      goto LABEL_16;
    }
  }

  result = *(v22 + 480);
  while (2)
  {
    if (result)
    {
      result = sqlite3_blob_reopen(result, v25);
      if (result)
      {
        break;
      }

      goto LABEL_34;
    }

    v30 = *(v22 + 472);
    if (!v30)
    {
      result = sqlite3_mprintf("%s_segments", *(v22 + 40));
      v30 = result;
      *(v22 + 472) = result;
      if (!result)
      {
        v31 = 7;
        goto LABEL_40;
      }
    }

    result = sqlite3_blob_open(*(v22 + 24), *(v22 + 32), v30, "block", v25, 0, (v22 + 480));
    if (!result)
    {
LABEL_34:
      result = *(v22 + 480);
      if (result)
      {
        v26 = *(result + 3);
        if (v26)
        {
          LODWORD(v26) = *result;
        }
      }

      else
      {
        LODWORD(v26) = 0;
      }

      v27 = v26 + 35;
      v28 = (v26 + 34) / v23 + v20;
      if (v27 > v23)
      {
        v20 = v28;
      }

      if (v25++ >= *(v24 + 16))
      {
        v13 = v33;
        v18 = v34;
        v19 = *(v34 + 8);
        v14 = v35;
        v16 = v36;
        v15 = v32;
        goto LABEL_18;
      }

      continue;
    }

    break;
  }

  if (result == 1)
  {
    v31 = 267;
  }

  else
  {
    v31 = result;
  }

LABEL_40:
  *(v36 + 32) = v20;
  *a6 = v31;
  return result;
}

uint64_t sub_1819BC0BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *a1;
  if (*(*a1 + 80))
  {
    v5 = 1;
  }

  else
  {
    v5 = a4 < 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a3;
  v8 = a2;
  v9 = 0;
  v10 = 0;
  v11 = a4;
  v12 = (a3 + 32);
  v13 = a4;
  do
  {
    if (*(v12 - 1) == a2)
    {
      v10 += *v12;
      ++v9;
    }

    v12 += 10;
    --v13;
  }

  while (v13);
  if (!v10)
  {
    return 0;
  }

  result = 0;
  if (v9 >= 2)
  {
    v77 = v4;
    v80 = v9;
    v79 = a4;
    v82 = *(a1 + 84);
    if (v82)
    {
LABEL_14:
      v83 = 0;
      v14 = 0;
      v78 = v9 - 1;
      v15 = 1;
      v16 = &unk_1ED456000;
      v17 = &off_1ED452EB0;
      while (1)
      {
        v18 = 0;
        v19 = v11;
        v20 = v7;
        do
        {
          if (*(v20 + 16) && *(v20 + 24) == v8 && (!v18 || *(v20 + 32) < *(v18 + 32)))
          {
            v18 = v20;
          }

          v20 += 40;
          --v19;
        }

        while (v19);
        v85 = v18;
        if (!v14)
        {
          v15 *= 4;
LABEL_31:
          v21 = *(v18 + 16);
          LODWORD(v89) = 0;
          v90 = 0;
          v22 = v18;
          result = sub_1819BC978(v4, v21, *(v18 + 36), &v89, &v90);
          if (!result)
          {
            result = sub_1819BD2EC(v4, *v22, *(v22 + 2), v90, v89);
            if (!result)
            {
              v23 = **v22;
              if (v23 && (v24 = *(*v22 + 2), v24 >= 1))
              {
                v25 = 0;
                v26 = &v23[v24];
                do
                {
                  do
                  {
                    v27 = v23;
                    v28 = *v23++;
                  }

                  while (v28 < 0);
                  v31 = *v23;
                  v29 = v23 - 1;
                  v30 = v31;
                  if (v31)
                  {
                    do
                    {
                      v32 = v30 & 0xFFFFFF80;
                      v33 = v27[2];
                      ++v27;
                      v30 = v33;
                    }

                    while (v32 | v33);
                  }

                  else
                  {
                    v27 = v29;
                  }

                  ++v25;
                  v23 = v27 + 2;
                }

                while ((v27 + 2) < v26);
              }

              else
              {
                v25 = 0;
              }

              v64 = v83;
              if (v25 < v83)
              {
                v64 = v25;
              }

              if (v14)
              {
                v25 = v64;
              }

              v83 = v25;
              result = 0;
            }
          }

          goto LABEL_101;
        }

        if (*(v18 + 32) >= (v83 + v15 / 4 - 1) / (v15 / 4) * v82)
        {
          break;
        }

        if (v14 < 0xC)
        {
          v15 *= 4;
        }

        if (*(*v18 + 80) >= 2 && v14 != v78)
        {
          goto LABEL_31;
        }

        result = 0;
LABEL_101:
        *(v85 + 16) = 0;
        if (++v14 >= v9 || result)
        {
          return result;
        }
      }

      v84 = *(v18 + 16);
      v34 = *(v18 + 36);
      if (sqlite3_initialize() || (v35 = sub_181902484(32, 0x10200405028CB4ALL)) == 0)
      {
        result = 7;
      }

      else
      {
        *v35 = 0u;
        *(v35 + 16) = 0u;
        *v35 = v84;
        *(v35 + 16) = *(a1 + 40);
        *(v35 + 8) = v34;
        *(a1 + 40) = v35;
        *(v84 + 24) = v35;
        result = 0;
      }

      v36 = *(v84 + 32);
      if (!v36)
      {
        goto LABEL_100;
      }

      v81 = result;
      if (v36[2] >= 1)
      {
        v37 = 0;
        v86 = v15;
        v87 = v14;
        while (1)
        {
          v38 = *(*v36 + 8 * v37);
          if (!v38)
          {
            goto LABEL_51;
          }

          v39 = *(v38 + 80);
          if (v39)
          {
            v40 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_59;
            }

            v41 = v16[350];
            if (v41)
            {
              xmmword_1ED452F18(v41);
            }

            qword_1ED456A48[0] -= v17[2](v39);
            --qword_1ED456A90;
            (*v17)(v39);
            v39 = v16[350];
            if (v39)
            {
              break;
            }
          }

LABEL_60:
          if (!*(v38 + 5))
          {
            v42 = *(v38 + 40);
            if (v42)
            {
              v43 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                v44 = v16[350];
                if (v44)
                {
                  xmmword_1ED452F18(v44);
                }

                qword_1ED456A48[0] -= v17[2](v42);
                --qword_1ED456A90;
                (*v17)(v42);
                v42 = v16[350];
                if (!v42)
                {
                  goto LABEL_68;
                }

                v43 = (v17 + 15);
              }

              (*v43)(v42);
            }
          }

LABEL_68:
          v45 = v8;
          v46 = v36;
          v47 = v17;
          v48 = v16;
          v49 = *(v38 + 56);
          if (v49)
          {
            v51 = v49[3];
            v50 = v49[4];
            v52 = v50[3];
            if (v52)
            {
              xmmword_1ED452F18(v52);
            }

            sub_181929C84(v50, v49);
            v53 = v50[3];
            if (v53)
            {
              xmmword_1ED452F28(v53);
            }

            sqlite3_finalize(v51);
          }

          v54 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            v16 = v48;
            v55 = v48[350];
            v15 = v86;
            if (v55)
            {
              xmmword_1ED452F18(v55);
            }

            v17 = v47;
            qword_1ED456A48[0] -= v47[2](v38);
            --qword_1ED456A90;
            (*v47)(v38);
            v38 = v16[350];
            v14 = v87;
            v36 = v46;
            v8 = v45;
            if (!v38)
            {
              goto LABEL_51;
            }

            v54 = (v17 + 15);
          }

          else
          {
            v15 = v86;
            v14 = v87;
            v16 = v48;
            v17 = v47;
            v36 = v46;
            v8 = v45;
          }

          (*v54)(v38);
LABEL_51:
          if (++v37 >= v36[2])
          {
            goto LABEL_79;
          }
        }

        v40 = (v17 + 15);
LABEL_59:
        (*v40)(v39);
        goto LABEL_60;
      }

LABEL_79:
      v56 = *v36;
      if (*v36)
      {
        v57 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
LABEL_85:
          (*v57)(v56);
          goto LABEL_86;
        }

        v58 = v16[350];
        if (v58)
        {
          xmmword_1ED452F18(v58);
        }

        qword_1ED456A48[0] -= v17[2](v56);
        --qword_1ED456A90;
        (*v17)(v56);
        v56 = v16[350];
        if (v56)
        {
          v57 = (v17 + 15);
          goto LABEL_85;
        }
      }

LABEL_86:
      v59 = *(v36 + 3);
      if (v59)
      {
        v60 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v61 = v16[350];
          if (v61)
          {
            xmmword_1ED452F18(v61);
          }

          qword_1ED456A48[0] -= v17[2](v59);
          --qword_1ED456A90;
          (*v17)(v59);
          v59 = v16[350];
          if (!v59)
          {
            goto LABEL_93;
          }

          v60 = (v17 + 15);
        }

        (*v60)(v59);
      }

LABEL_93:
      v36[2] = 0;
      *v36 = 0;
      *(v36 + 3) = 0;
      v62 = &off_1ED452EB0;
      v7 = a3;
      if (dword_1ED452E80)
      {
        v63 = v16[350];
        v4 = v77;
        if (v63)
        {
          xmmword_1ED452F18(v63);
        }

        qword_1ED456A48[0] -= (v17)[2](v36);
        --qword_1ED456A90;
        (*v17)(v36);
        v36 = v16[350];
        result = v81;
        if (!v36)
        {
          goto LABEL_100;
        }

        v62 = (v17 + 15);
      }

      else
      {
        v4 = v77;
      }

      (*v62)(v36);
      result = v81;
LABEL_100:
      *(v84 + 32) = 0;
      v9 = v80;
      v11 = v79;
      goto LABEL_101;
    }

    v90 = 0;
    v88 = 0;
    v89 = 0;
    result = sub_1819BD8A8(v4, &v90);
    if (!result)
    {
      v65 = v90;
      v66 = sqlite3_column_blob(v90, 0);
      if (!v66)
      {
        goto LABEL_122;
      }

      v67 = v66;
      v68 = sqlite3_column_bytes(v65, 0);
      v69 = &v67[v68];
      v70 = sub_1819BD988(v67, v69, &v89);
      v5 = v70 < v68;
      v4 = v77;
      if (!v5)
      {
        goto LABEL_122;
      }

      v71 = &v67[v70];
      do
      {
        v71 += sub_1819BD988(v71, v69, &v88);
      }

      while (v71 < v69);
      v72 = v88;
      v73 = v89;
      if (v89 && v88 != 0)
      {
        *(a1 + 88) = v89;
        *(a1 + 84) = (v72 / v73 + *(v77 + 117)) / *(v77 + 117);
        result = sqlite3_reset(v65);
        v7 = a3;
        v9 = v80;
        v11 = v79;
        if (!result)
        {
          v82 = *(a1 + 84);
          goto LABEL_14;
        }
      }

      else
      {
LABEL_122:
        sqlite3_reset(v65);
        return 267;
      }
    }
  }

  return result;
}

uint64_t sub_1819BC888(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a2 && !*a3)
  {
    if (*a2 == 5)
    {
      v4 = *(a2 + 32);
      v5 = *(v4 + 80);
      if (v5)
      {
        if (v5 < 1)
        {
          LODWORD(v6) = 0;
        }

        else
        {
          v6 = 0;
          v7 = (v4 + 112);
          while (*v7)
          {
            ++v6;
            v7 += 5;
            if (v5 == v6)
            {
              LODWORD(v6) = *(v4 + 80);
              break;
            }
          }
        }

        *(a2 + 50) = v6 == v5;
      }

      result = sub_1819BEB78(result, 1, v4);
      *a3 = result;
    }

    else
    {
      v8 = result;
      sub_1819BC888(result, *(a2 + 16));
      result = sub_1819BC888(v8, *(a2 + 24));
      v10 = *(*(a2 + 16) + 50);
      if (v10)
      {
        v10 = *(*(a2 + 24) + 50) != 0;
      }

      *(a2 + 50) = v10;
    }
  }

  return result;
}

uint64_t sub_1819BC978(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, char **a5)
{
  v7 = a2;
  v71 = 0;
  v9 = *(a2 + 32);
  memset(v72, 0, 32);
  v10 = *(a2 + 8);
  if (*(a2 + 12))
  {
    v11 = 11;
  }

  else
  {
    v11 = 3;
  }

  v12 = v11 | (32 * (*(a2 + 16) != 0));
  v13 = *(a1 + 48) > a3;
  memset(&v72[2], 0, 80);
  v73 = 0uLL;
  memset(v74, 0, sizeof(v74));
  v75 = 0uLL;
  v70 = a3;
  LODWORD(v71) = v12 | (4 * v13);
  v68 = *a2;
  v14 = v68;
  v69 = v10;
  *(v9 + 16) = &v68;
  v15 = sub_1819AEA58(a1, v9, v14, v10);
  v66 = v7;
  v67 = v9;
  if (v15)
  {
    goto LABEL_47;
  }

  v65 = a5;
LABEL_6:
  while (2)
  {
    v16 = sub_1819AF3DC(a1, v9);
    if (v16 == 100)
    {
      v17 = v9;
      v18 = *(v9 + 72);
      v19 = *(v17 + 80);
      v20 = *&v72[0];
      if (!*&v72[0])
      {
        if (sqlite3_initialize())
        {
          *&v72[0] = 0;
          LODWORD(v74[0]) = v19;
        }

        else
        {
          v30 = sub_181902484(v19 + 11, 2073670511);
          *&v72[0] = v30;
          LODWORD(v74[0]) = v19;
          if (v30)
          {
            v31 = v30;
            memcpy(v30, v18, v19);
            v32 = &v31[v19];
            *v32 = 0;
            *(v32 + 4) = 0;
            v9 = v67;
            continue;
          }
        }

        v15 = 7;
        v7 = v66;
        goto LABEL_138;
      }

      v21 = 0;
      v22 = v18;
      while (1)
      {
        v76 = 0;
        v77[0] = 0;
        v23 = sub_1819BDAB0(*(a1 + 463), v22, v19, v20, *(v74 + v21), &v76, v77);
        v25 = v22 == v18 || v22 == 0;
        if (v23)
        {
          v15 = v23;
          v9 = v67;
          if (!v25)
          {
            v33 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_43;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
            --qword_1ED456A90;
            off_1ED452EB0(v22);
            v22 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v33 = &xmmword_1ED452F28;
LABEL_43:
              (*v33)(v22);
            }
          }

LABEL_46:
          v7 = v66;
          goto LABEL_47;
        }

        if (!v25)
        {
          v26 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_22;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
          --qword_1ED456A90;
          off_1ED452EB0(v22);
          v22 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            break;
          }
        }

LABEL_23:
        v27 = *(v72 + v21);
        if (!v27)
        {
          goto LABEL_30;
        }

        v28 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_29;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v27);
        --qword_1ED456A90;
        off_1ED452EB0(v27);
        v27 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v28 = &xmmword_1ED452F28;
LABEL_29:
          (*v28)(v27);
        }

LABEL_30:
        *(v72 + v21) = 0;
        v22 = v76;
        v19 = v77[0];
        if (v21 == 15)
        {
          *(&v73 + 1) = v76;
          HIDWORD(v75) = v77[0];
          v9 = v67;
          goto LABEL_6;
        }

        v29 = v21 + 1;
        v20 = *(v72 + ++v21);
        if (!v20)
        {
          *(v72 + v29) = v76;
          *(v74 + v29) = v19;
          v9 = v67;
          goto LABEL_6;
        }
      }

      v26 = &xmmword_1ED452F28;
LABEL_22:
      (*v26)(v22);
      goto LABEL_23;
    }

    break;
  }

  v15 = v16;
  if (v16)
  {
    goto LABEL_46;
  }

  v34 = 0;
  v35 = 0;
  v36 = v65;
  do
  {
    v40 = *(v72 + v34);
    if (!v40)
    {
      goto LABEL_57;
    }

    v41 = v72 + 4 * v34;
    if (!v35)
    {
      LODWORD(v15) = *(v41 + 32);
      *(v72 + v34) = 0;
      v35 = v40;
      goto LABEL_57;
    }

    v77[0] = 0;
    v76 = 0;
    v42 = sub_1819BDAB0(*(a1 + 463), v40, *(v41 + 32), v35, v15, &v76, v77);
    if (v42)
    {
      v15 = v42;
      v64 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v7 = v66;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
        --qword_1ED456A90;
        off_1ED452EB0(v35);
        v35 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v64 = &xmmword_1ED452F28;
          goto LABEL_137;
        }
      }

      else
      {
        v7 = v66;
LABEL_137:
        (*v64)(v35);
      }

LABEL_138:
      v9 = v67;
LABEL_47:
      v37 = 0;
      while (2)
      {
        v38 = *(v72 + v37);
        if (v38)
        {
          v39 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_48;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v38);
          --qword_1ED456A90;
          off_1ED452EB0(v38);
          v38 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v39 = &xmmword_1ED452F28;
LABEL_48:
            (*v39)(v38);
          }
        }

        v37 += 8;
        if (v37 == 128)
        {
          goto LABEL_76;
        }

        continue;
      }
    }

    v43 = *(v72 + v34);
    if (v43)
    {
      v44 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_67;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
      --qword_1ED456A90;
      off_1ED452EB0(v43);
      v43 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v44 = &xmmword_1ED452F28;
LABEL_67:
        (*v44)(v43);
      }
    }

    v45 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
      --qword_1ED456A90;
      off_1ED452EB0(v35);
      v35 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_74;
      }

      v45 = &xmmword_1ED452F28;
    }

    (*v45)(v35);
LABEL_74:
    *(v72 + v34) = 0;
    v35 = v76;
    LODWORD(v15) = v77[0];
    v36 = v65;
LABEL_57:
    ++v34;
  }

  while (v34 != 16);
  *v36 = v35;
  *a4 = v15;
  v15 = 0;
  v7 = v66;
  v9 = v67;
LABEL_76:
  if (v9)
  {
    if (*(v9 + 8) >= 1)
    {
      v46 = 0;
      while (2)
      {
        v47 = *(*v9 + 8 * v46);
        if (!v47)
        {
          goto LABEL_80;
        }

        v48 = *(v47 + 80);
        if (v48)
        {
          v49 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_88;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v48);
          --qword_1ED456A90;
          off_1ED452EB0(v48);
          v48 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v49 = &xmmword_1ED452F28;
LABEL_88:
            (*v49)(v48);
          }
        }

        if (!*(v47 + 5))
        {
          v50 = *(v47 + 40);
          if (v50)
          {
            v51 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_96;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v50);
            --qword_1ED456A90;
            off_1ED452EB0(v50);
            v50 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v51 = &xmmword_1ED452F28;
LABEL_96:
              (*v51)(v50);
            }
          }
        }

        v52 = *(v47 + 56);
        if (v52)
        {
          v53 = v52[3];
          v54 = v52[4];
          v55 = v54[3];
          if (v55)
          {
            xmmword_1ED452F18(v55);
          }

          sub_181929C84(v54, v52);
          v56 = v54[3];
          if (v56)
          {
            xmmword_1ED452F28(v56);
          }

          sqlite3_finalize(v53);
          v9 = v67;
        }

        v57 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v47);
          --qword_1ED456A90;
          off_1ED452EB0(v47);
          v47 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_80;
          }

          v57 = &xmmword_1ED452F28;
        }

        (*v57)(v47);
LABEL_80:
        if (++v46 >= *(v9 + 8))
        {
          break;
        }

        continue;
      }
    }

    v58 = *v9;
    if (*v9)
    {
      v59 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_114;
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
        v59 = &xmmword_1ED452F28;
LABEL_114:
        (*v59)(v58);
      }
    }

    v60 = *(v9 + 24);
    if (v60)
    {
      v61 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_121;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v60);
      --qword_1ED456A90;
      off_1ED452EB0(v60);
      v60 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v61 = &xmmword_1ED452F28;
LABEL_121:
        (*v61)(v60);
      }
    }

    *(v9 + 8) = 0;
    *v9 = 0;
    *(v9 + 24) = 0;
    v62 = &off_1ED452EB0;
    v7 = v66;
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
      if (xmmword_1ED456AF0)
      {
        v62 = &xmmword_1ED452F28;
        goto LABEL_127;
      }
    }

    else
    {
LABEL_127:
      (*v62)(v9);
    }
  }

  *(v7 + 32) = 0;
  return v15;
}

uint64_t sub_1819BD2EC(uint64_t a1, uint64_t a2, int a3, char *a4, int a5)
{
  if (!a4)
  {
    v17 = *a2;
    if (*a2)
    {
      v18 = &off_1ED452EB0;
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
          goto LABEL_30;
        }

        v18 = &xmmword_1ED452F28;
      }

      (*v18)(v17);
    }

LABEL_30:
    result = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_103;
  }

  v7 = *(a2 + 60);
  if (v7 < 0)
  {
    result = 0;
    *a2 = a4;
    *(a2 + 8) = a5;
    goto LABEL_103;
  }

  if (*a2)
  {
    if (v7 < a3)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 < a3)
    {
      v9 = a5;
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v7 < a3)
    {
      v10 = *a2;
    }

    else
    {
      v10 = a4;
    }

    if (v7 < a3)
    {
      v11 = *(a2 + 8);
    }

    else
    {
      v11 = a5;
    }

    if (v7 < a3)
    {
      v12 = a3 - v7;
    }

    else
    {
      v12 = v7 - a3;
    }

    v60 = v12;
    v13 = *(a1 + 463);
    v14 = v8;
    if (v13)
    {
      if (sqlite3_initialize() || (v14 = sub_181902484(v9 + 10, 304244177)) == 0)
      {
        v15 = 7;
        v16 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_101;
        }

        goto LABEL_97;
      }
    }

    v62 = v14;
    v57 = v14;
    v58 = v8;
    if (v11 < 1)
    {
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v65 = 0;
      v23 = &v10[sub_1819AE95C(v10, &v65)];
      v24 = v65;
    }

    v64 = v23;
    v8 = v57;
    v25 = v57;
    if (v9 >= 1)
    {
      v65 = 0;
      v26 = &v58[sub_1819AE95C(v58, &v65)];
      v27 = v65;
      v63 = v26;
      v25 = v57;
      if (v23)
      {
        v28 = 0;
        v29 = v10;
        v30 = 0;
        v61 = &v58[v9];
        v56 = v29;
        v59 = &v29[v11];
        while (1)
        {
          if (v24 == v27)
          {
            v31 = 0;
          }

          else
          {
            v31 = -1;
          }

          if (v24 > v27)
          {
            v31 = 1;
          }

          if (v13)
          {
            v31 = -v31;
          }

          if (v31)
          {
            if (v31 < 0)
            {
              v47 = *v23;
              if (*v23)
              {
                do
                {
                  v48 = v47 & 0xFFFFFF80;
                  v49 = *++v23;
                  v47 = v49;
                }

                while (v48 | v49);
              }

              v64 = (v23 + 1);
              if ((v23 + 1) >= v59)
              {
                goto LABEL_86;
              }

              v65 = 0;
              v50 = sub_1819AE95C(v23 + 1, &v65);
              v51 = v65;
              v23 = &v64[v50];
              v64 = v23;
              if (v13)
              {
                v51 = -v65;
              }

              v24 += v51;
              v26 = v63;
            }

            else
            {
              v32 = *v26;
              if (*v26)
              {
                do
                {
                  v33 = v32 & 0xFFFFFF80;
                  v34 = *++v26;
                  v32 = v34;
                }

                while (v33 | v34);
              }

              v63 = v26 + 1;
              if ((v26 + 1) >= v61)
              {
                goto LABEL_86;
              }

              v65 = 0;
              v35 = sub_1819AE95C(v26 + 1, &v65);
              v23 = v64;
              v26 = &v63[v35];
              v63 = v26;
              v36 = v65;
              if (v13)
              {
                v36 = -v65;
              }

              v27 += v36;
            }
          }

          else
          {
            v37 = v30 - v24;
            if (v28)
            {
              v38 = v13 == 0;
            }

            else
            {
              v38 = 1;
            }

            v39 = v62;
            if (v38)
            {
              v37 = v24 - v30;
            }

            v40 = v62;
            do
            {
              v41 = v37;
              *v40++ = v37 | 0x80;
              v42 = v37 > 0x7F;
              v37 >>= 7;
            }

            while (v42);
            *(v40 - 1) = v41;
            v62 = v40;
            v43 = 1;
            v44 = v24;
            if (!sub_1819BE544(&v62, v60, 0, 1, &v64, &v63))
            {
              v62 = v39;
              v44 = v30;
              v43 = v28;
            }

            v45 = v64;
            if (v64 >= v59)
            {
              v23 = 0;
            }

            else
            {
              v65 = 0;
              v23 = &v45[sub_1819AE95C(v64, &v65)];
              v46 = v65;
              if (v13)
              {
                v46 = -v65;
              }

              v24 += v46;
            }

            v64 = v23;
            v52 = v63;
            if (v63 >= v61)
            {
LABEL_86:
              v25 = v62;
              v10 = v56;
              v8 = v57;
              break;
            }

            v65 = 0;
            v26 = &v52[sub_1819AE95C(v63, &v65)];
            v63 = v26;
            v53 = v65;
            if (v13)
            {
              v53 = -v65;
            }

            v27 += v53;
            v30 = v44;
            v28 = v43;
          }

          if (!v23 || !v26)
          {
            goto LABEL_86;
          }
        }
      }
    }

    v9 = v25 - v8;
    if (!v13)
    {
      v15 = 0;
      v8 = v58;
      v16 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_101;
      }

      goto LABEL_97;
    }

    v54 = &off_1ED452EB0;
    v55 = v58;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v58);
      --qword_1ED456A90;
      off_1ED452EB0(v58);
      v55 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_94:
        v15 = 0;
        v16 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_101;
        }

LABEL_97:
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
          goto LABEL_102;
        }

        v16 = &xmmword_1ED452F28;
LABEL_101:
        (*v16)(v10);
LABEL_102:
        *a2 = v8;
        *(a2 + 8) = v9;
        result = v15;
        goto LABEL_103;
      }

      v54 = &xmmword_1ED452F28;
    }

    (*v54)(v55);
    goto LABEL_94;
  }

  v20 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_37:
    (*v20)(a4);
    result = 0;
    goto LABEL_103;
  }

  if (xmmword_1ED456AF0)
  {
    v21 = a4;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    a4 = v21;
  }

  v22 = a4;
  qword_1ED456A48[0] -= xmmword_1ED452EC0(a4);
  --qword_1ED456A90;
  off_1ED452EB0(v22);
  a4 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v20 = &xmmword_1ED452F28;
    goto LABEL_37;
  }

  result = 0;
LABEL_103:
  if (*(a2 + 60) < a3)
  {
    *(a2 + 60) = a3;
  }

  return result;
}

uint64_t sub_1819BD8A8(void *a1, sqlite3_stmt **a2)
{
  v7 = 0;
  result = sub_1819AE4E4(a1, 0x16u, &v7, 0);
  v4 = v7;
  if (!result)
  {
    if (!sub_1818DF6EC(v7, 0))
    {
      v5 = *(v4 + 16);
      if ((*(v5 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v5, 0);
      }

      else
      {
        *v5 = 0;
        *(v5 + 20) = 4;
      }

      v6 = *(*v4 + 24);
      if (v6)
      {
        xmmword_1ED452F28(v6);
      }
    }

    if (sqlite3_step(v4) == 100 && sqlite3_column_type(v4, 0) == 4)
    {
      result = 0;
    }

    else
    {
      LODWORD(result) = sqlite3_reset(v4);
      v4 = 0;
      if (result)
      {
        result = result;
      }

      else
      {
        result = 267;
      }
    }
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1819BD988(_BYTE *a1, unint64_t a2, void *a3)
{
  if (a1 >= a2)
  {
    v4 = 0;
    LODWORD(v3) = a1;
    goto LABEL_22;
  }

  v3 = a1 + 1;
  v4 = *a1 & 0x7F;
  if ((*a1 & 0x80) != 0)
  {
    if (v3 >= a2)
    {
      goto LABEL_22;
    }

    v5 = a1[1];
    v3 = a1 + 2;
    v4 |= (v5 & 0x7F) << 7;
    if (v5 < 0)
    {
      if (v3 >= a2)
      {
        goto LABEL_22;
      }

      v6 = a1[2];
      v3 = a1 + 3;
      v4 |= (v6 & 0x7F) << 14;
      if (v6 < 0)
      {
        if (v3 >= a2)
        {
          goto LABEL_22;
        }

        v7 = a1[3];
        v3 = a1 + 4;
        v4 |= (v7 & 0x7F) << 21;
        if (v7 < 0)
        {
          if (v3 >= a2)
          {
            goto LABEL_22;
          }

          v8 = a1[4];
          v3 = a1 + 5;
          v4 |= (v8 & 0x7F) << 28;
          if (v8 < 0)
          {
            if (v3 >= a2)
            {
              goto LABEL_22;
            }

            v9 = a1[5];
            v3 = a1 + 6;
            v4 |= (v9 & 0x7F) << 35;
            if (v9 < 0)
            {
              if (v3 >= a2)
              {
                goto LABEL_22;
              }

              v10 = a1[6];
              v3 = a1 + 7;
              v4 |= (v10 & 0x7F) << 42;
              if (v10 < 0)
              {
                if (v3 >= a2)
                {
                  goto LABEL_22;
                }

                v11 = a1[7];
                v3 = a1 + 8;
                v4 |= (v11 & 0x7F) << 49;
                if (v11 < 0)
                {
                  if (v3 >= a2)
                  {
                    goto LABEL_22;
                  }

                  v12 = a1[8];
                  v3 = a1 + 9;
                  v4 |= (v12 & 0x7F) << 56;
                  if (v12 < 0)
                  {
                    if (v3 < a2)
                    {
                      v4 |= a1[9] << 63;
                      LODWORD(v3) = a1 + 10;
                      goto LABEL_23;
                    }

LABEL_22:
                    LODWORD(v3) = v3 + 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_23:
  *a3 = v4;
  return (v3 - a1);
}

uint64_t sub_1819BDAB0(int a1, char *a2, int a3, char *a4, int a5, void *a6, _DWORD *a7)
{
  v7 = a7;
  *a6 = 0;
  *a7 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v15 = a3;
  v16 = a5;
  v17 = sub_181902484(a3 + a5 + 17, 1640524147);
  if (!v17)
  {
    return 7;
  }

  v74 = v17;
  v75 = v17;
  if (a3 < 1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v78 = 0;
    v18 = &a2[sub_1819AE95C(a2, &v78)];
    v19 = v78;
  }

  v73 = a6;
  v77 = v18;
  if (a5 < 1)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v78 = 0;
    v20 = &a4[sub_1819AE95C(a4, &v78)];
    v21 = v78;
  }

  v76 = v20;
  v22 = v18 != 0;
  v23 = v20 != 0;
  v24 = v74;
  v25 = v74;
  if (!(v18 | v20))
  {
LABEL_65:
    result = 0;
    *v25 = 0;
    v68 = v73;
    goto LABEL_66;
  }

  v72 = v7;
  v26 = 0;
  v27 = &a2[v15];
  v28 = &a4[v16];
  v29 = 1;
  while (1)
  {
    if (v19 == v21)
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    if (v19 > v21)
    {
      v31 = 1;
    }

    if (a1)
    {
      v31 = -v31;
    }

    if (!v22 || !v23 || v31)
    {
      v41 = v31 < 0;
      v42 = (a1 == 0) | v29;
      v43 = v75;
      if (v23 && (!v22 || !v41))
      {
        v44 = v21 - v26;
        v45 = v26 - v21;
        if ((v42 & 1) == 0)
        {
          v44 = v45;
        }

        do
        {
          v46 = v44;
          *v43++ = v44 | 0x80;
          v36 = v44 > 0x7F;
          v44 >>= 7;
        }

        while (v36);
        *(v43 - 1) = v46;
        v75 = v43;
        v47 = *v20;
        v48 = v20;
        if (*v20)
        {
          v48 = v20;
          do
          {
            v49 = v47 & 0xFFFFFF80;
            v50 = *++v48;
            v47 = v50;
          }

          while (v49 | v50);
        }

        v51 = v48 + 1;
        v52 = v48 + 1 - v20;
        memcpy(v43, v20, v52);
        v75 = &v43[v52];
        v76 = v51;
        if (v51 >= v28)
        {
          v20 = 0;
          v76 = 0;
          v40 = v19;
          v30 = v21;
        }

        else
        {
          v78 = 0;
          v53 = sub_1819AE95C(v51, &v78);
          v18 = v77;
          v20 = &v76[v53];
          v76 = v20;
          v54 = v78;
          if (a1)
          {
            v54 = -v78;
          }

          v30 = v54 + v21;
          v40 = v19;
        }

        v19 = v21;
        goto LABEL_14;
      }

      v55 = v19 - v26;
      v56 = v26 - v19;
      if ((v42 & 1) == 0)
      {
        v55 = v56;
      }

      do
      {
        v57 = v55;
        *v43++ = v55 | 0x80;
        v36 = v55 > 0x7F;
        v55 >>= 7;
      }

      while (v36);
      *(v43 - 1) = v57;
      v75 = v43;
      v58 = *v18;
      v59 = v18;
      if (*v18)
      {
        v59 = v18;
        do
        {
          v60 = v58 & 0xFFFFFF80;
          v61 = *++v59;
          v58 = v61;
        }

        while (v60 | v61);
      }

      v62 = (v59 + 1);
      v63 = v59 + 1 - v18;
      memcpy(v43, v18, v63);
      v75 = &v43[v63];
      v77 = v62;
      if (v62 >= v27)
      {
        v18 = 0;
        v77 = 0;
        v40 = v19;
      }

      else
      {
        v78 = 0;
        v64 = sub_1819AE95C(v62, &v78);
        v65 = v78;
        v18 = &v77[v64];
        v77 = v18;
        if (a1)
        {
          v65 = -v78;
        }

        v40 = v65 + v19;
        v20 = v76;
      }

      goto LABEL_13;
    }

    v32 = v19 - v26;
    v33 = v26 - v19;
    if ((a1 == 0) | v29 & 1)
    {
      v33 = v32;
    }

    v34 = v75;
    do
    {
      v35 = v33;
      *v34++ = v33 | 0x80;
      v36 = v33 > 0x7F;
      v33 >>= 7;
    }

    while (v36);
    *(v34 - 1) = v35;
    v75 = v34;
    v37 = sub_1819BDFA0(&v75, &v77, &v76);
    if (v37)
    {
      break;
    }

    v38 = v77;
    if (v77 >= v27)
    {
      v18 = 0;
      v40 = v19;
    }

    else
    {
      v78 = 0;
      v18 = &v38[sub_1819AE95C(v77, &v78)];
      v39 = v78;
      if (a1)
      {
        v39 = -v78;
      }

      v40 = v39 + v19;
    }

    v77 = v18;
    v66 = v76;
    if (v76 < v28)
    {
      v78 = 0;
      v20 = &v66[sub_1819AE95C(v76, &v78)];
      v76 = v20;
      v67 = v78;
      if (a1)
      {
        v67 = -v78;
      }

      v30 = v67 + v21;
      goto LABEL_14;
    }

    v20 = 0;
    v76 = 0;
LABEL_13:
    v30 = v21;
LABEL_14:
    v29 = 0;
    v22 = v18 != 0;
    v23 = v20 != 0;
    v26 = v19;
    v21 = v30;
    v19 = v40;
    if (!(v18 | v20))
    {
      v24 = v74;
      v25 = v75;
      v7 = v72;
      goto LABEL_65;
    }
  }

  v69 = &off_1ED452EB0;
  v70 = v74;
  v71 = v37;
  if (!dword_1ED452E80)
  {
    goto LABEL_72;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
    v70 = v74;
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v70);
  --qword_1ED456A90;
  off_1ED452EB0(v70);
  v70 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v69 = &xmmword_1ED452F28;
LABEL_72:
    v68 = v73;
    (*v69)(v70);
    LODWORD(v25) = 0;
    v24 = 0;
    result = v71;
    v7 = v72;
  }

  else
  {
    LODWORD(v25) = 0;
    v24 = 0;
    result = v71;
    v7 = v72;
    v68 = v73;
  }

LABEL_66:
  *v68 = v24;
  *v7 = v25 - v24;
  return result;
}

uint64_t sub_1819BDFA0(_BYTE **a1, unsigned __int8 **a2, char **a3)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
LABEL_2:
  while (2)
  {
    v9 = (v7 + 1);
    while (1)
    {
      v11 = *v7;
      if (v11 == 1)
      {
        LODWORD(v13) = *v9;
        if (*v9 < 0)
        {
          LODWORD(v13) = v13 & 0x7F | (v7[2] << 7);
          if (v7[2] < 0)
          {
            LODWORD(v13) = v13 & 0x3FFF | (v7[3] << 14);
            if (v7[3] < 0)
            {
              LODWORD(v13) = v13 & 0x1FFFFF | (v7[4] << 21);
              if (v7[4] < 0)
              {
                LODWORD(v13) = v13 & 0xFFFFFFF | ((v7[5] & 7) << 28);
              }
            }
          }
        }

        if (!v13)
        {
          return 267;
        }

        v12 = *v8;
        if (!*v8)
        {
LABEL_8:
          v14 = 0x7FFFFFFF;
          goto LABEL_27;
        }
      }

      else if (*v7)
      {
        LODWORD(v13) = 0;
        v12 = *v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *v8;
        if (!*v8)
        {
          goto LABEL_113;
        }

        LODWORD(v13) = 0x7FFFFFFF;
      }

      if (v12 == 1)
      {
        v14 = v8[1];
        if (v8[1] < 0)
        {
          v14 = v14 & 0x7F | (v8[2] << 7);
          if (v8[2] < 0)
          {
            v14 = v14 & 0x3FFF | (v8[3] << 14);
            if (v8[3] < 0)
            {
              v14 = v14 & 0x1FFFFF | (v8[4] << 21);
              if (v8[4] < 0)
              {
                v14 = v14 & 0xFFFFFFF | ((v8[5] & 7) << 28);
              }
            }
          }
        }

        if (!v14)
        {
          return 267;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_27:
      if (v13 == v14)
      {
        break;
      }

      if (v13 < v14)
      {
        if (v13)
        {
          v43 = 0;
          v13 = v13;
          do
          {
            v44 = v13;
            v6[++v43] = v13 | 0x80;
            v18 = v13 > 0x7F;
            v13 >>= 7;
          }

          while (v18);
          *v6 = 1;
          v45 = &v6[v43];
          *v45 = v44;
          v6 = v45 + 1;
          v46 = v43 + 1;
          v11 = v9[v43];
        }

        else
        {
          v46 = 0;
        }

        v47 = &v7[v46];
        v7 += v46;
        if (v11 >= 2)
        {
          v7 = v47;
          do
          {
            v48 = v11 & 0x80;
            v49 = *++v7;
            LOBYTE(v11) = v49;
          }

          while (v49 & 0xFE | v48);
        }

        v50 = v7 - v47;
        memcpy(v6, v47, v50);
        v6 += v50;
        goto LABEL_2;
      }

      if (v14)
      {
        v15 = 0;
        v16 = v14;
        do
        {
          v17 = v16;
          v6[++v15] = v16 | 0x80;
          v18 = v16 > 0x7F;
          v16 >>= 7;
        }

        while (v18);
        *v6 = 1;
        v19 = &v6[v15];
        *v19 = v17;
        v6 = v19 + 1;
        v20 = v15 + 1;
        v12 = v8[v15 + 1];
      }

      else
      {
        v20 = 0;
      }

      v21 = &v8[v20];
      v8 += v20;
      if (v12 >= 2)
      {
        v8 = v21;
        do
        {
          v22 = v12 & 0x80;
          v23 = *++v8;
          LOBYTE(v12) = v23;
        }

        while (v23 & 0xFE | v22);
      }

      v10 = v8 - v21;
      memcpy(v6, v21, v10);
      v6 += v10;
    }

    v24 = 0;
    if (v13)
    {
      v13 = v13;
      do
      {
        v25 = v13;
        v6[++v24] = v13 | 0x80;
        v18 = v13 > 0x7F;
        v13 >>= 7;
      }

      while (v18);
      *v6 = 1;
      v26 = &v6[v24];
      *v26 = v25;
      v6 = v26 + 1;
      ++v24;
    }

    v27 = &v8[v24];
    v52 = 0;
    v7 += v24 + sub_1819AE95C(&v7[v24], &v52);
    v28 = v52;
    v52 = 0;
    v8 = &v27[sub_1819AE95C(v27, &v52)];
    if (v28 >= 2)
    {
      v29 = v52;
      if (v52 >= 2)
      {
        v30 = 0;
        do
        {
          v31 = v28;
          if (v28 >= v29)
          {
            v32 = v29;
          }

          else
          {
            v32 = v28;
          }

          v33 = v32 - v30;
          do
          {
            v34 = v33;
            *v6++ = v33 | 0x80;
            v18 = v33 > 0x7F;
            v33 >>= 7;
          }

          while (v18);
          *(v6 - 1) = v34;
          if (v28 == v29)
          {
            v35 = *v7;
            if (v35 >= 2)
            {
              if ((v35 & 0x80) != 0)
              {
                v35 = v35 & 0x7F | (v7[1] << 7);
                if (v7[1] < 0)
                {
                  v35 = v35 & 0x3FFF | (v7[2] << 14);
                  if (v7[2] < 0)
                  {
                    v35 = v35 & 0x1FFFFF | (v7[3] << 21);
                    if (v7[3] < 0)
                    {
                      v35 = v35 & 0xFFFFFFF | ((v7[4] & 7) << 28);
                      v37 = 5;
                    }

                    else
                    {
                      v37 = 4;
                    }
                  }

                  else
                  {
                    v37 = 3;
                  }
                }

                else
                {
                  v37 = 2;
                }
              }

              else
              {
                v37 = 1;
              }

              v7 += v37;
              v28 = v28 + v35 - 2;
            }

            else
            {
              v28 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v41 = *v8;
            if (v41 >= 2)
            {
              if ((v41 & 0x80) != 0)
              {
                v41 = v41 & 0x7F | (v8[1] << 7);
                if (v8[1] < 0)
                {
                  v41 = v41 & 0x3FFF | (v8[2] << 14);
                  if (v8[2] < 0)
                  {
                    v41 = v41 & 0x1FFFFF | (v8[3] << 21);
                    if (v8[3] < 0)
                    {
                      v41 = v41 & 0xFFFFFFF | ((v8[4] & 7) << 28);
                      v42 = 5;
                    }

                    else
                    {
                      v42 = 4;
                    }
                  }

                  else
                  {
                    v42 = 3;
                  }
                }

                else
                {
                  v42 = 2;
                }
              }

              else
              {
                v42 = 1;
              }

              v8 += v42;
              v29 = v31 + v41 - 2;
            }

            else
            {
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else if (v28 >= v29)
          {
            v38 = *v8;
            if (v38 >= 2)
            {
              if ((v38 & 0x80) != 0)
              {
                v38 = v38 & 0x7F | (v8[1] << 7);
                if (v8[1] < 0)
                {
                  v38 = v38 & 0x3FFF | (v8[2] << 14);
                  if (v8[2] < 0)
                  {
                    v38 = v38 & 0x1FFFFF | (v8[3] << 21);
                    if (v8[3] < 0)
                    {
                      v38 = v38 & 0xFFFFFFF | ((v8[4] & 7) << 28);
                      v40 = 5;
                    }

                    else
                    {
                      v40 = 4;
                    }
                  }

                  else
                  {
                    v40 = 3;
                  }
                }

                else
                {
                  v40 = 2;
                }
              }

              else
              {
                v40 = 1;
              }

              v8 += v40;
              v29 = v29 + v38 - 2;
            }

            else
            {
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v36 = *v7;
            if (v36 >= 2)
            {
              if ((v36 & 0x80) != 0)
              {
                v36 = v36 & 0x7F | (v7[1] << 7);
                if (v7[1] < 0)
                {
                  v36 = v36 & 0x3FFF | (v7[2] << 14);
                  if (v7[2] < 0)
                  {
                    v36 = v36 & 0x1FFFFF | (v7[3] << 21);
                    if (v7[3] < 0)
                    {
                      v36 = v36 & 0xFFFFFFF | ((v7[4] & 7) << 28);
                      v39 = 5;
                    }

                    else
                    {
                      v39 = 4;
                    }
                  }

                  else
                  {
                    v39 = 3;
                  }
                }

                else
                {
                  v39 = 2;
                }
              }

              else
              {
                v39 = 1;
              }

              v7 += v39;
              v28 = v28 + v36 - 2;
            }

            else
            {
              v28 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          v30 = v32 - 2;
        }

        while (v28 != 0x7FFFFFFFFFFFFFFFLL || v29 != 0x7FFFFFFFFFFFFFFFLL);
        continue;
      }
    }

    break;
  }

LABEL_113:
  result = 0;
  *v6 = 0;
  *a1 = v6 + 1;
  *a2 = v7 + 1;
  *a3 = v8 + 1;
  return result;
}

uint64_t sub_1819BE544(_BYTE **a1, int a2, int a3, int a4, unsigned __int8 **a5, char **a6)
{
  v8 = *a1;
  v9 = *a5;
  v10 = *a6;
  if (**a5 == 1)
  {
    LODWORD(v11) = v9[1];
    if (v9[1] < 0)
    {
      LODWORD(v11) = v11 & 0x7F | (v9[2] << 7);
      if (v9[2] < 0)
      {
        LODWORD(v11) = v11 & 0x3FFF | (v9[3] << 14);
        if (v9[3] < 0)
        {
          LODWORD(v11) = v11 & 0x1FFFFF | (v9[4] << 21);
          if (v9[4] < 0)
          {
            LODWORD(v11) = v11 & 0xFFFFFFF | ((v9[5] & 7) << 28);
            v12 = 5;
          }

          else
          {
            v12 = 4;
          }
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 1;
    }

    if (!v11)
    {
      return 0;
    }

    v9 += v12 + 1;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (*v10 == 1)
  {
    v13 = v10[1];
    if (v10[1] < 0)
    {
      v13 = v13 & 0x7F | (v10[2] << 7);
      if (v10[2] < 0)
      {
        v13 = v13 & 0x3FFF | (v10[3] << 14);
        if (v10[3] < 0)
        {
          v13 = v13 & 0x1FFFFF | (v10[4] << 21);
          if (v10[4] < 0)
          {
            v13 = v13 & 0xFFFFFFF | ((v10[5] & 7) << 28);
            v14 = 5;
          }

          else
          {
            v14 = 4;
          }
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }

    if (!v13)
    {
      return 0;
    }

    v10 += v14 + 1;
  }

  else
  {
    v13 = 0;
  }

  v56 = a2;
  while (1)
  {
    while (v11 != v13)
    {
      if (v11 < v13)
      {
        v33 = *v9;
        if (v33 >= 2)
        {
          do
          {
            v35 = *++v9;
            v34 = v35;
            v36 = v33 & 0x80;
            LOBYTE(v33) = v35;
          }

          while (v35 & 0xFE | v36);
          v33 = v34;
        }

        if (!v33)
        {
          goto LABEL_123;
        }

        LODWORD(v11) = v9[1];
        if (v9[1] < 0)
        {
          LODWORD(v11) = v11 & 0x7F | (v9[2] << 7);
          if (v9[2] < 0)
          {
            LODWORD(v11) = v11 & 0x3FFF | (v9[3] << 14);
            if (v9[3] < 0)
            {
              LODWORD(v11) = v11 & 0x1FFFFF | (v9[4] << 21);
              if (v9[4] < 0)
              {
                LODWORD(v11) = v11 & 0xFFFFFFF | ((v9[5] & 7) << 28);
                v9 += 6;
              }

              else
              {
                v9 += 5;
              }
            }

            else
            {
              v9 += 4;
            }
          }

          else
          {
            v9 += 3;
          }
        }

        else
        {
          v9 += 2;
        }
      }

      else
      {
        v15 = *v10;
        if (v15 >= 2)
        {
          do
          {
            v17 = *++v10;
            v16 = v17;
            v18 = v15 & 0x80;
            LOBYTE(v15) = v17;
          }

          while (v17 & 0xFE | v18);
          v15 = v16;
        }

        if (!v15)
        {
          goto LABEL_123;
        }

        v13 = v10[1];
        if (v10[1] < 0)
        {
          v13 = v13 & 0x7F | (v10[2] << 7);
          if (v10[2] < 0)
          {
            v13 = v13 & 0x3FFF | (v10[3] << 14);
            if (v10[3] < 0)
            {
              v13 = v13 & 0x1FFFFF | (v10[4] << 21);
              if (v10[4] < 0)
              {
                v13 = v13 & 0xFFFFFFF | ((v10[5] & 7) << 28);
                v10 += 6;
              }

              else
              {
                v10 += 5;
              }
            }

            else
            {
              v10 += 4;
            }
          }

          else
          {
            v10 += 3;
          }
        }

        else
        {
          v10 += 2;
        }
      }
    }

    v53 = a5;
    v54 = a6;
    v55 = a1;
    v19 = v8;
    if (v11)
    {
      *v8 = 1;
      v19 = v8 + 1;
      v11 = v11;
      do
      {
        v20 = v11;
        *v19++ = v11 | 0x80;
        v23 = v11 > 0x7F;
        v11 >>= 7;
      }

      while (v23);
      *(v19 - 1) = v20;
    }

    v57 = 0;
    v9 += sub_1819AE95C(v9, &v57);
    v21 = v57;
    v57 = 0;
    v10 += sub_1819AE95C(v10, &v57);
    v22 = v21 - 2;
    v23 = v21 < 2 || v57 < 2;
    if (v23)
    {
      break;
    }

    v24 = 0;
    v25 = v57 - 2;
LABEL_51:
    v26 = v22 + v56;
    while (1)
    {
      v27 = v24;
      if (v25 == v26 || v25 <= v26 && !a4 && v25 > v22)
      {
        if (a3)
        {
          v24 = v22;
        }

        else
        {
          v24 = v25;
        }

        v28 = v24 - v27 + 2;
        do
        {
          v29 = v28;
          *v19++ = v28 | 0x80;
          v23 = v28 > 0x7F;
          v28 >>= 7;
        }

        while (v23);
        v8 = 0;
        *(v19 - 1) = v29;
      }

      if (a3)
      {
        v30 = 0;
      }

      else
      {
        v30 = v25 <= v26;
      }

      v31 = !v30;
      if (v25 > v22 && (v31 & 1) != 0)
      {
        v32 = *v9;
        if (v32 > 1)
        {
          v57 = 0;
          v9 += sub_1819AE95C(v9, &v57);
          v22 = v22 + v57 - 2;
          goto LABEL_51;
        }

        if (!v8)
        {
          v8 = v19;
        }

        goto LABEL_83;
      }

      if (*v10 < 2u)
      {
        break;
      }

      v57 = 0;
      v10 += sub_1819AE95C(v10, &v57);
      v25 = v25 + v57 - 2;
    }

    v32 = *v9;
    if (!v8)
    {
      v8 = v19;
    }

    if (v32 < 2)
    {
LABEL_83:
      a6 = v54;
      a1 = v55;
      a5 = v53;
      goto LABEL_88;
    }

    a6 = v54;
    a1 = v55;
    a5 = v53;
    do
    {
      v38 = *++v9;
      v37 = v38;
      v39 = v32 & 0x80;
      LOBYTE(v32) = v38;
    }

    while (v38 & 0xFE | v39);
    v32 = v37;
LABEL_88:
    v40 = *v10;
    if (v40 >= 2)
    {
      do
      {
        v42 = *++v10;
        v41 = v42;
        v43 = v40 & 0x80;
        LOBYTE(v40) = v42;
      }

      while (v42 & 0xFE | v43);
      v40 = v41;
    }

    if (!v32)
    {
      goto LABEL_123;
    }

    if (!v40)
    {
      v49 = (v10 + 1);
      goto LABEL_126;
    }

    LODWORD(v11) = v9[1];
    if (v9[1] < 0)
    {
      LODWORD(v11) = v11 & 0x7F | (v9[2] << 7);
      if (v9[2] < 0)
      {
        LODWORD(v11) = v11 & 0x3FFF | (v9[3] << 14);
        if (v9[3] < 0)
        {
          LODWORD(v11) = v11 & 0x1FFFFF | (v9[4] << 21);
          if (v9[4] < 0)
          {
            LODWORD(v11) = v11 & 0xFFFFFFF | ((v9[5] & 7) << 28);
            v44 = 5;
          }

          else
          {
            v44 = 4;
          }
        }

        else
        {
          v44 = 3;
        }
      }

      else
      {
        v44 = 2;
      }
    }

    else
    {
      v44 = 1;
    }

    v13 = v10[1];
    if (v10[1] < 0)
    {
      v13 = v13 & 0x7F | (v10[2] << 7);
      if (v10[2] < 0)
      {
        v13 = v13 & 0x3FFF | (v10[3] << 14);
        if (v10[3] < 0)
        {
          v13 = v13 & 0x1FFFFF | (v10[4] << 21);
          if (v10[4] < 0)
          {
            v13 = v13 & 0xFFFFFFF | ((v10[5] & 7) << 28);
            v45 = 5;
          }

          else
          {
            v45 = 4;
          }
        }

        else
        {
          v45 = 3;
        }
      }

      else
      {
        v45 = 2;
      }
    }

    else
    {
      v45 = 1;
    }

    v9 += v44 + 1;
    v10 += v45 + 1;
  }

  v8 = v19;
  a6 = v54;
  a1 = v55;
  a5 = v53;
LABEL_123:
  v46 = *v10;
  if (*v10)
  {
    do
    {
      v47 = v46 & 0xFFFFFF80;
      v48 = *++v10;
      v46 = v48;
    }

    while (v47 | v48);
  }

  LOBYTE(v32) = *v9;
  v49 = (v10 + 1);
  if (*v9)
  {
LABEL_126:
    v32 = v32;
    do
    {
      v50 = v32 & 0xFFFFFF80;
      v51 = *++v9;
      v32 = v51;
    }

    while (v50 | v51);
  }

  *a5 = v9 + 1;
  *a6 = v49;
  if (*a1 != v8)
  {
    *v8 = 0;
    *a1 = v8 + 1;
    return 1;
  }

  return 0;
}

uint64_t sub_1819BEB78(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *a1;
  if (!a2 || *(a1 + 76) != *(v4 + 463) || ((v5 = *(a3 + 80), (v5 - 5) >= 0xFFFFFFFC) ? (v6 = v5 == 0) : (v6 = 1), v6 || *(a3 + 104)))
  {
LABEL_8:
    v7 = 0;
    v8 = a3 + 88;
    do
    {
      if (v7 >= *(a3 + 80))
      {
        v10 = 0;
        result = 0;
        goto LABEL_17;
      }

      if (*(v8 + 32))
      {
        v52 = 0;
        v51 = 0;
        result = sub_1819BC978(v4, v8, *(a3 + 84), &v52, &v51);
        if (!result)
        {
          result = sub_1819BD2EC(v4, a3, v7, v51, v52);
        }
      }

      else
      {
        result = 0;
      }

      ++v7;
      v8 += 40;
    }

    while (!result);
    v10 = 0;
    goto LABEL_17;
  }

  v11 = *(a3 + 120);
  if (v11)
  {
    if (!*(v11 + 52))
    {
      goto LABEL_8;
    }

    LODWORD(v11) = 1;
  }

  if (v5 != 1)
  {
    if (*(a3 + 144))
    {
      goto LABEL_8;
    }

    v15 = *(a3 + 160);
    if (v15)
    {
      if (!*(v15 + 52))
      {
        goto LABEL_8;
      }

      LODWORD(v11) = 1;
    }

    if (v5 != 2)
    {
      if (*(a3 + 184))
      {
        goto LABEL_8;
      }

      v16 = *(a3 + 200);
      if (v16)
      {
        if (!*(v16 + 52))
        {
          goto LABEL_8;
        }

        LODWORD(v11) = 1;
      }

      if (v5 != 3)
      {
        if (*(a3 + 224))
        {
          goto LABEL_8;
        }

        v17 = *(a3 + 240);
        if (v17)
        {
          if (!*(v17 + 52))
          {
            goto LABEL_8;
          }

          LODWORD(v11) = 1;
        }
      }
    }
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  if (*(a3 + 84) >= *(v4 + 48))
  {
    v12 = -1;
  }

  else
  {
    v12 = *(a3 + 84);
  }

  v46 = v12;
  if (*(a3 + 80) >= 1)
  {
    v13 = 0;
    v14 = a3 + 88;
    v45 = a3 + 88;
    while (1)
    {
      v18 = v14 + 40 * v13;
      v19 = *(v18 + 32);
      if (v19)
      {
        v20 = *v18;
        v21 = *(v18 + 8);
        v22 = *(v19 + 2);
        if (*(v4 + 463))
        {
          v23 = sub_1819AFF20;
        }

        else
        {
          v23 = sub_1819AFF78;
        }

        result = sub_1819AEA58(v4, v19, v20, v21);
        if (result)
        {
          goto LABEL_80;
        }

        v47 = v13;
        v49 = v19;
        if (v22 <= 0)
        {
          *(v19 + 3) = 0;
        }

        else
        {
          v24 = 0;
          v25 = *v19;
          while (1)
          {
            v26 = *(v25 + 8 * v24);
            if (!*(v26 + 40))
            {
              break;
            }

            v27 = *(v26 + 72);
            v28 = *(v26 + 80);
            v29 = v27 >= v21 ? v21 : *(v26 + 72);
            v30 = memcmp(v28, v20, v29);
            if (v27 != v21 || v30 != 0)
            {
              break;
            }

            if (v22 == ++v24)
            {
              LODWORD(v24) = v22;
              break;
            }
          }

          *(v49 + 3) = v24;
          if (v24 >= 1)
          {
            v32 = 0;
            v33 = -8;
            do
            {
              v35 = v33;
              v36 = *(*v49 + 8 * v32);
              if (*(v4 + 463) && v36[8])
              {
                v36[16] = 0;
                v34 = v36 + 16;
                *(v34 - 2) = 0;
                sub_1819B0240(0, *(v34 - 4), *(v34 - 6), v34 - 2, v34, v34 - 2, &v50);
              }

              else
              {
                result = sub_1819AF2D0(*(*v49 + 8 * v32), v36[12], 10);
                if (result)
                {
                  goto LABEL_80;
                }

                v36[14] = v36[12] + sub_1819AE95C(v36[12], v36 + 16);
              }

              ++v32;
              v33 = v35 + 8;
            }

            while (v32 < *(v49 + 3));
            v37 = v32 - 1;
            if (v32 != 1)
            {
              v48 = *v49;
              v38 = (*v49 + v35);
              v39 = 1;
              do
              {
                v40 = v37--;
                if (v40 < v32)
                {
                  v41 = *(v48 + 8 * v37);
                  v42 = v39;
                  v43 = v38;
                  do
                  {
                    if ((v23(v41, v43->i64[1]) & 0x80000000) != 0)
                    {
                      break;
                    }

                    v44 = *v43;
                    *v43 = vextq_s8(*v43, *v43, 8uLL);
                    v43 = (v43 + 8);
                    v41 = v44.i64[0];
                    --v42;
                  }

                  while (v42);
                }

                v38 = (v38 - 8);
                ++v39;
              }

              while (v40 > 1);
            }
          }
        }

        *(v49 + 10) = v46;
        v13 = v47;
        v14 = v45;
      }

      result = 0;
      ++v13;
      v10 = 1;
      if (v13 >= *(a3 + 80))
      {
        goto LABEL_17;
      }
    }
  }

  result = 0;
LABEL_80:
  v10 = 1;
LABEL_17:
  *(a3 + 56) = v10;
  return result;
}

uint64_t sub_1819BEF44(uint64_t result, uint64_t a2, int *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    return result;
  }

  v3 = (a2 + 48);
  if (*(a2 + 48))
  {
    return result;
  }

  v4 = *(result + 76);
  *(a2 + 49) = 1;
  v5 = *a2;
  if (*a2 > 2)
  {
    if (v5 == 4)
    {
      v26 = *(a2 + 16);
      v27 = *(a2 + 24);
      v28 = a2;
      if (v4)
      {
        v29 = -1;
      }

      else
      {
        v29 = 1;
      }

      v30 = *(v26 + 40);
      v31 = *(v27 + 40);
      v32 = v30 <= v31;
      if (v30 == v31)
      {
        v33 = 0;
      }

      else
      {
        v33 = -1;
      }

      if (!v32)
      {
        v33 = 1;
      }

      v34 = *(a2 + 16);
      if (!*(v27 + 48))
      {
        v35 = v33 * v29;
        if (*(v26 + 48) || (v34 = v26, (v35 & 0x80000000) == 0))
        {
          v34 = v27;
          if (!*(v26 + 48))
          {
            v34 = v27;
            if (v35 <= 0)
            {
              v36 = result;
              (sub_1819BEF44)();
              result = v36;
              v34 = v27;
            }
          }
        }
      }

      result = sub_1819BEF44(result, v34);
      v37 = *(v26 + 48);
      if (v37)
      {
        v37 = *(v27 + 48) != 0;
      }

      *v3 = v37;
      v38 = *(v26 + 40);
      if (*(v27 + 48))
      {
        goto LABEL_55;
      }

      v39 = *(v27 + 40);
      if (v38 == v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = -1;
      }

      if (v38 > v39)
      {
        v40 = 1;
      }

      if (!*(v26 + 48) && v40 * v29 < 0)
      {
LABEL_55:
        *(v28 + 40) = v38;
      }

      else
      {
        *(v28 + 40) = v39;
      }

      return result;
    }

    if (v5 != 3)
    {
LABEL_26:
      v21 = *(a2 + 32);
      if (*(v21 + 32))
      {
        v22 = result;
        v23 = a2;
        sqlite3_free(*(v21 + 40));
        result = v22;
        a2 = v23;
      }

      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 32) = 0;
      v24 = *result;
      v102 = a2;
      if (!*(v21 + 56))
      {
        v43 = *(result + 76);
        v44 = *(v24 + 463);
        if (v43 == v44 || (v45 = *(v21 + 8)) == 0)
        {
          result = sub_1819BFCFC(v24, v21, v3);
          v25 = 0;
        }

        else
        {
          result = sub_1819B0240(v44, *v21, v45, (v21 + 16), (v21 + 24), (v21 + 48), v3);
          v25 = 0;
          *(v21 + 40) = *(v21 + 16);
        }

        goto LABEL_190;
      }

      v110 = 0;
      if (*(v21 + 80) == 1)
      {
        result = sub_1819BFE20(v24, *(v21 + 120), (v21 + 24), (v21 + 40), (v21 + 48));
        v25 = result;
        *v3 = *(v21 + 40) == 0;
LABEL_190:
        *a3 = v25;
        *(v102 + 40) = *(v21 + 24);
        return result;
      }

      v106 = v24;
      v46 = 0;
      v25 = 0;
      v104 = v21 + 88;
      v103 = *(result + 76);
      memset(&v112[3], 0, 64);
      if (v103)
      {
        v47 = -1;
      }

      else
      {
        v47 = 1;
      }

      v101 = v3;
      v111 = 0uLL;
      memset(v112, 0, 48);
LABEL_68:
      if (v25)
      {
        v49 = 0;
        goto LABEL_96;
      }

      v50 = 0;
      v51 = 0;
      v49 = 0;
      v52 = v112 + 2;
      v53 = 120;
      while (1)
      {
        v46 = v110;
        if (v50 >= *(v21 + 80) || v110 != 0)
        {
          v25 = 0;
          goto LABEL_96;
        }

        if (v50 == *(v21 + 60))
        {
          break;
        }

        v56 = *(v21 + v53);
        if (v56)
        {
          result = sub_1819BFE20(v106, v56, v52 - 2, v52 - 1, v52);
          v25 = result;
          if (!*(v52 - 1))
          {
            v110 = 1;
          }

          goto LABEL_83;
        }

        v25 = 0;
        *(v52 - 6) = 1;
LABEL_72:
        ++v50;
        v53 += 40;
        v52 += 8;
        if (v25)
        {
          v46 = v110;
LABEL_96:
          v59 = *(v21 + 80);
          if (v59 < 1)
          {
            v61 = v46;
LABEL_153:
            if (!v61)
            {
              v80 = *(&v112[2 * v59 - 1] - 2);
              result = sqlite3_initialize();
              if (result || (result = sub_181902484(v80 + 8, 3376932950)) == 0)
              {
                v25 = 7;
                goto LABEL_190;
              }

              v81 = result;
              result = memcpy(result, *&v112[2 * *(v21 + 80) - 2], v80 + 1);
              *&v81[v80] = 0;
              v82 = *(v21 + 80);
              if (v82 >= 2)
              {
                v83 = 0;
                v84 = 0;
                v85 = -1;
                v86 = v112;
                while (1)
                {
                  if (!*(v86 - 4))
                  {
                    v87 = *v86;
                    v108 = v81;
                    v109 = v87;
                    v107 = v81;
                    result = sub_1819BE544(&v107, v82 + v85, 0, 1, &v109, &v108);
                    v82 = *(v21 + 80);
                    if (!result)
                    {
                      goto LABEL_163;
                    }

                    v84 = v107 - v81;
                  }

                  ++v83;
                  --v85;
                  v86 += 4;
                  if (v83 >= v82 - 1)
                  {
                    goto LABEL_163;
                  }
                }
              }

              LODWORD(v83) = 0;
              v84 = 0;
LABEL_163:
              if (v83 != v82 - 1)
              {
                v48 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_67;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v81);
                --qword_1ED456A90;
                result = off_1ED452EB0(v81);
                v81 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v48 = &xmmword_1ED452F28;
LABEL_67:
                  result = (*v48)(v81);
                  goto LABEL_68;
                }

                goto LABEL_68;
              }

              v61 = 0;
              *(v21 + 24) = v49;
              *(v21 + 40) = v81;
              *(v21 + 48) = v84;
              *(v21 + 32) = 1;
            }

            *v101 = v61;
            goto LABEL_190;
          }

          v60 = 0;
          v61 = v46;
          LOBYTE(v62) = v46;
          v63 = v46;
          while (2)
          {
            if (!v25 && !v63)
            {
              v64 = &v112[2 * v60 - 1];
              if (*v64)
              {
                goto LABEL_99;
              }

              v66 = v64 + 1;
              v65 = *(v64 + 1);
              v67 = v65 <= v49;
              if (v65 == v49)
              {
                v68 = 0;
              }

              else
              {
                v68 = -1;
              }

              if (!v67)
              {
                v68 = 1;
              }

              if (((v68 * v47) & 0x80000000) == 0)
              {
                goto LABEL_99;
              }

              if (*(v21 + 60) == v60)
              {
                result = sub_1819BFCFC(v106, v21, &v110);
                v25 = 0;
                v69 = *(v21 + 40);
                *(v64 + 6) = *(v21 + 48);
                *(v64 + 1) = *(v21 + 24);
                *(v64 + 2) = v69;
                v46 = v110;
                v61 = v110;
                LOBYTE(v62) = v110;
              }

              else
              {
                v70 = *(v104 + 40 * v60 + 32);
                if (v70)
                {
                  result = sub_1819BFE20(v106, v70, v64 + 1, v64 + 2, v64 + 6);
                  v25 = result;
                  if (!*(v64 + 2))
                  {
                    v46 = 1;
                    v110 = 1;
                    v61 = 1;
                    LOBYTE(v62) = 1;
                  }
                }

                else
                {
                  v25 = 0;
                  *v64 = 1;
                }
              }

              if (*v66 == v49)
              {
                v71 = 0;
              }

              else
              {
                v71 = -1;
              }

              if (*v66 > v49)
              {
                v71 = 1;
              }

              if (v71 * v47 > 0)
              {
                v60 = 0;
                v49 = *v66;
              }

              if (v25 || v62)
              {
                v63 = v62;
              }

              else
              {
                while (1)
                {
                  v72 = &v112[2 * v60 - 1];
                  if (*v72)
                  {
                    break;
                  }

                  v74 = v72 + 1;
                  v73 = *(v72 + 1);
                  v75 = v73 <= v49;
                  if (v73 == v49)
                  {
                    v76 = 0;
                  }

                  else
                  {
                    v76 = -1;
                  }

                  if (!v75)
                  {
                    v76 = 1;
                  }

                  if (((v76 * v47) & 0x80000000) == 0)
                  {
                    break;
                  }

                  if (*(v21 + 60) == v60)
                  {
                    result = sub_1819BFCFC(v106, v21, &v110);
                    v25 = 0;
                    v77 = *(v21 + 40);
                    *(v72 + 6) = *(v21 + 48);
                    *(v72 + 1) = *(v21 + 24);
                    *(v72 + 2) = v77;
                    v46 = v110;
                    v61 = v110;
                    v62 = v110;
                  }

                  else
                  {
                    v78 = *(v104 + 40 * v60 + 32);
                    if (v78)
                    {
                      result = sub_1819BFE20(v106, v78, v72 + 1, v72 + 2, v72 + 6);
                      v25 = result;
                      if (*(v72 + 2))
                      {
                        v62 = 0;
                      }

                      else
                      {
                        v46 = 1;
                        v110 = 1;
                        v61 = 1;
                        v62 = 1;
                      }
                    }

                    else
                    {
                      v62 = 0;
                      v25 = 0;
                      *v72 = 1;
                    }
                  }

                  if (*v74 == v49)
                  {
                    v79 = 0;
                  }

                  else
                  {
                    v79 = -1;
                  }

                  if (*v74 > v49)
                  {
                    v79 = 1;
                  }

                  if (v79 * v47 > 0)
                  {
                    v60 = 0;
                    v49 = *v74;
                  }

                  v63 = v62;
                  if (v25 || v62)
                  {
                    goto LABEL_100;
                  }
                }

                LOBYTE(v62) = 0;
LABEL_99:
                v63 = 0;
                v25 = 0;
              }

LABEL_100:
              v59 = *(v21 + 80);
            }

            if (++v60 >= v59)
            {
              goto LABEL_153;
            }

            continue;
          }
        }
      }

      result = sub_1819BFCFC(v106, v21, &v110);
      v25 = 0;
      v55 = *(v21 + 40);
      *v52 = *(v21 + 48);
      *(v52 - 2) = *(v21 + 24);
      *(v52 - 1) = v55;
LABEL_83:
      if (!*(v52 - 6))
      {
        v57 = *(v52 - 2);
        if (!v51)
        {
          goto LABEL_94;
        }

        if (v49 == v57)
        {
          v58 = 0;
        }

        else
        {
          v58 = -1;
        }

        if (v49 > v57)
        {
          v58 = 1;
        }

        if (v103)
        {
          v58 = -v58;
        }

        if (v58 < 0)
        {
LABEL_94:
          v51 = 1;
          v49 = *(v52 - 2);
        }

        else
        {
          v51 = 1;
        }
      }

      goto LABEL_72;
    }
  }

  else if (v5 != 1)
  {
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      v8 = a2;
      if (!*(v7 + 49))
      {
        v9 = result;
        sub_1819BEF44(result, *(a2 + 24));
        result = v9;
      }

      v10 = result;
      result = sub_1819BEF44(result, v6);
      v11 = *(v6 + 48);
      v12 = v8;
      if (!v11)
      {
        if (*a3)
        {
          v11 = 0;
        }

        else
        {
          do
          {
            if (*(v7 + 48))
            {
              break;
            }

            v17 = *(v6 + 40);
            v18 = *(v7 + 40);
            v32 = v17 < v18;
            v19 = v17 > v18;
            v20 = v32;
            if (v4)
            {
              v19 = v20;
            }

            if (!v19)
            {
              break;
            }

            result = sub_1819BEF44(v10, v7);
          }

          while (!*a3);
          v11 = *(v6 + 48);
          v12 = v8;
        }
      }

      *(v12 + 40) = *(v6 + 40);
      *(v12 + 48) = v11;
      return result;
    }

    goto LABEL_26;
  }

  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = a2;
  if (*(v14 + 50))
  {
    result = sub_1819BEF44(result, *(a2 + 24));
    *(v15 + 40) = *(v13 + 40);
    v16 = *(v13 + 48);
LABEL_58:
    *(v15 + 48) = v16;
    return result;
  }

  v41 = *(v13 + 50);
  v42 = result;
  result = sub_1819BEF44(result, *(a2 + 16));
  if (v41)
  {
    *(v15 + 40) = *(v14 + 40);
    v16 = *(v14 + 48);
    goto LABEL_58;
  }

  v88 = v42;
  v89 = v13;
  while (1)
  {
    result = sub_1819BEF44(v88, v89);
    if (*(v14 + 48))
    {
      v91 = v15;
      *(v15 + 40) = *(v14 + 40);
      v97 = 1;
      v92 = a3;
      goto LABEL_193;
    }

    v90 = *(v13 + 48);
    v91 = v15;
    if (*(v13 + 48))
    {
      break;
    }

    v92 = a3;
    v93 = *(v14 + 40);
    if (*a3)
    {
      goto LABEL_192;
    }

    v94 = *(v13 + 40);
    v95 = v93 <= v94;
    if (v93 == v94)
    {
      v96 = 0;
    }

    else
    {
      v96 = -1;
    }

    if (!v95)
    {
      v96 = 1;
    }

    if (v4)
    {
      v96 = -v96;
    }

    if (!v96)
    {
      goto LABEL_192;
    }

    v88 = v42;
    if (v96 >= 0)
    {
      v89 = v13;
    }

    else
    {
      v89 = v14;
    }
  }

  v93 = *(v14 + 40);
  v92 = a3;
LABEL_192:
  *(v15 + 40) = v93;
  v97 = v90 != 0;
LABEL_193:
  *(v91 + 48) = v97;
  if (*v91 == 1 && v97)
  {
    v99 = *(v13 + 32);
    if (*v99 && !*v92)
    {
      do
      {
        if (*(v13 + 48))
        {
          break;
        }

        bzero(*(v99 + 40), *(v99 + 48));
        result = sub_1819BEF44(v42, v13);
        v92 = a3;
      }

      while (!*a3);
    }

    v100 = *(v14 + 32);
    if (v100 && *v100 && !*v92)
    {
      do
      {
        if (*(v14 + 48))
        {
          break;
        }

        bzero(*(v100 + 40), *(v100 + 48));
        result = sub_1819BEF44(v42, v14);
      }

      while (!*a3);
    }

    *(v14 + 48) = 1;
    *(v13 + 48) = 1;
  }

  return result;
}

BOOL sub_1819BF964(uint64_t a1, int *a2)
{
  v40 = *a2;
  if (v40)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    v40 = sub_1819C01F8(0, a1);
    if (!v40)
    {
      v44 = 0;
      if (!*(a1 + 40))
      {
        goto LABEL_49;
      }

      v5 = *a1;
      v6 = *(*a1 + 72);
      v7 = *v6;
      v8 = sqlite3_column_int64(*(a1 + 16), 0);
      v9 = *(v5 + 48);
      if (v9 >= 1)
      {
        v10 = v8;
        v11 = 0;
        v38 = v6;
        do
        {
          while (*(*(v5 + 64) + v11))
          {
            if (++v11 >= v9)
            {
              goto LABEL_48;
            }
          }

          v39 = v11 + 1;
          v12 = sqlite3_column_text(*(a1 + 16), v11 + 1);
          v13 = *(a1 + 32);
          v14 = *v6;
          __s1 = 0;
          v15 = (*(v14 + 24))(v6, v12, 0xFFFFFFFFLL, &__s1);
          v16 = v6;
          v17 = __s1;
          if (v15)
          {
            v18 = v15;
            v44 = v15;
          }

          else
          {
            *__s1 = v16;
            v17 = __s1;
            if (*v14 >= 1 && (v19 = (*(v14 + 48))(__s1, v13), v17 = __s1, v19))
            {
              v18 = v19;
              (*(v14 + 32))(__s1);
              v17 = 0;
              v44 = v18;
            }

            else
            {
              do
              {
                __s1 = 0;
                v43 = 0;
                v42 = 0;
                v41 = 0;
                v20 = (*(v7 + 40))(v17, &__s1, &v43, &v42 + 4, &v42, &v41);
                v18 = v20;
                v44 = v20;
                v21 = *(a1 + 40);
                if (v21)
                {
                  v22 = v20 == 0;
                }

                else
                {
                  v22 = 0;
                }

                if (v22)
                {
                  v18 = 0;
                  do
                  {
                    v24 = *(v21 + 2);
                    v25 = v11 != v24 && v24 < *(v5 + 48);
                    if (!v25 && ((v26 = *v21, v27 = v41, (*v21)[4]) ? (v28 = v41 == 0) : (v28 = 1), v28 && ((v29 = v26[2], v29 == v43) || (v29 < v43 ? (v30 = v26[3] == 0) : (v30 = 1), !v30))) && !memcmp(__s1, *v26, v29))
                    {
                      sub_1819C10C8(v21 + 3, v10, v11, v27, &v44);
                      v18 = v44;
                      v23 = v44 == 0;
                      v21 = v21[2];
                      if (!v21)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v23 = 1;
                      v21 = v21[2];
                      if (!v21)
                      {
                        break;
                      }
                    }
                  }

                  while (v23);
                }
              }

              while (!v18);
            }
          }

          if (v17)
          {
            (*(v7 + 32))(v17);
          }

          if (v18 != 101)
          {
            goto LABEL_50;
          }

          v44 = 0;
          v9 = *(v5 + 48);
          v6 = v38;
          ++v11;
        }

        while (v39 < v9);
      }

LABEL_48:
      v31 = *(a1 + 40);
      if (v31)
      {
        do
        {
          if (*(v31 + 24))
          {
            v18 = sub_1819C11EC((v31 + 24), 0);
          }

          else
          {
            v18 = 0;
          }

          v31 = *(v31 + 16);
          if (v31)
          {
            v36 = v18 == 0;
          }

          else
          {
            v36 = 0;
          }
        }

        while (v36);
      }

      else
      {
LABEL_49:
        v18 = 0;
      }

LABEL_50:
      v40 = v18;
    }
  }

  v32 = sub_1819C04D8(a1, *(a1 + 24), &v40);
  for (i = *(a1 + 40); i; i = *(i + 16))
  {
    v34 = *(i + 24);
    if (v34)
    {
      v35 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
        --qword_1ED456A90;
        off_1ED452EB0(v34);
        v34 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_54;
        }

        v35 = &xmmword_1ED452F28;
      }

      (*v35)(v34);
    }

LABEL_54:
    *(i + 24) = 0;
  }

  v37 = v40;
  *a2 = v40;
  return (v37 | v32) == 0;
}

uint64_t sub_1819BFCFC(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(a2 + 16);
  v7 = *a2;
  if ((v6 || (v6 = *a2, v7)) && (v8 = *(a2 + 8), v6 < &v7[v8]))
  {
    v17 = 0;
    result = sub_1819AE95C(v6, &v17);
    v9 = &v6[result];
    if (*(v5 + 463) && *(a2 + 16))
    {
      v10 = *(a2 + 24) - v17;
    }

    else
    {
      v10 = *(a2 + 24) + v17;
    }

    *(a2 + 24) = v10;
    *(a2 + 40) = v9;
    v11 = *v9;
    v12 = &v6[result];
    if (*v9)
    {
      v12 = &v6[result];
      do
      {
        v13 = v11 & 0xFFFFFF80;
        v14 = *++v12;
        v11 = v14;
      }

      while (v13 | v14);
    }

    v15 = (v12 + 1);
    *(a2 + 48) = v12 + 1 - v9;
    if (v12 + 1 < &v7[v8])
    {
      v16 = &v7[v8 + ~v12];
      while (!*v15)
      {
        ++v15;
        if (!--v16)
        {
          v15 = &v7[v8];
          break;
        }
      }
    }

    *(a2 + 16) = v15;
    *a3 = 0;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1819BFE20(uint64_t a1, uint64_t a2, void *a3, void *a4, _DWORD *a5)
{
  v5 = *(a2 + 12);
  if (*(a1 + 463))
  {
    v6 = sub_1819AFF20;
  }

  else
  {
    v6 = sub_1819AFF78;
  }

  if (!v5)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  v7 = *a2;
  if (!*(**a2 + 112))
  {
LABEL_70:
    result = 0;
    *a4 = 0;
    return result;
  }

  v8 = a1;
  while (1)
  {
    v51 = 0;
    v50 = 0;
    v9 = *(*v7 + 128);
    result = sub_1819AFFD0(v8, *v7, &v51, &v50);
    v11 = result || v5 < 2;
    v48 = v9;
    if (v11)
    {
      if (result)
      {
        return result;
      }

      LODWORD(v12) = 1;
    }

    else
    {
      v12 = 1;
      while (1)
      {
        v13 = v7[v12];
        if (!*(v13 + 112) || *(v13 + 128) != v9)
        {
          break;
        }

        result = sub_1819AFFD0(v8, v13, 0, 0);
        ++v12;
        if (result)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12 < v5;
        }

        if (!v14)
        {
          if (result)
          {
            return result;
          }

          break;
        }
      }
    }

    if (v12 == v5)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    v16 = v12 - (v12 == v5);
    if (v16 >= 1)
    {
      v17 = *a2;
      v18 = v12 + v15 - 1;
      do
      {
        v19 = v16--;
        if (v5 > v19)
        {
          v20 = v17[v16];
          v21 = v18;
          v22 = &v17[v18];
          do
          {
            if ((v6(v20, v22->i64[1]) & 0x80000000) != 0)
            {
              break;
            }

            v23 = *v22;
            *v22 = vextq_s8(*v22, *v22, 8uLL);
            v22 = (v22 + 8);
            v20 = v23.i64[0];
            ++v21;
          }

          while (v5 - 1 > v21);
        }

        --v18;
      }

      while (v19 > 1);
    }

    v24 = v50;
    v25 = a2;
    if (v50 >= 1)
    {
      if (*(*v7 + 64))
      {
        break;
      }
    }

LABEL_44:
    v34 = *(v25 + 40);
    if ((v34 & 0x80000000) == 0)
    {
      v35 = 0;
      v36 = v51;
      v37 = &v51[v24];
      v38 = v51;
      while (1)
      {
        v39 = v36;
        if (v38 < v37)
        {
          v40 = 0;
          v41 = v37 - v38;
          while (1)
          {
            v42 = *v38;
            if (!(*v38 & 0xFE | v40))
            {
              break;
            }

            ++v38;
            v40 = v42 & 0x80;
            if (!--v41)
            {
              v36 = v37;
              if (v35 != v34)
              {
                goto LABEL_54;
              }

              goto LABEL_63;
            }
          }
        }

        v36 = v38;
        if (v35 == v34)
        {
LABEL_63:
          LODWORD(v24) = v36 - v39;
          goto LABEL_65;
        }

LABEL_54:
        LODWORD(v24) = v24 + v39 - v36;
        if (v24 < 1)
        {
          break;
        }

        v35 = v36[1];
        if (v36[1] < 0)
        {
          v35 = v35 & 0x7F | (v36[2] << 7);
          if (v36[2] < 0)
          {
            v35 = v35 & 0x3FFF | (v36[3] << 14);
            if (v36[3] < 0)
            {
              v35 = v35 & 0x1FFFFF | (v36[4] << 21);
              if (v36[4] < 0)
              {
                v35 = v35 & 0xFFFFFFF | ((v36[5] & 7) << 28);
                v38 = (v36 + 6);
              }

              else
              {
                v38 = (v36 + 5);
              }
            }

            else
            {
              v38 = (v36 + 4);
            }
          }

          else
          {
            v38 = (v36 + 3);
          }
        }

        else
        {
          v38 = (v36 + 2);
        }
      }

      v39 = v36;
LABEL_65:
      v43 = &v39[v24];
      if (v37 - v43 >= 1)
      {
        bzero(v43, v37 - v43);
      }

      v51 = v39;
    }

    if (v24 >= 1)
    {
      result = 0;
      *a4 = v51;
      *a3 = v48;
      *a5 = v24;
      return result;
    }

    v8 = a1;
    if (!*(**v25 + 112))
    {
      goto LABEL_70;
    }
  }

  v26 = v51;
  v27 = v50 + 1;
  if (v50 + 21 <= *(a2 + 32))
  {
    v32 = *(a2 + 24);
    goto LABEL_43;
  }

  v28 = 2 * v27 + 20;
  v29 = *(a2 + 24);
  v30 = sqlite3_initialize();
  if (2 * v27 != -20 && v30 == 0)
  {
    v32 = sub_18190287C(v29, v28, 0x100004077774924);
    if (v32)
    {
      v25 = a2;
      *(a2 + 24) = v32;
      *(a2 + 32) = v28;
LABEL_43:
      memcpy(v32, v26, v24 + 1);
      v33 = *(v25 + 24) + v27;
      *(v33 + 16) = 0;
      *v33 = 0;
      *(v33 + 8) = 0;
      v51 = *(v25 + 24);
      goto LABEL_44;
    }
  }

  return 7;
}

uint64_t sub_1819C01F8(_DWORD *a1, uint64_t *a2)
{
  if (!*(a2 + 11))
  {
    return 0;
  }

  v4 = (a2 + 2);
  v5 = a2[2];
  v6 = *a2;
  if (!v5)
  {
    v5 = *(v6 + 432);
    if (v5)
    {
      *v4 = v5;
      *(v6 + 432) = 0;
LABEL_5:
      *(a2 + 12) = 1;
      goto LABEL_6;
    }

    v10 = sqlite3_mprintf("SELECT %s WHERE rowid = ?", *(v6 + 440));
    if (!v10)
    {
      result = 7;
      goto LABEL_22;
    }

    v12 = v10;
    ++*(v6 + 104);
    v13 = sub_1818954B4(*(v6 + 24), v10, 0xFFFFFFFFLL, 129, 0, v4, 0, v11);
    --*(v6 + 104);
    v14 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v15 = v13;
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
        goto LABEL_38;
      }

      v14 = &xmmword_1ED452F28;
    }

    else
    {
      v15 = v13;
    }

    (*v14)(v12);
LABEL_38:
    result = v15;
    if (v15)
    {
      goto LABEL_22;
    }

    v6 = *a2;
    v5 = a2[2];
    goto LABEL_5;
  }

LABEL_6:
  ++*(v6 + 104);
  v7 = a2[6];
  if (!sub_1818DF6EC(v5, 0))
  {
    v8 = *(v5 + 16);
    if ((*(v8 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v8, v7);
    }

    else
    {
      *v8 = v7;
      *(v8 + 20) = 4;
    }

    v16 = *(*v5 + 24);
    if (v16)
    {
      xmmword_1ED452F28(v16);
    }
  }

  *(a2 + 11) = 0;
  v17 = sqlite3_step(a2[2]);
  --*(v6 + 104);
  if (v17 == 100)
  {
    return 0;
  }

  result = sqlite3_reset(*v4);
  if (!result)
  {
    if (*(*a2 + 80))
    {
      return 0;
    }

    *(a2 + 10) = 1;
    result = 267;
  }

LABEL_22:
  if (a1)
  {
    a1[9] = result;
    if (*(*a1 + 20))
    {
      switch(result)
      {
        case 0x204:
          v18 = result;
          v19 = "abort due to ROLLBACK";
          break;
        case 0x65:
          v18 = result;
          v19 = "no more rows available";
          break;
        case 0x64:
          v18 = result;
          v19 = "another row available";
          break;
        default:
          if (result > 0x1Cu || ((0x1410004uLL >> result) & 1) != 0)
          {
            v18 = result;
            v19 = "unknown error";
          }

          else
          {
            v18 = result;
            v19 = off_1E6A27DD8[result];
          }

          break;
      }

      sub_18190B23C(a1, v19, -1, 1u, 0);
      return v18;
    }
  }

  return result;
}

uint64_t sub_1819C04D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3)
  {
    return 1;
  }

  v76[11] = v3;
  v76[12] = v4;
  v7 = a2;
  v9 = *a2;
  if (*a2 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        result = sub_1819C04D8(a1, *(a2 + 16), a3);
        if (result)
        {
          return sub_1819C04D8(a1, *(v7 + 24), a3) == 0;
        }

        return result;
      }

      goto LABEL_20;
    }

LABEL_10:
    if (sub_1819C04D8(a1, *(a2 + 16), a3) && sub_1819C04D8(a1, *(v7 + 24), a3))
    {
      if (*a3)
      {
        return 1;
      }

      if (*v7 != 1)
      {
        return 1;
      }

      v10 = *(v7 + 8);
      if (v10)
      {
        if (*v10 == 1)
        {
          return 1;
        }
      }

      v11 = *(v7 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = v7;
        do
        {
          v14 = v11;
          v12 += *(*(*(v13 + 24) + 32) + 48);
          v11 = *(v11 + 16);
          v13 = v14;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
        v14 = v7;
      }

      v43 = *(*(v14 + 32) + 48);
      if (!sqlite3_initialize())
      {
        v50 = sub_181902484(2 * (v12 + v43) + 10, 3571396626);
        if (v50)
        {
          v51 = v50;
          v52 = *(v14 + 32);
          v76[0] = *(v52 + 40);
          LODWORD(v75) = *(v52 + 80);
          v53 = *(v14 + 8);
          if (v53)
          {
            while (*v53 == 1)
            {
              v54 = sub_1819C13C4(*(v53 + 4), v51, v76, &v75, *(*(v53 + 24) + 32));
              v53 = *(v53 + 8);
              if (v54)
              {
                v55 = v53 == 0;
              }

              else
              {
                v55 = 1;
              }

              if (v55)
              {
                goto LABEL_132;
              }
            }
          }

          v54 = 1;
LABEL_132:
          v59 = *(*(v7 + 24) + 32);
          v76[0] = *(v59 + 40);
          LODWORD(v75) = *(v59 + 80);
          if (v54)
          {
            v60 = *(v7 + 16);
            if (v60)
            {
              do
              {
                v64 = v60;
                if (*v60 == 1)
                {
                  v64 = *(v60 + 24);
                }

                v54 = sub_1819C13C4(*(*(v60 + 8) + 4), v51, v76, &v75, *(v64 + 32));
                v60 = *(v60 + 16);
                if (v60)
                {
                  v63 = v54 == 0;
                }

                else
                {
                  v63 = 1;
                }
              }

              while (!v63);
            }
          }

          v61 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            v62 = v54;
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v51);
            --qword_1ED456A90;
            off_1ED452EB0(v51);
            v51 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
LABEL_161:
              if (v62)
              {
                return 1;
              }

              goto LABEL_86;
            }

            v61 = &xmmword_1ED452F28;
          }

          else
          {
            v62 = v54;
          }

          (*v61)(v51);
          goto LABEL_161;
        }
      }

      *a3 = 7;
    }

LABEL_86:
    if (*v7 != 1)
    {
      return 0;
    }

    v44 = *(v7 + 8);
    if (v44)
    {
      if (*v44 == 1)
      {
        return 0;
      }
    }

    v45 = *(v7 + 32);
    if (v45)
    {
LABEL_90:
      if (*(v7 + 40) == *(a1 + 48))
      {
        if (*(v45 + 32))
        {
          sqlite3_free(*(v45 + 40));
        }

        result = 0;
        *(v45 + 40) = 0;
        *(v45 + 48) = 0;
        *(v45 + 32) = 0;
        return result;
      }

      return 0;
    }

    while (1)
    {
      v46 = *(v7 + 24);
      if (*(v46 + 40) != *(a1 + 48))
      {
        goto LABEL_98;
      }

      v47 = *(v46 + 32);
      if (*(v47 + 32))
      {
        v48 = *(v47 + 40);
        if (v48)
        {
          v49 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v48);
            --qword_1ED456A90;
            off_1ED452EB0(v48);
            v48 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_97;
            }

            v49 = &xmmword_1ED452F28;
          }

          (*v49)(v48);
        }
      }

LABEL_97:
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 32) = 0;
LABEL_98:
      v7 = *(v7 + 16);
      v45 = *(v7 + 32);
      if (v45)
      {
        goto LABEL_90;
      }
    }
  }

  if (v9 == 4)
  {
    v22 = sub_1819C04D8(a1, *(a2 + 16), a3);
    return (v22 | sub_1819C04D8(a1, *(v7 + 24), a3)) != 0;
  }

  if (v9 == 3)
  {
    goto LABEL_10;
  }

LABEL_20:
  if (!*(a1 + 40))
  {
    goto LABEL_49;
  }

  if (*(a2 + 50))
  {
    v15 = *(a2 + 32);
    if (*(v15 + 32))
    {
      sqlite3_free(*(v15 + 40));
    }

    v16 = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 32) = 0;
    goto LABEL_25;
  }

  if (*(a2 + 40) != *(a1 + 48) || (v15 = *(a2 + 32), !*(v15 + 40)))
  {
LABEL_49:
    if (!*(a2 + 48) && *(a2 + 40) == *(a1 + 48))
    {
      return *(*(a2 + 32) + 48) > 0;
    }

    return 0;
  }

  if (*(v15 + 32))
  {
    v16 = *(v15 + 40);
  }

  else
  {
    v16 = 0;
  }

LABEL_25:
  if (*(v15 + 80) < 1)
  {
    goto LABEL_122;
  }

  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  v20 = (v15 + 112);
  v21 = -1;
  v72 = v16;
  v73 = v15;
  while (1)
  {
    v24 = *v20;
    if (!*v20)
    {
      goto LABEL_32;
    }

    v25 = *(v24 + 24);
    if (!v25)
    {
      break;
    }

    v26 = *v25;
    if (sqlite3_initialize() || (v27 = sub_181902484(v26, 0x100004077774924)) == 0)
    {
      v31 = 7;
      v15 = v73;
      goto LABEL_158;
    }

    v28 = v27;
    v29 = sub_1819AE95C(*(*(v24 + 24) + 8), v76);
    v30 = *(v24 + 24);
    v19 = *v30 - v29;
    memcpy(v28, (*(v30 + 1) + v29), v19);
    if (!v18)
    {
      goto LABEL_31;
    }

    v75 = v18;
    v76[0] = v28;
    v74 = v28;
    sub_1819BE544(v76, v17 - v21, 0, 1, &v75, &v74);
    v23 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_29;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
    --qword_1ED456A90;
    off_1ED452EB0(v18);
    v18 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v23 = &xmmword_1ED452F28;
LABEL_29:
      (*v23)(v18);
    }

    LODWORD(v19) = LODWORD(v76[0]) - v28;
    if (LODWORD(v76[0]) == v28)
    {
      v56 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v57 = v72;
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
          v56 = &xmmword_1ED452F28;
          goto LABEL_149;
        }
      }

      else
      {
        v57 = v72;
LABEL_149:
        (*v56)(v28);
      }

      v15 = v73;
      if (!v57)
      {
        goto LABEL_157;
      }

      v68 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v57);
        --qword_1ED456A90;
        off_1ED452EB0(v57);
        v57 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_157;
        }

        v68 = &xmmword_1ED452F28;
      }

      (*v68)(v57);
      goto LABEL_157;
    }

LABEL_31:
    v21 = v17;
    v18 = v28;
    v15 = v73;
LABEL_32:
    ++v17;
    v20 += 5;
    if (v17 >= *(v15 + 80))
    {
      v16 = v72;
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      v32 = *(v15 + 60);
      if ((v32 & 0x80000000) != 0)
      {
        *(v15 + 40) = v18;
        *(v15 + 48) = v19;
        *(v15 + 24) = *(a1 + 48);
        *(v15 + 32) = 1;
        goto LABEL_122;
      }

      v33 = *(v15 + 40);
      v34 = v21 - v32;
      v35 = v32 >= v21;
      v36 = v32 - v21;
      if (v36 != 0 && v35)
      {
        v37 = v18;
      }

      else
      {
        v37 = *(v15 + 40);
      }

      if (v36 != 0 && v35)
      {
        v38 = v36;
      }

      else
      {
        v33 = v18;
        v38 = v34;
      }

      v75 = v33;
      v76[0] = v37;
      if (!sqlite3_initialize())
      {
        v65 = sub_181902484(v19 + 8, 2585922466);
        if (v65)
        {
          v66 = v65;
          bzero(v65, v19 + 8);
          v74 = v66;
          *(v73 + 40) = v66;
          v15 = v73;
          if (sub_1819BE544(&v74, v38, 0, 1, v76, &v75))
          {
            *(v73 + 32) = 1;
            v67 = v74 - *(v73 + 40);
            goto LABEL_172;
          }

          v69 = v74;
          if (v74)
          {
            v70 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v69);
              --qword_1ED456A90;
              off_1ED452EB0(v69);
              v69 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_171;
              }

              v70 = &xmmword_1ED452F28;
            }

            (*v70)(v69);
          }

LABEL_171:
          v67 = 0;
          *(v73 + 40) = 0;
LABEL_172:
          *(v73 + 48) = v67;
          if (v18)
          {
            if (!dword_1ED452E80)
            {
              v71 = &off_1ED452EB0;
              goto LABEL_179;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
            --qword_1ED456A90;
            off_1ED452EB0(v18);
            v18 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v71 = &xmmword_1ED452F28;
LABEL_179:
              (*v71)(v18);
            }
          }

LABEL_122:
          v31 = 0;
          if (!v16 || *(v15 + 40) == v16)
          {
            goto LABEL_158;
          }

          v58 = &off_1ED452EB0;
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
              goto LABEL_130;
            }

            v58 = &xmmword_1ED452F28;
          }

          (*v58)(v16);
LABEL_130:
          v31 = 0;
          goto LABEL_158;
        }
      }

      if (v18)
      {
        v39 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
          --qword_1ED456A90;
          off_1ED452EB0(v18);
          v18 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_68;
          }

          v39 = &xmmword_1ED452F28;
        }

        (*v39)(v18);
      }

LABEL_68:
      v31 = 7;
      goto LABEL_158;
    }
  }

  v40 = v72;
  if (v18)
  {
    v41 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_75;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
    --qword_1ED456A90;
    off_1ED452EB0(v18);
    v18 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v41 = &xmmword_1ED452F28;
LABEL_75:
      (*v41)(v18);
    }
  }

  if (v72)
  {
    v42 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_82;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v72);
    --qword_1ED456A90;
    off_1ED452EB0(v72);
    v40 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v42 = &xmmword_1ED452F28;
LABEL_82:
      (*v42)(v40);
    }
  }

LABEL_157:
  v31 = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
LABEL_158:
  *a3 = v31;
  result = *(v15 + 40) != 0;
  *(v7 + 40) = *(a1 + 48);
  return result;
}

uint64_t sub_1819C10C8(int **a1, unint64_t a2, int64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = a2;
  v10 = *a1;
  v14 = v10;
  if (v10)
  {
    v11 = *(v10 + 3);
    a2 -= v11;
    if (v8 == v11)
    {
      goto LABEL_6;
    }

    ++*v10;
  }

  v12 = sub_1819C11EC(&v14, a2);
  v10 = v14;
  if (v12)
  {
    goto LABEL_15;
  }

  *(v14 + 2) = xmmword_181A201D0;
  *(v10 + 3) = v8;
LABEL_6:
  if (a3 < 1)
  {
    if (a3 < 0)
    {
      v12 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (*(v10 + 4) == a3)
  {
LABEL_11:
    v12 = sub_1819C11EC(&v14, a4 - *(v10 + 5) + 2);
    v10 = v14;
    if (!v12)
    {
      *(v14 + 5) = a4;
    }

    goto LABEL_15;
  }

  v12 = sub_1819C11EC(&v14, 1uLL);
  if (v12)
  {
    v10 = v14;
    goto LABEL_15;
  }

  v12 = sub_1819C11EC(&v14, a3);
  v10 = v14;
  if (!v12)
  {
    *(v14 + 4) = a3;
    *(v10 + 5) = 0;
    goto LABEL_11;
  }

LABEL_15:
  *a5 = v12;
  if (v10 == *a1)
  {
    return 0;
  }

  *a1 = v10;
  return 1;
}

uint64_t sub_1819C11EC(int **a1, unint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    if (sqlite3_initialize())
    {
      return 7;
    }

    v15 = sub_181902484(148, 0x10100405D38CED6);
    if (!v15)
    {
      return 7;
    }

    v4 = v15;
    v5 = 0;
    *(v15 + 16) = 100;
    v12 = v15 + 48;
    *(v15 + 8) = v15 + 48;
    *v15 = 0;
    goto LABEL_22;
  }

  v5 = *v4;
  v6 = v4[4];
  if (*v4 + 11 <= v6)
  {
    v12 = *(v4 + 1);
LABEL_22:
    v16 = 0;
    v17 = (v12 + v5);
    do
    {
      v18 = a2;
      *v17++ = a2 | 0x80;
      ++v16;
      v19 = a2 > 0x7F;
      a2 >>= 7;
    }

    while (v19);
    result = 0;
    *(v17 - 1) = v18;
    v20 = *v4;
    *v4 = v20 + v16;
    *(*(v4 + 1) + v20 + v16) = 0;
    goto LABEL_25;
  }

  v7 = 2 * v6;
  v8 = 2 * v6 + 48;
  v9 = sqlite3_initialize();
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = sub_18190287C(v4, v8, 0x10100405D38CED6);
    if (v11)
    {
      v4 = v11;
      *(v11 + 16) = v7;
      v12 = v11 + 48;
      *(v11 + 8) = v11 + 48;
      v5 = *v11;
      goto LABEL_22;
    }
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v14 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
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
      v14 = &xmmword_1ED452F28;
      goto LABEL_19;
    }

LABEL_26:
    result = 7;
    goto LABEL_25;
  }

LABEL_19:
  (*v14)(v4);
  v4 = 0;
  result = 7;
LABEL_25:
  *a1 = v4;
  return result;
}

uint64_t sub_1819C13C4(int a1, char *a2, unsigned __int8 **a3, int *a4, uint64_t a5)
{
  v10 = *(a5 + 80);
  v11 = *a4;
  v12 = *(a5 + 40);
  v33 = v12;
  v34 = v12;
  v37 = a2;
  v38 = a2;
  v13 = *a3;
  sub_1819BE544(&v37, v10 + a1, 0, 0, a3, &v34);
  v14 = v37;
  v35 = v37;
  v36 = v37;
  *a3 = v13;
  v34 = v12;
  sub_1819BE544(&v36, v11 + a1, 1, 0, &v34, a3);
  if (v14 == a2)
  {
    if (v36 == a2)
    {
      return 0;
    }

    v16 = *v14;
    LODWORD(v17) = v14;
    if (*v14)
    {
      v17 = v14;
      do
      {
        v18 = v16 & 0xFFFFFF80;
        v19 = *++v17;
        v16 = v19;
      }

      while (v18 | v19);
    }

    v20 = v17 - a2 + 1;
    memcpy(v12, v14, v20);
    v15 = v12 + v20;
  }

  else if (v36 == v14)
  {
    v21 = *a2;
    LODWORD(v22) = a2;
    if (*a2)
    {
      v22 = a2;
      do
      {
        v23 = v21 & 0xFFFFFF80;
        v24 = *++v22;
        v21 = v24;
      }

      while (v23 | v24);
    }

    v25 = v22 - a2 + 1;
    memcpy(v12, a2, v25);
    v15 = v12 + v25;
  }

  else
  {
    sub_1819BDFA0(&v33, &v38, &v35);
    v15 = v33;
  }

  v26 = *(a5 + 40);
  v27 = v15 - v26;
  v28 = v27 - 1;
  if (v27 >= 1)
  {
    v29 = *(a5 + 48);
    v30 = __OFSUB__(v29, v28);
    v31 = v29 - v28;
    if (v31 < 0 == v30)
    {
      bzero(&v26[v28], v31);
      *(a5 + 48) = v28;
      v26 = *(a5 + 40);
    }
  }

  *a3 = v26;
  *a4 = *(a5 + 80);
  return 1;
}

uint64_t sub_1819C1584(uint64_t a1, const sqlite3_value *a2, _DWORD *a3, _DWORD *a4)
{
  v26 = a2;
  pStmt = 0;
  v28 = a2;
  v8 = sub_1819AE4E4(a1, 7u, &pStmt, &v28);
  v9 = pStmt;
  if (v8)
  {
    goto LABEL_2;
  }

  if (sqlite3_step(pStmt) != 100)
  {
    v13 = v9;
    return sqlite3_reset(v13);
  }

  if (*(a1 + 88))
  {
    v12 = sqlite3_column_int(v9, *(a1 + 48) + 1);
  }

  else
  {
    v12 = 0;
  }

  v14 = sqlite3_column_int64(v9, 0);
  v15 = v14;
  v16 = *(a1 + 512);
  if (v16 <= v14 && (v16 != v14 || *(a1 + 524)) && *(a1 + 520) == v12 && *(a1 + 508) <= *(a1 + 504) || (v8 = sub_1819C2600(a1), !v8))
  {
    v17 = 0;
    *(a1 + 512) = v15;
    *(a1 + 520) = v12;
    *(a1 + 524) = 1;
    v18 = a4;
    while (v17 + 1 <= *(a1 + 48))
    {
      if (*(*(a1 + 64) + v17))
      {
        v10 = 0;
      }

      else
      {
        v19 = sqlite3_column_text(v9, v17 + 1);
        v10 = sub_1819C47F4(a1, v12, v19, -1, v18);
        a4[*(a1 + 48)] += sqlite3_column_bytes(v9, v17 + 1);
      }

      ++v17;
      ++v18;
      if (v10)
      {
        goto LABEL_3;
      }
    }

    v20 = sqlite3_reset(v9);
    if (v20)
    {
      return v20;
    }

    v28 = a2;
    if (*(a1 + 80))
    {
      --*a3;
      goto LABEL_27;
    }

    pStmt = 0;
    v20 = sub_1819AE4E4(a1, 1u, &pStmt, &v28);
    if (!v20)
    {
      v22 = pStmt;
      if (sqlite3_step(pStmt) == 100)
      {
        v23 = sqlite3_column_int(v22, 0);
        v20 = sqlite3_reset(v22);
        if (!v20)
        {
          if (v23)
          {
            v10 = sub_1819C46B0(a1, 1);
            *a3 = 0;
            bzero(a4, 8 * *(a1 + 48) + 8);
            return v10;
          }

LABEL_37:
          v24 = *(a1 + 80);
          --*a3;
          if (!v24)
          {
            v28 = 0;
            v10 = sub_1819AE4E4(a1, 0, &v28, &v26);
            if (!v10)
            {
              v25 = v28;
              sqlite3_step(v28);
              v10 = sqlite3_reset(v25);
            }

            if (!*(a1 + 462) || v10)
            {
              return v10;
            }

            goto LABEL_28;
          }

LABEL_27:
          if (!*(a1 + 462))
          {
            return 0;
          }

LABEL_28:
          v28 = 0;
          v10 = sub_1819AE4E4(a1, 0x13u, &v28, &v26);
          if (v10)
          {
            return v10;
          }

          v21 = v28;
          sqlite3_step(v28);
          v13 = v21;
          return sqlite3_reset(v13);
        }
      }

      else
      {
        v20 = sqlite3_reset(v22);
        if (!v20)
        {
          goto LABEL_37;
        }
      }
    }

    return v20;
  }

LABEL_2:
  v10 = v8;
LABEL_3:
  sqlite3_reset(v9);
  return v10;
}

uint64_t sub_1819C1880(uint64_t a1, const sqlite3_value **a2, void *a3)
{
  if (*(a1 + 80))
  {
    v4 = a2[*(a1 + 48) + 3];
    if (v4)
    {
      v5 = *(v4 + 20);
      if (((0xAAAAAAAAAAAAAAAALL >> v5) & 1) == 0)
      {
        v6 = v5 & 0x3F;
        goto LABEL_13;
      }

      v4 = a2[1];
      if (v4)
      {
        v5 = *(v4 + 20);
        v6 = v5 & 0x3F;
LABEL_13:
        if (((0x50505050uLL >> v6) & 1) == 0)
        {
          return 19;
        }

        if ((v5 & 0x24) != 0)
        {
          v15 = *v4;
        }

        else if ((v5 & 8) != 0)
        {
          v22 = *v4;
          if (*v4 >= -9.22337204e18)
          {
            v15 = NAN;
            if (v22 <= 9.22337204e18)
            {
              *&v15 = v22;
            }
          }

          else
          {
            v15 = -0.0;
          }
        }

        else if ((v5 & 0x12) != 0)
        {
          v15 = *(v4 + 8);
          if (v15 != 0.0)
          {
            v16 = a3;
            v17 = sub_18193CFCC(v4);
            a3 = v16;
            v15 = *&v17;
          }
        }

        else
        {
          v15 = 0.0;
        }

        result = 0;
        *a3 = v15;
        return result;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    sub_1819012D0(99877);
    return 19;
  }

  v7 = a3;
  v29 = 0;
  result = sub_1819AE4E4(a1, 0x12u, &v29, a2 + 1);
  if (result)
  {
    return result;
  }

  if (*(a1 + 88))
  {
    v10 = v29;
    v11 = *(a1 + 48);
    v12 = a2[v11 + 4];
    if (v12)
    {
      v13 = *(v12 + 20);
      if ((v13 & 0x24) != 0)
      {
        v14 = *v12;
        goto LABEL_25;
      }

      if ((v13 & 8) != 0)
      {
        v27 = *v12;
        if (*v12 >= -9.22337204e18)
        {
          if (v27 <= 9.22337204e18)
          {
            *&v14 = v27;
          }

          else
          {
            LODWORD(v14) = -1;
          }
        }

        else
        {
          LODWORD(v14) = 0;
        }

LABEL_25:
        result = sqlite3_bind_int64(v10, v11 + 2, SLODWORD(v14));
        if (result)
        {
          return result;
        }

        goto LABEL_26;
      }

      if ((v13 & 0x12) != 0 && *(v12 + 8))
      {
        LODWORD(v14) = sub_18193CFCC(v12);
        goto LABEL_25;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    LODWORD(v14) = 0;
    goto LABEL_25;
  }

LABEL_26:
  v18 = a2[*(a1 + 48) + 3];
  if (v18)
  {
    v19 = a2;
    if ((0xAAAAAAAAAAAAAAAALL >> *(v18 + 10)))
    {
      v20 = v29;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v19 = a2;
  }

  if (*v19)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*v19 + 10)))
    {
      v21 = v19[1];
      if (!v21)
      {
        sub_1819012D0(99877);
        return 1;
      }

      if (((0xAAAAAAAAAAAAAAAALL >> *(v21 + 10)) & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1819012D0(99877);
    v19 = a2;
  }

  v20 = v29;
  result = sqlite3_bind_value(v29, 1, v19[*(a1 + 48) + 3]);
  if (!result)
  {
LABEL_39:
    sqlite3_step(v20);
    result = sqlite3_reset(v20);
    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = *(v23 + 113);
      switch(v24)
      {
        case 186:
          goto LABEL_43;
        case 118:
          v28 = *(v23 + 56);
LABEL_59:
          *v7 = v28;
          return result;
        case 109:
LABEL_43:
          v25 = result;
          v26 = "unopened";
          break;
        default:
          v25 = result;
          v26 = "invalid";
          break;
      }
    }

    else
    {
      v25 = result;
      v26 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v26);
    sub_1819012D0(192786);
    v28 = 0;
    result = v25;
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_1819C1BDC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a1 + 48);
  if (v4 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3 + 16;
  v10 = a4;
  do
  {
    if (!*(*(a1 + 64) + v8))
    {
      v13 = *(v9 + 8 * v8);
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = *(v13 + 20);
      if ((~v14 & 0x202) == 0 && *(v13 + 22) == 1)
      {
        v15 = *(v13 + 8);
        goto LABEL_14;
      }

      if (v14)
      {
LABEL_13:
        v15 = 0;
      }

      else
      {
        v15 = sub_18193CB70(v13, 1);
      }

LABEL_14:
      result = sub_1819C47F4(a1, a2, v15, v8, v10);
      if (result)
      {
        return result;
      }

      v17 = *(v9 + 8 * v8);
      if (v17)
      {
        v18 = *(v17 + 20);
        if ((v18 & 2) != 0 && *(v17 + 22) == 1)
        {
          v11 = *(v17 + 16);
LABEL_4:
          a4[*(a1 + 48)] += v11;
          v4 = *(a1 + 48);
          goto LABEL_5;
        }

        if ((v18 & 0x10) != 0)
        {
          v11 = *(v17 + 16);
          if ((*(v17 + 20) & 0x400) != 0)
          {
            v11 += *v17;
          }

          goto LABEL_4;
        }

        if ((v18 & 1) == 0)
        {
          v11 = sub_18193CB44(v17, 1);
          goto LABEL_4;
        }
      }

      else
      {
        sub_1819012D0(93690);
      }

      v11 = 0;
      goto LABEL_4;
    }

LABEL_5:
    v12 = v8 + 2;
    ++v8;
    ++v10;
  }

  while (v12 <= v4);
  return 0;
}

uint64_t sub_1819C1D38(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*result)
  {
    v24[7] = v3;
    v24[8] = v4;
    v5 = result;
    v8 = *(a2 + 48);
    result = sqlite3_initialize();
    if (result || (result = sub_181902484(10 * v8, 2799732380)) == 0)
    {
      v9 = 7;
    }

    else
    {
      v10 = result;
      v11 = *(a2 + 48);
      if (v11 < 1)
      {
        v13 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(a3 + 4 * v12);
          v15 = (result + v13);
          do
          {
            v16 = v14;
            *v15++ = v14 | 0x80;
            ++v13;
            v17 = v14 > 0x7F;
            v14 >>= 7;
          }

          while (v17);
          *(v15 - 1) = v16;
          ++v12;
        }

        while (v12 != v11);
      }

      v24[0] = 0;
      v18 = sub_1819AE4E4(a2, 0x14u, v24, 0);
      if (!v18)
      {
        v20 = v24[0];
        v21 = *(a2 + 512);
        if (!sub_1818DF6EC(v24[0], 0))
        {
          v22 = v20[16];
          if ((*(v22 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v22, v21);
          }

          else
          {
            *v22 = v21;
            *(v22 + 20) = 4;
          }

          v23 = *(*v20 + 24);
          if (v23)
          {
            xmmword_1ED452F28(v23);
          }
        }

        if ((v13 & 0x80000000) != 0)
        {
          sub_1819012D0(101409);
        }

        else
        {
          sub_1818DF574(v20, 2, v10, v13, sqlite3_free, 0);
        }

        sqlite3_step(v20);
        result = sqlite3_reset(v20);
        v9 = result;
        goto LABEL_4;
      }

      v9 = v18;
      v19 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
        --qword_1ED456A90;
        result = off_1ED452EB0(v10);
        v10 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_4;
        }

        v19 = &xmmword_1ED452F28;
      }

      result = (*v19)(v10);
    }

LABEL_4:
    *v5 = v9;
  }

  return result;
}

void sub_1819C1F64(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*a1)
  {
    return;
  }

  v7 = *(a2 + 48);
  if (sqlite3_initialize() || (v8 = v7 + 2, (v9 = sub_181902484(14 * (v7 + 2), 0x100004052888210)) == 0))
  {
    *a1 = 7;
    return;
  }

  v10 = v9;
  v47 = 0;
  v11 = sub_1819AE4E4(a2, 0x16u, &v47, 0);
  if (v11)
  {
LABEL_27:
    v23 = v11;
    v24 = &off_1ED452EB0;
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

      v24 = &xmmword_1ED452F28;
    }

    (*v24)(v10);
LABEL_33:
    *a1 = v23;
    return;
  }

  v12 = v47;
  if (!sub_1818DF6EC(v47, 0))
  {
    v13 = *(v12 + 16);
    if ((*(v13 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v13, 0);
    }

    else
    {
      *v13 = 0;
      *(v13 + 20) = 4;
    }

    v14 = *(*v12 + 24);
    if (v14)
    {
      xmmword_1ED452F28(v14);
    }
  }

  if (sqlite3_step(v12) == 100)
  {
    v15 = sqlite3_column_blob(v12, 0);
    v16 = sqlite3_column_bytes(v12, 0);
    if (!v16 || (v17 = v16, v15[v16 - 1] < 0))
    {
      LODWORD(v18) = 0;
    }

    else
    {
      LODWORD(v18) = 0;
      if (v7 >= -1 && v16 >= 1)
      {
        v43 = v12;
        v18 = 0;
        v19 = 0;
        do
        {
          v48 = 0;
          v20 = sub_1819AE95C(&v15[v19], &v48);
          v10[v18++] = v48;
          if (v18 >= v8)
          {
            break;
          }

          v19 += v20;
        }

        while (v19 < v17);
        v12 = v43;
      }
    }

    if (v18 >= v8)
    {
      goto LABEL_26;
    }

    v22 = &v10[v18];
    v21 = 4 * (v8 + ~v18) + 4;
  }

  else
  {
    v21 = 4 * v8;
    v22 = v10;
  }

  bzero(v22, v21);
LABEL_26:
  v11 = sqlite3_reset(v12);
  if (v11)
  {
    goto LABEL_27;
  }

  v25 = *v10 < -a5 && a5 < 0;
  v26 = *v10 + a5;
  if (v25)
  {
    v26 = 0;
  }

  *v10 = v26;
  if ((*(a2 + 48) & 0x80000000) == 0)
  {
    v27 = 0;
    v28 = v10 + 1;
    do
    {
      v29 = *(a3 + 4 * v27) + v28[v27];
      v30 = *(a4 + 4 * v27);
      v31 = v29 >= v30;
      v32 = v29 - v30;
      if (!v31)
      {
        v32 = 0;
      }

      v28[v27] = v32;
      v33 = v27++ < *(a2 + 48);
    }

    while (v33);
  }

  if (v7 < -1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = v10[v34];
      v37 = &v10[v8] + v35;
      do
      {
        v38 = v36;
        *v37++ = v36 | 0x80;
        ++v35;
        v33 = v36 > 0x7F;
        v36 >>= 7;
      }

      while (v33);
      *(v37 - 1) = v38;
      ++v34;
    }

    while (v34 != v8);
  }

  v39 = sub_1819AE4E4(a2, 0x17u, &v47, 0);
  if (v39)
  {
    v40 = v39;
    v41 = &off_1ED452EB0;
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
        goto LABEL_59;
      }

      v41 = &xmmword_1ED452F28;
    }

    (*v41)(v10);
LABEL_59:
    *a1 = v40;
    return;
  }

  v42 = v47;
  sqlite3_bind_int64(v47, 1, 0);
  sqlite3_bind_blob(v42, 2, &v10[v8], v35, 0);
  sqlite3_step(v42);
  *a1 = sqlite3_reset(v42);
  sqlite3_bind_null(v42, 2);

  sqlite3_free(v10);
}