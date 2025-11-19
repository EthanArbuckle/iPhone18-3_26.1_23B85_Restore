uint64_t sub_1819AE440(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *a2;
  v5 = *(*a2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v4 + 32);
  v8 = v6 - v7;
  if (v6 >= v7)
  {
    v6 = v7;
  }

  LODWORD(result) = memcmp(v3, v5, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1819AE48C(char *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2 + 1;
  do
  {
    v4 = *a1++;
    v2 ^= v4 ^ (8 * v2);
    --v3;
  }

  while (v3 > 1);
  return v2 & 0x7FFFFFFF;
}

uint64_t sub_1819AE4C4(const void *a1, int a2, void *__s2, int a4)
{
  if (a2 == a4)
  {
    return memcmp(a1, __s2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1819AE4E4(void *a1, unsigned int a2, sqlite3_stmt **a3, const sqlite3_value **a4)
{
  v4 = a4;
  v6 = a1 + 14;
  v7 = a1[a2 + 14];
  v26 = v7;
  if (v7)
  {
    result = 0;
    if (!a4)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  v10 = off_1E6A27EC0[a2];
  if (a2 == 7)
  {
    v11 = 7;
    v12 = a1;
    v15 = sqlite3_mprintf(v10, a1[55]);
    v16 = 129;
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_8:
    result = 7;
    goto LABEL_32;
  }

  v11 = a2;
  v12 = a1;
  if (a2 == 18)
  {
    v13 = sqlite3_mprintf(v10, a1[4], a1[5], a1[56]);
  }

  else
  {
    v13 = sqlite3_mprintf(v10, a1[4], a1[5]);
  }

  v15 = v13;
  v16 = 133;
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v17 = sub_1818954B4(v12[3], v15, 0xFFFFFFFFLL, v16, 0, &v26, 0, v14);
  v18 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_16:
    (*v18)(v15);
    goto LABEL_17;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
  --qword_1ED456A90;
  off_1ED452EB0(v15);
  v15 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v18 = &xmmword_1ED452F28;
    goto LABEL_16;
  }

LABEL_17:
  v7 = v26;
  v6[v11] = v26;
  result = v17;
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_18:
  if (!v7)
  {
    goto LABEL_32;
  }

  if (!*(*v7 + 24))
  {
    v21 = *(v7 + 8);
    if (result)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v19 = result;
  xmmword_1ED452F18(*(*v7 + 24));
  v20 = *(*v7 + 24);
  v21 = *(v7 + 8);
  if (v20)
  {
    xmmword_1ED452F28(v20);
  }

  result = v19;
  if (!v19)
  {
LABEL_25:
    if (v21 >= 1)
    {
      v22 = v21;
      v23 = 1;
      do
      {
        v24 = *v4++;
        result = sqlite3_bind_value(v26, v23, v24);
        if (result)
        {
          v25 = 1;
        }

        else
        {
          v25 = v23 >= v22;
        }

        ++v23;
      }

      while (!v25);
    }
  }

LABEL_32:
  *a3 = v26;
  return result;
}

uint64_t sub_1819AE700(_BYTE *a1, int *a2)
{
  v2 = *a1 & 0x7F | (a1[1] << 7);
  if (a1[1] < 0)
  {
    v4 = *a1 & 0x7F | (a1[1] << 7) & 0x3FFF | (a1[2] << 14);
    if (a1[2] < 0)
    {
      v5 = *a1 & 0x7F | (a1[1] << 7) & 0x3FFF | (a1[2] << 14) & 0x1FFFFF | (a1[3] << 21);
      if (a1[3] < 0)
      {
        v5 = *a1 & 0x7F | (a1[1] << 7) & 0x3FFF | (a1[2] << 14) & 0x1FFFFF | (a1[3] << 21) & 0xFFFFFFF | ((a1[4] & 7) << 28);
        result = 5;
      }

      else
      {
        result = 4;
      }

      *a2 = v5;
    }

    else
    {
      result = 3;
      *a2 = v4;
    }
  }

  else
  {
    result = 2;
    *a2 = v2;
  }

  return result;
}

uint64_t sub_1819AE770(uint64_t a1, sqlite3_int64 iRow, char **a3, _DWORD *a4)
{
  v7 = *(a1 + 480);
  if (!v7)
  {
    v10 = *(a1 + 472);
    if (!v10)
    {
      v10 = sqlite3_mprintf("%s_segments", *(a1 + 40));
      *(a1 + 472) = v10;
      if (!v10)
      {
        return 7;
      }
    }

    LODWORD(result) = sqlite3_blob_open(*(a1 + 24), *(a1 + 32), v10, "block", iRow, 0, (a1 + 480));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = *(a1 + 480);
    if (v11 && *(v11 + 3))
    {
      v12 = *v11;
      *a4 = v12;
      if (!a3)
      {
        return 0;
      }
    }

    else
    {
      v12 = 0;
      *a4 = 0;
      if (!a3)
      {
        return 0;
      }
    }

    if (sqlite3_initialize())
    {
      result = 7;
      *a3 = 0;
      return result;
    }

    v13 = sub_181902484(v12 + 20, 1223275954);
    if (!v13)
    {
      result = 7;
      *a3 = 0;
      return result;
    }

    result = sub_181910DE0(*(a1 + 480), v13, v12, 0, sub_181910FE4);
    v14 = &v13[v12];
    *v14 = 0;
    *(v14 + 1) = 0;
    *(v14 + 4) = 0;
    if (!result)
    {
LABEL_28:
      *a3 = v13;
      return result;
    }

    v15 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v16 = result;
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
        goto LABEL_27;
      }

      v15 = &xmmword_1ED452F28;
    }

    else
    {
      v16 = result;
    }

    (*v15)(v13);
    v13 = 0;
LABEL_27:
    result = v16;
    goto LABEL_28;
  }

  LODWORD(result) = sqlite3_blob_reopen(v7, iRow);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (result == 1)
  {
    return 267;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1819AE95C(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      v5 = v4 & 0x3FFF | (a1[2] << 14);
      if (a1[2] < 0)
      {
        v6 = v5 & 0x1FFFFF | (a1[3] << 21);
        if (a1[3] < 0)
        {
          v7 = a1[4];
          v8 = v6 & 0xFFFFFFF | ((v7 & 0x7F) << 28);
          if (v7 < 0)
          {
            v10 = a1[5];
            v8 |= (v10 & 0x7F) << 35;
            if (v10 < 0)
            {
              v11 = a1[6];
              v8 |= (v11 & 0x7F) << 42;
              if (v11 < 0)
              {
                v12 = a1[7];
                v8 |= (v12 & 0x7F) << 49;
                if (v12 < 0)
                {
                  v13 = a1[8];
                  v8 |= (v13 & 0x7F) << 56;
                  if (v13 < 0)
                  {
                    v8 |= a1[9] << 63;
                    v9 = a1 + 10;
                  }

                  else
                  {
                    v9 = a1 + 9;
                  }
                }

                else
                {
                  v9 = a1 + 8;
                }
              }

              else
              {
                v9 = a1 + 7;
              }
            }

            else
            {
              v9 = a1 + 6;
            }
          }

          else
          {
            v9 = a1 + 5;
          }

          *a2 = v8;
          return (v9 - a1);
        }

        else
        {
          *a2 = v6;
          return 4;
        }
      }

      else
      {
        *a2 = v5;
        return 3;
      }
    }

    else
    {
      *a2 = v4;
      return 2;
    }
  }

  else
  {
    *a2 = v2;
    return 1;
  }
}

uint64_t sub_1819AEA58(uint64_t a1, uint64_t *a2, const void *a3, int a4)
{
  v5 = *(a2 + 2);
  if (!*(a2 + 11))
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= *(a2 + 2))
      {
        goto LABEL_2;
      }

      v28 = *(*a2 + 8 * v27);
      do
      {
        result = sub_1819AED10(a1, v28);
        if (result)
        {
          return result;
        }

        if (!a3)
        {
          goto LABEL_34;
        }

        v29 = *(v28 + 40);
        if (!v29)
        {
          goto LABEL_34;
        }

        v30 = *(v28 + 72);
        v31 = v30 - a4;
        if (v30 >= a4)
        {
          v30 = a4;
        }

        v32 = memcmp(*(v28 + 80), a3, v30);
        if (v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v31;
        }
      }

      while (v33 < 0);
      if (v33 && *(v28 + 4) != 0)
      {
        break;
      }

LABEL_34:
      ++v27;
      if (*(a2 + 11))
      {
        goto LABEL_2;
      }
    }

    if (*(v28 + 5))
    {
LABEL_33:
      *(v28 + 40) = 0;
      goto LABEL_34;
    }

    v35 = &off_1ED452EB0;
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
        goto LABEL_57;
      }

      v35 = &xmmword_1ED452F28;
    }

    (*v35)(v29);
LABEL_57:
    v36 = *(v28 + 56);
    if (v36)
    {
      v37 = v36[3];
      v38 = v36[4];
      v39 = v38[3];
      if (v39)
      {
        xmmword_1ED452F18(v39);
      }

      sub_181929C84(v38, v36);
      v40 = v38[3];
      if (v40)
      {
        xmmword_1ED452F28(v40);
      }

      sqlite3_finalize(v37);
    }

    *(v28 + 56) = 0;
    goto LABEL_33;
  }

LABEL_2:
  v6 = v5 - 1;
  if (v5 - 1 >= 1)
  {
    v41 = *a2;
    v7 = *a2 + 8 * v6;
    v8 = v5 - 2;
    v9 = (v5 - 1);
    v42 = v5;
    while (1)
    {
      v10 = v9--;
      if (v5 > v10)
      {
        break;
      }

LABEL_4:
      v7 -= 8;
      --v8;
      v5 = v42;
      if (v10 <= 1)
      {
        return 0;
      }
    }

    v11 = *(v41 + 8 * v9);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = *v13;
      v15 = *(v11 + 40);
      v16 = *(*v13 + 40);
      if (!v15)
      {
        break;
      }

      if (!v16)
      {
        v22 = -1;
LABEL_20:
        if (v15)
        {
          v21 = v22;
        }

        else
        {
          v21 = v22 + 1;
        }

        if (v21)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v17 = *(v11 + 72);
      v18 = *(v14 + 72);
      v19 = v17 - v18;
      if (v17 >= v18)
      {
        v17 = *(v14 + 72);
      }

      v20 = memcmp(*(v11 + 80), *(v14 + 80), v17);
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        goto LABEL_25;
      }

LABEL_24:
      v21 = *v14 - *v11;
LABEL_25:
      if ((v21 & 0x80000000) == 0)
      {
        *(v13 - 8) = v14;
        *v13 = v11;
        v13 += 8;
        if (v6 > ++v12)
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    if (v16)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }

    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1819AED10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = (v3 + *(a2 + 104));
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if (v4 < *(a2 + 40) + *(a2 + 48))
  {
    goto LABEL_6;
  }

LABEL_9:
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *v8;
    v10 = *(a2 + 40);
    if (!v10)
    {
      goto LABEL_17;
    }

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
LABEL_17:
        *(a2 + 40) = 0;
        if (v9)
        {
          v12 = *(v9 + 16);
          v13 = *v12;
          v14 = *(v9 + 32);
          v15 = *(a2 + 80);
          if (v14 < *(a2 + 88))
          {
            goto LABEL_19;
          }

          if (v15)
          {
            v19 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                v20 = *(a2 + 80);
                xmmword_1ED452F18(xmmword_1ED456AF0);
                v15 = v20;
              }

              v21 = v15;
              qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
              --qword_1ED456A90;
              off_1ED452EB0(v21);
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_35;
              }

              v19 = &xmmword_1ED452F28;
            }

            (*v19)();
          }

LABEL_35:
          if (sqlite3_initialize())
          {
            *(a2 + 80) = 0;
            return 7;
          }

          v15 = sub_181902484(2 * v14 + 2, 0x100004077774924);
          *(a2 + 80) = v15;
          if (!v15)
          {
            return 7;
          }

          *(a2 + 88) = 2 * v14 + 2;
LABEL_19:
          memcpy(v15, *(v9 + 24), v14);
          *(*(a2 + 80) + v14) = 0;
          *(a2 + 72) = v14;
          if (!sqlite3_initialize())
          {
            v22 = v13 + 1;
            v23 = sub_181902484(v13 + 1, 0x100004077774924);
            if (v23)
            {
              v24 = v23;
              memcpy(v23, v12[1], v13 + 1);
              result = 0;
              *(a2 + 104) = v22;
              *(a2 + 48) = v22;
              *(a2 + 96) = v24;
              *(a2 + 40) = v24;
              *(a2 + 64) += 8;
              return result;
            }
          }

          return 7;
        }

        return 0;
      }

      v11 = &xmmword_1ED452F28;
    }

    (*v11)(v10);
    goto LABEL_17;
  }

  if (*(a2 + 5))
  {
    goto LABEL_52;
  }

  v16 = *(a2 + 40);
  if (v16)
  {
    v17 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v18 = a1;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
      --qword_1ED456A90;
      off_1ED452EB0(v16);
      v16 = xmmword_1ED456AF0;
      a1 = v18;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_45;
      }

      v17 = &xmmword_1ED452F28;
    }

    else
    {
      v18 = a1;
    }

    (*v17)(v16);
    a1 = v18;
  }

LABEL_45:
  v25 = *(a2 + 56);
  if (v25)
  {
    v26 = a1;
    v27 = v25[3];
    v28 = v25[4];
    v29 = v28[3];
    if (v29)
    {
      xmmword_1ED452F18(v29);
    }

    sub_181929C84(v28, v25);
    v30 = v28[3];
    if (v30)
    {
      xmmword_1ED452F28(v30);
    }

    sqlite3_finalize(v27);
    a1 = v26;
  }

  *(a2 + 56) = 0;
LABEL_52:
  *(a2 + 40) = 0;
  v31 = *(a2 + 32);
  if (v31 >= *(a2 + 16))
  {
    return 0;
  }

  *(a2 + 32) = v31 + 1;
  result = sub_1819AE770(a1, v31 + 1, (a2 + 40), (a2 + 48));
  if (result)
  {
    return result;
  }

  v4 = *(a2 + 40);
LABEL_6:
  result = sub_1819AF2D0(a2, v4, 20);
  if (result)
  {
    return result;
  }

  v6 = *v4;
  if (*v4 < 0)
  {
    v6 = v6 & 0x7F | (v4[1] << 7);
    if (v4[1] < 0)
    {
      v6 = v6 & 0x3FFF | (v4[2] << 14);
      if (v4[2] < 0)
      {
        v6 = v6 & 0x1FFFFF | (v4[3] << 21);
        if (v4[3] < 0)
        {
          v6 = v6 & 0xFFFFFFF | ((v4[4] & 7) << 28);
          v7 = 5;
        }

        else
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v32 = &v4[v7];
  v33 = *v32;
  if (*v32 < 0)
  {
    v33 = v33 & 0x7F | (v32[1] << 7);
    if (v32[1] < 0)
    {
      v33 = v33 & 0x3FFF | (v32[2] << 14);
      if (v32[2] < 0)
      {
        v33 = v33 & 0x1FFFFF | (v32[3] << 21);
        if (v32[3] < 0)
        {
          v33 = v33 & 0xFFFFFFF | ((v32[4] & 7) << 28);
          v34 = 5;
        }

        else
        {
          v34 = 4;
        }
      }

      else
      {
        v34 = 3;
      }
    }

    else
    {
      v34 = 2;
    }
  }

  else
  {
    v34 = 1;
  }

  if (!v33)
  {
    return 267;
  }

  v35 = &v32[v34];
  if (*(a2 + 40) + *(a2 + 48) - &v32[v34] < v33 || v6 > *(a2 + 72))
  {
    return 267;
  }

  v36 = v33 + v6;
  if (v36 > *(a2 + 88))
  {
    v37 = 2 * v36;
    v38 = sub_181902CC0(*(a2 + 80), 2 * v36, 900543160);
    if (!v38)
    {
      return 7;
    }

    *(a2 + 80) = v38;
    *(a2 + 88) = v37;
  }

  result = sub_1819AF2D0(a2, v35, v33 + 10);
  if (!result)
  {
    memcpy((*(a2 + 80) + v6), v35, v33);
    *(a2 + 72) = v33 + v6;
    v39 = &v35[v33];
    v40 = *v39;
    if (v40 < 0)
    {
      v41 = sub_1819AE700(v39, (a2 + 104));
      v40 = *(a2 + 104);
    }

    else
    {
      *(a2 + 104) = v40;
      v41 = 1;
    }

    v42 = &v39[v41];
    *(a2 + 96) = v42;
    *(a2 + 112) = 0;
    if (*(a2 + 40) - v42 + *(a2 + 48) < v40 || !*(a2 + 52) && v42[v40 - 1])
    {
      return 267;
    }

    if (v40)
    {
      return 0;
    }

    else
    {
      return 267;
    }
  }

  return result;
}

uint64_t sub_1819AF2D0(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 56);
  if (result)
  {
    v5 = a2 + a3;
    while (1)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 52);
      if (v5 - v6 <= v7)
      {
        return 0;
      }

      v8 = *(a1 + 48) - v7;
      if (v8 >= 4096)
      {
        v9 = 4096;
      }

      else
      {
        v9 = v8;
      }

      result = sub_181910DE0(result, (v6 + v7), v9, v7, sub_181910FE4);
      if (result)
      {
        return result;
      }

      v10 = *(a1 + 52) + v9;
      *(a1 + 52) = v10;
      v11 = *(a1 + 40) + v10;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      result = *(a1 + 56);
      if (*(a1 + 52) == *(a1 + 48))
      {
        break;
      }

      if (!result)
      {
        return result;
      }
    }

    if (result)
    {
      v12 = *(result + 24);
      v13 = *(result + 32);
      v14 = *(a1 + 56);
      v15 = v13[3];
      if (v15)
      {
        xmmword_1ED452F18(v15);
      }

      sub_181929C84(v13, v14);
      v16 = v13[3];
      if (v16)
      {
        xmmword_1ED452F28(v16);
      }

      sqlite3_finalize(v12);
    }

    result = 0;
    *(a1 + 56) = 0;
    *(a1 + 52) = 0;
  }

  return result;
}

uint64_t sub_1819AF3DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 463))
  {
    v3 = sub_1819AFF20;
  }

  else
  {
    v3 = sub_1819AFF78;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  v6 = v2 - 1;
  v127 = *(a2 + 16);
  v134 = *(v127 + 16);
  v131 = *a2 + 8;
  v138 = *a2;
  v126 = *a2 - 8;
  v7 = 0x1ED452000;
  LODWORD(v8) = *(a2 + 12);
  v133 = *(a2 + 8);
  v137 = v2 - 1;
  while (2)
  {
    if (v8 < 1)
    {
      goto LABEL_31;
    }

    v9 = 0;
    do
    {
      v10 = v138[v9];
      if (*(v10 + 4))
      {
        if (*(v10 + 5))
        {
LABEL_12:
          *(v10 + 40) = 0;
          goto LABEL_13;
        }

        v11 = *(v10 + 40);
        if (v11)
        {
          v12 = &off_1ED452EB0;
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
              goto LABEL_23;
            }

            v12 = &xmmword_1ED452F28;
          }

          (*v12)(v11);
        }

LABEL_23:
        v13 = *(v10 + 56);
        if (v13)
        {
          v14 = v13[3];
          v15 = v13[4];
          v16 = v15[3];
          if (v16)
          {
            xmmword_1ED452F18(v16);
          }

          sub_181929C84(v15, v13);
          if (v15[3])
          {
            (*(v7 + 3880))();
          }

          sqlite3_finalize(v14);
        }

        *(v10 + 56) = 0;
        goto LABEL_12;
      }

      result = sub_1819AED10(v5, v138[v9]);
      if (result)
      {
        return result;
      }

LABEL_13:
      ++v9;
      v8 = *(v4 + 12);
    }

    while (v9 < v8);
    v2 = v133;
LABEL_31:
    v117 = v8 == v2;
    v18 = v8 == v2;
    if (v117)
    {
      v19 = -1;
    }

    else
    {
      v19 = 0;
    }

    v20 = v8 - v18;
    if (v8 - v18 >= 1)
    {
      v21 = v8 + v19 - 1;
      while (1)
      {
        v22 = v20--;
        if (v133 > v22)
        {
          break;
        }

LABEL_36:
        --v21;
        if (v22 <= 1)
        {
          goto LABEL_60;
        }
      }

      v23 = v138[v20];
      v24 = v21;
      v25 = v131 + 8 * v21;
      while (2)
      {
        v26 = *v25;
        v27 = *(v23 + 40);
        v28 = *(*v25 + 40);
        if (v27)
        {
          if (v28)
          {
            v29 = *(v23 + 72);
            v30 = *(v26 + 72);
            v31 = v29 - v30;
            if (v29 >= v30)
            {
              v29 = *(v26 + 72);
            }

            v32 = memcmp(*(v23 + 80), *(v26 + 80), v29);
            if (v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = v31;
            }

            v6 = v137;
            if (!v33)
            {
LABEL_56:
              v33 = *v26 - *v23;
            }

LABEL_57:
            if (v33 < 0)
            {
              goto LABEL_36;
            }

            *(v25 - 8) = v26;
            *v25 = v23;
            v25 += 8;
            if (v6 <= ++v24)
            {
              goto LABEL_36;
            }

            continue;
          }

          v34 = -1;
        }

        else if (v28)
        {
          v34 = 0;
        }

        else
        {
          v34 = -1;
        }

        break;
      }

      if (v27)
      {
        v33 = v34;
      }

      else
      {
        v33 = v34 + 1;
      }

      if (!v33)
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }

