uint64_t sub_181A06A7C(uint64_t a1)
{
  *(a1 + 40) = 0;
  v1 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v1)
  {
    v2 = v1[3];
    v3 = v1[4];
    v4 = v3[3];
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    sub_181929C84(v3, v1);
    v5 = v3[3];
    if (v5)
    {
      xmmword_1ED452F28(v5);
    }

    sqlite3_finalize(v2);
  }

  return 0;
}

uint64_t sub_181A06AF4(uint64_t a1)
{
  *(a1 + 40) = 0;
  v1 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v1)
  {
    v2 = v1[3];
    v3 = v1[4];
    v4 = v3[3];
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    sub_181929C84(v3, v1);
    v5 = v3[3];
    if (v5)
    {
      xmmword_1ED452F28(v5);
    }

    sqlite3_finalize(v2);
  }

  return 0;
}

uint64_t sub_181A06B6C(uint64_t a1, uint64_t a2)
{
  v3 = sqlite3_mprintf("ALTER TABLE %Q.'%q_node'   RENAME TO %w_node;ALTER TABLE %Q.'%q_parent' RENAME TO %w_parent;ALTER TABLE %Q.'%q_rowid'  RENAME TO %w_rowid;", *(a1 + 48), *(a1 + 56), a2, *(a1 + 48), *(a1 + 56), a2, *(a1 + 48), *(a1 + 56), a2);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    v6 = v5[3];
    v7 = v5[4];
    v8 = v7[3];
    if (v8)
    {
      xmmword_1ED452F18(v8);
    }

    sub_181929C84(v7, v5);
    v9 = v7[3];
    if (v9)
    {
      xmmword_1ED452F28(v9);
    }

    sqlite3_finalize(v6);
  }

  v10 = sqlite3_exec(*(a1 + 24), v4, 0, 0, 0);
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_13;
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
    v11 = &xmmword_1ED452F28;
LABEL_13:
    (*v11)(v4);
  }

  return v10;
}

uint64_t sub_181A06CC4(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  v3 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v3)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = v5[3];
    if (v6)
    {
      xmmword_1ED452F18(v6);
    }

    sub_181929C84(v5, v3);
    v7 = v5[3];
    if (v7)
    {
      xmmword_1ED452F28(v7);
    }

    sqlite3_finalize(v4);
  }

  *(a1 + 40) = v2;
  return 0;
}

uint64_t sub_181A06D50(uint64_t result)
{
  if (result)
  {
    v1 = "node";
    for (i = result; ; ++i)
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
        v3 = "parent";
        for (j = result; ; ++j)
        {
          if (*j == *v3)
          {
            if (!*j)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v3])
          {
            for (k = "rowid"; ; ++k)
            {
              if (*result == *k)
              {
                if (!*result)
                {
                  return 1;
                }
              }

              else if (byte_181A20298[*result] != byte_181A20298[*k])
              {
                return 0;
              }

              ++result;
            }
          }

          ++v3;
        }
      }

      ++v1;
    }
  }

  return result;
}

uint64_t sub_181A06E2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  result = sub_181A04294(a1[3], a1[6], a1[7], a5);
  if (!result)
  {
    if (*a5)
    {
      v8 = sqlite3_mprintf("In RTree %s.%s:\n%z", a1[6], a1[7], *a5);
      *a5 = v8;
      if (v8)
      {
        return 0;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181A06EA4(sqlite3 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, char **a6, int a7)
{
  pStmt[8] = *MEMORY[0x1E69E9840];
  if ((a3 - 104) <= 0xFFFFFF9D)
  {
    v8 = 16;
    if (a3 > 5)
    {
      v8 = 24;
    }

    *a6 = sqlite3_mprintf("%s", *(&unk_1E6A28188 + v8));
    return 1;
  }

  sqlite3_vtab_config(a1, 1, 1);
  sqlite3_vtab_config(a1, 2);
  v14 = strlen(*(a4 + 8));
  v15 = strlen(*(a4 + 16));
  if (sqlite3_initialize())
  {
    return 7;
  }

  v16 = v14;
  v17 = v14 + (2 * v15);
  v18 = sub_181902484(v17 + 976, 0x10700409EE11F7CLL);
  if (!v18)
  {
    return 7;
  }

  v19 = v18;
  v89 = a6;
  v90 = a1;
  bzero(v18, v17 + 976);
  *(v19 + 72) = 1;
  *v19 = &unk_1EE341D88;
  v20 = v14 << 32;
  v21 = v19 + 968 + (((v14 << 32) + 0x100000000) >> 32);
  *(v19 + 48) = v19 + 968;
  *(v19 + 56) = v21;
  *(v19 + 64) = v21 + v15 + 1;
  *(v19 + 38) = a2 != 0;
  memcpy((v19 + 968), *(a4 + 8), v16);
  memcpy((v19 + 968 + ((v20 + 0x100000000) >> 32)), *(a4 + 16), v15);
  memcpy(*(v19 + 64), *(a4 + 16), v15);
  strcpy((*(v19 + 64) + v15), "_node");
  if (sqlite3_initialize() || (v23 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
  {
    v22 = &unk_1EA831560;
  }

  else
  {
    v22 = v23;
    if (a1)
    {
      v24 = *(a1 + 34);
    }

    else
    {
      v24 = 2147483645;
    }

    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 20) = v24;
    *(v23 + 24) = 0;
    *(v23 + 28) = 0;
  }

  v25 = a2 != 0;
  v26 = *(a4 + 24);
  v27 = sub_1818966D0(v26, pStmt);
  sqlite3_str_appendf(v22, "CREATE TABLE x(%.*s INT", v27, v26);
  v28 = 1;
  v29 = 4;
  while (1)
  {
    v30 = *(a4 + 8 * v29);
    if (*v30 != 43)
    {
      break;
    }

    ++*(v19 + 41);
    sub_1818966D0(v30 + 1, pStmt);
    sqlite3_str_appendf(v22, ",%.*s");
LABEL_17:
    v28 = ++v29 < a3;
    if (a3 == v29)
    {
      goto LABEL_21;
    }
  }

  if (!*(v19 + 41))
  {
    ++*(v19 + 37);
    v31 = off_1E6A281B0[v25];
    pAutoinc = sub_1818966D0(v30, pStmt);
    sqlite3_str_appendf(v22, v31, pAutoinc, v30);
    goto LABEL_17;
  }

LABEL_21:
  sqlite3_str_appendf(v22, ");");
  v32 = sqlite3_str_finish(v22);
  v33 = v90;
  if (!v32)
  {
    v36 = 7;
    goto LABEL_48;
  }

  v34 = v32;
  if (v28)
  {
    v35 = sqlite3_mprintf("%s", "Auxiliary rtree columns must be last");
    v36 = 1;
    v37 = v89;
    goto LABEL_27;
  }

  v36 = sqlite3_declare_vtab(v90, v32);
  v37 = v89;
  if (v36)
  {
    v38 = sqlite3_errmsg(v90);
    v35 = sqlite3_mprintf("%s", v38);
LABEL_27:
    *v37 = v35;
  }

  v39 = &off_1ED452EB0;
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
    if (xmmword_1ED456AF0)
    {
      v39 = &xmmword_1ED452F28;
      goto LABEL_33;
    }
  }

  else
  {
LABEL_33:
    (*v39)(v34);
  }

  if (v36)
  {
LABEL_48:
    if (v36 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v36;
    }

    sub_181A07BB8(v19);
    return v47;
  }

  v40 = *(v19 + 37);
  *(v19 + 36) = *(v19 + 37) >> 1;
  if (v40 < 2)
  {
    v41 = 2;
    goto LABEL_46;
  }

  if (v40 > 0xA)
  {
    v41 = 3;
    goto LABEL_46;
  }

  if (v40)
  {
    v41 = 1;
LABEL_46:
    v46 = sqlite3_mprintf("%s", *(&unk_1E6A28188 + v41));
    v36 = 0;
    goto LABEL_47;
  }

  *(v19 + 39) = 4 * v40 + 8;
  if (!a7)
  {
    v43 = sqlite3_mprintf("SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1", *(v19 + 48), *(v19 + 56));
    if (v43)
    {
      pStmt[0] = 0;
      v44 = sub_1818954B4(v90, v43, 0xFFFFFFFFLL, 128, 0, pStmt, 0, v48);
      if (!v44)
      {
        if (sqlite3_step(pStmt[0]) == 100)
        {
          *(v19 + 32) = sqlite3_column_int(pStmt[0], 0);
        }

        v44 = sqlite3_finalize(pStmt[0]);
        if (!v44)
        {
          if (*(v19 + 32) > 447)
          {
            v36 = 0;
          }

          else
          {
            *v37 = sqlite3_mprintf("undersize RTree blobs in %q_node", *(v19 + 56));
            v36 = 267;
          }

          goto LABEL_60;
        }
      }

      goto LABEL_57;
    }

LABEL_58:
    v36 = 7;
    goto LABEL_59;
  }

  v43 = sqlite3_mprintf("PRAGMA %Q.page_size", *(v19 + 48));
  if (!v43)
  {
    goto LABEL_58;
  }

  pStmt[0] = 0;
  v44 = sub_1818954B4(v90, v43, 0xFFFFFFFFLL, 128, 0, pStmt, 0, v42);
  if (v44)
  {
LABEL_57:
    v36 = v44;
    goto LABEL_59;
  }

  if (sqlite3_step(pStmt[0]) == 100)
  {
    v45 = sqlite3_column_int(pStmt[0], 0) - 64;
  }

  else
  {
    v45 = -64;
  }

  v36 = sqlite3_finalize(pStmt[0]);
  if (v36)
  {
LABEL_59:
    v49 = sqlite3_errmsg(v90);
    *v37 = sqlite3_mprintf("%s", v49);
    if (v43)
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  v54 = 51 * *(v19 + 39) + 4;
  if (v54 >= v45)
  {
    v54 = v45;
  }

  *(v19 + 32) = v54;
LABEL_60:
  v50 = &off_1ED452EB0;
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
    if (xmmword_1ED456AF0)
    {
      v50 = &xmmword_1ED452F28;
      goto LABEL_65;
    }
  }

  else
  {
LABEL_65:
    (*v50)(v43);
  }

  if (v36)
  {
    goto LABEL_48;
  }

  v52 = *(a4 + 8);
  v51 = *(a4 + 16);
  *(v19 + 24) = v90;
  if (!a7)
  {
    goto LABEL_95;
  }

  if (sqlite3_initialize() || (v55 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
  {
    v53 = &unk_1EA831560;
  }

  else
  {
    v53 = v55;
    if (v90)
    {
      v56 = *(v90 + 34);
    }

    else
    {
      v56 = 2147483645;
    }

    *v55 = 0;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    *(v55 + 20) = v56;
    *(v55 + 24) = 0;
    *(v55 + 28) = 0;
  }

  v57 = v51;
  sqlite3_str_appendf(v53, "CREATE TABLE %w.%w_rowid(rowid INTEGER PRIMARY KEY,nodeno", v52, v51);
  if (*(v19 + 41))
  {
    v58 = 0;
    do
    {
      sqlite3_str_appendf(v53, ",a%d", v58++);
    }

    while (v58 < *(v19 + 41));
  }

  v51 = v57;
  sqlite3_str_appendf(v53, ");CREATE TABLE %w.%w_node(nodeno INTEGER PRIMARY KEY,data);", v52, v57);
  sqlite3_str_appendf(v53, "CREATE TABLE %w.%w_parent(nodeno INTEGER PRIMARY KEY,parentnode);", v52, v57);
  sqlite3_str_appendf(v53, "INSERT INTO %w.%w_nodeVALUES(1,zeroblob(%d))", v52, v57, *(v19 + 32));
  v59 = sqlite3_str_finish(v53);
  if (!v59)
  {
    goto LABEL_133;
  }

  v60 = v59;
  v36 = sqlite3_exec(v90, v59, 0, 0, 0);
  v61 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v62 = v52;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v60);
    --qword_1ED456A90;
    off_1ED452EB0(v60);
    v60 = xmmword_1ED456AF0;
    v51 = v57;
    if (xmmword_1ED456AF0)
    {
      v61 = &xmmword_1ED452F28;
      goto LABEL_93;
    }
  }

  else
  {
    v62 = v52;
LABEL_93:
    (*v61)(v60);
  }

  v52 = v62;
  if (v36)
  {
    goto LABEL_157;
  }

LABEL_95:
  pStmt[0] = (v19 + 120);
  pStmt[1] = (v19 + 128);
  pStmt[2] = (v19 + 136);
  pStmt[3] = (v19 + 144);
  pStmt[4] = (v19 + 152);
  pStmt[5] = (v19 + 160);
  pStmt[6] = (v19 + 168);
  pStmt[7] = (v19 + 176);
  v63 = sqlite3_table_column_metadata(v90, *(v19 + 48), "sqlite_stat1", 0, 0, 0, 0, 0, 0);
  if (v63)
  {
    v36 = v63;
    *(v19 + 80) = 0x100000;
    if (v63 != 1)
    {
      goto LABEL_128;
    }

LABEL_115:
    v71 = 0;
    while (2)
    {
      if (v71 != 3 || (v72 = "INSERT INTO%w.%w_rowid(rowid,nodeno)VALUES(?1,?2)ON CONFLICT(rowid)DO UPDATE SET nodeno=excluded.nodeno", !*(v19 + 41)))
      {
        v72 = off_1E6A281C0[v71];
      }

      v73 = sqlite3_mprintf(v72, v52, v51);
      if (!v73)
      {
        goto LABEL_156;
      }

      v75 = v73;
      v36 = sub_1818954B4(v90, v73, 0xFFFFFFFFLL, 133, 0, pStmt[v71], 0, v74);
      v76 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v75);
        --qword_1ED456A90;
        off_1ED452EB0(v75);
        v75 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v76 = &xmmword_1ED452F28;
          goto LABEL_125;
        }
      }

      else
      {
LABEL_125:
        (*v76)(v75);
      }

      if (v71 > 6)
      {
        goto LABEL_128;
      }

      ++v71;
      if (v36)
      {
        goto LABEL_128;
      }

      continue;
    }
  }

  v64 = sqlite3_mprintf("SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid'", *(v19 + 48), *(v19 + 56));
  if (!v64)
  {
    *(v19 + 80) = 100;
    v36 = 7;
    goto LABEL_157;
  }

  v66 = v64;
  v93 = 0;
  v67 = sub_1818954B4(v90, v64, 0xFFFFFFFFLL, 128, 0, &v93, 0, v65);
  if (v67)
  {
    v36 = v67;
    v68 = 100;
  }

  else
  {
    if (sqlite3_step(v93) == 100)
    {
      v68 = sqlite3_column_int64(v93, 0);
    }

    else
    {
      v68 = 100;
    }

    v36 = sqlite3_finalize(v93);
  }

  v69 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v66);
    --qword_1ED456A90;
    off_1ED452EB0(v66);
    v66 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v69 = &xmmword_1ED452F28;
      goto LABEL_111;
    }
  }

  else
  {
LABEL_111:
    (*v69)(v66);
  }

  v70 = 100;
  if (v68 > 100)
  {
    v70 = v68;
  }

  *(v19 + 80) = v70;
  if (!v36)
  {
    goto LABEL_115;
  }

LABEL_128:
  if (!*(v19 + 41))
  {
    goto LABEL_153;
  }

  v37 = v89;
  v33 = v90;
  if (v36 != 7)
  {
    v77 = sqlite3_mprintf("SELECT * FROM %w.%w_rowid WHERE rowid=?1", v52, v51);
    *(v19 + 96) = v77;
    if (v77)
    {
      if (sqlite3_initialize() || (v79 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
      {
        v78 = &unk_1EA831560;
      }

      else
      {
        v78 = v79;
        if (v90)
        {
          v80 = *(v90 + 34);
        }

        else
        {
          v80 = 2147483645;
        }

        *v79 = 0;
        *(v79 + 8) = 0;
        *(v79 + 16) = 0;
        *(v79 + 20) = v80;
        *(v79 + 24) = 0;
        *(v79 + 28) = 0;
      }

      sqlite3_str_appendf(v78, "UPDATE %w.%w_rowidSET ", v52, v51);
      if (*(v19 + 41))
      {
        sqlite3_str_appendf(v78, "a%d=?%d", 0, 2);
        if (*(v19 + 41) >= 2u)
        {
          v81 = 1;
          do
          {
            v82 = *(v78 + 6);
            if ((v82 + 1) < *(v78 + 4))
            {
              *(v78 + 6) = v82 + 1;
              *(*(v78 + 1) + v82) = 44;
            }

            else
            {
              sub_181906814(v78, ",", 1u);
            }

            sqlite3_str_appendf(v78, "a%d=?%d", v81, v81 + 2);
            ++v81;
          }

          while (v81 < *(v19 + 41));
        }
      }

      sqlite3_str_appendf(v78, " WHERE rowid=?1");
      v83 = sqlite3_str_finish(v78);
      if (v83)
      {
        v85 = v83;
        v36 = sub_1818954B4(v90, v83, 0xFFFFFFFFLL, 133, 0, (v19 + 184), 0, v84);
        v86 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_152;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v85);
        --qword_1ED456A90;
        off_1ED452EB0(v85);
        v85 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v86 = &xmmword_1ED452F28;
LABEL_152:
          (*v86)(v85);
        }

LABEL_153:
        v37 = v89;
        v33 = v90;
        goto LABEL_154;
      }

LABEL_156:
      v36 = 7;
      v37 = v89;
      v33 = v90;
LABEL_157:
      v87 = sqlite3_errmsg(v33);
      v46 = sqlite3_mprintf("%s", v87);
LABEL_47:
      *v37 = v46;
      goto LABEL_48;
    }

LABEL_133:
    v36 = 7;
    goto LABEL_157;
  }

LABEL_154:
  if (v36)
  {
    goto LABEL_157;
  }

  result = 0;
  *a5 = v19;
  return result;
}

uint64_t sub_181A07BB8(uint64_t result)
{
  v1 = *(result + 72) - 1;
  *(result + 72) = v1;
  if (v1)
  {
    return result;
  }

  v2 = result;
  *(result + 40) = 0;
  v3 = *(result + 112);
  *(result + 112) = 0;
  if (v3)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = v5[3];
    if (v6)
    {
      xmmword_1ED452F18(v6);
    }

    sub_181929C84(v5, v3);
    v7 = v5[3];
    if (v7)
    {
      xmmword_1ED452F28(v7);
    }

    sqlite3_finalize(v4);
  }

  sqlite3_finalize(*(v2 + 120));
  sqlite3_finalize(*(v2 + 128));
  sqlite3_finalize(*(v2 + 136));
  sqlite3_finalize(*(v2 + 144));
  sqlite3_finalize(*(v2 + 152));
  sqlite3_finalize(*(v2 + 160));
  sqlite3_finalize(*(v2 + 168));
  sqlite3_finalize(*(v2 + 176));
  sqlite3_finalize(*(v2 + 184));
  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_15:
      (*v9)(v8);
      goto LABEL_16;
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
      v9 = &xmmword_1ED452F28;
      goto LABEL_15;
    }
  }

LABEL_16:
  v10 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_21:
    v11 = *v10;

    return v11(v2);
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
    v10 = &xmmword_1ED452F28;
    goto LABEL_21;
  }

  return result;
}

double sub_181A07DA0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (*(a1 + 16) < 1)
  {
    goto LABEL_15;
  }

  v4 = 0;
  v5 = 16;
  do
  {
    v6 = *(*(a1 + 24) + v5);
    if (v6)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v7(*(v6 + 24));
      }

      v8 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_4;
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
LABEL_4:
        (*v8)(v6);
      }
    }

    ++v4;
    v5 += 24;
  }

  while (v4 < *(a1 + 16));
  v3 = *(a1 + 24);
  if (v3)
  {
LABEL_15:
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_20;
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
      v9 = &xmmword_1ED452F28;
LABEL_20:
      (*v9)(v3);
    }
  }

  *(a1 + 24) = 0;
LABEL_22:
  sub_181A08010(v2, *(a1 + 88));
  sub_181A08010(v2, *(a1 + 96));
  sub_181A08010(v2, *(a1 + 104));
  sub_181A08010(v2, *(a1 + 112));
  sub_181A08010(v2, *(a1 + 120));
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
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
LABEL_28:
      (*v11)(v10);
    }
  }

  v12 = *(a1 + 56);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = v2;
  *(a1 + 56) = v12;
  return result;
}

uint64_t sub_181A08010(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = *(a2 + 16) - 1;
  *(a2 + 16) = v3;
  if (v3)
  {
    return 0;
  }

  --*(a1 + 92);
  if (*(a2 + 8) == 1)
  {
    *(a1 + 44) = -1;
  }

  if (!*a2 || (v6 = sub_181A08010(a1), !v6))
  {
    v6 = sub_181A0818C(a1, v2);
  }

  v7 = *(v2 + 8);
  if (v7)
  {
    v8 = (a1 + 8 * (v7 % 0x61) + 192);
    do
    {
      v9 = v8;
      v10 = *v8;
      v8 = (*v8 + 32);
    }

    while (v10 != v2);
    *v9 = *(v2 + 32);
    *(v2 + 32) = 0;
  }

  v11 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v12 = v6;
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
      return v12;
    }

    v11 = &xmmword_1ED452F28;
  }

  else
  {
    v12 = v6;
  }

  (*v11)(v2);
  return v12;
}

uint64_t sub_181A0818C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 20))
  {
    return 0;
  }

  v4 = *(a1 + 120);
  v5 = *(a2 + 8);
  v6 = sub_1818DF6EC(v4, 0);
  if (v5)
  {
    if (v6)
    {
      goto LABEL_12;
    }

    v7 = v4[16];
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, v5);
    }

    else
    {
      *v7 = v5;
      *(v7 + 20) = 4;
    }
  }

  else if (v6)
  {
    goto LABEL_12;
  }

  v9 = *(*v4 + 24);
  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

LABEL_12:
  v10 = *(a1 + 32);
  if ((v10 & 0x80000000) != 0)
  {
    sub_1819012D0(101409);
  }

  else
  {
    v11 = *(a2 + 24);
    if (!sub_1818DF6EC(v4, 1u))
    {
      if (v11)
      {
        v12 = sub_1818900D0(v4[16] + 64, v11, v10, 0, 0);
        if (v12)
        {
          v13 = v12;
          v14 = *v4;
          *(v14 + 80) = v13;
          sub_181932D5C(v14, v13);
          sub_18193C988(*v4, v13);
        }
      }

      v15 = *(*v4 + 24);
      if (v15)
      {
        xmmword_1ED452F28(v15);
      }
    }
  }

  sqlite3_step(v4);
  *(a2 + 20) = 0;
  v8 = sqlite3_reset(v4);
  if (!sub_1818DF6EC(v4, 1u))
  {
    v16 = *(*v4 + 24);
    if (v16)
    {
      xmmword_1ED452F28(v16);
    }
  }

  if (!*(a2 + 8) && !v8)
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(v17 + 113);
      switch(v18)
      {
        case 186:
          goto LABEL_29;
        case 118:
          v20 = *(v17 + 56);
LABEL_34:
          v8 = 0;
          *(a2 + 8) = v20;
          v21 = a1 + 8 * (v20 % 0x61);
          *(a2 + 32) = *(v21 + 192);
          *(v21 + 192) = a2;
          return v8;
        case 109:
LABEL_29:
          v19 = "unopened";
          break;
        default:
          v19 = "invalid";
          break;
      }
    }

    else
    {
      v19 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v19);
    sub_1819012D0(192786);
    v20 = 0;
    goto LABEL_34;
  }

  return v8;
}

uint64_t sub_181A083C8(sqlite3_blob **a1, uint64_t a2, sqlite3_blob **a3, sqlite3_int64 *a4)
{
  *a3 = 0;
  v8 = a1[17];
  if (!sub_1818DF6EC(v8, 0))
  {
    v9 = *(v8 + 16);
    if ((*(v9 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v9, a2);
    }

    else
    {
      *v9 = a2;
      *(v9 + 20) = 4;
    }

    v10 = *(*v8 + 24);
    if (v10)
    {
      xmmword_1ED452F28(v10);
    }
  }

  v11 = sqlite3_step(a1[17]);
  v12 = a1[17];
  if (v11 == 100)
  {
    v13 = sqlite3_column_int64(v12, 0);
    if (a4)
    {
      *a4 = v13;
    }

    v14 = sub_181A086B4(a1, v13, 0, a3);
    sqlite3_reset(a1[17]);
    return v14;
  }

  else
  {

    return sqlite3_reset(v12);
  }
}

uint64_t sub_181A084D0(uint64_t a1, unsigned int a2, double a3)
{
  v3 = *(a1 + 9);
  if (!*(a1 + 9))
  {
    if (*(a1 + 36))
    {
      v4 = *(a1 + 48);
      ++*(a1 + 4 * a2 + 128);
      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      ++*(a1 + 4 * a2 + 128);
    }

LABEL_19:
    *(a1 + 64) = a3;
    result = a1 + 64;
    *(result + 16) = a2;
    *(result - 55) = 1;
    return result;
  }

  v4 = a1 + 64;
  ++*(a1 + 4 * a2 + 128);
LABEL_3:
  if (*v4 > a3 || *v4 == a3 && *(v4 + 16) > a2)
  {
    if (v3)
    {
      v5 = a1;
      v6 = a3;
      v7 = a2;
      result = sub_181A0924C(a1, a2, a3);
      if (!result)
      {
        return result;
      }

      v9 = result;
      a1 = v5;
      if ((-1431655765 * ((v9 - v5[6]) >> 3)) > 3)
      {
        sub_181A08010(*v5, v5[11]);
        a1 = v5;
      }

      else
      {
        *(v5 + ((0xAAAAAAAB00000000 * ((v9 - v5[6]) >> 3) + 0x100000000) >> 29) + 88) = v5[11];
      }

      LOBYTE(a2) = v7;
      a3 = v6;
      *(a1 + 88) = 0;
      v10 = *(a1 + 64);
      *(v9 + 16) = *(a1 + 80);
      *v9 = v10;
    }

    goto LABEL_19;
  }

  return sub_181A0924C(a1, a2, a3);
}

uint64_t sub_181A0862C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  v5 = __rev16(*(v4 + 2));
  if (!v5)
  {
    return 267;
  }

  v6 = 0;
  v7 = (v4 + 5);
  while (((*(v7 - 1) << 56) | (*v7 << 48) | (v7[1] << 40) | (v7[2] << 32) | (v7[3] << 24) | (v7[4] << 16) | (v7[5] << 8)) + v7[6] != a3)
  {
    v7 += *(a1 + 39);
    if (v5 == ++v6)
    {
      return 267;
    }
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t sub_181A086B4(sqlite3_blob **ppBlob, sqlite3_int64 iRow, uint64_t a3, sqlite3_blob **a4)
{
  v8 = ppBlob + 24;
  v9 = ppBlob[iRow % 0x61 + 24];
  if (v9)
  {
    while (*(v9 + 1) != iRow)
    {
      v9 = *(v9 + 4);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    if (a3 && *v9 != a3)
    {
      return 267;
    }

    v18 = 0;
    ++*(v9 + 4);
    goto LABEL_51;
  }

LABEL_4:
  v11 = ppBlob + 14;
  v10 = ppBlob[14];
  if (!v10)
  {
    goto LABEL_19;
  }

  *v11 = 0;
  v12 = sqlite3_blob_reopen(v10, iRow);
  *v11 = v10;
  if (!v12)
  {
    v19 = *(ppBlob + 8);
    goto LABEL_24;
  }

  v13 = v12;
  *v11 = 0;
  v14 = *(v10 + 3);
  v15 = *(v10 + 4);
  v16 = v15[3];
  if (v16)
  {
    xmmword_1ED452F18(v16);
  }

  sub_181929C84(v15, v10);
  v17 = v15[3];
  if (v17)
  {
    xmmword_1ED452F28(v17);
  }

  sqlite3_finalize(v14);
  if (v13 != 7)
  {
    if (*v11)
    {
      v20 = v13;
      goto LABEL_20;
    }

LABEL_19:
    v20 = sqlite3_blob_open(ppBlob[3], ppBlob[6], ppBlob[8], "data", iRow, 0, ppBlob + 14);
    if (v20)
    {
LABEL_20:
      v21 = 0;
      v9 = 0;
      *a4 = 0;
      if (v20 == 1)
      {
        v18 = 267;
      }

      else
      {
        v18 = v20;
      }

      goto LABEL_30;
    }

    v10 = ppBlob[14];
    v19 = *(ppBlob + 8);
    if (!v10)
    {
      if (!v19)
      {
        goto LABEL_27;
      }

      goto LABEL_50;
    }

LABEL_24:
    v22 = *(v10 + 3);
    if (v22)
    {
      LODWORD(v22) = *v10;
    }

    if (v19 == v22)
    {
LABEL_27:
      if (sqlite3_initialize())
      {
        v21 = 0;
        v9 = 0;
LABEL_29:
        v18 = 7;
LABEL_30:
        v23 = *v11;
        *v11 = 0;
        if (v23)
        {
          v24 = *(v23 + 3);
          v25 = *(v23 + 4);
          v26 = v25[3];
          if (v26)
          {
            xmmword_1ED452F18(v26);
          }

          sub_181929C84(v25, v23);
          v27 = v25[3];
          if (v27)
          {
            xmmword_1ED452F28(v27);
          }

          sqlite3_finalize(v24);
        }

        if (v21)
        {
          --*(ppBlob + 23);
          v28 = &off_1ED452EB0;
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
              goto LABEL_51;
            }

            v28 = &xmmword_1ED452F28;
          }

          (*v28)(v9);
        }

        v9 = 0;
LABEL_51:
        *a4 = v9;
        return v18;
      }

      v29 = sub_181902484(v19 + 40, 0x1030040EE16382ALL);
      v9 = v29;
      if (!v29)
      {
        v21 = 0;
        goto LABEL_29;
      }

      ++*(ppBlob + 23);
      *v29 = a3;
      *(v29 + 8) = iRow;
      *(v29 + 16) = 1;
      *(v29 + 24) = v29 + 40;
      *(v29 + 32) = 0;
      v30 = sub_181910DE0(ppBlob[14], (v29 + 40), *(ppBlob + 8), 0, sub_181910FE4);
      v18 = v30;
      if (iRow != 1 || v30)
      {
        if (v30)
        {
          v21 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        v31 = __rev16(**(v9 + 3));
        *(ppBlob + 11) = v31;
        if (v31 > 0x28)
        {
LABEL_57:
          v21 = 1;
          v18 = 267;
          goto LABEL_30;
        }
      }

      if ((*(ppBlob + 8) - 4) / *(ppBlob + 39) >= (bswap32(*(*(v9 + 3) + 2)) >> 16))
      {
        if (a3)
        {
          ++*(a3 + 16);
        }

        v18 = 0;
        v33 = *(v9 + 2) % 0x61u;
        *(v9 + 4) = v8[v33];
        v8[v33] = v9;
        goto LABEL_51;
      }

      goto LABEL_57;
    }

LABEL_50:
    v9 = 0;
    v18 = 267;
    goto LABEL_51;
  }

  return 7;
}

uint64_t sub_181A08AA4(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(*a1 + 38);
  v5 = a1 + 64;
  v6 = a1 + 88;
  v56 = a1 + 64;
  v57 = (a1 + 72);
  v7 = 24 * v3;
  v58 = *a1;
  v59 = *(a1 + 16);
  v55 = a1 + 88;
  while (1)
  {
    while (1)
    {
      v8 = *(a1 + 9);
      v9 = v5;
      if (!*(a1 + 9) && (!*(a1 + 36) || (v9 = *(a1 + 48)) == 0))
      {
        v54 = 1;
        goto LABEL_120;
      }

      if (!*(v9 + 16))
      {
        v54 = 0;
LABEL_120:
        result = 0;
        *(a1 + 8) = v54;
        return result;
      }

      v10 = (v6 + 8 * (1 - v8));
      v11 = *v10;
      if (!*v10)
      {
        v12 = v57;
        if (v8 != 1)
        {
          v12 = (*(a1 + 48) + 8);
        }

        result = sub_181A086B4(*a1, *v12, 0, v10);
        if (result)
        {
          return result;
        }

        v11 = *v10;
      }

      v14 = *(v11 + 3);
      v15 = __rev16(*(v14 + 2));
      v16 = *(v9 + 18);
      if (v15 <= v16)
      {
        goto LABEL_114;
      }

      v60 = v15;
      v17 = v14 + *(v9 + 18) * *(v2 + 39);
      v18 = (v17 + 4);
      if (v3 < 1)
      {
        break;
      }

      v19 = (v17 + 12);
      v20 = (v17 + 4);
      while (2)
      {
        v21 = 0;
        v22 = 2;
        v23 = -1.0;
        while (1)
        {
          v24 = *(a1 + 24);
          v25 = v24 + v21;
          v26 = *(v24 + v21 + 4);
          if (v26 >= 70)
          {
            break;
          }

          v29 = 4 * *v25;
          if (*(v9 + 16) == 1)
          {
            v30 = COERCE_FLOAT(bswap32(*&v19[v29]));
            v31 = SLODWORD(v30);
            if (v4 != 1)
            {
              v31 = v30;
            }

            if (v26 > 66)
            {
              if (v26 == 67)
              {
                if (v31 >= *(v24 + v21 + 8))
                {
                  goto LABEL_93;
                }
              }

              else if (v26 == 68)
              {
                if (v31 < *(v24 + v21 + 8))
                {
                  goto LABEL_93;
                }
              }

              else if (v31 <= *(v24 + v21 + 8))
              {
                goto LABEL_93;
              }

              goto LABEL_17;
            }

            if (v26 != 63)
            {
              if (v26 != 66)
              {
                if (v26 == 64 || v31 != *(v24 + v21 + 8))
                {
                  goto LABEL_93;
                }

                goto LABEL_17;
              }

              v36 = *(v24 + v21 + 8);
              goto LABEL_80;
            }
          }

          else
          {
            v32 = &v20[v29 & 0x3F8];
            if (v26 > 65)
            {
              if ((v26 - 66) < 2)
              {
                v41 = COERCE_FLOAT(bswap32(*(v32 + 2)));
                v42 = SLODWORD(v41);
                if (v4 != 1)
                {
                  v42 = v41;
                }

                if (*(v24 + v21 + 8) < v42)
                {
                  goto LABEL_93;
                }

                goto LABEL_17;
              }

              goto LABEL_87;
            }

            if (v26 != 63)
            {
              if (v26 == 65)
              {
                v33 = COERCE_FLOAT(bswap32(*(v32 + 2)));
                v34 = v33;
                if (v4 == 1)
                {
                  v34 = SLODWORD(v33);
                }

                v31 = *(v24 + v21 + 8);
                if (v31 < v34)
                {
                  goto LABEL_93;
                }

                v35 = COERCE_FLOAT(bswap32(*(v32 + 3)));
                v36 = SLODWORD(v35);
                if (v4 != 1)
                {
                  v36 = v35;
                }

LABEL_80:
                if (v31 > v36)
                {
                  goto LABEL_93;
                }

                goto LABEL_17;
              }

              if (v26 == 64)
              {
                goto LABEL_93;
              }

LABEL_87:
              v43 = COERCE_FLOAT(bswap32(*(v32 + 3)));
              v44 = SLODWORD(v43);
              if (v4 != 1)
              {
                v44 = v43;
              }

              if (*(v24 + v21 + 8) > v44)
              {
                goto LABEL_93;
              }
            }
          }

LABEL_17:
          v21 += 24;
          if (v7 == v21)
          {
            LOBYTE(v16) = *(v9 + 18);
            v18 = v20;
            v2 = v58;
LABEL_97:
            LODWORD(v3) = v59;
            goto LABEL_99;
          }
        }

        v27 = *(v25 + 16);
        if (v26 == 71 && *(v9 + 16) == 1)
        {
          *(v27 + 72) = ((*v20 << 56) | (v20[1] << 48) | (v20[2] << 40) | (v20[3] << 32) | (v20[4] << 24) | (v20[5] << 16) | (v20[6] << 8)) + v20[7];
        }

        v28 = *(v27 + 56);
        if (v4 == 1)
        {
          if (v28 <= 7)
          {
            if (v28 != 4)
            {
              if (v28 != 6)
              {
                goto LABEL_54;
              }

LABEL_52:
              v66 = bswap32(*(v20 + 7));
              v65 = bswap32(*(v20 + 6));
            }

            v64 = bswap32(*(v20 + 5));
            v63 = bswap32(*(v20 + 4));
LABEL_54:
            v62 = bswap32(*(v20 + 3));
            v37 = ((*v19 << 24) | (v20[9] << 16) | (v20[10] << 8) | v20[11]);
            goto LABEL_62;
          }

          if (v28 != 8)
          {
            if (v28 != 10)
            {
              goto LABEL_54;
            }

            v70 = bswap32(*(v20 + 11));
            v69 = bswap32(*(v20 + 10));
          }

          v68 = bswap32(*(v20 + 9));
          v67 = bswap32(*(v20 + 8));
          goto LABEL_52;
        }

        if (v28 <= 7)
        {
          if (v28 != 4)
          {
            if (v28 != 6)
            {
              goto LABEL_61;
            }

            goto LABEL_59;
          }

          goto LABEL_60;
        }

        if (v28 == 8)
        {
          goto LABEL_58;
        }

        if (v28 == 10)
        {
          v70 = COERCE_FLOAT(bswap32(*(v20 + 11)));
          v69 = COERCE_FLOAT(bswap32(*(v20 + 10)));
LABEL_58:
          v68 = COERCE_FLOAT(bswap32(*(v20 + 9)));
          v67 = COERCE_FLOAT(bswap32(*(v20 + 8)));
LABEL_59:
          v66 = COERCE_FLOAT(bswap32(*(v20 + 7)));
          v65 = COERCE_FLOAT(bswap32(*(v20 + 6)));
LABEL_60:
          v64 = COERCE_FLOAT(bswap32(*(v20 + 5)));
          v63 = COERCE_FLOAT(bswap32(*(v20 + 4)));
        }

LABEL_61:
        v62 = COERCE_FLOAT(bswap32(*(v20 + 3)));
        v37 = COERCE_FLOAT((*v19 << 24) | (v20[9] << 16) | (v20[10] << 8) | v20[11]);
LABEL_62:
        v61 = v37;
        if (v26 == 70)
        {
          result = (*(v24 + v21 + 8))(v27);
          v22 = 0;
          v23 = 0.0;
          if (result)
          {
            return result;
          }
        }

        else
        {
          *(v27 + 40) = &v61;
          *(v27 + 60) = *(v9 + 16) - 1;
          v38 = *v9;
          *(v27 + 80) = *v9;
          *(v27 + 96) = v38;
          v39 = *(v9 + 17);
          *(v27 + 88) = v39;
          *(v27 + 92) = v39;
          result = (*(v24 + v21 + 8))(v27);
          if (*(v27 + 92) < v22)
          {
            v22 = *(v27 + 92);
          }

          if (*(v27 + 96) < v23 || v23 < 0.0)
          {
            v23 = *(v27 + 96);
          }

          if (result)
          {
            return result;
          }
        }

        if (v22)
        {
          goto LABEL_17;
        }

LABEL_93:
        LOBYTE(v16) = *(v9 + 18) + 1;
        *(v9 + 18) = v16;
        if (v60 > v16)
        {
          v2 = v58;
          v20 += *(v58 + 39);
          v19 = v20 + 8;
          if (v59 >= 1)
          {
            continue;
          }

          v23 = -1.0;
          LOBYTE(v22) = 2;
          goto LABEL_97;
        }

        break;
      }

      v2 = v58;
      LODWORD(v3) = v59;
      v6 = v55;
      v5 = v56;
LABEL_115:
      sub_181A093F4(a1);
    }

    v23 = -1.0;
    LOBYTE(v22) = 2;
LABEL_99:
    v45 = v16 + 1;
    *(v9 + 18) = v16 + 1;
    v46 = *(v9 + 16);
    v47 = v46 - 1;
    if (v46 != 1)
    {
      break;
    }

    v48 = *(v9 + 8);
LABEL_107:
    if (v60 <= v45)
    {
      sub_181A093F4(a1);
    }

    if (v23 >= 0.0)
    {
      v52 = v23;
    }

    else
    {
      v52 = 0.0;
    }

    v53 = sub_181A084D0(a1, v47, v52);
    if (!v53)
    {
      return 7;
    }

    *(v53 + 17) = v22;
    *(v53 + 18) = v16;
    v16 = v16;
    *(v53 + 8) = v48;
    v6 = v55;
    v5 = v56;
    v15 = v60;
LABEL_114:
    if (v15 <= v16)
    {
      goto LABEL_115;
    }
  }

  v48 = ((*v18 << 56) | (v18[1] << 48) | (v18[2] << 40) | (v18[3] << 32) | (v18[4] << 24) | (v18[5] << 16) | (v18[6] << 8)) + v18[7];
  v49 = *(a1 + 36);
  if (v49 < 1)
  {
    LOBYTE(v16) = 0;
    goto LABEL_107;
  }

  v50 = (*(a1 + 48) + 8);
  while (1)
  {
    v51 = *v50;
    v50 += 3;
    if (v51 == v48)
    {
      return 267;
    }

    if (!--v49)
    {
      LOBYTE(v16) = 0;
      goto LABEL_107;
    }
  }
}

uint64_t sub_181A0924C(uint64_t a1, char a2, double a3)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 32);
  if (v4 < v5)
  {
    result = *(a1 + 48);
    goto LABEL_10;
  }

  v7 = a3;
  v8 = a2;
  v9 = 2 * v5 + 8;
  v10 = *(a1 + 48);
  v11 = sqlite3_initialize();
  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  result = sub_18190287C(v10, 24 * v9, 0x10000408F6FA0D9);
  if (result)
  {
    *(a1 + 48) = result;
    *(a1 + 32) = v9;
    v4 = *(a1 + 36);
    a2 = v8;
    a3 = v7;
LABEL_10:
    *(a1 + 36) = v4 + 1;
    v13 = result + 24 * v4;
    *v13 = a3;
    *(v13 + 16) = a2;
    if (v4 < 1)
    {
      result += 24 * v4;
    }

    else
    {
      v14 = a1 + 88;
      do
      {
        result = v13;
        v17 = v4 - 1;
        v18 = (v4 - 1) >> 1;
        v19 = *(a1 + 48);
        v13 = v19 + 24 * v18;
        if (*result >= *v13 && (*result > *v13 || *(result + 16) >= *(v13 + 16)))
        {
          break;
        }

        v20 = *v13;
        v21 = *(v13 + 16);
        v22 = v19 + 24 * v4;
        v23 = *(v22 + 16);
        *v13 = *v22;
        *(v13 + 16) = v23;
        v24 = *(a1 + 48) + 24 * v4;
        *v24 = v20;
        *(v24 + 16) = v21;
        if (v4 <= 8)
        {
          v25 = v18 + 1;
          if (v4 < 4)
          {
            v15 = v4 + 1;
            v16 = *(v14 + 8 * v25);
            *(v14 + 8 * v25) = *(v14 + 8 * v15);
            *(v14 + 8 * v15) = v16;
          }

          else
          {
            sub_181A08010(*a1, *(v14 + 8 * v25));
            *(v14 + 8 * v25) = 0;
          }
        }

        v4 = v17 >> 1;
        result = v13;
      }

      while (v17 > 1);
    }
  }

  return result;
}

uint64_t sub_181A093F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 9);
  v3 = 1 - v2;
  v4 = result + 88;
  v5 = *(result + 88 + 8 * (1 - v2));
  if (v5)
  {
    result = sub_181A08010(*result, v5);
    *(v4 + 8 * v3) = 0;
    LODWORD(v2) = *(v1 + 9);
  }

  if (v2)
  {
    v6 = v1 + 4 * *(v1 + 80);
    --*(v6 + 128);
    *(v1 + 9) = 0;
    return result;
  }

  v7 = *(v1 + 36);
  if (v7)
  {
    v8 = *(v1 + 48);
    v9 = v1 + 4 * *(v8 + 16);
    --*(v9 + 128);
    v10 = v7 - 1;
    *(v1 + 36) = v7 - 1;
    v11 = v8 + 24 * (v7 - 1);
    v12 = *(v11 + 16);
    *v8 = *v11;
    *(v8 + 16) = v12;
    if (v7 > 4 || (*(v1 + 96) = *(v4 + 8 * v7), *(v4 + 8 * v7) = 0, v7 >= 3))
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v18 = v13;
        v17 = v13 + 2;
        v19 = *(v1 + 48);
        v20 = (v19 + 24 * v14);
        if (v17 >= v10)
        {
          v30 = v15;
          v24 = *(v19 + 24 * v15);
        }

        else
        {
          v21 = (v19 + 24 * v17);
          v22 = v19 + 24 * v15;
          v23 = *v21;
          v24 = *v22;
          if (*v21 < *v22 || (v30 = v15, *v21 <= *v22) && *(v21 + 16) < *(v22 + 16))
          {
            if (v23 >= *v20 && (v23 > *v20 || *(v21 + 16) >= *(v20 + 16)))
            {
              return result;
            }

            v25 = *v20;
            v26 = *(v20 + 2);
            v27 = *(v21 + 2);
            *v20 = *v21;
            *(v20 + 2) = v27;
            v28 = *(v1 + 48) + 24 * v17;
            *v28 = v25;
            *(v28 + 16) = v26;
            if (v14 <= 3)
            {
              v29 = v14 + 1;
              if (v14 < 1)
              {
                v37 = *(v4 + 8 * v29);
                *(v4 + 8 * v29) = *(v4 + 8 * (v18 + 3));
                *(v4 + 8 * (v18 + 3)) = v37;
              }

              else
              {
                result = sub_181A08010(*v1, *(v4 + 8 * v29));
                *(v4 + 8 * v29) = 0;
              }
            }

            goto LABEL_12;
          }
        }

        v31 = (v19 + 24 * v30);
        if (v24 >= *v20 && (v24 > *v20 || *(v31 + 16) >= *(v20 + 16)))
        {
          return result;
        }

        v32 = *v20;
        v33 = *(v20 + 2);
        v34 = *(v31 + 2);
        *v20 = *v31;
        *(v20 + 2) = v34;
        v35 = *(v1 + 48) + 24 * v30;
        *v35 = v32;
        *(v35 + 16) = v33;
        if (v14 <= 3)
        {
          v36 = v14 + 1;
          if (v14 < 2)
          {
            v16 = *(v4 + 8 * v36);
            *(v4 + 8 * v36) = *(v4 + 8 * v17);
            *(v4 + 8 * v17) = v16;
          }

          else
          {
            result = sub_181A08010(*v1, *(v4 + 8 * v36));
            *(v4 + 8 * v36) = 0;
          }
        }

        LODWORD(v17) = v15;
LABEL_12:
        v13 = 2 * v17;
        v15 = (2 * v17) | 1;
        v14 = v17;
      }

      while (v15 < v10);
    }
  }

  return result;
}

uint64_t sub_181A09684(void *a1, unsigned int a2)
{
  pStmt = 0;
  v4 = sqlite3_mprintf("SELECT * FROM %Q.%Q", a1[6], a1[7]);
  if (!v4)
  {
    v7 = 7;
    goto LABEL_14;
  }

  v6 = v4;
  v7 = sub_1818954B4(a1[3], v4, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v5);
  v8 = &off_1ED452EB0;
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

    v8 = &xmmword_1ED452F28;
  }

  (*v8)(v6);
LABEL_8:
  if (!v7)
  {
    if (a2)
    {
      sub_18190C804(pStmt, a2, 0, 0);
      sub_18190C804(pStmt, a2 + 1, 0, 0);
      v9 = sqlite3_mprintf("rtree constraint failed: %s.(%s<=%s)");
    }

    else
    {
      sub_18190C804(pStmt, 0, 0, 0);
      v9 = sqlite3_mprintf("UNIQUE constraint failed: %s.%s");
    }

    a1[2] = v9;
    v7 = 19;
  }

LABEL_14:
  sqlite3_finalize(pStmt);
  return v7;
}

uint64_t sub_181A09810(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v4 = sub_181A086B4(a1, 1, 0, &v39);
  if (!v4)
  {
    v4 = sub_181A083C8(a1, a2, &v40, 0);
    if (!v4 && v40)
    {
      v24 = *(v40 + 3);
      v25 = __rev16(*(v24 + 2));
      if (!v25)
      {
LABEL_34:
        sub_181A08010(a1, v40);
        v4 = 267;
        goto LABEL_2;
      }

      v26 = 0;
      v27 = (v24 + 5);
      while (((*(v27 - 1) << 56) | (*v27 << 48) | (v27[1] << 40) | (v27[2] << 32) | (v27[3] << 24) | (v27[4] << 16) | (v27[5] << 8)) + v27[6] != a2)
      {
        v27 += *(a1 + 39);
        if (v25 == ++v26)
        {
          goto LABEL_34;
        }
      }

      v29 = v40;
      v30 = sub_181A0B5A4(a1, v40, v26, 0);
      LODWORD(v4) = sub_181A08010(a1, v29);
      if (v30)
      {
        v4 = v30;
      }

      else
      {
        v4 = v4;
      }
    }

    if (!v4)
    {
      v31 = *(a1 + 152);
      if (!sub_1818DF6EC(v31, 0))
      {
        v32 = v31[16];
        if ((*(v32 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v32, a2);
        }

        else
        {
          *v32 = a2;
          *(v32 + 20) = 4;
        }

        v33 = *(*v31 + 24);
        if (v33)
        {
          xmmword_1ED452F28(v33);
        }
      }

      sqlite3_step(*(a1 + 152));
      v4 = sqlite3_reset(*(a1 + 152));
      if (!v4)
      {
        if (*(a1 + 44) >= 1 && (v34 = v39, v35 = *(v39 + 3), __rev16(*(v35 + 2)) == 1))
        {
          v41 = 0;
          v36 = sub_181A086B4(a1, ((*(v35 + 4) << 56) | (*(v35 + 5) << 48) | (*(v35 + 6) << 40) | (*(v35 + 7) << 32) | (*(v35 + 8) << 24) | (*(v35 + 9) << 16) | (*(v35 + 10) << 8)) + *(v35 + 11), v39, &v41);
          v37 = v41;
          if (!v36)
          {
            v36 = sub_181A0B7DC(a1, v41, *(a1 + 44) - 1);
          }

          LODWORD(v4) = sub_181A08010(a1, v37);
          if (v36)
          {
            v4 = v36;
          }

          else
          {
            v4 = v4;
          }

          if (!v4)
          {
            v38 = *(a1 + 44) - 1;
            *(a1 + 44) = v38;
            **(v34 + 3) = bswap32(v38) >> 16;
            *(v34 + 5) = 1;
          }
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

LABEL_2:
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = v4;
    v7 = &unk_1ED456000;
    while (1)
    {
      v8 = v6;
      if (!v6)
      {
        v9 = __rev16(*(*(v5 + 24) + 2));
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = 0;
            v12 = (*(v5 + 24) + v10 * *(a1 + 39));
            v13 = (((v12[4] << 56) | (v12[5] << 48) | (v12[6] << 40) | (v12[7] << 32) | (v12[8] << 24) | (v12[9] << 16) | (v12[10] << 8)) + v12[11]);
            v45 = 0;
            v44 = 0;
            v43 = 0u;
            v42 = 0u;
            v41 = v13;
            v14 = (v12 + 12);
            v15 = *(a1 + 37);
            do
            {
              v16 = &v41 + 4 * v11;
              v17 = *v14;
              v18 = v14[1];
              v14 += 2;
              *(v16 + 2) = bswap32(v17);
              *(v16 + 3) = bswap32(v18);
              v11 += 2;
            }

            while (v11 < v15);
            v8 = sub_181A09C80(a1, &v41, *(v5 + 8), &v45);
            if (v8)
            {
              break;
            }

            v19 = v45;
            v20 = sub_181A0A1B4(a1, v45, &v41, *(v5 + 8));
            LODWORD(v8) = sub_181A08010(a1, v19);
            v8 = v20 ? v20 : v8;
            ++v10;
          }

          while (!v8 && v10 < v9);
          v7 = &unk_1ED456000;
        }

        else
        {
          v8 = 0;
        }
      }

      *(a1 + 104) = *(v5 + 32);
      --*(a1 + 92);
      v22 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v6 = v8;
        v23 = v7[350];
        if (v23)
        {
          xmmword_1ED452F18(v23);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = v7[350];
        if (!v5)
        {
          goto LABEL_6;
        }

        v22 = &xmmword_1ED452F28;
      }

      else
      {
        v6 = v8;
      }

      (*v22)(v5);
LABEL_6:
      v5 = *(a1 + 104);
      if (!v5)
      {
        goto LABEL_36;
      }
    }
  }

  LODWORD(v6) = v4;
LABEL_36:
  LODWORD(result) = sub_181A08010(a1, v39);
  if (v6)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_181A09C80(sqlite3_blob **a1, uint64_t a2, int a3, sqlite3_blob **a4)
{
  v83 = 0;
  result = sub_181A086B4(a1, 1, 0, &v83);
  if (result)
  {
    v9 = v83;
    goto LABEL_71;
  }

  v69 = a4;
  v10 = 0;
  v76 = (a2 + 12);
  v75 = (a2 + 8);
  v11 = a1;
  v9 = v83;
  v70 = a3;
  while (2)
  {
    if (v10 >= *(v11 + 44) - a3)
    {
      result = 0;
      goto LABEL_70;
    }

    v72 = v10;
    v77 = *(v9 + 3);
    v14 = __rev16(*(v77 + 2));
    v82 = 0;
    if (!v14)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v71 = v9;
    v15 = 0;
    v16 = 0;
    v12 = 0;
    v17 = *(v11 + 39);
    v18 = v11;
    v19 = *(v11 + 37);
    v20 = 0.0;
    v21 = v18;
    v22 = v18[38];
    do
    {
      v25 = 0;
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      v26 = (v77 + v15 * v17);
      v78[0] = ((v26[4] << 56) | (v26[5] << 48) | (v26[6] << 40) | (v26[7] << 32) | (v26[8] << 24) | (v26[9] << 16) | (v26[10] << 8)) + v26[11];
      v27 = (v26 + 12);
      do
      {
        v28 = &v78[v25 / 2];
        *(v28 + 2) = bswap32(*v27);
        *(v28 + 3) = bswap32(v27[1]);
        v27 += 2;
        v25 += 2;
      }

      while (v25 < v19);
      if (v22 == 1)
      {
        if (!v19)
        {
          goto LABEL_9;
        }

        v29 = &v79 + 1;
        v30 = v76;
        v31 = 2;
        while (*(v30 - 1) >= *(v29 - 1) && *v30 <= *v29)
        {
          v30 += 2;
          v29 += 2;
          v32 = v31 >= v19;
          v31 += 2;
          if (v32)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        if (!v19)
        {
LABEL_9:
          v23 = sub_181A0BE54(v21, v78);
          if (v23 < v20 || v16 == 0)
          {
            v12 = v78[0];
            v20 = v23;
          }

          v16 = 1;
          goto LABEL_15;
        }

        v33 = &v79 + 1;
        v34 = v76;
        v35 = 2;
        while (*(v34 - 1) >= *(v33 - 1) && *v34 <= *v33)
        {
          v34 += 2;
          v33 += 2;
          v32 = v35 >= v19;
          v35 += 2;
          if (v32)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_15:
      ++v15;
    }

    while (v15 != v14);
    if (!v16)
    {
      v36 = 0;
      v11 = v21;
      v74 = v21[39];
      v37 = v21[37];
      v73 = v21[38];
      v38 = 2;
      if (v37 > 2)
      {
        v38 = v21[37];
      }

      v39 = ((v38 - 1) >> 1) + 1;
      v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
      v41 = 0.0;
      v9 = v71;
      while (1)
      {
        v42 = 0;
        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        v43 = (v77 + v36 * v74);
        v78[0] = ((v43[4] << 56) | (v43[5] << 48) | (v43[6] << 40) | (v43[7] << 32) | (v43[8] << 24) | (v43[9] << 16) | (v43[10] << 8)) + v43[11];
        v44 = (v43 + 12);
        do
        {
          v45 = &v78[v42 / 2];
          *(v45 + 2) = bswap32(*v44);
          *(v45 + 3) = bswap32(v44[1]);
          v44 += 2;
          v42 += 2;
        }

        while (v42 < v37);
        v46 = sub_181A0BE54(v11, v78);
        if (v73)
        {
          v47 = v39 & 0x7FFFFFFFFFFFFFFCLL;
          v48 = v75;
          v49 = &v79;
          if (v37 < 7)
          {
            v50 = 0;
LABEL_47:
            v54 = &v76[v50];
            v55 = &v79 + v50 + 1;
            do
            {
              v56 = *(v55 - 1);
              if (v56 >= *(v54 - 1))
              {
                v56 = *(v54 - 1);
              }

              v57 = *v55;
              if (*v55 <= *v54)
              {
                v57 = *v54;
              }

              *(v55 - 1) = v56;
              *v55 = v57;
              v50 += 2;
              v54 += 2;
              v55 += 2;
            }

            while (v50 < v37);
            goto LABEL_61;
          }

          do
          {
            v52 = *v48;
            v51 = v48[1];
            v48 += 2;
            v53 = vtrn2q_s32(vrev64q_s32(vminq_s32(v49[1], v51)), vmaxq_s32(v49[1], v51));
            *v49 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v49, v52)), vmaxq_s32(*v49, v52));
            v49[1] = v53;
            v49 += 2;
            v47 -= 4;
          }

          while (v47);
          v50 = 2 * (v39 & 0x7FFFFFFFFFFFFFFCLL);
          if (v39 != v40)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v37 < 7)
          {
            v58 = 0;
LABEL_59:
            v62 = (v75 + 4 * v58);
            v63 = (&v79 + 4 * v58);
            do
            {
              v64 = *v62++;
              v65.i32[0] = *v63;
              v65.i32[1] = v64.i32[1];
              v66.i32[0] = v64.i32[0];
              v66.i32[1] = HIDWORD(*v63);
              *v63 = vbsl_s8(vcgt_f32(v66, v65), *v63, v64);
              ++v63;
              v58 += 2;
            }

            while (v58 < v37);
            goto LABEL_61;
          }

          v59 = v39 & 0x7FFFFFFFFFFFFFFCLL;
          v60 = v75;
          v61 = &v79;
          do
          {
            v84 = vld2q_f32(v61);
            v85 = vld2q_f32(v60);
            v60 += 8;
            v86.val[0] = vbslq_s8(vcgtq_f32(v85.val[0], v84.val[0]), v84.val[0], v85.val[0]);
            v86.val[1] = vbslq_s8(vcgtq_f32(v84.val[1], v85.val[1]), v84.val[1], v85.val[1]);
            vst2q_f32(v61, v86);
            v61 += 8;
            v59 -= 4;
          }

          while (v59);
          v58 = 2 * (v39 & 0x7FFFFFFFFFFFFFFCLL);
          if (v39 != v40)
          {
            goto LABEL_59;
          }
        }

LABEL_61:
        v67 = sub_181A0BE54(v11, v78) - v46;
        if (!v36 || v67 < v41 || (v67 == v41 ? (v68 = v46 < v20) : (v68 = 0), v68))
        {
          v12 = v78[0];
          v41 = v67;
          v20 = v46;
        }

        if (++v36 == v14)
        {
          goto LABEL_5;
        }
      }
    }

    v11 = v21;
    v9 = v71;
LABEL_5:
    v13 = sub_181A086B4(v11, v12, v9, &v82);
    sub_181A08010(v11, v9);
    v9 = v82;
    v10 = v72 + 1;
    a3 = v70;
    if (!v13)
    {
      continue;
    }

    break;
  }

  result = v13;
LABEL_70:
  a4 = v69;
LABEL_71:
  *a4 = v9;
  return result;
}

uint64_t sub_181A0A1B4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v4 = a4;
  v5 = a3;
  if (a4 >= 1)
  {
    v8 = (1372618415 * *a3) >> 32;
    v9 = *(a1 + 8 * (*a3 - 97 * ((v8 + ((*a3 - v8) >> 1)) >> 6)) + 192);
    if (v9)
    {
      while (v9[1] != *a3)
      {
        v9 = v9[4];
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      sub_181A08010(a1, *v9);
      if (a2)
      {
        ++*(a2 + 16);
      }

      *v9 = a2;
    }
  }

LABEL_9:
  v10 = *(a1 + 39);
  v11 = (*(a1 + 32) - 4) / v10;
  v12 = *(a2 + 24);
  v13 = __rev16(*(v12 + 2));
  if (v13 < v11)
  {
    v14 = v12 + (v13 * v10);
    *(v14 + 4) = bswap64(*v5);
    if (*(a1 + 37))
    {
      v15 = 0;
      v16 = (v14 + 12);
      do
      {
        *v16++ = bswap32(*(v5 + 8 + 4 * v15++));
      }

      while (v15 < *(a1 + 37));
    }

    *(*(a2 + 24) + 2) = bswap32(v13 + 1) >> 16;
    *(a2 + 20) = 1;
  }

  if (v13 != v11)
  {
    result = sub_181A0BF58(a1, a2, v5);
    if (!result)
    {
      v26 = *v5;
      v27 = *(a2 + 8);
      if (v4)
      {

        return sub_181A0C420(a1, v26, v27);
      }

      else
      {

        return sub_181A0C320(a1, v26, v27);
      }
    }

    return result;
  }

  v17 = *(a2 + 24);
  v18 = *(v17 + 2);
  v19 = *(v17 + 3);
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  if (sqlite3_initialize())
  {
    v20 = 0;
LABEL_17:
    v21 = 0;
    v22 = 0;
    v23 = 7;
    v24 = 1;
    goto LABEL_55;
  }

  v28 = v19 & 0xFFFF00FF | (v18 << 8);
  v29 = (v28 + 1);
  v30 = sub_181902484(52 * v29, 0x1000040EED21634);
  v20 = v30;
  if (!v30)
  {
    goto LABEL_17;
  }

  v247 = (v28 + 1);
  v261 = 4 * v29;
  bzero((v30 + 48 * v29), 4 * v29);
  if (v28)
  {
    v31 = 0;
    v32 = (v20 + 12);
    do
    {
      v33 = (*(a2 + 24) + v31 * *(a1 + 39));
      *(v20 + 48 * v31) = ((v33[4] << 56) | (v33[5] << 48) | (v33[6] << 40) | (v33[7] << 32) | (v33[8] << 24) | (v33[9] << 16) | (v33[10] << 8)) + v33[11];
      v34 = (v33 + 12);
      v35 = v32;
      v36 = 2;
      do
      {
        *(v35 - 1) = bswap32(*v34);
        *v35 = bswap32(v34[1]);
        v35 += 2;
        v34 += 2;
        v37 = v36 >= *(a1 + 37);
        v36 += 2;
      }

      while (!v37);
      ++v31;
      v32 += 12;
    }

    while (v31 != v28);
  }

  bzero((*(a2 + 24) + 2), *(a1 + 32) - 2);
  *(a2 + 20) = 1;
  v263 = v19 & 0xFFFF00FF | (v18 << 8);
  v38 = (v20 + 48 * v28);
  v39 = *v5;
  v40 = *(v5 + 32);
  v38[1] = *(v5 + 16);
  v38[2] = v40;
  *v38 = v39;
  if (*(a2 + 8) == 1)
  {
    v41 = *(a1 + 32);
    if (sqlite3_initialize())
    {
      v22 = 0;
    }

    else
    {
      v45 = sub_181902484(v41 + 40, 0x1030040EE16382ALL);
      v22 = v45;
      if (v45)
      {
        bzero(v45, *(a1 + 32) + 40);
        *(v22 + 24) = v22 + 40;
        ++*(a1 + 92);
        *v22 = a2;
        *(v22 + 16) = 0x100000001;
        ++*(a2 + 16);
      }
    }

    v46 = *(a1 + 32);
    if (sqlite3_initialize() || (v48 = sub_181902484(v46 + 40, 0x1030040EE16382ALL)) == 0)
    {
      v44 = 0;
    }

    else
    {
      v49 = v48;
      bzero(v48, *(a1 + 32) + 40);
      v49[3] = (v49 + 5);
      ++*(a1 + 92);
      *v49 = a2;
      v44 = v49;
      v49[2] = 0x100000001;
      ++*(a2 + 16);
    }

    v50 = *(a1 + 44) + 1;
    *(a1 + 44) = v50;
    *(a2 + 20) = 1;
    **(a2 + 24) = bswap32(v50) >> 16;
  }

  else
  {
    v42 = *a2;
    v43 = *(a1 + 32);
    if (sqlite3_initialize())
    {
      v22 = 0;
    }

    else
    {
      v47 = sub_181902484(v43 + 40, 0x1030040EE16382ALL);
      v22 = v47;
      if (v47)
      {
        bzero(v47, *(a1 + 32) + 40);
        *(v22 + 24) = v22 + 40;
        ++*(a1 + 92);
        *v22 = v42;
        *(v22 + 16) = 0x100000001;
        if (v42)
        {
          ++*(v42 + 16);
        }
      }
    }

    ++*(a2 + 16);
    v44 = a2;
  }

  v24 = 0;
  v250 = v44;
  if (!v44 || !v22)
  {
LABEL_53:
    v23 = 7;
LABEL_54:
    v21 = v250;
    goto LABEL_55;
  }

  bzero(v44[3], *(a1 + 32));
  bzero(*(v22 + 24), *(a1 + 32));
  v51 = *(a1 + 36);
  if (sqlite3_initialize() || (v246 = a2, v53 = v261 + 8 + (v261 + 8) * v51, (v54 = sub_181902484(v53, 0x10040436913F5)) == 0))
  {
    v24 = 0;
    goto LABEL_53;
  }

  v55 = v54;
  v56 = *(a1 + 36);
  bzero(v54, v53);
  LODWORD(v57) = *(a1 + 36);
  v255 = v55;
  if (!*(a1 + 36))
  {
    v176 = 0;
    v177 = 0;
LABEL_177:
    v61 = v247;
    goto LABEL_179;
  }

  v243 = v22;
  v244 = v5;
  v245 = v4;
  v254 = v20;
  v58 = 0;
  v59 = &v55[8 * v56];
  v60 = v55;
  v61 = v247;
  v62 = &v59[4 * (v247 * v56)];
  v63 = (v18 << 8) | v19;
  v64 = v63 + 1;
  v65 = v60 + 16;
  v66 = 4 * v64;
  v67.i64[0] = 0x400000004;
  v67.i64[1] = 0x400000004;
  v68.i64[0] = 0x800000008;
  v68.i64[1] = 0x800000008;
  do
  {
    v69 = &v255[8 * v57 + 4 * v58 * v247];
    *&v255[8 * v58] = v69;
    if (v63 < 7)
    {
      v70 = 0;
      do
      {
LABEL_73:
        *&v60[8 * v57 + 4 * v70] = v70;
        ++v70;
      }

      while (v64 != v70);
      goto LABEL_67;
    }

    v71 = &v65[8 * v57];
    v72 = &v60[8 * v57];
    v73 = v64 & 0x1FFF8;
    v74 = xmmword_181A1FFE0;
    do
    {
      *v72 = v74;
      v72 += 2;
      *v71 = vaddq_s32(v74, v67);
      v71 += 2;
      v74 = vaddq_s32(v74, v68);
      v73 -= 8;
    }

    while (v73);
    v70 = v64 & 0x1FFF8;
    if ((v64 & 0x1FFF8) != v64)
    {
      goto LABEL_73;
    }

LABEL_67:
    sub_181A0C668(a1, v69, v247, v58++, v254, v62);
    v57 = *(a1 + 36);
    v65 += v66;
    v60 += v66;
    v67.i64[0] = 0x400000004;
    v67.i64[1] = 0x400000004;
    v68.i64[0] = 0x800000008;
    v68.i64[1] = 0x800000008;
  }

  while (v58 < v57);
  if (*(a1 + 36))
  {
    v249 = *(a1 + 36);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = (*(a1 + 32) - 4) / *(a1 + 39);
    v79 = v78 / 3;
    v248 = ((((1431655765 * v78) >> 32) - v78) >> 1) + ((((1431655765 * v78) >> 32) - v78) >> 31) + v247;
    v80 = v254 + 8;
    v81 = v254 + 12;
    v82 = 0.0;
    v83 = v263;
    v257 = v79;
    while (1)
    {
      v252 = v77;
      v253 = v76;
      v251 = v75;
      if (v79 <= v248)
      {
        break;
      }

      v256 = 0;
      v84 = 0.0;
LABEL_78:
      v85 = v84 < v82 || v251 == 0;
      if (v85)
      {
        v77 = v251;
      }

      else
      {
        v77 = v252;
      }

      if (v85)
      {
        v76 = v256;
      }

      else
      {
        v76 = v253;
      }

      if (v85)
      {
        v82 = v84;
      }

      v75 = v251 + 1;
      if (v251 + 1 == v249)
      {
        v176 = v77;
        v177 = v76;
        v20 = v254;
        v4 = v245;
        v22 = v243;
        v5 = v244;
        goto LABEL_177;
      }
    }

    v256 = 0;
    v86 = *&v255[8 * v75];
    v262 = (v254 + 48 * *v86);
    v260 = (v254 + 48 * v86[v83]);
    v87 = *(a1 + 37);
    v88 = *(a1 + 38);
    v89 = 2;
    if (v87 > 2)
    {
      v89 = *(a1 + 37);
    }

    v90 = ((v89 - 1) >> 1) + 1;
    v91 = v90 & 0x7FFFFFFFFFFFFFFCLL;
    v92 = 2 * (v90 & 0x7FFFFFFFFFFFFFFCLL);
    v93 = v87 + 2;
    v94 = 4 * *(a1 + 37);
    v95 = 0.0;
    v96 = *(a1 + 38);
    v97 = v79;
    v98 = 0.0;
    v84 = 0.0;
    v258 = v92;
    v259 = v90;
    while (1)
    {
      v99 = *v262;
      v100 = v262[2];
      v271[1] = v262[1];
      v271[2] = v100;
      v271[0] = v99;
      v101 = *v260;
      v102 = v260[2];
      v270[1] = v260[1];
      v270[2] = v102;
      v270[0] = v101;
      if (v83 >= 2)
      {
        break;
      }

LABEL_143:
      v149 = 0.0;
      v150 = v94;
      v151 = v93;
      do
      {
        if (v88)
        {
          v152 = *(v271 + v150);
          v153.i64[0] = v152;
          v153.i64[1] = SHIDWORD(v152);
          v154 = vcvtq_f64_s64(v153);
        }

        else
        {
          v154 = vcvtq_f64_f32(*(v271 + v150));
        }

        v149 = v149 + vsubq_f64(vdupq_laneq_s64(v154, 1), v154).f64[0];
        v151 -= 2;
        v150 -= 8;
      }

      while (v151 > 3);
      v155 = 0.0;
      v156 = v94;
      v157 = v93;
      do
      {
        if (v88)
        {
          v158 = *(v270 + v156);
          v159.i64[0] = v158;
          v159.i64[1] = SHIDWORD(v158);
          v160 = vcvtq_f64_s64(v159);
        }

        else
        {
          v160 = vcvtq_f64_f32(*(v270 + v156));
        }

        v155 = v155 + vsubq_f64(vdupq_laneq_s64(v160, 1), v160).f64[0];
        v157 -= 2;
        v156 -= 8;
      }

      while (v157 > 3);
      if (v87)
      {
        v161 = 0;
        v162 = 1.0;
        v163 = v271 + 3;
        v164 = v270 + 3;
        while (1)
        {
          if (v88)
          {
            v165 = *(v163 - 1);
            if (v165 <= *(v164 - 1))
            {
              v165 = *(v164 - 1);
            }

            v166 = v165;
            v167 = *v163;
            v168 = *v164;
            v169 = v167 < v168;
          }

          else
          {
            v170 = *(v163 - 1);
            v171 = *v163;
            v172 = *v164;
            if (v170 <= *(v164 - 1))
            {
              v170 = *(v164 - 1);
            }

            v166 = v170;
            v169 = v171 < v172;
            v167 = v171;
            v168 = v172;
          }

          if (!v169)
          {
            v167 = v168;
          }

          if (v167 < v166)
          {
            break;
          }

          v162 = v162 * (v167 - v166);
          v161 += 2;
          v164 += 2;
          v163 += 2;
          if (v161 >= v87)
          {
            goto LABEL_169;
          }
        }

        v162 = 0.0;
LABEL_169:
        v173 = v162 + 0.0;
      }

      else
      {
        v173 = 1.0;
      }

      v174 = sub_181A0BE54(a1, v271);
      v175 = v174 + sub_181A0BE54(a1, v270);
      v79 = v257;
      v83 = v263;
      v94 = 4 * v87;
      v81 = v254 + 12;
      v92 = v258;
      v90 = v259;
      v93 = v87 + 2;
      if (v97 == v257 || v173 < v98 || v173 == v98 && v175 < v95)
      {
        v98 = v173;
        v95 = v175;
        v256 = v97;
      }

      v84 = v84 + v149 + v155;
      if (v248 + 1 == ++v97)
      {
        goto LABEL_78;
      }
    }

    v103 = 1;
    while (2)
    {
      v104 = v86[v103];
      if (v103 >= v97)
      {
        if (v96)
        {
          if (v87 >= 7)
          {
            v121 = (v80 + 48 * v104);
            v122 = v91;
            v123 = (v270 + 8);
            do
            {
              v125 = *v121;
              v124 = v121[1];
              v121 += 2;
              v126 = vtrn2q_s32(vrev64q_s32(vminq_s32(v123[1], v124)), vmaxq_s32(v123[1], v124));
              *v123 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v123, v125)), vmaxq_s32(*v123, v125));
              v123[1] = v126;
              v123 += 2;
              v122 -= 4;
            }

            while (v122);
            v106 = v92;
            if (v90 == v91)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v106 = 0;
          }

          v127 = (v81 + 4 * v106 + 48 * v104);
          v128 = v270 + v106 + 3;
          do
          {
            v129 = *(v128 - 1);
            if (v129 >= *(v127 - 1))
            {
              v129 = *(v127 - 1);
            }

            *(v128 - 1) = v129;
            v130 = *v128;
            v132 = *v127;
            v127 += 2;
            v131 = v132;
            if (*v128 <= v132)
            {
              v130 = v131;
            }

            *v128 = v130;
            v128 += 2;
            v106 += 2;
          }

          while (v106 < v87);
LABEL_99:
          if (++v103 == v83)
          {
            goto LABEL_143;
          }

          continue;
        }

        if (v87 >= 7)
        {
          v141 = (v80 + 48 * v104);
          v142 = v91;
          v143 = v270 + 2;
          do
          {
            v274 = vld2q_f32(v143);
            v277 = vld2q_f32(v141);
            v141 += 8;
            v280.val[0] = vbslq_s8(vcgtq_f32(v277.val[0], v274.val[0]), v274.val[0], v277.val[0]);
            v280.val[1] = vbslq_s8(vcgtq_f32(v274.val[1], v277.val[1]), v274.val[1], v277.val[1]);
            vst2q_f32(v143, v280);
            v143 += 8;
            v142 -= 4;
          }

          while (v142);
          v108 = v92;
          if (v90 == v91)
          {
            break;
          }
        }

        else
        {
          v108 = 0;
        }

        v144 = (v80 + 4 * v108 + 48 * v104);
        v145 = (v270 + 4 * v108 + 8);
        do
        {
          v146 = *v144++;
          v147.i32[0] = *v145;
          v147.i32[1] = v146.i32[1];
          v148.i32[0] = v146.i32[0];
          v148.i32[1] = HIDWORD(*v145);
          *v145 = vbsl_s8(vcgt_f32(v148, v147), *v145, v146);
          ++v145;
          v108 += 2;
        }

        while (v108 < v87);
      }

      else
      {
        if (v88)
        {
          if (v87 >= 7)
          {
            v109 = (v80 + 48 * v104);
            v110 = v91;
            v111 = (v271 + 8);
            do
            {
              v113 = *v109;
              v112 = v109[1];
              v109 += 2;
              v114 = vtrn2q_s32(vrev64q_s32(vminq_s32(v111[1], v112)), vmaxq_s32(v111[1], v112));
              *v111 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v111, v113)), vmaxq_s32(*v111, v113));
              v111[1] = v114;
              v111 += 2;
              v110 -= 4;
            }

            while (v110);
            v105 = v92;
            v96 = v88;
            if (v90 != v91)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v105 = 0;
LABEL_114:
            v115 = (v81 + 4 * v105 + 48 * v104);
            v116 = v271 + v105 + 3;
            do
            {
              v117 = *(v116 - 1);
              if (v117 >= *(v115 - 1))
              {
                v117 = *(v115 - 1);
              }

              *(v116 - 1) = v117;
              v118 = *v116;
              v120 = *v115;
              v115 += 2;
              v119 = v120;
              if (*v116 <= v120)
              {
                v118 = v119;
              }

              *v116 = v118;
              v116 += 2;
              v105 += 2;
            }

            while (v105 < v87);
            v96 = v88;
          }

          goto LABEL_99;
        }

        if (v87 < 7)
        {
          v107 = 0;
          goto LABEL_134;
        }

        v133 = (v80 + 48 * v104);
        v134 = v91;
        v135 = v271 + 2;
        do
        {
          v273 = vld2q_f32(v135);
          v276 = vld2q_f32(v133);
          v133 += 8;
          v279.val[0] = vbslq_s8(vcgtq_f32(v276.val[0], v273.val[0]), v273.val[0], v276.val[0]);
          v279.val[1] = vbslq_s8(vcgtq_f32(v273.val[1], v276.val[1]), v273.val[1], v276.val[1]);
          vst2q_f32(v135, v279);
          v135 += 8;
          v134 -= 4;
        }

        while (v134);
        v107 = v92;
        if (v90 != v91)
        {
LABEL_134:
          v136 = (v80 + 4 * v107 + 48 * v104);
          v137 = (v271 + 4 * v107 + 8);
          do
          {
            v138 = *v136++;
            v139.i32[0] = *v137;
            v139.i32[1] = v138.i32[1];
            v140.i32[0] = v138.i32[0];
            v140.i32[1] = HIDWORD(*v137);
            *v137 = vbsl_s8(vcgt_f32(v140, v139), *v137, v138);
            ++v137;
            v107 += 2;
          }

          while (v107 < v87);
        }
      }

      break;
    }

    v96 = 0;
    goto LABEL_99;
  }

  v176 = 0;
  v177 = 0;
  v20 = v254;
  v4 = v245;
  v22 = v243;
  v5 = v244;
LABEL_179:
  v178 = 0;
  v179 = v255;
  v180 = *&v255[8 * v176];
  v181 = (v20 + 48 * *v180);
  v182 = *v181;
  v183 = v181[2];
  v268 = v181[1];
  v269 = v183;
  v267 = v182;
  v184 = (v20 + 48 * v180[v177]);
  v185 = *v184;
  v186 = v184[2];
  v265 = v184[1];
  v266 = v186;
  v264 = v185;
  v21 = v250;
  while (2)
  {
    if (v178 >= v177)
    {
      v187 = v22;
    }

    else
    {
      v187 = v250;
    }

    v188 = *(*&v255[8 * v176] + 4 * v178);
    v189 = (v20 + 48 * v188);
    v190 = *(a1 + 39);
    v191 = v187[3];
    v192 = __rev16(*(v191 + 2));
    if (v192 < (*(a1 + 32) - 4) / v190)
    {
      v193 = v191 + (v192 * v190);
      *(v193 + 4) = bswap64(*v189);
      if (*(a1 + 37))
      {
        v194 = 0;
        v195 = (v193 + 12);
        do
        {
          *v195++ = bswap32(*(v189 + v194 + 2));
          ++v194;
        }

        while (v194 < *(a1 + 37));
      }

      *(v187[3] + 2) = bswap32(v192 + 1) >> 16;
      *(v187 + 5) = 1;
    }

    if (v178 >= v177)
    {
      v196 = &v264;
    }

    else
    {
      v196 = &v267;
    }

    v197 = v196 | 8;
    v198 = v189 + 1;
    v199 = *(a1 + 37);
    if (v199 <= 2)
    {
      v200 = 2;
    }

    else
    {
      v200 = *(a1 + 37);
    }

    v201 = ((v200 - 1) >> 1) + 1;
    if (!*(a1 + 38))
    {
      if (v199 >= 7)
      {
        v203 = 2 * (v201 & 0x7FFFFFFFFFFFFFFCLL);
        v212 = v201 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v275 = vld2q_f32(v197);
          v278 = vld2q_f32(v198);
          v198 += 4;
          v281.val[0] = vbslq_s8(vcgtq_f32(v278.val[0], v275.val[0]), v275.val[0], v278.val[0]);
          v281.val[1] = vbslq_s8(vcgtq_f32(v275.val[1], v278.val[1]), v275.val[1], v278.val[1]);
          vst2q_f32(v197, v281);
          v197 += 32;
          v212 -= 4;
        }

        while (v212);
        if (v201 == (v201 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_180;
        }
      }

      else
      {
        v203 = 0;
      }

      v188 = v20 + 8 + 4 * v203 + 48 * v188;
      v196 = (v196 + 4 * v203 + 8);
      do
      {
        v213 = *v188;
        v188 += 8;
        v214.i32[0] = *v196;
        v214.i32[1] = v213.i32[1];
        v215.i32[0] = v213.i32[0];
        v215.i32[1] = HIDWORD(*v196);
        *v196 = vbsl_s8(vcgt_f32(v215, v214), *v196, v213);
        ++v196;
        v203 += 2;
      }

      while (v203 < v199);
      goto LABEL_180;
    }

    if (v199 > 6)
    {
      v202 = 2 * (v201 & 0x7FFFFFFFFFFFFFFCLL);
      v204 = v201 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v206 = *v198;
        v205 = *(v198 + 1);
        v198 += 4;
        v207 = vtrn2q_s32(vrev64q_s32(vminq_s32(*(v197 + 16), v205)), vmaxq_s32(*(v197 + 16), v205));
        *v197 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v197, v206)), vmaxq_s32(*v197, v206));
        *(v197 + 16) = v207;
        v197 += 32;
        v204 -= 4;
      }

      while (v204);
      if (v201 != (v201 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_203;
      }
    }

    else
    {
      v202 = 0;
LABEL_203:
      v188 = v20 + 12 + 4 * v202 + 48 * v188;
      v196 = (v196 + 4 * v202 + 12);
      do
      {
        v208 = v196[-1].i32[1];
        if (v208 >= *(v188 - 4))
        {
          v208 = *(v188 - 4);
        }

        v196[-1].i32[1] = v208;
        v209 = v196->i32[0];
        v211 = *v188;
        v188 += 8;
        v210 = v211;
        if (v196->i32[0] <= v211)
        {
          v209 = v210;
        }

        v196->i32[0] = v209;
        ++v196;
        v202 += 2;
      }

      while (v202 < v199);
    }

LABEL_180:
    if (++v178 != v61)
    {
      continue;
    }

    break;
  }

  v216 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_221;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v255);
  --qword_1ED456A90;
  off_1ED452EB0(v255);
  if (xmmword_1ED456AF0)
  {
    v179 = xmmword_1ED456AF0;
    v216 = &xmmword_1ED452F28;
LABEL_221:
    (*v216)(v179, v188, v196);
  }

  v217 = sub_181A0818C(a1, v22);
  if (v217)
  {
LABEL_223:
    v23 = v217;
    v24 = 0;
    goto LABEL_55;
  }

  v218 = v250[1];
  if (!v218)
  {
    v217 = sub_181A0818C(a1, v250);
    if (v217)
    {
      goto LABEL_223;
    }

    v218 = v250[1];
  }

  *&v264 = *(v22 + 8);
  *&v267 = v218;
  v219 = *v250;
  if (*(v246 + 8) != 1)
  {
    LODWORD(v271[0]) = 0;
    if (v219)
    {
      v224 = sub_181A0862C(a1, v219, v218, v271);
      if (v224)
      {
        goto LABEL_235;
      }

      v225 = v271[0];
    }

    else
    {
      v225 = -1;
    }

    sub_181A0BE00(a1, v219, &v267, v225);
    v224 = sub_181A0BF58(a1, v219, &v267);
    if (!v224)
    {
      v220 = v22;
      v221 = v5;
      v222 = (v4 + 1);
      goto LABEL_237;
    }

LABEL_235:
    v23 = v224;
    v24 = 0;
    goto LABEL_54;
  }

  v220 = v22;
  v221 = v5;
  v222 = (v4 + 1);
  v223 = sub_181A0A1B4(a1, v219, &v267, v222);
  if (v223)
  {
    v23 = v223;
    v24 = 0;
    v22 = v220;
    goto LABEL_54;
  }

LABEL_237:
  v226 = sub_181A0A1B4(a1, *v220, &v264, v222);
  v21 = v250;
  if (v226)
  {
    v23 = v226;
    v24 = 0;
    v22 = v220;
    goto LABEL_55;
  }

  v227 = v220;
  v228 = v220[3];
  if (__rev16(*(v228 + 2)))
  {
    v229 = 0;
    v230 = 0;
    v231 = v4;
    if (v4)
    {
      v232 = sub_181A0C420;
    }

    else
    {
      v232 = sub_181A0C320;
    }

    do
    {
      v233 = (v228 + v229 * *(a1 + 39));
      v234 = ((v233[4] << 56) | (v233[5] << 48) | (v233[6] << 40) | (v233[7] << 32) | (v233[8] << 24) | (v233[9] << 16) | (v233[10] << 8)) + v233[11];
      if (v231 >= 1)
      {
        for (i = *(a1 + 192 + 8 * ((((v233[8] << 24) | (v233[9] << 16) | (v233[10] << 8)) + v233[11]) % 0x61)); i; i = i[4])
        {
          if (i[1] == v234)
          {
            break;
          }
        }

        v236 = v227;
        do
        {
          if (v236 == i)
          {
            v24 = 0;
            v23 = 267;
            v22 = v227;
            goto LABEL_54;
          }

          v236 = *v236;
        }

        while (v236);
        if (i)
        {
          sub_181A08010(a1, *i);
          ++*(v227 + 16);
          *i = v227;
        }
      }

      v237 = v232(a1, v234, *(v227 + 8));
      if (v237)
      {
        v23 = v237;
        v24 = 0;
        v22 = v227;
        goto LABEL_54;
      }

      if (v234 == *v221)
      {
        v230 = 1;
      }

      ++v229;
      v228 = *(v227 + 24);
    }

    while (v229 < bswap32(*(v228 + 2)) >> 16);
    v4 = v231;
    v21 = v250;
    if (*(v246 + 8) == 1)
    {
      goto LABEL_261;
    }

    if (!v230)
    {
LABEL_266:
      v241 = sub_181A0C520(a1, *v221, v21, v4);
      if (v241)
      {
        goto LABEL_267;
      }
    }

LABEL_268:
    v242 = sub_181A08010(a1, v227);
    if (v242)
    {
      v23 = v242;
      v24 = 0;
    }

    else
    {
      v23 = sub_181A08010(a1, v21);
      v24 = 0;
      v21 = 0;
    }

    v22 = 0;
  }

  else
  {
    if (*(v246 + 8) != 1)
    {
      goto LABEL_266;
    }

LABEL_261:
    v238 = v21[3];
    if (!__rev16(*(v238 + 2)))
    {
      goto LABEL_268;
    }

    v239 = 0;
    while (1)
    {
      v240 = sub_181A04250((v238 + v239 * *(a1 + 39) + 4));
      v241 = sub_181A0C520(a1, v240, v21, v4);
      if (v241)
      {
        break;
      }

      ++v239;
      v238 = v21[3];
      if (v239 >= bswap32(*(v238 + 2)) >> 16)
      {
        goto LABEL_268;
      }
    }

LABEL_267:
    v23 = v241;
    v24 = 0;
    v22 = v227;
  }

LABEL_55:
  sub_181A08010(a1, v22);
  sub_181A08010(a1, v21);
  if ((v24 & 1) == 0)
  {
    v52 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_61;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v52 = &xmmword_1ED452F28;
LABEL_61:
      (*v52)(v20);
    }
  }

  return v23;
}

uint64_t sub_181A0B5A4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  while (1)
  {
    v9 = *(v8 + 1);
    if (v9 == 1 || *v8)
    {
      break;
    }

    v10 = *(a1 + 160);
    if (!sub_1818DF6EC(v10, 0))
    {
      v11 = v10[16];
      if ((*(v11 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v11, v9);
      }

      else
      {
        *v11 = v9;
        *(v11 + 20) = 4;
      }

      v12 = *(*v10 + 24);
      if (v12)
      {
        xmmword_1ED452F28(v12);
      }
    }

    if (sqlite3_step(*(a1 + 160)) != 100)
    {
      goto LABEL_16;
    }

    v13 = sqlite3_column_int64(*(a1 + 160), 0);
    if (a2)
    {
      v14 = a2;
      while (v14[1] != v13)
      {
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      v15 = 0;
      goto LABEL_17;
    }

LABEL_15:
    v15 = sub_181A086B4(a1, v13, 0, v8);
LABEL_17:
    LODWORD(result) = sqlite3_reset(*(a1 + 160));
    if (result)
    {
      result = result;
    }

    else
    {
      result = v15;
    }

    if (result)
    {
      return result;
    }

    v8 = *v8;
    if (!v8)
    {
      return 267;
    }
  }

  v17 = *(a2 + 24);
  v18 = (v17 + *(a1 + 39) * a3 + 4);
  memmove(v18, &v18[*(a1 + 39)], *(a1 + 39) * (~a3 + (bswap32(*(v17 + 2)) >> 16)));
  *(*(a2 + 24) + 2) = bswap32((*(*(a2 + 24) + 3) | (*(*(a2 + 24) + 2) << 8)) - 1) >> 16;
  *(a2 + 20) = 1;
  if (!*a2)
  {
    return 0;
  }

  v25 = 1431655766 * ((*(a1 + 32) - 4) / *(a1 + 39));
  if ((HIDWORD(v25) + (v25 >> 63)) <= (bswap32(*(*(a2 + 24) + 2)) >> 16))
  {

    return sub_181A0BA34(a1, a2, v19, v20, v21, v22, v23, v24);
  }

  else
  {

    return sub_181A0B7DC(a1, a2, a4);
  }
}

uint64_t sub_181A0B7DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 + 24);
    v8 = __rev16(*(v7 + 2));
    if (!v8)
    {
LABEL_6:
      sub_181A08010(a1, 0);
      return 267;
    }

    v9 = 0;
    v10 = (v7 + 5);
    while (((*(v10 - 1) << 56) | (*v10 << 48) | (v10[1] << 40) | (v10[2] << 32) | (v10[3] << 24) | (v10[4] << 16) | (v10[5] << 8)) + v10[6] != *(a2 + 8))
    {
      v10 += *(a1 + 39);
      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  *a2 = 0;
  v12 = sub_181A0B5A4(a1, v6, v9, (a3 + 1));
  LODWORD(result) = sub_181A08010(a1, v6);
  if (v12)
  {
    result = v12;
  }

  else
  {
    result = result;
  }

  if (!result)
  {
    v13 = *(a1 + 128);
    v14 = *(a2 + 8);
    if (!sub_1818DF6EC(v13, 0))
    {
      v15 = v13[16];
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v15, v14);
      }

      else
      {
        *v15 = v14;
        *(v15 + 20) = 4;
      }

      v16 = *(*v13 + 24);
      if (v16)
      {
        xmmword_1ED452F28(v16);
      }
    }

    sqlite3_step(*(a1 + 128));
    result = sqlite3_reset(*(a1 + 128));
    if (!result)
    {
      v17 = *(a1 + 176);
      v18 = *(a2 + 8);
      if (!sub_1818DF6EC(v17, 0))
      {
        v19 = v17[16];
        if ((*(v19 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v19, v18);
        }

        else
        {
          *v19 = v18;
          *(v19 + 20) = 4;
        }

        v20 = *(*v17 + 24);
        if (v20)
        {
          xmmword_1ED452F28(v20);
        }
      }

      sqlite3_step(*(a1 + 176));
      result = sqlite3_reset(*(a1 + 176));
      if (!result)
      {
        v21 = *(a2 + 8);
        if (v21)
        {
          v22 = (a1 + 8 * (v21 % 0x61) + 192);
          do
          {
            v23 = v22;
            v24 = *v22;
            v22 = (*v22 + 32);
          }

          while (v24 != a2);
          *v23 = *(a2 + 32);
        }

        result = 0;
        *(a2 + 8) = a3;
        *(a2 + 32) = *(a1 + 104);
        ++*(a2 + 16);
        *(a1 + 104) = a2;
      }
    }
  }

  return result;
}

uint64_t sub_181A0BA34(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5, char *a6, _OWORD *a7, uint64_t i)
{
  v9 = *a2;
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = a2[3];
  v12 = v11[2];
  v13 = v11[3];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v14 = a1[39];
  v60 = ((v11[4] << 56) | (v11[5] << 48) | (v11[6] << 40) | (v11[7] << 32) | (v11[8] << 24) | (v11[9] << 16) | (v11[10] << 8)) + v11[11];
  v15 = (v11 + 12);
  v16 = a1[37];
  do
  {
    v17 = &v60 + 4 * v10;
    *(v17 + 2) = bswap32(*v15);
    v18 = bswap32(v15[1]);
    *(v17 + 3) = v18;
    v15 += 2;
    v10 += 2;
  }

  while (v10 < v16);
  v19 = v13 | (v12 << 8);
  if (v19 >= 2)
  {
    v20 = a1[38];
    v21 = 2;
    if (v16 > 2)
    {
      v21 = v16;
    }

    v22 = ((v21 - 1) >> 1) + 1;
    v17 = (v22 & 0x7FFFFFFFFFFFFFFCLL);
    v18 = 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL);
    a5 = &v57 + 4;
    a6 = v61 + 4;
    a7 = v61;
    for (i = 1; i != v19; ++i)
    {
      v23 = 0;
      v59 = 0;
      v57 = 0uLL;
      v58 = 0uLL;
      v24 = &v11[i * v14];
      v56[0] = ((v24[4] << 56) | (v24[5] << 48) | (v24[6] << 40) | (v24[7] << 32) | (v24[8] << 24) | (v24[9] << 16) | (v24[10] << 8)) + v24[11];
      v25 = (v24 + 12);
      do
      {
        v26 = &v56[v23 / 2];
        *(v26 + 2) = bswap32(*v25);
        *(v26 + 3) = bswap32(v25[1]);
        v25 += 2;
        v23 += 2;
      }

      while (v23 < v16);
      if (v20)
      {
        v27 = v22 & 0x7FFFFFFFFFFFFFFCLL;
        v28 = &v57;
        v29 = v61;
        if (v16 < 7)
        {
          v30 = 0;
LABEL_16:
          v34 = &v57 + v30 + 1;
          v35 = v61 + v30 + 1;
          do
          {
            v36 = *(v35 - 1);
            if (v36 >= *(v34 - 1))
            {
              v36 = *(v34 - 1);
            }

            v37 = *v35;
            if (*v35 <= *v34)
            {
              v37 = *v34;
            }

            *(v35 - 1) = v36;
            *v35 = v37;
            v30 += 2;
            v34 += 2;
            v35 += 2;
          }

          while (v30 < v16);
          continue;
        }

        do
        {
          v32 = *v28;
          v31 = v28[1];
          v28 += 2;
          v33 = vtrn2q_s32(vrev64q_s32(vminq_s32(v29[1], v31)), vmaxq_s32(v29[1], v31));
          *v29 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v29, v32)), vmaxq_s32(*v29, v32));
          v29[1] = v33;
          v29 += 2;
          v27 -= 4;
        }

        while (v27);
        v30 = 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL);
        if (v22 != v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v16 >= 7)
        {
          v39 = v22 & 0x7FFFFFFFFFFFFFFCLL;
          v40 = &v57;
          v41 = v61;
          do
          {
            v63 = vld2q_f32(v41);
            v64 = vld2q_f32(v40);
            v40 += 8;
            v65.val[0] = vbslq_s8(vcgtq_f32(v64.val[0], v63.val[0]), v63.val[0], v64.val[0]);
            v65.val[1] = vbslq_s8(vcgtq_f32(v63.val[1], v64.val[1]), v63.val[1], v64.val[1]);
            vst2q_f32(v41, v65);
            v41 += 8;
            v39 -= 4;
          }

          while (v39);
          v38 = 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL);
          if (v22 == v17)
          {
            continue;
          }
        }

        else
        {
          v38 = 0;
        }

        v42 = (&v57 + 4 * v38);
        v43 = (v61 + 4 * v38);
        do
        {
          v44 = *v42++;
          v45.i32[0] = *v43;
          v45.i32[1] = v44.i32[1];
          v46.i32[0] = v44.i32[0];
          v46.i32[1] = HIDWORD(*v43);
          *v43 = vbsl_s8(vcgt_f32(v46, v45), *v43, v44);
          ++v43;
          v38 += 2;
        }

        while (v38 < v16);
      }
    }
  }

  v47 = *(v9 + 24);
  v48 = __rev16(*(v47 + 2));
  if (!v48)
  {
    return 267;
  }

  v49 = 0;
  v50 = a2[1];
  v51 = (v47 + 5);
  while (((*(v51 - 1) << 56) | (*v51 << 48) | (v51[1] << 40) | (v51[2] << 32) | (v51[3] << 24) | (v51[4] << 16) | (v51[5] << 8)) + v51[6] != v50)
  {
    v51 += v14;
    v49 += v14 << 32;
    if (!--v48)
    {
      return 267;
    }
  }

  v53 = v47 + (v49 >> 32);
  *(v53 + 4) = bswap64(v50);
  if (a1[37])
  {
    v54 = 0;
    v55 = (v53 + 12);
    do
    {
      *v55++ = bswap32(*(v61 + v54++));
    }

    while (v54 < a1[37]);
  }

  *(v9 + 20) = 1;
  return sub_181A0BA34(a1, v9, v17, v18, a5, a6, a7, i, v56[0], v57, *(&v57 + 1), v58);
}

uint64_t sub_181A0BE00(uint64_t result, uint64_t a2, unint64_t *a3, int a4)
{
  v4 = *(a2 + 24) + *(result + 39) * a4;
  *(v4 + 4) = bswap64(*a3);
  if (*(result + 37))
  {
    v5 = 0;
    v6 = (v4 + 12);
    do
    {
      *v6++ = bswap32(*(a3 + v5 + 2));
      ++v5;
    }

    while (v5 < *(result + 37));
  }

  *(a2 + 20) = 1;
  return result;
}

double sub_181A0BE54(uint64_t a1, int *a2)
{
  v2 = *(a1 + 36);
  v3 = 1.0;
  if (*(a1 + 38))
  {
    if (*(a1 + 36) > 3u)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          return v3 * (a2[3] - a2[2]);
        }

        v3 = (a2[11] - a2[10]);
      }

      v3 = v3 * (a2[9] - a2[8]);
    }

    else
    {
      if (v2 == 2)
      {
LABEL_15:
        v3 = v3 * (a2[5] - a2[4]);
        return v3 * (a2[3] - a2[2]);
      }

      if (v2 != 3)
      {
        return v3 * (a2[3] - a2[2]);
      }
    }

    v3 = v3 * (a2[7] - a2[6]);
    goto LABEL_15;
  }

  if (*(a1 + 36) <= 3u)
  {
    if (v2 == 2)
    {
LABEL_22:
      v3 = v3 * (*(a2 + 5) - *(a2 + 4));
      return v3 * (*(a2 + 3) - *(a2 + 2));
    }

    if (v2 != 3)
    {
      return v3 * (*(a2 + 3) - *(a2 + 2));
    }

LABEL_21:
    v3 = v3 * (*(a2 + 7) - *(a2 + 6));
    goto LABEL_22;
  }

  if (v2 == 4)
  {
LABEL_20:
    v3 = v3 * (*(a2 + 9) - *(a2 + 8));
    goto LABEL_21;
  }

  if (v2 == 5)
  {
    v3 = (*(a2 + 11) - *(a2 + 10));
    goto LABEL_20;
  }

  return v3 * (*(a2 + 3) - *(a2 + 2));
}

uint64_t sub_181A0BF58(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = 0;
    v5 = (a3 + 8);
    v6 = (a3 + 12);
    while (1)
    {
      memset(v52, 0, sizeof(v52));
      if (v4 == 100)
      {
        return 267;
      }

      v7 = a2;
      a2 = v3;
      if (*v7)
      {
        v8 = *(*v7 + 24);
        v9 = __rev16(*(v8 + 2));
        if (!v9)
        {
          return 267;
        }

        v10 = 0;
        v11 = v7[1];
        v12 = a1[39];
        v13 = v9 << 32;
        v14 = (v8 + 5);
        while (((*(v14 - 1) << 56) | (*v14 << 48) | (v14[1] << 40) | (v14[2] << 32) | (v14[3] << 24) | (v14[4] << 16) | (v14[5] << 8)) + v14[6] != v11)
        {
          v14 += v12;
          v10 += 0x100000000;
          if (v13 == v10)
          {
            return 267;
          }
        }
      }

      else
      {
        v12 = a1[39];
        v10 = 0xFFFFFFFF00000000;
      }

      v15 = 0;
      ++v4;
      v16 = (a2[3] + ((v10 * v12) >> 32));
      *&v52[0] = ((v16[4] << 56) | (v16[5] << 48) | (v16[6] << 40) | (v16[7] << 32) | (v16[8] << 24) | (v16[9] << 16) | (v16[10] << 8)) + v16[11];
      v17 = v16 + 12;
      v18 = a1[37];
      v19 = (v16 + 12);
      do
      {
        v20 = v52 + 4 * v15;
        *(v20 + 2) = bswap32(*v19);
        *(v20 + 3) = bswap32(v19[1]);
        v19 += 2;
        v15 += 2;
      }

      while (v15 < v18);
      if (a1[38] == 1)
      {
        if (v18)
        {
          v21 = v52 + 3;
          v22 = v6;
          v23 = 2;
          while (*(v22 - 1) >= *(v21 - 1) && *v22 <= *v21)
          {
            v22 += 2;
            v21 += 2;
            v24 = v23 >= v18;
            v23 += 2;
            if (v24)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_29;
        }

LABEL_27:
        v3 = *a2;
        if (!*a2)
        {
          return 0;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_27;
        }

        v25 = v52 + 3;
        v26 = v6;
        v27 = 2;
        while (*(v26 - 1) >= *(v25 - 1) && *v26 <= *v25)
        {
          v26 += 2;
          v25 += 2;
          v24 = v27 >= v18;
          v27 += 2;
          if (v24)
          {
            goto LABEL_27;
          }
        }

LABEL_29:
        if (v18 <= 2)
        {
          v28 = 2;
        }

        else
        {
          v28 = v18;
        }

        v29 = ((v28 - 1) >> 1) + 1;
        if (a1[38])
        {
          if (v18 <= 6)
          {
            v30 = 0;
LABEL_40:
            v38 = &v6[v30];
            v39 = v52 + v30 + 3;
            do
            {
              v40 = *(v39 - 1);
              if (v40 >= *(v38 - 1))
              {
                v40 = *(v38 - 1);
              }

              v41 = *v39;
              if (*v39 <= *v38)
              {
                v41 = *v38;
              }

              *(v39 - 1) = v40;
              *v39 = v41;
              v30 += 2;
              v38 += 2;
              v39 += 2;
            }

            while (v30 < v18);
            goto LABEL_52;
          }

          v30 = 2 * (v29 & 0x7FFFFFFFFFFFFFFCLL);
          v32 = v29 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = v5;
          v34 = (v52 + 8);
          do
          {
            v36 = *v33;
            v35 = v33[1];
            v33 += 2;
            v37 = vtrn2q_s32(vrev64q_s32(vminq_s32(v34[1], v35)), vmaxq_s32(v34[1], v35));
            *v34 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v34, v36)), vmaxq_s32(*v34, v36));
            v34[1] = v37;
            v34 += 2;
            v32 -= 4;
          }

          while (v32);
          if (v29 != (v29 & 0x7FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v18 >= 7)
          {
            v31 = 2 * (v29 & 0x7FFFFFFFFFFFFFFCLL);
            v42 = v29 & 0x7FFFFFFFFFFFFFFCLL;
            v43 = v5;
            v44 = v52 + 2;
            do
            {
              v53 = vld2q_f32(v44);
              v54 = vld2q_f32(v43);
              v43 += 8;
              v55.val[0] = vbslq_s8(vcgtq_f32(v54.val[0], v53.val[0]), v53.val[0], v54.val[0]);
              v55.val[1] = vbslq_s8(vcgtq_f32(v53.val[1], v54.val[1]), v53.val[1], v54.val[1]);
              vst2q_f32(v44, v55);
              v44 += 8;
              v42 -= 4;
            }

            while (v42);
            if (v29 == (v29 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v31 = 0;
          }

          v45 = (v5 + 4 * v31);
          v46 = (v52 + 4 * v31 + 8);
          do
          {
            v47 = *v45++;
            v48.i32[0] = *v46;
            v48.i32[1] = v47.i32[1];
            v49.i32[0] = v47.i32[0];
            v49.i32[1] = HIDWORD(*v46);
            *v46 = vbsl_s8(vcgt_f32(v49, v48), *v46, v47);
            ++v46;
            v31 += 2;
          }

          while (v31 < v18);
        }

LABEL_52:
        *(v16 + 4) = bswap64(*&v52[0]);
        if (a1[37])
        {
          v50 = 0;
          do
          {
            *v17++ = bswap32(*(v52 + v50 + 2));
            ++v50;
          }

          while (v50 < a1[37]);
        }

        *(a2 + 5) = 1;
        v3 = *a2;
        if (!*a2)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_181A0C320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 144);
  if (!sub_1818DF6EC(v6, 0))
  {
    v7 = v6[16];
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, a2);
    }

    else
    {
      *v7 = a2;
      *(v7 + 20) = 4;
    }

    v8 = *(*v6 + 24);
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  v9 = *(a1 + 144);
  if (!sub_1818DF6EC(v9, 1u))
  {
    v10 = v9[16];
    if ((*(v10 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v10 + 64, a3);
    }

    else
    {
      *(v10 + 64) = a3;
      *(v10 + 84) = 4;
    }

    v11 = *(*v9 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  sqlite3_step(*(a1 + 144));
  v12 = *(a1 + 144);

  return sqlite3_reset(v12);
}

uint64_t sub_181A0C420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 168);
  if (!sub_1818DF6EC(v6, 0))
  {
    v7 = v6[16];
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, a2);
    }

    else
    {
      *v7 = a2;
      *(v7 + 20) = 4;
    }

    v8 = *(*v6 + 24);
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  v9 = *(a1 + 168);
  if (!sub_1818DF6EC(v9, 1u))
  {
    v10 = v9[16];
    if ((*(v10 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v10 + 64, a3);
    }

    else
    {
      *(v10 + 64) = a3;
      *(v10 + 84) = 4;
    }

    v11 = *(*v9 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  sqlite3_step(*(a1 + 168));
  v12 = *(a1 + 168);

  return sqlite3_reset(v12);
}

uint64_t sub_181A0C520(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (a4)
  {
    v4 = sub_181A0C420;
  }

  else
  {
    v4 = sub_181A0C320;
  }

  if (a4 >= 1)
  {
    for (i = *(a1 + 8 * (a2 % 0x61) + 192); i; i = i[4])
    {
      if (i[1] == a2)
      {
        break;
      }
    }

    if (a3)
    {
      v6 = a3;
      do
      {
        if (v6 == i)
        {
          return 267;
        }

        v6 = *v6;
      }

      while (v6);
      if (!i)
      {
        goto LABEL_18;
      }

      v12 = v4;
      v7 = a2;
      v8 = a1;
      v9 = a3;
      sub_181A08010(a1, *i);
      a3 = v9;
      ++*(v9 + 4);
      goto LABEL_17;
    }

    if (i)
    {
      v12 = v4;
      v7 = a2;
      v8 = a1;
      sub_181A08010(a1, *i);
      a3 = 0;
LABEL_17:
      *i = a3;
      a2 = v7;
      a1 = v8;
      v4 = v12;
    }
  }

LABEL_18:
  v10 = a3[1];

  return v4(a1, a2, v10);
}

unsigned __int8 *sub_181A0C668(unsigned __int8 *result, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3 >= 2)
  {
    v10 = a3 >> 1;
    v11 = a3 - (a3 >> 1);
    v12 = 4 * (a3 >> 1);
    v13 = &a2[v12];
    v14 = result;
    (sub_181A0C668)();
    sub_181A0C668(v14, v13, v11, a4, a5, a6);
    result = memcpy(a6, a2, v12);
    v15 = 0;
    v16 = 0;
    v17 = v14[38];
    v18 = 8 * a4;
    while (1)
    {
      v19 = *(a6 + v15);
      v20 = (a5 + 48 * v19 + v18);
      v21 = *&v13[4 * v16];
      v22 = (a5 + 48 * v21 + v18);
      if (v17)
      {
        v23 = v20[1];
        v24 = v22[1];
        v25.i64[0] = v23.i32[0];
        v25.i64[1] = v23.i32[1];
        v26 = vcvtq_f64_s64(v25);
        v25.i64[0] = v24.i32[0];
        v25.i64[1] = v24.i32[1];
        v27 = vcvtq_f64_s64(v25);
        if (v15 == v10)
        {
          goto LABEL_13;
        }

LABEL_7:
        if (v16 != v11 && v26.f64[0] >= v27.f64[0] && (v26.f64[0] != v27.f64[0] || v26.f64[1] >= v27.f64[1]))
        {
          goto LABEL_13;
        }

        *&a2[4 * v15 + 4 * v16] = v19;
        if (++v15 >= v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v26 = vcvtq_f64_f32(v20[1]);
        v27 = vcvtq_f64_f32(v22[1]);
        if (v15 != v10)
        {
          goto LABEL_7;
        }

LABEL_13:
        *&a2[4 * v15 + 4 * v16++] = v21;
        if (v15 >= v10)
        {
LABEL_16:
          if (v16 >= v11)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_181A0C7CC(sqlite3 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, char **a6)
{
  if (a3 < 4)
  {
    v12 = 0;
  }

  else
  {
    v10 = *(a4 + 24);
    v16 = v10;
    v17 = 0;
    if (v10)
    {
      v11 = strlen(v10) & 0x3FFFFFFF;
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v17) = v11;
    v13 = sub_18195D514(a1, &v16);
    if (v13 < 0)
    {
      *a6 = sqlite3_mprintf("no such database: %s", *(a4 + 24));
      return 1;
    }

    v12 = v13;
  }

  sqlite3_vtab_config(a1, 3);
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x( name       TEXT, path       TEXT, pageno     INTEGER, pagetype   TEXT, ncell      INTEGER, payload    INTEGER, unused     INTEGER, mx_payload INTEGER, pgoffset   INTEGER, pgsize     INTEGER, schema     TEXT HIDDEN, aggregate  BOOLEAN HIDDEN)");
  if (result)
  {
    v15 = 0;
  }

  else
  {
    if (sqlite3_initialize())
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_181902484(40, 0x1070040280257AFLL);
      if (v15)
      {
        result = 0;
        *v15 = 0u;
        *(v15 + 16) = 0u;
        *(v15 + 24) = a1;
        *(v15 + 32) = 0;
        *(v15 + 32) = v12;
        goto LABEL_16;
      }
    }

    result = 7;
  }

LABEL_16:
  *a5 = v15;
  return result;
}

uint64_t sub_181A0C8E8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    goto LABEL_22;
  }

  v3 = 0;
  v4 = (*(a2 + 1) + 5);
  v5 = -1;
  v6 = -1;
  v7 = -1;
  do
  {
    if (*(v4 - 1) == 2)
    {
      if (!*v4)
      {
        return 19;
      }

      v8 = *(v4 - 5);
      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = v3;
      }

      if (v8 == 10)
      {
        v10 = v3;
      }

      else
      {
        v10 = v7;
      }

      if (v8 == 10)
      {
        v9 = v6;
      }

      if (v8 == 11)
      {
        v5 = v3;
      }

      else
      {
        v7 = v10;
        v6 = v9;
      }
    }

    ++v3;
    v4 += 12;
  }

  while (v2 != v3);
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *(a2 + 4) + 8 * v7;
    v12 = 1;
    *v11 = 1;
    *(v11 + 4) = 1;
    a2[10] |= 1u;
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v12 = 0;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_19:
    *(*(a2 + 4) + 8 * v6) = ++v12;
    a2[10] |= 2u;
  }

LABEL_20:
  if ((v5 & 0x80000000) == 0)
  {
    *(*(a2 + 4) + 8 * v5) = v12 + 1;
    a2[10] |= 4u;
  }

LABEL_22:
  *(a2 + 8) = 0x3FF0000000000000;
  v13 = a2[4];
  if (v13 == 2)
  {
    v15 = *(a2 + 3);
    if (*v15 || *(v15 + 4) || *(v15 + 8) != 1 || *(v15 + 12))
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v13 != 1)
    {
      goto LABEL_31;
    }

    v14 = *(a2 + 3);
    if (*v14 || *(v14 + 4))
    {
      goto LABEL_31;
    }
  }

  a2[15] = 1;
  a2[10] |= 8u;
LABEL_31:
  result = 0;
  a2[20] |= 2u;
  return result;
}

uint64_t sub_181A0CA5C(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
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
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A0CB14(uint64_t a1, void *a2)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v5 = sub_181902484(2152, 0x1030040E8075C3CLL);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  bzero(v5, 0x868uLL);
  result = 0;
  *v6 = a1;
  v6[5] = *(a1 + 32);
  *a2 = v6;
  return result;
}

uint64_t sub_181A0CB8C(uint64_t a1)
{
  for (i = 0; i != 2048; i += 64)
  {
    v3 = a1 + i;
    v4 = *(a1 + i + 32);
    sub_181A0E424(a1 + i + 24);
    v5 = *(a1 + i + 48);
    if (v5)
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
          goto LABEL_11;
        }

        v6 = &xmmword_1ED452F28;
      }

      (*v6)(v5);
    }

LABEL_11:
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 32) = v4;
    if (v4)
    {
      v7 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_2;
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
        v7 = &xmmword_1ED452F28;
LABEL_2:
        (*v7)(v4);
      }
    }

    *(v3 + 32) = 0;
  }

  sqlite3_reset(*(a1 + 8));
  *(a1 + 2072) = 0;
  v8 = *(a1 + 2088);
  if (v8)
  {
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_23;
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
      v9 = &xmmword_1ED452F28;
LABEL_23:
      (*v9)(v8);
    }
  }

  *(a1 + 2088) = 0;
  *(a1 + 16) = 0;
  sqlite3_finalize(*(a1 + 8));
  v10 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(a1);
    a1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v10 = &xmmword_1ED452F28;
      goto LABEL_29;
    }
  }

  else
  {
LABEL_29:
    (*v10)(a1);
  }

  return 0;
}

uint64_t sub_181A0CDF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = 0;
  v49 = *a1;
  do
  {
    v7 = a1 + v6;
    v8 = *(a1 + v6 + 32);
    sub_181A0E424(a1 + v6 + 24);
    v9 = *(a1 + v6 + 48);
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
          goto LABEL_11;
        }

        v10 = &xmmword_1ED452F28;
      }

      (*v10)(v9);
    }

LABEL_11:
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 32) = v8;
    if (v8)
    {
      v11 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_2;
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
        v11 = &xmmword_1ED452F28;
LABEL_2:
        (*v11)(v8);
      }
    }

    *(v7 + 32) = 0;
    v6 += 64;
  }

  while (v6 != 2048);
  sqlite3_reset(*(a1 + 8));
  *(a1 + 2072) = 0;
  v12 = *(a1 + 2088);
  if (v12)
  {
    v13 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_23;
    }

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
      v13 = &xmmword_1ED452F28;
LABEL_23:
      (*v13)(v12);
    }
  }

  *(a1 + 2088) = 0;
  *(a1 + 16) = 0;
  sqlite3_finalize(*(a1 + 8));
  *(a1 + 8) = 0;
  if ((a2 & 1) == 0)
  {
    v14 = 0;
    *(a1 + 20) = *(v49 + 32);
    if ((a2 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

  v19 = *a5;
  if (!*a5)
  {
    goto LABEL_67;
  }

  v20 = *(v19 + 20);
  if ((~v20 & 0x202) != 0 || *(v19 + 22) != 1)
  {
    if (v20)
    {
      goto LABEL_67;
    }

    v21 = sub_18193CB70(v19, 1);
    if (!v21)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v21 = *(v19 + 8);
    if (!v21)
    {
      goto LABEL_67;
    }
  }

  v22 = *(v49 + 24);
  v23 = *(v22 + 40);
  v24 = __OFSUB__(v23, 1);
  v25 = (v23 - 1);
  if (v25 < 0 != v24)
  {
LABEL_67:
    result = 0;
    *(a1 + 20) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  v26 = (*(v22 + 32) + 32 * v25);
  while (1)
  {
    v27 = *v26;
    if (*v26)
    {
      for (i = v21; ; ++i)
      {
        if (*v27 == *i)
        {
          if (!*v27)
          {
            *(a1 + 20) = v25;
            if ((v25 & 0x80000000) == 0)
            {
              v14 = 1;
              if ((a2 & 2) == 0)
              {
                goto LABEL_26;
              }

LABEL_63:
              v33 = v14 + 1;
              v34 = a5[v14];
              if (v34)
              {
                v35 = *(v34 + 20);
                if ((~v35 & 0x202) == 0 && *(v34 + 22) == 1)
                {
                  v15 = *(v34 + 8);
LABEL_71:
                  v14 = v33;
                  if ((a2 & 4) == 0)
                  {
                    goto LABEL_72;
                  }

LABEL_27:
                  v16 = a5[v14];
                  if (v16)
                  {
                    v17 = *(v16 + 20);
                    if ((v17 & 8) != 0)
                    {
                      v18 = *v16;
                    }

                    else if ((v17 & 0x24) != 0)
                    {
                      v18 = *v16;
                    }

                    else if ((v17 & 0x12) != 0)
                    {
                      v18 = sub_18193CF90(v16);
                    }

                    else
                    {
                      v18 = 0.0;
                    }
                  }

                  else
                  {
                    sub_1819012D0(92272);
                    v18 = 0.0;
                  }

                  v32 = v18 != 0.0;
                  goto LABEL_73;
                }

                if ((v35 & 1) == 0)
                {
                  v15 = sub_18193CB70(v34, 1);
                  goto LABEL_71;
                }
              }

              v15 = 0;
              goto LABEL_71;
            }

            goto LABEL_67;
          }
        }

        else if (byte_181A20298[*v27] != byte_181A20298[*i])
        {
          break;
        }

        ++v27;
      }
    }

    if (!v25)
    {
      break;
    }

LABEL_48:
    v26 -= 4;
    v29 = v25 <= 0;
    LODWORD(v25) = v25 - 1;
    if (v29)
    {
      goto LABEL_67;
    }
  }

  v30 = "main";
  v31 = v21;
  while (2)
  {
    if (*v30 != *v31)
    {
      if (byte_181A20298[*v30] != byte_181A20298[*v31])
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    if (*v30)
    {
LABEL_53:
      ++v30;
      ++v31;
      continue;
    }

    break;
  }

  v14 = 1;
  *(a1 + 20) = 0;
  if ((a2 & 2) != 0)
  {
    goto LABEL_63;
  }

LABEL_26:
  v15 = 0;
  if ((a2 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_72:
  v32 = 0;
LABEL_73:
  *(a1 + 17) = v32;
  v37 = *(v49 + 24);
  if (sqlite3_initialize() || (v39 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
  {
    v38 = &unk_1EA831560;
  }

  else
  {
    v38 = v39;
    if (v37)
    {
      v40 = *(v37 + 136);
    }

    else
    {
      v40 = 2147483645;
    }

    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *(v39 + 20) = v40;
    *(v39 + 24) = 0;
    *(v39 + 28) = 0;
  }

  sqlite3_str_appendf(v38, "SELECT * FROM (SELECT 'sqlite_schema' AS name,1 AS rootpage,'table' AS type UNION ALL SELECT name,rootpage,type FROM %w.sqlite_schema WHERE rootpage!=0)", *(*(*(v49 + 24) + 32) + 32 * *(a1 + 20)));
  if (v15)
  {
    sqlite3_str_appendf(v38, "WHERE name=%Q", v15);
  }

  if ((a2 & 8) != 0)
  {
    sqlite3_str_appendf(v38, " ORDER BY name");
  }

  v41 = sqlite3_str_finish(v38);
  if (!v41)
  {
    return 7;
  }

  v43 = v41;
  v44 = sub_1818954B4(*(v49 + 24), v41, 0xFFFFFFFFLL, 128, 0, (a1 + 8), 0, v42);
  v45 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v46 = v44;
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
      v45 = &xmmword_1ED452F28;
      goto LABEL_92;
    }
  }

  else
  {
    v46 = v44;
LABEL_92:
    (*v45)(v43);
  }

  result = v46;
  if (!v46)
  {
    *(a1 + 2072) = -1;

    return sub_181A0D3E0(a1);
  }

  return result;
}

uint64_t sub_181A0D3E0(uint64_t a1)
{
  v132 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*a1 + 24) + 32) + 32 * *(a1 + 20) + 8);
  v126 = **(v2 + 8);
  v3 = *(a1 + 2088);
  v4 = &unk_1ED456000;
  if (v3)
  {
    v5 = &off_1ED452EB0;
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
        goto LABEL_8;
      }

      v5 = &xmmword_1ED452F28;
    }

    (*v5)(v3);
  }

LABEL_8:
  v6 = a1 + 24;
  *(a1 + 2088) = 0;
  v128 = (a1 + 2120);
  v129 = (a1 + 2108);
  while (1)
  {
    v7 = *(a1 + 2072);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    if (!*(a1 + 17))
    {
      *v129 = 0;
      *(a1 + 2144) = 0;
      *(a1 + 2104) = 0;
      *v128 = 0;
      *(a1 + 2128) = 0;
    }

    v8 = v6 + (v7 << 6);
    v9 = *(v8 + 16);
    if (v9 >= *(v8 + 36))
    {
      v24 = *(v8 + 56);
      if (!v24)
      {
        goto LABEL_44;
      }

LABEL_43:
      v30 = *(v8 + 16);
      v31 = *(v8 + 36);
      if (v30 > v31)
      {
        goto LABEL_44;
      }

      v38 = *(a1 + 2072);
      *(a1 + 2072) = v38 + 1;
      if (v38 >= 31)
      {
        v113 = 32;
        while (1)
        {
          v114 = *(v6 + 8);
          sub_181A0E424(v6);
          v115 = *(v6 + 24);
          if (!v115)
          {
            goto LABEL_193;
          }

          v116 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_192;
          }

          v117 = v4[350];
          if (v117)
          {
            xmmword_1ED452F18(v117);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v115);
          --qword_1ED456A90;
          off_1ED452EB0(v115);
          v115 = v4[350];
          if (v115)
          {
            break;
          }

LABEL_193:
          *(v6 + 32) = 0u;
          *(v6 + 48) = 0u;
          *v6 = 0u;
          *(v6 + 16) = 0u;
          *(v6 + 8) = v114;
          if (v114)
          {
            v118 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              v119 = v4[350];
              if (v119)
              {
                xmmword_1ED452F18(v119);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v114);
              --qword_1ED456A90;
              off_1ED452EB0(v114);
              v114 = v4[350];
              if (!v114)
              {
                goto LABEL_185;
              }

              v118 = &xmmword_1ED452F28;
            }

            (*v118)(v114);
          }

LABEL_185:
          *(v6 + 8) = 0;
          v6 += 64;
          if (!--v113)
          {
            sqlite3_reset(*(a1 + 8));
            *(a1 + 2072) = 0;
            v120 = *(a1 + 2088);
            if (v120)
            {
              v121 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_205;
              }

              v122 = v4[350];
              if (v122)
              {
                xmmword_1ED452F18(v122);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v120);
              --qword_1ED456A90;
              off_1ED452EB0(v120);
              v120 = v4[350];
              if (v120)
              {
                v121 = &xmmword_1ED452F28;
LABEL_205:
                (*v121)(v120);
              }
            }

            *(a1 + 2088) = 0;
            *(a1 + 16) = 0;
            return sub_18190EDA8(237825);
          }
        }

        v116 = &xmmword_1ED452F28;
LABEL_192:
        (*v116)(v115);
        goto LABEL_193;
      }

      if (v30 != v31)
      {
        v24 = *(*(v8 + 48) + 32 * v30 + 4);
      }

      *(v8 + 64) = v24;
      result = sub_181A0E53C(v2, v24, v8 + 64);
      ++*(a1 + 2104);
      *(v8 + 80) = 0;
      if (!*(a1 + 17))
      {
        v39 = result;
        v40 = sqlite3_mprintf("%s%.3x/", *(v8 + 24), *(v8 + 16));
        *(v8 + 88) = v40;
        if (v40)
        {
          result = v39;
        }

        else
        {
          result = 7;
        }
      }

      ++*(v8 + 16);
      if (result)
      {
        return result;
      }

LABEL_62:
      v41 = v6 + (*(a1 + 2072) << 6);
      *(a1 + 2080) = sqlite3_column_text(*(a1 + 8), 0);
      v42 = *v41;
      *(a1 + 2076) = *v41;
      v43 = *(v41 + 8);
      v44 = 100;
      if (v42 != 1)
      {
        v44 = 0;
      }

      v45 = (v43 + v44);
      v46 = *v45;
      *(v41 + 32) = v46;
      if (v46 > 9)
      {
        if (v46 != 10 && v46 != 13)
        {
          goto LABEL_87;
        }

        v127 = 0;
        v48 = 8;
      }

      else
      {
        if (v46 != 2 && v46 != 5)
        {
          goto LABEL_87;
        }

        v48 = 12;
        v127 = 1;
      }

      if (v42 == 1)
      {
        v50 = v48 + 100;
      }

      else
      {
        v50 = v48;
      }

      v51 = __rev16(*(v45 + 3));
      *(v41 + 36) = v51;
      *(v41 + 60) = 0;
      v52 = *(v2 + 8);
      v53 = *(v52 + 52);
      v125 = v50;
      v54 = v45[7] - (v50 + 2 * v51) + (bswap32(*(v45 + 5)) >> 16);
      v55 = __rev16(*(v45 + 1));
      while (v55)
      {
        if (v55 < v53)
        {
          v54 += bswap32(*(v43 + v55 + 2)) >> 16;
          v56 = __rev16(*(v43 + v55));
          v57 = v56 >= v55 + 4 || v56 == 0;
          v55 = v56;
          if (v57)
          {
            continue;
          }
        }

        goto LABEL_87;
      }

      *(v41 + 40) = v54;
      if (v127)
      {
        *(v41 + 56) = bswap32(*(v45 + 2));
        if (!v51)
        {
          goto LABEL_88;
        }
      }

      else
      {
        *(v41 + 56) = 0;
        if (!v51)
        {
          goto LABEL_88;
        }
      }

      if (!*(v2 + 17))
      {
        v123 = *(v52 + 56);
        goto LABEL_134;
      }

      v84 = *(v2 + 20);
      *(v2 + 20) = v84 + 1;
      if (*(v2 + 18))
      {
        v123 = *(v52 + 56);
        *(v2 + 20) = v84;
        if (v84)
        {
          goto LABEL_134;
        }

LABEL_133:
        sub_181932ECC(v2);
        goto LABEL_134;
      }

      sub_181932DEC(v2);
      v123 = *(*(v2 + 8) + 56) - *(*(v2 + 8) + 52) + v53;
      if (*(v2 + 17))
      {
        v85 = *(v2 + 20) - 1;
        *(v2 + 20) = v85;
        if (!v85)
        {
          goto LABEL_133;
        }
      }

LABEL_134:
      v86 = *(v41 + 36);
      if (sqlite3_initialize())
      {
        *(v41 + 48) = 0;
        return 7;
      }

      v87 = sub_181902484(32 * v86 + 32, 0x10100402D4494F5);
      *(v41 + 48) = v87;
      if (!v87)
      {
        return 7;
      }

      bzero(v87, 32 * *(v41 + 36) + 32);
      if (*(v41 + 36) >= 1)
      {
        v88 = 0;
        v124 = v123 - 4;
        while (1)
        {
          v89 = __rev16(*(v43 + v125 + 2 * v88));
          if (v89 < v125 || v89 >= v53)
          {
            break;
          }

          v91 = *(v41 + 48) + 32 * v88;
          if (v127)
          {
            *(v91 + 4) = bswap32(*(v43 + v89));
            v89 += 4;
          }

          v92 = *(v41 + 32);
          if (v92 != 5)
          {
            v93 = (v43 + v89);
            v94 = *v93;
            if ((v94 & 0x80000000) != 0)
            {
              v96 = v93[1];
              if (v93[1] < 0)
              {
                v97 = v93[2];
                if (v97 < 0)
                {
                  v130 = 0;
                  v95 = sub_1818C7200(v93, &v130);
                  if (HIDWORD(v130))
                  {
                    v94 = -1;
                  }

                  else
                  {
                    v94 = v130;
                  }
                }

                else
                {
                  v94 = ((v94 & 0x7F) << 14) | ((v96 & 0x7F) << 7) | v97;
                  v95 = 3;
                }
              }

              else
              {
                v94 = v96 | ((v94 & 0x7F) << 7);
                v95 = 2;
              }
            }

            else
            {
              v95 = 1;
            }

            v98 = v95 + v89;
            if (v92 == 13)
            {
              v98 += sub_1818C7200((v43 + v98), &v130);
            }

            if (v94 > *(v41 + 60))
            {
              *(v41 + 60) = v94;
            }

            v99 = 32 * (v123 - 12);
            v100 = ((v123 - 12) << 6) / 255 - 23;
            if (v92 == 13)
            {
              v99 = 32 * v123 - 384;
              v100 = v123 - 35;
            }

            v101 = v99 / 255 - 23;
            v102 = (v94 - v101) % v124 + v101;
            if (v102 <= v100)
            {
              v103 = v102;
            }

            else
            {
              v103 = v101;
            }

            if ((v103 & 0x80000000) != 0)
            {
              break;
            }

            *v91 = v103;
            v104 = v94 - v103;
            if (v94 > v103)
            {
              if ((v94 & 0x80000000) != 0)
              {
                break;
              }

              v105 = v103 + v98;
              if (v105 + 4 > v123)
              {
                break;
              }

              v106 = (v123 - 5 + v104) / v124;
              *(v91 + 24) = v104 - (v106 - 1) * v124;
              *(v91 + 8) = v106;
              if (sqlite3_initialize())
              {
                *(v91 + 16) = 0;
                return 7;
              }

              v107 = sub_181902484(4 * v106, 0x100004052888210);
              *(v91 + 16) = v107;
              if (!v107)
              {
                return 7;
              }

              *v107 = bswap32(*(v43 + v105));
              if (v106 >= 2)
              {
                v108 = 0;
                do
                {
                  v130 = 0;
                  result = (*(**(v2 + 8) + 288))();
                  if (result)
                  {
                    return result;
                  }

                  v110 = v130;
                  *(*(v91 + 16) + 4 * v108 + 4) = bswap32(**(v130 + 8));
                  if ((*(v110 + 52) & 0x20) != 0)
                  {
                    v111 = *(v110 + 40);
                    --*(v111 + 152);
                    *(v110 + 32) = *(v111 + 168);
                    *(v111 + 168) = v110;
                    (*(**(v111 + 72) + 144))(*(v111 + 72), *(v111 + 200) * (*(v110 + 48) - 1));
                  }

                  else
                  {
                    sub_181932B68(v110);
                  }

                  v109 = v108 + 2;
                  ++v108;
                }

                while (v109 < v106);
              }
            }
          }

          if (++v88 >= *(v41 + 36))
          {
            goto LABEL_88;
          }
        }

LABEL_87:
        *(v41 + 32) = 0;
        sub_181A0E424(v41);
      }

LABEL_88:
      v58 = *(*(*(*a1 + 24) + 32) + 32 * *(*a1 + 32) + 8);
      v59 = *(v58 + 8);
      v60 = *(*v59 + 72);
      v61 = *(a1 + 2076);
      v130 = v61;
      if (!*v60)
      {
        v4 = &unk_1ED456000;
        v6 = a1 + 24;
        goto LABEL_92;
      }

      v6 = a1 + 24;
      if ((*(*v60 + 80))(v60, 230440, &v130))
      {
        v59 = *(v58 + 8);
        v61 = *(a1 + 2076);
        v4 = &unk_1ED456000;
LABEL_92:
        v62 = *(a1 + 2144) + v59[13];
        *(a1 + 2144) = v62;
        *(a1 + 2136) = v62 * (v61 - 1);
        goto LABEL_97;
      }

      v63 = v131;
      *(a1 + 2136) = v130;
      *(a1 + 2144) += v63;
      v4 = &unk_1ED456000;
LABEL_97:
      v64 = *(v41 + 32);
      if (v64 > 9)
      {
        if (v64 == 13 || v64 == 10)
        {
          v65 = "leaf";
          goto LABEL_105;
        }

LABEL_104:
        v65 = "corrupted";
        goto LABEL_105;
      }

      v65 = "internal";
      if (v64 != 2 && v64 != 5)
      {
        goto LABEL_104;
      }

LABEL_105:
      *(a1 + 2096) = v65;
      v66 = *(v41 + 36);
      v67 = *(v41 + 40);
      *(a1 + 2108) += v66;
      *(a1 + 2120) += v67;
      v68 = *(v41 + 60);
      if (v68 > *(a1 + 2112))
      {
        *(a1 + 2112) = v68;
      }

      if (*(a1 + 17))
      {
        result = 0;
        if (v66 >= 1)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v73 = sqlite3_mprintf("%s", *(v41 + 24));
        *(a1 + 2088) = v73;
        if (v73)
        {
          result = 0;
        }

        else
        {
          result = 7;
        }

        v66 = *(v41 + 36);
        if (v66 >= 1)
        {
LABEL_109:
          v69 = *(v41 + 48);
          v70 = v66;
          if (v66 >= 9)
          {
            v74 = v66 & 7;
            if ((v70 & 7) == 0)
            {
              v74 = 8;
            }

            v71 = v70 - v74;
            v75 = (v69 + 128);
            v76 = 0uLL;
            v77 = v71;
            v78 = 0uLL;
            do
            {
              v79.i32[0] = *(v75 - 32);
              v79.i32[1] = *(v75 - 24);
              v79.i32[2] = *(v75 - 16);
              v79.i32[3] = *(v75 - 8);
              v80.i32[0] = *v75;
              v80.i32[1] = v75[8];
              v80.i32[2] = v75[16];
              v80.i32[3] = v75[24];
              v76 = vaddq_s32(v79, v76);
              v78 = vaddq_s32(v80, v78);
              v75 += 64;
              v77 -= 8;
            }

            while (v77);
            LODWORD(v72) = vaddvq_s32(vaddq_s32(v78, v76));
          }

          else
          {
            v71 = 0;
            LODWORD(v72) = 0;
          }

          v81 = (v69 + 32 * v71);
          v82 = v70 - v71;
          do
          {
            v83 = *v81;
            v81 += 8;
            v72 = v83 + v72;
            --v82;
          }

          while (v82);
          goto LABEL_123;
        }
      }

      v72 = 0;
LABEL_123:
      *(a1 + 2128) += v72;
      if (!*(a1 + 17))
      {
        return result;
      }
    }

    else
    {
      do
      {
        v10 = *(v8 + 48) + 32 * v9;
        v11 = *(v10 + 28);
        v12 = *(v10 + 8);
        while (v11 < v12)
        {
          if (!*(v2 + 17))
          {
            v14 = *(*(v2 + 8) + 56);
            goto LABEL_24;
          }

          ++*(v2 + 20);
          if (*(v2 + 18))
          {
            v14 = *(*(v2 + 8) + 56);
          }

          else
          {
            sub_181932DEC(v2);
            v14 = *(*(v2 + 8) + 56);
            if (!*(v2 + 17))
            {
              goto LABEL_24;
            }
          }

          v15 = *(v2 + 20) - 1;
          *(v2 + 20) = v15;
          if (!v15)
          {
            sub_181932ECC(v2);
          }

LABEL_24:
          ++*(a1 + 2104);
          v16 = *(*(*(*a1 + 24) + 32) + 32 * *(*a1 + 32) + 8);
          v17 = *(v16 + 8);
          v18 = *(*v17 + 72);
          v19 = *(a1 + 2076);
          v130 = v19;
          if (*v18)
          {
            if (!(*(*v18 + 80))(v18, 230440, &v130))
            {
              v21 = v131;
              *(a1 + 2136) = v130;
              *(a1 + 2144) += v21;
              goto LABEL_29;
            }

            v17 = *(v16 + 8);
            v19 = *(a1 + 2076);
          }

          v20 = *(a1 + 2144) + v17[13];
          *(a1 + 2144) = v20;
          *(a1 + 2136) = v20 * (v19 - 1);
LABEL_29:
          v22 = *(v10 + 28);
          v12 = *(v10 + 8);
          v23 = *(a1 + 2128);
          if (v22 >= v12 - 1)
          {
            v13 = *(v10 + 24);
            *(a1 + 2128) = v23 + v13;
            *(a1 + 2120) += v14 - v13 - 4;
          }

          else
          {
            *(a1 + 2128) = v23 + v14 - 4;
          }

          v11 = v22 + 1;
          *(v10 + 28) = v22 + 1;
          if (!*(a1 + 17))
          {
            *(a1 + 2080) = sqlite3_column_text(*(a1 + 8), 0);
            *(a1 + 2076) = *(*(v10 + 16) + 4 * v22);
            *(a1 + 2096) = "overflow";
            v112 = sqlite3_mprintf("%s%.3x+%.6x", *(v8 + 24), *(v8 + 16), v22);
            *(a1 + 2088) = v112;
            if (v112)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }

        v24 = *(v8 + 56);
        if (v24)
        {
          goto LABEL_43;
        }

        v9 = *(v8 + 16) + 1;
        *(v8 + 16) = v9;
      }

      while (v9 < *(v8 + 36));
LABEL_44:
      v32 = v6;
      v33 = *(v8 + 8);
      sub_181A0E424(v8);
      v34 = *(v8 + 24);
      if (v34)
      {
        v35 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_50;
        }

        v36 = v4[350];
        if (v36)
        {
          xmmword_1ED452F18(v36);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
        --qword_1ED456A90;
        off_1ED452EB0(v34);
        v34 = v4[350];
        if (v34)
        {
          v35 = &xmmword_1ED452F28;
LABEL_50:
          (*v35)(v34);
        }
      }

      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 8) = v33;
      v37 = *(a1 + 2072);
      *(a1 + 2072) = v37 - 1;
      v6 = v32;
      if (*(a1 + 17) && v37 < 1)
      {
        return 0;
      }
    }
  }

  *v129 = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2104) = 0;
  *v128 = 0;
  *(a1 + 2128) = 0;
  if (sqlite3_step(*(a1 + 8)) != 100 || (v25 = sqlite3_column_int64(*(a1 + 8), 1), !*(v126 + 32)))
  {
    *(a1 + 16) = 1;
    return sqlite3_reset(*(a1 + 8));
  }

  v26 = v25;
  result = sub_181A0E53C(v2, v25, v6);
  *(a1 + 24) = v26;
  *(a1 + 40) = 0;
  if (!*(a1 + 17))
  {
    v28 = result;
    v29 = sqlite3_mprintf("/");
    *(a1 + 48) = v29;
    if (v29)
    {
      result = v28;
    }

    else
    {
      result = 7;
    }
  }

  *(a1 + 2072) = 0;
  *(a1 + 2104) = 1;
  if (!result)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_181A0E268(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2128);
      }

      else if (a3 == 6)
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2120);
      }

      else
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2112);
      }

      goto LABEL_45;
    }

    if (a3 != 8)
    {
      if (a3 == 9)
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2144);
        goto LABEL_45;
      }

      if (a3 == 10)
      {
        if (!a2)
        {
          return 0;
        }

        v4 = *(*(*(*a2 + 24) + 32) + 32 * *(a1 + 20));
LABEL_28:
        sub_18190B23C(a2, v4, -1, 1u, 0);
        return 0;
      }

      goto LABEL_41;
    }

    if (!*(a1 + 17) && a2)
    {
      v3 = *(a1 + 2136);
LABEL_45:
      v6 = *a2;
      if ((*(*a2 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v6, v3);
      }

      else
      {
        *v6 = v3;
        *(v6 + 20) = 4;
      }

      return 0;
    }

    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (*(a1 + 17))
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2104);
      }

      else
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2076);
      }

      goto LABEL_45;
    }

    if (a3 != 3)
    {
      if (!a2)
      {
        return 0;
      }

      v3 = *(a1 + 2108);
      goto LABEL_45;
    }

    if (a2 && !*(a1 + 17))
    {
      v4 = *(a1 + 2096);
      goto LABEL_28;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a2)
    {
      return 0;
    }

    v5 = *(a1 + 2080);
LABEL_24:
    sub_18190B23C(a2, v5, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }

  if (a3 != 1)
  {
LABEL_41:
    if (!a2)
    {
      return 0;
    }

    v3 = *(a1 + 17);
    goto LABEL_45;
  }

  if (a2 && !*(a1 + 17))
  {
    v5 = *(a1 + 2088);
    goto LABEL_24;
  }

  return 0;
}

void sub_181A0E424(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_14;
  }

  if (*(a1 + 36) < 1)
  {
    goto LABEL_13;
  }

  v3 = 0;
  v4 = 16;
  do
  {
    v5 = *(*(a1 + 48) + v4);
    if (v5)
    {
      v6 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_4;
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
LABEL_4:
        (*v6)(v5);
      }
    }

    ++v3;
    v4 += 32;
  }

  while (v3 < *(a1 + 36));
  v2 = *(a1 + 48);
LABEL_13:
  sqlite3_free(v2);
LABEL_14:
  *(a1 + 36) = 0;
  *(a1 + 48) = 0;
}

uint64_t sub_181A0E53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4[13];
  if (*(a3 + 8))
  {
    goto LABEL_2;
  }

  v8 = sqlite3_initialize();
  if (v5 < -255 || v8 != 0)
  {
    *(a3 + 8) = 0;
    return 7;
  }

  v10 = sub_181902484((v5 + 256), 0x100004077774924);
  *(a3 + 8) = v10;
  if (!v10)
  {
    return 7;
  }

  v11 = (v10 + v5);
  v11[14] = 0u;
  v11[15] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  v4 = *(a1 + 8);
LABEL_2:
  result = (*(*v4 + 288))();
  if (!result)
  {
    memcpy(*(a3 + 8), MEMORY[8], v5);
    return 0;
  }

  return result;
}

uint64_t sub_181A0E688(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)");
  if (!result)
  {
    if (a1)
    {
      v8 = sub_181929E8C(a1, 0x20uLL, 0x107004075084CA3);
      if (v8)
      {
LABEL_4:
        *v8 = 0u;
        v8[1] = 0u;
        *a5 = v8;
        v9 = v8;
        sqlite3_vtab_config(a1, 2);
        result = 0;
        *(v9 + 3) = a1;
        return result;
      }
    }

    else
    {
      v8 = sub_181902484(32, 0x107004075084CA3);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    *a5 = 0;
    return 7;
  }

  return result;
}

uint64_t sub_181A0E720(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = -1;
  v2 = *a2;
  if (*a2 < 1)
  {
    v4 = 0;
    v11 = -1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = (*(a2 + 8) + 5);
    do
    {
      v7 = *(v6 - 5);
      v8 = __OFSUB__(v7, 8);
      v9 = v7 - 8;
      if (v9 < 0 == v8)
      {
        v10 = 1 << v9;
        if (*v6)
        {
          if (*(v6 - 1) == 2)
          {
            *(v19 + v9) = v5;
            v3 |= v10;
          }
        }

        else
        {
          v4 |= v10;
        }
      }

      ++v5;
      v6 += 12;
    }

    while (v2 != v5);
    v11 = ~v3;
  }

  if (*(a2 + 16) >= 1 && (v12 = *(a2 + 24), (*v12 & 0x80000000) != 0) && !*(v12 + 4))
  {
    *(a2 + 60) = 1;
    if ((v4 & v11) != 0)
    {
      return 19;
    }
  }

  else if ((v4 & v11) != 0)
  {
    return 19;
  }

  v14 = LODWORD(v19[0]);
  if ((v19[0] & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    *(a2 + 64) = 0x3FF0000000000000;
    v15 = *(a2 + 32);
    v16 = v15 + 8 * v14;
    v17 = 1;
    *v16 = 1;
    *(v16 + 4) = 1;
    if ((v19[0] & 0x8000000000000000) == 0)
    {
      v18 = v15 + 8 * HIDWORD(v19[0]);
      *v18 = 2;
      *(v18 + 4) = 1;
      v17 = 3;
    }
  }

  result = 0;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_181A0E8A4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v5 = sub_181902484(264, 0x10300403B68C836);
    if (v5)
    {
      goto LABEL_3;
    }

    return 7;
  }

  v5 = sub_181929E8C(v4, 0x108uLL, 0x10300403B68C836);
  if (!v5)
  {
    return 7;
  }

LABEL_3:
  v6 = 0;
  *(v5 + 256) = 0;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 48) = *(a1 + 24);
  *(v5 + 64) = v5 + 90;
  *(v5 + 88) = 1;
  *(v5 + 72) = xmmword_181A201B0;
  *a2 = v5;
  return v6;
}

uint64_t sub_181A0E95C(uint64_t a1)
{
  sub_181A0F6E8(a1);
  sub_181929C84(*(a1 + 48), a1);
  return 0;
}

uint64_t sub_181A0E990(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = 0;
  sub_181A0F6E8(a1);
  if (!a2)
  {
    return 0;
  }

  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 228) = 1;
  *(a1 + 216) = *(a1 + 48);
  if (!sub_1819A02D4(*a5, (a1 + 192)))
  {
    v11 = *a5;
    if (*a5)
    {
      v12 = *(v11 + 20);
      if ((~v12 & 0x202) != 0 || *(v11 + 22) != 1)
      {
        if (v12)
        {
          v11 = 0;
        }

        else
        {
          v11 = sub_18193CB70(v11, 1);
        }
      }

      else
      {
        v11 = *(v11 + 8);
      }
    }

    *(a1 + 208) = v11;
    v23 = *a5;
    if (*a5)
    {
      v24 = *(v23 + 20);
      if ((v24 & 2) != 0 && *(v23 + 22) == 1)
      {
        v25 = *(v23 + 16);
        goto LABEL_43;
      }

      if ((v24 & 0x10) != 0)
      {
        v25 = *(v23 + 16);
        if ((*(v23 + 20) & 0x400) != 0)
        {
          v25 += *v23;
        }

LABEL_43:
        *(a1 + 224) = v25;
        v26 = *(a1 + 208);
        if (!v26)
        {
          result = 0;
          *(a1 + 12) = 0;
          *(a1 + 16) = 0;
          return result;
        }

        v27 = sub_1819A13A0(a1 + 192, 0);
        if (!*(a1 + 239))
        {
          v28 = v27 - 1;
          if (v27 >= 1)
          {
            v29 = v26 + v27 - 1;
            do
            {
              v31 = *++v29;
              v30 = v31;
              ++v28;
            }

            while (byte_181A24B89[v31]);
            if (v30)
            {
              v28 += sub_1819A22A8(v29);
              if (*(v26 + v28))
              {
                goto LABEL_52;
              }

              *(a1 + 241) = 1;
            }

            if (v28 > 0)
            {
              goto LABEL_3;
            }
          }
        }

LABEL_52:
        sub_1819A24BC((a1 + 192));
        if (*(a1 + 239))
        {
          return 7;
        }

        v32 = *(*a1 + 16);
        if (!v32)
        {
          goto LABEL_64;
        }

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
            goto LABEL_64;
          }

          v33 = &xmmword_1ED452F28;
        }

        (*v33)(v32);
LABEL_64:
        v34 = sqlite3_mprintf("malformed JSON");
        goto LABEL_79;
      }

      if ((v24 & 1) == 0)
      {
        v25 = sub_18193CB44(v23, 1);
        goto LABEL_43;
      }
    }

    else
    {
      sub_1819012D0(93690);
    }

    v25 = 0;
    goto LABEL_43;
  }

LABEL_3:
  if (a2 != 3)
  {
    *(a1 + 12) = 0;
    *(a1 + 24) = 0;
    *(a1 + 20) = 1;
    v13 = *(a1 + 80);
    if ((v13 + 1) >= *(a1 + 72))
    {
      sub_1819A470C(a1 + 56, "$", 1u);
      v14 = 0;
      goto LABEL_19;
    }

    v14 = 0;
    *(*(a1 + 64) + v13) = 36;
    v15 = *(a1 + 80) + 1;
    goto LABEL_15;
  }

  result = a5[1];
  if (!result)
  {
    return result;
  }

  v9 = *(result + 20);
  if ((~v9 & 0x202) != 0 || *(result + 22) != 1)
  {
    if (v9)
    {
      return 0;
    }

    v10 = sub_18193CB70(result, 1);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(result + 8);
    if (!v10)
    {
      return 0;
    }
  }

  if (*v10 == 36)
  {
    *(a1 + 20) = strlen(v10) & 0x3FFFFFFF;
    if (*(v10 + 1))
    {
      v22 = sub_18199F840(a1 + 192, 0, (v10 + 1), 0);
      v14 = v22;
      if (v22 >= 0xFFFFFFFD)
      {
        if (v22 == -2)
        {
          result = 0;
          *(a1 + 12) = 0;
          *(a1 + 24) = 0;
          return result;
        }

        sqlite3_free(*(*a1 + 16));
        goto LABEL_78;
      }

      v37 = *(a1 + 252);
      if (v37)
      {
        *(a1 + 12) = v37;
        v38 = 12;
      }

      else
      {
        *(a1 + 12) = v22;
        v38 = 11;
      }

      *(a1 + 24) = v38;
    }

    else
    {
      v14 = 0;
      *(a1 + 12) = 0;
      *(a1 + 24) = 0;
    }

    v39 = *(a1 + 20);
    if (!v39)
    {
LABEL_19:
      *(a1 + 28) = 0;
      v16 = sub_1819A0760((a1 + 192), v14, &v41) + v14;
      *(a1 + 16) = v16 + v41;
      v17 = *(a1 + 192);
      if ((*(v17 + v14) & 0xFu) < 0xB || *(a1 + 25))
      {
        return 0;
      }

      *(a1 + 12) = v16;
      *(a1 + 24) = *(v17 + v14) & 0xF;
      v18 = *(a1 + 48);
      if (v18)
      {
        v19 = sub_181929E8C(v18, 0x18uLL, 0x1000040504FFAC1);
        if (v19)
        {
LABEL_23:
          result = 0;
          *v19 = 0;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(a1 + 40) = v19;
          *(a1 + 28) = 0x100000001;
          v21 = *(a1 + 12);
          v20 = *(a1 + 16);
          *(v19 + 4) = v14;
          *(v19 + 8) = v20;
          *v19 = v21;
          return result;
        }
      }

      else
      {
        v19 = sub_181902484(24, 0x1000040504FFAC1);
        if (v19)
        {
          goto LABEL_23;
        }
      }

      *(a1 + 40) = 0;
      return 7;
    }

    v40 = *(a1 + 80);
    if ((v40 + v39) >= *(a1 + 72))
    {
      sub_1819A470C(a1 + 56, v10, *(a1 + 20));
      goto LABEL_19;
    }

    memcpy((*(a1 + 64) + v40), v10, *(a1 + 20));
    v15 = *(a1 + 80) + v39;
LABEL_15:
    *(a1 + 80) = v15;
    goto LABEL_19;
  }

  v35 = *(*a1 + 16);
  if (v35)
  {
    v36 = &off_1ED452EB0;
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
        goto LABEL_78;
      }

      v36 = &xmmword_1ED452F28;
    }

    (*v36)(v35);
  }

LABEL_78:
  v34 = sqlite3_mprintf("bad JSON path: %Q", v10);
LABEL_79:
  *(*a1 + 16) = v34;
  sub_181A0F6E8(a1);
  if (*(*a1 + 16))
  {
    return 1;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_181A0EEF4(uint64_t a1)
{
  if (!*(a1 + 25))
  {
    v30 = 0;
    v6 = *(a1 + 24);
    if (v6 == 12)
    {
      v31 = 0;
      v7 = *(a1 + 12);
      v8 = sub_1819A0760((a1 + 192), v7, &v31);
      v9 = v8 + v7 + v31;
    }

    else
    {
      v9 = *(a1 + 12);
    }

    v19 = sub_1819A0760((a1 + 192), v9, &v30);
    result = 0;
    *(a1 + 12) = v19 + v9 + v30;
    if (v6 != 11)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v30 = 0;
  v2 = *(a1 + 24);
  if (v2 == 12)
  {
    v31 = 0;
    v3 = *(a1 + 12);
    v4 = sub_1819A0760((a1 + 192), v3, &v31);
    v5 = v4 + v3 + v31;
  }

  else
  {
    v3 = *(a1 + 12);
    v5 = v3;
  }

  v10 = *(*(a1 + 192) + v5) & 0xF;
  v11 = sub_1819A0760((a1 + 192), v5, &v30);
  v12 = v10 - 13;
  if (v12 < 0xFFFFFFFE)
  {
    result = 0;
    v14 = v11 + v5 + v30;
    *(a1 + 12) = v14;
    v15 = *(a1 + 28);
    if (!v15)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v16 = *(a1 + 28);
  v17 = *(a1 + 32);
  if (v16 >= v17)
  {
    v20 = 2 * v17 + 3;
    v18 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = 24 * v20;
    if (v18)
    {
      if (*(v21 + 512) > v18)
      {
        if (*(v21 + 496) <= v18)
        {
          if (v20 < 6)
          {
LABEL_26:
            *(a1 + 32) = v20;
            *(a1 + 40) = v18;
            goto LABEL_27;
          }
        }

        else if (*(v21 + 504) <= v18 && v22 <= *(v21 + 438))
        {
          goto LABEL_26;
        }
      }

      v18 = sub_181929F38(v21, v18, v22, 0x1000040504FFAC1);
      if (v18)
      {
LABEL_25:
        v16 = *(a1 + 28);
        v3 = *(a1 + 12);
        v2 = *(a1 + 24);
        goto LABEL_26;
      }
    }

    else
    {
      v18 = sub_181929E8C(v21, 24 * v20, 0x1000040504FFAC1);
      if (v18)
      {
        goto LABEL_25;
      }
    }

    return 7;
  }

  v18 = *(a1 + 40);
LABEL_27:
  result = 0;
  v23 = &v18[3 * v16];
  *v23 = v3;
  *(v23 + 1) = v5;
  v14 = v11 + v5;
  *(v23 + 2) = v30 + v14;
  v23[2] = -1;
  *(v23 + 3) = *(a1 + 80);
  if (v16 && v2)
  {
    sub_181A0F800(a1);
    if (*(a1 + 89))
    {
      result = 7;
    }

    else
    {
      result = 0;
    }

    v16 = *(a1 + 28);
  }

  *(a1 + 12) = v14;
  v15 = v16 + 1;
  *(a1 + 28) = v16 + 1;
  if (v16 == -1)
  {
    goto LABEL_40;
  }

LABEL_34:
  v24 = *(a1 + 40);
  v25 = v15 - 1;
  if (v14 >= *(v24 + 24 * (v15 - 1) + 8))
  {
    *(a1 + 28) = v25;
    *(a1 + 80) = *(v24 + 24 * v25 + 12);
    if (v15 != 1)
    {
      while (1)
      {
        v26 = v25 - 1;
        if (v14 < *(v24 + 24 * (v25 - 1) + 8))
        {
          break;
        }

        *(a1 + 28) = v26;
        *(a1 + 80) = *(v24 + 24 * v26 + 12);
        if (!--v25)
        {
          goto LABEL_40;
        }
      }

      v15 = v25;
      goto LABEL_42;
    }

LABEL_40:
    v27 = 0;
LABEL_43:
    *(a1 + 24) = v27;
    goto LABEL_44;
  }

  if (v12 >= 0xFFFFFFFE)
  {
LABEL_42:
    v27 = *(*(a1 + 192) + *(v24 + 24 * (v15 - 1) + 4)) & 0xF;
    goto LABEL_43;
  }

LABEL_44:
  if (*(a1 + 24) == 11)
  {
LABEL_45:
    v28 = *(a1 + 28);
    if (v28)
    {
      v29 = *(a1 + 40) + 24 * (v28 - 1);
      ++*(v29 + 16);
    }
  }

LABEL_47:
  ++*(a1 + 8);
  return result;
}

uint64_t sub_181A0F248(uint64_t a1, sqlite3_context *a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      switch(a3)
      {
        case 6:
          v22 = *(a1 + 80);
          v23 = v22;
          if (*(a1 + 28))
          {
            sub_181A0F800(a1);
            v23 = *(a1 + 80);
          }

          sqlite3_result_text64(a2, *(a1 + 64), v23, 0xFFFFFFFFFFFFFFFFLL, 1u);
          *(a1 + 80) = v22;
          return 0;
        case 7:
          v24 = *(a1 + 80);
          v25 = *(a1 + 64);
          if (!*(a1 + 8) && *(a1 + 25) && (v24 & 0xFFFFFFFE) != 0)
          {
            LODWORD(v24) = v24 - 1;
            while (1)
            {
              v27 = *(v25 + v24);
              if (v27 == 91 || v27 == 46)
              {
                *(v25 + v24) = 0;
                v28 = sub_18199F840(a1 + 192, 0, (v25 + 1), 0);
                *(v25 + v24) = v27;
                if (v28 < 0xFFFFFFFD && sub_1819A0760((a1 + 192), v28, &v40) + v28 == *(a1 + 12))
                {
                  break;
                }
              }

              v26 = v24 & 0xFFFFFFFE;
              LODWORD(v24) = v24 - 1;
              if (!v26)
              {
                LODWORD(v24) = 1;
                break;
              }
            }

            v25 = *(a1 + 64);
          }

          sqlite3_result_text64(a2, v25, v24, 0xFFFFFFFFFFFFFFFFLL, 1u);
          return 0;
        case 8:
          v5 = *(a1 + 208);
          if (v5)
          {
            if (a2)
            {
              v6 = a2;
              v7 = -1;
LABEL_9:
              v8 = 1;
LABEL_64:
              v32 = -1;
              goto LABEL_65;
            }
          }

          else
          {
            if (a2)
            {
              v7 = *(a1 + 200);
              if ((v7 & 0x80000000) == 0)
              {
                v5 = *(a1 + 192);
                v6 = a2;
                v8 = 0;
                goto LABEL_64;
              }
            }

            if (a2)
            {
              *(a2 + 9) = 18;
              sub_1818900D0(*a2, "string or blob too big", -1, 1u, 0);
            }
          }

          return 0;
      }

      goto LABEL_43;
    }

    if (a3 == 4)
    {
      if (!a2)
      {
        return 0;
      }

      v16 = *(a1 + 12);
    }

    else
    {
      v15 = *(a1 + 28);
      if (!v15 || !*(a1 + 25) || !a2)
      {
        return 0;
      }

      v16 = *(*(a1 + 40) + 24 * (v15 - 1));
    }

LABEL_68:
    v37 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v37, v16);
    }

    else
    {
      *v37 = v16;
      *(v37 + 20) = 4;
    }

    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (*(a1 + 24) == 12)
      {
        LODWORD(v40) = 0;
        v19 = *(a1 + 12);
        v20 = sub_1819A0760((a1 + 192), v19, &v40);
        v21 = v20 + v19 + v40;
      }

      else
      {
        v21 = *(a1 + 12);
      }

      if (!a2)
      {
        return 0;
      }

      v5 = off_1E6A27D50[*(*(a1 + 192) + v21) & 0xF];
      v6 = a2;
      v7 = -1;
LABEL_56:
      v8 = 1;
      v32 = 0;
LABEL_65:
      sub_18190B23C(v6, v5, v7, v8, v32);
      return 0;
    }

    if (*(a1 + 24) == 12)
    {
      LODWORD(v40) = 0;
      v12 = *(a1 + 12);
      v13 = sub_1819A0760((a1 + 192), v12, &v40);
      v14 = v13 + v12 + v40;
    }

    else
    {
      v14 = *(a1 + 12);
    }

    v31 = *(a1 + 192);
    v30 = (a1 + 192);
    if ((*(v31 + v14) & 0xFu) > 0xA)
    {
      return 0;
    }

    v18 = v30;
    goto LABEL_52;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (*(a1 + 24) == 12)
      {
        LODWORD(v40) = 0;
        v9 = *(a1 + 12);
        v10 = sub_1819A0760((a1 + 192), v9, &v40);
        v11 = v10 + v9 + v40;
      }

      else
      {
        v11 = *(a1 + 12);
      }

      sub_1819A4E40((a1 + 192), v11, a2, 1);
      if (a2 && (*(*(a1 + 192) + v11) & 0xFu) >= 0xB)
      {
        v29 = *a2;
        *(v29 + 23) = 74;
        *(v29 + 20) |= 0x800u;
      }

      return 0;
    }

LABEL_43:
    if (!a2)
    {
      return 0;
    }

    v7 = *(a1 + 20);
    v5 = *(a1 + 64);
    v6 = a2;
    goto LABEL_56;
  }

  v17 = *(a1 + 28);
  if (v17)
  {
    if (*(a1 + 24) != 12)
    {
      if (!a2)
      {
        return 0;
      }

      v16 = *(*(a1 + 40) + 24 * (v17 - 1) + 16);
      goto LABEL_68;
    }

    v14 = *(a1 + 12);
    v18 = (a1 + 192);
LABEL_52:
    sub_1819A4E40(v18, v14, a2, 1);
    return 0;
  }

  if (*(a1 + 20) != 1)
  {
    v33 = sub_181A0F8F0(a1);
    v34 = *(a1 + 20);
    v35 = v34 - v33;
    if (v34 != v33)
    {
      v36 = *(a1 + 64);
      if (*(v36 + v33) != 91)
      {
        v39 = v33 + 1;
        if (*(v36 + v39) == 34)
        {
          if (!a2)
          {
            return 0;
          }

          v7 = v35 - 3;
          v5 = (v36 + v33 + 2);
          v6 = a2;
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v7 = v35 - 1;
          v5 = (v36 + v39);
          v6 = a2;
        }

        goto LABEL_9;
      }

      v40 = 0;
      sub_18193D008((v36 + v33 + 1), &v40, v35 - 1, 1);
      sqlite3_result_int64(a2, v40);
    }
  }

  return 0;
}

double sub_181A0F6E8(uint64_t a1)
{
  sub_1819A24BC((a1 + 192));
  if (!*(a1 + 88))
  {
    v2 = *(a1 + 64);
    v5 = *(v2 - 8);
    v4 = (v2 - 8);
    v3 = v5;
    if (v5 >= 2)
    {
      *v4 = v3 - 1;
      goto LABEL_10;
    }

    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_9;
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
      v6 = &xmmword_1ED452F28;
LABEL_9:
      (*v6)(v4);
    }
  }

LABEL_10:
  *(a1 + 64) = a1 + 90;
  *(a1 + 72) = xmmword_181A201B0;
  *(a1 + 88) = 1;
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_181929C84(*(a1 + 48), v7);
  }

  result = 0.0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 28) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_181A0F800(uint64_t a1)
{
  if (*(a1 + 24) == 11)
  {
    return sub_1819A40A0(30, (a1 + 56), "[%lld]");
  }

  v12 = 0;
  v3 = *(a1 + 12);
  v4 = sub_1819A0760((a1 + 192), v3, &v12);
  if (v12 && (byte_181A204C8[*(*(a1 + 192) + v4 + v3)] & 2) != 0)
  {
    v7 = v12;
    v8 = (*(a1 + 192) + v4 + v3);
    while (1)
    {
      v9 = *v8++;
      if ((byte_181A204C8[v9] & 6) == 0)
      {
        break;
      }

      if (!--v7)
      {
        v10 = v12;
        v11 = *(a1 + 192) + v4 + v3;
        v5 = ".%.*s";
        v6 = v12 + 2;
        return sub_1819A40A0(v6, (a1 + 56), v5, v10, v11);
      }
    }
  }

  v10 = v12;
  v11 = *(a1 + 192) + v4 + v3;
  v5 = ".%.*s";
  v6 = v12 + 4;
  return sub_1819A40A0(v6, (a1 + 56), v5, v10, v11);
}

uint64_t sub_181A0F8F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!*(a1 + 8) && *(a1 + 25) && v1 >= 2)
  {
    v4 = *(a1 + 64);
    v5 = (v4 + (v1 - 1));
    do
    {
      v6 = *v5;
      if (v6 == 91 || v6 == 46)
      {
        *v5 = 0;
        v7 = sub_18199F840(a1 + 192, 0, (v4 + 1), 0);
        *v5 = v6;
        if (v7 < 0xFFFFFFFD && sub_1819A0760((a1 + 192), v7, &v9) + v7 == *(a1 + 12))
        {
          return (v1 - 1);
        }
      }

      --v5;
      LODWORD(v1) = v1 - 1;
    }

    while (v1 >= 2);
    return 1;
  }

  return v1;
}

uint64_t sub_181A0F9D0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*(v4 + 436) <= 0x107u)
    {
      if (*(v4 + 432))
      {
        if (*(v4 + 103))
        {
          return 7;
        }
      }

      else
      {
        ++*(v4 + 452);
      }

LABEL_15:
      v5 = sub_18192A080(v4, 264, 0x10300403B68C836);
      if (v5)
      {
        goto LABEL_16;
      }

      return 7;
    }

    v5 = *(v4 + 472);
    if (v5)
    {
      v6 = (v4 + 472);
    }

    else
    {
      v5 = *(v4 + 464);
      if (!v5)
      {
        ++*(v4 + 456);
        goto LABEL_15;
      }

      v6 = (v4 + 464);
    }

    *v6 = *v5;
    ++*(v4 + 448);
  }

  else
  {
    v5 = sub_181902484(264, 0x10300403B68C836);
    if (!v5)
    {
      return 7;
    }
  }

LABEL_16:
  v7 = 0;
  *(v5 + 256) = 0;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 48) = *(a1 + 24);
  *(v5 + 64) = v5 + 90;
  *(v5 + 72) = xmmword_181A201B0;
  *a2 = v5;
  *(v5 + 88) = 1;
  *(v5 + 25) = 1;
  return v7;
}

double sub_181A0FB10(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!sqlite3_declare_vtab(a1, off_1E6A28200[a2 != 0]))
  {
    if (sqlite3_initialize())
    {
      *a5 = 0;
    }

    else
    {
      v9 = sub_181902484(40, 0x1070040280257AFLL);
      *a5 = v9;
      if (v9)
      {
        result = 0.0;
        *v9 = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 24) = a1;
        *(v9 + 32) = 0;
        *(v9 + 32) = 2 * (a2 != 0);
      }
    }
  }

  return result;
}

uint64_t sub_181A0FBB4(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 32))
  {
    v2 = 4;
  }

  else
  {
    v2 = 10;
  }

  *(a2 + 8) = 0x4059000000000000;
  *(a2 + 9) = 100;
  a2[10] = 0;
  v3 = *a2;
  if (v3 < 1)
  {
    return 19;
  }

  v4 = 0;
  v5 = *(a2 + 1);
  v6 = 8 * v3;
  result = 19;
  do
  {
    if (*(v5 + 5))
    {
      v8 = *(v5 + 4);
      if (v8 == 71)
      {
        if (*v5 == v2)
        {
          *(*(a2 + 4) + v4 + 4) = 1;
          a2[10] = 1;
        }
      }

      else if (v8 == 2 && *v5 == (v2 | 1))
      {
        result = 0;
        v9 = *(a2 + 4) + v4;
        *(v9 + 4) = 1;
        *v9 = 1;
      }
    }

    v5 += 12;
    v4 += 8;
  }

  while (v6 != v4);
  return result;
}

uint64_t sub_181A0FC78(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
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
      goto LABEL_7;
    }
  }

  return 0;
}

double sub_181A0FD30(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v5 = sub_181902484(136, 0x10F20407260F910);
    if (v5)
    {
      result = 0.0;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 92) = 1;
      *(v5 + 128) = 0;
      *(v5 + 112) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *(v5 + 96) = *(a1 + 24);
      *(v5 + 104) = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_181A0FDBC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
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
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  *(v1 + 40) = 0;
  v4 = *(v1 + 92);
  if ((v4 & 0x9000) != 0 || *(v1 + 104))
  {
    sub_18193CA00(v1 + 72);
    v4 = *(v1 + 92);
  }

  if ((v4 & 0x9000) != 0)
  {
    sub_18193CA54((v1 + 72));
    if (!*(v1 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(v1 + 92) = 1;
  if (*(v1 + 24))
  {
LABEL_13:
    sqlite3_finalize(*(v1 + 8));
  }

LABEL_14:
  *(v1 + 8) = 0;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_19:
    (*v5)(v1);
    return 0;
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
    v5 = &xmmword_1ED452F28;
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_181A0FF50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v13)(v12);
      goto LABEL_8;
    }

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
      v13 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  *(a1 + 40) = 0;
  v14 = *(a1 + 92);
  if ((v14 & 0x9000) != 0 || *(a1 + 104))
  {
    sub_18193CA00(a1 + 72);
    v14 = *(a1 + 92);
  }

  if ((v14 & 0x9000) != 0)
  {
    sub_18193CA54((a1 + 72));
    if (!*(a1 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(a1 + 92) = 1;
  if (*(a1 + 24))
  {
LABEL_13:
    sqlite3_finalize(*(a1 + 8));
  }

LABEL_14:
  *(a1 + 8) = 0;
  v15 = (a1 + 8);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = a2 == 0;
  v16 = *a5;
  if (!*a5)
  {
    sub_1819012D0(99877);
    v16 = *a5;
    if (!*a5)
    {
      sub_1819012D0(99775);
      v19 = 0;
      goto LABEL_38;
    }

LABEL_23:
    if ((v16[5] & 0xFBF) == 0xA01 && *(v16 + 23) == 112 && !strcmp(*v16, "stmt-pointer"))
    {
      v19 = *(v16 + 1);
    }

    else
    {
      v19 = 0;
    }

LABEL_38:
    v20 = 0;
    *v15 = v19;
    if (!v19)
    {
      goto LABEL_32;
    }

LABEL_39:
    sub_181A101F8(a1);
    return v20;
  }

  v17 = *(v16 + 10);
  if (((0x4000000040004uLL >> v17) & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((~v17 & 0x202) == 0 && *(v16 + 22) == 1)
  {
    v18 = *(v16 + 1);
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if ((v17 & 1) == 0)
  {
    v18 = sub_18193CB70(*a5, 1);
    if (v18)
    {
LABEL_29:
      v20 = sub_1818954B4(*(v11 + 24), v18, 0xFFFFFFFFLL, 128, 0, (a1 + 8), 0, a8);
      *(a1 + 24) = 1;
      if (!*v15)
      {
        goto LABEL_32;
      }

      goto LABEL_39;
    }
  }

LABEL_31:
  v20 = 7;
  if (*v15)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (*(v11 + 32))
  {
    v21 = "tables_used";
  }

  else
  {
    v21 = "bytecode";
  }

  *(v11 + 16) = sqlite3_mprintf("argument to %s() is not a valid SQL statement", v21);
  return 1;
}

uint64_t sub_181A101F8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
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
        goto LABEL_8;
      }

      v4 = &xmmword_1ED452F28;
    }

    (*v4)(v3);
LABEL_8:
    a1[5] = 0;
  }

  if (a1[8])
  {
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  if (*(a1 + 7))
  {
    v5 = (a1 + 9);
  }

  else
  {
    v5 = 0;
  }

  if (sub_18193D2D4(a1[1], v5, *(v2 + 32), a1 + 4, a1 + 5, a1 + 4))
  {
    if ((*(a1 + 46) & 0x9000) != 0)
    {
      sub_18193CA54(a1 + 18);
    }

    else
    {
      *(a1 + 46) = 1;
    }

    a1[4] = 0;
  }

  return 0;
}

uint64_t sub_181A10330(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a1[4];
  v10 = *(a1 + 5);
  v11 = (v9 + 40 * v10);
  if (!*(*a1 + 32))
  {
LABEL_17:
    switch(a3)
    {
      case 0:
        if (!a2)
        {
          return 0;
        }

        v28 = *a2;
        if ((*(*a2 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v28, v10);
          return 0;
        }

        *v28 = v10;
        goto LABEL_56;
      case 1:
        if (!a2)
        {
          return 0;
        }

        v26 = off_1E6A269B0[*v11];
        goto LABEL_40;
      case 2:
        if (!a2)
        {
          return 0;
        }

        v27 = *(v11 + 1);
        goto LABEL_53;
      case 3:
        if (!a2)
        {
          return 0;
        }

        v27 = *(v11 + 2);
        goto LABEL_53;
      case 4:
        if (!a2)
        {
          return 0;
        }

        v27 = *(v11 + 3);
        goto LABEL_53;
      case 5:
      case 7:
        v20 = a1[5];
        if (!v20)
        {
          v22 = a2;
          v23 = a3;
          v24 = sub_18193D590(*(v8 + 24), v11, a3, a4, a5, a6, a7, a8);
          LODWORD(a3) = v23;
          a2 = v22;
          v20 = v24;
          a1[5] = v24;
        }

        if (!a2 || a3 != 5)
        {
          return 0;
        }

        v13 = a2;
        v14 = v20;
        goto LABEL_41;
      case 6:
        if (!a2)
        {
          return 0;
        }

        v27 = *(v11 + 1);
        goto LABEL_53;
      case 8:
        goto LABEL_3;
      case 9:
        if (!a2)
        {
          return 0;
        }

        v27 = *(v11 + 3);
        goto LABEL_53;
      case 10:
        if (!a2)
        {
          return 0;
        }

        v27 = *(v11 + 4);
        goto LABEL_53;
      case 20:
        if (!a2)
        {
          return 0;
        }

        v26 = a1[6];
        goto LABEL_40;
      case 21:
        if (!a2)
        {
          return 0;
        }

        v26 = a1[7];
        goto LABEL_40;
      case 22:
        if (!a2)
        {
          return 0;
        }

        v26 = a1[8];
LABEL_40:
        v13 = a2;
        v14 = v26;
        goto LABEL_41;
      case 23:
        if (!a2)
        {
          return 0;
        }

        v27 = *v11 == 113;
LABEL_53:
        v28 = *a2;
        if ((*(*a2 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v28, v27);
        }

        else
        {
          *v28 = v27;
LABEL_56:
          *(v28 + 20) = 4;
        }

        break;
      default:
        return 0;
    }

    return 0;
  }

  if (a3 != 4)
  {
    if (a3 <= 2 && !a1[6])
    {
      v15 = *(v11 + 2);
      v16 = (*(*(v8 + 24) + 32) + 32 * *(v11 + 3));
      v17 = v16[3];
      a1[7] = *v16;
      v18 = *(v17 + 16);
      if (v18)
      {
        while (1)
        {
          v19 = v18[2];
          if (*(v19 + 63) != 1 && *(v19 + 40) == v15)
          {
            break;
          }

          v18 = *v18;
          if (!v18)
          {
            goto LABEL_15;
          }
        }

        a1[8] = *v19;
        a1[6] = "table";
      }

LABEL_15:
      if (!a1[8])
      {
        for (i = *(v17 + 40); i; i = *i)
        {
          v31 = i[2];
          if (*(v31 + 88) == v15)
          {
            a1[8] = *v31;
            a1[6] = "index";
          }
        }
      }
    }

    a3 = (a3 + 20);
    goto LABEL_17;
  }

LABEL_3:
  if (*(a1 + 4) != v10 + 1)
  {
    v12 = *(v9 + 16);
    if (v12)
    {
      if (a2)
      {
        v13 = a2;
        v14 = (v12 + 3);
LABEL_41:
        v25 = -1;
        goto LABEL_42;
      }
    }

    else if (a2)
    {
      v13 = a2;
      v14 = "(FK)";
      v25 = 4;
LABEL_42:
      sub_18190B23C(v13, v14, v25, 1u, 0);
    }
  }

  return 0;
}

void sub_181A10608()
{
  v0 = getenv("SQLITE_AUTO_PROFILE");
  if (v0)
  {
    v1 = v0;
    v2 = 1;
    if (!strncasecmp("1", v0, 1uLL))
    {
      if (isatty(2))
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else if (!strncasecmp("stderr", v1, 6uLL))
    {
      v2 = 1;
      v3 = 1;
    }

    else
    {
      v2 = strncasecmp("syslog", v1, 6uLL) == 0;
      v3 = 2 * v2;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = getenv("SQLITE_AUTO_TRACE");
  if (v4)
  {
    if (!strncasecmp("1", v4, 1uLL))
    {
      if (isatty(2))
      {
        LODWORD(v4) = 1;
      }

      else
      {
        LODWORD(v4) = 2;
      }

      goto LABEL_20;
    }

    if (!strncasecmp("stderr", v4, 6uLL))
    {
      LODWORD(v4) = 1;
      if (!dyld_process_is_restricted())
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v5 = strncasecmp("syslog", v4, 6uLL) == 0;
    LODWORD(v4) = 2 * v5;
  }

  else
  {
    v5 = 0;
  }

  if (!v2 && !v5)
  {
    return;
  }

LABEL_20:
  if (!dyld_process_is_restricted())
  {
LABEL_26:
    dword_1EA831A94 = v3;
    dword_1EA831A98 = v4;
    return;
  }

LABEL_21:
  if (os_variant_allows_internal_security_policies())
  {
    goto LABEL_26;
  }

  sqlite3_log(28, "Auto logging environment variable set, but process is restricted. Ignoring.");
}

void sub_181A107B0(uint64_t a1, char *a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED456C38 != -1)
  {
    sub_181A1EA60();
  }

  v5 = qword_1ED456C08;
  if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = &byte_181A2878D;
    if (a2)
    {
      v6 = a2;
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 2048;
    v10 = a3 / 0xF4240;
    _os_log_impl(&dword_18188D000, v5, OS_LOG_TYPE_DEFAULT, "Query: %s\n Execution Time: %llu ms\n", &v7, 0x16u);
  }
}

void sub_181A108A8(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED456C38 != -1)
  {
    sub_181A1EA60();
  }

  v4 = qword_1ED456C08;
  if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &byte_181A2878D;
    if (a2)
    {
      v5 = a2;
    }

    v6 = 134218242;
    v7 = a1;
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&dword_18188D000, v4, OS_LOG_TYPE_DEFAULT, "TraceSQL(%p): %s\n", &v6, 0x16u);
  }
}

uint64_t sub_181A10988(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 48);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        if ((*(v5 + 20) & 0x9000) != 0 || *(v5 + 32))
        {
          sub_18193CA00(*(v4 + 8 * i));
        }

        sub_181929C84(*(v5 + 24), v5);
        v2 = *(v1 + 40);
      }
    }
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
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
    v6 = &xmmword_1ED452F28;
LABEL_15:
    v8 = *v6;

    return v8(v1);
  }

  return result;
}

uint64_t sub_181A10AAC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (sqlite3_initialize())
  {
    v8 = 0;
  }

  else
  {
    v10 = sub_181902484(32, 0x107004075084CA3);
    v8 = v10;
    if (v10)
    {
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 24) = a2;
      result = sqlite3_declare_vtab(a1, "CREATE TABLE x(value INTEGER PRIMARY KEY)");
      goto LABEL_6;
    }
  }

  result = 7;
LABEL_6:
  *a5 = v8;
  return result;
}

uint64_t sub_181A10B38(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
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
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A10BF0(uint64_t a1, void *a2)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v4 = sub_181902484(16, 0x10200403A5D3213);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  result = 0;
  *v5 = 0;
  v5[1] = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_181A10C4C(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
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
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A10D40(unsigned int *a1, uint64_t *a2)
{
  v2 = a1[2];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(*a1 + 24);
    if (v2 < *v3)
    {
      if (a2)
      {
        v4 = *(*(v3 + 8) + 8 * v2);
        v5 = *a2;
        if ((*(*a2 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v5, v4);
          return 0;
        }

        *v5 = v4;
        *(v5 + 20) = 4;
      }
    }
  }

  return 0;
}

uint64_t sub_181A10E40(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 12);
  if (!v1)
  {
    v1 = *a1;
    if (*a1)
    {
      if (*(*v1 + 24))
      {
        v3 = a1;
        xmmword_1ED452F18(*(*v1 + 24));
        v4 = *(*v1 + 24);
        LODWORD(v1) = v1[130];
        if (v4)
        {
          xmmword_1ED452F28(v4);
        }

        a1 = v3;
      }

      else
      {
        LODWORD(v1) = v1[130];
      }
    }
  }

  return (v1 - *(a1 + 8));
}

double sub_181A10EC8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = 0;
  result = 0.0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  if (*(a3 + 36) || sub_18191E5A4(a3, a4, *a3, *(a3 + 8)))
  {
    return result;
  }

  v9 = (a3 + 96);
  v10 = (*(a3 + 120))(*(a3 + 96));
  v11 = *(a4 + 20);
  if (v11 < v10)
  {
    v12 = v10;
    if (sub_181A1172C(a3, a4) || sub_181A11950(a3, a4))
    {
      return result;
    }

    v11 = *(a4 + 20);
    v10 = v12;
  }

  if (v11 != v10)
  {
    v13 = 17;
    goto LABEL_11;
  }

  if (sub_181A11DF0(a3, 0, a4))
  {
    v13 = 7;
LABEL_11:
    *(a3 + 36) = v13;
    return result;
  }

  if (*(a4 + 24))
  {
    v14 = *(a3 + 112);
    v62 = *v9;
    v63 = v14;
    *&v64 = *(a3 + 128);
    *(&v64 + 1) = a3;
    *(a3 + 112) = sub_181A12008;
    *(a3 + 96) = &v62;
    *(a3 + 104) = sub_181A120A0;
    *(a3 + 120) = sub_181A12134;
    *(a3 + 128) = sub_181A12140;
    if (!*(a3 + 72))
    {
      v15 = sub_181902484(64, 0x10F2040695A4BFELL);
      if (!v15)
      {
LABEL_143:
        v13 = 7;
        goto LABEL_151;
      }

      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 20) = 1;
      *(v15 + 24) = 0;
      v16 = v15;
      sub_1818900D0(v15, &byte_181A2878D, 0, 0, 0);
      *(a3 + 72) = v16;
    }
  }

  v66 = 0;
  v13 = sub_181A1214C(a3, a2, a4, a1 == 18, &v66, &v65);
  if (v13 | v65)
  {
    goto LABEL_151;
  }

  v59 = v66;
  v17 = *(*(a4 + 72) + 8 * v66);
  if (v17)
  {
    v18 = 104;
    if (a1 == 18)
    {
      v18 = 112;
    }

    v61 = v18;
    while (1)
    {
      v60 = v17;
      v19 = *(v17 + 16);
      if (!*(a4 + 28))
      {
        break;
      }

      if (*v19 == 1 && bswap64(*(v19 + 1)) == a2)
      {
        goto LABEL_118;
      }

LABEL_22:
      v17 = *(v60 + 24);
      if (!v17)
      {
        goto LABEL_122;
      }
    }

    v20 = *(a4 + 16);
    if (v20 >= 1)
    {
      v21 = 0;
      while (1)
      {
        if (!*(*(a4 + 56) + v21))
        {
          v26 = *v19;
          v22 = 1;
          if (*v19)
          {
            v27 = v26 == 5;
          }

          else
          {
            v27 = 1;
          }

          if (!v27 && v26 != 255)
          {
            if ((v26 - 1) < 2)
            {
              v22 = 9;
            }

            else
            {
              v28 = v19[1];
              if (v28 < 0)
              {
                v38 = v19[2];
                if (v19[2] < 0)
                {
                  v46 = v19[3];
                  if (v46 < 0)
                  {
                    v68 = 0;
                    v47 = sub_1818C7200(v19 + 1, &v68);
                    v28 = v68;
                    if (HIDWORD(v68))
                    {
                      v28 = -1;
                    }

                    v29 = (v47 + 1);
                  }

                  else
                  {
                    v28 = ((v28 & 0x7F) << 14) | ((v38 & 0x7F) << 7) | v46;
                    v29 = 4;
                  }
                }

                else
                {
                  v28 = v38 | ((v28 & 0x7F) << 7);
                  v29 = 3;
                }
              }

              else
              {
                v29 = 2;
              }

              v22 = v29 + v28;
            }
          }

          v19 += v22;
          goto LABEL_31;
        }

        v67 = 0;
        v24 = v19 + 1;
        v23 = *v19;
        (*(a3 + v61))(*(a3 + 96), *(*(a4 + 48) + 4 * v21), &v67);
        if (v67)
        {
          v25 = byte_181A203AA[*(v67 + 10) & 0x3F];
        }

        else
        {
          sub_1819012D0(99877);
          v25 = 0;
        }

        if (v25 != v23)
        {
          goto LABEL_22;
        }

        if ((v23 - 1) > 1)
        {
          v33 = *v24;
          if (v33 < 0)
          {
            v36 = v19[2];
            if (v19[2] < 0)
            {
              v37 = v19[3];
              if (v37 < 0)
              {
                v68 = 0;
                v39 = sub_1818C7200(v19 + 1, &v68);
                if (HIDWORD(v68))
                {
                  v33 = -1;
                }

                else
                {
                  v33 = v68;
                }

                v34 = v39;
              }

              else
              {
                v33 = ((v33 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v37;
                v34 = 3;
              }
            }

            else
            {
              v33 = v36 | ((v33 & 0x7F) << 7);
              v34 = 2;
            }
          }

          else
          {
            v34 = 1;
          }

          if (!v67)
          {
            sub_1819012D0(93690);
            goto LABEL_90;
          }

          v40 = *(v67 + 10);
          if ((v40 & 2) != 0 && *(v67 + 22) == 1)
          {
            v41 = *(v67 + 4);
            goto LABEL_91;
          }

          if ((v40 & 0x10) != 0)
          {
            v41 = *(v67 + 4);
            if ((*(v67 + 10) & 0x400) != 0)
            {
              v41 += *v67;
            }
          }

          else
          {
            if ((v40 & 1) == 0)
            {
              v41 = sub_18193CB44(v67, 1);
              goto LABEL_91;
            }

LABEL_90:
            v41 = 0;
          }

LABEL_91:
          if (v41 != v33)
          {
            goto LABEL_22;
          }

          if (v23 == 3)
          {
            if (!v67)
            {
              goto LABEL_103;
            }

            v42 = *(v67 + 10);
            if ((~v42 & 0x202) == 0 && *(v67 + 22) == 1)
            {
              v43 = *(v67 + 1);
              goto LABEL_104;
            }

            if (v42)
            {
LABEL_103:
              v43 = 0;
            }

            else
            {
              v44 = sub_18193CB70(v67, 1);
LABEL_98:
              v43 = v44;
            }

LABEL_104:
            v45 = &v24[v34];
            if (v33 >= 1 && memcmp(v45, v43, v33))
            {
              goto LABEL_22;
            }

            v19 = &v45[v33];
            goto LABEL_107;
          }

          v44 = sqlite3_value_blob(v67);
          goto LABEL_98;
        }

        v30 = COERCE_DOUBLE(bswap64(*(v19 + 1)));
        v19 += 9;
        if (v23 != 1)
        {
          if (v67)
          {
            v35 = *(v67 + 10);
            if ((v35 & 8) != 0)
            {
              result = *v67;
            }

            else if ((v35 & 0x24) != 0)
            {
              result = *v67;
            }

            else if ((v35 & 0x12) != 0)
            {
              result = sub_18193CF90(v67);
            }

            else
            {
              result = 0.0;
            }
          }

          else
          {
            sub_1819012D0(92272);
            result = 0.0;
          }

          if (result != v30)
          {
            goto LABEL_22;
          }

          goto LABEL_107;
        }

        if (!v67)
        {
          break;
        }

        v31 = *(v67 + 10);
        if ((v31 & 0x24) != 0)
        {
          v32 = *v67;
          goto LABEL_60;
        }

        if ((v31 & 8) != 0)
        {
          result = *v67;
          if (*v67 >= -9.22337204e18)
          {
            if (result <= 9.22337204e18)
            {
              v32 = result;
            }

            else
            {
              v32 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v32 = 0x8000000000000000;
          }
        }

        else
        {
          if ((v31 & 0x12) == 0 || !*(v67 + 1))
          {
            goto LABEL_59;
          }

          v32 = sub_18193CFCC(v67);
        }

LABEL_60:
        if (v32 != *&v30)
        {
          goto LABEL_22;
        }

LABEL_107:
        v20 = *(a4 + 16);
LABEL_31:
        if (++v21 >= v20)
        {
          goto LABEL_118;
        }
      }

      sub_1819012D0(92237);
LABEL_59:
      v32 = 0;
      goto LABEL_60;
    }

LABEL_118:
    v48 = v60;
    if (*(v60 + 1) && !(*(a3 + 128))(*(a3 + 96)) && !*(a3 + 24))
    {
      *(v60 + 1) = 0;
    }

    goto LABEL_148;
  }

LABEL_122:
  ++*(a4 + 64);
  v49 = 32;
  v68 = 32;
  v50 = *(a4 + 28);
  if (v50 >= *(a4 + 16))
  {
LABEL_131:
    if (v50)
    {
      v49 += 9;
      v68 = v49;
    }

    v53 = sub_18191FD18(a3, v49);
    if (v53)
    {
      v48 = v53;
      result = 0.0;
      *v53 = 0u;
      *(v53 + 16) = 0u;
      *(v53 + 16) = v53 + 32;
      v68 = 0;
      v54 = *(a4 + 28);
      if (v54)
      {
        *(v53 + 32) = 1;
        *(v53 + 33) = HIBYTE(a2);
        *(v53 + 34) = BYTE6(a2);
        *(v53 + 35) = BYTE5(a2);
        *(v53 + 36) = BYTE4(a2);
        *(v53 + 37) = BYTE3(a2);
        *(v53 + 38) = BYTE2(a2);
        *(v53 + 39) = BYTE1(a2);
        *(v53 + 40) = a2;
        v68 = 9;
        v54 = *(a4 + 28);
      }

      if (v54 < *(a4 + 16))
      {
        v55 = v54;
        do
        {
          v67 = 0;
          v56 = (a3 + 104);
          if (a1 != 18 || (v56 = (a3 + 112), *(*(a4 + 56) + v55)))
          {
            (*v56)(*v9);
          }

          sub_181A12484(*(v48 + 16) + v68, v67, &v68);
          ++v55;
        }

        while (v55 < *(a4 + 16));
      }

      if (*(a3 + 24) || (*(a3 + 128))(*(a3 + 96)))
      {
        *(v48 + 1) = 1;
      }

      *(v48 + 2) = *(a4 + 16);
      *(v48 + 8) = v68;
      *v48 = a1;
      v57 = *(a4 + 72);
      *(v48 + 24) = *(v57 + 8 * v59);
      *(v57 + 8 * v59) = v48;
LABEL_148:
      if (*(a3 + 16))
      {
        v13 = sub_181A12800(a1, a3, a4, v48);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_151;
    }

    goto LABEL_143;
  }

  v51 = v50;
  while (1)
  {
    v52 = *(*(a4 + 48) + 4 * v51);
    v67 = 0;
    if (a1 == 18)
    {
      if (*(*(a4 + 56) + v51))
      {
        (*(a3 + 112))(*(a3 + 96), v52, &v67);
      }
    }

    else
    {
      v13 = (*(a3 + 104))(*(a3 + 96), v52, &v67);
      if (v13)
      {
        break;
      }
    }

    v13 = sub_181A12484(0, v67, &v68);
    if (v13)
    {
      break;
    }

    if (++v51 >= *(a4 + 16))
    {
      v50 = *(a4 + 28);
      v49 = v68;
      goto LABEL_131;
    }
  }

LABEL_151:
  if (*(a4 + 24))
  {
    result = *&v62;
    v58 = v63;
    *v9 = v62;
    *(a3 + 112) = v58;
    *(a3 + 128) = v64;
  }

  if (v13)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_181A1172C(uint64_t a1, uint64_t a2)
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v4 = &v27;
  if (!*(a1 + 32))
  {
    v4 = 0;
  }

  v5 = sub_18191E83C(a1, *a1, *(a1 + 8), *(a2 + 8), &v32 + 1, &v32, 0, &v31, &v30, &v29, &v28, v4);
  *(a1 + 36) = v5;
  if (v5)
  {
    goto LABEL_15;
  }

  v6 = *(a2 + 16);
  v7 = HIDWORD(v32);
  if (SHIDWORD(v32) < v6 || *(a2 + 28) != v27)
  {
    *(a1 + 36) = 17;
    goto LABEL_15;
  }

  if (SHIDWORD(v32) < 1)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v10 = v28;
  do
  {
    if (v9 >= v6)
    {
      if (!*(v10 + v9))
      {
        goto LABEL_10;
      }

LABEL_9:
      v8 = 17;
      *(a1 + 36) = 17;
      goto LABEL_10;
    }

    if (*(*(a2 + 56) + v9) != *(v10 + v9))
    {
      goto LABEL_9;
    }

LABEL_10:
    ++v9;
  }

  while (v7 != v9);
  if (!v8)
  {
LABEL_24:
    v14 = *(a2 + 32);
    v15 = v31;
    v16 = v32;
    *(a2 + 16) = v7;
    *(a2 + 20) = v16;
    v17 = v29;
    v18 = v30;
    *(a2 + 32) = v15;
    *(a2 + 40) = v18;
    v19 = v28;
    *(a2 + 48) = v17;
    *(a2 + 56) = v19;
    v31 = v14;
  }

  if (*(a1 + 16))
  {
    v20 = *(a1 + 64) + v7 - v6;
    if (v7 >= 0x80)
    {
      v22 = v7;
      v21 = 1;
      do
      {
        v23 = v22 >> 14;
        v22 >>= 7;
        ++v21;
      }

      while (v23);
    }

    else
    {
      v21 = 1;
    }

    v24 = v20 + v21;
    v25 = 1;
    if (v6 >= 0x80)
    {
      do
      {
        v26 = v6 >> 14;
        v6 >>= 7;
        ++v25;
      }

      while (v26);
    }

    *(a1 + 64) = v24 - v25;
  }

LABEL_15:
  v11 = v31;
  if (v31)
  {
    v12 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_21;
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
LABEL_21:
      (*v12)(v11);
    }
  }

  return *(a1 + 36);
}

uint64_t sub_181A11950(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  pStmt = 0;
  v38 = sub_181A12C5C(*a1, a2, &pStmt);
  if (v38)
  {
    goto LABEL_56;
  }

  if (sqlite3_step(pStmt) != 100 || (v4 = *(v2 + 68), v4 < 1))
  {
    v38 = 0;
    goto LABEL_56;
  }

  v5 = 0;
  v38 = 0;
  v39 = v2;
  while (2)
  {
    v37 = v5;
    v6 = (*(v2 + 72) + 8 * v5);
    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_6;
    }

    while (2)
    {
      v8 = *(v7 + 2);
      v9 = *(v2 + 16);
      v40 = v9;
      if (v9 == v8 || v9 <= v8)
      {
        goto LABEL_11;
      }

      v10 = pStmt;
      while (1)
      {
        v13 = sqlite3_column_type(v10, v8);
        v14 = v13;
        if (v13 - 1 >= 2)
        {
          if (v13 == 5)
          {
            v15 = 1;
          }

          else
          {
            v16 = sqlite3_column_bytes(v10, v8);
            if (v16 >= 0x80)
            {
              v18 = v16;
              v17 = 1;
              do
              {
                v19 = v18 >> 14;
                v18 >>= 7;
                ++v17;
              }

              while (v19);
            }

            else
            {
              v17 = 1;
            }

            v15 = v16 + v17 + 1;
          }
        }

        else
        {
          v15 = 9;
        }

        v20 = *(v7 + 8);
        if (sqlite3_initialize())
        {
          break;
        }

        v21 = sub_181902484(v15 + v20 + 32, 451894878);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        *(a1 + 56) += xmmword_1ED452EC0(v21);
        v23 = *(v7 + 16);
        *v22 = *v7;
        *(v22 + 16) = v23;
        *(v22 + 16) = v22 + 32;
        memcpy((v22 + 32), *(v7 + 16), *(v7 + 8));
        v24 = *(v22 + 8);
        *(v22 + 8) = v24 + 1;
        *(v22 + 32 + v24) = v14;
        if (v14 > 2u)
        {
          if (v14 == 3)
          {
            v25 = sqlite3_column_bytes(v10, v8);
            v26 = sqlite3_column_text(v10, v8);
            v29 = (*(v22 + 16) + *(v22 + 8));
            if (v25 > 0x7F)
            {
              if (v25 >> 14)
              {
                v30 = sub_1819436D0(v29, v25);
              }

              else
              {
                v29->i8[0] = (v25 >> 7) | 0x80;
                v29->i8[1] = v25 & 0x7F;
                v30 = 2;
              }
            }

            else
            {
              v29->i8[0] = v25;
              v30 = 1;
            }

            v31 = *(v22 + 8) + v30;
            *(v22 + 8) = v31;
            v32 = *(v22 + 16);
            v33 = v25;
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_50;
            }

            v25 = sqlite3_column_bytes(v10, v8);
            v26 = sqlite3_column_blob(v10, v8);
            v27 = (*(v22 + 16) + *(v22 + 8));
            if (v25 > 0x7F)
            {
              if (v25 >> 14)
              {
                v28 = sub_1819436D0(v27, v25);
              }

              else
              {
                v27->i8[0] = (v25 >> 7) | 0x80;
                v27->i8[1] = v25 & 0x7F;
                v28 = 2;
              }
            }

            else
            {
              v27->i8[0] = v25;
              v28 = 1;
            }

            v31 = *(v22 + 8) + v28;
            *(v22 + 8) = v31;
            v32 = *(v22 + 16);
            v33 = v25;
          }

          memcpy((v32 + v31), v26, v33);
        }

        else if (v14 == 1)
        {
          *(*(v22 + 16) + *(v22 + 8)) = bswap64(sqlite3_column_int64(v10, v8));
          v25 = 8;
        }

        else
        {
          if (v14 != 2)
          {
            goto LABEL_50;
          }

          *(*(v22 + 16) + *(v22 + 8)) = bswap64(COERCE_UNSIGNED_INT64(sqlite3_column_double(v10, v8)));
          v25 = 8;
        }

        *(v22 + 8) += v25;
LABEL_50:
        *(a1 + 56) -= xmmword_1ED452EC0(v7);
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
            goto LABEL_17;
          }

          v11 = &xmmword_1ED452F28;
        }

        else
        {
          v11 = &off_1ED452EB0;
        }

        (*v11)(v7);
LABEL_17:
        *v6 = v22;
        v12 = *(v22 + 2) + 1;
        *(v22 + 2) = v12;
        *(v22 + 4) += v15;
        *(a1 + 64) += v15;
        v8 = v12;
        v7 = v22;
        if (v40 <= v12)
        {
          goto LABEL_10;
        }
      }

      v38 = 7;
LABEL_10:
      v7 = *v6;
      v2 = v39;
LABEL_11:
      v6 = (v7 + 24);
      v7 = *(v7 + 24);
      if (v7)
      {
        continue;
      }

      break;
    }

    v4 = *(v2 + 68);
LABEL_6:
    v5 = v37 + 1;
    if (v37 + 1 < v4)
    {
      continue;
    }

    break;
  }

LABEL_56:
  *(a1 + 36) = v38;
  v34 = sqlite3_finalize(pStmt);
  v35 = *(a1 + 36);
  if (!v35)
  {
    *(a1 + 36) = v34;
    return v34;
  }

  return v35;
}

BOOL sub_181A11DF0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 68);
  if (v6 && *(a3 + 64) < v6 / 2)
  {
    return 0;
  }

  if (v6)
  {
    v8 = 2 * v6;
  }

  else
  {
    v8 = 256;
  }

  if (sqlite3_initialize())
  {
    if (!a1)
    {
      return *(a3 + 68) == 0;
    }

    v9 = 0;
  }

  else
  {
    v11 = sub_181902484(8 * v8, 451894878);
    v9 = v11;
    if (!a1)
    {
      goto LABEL_15;
    }

    if (v11)
    {
      v10 = xmmword_1ED452EC0(v11);
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  *(a1 + 56) += v10;
LABEL_15:
  if (!v9)
  {
    return *(a3 + 68) == 0;
  }

  bzero(v9, 8 * v8);
  v12 = *(a3 + 68);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(a3 + 72) + 8 * i);
      if (v14)
      {
        do
        {
          if (a2)
          {
            v15 = *v14 == 9;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = sub_181A130E4(a3, v16, *(v14 + 16), v8);
          v18 = *(v14 + 24);
          *(v14 + 24) = *(v9 + v17);
          *(v9 + v17) = v14;
          v14 = v18;
        }

        while (v18);
        v12 = *(a3 + 68);
      }
    }
  }

  v19 = *(a3 + 72);
  if (a1)
  {
    if (v19)
    {
      v20 = xmmword_1ED452EC0(*(a3 + 72));
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 56) -= v20;
  }

  if (!v19)
  {
    goto LABEL_41;
  }

  v21 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
    --qword_1ED456A90;
    off_1ED452EB0(v19);
    v19 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_41;
    }

    v21 = &xmmword_1ED452F28;
  }

  (*v21)(v19);
LABEL_41:
  result = 0;
  *(a3 + 68) = v8;
  *(a3 + 72) = v9;
  return result;
}

uint64_t sub_181A12008(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v9 = 0;
  result = (*(a1 + 16))(*a1, a2, &v9);
  v7 = v9;
  if (v4 == 1 && !result)
  {
    if (v9)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v9 + 20)))
      {
        v7 = *(*(a1 + 40) + 72);
      }
    }

    else
    {
      v8 = result;
      sub_1819012D0(99877);
      result = v8;
      v7 = v9;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_181A120A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v9 = 0;
  result = (*(a1 + 8))(*a1, a2, &v9);
  v7 = v9;
  if (v4 == 1 && !result)
  {
    if (v9)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v9 + 20)))
      {
        v7 = *(*(a1 + 40) + 72);
      }
    }

    else
    {
      v8 = result;
      sub_1819012D0(99877);
      result = v8;
      v7 = v9;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_181A1214C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, _DWORD *a6)
{
  if (!*(a3 + 28))
  {
    v10 = *(a3 + 16);
    if (v10 < 1)
    {
      v8 = 0;
      goto LABEL_3;
    }

    v13 = 0;
    v8 = 0;
    if (a4)
    {
      v14 = 112;
    }

    else
    {
      v14 = 104;
    }

    while (1)
    {
      if (!*(*(a3 + 56) + v13))
      {
        goto LABEL_13;
      }

      v29 = 0;
      result = (*(a1 + v14))(*(a1 + 96), *(*(a3 + 48) + 4 * v13), &v29);
      if (result)
      {
        return result;
      }

      if (v29)
      {
        v17 = *(v29 + 10);
        v18 = v17 & 0x3F;
        v19 = byte_181A203AA[v17 & 0x3F];
        v8 ^= (8 * v8) ^ v19;
        if ((v19 - 1) <= 1)
        {
          if ((0x50505050uLL >> v18))
          {
            if ((v17 & 0x24) != 0)
            {
              v16 = *v29;
            }

            else if ((v17 & 8) != 0)
            {
              v26 = *v29;
              if (*v29 > 9.22337204e18)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (*v29 >= -9.22337204e18)
              {
                v16 = v26;
              }

              else
              {
                v16 = 0x8000000000000000;
              }
            }

            else if ((v17 & 0x12) != 0 && *(v29 + 1))
            {
              v16 = sub_18193CFCC(v29);
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            if ((v17 & 8) != 0)
            {
              v15 = *v29;
            }

            else if ((v17 & 0x24) != 0)
            {
              v15 = *v29;
            }

            else if ((v17 & 0x12) != 0)
            {
              v15 = sub_18193CF90(v29);
            }

            else
            {
              v15 = 0.0;
            }

            v16 = *&v15;
          }

          v8 ^= HIDWORD(v16) ^ (8 * (v16 ^ (8 * v8) ^ v8)) ^ v16 ^ (8 * v8);
          goto LABEL_12;
        }

        if ((v19 - 3) <= 1)
        {
          if (((0x4000000040004uLL >> v18) & 1) == 0)
          {
            v20 = sqlite3_value_blob(v29);
            goto LABEL_38;
          }

          if ((~v17 & 0x202) == 0 && *(v29 + 22) == 1)
          {
            v21 = *(v29 + 1);
            v22 = v29;
            goto LABEL_39;
          }

          if (v17)
          {
            v21 = 0;
            v22 = v29;
            goto LABEL_39;
          }

          v20 = sub_18193CB70(v29, 1);
LABEL_38:
          v21 = v20;
          v22 = v29;
          if (v29)
          {
LABEL_39:
            v23 = *(v22 + 10);
            if ((v23 & 2) != 0 && *(v22 + 22) == 1)
            {
              v24 = *(v22 + 4);
              if (!v21)
              {
                goto LABEL_42;
              }

LABEL_62:
              if (v24 >= 1)
              {
                v27 = v24;
                do
                {
                  v28 = *v21++;
                  v8 ^= v28 ^ (8 * v8);
                  --v27;
                }

                while (v27);
              }

              goto LABEL_12;
            }

            if ((v23 & 0x10) == 0)
            {
              if (v23)
              {
                v24 = 0;
                if (!v21)
                {
LABEL_42:
                  if ((0xFFFEFFFFFFFEFFFELL >> v18))
                  {
                    return 7;
                  }

                  v25 = v24 <= 0;
                  result = 7;
                  if (!v25)
                  {
                    return result;
                  }

                  goto LABEL_12;
                }
              }

              else
              {
                v24 = sub_18193CB44(v22, 1);
                if (!v21)
                {
                  goto LABEL_42;
                }
              }

              goto LABEL_62;
            }

            v24 = *(v22 + 4);
            if ((*(v22 + 10) & 0x400) != 0)
            {
              v24 += *v22;
              if (!v21)
              {
                goto LABEL_42;
              }

              goto LABEL_62;
            }
          }

          else
          {
            sub_1819012D0(93690);
            v24 = 0;
          }

          if (!v21)
          {
            goto LABEL_42;
          }

          goto LABEL_62;
        }
      }

      else
      {
        sub_1819012D0(99877);
        v8 ^= 8 * v8;
      }

      *a6 = 1;
LABEL_12:
      v10 = *(a3 + 16);
LABEL_13:
      if (++v13 >= v10)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = HIDWORD(a2) ^ a2 ^ (8 * a2);
LABEL_3:
  result = 0;
  *a5 = v8 % *(a3 + 68);
  return result;
}

uint64_t sub_181A12484(uint64_t a1, sqlite3_value *a2, void *a3)
{
  if (!a2)
  {
    if (a1)
    {
      *a1 = 0;
    }

LABEL_13:
    v7 = 1;
    v8 = 0;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_64;
  }

  v3 = *(a2 + 10) & 0x3F;
  v4 = byte_181A203AA[v3];
  if (a1)
  {
    *a1 = v4;
  }

  if ((v4 - 1) >= 2)
  {
    if (v4 == 5)
    {
      goto LABEL_13;
    }

    if ((0x4000000040004uLL >> v3))
    {
      v14 = *(a2 + 10);
      if ((~v14 & 0x202) == 0 && *(a2 + 22) == 1)
      {
        v15 = *(a2 + 1);
        v16 = *(a2 + 10);
        if ((v16 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      if (v14)
      {
        v15 = 0;
        v16 = *(a2 + 10);
        if ((v16 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v9 = a1;
      v17 = a2;
      v18 = a3;
      v12 = sub_18193CB70(a2, 1);
      a2 = v17;
      a3 = v18;
    }

    else
    {
      v9 = a1;
      v10 = a3;
      v11 = a2;
      v12 = sqlite3_value_blob(a2);
      a2 = v11;
      a3 = v10;
    }

    v15 = v12;
    a1 = v9;
    v16 = *(a2 + 10);
    if ((v16 & 2) == 0)
    {
      goto LABEL_40;
    }

LABEL_37:
    if (*(a2 + 22) == 1)
    {
      v22 = *(a2 + 4);
      if (v15)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

LABEL_40:
    if ((v16 & 0x10) != 0)
    {
      v22 = *(a2 + 4);
      if ((v16 & 0x400) != 0)
      {
        v22 += *a2;
      }

      if (v15)
      {
        goto LABEL_51;
      }
    }

    else if (v16)
    {
      v22 = 0;
      if (v15)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v23 = a1;
      v24 = a3;
      v25 = sub_18193CB44(a2, 1);
      a3 = v24;
      v22 = v25;
      a1 = v23;
      if (v15)
      {
        goto LABEL_51;
      }
    }

LABEL_47:
    v8 = 7;
    if (((0xFFFEFFFFFFFEFFFELL >> v3) & 1) != 0 || v22 > 0)
    {
      return v8;
    }

LABEL_51:
    if (v22 >= 0x80)
    {
      v26 = 1;
      v27 = v22;
      do
      {
        v28 = v27 >> 14;
        v27 >>= 7;
        ++v26;
      }

      while (v28);
      if (!a1)
      {
        goto LABEL_63;
      }

      if (v22 >> 14)
      {
        v29 = a1;
        v30 = a3;
        sub_1819436D0((a1 + 1), v22);
        a1 = v29;
        a3 = v30;
        if (v22 < 1)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a1 + 1) = (v22 >> 7) | 0x80;
        *(a1 + 2) = v22 & 0x7F;
      }
    }

    else
    {
      if (!a1)
      {
        v26 = 1;
        goto LABEL_63;
      }

      *(a1 + 1) = v22;
      v26 = 1;
      if (v22 < 1)
      {
LABEL_63:
        v7 = v22 + v26 + 1;
        v8 = 0;
        if (!a3)
        {
          return v8;
        }

LABEL_64:
        *a3 += v7;
        return v8;
      }
    }

    v31 = v15;
    v32 = a3;
    memcpy((a1 + v26 + 1), v31, v22);
    a3 = v32;
    goto LABEL_63;
  }

  if (a1)
  {
    v5 = *(a2 + 10);
    if ((0x50505050uLL >> v3))
    {
      if ((v5 & 0x24) != 0)
      {
        v13 = *a2;
      }

      else if ((v5 & 8) != 0)
      {
        v36 = *a2;
        if (*a2 >= -9.22337204e18)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
          if (v36 <= 9.22337204e18)
          {
            v13 = v36;
          }
        }

        else
        {
          v13 = 0x8000000000000000;
        }
      }

      else if ((v5 & 0x12) != 0)
      {
        v13 = *(a2 + 1);
        if (v13)
        {
          v19 = a1;
          v20 = a3;
          v21 = sub_18193CFCC(a2);
          a3 = v20;
          v13 = v21;
          a1 = v19;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      if ((v5 & 8) != 0)
      {
        v6 = *a2;
      }

      else if ((v5 & 0x24) != 0)
      {
        v6 = *a2;
      }

      else if ((v5 & 0x12) != 0)
      {
        v34 = a1;
        v35 = a3;
        v6 = sub_18193CF90(a2);
        a1 = v34;
        a3 = v35;
      }

      else
      {
        v6 = 0.0;
      }

      v13 = *&v6;
    }

    *(a1 + 1) = bswap64(v13);
  }

  v7 = 9;
  v8 = 0;
  if (a3)
  {
    goto LABEL_64;
  }

  return v8;
}

uint64_t sub_181A12800(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = 2;
  if (*a4 == 18)
  {
    if (*(a3 + 28))
    {
      v39 = 11;
    }

    if (a1 != 9 && *(a3 + 16) >= 1)
    {
      v7 = 0;
      do
      {
        v40 = 0;
        (*(a2 + 112))(*(a2 + 96), *(*(a3 + 48) + 4 * v7), &v40);
        sub_181A12484(0, v40, &v39);
        ++v7;
      }

      while (v7 < *(a3 + 16));
    }

    goto LABEL_88;
  }

  if (a1 == 9)
  {
    v8 = *(a4 + 8);
    v39 = v8 + 2;
    if (*a2)
    {
      v9 = *(*a2 + 368);
      if (v9)
      {
        if ((*(v9 + 60) & 0x80000000) == 0)
        {
          v10 = v8 + 2 + v8;
          goto LABEL_87;
        }
      }
    }

    goto LABEL_88;
  }

  v11 = *(a4 + 16);
  v12 = *(a3 + 28);
  if (v12)
  {
    v39 = 12;
    v11 += 9;
  }

  if (v12 >= *(a3 + 16))
  {
    goto LABEL_88;
  }

  while (1)
  {
    v14 = *(*(a3 + 48) + 4 * v12);
    v38 = 0;
    (*(a2 + 112))(*(a2 + 96), v14, &v38);
    v15 = v38;
    if (!v38)
    {
      return 7;
    }

    v16 = v11 + 1;
    v17 = *v11;
    if ((v17 - 1) >= 2)
    {
      if (v17 == 5)
      {
        v21 = 0;
        v22 = (0x5555555555555555uLL >> *(v38 + 10)) & 1;
        ++v11;
        goto LABEL_75;
      }

      v23 = *v16;
      if (v23 < 0)
      {
        v26 = v11[2];
        if (v11[2] < 0)
        {
          v27 = v11[3];
          if (v27 < 0)
          {
            v40 = 0;
            v29 = v38;
            v24 = sub_1818C7200(v11 + 1, &v40);
            v15 = v29;
            if (v40 >> 32)
            {
              v23 = -1;
            }

            else
            {
              v23 = v40;
            }
          }

          else
          {
            v23 = ((v23 & 0x7F) << 14) | ((v26 & 0x7F) << 7) | v27;
            v24 = 3;
          }
        }

        else
        {
          v23 = v26 | ((v23 & 0x7F) << 7);
          v24 = 2;
        }
      }

      else
      {
        v24 = 1;
      }

      v30 = &v16[v24];
      v31 = *(v15 + 10);
      if (byte_181A203AA[v31 & 0x3F] != v17)
      {
        goto LABEL_73;
      }

      if ((v31 & 2) != 0 && *(v15 + 22) == 1)
      {
        if (v23 != *(v15 + 4))
        {
          goto LABEL_73;
        }
      }

      else if ((v31 & 0x10) != 0)
      {
        v32 = *(v15 + 4);
        if ((*(v15 + 10) & 0x400) != 0)
        {
          v32 += *v15;
        }

        if (v23 != v32)
        {
          goto LABEL_73;
        }
      }

      else if (v31)
      {
        if (v23)
        {
          goto LABEL_73;
        }
      }

      else if (v23 != sub_18193CB44(v15, 1))
      {
        goto LABEL_73;
      }

      if (!v23 || (v33 = sqlite3_value_blob(v38), !memcmp(v30, v33, v23)))
      {
        LODWORD(v22) = 0;
LABEL_74:
        v21 = v24 + v23;
        v11 = &v30[v23];
        goto LABEL_75;
      }

LABEL_73:
      LODWORD(v22) = 1;
      goto LABEL_74;
    }

    v18 = *(v38 + 10);
    if (byte_181A203AA[v18 & 0x3F] == v17)
    {
      v19 = COERCE_DOUBLE(bswap64(*(v11 + 1)));
      if (v17 == 1)
      {
        if ((v18 & 0x24) != 0)
        {
          v20 = *&v19 == *v38;
        }

        else if ((v18 & 8) != 0)
        {
          v28 = *v38;
          if (*v38 >= -9.22337204e18)
          {
            v34 = v28 <= 9.22337204e18 ? v28 : 0x7FFFFFFFFFFFFFFFLL;
            v20 = *&v19 == v34;
          }

          else
          {
            v20 = *&v19 == 0x8000000000000000;
          }
        }

        else
        {
          v20 = (v18 & 0x12) != 0 && *(v38 + 1) ? *&v19 == sub_18193CFCC(v38) : *&v19 == 0;
        }
      }

      else
      {
        if ((v18 & 8) != 0)
        {
          v25 = *v38;
        }

        else if ((v18 & 0x24) != 0)
        {
          v25 = *v38;
        }

        else
        {
          v25 = (v18 & 0x12) != 0 ? sub_18193CF90(v38) : 0.0;
        }

        v20 = v25 == v19;
      }

      LODWORD(v22) = !v20;
    }

    else
    {
      LODWORD(v22) = 1;
    }

    v11 += 9;
    v21 = 8;
LABEL_75:
    if (!v22)
    {
      if (*(*(a3 + 56) + v12))
      {
        v13 = v39 + v21 + 2;
      }

      else
      {
        v13 = v39 + 2;
      }

      v39 = v13;
      goto LABEL_20;
    }

    if (*(*(a3 + 56) + v12))
    {
      break;
    }

    v39 += v21 + 1;
    sub_181A12484(0, v38, &v39);
LABEL_20:
    if (++v12 >= *(a3 + 16))
    {
      goto LABEL_88;
    }
  }

  v10 = *(a4 + 8) + 2;
LABEL_87:
  v39 = v10;
LABEL_88:
  v36 = *(a4 + 4);
  result = 0;
  if (v39 > v36)
  {
    v37 = v39 - v36;
    *(a4 + 4) = v39;
    *(a2 + 64) += v37;
  }

  return result;
}

uint64_t sub_181A12C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v15[0] = 0;
  v15[1] = 0;
  v14 = 0;
  *a3 = 0;
  sub_181A12E14(v15, &v14, "SELECT");
  if (*(a2 + 16) >= 1)
  {
    v7 = **(a2 + 40);
    if (!v7)
    {
      v7 = "NULL";
    }

    sub_181A12E14(v15, &v14, "%s%s", " ", v7);
    if (*(a2 + 16) >= 2)
    {
      v8 = 1;
      do
      {
        v9 = *(*(a2 + 40) + 8 * v8);
        if (!v9)
        {
          v9 = "NULL";
        }

        sub_181A12E14(v15, &v14, "%s%s", ", ", v9);
        ++v8;
      }

      while (v8 < *(a2 + 16));
    }
  }

  v10 = v14;
  v11 = v15[0];
  if (!v14)
  {
    v10 = sub_1818954B4(a1, v15[0], 0xFFFFFFFFLL, 128, 0, a3, 0, v6);
  }

  if (v11)
  {
    v12 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_17:
      (*v12)(v11);
      return v10;
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
      goto LABEL_17;
    }
  }

  return v10;
}

char *sub_181A12E14(char *result, _DWORD *a2, char *a3, ...)
{
  va_start(va, a3);
  if (*a2)
  {
    return result;
  }

  v4 = result;
  result = sqlite3_vmprintf(a3, va);
  if (!result)
  {
    *a2 = 7;
    return result;
  }

  v5 = result;
  v6 = strlen(result);
  if (!*a2)
  {
    v7 = v6 & 0x3FFFFFFF;
    v8 = *(v4 + 2);
    v9 = *(v4 + 3);
    v10 = (v6 & 0x3FFFFFFFu) + 1 + v8;
    if (v10 <= v9)
    {
      v13 = v6;
      v16 = *v4;
      goto LABEL_18;
    }

    if (v9)
    {
      v11 = *(v4 + 3);
    }

    else
    {
      v11 = 128;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v11 < v10);
    if (v12 >= 1073741696 && (v11 = 2147483391, v10 > 2147483391) || (v13 = v6, v14 = *v4, v15 = sqlite3_initialize(), !v11) || v15 || (v16 = sub_18190287C(v14, v11, 0x100004077774924)) == 0)
    {
      *a2 = 7;
      goto LABEL_20;
    }

    *v4 = v16;
    *(v4 + 3) = v11;
    if (!*a2)
    {
      v8 = *(v4 + 2);
LABEL_18:
      memcpy((v16 + v8), v5, v13 & 0x3FFFFFFF);
      v17 = *(v4 + 2) + v7;
      *(v4 + 2) = v17;
      *(*v4 + v17) = 0;
    }
  }

LABEL_20:
  v18 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v18)(v5);
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
    v18 = &xmmword_1ED452F28;
    return (*v18)(v5);
  }

  return result;
}

BOOL sub_181A12FF4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3)
  {
    return 1;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 8) + a2;
  if (v5 <= v4)
  {
    return 0;
  }

  if (v4)
  {
    v6 = *(a1 + 12);
  }

  else
  {
    v6 = 128;
  }

  do
  {
    v7 = v6;
    v6 *= 2;
  }

  while (v6 < v5);
  if (v7 < 1073741696 || (v6 = 2147483391, v5 <= 2147483391))
  {
    v10 = *a1;
    v11 = sqlite3_initialize();
    if (v6)
    {
      if (!v11)
      {
        v12 = sub_18190287C(v10, v6, 0x100004077774924);
        if (v12)
        {
          *a1 = v12;
          *(a1 + 12) = v6;
          return *a3 != 0;
        }
      }
    }

    *a3 = 7;
  }

  else
  {
    *a3 = 7;
  }

  return 1;
}

uint64_t sub_181A130E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 56);
    do
    {
      v9 = *a3;
      if (!a2 || *(v7 + v5))
      {
        if (*(v7 + v5))
        {
          v11 = a3 + 1;
          v10 = a3[1];
          v6 ^= v9 ^ (8 * v6);
          if ((v9 - 1) > 1)
          {
            if ((v10 & 0x80) != 0)
            {
              v17 = a3[2];
              if (a3[2] < 0)
              {
                v18 = a3[3];
                if (v18 < 0)
                {
                  v33 = 0;
                  v20 = a2;
                  v21 = a4;
                  v22 = sub_1818C7200(a3 + 1, &v33);
                  a2 = v20;
                  a4 = v21;
                  if (HIDWORD(v33))
                  {
                    v10 = -1;
                  }

                  else
                  {
                    v10 = v33;
                  }

                  v16 = v22;
                }

                else
                {
                  v10 = ((v10 & 0x7F) << 14) | ((v17 & 0x7F) << 7) | v18;
                  v16 = 3;
                }
              }

              else
              {
                v10 = v17 | ((v10 & 0x7F) << 7);
                v16 = 2;
              }
            }

            else
            {
              v16 = 1;
            }

            v23 = &v11[v16];
            if (v10 >= 1)
            {
              v24 = v10;
              v25 = v23;
              do
              {
                v26 = *v25++;
                v6 ^= v26 ^ (8 * v6);
                --v24;
              }

              while (v24);
            }

            a3 = &v23[v10];
          }

          else
          {
            v12 = bswap32(*(a3 + 5)) ^ (8 * v6) ^ v6;
            v6 = _byteswap_ulong(*(a3 + 1)) ^ (8 * v12) ^ v12;
            a3 += 9;
          }
        }

        else
        {
          v8 = 1;
          if (*a3)
          {
            v13 = v9 == 5;
          }

          else
          {
            v13 = 1;
          }

          if (!v13 && v9 != 255)
          {
            if ((v9 - 1) < 2)
            {
              v8 = 9;
            }

            else
            {
              v14 = a3[1];
              if (v14 < 0)
              {
                v19 = a3[2];
                if (a3[2] < 0)
                {
                  v27 = a3[3];
                  if (v27 < 0)
                  {
                    v33 = 0;
                    v28 = a2;
                    v29 = a4;
                    v30 = a3;
                    v31 = sub_1818C7200(a3 + 1, &v33);
                    a3 = v30;
                    a2 = v28;
                    a4 = v29;
                    if (HIDWORD(v33))
                    {
                      v14 = -1;
                    }

                    else
                    {
                      v14 = v33;
                    }

                    v15 = (v31 + 1);
                  }

                  else
                  {
                    v14 = ((v14 & 0x7F) << 14) | ((v19 & 0x7F) << 7) | v27;
                    v15 = 4;
                  }
                }

                else
                {
                  v14 = v19 | ((v14 & 0x7F) << 7);
                  v15 = 3;
                }
              }

              else
              {
                v15 = 2;
              }

              v8 = v15 + v14;
            }
          }

          a3 += v8;
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return v6 % a4;
}

uint64_t sub_181A13338(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 368);
    if (v1)
    {
      return *(*(v1 + 32) + 6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181A13358(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 368);
    if (v1)
    {
      return *(*v1 + 368);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t sub_181A13378(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2)
  {
    v7 = 80;
  }

  else
  {
    v7 = 84;
  }

  sub_181A141F4(a1, v7, a4);
  sub_181A14770(a1, *(a3 + 16), a4);
  v8 = *(a3 + 16);
  if (v8 >= 1 && !*a4)
  {
    v9 = *(a3 + 56);
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = v10 + v8;
    if ((v10 + v8) <= v11)
    {
      v17 = *a1;
      goto LABEL_19;
    }

    if (v11)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = 128;
    }

    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v13 < v12);
    if (v14 > 1073741695 && (v13 = 2147483391, v12 > 2147483391) || (v15 = *a1, v16 = sqlite3_initialize(), !v13) || v16 || (v17 = sub_18190287C(v15, v13, 0x100004077774924)) == 0)
    {
      *a4 = 7;
      goto LABEL_21;
    }

    *a1 = v17;
    *(a1 + 12) = v13;
    if (!*a4)
    {
      v10 = *(a1 + 8);
LABEL_19:
      memcpy((v17 + v10), v9, v8);
      *(a1 + 8) += v8;
    }
  }

LABEL_21:
  v18 = *(a3 + 8);
  result = strlen(v18);
  if ((result & 0x80000000) == 0 && !*a4)
  {
    v20 = (result + 1);
    v21 = *(a1 + 8);
    v22 = *(a1 + 12);
    v23 = v21 + v20;
    if ((v21 + v20) <= v22)
    {
      result = *a1;
LABEL_36:
      result = memcpy((result + v21), v18, v20);
      *(a1 + 8) += v20;
      return result;
    }

    if (v22)
    {
      v24 = *(a1 + 12);
    }

    else
    {
      v24 = 128;
    }

    do
    {
      v25 = v24;
      v24 *= 2;
    }

    while (v24 < v23);
    if (v25 <= 1073741695 || (v24 = 2147483391, v23 <= 2147483391))
    {
      v26 = *a1;
      result = sqlite3_initialize();
      if (v24)
      {
        if (!result)
        {
          result = sub_18190287C(v26, v24, 0x100004077774924);
          if (result)
          {
            *a1 = result;
            *(a1 + 12) = v24;
            if (*a4)
            {
              return result;
            }

            v21 = *(a1 + 8);
            goto LABEL_36;
          }
        }
      }
    }

    *a4 = 7;
  }

  return result;
}

uint64_t sub_181A13594(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v113[0] = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  if (sqlite3_initialize() || (v13 = sub_18190287C(0, 0x100uLL, 0x100004077774924)) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 7;
    v113[0] = 7;
    v18 = 128;
  }

  else
  {
    v17 = 0;
    v111 = v13;
    *v13 = 3219500;
    v112 = 0x10000000003;
    v16 = 3;
    v15 = 1;
    v18 = 256;
    v14 = 256;
  }

  if (a4)
  {
    v19 = "sqlite_stat1";
    for (i = a4; ; ++i)
    {
      if (*v19 == *i)
      {
        if (!*v19)
        {
          if (!v15)
          {
            goto LABEL_23;
          }

          v21 = v16 | 0x18;
          if (v21 <= v14)
          {
            goto LABEL_22;
          }

          v99 = a2;
          v22 = v13;
          do
          {
            v23 = v18;
            v18 *= 2;
          }

          while (v18 < v21);
          if (v23 <= 1073741695)
          {
            v24 = v18;
          }

          else
          {
            v24 = 2147483391;
          }

          v25 = sqlite3_initialize();
          v26 = 0;
          v17 = 7;
          if (v24 && !v25)
          {
            v13 = sub_18190287C(v22, v24, 0x100004077774924);
            if (!v13)
            {
              goto LABEL_23;
            }

            v111 = v13;
            a2 = v99;
LABEL_22:
            strcpy(&v13[v16], " AND (?6 OR ?3 IS stat)");
            v17 = v113[0];
            if (v113[0])
            {
LABEL_23:
              v26 = 0;
              goto LABEL_24;
            }

            if (sqlite3_initialize())
            {
              v26 = 0;
            }

            else
            {
              v89 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
              v26 = v89;
              if (v89)
              {
                strcpy(v89, "tbl, idx");
                v90 = v110;
                if (v110 + 45 <= SHIDWORD(v110))
                {
                  v94 = v109;
                }

                else
                {
                  if (HIDWORD(v110))
                  {
                    v91 = SHIDWORD(v110);
                  }

                  else
                  {
                    v91 = 128;
                  }

                  do
                  {
                    v92 = v91;
                    v91 *= 2;
                  }

                  while (v91 < v110 + 45);
                  if (v92 > 1073741695)
                  {
                    if (v110 > 2147483346)
                    {
                      goto LABEL_174;
                    }

                    v91 = 2147483391;
                  }

                  v93 = sqlite3_initialize();
                  v17 = 7;
                  if (!v91)
                  {
                    goto LABEL_24;
                  }

                  if (v93)
                  {
                    goto LABEL_24;
                  }

                  v94 = sub_18190287C(v109, v91, 0x100004077774924);
                  if (!v94)
                  {
                    goto LABEL_24;
                  }

                  v109 = v94;
                }

                qmemcpy((v94 + v110), "?1, (CASE WHEN ?2=X'' THEN NULL ELSE ?2 END)", 44);
                LODWORD(v110) = v110 + 44;
                *(v94 + v90 + 44) = 0;
                if (!sqlite3_initialize())
                {
                  v95 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
                  if (v95)
                  {
                    v31 = v95;
                    strcpy(v95, "tbl, ?2, stat");
                    v27 = v111;
                    goto LABEL_158;
                  }
                }

                v17 = 7;
                goto LABEL_24;
              }
            }

LABEL_174:
            v17 = 7;
          }

LABEL_24:
          v27 = v111;
          v28 = 0;
          if (!v111)
          {
            goto LABEL_137;
          }

LABEL_131:
          v78 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v27);
            --qword_1ED456A90;
            off_1ED452EB0(v27);
            v27 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_137;
            }

            v78 = &xmmword_1ED452F28;
          }

          (*v78)(v27);
          goto LABEL_137;
        }
      }

      else if (byte_181A20298[*v19] != byte_181A20298[*i])
      {
        break;
      }

      ++v19;
    }
  }

  if (a5 < 1)
  {
    v31 = 0;
    v26 = 0;
    v27 = v111;
    if (!v17)
    {
      goto LABEL_158;
    }

LABEL_130:
    v28 = v31;
    if (!v27)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v100 = a2;
  v96 = a3;
  v97 = a1;
  v98 = a8;
  v29 = 0;
  v104 = 0;
  v105 = 0;
  v26 = 0;
  v30 = 0;
  v31 = 0;
  v32 = &byte_181A2878D;
  v102 = a5;
  v106 = 0;
  v107 = a5;
  v33 = a7;
  do
  {
    if (v30 && !v113[0])
    {
      v34 = v30;
      v35 = v30 + 3;
      if (v35 <= v105)
      {
        goto LABEL_44;
      }

      if (v105)
      {
        v36 = v105;
      }

      else
      {
        v36 = 128;
      }

      do
      {
        v37 = v36;
        v36 *= 2;
      }

      while (v36 < v35);
      if (v37 <= 1073741695 || (v36 = 2147483391, v30 <= 2147483388))
      {
        v38 = sqlite3_initialize();
        if (v36)
        {
          if (!v38)
          {
            v39 = sub_18190287C(v31, v36, 0x100004077774924);
            if (v39)
            {
              v105 = v36;
              v31 = v39;
LABEL_44:
              *(v31 + v30) = 8236;
              v30 += 2;
              *(v31 + v34 + 2) = 0;
              goto LABEL_46;
            }
          }
        }
      }

      v113[0] = 7;
    }

LABEL_46:
    v40 = *(a6 + 8 * v29);
    if (v40)
    {
      v41 = 2 * (strlen(*(a6 + 8 * v29)) & 0x3FFFFFFF) + 4;
      if (v113[0])
      {
        goto LABEL_48;
      }
    }

    else
    {
      v41 = 4;
      if (v113[0])
      {
LABEL_48:
        if (*(v33 + v29))
        {
          goto LABEL_49;
        }

        goto LABEL_73;
      }
    }

    v45 = v41 + v30;
    v46 = v105;
    if (v45 <= v105)
    {
      goto LABEL_66;
    }

    if (v105)
    {
      v47 = v105;
    }

    else
    {
      v47 = 128;
    }

    do
    {
      v48 = v47;
      v47 *= 2;
    }

    while (v47 < v45);
    if (v48 <= 1073741695 || (v47 = 2147483391, v45 <= 2147483391))
    {
      v49 = sqlite3_initialize();
      if (v47)
      {
        if (!v49)
        {
          v50 = sub_18190287C(v31, v47, 0x100004077774924);
          if (v50)
          {
            v46 = v47;
            v31 = v50;
LABEL_66:
            *(v31 + v30) = 34;
            v51 = (v31 + v30 + 1);
            v105 = v46;
            if (v40)
            {
              while (1)
              {
                v52 = *v40;
                if (v52 == 34)
                {
                  *v51++ = 34;
                  LOBYTE(v52) = *v40;
                }

                else if (!*v40)
                {
                  break;
                }

                ++v40;
                *v51++ = v52;
              }
            }

            *v51 = 34;
            v30 = v51 - v31 + 1;
            *(v31 + v30) = 0;
            if (!*(v33 + v29))
            {
              goto LABEL_73;
            }

LABEL_49:
            if (v32)
            {
              v42 = strlen(v32) & 0x3FFFFFFF;
              if (v113[0])
              {
                goto LABEL_51;
              }

LABEL_75:
              v53 = v42 + 1 + v106;
              if (v53 <= v104)
              {
LABEL_86:
                memcpy((v26 + v106), v32, v42);
                *(v26 + v42 + v106) = 0;
                v106 += v42;
                if (!v32)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                if (v104)
                {
                  v54 = v104;
                }

                else
                {
                  v54 = 128;
                }

                do
                {
                  v55 = v54;
                  v54 *= 2;
                }

                while (v54 < v53);
                if (v55 <= 1073741695 || (v54 = 2147483391, v53 <= 2147483391))
                {
                  v56 = sqlite3_initialize();
                  if (v54)
                  {
                    if (!v56)
                    {
                      v57 = sub_18190287C(v26, v54, 0x100004077774924);
                      if (v57)
                      {
                        v104 = v54;
                        v26 = v57;
                        goto LABEL_86;
                      }
                    }
                  }
                }

                v113[0] = 7;
                if (!v32)
                {
LABEL_87:
                  v43 = 0;
                  if (!v113[0])
                  {
LABEL_88:
                    v58 = v31;
                    v59 = v26;
                    v60 = v110;
                    v61 = v110 + (v43 + 1);
                    if (v61 <= SHIDWORD(v110))
                    {
                      v67 = v109;
LABEL_102:
                      memcpy((v67 + v60), v32, v43);
                      LODWORD(v110) = v60 + v43;
                      *(v67 + (v60 + v43)) = 0;
                      v44 = 1;
                    }

                    else
                    {
                      if (HIDWORD(v110))
                      {
                        v62 = SHIDWORD(v110);
                      }

                      else
                      {
                        v62 = 128;
                      }

                      do
                      {
                        v63 = v62;
                        v62 *= 2;
                      }

                      while (v62 < v61);
                      if (v63 <= 1073741695 || (v62 = 2147483391, v61 <= 2147483391))
                      {
                        v64 = v109;
                        v65 = sqlite3_initialize();
                        if (v62)
                        {
                          if (!v65)
                          {
                            v66 = sub_18190287C(v64, v62, 0x100004077774924);
                            if (v66)
                            {
                              v67 = v66;
                              v109 = v66;
                              HIDWORD(v110) = v62;
                              goto LABEL_102;
                            }
                          }
                        }
                      }

                      v44 = 0;
                      v113[0] = 7;
                    }

                    v26 = v59;
                    v31 = v58;
                    v33 = a7;
LABEL_107:
                    v68 = *(a6 + 8 * v29);
                    if (v68)
                    {
                      v69 = 2 * (strlen(*(a6 + 8 * v29)) & 0x3FFFFFFF) + 4;
                      if (v44)
                      {
LABEL_111:
                        v70 = v69 + v106;
                        v71 = v104;
                        if (v70 <= v104)
                        {
                          goto LABEL_122;
                        }

                        if (v104)
                        {
                          v71 = v104;
                        }

                        else
                        {
                          v71 = 128;
                        }

                        do
                        {
                          v72 = v71;
                          v71 *= 2;
                        }

                        while (v71 < v70);
                        if ((v72 <= 1073741695 || (v71 = 2147483391, v70 <= 2147483391)) && (v73 = sqlite3_initialize(), v71) && !v73 && (v74 = sub_18190287C(v26, v71, 0x100004077774924)) != 0)
                        {
                          v26 = v74;
LABEL_122:
                          *(v26 + v106) = 34;
                          v75 = (v26 + v106 + 1);
                          v104 = v71;
                          if (v68)
                          {
                            while (1)
                            {
                              v76 = *v68;
                              if (v76 == 34)
                              {
                                *v75++ = 34;
                                LOBYTE(v76) = *v68;
                              }

                              else if (!*v68)
                              {
                                break;
                              }

                              ++v68;
                              *v75++ = v76;
                            }
                          }

                          *v75 = 34;
                          v77 = v75 - v26 + 1;
                          *(v26 + v77) = 0;
                          v106 = v77;
                        }

                        else
                        {
                          v113[0] = 7;
                        }
                      }
                    }

                    else
                    {
                      v69 = 4;
                      if (v44)
                      {
                        goto LABEL_111;
                      }
                    }

                    sub_181A12E14(&v109, v113, "?%d", ++v29);
                    v32 = ", ";
                    continue;
                  }

LABEL_53:
                  v44 = 0;
                  goto LABEL_107;
                }
              }
            }

            else
            {
              v42 = 0;
              if (!v113[0])
              {
                goto LABEL_75;
              }

LABEL_51:
              if (!v32)
              {
                goto LABEL_87;
              }
            }

            v43 = strlen(v32) & 0x3FFFFFFF;
            if (!v113[0])
            {
              goto LABEL_88;
            }

            goto LABEL_53;
          }
        }
      }
    }

    v113[0] = 7;
    if (*(v33 + v29))
    {
      goto LABEL_49;
    }

LABEL_73:
    sub_181A12E14(&v111, v113, " AND (?%d OR ?%d IS %w.%w)", (v29 + v102 + 1), v29 + 1, a4, *(a6 + 8 * v29));
    ++v29;
  }

  while (v29 != v107);
  v17 = v113[0];
  a1 = v97;
  a8 = v98;
  a3 = v96;
  a2 = v100;
  v27 = v111;
  if (v113[0])
  {
    goto LABEL_130;
  }

LABEL_158:
  v83 = &byte_181A2878D;
  if (a2)
  {
    v83 = v27;
  }

  v84 = sqlite3_mprintf("SELECT %s%s FROM %Q.%Q WHERE (%s) IS (%s)", v31, v83, a3, a4, v26, v109);
  if (!v84)
  {
    v17 = 7;
    v28 = v31;
    if (!v27)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v86 = v84;
  v17 = sub_1818954B4(a1, v84, 0xFFFFFFFFLL, 128, 0, a8, 0, v85);
  v87 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_166;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v86);
  --qword_1ED456A90;
  off_1ED452EB0(v86);
  v86 = xmmword_1ED456AF0;
  if (!xmmword_1ED456AF0)
  {
    v28 = v31;
    if (!v27)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v87 = &xmmword_1ED452F28;
LABEL_166:
  (*v87)(v86);
  v28 = v31;
  if (v27)
  {
    goto LABEL_131;
  }

LABEL_137:
  if (v26)
  {
    v79 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_143;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
    --qword_1ED456A90;
    off_1ED452EB0(v26);
    v26 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v79 = &xmmword_1ED452F28;
LABEL_143:
      (*v79)(v26);
    }
  }

  v80 = v109;
  if (v109)
  {
    v81 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_150;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v80);
    --qword_1ED456A90;
    off_1ED452EB0(v80);
    v80 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v81 = &xmmword_1ED452F28;
LABEL_150:
      (*v81)(v80);
    }
  }

  if (v28)
  {
    v82 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_168;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v28);
    --qword_1ED456A90;
    off_1ED452EB0(v28);
    if (xmmword_1ED456AF0)
    {
      v82 = &xmmword_1ED452F28;
LABEL_168:
      (*v82)();
    }
  }

  return v17;
}

uint64_t sub_181A141F4(uint64_t result, char a2, _DWORD *a3)
{
  if (!*a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v5 = v4;
    if (v4 < v3)
    {
      v6 = *result;
LABEL_4:
      *(result + 8) = v4 + 1;
      *(v6 + v5) = a2;
      return result;
    }

    if (!v3)
    {
      v3 = 128;
    }

    v7 = v3;
    do
    {
      v8 = v7;
      v7 *= 2;
    }

    while (v7 <= v4);
    if (v8 < 1073741696 || (v7 = 2147483391, v4 < 2147483391))
    {
      v10 = a2;
      v11 = result;
      v12 = *result;
      result = sqlite3_initialize();
      if (v7 && !result && (result = sub_18190287C(v12, v7, 0x100004077774924)) != 0)
      {
        v6 = result;
        *v11 = result;
        *(v11 + 12) = v7;
        if (!*a3)
        {
          result = v11;
          a2 = v10;
          v4 = *(v11 + 8);
          v5 = v4;
          goto LABEL_4;
        }
      }

      else
      {
        *a3 = 7;
      }
    }

    else
    {
      *a3 = 7;
    }
  }

  return result;
}

unint64_t sub_181A14308(unint64_t result, sqlite3_stmt *a2, int iCol, _DWORD *a4)
{
  if (*a4)
  {
    return result;
  }

  v7 = result;
  result = sqlite3_column_type(a2, iCol);
  v8 = result;
  if (*a4)
  {
    goto LABEL_19;
  }

  v9 = *(v7 + 8);
  v10 = *(v7 + 12);
  v11 = v9;
  if (v9 < v10)
  {
    result = *v7;
LABEL_5:
    *(v7 + 8) = v9 + 1;
    *(result + v11) = v8;
    goto LABEL_19;
  }

  if (!v10)
  {
    v10 = 128;
  }

  v12 = v10;
  do
  {
    v13 = v12;
    v12 *= 2;
  }

  while (v12 <= v9);
  if (v13 > 1073741695)
  {
    if (v9 > 2147483390)
    {
LABEL_18:
      *a4 = 7;
      goto LABEL_19;
    }

    v12 = 2147483391;
  }

  v14 = *v7;
  result = sqlite3_initialize();
  if (!v12)
  {
    goto LABEL_18;
  }

  if (result)
  {
    goto LABEL_18;
  }

  result = sub_18190287C(v14, v12, 0x100004077774924);
  if (!result)
  {
    goto LABEL_18;
  }

  *v7 = result;
  *(v7 + 12) = v12;
  if (!*a4)
  {
    v9 = *(v7 + 8);
    v11 = v9;
    goto LABEL_5;
  }

LABEL_19:
  if ((v8 - 1) > 1)
  {
    goto LABEL_40;
  }

  if (v8 == 1)
  {
    result = sqlite3_column_int64(a2, iCol);
    if (*a4)
    {
      goto LABEL_40;
    }
  }

  else
  {
    result = sqlite3_column_double(a2, iCol);
    if (*a4)
    {
      goto LABEL_40;
    }
  }

  v15 = *(v7 + 8);
  v16 = *(v7 + 12);
  if (v15 + 8 <= v16)
  {
    v21 = *v7;
LABEL_38:
    *(v21 + v15) = bswap64(result);
    *(v7 + 8) += 8;
    goto LABEL_40;
  }

  if (v16)
  {
    v17 = *(v7 + 12);
  }

  else
  {
    v17 = 128;
  }

  do
  {
    v18 = v17;
    v17 *= 2;
  }

  while (v17 < v15 + 8);
  if (v18 > 1073741695)
  {
    if (v15 > 2147483383)
    {
      goto LABEL_39;
    }

    v17 = 2147483391;
  }

  v19 = result;
  v20 = *v7;
  result = sqlite3_initialize();
  if (v17)
  {
    if (!result)
    {
      result = sub_18190287C(v20, v17, 0x100004077774924);
      if (result)
      {
        v21 = result;
        *v7 = result;
        *(v7 + 12) = v17;
        if (*a4)
        {
          goto LABEL_40;
        }

        result = v19;
        v15 = *(v7 + 8);
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  *a4 = 7;
LABEL_40:
  if ((v8 - 3) > 1)
  {
    return result;
  }

  if (v8 == 4)
  {
    v22 = sqlite3_column_blob(a2, iCol);
  }

  else
  {
    v22 = sqlite3_column_text(a2, iCol);
  }

  v23 = v22;
  result = sqlite3_column_bytes(a2, iCol);
  v24 = result;
  v26 = v8 == 4 && result == 0;
  if (!v23 && !v26)
  {
    goto LABEL_52;
  }

  if (!*a4)
  {
    v27 = *(v7 + 8);
    v28 = *(v7 + 12);
    if (v27 + 9 <= v28)
    {
      result = *v7;
LABEL_68:
      result += v27;
      if (v24 > 0x7F)
      {
        if (v24 >> 14)
        {
          result = sub_1819436D0(result, v24);
          v32 = result;
        }

        else
        {
          *result = (v24 >> 7) | 0x80;
          *(result + 1) = v24 & 0x7F;
          v32 = 2;
        }
      }

      else
      {
        *result = v24;
        v32 = 1;
      }

      *(v7 + 8) += v32;
      goto LABEL_75;
    }

    if (v28)
    {
      v29 = *(v7 + 12);
    }

    else
    {
      v29 = 128;
    }

    do
    {
      v30 = v29;
      v29 *= 2;
    }

    while (v29 < v27 + 9);
    if (v30 > 1073741695)
    {
      if (v27 > 2147483382)
      {
        goto LABEL_70;
      }

      v29 = 2147483391;
    }

    v31 = *v7;
    result = sqlite3_initialize();
    if (v29)
    {
      if (!result)
      {
        result = sub_18190287C(v31, v29, 0x100004077774924);
        if (result)
        {
          *v7 = result;
          *(v7 + 12) = v29;
          if (*a4)
          {
            goto LABEL_75;
          }

          v27 = *(v7 + 8);
          goto LABEL_68;
        }
      }
    }

LABEL_70:
    *a4 = 7;
  }

LABEL_75:
  if (v24 >= 1 && !*a4)
  {
    v33 = *(v7 + 8);
    v34 = *(v7 + 12);
    v35 = v33 + v24;
    if (v35 <= v34)
    {
      result = *v7;
      goto LABEL_90;
    }

    if (v34)
    {
      v36 = *(v7 + 12);
    }

    else
    {
      v36 = 128;
    }

    do
    {
      v37 = v36;
      v36 *= 2;
    }

    while (v36 < v35);
    if (v37 > 1073741695 && (v36 = 2147483391, v35 > 2147483391) || (v38 = *v7, result = sqlite3_initialize(), !v36) || result || (result = sub_18190287C(v38, v36, 0x100004077774924)) == 0)
    {
LABEL_52:
      *a4 = 7;
      return result;
    }

    *v7 = result;
    *(v7 + 12) = v36;
    if (!*a4)
    {
      v33 = *(v7 + 8);
LABEL_90:
      result = memcpy((result + v33), v23, v24);
      *(v7 + 8) += v24;
    }
  }

  return result;
}

uint64_t sub_181A14770(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  result = sub_181A12FF4(a1, 9, a3);
  if (!result)
  {
    result = *a1 + *(a1 + 8);
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        result = sub_1819436D0(result, a2);
        v6 = result;
      }

      else
      {
        *result = (a2 >> 7) | 0x80;
        *(result + 1) = a2 & 0x7F;
        v6 = 2;
      }
    }

    else
    {
      *result = a2;
      v6 = 1;
    }

    *(a1 + 8) += v6;
  }

  return result;
}

uint64_t sub_181A147FC(uint64_t a1, int a2)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (!*(a1 + 64))
  {
    result = 0;
    v5 = *(a1 + 24);
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7 + a2 < v5 || result != 0)
      {
        return result;
      }

      v9 = dword_1EA8315B8;
      v20 = dword_1EA8315B8;
      if (!*a1)
      {
        if (*(a1 + 48))
        {
          v18 = *(a1 + 4);
          if (v18 >= dword_1EA8315B8)
          {
            v19 = (*(a1 + 40) - v18);
            if (v19 >= 1)
            {
              memmove(*(a1 + 32), (*(a1 + 32) + v18), v19);
              LODWORD(v18) = *(a1 + 4);
              v7 = *(a1 + 8);
              LODWORD(v19) = *(a1 + 40) - v18;
              v9 = v20;
            }

            *(a1 + 40) = v19;
            *(a1 + 4) = 0;
            *(a1 + 8) = v7 - v18;
            *(a1 + 24) = v19;
          }
        }
      }

      v10 = *(a1 + 40);
      v11 = *(a1 + 44);
      v12 = v10 + v9;
      if (v12 <= v11)
      {
        v17 = *(a1 + 32);
      }

      else
      {
        if (v11)
        {
          v13 = *(a1 + 44);
        }

        else
        {
          v13 = 128;
        }

        do
        {
          v14 = v13;
          v13 *= 2;
        }

        while (v13 < v12);
        if (v14 >= 1073741696)
        {
          v13 = 2147483391;
          if (v12 > 2147483391)
          {
            goto LABEL_7;
          }
        }

        v15 = *(a1 + 32);
        v16 = sqlite3_initialize();
        result = 7;
        if (!v13 || v16)
        {
          goto LABEL_8;
        }

        v17 = sub_18190287C(v15, v13, 0x100004077774924);
        if (!v17)
        {
LABEL_7:
          result = 7;
          goto LABEL_8;
        }

        *(a1 + 32) = v17;
        *(a1 + 44) = v13;
        v10 = *(a1 + 40);
      }

      result = (*(a1 + 48))(*(a1 + 56), v17 + v10, &v20);
      if (!v20)
      {
        *(a1 + 64) = 1;
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 24) = *(a1 + 40);
        return result;
      }

      *(a1 + 40) += v20;
LABEL_8:
      v6 = *(a1 + 64);
      *(a1 + 16) = *(a1 + 32);
      v5 = *(a1 + 40);
      *(a1 + 24) = v5;
      if (v6)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_181A149F4(uint64_t a1, int a2, int *a3)
{
  if (a2 < 1)
  {
    result = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = sub_181A147FC(a1, v6 + 10);
      if (result)
      {
        break;
      }

      v9 = *(a1 + 16);
      v10 = *(a1 + 8);
      v11 = v6 + 1;
      v12 = *(v9 + v10 + v6);
      if ((v12 - 3) > 1)
      {
        result = 0;
        if ((v12 - 1) >= 2)
        {
          ++v6;
        }

        else
        {
          v6 += 9;
        }
      }

      else
      {
        v13 = (v9 + v10 + v11);
        v14 = *v13;
        if (v14 < 0)
        {
          v16 = v13[1];
          if (v13[1] < 0)
          {
            v17 = v13[2];
            if (v17 < 0)
            {
              v19 = 0;
              v15 = sub_1818C7200(v13, &v19);
              if (HIDWORD(v19))
              {
                v14 = -1;
              }

              else
              {
                v14 = v19;
              }
            }

            else
            {
              v14 = ((v14 & 0x7F) << 14) | ((v16 & 0x7F) << 7) | v17;
              v15 = 3;
            }
          }

          else
          {
            v14 = v16 | ((v14 & 0x7F) << 7);
            v15 = 2;
          }
        }

        else
        {
          v15 = 1;
        }

        v6 = v14 + v11 + v15;
        result = sub_181A147FC(a1, v6);
        if (result)
        {
          break;
        }
      }
    }

    while (v7++ < a2);
  }

  *a3 = v6;
  return result;
}

uint64_t sub_181A14B3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = a5;
  if (a5)
  {
    *a5 = 1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = a2;
  v33 = a2;
  while (1)
  {
    if (!a3 || *(a3 + v9))
    {
      result = sub_181A147FC(a1, 9);
      if (result)
      {
        return result;
      }

      v12 = *(a1 + 8);
      if (v12 >= *(a1 + 24))
      {
        v31 = 242657;
        goto LABEL_55;
      }

      v13 = *(a1 + 16);
      *(a1 + 8) = v12 + 1;
      v14 = *(v13 + v12);
      if (*(v13 + v12))
      {
        if (v5)
        {
          *v5 = 0;
        }

        v15 = sub_181902484(64, 0x10F2040695A4BFELL);
        if (!v15)
        {
          *(a4 + 8 * v9) = 0;
          return 7;
        }

        *(v15 + 32) = 0u;
        *(v15 + 48) = 0u;
        *v15 = 0u;
        *(v15 + 16) = 0u;
        *(v15 + 24) = 0;
        *(a4 + 8 * v9) = v15;
        *(v15 + 20) = 1;
        v16 = *(a1 + 8);
        v17 = (*(a1 + 16) + v16);
        if (v14 - 3 <= 1)
        {
          v18 = *v17;
          if ((v18 & 0x80000000) != 0)
          {
            v21 = v17[1];
            if (v17[1] < 0)
            {
              v23 = v17[2];
              if (v23 < 0)
              {
                v34 = 0;
                v19 = sub_1818C7200(v17, &v34);
                if (HIDWORD(v34))
                {
                  v18 = -1;
                }

                else
                {
                  v18 = v34;
                }
              }

              else
              {
                v18 = ((v18 & 0x7F) << 14) | ((v21 & 0x7F) << 7) | v23;
                v19 = 3;
              }
            }

            else
            {
              v18 = v21 | ((v18 & 0x7F) << 7);
              v19 = 2;
            }
          }

          else
          {
            v19 = 1;
          }

          *(a1 + 8) = v19 + v16;
          result = sub_181A147FC(a1, v18);
          if (result)
          {
            return result;
          }

          if ((v18 & 0x80000000) != 0 || (v25 = *(a1 + 8), v18 > *(a1 + 24) - v25))
          {
            v31 = 242677;
            goto LABEL_55;
          }

          v26 = v14 == 3;
          v27 = *(a4 + 8 * v9);
          v28 = *(a1 + 16);
          if (sqlite3_initialize())
          {
            result = 7;
          }

          else
          {
            v32 = v5;
            v29 = sub_181902484(v18 + 1, 2881293954);
            if (v29)
            {
              v30 = v29;
              memcpy(v29, (v28 + v25), v18);
              if (v27)
              {
                sub_1818900D0(v27, v30, v18, v26, sqlite3_free);
              }

              result = 0;
            }

            else
            {
              result = 7;
            }

            v5 = v32;
          }

          goto LABEL_46;
        }

        if (v14 <= 2)
        {
          break;
        }
      }
    }

    result = 0;
LABEL_47:
    if (++v9 >= v10)
    {
      return result;
    }
  }

  if (*(a1 + 24) - v16 > 7)
  {
    v20 = bswap64(*v17);
    if (v14 == 1)
    {
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v15, v20);
        result = 0;
      }

      else
      {
        v24 = v15;
        result = 0;
        *v24 = v20;
        *(v24 + 20) = 4;
      }

      v18 = 8;
    }

    else
    {
      v22 = v15;
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v15);
      }

      else
      {
        *(v15 + 20) = 1;
      }

      v18 = 8;
      result = 0;
      *v22 = v20;
      *(v22 + 20) = 8;
    }

LABEL_46:
    *(a1 + 8) += v18;
    v10 = v33;
    if (result)
    {
      return result;
    }

    goto LABEL_47;
  }

  v31 = 242687;
LABEL_55:

  return sub_18190EDA8(v31);
}

uint64_t sub_181A14ECC(uint64_t a1, _DWORD *a2)
{
  result = sub_181A147FC(a1, 9);
  if (result)
  {
    v5 = 0;
    goto LABEL_3;
  }

  v6 = (*(a1 + 16) + *(a1 + 8));
  v7 = *v6;
  if ((v7 & 0x80000000) == 0)
  {
    v5 = 1;
    goto LABEL_8;
  }

  v8 = v6[1];
  if ((v6[1] & 0x80000000) == 0)
  {
    v7 = v8 | ((v7 & 0x7F) << 7);
    v5 = 2;
    goto LABEL_8;
  }

  v12 = v6[2];
  if (v12 < 0)
  {
    v13 = 0;
    v5 = sub_1818C7200(v6, &v13);
    v7 = v13;
    if (HIDWORD(v13))
    {
LABEL_20:
      result = sub_18190EDA8(242735);
      goto LABEL_3;
    }
  }

  else
  {
    v7 = ((v7 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | v12;
    v5 = 3;
  }

  if (v7 > 0x10000)
  {
    goto LABEL_20;
  }

LABEL_8:
  v5 += v7;
LABEL_9:
  while (1)
  {
    result = sub_181A147FC(a1, v5 + 100);
    if (result)
    {
      break;
    }

    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    if (v9 + v5 < v10)
    {
      v11 = v9 + v5;
      while (*(*(a1 + 16) + v9 + v5))
      {
        ++v5;
        if (++v11 >= v10)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      break;
    }
  }

LABEL_3:
  *a2 = v5 + 1;
  return result;
}

uint64_t sub_181A14FF8(sqlite3 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a4 + 96);
  if (v6)
  {
    v10 = a3;
    v12 = &unk_1ED456000;
    while (1)
    {
      v13 = *(a4 + 88);
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      v14 = *(a4 + 80);
      if (!sqlite3_initialize())
      {
        break;
      }

      v15 = 7;
      if (!v13)
      {
        goto LABEL_35;
      }

LABEL_29:
      v28 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v29 = v12[350];
        if (v29)
        {
          xmmword_1ED452F18(v29);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
        --qword_1ED456A90;
        off_1ED452EB0(v13);
        v13 = v12[350];
        if (!v13)
        {
          goto LABEL_35;
        }

        v28 = &xmmword_1ED452F28;
      }

      (*v28)(v13);
LABEL_35:
      if (v15)
      {
        return v15;
      }

      v30 = *(a4 + 96);
      if (v30 >= v6)
      {
        *(a4 + 76) = 0;
      }

      v6 = v30;
      if (!v30)
      {
        return 0;
      }
    }

    v16 = sub_181902484(152, 0x10B00400C7E3458);
    if (!v16)
    {
      v15 = 7;
      goto LABEL_28;
    }

    v17 = v16;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 144) = 0;
    *(v16 + 112) = 0u;
    *(v16 + 128) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 16) = v13;
    *(v16 + 24) = v6;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 1;
    *(v16 + 96) = 1;
    v18 = *(a4 + 32);
    v19 = 16 * v18;
    *(v16 + 88) = a2;
    *(v16 + 92) = v14;
    *(v16 + 120) = v18;
    *(v16 + 136) = *(a4 + 48);
    v20 = *(v16 + 84);
    v21 = 16 * v18 + *(v16 + 80);
    *(v16 + 112) = v10;
    if (v21 <= v20)
    {
      v26 = *(v16 + 72);
    }

    else
    {
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 128;
      }

      do
      {
        v23 = v22;
        v22 *= 2;
      }

      while (v22 < v21);
      if (v23 >= 1073741696 && (v22 = 2147483391, v21 > 2147483391) || (v24 = *(v16 + 72), v25 = sqlite3_initialize(), !v22) || v25 || (v26 = sub_18190287C(v24, v22, 0x100004077774924)) == 0)
      {
        *(v17 + 144) = *(v17 + 72);
        v15 = 7;
        v10 = a3;
LABEL_26:
        sqlite3changeset_finalize(v17);
LABEL_28:
        v12 = &unk_1ED456000;
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      *(v17 + 72) = v26;
      *(v17 + 84) = v22;
      v10 = a3;
    }

    *(v17 + 144) = v26;
    bzero(v26, v19);
    while (sub_181921A00(v17, 0, 0, 0) == 100)
    {
      v27 = sub_181A16A3C(a1, v17, a4, a5, a6);
      if (v27)
      {
        v15 = v27;
        goto LABEL_26;
      }
    }

    v15 = sqlite3changeset_finalize(v17);
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_181A152C0(uint64_t a1, uint64_t a2)
{
  result = sub_181A13594(a1, *(a2 + 122), "main", "sqlite_stat1", *(a2 + 32), *(a2 + 40), *(a2 + 48), (a2 + 24));
  if (!result)
  {
    result = sub_1818954B4(a1, "INSERT INTO main.sqlite_stat1 VALUES(?1, CASE WHEN length(?2)=0 AND typeof(?2)='blob' THEN NULL ELSE ?2 END, ?3)", 0xFFFFFFFFLL, 128, 0, (a2 + 16), 0, v5);
    if (!result)
    {

      return sub_1818954B4(a1, "DELETE FROM main.sqlite_stat1 WHERE tbl=?1 AND idx IS CASE WHEN length(?2)=0 AND typeof(?2)='blob' THEN NULL ELSE ?2 END AND (?4 OR stat IS ?3)", 0xFFFFFFFFLL, 128, 0, (a2 + 8), 0, v6);
    }
  }

  return result;
}

uint64_t sub_181A15370(uint64_t a1, const char *a2, uint64_t a3)
{
  v137 = *MEMORY[0x1E69E9840];
  if (sqlite3_initialize())
  {
    v135 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v18 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
  v6 = v18;
  if (!v18)
  {
    v135 = 0;
LABEL_3:
    v7 = 0;
    v8 = 0;
    v9 = 7;
    v10 = 1;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v10 = 0;
  v9 = 0;
  strcpy(v18, "DELETE FROM main.");
  v8 = 17;
  v7 = 1;
  v135 = 256;
  if (a2)
  {
LABEL_4:
    v11 = 2 * (strlen(a2) & 0x3FFFFFFF) + 4;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_19:
    LODWORD(v13) = v135;
    if (!v9)
    {
      goto LABEL_29;
    }

LABEL_20:
    v16 = v9;
    goto LABEL_43;
  }

LABEL_18:
  v11 = 4;
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v12 = v11 + v8;
  v13 = v135;
  if (v12 <= v135)
  {
    v9 = 0;
  }

  else
  {
    if (v10)
    {
      v13 = 128;
    }

    else
    {
      v13 = v135;
    }

    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v13 < v12);
    if (v14 > 1073741695)
    {
      v13 = 2147483391;
      if (v12 > 2147483391)
      {
        goto LABEL_36;
      }
    }

    v15 = sqlite3_initialize();
    v16 = 7;
    if (!v13)
    {
      goto LABEL_43;
    }

    if (v15)
    {
      goto LABEL_43;
    }

    v17 = sub_18190287C(v6, v13, 0x100004077774924);
    if (!v17)
    {
      goto LABEL_43;
    }

    v6 = v17;
  }

  v6[v8] = 34;
  v19 = &v6[v8 + 1];
  if (a2)
  {
    while (1)
    {
      v20 = *a2;
      if (v20 == 34)
      {
        *v19++ = 34;
        LOBYTE(v20) = *a2;
      }

      else if (!*a2)
      {
        break;
      }

      ++a2;
      *v19++ = v20;
    }
  }

  *v19 = 34;
  v21 = v19 - v6;
  v8 = v21 + 1;
  v6[v21 + 1] = 0;
  v135 = v13;
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_29:
  v22 = v8;
  v23 = v8 + 8;
  if (v23 <= v13)
  {
LABEL_42:
    v16 = 0;
    v28 = &v6[v8];
    *(v28 + 3) = 541413957;
    *v28 = 1162368800;
    v8 = v8 + 7;
    v6[v22 + 7] = 0;
    goto LABEL_43;
  }

  if (v13)
  {
    v24 = v13;
  }

  else
  {
    v24 = 128;
  }

  do
  {
    v25 = v24;
    v24 *= 2;
  }

  while (v24 < v23);
  if (v25 > 1073741695)
  {
    v24 = 2147483391;
    if (v8 > 2147483383)
    {
LABEL_36:
      v16 = 7;
      goto LABEL_43;
    }
  }

  v26 = sqlite3_initialize();
  v16 = 7;
  if (v24)
  {
    if (!v26)
    {
      v27 = sub_18190287C(v6, v24, 0x100004077774924);
      if (v27)
      {
        v135 = v24;
        v6 = v27;
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  v29 = *(a3 + 32);
  v134 = a3;
  if (v29 >= 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = &byte_181A2878D;
    while (1)
    {
      while (!*(*(a3 + 48) + v30))
      {
        if (++v30 >= v29)
        {
          goto LABEL_121;
        }
      }

      if (v32)
      {
        v33 = strlen(v32) & 0x3FFFFFFF;
        if (v16)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v33 = 0;
        if (v16)
        {
          goto LABEL_70;
        }
      }

      v34 = v8;
      v35 = v33 + 1 + v8;
      if (v35 <= v135)
      {
        goto LABEL_68;
      }

      v36 = v6;
      if (v135)
      {
        v37 = v135;
      }

      else
      {
        v37 = 128;
      }

      do
      {
        v38 = v37;
        v37 *= 2;
      }

      while (v37 < v35);
      if (v38 <= 1073741695 || (v37 = 2147483391, v35 <= 2147483391))
      {
        v39 = sqlite3_initialize();
        v16 = 7;
        if (v37)
        {
          if (!v39)
          {
            v40 = sub_18190287C(v36, v37, 0x100004077774924);
            if (v40)
            {
              v135 = v37;
              v6 = v40;
              a3 = v134;
LABEL_68:
              memcpy(&v6[v8], v32, v33);
              v16 = 0;
              v8 = v33 + v8;
              v6[v33 + v34] = 0;
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        v16 = 7;
      }

      v6 = v36;
      a3 = v134;
LABEL_70:
      v41 = *(a3 + 40);
      v42 = *(v41 + 8 * v30);
      if (v42)
      {
        v43 = 2 * (strlen(*(v41 + 8 * v30)) & 0x3FFFFFFF) + 4;
        v44 = v8;
        if (v16)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v43 = 4;
        v44 = v8;
        if (v16)
        {
          goto LABEL_106;
        }
      }

      v45 = v43 + v44;
      v46 = v135;
      if (v45 > v135)
      {
        v47 = v6;
        if (v135)
        {
          v48 = v135;
        }

        else
        {
          v48 = 128;
        }

        do
        {
          v49 = v48;
          v48 *= 2;
        }

        while (v48 < v45);
        if (v49 > 1073741695)
        {
          v48 = 2147483391;
          if (v45 > 2147483391)
          {
            v16 = 7;
            v6 = v47;
            goto LABEL_106;
          }
        }

        v50 = sqlite3_initialize();
        v16 = 7;
        if (!v48 || v50 || (v51 = sub_18190287C(v47, v48, 0x100004077774924)) == 0)
        {
          v6 = v47;
          goto LABEL_106;
        }

        v46 = v48;
        v6 = v51;
      }

      v6[v44] = 34;
      v52 = &v6[v44 + 1];
      if (v42)
      {
        while (1)
        {
          v53 = *v42;
          if (v53 == 34)
          {
            *v52++ = 34;
            LOBYTE(v53) = *v42;
          }

          else if (!*v42)
          {
            break;
          }

          ++v42;
          *v52++ = v53;
        }
      }

      *v52 = 34;
      v8 = v52 - v6 + 1;
      v44 = v8;
      v6[v8] = 0;
      v54 = v8 + 5;
      v135 = v46;
      if (v54 <= v46)
      {
        goto LABEL_105;
      }

      if (v46)
      {
        v55 = v46;
      }

      else
      {
        v55 = 128;
      }

      do
      {
        v56 = v55;
        v55 *= 2;
      }

      while (v55 < v54);
      if (v56 > 1073741695)
      {
        v55 = 2147483391;
        if (v8 > 2147483386)
        {
          v16 = 7;
          goto LABEL_106;
        }
      }

      v57 = sqlite3_initialize();
      v16 = 7;
      if (v55)
      {
        if (!v57)
        {
          v58 = sub_18190287C(v6, v55, 0x100004077774924);
          if (v58)
          {
            v135 = v55;
            v6 = v58;
LABEL_105:
            v16 = 0;
            *&v6[v8] = 1059077408;
            v44 = v8 + 4;
            v6[v44] = 0;
            v8 = v44;
          }
        }
      }

LABEL_106:
      sqlite3_snprintf(23, __s, "%d", ++v30);
      v59 = strlen(__s);
      if (v16)
      {
        goto LABEL_48;
      }

      v60 = v6;
      v61 = v59 & 0x3FFFFFFF;
      v62 = v44 + (v59 & 0x3FFFFFFFu) + 1;
      if (v62 <= v135)
      {
        v65 = v59;
        goto LABEL_119;
      }

      if (v135)
      {
        v63 = v135;
      }

      else
      {
        v63 = 128;
      }

      do
      {
        v64 = v63;
        v63 *= 2;
      }

      while (v63 < v62);
      if (v64 > 1073741695 && (v63 = 2147483391, v62 > 2147483391))
      {
        v16 = 7;
      }

      else
      {
        v65 = v59;
        v66 = sqlite3_initialize();
        v16 = 7;
        if (v63)
        {
          if (!v66)
          {
            v67 = sub_18190287C(v60, v63, 0x100004077774924);
            if (v67)
            {
              v135 = v63;
              v60 = v67;
LABEL_119:
              memcpy((v60 + v44), __s, v65 & 0x3FFFFFFF);
              v16 = 0;
              v8 = (v61 + v8);
              v6 = v60;
              *(v60 + v8) = 0;
              goto LABEL_47;
            }
          }
        }
      }

      v6 = v60;
LABEL_47:
      a3 = v134;
LABEL_48:
      ++v31;
      v29 = *(a3 + 32);
      v32 = " AND ";
      if (v30 >= v29)
      {
        goto LABEL_121;
      }
    }
  }

  v31 = 0;
LABEL_121:
  if (v31 >= v29)
  {
    if (v16)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

  v68 = v8;
  if (!v16)
  {
    if (v8 + 8 <= v135)
    {
LABEL_137:
      v16 = 0;
      v73 = &v6[v8];
      *(v73 + 3) = 1059594308;
      *v73 = 1145979168;
      v68 = v8 + 7;
      v6[v68] = 0;
      LODWORD(v8) = v8 + 7;
      goto LABEL_138;
    }

    if (v135)
    {
      v69 = v135;
    }

    else
    {
      v69 = 128;
    }

    do
    {
      v70 = v69;
      v69 *= 2;
    }

    while (v69 < v8 + 8);
    if (v70 > 1073741695)
    {
      v69 = 2147483391;
      if (v8 > 2147483383)
      {
        v16 = 7;
        goto LABEL_138;
      }
    }

    v71 = sqlite3_initialize();
    v16 = 7;
    if (v69)
    {
      if (!v71)
      {
        v72 = sub_18190287C(v6, v69, 0x100004077774924);
        if (v72)
        {
          LODWORD(v135) = v69;
          v6 = v72;
          goto LABEL_137;
        }
      }
    }
  }

LABEL_138:
  sqlite3_snprintf(23, __s, "%d", *(a3 + 32) + 1);
  v74 = strlen(__s);
  if (!v16)
  {
    v75 = v74 & 0x3FFFFFFF;
    v76 = v68 + (v74 & 0x3FFFFFFFu) + 1;
    LODWORD(v77) = v135;
    if (v76 <= v135)
    {
      v79 = v74;
    }

    else
    {
      if (v135)
      {
        v77 = v135;
      }

      else
      {
        v77 = 128;
      }

      do
      {
        v78 = v77;
        v77 *= 2;
      }

      while (v77 < v76);
      if (v78 > 1073741695)
      {
        v77 = 2147483391;
        if (v76 > 2147483391)
        {
          v16 = 7;
          goto LABEL_165;
        }
      }

      v79 = v74;
      v82 = sqlite3_initialize();
      v16 = 7;
      if (!v77)
      {
        goto LABEL_165;
      }

      if (v82)
      {
        goto LABEL_165;
      }

      v83 = sub_18190287C(v6, v77, 0x100004077774924);
      if (!v83)
      {
        goto LABEL_165;
      }

      v6 = v83;
    }

    memcpy(&v6[v68], __s, v79 & 0x3FFFFFFF);
    v8 = v75 + v8;
    v6[v8] = 0;
    LODWORD(v135) = v77;
    if (v8 + 5 > v77)
    {
      if (v77)
      {
        v80 = v77;
      }

      else
      {
        v80 = 128;
      }

      do
      {
        v81 = v80;
        v80 *= 2;
      }

      while (v80 < v8 + 5);
      if (v81 > 1073741695)
      {
        v80 = 2147483391;
        if (v8 > 2147483386)
        {
          v16 = 7;
          goto LABEL_165;
        }
      }

      v84 = sqlite3_initialize();
      v16 = 7;
      if (!v80)
      {
        goto LABEL_165;
      }

      if (v84)
      {
        goto LABEL_165;
      }

      v85 = sub_18190287C(v6, v80, 0x100004077774924);
      if (!v85)
      {
        goto LABEL_165;
      }

      LODWORD(v135) = v80;
      v6 = v85;
    }

    v16 = 0;
    *&v6[v8] = 542265120;
    v8 += 4;
    v6[v8] = 0;
  }

LABEL_165:
  v86 = *(a3 + 32);
  if (v86 < 1)
  {
    LODWORD(v90) = v8;
    v89 = v135;
    if (!v16)
    {
      goto LABEL_241;
    }

    goto LABEL_252;
  }

  v87 = 0;
  v88 = &byte_181A2878D;
  v89 = v135;
  LODWORD(v90) = v8;
  do
  {
    while (*(*(a3 + 48) + v87))
    {
      if (++v87 >= v86)
      {
        goto LABEL_238;
      }
    }

    if (v88)
    {
      v91 = strlen(v88) & 0x3FFFFFFF;
      if (v16)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v91 = 0;
      if (v16)
      {
        goto LABEL_187;
      }
    }

    v92 = v6;
    v93 = v91 + 1 + v90;
    if (v93 <= v89)
    {
      goto LABEL_185;
    }

    if (v89)
    {
      v94 = v89;
    }

    else
    {
      v94 = 128;
    }

    do
    {
      v95 = v94;
      v94 *= 2;
    }

    while (v94 < v93);
    if (v95 <= 1073741695 || (v94 = 2147483391, v93 <= 2147483391))
    {
      v96 = sqlite3_initialize();
      v16 = 7;
      if (!v94)
      {
        goto LABEL_186;
      }

      if (v96)
      {
        goto LABEL_186;
      }

      v97 = sub_18190287C(v6, v94, 0x100004077774924);
      if (!v97)
      {
        goto LABEL_186;
      }

      v89 = v94;
      v92 = v97;
LABEL_185:
      memcpy(&v92[v90], v88, v91);
      v16 = 0;
      v90 = v91 + v90;
      v6 = v92;
      v92[v90] = 0;
      goto LABEL_186;
    }

    v16 = 7;
LABEL_186:
    a3 = v134;
LABEL_187:
    v98 = *(a3 + 40);
    v99 = *(v98 + 8 * v87);
    if (v99)
    {
      v100 = 2 * (strlen(*(v98 + 8 * v87)) & 0x3FFFFFFF) + 4;
      v101 = v90;
      if (v16)
      {
        goto LABEL_221;
      }
    }

    else
    {
      v100 = 4;
      v101 = v90;
      if (v16)
      {
        goto LABEL_221;
      }
    }

    v102 = v100 + v101;
    if (v102 > v89)
    {
      if (v89)
      {
        v103 = v89;
      }

      else
      {
        v103 = 128;
      }

      do
      {
        v104 = v103;
        v103 *= 2;
      }

      while (v103 < v102);
      if (v104 > 1073741695)
      {
        v103 = 2147483391;
        if (v102 > 2147483391)
        {
LABEL_215:
          v16 = 7;
          goto LABEL_221;
        }
      }

      v105 = sqlite3_initialize();
      v16 = 7;
      if (!v103)
      {
        goto LABEL_221;
      }

      if (v105)
      {
        goto LABEL_221;
      }

      v106 = sub_18190287C(v6, v103, 0x100004077774924);
      if (!v106)
      {
        goto LABEL_221;
      }

      v89 = v103;
      v6 = v106;
    }

    v6[v101] = 34;
    v107 = &v6[v101 + 1];
    if (v99)
    {
      while (1)
      {
        v108 = *v99;
        if (v108 == 34)
        {
          *v107++ = 34;
          LOBYTE(v108) = *v99;
        }

        else if (!*v99)
        {
          break;
        }

        ++v99;
        *v107++ = v108;
      }
    }

    *v107 = 34;
    LODWORD(v90) = v107 - v6 + 1;
    v101 = v90;
    v6[v90] = 0;
    v109 = v90 + 6;
    if (v109 <= v89)
    {
      goto LABEL_220;
    }

    if (v89)
    {
      v110 = v89;
    }

    else
    {
      v110 = 128;
    }

    do
    {
      v111 = v110;
      v110 *= 2;
    }

    while (v110 < v109);
    if (v111 > 1073741695)
    {
      v110 = 2147483391;
      if (v90 > 2147483385)
      {
        goto LABEL_215;
      }
    }

    v112 = sqlite3_initialize();
    v16 = 7;
    if (v110)
    {
      if (!v112)
      {
        v113 = sub_18190287C(v6, v110, 0x100004077774924);
        if (v113)
        {
          v89 = v110;
          v6 = v113;
LABEL_220:
          v16 = 0;
          v114 = &v6[v90];
          v114[4] = 63;
          *v114 = 542329120;
          v101 = v90 + 5;
          v6[v101] = 0;
          LODWORD(v90) = v90 + 5;
        }
      }
    }

LABEL_221:
    sqlite3_snprintf(23, __s, "%d", ++v87);
    v115 = strlen(__s);
    if (v16)
    {
      goto LABEL_237;
    }

    v116 = v115 & 0x3FFFFFFF;
    v117 = v101 + (v115 & 0x3FFFFFFFu) + 1;
    if (v117 <= v89)
    {
      v121 = v6;
      v122 = v115;
      goto LABEL_231;
    }

    v118 = v6;
    if (v89)
    {
      v119 = v89;
    }

    else
    {
      v119 = 128;
    }

    do
    {
      v120 = v119;
      v119 *= 2;
    }

    while (v119 < v117);
    if (v120 <= 1073741695 || (v119 = 2147483391, v117 <= 2147483391))
    {
      v122 = v115;
      v124 = sqlite3_initialize();
      v16 = 7;
      if (!v119)
      {
        goto LABEL_236;
      }

      if (v124)
      {
        goto LABEL_236;
      }

      v125 = sub_18190287C(v118, v119, 0x100004077774924);
      if (!v125)
      {
        goto LABEL_236;
      }

      v89 = v119;
      v121 = v125;
      a3 = v134;
LABEL_231:
      v123 = v122 & 0x3FFFFFFF;
      v6 = v121;
      memcpy(&v121[v101], __s, v123);
      v16 = 0;
      LODWORD(v90) = v116 + v90;
      v6[v90] = 0;
      goto LABEL_237;
    }

    v16 = 7;
LABEL_236:
    v6 = v118;
    a3 = v134;
LABEL_237:
    v86 = *(a3 + 32);
    v88 = "AND ";
  }

  while (v87 < v86);
LABEL_238:
  if (v16)
  {
    goto LABEL_252;
  }

LABEL_241:
  v126 = v90 + 2;
  if (v126 <= v89)
  {
    v129 = v6;
LABEL_250:
    *(v129 + v90) = 41;
    v8 = (v90 + 1);
    v6 = v129;
LABEL_251:
    v16 = sub_1818954B4(a1, v6, v8, 128, 0, (a3 + 8), 0, v5);
    goto LABEL_252;
  }

  if (v89)
  {
    v127 = v89;
  }

  else
  {
    v127 = 128;
  }

  do
  {
    v128 = v127;
    v127 *= 2;
  }

  while (v127 < v126);
  if (v128 > 1073741695)
  {
    v127 = 2147483391;
    if (v90 > 2147483389)
    {
      v16 = 7;
      goto LABEL_252;
    }
  }

  v132 = sqlite3_initialize();
  v16 = 7;
  if (v127)
  {
    if (!v132)
    {
      v129 = sub_18190287C(v6, v127, 0x100004077774924);
      if (v129)
      {
        goto LABEL_250;
      }
    }
  }

LABEL_252:
  if (v6)
  {
    v130 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_258;
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
      v130 = &xmmword_1ED452F28;
LABEL_258:
      (*v130)(v6);
    }
  }

  return v16;
}

uint64_t sub_181A162B4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sqlite3_initialize())
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_3;
  }

  v19 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
  v7 = v19;
  if (!v19)
  {
    v6 = 0;
LABEL_3:
    v8 = 0;
    v9 = 0;
    v10 = 7;
    v11 = 1;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v11 = 0;
  v10 = 0;
  strcpy(v19, "INSERT INTO main.");
  v9 = 17;
  v8 = 1;
  v6 = 256;
  if (a2)
  {
LABEL_4:
    v12 = 2 * (strlen(a2) & 0x3FFFFFFF) + 4;
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_19:
    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_20:
    v17 = v10;
    goto LABEL_43;
  }

LABEL_18:
  v12 = 4;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_5:
  v13 = v12 + v9;
  if (v13 <= v6)
  {
    v10 = 0;
  }

  else
  {
    if (v11)
    {
      v14 = 128;
    }

    else
    {
      v14 = v6;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v14 < v13);
    if (v15 > 1073741695)
    {
      v14 = 2147483391;
      if (v13 > 2147483391)
      {
        goto LABEL_36;
      }
    }

    v16 = sqlite3_initialize();
    v17 = 7;
    if (!v14)
    {
      goto LABEL_43;
    }

    if (v16)
    {
      goto LABEL_43;
    }

    v18 = sub_18190287C(v7, v14, 0x100004077774924);
    if (!v18)
    {
      goto LABEL_43;
    }

    v6 = v14;
    v7 = v18;
  }

  *(v7 + v9) = 34;
  v20 = (v7 + v9 + 1);
  if (a2)
  {
    while (1)
    {
      v21 = *a2;
      if (v21 == 34)
      {
        *v20++ = 34;
        LOBYTE(v21) = *a2;
      }

      else if (!*a2)
      {
        break;
      }

      ++a2;
      *v20++ = v21;
    }
  }

  *v20 = 34;
  v9 = v20 - v7 + 1;
  *(v7 + v9) = 0;
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_29:
  v22 = v9 + 2;
  if (v22 <= v6)
  {
LABEL_42:
    v17 = 0;
    *(v7 + v9++) = 40;
    goto LABEL_43;
  }

  if (v6)
  {
    v23 = v6;
  }

  else
  {
    v23 = 128;
  }

  do
  {
    v24 = v23;
    v23 *= 2;
  }

  while (v23 < v22);
  if (v24 > 1073741695)
  {
    v23 = 2147483391;
    if (v9 > 2147483389)
    {
LABEL_36:
      v17 = 7;
      goto LABEL_43;
    }
  }

  v25 = sqlite3_initialize();
  v17 = 7;
  if (v23)
  {
    if (!v25)
    {
      v26 = sub_18190287C(v7, v23, 0x100004077774924);
      if (v26)
      {
        v6 = v23;
        v7 = v26;
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (*(a3 + 32) >= 1)
  {
    v27 = 0;
    while (1)
    {
      if (v27 && !v17)
      {
        v29 = v9;
        v30 = v9 + 3;
        if (v30 <= v6)
        {
          goto LABEL_61;
        }

        if (v6)
        {
          v31 = v6;
        }

        else
        {
          v31 = 128;
        }

        do
        {
          v32 = v31;
          v31 *= 2;
        }

        while (v31 < v30);
        if (v32 > 1073741695)
        {
          v31 = 2147483391;
          if (v9 > 2147483388)
          {
            v17 = 7;
            goto LABEL_62;
          }
        }

        v33 = sqlite3_initialize();
        v17 = 7;
        if (v31)
        {
          if (!v33)
          {
            v34 = sub_18190287C(v7, v31, 0x100004077774924);
            if (v34)
            {
              break;
            }
          }
        }
      }

LABEL_62:
      v35 = *(a3 + 40);
      v36 = *(v35 + 8 * v27);
      if (v36)
      {
        v28 = 2 * (strlen(*(v35 + 8 * v27)) & 0x3FFFFFFF) + 4;
        if (v17)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v28 = 4;
        if (v17)
        {
          goto LABEL_46;
        }
      }

      v37 = v28 + v9;
      if (v37 <= v6)
      {
        goto LABEL_76;
      }

      if (v6)
      {
        v38 = v6;
      }

      else
      {
        v38 = 128;
      }

      do
      {
        v39 = v38;
        v38 *= 2;
      }

      while (v38 < v37);
      if (v39 <= 1073741695 || (v38 = 2147483391, v37 <= 2147483391))
      {
        v40 = sqlite3_initialize();
        v17 = 7;
        if (v38)
        {
          if (!v40)
          {
            v41 = sub_18190287C(v7, v38, 0x100004077774924);
            if (v41)
            {
              v6 = v38;
              v7 = v41;
LABEL_76:
              *(v7 + v9) = 34;
              v42 = (v7 + v9 + 1);
              if (v36)
              {
                while (1)
                {
                  v43 = *v36;
                  if (v43 == 34)
                  {
                    *v42++ = 34;
                    LOBYTE(v43) = *v36;
                  }

                  else if (!*v36)
                  {
                    break;
                  }

                  ++v36;
                  *v42++ = v43;
                }
              }

              v17 = 0;
              *v42 = 34;
              v9 = v42 - v7 + 1;
              *(v7 + v9) = 0;
            }
          }
        }
      }

      else
      {
        v17 = 7;
      }

LABEL_46:
      if (++v27 >= *(a3 + 32))
      {
        goto LABEL_83;
      }
    }

    v6 = v31;
    v7 = v34;
LABEL_61:
    v17 = 0;
    *(v7 + v9) = 8236;
    v9 += 2;
    *(v7 + v29 + 2) = 0;
    goto LABEL_62;
  }

LABEL_83:
  if (!v17)
  {
    v44 = v9;
    v45 = v9 + 11;
    if (v45 <= v6)
    {
LABEL_96:
      v17 = 0;
      v50 = v7 + v9;
      *v50 = *") VALUES(?";
      *(v50 + 8) = 16168;
      v9 += 10;
      *(v7 + v44 + 10) = 0;
      goto LABEL_97;
    }

    if (v6)
    {
      v46 = v6;
    }

    else
    {
      v46 = 128;
    }

    do
    {
      v47 = v46;
      v46 *= 2;
    }

    while (v46 < v45);
    if (v47 > 1073741695)
    {
      v46 = 2147483391;
      if (v9 > 2147483380)
      {
        v17 = 7;
        goto LABEL_97;
      }
    }

    v48 = sqlite3_initialize();
    v17 = 7;
    if (v46)
    {
      if (!v48)
      {
        v49 = sub_18190287C(v7, v46, 0x100004077774924);
        if (v49)
        {
          v6 = v46;
          v7 = v49;
          goto LABEL_96;
        }
      }
    }
  }

LABEL_97:
  if (*(a3 + 32) >= 2)
  {
    for (i = 1; i < *(a3 + 32); ++i)
    {
      if (!v17)
      {
        v52 = v9 + 4;
        if (v52 > v6)
        {
          if (v6)
          {
            v53 = v6;
          }

          else
          {
            v53 = 128;
          }

          do
          {
            v54 = v53;
            v53 *= 2;
          }

          while (v53 < v52);
          if (v54 > 1073741695)
          {
            v53 = 2147483391;
            if (v9 > 2147483387)
            {
              v17 = 7;
              continue;
            }
          }

          v55 = sqlite3_initialize();
          v17 = 7;
          if (!v53)
          {
            continue;
          }

          if (v55)
          {
            continue;
          }

          v56 = sub_18190287C(v7, v53, 0x100004077774924);
          if (!v56)
          {
            continue;
          }

          v6 = v53;
          v7 = v56;
        }

        v17 = 0;
        *(v7 + v9) = 4137004;
        v9 += 3;
      }
    }
  }

  if (v17)
  {
    goto LABEL_116;
  }

  v57 = v9 + 2;
  if (v57 <= v6)
  {
    v60 = v7;
    goto LABEL_127;
  }

  if (v6)
  {
    v58 = v6;
  }

  else
  {
    v58 = 128;
  }

  do
  {
    v59 = v58;
    v58 *= 2;
  }

  while (v58 < v57);
  if (v59 > 1073741695)
  {
    v58 = 2147483391;
    if (v9 > 2147483389)
    {
      v17 = 7;
      goto LABEL_116;
    }
  }

  v63 = sqlite3_initialize();
  v17 = 7;
  if (v58)
  {
    if (!v63)
    {
      v60 = sub_18190287C(v7, v58, 0x100004077774924);
      if (v60)
      {
LABEL_127:
        *&v60[v9] = 41;
        v17 = sub_1818954B4(a1, v60, (v9 + 1), 128, 0, (a3 + 16), 0, v5);
        v7 = v60;
        goto LABEL_128;
      }
    }
  }

LABEL_116:
  if (!v7)
  {
    return v17;
  }

LABEL_128:
  v61 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_133:
    (*v61)(v7);
    return v17;
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
    v61 = &xmmword_1ED452F28;
    goto LABEL_133;
  }

  return v17;
}

uint64_t sub_181A16A3C(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v22 = 0;
  result = sub_181A16C5C(a2, a3, a4, a5, &v22 + 1, &v22);
  if (!result)
  {
    if (v22)
    {
      return sub_181A16C5C(a2, a3, a4, a5, 0, 0);
    }

    if (!HIDWORD(v22))
    {
      return 0;
    }

    result = sqlite3_exec(a1, "SAVEPOINT replace_op", 0, 0, 0);
    if (!result)
    {
      v11 = *(a3 + 32);
      v12 = *(a3 + 8);
      if (v11 <= 0)
      {
        sqlite3_bind_int64(*(a3 + 8), v11 + 1, 1);
        goto LABEL_29;
      }

      v13 = 0;
      v14 = *(a3 + 48);
      while (1)
      {
        if (v14 && !*(v14 + v13))
        {
          v19 = 0;
        }

        else
        {
          v15 = *(a2 + 124);
          v16 = v15 == 23 || v15 == 18;
          if (!v16 || (v17 = *(a2 + 120), v17 <= v13) || (v18 = *(*(a2 + 144) + 8 * (v13 + v17))) == 0)
          {
            v19 = sub_18190EDA8(243806);
            v20 = 0;
            goto LABEL_28;
          }

          if (byte_181A203AA[*(v18 + 20) & 0x3F] - 3 <= 1 && !*(v18 + 8))
          {
            v20 = 0;
            v19 = 7;
LABEL_28:
            v21 = v19;
            sqlite3_bind_int64(*(a3 + 8), *(a3 + 32) + 1, 1);
            result = v21;
            if (v20)
            {
LABEL_29:
              sqlite3_step(*(a3 + 8));
              result = sqlite3_reset(*(a3 + 8));
              if (!result)
              {
                result = sub_181A16C5C(a2, a3, a4, a5, 0, 0);
                if (!result)
                {
                  return sqlite3_exec(a1, "RELEASE replace_op", 0, 0, 0);
                }
              }
            }

            return result;
          }

          v19 = sqlite3_bind_value(v12, v13 + 1, v18);
        }

        v20 = v19 == 0;
        if (!v19 && ++v13 < v11)
        {
          continue;
        }

        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t sub_181A16C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v232 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 120);
  v10 = *(a1 + 124);
  if (v10 == 23)
  {
    if (a6)
    {
      v230 = *(a1 + 88) == 0;
    }

    else
    {
      v230 = 0;
    }

    v32 = v11 + 33;
    if (v11 < -33)
    {
      v32 = v11 + 64;
    }

    v33 = v32 >> 5;
    v34 = *(a2 + 56);
    if (!v34)
    {
      v56 = a6;
      v57 = sqlite3_initialize();
      if (v11 < -1 || v57)
      {
        *(a2 + 56) = 0;
        return 7;
      }

      v34 = sub_181902484((4 * v33), 0x100004052888210);
      *(a2 + 56) = v34;
      a6 = v56;
      if (!v34)
      {
        return 7;
      }
    }

    v224 = a6;
    v35 = 4 * v33;
    bzero(v34, v35);
    v36 = *(a1 + 120);
    if (v36 < 1)
    {
      return 11;
    }

    LODWORD(v37) = 0;
    v38 = 0;
    v39 = *(a1 + 144);
    result = 11;
    v223 = a4;
    do
    {
      v37 = v37;
      v40 = v36;
      v41 = v39 + 8 * v36;
      while (!*(v41 + 8 * v37))
      {
        if (++v37 >= v40)
        {
          if (v38)
          {
            goto LABEL_68;
          }

          v47 = 0;
LABEL_391:
          v202 = result == 0;
          if (!result && v11 >= 1)
          {
            v203 = 0;
            v204 = 2;
            while (1)
            {
              v205 = *(a1 + 144);
              v206 = *(v205 + 8 * v203);
              v207 = *(v205 + 8 * (v203 + *(a1 + 120)));
              if (*(*(a2 + 48) + v203))
              {
                break;
              }

              v209 = v230;
              if (!v206)
              {
                v209 = 0;
              }

              v208 = v204;
              if (v209)
              {
                goto LABEL_400;
              }

              result = 0;
LABEL_405:
              if (v207)
              {
                if (byte_181A203AA[*(v207 + 20) & 0x3F] - 3 <= 1 && !*(v207 + 8))
                {
                  return 7;
                }

                result = sqlite3_bind_value(v47, v204 - 1, v207);
              }

LABEL_409:
              v202 = result == 0;
              if (!result)
              {
                ++v203;
                v204 += 2;
                if (v203 < v11)
                {
                  continue;
                }
              }

              goto LABEL_413;
            }

            if (v206)
            {
              v208 = 2 * v203 + 2;
LABEL_400:
              if (byte_181A203AA[*(v206 + 20) & 0x3F] - 3 <= 1 && !*(v206 + 8))
              {
                return 7;
              }
            }

            else
            {
              sub_1819012D0(99877);
              v206 = 0;
              v208 = v204;
            }

            result = sqlite3_bind_value(v47, v208, v206);
            if (result)
            {
              goto LABEL_409;
            }

            goto LABEL_405;
          }

LABEL_413:
          if (!v202)
          {
            return result;
          }

          sqlite3_step(v47);
          result = sqlite3_reset(v47);
          if (result)
          {
            if (result != 19)
            {
              return result;
            }

            v210 = 3;
            v211 = a2;
            v212 = a1;
            v213 = a3;
            v214 = v223;
            v215 = 0;
            return sub_181A18474(v210, v211, v212, v213, v214, v215);
          }

          v216 = *a2;
          if (*a2)
          {
            v217 = *(v216 + 113);
            v218 = v224;
            if (v217 == 186)
            {
              goto LABEL_422;
            }

            if (v217 == 118)
            {
              if (*(v216 + 120))
              {
                return 0;
              }
            }

            else
            {
              if (v217 == 109)
              {
LABEL_422:
                v219 = "unopened";
              }

              else
              {
                v219 = "invalid";
              }

LABEL_427:
              sqlite3_log(21, "API call with %s database connection pointer", v219);
              sub_1819012D0(192814);
            }

            v210 = 1;
            v211 = a2;
            v212 = a1;
            v213 = a3;
            v214 = v223;
            v215 = v218;
            return sub_181A18474(v210, v211, v212, v213, v214, v215);
          }

          v219 = "NULL";
          v218 = v224;
          goto LABEL_427;
        }
      }

      result = 0;
      v38 = 1;
      *(*(a2 + 56) + 4 * (v37 >> 5)) |= 1 << v37;
      v36 = *(a1 + 120);
      LODWORD(v37) = v37 + 1;
    }

    while (v37 < v36);
LABEL_68:
    if (!v230)
    {
      *(*(a2 + 56) + 4 * (v11 / 32)) |= 1 << v11;
    }

    v42 = *(a2 + 64);
    v222 = (a2 + 64);
    if (!v42)
    {
      goto LABEL_83;
    }

    v43 = *(a2 + 56);
    v44 = -1;
    v45 = (a2 + 64);
    while (2)
    {
      v46 = v45;
      v47 = v42;
      result = memcmp(v43, v42[1], 4 * v33);
      if (!result)
      {
        *v46 = *(v47 + 2);
        *(v47 + 2) = *v222;
        *v222 = v47;
        goto LABEL_390;
      }

      v45 = (v47 + 16);
      v42 = *(v47 + 2);
      ++v44;
      if (v42)
      {
        continue;
      }

      break;
    }

    if (v44 >= 0xB)
    {
      sqlite3_finalize(*v47);
      v48 = *v46;
      if (*v46)
      {
        v49 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_81;
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
LABEL_81:
          (*v49)(v48);
        }
      }

      *v46 = 0;
    }

LABEL_83:
    v50 = (96 * v33);
    v51 = *(a1 + 112);
    if (v51)
    {
      for (i = "sqlite_stat1"; ; ++i)
      {
        v53 = *v51;
        v54 = *i;
        v55 = v53 == v54;
        if (v53 == v54)
        {
          if (!*v51)
          {
            goto LABEL_127;
          }
        }

        else if (byte_181A20298[*v51] != byte_181A20298[*i])
        {
          goto LABEL_127;
        }

        ++v51;
      }
    }

    v55 = 0;
LABEL_127:
    v71 = sqlite3_initialize();
    result = 7;
    if (v50 < 1 || v71)
    {
      return result;
    }

    v72 = sub_181902484(v50, 0x30040275E93A9);
    if (!v72)
    {
      return 7;
    }

    v47 = v72;
    v73 = (v72 + 24);
    *(v47 + 1) = v73;
    memcpy(v73, *(a2 + 56), v35);
    v225 = v55;
    if (sqlite3_initialize() || (v78 = sub_181902484(256, 2663054284)) == 0)
    {
      v220 = 0;
      v229 = 0;
      v75 = 0;
      v76 = 0;
      result = 7;
      v77 = 1;
    }

    else
    {
      v77 = 0;
      v79 = v78;
      result = 0;
      strcpy(v79, "UPDATE main.");
      v229 = v79;
      v76 = 12;
      v75 = 1;
      v220 = 256;
    }

    v80 = *(a1 + 112);
    if (v80)
    {
      v81 = result;
      v82 = strlen(*(a1 + 112));
      result = v81;
      v83 = 2 * (v82 & 0x3FFFFFFF) + 4;
    }

    else
    {
      v83 = 4;
    }

    if (!v75)
    {
      goto LABEL_182;
    }

    v84 = v76;
    v85 = v76;
    v86 = v83 + v76;
    v87 = v220;
    if (v86 <= v220)
    {
      v90 = v229;
      goto LABEL_158;
    }

    if (v77)
    {
      v87 = 128;
    }

    else
    {
      v87 = v220;
    }

    do
    {
      v88 = v87;
      v87 *= 2;
    }

    while (v87 < v86);
    if (v88 <= 1073741695 || (v87 = 2147483391, v86 <= 2147483391))
    {
      v89 = sqlite3_initialize();
      result = 7;
      if (!v87 || v89)
      {
        goto LABEL_178;
      }

      v90 = sub_18190287C(v229, v87, 0x100004077774924);
      if (v90)
      {
LABEL_158:
        *(v90 + v85) = 34;
        v91 = (v90 + v85 + 1);
        if (v80)
        {
          while (1)
          {
            v92 = *v80;
            if (v92 == 34)
            {
              *v91++ = 34;
              LOBYTE(v92) = *v80;
            }

            else if (!*v80)
            {
              break;
            }

            ++v80;
            *v91++ = v92;
          }
        }

        *v91 = 34;
        v93 = &v91[-v90 + 1];
        v94 = v93;
        v95 = v93;
        *(v90 + v93) = 0;
        v96 = v93 + 6;
        v229 = v90;
        if (v96 <= v87)
        {
          v220 = v87;
LABEL_176:
          result = 0;
          v101 = &v229[v94];
          v101[4] = 32;
          *v101 = 1413829408;
          v229[v95 + 5] = 0;
          v76 = v95 + 5;
        }

        else
        {
          if (v87)
          {
            v97 = v87;
          }

          else
          {
            v97 = 128;
          }

          do
          {
            v98 = v97;
            v97 *= 2;
          }

          while (v97 < v96);
          if (v98 > 1073741695)
          {
            v97 = 2147483391;
            if (v95 > 2147483385)
            {
              goto LABEL_179;
            }
          }

          v99 = sqlite3_initialize();
          result = 7;
          if (!v97 || v99)
          {
            v220 = v87;
          }

          else
          {
            v100 = sub_18190287C(v229, v97, 0x100004077774924);
            if (v100)
            {
              v220 = v97;
              v229 = v100;
              goto LABEL_176;
            }

LABEL_179:
            v220 = v87;
            result = 7;
          }

          v76 = v95;
        }

LABEL_182:
        v102 = *(a1 + 120);
        v228 = a3;
        if (v102 >= 1)
        {
          v103 = 0;
          v104 = &byte_181A2878D;
          v105 = v220;
          while (1)
          {
            if (*(*(a2 + 48) + v103) || !*(*(a1 + 144) + 8 * (v102 + v103)))
            {
              goto LABEL_187;
            }

            if (v104)
            {
              v106 = result;
              v107 = strlen(v104);
              result = v106;
              v108 = v107 & 0x3FFFFFFF;
              if (result)
              {
                goto LABEL_208;
              }
            }

            else
            {
              v108 = 0;
              if (result)
              {
                goto LABEL_208;
              }
            }

            v109 = v108 + 1 + v76;
            if (v109 <= v105)
            {
              break;
            }

            if (v105)
            {
              v110 = v105;
            }

            else
            {
              v110 = 128;
            }

            do
            {
              v111 = v110;
              v110 *= 2;
            }

            while (v110 < v109);
            if (v111 <= 1073741695 || (v110 = 2147483391, v109 <= 2147483391))
            {
              v112 = sqlite3_initialize();
              result = 7;
              if (!v110 || v112)
              {
                goto LABEL_208;
              }

              v113 = sub_18190287C(v229, v110, 0x100004077774924);
              if (v113)
              {
                v105 = v110;
LABEL_206:
                v114 = v108;
                v115 = v113;
                memcpy((v113 + v76), v104, v114);
                result = 0;
                v229 = v115;
                v115[v114 + v76] = 0;
                v76 = v114 + v76;
                goto LABEL_208;
              }
            }

            result = 7;
LABEL_208:
            v116 = *(a2 + 40);
            v117 = *(v116 + 8 * v103);
            if (v117)
            {
              v118 = result;
              v119 = strlen(*(v116 + 8 * v103));
              result = v118;
              v120 = 2 * (v119 & 0x3FFFFFFF) + 4;
            }

            else
            {
              v120 = 4;
            }

            v226 = v76;
            v76 = v76;
            if (result)
            {
              v121 = result;
              goto LABEL_244;
            }

            v122 = v120 + v76;
            if (v122 <= v105)
            {
              v126 = v229;
            }

            else
            {
              if (v105)
              {
                v123 = v105;
              }

              else
              {
                v123 = 128;
              }

              do
              {
                v124 = v123;
                v123 *= 2;
              }

              while (v123 < v122);
              if (v124 > 1073741695)
              {
                v123 = 2147483391;
                if (v122 > 2147483391)
                {
                  goto LABEL_243;
                }
              }

              v125 = sqlite3_initialize();
              if (!v123)
              {
                goto LABEL_243;
              }

              if (v125)
              {
                goto LABEL_243;
              }

              v126 = sub_18190287C(v229, v123, 0x100004077774924);
              if (!v126)
              {
                goto LABEL_243;
              }

              v105 = v123;
            }

            *(v126 + v76) = 34;
            v127 = (v126 + v76 + 1);
            if (v117)
            {
              while (1)
              {
                v128 = *v117;
                if (v128 == 34)
                {
                  *v127++ = 34;
                  LOBYTE(v128) = *v117;
                }

                else if (!*v117)
                {
                  break;
                }

                ++v117;
                *v127++ = v128;
              }
            }

            *v127 = 34;
            v129 = &v127[-v126 + 1];
            v76 = v129;
            v226 = v129;
            *(v126 + v129) = 0;
            v130 = v129 + 5;
            if (v130 <= v105)
            {
              goto LABEL_242;
            }

            if (v105)
            {
              v131 = v105;
            }

            else
            {
              v131 = 128;
            }

            do
            {
              v132 = v131;
              v131 *= 2;
            }

            while (v131 < v130);
            v229 = v126;
            if (v132 <= 1073741695 || (v131 = 2147483391, v226 <= 2147483386))
            {
              v133 = sqlite3_initialize();
              if (v131)
              {
                if (!v133)
                {
                  v126 = sub_18190287C(v229, v131, 0x100004077774924);
                  if (v126)
                  {
                    v105 = v131;
LABEL_242:
                    v121 = 0;
                    *(v126 + v76) = 1059077408;
                    v76 = v226 + 4;
                    v229 = v126;
                    *(v126 + v76) = 0;
                    v226 = v76;
                    goto LABEL_244;
                  }
                }
              }
            }

LABEL_243:
            v121 = 7;
LABEL_244:
            sqlite3_snprintf(23, __s, "%d", (2 * v103) | 1);
            v134 = strlen(__s);
            if (v121)
            {
              result = v121;
            }

            else
            {
              v135 = v134;
              v136 = v134 & 0x3FFFFFFF;
              v137 = v76 + (v134 & 0x3FFFFFFFu) + 1;
              if (v137 <= v105)
              {
                v221 = v105;
                a3 = v228;
                v142 = v229;
                goto LABEL_257;
              }

              if (v105)
              {
                v138 = v105;
              }

              else
              {
                v138 = 128;
              }

              do
              {
                v139 = v138;
                v138 *= 2;
              }

              while (v138 < v137);
              if (v139 <= 1073741695 || (v138 = 2147483391, v137 <= 2147483391))
              {
                v140 = sqlite3_initialize();
                result = 7;
                if (!v138 || v140)
                {
                  goto LABEL_185;
                }

                v141 = sub_18190287C(v229, v138, 0x100004077774924);
                if (v141)
                {
                  v221 = v138;
                  v142 = v141;
                  a3 = v228;
LABEL_257:
                  memcpy(&v142[v76], __s, v135 & 0x3FFFFFFF);
                  result = 0;
                  v76 = (v136 + v226);
                  v229 = v142;
                  v142[v76] = 0;
                  v105 = v221;
                  goto LABEL_186;
                }
              }

              result = 7;
            }

LABEL_185:
            v76 = v226;
            a3 = v228;
LABEL_186:
            v102 = *(a1 + 120);
            v104 = ", ";
LABEL_187:
            if (++v103 >= v102)
            {
              goto LABEL_260;
            }
          }

          v113 = v229;
          goto LABEL_206;
        }

        LODWORD(v105) = v220;
LABEL_260:
        if (!result)
        {
          v143 = v76 + 8;
          if (v143 <= v105)
          {
LABEL_272:
            result = 0;
            v148 = &v229[v76];
            *(v148 + 3) = 541413957;
            *v148 = 1162368800;
            v229[v76 + 7] = 0;
            v76 = v76 + 7;
            goto LABEL_274;
          }

          if (v105)
          {
            v144 = v105;
          }

          else
          {
            v144 = 128;
          }

          do
          {
            v145 = v144;
            v144 *= 2;
          }

          while (v144 < v143);
          if (v145 > 1073741695)
          {
            v144 = 2147483391;
            if (v76 > 2147483383)
            {
              goto LABEL_273;
            }
          }

          v146 = sqlite3_initialize();
          result = 7;
          if (v144 && !v146)
          {
            v147 = sub_18190287C(v229, v144, 0x100004077774924);
            if (v147)
            {
              LODWORD(v105) = v144;
              v229 = v147;
              goto LABEL_272;
            }

LABEL_273:
            result = 7;
          }
        }

LABEL_274:
        if (*(a1 + 120) >= 1)
        {
          v149 = v105;
          v150 = 0;
          v151 = &byte_181A2878D;
          v227 = v149;
          v152 = v76;
          while (1)
          {
            if (!*(*(a2 + 48) + v150) && (!v230 || !*(*(a1 + 144) + 8 * v150)))
            {
              goto LABEL_278;
            }

            if (v151)
            {
              v153 = result;
              v154 = strlen(v151);
              result = v153;
              v155 = v154 & 0x3FFFFFFF;
              if (v153)
              {
                goto LABEL_316;
              }
            }

            else
            {
              v155 = 0;
              if (result)
              {
                goto LABEL_316;
              }
            }

            v156 = v152;
            v157 = v155 + 1 + v152;
            if (v157 <= v227)
            {
              v161 = v229;
            }

            else
            {
              if (v227)
              {
                v158 = v227;
              }

              else
              {
                v158 = 128;
              }

              do
              {
                v159 = v158;
                v158 *= 2;
              }

              while (v158 < v157);
              if (v159 > 1073741695)
              {
                v158 = 2147483391;
                if (v157 > 2147483391)
                {
LABEL_315:
                  result = 7;
LABEL_316:
                  v169 = v225;
                  if (v150 != 1)
                  {
                    v169 = 0;
                  }

                  v151 = " AND ";
                  a3 = v228;
                  if (v169)
                  {
                    goto LABEL_278;
                  }

                  goto LABEL_319;
                }
              }

              v160 = sqlite3_initialize();
              result = 7;
              if (!v158 || v160)
              {
                goto LABEL_316;
              }

              v161 = sub_18190287C(v229, v158, 0x100004077774924);
              if (!v161)
              {
                goto LABEL_315;
              }

              v227 = v158;
            }

            v162 = v155;
            v163 = v161;
            memcpy((v161 + v152), v151, v162);
            v152 = v162 + v152;
            v229 = v163;
            v163[v162 + v156] = 0;
            v164 = !v225;
            if (v150 != 1)
            {
              v164 = 1;
            }

            if ((v164 & 1) == 0)
            {
              a3 = v228;
              if (v152 + 75 <= v227)
              {
                goto LABEL_313;
              }

              if (v227)
              {
                v165 = v227;
              }

              else
              {
                v165 = 128;
              }

              do
              {
                v166 = v165;
                v165 *= 2;
              }

              while (v165 < v152 + 75);
              if (v166 > 1073741695)
              {
                v165 = 2147483391;
                if (v152 > 2147483316)
                {
                  goto LABEL_370;
                }
              }

              v167 = sqlite3_initialize();
              result = 7;
              if (!v165 || v167)
              {
                goto LABEL_371;
              }

              v168 = sub_18190287C(v229, v165, 0x100004077774924);
              if (v168)
              {
                v227 = v165;
                v229 = v168;
LABEL_313:
                result = 0;
                qmemcpy(&v229[v152], "idx IS CASE WHEN length(?4)=0 AND typeof(?4)='blob' THEN NULL ELSE ?4 END ", 74);
                v152 = v152 + 74;
                v229[v152] = 0;
              }

              else
              {
LABEL_370:
                result = 7;
              }

LABEL_371:
              v151 = " AND ";
              goto LABEL_278;
            }

            result = 0;
LABEL_319:
            v170 = *(a2 + 40);
            v171 = *(v170 + 8 * v150);
            if (v171)
            {
              v172 = result;
              v173 = strlen(*(v170 + 8 * v150));
              result = v172;
              v174 = 2 * (v173 & 0x3FFFFFFF) + 4;
            }

            else
            {
              v174 = 4;
            }

            v175 = v152;
            if (result)
            {
              v176 = result;
              goto LABEL_355;
            }

            v177 = v174 + v152;
            if (v177 <= v227)
            {
              v181 = v229;
            }

            else
            {
              if (v227)
              {
                v178 = v227;
              }

              else
              {
                v178 = 128;
              }

              do
              {
                v179 = v178;
                v178 *= 2;
              }

              while (v178 < v177);
              if (v179 > 1073741695)
              {
                v178 = 2147483391;
                if (v177 > 2147483391)
                {
                  goto LABEL_354;
                }
              }

              v180 = sqlite3_initialize();
              if (!v178)
              {
                goto LABEL_354;
              }

              if (v180)
              {
                goto LABEL_354;
              }

              v181 = sub_18190287C(v229, v178, 0x100004077774924);
              if (!v181)
              {
                goto LABEL_354;
              }

              v227 = v178;
            }

            *(v181 + v152) = 34;
            v182 = (v181 + v152 + 1);
            if (v171)
            {
              while (1)
              {
                v183 = *v171;
                if (v183 == 34)
                {
                  *v182++ = 34;
                  LOBYTE(v183) = *v171;
                }

                else if (!*v171)
                {
                  break;
                }

                ++v171;
                *v182++ = v183;
              }
            }

            *v182 = 34;
            v152 = &v182[-v181 + 1];
            v175 = v152;
            *(v181 + v152) = 0;
            v184 = v152 + 6;
            if (v184 <= v227)
            {
              goto LABEL_353;
            }

            if (v227)
            {
              v185 = v227;
            }

            else
            {
              v185 = 128;
            }

            do
            {
              v186 = v185;
              v185 *= 2;
            }

            while (v185 < v184);
            v229 = v181;
            if (v186 <= 1073741695 || (v185 = 2147483391, v152 <= 2147483385))
            {
              v187 = sqlite3_initialize();
              if (v185)
              {
                if (!v187)
                {
                  v181 = sub_18190287C(v229, v185, 0x100004077774924);
                  if (v181)
                  {
                    v227 = v185;
LABEL_353:
                    v176 = 0;
                    v188 = v181 + v152;
                    *(v188 + 4) = 63;
                    *v188 = 542329120;
                    v175 = v152 + 5;
                    v229 = v181;
                    *(v181 + v175) = 0;
                    v152 = v175;
                    goto LABEL_355;
                  }
                }
              }
            }

LABEL_354:
            v176 = 7;
LABEL_355:
            sqlite3_snprintf(23, __s, "%d", 2 * v150 + 2);
            v189 = strlen(__s);
            if (v176)
            {
              result = v176;
            }

            else
            {
              v190 = v189;
              v191 = v189 & 0x3FFFFFFF;
              v192 = v175 + (v189 & 0x3FFFFFFFu) + 1;
              if (v192 <= v227)
              {
                v196 = v229;
              }

              else
              {
                if (v227)
                {
                  v193 = v227;
                }

                else
                {
                  v193 = 128;
                }

                do
                {
                  v194 = v193;
                  v193 *= 2;
                }

                while (v193 < v192);
                if (v194 > 1073741695)
                {
                  v193 = 2147483391;
                  if (v192 > 2147483391)
                  {
                    goto LABEL_369;
                  }
                }

                v195 = sqlite3_initialize();
                result = 7;
                if (!v193 || v195)
                {
                  goto LABEL_277;
                }

                v196 = sub_18190287C(v229, v193, 0x100004077774924);
                if (!v196)
                {
LABEL_369:
                  result = 7;
                  goto LABEL_277;
                }

                v227 = v193;
              }

              v197 = v196;
              memcpy((v196 + v175), __s, v190 & 0x3FFFFFFF);
              result = 0;
              v152 = (v191 + v152);
              v229 = v197;
              v197[v152] = 0;
            }

LABEL_277:
            v151 = " AND ";
            a3 = v228;
LABEL_278:
            if (++v150 >= *(a1 + 120))
            {
              goto LABEL_373;
            }
          }
        }

        v152 = v76;
LABEL_373:
        if (!result)
        {
          result = sub_1818954B4(*a2, v229, v152, 128, 0, v47, 0, v74);
          if (!result)
          {
            *(v47 + 2) = *v222;
            *v222 = v47;
            if (!v229)
            {
              goto LABEL_389;
            }

            goto LABEL_383;
          }
        }

        v198 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v199 = result;
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
LABEL_382:
            result = v199;
            if (!v229)
            {
              goto LABEL_389;
            }

LABEL_383:
            v200 = &off_1ED452EB0;
            v201 = result;
            if (!dword_1ED452E80)
            {
LABEL_388:
              (*v200)(v229);
              result = v201;
              goto LABEL_389;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v229);
            --qword_1ED456A90;
            off_1ED452EB0(v229);
            result = v201;
            v229 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v200 = &xmmword_1ED452F28;
              goto LABEL_388;
            }

LABEL_389:
            if (!v47)
            {
              goto LABEL_391;
            }

LABEL_390:
            v47 = *v47;
            goto LABEL_391;
          }

          v198 = &xmmword_1ED452F28;
        }

        else
        {
          v199 = result;
        }

        (*v198)(v47);
        v47 = 0;
        goto LABEL_382;
      }
    }

    result = 7;
LABEL_178:
    v76 = v84;
    goto LABEL_182;
  }

  if (v10 != 9)
  {
    if (*(a2 + 72) && (result = sub_181A18DC0(a1, a2), result))
    {
      if (result == 100)
      {
        sqlite3_reset(*(a2 + 24));
LABEL_121:
        v62 = 3;
        v63 = a2;
        v64 = a1;
        v65 = a3;
        v66 = a4;
        v67 = a5;
        goto LABEL_122;
      }
    }

    else
    {
      v15 = *(a2 + 16);
      if (v11 >= 1)
      {
        v16 = 1;
        do
        {
          v18 = *(a1 + 124);
          v19 = v18 == 23 || v18 == 18;
          if (!v19 || (v20 = *(a1 + 120), v20 <= v16 - 1) || (v21 = *(*(a1 + 144) + 8 * (v16 + v20 - 1))) == 0)
          {
LABEL_52:

            return sub_18190EDA8(243806);
          }

          if (byte_181A203AA[*(v21 + 20) & 0x3F] - 3 <= 1 && !*(v21 + 8))
          {
            return 7;
          }

          result = sqlite3_bind_value(v15, v16, v21);
          if (result)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 >= v11;
          }

          ++v16;
        }

        while (!v17);
        if (result)
        {
          return result;
        }

        v15 = *(a2 + 16);
      }

      sqlite3_step(v15);
      result = sqlite3_reset(*(a2 + 16));
    }

    if (result != 19)
    {
      return result;
    }

    goto LABEL_121;
  }

  if (*(a1 + 88))
  {
    v12 = *(a2 + 48);
  }

  else
  {
    v12 = 0;
  }

  v22 = *(a2 + 8);
  if (v11 < 1)
  {
LABEL_47:
    if (v22)
    {
      v28 = *(*v22 + 24);
      if (v28)
      {
        v29 = a6;
        xmmword_1ED452F18(v28);
        v30 = *(*v22 + 24);
        v31 = *(v22 + 8);
        if (v30)
        {
          xmmword_1ED452F28(v30);
        }

        a6 = v29;
      }

      else
      {
        v31 = *(v22 + 8);
      }
    }

    else
    {
      v31 = 0;
    }

    v58 = *(a2 + 8);
    if (v31 <= v11)
    {
      v59 = a6;
    }

    else
    {
      v59 = a6;
      if (a6)
      {
        v60 = v12 == 0;
      }

      else
      {
        v60 = 0;
      }

      v61 = !v60;
      result = sqlite3_bind_int64(v58, v11 + 1, v61);
      if (result)
      {
        return result;
      }

      v58 = *(a2 + 8);
    }

    sqlite3_step(v58);
    result = sqlite3_reset(*(a2 + 8));
    if (result)
    {
      if (result != 19)
      {
        return result;
      }

      v62 = 3;
      v63 = a2;
      v64 = a1;
      v65 = a3;
      v66 = a4;
      v67 = 0;
      goto LABEL_122;
    }

    v68 = *a2;
    if (*a2)
    {
      v69 = *(v68 + 113);
      switch(v69)
      {
        case 186:
          goto LABEL_116;
        case 118:
          if (*(v68 + 120))
          {
            return 0;
          }

          goto LABEL_154;
        case 109:
LABEL_116:
          v70 = "unopened";
          break;
        default:
          v70 = "invalid";
          break;
      }
    }

    else
    {
      v70 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v70);
    sub_1819012D0(192814);
LABEL_154:
    if (*(a2 + 122))
    {
      return 0;
    }

    v62 = 1;
    v63 = a2;
    v64 = a1;
    v65 = a3;
    v66 = a4;
    v67 = v59;
LABEL_122:

    return sub_181A18474(v62, v63, v64, v65, v66, v67);
  }

  v23 = a6;
  v24 = 0;
  while (v12 && !*(v12 + v24))
  {
    result = 0;
LABEL_31:
    if (++v24 >= v11)
    {
      goto LABEL_45;
    }
  }

  v25 = *(a1 + 124);
  if (v25 != 23 && v25 != 9)
  {
    goto LABEL_52;
  }

  if (*(a1 + 120) <= v24)
  {
    goto LABEL_52;
  }

  v27 = *(*(a1 + 144) + 8 * v24);
  if (!v27)
  {
    goto LABEL_52;
  }

  if (byte_181A203AA[*(v27 + 20) & 0x3F] - 3 <= 1 && !*(v27 + 8))
  {
    return 7;
  }

  result = sqlite3_bind_value(v22, v24 + 1, v27);
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_45:
  if (!result)
  {
    v22 = *(a2 + 8);
    a6 = v23;
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_181A18474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, _DWORD *a6)
{
  if (a6 && (result = sub_181A18DC0(a3, a2), result))
  {
    if (result != 100)
    {
      return result;
    }

    if (!*(a2 + 122))
    {
      goto LABEL_31;
    }

    v13 = *(a2 + 24);
    if (v13)
    {
      v14 = *(*v13 + 24);
      if (v14)
      {
        xmmword_1ED452F18(v14);
        v15 = *(*v13 + 24);
        v16 = v13[130];
        if (v15)
        {
          xmmword_1ED452F28(v15);
        }
      }

      else
      {
        v16 = v13[130];
      }
    }

    else
    {
      v16 = 0;
    }

    if (sqlite3_column_int(v13, v16 - 1))
    {
      v27 = 0;
    }

    else
    {
LABEL_31:
      *(a3 + 104) = *(a2 + 24);
      v27 = a4(a5, a1, a3);
      *(a3 + 104) = 0;
    }

    result = sqlite3_reset(*(a2 + 24));
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (a1 == 3 && *(a2 + 76))
    {
      v17 = *(a3 + 4);
      v18 = (*(a3 + 8) - v17);
      if (v18 >= 1)
      {
        v19 = *(a3 + 16);
        v20 = *(a2 + 96);
        v21 = *(a2 + 100);
        v22 = v20 + v18;
        if ((v20 + v18) <= v21)
        {
          result = *(a2 + 88);
        }

        else
        {
          if (v21)
          {
            v23 = *(a2 + 100);
          }

          else
          {
            v23 = 128;
          }

          do
          {
            v24 = v23;
            v23 *= 2;
          }

          while (v23 < v22);
          if (v24 > 1073741695)
          {
            v23 = 2147483391;
            if (v22 > 2147483391)
            {
              return 0;
            }
          }

          v25 = *(a2 + 88);
          v26 = sqlite3_initialize();
          result = 0;
          if (!v23)
          {
            return result;
          }

          if (v26)
          {
            return result;
          }

          result = sub_18190287C(v25, v23, 0x100004077774924);
          if (!result)
          {
            return result;
          }

          *(a2 + 88) = result;
          *(a2 + 100) = v23;
          v20 = *(a2 + 96);
        }

        memcpy((result + v20), (v19 + v17), v18);
        result = 0;
        *(a2 + 96) += v18;
        return result;
      }

      return 0;
    }

    v27 = a4(a5, (a1 + 1), a3);
    if (v27 == 1)
    {
      return 21;
    }
  }

  if (!v27)
  {
    goto LABEL_37;
  }

  if (v27 == 2)
  {
    return 4;
  }

  if (v27 != 1)
  {
    return 21;
  }

  *a6 = 1;
LABEL_37:
  if (!*(a2 + 121))
  {
    return 0;
  }

  v28 = *(a3 + 124);
  if (!*(a2 + 120))
  {
    __s = *(a3 + 112);
    v29 = a2 + 104;
    v41 = *(a2 + 112);
    v42 = *(a2 + 116);
    v43 = v41;
    if (v41 >= v42)
    {
      if (!v42)
      {
        v42 = 128;
      }

      v64 = v42;
      do
      {
        v65 = v64;
        v64 *= 2;
      }

      while (v64 <= v41);
      if (v65 > 1073741695)
      {
        v64 = 2147483391;
        if (v41 > 2147483390)
        {
          goto LABEL_90;
        }
      }

      v66 = *v29;
      v67 = sqlite3_initialize();
      v52 = 0;
      v53 = 7;
      if (!v64 || v67)
      {
        goto LABEL_118;
      }

      v44 = sub_18190287C(v66, v64, 0x100004077774924);
      if (!v44)
      {
        goto LABEL_114;
      }

      *(a2 + 104) = v44;
      *(a2 + 116) = v64;
      v41 = *(a2 + 112);
      v43 = v41;
    }

    else
    {
      v44 = *v29;
    }

    *(a2 + 112) = v41 + 1;
    *(v44 + v43) = 84;
    v45 = *(a2 + 32);
    v46 = *(a2 + 112);
    v47 = *(a2 + 116);
    if (v46 + 9 <= v47)
    {
      v54 = *v29;
    }

    else
    {
      if (v47)
      {
        v48 = *(a2 + 116);
      }

      else
      {
        v48 = 128;
      }

      do
      {
        v49 = v48;
        v48 *= 2;
      }

      while (v48 < v46 + 9);
      if (v49 > 1073741695)
      {
        v48 = 2147483391;
        if (v46 > 2147483382)
        {
          goto LABEL_90;
        }
      }

      v50 = *v29;
      v51 = sqlite3_initialize();
      v52 = 0;
      v53 = 7;
      if (!v48 || v51)
      {
        goto LABEL_118;
      }

      v54 = sub_18190287C(v50, v48, 0x100004077774924);
      if (!v54)
      {
        goto LABEL_114;
      }

      *(a2 + 104) = v54;
      *(a2 + 116) = v48;
      v46 = *(a2 + 112);
    }

    v68 = (v54 + v46);
    if (v45 > 0x7F)
    {
      if (v45 >> 14)
      {
        v69 = sub_1819436D0(v68, v45);
      }

      else
      {
        v68->i8[0] = (v45 >> 7) | 0x80;
        v68->i8[1] = v45 & 0x7F;
        v69 = 2;
      }
    }

    else
    {
      v68->i8[0] = v45;
      v69 = 1;
    }

    v70 = *(a2 + 112) + v69;
    *(a2 + 112) = v70;
    v71 = *(a2 + 32);
    if (v71 < 1)
    {
      v53 = 0;
LABEL_117:
      v52 = 1;
      goto LABEL_118;
    }

    v72 = *(a2 + 48);
    v73 = v71 + v70;
    v74 = *(a2 + 116);
    if ((v71 + v70) <= v74)
    {
      v78 = *v29;
      goto LABEL_116;
    }

    if (v74)
    {
      v75 = *(a2 + 116);
    }

    else
    {
      v75 = 128;
    }

    do
    {
      v76 = v75;
      v75 *= 2;
    }

    while (v75 < v73);
    if (v76 <= 1073741695 || (v75 = 2147483391, v73 <= 2147483391))
    {
      v107 = *v29;
      v77 = sqlite3_initialize();
      v52 = 0;
      v53 = 7;
      if (v75 && !v77)
      {
        v78 = sub_18190287C(v107, v75, 0x100004077774924);
        if (v78)
        {
          *(a2 + 104) = v78;
          *(a2 + 116) = v75;
          v70 = *(a2 + 112);
LABEL_116:
          memcpy((v78 + v70), v72, v71);
          v53 = 0;
          *(a2 + 112) += v71;
          goto LABEL_117;
        }

LABEL_114:
        v52 = 0;
      }

LABEL_118:
      v79 = strlen(__s);
      if (v79 < 0)
      {
        goto LABEL_135;
      }

      if (v52)
      {
        v80 = (v79 + 1);
        v81 = *(a2 + 112);
        v82 = *(a2 + 116);
        v83 = v81 + v80;
        if ((v81 + v80) <= v82)
        {
          v53 = 0;
          v89 = *v29;
          goto LABEL_134;
        }

        if (v82)
        {
          v84 = *(a2 + 116);
        }

        else
        {
          v84 = 128;
        }

        do
        {
          v85 = v84;
          v84 *= 2;
        }

        while (v84 < v83);
        if (v85 <= 1073741695 || (v84 = 2147483391, v83 <= 2147483391))
        {
          v86 = *v29;
          v87 = sqlite3_initialize();
          v88 = 7;
          if (!v84 || v87)
          {
            goto LABEL_132;
          }

          v89 = sub_18190287C(v86, v84, 0x100004077774924);
          if (v89)
          {
            *(a2 + 104) = v89;
            *(a2 + 116) = v84;
            v81 = *(a2 + 112);
LABEL_134:
            memcpy((v89 + v81), __s, v80);
            *(a2 + 112) += v80;
LABEL_135:
            result = v53;
            *(a2 + 120) = 1;
            v30 = v28 == 9;
            if (v28 == 9)
            {
              v31 = 9;
            }

            else
            {
              v31 = 18;
            }

            if (v53)
            {
              goto LABEL_139;
            }

            goto LABEL_42;
          }
        }

        v88 = 7;
      }

      else
      {
        v88 = v53;
      }

LABEL_132:
      *(a2 + 120) = 1;
      v30 = v28 == 9;
      result = v88;
      goto LABEL_139;
    }

LABEL_90:
    v52 = 0;
    v53 = 7;
    goto LABEL_118;
  }

  v29 = a2 + 104;
  v30 = v28 == 9;
  if (v28 == 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = 18;
  }

LABEL_42:
  v32 = *(a2 + 112);
  v33 = *(a2 + 116);
  v34 = v32;
  if (v32 >= v33)
  {
    if (!v33)
    {
      v33 = 128;
    }

    v55 = v33;
    do
    {
      v56 = v55;
      v55 *= 2;
    }

    while (v55 <= v32);
    if (v56 > 1073741695)
    {
      v55 = 2147483391;
      if (v32 > 2147483390)
      {
        goto LABEL_83;
      }
    }

    v57 = *v29;
    v58 = sqlite3_initialize();
    result = 7;
    if (!v55 || v58)
    {
      goto LABEL_139;
    }

    v35 = sub_18190287C(v57, v55, 0x100004077774924);
    if (!v35)
    {
LABEL_83:
      result = 7;
      goto LABEL_139;
    }

    *(a2 + 104) = v35;
    *(a2 + 116) = v55;
    v32 = *(a2 + 112);
    v34 = v32;
  }

  else
  {
    v35 = *v29;
  }

  *(a2 + 112) = v32 + 1;
  *(v35 + v34) = v31;
  v36 = v27 == 1;
  v38 = *(a2 + 112);
  v37 = *(a2 + 116);
  v39 = v38;
  if (v38 < v37)
  {
    v40 = *v29;
LABEL_46:
    result = 0;
    *(a2 + 112) = v38 + 1;
    *(v40 + v39) = v36;
    goto LABEL_139;
  }

  if (!v37)
  {
    v37 = 128;
  }

  v59 = v37;
  do
  {
    v60 = v59;
    v59 *= 2;
  }

  while (v59 <= v38);
  if (v60 > 1073741695)
  {
    v59 = 2147483391;
    if (v38 > 2147483390)
    {
      goto LABEL_83;
    }
  }

  v61 = *v29;
  v62 = sqlite3_initialize();
  result = 7;
  if (v59 && !v62)
  {
    v63 = sub_18190287C(v61, v59, 0x100004077774924);
    if (v63)
    {
      v40 = v63;
      *(a2 + 104) = v63;
      *(a2 + 116) = v59;
      v38 = *(a2 + 112);
      v39 = v38;
      goto LABEL_46;
    }

    goto LABEL_83;
  }

LABEL_139:
  v90 = *(a2 + 32);
  if (v90 >= 1)
  {
    for (i = 0; i < v90; ++i)
    {
      if (v30 || v28 == 23 && *(*(a2 + 48) + i))
      {
        v92 = *(a3 + 124);
        v93 = v92 == 23 || v92 == 9;
        if (!v93 || i >= *(a3 + 120))
        {
          goto LABEL_163;
        }

        v94 = (*(a3 + 144) + 8 * i);
      }

      else
      {
        v95 = *(a3 + 124);
        v96 = v95 == 23 || v95 == 18;
        if (!v96 || (v97 = *(a3 + 120), i >= v97))
        {
LABEL_163:
          v98 = 0;
          if (result)
          {
            continue;
          }

          goto LABEL_164;
        }

        v94 = (*(a3 + 144) + 8 * i + 8 * v97);
      }

      v98 = *v94;
      if (result)
      {
        continue;
      }

LABEL_164:
      v109 = 0;
      result = sub_181A12484(0, v98, &v109);
      if (!result)
      {
        v99 = *(a2 + 112);
        v100 = v109 + v99;
        v101 = *(v29 + 12);
        if (v109 + v99 <= v101)
        {
          v106 = *v29;
          goto LABEL_177;
        }

        if (v101)
        {
          v102 = *(v29 + 12);
        }

        else
        {
          v102 = 128;
        }

        do
        {
          v103 = v102;
          v102 *= 2;
        }

        while (v102 < v100);
        if (v103 <= 1073741695 || (v102 = 2147483391, v100 <= 2147483391))
        {
          v104 = *v29;
          v105 = sqlite3_initialize();
          result = 7;
          if (!v102 || v105)
          {
            goto LABEL_142;
          }

          v106 = sub_18190287C(v104, v102, 0x100004077774924);
          if (v106)
          {
            *(a2 + 104) = v106;
            *(v29 + 12) = v102;
            v99 = *(a2 + 112);
LABEL_177:
            sub_181A12484(v106 + v99, v98, 0);
            result = 0;
            *(a2 + 112) += v109;
            goto LABEL_142;
          }
        }

        result = 7;
      }

LABEL_142:
      v90 = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_181A18DC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(*v4 + 24);
    if (v5)
    {
      xmmword_1ED452F18(*(*v4 + 24));
    }

    v6 = *(v4 + 8);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(v4 + 16);
      do
      {
        v10 = v9 + v7;
        if ((*(v9 + v7 + 20) & 0x9000) != 0 || *(v10 + 32))
        {
          sub_18193CA00(v10);
          v9 = *(v4 + 16);
          v6 = *(v4 + 8);
        }

        *(v9 + v7 + 20) = 1;
        ++v8;
        v7 += 64;
      }

      while (v8 < v6);
    }

    if (*(v4 + 93))
    {
      *(v4 + 134) = *(v4 + 134) & 0xFFFC | 1;
    }

    if (v5)
    {
      xmmword_1ED452F28(v5);
    }
  }

  v12 = *(a1 + 120);
  v11 = *(a1 + 124);
  if (v11 == 18)
  {
    v13 = sqlite3changeset_new;
  }

  else
  {
    v13 = sqlite3changeset_old;
  }

  if (v12 < 1)
  {
    result = 0;
    if (v11 == 9)
    {
      goto LABEL_55;
    }

    goto LABEL_34;
  }

  v14 = 0;
  v15 = *(a2 + 48);
  while (1)
  {
    if (v15 && !*(v15 + v14))
    {
      result = 0;
      goto LABEL_21;
    }

    v22 = 0;
    v13(a1, v14, &v22);
    if (v22)
    {
      break;
    }

    result = sub_18190EDA8(243806);
    if (result)
    {
      goto LABEL_31;
    }

LABEL_21:
    if (++v14 >= v12)
    {
      goto LABEL_31;
    }
  }

  if (byte_181A203AA[*(v22 + 10) & 0x3F] - 3 > 1 || *(v22 + 1))
  {
    result = sqlite3_bind_value(v4, v14 + 1, v22);
    if (result)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  result = 7;
LABEL_31:
  if (v11 != 9)
  {
LABEL_34:
    if (!result && *(a2 + 122) && v12 >= 1)
    {
      v17 = 0;
      do
      {
        if (*(*(a2 + 48) + v17))
        {
          result = 0;
          ++v17;
        }

        else
        {
          v18 = *(a1 + 124);
          v19 = v18 == 23 || v18 == 18;
          if (v19 && (v20 = *(a1 + 120), v17 < v20))
          {
            v21 = *(*(a1 + 144) + 8 * v17 + 8 * v20);
          }

          else
          {
            v21 = 0;
          }

          sqlite3_bind_int64(v4, v12 + ++v17, v21 == 0);
          if (v21)
          {
            if (byte_181A203AA[*(v21 + 20) & 0x3F] - 3 <= 1 && !*(v21 + 8))
            {
              return 7;
            }

            result = sqlite3_bind_value(v4, v17, v21);
            if (result)
            {
              break;
            }
          }

          else
          {
            result = 0;
          }
        }
      }

      while (v17 < v12);
    }
  }

LABEL_55:
  if (!result)
  {
    result = sqlite3_step(v4);
    if (result != 100)
    {
      return sqlite3_reset(v4);
    }
  }

  return result;
}

uint64_t sub_181A190A0(uint64_t a1, int a2, unsigned __int8 *__s1, int a4, unsigned __int8 *__s2)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    return 1;
  }

  v10 = *(a1 + 56);
  while (!*v10++)
  {
    if (a2)
    {
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v16 = *__s1;
    v17 = 1;
    if (*__s1)
    {
      v18 = v16 == 5;
    }

    else
    {
      v18 = 1;
    }

    if (v18 || v16 == 255)
    {
      goto LABEL_24;
    }

    if ((v16 - 1) < 2)
    {
      v17 = 9;
LABEL_24:
      __s1 += v17;
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v23 = __s1[1];
    if (v23 < 0)
    {
      v28 = __s1[2];
      if (__s1[2] < 0)
      {
        v39 = __s1[3];
        if (v39 < 0)
        {
          v44 = 0;
          v41 = sub_1818C7200(__s1 + 1, &v44);
          if (HIDWORD(v44))
          {
            v23 = -1;
          }

          else
          {
            v23 = v44;
          }

          v24 = (v41 + 1);
        }

        else
        {
          v23 = ((v23 & 0x7F) << 14) | ((v28 & 0x7F) << 7) | v39;
          v24 = 4;
        }
      }

      else
      {
        v23 = v28 | ((v23 & 0x7F) << 7);
        v24 = 3;
      }
    }

    else
    {
      v24 = 2;
    }

    __s1 += v24 + v23;
    if (!a4)
    {
LABEL_25:
      v19 = *__s2;
      if (*__s2)
      {
        v11 = 1;
        if (v19 != 5 && v19 != 255)
        {
          if ((v19 - 1) >= 2)
          {
            v25 = __s2[1];
            if (v25 < 0)
            {
              v29 = __s2[2];
              if (__s2[2] < 0)
              {
                v40 = __s2[3];
                if (v40 < 0)
                {
                  v44 = 0;
                  v42 = sub_1818C7200(__s2 + 1, &v44);
                  if (HIDWORD(v44))
                  {
                    v25 = -1;
                  }

                  else
                  {
                    v25 = v44;
                  }

                  v26 = (v42 + 1);
                }

                else
                {
                  v25 = ((v25 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v40;
                  v26 = 4;
                }
              }

              else
              {
                v25 = v29 | ((v25 & 0x7F) << 7);
                v26 = 3;
              }
            }

            else
            {
              v26 = 2;
            }

            v11 = v26 + v25;
          }

          else
          {
            v11 = 9;
          }
        }
      }

      else
      {
        v11 = 1;
      }

      __s2 += v11;
    }

LABEL_5:
    if (!--v5)
    {
      return 1;
    }
  }

  v13 = *__s1;
  v14 = 1;
  if (*__s1)
  {
    v15 = v13 == 5;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v13 != 255)
  {
    if ((v13 - 1) >= 2)
    {
      v20 = __s1[1];
      if (v20 < 0)
      {
        v22 = __s1[2];
        if (__s1[2] < 0)
        {
          v27 = __s1[3];
          if (v27 < 0)
          {
            v44 = 0;
            v30 = sub_1818C7200(__s1 + 1, &v44);
            if (HIDWORD(v44))
            {
              v20 = -1;
            }

            else
            {
              v20 = v44;
            }

            v21 = (v30 + 1);
          }

          else
          {
            v20 = ((v20 & 0x7F) << 14) | ((v22 & 0x7F) << 7) | v27;
            v21 = 4;
          }
        }

        else
        {
          v20 = v22 | ((v20 & 0x7F) << 7);
          v21 = 3;
        }
      }

      else
      {
        v21 = 2;
      }

      v14 = v21 + v20;
    }

    else
    {
      v14 = 9;
    }
  }

  v31 = *__s2;
  v32 = 1;
  if (*__s2)
  {
    v33 = v31 == 5;
  }

  else
  {
    v33 = 1;
  }

  if (v33 || v31 == 255)
  {
    goto LABEL_56;
  }

  if ((v31 - 1) < 2)
  {
    v32 = 9;
LABEL_56:
    if (v14 != v32)
    {
      return 0;
    }

LABEL_57:
    if (memcmp(__s1, __s2, v14))
    {
      return 0;
    }

    __s1 += v14;
    __s2 += v14;
    goto LABEL_5;
  }

  v34 = __s2[1];
  if (v34 < 0)
  {
    v36 = __s2[2];
    if (__s2[2] < 0)
    {
      v37 = __s2[3];
      if (v37 < 0)
      {
        v44 = 0;
        v38 = sub_1818C7200(__s2 + 1, &v44);
        if (HIDWORD(v44))
        {
          v34 = -1;
        }

        else
        {
          v34 = v44;
        }

        v35 = (v38 + 1);
      }

      else
      {
        v34 = ((v34 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v37;
        v35 = 4;
      }
    }

    else
    {
      v34 = v36 | ((v34 & 0x7F) << 7);
      v35 = 3;
    }
  }

  else
  {
    v35 = 2;
  }

  if (v14 == v35 + v34)
  {
    goto LABEL_57;
  }

  return 0;
}

unsigned __int8 **sub_181A19420(unsigned __int8 **result, int a2)
{
  v2 = result;
  v3 = *result;
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      while (1)
      {
        v6 = v3 + 1;
        v5 = *v3;
        if ((v5 - 3) > 1)
        {
          break;
        }

        v7 = *v6;
        if (v7 < 0)
        {
          v9 = v3[2];
          if (v3[2] < 0)
          {
            v10 = v3[3];
            if (v10 < 0)
            {
              v11 = 0;
              result = sub_1818C7200(v6, &v11);
              if (HIDWORD(v11))
              {
                v7 = -1;
              }

              else
              {
                v7 = v11;
              }

              v8 = result;
            }

            else
            {
              v7 = ((v7 & 0x7F) << 14) | ((v9 & 0x7F) << 7) | v10;
              v8 = 3;
            }
          }

          else
          {
            v7 = v9 | ((v7 & 0x7F) << 7);
            v8 = 2;
          }
        }

        else
        {
          v8 = 1;
        }

        v3 = &v6[v8 + v7];
        if (!--v4)
        {
          goto LABEL_18;
        }
      }

      v3 += 9;
      if ((v5 - 1) >= 2)
      {
        v3 = v6;
      }

      --v4;
    }

    while (v4);
  }

LABEL_18:
  *v2 = v3;
  return result;
}

void **sub_181A19514(void **result, int a2, unsigned __int8 *__src, unsigned __int8 *a4)
{
  v4 = result;
  v5 = *result;
  if (a2 >= 1)
  {
    v8 = a2;
    while (1)
    {
      v11 = *__src;
      v12 = 1;
      if (*__src)
      {
        v13 = v11 == 5;
      }

      else
      {
        v13 = 1;
      }

      if (v13 || v11 == 255)
      {
        goto LABEL_13;
      }

      if ((v11 - 1) < 2)
      {
        break;
      }

      v17 = __src[1];
      if (v17 < 0)
      {
        v19 = __src[2];
        if (__src[2] < 0)
        {
          v21 = __src[3];
          if (v21 < 0)
          {
            v25 = 0;
            v23 = sub_1818C7200(__src + 1, &v25);
            if (HIDWORD(v25))
            {
              v17 = -1;
            }

            else
            {
              v17 = v25;
            }

            v18 = (v23 + 1);
          }

          else
          {
            v17 = ((v17 & 0x7F) << 14) | ((v19 & 0x7F) << 7) | v21;
            v18 = 4;
          }
        }

        else
        {
          v17 = v19 | ((v17 & 0x7F) << 7);
          v18 = 3;
        }
      }

      else
      {
        v18 = 2;
      }

      v12 = v18 + v17;
      v14 = *a4;
      if (*a4)
      {
LABEL_14:
        v9 = 1;
        if (v14 != 5 && v14 != 255)
        {
          if ((v14 - 1) < 2)
          {
            v9 = 9;
          }

          else
          {
            v15 = a4[1];
            if (v15 < 0)
            {
              v20 = a4[2];
              if (a4[2] < 0)
              {
                v22 = a4[3];
                if (v22 < 0)
                {
                  v25 = 0;
                  v24 = sub_1818C7200(a4 + 1, &v25);
                  if (HIDWORD(v25))
                  {
                    v15 = -1;
                  }

                  else
                  {
                    v15 = v25;
                  }

                  v16 = (v24 + 1);
                }

                else
                {
                  v15 = ((v15 & 0x7F) << 14) | ((v20 & 0x7F) << 7) | v22;
                  v16 = 4;
                }
              }

              else
              {
                v15 = v20 | ((v15 & 0x7F) << 7);
                v16 = 3;
              }
            }

            else
            {
              v16 = 2;
            }

            v9 = v16 + v15;
          }
        }

        result = memcpy(v5, a4, v9);
        v10 = v9;
        goto LABEL_5;
      }

LABEL_34:
      result = memcpy(v5, __src, v12);
      v9 = 1;
      v10 = v12;
LABEL_5:
      v5 += v10;
      __src += v12;
      a4 += v9;
      if (!--v8)
      {
        goto LABEL_40;
      }
    }

    v12 = 9;
LABEL_13:
    v14 = *a4;
    if (*a4)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_40:
  *v4 = v5;
  return result;
}

uint64_t sub_181A19714(_BYTE **a1, uint64_t a2, int a3, unsigned __int8 *a4, unsigned __int8 *__src, unsigned __int8 *a6, unsigned __int8 *a7)
{
  v7 = a6;
  v8 = a4;
  v9 = *a1;
  LODWORD(v10) = *(a2 + 16);
  if (a3)
  {
    goto LABEL_2;
  }

  if (v10 < 1)
  {
    return 0;
  }

  v82 = 0;
  v171 = 0;
  v166 = __src;
  v168 = a7;
  v83 = a7;
  v84 = a6;
  v85 = __src;
  v86 = a4;
  do
  {
    if (!v85)
    {
      v93 = *v86;
      v94 = 1;
      if (*v86)
      {
        v95 = v93 == 5;
      }

      else
      {
        v95 = 1;
      }

      if (!v95 && v93 != 255)
      {
        if ((v93 - 1) >= 2)
        {
          v98 = v86[1];
          if (v98 < 0)
          {
            v101 = v86[2];
            if (v86[2] < 0)
            {
              v103 = v86[3];
              if (v103 < 0)
              {
                v177 = 0;
                v158 = v84;
                v159 = v82;
                v160 = sub_1818C7200(v86 + 1, &v177);
                v82 = v159;
                v84 = v158;
                if (HIDWORD(v177))
                {
                  v98 = -1;
                }

                else
                {
                  v98 = v177;
                }

                v99 = (v160 + 1);
              }

              else
              {
                v98 = ((v98 & 0x7F) << 14) | ((v101 & 0x7F) << 7) | v103;
                v99 = 4;
              }
            }

            else
            {
              v98 = v101 | ((v98 & 0x7F) << 7);
              v99 = 3;
            }
          }

          else
          {
            v99 = 2;
          }

          v85 = 0;
          v94 = v99 + v98;
        }

        else
        {
          v85 = 0;
          v94 = 9;
        }
      }

LABEL_190:
      v107 = v94;
      v108 = v86;
      goto LABEL_191;
    }

    v89 = v9;
    v90 = *v85;
    v91 = 1;
    if (*v85)
    {
      v92 = v90 == 5;
    }

    else
    {
      v92 = 1;
    }

    if (!v92 && v90 != 255)
    {
      if ((v90 - 1) < 2)
      {
        v91 = 9;
        goto LABEL_171;
      }

      v96 = v85[1];
      if (v96 < 0)
      {
        v100 = v85[2];
        if (v85[2] < 0)
        {
          v102 = v85[3];
          if (v102 < 0)
          {
            v177 = 0;
            v104 = v84;
            v105 = v82;
            v106 = sub_1818C7200(v85 + 1, &v177);
            v82 = v105;
            v84 = v104;
            if (HIDWORD(v177))
            {
              v96 = -1;
            }

            else
            {
              v96 = v177;
            }

            v97 = (v106 + 1);
          }

          else
          {
            v96 = ((v96 & 0x7F) << 14) | ((v100 & 0x7F) << 7) | v102;
            v97 = 4;
          }
        }

        else
        {
          v96 = v100 | ((v96 & 0x7F) << 7);
          v97 = 3;
        }

        v90 = *v85;
      }

      else
      {
        v97 = 2;
      }

      v91 = v97 + v96;
    }

    if (!v90)
    {
      v107 = 0;
      v108 = 0;
      goto LABEL_173;
    }

LABEL_171:
    v107 = v91;
    v108 = v85;
LABEL_173:
    v109 = *v86;
    v94 = 1;
    if (*v86 && v109 != 5 && v109 != 255)
    {
      if ((v109 - 1) >= 2)
      {
        v110 = v86 + 1;
        v111 = v86[1];
        if (v111 < 0)
        {
          v113 = v86[2];
          if (v86[2] < 0)
          {
            v114 = v86[3];
            if (v114 < 0)
            {
              v177 = 0;
              v115 = v86;
              v116 = v84;
              v117 = v82;
              v118 = v108;
              v119 = sub_1818C7200(v110, &v177);
              v108 = v118;
              v82 = v117;
              v84 = v116;
              v86 = v115;
              if (HIDWORD(v177))
              {
                v111 = -1;
              }

              else
              {
                v111 = v177;
              }

              v112 = (v119 + 1);
            }

            else
            {
              v111 = ((v111 & 0x7F) << 14) | ((v113 & 0x7F) << 7) | v114;
              v112 = 4;
            }
          }

          else
          {
            v111 = v113 | ((v111 & 0x7F) << 7);
            v112 = 3;
          }
        }

        else
        {
          v112 = 2;
        }

        v94 = v112 + v111;
      }

      else
      {
        v94 = 9;
      }
    }

    v85 += v91;
    v9 = v89;
    if (!v108)
    {
      goto LABEL_190;
    }

LABEL_191:
    v173 = v86;
    __dst = v9;
    v172 = v94;
    if (!v83)
    {
      v122 = *v84;
      v123 = 1;
      if (*v84 && v122 != 5 && v122 != 255)
      {
        if ((v122 - 1) >= 2)
        {
          v126 = v84[1];
          if (v126 < 0)
          {
            v129 = v84[2];
            if (v84[2] < 0)
            {
              v131 = v84[3];
              if (v131 < 0)
              {
                v177 = 0;
                v161 = v84;
                v162 = v82;
                v163 = v108;
                v164 = sub_1818C7200(v84 + 1, &v177);
                v108 = v163;
                v82 = v162;
                v84 = v161;
                if (HIDWORD(v177))
                {
                  v126 = -1;
                }

                else
                {
                  v126 = v177;
                }

                v127 = (v164 + 1);
              }

              else
              {
                v126 = ((v126 & 0x7F) << 14) | ((v129 & 0x7F) << 7) | v131;
                v127 = 4;
              }
            }

            else
            {
              v126 = v129 | ((v126 & 0x7F) << 7);
              v127 = 3;
            }
          }

          else
          {
            v127 = 2;
          }

          v83 = 0;
          v123 = v127 + v126;
        }

        else
        {
          v83 = 0;
          v123 = 9;
        }
      }

      goto LABEL_229;
    }

    v120 = *v83;
    v121 = 1;
    if (*v83 && v120 != 5 && v120 != 255)
    {
      if ((v120 - 1) < 2)
      {
        v121 = 9;
        goto LABEL_221;
      }

      v124 = v83[1];
      if (v124 < 0)
      {
        v128 = v83[2];
        if (v83[2] < 0)
        {
          v130 = v83[3];
          if (v130 < 0)
          {
            v177 = 0;
            v132 = v84;
            v133 = v82;
            v134 = v108;
            v135 = sub_1818C7200(v83 + 1, &v177);
            v108 = v134;
            v82 = v133;
            v84 = v132;
            if (HIDWORD(v177))
            {
              v124 = -1;
            }

            else
            {
              v124 = v177;
            }

            v125 = (v135 + 1);
          }

          else
          {
            v124 = ((v124 & 0x7F) << 14) | ((v128 & 0x7F) << 7) | v130;
            v125 = 4;
          }
        }

        else
        {
          v124 = v128 | ((v124 & 0x7F) << 7);
          v125 = 3;
        }

        v120 = *v83;
      }

      else
      {
        v125 = 2;
      }

      v121 = v125 + v124;
    }

    if (!v120)
    {
      v136 = 0;
      v137 = 0;
      goto LABEL_223;
    }

LABEL_221:
    v136 = v121;
    v137 = v83;
LABEL_223:
    v138 = *v84;
    v123 = 1;
    if (!*v84 || v138 == 5 || v138 == 255)
    {
      goto LABEL_228;
    }

    if ((v138 - 1) < 2)
    {
      v123 = 9;
LABEL_228:
      v83 += v121;
      if (v137)
      {
        goto LABEL_230;
      }

LABEL_229:
      v136 = v123;
      v137 = v84;
      goto LABEL_230;
    }

    v149 = v84[1];
    if (v149 < 0)
    {
      v151 = v84[2];
      if (v84[2] < 0)
      {
        v152 = v84[3];
        if (v152 < 0)
        {
          v177 = 0;
          v153 = v137;
          v154 = v84;
          v155 = v82;
          v156 = v108;
          v157 = sub_1818C7200(v84 + 1, &v177);
          v108 = v156;
          v82 = v155;
          v84 = v154;
          v137 = v153;
          if (HIDWORD(v177))
          {
            v149 = -1;
          }

          else
          {
            v149 = v177;
          }

          v150 = (v157 + 1);
        }

        else
        {
          v149 = ((v149 & 0x7F) << 14) | ((v151 & 0x7F) << 7) | v152;
          v150 = 4;
        }
      }

      else
      {
        v149 = v151 | ((v149 & 0x7F) << 7);
        v150 = 3;
      }
    }

    else
    {
      v150 = 2;
    }

    v123 = v150 + v149;
    v83 += v121;
    if (!v137)
    {
      goto LABEL_229;
    }

LABEL_230:
    v139 = v85;
    v140 = v84;
    v141 = *(a2 + 56);
    v142 = v82;
    v143 = *(v141 + v82);
    v144 = v107;
    if (*(v141 + v82))
    {
      v145 = 0;
    }

    else
    {
      v145 = v107 == v136;
    }

    if (!v145 || (v146 = v107, v147 = v108, v148 = memcmp(v108, v137, v146), v108 = v147, v148))
    {
      v87 = v171;
      if (!v143)
      {
        v87 = 1;
      }

      v171 = v87;
      memcpy(__dst, v108, v144);
      v9 = &__dst[v144];
    }

    else
    {
      *__dst = 0;
      v9 = __dst + 1;
    }

    v86 = &v173[v172];
    v84 = &v140[v123];
    v82 = v142 + 1;
    v10 = *(a2 + 16);
    v88 = v142 + 1 < v10;
    v85 = v139;
    v7 = a6;
  }

  while (v88);
  __src = v166;
  a7 = v168;
  if (v171)
  {
LABEL_2:
    if (v10 < 1)
    {
LABEL_129:
      *a1 = v9;
      return 1;
    }

    v11 = 0;
    while (1)
    {
      if (!__src)
      {
        v16 = *v8;
        v17 = 1;
        if (*v8)
        {
          v18 = v16 == 5;
        }

        else
        {
          v18 = 1;
        }

        if (!v18 && v16 != 255)
        {
          if ((v16 - 1) >= 2)
          {
            v21 = v8[1];
            if (v21 < 0)
            {
              v24 = v8[2];
              if (v8[2] < 0)
              {
                v26 = v8[3];
                if (v26 < 0)
                {
                  v177 = 0;
                  v65 = a7;
                  v66 = sub_1818C7200(v8 + 1, &v177);
                  a7 = v65;
                  if (HIDWORD(v177))
                  {
                    v21 = -1;
                  }

                  else
                  {
                    v21 = v177;
                  }

                  v22 = (v66 + 1);
                }

                else
                {
                  v21 = ((v21 & 0x7F) << 14) | ((v24 & 0x7F) << 7) | v26;
                  v22 = 4;
                }
              }

              else
              {
                v21 = v24 | ((v21 & 0x7F) << 7);
                v22 = 3;
              }
            }

            else
            {
              v22 = 2;
            }

            __src = 0;
            v17 = v22 + v21;
          }

          else
          {
            __src = 0;
            v17 = 9;
          }
        }

        goto LABEL_105;
      }

      v13 = *__src;
      v14 = 1;
      if (*__src)
      {
        v15 = v13 == 5;
      }

      else
      {
        v15 = 1;
      }

      if (!v15 && v13 != 255)
      {
        if ((v13 - 1) < 2)
        {
          v14 = 9;
          goto LABEL_40;
        }

        v19 = __src[1];
        if (v19 < 0)
        {
          v23 = __src[2];
          if (__src[2] < 0)
          {
            v25 = __src[3];
            if (v25 < 0)
            {
              v177 = 0;
              v27 = a7;
              v28 = __src;
              v29 = sub_1818C7200(__src + 1, &v177);
              __src = v28;
              a7 = v27;
              if (HIDWORD(v177))
              {
                v19 = -1;
              }

              else
              {
                v19 = v177;
              }

              v20 = (v29 + 1);
            }

            else
            {
              v19 = ((v19 & 0x7F) << 14) | ((v23 & 0x7F) << 7) | v25;
              v20 = 4;
            }
          }

          else
          {
            v19 = v23 | ((v19 & 0x7F) << 7);
            v20 = 3;
          }

          v13 = *__src;
        }

        else
        {
          v20 = 2;
        }

        v14 = v20 + v19;
      }

      if (!v13)
      {
        v30 = 0;
        v31 = 0;
        goto LABEL_42;
      }

LABEL_40:
      v30 = v14;
      v31 = __src;
LABEL_42:
      v32 = *v8;
      v17 = 1;
      if (!*v8 || v32 == 5 || v32 == 255)
      {
        goto LABEL_47;
      }

      if ((v32 - 1) < 2)
      {
        v17 = 9;
LABEL_47:
        __src += v14;
        if (v31)
        {
          goto LABEL_48;
        }

        goto LABEL_105;
      }

      v35 = v8[1];
      if (v35 < 0)
      {
        v39 = v8[2];
        if (v8[2] < 0)
        {
          v41 = v8[3];
          if (v41 < 0)
          {
            v177 = 0;
            v43 = v31;
            v44 = a7;
            v45 = __src;
            v46 = sub_1818C7200(v8 + 1, &v177);
            __src = v45;
            a7 = v44;
            v47 = v46;
            v31 = v43;
            if (HIDWORD(v177))
            {
              v35 = -1;
            }

            else
            {
              v35 = v177;
            }

            v36 = (v47 + 1);
          }

          else
          {
            v35 = ((v35 & 0x7F) << 14) | ((v39 & 0x7F) << 7) | v41;
            v36 = 4;
          }
        }

        else
        {
          v35 = v39 | ((v35 & 0x7F) << 7);
          v36 = 3;
        }
      }

      else
      {
        v36 = 2;
      }

      v17 = v36 + v35;
      __src += v14;
      if (v31)
      {
LABEL_48:
        if (!a7)
        {
          goto LABEL_106;
        }

        goto LABEL_49;
      }

LABEL_105:
      v30 = v17;
      v31 = v8;
      if (!a7)
      {
LABEL_106:
        v67 = *v7;
        v56 = 1;
        if (*v7 && v67 != 5 && v67 != 255)
        {
          if ((v67 - 1) >= 2)
          {
            v68 = v7[1];
            if (v68 < 0)
            {
              v70 = v7[2];
              if (v7[2] < 0)
              {
                v71 = v7[3];
                if (v71 < 0)
                {
                  v177 = 0;
                  v72 = v31;
                  v73 = __src;
                  v74 = sub_1818C7200(v7 + 1, &v177);
                  __src = v73;
                  v75 = v74;
                  v31 = v72;
                  if (HIDWORD(v177))
                  {
                    v68 = -1;
                  }

                  else
                  {
                    v68 = v177;
                  }

                  v69 = (v75 + 1);
                }

                else
                {
                  v68 = ((v68 & 0x7F) << 14) | ((v70 & 0x7F) << 7) | v71;
                  v69 = 4;
                }
              }

              else
              {
                v68 = v70 | ((v68 & 0x7F) << 7);
                v69 = 3;
              }
            }

            else
            {
              v69 = 2;
            }

            a7 = 0;
            v56 = v69 + v68;
          }

          else
          {
            a7 = 0;
            v56 = 9;
          }
        }

        goto LABEL_122;
      }

LABEL_49:
      v33 = *a7;
      v34 = 1;
      if (*a7 && v33 != 5 && v33 != 255)
      {
        if ((v33 - 1) < 2)
        {
          v34 = 9;
LABEL_79:
          v53 = v34;
          v54 = a7;
          goto LABEL_81;
        }

        v37 = a7[1];
        if (v37 < 0)
        {
          v40 = a7[2];
          if (a7[2] < 0)
          {
            v42 = a7[3];
            if (v42 < 0)
            {
              v177 = 0;
              v48 = v31;
              v49 = a7;
              v50 = __src;
              v51 = sub_1818C7200(a7 + 1, &v177);
              __src = v50;
              a7 = v49;
              v52 = v51;
              v31 = v48;
              if (HIDWORD(v177))
              {
                v37 = -1;
              }

              else
              {
                v37 = v177;
              }

              v38 = (v52 + 1);
            }

            else
            {
              v37 = ((v37 & 0x7F) << 14) | ((v40 & 0x7F) << 7) | v42;
              v38 = 4;
            }
          }

          else
          {
            v37 = v40 | ((v37 & 0x7F) << 7);
            v38 = 3;
          }

          v33 = *a7;
        }

        else
        {
          v38 = 2;
        }

        v34 = v38 + v37;
      }

      if (v33)
      {
        goto LABEL_79;
      }

      v53 = 0;
      v54 = 0;
LABEL_81:
      v55 = *v7;
      v56 = 1;
      if (!*v7 || v55 == 5 || v55 == 255)
      {
        goto LABEL_86;
      }

      if ((v55 - 1) < 2)
      {
        v56 = 9;
LABEL_86:
        a7 += v34;
        if (v54)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }

      v57 = v7[1];
      if (v57 < 0)
      {
        v59 = v7[2];
        if (v7[2] < 0)
        {
          v60 = v7[3];
          if (v60 < 0)
          {
            v177 = 0;
            v165 = __src;
            v167 = a7;
            v61 = v54;
            v62 = v31;
            v63 = sub_1818C7200(v7 + 1, &v177);
            v54 = v61;
            __src = v165;
            a7 = v167;
            v64 = v63;
            v31 = v62;
            if (HIDWORD(v177))
            {
              v57 = -1;
            }

            else
            {
              v57 = v177;
            }

            v58 = (v64 + 1);
          }

          else
          {
            v57 = ((v57 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v60;
            v58 = 4;
          }
        }

        else
        {
          v57 = v59 | ((v57 & 0x7F) << 7);
          v58 = 3;
        }
      }

      else
      {
        v58 = 2;
      }

      v56 = v58 + v57;
      a7 += v34;
      if (v54)
      {
        goto LABEL_123;
      }

LABEL_122:
      v53 = v56;
      v54 = v7;
LABEL_123:
      v76 = a7;
      if (a3 || !*(*(a2 + 56) + v11) && (v30 != v53 || (v77 = v30, v78 = __src, v79 = v54, v80 = memcmp(v31, v54, v77), v54 = v79, __src = v78, v80)))
      {
        v12 = __src;
        memcpy(v9, v54, v53);
        v9 += v53;
        __src = v12;
      }

      else
      {
        *v9++ = 0;
      }

      v8 += v17;
      v7 += v56;
      ++v11;
      a7 = v76;
      if (v11 >= *(a2 + 16))
      {
        goto LABEL_129;
      }
    }
  }

  return 0;
}

uint64_t sub_181A1A314(uint64_t result, int a2, unsigned __int8 *__src, int a4, unsigned __int8 *a5, int a6, _DWORD *a7)
{
  if (!*a7)
  {
    v39[9] = v7;
    v39[10] = v8;
    v12 = result;
    v13 = *(result + 12);
    v14 = *(result + 8) + (a6 + a4);
    if (v14 > v13)
    {
      if (v13)
      {
        v15 = *(result + 12);
      }

      else
      {
        v15 = 128;
      }

      do
      {
        v16 = v15;
        v15 *= 2;
      }

      while (v15 < v14);
      if (v16 >= 1073741696)
      {
        v15 = 2147483391;
        if (v14 > 2147483391)
        {
          *a7 = 7;
          return result;
        }
      }

      v18 = *result;
      result = sqlite3_initialize();
      if (!v15 || result || (result = sub_18190287C(v18, v15, 0x100004077774924)) == 0)
      {
        *a7 = 7;
        return result;
      }

      *v12 = result;
      *(v12 + 12) = v15;
      if (*a7)
      {
        return result;
      }
    }

    v19 = *v12;
    v20 = (*v12 + *(v12 + 8));
    if (a2 >= 1)
    {
      do
      {
        v23 = *__src;
        v24 = 1;
        if (*__src)
        {
          v25 = v23 == 5;
        }

        else
        {
          v25 = 1;
        }

        if (!v25 && v23 != 255)
        {
          if ((v23 - 1) >= 2)
          {
            v27 = __src[1];
            if (v27 < 0)
            {
              v29 = __src[2];
              if (__src[2] < 0)
              {
                v30 = __src[3];
                if (v30 < 0)
                {
                  v39[0] = 0;
                  v31 = sub_1818C7200(__src + 1, v39);
                  if (HIDWORD(v39[0]))
                  {
                    v27 = -1;
                  }

                  else
                  {
                    v27 = v39[0];
                  }

                  v28 = (v31 + 1);
                }

                else
                {
                  v27 = ((v27 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v30;
                  v28 = 4;
                }
              }

              else
              {
                v27 = v29 | ((v27 & 0x7F) << 7);
                v28 = 3;
              }
            }

            else
            {
              v28 = 2;
            }

            v24 = v28 + v27;
          }

          else
          {
            v24 = 9;
          }
        }

        v32 = *a5;
        v21 = 1;
        if (*a5)
        {
          v33 = v32 == 5;
        }

        else
        {
          v33 = 1;
        }

        if (!v33 && v32 != 255)
        {
          if ((v32 - 1) < 2)
          {
            v21 = 9;
          }

          else
          {
            v34 = a5[1];
            if (v34 < 0)
            {
              v36 = a5[2];
              if (a5[2] < 0)
              {
                v37 = a5[3];
                if (v37 < 0)
                {
                  v39[0] = 0;
                  v38 = sub_1818C7200(a5 + 1, v39);
                  if (HIDWORD(v39[0]))
                  {
                    v34 = -1;
                  }

                  else
                  {
                    v34 = v39[0];
                  }

                  v35 = (v38 + 1);
                }

                else
                {
                  v34 = ((v34 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v37;
                  v35 = 4;
                }
              }

              else
              {
                v34 = v36 | ((v34 & 0x7F) << 7);
                v35 = 3;
              }
            }

            else
            {
              v35 = 2;
            }

            v21 = v35 + v34;
          }
        }

        if (v23 == 255 || v23 == 0)
        {
          result = memcpy(v20, a5, v21);
          v26 = v21;
        }

        else
        {
          result = memcpy(v20, __src, v24);
          v26 = v24;
        }

        v20 += v26;
        __src += v24;
        a5 += v21;
        --a2;
      }

      while (a2);
      v19 = *v12;
    }

    *(v12 + 8) = v20 - v19;
  }

  return result;
}

uint64_t sub_181A1A5DC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(value,pointer hidden,count hidden,ctype hidden)");
  if (!result)
  {
    if (sqlite3_initialize())
    {
      *a5 = 0;
      return 7;
    }

    v7 = sub_181902484(24, 0x1070040037824BELL);
    *a5 = v7;
    if (!v7)
    {
      return 7;
    }

    v8 = v7;
    result = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  return result;
}

uint64_t sub_181A1A650(uint64_t a1, uint64_t a2)
{
  if (*a2 < 1)
  {
    goto LABEL_19;
  }

  v2 = 0;
  v3 = (*(a2 + 8) + 5);
  v4 = -1;
  v5 = -1;
  v6 = -1;
  do
  {
    if (*v3 && *(v3 - 1) == 2)
    {
      v7 = *(v3 - 5);
      if (v7 == 1)
      {
        v8 = v2;
      }

      else
      {
        v8 = v6;
      }

      if (v7 == 2)
      {
        v8 = v6;
        v9 = v2;
      }

      else
      {
        v9 = v5;
      }

      if (v7 == 3)
      {
        v4 = v2;
      }

      else
      {
        v6 = v8;
        v5 = v9;
      }
    }

    ++v2;
    v3 += 12;
  }

  while (*a2 != v2);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_19:
    *(a2 + 64) = 0x41DFFFFFFFC00000;
    *(a2 + 72) = 0x7FFFFFFFLL;
    *(a2 + 40) = 0;
  }

  else
  {
    v10 = *(a2 + 32);
    v11 = v10 + 8 * v6;
    *v11 = 1;
    *(v11 + 4) = 1;
    *(a2 + 64) = 0x3FF0000000000000;
    *(a2 + 72) = 100;
    *(a2 + 40) = 1;
    if ((v5 & 0x80000000) == 0)
    {
      v12 = v10 + 8 * v5;
      *v12 = 2;
      *(v12 + 4) = 1;
      *(a2 + 40) = 2;
      if ((v4 & 0x80000000) == 0)
      {
        v13 = v10 + 8 * v4;
        *v13 = 3;
        *(v13 + 4) = 1;
        *(a2 + 40) = 3;
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_181A1A748(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
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
      goto LABEL_7;
    }
  }

  return 0;
}

double sub_181A1A800(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v4 = sub_181902484(40, 0x10A0040C8C54D62);
    if (v4)
    {
      *(v4 + 32) = 0;
      result = 0.0;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t sub_181A1A864(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
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
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A1A91C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 16);
  if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      v15 = *a5;
      if (*a5)
      {
        if ((*(v15 + 20) & 0xFBF) == 0xA01 && *(v15 + 23) == 112 && !strcmp(*v15, "carray-bind"))
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v17 = *(v16 + 8);
            *(a1 + 16) = *v16;
            *(a1 + 24) = v17;
            v18 = *(v16 + 12) & 7;
            goto LABEL_71;
          }
        }
      }

      else
      {
        sub_1819012D0(99775);
      }
    }

    goto LABEL_72;
  }

  v7 = *a5;
  if (!*a5)
  {
    v19 = a5;
    v20 = a2;
    sub_1819012D0(99775);
    a2 = v20;
    a5 = v19;
LABEL_18:
    v14 = 0;
    *v6 = 0;
    goto LABEL_19;
  }

  if ((*(v7 + 20) & 0xFBF) != 0xA01)
  {
    goto LABEL_18;
  }

  if (*(v7 + 23) != 112)
  {
    goto LABEL_18;
  }

  v8 = a2;
  v9 = a5;
  v10 = strcmp(*v7, "carray");
  a2 = v8;
  a5 = v9;
  if (v10)
  {
    goto LABEL_18;
  }

  v11 = *(v7 + 8);
  *v6 = v11;
  if (!v11)
  {
LABEL_54:
    v14 = 0;
    goto LABEL_19;
  }

  v12 = v9[1];
  if (!v12)
  {
    sub_1819012D0(92237);
    a5 = v9;
    v14 = 0;
    a2 = v8;
    goto LABEL_19;
  }

  v13 = *(v12 + 20);
  if ((v13 & 0x24) != 0)
  {
    v14 = *v12;
    a2 = v8;
    goto LABEL_19;
  }

  if ((v13 & 8) == 0)
  {
    a2 = v8;
    if ((v13 & 0x12) != 0 && *(v12 + 8))
    {
      v14 = sub_18193CFCC(v12);
      a2 = v8;
      a5 = v9;
      goto LABEL_19;
    }

    goto LABEL_54;
  }

  v28 = *v12;
  a2 = v8;
  if (*v12 >= -9.22337204e18)
  {
    if (v28 <= 9.22337204e18)
    {
      v14 = v28;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v14 = 0x8000000000000000;
  }

LABEL_19:
  *(a1 + 24) = v14;
  if (a2 <= 2)
  {
    *(a1 + 32) = 0;
    goto LABEL_72;
  }

  v21 = a5[2];
  if (!v21)
  {
    goto LABEL_36;
  }

  v22 = *(v21 + 20);
  if ((~v22 & 0x202) == 0 && *(v21 + 22) == 1)
  {
    v21 = *(v21 + 8);
    if (!v21)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (v22)
  {
    v21 = 0;
    goto LABEL_36;
  }

  v21 = sub_18193CB70(v21, 1);
  if (!v21)
  {
LABEL_36:
    *(*a1 + 16) = sqlite3_mprintf("unknown datatype: %Q", v21);
    return 1;
  }

LABEL_28:
  for (i = 0; *(v21 + i) == aInt32[i]; ++i)
  {
    if (!*(v21 + i))
    {
      v18 = 0;
      goto LABEL_71;
    }

LABEL_30:
    ;
  }

  if (byte_181A20298[*(v21 + i)] == byte_181A20298[aInt32[i]])
  {
    goto LABEL_30;
  }

  for (j = 0; *(v21 + j) == aInt64_0[j]; ++j)
  {
    if (!*(v21 + j))
    {
      v18 = 1;
      goto LABEL_71;
    }

LABEL_39:
    ;
  }

  if (byte_181A20298[*(v21 + j)] == byte_181A20298[aInt64_0[j]])
  {
    goto LABEL_39;
  }

  for (k = 0; *(v21 + k) == aDouble[k]; ++k)
  {
    if (!*(v21 + k))
    {
      v18 = 2;
      goto LABEL_71;
    }

LABEL_45:
    ;
  }

  if (byte_181A20298[*(v21 + k)] == byte_181A20298[aDouble[k]])
  {
    goto LABEL_45;
  }

  for (m = 0; *(v21 + m) == aChar_0[m]; ++m)
  {
    if (!*(v21 + m))
    {
      v18 = 3;
      goto LABEL_71;
    }

LABEL_57:
    ;
  }

  if (byte_181A20298[*(v21 + m)] == byte_181A20298[aChar_0[m]])
  {
    goto LABEL_57;
  }

  for (n = 0; *(v21 + n) != aStructIovec[n]; ++n)
  {
    if (byte_181A20298[*(v21 + n)] != byte_181A20298[aStructIovec[n]])
    {
      goto LABEL_36;
    }

LABEL_67:
    ;
  }

  if (*(v21 + n))
  {
    goto LABEL_67;
  }

  v18 = 4;
LABEL_71:
  *(a1 + 32) = v18;
LABEL_72:
  result = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_181A1AD14(uint64_t a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 1:
      return 0;
    case 3:
      if (!a2)
      {
        return 0;
      }

      v5 = off_1E6A28488[*(a1 + 32)];
      v6 = a2;
      v7 = v5;
      v8 = -1;
      v9 = 1;
      v10 = 0;
LABEL_28:
      sub_18190B23C(v6, v7, v8, v9, v10);
      return 0;
    case 2:
      v3 = *(a1 + 24);
      goto LABEL_5;
  }

  v3 = 0;
  v11 = *(a1 + 32);
  if (v11 <= 1)
  {
    if (*(a1 + 32))
    {
      if (v11 != 1)
      {
        goto LABEL_5;
      }

      if (!a2)
      {
        return 0;
      }

      v3 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
    }

    else
    {
      if (!a2)
      {
        return 0;
      }

      v3 = *(*(a1 + 16) + 4 * *(a1 + 8) - 4);
    }

LABEL_6:
    v4 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v4, v3);
    }

    else
    {
      *v4 = v3;
      *(v4 + 20) = 4;
    }

    return 0;
  }

  if (v11 == 2)
  {
    if (a2)
    {
      v13 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
      v14 = *a2;
      if ((*(*a2 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(*a2);
      }

      else
      {
        *(v14 + 20) = 1;
      }

      *v14 = v13;
      *(v14 + 20) = 8;
    }

    else
    {
      sub_1819012D0(100067);
    }

    return 0;
  }

  if (v11 == 3)
  {
    if (!a2)
    {
      return 0;
    }

    v15 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
    v6 = a2;
    v7 = v15;
    v8 = -1;
    v9 = 1;
    goto LABEL_27;
  }

  if (v11 != 4)
  {
LABEL_5:
    if (!a2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (a2)
  {
    v12 = *(a1 + 16) + 16 * *(a1 + 8);
    v8 = *(v12 - 8);
    if ((v8 & 0x80000000) == 0)
    {
      v6 = a2;
      v7 = *(v12 - 16);
      v9 = 0;
LABEL_27:
      v10 = -1;
      goto LABEL_28;
    }
  }

  if (a2)
  {
    *(a2 + 36) = 18;
    sub_1818900D0(*a2, "string or blob too big", -1, 1u, 0);
  }

  return 0;
}

uint64_t sub_181A1AF04(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v174 = *MEMORY[0x1E69E9840];
  *v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  memset(v172, 0, sizeof(v172));
  v173 = 0;
  v166 = 0;
  v167 = 0;
  zSQL = 0;
  if (a3 < 4)
  {
    goto LABEL_143;
  }

  v9 = a4;
  v10 = a3;
  v11 = 4294967197;
  v12 = -1;
  v13 = 3;
  v14 = MEMORY[0x1E69E9830];
  while (1)
  {
    v164 = v12;
    v16 = *(v9 + 8 * v13);
    v17 = v16 - 1;
    v18 = v16 - 1;
    do
    {
      while (1)
      {
        v20 = *(v18 + 1);
        if ((v20 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!__maskrune(*++v18, 0x4000uLL))
        {
          goto LABEL_11;
        }
      }

      ++v18;
    }

    while ((*(v14 + 4 * v20 + 60) & 0x4000) != 0);
LABEL_11:
    v27 = v16 - 1;
    if (strncmp("filename", v18, 8uLL))
    {
      goto LABEL_19;
    }

    v28 = (v18 + 8);
    do
    {
      while (1)
      {
        v30 = *v28;
        if ((v30 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!__maskrune(*v28++, 0x4000uLL))
        {
          goto LABEL_16;
        }
      }

      ++v28;
    }

    while ((*(v14 + 4 * v30 + 60) & 0x4000) != 0);
LABEL_16:
    v27 = v16 - 1;
    if (*(v28 - 1) == 61)
    {
      p_zSQL = &v167;
      v32 = "filename";
LABEL_39:
      v38 = (v28 - 1);
      do
      {
        while (1)
        {
          v40 = v38[1];
          if ((v40 & 0x8000000000000000) == 0)
          {
            break;
          }

          if (!__maskrune(*++v38, 0x4000uLL))
          {
            goto LABEL_43;
          }
        }

        ++v38;
      }

      while ((*(v14 + 4 * v40 + 60) & 0x4000) != 0);
LABEL_43:
      LOBYTE(v172[0]) = 0;
      if (*p_zSQL)
      {
        v160 = v32;
        v15 = "more than one '%s' parameter";
      }

      else
      {
        v41 = sqlite3_mprintf("%s", v38);
        *p_zSQL = v41;
        if (v41)
        {
          v42 = v41;
          for (i = strlen(v41); i; --i)
          {
            v56 = v42[i];
            if (v56 < 0)
            {
              if (!__maskrune(v42[i], 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v14 + 4 * v56 + 60) & 0x4000) == 0)
            {
              break;
            }
          }

          v42[i] = 0;
          v57 = *v42;
          if (v57 == 39 || v57 == 34)
          {
            v58 = strlen(v42);
            if (v58 >= 2)
            {
              v59 = v58 - 1;
              if (v42[v58 - 1] == v57)
              {
                if (v59 < 2)
                {
                  *v42 = 0;
                }

                else
                {
                  v60 = 0;
                  for (j = 1; j < v59; ++j)
                  {
                    v63 = v42[j];
                    if (v63 == v57)
                    {
                      if (v42[j + 1] == v57)
                      {
                        ++j;
                      }

                      LOBYTE(v63) = v42[j];
                    }

                    v62 = v60 + 1;
                    v42[v60++] = v63;
                  }

                  v42[v62] = 0;
                }
              }
            }
          }

LABEL_5:
          v12 = v164;
          if (LOBYTE(v172[0]))
          {
            goto LABEL_157;
          }

          goto LABEL_6;
        }

        v15 = "out of memory";
      }

      sub_181A1C95C(v168, v15, v21, v22, v23, v24, v25, v26, v160);
      goto LABEL_5;
    }

    do
    {
LABEL_19:
      while (1)
      {
        v33 = *(v27 + 1);
        if ((*(v27 + 1) & 0x80000000) == 0)
        {
          break;
        }

        ++v27;
        if (!__maskrune(v33, 0x4000uLL))
        {
          goto LABEL_21;
        }
      }

      ++v27;
    }

    while ((*(v14 + 4 * v33 + 60) & 0x4000) != 0);
LABEL_21:
    if (!strncmp("data", v27, 4uLL))
    {
      v28 = (v27 + 4);
      do
      {
        while (1)
        {
          v34 = *v28;
          if ((*v28 & 0x80000000) == 0)
          {
            break;
          }

          ++v28;
          if (!__maskrune(v34, 0x4000uLL))
          {
            goto LABEL_26;
          }
        }

        ++v28;
      }

      while ((*(v14 + 4 * v34 + 60) & 0x4000) != 0);
LABEL_26:
      if (*(v28 - 1) == 61)
      {
        p_zSQL = &v166;
        v32 = "data";
        goto LABEL_39;
      }
    }

    v35 = v16 - 1;
    do
    {
      while (1)
      {
        v36 = *(v35 + 1);
        if ((*(v35 + 1) & 0x80000000) == 0)
        {
          break;
        }

        ++v35;
        if (!__maskrune(v36, 0x4000uLL))
        {
          goto LABEL_32;
        }
      }

      ++v35;
    }

    while ((*(v14 + 4 * v36 + 60) & 0x4000) != 0);
LABEL_32:
    if (!strncmp("schema", v35, 6uLL))
    {
      v28 = (v35 + 6);
      do
      {
        while (1)
        {
          v37 = *v28;
          if ((*v28 & 0x80000000) == 0)
          {
            break;
          }

          ++v28;
          if (!__maskrune(v37, 0x4000uLL))
          {
            goto LABEL_37;
          }
        }

        ++v28;
      }

      while ((*(v14 + 4 * v37 + 60) & 0x4000) != 0);
LABEL_37:
      if (*(v28 - 1) == 61)
      {
        p_zSQL = &zSQL;
        v32 = "schema";
        goto LABEL_39;
      }
    }

    v44 = (v16 + 8);
    v45 = v16 - 1;
    do
    {
      v47 = v44;
      v48 = *(v45 + 1);
      if (v48 < 0)
      {
        v46 = __maskrune(*(v45 + 1), 0x4000uLL);
      }

      else
      {
        v46 = *(v14 + 4 * v48 + 60) & 0x4000;
      }

      ++v45;
      v44 = v47 + 1;
    }

    while (v46);
    if (strncmp("header", v45, 6uLL))
    {
      do
      {
LABEL_127:
        while (1)
        {
          v86 = *(v17 + 1);
          if ((v86 & 0x8000000000000000) == 0)
          {
            break;
          }

          if (!__maskrune(*++v17, 0x4000uLL))
          {
            goto LABEL_129;
          }
        }

        ++v17;
      }

      while ((*(v14 + 4 * v86 + 60) & 0x4000) != 0);
LABEL_129:
      if (strncmp("columns", v17, 7uLL))
      {
        goto LABEL_146;
      }

      v87 = (v17 + 7);
      do
      {
        while (1)
        {
          v89 = v87;
          v90 = *v87;
          if ((v90 & 0x8000000000000000) == 0)
          {
            break;
          }

          v88 = __maskrune(v90, 0x4000uLL);
          v87 = v89 + 1;
          if (!v88)
          {
            goto LABEL_134;
          }
        }

        v91 = *(v14 + 4 * v90 + 60) & 0x4000;
        v87 = v89 + 1;
      }

      while (v91);
LABEL_134:
      if (*(v87 - 1) != 61)
      {
LABEL_146:
        sub_181A1C95C(v168, "bad parameter: '%s'", a3, a4, a5, a6, a7, a8, v16);
        goto LABEL_157;
      }

      do
      {
        while (1)
        {
          v93 = v89[1];
          if ((v93 & 0x8000000000000000) == 0)
          {
            break;
          }

          if (!__maskrune(*++v89, 0x4000uLL))
          {
            goto LABEL_139;
          }
        }

        ++v89;
      }

      while ((*(v14 + 4 * v93 + 60) & 0x4000) != 0);
LABEL_139:
      if (v11 >= 1)
      {
        v94 = "more than one 'columns' parameter";
        goto LABEL_156;
      }

      v11 = atoi(v89);
      v12 = v164;
      if (v11 <= 0)
      {
        v94 = "column= value must be positive";
        goto LABEL_156;
      }

      goto LABEL_6;
    }

    v49 = v10;
    v50 = v11;
    v11 = v9;
    v51 = (v45 + 6);
    do
    {
      v53 = v51;
      v54 = v47;
      v55 = *v51;
      if (v55 < 0)
      {
        v52 = __maskrune(v55, 0x4000uLL);
      }

      else
      {
        v52 = *(v14 + 4 * v55 + 60) & 0x4000;
      }

      v51 = (v53 + 1);
      ++v47;
    }

    while (v52);
    if (!*v53)
    {
      v12 = 1;
      v9 = v11;
      v11 = v50;
      v10 = v49;
      if ((v164 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_6;
    }

    if (*v53 != 61)
    {
      v9 = v11;
      LODWORD(v11) = v50;
      v10 = v49;
      goto LABEL_127;
    }

    do
    {
      v65 = v54;
      v66 = v53[1];
      if (v66 < 0)
      {
        v64 = __maskrune(v53[1], 0x4000uLL);
      }

      else
      {
        v64 = *(v14 + 4 * v66 + 60) & 0x4000;
      }

      ++v53;
      ++v54;
    }

    while (v64);
    v67 = "yes";
    v68 = v53;
    v9 = v11;
    v11 = v50;
    v10 = v49;
    while (*v67 == *v68)
    {
      if (!*v67)
      {
        goto LABEL_100;
      }

LABEL_82:
      ++v67;
      ++v68;
    }

    if (byte_181A20298[*v67] == byte_181A20298[*v68])
    {
      goto LABEL_82;
    }

    v69 = "on";
    for (k = v53; *v69 == *k; ++k)
    {
      if (!*v69)
      {
        goto LABEL_100;
      }

LABEL_91:
      ++v69;
    }

    if (byte_181A20298[*v69] == byte_181A20298[*k])
    {
      goto LABEL_91;
    }

    v71 = "true";
    for (m = v53; *v71 == *m; ++m)
    {
      if (!*v71)
      {
        goto LABEL_100;
      }

LABEL_97:
      ++v71;
    }

    if (byte_181A20298[*v71] == byte_181A20298[*m])
    {
      goto LABEL_97;
    }

    v73 = *v53;
    if (v73 == 49 && !v53[1])
    {
LABEL_100:
      v12 = 1;
      if ((v164 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_6;
    }

    v74 = v65;
    v75 = *v53;
    v76 = "no";
    while (2)
    {
      if (*v76 == v75)
      {
        if (!v75)
        {
          goto LABEL_121;
        }

LABEL_108:
        ++v76;
        v77 = *v74++;
        v75 = v77;
        continue;
      }

      break;
    }

    if (byte_181A20298[*v76] == byte_181A20298[v75])
    {
      goto LABEL_108;
    }

    v78 = v65;
    v79 = *v53;
    v80 = "off";
    while (2)
    {
      if (*v80 == v79)
      {
        if (!v79)
        {
          goto LABEL_121;
        }

LABEL_113:
        ++v80;
        v81 = *v78++;
        v79 = v81;
        continue;
      }

      break;
    }

    if (byte_181A20298[*v80] == byte_181A20298[v79])
    {
      goto LABEL_113;
    }

    v82 = *v53;
    v83 = "false";
    while (2)
    {
      if (*v83 == v82)
      {
        if (!v82)
        {
          goto LABEL_121;
        }

        goto LABEL_118;
      }

      if (byte_181A20298[*v83] == byte_181A20298[v82])
      {
LABEL_118:
        ++v83;
        v84 = *v65++;
        v82 = v84;
        continue;
      }

      break;
    }

    if (v73 != 48 || v53[1])
    {
      goto LABEL_127;
    }

LABEL_121:
    v12 = 0;
    if ((v164 & 0x80000000) == 0)
    {
      break;
    }

LABEL_6:
    if (++v13 == v10)
    {
      v95 = v166;
      v96 = v167;
      v97 = a1;
      v8 = a6;
      if ((v167 == 0) != (v166 != 0))
      {
LABEL_143:
        sub_181A1C95C(v168, "must specify either filename= or data= but not both", a3, a4, a5, a6, a7, a8, v160);
        goto LABEL_144;
      }

      if ((v11 < 1 || v12 == 1) && sub_181A1C9CC(v168, v167, v166))
      {
LABEL_144:
        v98 = 0;
        v99 = v167;
        if (v167)
        {
          goto LABEL_158;
        }

        goto LABEL_164;
      }

      if (sqlite3_initialize())
      {
        *a5 = 0;
        goto LABEL_152;
      }

      v118 = sub_181902484(56, 0x107004058A477ACLL);
      *a5 = v118;
      if (!v118)
      {
LABEL_152:
        sub_181A1C95C(v168, "out of memory", v100, v101, v102, v103, v104, v105, v160);
        v98 = 7;
        v99 = v167;
        if (v167)
        {
          goto LABEL_158;
        }

        goto LABEL_164;
      }

      v120 = v118;
      *(v118 + 48) = 0;
      *(v118 + 16) = 0u;
      *(v118 + 32) = 0u;
      *v118 = 0u;
      v121 = zSQL;
      if (zSQL)
      {
        if ((v11 & 0x80000000) != 0)
        {
          do
          {
            sub_181A1CC3C(v168, v119, v100, v101, v102, v103, v104, v105);
            ++*(v120 + 48);
          }

          while (v170 == 44);
        }

        else
        {
          *(v118 + 48) = v11;
        }

        goto LABEL_252;
      }

      if (sqlite3_initialize() || (v123 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
      {
        v122 = &unk_1EA831560;
      }

      else
      {
        v122 = v123;
        *(v123 + 16) = 0;
        *v123 = 0u;
        *(v123 + 20) = 2147483645;
        *(v123 + 28) = 0;
      }

      sqlite3_str_appendf(v122, "CREATE TABLE x(");
      if ((v11 & 0x80000000) != 0 && v12 <= 0)
      {
        LODWORD(v11) = 0;
        do
        {
          sub_181A1CC3C(v168, v124, v125, v126, v127, v128, v129, v130);
          LODWORD(v11) = v11 + 1;
        }

        while (v170 == 44);
      }

      if (v11 < 1 || v12 > 0)
      {
        v131 = 0;
        v133 = v11 < 0 && v12 != 0;
        v134 = &byte_181A2878D;
        do
        {
          sub_181A1CC3C(v168, v124, v125, v126, v127, v128, v129, v130);
          v136 = v11 > 0 && v131 < v11;
          if (v136 || v133)
          {
            v160 = v134;
            sqlite3_str_appendf(v122, "%s%w TEXT");
            ++v131;
            v134 = ",";
          }
        }

        while (v170 == 44);
        if ((v11 & 0x80000000) != 0)
        {
          v97 = a1;
          v8 = a6;
          goto LABEL_250;
        }

        v8 = a6;
        if (v131 >= v11 || (v137 = v131 + 1, sqlite3_str_appendf(v122, "%sc%d TEXT", v134, v131 + 1), v131 + 1 == v11))
        {
          v131 = v11;
          v97 = a1;
          goto LABEL_250;
        }

        v97 = a1;
        do
        {
          sqlite3_str_appendf(v122, "%sc%d TEXT", ",", ++v137);
        }

        while (v11 != v137);
      }

      else
      {
        sqlite3_str_appendf(v122, "%sc%d TEXT", &byte_181A2878D, 0);
        if (v11 == 1)
        {
          v131 = 1;
LABEL_250:
          *(v120 + 48) = v131;
          sqlite3_str_appendf(v122, ")");
          v139 = sqlite3_str_finish(v122);
          zSQL = v139;
          if (!v139)
          {
            sub_181A1C95C(v168, "out of memory", v140, v141, v142, v143, v144, v145, v160);
            v98 = 7;
LABEL_281:
            sub_181A1C034(v120);
            v99 = v167;
            if (v167)
            {
              goto LABEL_158;
            }

            goto LABEL_164;
          }

          v121 = v139;
          v95 = v166;
          v96 = v167;
LABEL_252:
          v146 = 0;
          v166 = 0;
          v167 = 0;
          *(v120 + 24) = v96;
          *(v120 + 32) = v95;
          if (v12 == 1)
          {
            if (v95)
            {
              v146 = SDWORD2(v170);
            }

            else
            {
              v147 = MEMORY[0x1865D8110](v168[0]);
              v146 = v147 - v171 + DWORD2(v170);
            }
          }

          *(v120 + 40) = v146;
          if (v168[0])
          {
            fclose(v168[0]);
            v148 = *(&v171 + 1);
            if (*(&v171 + 1))
            {
              v149 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
LABEL_263:
                (*v149)(v148);
                goto LABEL_264;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v148);
              --qword_1ED456A90;
              off_1ED452EB0(v148);
              v148 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v149 = &xmmword_1ED452F28;
                goto LABEL_263;
              }
            }
          }

LABEL_264:
          v150 = v168[1];
          if (!v168[1])
          {
            goto LABEL_271;
          }

          v151 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v150);
            --qword_1ED456A90;
            off_1ED452EB0(v150);
            v150 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
LABEL_271:
              *v168 = 0u;
              v169 = 0u;
              v171 = 0uLL;
              LOBYTE(v172[0]) = 0;
              v152 = sqlite3_declare_vtab(v97, v121);
              if (v152)
              {
                v98 = v152;
                sqlite3_errmsg(v97);
                sub_181A1C95C(v168, "bad schema: '%s' - %s", v153, v154, v155, v156, v157, v158, v121);
                goto LABEL_281;
              }

              v159 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v121);
                --qword_1ED456A90;
                off_1ED452EB0(v121);
                v121 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_279;
                }

                v159 = &xmmword_1ED452F28;
              }

              (*v159)(v121);
LABEL_279:
              sqlite3_vtab_config(v97, 3);
              return 0;
            }

            v151 = &xmmword_1ED452F28;
          }

          (*v151)(v150);
          goto LABEL_271;
        }

        v138 = 1;
        do
        {
          sqlite3_str_appendf(v122, "%sc%d TEXT", ",", v138++);
        }

        while (v11 != v138);
      }

      v131 = v11;
      goto LABEL_250;
    }
  }

  v94 = "more than one 'header' parameter";
LABEL_156:
  sub_181A1C95C(v168, v94, a3, a4, a5, a6, a7, a8, v160);
LABEL_157:
  v98 = 0;
  v8 = a6;
  v99 = v167;
  if (v167)
  {
LABEL_158:
    v106 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_163;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v99);
    --qword_1ED456A90;
    off_1ED452EB0(v99);
    v99 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v106 = &xmmword_1ED452F28;
LABEL_163:
      (*v106)(v99);
    }
  }

LABEL_164:
  v107 = v166;
  if (v166)
  {
    v108 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_170;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v107);
    --qword_1ED456A90;
    off_1ED452EB0(v107);
    v107 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v108 = &xmmword_1ED452F28;
LABEL_170:
      (*v108)(v107);
    }
  }

  v109 = zSQL;
  if (zSQL)
  {
    v110 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_177;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v109);
    --qword_1ED456A90;
    off_1ED452EB0(v109);
    v109 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v110 = &xmmword_1ED452F28;
LABEL_177:
      (*v110)(v109);
    }
  }

  if (LOBYTE(v172[0]))
  {
    v111 = *v8;
    if (*v8)
    {
      v112 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_185;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v111);
      --qword_1ED456A90;
      off_1ED452EB0(v111);
      v111 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v112 = &xmmword_1ED452F28;
LABEL_185:
        (*v112)(v111);
      }
    }

    *v8 = sqlite3_mprintf("%s", v172);
  }

  if (v168[0])
  {
    fclose(v168[0]);
    v113 = *(&v171 + 1);
    if (*(&v171 + 1))
    {
      v114 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_194;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v113);
      --qword_1ED456A90;
      off_1ED452EB0(v113);
      v113 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v114 = &xmmword_1ED452F28;
LABEL_194:
        (*v114)(v113);
      }
    }
  }

  v115 = v168[1];
  if (v168[1])
  {
    v116 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_201;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v115);
    --qword_1ED456A90;
    off_1ED452EB0(v115);
    v115 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v116 = &xmmword_1ED452F28;
LABEL_201:
      (*v116)(v115);
    }
  }

  if (v98 <= 1)
  {
    return 1;
  }

  else
  {
    return v98;
  }
}

uint64_t sub_181A1C034(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
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
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v4 = *(v1 + 32);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
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
LABEL_14:
    (*v5)(v4);
  }

LABEL_15:
  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_20:
    (*v6)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_181A1C1C8(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 48);
  if (sqlite3_initialize())
  {
    return 7;
  }

  v6 = 12 * v4;
  v7 = sub_181902484(v6 + 296, 3272603629);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  bzero(v7, v6 + 296);
  v9 = &v8[8 * *(a1 + 48) + 296];
  *(v8 + 34) = v8 + 296;
  *(v8 + 35) = v9;
  *a2 = v8;
  result = sub_181A1C9CC((v8 + 8), *(a1 + 24), *(a1 + 32));
  if (result)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &off_1ED452EB0;
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
          goto LABEL_13;
        }

        v11 = &xmmword_1ED452F28;
      }

      (*v11)(v10);
    }

LABEL_13:
    *(a1 + 16) = sqlite3_mprintf("%s", v8 + 72);
    return 1;
  }

  return result;
}

uint64_t sub_181A1C308(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*(*a1 + 48) >= 1)
  {
    for (i = 0; i < *(v2 + 48); ++i)
    {
      v4 = *(v1[34] + 8 * i);
      if (v4)
      {
        v5 = &off_1ED452EB0;
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
            goto LABEL_4;
          }

          v5 = &xmmword_1ED452F28;
        }

        (*v5)(v4);
      }

LABEL_4:
      *(v1[34] + 8 * i) = 0;
      *(v1[35] + 4 * i) = 0;
    }
  }

  v6 = v1[1];
  if (v6)
  {
    fclose(v6);
    v7 = v1[8];
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
  }

LABEL_19:
  v9 = v1[2];
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
  *(v1 + 1) = 0u;
  *(v1 + 3) = 0u;
  v1[7] = 0;
  v1[8] = 0;
  *(v1 + 72) = 0;
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_31:
    (*v11)(v1);
    return 0;
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

  return 0;
}

uint64_t sub_181A1C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  *(a1 + 288) = 0;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28) - 1)
  {
    if (sub_181A1D13C(a1 + 8, 0))
    {
      return 7;
    }
  }

  else
  {
    v11 = *(a1 + 16);
    *(a1 + 24) = v10 + 1;
    *(v11 + v10) = 0;
  }

  v13 = *(a1 + 8);
  v14 = *(v9 + 40);
  if (v13)
  {
    fseek(v13, v14, 0);
    v14 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 48) = v14;
  sub_181A1C64C(a1, v14, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t sub_181A1C64C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = (a1 + 1);
  v11 = *a1;
  while (1)
  {
    v12 = sub_181A1CC3C(v10, a2, a3, a4, a5, a6, a7, a8);
    if (!v12)
    {
      if (v9)
      {
        goto LABEL_21;
      }

      a1[36] = -1;
      return 0;
    }

    if (v9 >= *(v11 + 48))
    {
      goto LABEL_3;
    }

    v13 = v12;
    v14 = *(a1 + 6);
    if (*(a1[35] + 4 * v9) <= v14)
    {
      break;
    }

LABEL_2:
    memcpy(*(a1[34] + 8 * v9++), v13, v14 + 1);
LABEL_3:
    if (*(a1 + 10) != 44)
    {
      goto LABEL_21;
    }
  }

  v15 = v14 + 1;
  v16 = v14 == -1;
  v17 = *(a1[34] + 8 * v9);
  v18 = sqlite3_initialize();
  if (!v16 && !v18)
  {
    v25 = sub_18190287C(v17, v15, 1251237504);
    if (v25)
    {
      *(a1[34] + 8 * v9) = v25;
      *(a1[35] + 4 * v9) = *(a1 + 6) + 1;
      v14 = *(a1 + 6);
      goto LABEL_2;
    }
  }

  sub_181A1C95C(v10, "out of memory", v19, v20, v21, v22, v23, v24, v32);
  v26 = *(v11 + 16);
  if (v26)
  {
    v27 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_19;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
    --qword_1ED456A90;
    off_1ED452EB0(v26);
    v26 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v27 = &xmmword_1ED452F28;
LABEL_19:
      (*v27)(v26);
    }
  }

  *(v11 + 16) = sqlite3_mprintf("%s", a1 + 72);
LABEL_21:
  ++a1[36];
  if (v9 < *(v11 + 48))
  {
    for (i = v9; i < *(v11 + 48); ++i)
    {
      v29 = *(a1[34] + 8 * i);
      if (v29)
      {
        v30 = &off_1ED452EB0;
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
            goto LABEL_24;
          }

          v30 = &xmmword_1ED452F28;
        }

        (*v30)(v29);
      }

LABEL_24:
      *(a1[34] + 8 * i) = 0;
      *(a1[35] + 4 * i) = 0;
    }
  }

  return 0;
}

uint64_t sub_181A1C8F4(void *a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0 && *(*a1 + 48) > a3)
  {
    if (a2)
    {
      v3 = *(a1[34] + 8 * a3);
      if (v3)
      {
        sub_18190B23C(a2, v3, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  return 0;
}

void sub_181A1C95C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = (a1 + 64);
  if (a2)
  {
    v10[0] = 0;
    v10[1] = a1 + 64;
    v11 = 200;
    v12 = 0;
    v13 = 0;
    sqlite3_str_vappendf(v10, a2, &a9);
    v9 += HIDWORD(v12);
  }

  else
  {
    sub_1819012D0(34608);
  }

  *v9 = 0;
}

uint64_t sub_181A1C9CC(uint64_t a1, const char *a2, char *__s)
{
  if (!a2)
  {
    *(a1 + 56) = __s;
    v12 = strlen(__s);
    result = 0;
    *(a1 + 48) = v12;
    return result;
  }

  if (sqlite3_initialize())
  {
    *(a1 + 56) = 0;
LABEL_4:
    sub_181A1C95C(a1, "out of memory", v5, v6, v7, v8, v9, v10, v27);
    return 1;
  }

  v13 = sub_181902484(1024, 1979283964);
  *(a1 + 56) = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = fopen(a2, "rb");
  *a1 = v14;
  if (!v14)
  {
    v21 = *(a1 + 56);
    if (!v21)
    {
      goto LABEL_25;
    }

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
LABEL_17:
        if (*a1)
        {
          fclose(*a1);
          v23 = *(a1 + 56);
          if (v23)
          {
            v24 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
LABEL_24:
              (*v24)(v23);
              goto LABEL_25;
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
              goto LABEL_24;
            }
          }
        }

LABEL_25:
        v25 = *(a1 + 8);
        if (v25)
        {
          v26 = &off_1ED452EB0;
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
              goto LABEL_32;
            }

            v26 = &xmmword_1ED452F28;
          }

          (*v26)(v25);
        }

LABEL_32:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        sub_181A1C95C(a1, "cannot open '%s' for reading", v15, v16, v17, v18, v19, v20, a2);
        return 1;
      }

      v22 = &xmmword_1ED452F28;
    }

    (*v22)(v21);
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_181A1CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    *(a1 + 16) = 0;
    v9 = *(a1 + 40);
    if (v9 >= *(a1 + 48))
    {
      break;
    }

    v10 = *(a1 + 56);
    *(a1 + 40) = v9 + 1;
    v11 = *(v10 + v9);
    if (v11 == 34)
    {
      goto LABEL_27;
    }

LABEL_6:
    if (v11 == -1)
    {
LABEL_26:
      result = 0;
      *(a1 + 32) = -1;
      return result;
    }

    if (v11 != 239 || *(a1 + 28))
    {
      while (1)
      {
LABEL_74:
        if (v11 <= 44)
        {
          switch(v11)
          {
            case -1:
              goto LABEL_87;
            case 10:
              ++*(a1 + 24);
              v41 = *(a1 + 16);
              if (v41 >= 1 && *(*(a1 + 8) + v41 - 1) == 13)
              {
                *(a1 + 16) = v41 - 1;
              }

LABEL_87:
              *(a1 + 32) = v11;
              goto LABEL_88;
            case 44:
              goto LABEL_87;
          }
        }

        v38 = *(a1 + 16);
        if (v38 >= *(a1 + 20) - 1)
        {
          if (sub_181A1D13C(a1, v11))
          {
            return 0;
          }
        }

        else
        {
          v39 = *(a1 + 8);
          *(a1 + 16) = v38 + 1;
          *(v39 + v38) = v11;
        }

        v40 = *(a1 + 40);
        if (v40 < *(a1 + 48))
        {
          v37 = *(a1 + 56);
          *(a1 + 40) = v40 + 1;
          v11 = *(v37 + v40);
        }

        else
        {
          v11 = -1;
          if (*a1)
          {
            v11 = sub_181A1D0EC(a1);
          }
        }
      }
    }

    v12 = *(a1 + 16);
    if (v12 >= *(a1 + 20) - 1)
    {
      sub_181A1D13C(a1, -17);
    }

    else
    {
      v13 = *(a1 + 8);
      *(a1 + 16) = v12 + 1;
      *(v13 + v12) = -17;
    }

    v14 = *(a1 + 40);
    if (v14 >= *(a1 + 48))
    {
      if (!*a1)
      {
        goto LABEL_72;
      }

      v11 = sub_181A1D0EC(a1);
    }

    else
    {
      v15 = *(a1 + 56);
      *(a1 + 40) = v14 + 1;
      v11 = *(v15 + v14);
    }

    if (v11 != 187)
    {
      goto LABEL_74;
    }

    v16 = *(a1 + 16);
    if (v16 >= *(a1 + 20) - 1)
    {
      sub_181A1D13C(a1, -69);
    }

    else
    {
      v17 = *(a1 + 8);
      *(a1 + 16) = v16 + 1;
      *(v17 + v16) = -69;
    }

    v18 = *(a1 + 40);
    if (v18 >= *(a1 + 48))
    {
      if (!*a1)
      {
LABEL_72:
        v11 = -1;
        goto LABEL_74;
      }

      v11 = sub_181A1D0EC(a1);
    }

    else
    {
      v19 = *(a1 + 56);
      *(a1 + 40) = v18 + 1;
      v11 = *(v19 + v18);
    }

    if (v11 != 191)
    {
      goto LABEL_74;
    }

    *(a1 + 28) = 1;
    *(a1 + 16) = 0;
  }

  if (!*a1)
  {
    goto LABEL_26;
  }

  v11 = sub_181A1D0EC(a1);
  if (v11 != 34)
  {
    goto LABEL_6;
  }

LABEL_27:
  v21 = 0;
  v22 = 0;
  v23 = *(a1 + 24);
  while (1)
  {
    v25 = *(a1 + 40);
    if (v25 >= *(a1 + 48))
    {
      if (!*a1)
      {
        goto LABEL_48;
      }

      v27 = sub_181A1D0EC(a1);
    }

    else
    {
      v26 = *(a1 + 56);
      *(a1 + 40) = v25 + 1;
      v27 = *(v26 + v25);
    }

    v28 = v21 == 34;
    if (v21 != 34 && v27 > 34)
    {
      v28 = v21;
      goto LABEL_69;
    }

    if (v27 == 10)
    {
      goto LABEL_37;
    }

    v29 = 0;
    if (v21 != 34 || v27 != 34)
    {
      goto LABEL_49;
    }

    v30 = *(a1 + 40);
    if (v30 < *(a1 + 48))
    {
      v31 = *(a1 + 56);
      *(a1 + 40) = v30 + 1;
      v27 = *(v31 + v30);
      if (v27 > 0x22)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (!*a1)
    {
      break;
    }

    v27 = sub_181A1D0EC(a1);
    if (v27 > 34)
    {
LABEL_46:
      v28 = 0;
      goto LABEL_69;
    }

LABEL_42:
    v28 = 0;
    if (v27 == 10)
    {
      v21 = 0;
LABEL_37:
      ++*(a1 + 24);
      v29 = 1;
      v27 = 10;
      goto LABEL_49;
    }

LABEL_68:
    if (v27 == -1)
    {
      sub_181A1C95C(a1, "line %d: unterminated %c-quoted field\n", a3, a4, a5, a6, a7, a8, v23);
      *(a1 + 32) = -1;
      goto LABEL_88;
    }

LABEL_69:
    v36 = *(a1 + 16);
    if (v36 < *(a1 + 20) - 1)
    {
      v24 = *(a1 + 8);
      *(a1 + 16) = v36 + 1;
      *(v24 + v36) = v27;
      v21 = v27;
      v22 = v28;
    }

    else
    {
      v21 = v27;
      v22 = v28;
      if (sub_181A1D13C(a1, v27))
      {
        return 0;
      }
    }
  }

  v21 = 0;
LABEL_48:
  v29 = 0;
  v28 = v21 == 34;
  v27 = -1;
LABEL_49:
  if (v27 == 44)
  {
    v32 = 1;
  }

  else
  {
    v32 = v29;
  }

  if (v28 && (v32 & 1) != 0)
  {
    goto LABEL_93;
  }

  if (v21 != 13 || v22 != 34)
  {
    v29 = 0;
  }

  if (v29)
  {
    goto LABEL_93;
  }

  v34 = !v28;
  v35 = v27 != -1 || !v28;
  if (v35)
  {
    if (v27 == 13)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      sub_181A1C95C(a1, "line %d: unescaped %c character", a3, a4, a5, a6, a7, a8, *(a1 + 24));
      goto LABEL_88;
    }

    v28 = v21;
    goto LABEL_68;
  }

  LOBYTE(v27) = -1;
LABEL_93:
  v43 = *(a1 + 16);
  v44 = (v43 + *(a1 + 8) - 1);
  v45 = v43 - 1;
  do
  {
    *(a1 + 16) = v45;
    v46 = *v44--;
    --v45;
  }

  while (v46 != 34);
  *(a1 + 32) = v27;
LABEL_88:
  v42 = *(a1 + 8);
  if (v42)
  {
    *(v42 + *(a1 + 16)) = 0;
    result = *(a1 + 8);
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = 1;
  return result;
}

uint64_t sub_181A1D0EC(uint64_t a1)
{
  v2 = fread(*(a1 + 56), 1uLL, 0x400uLL, *a1);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = 1;
  *(a1 + 48) = v2;
  return **(a1 + 56);
}

uint64_t sub_181A1D13C(uint64_t a1, char a2)
{
  v4 = 2 * *(a1 + 20) + 100;
  v5 = *(a1 + 8);
  v6 = sqlite3_initialize();
  if (v4)
  {
    v13 = v6 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && (v14 = sub_18190287C(v5, v4, 1686398205)) != 0)
  {
    v15 = v14;
    result = 0;
    *(a1 + 8) = v15;
    v17 = *(a1 + 16);
    *(a1 + 16) = v17 + 1;
    *(a1 + 20) = v4;
    *(v15 + v17) = a2;
  }

  else
  {
    sub_181A1C95C(a1, "out of memory", v7, v8, v9, v10, v11, v12, v18);
    return 1;
  }

  return result;
}

int8x16_t *sub_181A1D1D4(uint64_t a1, int8x16_t *a2, int a3, int a4)
{
  v4 = a4;
  *&v80[12] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (*(a1 + 68))
    {
      return a2;
    }

    if (*(a1 + 96))
    {
      goto LABEL_8;
    }

LABEL_11:
    if (*(a1 + 70))
    {
      return 0;
    }

    v61 = (3 * *(a1 + 76));
    v62 = sqlite3_initialize();
    if (v61 >= 1 && v62 == 0)
    {
      v64 = sub_181902484(v61, 3280485494);
      *(a1 + 96) = v64;
      if (v64)
      {
        v65 = *(a1 + 76);
        *(a1 + 104) = v64 + v65;
        v66 = (v64 + v65 + v65);
        *(a1 + 88) = v66;
        bzero(v66, v65);
        goto LABEL_8;
      }
    }

    else
    {
      *(a1 + 96) = 0;
    }

    a2 = 0;
    *(a1 + 70) = 1;
    return a2;
  }

  if (*(a1 + 34 * (a4 & 1) + 1))
  {
    *(a1 + 68) = 1;
    return a2;
  }

  *(a1 + 68) = 0;
  if (!*(a1 + 96))
  {
    goto LABEL_11;
  }

LABEL_8:
  iv = a3;
  v8 = *(a1 + 69);
  if (*(a1 + 69))
  {
    if ((v4 & 4) != 0)
    {
      sqlite3_initialize();
      arc4random_buf(v80, v8);
      memcpy(&a2->i8[*(a1 + 80)], v80, *(a1 + 69));
    }

    else
    {
      __memcpy_chk();
    }
  }

  v9 = *(a1 + 72);
  if (v9 >= 1)
  {
    bzero(&v80[-v9 + 12], v9);
  }

  dataOut = *(a1 + 96);
  if ((v4 & 2) != 0)
  {
    v11 = (a1 + 34 * (v4 & 1));
    v13 = *v11;
    v12 = v11 + 2;
    if (v13 == 32)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    CCCrypt(0, 0, 0, v12, v14, &iv, *(a1 + 88), *(a1 + 76), dataOut, *(a1 + 76), 0);
    dataOut = *(a1 + 96);
  }

  v15 = a2;
  if ((v4 & 4) != 0)
  {
    v15 = *(a1 + 104);
  }

  v16 = *(a1 + 80);
  v17 = v16 - 9;
  if (v16 < 9)
  {
    v18 = dataOut;
    v19 = a2;
    v20 = v15;
    v21 = *(a1 + 80);
  }

  else
  {
    v18 = dataOut;
    v19 = a2;
    v20 = v15;
    v21 = *(a1 + 80);
    if ((((a2 | v15) | dataOut) & 7) == 0)
    {
      v18 = dataOut;
      v19 = a2;
      v20 = v15;
      v21 = *(a1 + 80);
      if (v17 < 0x28)
      {
        goto LABEL_26;
      }

      v18 = dataOut;
      v19 = a2;
      v20 = v15;
      v21 = *(a1 + 80);
      if ((v15 - dataOut) < 0x20)
      {
        goto LABEL_26;
      }

      v18 = dataOut;
      v19 = a2;
      v20 = v15;
      v21 = *(a1 + 80);
      if ((v15 - a2) < 0x20)
      {
        goto LABEL_26;
      }

      v54 = (v17 >> 3) + 1;
      v55 = v54 & 0x3FFFFFFC;
      v18 = &dataOut->i64[v55];
      v19 = &a2->i64[v55];
      v20 = &v15->i64[v55];
      v21 = v16 - 8 * (v54 & 0x3FFFFFFC);
      v56 = v15 + 1;
      v57 = a2 + 1;
      v58 = dataOut + 1;
      v59 = v54 & 0x3FFFFFFC;
      do
      {
        v60 = veorq_s8(*v58, *v57);
        v56[-1] = veorq_s8(v58[-1], v57[-1]);
        *v56 = v60;
        v56 += 2;
        v57 += 2;
        v58 += 2;
        v59 -= 4;
      }

      while (v59);
      if ((v54 & 0x3FFFFFFC) != v54)
      {
LABEL_26:
        v22 = v21;
        do
        {
          v24 = *v19++;
          v23 = v24;
          v25 = *v18++;
          *v20++ = v25 ^ v23;
          v21 = v22 - 8;
          v26 = v22 > 0x10;
          v22 -= 8;
        }

        while (v26);
      }
    }
  }

  if ((v19 & 3) == 0 && (v18 & 3) == 0)
  {
    v27 = v21 - 5;
    if (v21 >= 5)
    {
      if (v27 < 0x1C || (v20 - v18) < 0x20 || (v20 - v19) < 0x20)
      {
        v28 = v18;
        v29 = v19;
        v30 = v20;
      }

      else
      {
        v47 = (v27 >> 2) + 1;
        v48 = 4 * (v47 & 0x7FFFFFF8);
        v28 = (v18 + v48);
        v29 = (v19 + v48);
        v30 = (v20 + v48);
        v21 -= 4 * (v47 & 0x7FFFFFF8);
        v49 = (v20 + 2);
        v50 = (v19 + 2);
        v51 = (v18 + 2);
        v52 = v47 & 0x7FFFFFF8;
        do
        {
          v53 = veorq_s8(*v51, *v50);
          v49[-1] = veorq_s8(v51[-1], v50[-1]);
          *v49 = v53;
          v49 += 2;
          v50 += 2;
          v51 += 2;
          v52 -= 8;
        }

        while (v52);
        v18 = v28;
        v19 = v29;
        v20 = v30;
        if ((v47 & 0x7FFFFFF8) == v47)
        {
LABEL_39:
          v35 = v21 - (v21 != 0);
          if (v35 < 7 || (v20 - v18) < 0x20 || (v20 - v19) < 0x20)
          {
            v36 = v18;
            v37 = v19;
            v38 = v20;
          }

          else
          {
            v45 = v35 + 1;
            if (v35 < 0x1F)
            {
              v46 = 0;
              goto LABEL_78;
            }

            v46 = v45 & 0x1FFFFFFE0;
            v67 = (v20 + 2);
            v68 = (v19 + 2);
            v69 = (v18 + 2);
            v70 = v45 & 0x1FFFFFFE0;
            do
            {
              v71 = veorq_s8(*v69, *v68);
              v67[-1] = veorq_s8(v69[-1], v68[-1]);
              *v67 = v71;
              v67 += 2;
              v68 += 2;
              v69 += 2;
              v70 -= 32;
            }

            while (v70);
            if (v45 == v46)
            {
              goto LABEL_43;
            }

            if ((v45 & 0x18) != 0)
            {
LABEL_78:
              v21 -= v45 & 0xFFFFFFF8;
              v36 = (v18 + (v45 & 0x1FFFFFFF8));
              v37 = (v19 + (v45 & 0x1FFFFFFF8));
              v38 = (v20 + (v45 & 0x1FFFFFFF8));
              v72 = (v20 + v46);
              v73 = (v19 + v46);
              v74 = (v18 + v46);
              v75 = v46 - (v45 & 0x1FFFFFFF8);
              do
              {
                v76 = *v73++;
                v77 = v76;
                v78 = *v74++;
                *v72++ = veor_s8(v78, v77);
                v75 += 8;
              }

              while (v75);
              if (v45 == (v45 & 0x1FFFFFFF8))
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            }

            v38 = (v20 + v46);
            v37 = (v19 + v46);
            v36 = (v18 + v46);
            v21 -= v46;
          }

LABEL_41:
          v39 = v21 + 1;
          do
          {
            v41 = *v37;
            v37 = (v37 + 1);
            v40 = v41;
            v42 = *v36;
            v36 = (v36 + 1);
            *v38 = v42 ^ v40;
            v38 = (v38 + 1);
            --v39;
          }

          while (v39 > 1);
LABEL_43:
          v16 = *(a1 + 80);
          goto LABEL_44;
        }
      }

      v18 = v28;
      v19 = v29;
      v20 = v30;
      v31 = v21;
      do
      {
        v33 = *v19;
        v19 = (v19 + 4);
        v32 = v33;
        v34 = *v18;
        v18 = (v18 + 4);
        *v20 = v34 ^ v32;
        v20 = (v20 + 4);
        v21 = v31 - 4;
        v26 = v31 > 8;
        v31 -= 4;
      }

      while (v26);
      goto LABEL_39;
    }
  }

  if (v21 >= 1)
  {
    goto LABEL_39;
  }

LABEL_44:
  v43 = *(a1 + 76);
  if (v43 > v16)
  {
    memmove(&v15->i8[v16], &a2->i8[v16], v43 - v16);
  }

  if (a3 == 1)
  {
    v15[1].i8[0] ^= dataOut[1].u8[0];
    v15[1].i8[1] ^= dataOut[1].u8[1];
    v15[1].i8[2] ^= dataOut[1].u8[2];
    v15[1].i8[3] ^= dataOut[1].u8[3];
    v15[1].i8[4] ^= dataOut[1].u8[4];
    v15[1].i8[5] ^= dataOut[1].u8[5];
    v15[1].i8[6] ^= dataOut[1].u8[6];
    v15[1].i8[7] ^= dataOut[1].u8[7];
  }

  return v15;
}

uint64_t sub_181A1D794(uint64_t result, int a2, int a3)
{
  if (a3 >= 12)
  {
    v3 = 12;
  }

  else
  {
    v3 = a3;
  }

  *(result + 69) = v3;
  *(result + 76) = a2;
  *(result + 80) = a2 - a3;
  *(result + 72) = 12 - v3;
  return result;
}

uint64_t sub_181A1D7B8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
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
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v1[5] = 0u;
  v1[6] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_13:
    v6 = *v4;

    return v6(v1);
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
    v4 = &xmmword_1ED452F28;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_181A1D90C(void *a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v11 = 0;
  result = (*(*a1 + 56))(*a1, a1[44], 0, &v11);
  if (!result)
  {
    if (!v11)
    {
      if (*(a1 + 9) == 5)
      {
        result = 0;
        *(a1 + 9) = 0;
        return result;
      }

      return 0;
    }

    v5 = a1;
    v6 = a1[43];
    if (!v6 || *(v6 + 60) < 0 || (LODWORD(v6) = *(v6 + 92), !v6))
    {
      v7 = *a1[9];
      if (!v7)
      {
LABEL_19:
        v8 = *(*v5 + 48);
        if (v8)
        {
          return v8();
        }

        return 0;
      }

      v12 = 0;
      result = (*(v7 + 48))();
      if (result)
      {
        return result;
      }

      v5 = a1;
      v6 = (v12 + a1[25] - 1) / a1[25];
    }

    if (v6 > *(v5 + 188))
    {
      *(v5 + 188) = v6;
LABEL_17:
      if (*(v5 + 17))
      {
        return 14;
      }

      if (!*(v5 + 8))
      {
        v10 = **(v5 + 72);
        if (*v10 < 2 || !*(v10 + 104))
        {
          return 14;
        }
      }

      v9 = *(v5 + 80);
      if (*v9)
      {
        (*(*v9 + 8))(v9);
        v5 = a1;
        *v9 = 0;
      }

      result = sub_1819339AC(v5);
      if (!result)
      {
        *(a1 + 9) = 5;
        *(a1 + 21) = 0;
      }

      return result;
    }

    if (v6)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_181A1DA9C(sqlite3 *a1)
{
  result = sqlite3_create_function(a1, "uuid", 0, 2097153, 0, sub_181A1DB84, 0, 0);
  if (!result)
  {
    result = sqlite3_create_function(a1, "uuid_str", 1, 2099201, 0, sub_181A1DC78, 0, 0);
    if (!result)
    {

      return sqlite3_create_function(a1, "uuid_blob", 1, 2099201, 0, sub_181A1DD4C, 0, 0);
    }
  }

  return result;
}

void sub_181A1DB84(sqlite3_context *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  sqlite3_randomness(16, P);
  v2 = 0;
  v9 = v9 & 0xF | 0x40;
  v10 = v10 & 0x3F | 0x80;
  v3 = v7;
  v4 = 1360;
  do
  {
    if (v4)
    {
      *v3++ = 45;
    }

    v5 = P[v2];
    v6 = a0123456789abcd_1[v5 >> 4];
    LOBYTE(v5) = a0123456789abcd_1[v5 & 0xF];
    *v3 = v6;
    v3[1] = v5;
    v3 += 2;
    ++v2;
    v4 >>= 1;
  }

  while (v2 != 16);
  *v3 = 0;
  sqlite3_result_text(a1, v7, 36, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_181A1DC78(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = sub_181A1DDC4(*a3, v11);
  if (v4)
  {
    v5 = 0;
    v6 = v10;
    v7 = 1360;
    do
    {
      if (v7)
      {
        *v6++ = 45;
      }

      v8 = v4[v5];
      v9 = a0123456789abcd_1[v8 >> 4];
      LOBYTE(v8) = a0123456789abcd_1[v8 & 0xF];
      *v6 = v9;
      v6[1] = v8;
      v6 += 2;
      ++v5;
      v7 >>= 1;
    }

    while (v5 != 16);
    *v6 = 0;
    sqlite3_result_text(a1, v10, 36, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_181A1DD4C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = sub_181A1DDC4(*a3, v5);
  if (v4)
  {
    sqlite3_result_blob(a1, v4, 16, 0xFFFFFFFFFFFFFFFFLL);
  }
}

const void *sub_181A1DDC4(sqlite3_value *a1, uint64_t a2)
{
  v4 = sqlite3_value_type(a1);
  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = sqlite3_value_text(a1);
      v6 = 0;
      if (*v5 == 123)
      {
        v7 = v5 + 1;
      }

      else
      {
        v7 = v5;
      }

      v8 = MEMORY[0x1E69E9830];
      while (1)
      {
        if (*v7 == 45)
        {
          ++v7;
        }

        v9 = *v7;
        if ((*(v8 + 4 * v9 + 60) & 0x10000) == 0)
        {
          break;
        }

        v10 = v7[1];
        if ((*(v8 + 4 * v10 + 60) & 0x10000) == 0)
        {
          break;
        }

        *(a2 + v6) = ((((2 * v10) >> 7) & 0xF9) + v10) & 0xF | (16 * ((((2 * v9) >> 7) & 0xF9) + v9));
        v7 += 2;
        if (++v6 == 16)
        {
          v11 = v7 + 1;
          if (*v7 != 125)
          {
            v11 = v7;
          }

          if (*v11)
          {
            return 0;
          }

          else
          {
            return a2;
          }
        }
      }
    }

    return 0;
  }

  if (sqlite3_value_bytes(a1) != 16)
  {
    return 0;
  }

  return sqlite3_value_blob(a1);
}

void sub_181A1DEE4()
{
  if (getenv("SQLITE_SQLLOG_DIR"))
  {
    if (os_variant_allows_internal_security_policies())
    {
      if (!sqlite3_config(21, sub_181A1DFCC, 0))
      {
        bzero(qword_1EA831B30, 0x2428uLL);
        dword_1EA831B40 = 1;
        if (getenv("SQLITE_SQLLOG_CONDITIONAL"))
        {
          dword_1EA831B3C = 1;
        }
      }
    }

    else if (qword_1EA831B28 != -1)
    {
      sub_181A1EEE0();
    }
  }
}

void sub_181A1DFCC(uint64_t a1, sqlite3 *a2, const char *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = sqlite3_mutex_alloc(2);
  v8 = v7;
  if (!a4)
  {
    sqlite3_mutex_enter(v7);
    if (!qword_1EA831B30[0])
    {
      qword_1EA831B30[0] = sqlite3_mutex_alloc(1);
    }

    sqlite3_mutex_leave(v8);
    sqlite3_mutex_enter(qword_1EA831B30[0]);
    if (dword_1EA831F4C)
    {
      goto LABEL_17;
    }

    if (dword_1EA831B3C && !sub_181A1E808(a2, "main", 0, __s))
    {
      v26 = strlen(__s);
      if (v26 >= 505)
      {
        sqlite3_log(10, "sqllogTraceDb(): database name too long (%d bytes)", v26);
        goto LABEL_17;
      }

      *&__s[v26] = 0x676F6C6C71732DLL;
      if (access(__s, 0))
      {
        goto LABEL_17;
      }
    }

    sqlite3_mutex_enter(v8);
    v13 = dword_1EA831B38++;
    v14 = &qword_1EA831B30[4 * v13];
    v14[136] = 0;
    v14[134] = a2;
    LODWORD(v13) = dword_1EA831F44++;
    *(v14 + 270) = v13;
    sqlite3_mutex_leave(v8);
    if (v14[136])
    {
      goto LABEL_16;
    }

    if (!byte_1EA831B44)
    {
      v27 = getenv("SQLITE_SQLLOG_DIR");
      if (!v27)
      {
        goto LABEL_17;
      }

      v28 = v27;
      if (strlen(v27) - 502 < 0xFFFFFFFFFFFFFE00)
      {
        goto LABEL_17;
      }

      v29 = getpid();
      sqlite3_snprintf(512, &byte_1EA831B44, "%s/sqllog_%05d", v28, v29);
      sqlite3_snprintf(512, byte_1EA831D44, "%s.idx", &byte_1EA831B44);
      v30 = getenv("SQLITE_SQLLOG_REUSE_FILES");
      if (v30)
      {
        dword_1EA831B40 = atoi(v30);
      }

      v31 = fopen(byte_1EA831D44, "w");
      if (v31)
      {
        fclose(v31);
      }
    }

    v15 = sqlite3_mprintf("%s_%05d.sql", &byte_1EA831B44, *(v14 + 270));
    v14[136] = fopen(v15, "w");
    sqlite3_free(v15);
    if (v14[136] || (sqlite3_log(10, "sqllogOpenlog(): Failed to open log file"), v14[136]))
    {
LABEL_16:
      sub_181A1E474((v14 + 133), "main", 0);
    }

LABEL_17:
    sqlite3_mutex_leave(qword_1EA831B30[0]);
    return;
  }

  v9 = dword_1EA831B38;
  if (dword_1EA831B38 >= 1)
  {
    v10 = 0;
    v11 = &unk_1EA831F58;
    v12 = &unk_1EA831F58 + 32 * (dword_1EA831B38 - 1);
    while (*(v11 + 1) != a2)
    {
      ++v10;
      v11 += 32;
      if (dword_1EA831B38 == v10)
      {
        goto LABEL_19;
      }
    }

    if (a4 != 2)
    {
      if (!*(v11 + 3))
      {
        return;
      }

      sqlite3_mutex_enter(qword_1EA831B30[0]);
      if (!dword_1EA831F4C)
      {
        for (i = a3; ; ++i)
        {
          v21 = *i;
          if ((v21 - 9) >= 5 && v21 != 32)
          {
            break;
          }
        }

        v22 = 0;
        do
        {
          v23 = (i[v22++] & 0xDF) - 65;
        }

        while (v23 < 0x1A);
        if (v22 == 7 && !sqlite3_strnicmp("ATTACH", i, 6))
        {
          sub_181A1E474(v11, 0, 1);
        }

        else
        {
          v24 = *(v11 + 3);
          v25 = dword_1EA831F50++;
          fprintf(v24, "%s; -- clock=%d\n", a3, v25);
        }
      }

      v19 = qword_1EA831B30[0];
      goto LABEL_33;
    }

    v9 = v10;
LABEL_23:
    sqlite3_mutex_enter(v7);
    v16 = dword_1EA831B38;
    if (v9 < dword_1EA831B38)
    {
      v17 = *(v11 + 3);
      if (v17)
      {
        fclose(v17);
        v16 = dword_1EA831B38;
      }

      *(v11 + 1) = 0;
      *(v11 + 3) = 0;
      dword_1EA831B38 = --v16;
    }

    if (v16)
    {
      if (v9 < v16)
      {
        v18 = &qword_1EA831B30[4 * v16] - v11 + 1064;
        if ((v18 >> 5) >= 1)
        {
          memmove(v11, v11 + 32, v18 & 0xFFFFFFFE0);
        }
      }
    }

    else
    {
      sqlite3_mutex_free(qword_1EA831B30[0]);
      qword_1EA831B30[0] = 0;
    }

    v19 = v8;
LABEL_33:

    sqlite3_mutex_leave(v19);
    return;
  }

  v9 = 0;
  v12 = 0;
LABEL_19:
  v11 = v12;
  if (a4 == 2)
  {
    goto LABEL_23;
  }
}

void sub_181A1E474(uint64_t a1, const char *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (sub_181A1E808(*(a1 + 8), a2, zSourceName, __s))
  {
    return;
  }

  if (__s[0])
  {
    if (dword_1EA831B40)
    {
      v5 = fopen(byte_1EA831D44, "r");
      if (v5)
      {
        v6 = v5;
        if (feof(v5))
        {
LABEL_6:
          v7 = 0;
        }

        else
        {
          while (1)
          {
            if (fgets(ppDb, 1029, v6))
            {
              v37 = 0;
              v13 = &v35 + 7;
              do
              {
                v15 = *++v13;
                v14 = v15;
              }

              while ((v15 - 48) < 0xA);
              while (v14 == 32)
              {
                v16 = *++v13;
                v14 = v16;
              }

              LODWORD(v17) = strlen(v13);
              if (v17 >= 1)
              {
                v17 &= 0x7FFFFFFFu;
                while (1)
                {
                  v18 = v13[v17 - 1];
                  if ((v18 - 9) >= 5 && v18 != 32)
                  {
                    break;
                  }

                  if (v17-- <= 1)
                  {
                    LODWORD(v17) = 0;
                    break;
                  }
                }
              }

              v19 = v17;
              if (strlen(__s) == v17 && !memcmp(__s, v13, v19))
              {
                break;
              }
            }

            if (feof(v6))
            {
              goto LABEL_6;
            }
          }

          v35 = 0;
          v34 = 0;
          v20 = ppDb[0];
          if (LOBYTE(ppDb[0]) - 48 <= 9)
          {
            v21 = ppDb + 1;
            v22 = &v34;
            do
            {
              *v22 = v20;
              v22 = (v22 + 1);
              v23 = *v21++;
              v20 = v23;
            }

            while ((v23 - 48) < 0xA);
          }

          v7 = sqlite3_mprintf("%s_%s.db", &byte_1EA831B44, &v34);
        }

        if (ferror(v6))
        {
          sqlite3_log(10, "sqllogFindFile(): error reading index file");
        }

        fclose(v6);
        if (v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sqlite3_log(10, "sqllogFindFile(): error in fopen()");
      }
    }

    ppDb[0] = 0;
    v8 = dword_1EA831F48++;
    v7 = sqlite3_mprintf("%s_%02d.db", &byte_1EA831B44, v8);
    dword_1EA831F4C = 1;
    v9 = sqlite3_open(v7, ppDb);
    if (v9)
    {
      dword_1EA831F4C = 0;
    }

    else
    {
      sqlite3_exec(ppDb[0], "PRAGMA synchronous = 0", 0, 0, 0);
      v10 = sqlite3_backup_init(ppDb[0], "main", *(a1 + 8), zSourceName);
      if (v10)
      {
        v11 = v10;
        sqlite3_backup_step(v10, -1);
        v12 = sqlite3_backup_finish(v11);
      }

      else
      {
        v12 = sqlite3_errcode(ppDb[0]);
      }

      v24 = v12;
      sqlite3_close(ppDb[0]);
      dword_1EA831F4C = 0;
      v9 = v24;
      if (!v24)
      {
        v29 = fopen(byte_1EA831D44, "a");
        if (v29)
        {
          v30 = v29;
          fprintf(v29, "%d %s\n", v8, __s);
          fclose(v30);
        }

        goto LABEL_41;
      }
    }

    sqlite3_log(v9, "sqllogCopydb(): error backing up database");
  }

  else
  {
    v7 = sqlite3_mprintf(&byte_181A2878D);
  }

LABEL_41:
  if (a3)
  {
    v25 = dword_1EA831F50++;
    v26 = sqlite3_mprintf("ATTACH '%q' AS '%q'; -- clock=%d\n", v7, zSourceName, v25);
  }

  else
  {
    v26 = sqlite3_mprintf("-- Main database is '%q'\n", v7, v31);
  }

  v27 = *(a1 + 24);
  v28 = v26;
  fputs(v26, v27);
  sqlite3_free(v28);
  sqlite3_free(v7);
}

uint64_t sub_181A1E808(sqlite3 *a1, const char *a2, void *a3, void *a4)
{
  ppStmt = 0;
  dword_1EA831F4C = 1;
  result = sqlite3_prepare_v2(a1, "PRAGMA database_list", -1, &ppStmt, 0);
  if (result)
  {
    dword_1EA831F4C = 0;
LABEL_10:
    v13 = result;
    sqlite3_log(result, "sqllogFindAttached(): error in PRAGMA database_list");
    return v13;
  }

  while (sqlite3_step(ppStmt) == 100)
  {
    v8 = sqlite3_column_text(ppStmt, 1);
    v9 = sqlite3_column_bytes(ppStmt, 1);
    v10 = v9;
    if (a3)
    {
      memcpy(a3, v8, v9 + 1);
    }

    v11 = sqlite3_column_text(ppStmt, 2);
    v12 = sqlite3_column_bytes(ppStmt, 2);
    memcpy(a4, v11, v12 + 1);
    if (a2)
    {
      if (strlen(a2) == v10 && !sqlite3_strnicmp(a2, v8, v10))
      {
        break;
      }
    }
  }

  result = sqlite3_finalize(ppStmt);
  dword_1EA831F4C = 0;
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_181A1E998()
{
  v0 = __error();
  strerror(*v0);
  sub_181A1DA90();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_181A1ED14(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 70);
  v4 = *(a1 + 66);
  v5[0] = 67109632;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_18188D000, log, OS_LOG_TYPE_ERROR, "locking protocol: lockstate:%d, bShmUnreliable:%d, readOnly:%d", v5, 0x14u);
}