uint64_t sub_181939484(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 4);
  if (*a1)
  {
    v10 = 0;
  }

  else
  {
    result = sub_1818C6DCC(a1);
    v10 = result;
    if (result)
    {
      return result;
    }
  }

  if (*(a1 + 24))
  {
    v4 = 0;
    v5 = 2 * *(a1 + 24);
    do
    {
      v6 = (*(a1 + 80) + ((*(*(a1 + 96) + v4 + 1) | (*(*(a1 + 96) + v4) << 8)) & *(a1 + 26)));
      if (!v10)
      {
        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        (*(a1 + 128))(a1, v6, v11);
        if (v12 > WORD2(v12))
        {
          v7 = *(a1 + 88);
          if (v7 > v6 && v6 + WORD2(v12) > v7)
          {
            v10 = sub_18190EDA8(80846);
            if (*(a1 + 8))
            {
              goto LABEL_5;
            }

LABEL_14:
            sub_1818EF720(v2, bswap32(*v6), 5, v3, &v10);
            goto LABEL_5;
          }

          sub_1818EF720(*(a1 + 72), bswap32(*(v6 + HIWORD(v12) - 4)), 3, *(a1 + 4), &v10);
        }
      }

      if (!*(a1 + 8))
      {
        goto LABEL_14;
      }

LABEL_5:
      v4 += 2;
    }

    while (v5 != v4);
  }

  if (!*(a1 + 8))
  {
    sub_1818EF720(v2, bswap32(*(*(a1 + 80) + *(a1 + 9) + 8)), 5, v3, &v10);
  }

  return v10;
}

uint64_t sub_18193960C(uint64_t a1, int a2, unsigned int a3, int a4)
{
  if (a4 == 4)
  {
    v7 = *(a1 + 80);
    if (bswap32(*v7) == a2)
    {
      result = 0;
      *v7 = bswap32(a3);
    }

    else
    {

      return sub_18193596C(83113, a1);
    }

    return result;
  }

  if (!*a1)
  {
    result = sub_1818C6DCC(a1);
    if (result)
    {
      return result;
    }
  }

  v10 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a1 + 80);
      v14 = (v13 + ((*(*(a1 + 96) + v11 + 1) | (*(*(a1 + 96) + v11) << 8)) & *(a1 + 26)));
      if (a4 == 3)
      {
        v18[0] = 0;
        v18[1] = 0;
        v19 = 0;
        (*(a1 + 128))(a1, v14, v18);
        if (v19 > WORD2(v19))
        {
          v15 = v14 + HIWORD(v19);
          if (v15 > *(a1 + 80) + *(*(a1 + 72) + 56))
          {
            v17 = 83132;
            return sub_18193596C(v17, a1);
          }

          if (bswap32(*(v15 - 4)) == a2)
          {
            result = 0;
            *(v15 - 4) = bswap32(a3);
            return result;
          }
        }
      }

      else
      {
        if ((v14 + 1) > v13 + *(*(a1 + 72) + 56))
        {
          v17 = 83141;
          return sub_18193596C(v17, a1);
        }

        if (bswap32(*v14) == a2)
        {
          *v14 = bswap32(a3);
          if (v12 == v10)
          {
            break;
          }

          return 0;
        }
      }

      v11 += 2;
      ++v12;
    }

    while (2 * v10 != v11);
  }

  if (a4 == 5 && (v16 = *(a1 + 80) + *(a1 + 9), bswap32(*(v16 + 8)) == a2))
  {
    result = 0;
    *(v16 + 8) = bswap32(a3);
  }

  else
  {
    v17 = 83153;
    return sub_18193596C(v17, a1);
  }

  return result;
}

uint64_t sub_181939854(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = (*(&xmmword_1ED452F70 + 1))(*(v4 + 72));
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = *(v6 + 56);
    if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_18188D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "pcache replacing page with non-zero refcount", v15, 2u);
      v7 = *(v6 + 56);
    }

    *(v6 + 56) = v7 + 1;
    ++*(v4 + 24);
    v8 = *(v6 + 24);
    if ((*(v6 + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

    v9 = *(v6 + 72);
    if (*(v8 + 16) == v6)
    {
      *(v8 + 16) = v9;
      v10 = *(v6 + 64);
      if (v10)
      {
LABEL_8:
        *(v10 + 72) = v9;
        if (!v9)
        {
          *v8 = v10;
LABEL_13:
          --*(v8 + 24);
          xmmword_1ED452F80(*(v8 + 72), *v6, 1);
          goto LABEL_14;
        }

LABEL_12:
        *(v9 + 64) = v10;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *(v6 + 64);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    *(v8 + 8) = v9;
    if (!v9)
    {
      *v8 = 0;
      *(v8 + 49) = 2;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  result = (*(&xmmword_1ED452F80 + 1))(*(v4 + 72), *a1, *(a1 + 48), a2);
  *(a1 + 48) = a2;
  if ((~*(a1 + 52) & 0xA) != 0)
  {
    return result;
  }

  v12 = *(a1 + 24);
  v13 = *(a1 + 72);
  if (v12[2] == a1)
  {
    v12[2] = v13;
  }

  v14 = *(a1 + 64);
  if (!v14)
  {
    v12[1] = v13;
    if (!v13)
    {
      *(v12 + 49) = 2;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      goto LABEL_24;
    }

LABEL_21:
    *(v13 + 64) = v14;
    v14 = *v12;
    *(a1 + 64) = *v12;
    *(a1 + 72) = 0;
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_24:
    v12[1] = a1;
    if (*(v12 + 48))
    {
      *(v12 + 49) = 1;
    }

    goto LABEL_26;
  }

  *(v14 + 72) = v13;
  if (v13)
  {
    goto LABEL_21;
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
LABEL_22:
  *(v14 + 72) = a1;
LABEL_26:
  *v12 = a1;
  return result;
}

_DWORD *sub_181939A3C(_DWORD *result, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  if (!*a4)
  {
    v14 = v4;
    v15 = v5;
    v9 = result;
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    result = (*(result + 16))(result, a3, v12);
    if (v13 > WORD2(v13))
    {
      v10 = *(a2 + 88);
      if (v10 > a3 && a3 + WORD2(v13) > v10)
      {
        result = sub_18190EDA8(80846);
        *a4 = result;
      }

      else
      {
        return sub_1818EF720(*(v9 + 9), bswap32(*(a3 + HIWORD(v13) - 4)), 3, v9[1], a4);
      }
    }
  }

  return result;
}

uint64_t sub_181939AFC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = -4;
  }

  else
  {
    v1 = -5;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 18);
  v5 = v4 + 2 * *(a1 + 24);
  v6 = *(a1 + 80);
  v7 = *(*(a1 + 72) + 56);
  v8 = v1 + v7;
  v9 = 81449;
  for (i = v4 + v6 + 1; ; i += 2)
  {
    v11 = __rev16(*(i - 1));
    if (v11 < v5 || v11 > v8)
    {
      break;
    }

    if ((v11 + (*(a1 + 120))(a1, v6 + v11)) > v7)
    {
      v9 = 81454;
      break;
    }

    if (++v3 >= *(a1 + 24))
    {
      return 0;
    }
  }

  return sub_18193596C(v9, a1);
}

uint64_t sub_181939BFC(uint64_t a1, int a2, int a3)
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
      sub_181932DEC(a1);
    }
  }

  v6 = *(*(a1 + 8) + 16);
  if (!v6)
  {
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  while (!a3 || (v6[1] & 1) != 0)
  {
    v8 = *(v6 + 3);
    if (v8)
    {
      v9 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v8);
        --qword_1ED456A90;
        off_1ED452EB0(v8);
        v8 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_8;
        }

        v9 = &xmmword_1ED452F28;
      }

      (*v9)(v8);
    }

LABEL_8:
    *(v6 + 3) = 0;
    *v6 = 4;
    *(v6 + 1) = a2;
LABEL_9:
    sub_1819388DC(v6);
    v6 = *(v6 + 5);
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  v7 = *v6;
  if ((v7 | 2) != 2)
  {
    goto LABEL_9;
  }

  if ((v6[1] & 0x40) != 0)
  {
    v11 = 2835;
    if (!*(a1 + 17))
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v7 == 2)
  {
    *v6 = 0;
  }

  else
  {
    *(v6 + 1) = 0;
  }

  v10 = sub_1819389F0(v6);
  if (!v10)
  {
    sub_1819388DC(v6);
    *v6 = 3;
    v6[1] &= 0xF1u;
    goto LABEL_9;
  }

  v11 = v10;
  v6[1] &= 0xF1u;
  if (!*(a1 + 17))
  {
    goto LABEL_36;
  }

LABEL_34:
  ++*(a1 + 20);
  if (!*(a1 + 18))
  {
    sub_181932DEC(a1);
  }

LABEL_36:
  v14 = *(*(a1 + 8) + 16);
  if (v14)
  {
    while (2)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        v16 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_38;
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
LABEL_38:
          (*v16)(v15);
        }
      }

      *(v14 + 24) = 0;
      *v14 = 4;
      *(v14 + 4) = v11;
      sub_1819388DC(v14);
      v14 = *(v14 + 40);
      if (!v14)
      {
        break;
      }

      continue;
    }
  }

  if (*(a1 + 17))
  {
    v17 = *(a1 + 20) - 1;
    *(a1 + 20) = v17;
    if (!v17)
    {
      sub_181932ECC(a1);
    }

LABEL_26:
    if (*(a1 + 17))
    {
      v12 = *(a1 + 20) - 1;
      *(a1 + 20) = v12;
      if (!v12)
      {
        sub_181932ECC(a1);
      }
    }
  }

  return v11;
}

void *sub_181939EC8(void *result, void *a2)
{
  if (result[64] > a2)
  {
    if (result[62] <= a2)
    {
      *a2 = result[61];
      result[61] = a2;
      return result;
    }

    if (result[63] <= a2)
    {
      *a2 = result[59];
      result[59] = a2;
      return result;
    }
  }

  if (result[103])
  {

    return sub_181929DC0(result, a2);
  }

  if (!a2)
  {
    return result;
  }

  v2 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    v3 = a2;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    a2 = v3;
  }

  v4 = a2;
  qword_1ED456A48 -= xmmword_1ED452EC0(a2);
  --qword_1ED456A90;
  result = off_1ED452EB0(v4);
  a2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v2 = &xmmword_1ED452F28;
LABEL_15:
    v5 = *v2;

    return v5(a2);
  }

  return result;
}

void *sub_18193A000(void *a1, uint64_t a2)
{
  if ((*(*(a2 + 8) + 4) & 0x10) != 0)
  {
    v3 = a1;
    v4 = a2;
    sub_181939EC8(a1, *(a2 + 8));
    a1 = v3;
    a2 = v4;
    v2 = vars8;
  }

  return sub_181939EC8(a1, a2);
}

void *sub_18193A050(void *a1, uint64_t a2)
{
  if (*(a2 + 32) && *(a2 + 40))
  {
    v3 = a1;
    v4 = a2;
    sub_181929C84(a1, *(a2 + 40));
    a1 = v3;
    a2 = v4;
    v2 = vars8;
  }

  return sub_181939EC8(a1, a2);
}

void *sub_18193A0A4(void *result)
{
  v1 = *result;
  v2 = *(result + 6) - 1;
  *(result + 6) = v2;
  if (!v2)
  {
    v3 = result;
    v4 = result[2];
    v5 = v1;
    if (v4)
    {
      (*(*v4 + 32))(v4);
      v5 = *v3;
    }

    v6 = v3[1];
    v7 = *(v6 + 16) - 1;
    *(v6 + 16) = v7;
    if (!v7)
    {
      v8 = *(v6 + 32);
      if (v8)
      {
        v8(*(v6 + 24));
      }

      sub_181929C84(v5, v6);
    }

    return sub_181929C84(v1, v3);
  }

  return result;
}

uint64_t sub_18193A154(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*v4 >= 2 && (v5 = *(v4 + 136)) != 0)
  {
    result = v5();
    v7 = 0;
  }

  else
  {
    v9 = 0.0;
    result = (*(v4 + 120))(v4, &v9);
    v7 = (v9 * 86400000.0);
  }

  *&v9 = 1000000 * (v7 - *(a2 + 184));
  v8 = a1[32];
  if (v8)
  {
    result = v8(a1[33], *(a2 + 320));
  }

  if ((*(a1 + 110) & 2) != 0)
  {
    result = (a1[30])(2, a1[31], a2, &v9);
  }

  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_18193A224()
{
  v0 = getenv("SQLITE_ACCEPTABLE_RATIO_VM_STEP_TO_STEP");
  if (!v0)
  {
    v0 = "10000.0";
  }

  qword_1ED456C60 = atof(v0);
  v1 = getenv("SQLITE_ACCEPTABLE_OVERALL_VM_STEP");
  if (!v1)
  {
    v1 = "50000";
  }

  qword_1ED456C68 = atoll(v1);
  v2 = getenv("SQLITE_ACCEPTABLE_PAGES_PER_STEP");
  if (!v2)
  {
    v2 = "200";
  }

  result = atoll(v2);
  qword_1ED456C70 = result;
  return result;
}

char *sub_18193A2B0(const char *a1, char **a2, int a3)
{
  if (!a3)
  {
    v5 = 128;
    result = *a2;
    if (*a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = 4096;
  }

  else
  {
    v5 = 128;
  }

  result = *a2;
  if (!*a2)
  {
LABEL_8:
    if (strlen(a1) <= v5)
    {
      return a1;
    }

    else
    {
      v7 = strndup(a1, v5);
      result = a1;
      if (v7)
      {
        v8 = &v7[v5];
        *(v8 - 3) = 11822;
        *(v8 - 1) = 46;
        *a2 = v7;
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_18193A368(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 52);
  if (*(a1 + 168))
  {
    ++*(v1 + 104);
    if (off_1EA831A10)
    {
      off_1EA831A10(a1);
    }

    v4 = *(v1 + 416);
    if (!v4)
    {
      v4 = sub_181929E8C(v1, 0x40uLL, 0x10F2040695A4BFELL);
      if (!v4)
      {
        *(v1 + 416) = 0;
        goto LABEL_8;
      }

      *(v4 + 32) = 0u;
      *(v4 + 48) = 0u;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 20) = 1;
      *(v4 + 24) = v1;
      *(v1 + 416) = v4;
    }

    v4 = sub_1818900D0(v4, *(a1 + 168), -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
LABEL_8:
    if (off_1EA831A18)
    {
      off_1EA831A18(v4);
    }

    --*(v1 + 104);
    goto LABEL_11;
  }

  v6 = *(v1 + 416);
  if (v6)
  {
    if ((*(v6 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v6);
    }

    else
    {
      *(v6 + 20) = 1;
    }
  }

LABEL_11:
  *(v1 + 80) = v2;
  *(v1 + 84) = -1;
  return v2;
}

_DWORD *sub_18193A470(_DWORD *result)
{
  v1 = result[69];
  if (v1)
  {
    v2 = result;
    v3 = *(*result + 40);
    if (v3 >= 1)
    {
      v4 = *(*result + 32);
      if (v1)
      {
        result = *(v4 + 8);
        if (result)
        {
          if (*(result + 17))
          {
            ++result[5];
            if (!*(result + 18))
            {
              result = sub_181932DEC(result);
            }
          }
        }
      }

      if (v3 >= 3)
      {
        v5 = (v4 + 72);
        for (i = 2; i != v3; ++i)
        {
          if ((v2[69] >> i))
          {
            result = *v5;
            if (*v5)
            {
              if (*(result + 17))
              {
                ++result[5];
                if (!*(result + 18))
                {
                  result = sub_181932DEC(result);
                }
              }
            }
          }

          v5 += 4;
        }
      }
    }
  }

  return result;
}

void *sub_18193A540(void *result)
{
  v1 = result;
  for (i = result[95]; i; i = v1[95])
  {
    v1[95] = i[3];
    result = sub_181929C84(v1, i);
  }

  *(v1 + 796) = 0;
  *(v1 + 109) = 0;
  return result;
}

uint64_t sub_18193A58C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!(((*(*a1 + 816) + *(*a1 + 808)) < 0) ^ __OFADD__(*(*a1 + 816), *(*a1 + 808)) | (*(*a1 + 816) + *(*a1 + 808) == 0)))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(a1 + 80) < 1)
  {
    return 0;
  }

LABEL_3:
  *(a1 + 52) = 787;
  *(a1 + 264) = 2;
  sub_18193B8C4(a1, "FOREIGN KEY constraint failed", a3, a4, a5, a6, a7, a8, v8);
  if (*(a1 + 266) >= 0)
  {
    return 1;
  }

  else
  {
    return 787;
  }
}

uint64_t sub_18193A604(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(v2 + 120) + 8 * i);
      if (v5)
      {
        sub_18193A6F4(v2, v5);
        *(*(v2 + 120) + 8 * i) = 0;
        v3 = *(v2 + 40);
      }
    }
  }

  v6 = a1[3];
  *(v2 + 136) = a1[2];
  v7 = *(a1 + 21);
  *(v2 + 144) = *(a1 + 20);
  *(v2 + 104) = v6;
  *(v2 + 120) = a1[4];
  v8 = *(a1 + 18);
  *(v2 + 36) = v7;
  *(v2 + 40) = v8;
  v9 = *v2;
  v9[7] = a1[7];
  v10 = a1[13];
  *(v2 + 56) = a1[12];
  v9[15] = v10;
  while (1)
  {
    v11 = *(v2 + 384);
    if (!v11)
    {
      break;
    }

    v12 = v11[2];
    if (v12)
    {
      v12(v11[1]);
    }

    *(v2 + 384) = v11[3];
    sub_181929C84(v9, v11);
  }

  *(v2 + 384) = a1[8];
  a1[8] = 0;
  return *(a1 + 19);
}

void **sub_18193A6F4(void **result, unsigned __int8 *a2)
{
  if ((a2[5] & 0x10) != 0)
  {

    return sub_18193AA68(result, a2);
  }

  v2 = *a2;
  if (!*a2)
  {
    v11 = *(a2 + 5);
    v12 = v11[1];
    if (!v12)
    {
      return result;
    }

    v13 = v11[4];
    if (*(v12 + 17))
    {
      ++*(v12 + 20);
      if (!*(v12 + 18))
      {
        sub_181932DEC(v12);
      }
    }

    v14 = *(v13 + 16);
    v15 = (v13 + 16);
    if (v14 != v11)
    {
      while (1)
      {
        v16 = v14[5];
        if (v16 == v11)
        {
          break;
        }

        v14 = v14[5];
        if (!v16)
        {
          goto LABEL_30;
        }
      }

      v15 = v14 + 5;
    }

    *v15 = v11[5];
LABEL_30:
    result = sub_1819388DC(v11);
    if (!*(v13 + 36))
    {
      v22 = *(v13 + 24);
      if (v22)
      {
        *(v13 + 24) = 0;
        v23 = *(v22 + 112);
        v24 = *(v23 + 40);
        result = sub_181932B68(v23);
        if (!*(*(v24 + 336) + 24))
        {
          result = sub_181934964(v24);
        }
      }
    }

    v17 = v11[2];
    if (v17)
    {
      v18 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_37:
        result = (*v18)(v17);
        goto LABEL_38;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v17);
      --qword_1ED456A90;
      result = off_1ED452EB0(v17);
      v17 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v18 = &xmmword_1ED452F28;
        goto LABEL_37;
      }
    }

LABEL_38:
    v19 = v11[3];
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
        result = off_1ED452EB0(v19);
        v19 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_45;
        }

        v20 = &xmmword_1ED452F28;
      }

      result = (*v20)(v19);
    }

LABEL_45:
    if ((*(v13 + 32) & 4) != 0 && !*(v13 + 16))
    {
      result = sub_1818E3028(v12);
    }

    else if (*(v12 + 17))
    {
      v21 = *(v12 + 20) - 1;
      *(v12 + 20) = v21;
      if (!v21)
      {
        result = sub_181932ECC(v12);
      }
    }

    v11[1] = 0;
    return result;
  }

  if (v2 == 2)
  {
    v8 = *(a2 + 5);
    v9 = **v8;
    --*(*v8 + 2);
    v10 = *(v9 + 56);

    return v10();
  }

  else if (v2 == 1)
  {
    v3 = *(a2 + 5);
    if (v3)
    {
      v5 = *result;
      sub_18193AC54(*result, *(a2 + 5));
      v6 = v3[8];
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
            goto LABEL_13;
          }

          v7 = &xmmword_1ED452F28;
        }

        (*v7)(v6);
      }

LABEL_13:
      result = sub_181929C84(v5, v3);
      *(a2 + 5) = 0;
    }
  }

  return result;
}

uint64_t sub_18193AA68(void **a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  *(a2 + 5) &= ~0x10u;
  *(a2 + 104) = 0;
  v5 = *v4;
  if (*v4)
  {
    v8 = *(v5 - 8);
    v7 = (v5 - 8);
    v6 = v8;
    if (v8 < 2)
    {
      v9 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v7);
        --qword_1ED456A90;
        off_1ED452EB0(v7);
        v7 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_10;
        }

        v9 = &xmmword_1ED452F28;
      }

      (*v9)(v7);
    }

    else
    {
      *v7 = v6 - 1;
    }

LABEL_10:
    *v4 = 0;
  }

  sub_181929C84(*a1, v4);

  return sub_18193A6F4(a1, a2);
}

void *sub_18193AB78(uint64_t a1)
{
  v3 = *(a1 - 8);
  result = (a1 - 8);
  v2 = v3;
  if (v3 >= 2)
  {
    *result = v2 - 1;
    return result;
  }

  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_9;
  }

  if (xmmword_1ED456AF0)
  {
    v5 = result;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    result = v5;
  }

  v6 = result;
  qword_1ED456A48 -= xmmword_1ED452EC0(result);
  --qword_1ED456A90;
  off_1ED452EB0(v6);
  result = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
LABEL_9:
    v7 = *v4;

    return v7(result);
  }

  return result;
}

