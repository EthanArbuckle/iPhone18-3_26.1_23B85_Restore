uint64_t sub_181943068(uint64_t result)
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

uint64_t sub_181943134(uint64_t result)
{
  if ((*(result + 20) & 0x9000) != 0)
  {
    v1 = result;
    sub_18193CA54(result);
    result = v1;
  }

  *(result + 20) = 4;
  return result;
}

void sub_181943178(uint64_t a1, __int128 *a2, __int16 a3)
{
  do
  {
    sub_18193CA54(a1);
  }

  while ((*(a1 + 20) & 0x9000) != 0);
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  if ((*(a2 + 21) & 0x20) == 0)
  {
    *(a1 + 20) = *(a1 + 20) & 0x8FFF | a3;
  }
}

uint64_t sub_1819431E8(int *a1)
{
  v2 = *(a1 + 10);
  v3 = a1[4];
  if ((v2 & 0x400) != 0)
  {
    v4 = *a1 + v3;
    if ((v4 < 0) ^ __OFADD__(*a1, v3) | (v4 == 0))
    {
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      v4 = 1;
    }

    if (sub_1818BB128(a1, v4, 1))
    {
      v5 = 0;
LABEL_16:
      *a1 = v5;
      return 4;
    }

    bzero((*(a1 + 1) + a1[4]), *a1);
    v3 = a1[4] + *a1;
    a1[4] = v3;
    *(a1 + 10) &= 0xF9FFu;
  }

LABEL_9:
  v8 = 0;
  v6 = sub_1818E6334(*(a1 + 1), a1, v3, *(a1 + 22));
  if (v6 <= 0)
  {
    if (!v6 && sub_18193D008(*(a1 + 1), &v8, a1[4], *(a1 + 22)) <= 1)
    {
      goto LABEL_15;
    }
  }

  else if (v6 == 1 && !sub_18193D008(*(a1 + 1), &v8, a1[4], *(a1 + 22)))
  {
LABEL_15:
    v5 = v8;
    goto LABEL_16;
  }

  return 8;
}

uint64_t sub_1819432EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 20);
  if ((v2 & 0x2D) == 0)
  {
    v7 = 0;
    result = sub_1818E6334(*(result + 8), result, *(result + 16), *(result + 22));
    if (result > 1 || (result = sub_18193D008(*(v1 + 8), &v7, *(v1 + 16), *(v1 + 22)), result > 1))
    {
      v4 = *v1;
      v3 = 0x8000000000000000;
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      if (*v1 <= 9.22337204e18)
      {
        v5 = *v1;
      }

      if (v4 >= -9.22337204e18)
      {
        v3 = v5;
      }

      if (v4 != 0.0)
      {
        v6 = 8;
        if ((v3 - 0x8000000000000) >> 52 != 4095 || *&v4 != COERCE__INT64(v3))
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v3 = v7;
    }

    *v1 = v3;
    v6 = 4;
LABEL_13:
    v2 = *(v1 + 20) & 0xF240 | v6;
  }

  *(v1 + 20) = v2 & 0xFBED;
  return result;
}

uint64_t sub_1819433F0(__int128 *a1, __int128 *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a3 + 8);
  if (*(a1 + 22) == v7)
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v10 = *(a1 + 4);
    v11 = *(a1 + 1);
    v12 = *(a2 + 4);
    v13 = *(a2 + 1);

    return v8(v9, v10, v11, v12, v13);
  }

  v36 = v4;
  v37 = v5;
  v34 = 0u;
  v35 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = *(a1 + 2);
  v15 = *(a1 + 3);
  LODWORD(v34) = 0;
  v28 = v15;
  v31 = *a1;
  v32 = v16;
  v33 = v15;
  if ((*(a1 + 21) & 0x20) == 0)
  {
    WORD2(v32) = WORD2(v32) & 0x8FFF | 0x4000;
  }

  v26 = *a2;
  v27 = *(a2 + 2);
  if ((*(a2 + 21) & 0x20) == 0)
  {
    WORD2(v27) = WORD2(v27) & 0x8FFF | 0x4000;
  }

  if ((~WORD2(v32) & 0x202) != 0 || BYTE6(v32) != v7)
  {
    if ((v32 & 0x100000000) != 0)
    {
      v17 = 0;
    }

    else
    {
      v18 = a4;
      v19 = a3;
      v20 = sub_18193CB70(&v31, v7);
      a3 = v19;
      a4 = v18;
      v17 = v20;
      v7 = *(v19 + 8);
    }
  }

  else
  {
    v17 = *(&v31 + 1);
  }

  if ((~WORD2(v27) & 0x202) != 0 || BYTE6(v27) != v7)
  {
    if ((v27 & 0x100000000) != 0 || (v22 = a4, v23 = a3, v24 = sub_18193CB70(&v26, v7), a3 = v23, a4 = v22, v21 = v24, !v17))
    {
LABEL_23:
      v25 = 0;
      if (a4)
      {
        *a4 = 7;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v21 = *(&v26 + 1);
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  if (!v21)
  {
    goto LABEL_23;
  }

  v25 = (*(a3 + 24))(*(a3 + 16), v32, v17, v27);
LABEL_25:
  if (v34)
  {
    sub_18193CA00(&v31);
  }

  if (v29)
  {
    sub_18193CA00(&v26);
  }

  return v25;
}

uint64_t sub_1819435AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(a1 + 20);
  v5 = *(a2 + 20);
  if (((v5 | v4) & 0x400) != 0)
  {
    v10 = v4 & 0x400;
    if ((v10 & v5) != 0)
    {
      return (*a1 - *a2);
    }

    else if (v10)
    {
      if (v3 < 1)
      {
        return (*a1 - v3);
      }

      else
      {
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        while (!*v14++)
        {
          if (!--v15)
          {
            return (*a1 - v3);
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    else if (v2 < 1)
    {
      return (v2 - *a2);
    }

    else
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      while (!*v11++)
      {
        if (!--v12)
        {
          return (v2 - *a2);
        }
      }

      return 1;
    }
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = v2 - v3;
    if (v2 >= v3)
    {
      v2 = v3;
    }

    LODWORD(result) = memcmp(v6, v7, v2);
    if (result)
    {
      return result;
    }

    else
    {
      return v8;
    }
  }
}

uint64_t sub_1819436D0(int8x8_t *a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (HIBYTE(a2))
  {
    a1[1].i8[0] = a2;
    v7 = vdupq_n_s64(a2);
    *a1 = vorr_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, xmmword_181A1FF30), vshlq_u64(v7, xmmword_181A1FF20)), vuzp1q_s32(vshlq_u64(v7, xmmword_181A1FF50), vshlq_u64(v7, xmmword_181A1FF40)))), 0x8080808080808080);
    return 9;
  }

  result = 0;
  do
  {
    v23[result++] = a2 | 0x80;
    v4 = a2 > 0x7F;
    a2 >>= 7;
  }

  while (v4);
  v23[0] &= ~0x80u;
  if (result < 8)
  {
    v5 = 0;
    v6 = result - 1;
    goto LABEL_18;
  }

  if (result >= 0x20)
  {
    v8 = &v23[result - 16];
    v5 = result & 0x7FFFFFE0;
    v9 = &a1[2];
    v10 = result & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v11 = vrev64q_s8(*v8);
      v12 = vrev64q_s8(v8[-1]);
      v9[-1] = vextq_s8(v11, v11, 8uLL);
      *v9 = vextq_s8(v12, v12, 8uLL);
      v9 += 2;
      v8 -= 2;
      v10 -= 32;
    }

    while (v10);
    if (result == v5)
    {
      return result;
    }

    if ((result & 0x18) == 0)
    {
      v6 = (~result | 0x1F) + result;
LABEL_18:
      v18 = a1 + v5;
      v19 = v5 - result;
      v20 = &v23[v6];
      do
      {
        v21 = *v20--;
        *v18++ = v21;
      }

      while (!__CFADD__(v19++, 1));
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = (a1 + v5);
  v14 = v5 - (result & 0xFFFFFFFFFFFFFFF8);
  v15 = &v23[-v5];
  v5 = result & 0x7FFFFFF8;
  v6 = ~(result & 0xFFFFFFFFFFFFFFF8) + result;
  v16 = &v15[result - 8];
  do
  {
    v17 = *v16--;
    *v13++ = vrev64_s8(v17);
    v14 += 8;
  }

  while (v14);
  if (result != v5)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_181943894(_DWORD *a1, unsigned int a2, uint64_t *a3)
{
  if (a1[16] >= a2)
  {
    result = (*(*a1 + 288))();
    if (result)
    {
      *a3 = 0;
    }

    else
    {
      v7 = MEMORY[0x10];
      if (*MEMORY[0x10])
      {
        goto LABEL_8;
      }

      if (*(MEMORY[0x10] + 4) != a2)
      {
        v8 = MEMORY[8];
        *(MEMORY[0x10] + 112) = 0;
        *(v7 + 72) = a1;
        *(v7 + 80) = v8;
        *(v7 + 4) = a2;
        if (a2 == 1)
        {
          v9 = 100;
        }

        else
        {
          v9 = 0;
        }

        *(v7 + 9) = v9;
      }

      v10 = sub_1818C6DCC(v7);
      if (!v10)
      {
LABEL_8:
        result = 0;
        *a3 = v7;
      }

      else
      {
        v11 = v10;
        v12 = *(v7 + 112);
        if ((*(v12 + 52) & 0x20) != 0)
        {
          v13 = *(v12 + 40);
          --*(v13 + 152);
          *(v12 + 32) = *(v13 + 168);
          *(v13 + 168) = v12;
          (*(**(v13 + 72) + 144))(*(v13 + 72), *(v13 + 200) * (*(v12 + 48) - 1), *(v12 + 8));
        }

        else
        {
          sub_181932B68(v12);
        }

        *a3 = 0;
        return v11;
      }
    }
  }

  else
  {
    *a3 = 0;

    return sub_18190EDA8(81643);
  }

  return result;
}

void *sub_1819439E0(void *result, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = result;
  v5 = a2 + 4;
  v4 = *(a2 + 1);
  if ((v4 & 0x810000) == 0)
  {
    while (1)
    {
      if (*(v2 + 3))
      {
        result = sub_1819439E0(v3);
      }

      else
      {
        v7 = *(v2 + 4);
        if ((v4 & 0x1000) != 0)
        {
          if (v7)
          {
            result = sub_1818BB408(v3, v7, 1);
          }
        }

        else
        {
          if (v7)
          {
            result = sub_18194E5B8(v3, v7);
            v4 = *v5;
          }

          if ((v4 & 0x1000000) != 0)
          {
            result = sub_181943B0C(v3, *(v2 + 9));
          }
        }
      }

      v6 = *(v2 + 2);
      if (!v6 || *v2 == 178)
      {
        break;
      }

      if ((v5[3] & 8) != 0 || (v6[7] & 8) != 0)
      {
        result = sub_1819439E0(v3);
        break;
      }

      v5 = v6 + 4;
      result = sub_181939EC8(v3, v2);
      v4 = *(v6 + 1);
      v2 = v6;
      if ((v4 & 0x810000) != 0)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = v2;
LABEL_3:
  if ((v6[7] & 8) == 0)
  {

    return sub_181939EC8(v3, v6);
  }

  return result;
}

void *sub_181943B0C(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2[7];
    if (v4)
    {
      v5 = a2[8];
      *v4 = v5;
      if (v5)
      {
        *(v5 + 56) = a2[7];
      }

      a2[7] = 0;
    }

    if (a2[9])
    {
      sub_1819439E0(result);
    }

    v6 = a2[2];
    if (v6)
    {
      sub_18194E5B8(v3, v6);
    }

    v7 = a2[3];
    if (v7)
    {
      sub_18194E5B8(v3, v7);
    }

    if (a2[6])
    {
      sub_1819439E0(v3);
    }

    if (a2[5])
    {
      sub_1819439E0(v3);
    }

    if (*a2)
    {
      sub_181929C84(v3, *a2);
    }

    v8 = a2[1];
    if (v8)
    {
      sub_181929C84(v3, v8);
    }

    return sub_181929C84(v3, a2);
  }

  return result;
}

void *sub_181943BE0(void *result, void *a2)
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

void *sub_181943C90(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (*a2 >= 1)
    {
      v5 = 1;
      do
      {
        v7 = a2[v5];
        if (v7)
        {
          sub_181929C84(v3, v7);
          v4 = *a2;
        }
      }

      while (v5++ < v4);
    }

    return sub_181939EC8(v3, a2);
  }

  return result;
}

uint64_t sub_181943D14(uint64_t a1)
{
  v2 = sub_1819352D4(*(a1 + 52));
  *(a1 + 136) = v2;
  if (v2)
  {
    v3 = v2;
    result = 0;
    *v3 = 0;
    *(a1 + 136) += 4;
  }

  else
  {
    v5 = *(a1 + 16);
    *(a1 + 16) = *(v5 + 40);
    *(v5 + 288) = 0;
    *(v5 + 256) = 0u;
    *(v5 + 272) = 0u;
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
    *v5 = 0u;
    *(v5 + 16) = 0u;
    result = 7;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
  }

  return result;
}

uint64_t sub_181943D9C(uint64_t result, int a2, uint64_t a3, int a4)
{
  *(result + 19) = 0;
  for (i = *(*(result + 8) + 16); i; i = *(i + 40))
  {
    if ((*(i + 1) & 0x10) != 0)
    {
      *(result + 19) = 1;
      if (*(i + 80) == a2 && (a4 || *(i + 48) == a3))
      {
        *i = 1;
      }
    }
  }

  return result;
}

uint64_t sub_181943DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + *(a3 + 22);
  if (v5 <= *(a1 + 88))
  {
    v24 = v3;
    v25 = v4;
    v7 = *(a1 + 72);
    v8 = v7[14] - 4;
    v9 = ~*(a3 + 20) + *(a3 + 16) + v8;
    if (v8 > v9)
    {
      return 0;
    }

    v10 = bswap32(*(v5 - 4));
    v11 = v9 / v8;
    while (1)
    {
      v23 = 0;
      v22 = 0;
      if (v10 < 2 || v10 > v7[16])
      {
        return sub_18190EDA8(86206);
      }

      if (!--v11)
      {
        goto LABEL_13;
      }

      result = sub_181944028(v7, v10, &v22, &v23);
      if (result)
      {
        return result;
      }

      v12 = v22;
      if (!v22)
      {
LABEL_13:
        v13 = *v7;
        v14 = (*(&xmmword_1ED452F70 + 1))(*(*(*v7 + 336) + 72));
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = v14;
        v16 = *(v14 + 8);
        if (*v16)
        {
          ++*(*(v13 + 336) + 24);
          ++v16[7];
        }

        else
        {
          v16 = sub_181934878(*(v13 + 336), v10, v15);
          if (!v16)
          {
LABEL_23:
            v12 = 0;
            v22 = 0;
            goto LABEL_24;
          }
        }

        v12 = v16[2];
        if (*(v12 + 4) != v10)
        {
          v17 = v16[1];
          *(v12 + 112) = v16;
          *(v12 + 72) = v7;
          *(v12 + 80) = v17;
          *(v12 + 4) = v10;
          *(v12 + 9) = 0;
        }

        v22 = v12;
      }

      if (*(*(v12 + 112) + 56) != 1)
      {
        result = sub_18190EDA8(86226);
        v18 = v22;
        if (v22)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }

LABEL_24:
      result = sub_1818F0E10(v7, v12, v10);
      v18 = v22;
      if (v22)
      {
LABEL_25:
        v19 = *(v18 + 112);
        if (v19)
        {
          v20 = result;
          if ((*(v19 + 52) & 0x20) != 0)
          {
            v21 = *(v19 + 40);
            --*(v21 + 152);
            *(v19 + 32) = *(v21 + 168);
            *(v21 + 168) = v19;
            (*(**(v21 + 72) + 144))(*(v21 + 72), *(v21 + 200) * (*(v19 + 48) - 1), *(v19 + 8));
          }

          else
          {
            sub_181932B68(v19);
          }

          result = v20;
        }
      }

LABEL_30:
      if (result)
      {
        return result;
      }

      v10 = v23;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return sub_18193596C(86189, a1);
}

uint64_t sub_181944028(uint64_t a1, unsigned int a2, void *a3, unsigned int *a4)
{
  if (!*(a1 + 33))
  {
    goto LABEL_12;
  }

  v21 = 0;
  v20 = 0;
  v8 = a2;
  do
  {
    do
    {
      while (1)
      {
        v9 = v8++;
        if (v8 >= 2)
        {
          break;
        }

        if (v8)
        {
          goto LABEL_10;
        }
      }

      v10 = (v9 - 1) / (*(a1 + 56) / 5u + 1) * (*(a1 + 56) / 5u + 1);
      if (v10 + 1 == dword_1EA8315A8 / *(a1 + 52))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }
    }

    while (v8 == v11 + v10);
LABEL_10:
    ;
  }

  while (v9 == dword_1EA8315A8 / *(a1 + 52));
  v12 = v9 + 1;
  if (v9 + 1 > *(a1 + 64))
  {
    goto LABEL_12;
  }

  LODWORD(result) = sub_181938B74(a1, v9 + 1, &v20, &v21);
  if (result || v20 != 4)
  {
    if (result)
    {
LABEL_13:
      v14 = 0;
      v12 = 0;
      goto LABEL_27;
    }

LABEL_12:
    v22 = 0;
    LODWORD(result) = (*(*a1 + 288))();
    if (!result)
    {
      v14 = *(v22 + 16);
      if (*(v14 + 4) == a2)
      {
        v15 = *(v14 + 80);
      }

      else
      {
        v15 = *(v22 + 8);
        *(v14 + 112) = v22;
        *(v14 + 72) = a1;
        *(v14 + 80) = v15;
        *(v14 + 4) = a2;
        if (a2 == 1)
        {
          v16 = 100;
        }

        else
        {
          v16 = 0;
        }

        *(v14 + 9) = v16;
      }

      LODWORD(result) = 0;
      v12 = bswap32(*v15);
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if (v21 != a2)
  {
    goto LABEL_12;
  }

  v14 = 0;
  LODWORD(result) = 101;
LABEL_27:
  *a4 = v12;
  if (a3)
  {
    *a3 = v14;
  }

  else if (v14)
  {
    v17 = result;
    v18 = *(v14 + 112);
    if ((*(v18 + 52) & 0x20) != 0)
    {
      v19 = *(v18 + 40);
      --*(v19 + 152);
      *(v18 + 32) = *(v19 + 168);
      *(v19 + 168) = v18;
      (*(**(v19 + 72) + 144))(*(v19 + 72), *(v19 + 200) * (*(v18 + 48) - 1), *(v18 + 8));
    }

    else
    {
      sub_181932B68(v18);
    }

    LODWORD(result) = v17;
  }

  if (result == 101)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_181944248(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3 < a2)
    {
      return 0;
    }
  }

  else
  {
    v5 = a2;
    v6 = *(a1 + 64);
    v3 = sub_181902484(512, 0x102204086A6B74CLL);
    if (!v3)
    {
      *(a1 + 96) = 0;
      return 7;
    }

    *(v3 + 480) = 0u;
    *(v3 + 496) = 0u;
    *(v3 + 448) = 0u;
    *(v3 + 464) = 0u;
    *(v3 + 416) = 0u;
    *(v3 + 432) = 0u;
    *(v3 + 384) = 0u;
    *(v3 + 400) = 0u;
    *(v3 + 352) = 0u;
    *(v3 + 368) = 0u;
    *(v3 + 320) = 0u;
    *(v3 + 336) = 0u;
    *(v3 + 288) = 0u;
    *(v3 + 304) = 0u;
    *(v3 + 256) = 0u;
    *(v3 + 272) = 0u;
    *(v3 + 224) = 0u;
    *(v3 + 240) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *v3 = v6;
    *(a1 + 96) = v3;
    a2 = v5;
    if (v6 < v5)
    {
      return 0;
    }
  }

  return sub_1818E70E0(v3, a2);
}

uint64_t sub_181944330(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  v5 = *(*v4 + 336);
  v6 = *a2;
  v7 = getprogname();
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    if (strncmp("assetsd", v7, 7uLL) && strncmp("backupd", v9, 7uLL) && strncmp("bird", v9, 4uLL))
    {
      if (!strncmp("callservicesd", v9, 0xDuLL))
      {
        goto LABEL_59;
      }

      if (strncmp("cloudd", v9, 6uLL) && strncmp("dataaccessd", v9, 0xBuLL))
      {
        if (strncmp("duetexpert", v9, 0xAuLL) && strncmp("healthd", v9, 7uLL) && strncmp("IMDPersistence", v9, 0xEuLL) && strncmp("IMDPersistenceAgent", v9, 0x13uLL))
        {
          if (!strncmp("itunesstored", v9, 0xCuLL))
          {
            v8 = 128;
            goto LABEL_32;
          }

          if (strncmp("keybagd", v9, 7uLL) && strncmp("mediaanalysisd", v9, 0xEuLL) && strncmp("medialibraryd", v9, 0xDuLL))
          {
            if (!strncmp("MobileMail", v9, 0xAuLL) || !strncmp("MobileNotes", v9, 0xBuLL) || !strncmp("MobileSafari", v9, 0xCuLL) || !strncmp("nsurlstoraged", v9, 0xDuLL))
            {
              v8 = 1024;
              goto LABEL_32;
            }

            if (strncmp("pipelined", v9, 9uLL) && strncmp("resentsd", v9, 8uLL) && strncmp("searchd", v9, 7uLL) && strncmp("securityd", v9, 9uLL) && strncmp("SpringBoard", v9, 0xBuLL))
            {
              if (!strncmp("suggestd", v9, 8uLL))
              {
                v8 = 512;
              }

              else
              {
                v8 = v6;
              }

              goto LABEL_32;
            }
          }
        }

LABEL_59:
        v8 = 256;
        goto LABEL_32;
      }
    }

    v8 = 512;
  }

LABEL_32:
  if (qword_1ED456C88 != -1)
  {
    sub_181A1EDF0();
  }

  if (v8 <= dword_1ED456C80)
  {
    v10 = dword_1ED456C80;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != v6 && v6 >= 1 && v10 > v6)
  {
    if (dword_1ED456C80 && dword_1ED456C80 >= v8)
    {
      sqlite3_log(28, "Environment override of cache_size %d -> %d");
    }

    else
    {
      sqlite3_log(27, "Overriding cache_size %d -> %d");
    }

    v6 = v10;
  }

  *(v5 + 32) = v6;
  if ((v6 & 0x80000000) != 0)
  {
    v13 = *(v5 + 44);
    if (-1024 * v6 / (v13 + *(v5 + 40)) >= 1000000000)
    {
      v6 = 1000000000;
    }

    else
    {
      v6 = -1024 * v6 / (v13 + *(v5 + 40));
    }
  }

  result = (*(&xmmword_1ED452F60 + 1))(*(v5 + 72), v6);
  *a2 = *(v5 + 32);
  if (*(a1 + 17))
  {
    v15 = *(a1 + 20) - 1;
    *(a1 + 20) = v15;
    if (!v15)
    {

      return sub_181932ECC(a1);
    }
  }

  return result;
}

uint64_t sub_181944714(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v4 = a1;
      sub_181932DEC(a1);
      a1 = v4;
    }
  }

  v5 = *(*v3 + 336);
  if (v2)
  {
    if ((v2 & 0x80000000) != 0)
    {
      v2 = -1024 * v2 / (v5[11] + v5[10]);
    }

    v5[9] = v2;
  }

  LODWORD(v6) = v5[8];
  if ((v6 & 0x80000000) != 0)
  {
    v7 = v5[11];
    if (-1024 * v6 / (v7 + v5[10]) >= 1000000000)
    {
      LODWORD(v6) = 1000000000;
    }

    else
    {
      v6 = -1024 * v6 / (v7 + v5[10]);
    }
  }

  v8 = v5[9];
  if (*(a1 + 17))
  {
    v9 = *(a1 + 20) - 1;
    *(a1 + 20) = v9;
    if (!v9)
    {
      sub_181932ECC(a1);
    }
  }

  if (v6 <= v8)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1819447E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) || *(a1 + 25) && ((*(a1 + 25) & 3) != 0 || (*(a2 + 52) & 8) != 0))
  {
    return 0;
  }

  ++*(a1 + 260);
  ++*(a1 + 276);
  *(a2 + 32) = 0;
  if (!*(a1 + 344))
  {
    if ((*(a2 + 52) & 8) != 0 || *(a1 + 21) == 3)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_1818E73DC(a1, 1);
      a2 = v8;
      v6 = v9;
      a1 = v7;
      if (v6)
      {
        goto LABEL_15;
      }
    }

    v3 = a1;
    v4 = a2;
    v10 = sub_1818E7670(a1, a2);