LABEL_60:
    *(a2 + 12) = 0;
    v35 = *v138;
    if (!*(*v138 + 40))
    {
      return 0;
    }

    v36 = *(v35 + 72);
    *(a2 + 64) = v36;
    v37 = *(v35 + 80);
    *(a2 + 56) = v37;
    if (!*v127 || (v134 & 0x10) != 0)
    {
LABEL_68:
      v8 = 1;
      if (v133 >= 2)
      {
        while (1)
        {
          v40 = v138[v8];
          if (!*(v40 + 40) || *(v40 + 72) != v36 || memcmp(v37, *(v40 + 80), v36))
          {
            break;
          }

          if (v133 == ++v8)
          {
            LODWORD(v8) = v133;
            break;
          }
        }
      }

      if (v8 != 1 || (v134 & 0x22) != 0)
      {
        goto LABEL_78;
      }

      v41 = *v138;
      v42 = *(*v138 + 64);
      if (*(v5 + 463))
      {
        if (v42)
        {
LABEL_78:
          v43 = 0;
          v44 = v8 - 1;
          if (v8 <= 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = v8;
          }

          v46 = 8 * v45;
          do
          {
            v48 = v138[v43 / 8];
            if (*(v5 + 463) && *(v48 + 64))
            {
              *(v48 + 128) = 0;
              v47 = (v48 + 128);
              *(v47 - 2) = 0;
              sub_1819B0240(0, *(v47 - 4), *(v47 - 6), v47 - 2, v47, v47 - 2, &v141);
            }

            else if (!sub_1819AF2D0(v138[v43 / 8], *(v48 + 96), 10))
            {
              *(v48 + 112) = *(v48 + 96) + sub_1819AE95C(*(v48 + 96), (v48 + 128));
            }

            v43 += 8;
          }

          while (v46 != v43);
          v49 = v8 - 2;
          if (v8 >= 2)
          {
            v50 = (v126 + 8 * v44);
            v51 = (v8 - 1);
            do
            {
              v52 = v51--;
              if (v8 > v52)
              {
                v53 = v138[v51];
                v54 = v49;
                v55 = v50;
                do
                {
                  if ((v3(v53, v55->i64[1]) & 0x80000000) != 0)
                  {
                    break;
                  }

                  v56 = *v55;
                  *v55 = vextq_s8(*v55, *v55, 8uLL);
                  v55 = (v55 + 8);
                  v53 = v56.i64[0];
                  ++v54;
                }

                while (v44 > v54);
              }

              v50 = (v50 - 8);
              --v49;
            }

            while (v52 > 1);
          }

          v57 = *v138;
          v6 = v137;
          if (!*(*v138 + 112))
          {
LABEL_7:
            v4 = a2;
            *(a2 + 12) = v8;
            v2 = v133;
            v7 = 0x1ED452000uLL;
            continue;
          }

          v132 = 0;
          v58 = 0;
          do
          {
            v140 = 0;
            v139 = 0;
            v59 = *(v57 + 128);
            sub_1819AFFD0(v5, v57, &v140, &v139);
            v60 = 1;
            if (v8 >= 2)
            {
              while (1)
              {
                v61 = v138[v60];
                if (!*(v61 + 112) || *(v61 + 128) != v59)
                {
                  break;
                }

                sub_1819AFFD0(v5, v61, 0, 0);
                if (v8 == ++v60)
                {
                  LODWORD(v60) = v8;
                  break;
                }
              }
            }

            v62 = v139;
            if ((v134 & 4) != 0)
            {
              v63 = 0;
              v64 = *(v127 + 12);
              v65 = v140;
              v66 = &v140[v139];
              v67 = v140;
              while (1)
              {
                v68 = v65;
                if (v67 < v66)
                {
                  v69 = 0;
                  v70 = v66 - v67;
                  while (1)
                  {
                    v71 = *v67;
                    if (!(*v67 & 0xFE | v69))
                    {
                      break;
                    }

                    ++v67;
                    v69 = v71 & 0x80;
                    if (!--v70)
                    {
                      v65 = &v140[v139];
                      if (v63 != v64)
                      {
                        goto LABEL_114;
                      }

                      goto LABEL_123;
                    }
                  }
                }

                v65 = v67;
                if (v63 == v64)
                {
LABEL_123:
                  v62 = v65 - v68;
                  goto LABEL_125;
                }

LABEL_114:
                v62 += v68 - v65;
                if (v62 < 1)
                {
                  break;
                }

                v63 = v65[1];
                if (v65[1] < 0)
                {
                  v63 = v63 & 0x7F | (v65[2] << 7);
                  if (v65[2] < 0)
                  {
                    v63 = v63 & 0x3FFF | (v65[3] << 14);
                    if (v65[3] < 0)
                    {
                      v63 = v63 & 0x1FFFFF | (v65[4] << 21);
                      if (v65[4] < 0)
                      {
                        v63 = v63 & 0xFFFFFFF | ((v65[5] & 7) << 28);
                        v67 = (v65 + 6);
                      }

                      else
                      {
                        v67 = (v65 + 5);
                      }
                    }

                    else
                    {
                      v67 = (v65 + 4);
                    }
                  }

                  else
                  {
                    v67 = (v65 + 3);
                  }
                }

                else
                {
                  v67 = (v65 + 2);
                }
              }

              v68 = v65;
LABEL_125:
              v140 = v68;
              v139 = v62;
            }

            if ((v134 & 2) == 0 || v62 >= 1)
            {
              if (*(v5 + 463) && v58 >= 1)
              {
                v72 = v132 - v59;
                if (v132 <= v59)
                {
                  return 267;
                }
              }

              else
              {
                if (v58 >= 1 && v132 >= v59)
                {
                  return 267;
                }

                v72 = v59 - v132;
              }

              v129 = v59;
              v73 = -20 - v58;
              v74 = v72;
              do
              {
                --v73;
                v75 = v74 > 0x7F;
                v74 >>= 7;
              }

              while (v75);
              v76 = (v134 << 31 >> 31) & (v62 + 1);
              v77 = *(a2 + 24);
              if (*(a2 + 32) < v76 - v73)
              {
                v135 = 2 * (v76 - v73);
                *(a2 + 32) = v135;
                v78 = sqlite3_initialize();
                result = 7;
                if (v76 == v73 || v78)
                {
                  return result;
                }

                v79 = sub_18190287C(v77, v135, 3047709364);
                if (!v79)
                {
                  return 7;
                }

                v77 = v79;
                *(a2 + 24) = v79;
              }

              v80 = (v77 + v58);
              v5 = a1;
              if ((v134 & 0x20) != 0)
              {
                v84 = 0;
                v85 = v140;
                v86 = *v140;
                v136 = 0;
                if (v86 == 1)
                {
                  v90 = v140;
                }

                else
                {
                  if (v86 == 2)
                  {
                    v84 = 1;
                    v87 = (v77 + v58);
                    v88 = v72;
                    do
                    {
                      v89 = v88;
                      *v87++ = v88 | 0x80;
                      ++v84;
                      v75 = v88 > 0x7F;
                      v88 >>= 7;
                    }

                    while (v75);
                    *(v87 - 1) = v89;
                    *v87 = 2;
                    v86 = *v85;
                    v136 = 1;
                  }

                  v90 = v85;
                  if (v86 >= 2)
                  {
                    do
                    {
                      v91 = v86 & 0x80;
                      v92 = *++v90;
                      LOBYTE(v86) = v92;
                    }

                    while (v92 & 0xFE | v91);
                  }
                }

                v93 = &v85[v62];
                while (v90 < v93)
                {
                  v141 = 0;
                  v90 += sub_1819AE95C(v90 + 1, &v141) + 1;
                  v94 = *v90;
                  if (v94 == 2)
                  {
                    if (!v136)
                    {
                      v95 = &v80[v84];
                      v96 = v72;
                      do
                      {
                        v97 = v96;
                        *v95++ = v96 | 0x80;
                        ++v84;
                        v75 = v96 > 0x7F;
                        v96 >>= 7;
                      }

                      while (v75);
                      *(v95 - 1) = v97;
                    }

                    v98 = &v80[v84];
                    *v98 = 1;
                    v99 = v98 + 1;
                    v100 = v141;
                    v84 += 2;
                    do
                    {
                      v101 = v100;
                      *v99++ = v100 | 0x80;
                      ++v84;
                      v75 = v100 > 0x7F;
                      v100 >>= 7;
                    }

                    while (v75);
                    *(v99 - 1) = v101;
                    v80[v84 - 1] = 2;
                    v94 = *v90;
                    v136 = 1;
                  }

                  if (v94 >= 2)
                  {
                    do
                    {
                      v102 = v94 & 0x80;
                      v103 = *++v90;
                      LOBYTE(v94) = v103;
                    }

                    while (v103 & 0xFE | v102);
                  }
                }

                if (v136)
                {
                  v80[v84++] = 0;
                }

                v58 += v84;
                v117 = v84 == 0;
                v83 = v132;
                v5 = a1;
                if (!v117)
                {
                  v83 = v129;
                }
              }

              else
              {
                v81 = v62 + v58;
                do
                {
                  v82 = v72;
                  *v80++ = v72 | 0x80;
                  ++v81;
                  ++v58;
                  v75 = v72 > 0x7F;
                  v72 >>= 7;
                }

                while (v75);
                *(v80 - 1) = v82;
                if (v134)
                {
                  memcpy((*(a2 + 24) + v58), v140, v62);
                  v58 = v81 + 1;
                  *(*(a2 + 24) + v81) = 0;
                }

                v83 = v129;
              }

              v132 = v83;
            }

            if (v60 == v8)
            {
              v104 = -1;
            }

            else
            {
              v104 = 0;
            }

            v105 = v60 - (v60 == v8);
            if (v105 >= 1)
            {
              v106 = v60 + v104 - 1;
              do
              {
                v107 = v105--;
                if (v8 > v107)
                {
                  v108 = v138[v105];
                  v109 = v106;
                  v110 = &v138[v106];
                  do
                  {
                    if ((v3(v108, v110->i64[1]) & 0x80000000) != 0)
                    {
                      break;
                    }

                    v111 = *v110;
                    *v110 = vextq_s8(*v110, *v110, 8uLL);
                    v110 = (v110 + 8);
                    v108 = v111.i64[0];
                    ++v109;
                  }

                  while (v44 > v109);
                }

                --v106;
              }

              while (v107 > 1);
            }

            v57 = *v138;
            v6 = v137;
          }

          while (*(*v138 + 112));
          if (v58 < 1)
          {
            goto LABEL_7;
          }

          v120 = v58 + 20;
          v121 = *(a2 + 24);
          if (*(a2 + 32) < v120)
          {
            v122 = 2 * v120;
            *(a2 + 32) = 2 * v120;
            if (sqlite3_initialize())
            {
              return 7;
            }

            v124 = sub_18190287C(v121, v122, 3047709364);
            if (!v124)
            {
              return 7;
            }

            v121 = v124;
            *(a2 + 24) = v124;
          }

          v125 = v121 + v58;
          *v125 = 0;
          *(v125 + 8) = 0;
          *(v125 + 16) = 0;
          *(a2 + 72) = *(a2 + 24);
          *(a2 + 80) = v58;
          result = 100;
          *(a2 + 12) = v8;
          return result;
        }

        *(a2 + 80) = *(v41 + 104);
      }

      else
      {
        v112 = *(v41 + 104);
        *(a2 + 80) = v112;
        if (v42)
        {
          v113 = *(v41 + 96);
          if ((v112 + 20) <= *(a2 + 32))
          {
            v118 = *(a2 + 24);
          }

          else
          {
            v114 = 2 * v112 + 20;
            v115 = *(a2 + 24);
            v116 = sqlite3_initialize();
            v117 = 2 * v112 != -20 && v116 == 0;
            if (!v117 || (v118 = sub_18190287C(v115, v114, 0x100004077774924)) == 0)
            {
              *(a2 + 72) = *(a2 + 24);
              result = 7;
              goto LABEL_205;
            }

            *(a2 + 24) = v118;
            *(a2 + 32) = v114;
          }

          memcpy(v118, v113, v112);
          v123 = *(a2 + 24) + v112;
          *(v123 + 16) = 0;
          *v123 = 0;
          *(v123 + 8) = 0;
          v119 = *(a2 + 24);
LABEL_204:
          *(a2 + 72) = v119;
          result = 100;
LABEL_205:
          *(a2 + 12) = 1;
          return result;
        }
      }

      v119 = *(v41 + 96);
      goto LABEL_204;
    }

    break;
  }

  result = 0;
  v38 = (v134 & 8) == 0;
  v39 = *(v127 + 8);
  if (v36 <= v39)
  {
    v38 = 0;
  }

  if (v36 >= v39 && !v38)
  {
    if (!memcmp(v37, *v127, v39))
    {
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1819AFF20(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 112) == 0) != (*(a2 + 112) == 0))
  {
    return (*(a1 + 112) == 0) - (*(a2 + 112) == 0);
  }

  v3 = *(a1 + 128);
  v4 = *(a2 + 128);
  if (v3 == v4)
  {
    return (*a2 - *a1);
  }

  if (v3 < v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1819AFF78(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 112) == 0) != (*(a2 + 112) == 0))
  {
    return (*(a1 + 112) == 0) - (*(a2 + 112) == 0);
  }

  v3 = *(a1 + 128);
  v4 = *(a2 + 128);
  if (v3 == v4)
  {
    return (*a2 - *a1);
  }

  if (v3 > v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1819AFFD0(uint64_t a1, uint64_t a2, char **a3, _DWORD *a4)
{
  v7 = *(a2 + 112);
  v34 = v7;
  if (*(a1 + 463) && *(a2 + 64))
  {
    LOBYTE(v33) = 0;
    if (a3)
    {
      *a3 = v7;
      *a4 = *(a2 + 120) - 1;
    }

    sub_1819B0240(0, *(a2 + 96), *(a2 + 104), &v34, (a2 + 128), (a2 + 120), &v33);
    result = 0;
    if (v33)
    {
      v9 = 0;
    }

    else
    {
      v9 = v34;
    }

    *(a2 + 112) = v9;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 104);
    v31 = *(a2 + 96);
    while (1)
    {
      v12 = *v7;
      if (v12 | v10)
      {
        do
        {
          v10 = v12 & 0x80;
          v13 = *++v7;
          LOBYTE(v12) = v13;
        }

        while (v13 | v10);
      }

      v14 = *(a2 + 56);
      if (!v14)
      {
        break;
      }

      v15 = *(a2 + 52);
      v16 = (*(a2 + 40) + v15);
      if (v7 < v16)
      {
        break;
      }

      v17 = *(a2 + 48) - v15;
      if (v17 >= 4096)
      {
        v18 = 4096;
      }

      else
      {
        v18 = v17;
      }

      result = sub_181910DE0(v14, v16, v18, v15, sub_181910FE4);
      if (result)
      {
        return result;
      }

      v19 = *(a2 + 52) + v18;
      *(a2 + 52) = v19;
      v20 = *(a2 + 40) + v19;
      *v20 = 0;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      if (*(a2 + 52) == *(a2 + 48))
      {
        v21 = *(a2 + 56);
        if (v21)
        {
          v22 = v21[3];
          v23 = v21[4];
          v24 = v23[3];
          if (v24)
          {
            xmmword_1ED452F18(v24);
          }

          sub_181929C84(v23, v21);
          v25 = v23[3];
          if (v25)
          {
            xmmword_1ED452F28(v25);
          }

          sqlite3_finalize(v22);
        }

        *(a2 + 56) = 0;
        *(a2 + 52) = 0;
      }
    }

    v26 = v7 + 1;
    v34 = v7 + 1;
    if (a3)
    {
      v27 = *(a2 + 112);
      *a3 = v27;
      *a4 = ~v27 + v26;
    }

    if (v26 >= v31 + v11)
    {
LABEL_32:
      result = 0;
      *(a2 + 112) = 0;
    }

    else
    {
      v28 = v31 + v11 - v26;
      while (!*v26)
      {
        ++v26;
        if (!--v28)
        {
          goto LABEL_32;
        }
      }

      v34 = v26;
      result = sub_1819AF2D0(a2, v26, 10);
      if (!result)
      {
        v33 = 0;
        v29 = sub_1819AE95C(v26, &v33);
        result = 0;
        *(a2 + 112) = &v26[v29];
        if (*(a1 + 463))
        {
          v30 = -v33;
        }

        else
        {
          v30 = v33;
        }

        *(a2 + 128) += v30;
      }
    }
  }

  return result;
}

uint64_t sub_1819B0240(uint64_t result, char *a2, int a3, char **a4, void *a5, int *a6, _BYTE *a7)
{
  v10 = a2;
  v11 = result;
  v12 = *a4;
  if (*a4)
  {
    for (i = v12 - 2; i >= a2; --i)
    {
      if ((*i & 0x80000000) == 0)
      {
        break;
      }
    }

    v34 = 0;
    v15 = (i + 1);
    result = sub_1819AE95C(i + 1, &v34);
    v16 = v34;
    if (!v11)
    {
      v16 = -v34;
    }

    *a5 += v16;
    if (v15 == v10)
    {
      *a7 = 1;
      v17 = i + 1;
    }

    else
    {
      v17 = i - 1;
      while (v17 > v10)
      {
        v19 = *v17--;
        v18 = v19;
        if (v19)
        {
          if (v17 <= v10)
          {
            goto LABEL_12;
          }

          while (1)
          {
            v31 = v18;
            v18 = *v17;
            if (!(v18 & 0x80 | v31))
            {
              goto LABEL_31;
            }

            if (--v17 <= v10)
            {
              v17 = v10;
              if (v18)
              {
                goto LABEL_32;
              }

              goto LABEL_30;
            }
          }
        }
      }

      v18 = 0;
LABEL_12:
      if (v18)
      {
        goto LABEL_32;
      }

LABEL_30:
      if (v15 > (v17 + 2))
      {
LABEL_31:
        v17 += 2;
      }

LABEL_32:
      v32 = i - v17 + 1;
      do
      {
        v33 = *v17++;
        --v32;
      }

      while (v33 < 0);
      *a6 = v32;
    }

    *a4 = v17;
  }

  else
  {
    v20 = &a2[a3];
    if (a3 < 1)
    {
      v24 = 0;
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      if (result)
      {
        v23 = -1;
      }

      else
      {
        v23 = 1;
      }

LABEL_18:
      v34 = 0;
      result = sub_1819AE95C(v10, &v34);
      v24 = &v10[result];
      v25 = *v24;
      v26 = v24;
      if (*v24)
      {
        v26 = &v10[result];
        do
        {
          v27 = v25 & 0xFFFFFF80;
          v28 = *++v26;
          v25 = v28;
        }

        while (v27 | v28);
      }

      v21 += v34 * v22;
      v29 = (v26 + 1);
      while (v29 < v20)
      {
        if (*v29++)
        {
          v10 = (v29 - 1);
          v22 = v23;
          goto LABEL_18;
        }
      }
    }

    *a6 = v20 - v24;
    *a4 = v24;
    *a5 = v21;
  }

  return result;
}

uint64_t sub_1819B041C(int a1, uint64_t a2, uint64_t *a3)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v7 = sub_181902484(136, 0x10600409F10166ALL);
  if (!v7)
  {
    return 7;
  }

  *(v7 + 128) = 0;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  if (a1 <= 1)
  {
    *(v7 + 9) = -1;
    *(v7 + 17) = -1;
    *(v7 + 25) = -1;
    *(v7 + 33) = -1;
    *(v7 + 41) = -1;
    *(v7 + 49) = 0xFFFFFFFFFFFFFFLL;
    *(v7 + 57) = 0;
    *(v7 + 65) = -256;
    *(v7 + 73) = 0u;
    *(v7 + 89) = 0;
    *(v7 + 97) = -65536;
    *(v7 + 105) = 0u;
    *(v7 + 121) = vdup_n_s32(0);
    *(v7 + 129) = -65536;
    *(v7 + 133) = -1;
    *(v7 + 135) = -1;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = strlen(*(a2 + 8));
  v7 = v8;
  if (v9 < 1)
  {
LABEL_11:
    *a3 = v7;
    return 0;
  }

  v10 = 0;
  v11 = v9 & 0x7FFFFFFF;
  while (1)
  {
    v12 = *(*(a2 + 8) + v10);
    if (v12 < 0)
    {
      break;
    }

    *(v8 + 8 + v12) = 1;
    if (v11 == ++v10)
    {
      goto LABEL_11;
    }
  }

  v13 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
      v7 = v8;
    }

    v14 = v7;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v7 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      return 1;
    }

    v13 = &xmmword_1ED452F28;
  }

  (*v13)(v7);
  return 1;
}

uint64_t sub_1819B05E0(uint64_t a1)
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

uint64_t sub_1819B0698(uint64_t a1, const char *a2, int a3, uint64_t *a4)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484(48, 0x10700408E35660CLL);
  if (!v8)
  {
    return 7;
  }

  *(v8 + 8) = a2;
  if (a2)
  {
    if (a3 < 0)
    {
      v9 = v8;
      a3 = strlen(a2);
      v8 = v9;
    }
  }

  else
  {
    a3 = 0;
  }

  *(v8 + 20) = 0;
  *(v8 + 24) = 0;
  *(v8 + 16) = a3;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *a4 = v8;
  return 0;
}

uint64_t sub_1819B0734(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
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
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_13:
    (*v4)(v1);
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
    v4 = &xmmword_1ED452F28;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1819B0858(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  if (v7 >= v6)
  {
    return 101;
  }

  v8 = *(a1 + 8);
  v9 = *a1 + 8;
  v10 = v8 + 1;
  while (1)
  {
    v13 = v7;
    if ((*(v8 + v7) & 0x80000000) == 0)
    {
      v14 = *(v8 + v7);
      while (*(v9 + v14))
      {
        v11 = v7 + 1;
        *(a1 + 20) = v7 + 1;
        if (v6 - 1 == v7)
        {
          goto LABEL_5;
        }

        v15 = *(v10 + v13);
        v14 = *(v10 + v13++);
        ++v7;
        if (v15 < 0)
        {
          if (v11 >= v6)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }
    }

    v11 = v7;
    if (v7 < v6)
    {
LABEL_14:
      v16 = (v8 + v11);
      while (1)
      {
        v18 = *v16++;
        v17 = v18;
        if ((v18 & 0x8000000000000000) == 0)
        {
          if (*(v9 + v17))
          {
            break;
          }
        }

        *(a1 + 20) = ++v11;
        if (v6 == v11)
        {
          v11 = v6;
          break;
        }
      }
    }

LABEL_4:
    v12 = (v11 - v13);
    if (v11 > v13)
    {
      break;
    }

LABEL_5:
    v6 = *(a1 + 16);
    v7 = *(a1 + 20);
    if (v7 >= v6)
    {
      return 101;
    }
  }

  if (v12 > *(a1 + 40))
  {
    v32 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    *(a1 + 40) = v12 + 20;
    v24 = a1;
    v25 = *(a1 + 32);
    v26 = sqlite3_initialize();
    result = 7;
    if (v12 == -20 || v26)
    {
      return result;
    }

    v27 = sub_18190287C(v25, v12 + 20, 876239044);
    if (!v27)
    {
      return 7;
    }

    v28 = v27;
    a1 = v24;
    *(v24 + 32) = v28;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a2 = v32;
  }

  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      v30 = *(v8 + v13 + i);
      if ((v30 - 65) < 0x1A)
      {
        LOBYTE(v30) = v30 + 32;
      }

      *(*(a1 + 32) + i) = v30;
    }
  }

  *a2 = *(a1 + 32);
  *a3 = v12;
  *a4 = v13;
  *a5 = *(a1 + 20);
  v31 = *(a1 + 24);
  *(a1 + 24) = v31 + 1;
  result = 0;
  *a6 = v31;
  return result;
}

uint64_t sub_1819B0A50(uint64_t a1, uint64_t a2, void *a3)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v5 = sub_181902484(8, 0x6004044C4A2DFLL);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  result = 0;
  *v6 = 0;
  *a3 = v6;
  return result;
}

uint64_t sub_1819B0AAC(uint64_t a1)
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

uint64_t sub_1819B0B64(uint64_t a1, const char *a2, int a3, uint64_t *a4)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484(48, 0x10700408E35660CLL);
  if (!v8)
  {
    return 7;
  }

  *(v8 + 8) = a2;
  if (a2)
  {
    if (a3 < 0)
    {
      v9 = v8;
      a3 = strlen(a2);
      v8 = v9;
    }
  }

  else
  {
    a3 = 0;
  }

  *(v8 + 20) = 0;
  *(v8 + 24) = 0;
  *(v8 + 16) = a3;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *a4 = v8;
  return 0;
}

