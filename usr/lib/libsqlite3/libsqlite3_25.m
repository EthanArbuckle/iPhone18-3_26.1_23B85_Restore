void sub_1819918E0(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 113);
      switch(v4)
      {
        case 186:
          goto LABEL_6;
        case 118:
          v6 = *(v3 + 56);
          goto LABEL_14;
        case 109:
LABEL_6:
          v5 = "unopened";
          break;
        default:
          v5 = "invalid";
          break;
      }
    }

    else
    {
      v5 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192786);
    v6 = 0;
    v2 = *a1;
LABEL_14:
    if ((*(v2 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v2, v6);
    }

    else
    {
      *v2 = v6;
      *(v2 + 20) = 4;
    }

    return;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "NULL");

  sub_1819012D0(192786);
}

void sub_181991A04(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 113);
      switch(v4)
      {
        case 186:
          goto LABEL_6;
        case 118:
          v6 = *(v3 + 120);
          goto LABEL_14;
        case 109:
LABEL_6:
          v5 = "unopened";
          break;
        default:
          v5 = "invalid";
          break;
      }
    }

    else
    {
      v5 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192814);
    v6 = 0;
    v2 = *a1;
LABEL_14:
    if ((*(v2 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v2, v6);
    }

    else
    {
      *v2 = v6;
      *(v2 + 20) = 4;
    }

    return;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "NULL");

  sub_1819012D0(192814);
}

void sub_181991B28(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 113);
      switch(v4)
      {
        case 186:
          goto LABEL_6;
        case 118:
          v6 = *(v3 + 128);
          goto LABEL_14;
        case 109:
LABEL_6:
          v5 = "unopened";
          break;
        default:
          v5 = "invalid";
          break;
      }
    }

    else
    {
      v5 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192830);
    v6 = 0;
    v2 = *a1;
LABEL_14:
    if ((*(v2 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v2, v6);
    }

    else
    {
      *v2 = v6;
      *(v2 + 20) = 4;
    }

    return;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "NULL");

  sub_1819012D0(192830);
}

