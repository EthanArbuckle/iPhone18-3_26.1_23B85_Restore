uint64_t sub_18194D228(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (__s)
    {
      v9 = __s;
      v10 = strlen(__s) & 0x3FFFFFFF;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = sub_181902484((v10 + 49), 0x10F004019D3F369);
    if (!v12)
    {
      if (*(a1 + 103) || *(a1 + 104))
      {
        return 0;
      }

      *(a1 + 103) = 1;
      if (*(a1 + 220) >= 1)
      {
        *(a1 + 424) = 1;
      }

      ++*(a1 + 432);
      *(a1 + 436) = 0;
      v33 = *(a1 + 344);
      if (!v33)
      {
        return 0;
      }

      sub_181910730(v33, "out of memory", v13, v14, v15, v16, v17, v18, v39);
      v34 = *(a1 + 344);
      *(v34 + 24) = 7;
      v35 = *(v34 + 216);
      if (!v35)
      {
        return 0;
      }

      v11 = 0;
      do
      {
        ++*(v35 + 52);
        *(v35 + 24) = 7;
        v35 = *(v35 + 216);
      }

      while (v35);
      return v11;
    }

    v11 = v12;
    v19 = (v12 + 48);
    memcpy((v12 + 48), v9, (v10 + 1));
    *v11 = a3;
    *(v11 + 8) = v19;
    *(v11 + 24) = a4;
    *(v11 + 32) = a5;
    *(v11 + 40) = 0;
    __s = v19;
    *(v11 + 16) = 1;
  }

  else
  {
    v11 = 0;
  }

  v20 = sub_18188FAF0(a1 + 568, __s, v11);
  if (v20)
  {
    v27 = v20;
    if (v20 == v11)
    {
      if (!*(a1 + 103) && !*(a1 + 104))
      {
        *(a1 + 103) = 1;
        if (*(a1 + 220) >= 1)
        {
          *(a1 + 424) = 1;
        }

        ++*(a1 + 432);
        *(a1 + 436) = 0;
        v36 = *(a1 + 344);
        if (v36)
        {
          sub_181910730(v36, "out of memory", v21, v22, v23, v24, v25, v26, v39);
          v37 = *(a1 + 344);
          *(v37 + 24) = 7;
          for (i = *(v37 + 216); i; i = *(i + 216))
          {
            ++*(i + 52);
            *(i + 24) = 7;
          }
        }
      }

      v11 = 0;
      goto LABEL_24;
    }

    v28 = *(v20 + 40);
    if (v28)
    {
      *(v28 + 48) |= 0x4000u;
      if (*(a1 + 824) || (v29 = *(v28 + 44) - 1, (*(v28 + 44) = v29) == 0))
      {
        sub_18194E094(a1, v28);
      }

      *(v27 + 40) = 0;
    }

    v30 = *(v27 + 16) - 1;
    *(v27 + 16) = v30;
    if (!v30)
    {
      v31 = *(v27 + 32);
      if (v31)
      {
        v31(*(v27 + 24));
      }

LABEL_24:
      sub_181929C84(a1, v27);
    }
  }

  return v11;
}

uint64_t sub_18194D478(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char **a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v24 = 0;
  v25 = zSQL;
  v26 = 200;
  v27 = 0xE00000000;
  v28 = 0;
  qmemcpy(zSQL, "CREATE TABLE x", 14);
  if (!*(a2 + 11))
  {
    sqlite3_str_appendf(&v24, "(%s", *a2);
    goto LABEL_7;
  }

  v10 = *(a2 + 10);
  sqlite3_str_appendf(&v24, "%c%s", 40, off_1E6A277A0[v10]);
  if (*(a2 + 11) < 2u)
  {
LABEL_7:
    LOBYTE(v11) = 1;
    goto LABEL_8;
  }

  v11 = 1;
  do
  {
    sqlite3_str_appendf(&v24, "%c%s", 44, (&off_1E6A277A0[v10])[v11++]);
  }

  while (v11 < *(a2 + 11));
LABEL_8:
  v12 = *(a2 + 9);
  v13 = HIDWORD(v27);
  v14 = v26;
  if ((v12 & 0x20) == 0)
  {
    v15 = 0;
    if (v12 < 0x40)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (HIDWORD(v27) + 11 >= v26)
  {
    sub_181906814(&v24, ",arg HIDDEN", 0xBu);
  }

  else
  {
    HIDWORD(v27) += 11;
    v16 = &v25[v13];
    *v16 = *",arg HIDDEN";
    *(v16 + 7) = 1313162308;
  }

  v15 = 1;
  LODWORD(v13) = HIDWORD(v27);
  v14 = v26;
  if (*(a2 + 9) >= 0x40u)
  {
LABEL_15:
    if (v13 + 14 >= v14)
    {
      sub_181906814(&v24, ",schema HIDDEN", 0xEu);
    }

    else
    {
      HIDWORD(v27) = v13 + 14;
      qmemcpy(&v25[v13], ",schema HIDDEN", 14);
    }

    ++v15;
    LODWORD(v13) = HIDWORD(v27);
    v14 = v26;
  }

LABEL_19:
  if (v13 + 1 >= v14)
  {
    sub_181906814(&v24, ")", 1u);
    v17 = v25;
    if (!v25)
    {
      goto LABEL_26;
    }
  }

  else
  {
    HIDWORD(v27) = v13 + 1;
    v25[v13] = 41;
    v17 = v25;
    if (!v25)
    {
      goto LABEL_26;
    }
  }

  v17[HIDWORD(v27)] = 0;
  if (v27 && (v28 & 0x400) == 0)
  {
    sub_18192A12C(&v24);
  }

LABEL_26:
  v18 = sqlite3_declare_vtab(a1, zSQL);
  if (v18)
  {
    v19 = v18;
    v20 = sqlite3_errmsg(a1);
    v21 = sqlite3_mprintf("%s", v20);
    result = v19;
    v23 = 0;
    *a6 = v21;
  }

  else
  {
    if (sqlite3_initialize())
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_181902484(48, 0x10700401D14200BLL);
      if (v23)
      {
        result = 0;
        *(v23 + 16) = 0u;
        *(v23 + 32) = 0u;
        *v23 = 0u;
        *(v23 + 24) = a1;
        *(v23 + 32) = a2;
        *(v23 + 41) = v11;
        *(v23 + 40) = v15;
        goto LABEL_33;
      }
    }

    result = 7;
  }

LABEL_33:
  *a5 = v23;
  return result;
}