uint64_t sub_1819B0C00(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
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
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_13:
    (*v4)(v1);
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
    v4 = &xmmword_1ED452F28;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1819B0D24(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v406 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  if (v7 >= v6)
  {
    return 101;
  }

  v8 = *(a1 + 8);
  v9 = v8 + 1;
  while (1)
  {
    v10 = v7;
    v11 = *(v8 + v7);
    if ((v11 & 0x80) == 0)
    {
      v12 = *(v8 + v7);
      while (v12 < 48 || !byte_181A25664[v11 - 48])
      {
        v13 = (v7 + 1);
        *(a1 + 20) = v13;
        if (v6 - 1 == v7)
        {
          return 101;
        }

        v11 = *(v9 + v10);
        v12 = *(v9 + v10++);
        v7 = (v7 + 1);
        if ((v11 & 0x80) != 0)
        {
          if (v13 >= v6)
          {
            goto LABEL_17;
          }

          goto LABEL_12;
        }
      }
    }

    v13 = v7;
    if (v7 < v6)
    {
LABEL_12:
      v14 = (v8 + v13);
      while (1)
      {
        v16 = *v14++;
        v15 = v16;
        if ((v16 & 0x80) == 0)
        {
          v17 = __OFSUB__(v15, 48);
          v18 = v15 - 48;
          if (v18 < 0 != v17 || !byte_181A25664[v18])
          {
            break;
          }
        }

        v13 = (v13 + 1);
        *(a1 + 20) = v13;
        if (v6 == v13)
        {
          v7 = v6;
          if (v6 > v10)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }
      }
    }

LABEL_17:
    v7 = v13;
    if (v13 > v10)
    {
      break;
    }

LABEL_20:
    if (v7 >= v6)
    {
      return 101;
    }
  }

LABEL_23:
  v20 = v7 - v10;
  v21 = *(a1 + 32);
  if (v20 <= *(a1 + 40))
  {
    goto LABEL_28;
  }

  v397 = a2;
  v399 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a1;
  *(a1 + 40) = v20 + 20;
  v26 = sqlite3_initialize();
  result = 7;
  if (v20 != -20 && !v26)
  {
    v27 = sub_18190287C(v21, v20 + 20, 158644916);
    if (!v27)
    {
      return 7;
    }

    v21 = v27;
    a1 = v25;
    *(v25 + 32) = v21;
    a6 = v24;
    a5 = v23;
    a4 = v22;
    a2 = v397;
    a3 = v399;
LABEL_28:
    v28 = (v8 + v10);
    if ((v20 - 21) < 0xFFFFFFEE)
    {
      if (v20 < 1)
      {
        LODWORD(v38) = 0;
        v37 = 10;
      }

      else
      {
        v29 = 0;
        v30 = v20;
        v31 = v21;
        do
        {
          v33 = *v28++;
          v32 = v33;
          v34 = v33 - 65;
          v35 = v33 | 0x20;
          if ((v33 - 48) < 0xA)
          {
            v36 = 1;
          }

          else
          {
            v36 = v29;
          }

          if (v34 >= 0x1A)
          {
            v29 = v36;
          }

          else
          {
            v32 = v35;
          }

          *v31++ = v32;
          --v30;
        }

        while (v30);
        if (v29)
        {
          v37 = 3;
        }

        else
        {
          v37 = 10;
        }

        LODWORD(v38) = v20;
      }

      if (v20 <= (2 * v37))
      {
        goto LABEL_114;
      }

      v63 = (v20 - v37);
      v64 = v37;
      v65 = v20 - v37;
      if ((v65 + 1) > v20)
      {
        v66 = v65 + 1;
      }

      else
      {
        v66 = v20;
      }

      v67 = v66 + v64 - v20;
      if (v67 >= 0x20)
      {
        if (2 * v64 - v20 >= 0x20)
        {
          v38 = v67 & 0xFFFFFFFFFFFFFFE0 | v64;
          v63 += v67 & 0xFFFFFFFFFFFFFFE0;
          v91 = (v21 - v64 + v20 + 16);
          v92 = (v64 + v21 + 16);
          v93 = v67 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v94 = *v91;
            *(v92 - 1) = *(v91 - 1);
            *v92 = v94;
            v91 += 2;
            v92 += 2;
            v93 -= 32;
          }

          while (v93);
          if (v67 == (v67 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_114;
          }
        }

        else
        {
          v38 = v64;
        }
      }

      else
      {
        v38 = v64;
      }

      do
      {
        *(v21 + v38++) = *(v21 + v63++);
      }

      while (v63 < v20);
LABEL_114:
      *(v21 + v38) = 0;
      *a3 = v38;
LABEL_479:
      *a2 = *(a1 + 32);
      *a4 = v10;
      *a5 = *(a1 + 20);
      v382 = *(a1 + 24);
      *(a1 + 24) = v382 + 1;
      result = 0;
      *a6 = v382;
      return result;
    }

    v39 = v405;
    v40 = 0x1700000000;
    v41 = (v8 + v10);
    v42 = v20;
    do
    {
      v44 = *v41++;
      v43 = v44;
      if ((v44 - 65) <= 0x19)
      {
        LOBYTE(v43) = v43 | 0x20;
      }

      else if ((v43 - 97) >= 0x1A)
      {
        v45 = 0;
        v46 = v21;
        v47 = v20;
        do
        {
          v49 = *v28++;
          v48 = v49;
          v50 = v49 - 65;
          v51 = v49 | 0x20;
          if ((v49 - 48) < 0xA)
          {
            v52 = 1;
          }

          else
          {
            v52 = v45;
          }

          if (v50 >= 0x1A)
          {
            v45 = v52;
          }

          else
          {
            v48 = v51;
          }

          *v46++ = v48;
          --v47;
        }

        while (v47);
        if (v45)
        {
          v53 = 3;
        }

        else
        {
          v53 = 10;
        }

        if (v20 <= 2 * v53)
        {
          LODWORD(v38) = v20;
          goto LABEL_114;
        }

        v54 = v20 - v53;
        if (v20 - v53 + 1 > v20)
        {
          v55 = v20 - v53 + 1;
        }

        else
        {
          v55 = v20;
        }

        v56 = v55 + v53 - v20;
        if (v56 < 0x20)
        {
          v57 = v53;
          goto LABEL_112;
        }

        if (2 * v53 - v20 < 0x20)
        {
          v57 = v53;
          goto LABEL_112;
        }

        v57 = v56 & 0xFFFFFFFFFFFFFFE0 | v53;
        v54 += v56 & 0xFFFFFFFFFFFFFFE0;
        v95 = (v21 - v53 + v20 + 16);
        v96 = (v53 + v21 + 16);
        v97 = v56 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v98 = *v95;
          *(v96 - 1) = *(v95 - 1);
          *v96 = v98;
          v95 += 2;
          v96 += 2;
          v97 -= 32;
        }

        while (v97);
        if (v56 != (v56 & 0xFFFFFFFFFFFFFFE0))
        {
          do
          {
LABEL_112:
            *(v21 + v57++) = *(v21 + v54++);
          }

          while (v54 < v20);
        }

        LODWORD(v38) = v57;
        goto LABEL_114;
      }

      *v39-- = v43;
      v40 -= 0x100000000;
      --v42;
    }

    while (v42);
    v398 = v21;
    v405[5] = 0;
    *&v405[1] = 0;
    v58 = &v404[1] + (v40 >> 32) + 4;
    v404[0] = v58;
    v59 = *v58;
    if (v59 == 115)
    {
      v59 = v58[1];
      if (v59 == 115)
      {
        *v58 = 29555;
        v61 = &v404[1] + (v40 >> 32) + 4;
        goto LABEL_153;
      }

      if (v59 == 101)
      {
        v61 = v58 + 2;
        v60 = v58[2];
        if (v60 == 105)
        {
LABEL_128:
          v404[0] = v61;
          goto LABEL_153;
        }

        if (v60 == 115 && v58[3] == 115)
        {
          v62 = 115;
LABEL_127:
          *v61 = v62;
          goto LABEL_128;
        }
      }

      v404[0] = ++v58;
    }

    v68 = (v58 + 3);
    if (v59 == 100)
    {
      if (v58[1] != 101)
      {
        goto LABEL_144;
      }

      v78 = v58 + 2;
      v77 = v58[2];
      if (v77 == 101)
      {
        v79 = *v68;
        if (*v68)
        {
          v80 = (v58 + 4);
          while (1)
          {
            v81 = v79 - 97;
            if (v81 == 24)
            {
              v82 = a1;
              v83 = a6;
              v84 = a5;
              v85 = a4;
              v86 = a2;
              v87 = a3;
              v88 = sub_1819B2F60(v80);
              a3 = v87;
              a2 = v86;
              a4 = v85;
              a5 = v84;
              a6 = v83;
              v89 = v88;
              a1 = v82;
            }

            else
            {
              v89 = 1 - byte_181A256B4[v81];
            }

            if (!v89)
            {
              break;
            }

            v90 = *v80++;
            v79 = v90;
            if (!v90)
            {
              goto LABEL_144;
            }
          }

          v401 = a3;
          v108 = a2;
          v109 = a4;
          v110 = a1;
          v111 = a5;
          v112 = a6;
          v113 = v80 - 1;
            ;
          }

          a6 = v112;
          a5 = v111;
          a1 = v110;
          a4 = v109;
          a2 = v108;
          a3 = v401;
          if (*(v113 - 1))
          {
            v62 = 101;
            *v78 = 101;
            v61 = v58 + 1;
            goto LABEL_127;
          }
        }

        goto LABEL_144;
      }

      v400 = a3;
      v99 = a2;
      v100 = a4;
      v101 = a1;
      v102 = a5;
      v103 = a6;
      v104 = (v58 + 2);
        ;
      }

      a6 = v103;
      a5 = v102;
      a1 = v101;
      a4 = v100;
      a2 = v99;
      a3 = v400;
      if (!*(v104 - 1))
      {
LABEL_144:
        v77 = *v58;
        v78 = v58;
LABEL_145:
        if (v77 == 121)
        {
          v120 = a3;
          v121 = a2;
          v122 = a4;
          v123 = a1;
          v124 = a5;
          v125 = a6;
          v126 = (v78 + 1);
            ;
          }

          if (*(v126 - 1))
          {
            *v78 = 105;
            v61 = v404[0];
            a6 = v125;
            a5 = v124;
            a1 = v123;
            a4 = v122;
            a2 = v121;
          }

          else
          {
            a6 = v125;
            a5 = v124;
            a1 = v123;
            a4 = v122;
            a2 = v121;
            v61 = v78;
          }

          a3 = v120;
        }

        else
        {
          v61 = v78;
        }

LABEL_153:
        v129 = v61 + 1;
        v128 = v61[1];
        if (v128 <= 0x6B)
        {
          if (v61[1] <= 0x64u)
          {
            if (v128 != 97)
            {
              if (v128 != 99)
              {
                goto LABEL_327;
              }

              v130 = *v61;
              if (v130 != 105)
              {
                goto LABEL_328;
              }

              if (v61[2] != 110)
              {
                goto LABEL_327;
              }

              v131 = v61[3];
              if (v131 != 97)
              {
                if (v131 == 101)
                {
                  v132 = v61;
                  v133 = a3;
                  v134 = a2;
                  v135 = a4;
                  v136 = a1;
                  v137 = a5;
                  v138 = a6;
                  if (sub_1819B2CC0(v61 + 4))
                  {
                    v61 = v132;
                    *v132 = 1701733221;
                    v404[0] = v132;
                    a6 = v138;
                    a5 = v137;
                    a1 = v136;
                    a4 = v135;
                    a2 = v134;
                    a3 = v133;
                    goto LABEL_327;
                  }

                  a6 = v138;
                  a5 = v137;
                  a1 = v136;
                  a4 = v135;
                  a2 = v134;
LABEL_312:
                  a3 = v133;
                  v61 = v132;
                  goto LABEL_327;
                }

                goto LABEL_327;
              }

              v239 = v61;
              v141 = a3;
              v240 = a2;
              v241 = a4;
              v242 = a1;
              v243 = a5;
              v244 = a6;
              if (sub_1819B2CC0(v61 + 4))
              {
                v61 = v239;
                *v239 = 1634624357;
                v404[0] = v239;
                a6 = v244;
                a5 = v243;
                a1 = v242;
                a4 = v241;
                a2 = v240;
                goto LABEL_275;
              }

              a6 = v244;
              a5 = v243;
              a1 = v242;
              a4 = v241;
              a2 = v240;
LABEL_304:
              a3 = v141;
              v61 = v239;
              goto LABEL_327;
            }

            v130 = *v61;
            if (v130 != 108)
            {
              goto LABEL_328;
            }

            v168 = v61 + 2;
            if (v61[2] != 110)
            {
              goto LABEL_327;
            }

            if (v61[3] != 111)
            {
              goto LABEL_327;
            }

            v169 = v61 + 4;
            if (v61[4] != 105)
            {
              goto LABEL_327;
            }

            v170 = a3;
            v171 = a2;
            v394 = a4;
            v172 = a1;
            v173 = a5;
            v174 = a6;
            v146 = v61;
            if (v61[5] == 116)
            {
              if (v61[6] != 97)
              {
                v266 = sub_1819B2CC0(v61 + 6);
                a6 = v174;
                a5 = v173;
                a1 = v172;
                a4 = v394;
                a2 = v171;
                a3 = v170;
                v61 = v146;
                if (v266)
                {
                  *v168 = 1953066862;
                  v404[0] = v168;
                  v61 = v168;
                }

                goto LABEL_327;
              }

              if (sub_1819B2CC0(v61 + 7))
              {
                v146[6] = 97;
                *(v146 + 2) = 29797;
                v404[0] = v169;
                a6 = v174;
                a5 = v173;
                a1 = v172;
                v61 = v169;
                a4 = v394;
LABEL_289:
                a2 = v171;
                a3 = v170;
                goto LABEL_327;
              }
            }

            a6 = v174;
            a5 = v173;
            a1 = v172;
            a4 = v394;
            a2 = v171;
            a3 = v170;
LABEL_326:
            v61 = v146;
            goto LABEL_327;
          }

          if (v128 == 101)
          {
            v130 = *v61;
            if (v130 != 114)
            {
              goto LABEL_328;
            }

            if (v61[2] != 122)
            {
              goto LABEL_327;
            }

            if (v61[3] != 105)
            {
              goto LABEL_327;
            }

            v191 = v61[4];
            if (!v191)
            {
              goto LABEL_327;
            }

            v393 = v61;
            v192 = (v61 + 5);
            while (1)
            {
              v193 = v191 - 97;
              if (v193 == 24)
              {
                v194 = a1;
                v195 = a6;
                v196 = a5;
                v197 = a4;
                v198 = a2;
                v199 = a3;
                v200 = sub_1819B2F60(v192);
                a3 = v199;
                a2 = v198;
                a4 = v197;
                a5 = v196;
                a6 = v195;
                v201 = v200;
                a1 = v194;
              }

              else
              {
                v201 = 1 - byte_181A256B4[v193];
              }

              if (!v201)
              {
                break;
              }

              v202 = *v192++;
              v191 = v202;
              if (!v202)
              {
LABEL_224:
                v61 = v393;
                goto LABEL_327;
              }
            }

            v170 = a3;
            v171 = a2;
            v255 = a4;
            v256 = a1;
            v257 = a5;
            v258 = a6;
            v259 = v192 - 1;
              ;
            }

            if (*(v259 - 1))
            {
              v261 = v393;
              v393[3] = 105;
              v262 = 31333;
LABEL_288:
              *(v261 + 1) = v262;
              v404[0] = v129;
              a6 = v258;
              a5 = v257;
              a1 = v256;
              a4 = v255;
              v61 = v129;
              goto LABEL_289;
            }
          }

          else
          {
            if (v128 != 103)
            {
              goto LABEL_327;
            }

            v130 = *v61;
            if (v130 != 105)
            {
              goto LABEL_328;
            }

            if (v61[2] != 111)
            {
              goto LABEL_327;
            }

            if (v61[3] != 108)
            {
              goto LABEL_327;
            }

            v147 = v61[4];
            if (!v147)
            {
              goto LABEL_327;
            }

            v393 = v61;
            v148 = (v61 + 5);
            while (1)
            {
              v149 = v147 - 97;
              if (v149 == 24)
              {
                v150 = a1;
                v151 = a6;
                v152 = a5;
                v153 = a4;
                v154 = a2;
                v155 = a3;
                v156 = sub_1819B2F60(v148);
                a3 = v155;
                a2 = v154;
                a4 = v153;
                a5 = v152;
                a6 = v151;
                v157 = v156;
                a1 = v150;
              }

              else
              {
                v157 = 1 - byte_181A256B4[v149];
              }

              if (!v157)
              {
                break;
              }

              v158 = *v148++;
              v147 = v158;
              if (!v158)
              {
                goto LABEL_224;
              }
            }

            v170 = a3;
            v171 = a2;
            v255 = a4;
            v256 = a1;
            v257 = a5;
            v258 = a6;
            v263 = v148 - 1;
              ;
            }

            if (*(v263 - 1))
            {
              v261 = v393;
              v393[3] = 108;
              v262 = 28519;
              goto LABEL_288;
            }
          }

          a6 = v258;
          a5 = v257;
          a1 = v256;
          a4 = v255;
          a2 = v171;
          a3 = v170;
          v61 = v393;
          goto LABEL_327;
        }

        if (v61[1] <= 0x72u)
        {
          if (v128 != 108)
          {
            if (v128 != 111)
            {
              goto LABEL_327;
            }

            v130 = *v61;
            if (v130 != 110)
            {
              if (v130 != 114)
              {
                goto LABEL_328;
              }

              if (v61[2] == 116 && v61[3] == 97)
              {
                v133 = a3;
                v218 = a2;
                v219 = a4;
                v220 = a1;
                v221 = a5;
                v222 = a6;
                v132 = v61;
                if (sub_1819B2CC0(v61 + 4))
                {
                  v132[3] = 97;
                  *(v132 + 1) = 29797;
                  v404[0] = v129;
                  a6 = v222;
                  a5 = v221;
                  a1 = v220;
                  v61 = v129;
                  a4 = v219;
                  a2 = v218;
                  a3 = v133;
                  goto LABEL_327;
                }

                a6 = v222;
                a5 = v221;
                a1 = v220;
                a4 = v219;
                a2 = v218;
                goto LABEL_312;
              }

LABEL_327:
              v130 = *v61;
LABEL_328:
              if (v130 > 107)
              {
                if (v130 == 108)
                {
                  v303 = (v61 + 4);
                  v304 = v61[1];
                  if (v304 == 97)
                  {
                    v267 = v61 + 2;
                    if (v61[2] != 99)
                    {
                      goto LABEL_415;
                    }

                    if (v61[3] != 105)
                    {
                      goto LABEL_415;
                    }

                    v305 = *v303;
                    if (!*v303)
                    {
                      goto LABEL_415;
                    }

                    v396 = v61;
                    v306 = (v61 + 5);
                    while (1)
                    {
                      v307 = v305 - 97;
                      if (v307 == 24)
                      {
                        v308 = a1;
                        v309 = a6;
                        v310 = a5;
                        v311 = a4;
                        v312 = a2;
                        v313 = a3;
                        v314 = sub_1819B2F60(v306);
                        a3 = v313;
                        a2 = v312;
                        a4 = v311;
                        a5 = v310;
                        a6 = v309;
                        v315 = v314;
                        a1 = v308;
                      }

                      else
                      {
                        v315 = 1 - byte_181A256B4[v307];
                      }

                      if (!v315)
                      {
                        break;
                      }

                      v316 = *v306++;
                      v305 = v316;
                      if (!v316)
                      {
                        goto LABEL_414;
                      }
                    }

                    v345 = a3;
                    v346 = a2;
                    v347 = a4;
                    v348 = a1;
                    v349 = a5;
                    v350 = a6;
                    v351 = v306 - 1;
                      ;
                    }

                    if (*(v351 - 1))
                    {
                      *(v396 + 1) = 26979;
LABEL_412:
                      v404[0] = v267;
                      a6 = v350;
                      a5 = v349;
                      a1 = v348;
                      a4 = v347;
                      a2 = v346;
                      v61 = v267;
                      a3 = v345;
                      goto LABEL_415;
                    }

                    goto LABEL_413;
                  }

                  if (v304 != 117)
                  {
                    goto LABEL_415;
                  }

                  if (v61[2] != 102)
                  {
                    goto LABEL_415;
                  }

                  v403 = v61 + 3;
                  v317 = v61[3];
                  if (!v317)
                  {
                    goto LABEL_415;
                  }

                  v396 = v61;
                  while (1)
                  {
                    v318 = v317 - 97;
                    if (v318 == 24)
                    {
                      v319 = a1;
                      v320 = a6;
                      v321 = a5;
                      v322 = a4;
                      v323 = a2;
                      v324 = a3;
                      v325 = sub_1819B2F60(v303);
                      a3 = v324;
                      a2 = v323;
                      a4 = v322;
                      a5 = v321;
                      a6 = v320;
                      v326 = v325;
                      a1 = v319;
                    }

                    else
                    {
                      v326 = 1 - byte_181A256B4[v318];
                    }

                    if (!v326)
                    {
                      break;
                    }

                    v327 = *v303++;
                    v317 = v327;
                    if (!v327)
                    {
                      goto LABEL_414;
                    }
                  }

                  v337 = a3;
                  v338 = a2;
                  v339 = a4;
                  v340 = a1;
                  v341 = a5;
                  v342 = a6;
                  v343 = v303 - 1;
                    ;
                  }
                }

                else
                {
                  if (v130 != 115)
                  {
                    goto LABEL_415;
                  }

                  if (v61[1] != 115)
                  {
                    goto LABEL_415;
                  }

                  if (v61[2] != 101)
                  {
                    goto LABEL_415;
                  }

                  if (v61[3] != 110)
                  {
                    goto LABEL_415;
                  }

                  v403 = v61 + 4;
                  v280 = v61[4];
                  if (!v280)
                  {
                    goto LABEL_415;
                  }

                  v396 = v61;
                  v281 = (v61 + 5);
                  while (1)
                  {
                    v282 = v280 - 97;
                    if (v282 == 24)
                    {
                      v283 = a1;
                      v284 = a6;
                      v285 = a5;
                      v286 = a4;
                      v287 = a2;
                      v288 = a3;
                      v289 = sub_1819B2F60(v281);
                      a3 = v288;
                      a2 = v287;
                      a4 = v286;
                      a5 = v285;
                      a6 = v284;
                      v290 = v289;
                      a1 = v283;
                    }

                    else
                    {
                      v290 = 1 - byte_181A256B4[v282];
                    }

                    if (!v290)
                    {
                      break;
                    }

                    v291 = *v281++;
                    v280 = v291;
                    if (!v291)
                    {
                      goto LABEL_414;
                    }
                  }

                  v337 = a3;
                  v338 = a2;
                  v339 = a4;
                  v340 = a1;
                  v341 = a5;
                  v342 = a6;
                  v343 = v281 - 1;
                    ;
                  }
                }

                a6 = v342;
                a5 = v341;
                a1 = v340;
                a4 = v339;
                a2 = v338;
                a3 = v337;
                v61 = v396;
                if (*(v343 - 1))
                {
                  v61 = v403;
                  v404[0] = v403;
                }

                goto LABEL_415;
              }

              if (v130 != 101)
              {
                if (v130 != 105)
                {
                  goto LABEL_415;
                }

                if (v61[1] != 116)
                {
                  goto LABEL_415;
                }

                if (v61[2] != 105)
                {
                  goto LABEL_415;
                }

                v267 = v61 + 3;
                if (v61[3] != 99)
                {
                  goto LABEL_415;
                }

                if (v61[4] != 105)
                {
                  goto LABEL_415;
                }

                v268 = v61[5];
                if (!v268)
                {
                  goto LABEL_415;
                }

                v396 = v61;
                v269 = (v61 + 6);
                while (1)
                {
                  v270 = v268 - 97;
                  if (v270 == 24)
                  {
                    v271 = a1;
                    v272 = a6;
                    v273 = a5;
                    v274 = a4;
                    v275 = a2;
                    v276 = a3;
                    v277 = sub_1819B2F60(v269);
                    a3 = v276;
                    a2 = v275;
                    a4 = v274;
                    a5 = v273;
                    a6 = v272;
                    v278 = v277;
                    a1 = v271;
                  }

                  else
                  {
                    v278 = 1 - byte_181A256B4[v270];
                  }

                  if (!v278)
                  {
                    break;
                  }

                  v279 = *v269++;
                  v268 = v279;
                  if (!v279)
                  {
                    goto LABEL_414;
                  }
                }

                v345 = a3;
                v346 = a2;
                v347 = a4;
                v348 = a1;
                v349 = a5;
                v350 = a6;
                v354 = v269 - 1;
                  ;
                }

                if (*(v354 - 1))
                {
                  *(v396 + 3) = 26979;
                  goto LABEL_412;
                }

LABEL_413:
                a6 = v350;
                a5 = v349;
                a1 = v348;
                a4 = v347;
                a2 = v346;
                a3 = v345;
LABEL_414:
                v61 = v396;
LABEL_415:
                v356 = v61[1];
                if (v356 <= 0x6E)
                {
                  if (v61[1] <= 0x68u)
                  {
                    if (v356 != 97)
                    {
                      if (v356 != 99)
                      {
                        if (v356 != 101 || *v61 != 114)
                        {
                          goto LABEL_469;
                        }

                        goto LABEL_452;
                      }

                      if (*v61 != 101 || v61[2] != 110 || (v61[3] | 4) != 0x65)
                      {
LABEL_469:
                        v368 = a3;
                        v369 = a2;
                        v370 = a4;
                        v371 = a1;
                        v372 = a5;
                        v373 = a6;
                        v374 = v404[0];
                        if (*v404[0] == 101)
                        {
                          v375 = v404[0] + 1;
                          if (sub_1819B2E64(v404[0] + 1) || sub_1819B2D64(v374 + 1) && (!sub_1819B2F60(v374 + 1) || *v375 - 119 < 3 || !v374[2] || (v374[2] != 121 ? (v383 = 1 - byte_181A256B4[v374[2] - 97]) : (v383 = sub_1819B2F60(v374 + 3)), !v383 || !sub_1819B2F60(v374 + 3))))
                          {
                            v404[0] = ++v374;
                          }
                        }

                        if (sub_1819B2E64(v374) && *v374 == 108 && v374[1] == 108)
                        {
                          v404[0] = ++v374;
                        }

                        v376 = strlen(v374);
                        *v368 = v376;
                        v377 = v376;
                        *(v398 + v376) = 0;
                        v378 = *v374;
                        a6 = v373;
                        a5 = v372;
                        a1 = v371;
                        a4 = v370;
                        a2 = v369;
                        if (*v374)
                        {
                          v379 = (v377 + v398 - 1);
                          v380 = (v374 + 1);
                          do
                          {
                            *v379-- = v378;
                            v381 = *v380++;
                            v378 = v381;
                          }

                          while (v381);
                        }

                        goto LABEL_479;
                      }

                      goto LABEL_466;
                    }

                    if (*v61 != 108)
                    {
                      goto LABEL_469;
                    }

LABEL_452:
                    v357 = v61 + 2;
                    goto LABEL_467;
                  }

                  if (v356 == 105)
                  {
                    if (*v61 != 99)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_452;
                  }

                  if (v356 == 108)
                  {
                    if (*v61 != 101 || v61[2] != 98 || (v61[3] | 8) != 0x69)
                    {
                      goto LABEL_469;
                    }

LABEL_466:
                    v357 = v61 + 4;
                    goto LABEL_467;
                  }

                  if (v356 != 110 || *v61 != 116)
                  {
                    goto LABEL_469;
                  }

                  v359 = v61[2];
                  if (v359 != 101)
                  {
                    if (v359 != 97)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_462;
                  }

                  v384 = a3;
                  v385 = a2;
                  v386 = a4;
                  v387 = a1;
                  v388 = a5;
                  v389 = a6;
                  v357 = v404[0] + 5;
                  if (*v404[0] == 116)
                  {
                    if (v404[0][1] == 110 && v404[0][2] == 101 && v404[0][3] == 109 && v404[0][4] == 101)
                    {
LABEL_495:
                      v390 = sub_1819B2E64(v357);
                      a6 = v389;
                      a5 = v388;
                      a1 = v387;
                      a4 = v386;
                      a2 = v385;
                      a3 = v384;
                      if (!v390)
                      {
                        goto LABEL_469;
                      }

LABEL_468:
                      v404[0] = v357;
                      goto LABEL_469;
                    }

                    if (v404[0][1] == 110 && v404[0][2] == 101 && v404[0][3] == 109)
                    {
                      v357 = v404[0] + 4;
                      goto LABEL_495;
                    }
                  }

                  sub_1819B2C40(v404, "tne", &byte_181A2878D, sub_1819B2E64);
                  a6 = v389;
                  a5 = v388;
                  a1 = v387;
                  a4 = v386;
                  a2 = v385;
                  a3 = v384;
                  goto LABEL_469;
                }

                if (v61[1] > 0x74u)
                {
                  if (v356 == 117)
                  {
                    if (*v61 != 115 || v61[2] != 111)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_462;
                  }

                  if (v356 != 118 && v356 != 122 || *v61 != 101)
                  {
                    goto LABEL_469;
                  }
                }

                else
                {
                  if (v356 == 111)
                  {
                    if (*v61 == 117)
                    {
                      goto LABEL_452;
                    }

                    if (v61[3] - 115 > 1)
                    {
                      goto LABEL_469;
                    }

                    v358 = v404[0];
                    v357 = v404[0] + 3;
                    if (*v404[0] != 110 || v404[0][1] != 111)
                    {
                      goto LABEL_469;
                    }

LABEL_449:
                    if (v358[2] != 105)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_467;
                  }

                  if (v356 != 115)
                  {
                    if (v356 != 116)
                    {
                      goto LABEL_469;
                    }

                    v357 = v61 + 3;
                    if (*v61 == 101 && v61[2] == 97)
                    {
LABEL_467:
                      v360 = a1;
                      v361 = a6;
                      v362 = a5;
                      v363 = a4;
                      v364 = a2;
                      v365 = a3;
                      v366 = sub_1819B2E64(v357);
                      a3 = v365;
                      a2 = v364;
                      a4 = v363;
                      a5 = v362;
                      a6 = v361;
                      v367 = v366;
                      a1 = v360;
                      if (!v367)
                      {
                        goto LABEL_469;
                      }

                      goto LABEL_468;
                    }

                    v358 = v404[0];
                    v357 = v404[0] + 3;
                    if (*v404[0] != 105 || v404[0][1] != 116)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_449;
                  }

                  if (*v61 != 109)
                  {
                    goto LABEL_469;
                  }
                }

                if (v61[2] != 105)
                {
                  goto LABEL_469;
                }