void *sub_18193AC54(void *a1, uint64_t a2)
{
  if (*(a2 + 91))
  {
    v3 = *(a2 + 91) + 1;
    v4 = (a2 + 96 * *(a2 + 91));
    do
    {
      v5 = *v4;
      if (!*v4)
      {
        goto LABEL_5;
      }

      if (*v5)
      {
        (*v5)(*(v5 + 8));
      }

      v6 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_4;
        }

        v6 = &xmmword_1ED452F28;
      }

      (*v6)(v5);
LABEL_4:
      *(v4 + 2) = 0;
      *v4 = 0;
LABEL_5:
      --v3;
      v4 -= 12;
    }

    while (v3 > 1);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 32);
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v8);
      --qword_1ED456A90;
      off_1ED452EB0(v8);
      v8 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_22:
        v10 = *(v7 + 48);
        if (!v10)
        {
          goto LABEL_29;
        }

        v11 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v10);
          --qword_1ED456A90;
          off_1ED452EB0(v10);
          v10 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_29:
            if (*(v7 + 64))
            {
              (*(**(v7 + 24) + 144))(*(v7 + 24), 0);
            }

            v12 = *(v7 + 72);
            if (!v12)
            {
              goto LABEL_67;
            }

            if (!*(v12 + 8))
            {
              goto LABEL_61;
            }

            v13 = *v12;
            v14 = **v12;
            if (!v14)
            {
LABEL_43:
              v16 = v12[5];
              if (v16)
              {
                if (*v16)
                {
                  (*(*v16 + 8))(v12[5]);
                  *v16 = 0;
                }

                v17 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48 -= xmmword_1ED452EC0(v16);
                  --qword_1ED456A90;
                  off_1ED452EB0(v16);
                  v16 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_52;
                  }

                  v17 = &xmmword_1ED452F28;
                }

                (*v17)(v16);
              }

LABEL_52:
              v18 = v12[7];
              if (!v18)
              {
                goto LABEL_61;
              }

              if (*v18)
              {
                (*(*v18 + 8))(v12[7]);
                *v18 = 0;
              }

              v19 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_60;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v18);
              --qword_1ED456A90;
              off_1ED452EB0(v18);
              v18 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v19 = &xmmword_1ED452F28;
LABEL_60:
                (*v19)(v18);
              }

LABEL_61:
              sub_18193B3CC(v12[1]);
              v20 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48 -= xmmword_1ED452EC0(v12);
                --qword_1ED456A90;
                off_1ED452EB0(v12);
                v12 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_67;
                }

                v20 = &xmmword_1ED452F28;
              }

              (*v20)(v12);
LABEL_67:
              *(v7 + 48) = 0u;
              *(v7 + 64) = 0u;
              *(v7 + 16) = 0u;
              *(v7 + 32) = 0u;
              *v7 = 0u;
              v21 = *(a2 + 16);
              if (v21)
              {
                sub_181929C84(a1, v21);
              }

              *(a2 + 16) = 0;
              goto LABEL_70;
            }

            if (*v14)
            {
              (*v14)(*(v14 + 8));
            }

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
                goto LABEL_42;
              }

              v15 = &xmmword_1ED452F28;
            }

            (*v15)(v14);
LABEL_42:
            *(v13 + 2) = 0;
            *v13 = 0;
            goto LABEL_43;
          }

          v11 = &xmmword_1ED452F28;
        }

        (*v11)(v10);
        goto LABEL_29;
      }

      v9 = &xmmword_1ED452F28;
    }

    (*v9)(v8);
    goto LABEL_22;
  }

LABEL_70:
  result = sub_18193B3CC(*(a2 + 24));
  *(a2 + 24) = 0;
  if (*(a2 + 91))
  {
    v23 = 0;
    while (1)
    {
      v24 = a2 + 96 + 96 * v23;
      v25 = *(v24 + 24);
      if (v25)
      {
        result = sub_181929C84(a1, v25);
      }

      v26 = *(v24 + 40);
      if (!v26)
      {
        break;
      }

      v27 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_82;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v26);
      --qword_1ED456A90;
      result = off_1ED452EB0(v26);
      v26 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v27 = &xmmword_1ED452F28;
LABEL_82:
        result = (*v27)(v26);
      }

LABEL_84:
      v29 = *(v24 + 64);
      if (!v29)
      {
        goto LABEL_93;
      }

      if (*v29)
      {
        (*(*v29 + 8))(*(v24 + 64));
        *v29 = 0;
      }

      v30 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_92;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v29);
      --qword_1ED456A90;
      result = off_1ED452EB0(v29);
      v29 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v30 = &xmmword_1ED452F28;
LABEL_92:
        result = (*v30)(v29);
      }

LABEL_93:
      v31 = *(v24 + 80);
      if (v31)
      {
        if (*v31)
        {
          (*(*v31 + 8))(*(v24 + 80));
          *v31 = 0;
        }

        v32 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v31);
          --qword_1ED456A90;
          result = off_1ED452EB0(v31);
          v31 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_73;
          }

          v32 = &xmmword_1ED452F28;
        }

        result = (*v32)(v31);
      }

LABEL_73:
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 16) = a2;
      if (++v23 >= *(a2 + 91))
      {
        goto LABEL_108;
      }
    }

    v28 = *(v24 + 32);
    if (!v28)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v33 = *(v28 + 8);
      v34 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v28);
        --qword_1ED456A90;
        result = off_1ED452EB0(v28);
        v28 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_102;
        }

        v34 = &xmmword_1ED452F28;
      }

      result = (*v34)(v28);
LABEL_102:
      v28 = v33;
      if (!v33)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_108:
  if (!*(a2 + 64))
  {
    v36 = *(a2 + 56);
    if (v36)
    {
      do
      {
        v37 = *(v36 + 8);
        v38 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v36);
          --qword_1ED456A90;
          result = off_1ED452EB0(v36);
          v36 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_115;
          }

          v38 = &xmmword_1ED452F28;
        }

        result = (*v38)(v36);
LABEL_115:
        v36 = v37;
      }

      while (v37);
    }
  }

  *(a2 + 56) = 0;
  *(a2 + 72) = 0;
  *(a2 + 88) = 0;
  *(a2 + 80) = 0;
  *(a2 + 8) = 0;
  v35 = *(a2 + 48);
  if (v35)
  {
    result = sub_181929C84(a1, v35);
  }

  *(a2 + 48) = 0;
  return result;
}

int *sub_18193B3CC(int *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = &dword_1ED452E80;
  v3 = &unk_1ED456000;
  v4 = &off_1ED452EB0;
  if (*result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v36 = result;
    while (1)
    {
      v7 = *(v1 + 3);
      v8 = v7 + v5;
      v9 = *(v7 + v5 + 32);
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = (v2 + 12);
      if (!*v2)
      {
        goto LABEL_12;
      }

      v11 = v3[350];
      if (v11)
      {
        xmmword_1ED452F18(v11);
      }

      qword_1ED456A48 -= v4[2](v9);
      --qword_1ED456A90;
      (*v4)(v9);
      v9 = v3[350];
      if (v9)
      {
        break;
      }

LABEL_13:
      v12 = *(v8 + 48);
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = (v2 + 12);
      if (!*v2)
      {
        goto LABEL_19;
      }

      v14 = v3[350];
      if (v14)
      {
        xmmword_1ED452F18(v14);
      }

      qword_1ED456A48 -= v4[2](v12);
      --qword_1ED456A90;
      (*v4)(v12);
      v12 = v3[350];
      if (v12)
      {
        v13 = (v4 + 15);
LABEL_19:
        (*v13)(v12);
      }

LABEL_20:
      v15 = v7 + v5;
      if (*(v7 + v5 + 64))
      {
        (*(**(v15 + 24) + 144))(*(v15 + 24), 0);
      }

      v16 = *(v15 + 72);
      if (!v16)
      {
        goto LABEL_5;
      }

      if (!v16[8])
      {
        goto LABEL_52;
      }

      v17 = v2;
      v18 = v4;
      v19 = v3;
      v20 = *v16;
      v21 = **v16;
      if (v21)
      {
        if (*v21)
        {
          (*v21)(*(v21 + 8));
        }

        v22 = (v17 + 12);
        if (*v17)
        {
          v23 = v19[350];
          if (v23)
          {
            xmmword_1ED452F18(v23);
          }

          qword_1ED456A48 -= v18[2](v21);
          --qword_1ED456A90;
          (*v18)(v21);
          v21 = v19[350];
          v1 = v36;
          if (v21)
          {
            v22 = (v18 + 15);
            goto LABEL_32;
          }
        }

        else
        {
LABEL_32:
          (*v22)(v21);
        }

        *(v20 + 2) = 0;
        *v20 = 0;
      }

      v24 = *(v16 + 5);
      v3 = v19;
      v4 = v18;
      v2 = v17;
      if (!v24)
      {
        goto LABEL_43;
      }

      if (*v24)
      {
        (*(*v24 + 8))(*(v16 + 5));
        *v24 = 0;
      }

      v25 = (v17 + 12);
      if (!*v17)
      {
        goto LABEL_42;
      }

      v26 = v3[350];
      if (v26)
      {
        xmmword_1ED452F18(v26);
      }

      qword_1ED456A48 -= v4[2](v24);
      --qword_1ED456A90;
      (*v4)(v24);
      v24 = v3[350];
      if (v24)
      {
        v25 = (v4 + 15);
LABEL_42:
        (*v25)(v24);
      }

LABEL_43:
      v27 = *(v16 + 7);
      if (!v27)
      {
        goto LABEL_52;
      }

      if (*v27)
      {
        (*(*v27 + 8))(*(v16 + 7));
        *v27 = 0;
      }

      v28 = (v17 + 12);
      if (!*v17)
      {
        goto LABEL_51;
      }

      v29 = v3[350];
      if (v29)
      {
        xmmword_1ED452F18(v29);
      }

      qword_1ED456A48 -= v4[2](v27);
      --qword_1ED456A90;
      (*v4)(v27);
      v27 = v3[350];
      if (v27)
      {
        v28 = (v4 + 15);
LABEL_51:
        (*v28)(v27);
      }

LABEL_52:
      sub_18193B3CC(*(v16 + 1));
      v30 = (v2 + 12);
      if (*v2)
      {
        v31 = v3[350];
        if (v31)
        {
          xmmword_1ED452F18(v31);
        }

        qword_1ED456A48 -= v4[2](v16);
        --qword_1ED456A90;
        (*v4)(v16);
        v16 = v3[350];
        if (!v16)
        {
          goto LABEL_5;
        }

        v30 = (v4 + 15);
      }

      (*v30)(v16);
LABEL_5:
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *v8 = 0u;
      ++v6;
      v5 += 80;
      if (v6 >= *v1)
      {
        goto LABEL_57;
      }
    }

    v10 = (v4 + 15);
LABEL_12:
    (*v10)(v9);
    goto LABEL_13;
  }

LABEL_57:
  v33 = *v2;
  v32 = (v2 + 12);
  if (!v33)
  {
    goto LABEL_62;
  }

  v34 = v3[350];
  if (v34)
  {
    xmmword_1ED452F18(v34);
  }

  qword_1ED456A48 -= v4[2](v1);
  --qword_1ED456A90;
  result = (*v4)(v1);
  v1 = v3[350];
  if (v1)
  {
    v32 = v4 + 15;
LABEL_62:
    v35 = *v32;

    return v35(v1);
  }

  return result;
}

uint64_t sub_18193B858(uint64_t a1)
{
  if (*(a1 + 11) || (result = (*(**(a1 + 80) + 40))(*(a1 + 80), 2), !result))
  {
    v2 = *(**(a1 + 80) + 48);

    return v2();
  }

  return result;
}

void *sub_18193B8C4(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a1[21];
  if (v10)
  {
    v11 = a2;
    sub_181929C84(*a1, v10);
    a2 = v11;
  }

  v12 = *a1;
  v27 = 0x10000000000;
  v13 = *(v12 + 136);
  v23 = v12;
  v24 = &v28;
  v25 = 512;
  v26 = v13;
  sqlite3_str_vappendf(&v23, a2, &a9);
  if (v24 && (v24[v27] = 0, v26) && (v27 & 0x40000000000) == 0)
  {
    result = sub_18192A12C(&v23);
  }

  else
  {
    result = v24;
  }

  if (BYTE4(v27) == 7 && !*(v12 + 103) && !*(v12 + 104))
  {
    *(v12 + 103) = 1;
    if (*(v12 + 220) >= 1)
    {
      *(v12 + 424) = 1;
    }

    ++*(v12 + 432);
    *(v12 + 436) = 0;
    if (*(v12 + 344))
    {
      v21 = result;
      sub_181910730(*(v12 + 344), "out of memory", v14, v15, v16, v17, v18, v19, &a9);
      result = v21;
      for (i = *(v12 + 344); ; ++*(i + 52))
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

  a1[21] = result;
  return result;
}

uint64_t sub_18193BA2C(uint64_t result)
{
  v1 = *(*result + 40);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = *(*result + 32);
    if (*(result + 276))
    {
      result = *(v3 + 8);
      if (result)
      {
        if (*(result + 17))
        {
          v4 = *(result + 20) - 1;
          *(result + 20) = v4;
          if (!v4)
          {
            result = sub_181932ECC(result);
          }
        }
      }
    }

    if (v1 >= 3)
    {
      v5 = (v3 + 72);
      for (i = 2; i != v1; ++i)
      {
        if ((*(v2 + 276) >> i))
        {
          result = *v5;
          if (*v5)
          {
            if (*(result + 17))
            {
              v7 = *(result + 20) - 1;
              *(result + 20) = v7;
              if (!v7)
              {
                result = sub_181932ECC(result);
              }
            }
          }
        }

        v5 += 4;
      }
    }
  }

  return result;
}

int *sub_18193BAEC(int *result)
{
  v1 = *(result + 75);
  if (v1)
  {
    v2 = result;
    *(result + 75) = 0;
    if (result[141] >= 1)
    {
      v3 = 0;
      do
      {
        v4 = v1[v3];
        v5 = *(v4 + 16);
        if (v5)
        {
          v6 = *(*v5 + 128);
          if (v6)
          {
            v6();
          }
        }

        *(v4 + 32) = 0;
        v7 = *v4;
        v8 = *(v4 + 24) - 1;
        *(v4 + 24) = v8;
        if (!v8)
        {
          v9 = *(v4 + 16);
          v10 = v7;
          if (v9)
          {
            (*(*v9 + 32))(v9);
            v10 = *v4;
          }

          v11 = *(v4 + 8);
          v12 = *(v11 + 16) - 1;
          *(v11 + 16) = v12;
          if (!v12)
          {
            v13 = *(v11 + 32);
            if (v13)
            {
              v13(*(v11 + 24));
            }

            sub_181929C84(v10, v11);
          }

          sub_181929C84(v7, v4);
        }

        ++v3;
      }

      while (v3 < *(v2 + 141));
    }

    result = sub_181929C84(v2, v1);
    *(v2 + 141) = 0;
  }

  return result;
}

uint64_t sub_18193BBF4(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v10 = *(a1 + 4);
  v11 = sub_181902484(v10, 0x6004044C4A2DFLL);
  v12 = v11;
  if (v11)
  {
    bzero(v11, v10);
    result = (*(a1 + 40))(a1, a2, v12, a4 & 0x1787F7F, a5);
    if (result)
    {
      v14 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v15 = result;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v12);
        --qword_1ED456A90;
        off_1ED452EB0(v12);
        v12 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_11;
        }

        v14 = &xmmword_1ED452F28;
      }

      else
      {
        v15 = result;
      }

      (*v14)(v12);
      v12 = 0;
LABEL_11:
      result = v15;
    }
  }

  else
  {
    result = 7;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_18193BD34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = *(result + 168);
    if (v6)
    {
      result = sub_181929C84(*result, v6);
      v2 = *(a2 + 16);
      if (!v2)
      {
        *(v4 + 168) = 0;
        goto LABEL_17;
      }
    }

    v7 = strlen(v2);
    v8 = v7;
    if (v5)
    {
      result = sub_181929E8C(v5, v7 + 1, 354097263);
      v9 = result;
      if (!result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_181902484(v7 + 1, 354097263);
      v9 = result;
      if (!result)
      {
LABEL_7:
        v10 = *(a2 + 16);
        *(v4 + 168) = v9;
        if (v10)
        {
          v11 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v10);
            --qword_1ED456A90;
            result = off_1ED452EB0(v10);
            v10 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_17;
            }

            v11 = &xmmword_1ED452F28;
          }

          result = (*v11)(v10);
        }

LABEL_17:
        *(a2 + 16) = 0;
        return result;
      }
    }

    result = memcpy(v9, v2, v8 + 1);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18193BE7C(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 64) - 1;
  v6 = *(*a1 + 40);
  if (v6 <= 0)
  {
    --*(v4 + 800);
    *(a1 + 64) = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 8;
    do
    {
      v11 = *(v4 + 32);
      v12 = *(v11 + v9);
      if (v12)
      {
        if (a2 != 2 || (v10 = sub_1818EF99C(*(v11 + v9), 2, v5)) == 0)
        {
          v10 = sub_1818EF99C(v12, 1, v5);
        }

        if (v8)
        {
          v8 = v8;
        }

        else
        {
          v8 = v10;
        }

        v6 = *(v4 + 40);
      }

      ++v7;
      v9 += 32;
    }

    while (v7 < v6);
    --*(v4 + 800);
    *(a1 + 64) = 0;
    if (v8)
    {
      if (a2 != 2)
      {
        return v8;
      }

      goto LABEL_20;
    }
  }

  if (a2 == 2 && (v8 = sub_18193BFB4(v4, 2, v5), v8) || (v8 = sub_18193BFB4(v4, 1, v5), a2 == 2))
  {
LABEL_20:
    *(v4 + 808) = *(a1 + 88);
  }

  return v8;
}

uint64_t sub_18193BFB4(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 600))
  {
    v6 = 0;
    v7 = a3 + 1;
    while (1)
    {
      if (v6 >= *(a1 + 564))
      {
        return 0;
      }

      v9 = *(*(a1 + 600) + 8 * v6);
      if (*(v9 + 16))
      {
        v10 = **(v9 + 8);
        if (*v10 >= 2)
        {
          break;
        }
      }

      v8 = 0;
LABEL_4:
      ++v6;
      if (v8)
      {
        return v8;
      }
    }

    v11 = *(v9 + 24);
    *(v9 + 24) = v11 + 1;
    if (a2 == 2)
    {
      v12 = *(v10 + 176);
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    else if (a2)
    {
      v12 = *(v10 + 168);
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = *(v10 + 160);
      *(v9 + 32) = v7;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (*(v9 + 32) > a3)
    {
      v13 = *(a1 + 48) & 0x10000000;
      *(a1 + 48) &= ~0x10000000uLL;
      v8 = v12();
      *(a1 + 48) |= v13;
      v11 = *(v9 + 24) - 1;
      goto LABEL_18;
    }

LABEL_17:
    v8 = 0;
LABEL_18:
    v14 = *v9;
    *(v9 + 24) = v11;
    if (!v11)
    {
      v15 = *(v9 + 16);
      v16 = v14;
      if (v15)
      {
        (*(*v15 + 32))(v15);
        v16 = *v9;
      }

      v17 = *(v9 + 8);
      v18 = *(v17 + 16) - 1;
      *(v17 + 16) = v18;
      if (!v18)
      {
        v19 = *(v17 + 32);
        if (v19)
        {
          v19(*(v17 + 24));
        }

        sub_181929C84(v16, v17);
      }

      sub_181929C84(v14, v9);
    }

    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_18193C13C(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 48);
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 128);
  if (v5 <= a3)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3 + 1;
  }

  if (v7 < v5)
  {
    if (a2 == 1)
    {
      v8 = a3;
    }

    else
    {
      v8 = a3 + 1;
    }

    v9 = 56 * v8 + 16;
    do
    {
      sub_1818EFAC4(*(*(a1 + 120) + v9));
      ++v8;
      v9 += 56;
    }

    while (v8 < *(a1 + 128));
  }

  *(a1 + 128) = v7;
  if (a2 == 1)
  {
    v18 = *(a1 + 120) + 56 * v7;
    if (*(v18 + 32))
    {
      v19 = *(a1 + 88);
      if (*v19)
      {
        if (*v19 == &unk_1EEF8FF50)
        {
          result = sub_1818F27BC(v19, (*(a1 + 200) + 4) * *(v18 + 28));
        }

        else
        {
          result = 0;
        }

        *(a1 + 60) = *(v18 + 28);
        return result;
      }
    }

    return 0;
  }

  v10 = *(a1 + 344);
  if (!v10 && !**(a1 + 80))
  {
    return 0;
  }

  if (!v7 || (v11 = *(a1 + 120) + 56 * v7, v12 = (v11 - 56), v11 == 56))
  {
    *(a1 + 32) = *(a1 + 36);
    *(a1 + 23) = *(a1 + 16);
    if (!v10)
    {
      v12 = 0;
      v15 = (a1 + 96);
      v16 = *(a1 + 96);
      v17 = 1;
      *(a1 + 96) = 0;
      goto LABEL_82;
    }

    if (!*(v10 + 64))
    {
      v26 = 0;
LABEL_72:
      v49 = sub_181936ED4(*(a1 + 336));
      result = v26;
      if (!v26 && v49)
      {
        do
        {
          v50 = *(v49 + 32);
          result = sub_18193C7CC(a1, *(v49 + 48));
          if (v50)
          {
            v51 = result == 0;
          }

          else
          {
            v51 = 0;
          }

          v49 = v50;
        }

        while (v51);
      }

      return result;
    }

    v20 = *(v10 + 88);
    v21 = **(v10 + 48);
    v22 = v21[2];
    v23 = *v21;
    *(v10 + 88) = v21[1];
    *(v10 + 72) = v23;
    *(v10 + 104) = v22;
    v24 = *(v10 + 88);
    if (v24 + 1 <= v20)
    {
      v27 = v24 + 4097;
      do
      {
        v31 = v27 + 0xFFFFFFFF021;
        v32 = *(v10 + 48);
        if ((v31 & 0xFFFFFFFF000) != 0)
        {
          v28 = (v32[(v31 >> 12)] + 4 * ((v27 - 4063) & 0xFFF));
        }

        else
        {
          v28 = (*v32 + 4 * (v27 - 4096) + 132);
        }

        v25 = sub_18193C7CC(a1, *v28);
        v29 = v27 - 4095;
        ++v27;
        if (v25)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29 > v20;
        }
      }

      while (!v30);
      v24 = *(v10 + 88);
    }

    else
    {
      v25 = 0;
    }

    if (v20 != v24 && v24)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v33 = ((v24 + 4096) + 0xFFFFFFFF021) >> 12;
      if (*(v10 + 40) > v33)
      {
        v34 = *(*(v10 + 48) + 8 * v33);
        v74 = v34;
        if (v34)
        {
          v35 = v33 == 0;
          v36 = 136;
          if (v33)
          {
            v36 = 0;
          }

          v37 = v34 + v36;
LABEL_63:
          v44 = v25;
          v45 = 0;
          v46 = v34 + 0x4000;
          if (v35)
          {
            v47 = 0;
          }

          else
          {
            v47 = (v33 << 12) - 34;
          }

          v48 = v24 - v47;
          do
          {
            if (v48 < *(v46 + v45))
            {
              *(v46 + v45) = 0;
            }

            v45 += 2;
          }

          while (v45 != 0x4000);
          bzero((v37 + 4 * v48), v46 - (v37 + 4 * v48));
          v25 = v44;
          goto LABEL_71;
        }
      }

      v41 = v25;
      v42 = sub_1819346F0(v10, v33, &v74);
      v25 = v41;
      v34 = v74;
      if (v74 && !v42)
      {
        v35 = v33 == 0;
        v43 = 136;
        if (v33)
        {
          v43 = 0;
        }

        v37 = v74 + v43;
        v24 = *(v10 + 88);
        goto LABEL_63;
      }
    }