uint64_t sub_18194D798(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  *(a2 + 64) = 0x3FF0000000000000;
  if (!*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v14[0] = 0;
  if (*a2 >= 1)
  {
    v3 = *(a1 + 41);
    v4 = -*a2;
    v5 = (v2 + 5);
    v6 = 1;
    do
    {
      v7 = *(v5 - 5);
      v8 = __OFSUB__(v7, v3);
      v9 = v7 - v3;
      if (v9 < 0 == v8 && *(v5 - 1) == 2)
      {
        if (!*v5)
        {
          return 19;
        }

        *(v14 + v9) = v6;
      }

      ++v6;
      v5 += 12;
    }

    while (v4 + v6 != 1);
    if (!LODWORD(v14[0]))
    {
      goto LABEL_13;
    }

    v10 = *(a2 + 32);
    v11 = v10 + 8 * SLODWORD(v14[0]);
    *(v11 - 8) = 1;
    *(v11 - 4) = 1;
    *(a2 + 64) = 0x4034000000000000;
    *(a2 + 72) = 20;
    if (HIDWORD(v14[0]))
    {
      result = 0;
      v13 = v10 + 8 * SHIDWORD(v14[0]);
      *(v13 - 8) = 2;
      *(v13 - 4) = 1;
      return result;
    }

    return 0;
  }

LABEL_13:
  result = 0;
  *(a2 + 64) = 0x41DFFFFFFFC00000;
  *(a2 + 72) = 0x7FFFFFFFLL;
  return result;
}

uint64_t sub_18194D8C4(uint64_t a1)
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

double sub_18194D97C(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v5 = sub_181902484(40, 0x1030040AF9EEB27);
    if (v5)
    {
      *(v5 + 32) = 0;
      result = 0.0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *v5 = a1;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_18194D9E8(uint64_t a1)
{
  v1 = a1;
  sub_18194DE7C(a1);
  if (v1)
  {
    v2 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v2)(v1);
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
      v2 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_18194DA9C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v8 = *a1;
  v33 = 0;
  sub_18194DE7C(a1);
  if (a4 >= 1)
  {
    v9 = a4;
    v10 = &a1[((*(v8[4] + 9) & 0x20) == 0) + 3];
    do
    {
      v13 = *a5;
      if (*a5)
      {
        v14 = *(v13 + 20);
        if ((~v14 & 0x202) == 0 && *(v13 + 22) == 1)
        {
          v11 = *(v13 + 8);
          if (v11)
          {
            goto LABEL_4;
          }
        }

        else if ((v14 & 1) == 0)
        {
          v11 = sub_18193CB70(v13, 1);
          if (v11)
          {
LABEL_4:
            v12 = sqlite3_mprintf("%s", v11);
            *v10 = v12;
            if (!v12)
            {
              return 7;
            }
          }
        }
      }

      ++a5;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v15 = *(v8[3] + 140);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = v15;
  LODWORD(v33) = 0;
  WORD2(v33) = 0;
  sub_181906814(&v29, "PRAGMA ", 7u);
  if (a1[4])
  {
    sqlite3_str_appendf(&v29, "%Q.", a1[4]);
  }

  v18 = v8[4];
  v19 = *v18;
  if (*v18)
  {
    v20 = strlen(*v18);
    v16 = v20 & 0x3FFFFFFF;
    if ((v20 & 0x3FFFFFFF) != 0)
    {
      v21 = v33;
      if (v33 + v16 >= v31)
      {
        sub_181906814(&v29, v19, v16);
        v22 = a1[3];
        if (!v22)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      LODWORD(v33) = v33 + v16;
      memcpy(&v30[v21], v19, v20 & 0x3FFFFFFF);
    }
  }

  v22 = a1[3];
  if (v22)
  {
LABEL_19:
    sqlite3_str_appendf(&v29, "=%Q", v16, v22);
  }

LABEL_20:
  if (v30 && (v30[v33] = 0, v32) && (v33 & 0x40000000000) == 0)
  {
    v23 = sub_18192A12C(&v29);
    if (!v23)
    {
      return 7;
    }
  }

  else
  {
    v23 = v30;
    if (!v30)
    {
      return 7;
    }
  }

  v24 = sub_1818954B4(v8[3], v23, 0xFFFFFFFFLL, 128, 0, a1 + 1, 0, v17);
  v25 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
    --qword_1ED456A90;
    off_1ED452EB0(v23);
    v23 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_32;
    }

    v25 = &xmmword_1ED452F28;
  }

  (*v25)(v23);
LABEL_32:
  if (v24)
  {
    v26 = sqlite3_errmsg(v8[3]);
    v8[2] = sqlite3_mprintf("%s", v26);
  }

  else
  {
    v27 = a1[1];
    ++a1[2];
    if (sqlite3_step(v27) == 100)
    {
      return 0;
    }

    else
    {
      v24 = sqlite3_finalize(a1[1]);
      a1[1] = 0;
      sub_18194DE7C(a1);
    }
  }

  return v24;
}

uint64_t sub_18194DD90(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  *(a1 + 16) = *(v3 + 8) + 1;
  if (sqlite3_step(v2) == 100)
  {
    return 0;
  }

  v5 = sqlite3_finalize(*(a1 + 8));
  *(a1 + 8) = 0;
  sub_18194DE7C(a1);
  return v5;
}

uint64_t sub_18194DDFC(sqlite3_stmt **a1, sqlite3_context *a2, int iCol)
{
  v4 = *(*a1 + 41);
  v5 = __OFSUB__(iCol, v4);
  v6 = iCol - v4;
  if (v6 < 0 != v5)
  {
    v7 = sqlite3_column_value(a1[1], iCol);
    sqlite3_result_value(a2, v7);
  }

  else if (a2)
  {
    sub_18190B23C(a2, a1[v6 + 3], -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

uint64_t sub_18194DE7C(uint64_t a1)
{
  result = sqlite3_finalize(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      result = (*v4)(v3);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    result = off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  *(a1 + 24) = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_14:
      result = (*v6)(v5);
      goto LABEL_15;
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
      goto LABEL_14;
    }
  }

LABEL_15:
  *(a1 + 32) = 0;
  return result;
}

void *sub_18194DFCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(a2 + 64);
  v12 = 8 * v11;
  if (v11 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", a3, a4, a5, a6, a7, a8, *a2);
  }

  result = sub_181929E38(v10, *(a2 + 72), v12 + 16, 528201247);
  if (result)
  {
    v14 = *(a2 + 64);
    *(a2 + 64) = v14 + 1;
    result[v14] = a3;
    result[v14 + 1] = 0;
    *(a2 + 72) = result;
  }

  else if (a3)
  {

    return sub_181929C84(v10, a3);
  }

  return result;
}

void *sub_18194E094(void *a1, void *a2)
{
  v4 = a2[2];
  while (v4)
  {
    v6 = v4;
    v4 = *(v4 + 40);
    if (!a1[103] && *(a2 + 63) != 1)
    {
      sub_18188FAF0(*(v6 + 48) + 32, *v6, 0);
    }

    v7 = *(v6 + 72);
    if (v7)
    {
      sub_1819439E0(a1, v7);
    }

    v8 = *(v6 + 80);
    if (v8)
    {
      sub_18194E5B8(a1, v8);
    }

    v9 = *(v6 + 32);
    if (v9)
    {
      sub_181929C84(a1, v9);
    }

    if ((*(v6 + 99) & 0x10) != 0)
    {
      v10 = *(v6 + 64);
      if (v10)
      {
        sub_181929C84(a1, v10);
      }
    }

    sub_181929C84(a1, v6);
  }

  if (*(a2 + 63) == 1)
  {
    if (!a1[103])
    {
      v26 = a2[10];
      a2[10] = 0;
      if (v26)
      {
        do
        {
          v28 = *v26;
          if (*v26)
          {
            v27 = (v28 + 608);
            v28 = *(v28 + 608);
          }

          else
          {
            v27 = (a2 + 10);
          }

          v29 = v26[5];
          *v27 = v26;
          v26[5] = v28;
          v26 = v29;
        }

        while (v29);
      }
    }

    v15 = a2[9];
    if (v15)
    {
      v16 = *(a2 + 16);
      if (v16 < 1)
      {
        goto LABEL_36;
      }

      v17 = *v15;
      if (v17)
      {
        sub_181929C84(a1, v17);
        v16 = *(a2 + 16);
      }

      if (v16 >= 3)
      {
        for (i = 2; i < v16; ++i)
        {
          v31 = *(a2[9] + 8 * i);
          if (v31)
          {
            sub_181929C84(a1, v31);
            v16 = *(a2 + 16);
          }
        }
      }

      v15 = a2[9];
      if (v15)
      {
LABEL_36:
        sub_181929C84(a1, v15);
      }
    }
  }

  else
  {
    if (!*(a2 + 63))
    {
      v5 = a2[9];
      if (!v5)
      {
        goto LABEL_39;
      }

      while (1)
      {
        if (!a1[103])
        {
          v12 = *(v5 + 24);
          v13 = *(v5 + 32);
          if (v13)
          {
            *(v13 + 24) = v12;
            if (!v12)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v12)
            {
              v14 = *(v5 + 24);
            }

            else
            {
              v14 = v5;
            }

            sub_18188FAF0(a2[12] + 80, *(v14 + 16), v12);
            v12 = *(v5 + 24);
            if (!v12)
            {
              goto LABEL_19;
            }
          }

          *(v12 + 32) = *(v5 + 32);
        }

LABEL_19:
        sub_1818F1620(a1, *(v5 + 48));
        sub_1818F1620(a1, *(v5 + 56));
        v11 = *(v5 + 8);
        sub_181929C84(a1, v5);
        v5 = v11;
        if (!v11)
        {
          goto LABEL_39;
        }
      }
    }

    v18 = a2[8];
    if (v18)
    {
      sub_1818BB408(a1, v18, 1);
    }
  }

LABEL_39:
  v19 = a2[1];
  if (v19)
  {
    v20 = *(a2 + 27);
    if (v20 >= 1)
    {
      v21 = 0;
      do
      {
        if (*v19)
        {
          sub_181929C84(a1, *v19);
          LOWORD(v20) = *(a2 + 27);
        }

        ++v21;
        v19 += 2;
      }

      while (v21 < v20);
      v19 = a2[1];
    }

    sub_181939EC8(a1, v19);
    if (!*(a2 + 63))
    {
      v22 = a2[10];
      if (v22)
      {
        sub_18194E5B8(a1, v22);
      }
    }

    if (!a1[103])
    {
      a2[1] = 0;
      *(a2 + 27) = 0;
      if (!*(a2 + 63))
      {
        a2[10] = 0;
      }
    }
  }

  if (*a2)
  {
    sub_181929C84(a1, *a2);
  }

  v23 = a2[3];
  if (v23)
  {
    sub_181929C84(a1, v23);
  }

  v24 = a2[4];
  if (v24)
  {
    sub_18194E5B8(a1, v24);
  }

  return sub_181929C84(a1, a2);
}

void *sub_18194E388(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = *(a2 + 54);
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        if (*v2)
        {
          sub_181929C84(v4, *v2);
          LOWORD(v5) = *(a2 + 54);
        }

        ++v6;
        v2 += 2;
      }

      while (v6 < v5);
      v2 = *(a2 + 8);
    }

    result = sub_181939EC8(v4, v2);
    if (!*(a2 + 63))
    {
      v7 = *(a2 + 80);
      if (v7)
      {
        result = sub_18194E5B8(v4, v7);
      }
    }

    if (!v4[103])
    {
      *(a2 + 8) = 0;
      *(a2 + 54) = 0;
      if (!*(a2 + 63))
      {
        *(a2 + 80) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_18194E43C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *a1 + 1;
  *a1 = v2;
  v3 = *v1;
  if (v3 >= 0xC0)
  {
    v4 = byte_181A20D3A[(v3 - 192)];
    if ((*v2 & 0xC0) == 0x80)
    {
      v5 = v1 + 2;
      do
      {
        *a1 = v5;
        LODWORD(v3) = *(v5 - 1) & 0x3F | (v4 << 6);
        v6 = *v5++;
        v4 = v3;
      }

      while ((v6 & 0xC0) == 0x80);
    }

    else
    {
      LODWORD(v3) = byte_181A20D3A[(v3 - 192)];
    }

    if (v3 < 0x80 || v3 >> 1 == 0x7FFF || v3 >> 11 == 27)
    {
      return 65533;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t sub_18194E4C4(_BYTE *a1, int a2)
{
  if (a2 < 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = &a1[a2];
  }

  v3 = *a1;
  v4 = 0;
  if (*a1)
  {
    v5 = v2 > a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    do
    {
      if (v3 < 0xC0)
      {
        v7 = *++a1;
        v3 = v7;
      }

      else
      {
        do
        {
          v9 = *++a1;
          v3 = v9;
        }

        while ((v9 & 0xC0) == 0x80);
      }

      v4 = (v4 + 1);
      if (v3)
      {
        v8 = a1 >= v2;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
  }

  return v4;
}

void *sub_18194E51C(void *a1, void *a2)
{
  do
  {
    v5 = a2[4];
    if (*a2)
    {
      sub_18194E5B8(a1, *a2);
    }

    v6 = a2[1];
    if (v6)
    {
      sub_1819439E0(a1, v6);
    }

    v7 = a2[2];
    if (v7)
    {
      sub_18194E5B8(a1, v7);
    }

    v8 = a2[3];
    if (v8)
    {
      sub_1819439E0(a1, v8);
    }

    v9 = a2[6];
    if (v9)
    {
      sub_181929C84(a1, v9);
    }

    result = sub_181929C84(a1, a2);
    a2 = v5;
  }

  while (v5);
  return result;
}

void *sub_18194E5B8(void *a1, void *a2)
{
  v4 = *a2 + 1;
  v5 = 1;
  do
  {
    if (a2[v5])
    {
      sub_1819439E0(a1);
    }

    v6 = a2[v5 + 1];
    if (v6)
    {
      sub_181939EC8(a1, v6);
    }

    --v4;
    v5 += 3;
  }

  while (v4 > 1);

  return sub_181939EC8(a1, a2);
}

uint64_t sub_18194E64C(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if ((a2[5] & 2) == 0)
  {
    if (a3 && (*(a3 + 5) & 2) != 0)
    {
      a2 = a3;
    }

    else
    {
      v9 = a1;
      result = sub_1818B4720(a1, a2, a3, a4, a5, a6, a7, a8);
      if (result)
      {
        return result;
      }

      a1 = v9;
      a2 = a3;
    }
  }

  return sub_1818B4720(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_18194E6B8(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, uint64_t a6, char *k, uint64_t a8)
{
  v8 = __s;
  v11 = *a1;
  if (!a3)
  {
    if (!__s)
    {
      a3 = *(v11 + 16);
      if (!a3)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v12 = *__s;
    if (*__s)
    {
      v13 = 0;
      v14 = __s + 1;
      do
      {
        v13 = -1640531535 * (v13 + (v12 & 0xDF));
        v15 = *v14++;
        v12 = v15;
      }

      while (v15);
    }

    else
    {
      v13 = 0;
    }

    v16 = (v11 + 640);
    v17 = *(v11 + 656);
    if (v17)
    {
      v16 = (v17 + 16 * (v13 % *v16));
      v18 = *v16;
      if (*v16)
      {
LABEL_12:
        v19 = (v16 + 2);
        do
        {
          v19 = *v19;
          if (v13 == *(v19 + 8))
          {
            v20 = v19[3];
            for (i = __s; ; ++i)
            {
              if (*v20 == *i)
              {
                if (!*v20)
                {
                  goto LABEL_23;
                }
              }

              else if (byte_181A20298[*v20] != byte_181A20298[*i])
              {
                break;
              }

              ++v20;
            }
          }

          --v18;
        }

        while (v18);
        v22 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v18 = *(v11 + 644);
      if (v18)
      {
        goto LABEL_12;
      }
    }

    v19 = &qword_1EA831A30;
LABEL_23:
    v22 = v19[2];
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_24:
    v23 = v22 + 40 * a2;
    a3 = v23 - 40;
    if (v23 == 40)
    {
      goto LABEL_26;
    }
  }

LABEL_25:
  if (*(a3 + 24))
  {
    return a3;
  }

LABEL_26:
  if (*(v11 + 392))
  {
    if (!__s)
    {
      goto LABEL_48;
    }

    v24 = strlen(__s);
    v25 = sub_181929E8C(v11, v24 + 1, 354097263);
    if (!v25)
    {
      goto LABEL_44;
    }

    v26 = v24 + 1;
    v27 = v25;
    memcpy(v25, v8, v26);
    (*(v11 + 392))(*(v11 + 408), v11, a2, v27);
    sub_181929C84(v11, v27);
  }

  if (*(v11 + 400))
  {
    v28 = sub_181929E8C(v11, 0x40uLL, 0x10F2040695A4BFELL);
    if (v28)
    {
      v29 = v28;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0u;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 20) = 1;
      *(v28 + 24) = v11;
      sub_1818900D0(v28, v8, -1, 1u, 0);
      v30 = *(v29 + 20);
      if ((~v30 & 0x202) != 0 || *(v29 + 22) != 2)
      {
        if (v30)
        {
LABEL_39:
          if ((*(v29 + 20) & 0x9000) != 0 || *(v29 + 32))
          {
            sub_18193CA00(v29);
          }

          sub_181929C84(*(v29 + 24), v29);
          goto LABEL_43;
        }

        v31 = sub_18193CB70(v29, 2);
      }

      else
      {
        v31 = *(v29 + 8);
      }

      if (v31)
      {
        (*(v11 + 400))(*(v11 + 408), v11, *(v11 + 100));
      }

      goto LABEL_39;
    }
  }

LABEL_43:
  if (!v8)
  {
LABEL_48:
    a3 = *(v11 + 16);
    if (a3)
    {
      goto LABEL_66;
    }

LABEL_91:
    sub_181910730(a1, "no such collation sequence: %s", a3, __s, a5, a6, k, a8, v8);
    a3 = 0;
    *(a1 + 24) = 257;
    return a3;
  }

LABEL_44:
  v32 = *v8;
  if (*v8)
  {
    v33 = 0;
    v34 = (v8 + 1);
    do
    {
      v33 = -1640531535 * (v33 + (v32 & 0xDF));
      v35 = *v34++;
      v32 = v35;
    }

    while (v35);
  }

  else
  {
    v33 = 0;
  }

  v36 = (v11 + 640);
  v37 = *(v11 + 656);
  if (v37)
  {
    v36 = (v37 + 16 * (v33 % *v36));
    v38 = *v36;
    if (*v36)
    {
LABEL_53:
      v39 = (v36 + 2);
      do
      {
        v39 = *v39;
        if (v33 == *(v39 + 8))
        {
          v40 = v39[3];
          for (j = v8; ; ++j)
          {
            if (*v40 == *j)
            {
              if (!*v40)
              {
                goto LABEL_64;
              }
            }

            else if (byte_181A20298[*v40] != byte_181A20298[*j])
            {
              break;
            }

            ++v40;
          }
        }

        --v38;
      }

      while (v38);
      v42 = qword_1EA831A40;
      if (!qword_1EA831A40)
      {
        goto LABEL_91;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v38 = *(v11 + 644);
    if (v38)
    {
      goto LABEL_53;
    }
  }

  v39 = &qword_1EA831A30;
LABEL_64:
  v42 = v39[2];
  if (!v42)
  {
    goto LABEL_91;
  }

LABEL_65:
  v43 = v42 + 40 * a2;
  a3 = v43 - 40;
  if (v43 == 40)
  {
    goto LABEL_91;
  }

LABEL_66:
  v44 = *(a3 + 24);
  if (!v44)
  {
    v45 = *a3;
    while (1)
    {
      if (v45)
      {
        v46 = *v45;
        if (*v45)
        {
          v47 = 0;
          v48 = (*a3 + 1);
          do
          {
            v47 = -1640531535 * (v47 + (v46 & 0xDF));
            v49 = *v48++;
            v46 = v49;
          }

          while (v49);
        }

        else
        {
          v47 = 0;
        }

        v51 = *(v11 + 656);
        v52 = v11 + 640;
        a6 = v11 + 644;
        if (v51)
        {
          v52 = v51 + 16 * (v47 % *(v11 + 640));
          a6 = v52;
        }

        a5 = *a6;
        if (a5)
        {
          v53 = (v52 + 8);
          do
          {
            v53 = *v53;
            a6 = *(v53 + 8);
            if (v47 == a6)
            {
              a6 = v53[3];
              for (k = *a3; ; ++k)
              {
                a8 = *a6;
                if (a8 == *k)
                {
                  if (!*a6)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  a8 = byte_181A20298[*a6];
                  if (a8 != byte_181A20298[*k])
                  {
                    break;
                  }
                }

                ++a6;
              }
            }

            a5 = (a5 - 1);
          }

          while (a5);
        }

        v53 = &qword_1EA831A30;
LABEL_88:
        v50 = v53[2] + 40 * byte_181A20F10[v44] - 40;
      }

      else
      {
        v50 = *(v11 + 16);
      }

      __s = *(v50 + 24);
      if (__s)
      {
        break;
      }

      if (++v44 == 3)
      {
        goto LABEL_91;
      }
    }

    v55 = *(v50 + 16);
    *a3 = *v50;
    *(a3 + 16) = v55;
    *(a3 + 32) = 0;
  }

  return a3;
}

uint64_t sub_18194EBC8(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  v3 = byte_181A20F13[((3 * byte_181A20298[a1[a2 - 1]]) ^ (4 * byte_181A20298[*a1]) ^ a2) % 127];
  if (byte_181A20F13[((3 * byte_181A20298[a1[a2 - 1]]) ^ (4 * byte_181A20298[*a1]) ^ a2) % 127])
  {
    do
    {
      if (byte_181A20990[v3] == a2)
      {
        v4 = word_181A20868[v3];
        if ((*a1 & 0xDF) == aReindexedescap[v4] && (a1[1] & 0xDF) == aReindexedescap[v4 + 1])
        {
          if (a2 < 3)
          {
LABEL_11:
            *a3 = byte_181A20F92[v3];
            return a2;
          }

          v5 = &aReindexedescap[v4 + 2];
          v6 = a2 - 2;
          v7 = a1 + 2;
          while (1)
          {
            v8 = *v7++;
            v9 = v8 & 0xFFFFFFDF;
            v10 = *v5++;
            if (v9 != v10)
            {
              break;
            }

            if (!--v6)
            {
              goto LABEL_11;
            }
          }
        }
      }

      v3 = byte_181A21026[v3];
    }

    while (v3);
  }

  return a2;
}

void sub_18194ECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 == 12;
  if (a2 == 12)
  {
    v9 = "ROLLBACK";
  }

  else
  {
    v9 = "COMMIT";
  }

  v10 = *a1;
  v11 = *(*a1 + 528);
  if (v11 && !*(v10 + 197) && !*(a1 + 302))
  {
    v18 = a1;
    v19 = v11(*(v10 + 536), 22, v9, 0, 0, *(a1 + 368));
    if (v19 == 1)
    {
      v20 = 23;
      v21 = "not authorized";
    }

    else
    {
      if ((v19 & 0xFFFFFFFD) == 0)
      {
        v22 = v19;
        a1 = v18;
        if (v22)
        {
          return;
        }

        goto LABEL_7;
      }

      v20 = 1;
      v21 = "authorizer malfunction";
    }

    sub_181910730(v18, v21, v9, a4, a5, a6, a7, a8, v23);
    *(v18 + 24) = v20;
    return;
  }

LABEL_7:
  v12 = sub_1818E7DFC(a1, a2, v9, a4, a5, a6, a7, a8);
  if (v12)
  {
    v16 = *(v12 + 144);
    if (*(v12 + 148) <= v16)
    {

      sub_18194C8AC(v12, 1, 1uLL, v8, 0, v13, v14, v15);
    }

    else
    {
      *(v12 + 144) = v16 + 1;
      v17 = *(v12 + 136) + 40 * v16;
      *v17 = 0x100000001;
      *(v17 + 8) = v8;
      *(v17 + 12) = 0;
      *(v17 + 28) = 0;
      *(v17 + 20) = 0;
      *(v17 + 36) = 0;
    }
  }
}

uint64_t *sub_18194EE20(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = *a3;
  if (!*a3)
  {
    return result;
  }

  v5 = result;
  v6 = *(a3 + 8);
  result = sub_181929E8C(*result, v6 + 1, 1565185748);
  if (!result)
  {
    return result;
  }

  v7 = result;
  memcpy(result, v3, v6);
  *(v7 + v6) = 0;
  v15 = *v7;
  if (byte_181A204C8[*v7] < 0)
  {
    v16 = 0;
    if (v15 == 91)
    {
      v15 = 93;
    }

    for (i = 1; ; ++i)
    {
      v18 = i;
      v19 = *(v7 + i);
      if (v19 == v15)
      {
        ++i;
        LOBYTE(v19) = v15;
        if (*(v7 + v18 + 1) != v15)
        {
          break;
        }
      }

      *(v7 + v16++) = v19;
    }

    *(v7 + v16) = 0;
  }

  result = sub_1818E7DFC(v5, v8, v9, v10, v11, v12, v13, v14);
  if (!result)
  {
    goto LABEL_36;
  }

  v23 = *v5;
  v24 = *(*v5 + 528);
  if (!v24 || *(v23 + 197) || *(v5 + 302))
  {
    goto LABEL_16;
  }

  v30 = result;
  v31 = v24(*(v23 + 536), 32, off_1E6A27998[a2], v7, 0, *(v5 + 368));
  if (v31 == 1)
  {
    v35 = 23;
    v36 = "not authorized";
LABEL_35:
    sub_181910730(v5, v36, v32, v33, v34, v20, v21, v22, v39);
    *(v5 + 24) = v35;
    goto LABEL_36;
  }

  if ((v31 & 0xFFFFFFFD) != 0)
  {
    v35 = 1;
    v36 = "authorizer malfunction";
    goto LABEL_35;
  }

  v38 = v31;
  result = v30;
  if (!v38)
  {
LABEL_16:
    v25 = *(result + 36);
    if (*(result + 37) <= v25)
    {
      v27 = result;
      v25 = sub_18194C8AC(result, 0, a2, 0, 0, v20, v21, v22);
      result = v27;
    }

    else
    {
      *(result + 36) = v25 + 1;
      v26 = result[17] + 40 * v25;
      *v26 = 0;
      *(v26 + 4) = a2;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
    }

    if (*(*result + 103))
    {
      v28 = *result;

      return sub_181939EC8(v28, v7);
    }

    else
    {
      if (v25 < 0)
      {
        v25 = *(result + 36) - 1;
      }

      v29 = result[17] + 40 * v25;
      if (*(v29 + 1))
      {

        return sub_18194CB90(result, v29, v7, 0xFFFFFFFA);
      }

      else
      {
        *(v29 + 16) = v7;
        *(v29 + 1) = -6;
      }
    }

    return result;
  }

LABEL_36:
  v37 = *v5;

  return sub_181929C84(v37, v7);
}

uint64_t sub_18194F098(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
  v15 = v8;
  if (v8)
  {
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 0u;
    *v8 = a2;
    *(v8 + 52) = -1;
    if (a4)
    {
      *(v8 + 24) = a4;
      *(v8 + 4) |= *(a4 + 4) & 0x400208;
      v16 = *(a4 + 40) + 1;
      *(v8 + 40) = v16;
      if (!a3)
      {
LABEL_12:
        if (*(*a1 + 148) < v16)
        {
          sub_181910730(a1, "Expression tree is too large (maximum depth %d)", v9, v10, v11, v12, v13, v14, *(*a1 + 148));
        }

        return v15;
      }
    }

    else
    {
      v16 = 1;
      *(v8 + 40) = 1;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    *(v8 + 16) = a3;
    *(v8 + 4) |= *(a3 + 4) & 0x400208;
    v17 = *(a3 + 40);
    if (v17 >= v16)
    {
      v16 = v17 + 1;
      *(v8 + 40) = v17 + 1;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    sub_1819439E0(*a1, a3);
  }

  if (a4)
  {
    sub_1819439E0(*a1, a4);
  }

  return v15;
}

uint64_t sub_18194F1D8(uint64_t a1, char a2, const void *a3, uint64_t a4)
{
  v8 = a4;
  v9 = sub_181929E8C(*a1, a4 + 81, 0x1032040B79D87BDLL);
  v10 = v9;
  if (v9)
  {
    *v9 = a2;
    *(v9 + 1) = 0;
    *(v9 + 4) = 0x800000;
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 44) = 0;
    *(v9 + 48) = 0;
    v11 = v9 + 80;
    *(v9 + 8) = v9 + 80;
    *(v9 + 16) = 0;
    memcpy((v9 + 80), a3, v8);
    *(v11 + v8) = 0;
    *(v10 + 56) = a3 - *(a1 + 336);
    v12 = *(v10 + 80);
    if (byte_181A204C8[*(v10 + 80)] < 0)
    {
      v13 = 0;
      if (v12 == 34)
      {
        v14 = 75497600;
      }

      else
      {
        v14 = 75497472;
      }

      *(v10 + 4) = v14;
      if (v12 == 91)
      {
        v12 = 93;
      }

      for (i = 1; ; ++i)
      {
        v16 = i;
        v17 = *(v11 + i);
        if (v17 == v12)
        {
          ++i;
          LOBYTE(v17) = v12;
          if (*(v11 + v16 + 1) != v12)
          {
            break;
          }
        }

        *(v11 + v13++) = v17;
      }

      *(v11 + v13) = 0;
    }

    *(v10 + 40) = 1;
    v18 = *(a1 + 302);
    if (v18 > 3 || v18 == 2)
    {
      if (*a1)
      {
        v20 = sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4);
        if (!v20)
        {
          return v10;
        }
      }

      else
      {
        v20 = sub_181902484(32, 0x10F00409A20EBA4);
        if (!v20)
        {
          return v10;
        }
      }

      *v20 = 0u;
      *(v20 + 16) = 0u;
      *v20 = v10;
      *(v20 + 8) = a3;
      *(v20 + 16) = a4;
      *(v20 + 24) = *(a1 + 408);
      *(a1 + 408) = v20;
    }
  }

  return v10;
}

uint64_t sub_18194F370(uint64_t result)
{
  v1 = *(result + 4);
  if ((v1 & 0x4000800) != 0)
  {
    return result;
  }

  v2 = *(result + 8);
  v3 = "true";
  for (i = v2; *i == *v3; ++i)
  {
    if (!*i)
    {
      v5 = 0x10000000;
      goto LABEL_15;
    }

LABEL_5:
    ++v3;
  }

  if (byte_181A20298[*i] == byte_181A20298[*v3])
  {
    goto LABEL_5;
  }

  for (j = "false"; *v2 != *j; ++j)
  {
    if (byte_181A20298[*v2] != byte_181A20298[*j])
    {
      return result;
    }

LABEL_11:
    ++v2;
  }

  if (*v2)
  {
    goto LABEL_11;
  }

  v5 = 0x20000000;
LABEL_15:
  *result = -85;
  *(result + 4) = v5 | v1;
  return result;
}

uint64_t sub_18194F428(uint64_t result, char a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v3 = *(v2 + 54);
    if (v3 >= 1)
    {
      v4 = *(v2 + 8) + 16 * (v3 - 1);
      *(v4 + 8) = *(v4 + 8) & 0xF0 | a2 & 0xF;
      *(v2 + 48) |= 0x800u;
      if ((*(v4 + 14) & 8) != 0)
      {
        for (i = *(v2 + 16); i; i = *(i + 40))
        {
          if (*(v2 + 54) - 1 == **(i + 8))
          {
            *(i + 99) |= 8u;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_18194F4A4(uint64_t *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = result[43];
  if (v4 && *(result + 302) != 1 && (*(*(*(*(*result + 32) + 32 * *(*result + 196) + 8) + 8) + 40) & 1) == 0)
  {
    v6 = *(v4 + 32);
    if (v6)
    {
      v7 = *v6;
      if (v6[1] > *v6)
      {
        *v6 = v7 + 1;
        v8 = &v6[6 * v7];
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        *(v8 + 1) = a2;
        goto LABEL_14;
      }

      v10 = result;
      v11 = a3;
      v12 = a4;
      v13 = sub_18197FE14(*result, v6, a2);
    }

    else
    {
      v10 = result;
      v11 = a3;
      v12 = a4;
      v13 = sub_18197FD9C(*result, a2);
    }

    a4 = v12;
    a3 = v11;
    v6 = v13;
    result = v10;
LABEL_14:
    *(v4 + 32) = v6;
    if (*(result + 68))
    {

      return sub_1819507A4(result, v6, (result + 33), 1);
    }

    else
    {
      v19 = 0;
      v14 = a4 - a3 + 1;
      do
      {
        v15 = *++a3;
        --v14;
      }

      while ((byte_181A204C8[v15] & 1) != 0);
      v16 = (a4 - 1);
      do
      {
        v17 = *v16--;
        --v14;
      }

      while ((byte_181A204C8[v17] & 1) != 0);
      v18 = a3;
      LODWORD(v19) = v14;
      return sub_1819507A4(result, v6, &v18, 1);
    }
  }

  if (a2)
  {
    v9 = *result;

    return sub_1819439E0(v9, a2);
  }

  return result;
}

uint64_t *sub_18194F630(uint64_t *result, uint64_t a2)
{
  v2 = result[43];
  if (!v2)
  {
    return result;
  }

  if (*(result + 302) > 1u)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = *a2;
  if (!*a2)
  {
    return result;
  }

  v4 = *(v2 + 54);
  v5 = *result;
  v6 = *(a2 + 8);
  v7 = result;
  result = sub_181929E8C(*result, v6 + 1, 1565185748);
  if (!result)
  {
    return result;
  }

  v8 = result;
  memcpy(result, v3, v6);
  v8[v6] = 0;
  v9 = *v8;
  if (byte_181A204C8[*v8] < 0)
  {
    v10 = 0;
    if (v9 == 91)
    {
      v9 = 93;
    }

    for (i = 1; ; ++i)
    {
      v12 = i;
      v13 = v8[i];
      if (v13 == v9)
      {
        ++i;
        LOBYTE(v13) = v9;
        if (v8[v12 + 1] != v9)
        {
          break;
        }
      }

      v8[v10++] = v13;
    }

    v8[v10] = 0;
  }

  v14 = *(*v7 + 100);
  v15 = *(*v7 + 197);
  v16 = sub_181949138(*v7, *(*v7 + 100), v8, v15);
  v21 = v16;
  if (!v15)
  {
    if (v16 && v16[3])
    {
LABEL_19:
      v22 = v4 - 1;
      sub_1819619C4(v5, *(v2 + 8) + 16 * (v4 - 1), v8);
      for (j = *(v2 + 16); j; j = *(j + 40))
      {
        if (v22 == **(j + 8))
        {
          v25 = *(v2 + 8) + 16 * v22;
          v26 = *(v25 + 14);
          if ((v26 & 0x200) != 0)
          {
            v27 = *v25 - 1;
              ;
            }

            if ((v26 & 4) != 0)
            {
                ;
              }
            }

            v24 = v27 + 1;
          }

          else
          {
            v24 = 0;
          }

          **(j + 64) = v24;
        }
      }

      goto LABEL_20;
    }

    v21 = sub_18194E6B8(v7, v14, v16, v8, v17, v18, v19, v20);
  }

  if (v21)
  {
    goto LABEL_19;
  }

LABEL_20:

  return sub_181929C84(v5, v8);
}

void sub_18194F814(void **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[43];
  if (!v10)
  {
LABEL_7:
    if (a2)
    {
      v13 = *a1;

      sub_1819439E0(v13, a2);
    }

    return;
  }

  if (*(a1 + 302) == 1)
  {
    v11 = "virtual tables cannot use computed columns";
LABEL_6:
    sub_181910730(a1, v11, a3, a4, a5, a6, a7, a8, v44);
    goto LABEL_7;
  }

  v12 = v10[1] + 16 * *(v10 + 27);
  if (*(v12 - 4))
  {
LABEL_5:
    v44 = *(v12 - 16);
    v11 = "error in generated column %s";
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  v14 = *(a3 + 8);
  if (v14 != 6)
  {
    if (v14 != 7)
    {
      goto LABEL_5;
    }

    v15 = *a3;
    if (!*a3)
    {
      goto LABEL_5;
    }

    if ((*v15 & 0xDF) != 0x56)
    {
      v18 = 118;
      goto LABEL_46;
    }

    v16 = v15 + 1;
    if ((v15[1] & 0xDF) == 0x49)
    {
      v16 = v15 + 2;
      if ((v15[2] & 0xDF) == 0x52)
      {
        v16 = v15 + 3;
        if ((v15[3] & 0xDF) == 0x54)
        {
          v16 = v15 + 4;
          if ((v15[4] & 0xDF) == 0x55)
          {
            v16 = v15 + 5;
            if ((v15[5] & 0xDF) == 0x41)
            {
              v17 = v15[6];
              v15 += 6;
              if ((v17 & 0xFFFFFFDF) == 0x4C)
              {
LABEL_47:
                --*(v10 + 28);
                v23 = 32;
                goto LABEL_48;
              }

              v18 = 108;
LABEL_46:
              if (v18 != byte_181A20298[*v15])
              {
                goto LABEL_5;
              }

              goto LABEL_47;
            }

            v18 = 97;
          }

          else
          {
            v18 = 117;
          }
        }

        else
        {
          v18 = 116;
        }
      }

      else
      {
        v18 = 114;
      }
    }

    else
    {
      v18 = 105;
    }

    v15 = v16;
    goto LABEL_46;
  }

  v19 = *a3;
  if (!*a3)
  {
    goto LABEL_5;
  }

  if ((*v19 & 0xDF) != 0x53)
  {
    v22 = 115;
    goto LABEL_42;
  }

  v20 = v19 + 1;
  if ((v19[1] & 0xDF) != 0x54)
  {
    v22 = 116;
LABEL_41:
    v19 = v20;
LABEL_42:
    if (v22 != byte_181A20298[*v19])
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v20 = v19 + 2;
  if ((v19[2] & 0xDF) != 0x4F)
  {
    v22 = 111;
    goto LABEL_41;
  }

  v20 = v19 + 3;
  if ((v19[3] & 0xDF) != 0x52)
  {
    v22 = 114;
    goto LABEL_41;
  }

  v20 = v19 + 4;
  if ((v19[4] & 0xDF) != 0x45)
  {
    v22 = 101;
    goto LABEL_41;
  }

  v21 = v19[5];
  v19 += 5;
  if ((v21 & 0xFFFFFFDF) != 0x44)
  {
    v22 = 100;
    goto LABEL_42;
  }

LABEL_43:
  v23 = 64;
LABEL_48:
  v24 = *(v12 - 2);
  *(v12 - 2) = v24 | v23;
  *(v10 + 12) |= v23;
  if ((v24 & 1) != 0 && ((v24 | v23) & 0x60) != 0)
  {
    sub_181910730(a1, "generated columns cannot be part of the PRIMARY KEY", a3, a4, a5, a6, a7, a8, v44);
  }

  if (!a2)
  {
    v33 = 0;
    goto LABEL_63;
  }

  v25 = *a2;
  if (v25 != 60)
  {
    v33 = a2;
    goto LABEL_60;
  }

  v26 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
  v33 = v26;
  if (v26)
  {
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *v26 = 0u;
    *(v26 + 16) = 0u;
    *(v26 + 64) = 0u;
    *v26 = -83;
    *(v26 + 52) = -1;
    v34 = 1;
    *(v26 + 40) = 1;
    *(v26 + 16) = a2;
    *(v26 + 4) |= *(a2 + 1) & 0x400208;
    v35 = *(a2 + 10);
    if (v35 >= 1)
    {
      v34 = v35 + 1;
      *(v26 + 40) = v35 + 1;
    }

    if (*(*a1 + 37) >= v34)
    {
LABEL_61:
      v33[1] = *(v12 - 7);
      goto LABEL_63;
    }

    sub_181910730(a1, "Expression tree is too large (maximum depth %d)", v27, v28, v29, v30, v31, v32, *(*a1 + 37));
    v25 = *v33;
LABEL_60:
    if (v25 == 72)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  sub_1819439E0(*a1, a2);
LABEL_63:
  v36 = v10[10];
  v37 = *(v12 - 4);
  if (*(v12 - 4))
  {
    v38 = v36 == 0;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    if (!v36)
    {
      *(v12 - 4) = 1;
      v41 = sub_18197FD9C(*a1, v33);
LABEL_78:
      v10[10] = v41;
      return;
    }

    v39 = *v36;
LABEL_71:
    *(v12 - 4) = v39 + 1;
    if (v36[1] > v39)
    {
      *v36 = v39 + 1;
      v40 = &v36[6 * v39];
      *(v40 + 2) = 0;
      *(v40 + 3) = 0;
      *(v40 + 1) = v33;
      v10[10] = v36;
      return;
    }

    v41 = sub_18197FE14(*a1, v36, v33);
    goto LABEL_78;
  }

  v39 = *v36;
  if (*v36 < v37)
  {
    goto LABEL_71;
  }

  v42 = v36 + 2;
  v43 = *&v36[6 * (v37 - 1) + 2];
  if (v43)
  {
    sub_1819439E0(*a1, v43);
    v37 = *(v12 - 4);
  }

  *&v42[6 * v37 - 6] = v33;
}

void sub_18194FC6C(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v59 = 0uLL;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = *a1;
  if (*(a1 + 296) >= 1)
  {
    sub_181910730(a1, "parameters are not allowed in views", a3, a4, a5, a6, a7, a8, v51);
    goto LABEL_3;
  }

  sub_18189FE3C(a1, a3, a4, a7, 1, 0, a8, a8, v51);
  v30 = *(a1 + 344);
  if (v30 && !*(a1 + 52))
  {
    *(v30 + 48) |= 0x200u;
    if (*(a4 + 8))
    {
      if (*(*a1 + 197))
      {
        sub_181910730(a1, "corrupt database", v24, v25, v26, v27, v28, v29, v52);
        v31 = 0;
        v32 = *(v30 + 96);
        if (!v32)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if ((sub_18195D514(*a1, a3) & 0x80000000) != 0)
        {
          sub_181910730(a1, "unknown database %T", v36, v37, v38, v39, v40, v41, a3);
        }

        v31 = a4;
        v32 = *(v30 + 96);
        if (!v32)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v31 = a3;
      v32 = *(v30 + 96);
      if (!v32)
      {
LABEL_43:
        v34 = -32768;
LABEL_44:
        v42 = (*(*a1 + 32) + 32 * v34);
        v43 = *v42;
        *(&v56 + 1) = v42[3];
        *(&v57 + 1) = v43;
        *&v58 = "view";
        *(&v58 + 1) = v31;
        LOBYTE(v57) = v34 == 1;
        *&v53 = a1;
        *(&v53 + 1) = a1;
        *&v54 = sub_181962F5C;
        *(&v54 + 1) = sub_181962FE0;
        *&v55 = nullsub_8;
        DWORD2(v55) = 0;
        WORD6(v55) = 0;
        *&v56 = &v53;
        if (!sub_1818AEE70(&v53 + 1, v8))
        {
          *(v8 + 4) |= 0x200000u;
          if (*(a1 + 302) <= 1u)
          {
            v44 = sub_1818CB220(v11, v8, 1);
          }

          else
          {
            v44 = v8;
            v8 = 0;
          }

          *(v30 + 64) = v44;
          *(v30 + 32) = sub_1818C83A0(v11, a5, 1u);
          *(v30 + 63) = 2;
          if (!*(v11 + 103))
          {
            v59 = *(a1 + 280);
            if (*v59 == 59)
            {
              v48 = 0;
            }

            else
            {
              v48 = DWORD2(v59);
            }

            v49 = *a2 + (v59 + v48 - *a2);
            do
            {
              v50 = *--v49;
            }

            while ((byte_181A204C8[v50] & 1) != 0);
            *&v59 = v49;
            DWORD2(v59) = 1;
            sub_1818A0FFC(a1, 0, &v59, 0, 0, v45, v46, v47, v52);
          }
        }

        goto LABEL_3;
      }
    }

    v33 = (*(v11 + 32) + 24);
    v34 = -1;
    do
    {
      v35 = *v33;
      v33 += 4;
      ++v34;
    }

    while (v35 != v32);
    goto LABEL_44;
  }

LABEL_3:
  if (v8)
  {
    sub_1818BB408(v11, v8, 1);
  }

  if (*(a1 + 302) < 2u)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    v61 = 0u;
    v62 = 0u;
    v60[0] = a1;
    v60[1] = sub_181961E4C;
    v12 = *a5;
    if (*a5 < 1)
    {
      goto LABEL_27;
    }

    for (i = 2; ; i += 6)
    {
      v14 = *&a5[i];
      if (v14)
      {
        if (sub_181959BA0(v60, v14))
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 <= 1;
        }

        if (v15)
        {
LABEL_17:
          v16 = *a5;
          if (v16 >= 1)
          {
            for (j = 0; j != v16; ++j)
            {
              v18 = &a5[6 * j + 2];
              if ((*(v18 + 17) & 3) == 0)
              {
                v19 = *(a1 + 408);
                if (v19)
                {
                  v20 = *(v18 + 8);
                  while (*v19 != v20)
                  {
                    v19 = v19[3];
                    if (!v19)
                    {
                      goto LABEL_20;
                    }
                  }

                  *v19 = 0;
                }
              }

LABEL_20:
              ;
            }
          }

LABEL_27:
          if (a5)
          {
            sub_18194E5B8(v11, a5);
          }

          return;
        }
      }

      else if (v12 <= 1)
      {
        goto LABEL_17;
      }

      --v12;
    }
  }
}

uint64_t sub_181950008(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    *(a2 + 104) = a3;
    sub_1819500CC(a1, a2, a3, a4, a5, a6, a7, a8, v16);
  }

  else if (a3)
  {
    v10 = *a1;
    if (*a3 >= 1)
    {
      v11 = 0;
      v12 = a3 + 4;
      do
      {
        v13 = *(v12 - 1);
        if (v13)
        {
          sub_18194E5B8(v10, v13);
        }

        if (*v12)
        {
          sub_1818BB408(v10, *v12, 1);
        }

        v14 = *(v12 - 2);
        if (v14)
        {
          sub_181929C84(v10, v14);
        }

        ++v11;
        v12 += 6;
      }

      while (v11 < *a3);
    }

    sub_181929C84(v10, a3);
  }

  return a2;
}

void sub_1819500CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a2 + 80))
  {
    v10 = 0;
    v11 = 1;
    v12 = "ORDER BY";
    v13 = a2;
    while (1)
    {
      v14 = v11;
      v15 = v13;
      *(v13 + 88) = v10;
      *(v13 + 4) |= 0x100u;
      v13 = *(v13 + 80);
      if (!v13)
      {
        break;
      }

      if (*(v13 + 72))
      {
        goto LABEL_7;
      }

      ++v11;
      v10 = v15;
      if (*(v13 + 96))
      {
        v12 = "LIMIT";
LABEL_7:
        ++v14;
        v16 = a1;
        sub_181910730(a1, "%s clause should come after %s not before", a3, a4, a5, a6, a7, a8, v12);
        a1 = v16;
        break;
      }
    }

    if ((*(a2 + 5) & 6) == 0)
    {
      v17 = *(*a1 + 152);
      if (v17 >= 1 && v14 > v17)
      {

        sub_181910730(a1, "too many terms in compound SELECT", a3, a4, a5, a6, a7, a8, a9);
      }
    }
  }
}

uint64_t sub_1819501F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = *(a2 + 40);
    if (*v8 >= 1 && (*(v8 + 33) & 4) != 0)
    {
      v9 = *(result + 16);
      v10 = *(*(v8 + 72) + 12);
      v11 = *(v9 + 144);
      if (*(v9 + 148) <= v11)
      {
        v13 = result;
        sub_18194C8AC(*(result + 16), 68, v10, 0, 0, a6, a7, a8);
        result = v13;
      }

      else
      {
        *(v9 + 144) = v11 + 1;
        v12 = *(v9 + 136) + 40 * v11;
        *v12 = 68;
        *(v12 + 4) = v10;
        *(v12 + 8) = 0u;
        *(v12 + 24) = 0u;
      }

      v14 = *(v9 + 24);
      *(v14 + 31) = 0;
      *(v14 + 44) = 0;
      v15 = *(result + 16);
      v16 = *(v15 + 144);
      if (*(*v15 + 103))
      {
        v17 = &byte_1EA831A58;
      }

      else
      {
        v17 = (*(v15 + 136) + 40 * *(*(v8 + 72) + 8) - 40);
      }

      *(v17 + 2) = v16;
    }
  }

  return result;
}

_OWORD *sub_1819502E4(void **a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if ((*(a1 + 43) & 2) == 0 && !*(*a1 + 197))
  {
    v17 = *a3;
    if (*a3 >= 1)
    {
      v18 = 0;
      v19 = 2;
      do
      {
        a2 = *&a3[v19];
        v57 = 0x100000000;
        v58 = 0;
        *(&v56 + 1) = 0;
        *&v55 = a1;
        *(&v55 + 1) = sub_1818C7E14;
        *&v56 = sub_18195A49C;
        if (a2)
        {
          sub_181959BA0(&v55, a2);
          if (!WORD2(v57))
          {
            goto LABEL_3;
          }

          v17 = *a3;
        }

        ++v18;
        v19 += 6;
      }

      while (v18 < v17);
    }

    if (**(v9 + 40))
    {
      goto LABEL_17;
    }

    v27 = *(v9 + 32);
    v28 = *v27;
    if (*v27 < 1)
    {
      goto LABEL_17;
    }

    v29 = 0;
    v30 = (v27 + 2);
    v31 = 2;
    do
    {
      a2 = *&v27[v31];
      v57 = 0x100000000;
      v58 = 0;
      *(&v56 + 1) = 0;
      *&v55 = a1;
      *(&v55 + 1) = sub_1818C7E14;
      *&v56 = sub_18195A49C;
      if (a2)
      {
        sub_181959BA0(&v55, a2);
        if (!WORD2(v57))
        {
          goto LABEL_3;
        }

        v28 = *v27;
      }

      ++v29;
      v31 += 6;
    }

    while (v29 < v28);
    if (v28 < 1)
    {
LABEL_17:
      if (!*(a1 + 302))
      {
        v20 = *(v9 + 40);
        if (*v20)
        {
          v21 = v20 + 2;
          ++v20[12];
        }

        else
        {
          v33 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
          v34 = sub_1818A9824(a1, 0, 0, 0, 0, 0, 0, 0, 0);
          if ((*(*a1 + 44) & 0x10) == 0)
          {
            v36 = v34;
            sub_18194D060(a1, v35, a3, a4, a5, a6, a7, a8);
            v34 = v36;
          }

          if (v34)
          {
            v57 = 0;
            v55 = 0u;
            v56 = 0u;
            v37 = *(v34 + 5);
            *v37 = 1;
            v38 = *(v9 + 80);
            *(v34 + 10) = v38;
            *v34 = *v9;
            if (v38)
            {
              *(v34 + 1) |= 0x200u;
            }

            v39 = v34;
            *(v9 + 80) = 0;
            *v9 = -117;
            v21 = (v37 + 8);
            *(v37 + 33) |= 0x40u;
            *(v37 + 36) = -1;
            *(v37 + 48) = 2;
            if (sub_181960508(a1, v37 + 8, v9, 0))
            {
              v40 = *(v37 + 72);
              v41 = (*(v33 + 144) + 1);
              v40[2] = v41;
              v42 = (*(a1 + 15) + 1);
              *(a1 + 15) = v42;
              v40[3] = v42;
              sub_1818A2964(v33, 11, v42, 0, v41, a6, a7, a8);
              v43 = v40[3];
              LOBYTE(v55) = 13;
              *(&v55 + 4) = v43;
              *(&v56 + 1) = 0;
              v44 = *(a1 + 15);
              HIDWORD(v55) = v44 + 3;
              LODWORD(v56) = **(v9 + 32);
              *(a1 + 15) = v44 + v56 + 2;
              *(v9 + 4) |= 0x400u;
              sub_1818A9A10(a1, v9, &v55, v45, v46, v47, v48, v49);
              v40[4] = HIDWORD(v55);
            }

            v9 = v39;
          }

          else
          {
            v21 = 0;
          }
        }

        if (!*(a1 + 13))
        {
          v50 = *(v21 + 8);
          if (**(*v50 + 32) == *a3)
          {
            sub_1819588AC(a1, a3, *(v50 + 16), 0, 0, a6, a7, a8);
            sub_1818A2964(a1[2], 12, *(v50 + 12), 0, 0, v51, v52, v53);
          }

          else
          {
            sub_18195FD00(a1, *v50, a3, a4, a5, a6, a7, a8, v54);
          }
        }

        sub_18194E5B8(*a1, a3);
        return v9;
      }
    }

    else
    {
      v32 = v28;
      while (!sub_1818D0A24(*v30))
      {
        v30 += 3;
        if (!--v32)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_3:
  v11 = *(v9 + 40);
  if (*v11)
  {
    if (*v11 >= 1 && (*(v11 + 33) & 4) != 0)
    {
      v12 = a1[2];
      v13 = *(*(v11 + 72) + 12);
      v14 = *(v12 + 36);
      if (*(v12 + 37) <= v14)
      {
        sub_18194C8AC(a1[2], 68, v13, 0, 0, a6, a7, a8);
      }

      else
      {
        *(v12 + 36) = v14 + 1;
        v15 = v12[17] + 40 * v14;
        *v15 = 68;
        *(v15 + 4) = v13;
        *(v15 + 8) = 0u;
        *(v15 + 24) = 0u;
      }

      v22 = v12[3];
      *(v22 + 31) = 0;
      *(v22 + 44) = 0;
      v23 = a1[2];
      v24 = *(v23 + 36);
      if (*(*v23 + 103))
      {
        v25 = &byte_1EA831A58;
      }

      else
      {
        v25 = (v23[17] + 40 * *(*(v11 + 72) + 8) - 40);
      }

      *(v25 + 2) = v24;
    }

    v16 = 512;
  }

  else if (*(v9 + 80))
  {
    v16 = *(v9 + 4) & 0x600;
  }

  else
  {
    v16 = 1536;
  }

  result = sub_1818A9824(a1, a3, 0, 0, 0, 0, 0, v16, 0);
  *(v9 + 4) &= ~0x400u;
  if (result)
  {
    *result = -120;
    *(result + 10) = v9;
    return result;
  }

  return v9;
}

uint64_t sub_1819507A4(uint64_t result, int *a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v6 = result;
    v7 = a2 + 2;
    v8 = *a2 - 1;
    v9 = *a3;
    if (*a3)
    {
      v10 = *(a3 + 8);
      result = sub_181929E8C(*result, v10 + 1, 1565185748);
      v11 = result;
      if (result)
      {
        result = memcpy(result, v9, v10);
        v11[v10] = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = &v7[6 * v8];
    *(v12 + 1) = v11;
    v13 = (v12 + 2);
    if (a4)
    {
      if (v11 && byte_181A204C8[*v11] < 0)
      {
        v14 = 0;
        if (*v11 == 91)
        {
          v15 = 93;
        }

        else
        {
          v15 = *v11;
        }

        for (i = 1; ; ++i)
        {
          v17 = i;
          v18 = v11[i];
          if (v18 == v15)
          {
            ++i;
            LOBYTE(v18) = v15;
            if (v11[v17 + 1] != v15)
            {
              break;
            }
          }

          v11[v14++] = v18;
        }

        v11[v14] = 0;
      }

      v19 = *(v6 + 302);
      if (v19 >= 2 && v19 != 3)
      {
        v20 = *v13;
        if (*v6)
        {
          result = sub_181929E8C(*v6, 0x20uLL, 0x10F00409A20EBA4);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          result = sub_181902484(32, 0x10F00409A20EBA4);
          if (!result)
          {
            return result;
          }
        }

        *result = 0u;
        *(result + 16) = 0u;
        *result = v20;
        *(result + 8) = *a3;
        *(result + 24) = *(v6 + 408);
        *(v6 + 408) = result;
      }
    }
  }

  return result;
}

uint64_t *sub_18195092C(uint64_t *result, int *a2, unsigned __int8 *a3, int a4)
{
  if (a2)
  {
    v4 = &a2[6 * *a2];
    if (!*(v4 - 1))
    {
      v5 = *result;
      v6 = v4 - 4;
      v7 = a4 - a3;
      do
      {
        v8 = a3;
        v9 = v7;
        v10 = *a3++;
        --v7;
      }

      while ((byte_181A204C8[v10] & 1) != 0);
      v11 = v9;
      v12 = (v9 << 32) + 0x100000000;
      v13 = v11 - 2;
      do
      {
        v14 = byte_181A204C8[a3[v13]];
        v12 -= 0x100000000;
        --v13;
      }

      while ((v14 & 1) != 0);
      v15 = v12 >> 32;
      result = sub_181929E8C(v5, (v12 >> 32) + 1, 1565185748);
      v16 = result;
      if (result)
      {
        result = memcpy(result, v8, v15);
        *(v16 + v15) = 0;
      }

      *(v6 + 1) = v16;
      *(v6 + 17) = *(v6 + 17) & 0xFFFC | 1;
    }
  }

  return result;
}

uint64_t sub_181950A08(uint64_t a1, int a2, char *__s)
{
  v9[0] = __s;
  if (__s)
  {
    v3 = a1;
    v4 = a2;
    v5 = strlen(__s);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    v7 = v6 & 0x3FFFFFFF;
  }

  else
  {
    v7 = 0;
  }

  v9[1] = v7;
  return sub_1818A8CF0(a1, a2, v9, 0);
}

unsigned int *sub_181950A70(unsigned int *result)
{
  if (!result)
  {
    return result;
  }

  v1 = *result;
  if (v1 < 2)
  {
    return result;
  }

  if (v1 == 2)
  {
    v2 = 0;
    v3 = *result;
LABEL_8:
    v11 = v3 + 1;
    v12 = &result[18 * v3 - 28];
    do
    {
      v13 = *v12;
      *(v12 + 72) = *v12;
      v2 |= v13;
      --v11;
      v12 -= 18;
    }

    while (v11 > 2);
    goto LABEL_10;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFELL;
  v3 = v1 - v6;
  v7 = &result[18 * v1 - 46];
  v8 = v6;
  do
  {
    v9 = *(v7 + 72);
    v10 = *v7;
    *(v7 + 144) = v9;
    *(v7 + 72) = v10;
    v4 |= v9;
    v5 |= v10;
    v7 -= 36;
    v8 -= 2;
  }

  while (v8);
  v2 = v5 | v4;
  if (v1 - 1 != v6)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(result + 32) = 0;
  if ((v2 & 0x10) != 0)
  {
    v14 = &result[18 * v1 - 10];
    v15 = 1;
    while (1)
    {
      v16 = v1;
      if (v1 < 2)
      {
        break;
      }

      --v1;
      v17 = *v14;
      v14 -= 18;
      if ((v17 & 0x10) != 0)
      {
        v15 = v16;
        break;
      }
    }

    v18 = v15 - 2;
    v19 = (v18 & ~(v18 >> 63)) + 1;
    if (v19 < 2)
    {
      goto LABEL_21;
    }

    v18 -= v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    v20 = v16 - 2;
    v21 = (((v16 - 2) & ~((v16 - 2) >> 63)) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = &result[18 * v20 + 8];
    do
    {
      v23 = *(v22 - 72) | 0x40;
      *v22 |= 0x40u;
      *(v22 - 72) = v23;
      v22 -= 36;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_21:
      v24 = v18 + 1;
      v25 = &result[18 * v18 + 8];
      do
      {
        *v25 |= 0x40u;
        v25 -= 18;
        --v24;
      }

      while (v24 > 0);
    }
  }

  return result;
}

uint64_t *sub_181950BE8(uint64_t *result, int *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + 8);
    if (v3)
    {
      v4 = &a2[18 * *a2 - 16];
      v5 = *a3;
      if (v3 == 1)
      {
        v3 = 1;
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      else if (!v5)
      {
        v6 = 0;
LABEL_18:
        *(v4 + 40) = v6;
        LOWORD(v3) = 2;
LABEL_19:
        *(v4 + 25) |= v3;
        return result;
      }

      result = sub_181929E8C(*result, v3 + 1, 1565185748);
      v6 = result;
      if (result)
      {
        result = memcpy(result, v5, v3);
        *(v6 + v3) = 0;
        if (byte_181A204C8[*v6] < 0)
        {
          v7 = 0;
          if (*v6 == 91)
          {
            v8 = 93;
          }

          else
          {
            v8 = *v6;
          }

          for (i = 1; ; ++i)
          {
            v10 = i;
            v11 = *(v6 + i);
            if (v11 == v8)
            {
              ++i;
              LOBYTE(v11) = v8;
              if (*(v6 + v10 + 1) != v8)
              {
                break;
              }
            }

            *(v6 + v7++) = v11;
          }

          *(v6 + v7) = 0;
        }
      }

      goto LABEL_18;
    }
  }

  return result;
}

void *sub_181950CF4(void *result, int *a2, void *a3)
{
  if (a2)
  {
    v3 = &a2[18 * *a2];
    *(v3 - 3) = a3;
    *(v3 - 39) |= 8u;
  }

  else if (a3)
  {
    return sub_18194E5B8(*result, a3);
  }

  return result;
}

uint64_t sub_181950D2C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 302) != 3)
  {
    v6 = *a1;
    if (!v6)
    {
      v7 = sub_181902484(32, 0x10F00409A20EBA4);
      if (!v7)
      {
        return a2;
      }

      goto LABEL_4;
    }

    v7 = sub_181929E8C(v6, 0x20uLL, 0x10F00409A20EBA4);
    if (v7)
    {
LABEL_4:
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *v7 = a2;
      *(v7 + 8) = *a3;
      *(v7 + 24) = *(a1 + 408);
      *(a1 + 408) = v7;
    }
  }

  return a2;
}

_BYTE *sub_181950DC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  result = sub_181929E8C(a1, v3 + 1, 1565185748);
  if (result)
  {
    v5 = result;
    memcpy(result, v2, v3);
    result = v5;
    v5[v3] = 0;
    if (byte_181A204C8[*v5] < 0)
    {
      v6 = 0;
      if (*v5 == 91)
      {
        v7 = 93;
      }

      else
      {
        v7 = *v5;
      }

      for (i = 1; ; ++i)
      {
        v9 = i;
        v10 = v5[i];
        if (v10 == v7)
        {
          ++i;
          LOBYTE(v10) = v7;
          if (v5[v9 + 1] != v7)
          {
            break;
          }
        }

        v5[v6++] = v10;
      }

      v5[v6] = 0;
    }
  }

  return result;
}

uint64_t sub_181950E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = 0;
    v9 = *(a2 + 8);
    while (1)
    {
      v10 = &unk_181A24600 + 3 * v8;
      if (v9 == v10[1])
      {
        v11 = *a2;
        if (*a2)
        {
          if (!v9)
          {
            break;
          }

          v12 = &aNaturaleftoute[*v10];
          v13 = v9 + 1;
          while (1)
          {
            a5 = *v11;
            if (!*v11)
            {
              break;
            }

            a5 = byte_181A20298[a5];
            a6 = byte_181A20298[*v12];
            if (a5 != a6)
            {
              goto LABEL_4;
            }

            ++v11;
            ++v12;
            if (--v13 <= 1)
            {
              goto LABEL_13;
            }
          }

          a6 = byte_181A20298[*v12];
LABEL_4:
          if (a5 == a6)
          {
            break;
          }
        }
      }

      if (++v8 == 7)
      {
        LODWORD(v14) = 0;
LABEL_29:
        v14 = v14 | 0x80;
        goto LABEL_41;
      }
    }

LABEL_13:
    v14 = v10[2];
    if (a3)
    {
      v15 = 0;
      v16 = *(a3 + 8);
      while (1)
      {
        v17 = &unk_181A24600 + 3 * v15;
        if (v16 == v17[1])
        {
          v18 = *a3;
          if (*a3)
          {
            if (!v16)
            {
              break;
            }

            v19 = &aNaturaleftoute[*v17];
            a5 = (v16 + 1);
            while (1)
            {
              a6 = *v18;
              if (!*v18)
              {
                break;
              }

              a6 = byte_181A20298[a6];
              a7 = byte_181A20298[*v19];
              if (a6 != a7)
              {
                goto LABEL_17;
              }

              ++v18;
              ++v19;
              a5 = (a5 - 1);
              if (a5 <= 1)
              {
                goto LABEL_26;
              }
            }

            a7 = byte_181A20298[*v19];
LABEL_17:
            if (a6 == a7)
            {
              break;
            }
          }
        }

        if (++v15 == 7)
        {
          goto LABEL_29;
        }
      }

LABEL_26:
      v14 = v14 | v17[2];
      if (a4)
      {
        v20 = 0;
        v21 = *(a4 + 8);
        while (1)
        {
          v22 = &unk_181A24600 + 3 * v20;
          if (v21 == v22[1])
          {
            v23 = *a4;
            if (*a4)
            {
              if (!v21)
              {
                break;
              }

              v24 = &aNaturaleftoute[*v22];
              a5 = (v21 + 1);
              while (1)
              {
                a6 = *v23;
                if (!*v23)
                {
                  break;
                }

                a6 = byte_181A20298[a6];
                a7 = byte_181A20298[*v24];
                if (a6 != a7)
                {
                  goto LABEL_31;
                }

                ++v23;
                ++v24;
                a5 = (a5 - 1);
                if (a5 <= 1)
                {
                  goto LABEL_40;
                }
              }

              a7 = byte_181A20298[*v24];
LABEL_31:
              if (a6 == a7)
              {
                break;
              }
            }
          }

          if (++v20 == 7)
          {
            goto LABEL_29;
          }
        }

LABEL_40:
        v14 = v14 | v22[2];
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_41:
  if ((v14 & 0x38) == 0x20 || (v14 & 0x21) == 0x21 || (v14 & 0x80) != 0)
  {
    sub_181910730(a1, "unknown join type: %T%s%T%s%T", a3, a4, a5, a6, a7, a8, a2);
    return 1;
  }

  return v14;
}

void sub_1819510F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (*(a1 + 360))
  {
    sub_181910730(a1, "cannot use RETURNING in a trigger", a3, a4, a5, a6, a7, a8, v24);
  }

  *(a1 + 40) = 1;
  if (!v10)
  {
    v11 = sub_181902484(240, 0x10300409BD89F26);
    if (!v11)
    {
      goto LABEL_28;
    }

LABEL_18:
    *(v11 + 208) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
    *(a1 + 248) = v11;
    *v11 = a1;
    *(v11 + 8) = a2;
    sub_18195B158(a1, sub_181985A74, v11);
    if (!*(v10 + 103))
    {
      v13 = (v11 + 196);
      sqlite3_snprintf(40, (v11 + 196), "sqlite_returning_%p", a1);
      *(v11 + 16) = v11 + 196;
      v14 = v11 + 16;
      *(v14 + 16) = 663;
      *(v14 + 18) = 1;
      v15 = *(*(v10 + 32) + 56);
      *(v14 + 40) = v15;
      *(v14 + 48) = v15;
      *(v14 + 72) = -105;
      *(v14 + 56) = v14 + 72;
      *(v14 + 80) = v14;
      *(v14 + 120) = a2;
      if (sub_18188FAF0(v15 + 56, v13, v14) == v14 && !*(v10 + 103) && !*(v10 + 104))
      {
        *(v10 + 103) = 1;
        if (*(v10 + 220) >= 1)
        {
          *(v10 + 424) = 1;
        }

        ++*(v10 + 432);
        *(v10 + 436) = 0;
        v22 = *(v10 + 344);
        if (v22)
        {
          sub_181910730(v22, "out of memory", v16, v17, v18, v19, v20, v21, v25);
          for (i = *(v10 + 344); ; ++*(i + 52))
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
    }

    return;
  }

  if (*(v10 + 436) <= 0xEFu)
  {
    if (*(v10 + 432))
    {
      if (*(v10 + 103))
      {
        goto LABEL_28;
      }
    }

    else
    {
      ++*(v10 + 452);
    }

    goto LABEL_17;
  }

  v11 = *(v10 + 472);
  if (v11)
  {
    v12 = (v10 + 472);
LABEL_15:
    *v12 = *v11;
    ++*(v10 + 448);
    goto LABEL_18;
  }

  v11 = *(v10 + 464);
  if (v11)
  {
    v12 = (v10 + 464);
    goto LABEL_15;
  }

  ++*(v10 + 456);
LABEL_17:
  v11 = sub_18192A080(v10, 240, 0x10300409BD89F26);
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_28:
  if (a2)
  {

    sub_18194E5B8(v10, a2);
  }
}

int *sub_18195136C(uint64_t *a1, int *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a3)
  {
    v11 = sub_1818A95FC(a1, a2, *a3, 1, a5, a6, a7, a8);
    if (v11)
    {
      v8 = v11;
      memcpy(v11 + 20, a3 + 1, 72 * *a3);
      sub_181929C84(*a1, a3);
      *(v8 + 32) |= v8[26] & 0x40;
    }

    else
    {
      sub_1818BB5B0(*a1, a3);
    }
  }

  return v8;
}

int *sub_181951404(uint64_t *a1, int *a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = *a1;
  if (a2)
  {
    v13 = *a2;
    if (!a3)
    {
LABEL_35:
      if (!a4)
      {
        if (!a3)
        {
          return v10;
        }

        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_35;
    }
  }

  if (!a4)
  {
    goto LABEL_35;
  }

  v14 = *a4;
  LODWORD(v15) = *a3;
  if (v14 != 139)
  {
    if (v14 == 176)
    {
      v14 = a4[2];
    }

    v16 = a4;
    if (v14 == 177)
    {
LABEL_12:
      if (v15 == **(v16 + 4))
      {
        goto LABEL_13;
      }

LABEL_43:
      sub_181910730(a1, "%d columns assigned %d values", a3, a4, a5, a6, a7, a8, *a3);
      goto LABEL_44;
    }

    if (v14 == 139)
    {
      v16 = *(a4 + 4);
      goto LABEL_12;
    }

    if (v15 != 1)
    {
      goto LABEL_43;
    }
  }

LABEL_13:
  v39 = v13;
  if (v15 >= 1)
  {
    v17 = 0;
    v18 = 8;
    do
    {
      v21 = *a4;
      if (v21 == 177)
      {
        v30 = *(a4 + 4);
        v22 = *(v30 + v18);
        if (*(a1 + 302) < 2u)
        {
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_26:
          v22 = sub_1818C7FEC(*a1, v22, 0, 0);
          if (!v22)
          {
            goto LABEL_17;
          }

          goto LABEL_29;
        }

        *(v30 + v18) = 0;
        if (!v22)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v22 = a4;
        if (v21 != 139)
        {
          goto LABEL_26;
        }

        v23 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
        if (!v23)
        {
          goto LABEL_17;
        }

        v22 = v23;
        *(v23 + 32) = 0u;
        *(v23 + 48) = 0u;
        *(v23 + 64) = 0u;
        *v23 = 0u;
        *(v23 + 16) = 0u;
        *v23 = -78;
        *(v23 + 52) = -1;
        *(v23 + 40) = 1;
        if (*(*a1 + 148) <= 0)
        {
          sub_181910730(a1, "Expression tree is too large (maximum depth %d)", v24, v25, v26, v27, v28, v29, *(*a1 + 148));
        }

        *(v22 + 4) |= 0x20000u;
        *(v22 + 44) = v15;
        *(v22 + 48) = v17;
        *(v22 + 16) = a4;
      }

LABEL_29:
      if (!v10)
      {
        v32 = sub_18197FD9C(*a1, v22);
LABEL_33:
        v10 = v32;
        if (!v32)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v31 = *v10;
      if (v10[1] <= *v10)
      {
        v32 = sub_18197FE14(*a1, v10, v22);
        goto LABEL_33;
      }

      *v10 = v31 + 1;
      v19 = &v10[6 * v31];
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 1) = v22;
LABEL_16:
      v20 = &a3[v17];
      *&v10[6 * *v10 - 2] = v20[1];
      v20[1] = 0;
LABEL_17:
      ++v17;
      v15 = *a3;
      v18 += 24;
    }

    while (v17 < v15);
  }

  if (!*(v12 + 103) && *a4 == 139 && v10)
  {
    v33 = *&v10[6 * v39 + 2];
    *(v33 + 24) = a4;
    *(v33 + 44) = v15;
LABEL_47:
    v35 = *a3;
    if (*a3 >= 1)
    {
      v36 = 0;
      do
      {
        v37 = a3[v36 + 1];
        if (v37)
        {
          sub_181929C84(v12, v37);
          v35 = *a3;
        }

        ++v36;
      }

      while (v36 < v35);
    }

    sub_181939EC8(v12, a3);
    return v10;
  }

LABEL_44:
  v34 = *(a1 + 302);
  if (v34 >= 2)
  {
    v40[0] = a1;
    v40[1] = sub_181961E4C;
    v40[2] = sub_181961EB8;
    memset(&v40[3], 0, 24);
    *(a1 + 302) = 3;
    sub_181959BA0(v40, a4);
    *(a1 + 302) = v34;
  }

  sub_1819439E0(*a1, a4);
  if (a3)
  {
    goto LABEL_47;
  }

  return v10;
}

uint64_t sub_18195173C(void *a1, void *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5, void *a6)
{
  if (a1)
  {
    v12 = sub_181929E8C(a1, 0x58uLL, 0x10A00407253782BLL);
    if (v12)
    {
LABEL_3:
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 80) = 0;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 32) = 0u;
      *v12 = a2;
      *(v12 + 8) = a3;
      *(v12 + 16) = a4;
      *(v12 + 24) = a5;
      *(v12 + 40) = a4 != 0;
      *(v12 + 32) = a6;
      return v12;
    }
  }

  else
  {
    v12 = sub_181902484(88, 0x10A00407253782BLL);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
    sub_18194E5B8(a1, a2);
  }

  if (a3)
  {
    sub_1819439E0(a1, a3);
  }

  if (a4)
  {
    sub_18194E5B8(a1, a4);
  }

  if (a5)
  {
    sub_1819439E0(a1, a5);
  }

  if (a6)
  {
    sub_18194E51C(a1, a6);
  }

  return v12;
}

__n128 sub_181951848(uint64_t a1, void *a2, __n128 *a3)
{
  v5 = *a1;
  if (!a2)
  {
    if (v5)
    {
      v8 = sub_181929E8C(*a1, 0x10uLL, 0x10040436913F5);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v8 = sub_181902484(16, 0x10040436913F5);
      if (!v8)
      {
        return result;
      }
    }

    *v8 = 0;
    v8[1] = 0;
    goto LABEL_20;
  }

  v7 = 8 * *a2 + 16;
  if (*(v5 + 512) > a2)
  {
    if (*(v5 + 496) <= a2)
    {
      if (v7 < 0x81)
      {
LABEL_6:
        v8 = a2;
LABEL_20:
        v13 = *v8;
        *v8 = v13 + 1;
        if (a3 && (v14 = a3->n128_u64[0]) != 0 && (v15 = a3->n128_u32[2], v16 = v8, v17 = sub_181929E8C(v5, v15 + 1, 1565185748), v8 = v16, v17))
        {
          memcpy(v17, v14, v15);
          v17[v15] = 0;
          v18 = *v17;
          if (byte_181A204C8[*v17] < 0)
          {
            v19 = 0;
            if (v18 == 91)
            {
              v18 = 93;
            }

            for (i = 1; ; ++i)
            {
              v21 = i;
              v22 = v17[i];
              if (v22 == v18)
              {
                ++i;
                LOBYTE(v22) = v18;
                if (v17[v21 + 1] != v18)
                {
                  break;
                }
              }

              v17[v19++] = v22;
            }

            v17[v19] = 0;
          }

          v16[v13 + 1] = v17;
          v23 = *(a1 + 302);
          if (v23 > 3 || v23 == 2)
          {
            if (*a1)
            {
              v25 = sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4);
            }

            else
            {
              v25 = sub_181902484(32, 0x10F00409A20EBA4);
            }

            if (v25)
            {
              *v25 = 0u;
              *(v25 + 16) = 0u;
              *v25 = v17;
              result = *a3;
              *(v25 + 8) = *a3;
              *(v25 + 24) = *(a1 + 408);
              *(a1 + 408) = v25;
            }
          }
        }

        else
        {
          v8[v13 + 1] = 0;
        }

        return result;
      }
    }

    else if (*(v5 + 504) <= a2 && v7 <= *(v5 + 438))
    {
      goto LABEL_6;
    }
  }

  v8 = sub_181929F38(*a1, a2, v7, 0x10040436913F5);
  if (v8)
  {
    goto LABEL_20;
  }

  v10 = *a2;
  if (*a2 > 0)
  {
    v11 = 0;
    do
    {
      v12 = a2[v11 + 1];
      if (v12)
      {
        sub_181929C84(v5, v12);
        v10 = *a2;
      }

      ++v11;
    }

    while (v11 < v10);
  }

  sub_181939EC8(v5, a2);
  return result;
}

uint64_t sub_181951AC0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 8))
  {
    v5 = sub_1818A8CF0(*a1, 114, a3, a4);
    if (v5)
    {
      *(v5 + 16) = a2;
      *(v5 + 4) |= 0x2200u;
      return v5;
    }
  }

  return a2;
}

uint64_t *sub_181951B14(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return result;
  }

  if (!a2)
  {
    v12 = *result;
    v13 = a3;
LABEL_16:

    return sub_18194E5B8(v12, v13);
  }

  v8 = *(a2 + 32);
  if (v8 && *v8)
  {
    if ((*(a2 + 7) & 1) != 0 && *(*(a2 + 72) + 32) != 167)
    {
      v11 = *result;
      sub_181910730(result, "ORDER BY may not be used with non-aggregate %#T()", a3, a4, a5, a6, a7, a8, a2);
    }

    else
    {
      v11 = *result;
      result = sub_181929E8C(*result, 0x50uLL, 0x1032040B79D87BDLL);
      if (result)
      {
        *(result + 2) = 0u;
        *(result + 3) = 0u;
        *(result + 4) = 0u;
        *result = 0u;
        *(result + 1) = 0u;
        *result = -110;
        *(result + 26) = -1;
        *(result + 10) = 1;
        result[4] = a3;
        *(a2 + 16) = result;
        *(result + 1) |= 0x20000u;
        return result;
      }
    }

    v12 = v11;
    v13 = a3;
    goto LABEL_16;
  }

  return sub_18195B158(result, sub_181964684, a3);
}

void sub_181951C5C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2)
  {
    *(a2 + 72) = a3;
    v9 = *(a2 + 4);
    *(a2 + 4) = v9 | 0x1020000;
    *(a3 + 112) = a2;
    if ((v9 & 4) != 0 && *(a3 + 32) != 167)
    {
      sub_181910730(a1, "DISTINCT is not supported for window functions", a3, a4, a5, a6, a7, a8, a9);
    }
  }

  else
  {
    sub_181943B0C(*a1, a3);
  }
}

uint64_t sub_181951CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  if (!a3)
  {
    return a2;
  }

  v3 = a3;
  if (((*(a3 + 4) | *(a2 + 4)) & 0x20000003) == 0x20000000 && *(a1 + 302) <= 1u)
  {
    v5 = *a1;
    sub_18195B158(a1, sub_18195B270, a2);
    sub_18195B158(a1, sub_18195B270, v3);
    v7[0] = "0";
    v7[1] = 1;
    return sub_1818A8CF0(v5, 156, v7, 0);
  }

  return sub_18194F098(a1, 44, a2, a3);
}

void *sub_181951DA4(void *result, _BYTE *a2, uint64_t a3, char a4)
{
  if (a2 && a3 && *a2 == 122 && *(result + 302) <= 1u)
  {
    result = *result;
    *a3 = a4;
    v4 = *(a3 + 24);
    if (v4)
    {
      v5 = a3;
      result = sub_1819439E0(result, v4);
      a3 = v5;
    }

    *(a3 + 24) = 0;
  }

  return result;
}

void *sub_181951E04(void *result, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = *(result + 302);
    if (v2 >= 2)
    {
      v5[0] = result;
      v5[1] = sub_181961E4C;
      v5[2] = sub_181961EB8;
      memset(&v5[3], 0, 24);
      *(result + 302) = 3;
      v3 = result;
      v4 = a2;
      sub_181959BA0(v5, a2);
      result = v3;
      a2 = v4;
      *(v3 + 302) = v2;
    }

    return sub_1819439E0(*result, a2);
  }

  return result;
}

void sub_181951E94(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    *(a2 + 32) = a3;
    *(a2 + 4) |= 0x401000u;
    sub_181952030(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a3)
  {
    sub_1818BB408(*a1, a3, 1);
  }
}

_OWORD *sub_181951ECC(void **a1, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 < 1)
  {
    goto LABEL_16;
  }

  v11 = 0;
  v12 = 0;
  v13 = 2;
  while (1)
  {
    v15 = *&a3[v13];
    if (*v15 != 177)
    {
      break;
    }

    v16 = **(v15 + 4);
    if (v16 != a2)
    {
      goto LABEL_12;
    }

LABEL_9:
    v14 = sub_1818A9824(a1, *(v15 + 4), 0, 0, 0, 0, 0, 512, 0);
    *(v15 + 4) = 0;
    if (v14)
    {
      if (v12)
      {
        *v14 = -120;
        *(v14 + 10) = v12;
      }
    }

    else
    {
      v14 = v12;
    }

    ++v11;
    v13 += 6;
    v12 = v14;
    if (v11 >= *a3)
    {
      goto LABEL_13;
    }
  }

  LOBYTE(v16) = 1;
  if (a2 == 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_181910730(a1, "IN(...) element has %d term%s - expected %d", a3, a4, a5, a6, a7, a8, v16);
  v14 = v12;
LABEL_13:
  if (!v14)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v17 = v14;
  if (*(v14 + 10))
  {
    *(v14 + 1) |= 0x400u;
  }

LABEL_17:
  sub_18194E5B8(*a1, a3);
  return v17;
}

void sub_181952030(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1[13])
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(v8 + 40);
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    v10 = *(a2 + 24);
    if (v10)
    {
      v11 = *(v10 + 40);
      if (v11 > v9)
      {
        v32 = v11;
        v9 = v11;
      }
    }

    v12 = *(a2 + 4);
    v13 = *(a2 + 32);
    if ((v12 & 0x1000) != 0)
    {
      v18 = a2;
      v19 = a1;
      sub_1818CB0C0(v13, &v32);
      a2 = v18;
      a1 = v19;
      v9 = v32;
      goto LABEL_28;
    }

    if (!v13)
    {
      goto LABEL_28;
    }

    v14 = *v13;
    if (v14 < 1)
    {
      v22 = 0;
LABEL_27:
      *(a2 + 4) = v22 | v12;
LABEL_28:
      *(a2 + 40) = v9 + 1;
      if (*(*a1 + 148) <= v9)
      {
        sub_181910730(a1, "Expression tree is too large (maximum depth %d)", a3, a4, a5, a6, a7, a8, *(*a1 + 148));
      }

      return;
    }

    v15 = 0;
    v16 = v13 + 1;
    v17 = *v13;
    do
    {
      if (*v16 && *(*v16 + 40) > v9)
      {
        v9 = *(*v16 + 40);
        v17 = *v13;
      }

      ++v15;
      v16 += 3;
    }

    while (v15 < v17);
    if (v14 == 1)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v20 = v14 & 0x7FFFFFFE;
      v25 = v13 + 4;
      v26 = v20;
      do
      {
        v27 = *(v25 - 3);
        v28 = *v25;
        v25 += 6;
        a3 = *(v28 + 4);
        v23 |= *(v27 + 4);
        v24 |= a3;
        v26 -= 2;
      }

      while (v26);
      v21 = v24 | v23;
      if (v20 == v14)
      {
        goto LABEL_26;
      }
    }

    v29 = v14 - v20;
    v30 = &v13[3 * v20 + 1];
    do
    {
      v31 = *v30;
      v30 += 3;
      v21 |= *(v31 + 4);
      --v29;
    }

    while (v29);
LABEL_26:
    v22 = v21 & 0x400208;
    goto LABEL_27;
  }
}

int *sub_1819521C8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  if (a2)
  {
    v12 = a2;
    v13 = *a2;
    if (a2[1] <= *a2)
    {
      v12 = sub_18197FE14(*a1, a2, 0);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *a2 = v13 + 1;
      v14 = &a2[6 * v13];
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      if (a4)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    if (v8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v12 = sub_18197FD9C(*a1, 0);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!*(*a1 + 197))
  {
    sub_181910730(a1, "syntax error after column name %.*s", a3, a4, a5, a6, a7, a8, *(a3 + 8));
  }

LABEL_11:
  sub_1819507A4(a1, v12, a3, 1);
  return v12;
}

void *sub_1819522B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (*(*a1 + 103))
  {
    goto LABEL_2;
  }

  if (!*(v9 + 197))
  {
    v22 = *(v9 + 44);
    v23 = *(*(v9 + 32) + 24);
    *(v9 + 100) = *(v23 + 113);
    if ((*(v23 + 114) & 1) != 0 || (v24 = sub_18189F330(v9, 0, (a1 + 8), 0, a5, a6, a7, a8)) == 0)
    {
      v25 = *(v9 + 40);
      if (v25 < 2)
      {
LABEL_35:
        if ((v22 & 1) == 0)
        {
          *(v9 + 44) &= ~1u;
        }

        if (*(v9 + 111))
        {
          *(v9 + 44) |= 0x10u;
        }

        goto LABEL_6;
      }

      v26 = 32 * v25 - 8;
      while (1)
      {
        if ((*(*(*(v9 + 32) + v26) + 114) & 1) == 0)
        {
          v24 = sub_18189F330(v9, (v25 - 1), (a1 + 8), 0, a5, a6, a7, a8);
          if (v24)
          {
            break;
          }
        }

        --v25;
        v26 -= 32;
        if ((v25 + 1) <= 2)
        {
          goto LABEL_35;
        }
      }
    }

    *(a1 + 24) = v24;
    ++*(a1 + 52);
    goto LABEL_2;
  }

LABEL_6:
  v13 = *(a2 + 72);
  v14 = sub_1819495FC(v9, *(a2 + 8), v13);
  if (v14)
  {
    if ((*(v14 + 99) & 3) != 0)
    {
      sub_181910730(a1, "index associated with UNIQUE or PRIMARY KEY constraint cannot be dropped", v16, v17, v18, v19, v20, v21, 0);
      goto LABEL_2;
    }

    v35 = *(v14 + 48);
    v36 = *(v9 + 32);
    v37 = v14;
    if (v35)
    {
      v38 = (v36 + 24);
      v39 = -1;
      do
      {
        v40 = *v38;
        v38 += 4;
        ++v39;
      }

      while (v40 != v35);
    }

    else
    {
      v39 = -32768;
    }

    v48 = v39;
    if (v39 == 1)
    {
      v49 = "sqlite_temp_master";
    }

    else
    {
      v49 = "sqlite_master";
    }

    v50 = *a1;
    v51 = *(*a1 + 528);
    if (!v51)
    {
      goto LABEL_59;
    }

    v52 = *(v14 + 24);
    v53 = *(v36 + 32 * v39);
    if (*(v50 + 197) || *(a1 + 302))
    {
      if (v39 == 1)
      {
        v15 = 12;
      }

      else
      {
        v15 = 10;
      }
    }

    else
    {
      v79 = v51(*(v50 + 536), 9, v49, 0, v53, *(a1 + 368));
      if (v79 == 1)
      {
LABEL_74:
        v81 = 23;
        v82 = "not authorized";
LABEL_77:
        sub_181910730(a1, v82, v49, v17, v18, v19, v20, v21, v83);
        *(a1 + 24) = v81;
        goto LABEL_2;
      }

      if ((v79 & 0xFFFFFFFD) != 0)
      {
LABEL_76:
        v81 = 1;
        v82 = "authorizer malfunction";
        goto LABEL_77;
      }

      if (v79)
      {
        goto LABEL_2;
      }

      v50 = *a1;
      v51 = *(*a1 + 528);
      if (v48 == 1)
      {
        v15 = 12;
      }

      else
      {
        v15 = 10;
      }

      if (!v51)
      {
        goto LABEL_59;
      }
    }

    if (*(v50 + 197) || *(a1 + 302))
    {
LABEL_59:
      v54 = sub_1818E7DFC(a1, v15, v49, v17, v18, v19, v20, v21);
      if (v54)
      {
        v55 = v54;
        sub_18195D3A8(a1, 1, v48);
        sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_master WHERE name=%Q AND type='index'", v56, v57, v58, v59, v60, v61, *(*(v9 + 32) + 32 * v48));
        sub_18196375C(a1, v48);
        sub_18195E878(a1, v48, v62, v63, v64, v65, v66, v67);
        sub_181964544(a1, *(v37 + 22), v48, v68, v69, v70, v71, v72);
        v73 = *v37;
        v77 = sub_1818A2964(v55, 152, v48, 0, 0, v74, v75, v76);
        sub_1818B49F8(v55, v77, v73, 0);
      }

      goto LABEL_2;
    }

    v80 = v51(*(v50 + 536), v15, *v37, *v52, v53, *(a1 + 368));
    if (v80 == 1)
    {
      goto LABEL_74;
    }

    if ((v80 & 0xFFFFFFFD) == 0)
    {
      if (v80)
      {
        goto LABEL_2;
      }

      goto LABEL_59;
    }

    goto LABEL_76;
  }

  if (a3)
  {
    v27 = *a1;
    v28 = *(*a1 + 40);
    if (v28 >= 1)
    {
      for (i = 0; i < v28; ++i)
      {
        v32 = *(v27 + 32) + 32 * i;
        if (*(v32 + 8))
        {
          if (v13)
          {
            v33 = *v32;
            for (j = v13; ; ++j)
            {
              if (*j == *v33)
              {
                if (!*j)
                {
                  break;
                }
              }

              else if (byte_181A20298[*j] != byte_181A20298[*v33])
              {
                goto LABEL_24;
              }

              ++v33;
            }
          }

          if (*(a1 + 152))
          {
            v30 = *(a1 + 152);
          }

          else
          {
            v30 = a1;
          }

          v31 = *(v30 + 116);
          if ((v31 & (1 << i)) == 0)
          {
            *(v30 + 116) = v31 | (1 << i);
            if (i == 1)
            {
              sub_1819108F4(v30);
              v28 = *(v27 + 40);
            }
          }
        }

LABEL_24:
        ;
      }
    }

    v41 = (*(a1 + 60) + 1);
    *(a1 + 60) = v41;
    v42 = sub_1818E7DFC(a1, v15, v16, v17, v18, v19, v20, v21);
    if (v42)
    {
      v46 = *(v42 + 144);
      if (*(v42 + 148) <= v46)
      {
        v78 = v42;
        sub_18194C8AC(v42, 4, 0, v41, 0xFFFFFFFFLL, v43, v44, v45);
        v42 = v78;
      }

      else
      {
        *(v42 + 144) = v46 + 1;
        v47 = *(v42 + 136) + 40 * v46;
        *v47 = 4;
        *(v47 + 8) = v41;
        *(v47 + 12) = -1;
        *(v47 + 24) = 0;
        *(v47 + 32) = 0;
        *(v47 + 16) = 0;
      }

      *(v42 + 272) |= 1u;
      if (*(*(*(*v42 + 32) + 8) + 17))
      {
        *(v42 + 276) |= 1u;
      }
    }
  }

  else
  {
    sub_181910730(a1, "no such index: %S", v16, v17, v18, v19, v20, v21, a2 + 8);
  }

  *(a1 + 43) |= 8u;
LABEL_2:

  return sub_1818BB5B0(v9, a2);
}

void *sub_18195279C(void **a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v28 = *MEMORY[0x1E69E9840];
  result = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result || *(a1 + 13))
  {
    goto LABEL_17;
  }

  v18 = result;
  if (v9)
  {
    result = sub_18195D514(*a1, v9);
    v19 = result;
    if (result == 1)
    {
      goto LABEL_17;
    }

    result = v18;
    v9 = v19 & ~(v19 >> 31);
  }

  if (a3)
  {
    v25 = 0u;
    v24 = 0u;
    v26 = 0;
    memset(v27, 0, sizeof(v27));
    v23[0] = a1;
    v23[1] = v27;
    DWORD2(v25) = 0x10000;
    if (sub_18195ECC4(v23, a3, v12, v13, v14, v15, v16, v17))
    {
      v20 = 0;
    }

    else
    {
      v20 = (*(a1 + 15) + 1);
      *(a1 + 15) = v20;
      sub_181956EF4(a1, a3, v20);
    }

    result = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(result + 36);
  if (*(result + 37) <= v21)
  {
    sub_18194C8AC(v18, 5, v9, v20, 0, v15, v16, v17);
    result = v18;
  }

  else
  {
    *(result + 36) = v21 + 1;
    v22 = result[17] + 40 * v21;
    *v22 = 5;
    *(v22 + 4) = v9;
    *(v22 + 8) = v20;
    *(v22 + 12) = 0;
    *(v22 + 28) = 0;
    *(v22 + 20) = 0;
    *(v22 + 36) = 0;
  }

  *(result + 68) |= 1 << v9;
  if (*(*(*(*result + 32) + 32 * v9 + 8) + 17))
  {
    *(result + 69) |= 1 << v9;
  }

LABEL_17:
  if (a3)
  {
    return sub_1819439E0(*a1, a3);
  }

  return result;
}

void *sub_18195295C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, unsigned int **a6, unsigned __int8 *a7, int a8)
{
  v13 = *a1;
  v20 = sub_1818CAE18(a1, 128, a2, a7, a8);
  if (!v20)
  {
    if (a3)
    {
      v22 = *a3;
      if (*a3 >= 1)
      {
        v23 = 0;
        do
        {
          v24 = a3[v23 + 1];
          if (v24)
          {
            sub_181929C84(v13, v24);
            v22 = *a3;
          }

          ++v23;
        }

        while (v23 < v22);
      }

      sub_181939EC8(v13, a3);
    }

    if (a6)
    {
      sub_18194E51C(v13, a6);
    }

LABEL_21:
    if (!a4)
    {
      return v20;
    }

LABEL_22:
    sub_1818BB408(v13, a4, 1);
    return v20;
  }

  if (*(a1 + 302) <= 1u)
  {
    v21 = sub_1818CB220(v13, a4, 1);
  }

  else
  {
    v21 = a4;
    a4 = 0;
  }

  v20[2] = v21;
  v20[7] = a3;
  v20[8] = a6;
  *(v20 + 1) = a5;
  if (!a6)
  {
    goto LABEL_21;
  }

  v25 = *a6;
  if (!*a6)
  {
    goto LABEL_21;
  }

  v26 = *v25;
  if (v26 < 1)
  {
    goto LABEL_21;
  }

  v27 = (v25 + 25);
  while ((*v27 & 0x20) == 0)
  {
    v27 += 12;
    if (!--v26)
    {
      goto LABEL_21;
    }
  }

  v29 = *(v27 - 1);
  v30 = v29 == 3 || v29 == 0;
  v31 = "LAST";
  if (v30)
  {
    v31 = "FIRST";
  }

  sub_181910730(a1, "unsupported use of NULLS %s", v14, v15, v16, v17, v18, v19, v31);
  if (a4)
  {
    goto LABEL_22;
  }

  return v20;
}