LABEL_462:
                v357 = v61 + 3;
                goto LABEL_467;
              }

              v292 = v61 + 5;
              v293 = v61[1];
              switch(v293)
              {
                case 't':
                  if (v61[2] != 97)
                  {
                    goto LABEL_415;
                  }

                  v294 = v61 + 3;
                  if (v61[3] != 99 || v61[4] != 105)
                  {
                    goto LABEL_415;
                  }

                  v295 = v61;
                  v296 = a3;
                  v297 = a2;
                  v298 = a4;
                  v299 = a1;
                  v300 = a5;
                  v301 = a6;
                  if (sub_1819B2CC0(v61 + 5))
                  {
                    v302 = 26979;
                    goto LABEL_395;
                  }

                  break;
                case 'v':
                  if (v61[2] == 105 && v61[3] == 116 && v61[4] == 97)
                  {
                    v328 = a1;
                    v329 = a6;
                    v330 = a5;
                    v331 = a4;
                    v332 = a2;
                    v333 = v61;
                    v334 = a3;
                    v335 = sub_1819B2CC0(v61 + 5);
                    a3 = v334;
                    v61 = v333;
                    a2 = v332;
                    a4 = v331;
                    a5 = v330;
                    a6 = v329;
                    v336 = v335;
                    a1 = v328;
                    if (v336)
                    {
                      v404[0] = v292;
                      v61 = v292;
                    }
                  }

                  goto LABEL_415;
                case 'z':
                  if (v61[2] != 105)
                  {
                    goto LABEL_415;
                  }

                  v294 = v61 + 3;
                  if (v61[3] != 108 || v61[4] != 97)
                  {
                    goto LABEL_415;
                  }

                  v295 = v61;
                  v296 = a3;
                  v297 = a2;
                  v298 = a4;
                  v299 = a1;
                  v300 = a5;
                  v301 = a6;
                  if (sub_1819B2CC0(v61 + 5))
                  {
                    v302 = 24940;
LABEL_395:
                    *(v295 + 3) = v302;
                    v404[0] = v294;
                    a6 = v301;
                    a5 = v300;
                    a1 = v299;
                    a4 = v298;
                    a2 = v297;
                    v61 = v294;
                    a3 = v296;
                    goto LABEL_415;
                  }

                  break;
                default:
                  goto LABEL_415;
              }

              a6 = v301;
              a5 = v300;
              a1 = v299;
              a4 = v298;
              a2 = v297;
              a3 = v296;
              v61 = v295;
              goto LABEL_415;
            }

            v139 = v61 + 2;
            if (v61[2] != 105)
            {
              goto LABEL_327;
            }

            if (v61[3] != 116)
            {
              goto LABEL_327;
            }

            v140 = v61 + 4;
            if (v61[4] != 97)
            {
              goto LABEL_327;
            }

            v141 = a3;
            v142 = a2;
            v392 = a4;
            v143 = a1;
            v144 = a5;
            v145 = a6;
            v146 = v61;
            if (v61[5] == 122 && v61[6] == 105)
            {
              if (sub_1819B2CC0(v61 + 7))
              {
                v146[6] = 105;
                *(v146 + 2) = 31333;
                v404[0] = v140;
                a6 = v145;
                a5 = v144;
                a1 = v143;
                a4 = v392;
                a2 = v142;
                v61 = v140;
LABEL_275:
                a3 = v141;
                goto LABEL_327;
              }

              goto LABEL_313;
            }

            if (!sub_1819B2CC0(v61 + 5))
            {
LABEL_313:
              a6 = v145;
              a5 = v144;
              a1 = v143;
              a4 = v392;
LABEL_325:
              a2 = v142;
              a3 = v141;
              goto LABEL_326;
            }

            v146[4] = 97;
            *(v146 + 1) = 29797;
            v404[0] = v139;
            a6 = v145;
            a5 = v144;
            a1 = v143;
            a4 = v392;
LABEL_274:
            a2 = v142;
            v61 = v139;
            goto LABEL_275;
          }

          v175 = (v61 + 3);
          if (*v61 != 105)
          {
            goto LABEL_327;
          }

          v177 = v61 + 2;
          v176 = v61[2];
          if (v176 == 98)
          {
            v178 = *v175;
            if (!*v175)
            {
              goto LABEL_327;
            }

            v179 = (v61 + 4);
            while (1)
            {
              v180 = v178 - 97;
              if (v180 == 24)
              {
                v181 = a1;
                v182 = v61;
                v183 = a6;
                v184 = a5;
                v185 = a4;
                v186 = a2;
                v187 = a3;
                v188 = sub_1819B2F60(v179);
                a3 = v187;
                a2 = v186;
                a4 = v185;
                a5 = v184;
                a6 = v183;
                v61 = v182;
                v189 = v188;
                a1 = v181;
              }

              else
              {
                v189 = 1 - byte_181A256B4[v180];
              }

              if (!v189)
              {
                break;
              }

              v190 = *v179++;
              v178 = v190;
              if (!v190)
              {
                goto LABEL_327;
              }
            }

            v239 = v61;
            v141 = a3;
            v247 = a2;
            v248 = a4;
            v249 = a1;
            v250 = a5;
            v251 = a6;
            v252 = v179 - 1;
              ;
            }

            if (*(v252 - 1))
            {
              v61 = v239;
              v239[2] = 98;
              *v239 = 27749;
              v404[0] = v239;
              a6 = v251;
              a5 = v250;
              a1 = v249;
              a4 = v248;
              a2 = v247;
              goto LABEL_275;
            }

            a6 = v251;
            a5 = v250;
            a1 = v249;
            a4 = v248;
            a2 = v247;
            goto LABEL_304;
          }

          if (v176 == 108)
          {
            if (*v175 != 97)
            {
              goto LABEL_327;
            }

            v223 = a1;
            v224 = a6;
            v225 = a5;
            v226 = v61;
            v227 = a4;
            v228 = a2;
            v229 = a3;
            v230 = sub_1819B2CC0(v61 + 4);
            a3 = v229;
            a2 = v228;
            a4 = v227;
            v61 = v226;
            a5 = v225;
            a6 = v224;
            v231 = v230;
            a1 = v223;
            if (!v231)
            {
              goto LABEL_327;
            }

            *v175 = 97;
            v232 = 108;
            goto LABEL_301;
          }

          v146 = v61;
          v233 = a3;
          v234 = a2;
          v395 = a4;
          v235 = a1;
          v236 = a5;
          v237 = a6;
          if (v176 == 101)
          {
            v265 = sub_1819B2CC0(v61 + 3);
            a6 = v237;
            a5 = v236;
            a1 = v235;
            a4 = v395;
            a2 = v234;
            a3 = v233;
            v61 = v146;
            if (!v265)
            {
              goto LABEL_327;
            }

            v232 = 101;
LABEL_301:
            *v177 = v232;
            v404[0] = v177;
            v61 = v177;
            goto LABEL_327;
          }

          if (v176 == 115)
          {
            if (*v175 == 117 && v61[4] == 111 && sub_1819B2CC0(v61 + 5))
            {
              v146[4] = 111;
              *v175 = 117;
              v238 = 115;
              goto LABEL_296;
            }
          }

          else if (v176 == 116 && *v175 == 110 && v61[4] == 101 && sub_1819B2CC0(v61 + 5))
          {
            v146[4] = 101;
            *v175 = 110;
            v238 = 116;
LABEL_296:
            *v177 = v238;
            v404[0] = v177;
            a6 = v237;
            a5 = v236;
            a1 = v235;
            a4 = v395;
            a2 = v234;
            a3 = v233;
            v61 = v177;
            goto LABEL_327;
          }

          a6 = v237;
          a5 = v236;
          a1 = v235;
          a4 = v395;
          a2 = v234;
          a3 = v233;
          goto LABEL_326;
        }

        if (v128 == 115)
        {
          v203 = v61 + 5;
          v204 = *v61;
          if (v204 == 109)
          {
            if (v61[2] == 105)
            {
              v205 = v61 + 3;
              if (v61[3] == 108 && v61[4] == 97)
              {
                v206 = v61;
                v207 = a3;
                v208 = a2;
                v209 = a4;
                v210 = a1;
                v211 = a5;
                v212 = a6;
                if (sub_1819B2CC0(v61 + 5))
                {
                  *(v206 + 3) = 24940;
                  v404[0] = v205;
                  a6 = v212;
                  a5 = v211;
                  a1 = v210;
                  v61 = v205;
                  a4 = v209;
                  a2 = v208;
                  a3 = v207;
                }

                else
                {
                  a6 = v212;
                  a5 = v211;
                  a1 = v210;
                  a4 = v209;
                  a2 = v208;
                  a3 = v207;
                  v61 = v206;
                }
              }
            }

            goto LABEL_327;
          }

          if (v204 != 115 || v61[2] != 101 || v61[3] != 110)
          {
            goto LABEL_327;
          }

          v141 = a3;
          v142 = a2;
          v213 = a4;
          v214 = a1;
          v215 = a5;
          v216 = a6;
          v146 = v61;
          v139 = v61 + 4;
          v217 = v61[4];
          if (v217 == 101)
          {
            if (*v203 == 118 && v61[6] == 105 && sub_1819B2CC0(v61 + 7))
            {
              v146[6] = 105;
              *(v146 + 2) = 30309;
              goto LABEL_263;
            }
          }

          else if (v217 == 108)
          {
            if (*v203 == 117 && v61[6] == 102 && sub_1819B2CC0(v61 + 7))
            {
              v146[6] = 102;
              *(v146 + 2) = 30060;
              goto LABEL_263;
            }
          }

          else if (v217 == 115 && *v203 == 117 && v61[6] == 111 && sub_1819B2CC0(v61 + 7))
          {
            v146[6] = 111;
            *(v146 + 2) = 30067;
LABEL_263:
            v404[0] = v139;
            a6 = v216;
            a5 = v215;
            a1 = v214;
            a4 = v213;
            goto LABEL_274;
          }
        }

        else
        {
          if (v128 != 116)
          {
            goto LABEL_327;
          }

          v130 = *v61;
          if (v130 != 105)
          {
            goto LABEL_328;
          }

          v159 = v61 + 2;
          if (v61[2] != 105)
          {
            goto LABEL_327;
          }

          v139 = v61 + 3;
          v160 = v61[3];
          if (v160 != 108)
          {
            if (v160 == 118)
            {
              v161 = a3;
              v162 = a2;
              v163 = a4;
              v164 = a1;
              v165 = a5;
              v166 = a6;
              v167 = v61;
              if (v61[4] == 105 && sub_1819B2CC0(v61 + 5))
              {
                v167[4] = 105;
                *(v167 + 1) = 30309;
                v404[0] = v159;
                a6 = v166;
                a5 = v165;
                a1 = v164;
                a4 = v163;
                a2 = v162;
                a3 = v161;
                v61 = v159;
              }

              else
              {
                a6 = v166;
                a5 = v165;
                a1 = v164;
                a4 = v163;
                a2 = v162;
                a3 = v161;
                v61 = v167;
              }
            }

            goto LABEL_327;
          }

          v141 = a3;
          v142 = a2;
          v213 = a4;
          v214 = a1;
          v215 = a5;
          v216 = a6;
          v146 = v61;
          v245 = v61[4];
          if (v245 == 97)
          {
            if (sub_1819B2CC0(v61 + 5))
            {
              v246 = 24940;
LABEL_262:
              *(v146 + 3) = v246;
              goto LABEL_263;
            }
          }

          else if (v245 == 105 && v61[5] == 98 && sub_1819B2CC0(v61 + 6))
          {
            v146[5] = 98;
            v246 = 27749;
            goto LABEL_262;
          }
        }

        a6 = v216;
        a5 = v215;
        a1 = v214;
        a4 = v213;
        goto LABEL_325;
      }
    }

    else
    {
      if (v59 != 103)
      {
        goto LABEL_144;
      }

      if (v58[1] != 110)
      {
        goto LABEL_144;
      }

      if (v58[2] != 105)
      {
        goto LABEL_144;
      }

      v69 = a3;
      v70 = a2;
      v71 = a4;
      v72 = a1;
      v73 = a5;
      v74 = a6;
      v75 = (v58 + 3);
        ;
      }

      a6 = v74;
      a5 = v73;
      a1 = v72;
      a4 = v71;
      a2 = v70;
      a3 = v69;
      if (!*(v75 - 1))
      {
        goto LABEL_144;
      }

      v77 = *v68;
      v78 = v58 + 3;
    }

    v404[0] = v78;
    v106 = v77 - 108;
    if (v77 == 108)
    {
      if (v78[1] == 98)
      {
        v107 = 27749;
        goto LABEL_133;
      }
    }

    else if (v77 == 122)
    {
      if (v78[1] == 105)
      {
        v107 = 31333;
        goto LABEL_133;
      }
    }

    else if (v77 == 116 && v78[1] == 97)
    {
      v107 = 29797;
LABEL_133:
      *(v78 - 1) = v107;
      v404[0] = v78 - 1;
      v58 = v78 - 1;
      goto LABEL_144;
    }

    v402 = a3;
    v115 = a2;
    v391 = a4;
    v116 = a1;
    v117 = a5;
    v118 = a6;
    if (sub_1819B2F60(v78))
    {
      v58 = v78 + 1;
      v119 = v78[1];
      if (v77 == v119 && (v106 > 0xE || ((1 << v106) & 0x4081) == 0))
      {
        v404[0] = v78 + 1;
        goto LABEL_143;
      }

      if (sub_1819B2D64(v78))
      {
        if ((v77 - 119) < 3)
        {
          a6 = v118;
          a5 = v117;
          a1 = v116;
          a4 = v391;
          a2 = v115;
          a3 = v402;
          goto LABEL_145;
        }

        if (v119)
        {
          v254 = v119 == 121 ? sub_1819B2F60(v78 + 2) : 1 - byte_181A256B4[v119 - 97];
          if (v254 && sub_1819B2F60(v78 + 2))
          {
            v404[0] = v78 - 1;
            *(v78 - 1) = 101;
            v58 = v404[0];
            goto LABEL_143;
          }
        }
      }
    }

    else
    {
      sub_1819B2D64(v78);
    }

    v58 = v78;
LABEL_143:
    a6 = v118;
    a5 = v117;
    a1 = v116;
    a4 = v391;
    a2 = v115;
    a3 = v402;
    goto LABEL_144;
  }

  return result;
}