LABEL_71:
    v26 = v25;
    goto LABEL_72;
  }

  v13 = *(v11 - 32);
  v14 = sub_181902484(512, 0x102204086A6B74CLL);
  if (!v14)
  {
    return 7;
  }

  v10 = v14;
  v14[30] = 0u;
  v14[31] = 0u;
  v14[28] = 0u;
  v14[29] = 0u;
  v14[26] = 0u;
  v14[27] = 0u;
  v14[24] = 0u;
  v14[25] = 0u;
  v14[22] = 0u;
  v14[23] = 0u;
  v14[20] = 0u;
  v14[21] = 0u;
  v14[18] = 0u;
  v14[19] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  *v14 = v13;
  v15 = (a1 + 96);
  v16 = *(a1 + 96);
  *(a1 + 32) = *(v11 - 32);
  *(a1 + 23) = *(a1 + 16);
  if (*(a1 + 344))
  {
    v17 = 0;
    *v15 = 0;
    goto LABEL_82;
  }

  v38 = *(v11 - 56);
  if (*(v11 - 48))
  {
    v39 = *(v11 - 48);
  }

  else
  {
    v39 = v16;
  }

  *v15 = v38;
  while (*v15 < v39)
  {
    v40 = sub_1818F90AC(a1, (a1 + 96), v10, 1, 1);
    if (v40)
    {
      goto LABEL_97;
    }
  }

  v17 = 0;
LABEL_82:
  while (*v15 < v16)
  {
    LODWORD(v73) = 0;
    v40 = sub_1818F8D5C(a1, 0, v16, &v73, &v72);
    LODWORD(v52) = v73;
    if (v73)
    {
      if (!v40)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v55 = *(a1 + 104) + *(a1 + 184);
      if (v55 == *(a1 + 96))
      {
        v52 = (v16 - v55) / (*(a1 + 200) + 8);
        if (!v40)
        {
LABEL_85:
          if (v52)
          {
            v53 = 1;
            while (*v15 < v16)
            {
              v40 = sub_1818F90AC(a1, v15, v10, 1, 1);
              if (!v40 && v53++ < v52)
              {
                continue;
              }

              goto LABEL_81;
            }

            v40 = 0;
          }
        }
      }
    }

LABEL_81:
    if (v40)
    {
      goto LABEL_96;
    }
  }

  v40 = 0;
LABEL_96:
  if ((v17 & 1) == 0)
  {
LABEL_97:
    v56 = v12[7];
    v72 = (*(a1 + 200) + 4) * v56;
    v57 = *(a1 + 344);
    if (v57)
    {
      if (v12[12] == *(v57 + 136))
      {
        v58 = v12[9];
      }

      else
      {
        v58 = 0;
        v12[9] = 0;
        v12[12] = *(v57 + 136);
      }

      if (v58 < *(v57 + 88))
      {
        *(v57 + 88) = v58;
        *(v57 + 96) = v12[10];
        *(v57 + 100) = v12[11];
        if (v58)
        {
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v59 = ((v58 + 4096) + 0xFFFFFFFF021) >> 12;
          if (*(v57 + 40) > v59)
          {
            v60 = *(*(v57 + 48) + 8 * v59);
            v74 = v60;
            if (v60)
            {
              v61 = v59 == 0;
              v62 = 136;
              if (v59)
              {
                v62 = 0;
              }

              v63 = v60 + v62;
              goto LABEL_115;
            }
          }

          v64 = sub_1819346F0(v57, v59, &v74);
          v60 = v74;
          if (v74 && !v64)
          {
            v61 = v59 == 0;
            v65 = 136;
            if (v59)
            {
              v65 = 0;
            }

            v63 = v74 + v65;
            v58 = *(v57 + 88);
LABEL_115:
            v66 = 0;
            v67 = v60 + 0x4000;
            if (v61)
            {
              v68 = 0;
            }

            else
            {
              v68 = (v59 << 12) - 34;
            }

            v69 = v58 - v68;
            do
            {
              if (v69 < *(v67 + v66))
              {
                *(v67 + v66) = 0;
              }

              v66 += 2;
            }

            while (v66 != 0x4000);
            bzero((v63 + 4 * v69), v67 - (v63 + 4 * v69));
          }
        }

        LODWORD(v56) = v12[7];
      }

LABEL_124:
      v70 = v56 - 1;
      while (++v70 < *(a1 + 60))
      {
        v40 = sub_1818F90AC(a1, &v72, v10, 0, 1);
        if (v40)
        {
          goto LABEL_129;
        }
      }

      v40 = 0;
    }

    else if (!v40)
    {
      goto LABEL_124;
    }
  }

LABEL_129:
  v71 = v40;
  sub_1818EFAC4(v10);
  result = v71;
  if (!v71)
  {
    *v15 = v16;
  }

  return result;
}