void *sub_181952AE4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5)
{
  v7 = *a1;
  v8 = sub_1818CAE18(a1, 129, a2, a4, a5);
  if (v8)
  {
    if (*(a1 + 302) <= 1u)
    {
      if (a3)
      {
        v9 = sub_1818C7FEC(v7, a3, 1, 0);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = a3;
      a3 = 0;
    }

    v8[5] = v9;
    *(v8 + 1) = 11;
  }

  if (a3)
  {
    sub_1819439E0(v7, a3);
  }

  return v8;
}

uint64_t sub_181952B80(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a1)
  {
    v8 = sub_181929E8C(a1, 0x60uLL, 0x1030040FE2BAAC3);
    if (v8)
    {
LABEL_3:
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *v8 = 2955;
      *(v8 + 16) = a2;
      *(v8 + 72) = sub_181989258(a1, a3, a4);
      return v8;
    }
  }

  else
  {
    v8 = sub_181902484(96, 0x1030040FE2BAAC3);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
    sub_1818BB408(a1, a2, 1);
  }

  return v8;
}

void *sub_181952C44(void *a1, void *a2, uint64_t a3, uint64_t m, uint64_t k, uint64_t n, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (*(*a1 + 103))
  {
    goto LABEL_68;
  }

  v10 = a3;
  if (*(v9 + 197))
  {
    goto LABEL_3;
  }

  v33 = *(v9 + 44);
  v34 = *(*(v9 + 32) + 24);
  *(v9 + 100) = *(v34 + 113);
  if ((*(v34 + 114) & 1) == 0)
  {
    v35 = sub_18189F330(v9, 0, a1 + 1, 0, k, n, a7, a8);
    if (v35)
    {
LABEL_64:
      *(a1 + 6) = v35;
      ++*(a1 + 13);
      goto LABEL_68;
    }
  }

  v36 = *(v9 + 40);
  if (v36 >= 2)
  {
    v37 = 32 * v36 - 8;
    do
    {
      if ((*(*(*(v9 + 32) + v37) + 114) & 1) == 0)
      {
        v35 = sub_18189F330(v9, (v36 - 1), a1 + 1, 0, k, n, a7, a8);
        if (v35)
        {
          goto LABEL_64;
        }
      }

      --v36;
      v37 -= 32;
    }

    while ((v36 + 1) > 2);
  }

  if ((v33 & 1) == 0)
  {
    *(v9 + 44) &= ~1u;
  }

  if (*(v9 + 111))
  {
    *(v9 + 44) |= 0x10u;
  }

LABEL_3:
  v12 = a2[1];
  v13 = a2[9];
  v14 = *(v9 + 40);
  if (v14 < 1)
  {
LABEL_39:
    if (v10)
    {
      v25 = *a1;
      v26 = *(*a1 + 40);
      if (v26 >= 1)
      {
        for (i = 0; i < v26; ++i)
        {
          v30 = *(v25 + 32) + 32 * i;
          if (*(v30 + 8))
          {
            if (v13)
            {
              v31 = *v30;
              for (j = v13; ; ++j)
              {
                if (*j == *v31)
                {
                  if (!*j)
                  {
                    break;
                  }
                }

                else if (byte_181A20298[*j] != byte_181A20298[*v31])
                {
                  goto LABEL_46;
                }

                ++v31;
              }
            }

            if (a1[19])
            {
              v28 = a1[19];
            }

            else
            {
              v28 = a1;
            }

            v29 = *(v28 + 116);
            if ((v29 & (1 << i)) == 0)
            {
              *(v28 + 116) = v29 | (1 << i);
              if (i == 1)
              {
                sub_1819108F4(v28);
                v26 = *(v25 + 40);
              }
            }
          }

LABEL_46:
          ;
        }
      }
    }

    else
    {
      sub_181910730(a1, "no such trigger: %S", a3, m, k, n, a7, a8, a2 + 8);
    }

    *(a1 + 43) |= 8u;
    goto LABEL_68;
  }

  v15 = 0;
  v16 = *(v9 + 32);
LABEL_8:
  a3 = v15 < 2;
  v19 = v15 ^ a3;
  if (v13)
  {
    m = *(v16 + 32 * v19);
    for (k = a2[9]; ; ++k)
    {
      n = *m;
      a7 = *k;
      if (n == a7)
      {
        if (!*m)
        {
          break;
        }
      }

      else
      {
        n = byte_181A20298[*m];
        a7 = byte_181A20298[*k];
        if (n != a7)
        {
          if (v15 == a3)
          {
            a3 = "main";
            for (m = a2[9]; ; ++m)
            {
              n = *m;
              if (*a3 == n)
              {
                if (!*a3)
                {
                  goto LABEL_14;
                }
              }

              else
              {
                k = byte_181A20298[*a3];
                n = byte_181A20298[*m];
                if (k != n)
                {
                  break;
                }
              }

              ++a3;
            }
          }

LABEL_7:
          if (++v15 == v14)
          {
            goto LABEL_39;
          }

          goto LABEL_8;
        }
      }

      ++m;
    }
  }

LABEL_14:
  v20 = *v12;
  if (*v12)
  {
    LODWORD(a3) = 0;
    v21 = v12 + 1;
    do
    {
      a3 = -1640531535 * (a3 + (v20 & 0xDF));
      v22 = *v21++;
      v20 = v22;
    }

    while (v22);
  }

  else
  {
    a3 = 0;
  }

  v23 = *(v16 + 32 * v19 + 24);
  v24 = (v23 + 56);
  k = *(v23 + 72);
  if (k)
  {
    v24 = (k + 16 * (a3 % *v24));
    m = *v24;
    if (!m)
    {
      goto LABEL_5;
    }

LABEL_30:
    v17 = (v24 + 2);
    do
    {
      v17 = *v17;
      k = *(v17 + 8);
      if (a3 == k)
      {
        k = v17[3];
        for (n = a2[1]; ; ++n)
        {
          a7 = *k;
          a8 = *n;
          if (a7 == a8)
          {
            if (!*k)
            {
              goto LABEL_6;
            }
          }

          else
          {
            a7 = byte_181A20298[*k];
            a8 = byte_181A20298[*n];
            if (a7 != a8)
            {
              break;
            }
          }

          ++k;
        }
      }

      m = (m - 1);
    }

    while (m);
  }

  else
  {
    m = *(v23 + 60);
    if (m)
    {
      goto LABEL_30;
    }
  }

LABEL_5:
  v17 = &qword_1EA831A30;
LABEL_6:
  v18 = v17[2];
  if (!v18)
  {
    goto LABEL_7;
  }

  sub_18196418C(a1, v18, a3, m, k, n, a7, a8);
LABEL_68:

  return sub_1818BB5B0(v9, a2);
}