unsigned __int8 **sub_1819B2C40(unsigned __int8 **result, _BYTE *a2, unsigned __int8 *a3, uint64_t (*a4)(unsigned __int8 *))
{
  v5 = result;
  v6 = *result;
  v7 = *a2;
  if (*a2)
  {
    v8 = a2 + 1;
    while (v7 == *v6)
    {
      ++v6;
      v9 = *v8++;
      v7 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (!a4 || (result = a4(v6), result))
    {
      v10 = *a3;
      if (*a3)
      {
        v11 = a3 + 1;
        do
        {
          *--v6 = v10;
          v12 = *v11++;
          v10 = v12;
        }

        while (v12);
      }

      *v5 = v6;
    }
  }

  return result;
}

BOOL sub_1819B2CC0(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (1)
  {
    v3 = v1 - 97;
    if (v3 != 24)
    {
      break;
    }

    if (!sub_1819B2F60(v2))
    {
      goto LABEL_10;
    }

LABEL_7:
    v4 = *v2++;
    v1 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (1 != byte_181A256B4[v3])
  {
    goto LABEL_7;
  }

LABEL_10:
  v6 = v2 - 1;
    ;
  }

  return *(v6 - 1) != 0;
}

BOOL sub_1819B2D64(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (1)
  {
    v4 = v1 - 97;
    if (v4 != 24)
    {
      if (1 == byte_181A256B4[v4])
      {
        break;
      }

      goto LABEL_4;
    }

    if (!sub_1819B2F60(v2))
    {
      break;
    }

LABEL_4:
    v3 = *v2++;
    v1 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  v5 = v2 - 1;
    ;
  }

  v7 = *(v5 - 1);
  if (!v7)
  {
    return 0;
  }

  while (2)
  {
    v9 = v7 - 97;
    if (v9 != 24)
    {
      if (1 == byte_181A256B4[v9])
      {
        break;
      }

      goto LABEL_12;
    }

    if (sub_1819B2F60(v5))
    {
LABEL_12:
      v8 = *v5++;
      v7 = v8;
      if (!v8)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  v10 = v5 - 1;
    ;
  }

  return *(v10 - 1) == 0;
}

BOOL sub_1819B2E64(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (1)
  {
    v3 = v1 - 97;
    if (v3 == 24)
    {
      if (!sub_1819B2F60(v2))
      {
        break;
      }

      goto LABEL_7;
    }

    if (1 == byte_181A256B4[v3])
    {
      break;
    }

LABEL_7:
    v4 = *v2++;
    v1 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = v2 - 1;
    ;
  }

  v8 = *(v6 - 1);
  if (!v8)
  {
    return 0;
  }

  while (2)
  {
    v9 = v8 - 97;
    if (v9 == 24)
    {
      if (!sub_1819B2F60(v6))
      {
        break;
      }

      goto LABEL_17;
    }

    if (1 != byte_181A256B4[v9])
    {
LABEL_17:
      v10 = *v6++;
      v8 = v10;
      if (!v10)
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v11 = v6 - 1;
    ;
  }

  return *(v11 - 1) != 0;
}

uint64_t sub_1819B2F60(char *a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 != 121)
  {
    return byte_181A256B4[*a1 - 97];
  }

  if (!a1[1])
  {
    return 1;
  }

  if (a1[1] == 121)
  {
    v1 = sub_1819B2F60(a1 + 2);
  }

  else
  {
    v1 = 1 - byte_181A256B4[a1[1] - 97];
  }

  return v1 != 0;
}

void sub_1819B2FE8(uint64_t a1, int a2, sqlite3_value **a3)
{
  *v37 = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v6 = *(*(a1 + 8) + 8);
  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *(v7 + 20);
  if ((~v8 & 0x202) != 0 || *(v7 + 22) != 1)
  {
    if (v8)
    {
      v9 = 0;
      v10 = *(v7 + 20);
      if ((v10 & 2) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v9 = sub_18193CB70(v7, 1);
    v7 = *a3;
    if (*a3)
    {
      v10 = *(v7 + 20);
      if ((v10 & 2) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

LABEL_13:
    sub_1819012D0(93690);
    goto LABEL_14;
  }

  v9 = *(v7 + 8);
  v10 = *(v7 + 20);
  if ((v10 & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (*(v7 + 22) == 1)
  {
    v11 = *(v7 + 16);
    if (a2 != 2)
    {
      goto LABEL_15;
    }

LABEL_50:
    if (a1)
    {
      v23 = *(*a1 + 24);
    }

    else
    {
      v23 = 0;
    }

    *v38 = 0;
    sqlite3_db_config(v23, 1004, 0xFFFFFFFFLL, v38, *v37);
    v24 = a3[1];
    if (*v38)
    {
      if (!v24)
      {
        sub_1819012D0(93690);
LABEL_85:
        if (!a1)
        {
          return;
        }

        *(a1 + 36) = 1;
        v34 = *a1;
        v35 = "argument type mismatch";
        goto LABEL_90;
      }

LABEL_58:
      v25 = *(v24 + 20);
      if ((v25 & 2) != 0 && *(v24 + 22) == 1)
      {
        v26 = *(v24 + 16);
      }

      else if ((v25 & 0x10) != 0)
      {
        v26 = *(v24 + 16);
        if ((*(v24 + 20) & 0x400) != 0)
        {
          v26 += *v24;
        }
      }

      else
      {
        if (v25)
        {
          goto LABEL_85;
        }

        v26 = sub_18193CB44(v24, 1);
      }

      if (!v9 || v26 != 8)
      {
        goto LABEL_85;
      }

      v27 = *sqlite3_value_blob(a3[1]);
      *v37 = v27;
      if (!v27 || (v38[0] = 0, mincore(v27, 8uLL, v38)) || (v28 = v27[1]) != 0 && (v38[0] = 0, mincore(v28, 8uLL, v38)) || (v29 = v27[2]) != 0 && (v38[0] = 0, mincore(v29, 8uLL, v38)) || (v30 = v27[3]) != 0 && (v38[0] = 0, mincore(v30, 8uLL, v38)) || (v31 = v27[4]) != 0 && (v38[0] = 0, mincore(v31, 8uLL, v38)) || (v32 = v27[5]) != 0 && (v38[0] = 0, mincore(v32, 8uLL, v38)) || (v33 = v27[6]) != 0 && (v38[0] = 0, mincore(v33, 8uLL, v38)))
      {
        __break(1u);
        return;
      }

      if (sub_1818942AC(v6, v9, (v11 + 1), v27) == *v37)
      {
        if (!a1)
        {
LABEL_94:
          v36 = 0;
LABEL_95:
          *v38 = 0;
          sqlite3_db_config(v36, 1004, 0xFFFFFFFFLL, v38, *v37);
          if (*v38)
          {
            if (!a1)
            {
              return;
            }
          }

          else
          {
            if (!*a3)
            {
              sub_1819012D0(99923);
              return;
            }

            if (!a1 || (*(*a3 + 10) & 0x40) == 0)
            {
              return;
            }
          }

          sub_18190B23C(a1, v37, 8, 0, 0xFFFFFFFFFFFFFFFFLL);
          return;
        }

        *(a1 + 36) = 1;
        sub_1818900D0(*a1, "out of memory", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
LABEL_83:
        if (!a1)
        {
          goto LABEL_94;
        }
      }

      v36 = *(*a1 + 24);
      goto LABEL_95;
    }

    if (v24)
    {
      if ((*(v24 + 20) & 0x40) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_1819012D0(99923);
    }

    if (!a1)
    {
      return;
    }

    *(a1 + 36) = 1;
    v34 = *a1;
    v35 = "fts3_tokenizer requires bound parameters";
LABEL_90:
    sub_1818900D0(v34, v35, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    return;
  }

LABEL_43:
  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v11 = sub_18193CB44(v7, 1);
      if (a2 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_14:
    v11 = 0;
    if (a2 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

  v11 = *(v7 + 16);
  if ((v10 & 0x400) != 0)
  {
    v11 += *v7;
  }

  if (a2 == 2)
  {
    goto LABEL_50;
  }

LABEL_15:
  if (v9 && v6 && *(v6 + 24))
  {
    v12 = sub_1819AE48C;
    if (*v6 == 1)
    {
      v12 = sub_181894AF0;
    }

    v13 = v12(v9, v11 + 1);
    v14 = *(v6 + 24);
    if (v14)
    {
      v15 = (v14 + 16 * ((*(v6 + 16) - 1) & v13));
      v18 = *v15;
      v16 = v15 + 2;
      v17 = v18;
      if (*v6 == 1)
      {
        v19 = sub_181894B58;
      }

      else
      {
        v19 = sub_1819AE4C4;
      }

      while (v17)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        --v17;
        if (!(v19)(*(v16 + 3), v16[8], v9, (v11 + 1)))
        {
          *v37 = *(v16 + 2);
          if (*v37)
          {
            goto LABEL_83;
          }

          break;
        }
      }
    }
  }

  v20 = sqlite3_mprintf("unknown tokenizer: %s", v9);
  if (a1)
  {
    *(a1 + 36) = 1;
    sub_1818900D0(*a1, v20, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v20)
  {
    v21 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_36:
      v22 = *v21;

      v22(v20);
      return;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v21 = &xmmword_1ED452F28;
      goto LABEL_36;
    }
  }
}

uint64_t sub_1819B3598(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 104))
  {
    return 1;
  }

  a2[10] = 0;
  *(a2 + 8) = 0x415312D000000000;
  v3 = *a2;
  if (v3 < 1)
  {
    goto LABEL_47;
  }

  v4 = 0;
  v5 = 0;
  v6 = (*(a2 + 1) + 4);
  v7 = -1;
  v8 = -1;
  v9 = -1;
  v10 = -1;
  do
  {
    if (!v6[1])
    {
      if (*v6 == 64)
      {
        result = 0;
        a2[10] = 0;
        *(a2 + 8) = 0x4A511B0EC57E649ALL;
        *(a2 + 9) = 0x4000000000000;
        return result;
      }

      goto LABEL_6;
    }

    v11 = *(v6 - 1);
    if (v11 < 0)
    {
      v12 = 1;
      v13 = *v6;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = v11 == *(a1 + 48) + 1;
      v13 = *v6;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v13 == 2 && v12)
    {
      v4 = 1;
      a2[10] = 1;
      *(a2 + 8) = 0x3FF0000000000000;
      v10 = v5;
LABEL_23:
      if (v11 == *(a1 + 48) + 2)
      {
        v9 = v5;
      }

      v13 = 2;
      goto LABEL_26;
    }

LABEL_17:
    if (v13 == 2)
    {
      goto LABEL_23;
    }

    if (v13 == 64)
    {
      if (v11 < 0 || v11 > *(a1 + 48))
      {
        v13 = 64;
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v4 = v11 + 2;
        a2[10] = v11 + 2;
        *(a2 + 8) = 0x4000000000000000;
        v13 = 64;
        v10 = v5;
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_27:
    HIDWORD(v16) = v13 - 4;
    LODWORD(v16) = v13 - 4;
    v15 = v16 >> 2;
    if (v15 > 2)
    {
      if (v15 != 3)
      {
        if (v15 != 7)
        {
          goto LABEL_6;
        }

LABEL_33:
        v8 = v5;
        goto LABEL_6;
      }

LABEL_34:
      v7 = v5;
      goto LABEL_6;
    }

    if (!v15)
    {
      goto LABEL_33;
    }

    if (v15 == 1)
    {
      goto LABEL_34;
    }

LABEL_6:
    ++v5;
    v6 += 12;
  }

  while (v3 != v5);
  if (v4 == 1)
  {
    a2[20] |= 1u;
    v4 = 1;
  }

  v17 = 1;
  if ((v10 & 0x80000000) == 0)
  {
    v18 = *(a2 + 4) + 8 * v10;
    *v18 = 1;
    *(v18 + 4) = 1;
    v17 = 2;
  }

  if ((v9 & 0x80000000) == 0)
  {
    v4 |= 0x10000u;
    a2[10] = v4;
    *(*(a2 + 4) + 8 * v9) = v17++;
  }

  if ((v8 & 0x80000000) == 0)
  {
    v4 |= 0x20000u;
    a2[10] = v4;
    *(*(a2 + 4) + 8 * v8) = v17++;
  }

  if ((v7 & 0x80000000) == 0)
  {
    a2[10] = v4 | 0x40000;
    *(*(a2 + 4) + 8 * v7) = v17;
  }

LABEL_47:
  if (a2[4] != 1)
  {
    return 0;
  }

  v19 = *(a2 + 3);
  if ((*v19 & 0x80000000) == 0 && *v19 != *(a1 + 48) + 1)
  {
    return 0;
  }

  result = 0;
  if (*(v19 + 4))
  {
    v20 = "DESC";
  }

  else
  {
    v20 = "ASC";
  }

  *(a2 + 6) = v20;
  a2[15] = 1;
  return result;
}

uint64_t sub_1819B380C(uint64_t a1)
{
  v1 = a1;
  sqlite3_finalize(*(a1 + 432));
  for (i = 112; i != 432; i += 8)
  {
    sqlite3_finalize(*(v1 + i));
  }

  v3 = *(v1 + 472);
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v4)(v3);
      goto LABEL_10;
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
      goto LABEL_9;
    }
  }

LABEL_10:
  v5 = *(v1 + 440);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_16;
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
LABEL_16:
    (*v6)(v5);
  }

LABEL_17:
  v7 = *(v1 + 448);
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_23;
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
LABEL_23:
    (*v8)(v7);
  }

LABEL_24:
  v9 = *(v1 + 80);
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_30;
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
LABEL_30:
    (*v10)(v9);
  }

LABEL_31:
  v11 = *(v1 + 88);
  if (!v11)
  {
    goto LABEL_38;
  }

  v12 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
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
LABEL_37:
    (*v12)(v11);
  }

LABEL_38:
  (*(**(v1 + 72) + 16))(*(v1 + 72));
  v13 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_43:
    (*v13)(v1);
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
    v13 = &xmmword_1ED452F28;
    goto LABEL_43;
  }

  return 0;
}

uint64_t sub_1819B3B20(uint64_t a1)
{
  v5 = 0;
  if (*(a1 + 80))
  {
    v2 = "--";
  }

  else
  {
    v2 = &byte_181A2878D;
  }

  sub_1819B9DBC(&v5, *(a1 + 24), "DROP TABLE IF EXISTS %Q.'%q_segments';DROP TABLE IF EXISTS %Q.'%q_segdir';DROP TABLE IF EXISTS %Q.'%q_docsize';DROP TABLE IF EXISTS %Q.'%q_stat';%s DROP TABLE IF EXISTS %Q.'%q_content';", *(a1 + 32), *(a1 + 40), *(a1 + 32), *(a1 + 40), *(a1 + 32), *(a1 + 40), *(a1 + 32), *(a1 + 40), v2, *(a1 + 32), *(a1 + 40));
  v3 = v5;
  if (!v5)
  {
    sub_1819B380C(a1);
  }

  return v3;
}

double sub_1819B3BAC(uint64_t a1, void *a2)
{
  if (sqlite3_initialize())
  {
    *a2 = 0;
  }

  else
  {
    v4 = sub_181902484(128, 0x10300403004619ALL);
    *a2 = v4;
    if (v4)
    {
      result = 0.0;
      v4[6] = 0u;
      v4[7] = 0u;
      v4[4] = 0u;
      v4[5] = 0u;
      v4[2] = 0u;
      v4[3] = 0u;
      *v4 = 0u;
      v4[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_1819B3C1C(uint64_t *a1)
{
  v1 = a1;
  v2.n128_f64[0] = sub_1819B9EC4(a1);
  if (v1)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v1, v2);
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
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_1819B3CD0(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, sqlite3_value **a5)
{
  v5 = *a1;
  if (*(*a1 + 104))
  {
    return 1;
  }

  v8 = a2;
  v10 = a2;
  if (a2)
  {
    v11 = *a5;
    v12 = 1;
    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if ((a2 & 0x10000) == 0)
    {
LABEL_6:
      v13 = 0;
      if ((a2 & 0x20000) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v14 = 0;
      v74 = v11;
      if ((a2 & 0x40000) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v13 = a5[v12++];
  if ((a2 & 0x20000) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = a5[v12++];
  v74 = v11;
  if ((a2 & 0x40000) != 0)
  {
LABEL_8:
    v15 = a5[v12];
    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:
  v16 = sub_1819B9EC4(a1);
  if (!v14)
  {
    goto LABEL_18;
  }

  v17 = *(v14 + 20);
  if ((0x4000000040004uLL >> v17))
  {
    sub_18190FC94(v14, 0);
    v17 = *(v14 + 20);
    if (((0x50505050uLL >> (v17 & 0x3F)) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (((0x50505050uLL >> (v17 & 0x3F)) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((v17 & 0x24) != 0)
  {
    v18 = *v14;
    goto LABEL_21;
  }

  if ((v17 & 8) != 0)
  {
    v16 = *v14;
    if (*v14 >= -9.22337204e18)
    {
      if (v16 <= 9.22337204e18)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_21;
    }

LABEL_18:
    v18 = 0x8000000000000000;
    goto LABEL_21;
  }

  if ((v17 & 0x12) != 0 && *(v14 + 8))
  {
    v18 = sub_18193CFCC(v14);
  }

  else
  {
    v18 = 0;
  }

LABEL_21:
  *(a1 + 96) = v18;
  if (!v15)
  {
    goto LABEL_27;
  }

  v19 = *(v15 + 20);
  if (((0x4000000040004uLL >> v19) & 1) == 0)
  {
    if ((0x50505050uLL >> (v19 & 0x3F)))
    {
      goto LABEL_24;
    }

LABEL_27:
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = v74;
    goto LABEL_28;
  }

  sub_18190FC94(v15, 0);
  v19 = *(v15 + 20);
  if (((0x50505050uLL >> (v19 & 0x3F)) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v20 = v74;
  if ((v19 & 0x24) != 0)
  {
    v21 = *v15;
  }

  else if ((v19 & 8) != 0)
  {
    v16 = *v15;
    if (*v15 >= -9.22337204e18)
    {
      if (v16 <= 9.22337204e18)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v21 = 0x8000000000000000;
    }
  }

  else if ((v19 & 0x12) != 0 && *(v15 + 8))
  {
    v21 = sub_18193CFCC(v15);
  }

  else
  {
    v21 = 0;
  }

LABEL_28:
  *(a1 + 104) = v21;
  if (a3)
  {
    v22 = *a3 == 68;
  }

  else
  {
    v22 = *(v5 + 463);
  }

  *(a1 + 76) = v22;
  *(a1 + 8) = v8;
  v72 = v10 >= 2;
  v23 = v10 - 2;
  if (!v72)
  {
    goto LABEL_62;
  }

  if (!v20)
  {
    sub_1819012D0(99877);
    return 7;
  }

  v24 = *(v20 + 10);
  if ((~v24 & 0x202) != 0 || *(v20 + 22) != 1)
  {
    if (v24)
    {
LABEL_44:
      if (((0xAAAAAAAAAAAAAAAALL >> v24) & 1) == 0)
      {
        return 7;
      }

      v25 = 0;
      v26 = 1;
      *(a1 + 32) = 0;
      if (!v13)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    v25 = sub_18193CB70(v20, 1);
    if (!v25)
    {
LABEL_37:
      LOWORD(v24) = *(v20 + 10);
      goto LABEL_44;
    }
  }

  else
  {
    v25 = *(v20 + 1);
    if (!v25)
    {
      goto LABEL_37;
    }
  }

  v26 = 0;
  *(a1 + 32) = 0;
  if (!v13)
  {
LABEL_46:
    LODWORD(v28) = 0;
    goto LABEL_47;
  }

LABEL_41:
  v27 = *(v13 + 20);
  if ((v27 & 0x24) != 0)
  {
    v28 = *v13;
  }

  else if ((v27 & 8) != 0)
  {
    v60 = *v13;
    if (*v13 >= -9.22337204e18)
    {
      if (v60 <= 9.22337204e18)
      {
        *&v28 = v60;
      }

      else
      {
        LODWORD(v28) = -1;
      }
    }

    else
    {
      LODWORD(v28) = 0;
    }
  }

  else if ((v27 & 0x12) != 0 && *(v13 + 8))
  {
    LODWORD(v28) = sub_18193CFCC(v13);
  }

  else
  {
    LODWORD(v28) = 0;
  }

  *(a1 + 32) = LODWORD(v28);
LABEL_47:
  v29 = *(v5 + 72);
  v30 = *(v5 + 56);
  v31 = *(v5 + 460);
  v32 = *(v5 + 48);
  v79 = 0u;
  v75[0] = v29;
  v75[1] = LODWORD(v28);
  v75[2] = v30;
  v77 = v32;
  v78 = v23;
  v76 = v31;
  if (!v26)
  {
    v49 = strlen(v25);
    v50 = sub_1819BABF8(v75, v25, v49, (a1 + 24), &v80);
    v51 = *(a1 + 24);
    if (v50 || !DWORD2(v79))
    {
      if (v50)
      {
        goto LABEL_99;
      }

      if (!v51)
      {
        v33 = 0;
        goto LABEL_49;
      }

      v50 = sub_1819BA790((a1 + 24), 12);
      v51 = *(a1 + 24);
      if (v50)
      {
LABEL_99:
        v55 = v50;
      }

      else
      {
        v61 = *(a1 + 24);
        v62 = sub_1819BABA0(v51, 12);
        if (!v62)
        {
          v33 = v61;
          goto LABEL_49;
        }

        v55 = v62;
        v51 = v61;
      }

      sub_1819BA15C(v51);
      *(a1 + 24) = 0;
      if (v55 != 1)
      {
        result = v55;
        if (v55 != 18)
        {
          return result;
        }

        sub_1819AD2A4((v5 + 16), "FTS expression tree is too large (maximum depth %d)");
        return 1;
      }
    }

    else
    {
      sub_1819BA15C(v51);
      *(a1 + 24) = 0;
    }

    sub_1819AD2A4((v5 + 16), "malformed MATCH expression: [%s]");
    return 1;
  }

  v33 = 0;
  *(a1 + 24) = 0;
LABEL_49:
  v34 = *a1;
  v82 = 0;
  v81 = 0;
  sub_1819BBB94(a1, v33, &v82, &v81, &v82 + 1);
  if (!HIDWORD(v82))
  {
    v35 = v82;
    if (v82 >= 2)
    {
      if (*(v34 + 460))
      {
        v36 = v81;
        if (sqlite3_initialize() || (v63 = sub_181902484(16 * v36 + 40 * v35, 0x1020040812A9E52)) == 0)
        {
          HIDWORD(v82) = 7;
        }

        else
        {
          v64 = v63;
          v65 = &v63[5 * v35];
          v75[0] = v63;
          v80 = v65;
          sub_1819BBE24(a1, 0, *(a1 + 24), v75, &v80, &v82 + 1);
          if (!HIDWORD(v82))
          {
            v66 = -858993459 * ((v75[0] - v64) >> 3);
            v67 = v80;
            v68 = sub_1819BC0BC(a1, 0, v64, v66);
            if (!v68 && ((v67 - v65) >> 3) >= 1)
            {
              v69 = ((v67 - v65) >> 3) & 0x7FFFFFFF;
              v70 = 40 * v35;
              v71 = 1;
              do
              {
                v68 = sub_1819BC0BC(a1, *(v64 + v70), v64, v66);
                if (v68)
                {
                  v72 = 1;
                }

                else
                {
                  v72 = v71 >= v69;
                }

                ++v71;
                v70 += 8;
              }

              while (!v72);
            }

            HIDWORD(v82) = v68;
            v20 = v74;
          }

          v73 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v64);
            --qword_1ED456A90;
            off_1ED452EB0(v64);
            v64 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_54;
            }

            v73 = &xmmword_1ED452F28;
          }

          (*v73)(v64);
        }
      }
    }
  }

LABEL_54:
  sub_1819BC888(a1, *(a1 + 24), &v82 + 1);
  result = HIDWORD(v82);
  v37 = *(v5 + 480);
  if (v37)
  {
    v38 = HIDWORD(v82);
    v39 = v37[3];
    v40 = v37[4];
    v41 = v40[3];
    if (v41)
    {
      xmmword_1ED452F18(v41);
    }

    sub_181929C84(v40, v37);
    v42 = v40[3];
    if (v42)
    {
      xmmword_1ED452F28(v42);
    }

    sqlite3_finalize(v39);
    result = v38;
  }

  *(v5 + 480) = 0;
  if (result)
  {
    return result;
  }

  v43 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = v43;
LABEL_62:
  if (v8 == 1)
  {
    v47 = (a1 + 16);
    v46 = *(a1 + 16);
    if (!v46)
    {
      v48 = *a1;
      v46 = *(*a1 + 432);
      if (v46)
      {
        *v47 = v46;
        *(v48 + 432) = 0;
      }

      else
      {
        v56 = sqlite3_mprintf("SELECT %s WHERE rowid = ?", *(v48 + 440));
        if (!v56)
        {
          return 7;
        }

        v58 = v56;
        ++*(v48 + 104);
        v59 = sub_1818954B4(*(v48 + 24), v56, 0xFFFFFFFFLL, 129, 0, (a1 + 16), 0, v57);
        --*(v48 + 104);
        sqlite3_free(v58);
        result = v59;
        if (v59)
        {
          return result;
        }

        v46 = *v47;
      }

      *(a1 + 12) = 1;
    }

    result = sqlite3_bind_value(v46, 1, v20);
    if (result)
    {
      return result;
    }

    return sub_1819B45A8(a1);
  }

  if (v8)
  {
    return sub_1819B45A8(a1);
  }

  if (v14 | v15)
  {
    v44 = sqlite3_mprintf("SELECT %s WHERE rowid BETWEEN %lld AND %lld ORDER BY rowid %s", v16);
  }

  else
  {
    v44 = sqlite3_mprintf("SELECT %s ORDER BY rowid %s", v16);
  }

  v52 = v44;
  if (!v44)
  {
    return 7;
  }

  ++*(v5 + 104);
  v53 = sub_1818954B4(*(v5 + 24), v44, 0xFFFFFFFFLL, 129, 0, (a1 + 16), 0, v45);
  --*(v5 + 104);
  v54 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_91;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v52);
  --qword_1ED456A90;
  off_1ED452EB0(v52);
  v52 = xmmword_1ED456AF0;
  if (!xmmword_1ED456AF0)
  {
    result = v53;
    if (v53)
    {
      return result;
    }

    return sub_1819B45A8(a1);
  }

  v54 = &xmmword_1ED452F28;
LABEL_91:
  (*v54)(v52);
  result = v53;
  if (!v53)
  {
    return sub_1819B45A8(a1);
  }

  return result;
}

uint64_t sub_1819B45A8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    v2 = *a1;
    ++*(*a1 + 104);
    if (sqlite3_step(*(a1 + 16)) == 100)
    {
      v3 = sqlite3_column_int64(*(a1 + 16), 0);
      result = 0;
      *(a1 + 48) = v3;
    }

    else
    {
      *(a1 + 10) = 1;
      result = sqlite3_reset(*(a1 + 16));
    }

    --*(v2 + 104);
    return result;
  }

  v8 = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
    *(a1 + 10) = 1;
    goto LABEL_14;
  }

  do
  {
    if (!*(a1 + 11))
    {
      sqlite3_reset(*(a1 + 16));
    }

    sub_1819BEF44(a1, v5, &v8);
    v6 = *(v5 + 48);
    *(a1 + 10) = v6;
    *(a1 + 11) = 1;
    *(a1 + 112) = 1;
    *(a1 + 48) = *(v5 + 40);
  }

  while (!v6 && sub_1819BF964(a1, &v8));
  result = v8;
  if (!v8)
  {
LABEL_14:
    v7 = *(a1 + 48);
    if (*(a1 + 76))
    {
      if (v7 < *(a1 + 96))
      {
LABEL_16:
        result = 0;
        *(a1 + 10) = 1;
        return result;
      }
    }

    else if (v7 > *(a1 + 104))
    {
      goto LABEL_16;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1819B46E8(uint64_t a1)
{
  if (!*(a1 + 10))
  {
    return 0;
  }

  sub_1819B9EC4(a1);
  result = 1;
  *(a1 + 10) = 1;
  return result;
}

uint64_t sub_1819B4728(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a3 - *(*a1 + 48);
  if (v4 == 2)
  {
    if (!*(a1 + 24))
    {
      a3 = *(*a1 + 48);
      if (*(*a1 + 88))
      {
        goto LABEL_19;
      }

      if (!a2)
      {
        return 0;
      }

      v8 = *a2;
      if ((*(*a2 + 20) & 0x9000) != 0)
      {
        sub_18193D288(*a2, 0);
        return 0;
      }

      result = 0;
      *v8 = 0;
LABEL_17:
      *(v8 + 20) = 4;
      return result;
    }

    if (!a2)
    {
      return 0;
    }

    v7 = *(a1 + 32);
LABEL_14:
    v8 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(*a2, v7);
      return 0;
    }

    result = 0;
    *v8 = v7;
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (!a2)
    {
      return 0;
    }

    v7 = *(a1 + 48);
    goto LABEL_14;
  }

  if (v4)
  {
LABEL_19:
    v9 = a3;
    result = sub_1819C01F8(0, a1);
    if (result)
    {
      return result;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(*v11 + 24);
      if (v12)
      {
        xmmword_1ED452F18(v12);
      }

      if (*(v11 + 160))
      {
        v13 = *(v11 + 260);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(*v11 + 24);
      if (v14)
      {
        xmmword_1ED452F28(v14);
      }
    }

    else
    {
      v13 = 0;
    }

    if (v13 - 1 > v9)
    {
      v15 = sqlite3_column_value(*(a1 + 16), v9 + 1);
      sqlite3_result_value(a2, v15);
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *a2;
  if ((*(*a2 + 20) & 0x9000) != 0 || *(v5 + 32))
  {
    sub_18193CA00(*a2);
  }

  *(v5 + 20) = 1;
  sub_18193CA00(v5);
  result = 0;
  *v5 = "fts3cursor";
  *(v5 + 8) = a1;
  *(v5 + 20) = 6657;
  *(v5 + 23) = 112;
  *(v5 + 56) = 0;
  *(v5 + 48) = nullsub_7;
  return result;
}

uint64_t sub_1819B4920(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v134 = 0;
  v135 = 0;
  if (a2 < 2)
  {
    goto LABEL_14;
  }

  if (!*a3)
  {
    sub_1819012D0(99877);
    goto LABEL_8;
  }

  if (((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)) & 1) == 0)
  {
LABEL_8:
    v10 = *(a3 + 8 * *(a1 + 48) + 32);
    if (!v10)
    {
      sub_1819012D0(92237);
      goto LABEL_14;
    }

    v11 = *(v10 + 20);
    if ((v11 & 0x24) != 0)
    {
      v12 = *v10;
    }

    else if ((v11 & 8) != 0)
    {
      v29 = *v10;
      if (*v10 < -9.22337204e18)
      {
        goto LABEL_14;
      }

      if (v29 > 9.22337204e18)
      {
        goto LABEL_12;
      }

      *&v12 = v29;
    }

    else
    {
      if ((v11 & 0x12) == 0 || !*(v10 + 8))
      {
        goto LABEL_14;
      }

      LODWORD(v12) = sub_18193CFCC(v10);
    }

    if ((LODWORD(v12) & 0x80000000) != 0)
    {
LABEL_12:
      v13 = 19;
LABEL_16:
      v135 = v13;
      goto LABEL_17;
    }

LABEL_14:
    v14 = *(a1 + 48);
    if (sqlite3_initialize() || (v21 = sub_181902484(8 * v14 + 8, 0x100004052888210)) == 0)
    {
      v13 = 7;
      goto LABEL_16;
    }

    v22 = v21;
    v23 = *(a1 + 48) + 1;
    bzero(v21, 8 * v23);
    if (*(a1 + 508))
    {
      v135 = 0;
    }

    else
    {
      pStmt = 0;
      v27 = sub_1819AE4E4(a1, 0x10u, &pStmt, 0);
      if (v27)
      {
        v135 = v27;
        goto LABEL_97;
      }

      v34 = pStmt;
      if (!sub_1818DF6EC(pStmt, 0))
      {
        v35 = *(*v34 + 24);
        if (v35)
        {
          xmmword_1ED452F28(v35);
        }
      }

      sqlite3_step(v34);
      v135 = sqlite3_reset(v34);
      if (v135)
      {
LABEL_97:
        v41 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
          --qword_1ED456A90;
          off_1ED452EB0(v22);
          v22 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_17;
          }

          v41 = &xmmword_1ED452F28;
        }

        (*v41)(v22);
        goto LABEL_17;
      }
    }

    if (a2 < 2 || *(a1 + 80))
    {
      goto LABEL_29;
    }

    v36 = *(a3 + 8 * *(a1 + 48) + 24);
    if (v36)
    {
      if (((0xAAAAAAAAAAAAAAAALL >> *(v36 + 10)) & 1) == 0)
      {
LABEL_152:
        v50 = *a3;
        if (*a3)
        {
          if ((0xAAAAAAAAAAAAAAAALL >> *(v50 + 10)))
          {
LABEL_157:
            v52 = sqlite3_vtab_on_conflict(*(a1 + 24));
            v24 = v52 == 5;
            if (v52 == 5)
            {
              v53 = sub_1819C1584(a1, v36, &v134, v22);
            }

            else
            {
              v53 = sub_1819C1880(a1, a3, a4);
            }

            v135 = v53;
            if (v53)
            {
              goto LABEL_97;
            }

LABEL_30:
            v25 = *a3;
            if (*a3)
            {
              if ((0xAAAAAAAAAAAAAAAALL >> *(v25 + 10)))
              {
                v26 = 1;
LABEL_53:
                if (a2 < 2 || !v26)
                {
LABEL_95:
                  if (*(a1 + 460))
                  {
                    sub_1819C1F64(&v135, a1, &v22[v23], v22, v134);
                  }

                  goto LABEL_97;
                }

                v30 = *(a3 + 8 * *(a1 + 48) + 32);
                if (v30)
                {
                  v31 = *(v30 + 20);
                  if ((v31 & 0x24) != 0)
                  {
                    v32 = *v30;
                    goto LABEL_79;
                  }

                  if ((v31 & 8) != 0)
                  {
                    v54 = *v30;
                    if (*v30 >= -9.22337204e18)
                    {
                      if (v54 <= 9.22337204e18)
                      {
                        v32 = v54;
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

                    goto LABEL_79;
                  }

                  if ((v31 & 0x12) != 0 && *(v30 + 8))
                  {
                    v32 = sub_18193CFCC(v30);
LABEL_79:
                    if (v24 && (v37 = sub_1819C1880(a1, a3, a4), (v135 = v37) != 0))
                    {
                      if (v37 == 19 && !*(a1 + 80))
                      {
                        v135 = 267;
                      }
                    }

                    else
                    {
                      v38 = *a4;
                      v39 = *(a1 + 512);
                      if (v39 <= v38 && (v39 != v38 || *(a1 + 524)) && *(a1 + 520) == v32 && *(a1 + 508) <= *(a1 + 504) || (v40 = sub_1819C2600(a1)) == 0)
                      {
                        *(a1 + 512) = v38;
                        *(a1 + 520) = v32;
                        *(a1 + 524) = 0;
                        v40 = sub_1819C1BDC(a1, v32, a3, &v22[v23]);
                      }

                      v135 = v40;
                    }

                    if (*(a1 + 462))
                    {
                      sub_1819C1D38(&v135, a1, &v22[v23]);
                    }

                    ++v134;
                    goto LABEL_95;
                  }
                }

                else
                {
                  sub_1819012D0(92237);
                }

                v32 = 0;
                goto LABEL_79;
              }
            }

            else
            {
              sub_1819012D0(99877);
              v25 = *a3;
            }

            v135 = sub_1819C1584(a1, v25, &v134, v22);
            v26 = v135 == 0;
            goto LABEL_53;
          }
        }

        else
        {
          sub_1819012D0(99877);
          v50 = *a3;
        }

        v51 = sqlite3_value_int64(v50);
        if (v51 != sqlite3_value_int64(v36))
        {
          goto LABEL_157;
        }

LABEL_29:
        v24 = 1;
        goto LABEL_30;
      }

      v36 = *(a3 + 8);
      if (v36)
      {
        if ((0xAAAAAAAAAAAAAAAALL >> *(v36 + 10)))
        {
          goto LABEL_29;
        }

        goto LABEL_152;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    sub_1819012D0(99877);
    v36 = 0;
    goto LABEL_152;
  }

  v8 = *(a3 + 8 * *(a1 + 48) + 16);
  if (v8)
  {
    v9 = *(v8 + 20);
    if (((0xAAAAAAAAAAAAAAAALL >> v9) & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_8;
  }

  sub_1819012D0(99877);
  v8 = *(a3 + 8 * *(a1 + 48) + 16);
  if (!v8)
  {
    sub_1819012D0(93690);
LABEL_113:
    v135 = 7;
    goto LABEL_17;
  }

  v9 = *(v8 + 20);
LABEL_41:
  if ((~v9 & 0x202) != 0 || *(v8 + 22) != 1)
  {
    if (v9)
    {
      v28 = 0;
      if ((v9 & 2) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v28 = sub_18193CB70(v8, 1);
      LOWORD(v9) = *(v8 + 20);
      if ((v9 & 2) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    v28 = *(v8 + 8);
    if ((v9 & 2) == 0)
    {
      goto LABEL_61;
    }
  }

  if (*(v8 + 22) == 1)
  {
    v33 = *(v8 + 16);
    goto LABEL_104;
  }

LABEL_61:
  if ((v9 & 0x10) != 0)
  {
    v33 = *(v8 + 16);
    if ((v9 & 0x400) != 0)
    {
      v33 += *v8;
    }
  }

  else if (v9)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_18193CB44(v8, 1);
  }

LABEL_104:
  if (!v28)
  {
    goto LABEL_113;
  }

  if (v33 == 7)
  {
    v45 = *v28;
    if (!*v28)
    {
      LODWORD(v48) = 0;
      v49 = "rebuild";
      goto LABEL_223;
    }

    if ((v45 & 0xFFFFFFDF) == 0x52)
    {
      v48 = v28[1];
      if (!v28[1])
      {
        v49 = "ebuild";
        goto LABEL_223;
      }

      if ((v48 & 0xFFFFFFDF) == 0x45)
      {
        v48 = v28[2];
        if (!v28[2])
        {
          v49 = "build";
          goto LABEL_223;
        }

        if ((v48 & 0xFFFFFFDF) == 0x42)
        {
          v48 = v28[3];
          if (!v28[3])
          {
            v49 = "uild";
            goto LABEL_223;
          }

          if ((v48 & 0xFFFFFFDF) == 0x55)
          {
            v48 = v28[4];
            if (!v28[4])
            {
              v49 = "ild";
              goto LABEL_223;
            }

            if ((v48 & 0xFFFFFFDF) == 0x49)
            {
              v48 = v28[5];
              if (!v28[5])
              {
                v49 = "ld";
                goto LABEL_223;
              }

              if ((v48 & 0xFFFFFFDF) == 0x4C)
              {
                v48 = v28[6];
                if (!v28[6])
                {
                  v49 = "d";
LABEL_223:
                  if (v48 != byte_181A20298[*v49])
                  {
                    goto LABEL_291;
                  }

LABEL_224:
                  v64 = sub_1819C46B0(a1, 0);
                  if (v64)
                  {
                    goto LABEL_405;
                  }

                  pStmt = 0;
                  v66 = sqlite3_mprintf("SELECT %s", *(a1 + 440));
                  if (!v66)
                  {
                    goto LABEL_237;
                  }

                  v67 = sub_1818954B4(*(a1 + 24), v66, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v65);
                  v136 = v67;
                  v68 = &off_1ED452EB0;
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
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_232;
                    }

                    v68 = &xmmword_1ED452F28;
                  }

                  (*v68)(v66);
LABEL_232:
                  if (v67)
                  {
                    v66 = 0;
                    v69 = 0;
                    v70 = 0;
                    v71 = 0;
                    if (!*(a1 + 460))
                    {
                      goto LABEL_239;
                    }

                    goto LABEL_238;
                  }

                  v72 = *(a1 + 48);
                  if (!sqlite3_initialize())
                  {
                    v75 = 12 * v72;
                    v76 = sub_181902484(v75 + 12, 0x100004052888210);
                    if (v76)
                    {
                      v66 = v76;
                      bzero(v76, v75 + 12);
                      v77 = *(a1 + 48) + 1;
                      v78 = 4 * v77;
                      v133 = &v66[v78];
                      v79 = &v66[v78 + v78];
                      if (sqlite3_step(pStmt) == 100)
                      {
                        v71 = 0;
                        while (1)
                        {
                          if (*(a1 + 88))
                          {
                            v80 = sqlite3_column_int(pStmt, *(a1 + 48) + 1);
                          }

                          else
                          {
                            v80 = 0;
                          }

                          v81 = sqlite3_column_int64(pStmt, 0);
                          v82 = v81;
                          v83 = *(a1 + 512);
                          if (v83 <= v81 && (v83 != v81 || *(a1 + 524)) && *(a1 + 520) == v80 && *(a1 + 508) <= *(a1 + 504) || (v84 = sub_1819C2600(a1)) == 0)
                          {
                            v84 = 0;
                            *(a1 + 512) = v82;
                            *(a1 + 520) = v80;
                            *(a1 + 524) = 0;
                          }

                          v136 = v84;
                          bzero(v66, 4 * *(a1 + 48) + 4);
                          if (!v84)
                          {
                            v85 = *(a1 + 48);
                            if (v85 < 1)
                            {
LABEL_272:
                              v84 = 0;
                            }

                            else
                            {
                              v86 = 0;
                              while (1)
                              {
                                while (*(*(a1 + 64) + v86))
                                {
                                  if (++v86 >= v85)
                                  {
                                    goto LABEL_272;
                                  }
                                }

                                v87 = v86 + 1;
                                v88 = sqlite3_column_text(pStmt, v86 + 1);
                                v84 = sub_1819C47F4(a1, v80, v88, v86, &v66[4 * v86]);
                                *&v66[4 * *(a1 + 48)] += sqlite3_column_bytes(pStmt, v87);
                                if (v84)
                                {
                                  break;
                                }

                                v85 = *(a1 + 48);
                                v86 = v87;
                                if (v87 >= v85)
                                {
                                  goto LABEL_272;
                                }
                              }
                            }

                            v136 = v84;
                          }

                          if (*(a1 + 462))
                          {
                            sub_1819C1D38(&v136, a1, v66);
                            v84 = v136;
                          }

                          if (v84)
                          {
                            break;
                          }

                          if ((*(a1 + 48) & 0x80000000) == 0)
                          {
                            v89 = -1;
                            v90 = v66;
                            do
                            {
                              *&v90[4 * v77] += *v90;
                              ++v89;
                              v90 += 4;
                            }

                            while (v89 < *(a1 + 48));
                          }

                          ++v71;
                          if (sqlite3_step(pStmt) != 100)
                          {
                            goto LABEL_283;
                          }
                        }

                        sqlite3_finalize(pStmt);
                        pStmt = 0;
                      }

                      else
                      {
                        v71 = 0;
                      }

LABEL_283:
                      v69 = v133;
                      v70 = v79;
                      if (!*(a1 + 460))
                      {
LABEL_239:
                        if (v66)
                        {
                          v73 = &off_1ED452EB0;
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
                            if (!xmmword_1ED456AF0)
                            {
                              goto LABEL_246;
                            }

                            v73 = &xmmword_1ED452F28;
                          }

                          (*v73)(v66);
                        }

LABEL_246:
                        if (pStmt)
                        {
                          v74 = sqlite3_finalize(pStmt);
                          if (v136)
                          {
                            v74 = v136;
                          }

                          v135 = v74;
                        }

                        else
                        {
                          v135 = v136;
                        }

                        goto LABEL_17;
                      }

LABEL_238:
                      sub_1819C1F64(&v136, a1, v69, v70, v71);
                      goto LABEL_239;
                    }
                  }

                  v66 = 0;
LABEL_237:
                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  v136 = 7;
                  if (!*(a1 + 460))
                  {
                    goto LABEL_239;
                  }

                  goto LABEL_238;
                }

                if ((v48 & 0xFFFFFFDF) == 0x44)
                {
                  goto LABEL_224;
                }

                v48 += byte_181A20298;
                v49 = "d";
              }

              else
              {
                v48 += byte_181A20298;
                v49 = "ld";
              }
            }

            else
            {
              v48 += byte_181A20298;
              v49 = "ild";
            }
          }

          else
          {
            v48 += byte_181A20298;
            v49 = "uild";
          }
        }

        else
        {
          v48 += byte_181A20298;
          v49 = "build";
        }
      }

      else
      {
        v48 += byte_181A20298;
        v49 = "ebuild";
      }
    }

    else
    {
      v48 = &byte_181A20298[v45];
      v49 = "rebuild";
    }

    LODWORD(v48) = *v48;
    goto LABEL_223;
  }

  if (v33 == 8)
  {
    v45 = *v28;
    if (!*v28)
    {
      LODWORD(v46) = 0;
      v47 = "optimize";
      goto LABEL_289;
    }

    if ((v45 & 0xFFFFFFDF) == 0x4F)
    {
      v46 = v28[1];
      if (!v28[1])
      {
        v47 = "ptimize";
        goto LABEL_289;
      }

      if ((v46 & 0xFFFFFFDF) == 0x50)
      {
        v46 = v28[2];
        if (!v28[2])
        {
          v47 = "timize";
          goto LABEL_289;
        }

        if ((v46 & 0xFFFFFFDF) == 0x54)
        {
          v46 = v28[3];
          if (!v28[3])
          {
            v47 = "imize";
            goto LABEL_289;
          }

          if ((v46 & 0xFFFFFFDF) == 0x49)
          {
            v46 = v28[4];
            if (!v28[4])
            {
              v47 = "mize";
              goto LABEL_289;
            }

            if ((v46 & 0xFFFFFFDF) == 0x4D)
            {
              v46 = v28[5];
              if (!v28[5])
              {
                v47 = "ize";
                goto LABEL_289;
              }

              if ((v46 & 0xFFFFFFDF) == 0x49)
              {
                v46 = v28[6];
                if (!v28[6])
                {
                  v47 = "ze";
                  goto LABEL_289;
                }

                if ((v46 & 0xFFFFFFDF) == 0x5A)
                {
                  v46 = v28[7];
                  if (!v28[7])
                  {
                    v47 = "e";
LABEL_289:
                    if (v46 == byte_181A20298[*v47])
                    {
                      goto LABEL_290;
                    }

LABEL_291:
                    if (!v45)
                    {
                      LODWORD(v91) = 0;
                      v92 = "merge=";
                      goto LABEL_315;
                    }

                    if ((v45 & 0xFFFFFFDF) == 0x4D)
                    {
                      v91 = v28[1];
                      if (!v28[1])
                      {
                        v92 = "erge=";
                        goto LABEL_315;
                      }

                      if ((v91 & 0xFFFFFFDF) == 0x45)
                      {
                        v91 = v28[2];
                        if (!v28[2])
                        {
                          v92 = "rge=";
                          goto LABEL_315;
                        }

                        if ((v91 & 0xFFFFFFDF) == 0x52)
                        {
                          v91 = v28[3];
                          if (!v28[3])
                          {
                            v92 = "ge=";
                            goto LABEL_315;
                          }

                          if ((v91 & 0xFFFFFFDF) == 0x47)
                          {
                            v91 = v28[4];
                            if (!v28[4])
                            {
                              v92 = "e=";
                              goto LABEL_315;
                            }

                            if ((v91 & 0xFFFFFFDF) == 0x45)
                            {
                              v91 = v28[5];
                              if (!v28[5])
                              {
                                v92 = "=";
LABEL_315:
                                if (v91 == byte_181A20298[*v92])
                                {
LABEL_316:
                                  v94 = v28[6];
                                  v93 = v28 + 6;
                                  v95 = v94;
                                  if (v94 >= 48)
                                  {
                                    v96 = 0;
                                    v64 = 1;
                                    while (v95 <= 0x39 && v96 < 214748363)
                                    {
                                      v97 = *++v93;
                                      v96 = v95 + 10 * v96 - 48;
                                      v95 = v97;
                                      if (v97 <= 47)
                                      {
                                        goto LABEL_345;
                                      }
                                    }

                                    goto LABEL_405;
                                  }

                                  v96 = 0;
LABEL_345:
                                  LODWORD(pStmt) = 0;
                                  if (v95 == 44)
                                  {
                                    if (v93[1] >= 48)
                                    {
                                      v109 = 0;
                                      v95 = v93[1];
                                      v110 = (v93 + 2);
                                      v64 = 1;
                                      while (v95 <= 0x39 && v109 < 214748363)
                                      {
                                        v109 = v95 + 10 * v109 - 48;
                                        v111 = *v110++;
                                        v95 = v111;
                                        if (v111 <= 47)
                                        {
                                          goto LABEL_353;
                                        }
                                      }

                                      goto LABEL_405;
                                    }

LABEL_403:
                                    v135 = 1;
                                    goto LABEL_17;
                                  }

                                  v109 = 8;
LABEL_353:
                                  v64 = 1;
                                  if (v95 || v109 < 2)
                                  {
                                    goto LABEL_405;
                                  }

                                  if (!*(a1 + 461))
                                  {
                                    v114 = v109;
                                    v115 = v96;
                                    sub_1819B9DBC(&pStmt, *(a1 + 24), "CREATE TABLE IF NOT EXISTS %Q.'%q_stat'(id INTEGER PRIMARY KEY, value BLOB);", *(a1 + 32), *(a1 + 40));
                                    v112 = pStmt;
                                    if (pStmt)
                                    {
                                      goto LABEL_360;
                                    }

                                    *(a1 + 461) = 1;
                                    v96 = v115;
                                    v109 = v114;
                                  }

                                  v112 = sub_1819C5748(a1, v96, v109);
LABEL_360:
                                  v116 = *(a1 + 480);
                                  if (v116)
                                  {
                                    v117 = v112;
                                    v118 = v116[3];
                                    v119 = v116[4];
                                    v120 = v119[3];
                                    if (v120)
                                    {
                                      xmmword_1ED452F18(v120);
                                    }

                                    sub_181929C84(v119, v116);
                                    v121 = v119[3];
                                    if (v121)
                                    {
                                      xmmword_1ED452F28(v121);
                                    }

                                    sqlite3_finalize(v118);
                                    v112 = v117;
                                  }

                                  *(a1 + 480) = 0;
                                  v135 = v112;
                                  goto LABEL_17;
                                }

                                if (v33 < 0xB)
                                {
                                  goto LABEL_403;
                                }

                                if (!v45)
                                {
                                  v113 = 0;
                                  v108 = "automerge=";
                                  goto LABEL_387;
                                }

                                if ((v45 & 0xFFFFFFDF) == 0x41)
                                {
                                  v98 = v28[1];
                                  if (!v28[1])
                                  {
                                    v113 = 0;
                                    v108 = "utomerge=";
                                    goto LABEL_387;
                                  }

                                  if ((v98 & 0xFFFFFFDF) == 0x55)
                                  {
                                    v99 = v28[2];
                                    if (!v28[2])
                                    {
                                      v113 = 0;
                                      v108 = "tomerge=";
                                      goto LABEL_387;
                                    }

                                    if ((v99 & 0xFFFFFFDF) == 0x54)
                                    {
                                      v100 = v28[3];
                                      if (!v28[3])
                                      {
                                        v113 = 0;
                                        v108 = "omerge=";
                                        goto LABEL_387;
                                      }

                                      if ((v100 & 0xFFFFFFDF) == 0x4F)
                                      {
                                        v101 = v28[4];
                                        if (!v28[4])
                                        {
                                          v113 = 0;
                                          v108 = "merge=";
                                          goto LABEL_387;
                                        }

                                        if ((v101 & 0xFFFFFFDF) == 0x4D)
                                        {
                                          v102 = v28[5];
                                          if (!v28[5])
                                          {
                                            v113 = 0;
                                            v108 = "erge=";
                                            goto LABEL_387;
                                          }

                                          if ((v102 & 0xFFFFFFDF) == 0x45)
                                          {
                                            v103 = v28[6];
                                            if (!v28[6])
                                            {
                                              v113 = 0;
                                              v108 = "rge=";
                                              goto LABEL_387;
                                            }

                                            if ((v103 & 0xFFFFFFDF) == 0x52)
                                            {
                                              v104 = v28[7];
                                              if (!v28[7])
                                              {
                                                v113 = 0;
                                                v108 = "ge=";
                                                goto LABEL_387;
                                              }

                                              if ((v104 & 0xFFFFFFDF) == 0x47)
                                              {
                                                v105 = v28[8];
                                                if (!v28[8])
                                                {
                                                  v113 = 0;
                                                  v108 = "e=";
                                                  goto LABEL_387;
                                                }

                                                if ((v105 & 0xFFFFFFDF) == 0x45)
                                                {
                                                  v106 = v28[9];
                                                  if (!v28[9])
                                                  {
                                                    v113 = 0;
                                                    v108 = "=";
LABEL_387:
                                                    if (v113 != byte_181A20298[*v108])
                                                    {
                                                      goto LABEL_403;
                                                    }

                                                    goto LABEL_388;
                                                  }

                                                  if (v106 == 61)
                                                  {
LABEL_388:
                                                    v122 = 0;
                                                    v136 = 0;
                                                    pStmt = 0;
                                                    v123 = v28[10];
                                                    if (v123 >= 48)
                                                    {
                                                      v122 = 0;
                                                      v124 = (v28 + 11);
                                                      do
                                                      {
                                                        if (v123 > 0x39)
                                                        {
                                                          break;
                                                        }

                                                        if (v122 >= 214748363)
                                                        {
                                                          break;
                                                        }

                                                        v122 = v123 + 10 * v122 - 48;
                                                        v125 = *v124++;
                                                        v123 = v125;
                                                      }

                                                      while (v125 > 47);
                                                    }

                                                    if (v122 > 16 || v122 == 1)
                                                    {
                                                      v122 = 8;
                                                    }

                                                    *(a1 + 96) = v122;
                                                    if (!*(a1 + 461))
                                                    {
                                                      sub_1819B9DBC(&v136, *(a1 + 24), "CREATE TABLE IF NOT EXISTS %Q.'%q_stat'(id INTEGER PRIMARY KEY, value BLOB);", *(a1 + 32), *(a1 + 40));
                                                      v64 = v136;
                                                      if (v136)
                                                      {
                                                        goto LABEL_405;
                                                      }

                                                      *(a1 + 461) = 1;
                                                    }

                                                    v64 = sub_1819AE4E4(a1, 0x17u, &pStmt, 0);
                                                    if (!v64)
                                                    {
                                                      v127 = pStmt;
                                                      if (!sub_1818DF6EC(pStmt, 0))
                                                      {
                                                        v128 = *(v127 + 16);
                                                        if ((*(v128 + 20) & 0x9000) != 0)
                                                        {
                                                          sub_18193D288(v128, 2);
                                                        }

                                                        else
                                                        {
                                                          *v128 = 2;
                                                          *(v128 + 20) = 4;
                                                        }

                                                        v129 = *(*v127 + 24);
                                                        if (v129)
                                                        {
                                                          xmmword_1ED452F28(v129);
                                                        }
                                                      }

                                                      v130 = *(a1 + 96);
                                                      if (!sub_1818DF6EC(v127, 1u))
                                                      {
                                                        v131 = *(v127 + 16);
                                                        if ((*(v131 + 84) & 0x9000) != 0)
                                                        {
                                                          sub_18193D288(v131 + 64, v130);
                                                        }

                                                        else
                                                        {
                                                          *(v131 + 64) = v130;
                                                          *(v131 + 84) = 4;
                                                        }

                                                        v132 = *(*v127 + 24);
                                                        if (v132)
                                                        {
                                                          xmmword_1ED452F28(v132);
                                                        }
                                                      }

                                                      sqlite3_step(v127);
                                                      v135 = sqlite3_reset(v127);
                                                      goto LABEL_17;
                                                    }

LABEL_405:
                                                    v135 = v64;
                                                    goto LABEL_17;
                                                  }

                                                  v107 = &byte_181A20298[v106];
                                                  v108 = "=";
                                                }

                                                else
                                                {
                                                  v107 = &byte_181A20298[v105];
                                                  v108 = "e=";
                                                }
                                              }

                                              else
                                              {
                                                v107 = &byte_181A20298[v104];
                                                v108 = "ge=";
                                              }
                                            }

                                            else
                                            {
                                              v107 = &byte_181A20298[v103];
                                              v108 = "rge=";
                                            }
                                          }

                                          else
                                          {
                                            v107 = &byte_181A20298[v102];
                                            v108 = "erge=";
                                          }
                                        }

                                        else
                                        {
                                          v107 = &byte_181A20298[v101];
                                          v108 = "merge=";
                                        }
                                      }

                                      else
                                      {
                                        v107 = &byte_181A20298[v100];
                                        v108 = "omerge=";
                                      }
                                    }

                                    else
                                    {
                                      v107 = &byte_181A20298[v99];
                                      v108 = "tomerge=";
                                    }
                                  }

                                  else
                                  {
                                    v107 = &byte_181A20298[v98];
                                    v108 = "utomerge=";
                                  }
                                }

                                else
                                {
                                  v107 = &byte_181A20298[v45];
                                  v108 = "automerge=";
                                }

                                v113 = *v107;
                                goto LABEL_387;
                              }

                              if (v91 == 61)
                              {
                                goto LABEL_316;
                              }

                              v91 += byte_181A20298;
                              v92 = "=";
                            }

                            else
                            {
                              v91 += byte_181A20298;
                              v92 = "e=";
                            }
                          }

                          else
                          {
                            v91 += byte_181A20298;
                            v92 = "ge=";
                          }
                        }

                        else
                        {
                          v91 += byte_181A20298;
                          v92 = "rge=";
                        }
                      }

                      else
                      {
                        v91 += byte_181A20298;
                        v92 = "erge=";
                      }
                    }

                    else
                    {
                      v91 = &byte_181A20298[v45];
                      v92 = "merge=";
                    }

                    LODWORD(v91) = *v91;
                    goto LABEL_315;
                  }

                  if ((v46 & 0xFFFFFFDF) == 0x45)
                  {
LABEL_290:
                    v135 = sub_1819C23C0(a1, 0);
                    goto LABEL_17;
                  }

                  v46 += byte_181A20298;
                  v47 = "e";
                }

                else
                {
                  v46 += byte_181A20298;
                  v47 = "ze";
                }
              }

              else
              {
                v46 += byte_181A20298;
                v47 = "ize";
              }
            }

            else
            {
              v46 += byte_181A20298;
              v47 = "mize";
            }
          }

          else
          {
            v46 += byte_181A20298;
            v47 = "imize";
          }
        }

        else
        {
          v46 += byte_181A20298;
          v47 = "timize";
        }
      }

      else
      {
        v46 += byte_181A20298;
        v47 = "ptimize";
      }
    }

    else
    {
      v46 = &byte_181A20298[v45];
      v47 = "optimize";
    }

    LODWORD(v46) = *v46;
    goto LABEL_289;
  }

  if (v33 != 15)
  {
LABEL_171:
    if (v33 >= 7)
    {
      LODWORD(v45) = *v28;
      goto LABEL_291;
    }

    if (v33 != 5)
    {
      goto LABEL_403;
    }

    v56 = *v28;
    if (!*v28)
    {
      v63 = 0;
      v62 = "flush";
      goto LABEL_213;
    }

    if ((v56 & 0xFFFFFFDF) == 0x46)
    {
      v57 = v28[1];
      if (!v28[1])
      {
        v63 = 0;
        v62 = "lush";
        goto LABEL_213;
      }

      if ((v57 & 0xFFFFFFDF) == 0x4C)
      {
        v58 = v28[2];
        if (!v28[2])
        {
          v63 = 0;
          v62 = "ush";
          goto LABEL_213;
        }

        if ((v58 & 0xFFFFFFDF) == 0x55)
        {
          v59 = v28[3];
          if (!v28[3])
          {
            v63 = 0;
            v62 = "sh";
            goto LABEL_213;
          }

          if ((v59 & 0xFFFFFFDF) == 0x53)
          {
            v60 = v28[4];
            if (!v28[4])
            {
              v63 = 0;
              v62 = "h";
LABEL_213:
              if (v63 != byte_181A20298[*v62])
              {
                goto LABEL_403;
              }

              goto LABEL_214;
            }

            if ((v60 & 0xFFFFFFDF) == 0x48)
            {
LABEL_214:
              v64 = sub_1819C2600(a1);
              goto LABEL_405;
            }

            v61 = &byte_181A20298[v60];
            v62 = "h";
          }

          else
          {
            v61 = &byte_181A20298[v59];
            v62 = "sh";
          }
        }

        else
        {
          v61 = &byte_181A20298[v58];
          v62 = "ush";
        }
      }

      else
      {
        v61 = &byte_181A20298[v57];
        v62 = "lush";
      }
    }

    else
    {
      v61 = &byte_181A20298[v56];
      v62 = "flush";
    }

    v63 = *v61;
    goto LABEL_213;
  }

  v42 = 0;
  while (1)
  {
    v43 = v28[v42];
    if (!v28[v42])
    {
      break;
    }

    LODWORD(v43) = byte_181A20298[v43];
    v44 = byte_181A20298[aIntegrityCheck_1[v42]];
    if (v43 != v44)
    {
      goto LABEL_167;
    }

    if (++v42 == 15)
    {
      goto LABEL_168;
    }
  }

  v44 = byte_181A20298[aIntegrityCheck_1[v42]];
LABEL_167:
  if (v43 != v44)
  {
    goto LABEL_171;
  }

LABEL_168:
  LODWORD(pStmt) = 0;
  v55 = sub_1819C4D2C(a1, &pStmt);
  if (!(v55 | pStmt))
  {
    v55 = 267;
  }

  v135 = v55;
LABEL_17:
  v15 = *(a1 + 480);
  if (v15)
  {
    v16 = v15[3];
    v17 = v15[4];
    v18 = v17[3];
    if (v18)
    {
      xmmword_1ED452F18(v18);
    }

    sub_181929C84(v17, v15);
    v19 = v17[3];
    if (v19)
    {
      xmmword_1ED452F28(v19);
    }

    sqlite3_finalize(v16);
  }

  *(a1 + 480) = 0;
  return v135;
}

uint64_t sub_1819B5EF0(uint64_t a1)
{
  result = 0;
  *(a1 + 100) = 0;
  if (*(a1 + 461) == 2)
  {
    v3 = sqlite3_mprintf("%s_stat", *(a1 + 40));
    if (v3)
    {
      v4 = v3;
      v5 = sqlite3_table_column_metadata(*(a1 + 24), *(a1 + 32), v3, 0, 0, 0, 0, 0, 0);
      v6 = &off_1ED452EB0;
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
          goto LABEL_9;
        }

        v6 = &xmmword_1ED452F28;
      }

      (*v6)(v4);
LABEL_9:
      result = 0;
      *(a1 + 461) = v5 == 0;
      return result;
    }

    return 7;
  }

  return result;
}

uint64_t sub_1819B6018(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 113);
    switch(v3)
    {
      case 186:
        goto LABEL_5;
      case 118:
        v5 = *(v2 + 56);
        goto LABEL_10;
      case 109:
LABEL_5:
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
  sub_1819012D0(192786);
  v5 = 0;
LABEL_10:
  v6 = sub_1819C2600(a1);
  if (!v6)
  {
    if (*(a1 + 100) < 5u)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = *(a1 + 96);
      if (v7 && v7 != 255)
      {
        v23 = 0;
        v8 = sub_1819AE4E4(a1, 0x24u, &v23, 0);
        if (v8)
        {
          v6 = v8;
          v9 = 0;
        }

        else
        {
          v21 = v23;
          v9 = sqlite3_step(v23) == 100 ? sqlite3_column_int(v21, 0) : 0;
          v6 = sqlite3_reset(v21);
        }

        v22 = *(a1 + 100) * v9 + *(a1 + 100) * v9 / 2;
        if (v22 >= 65)
        {
          v6 = sub_1819C5748(a1, v22, *(a1 + 96));
        }
      }
    }
  }

  v10 = *(a1 + 480);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    v13 = v12[3];
    if (v13)
    {
      xmmword_1ED452F18(v13);
    }

    sub_181929C84(v12, v10);
    v14 = v12[3];
    if (v14)
    {
      xmmword_1ED452F28(v14);
    }

    sqlite3_finalize(v11);
  }

  *(a1 + 480) = 0;
  v15 = *(a1 + 24);
  if (!v15)
  {
    v17 = "NULL";
    goto LABEL_33;
  }

  v16 = *(v15 + 113);
  if (v16 == 186)
  {
LABEL_27:
    v17 = "unopened";
LABEL_33:
    sqlite3_log(21, "API call with %s database connection pointer", v17);
    sub_1819012D0(192799);
    return v6;
  }

  if (v16 != 118)
  {
    if (v16 != 109)
    {
      v17 = "invalid";
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v18 = *(v15 + 24);
  if (v18)
  {
    xmmword_1ED452F18(v18);
    v19 = *(v15 + 24);
    *(v15 + 56) = v5;
    if (v19)
    {
      xmmword_1ED452F28(v19);
    }
  }

  else
  {
    *(v15 + 56) = v5;
  }

  return v6;
}

uint64_t sub_1819B629C(int a1, int a2, char *__s1, void *a4)
{
  if (!strcmp(__s1, "snippet"))
  {
    v7 = &off_1EEF905B8;
  }

  else if (!strcmp(__s1, "offsets"))
  {
    v7 = &off_1EEF905C8;
  }

  else if (!strcmp(__s1, "optimize"))
  {
    v7 = &off_1EEF905D8;
  }

  else
  {
    if (strcmp(__s1, "matchinfo"))
    {
      return 0;
    }

    v7 = &off_1EEF905E8;
  }

  *a4 = v7[1];
  return 1;
}

uint64_t sub_1819B6350(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(a1 + 461) != 2)
  {
    goto LABEL_10;
  }

  v5 = sqlite3_mprintf("%s_stat", *(a1 + 40));
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_table_column_metadata(*(a1 + 24), *(a1 + 32), v5, 0, 0, 0, 0, 0, 0);
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
        goto LABEL_9;
      }

      v8 = &xmmword_1ED452F28;
    }

    (*v8)(v6);
LABEL_9:
    *(a1 + 461) = v7 == 0;
LABEL_10:
    v9 = sub_1819C2600(a1);
    goto LABEL_11;
  }

  v9 = 7;
LABEL_11:
  v11 = v9;
  *(a1 + 464) = 1;
  if (!*(a1 + 80))
  {
    sub_1819B9DBC(&v11, v4, "ALTER TABLE %Q.'%q_content'  RENAME TO '%q_content';", *(a1 + 32), *(a1 + 40), a2);
  }

  if (*(a1 + 462))
  {
    sub_1819B9DBC(&v11, v4, "ALTER TABLE %Q.'%q_docsize'  RENAME TO '%q_docsize';", *(a1 + 32), *(a1 + 40), a2);
  }

  if (*(a1 + 461))
  {
    sub_1819B9DBC(&v11, v4, "ALTER TABLE %Q.'%q_stat'  RENAME TO '%q_stat';", *(a1 + 32), *(a1 + 40), a2);
  }

  sub_1819B9DBC(&v11, v4, "ALTER TABLE %Q.'%q_segments' RENAME TO '%q_segments';", *(a1 + 32), *(a1 + 40), a2);
  sub_1819B9DBC(&v11, v4, "ALTER TABLE %Q.'%q_segdir'   RENAME TO '%q_segdir';", *(a1 + 32), *(a1 + 40), a2);
  *(a1 + 464) = 0;
  return v11;
}

uint64_t sub_1819B6550(uint64_t a1, int a2)
{
  if (*(a1 + 464))
  {
    return 0;
  }

  if (*(*(a1 + 496) + 12) >= 1)
  {
    v4 = a2;
    v5 = sqlite3_mprintf("INSERT INTO %Q.%Q(%Q) VALUES('flush')", *(a1 + 32), *(a1 + 40), *(a1 + 40));
    if (!v5)
    {
      return 7;
    }

    v6 = v5;
    *(a1 + 464) = 1;
    v7 = sqlite3_exec(*(a1 + 24), v5, 0, 0, 0);
    *(a1 + 464) = 0;
    v8 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v9 = v7;
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
LABEL_13:
        a2 = v4;
        result = v9;
        if (v9)
        {
          return result;
        }

        goto LABEL_14;
      }

      v8 = &xmmword_1ED452F28;
    }

    else
    {
      v9 = v7;
    }

    (*v8)(v6);
    goto LABEL_13;
  }

LABEL_14:
  result = 0;
  *(a1 + 488) = a2 + 1;
  return result;
}

uint64_t sub_1819B66AC(uint64_t a1, int a2)
{
  if (*(a1 + 488) > a2)
  {
    sub_1819C49E8(a1);
  }

  return 0;
}

uint64_t sub_1819B66D8(uint64_t result)
{
  if (result)
  {
    v1 = "content";
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
        v3 = "docsize";
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
            v5 = "segdir";
            for (k = result; ; ++k)
            {
              if (*k == *v5)
              {
                if (!*k)
                {
                  return 1;
                }
              }

              else if (byte_181A20298[*k] != byte_181A20298[*v5])
              {
                v7 = "segments";
                for (m = result; ; ++m)
                {
                  if (*m == *v7)
                  {
                    if (!*m)
                    {
                      return 1;
                    }
                  }

                  else if (byte_181A20298[*m] != byte_181A20298[*v7])
                  {
                    for (n = "stat"; ; ++n)
                    {
                      if (*result == *n)
                      {
                        if (!*result)
                        {
                          return 1;
                        }
                      }

                      else if (byte_181A20298[*result] != byte_181A20298[*n])
                      {
                        return 0;
                      }

                      ++result;
                    }
                  }

                  ++v7;
                }
              }

              ++v5;
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

uint64_t sub_1819B683C(uint64_t a1, const char *a2, const char *a3, uint64_t a4, char **a5)
{
  v22 = 0;
  v9 = sub_1819C4D2C(a1, &v22);
  v10 = v9;
  if (v9 == 1 || v9 == 11)
  {
    if (*(a1 + 460))
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    switch(v9)
    {
      case 0x204:
        v13 = "abort due to ROLLBACK";
        break;
      case 0x65:
        v13 = "no more rows available";
        break;
      case 0x64:
        v13 = "another row available";
        break;
      default:
        if (v9 > 0x1Cu)
        {
          v13 = "unknown error";
        }

        else
        {
          v13 = off_1E6A27DD8[v9];
        }

        break;
    }

    v15 = sqlite3_mprintf("unable to validate the inverted index for FTS%d table %s.%s: %s", v12, a2, a3, v13);
  }

  else
  {
    if (v9 | v22)
    {
      goto LABEL_26;
    }

    v14 = 3;
    if (*(a1 + 460))
    {
      v14 = 4;
    }

    v15 = sqlite3_mprintf("malformed inverted index for FTS%d table %s.%s", v14, a2, a3);
    LODWORD(v10) = 7;
  }

  *a5 = v15;
  if (v15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

LABEL_26:
  v16 = *(a1 + 480);
  if (v16)
  {
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

  *(a1 + 480) = 0;
  return v10;
}

uint64_t sub_1819B69B4(int a1, uint64_t a2, void *a3, int a4, const char **a5, uint64_t *a6, char **a7)
{
  v234 = 0;
  v13 = a5[1];
  v14 = *(*a5 + 3);
  v233 = 0;
  v15 = strlen(v13);
  v16 = strlen(a5[2]);
  if (sqlite3_initialize())
  {
    v17 = 0;
LABEL_3:
    v18 = 0;
    v19 = 0;
    v234 = 7;
    goto LABEL_4;
  }

  __src = a3;
  v222 = a2;
  v223 = a7;
  v224 = v14;
  v23 = 8 * a4 - 16;
  v24 = sub_181902484(v23, 0x50040EE9192B6);
  v17 = v24;
  if (!v24)
  {
    goto LABEL_3;
  }

  bzero(v24, v23);
  if (sqlite3_initialize())
  {
    goto LABEL_3;
  }

  v25 = sub_181902484(v23, 0x10040436913F5);
  if (!v25)
  {
    goto LABEL_3;
  }

  v19 = v25;
  bzero(v25, v23);
  v213 = 1;
  v226 = v16;
  if (a4 < 4)
  {
    v218 = 0;
    v219 = 0;
    v220 = 0;
    v221 = 0;
    v71 = 0;
    BYTE4(v212) = 0;
    v72 = 0;
    goto LABEL_249;
  }

  v210 = a1;
  v218 = 0;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  v214 = 0;
  __s = 0;
  v212 = 0;
  v232 = 0;
  v229 = 0;
  v225 = a4;
  v26 = 3;
  v27 = v224;
  v28 = __src;
  while (2)
  {
    v30 = a5[v26];
    if (!v233 && strlen(a5[v26]) >= 9 && v30 != 0)
    {
      v32 = *v30;
      if (!*v30)
      {
        v33 = "tokenize";
        goto LABEL_69;
      }

      if ((v32 & 0xFFFFFFDF) == 0x54)
      {
        v32 = *(v30 + 1);
        if (!v30[1])
        {
          v33 = "okenize";
          goto LABEL_69;
        }

        if ((v32 & 0xFFFFFFDF) == 0x4F)
        {
          v32 = *(v30 + 2);
          if (!v30[2])
          {
            v33 = "kenize";
            goto LABEL_69;
          }

          if ((v32 & 0xFFFFFFDF) == 0x4B)
          {
            v32 = *(v30 + 3);
            if (!v30[3])
            {
              v33 = "enize";
              goto LABEL_69;
            }

            if ((v32 & 0xFFFFFFDF) == 0x45)
            {
              v32 = *(v30 + 4);
              if (!v30[4])
              {
                v33 = "nize";
                goto LABEL_69;
              }

              if ((v32 & 0xFFFFFFDF) == 0x4E)
              {
                v32 = *(v30 + 5);
                if (!v30[5])
                {
                  v33 = "ize";
                  goto LABEL_69;
                }

                if ((v32 & 0xFFFFFFDF) == 0x49)
                {
                  v32 = *(v30 + 6);
                  if (!v30[6])
                  {
                    v33 = "ze";
                    goto LABEL_69;
                  }

                  if ((v32 & 0xFFFFFFDF) == 0x5A)
                  {
                    v32 = *(v30 + 7);
                    if (!v30[7])
                    {
                      v33 = "e";
                      v27 = v224;
                      v16 = v226;
                      v28 = __src;
LABEL_69:
                      if (v32 != byte_181A20298[*v33])
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_70;
                    }

                    v27 = v224;
                    v16 = v226;
                    v28 = __src;
                    if ((v32 & 0xFFFFFFDF) == 0x45)
                    {
LABEL_70:
                      v34 = v30[8];
                      if ((v34 & 0x8000000000000000) == 0 && !byte_181A256CE[v34])
                      {
                        v234 = sub_1819B8F24(v28, v30 + 9, &v233, v223);
                        goto LABEL_28;
                      }

                      goto LABEL_72;
                    }

                    v32 += byte_181A20298;
                    v33 = "e";
                  }

                  else
                  {
                    v32 += byte_181A20298;
                    v33 = "ze";
                  }
                }

                else
                {
                  v32 += byte_181A20298;
                  v33 = "ize";
                }
              }

              else
              {
                v32 += byte_181A20298;
                v33 = "nize";
              }
            }

            else
            {
              v32 += byte_181A20298;
              v33 = "enize";
            }
          }

          else
          {
            v32 += byte_181A20298;
            v33 = "kenize";
          }
        }

        else
        {
          v32 += byte_181A20298;
          v33 = "okenize";
        }
      }

      else
      {
        v32 += byte_181A20298;
        v33 = "tokenize";
      }

      LODWORD(v32) = *v32;
      goto LABEL_69;
    }

LABEL_72:
    v35 = v15;
    if (v27 != 52 || (v36 = 0, v37 = 1, v38 = *v30, !*v30))
    {
LABEL_26:
      v229 += strlen(v30) + 1;
      v17[v232++] = v30;
LABEL_27:
      v15 = v35;
      v16 = v226;
      v28 = __src;
      goto LABEL_28;
    }

    while (v38 != 61)
    {
      ++v36;
      ++v37;
      v38 = v30[v36];
      if (!v30[v36])
      {
        goto LABEL_26;
      }
    }

    v39 = sqlite3_mprintf("%s", &v30[v36 + 1]);
    if (!v39)
    {
      v234 = 7;
      v27 = v224;
      goto LABEL_27;
    }

    v40 = v39;
    v41 = *v39;
    if ((v41 - 34) <= 0x3E && ((1 << (v41 - 34)) & 0x4200000000000021) != 0)
    {
      if (v41 == 91)
      {
        v41 = 93;
      }

      v43 = v39[1];
      if (v39[1])
      {
        v44 = 0;
        v45 = 1;
        v46 = 1;
        while (1)
        {
          if (v43 == v41)
          {
            if (v39[v45 + 1] != v41)
            {
LABEL_92:
              v47 = v44;
              goto LABEL_94;
            }

            v39[v44] = v41;
            v46 += 2;
          }

          else
          {
            ++v46;
            v39[v44] = v43;
          }

          ++v44;
          v45 = v46;
          v43 = v39[v46];
          if (!v39[v46])
          {
            goto LABEL_92;
          }
        }
      }

      v47 = 0;
LABEL_94:
      v39[v47] = 0;
    }

    v48 = 0;
    while (1)
    {
      v50 = &(&off_1E6A28000)[2 * v48];
      if (*(v50 + 2) != v36)
      {
        goto LABEL_100;
      }

      if ((v36 & 0x80000000) != 0)
      {
        break;
      }

      v51 = *v50;
      if (v30)
      {
        if (v51)
        {
          if (!v36)
          {
            goto LABEL_116;
          }

          v52 = v37;
          v53 = v30;
          while (1)
          {
            v54 = *v53;
            if (!*v53)
            {
              break;
            }

            LODWORD(v54) = byte_181A20298[v54];
            v55 = byte_181A20298[*v51];
            if (v54 != v55)
            {
              goto LABEL_112;
            }

            ++v53;
            ++v51;
            if (--v52 <= 1)
            {
              goto LABEL_116;
            }
          }

          v55 = byte_181A20298[*v51];
LABEL_112:
          if (v54 == v55)
          {
            goto LABEL_116;
          }
        }
      }

      else
      {
        if (v51)
        {
          v49 = -1;
        }

        else
        {
          v49 = 0;
        }

        if (!v49)
        {
          goto LABEL_116;
        }
      }

LABEL_100:
      if (++v48 == 8)
      {
        goto LABEL_146;
      }
    }

    sub_1819012D0(37608);
LABEL_116:
    if (v48 > 3)
    {
      if (v48 <= 5)
      {
        if (v48 != 4)
        {
          if (v48 != 5)
          {
            goto LABEL_146;
          }

          if (!v221)
          {
            v221 = v40;
            goto LABEL_185;
          }

          v58 = &off_1ED452EB0;
          v15 = v35;
          v16 = v226;
          if (dword_1ED452E80)
          {
            v28 = __src;
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v221);
            --qword_1ED456A90;
            off_1ED452EB0(v221);
            v221 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_204;
            }

            v58 = &xmmword_1ED452F28;
          }

          else
          {
            v28 = __src;
          }

          (*v58)(v221);
LABEL_204:
          v221 = v40;
          v27 = v224;
          goto LABEL_28;
        }

        v62 = strlen(v40);
        if (v62 == 3)
        {
          v63 = *v40;
          if (!*v40)
          {
            LODWORD(v64) = 0;
            v65 = "asc";
            goto LABEL_230;
          }

          if ((v63 & 0xFFFFFFDF) == 0x41)
          {
            v64 = v40[1];
            if (!v40[1])
            {
              v65 = "sc";
              goto LABEL_230;
            }

            if ((v64 & 0xFFFFFFDF) == 0x53)
            {
              v64 = v40[2];
              if (!v40[2])
              {
                v65 = "c";
                goto LABEL_230;
              }

              if ((v64 & 0xFFFFFFDF) == 0x43)
              {
                goto LABEL_232;
              }

              v64 += byte_181A20298;
              v65 = "c";
            }

            else
            {
              v64 += byte_181A20298;
              v65 = "sc";
            }
          }

          else
          {
            v64 = &byte_181A20298[v63];
            v65 = "asc";
          }
        }

        else
        {
          if (v62 != 4)
          {
LABEL_231:
            sub_1819AD2A4(v223, "unrecognized order: %s", v40);
            v234 = 1;
            LODWORD(v63) = *v40;
            goto LABEL_232;
          }

          v63 = *v40;
          if (!*v40)
          {
            LODWORD(v64) = 0;
            v65 = "desc";
            goto LABEL_230;
          }

          if ((v63 & 0xFFFFFFDF) == 0x44)
          {
            v64 = v40[1];
            if (!v40[1])
            {
              v65 = "esc";
              goto LABEL_230;
            }

            if ((v64 & 0xFFFFFFDF) == 0x45)
            {
              v64 = v40[2];
              if (!v40[2])
              {
                v65 = "sc";
                goto LABEL_230;
              }

              if ((v64 & 0xFFFFFFDF) == 0x53)
              {
                v64 = v40[3];
                if (!v40[3])
                {
                  v65 = "c";
LABEL_230:
                  if (v64 != byte_181A20298[*v65])
                  {
                    goto LABEL_231;
                  }

LABEL_232:
                  BYTE4(v212) = (v63 & 0xFFFFFFDF) == 68;
LABEL_233:
                  v69 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    v15 = v35;
                    v16 = v226;
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
                    --qword_1ED456A90;
                    off_1ED452EB0(v40);
                    v40 = xmmword_1ED456AF0;
                    v28 = __src;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_240;
                    }

                    v69 = &xmmword_1ED452F28;
                  }

                  else
                  {
                    v15 = v35;
                    v16 = v226;
                    v28 = __src;
                  }

                  (*v69)(v40);
LABEL_240:
                  v27 = v224;
                  goto LABEL_28;
                }

                if ((v64 & 0xFFFFFFDF) == 0x43)
                {
                  goto LABEL_232;
                }

                v64 += byte_181A20298;
                v65 = "c";
              }

              else
              {
                v64 += byte_181A20298;
                v65 = "sc";
              }
            }

            else
            {
              v64 += byte_181A20298;
              v65 = "esc";
            }
          }

          else
          {
            v64 = &byte_181A20298[v63];
            v65 = "desc";
          }
        }

        LODWORD(v64) = *v64;
        goto LABEL_230;
      }

      if (v48 != 6)
      {
        if (v48 != 7)
        {
          goto LABEL_146;
        }

        v19[v219++] = v40;
        goto LABEL_185;
      }

      if (!v218)
      {
        v218 = v40;
        goto LABEL_185;
      }

      v68 = &off_1ED452EB0;
      v15 = v35;
      v16 = v226;
      if (dword_1ED452E80)
      {
        v28 = __src;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v218);
        --qword_1ED456A90;
        off_1ED452EB0(v218);
        v218 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_198;
        }

        v68 = &xmmword_1ED452F28;
      }

      else
      {
        v28 = __src;
      }

      (*v68)(v218);
LABEL_198:
      v218 = v40;
      v27 = v224;
      goto LABEL_28;
    }

    if (v48 > 1)
    {
      if (v48 != 2)
      {
        if (v48 == 3)
        {
          if (!__s)
          {
            __s = v40;
            goto LABEL_185;
          }

          v59 = &off_1ED452EB0;
          v15 = v35;
          v16 = v226;
          if (dword_1ED452E80)
          {
            v28 = __src;
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(__s);
            --qword_1ED456A90;
            off_1ED452EB0(__s);
            __s = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_207;
            }

            v59 = &xmmword_1ED452F28;
          }

          else
          {
            v28 = __src;
          }

          (*v59)(__s);
LABEL_207:
          __s = v40;
          v27 = v224;
          goto LABEL_28;
        }

LABEL_146:
        sub_1819AD2A4(v223, "unrecognized parameter: %s", v30);
        v234 = 1;
        goto LABEL_233;
      }

      v66 = v220;
      if (v220)
      {
        v67 = &off_1ED452EB0;
        v15 = v35;
        v16 = v226;
        if (dword_1ED452E80)
        {
          v28 = __src;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v220);
          --qword_1ED456A90;
          off_1ED452EB0(v220);
          v66 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_195;
          }

          v67 = &xmmword_1ED452F28;
        }

        else
        {
          v28 = __src;
        }

        (*v67)(v66);
LABEL_195:
        v220 = v40;
        v27 = v224;
        goto LABEL_28;
      }

      v220 = v40;
LABEL_185:
      v27 = v224;
      goto LABEL_27;
    }

    if (!v48)
    {
      if (strlen(v40) != 4)
      {
LABEL_225:
        sub_1819AD2A4(v223, "unrecognized matchinfo: %s", v40);
        LODWORD(v212) = 1;
        v234 = 1;
        goto LABEL_233;
      }

      v60 = *v40;
      if (!*v40)
      {
        v61 = "fts3";
        goto LABEL_223;
      }

      if ((v60 & 0xFFFFFFDF) == 0x46)
      {
        v60 = v40[1];
        if (!v40[1])
        {
          v61 = "ts3";
          goto LABEL_223;
        }

        if ((v60 & 0xFFFFFFDF) == 0x54)
        {
          v60 = v40[2];
          if (!v40[2])
          {
            v61 = "s3";
            goto LABEL_223;
          }

          if ((v60 & 0xFFFFFFDF) == 0x53)
          {
            v60 = v40[3];
            if (!v40[3])
            {
              v61 = "3";
LABEL_223:
              if (v60 == byte_181A20298[*v61])
              {
                goto LABEL_224;
              }

              goto LABEL_225;
            }

            if (v60 == 51)
            {
LABEL_224:
              LODWORD(v212) = 1;
              goto LABEL_233;
            }

            v60 += byte_181A20298;
            v61 = "3";
          }

          else
          {
            v60 += byte_181A20298;
            v61 = "s3";
          }
        }

        else
        {
          v60 += byte_181A20298;
          v61 = "ts3";
        }
      }

      else
      {
        v60 += byte_181A20298;
        v61 = "fts3";
      }

      LODWORD(v60) = *v60;
      goto LABEL_223;
    }

    if (v48 != 1)
    {
      goto LABEL_146;
    }

    v56 = v214;
    if (!v214)
    {
      v214 = v40;
      goto LABEL_185;
    }

    v57 = &off_1ED452EB0;
    v15 = v35;
    v16 = v226;
    if (dword_1ED452E80)
    {
      v28 = __src;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v214);
      --qword_1ED456A90;
      off_1ED452EB0(v214);
      v56 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v57 = &xmmword_1ED452F28;
        goto LABEL_200;
      }
    }

    else
    {
      v28 = __src;
LABEL_200:
      (*v57)(v56);
    }

    v214 = v40;
    v27 = v224;
LABEL_28:
    ++v26;
    if (v234)
    {
      v29 = 1;
    }

    else
    {
      v29 = v26 >= v225;
    }

    if (!v29)
    {
      continue;
    }

    break;
  }

  v213 = v212 == 0;
  if (v234)
  {
    v72 = __s;
LABEL_300:
    a1 = v210;
    if (v234)
    {
      goto LABEL_301;
    }

LABEL_277:
    v71 = v214;
    if (!v232)
    {
      goto LABEL_249;
    }

    goto LABEL_250;
  }

  v72 = __s;
  if (!v221)
  {
    goto LABEL_300;
  }

  v77 = v220;
  if (v220)
  {
    v78 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_267;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v220);
    --qword_1ED456A90;
    off_1ED452EB0(v220);
    v77 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v78 = &xmmword_1ED452F28;
LABEL_267:
      (*v78)(v77);
    }
  }

  if (__s)
  {
    v79 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_274;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(__s);
    --qword_1ED456A90;
    off_1ED452EB0(__s);
    v72 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v79 = &xmmword_1ED452F28;
LABEL_274:
      (*v79)(v72);
    }
  }

  if (v232)
  {
    v220 = 0;
    v72 = 0;
    a1 = v210;
    if (!v234)
    {
      goto LABEL_277;
    }

LABEL_301:
    v81 = 0;
    v18 = 0;
    v71 = v214;
    goto LABEL_314;
  }

  v92 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v93 = v222;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
    --qword_1ED456A90;
    off_1ED452EB0(v17);
    v17 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v92 = &xmmword_1ED452F28;
      goto LABEL_423;
    }
  }

  else
  {
    v93 = v222;
LABEL_423:
    (*v92)(v17);
  }

  v137 = a5[1];
  v235[0] = 0;
  v138 = sqlite3_mprintf("SELECT * FROM %Q.%Q", v137, v221);
  if (!v138)
  {
    v143 = 7;
    goto LABEL_439;
  }

  v140 = v138;
  v141 = sub_1818954B4(v93, v138, 0xFFFFFFFFLL, 0, 0, v235, 0, v139);
  v142 = v93;
  v143 = v141;
  if (v141)
  {
    v144 = sqlite3_errmsg(v142);
    sub_1819AD2A4(v223, "%s", v144);
  }

  v145 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v140);
    --qword_1ED456A90;
    off_1ED452EB0(v140);
    v140 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v145 = &xmmword_1ED452F28;
      goto LABEL_432;
    }
  }

  else
  {
LABEL_432:
    (*v145)(v140);
  }

  if (v143)
  {
LABEL_439:
    v17 = 0;
    v81 = 0;
    v220 = 0;
    v18 = 0;
    v234 = v143;
    v72 = 0;
    v71 = v214;
    goto LABEL_314;
  }

  v146 = v235[0];
  if (!v235[0])
  {
    goto LABEL_496;
  }

  v147 = *(*v235[0] + 24);
  if (v147)
  {
    xmmword_1ED452F18(v147);
    v148 = *(*v146 + 24);
    v149 = v146[130];
    if (v148)
    {
      xmmword_1ED452F28(v148);
    }
  }

  else
  {
    v149 = *(v235[0] + 130);
  }

  if (v149)
  {
    v172 = 0;
    v173 = 0;
    do
    {
      v174 = sub_18190C804(v235[0], v172, 0, 0);
      v173 += strlen(v174) + 1;
      ++v172;
    }

    while (v149 != v172);
    v175 = 0;
    v232 = v149;
    v176 = v149;
  }

  else
  {
LABEL_496:
    v232 = 0;
    v176 = 0;
    v173 = 0;
    v175 = 1;
  }

  v177 = 7;
  if (sqlite3_initialize())
  {
    v17 = 0;
  }

  else
  {
    v178 = sub_181902484(v173 + 8 * v176, 0x10040436913F5);
    v17 = v178;
    if (v178)
    {
      v179 = v175;
    }

    else
    {
      v179 = 1;
    }

    if (v178)
    {
      v177 = 0;
    }

    else
    {
      v177 = 7;
    }

    if ((v179 & 1) == 0)
    {
      v180 = 0;
      v181 = (v178 + 8 * v176);
      do
      {
        v182 = sub_18190C804(v235[0], v180, 0, 0);
        v183 = (strlen(v182) + 1);
        memcpy(v181, v182, v183);
        v17[v180] = v181;
        v181 += v183;
        ++v180;
      }

      while (v176 != v180);
      v177 = 0;
      v16 = v226;
    }
  }

  sqlite3_finalize(v235[0]);
  v220 = 0;
  v234 = v177;
  if (v177 || !v218)
  {
    v229 = v173;
    v72 = 0;
    a1 = v210;
    if (v177)
    {
      goto LABEL_301;
    }

    goto LABEL_277;
  }

  if (!v232)
  {
    v220 = 0;
    v72 = 0;
    v71 = v214;
    a1 = v210;
    goto LABEL_249;
  }

  v184 = 0;
  v185 = v17 + 2;
  v186 = v232;
  v71 = v214;
  v229 = v173;
  while (1)
  {
    v187 = v17[v184];
    if (v187)
    {
      break;
    }

LABEL_513:
    ++v184;
    --v186;
    v185 = (v185 + 8);
    if (v184 == v232)
    {
      v72 = 0;
      v220 = 0;
      a1 = v210;
      goto LABEL_250;
    }
  }

  v188 = v218;
  while (2)
  {
    if (*v188 != *v187)
    {
      if (byte_181A20298[*v188] != byte_181A20298[*v187])
      {
        goto LABEL_513;
      }

      goto LABEL_517;
    }

    if (*v188)
    {
LABEL_517:
      ++v188;
      ++v187;
      continue;
    }

    break;
  }

  a1 = v210;
  if (v232 > v184)
  {
    v189 = v232 - v184;
    if (v189 <= 3)
    {
      goto LABEL_525;
    }

    v184 += v189 & 0xFFFFFFFFFFFFFFFCLL;
    v190 = v186 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v191 = *(v185 + 8);
      *(v185 - 1) = *(v185 - 8);
      *v185 = v191;
      v185 += 2;
      v190 -= 4;
    }

    while (v190);
    if (v189 != (v189 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_525:
      v192 = &v17[v184 + 1];
      v193 = v232 - v184;
      do
      {
        *(v192 - 1) = *v192;
        ++v192;
        --v193;
      }

      while (v193);
    }
  }

  v72 = 0;
  v220 = 0;
  if (!--v232)
  {
LABEL_249:
    *v17 = "content";
    v232 = 1;
    v229 = 8;
  }

LABEL_250:
  if (!v233)
  {
    v234 = sub_1819B8F24(__src, "simple", &v233, v223);
    if (v234)
    {
      v81 = 0;
      v18 = 0;
      goto LABEL_314;
    }
  }

  if (v71)
  {
    v73 = *v71;
    if (*v71)
    {
      v74 = (v71 + 1);
      v75 = 2;
      while (1)
      {
        if (v73 == 44)
        {
          ++v75;
        }

        else if (!v73)
        {
          goto LABEL_280;
        }

        v76 = *v74++;
        v73 = v76;
      }
    }
  }

  v75 = 1;
LABEL_280:
  if (sqlite3_initialize())
  {
    v75 = 0;
    __srca = 0;
    v80 = 7;
    v234 = 7;
    goto LABEL_309;
  }

  v82 = sub_181902484(40 * v75, 0x10200408E4BF7C8);
  if (!v82)
  {
    v75 = 0;
    __srca = 0;
    v80 = 7;
LABEL_308:
    v16 = v226;
    v234 = v80;
    goto LABEL_309;
  }

  __srca = v82;
  bzero(v82, 40 * v75);
  v80 = 0;
  if (!v71 || v75 < 2)
  {
    goto LABEL_308;
  }

  v83 = 1;
  v84 = v71;
  v16 = v226;
  do
  {
    v87 = *v84;
    if ((v87 - 48) > 9)
    {
      v234 = 1;
      sub_1819AD2A4(v223, "error parsing prefix parameter: %s", v71);
      v75 = 0;
      v80 = v234;
      goto LABEL_309;
    }

    v88 = 0;
    v89 = 0;
    v90 = (v84 + 1);
    do
    {
      v89 = 10 * v89 + (v87 - 48);
      if (v89 >> 31)
      {
        v85 = -1;
LABEL_289:
        v86 = &v84[v85];
LABEL_290:
        --v75;
        goto LABEL_291;
      }

      v91 = *v90++;
      LOBYTE(v87) = v91;
      v88 += 0x100000000;
    }

    while ((v91 - 48) < 0xA);
    v85 = v88 >> 32;
    if (v89 >= 0x989681)
    {
      goto LABEL_289;
    }

    v86 = &v84[v85];
    if (!v89)
    {
      goto LABEL_290;
    }

    __srca[10 * v83++] = v89;
LABEL_291:
    v84 = (v86 + 1);
  }

  while (v83 < v75);
  v80 = 0;
  v234 = 0;
LABEL_309:
  if (v80)
  {
    v18 = 0;
LABEL_313:
    v81 = __srca;
    goto LABEL_314;
  }

  v215 = v71;
  __sa = v72;
  v211 = a1;
  if (sqlite3_initialize() || (v105 = v16 + 1, v106 = v15 + 1, v107 = v106 + v105 + v229 + v232 + 8 * v232 + 40 * v75, (v108 = sub_181902484(v107 + 528, 0x10F0040C4CD2E18)) == 0))
  {
    v18 = 0;
    v234 = 7;
    v72 = __sa;
    goto LABEL_313;
  }

  v18 = v108;
  bzero(v108, v107 + 528);
  *(v18 + 24) = v222;
  *(v18 + 48) = v232;
  *(v18 + 56) = v18 + 528;
  v109 = v233;
  *(v18 + 504) = 0x100000;
  *(v18 + 462) = v224 == 52 && v213;
  *(v18 + 461) = v224 == 52;
  *(v18 + 460) = v224 == 52;
  *(v18 + 463) = BYTE4(v212);
  *(v18 + 96) = 255;
  *(v18 + 72) = v109;
  *(v18 + 80) = v221;
  *(v18 + 88) = v218;
  v110 = (v18 + 528 + 8 * v232);
  *(v18 + 496) = v110;
  memcpy(v110, __srca, 40 * v75);
  *(v18 + 492) = v75;
  if (v75 >= 1)
  {
    v111 = 0;
    do
    {
      v112 = *(v18 + 496) + v111;
      *(v112 + 8) = 257;
      *(v112 + 32) = 0;
      *(v112 + 20) = 0;
      *(v112 + 12) = 0;
      v111 += 40;
    }

    while (40 * v75 != v111);
  }

  v113 = *(v18 + 496) + 40 * v75;
  *(v18 + 64) = v113;
  v114 = (v113 + v232);
  *(v18 + 40) = v114;
  memcpy(v114, a5[2], v105);
  v115 = &v114[v105];
  *(v18 + 32) = v115;
  memcpy(v115, a5[1], v106);
  if (v232 >= 1)
  {
    v116 = 0;
    v117 = &v115[v106];
    while (1)
    {
      v119 = v17[v116];
      v120 = v119 + 1;
      for (i = v119; ; ++i)
      {
        v122 = *i;
        if (v122 > 0x26)
        {
          break;
        }

        if (!*i)
        {
          v130 = 0;
          goto LABEL_407;
        }

        if (v122 == 34)
        {
          goto LABEL_400;
        }

LABEL_385:
        if ((v122 & 0x80) != 0 || byte_181A256CE[*i])
        {
          while (1)
          {
            v123 = *v120;
            if ((v123 & 0x8000000000000000) == 0 && !byte_181A256CE[v123])
            {
              break;
            }

            ++v120;
          }

          goto LABEL_405;
        }

        LODWORD(v119) = v119 + 1;
        ++v120;
      }

      if (v122 != 39 && v122 != 96)
      {
        break;
      }

LABEL_400:
      v120 = (i + 1);
      v127 = i[1];
      if (i[1])
      {
        v128 = i;
        do
        {
          if (v127 == v122)
          {
            v120 = (v128 + 2);
            if (v128[2] != v122)
            {
              break;
            }
          }

          v128 = v120;
          v129 = *++v120;
          v127 = v129;
        }

        while (v129);
      }

LABEL_405:
      v130 = v120 - v119;
      if (v120 - v119 > 0)
      {
        memcpy(v117, i, v130 & 0x7FFFFFFF);
      }

LABEL_407:
      v117[v130] = 0;
      v131 = *v117;
      if ((v131 - 34) <= 0x3E && ((1 << (v131 - 34)) & 0x4200000000000021) != 0)
      {
        if (v131 == 91)
        {
          v131 = 93;
        }

        v133 = v117[1];
        if (v117[1])
        {
          v134 = 0;
          v135 = 1;
          v136 = 1;
          while (1)
          {
            if (v133 == v131)
            {
              if (v117[v135 + 1] != v131)
              {
LABEL_374:
                v118 = v134;
                goto LABEL_375;
              }

              v117[v134] = v131;
              v136 += 2;
            }

            else
            {
              ++v136;
              v117[v134] = v133;
            }

            ++v134;
            v135 = v136;
            v133 = v117[v136];
            if (!v117[v136])
            {
              goto LABEL_374;
            }
          }
        }

        v118 = 0;
LABEL_375:
        v117[v118] = 0;
      }

      *(*(v18 + 56) + 8 * v116) = v117;
      v117 += v130 + 1;
      if (++v116 == v232)
      {
        v150 = 0;
        v151 = v219;
        while (1)
        {
          v152 = strlen(*(*(v18 + 56) + 8 * v150));
          if (v219 >= 1)
          {
            break;
          }

LABEL_443:
          if (++v150 == v232)
          {
            goto LABEL_468;
          }
        }

        v153 = v152;
        v154 = 0;
        v230 = v152 + 1;
        while (2)
        {
          v155 = v19[v154];
          if (v155 && v153 == strlen(v19[v154]))
          {
            if (v153 < 0)
            {
              sub_1819012D0(37608);
              goto LABEL_460;
            }

            v156 = *(*(v18 + 56) + 8 * v150);
            if (v156)
            {
              if (!v153)
              {
                goto LABEL_460;
              }

              v157 = v230;
              v158 = v19[v154];
              while (1)
              {
                v159 = *v156;
                if (!*v156)
                {
                  break;
                }

                LODWORD(v159) = byte_181A20298[v159];
                v160 = byte_181A20298[*v158];
                if (v159 != v160)
                {
                  goto LABEL_466;
                }

                ++v156;
                ++v158;
                if (--v157 <= 1)
                {
                  goto LABEL_460;
                }
              }

              v160 = byte_181A20298[*v158];
LABEL_466:
              if (v159 == v160)
              {
LABEL_460:
                *(*(v18 + 64) + v150) = 1;
                v161 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_446;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v155);
                --qword_1ED456A90;
                off_1ED452EB0(v155);
                v155 = xmmword_1ED456AF0;
                v151 = v219;
                if (xmmword_1ED456AF0)
                {
                  v161 = &xmmword_1ED452F28;
LABEL_446:
                  (*v161)(v155);
                }

                v19[v154] = 0;
              }
            }
          }

          if (++v154 == v151)
          {
            goto LABEL_443;
          }

          continue;
        }
      }
    }

    if (v122 == 91)
    {
      do
      {
        v125 = *v120++;
        v124 = v125;
      }

      while (v125 != 93 && v124 != 0);
      if (!v124)
      {
        LODWORD(v120) = v120 - 1;
      }

      goto LABEL_405;
    }

    goto LABEL_385;
  }