uint64_t sub_18193C7CC(uint64_t a1, int a2)
{
  result = (*(&xmmword_1ED452F70 + 1))(*(*(a1 + 336) + 72));
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 336);
    v7 = v5[1];
    if (*v7)
    {
      ++*(v6 + 24);
      v8 = *(v7 + 56) + 1;
      *(v7 + 56) = v8;
      if (v8 == 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = sub_181934878(v6, a2, v5);
      if (!result)
      {
        goto LABEL_17;
      }

      v7 = result;
      if (*(result + 56) == 1)
      {
LABEL_4:
        v9 = *(v7 + 24);
        if ((*(v7 + 52) & 2) == 0)
        {
          goto LABEL_22;
        }

        v10 = *(v7 + 72);
        if (*(v9 + 16) == v7)
        {
          *(v9 + 16) = v10;
          v11 = *(v7 + 64);
          if (v11)
          {
LABEL_7:
            *(v11 + 72) = v10;
            if (!v10)
            {
              *v9 = v11;
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v11 = *(v7 + 64);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        *(v9 + 8) = v10;
        if (!v10)
        {
          *v9 = 0;
          *(v9 + 49) = 2;
LABEL_22:
          --*(v9 + 24);
          xmmword_1ED452F80(*(v9 + 72), *v7, 1);
          result = 0;
          v16 = *(a1 + 112);
          if (!v16)
          {
            return result;
          }

          goto LABEL_23;
        }

LABEL_21:
        *(v10 + 64) = v11;
        goto LABEL_22;
      }
    }

    v12 = sub_1818A8A8C(v7);
    v14 = v13;
    if (v13)
    {
      if ((*(v7 + 52) & 0x20) == 0)
      {
LABEL_13:
        sub_181932B68(v7);
LABEL_16:
        result = v14;
        goto LABEL_17;
      }
    }

    else
    {
      (*(a1 + 280))(v7, v12);
      if ((*(v7 + 52) & 0x20) == 0)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v7 + 40);
    --*(v15 + 152);
    *(v7 + 32) = *(v15 + 168);
    *(v15 + 168) = v7;
    (*(**(v15 + 72) + 144))(*(v15 + 72), *(v15 + 200) * (*(v7 + 48) - 1), *(v7 + 8), v12);
    goto LABEL_16;
  }

LABEL_17:
  v16 = *(a1 + 112);
  if (!v16)
  {
    return result;
  }

  do
  {
LABEL_23:
    *(v16 + 24) = 1;
    v16 = *(v16 + 64);
  }

  while (v16);
  return result;
}

uint64_t sub_18193C988(uint64_t a1, unsigned int a2)
{
  if (a2 != 3082 && !*(a1 + 103))
  {
    return *(a1 + 88) & a2;
  }

  if (*(a1 + 103))
  {
    v3 = *(a1 + 220);
    if (!v3)
    {
      *(a1 + 103) = 0;
      *(a1 + 424) = 0;
      v4 = *(a1 + 432) - 1;
      *(a1 + 432) = v4;
      if (!v4)
      {
        LOWORD(v3) = *(a1 + 438);
      }

      *(a1 + 436) = v3;
    }
  }

  v2 = 7;
  *(a1 + 80) = 7;
  sub_181932D5C(a1, 7);
  return v2;
}

void sub_18193CA00(uint64_t a1)
{
  if ((*(a1 + 20) & 0x9000) != 0)
  {
    sub_18193CA54(a1);
  }

  if (*(a1 + 32))
  {
    sub_181929C84(*(a1 + 24), *(a1 + 40));
    *(a1 + 32) = 0;
  }

  *(a1 + 8) = 0;
}

void sub_18193CA54(int *a1)
{
  v2 = *(a1 + 10);
  if ((v2 & 0x80000000) == 0)
  {
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = *a1;
  v11[4] = 0;
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  WORD2(v8) = 1;
  *(&v8 + 1) = *(a1 + 3);
  v11[2] = a1;
  v11[3] = 0;
  v11[0] = &v7;
  v11[1] = v3;
  LOBYTE(v12) = *(*(&v8 + 1) + 100);
  (*(v3 + 32))(v11);
  if (a1[8] >= 1)
  {
    sub_181929C84(*(a1 + 3), *(a1 + 5));
  }

  v4 = v8;
  *a1 = v7;
  *(a1 + 1) = v4;
  v5 = v10;
  *(a1 + 2) = v9;
  *(a1 + 3) = v5;
  if ((a1[5] & 0x1000) != 0)
  {
LABEL_7:
    v6 = *(a1 + 6);
    if (*(a1 + 56))
    {
      (*(v6 + 16))(*(a1 + 6), *(a1 + 1));
      _Block_release(*(a1 + 6));
      *(a1 + 6) = 0;
    }

    else
    {
      (v6)(*(a1 + 1));
    }
  }

LABEL_10:
  *(a1 + 10) = 1;
}

uint64_t sub_18193CB44(uint64_t a1, int a2)
{
  result = sub_18193CB70(a1, a2);
  if (result)
  {
    return *(a1 + 16);
  }

  return result;
}

uint64_t sub_18193CB70(int *a1, int a2)
{
  v4 = *(a1 + 10);
  if ((v4 & 0x12) != 0)
  {
    if ((a1[5] & 0x400) == 0)
    {
      goto LABEL_9;
    }

    v5 = a1[4];
    v6 = *a1 + v5;
    if ((v6 < 0) ^ __OFADD__(*a1, v5) | (v6 == 0))
    {
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      v6 = 1;
    }

    if (sub_1818BB128(a1, v6, 1))
    {
      return 0;
    }

    bzero((*(a1 + 1) + a1[4]), *a1);
    a1[4] += *a1;
    v4 = a1[5] & 0xF9FF;
LABEL_9:
    *(a1 + 10) = v4 | 2;
    if ((a2 & 0xFFFFFFF7) != *(a1 + 22))
    {
      sub_1818F1820(a1, a2 & 0xF7);
    }

    if ((a2 & 8) == 0)
    {
      v7 = *(a1 + 10);
      goto LABEL_30;
    }

    v7 = *(a1 + 10);
    if ((a1[2] & 1) == 0)
    {
LABEL_30:
      if ((v7 & 0x2020202) == 2)
      {
        sub_18193CD7C(a1);
      }

      goto LABEL_36;
    }

    if ((v7 & 0x12) == 0)
    {
LABEL_29:
      v7 &= 0xBFFFu;
      *(a1 + 10) = v7;
      goto LABEL_30;
    }

    if ((v7 & 0x400) != 0)
    {
      v8 = a1[4];
      v9 = *a1 + v8;
      if (!((v9 < 0) ^ __OFADD__(*a1, v8) | (v9 == 0)))
      {
        goto LABEL_23;
      }

      if ((v7 & 0x10) != 0)
      {
        v9 = 1;
LABEL_23:
        if (sub_1818BB128(a1, v9, 1))
        {
          return 0;
        }

        bzero((*(a1 + 1) + a1[4]), *a1);
        a1[4] += *a1;
        LOWORD(v7) = a1[5] & 0xF9FF;
        *(a1 + 10) = v7;
      }
    }

    if (!a1[8] || *(a1 + 1) != *(a1 + 5))
    {
      if (sub_18193CD7C(a1))
      {
        return 0;
      }

      LOWORD(v7) = *(a1 + 10);
    }

    goto LABEL_29;
  }

  if (a1[8] >= 32)
  {
    v10 = *(a1 + 5);
    *(a1 + 1) = v10;
    *(a1 + 10) = v4 & 0x2D;
  }

  else
  {
    if (sub_1818BB128(a1, 32, 0))
    {
      *(a1 + 22) = 0;
      goto LABEL_36;
    }

    v10 = *(a1 + 1);
  }

  sub_18193CE24(v10, a1);
  *(a1 + 22) = 1;
  *(a1 + 10) |= 0x202u;
  if (a2 != 1)
  {
    sub_1818F1820(a1, a2);
  }

LABEL_36:
  if (*(a1 + 22) == (a2 & 0xFFFFFFF7))
  {
    return *(a1 + 1);
  }

  return 0;
}

uint64_t sub_18193CD7C(uint64_t a1)
{
  result = sub_1818BB128(a1, *(a1 + 16) + 3, 1);
  if (result)
  {
    return 7;
  }

  *(*(a1 + 8) + *(a1 + 16)) = 0;
  *(*(a1 + 8) + *(a1 + 16) + 1) = 0;
  *(*(a1 + 8) + *(a1 + 16) + 2) = 0;
  *(a1 + 20) |= 0x200u;
  return result;
}

uint64_t sub_18193CDF0(uint64_t a1, signed int a2)
{
  if (*(a1 + 32) < a2)
  {
    return sub_1818BB128(a1, a2, 0);
  }

  *(a1 + 8) = *(a1 + 40);
  *(a1 + 20) &= 0x2Du;
  return 0;
}

void sub_18193CE24(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 20);
  if ((v3 & 4) != 0)
  {
    v6 = *a2;
    if (*a2 >= 0)
    {
      v7 = *a2;
    }

    else
    {
      v7 = -v6;
    }

    LOWORD(v15) = (v7 % 0xA) | 0x30;
    if (v7 >= 0xA)
    {
      v10 = &v14 + 3;
      v8 = 20;
      do
      {
        *v10-- = (v7 / 0xA - 10 * ((v7 / 0xA * 0x199999999999999AuLL) >> 64)) | 0x30;
        --v8;
        v11 = v7 > 0x63;
        v7 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v8 = 20;
    }

    if (v6 < 0)
    {
      v12 = v8 - 1;
      *(v13 + v12) = 45;
      --v8;
    }

    else
    {
      v12 = v8;
    }

    memcpy(a1, v13 + v12, 22 - v12);
    v9 = 21 - v8;
  }

  else
  {
    v17 = 0;
    v13[0] = 0;
    v13[1] = a1;
    v14 = 32;
    v15 = 0;
    v16 = 0;
    if ((v3 & 0x20) != 0)
    {
      v5 = *a2;
    }

    else
    {
      v5 = *a2;
    }

    sqlite3_str_appendf(v13, "%!.15g", *&v5);
    v9 = HIDWORD(v15);
    *(a1 + HIDWORD(v15)) = 0;
  }

  *(a2 + 16) = v9;
}

double sub_18193CF90(uint64_t a1)
{
  v2 = 0.0;
  sub_1818E6334(*(a1 + 8), &v2, *(a1 + 16), *(a1 + 22));
  return v2;
}

uint64_t sub_18193CFCC(uint64_t a1)
{
  v2 = 0;
  sub_18193D008(*(a1 + 8), &v2, *(a1 + 16), *(a1 + 22));
  return v2;
}

uint64_t sub_18193D008(unsigned __int8 *a1, void *a2, int a3, int a4)
{
  if (a4 == 1)
  {
    result = 0;
    v6 = 1;
    v7 = a1;
  }

  else
  {
    LODWORD(v8) = 3 - a4;
    if (3 - a4 >= (a3 & 0xFFFFFFFE))
    {
      result = 0;
    }

    else
    {
      v8 = v8;
      while (!a1[v8])
      {
        v8 += 2;
        if (v8 >= (a3 & 0xFFFFFFFE))
        {
          result = 0;
          goto LABEL_10;
        }
      }

      result = 1;
    }

LABEL_10:
    a3 = v8 ^ 1;
    v7 = &a1[a4 & 1];
    v6 = 2;
  }

  v9 = &a1[a3];
  if (v7 >= v9)
  {
LABEL_14:
    v11 = 1;
  }

  else
  {
    while (1)
    {
      v10 = *v7;
      if ((byte_181A204C8[v10] & 1) == 0)
      {
        break;
      }

      v7 += v6;
      if (v7 >= v9)
      {
        goto LABEL_14;
      }
    }

    v12 = &v7[v6];
    if (v10 == 45)
    {
      v7 += v6;
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    if (v10 == 43)
    {
      v7 = v12;
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = v7;
  if (v7 < v9)
  {
    v14 = v7;
    do
    {
      if (*v14 != 48)
      {
        break;
      }

      v14 += v6;
    }

    while (v14 < v9);
  }

  if (v14 >= v9)
  {
    LODWORD(v15) = 0;
    v16 = 0;
    v18 = 1;
    goto LABEL_35;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    v17 = v14[v15];
    v18 = (v17 - 48) < 0xA;
    if ((v17 - 48) > 9)
    {
      break;
    }

    v16 = v17 + 10 * v16 - 48;
    v15 += v6;
  }

  while (&v14[v15] < v9);
  if ((v16 & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (!v11)
    {
      v16 = -v16;
    }

    *a2 = v16;
    if (v15)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v19 = 0x8000000000000000;
  }

  *a2 = v19;
  if (v15)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (v7 == v14)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_46;
  }

LABEL_40:
  if (((result | v18) & 1) == 0)
  {
    v20 = &v14[v15];
    while ((byte_181A204C8[*v20] & 1) != 0)
    {
      v20 += v6;
      if (v20 >= v9)
      {
        result = 0;
        goto LABEL_46;
      }
    }

    result = 1;
  }

LABEL_46:
  if (v15 < 19 * v6)
  {
    return result;
  }

  if (v15 > 19 * v6)
  {
    v28 = v11 == 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v28)
    {
      v21 = 0x8000000000000000;
    }

    *a2 = v21;
    return 2;
  }

  else
  {
    v22 = 0;
    v23 = v14;
    do
    {
      v24 = *v23;
      v25 = a92233720368547[v22];
      if (v22 > 0x10)
      {
        break;
      }

      ++v22;
      v23 += v6;
    }

    while (v24 == v25);
    v26 = v24 - v25;
    if (v24 == v25)
    {
      v27 = v14[18 * v6] - 56;
      if (v27 < 0)
      {
        return result;
      }
    }

    else
    {
      v27 = 10 * v26;
      if (10 * v26 < 0)
      {
        return result;
      }
    }

    v28 = v11 == 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    if (v28)
    {
      v29 = 0x8000000000000000;
    }

    *a2 = v29;
    if (v28)
    {
      v30 = result;
    }

    else
    {
      v30 = 3;
    }

    if (v27)
    {
      return 2;
    }

    else
    {
      return v30;
    }
  }
}

void sub_18193D288(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 0x9000) != 0)
  {
    sub_18193CA54(a1);
  }

  *a1 = a2;
  *(a1 + 20) = 4;
}

uint64_t sub_18193D2D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, void *a6)
{
  v8 = *(a1 + 144);
  if (!a2 || (*(a2 + 20) & 0x10) == 0)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    goto LABEL_4;
  }

  v10 = (*(a2 + 16) >> 3);
  v9 = *(a2 + 8);
  if (v10 >= 1)
  {
    if (v10 == 1)
    {
      for (i = 0; i != v10; ++i)
      {
LABEL_42:
        v8 += *(v9[i] + 8);
      }

      goto LABEL_4;
    }

    v31 = 0;
    i = v10 & 0x7FFFFFFE;
    v32 = v9 + 1;
    v33 = i;
    do
    {
      v8 += *(*(v32 - 1) + 8);
      v31 += *(*v32 + 8);
      v32 += 2;
      v33 -= 2;
    }

    while (v33);
    v8 += v31;
    if (i != v10)
    {
      goto LABEL_42;
    }
  }

LABEL_4:
  v11 = *a4;
  v12 = *a4 + 1;
  if (*a4 < v8)
  {
    v13 = (a1 + 136);
    v34 = *a4 + 1;
    v38 = a5;
    v39 = a4;
    v37 = a6;
    v36 = a3;
    v35 = (a1 + 136);
    while (1)
    {
      v14 = v11;
      v11 = v12;
      v15 = *(a1 + 144);
      v16 = v14;
      v17 = v13;
      v18 = __OFSUB__(v14, v15);
      v19 = v14 - v15;
      if (v19 < 0 == v18)
      {
        v17 = *v9;
        v20 = *(*v9 + 8);
        if (v19 >= v20)
        {
          v21 = v9 + 1;
          do
          {
            v19 -= v20;
            v22 = *v21++;
            v17 = v22;
            v20 = *(v22 + 8);
          }

          while (v19 >= v20);
        }

        v16 = v19;
      }

      v23 = *v17;
      v24 = (*v17 + 40 * v16);
      if (a2 && v24[1] == 252)
      {
        if (v10 < 1)
        {
          LODWORD(v25) = 0;
        }

        else
        {
          v25 = 0;
          while (v9[v25] != *(v24 + 2))
          {
            if (v10 == ++v25)
            {
              goto LABEL_22;
            }
          }
        }

        if (v25 == v10)
        {
LABEL_22:
          v40 = *v17;
          v26 = sub_1818BB128(a2, 8 * (v10 + 1), v10 != 0);
          *(a1 + 52) = v26;
          if (v26)
          {
            a3 = 1;
            a6 = v37;
            a5 = v38;
            a4 = v39;
            v23 = v40;
            goto LABEL_35;
          }

          v9 = *(a2 + 8);
          v9[v10] = *(v24 + 2);
          *(a2 + 20) = *(a2 + 20) & 0xF240 | 0x10;
          *(a2 + 16) = 8 * (v10 + 1);
          v8 += *(*(v24 + 2) + 8);
          LODWORD(v10) = v10 + 1;
          a6 = v37;
          a5 = v38;
          a4 = v39;
          v23 = v40;
          a3 = v36;
          v13 = v35;
        }
      }

      if (a3 == 2)
      {
        v28 = *v24;
        if (v28 == 113)
        {
          if ((*(v24 + 1) & 0x10) == 0)
          {
            goto LABEL_32;
          }
        }

        else if ((v28 - 101) < 2)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (!a3)
        {
          v11 = v34;
          goto LABEL_35;
        }

        v27 = *(v23 + 40 * v16);
        if (v27 == 188 || v14 >= 1 && v27 == 8)
        {
LABEL_32:
          a3 = 0;
          goto LABEL_35;
        }
      }

      v12 = v11 + 1;
      if (v11 >= v8)
      {
        goto LABEL_34;
      }
    }
  }

  v23 = 0;
LABEL_34:
  v16 = v11;
  *(a1 + 52) = 0;
  a3 = 101;
  v11 = v12;
LABEL_35:
  *a4 = v11;
  *a5 = v16;
  *a6 = v23;
  return a3;
}

void *sub_18193D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v32 = 0u;
  v33 = 0u;
  DWORD1(v33) = 2147483645;
  BYTE12(v33) = 0;
  v9 = "program";
  switch(*(a2 + 1))
  {
    case 0xEF:
      sqlite3_str_appendf(&v32, "subrtnsig:%d,%s");
      goto LABEL_53;
    case 0xF1:
    case 0xF9:
      sqlite3_str_appendf(&v32, "%s(%d)");
      goto LABEL_53;
    case 0xF2:
      v10 = *(a2 + 16);
      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_42;
      }

      v12 = 1;
      do
      {
        if (v12 == 1)
        {
          v13 = 91;
        }

        else
        {
          v13 = 44;
        }

        sqlite3_str_appendf(&v32, "%c%u", v13, v10[v12++]);
      }

      while (v12 <= v11);
      v14 = DWORD2(v33);
      if (DWORD2(v33) + 1 >= v33)
      {
LABEL_42:
        v25 = "]";
        LODWORD(a3) = 1;
        goto LABEL_52;
      }

      ++DWORD2(v33);
      *(*(&v32 + 1) + v14) = 93;
      goto LABEL_53;
    case 0xF3:
      goto LABEL_21;
    case 0xF4:
      goto LABEL_6;
    case 0xF5:
      sqlite3_str_appendf(&v32, "vtab:%p");
      goto LABEL_53;
    case 0xF6:
      v15 = *(a2 + 16);
      v16 = *(v15 + 20);
      if ((v16 & 2) != 0)
      {
        v9 = *(v15 + 8);
        if (!v9)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if ((v16 & 0x24) != 0)
        {
LABEL_21:
          sqlite3_str_appendf(&v32, "%lld");
          goto LABEL_53;
        }

        if ((v16 & 8) != 0)
        {
LABEL_6:
          sqlite3_str_appendf(&v32, "%.16g");
          goto LABEL_53;
        }

        if (v16)
        {
          v9 = "NULL";
        }

        else
        {
          v9 = "(blob)";
        }
      }

LABEL_50:
      v26 = strlen(v9);
      a3 = v26 & 0x3FFFFFFF;
      if ((v26 & 0x3FFFFFFF) != 0)
      {
        v25 = v9;
LABEL_52:
        sub_181906814(&v32, v25, a3);
      }

LABEL_53:
      if ((BYTE12(v33) & 7) != 0 && !*(v8 + 103) && !*(v8 + 104))
      {
        *(v8 + 103) = 1;
        if (*(v8 + 220) >= 1)
        {
          *(v8 + 424) = 1;
        }

        ++*(v8 + 432);
        *(v8 + 436) = 0;
        v28 = *(v8 + 344);
        if (v28)
        {
          sub_181910730(v28, "out of memory", a3, a4, a5, a6, a7, a8, v30);
          for (i = *(v8 + 344); ; ++*(i + 52))
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

      if (*(&v32 + 1) && (*(*(&v32 + 1) + DWORD2(v33)) = 0, DWORD1(v33)) && (BYTE13(v33) & 4) == 0)
      {
        return sub_18192A12C(&v32);
      }

      else
      {
        return *(&v32 + 1);
      }

    case 0xF8:
      v17 = *(a2 + 16);
      sqlite3_str_appendf(&v32, "k(%d", *(v17 + 6));
      if (*(v17 + 6))
      {
        v18 = 0;
        do
        {
          v23 = *(v17 + 32 + 8 * v18);
          if (v23)
          {
            v19 = *v23;
          }

          else
          {
            v19 = &byte_181A2878D;
          }

          if (!strcmp(v19, "BINARY"))
          {
            v20 = "B";
          }

          else
          {
            v20 = v19;
          }

          if (*(*(v17 + 24) + v18))
          {
            v21 = "-";
          }

          else
          {
            v21 = &byte_181A2878D;
          }

          if ((*(*(v17 + 24) + v18) & 2) != 0)
          {
            v22 = "N.";
          }

          else
          {
            v22 = &byte_181A2878D;
          }

          sqlite3_str_appendf(&v32, ",%s%s%s", v21, v22, v20);
          ++v18;
        }

        while (v18 < *(v17 + 6));
      }

      v24 = DWORD2(v33);
      if (DWORD2(v33) + 1 >= v33)
      {
        sub_181906814(&v32, ")", 1u);
      }

      else
      {
        ++DWORD2(v33);
        *(*(&v32 + 1) + v24) = 41;
      }

      v8 = a1;
      goto LABEL_53;
    case 0xFB:
      v9 = **(a2 + 16);
      if (!v9)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    case 0xFC:
      goto LABEL_50;
    case 0xFD:
      sqlite3_str_appendf(&v32, "%d");
      goto LABEL_53;
    case 0xFE:
      sqlite3_str_appendf(&v32, "%.18s-%s");
      goto LABEL_53;
    default:
      v9 = *(a2 + 16);
      if (!v9)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
  }
}

uint64_t sub_18193D9BC(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (a2 >= 1)
  {
    if (v2 > (0x7FFFFFFFFFFFFFFFLL / a2))
    {
      return 1;
    }

    if (v2 < -(0x8000000000000000 / a2))
    {
      return 1;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v2 >= 1)
  {
    if (-(0x8000000000000000 / v2) > a2)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  v4 = 1;
  if (a2 == 0x8000000000000000 || v2 == 0x8000000000000000)
  {
    return v4;
  }

  if (0x7FFFFFFFFFFFFFFFuLL / -a2 >= -v2)
  {
LABEL_11:
    v4 = 0;
    *a1 = v2 * a2;
    return v4;
  }

  return 1;
}

uint64_t sub_18193DA74(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    return 0;
  }

  if (a2 > 67)
  {
    if (a2 == 68)
    {
      if ((v3 & 0x24) != 0)
      {
        v13 = *a1;
      }

      else if ((v3 & 8) != 0)
      {
        v13 = -0.0;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        if (*a1 <= 9.22337204e18)
        {
          v19 = *a1;
        }

        if (*a1 >= -9.22337204e18)
        {
          v13 = *&v19;
        }
      }

      else if ((v3 & 0x12) != 0)
      {
        v13 = *(a1 + 8);
        if (v13 != 0.0)
        {
          v17 = a1;
          v13 = COERCE_DOUBLE(sub_18193CFCC(a1));
          a1 = v17;
          v3 = *(v17 + 20);
        }
      }

      else
      {
        v13 = 0.0;
      }

      *a1 = v13;
      *(a1 + 20) = v3 & 0xF240 | 4;
      return 0;
    }

    if (a2 != 69)
    {
      goto LABEL_11;
    }

    if ((v3 & 8) != 0)
    {
      v4 = *a1;
    }

    else if ((v3 & 0x24) != 0)
    {
      v4 = *a1;
    }

    else if ((v3 & 0x12) != 0)
    {
      v18 = a1;
      v4 = sub_18193CF90(a1);
      a1 = v18;
      v3 = *(v18 + 20);
    }

    else
    {
      v4 = 0.0;
    }

    *a1 = v4;
    v16 = v3 & 0xF240 | 8;
LABEL_31:
    *(a1 + 20) = v16;
    return 0;
  }

  if (a2 == 65)
  {
    if ((v3 & 0x10) == 0)
    {
      v10 = a1;
      sub_1818D83C0(a1, 66, a3);
      v11 = *(v10 + 20);
      if ((v11 & 2) != 0)
      {
        result = 0;
        *(v10 + 20) = v11 & 0xF240 | 0x10;
        return result;
      }

      return 0;
    }

    v16 = v3 & 0xF250;
    goto LABEL_31;
  }

  if (a2 == 67)
  {
    sub_1819432EC(a1);
    return 0;
  }

LABEL_11:
  *(a1 + 20) |= (*(a1 + 20) >> 3) & 2;
  v5 = a1;
  sub_1818D83C0(a1, 66, a3);
  v7 = v5;
  v8 = *(v5 + 20);
  v9 = v8 & 0xFBC3;
  *(v5 + 20) = v8 & 0xFBC3;
  if (a3 != 1)
  {
    *(v5 + 16) &= ~1u;
  }

  if ((v8 & 2) != 0)
  {
    if (*(v5 + 22) != a3)
    {
      result = sub_1818F1820(v5, a3);
      if (result)
      {
        return result;
      }

      v7 = v5;
      v9 = *(v5 + 20);
    }
  }

  else
  {
    *(v5 + 22) = a3;
  }

  if ((v9 & 0x6202) == 2 && *(v7 + 22) == 1)
  {
    if ((v9 & 0x1000) == 0)
    {
      LODWORD(v14) = *(v7 + 16);
      if (*(v7 + 32) <= v14)
      {
        return 0;
      }

      v15 = (v7 + 8);
      goto LABEL_56;
    }

    v20 = *(v7 + 48);
    if (v20 == sqlite3_free)
    {
      v15 = (v7 + 8);
      v21 = *(v7 + 8);
      if (v21)
      {
        v22 = xmmword_1ED452EC0(v21);
        v7 = v5;
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v14 = *(v7 + 16);
      if (v23 >= v14 + 1)
      {
LABEL_56:
        *(*v15 + v14) = 0;
        goto LABEL_57;
      }

      v20 = *(v7 + 48);
    }

    if (v20 != sub_18193AB78)
    {
      return 0;
    }

LABEL_57:
    result = 0;
    *(v7 + 20) |= 0x200u;
    return result;
  }

  return 0;
}

BOOL sub_18193DD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  if ((v2 & 0x24) != 0)
  {
    v3 = *a1 == 0;
  }

  else
  {
    if (v2)
    {
      return a2;
    }

    if ((v2 & 8) != 0)
    {
      v4 = *a1;
    }

    else if ((v2 & 0x12) != 0)
    {
      v4 = sub_18193CF90(a1);
    }

    else
    {
      v4 = 0.0;
    }

    v3 = v4 == 0.0;
  }

  return !v3;
}

uint64_t sub_18193DD98(uint64_t a1)
{
  v3 = 0;
  result = sub_18193F3D4(*(a1 + 40), *(a1 + 72), 0, &v3);
  if (!result)
  {
    if (v3)
    {

      return sub_18190EDA8(97535);
    }

    else
    {
      result = 0;
      *(a1 + 3) = 0;
      *(a1 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_18193DE1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (v2 < 3)
  {
    goto LABEL_23;
  }

  v9 = 0;
  if (v2 == 4)
  {
    v3 = *(v1 + 1);
LABEL_9:
    *(a1 + 24) = 0;
LABEL_24:
    *(a1 + 2) = 1;
    return v3;
  }

  v4 = a1;
  *v1 = 1;
  if (off_1ED453038 && off_1ED453038(410))
  {
    v3 = 10;
LABEL_8:
    a1 = v4;
    goto LABEL_9;
  }

  v3 = sub_1818DC828(v1, *(v1 + 3), *(v1 + 9), 0, &v9);
  if (v3)
  {
    goto LABEL_8;
  }

  v5 = *(v1 + 3);
  if (v5)
  {
    v6 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v5);
      --qword_1ED456A90;
      off_1ED452EB0(v5);
      v5 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_17;
      }

      v6 = &xmmword_1ED452F28;
    }

    (*v6)(v5);
  }

LABEL_17:
  *(v1 + 3) = 0;
  a1 = v4;
  if (v9)
  {
    *(v1 + 1) = v9;
  }

  else if (!*(v1 + 1))
  {
    v2 = *v1;
    goto LABEL_23;
  }

  v2 = *v1;
  if (!*v1)
  {
    v2 = 2;
    *v1 = 2;
  }

LABEL_23:
  v3 = 0;
  v7 = 0;
  *(a1 + 24) = 0;
  if (v2)
  {
    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_18193DFAC(uint64_t a1, int *a2)
{
  v4 = *(a1 + 1);
  if (*(a1 + 1) < 0)
  {
    v7 = *(a1 + 2);
    if (v7 < 0)
    {
      v11[3] = v2;
      v11[4] = v3;
      v11[0] = 0;
      result = sub_1818C7200(a1, v11);
      if (HIDWORD(v11[0]))
      {
        v10 = -1;
      }

      else
      {
        v10 = v11[0];
      }

      *a2 = v10;
    }

    else
    {
      v8 = ((v4 & 0x7F) << 7) & 0x3FFF | ((*a1 & 0x7F) << 14) | v7;
      result = 3;
      *a2 = v8;
    }
  }

  else
  {
    v5 = v4 | ((*a1 & 0x7F) << 7);
    result = 2;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_18193E044(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 68);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 136) + 88) - v4;
  if (v3 > v5)
  {
    v3 = v5 & ~(v5 >> 31);
  }

  *(a3 + 8) = v4;
  if (v3 >= a2)
  {
    result = 0;
    *(a3 + 20) = 16400;
    *(a3 + 16) = a2;
    return result;
  }

  *(a3 + 20) = 1;
  v6 = a2;
  if (*(*(a1 + 32) + 64) * *(*(a1 + 32) + 52) >= a2)
  {
    v9 = a2 + 1;
    if (*(a3 + 32) >= v9)
    {
      v12 = *(a3 + 40);
      *(a3 + 8) = v12;
      v11 = a3;
      *(a3 + 20) = 1;
    }

    else
    {
      v10 = a1;
      v11 = a3;
      result = sub_1818BB128(a3, v9, 0);
      if (result)
      {
        return result;
      }

      v12 = *(v11 + 8);
      a1 = v10;
    }

    result = sub_1818EEE54(a1, 0, a2, v12, 0);
    if (result)
    {
      if ((*(v11 + 20) & 0x9000) != 0 || *(v11 + 32))
      {
        v13 = result;
        sub_18193CA00(v11);
        return v13;
      }
    }

    else
    {
      *(*(v11 + 8) + v6) = 0;
      *(v11 + 20) = 16;
      *(v11 + 16) = a2;
    }
  }

  else
  {

    return sub_18190EDA8(92928);
  }

  return result;
}

uint64_t sub_18193E198(uint64_t a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7)
{
  v8 = *(a7 + 24);
  if (a3 < 0x80)
  {
    v9 = byte_181A20DA4[a3];
  }

  else
  {
    v9 = (a3 - 12) >> 1;
  }

  if (v9 > *(v8 + 136))
  {
    return 18;
  }

  v11 = *(a7 + 22);
  if (v9 < 0xFA1 || *(a1 + 48))
  {
    v12 = *(a1 + 40);
    *(a7 + 20) = 1;
    if (*(*(v12 + 32) + 64) * *(*(v12 + 32) + 52) < v9 + a4)
    {

      return sub_18190EDA8(92928);
    }

    v13 = a3;
    if (*(a7 + 32) <= v9)
    {
      v15 = a4;
      result = sub_1818BB128(a7, v9 + 1, 0);
      if (result)
      {
        return result;
      }

      v14 = *(a7 + 8);
      a4 = v15;
    }

    else
    {
      v14 = *(a7 + 40);
      *(a7 + 8) = v14;
      *(a7 + 20) = 1;
    }

    result = sub_1818EEE54(v12, a4, v9, v14, 0);
    if (result)
    {
      if ((*(a7 + 20) & 0x9000) != 0 || *(a7 + 32))
      {
        v16 = result;
        sub_18193CA00(a7);
        return v16;
      }

      return result;
    }

    *(*(a7 + 8) + v9) = 0;
    *(a7 + 20) = 16;
    *(a7 + 16) = v9;
    sub_1818C7394(*(a7 + 8), v13, a7);
    result = 0;
    if ((v13 & 1) == 0 || v11 != 1)
    {
LABEL_29:
      *(a7 + 20) &= ~0x4000u;
      return result;
    }

    result = 0;
    *(*(a7 + 8) + v9) = 0;
LABEL_28:
    *(a7 + 20) |= 0x200u;
    goto LABEL_29;
  }

  v37 = a5;
  v38 = a6;
  v17 = a1;
  v18 = a2;
  if ((*(a1 + 5) & 0x10) != 0)
  {
    v22 = *(a1 + 104);
    v23 = *v22;
    if (!*v22)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v19 = a4;
    v20 = a3;
    v21 = sub_181929E8C(v8, 0x20uLL, 0x101004023FF3BD5);
    if (!v21)
    {
      *(v17 + 104) = 0;
      return 7;
    }

    v22 = v21;
    *v21 = 0u;
    v21[1] = 0u;
    a1 = v17;
    *(v17 + 104) = v22;
    *(v17 + 5) |= 0x10u;
    LOBYTE(a3) = v20;
    a4 = v19;
    a5 = v37;
    a6 = v38;
    a2 = v18;
    v23 = *v22;
    if (!*v22)
    {
      goto LABEL_46;
    }
  }

  if (*(v22 + 4) != a2 || *(v22 + 5) != a5 || *(v22 + 6) != a6)
  {
    goto LABEL_36;
  }

  v36 = a4;
  v24 = a3;
  v25 = *(v22 + 1);
  v26 = sub_181943688(*(a1 + 40));
  v23 = *v22;
  if (v25 == v26)
  {
LABEL_51:
    ++*(v23 - 1);
    if ((v24 & 1) == 0)
    {
      result = sub_1818900D0(a7, v23, v9, 0, sub_18193AB78);
      goto LABEL_29;
    }

    result = sub_1818900D0(a7, v23, v9, v11, sub_18193AB78);
    goto LABEL_28;
  }

  LOBYTE(a3) = v24;
  a4 = v36;
  if (v23)
  {
LABEL_36:
    v29 = *(v23 - 1);
    v28 = v23 - 8;
    v27 = v29;
    if (v29 >= 2)
    {
      *v28 = v27 - 1;
      goto LABEL_46;
    }

    v30 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v31 = a4;
      v32 = a3;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v28);
      --qword_1ED456A90;
      off_1ED452EB0(v28);
      v28 = xmmword_1ED456AF0;
      LOBYTE(a3) = v32;
      a4 = v31;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_46;
      }

      v30 = &xmmword_1ED452F28;
    }

    else
    {
      v31 = a4;
      v32 = a3;
    }

    (*v30)(v28);
    LOBYTE(a3) = v32;
    a4 = v31;
  }

LABEL_46:
  v33 = a4;
  v24 = a3;
  if (sqlite3_initialize() || (v34 = sub_181902484(v9 + 12, 0x100004000313F17)) == 0)
  {
    *v22 = 0;
    return 7;
  }

  *v34 = 1;
  v23 = (v34 + 8);
  *v22 = v34 + 8;
  result = sub_1818EEE54(*(v17 + 40), v33, v9, (v34 + 8), 0);
  if (!result)
  {
    v35 = &v23[v9];
    *v35 = 0;
    v35[2] = 0;
    *(v22 + 4) = v18;
    *(v22 + 5) = v37;
    *(v22 + 6) = v38;
    *(v22 + 1) = sub_181943688(*(v17 + 40));
    goto LABEL_51;
  }

  return result;
}

uint64_t sub_18193E5FC(int8x8_t *a1, unint64_t a2)
{
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      return sub_1819436D0(a1, a2);
    }

    else
    {
      a1->i8[0] = (a2 >> 7) | 0x80;
      a1->i8[1] = a2 & 0x7F;
      return 2;
    }
  }

  else
  {
    a1->i8[0] = a2;
    return 1;
  }
}

uint64_t sub_18193E638(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = *(a1 + 136);
  if (!*(v3 + 8))
  {
    return -1;
  }

  result = *(v3 + 24);
  v4 = *(a1 + 84);
  if (v4 >= 1)
  {
    if (v4 == 1)
    {
      v5 = 0;
LABEL_12:
      v9 = (a1 + 8 * v5 + 144);
      v10 = v4 - v5;
      do
      {
        v11 = *v9++;
        result *= *(v11 + 24);
        --v10;
      }

      while (v10);
      return result;
    }

    v5 = v4 & 0x7E;
    v6 = a1 + 152;
    v7 = 1;
    v8 = v5;
    do
    {
      result *= *(*(v6 - 8) + 24);
      v7 *= *(*v6 + 24);
      v6 += 16;
      v8 -= 2;
    }

    while (v8);
    result *= v7;
    if (v5 != v4)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_18193E6E0(uint64_t a1, int a2)
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
  if (*(*v3 + 128) < a2 && *(v5 + 10))
  {
    result = sub_181935F24(v5, a2);
    if (!*(a1 + 17))
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!*(a1 + 17))
    {
      return result;
    }
  }

  v7 = *(a1 + 20) - 1;
  *(a1 + 20) = v7;
  if (!v7)
  {
    v8 = result;
    sub_181932ECC(a1);
    return v8;
  }

  return result;
}