void sub_181953020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *a1;
  if (*(*a1 + 197))
  {
    goto LABEL_2;
  }

  v34 = *(v12 + 44);
  v35 = *(*(v12 + 32) + 24);
  *(v12 + 100) = *(v35 + 113);
  if ((*(v35 + 114) & 1) == 0)
  {
    v36 = sub_18189F330(v12, 0, a1 + 1, 0, a5, a6, a7, a8);
    if (v36)
    {
LABEL_28:
      *(a1 + 6) = v36;
      ++*(a1 + 13);
      return;
    }
  }

  v37 = *(v12 + 40);
  if (v37 >= 2)
  {
    v38 = 32 * v37 - 8;
    do
    {
      if ((*(*(*(v12 + 32) + v38) + 114) & 1) == 0)
      {
        v36 = sub_18189F330(v12, (v37 - 1), a1 + 1, 0, a5, a6, a7, a8);
        if (v36)
        {
          goto LABEL_28;
        }
      }

      --v37;
      v38 -= 32;
    }

    while ((v37 + 1) > 2);
  }

  if ((v34 & 1) == 0)
  {
    *(v12 + 44) &= ~1u;
  }

  if (*(v12 + 111))
  {
    *(v12 + 44) |= 0x10u;
  }

LABEL_2:
  if (!a2)
  {
    v39 = *a1;
    v40 = *(*a1 + 40);
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = *(v39 + 32);
      do
      {
        v43 = *(*(v42 + 24) + 16);
        if (v43)
        {
          do
          {
            v44 = v43[2];
            if (*(v44 + 63) != 1)
            {
              for (i = *(v44 + 16); i; i = *(i + 40))
              {
                v46 = *(v44 + 96);
                if (v46)
                {
                  v47 = (*(*a1 + 32) + 24);
                  v48 = -1;
                  do
                  {
                    v49 = *v47;
                    v47 += 4;
                    ++v48;
                  }

                  while (v49 != v46);
                }

                else
                {
                  v48 = -32768;
                }

                if (a1[19])
                {
                  v50 = a1[19];
                }

                else
                {
                  v50 = a1;
                }

                v51 = *(v50 + 116);
                v52 = 1 << v48;
                if ((v51 & (1 << v48)) == 0)
                {
                  *(v50 + 116) = v51 | v52;
                  if (v48 == 1)
                  {
                    sub_1819108F4(v50);
                  }
                }

                *(v50 + 112) |= v52;
                sub_181962568(a1, i, 0xFFFFFFFFLL, a4, a5, a6, a7, a8);
              }
            }

            v43 = *v43;
          }

          while (v43);
          v40 = *(v39 + 40);
        }

        ++v41;
        v42 += 32;
      }

      while (v41 < v40);
    }

    return;
  }

  if (a3 && *a3)
  {
LABEL_71:
    v57 = *a1;
    if (*(a3 + 8))
    {
      if (*(v57 + 197))
      {
        v58 = "corrupt database";
        goto LABEL_74;
      }

      v59 = sub_18195D514(v57, a2);
      v60 = a3;
      if ((v59 & 0x80000000) != 0)
      {
        sub_181910730(a1, "unknown database %T", v61, v62, v63, v64, v65, v66, a2);
        return;
      }
    }

    else
    {
      v59 = *(v57 + 196);
      v60 = a2;
    }

    v67 = *v60;
    if (!*v60)
    {
      return;
    }

    v68 = *(v60 + 8);
    v69 = sub_181929E8C(v12, v68 + 1, 1565185748);
    if (!v69)
    {
      return;
    }

    v16 = v69;
    memcpy(v69, v67, v68);
    v16[v68] = 0;
    v70 = *v16;
    if (byte_181A204C8[*v16] < 0)
    {
      v71 = 0;
      if (v70 == 91)
      {
        v70 = 93;
      }

      for (j = 1; ; ++j)
      {
        v73 = j;
        v74 = v16[j];
        if (v74 == v70)
        {
          ++j;
          LOBYTE(v74) = v70;
          if (v16[v73 + 1] != v70)
          {
            break;
          }
        }

        v16[v71++] = v74;
      }

      v16[v71] = 0;
    }

    if (*(a3 + 8))
    {
      v75 = *(*(v12 + 32) + 32 * v59);
    }

    else
    {
      v75 = 0;
    }

    v93 = sub_181917F20(v12, v16, v75);
    if (v93)
    {
      v99 = v93;
      if (*(v93 + 63) != 1)
      {
        for (k = *(v93 + 16); k; k = *(k + 40))
        {
          v101 = *(v99 + 96);
          if (v101)
          {
            v102 = (*(*a1 + 32) + 24);
            v103 = -1;
            do
            {
              v104 = *v102;
              v102 += 4;
              ++v103;
            }

            while (v104 != v101);
          }

          else
          {
            v103 = -32768;
          }

          if (a1[19])
          {
            v105 = a1[19];
          }

          else
          {
            v105 = a1;
          }

          v106 = *(v105 + 116);
          v107 = 1 << v103;
          if ((v106 & (1 << v103)) == 0)
          {
            *(v105 + 116) = v106 | v107;
            if (v103 == 1)
            {
              sub_1819108F4(v105);
            }
          }

          *(v105 + 112) |= v107;
          sub_181962568(a1, k, 0xFFFFFFFFLL, v94, v95, v96, v97, v98);
        }
      }

      v92 = v12;
      goto LABEL_144;
    }

    v108 = sub_1819495FC(v12, v16, v75);
    sub_181929C84(v12, v16);
    if (v108)
    {
      v109 = *(*(v108 + 24) + 96);
      if (v109)
      {
        v110 = (*(v12 + 32) + 24);
        v111 = -1;
        do
        {
          v112 = *v110;
          v110 += 4;
          ++v111;
        }

        while (v112 != v109);
      }

      else
      {
        v111 = -32768;
      }

      sub_18195D3A8(a1, 0, v111);

      sub_181962568(a1, v108, 0xFFFFFFFFLL, v113, v114, v115, v116, v117);
      return;
    }

    v58 = "unable to identify the object to be reindexed";
LABEL_74:

    sub_181910730(a1, v58, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  v13 = *a2;
  if (!*a2)
  {
    return;
  }

  v14 = *(a2 + 8);
  v15 = sub_181929E8C(*a1, v14 + 1, 1565185748);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  memcpy(v15, v13, v14);
  v16[v14] = 0;
  v22 = *v16;
  if (byte_181A204C8[*v16] < 0)
  {
    v23 = 0;
    if (v22 == 91)
    {
      v22 = 93;
    }

    for (m = 1; ; ++m)
    {
      v25 = m;
      v26 = v16[m];
      if (v26 == v22)
      {
        ++m;
        LOBYTE(v26) = v22;
        if (v16[v25 + 1] != v22)
        {
          break;
        }
      }

      v16[v23++] = v26;
    }

    v16[v23] = 0;
    v22 = *v16;
  }

  v27 = 0;
  if (v22)
  {
    v28 = (v16 + 1);
    do
    {
      v27 = -1640531535 * (v27 + (v22 & 0xDF));
      v29 = *v28++;
      LOBYTE(v22) = v29;
    }

    while (v29);
  }

  v30 = (v12 + 640);
  v31 = *(v12 + 656);
  if (v31)
  {
    v30 = (v31 + 16 * (v27 % *v30));
    v32 = *v30;
    if (*v30)
    {
      goto LABEL_20;
    }

LABEL_64:
    v33 = &qword_1EA831A30;
    goto LABEL_65;
  }

  v32 = *(v12 + 644);
  if (!v32)
  {
    goto LABEL_64;
  }

LABEL_20:
  v33 = (v30 + 2);
  do
  {
    v33 = *v33;
    if (v27 == *(v33 + 8))
    {
      v53 = v33[3];
      for (n = v16; ; ++n)
      {
        if (*v53 == *n)
        {
          if (!*v53)
          {
            goto LABEL_65;
          }
        }

        else if (byte_181A20298[*v53] != byte_181A20298[*n])
        {
          break;
        }

        ++v53;
      }
    }

    --v32;
  }

  while (v32);
  v33 = &qword_1EA831A30;
LABEL_65:
  v55 = v33[2];
  if (v55)
  {
    v56 = v55 + 40 * *(v12 + 100) == 40;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    sub_181929C84(v12, v16);
    goto LABEL_71;
  }

  v118 = v12;
  v119 = *a1;
  v76 = *(*a1 + 40);
  if (v76 < 1)
  {
    goto LABEL_123;
  }

  v77 = 0;
  v78 = *(v119 + 32);
  while (2)
  {
    v79 = *(*(v78 + 24) + 16);
    if (!v79)
    {
      goto LABEL_94;
    }

    v120 = v77;
    while (2)
    {
      v80 = v79[2];
      if (*(v80 + 63) == 1)
      {
        goto LABEL_97;
      }

      v81 = *(v80 + 16);
      if (!v81)
      {
        goto LABEL_97;
      }

      while (2)
      {
        if (!*(v81 + 96))
        {
          goto LABEL_102;
        }

        v82 = 0;
        while (*(*(v81 + 8) + 2 * v82) < 0)
        {
LABEL_105:
          if (++v82 == *(v81 + 96))
          {
            goto LABEL_102;
          }
        }

        v83 = *(*(v81 + 64) + 8 * v82);
        for (ii = v16; *v83 != *ii; ++ii)
        {
          if (byte_181A20298[*v83] != byte_181A20298[*ii])
          {
            goto LABEL_105;
          }

LABEL_109:
          ++v83;
        }

        if (*v83)
        {
          goto LABEL_109;
        }

        v85 = *(v80 + 96);
        if (v85)
        {
          v86 = (*(*a1 + 32) + 24);
          v87 = -1;
          do
          {
            v88 = *v86;
            v86 += 4;
            ++v87;
          }

          while (v88 != v85);
        }

        else
        {
          v87 = -32768;
        }

        if (a1[19])
        {
          v89 = a1[19];
        }

        else
        {
          v89 = a1;
        }

        v90 = *(v89 + 116);
        v91 = 1 << v87;
        if ((v90 & (1 << v87)) == 0)
        {
          *(v89 + 116) = v90 | v91;
          if (v87 == 1)
          {
            sub_1819108F4(v89);
          }
        }

        *(v89 + 112) |= v91;
        sub_181962568(a1, v81, 0xFFFFFFFFLL, v17, v18, v19, v20, v21);
LABEL_102:
        v81 = *(v81 + 40);
        if (v81)
        {
          continue;
        }

        break;
      }

LABEL_97:
      v79 = *v79;
      if (v79)
      {
        continue;
      }

      break;
    }

    v76 = *(v119 + 40);
    v77 = v120;
LABEL_94:
    ++v77;
    v78 += 32;
    if (v77 < v76)
    {
      continue;
    }

    break;
  }

LABEL_123:
  v92 = v118;
LABEL_144:

  sub_181929C84(v92, v16);
}

void sub_18195383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *a1;
  if (!*(*a1 + 197))
  {
    v12 = *(v11 + 44);
    v13 = *(*(v11 + 32) + 24);
    *(v11 + 100) = *(v13 + 113);
    if ((*(v13 + 114) & 1) != 0 || (v14 = sub_18189F330(v11, 0, (a1 + 8), 0, a5, a6, a7, a8)) == 0)
    {
      v15 = *(v11 + 40);
      if (v15 < 2)
      {
LABEL_19:
        if ((v12 & 1) == 0)
        {
          *(v11 + 44) &= ~1u;
        }

        if (*(v11 + 111))
        {
          *(v11 + 44) |= 0x10u;
        }

        goto LABEL_2;
      }

      v16 = 32 * v15 - 8;
      while (1)
      {
        if ((*(*(*(v11 + 32) + v16) + 114) & 1) == 0)
        {
          v14 = sub_18189F330(v11, (v15 - 1), (a1 + 8), 0, a5, a6, a7, a8);
          if (v14)
          {
            break;
          }
        }

        --v15;
        v16 -= 32;
        if ((v15 + 1) <= 2)
        {
          goto LABEL_19;
        }
      }
    }

    *(a1 + 24) = v14;
    ++*(a1 + 52);
    return;
  }

LABEL_2:
  if (!v9)
  {
    if (*(v11 + 40) >= 1)
    {
      sub_18198B5C8(a1, 0, a3, a4, a5, a6, a7, a8);
      if (*(v11 + 40) >= 3)
      {
        v17 = 2;
        do
        {
          sub_18198B5C8(a1, v17, a3, a4, a5, a6, a7, a8);
          v17 = (v17 + 1);
        }

        while (v17 < *(v11 + 40));
      }
    }

    goto LABEL_62;
  }

  if (!*(a3 + 8))
  {
    v18 = sub_18195D514(v11, v9);
    if ((v18 & 0x80000000) == 0)
    {
      sub_18198B5C8(a1, v18, a3, a4, a5, a6, a7, a8);
      goto LABEL_62;
    }

    if (!*(a3 + 8))
    {
      v20 = 0;
      goto LABEL_33;
    }
  }

  if (!*(*a1 + 197))
  {
    v19 = sub_18195D514(*a1, v9);
    if ((v19 & 0x80000000) != 0)
    {
      sub_181910730(a1, "unknown database %T", a3, a4, a5, a6, a7, a8, v9);
      goto LABEL_62;
    }

    if (*(a3 + 8))
    {
      v20 = *(*(v11 + 32) + 32 * v19);
    }

    else
    {
      v20 = 0;
    }

    v9 = a3;
LABEL_33:
    v21 = *v9;
    if (*v9)
    {
      v22 = *(v9 + 8);
      v23 = sub_181929E8C(v11, v22 + 1, 1565185748);
      if (v23)
      {
        v24 = v23;
        memcpy(v23, v21, v22);
        v24[v22] = 0;
        v25 = *v24;
        if (byte_181A204C8[*v24] < 0)
        {
          v26 = 0;
          if (v25 == 91)
          {
            v25 = 93;
          }

          for (i = 1; ; ++i)
          {
            v28 = i;
            v29 = v24[i];
            if (v29 == v25)
            {
              ++i;
              LOBYTE(v29) = v25;
              if (v24[v28 + 1] != v25)
              {
                break;
              }
            }

            v24[v26++] = v29;
          }

          v24[v26] = 0;
        }

        v30 = sub_1819495FC(v11, v24, v20);
        if (v30)
        {
          v35 = v30;
          v36 = *(v30 + 24);
          v37 = *(v36 + 96);
          if (v37)
          {
            v38 = (*(*a1 + 32) + 24);
            LODWORD(v39) = -1;
            do
            {
              v40 = *v38;
              v38 += 4;
              v39 = (v39 + 1);
            }

            while (v40 != v37);
          }

          else
          {
            v39 = 4294934528;
          }

          if (*(a1 + 152))
          {
            v47 = *(a1 + 152);
          }

          else
          {
            v47 = a1;
          }

          v48 = *(v47 + 116);
          v49 = 1 << v39;
          if ((v48 & (1 << v39)) == 0)
          {
            *(v47 + 116) = v48 | v49;
            if (v39 == 1)
            {
              sub_1819108F4(v47);
            }
          }

          *(v47 + 112) |= v49;
          v50 = *(a1 + 56);
          *(a1 + 56) = v50 + 3;
          sub_18198B8A8(a1, v39, v50, *v35, "idx", v32, v33, v34);
          sub_18198BB38(a1, v36, v35, v50, (*(a1 + 60) + 1), *(a1 + 56), v51, v52);
          v60 = sub_1818E7DFC(a1, v53, v54, v55, v56, v57, v58, v59);
          if (v60)
          {
            v64 = *(v60 + 144);
            if (*(v60 + 148) <= v64)
            {
              sub_18194C8AC(v60, 150, v39, 0, 0, v61, v62, v63);
            }

            else
            {
              *(v60 + 144) = v64 + 1;
              v65 = *(v60 + 136) + 40 * v64;
              *v65 = 150;
              *(v65 + 4) = v39;
              *(v65 + 8) = 0u;
              *(v65 + 24) = 0u;
            }
          }
        }

        else
        {
          v41 = sub_1818CA520(a1, 0, v24, v20, v31, v32, v33, v34);
          if (v41)
          {
            sub_18198B720(a1, v41, 0, v42, v43, v44, v45, v46);
          }
        }

        sub_181929C84(v11, v24);
      }
    }

    goto LABEL_62;
  }

  sub_181910730(a1, "corrupt database", a3, a4, a5, a6, a7, a8, v72);
LABEL_62:
  if (!*(v11 + 112))
  {
    v66 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v66)
    {
      v70 = *(v66 + 144);
      if (*(v66 + 148) <= v70)
      {

        sub_18194C8AC(v66, 166, 0, 0, 0, v67, v68, v69);
      }

      else
      {
        *(v66 + 144) = v70 + 1;
        v71 = *(v66 + 136) + 40 * v70;
        *v71 = -90;
        *(v71 + 1) = 0u;
        *(v71 + 17) = 0u;
        *(v71 + 32) = 0;
      }
    }
  }
}