LABEL_468:
  if (v219 <= 0)
  {
    v234 = 0;
    v165 = __sa;
    v166 = v220;
    v81 = __srca;
  }

  else
  {
    v162 = 0;
    v163 = v219;
    v164 = v19;
    v81 = __srca;
    do
    {
      if (*v164)
      {
        sub_1819AD2A4(v223, "no such column: %s", *v164);
        v162 = 1;
      }

      ++v164;
      --v163;
    }

    while (v163);
    v234 = v162;
    v165 = __sa;
    v166 = v220;
    if (v162)
    {
      goto LABEL_480;
    }
  }

  if ((v166 == 0) == (v165 != 0))
  {
    v167 = "uncompress";
    if (!v166)
    {
      v167 = "compress";
    }

    v234 = 1;
    sub_1819AD2A4(v223, "missing %s parameter in fts4 constructor", v167);
  }

LABEL_480:
  v235[0] = 0;
  if (*(v18 + 80))
  {
    sub_1819B9C10(&v234, v235, "rowid");
    if (*(v18 + 48) >= 1)
    {
      v168 = 0;
      do
      {
        sub_1819B9C10(&v234, v235, ", x.'%q'", *(*(v18 + 56) + 8 * v168++));
      }

      while (v168 < *(v18 + 48));
    }

    if (*(v18 + 88))
    {
      sub_1819B9C10(&v234, v235, ", x.%Q", *(v18 + 88));
    }

    goto LABEL_552;
  }

  if (!v165)
  {
    v170 = 0;
    v171 = &byte_181A2878D;
    goto LABEL_540;
  }

  v169 = strlen(v165);
  if (sqlite3_initialize())
  {
    v170 = 0;
LABEL_489:
    v171 = 0;
    goto LABEL_540;
  }

  v194 = sub_181902484(2 * v169 + 3, 335486658);
  v170 = v194;
  if (!v194)
  {
    goto LABEL_489;
  }

  *v194 = 34;
  v195 = v194;
  while (1)
  {
    v196 = *v165;
    if (v196 == 34)
    {
      v195[1] = 34;
      v195 += 2;
      LOBYTE(v196) = *v165;
      goto LABEL_535;
    }

    if (!*v165)
    {
      break;
    }

    ++v195;
LABEL_535:
    *v195 = v196;
    ++v165;
  }

  *(v195 + 1) = 34;
  v171 = v194;