void sub_18193E78C(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32 * a2 + 24);
    *(v4 + 114) |= 8u;
    *(*(v3 + 56) + 114) |= 8u;
    *(a1 + 44) &= ~0x10u;
  }

  if (!*(a1 + 72))
  {
    v5 = *(a1 + 40);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 24;
      do
      {
        v8 = *(*(a1 + 32) + v7);
        if ((*(v8 + 114) & 8) != 0)
        {
          sub_18194116C(v8);
          v5 = *(a1 + 40);
        }

        ++v6;
        v7 += 32;
      }

      while (v6 < v5);
    }
  }
}

uint64_t sub_18193E83C(uint64_t result, int a2, int *a3)
{
  v3 = *(result + 8);
  if (*(result + 17))
  {
    ++*(result + 20);
    if (!*(result + 18))
    {
      v5 = result;
      v6 = a3;
      v7 = a2;
      sub_181932DEC(result);
      a2 = v7;
      a3 = v6;
      result = v5;
      if (v7 == 15)
      {
        goto LABEL_4;
      }

LABEL_6:
      v4 = bswap32(*(*(v3[3] + 80) + 4 * a2 + 36));
      goto LABEL_7;
    }
  }

  if (a2 != 15)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = *(result + 28) + *(*v3 + 132);
LABEL_7:
  *a3 = v4;
  if (*(result + 17))
  {
    v8 = *(result + 20) - 1;
    *(result + 20) = v8;
    if (!v8)
    {

      return sub_181932ECC(result);
    }
  }

  return result;
}

void *sub_18193E914(void *result, int a2)
{
  v2 = *(*(result[4] + 32 * a2 + 24) + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      if (!*(v4 + 63))
      {
        for (i = *(v4 + 72); i; i = *(i + 8))
        {
          sub_1818F1620(v3, *(i + 48));
          *(i + 48) = 0;
          result = sub_1818F1620(v3, *(i + 56));
          *(i + 56) = 0;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_18193E9A0(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v6 = a5;
      v7 = a3;
      v8 = a2;
      v9 = a4;
      sub_181932DEC(a1);
      a4 = v9;
      a2 = v8;
      a3 = v7;
      a5 = v6;
    }

    v10 = *(a1 + 8);
    if (a2 <= 1)
    {
      if (!a2)
      {
        v20 = sub_18190EDA8(83948);
LABEL_30:
        v19 = v20;
        if (*(a1 + 17))
        {
LABEL_31:
          v22 = *(a1 + 20) - 1;
          *(a1 + 20) = v22;
          if (!v22)
          {
            sub_181932ECC(a1);
          }

          return v19;
        }

        return v19;
      }

      a2 = *(v10 + 64) != 0;
    }

    *(a5 + 80) = a2;
    *(a5 + 84) = -1;
    *(a5 + 128) = a4;
    *(a5 + 8) = a1;
    *(a5 + 32) = v10;
    *(a5 + 1) = 0;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = *(v10 + 16);
      do
      {
        if (*(v13 + 80) == a2)
        {
          *(v13 + 1) |= 0x20u;
          v12 = 32;
          *(a5 + 1) = 32;
        }

        v13 = *(v13 + 40);
      }

      while (v13);
      v18 = v12 | 1;
    }

    else
    {
      v18 = 1;
    }

    *a5 = 1;
    *(a5 + 40) = v11;
    *(v10 + 16) = a5;
    v19 = 0;
    if (a3)
    {
      *(a5 + 1) = v18;
      *(a5 + 2) = 0;
      if (!*(v10 + 136))
      {
        v20 = sub_181943D14(v10);
        goto LABEL_30;
      }
    }

    else
    {
      *(a5 + 2) = 2;
    }

    if (*(a1 + 17))
    {
      goto LABEL_31;
    }

    return v19;
  }

  v14 = *(a1 + 8);
  if (a2 <= 1)
  {
    if (!a2)
    {

      return sub_18190EDA8(83948);
    }

    a2 = *(v14 + 64) != 0;
  }

  *(a5 + 80) = a2;
  *(a5 + 84) = -1;
  *(a5 + 128) = a4;
  *(a5 + 8) = a1;
  *(a5 + 32) = v14;
  *(a5 + 1) = 0;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *(v14 + 16);
    do
    {
      if (*(v17 + 80) == a2)
      {
        *(v17 + 1) |= 0x20u;
        v16 = 32;
        *(a5 + 1) = 32;
      }

      v17 = *(v17 + 40);
    }

    while (v17);
    v21 = v16 | 1;
  }

  else
  {
    v21 = 1;
  }

  *a5 = 1;
  *(a5 + 40) = v15;
  *(v14 + 16) = a5;
  v19 = 0;
  if (!a3)
  {
    *(a5 + 2) = 2;
    return v19;
  }

  *(a5 + 1) = v21;
  *(a5 + 2) = 0;
  if (*(v14 + 136))
  {
    return v19;
  }

  return sub_181943D14(v14);
}

uint64_t sub_18193EC18(uint64_t a1, unsigned int *a2, char a3)
{
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  v6 = *(a1 + 8);
  v42 = 0;
  v41 = 0;
  if (!*(v6 + 33))
  {
    result = sub_1818E21FC(v6, &v42, &v41, 1u, 0);
    v40 = result;
    if (result)
    {
      goto LABEL_50;
    }

    v10 = v42;
    goto LABEL_12;
  }

  v39 = 0;
  v38 = 0;
  for (i = *(v6 + 2); i; i = *(i + 40))
  {
    *(i + 1) &= ~4u;
  }

  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (*(a1 + 18))
    {
      v8 = 0;
    }

    else
    {
      sub_181932DEC(a1);
      v8 = *(a1 + 17) == 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v13 = bswap32(*(*(*(v6 + 3) + 80) + 52));
  if (!v8)
  {
    v14 = *(a1 + 20) - 1;
    *(a1 + 20) = v14;
    if (!v14)
    {
      sub_181932ECC(a1);
    }
  }

  if (v13 > v6[16])
  {
    result = sub_18190EDA8(89276);
    goto LABEL_50;
  }

  do
  {
    do
    {
      while (1)
      {
        v15 = v13++;
        if (v13 >= 2)
        {
          break;
        }

        if (v13)
        {
          goto LABEL_26;
        }
      }

      v16 = (v15 - 1) / (v6[14] / 5u + 1) * (v6[14] / 5u + 1);
      if (v16 + 1 == dword_1EA8315A8 / v6[13])
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }
    }

    while (v13 == v17 + v16);
LABEL_26:
    ;
  }

  while (v15 == dword_1EA8315A8 / v6[13]);
  v41 = v15 + 1;
  result = sub_1818E21FC(v6, &v38, &v39, v15 + 1, 1);
  v40 = result;
  if (result)
  {
    goto LABEL_50;
  }

  v18 = v39;
  if (v39 - 1 == v15)
  {
    v10 = v38;
    v42 = v38;
    goto LABEL_38;
  }

  v37 = 0;
  v36 = 0;
  result = *(v6 + 2);
  if (result)
  {
    result = sub_18193880C(result, 0, 0);
  }

  if (v38)
  {
    v21 = result;
    v22 = *(v38 + 112);
    if ((*(v22 + 52) & 0x20) != 0)
    {
      v27 = *(v22 + 40);
      --*(v27 + 152);
      *(v22 + 32) = *(v27 + 168);
      *(v27 + 168) = v22;
      (*(**(v27 + 72) + 144))(*(v27 + 72), *(v27 + 200) * (*(v22 + 48) - 1), *(v22 + 8));
    }

    else
    {
      sub_181932B68(v22);
    }

    result = v21;
  }

  if (result)
  {
    goto LABEL_50;
  }

  v43 = 0;
  result = (*(*v6 + 288))();
  if (result)
  {
    goto LABEL_50;
  }

  v28 = *(v43 + 16);
  if (*(v28 + 4) - 1 != v15)
  {
    v29 = *(v43 + 8);
    *(v28 + 112) = v43;
    *(v28 + 72) = v6;
    *(v28 + 80) = v29;
    *(v28 + 4) = v15 + 1;
    if (v15)
    {
      v30 = 0;
    }

    else
    {
      v30 = 100;
    }

    *(v28 + 9) = v30;
  }

  v42 = v28;
  result = sub_181938B74(v6, v15 + 1, &v37, &v36);
  if ((v37 - 1) <= 1u)
  {
    result = sub_18190EDA8(89324);
    goto LABEL_70;
  }

  if (result)
  {
LABEL_70:
    v26 = *(v28 + 112);
LABEL_71:
    v32 = result;
    sub_181932B18(v26);
    result = v32;
    goto LABEL_50;
  }

  v33 = sub_181938D2C(v6, v28, v37, v36, v18, 0);
  sub_181932B18(*(v28 + 112));
  if (v33)
  {
    result = v33;
    goto LABEL_50;
  }

  result = sub_18193380C(v6, v15 + 1, &v42);
  if (!result)
  {
    v10 = v42;
    v34 = sub_1818D8D88(*(v42 + 112));
    v40 = v34;
    if (v34)
    {
      v35 = v34;
      sub_181932B18(*(v10 + 112));
      result = v35;
      goto LABEL_50;
    }

LABEL_38:
    sub_1818EF720(v6, v15 + 1, 1, 0, &v40);
    result = v40;
    if (v40)
    {
      if (v10)
      {
        v19 = v40;
        v20 = *(v10 + 112);
        if ((*(v20 + 52) & 0x20) != 0)
        {
          v31 = *(v20 + 40);
          --*(v31 + 152);
          *(v20 + 32) = *(v31 + 168);
          *(v31 + 168) = v20;
          (*(**(v31 + 72) + 144))(*(v31 + 72), *(v31 + 200) * (*(v20 + 48) - 1), *(v20 + 8));
        }

        else
        {
          sub_181932B68(v20);
        }

        result = v19;
      }

      goto LABEL_50;
    }

    result = sub_181908E4C(a1, 4, v15 + 1);
    v40 = result;
    if (result)
    {
      if (v10)
      {
        v26 = *(v10 + 112);
        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_12:
    if (a3)
    {
      v11 = 13;
    }

    else
    {
      v11 = 10;
    }

    sub_1818E2114(v10, v11);
    v12 = *(v10 + 112);
    if (v12)
    {
      if ((*(v12 + 52) & 0x20) != 0)
      {
        v23 = *(v12 + 40);
        --*(v23 + 152);
        *(v12 + 32) = *(v23 + 168);
        *(v23 + 168) = v12;
        (*(**(v23 + 72) + 144))(*(v23 + 72), *(v23 + 200) * (*(v12 + 48) - 1), *(v12 + 8));
      }

      else
      {
        sub_181932B68(v12);
      }
    }

    result = 0;
    *a2 = v41;
  }

LABEL_50:
  if (*(a1 + 17))
  {
    v24 = *(a1 + 20) - 1;
    *(a1 + 20) = v24;
    if (!v24)
    {
      v25 = result;
      sub_181932ECC(a1);
      return v25;
    }
  }

  return result;
}

uint64_t sub_18193F130(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 102) == 2 || word_1ED452E84 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 180);
  }

  v8 = 8 * *(*(a3 + 48) + 8) + 32;
  v9 = v7 + 1;
  v10 = 96 * (v7 + 1) + 96;
  v11 = sub_181929E8C(a1, v8 + v10, 0x103004064721B37);
  if (!v11)
  {
    *(a3 + 40) = 0;
    return 7;
  }

  v12 = v11;
  bzero(v11, v8 + v10);
  *(a3 + 40) = v12;
  v13 = *(*(a1 + 32) + 8);
  v14 = v12 + v10;
  v12[5] = v14;
  memcpy(v14, *(a3 + 48), v8);
  *(v14 + 2) = 0;
  if (a2 && !v7)
  {
    *(v14 + 3) = a2;
  }

  if (!*(v13 + 17))
  {
    v15 = *(*(v13 + 8) + 52);
    *(v12 + 3) = v15;
    goto LABEL_19;
  }

  ++*(v13 + 20);
  if (*(v13 + 18))
  {
    v15 = *(*(v13 + 8) + 52);
    *(v12 + 3) = v15;
  }

  else
  {
    sub_181932DEC(v13);
    v17 = *(v13 + 17);
    v15 = *(*(v13 + 8) + 52);
    *(v12 + 3) = v15;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  v18 = *(v13 + 20) - 1;
  *(v13 + 20) = v18;
  if (!v18)
  {
    sub_181932ECC(v13);
  }

LABEL_19:
  *(v12 + 91) = v9;
  *(v12 + 90) = v7 - 1;
  *(v12 + 89) = (v9 & 0xFE) != 0;
  v12[4] = a1;
  v19 = (v7 + 1);
  if (v7 == 0xFF)
  {
    goto LABEL_27;
  }

  if (v19 < 2)
  {
    v20 = 0;
LABEL_25:
    v23 = 96 * v20 + 112;
    do
    {
      *(v12 + v23) = v12;
      ++v20;
      v23 += 96;
    }

    while (v20 < v19);
    goto LABEL_27;
  }

  v20 = v19 & 0xFE;
  v21 = v12 + 26;
  v22 = v20;
  do
  {
    *(v21 - 12) = v12;
    *v21 = v12;
    v21 += 24;
    v22 -= 2;
  }

  while (v22);
  if (v20 != v19)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (*(a1 + 102) == 2)
  {
    goto LABEL_35;
  }

  v24 = dword_1ED452FE8 * v15;
  *v12 = dword_1ED452FE8 * v15;
  v25 = *(*(*(a1 + 32) + 24) + 116);
  v26 = -1024;
  if (v25 >= 0)
  {
    v26 = v15;
  }

  v27 = v26 * v25;
  if (v27 >= 0x20000000)
  {
    LODWORD(v27) = 0x20000000;
  }

  if (v24 <= v27)
  {
    v24 = v27;
  }

  *(v12 + 1) = v24;
  if (byte_1ED452E88)
  {
LABEL_35:
    result = 0;
  }

  else
  {
    *(v12 + 21) = v15;
    v29 = sub_181902484(v15, 0x100004077774924);
    v12[8] = v29;
    if (v29)
    {
      result = 0;
    }

    else
    {
      result = 7;
    }
  }

  if (*(v14 + 4) <= 0xCu)
  {
    v28 = *(v14 + 4);
    if ((!v28 || v28 == *(a1 + 16)) && (**(v14 + 3) & 2) == 0)
    {
      *(v12 + 92) = 3;
    }
  }

  return result;
}

uint64_t sub_18193F3D4(uint64_t a1, int64_t a2, char a3, int *a4)
{
  if (!*a1 && (*(a1 + 1) & 2) != 0)
  {
    v30 = *(a1 + 48);
    if (v30 == a2)
    {
      result = 0;
      *a4 = 0;
      return result;
    }

    if (v30 < a2)
    {
      if ((*(a1 + 1) & 8) != 0)
      {
        goto LABEL_38;
      }

      if (v30 + 1 == a2)
      {
        *a4 = 0;
        result = sub_1818C85D8(a1);
        if (result != 101)
        {
          if (result)
          {
            return result;
          }

          sub_181938B20(a1);
          if (*(a1 + 48) == a2)
          {
            return 0;
          }
        }
      }
    }
  }

  result = sub_1818C6AC0(a1);
  if (result == 16)
  {
LABEL_38:
    result = 0;
    *a4 = -1;
    return result;
  }

  if (result)
  {
    return result;
  }

  v31 = a4;
  v9 = 1 - a3;
  v32 = 1 - a3;
LABEL_6:
  v10 = 0;
  v11 = *(a1 + 136);
  v33 = *(v11 + 24);
  v12 = v33 - 1;
  v13 = (v33 - 1) >> v9;
  v14 = *(v11 + 26);
  v16 = *(v11 + 96);
  v15 = *(v11 + 104);
  v17 = *(v11 + 2);
  while (1)
  {
    v34 = 0;
    v18 = (*(v16 + 2 * v13 + 1) | (*(v16 + 2 * v13) << 8)) & *&v14;
    v19 = (v15 + v18);
    if (v17)
    {
      v20 = (v15 + v18);
      while (1)
      {
        v21 = *v20++;
        if ((v21 & 0x80000000) == 0)
        {
          break;
        }

        v19 = v20;
        if (v20 >= *(v11 + 88))
        {
          return sub_18193596C(85090, v11);
        }
      }

      ++v19;
    }

    sub_1818C7200(v19, &v34);
    v22 = v34;
    if (v34 < a2)
    {
      v10 = v13 + 1;
      if (v13 >= v12)
      {
        v23 = -1;
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    if (v34 <= a2)
    {
      break;
    }

    if (v10 >= v13)
    {
      v23 = 1;
LABEL_23:
      if (*(v11 + 8))
      {
        result = 0;
        *(a1 + 86) = v13;
        *v31 = v23;
LABEL_41:
        *(a1 + 70) = 0;
        return result;
      }

LABEL_24:
      v24 = *(v11 + 80);
      if (v10 >= v33)
      {
        v28 = (v24 + *(v11 + 9));
        v26 = (v28[8] << 24) | (v28[9] << 16) | (v28[10] << 8);
        v27 = v28 + 11;
      }

      else
      {
        v25 = (v24 + ((*(v16 + 2 * v10 + 1) | (*(v16 + 2 * v10) << 8)) & *&v14));
        v26 = (*v25 << 24) | (v25[1] << 16) | (v25[2] << 8);
        v27 = v25 + 3;
      }

      v29 = *v27;
      *(a1 + 86) = v10;
      result = sub_1818C6EF4(a1, v26 | v29);
      v9 = v32;
      if (result)
      {
        goto LABEL_41;
      }

      goto LABEL_6;
    }

    v12 = v13 - 1;
LABEL_19:
    v13 = (v12 + v10) >> 1;
  }

  *(a1 + 86) = v13;
  if (!*(v11 + 8))
  {
    v10 = v13;
    goto LABEL_24;
  }

  result = 0;
  *(a1 + 1) |= 2u;
  *(a1 + 48) = v22;
  *(a1 + 70) = 0;
  *v31 = 0;
  return result;
}

uint64_t sub_18193F674(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  v7 = sub_1818D0D38;
  if (*(*a2 + 8) <= 0xDu)
  {
    v8 = *(a2 + 8);
    v9 = *(v8 + 20);
    if (**(v6 + 24))
    {
      v7 = sub_1818D0D38;
      if ((**(v6 + 24) & 2) != 0)
      {
        goto LABEL_11;
      }

      v10 = -1;
      v11 = 1;
    }

    else
    {
      v10 = 1;
      v11 = -1;
    }

    *(a2 + 32) = v11;
    *(a2 + 33) = v10;
    if ((v9 & 4) != 0)
    {
      *(a2 + 16) = *v8;
      v7 = sub_181944A68;
    }

    else
    {
      v7 = sub_1818D0D38;
      if ((v9 & 0x39) == 0)
      {
        v7 = sub_1818D0D38;
        if (!*(v6 + 32))
        {
          *(a2 + 16) = *(v8 + 8);
          *(a2 + 24) = *(v8 + 16);
          v7 = sub_181944BB8;
        }
      }
    }
  }

LABEL_11:
  v12 = v7;
  *(a2 + 31) = 0;
  if (*a1)
  {
    goto LABEL_12;
  }

  v43 = *(a1 + 136);
  if (!*(v43 + 8))
  {
    goto LABEL_12;
  }

  v44 = *(a1 + 84);
  if (v44 >= 1)
  {
    v45 = a1 + 144;
    v46 = (a1 + 88);
    do
    {
      v47 = *v46++;
      if (v47 < *(*v45 + 24))
      {
        goto LABEL_12;
      }

      v45 += 8;
    }

    while (--v44);
  }

  v48 = *(a1 + 86);
  if (*(v43 + 24) - 1 == v48)
  {
    v49 = (*(v43 + 104) + ((*(*(v43 + 96) + 2 * v48 + 1) | (*(*(v43 + 96) + 2 * v48) << 8)) & *(v43 + 26)));
    v50 = *v49;
    if (v50 <= *(v43 + 11) || (v51 = v49[1], (v51 & 0x80000000) == 0) && (((v50 & 0x7F) << 7) | v51) <= *(v43 + 14))
    {
      v52 = v7();
      if (v52 <= 0 && !*(v4 + 31))
      {
        v62 = v52;
        result = 0;
        *a3 = v62;
        return result;
      }
    }
  }

  if (*(v5 + 84) < 1 || (v53 = *(v5 + 136), v54 = (*(v53 + 104) + ((*(*(v53 + 96) + 1) | (**(v53 + 96) << 8)) & *(v53 + 26))), v57 = *v54, v56 = (v54 + 1), v55 = v57, v57 > *(v53 + 11)) && ((v58 = *v56, (v58 & 0x80000000) != 0) || (((v55 & 0x7F) << 7) | v58) > *(v53 + 14)) || v12() > 0 || *(v4 + 31))
  {
    *(v4 + 31) = 0;
LABEL_12:
    result = sub_1818C6AC0(v5);
    if (result == 16)
    {
      result = 0;
      *a3 = -1;
      return result;
    }

    if (result)
    {
      return result;
    }

    v14 = *(v5 + 136);
    goto LABEL_15;
  }

  *(v5 + 1) &= 0xF3u;
  v14 = *(v5 + 136);
  if (!*v14)
  {
    v61 = 85286;
LABEL_84:

    return sub_18190EDA8(v61);
  }

LABEL_15:
  v65 = a3;
  v66 = v5 + 88;
  v67 = v5 + 144;
  v68 = v12;
  v15 = *(v14 + 24);
  v69 = v4;
  v70 = v5;
LABEL_16:
  v16 = 0;
  v17 = v15 - 1;
  v18 = v15 - 1;
  while (1)
  {
    v19 = v18;
    v20 = (*(v14 + 96) + (v18 & 0xFFFFFFFFFFFFFFFELL));
    v21 = (*(v14 + 104) + ((v20[1] | (*v20 << 8)) & *(v14 + 26)));
    v24 = *v21;
    v23 = (v21 + 1);
    v22 = v24;
    if (v24 > *(v14 + 11))
    {
      v25 = *v23;
      if ((v25 & 0x80000000) != 0 || (((v22 & 0x7F) << 7) | v25) > *(v14 + 14))
      {
        break;
      }
    }

    v31 = v12();
    v33 = v19 >> 1;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_17:
    v16 = v33 + 1;
LABEL_18:
    v18 = v17 + v16;
    if (v16 > v17)
    {
      if (*(v14 + 8))
      {
        result = 0;
        *(v5 + 86) = v19 >> 1;
        *v65 = v31;
        goto LABEL_90;
      }

      v34 = *(v14 + 80);
      if (v16 >= *(v14 + 24))
      {
        v39 = (v34 + *(v14 + 9));
        v37 = (v39[8] << 24) | (v39[9] << 16) | (v39[10] << 8);
        v38 = v39 + 11;
      }

      else
      {
        v35 = (*(v14 + 96) + 2 * v16);
        v36 = (v34 + ((v35[1] | (*v35 << 8)) & *(v14 + 26)));
        v37 = (*v36 << 24) | (v36[1] << 16) | (v36[2] << 8);
        v38 = v36 + 3;
      }

      v40 = *v38;
      *(v5 + 70) = 0;
      *(v5 + 1) &= 0xF9u;
      v41 = *(v5 + 84);
      if (v41 >= 19)
      {
        v61 = 85436;
        goto LABEL_84;
      }

      *(v66 + 2 * v41) = v16;
      *(v67 + 8 * v41) = *(v5 + 136);
      *(v5 + 86) = 0;
      *(v5 + 84) = v41 + 1;
      result = sub_181943894(*(v5 + 32), v37 | v40, (v5 + 136));
      if (result)
      {
        goto LABEL_89;
      }

      v14 = *(v5 + 136);
      v15 = *(v14 + 24);
      if (!*(v14 + 24) || *(v14 + 1) != *(v5 + 85))
      {
        v42 = *(v14 + 112);
        if ((*(v42 + 52) & 0x20) != 0)
        {
          v63 = *(v42 + 40);
          --*(v63 + 152);
          *(v42 + 32) = *(v63 + 168);
          *(v63 + 168) = v42;
          (*(**(v63 + 72) + 144))(*(v63 + 72), *(v63 + 200) * (*(v42 + 48) - 1), *(v42 + 8));
        }

        else
        {
          sub_181932B68(v42);
        }

        result = sub_18190EDA8(85447);
LABEL_89:
        v64 = *(v5 + 84) - 1;
        *(v5 + 84) = v64;
        *(v5 + 136) = *(v67 + 8 * v64);
        goto LABEL_90;
      }

      goto LABEL_16;
    }
  }

  (*(v14 + 128))(v14, *(v14 + 104) + ((v20[1] | (*v20 << 8)) & *(v14 + 26)) - *(v14 + 10), v5 + 48);
  v26 = *(v5 + 48);
  if (v26 < 2 || v26 / *(*(v5 + 32) + 56) > *(*(v5 + 32) + 64))
  {
    result = sub_18193596C(85373, v14);
    goto LABEL_90;
  }

  v27 = sub_181902484((*(v5 + 48) & 0x7FFFFFFFLL) + 18, 2291502768);
  if (!v27)
  {
    result = 7;
    v5 = v70;
    goto LABEL_90;
  }

  v28 = v27;
  *(v70 + 86) = v19 >> 1;
  v29 = sub_1818EEE54(v70, 0, v26, v27, 0);
  v30 = &v28[v26 & 0x7FFFFFFF];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 8) = 0;
  *(v70 + 1) &= ~4u;
  if (v29)
  {
    v59 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v60 = v29;
      v5 = v70;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v28);
      --qword_1ED456A90;
      off_1ED452EB0(v28);
      v28 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v59 = &xmmword_1ED452F28;
        goto LABEL_77;
      }
    }

    else
    {
      v60 = v29;
      v5 = v70;
LABEL_77:
      (*v59)(v28);
    }

    result = v60;
    goto LABEL_90;
  }

  v31 = sub_1819403A0(v26, v28, v69, 0);
  v32 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_33;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v28);
  --qword_1ED456A90;
  off_1ED452EB0(v28);
  v28 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v32 = &xmmword_1ED452F28;