LABEL_14:
    v6 = v10;
    a1 = v3;
    if (v6)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 24);
    v12 = *(v4 + 72);
    if (*(v11 + 16) == v4)
    {
      *(v11 + 16) = v12;
    }

    v13 = *(v4 + 64);
    if (v13)
    {
      *(v13 + 72) = v12;
      if (!v12)
      {
        *v11 = v13;
        goto LABEL_25;
      }
    }

    else
    {
      *(v11 + 8) = v12;
      if (!v12)
      {
        *v11 = 0;
        *(v11 + 49) = 2;
LABEL_25:
        *(v4 + 52) = *(v4 + 52) & 0xFFF0 | 1;
        if (!*(v4 + 56) && *(v11 + 48))
        {
          xmmword_1ED452F80(*(v11 + 72), *v4, 0);
        }

        return 0;
      }
    }

    *(v12 + 64) = v13;
    goto LABEL_25;
  }

  v3 = a1;
  v4 = a2;
  v5 = sub_1819360C0(a2);
  if (!v5)
  {
    v10 = sub_18193714C(v3, v4, 0, 0);
    goto LABEL_14;
  }

  v6 = v5;
  a1 = v3;
LABEL_15:
  if (v6 == 13 || v6 == 10)
  {
    *(a1 + 48) = v6;
    *(a1 + 21) = 6;
    *(a1 + 288) = sub_181933ECC;
  }

  return v6;
}

const char *sub_181944994()
{
  result = getenv("SQLITE_MIN_CACHE_SIZE");
  if (result)
  {
    result = atoi(result);
  }

  dword_1ED456C80 = result;
  return result;
}

uint64_t sub_1819449C4(uint64_t a1, _DWORD *a2)
{
  result = sub_1818C6AC0(a1);
  if (result == 16)
  {
    result = 0;
    *a2 = 1;
  }

  else if (!result)
  {
    *a2 = 0;
    while (1)
    {
      v5 = *(a1 + 136);
      if (*(v5 + 8))
      {
        break;
      }

      v6 = bswap32(*(*(v5 + 80) + *(v5 + 9) + 8));
      *(a1 + 86) = *(v5 + 24);
      result = sub_1818C6EF4(a1, v6);
      if (result)
      {
        v7 = *(a1 + 1) & 0xF7;
        goto LABEL_9;
      }
    }

    result = 0;
    *(a1 + 86) = *(v5 + 24) - 1;
    v7 = *(a1 + 1) | 8;
LABEL_9:
    *(a1 + 1) = v7;
  }

  return result;
}

uint64_t sub_181944A68(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = &a2[*a2 & 0x3F];
  v4 = a2[1];
  if (v4 > 4)
  {
    if (a2[1] <= 6u)
    {
      if (v4 == 5)
      {
        v5 = bswap32(*(v3 + 2)) | ((v3[1] | (*v3 << 8)) << 32);
      }

      else
      {
        if (v4 != 6)
        {
          goto LABEL_17;
        }

        v5 = bswap64(*v3);
      }
    }

    else
    {
      switch(v4)
      {
        case 7u:
          goto LABEL_17;
        case 8u:
          v5 = 0;
          break;
        case 9u:
          v5 = 1;
          break;
        default:
          goto LABEL_17;
      }
    }
  }

  else if (a2[1] <= 1u)
  {
    if (!a2[1])
    {
      goto LABEL_17;
    }

    v5 = *v3;
  }

  else
  {
    switch(v4)
    {
      case 2u:
        v5 = v3[1] | (*v3 << 8);
        break;
      case 3u:
        v5 = (*v3 << 16) | (v3[1] << 8) | v3[2];
        break;
      case 4u:
        v5 = (*v3 << 24) | (v3[1] << 16) | (v3[2] << 8) | v3[3];
        break;
      default:
LABEL_17:
        v6 = 0;
        return sub_1819403A0(a1, a2, a3, v6);
    }
  }

  v7 = *(a3 + 16);
  if (v7 > v5)
  {
    return *(a3 + 32);
  }

  if (v7 < v5)
  {
    return *(a3 + 33);
  }

  if (*(a3 + 28) >= 2u)
  {
    v6 = 1;
    return sub_1819403A0(a1, a2, a3, v6);
  }

  result = *(a3 + 30);
  *(a3 + 34) = 1;
  return result;
}

uint64_t sub_181944BB8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = a2 + 1;
  v7 = a2[1];
  v8 = a2[1] & 0x7F;
  v9 = v8 << 14;
  v10 = v8 << 7;
  while (v7 <= 11)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return *(a3 + 32);
    }

    v11 = a2[2];
    if (a2[2] < 0)
    {
      v12 = a2[3];
      if (v12 < 0)
      {
        v20 = 0;
        sub_1818C7200(v6, &v20);
        v7 = v20;
        if (HIDWORD(v20))
        {
          return *(a3 + 32);
        }
      }

      else
      {
        v7 = ((v11 & 0x7F) << 7) | v9 | v12;
      }
    }

    else
    {
      v7 = v10 | v11;
    }

    if (v7 <= 11)
    {
      return *(a3 + 32);
    }
  }

  if ((v7 & 1) == 0)
  {
    return *(a3 + 33);
  }

  v14 = *a2;
  v15 = (v7 - 12) >> 1;
  if (v15 + v14 > a1)
  {
    v16 = sub_18190EDA8(98813);
    result = 0;
    *(a3 + 31) = v16;
    return result;
  }

  v17 = *(a3 + 24);
  if (v17 >= v15)
  {
    v18 = (v7 - 12) >> 1;
  }

  else
  {
    v18 = *(a3 + 24);
  }

  v19 = memcmp(&a2[v14], *(a3 + 16), v18);
  if (v19 >= 1)
  {
    return *(a3 + 33);
  }

  if (v19 < 0)
  {
    return *(a3 + 32);
  }

  if (v15 != v17)
  {
    if (v17 < v15)
    {
      return *(a3 + 33);
    }

    return *(a3 + 32);
  }

  if (*(a3 + 28) < 2u)
  {
    result = *(a3 + 30);
    *(a3 + 34) = 1;
  }

  else
  {

    return sub_1819403A0(a1, a2, a3, 1);
  }

  return result;
}

uint64_t sub_181944D44(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 < 3)
    {
      goto LABEL_22;
    }

    v20 = 0;
    if (v2 == 4)
    {
      result = *(a1 + 1);
      if (result)
      {
        return result;
      }

      goto LABEL_25;
    }

    *a1 = 1;
    if (off_1ED453038 && off_1ED453038(410))
    {
      return 10;
    }

    result = sub_1818DC828(a1, *(a1 + 3), *(a1 + 9), 0, &v20);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      v5 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_16:
        (*v5)(v4);
        goto LABEL_17;
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
        goto LABEL_16;
      }
    }

LABEL_17:
    *(a1 + 3) = 0;
    if (v20)
    {
      *(a1 + 1) = v20;
      v2 = *a1;
    }

    else
    {
      v2 = *a1;
      if (!*(a1 + 1))
      {
        goto LABEL_22;
      }
    }

    if (!v2)
    {
      v2 = 2;
      *a1 = 2;
    }

LABEL_22:
    if (v2 == 1)
    {
      return 101;
    }

    if (v2 == 2)
    {
      *a1 = 0;
      if (*(a1 + 1) > 0)
      {
        return 0;
      }
    }
  }

LABEL_25:
  v6 = *(a1 + 17);
  v7 = *(a1 + 43) + 1;
  *(a1 + 43) = v7;
  if (off_1ED453038 && off_1ED453038(412))
  {
    *v6 = 0;
LABEL_35:

    return sub_18190EDA8(85548);
  }

  if (!*v6)
  {
    goto LABEL_35;
  }

  if (*(v6 + 24) > v7)
  {
    if (!*(v6 + 8))
    {
      while (1)
      {
        v8 = *(a1 + 17);
        if (*(v8 + 8))
        {
          break;
        }

        result = sub_1818C6EF4(a1, bswap32(*(*(v8 + 80) + (_byteswap_ushort(*(*(v8 + 96) + 2 * *(a1 + 43))) & *(v8 + 26)))));
        if (result)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (*(v6 + 8))
  {
    do
    {
      v10 = a1[84];
      if (!a1[84])
      {
        *a1 = 1;
        return 101;
      }

      *(a1 + 35) = 0;
      a1[1] &= 0xF9u;
      *(a1 + 43) = *&a1[2 * v10 + 86];
      v11 = *(a1 + 17);
      v12 = v10 - 1;
      a1[84] = v12;
      *(a1 + 17) = *&a1[8 * v12 + 144];
      v13 = *(v11 + 112);
      if ((*(v13 + 52) & 0x20) != 0)
      {
        v14 = *(v13 + 40);
        --*(v14 + 152);
        *(v13 + 32) = *(v14 + 168);
        *(v14 + 168) = v13;
        (*(**(v14 + 72) + 144))(*(v14 + 72), *(v14 + 200) * (*(v13 + 48) - 1), *(v13 + 8));
      }

      else
      {
        sub_181932B68(v13);
      }

      v9 = *(a1 + 17);
    }

    while (*(a1 + 43) >= *(v9 + 24));
    if (!*(v9 + 1))
    {
      return 0;
    }

    return sub_1818C85D8(a1);
  }

  else
  {
    for (i = *(*(v6 + 80) + *(v6 + 9) + 8); ; i = *(v17 + ((v19[1] | (*v19 << 8)) & *&v18)))
    {
      result = sub_1818C6EF4(a1, bswap32(i));
      if (result)
      {
        break;
      }

      v16 = *(a1 + 17);
      if (*(v16 + 8))
      {
        return 0;
      }

      v17 = *(v16 + 80);
      v18 = *(v16 + 26);
      v19 = (*(v16 + 96) + 2 * *(a1 + 43));
    }
  }

  return result;
}

uint64_t sub_1819450D8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*a1)
  {
LABEL_2:
    if (v2 < 3)
    {
      goto LABEL_20;
    }

    v16 = 0;
    if (v2 == 4)
    {
      result = *(a1 + 1);
      if (!result)
      {
        goto LABEL_28;
      }

      return result;
    }

    *a1 = 1;
    if (off_1ED453038 && off_1ED453038(410))
    {
      return 10;
    }

    result = sub_1818DC828(a1, *(a1 + 3), *(a1 + 9), 0, &v16);
    if (!result)
    {
      v4 = *(a1 + 3);
      if (v4)
      {
        v5 = &off_1ED452EB0;
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
            goto LABEL_16;
          }

          v5 = &xmmword_1ED452F28;
        }

        (*v5)(v4);
      }

LABEL_16:
      *(a1 + 3) = 0;
      if (v16)
      {
        *(a1 + 1) = v16;
      }

      else if (!*(a1 + 1))
      {
        v2 = *a1;
        if (v2 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      v2 = *a1;
      if (!*a1)
      {
        *a1 = 2;
        goto LABEL_24;
      }

LABEL_20:
      if (v2 != 2)
      {
LABEL_21:
        if (v2 != 1)
        {
          goto LABEL_28;
        }

        return 101;
      }

LABEL_24:
      *a1 = 0;
      if ((*(a1 + 1) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      return 0;
    }
  }

  else
  {
    while (1)
    {
LABEL_28:
      v6 = *(a1 + 17);
      if (off_1ED453038 && off_1ED453038(412))
      {
        *v6 = 0;
LABEL_52:

        return sub_18190EDA8(85641);
      }

      if (!*v6)
      {
        goto LABEL_52;
      }

      v7 = *(a1 + 43);
      if (!*(v6 + 8))
      {
        break;
      }

      if (!*(a1 + 43))
      {
        while (1)
        {
          v9 = a1[84];
          if (!a1[84])
          {
            break;
          }

          *(a1 + 35) = 0;
          a1[1] &= 0xF9u;
          *(a1 + 43) = *&a1[2 * v9 + 86];
          v10 = *(a1 + 17);
          v11 = v9 - 1;
          a1[84] = v11;
          *(a1 + 17) = *&a1[8 * v11 + 144];
          v12 = *(v10 + 112);
          if ((*(v12 + 52) & 0x20) != 0)
          {
            v13 = *(v12 + 40);
            --*(v13 + 152);
            *(v12 + 32) = *(v13 + 168);
            *(v13 + 168) = v12;
            (*(**(v13 + 72) + 144))(*(v13 + 72), *(v13 + 200) * (*(v12 + 48) - 1), *(v12 + 8));
            LOWORD(v7) = *(a1 + 43);
            if (v7)
            {
              goto LABEL_33;
            }
          }

          else
          {
            sub_181932B68(v12);
            LOWORD(v7) = *(a1 + 43);
            if (v7)
            {
              goto LABEL_33;
            }
          }
        }

        *a1 = 1;
        return 101;
      }

LABEL_33:
      *(a1 + 43) = v7 - 1;
      v8 = *(a1 + 17);
      if (!*(v8 + 1) || *(v8 + 8))
      {
        return 0;
      }

      a1[1] &= 0xF1u;
      *(a1 + 35) = 0;
      v2 = *a1;
      if (*a1)
      {
        goto LABEL_2;
      }
    }

    v14 = bswap32(*(*(v6 + 80) + ((*(*(v6 + 96) + 2 * v7 + 1) | (*(*(v6 + 96) + 2 * v7) << 8)) & *(v6 + 26))));
    while (1)
    {
      result = sub_1818C6EF4(a1, v14);
      if (result)
      {
        break;
      }

      v15 = *(a1 + 17);
      if (*(v15 + 8))
      {
        result = 0;
        *(a1 + 43) = *(v15 + 24) - 1;
        return result;
      }

      v14 = bswap32(*(*(v15 + 80) + *(v15 + 9) + 8));
      *(a1 + 43) = *(v15 + 24);
    }
  }

  return result;
}

uint64_t sub_18194545C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 56);
  v5 = *(a1 + 68);
  if (&v4[v5] > *(v3 + 88) || v4 < *(v3 + 80) + *(v3 + 18))
  {
    return sub_18193596C(88554, v3);
  }

  v7 = *(a2 + 40) + *(a2 + 36);
  if (v7 == v5)
  {
    return sub_1819455D0(*(a1 + 136), v4, a2, 0, v7);
  }

  else
  {
    return sub_181945778(a1, a2);
  }
}

uint64_t sub_1819454C4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 56);
  v4 = *(a1 + 9);
  v5 = (_byteswap_ushort(*(v2 + v4 + 5)) - 1);
  v6 = __rev16(*(v2 + v4 + 1));
  v7 = v5 + *(v2 + v4 + 7) + 1;
  if (v6)
  {
    if (v6 <= v5)
    {
      v11 = 81387;
      return sub_18193596C(v11, a1);
    }

    do
    {
      if (v6 > v3 - 4)
      {
        v11 = 81392;
        return sub_18193596C(v11, a1);
      }

      v8 = (v2 + v6);
      v9 = __rev16(*v8);
      LODWORD(v8) = __rev16(v8[1]);
      v7 += v8;
      v10 = v8 + v6;
      v6 = v9;
    }

    while (v9 > v10 + 3);
    if (v9)
    {
      v11 = 81402;
      return sub_18193596C(v11, a1);
    }

    if (v10 > v3)
    {
      v11 = 81406;
      return sub_18193596C(v11, a1);
    }
  }

  v13 = v4 + *(a1 + 10) + 2 * *(a1 + 24) + 8;
  if (v7 > v3 || v7 < v13)
  {
    v11 = 81418;
    return sub_18193596C(v11, a1);
  }

  *(a1 + 20) = (v7 - v13);
  return 0;
}