LABEL_540:
  sub_1819B9C10(&v234, v235, "docid");
  if (*(v18 + 48) >= 1)
  {
    v197 = 0;
    do
    {
      sub_1819B9C10(&v234, v235, ",%s(x.'c%d%q')", v171, v197, *(*(v18 + 56) + 8 * v197));
      ++v197;
    }

    while (v197 < *(v18 + 48));
  }

  if (*(v18 + 88))
  {
    sub_1819B9C10(&v234, v235, ", x.%Q", "langid");
  }

  if (v170)
  {
    v198 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_551;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v170);
    --qword_1ED456A90;
    off_1ED452EB0(v170);
    v170 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v198 = &xmmword_1ED452F28;
LABEL_551:
      (*v198)(v170);
    }
  }

LABEL_552:
  v199 = *(v18 + 80);
  if (v199)
  {
    v200 = &byte_181A2878D;
  }

  else
  {
    v199 = *(v18 + 40);
    v200 = "_content";
  }

  v201 = v220;
  sub_1819B9C10(&v234, v235, " FROM '%q'.'%q%s' AS x", *(v18 + 32), v199, v200);
  *(v18 + 440) = v235[0];
  v235[0] = 0;
  if (!v220)
  {
    v203 = &byte_181A2878D;
    goto LABEL_568;
  }

  v202 = strlen(v220);
  if (sqlite3_initialize())
  {
    v201 = 0;
LABEL_558:
    v203 = 0;
    goto LABEL_568;
  }

  v204 = sub_181902484(2 * v202 + 3, 335486658);
  v201 = v204;
  if (!v204)
  {
    goto LABEL_558;
  }

  *v204 = 34;
  v205 = v220;
  v206 = v204;
  while (2)
  {
    v207 = *v205;
    if (v207 == 34)
    {
      v206[1] = 34;
      v206 += 2;
      LOBYTE(v207) = *v205;
LABEL_563:
      *v206 = v207;
      ++v205;
      continue;
    }

    break;
  }

  if (*v205)
  {
    ++v206;
    goto LABEL_563;
  }

  *(v206 + 1) = 34;
  v203 = v204;