LABEL_33:
    (*v32)(v28);
  }

  v12 = v68;
  v4 = v69;
  v5 = v70;
  v33 = v19 >> 1;
  if (v31 < 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  if (v31)
  {
    v17 = v33 - 1;
    goto LABEL_18;
  }

  *v65 = 0;
  *(v5 + 86) = v19 >> 1;
  if (*(v4 + 31))
  {
    result = sub_18190EDA8(85405);
  }

  else
  {
    result = 0;
  }

LABEL_90:
  *(v5 + 70) = 0;
  return result;
}

void sub_18193FE00(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  if ((*(a5 + 48) & 0x80) != 0)
  {
    for (i = *(a5 + 16); i; i = *(i + 40))
    {
      if ((*(i + 99) & 3) == 2)
      {
        break;
      }
    }

    v11 = 0;
    a6 = 0;
    *&v40 = i;
  }

  else if (a3 == 23)
  {
    v11 = *(a1[13] + (a7 << 6));
  }

  else
  {
    v11 = a6;
  }

  *&v32 = &v41;
  BYTE4(v41) = *(v10 + 100);
  WORD3(v41) = *(a5 + 54);
  v30[0] = a1;
  v30[1] = a2;
  LODWORD(v31) = a3;
  v42 = v10;
  v43 = 0;
  *&v34 = a6;
  *(&v34 + 1) = v11;
  *(&v39 + 1) = a5;
  *(&v33 + 1) = __PAIR64__(a8, a7);
  *(v10 + 368) = v30;
  (*(v10 + 360))(*(v10 + 352), v10);
  *(v10 + 368) = 0;
  if (*(&v31 + 1))
  {
    sub_181929C84(v10, *(&v31 + 1));
  }

  v13 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v14 = 0;
    v15 = (*(v32 + 6) << 6) + 64;
    do
    {
      v16 = v13[1] + v14;
      if (*(v16 + 40) && *(v16 + 32))
      {
        sub_18193CA00(v16);
      }

      v14 += 64;
    }

    while (v15 != v14);
    sub_181939EC8(v10, v13);
  }

  v17 = v33;
  if (v33)
  {
    v18 = 0;
    v19 = (*(v32 + 6) << 6) + 64;
    do
    {
      v20 = v17[1] + v18;
      if (*(v20 + 40) && *(v20 + 32))
      {
        sub_18193CA00(v20);
      }

      v18 += 64;
    }

    while (v19 != v18);
    sub_181939EC8(v10, v17);
  }

  if (WORD2(v36) & 0x9000 | v37)
  {
    sub_18193CA00(&v35);
  }

  v21 = v39;
  if (v39)
  {
    v22 = *(a2 + 64);
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = v39 + v23;
        if ((*(v39 + v23 + 20) & 0x9000) != 0 || *(v25 + 32))
        {
          sub_18193CA00(v25);
          LOWORD(v22) = *(a2 + 64);
        }

        ++v24;
        v23 += 64;
      }

      while (v24 < v22);
      v21 = v39;
    }

    sub_181939EC8(v10, v21);
  }

  v26 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v27 = *(a5 + 54);
    if (v27 < 1)
    {
      goto LABEL_48;
    }

    v28 = 0;
    do
    {
      v29 = *(*(&v40 + 1) + 8 * v28);
      if (v29)
      {
        if ((*(v29 + 20) & 0x9000) != 0 || *(v29 + 32))
        {
          sub_18193CA00(*(*(&v40 + 1) + 8 * v28));
        }

        sub_181929C84(*(v29 + 24), v29);
        LOWORD(v27) = *(a5 + 54);
      }

      ++v28;
    }

    while (v28 < v27);
    v26 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
LABEL_48:
      sub_181929C84(v10, v26);
    }
  }
}

uint64_t sub_18194010C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a2 + 8);
  v5 = (v4 + 1);
  v6 = *(v4 + 1);
  if (v6 < 0)
  {
    v7 = *(v4 + 2);
    if (*(v4 + 2) < 0)
    {
      v8 = *(v4 + 3);
      if (v8 < 0)
      {
        v33 = 0;
        sub_1818C7200(v5, &v33);
        if (HIDWORD(v33))
        {
          v6 = -1;
        }

        else
        {
          v6 = v33;
        }
      }

      else
      {
        v6 = ((v6 & 0x7F) << 14) | ((v7 & 0x7F) << 7) | v8;
      }
    }

    else
    {
      v6 = v7 | ((v6 & 0x7F) << 7);
    }
  }

  if (v6 == 7 || (v6 - 1) > 8)
  {
    if (v6 < 11 || (v6 & 1) == 0)
    {
      *(v3 + 92) = 0;
      goto LABEL_21;
    }

    v11 = v3[23] & 2;
  }

  else
  {
    v11 = v3[23] & 1;
  }

  *(v3 + 92) = v11;
LABEL_21:
  v12 = *(a2 + 16);
  v13 = 1;
  if (v12 >= 0x80)
  {
    v14 = *(a2 + 16);
    do
    {
      v15 = v14 >> 14;
      v14 >>= 7;
      ++v13;
    }

    while (v15);
  }

  v16 = v12 + 16;
  v17 = v13 + v12;
  v18 = v3[1];
  if (!v18)
  {
    goto LABEL_33;
  }

  if (!*(v3 + 8))
  {
    v21 = *(v3 + 9);
    if (v21 > v18 || v21 > *v3 && dword_1ED456B08)
    {
      goto LABEL_32;
    }

LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  v19 = 0;
  v20 = v3[20];
  if (v20 && v16 + v20 > v18)
  {
LABEL_32:
    v19 = sub_181946B00(v3);
    *(v3 + 9) = 0;
    v3[20] = 0;
  }

LABEL_34:
  *(v3 + 9) += v17;
  if (v17 > v3[2])
  {
    v3[2] = v17;
  }

  v22 = *(v3 + 8);
  if (v22)
  {
    v23 = v3[20];
    v24 = v3[21];
    v25 = v23 + v16;
    v26 = *(v3 + 7);
    if (v23 + v16 <= v24)
    {
LABEL_55:
      v31 = (v22 + v23);
      v3[20] = v23 + ((v12 + 23) & 0xFFFFFFF8);
      if (v26)
      {
        v31[2] = v26 - v22;
      }

      goto LABEL_57;
    }

    do
    {
      v24 *= 2;
    }

    while (v24 < v25);
    if (v26)
    {
      v27 = v26 - v22;
    }

    else
    {
      v27 = -1;
    }

    v28 = v3[1];
    if (v24 < v28)
    {
      v28 = v24;
    }

    if (v28 <= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v28;
    }

    v22 = sub_18190287C(v22, v29, 2702968307);
    if (v22)
    {
      if ((v27 & 0x80000000) != 0)
      {
        v26 = *(v3 + 7);
      }

      else
      {
        v26 = v22 + v27;
        *(v3 + 7) = v26;
      }

      *(v3 + 8) = v22;
      v3[21] = v29;
      v23 = v3[20];
      goto LABEL_55;
    }
  }

  else
  {
    v30 = sub_181902484(v12 + 16, 0x102204052A42247);
    if (v30)
    {
      v31 = v30;
      *(v30 + 8) = *(v3 + 7);
LABEL_57:
      memcpy(v31 + 4, *(a2 + 8), *(a2 + 16));
      *v31 = *(a2 + 16);
      *(v3 + 7) = v31;
      return v19;
    }
  }

  return 7;
}

uint64_t sub_1819403A0(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, int a4)
{
  v4 = a3;
  v7 = a3[1];
  if (a4)
  {
    v8 = a2[1];
    if ((v8 & 0x80000000) != 0)
    {
      v12 = a2[2];
      if (a2[2] < 0)
      {
        v14 = a2[3];
        if (v14 < 0)
        {
          *&v78 = 0;
          v16 = sub_1818C7200(a2 + 1, &v78);
          if (DWORD1(v78))
          {
            v8 = -1;
          }

          else
          {
            v8 = v78;
          }

          v9 = (v16 + 1);
        }

        else
        {
          v8 = ((v8 & 0x7F) << 14) | ((v12 & 0x7F) << 7) | v14;
          v9 = 4;
        }
      }

      else
      {
        v8 = v12 | ((v8 & 0x7F) << 7);
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }

    v10 = *a2;
    if (v8 < 0x80)
    {
      v17 = byte_181A20DA4[v8];
    }

    else
    {
      v17 = (v8 - 12) >> 1;
    }

    v18 = v17 + v10;
    v7 += 64;
    v11 = 1;
    if (v17 + v10 > a1)
    {
LABEL_22:
      v19 = sub_18190EDA8(98488);
      result = 0;
      *(v4 + 31) = v19;
      return result;
    }
  }

  else
  {
    v10 = *a2;
    if (*a2 < 0)
    {
      v13 = a2[1];
      if (a2[1] < 0)
      {
        v15 = a2[2];
        if (v15 < 0)
        {
          *&v78 = 0;
          v9 = sub_1818C7200(a2, &v78);
          if (DWORD1(v78))
          {
            v10 = -1;
          }

          else
          {
            v10 = v78;
          }
        }

        else
        {
          v10 = ((v10 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v15;
          v9 = 3;
        }
      }

      else
      {
        v10 = v13 | ((v10 & 0x7F) << 7);
        v9 = 2;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v9 = 1;
    }

    v18 = v10;
    if (v10 > a1)
    {
      goto LABEL_22;
    }
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v21 = byte_181A20DA4;
  while (1)
  {
    v23 = *(v7 + 20);
    if ((v23 & 0x24) != 0)
    {
      v24 = a2[v9];
      v25 = v24 == 10;
      if (v24 >= 0xA)
      {
        goto LABEL_155;
      }

      if (v24 != 7)
      {
        if (!a2[v9])
        {
          goto LABEL_154;
        }

        v26 = &a2[v18];
        if (a2[v9] > 3u)
        {
          if (v24 == 4)
          {
            v27 = (*v26 << 24) | (v26[1] << 16) | (v26[2] << 8) | v26[3];
          }

          else if (v24 == 5)
          {
            v27 = bswap32(*(v26 + 2)) | ((v26[1] | (*v26 << 8)) << 32);
          }

          else
          {
            v27 = v24 == 6 ? bswap64(*v26) : v24 - 8;
          }
        }

        else if (v24 == 1)
        {
          v27 = *v26;
        }

        else
        {
          v27 = v24 == 2 ? v26[1] | (*v26 << 8) : (*v26 << 16) | (v26[1] << 8) | v26[2];
        }

        if (v27 < *v7)
        {
          goto LABEL_154;
        }

        if (v27 > *v7)
        {
          goto LABEL_162;
        }

        goto LABEL_144;
      }

      v34 = &a2[v18];
      v35 = ~((*v34 << 24) | (v34[1] << 16));
      *&v36 = (v34[4] << 24) | (v34[5] << 16) | (((*v34 << 24) | (v34[1] << 16) | (bswap32(*(v34 + 1)) >> 16)) << 32) | v34[7] | (v34[6] << 8);
      *&v78 = v36;
      if ((*&v36 & 0xFFFFFFFFFFFFFLL) != 0 && (v35 & 0x7FF00000) == 0)
      {
        v38 = 1;
      }

      else
      {
        v38 = 8;
      }

      WORD2(v79) = v38;
      v39 = v36;
      if (v36 < -9.22337204e18)
      {
        goto LABEL_160;
      }

      if (v36 >= 9.22337204e18 || (v40 = *v7, *v7 < v39))
      {
LABEL_161:
        v24 = 7;
LABEL_162:
        result = 1;
        goto LABEL_163;
      }

      if (v40 > v39)
      {
        goto LABEL_160;
      }

      if (v39 >= v40)
      {
        result = 0;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      v24 = 7u;
      if (v39 > v40)
      {
        goto LABEL_162;
      }

      goto LABEL_143;
    }

    if ((v23 & 8) == 0)
    {
      break;
    }

    v24 = a2[v9];
    v25 = v24 == 10;
    if (v24 >= 0xA)
    {
LABEL_155:
      v73 = 0;
      if (v25)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 1;
      }

      goto LABEL_164;
    }

    if (v24 != 7)
    {
      if (!a2[v9])
      {
        goto LABEL_154;
      }

      v41 = v4;
      v42 = a1;
      v43 = v21;
      sub_1818C7394(&a2[v18], a2[v9], &v78);
      v44 = *v7;
      if (*v7 < -9.22337204e18)
      {
LABEL_176:
        result = 1;
        v4 = v41;
        goto LABEL_163;
      }

      if (v44 >= 9.22337204e18 || v78 < v44)
      {
        goto LABEL_173;
      }

      if (v78 > v44)
      {
        goto LABEL_176;
      }

      result = v44 < v78;
      if (v44 > v78)
      {
LABEL_173:
        result = 0xFFFFFFFFLL;
        v4 = v41;
        goto LABEL_163;
      }

      v21 = v43;
      a1 = v42;
      v4 = v41;
      goto LABEL_143;
    }

    v46 = &a2[v18];
    v47 = ~((*v46 << 24) | (v46[1] << 16));
    *&v48 = (v46[4] << 24) | (v46[5] << 16) | (((*v46 << 24) | (v46[1] << 16) | (bswap32(*(v46 + 1)) >> 16)) << 32) | v46[7] | (v46[6] << 8);
    *&v78 = v48;
    v49 = (v47 & 0x7FF00000) != 0;
    if ((*&v48 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v49 = 1;
    }

    if (v49)
    {
      v50 = 8;
    }

    else
    {
      v50 = 1;
    }

    WORD2(v79) = v50;
    if (!v49 || *v7 > v48)
    {
LABEL_160:
      v24 = 7;
      result = 0xFFFFFFFFLL;
LABEL_163:
      v73 = v24 == 0;
      goto LABEL_164;
    }

    v24 = 7;
    if (*v7 < v48)
    {
      goto LABEL_162;
    }

LABEL_144:
    if (++v11 == *(v4 + 14) || (v24 < 0x80 ? (v70 = v21[v24]) : (v70 = (v24 - 12) >> 1), v18 += v70, v18 > a1))
    {
      *(v4 + 34) = 1;
      return *(v4 + 30);
    }

    if (v24 < 0x80)
    {
      v22 = 1;
    }

    else
    {
      v71 = v24;
      v22 = 1;
      do
      {
        v72 = v71 >> 14;
        v71 >>= 7;
        ++v22;
      }

      while (v72);
    }

    v7 += 64;
    v9 += v22;
    if (v9 >= v10)
    {
      v74 = 98650;
LABEL_159:
      v75 = sub_18190EDA8(v74);
      result = 0;
      *(v4 + 31) = v75;
      return result;
    }
  }

  v28 = &a2[v9];
  if ((v23 & 2) != 0)
  {
    v24 = *v28;
    if ((v24 & 0x80000000) != 0)
    {
      v45 = v28[1];
      if (v28[1] < 0)
      {
        v52 = v28[2];
        if (v52 < 0)
        {
          v82 = 0;
          sub_1818C7200(v28, &v82);
          if (HIDWORD(v82))
          {
            v24 = -1;
          }

          else
          {
            v24 = v82;
          }
        }

        else
        {
          v24 = ((v24 & 0x7F) << 14) | ((v45 & 0x7F) << 7) | v52;
        }
      }

      else
      {
        v24 = v45 | ((v24 & 0x7F) << 7);
      }
    }

    if (v24 < 0xC)
    {
LABEL_154:
      result = 0xFFFFFFFFLL;
      goto LABEL_163;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_161;
    }

    v54 = (v24 - 12) >> 1;
    LODWORD(v79) = v54;
    if (v54 + v18 > a1 || (v55 = *v4, v11 >= *(*v4 + 8)))
    {
      v74 = 98569;
      goto LABEL_159;
    }

    if (*(v55 + 32 + 8 * v11))
    {
      BYTE6(v79) = *(v55 + 4);
      *(&v79 + 1) = *(v55 + 16);
      WORD2(v79) = 2;
      *(&v78 + 1) = &a2[v18];
      result = sub_1819433F0(&v78, v7, *(v55 + 32 + 8 * v11), v4 + 31);
    }

    else
    {
      v56 = *(v7 + 16);
      v57 = (v54 - v56);
      if (v54 >= v56)
      {
        v54 = *(v7 + 16);
      }

      result = memcmp(&a2[v18], *(v7 + 8), v54);
      if (result)
      {
        v24 = 7;
        goto LABEL_163;
      }

      result = v57;
    }

    v21 = byte_181A20DA4;
    goto LABEL_143;
  }

  v24 = *v28;
  if ((v23 & 0x10) == 0)
  {
    if (*v28)
    {
      v29 = v24 == 10;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      if (v24 != 7)
      {
        goto LABEL_162;
      }

      v30 = &a2[v18];
      v31 = ~((*v30 << 24) | (v30[1] << 16));
      *&v78 = (v30[4] << 24) | (v30[5] << 16) | (((*v30 << 24) | (v30[1] << 16) | (bswap32(*(v30 + 1)) >> 16)) << 32) | v30[7] | (v30[6] << 8);
      v32 = (v78 & 0xFFFFFFFFFFFFFLL) == 0 || (v31 & 0x7FF00000) != 0;
      v33 = v32 ? 8 : 1;
      WORD2(v79) = v33;
      if (v32)
      {
        goto LABEL_162;
      }
    }

    goto LABEL_144;
  }

  if ((v24 & 0x80) != 0)
  {
    v51 = v28[1];
    if (v28[1] < 0)
    {
      v53 = v28[2];
      if (v53 < 0)
      {
        v82 = 0;
        v58 = v4;
        v59 = a1;
        v60 = v21;
        sub_1818C7200(v28, &v82);
        v21 = v60;
        a1 = v59;
        v4 = v58;
        if (HIDWORD(v82))
        {
          v24 = -1;
        }

        else
        {
          v24 = v82;
        }
      }

      else
      {
        v24 = ((v24 & 0x7F) << 14) | ((v51 & 0x7F) << 7) | v53;
      }
    }

    else
    {
      v24 = v51 | ((v24 & 0x7F) << 7);
    }
  }

  if (v24 < 0xC || (v24 & 1) != 0)
  {
    goto LABEL_154;
  }

  v62 = (v24 - 12) >> 1;
  if (v62 + v18 > a1)
  {
    v74 = 98599;
    goto LABEL_159;
  }

  if ((*(v7 + 20) & 0x400) == 0)
  {
    v77 = v4;
    v63 = a1;
    v64 = v21;
    v65 = *(v7 + 16);
    v66 = (v62 - v65);
    if (v62 >= v65)
    {
      v62 = *(v7 + 16);
    }

    result = memcmp(&a2[v18], *(v7 + 8), v62);
    if (result)
    {
      v24 = 7;
      v4 = v77;
      goto LABEL_163;
    }

    result = v66;
    v21 = v64;
    a1 = v63;
    v4 = v77;
    goto LABEL_143;
  }

  if (v24 == 12)
  {
LABEL_142:
    result = (v62 - *v7);
LABEL_143:
    if (result)
    {
      goto LABEL_163;
    }

    goto LABEL_144;
  }

  v67 = &a2[v18];
  v68 = (v24 - 12) >> 1;
  while (!*v67++)
  {
    if (!--v68)
    {
      goto LABEL_142;
    }
  }

  v73 = 0;
  result = 1;
LABEL_164:
  if (*(*(*v4 + 24) + v11))
  {
    if ((*(*(*v4 + 24) + v11) & 2) == 0)
    {
      return -result;
    }

    v76 = *(*(*v4 + 24) + v11) & 1;
    if (v73)
    {
      if (v76 == 1)
      {
        return result;
      }
    }

    else if (v76 == (*(v7 + 20) & 1))
    {
      return result;
    }

    return -result;
  }

  return result;
}

uint64_t sub_181940C68(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  v6 = *(a1 + 8);
  if (v6[16] < a2)
  {
    result = sub_18190EDA8(89525);
    goto LABEL_8;
  }

  result = sub_1818FA480(a1, a2, 0);
  if (!result)
  {
    v41 = 0;
    result = (*(*v6 + 288))();
    if (!result)
    {
      v10 = *(v41 + 16);
      if (*(v10 + 4) != a2)
      {
        v11 = *(v41 + 8);
        *(v10 + 112) = v41;
        *(v10 + 72) = v6;
        *(v10 + 80) = v11;
        *(v10 + 4) = a2;
        if (a2 == 1)
        {
          v12 = 100;
        }

        else
        {
          v12 = 0;
        }

        *(v10 + 9) = v12;
      }

      *a3 = 0;
      if (*(v6 + 33))
      {
        v13 = *(a1 + 8);
        if (*(a1 + 17))
        {
          ++*(a1 + 20);
          if (*(a1 + 18))
          {
            v14 = 0;
          }

          else
          {
            sub_181932DEC(a1);
            v14 = *(a1 + 17) == 0;
          }
        }

        else
        {
          v14 = 1;
        }

        v18 = *(*(v13 + 24) + 80);
        v19 = *(v18 + 52) << 24;
        v20 = *(v18 + 53);
        v21 = *(v18 + 54);
        v22 = *(v18 + 55);
        v23 = _byteswap_ulong(*(v18 + 52));
        if (!v14)
        {
          v24 = *(a1 + 20) - 1;
          *(a1 + 20) = v24;
          if (!v24)
          {
            sub_181932ECC(a1);
          }
        }

        if (v23 == a2)
        {
          v25 = sub_1818F0E10(*(v10 + 72), v10, *(v10 + 4));
          v26 = *(v10 + 112);
          if ((*(v26 + 52) & 0x20) != 0)
          {
            v28 = *(v26 + 40);
            --*(v28 + 152);
            *(v26 + 32) = *(v28 + 168);
            *(v28 + 168) = v26;
            (*(**(v28 + 72) + 144))(*(v28 + 72), *(v28 + 200) * (*(v26 + 48) - 1), *(v26 + 8));
          }

          else
          {
            sub_181932B68(v26);
          }

          result = v25;
          if (v25)
          {
            goto LABEL_8;
          }

          goto LABEL_37;
        }

        v27 = *(v10 + 112);
        if ((*(v27 + 52) & 0x20) != 0)
        {
          v33 = *(v27 + 40);
          --*(v33 + 152);
          *(v27 + 32) = *(v33 + 168);
          *(v33 + 168) = v27;
          (*(**(v33 + 72) + 144))(*(v33 + 72), *(v33 + 200) * (*(v27 + 48) - 1), *(v27 + 8));
        }

        else
        {
          sub_181932B68(v27);
        }

        v41 = 0;
        result = (*(*v6 + 288))();
        if (result)
        {
          goto LABEL_8;
        }

        v34 = *(v41 + 16);
        if (*(v34 + 4) != v23)
        {
          v35 = *(v41 + 8);
          *(v34 + 112) = v41;
          *(v34 + 72) = v6;
          *(v34 + 80) = v35;
          *(v34 + 4) = v23;
          if (v23 == 1)
          {
            v36 = 100;
          }

          else
          {
            v36 = 0;
          }

          *(v34 + 9) = v36;
        }

        v37 = sub_181938D2C(v6, v34, 1, 0, a2, 0);
        sub_181932B18(*(v34 + 112));
        if (v37)
        {
          result = v37;
          goto LABEL_8;
        }

        v40 = 0;
        result = sub_18193380C(v6, v23, &v40);
        v38 = v40;
        if (!result)
        {
          v39 = sub_1818F0E10(*(v40 + 72), v40, *(v40 + 4));
          sub_181932B18(*(v38 + 112));
          if (v39)
          {
            result = v39;
            goto LABEL_8;
          }

          *a3 = v23;
LABEL_37:
          v29 = dword_1EA8315A8 / v6[13];
          for (i = v19 + (v20 << 16) + (v21 << 8) + v22 - 1; ; --i)
          {
            if (-2 - v29 + i != -1)
            {
              if (i >= 2)
              {
                v31 = (i - 2) / (v6[14] / 5u + 1) * (v6[14] / 5u + 1);
                if (v31 + 1 == v29)
                {
                  v32 = 3;
                }

                else
                {
                  v32 = 2;
                }

                if (i != v32 + v31)
                {
LABEL_56:
                  result = sub_181908E4C(a1, 4, i);
                  goto LABEL_8;
                }
              }

              else if (i)
              {
                goto LABEL_56;
              }
            }
          }
        }

        if (!v40)
        {
          goto LABEL_8;
        }

        v15 = result;
        sub_181932B18(*(v40 + 112));
      }

      else
      {
        v15 = sub_1818F0E10(*(v10 + 72), v10, *(v10 + 4));
        v16 = *(v10 + 112);
        if ((*(v16 + 52) & 0x20) != 0)
        {
          v17 = *(v16 + 40);
          --*(v17 + 152);
          *(v16 + 32) = *(v17 + 168);
          *(v17 + 168) = v16;
          (*(**(v17 + 72) + 144))(*(v17 + 72), *(v17 + 200) * (*(v16 + 48) - 1), *(v16 + 8));
        }

        else
        {
          sub_181932B68(v16);
        }
      }

      result = v15;
    }
  }

LABEL_8:
  if (*(a1 + 17))
  {
    v8 = *(a1 + 20) - 1;
    *(a1 + 20) = v8;
    if (!v8)
    {
      v9 = result;
      sub_181932ECC(a1);
      return v9;
    }
  }

  return result;
}

uint64_t sub_181941108(uint64_t result, int a2, int a3, int a4)
{
  v4 = *(*(result + 32) + 32 * a2 + 24);
  for (i = *(v4 + 16); i; i = *i)
  {
    v7 = i[2];
    if (*(v7 + 40) == a3)
    {
      *(v7 + 40) = a4;
    }
  }

  for (j = *(v4 + 40); j; j = *j)
  {
    v8 = j[2];
    if (*(v8 + 88) == a3)
    {
      *(v8 + 88) = a4;
    }
  }

  return result;
}

void sub_18194116C(uint64_t a1)
{
  bzero(v30, 0x348uLL);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 64);
  v28 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a1 + 40) = 0;
  if (v6)
  {
    v7 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v7)(v6);
      goto LABEL_8;
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
      goto LABEL_7;
    }
  }

LABEL_8:
  v29 = v3;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  if (v5)
  {
    do
    {
      v8 = *v5;
      v9 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_11;
        }

        v9 = &xmmword_1ED452F28;
      }

      (*v9)(v5);
LABEL_11:
      v5 = v8;
    }

    while (v8);
  }

  *(a1 + 36) = 0;
  if (v4)
  {
    v10 = v4;
    do
    {
      sub_1818A313C(v30, v10[2]);
      v10 = *v10;
    }

    while (v10);
  }

  v11 = v28;
  if (v28)
  {
    v12 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_26:
      (*v12)(v11);
      goto LABEL_27;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v28);
    --qword_1ED456A90;
    off_1ED452EB0(v28);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v12 = &xmmword_1ED452F28;
      goto LABEL_26;
    }
  }