void *sub_181953CC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*(*a1 + 103))
  {
    goto LABEL_2;
  }

  v11 = (a2 + 9);
  if (*(a2 + 35))
  {
    v13 = *v11;
    v14 = *(v8 + 32);
    if (v13)
    {
      v15 = (v14 + 24);
      v16 = 0xFFFFFFFF00000000;
      do
      {
        v17 = *v15;
        v15 += 4;
        v16 += 0x100000000;
      }

      while (v17 != v13);
      v18 = v16 >> 32;
    }

    else
    {
      v18 = -32768;
    }

    v12 = a3;
    v11 = (v14 + 32 * v18);
  }

  else
  {
    v12 = a3;
  }

  v19 = a2;
  v20 = sub_1818CA520(a1, 0, a2[1], *v11, a5, a6, a7, a8);
  a2 = v19;
  if (!v20)
  {
    goto LABEL_2;
  }

  v21 = v20;
  v22 = v12;
  v23 = *(v20 + 96);
  if (v23)
  {
    v24 = (*(*a1 + 32) + 24);
    LODWORD(v25) = -1;
    do
    {
      v26 = *v24;
      v24 += 4;
      v25 = (v25 + 1);
    }

    while (v26 != v23);
    if (!v22)
    {
LABEL_2:

      return sub_1818BB5B0(v8, a2);
    }
  }

  else
  {
    v25 = 4294934528;
    if (!v22)
    {
      goto LABEL_2;
    }
  }

  v27 = *v22;
  if (!*v22)
  {
    goto LABEL_2;
  }

  v28 = *(*(v8 + 32) + 32 * v25);
  v29 = *(v22 + 8);
  v30 = sub_181929E8C(v8, v29 + 1, 1565185748);
  a2 = v19;
  if (!v30)
  {
    goto LABEL_2;
  }

  v31 = v30;
  memcpy(v30, v27, v29);
  v31[v29] = 0;
  if (byte_181A204C8[*v31] < 0)
  {
    v32 = 0;
    if (*v31 == 91)
    {
      v33 = 93;
    }

    else
    {
      v33 = *v31;
    }

    for (i = 1; ; ++i)
    {
      v35 = i;
      v36 = v31[i];
      if (v36 == v33)
      {
        ++i;
        LOBYTE(v36) = v33;
        if (v31[v35 + 1] != v33)
        {
          break;
        }
      }

      v31[v32++] = v36;
    }

    v31[v32] = 0;
  }

  if (sub_181917F20(v8, v31, v28) || sub_1819495FC(v8, v31, v28) || *(v21 + 63) == 1 && (!*v21 ? (v43 = 0) : (v43 = strlen(*v21) & 0x3FFFFFFF), !sqlite3_strnicmp(v31, *v21, v43) && (v44 = &v31[v43], *v44 == 95) && (v45 = sub_1819493D0((v8 + 568), *v21[9])) != 0 && **v45 >= 3 && (v46 = *(*v45 + 184)) != 0 && v46(v44 + 1)))
  {
    sub_181910730(a1, "there is already another table or index with this name: %s", v37, v38, v39, v40, v41, v42, v31);
  }

  else
  {
    if (sub_18198D540(a1, v21, v37, v38, v39, v40, v41, v42) || sub_18195CF88(a1, v31, "table", v31, v47, v48, v49, v50))
    {
      goto LABEL_34;
    }

    v56 = *v21;
    if (*(v21 + 63) == 2)
    {
      sub_181910730(a1, "view %s may not be altered", v51, v56, v52, v53, v54, v55, *v21);
    }

    else if (!sub_18195CEF8(a1, 26, v28, v56, 0))
    {
      if (*(v21 + 63) != 1 && *(v21 + 27) > 0)
      {
        goto LABEL_61;
      }

      if (sub_181960D84(a1, v21, v58, v59, v60, v61, v62, v63))
      {
        goto LABEL_34;
      }

      if (*(v21 + 63) == 1)
      {
        v64 = (v21 + 10);
        do
        {
          v65 = *v64;
          v66 = *v64;
          v67 = *v66;
          v64 = (v66 + 5);
        }

        while (v67 != v8);
        if (!*(*v65[2] + 152))
        {
          v65 = 0;
        }

        v98 = v65;
      }

      else
      {
LABEL_61:
        v98 = 0;
      }

      v68 = sub_1818E7DFC(a1, v57, v58, v59, v60, v61, v62, v63);
      if (v68)
      {
        v69 = v68;
        v70 = *(a1 + 152);
        if (!v70)
        {
          v70 = a1;
        }

        *(v70 + 33) = 1;
        sub_18194E4C4(*v21, -1);
        sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, %d) WHERE (type!='index' OR tbl_name=%Q COLLATE nocase)AND   name NOT LIKE 'sqliteX_%%' ESCAPE 'X'", v71, v72, v73, v74, v75, v76, v28);
        sub_1818F73B0(a1, "UPDATE %Q.sqlite_master SET tbl_name = %Q, name = CASE WHEN type='table' THEN %Q WHEN name LIKE 'sqliteX_autoindex%%' ESCAPE 'X'      AND type='index' THEN 'sqlite_autoindex_' || %Q || substr(name,%d+18) ELSE name END WHERE tbl_name=%Q COLLATE nocase AND (type='table' OR type='index' OR type='trigger');", v77, v78, v79, v80, v81, v82, v28);
        if (sub_181917F20(v8, "sqlite_sequence", v28))
        {
          sub_1818F73B0(a1, "UPDATE %w.sqlite_sequence set name = %Q WHERE name = %Q", v83, v84, v85, v86, v87, v88, v28);
        }

        if (v25 != 1)
        {
          sub_1818F73B0(a1, "UPDATE sqlite_temp_schema SET sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, 1), tbl_name = CASE WHEN tbl_name=%Q COLLATE nocase AND   sqlite_rename_test(%Q, sql, type, name, 1, 'after rename', 0) THEN %Q ELSE tbl_name END WHERE type IN ('view', 'trigger')", v83, v84, v85, v86, v87, v88, v28);
        }

        if (v98)
        {
          v89 = (*(a1 + 60) + 1);
          *(a1 + 60) = v89;
          v90 = sub_1818A2964(v69, 118, 0, v89, 0, v86, v87, v88);
          sub_1818B49F8(v69, v90, v31, 0);
          v94 = sub_1818A2964(v69, 177, v89, 0, 0, v91, v92, v93);
          sub_1818B49F8(v69, v94, v98, 0xFFFFFFF5);
        }

        sub_18198D740(a1, v25, 1, v84, v85, v86, v87, v88);
        sub_18198D830(a1, v28, v25 == 1, "after rename", 0, v95, v96, v97);
      }
    }
  }