uint64_t sub_1819455D0(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, int a5)
{
  v6 = a2;
  v8 = *(a3 + 36);
  v9 = v8 - a4;
  if (v8 <= a4)
  {
    if (a5 < 1)
    {
      return 0;
    }

    v18 = a5;
    v19 = a5;
    while (!*v6)
    {
      --v19;
      ++v6;
      if (!--v18)
      {
        return 0;
      }
    }

    v20 = *(a1 + 112);
    v21 = *(v20 + 40);
    if ((*(v20 + 52) & 4) != 0 && v21[8] >= *(v20 + 48))
    {
      if (!v21[32])
      {
LABEL_32:
        bzero(v6, v19);
        return 0;
      }

      result = sub_1819360C0(*(a1 + 112));
    }

    else
    {
      result = v21[12];
      if (result)
      {
        return result;
      }

      v22 = *(a1 + 112);
      if (v21[46] <= v21[50])
      {
        result = sub_1818D8DD8(v22);
      }

      else
      {
        result = sub_181936438(v22);
      }
    }

    if (result)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (a5 > v9)
  {
    result = sub_1819455D0(a1, &a2[v9], a3);
    if (result)
    {
      return result;
    }

    a5 = v9;
  }

  v12 = *(a3 + 16);
  v13 = a4;
  v14 = a5;
  result = memcmp(v6, (v12 + v13), a5);
  if (result)
  {
    v15 = *(a1 + 112);
    v16 = *(v15 + 40);
    if ((*(v15 + 52) & 4) != 0 && v16[8] >= *(v15 + 48))
    {
      if (!v16[32])
      {
LABEL_27:
        memmove(v6, (v12 + v13), v14);
        return 0;
      }

      result = sub_1819360C0(*(a1 + 112));
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = v16[12];
      if (result)
      {
        return result;
      }

      v17 = *(a1 + 112);
      if (v16[46] <= v16[50])
      {
        result = sub_1818D8DD8(v17);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_181936438(v17);
        if (result)
        {
          return result;
        }
      }
    }

    v12 = *(a3 + 16);
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_181945778(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 40);
  v6 = *(a1 + 136);
  result = sub_1819455D0(v6, *(a1 + 56), a2, 0, *(a1 + 68));
  if (!result)
  {
    v8 = *(a1 + 68);
    v9 = v5 + v4;
    v10 = bswap32(*(*(a1 + 56) + v8));
    v11 = *(v6 + 72);
    v12 = v11[14] - 4;
    while (1)
    {
      result = (*(*v11 + 288))();
      if (result)
      {
        return result;
      }

      v13 = 0;
      v14 = MEMORY[0x10];
      if (*(MEMORY[0x10] + 4) == v10)
      {
        v13 = *(MEMORY[0x10] + 112);
      }

      else
      {
        v15 = MEMORY[8];
        *(MEMORY[0x10] + 112) = 0;
        *(v14 + 72) = v11;
        *(v14 + 80) = v15;
        *(v14 + 4) = v10;
        v16 = v10 == 1 ? 100 : 0;
        *(v14 + 9) = v16;
      }

      if (*(v13 + 56) == 1 && !*v14)
      {
        break;
      }

      result = sub_18193596C(88526, v14);
      v17 = *(v14 + 112);
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_18:
      if (result)
      {
        return result;
      }

      LODWORD(v8) = v12 + v8;
      if (v8 >= v9)
      {
        return 0;
      }
    }

    if (v12 + v8 >= v9)
    {
      v12 = v9 - v8;
      v20 = *(v14 + 80);
    }

    else
    {
      v20 = *(v14 + 80);
      v10 = bswap32(*v20);
    }

    result = sub_1819455D0(v14, (v20 + 4), a2, v8, v12);
    v17 = *(v14 + 112);
    if (!v17)
    {
      goto LABEL_18;
    }

LABEL_14:
    v18 = result;
    if ((*(v17 + 52) & 0x20) != 0)
    {
      v19 = *(v17 + 40);
      --*(v19 + 152);
      *(v17 + 32) = *(v19 + 168);
      *(v19 + 168) = v17;
      (*(**(v19 + 72) + 144))(*(v19 + 72), *(v19 + 200) * (*(v17 + 48) - 1), *(v17 + 8));
    }

    else
    {
      sub_181932B68(v17);
    }

    result = v18;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_181945948(uint64_t a1, signed int a2, int a3)
{
  v4 = a3 + a2;
  v5 = *(a1 + 80);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  v8 = v5 + v6;
  if (!*(v5 + v6 + 2) && !*(v5 + v7))
  {
    v24 = a3 + a2;
    v9 = 0;
    v10 = v6 + 1;
    v15 = a3;
    goto LABEL_28;
  }

  v9 = v6 + 1;
  while (1)
  {
    v10 = v9;
    v11 = (v5 + v9);
    v9 = __rev16(*v11);
    if (v9 >= a2)
    {
      break;
    }

    if (v9 <= v10)
    {
      if (v9)
      {
        v12 = 81203;
        goto LABEL_38;
      }

      if (*(*(a1 + 72) + 56) <= 3)
      {
        goto LABEL_14;
      }

      v9 = 0;
LABEL_17:
      v14 = 0;
      v15 = a3;
      if (v10 <= v7)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }
  }

  v13 = *(*(a1 + 72) + 56);
  if (v9 > v13 - 4)
  {
LABEL_14:
    v12 = 81208;
    goto LABEL_38;
  }

  if (!v9 || v4 + 3 < v9)
  {
    goto LABEL_17;
  }

  v14 = v9 - v4;
  if (v9 < v4)
  {
    v12 = 81220;
    goto LABEL_38;
  }

  v17 = (v5 + v9);
  v4 = v9 + (bswap32(v17[1]) >> 16);
  if (v4 > v13)
  {
    v12 = 81223;
    goto LABEL_38;
  }

  v15 = v4 - a2;
  v9 = __rev16(*v17);
  if (v10 > v7)
  {
LABEL_18:
    v16 = v10 + (bswap32(v11[1]) >> 16);
    if (v16 + 3 >= a2)
    {
      if (v16 > a2)
      {
        v12 = 81236;
        goto LABEL_38;
      }

      v14 = v14 + a2 - v16;
      v15 = v4 - v10;
      a2 = v10;
    }
  }

LABEL_25:
  v18 = *(v8 + 7);
  if (v14 <= v18)
  {
    v24 = v4;
    *(v8 + 7) = v18 - v14;
LABEL_28:
    v19 = __rev16(*(v8 + 5));
    if ((*(*(a1 + 72) + 40) & 0xC) != 0)
    {
      v20 = a2;
      v21 = a3;
      bzero((v5 + a2), v15);
      a2 = v20;
      a3 = v21;
    }

    if (a2 <= v19)
    {
      if (a2 < v19)
      {
        v12 = 81256;
        goto LABEL_38;
      }

      if (v10 != v7)
      {
        v12 = 81257;
        goto LABEL_38;
      }

      *(v5 + v7) = __rev16(v9);
      *(v8 + 5) = HIBYTE(v24);
      *(v8 + 6) = v24;
    }

    else
    {
      *(v5 + v10) = bswap32(a2) >> 16;
      v22 = (v5 + a2);
      *v22 = BYTE1(v9);
      v22[1] = v9;
      v22[2] = BYTE1(v15);
      v22[3] = v15;
    }

    *(a1 + 20) += a3;
    return 0;
  }

  v12 = 81242;
LABEL_38:

  return sub_18193596C(v12, a1);
}

uint64_t sub_181945C04(uint64_t a1, int a2, _DWORD *a3)
{
  v4 = *(a1 + 9);
  v5 = *(a1 + 80);
  v19 = 0;
  v6 = *(a1 + 18) + 2 * *(a1 + 24);
  v7 = v5 + v4;
  v8 = __rev16(*(v5 + v4 + 5));
  if (v6 <= v8)
  {
    if (v8 > *(*(a1 + 72) + 56))
    {
      v9 = 81107;
      goto LABEL_8;
    }
  }

  else
  {
    if (v8 || *(*(a1 + 72) + 56) != 0x10000)
    {
      v9 = 81104;
      goto LABEL_8;
    }

    v8 = 0x10000;
  }

  if (!*(v7 + 2))
  {
    v11 = v6 + 2;
    if (*(v7 + 1))
    {
      v12 = v11 > v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v11 = v6 + 2;
  if (v6 + 2 <= v8)
  {
LABEL_18:
    v13 = a3;
    v14 = a2;
    v15 = sub_181945DD4(a1, a2, &v19);
    if (!v15)
    {
      result = v19;
      if (v19)
      {
        return result;
      }

      v11 = v6 + 2;
      a3 = v13;
      a2 = v14;
      goto LABEL_23;
    }

    *v13 = v15 - v5;
    if (v6 < v15 - v5)
    {
      return 0;
    }

    v9 = 81124;
LABEL_8:

    return sub_18193596C(v9, a1);
  }

LABEL_23:
  if ((v11 + a2) <= v8)
  {
LABEL_29:
    result = 0;
    *(v7 + 5) = bswap32(v8 - a2) >> 16;
    *a3 = v8 - a2;
    return result;
  }

  v16 = a3;
  v17 = a2;
  if (*(a1 + 20) - a2 - 2 >= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = *(a1 + 20) - a2 - 2;
  }

  result = sub_1818EF3D0(a1, v18);
  if (!result)
  {
    v8 = (_byteswap_ushort(*(v7 + 5)) - 1) + 1;
    a3 = v16;
    a2 = v17;
    goto LABEL_29;
  }

  return result;
}

unsigned __int16 *sub_181945DD4(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = *(a1 + 9);
  v6 = v5 + 1;
  v7 = *(a1 + 80);
  v8 = __rev16(*(v7 + v5 + 1));
  v9 = *(*(a1 + 72) + 56);
  v10 = v9 - a2;
  while (1)
  {
    if (v8 > v10)
    {
      if (v8 <= v9 - 4)
      {
        return 0;
      }

      v15 = 81056;
      goto LABEL_14;
    }

    result = (v7 + v8);
    v12 = __rev16(result[1]) - a2;
    if (v12 >= 0)
    {
      break;
    }

    v13 = __rev16(*result);
    v6 = v8;
    v14 = v13 > v8;
    v8 = v13;
    if (!v14)
    {
      if (v13)
      {
        v15 = 81049;
        goto LABEL_14;
      }

      return 0;
    }
  }

  if (v12 > 3)
  {
    if (v12 + v8 <= v10)
    {
      result[1] = bswap32(v12) >> 16;
      return (v7 + v12 + v8);
    }

    v15 = 81034;
LABEL_14:
    v16 = sub_18193596C(v15, a1);
    result = 0;
    *a3 = v16;
    return result;
  }

  if (*(v7 + v5 + 7) > 0x39u)
  {
    return 0;
  }

  *(v7 + v6) = *result;
  *(v7 + v5 + 7) += v12;
  return result;
}

uint64_t sub_181945EEC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a2;
  v7 = *(a4 + 72);
  v8 = *(a4 + 80);
  v9 = v7[14];
  v10 = v8 + v9;
  v11 = (v8 + v9);
  v12 = *(a4 + 96);
  v13 = *(*v7 + 328);
  v31 = v8 + *(a4 + 9);
  LODWORD(v14) = __rev16(*(v31 + 5));
  if (v14 <= v9)
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v34 = v13;
  v35 = v8 + v14;
  memcpy((v13 + v14), (v8 + v14), (v9 - v14));
  v15 = (a1 + 80);
  v16 = -1;
  do
  {
    v17 = *v15++;
    ++v16;
  }

  while (v17 <= v5);
  v32 = a3;
  v18 = a1 + 32;
  v5 = v5;
  v19 = a3 + v5;
  v20 = v16;
LABEL_7:
  v21 = *(v18 + 8 * v16);
  v22 = v20;
  while (1)
  {
    v23 = *(*(a1 + 16) + 8 * v5);
    v24 = *(*(a1 + 24) + 2 * v5);
    v25 = &v23[v24];
    if (v23 >= v35 && v23 < v10)
    {
      break;
    }

    if (v23 < v21 && v25 > v21)
    {
      v30 = 86877;
      goto LABEL_28;
    }

LABEL_21:
    v11 -= v24;
    v28 = v11 - v8;
    *v12 = bswap32(v11 - v8) >> 16;
    v12 += 2;
    if (v11 < v12)
    {
      v30 = 86883;
      goto LABEL_28;
    }

    memmove(v11, v23, v24);
    if (++v5 >= v19)
    {
      *(a4 + 24) = v32;
      *(a4 + 12) = 0;
      *(v31 + 1) = 0;
      *(v31 + 3) = *(a4 + 25);
      *(v31 + 4) = *(a4 + 24);
      *(v31 + 5) = HIBYTE(v28);
      *(v31 + 6) = v28;
      return 0;
    }

    if (v5 >= *(a1 + 80 + 4 * v22))
    {
      v20 = v22 + 1;
      v16 = v22 + 1;
      v18 = a1 + 32;
      goto LABEL_7;
    }
  }

  if (v25 <= v10)
  {
    v23 = &v23[v34 - v8];
    goto LABEL_21;
  }

  v30 = 86872;
LABEL_28:

  return sub_18190EDA8(v30);
}

uint64_t sub_1819460F8(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v34 = *(a1 + 80);
  v10 = *(a1 + 9);
  v11 = *(a1 + 96);
  v12 = *(a1 + 24);
  v13 = *(a1 + 12);
  v33 = a2 - a3;
  if (a2 >= a3)
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v14 = sub_18194648C(a1, a2, a3 - a2, a5);
    v15 = v12 - v14;
    if (v12 < v14)
    {
      v16 = 87092;
LABEL_37:

      return sub_18190EDA8(v16);
    }

    memmove(*(a1 + 96), (*(a1 + 96) + 2 * v14), 2 * v12);
  }

  v17 = v11 + 2 * a4;
  v18 = v12 + a2 + v13;
  if (v18 > a4 + a3)
  {
    v15 -= sub_18194648C(a1, a4 + a3, v18 - (a4 + a3), a5);
  }

  v32 = v34 + v10;
  v19 = (v34 + __rev16(*(v34 + v10 + 5)));
  v35 = v19;
  if (v19 >= v17 && v19 <= *(a1 + 88))
  {
    if (a3 < a2)
    {
      if (v33 >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v33;
      }

      v21 = *(a1 + 96);
      memmove(&v21[2 * v20], v21, 2 * v15);
      if (sub_181946678(a1, v17, &v35, v21, a3, v20, a5))
      {
        goto LABEL_28;
      }

      v15 += v20;
    }

    v22 = *(a1 + 12);
    if (*(a1 + 12))
    {
      for (i = 14; i - 14 < v22; ++i)
      {
        v24 = *(a1 + 2 * i) + a2;
        v25 = v24 - a3;
        if (v24 - a3 >= 0 && v25 < a4)
        {
          v26 = (*(a1 + 96) + (2 * v25));
          if (v15 > v25)
          {
            memmove(v26 + 1, (*(a1 + 96) + (2 * v25)), 2 * (v15 - v25));
          }

          if (!*(a5[3] + 2 * v24))
          {
            sub_18194644C(a5, v24);
          }

          if (sub_181946678(a1, v17, &v35, v26, v24, 1, a5))
          {
            goto LABEL_28;
          }

          ++v15;
          v22 = *(a1 + 12);
        }
      }
    }

    result = sub_181946678(a1, v17, &v35, (*(a1 + 96) + 2 * v15), v15 + a3, a4 - v15, a5);
    if (!result)
    {
      *(a1 + 24) = a4;
      *(a1 + 12) = 0;
      *(v32 + 3) = BYTE1(a4);
      *(v32 + 4) = *(a1 + 24);
      *(v32 + 5) = bswap32(v35 - v34) >> 16;
      return result;
    }
  }

LABEL_28:
  if (a4 <= 0)
  {
    v16 = 87170;
    goto LABEL_37;
  }

  v28 = a5[1];
  v29 = 8 * a3;
  v30 = (a5[3] + 2 * a3);
  v31 = a4 + 1;
  do
  {
    if (!*v30)
    {
      *v30 = (*(v28 + 120))(v28, *(a5[2] + v29));
    }

    v29 += 8;
    ++v30;
    --v31;
  }

  while (v31 > 1);

  return sub_181945EEC(a5, a3, a4, a1);
}

uint64_t sub_18194644C(uint64_t a1, int a2)
{
  result = (*(*(a1 + 8) + 120))();
  *(*(a1 + 24) + 2 * a2) = result;
  return result;
}

uint64_t sub_18194648C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  v7 = 0;
  v8 = *(a1 + 80);
  v9 = *(*(a1 + 72) + 56);
  v10 = v8 + v9;
  v11 = v8 + *(a1 + 9) + *(a1 + 10) + 8;
  v12 = a2;
  v13 = a3 + a2;
  v35 = *(*(a1 + 72) + 56);
  v36 = v8;
  v34 = v8 + v9;
  do
  {
    v14 = *(*(a4 + 16) + 8 * v12);
    if (v14 >= v11 && v14 < v10)
    {
      v16 = (v14 - v8);
      v17 = v16 + *(*(a4 + 24) + 2 * v12);
      if (v7 >= 1)
      {
        v18 = v7;
        v19 = v38;
        v20 = v39;
        v21 = v7;
        do
        {
          if (*v20 == v17)
          {
            *v20 = v16;
            goto LABEL_4;
          }

          if (*v19 == v16)
          {
            *v19 = v17;
            goto LABEL_4;
          }

          ++v19;
          ++v20;
          --v21;
        }

        while (v21);
        if (v7 >= 10)
        {
          v37 = result;
          v22 = v38;
          v23 = v39;
          do
          {
            v25 = *v23++;
            v24 = v25;
            v26 = *v22++;
            sub_181945948(a1, v24, v26 - v24);
            --v18;
          }

          while (v18);
          v7 = 0;
          LODWORD(result) = v37;
          LODWORD(v9) = v35;
          LOWORD(v8) = v36;
          v10 = v34;
        }
      }

      v39[v7] = v16;
      v38[v7] = v17;
      if (v17 > v9)
      {
        return 0;
      }

      ++v7;
LABEL_4:
      result = (result + 1);
    }

    ++v12;
  }

  while (v12 < v13);
  if (v7 >= 1)
  {
    v27 = result;
    v28 = v7;
    v29 = v38;
    v30 = v39;
    do
    {
      v32 = *v30++;
      v31 = v32;
      v33 = *v29++;
      sub_181945948(a1, v31, v33 - v31);
      --v28;
    }

    while (v28);
    return v27;
  }

  return result;
}

uint64_t sub_181946678(uint64_t a1, uint64_t a2, void **a3, _WORD *a4, int a5, int a6, uint64_t a7)
{
  if (a6 < 1)
  {
    return 0;
  }

  v9 = *(a1 + 80);
  v10 = *a3;
  v11 = (a7 + 80);
  v12 = (a7 + 24);
  LODWORD(v13) = -1;
  v28 = a7 + 80;
  do
  {
    v14 = *v11++;
    LODWORD(v13) = v13 + 1;
    ++v12;
  }

  while (v14 <= a5);
  v25 = a7 + 32;
  v15 = *v12;
  v16 = a5;
  v17 = a6 + a5;
  while (1)
  {
    if (((v18 = *(*(a7 + 24) + 2 * v16), *(v9 + 1)) || *(v9 + 2)) && (v19 = sub_181945DD4(a1, *(*(a7 + 24) + 2 * v16), &v29)) != 0)
    {
      v20 = v19;
    }

    else
    {
      if (v10 - a2 < v18)
      {
        return 1;
      }

      v10 = (v10 - v18);
      v20 = v10;
    }

    v21 = *(*(a7 + 16) + 8 * v16);
    if (v21 < v15 && v21 + v18 > v15)
    {
      sub_18190EDA8(86970);
      return 1;
    }

    memmove(v20, v21, v18);
    *a4 = bswap32(v20 - v9) >> 16;
    if (v16 + 1 >= v17)
    {
      break;
    }

    if (v16 + 1 >= *(v28 + 4 * v13))
    {
      v13 = v13 + 1;
      v15 = *(v25 + 8 * v13);
    }

    ++a4;
    ++v16;
  }

  result = 0;
  *a3 = v10;
  return result;
}

uint64_t sub_1819467FC(void *a1, unsigned int **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  if (a1[3])
  {
    goto LABEL_5;
  }

  v5 = *(v4 + 40);
  v6 = *(v5 + 6) << 6;
  v7 = *(v5 + 16);
  if (!v7)
  {
    v8 = sub_181902484(v6 + 104, 0x1032040E2E69B38);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_42:
    a1[3] = 0;
    return 7;
  }

  v8 = sub_181929E8C(v7, v6 + 104, 0x1032040E2E69B38);
  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_4:
  *v8 = v5;
  *(v8 + 8) = v8 + 40;
  *(v8 + 28) = *(v5 + 6) + 1;
  a1[3] = v8;
  v4 = a1[2];
  *(v8 + 28) = *(*(v4 + 40) + 6);
  *(v8 + 31) = 0;
LABEL_5:
  v9 = *a2;
  v10 = *(v4 + 92);
  v11 = sub_181947108;
  if (v10 == 2)
  {
    v11 = sub_181946F30;
  }

  if (v10 == 1)
  {
    v11 = sub_181946DA8;
  }

  a1[7] = v11;
  memset(v25, 0, sizeof(v25));
  if (v9)
  {
    do
    {
      v13 = a2[1];
      if (v13)
      {
        if (v9 == v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v13 + v9[2]);
        }
      }

      else
      {
        v14 = *(v9 + 1);
      }

      *(v9 + 1) = 0;
      v15 = *&v25[0];
      if (*&v25[0])
      {
        v16 = 0;
        do
        {
          v24 = 0;
          v23 = 0;
          v17 = &v24;
          do
          {
            while ((a1[7])(a1, &v23, v9 + 4, *v9, v15 + 4, *v15) <= 0)
            {
              *v17 = v9;
              v17 = (v9 + 2);
              v9 = *(v9 + 1);
              if (!v9)
              {
                *v17 = v15;
                goto LABEL_26;
              }
            }

            *v17 = v15;
            v17 = (v15 + 2);
            v15 = *(v15 + 1);
            v23 = 0;
          }

          while (v15);
          *v17 = v9;
LABEL_26:
          v9 = v24;
          *(v25 + v16++) = 0;
          v12 = v25 + v16;
          v15 = *v12;
        }

        while (*v12);
      }

      else
      {
        v12 = v25;
      }

      *v12 = v9;
      v9 = v14;
    }

    while (v14);
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(v25 + v18);
    if (v20)
    {
      if (v19)
      {
        v24 = 0;
        v23 = 0;
        v21 = &v24;
        do
        {
          while ((a1[7])(a1, &v23, v19 + 4, *v19, v20 + 4, *v20) <= 0)
          {
            *v21 = v19;
            v21 = (v19 + 2);
            v19 = *(v19 + 1);
            if (!v19)
            {
              *v21 = v20;
              goto LABEL_39;
            }
          }

          *v21 = v20;
          v21 = (v20 + 2);
          v20 = *(v20 + 1);
          v23 = 0;
        }

        while (v20);
        *v21 = v19;
LABEL_39:
        v19 = v24;
      }

      else
      {
        v19 = *(v25 + v18);
      }
    }

    ++v18;
  }

  while (v18 != 64);
  *a2 = v19;
  return *(a1[3] + 31);
}

uint64_t sub_181946B00(uint64_t a1)
{
  v2 = *(a1 + 91);
  v3 = v2 - 1;
  *(a1 + 88) = 1;
  if (v2 < 2)
  {
    v9 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v4 = 0;
  v5 = 1 - v2;
  v6 = *(a1 + 90) + 1;
  while (1)
  {
    v7 = a1 + 96 + 96 * (v6 % v3);
    v8 = *v7;
    if (*(v7 + 8))
    {
      break;
    }

    if (!v8)
    {
      v9 = -v4;
      goto LABEL_12;
    }

    --v4;
    ++v6;
    if (v5 == v4)
    {
      goto LABEL_13;
    }
  }

  v9 = -v4;
  if (!v8)
  {
    goto LABEL_12;
  }

  if (*v8)
  {
    v10 = (*v8)(*(v8 + 8));
  }

  else
  {
    v10 = *(v8 + 16);
  }

  v20 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_32;
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
    v20 = &xmmword_1ED452F28;
LABEL_32:
    (*v20)(v8);
  }

  *(v7 + 8) = 0;
  *v7 = 0;
  if (v10)
  {
    return v10;
  }

LABEL_12:
  if (v9 != v3)
  {
    v12 = *(v7 + 40);
    *(a1 + 90) = -85 * ((v7 - a1 - 96) >> 5);
    v13 = *(a1 + 56);
    *(v7 + 48) = *(a1 + 72);
    *(v7 + 32) = v13;
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    if (v12)
    {
      *(a1 + 64) = v12;
      *(a1 + 84) = xmmword_1ED452EC0(v12);
    }

    else if (*(a1 + 64))
    {
      v19 = sub_181902484(*(a1 + 84), 4101880383);
      *(a1 + 64) = v19;
      if (!v19)
      {
        return 7;
      }
    }

    *v7 = 0;
    v14 = sub_181902484(24, 0x80040D6874129);
    if (v14)
    {
      if ((v14 / 17))
      {
        *v14 = sub_1819477E0;
        v18 = 1;
        v17 = v7;
      }

      else
      {
        *v14 = 0;
        v15 = v14;
        v16 = sub_18194717C(v7, v7 + 32);
        v14 = v15;
        *(v7 + 8) = 1;
        v17 = v16;
        v18 = 2;
      }

      v10 = 0;
      v14[v18] = v17;
      *v7 = v14;
      return v10;
    }

    return 7;
  }

LABEL_13:

  return sub_18194717C(a1 + 96 * v3 + 96, a1 + 56);
}

uint64_t sub_181946DA8(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, unsigned int a6)
{
  v6 = a3[1];
  v7 = a5[1];
  v8 = &a3[*a3];
  v9 = &a5[*a5];
  v10 = v6 - v7;
  if (v6 == v7)
  {
    if ((v6 - 7) < 0xFFFFFFFFFFFFFFFALL)
    {
      goto LABEL_30;
    }

    if (byte_181A20E28[v6] <= 1u)
    {
      v11 = 1;
    }

    else
    {
      v11 = byte_181A20E28[v6];
    }

    v12 = &a3[*a3];
    v13 = &a5[*a5];
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      v16 = *v13++;
      v10 = v14 - v16;
      if (v10)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_30;
      }
    }

    v19 = *v8;
    if (((*v9 ^ v19) & 0x80) != 0)
    {
      v10 = (v19 >> 31) | 1;
      goto LABEL_27;
    }
  }

  else if (v6 < 8 || v7 <= 7)
  {
    if (v6 > 7)
    {
      v10 = -1;
    }

    if (v7 > 7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v10;
    }

    if (v18 < 1)
    {
      if (*v9 < 0)
      {
        v10 = 1;
LABEL_27:
        if (**(*(*(a1 + 16) + 40) + 24))
        {
          return -v10;
        }

        else
        {
          return v10;
        }
      }
    }

    else if ((*v8 & 0x80u) != 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = v18;
    }
  }

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (*(*(*(a1 + 16) + 40) + 6) < 2u)
  {
    return 0;
  }

  v21 = *(a1 + 24);
  if (!*a2)
  {
    v23 = a3;
    v24 = a4;
    sub_1818DC95C(a6, a5, v21);
    a4 = v24;
    a3 = v23;
    *a2 = 1;
  }

  return sub_1819403A0(a4, a3, v21, 1);
}