LABEL_27:
  if (v4)
  {
    do
    {
      v13 = *v4;
      v14 = &off_1ED452EB0;
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
          goto LABEL_30;
        }

        v14 = &xmmword_1ED452F28;
      }

      (*v14)(v4);
LABEL_30:
      v4 = v13;
    }

    while (v13);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v2)
  {
    v15 = v2;
    do
    {
      v16 = v15[2];
      if (v16)
      {
        if (v30[103] || (v17 = *(v16 + 44) - 1, (*(v16 + 44) = v17) == 0))
        {
          sub_18194E094(v30, v16);
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  v18 = v29;
  if (v29)
  {
    v19 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_50:
      (*v19)(v18);
      goto LABEL_51;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v29);
    --qword_1ED456A90;
    off_1ED452EB0(v29);
    v18 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v19 = &xmmword_1ED452F28;
      goto LABEL_50;
    }
  }

LABEL_51:
  if (v2)
  {
    do
    {
      v20 = *v2;
      v21 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v2);
        --qword_1ED456A90;
        off_1ED452EB0(v2);
        v2 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_54;
        }

        v21 = &xmmword_1ED452F28;
      }

      (*v21)(v2);
LABEL_54:
      v2 = v20;
    }

    while (v20);
  }

  v22 = *(a1 + 88);
  v23 = *(a1 + 96);
  *(a1 + 88) = 0;
  if (v23)
  {
    v24 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_66:
      (*v24)(v23);
      goto LABEL_67;
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
      goto LABEL_66;
    }
  }

LABEL_67:
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  if (v22)
  {
    do
    {
      v25 = *v22;
      v26 = &off_1ED452EB0;
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
          goto LABEL_70;
        }

        v26 = &xmmword_1ED452F28;
      }

      (*v26)(v22);
LABEL_70:
      v22 = v25;
    }

    while (v25);
  }

  *(a1 + 84) = 0;
  *(a1 + 104) = 0;
  v27 = *(a1 + 114);
  if (v27)
  {
    ++*(a1 + 4);
  }

  *(a1 + 114) = v27 & 0xFFF6;
}

uint64_t sub_18194165C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(a1 + 20) & 0x9000) != 0 || *(a1 + 32))
  {
    sub_18193CA00(a1);
  }

  v3 = sub_181929E8C(v2, 0x38uLL, 0x10200405B906368);
  if (v3)
  {
    v4 = v3;
    if (v2 && *(v2 + 520) > v3)
    {
      if (*(v2 + 496) <= v3)
      {
        v5 = 128;
        goto LABEL_10;
      }

      if (*(v2 + 504) <= v3)
      {
        v5 = *(v2 + 438);
        goto LABEL_10;
      }
    }

    v5 = xmmword_1ED452EC0(v3);
LABEL_10:
    result = 0;
    *v4 = 0;
    *(v4 + 8) = v2;
    *(v4 + 32) = v4 + 56;
    *(v4 + 40) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 48) = (v5 - 56) / 0x18uLL;
    *(v4 + 50) = 1;
    *(v4 + 52) = 0;
    *(a1 + 8) = v4;
    *(a1 + 20) = 4112;
    *(a1 + 56) = 0;
    *(a1 + 48) = sub_18194AD14;
    return result;
  }

  return 7;
}

uint64_t sub_18194177C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 48))
  {
    v4 = *(result + 32);
    --*(result + 48);
    *(result + 32) = v4 + 3;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_181929E8C(*(result + 8), 0x3F8uLL, 0x1020040E600FCCALL);
    if (!result)
    {
      return result;
    }

    *result = *v3;
    *v3 = result;
    v4 = (result + 8);
    *(v3 + 48) = 41;
    *(v3 + 32) = result + 32;
  }

  *v4 = a2;
  v4[1] = 0;
  v5 = *(v3 + 24);
  if (v5)
  {
    if (*v5 >= a2)
    {
      *(v3 + 50) &= ~1u;
    }

    v6 = v5 + 1;
  }

  else
  {
    v6 = (v3 + 16);
  }

  *v6 = v4;
  *(v3 + 24) = v4;
  return result;
}

uint64_t sub_18194183C(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 50);
  if ((v3 & 2) == 0)
  {
    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 16);
      memset(v28, 0, sizeof(v28));
      v5 = 0;
      if (v4)
      {
        do
        {
          v7 = v4[1];
          v4[1] = 0;
          if (v5)
          {
            v8 = 0;
            v6 = v28;
            do
            {
              v25 = 0;
              v26 = 0;
              v9 = &v25;
              v27 = 0;
              do
              {
                v10 = *v5;
                v11 = v4;
                while (1)
                {
                  v4 = v11;
                  v12 = *v11;
                  if (v10 <= v12)
                  {
                    break;
                  }

                  v9[1] = v4;
                  v11 = v4[1];
                  v9 = v4;
                  if (!v11)
                  {
                    v9 = v4;
                    v4 = v5;
                    goto LABEL_17;
                  }
                }

                if (v10 < v12)
                {
                  v9[1] = v5;
                  v9 = v5;
                }

                v5 = v5[1];
              }

              while (v5);
LABEL_17:
              v9[1] = v4;
              v4 = v26;
              *v6 = 0;
              v6 = v28 + ++v8;
              v5 = *v6;
            }

            while (*v6);
          }

          else
          {
            v6 = v28;
          }

          *v6 = v4;
          v5 = *&v28[0];
          v4 = v7;
        }

        while (v7);
      }

      for (i = 1; i != 40; ++i)
      {
        v14 = *(v28 + i);
        if (v14)
        {
          if (v5)
          {
            v25 = 0;
            v26 = 0;
            v15 = &v25;
            v27 = 0;
            do
            {
              v16 = *v5;
              v17 = v14;
              while (1)
              {
                v14 = v17;
                v18 = *v17;
                if (v16 <= v18)
                {
                  break;
                }

                v15[1] = v14;
                v17 = v14[1];
                v15 = v14;
                if (!v17)
                {
                  v15 = v14;
                  v14 = v5;
                  goto LABEL_32;
                }
              }

              if (v16 < v18)
              {
                v15[1] = v5;
                v15 = v5;
              }

              v5 = v5[1];
            }

            while (v5);
LABEL_32:
            v15[1] = v14;
            v5 = v26;
          }

          else
          {
            v5 = *(v28 + i);
          }
        }
      }

      *(a1 + 16) = v5;
    }

    *(a1 + 50) = v3 | 3;
  }

  v20 = (a1 + 16);
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  *a2 = *v19;
  v21 = v19[1];
  *v20 = v21;
  if (v21)
  {
    return 1;
  }

  v23 = *a1;
  if (*a1)
  {
    do
    {
      v24 = *v23;
      sub_181929C84(*(a1 + 8), v23);
      v23 = v24;
    }

    while (v24);
  }

  *a1 = 0;
  *(a1 + 48) = 0x10000;
  *(a1 + 40) = 0;
  result = 1;
  *v20 = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_181941A88(uint64_t a1, int a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(a1 + 52) == a2)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      goto LABEL_78;
    }

    return 0;
  }

  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = (a1 + 40);
    if (*(a1 + 50))
    {
      v10 = *(a1 + 16);
      goto LABEL_46;
    }

    v10 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    do
    {
      v12 = v7[1];
      v7[1] = 0;
      if (v10)
      {
        v13 = 0;
        v11 = &v45;
        do
        {
          v42 = 0;
          v43 = 0;
          v14 = &v42;
          v44 = 0;
          do
          {
            v15 = *v10;
            v16 = v7;
            while (1)
            {
              v7 = v16;
              v17 = *v16;
              if (v15 <= v17)
              {
                break;
              }

              v14[1] = v7;
              v16 = v7[1];
              v14 = v7;
              if (!v16)
              {
                v14 = v7;
                v7 = v10;
                goto LABEL_19;
              }
            }

            if (v15 < v17)
            {
              v14[1] = v10;
              v14 = v10;
            }

            v10 = v10[1];
          }

          while (v10);
LABEL_19:
          v14[1] = v7;
          v7 = v43;
          *v11 = 0;
          v11 = (&v45 + 8 * ++v13);
          v10 = *v11;
        }

        while (*v11);
      }

      else
      {
        v11 = &v45;
      }

      *v11 = v7;
      v10 = v45;
      v7 = v12;
    }

    while (v12);
    for (i = 1; i != 40; ++i)
    {
      v19 = *(&v45 + i);
      if (v19)
      {
        if (v10)
        {
          v42 = 0;
          v43 = 0;
          v20 = &v42;
          v44 = 0;
          do
          {
            v21 = *v10;
            v22 = v19;
            while (1)
            {
              v19 = v22;
              v23 = *v22;
              if (v21 <= v23)
              {
                break;
              }

              v20[1] = v19;
              v22 = v19[1];
              v20 = v19;
              if (!v22)
              {
                v20 = v19;
                v19 = v10;
                goto LABEL_35;
              }
            }

            if (v21 < v23)
            {
              v20[1] = v10;
              v20 = v10;
            }

            v10 = v10[1];
          }

          while (v10);
LABEL_35:
          v20[1] = v19;
          v10 = v43;
        }

        else
        {
          v10 = *(&v45 + i);
        }
      }
    }

LABEL_46:
    while (1)
    {
      v30 = *v9;
      if (!*v9)
      {
        break;
      }

      v24 = v30[2];
      if (!v24)
      {
        v31 = v10[1];
        v10[1] = 0;
        v10[2] = 0;
        if (!v31)
        {
          v30[2] = v10;
          goto LABEL_74;
        }

        v32 = 1;
        do
        {
          v33 = v31;
          *&v45 = v31[1];
          v31[2] = v10;
          v31[1] = sub_18194ADE0(&v45, v32++);
          v31 = v45;
          v10 = v33;
        }

        while (v45);
        goto LABEL_73;
      }

      v9 = (v30 + 1);
      v41 = 0;
      v42 = 0;
      sub_18194AD7C(v24, &v42, &v41);
      v30[2] = 0;
      v25 = v42;
      v45 = 0uLL;
      v26 = &v45;
      *&v46 = 0;
      do
      {
        v27 = *v25;
        v28 = v10;
        while (1)
        {
          v10 = v28;
          v29 = *v28;
          if (v27 <= v29)
          {
            break;
          }

          *(v26 + 1) = v10;
          v28 = v10[1];
          v26 = v10;
          if (!v28)
          {
            v26 = v10;
            v10 = v25;
            goto LABEL_45;
          }
        }

        if (v27 < v29)
        {
          *(v26 + 1) = v25;
          v26 = v25;
        }

        v25 = v25[1];
      }

      while (v25);
LABEL_45:
      *(v26 + 1) = v10;
      v10 = *(&v45 + 1);
    }

    if (*(a1 + 48))
    {
      v30 = *(a1 + 32);
      --*(a1 + 48);
      *(a1 + 32) = v30 + 3;
      *v9 = v30;
      if (!v30)
      {
        goto LABEL_74;
      }

      goto LABEL_68;
    }

    v34 = *(a1 + 8);
    if (*(v34 + 436) <= 0x3F7u)
    {
      if (*(v34 + 432))
      {
        if (*(v34 + 103))
        {
LABEL_86:
          *v9 = 0;
LABEL_74:
          *v8 = 0;
          *(a1 + 24) = 0;
          *(a1 + 50) |= 1u;
          goto LABEL_75;
        }
      }

      else
      {
        ++*(v34 + 452);
      }

LABEL_66:
      v35 = sub_18192A080(v34, 1016, 0x1020040E600FCCALL);
      if (v35)
      {
        goto LABEL_67;
      }

      goto LABEL_86;
    }

    v35 = *(v34 + 472);
    if (v35)
    {
      v36 = (v34 + 472);
    }

    else
    {
      v35 = *(v34 + 464);
      if (!v35)
      {
        ++*(v34 + 456);
        goto LABEL_66;
      }

      v36 = (v34 + 464);
    }

    *v36 = *v35;
    ++*(v34 + 448);
LABEL_67:
    *v35 = *a1;
    *a1 = v35;
    v30 = v35 + 1;
    *(a1 + 48) = 41;
    *(a1 + 32) = v35 + 4;
    *v9 = v35 + 1;
LABEL_68:
    *v30 = 0;
    v30[1] = 0;
    v37 = v10[1];
    v10[1] = 0;
    v10[2] = 0;
    if (v37)
    {
      v38 = 1;
      do
      {
        v33 = v37;
        *&v45 = v37[1];
        v37[2] = v10;
        v37[1] = sub_18194ADE0(&v45, v38++);
        v37 = v45;
        v10 = v33;
      }

      while (v45);
    }

    else
    {
      v33 = v10;
    }

LABEL_73:
    v30[2] = v33;
    goto LABEL_74;
  }

LABEL_75:
  *(a1 + 52) = a2;
  v5 = *(a1 + 40);
  if (!v5)
  {
    return 0;
  }

LABEL_78:
  while (1)
  {
    v40 = *(v5 + 16);
    if (v40)
    {
      break;
    }

LABEL_77:
    v5 = *(v5 + 8);
    if (!v5)
    {
      return 0;
    }
  }

  while (1)
  {
    while (*v40 < a3)
    {
      v40 = v40[1];
      if (!v40)
      {
        goto LABEL_77;
      }
    }

    if (*v40 <= a3)
    {
      return 1;
    }

    v40 = v40[2];
    if (!v40)
    {
      goto LABEL_77;
    }
  }
}