LABEL_34:
  sub_1818BB5B0(v8, v19);

  return sub_181929C84(v8, v31);
}

void sub_1819541C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 52))
  {
    return;
  }

  v11 = *a1;
  v12 = *(a1 + 344);
  v13 = *(v12 + 96);
  v14 = *(*a1 + 32);
  if (v13)
  {
    v15 = (v14 + 24);
    LODWORD(v16) = -1;
    do
    {
      v17 = *v15;
      v15 += 4;
      v16 = (v16 + 1);
    }

    while (v17 != v13);
  }

  else
  {
    v16 = 4294934528;
  }

  v18 = *(v14 + 32 * v16);
  v19 = *v12 + 16;
  v20 = *(v12 + 8) + 16 * *(v12 + 54);
  v21 = *(v20 - 4);
  if (*(v20 - 4) && !*(v12 + 63) && (v35 = *(v12 + 80)) != 0 && *v35 >= v21)
  {
    v22 = *&v35[6 * (v21 - 1) + 2];
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_181917F20(*a1, (*v12 + 16), v18);
  v31 = *a1;
  v32 = *(*a1 + 528);
  if (v32 && !*(v31 + 197) && !*(a1 + 302))
  {
    v37 = v23;
    v38 = v32(*(v31 + 536), 26, v18, *v23, 0, *(a1 + 368));
    if (v38 == 1)
    {
      v39 = 23;
      v40 = "not authorized";
    }

    else
    {
      if ((v38 & 0xFFFFFFFD) == 0)
      {
        v85 = v38;
        v23 = v37;
        if (v85)
        {
          return;
        }

        goto LABEL_14;
      }

      v39 = 1;
      v40 = "authorizer malfunction";
    }

    sub_181910730(a1, v40, v25, v26, v27, v28, v29, v30, v86);
    *(a1 + 24) = v39;
    return;
  }

LABEL_14:
  v33 = *(v20 - 2);
  if (v33)
  {
    v34 = "Cannot add a PRIMARY KEY column";
    goto LABEL_18;
  }

  if (*(v12 + 16))
  {
    v34 = "Cannot add a UNIQUE column";
LABEL_18:

    sub_181910730(a1, v34, v25, v26, v27, v28, v29, v30, a9);
    return;
  }

  v87 = v23;
  if ((v33 & 0x60) != 0)
  {
    if ((v33 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    v36 = "cannot add a STORED column";
    goto LABEL_50;
  }

  if (v22 && **(v22 + 16) == 122)
  {
    v22 = 0;
  }

  if ((*(v11 + 49) & 0x40) != 0 && *(v12 + 72) && v22)
  {
    sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", v25, v26, v27, v28, v29, v30, "Cannot add a REFERENCES column with non-NULL default value");
    goto LABEL_45;
  }

  if ((*(v20 - 8) & 0xF) != 0 && v22 == 0)
  {
    v36 = "Cannot add a NOT NULL column with default value NULL";
LABEL_50:
    sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", v25, v26, v27, v28, v29, v30, v36);
    goto LABEL_51;
  }

  if (v22)
  {
LABEL_45:
    v89 = 0;
    if (sub_18194BC5C(v11, v22, 1, 65, &v89))
    {
      return;
    }

    v48 = v89;
    if (!v89)
    {
      sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", v42, v43, v44, v45, v46, v47, "Cannot add a column with non-constant default");
    }

    sub_18190B0E8(v48);
  }

LABEL_51:
  v88 = v19;
  v49 = *a2;
  if (*a2)
  {
    v50 = *(a2 + 8);
    v51 = sub_181929E8C(v11, v50 + 1, 1565185748);
    if (v51)
    {
      v52 = v51;
      memcpy(v51, v49, v50);
      *(v52 + v50) = 0;
      if (*(a2 + 8) != 1)
      {
        v59 = v52 + (*(a2 + 8) - 1);
        do
        {
          v60 = *v59;
          if (v60 != 59 && (byte_181A204C8[v60] & 1) == 0)
          {
            break;
          }

          *v59-- = 0;
        }

        while (v59 > v52);
      }

      sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = printf('%%.%ds, ',sql) || %Q || substr(sql,1+length(printf('%%.%ds',sql))) WHERE type = 'table' AND name = %Q", v53, v54, v55, v56, v57, v58, v18);
      sub_181929C84(v11, v52);
    }
  }

  v61 = sub_1818E7DFC(a1, v24, v25, v26, v27, v28, v29, v30);
  if (v61)
  {
    v66 = v61;
    if (*(a1 + 31))
    {
      v67 = *(a1 + 31) - 1;
      *(a1 + 31) = v67;
      v68 = *(a1 + 4 * v67 + 184);
    }

    else
    {
      v68 = (*(a1 + 60) + 1);
      *(a1 + 60) = v68;
    }

    v69 = *(v61 + 144);
    if (*(v61 + 148) <= v69)
    {
      sub_18194C8AC(v61, 99, v16, v68, 2, v63, v64, v65);
    }

    else
    {
      *(v61 + 144) = v69 + 1;
      v70 = *(v61 + 136) + 40 * v69;
      *v70 = 99;
      *(v70 + 4) = v16;
      *(v70 + 8) = v68;
      *(v70 + 12) = 2;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 16) = 0;
    }

    *(v66 + 272) |= 1 << v16;
    if (v16 != 1 && *(*(*(*v66 + 32) + 32 * v16 + 8) + 17))
    {
      *(v66 + 276) |= 1 << v16;
    }

    v71 = *(v66 + 144);
    if (*(v66 + 148) <= v71)
    {
      sub_18194C8AC(v66, 86, v68, 4294967294, 0, v63, v64, v65);
    }

    else
    {
      *(v66 + 144) = v71 + 1;
      v72 = *(v66 + 136) + 40 * v71;
      *v72 = 86;
      *(v72 + 4) = v68;
      *(v72 + 8) = -2;
      *(v72 + 12) = 0;
      *(v72 + 28) = 0;
      *(v72 + 20) = 0;
      *(v72 + 36) = 0;
    }

    v73 = *(v66 + 144);
    v74 = (v73 + 2);
    if (*(v66 + 148) <= v73)
    {
      sub_18194C8AC(v66, 50, v68, v74, 0, v63, v64, v65);
    }

    else
    {
      *(v66 + 144) = v73 + 1;
      v75 = *(v66 + 136) + 40 * v73;
      *v75 = 50;
      *(v75 + 4) = v68;
      *(v75 + 8) = v74;
      *(v75 + 12) = 0;
      *(v75 + 28) = 0;
      *(v75 + 20) = 0;
      *(v75 + 36) = 0;
    }

    v76 = *(v66 + 144);
    if (*(v66 + 148) <= v76)
    {
      sub_18194C8AC(v66, 100, v16, 2, 3, v63, v64, v65);
    }

    else
    {
      *(v66 + 144) = v76 + 1;
      v77 = *(v66 + 136) + 40 * v76;
      *v77 = 100;
      *(v77 + 4) = v16;
      *(v77 + 8) = 0x300000002;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0;
      *(v77 + 16) = 0;
    }

    if (v68)
    {
      v78 = *(a1 + 31);
      if (v78 <= 7)
      {
        *(a1 + 31) = v78 + 1;
        *(a1 + 4 * v78 + 184) = v68;
      }
    }

    sub_18198D740(a1, v16, 3, v74, v62, v63, v64, v65);
    if (*(v12 + 32) || (*(v20 - 8) & 0xF) != 0 && (*(v20 - 2) & 0x60) != 0 || (*(v87 + 50) & 1) != 0)
    {
      sub_1818F73B0(a1, "SELECT CASE WHEN quick_check GLOB 'CHECK*' THEN raise(ABORT,'CHECK constraint failed') WHEN quick_check GLOB 'non-* value in*' THEN raise(ABORT,'type mismatch on DEFAULT') ELSE raise(ABORT,'NOT NULL constraint failed') END  FROM pragma_quick_check(%Q,%Q) WHERE quick_check GLOB 'CHECK*' OR quick_check GLOB 'NULL*' OR quick_check GLOB 'non-* value in*'", v79, v80, v81, v82, v83, v84, v88);
    }
  }
}

void *sub_181954798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (!*(*a1 + 103))
  {
    v12 = (a2 + 72);
    if (*(a2 + 35))
    {
      v13 = *v12;
      v14 = v8[4];
      if (v13)
      {
        v15 = (v14 + 24);
        v16 = 0xFFFFFFFF00000000;
        do
        {
          v17 = *v15;
          v15 += 4;
          v16 += 0x100000000;
        }

        while (v17 != v13);
        v18 = v16 >> 32;
      }

      else
      {
        v18 = -32768;
      }

      v12 = (v14 + 32 * v18);
    }

    v19 = a2;
    v20 = sub_1818CA520(a1, 0, *(a2 + 8), *v12, a5, a6, a7, a8);
    a2 = v19;
    if (v20)
    {
      v27 = v20;
      v28 = sub_18198D540(a1, v20, v21, v22, v23, v24, v25, v26);
      a2 = v19;
      if (!v28)
      {
        v35 = *(v27 + 63);
        v36 = "view";
        if (v35 != 2)
        {
          v36 = 0;
        }

        if (v35 == 1)
        {
          v37 = "virtual table";
        }

        else
        {
          v37 = v36;
        }

        if (v37)
        {
          sub_181910730(a1, "cannot %s %s %s", v29, v30, v31, v32, v33, v34, "drop column from");
LABEL_21:
          a2 = v19;
          goto LABEL_2;
        }

        if (a3)
        {
          v38 = *a3;
          if (*a3)
          {
            v39 = *(a3 + 8);
            v40 = sub_181929E8C(v8, v39 + 1, 1565185748);
            a2 = v19;
            if (v40)
            {
              v41 = v40;
              memcpy(v40, v38, v39);
              *(v41 + v39) = 0;
              v48 = *v41;
              if (byte_181A204C8[*v41] < 0)
              {
                v49 = 0;
                if (v48 == 91)
                {
                  v50 = 93;
                }

                else
                {
                  v50 = *v41;
                }

                for (i = 1; ; ++i)
                {
                  v52 = i;
                  v53 = *(v41 + i);
                  if (v53 == v50)
                  {
                    ++i;
                    LOBYTE(v53) = v50;
                    if (*(v41 + v52 + 1) != v50)
                    {
                      break;
                    }
                  }

                  *(v41 + v49++) = v53;
                }

                *(v41 + v49) = 0;
                v48 = *v41;
              }

              v54 = 0;
              if (v48)
              {
                v55 = v41 + 1;
                v56 = v48;
                do
                {
                  v54 += byte_181A20298[v56];
                  v57 = *v55++;
                  v56 = v57;
                }

                while (v57);
              }

              v58 = *(v27 + 8);
              v59 = *(v27 + 54);
              v60 = *(v27 + (v54 & 0xF) + 104);
              v61 = (v58 + 16 * v60);
              if (*(v61 + 11) == v54)
              {
                v62 = *v61;
                for (j = v41 + 1; ; ++j)
                {
                  if (*v62 == v48)
                  {
                    if (!v48)
                    {
LABEL_54:
                      v69 = *(v58 + 16 * v60 + 14);
                      if ((v69 & 9) != 0)
                      {
                        if (v69)
                        {
                          v70 = "PRIMARY KEY";
                        }

                        else
                        {
                          v70 = "UNIQUE";
                        }

                        sub_181910730(a1, "cannot drop %s column: %s", v42, v43, v44, v45, v46, v47, v70);
                        goto LABEL_72;
                      }

                      if (v59 <= 1)
                      {
                        sub_181910730(a1, "cannot drop column %s: no other columns exist", v42, v43, v44, v45, v46, v47, v41);
                        goto LABEL_72;
                      }

                      v71 = *(v27 + 96);
                      v72 = v8[4];
                      if (v71)
                      {
                        v73 = (v72 + 24);
                        LODWORD(v74) = -1;
                        do
                        {
                          v75 = *v73;
                          v73 += 4;
                          v74 = (v74 + 1);
                        }

                        while (v75 != v71);
                      }

                      else
                      {
                        v74 = 4294934528;
                      }

                      v76 = *(v72 + 32 * v74);
                      if (!sub_18195CEF8(a1, 26, v76, *v27, v41))
                      {
                        sub_18198D830(a1, v76, v74 == 1, &byte_181A2878D, 0, v77, v78, v79);
                        sub_18198D8B8(a1, v76, v74 == 1, v80, v81, v82, v83, v84, v144);
                        sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_drop_column(%d, sql, %d) WHERE (type=='table' AND tbl_name=%Q COLLATE nocase)", v85, v86, v87, v88, v89, v90, v76);
                        sub_18198D740(a1, v74, 2, v91, v92, v93, v94, v95);
                        sub_18198D830(a1, v76, v74 == 1, "after drop column", 1, v96, v97, v98);
                        if (!*(a1 + 52) && (*(*(v27 + 8) + 16 * v60 + 14) & 0x20) == 0)
                        {
                          v145 = v60;
                          v106 = sub_1818E7DFC(a1, v99, v100, v101, v102, v103, v104, v105);
                          v107 = *(a1 + 56);
                          *(a1 + 56) = v107 + 1;
                          sub_1818B69D8(a1, v107, v74, v27, 113, v108, v109, v110);
                          v148 = sub_1818A2964(v106, 36, v107, 0, 0, v111, v112, v113);
                          v150 = *(a1 + 60);
                          v117 = (v150 + 1);
                          *(a1 + 60) = v117;
                          v146 = v150 + 1;
                          v152 = v107;
                          if ((*(v27 + 48) & 0x80) != 0)
                          {
                            v122 = v27 + 16;
                            do
                            {
                              v118 = *v122;
                              v123 = *(*v122 + 99) & 3;
                              v122 = *v122 + 40;
                            }

                            while (v123 != 2);
                            v121 = v146 + *(v118 + 96);
                            *(a1 + 60) = v121;
                            if (*(v118 + 94))
                            {
                              v124 = 0;
                              do
                              {
                                sub_1818A2964(v106, 94, v152, v124, (v150 + 2 + v124), v114, v115, v116);
                                v124 = (v124 + 1);
                                v119 = *(v118 + 94);
                              }

                              while (v124 < v119);
                              v121 = *(a1 + 60);
                            }

                            else
                            {
                              v119 = 0;
                            }

                            v120 = *(v27 + 54);
                          }

                          else
                          {
                            sub_1818A2964(v106, 135, v107, v117, 0, v114, v115, v116);
                            v118 = 0;
                            v119 = 0;
                            v120 = *(v27 + 54);
                            v121 = *(a1 + 60) + v120;
                          }

                          v147 = v121 + 1;
                          *(a1 + 60) = v121 + 1;
                          if (v120 >= 1)
                          {
                            v125 = 0;
                            v151 = v150 + 2;
                            v126 = v106;
                            while (1)
                            {
                              if (v125 != v145)
                              {
                                v127 = *(v27 + 8) + 16 * v125;
                                if ((*(v127 + 14) & 0x20) == 0)
                                {
                                  if (v118)
                                  {
                                    v128 = *(v118 + 96);
                                    if (!*(v118 + 96))
                                    {
                                      goto LABEL_85;
                                    }

                                    v129 = 0;
                                    v130 = *(v118 + 8);
                                    while (v125 << 16 >> 16 != *(v130 + 2 * v129))
                                    {
                                      if (v128 == ++v129)
                                      {
                                        LODWORD(v129) = -1;
                                        break;
                                      }
                                    }

                                    v131 = 0;
                                    while (v145 != *(v130 + 2 * v131))
                                    {
                                      if (v128 == ++v131)
                                      {
                                        LODWORD(v131) = -1;
                                        break;
                                      }
                                    }

                                    if (v129 < *(v118 + 94))
                                    {
                                      goto LABEL_85;
                                    }

                                    v132 = v151 + v129 - (v129 > v131);
                                  }

                                  else
                                  {
                                    v132 = (v151 + v119);
                                  }

                                  v153 = v119;
                                  if (v125 == *(v27 + 52))
                                  {
                                    sub_1818A2964(v126, 75, 0, v132, 0, v114, v115, v116);
                                  }

                                  else
                                  {
                                    v134 = *(v127 + 9);
                                    v133 = (v127 + 9);
                                    v149 = v134;
                                    if (v134 == 69)
                                    {
                                      *v133 = 67;
                                    }

                                    v126 = v106;
                                    sub_181959FA4(v106, v27, v152, v125, v132, v114, v115, v116);
                                    *(*(v27 + 8) + 16 * v125 + 9) = v149;
                                  }

                                  v119 = (v153 + 1);
                                  v120 = *(v27 + 54);
                                }
                              }

LABEL_85:
                              if (++v125 >= v120)
                              {
                                goto LABEL_106;
                              }
                            }
                          }

                          v126 = v106;
LABEL_106:
                          if (v119)
                          {
                            v135 = (v150 + 2);
                          }

                          else
                          {
                            ++*(a1 + 60);
                            v135 = (v150 + 2);
                            sub_1818A2964(v126, 75, 0, v135, 0, v114, v115, v116);
                            v119 = 1;
                          }

                          sub_1818A2964(v126, 97, v135, v119, v147, v114, v115, v116);
                          if (v118)
                          {
                            sub_181910A18(v126, 138, v152, v147, v135, *(v118 + 94), v137, v138);
                          }

                          else
                          {
                            sub_1818A2964(v126, 128, v152, v147, v146, v136, v137, v138);
                          }

                          v142 = *(v126 + 144);
                          if (v142 >= 1)
                          {
                            *(*(v126 + 136) + 40 * v142 - 38) = 2;
                          }

                          sub_1818A2964(v126, 39, v152, (v148 + 1), 0, v139, v140, v141);
                          if (*(*v126 + 103))
                          {
                            v143 = &byte_1EA831A58;
                          }

                          else
                          {
                            v143 = (*(v126 + 136) + 40 * v148);
                          }

                          *(v143 + 2) = *(v126 + 144);
                        }
                      }

LABEL_72:
                      sub_181929C84(v8, v41);
                      goto LABEL_21;
                    }
                  }

                  else if (byte_181A20298[*v62] != byte_181A20298[v48])
                  {
                    break;
                  }

                  ++v62;
                  v64 = *j;
                  v48 = v64;
                }
              }

              v60 = 0;
              if (v59 <= 1)
              {
                v65 = 1;
              }

              else
              {
                v65 = v59;
              }

              do
              {
                v66 = v58 + 16 * v60;
                if (*(v66 + 11) == v54)
                {
                  v67 = *v66;
                  for (k = v41; ; ++k)
                  {
                    if (*v67 == *k)
                    {
                      if (!*v67)
                      {
                        goto LABEL_54;
                      }
                    }

                    else if (byte_181A20298[*v67] != byte_181A20298[*k])
                    {
                      break;
                    }

                    ++v67;
                  }
                }

                ++v60;
              }

              while (v60 != v65);
              sub_181910730(a1, "no such column: %T", v42, v43, v44, v45, v46, v47, a3);
              goto LABEL_72;
            }
          }
        }
      }
    }
  }

LABEL_2:

  return sub_1818BB5B0(v8, a2);
}