uint64_t sub_181946F30(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, unsigned int a6)
{
  v12 = *a3;
  v13 = *a5;
  v14 = a3[1];
  if (v14 < 0)
  {
    v15 = a3[2];
    if (a3[2] < 0)
    {
      v16 = a3[3];
      if (v16 < 0)
      {
        v26 = 0;
        sub_1818C7200(a3 + 1, &v26);
        if (HIDWORD(v26))
        {
          v14 = -1;
        }

        else
        {
          v14 = v26;
        }
      }

      else
      {
        v14 = ((v14 & 0x7F) << 14) | ((v15 & 0x7F) << 7) | v16;
      }
    }

    else
    {
      v14 = v15 | ((v14 & 0x7F) << 7);
    }
  }

  v17 = a5[1];
  if (v17 < 0)
  {
    v18 = a5[2];
    if (a5[2] < 0)
    {
      v19 = a5[3];
      if (v19 < 0)
      {
        v26 = 0;
        sub_1818C7200(a5 + 1, &v26);
        if (HIDWORD(v26))
        {
          v17 = -1;
        }

        else
        {
          v17 = v26;
        }
      }

      else
      {
        v17 = ((v17 & 0x7F) << 14) | ((v18 & 0x7F) << 7) | v19;
      }
    }

    else
    {
      v17 = v18 | ((v17 & 0x7F) << 7);
    }
  }

  v20 = v14 - v17;
  if (v14 < v17)
  {
    v17 = v14;
  }

  v21 = memcmp(&a3[v12], &a5[v13], (v17 - 13 + ((v17 - 13) >> 31)) >> 1);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(*(a1 + 16) + 40);
  if (v22)
  {
    if (**(v23 + 24))
    {
      return -v22;
    }

    else
    {
      return v22;
    }
  }

  else if (*(v23 + 6) < 2u)
  {
    return 0;
  }

  else
  {
    v25 = *(a1 + 24);
    if (!*a2)
    {
      sub_1818DC95C(a6, a5, v25);
      *a2 = 1;
    }

    return sub_1819403A0(a4, a3, v25, 1);
  }
}

uint64_t sub_181947108(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, unsigned int a6)
{
  v8 = *(a1 + 24);
  if (!*a2)
  {
    sub_1818DC95C(a6, a5, v8);
    *a2 = 1;
  }

  return sub_1819403A0(a4, a3, v8, 0);
}

uint64_t sub_18194717C(uint64_t a1, uint64_t a2)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 64);
  v4 = *(a1 + 64);
  v6 = *(*(a1 + 16) + 32);
  if (!v4)
  {
    if (off_1ED453038 && off_1ED453038(202))
    {
      return 3338;
    }

    LODWORD(v41) = 0;
    result = sub_18193BBF4(*v6, 0, v5, 4126, &v41);
    LODWORD(v41) = result;
    if (result)
    {
      return result;
    }

    v42[0] = 20971520;
    v15 = **v5;
    if (v15)
    {
      (*(v15 + 80))();
      result = v41;
      if (v41)
      {
        return result;
      }
    }

    v4 = *v5;
  }

  v42[0] = (*(a1 + 72) + *(a2 + 16) + 9);
  if (*v42 <= *(v6 + 184))
  {
    v7 = *v4;
    if (**v4 >= 3)
    {
      v41 = 0;
      v40 = 4096;
      (*(v7 + 80))(v4, 6, &v40);
      (*(*v4 + 80))(v4, 5, v42);
      (*(*v4 + 136))(v4, 0, v42[0].u32[0], &v41);
      if (v41)
      {
        (*(*v4 + 144))(v4, 0);
      }
    }
  }

  result = sub_1819467FC(a1, a2);
  if (!result)
  {
    v9 = *(*(a1 + 16) + 12);
    v11 = *(a1 + 64);
    v10 = *(a1 + 72);
    v12 = sub_181902484(v9, 0x100004077774924);
    if (v12)
    {
      result = 0;
      v13 = v10 / v9 * v9;
      v14 = v10 % v9;
    }

    else
    {
      v9 = 0;
      LODWORD(v14) = 0;
      v13 = 0;
      v11 = 0;
      result = 7;
    }

    ++*(a1 + 12);
    v16 = *(a2 + 16);
    v36 = a1;
    v37 = a2;
    if (v16 > 0x7F)
    {
      if (v16 >> 14)
      {
        v18 = result;
        v17 = sub_1819436D0(v42, v16);
        result = v18;
        if (v17 < 1)
        {
          v19 = v14;
          goto LABEL_33;
        }
      }

      else
      {
        v42[0].i8[0] = (v16 >> 7) | 0x80;
        v42[0].i8[1] = v16 & 0x7F;
        v17 = 2;
      }
    }

    else
    {
      v42[0].i8[0] = *(a2 + 16);
      v17 = 1;
    }

    v19 = v14;
    v20 = v17;
    while (!result)
    {
      if (v20 >= v9 - v19)
      {
        v22 = v9 - v19;
      }

      else
      {
        v22 = v20;
      }

      memcpy((v12 + v19), v42 + v17 - v20, v22);
      v19 += v22;
      if (v19 == v9)
      {
        result = (*(*v11 + 24))(v11, v12 + v14, (v9 - v14), v13 + v14);
        LODWORD(v14) = 0;
        v19 = 0;
        v13 += v9;
        v21 = __OFSUB__(v20, v22);
        v20 -= v22;
        if ((v20 < 0) ^ v21 | (v20 == 0))
        {
          break;
        }
      }

      else
      {
        result = 0;
        v21 = __OFSUB__(v20, v22);
        v20 -= v22;
        if ((v20 < 0) ^ v21 | (v20 == 0))
        {
          break;
        }
      }
    }

LABEL_33:
    v23 = v37;
    v24 = *v37;
    if (*v37)
    {
      do
      {
        v38 = *(v24 + 8);
        v39 = v24;
        v25 = *v24;
        if (*v24 > 0x7Fu)
        {
          if (v25 >> 14)
          {
            v29 = result;
            v26 = sub_1819436D0(v42, v25);
            result = v29;
            if (v26 < 1)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v42[0].i8[0] = (v25 >> 7) | 0x80;
            v42[0].i8[1] = v25 & 0x7F;
            v26 = 2;
          }
        }

        else
        {
          v42[0].i8[0] = *v24;
          v26 = 1;
        }

        v30 = v26;
        while (!result)
        {
          if (v30 >= v9 - v19)
          {
            v31 = v9 - v19;
          }

          else
          {
            v31 = v30;
          }

          memcpy((v12 + v19), v42 + v26 - v30, v31);
          v19 += v31;
          if (v19 == v9)
          {
            result = (*(*v11 + 24))(v11, v12 + v14, (v9 - v14), v13 + v14);
            LODWORD(v14) = 0;
            v19 = 0;
            v13 += v9;
            v21 = __OFSUB__(v30, v31);
            v30 -= v31;
            if ((v30 < 0) ^ v21 | (v30 == 0))
            {
              break;
            }
          }

          else
          {
            result = 0;
            v21 = __OFSUB__(v30, v31);
            v30 -= v31;
            if ((v30 < 0) ^ v21 | (v30 == 0))
            {
              break;
            }
          }
        }

        v25 = *v39;
LABEL_57:
        if (v25 >= 1)
        {
          v32 = v25;
          while (!result)
          {
            if (v32 >= v9 - v19)
            {
              v33 = v9 - v19;
            }

            else
            {
              v33 = v32;
            }

            memcpy((v12 + v19), v39 + v25 - v32 + 16, v33);
            v19 += v33;
            if (v19 == v9)
            {
              result = (*(*v11 + 24))(v11, v12 + v14, (v9 - v14), v13 + v14);
              LODWORD(v14) = 0;
              v19 = 0;
              v13 += v9;
              v21 = __OFSUB__(v32, v33);
              v32 -= v33;
              if ((v32 < 0) ^ v21 | (v32 == 0))
              {
                break;
              }
            }

            else
            {
              result = 0;
              v21 = __OFSUB__(v32, v33);
              v32 -= v33;
              if ((v32 < 0) ^ v21 | (v32 == 0))
              {
                break;
              }
            }
          }
        }

        v23 = v37;
        v24 = v38;
        if (v37[1])
        {
          continue;
        }

        v27 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v28 = result;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v39);
          --qword_1ED456A90;
          off_1ED452EB0(v39);
          result = v28;
          v39 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            continue;
          }

          v27 = &xmmword_1ED452F28;
        }

        else
        {
          v28 = result;
        }

        (*v27)(v39);
        result = v28;
      }

      while (v38);
    }

    *v23 = 0;
    if (result)
    {
      *(v36 + 72) = v13 + v19;
      if (!v12)
      {
        return result;
      }
    }

    else
    {
      if (!v12)
      {
        result = 0;
        *(v36 + 72) = v13 + v19;
        return result;
      }

      if (v19 <= v14)
      {
        result = 0;
      }

      else
      {
        result = (*(*v11 + 24))(v11, v12 + v14, (v19 - v14), v13 + v14);
      }

      *(v36 + 72) = v13 + v19;
    }

    v34 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v35 = result;
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
        return v35;
      }

      v34 = &xmmword_1ED452F28;
    }

    else
    {
      v35 = result;
    }

    (*v34)(v12);
    return v35;
  }

  return result;
}

uint64_t sub_1819477E0(uint64_t a1)
{
  LODWORD(result) = sub_18194717C(a1, a1 + 32);
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_181947814(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v7 = a3;
  if (*(result + 184) >= a3)
  {
    v3 = *a2;
    if (**a2 >= 3)
    {
      v6 = 0;
      v5 = 4096;
      (*(v3 + 80))(a2, 6, &v5);
      (*(*a2 + 80))(a2, 5, &v7);
      result = (*(*a2 + 136))(a2, 0, v7, &v6);
      if (v6)
      {
        return (*(*a2 + 144))(a2, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1819478D0(uint64_t a1, int a2)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  v5 = v3[1];
  v45 = v3;
  v44 = *(*(*v3 + 16) + 32);
  *(v5 + 1) = *v3;
  v6 = *v5;
  if (v6 >= 1)
  {
    v42 = v4;
    v7 = 0;
    v8 = v6 - 1;
    v9 = 80 * v6;
    do
    {
      v11 = *(v5 + 3);
      if (a2 == 2)
      {
        result = sub_181948234(v11 + 80 * v8);
        if (result)
        {
          return result;
        }
      }

      else
      {
        v12 = v11 + v7;
        v13 = *(v11 + v7 + 72);
        if (v13)
        {
          if (*(v13 + 32))
          {
            v14 = *v13;
            **v13 = 0;
            v15 = sub_181902484(24, 0x80040D6874129);
            if (!v15)
            {
              return 7;
            }

            v16 = v15;
            if ((v15 / 17))
            {
              *v15 = sub_181948FF8;
              v19 = 1;
            }

            else
            {
              *v15 = 0;
              v17 = sub_1819478D0(v12, 1);
              v18 = *(v12 + 72);
              v12 = v17;
              *(*v18 + 8) = 1;
              v19 = 2;
            }

            v16[v19] = v12;
            *v14 = v16;
          }

          else
          {
            result = sub_1819478D0(v12, 0);
            if (result)
            {
              return result;
            }
          }
        }
      }

      --v8;
      v7 += 80;
    }

    while (v9 != v7);
    v20 = *v5;
    v4 = v42;
    if (v20 >= 2)
    {
      v21 = 2 * v20 - 1;
      v22 = 8 * v20 - 4;
      do
      {
        v26 = *v5 / 2;
        if (v20 <= v26)
        {
          v28 = (*(v5 + 2) + v22);
          v27 = *(v28 - 1);
          v24 = *v28;
        }

        else
        {
          v24 = v21 - 2 * v26;
          v27 = v24 - 1;
        }

        v29 = *(v5 + 3);
        if (*(v29 + 80 * v27 + 24))
        {
          if (*(v29 + 80 * v24 + 24))
          {
            v23 = *(v5 + 1);
            LODWORD(v50) = 0;
            if ((*(v23 + 56))() < 1)
            {
              v24 = v27;
            }
          }

          else
          {
            v24 = v27;
          }
        }

        v25 = *(v5 + 2) + 4 * v20--;
        *(v25 - 4) = v24;
        v21 -= 2;
        v22 -= 8;
      }

      while ((v20 + 1) > 2);
    }
  }

  v30 = v4[3];
  result = *(v30 + 31);
  if (*(v30 + 31))
  {
    return result;
  }

  v31 = v45;
  v32 = *(v45 + 24);
  if (*(v45 + 32))
  {
    if (off_1ED453038 && off_1ED453038(202))
    {
      return 3338;
    }

    v47 = 0;
    result = sub_18193BBF4(*v44, 0, (v45 + 40), 4126, &v47);
    v47 = result;
    if (result)
    {
      return result;
    }

    v46 = 20971520;
    v33 = *(v45 + 40);
    if (*v33)
    {
      (*(*v33 + 80))(v33, 18, &v46);
    }

    if (v32 >= 1)
    {
      v34 = *(v45 + 40);
      v50 = v32;
      if (*(v44 + 184) >= v32)
      {
        v35 = *v34;
        if (**v34 >= 3)
        {
          v49 = 0;
          v48 = 4096;
          (*(v35 + 80))(v34, 6, &v48);
          (*(*v34 + 80))(v34, 5, &v50);
          (*(*v34 + 136))(v34, 0, v50, &v49);
          if (v49)
          {
            (*(*v34 + 144))(v34, 0);
          }
        }
      }
    }

    result = v47;
    if (v47)
    {
      return result;
    }

    if (off_1ED453038 && off_1ED453038(202))
    {
      return 3338;
    }

    LODWORD(v49) = 0;
    result = sub_18193BBF4(*v44, 0, (v45 + 56), 4126, &v49);
    LODWORD(v49) = result;
    if (result)
    {
      return result;
    }

    v50 = 20971520;
    v36 = **(v45 + 56);
    if (v36)
    {
      (*(v36 + 80))();
    }

    if (v32 >= 1)
    {
      sub_181947814(v44, *(v45 + 56), v32);
    }

    result = v49;
    if (v49)
    {
      return result;
    }

    goto LABEL_52;
  }

  v37 = v4;
  v38 = v4[10];
  v40 = v4[11];
  v39 = (v4 + 10);
  if (!v38)
  {
    if (off_1ED453038 && off_1ED453038(202))
    {
      result = 3338;
    }

    else
    {
      LODWORD(v49) = 0;
      result = sub_18193BBF4(*v44, 0, v4 + 10, 4126, &v49);
      LODWORD(v49) = result;
      if (!result)
      {
        v50 = 20971520;
        v41 = **v39;
        if (v41)
        {
          (*(v41 + 80))();
        }

        if (v40 >= 1)
        {
          sub_181947814(v44, *v39, v40);
        }

        result = v49;
        v4[11] = 0;
        if (result)
        {
          return result;
        }

        v40 = 0;
        v38 = *v39;
        v31 = v45;
        v37 = v4;
        goto LABEL_51;
      }
    }

    v4[11] = 0;
    return result;
  }

LABEL_51:
  *(v31 + 56) = v38;
  *(v31 + 16) = v40;
  v37[11] = v40 + v32;
LABEL_52:
  if (*(v45 + 32))
  {
    result = sub_181948A3C(v45);
    if (a2 == 1)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (a2 == 1)
    {
      return result;
    }
  }

  if (!result)
  {
    return sub_181948234(a1);
  }

  return result;
}

void *sub_181947DCC(int a1)
{
  v1 = 2;
  do
  {
    v2 = v1;
    v1 *= 2;
  }

  while (v2 < a1);
  if (off_1ED453038 && off_1ED453038(100))
  {
    return 0;
  }

  v4 = 84 * v2;
  result = sub_181902484(v4 + 32, 0x1030040AE83759ALL);
  if (result)
  {
    v5 = v4 + 32;
    v6 = result;
    bzero(result, v5);
    result = v6;
    *v6 = v2;
    v6[3] = v6 + 4;
    v6[1] = 0;
    v6[2] = &v6[10 * v2 + 4];
  }

  return result;
}

uint64_t sub_181947E74(uint64_t a1, int a2, uint64_t *a3, int **a4)
{
  v8 = *a3;
  v9 = sub_181947DCC(a2);
  *a4 = v9;
  v10 = v9 != 0;
  if (v9)
  {
    result = 0;
  }

  else
  {
    result = 7;
  }

  if (a2 < 1)
  {
    v15 = v8;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    v12 = 0;
    v13 = a2;
    v14 = 1;
    v15 = v8;
    while (1)
    {
      v16 = (*(v9 + 3) + v12);
      result = sub_181947FB0(a1, v16, (a1 + 64), v15);
      if (result)
      {
        break;
      }

      v20 = 0;
      result = sub_18194813C(v16, &v20);
      v16[1] = v20 + *v16;
      if (result)
      {
        break;
      }

      result = sub_181948234(v16);
      v15 = v16[1];
      v10 = result == 0;
      if (v14 < v13)
      {
        v12 += 80;
        ++v14;
        if (!result)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v15 = v16[1];
LABEL_15:
    v17 = result;
    v18 = v9;
    v19 = v15;
    sub_18193B3CC(v18);
    result = v17;
    v15 = v19;
    *a4 = 0;
    goto LABEL_16;
  }

  v15 = v8;
LABEL_14:
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_16:
  *a3 = v15;
  return result;
}

uint64_t sub_181947FB0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (off_1ED453038 && off_1ED453038(201))
  {
    return 266;
  }

  if (a2[8])
  {
    (*(*a2[3] + 144))(a2[3], 0);
    a2[8] = 0;
  }

  v9 = *a3;
  v10 = a3[1];
  *a2 = a4;
  a2[1] = v10;
  a2[3] = v9;
  if (v10 <= *(*(*(a1 + 16) + 32) + 184) && **v9 >= 3)
  {
    v8 = (*(*v9 + 136))(v9, 0);
    if (v8)
    {
      return v8;
    }

    if (a2[8])
    {
      return 0;
    }
  }

  v11 = *(*(a1 + 16) + 12);
  v12 = *a2;
  v13 = a2[6];
  if (v13)
  {
    v8 = 0;
  }

  else
  {
    v13 = sub_181902484(v11, 0x100004077774924);
    a2[6] = v13;
    if (v13)
    {
      v8 = 0;
    }

    else
    {
      v8 = 7;
    }

    *(a2 + 14) = v11;
    if (v8)
    {
      return v8;
    }
  }

  v14 = v12 % v11;
  if (!v14)
  {
    return v8;
  }

  v15 = a2[1];
  if (*a2 + v11 - v14 <= v15)
  {
    v16 = (v11 - v14);
  }

  else
  {
    v16 = v15 - *a2;
  }

  v17 = *(*a2[3] + 16);
  v18 = v13 + v14;
  v19 = a2[3];

  return v17(v19, v18, v16);
}

uint64_t sub_18194813C(uint64_t a1, unint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v4 = *a1;
  if (v3)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 56);
  v4 %= v5;
  v6 = v5 - v4;
  if (v4)
  {
    v7 = v6 < 9;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = *(a1 + 48);
LABEL_11:
    v12 = sub_1818C7200((v3 + v4), a2);
    result = 0;
    *a1 += v12;
    return result;
  }

  v9 = 0;
  v13 = 0;
  while (1)
  {
    result = sub_181948884(a1, 1, &v13);
    if (result)
    {
      break;
    }

    v11 = *v13;
    v14[v9++ & 0xF] = *v13;
    if ((v11 & 0x80000000) == 0)
    {
      sub_1818C7200(v14, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_181948234(uint64_t a1)
{
  v30[0] = 0;
  if (*a1 < *(a1 + 8))
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!*(v4 + 8))
  {
    v9 = sub_181948A3C(*(a1 + 72));
    v3 = v9;
    *(v4 + 5) = *(v4 + 7);
    if (v4[6] == v4[2])
    {
      *(v4 + 7) = 1;
    }

    if (v9)
    {
LABEL_28:
      v12 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_35;
      }

LABEL_29:
      v13 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_34:
        (*v13)(v12);
        goto LABEL_35;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v12);
      --qword_1ED456A90;
      off_1ED452EB0(v12);
      v12 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v13 = &xmmword_1ED452F28;
        goto LABEL_34;
      }

LABEL_35:
      v14 = *(a1 + 48);
      if (!v14)
      {
        goto LABEL_42;
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
LABEL_42:
          if (*(a1 + 64))
          {
            (*(**(a1 + 24) + 144))(*(a1 + 24), 0);
          }

          v16 = *(a1 + 72);
          if (!v16)
          {
            goto LABEL_80;
          }

          if (!*(v16 + 8))
          {
            goto LABEL_74;
          }

          v17 = *v16;
          v18 = **v16;
          if (!v18)
          {
LABEL_56:
            v20 = v16[5];
            if (v20)
            {
              if (*v20)
              {
                (*(*v20 + 8))(v16[5]);
                *v20 = 0;
              }

              v21 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48 -= xmmword_1ED452EC0(v20);
                --qword_1ED456A90;
                off_1ED452EB0(v20);
                v20 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_65;
                }

                v21 = &xmmword_1ED452F28;
              }

              (*v21)(v20);
            }

LABEL_65:
            v22 = v16[7];
            if (!v22)
            {
              goto LABEL_74;
            }

            if (*v22)
            {
              (*(*v22 + 8))(v16[7]);
              *v22 = 0;
            }

            v23 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_73;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v22);
            --qword_1ED456A90;
            off_1ED452EB0(v22);
            v22 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v23 = &xmmword_1ED452F28;
LABEL_73:
              (*v23)(v22);
            }

LABEL_74:
            sub_18193B3CC(v16[1]);
            v24 = &off_1ED452EB0;
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
                goto LABEL_80;
              }

              v24 = &xmmword_1ED452F28;
            }

            (*v24)(v16);
LABEL_80:
            *(a1 + 48) = 0u;
            *(a1 + 64) = 0u;
            *(a1 + 16) = 0u;
            *(a1 + 32) = 0u;
            *a1 = 0u;
            return v3;
          }

          if (*v18)
          {
            (*v18)(*(v18 + 8));
          }

          v19 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v18);
            --qword_1ED456A90;
            off_1ED452EB0(v18);
            v18 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_55;
            }

            v19 = &xmmword_1ED452F28;
          }

          (*v19)(v18);
LABEL_55:
          *(v17 + 2) = 0;
          *v17 = 0;
          goto LABEL_56;
        }

        v15 = &xmmword_1ED452F28;
      }

      (*v15)(v14);
      goto LABEL_42;
    }

    goto LABEL_26;
  }

  v5 = *v4;
  v6 = **v4;
  if (v6)
  {
    if (*v6)
    {
      v3 = (*v6)(*(v6 + 8));
    }

    else
    {
      v3 = *(v6 + 16);
    }

    v10 = &off_1ED452EB0;
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
LABEL_23:
        *(v5 + 2) = 0;
        *v5 = 0;
        if (v3)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      v10 = &xmmword_1ED452F28;
    }

    (*v10)(v6);
    goto LABEL_23;
  }