void *sub_181941F1C(void *result)
{
  v1 = *result;
  result[1] = *(*result + 360);
  *(v1 + 360) = result;
  return result;
}

uint64_t sub_181941F30(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 344);
  if (!result)
  {
    v11 = *(a1 + 22);
    if (v11 != 5 && v11 != 0)
    {
      goto LABEL_21;
    }

    if (*(a1 + 17))
    {
      if (v11 == 5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = a2;
      result = (*(**(a1 + 72) + 56))(*(a1 + 72), 1);
      if (result)
      {
        return result;
      }

      a2 = v17;
      if (*(a1 + 22) == 5)
      {
LABEL_21:
        v13 = a2;
        result = (*(*a1 + 56))();
        if (result)
        {
          return result;
        }

        a2 = v13;
        result = *(a1 + 344);
        if (!result)
        {
          return result;
        }

        goto LABEL_2;
      }
    }

    *(a1 + 22) = 1;
    goto LABEL_21;
  }

LABEL_2:
  v4 = *(a1 + 22);
  if (v4 < 4 || v4 == 5)
  {
    if (!*(a1 + 17))
    {
      v14 = a2;
      result = (*(**(a1 + 72) + 56))(*(a1 + 72), 4);
      if (result)
      {
        v15 = *(a1 + 72);
        if (*v15)
        {
          if (!*(a1 + 17))
          {
            v16 = result;
            (*(*v15 + 64))(*(a1 + 72), v4);
            result = v16;
          }

          if (*(a1 + 22) != 5)
          {
            *(a1 + 22) = v4;
          }
        }

LABEL_45:
        *(a1 + 23) = *(a1 + 16);
        return result;
      }

      result = *(a1 + 344);
      a2 = v14;
    }

    *(a1 + 22) = 4;
  }

  result = sub_1818E3900(result, a2, *(a1 + 15), *(a1 + 200), *(a1 + 328));
  *(a1 + 344) = 0;
  v6 = *(a1 + 72);
  v7 = *v6;
  if (*v6 && *v7 >= 3)
  {
    v8 = *(a1 + 160);
    v22 = v8;
    *(a1 + 27) = v8 > 0;
    v9 = sub_181933ECC;
    if (*(a1 + 48) || v8 >= 1 && (v9 = sub_181933ED8, !*(a1 + 296)))
    {
      v10 = result;
    }

    else
    {
      v10 = result;
      v9 = sub_18193417C;
    }

    *(a1 + 288) = v9;
    (*(v7 + 80))(v6, 18, &v22);
    result = v10;
  }

  if (result || (v20 = *(*a1 + 48)) != 0 && ((result = v20(), result) ? (v21 = result == 5898) : (v21 = 1), !v21))
  {
    if (*(a1 + 8))
    {
      return result;
    }

    v18 = *(a1 + 72);
    if (*v18)
    {
      if (!*(a1 + 17))
      {
        v19 = result;
        (*(*v18 + 64))(*(a1 + 72), 1);
        result = v19;
      }

      if (*(a1 + 22) != 5)
      {
        *(a1 + 22) = 1;
      }
    }

    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_1819421BC(uint64_t a1, int a2)
{
  v3 = *(a1 + 9);
  if (*(a1 + 19))
  {
    v4 = a2 == 4;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && a2 != 2 || v3 == a2)
  {
    return *(a1 + 9);
  }

  *(a1 + 9) = a2;
  if ((a2 & 1) != 0 || ((v3 & 5) == 1 ? (v8 = *(a1 + 8) == 0) : (v8 = 0), !v8))
  {
    if (a2 == 4 || a2 == 2)
    {
      v11 = *(a1 + 80);
      if (*v11)
      {
        (*(*v11 + 8))(*(a1 + 80));
        *v11 = 0;
      }
    }

    return *(a1 + 9);
  }

  v9 = *(a1 + 80);
  if (*v9)
  {
    (*(*v9 + 8))(*(a1 + 80));
    *v9 = 0;
  }

  if (*(a1 + 22) >= 2u)
  {
    v10 = *(*a1 + 48);
    if (v10)
    {
      v10();
    }

    return *(a1 + 9);
  }

  v12 = *(a1 + 21);
  if (*(a1 + 21))
  {
    if (v12 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = sub_1818A3E30(a1);
    if (*(a1 + 21) != 1)
    {
      if (v13)
      {
        goto LABEL_51;
      }

      goto LABEL_41;
    }
  }

  v14 = *(a1 + 22);
  if (v14 <= 5 && ((1 << v14) & 0x23) != 0)
  {
    if (*(a1 + 17))
    {
      if (v14 == 5)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((*(**(a1 + 72) + 56))(*(a1 + 72), 2))
      {
        goto LABEL_50;
      }

      if (*(a1 + 22) == 5)
      {
        goto LABEL_41;
      }
    }

    *(a1 + 22) = 2;
  }

LABEL_41:
  v15 = *(*a1 + 48);
  if (v15)
  {
    v15();
  }

  if (v12 != 1)
  {
LABEL_50:
    if (v12)
    {
      return *(a1 + 9);
    }

LABEL_51:
    sub_1818CD8F0(a1);
    return *(a1 + 9);
  }

  v16 = *(a1 + 72);
  if (*v16)
  {
    if (!*(a1 + 17))
    {
      (*(*v16 + 64))(v16, 1);
    }

    if (*(a1 + 22) != 5)
    {
      *(a1 + 22) = 1;
    }
  }

  *(a1 + 23) = *(a1 + 16);
  return *(a1 + 9);
}

uint64_t sub_181942390(char **a1, uint64_t a2, int a3, uint64_t a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 101))
  {
    v8 = sub_181929E8C(a2, 0x28uLL, 354097263);
    v7 = v8;
    if (v8)
    {
      strcpy(v8, "cannot VACUUM from within a transaction");
    }

    goto LABEL_11;
  }

  if (*(a2 + 208) >= 2)
  {
    v6 = sub_181929E8C(a2, 0x2BuLL, 354097263);
    v7 = v6;
    if (v6)
    {
      strcpy(v6, "cannot VACUUM - SQL statements in progress");
    }

LABEL_11:
    if (*a1)
    {
      sub_181929C84(a2, *a1);
    }

    *a1 = v7;
    return 1;
  }

  v10 = *(a2 + 76);
  if (!a4)
  {
    v14 = &byte_181A2878D;
    goto LABEL_23;
  }

  v11 = *(a4 + 20);
  if (((0x4000000040004uLL >> v11) & 1) == 0)
  {
    v12 = sub_181929E8C(a2, 0x12uLL, 354097263);
    v7 = v12;
    if (v12)
    {
      strcpy(v12, "non-text filename");
    }

    goto LABEL_11;
  }

  if ((~v11 & 0x202) == 0 && *(a4 + 22) == 1)
  {
    v14 = *(a4 + 8);
LABEL_21:
    v17 = *(a2 + 76);
    goto LABEL_22;
  }

  if (v11)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v15 = a4;
  v16 = sub_18193CB70(a4, 1);
  a4 = v15;
  v14 = v16;
  v17 = *(a2 + 76);
LABEL_22:
  *(a2 + 76) = v17 & 0xFFFFFFF8 | 6;
LABEL_23:
  v82 = a4;
  v18 = 0;
  __buf = 0;
  v19 = *(a2 + 48);
  v20 = *(a2 + 44);
  v83 = *(a2 + 120);
  v85 = *(a2 + 110);
  *(a2 + 44) = v20 | 6;
  v84 = v19;
  *(a2 + 48) = v19 & 0xFFFFFF8EEFFFADFELL | 0x7000000201;
  *(a2 + 110) = 0;
  v21 = a3;
  v22 = (*(a2 + 32) + 32 * a3);
  v23 = v22[1];
  v24 = **(v23 + 8);
  if (!*(v24 + 16))
  {
    v18 = *(v24 + 20) == 0;
  }

  v81 = v18;
  v25 = *v22;
  sqlite3_initialize();
  arc4random_buf(&__buf, 8uLL);
  sqlite3_snprintf(42, v88, "vacuum_%016llx", __buf);
  v26 = *(a2 + 40);
  if (access(v14, 0) != -1)
  {
    v27 = sub_181929E8C(a2, 0x1BuLL, 354097263);
    v28 = v27;
    if (v27)
    {
      strcpy(v27, "output file already exists");
    }

    if (*a1)
    {
      sub_181929C84(a2, *a1);
    }

    v29 = 0;
    *a1 = v28;
    v30 = 1;
    goto LABEL_93;
  }

  v80 = v25;
  v31 = sub_18194AE60(a2, a1, "ATTACH %Q AS %s", v14, v88);
  *(a2 + 76) = v10;
  if (v31)
  {
    v30 = v31;
    v29 = 0;
    goto LABEL_93;
  }

  v32 = *(a2 + 32);
  v33 = v26;
  v29 = v32 + 32 * v26;
  v34 = *(v29 + 8);
  if (v82)
  {
    v35 = *(**(v34 + 8) + 72);
    v86 = 0;
    if (*v35)
    {
      if ((*(*v35 + 48))(v35, &v86))
      {
        v36 = 0;
      }

      else
      {
        v36 = v86 <= 0;
      }

      if (!v36)
      {
        sub_1818F7028(a1, a2, "output file already exists");
        v30 = 1;
        goto LABEL_93;
      }

      v32 = *(a2 + 32);
    }

    v38 = *(a2 + 48);
    *(a2 + 44) |= 8u;
    v37 = v38 & 0x18 | *(v32 + 32 * v21 + 16);
  }

  else
  {
    v37 = 33;
  }

  v79 = v33;
  if (!*(v23 + 17))
  {
    v43 = *(v23 + 8);
    v41 = *(v43 + 38);
    v42 = *(v43 + 52);
    goto LABEL_51;
  }

  v39 = *(v23 + 20);
  *(v23 + 20) = v39 + 1;
  if (*(v23 + 18))
  {
    v40 = *(v23 + 8);
    v41 = *(v40 + 38);
    v42 = *(v40 + 52);
  }

  else
  {
    sub_181932DEC(v23);
    v44 = *(v23 + 8);
    v41 = *(v44 + 38);
    v42 = *(v44 + 52);
    if (!*(v23 + 17))
    {
      goto LABEL_51;
    }

    v39 = *(v23 + 20) - 1;
  }

  *(v23 + 20) = v39;
  if (!v39)
  {
    v78 = v42;
    sub_181932ECC(v23);
    v42 = v78;
  }

LABEL_51:
  v45 = vsub_s32(v42, vdup_lane_s32(v42, 1)).u32[0];
  if (v45 <= v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = v45;
  }

  v47 = *(a2 + 32) + 32 * v21;
  if (*(a2 + 116))
  {
    v48 = *(**(*(v47 + 8) + 8) + 320);
    if (v48)
    {
      if (*v48)
      {
        *(a2 + 116) = 0;
      }
    }
  }

  sub_181944330(v34, (*(v47 + 24) + 116));
  v49 = *(v23 + 8);
  if (*(v23 + 17))
  {
    ++*(v23 + 20);
    if (!*(v23 + 18))
    {
      sub_181932DEC(v23);
    }
  }

  v50 = v34;
  v51 = *(*v49 + 336);
  LODWORD(v49) = v51[8];
  if ((v49 & 0x80000000) != 0)
  {
    v52 = v51[11];
    if (-1024 * v49 / (v52 + v51[10]) >= 1000000000)
    {
      LODWORD(v49) = 1000000000;
    }

    else
    {
      v49 = -1024 * v49 / (v52 + v51[10]);
    }
  }

  v53 = v51[9];
  if (*(v23 + 17))
  {
    v54 = *(v23 + 20) - 1;
    *(v23 + 20) = v54;
    if (!v54)
    {
      sub_181932ECC(v23);
    }
  }

  if (v49 <= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v49;
  }

  sub_181944714(v50, v55);
  v61 = *(v50 + 8);
  if (*(v50 + 17))
  {
    ++*(v50 + 20);
    if (!*(v50 + 18))
    {
      sub_181932DEC(v50);
    }
  }

  v62 = *v61;
  if (*(*v61 + 16))
  {
    v63 = 0;
    *(v62 + 11) = 1;
    *(v62 + 13) = 0;
  }

  else
  {
    v63 = (v37 & 7u) > 2;
    *(v62 + 12) = v63;
    *(v62 + 13) = (v37 & 7) == 4;
    *(v62 + 11) = (v37 & 7) == 1;
    if ((v37 & 7) != 1)
    {
      v65 = 0;
      if ((v37 & 8) != 0)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      *(v62 + 14) = v64;
      goto LABEL_78;
    }
  }

  v64 = 0;
  *(v62 + 14) = 0;
  v65 = 1;
LABEL_78:
  v66 = 4 * v64;
  if (v63)
  {
    v67 = v64;
  }

  else
  {
    v67 = 0;
  }

  if ((v37 & 0x10) != 0)
  {
    v68 = v65;
  }

  else
  {
    v68 = 1;
  }

  if (v68)
  {
    v69 = v66;
  }

  else
  {
    v69 = 12;
  }

  *(v62 + 15) = v69 | v67;
  *(v62 + 25) &= ~1u;
  if (*(v50 + 17))
  {
    v70 = *(v50 + 20) - 1;
    *(v50 + 20) = v70;
    if (!v70)
    {
      sub_181932ECC(v50);
    }
  }

  v71 = sub_18194AFD8(a2, a1, "BEGIN", v56, v57, v58, v59, v60);
  if (!v71)
  {
    v71 = sub_1818A3DC0(v23, 2 * (v82 == 0), 0);
    if (!v71)
    {
      v72 = *(v23 + 8);
      if (!v82 && *(*v72 + 9) == 5)
      {
        *(a2 + 116) = 0;
      }

      if (sub_1818F7260(v50, v72[13], v46, 0) || v81 && sub_1818F7260(v50, *(a2 + 116), v46, 0) || *(a2 + 103))
      {
        v30 = 7;
        goto LABEL_93;
      }

      v73 = *(a2 + 106);
      if (v73 < 0)
      {
        LOBYTE(v73) = sub_18194B21C(v23);
      }

      sub_18194B158(v50, v73);
      *(a2 + 196) = v79;
      v71 = sub_18194AE60(a2, a1, "SELECT sql FROM %w.sqlite_schema WHERE type='table'AND name<>'sqlite_sequence' AND coalesce(rootpage,1)>0", v80);
      if (!v71)
      {
        v71 = sub_18194AE60(a2, a1, "SELECT sql FROM %w.sqlite_schema WHERE type='index'", v80);
        if (!v71)
        {
          *(a2 + 196) = 0;
          v71 = sub_18194AE60(a2, a1, "SELECT'INSERT INTO %s.'||quote(name)||' SELECT*FROM%w.'||quote(name)FROM %s.sqlite_schema WHERE type='table'AND coalesce(rootpage,1)>0", v88, v80, v88);
          *(a2 + 44) &= ~4u;
          if (!v71)
          {
            v71 = sub_18194AE60(a2, a1, "INSERT INTO %s.sqlite_schema SELECT*FROM %w.sqlite_schema WHERE type IN('view','trigger') OR(type='table'AND rootpage=0)", v88, v80);
            if (!v71)
            {
              v74 = 0;
              LODWORD(v86) = 0;
              while (1)
              {
                v75 = byte_181A20E3C[v74];
                sub_18193E83C(v23, v75, &v86);
                v71 = sub_181908E4C(v50, v75, v86 + byte_181A20E3C[v74 + 1]);
                if (v71)
                {
                  break;
                }

                v36 = v74 > 7;
                v74 += 2;
                if (v36)
                {
                  if (v82)
                  {
                    v71 = sub_18191C7A4(v50);
                  }

                  else
                  {
                    v71 = sub_18194B2AC(v23, v50);
                    if (!v71)
                    {
                      v71 = sub_18191C7A4(v50);
                      if (!v71)
                      {
                        v76 = sub_18194B21C(v50);
                        sub_18194B158(v23, v76);
                        v77 = sub_181918F14(v50);
                        v71 = sub_1818F7260(v23, *(*(v50 + 8) + 52), v77, 1);
                      }
                    }
                  }

                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  v30 = v71;
LABEL_93:
  *(a2 + 196) = 0;
  *(a2 + 44) = v20;
  *(a2 + 48) = v84;
  *(a2 + 120) = v83;
  *(a2 + 110) = v85;
  sub_1818F7260(v23, -1, 0, 1);
  *(a2 + 101) = 1;
  if (v29)
  {
    sub_1818E3028(*(v29 + 8));
    *(v29 + 8) = 0;
    *(v29 + 24) = 0;
  }

  sub_181908F74(a2);
  return v30;
}

uint64_t sub_181942C08(uint64_t a1, int a2, char a3)
{
  if (!*(a1 + 17))
  {
    return 0;
  }

  v5 = a3 + 1;
  ++*(a1 + 20);
  if (*(a1 + 18))
  {
    v6 = *(a1 + 8);
    goto LABEL_6;
  }

  sub_181932DEC(a1);
  v6 = *(a1 + 8);
  if (*(a1 + 17))
  {
LABEL_6:
    if (*(v6 + 128) != a1 && (*(v6 + 40) & 0x40) != 0)
    {
      goto LABEL_16;
    }

    v9 = (v6 + 120);
    v8 = *(v6 + 120);
    if (v8)
    {
      v10 = *(v6 + 120);
      while (*v10 == a1 || *(v10 + 8) != a2 || *(v10 + 12) == v5)
      {
        v10 = *(v10 + 16);
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      if (v5 == 2)
      {
        *(v6 + 40) |= 0x80u;
      }

LABEL_16:
      result = 262;
      if (!*(a1 + 17))
      {
        return result;
      }

      goto LABEL_30;
    }

    goto LABEL_20;
  }

  v8 = *(v6 + 120);
LABEL_19:
  v9 = (v6 + 120);
  if (v8)
  {
    while (*(v8 + 8) != a2 || *v8 != a1)
    {
      v8 = *(v8 + 16);
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

LABEL_20:
  v8 = sub_181902484(24, 0x10200405CCC4D54);
  if (!v8)
  {
    result = 7;
    if (!*(a1 + 17))
    {
      return result;
    }

    goto LABEL_30;
  }

  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 8) = a2;
  *v8 = a1;
  *(v8 + 16) = *v9;
  *v9 = v8;
LABEL_25:
  if (*(v8 + 12) < v5)
  {
    *(v8 + 12) = v5;
  }

  result = 0;
  if (*(a1 + 17))
  {
LABEL_30:
    v11 = *(a1 + 20) - 1;
    *(a1 + 20) = v11;
    if (!v11)
    {
      v12 = result;
      sub_181932ECC(a1);
      return v12;
    }
  }

  return result;
}

uint64_t sub_181942DAC(uint64_t a1, int a2, char *a3, void **a4)
{
  v6 = sub_181917F20(a1, a3, *(*(a1 + 32) + 32 * a2));
  v12 = v6;
  v13 = **(v6 + 72);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v15 = -1640531535 * (v15 + (v14 & 0xDF));
      v17 = *v16++;
      v14 = v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  v18 = (a1 + 568);
  v19 = *(a1 + 584);
  if (v19)
  {
    v18 = (v19 + 16 * (v15 % *v18));
    v20 = *v18;
    if (*v18)
    {
LABEL_8:
      v21 = (v18 + 2);
      do
      {
        v21 = *v21;
        if (v15 == *(v21 + 8))
        {
          v22 = v21[3];
          for (i = **(v6 + 72); ; ++i)
          {
            if (*v22 == *i)
            {
              if (!*v22)
              {
                goto LABEL_19;
              }
            }

            else if (byte_181A20298[*v22] != byte_181A20298[*i])
            {
              break;
            }

            ++v22;
          }
        }

        --v20;
      }

      while (v20);
      v24 = qword_1EA831A40;
      if (!qword_1EA831A40)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v20 = *(a1 + 572);
    if (v20)
    {
      goto LABEL_8;
    }
  }

  v21 = &qword_1EA831A30;
LABEL_19:
  v24 = v21[2];
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_20:
  v7 = *(*v24 + 8);
  if (!v7 || !*(*v24 + 40))
  {
LABEL_28:
    *a4 = sub_1818A8BAC(a1, "no such module: %s", v24, v7, v8, v9, v10, v11, **(v6 + 72));
    return 1;
  }

  result = sub_18194B478(a1, v6, v24, v7, a4, v9, v10, v11);
  if (result)
  {
    return result;
  }

  v28 = *(v12 + 80);
  v27 = (v12 + 80);
  v26 = v28;
  if (!v28)
  {
    return 0;
  }

  while (*v26 != a1)
  {
    result = 0;
    v26 = v26[5];
    if (!v26)
    {
      return result;
    }
  }

  v29 = *(a1 + 564);
  if ((-858993459 * v29 + 429496729) > 0x33333332)
  {
    goto LABEL_44;
  }

  v30 = 8 * v29 + 40;
  v31 = *(a1 + 600);
  if (!v31)
  {
    v32 = sub_181929E8C(a1, 8 * v29 + 40, 1375593050);
LABEL_41:
    v31 = v32;
    if (!v32)
    {
      return 7;
    }

    v29 = *(a1 + 564);
    goto LABEL_43;
  }

  if (*(a1 + 512) <= v31)
  {
    goto LABEL_40;
  }

  if (*(a1 + 496) > v31)
  {
    if (*(a1 + 504) <= v31 && v30 <= *(a1 + 438))
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v30 >= 0x81)
  {
LABEL_40:
    v32 = sub_181929F38(a1, v31, v30, 1375593050);
    goto LABEL_41;
  }

LABEL_43:
  v33 = &v31[v29];
  v33[4] = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(a1 + 600) = v31;
  do
  {
LABEL_44:
    v34 = *v27;
    v35 = *v27;
    v36 = *v35;
    v27 = (v35 + 5);
  }

  while (v36 != a1);
  result = 0;
  v37 = *(a1 + 600);
  v38 = *(a1 + 564);
  *(a1 + 564) = v38 + 1;
  *(v37 + 8 * v38) = v34;
  ++*(v34 + 6);
  return result;
}