void *sub_181954F44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (!*(*a1 + 103))
  {
    v10 = (a2 + 72);
    if (*(a2 + 35))
    {
      v11 = *v10;
      v12 = v8[4];
      if (v11)
      {
        v13 = (v12 + 24);
        v14 = 0xFFFFFFFF00000000;
        do
        {
          v15 = *v13;
          v13 += 4;
          v14 += 0x100000000;
        }

        while (v15 != v11);
        v16 = v14 >> 32;
      }

      else
      {
        v16 = -32768;
      }

      v10 = (v12 + 32 * v16);
    }

    v17 = a2;
    v18 = sub_1818CA520(a1, 0, *(a2 + 8), *v10, a5, a6, a7, a8);
    a2 = v17;
    if (v18)
    {
      v25 = v18;
      v26 = *(v18 + 63);
      if (v26 == 2)
      {
        v27 = "Cannot add a column to a view";
        goto LABEL_14;
      }

      if (v26 == 1)
      {
        v27 = "virtual tables may not be altered";
LABEL_14:
        sub_181910730(a1, v27, v19, v20, v21, v22, v23, v24, v59);
LABEL_15:
        a2 = v17;
        goto LABEL_17;
      }

      v28 = sub_18198D540(a1, v18, v19, v20, v21, v22, v23, v24);
      a2 = v17;
      if (!v28)
      {
        v30 = a1[19];
        if (!v30)
        {
          v30 = a1;
        }

        *(v30 + 33) = 1;
        v31 = *(v25 + 96);
        if (v31)
        {
          v32 = (v8[4] + 24);
          v33 = -1;
          do
          {
            v34 = *v32;
            v32 += 4;
            ++v33;
          }

          while (v34 != v31);
          if (!v8)
          {
            v35 = sub_181902484(120, 0x10B2040A26A9E65);
            v60 = 1;
            goto LABEL_29;
          }
        }

        else
        {
          v33 = -32768;
        }

        v35 = sub_181929E8C(v8, 0x78uLL, 0x10B2040A26A9E65);
        v60 = 0;
LABEL_29:
        a2 = v17;
        if (!v35)
        {
          goto LABEL_17;
        }

        *(v35 + 112) = 0;
        *(v35 + 80) = 0u;
        *(v35 + 96) = 0u;
        *(v35 + 48) = 0u;
        *(v35 + 64) = 0u;
        *(v35 + 16) = 0u;
        *(v35 + 32) = 0u;
        *v35 = 0u;
        a1[43] = v35;
        *(v35 + 44) = 1;
        v36 = *(v25 + 54);
        *(v35 + 54) = v36;
        v38 = v36 - 1;
        v37 = v36 < 1;
        v39 = v36 + 6;
        if (!v37)
        {
          v39 = v38;
        }

        *(v35 + 8) = sub_18190C56C(v8, 16 * ((v39 & 0xFFFFFFF8) + 8), 0x1010040FDD9F14CLL);
        v46 = sub_1818A8BAC(v8, "sqlite_altertab_%s", v40, v41, v42, v43, v44, v45, *v25);
        a2 = v17;
        v47 = v46;
        *v35 = v46;
        v48 = *(v35 + 8);
        if (!v48 || !v47)
        {
          goto LABEL_17;
        }

        memcpy(v48, *(v25 + 8), 16 * *(v35 + 54));
        if (*(v35 + 54) < 1)
        {
LABEL_48:
          *(v35 + 80) = sub_1818C83A0(v8, *(v25 + 80), 0);
          *(v35 + 96) = *(v8[4] + 32 * v33 + 24);
          *(v35 + 64) = *(v25 + 64);
          goto LABEL_15;
        }

        v49 = 0;
        v61 = v35;
        while (1)
        {
          v51 = *(v35 + 8) + 16 * v49;
          v52 = *v51;
          if (*v51)
          {
            v53 = strlen(*v51);
            v54 = v53;
            if (v60)
            {
              v55 = sub_181902484(v53 + 1, 354097263);
              if (v55)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v55 = sub_181929E8C(v8, v53 + 1, 354097263);
              if (v55)
              {
LABEL_43:
                memcpy(v55, v52, v54 + 1);
                *v51 = v55;
                v56 = *v55;
                if (*v55)
                {
                  v50 = 0;
                  v57 = v55 + 1;
                  do
                  {
                    v50 += byte_181A20298[v56];
                    v58 = *v57++;
                    v56 = v58;
                  }

                  while (v58);
                }

                else
                {
                  v50 = 0;
                }

                goto LABEL_37;
              }
            }
          }

          v50 = 0;
          *v51 = 0;
LABEL_37:
          *(v51 + 11) = v50;
          ++v49;
          v35 = v61;
          if (v49 >= *(v61 + 54))
          {
            goto LABEL_48;
          }
        }
      }
    }
  }

LABEL_17:

  return sub_1818BB5B0(v8, a2);
}

void *sub_181955298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v13 = (a2 + 72);
  if (*(a2 + 35))
  {
    v14 = *v13;
    v15 = v12[4];
    if (v14)
    {
      v16 = (v15 + 24);
      v17 = 0xFFFFFFFF00000000;
      do
      {
        v18 = *v16;
        v16 += 4;
        v17 += 0x100000000;
      }

      while (v18 != v14);
      v19 = v17 >> 32;
    }

    else
    {
      v19 = -32768;
    }

    v13 = (v15 + 32 * v19);
  }

  v20 = sub_1818CA520(a1, 0, *(a2 + 8), *v13, a5, a6, a7, a8);
  if (!v20)
  {
    goto LABEL_17;
  }

  v27 = v20;
  if (sub_18198D540(a1, v20, v21, v22, v23, v24, v25, v26))
  {
    goto LABEL_17;
  }

  v34 = *(v27 + 63);
  v35 = "view";
  if (v34 != 2)
  {
    v35 = 0;
  }

  if (v34 == 1)
  {
    v36 = "virtual table";
  }

  else
  {
    v36 = v35;
  }

  if (v36)
  {
    sub_181910730(a1, "cannot %s %s %s", v28, v29, v30, v31, v32, v33, "rename columns of");
    goto LABEL_17;
  }

  v38 = v27[12];
  v39 = v12[4];
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

  v43 = *(v39 + 32 * v41);
  v44 = *a1;
  v45 = *(*a1 + 528);
  v114 = v43;
  if (!v45 || *(v44 + 197) || *(a1 + 302))
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v104 = v45(*(v44 + 536), 26, v43, *v27, 0, *(a1 + 368));
  if (v104 == 1)
  {
    v111 = 23;
    v112 = "not authorized";
LABEL_73:
    sub_181910730(a1, v112, v105, v106, v107, v108, v109, v110, v113);
    *(a1 + 24) = v111;
    goto LABEL_17;
  }

  if ((v104 & 0xFFFFFFFD) != 0)
  {
    v111 = 1;
    v112 = "authorizer malfunction";
    goto LABEL_73;
  }

  if (!a3 || v104)
  {
LABEL_17:

    return sub_1818BB5B0(v12, a2);
  }

LABEL_29:
  v46 = *a3;
  if (!*a3)
  {
    goto LABEL_17;
  }

  v47 = *(a3 + 8);
  v48 = sub_181929E8C(v12, v47 + 1, 1565185748);
  if (!v48)
  {
    goto LABEL_17;
  }

  v49 = v48;
  memcpy(v48, v46, v47);
  *(v49 + v47) = 0;
  v56 = *v49;
  if (byte_181A204C8[*v49] < 0)
  {
    v57 = 0;
    if (v56 == 91)
    {
      v58 = 93;
    }

    else
    {
      v58 = *v49;
    }

    for (i = 1; ; ++i)
    {
      v60 = i;
      v61 = *(v49 + i);
      if (v61 == v58)
      {
        ++i;
        LOBYTE(v61) = v58;
        if (*(v49 + v60 + 1) != v58)
        {
          break;
        }
      }

      *(v49 + v57++) = v61;
    }

    *(v49 + v57) = 0;
    v56 = *v49;
  }

  v62 = 0;
  if (v56)
  {
    v63 = v49 + 1;
    v64 = v56;
    do
    {
      v62 += byte_181A20298[v64];
      v65 = *v63++;
      v64 = v65;
    }

    while (v65);
  }

  v66 = v27[1];
  v67 = *(v27 + 27);
  v68 = &v66[16 * *(v27 + (v62 & 0xF) + 104)];
  if (*(v68 + 11) == v62)
  {
    v69 = *v68;
    for (j = v49 + 1; ; ++j)
    {
      if (*v69 == v56)
      {
        if (!v56)
        {
LABEL_60:
          sub_18198D830(a1, v114, v41 == 1, &byte_181A2878D, 0, v53, v54, v55);
          sub_18198D8B8(a1, v114, v41 == 1, v77, v78, v79, v80, v81, v113);
          v82 = *(a1 + 152);
          if (!v82)
          {
            v82 = a1;
          }

          *(v82 + 33) = 1;
          v89 = sub_181950DC4(v12, a4);
          if (v89)
          {
            sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, %d) WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X'  AND (type != 'index' OR tbl_name = %Q)", v83, v84, v85, v86, v87, v88, v114);
            sub_1818F73B0(a1, "UPDATE temp.sqlite_master SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, 1) WHERE type IN ('trigger', 'view')", v90, v91, v92, v93, v94, v95, v114);
            sub_18198D740(a1, v41, 1, v96, v97, v98, v99, v100);
            sub_18198D830(a1, v114, v41 == 1, "after rename", 1, v101, v102, v103);
          }

          goto LABEL_64;
        }
      }

      else if (byte_181A20298[*v69] != byte_181A20298[v56])
      {
        break;
      }

      ++v69;
      v71 = *j;
      v56 = v71;
    }
  }

  v72 = 0;
  if (v67 <= 1)
  {
    v73 = 1;
  }

  else
  {
    v73 = v67;
  }

  do
  {
    v74 = &v66[16 * v72];
    if (v74[11] == v62)
    {
      v75 = *v74;
      for (k = v49; ; ++k)
      {
        if (*v75 == *k)
        {
          if (!*v75)
          {
            goto LABEL_60;
          }
        }

        else if (byte_181A20298[*v75] != byte_181A20298[*k])
        {
          break;
        }

        ++v75;
      }
    }

    ++v72;
  }

  while (v72 != v73);
  sub_181910730(a1, "no such column: %T", v50, v51, v52, v53, v54, v55, a3);
  v89 = 0;
LABEL_64:
  sub_1818BB5B0(v12, a2);
  result = sub_181929C84(v12, v49);
  if (v89)
  {

    return sub_181929C84(v12, v89);
  }

  return result;
}