void sub_181991C4C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    v6 = *a3;
    if (!*a3)
    {
      return;
    }
  }

  else
  {
    v5 = 0;
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
LABEL_21:
    v11 = 0;
    v12 = a3[1];
    if (!v12)
    {
      return;
    }

    goto LABEL_26;
  }

  v10 = *(v9 + 20);
  if ((v10 & 2) != 0 && *(v9 + 22) == 1)
  {
    v11 = *(v9 + 16);
    v12 = a3[1];
    if (!v12)
    {
      return;
    }

    goto LABEL_26;
  }

  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v11 = sub_18193CB44(v9, 1);
      v12 = a3[1];
      if (!v12)
      {
        return;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v11 = *(v9 + 16);
  if ((*(v9 + 20) & 0x400) != 0)
  {
    v11 += *v9;
  }

  v12 = a3[1];
  if (!v12)
  {
    return;
  }

LABEL_26:
  v13 = *(v12 + 20);
  if ((~v13 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if (v13)
    {
      return;
    }

    v14 = sub_18193CB70(v12, 1);
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *(v12 + 8);
    if (!v14)
    {
      return;
    }
  }

  if (!*v14)
  {
    if (!a1)
    {
      return;
    }

    v18 = a1;
    v19 = v8;
    v20 = v11;
    v21 = -1;
    goto LABEL_39;
  }

  v15 = a3[1];
  if (!v15)
  {
    sub_1819012D0(93690);
LABEL_46:
    v17 = 0;
    goto LABEL_47;
  }

  v16 = *(v15 + 20);
  if ((v16 & 2) != 0 && *(v15 + 22) == 1)
  {
    v17 = *(v15 + 16);
    goto LABEL_47;
  }

  if ((v16 & 0x10) == 0)
  {
    if ((v16 & 1) == 0)
    {
      v17 = sub_18193CB44(v15, 1);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v17 = *(v15 + 16);
  if ((*(v15 + 20) & 0x400) != 0)
  {
    v17 += *v15;
  }

LABEL_47:
  v22 = a3[2];
  if (!v22)
  {
    return;
  }

  v23 = *(v22 + 20);
  if ((~v23 & 0x202) != 0 || *(v22 + 22) != 1)
  {
    if (v23)
    {
      return;
    }

    v24 = sub_18193CB70(v22, 1);
  }

  else
  {
    v24 = *(v22 + 8);
  }

  if (!v24)
  {
    return;
  }

  v25 = a3[2];
  if (!v25)
  {
    sub_1819012D0(93690);
LABEL_64:
    v48 = 0;
    goto LABEL_65;
  }

  v26 = *(v25 + 20);
  if ((v26 & 2) != 0 && *(v25 + 22) == 1)
  {
    v48 = *(v25 + 16);
    goto LABEL_65;
  }

  if ((v26 & 0x10) == 0)
  {
    if ((v26 & 1) == 0)
    {
      v48 = sub_18193CB44(v25, 1);
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v48 = *(v25 + 16);
  if ((*(v25 + 20) & 0x400) != 0)
  {
    v48 += *v25;
  }

LABEL_65:
  if (a1)
  {
    v27 = *a1;
    if (*(*(*a1 + 24) + 136) <= v11)
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v27, "string or blob too big", -1, 1u, 0);
      return;
    }
  }

  else if (MEMORY[0x88] <= v11)
  {
    return;
  }

  v45 = v11 + 1;
  v28 = sub_181902484(v45, 3621441365);
  if (v28)
  {
    v29 = v28;
    v49 = v11 - v17;
    if (v11 - v17 >= 0)
    {
      v43 = v24;
      v44 = v17;
      v46 = 0;
      v30 = 0;
      v31 = 0;
      __n = v17;
      v41 = v48 - v17;
      v42 = v17 - 1;
      while (1)
      {
        v34 = (v8 + v31);
        v35 = *v34;
        if (v35 == *v14 && !memcmp(v34, v14, __n))
        {
          if (v48 <= v17)
          {
            v38 = v29;
            v37 = v46;
          }

          else
          {
            v36 = v45 + v41;
            if (v45 + v41 - 1 > *(v5 + 136))
            {
              if (a1)
              {
                *(a1 + 9) = 18;
                sub_1818900D0(*a1, "string or blob too big", -1, 1u, 0);
              }

              goto LABEL_98;
            }

            v37 = v46 + 1;
            v45 += v41;
            if (((v46 + 1) & v46) != 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = sub_18190287C(v29, v36 + ~v11 + v36, 2316703634);
              if (!v38)
              {
                sqlite3_result_error_nomem(a1);
                goto LABEL_98;
              }
            }
          }

          memcpy((v38 + v30), v43, v48);
          v30 += v48;
          v31 += v42;
          v29 = v38;
          v46 = v37;
          v17 = v44;
        }

        else
        {
          v29[v30++] = v35;
        }

        v32 = v31 + 1;
        if (v31++ >= v49)
        {
          goto LABEL_93;
        }
      }
    }

    v32 = 0;
    v30 = 0;
LABEL_93:
    v39 = (v8 + v32);
    v40 = v11 - v32;
    memcpy(&v29[v30], v39, v40);
    v20 = v30 + v40;
    v29[v30 + v40] = 0;
    if (a1)
    {
      v21 = sqlite3_free;
      v18 = a1;
      v19 = v29;
LABEL_39:

      sub_18190B23C(v18, v19, v20, 1u, v21);
      return;
    }

LABEL_98:

    sqlite3_free(v29);
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_1819921C8(uint64_t a1, uint64_t a2, uint64_t *a3)
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
      v6 = sub_18193CFCC(v4);
      goto LABEL_6;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v9 = *v4;
  if (*v4 >= -9.22337204e18)
  {
    if (v9 <= 9.22337204e18)
    {
      v6 = v9;
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

LABEL_6:
  if (a1)
  {
    v7 = v6 & ~(v6 >> 63);
    v8 = *a1;
    if (v7 <= *(*(*a1 + 24) + 136))
    {
      if ((*(v8 + 20) & 0x9000) != 0 || *(v8 + 32))
      {
        sub_18193CA00(*a1);
      }

      *(v8 + 20) = 1040;
      *(v8 + 16) = 0;
      *v8 = v7 & ~(v7 >> 31);
      *(v8 + 22) = 1;
      *(v8 + 8) = 0;
    }

    else
    {
      *(a1 + 36) = 18;
      sub_1818900D0(v8, "string or blob too big", -1, 1u, 0);
      *(a1 + 36) = 18;
      if (*(*a1 + 20))
      {

        sub_18190B23C(a1, "string or blob too big", -1, 1u, 0);
      }
    }
  }

  else
  {

    sub_1819012D0(100267);
  }
}

void sub_18199236C(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (*a3)
  {
    v6 = (0x1000000010001uLL >> *(*a3 + 10)) & 1;
    v7 = a3[1];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1819012D0(92237);
    goto LABEL_12;
  }

  sub_1819012D0(99877);
  LODWORD(v6) = 0;
  v7 = a3[1];
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = *(v7 + 20);
  if ((v8 & 0x24) == 0)
  {
    if ((v8 & 8) != 0)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (*v7 <= 9.22337204e18)
      {
        v20 = *v7;
      }

      if (*v7 >= -9.22337204e18)
      {
        v9 = *&v20;
      }

      else
      {
        v9 = -0.0;
      }

      v10 = *a3;
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if ((v8 & 0x12) != 0 && *(v7 + 8))
    {
      v9 = COERCE_DOUBLE(sub_18193CFCC(v7));
      v10 = *a3;
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_12:
    v9 = 0.0;
    v10 = *a3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v10)
    {
      v13 = *(v10 + 10);
      if ((v13 & 2) != 0 && *(v10 + 22) == 1)
      {
        v14 = *(v10 + 4);
        goto LABEL_31;
      }

      if ((v13 & 0x10) != 0)
      {
        v14 = *(v10 + 4);
        if ((*(v10 + 10) & 0x400) != 0)
        {
          v14 += *v10;
        }

LABEL_31:
        v12 = sqlite3_value_blob(*a3);
        if (!v12)
        {
          return;
        }

        goto LABEL_32;
      }

      if ((v13 & 1) == 0)
      {
        v14 = sub_18193CB44(v10, 1);
        goto LABEL_31;
      }
    }

    else
    {
      sub_1819012D0(93690);
    }

    v14 = 0;
    goto LABEL_31;
  }

  v9 = *v7;
  v10 = *a3;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v10)
  {
    return;
  }

  v11 = *(v10 + 10);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if (v11)
    {
      return;
    }

    v12 = sub_18193CB70(v10, 1);
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *(v10 + 1);
    if (!v12)
    {
      return;
    }
  }

  if ((*&v9 & 0x8000000000000000) != 0 && (v34 = *v12, *v12))
  {
    v14 = 0;
    v35 = v12;
    do
    {
      if (v34 < 0xC0)
      {
        v36 = *++v35;
        v34 = v36;
      }

      else
      {
        do
        {
          v37 = *++v35;
          v34 = v37;
        }

        while ((v37 & 0xC0) == 0x80);
      }

      ++v14;
    }

    while (v34);
  }

  else
  {
    v14 = 0;
  }

LABEL_32:
  if (a2 != 3)
  {
    v17 = *(*(*a1 + 24) + 136);
    goto LABEL_39;
  }

  v15 = a3[2];
  if (v15)
  {
    v16 = *(v15 + 20);
    if ((v16 & 0x24) != 0)
    {
      v17 = *v15;
      goto LABEL_36;
    }

    if ((v16 & 8) != 0)
    {
      v38 = *v15;
      if (*v15 < -9.22337204e18)
      {
        v17 = 0x8000000000000000;
        goto LABEL_39;
      }

      if (v38 > 9.22337204e18)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_39;
      }

      v17 = v38;
      goto LABEL_36;
    }

    if ((v16 & 0x12) != 0 && *(v15 + 8))
    {
      v17 = sub_18193CFCC(v15);
LABEL_36:
      if (v17)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    sub_1819012D0(92237);
  }

  v21 = a3[2];
  if (v21)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v21 + 10)))
    {
      return;
    }

    v17 = 0;
  }

  else
  {
    sub_1819012D0(99877);
    v17 = 0;
  }

LABEL_39:
  if (v9 == 0.0)
  {
    v19 = a3[1];
    if (v19)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v19 + 10)))
      {
        return;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    v18 = 0;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((*&v9 & 0x8000000000000000) != 0)
  {
    if (*&v9 + v14 < 0)
    {
      v18 = 0;
      if (v17 < 0)
      {
        v17 = 0;
        goto LABEL_69;
      }

      v17 += *&v9 + v14;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v18 = *&v9 + v14;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v18 = *&v9 - 1;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if (v17 >= -v18)
  {
    v17 = -v17;
  }

  else
  {
    v17 = v18;
  }

  v18 -= v17;
LABEL_69:
  if (v6)
  {
    v22 = v14 - v18;
    if (v17 < v22)
    {
      v22 = v17;
    }

    if (v14 > v18)
    {
      v23 = v22;
    }

    else
    {
      v18 = 0;
      v23 = 0;
    }

    if (a1)
    {
      if (v23 >> 31)
      {
        *(a1 + 9) = 18;
        v24 = *a1;

        sub_1818900D0(v24, "string or blob too big", -1, 1u, 0);
      }

      else
      {

        sub_18190B23C(a1, &v12[v18], v23, 0, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {

      sub_1819012D0(100045);
    }
  }

  else
  {
    v25 = *v12;
    if (*v12 && v18)
    {
      do
      {
        if (v25 < 0xC0)
        {
          v28 = *++v12;
          v25 = v28;
        }

        else
        {
          do
          {
            v30 = *++v12;
            v25 = v30;
          }

          while ((v30 & 0xC0) == 0x80);
        }

        --v18;
        if (v25)
        {
          v29 = v18 == 0;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
    }

    if (v25)
    {
      v26 = v17 == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v12;
    if (!v26)
    {
      v27 = v12;
      do
      {
        if (v25 < 0xC0)
        {
          v31 = *++v27;
          v25 = v31;
        }

        else
        {
          do
          {
            v33 = *++v27;
            v25 = v33;
          }

          while ((v33 & 0xC0) == 0x80);
        }

        --v17;
        if (v25)
        {
          v32 = v17 == 0;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    sqlite3_result_text64(a1, v12, v27 - v12, 0xFFFFFFFFFFFFFFFFLL, 1u);
  }
}

void sub_18199287C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1 || (v4 = *(a1 + 8)) == 0 || !*(v4 + 32))
  {
    sub_1819012D0(100772);
    v6 = 0;
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 16);
  if (*(v5 + 20) < 0)
  {
    v6 = *(v5 + 8);
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    sub_1819012D0(99877);
    v8 = 0;
    if (!v6)
    {
      return;
    }

LABEL_12:
    if (v8 == 5)
    {
      return;
    }

    ++*(v6 + 24);
    if (*(v6 + 32))
    {
      if (v8 == 1)
      {
        v10 = *a3;
        if (*a3)
        {
LABEL_16:
          v11 = *(v10 + 20);
          if ((v11 & 0x24) != 0)
          {
            v12 = *v10;
            goto LABEL_18;
          }

          if ((v11 & 8) != 0)
          {
            v22 = *v10;
            if (*v10 < -9.22337204e18)
            {
              v12 = 0x8000000000000000;
              goto LABEL_70;
            }

            if (v22 > 9.22337204e18)
            {
              v12 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_70;
            }

            v12 = v22;
LABEL_18:
            if ((v12 - 0x10000000000000) > 0xFFE0000000000000)
            {
LABEL_77:
              v19 = v12;
              goto LABEL_82;
            }

LABEL_70:
            if (v12 <= 0)
            {
              v27 = -(-v12 & 0x3FFF);
            }

            else
            {
              v27 = v12 & 0x3FFF;
            }

            v32 = *v6 + (v12 - v27);
            if (fabs(*v6) <= fabs((v12 - v27)))
            {
              v28 = (v12 - v27) - v32;
              v29 = *v6;
            }

            else
            {
              v28 = *v6 - v32;
              v29 = (v12 - v27);
            }

            *(v6 + 8) = v28 + v29 + *(v6 + 8);
            *v6 = v32;
            v12 = v27;
            goto LABEL_77;
          }

          if ((v11 & 0x12) != 0 && *(v10 + 8))
          {
            v12 = sub_18193CFCC(v10);
            goto LABEL_18;
          }

LABEL_81:
          v19 = 0;
          goto LABEL_82;
        }

LABEL_80:
        sub_1819012D0(92237);
        goto LABEL_81;
      }

      *(v6 + 33) = 0;
      v17 = *a3;
      if (*a3)
      {
        v18 = *(v17 + 20);
        if ((v18 & 8) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 = *(v6 + 16);
    if (v8 != 1)
    {
      if ((v13 - 0x10000000000000) > 0xFFE0000000000000)
      {
        *v6 = v13;
        v21 = 0.0;
      }

      else
      {
        if (v13 <= 0)
        {
          v20 = -(-v13 & 0x3FFF);
        }

        else
        {
          v20 = *(v6 + 16) & 0x3FFFLL;
        }

        *v6 = (v13 - v20);
        v21 = v20;
      }

      *(v6 + 8) = v21;
      *(v6 + 32) = 1;
      v17 = *a3;
      if (*a3)
      {
        v18 = *(v17 + 20);
        if ((v18 & 8) == 0)
        {
LABEL_30:
          if ((v18 & 0x24) != 0)
          {
            v19 = *v17;
          }

          else if ((v18 & 0x12) != 0)
          {
            v19 = sub_18193CF90(v17);
          }

          else
          {
            v19 = 0.0;
          }

LABEL_82:
          v34 = v19;
          v33 = *v6 + v19;
          if (fabs(*v6) <= fabs(v19))
          {
            v30 = v19 - v33;
            v31 = *v6;
          }

          else
          {
            v30 = *v6 - v33;
            v31 = v34;
          }

          *(v6 + 8) = v30 + v31 + *(v6 + 8);
          *v6 = v33;
          return;
        }

LABEL_42:
        v19 = *v17;
        goto LABEL_82;
      }

LABEL_43:
      sub_1819012D0(92272);
      v19 = 0.0;
      goto LABEL_82;
    }

    v14 = *a3;
    if (*a3)
    {
      v15 = *(v14 + 20);
      if ((v15 & 0x24) != 0)
      {
        v16 = *v14;
        goto LABEL_24;
      }

      if ((v15 & 8) != 0)
      {
        v23 = *v14;
        if (*v14 < -9.22337204e18)
        {
          v16 = 0x8000000000000000;
          goto LABEL_61;
        }

        if (v23 > 9.22337204e18)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
          if (v13 >= 1)
          {
LABEL_26:
            if ((v13 ^ 0x7FFFFFFFFFFFFFFFuLL) >= v16)
            {
              goto LABEL_89;
            }

LABEL_63:
            *(v6 + 33) = 1;
            v24 = *(v6 + 16);
            if ((v24 - 0x10000000000000) > 0xFFE0000000000000)
            {
              *v6 = v24;
              v26 = 0.0;
            }

            else
            {
              if (v24 <= 0)
              {
                v25 = -(-v24 & 0x3FFF);
              }

              else
              {
                v25 = *(v6 + 16) & 0x3FFFLL;
              }

              *v6 = (v24 - v25);
              v26 = v25;
            }

            *(v6 + 8) = v26;
            *(v6 + 32) = 1;
            v10 = *a3;
            if (*a3)
            {
              goto LABEL_16;
            }

            goto LABEL_80;
          }

LABEL_89:
          *(v6 + 16) = v16 + v13;
          return;
        }

        v16 = v23;
LABEL_24:
        if ((v16 & 0x8000000000000000) == 0)
        {
          if (v13 >= 1)
          {
            goto LABEL_26;
          }

          goto LABEL_89;
        }

LABEL_61:
        if ((v13 & 0x8000000000000000) == 0 || (0x8000000000000001 - v13) <= (v16 + 1))
        {
          goto LABEL_89;
        }

        goto LABEL_63;
      }

      if ((v15 & 0x12) != 0 && *(v14 + 8))
      {
        v16 = sub_18193CFCC(v14);
        goto LABEL_24;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v16 = 0;
    goto LABEL_89;
  }

  v6 = sub_18190C2E0(a1, 40);
  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = *(v7 + 20);
  if ((0x4000000040004uLL >> v9))
  {
    sub_18190FC94(v7, 0);
    v9 = *(v7 + 20);
  }

  v8 = byte_181A203AA[v9 & 0x3F];
  if (v6)
  {
    goto LABEL_12;
  }
}

void sub_181992D24(uint64_t a1)
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

    if (*(v4 + 24) >= 1)
    {
      if (*(v4 + 32))
      {
        if (*(v4 + 33))
        {
          v3[9] = 1;
          v5 = *v3;

          sub_1818900D0(v5, "integer overflow", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          v8 = *v4;
          if ((*(v4 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v8 = *(v4 + 8) + v8;
          }

          v9 = *v3;
          if ((*(v9 + 20) & 0x9000) != 0)
          {
            sub_18193CA54(v9);
          }

          else
          {
            *(v9 + 20) = 1;
          }

          *v9 = v8;
          *(v9 + 20) = 8;
        }
      }

      else
      {
        v6 = *(v4 + 16);
        v7 = *v3;
        if ((*(*v3 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v7, v6);
        }

        else
        {
          *v7 = v6;
          *(v7 + 20) = 4;
        }
      }
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

double sub_181992EAC(uint64_t a1, double result, uint64_t a3, uint64_t *a4)
{
  if (!a1 || (v5 = *(a1 + 8)) == 0 || !*(v5 + 32))
  {
    sub_1819012D0(100772);
    v7 = 0;
    v8 = *a4;
    if (*a4)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 20) < 0)
  {
    v7 = *(v6 + 8);
    v8 = *a4;
    if (*a4)
    {
      goto LABEL_9;
    }

LABEL_6:
    sub_1819012D0(99877);
    v9 = 0;
    if (!v7)
    {
      return result;
    }

LABEL_12:
    if (v9 == 5)
    {
      return result;
    }

    --*(v7 + 24);
    v11 = *a4;
    if (*(v7 + 32))
    {
      if (v9 == 1)
      {
        if (v11)
        {
          v12 = *(v11 + 20);
          if ((v12 & 0x24) != 0)
          {
            v13 = *v11;
            goto LABEL_18;
          }

          if ((v12 & 8) != 0)
          {
            v21 = *v11;
            if (*v11 < -9.22337204e18)
            {
              goto LABEL_60;
            }

            if (v21 > 9.22337204e18)
            {
              v14 = 0x8000000000000001;
              goto LABEL_72;
            }

            *&v13 = v21;
LABEL_18:
            if (v13 != -0.0)
            {
              v14 = -*&v13;
              if ((*&v13 - 0x10000000000000) > 0xFFE0000000000000)
              {
                goto LABEL_79;
              }

LABEL_72:
              if (v14 <= 0)
              {
                v26 = -(-v14 & 0x3FFF);
              }

              else
              {
                v26 = v14 & 0x3FFF;
              }

              v36 = (v14 - v26);
              v33 = *v7 + v36;
              if (fabs(*v7) <= fabs(v36))
              {
                v27 = v36 - v33;
                v28 = *v7;
              }

              else
              {
                v27 = *v7 - v33;
                v28 = (v14 - v26);
              }

              *(v7 + 8) = v27 + v28 + *(v7 + 8);
              *v7 = v33;
              v14 = v26;
              goto LABEL_79;
            }

LABEL_60:
            v31 = *v7 + 9.22337204e18;
            if (fabs(*v7) <= fabs(9.22337204e18))
            {
              v22 = 9.22337204e18 - v31;
              v23 = *v7;
            }

            else
            {
              v22 = *v7 - v31;
              v23 = 9.22337204e18;
            }

            *(v7 + 8) = v22 + v23 + *(v7 + 8);
            *v7 = v31;
            v32 = *v7 + 16383.0;
            if (fabs(*v7) <= fabs(16383.0))
            {
              v24 = 16383.0 - v32;
              v25 = *v7;
            }

            else
            {
              v24 = *v7 - v32;
              v25 = 16383.0;
            }

            *(v7 + 8) = v24 + v25 + *(v7 + 8);
            *v7 = v32;
            v35 = 1.0;
            goto LABEL_81;
          }

          if ((v12 & 0x12) != 0 && *(v11 + 8))
          {
            v13 = COERCE_DOUBLE(sub_18193CFCC(v11));
            goto LABEL_18;
          }
        }

        else
        {
          sub_1819012D0(92237);
        }

        v14 = 0;
LABEL_79:
        v19 = v14;
        goto LABEL_80;
      }

      if (v11)
      {
        v18 = *(v11 + 20);
        if ((v18 & 8) != 0)
        {
          v19 = -*v11;
          goto LABEL_80;
        }

        if ((v18 & 0x24) != 0)
        {
          v19 = -*v11;
LABEL_80:
          v35 = v19;
LABEL_81:
          v34 = *v7 + v35;
          if (fabs(*v7) <= fabs(v35))
          {
            v29 = v35 - v34;
            v30 = *v7;
          }

          else
          {
            v29 = *v7 - v34;
            v30 = v35;
          }

          *(v7 + 8) = v29 + v30 + *(v7 + 8);
          result = v34;
          *v7 = v34;
          return result;
        }

        if ((v18 & 0x12) != 0)
        {
          v19 = -sub_18193CF90(v11);
          goto LABEL_80;
        }
      }

      else
      {
        sub_1819012D0(92272);
      }

      v19 = -0.0;
      goto LABEL_80;
    }

    if (v11)
    {
      v15 = *(v11 + 20);
      if ((v15 & 0x24) != 0)
      {
        v16 = *v11;
        goto LABEL_24;
      }

      if ((v15 & 8) != 0)
      {
        result = *v11;
        if (*v11 < -9.22337204e18)
        {
          goto LABEL_54;
        }

        if (result > 9.22337204e18)
        {
          v17 = *(v7 + 16);
          v16 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

LABEL_27:
          if ((0x8000000000000001 - v17) > 1 - v16)
          {
            goto LABEL_55;
          }

LABEL_39:
          *(v7 + 16) = v17 - v16;
          return result;
        }

        v16 = result;
LABEL_24:
        if (v16 != 0x8000000000000000)
        {
          v17 = *(v7 + 16);
          if (v16 > 0)
          {
            if ((v17 & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_27;
          }

LABEL_37:
          if (v17 >= 1 && (v17 ^ 0x7FFFFFFFFFFFFFFFuLL) < -v16)
          {
            goto LABEL_55;
          }

          goto LABEL_39;
        }

LABEL_54:
        v20 = *(v7 + 16);
        if (v20 < 0)
        {
          *(v7 + 16) = v20 & 0x7FFFFFFFFFFFFFFFLL;
          return result;
        }

LABEL_55:
        *(v7 + 32) = 257;
        return result;
      }

      if ((v15 & 0x12) != 0 && *(v11 + 8))
      {
        v16 = sub_18193CFCC(v11);
        goto LABEL_24;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v16 = 0;
    v17 = *(v7 + 16);
    goto LABEL_37;
  }

  v7 = sub_18190C2E0(a1, 40);
  v8 = *a4;
  if (!*a4)
  {
    goto LABEL_6;
  }

LABEL_9:
  v10 = *(v8 + 20);
  if ((0x4000000040004uLL >> v10))
  {
    sub_18190FC94(v8, 0);
    v10 = *(v8 + 20);
  }

  v9 = byte_181A203AA[v10 & 0x3F];
  if (v7)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1819933C0(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 && *(v2 + 32))
    {
      v3 = a1[2];
      if ((*(v3 + 20) & 0x80000000) == 0)
      {
        v4 = sub_18190C2E0(a1, 0);
        if (!v4)
        {
          goto LABEL_8;
        }

LABEL_17:
        if (*(v4 + 32))
        {
          if ((*(v4 + 8) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v5 = *v4;
          }

          else
          {
            v5 = *v4 + *(v4 + 8);
          }
        }

        else
        {
          v5 = *(v4 + 16);
        }

LABEL_9:
        v6 = *a1;
        if ((*(v6 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v6);
        }

        else
        {
          *(v6 + 20) = 1;
        }

        *v6 = v5;
        *(v6 + 20) = 8;
        return;
      }

      v4 = *(v3 + 8);
      if (v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1819012D0(100772);
    }

LABEL_8:
    v5 = 0.0;
    goto LABEL_9;
  }

  sub_1819012D0(100772);

  sub_1819012D0(100067);
}

void sub_1819934E4(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 0);
      if (!v5)
      {
        return;
      }
    }

    v6 = *(v5 + 24);
    if (v6 >= 1)
    {
      if (*(v5 + 32))
      {
        v7 = *v5;
        if ((*(v5 + 8) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v7 = *v5 + *(v5 + 8);
        }
      }

      else
      {
        v7 = *(v5 + 16);
      }

      v8 = v7 / v6;
      v9 = *v4;
      if ((*(v9 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v9);
      }

      else
      {
        *(v9 + 20) = 1;
      }

      *v9 = v8;
      *(v9 + 20) = 8;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_1819935E8(uint64_t result, int a2, uint64_t *a3)
{
  if (!result || (v5 = *(result + 8)) == 0 || !*(v5 + 32))
  {
    result = sub_1819012D0(100772);
    if (!a2)
    {
      return result;
    }

    v7 = 0;
    v8 = *a3;
    if (*a3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v6 = *(result + 16);
  if ((*(v6 + 20) & 0x80000000) == 0)
  {
    result = sub_18190C2E0(result, 8);
    v7 = result;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!v7)
    {
      return result;
    }

    goto LABEL_15;
  }

  v7 = *(v6 + 8);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *a3;
  if (*a3)
  {
LABEL_7:
    v9 = (0x5555555555555555uLL >> *(v8 + 20)) & 1;
    goto LABEL_11;
  }

LABEL_10:
  result = sub_1819012D0(99877);
  LODWORD(v9) = 1;
LABEL_11:
  if (v9)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
LABEL_15:
    --*v7;
  }

  return result;
}

unsigned __int16 *sub_1819936B8(unsigned __int16 *result, int a2, void *a3)
{
  v5 = result;
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)))
    {
      return result;
    }
  }

  else
  {
    result = sub_1819012D0(99877);
  }

  if (!v5 || (v6 = v5[1]) == 0 || !*(v6 + 32))
  {
    v9 = 100772;
    goto LABEL_12;
  }

  v7 = v5[2];
  if (*(v7 + 20) < 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = sub_18190C2E0(v5, 48);
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  v10 = *(v8 + 20);
  *(v8 + 20) = *(*(*v5 + 24) + 136);
  if (a2 != 1)
  {
    v12 = a3[1];
    if (!v10)
    {
      if (v12)
      {
        v16 = *(v12 + 20);
        if ((v16 & 2) != 0 && *(v12 + 22) == 1)
        {
          v15 = *(v12 + 16);
          goto LABEL_59;
        }

        if ((v16 & 0x10) != 0)
        {
          v15 = *(v12 + 16);
          if ((*(v12 + 20) & 0x400) != 0)
          {
            v15 += *v12;
          }

          goto LABEL_59;
        }

        if ((v16 & 1) == 0)
        {
          v15 = sub_18193CB44(v12, 1);
          goto LABEL_59;
        }
      }

      else
      {
        sub_1819012D0(93690);
      }

      v15 = 0;
      goto LABEL_59;
    }

    if (v12)
    {
      v13 = *(v12 + 20);
      if ((~v13 & 0x202) == 0 && *(v12 + 22) == 1)
      {
        v14 = *(v12 + 8);
        goto LABEL_49;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_18193CB70(v12, 1);
        v12 = a3[1];
        if (!v12)
        {
          goto LABEL_38;
        }
      }

LABEL_49:
      v22 = *(v12 + 20);
      if ((v22 & 2) != 0 && *(v12 + 22) == 1)
      {
        v20 = *(v12 + 16);
        goto LABEL_40;
      }

      if ((v22 & 0x10) != 0)
      {
        v20 = *(v12 + 16);
        if ((*(v12 + 20) & 0x400) != 0)
        {
          v20 += *v12;
        }

LABEL_40:
        if (v14)
        {
          if (v20 <= 0)
          {
            if (v20)
            {
              sub_1819012D0(34353);
            }
          }

          else
          {
            v21 = *(v8 + 24);
            if ((v21 + v20) >= *(v8 + 16))
            {
              sub_181906814(v8, v14, v20);
            }

            else
            {
              *(v8 + 24) = v21 + v20;
              memcpy((*(v8 + 8) + v21), v14, v20);
            }
          }
        }

        else
        {
          v20 = 0;
        }

        v23 = *(v8 + 40);
        if (v20 == *(v8 + 36))
        {
          if (!v23)
          {
            goto LABEL_80;
          }
        }

        else if (!v23)
        {
          v30 = *(v8 + 32);
          if (!sqlite3_initialize())
          {
            v26 = sub_181902484(4 * v30 + 4, 0x100004052888210);
            if (v26)
            {
              v39 = *(v8 + 32);
              v40 = (v39 - 1);
              if (v39 > 1)
              {
                v41 = *(v8 + 36);
                if (v39 >= 9)
                {
                  v42 = v40 & 0x7FFFFFF8;
                  v43 = vdupq_n_s32(v41);
                  v44 = (v26 + 16);
                  v45 = v42;
                  do
                  {
                    v44[-1] = v43;
                    *v44 = v43;
                    v44 += 2;
                    v45 -= 8;
                  }

                  while (v45);
                  if (v42 == v40)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  v42 = 0;
                }

                do
                {
                  *(v26 + 4 * v42++) = v41;
                }

                while (v40 != v42);
              }

LABEL_70:
              v27 = *(v8 + 32);
              v28 = __OFSUB__(v27, 1);
              v29 = v27 - 1;
              if (v29 < 0 == v28)
              {
                *(v26 + 4 * v29) = v20;
              }

              *(v8 + 40) = v26;
              goto LABEL_80;
            }
          }

LABEL_74:
          *(v8 + 28) = 7;
          if (*(v8 + 20))
          {
            v31 = *(v8 + 29);
            if ((v31 & 4) != 0)
            {
              v32 = *(v8 + 8);
              if (v32)
              {
                sub_181929C84(*v8, v32);
                v31 = *(v8 + 29);
              }

              *(v8 + 29) = v31 & 0xFB;
            }

            *(v8 + 16) = 0;
            *(v8 + 24) = 0;
            *(v8 + 8) = 0;
          }

          goto LABEL_80;
        }

        v24 = *(v8 + 32);
        v25 = sqlite3_initialize();
        if (v24)
        {
          if (!v25)
          {
            v26 = sub_18190287C(v23, 4 * v24, 0x100004052888210);
            if (v26)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v22 & 1) == 0)
      {
        v20 = sub_18193CB44(v12, 1);
        goto LABEL_40;
      }

LABEL_39:
      v20 = 0;
      goto LABEL_40;
    }

    v14 = 0;
LABEL_38:
    sub_1819012D0(93690);
    goto LABEL_39;
  }

  if (!v10)
  {
    v15 = 1;
LABEL_59:
    *(v8 + 36) = v15;
    goto LABEL_80;
  }

  if (*(v8 + 24) + 1 >= *(v8 + 16))
  {
    v11 = sub_181906424(v8, 1);
    if (v11 < 1)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v11 = 1;
  }

  v17 = v11 + 1;
  do
  {
    v18 = *(v8 + 8);
    v19 = *(v8 + 24);
    *(v8 + 24) = v19 + 1;
    *(v18 + v19) = 44;
    --v17;
  }

  while (v17 > 1);
LABEL_80:
  ++*(v8 + 32);
  result = *a3;
  if (!*a3)
  {
    v34 = 0;
LABEL_88:
    result = sub_1819012D0(93690);
    goto LABEL_89;
  }

  v33 = result[10];
  if ((~v33 & 0x202) == 0 && *(result + 22) == 1)
  {
    v34 = *(result + 1);
    goto LABEL_97;
  }

  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_18193CB70(result, 1);
    result = *a3;
    if (!*a3)
    {
      goto LABEL_88;
    }
  }

LABEL_97:
  v38 = result[10];
  if ((v38 & 2) != 0 && *(result + 22) == 1)
  {
    v35 = *(result + 4);
    goto LABEL_90;
  }

  if ((v38 & 0x10) != 0)
  {
    v35 = *(result + 4);
    if ((result[10] & 0x400) != 0)
    {
      v35 += *result;
    }

    goto LABEL_90;
  }

  if ((v38 & 1) == 0)
  {
    result = sub_18193CB44(result, 1);
    v35 = result;
    goto LABEL_90;
  }

LABEL_89:
  v35 = 0;
LABEL_90:
  if (!v34)
  {
    return result;
  }

  if (v35 > 0)
  {
    v36 = *(v8 + 24);
    if ((v36 + v35) >= *(v8 + 16))
    {

      return sub_181906814(v8, v34, v35);
    }

    else
    {
      *(v8 + 24) = v36 + v35;
      v37 = (*(v8 + 8) + v36);

      return memcpy(v37, v34, v35);
    }
  }

  if (!v35)
  {
    return result;
  }

  v9 = 34353;
LABEL_12:

  return sub_1819012D0(v9);
}

void sub_181993BF0(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0 || !*(v1 + 32))
  {

    sub_1819012D0(100772);
    return;
  }

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

  v5 = *(v4 + 28);
  if (*(v4 + 28))
  {
    v3[9] = v5;
    if ((*(*v3 + 20) & 1) == 0)
    {
      goto LABEL_27;
    }

    v6 = v3;
    if (v5 == 100)
    {
      v7 = "another row available";
    }

    else if (v5 == 101)
    {
      v7 = "no more rows available";
    }

    else if (v5 > 0x1C || ((0x1410004uLL >> v5) & 1) != 0)
    {
      v7 = "unknown error";
    }

    else
    {
      v7 = off_1E6A27DD8[v5];
    }

    v8 = -1;
LABEL_26:
    sub_18190B23C(v6, v7, v8, 1u, 0);
LABEL_27:
    v10 = *(v4 + 29);
    if ((v10 & 4) != 0)
    {
      v11 = *(v4 + 8);
      if (v11)
      {
        sub_181929C84(*v4, v11);
        v10 = *(v4 + 29);
      }

      *(v4 + 29) = v10 & 0xFB;
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    v9 = *(v4 + 40);
    if (!v9)
    {
      return;
    }

    goto LABEL_32;
  }

  v6 = v3;
  if ((*(v4 + 29) & 4) == 0)
  {
    v7 = &byte_181A2878D;
    v8 = 0;
    goto LABEL_26;
  }

  sub_18190B23C(v3, *(v4 + 8), *(v4 + 24), 1u, sub_181916CE4);
  v9 = *(v4 + 40);
  if (!v9)
  {
    return;
  }

LABEL_32:
  v12 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_37:
    v13 = *v12;

    v13(v9);
    return;
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
    goto LABEL_37;
  }
}

void sub_181993E20(uint64_t a1)
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

    v5 = *(v4 + 28);
    if (v5 != 7)
    {
      if (v5 == 18)
      {
        *(v3 + 9) = 18;
        v6 = *v3;

        sub_1818900D0(v6, "string or blob too big", -1, 1u, 0);
        return;
      }

      v7 = *(v4 + 24);
      if (*(v4 + 32) < 1)
      {
        if (!v7)
        {
          v10 = 0;
          v8 = 0;
          goto LABEL_24;
        }
      }

      else if (!v7)
      {
        v8 = &byte_181A2878D;
        v9 = v3;
        v10 = 1;
        v11 = 0;
LABEL_25:

        sub_18190B23C(v9, v8, v10, 1u, v11);
        return;
      }

      *(*(v4 + 8) + v7) = 0;
      v8 = *(v4 + 8);
      v10 = *(v4 + 24);
LABEL_24:
      v9 = v3;
      v11 = -1;
      goto LABEL_25;
    }

    sqlite3_result_error_nomem(v3);
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181993F88(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)))
    {
      return result;
    }
  }

  else
  {
    v4 = result;
    sub_1819012D0(99877);
    result = v4;
  }

  if (result)
  {
    v5 = *(result + 8);
    if (v5)
    {
      if (*(v5 + 32))
      {
        v6 = *(result + 16);
        if (*(v6 + 20) < 0)
        {
          v7 = *(v6 + 8);
          if (!v7)
          {
            return result;
          }
        }

        else
        {
          result = sub_18190C2E0(result, 48);
          v7 = result;
          if (!result)
          {
            return result;
          }
        }

        v8 = *a3;
        if (*a3)
        {
          v9 = *(v8 + 20);
          if ((~v9 & 0x202) != 0)
          {
            if (v9)
            {
              goto LABEL_22;
            }
          }

          else if ((v9 & 1) != 0 || *(v8 + 22) == 1)
          {
            goto LABEL_22;
          }

          sub_18193CB70(v8, 1);
          v8 = *a3;
          if (*a3)
          {
LABEL_22:
            v10 = *(v8 + 20);
            if ((v10 & 2) != 0 && *(v8 + 22) == 1)
            {
              v11 = *(v8 + 16);
              goto LABEL_27;
            }

            if ((v10 & 0x10) != 0)
            {
              v11 = *(v8 + 16);
              if ((*(v8 + 20) & 0x400) != 0)
              {
                v11 += *v8;
              }

LABEL_27:
              v12 = *(v7 + 32);
              *(v7 + 32) = v12 - 1;
              result = *(v7 + 40);
              if (result)
              {
                v13 = __OFSUB__(v12, 2);
                v14 = v12 - 2;
                if (v14 < 0 == v13)
                {
                  v11 += *result;
                  result = memmove(result, (result + 4), 4 * v14);
                }
              }

              else
              {
                v11 += *(v7 + 36);
              }

              v15 = *(v7 + 24);
              v16 = (v15 - v11);
              if (v15 <= v11)
              {
                *(v7 + 24) = 0;
              }

              else
              {
                *(v7 + 24) = v16;
                result = memmove(*(v7 + 8), (*(v7 + 8) + v11), v16);
                if (*(v7 + 24))
                {
                  return result;
                }
              }

              *(v7 + 20) = 0;
              v17 = *(v7 + 40);
              if (v17)
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
                  result = off_1ED452EB0(v17);
                  v17 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_45;
                  }

                  v18 = &xmmword_1ED452F28;
                }

                result = (*v18)(v17);
              }

LABEL_45:
              *(v7 + 40) = 0;
              return result;
            }

            if ((v10 & 1) == 0)
            {
              v11 = sub_18193CB44(v8, 1);
              goto LABEL_27;
            }

LABEL_26:
            v11 = 0;
            goto LABEL_27;
          }
        }

        sub_1819012D0(93690);
        goto LABEL_26;
      }
    }
  }

  return sub_1819012D0(100772);
}

void sub_1819941E4(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v6 = *(v4 + 20);
    if ((0x4000000040004uLL >> v6))
    {
      v7 = a4;
      sub_18190FC94(*a4, 0);
      a4 = v7;
      v6 = *(v4 + 20);
    }

    v8 = byte_181A203AA[v6 & 0x3F];
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      v9 = *a4;
      if (*a4)
      {
        v10 = *(v9 + 20);
        if ((v10 & 0x24) != 0)
        {
          v11 = *v9;
          goto LABEL_20;
        }

        if ((v10 & 8) != 0)
        {
          v20 = *v9;
          if (*v9 >= -9.22337204e18)
          {
            if (v20 <= 9.22337204e18)
            {
              v11 = v20;
            }

            else
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v11 = 0x8000000000000000;
          }

LABEL_20:
          if (a1)
          {
            v16 = *a1;
            if ((*(*a1 + 20) & 0x9000) != 0)
            {

              sub_18193D288(v16, v11);
            }

            else
            {
              *v16 = v11;
              *(v16 + 20) = 4;
            }
          }

          return;
        }

        if ((v10 & 0x12) != 0 && *(v9 + 8))
        {
          v11 = sub_18193CFCC(v9);
          goto LABEL_20;
        }
      }

      else
      {
        sub_1819012D0(92237);
      }

      v11 = 0;
      goto LABEL_20;
    }

    if (a1)
    {
      v13 = *(a1[1] + 8);
      v14 = *a4;
      if (*a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      v14 = *a4;
      if (*a4)
      {
LABEL_15:
        v15 = *(v14 + 20);
        if ((v15 & 8) != 0)
        {
          a2.n128_u64[0] = *v14;
        }

        else if ((v15 & 0x24) != 0)
        {
          a2.n128_f64[0] = *v14;
        }

        else if ((v15 & 0x12) != 0)
        {
          a2.n128_f64[0] = sub_18193CF90(v14);
        }

        else
        {
          a2.n128_u64[0] = 0;
        }

        goto LABEL_28;
      }
    }

    sub_1819012D0(92272);
    a2.n128_u64[0] = 0;
LABEL_28:
    v13(a2);
    if (a1)
    {
      v18 = v17;
      v19 = *a1;
      if ((*(v19 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v19);
      }

      else
      {
        *(v19 + 20) = 1;
      }

      *v19 = v18;
      *(v19 + 20) = 8;
      return;
    }

    v12 = 100067;
    goto LABEL_10;
  }

  v12 = 99877;
LABEL_10:

  sub_1819012D0(v12);
}

void sub_181994450(uint64_t *a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    goto LABEL_22;
  }

  v5 = *(v3 + 20);
  if ((0x4000000040004uLL >> v5))
  {
    v6 = a2;
    v7 = a3;
    sub_18190FC94(*a3, 0);
    a2 = v6;
    a3 = v7;
    v5 = *(v3 + 20);
  }

  if (byte_181A203AA[v5 & 0x3F] - 1 > 1)
  {
    return;
  }

  v8 = *a3;
  if (!*a3)
  {
LABEL_23:
    v20 = 26736;
    goto LABEL_24;
  }

  v9 = *(v8 + 20);
  if ((v9 & 8) != 0)
  {
    v10 = *v8;
    if (*v8 <= 0.0)
    {
      return;
    }
  }

  else if ((v9 & 0x24) != 0)
  {
    v10 = *v8;
    if (v10 <= 0.0)
    {
      return;
    }
  }

  else
  {
    if ((v9 & 0x12) == 0)
    {
      return;
    }

    v24 = a3;
    v25 = a2;
    v10 = sub_18193CF90(v8);
    a2 = v25;
    a3 = v24;
    if (v10 <= 0.0)
    {
      return;
    }
  }

  if (a2 != 2)
  {
    if (a1)
    {
      v22 = *(a1[1] + 8);
      if (v22 == 2)
      {
        v23 = log2(v10);
        goto LABEL_38;
      }

      if (v22 == 1)
      {
        v23 = log10(v10);
LABEL_38:
        v26 = v23;
LABEL_39:
        v27 = *a1;
        if ((*(v27 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v27);
        }

        else
        {
          *(v27 + 20) = 1;
        }

        *v27 = v26;
        *(v27 + 20) = 8;
        return;
      }
    }

    v26 = log(v10);
    if (!a1)
    {
LABEL_36:
      v21 = 100067;
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v11 = *a3;
  if (!*a3)
  {
LABEL_22:
    v20 = -31195;
LABEL_24:
    v21 = v20 | 0x10000;
LABEL_25:

    sub_1819012D0(v21);
    return;
  }

  v12 = *(v11 + 20);
  if ((0x4000000040004uLL >> v12))
  {
    v13 = a3;
    v14 = v10;
    sub_18190FC94(*a3, 0);
    v10 = v14;
    a3 = v13;
    v12 = *(v11 + 20);
  }

  if (byte_181A203AA[v12 & 0x3F] - 1 <= 1)
  {
    v15 = a3;
    v16 = log(v10);
    if (v16 > 0.0)
    {
      v17 = v15[1];
      if (v17)
      {
        v18 = *(v17 + 20);
        if ((v18 & 8) != 0)
        {
          v19 = *v17;
          if (*v17 <= 0.0)
          {
            return;
          }
        }

        else if ((v18 & 0x24) != 0)
        {
          v19 = *v17;
          if (v19 <= 0.0)
          {
            return;
          }
        }

        else
        {
          if ((v18 & 0x12) == 0)
          {
            return;
          }

          v28 = v16;
          v19 = sub_18193CF90(v17);
          v16 = v28;
          if (v19 <= 0.0)
          {
            return;
          }
        }

        v26 = log(v19) / v16;
        if (!a1)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      goto LABEL_23;
    }
  }
}

void sub_1819946E0(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v6 = *(v4 + 20);
    if ((0x4000000040004uLL >> v6))
    {
      v7 = a4;
      sub_18190FC94(*a4, 0);
      a4 = v7;
      v6 = *(v4 + 20);
    }

    if (byte_181A203AA[v6 & 0x3F] - 3 >= 0xFFFFFFFE)
    {
      v8 = *a4;
      if (*a4)
      {
        v9 = *(v8 + 20);
        if ((v9 & 8) != 0)
        {
          a2.n128_u64[0] = *v8;
        }

        else if ((v9 & 0x24) != 0)
        {
          a2.n128_f64[0] = *v8;
        }

        else if ((v9 & 0x12) != 0)
        {
          a2.n128_f64[0] = sub_18193CF90(v8);
        }

        else
        {
          a2.n128_u64[0] = 0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        a2.n128_u64[0] = 0;
      }

      v10 = (*(a1[1] + 8))(a2);
      v11 = *a1;
      if ((*(v11 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v11);
      }

      else
      {
        *(v11 + 20) = 1;
      }

      *v11 = v10;
      *(v11 + 20) = 8;
    }
  }

  else
  {

    sub_1819012D0(99877);
  }
}

void sub_18199483C(uint64_t *a1, double a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  if (!*a5)
  {
LABEL_13:

    sub_1819012D0(99877);
    return;
  }

  v8 = *(v5 + 20);
  if ((0x4000000040004uLL >> v8))
  {
    sub_18190FC94(*a5, 0);
    v8 = *(v5 + 20);
  }

  if (byte_181A203AA[v8 & 0x3F] - 3 >= 0xFFFFFFFE)
  {
    v9 = a5[1];
    if (v9)
    {
      v10 = *(v9 + 20);
      if ((0x4000000040004uLL >> v10))
      {
        sub_18190FC94(a5[1], 0);
        v10 = *(v9 + 20);
      }

      if (byte_181A203AA[v10 & 0x3F] - 3 >= 0xFFFFFFFE)
      {
        v11 = *a5;
        if (*a5)
        {
          v12 = *(v11 + 20);
          if ((v12 & 8) != 0)
          {
            v13 = *v11;
          }

          else if ((v12 & 0x24) != 0)
          {
            v13 = *v11;
          }

          else if ((v12 & 0x12) != 0)
          {
            v13 = sub_18193CF90(v11);
          }

          else
          {
            v13 = 0.0;
          }
        }

        else
        {
          sub_1819012D0(92272);
          v13 = 0.0;
        }

        v14 = a5[1];
        if (v14)
        {
          v15 = *(v14 + 20);
          if ((v15 & 8) != 0)
          {
            a3.n128_u64[0] = *v14;
          }

          else if ((v15 & 0x24) != 0)
          {
            a3.n128_f64[0] = *v14;
          }

          else if ((v15 & 0x12) != 0)
          {
            a3.n128_u64[0] = sub_18193CF90(v14);
          }

          else
          {
            a3.n128_u64[0] = 0;
          }
        }

        else
        {
          sub_1819012D0(92272);
          a3.n128_u64[0] = 0;
        }

        v16 = (*(a1[1] + 8))(v13, a3);
        v17 = *a1;
        if ((*(v17 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v17);
        }

        else
        {
          *(v17 + 20) = 1;
        }

        *v17 = v16;
        *(v17 + 20) = 8;
      }

      return;
    }

    goto LABEL_13;
  }
}

void sub_181994A60(int **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (((*a1)[5] & 0x9000) != 0)
    {
      sub_18193CA54(*a1);
    }

    *v2 = 0x400921FB54442D18;
    *(v2 + 10) = 8;
  }

  else
  {

    sub_1819012D0(100067);
  }
}

void sub_181994AD0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v5 = *(v3 + 20);
    if ((0x4000000040004uLL >> v5))
    {
      v6 = a3;
      sub_18190FC94(*a3, 0);
      a3 = v6;
      v5 = *(v3 + 20);
    }

    if (byte_181A203AA[v5 & 0x3F] - 3 >= 0xFFFFFFFE)
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = *(v7 + 20);
        if ((v8 & 8) != 0)
        {
          v9 = *v7;
        }

        else if ((v8 & 0x24) != 0)
        {
          v9 = *v7;
        }

        else
        {
          v9 = (v8 & 0x12) != 0 ? sub_18193CF90(v7) : 0.0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        v9 = 0.0;
      }

      if (a1)
      {
        v10 = *a1;
        if (v9 < 0.0)
        {
          v11 = -1;
        }

        else
        {
          v11 = v9 > 0.0;
        }

        if ((*(v10 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v10, v11);
        }

        else
        {
          *v10 = v11;
          *(v10 + 20) = 4;
        }
      }
    }
  }

  else
  {

    sub_1819012D0(99877);
  }
}

void sub_181994C1C(sqlite3_context *a1, int a2, uint64_t *a3, int a4, void *a5)
{
  v7 = a3;
  v10 = 0;
  v11 = a2 - 1;
  if (a2 >= 1)
  {
    v12 = a2;
    v13 = a3;
    while (1)
    {
      v15 = *v13;
      if (!*v13)
      {
        break;
      }

      v16 = *(v15 + 20);
      if ((v16 & 2) != 0 && *(v15 + 22) == 1)
      {
        v14 = *(v15 + 16);
      }

      else
      {
        if ((v16 & 0x10) != 0)
        {
          v14 = *(v15 + 16);
          if ((*(v15 + 20) & 0x400) != 0)
          {
            v14 += *v15;
          }

          goto LABEL_4;
        }

        if (v16)
        {
          goto LABEL_12;
        }

        v14 = sub_18193CB44(v15, 1);
      }

LABEL_4:
      v10 += v14;
      ++v13;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    sub_1819012D0(93690);
LABEL_12:
    v14 = 0;
    goto LABEL_4;
  }

LABEL_15:
  if (sqlite3_initialize() || (v17 = sub_181902484(v10 + a4 * v11 + 1, 2810426734)) == 0)
  {

    sqlite3_result_error_nomem(a1);
  }

  else
  {
    v18 = v17;
    if (a2 >= 1)
    {
      __src = a5;
      v19 = 0;
      v20 = a2;
      while (1)
      {
        v21 = *v7;
        if (*v7)
        {
          if ((0xAAAAAAAAAAAAAAAALL >> *(v21 + 20)))
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1819012D0(99877);
          v21 = *v7;
          if (!*v7)
          {
            sub_1819012D0(93690);
            v23 = 0;
LABEL_40:
            v24 = *v7;
            if (!*v7)
            {
              goto LABEL_23;
            }

            goto LABEL_41;
          }
        }

        v22 = *(v21 + 20);
        if ((v22 & 2) != 0 && *(v21 + 22) == 1)
        {
          v23 = *(v21 + 16);
          v24 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

        else if ((v22 & 0x10) != 0)
        {
          v23 = *(v21 + 16);
          if ((*(v21 + 20) & 0x400) == 0)
          {
            goto LABEL_40;
          }

          v23 += *v21;
          v24 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

        else if (v22)
        {
          v23 = 0;
          v24 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v23 = sub_18193CB44(v21, 1);
          v24 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

LABEL_41:
        v25 = *(v24 + 20);
        if ((~v25 & 0x202) != 0 || *(v24 + 22) != 1)
        {
          if ((v25 & 1) == 0)
          {
            v26 = sub_18193CB70(v24, 1);
            if (v26)
            {
LABEL_47:
              if (a4 >= 1 && v19 >= 1)
              {
                memcpy(&v18[v19], __src, a4);
                v19 += a4;
              }

              memcpy(&v18[v19], v26, v23);
              v19 += v23;
            }
          }
        }

        else
        {
          v26 = *(v24 + 8);
          if (v26)
          {
            goto LABEL_47;
          }
        }

LABEL_23:
        ++v7;
        if (!--v20)
        {
          goto LABEL_53;
        }
      }
    }

    v19 = 0;
LABEL_53:
    v18[v19] = 0;

    sqlite3_result_text64(a1, v18, v19, sqlite3_free, 1u);
  }
}

uint64_t sub_181994EE8(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
  }

  else
  {
    v5 = 0;
  }

  v153 = 0u;
  v154 = 0u;
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_12;
  }

  v7 = *(v6 + 10);
  if ((~v7 & 0x202) == 0 && *(v6 + 22) == 1)
  {
    v8 = *(v6 + 1);
    v9 = *(a3 + 24);
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_12:
    v8 = 0;
    v9 = *(a3 + 24);
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v8 = sub_18193CB70(v6, 1);
  v9 = *(a3 + 24);
  if (!v9)
  {
LABEL_20:
    v11 = 0;
    v12 = *(a3 + 32);
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
  v10 = *(v9 + 20);
  if ((~v10 & 0x202) != 0 || *(v9 + 22) != 1)
  {
    if (v10)
    {
      goto LABEL_20;
    }

    v11 = sub_18193CB70(v9, 1);
    v12 = *(a3 + 32);
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11 = *(v9 + 8);
    v12 = *(a3 + 32);
    if (!v12)
    {
      goto LABEL_29;
    }
  }

LABEL_21:
  v13 = *(v12 + 20);
  if ((~v13 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if ((v13 & 1) == 0)
    {
      v14 = sub_18193CB70(v12, 1);
      v15 = *(a3 + 40);
      if (v15)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

LABEL_29:
    v14 = 0;
    v15 = *(a3 + 40);
    if (v15)
    {
      goto LABEL_30;
    }

LABEL_27:
    sub_1819012D0(92237);
LABEL_28:
    LODWORD(v16) = 0;
    goto LABEL_32;
  }

  v14 = *(v12 + 8);
  v15 = *(a3 + 40);
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_30:
  v17 = *(v15 + 20);
  if ((v17 & 0x24) != 0)
  {
    v16 = *v15;
  }

  else if ((v17 & 8) != 0)
  {
    v40 = *v15;
    if (*v15 >= -9.22337204e18)
    {
      if (v40 <= 9.22337204e18)
      {
        *&v16 = v40;
      }

      else
      {
        LODWORD(v16) = -1;
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }
  }

  else
  {
    if ((v17 & 0x12) == 0 || !*(v15 + 8))
    {
      goto LABEL_28;
    }

    LODWORD(v16) = sub_18193CFCC(v15);
  }

LABEL_32:
  v18 = *(a3 + 48);
  if (!v18)
  {
    goto LABEL_41;
  }

  v19 = *(v18 + 20);
  if ((~v19 & 0x202) != 0 || *(v18 + 22) != 1)
  {
    if ((v19 & 1) == 0)
    {
      v20 = sub_18193CB70(v18, 1);
      v21 = *(a3 + 56);
      if (v21)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

LABEL_41:
    v20 = 0;
    v21 = *(a3 + 56);
    if (v21)
    {
      goto LABEL_42;
    }

LABEL_39:
    sub_1819012D0(92237);
LABEL_40:
    v22 = 0;
    goto LABEL_44;
  }

  v20 = *(v18 + 8);
  v21 = *(a3 + 56);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_42:
  v23 = *(v21 + 20);
  if ((v23 & 0x24) != 0)
  {
    v22 = *v21;
  }

  else if ((v23 & 8) != 0)
  {
    v41 = *v21;
    if (*v21 >= -9.22337204e18)
    {
      if (v41 <= 9.22337204e18)
      {
        v22 = v41;
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v22 = 0x8000000000000000;
    }
  }

  else
  {
    if ((v23 & 0x12) == 0 || !*(v21 + 8))
    {
      goto LABEL_40;
    }

    v22 = sub_18193CFCC(v21);
  }

LABEL_44:
  result = *(a3 + 64);
  if (!result)
  {
    result = sub_1819012D0(92237);
LABEL_48:
    v26 = 0;
    goto LABEL_49;
  }

  v25 = *(result + 20);
  if ((v25 & 0x24) != 0)
  {
    v26 = *result;
    goto LABEL_49;
  }

  if ((v25 & 8) != 0)
  {
    v42 = *result;
    if (*result >= -9.22337204e18)
    {
      if (v42 <= 9.22337204e18)
      {
        v26 = v42;
      }

      else
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v26 = 0x8000000000000000;
    }

    goto LABEL_49;
  }

  if ((v25 & 0x12) == 0 || !*(result + 8))
  {
    goto LABEL_48;
  }

  result = sub_18193CFCC(result);
  v26 = result;
LABEL_49:
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v124 = 0u;
  if (!v8 || !v14 || !v20 || (LODWORD(v16) & 0x80000000) != 0)
  {
    return result;
  }

  v122 = v22;
  v123 = v11;
  v27 = *(v5 + 528);
  if (!*(v5 + 111))
  {
    sub_181932C40(v5);
  }

  result = sub_181917F20(v5, v14, v123);
  if (!result || (v31 = result, SLODWORD(v16) >= *(result + 54)))
  {
    if (!*(v5 + 111))
    {

      return sub_181932CD8(v5);
    }

    return result;
  }

  v121 = v27;
  v120 = v20;
  v32 = v8;
  v33 = *(*(result + 8) + 16 * (LODWORD(v16) & 0x7FFFFFFF));
  v153 = 0u;
  v154 = 0u;
  if (LODWORD(v16) == *(result + 52))
  {
    v34 = -1;
  }

  else
  {
    v34 = LODWORD(v16);
  }

  HIDWORD(v153) = v34;
  *(v5 + 528) = 0;
  v35 = sub_1819972A8(&v127, v123, v5, v32, v26, v28, v29, v30);
  *(&v125 + 1) = 0;
  *&v126 = 0;
  *&v124 = &v127;
  *(&v124 + 1) = sub_181997664;
  *&v125 = sub_18199776C;
  *(&v126 + 1) = &v153;
  *&v154 = v31;
  if (v35)
  {
    v39 = v121;
    goto LABEL_255;
  }

  v119 = v32;
  v43 = *(&v148 + 1);
  if (!*(&v148 + 1))
  {
    v39 = v121;
    if (v149)
    {
      sub_181959CE8(&v124, *(v149 + 80));
      v45 = *(v149 + 72);
      if (v45)
      {
        sub_181959BA0(&v124, v45);
      }

      goto LABEL_254;
    }

    v35 = sub_1819977A4(&v127);
    if (v35)
    {
      goto LABEL_255;
    }

    v55 = *(&v149 + 1);
    v56 = *(*(&v149 + 1) + 56);
    if (!v56)
    {
      goto LABEL_166;
    }

LABEL_124:
    v57 = v56[3];
    if (!v57 || sub_1818CA520(&v127, 0, v57, v123, v54, v36, v37, v38) != v31)
    {
      goto LABEL_123;
    }

    v58 = v56[8];
    if (v58)
    {
      sub_181997D74(&v127, &v153, *(v58 + 16), v33);
    }

    v59 = v56[7];
    if (!v59)
    {
      goto LABEL_145;
    }

    v60 = *v59;
    if (*v59 < 1)
    {
      goto LABEL_145;
    }

    v61 = 0;
    v62 = v153;
LABEL_133:
    if (!v33)
    {
      goto LABEL_132;
    }

    v63 = *&v59[2 * v61 + 2];
    if (!v63)
    {
      goto LABEL_132;
    }

    for (i = 0; ; ++i)
    {
      if (*(v63 + i) == *(v33 + i))
      {
        if (!*(v63 + i))
        {
          v65 = *(&v152 + 1);
          if (*(&v152 + 1))
          {
            v66 = &v152 + 1;
            if (**(&v152 + 1) != v63)
            {
              do
              {
                v67 = v65;
                v65 = v65[3];
                if (!v65)
                {
                  goto LABEL_132;
                }
              }

              while (*v65 != v63);
              v66 = v67 + 3;
            }

            *v66 = v65[3];
            v65[3] = v62;
            *&v153 = v65;
            ++DWORD2(v153);
            v60 = *v59;
            v62 = v65;
          }

LABEL_132:
          if (++v61 < v60)
          {
            goto LABEL_133;
          }

LABEL_145:
          v68 = v56[6];
          if (!v68)
          {
            goto LABEL_123;
          }

          v69 = *v68;
          if (*v68 < 1)
          {
            goto LABEL_123;
          }

          v70 = 0;
          v71 = v153;
LABEL_150:
          if (!v33)
          {
            goto LABEL_149;
          }

          v72 = &v68[6 * v70 + 2];
          v73 = *(v72 + 8);
          if ((*(v72 + 17) & 3) != 0 || v73 == 0)
          {
            goto LABEL_149;
          }

          for (j = 0; ; ++j)
          {
            if (*(v73 + j) == *(v33 + j))
            {
              if (!*(v73 + j))
              {
                v76 = *(&v152 + 1);
                if (*(&v152 + 1))
                {
                  v77 = &v152 + 1;
                  if (**(&v152 + 1) != v73)
                  {
                    do
                    {
                      v78 = v76;
                      v76 = v76[3];
                      if (!v76)
                      {
                        goto LABEL_149;
                      }
                    }

                    while (*v76 != v73);
                    v77 = v78 + 3;
                  }

                  *v77 = v76[3];
                  v76[3] = v71;
                  *&v153 = v76;
                  ++DWORD2(v153);
                  v69 = *v68;
                  v71 = v76;
                }

LABEL_149:
                if (++v70 < v69)
                {
                  goto LABEL_150;
                }

LABEL_123:
                v56 = v56[10];
                if (v56)
                {
                  goto LABEL_124;
                }

                v55 = *(&v149 + 1);
LABEL_166:
                if (v137 == v31)
                {
                  sub_181997E60(&v127, &v153, *(v55 + 32), v33);
                  v55 = *(&v149 + 1);
                }

                sub_181997F38(&v124, v55);
                goto LABEL_254;
              }
            }

            else if (byte_181A20298[*(v73 + j)] != byte_181A20298[*(v33 + j)])
            {
              goto LABEL_149;
            }
          }
        }
      }

      else if (byte_181A20298[*(v63 + i)] != byte_181A20298[*(v33 + i)])
      {
        goto LABEL_132;
      }
    }
  }

  v39 = v121;
  if (*(*(&v148 + 1) + 63))
  {
    if (*(*(&v148 + 1) + 63) != 2)
    {
      goto LABEL_254;
    }

    v44 = *(*(&v148 + 1) + 64);
    *(v44 + 4) &= ~0x200000u;
    DWORD2(v128) = 0;
    sub_18195FBC4(&v127, v44, 0);
    if (*(v5 + 103))
    {
      v35 = 7;
    }

    else
    {
      v35 = DWORD2(v128);
    }

    if (!v35)
    {
      sub_1818AEE70(&v124, v44);
      goto LABEL_254;
    }

    goto LABEL_255;
  }

  v46 = **(&v148 + 1);
  if (!**(&v148 + 1))
  {
LABEL_119:
    v53 = 0;
    *&v154 = *(&v148 + 1);
    goto LABEL_217;
  }

  for (k = v14; *k != *v46; ++k)
  {
    if (byte_181A20298[*k] != byte_181A20298[*v46])
    {
      goto LABEL_119;
    }

LABEL_107:
    ++v46;
  }

  if (*k)
  {
    goto LABEL_107;
  }

  *&v154 = *(&v148 + 1);
  if (SLODWORD(v16) < *(*(&v148 + 1) + 54))
  {
    v48 = *(*(*(&v148 + 1) + 8) + 16 * (LODWORD(v16) & 0x7FFFFFFF));
    v49 = *(&v152 + 1);
    if (v48 && *(&v152 + 1) != 0)
    {
      if (**(&v152 + 1) == v48)
      {
        v52 = &v152 + 1;
LABEL_170:
        *v52 = v49[3];
        v49[3] = v153;
        *&v153 = v49;
        ++DWORD2(v153);
        v43 = *(&v148 + 1);
      }

      else
      {
        while (1)
        {
          v51 = v49;
          v49 = v49[3];
          if (!v49)
          {
            break;
          }

          if (*v49 == v48)
          {
            v52 = v51 + 3;
            goto LABEL_170;
          }
        }
      }
    }
  }

  if ((HIDWORD(v153) & 0x80000000) != 0)
  {
    v79 = *(&v152 + 1);
    if (*(&v152 + 1))
    {
      if (**(&v152 + 1) == v43 + 52)
      {
        v81 = &v152 + 1;
LABEL_178:
        *v81 = v79[3];
        v79[3] = v153;
        *&v153 = v79;
        ++DWORD2(v153);
        v43 = *(&v148 + 1);
      }

      else
      {
        while (1)
        {
          v80 = v79;
          v79 = v79[3];
          if (!v79)
          {
            break;
          }

          if (*v79 == v43 + 52)
          {
            v81 = v80 + 3;
            goto LABEL_178;
          }
        }
      }
    }
  }

  sub_181959CE8(&v124, *(v43 + 32));
  for (m = *(*(&v148 + 1) + 16); m; m = *(m + 40))
  {
    v86 = *(m + 80);
    if (v86)
    {
      v87 = *v86;
      if (*v86 >= 1)
      {
        for (n = (v86 + 2); ; n += 3)
        {
          if (*n)
          {
            if (sub_181959BA0(&v124, *n))
            {
              v89 = 1;
            }

            else
            {
              v89 = v87 <= 1;
            }

            if (v89)
            {
              break;
            }
          }

          else if (v87 < 2)
          {
            break;
          }

          --v87;
        }
      }
    }
  }

  for (ii = v149; ii; ii = *(ii + 40))
  {
    v90 = *(ii + 80);
    if (v90)
    {
      v91 = *v90;
      if (*v90 >= 1)
      {
        for (jj = (v90 + 2); ; jj += 3)
        {
          if (*jj)
          {
            if (sub_181959BA0(&v124, *jj))
            {
              v93 = 1;
            }

            else
            {
              v93 = v91 <= 1;
            }

            if (v93)
            {
              break;
            }
          }

          else if (v91 < 2)
          {
            break;
          }

          --v91;
        }
      }
    }
  }

  v43 = *(&v148 + 1);
  if (*(*(&v148 + 1) + 54) >= 1)
  {
    v84 = 0;
    v85 = 12;
    do
    {
      v94 = *(*(v43 + 8) + v85);
      if (*(*(v43 + 8) + v85))
      {
        if (!*(v43 + 63))
        {
          v95 = *(v43 + 80);
          if (v95)
          {
            if (*v95 >= v94)
            {
              v96 = *&v95[6 * (v94 - 1) + 2];
              if (v96)
              {
                sub_181959BA0(&v124, v96);
                v43 = *(&v148 + 1);
              }
            }
          }
        }
      }

      ++v84;
      v85 += 16;
    }

    while (v84 < *(v43 + 54));
  }

  v53 = 1;
  v39 = v121;
LABEL_217:
  v97 = *(v43 + 72);
  v20 = v120;
  if (v97)
  {
    v98 = DWORD2(v153);
    v99 = v153;
    while (1)
    {
      v100 = *(v97 + 40);
      if (v100 >= 1)
      {
        break;
      }

LABEL_219:
      v97 = *(v97 + 8);
      if (!v97)
      {
        goto LABEL_254;
      }
    }

    v101 = 0;
    v102 = v97 + 64;
LABEL_224:
    if (v53)
    {
      v103 = (v102 + 16 * v101);
      v104 = *(&v152 + 1);
      if (*v103 == LODWORD(v16) && *(&v152 + 1) != 0)
      {
        v106 = &v152 + 1;
        if (**(&v152 + 1) == v103)
        {
LABEL_233:
          *v106 = v104[3];
          v104[3] = v99;
          *&v153 = v104;
          DWORD2(v153) = ++v98;
          v99 = v104;
        }

        else
        {
          while (1)
          {
            v107 = v104;
            v104 = v104[3];
            if (!v104)
            {
              break;
            }

            if (*v104 == v103)
            {
              v106 = v107 + 3;
              goto LABEL_233;
            }
          }
        }
      }
    }

    v108 = *(v97 + 16);
    if (!v108)
    {
      goto LABEL_223;
    }

    for (kk = v14; ; ++kk)
    {
      if (*v108 == *kk)
      {
        if (!*v108)
        {
          v110 = *(v102 + 16 * v101 + 8);
          if (v110)
          {
            v111 = v33 == 0;
          }

          else
          {
            v111 = 1;
          }

          if (v111)
          {
            goto LABEL_223;
          }

          v112 = 0;
          while (2)
          {
            if (*(v110 + v112) != *(v33 + v112))
            {
              if (byte_181A20298[*(v110 + v112)] != byte_181A20298[*(v33 + v112)])
              {
                goto LABEL_223;
              }

LABEL_246:
              ++v112;
              continue;
            }

            break;
          }

          if (*(v110 + v112))
          {
            goto LABEL_246;
          }

          v113 = *(&v152 + 1);
          if (*(&v152 + 1))
          {
            v114 = &v152 + 1;
            if (**(&v152 + 1) == v110)
            {
LABEL_222:
              *v114 = v113[3];
              v113[3] = v99;
              *&v153 = v113;
              DWORD2(v153) = ++v98;
              v99 = v113;
            }

            else
            {
              while (1)
              {
                v115 = v113;
                v113 = v113[3];
                if (!v113)
                {
                  break;
                }

                if (*v113 == v110)
                {
                  v114 = v115 + 3;
                  goto LABEL_222;
                }
              }
            }
          }

LABEL_223:
          if (++v101 >= v100)
          {
            goto LABEL_219;
          }

          goto LABEL_224;
        }
      }

      else if (byte_181A20298[*v108] != byte_181A20298[*kk])
      {
        goto LABEL_223;
      }

      ++v108;
    }
  }

LABEL_254:
  v35 = sub_1819980F8(a1, &v153, v119, v20, v122, v36, v37, v38);
LABEL_255:
  if (v35)
  {
    if (v35 == 1 && (*(v5 + 48) & 0x10000001) == 1)
    {
      sqlite3_result_value(a1, *a3);
    }

    else if (*(&v127 + 1))
    {
      sub_181998584(a1, &byte_181A2878D, *(a3 + 8), *(a3 + 16), &v127, v36, v37, v38);
    }

    else if (a1)
    {
      *(a1 + 9) = v35;
      if (*(*a1 + 20))
      {
        switch(v35)
        {
          case 516:
            v118 = "abort due to ROLLBACK";
            break;
          case 101:
            v118 = "no more rows available";
            break;
          case 100:
            v118 = "another row available";
            break;
          default:
            if (v35 > 0x1Cu || ((0x1410004uLL >> v35) & 1) != 0)
            {
              v118 = "unknown error";
            }

            else
            {
              v118 = off_1E6A27DD8[v35];
            }

            break;
        }

        sub_18190B23C(a1, v118, -1, 1u, 0);
      }
    }
  }

  result = sub_1819986E4(&v127);
  v116 = v153;
  if (v153)
  {
    do
    {
      v117 = v116[3];
      result = sub_181929C84(v5, v116);
      v116 = v117;
    }

    while (v117);
  }

  *(v5 + 528) = v39;
  if (!*(v5 + 111))
  {
    return sub_181932CD8(v5);
  }

  return result;
}

uint64_t sub_181995BDC(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    v6 = *a3;
    if (!*a3)
    {
LABEL_12:
      v8 = 0;
      v9 = a3[3];
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  v7 = *(v6 + 20);
  if ((~v7 & 0x202) != 0 || *(v6 + 22) != 1)
  {
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = sub_18193CB70(v6, 1);
    v9 = a3[3];
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = *(v6 + 8);
    v9 = a3[3];
    if (!v9)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  v10 = *(v9 + 20);
  if ((~v10 & 0x202) == 0 && *(v9 + 22) == 1)
  {
    v11 = *(v9 + 8);
    v12 = a3[4];
    if (!v12)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v10)
  {
LABEL_20:
    v11 = 0;
    v12 = a3[4];
    if (!v12)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v11 = sub_18193CB70(v9, 1);
  v12 = a3[4];
  if (!v12)
  {
LABEL_28:
    v14 = 0;
    v15 = a3[5];
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

LABEL_21:
  v13 = *(v12 + 20);
  if ((~v13 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if (v13)
    {
      goto LABEL_28;
    }

    v14 = sub_18193CB70(v12, 1);
    v15 = a3[5];
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *(v12 + 8);
    v15 = a3[5];
    if (!v15)
    {
      goto LABEL_37;
    }
  }

LABEL_29:
  v16 = *(v15 + 20);
  if ((~v16 & 0x202) != 0 || *(v15 + 22) != 1)
  {
    if ((v16 & 1) == 0)
    {
      v17 = sub_18193CB70(v15, 1);
      result = a3[6];
      if (result)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

LABEL_37:
    v17 = 0;
    result = a3[6];
    if (result)
    {
      goto LABEL_38;
    }

LABEL_35:
    result = sub_1819012D0(92237);
LABEL_36:
    v19 = 0;
    goto LABEL_40;
  }

  v17 = *(v15 + 8);
  result = a3[6];
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_38:
  v20 = *(result + 20);
  if ((v20 & 0x24) != 0)
  {
    v19 = *result;
    goto LABEL_40;
  }

  if ((v20 & 8) == 0)
  {
    if ((v20 & 0x12) != 0 && *(result + 8))
    {
      result = sub_18193CFCC(result);
      v19 = result;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v34 = *result;
  if (*result >= -9.22337204e18)
  {
    if (v34 <= 9.22337204e18)
    {
      v19 = v34;
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v19 = 0x8000000000000000;
  }

LABEL_40:
  if (!v11 || !v14 || !v17)
  {
    return result;
  }

  v21 = 0uLL;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v22 = *(v5 + 528);
  *(v5 + 528) = 0;
  if (!*(v5 + 111))
  {
    sub_181932C40(v5);
    v21 = 0uLL;
  }

  v84 = v21;
  v86 = *(&v21 + 1);
  v85 = sub_181917F20(v5, v14, v8);
  v83[3] = 0;
  v83[4] = 0;
  v83[0] = &v87;
  v83[1] = sub_181998814;
  v83[2] = sub_1819988B0;
  v83[5] = &v84;
  v26 = sub_1819972A8(&v87, v8, v5, v11, v19, v23, v24, v25);
  if (!v26)
  {
    v30 = *(v5 + 48);
    v31 = *(&v108 + 1);
    if (!*(&v108 + 1))
    {
      if (v109)
      {
        v35 = *v109;
        if (*v109)
        {
          v36 = *(&v112 + 1);
          if (*(&v112 + 1))
          {
            if (**(&v112 + 1) == v35)
            {
              v38 = &v112 + 1;
            }

            else
            {
              do
              {
                v37 = v36;
                v36 = v36[3];
                if (!v36)
                {
                  goto LABEL_116;
                }
              }

              while (*v36 != v35);
              v38 = v37 + 3;
            }

            *v38 = v36[3];
            v36[3] = v84;
            *&v84 = v36;
            ++DWORD2(v84);
          }
        }

LABEL_116:
        if ((v30 & 0x4000000) == 0)
        {
          v59 = *(v109 + 72);
          if (v59)
          {
            sub_181959BA0(v83, v59);
          }
        }

        goto LABEL_156;
      }

      v52 = *(&v109 + 1);
      v53 = *(*(&v109 + 1) + 8);
      if (!v53)
      {
        goto LABEL_123;
      }

      for (i = 0; ; ++i)
      {
        if (*(v53 + i) == v14[i])
        {
          if (!*(v53 + i))
          {
            v55 = *(&v112 + 1);
            if (*(v85 + 96) == *(*(&v109 + 1) + 48) && *(&v112 + 1) != 0)
            {
              if (**(&v112 + 1) == v53)
              {
                v58 = &v112 + 1;
LABEL_122:
                *v58 = v55[3];
                v55[3] = v84;
                *&v84 = v55;
                ++DWORD2(v84);
              }

              else
              {
                while (1)
                {
                  v57 = v55;
                  v55 = v55[3];
                  if (!v55)
                  {
                    break;
                  }

                  if (*v55 == v53)
                  {
                    v58 = v57 + 3;
                    goto LABEL_122;
                  }
                }
              }
            }

LABEL_123:
            if ((v30 & 0x4000000) != 0)
            {
              goto LABEL_156;
            }

            v26 = sub_1819977A4(&v87);
            if (v26)
            {
              goto LABEL_157;
            }

            sub_181997F38(v83, v52);
            v60 = *(v52 + 56);
            if (!v60)
            {
              goto LABEL_156;
            }

            v61 = DWORD2(v84);
            v62 = v84;
LABEL_128:
            v63 = v60[3];
            if (!v63)
            {
              goto LABEL_140;
            }

            for (j = 0; ; ++j)
            {
              if (*(v63 + j) == v14[j])
              {
                if (!*(v63 + j))
                {
                  v65 = *(&v112 + 1);
                  if (*(&v112 + 1))
                  {
                    v66 = &v112 + 1;
                    if (**(&v112 + 1) != v63)
                    {
                      do
                      {
                        v67 = v65;
                        v65 = v65[3];
                        if (!v65)
                        {
                          goto LABEL_140;
                        }
                      }

                      while (*v65 != v63);
                      v66 = v67 + 3;
                    }

                    *v66 = v65[3];
                    v65[3] = v62;
                    *&v84 = v65;
                    DWORD2(v84) = ++v61;
                    v62 = v65;
                  }

LABEL_140:
                  v68 = v60[4];
                  if (!v68)
                  {
                    goto LABEL_127;
                  }

                  v69 = *v68;
                  if (*v68 < 1)
                  {
                    goto LABEL_127;
                  }

                  v70 = 0;
                  while (2)
                  {
                    v71 = *&v68[18 * v70 + 2];
                    if (!v71)
                    {
                      goto LABEL_144;
                    }

                    v72 = 0;
                    while (2)
                    {
                      if (*(v71 + v72) != v14[v72])
                      {
                        if (byte_181A20298[*(v71 + v72)] != byte_181A20298[v14[v72]])
                        {
                          goto LABEL_144;
                        }

LABEL_148:
                        ++v72;
                        continue;
                      }

                      break;
                    }

                    if (*(v71 + v72))
                    {
                      goto LABEL_148;
                    }

                    v73 = *(&v112 + 1);
                    if (*(&v112 + 1))
                    {
                      v74 = &v112 + 1;
                      if (**(&v112 + 1) != v71)
                      {
                        do
                        {
                          v75 = v73;
                          v73 = v73[3];
                          if (!v73)
                          {
                            goto LABEL_144;
                          }
                        }

                        while (*v73 != v71);
                        v74 = v75 + 3;
                      }

                      *v74 = v73[3];
                      v73[3] = v62;
                      *&v84 = v73;
                      DWORD2(v84) = ++v61;
                      v68 = v60[4];
                      v69 = *v68;
                      v62 = v73;
                    }

LABEL_144:
                    if (++v70 < v69)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_127:
                  v60 = v60[10];
                  if (!v60)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_128;
                }
              }

              else if (byte_181A20298[*(v63 + j)] != byte_181A20298[v14[j]])
              {
                goto LABEL_140;
              }
            }
          }
        }

        else if (byte_181A20298[*(v53 + i)] != byte_181A20298[v14[i]])
        {
          goto LABEL_123;
        }
      }
    }

    v32 = *(*(&v108 + 1) + 63);
    if (v32 != 2)
    {
      if ((((*(v5 + 48) & 0x4000) == 0) & (*(v5 + 48) >> 26)) != 0)
      {
        goto LABEL_84;
      }

      if (v32 == 1)
      {
        goto LABEL_84;
      }

      v39 = *(*(&v108 + 1) + 72);
      if (!v39)
      {
        goto LABEL_84;
      }

      v40 = DWORD2(v84);
      v41 = v84;
LABEL_73:
      v42 = *(v39 + 16);
      if (!v42)
      {
        goto LABEL_72;
      }

      for (k = 0; ; ++k)
      {
        if (*(v42 + k) == v14[k])
        {
          if (!*(v42 + k))
          {
            v44 = *(&v112 + 1);
            if (*(&v112 + 1))
            {
              v45 = &v112 + 1;
              if (**(&v112 + 1) != v42)
              {
                do
                {
                  v46 = v44;
                  v44 = v44[3];
                  if (!v44)
                  {
                    goto LABEL_72;
                  }
                }

                while (*v44 != v42);
                v45 = v46 + 3;
              }

              *v45 = v44[3];
              v44[3] = v41;
              *&v84 = v44;
              DWORD2(v84) = ++v40;
              v41 = v44;
            }

LABEL_72:
            v39 = *(v39 + 8);
            if (v39)
            {
              goto LABEL_73;
            }

LABEL_84:
            v47 = *v31;
            if (!*v31)
            {
              goto LABEL_156;
            }

            for (m = 0; ; ++m)
            {
              if (v14[m] == *(v47 + m))
              {
                if (!v14[m])
                {
                  v85 = v31;
                  if ((v30 & 0x4000000) == 0)
                  {
                    sub_181959CE8(v83, *(v31 + 32));
                    v47 = *v31;
                  }

                  if (v47)
                  {
                    v49 = *(&v112 + 1);
                    if (*(&v112 + 1))
                    {
                      if (**(&v112 + 1) == v47)
                      {
                        v51 = &v112 + 1;
LABEL_120:
                        *v51 = v49[3];
                        v49[3] = v84;
                        *&v84 = v49;
                        ++DWORD2(v84);
                      }

                      else
                      {
                        while (1)
                        {
                          v50 = v49;
                          v49 = v49[3];
                          if (!v49)
                          {
                            break;
                          }

                          if (*v49 == v47)
                          {
                            v51 = v50 + 3;
                            goto LABEL_120;
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_156;
                }
              }

              else if (byte_181A20298[v14[m]] != byte_181A20298[*(v47 + m)])
              {
                goto LABEL_156;
              }
            }
          }
        }

        else if (byte_181A20298[*(v42 + k)] != byte_181A20298[v14[k]])
        {
          goto LABEL_72;
        }
      }
    }

    if ((v30 & 0x4000000) != 0)
    {
      goto LABEL_156;
    }

    v33 = *(*(&v108 + 1) + 64);
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v79 = &v87;
    *(v33 + 4) &= ~0x200000u;
    sub_18195FBC4(&v87, *(v31 + 64), &v79);
    if (!DWORD1(v90))
    {
      sub_1818AEE70(v83, *(v31 + 64));
      goto LABEL_156;
    }

    v26 = DWORD2(v88);
    if (!DWORD2(v88))
    {
LABEL_156:
      v26 = sub_1819980F8(a1, &v84, v11, v17, 1, v27, v28, v29);
    }
  }

LABEL_157:
  if (v26)
  {
    if (v26 == 1 && (*(v5 + 48) & 0x10000001) == 1)
    {
      sqlite3_result_value(a1, a3[3]);
    }

    else if (*(&v87 + 1))
    {
      sub_181998584(a1, &byte_181A2878D, a3[1], a3[2], &v87, v27, v28, v29);
    }

    else if (a1)
    {
      *(a1 + 9) = v26;
      if (*(*a1 + 20))
      {
        switch(v26)
        {
          case 516:
            v78 = "abort due to ROLLBACK";
            break;
          case 101:
            v78 = "no more rows available";
            break;
          case 100:
            v78 = "another row available";
            break;
          default:
            if (v26 > 0x1Cu || ((0x1410004uLL >> v26) & 1) != 0)
            {
              v78 = "unknown error";
            }

            else
            {
              v78 = off_1E6A27DD8[v26];
            }

            break;
        }

        sub_18190B23C(a1, v78, -1, 1u, 0);
      }
    }
  }

  result = sub_1819986E4(&v87);
  v76 = v84;
  if (v84)
  {
    do
    {
      v77 = v76[3];
      result = sub_181929C84(v5, v76);
      v76 = v77;
    }

    while (v77);
  }

  if (!*(v5 + 111))
  {
    result = sub_181932CD8(v5);
  }

  *(v5 + 528) = v22;
  return result;
}

uint64_t sub_1819964F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(*a1 + 24);
    v11 = *a3;
    if (!*a3)
    {
LABEL_12:
      v13 = 0;
      v14 = a3[1];
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + 20);
  if ((~v12 & 0x202) != 0 || *(v11 + 22) != 1)
  {
    if (v12)
    {
      goto LABEL_12;
    }

    v13 = sub_18193CB70(v11, 1);
    v14 = a3[1];
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *(v11 + 8);
    v14 = a3[1];
    if (!v14)
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v15 = *(v14 + 20);
  if ((~v15 & 0x202) != 0 || *(v14 + 22) != 1)
  {
    if ((v15 & 1) == 0)
    {
      v16 = sub_18193CB70(v14, 1);
      v17 = a3[4];
      if (v17)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v16 = 0;
    v17 = a3[4];
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_19:
    sub_1819012D0(92237);
LABEL_20:
    v18 = 0;
    goto LABEL_24;
  }

  v16 = *(v14 + 8);
  v17 = a3[4];
  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_22:
  v19 = *(v17 + 20);
  if ((v19 & 0x24) != 0)
  {
    v18 = *v17;
  }

  else if ((v19 & 8) != 0)
  {
    v40 = *v17;
    if (*v17 >= -9.22337204e18)
    {
      if (v40 <= 9.22337204e18)
      {
        v18 = v40;
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0x8000000000000000;
    }
  }

  else
  {
    if ((v19 & 0x12) == 0 || !*(v17 + 8))
    {
      goto LABEL_20;
    }

    v18 = sub_18193CFCC(v17);
  }

LABEL_24:
  v20 = *(v10 + 48);
  v21 = a3[5];
  if (!v21)
  {
    goto LABEL_33;
  }

  v22 = *(v21 + 20);
  if ((~v22 & 0x202) != 0 || *(v21 + 22) != 1)
  {
    if ((v22 & 1) == 0)
    {
      v23 = sub_18193CB70(v21, 1);
      v24 = a3[6];
      if (v24)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

LABEL_33:
    v23 = 0;
    v24 = a3[6];
    if (v24)
    {
      goto LABEL_34;
    }

LABEL_31:
    sub_1819012D0(92237);
LABEL_32:
    result = 0;
    goto LABEL_36;
  }

  v23 = *(v21 + 8);
  v24 = a3[6];
  if (!v24)
  {
    goto LABEL_31;
  }

LABEL_34:
  v26 = *(v24 + 10);
  if ((v26 & 0x24) != 0)
  {
    result = *v24;
    goto LABEL_36;
  }

  if ((v26 & 8) == 0)
  {
    if ((v26 & 0x12) != 0 && *(v24 + 1))
    {
      result = sub_18193CFCC(v24);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v41 = *v24;
  if (*v24 >= -9.22337204e18)
  {
    if (v41 <= 9.22337204e18)
    {
      result = v41;
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    result = 0x8000000000000000;
  }

LABEL_36:
  v27 = *(v10 + 528);
  *(v10 + 528) = 0;
  if (v13 && v16)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v28 = *(v10 + 48);
    if (result)
    {
      *(v10 + 48) = v28 & 0xFFFFFFFF9FFFFFFFLL;
    }

    v29 = sub_1819972A8(&v56, v13, v10, v16, v18, a6, a7, a8);
    *(v10 + 48) = v28;
    if (v29)
    {
      goto LABEL_41;
    }

    if ((v20 & 0x4000000) == 0 && *(&v77 + 1) && *(*(&v77 + 1) + 63) == 2)
    {
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      v52 = &v56;
      sub_18195FBC4(&v56, *(*(&v77 + 1) + 64), &v52);
      if (DWORD1(v59))
      {
        v33 = DWORD2(v57) == 0;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        goto LABEL_106;
      }

      goto LABEL_41;
    }

    v35 = *(&v78 + 1);
    if (*(&v78 + 1))
    {
      if ((v20 & 0x4000000) == 0)
      {
        if (sub_1819977A4(&v56))
        {
LABEL_41:
          if (v23 && (*(v10 + 48) & 0x10000001) != 1)
          {
            sub_181998584(a1, v23, a3[2], a3[3], &v56, v30, v31, v32);
          }

          goto LABEL_106;
        }

        v35 = *(&v78 + 1);
      }

      v36 = *(v35 + 48);
      if (v36)
      {
        v37 = (*(v10 + 32) + 24);
        v38 = -1;
        do
        {
          v39 = *v37;
          v37 += 4;
          ++v38;
        }

        while (v39 != v36);
      }

      else
      {
        v38 = -32768;
      }

      v42 = *(v10 + 40);
      v43 = __OFSUB__(v42, 1);
      v44 = (v42 - 1);
      if (v44 < 0 == v43)
      {
        v45 = (*(v10 + 32) + 32 * v44);
        do
        {
          v46 = *v45;
          if (*v45)
          {
            for (i = v13; ; ++i)
            {
              if (*v46 == *i)
              {
                if (!*v46)
                {
                  goto LABEL_101;
                }
              }

              else if (byte_181A20298[*v46] != byte_181A20298[*i])
              {
                break;
              }

              ++v46;
            }
          }

          if (!v44)
          {
            v49 = "main";
            for (j = v13; ; ++j)
            {
              if (*v49 == *j)
              {
                if (!*v49)
                {
                  LODWORD(v44) = 0;
                  goto LABEL_101;
                }
              }

              else if (byte_181A20298[*v49] != byte_181A20298[*j])
              {
                break;
              }

              ++v49;
            }
          }

          v45 -= 4;
          v48 = v44 <= 0;
          LODWORD(v44) = v44 - 1;
        }

        while (!v48);
        LODWORD(v44) = -1;
        if (!a1)
        {
          goto LABEL_106;
        }

        goto LABEL_102;
      }

LABEL_101:
      if (a1)
      {
LABEL_102:
        if (v38 == v44)
        {
          v51 = *a1;
          if ((*(*a1 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v51, 1);
          }

          else
          {
            *v51 = 1;
            *(v51 + 20) = 4;
          }
        }
      }
    }

LABEL_106:
    result = sub_1819986E4(&v56);
  }

  *(v10 + 528) = v27;
  return result;
}

void sub_1819969D8(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(*a1 + 24);
    v11 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1819012D0(92237);
    goto LABEL_7;
  }

  v10 = 0;
  v11 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(v11 + 20);
  if ((v12 & 0x24) != 0)
  {
    LODWORD(v13) = *v11;
    goto LABEL_8;
  }

  if ((v12 & 8) == 0)
  {
    if ((v12 & 0x12) != 0 && *(v11 + 8))
    {
      LODWORD(v13) = sub_18193CFCC(v11);
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(v13) = 0;
    goto LABEL_8;
  }

  v20 = *v11;
  if (*v11 >= -9.22337204e18)
  {
    if (v20 <= 9.22337204e18)
    {
      v13 = v20;
    }

    else
    {
      LODWORD(v13) = -1;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

LABEL_8:
  v14 = a3[1];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = *(v14 + 20);
  if ((~v15 & 0x202) != 0 || *(v14 + 22) != 1)
  {
    if ((v15 & 1) == 0)
    {
      v16 = sub_18193CB70(v14, 1);
      v17 = a3[2];
      if (v17)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_17:
    v16 = 0;
    v17 = a3[2];
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_15:
    sub_1819012D0(92237);
LABEL_16:
    LODWORD(v18) = 0;
    goto LABEL_35;
  }

  v16 = *(v14 + 8);
  v17 = a3[2];
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_18:
  v19 = *(v17 + 20);
  if ((v19 & 0x24) != 0)
  {
    v18 = *v17;
  }

  else if ((v19 & 8) != 0)
  {
    LODWORD(v21) = -1;
    if (*v17 <= 9.22337204e18)
    {
      v21 = *v17;
    }

    if (*v17 >= -9.22337204e18)
    {
      LODWORD(v18) = v21;
    }

    else
    {
      LODWORD(v18) = 0;
    }
  }

  else
  {
    if ((v19 & 0x12) == 0 || !*(v17 + 8))
    {
      goto LABEL_16;
    }

    LODWORD(v18) = sub_18193CFCC(v17);
  }

LABEL_35:
  v22 = *(*(v10 + 32) + 32 * v13);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v23 = *(v10 + 528);
  *(v10 + 528) = 0;
  v30 = sub_1819972A8(v41, v22, v10, v16, v13 == 1, a6, a7, a8);
  if (!v30)
  {
    if (*(&v42 + 1))
    {
      v31 = *(*(&v42 + 1) + 54);
      v32 = v31 - 1;
      if (v31 != 1 && SLODWORD(v18) < v31)
      {
        v33 = 0;
        v34 = (*(*(&v42 + 1) + 8) + 16 * SLODWORD(v18));
        v35 = *(&v46 + 1);
        if (*v34 && *(&v46 + 1))
        {
          v33 = *(&v46 + 1);
          do
          {
            if (*v33 == *v34)
            {
              break;
            }

            v33 = v33[3];
          }

          while (v33);
        }

        if (v32 <= SLODWORD(v18))
        {
          v37 = v33[1];
          for (i = *v37; *v37; i = *v37)
          {
            if (i == 44)
            {
              break;
            }

            v33[1] = --v37;
          }
        }

        else
        {
          while (*v35 != v34[2])
          {
            v35 = v35[3];
          }

          v37 = v33[1];
        }

        v39 = sub_1818A8BAC(v10, "%.*s%s", v24, v25, v26, v27, v28, v29, v37 - v16);
        if (a1)
        {
          sub_18190B23C(a1, v39, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }

        if (!v39)
        {
          goto LABEL_75;
        }

        v40 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v39);
          --qword_1ED456A90;
          off_1ED452EB0(v39);
          v39 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_75;
          }

          v40 = &xmmword_1ED452F28;
        }

        (*v40)(v39);
LABEL_75:
        sub_1819986E4(v41);
        *(v10 + 528) = v23;
        return;
      }
    }

    v30 = sub_18190EDA8(128391);
  }

  sub_1819986E4(v41);
  *(v10 + 528) = v23;
  if (a1)
  {
    a1[9] = v30;
    if (*(*a1 + 20))
    {
      switch(v30)
      {
        case 516:
          v36 = "abort due to ROLLBACK";
          break;
        case 101:
          v36 = "no more rows available";
          break;
        case 100:
          v36 = "another row available";
          break;
        default:
          if (v30 > 0x1Cu || ((0x1410004uLL >> v30) & 1) != 0)
          {
            v36 = "unknown error";
          }

          else
          {
            v36 = off_1E6A27DD8[v30];
          }

          break;
      }

      sub_18190B23C(a1, v36, -1, 1u, 0);
    }
  }
}

uint64_t sub_181996E38(sqlite3_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(*a1 + 24);
    v11 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v11 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + 20);
  if ((~v12 & 0x202) == 0 && *(v11 + 22) == 1)
  {
    v13 = *(v11 + 8);
    result = a3[1];
    if (!result)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((v12 & 1) == 0)
  {
    v13 = sub_18193CB70(v11, 1);
    result = a3[1];
    if (!result)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = 0;
  result = a3[1];
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = *(result + 20);
  if ((~v15 & 0x202) != 0 || *(result + 22) != 1)
  {
    if ((v15 & 1) == 0)
    {
      result = sub_18193CB70(result, 1);
      v16 = result;
      goto LABEL_19;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v16 = *(result + 8);
LABEL_19:
  v17 = *(v10 + 528);
  *(v10 + 528) = 0;
  if (!*(v10 + 111))
  {
    result = sub_181932C40(v10);
  }

  if (!v13 || !v16)
  {
    goto LABEL_90;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = sub_1819972A8(&v46, v13, v10, v16, 0, a6, a7, a8);
  if (v18)
  {
    goto LABEL_73;
  }

  memset(v45, 0, sizeof(v45));
  v44[3] = 0;
  v44[4] = 0;
  v44[0] = &v46;
  v44[1] = sub_1819989A4;
  v44[2] = sub_18199776C;
  v44[5] = v45;
  v22 = *(&v67 + 1);
  if (!*(&v67 + 1))
  {
    v25 = v68;
    if (!v68)
    {
      v24 = sub_1819977A4(&v46);
      if (!v24)
      {
        sub_181997F38(v44, *(&v68 + 1));
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    v26 = *(v68 + 80);
    if (v26)
    {
      v27 = *v26;
      if (*v26 >= 1)
      {
        for (i = (v26 + 2); ; i += 3)
        {
          if (*i)
          {
            if (sub_181959BA0(v44, *i))
            {
              v29 = 1;
            }

            else
            {
              v29 = v27 <= 1;
            }

            if (v29)
            {
LABEL_43:
              v25 = v68;
              break;
            }
          }

          else if (v27 < 2)
          {
            goto LABEL_43;
          }

          --v27;
        }
      }
    }

    v30 = *(v25 + 72);
    if (v30)
    {
      sub_181959BA0(v44, v30);
    }

    goto LABEL_69;
  }

  if (*(*(&v67 + 1) + 63) == 2)
  {
    v23 = *(*(&v67 + 1) + 64);
    *(v23 + 4) &= ~0x200000u;
    DWORD2(v47) = 0;
    sub_18195FBC4(&v46, v23, 0);
    if (*(v10 + 103))
    {
      v24 = 7;
    }

    else
    {
      v24 = DWORD2(v47);
    }

    if (!v24)
    {
      sub_1818AEE70(v44, v23);
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v31 = *(*(&v67 + 1) + 32);
  if (!v31)
  {
    goto LABEL_58;
  }

  v32 = *v31;
  if (*v31 < 1)
  {
    goto LABEL_58;
  }

  for (j = (v31 + 2); !*j; j += 3)
  {
    if (v32 < 2)
    {
      goto LABEL_57;
    }

LABEL_50:
    --v32;
  }

  if (sub_181959BA0(v44, *j))
  {
    v34 = 1;
  }

  else
  {
    v34 = v32 <= 1;
  }

  if (!v34)
  {
    goto LABEL_50;
  }

LABEL_57:
  v22 = *(&v67 + 1);
LABEL_58:
  if (*(v22 + 54) >= 1)
  {
    v35 = 0;
    v36 = 12;
    do
    {
      v37 = *(*(v22 + 8) + v36);
      if (*(*(v22 + 8) + v36))
      {
        if (!*(v22 + 63))
        {
          v38 = *(v22 + 80);
          if (v38)
          {
            if (*v38 >= v37)
            {
              v39 = *&v38[6 * (v37 - 1) + 2];
              if (v39)
              {
                sub_181959BA0(v44, v39);
                v22 = *(&v67 + 1);
              }
            }
          }
        }
      }

      ++v35;
      v36 += 16;
    }

    while (v35 < *(v22 + 54));
  }

LABEL_69:
  v24 = sub_1819980F8(a1, v45, v16, 0, 0, v19, v20, v21);
LABEL_70:
  v40 = v24;
  v41 = *&v45[0];
  if (*&v45[0])
  {
    do
    {
      v42 = v41[3];
      sub_181929C84(v10, v41);
      v41 = v42;
    }

    while (v42);
  }

  v18 = v40;
  if (v40)
  {
LABEL_73:
    if (v18 == 1 && (*(v10 + 48) & 0x10000001) == 1)
    {
      sqlite3_result_value(a1, a3[1]);
    }

    else if (a1)
    {
      *(a1 + 9) = v18;
      if (*(*a1 + 20))
      {
        switch(v18)
        {
          case 516:
            v43 = "abort due to ROLLBACK";
            break;
          case 101:
            v43 = "no more rows available";
            break;
          case 100:
            v43 = "another row available";
            break;
          default:
            if (v18 > 0x1Cu || ((0x1410004uLL >> v18) & 1) != 0)
            {
              v43 = "unknown error";
            }

            else
            {
              v43 = off_1E6A27DD8[v18];
            }

            break;
        }

        sub_18190B23C(a1, v43, -1, 1u, 0);
      }
    }
  }

  result = sub_1819986E4(&v46);
LABEL_90:
  *(v10 + 528) = v17;
  if (!*(v10 + 111))
  {
    return sub_181932CD8(v10);
  }

  return result;
}

uint64_t sub_1819972A8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 216) = *(a3 + 344);
  *(a3 + 344) = a1;
  *a1 = a3;
  if (*(a3 + 103))
  {
    sub_181910730(a1, "out of memory", a3, a4, a5, a6, a7, a8, v35);
  }

  if (!a4)
  {
    return 7;
  }

  v13 = *a4;
  if (!*a4)
  {
    v23 = 0;
    v21 = "CREATE ";
    goto LABEL_33;
  }

  if ((v13 & 0xFFFFFFDF) != 0x43)
  {
    v20 = &byte_181A20298[v13];
    v21 = "CREATE ";
LABEL_32:
    v23 = *v20;
    goto LABEL_33;
  }

  v14 = a4[1];
  if (!a4[1])
  {
    v23 = 0;
    v21 = "REATE ";
    goto LABEL_33;
  }

  if ((v14 & 0xFFFFFFDF) != 0x52)
  {
    v20 = &byte_181A20298[v14];
    v21 = "REATE ";
    goto LABEL_32;
  }

  v15 = a4[2];
  if (!a4[2])
  {
    v23 = 0;
    v21 = "EATE ";
    goto LABEL_33;
  }

  if ((v15 & 0xFFFFFFDF) != 0x45)
  {
    v20 = &byte_181A20298[v15];
    v21 = "EATE ";
    goto LABEL_32;
  }

  v16 = a4[3];
  if (!a4[3])
  {
    v23 = 0;
    v21 = "ATE ";
    goto LABEL_33;
  }

  if ((v16 & 0xFFFFFFDF) != 0x41)
  {
    v20 = &byte_181A20298[v16];
    v21 = "ATE ";
    goto LABEL_32;
  }

  v17 = a4[4];
  if (!a4[4])
  {
    v23 = 0;
    v21 = "TE ";
    goto LABEL_33;
  }

  if ((v17 & 0xFFFFFFDF) != 0x54)
  {
    v20 = &byte_181A20298[v17];
    v21 = "TE ";
    goto LABEL_32;
  }

  v18 = a4[5];
  if (!a4[5])
  {
    v23 = 0;
    v21 = "E ";
    goto LABEL_33;
  }

  if ((v18 & 0xFFFFFFDF) != 0x45)
  {
    v20 = &byte_181A20298[v18];
    v21 = "E ";
    goto LABEL_32;
  }

  v19 = a4[6];
  if (a4[6])
  {
    if (v19 == 32)
    {
      goto LABEL_34;
    }

    v20 = &byte_181A20298[v19];
    v21 = " ";
    goto LABEL_32;
  }

  v23 = 0;
  v21 = " ";
LABEL_33:
  if (v23 != byte_181A20298[*v21])
  {

    return sub_18190EDA8(127402);
  }

LABEL_34:
  v24 = 1;
  if (v8)
  {
    goto LABEL_60;
  }

  if (a2)
  {
    v25 = *(a3 + 40);
    v26 = __OFSUB__(v25, 1);
    v27 = (v25 - 1);
    if (v27 < 0 != v26)
    {
LABEL_58:
      v24 = v27;
    }

    else
    {
      v28 = (*(a3 + 32) + 32 * v27);
      do
      {
        v29 = *v28;
        if (*v28)
        {
          for (i = a2; ; ++i)
          {
            if (*v29 == *i)
            {
              if (!*v29)
              {
                goto LABEL_58;
              }
            }

            else if (byte_181A20298[*v29] != byte_181A20298[*i])
            {
              break;
            }

            ++v29;
          }
        }

        if (!v27)
        {
          v32 = "main";
          for (j = a2; ; ++j)
          {
            if (*v32 == *j)
            {
              if (!*v32)
              {
                v24 = 0;
                goto LABEL_60;
              }
            }

            else if (byte_181A20298[*v32] != byte_181A20298[*j])
            {
              break;
            }

            ++v32;
          }
        }

        v28 -= 4;
        v24 = -1;
        v31 = v27 <= 0;
        LODWORD(v27) = v27 - 1;
      }

      while (!v31);
    }
  }

  else
  {
    v24 = -1;
  }

LABEL_60:
  *(a3 + 196) = v24;
  *(a1 + 302) = 2;
  *a1 = a3;
  *(a1 + 28) = 1;
  v34 = *(a3 + 48);
  *(a3 + 48) = v34 | 0x4000000000;
  LODWORD(result) = sub_181895EE0(a1, a4);
  *(a3 + 48) = v34;
  if (*(a3 + 103))
  {
    result = 7;
  }

  else
  {
    result = result;
  }

  if (!result)
  {
    if (*(a1 + 344) || *(a1 + 352) || *(a1 + 360))
    {
      result = 0;
    }

    else
    {
      result = sub_18190EDA8(127423);
    }
  }

  *(a3 + 196) = 0;
  return result;
}

uint64_t sub_181997664(void *a1, unsigned __int8 *a2)
{
  v2 = a1[5];
  v3 = *a2;
  if (v3 == 168)
  {
    if (*(a2 + 12) == *(v2 + 12) && (a2[7] & 3) == 0 && *(v2 + 16) == *(a2 + 9))
    {
      v4 = *a1;
      v5 = *(*a1 + 408);
      if (v5)
      {
        if (*v5 != a2)
        {
          while (1)
          {
            v6 = v5;
            v5 = v5[3];
            if (!v5)
            {
              return 0;
            }

            if (*v5 == a2)
            {
LABEL_18:
              if (!v2)
              {
                return 0;
              }

              v8 = v6 + 3;
              goto LABEL_21;
            }
          }
        }

        goto LABEL_20;
      }
    }

    return 0;
  }

  if (v3 != 78)
  {
    return 0;
  }

  if (*(a2 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v4 = *a1;
  if (*(*a1 + 160) != *(v2 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 408);
  if (!v5)
  {
    return 0;
  }

  if (*v5 != a2)
  {
    while (1)
    {
      v6 = v5;
      v5 = v5[3];
      if (!v5)
      {
        return 0;
      }

      if (*v5 == a2)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_20:
  v8 = (v4 + 408);
LABEL_21:
  *v8 = v5[3];
  v5[3] = *v2;
  *v2 = v5;
  ++*(v2 + 8);
  return 0;
}

uint64_t sub_18199776C(void *a1, uint64_t a2)
{
  if ((*(a2 + 6) & 0x420) != 0)
  {
    return 1;
  }

  sub_181962064(a1, a2);
  return 0;
}

uint64_t sub_1819977A4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 360);
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  v89 = a1;
  v4 = *(v2 + 32);
  v5 = *(v3 + 48);
  if (v5)
  {
    v6 = (v4 + 24);
    v7 = 0xFFFFFFFF00000000;
    do
    {
      v8 = *v6;
      v6 += 4;
      v7 += 0x100000000;
    }

    while (v8 != v5);
    v9 = v7 >> 32;
  }

  else
  {
    v9 = -32768;
  }

  v10 = sub_181917F20(v2, *(v3 + 8), *(v4 + 32 * v9));
  *(a1 + 160) = v10;
  *(a1 + 39) = *(v3 + 16);
  if (!v10 || *(v10 + 63) != 1 && *(v10 + 54) > 0 || !sub_181960D84(a1, v10, v11, v12, v13, v14, v15, v16))
  {
    v18 = *(v3 + 24);
    if (v18)
    {
      LODWORD(v92) = 0;
      v93 = a1;
      v94 = sub_1818B1AF8;
      v95 = sub_1818B15A0;
      v96 = 0;
      v97 = 0;
      v98 = &v89;
      v19 = *(a1 + 308) + *(v18 + 40);
      *(a1 + 308) = v19;
      if (*(*a1 + 148) < v19)
      {
        sub_181910730(a1, "Expression tree is too large (maximum depth %d)", v11, v12, v13, v14, v15, v16, *(*a1 + 148));
        return 1;
      }

      sub_181959BA0(&v93, v18);
      v20 = v93;
      *(v93 + 308) -= *(v18 + 40);
      *(v18 + 4) |= v92 & 0x8010;
      if (SHIDWORD(v91) > 0)
      {
        return 1;
      }

      v17 = *(v20 + 52) > 0;
      if (*(v20 + 52) > 0)
      {
        return v17;
      }
    }

    else
    {
      v17 = 0;
    }

    v21 = *(v3 + 56);
    if (!v21)
    {
      return v17;
    }

    while (1)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        sub_18195FBC4(a1, v22, &v89);
        if (*(a1 + 52))
        {
          v17 = *(a1 + 24);
          if (v17)
          {
            return v17;
          }
        }
      }

      if (*(v21 + 24))
      {
        break;
      }

      v17 = 0;
LABEL_25:
      v21 = *(v21 + 80);
      if (!v21)
      {
        return v17;
      }
    }

    v23 = sub_181981C18(a1, v21);
    if (!v23)
    {
      return 7;
    }

    v24 = v23;
    v25 = sub_1818A9824(a1, *(v21 + 48), v23, 0, 0, 0, 0, 0, 0);
    if (!v25)
    {
      v24 = 0;
      *(v21 + 48) = 0;
      v41 = 7;
      v42 = *(v21 + 32);
      if (!v42)
      {
        goto LABEL_20;
      }

      goto LABEL_64;
    }

    v32 = v25;
    v33 = *(v21 + 48);
    if (v33)
    {
      v34 = *v33;
      if (v34 >= 1)
      {
        if (v34 == 1)
        {
          v35 = 0;
LABEL_48:
          v46 = v34 - v35;
          v47 = (&v33[6 * v35 + 6] + 1);
          do
          {
            *v47 = *v47 & 0xFFFC | 1;
            v47 += 12;
            --v46;
          }

          while (v46);
          goto LABEL_50;
        }

        v35 = v34 & 0x7FFFFFFE;
        v43 = (v33 + 49);
        v44 = v35;
        do
        {
          v45 = *v43 & 0xFFFC | 1;
          *(v43 - 12) = *(v43 - 12) & 0xFFFC | 1;
          *v43 = v45;
          v43 += 24;
          v44 -= 2;
        }

        while (v44);
        if (v35 != v34)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_50:
    sub_18195FBC4(a1, v25, 0);
    v48 = *(v21 + 48);
    if (!v48)
    {
      v41 = *(a1 + 52) != 0;
      goto LABEL_63;
    }

    v49 = *v48;
    if (v49 <= 0)
    {
      v41 = *(a1 + 52) != 0;
LABEL_62:
      *(v32 + 32) = 0;
LABEL_63:
      *(v32 + 40) = 0;
      sub_1818BB408(v2, v32, 1);
      v42 = *(v21 + 32);
      if (!v42)
      {
        goto LABEL_20;
      }

LABEL_64:
      v56 = *v42;
      if (*v42 >= 1 && v41 == 0)
      {
        v58 = 0;
        v59 = 0;
        do
        {
          if ((*(&v42[v58 + 8] + 1) & 4) != 0)
          {
            sub_18195FBC4(a1, **&v42[v58 + 18], 0);
            v42 = *(v21 + 32);
            v56 = *v42;
          }

          ++v59;
          v58 += 18;
        }

        while (v59 < v56);
      }

LABEL_20:
      if (*(v2 + 103))
      {
        v17 = 7;
      }

      else
      {
        v17 = v41;
      }

      *&v90 = v24;
      if (!v17)
      {
        v36 = *(v21 + 40);
        if (!v36)
        {
          goto LABEL_76;
        }

        v37 = v92;
        LODWORD(v92) = v92 & 0xF7FF6FEF;
        v38 = v89;
        v93 = v89;
        v94 = sub_1818B1AF8;
        if ((v37 & 0x80000) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = sub_1818B15A0;
        }

        v95 = v39;
        v96 = 0;
        v97 = 0;
        v98 = &v89;
        v40 = *(v89 + 308) + *(v36 + 40);
        *(v89 + 308) = v40;
        if (*(*v38 + 148) < v40)
        {
          sub_181910730(v38, "Expression tree is too large (maximum depth %d)", v26, v27, v28, v29, v30, v31, *(*v38 + 148));
          v17 = 1;
          goto LABEL_24;
        }

        v60 = v37 & 0x8009010;
        sub_181959BA0(&v93, v36);
        v61 = v93;
        *(v93 + 308) -= *(v36 + 40);
        v62 = v92;
        *(v36 + 4) |= v92 & 0x8010;
        LODWORD(v92) = v62 | v60;
        if (SHIDWORD(v91) >= 1 || *(v61 + 52) > 0)
        {
          v17 = 1;
        }

        else
        {
LABEL_76:
          v17 = sub_18195EDEC(&v89, *(v21 + 48), v26, v27, v28, v29, v30, v31);
          if (!v17)
          {
            v69 = *(v21 + 64);
            if (v69)
            {
              *(v69 + 64) = v24;
              *(&v90 + 1) = v69;
              LODWORD(v92) = 512;
              v17 = sub_18195EDEC(&v89, *v69, v63, v64, v65, v66, v67, v68) || sub_18195EDEC(&v89, *(v69 + 16), v70, v71, v72, v73, v74, v75) || sub_18195ECC4(&v89, *(v69 + 24), v76, v77, v78, v79, v80, v81) || sub_18195ECC4(&v89, *(v69 + 8), v82, v83, v84, v85, v86, v87);
              LODWORD(v92) = 0;
            }
          }
        }
      }

LABEL_24:
      *&v90 = 0;
      sub_1818BB5B0(v2, v24);
      if (v17)
      {
        return v17;
      }

      goto LABEL_25;
    }

    if (v49 == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49 & 0x7FFFFFFE;
      v51 = (v48 + 49);
      v52 = v50;
      do
      {
        v53 = *v51 & 0xFFFC;
        *(v51 - 12) &= 0xFFFCu;
        *v51 = v53;
        v51 += 24;
        v52 -= 2;
      }

      while (v52);
      if (v50 == v49)
      {
LABEL_61:
        v41 = *(a1 + 52) != 0;
        if (!*(v21 + 48))
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    v54 = v49 - v50;
    v55 = (&v48[6 * v50 + 6] + 1);
    do
    {
      *v55 &= 0xFFFCu;
      v55 += 12;
      --v54;
    }

    while (v54);
    goto LABEL_61;
  }

  return 1;
}

uint64_t sub_181997D74(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = *a3;
  if (*a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = (result + 408);
  while (2)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    v7 = &a3[6 * v5 + 2];
    v8 = *(v7 + 8);
    if ((*(v7 + 17) & 3) != 0 || v8 == 0)
    {
      goto LABEL_4;
    }

    for (i = 0; *(v8 + i) != *(a4 + i); ++i)
    {
      if (byte_181A20298[*(v8 + i)] != byte_181A20298[*(a4 + i)])
      {
        goto LABEL_4;
      }

LABEL_12:
      ;
    }

    if (*(v8 + i))
    {
      goto LABEL_12;
    }

    v11 = *v6;
    if (*v6)
    {
      v12 = (result + 408);
      if (*v11 == v8)
      {
LABEL_20:
        if (a2)
        {
          *v12 = v11[3];
          v11[3] = *a2;
          *a2 = v11;
          ++*(a2 + 8);
          v4 = *a3;
        }
      }

      else
      {
        while (1)
        {
          v13 = v11;
          v11 = v11[3];
          if (!v11)
          {
            break;
          }

          if (*v11 == v8)
          {
            v12 = v13 + 3;
            goto LABEL_20;
          }
        }
      }
    }

LABEL_4:
    if (++v5 < v4)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_181997E60(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = *a3;
  if (*a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = (result + 408);
  while (2)
  {
    v7 = *&a3[2 * v5 + 2];
    if (v7)
    {
      v8 = a4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_4;
    }

    for (i = 0; *(v7 + i) != *(a4 + i); ++i)
    {
      if (byte_181A20298[*(v7 + i)] != byte_181A20298[*(a4 + i)])
      {
        goto LABEL_4;
      }

LABEL_11:
      ;
    }

    if (*(v7 + i))
    {
      goto LABEL_11;
    }

    v10 = *v6;
    if (*v6)
    {
      v11 = (result + 408);
      if (*v10 == v7)
      {
LABEL_19:
        if (a2)
        {
          *v11 = v10[3];
          v10[3] = *a2;
          *a2 = v10;
          ++*(a2 + 8);
          v4 = *a3;
        }
      }

      else
      {
        while (1)
        {
          v12 = v10;
          v10 = v10[3];
          if (!v10)
          {
            break;
          }

          if (*v10 == v7)
          {
            v11 = v12 + 3;
            goto LABEL_19;
          }
        }
      }
    }

LABEL_4:
    if (++v5 < v4)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_181997F38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    result = sub_181959BA0(result, v4);
  }

  for (i = *(a2 + 56); i; i = i[10])
  {
    result = sub_1818AEE70(v3, i[2]);
    v6 = i[5];
    if (v6)
    {
      result = sub_181959BA0(v3, v6);
    }

    v7 = i[6];
    if (v7)
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        for (j = (v7 + 2); ; j += 3)
        {
          if (*j)
          {
            result = sub_181959BA0(v3, *j);
            if (result)
            {
              v10 = 1;
            }

            else
            {
              v10 = v8 <= 1;
            }

            if (v10)
            {
              break;
            }
          }

          else if (v8 < 2)
          {
            break;
          }

          --v8;
        }
      }
    }

    v11 = i[8];
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *v12;
        if (*v12 >= 1)
        {
          for (k = (v12 + 2); ; k += 3)
          {
            if (*k)
            {
              result = sub_181959BA0(v3, *k);
              if (result)
              {
                v15 = 1;
              }

              else
              {
                v15 = v13 <= 1;
              }

              if (v15)
              {
                break;
              }
            }

            else if (v13 < 2)
            {
              break;
            }

            --v13;
          }
        }
      }

      v16 = v11[2];
      if (v16)
      {
        v17 = *v16;
        if (*v16 >= 1)
        {
          for (m = (v16 + 2); ; m += 3)
          {
            if (*m)
            {
              result = sub_181959BA0(v3, *m);
              if (result)
              {
                v19 = 1;
              }

              else
              {
                v19 = v17 <= 1;
              }

              if (v19)
              {
                break;
              }
            }

            else if (v17 < 2)
            {
              break;
            }

            --v17;
          }
        }
      }

      v20 = v11[3];
      if (v20)
      {
        result = sub_181959BA0(v3, v20);
      }

      v21 = v11[1];
      if (v21)
      {
        result = sub_181959BA0(v3, v21);
      }
    }

    v22 = i[4];
    if (v22)
    {
      v23 = *v22;
      if (*v22 >= 1)
      {
        v24 = 0;
        v25 = (v22 + 18);
        do
        {
          if ((*(v25 - 39) & 4) != 0)
          {
            result = sub_1818AEE70(v3, **v25);
            v23 = *v22;
          }

          ++v24;
          v25 += 9;
        }

        while (v24 < v23);
      }
    }
  }

  return result;
}

uint64_t sub_1819980F8(uint64_t a1, uint64_t *a2, uint64_t a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a5;
  v8 = __s;
  v9 = a3;
  if (__s)
  {
    v44 = strlen(__s) & 0x3FFFFFFF;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = 0;
    if (a3)
    {
LABEL_3:
      v12 = strlen(v9) & 0x3FFFFFFF;
      if (a1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v12 = 0;
  if (a1)
  {
LABEL_4:
    v13 = *(*a1 + 24);
    if (!v8)
    {
      v14 = (2 * v12) | 1;
      v15 = 3 * v14;
      if (v13)
      {
        v16 = sub_181929E8C(*(*a1 + 24), 3 * v14, 0x100004077774924);
        if (!v16)
        {
          return 7;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (!v8)
  {
    v14 = (2 * v12) | 1;
    v15 = 3 * v14;
LABEL_19:
    v16 = sub_181902484(v15, 0x100004077774924);
    v13 = 0;
    if (v16)
    {
LABEL_20:
      v50 = v13;
      v43 = a1;
      bzero(v16, v15);
      v47 = 0;
      v48 = 0;
      v20 = &v16[v14];
      v46 = &v16[4 * v12 + 2];
LABEL_21:
      memcpy(v16, v9, v12);
      v22 = *a2;
      if (*a2)
      {
        v45 = 2 * v12;
        do
        {
          for (i = *(v22 + 24); i; i = *(i + 24))
          {
            if (*(i + 8) > *(v22 + 8))
            {
              v22 = i;
            }
          }

          v24 = a2;
          do
          {
            v25 = v24;
            v26 = *v24;
            v24 = (*v24 + 24);
          }

          while (v26 != v22);
          *v25 = *(v22 + 24);
          v27 = *(v22 + 8);
          if (v8)
          {
            if (v49 || (v29 = v44, v28 = v8, (byte_181A204C8[*v27] & 0x46) == 0))
            {
              v28 = v48;
              if (v27[*(v22 + 16)] == 34)
              {
                v29 = v47 + 1;
              }

              else
              {
                v29 = v47;
              }
            }
          }

          else
          {
            memcpy(v20, v27, *(v22 + 16));
            v20[*(v22 + 16)] = 0;
            v30 = *v20;
            if (byte_181A204C8[*v20] < 0)
            {
              v31 = 0;
              if (v30 == 91)
              {
                v30 = 93;
              }

              for (j = 1; ; ++j)
              {
                v33 = j;
                v34 = v20[j];
                if (v34 == v30)
                {
                  ++j;
                  LOBYTE(v34) = v30;
                  if (v20[v33 + 1] != v30)
                  {
                    break;
                  }
                }

                v20[v31++] = v34;
              }

              v20[v31] = 0;
            }

            v35 = &byte_181A2878D;
            if (*(*(v22 + 8) + *(v22 + 16)) == 39)
            {
              v35 = " ";
            }

            v28 = v46;
            sqlite3_snprintf(v45, v46, "%Q%s", v20, v35);
            if (v46)
            {
              v29 = strlen(v46) & 0x3FFFFFFF;
            }

            else
            {
              v29 = 0;
            }
          }

          v36 = v8;
          v37 = v9;
          v38 = *(v22 + 8) - v9;
          v39 = *(v22 + 16);
          v40 = v38;
          if (v29 != v39)
          {
            memmove(&v16[v29 + v38], &v16[(v39 + v38)], v12 - (v39 + v38));
            v12 += v29 - *(v22 + 16);
            v16[v12] = 0;
          }

          memcpy(&v16[v40], v28, v29);
          sub_181929C84(v50, v22);
          v22 = *a2;
          v9 = v37;
          v8 = v36;
        }

        while (*a2);
      }

      if (v43)
      {
        sub_18190B23C(v43, v16, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
      }

      sub_181929C84(v50, v16);
      v21 = 0;
      v18 = v48;
      if (!v48)
      {
        return v21;
      }

      goto LABEL_55;
    }

    return 7;
  }

  v13 = 0;
LABEL_12:
  v17 = sub_1818A8BAC(v13, "%w ", a3, __s, a5, a6, a7, a8, v8);
  if (!v17)
  {
    return 7;
  }

  v18 = v17;
  v47 = (strlen(v17) & 0x3FFFFFFF) - 1;
  v19 = v12 + v47 * *(a2 + 2);
  if (v13)
  {
    v16 = sub_181929E8C(v13, v19 + 1, 2119895112);
    if (v16)
    {
LABEL_15:
      v50 = v13;
      v48 = v18;
      v43 = a1;
      bzero(v16, v19 + 1);
      v20 = 0;
      v46 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v16 = sub_181902484(v19 + 1, 2119895112);
    if (v16)
    {
      goto LABEL_15;
    }
  }

  v21 = 7;
LABEL_55:
  v41 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_60:
    (*v41)(v18);
    return v21;
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
    goto LABEL_60;
  }

  return v21;
}

char *sub_181998584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = *(a3 + 20);
    if ((~v10 & 0x202) == 0 && *(a3 + 22) == 1)
    {
      v11 = *(a3 + 8);
      if (!a4)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    if ((v10 & 1) == 0)
    {
      v11 = a4;
      v12 = sub_18193CB70(a3, 1);
      a4 = v11;
      LOBYTE(v11) = v12;
      if (!a4)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  LOBYTE(v11) = 0;
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_10:
  v13 = *(a4 + 20);
  if (((~v13 & 0x202) != 0 || *(a4 + 22) != 1) && (v13 & 1) == 0)
  {
    sub_18193CB70(a4, 1);
  }

LABEL_14:
  result = sub_1818A8BAC(*a5, "error in %s %s%s%s: %s", a3, a4, a5, a6, a7, a8, v11);
  v15 = result;
  if (a1)
  {
    *(a1 + 36) = 1;
    result = sub_1818900D0(*a1, result, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v15)
  {
    v16 = *a5;

    return sub_181929C84(v16, v15);
  }

  return result;
}

void *sub_1819986E4(void *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    if (*(v3 + 267))
    {
      sub_1818A32FC(a1[2]);
    }

    sub_181901AB4(v3);
  }

  v4 = a1[43];
  if (v4)
  {
    if (v2[103] || (v5 = *(v4 + 44) - 1, (*(v4 + 44) = v5) == 0))
    {
      sub_18194E094(v2, v4);
    }
  }

  while (1)
  {
    v6 = a1[44];
    if (!v6)
    {
      break;
    }

    a1[44] = *(v6 + 40);
    v7 = *(v6 + 72);
    if (v7)
    {
      sub_1819439E0(v2, v7);
    }

    v8 = *(v6 + 80);
    if (v8)
    {
      sub_18194E5B8(v2, v8);
    }

    v9 = *(v6 + 32);
    if (v9)
    {
      sub_181929C84(v2, v9);
    }

    if ((*(v6 + 99) & 0x10) != 0)
    {
      v10 = *(v6 + 64);
      if (v10)
      {
        sub_181929C84(v2, v10);
      }
    }

    sub_181929C84(v2, v6);
  }

  sub_1818A313C(v2, a1[45]);
  v11 = a1[1];
  if (v11)
  {
    sub_181929C84(v2, v11);
  }

  v12 = a1[51];
  if (v12)
  {
    do
    {
      v13 = v12[3];
      sub_181929C84(v2, v12);
      v12 = v13;
    }

    while (v13);
  }

  return sub_181910CA0(a1);
}

uint64_t sub_181998814(void *a1, unsigned __int8 *a2)
{
  if (*a2 != 168)
  {
    return 0;
  }

  if ((a2[7] & 3) != 0)
  {
    return 0;
  }

  v2 = a1[5];
  v4 = *(a2 + 9);
  v3 = a2 + 72;
  if (*(v2 + 16) != v4)
  {
    return 0;
  }

  v6 = *(*a1 + 408);
  if (!v6)
  {
    return 0;
  }

  if (*v6 != v3)
  {
    while (1)
    {
      v7 = v6;
      v6 = v6[3];
      if (!v6)
      {
        return 0;
      }

      if (*v6 == v3)
      {
        if (!v2)
        {
          return 0;
        }

        v8 = v7 + 3;
        goto LABEL_12;
      }
    }
  }

  v8 = (*a1 + 408);
LABEL_12:
  *v8 = v6[3];
  v6[3] = *v2;
  *v2 = v6;
  ++*(v2 + 8);
  return 0;
}

uint64_t sub_1819988B0(void *a1, uint64_t a2)
{
  if ((*(a2 + 6) & 0x420) != 0)
  {
    return 1;
  }

  v3 = *(a2 + 40);
  if (!v3)
  {
    return 2;
  }

  v4 = *v3;
  if (*v3 >= 1)
  {
    v5 = 0;
    v6 = a1[5];
    do
    {
      v8 = &v3[18 * v5 + 2];
      if (*(v8 + 2) == *(v6 + 16))
      {
        v9 = *v8;
        if (*v8)
        {
          v10 = *(*a1 + 408);
          if (v10)
          {
            if (*v10 == v9)
            {
              v7 = (*a1 + 408);
LABEL_7:
              *v7 = v10[3];
              v10[3] = *v6;
              *v6 = v10;
              ++*(v6 + 8);
              v4 = *v3;
            }

            else
            {
              while (1)
              {
                v11 = v10;
                v10 = v10[3];
                if (!v10)
                {
                  break;
                }

                if (*v10 == v9)
                {
                  if (!v6)
                  {
                    break;
                  }

                  v7 = v11 + 3;
                  goto LABEL_7;
                }
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 < v4);
  }

  sub_181962064(a1, a2);
  return 0;
}

uint64_t sub_1819989A4(void *a1, _BYTE *a2)
{
  if (*a2 != 118)
  {
    return 0;
  }

  if ((a2[4] & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(*a1 + 408);
  if (!v2)
  {
    return 0;
  }

  v3 = a1[5];
  if (*v2 != a2)
  {
    while (1)
    {
      v4 = v2;
      v2 = v2[3];
      if (!v2)
      {
        return 0;
      }

      if (*v2 == a2)
      {
        v5 = v4 + 3;
        if (v3)
        {
          goto LABEL_10;
        }

        return 0;
      }
    }
  }

  v5 = (*a1 + 408);
  if (!v3)
  {
    return 0;
  }

LABEL_10:
  *v5 = v2[3];
  v2[3] = *v3;
  *v3 = v2;
  ++*(v3 + 8);
  return 0;
}

void *sub_181998A2C(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 8);
      if (!result)
      {
        return result;
      }
    }

    ++*result;
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998A9C(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 && *(v2 + 32))
    {
      v3 = a1[2];
      if ((*(v3 + 20) & 0x80000000) == 0)
      {
        v4 = sub_18190C2E0(a1, 8);
        if (!v4)
        {
          goto LABEL_8;
        }

LABEL_13:
        v5 = *v4;
LABEL_14:
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

        return;
      }

      v4 = *(v3 + 8);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1819012D0(100772);
    }

LABEL_8:
    v5 = 0;
    goto LABEL_14;
  }

  sub_1819012D0(100772);
}

uint64_t sub_181998B70(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24);
      if (!result)
      {
        return result;
      }
    }

    *(result + 8) = 1;
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998BDC(uint64_t a1)
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
      v4 = sub_18190C2E0(a1, 24);
      if (!v4)
      {
        return;
      }
    }

    v5 = *v4;
    if (v4[1])
    {
      *v4 = ++v5;
      v4[1] = 0;
    }

    v6 = *v3;
    if ((*(*v3 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v6, v5);
    }

    else
    {
      *v6 = v5;
      *(v6 + 20) = 4;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t *sub_181998CA8(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24);
      if (!result)
      {
        return result;
      }
    }

    v5 = *result;
    v6 = result[1] + 1;
    result[1] = v6;
    if (!v5)
    {
      *result = v6;
    }
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998D24(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 24);
      if (!v5)
      {
        return;
      }
    }

    v6 = *v5;
    v7 = *v4;
    if ((*(*v4 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, v6);
    }

    else
    {
      *v7 = v6;
      *(v7 + 20) = 4;
    }

    *v5 = 0;
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181998DCC(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24);
      if (!result)
      {
        return result;
      }
    }

    ++*(result + 16);
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998E3C(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 24);
      if (!v5)
      {
        return;
      }
    }

    v6 = v5[1];
    v7 = v5[2];
    *v5 = v6;
    if (v7 < 2)
    {
      v9 = *v4;
      if ((*(v9 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v9);
      }

      *v9 = 0;
    }

    else
    {
      v8 = v6 / (v7 - 1);
      v9 = *v4;
      if ((*(v9 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v9);
      }

      else
      {
        *(v9 + 20) = 1;
      }

      *v9 = v8;
    }

    *(v9 + 20) = 8;
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181998F38(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0 || !*(v1 + 32))
  {
    sub_181A1EE04();
  }

  v2 = *(a1 + 16);
  if (*(v2 + 20) < 0)
  {
    result = *(v2 + 8);
  }

  else
  {
    result = sub_18190C2E0(a1, 24);
  }

  ++*(result + 8);
  return result;
}

uint64_t sub_181998F8C(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24);
      if (!result)
      {
        return result;
      }
    }

    ++*(result + 16);
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998FFC(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 0);
      if (!v5)
      {
        return;
      }
    }

    v6 = *(v5 + 8) / *(v5 + 16);
    v7 = *v4;
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v7);
    }

    else
    {
      *(v7 + 20) = 1;
    }

    *v7 = v6;
    *(v7 + 20) = 8;
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_1819990CC(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0 || !*(v1 + 32))
  {
    sub_181A1EE04();
  }

  v2 = *(a1 + 16);
  if (*(v2 + 20) < 0)
  {
    result = *(v2 + 8);
  }

  else
  {
    result = sub_18190C2E0(a1, 24);
  }

  ++*(result + 8);
  return result;
}

uint64_t sub_181999120(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v4 = *(result + 8);
    if (v4)
    {
      if (*(v4 + 32))
      {
        v5 = *(result + 16);
        if (*(v5 + 20) < 0)
        {
          v6 = result;
          v8 = *(v5 + 8);
          if (!v8)
          {
            return result;
          }
        }

        else
        {
          v6 = result;
          v7 = a3;
          result = sub_18190C2E0(result, 24);
          a3 = v7;
          v8 = result;
          if (!result)
          {
            return result;
          }
        }

        if (*v8)
        {
          goto LABEL_21;
        }

        result = *a3;
        if (*a3)
        {
          v9 = *(result + 20);
          if ((v9 & 0x24) != 0)
          {
            result = *result;
            goto LABEL_15;
          }

          if ((v9 & 8) != 0)
          {
            v11 = *result;
            if (*result >= -9.22337204e18)
            {
              if (v11 > 9.22337204e18)
              {
                v8[1] = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_21;
              }

              result = v11;
LABEL_15:
              v8[1] = result;
              if (result > 0)
              {
LABEL_21:
                ++*v8;
                return result;
              }

LABEL_20:
              *(v6 + 36) = 1;
              result = sub_1818900D0(*v6, "argument of ntile must be a positive integer", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
              goto LABEL_21;
            }

            v10 = 0x8000000000000000;
LABEL_19:
            v8[1] = v10;
            goto LABEL_20;
          }

          if ((v9 & 0x12) != 0)
          {
            v10 = *(result + 8);
            if (v10)
            {
              result = sub_18193CFCC(result);
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_1819012D0(92237);
        }

        v10 = 0;
        goto LABEL_19;
      }
    }
  }

  return sub_1819012D0(100772);
}

void sub_181999278(uint64_t a1)
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
      v4 = sub_18190C2E0(a1, 24);
      if (!v4)
      {
        return;
      }
    }

    v5 = v4[1];
    if (v5 >= 1)
    {
      v6 = *v4 / v5;
      if (v6)
      {
        v7 = v6;
        v8 = *v4 - v6 * v5;
        v9 = v6 + 1;
        v10 = v4[2];
        if (v10 >= v8 * v9)
        {
          v11 = v8 + (v10 - v8 * v9) / v7;
        }

        else
        {
          v11 = v10 / v9;
        }
      }

      else
      {
        v11 = v4[2];
      }

      v12 = v11 + 1;
      v13 = *v3;
      if ((*(*v3 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v13, v12);
      }

      else
      {
        *v13 = v12;
        *(v13 + 20) = 4;
      }
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181999388(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0 || !*(v1 + 32))
  {
    sub_181A1EE04();
  }

  v2 = *(a1 + 16);
  if (*(v2 + 20) < 0)
  {
    result = *(v2 + 8);
  }

  else
  {
    result = sub_18190C2E0(a1, 24);
  }

  ++*(result + 16);
  return result;
}

void sub_1819993DC(uint64_t a1, uint64_t a2, const sqlite3_value **a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0 && *(v3 + 32))
  {
    v4 = *(a1 + 16);
    if (*(v4 + 20) < 0)
    {
      v5 = a1;
      v8 = *(v4 + 8);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      v5 = a1;
      v6 = a3;
      v7 = sub_18190C2E0(a1, 16);
      a3 = v6;
      v8 = v7;
      if (!v7)
      {
        return;
      }
    }

    v9 = *v8;
    if (*v8)
    {
      v10 = a3;
      if ((*(v9 + 20) & 0x9000) != 0 || *(v9 + 32))
      {
        sub_18193CA00(*v8);
      }

      sub_181929C84(*(v9 + 24), v9);
      a3 = v10;
    }

    v11 = sqlite3_value_dup(*a3);
    *v8 = v11;
    if (v11)
    {
      ++*(v8 + 8);
    }

    else
    {

      sqlite3_result_error_nomem(v5);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_1819994F0(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 16);
      if (!v5)
      {
        return;
      }
    }

    if (*v5)
    {
      sqlite3_result_value(v4, *v5);
      v6 = *v5;
      if (*v5)
      {
        if ((*(v6 + 10) & 0x9000) != 0 || *(v6 + 8))
        {
          sub_18193CA00(*v5);
        }

        sub_181929C84(*(v6 + 3), v6);
      }

      *v5 = 0;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_1819995B0(uint64_t a1)
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

    v5 = *v4;
    if (*v4)
    {

      sqlite3_result_value(v3, v5);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181999658(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 16);
      if (!result)
      {
        return result;
      }
    }

    v5 = *(result + 8) - 1;
    *(result + 8) = v5;
    if (!v5)
    {
      v6 = *result;
      if (*result)
      {
        v7 = result;
        if ((*(v6 + 20) & 0x9000) != 0 || *(v6 + 32))
        {
          sub_18193CA00(*result);
        }

        sub_181929C84(*(v6 + 24), v6);
        result = v7;
      }

      *result = 0;
    }
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181999714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      if (*(v3 + 32))
      {
        v4 = *(a1 + 16);
        if (*(v4 + 20) < 0)
        {
          v5 = a1;
          v8 = *(v4 + 8);
          if (!v8)
          {
            return;
          }
        }

        else
        {
          v5 = a1;
          v6 = a3;
          v7 = sub_18190C2E0(a1, 16);
          a3 = v6;
          v8 = v7;
          if (!v7)
          {
            return;
          }
        }

        v9 = *(a3 + 8);
        if (v9)
        {
          v10 = *(v9 + 20);
          if ((0x4000000040004uLL >> v10))
          {
            v11 = a3;
            sub_18190FC94(*(a3 + 8), 0);
            a3 = v11;
            v10 = *(v9 + 20);
          }

          v12 = byte_181A203AA[v10 & 0x3F];
          v13 = v5;
          if (v12 == 2)
          {
            v19 = *(a3 + 8);
            if (v19)
            {
              v20 = *(v19 + 20);
              if ((v20 & 8) != 0)
              {
                v21 = *v19;
              }

              else if ((v20 & 0x24) != 0)
              {
                v21 = *v19;
              }

              else if ((v20 & 0x12) != 0)
              {
                v26 = a3;
                v21 = sub_18193CF90(v19);
                a3 = v26;
              }

              else
              {
                v21 = 0.0;
              }
            }

            else
            {
              v22 = a3;
              sub_1819012D0(92272);
              a3 = v22;
              v21 = 0.0;
            }

            if (v21 != v21)
            {
              goto LABEL_22;
            }

            goto LABEL_33;
          }

          if (v12 != 1)
          {
            goto LABEL_22;
          }

          v14 = *(a3 + 8);
          if (v14)
          {
            v15 = *(v14 + 20);
            if ((v15 & 0x24) != 0)
            {
              v16 = *v14;
              if (v16 < 1)
              {
                goto LABEL_22;
              }

              goto LABEL_34;
            }

            if ((v15 & 8) == 0)
            {
              if ((v15 & 0x12) == 0 || !*(v14 + 8) || (v25 = a3, v16 = sub_18193CFCC(v14), a3 = v25, v16 < 1))
              {
LABEL_22:
                *(v13 + 9) = 1;
                v18 = *v13;

                sub_1818900D0(v18, "second argument to nth_value must be a positive integer", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
                return;
              }

LABEL_34:
              v23 = *v8 + 1;
              *v8 = v23;
              if (v16 == v23)
              {
                v24 = sqlite3_value_dup(*a3);
                v8[1] = v24;
                if (!v24)
                {

                  sqlite3_result_error_nomem(v13);
                }
              }

              return;
            }

            v21 = *v14;
            if (*v14 < -9.22337204e18)
            {
              goto LABEL_22;
            }

            if (v21 > 9.22337204e18)
            {
              v16 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_34;
            }

LABEL_33:
            v16 = v21;
            if (v21 < 1)
            {
              goto LABEL_22;
            }

            goto LABEL_34;
          }

          v17 = 26701;
        }

        else
        {
          v17 = -31195;
        }

        sub_1819012D0(v17 | 0x10000);
        v13 = v5;
        goto LABEL_22;
      }
    }
  }

  sub_1819012D0(100772);
}

void sub_1819999BC(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 0);
      if (!v5)
      {
        return;
      }
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      sqlite3_result_value(v4, v6);
      v7 = *(v5 + 8);
      if (v7)
      {
        if ((*(v7 + 20) & 0x9000) != 0 || *(v7 + 32))
        {
          sub_18193CA00(*(v5 + 8));
        }

        sub_181929C84(*(v7 + 24), v7);
      }

      *(v5 + 8) = 0;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_181999A80(uint64_t a1, uint64_t a2, const sqlite3_value **a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0 && *(v3 + 32))
  {
    v4 = *(a1 + 16);
    if (*(v4 + 20) < 0)
    {
      v5 = a1;
      v8 = *(v4 + 8);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      v5 = a1;
      v6 = a3;
      v7 = sub_18190C2E0(a1, 16);
      a3 = v6;
      v8 = v7;
      if (!v7)
      {
        return;
      }
    }

    if (!*(v8 + 8))
    {
      v9 = sqlite3_value_dup(*a3);
      *(v8 + 8) = v9;
      if (!v9)
      {

        sqlite3_result_error_nomem(v5);
      }
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_181999B44(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      v4 = a1;
      v5 = *(v3 + 8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v4 = a1;
      v5 = sub_18190C2E0(a1, 16);
      if (!v5)
      {
        return;
      }
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      sqlite3_result_value(v4, v6);
      v7 = *(v5 + 8);
      if (v7)
      {
        if ((*(v7 + 20) & 0x9000) != 0 || *(v7 + 32))
        {
          sub_18193CA00(*(v5 + 8));
        }

        sub_181929C84(*(v7 + 24), v7);
      }

      *(v5 + 8) = 0;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_181999C04(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v11, 0, sizeof(v11));
  if (!sub_1818F50DC(a1, a2, a3, v11, a5, a6, a7, a8))
  {
    sub_18199C28C(v11);
    if (a1)
    {
      v9 = *&v11[0] / 86400000.0;
      v10 = *a1;
      if ((*(v10 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v10);
      }

      *v10 = v9;
      *(v10 + 20) = 8;
    }

    else
    {
      sub_1819012D0(100067);
    }
  }
}

void sub_181999CA8(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  if (!sub_1818F50DC(a1, a2, a3, v13, a5, a6, a7, a8))
  {
    sub_18199C28C(v13);
    if ((BYTE12(v14) & 4) != 0)
    {
      if (a1)
      {
        v11 = (*&v13[0] - 210866760000000) / 1000.0;
        v12 = *a1;
        if ((*(v12 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v12);
        }

        *v12 = v11;
        *(v12 + 20) = 8;
      }

      else
      {
        sub_1819012D0(100067);
      }
    }

    else if (a1)
    {
      v9 = *&v13[0] / 1000 - 210866760000;
      v10 = *a1;
      if ((*(*a1 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v10, v9);
      }

      else
      {
        *v10 = v9;
        *(v10 + 20) = 4;
      }
    }
  }
}