LABEL_24:
  v11 = *(v4 + 5);
  *(v4 + 5) = *(v4 + 7);
  *(v4 + 7) = v11;
  if (v4[6] != v4[2])
  {
    v25 = *v4;
    **v4 = 0;
    v26 = sub_181902484(24, 0x80040D6874129);
    if (!v26)
    {
      v3 = 7;
      v12 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if ((v26 / 17))
    {
      *v26 = sub_181948E3C;
      v29 = 1;
      v28 = v4;
    }

    else
    {
      *v26 = 0;
      v27 = v26;
      LODWORD(v28) = sub_181948A3C(v4);
      v26 = v27;
      v28 = v28;
      *(*v4 + 8) = 1;
      v29 = 2;
    }

    v26[v29] = v28;
    *v25 = v26;
    if (*(v4 + 7))
    {
      goto LABEL_27;
    }

    goto LABEL_89;
  }

  *(v4 + 7) = 1;
LABEL_26:
  if (*(v4 + 7))
  {
LABEL_27:
    v3 = 0;
    goto LABEL_28;
  }

LABEL_89:
  v2 = sub_181947FB0(*v4, a1, v4 + 5, v4[2]);
  if (v2)
  {
    return v2;
  }

LABEL_2:
  v2 = sub_18194813C(a1, v30);
  if (v2)
  {
    return v2;
  }

  v7 = v30[0];
  *(a1 + 20) = v30[0];

  return sub_181948884(a1, v7, (a1 + 40));
}