void sub_181955794(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 344);
  if (!v8)
  {
    return;
  }

  v11 = *a1;
  v12 = *(a1 + 376);
  if (v12)
  {
    v13 = *(a1 + 384);
    v14 = sub_181929E8C(*a1, v13 + 1, 1565185748);
    v15 = v14;
    if (v14)
    {
      memcpy(v14, v12, v13);
      *(v15 + v13) = 0;
    }

    v16 = *a1;
    v17 = *(v8 + 64);
    v18 = 8 * v17 + 16;
    if (v17 + 3 >= *(*a1 + 144))
    {
      sub_181910730(a1, "too many columns on %s", a3, a4, a5, a6, a7, a8, *v8);
    }

    v19 = *(v8 + 72);
    if (v19)
    {
      if (*(v16 + 512) <= v19)
      {
        goto LABEL_16;
      }

      if (*(v16 + 496) > v19)
      {
        if (*(v16 + 504) <= v19 && v18 <= *(v16 + 438))
        {
          goto LABEL_17;
        }

LABEL_16:
        v19 = sub_181929F38(v16, v19, v18, 528201247);
        if (v19)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      if (v18 >= 0x81)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = sub_181929E8C(v16, v18, 528201247);
      if (!v19)
      {
LABEL_18:
        if (v15)
        {
          sub_181929C84(v16, v15);
        }

        goto LABEL_20;
      }
    }

LABEL_17:
    v20 = *(v8 + 64);
    *(v8 + 64) = v20 + 1;
    v19[v20] = v15;
    v19[v20 + 1] = 0;
    *(v8 + 72) = v19;
  }

LABEL_20:
  *(a1 + 376) = 0;
  if (*(v8 + 64) < 1)
  {
    return;
  }

  if (!*(v11 + 197))
  {
    v26 = *(a1 + 152);
    if (!v26)
    {
      v26 = a1;
    }

    *(v26 + 33) = 1;
    if (a2)
    {
      *(a1 + 232) = a2[2] + *a2 - *(a1 + 224);
    }

    v33 = sub_1818A8BAC(v11, "CREATE VIRTUAL TABLE %T", a3, a4, a5, a6, a7, a8, a1 - 32);
    v34 = *(v8 + 96);
    v35 = *(v11 + 32);
    if (v34)
    {
      v36 = (v35 + 24);
      LODWORD(v37) = -1;
      do
      {
        v38 = *v36;
        v36 += 4;
        v37 = (v37 + 1);
      }

      while (v38 != v34);
    }

    else
    {
      v37 = 4294934528;
    }

    v51 = 32 * v37;
    sub_1818F73B0(a1, "UPDATE %Q.sqlite_master SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d", v27, v28, v29, v30, v31, v32, *(v35 + v51));
    v64 = sub_1818E7DFC(a1, v52, v53, v54, v55, v56, v57, v58);
    v65 = *(a1 + 16);
    v66 = (**(*(*a1 + 32) + v51 + 24) + 1);
    v67 = *(v65 + 144);
    if (*(v65 + 148) <= v67)
    {
      sub_18194C8AC(v65, 100, v37, 1, v66, v61, v62, v63);
    }

    else
    {
      *(v65 + 144) = v67 + 1;
      v68 = *(v65 + 136) + 40 * v67;
      *v68 = 100;
      *(v68 + 4) = v37;
      *(v68 + 8) = 1;
      *(v68 + 12) = v66;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0;
      *(v68 + 16) = 0;
    }

    v69 = *(v64 + 144);
    if (*(v64 + 148) <= v69)
    {
      sub_18194C8AC(v64, 166, 0, 0, 0, v61, v62, v63);
    }

    else
    {
      *(v64 + 144) = v69 + 1;
      v70 = *(v64 + 136) + 40 * v69;
      *v70 = -90;
      *(v70 + 1) = 0u;
      *(v70 + 17) = 0u;
      *(v70 + 32) = 0;
    }

    v71 = sub_1818A8BAC(v11, "name=%Q AND sql=%Q", v59, v60, v66, v61, v62, v63, *v8);
    sub_18195E8E8(v64, v37, v71, 0, v72, v73, v74, v75);
    if (v33)
    {
      sub_181929C84(v11, v33);
    }

    v79 = (*(a1 + 60) + 1);
    *(a1 + 60) = v79;
    v80 = *v8;
    v81 = *(v64 + 144);
    if (*(v64 + 148) <= v81)
    {
      v81 = sub_18194C8AC(v64, 118, 0, v79, 0, v76, v77, v78);
    }

    else
    {
      *(v64 + 144) = v81 + 1;
      v82 = *(v64 + 136) + 40 * v81;
      *v82 = 118;
      *(v82 + 8) = v79;
      *(v82 + 12) = 0;
      *(v82 + 28) = 0;
      *(v82 + 20) = 0;
      *(v82 + 36) = 0;
    }

    if (!*(*v64 + 103))
    {
      if (v81 < 0)
      {
        v81 = *(v64 + 144) - 1;
      }

      sub_18194CB90(v64, *(v64 + 136) + 40 * v81, v80, 0);
    }

    v83 = *(v64 + 144);
    if (*(v64 + 148) <= v83)
    {

      sub_18194C8AC(v64, 171, v37, v79, 0, v76, v77, v78);
    }

    else
    {
      *(v64 + 144) = v83 + 1;
      v84 = *(v64 + 136) + 40 * v83;
      *v84 = 171;
      *(v84 + 4) = v37;
      *(v84 + 8) = v79;
      *(v84 + 12) = 0;
      *(v84 + 28) = 0;
      *(v84 + 20) = 0;
      *(v84 + 36) = 0;
    }

    return;
  }

  v21 = **(v8 + 72);
  v22 = *v21;
  if (*v21)
  {
    v23 = 0;
    v24 = v21 + 1;
    do
    {
      v23 = -1640531535 * (v23 + (v22 & 0xDF));
      v25 = *v24++;
      v22 = v25;
    }

    while (v25);
  }

  else
  {
    v23 = 0;
  }

  v39 = (v11 + 568);
  v40 = *(v11 + 584);
  if (v40)
  {
    v39 = (v40 + 16 * (v23 % *v39));
    v41 = *v39;
    if (*v39)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v41 = *(v11 + 572);
    if (v41)
    {
LABEL_37:
      v42 = (v39 + 2);
      do
      {
        v42 = *v42;
        if (v23 == *(v42 + 8))
        {
          v43 = v42[3];
          for (i = **(v8 + 72); ; ++i)
          {
            if (*v43 == *i)
            {
              if (!*v43)
              {
                goto LABEL_48;
              }
            }

            else if (byte_181A20298[*v43] != byte_181A20298[*i])
            {
              break;
            }

            ++v43;
          }
        }

        --v41;
      }

      while (v41);
      v42 = &qword_1EA831A30;
      goto LABEL_48;
    }
  }

  v42 = &qword_1EA831A30;
LABEL_48:
  v45 = *(v8 + 96);
  v46 = *v8;
  v47 = v42[2];
  if (v47)
  {
    v48 = *v47;
    if (*v47)
    {
      if (*v48 >= 3 && *(v48 + 184))
      {
        if (v46)
        {
          v49 = strlen(*v8);
          v46 = *v8;
          v50 = v49 & 0x3FFFFFFF;
        }

        else
        {
          v50 = 0;
        }

        v85 = *(v45 + 16);
        if (v85)
        {
          v86 = v50;
          v106 = v50;
          v107 = v50 + 1;
          do
          {
            v87 = v85[2];
            if (!*(v87 + 63) && (*(v87 + 49) & 0x10) == 0)
            {
              v88 = *v8;
              if (*v87)
              {
                if (!v88)
                {
                  goto LABEL_79;
                }

                if (v50)
                {
                  v89 = v107;
                  v90 = *v87;
                  while (1)
                  {
                    v91 = *v90;
                    if (!*v90)
                    {
                      break;
                    }

                    LODWORD(v91) = byte_181A20298[v91];
                    v92 = byte_181A20298[*v88];
                    if (v91 != v92)
                    {
                      goto LABEL_96;
                    }

                    ++v90;
                    ++v88;
                    if (--v89 <= 1)
                    {
                      goto LABEL_97;
                    }
                  }

                  v92 = byte_181A20298[*v88];
LABEL_96:
                  if (v91 != v92)
                  {
                    goto LABEL_79;
                  }
                }

LABEL_97:
                v94 = (*v87 + v86);
                if (*v94 == 95)
                {
                  v95 = v46;
                  v96 = (*(*v47 + 184))(v94 + 1);
                  v50 = v106;
                  v46 = v95;
                  if (v96)
                  {
                    *(v87 + 48) |= 0x1000u;
                  }
                }

                goto LABEL_79;
              }

              if (v88)
              {
                v93 = -1;
              }

              else
              {
                v93 = 0;
              }

              if (!v93)
              {
                goto LABEL_97;
              }
            }

LABEL_79:
            v85 = *v85;
          }

          while (v85);
        }
      }
    }
  }

  if (sub_18188FAF0(v45 + 8, v46, v8))
  {
    if (!*(v11 + 103) && !*(v11 + 104))
    {
      *(v11 + 103) = 1;
      if (*(v11 + 220) >= 1)
      {
        *(v11 + 424) = 1;
      }

      ++*(v11 + 432);
      *(v11 + 436) = 0;
      v103 = *(v11 + 344);
      if (v103)
      {
        sub_181910730(v103, "out of memory", v97, v98, v99, v100, v101, v102, v105);
        for (j = *(v11 + 344); ; ++*(j + 52))
        {
          *(j + 24) = 7;
          j = *(j + 216);
          if (!j)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    *(a1 + 344) = 0;
  }
}

void sub_181955EA4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_18189FE3C(a1, a2, a3, 0, 0, 1, a5, a8, v64);
  v16 = *(a1 + 344);
  if (!v16)
  {
    return;
  }

  *(v16 + 63) = 1;
  v17 = *a1;
  if (a4 && (v18 = *a4) != 0)
  {
    v19 = *(a4 + 8);
    v20 = sub_181929E8C(*a1, v19 + 1, 1565185748);
    v21 = v20;
    if (v20)
    {
      memcpy(v20, v18, v19);
      *(v21 + v19) = 0;
      if (byte_181A204C8[*v21] < 0)
      {
        v22 = 0;
        if (*v21 == 91)
        {
          v23 = 93;
        }

        else
        {
          v23 = *v21;
        }

        for (i = 1; ; ++i)
        {
          v25 = i;
          v26 = *(v21 + i);
          if (v26 == v23)
          {
            ++i;
            LOBYTE(v26) = v23;
            if (*(v21 + v25 + 1) != v23)
            {
              break;
            }
          }

          *(v21 + v22++) = v26;
        }

        *(v21 + v22) = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v27 = *a1;
  v28 = *(v16 + 16);
  v29 = 8 * v28 + 16;
  if (v28 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", v10, v11, v12, v13, v14, v15, *v16);
  }

  v30 = v16[9];
  if (!v30)
  {
    v30 = sub_181929E8C(v27, v29, 528201247);
    if (!v30)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (*(v27 + 512) <= v30)
  {
    goto LABEL_26;
  }

  if (*(v27 + 496) <= v30)
  {
    if (v29 >= 0x81)
    {
      goto LABEL_26;
    }

LABEL_27:
    v31 = *(v16 + 16);
    *(v16 + 16) = v31 + 1;
    v30[v31] = v21;
    v30[v31 + 1] = 0;
    v16[9] = v30;
    goto LABEL_30;
  }

  if (*(v27 + 504) <= v30 && v29 <= *(v27 + 438))
  {
    goto LABEL_27;
  }

LABEL_26:
  v30 = sub_181929F38(v27, v30, v29, 528201247);
  if (v30)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v21)
  {
    sub_181929C84(v27, v21);
  }

LABEL_30:
  v32 = *a1;
  v33 = *(v16 + 16);
  v34 = 8 * v33 + 16;
  if (v33 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", v10, v11, v12, v13, v14, v15, *v16);
  }

  v35 = v16[9];
  if (!v35)
  {
    v35 = sub_181929E8C(v32, v34, 528201247);
    if (v35)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  if (*(v32 + 512) <= v35)
  {
LABEL_41:
    v35 = sub_181929F38(v32, v35, v34, 528201247);
    if (v35)
    {
      goto LABEL_42;
    }

LABEL_44:
    v38 = *v16;
    if (!*v16)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (*(v32 + 496) <= v35)
  {
    if (v34 < 0x81)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (*(v32 + 504) > v35 || v34 > *(v32 + 438))
  {
    goto LABEL_41;
  }

LABEL_42:
  v36 = *(v16 + 16);
  *(v16 + 16) = v36 + 1;
  v37 = &v35[v36];
  *v37 = 0;
  v37[1] = 0;
  v16[9] = v35;
  v38 = *v16;
  if (!*v16)
  {
LABEL_43:
    v39 = 0;
    goto LABEL_48;
  }

LABEL_45:
  v40 = strlen(v38);
  v41 = v40;
  if (v17)
  {
    v39 = sub_181929E8C(v17, v40 + 1, 354097263);
    if (!v39)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v39 = sub_181902484(v40 + 1, 354097263);
  if (v39)
  {
LABEL_47:
    memcpy(v39, v38, v41 + 1);
  }

LABEL_48:
  v42 = *a1;
  v43 = *(v16 + 16);
  v44 = 8 * v43 + 16;
  if (v43 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", v10, v11, v12, v13, v14, v15, *v16);
  }

  v45 = v16[9];
  if (!v45)
  {
    v45 = sub_181929E8C(v42, v44, 528201247);
    if (!v45)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (*(v42 + 512) <= v45)
  {
    goto LABEL_61;
  }

  if (*(v42 + 496) <= v45)
  {
    if (v44 >= 0x81)
    {
      goto LABEL_61;
    }

LABEL_62:
    v46 = *(v16 + 16);
    *(v16 + 16) = v46 + 1;
    v45[v46] = v39;
    v45[v46 + 1] = 0;
    v16[9] = v45;
    goto LABEL_65;
  }

  if (*(v42 + 504) <= v45 && v44 <= *(v42 + 438))
  {
    goto LABEL_62;
  }

LABEL_61:
  v45 = sub_181929F38(v42, v45, v44, 528201247);
  if (v45)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v39)
  {
    sub_181929C84(v42, v39);
  }

LABEL_65:
  *(a1 + 232) = *a4 + *(a4 + 8) - *(a1 + 224);
  v47 = v16[9];
  if (v47)
  {
    v48 = v16[12];
    if (v48)
    {
      v49 = (*(v17 + 32) + 24);
      v50 = 0xFFFFFFFF00000000;
      do
      {
        v51 = *v49;
        v49 += 4;
        v50 += 0x100000000;
      }

      while (v51 != v48);
      v52 = v50 >> 32;
    }

    else
    {
      v52 = -32768;
    }

    v53 = *a1;
    v54 = *(*a1 + 528);
    if (v54)
    {
      if (!*(v53 + 197) && !*(a1 + 302))
      {
        v55 = v54(*(v53 + 536), 29, *v16, *v47, *(*(v53 + 32) + 32 * v52), *(a1 + 368));
        if (v55 == 1)
        {
          v62 = 23;
          v63 = "not authorized";
        }

        else
        {
          if ((v55 & 0xFFFFFFFD) == 0)
          {
            return;
          }

          v62 = 1;
          v63 = "authorizer malfunction";
        }

        sub_181910730(a1, v63, v56, v57, v58, v59, v60, v61, v65);
        *(a1 + 24) = v62;
      }
    }
  }
}

uint64_t *sub_18195638C(uint64_t *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = result;
    if (!a3 || (result = sub_18195B158(result, sub_18198D9C8, a2), (v3 = result) != 0))
    {
      if (!*(v4 + 13))
      {
        *(v3 + 8) = v4[50];
        v4[50] = v3;
      }
    }
  }

  return result;
}

uint64_t sub_1819563F4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if (*a1)
  {
    v11 = sub_181929E8C(*a1, 0x30uLL, 0x1070040AB0F4D3FLL);
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = sub_181902484(48, 0x1070040AB0F4D3FLL);
  if (v11)
  {
LABEL_3:
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
  }

LABEL_4:
  if (*(v10 + 103))
  {
    if (a3)
    {
      sub_18194E5B8(v10, a3);
    }

    if (a4)
    {
      sub_1818BB408(v10, a4, 1);
    }
  }

  else
  {
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    if (a2 && (v12 = *a2) != 0)
    {
      v13 = *(a2 + 8);
      v14 = sub_181929E8C(*a1, v13 + 1, 1565185748);
      v15 = v14;
      if (v14)
      {
        memcpy(v14, v12, v13);
        v15[v13] = 0;
        if (byte_181A204C8[*v15] < 0)
        {
          v16 = 0;
          if (*v15 == 91)
          {
            v17 = 93;
          }

          else
          {
            v17 = *v15;
          }

          for (i = 1; ; ++i)
          {
            v19 = i;
            v20 = v15[i];
            if (v20 == v17)
            {
              ++i;
              LOBYTE(v20) = v17;
              if (v15[v19 + 1] != v17)
              {
                break;
              }
            }

            v15[v16++] = v20;
          }

          v15[v16] = 0;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    *v11 = v15;
    *(v11 + 40) = a5;
  }

  return v11;
}

void *sub_181956580(uint64_t *a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a3)
  {
    return v8;
  }

  v11 = *a1;
  if (a2 && (v12 = *a3) != 0)
  {
    v13 = *a2;
    if (*a2 >= 1)
    {
      for (i = 0; i < v13; ++i)
      {
        for (j = 0; *(v12 + j) != *(v8[6 * i + 2] + j); ++j)
        {
          if (byte_181A20298[*(v12 + j)] != byte_181A20298[*(v8[6 * i + 2] + j)])
          {
            goto LABEL_6;
          }

LABEL_9:
          ;
        }

        if (*(v12 + j))
        {
          goto LABEL_9;
        }

        sub_181910730(a1, "duplicate WITH table name: %s", a3, a4, a5, a6, a7, a8, v12);
        v13 = *v8;
LABEL_6:
        ;
      }
    }
  }

  else
  {
    if (!a2)
    {
      if (v11)
      {
        v17 = sub_181929E8C(*a1, 0x40uLL, 0x1070040AB0F4D3FLL);
        if (!v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = sub_181902484(64, 0x1070040AB0F4D3FLL);
        if (!v17)
        {
          goto LABEL_22;
        }
      }

      v17[2] = 0u;
      v17[3] = 0u;
      *v17 = 0u;
      v17[1] = 0u;
      goto LABEL_22;
    }

    v13 = *a2;
  }

  v16 = 48 * (v13 + 1) + 16;
  if (*(v11 + 512) <= v8)
  {
    goto LABEL_21;
  }

  if (*(v11 + 496) > v8)
  {
    if (*(v11 + 504) <= v8)
    {
      v17 = v8;
      if (v16 <= *(v11 + 438))
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v17 = v8;
  if (v16 >= 0x81)
  {
LABEL_21:
    v17 = sub_181929F38(v11, v8, v16, 0x1070040AB0F4D3FLL);
  }

LABEL_22:
  if (*(v11 + 103))
  {
    v18 = a3[1];
    if (v18)
    {
      sub_18194E5B8(v11, v18);
    }

    v19 = a3[2];
    if (v19)
    {
      sub_1818BB408(v11, v19, 1);
    }

    if (*a3)
    {
      sub_181929C84(v11, *a3);
    }
  }

  else
  {
    v20 = &v17[3 * (*v17)++];
    v21 = *a3;
    v22 = *(a3 + 2);
    v20[2] = *(a3 + 1);
    v20[3] = v22;
    v20[1] = v21;
    v8 = v17;
  }

  sub_181929C84(v11, a3);
  return v8;
}

void sub_1819567A4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[1];
  if (!v8)
  {
    return;
  }

  if (!a3)
  {
LABEL_11:
    sub_181910730(a1, "no such window: %s", a3, a4, a5, a6, a7, a8, a2[1]);
    return;
  }

  v9 = *a1;
LABEL_4:
  for (i = 0; *(*a3 + i) != *(v8 + i); ++i)
  {
    if (byte_181A20298[*(*a3 + i)] != byte_181A20298[*(v8 + i)])
    {
      a3 = *(a3 + 64);
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_6:
    ;
  }

  if (*(*a3 + i))
  {
    goto LABEL_6;
  }

  if (a2[2])
  {
    v11 = "PARTITION clause";
LABEL_14:
    sub_181910730(a1, "cannot override %s of window: %s", a3, a4, a5, a6, a7, a8, v11);
    return;
  }

  if (*(a3 + 24) && a2[3])
  {
    v11 = "ORDER BY clause";
    goto LABEL_14;
  }

  if (!*(a3 + 35))
  {
    v11 = "frame specification";
    goto LABEL_14;
  }

  v13 = a3;
  v14 = sub_1818C83A0(*a1, *(a3 + 16), 0);
  v15 = a2;
  a2[2] = v14;
  v16 = *(v13 + 24);
  if (v16)
  {
    v17 = sub_1818C83A0(v9, v16, 0);
    v15 = a2;
    a2[3] = v17;
  }

  v18 = v15[1];
  if (v18)
  {
    sub_181929C84(v9, v18);
    v15 = a2;
  }

  v15[1] = 0;
}

void *sub_1819568E4(uint64_t *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    a2[2] = a3;
    a2[3] = a4;
    if (a5)
    {
      v6 = *a5;
      if (*a5)
      {
        v7 = *(a5 + 8);
        v8 = sub_181929E8C(*a1, v7 + 1, 1565185748);
        v9 = v8;
        if (v8)
        {
          memcpy(v8, v6, v7);
          v9[v7] = 0;
        }

        a2[1] = v9;
      }

      else
      {
        a2[1] = 0;
      }
    }
  }

  else
  {
    if (a3)
    {
      v10 = a1;
      v11 = a4;
      sub_18194E5B8(*a1, a3);
      a4 = v11;
      a1 = v10;
    }

    if (a4)
    {
      sub_18194E5B8(*a1, a4);
    }
  }

  return a2;
}

uint64_t sub_18195699C(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a4;
  v11 = a2 == 0;
  if (a3 == 86 && a5 == 89 || a3 == 87 && (a5 == 89 || a5 == 86))
  {
    sub_181910730(a1, "unsupported frame specification", a3, a4, a5, a6, a7, a8, v26);
    goto LABEL_4;
  }

  v13 = *a1;
  if (*a1)
  {
    if (*(v13 + 436) <= 0x8Fu)
    {
      v14 = a2;
      v15 = a3;
      v16 = a5;
      v17 = a7;
      if (*(v13 + 432))
      {
        if (*(v13 + 103))
        {
          goto LABEL_4;
        }
      }

      else
      {
        ++*(v13 + 452);
      }

      goto LABEL_26;
    }

    result = *(v13 + 472);
    if (result)
    {
      v18 = (v13 + 472);
    }

    else
    {
      result = *(v13 + 464);
      if (!result)
      {
        v14 = a2;
        v15 = a3;
        v16 = a5;
        v17 = a7;
        ++*(v13 + 456);
LABEL_26:
        result = sub_18192A080(v13, 144, 0x10B004036C0935CLL);
        if (result)
        {
          goto LABEL_27;
        }

        goto LABEL_4;
      }

      v18 = (v13 + 464);
    }

    *v18 = *result;
    ++*(v13 + 448);
LABEL_28:
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 90;
    }

    *(result + 32) = v19;
    *(result + 33) = a3;
    *(result + 34) = a5;
    if (!a7)
    {
      LODWORD(a7) = (*(*a1 + 96) << 30 >> 31) & 0x43;
    }

    *(result + 36) = a7;
    *(result + 35) = v11;
    v30 = 0x100000000;
    v31 = 0;
    v26 = 0;
    v27 = sub_1818C7E14;
    v28 = sub_18195A49C;
    v29 = 0;
    if (v8)
    {
      v20 = result;
      sub_181959BA0(&v26, v8);
      if (!WORD2(v30))
      {
        v21 = a1[302];
        if (v21 >= 2)
        {
          v30 = 0;
          v31 = 0;
          v26 = a1;
          v27 = sub_181961E4C;
          v28 = sub_181961EB8;
          v29 = 0;
          a1[302] = 3;
          sub_181959BA0(&v26, v8);
          a1[302] = v21;
        }

        sub_1819439E0(*a1, v8);
        v22 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
        v8 = v22;
        if (v22)
        {
          *(v22 + 32) = 0u;
          *(v22 + 48) = 0u;
          *(v22 + 64) = 0u;
          *v22 = 0u;
          *(v22 + 16) = 0u;
          *v22 = 122;
          *(v22 + 52) = -1;
          *(v22 + 40) = 1;
        }
      }

      result = v20;
    }

    *(result + 48) = v8;
    v30 = 0x100000000;
    v31 = 0;
    v26 = 0;
    v27 = sub_1818C7E14;
    v28 = sub_18195A49C;
    v29 = 0;
    if (v9)
    {
      v23 = result;
      sub_181959BA0(&v26, v9);
      if (!WORD2(v30))
      {
        v24 = a1[302];
        if (v24 >= 2)
        {
          v30 = 0;
          v31 = 0;
          v26 = a1;
          v27 = sub_181961E4C;
          v28 = sub_181961EB8;
          v29 = 0;
          a1[302] = 3;
          sub_181959BA0(&v26, v9);
          a1[302] = v24;
        }

        sub_1819439E0(*a1, v9);
        v25 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
        v9 = v25;
        if (v25)
        {
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *v25 = 122;
          *(v25 + 52) = -1;
          *(v25 + 40) = 1;
        }
      }

      result = v23;
    }

    *(result + 40) = v9;
    return result;
  }

  v14 = a2;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  result = sub_181902484(144, 0x10B004036C0935CLL);
  if (result)
  {
LABEL_27:
    LODWORD(a7) = v17;
    LOBYTE(a5) = v16;
    LOBYTE(a3) = v15;
    a2 = v14;
    goto LABEL_28;
  }

LABEL_4:
  if (v8)
  {
    sub_1819439E0(*a1, v8);
  }

  if (v9)
  {
    sub_1819439E0(*a1, v9);
  }

  return 0;
}

void sub_181956D74(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return;
  }

  v10 = *(a2 + 1);
  v11 = *v10 == 48 && (v10[1] & 0xDF) == 88;
  v18 = 0;
  *a2 = -100;
  v12 = v10;
  do
  {
    v14 = *v12;
    if (v14 == 95)
    {
      v15 = *(v12 - 1);
      if (v11)
      {
        if ((byte_181A204C8[v15] & 8) != 0 && (byte_181A204C8[v12[1]] & 8) != 0)
        {
          goto LABEL_7;
        }
      }

      else if ((v15 - 58) >= 0xFFFFFFFFFFFFFFF6 && v12[1] - 58 >= 0xFFFFFFFFFFFFFFF6)
      {
        goto LABEL_7;
      }

      sub_181910730(a1, "unrecognized token: %s", a3, a4, a5, a6, a7, a8, *(a2 + 1));
LABEL_7:
      v13 = *v12;
      goto LABEL_8;
    }

    *v10++ = v14;
    v13 = *v12;
    if ((v13 - 46) <= 0x37 && ((1 << (v13 - 46)) & 0x80000000800001) != 0)
    {
      *a2 = -102;
      goto LABEL_7;
    }

LABEL_8:
    ++v12;
  }

  while (v13);
  if (v11)
  {
    *a2 = -100;
LABEL_25:
    if (sub_181949B34(*(a2 + 1), &v18))
    {
      v17 = v18;
      *(a2 + 1) |= 0x800u;
      *(a2 + 2) = v17;
    }
  }

  else if (*a2 == 156)
  {
    goto LABEL_25;
  }
}