LABEL_568:
  sub_1819B9C10(&v234, v235, "?");
  if (*(v18 + 48) >= 1)
  {
    v208 = 0;
    do
    {
      sub_1819B9C10(&v234, v235, ",%s(?)", v203);
      ++v208;
    }

    while (v208 < *(v18 + 48));
  }

  if (*(v18 + 88))
  {
    sub_1819B9C10(&v234, v235, ", ?");
  }

  if (v201)
  {
    v209 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_579;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v201);
    --qword_1ED456A90;
    off_1ED452EB0(v201);
    v201 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v209 = &xmmword_1ED452F28;
LABEL_579:
      (*v209)(v201);
    }
  }

  *(v18 + 448) = v235[0];
  if (v234)
  {
    v221 = 0;
    v218 = 0;
    v71 = v215;
    v72 = __sa;
  }

  else
  {
    v71 = v215;
    v72 = __sa;
    if (v211)
    {
      v234 = sub_1819B9668(v18);
    }

    else if (v224 != 52)
    {
      *(v18 + 461) = 2;
    }

    sub_1819B9880(&v234, v18);
    *(v18 + 456) = *(v18 + 468) - 35;
    sub_1819B99D8(&v234, v18);
    v221 = 0;
    v218 = 0;
  }

LABEL_314:
  if (v71)
  {
    v94 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_320;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v71);
    --qword_1ED456A90;
    off_1ED452EB0(v71);
    v71 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v94 = &xmmword_1ED452F28;
LABEL_320:
      (*v94)(v71);
    }
  }

  v95 = v220;
  if (v81)
  {
    v96 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_327;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v81);
    --qword_1ED456A90;
    off_1ED452EB0(v81);
    v81 = xmmword_1ED456AF0;
    v95 = v220;
    if (xmmword_1ED456AF0)
    {
      v96 = &xmmword_1ED452F28;
LABEL_327:
      (*v96)(v81);
    }
  }

  if (v95)
  {
    v97 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_334;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v220);
    --qword_1ED456A90;
    off_1ED452EB0(v220);
    v95 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v97 = &xmmword_1ED452F28;
LABEL_334:
      (*v97)(v95);
    }
  }

  if (v72)
  {
    v98 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_341;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v72);
    --qword_1ED456A90;
    off_1ED452EB0(v72);
    v72 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v98 = &xmmword_1ED452F28;
LABEL_341:
      (*v98)(v72);
    }
  }

  v99 = v218;
  if (v221)
  {
    v100 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_348;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v221);
    --qword_1ED456A90;
    off_1ED452EB0(v221);
    v221 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v100 = &xmmword_1ED452F28;
LABEL_348:
      (*v100)(v221);
    }
  }

  if (v218)
  {
    v101 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_355;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v218);
    --qword_1ED456A90;
    off_1ED452EB0(v218);
    v99 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v101 = &xmmword_1ED452F28;
LABEL_355:
      (*v101)(v99);
    }
  }

  if (v219 >= 1)
  {
    for (j = 0; v219 != j; ++j)
    {
      v104 = v19[j];
      if (v104)
      {
        v103 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v104);
          --qword_1ED456A90;
          off_1ED452EB0(v104);
          v104 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            continue;
          }

          v103 = &xmmword_1ED452F28;
        }

        (*v103)(v104);
      }
    }
  }

LABEL_4:
  if (!v17)
  {
    goto LABEL_11;
  }

  v20 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_10;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
  --qword_1ED456A90;
  off_1ED452EB0(v17);
  v17 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v20 = &xmmword_1ED452F28;
LABEL_10:
    (*v20)(v17);
  }

LABEL_11:
  if (!v19)
  {
    goto LABEL_18;
  }

  v21 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_17;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
  --qword_1ED456A90;
  off_1ED452EB0(v19);
  v19 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v21 = &xmmword_1ED452F28;
LABEL_17:
    (*v21)(v19);
  }

LABEL_18:
  result = v234;
  if (v234)
  {
    if (v18)
    {
      sub_1819B380C(v18);
      return v234;
    }

    else if (v233)
    {
      v70 = v234;
      (*(*v233 + 2))(v233);
      return v70;
    }
  }

  else
  {
    *a6 = v18;
  }

  return result;
}