uint64_t sub_181948884(uint64_t *a1, int a2, void *a3)
{
  v5 = a1[8];
  v6 = *a1;
  if (v5)
  {
    result = 0;
    *a3 = v5 + v6;
    v8 = v6 + a2;
LABEL_3:
    *a1 = v8;
    return result;
  }

  v9 = *(a1 + 14);
  v10 = v6 % v9;
  if (!v10)
  {
    v20 = a3;
    v21 = a1[1] - v6;
    if (v21 <= v9)
    {
      v22 = v21;
    }

    else
    {
      v22 = v9;
    }

    result = (*(*a1[3] + 16))(a1[3], a1[6], v22);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 14);
    a3 = v20;
  }

  v11 = v9 - v10;
  v12 = a2 - (v9 - v10);
  if (a2 <= (v9 - v10))
  {
    result = 0;
    *a3 = a1[6] + v10;
    v8 = *a1 + a2;
    goto LABEL_3;
  }

  v13 = *(a1 + 4);
  v14 = a3;
  if (v13 >= a2)
  {
    v19 = a1[4];
  }

  else
  {
    v15 = 2 * v13;
    v16 = v13 < 64;
    v17 = 128;
    if (!v16)
    {
      v17 = v15;
    }

    do
    {
      v18 = v17;
      v17 *= 2;
    }

    while (v18 < a2);
    v19 = sub_18190287C(a1[4], v18, 3116543999);
    if (!v19)
    {
      return 7;
    }

    *(a1 + 4) = v18;
    a1[4] = v19;
  }

  memcpy(v19, (a1[6] + v10), v11);
  *a1 += v11;
  if (v12 < 1)
  {
LABEL_27:
    result = 0;
    *v14 = a1[4];
  }

  else
  {
    while (1)
    {
      __src = 0;
      v23 = *(a1 + 14);
      v24 = v12 >= v23 ? v23 : v12;
      result = sub_181948884(a1, v24, &__src);
      if (result)
      {
        break;
      }

      memcpy((a1[4] + a2 - v12), __src, v24);
      v25 = __OFSUB__(v12, v24);
      v12 -= v24;
      if ((v12 < 0) ^ v25 | (v12 == 0))
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t sub_181948A3C(uint64_t a1)
{
  *&v34[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v30 = *(a1 + 8);
  v2 = *(a1 + 56);
  v3 = *(*(*a1 + 16) + 12);
  v4 = sub_181902484(v3, 0x100004077774924);
  v29 = v1;
  if (v4)
  {
    result = 0;
    v6 = v1 / v3 * v3;
    v7 = v1 % v3;
    v8 = v3;
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = 0;
    v6 = 0;
    v2 = 0;
    result = 7;
  }

  v9 = v8;
  v10 = v7;
  while (1)
  {
    v13 = *(*(v30 + 16) + 4);
    v14 = *(v30 + 24) + 80 * v13;
    if (!*(v14 + 24))
    {
      break;
    }

    v15 = *(v14 + 20);
    v31 = *(v30 + 24) + 80 * v13;
    if (v15 < 0x80)
    {
      if (v6 + v15 + v10 >= v29 + *(a1 + 24))
      {
        break;
      }

      LOBYTE(v34[0]) = *(v14 + 20);
      v16 = 1;
LABEL_16:
      v21 = v16;
      while (!result)
      {
        if (v21 >= v9 - v10)
        {
          v23 = v9 - v10;
        }

        else
        {
          v23 = v21;
        }

        memcpy((v4 + v10), v34 + v16 - v21, v23);
        v10 += v23;
        if (v10 == v9)
        {
          result = (*(*v2 + 24))(v2, v4 + v7, (v9 - v7), v6 + v7);
          LODWORD(v7) = 0;
          v10 = 0;
          v6 += v9;
          v22 = __OFSUB__(v21, v23);
          v21 -= v23;
          if ((v21 < 0) ^ v22 | (v21 == 0))
          {
            break;
          }
        }

        else
        {
          result = 0;
          v22 = __OFSUB__(v21, v23);
          v21 -= v23;
          if ((v21 < 0) ^ v22 | (v21 == 0))
          {
            break;
          }
        }
      }

      if (v15 < 1)
      {
        goto LABEL_5;
      }

LABEL_26:
      v24 = *(v31 + 40);
      v25 = v15;
      while (!result)
      {
        if (v25 >= v9 - v10)
        {
          v26 = v9 - v10;
        }

        else
        {
          v26 = v25;
        }

        memcpy((v4 + v10), (v24 + v15 - v25), v26);
        v10 += v26;
        if (v10 == v9)
        {
          result = (*(*v2 + 24))(v2, v4 + v7, (v9 - v7), v6 + v7);
          LODWORD(v7) = 0;
          v10 = 0;
          v6 += v9;
          v22 = __OFSUB__(v25, v26);
          v25 -= v26;
          if ((v25 < 0) ^ v22 | (v25 == 0))
          {
            goto LABEL_5;
          }
        }

        else
        {
          result = 0;
          v22 = __OFSUB__(v25, v26);
          v25 -= v26;
          if ((v25 < 0) ^ v22 | (v25 == 0))
          {
            goto LABEL_5;
          }
        }
      }

      goto LABEL_5;
    }

    v17 = v6 + v10 + v15 + 1;
    v18 = v15;
    do
    {
      v19 = v18 >> 14;
      v18 >>= 7;
      ++v17;
    }

    while (v19);
    if (v17 > v29 + *(a1 + 24))
    {
      break;
    }

    if (!(v15 >> 14))
    {
      LOBYTE(v34[0]) = (v15 >> 7) | 0x80;
      HIBYTE(v34[0]) = v15 & 0x7F;
      v16 = 2;
      goto LABEL_16;
    }

    v20 = result;
    v16 = sub_1819436D0(v34, v15);
    result = v20;
    if (v16 >= 1)
    {
      goto LABEL_16;
    }

    if (v15 >= 1)
    {
      goto LABEL_26;
    }

LABEL_5:
    v11 = result;
    v12 = sub_181948E70(*(a1 + 8), &v33);
    result = v11;
    if (v12)
    {
      goto LABEL_39;
    }
  }

  v12 = 0;
LABEL_39:
  if (!result)
  {
    if (!v4)
    {
      LODWORD(result) = 0;
      *(a1 + 64) = v6 + v10;
      goto LABEL_56;
    }

    if (v10 <= v7)
    {
      LODWORD(result) = 0;
    }

    else
    {
      LODWORD(result) = (*(*v2 + 24))(v2, v4 + v7, (v10 - v7), v6 + v7);
    }

    *(a1 + 64) = v6 + v10;
LABEL_48:
    v27 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v28 = result;
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
        goto LABEL_55;
      }

      v27 = &xmmword_1ED452F28;
    }

    else
    {
      v28 = result;
    }

    (*v27)(v4);
LABEL_55:
    LODWORD(result) = v28;
    goto LABEL_56;
  }

  *(a1 + 64) = v6 + v10;
  if (v4)
  {
    goto LABEL_48;
  }

LABEL_56:
  if (v12)
  {
    return v12;
  }

  else
  {
    return result;
  }
}

uint64_t sub_181948E3C(uint64_t a1)
{
  result = sub_181948A3C(a1);
  *(*a1 + 8) = 1;
  return result;
}

uint64_t sub_181948E70(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 4);
  result = sub_181948234(*(a1 + 24) + 80 * v5);
  if (!result)
  {
    v7 = v5;
    v19 = 0;
    v8 = *a1 + v5;
    if (v8 >= 2)
    {
      v9 = *(a1 + 24);
      v10 = v9 + 80 * (v7 | 1);
      v11 = v9 + 80 * (v7 & 0xFFFE);
      do
      {
        if (*(v11 + 24))
        {
          if (!*(v10 + 24))
          {
            v16 = v8 >> 1;
            goto LABEL_4;
          }

          v15 = (*(v4 + 56))(v4, &v19, *(v11 + 40), *(v11 + 20), *(v10 + 40), *(v10 + 20));
          v16 = v8 >> 1;
          if (v15 < 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v15 = 1;
          v16 = v8 >> 1;
        }

        if (v15 || v11 >= v10)
        {
          if (*(v11 + 24))
          {
            v19 = 0;
          }

          v18 = *(a1 + 16);
          v17 = *(a1 + 24);
          *(v18 + 4 * v16) = -858993459 * ((v10 - v17) >> 4);
          v11 = v17 + 80 * *(v18 + 4 * (v16 ^ 1));
          goto LABEL_5;
        }

LABEL_4:
        v13 = *(a1 + 16);
        v12 = *(a1 + 24);
        *(v13 + 4 * v16) = -858993459 * ((v11 - v12) >> 4);
        v10 = v12 + 80 * *(v13 + 4 * (v16 ^ 1));
        v19 = 0;
LABEL_5:
        v14 = v8 > 3;
        v8 = v16;
      }

      while (v14);
    }

    *a2 = *(*(a1 + 24) + 80 * *(*(a1 + 16) + 4) + 24) == 0;
    return *(*(v4 + 24) + 31);
  }

  return result;
}

uint64_t sub_181948FF8(uint64_t a1)
{
  result = sub_1819478D0(a1, 1);
  *(**(a1 + 72) + 8) = 1;
  return result;
}

uint64_t sub_181949034(uint64_t result, unsigned int a2)
{
  *(result + 100) = a2;
  v2 = (result + 640);
  v3 = *(result + 656);
  if (v3)
  {
    v2 = (v3 + 16 * (0xA90C8975 % *v2));
    v4 = *v2;
    if (*v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v5 = &qword_1EA831A30;
    goto LABEL_14;
  }

  v4 = *(result + 644);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v5 = (v2 + 2);
  do
  {
    v5 = *v5;
    if (*(v5 + 8) == -1458796171)
    {
      v6 = v5[3];
      for (i = "BINARY"; ; ++i)
      {
        if (*v6 == *i)
        {
          if (!*v6)
          {
            goto LABEL_14;
          }
        }

        else if (byte_181A20298[*v6] != byte_181A20298[*i])
        {
          break;
        }

        ++v6;
      }
    }

    --v4;
  }

  while (v4);
  v5 = &qword_1EA831A30;
LABEL_14:
  v8 = v5[2];
  if (v8)
  {
    v9 = v8 + 40 * a2 - 40;
  }

  else
  {
    v9 = 0;
  }

  *(result + 16) = v9;
  for (j = *(result + 8); j; j = *(j + 16))
  {
    *(j + 268) = *(j + 268) & 0xFFFC | 2;
  }

  return result;
}

void *sub_181949138(uint64_t a1, unsigned int a2, char *__s, int a4)
{
  if (!__s)
  {
    return *(a1 + 16);
  }

  v5 = *__s;
  if (*__s)
  {
    v6 = 0;
    v7 = __s + 1;
    do
    {
      v6 = -1640531535 * (v6 + (v5 & 0xDF));
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 656);
  if (v10)
  {
    v11 = (v10 + 16 * (v6 % *(a1 + 640)));
    v12 = *v11;
    if (*v11)
    {
      goto LABEL_10;
    }

LABEL_21:
    v16 = qword_1EA831A40;
    if (!a4)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v11 = (a1 + 640);
  v12 = *(a1 + 644);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_10:
  v13 = v11 + 2;
  while (1)
  {
    v13 = *v13;
    if (v6 == v13[8])
    {
      break;
    }

LABEL_11:
    if (!--v12)
    {
      v16 = qword_1EA831A40;
      if (!a4)
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v16)
      {
        goto LABEL_32;
      }

      v17 = a2;
      v19 = strlen(__s) & 0x3FFFFFFF;
      if (a1)
      {
        v16 = sub_181929E8C(a1, v19 + 121, 0x109004046112860);
        if (!v16)
        {
          return 0;
        }
      }

      else
      {
        v16 = sub_181902484(v19 + 121, 0x109004046112860);
        if (!v16)
        {
          return 0;
        }
      }

      bzero(v16, v19 + 121);
      *v16 = v16 + 15;
      *(v16 + 8) = 1;
      v16[5] = v16 + 15;
      *(v16 + 48) = 2;
      v16[10] = v16 + 15;
      *(v16 + 88) = 3;
      memcpy(v16 + 15, __s, v19 + 1);
      v20 = sub_18188FAF0(a1 + 640, v16 + 120, v16);
      a2 = v17;
      if (!v20)
      {
        return &v16[5 * a2 - 5];
      }

      v27 = v20;
      if (!*(a1 + 103) && !*(a1 + 104))
      {
        *(a1 + 103) = 1;
        if (*(a1 + 220) >= 1)
        {
          *(a1 + 424) = 1;
        }

        ++*(a1 + 432);
        *(a1 + 436) = 0;
        v28 = *(a1 + 344);
        if (v28)
        {
          sub_181910730(v28, "out of memory", v21, v22, v23, v24, v25, v26, v30);
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

      sub_181929C84(a1, v27);
      return 0;
    }
  }

  v14 = *(v13 + 3);
  for (j = __s; *v14 != *j; ++j)
  {
    if (byte_181A20298[*v14] != byte_181A20298[*j])
    {
      goto LABEL_11;
    }

LABEL_15:
    ++v14;
  }

  if (*v14)
  {
    goto LABEL_15;
  }

  v16 = *(v13 + 2);
  if (a4)
  {
    goto LABEL_22;
  }

LABEL_32:
  if (v16)
  {
    return &v16[5 * a2 - 5];
  }

  return 0;
}

uint64_t sub_1819493D0(int *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = 0;
    v4 = a2 + 1;
    do
    {
      v3 = -1640531535 * (v3 + (v2 & 0xDF));
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
    v6 = *(a1 + 2);
    if (v6)
    {
LABEL_5:
      a1 = (v6 + 16 * (v3 % *a1));
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_6;
      }

      return qword_1EA831A40;
    }
  }

  else
  {
    v3 = 0;
    v6 = *(a1 + 2);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = a1[1];
  if (!v7)
  {
    return qword_1EA831A40;
  }

LABEL_6:
  v8 = (a1 + 2);
  do
  {
    v8 = *v8;
    if (v3 == *(v8 + 8))
    {
      v9 = v8[3];
      for (i = a2; ; ++i)
      {
        if (*v9 == *i)
        {
          if (!*v9)
          {
            return v8[2];
          }
        }

        else if (byte_181A20298[*v9] != byte_181A20298[*i])
        {
          break;
        }

        ++v9;
      }
    }

    --v7;
  }

  while (v7);
  return qword_1EA831A40;
}

uint64_t sub_1819494C8(uint64_t result, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*(*result + 103))
  {
    v9 = 7;
LABEL_3:
    *(result + 20) = v9;
    return result;
  }

  if (!**(result + 8))
  {
    if ((*(result + 24) & 3) != 0)
    {
      v10 = result;
      v11 = sub_1818A8BAC(v8, "error in %s %s after %s: %s", a3, a4, a5, a6, a7, a8, *a2);
      result = v10;
      **(v10 + 8) = v11;
      v9 = 1;
    }

    else
    {
      v12 = result;
      if (*(v8 + 48))
      {
        v23 = 152549;
      }

      else
      {
        v13 = a2[1];
        if (!v13)
        {
          v13 = "?";
        }

        v14 = *result;
        v16 = sub_1818A8BAC(v8, "malformed database schema (%s)", a3, a4, a5, a6, a7, a8, v13);
        if (a3)
        {
          if (*a3)
          {
            v16 = sub_1818A8BAC(v14, "%z - %s", v17, v18, v19, v20, v21, v22, v16);
          }
        }

        **(v12 + 8) = v16;
        v23 = 152556;
      }

      v9 = sub_18190EDA8(v23);
      result = v12;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1819495FC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 32);
LABEL_6:
  v8 = v4 < 2;
  v9 = v4 ^ v8;
  v10 = *(v5 + 32 * v9 + 24);
  if (a3)
  {
    v11 = *(v5 + 32 * v9);
    for (i = a3; ; ++i)
    {
      if (*v11 == *i)
      {
        if (!*v11)
        {
          break;
        }
      }

      else if (byte_181A20298[*v11] != byte_181A20298[*i])
      {
        if (v4 == v8)
        {
          v17 = "main";
          for (j = a3; ; ++j)
          {
            if (*v17 == *j)
            {
              if (!*v17)
              {
                goto LABEL_12;
              }
            }

            else if (byte_181A20298[*v17] != byte_181A20298[*j])
            {
              break;
            }

            ++v17;
          }
        }

LABEL_5:
        if (++v4 == v3)
        {
          return 0;
        }

        goto LABEL_6;
      }

      ++v11;
    }
  }

LABEL_12:
  v13 = *a2;
  if (*a2)
  {
    v14 = 0;
    v15 = a2 + 1;
    do
    {
      v14 = -1640531535 * (v14 + (v13 & 0xDF));
      v16 = *v15++;
      v13 = v16;
    }

    while (v16);
  }

  else
  {
    v14 = 0;
  }

  v19 = (v10 + 32);
  v20 = *(v10 + 48);
  if (!v20)
  {
    v21 = *(v10 + 36);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_28:
    v6 = (v19 + 2);
    do
    {
      v6 = *v6;
      if (v14 == *(v6 + 8))
      {
        v22 = v6[3];
        for (k = a2; ; ++k)
        {
          if (*v22 == *k)
          {
            if (!*v22)
            {
              goto LABEL_4;
            }
          }

          else if (byte_181A20298[*v22] != byte_181A20298[*k])
          {
            break;
          }

          ++v22;
        }
      }

      --v21;
    }

    while (v21);
    goto LABEL_3;
  }

  v19 = (v20 + 16 * (v14 % *v19));
  v21 = *v19;
  if (*v19)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = &qword_1EA831A30;
LABEL_4:
  result = v6[2];
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_1819497B4(uint64_t a1)
{
  v2 = *(a1 + 94);
  if (v2 >= 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = *(a1 + 94);
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(v4 + 58);
  if (v6 <= 98)
  {
    LOWORD(v6) = 99;
    *(v4 + 58) = 99;
  }

  if (*(a1 + 72))
  {
    LOWORD(v6) = v6 - 10;
  }

  *v5 = v6;
  result = memcpy(v5 + 1, &unk_181A20E32, 2 * (v3 & 0x7FFF));
  LODWORD(v8) = *(a1 + 94);
  if (v3 < v8)
  {
    if (v2 >= 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = v2;
    }

    do
    {
      v5[v9 + 1] = 23;
      v8 = *(a1 + 94);
      ++v9;
    }

    while (v9 < v8);
  }

  if (*(a1 + 98))
  {
    v5[v8] = 0;
  }

  return result;
}

unsigned __int8 *sub_181949870(unsigned __int8 *result, int a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *result;
  if (*result)
  {
    v7 = a2 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v16 = 0;
    do
    {
      if (v6 - 48 <= 9)
      {
        v19 = 0;
        do
        {
          v19 = 10 * v19 + v6 - 48;
          v20 = *++v5;
          v6 = v20;
        }

        while (v20 - 48 < 0xA);
        if (v19 >= 8)
        {
          v21 = 40;
          if (v19 >= 0x100)
          {
            v23 = v19;
            do
            {
              v21 += 40;
              v19 = v23 >> 4;
              v7 = v23 > 0xFFF;
              v23 >>= 4;
            }

            while (v7);
          }

          LOBYTE(v22) = v19;
          if (v19 >= 0x10)
          {
            do
            {
              v21 += 10;
              v22 = v19 >> 1;
              v7 = v19 > 0x1F;
              v19 >>= 1;
            }

            while (v7);
          }

          goto LABEL_57;
        }

        if (v19 >= 2)
        {
          v21 = 40;
          do
          {
            v21 -= 10;
            LOBYTE(v22) = 2 * v19;
            v18 = v19 >= 4;
            v19 *= 2;
          }

          while (!v18);
LABEL_57:
          v17 = v21 + word_181A27AA2[v22 & 7] - 10;
          goto LABEL_37;
        }
      }

      v17 = 0;
LABEL_37:
      *(a3 + 2 * v16) = v17;
      if (*v5 == 32)
      {
        ++v5;
      }

      ++v16;
      v6 = *v5;
      if (*v5)
      {
        v18 = v16 >= a2;
      }

      else
      {
        v18 = 1;
      }
    }

    while (!v18);
  }

  *(a4 + 99) &= 0xFFBBu;
  if (*v5)
  {
    while (1)
    {
      result = sub_1818EDFDC("unordered*", v5, byte_181A204C0, 91);
      if (!result)
      {
        break;
      }

      if (!sub_1818EDFDC("sz=[0-9]*", v5, byte_181A204C0, 91))
      {
        v24 = 0;
        result = sub_181949B34(v5 + 3, &v24);
        if (v24 <= 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = v24;
        }

        if (v24 > 7)
        {
          if (v24 < 0x100)
          {
            v10 = 40;
          }

          else
          {
            v10 = 40;
            v12 = v9;
            do
            {
              v10 += 40;
              v9 = v12 >> 4;
              v7 = v12 > 0xFFF;
              v12 >>= 4;
            }

            while (v7);
          }

          LOBYTE(v11) = v9;
          if (v9 >= 0x10)
          {
            do
            {
              v10 += 10;
              v11 = v9 >> 1;
              v7 = v9 > 0x1F;
              v9 >>= 1;
            }

            while (v7);
          }
        }

        else
        {
          v10 = 40;
          do
          {
            v10 -= 10;
            LOBYTE(v11) = 2 * v9;
            v18 = v9 >= 4;
            v9 *= 2;
          }

          while (!v18);
        }

        *(a4 + 92) = v10 + word_181A27AA2[v11 & 7] - 10;
        goto LABEL_29;
      }

      result = sub_1818EDFDC("noskipscan*", v5, byte_181A204C0, 91);
      if (!result)
      {
        v8 = *(a4 + 99) | 0x40;
LABEL_12:
        *(a4 + 99) = v8;
      }

LABEL_29:
      v13 = v5 - 1;
      while ((*v5 | 0x20) != 0x20)
      {
        ++v5;
        ++v13;
      }

      v5 = v13;
      do
      {
        v15 = *++v5;
        v14 = v15;
      }

      while (v15 == 32);
      if (!v14)
      {
        return result;
      }
    }

    v8 = *(a4 + 99) | 4;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_181949B34(unsigned __int8 *a1, _DWORD *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case '-':
      ++a1;
      v3 = -1;
      break;
    case '0':
      if ((a1[1] | 0x20) == 0x78 && (byte_181A204C8[a1[2]] & 8) != 0)
      {
        do
        {
          v17 = a1[2];
          ++a1;
        }

        while (v17 == 48);
        if ((byte_181A204C8[v17] & 8) != 0)
        {
          v18 = ((((2 * v17) >> 7) & 0xF9) + v17) & 0xF;
          v21 = a1[2];
          if ((byte_181A204C8[v21] & 8) != 0)
          {
            v18 = ((((2 * v21) >> 7) & 0xF9) + v21) & 0xF | (16 * v18);
            v22 = a1[3];
            if ((byte_181A204C8[v22] & 8) != 0)
            {
              v18 = ((((2 * v22) >> 7) & 0xF9) + v22) & 0xF | (16 * v18);
              v23 = a1[4];
              if ((byte_181A204C8[v23] & 8) != 0)
              {
                v18 = ((((2 * v23) >> 7) & 0xF9) + v23) & 0xF | (16 * v18);
                v24 = a1[5];
                if ((byte_181A204C8[v24] & 8) != 0)
                {
                  v18 = ((((2 * v24) >> 7) & 0xF9) + v24) & 0xF | (16 * v18);
                  v25 = a1[6];
                  if ((byte_181A204C8[v25] & 8) != 0)
                  {
                    v18 = ((((2 * v25) >> 7) & 0xF9) + v25) & 0xF | (16 * v18);
                    v26 = a1[7];
                    if ((byte_181A204C8[v26] & 8) != 0)
                    {
                      v18 = ((((2 * v26) >> 7) & 0xF9) + v26) & 0xF | (16 * v18);
                      v27 = a1[8];
                      if ((byte_181A204C8[v27] & 8) != 0)
                      {
                        if (((16 * v18) & 0x80000000) != 0)
                        {
                          return 0;
                        }

                        v28 = ((((2 * v27) >> 7) & 0xF9) + v27) & 0xF | (16 * v18);
                        v19 = 8;
                        v18 = v28;
                      }

                      else
                      {
                        v19 = 7;
                      }
                    }

                    else
                    {
                      v19 = 6;
                    }
                  }

                  else
                  {
                    v19 = 5;
                  }
                }

                else
                {
                  v19 = 4;
                }
              }

              else
              {
                v19 = 3;
              }
            }

            else
            {
              v19 = 2;
            }
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        if ((byte_181A204C8[a1[v19 + 1]] & 8) != 0)
        {
          return 0;
        }

        *a2 = v18;
        return 1;
      }

      v3 = 0;
      break;
    case '+':
      v3 = 0;
      ++a1;
      break;
    default:
      v3 = 0;
      v4 = *a1;
      goto LABEL_10;
  }

  v4 = *a1;
LABEL_10:
  if (v4 - 58 < 0xFFFFFFFFFFFFFFF6)
  {
    return 0;
  }

  while (v4 == 48)
  {
    v6 = *++a1;
    v4 = v6;
  }

  if (v4 - 48 >= 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 & 0xF;
    v8 = a1[1];
    if ((v8 - 48) <= 9)
    {
      v7 = (v8 & 0xF) + 10 * v7;
      v9 = a1[2];
      if ((v9 - 48) <= 9)
      {
        v7 = (v9 & 0xF) + 10 * v7;
        v10 = a1[3];
        if ((v10 - 48) <= 9)
        {
          v7 = (v10 & 0xF) + 10 * v7;
          v11 = a1[4];
          if ((v11 - 48) <= 9)
          {
            v7 = (v11 & 0xF) + 10 * v7;
            v12 = a1[5];
            if ((v12 - 48) <= 9)
            {
              v7 = (v12 & 0xF) + 10 * v7;
              v13 = a1[6];
              if ((v13 - 48) <= 9)
              {
                v7 = (v13 & 0xF) + 10 * v7;
                v14 = a1[7];
                if ((v14 - 48) <= 9)
                {
                  v7 = (v14 & 0xF) + 10 * v7;
                  v15 = a1[8];
                  if ((v15 - 48) <= 9)
                  {
                    v7 = (v15 & 0xF) + 10 * v7;
                    v16 = a1[9];
                    if ((v16 - 48) <= 9)
                    {
                      if (a1[10] - 48 < 0xA)
                      {
                        return 0;
                      }

                      v7 = (v16 & 0xF) + 10 * v7;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v7 + v3 > 0x7FFFFFFF)
  {
    return 0;
  }

  if (v2 == 45)
  {
    v20 = -v7;
  }

  else
  {
    v20 = v7;
  }

  *a2 = v20;
  return 1;
}

void sub_181949ECC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a2;
  v31 = *(a1 + 32);
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = "invalid page number %u";
    v6 = a4;
    while (*(a1 + 28))
    {
      if ((v7 - 1) >= *(a1 + 24))
      {
        goto LABEL_32;
      }

      v9 = *(a1 + 16);
      v10 = v7 >> 3;
      v11 = *(v9 + v10);
      v12 = 1 << (v7 & 7);
      if ((v12 & v11) != 0)
      {
        sub_18194A218(a1, "2nd reference to page %u");
        break;
      }

      *(v9 + v10) = v11 | v12;
      v13 = v6 - 1;
      if ((*(*(a1 + 8) + 288))())
      {
        v8 = "failed to get page %u";
        --v6;
LABEL_32:
        sub_18194A218(a1, v8, v7);
        break;
      }

      v14 = MEMORY[8];
      if (v4)
      {
        v15 = *(MEMORY[8] + 4);
        v16 = *(MEMORY[8] + 5);
        v17 = *(MEMORY[8] + 6);
        v18 = *(MEMORY[8] + 7);
        v19 = *a1;
        if (*(*a1 + 33))
        {
          sub_18194A368(a1, v7, 2, 0);
          v19 = *a1;
        }

        v20 = v15 << 24;
        v21 = (v15 << 24) | (v16 << 16) | (v17 << 8) | v18;
        if (v21 <= ((*(v19 + 56) >> 2) - 2))
        {
          if (v21 >= 1)
          {
            v22 = v14 + 11;
            v23 = (v20 + (v16 << 16) + (v17 << 8) + v18);
            do
            {
              v24 = *(v22 - 1);
              v25 = *v22;
              v26 = (*(v22 - 3) << 24) | (*(v22 - 2) << 16) | (v24 << 8) | v25;
              if (*(*a1 + 33))
              {
                sub_18194A368(a1, (*(v22 - 3) << 24) | (*(v22 - 2) << 16) | (v24 << 8) | v25, 2, 0);
              }

              if ((v26 - 1) >= *(a1 + 24))
              {
                sub_18194A218(a1, "invalid page number %u");
              }

              else
              {
                v27 = *(a1 + 16);
                v28 = *(v27 + (v26 >> 3));
                v29 = 1 << (v25 & 7);
                if ((v29 & v28) != 0)
                {
                  sub_18194A218(a1, "2nd reference to page %u");
                }

                else
                {
                  *(v27 + (v26 >> 3)) = v28 | v29;
                }
              }

              v22 += 4;
              --v23;
            }

            while (v23);
          }

          v6 = v13 - v21;
        }

        else
        {
          sub_18194A218(a1, "freelist leaf count too big on page %u", v7);
          v6 -= 2;
        }

        v4 = a2;
      }

      else
      {
        if (*(*a1 + 33) && v6 != 1)
        {
          sub_18194A368(a1, bswap32(*MEMORY[8]), 4, v7);
        }

        --v6;
      }

      v7 = bswap32(*v14);
      if (!v7)
      {
        break;
      }
    }
  }

  if (v6 && v31 == *(a1 + 32))
  {
    v30 = "size";
    if (!v4)
    {
      v30 = "overflow list length";
    }

    sub_18194A218(a1, "%s is %u but should be %u", v30, a4 - v6, a4);
  }
}

void sub_18194A218(uint64_t a1, char *zFormat, ...)
{
  va_start(va, zFormat);
  v4 = *(a1 + 112);
  if (*(v4 + 424))
  {
    ++*(a1 + 32);
    *(a1 + 36) = 9;
    *(a1 + 28) = 0;
  }

  v5 = *(v4 + 544);
  if (v5)
  {
    v6 = *(a1 + 40) + 1;
    *(a1 + 40) = v6;
    if (!(v6 % *(v4 + 560)))
    {
      if (v5(*(v4 + 552)))
      {
        ++*(a1 + 32);
        *(a1 + 36) = 9;
        *(a1 + 28) = 0;
      }
    }
  }

  v7 = *(a1 + 28);
  if (v7)
  {
    v8 = *(a1 + 32) + 1;
    *(a1 + 28) = v7 - 1;
    *(a1 + 32) = v8;
    va_copy(v11, va);
    v9 = *(a1 + 96);
    if (v9)
    {
      if ((v9 + 1) >= *(a1 + 88))
      {
        sub_181906814(a1 + 72, "\n", 1u);
        v10 = *(a1 + 48);
        if (!v10)
        {
LABEL_13:
          sqlite3_str_vappendf((a1 + 72), zFormat, v11);
          if (*(a1 + 100) == 7)
          {
            *(a1 + 36) = 7;
            *(a1 + 28) = 0;
            if (!*(a1 + 32))
            {
              *(a1 + 32) = 1;
            }
          }

          return;
        }

LABEL_12:
        sqlite3_str_appendf((a1 + 72), v10, *(a1 + 56), *(a1 + 60), *(a1 + 64), va);
        goto LABEL_13;
      }

      *(a1 + 96) = v9 + 1;
      *(*(a1 + 80) + v9) = 10;
    }

    v10 = *(a1 + 48);
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }
}

void sub_18194A368(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v11 = 0;
  v10 = 0;
  v7 = sub_181938B74(*a1, a2, &v11, &v10);
  if (v7)
  {
    if (v7 == 3082 || v7 == 7)
    {
      *(a1 + 36) = 7;
      *(a1 + 28) = 0;
      if (!*(a1 + 32))
      {
        *(a1 + 32) = 1;
      }
    }

    sub_18194A218(a1, "Failed to read ptrmap key=%u");
  }

  else if (v11 != a3 || v10 != a4)
  {
    sub_18194A218(a1, "Bad ptr map entry key=%u expected=(%u,%u) got=(%u,%u)");
  }
}

uint64_t sub_18194A428(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v110[0] = a4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 60);
  v7 = *(a1 + 112);
  if (*(v7 + 424))
  {
    ++*(a1 + 32);
    *(a1 + 36) = 9;
    *(a1 + 28) = 0;
  }

  v8 = *(v7 + 544);
  if (v8)
  {
    v9 = *(a1 + 40) + 1;
    *(a1 + 40) = v9;
    if (!(v9 % *(v7 + 560)))
    {
      v10 = a1;
      v11 = a3;
      v12 = a4;
      v13 = v8(*(v7 + 552));
      a4 = v12;
      a3 = v11;
      v14 = v13;
      a1 = v10;
      if (v14)
      {
        ++v10[8];
        v10[9] = 9;
        v10[7] = 0;
      }
    }
  }

  if (!*(a1 + 28))
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 - 1 >= *(a1 + 24))
  {
    sub_18194A218(a1, "invalid page number %u");
    return 0;
  }

  v15 = *(a1 + 16);
  v16 = a2 >> 3;
  v17 = *(v15 + v16);
  v18 = 1 << (a2 & 7);
  if ((v18 & v17) != 0)
  {
    sub_18194A218(a1, "2nd reference to page %u");
    return 0;
  }

  v20 = a4;
  v106 = a3;
  v107 = a1;
  v21 = *a1;
  v22 = *(*a1 + 56);
  *(v15 + v16) = v17 | v18;
  *(a1 + 48) = "Tree %u page %u: ";
  *(a1 + 60) = a2;
  v108[0] = 0;
  v23 = (*(*v21 + 288))();
  if (!v23)
  {
    v26 = *(v108[0] + 16);
    if (*(v26 + 4) != a2)
    {
      v27 = *(v108[0] + 8);
      *(v26 + 112) = v108[0];
      *(v26 + 72) = v21;
      *(v26 + 80) = v27;
      *(v26 + 4) = a2;
      if (a2 == 1)
      {
        v28 = 100;
      }

      else
      {
        v28 = 0;
      }

      *(v26 + 9) = v28;
    }

    v29 = *v26;
    *v26 = 0;
    if (sub_1818C6DCC(v26))
    {
      sub_18194A218(v107, "btreeInitPage() returns error code %d");
LABEL_29:
      v25 = -1;
      goto LABEL_30;
    }

    if (sub_1819454C4(v26))
    {
      sub_18194A218(v107, "free space corruption");
      goto LABEL_29;
    }

    v32 = *(v26 + 80);
    v33 = *(v26 + 9);
    v34 = v107;
    *(v107 + 48) = "Tree %u page %u cell %u: ";
    v105 = v32;
    v35 = v32 + v33;
    v36 = _byteswap_ushort(*(v32 + v33 + 5));
    v95 = v35;
    v37 = __rev16(*(v35 + 3));
    v38 = *(v26 + 8);
    if (*(v26 + 8) || !*(v26 + 1))
    {
      *(v107 + 120) += v37;
    }

    v92 = v29;
    v96 = v37;
    v39 = v36 - 1;
    v40 = v33 - 4 * v38;
    v41 = v106;
    if (v38)
    {
      v42 = *(v107 + 104);
      *v42 = 0;
      v25 = -1;
      v43 = 1;
    }

    else
    {
      v44 = v20;
      v45 = bswap32(*(v35 + 8));
      if (v21[33])
      {
        *(v107 + 48) = "Tree %u page %u right child: ";
        sub_18194A368(v107, v45, 5, a2);
        v44 = v20;
      }

      v25 = sub_18194A428(v107, v45, v110, v44);
      v41 = v106;
      v34 = v107;
      v43 = 0;
      v42 = 0;
    }

    v46 = v40 + 12;
    v47 = v39;
    v97 = v22;
    v48 = v96;
    if (!v96)
    {
      *v41 = v110[0];
      *(v34 + 48) = 0;
LABEL_80:
      if (*(v34 + 28) >= 1)
      {
        if (!*(v26 + 8))
        {
          v42 = *(v34 + 104);
          *v42 = 0;
          if (v48)
          {
            v66 = v105 + v46;
            do
            {
              v67 = v48--;
              v68 = __rev16(*(v66 + 2 * v48));
              v69 = (*(v26 + 120))(v26, v105 + v68);
              v70 = *v42 + 1;
              *v42 = v70;
              v42[v70] = (v68 + v69 - 1) | (v68 << 16);
              if (v70 >= 2)
              {
                do
                {
                  v71 = v42[v70 >> 1];
                  v72 = v42[v70];
                  if (v71 <= v72)
                  {
                    break;
                  }

                  v73 = v70;
                  v42[v70 >> 1] = v72;
                  v42[v70] = v71;
                  v70 >>= 1;
                }

                while (v73 > 3);
              }
            }

            while (v67 > 1);
            v34 = v107;
            v22 = v97;
          }
        }

        for (i = *(v95 + 1); ; i = *v76)
        {
          v75 = __rev16(i);
          if (!v75)
          {
            break;
          }

          v76 = (v105 + v75);
          v77 = (v75 + (bswap32(v76[1]) >> 16) - 1) | (v75 << 16);
          v78 = *v42 + 1;
          *v42 = v78;
          v42[v78] = v77;
          if (v78 >= 2)
          {
            do
            {
              v79 = v42[v78 >> 1];
              v80 = v42[v78];
              if (v79 <= v80)
              {
                break;
              }

              v81 = v78;
              v42[v78 >> 1] = v80;
              v42[v78] = v79;
              v78 >>= 1;
            }

            while (v81 > 3);
          }
        }

        v82 = *v42;
        if (*v42)
        {
          v83 = 0;
          v84 = v47;
          while (1)
          {
            v85 = v82;
            v47 = v42[1];
            v42[1] = v42[v82];
            v42[v82--] = -1;
            *v42 = v82;
            if (v85 >= 3)
            {
              v86 = v42[1];
              v87 = v42[2] <= v42[3] ? 2 : 3;
              v88 = &v42[v87];
              v89 = *v88;
              if (v86 >= *v88)
              {
                v90 = 1;
                do
                {
                  v42[v90] = v89;
                  v90 = v87;
                  *v88 = v86;
                  v87 *= 2;
                  v82 = *v42;
                  if (v87 > *v42)
                  {
                    break;
                  }

                  if (v42[v87] > v42[v87 | 1])
                  {
                    ++v87;
                  }

                  v88 = &v42[v87];
                  v89 = *v88;
                }

                while (v86 >= *v88);
              }
            }

            if (v84 >= HIWORD(v47))
            {
              break;
            }

            v83 += ~v84 + HIWORD(v47);
            v84 = v47;
            if (!v82)
            {
              goto LABEL_115;
            }
          }

          sub_18194A218(v107, "Multiple uses for byte %u of page %u", HIWORD(v47), a2);
          v34 = v107;
          LOWORD(v47) = v84;
          if (*v42)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v83 = 0;
        }

LABEL_115:
        if (v83 + v22 + (~v47 | 0xFFFF0000) != *(v95 + 7))
        {
          sub_18194A218(v34, "Fragmentation of %u bytes reported as %u on page %u", v83 + v22 + (~v47 | 0xFFFF0000), *(v95 + 7), a2);
        }
      }

LABEL_30:
      v30 = *(v26 + 112);
      if ((*(v30 + 52) & 0x20) != 0)
      {
        v31 = *(v30 + 40);
        --*(v31 + 152);
        *(v30 + 32) = *(v31 + 168);
        *(v31 + 168) = v30;
        (*(**(v31 + 72) + 144))(*(v31 + 72), *(v31 + 200) * (*(v30 + 48) - 1), *(v30 + 8));
      }

      else
      {
        sub_181932B68(v30);
      }

      goto LABEL_33;
    }

    v99 = v43;
    v49 = v96 - 1;
    v91 = v46;
    v50 = (v105 + v46 + 2 * (v96 - 1));
    v100 = v47 + 1;
    v51 = v22 - 4;
    v94 = v22 - 5;
    v101 = v47;
    v102 = 1;
    v103 = v22 - 4;
    while (1)
    {
      if (!*(v34 + 28))
      {
LABEL_77:
        *v41 = v110[0];
        *(v34 + 48) = 0;
        if (v102)
        {
          v48 = v96;
          v46 = v91;
          goto LABEL_80;
        }

        *v26 = v92;
        goto LABEL_30;
      }

      v108[0] = 0;
      v108[1] = 0;
      v109 = 0;
      *(v34 + 64) = v49;
      v104 = v50 - 1;
      v52 = __rev16(*v50);
      v53 = v52 <= v47 || v52 > v51;
      if (!v53)
      {
        break;
      }

      sub_18194A218(v107, "Offset %u out of range %u..%u", v52, v100, v51);
      v51 = v103;
      v50 = v104;
      v41 = v106;
      v34 = v107;
      v102 = 0;
LABEL_45:
      v53 = v49-- <= 0;
      if (v53)
      {
        goto LABEL_77;
      }
    }

    (*(v26 + 128))(v26, v105 + v52, v108);
    if (v52 + HIWORD(v109) > v22)
    {
      sub_18194A218(v107, "Extends off end of page");
      v34 = v107;
      v47 = v101;
      v102 = 0;
      v41 = v106;
LABEL_76:
      v51 = v103;
      v50 = v104;
      goto LABEL_45;
    }

    v34 = v107;
    v98 = (v105 + v52);
    if (!*(v26 + 1))
    {
      v41 = v106;
      goto LABEL_59;
    }

    v54 = v108[0];
    if (v99)
    {
      if (v108[0] <= v110[0])
      {
LABEL_57:
        v41 = v106;
        v99 = 0;
        v110[0] = v54;
LABEL_59:
        v55 = v109;
        v56 = WORD2(v109);
        if (v109 > WORD2(v109))
        {
          v57 = bswap32(*(v98 + HIWORD(v109) - 4));
          if (v21[33])
          {
            v93 = v57;
            sub_18194A368(v107, v57, 3, a2);
            v57 = v93;
          }

          sub_181949ECC(v107, 0, v57, (v94 + v55 - v56) / v103);
          v41 = v106;
          v34 = v107;
        }

        v47 = v101;
        if (*(v26 + 8))
        {
          v58 = (v52 + HIWORD(v109) - 1) | (v52 << 16);
          v59 = *v42 + 1;
          *v42 = v59;
          v42[v59] = v58;
          v22 = v97;
          if (v59 >= 2)
          {
            do
            {
              v60 = v42[v59 >> 1];
              v61 = v42[v59];
              if (v60 <= v61)
              {
                break;
              }

              v62 = v59;
              v42[v59 >> 1] = v61;
              v42[v59] = v60;
              v59 >>= 1;
            }

            while (v62 > 3);
          }
        }

        else
        {
          v63 = bswap32(*v98);
          v22 = v97;
          if (v21[33])
          {
            sub_18194A368(v107, v63, 5, a2);
            v34 = v107;
          }

          v64 = sub_18194A428(v34, v63, v110, v110[0]);
          if (v64 == v25)
          {
            v99 = 0;
            v34 = v107;
          }

          else
          {
            v65 = v64;
            sub_18194A218(v107, "Child page depth differs");
            v34 = v107;
            v99 = 0;
            v25 = v65;
          }

          v41 = v106;
          v47 = v101;
        }

        goto LABEL_76;
      }
    }

    else if (v108[0] < v110[0])
    {
      goto LABEL_57;
    }

    sub_18194A218(v107, "Rowid %lld out of order", v108[0]);
    v34 = v107;
    v54 = v108[0];
    goto LABEL_57;
  }

  v24 = v23;
  sub_18194A218(v107, "unable to get the page. error code=%d", v23);
  if (v24 != 3082)
  {
    v25 = -1;
LABEL_33:
    a1 = v107;
    goto LABEL_18;
  }

  a1 = v107;
  *(v107 + 36) = 7;
LABEL_17:
  v25 = -1;
LABEL_18:
  *(a1 + 48) = v5;
  *(a1 + 60) = v6;
  return (v25 + 1);
}

void *sub_18194AD14(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      sub_181929C84(*(a1 + 8), v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
  *(a1 + 48) = 0x10000;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a1 + 8);

  return sub_181929C84(v4, a1);
}

uint64_t sub_18194AD7C(uint64_t result, void *a2, void *a3)
{
  do
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = 0;
      sub_18194AD7C(v5, a2, &v6);
      *(v6 + 8) = v4;
    }

    else
    {
      *a2 = v4;
    }

    a2 = (v4 + 8);
    result = *(v4 + 8);
  }

  while (result);
  *a3 = v4;
  return result;
}

uint64_t sub_18194ADE0(uint64_t *a1, int a2)
{
  result = *a1;
  if (result)
  {
    if (a2 < 2)
    {
      *a1 = *(result + 8);
      *(result + 8) = 0;
      *(result + 16) = 0;
    }

    else
    {
      v4 = (a2 - 1);
      result = sub_18194ADE0(a1, v4);
      v5 = *a1;
      if (*a1)
      {
        *(v5 + 16) = result;
        *a1 = *(v5 + 8);
        *(v5 + 8) = sub_18194ADE0(a1, v4);
        return v5;
      }
    }
  }

  return result;
}

uint64_t sub_18194AE60(uint64_t a1, void **a2, char *zFormat, ...)
{
  va_start(va, zFormat);
  v23 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v21 = 0x10000000000;
  v5 = *(a1 + 136);
  v18 = &v22;
  v19 = 512;
  v20 = v5;
  sqlite3_str_vappendf(&v17, zFormat, va);
  if (v18 && (v18[v21] = 0, v20) && (v21 & 0x40000000000) == 0)
  {
    v12 = sub_18192A12C(&v17);
  }

  else
  {
    v12 = v18;
  }

  if (BYTE4(v21) == 7 && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v15 = *(a1 + 344);
    if (v15)
    {
      sub_181910730(v15, "out of memory", v6, v7, v8, v9, v10, v11, va);
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

  if (!v12)
  {
    return 7;
  }

  v13 = sub_18194AFD8(a1, a2, v12, v7, v8, v9, v10, v11);
  sub_181929C84(a1, v12);
  return v13;
}

uint64_t sub_18194AFD8(sqlite3 *a1, void **a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  pStmt = 0;
  result = sub_1818954B4(a1, a3, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, a8);
  if (result)
  {
    return result;
  }

  while (1)
  {
    v11 = sqlite3_step(pStmt);
    if (v11 != 100)
    {
      break;
    }

    v12 = sqlite3_column_text(pStmt, 0);
    if (v12)
    {
      v13 = *v12;
      if (v13 == 73)
      {
        if (v12[1] == 78 && v12[2] == 83)
        {
          goto LABEL_3;
        }
      }

      else if (v13 == 67 && v12[1] == 82 && v12[2] == 69)
      {
LABEL_3:
        v11 = sub_18194AFD8(a1, a2);
        if (v11)
        {
          break;
        }
      }
    }
  }

  if (v11 == 101)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;
  if (v14)
  {
    v16 = sqlite3_errmsg(a1);
    if (!v16)
    {
      v20 = 0;
      goto LABEL_25;
    }

    v17 = v16;
    v18 = strlen(v16);
    v19 = v18;
    if (a1)
    {
      v20 = sub_181929E8C(a1, v18 + 1, 354097263);
      if (!v20)
      {
LABEL_25:
        if (*a2)
        {
          sub_181929C84(a1, *a2);
        }

        *a2 = v20;
        goto LABEL_28;
      }
    }

    else
    {
      v20 = sub_181902484(v18 + 1, 354097263);
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    memcpy(v20, v17, v19 + 1);
    goto LABEL_25;
  }

LABEL_28:
  sqlite3_finalize(pStmt);
  return v15;
}

uint64_t sub_18194B158(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v3 = a1;
      v4 = a2;
      sub_181932DEC(a1);
      a2 = v4;
      a1 = v3;
    }
  }

  if ((*(v2 + 40) & 2) != 0 && *(v2 + 33) != (a2 != 0))
  {
    v5 = 8;
    if (!*(a1 + 17))
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    *(v2 + 33) = a2 != 0;
    *(v2 + 34) = a2 == 2;
    if (!*(a1 + 17))
    {
      return v5;
    }
  }

  v6 = *(a1 + 20) - 1;
  *(a1 + 20) = v6;
  if (!v6)
  {
    sub_181932ECC(a1);
  }

  return v5;
}

uint64_t sub_18194B21C(uint64_t a1)
{
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v1 = a1;
      sub_181932DEC(a1);
      a1 = v1;
    }
  }

  v2 = *(a1 + 8);
  if (!*(v2 + 33))
  {
    v3 = 0;
    if (!*(a1 + 17))
    {
      return v3;
    }

    goto LABEL_11;
  }

  if (*(v2 + 34))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 17))
  {
LABEL_11:
    v4 = *(a1 + 20) - 1;
    *(a1 + 20) = v4;
    if (!v4)
    {
      sub_181932ECC(a1);
    }
  }

  return v3;
}

uint64_t sub_18194B2AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  if (*(a2 + 17))
  {
    ++*(a2 + 20);
    if (!*(a2 + 18))
    {
      sub_181932DEC(a2);
    }
  }

  v20 = 0;
  v4 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = **(**(a1 + 8) + 72);
  if (!v5 || (result = (*(v5 + 80))(), v4 = 0uLL, result == 12) || !result)
  {
    v16 = v4;
    v17 = v4;
    v20 = 0;
    v18 = v4;
    v19 = v4;
    v7 = *(a2 + 8);
    *&v18 = *a2;
    *(&v18 + 1) = a2;
    *(&v16 + 1) = a1;
    DWORD2(v17) = 1;
    v8 = **(a1 + 8);
    v9 = *(*v7 + 178);
    if (*(v8 + 178) != v9)
    {
      *(v8 + 178) = v9;
      v10 = *(v8 + 304);
      if (v10)
      {
        v10(*(v8 + 320), *(v8 + 200), v9);
      }
    }

    sqlite3_backup_step(&v16, 0x7FFFFFFF);
    result = sqlite3_backup_finish(&v16);
    if (result)
    {
      if (!*(**(*(&v16 + 1) + 8) + 16))
      {
        v11 = result;
        sub_181934D80(**(*(&v16 + 1) + 8));
        result = v11;
      }
    }

    else
    {
      *(*(a1 + 8) + 40) &= ~2u;
    }
  }

  if (*(a2 + 17))
  {
    v12 = *(a2 + 20) - 1;
    *(a2 + 20) = v12;
    if (!v12)
    {
      v13 = result;
      sub_181932ECC(a2);
      result = v13;
    }
  }

  if (*(a1 + 17))
  {
    v14 = *(a1 + 20) - 1;
    *(a1 + 20) = v14;
    if (!v14)
    {
      v15 = result;
      sub_181932ECC(a1);
      return v15;
    }
  }

  return result;
}

uint64_t sub_18194B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t *), void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = 0;
  v12 = *(a2 + 64);
  v86 = 0;
  v13 = *(a2 + 72);
  v14 = *(a1 + 592);
  if (!v14)
  {
LABEL_4:
    v15 = *a2;
    if (*a2)
    {
      v17 = strlen(*a2);
      v18 = v17;
      if (a1)
      {
        v19 = sub_181929E8C(a1, v17 + 1, 354097263);
        if (v19)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19 = sub_181902484(v17 + 1, 354097263);
        if (v19)
        {
LABEL_7:
          memcpy(v19, v15, v18 + 1);
          v20 = sub_181902484(48, 0x1020040836CBACDLL);
          if (!v20)
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
              v81 = *(a1 + 344);
              if (v81)
              {
                sub_181910730(v81, "out of memory", v21, v22, v23, v24, v25, v26, v85);
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

            sub_181929C84(a1, v19);
            return 7;
          }

          v27 = v20;
          *v20 = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *v20 = a1;
          *(v20 + 8) = a3;
          *(v20 + 30) = 1;
          v28 = *(a2 + 96);
          v29 = *(a1 + 32);
          if (v28)
          {
            v30 = (v29 + 24);
            v31 = 0xFFFFFFFF00000000;
            do
            {
              v32 = *v30;
              v30 += 4;
              v31 += 0x100000000;
            }

            while (v32 != v28);
            v33 = v31 >> 32;
          }

          else
          {
            v33 = -32768;
          }

          *(*(a2 + 72) + 8) = *(v29 + 32 * v33);
          v87[0] = v20;
          v87[1] = a2;
          v88 = *(a1 + 592);
          LODWORD(v89) = 0;
          *(a1 + 592) = v87;
          ++*(a2 + 44);
          v35 = a4(a1, *(a3 + 24), v12, v13, v20 + 16, &v86);
          if (*(a1 + 824) || (v43 = *(a2 + 44) - 1, (*(a2 + 44) = v43) == 0))
          {
            v42 = v35;
            sub_18194E094(a1, a2);
            v35 = v42;
          }

          *(a1 + 592) = v88;
          if (v35)
          {
            if (v35 == 7 && !*(a1 + 103) && !*(a1 + 104))
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
                v83 = v35;
                sub_181910730(*(a1 + 344), "out of memory", v36, v37, v38, v39, v40, v41, v85);
                v35 = v83;
                for (j = *(a1 + 344); ; ++*(j + 52))
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

            v44 = v35;
            if (v86)
            {
              *a5 = sub_1818A8BAC(a1, "%s", v36, v37, v38, v39, v40, v41, v86);
              v45 = v86;
              if (v86)
              {
                v46 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48 -= xmmword_1ED452EC0(v45);
                  --qword_1ED456A90;
                  off_1ED452EB0(v45);
                  v45 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_104;
                  }

                  v46 = &xmmword_1ED452F28;
                }

                (*v46)(v45);
              }
            }

            else
            {
              *a5 = sub_1818A8BAC(a1, "vtable constructor failed: %s", v36, v37, v38, v39, v40, v41, v19);
            }

LABEL_104:
            sub_181929C84(a1, v27);
            goto LABEL_105;
          }

          v47 = *(v27 + 16);
          if (!v47)
          {
            goto LABEL_102;
          }

          *v47 = 0;
          v47[1] = 0;
          v47[2] = 0;
          **(v27 + 16) = *a3;
          ++*(a3 + 16);
          *(v27 + 24) = 1;
          if (!v89)
          {
            *a5 = sub_1818A8BAC(a1, "vtable constructor did not declare schema: %s", v36, v37, v38, v39, v40, v41, v19);
            sub_18193A0A4(v27);
            v44 = 1;
            goto LABEL_105;
          }

          *(v27 + 40) = *(a2 + 80);
          *(a2 + 80) = v27;
          v48 = *(a2 + 54);
          if (v48 < 1)
          {
LABEL_102:
            v44 = 0;
LABEL_105:
            sub_181929C84(a1, v19);
            return v44;
          }

          v49 = 0;
          v50 = 0;
          v51 = *(a2 + 8);
LABEL_40:
          v52 = v51 + 16 * v49;
          if ((*(v52 + 14) & 4) != 0)
          {
            v54 = (*v52 + strlen(*v52) + 1);
          }

          else
          {
            v53 = *(v52 + 8);
            v54 = &byte_181A2878D;
            if (v53 >= 0x10)
            {
              v54 = off_1EA831620[(v53 >> 4) - 1];
              if (!v54)
              {
LABEL_38:
                *(a2 + 48) |= v50;
                goto LABEL_39;
              }
            }
          }

          v55 = strlen(v54);
          v56 = v55 & 0x3FFFFFFF;
          if ((v55 & 0x3FFFFFFF) == 0)
          {
            goto LABEL_38;
          }

          v57 = v55 & 0x3FFFFFFF;
          if ((*v54 & 0xDF) == 0x48)
          {
            v58 = v54 + 1;
            if ((v54[1] & 0xDF) == 0x49)
            {
              v58 = v54 + 2;
              if ((v54[2] & 0xDF) == 0x44 && (v58 = v54 + 3, (v54[3] & 0xDF) == 0x44))
              {
                v58 = v54 + 4;
                if ((v54[4] & 0xDF) == 0x45)
                {
                  v58 = v54 + 5;
                  if ((v54[5] & 0xDF) == 0x4E)
                  {
                    goto LABEL_57;
                  }

                  v59 = 110;
                }

                else
                {
                  v59 = 101;
                }
              }

              else
              {
                v59 = 100;
              }
            }

            else
            {
              v59 = 105;
            }
          }

          else
          {
            v59 = 104;
            v58 = v54;
          }

          if (v59 != byte_181A20298[*v58])
          {
LABEL_59:
            if (v56 == 1)
            {
              goto LABEL_38;
            }

            v63 = v54 + 3;
            v64 = v57 - 1;
            v61 = 1;
            while (1)
            {
              v65 = &v54[v61];
              if ((*(v63 - 2) & 0xDF) != 0x48)
              {
                v66 = 104;
                goto LABEL_74;
              }

              if ((*(v63 - 1) & 0xDF) != 0x49)
              {
                ++v65;
                v66 = 105;
                goto LABEL_74;
              }

              if ((*v63 & 0xDF) != 0x44)
              {
                v65 += 2;
                v66 = 100;
                goto LABEL_74;
              }

              if ((v63[1] & 0xDF) != 0x44)
              {
                break;
              }

              if ((v63[2] & 0xDF) != 0x45)
              {
                v65 += 4;
                v66 = 101;
LABEL_74:
                if (v66 != byte_181A20298[*v65])
                {
                  goto LABEL_61;
                }

                goto LABEL_75;
              }

              v65 = v63 + 3;
              if ((v63[3] & 0xDF) != 0x4E)
              {
                v66 = 110;
                goto LABEL_74;
              }

LABEL_75:
              if (*(v63 - 3) == 32)
              {
                v60 = v63[4];
                if ((v60 | 0x20) == 0x20)
                {
                  v62 = v63 - 2;
LABEL_78:
                  if (v60)
                  {
                    v67 = 7;
                  }

                  else
                  {
                    v67 = 6;
                  }

                  if (v61 + v67 <= v56)
                  {
                    v68 = v67 + v61;
                    v69 = v57 - v68 + 1;
                    if (v69 < 8)
                    {
                      v70 = v61;
                      goto LABEL_96;
                    }

                    if (v69 >= 0x20)
                    {
                      v71 = v69 & 0xFFFFFFFFFFFFFFE0;
                      v72 = &v54[v61 + 16];
                      v73 = v69 & 0xFFFFFFFFFFFFFFE0;
                      do
                      {
                        v74 = *&v72[v67];
                        *(v72 - 1) = *&v72[v67 - 16];
                        *v72 = v74;
                        v72 += 32;
                        v73 -= 32;
                      }

                      while (v73);
                      if (v69 != v71)
                      {
                        if ((v69 & 0x18) == 0)
                        {
                          v68 += v71;
                          v70 = v71 + v61;
                          goto LABEL_96;
                        }

                        goto LABEL_90;
                      }
                    }

                    else
                    {
                      v71 = 0;
LABEL_90:
                      v70 = (v69 & 0xFFFFFFFFFFFFFFF8) + v61;
                      v68 += v69 & 0xFFFFFFFFFFFFFFF8;
                      v75 = v71 - (v69 & 0xFFFFFFFFFFFFFFF8);
                      v76 = &v54[v71 + v61];
                      do
                      {
                        *v76 = *&v76[v67];
                        v76 += 8;
                        v75 += 8;
                      }

                      while (v75);
                      if (v69 != (v69 & 0xFFFFFFFFFFFFFFF8))
                      {
LABEL_96:
                        v77 = &v54[v70];
                        v78 = v70 + v67;
                        v79 = &v54[v68];
                        do
                        {
                          v80 = *v79++;
                          *v77++ = v80;
                          ++v78;
                        }

                        while (v78 <= v57);
                      }
                    }
                  }

                  if (v61 && !*v62)
                  {
                    *(v62 - 1) = 0;
                  }

                  v51 = *(a2 + 8);
                  *(v51 + 16 * v49 + 14) |= 2u;
                  *(a2 + 48) |= 2u;
                  LOWORD(v48) = *(a2 + 54);
                  v50 = 1024;
LABEL_39:
                  if (++v49 >= v48)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_40;
                }
              }

LABEL_61:
              ++v61;
              ++v63;
              if (!--v64)
              {
                goto LABEL_38;
              }
            }

            v65 += 3;
            v66 = 100;
            goto LABEL_74;
          }

LABEL_57:
          v60 = v54[6];
          if ((v60 | 0x20) == 0x20)
          {
            LODWORD(v61) = 0;
            v62 = v54;
            goto LABEL_78;
          }

          goto LABEL_59;
        }
      }
    }

    return 7;
  }

  while (*(v14 + 8) != a2)
  {
    v14 = *(v14 + 16);
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  *a5 = sub_1818A8BAC(a1, "vtable constructor called recursively: %s", a3, a4, a5, a6, a7, a8, *a2);
  return 6;
}

uint64_t sub_18194BC5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v7 = a3;
  v63 = 0;
  while (1)
  {
    v8 = *a2;
    if (v8 != 173 && v8 != 181)
    {
      break;
    }

    a2 = *(a2 + 2);
  }

  if (v8 == 176)
  {
    v8 = a2[2];
  }

  if (v8 == 174)
  {
    a2 = *(a2 + 2);
    v8 = *a2;
    if (v8 != 156 && v8 != 154 || (a2[5] & 8) == 0 && (v19 = *(a2 + 1), *v19 == 48) && (v19[1] & 0xDF) == 0x58)
    {
      v20 = 0;
      v21 = v63;
      (sub_18194BC5C)();
      goto LABEL_123;
    }

    v22 = "-";
    v23 = -1;
LABEL_43:
    v20 = 0;
    v21 = 0;
    if (v8 <= 154)
    {
      if (v8 == 118)
      {
        goto LABEL_51;
      }

      if (v8 != 122)
      {
        if (v8 != 154)
        {
          goto LABEL_123;
        }

        goto LABEL_51;
      }

      if (a1)
      {
        v46 = a1;
        v21 = sub_181929E8C(a1, 0x40uLL, 0x10F2040695A4BFELL);
        if (v21)
        {
LABEL_81:
          v20 = 0;
          *(v21 + 32) = 0u;
          *(v21 + 48) = 0u;
          *v21 = 0u;
          *(v21 + 16) = 0u;
          *(v21 + 24) = v46;
          *(v21 + 20) = 1;
          goto LABEL_123;
        }
      }

      else
      {
        v46 = 0;
        v21 = sub_181902484(64, 0x10F2040695A4BFELL);
        if (v21)
        {
          goto LABEL_81;
        }
      }

      v63 = 0;
      v25 = v46;
      if (!*(v46 + 103))
      {
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    if (v8 != 155)
    {
      if (v8 == 171)
      {
        v47 = a2;
        if (a1)
        {
          v48 = a1;
          v21 = sub_181929E8C(a1, 0x40uLL, 0x10F2040695A4BFELL);
          if (!v21)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v48 = 0;
          v21 = sub_181902484(64, 0x10F2040695A4BFELL);
          if (!v21)
          {
            goto LABEL_122;
          }
        }

        *(v21 + 32) = 0u;
        *(v21 + 48) = 0u;
        *v21 = 0u;
        *(v21 + 16) = 0u;
        *(v21 + 24) = v48;
        *(v21 + 20) = 4;
        *v21 = *(*(v47 + 1) + 4) == 0;
        sub_1818D83C0(v21, a4, v7);
        goto LABEL_122;
      }

      if (v8 == 156)
      {
LABEL_51:
        v24 = a2;
        if (a1)
        {
          v25 = a1;
          v21 = sub_181929E8C(a1, 0x40uLL, 0x10F2040695A4BFELL);
          if (v21)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v25 = 0;
          v21 = sub_181902484(64, 0x10F2040695A4BFELL);
          if (v21)
          {
LABEL_53:
            *(v21 + 32) = 0u;
            *(v21 + 48) = 0u;
            *v21 = 0u;
            *(v21 + 16) = 0u;
            *(v21 + 20) = 1;
            *(v21 + 24) = v25;
            v63 = v21;
            if ((v24[5] & 8) != 0)
            {
              *v21 = v23 * *(v24 + 2);
            }

            else
            {
              v62 = 0;
              if (v8 != 156 || sub_18191A360(*(v24 + 1), &v62))
              {
                v32 = v25;
                v33 = sub_1818A8BAC(v25, "%s%s", v26, v27, v28, v29, v30, v31, v22);
                if (v33)
                {
                  sub_1818900D0(v21, v33, -1, 1u, sub_181916CE4);
                  if (a4 != 65)
                  {
LABEL_58:
                    v34 = a4;
                    v35 = v21;
LABEL_59:
                    sub_1818D83C0(v35, v34, 1);
                    goto LABEL_91;
                  }

LABEL_87:
                  if (v8 == 154)
                  {
                    sub_1818E6334(*(v21 + 8), v21, *(v21 + 16), 1);
                    *(v21 + 20) = 8;
                  }

                  else if (v8 == 156)
                  {
                    v35 = v21;
                    v34 = 67;
                    goto LABEL_59;
                  }

LABEL_91:
                  v49 = *(v21 + 20);
                  if ((v49 & 0x2C) != 0)
                  {
                    v49 &= ~2u;
                    *(v21 + 20) = v49;
                  }

                  if (v7 != 1)
                  {
                    if ((v49 & 2) == 0)
                    {
                      v20 = 0;
                      *(v21 + 22) = v7;
                      goto LABEL_123;
                    }

                    if (*(v21 + 22) != v7)
                    {
                      v20 = sub_1818F1820(v21, v7);
                      goto LABEL_123;
                    }
                  }

LABEL_122:
                  v20 = 0;
                  goto LABEL_123;
                }

LABEL_100:
                v25 = v32;
                if (!*(v32 + 103))
                {
LABEL_104:
                  if (!*(v25 + 104))
                  {
                    *(v25 + 103) = 1;
                    if (*(v25 + 220) >= 1)
                    {
                      *(v25 + 424) = 1;
                    }

                    ++*(v25 + 432);
                    *(v25 + 436) = 0;
                    v50 = *(v25 + 344);
                    if (v50)
                    {
                      sub_181910730(v50, "out of memory", v26, v27, v28, v29, v30, v31, v61);
                      for (i = *(v25 + 344); ; ++*(i + 52))
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

LABEL_105:
                if (v21)
                {
                  if ((*(v21 + 20) & 0x9000) != 0 || *(v21 + 32))
                  {
                    sub_18193CA00(v21);
                  }

                  sub_181929C84(*(v21 + 24), v21);
                }

                return 7;
              }

              v53 = v62 * v23;
              if ((*(v21 + 20) & 0x9000) != 0)
              {
                sub_18193D288(v21, v53);
                if (a4 != 65)
                {
                  goto LABEL_58;
                }

                goto LABEL_87;
              }

              *v21 = v53;
            }

            *(v21 + 20) = 4;
            if (a4 != 65)
            {
              goto LABEL_58;
            }

            goto LABEL_87;
          }
        }

        v63 = 0;
        if (!*(v25 + 103))
        {
          goto LABEL_104;
        }

        goto LABEL_105;
      }

LABEL_123:
      *a5 = v21;
      return v20;
    }

    v36 = a2;
    if (a1)
    {
      v32 = a1;
      v21 = sub_181929E8C(a1, 0x40uLL, 0x10F2040695A4BFELL);
      if (v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v32 = 0;
      v21 = sub_181902484(64, 0x10F2040695A4BFELL);
      if (v21)
      {
LABEL_68:
        *(v21 + 32) = 0u;
        *(v21 + 48) = 0u;
        *v21 = 0u;
        *(v21 + 16) = 0u;
        *(v21 + 20) = 1;
        *(v21 + 24) = v32;
        v37 = *(v36 + 1);
        v38 = strlen((v37 + 2)) & 0x3FFFFFFF;
        v39 = sub_181929E8C(v32, ((v38 - 1) / 2 + 1), 0x100004077774924);
        if (!v39)
        {
LABEL_121:
          sub_1818900D0(v21, v39, ((v38 - 1) / 2), 0, sub_181916CE4);
          goto LABEL_122;
        }

        if (v38 < 3)
        {
          v45 = 0;
          goto LABEL_120;
        }

        v40 = v38 - 2;
        v41 = 2;
        if (v40 > 2)
        {
          v41 = v38 - 2;
        }

        if (v40 >= 0x3F && (v39 >= v37 + ((v40 - 1) & 0xFFFFFFFFFFFFFFFELL) + 4 || v37 + 2 >= &v39[((v40 - 1) >> 1) + 1]))
        {
          v54 = 0;
          v55 = ((v41 - 1) >> 1) + 1;
          v43 = v55 & 0x7FFFFFFFFFFFFFE0;
          v42 = 2 * (v55 & 0x7FFFFFFFFFFFFFE0);
          v56 = (v37 + 34);
          v57.i64[0] = 0x4040404040404040;
          v57.i64[1] = 0x4040404040404040;
          v58.i64[0] = 0x909090909090909;
          v58.i64[1] = 0x909090909090909;
          do
          {
            v59 = v56 - 32;
            v64 = vld2q_s8(v59);
            v65 = vld2q_s8(v56);
            v60 = &v39[v54 & 0x7FFFFFFFFFFFFFE0];
            *v60 = vsliq_n_s8(vaddq_s8(vbicq_s8(v58, vceqzq_s8(vandq_s8(v64.val[1], v57))), v64.val[1]), vaddq_s8(vbicq_s8(v58, vceqzq_s8(vandq_s8(v64.val[0], v57))), v64.val[0]), 4uLL);
            v60[1] = vsliq_n_s8(vaddq_s8(vbicq_s8(v58, vceqzq_s8(vandq_s8(v65.val[1], v57))), v65.val[1]), vaddq_s8(vbicq_s8(v58, vceqzq_s8(vandq_s8(v65.val[0], v57))), v65.val[0]), 4uLL);
            v54 += 32;
            v56 += 64;
          }

          while (v43 != v54);
          if (v55 == v43)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v42 = 0;
        }

        v43 = ((v42 + 2) >> 1) - 1;
        v44 = &v39[v42 >> 1];
        do
        {
          *v44++ = ((((2 * *(v37 + v42 + 3)) >> 7) & 0xF9) + *(v37 + v42 + 3)) & 0xF | (16 * ((((2 * *(v37 + v42 + 2)) >> 7) & 0xF9) + *(v37 + v42 + 2)));
          v42 += 2;
          LODWORD(v43) = v43 + 1;
        }

        while (v42 < v40);
LABEL_78:
        v45 = v43 & 0x7FFFFFFF;
LABEL_120:
        v39[v45] = 0;
        goto LABEL_121;
      }
    }

    v63 = 0;
    goto LABEL_100;
  }

  if (v8 != 36)
  {
    v22 = &byte_181A2878D;
    v23 = 1;
    goto LABEL_43;
  }

  v9 = *(a2 + 1);
  v10 = *v9;
  if (!*v9)
  {
    LOBYTE(v16) = 67;
    goto LABEL_61;
  }

  v11 = 0;
  v12 = v9 + 1;
  v13 = 67;
  while (1)
  {
    v11 = byte_181A20298[v10] | (v11 << 8);
    v16 = 66;
    if (v11 > 1668050785)
    {
      if (v11 == 1668050786 || v11 == 1952807028)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    if (v11 == 1651273570)
    {
      break;
    }

    if (v11 != 1667785074)
    {
      goto LABEL_23;
    }

LABEL_16:
    v15 = *v12++;
    v10 = v15;
    v13 = v16;
    if (!v15)
    {
      goto LABEL_61;
    }
  }

  v16 = 65;
  if (v13 == 67 || v13 == 69)
  {
    goto LABEL_16;
  }

LABEL_23:
  v18 = v11 == 1718382433 || v11 == 1919246700 || v11 == 1685026146;
  if (v18 && v13 == 67)
  {
    v16 = 69;
    goto LABEL_16;
  }

  v16 = v13;
  if ((v11 & 0xFFFFFF) != 0x696E74)
  {
    goto LABEL_16;
  }

  LOBYTE(v16) = 68;
LABEL_61:
  v20 = sub_18194BC5C(a1, *(a2 + 2), a3, v16, a5);
  if (*a5)
  {
    sub_18193DA74(*a5, v16, v7);
    sub_1818D83C0(*a5, a4, v7);
  }

  return v20;
}

uint64_t sub_18194C50C(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 1;
    v7 = 67;
    while (1)
    {
      while (1)
      {
        v5 = byte_181A20298[v2] | (v5 << 8);
        if (v5 <= 1668050785)
        {
          break;
        }

        if (v5 != 1668050786 && v5 != 1952807028)
        {
LABEL_18:
          v9 = v5 == 1718382433 || v5 == 1919246700 || v5 == 1685026146;
          if (v9 && v7 == 67)
          {
            v7 = 69;
          }

          else if ((v5 & 0xFFFFFF) == 0x696E74)
          {
            if (a2)
            {
              v10 = 0;
              LOBYTE(v7) = 68;
              goto LABEL_44;
            }

            LOBYTE(v7) = 68;
            return v7;
          }

          goto LABEL_4;
        }

        v7 = 66;
LABEL_4:
        v2 = *v6++;
        if (!v2)
        {
          goto LABEL_31;
        }
      }

      if (v5 != 1651273570)
      {
        if (v5 != 1667785074)
        {
          goto LABEL_18;
        }

        v7 = 66;
        v4 = v6;
        goto LABEL_4;
      }

      if (v7 != 69 && v7 != 67)
      {
        goto LABEL_18;
      }

      v2 = *v6;
      if (v2 == 40)
      {
        v4 = v6;
      }

      v7 = 65;
      ++v6;
      if (!v2)
      {
LABEL_31:
        if (!a2)
        {
          return v7;
        }

        v14 = 0;
        if (v7 > 66)
        {
          v10 = 0;
        }

        else if (v4)
        {
          v10 = *v4;
          if (*v4)
          {
            while (v10 - 58 < 0xFFFFFFFFFFFFFFF6)
            {
              v11 = *++v4;
              v10 = v11;
              if (!v11)
              {
                goto LABEL_44;
              }
            }

            v12 = a2;
            sub_181949B34(v4, &v14);
            a2 = v12;
            v10 = v14 / 4;
          }
        }

        else
        {
          v10 = 4;
        }

LABEL_44:
        if (v10 >= 254)
        {
          LOBYTE(v10) = -2;
        }

        *(a2 + 10) = v10 + 1;
        return v7;
      }
    }
  }

  if (a2)
  {
    v10 = 0;
    LOBYTE(v7) = 67;
    goto LABEL_44;
  }

  LOBYTE(v7) = 67;
  return v7;
}

unint64_t sub_18194C700(uint64_t a1, unint64_t a2, int a3)
{
  result = sub_181929E8C(a1, (a3 / 2 + 1), 0x100004077774924);
  if (result)
  {
    if (a3 < 2)
    {
      v16 = 0;
      goto LABEL_15;
    }

    v6 = (a3 - 1);
    v7 = 2;
    if (v6 > 2)
    {
      v7 = (a3 - 1);
    }

    if (a3 < 0x40)
    {
      goto LABEL_10;
    }

    v8 = 2;
    if (v6 > 2)
    {
      v8 = (a3 - 1);
    }

    v9 = v8 - 1;
    if (result >= a2 + (v9 & 0xFFFFFFFFFFFFFFFELL) + 2 || result + (v9 >> 1) + 1 <= a2)
    {
      v17 = ((v7 - 1) >> 1) + 1;
      v13 = v17 & 0x7FFFFFFFFFFFFFE0;
      v10 = 2 * (v17 & 0x7FFFFFFFFFFFFFE0);
      v18 = (result + 16);
      v19 = (a2 + 32);
      v20.i64[0] = 0x4040404040404040;
      v20.i64[1] = 0x4040404040404040;
      v21.i64[0] = 0x909090909090909;
      v21.i64[1] = 0x909090909090909;
      v22 = v17 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v23 = v19 - 32;
        v24 = vld2q_s8(v23);
        v25 = vld2q_s8(v19);
        v18[-1] = vsliq_n_s8(vaddq_s8(vbicq_s8(v21, vceqzq_s8(vandq_s8(v24.val[1], v20))), v24.val[1]), vaddq_s8(vbicq_s8(v21, vceqzq_s8(vandq_s8(v24.val[0], v20))), v24.val[0]), 4uLL);
        *v18 = vsliq_n_s8(vaddq_s8(vbicq_s8(v21, vceqzq_s8(vandq_s8(v25.val[1], v20))), v25.val[1]), vaddq_s8(vbicq_s8(v21, vceqzq_s8(vandq_s8(v25.val[0], v20))), v25.val[0]), 4uLL);
        v18 += 2;
        v19 += 64;
        v22 -= 32;
      }

      while (v22);
      if (v17 == v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v11 = (v10 + a2 + 1);
    v12 = (result + (v10 >> 1));
    v13 = ((v10 + 2) >> 1) - 1;
    do
    {
      v14 = (((2 * *(v11 - 1)) >> 7) & 0xFFFFFFF9) + *(v11 - 1);
      v15 = *v11;
      v11 += 2;
      *v12++ = ((((2 * v15) >> 7) & 0xF9) + v15) & 0xF | (16 * v14);
      v10 += 2;
      LODWORD(v13) = v13 + 1;
    }

    while (v10 < v6);
LABEL_13:
    v16 = v13 & 0x7FFFFFFF;
LABEL_15:
    *(result + v16) = 0;
  }

  return result;
}

uint64_t sub_18194C8AC(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v8 = a4;
  v9 = a3;
  LODWORD(v12) = *(a1 + 148);
  while (1)
  {
    v15 = *(a1 + 24);
    v16 = 2 * v12;
    if (!v12)
    {
      v16 = 25;
    }

    v17 = *v15;
    if (v16 > *(*v15 + 156))
    {
      break;
    }

    v18 = *(a1 + 136);
    v19 = 5 * v16;
    a3 = 8 * v19;
    if (!v18)
    {
      v18 = sub_181929E8C(v17, 8 * v19, 0x10B204047B31FBCLL);
      if (!v18)
      {
        return 1;
      }

      goto LABEL_17;
    }

    if (*(v17 + 512) <= v18)
    {
      goto LABEL_16;
    }

    if (*(v17 + 496) <= v18)
    {
      if (a3 >= 0x81)
      {
        goto LABEL_16;
      }
    }

    else if (*(v17 + 504) > v18 || a3 > *(v17 + 438))
    {
LABEL_16:
      v18 = sub_181929F38(v17, *(a1 + 136), a3, 0x10B204047B31FBCLL);
      if (!v18)
      {
        return 1;
      }

LABEL_17:
      v17 = *v15;
      if (!*v15)
      {
        goto LABEL_2;
      }
    }

    if (*(v17 + 520) > v18)
    {
      if (*(v17 + 496) <= v18)
      {
        v13 = 128;
        goto LABEL_3;
      }

      if (*(v17 + 504) <= v18)
      {
        v13 = *(v17 + 438);
        goto LABEL_3;
      }
    }

LABEL_2:
    v13 = xmmword_1ED452EC0(v18);
LABEL_3:
    v15[16] = v13;
    v12 = v13 / 0x28uLL;
    *(a1 + 148) = v12;
    *(a1 + 136) = v18;
    v14 = *(a1 + 144);
    if (v14 < v12)
    {
      *(a1 + 144) = v14 + 1;
      v20 = v18 + 40 * v14;
      *v20 = a2;
      *(v20 + 2) = 0;
      *(v20 + 4) = v9;
      *(v20 + 8) = v8;
      *(v20 + 12) = v26;
      *(v20 + 1) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 16) = 0;
      return v14;
    }
  }

  if (*(v17 + 103))
  {
    return 1;
  }

  v14 = 1;
  if (*(v17 + 104))
  {
    return v14;
  }

  *(v17 + 103) = 1;
  if (*(v17 + 220) >= 1)
  {
    *(v17 + 424) = 1;
  }

  ++*(v17 + 432);
  *(v17 + 436) = 0;
  if (!*(v17 + 344))
  {
    return 1;
  }

  v22 = v17;
  sub_181910730(*(v17 + 344), "out of memory", a3, a4, a5, a6, a7, a8, v25);
  v23 = *(v22 + 344);
  *(v23 + 24) = 7;
  v24 = *(v23 + 216);
  if (!v24)
  {
    return 1;
  }

  do
  {
    ++*(v24 + 52);
    *(v24 + 24) = 7;
    v24 = *(v24 + 216);
    v14 = 1;
  }

  while (v24);
  return v14;
}

uint64_t sub_18194CAFC(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  result = *(a1 + 144);
  if (*(a1 + 148) <= result)
  {
    result = sub_18194C8AC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    *(a1 + 144) = result + 1;
    v11 = *(a1 + 136) + 40 * result;
    *v11 = a2;
    *(v11 + 2) = 0;
    *(v11 + 4) = a3;
    *(v11 + 8) = a4;
    *(v11 + 12) = a5;
    *(v11 + 1) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 0;
  }

  if (!*(*a1 + 103))
  {
    v12 = *(a1 + 136) + 40 * result;
    *(v12 + 1) = -3;
    *(v12 + 16) = v8;
  }

  return result;
}

uint64_t *sub_18194CB90(uint64_t *result, uint64_t a2, char *__s, unsigned int a4)
{
  v5 = (a2 + 1);
  if (*(a2 + 1))
  {
    *(a2 + 1) = 0;
    *(a2 + 16) = 0;
  }

  if ((a4 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v8 = *result;
  if (*(*result + 103))
  {
LABEL_8:
    if (a4 != -11)
    {

      return sub_1818A3B68(v8, a4, __s);
    }
  }

  else
  {
    v12 = result[17];
    v13 = -858993459 * ((a2 - v12) >> 3);
    if (v13 < 0)
    {
      v13 = *(result + 36) - 1;
    }

    v14 = v12 + 40 * v13;
    v15 = (v14 + 1);
    if (*(v14 + 1))
    {
      while (1)
      {
        *(v14 + 1) = 0;
        v5 = (v14 + 1);
        *(v14 + 16) = 0;
        if ((a4 & 0x80000000) == 0)
        {
          break;
        }

        v8 = *result;
        if (*(*result + 103))
        {
          goto LABEL_8;
        }

        v16 = result[17];
        v17 = -858993459 * ((v14 - v16) >> 3);
        if (v17 < 0)
        {
          v17 = *(result + 36) - 1;
        }

        v14 = v16 + 40 * v17;
        if (!*(v14 + 1))
        {
          v15 = (v14 + 1);
          goto LABEL_29;
        }
      }

LABEL_4:
      if (a4)
      {
        if (__s)
        {
          v6 = __s;
          v7 = a4;
          goto LABEL_14;
        }
      }

      else if (__s)
      {
        v6 = __s;
        v9 = result;
        v10 = strlen(__s);
        result = v9;
        v7 = v10 & 0x3FFFFFFF;
LABEL_14:
        result = sub_181929E8C(*result, v7 + 1, 1565185748);
        v11 = result;
        if (result)
        {
          result = memcpy(result, v6, v7);
          *(v11 + v7) = 0;
        }

        goto LABEL_17;
      }

      v11 = 0;
LABEL_17:
      *(a2 + 16) = v11;
      *v5 = -6;
      return result;
    }

LABEL_29:
    if (a4 == -3)
    {
      *(v14 + 16) = __s;
      *v15 = -3;
    }

    else if (__s)
    {
      *(v14 + 16) = __s;
      *v15 = a4;
      if (a4 == -11)
      {
        ++*(__s + 6);
      }
    }
  }

  return result;
}

void *sub_18194CD5C(void *result, int *a2)
{
  v3 = *a2;
  v4 = result[3];
  v5 = *(v4 + 80);
  *(result + 134) = *(result + 134) & 0xFF3F | 0x40;
  v6 = result[17] + 40 * *(result + 36);
LABEL_2:
  while (2)
  {
    for (i = (v6 - 32); ; i -= 10)
    {
      v8 = *(i - 8);
      if (v8 > 0x40)
      {
        continue;
      }

      if (*(i - 8) > 5u)
      {
        break;
      }

      if (v8 - 3 < 3)
      {
        v9 = *(result + 134) & 0xFF3F;
      }

      else
      {
        if (v8 >= 2)
        {
          if (v8 != 2)
          {
LABEL_17:
            v10 = *i;
            if (*i < 0)
            {
LABEL_22:
              *i = *(v5 + 4 * ~v10);
              v6 = (i - 2);
              goto LABEL_2;
            }

            goto LABEL_25;
          }

          if (*i)
          {
            *(result + 134) &= ~0x40u;
          }
        }

        v9 = *(result + 134);
      }

      *(result + 134) = v9 | 0x80;
    }

    if (v8 == 6)
    {
      if (*(i - 11) > v3)
      {
        v3 = *(i - 11);
      }

      v10 = *i;
      if (*i < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    if (v8 == 7)
    {
      if (*i > v3)
      {
        v3 = *i;
      }

LABEL_25:
      v6 = (i - 2);
      continue;
    }

    break;
  }

  if (v8 != 8)
  {
    goto LABEL_17;
  }

  if (v5)
  {
    result = sub_181939EC8(*result, *(v4 + 80));
    *(v4 + 80) = 0;
  }

  *(v4 + 72) = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_18194CE8C(unsigned __int8 *a1, unsigned int a2, signed int a3, char *a4)
{
  v4 = *a1;
  if (v4 == 1)
  {
    return 4;
  }

  v15 = 0;
  if (v4 != 4)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    *a1 = 1;
    if (off_1ED453038)
    {
      v9 = a1;
      v10 = off_1ED453038(410);
      a1 = v9;
      if (v10)
      {
        return 10;
      }
    }

    v11 = a1;
    v5 = sub_1818DC828(a1, *(a1 + 3), *(a1 + 9), 0, &v15);
    if (v5)
    {
      return v5;
    }

    a1 = v11;
    v13 = *(v11 + 3);
    if (v13)
    {
      v14 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_17:
        (*v14)(v13);
        a1 = v11;
        goto LABEL_18;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
      --qword_1ED456A90;
      off_1ED452EB0(v13);
      v13 = xmmword_1ED456AF0;
      a1 = v11;
      if (xmmword_1ED456AF0)
      {
        v14 = &xmmword_1ED452F28;
        goto LABEL_17;
      }
    }

LABEL_18:
    *(a1 + 3) = 0;
    if (v15)
    {
      *(a1 + 1) = v15;
      a4 = v8;
      a3 = v7;
      a2 = v6;
    }

    else
    {
      a4 = v8;
      a3 = v7;
      a2 = v6;
      if (!*(a1 + 1))
      {
        goto LABEL_23;
      }
    }

    if (!*a1)
    {
      *a1 = 2;
    }

    goto LABEL_23;
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    return v5;
  }

LABEL_23:

  return sub_1818EEE54(a1, a2, a3, a4, 0);
}

uint64_t sub_18194D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*(*a1 + 197))
  {
    return 0;
  }

  v11 = *(v8 + 44);
  v12 = *(*(v8 + 32) + 24);
  *(v8 + 100) = *(v12 + 113);
  if ((*(v12 + 114) & 1) == 0)
  {
    result = sub_18189F330(v8, 0, (a1 + 8), 0, a5, a6, a7, a8);
    if (result)
    {
      goto LABEL_10;
    }
  }

  v13 = *(v8 + 40);
  if (v13 >= 2)
  {
    v14 = 32 * v13 - 8;
    while (1)
    {
      if ((*(*(*(v8 + 32) + v14) + 114) & 1) == 0)
      {
        result = sub_18189F330(v8, (v13 - 1), (a1 + 8), 0, a5, a6, a7, a8);
        if (result)
        {
          break;
        }
      }

      --v13;
      v14 -= 32;
      if ((v13 + 1) <= 2)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    *(a1 + 24) = result;
    ++*(a1 + 52);
    return result;
  }

LABEL_11:
  if ((v11 & 1) == 0)
  {
    *(v8 + 44) &= ~1u;
  }

  if (!*(v8 + 111))
  {
    return 0;
  }

  result = 0;
  *(v8 + 44) |= 0x10u;
  return result;
}

uint64_t sub_18194D168(uint64_t a1, char *a2)
{
  v2 = 0;
  v3 = 73;
  do
  {
LABEL_2:
    v4 = (v3 + v2) / 2;
    v5 = &(&off_1E6A270B0)[3 * v4];
    v6 = *v5;
    if (*v5)
    {
      for (i = a2 + 7; ; ++i)
      {
        if (*i == *v6)
        {
          if (!*i)
          {
            if ((*(v5 + 9) & 0x30) == 0)
            {
              return 0;
            }

            return sub_18194D228(a1, a2, &unk_1EEF90028, v5, 0);
          }
        }

        else
        {
          v8 = byte_181A20298[*i] - byte_181A20298[*v6];
          if (v8)
          {
            if (v8 >= 0)
            {
              v2 = v4 + 1;
            }

            else
            {
              v3 = v4 - 1;
            }

            if (v2 <= v3)
            {
              goto LABEL_2;
            }

            return 0;
          }
        }

        ++v6;
      }
    }

    v2 = v4 + 1;
  }

  while (v4 + 1 <= v3);
  return 0;
}