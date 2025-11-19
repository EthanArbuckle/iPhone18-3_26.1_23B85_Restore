uint64_t sub_10006217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, int a14, unsigned int a15, _DWORD *a16)
{
  v16 = a7;
  v18 = a2;
  v20 = 2 * a2;
  v21 = sub_1000C9F54(v20, a2, a3, a4, a5, a6, a7, a8);
  v26 = v21;
  if (v18 >= 1)
  {
    v27 = v18;
    v28 = a3;
    v29 = v21;
    do
    {
      v30 = *v28++;
      *v29++ = sub_1000BA830(*(a1 + 376), v30);
      --v27;
    }

    while (v27);
  }

  v31 = sub_100059B08(a12, a13, a15, a3 + 4 * a14, v22, v23, v24, v25);
  if (v16 >= 1 && v31)
  {
    v31 = sub_100023194(a8, v16, v26, v18);
  }

  if (v31)
  {
    *a16 = 0;
    sub_1000CA03C(v26, v20);
  }

  else
  {
    v32 = *(a1 + 9324);
    if (v32 < 1)
    {
LABEL_19:
      sub_1000CA03C(v26, v20);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v33 = (*(a1 + 9312) + 28);
      while (*(v33 - 5) != v18 || memcmp(v26, v33, 2 * v18))
      {
        v33 += 274;
        if (!--v32)
        {
          goto LABEL_19;
        }
      }

      v38 = 0;
      v39[0] = v18;
      if (sub_1000385EC(v26, a9, a10, a11, a4, v39, &v38) && v39[0] >= 1)
      {
        v34 = 0;
        do
        {
          *(a3 + 4 * v34) = sub_1000BA7FC(*(a1 + 376), v26[v34]);
          ++v34;
        }

        while (v34 < v39[0]);
      }

      *a16 = v38;
      sub_1000CA03C(v26, v20);
      return v39[0];
    }
  }

  return v18;
}

uint64_t sub_100062394(uint64_t a1)
{
  v2 = *(a1 + 9296);
  if (v2)
  {
    if (*(a1 + 9304) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = *(a1 + 9296);
        v5 = *(v4 + 8 * v3);
        if (v5)
        {
          sub_100022FBC(v5);
          v4 = *(a1 + 9296);
        }

        *(v4 + 8 * v3++) = 0;
      }

      while (v3 < *(a1 + 9304));
      v2 = *(a1 + 9296);
    }

    sub_1000BFEC4(v2);
    *(a1 + 9296) = 0;
    *(a1 + 9304) = 0;
  }

  result = *(a1 + 9288);
  if (a1 + 680 != result && result != 0)
  {
    result = sub_1000BFEC4(result);
    *(a1 + 9288) = 0;
  }

  return result;
}

_DWORD *sub_10006242C(_DWORD *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v3 = result[2218];
    if (v3 >= 1)
    {
      v5 = v3 + 1;
      v6 = &result[2 * v3 + 168];
      v7 = -v3;
      do
      {
        if (*v6 == a2)
        {
          result = j__memmove(v6, v6 + 1, 8 * (v3 + v7));
          LODWORD(v3) = v2[2218] - 1;
          v2[2218] = v3;
        }

        --v5;
        --v6;
        ++v7;
      }

      while (v5 > 1);
    }
  }

  else
  {
    result[2218] = 0;
  }

  return result;
}

void sub_1000624DC(uint64_t a1)
{
  v1 = *(a1 + 588);
  if (v1)
  {
    qsort(*(a1 + 576), v1, 4uLL, sub_1000625A0);
    v3 = *(a1 + 588);
    if (v3 < 2)
    {
      v9 = 1;
    }

    else
    {
      LODWORD(v4) = 0;
      v5 = *(a1 + 576);
      v6 = (v5 + 4);
      for (i = 1; i < v3; ++i)
      {
        v8 = (v5 + 4 * v4);
        if (*v6 != *v8 || v6[1] != v8[1])
        {
          v4 = v4 + 1;
          *(v5 + 4 * v4) = *v6;
          v3 = *(a1 + 588);
        }

        v6 += 2;
      }

      v9 = v4 + 1;
    }

    *(a1 + 588) = v9;
  }
}

uint64_t sub_1000625A0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3)
  {
    return (v2 - v3);
  }

  v4 = *a1 - *a2;
  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_1000625E4(uint64_t a1, const void *a2, _DWORD *a3)
{
  v6 = *(a1 + 640);
  v7 = sub_100001108(*(a1 + 384));
  result = memcpy(v6, a2, v7);
  *(a1 + 648) = *a3;
  return result;
}

uint64_t sub_100062638(uint64_t result)
{
  v1 = *(result + 9048);
  if (*(result + 8896))
  {
    v2 = *(result + 9360) + *(result + 620);
    if (v2 >= 0)
    {
      v3 = 0;
      v4 = *(result + 592);
      do
      {
        v6 = *(v4 + 8 * (v3 >> 8)) + 24 * v3;
        v7 = *(v6 + 16);
        if (v7 < 0x4000)
        {
          if (v7 < v1)
          {
            v1 = *(v6 + 16);
          }

          for (i = *(v6 + 14); i != 0xFFFF; i = *(v9 + 14))
          {
            v9 = *(v4 + 8 * (i >> 8)) + 24 * i;
            if (*(v9 + 16) < v1)
            {
              v1 = *(v9 + 16);
            }
          }
        }
      }

      while (v3++ != v2);
    }

    goto LABEL_28;
  }

  v10 = *(result + 612);
  if (v10 < 1)
  {
    goto LABEL_28;
  }

  v11 = *(result + 592);
  if (v10 == 1)
  {
    for (j = 0; j != v10; ++j)
    {
LABEL_25:
      if (*(*(v11 + 8 * (j >> 8)) + 24 * j + 16) < v1)
      {
        v1 = *(*(v11 + 8 * (j >> 8)) + 24 * j + 16);
      }
    }

    goto LABEL_28;
  }

  v13 = 0;
  j = v10 & 0x7FFFFFFE;
  v14 = *(result + 9048);
  do
  {
    v15 = *(v11 + 8 * (v13 >> 8));
    v16 = *(v15 + 24 * (v13 & 0xFE) + 16);
    v17 = *(v15 + 24 * (v13 & 0xFE | 1) + 16);
    if (v16 < v1)
    {
      v1 = v16;
    }

    if (v17 < v14)
    {
      v14 = v17;
    }

    v13 += 2;
  }

  while (j != v13);
  if (v1 >= v14)
  {
    v1 = v14;
  }

  if (v10 != j)
  {
    goto LABEL_25;
  }

LABEL_28:
  *(result + 9048) = v1;
  return result;
}

uint64_t *sub_1000627A4(uint64_t *result, __int128 *a2)
{
  v2 = *(result + 153);
  v3 = *(a2 + 7);
  v4 = v2 - 1;
  v5 = result[74];
  v6 = 0;
  if (*(result + 2226))
  {
    if (v2 >= 1)
    {
      v7 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v8 = (v6 + v4) >> 1;
        v9 = *(v5 + 8 * ((v6 + v4) >> 9)) + 24 * v8;
        v10 = *(v9 + 14);
        if (v3 < v10)
        {
          goto LABEL_4;
        }

        if (v3 > v10)
        {
          goto LABEL_9;
        }

        v11 = *v9 & 0x7FFFFFFFFFFFFFFFLL;
        if (v7 < v11)
        {
LABEL_4:
          v4 = v8 - 1;
          if (v6 > (v8 - 1))
          {
            break;
          }
        }

        else
        {
          if (v7 <= v11)
          {
            v24 = *(v9 + 16);
            v25 = *(a2 + 8);
            v26 = v24 - v25;
            if (v26 < 1)
            {
              LOWORD(v26) = *(a2 + 8) - v24;
              v27 = v25 - *(result + 4524);
              v18 = *(v9 + 8);
              v19 = *(a2 + 2);
            }

            else
            {
              v27 = v24 - *(result + 4524);
              v18 = *(a2 + 2);
              v19 = *(v9 + 8);
              *(v9 + 16) = v25;
              *(v9 + 8) = *(a2 + 2);
            }

            if (v19 != v18 && *(result + 2252))
            {
              v28 = result[1127];
              v29 = v26;
              v30 = v27;
LABEL_37:

              return sub_100020FE0(v28, v19, v18, v29, v30);
            }

            return result;
          }

LABEL_9:
          v6 = v8 + 1;
          if ((v8 + 1) > v4)
          {
            break;
          }
        }
      }
    }

    v12 = *(v5 + 8 * (v6 >> 8)) + 24 * v6;
LABEL_21:
    v20 = *(result + 152);
    if (v2 != (v20 << 8) - 1)
    {
      if (v2 > v6)
      {
        v21 = a2;
        v22 = result;
        sub_1000C0C08(result[74], v20, 256, 24, v6, v2 - v6, v6 + 1);
        result = v22;
        if (v22[75])
        {
          sub_1000C0C08(v22[75], *(v22 + 152), 256, 1, v6, v2 - v6, v6 + 1);
          result = v22;
        }

        v12 = *(result[74] + 8 * (v6 >> 8)) + 24 * v6;
        a2 = v21;
      }

      v23 = *a2;
      *(v12 + 16) = *(a2 + 2);
      *v12 = v23;
      *(result + 153) = v2 + 1;
    }

    return result;
  }

  if (v2 >= 1)
  {
    do
    {
      v13 = (v6 + v4) >> 1;
      if (v3 > *(*(v5 + 8 * ((v6 + v4) >> 9)) + 24 * v13 + 14))
      {
        v6 = v13 + 1;
      }

      else
      {
        v4 = v13 - 1;
      }
    }

    while (v6 <= v4);
  }

  v12 = *(v5 + 8 * (v6 >> 8)) + 24 * v6;
  if (v6 >= v2 || v3 != *(v12 + 14))
  {
    goto LABEL_21;
  }

  v14 = *(v12 + 16);
  v15 = *(a2 + 8);
  v16 = v14 - v15;
  if (v16 < 1)
  {
    LOWORD(v16) = *(a2 + 8) - v14;
    v17 = v15 - *(result + 4524);
    v18 = *(v12 + 8);
    v19 = *(a2 + 2);
    if (v19 == v18)
    {
      return result;
    }
  }

  else
  {
    v17 = v14 - *(result + 4524);
    v18 = *(a2 + 2);
    v19 = *(v12 + 8);
    *(v12 + 16) = v15;
    *(v12 + 8) = *(a2 + 2);
    if (v19 == v18)
    {
      return result;
    }
  }

  if (*(result + 2252))
  {
    v28 = result[1127];
    v29 = v16;
    v30 = v17;
    goto LABEL_37;
  }

  return result;
}

__n128 sub_100062AB0(uint64_t a1, __n128 *a2)
{
  v2 = a2->n128_u16[7];
  v3 = *(a1 + 592);
  v4 = (*(v3 + ((v2 >> 5) & 0x7F8)) + 24 * a2->n128_u16[7]);
  v5 = v4[1].n128_u16[0];
  if (v5 == 0x4000)
  {
    result = *a2;
    v4[1].n128_u64[0] = a2[1].n128_u64[0];
    *v4 = result;
    if (*(a1 + 620) >= v2)
    {
      v4->n128_u16[7] = -1;
    }

    return result;
  }

  if (*(a1 + 620) >= v2)
  {
    v7 = a2->n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL;
    v8 = v4->n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL;
    LOWORD(v9) = -1;
    if (v7 <= v8)
    {
      v10 = 0;
    }

    else
    {
      if (v4->n128_u16[7] == 0xFFFF)
      {
        v10 = 0;
        goto LABEL_21;
      }

      v9 = v4->n128_u16[7];
      while (1)
      {
        v10 = v4;
        v4 = (*(v3 + 8 * (v9 >> 8)) + 24 * v9);
        v8 = v4->n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL;
        if (v7 <= v8)
        {
          break;
        }

        v9 = v4->n128_u16[7];
        if (v9 == 0xFFFF)
        {
          LOWORD(v9) = -1;
          goto LABEL_21;
        }
      }
    }

    if (v7 != v8)
    {
LABEL_21:
      v15 = *(a1 + 612);
      if (v15 < (*(a1 + 608) << 8) - 2)
      {
        v16 = *(v3 + ((*(a1 + 612) >> 5) & 0x7FFFFF8)) + 24 * *(a1 + 612);
        if (v7 <= v8)
        {
          if (v10)
          {
            LOWORD(v9) = v10->n128_u16[7];
            v10->n128_u16[7] = v15;
          }

          else
          {
            v17 = *v4;
            *(v16 + 16) = v4[1].n128_u64[0];
            *v16 = v17;
            v9 = *(a1 + 612);
            v16 = v4;
          }
        }

        else
        {
          v4->n128_u16[7] = v15;
        }

        ++*(a1 + 612);
        v18 = a2[1].n128_u64[0];
        result = *a2;
        *v16 = *a2;
        *(v16 + 16) = v18;
        *(v16 + 14) = v9;
      }

      return result;
    }

    LOWORD(v5) = v4[1].n128_u16[0];
  }

  v11 = v5 - a2[1].n128_i16[0];
  v12 = *(a1 + 9048);
  if (v11 < 1)
  {
    LOWORD(v11) = a2[1].n128_u16[0] - v5;
    v13 = v4->n128_i32[2];
    v14 = a2->n128_i32[2];
    LOWORD(v5) = a2[1].n128_u16[0];
    if (v14 == v13)
    {
      return result;
    }
  }

  else
  {
    v13 = a2->n128_i32[2];
    v14 = v4->n128_i32[2];
    v4[1].n128_u16[0] = a2[1].n128_u16[0];
    v4->n128_u32[2] = a2->n128_u32[2];
    if (v14 == v13)
    {
      return result;
    }
  }

  if (*(a1 + 9008))
  {
    sub_100020FE0(*(a1 + 9016), v14, v13, v11, v5 - v12);
  }

  return result;
}

uint64_t *sub_100062C98(uint64_t *result, uint64_t a2)
{
  v2 = *(result[74] + ((*(a2 + 14) >> 5) & 0x7F8)) + 24 * *(a2 + 14);
  v3 = *(v2 + 16);
  if (v3 == 0x4000)
  {
    v4 = *(a2 + 16);
    *v2 = *a2;
    *(v2 + 16) = v4;
    *(v2 + 14) = -1;
    return result;
  }

  v5 = *(a2 + 16);
  v6 = v3 - v5;
  if (v6 < 1)
  {
    LOWORD(v6) = *(a2 + 16) - v3;
    v7 = v5 - *(result + 4524);
    v8 = *(v2 + 8);
    v9 = *(a2 + 8);
    if (v9 == v8)
    {
      return result;
    }
  }

  else
  {
    v7 = v3 - *(result + 4524);
    v8 = *(a2 + 8);
    v9 = *(v2 + 8);
    *(v2 + 16) = v5;
    *(v2 + 8) = *(a2 + 8);
    if (v9 == v8)
    {
      return result;
    }
  }

  if (*(result + 2252))
  {
    return sub_100020FE0(result[1127], v9, v8, v6, v7);
  }

  return result;
}

uint64_t sub_100062D60(uint64_t result, __int16 a2)
{
  if (*(result + 612) >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 592) + 8 * (v4 >> 8)) + 24 * v4;
      v6 = *(v3 + 9070);
      if (*(v3 + 9280))
      {
        v7 = sub_1000BA7F4(*(v3 + 376), *(v5 + 14), 0);
        result = sub_1000BABCC(*(v3 + 376), v3 + 9202, *(v3 + 9204), v7);
        v6 += result;
      }

      *(v5 + 16) = v6 + a2;
      *(v5 + 8) = -1;
      ++v4;
    }

    while (v4 < *(v3 + 612));
  }

  return result;
}

uint64_t sub_100062E34(uint64_t result, __int16 a2)
{
  v2 = *(result + 612);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v5 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v5 = *(qword_1001065A8 + 3616);
  }

  if (v5 >= v2)
  {
    if (v2 < 1 || *(result + 9280) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v10 = 0;
    do
    {
      v11 = *(*(v4 + 592) + 8 * (v10 >> 8)) + 24 * v10;
      v12 = *(v4 + 9070);
      if (*(v4 + 9280))
      {
        v13 = sub_1000BA7F4(*(v4 + 376), *(v11 + 14), 0);
        result = sub_1000BABCC(*(v4 + 376), v4 + 9202, *(v4 + 9204), v13);
        v12 += result;
      }

      *(v11 + 16) = v12 + a2;
      *(v11 + 8) = -1;
      ++v10;
      v2 = *(v4 + 612);
    }

    while (v10 < v2);
    goto LABEL_11;
  }

  if (v2 >= 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (*(v4 + 9280))
  {
    result = sub_1000BAC64(*(v4 + 376), *(v4 + 9204), v4 + 9202, v2, *(v4 + 656), *(v4 + 672), *(v4 + 664));
    *(v4 + 672) = result;
    LODWORD(v2) = *(v4 + 612);
  }

  if (v2 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v4 + 592) + 8 * (v7 >> 8)) + 24 * v7;
      v9 = *(v4 + 9070) + a2;
      *(v8 + 16) = v9;
      if (*(v4 + 9280))
      {
        *(v8 + 16) = *(*(v4 + 664) + 2 * v7) + v9;
      }

      *(v8 + 8) = -1;
      ++v7;
    }

    while (v7 < *(v4 + 612));
  }

  return result;
}

uint64_t sub_100062FDC(uint64_t a1, __int16 a2)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16 = 0;
  v18 = 0;
  v17 = 0xFFFFFFFFLL;
  result = sub_100025CE4(*(a1 + 680), v19);
  if (*(a1 + 8872) >= 1)
  {
    for (i = 0; i < *(a1 + 8872); ++i)
    {
      v6 = *(a1 + 9192);
      v7 = *(a1 + 680 + 8 * i);
      v8 = sub_100022FD0(v7, i);
      result = sub_100025D04(v7, 65534, 0xFFFEu, v8, *(a1 + 9224), *(a1 + 9216), *(a1 + 9188), v6);
      v9 = result;
      if (result > *(a1 + 9188))
      {
        v10 = 2 * result;
        result = sub_1000C0034(48 * result);
        if (!result)
        {
          *(a1 + 552) = 3;
          return result;
        }

        v6 = result;
        sub_1000BFEC4(*(a1 + 9192));
        *(a1 + 9188) = v10;
        *(a1 + 9192) = v6;
        v11 = sub_100022FD0(v7, i);
        result = sub_100025D04(v7, 65534, 0xFFFEu, v11, *(a1 + 9224), *(a1 + 9216), *(a1 + 9188), v6);
        v9 = result;
      }

      if (v9 >= 1)
      {
        do
        {
          v14 = *(a1 + 9070);
          if (*(a1 + 9280))
          {
            v15 = sub_1000BA7F4(*(a1 + 376), *v6, 0);
            v14 += sub_1000BABCC(*(a1 + 376), a1 + 9202, *(a1 + 9204), v15);
          }

          LOWORD(v18) = v14 + a2 + v6[1];
          if (*(v6 + 4))
          {
            v12 = *(v6 + 1) | 0x8000000000000000;
          }

          else
          {
            v12 = *(v6 + 1);
          }

          v16 = v12;
          v13 = *v6;
          v6 += 12;
          HIWORD(v17) = v13;
          result = (*(a1 + 9408))(a1, &v16);
          --v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

_DWORD *sub_1000631D4(uint64_t a1, __int16 a2)
{
  v24 = 0;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v18 = 0;
  v20 = 0;
  v19 = 0xFFFFFFFFLL;
  result = sub_100025CE4(*(a1 + 680), v23);
  if (*(a1 + 8872) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 680 + 8 * v5);
      if (qword_1001065A8 && *(qword_1001065A8 + 4544))
      {
        sub_1000269BC(v23, -1, a2);
      }

      v7 = *(v6 + 104);
      v8 = sub_100022FD0(v6, v5);
      v7(v6, v23, 65534, v8, 0xFFFFLL);
      while (1)
      {
        result = (*(v6 + 112))(v23, v6, &v21);
        if (!result)
        {
          break;
        }

        v11 = *(a1 + 9070);
        if (*(a1 + 9280))
        {
          v12 = sub_1000BA7F4(*(a1 + 376), v21, 0);
          v11 += sub_1000BABCC(*(a1 + 376), a1 + 9202, *(a1 + 9204), v12);
        }

        LOWORD(v20) = v11 + a2 + WORD1(v21);
        if (v22)
        {
          v13 = *(&v21 + 1) | 0x8000000000000000;
        }

        else
        {
          v13 = *(&v21 + 1);
        }

        v18 = v13;
        if (*(&v22 + 1))
        {
          v14 = (*(&v21 + 1) >> 35) & 0x3FFFFLL;
          v15 = *(a1 + 9364);
          if (v15 < 1)
          {
            LODWORD(v9) = 0;
            if (v15 >= *(a1 + 9360))
            {
LABEL_8:
              LODWORD(v9) = 0;
              *(a1 + 552) = 3;
            }

            else
            {
LABEL_30:
              *(*(a1 + 9328) + 8 * v9) = *(&v22 + 1);
              *(*(a1 + 9336) + 2 * v9) = v5;
              *(*(a1 + 9344) + 4 * v9) = v14;
              v17 = *(a1 + 9352);
              if (v17)
              {
                *(v17 + 4 * v9) = *(a1 + 9376);
              }

              ++*(a1 + 9364);
            }
          }

          else
          {
            v9 = 0;
            while (1)
            {
              if (v14 == *(*(a1 + 9344) + 4 * v9) && *(*(a1 + 9336) + 2 * v9) == v5)
              {
                v16 = *(a1 + 9352);
                if (!v16 || *(v16 + 4 * v9) == *(a1 + 9376))
                {
                  break;
                }
              }

              if (v15 == ++v9)
              {
                LODWORD(v9) = *(a1 + 9364);
                if (v15 >= *(a1 + 9360))
                {
                  goto LABEL_8;
                }

                goto LABEL_30;
              }
            }
          }

          v10 = v9 + *(a1 + 620) + 1;
        }

        else
        {
          LOWORD(v10) = v21;
        }

        HIWORD(v19) = v10;
        (*(a1 + 9408))(a1, &v18);
      }

      ++v5;
    }

    while (v5 < *(a1 + 8872));
  }

  return result;
}

unsigned int *sub_100063488(unsigned int *result)
{
  v1 = result[147];
  if (v1 < 1)
  {
LABEL_5:
    result[147] = 0;
  }

  else
  {
    v2 = 0;
    v3 = *(result + 72);
    v4 = result[147];
    while (*(result + 4600) - *(result + 4454) > *&v3[v2 + 2])
    {
      v2 += 4;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    if (v2)
    {
      result[147] = v4;
      return j__memmove(v3, &v3[v2], 4 * v1 - v2);
    }
  }

  return result;
}

void sub_1000634F4(uint64_t a1)
{
  if (*(a1 + 544) == 5)
  {

    sub_100063744(a1);
  }

  else
  {
    v2 = *(a1 + 608) << 8;
    if (*(a1 + 588) <= 0)
    {
      LODWORD(v4) = 0;
      v11 = 0;
      v8 = (a1 + 612);
      *(a1 + 612) = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 576);
        if (*(v5 + v3 + 2) - *(a1 + 8910) > *(a1 + 9200) || v2 - 1 <= v4)
        {
          break;
        }

        v7 = *(*(a1 + 592) + 8 * (v4 >> 8)) + 24 * v4;
        *(v7 + 14) = *(v5 + v3);
        *(v7 + 16) = 0x4000;
        ++v4;
        v3 += 4;
      }

      while (v4 < *(a1 + 588));
      v8 = (a1 + 612);
      *(a1 + 612) = v4;
      if (v4)
      {
        sub_100063D80(a1, 0, (v4 - 1));
        v9 = *(a1 + 612);
        if (v9 < 2)
        {
          v11 = 1;
        }

        else
        {
          v10 = **(a1 + 592);
          v11 = 1;
          for (i = 1; i < v9; ++i)
          {
            v13 = *(a1 + 592);
            v14 = *(v13 + 8 * (i >> 8)) + 24 * i;
            if (*(v14 + 14) != *(v10 + 14))
            {
              v10 = *(v13 + 8 * (v11 >> 8)) + 24 * v11;
              v15 = *v14;
              *(v10 + 16) = *(v14 + 16);
              *v10 = v15;
              ++v11;
              v9 = *v8;
            }
          }
        }

        *v8 = v11;
      }

      else
      {
        v11 = 0;
      }
    }

    if (v4 >= v2 - 1)
    {
      *v8 = --v11;
    }

    *(*(*(a1 + 592) + 8 * (v11 >> 8)) + 24 * v11 + 14) = 0xFFFF;
    if (*(a1 + 9280))
    {
      v16 = *v8;
      if (v16 >= 1)
      {
        v17 = qword_1001065A8;
        if (qword_1001065A8)
        {
          v17 = *(qword_1001065A8 + 3616);
        }

        if (v17 >= v16)
        {
          v18 = 0;
          v19 = *(a1 + 376);
          *(a1 + 672) = -1;
          do
          {
            *(*(a1 + 656) + 2 * v18) = sub_1000BA7F4(v19, *(*(*(a1 + 592) + 8 * (v18 >> 8)) + 24 * v18 + 14), 0);
            ++v18;
          }

          while (v18 < *(a1 + 612));
        }
      }
    }
  }
}

void sub_100063744(uint64_t a1)
{
  v2 = a1 + 0x2000;
  if (*(a1 + 588) <= 0)
  {
    v14 = 0;
    v20 = 0;
    v5 = (a1 + 9224);
    *(a1 + 9224) = 0;
    v21 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v3 = 0;
  v4 = 0;
  v5 = (a1 + 9224);
  do
  {
    v7 = *(a1 + 576);
    if (*(v7 + 4 * v3 + 2) - *(v2 + 718) > *(v2 + 1008))
    {
      break;
    }

    v8 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v6 = v4;
      if (*(qword_1001065A8 + 4064) <= v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = v4;
      if (v4 >= 0)
      {
LABEL_10:
        *v5 = v4;
        if (v4)
        {
          qsort(*(a1 + 9216), v6, 2uLL, sub_100063F0C);
          v9 = *(a1 + 9224);
          if (v9 < 2)
          {
            v4 = 1;
          }

          else
          {
            LODWORD(v10) = 0;
            v11 = *(a1 + 9216);
            for (i = 1; i < v9; ++i)
            {
              v13 = *(v11 + 2 * i);
              if (v13 != *(v11 + 2 * v10))
              {
                v10 = v10 + 1;
                *(v11 + 2 * v10) = v13;
                v9 = *v5;
              }
            }

            v4 = v10 + 1;
          }

          *v5 = v4;
          v8 = qword_1001065A8;
        }

        if (v8)
        {
          v6 = v4;
          if (*(v8 + 4064) <= v4)
          {
            break;
          }
        }

        else
        {
          v6 = v4;
          if (v4 >= 0)
          {
            break;
          }
        }

        v7 = *(a1 + 576);
      }
    }

    *(*(a1 + 9216) + 2 * v6) = *(v7 + 4 * v3);
    ++v4;
    ++v3;
  }

  while (v3 < *(a1 + 588));
  *v5 = v4;
  if (!v4)
  {
    v14 = 0;
    v20 = 0;
    v21 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v14 = v4;
  qsort(*(a1 + 9216), v4, 2uLL, sub_100063F0C);
  v15 = *(a1 + 9224);
  if (v15 < 2)
  {
    v20 = 1;
    *v5 = 1;
    v21 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_37;
    }

LABEL_32:
    if (v14 >= 0)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  LODWORD(v16) = 0;
  v17 = *(a1 + 9216);
  for (j = 1; j < v15; ++j)
  {
    v19 = *(v17 + 2 * j);
    if (v19 != *(v17 + 2 * v16))
    {
      v16 = v16 + 1;
      *(v17 + 2 * v16) = v19;
      v15 = *v5;
    }
  }

  v20 = v16 + 1;
  *v5 = v16 + 1;
  v21 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_32;
  }

LABEL_37:
  if (*(v21 + 4064) <= v14)
  {
LABEL_38:
    *v5 = --v20;
  }

LABEL_39:
  if ((!v21 || !*(v21 + 4544)) && !sub_100022EE0((a1 + 680), *(a1 + 8872), *(a1 + 9216), v20, *(v2 + 1008)))
  {
    *(a1 + 552) = 3;
  }
}

uint64_t sub_1000639F0(uint64_t result, __int16 a2, __int16 a3)
{
  v3 = *(result + 588);
  if (v3 < *(result + 584))
  {
    v4 = (*(result + 576) + 4 * v3);
    *v4 = a2;
    v4[1] = a3;
    ++*(result + 588);
  }

  return result;
}

uint64_t sub_100063A34(uint64_t result, int a2)
{
  v2 = qword_1001065A8;
  if (qword_1001065A8 && *(qword_1001065A8 + 1648) && !*(result + 632))
  {
    *(result + 632) = 1;
  }

  else if (*(result + 8892))
  {
    v3 = *(result + 552);
    v4 = v3 == 3 || v3 == 5;
    if (!v4 && a2 <= 0x3FFFFFFF)
    {
      v6 = *(result + 9048);
      if (qword_1001065A8)
      {
        v2 = *(qword_1001065A8 + 5224);
      }

      v7 = *(result + 9076) + v6 - (v2 + a2);
      if (v7 >= 1)
      {
        v8 = *(result + 9060) - v7 + v6;
        if (*(result + 9062) > v8)
        {
          *(result + 9062) = v8;
        }
      }
    }
  }

  return result;
}

BOOL sub_100063AD4(uint64_t a1)
{
  if (*(a1 + 8980) < 0x4000)
  {
    return 0;
  }

  if (*(a1 + 9052) == *(a1 + 9054))
  {
    return 1;
  }

  return *(a1 + 9184) == 0;
}

uint64_t sub_100063B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2 || (result = sub_100028A28(a1 + 680, *(a1 + 8872)), (v4 = result) != 0))
  {
    v12 = 0;
    v13 = 0;
    result = sub_100036264(a1, v4, 0, 0, 3, 0, &v13 + 1, &v13, &v12 + 1, &v12);
    if (result)
    {
      result = sub_100099BA4(*(a1 + 9256), SHIDWORD(v12), v12);
      if (result)
      {
        return sub_100032530(v4, *(a1 + 9256), a3, v7, v8, v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t sub_100063BD0(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a1 + 560))
  {
    return 0;
  }

  v7 = *(a1 + 9296);
  if (v7)
  {
    if (*(a1 + 9304) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(a1 + 9296);
        v10 = *(v9 + 8 * v8);
        if (v10)
        {
          sub_100022FBC(v10);
          v9 = *(a1 + 9296);
        }

        *(v9 + 8 * v8++) = 0;
      }

      while (v8 < *(a1 + 9304));
      v7 = *(a1 + 9296);
    }

    sub_1000BFEC4(v7);
    *(a1 + 9296) = 0;
    *(a1 + 9304) = 0;
  }

  v11 = *(a1 + 9288);
  if (a1 + 680 != v11 && v11 != 0)
  {
    sub_1000BFEC4(v11);
    *(a1 + 9288) = 0;
  }

  v13 = *(a1 + 9256);
  if (!v13)
  {
    return 1;
  }

  result = sub_10009ABA8(v13, a2, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100063CA4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 9256);
  if (!v8)
  {
    return 1;
  }

  result = sub_10009AE34(v8, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100063CD0(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (sub_100001140(a2) > 2)
  {
    return 0;
  }

  if (a5)
  {

    return sub_10006B120(a1, a2, a3, a4);
  }

  else
  {

    return sub_100063FF0(a1, a2, a3, a4);
  }
}

uint64_t sub_100063D80(uint64_t result, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v3 = *(result + 592);
    v4 = *(*(v3 + 8 * ((a3 + a2) >> 9)) + 24 * ((a3 + a2) >> 1) + 14);
    v5 = a3;
    v6 = a2;
LABEL_2:
    v7 = v6 + 1;
    v8 = v5 - v6;
    do
    {
      v9 = v6;
      v10 = v7;
      v11 = v8;
      v12 = *(v3 + 8 * (v6 >> 8)) + 24 * v6;
      ++v6;
      ++v7;
      --v8;
    }

    while (*(v12 + 14) < v4);
    ++v5;
    do
    {
      --v5;
      v13 = v11;
      v14 = *(v3 + 8 * (v5 >> 8)) + 24 * v5;
      v15 = *(v14 + 14);
      --v11;
    }

    while (v15 > v4);
    if (v9 == v5)
    {
      v19 = v6 - 2;
      v5 = v6 - 1;
      if (v19 > a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      do
      {
        if (*(v12 + 14) != v15)
        {
          v16 = *v12;
          v17 = *(v12 + 16);
          v18 = *(v14 + 16);
          *v12 = *v14;
          *(v12 + 16) = v18;
          *v14 = v16;
          *(v14 + 16) = v17;
          v3 = *(result + 592);
          v6 = v10 - 1;
          goto LABEL_2;
        }

        v12 = *(v3 + 8 * (v10 >> 8)) + 24 * v10;
        ++v10;
        --v13;
      }

      while (v13);
      v19 = v5 - 1;
      if (v19 > a2)
      {
LABEL_12:
        v20 = result;
        v21 = a3;
        sub_100063D80(result, a2, v19);
        result = v20;
        a3 = v21;
      }
    }

    a2 = v5 + 1;
    if (a2 >= a3)
    {
      return result;
    }
  }
}

uint64_t sub_100063F1C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 9044);
  v3 = (*(result + 9040) << 8) - v2;
  v4 = *(*(result + 9032) + 8 * (v3 >> 8)) + 32 * -*(result + 9044);
  v5 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v5 = *(qword_1001065A8 + 3352);
  }

  v6 = (v5 + *(result + 9048));
  v7 = v3 + 1;
  v8 = v2 - 1;
  v9 = *(v4 + 18);
  if (v9 != 0xFFFF)
  {
LABEL_4:
    if ((qword_1001065A8 && *(qword_1001065A8 + 3484) || v9 == *(result + 9054) || !*(v4 + 16)) && *(v4 + 24) <= v6)
    {
      *(a2 + ((*v4 >> 53) & 0x3FFLL)) = 1;
    }
  }

  while (v8)
  {
    v4 = *(*(result + 9032) + 8 * (v7 >> 8)) + 32 * v7;
    ++v7;
    --v8;
    v9 = *(v4 + 18);
    if (v9 != 0xFFFF)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100063FF0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1000C0034(9432);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  memcpy(v8, off_1000FD510, 0x208uLL);
  *(v9 + 376) = a1;
  *(v9 + 384) = a2;
  *(v9 + 432) = a3;
  *(v9 + 560) = a4;
  v10 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v10 = *(qword_1001065A8 + 5276);
  }

  *(v9 + 8896) = v10;
  *(v9 + 368) = 3;
  *(v9 + 8976) = sub_1000011A4(a2);
  *(v9 + 556) = 0;
  v11 = *(v9 + 432);
  v12 = sub_100001140(*(v9 + 384));
  *(v9 + 568) = v12;
  v13 = sub_10006A5A4;
  if (v12 == 1)
  {
    v13 = sub_100068D74;
  }

  *(v9 + 9424) = v13;
  *(v9 + 592) = 0;
  *(v9 + 588) = 0;
  *(v9 + 576) = 0;
  v14 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v15 = *(qword_1001065A8 + 5208) / v11;
    *(v9 + 8910) = v15;
    *(v9 + 8908) = *(v14 + 5216) / v11 - v15;
    *(v9 + 9024) = 0u;
    *(v9 + 9064) = *(v14 + 1688);
    *(v9 + 9066) = *(v14 + 1456);
    *(v9 + 9070) = *(v14 + 1496);
    v16 = *(v14 + 1664);
  }

  else
  {
    v16 = 0;
    *(v9 + 8908) = 0;
    *(v9 + 9064) = 0;
    *(v9 + 9070) = 0;
    *(v9 + 9024) = 0u;
  }

  *(v9 + 9072) = v16;
  *(v9 + 9202) = -1;
  *(v9 + 456) = 0xFFFFFFFFLL;
  *(v9 + 9204) = 0;
  if (v14)
  {
    v17 = sub_10009B1D8(*(v14 + 4120));
    *(v9 + 9000) = v17;
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = sub_10009B1D8(0);
    *(v9 + 9000) = v17;
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  sub_10009B30C(v17, *(v9 + 376));
  *(v9 + 9016) = 0;
  *(v9 + 8872) = 0;
  if (!sub_100061E98(v9))
  {
    goto LABEL_34;
  }

  sub_100038200(v9);
  if (!*(v9 + 408))
  {
    goto LABEL_34;
  }

  *(v9 + 9232) = sub_10005B6A4();
  *(v9 + 9240) = sub_10005B6A4();
  v18 = sub_100001108(*(v9 + 384));
  *(v9 + 640) = sub_1000C0034(v18);
  *(v9 + 528) = sub_100068500;
  *(v9 + 536) = sub_10006A7C8;
  v19 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_23;
  }

  v20 = *(qword_1001065A8 + 4064);
  if (v20 < 1)
  {
LABEL_19:
    *(v9 + 9360) = *(v19 + 1520);
    if (*(v19 + 1528) < 1)
    {
      goto LABEL_33;
    }

    v22 = sub_1000C0034(8 * *(v19 + 1520));
    *(v9 + 9328) = v22;
    if (!v22)
    {
      goto LABEL_34;
    }

    v23 = qword_1001065A8 ? 2 * *(qword_1001065A8 + 1520) : 0;
    v25 = sub_1000C0034(v23);
    *(v9 + 9336) = v25;
    if (!v25)
    {
      goto LABEL_34;
    }

    v26 = qword_1001065A8 ? 4 * *(qword_1001065A8 + 1520) : 0;
    v27 = sub_1000C0034(v26);
    *(v9 + 9344) = v27;
    if (!v27)
    {
      goto LABEL_34;
    }

    v19 = qword_1001065A8;
    if (qword_1001065A8)
    {
LABEL_33:
      *(v9 + 9368) = *(v19 + 1608);
      *(v9 + 9372) = *(v19 + 1616);
      return v9;
    }

    goto LABEL_24;
  }

  v21 = sub_1000C0034(2 * v20);
  *(v9 + 9216) = v21;
  if (v21)
  {
    v19 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_19;
    }

LABEL_23:
    *(v9 + 9360) = 0;
LABEL_24:
    *(v9 + 9368) = 0;
    return v9;
  }

LABEL_34:
  sub_1000642EC(v9);
  return 0;
}

uint64_t sub_1000642EC(uint64_t a1)
{
  sub_100062394(a1);
  v2 = *(a1 + 9016);
  if (v2)
  {
    sub_100020F9C(v2);
    *(a1 + 9016) = 0;
  }

  sub_1000BFEC4(*(a1 + 640));
  sub_10005B718(*(a1 + 9232));
  sub_10005B718(*(a1 + 9240));
  sub_100003974(*(a1 + 408));
  sub_1000C0B14(*(a1 + 592), *(a1 + 608), *(a1 + 608));
  sub_1000C0B14(*(a1 + 600), *(a1 + 608), *(a1 + 608));
  sub_1000999F8(*(a1 + 9256));
  sub_10004EA04(*(a1 + 9264));
  sub_1000BFEC4(*(a1 + 576));
  sub_1000C0B14(*(a1 + 9032), *(a1 + 9040), *(a1 + 9040));
  sub_10009B294(*(a1 + 9000));
  sub_1000BFEC4(*(a1 + 9216));
  sub_1000BFEC4(*(a1 + 9312));
  sub_1000BFEC4(*(a1 + 9328));
  sub_1000BFEC4(*(a1 + 9336));
  sub_1000BFEC4(*(a1 + 9344));
  sub_1000BFEC4(*(a1 + 9352));
  sub_1000BFEC4(*(a1 + 656));
  sub_1000BFEC4(*(a1 + 664));
  sub_1000BFEC4(*(a1 + 9192));
  sub_100022FBC(*(a1 + 9384));

  return sub_1000BFEC4(a1);
}

uint64_t sub_1000643F4(uint64_t a1, int a2)
{
  sub_1000C0B14(*(a1 + 592), *(a1 + 608), *(a1 + 608));
  *(a1 + 592) = 0;
  if (*(a1 + 556))
  {
    sub_1000C0B14(*(a1 + 600), *(a1 + 608), *(a1 + 608));
    *(a1 + 600) = 0;
    v4 = *(a1 + 556);
    *(a1 + 608) = 0;
    if (v4)
    {
      sub_1000BFEC4(0);
      *(a1 + 600) = 0;
    }
  }

  else
  {
    *(a1 + 608) = 0;
  }

  sub_1000C0B14(*(a1 + 9032), *(a1 + 9040), *(a1 + 9040));
  *(a1 + 9032) = 0;
  *(a1 + 9040) = 0;
  result = sub_1000BFEC4(*(a1 + 9192));
  *(a1 + 9192) = 0;
  *(a1 + 9188) = 0;
  if (a2)
  {
    v6 = *(a1 + 9256);

    return sub_100099A60(v6);
  }

  return result;
}

uint64_t sub_1000644B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8, int a9, int a10)
{
  v136 = 0;
  v137 = 0;
  *(a1 + 552) = 4;
  *(a1 + 544) = a6;
  *(a1 + 548) = a7;
  if (a5 >= 1025)
  {
    goto LABEL_2;
  }

  v12 = a5;
  v13 = *(a1 + 8896);
  if (v13)
  {
    if (a6 == 5 || a6 == 2)
    {
      goto LABEL_2;
    }
  }

  v14 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 4452) && *(qword_1001065A8 + 4544) || a6 == 11 && *(qword_1001065A8 + 4912) <= 0)
    {
      goto LABEL_2;
    }

LABEL_14:
    v121 = v13 == 0;
    v15 = sub_100066BF4;
    if (v121)
    {
      v15 = sub_100067084;
    }

    *(a1 + 520) = v15;
    if (a6 > 4)
    {
      if (a6 != 5 && a6 != 11)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (a6 == 2)
      {
        goto LABEL_24;
      }

      if (a6 != 3)
      {
        goto LABEL_2;
      }
    }

    if (!v14 || *(v14 + 1272) != 0x7FFFFFFFLL && (!*(v14 + 4736) || !a8 || a9 || *(a1 + 456) != -1 || !*(v14 + 1528) || !*(a1 + 9360)))
    {
      goto LABEL_2;
    }

LABEL_24:
    v19 = a4;
    if (!sub_100022AE4(a4, a5))
    {
      v10 = 0;
      *(a1 + 552) = 3;
      return v10;
    }

    if (qword_1001065A8 && *(qword_1001065A8 + 1264))
    {
      v19 = (a1 + 9384);
      if (!*(a1 + 9384))
      {
        *(a1 + 9384) = sub_100023A64(*(a1 + 376), 0);
      }

      v12 = 1;
    }

    sub_100062394(a1);
    v20 = 8 * v12;
    v135 = (a1 + 680);
    memcpy((a1 + 680), v19, v20);
    *(a1 + 8872) = v12;
    v21 = sub_1000254B4(v12, v19);
    *(a1 + 8900) = v21;
    if (v21)
    {
      v22 = sub_1000C0034(8 * v12);
      *(a1 + 9288) = v22;
      if (!v22)
      {
        return 0;
      }

      memcpy(v22, v19, v20);
      v23 = sub_1000C0034(8 * v12);
      v24 = a1;
      *(a1 + 9296) = v23;
      if (!v23)
      {
        goto LABEL_144;
      }

      *(a1 + 9304) = v12;
      v25 = (a1 + 680);
      if (v12 >= 1)
      {
        v26 = 0;
        v27 = v19;
        do
        {
          v28 = sub_100024D4C(*&v27[v26 * 4]);
          *&v135[v26] = v28;
          if (!v28)
          {
            v10 = 0;
            *&v135[v26] = *&v19[v26 * 4];
            return v10;
          }

          v24 = a1;
          if (*(*(a1 + 9288) + v26 * 4) != v28)
          {
            *(*(a1 + 9296) + v26 * 4) = v28;
          }

          v26 += 2;
          v27 = v19;
        }

        while (2 * v12 != v26);
        v25 = (a1 + 680);
        v29 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          goto LABEL_59;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v24 = a1;
      v25 = v19;
    }

    v29 = qword_1001065A8;
    if (!qword_1001065A8)
    {
LABEL_59:
      v37 = 0;
      v36 = 1;
      v31 = a7;
      v30 = a6;
      v32 = a3;
      v33 = a2;
      v34 = a8;
      goto LABEL_72;
    }

LABEL_49:
    v31 = a7;
    v30 = a6;
    v32 = a3;
    v33 = a2;
    v34 = a8;
    if (!*(v29 + 5308) || v21 || v12 < 1 || !*(v29 + 4220))
    {
LABEL_55:
      v29 = qword_1001065A8;
      if (qword_1001065A8)
      {
LABEL_56:
        v36 = 0;
        v37 = *(v29 + 1072);
        goto LABEL_72;
      }

LABEL_71:
      v37 = 0;
      v36 = 1;
LABEL_72:
      v43 = 0;
      v44 = (v24 + 0x2000);
      *(v24 + 544) = v30;
      *(v24 + 9272) = v34;
      if (v31 == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v37;
      }

      *(v24 + 9276) = a9;
      *(v24 + 8892) = 1;
      if ((v36 & 1) == 0)
      {
        v43 = *(v29 + 1704);
      }

      *(v24 + 9068) = v43;
      if (v32 < 1)
      {
        *(v24 + 9204) = 0;
        v46 = -1;
      }

      else
      {
        *(v24 + 9204) = 1;
        v46 = *(v33 + 2 * v32 - 2);
      }

      v44[505] = v46;
      v132 = v25;
      if (v30 == 2)
      {
        if (v36)
        {
          v47 = 0;
          v48 = 0;
        }

        else
        {
          v47 = *(v29 + 5348);
          v48 = *(v29 + 5372);
        }

        sub_1000361DC(a1, v47, v48);
        v50 = a1;
        v51 = 0;
        *(a1 + 8872) = v12;
      }

      else
      {
        if (v36)
        {
          v49 = 0;
        }

        else
        {
          v49 = *(v29 + 5348);
        }

        if (v12 < 1)
        {
          v49 = 0;
          v51 = 1;
        }

        else
        {
          v52 = v12;
          v53 = v25;
          while (*v53 && sub_1000236C8(*v53))
          {
            ++v53;
            if (!--v52)
            {
              v49 = 0;
              v51 = 1;
              goto LABEL_95;
            }
          }

          v51 = 0;
LABEL_95:
          v29 = qword_1001065A8;
        }

        if (v29)
        {
          v54 = *(v29 + 5372);
        }

        else
        {
          v54 = 0;
        }

        sub_1000361DC(a1, v49, v54);
        v50 = a1;
      }

      if (*(v50 + 556))
      {
        v55 = 1;
        goto LABEL_103;
      }

      v59 = *(v50 + 544);
      if ((v59 | 8) == 0xB)
      {
        if (!v51)
        {
          v56 = (v50 + 8888);
          *(v50 + 8888) = a10;
          v57 = (v50 + 8884);
          *(v50 + 8884) = a10;
LABEL_108:
          v58 = 1;
          if (a6 != 2 && a6 != 5)
          {
            v60 = sub_100036264(a1, 0, v132, v12, a6, a7, &v137, &v137 + 1, &v136 + 1, &v136);
            v50 = a1;
LABEL_125:
            v65 = 1;
LABEL_128:
            if (!v60)
            {
              goto LABEL_257;
            }

            if (!v137)
            {
              goto LABEL_257;
            }

            v66 = sub_100067380(a1, v137);
            v50 = a1;
            if (!v66)
            {
              goto LABEL_257;
            }

            if (sub_100099BA4(*(a1 + 9256), SHIDWORD(v136), v136))
            {
              if (qword_1001065A8 && *(qword_1001065A8 + 4504))
              {
                sub_1000236D0(v135, *(a1 + 8872), *(a1 + 9256));
              }

              v71 = sub_100061F6C(a1);
              v50 = a1;
              if (!v71)
              {
                goto LABEL_257;
              }

              if (sub_100022E1C(v132, v12, v45, *(a1 + 9256), v67, v68, v69, v70))
              {
                v50 = a1;
                if (a7)
                {
                  v72 = HIDWORD(v137);
                  v73 = qword_1001065A8;
                }

                else
                {
                  v73 = qword_1001065A8;
                  if (qword_1001065A8)
                  {
                    v74 = *(qword_1001065A8 + 1544);
                  }

                  else
                  {
                    v74 = 0;
                  }

                  v76 = HIDWORD(v137) + *(a1 + 9080) * v74;
                  if (v76 <= 1)
                  {
                    v72 = 1;
                  }

                  else
                  {
                    v72 = v76;
                  }

                  HIDWORD(v137) = v72;
                }

                v77 = *(a1 + 9040);
                *(a1 + 9208) = v72;
                if (v73)
                {
                  v78 = v73[388];
                }

                else
                {
                  v78 = 0;
                }

                *(a1 + 9212) = v78;
                if ((v65 & 1) == 0)
                {
                  v79 = v77 << 8;
                  if (v79 >= 65533)
                  {
                    v79 = 65533;
                  }

                  *(a1 + 9208) = v79;
                }

                *(a1 + 8876) = v51;
                switch(a7)
                {
                  case 2u:
                    if (v73)
                    {
                      v84 = v73[242];
                      goto LABEL_172;
                    }

                    break;
                  case 1u:
                    if (v73)
                    {
                      v84 = v73[1142];
                      goto LABEL_172;
                    }

                    break;
                  case 0u:
                    v80 = sub_100039AA0(v132, v12);
                    v81 = qword_1001065A8;
                    if (qword_1001065A8)
                    {
                      v82 = 4920;
                      if (!v80)
                      {
                        v82 = 1632;
                      }

                      v83 = *(qword_1001065A8 + v82);
                      v81 = *(qword_1001065A8 + 1640);
                    }

                    else
                    {
                      v83 = 0;
                    }

                    v50 = a1;
                    v84 = v83 + *(a1 + 9080) * v81;
                    if (v84 <= 1)
                    {
                      LOWORD(v84) = 1;
                    }

                    goto LABEL_172;
                }

                LOWORD(v84) = 0;
LABEL_172:
                v44[434] = v84;
                v44[435] = v84;
                if (v44[439] <= v84 && v44[438] <= 0x4000)
                {
                  v44[392] = sub_1000011A4(*(v50 + 384));
                  v85 = sub_10000119C(*(a1 + 384));
                  v50 = a1;
                  v44[528] = v85;
                  v86 = *(a1 + 544);
                  if (v86 <= 0xB && ((1 << v86) & 0x828) != 0)
                  {
                    if (v12 <= 1)
                    {
                      v87 = sub_100022FB4(*v132);
                      v50 = a1;
                      v86 = *(a1 + 544);
                    }

                    else
                    {
                      v87 = 1;
                    }

                    *(v50 + 8904) = v87;
                  }

                  if (v86 <= 0xB && ((1 << v86) & 0x828) != 0)
                  {
                    v88 = sub_100023738(v132, v12);
                    v50 = a1;
                    if (v88)
                    {
                      *(a1 + 9008) = 0;
                      v89 = a7;
                      goto LABEL_195;
                    }
                  }

                  v90 = qword_1001065A8;
                  if (qword_1001065A8)
                  {
                    v91 = *(qword_1001065A8 + 4552);
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v89 = a7;
                  if (*(v50 + 556))
                  {
                    v91 = 0;
                  }

                  *(v50 + 9008) = v91;
                  if (!v91)
                  {
                    goto LABEL_195;
                  }

                  *v57 = 0;
                  *v56 = 0;
                  if (v90)
                  {
                    v92 = *(v90 + 4040);
                    if (v92)
                    {
                      v93 = *(v50 + 9016);
                      if (v93)
                      {
                        sub_100020FD8(v93);
                        v50 = a1;
                        v89 = a7;
                        goto LABEL_195;
                      }

                      v94 = sub_100020F18(*(a1 + 9000), v92);
                      v50 = a1;
                      *(a1 + 9016) = v94;
                      v89 = a7;
                      if (v94)
                      {
LABEL_195:
                        if (v89 == 1)
                        {
                          v95 = *(v50 + 432);
                          if (qword_1001065A8)
                          {
                            v96 = *(qword_1001065A8 + 1600);
                            v97 = *(qword_1001065A8 + 1440);
                            v98 = v50 + 9084;
                          }

                          else
                          {
                            v98 = v50 + 9084;
                            v96 = 0;
                            v97 = 0;
                          }

                          sub_1000B1390(v98, v95, v96, 1000000, v97, 0);
                          v104 = a1;
                          *(a1 + 9180) = 0;
                          v105 = qword_1001065A8;
                          if (!qword_1001065A8)
                          {
                            goto LABEL_211;
                          }
                        }

                        else
                        {
                          if (qword_1001065A8)
                          {
                            v99 = *(qword_1001065A8 + 1592);
                            v100 = *(v50 + 432);
                            v101 = *(qword_1001065A8 + 1600);
                            v102 = *(qword_1001065A8 + 1440);
                            v103 = v50 + 9084;
                          }

                          else
                          {
                            v100 = *(v50 + 432);
                            v103 = v50 + 9084;
                            v101 = 0;
                            v99 = 0;
                            v102 = 0;
                          }

                          sub_1000B1390(v103, v100, v101, v99, v102, 0);
                          if (qword_1001065A8 && *(qword_1001065A8 + 1656) < *(qword_1001065A8 + 1592))
                          {
                            *(a1 + 9180) = 1;
                            *(a1 + 8880) = sub_100022B68(v132, v12);
                            if (qword_1001065A8)
                            {
                              v106 = *(qword_1001065A8 + 1600);
                              v107 = *(qword_1001065A8 + 1656);
                              v108 = *(qword_1001065A8 + 1440);
                            }

                            else
                            {
                              v107 = 0;
                              v106 = 0;
                              v108 = 0;
                            }

                            sub_1000B1390(a1 + 9132, *(a1 + 432), v106, v107, v108, 0);
                            v104 = a1;
                            v105 = qword_1001065A8;
                            if (!qword_1001065A8)
                            {
                              goto LABEL_211;
                            }
                          }

                          else
                          {
                            v104 = a1;
                            *(a1 + 9180) = 0;
                            v105 = qword_1001065A8;
                            if (!qword_1001065A8)
                            {
                              goto LABEL_211;
                            }
                          }
                        }

                        if (*(v105 + 4464))
                        {
                          sub_1000998FC(v104[1157]);
                          v104 = a1;
                        }

LABEL_211:
                        v109 = v104[1158];
                        if (v109)
                        {
                          sub_10004EA54(v109);
                          v104 = a1;
                        }

                        v110 = sub_1000B215C(v104[47]);
                        v50 = a1;
                        *(a1 + 620) = v110;
                        if (*(a1 + 8896))
                        {
                          v111 = v110 + *(a1 + 9360) + 2;
                          *(a1 + 616) = v111;
                          *(a1 + 612) = v111;
                        }

                        v112 = qword_1001065A8;
                        if (qword_1001065A8 && *(qword_1001065A8 + 1684))
                        {
                          v113 = sub_1000B20FC(*(a1 + 376));
                          v50 = a1;
                          *(a1 + 9280) = v113;
                          v112 = qword_1001065A8;
                          v114 = !v113;
                        }

                        else
                        {
                          *(a1 + 9280) = 0;
                          *(a1 + 456) = -1;
                          v114 = 1;
                        }

                        if (v112)
                        {
                          v115 = *(v112 + 1288);
                        }

                        else
                        {
                          v115 = 0;
                        }

                        *(v50 + 9284) = v115;
                        v116 = *(v50 + 544);
                        if (v116 > 4)
                        {
                          if (v116 == 5)
                          {
                            *(v50 + 9392) = sub_100062FDC;
                            *(v50 + 9400) = sub_1000677BC;
                            *(v50 + 9284) = 0;
                            goto LABEL_241;
                          }

                          if (v116 != 11)
                          {
                            goto LABEL_241;
                          }
                        }

                        else
                        {
                          if (v116 == 2)
                          {
                            v118 = sub_100067490;
                            if (v112)
                            {
                              v119 = *(v112 + 3616);
                              v120 = sub_100062E34;
                              v121 = v119 == 0;
                              if (!v119)
                              {
                                v120 = sub_100062D60;
                              }

                              v118 = sub_1000675F8;
                              if (v121)
                              {
                                v118 = sub_100067490;
                              }
                            }

                            else
                            {
                              v120 = sub_100062D60;
                            }

                            v50 = a1;
                            *(a1 + 9392) = v120;
                            *(a1 + 9400) = v118;
                            if (!v114)
                            {
                              if (v112)
                              {
                                if (!*(a1 + 656))
                                {
                                  v127 = *(v112 + 3616);
                                  if (v127 >= 1)
                                  {
                                    v128 = sub_1000C0034(2 * v127);
                                    *(a1 + 656) = v128;
                                    if (!v128)
                                    {
                                      *(a1 + 552) = 3;
                                      v50 = a1;
                                      goto LABEL_257;
                                    }

                                    v129 = qword_1001065A8 ? 2 * *(qword_1001065A8 + 3616) : 0;
                                    v130 = sub_1000C0034(v129);
                                    v50 = a1;
                                    *(a1 + 664) = v130;
                                    if (!v130)
                                    {
                                      goto LABEL_256;
                                    }
                                  }
                                }
                              }
                            }

                            goto LABEL_241;
                          }

                          if (v116 != 3)
                          {
LABEL_241:
                            if (*(v50 + 8896))
                            {
                              if (*(v50 + 8904))
                              {
                                v122 = sub_100062AB0;
                              }

                              else
                              {
                                v122 = sub_100062C98;
                              }
                            }

                            else
                            {
                              v122 = sub_1000627A4;
                            }

                            *(v50 + 9408) = v122;
                            if (!qword_1001065A8 || !*(qword_1001065A8 + 4736) || (v123 = *(v50 + 544), v123 > 0xB) || ((1 << v123) & 0x828) == 0 || !*(v50 + 9272) || *(v50 + 9276) || (v124 = sub_100067CD4, *(v50 + 456) != -1))
                            {
                              v124 = sub_100068500;
                            }

                            *(v50 + 528) = v124;
                            if (!*(v50 + 9280) || *(v50 + 9360) < 1)
                            {
                              v125 = v50;
                              v126 = sub_1000B2208(*(v50 + 376));
                              v44[431] = sub_1000BA830(*(v125 + 376), v126);
                              sub_100068BAC(v125);
                              return 1;
                            }

                            goto LABEL_256;
                          }
                        }

                        *(v50 + 9392) = sub_1000631D4;
                        if (v114)
                        {
                          v117 = sub_100067B44;
                        }

                        else
                        {
                          v117 = sub_100067968;
                        }

                        *(v50 + 9400) = v117;
                        goto LABEL_241;
                      }
                    }
                  }
                }

LABEL_256:
                *(v50 + 552) = 3;
                goto LABEL_257;
              }

              v50 = a1;
            }

            else
            {
              v50 = a1;
              *(a1 + 552) = 3;
            }

LABEL_257:
            sub_100062394(v50);
            return 0;
          }

LABEL_114:
          v61 = qword_1001065A8;
          if (qword_1001065A8)
          {
            v62 = *(qword_1001065A8 + 1536);
            if (v62)
            {
              v63 = v62 < 65534;
            }

            else
            {
              v63 = 0;
            }

            v60 = v63;
            HIDWORD(v137) = *(qword_1001065A8 + 1536);
            LODWORD(v137) = *(qword_1001065A8 + 1560);
            if (v58)
            {
              HIDWORD(v136) = *(qword_1001065A8 + 4488);
              v64 = *(qword_1001065A8 + 4496);
LABEL_124:
              LODWORD(v136) = v64;
              goto LABEL_125;
            }

            HIDWORD(v136) = *(qword_1001065A8 + 4472);
            v61 = *(qword_1001065A8 + 4480);
          }

          else
          {
            v60 = 0;
            v64 = 0;
            v137 = 0;
            HIDWORD(v136) = 0;
            if (v58)
            {
              goto LABEL_124;
            }
          }

          v65 = 0;
          LODWORD(v136) = v61;
          goto LABEL_128;
        }
      }

      else
      {
        v55 = a10;
        if (!v51 || (v55 = a10, v59 != 5))
        {
LABEL_103:
          v56 = (v50 + 8888);
          *(v50 + 8888) = v55;
          v57 = (v50 + 8884);
          *(v50 + 8884) = a10;
          if (v51)
          {
            v58 = 0;
            goto LABEL_114;
          }

          goto LABEL_108;
        }
      }

      v58 = 0;
      v56 = (v50 + 8888);
      *(v50 + 8888) = 1;
      v57 = (v50 + 8884);
      *(v50 + 8884) = a10;
      goto LABEL_114;
    }

    v35 = v25;
    if (sub_100022C84(v25, v12))
    {
      v24 = a1;
      v31 = a7;
      v30 = a6;
      v32 = a3;
      v33 = a2;
      v34 = a8;
      v25 = v35;
      goto LABEL_55;
    }

    v38 = sub_1000C0034(8 * v12);
    *(a1 + 9288) = v38;
    if (v38)
    {
      memcpy(v38, v35, v20);
      v39 = sub_1000C0034(8 * v12);
      *(a1 + 9296) = v39;
      if (v39)
      {
        if (qword_1001065A8)
        {
          v40 = (qword_1001065A8 + 4220);
        }

        else
        {
          v40 = 0;
        }

        sub_1000316A8(0, v40, v12, v35, v135);
        v24 = a1;
        v41 = 0;
        *(a1 + 9304) = v12;
        v31 = a7;
        v30 = a6;
        v32 = a3;
        v33 = a2;
        v34 = a8;
        do
        {
          *(*(a1 + 9296) + v41 * 4) = 0;
          v42 = *&v135[v41];
          if (*(*(a1 + 9288) + v41 * 4) != v42)
          {
            *(*(a1 + 9296) + v41 * 4) = v42;
          }

          v41 += 2;
        }

        while (2 * v12 != v41);
        v25 = (a1 + 680);
        v29 = qword_1001065A8;
        if (qword_1001065A8)
        {
          goto LABEL_56;
        }

        goto LABEL_71;
      }

      v24 = a1;
LABEL_144:
      v75 = v24;
      sub_1000BFEC4(*(v24 + 9288));
      v10 = 0;
      *(v75 + 9288) = 0;
      return v10;
    }

    return 0;
  }

  if (a6 != 11)
  {
    goto LABEL_14;
  }

LABEL_2:
  v10 = 0;
  *(a1 + 552) = 3;
  return v10;
}

void sub_1000652BC(uint64_t a1)
{
  if (*(a1 + 9040))
  {
    if (*(a1 + 9008))
    {
      v2 = *(a1 + 9016);
      if (v2)
      {
        sub_100020FD8(v2);
      }
    }

    sub_1000B13D8(a1 + 9084);
    if (*(a1 + 9180))
    {
      sub_1000B13D8(a1 + 9132);
    }

    v7 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v7 = *(qword_1001065A8 + 1072);
    }

    if (*(a1 + 548) == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    sub_100022E1C((a1 + 680), *(a1 + 8872), v8, *(a1 + 9256), v3, v4, v5, v6);

    sub_100068BAC(a1);
  }
}

uint64_t sub_100065360(uint64_t result, const void *a2, _DWORD *a3, int32x4_t a4, double a5, int32x4_t a6, int32x4_t a7, int8x16_t a8, int8x16_t a9)
{
  v10 = result;
  v11 = (result + 0x2000);
  *v74 = 0;
  v12 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    *v74 = *a3;
    v75 = 0;
    if (*(result + 9058) != 0x4000)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (*(qword_1001065A8 + 1648) && !*(result + 632))
  {
    v15 = 1;
    goto LABEL_126;
  }

  if (*(qword_1001065A8 + 1680) && *(result + 9200) >= 1)
  {
    v13 = a3;
    v14 = sub_1000625D4(result, v74);
    result = sub_100012174(*(v10 + 384), a2, v14);
    v12 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      *(v10 + 628) = result > 0;
      *v74 = *v13;
      v75 = 0;
      if (v11[433] == 0x4000)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    *(v10 + 628) = *(qword_1001065A8 + 1472) < result;
    a3 = v13;
  }

  *v74 = *a3;
  if (*(v12 + 1464))
  {
    if (*(v10 + 628))
    {
      result = sub_1000625E4(v10, a2, a3);
      v75 = 0;
      if (v11[433] != 0x4000)
      {
        goto LABEL_20;
      }

LABEL_17:
      v16 = v11[504];
      if (v16)
      {
        *(v10 + 9076) = 0x40000000;
LABEL_30:
        v11[504] = v16 + 1;
        goto LABEL_121;
      }

      goto LABEL_20;
    }

    result = sub_1000625D4(v10, v74);
    a2 = result;
  }

  v75 = 0;
  if (v11[433] == 0x4000)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (a2)
  {
    sub_100003980(*(v10 + 384), a2, v74, *(v10 + 408), v11[504], *(v10 + 628), a4, a5, a6, a7, a8, a9);
  }

  sub_10009B3C0(*(v10 + 9000));
  if (v11[438] < 0 || v11[439] < 0)
  {
    sub_100062638(v10);
  }

  v17 = v11[428];
  v11[433] = v17;
  *(v10 + 9076) += v17;
  *(v11 + 214) = 1073758208;
  v11[430] = -1;
  if (qword_1001065A8 && *(qword_1001065A8 + 4544) && !sub_100022EE0((v10 + 680), *(v10 + 8872), 0, 0, v11[504]))
  {
    *(v10 + 552) = 3;
    sub_10005B760(*(v10 + 9240));
    if (v11[433] == 0x4000)
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_10005B760(*(v10 + 9240));
    if (v11[433] == 0x4000)
    {
LABEL_29:
      result = sub_100003B68(*(v10 + 384), v11[504], (v10 + 436));
      *(v10 + 9076) = 0x40000000;
      *(v10 + 552) = 5;
      v16 = v11[504];
      goto LABEL_30;
    }
  }

  (*(v10 + 520))(v10);
  if (*(v10 + 552) == 3)
  {
    result = sub_100003B68(*(v10 + 384), v11[504], (v10 + 436));
    goto LABEL_121;
  }

  v18 = sub_100039AA0((v10 + 680), *(v10 + 8872));
  v19 = *(v10 + 9044);
  v20 = *(v10 + 9208);
  if (v18)
  {
    if (v19 > v20)
    {
      v21 = *(v10 + 9232);
      v22 = *(v21 + 1);
      v23 = *v21;
      bzero(v22, 2 * v23);
      if (v23 > v11[394])
      {
        ++*(v22 + v11[394]);
      }

      v24 = *(v10 + 9044);
      if (v24 >= 2)
      {
        v25 = 0;
        do
        {
          v26 = *(*(*(v10 + 9032) + 8 * (v25 >> 8)) + 32 * v25 + 24);
          if (v23 > v26)
          {
            v27 = v26 & ~(v26 >> 31);
            ++*(v22 + v27);
            v24 = *(v10 + 9044);
          }

          ++v25;
        }

        while (v25 < v24 - 1);
      }
    }
  }

  else if (v19 > v20)
  {
    v28 = *(v10 + 9232);
    v29 = *(v28 + 1);
    v30 = *v28;
    bzero(v29, 2 * v30);
    if (v30 > v11[394])
    {
      ++*(v29 + v11[394]);
    }

    v31 = *(v10 + 9044);
    if (v31 >= 2)
    {
      v32 = 0;
      do
      {
        v33 = *(*(*(v10 + 9032) + 8 * (v32 >> 8)) + 32 * v32 + 24);
        if (v30 > v33)
        {
          ++*(v29 + v33);
          v31 = *(v10 + 9044);
        }

        ++v32;
      }

      while (v32 < v31 - 1);
    }
  }

  (*(v10 + 528))(v10);
  if (v11[400] == -1 && v11[394] == 0x4000)
  {
    v11[400] = v11[504];
  }

  if (*(v10 + 424))
  {
    sub_100036DD0(v10, v34, v35, v36, v37, v38, v39, v40);
  }

  sub_100003B68(*(v10 + 384), v11[504], (v10 + 436));
  if (!qword_1001065A8 || !*(qword_1001065A8 + 1492) || sub_100022AD4((v10 + 9084)) != 3)
  {
    v50 = v11[496] == v11[392];
    result = sub_1000B13FC((v10 + 9084), v50);
    if (*(v10 + 9180))
    {
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  v41 = 0;
  v42 = *(v10 + 9040) << 8;
  v43 = v42 - *(v10 + 9044);
  v44 = *(v10 + 9032);
  v45 = *(v44 + 8 * (v43 >> 8)) + 32 * -*(v10 + 9044);
  v72 = v11[394];
  v73 = 0x4000;
  v46 = -1;
  while (1)
  {
    v47 = *(v45 + 18);
    if (v47 != 0xFFFF)
    {
      break;
    }

    if (v42 - 1 == v43)
    {
      goto LABEL_128;
    }

    ++v43;
LABEL_60:
    v45 = *(v44 + 8 * (v43 >> 8)) + 32 * v43;
  }

  if (v47 != v46)
  {
    v41 = sub_10009A708(*(v10 + 9256), *(v45 + 18));
    v46 = v47;
  }

  if (v41 == *(v45 + 26))
  {
    if (*(v10 + 544) == 2 || (*v45 & 0x8000000000000000) != 0)
    {
      v48 = *(v45 + 20);
      if (v48 >= v73)
      {
        LOWORD(v48) = v73;
      }

      v73 = v48;
    }
  }

  else
  {
    v49 = *(v45 + 24);
    if (v49 >= v72)
    {
      LOWORD(v49) = v72;
    }

    v72 = v49;
  }

  if (++v43 != v42)
  {
    v44 = *(v10 + 9032);
    goto LABEL_60;
  }

LABEL_128:
  v50 = v73 <= v72;
  result = sub_1000B13FC((v10 + 9084), v50);
  if (!*(v10 + 9180))
  {
    goto LABEL_79;
  }

LABEL_78:
  result = sub_1000B13FC((v10 + 9132), v50);
  if (*(v10 + 544) != 11)
  {
    goto LABEL_85;
  }

LABEL_79:
  v51 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v51 = *(qword_1001065A8 + 4912);
  }

  if (v51 < (v11[394] - v11[428]))
  {
    if (*(v10 + 552) != 6)
    {
      *(v10 + 552) = 6;
    }

LABEL_86:
    result = sub_1000B1580((v10 + 9084));
    if (result)
    {
LABEL_87:
      v58 = 0;
      v59 = 0;
      goto LABEL_101;
    }

    v76 = 0;
    if (*(v10 + 9180))
    {
      if (sub_1000B1580((v10 + 9132)))
      {
        result = sub_10009C04C(*(v10 + 9000), &v76, &v76 + 1);
        if (*(v10 + 9076) + v11[428] == HIDWORD(v76) && v76 != -1)
        {
          if (!*(v10 + 8880))
          {
            goto LABEL_87;
          }

          if (v11[394] == 0x4000)
          {
            v60 = *(v10 + 9040) << 8;
            v61 = *(v10 + 9044);
            v62 = v60 - v61;
            if (v60 - v61 >= v60 - 1)
            {
LABEL_99:
              result = sub_100069A34(v10);
              if (result)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v63 = v61 - 1;
              while (1)
              {
                v64 = *(*(*(v10 + 9032) + 8 * (v62 >> 8)) + 32 * v62);
                v65 = *(v10 + 680 + 8 * ((v64 >> 53) & 0x3FF));
                if (sub_100022AD4(v65) != 3 || sub_10002755C(v65, (v64 >> 35) & 0x3FFFF))
                {
                  break;
                }

                ++v62;
                if (!--v63)
                {
                  goto LABEL_99;
                }
              }
            }
          }
        }
      }
    }

    result = sub_100036B28(v10);
    v58 = 0;
    v59 = result == 0;
    if (result)
    {
LABEL_101:
      if (qword_1001065A8)
      {
        v58 = *(qword_1001065A8 + 5364);
        if (v58)
        {
          result = sub_100036634(v10, *(qword_1001065A8 + 5376), v52, v53, v54, v55, v56, v57);
          v58 = result != 0;
        }
      }
    }

    if ((v59 | v58))
    {
      if (*(v10 + 552) != 6)
      {
        v66 = 1;
        goto LABEL_108;
      }
    }

    else
    {
      v66 = 2;
LABEL_108:
      *(v10 + 552) = v66;
    }

    if (qword_1001065A8 && *(qword_1001065A8 + 816) && v11[394] == 0x4000)
    {
      result = sub_100069908(v10, &v75);
      v67 = qword_1001065A8;
      if (qword_1001065A8)
      {
        v67 = *(qword_1001065A8 + 1504);
      }

      if (v67 < (v75 - result))
      {
        *(v10 + 552) = 2;
      }
    }
  }

  else
  {
LABEL_85:
    if (*(v10 + 552) != 3)
    {
      goto LABEL_86;
    }
  }

  ++v11[504];
  v68 = *(v10 + 9380) + 1;
  *(v10 + 9380) = v68;
  if (v68 == *(v10 + 9372))
  {
    *(v10 + 9380) = 0;
    v69 = *(v10 + 9376);
    if (v69 + 1 == *(v10 + 9368))
    {
      v70 = 0;
    }

    else
    {
      v70 = v69 + 1;
    }

    *(v10 + 9376) = v70;
  }

LABEL_121:
  v71 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 1464))
    {
      *(v10 + 628) = *(v10 + 628) == 0;
    }

    if (*(v71 + 1648))
    {
      v15 = *(v10 + 632) == 0;
LABEL_126:
      *(v10 + 632) = v15;
    }
  }

  return result;
}

uint64_t sub_100065B80(uint64_t a1, int a2)
{
  result = *(a1 + 552);
  if (result != 1)
  {
    return result;
  }

  v5 = 1;
  if (sub_1000B162C((a1 + 9084), a2, 0) == 2)
  {
    v6 = sub_10009C03C(*(a1 + 9000));
    v7 = !v6;
    if (v6)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    v5 = v7;
    if (!*(a1 + 9180))
    {
      return result;
    }
  }

  else
  {
    result = 1;
    if (!*(a1 + 9180))
    {
      return result;
    }
  }

  v8 = result;
  v9 = sub_1000B162C((a1 + 9132), a2, 0);
  result = v8;
  if (v9 == 2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v17 = 0;
    sub_10009C04C(*(a1 + 9000), &v17, &v17 + 1);
    result = 1;
    if (*(a1 + 9076) + *(a1 + 9048) == HIDWORD(v17) && v17 != -1)
    {
      if (*(a1 + 8880))
      {
        if (*(a1 + 8980) == 0x4000)
        {
          v11 = *(a1 + 9040) << 8;
          v12 = *(a1 + 9044);
          v13 = v11 - v12;
          if (v11 - v12 >= v11 - 1)
          {
LABEL_25:
            if (sub_100069A34(a1))
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }

          else
          {
            v14 = v12 - 1;
            while (1)
            {
              v15 = *(*(*(a1 + 9032) + 8 * (v13 >> 8)) + 32 * v13);
              v16 = *(a1 + 680 + 8 * ((v15 >> 53) & 0x3FF));
              if (sub_100022AD4(v16) != 3 || sub_10002755C(v16, (v15 >> 35) & 0x3FFFF))
              {
                return 1;
              }

              ++v13;
              if (!--v14)
              {
                goto LABEL_25;
              }
            }
          }
        }
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_100065D68(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5, _DWORD *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = sub_100036A44(a1);
  if (v22 == 4 || v22 == 3 || v22 == 1)
  {
    goto LABEL_9;
  }

  v23 = *(a1 + 544);
  v24 = v23 > 0xB;
  v25 = (1 << v23) & 0x828;
  if (v24 || v25 == 0)
  {
    v27 = *(a1 + 8872);
  }

  else
  {
    v27 = *(a1 + 8872);
    if (!v27)
    {
LABEL_9:
      result = 0;
LABEL_10:
      *a6 = -1;
      *a3 = 0x40000000;
      return result;
    }
  }

  v33 = sub_100028A28(a1 + 680, v27);
  if (*(a1 + 9320) < a2)
  {
    sub_1000BFEC4(*(a1 + 9312));
    result = sub_1000C0034(1096 * a2);
    *(a1 + 9312) = result;
    if (!result)
    {
      goto LABEL_10;
    }

    *(a1 + 9320) = a2;
  }

  v72 = (a1 + 680);
  v71 = *(a1 + 8872) >= 1 && sub_100022AD4(*(a1 + 680)) == 3;
  *v73 = 0;
  v34 = *(a1 + 9312);
  if (*(a1 + 9008))
  {
    if (qword_1001065A8 && *(qword_1001065A8 + 4736))
    {
      v67 = a8;
      v69 = a4;
      if (*(a1 + 556))
      {
        v73[1] = sub_100069B14(a1, v34, a2, 0, v29, v30, v31, v32);
      }

      else
      {
        v73[1] = sub_100069F10(a1, v34, a2, 0);
      }

LABEL_55:
      v54 = *(a1 + 8872);
      if (v54 >= 1 && (v55 = sub_100022AD4(*(a1 + 680)), v54 = *(a1 + 8872), v55 == 3))
      {
        sub_100021370(*(a1 + 376), v33, *(a1 + 9016), v34, &v73[1], a2, v72, v54, a14);
        if (qword_1001065A8)
        {
          v57 = v67;
          v56 = v69;
          v58 = a9;
          if (*(qword_1001065A8 + 1272) == 0x7FFFFFFFLL)
          {
            v59 = *(a1 + 9284);
          }

          else
          {
            v59 = 0;
          }
        }

        else
        {
          v59 = 0;
          v57 = v67;
          v56 = v69;
          v58 = a9;
        }

        sub_100038E34(v34, v73[1], v72, *(a1 + 8872), v59);
      }

      else
      {
        sub_100021E24(*(a1 + 376), v33, *(a1 + 9016), v34, &v73[1], a2, v72, v54, a14);
        v57 = v67;
        v56 = v69;
        v58 = a9;
      }

      bzero(a7, a5);
      if (qword_1001065A8 && *(qword_1001065A8 + 4592) && *(qword_1001065A8 + 4596))
      {
        if (*(qword_1001065A8 + 4104) < v73[1])
        {
          v73[1] = *(qword_1001065A8 + 4104);
        }

        sub_100039818(a1, 0, v34, &v73[1]);
      }

      if (v71)
      {
        sub_1000618D4(a1, v34, v73[1]);
      }

      sub_100061B70(a1, v34, v73[1]);
      sub_100038600(v34, &v73[1], a2, a3, v56, a5, a6, a7, v57, v58, a10, a11, a12, *(a1 + 376));
      result = v73[1];
      *(a1 + 9324) = v73[1];
      return result;
    }

    result = sub_10009C060(*(a1 + 9000), v34 + 28, v34 + 384, v34 + 856, v34 + 323, (v34 + 146), 59, (v34 + 8), v34, (v34 + 24), 0, 0, v73);
    *(v34 + 4) = 0;
    *(v34 + 264) = 0u;
    *(v34 + 280) = 0u;
    *(v34 + 296) = 0u;
    *(v34 + 307) = 0u;
    if (*(a1 + 8872) >= 1)
    {
      *(v34 + 16) = v72[v73[0]];
    }

    if (result)
    {
      v40 = *(v34 + 8);
      if (!v40)
      {
        return 0;
      }

      v67 = a8;
      v69 = a4;
      if (v33)
      {
        if (v40 >= 1)
        {
          v41 = 0;
          v42 = (v34 + 620);
          do
          {
            *v42 = sub_10002E69C(v33, *(v42 - 59), v42[59], v35, v36, v37, v38, v39);
            ++v42;
            ++v41;
          }

          while (v41 < *(v34 + 8));
        }
      }

      else
      {
        bzero((v34 + 620), 4 * v40);
      }

      v73[1] = 1;
      goto LABEL_55;
    }
  }

  else
  {
    if (a7)
    {
      bzero(a7, a5);
    }

    v43 = *(a1 + 8884);
    if (qword_1001065A8 && *(qword_1001065A8 + 4152))
    {
      if (*(a1 + 556))
      {
        v44 = sub_100069B14(a1, v34, a2, v43, v29, v30, v31, v32);
      }

      else
      {
        v44 = sub_100069F10(a1, v34, a2, v43);
      }

      v73[1] = v44;
      if (v71)
      {
        sub_100021268(*(a1 + 9000), v33, v72, v34, v44);
        sub_100021C28(*(a1 + 376), v34, &v73[1]);
        sub_100038E34(v34, v73[1], v72, *(a1 + 8872), *(a1 + 9284));
        sub_1000618D4(a1, v34, v73[1]);
      }

      if (qword_1001065A8 && *(qword_1001065A8 + 4592) && *(qword_1001065A8 + 4596) && !*(qword_1001065A8 + 5196))
      {
        if (*(qword_1001065A8 + 4104) < v73[1])
        {
          v73[1] = *(qword_1001065A8 + 4104);
        }

        sub_100039818(a1, 0, v34, &v73[1]);
      }

      sub_100061B70(a1, v34, v73[1]);
      sub_100038600(v34, &v73[1], a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, *(a1 + 376));
      result = v73[1];
      *(a1 + 9324) = v73[1];
      if (!result)
      {
        *(a1 + 552) = 3;
        goto LABEL_10;
      }
    }

    else
    {
      v45 = sub_10009C060(*(a1 + 9000), v34 + 28, v34 + 384, v34 + 856, v34 + 323, (v34 + 146), 59, (v34 + 8), v34, (v34 + 24), v43, v34 + 264, v73);
      if (*(a1 + 8872) >= 1)
      {
        *(v34 + 16) = v72[v73[0]];
      }

      *(v34 + 4) = 0;
      if (v71)
      {
        v66 = v45;
        sub_100038E34(v34, 1, v72, *(a1 + 8872), *(a1 + 9284));
        v45 = v66;
      }

      v51 = *(v34 + 8);
      if (!v51 || !v45)
      {
        result = 0;
        *(a1 + 552) = 3;
        *a6 = -1;
        return result;
      }

      v68 = a8;
      v70 = a4;
      if (v33)
      {
        if (v51 >= 1)
        {
          v52 = 0;
          v53 = (v34 + 620);
          do
          {
            *v53 = sub_10002E69C(v33, *(v53 - 59), v53[59], v46, v47, v48, v49, v50);
            ++v53;
            ++v52;
          }

          while (v52 < *(v34 + 8));
        }
      }

      else
      {
        bzero((v34 + 620), 4 * v51);
      }

      v60 = 1;
      v73[1] = 1;
      if (qword_1001065A8)
      {
        v62 = v68;
        v61 = v70;
        v63 = a9;
        if (*(qword_1001065A8 + 4592) && *(qword_1001065A8 + 4596))
        {
          if (*(qword_1001065A8 + 4104) <= 0)
          {
            v73[1] = *(qword_1001065A8 + 4104);
          }

          sub_100039818(a1, 0, v34, &v73[1]);
          v60 = v73[1];
        }
      }

      else
      {
        v62 = v68;
        v61 = v70;
        v63 = a9;
      }

      if (v71)
      {
        sub_1000618D4(a1, v34, v60);
        v60 = v73[1];
      }

      sub_100061B70(a1, v34, v60);
      sub_100038600(v34, &v73[1], a2, a3, v61, a5, a6, a7, v62, v63, a10, a11, a12, *(a1 + 376));
      result = v73[1];
      *(a1 + 9324) = v73[1];
    }

    if (*(a1 + 9280) && result >= 1)
    {
      v64 = 0;
      v65 = v34 + 28;
      do
      {
        *(v65 - 24) += sub_100039178(*(a1 + 376), 1, *(a1 + 9204), a1 + 9202, *(a1 + 460), a1 + 456, v65, *(v65 - 20));
        ++v64;
        result = v73[1];
        v65 += 1096;
      }

      while (v64 < v73[1]);
    }
  }

  return result;
}

uint64_t sub_100066510(uint64_t a1)
{
  if (!sub_10009C03C(*(a1 + 9000)))
  {
    *(a1 + 552) = 3;
  }

  v8 = *(a1 + 544);
  if (v8 <= 0xB && ((1 << v8) & 0x828) != 0)
  {
    v10 = *(a1 + 552);
    if (v10 != 3)
    {
      *(a1 + 552) = 0;
    }

    if (v8 <= 0xB && ((1 << v8) & 0x828) != 0 && v10 != 3)
    {
      v12 = 0;
      v13 = *(a1 + 9040) << 8;
      v14 = v13 - *(a1 + 9044);
      v15 = *(a1 + 9032);
      v16 = *(v15 + 8 * (v14 >> 8)) + 32 * -*(a1 + 9044);
      v24 = 0;
      v17 = -1;
      while (1)
      {
        v18 = *(v16 + 18);
        if (v18 == 0xFFFF)
        {
          if (++v14 == v13)
          {
            break;
          }

          goto LABEL_17;
        }

        v19 = *(a1 + 620);
        if (v19 >= v18)
        {
          if (v18 != v17)
          {
            v12 = sub_10009A708(*(a1 + 9256), *(v16 + 18));
            v17 = v18;
          }

          if (v12 > *(v16 + 26))
          {
            goto LABEL_21;
          }

          v2 = *v16 & 0x7FFFFFFFFFFFFFFFLL;
          if (*(a1 + 544) == 2)
          {
            v24 = 1;
LABEL_31:
            if (*(v16 + 20) != 0x4000)
            {
              *(v16 + 20) += sub_100022C58(a1 + 680, *(a1 + 8872), v2);
            }

            goto LABEL_21;
          }

          v24 = *v16 >> 63;
          if (*v16 < 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v20 = ~v19 + v18;
          v21 = sub_100060958(*(*(a1 + 9328) + 8 * v20), 0);
          v22 = *v16 & 0x3FFFFFFLL;
          if (*(v21 + 4 * v22) < 0)
          {
            v17 = *(v21 + 4 * v22 + 2);
            v23 = (*v16 >> 53) & 0x3FFLL;
            sub_100023498(*(a1 + 680 + 8 * v23));
            v2 = (*(*(a1 + 9344) + 4 * v20) << 35) + (v23 << 53);
            if (v24)
            {
              goto LABEL_31;
            }
          }
        }

LABEL_21:
        if (++v14 == v13)
        {
          break;
        }

        v15 = *(a1 + 9032);
LABEL_17:
        v16 = *(v15 + 8 * (v14 >> 8)) + 32 * v14;
      }
    }
  }

  result = sub_100036634(a1, *(a1 + 428), v2, v3, v4, v5, v6, v7);
  if (result)
  {
    return sub_100036B4C(a1);
  }

  return result;
}

void sub_100066758(uint64_t a1, int a2, int a3, void *a4, uint64_t a5)
{
  sub_1000624DC(a1);
  if (a2 < a3)
  {
    v26 = 0;
    if (a5)
    {
      do
      {
        if (a2 >= 1 && *(a1 + 8892))
        {
          sub_100063A34(a1, *(a5 + 4 * a2));
        }

        v18 = sub_100056EDC(a4, a2, &v26);
        sub_100065360(a1, v18, v26, v19, v20, v21, v22, v23, v24);
        ++a2;
      }

      while (*(a1 + 552) != 3 && a2 < a3);
    }

    else
    {
      do
      {
        v10 = sub_100056EDC(a4, a2, &v26);
        sub_100065360(a1, v10, v26, v11, v12, v13, v14, v15, v16);
        ++a2;
      }

      while (*(a1 + 552) != 3 && a2 < a3);
    }
  }
}

uint64_t sub_100066840(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v5 = *(a1 + 544);
  v6 = v5 > 0xB;
  v7 = (1 << v5) & 0x828;
  if (v6 || v7 == 0)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    v12 = 0;
    if (a2 >= 4 && (a4 - a3) >= 0x20)
    {
      if (a2 < 0x10)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v12 = a2 & 0x7FFFFFF0;
      v14 = (a3 + 16);
      v15 = (a4 + 16);
      *&v16 = 0x4000400040004000;
      *(&v16 + 1) = 0x4000400040004000;
      v17 = v12;
      do
      {
        *(v14 - 1) = v16;
        *v14 = v16;
        v14 += 2;
        *(v15 - 1) = v16;
        *v15 = v16;
        v15 += 2;
        v17 -= 16;
      }

      while (v17);
      if (v12 == a2)
      {
        goto LABEL_20;
      }

      if ((a2 & 0xC) != 0)
      {
LABEL_15:
        v18 = v12;
        v12 = a2 & 0x7FFFFFFC;
        v19 = (a3 + 2 * v18);
        v20 = (a4 + 2 * v18);
        v21 = v18 - v12;
        do
        {
          *v19++ = 0x4000400040004000;
          *v20++ = 0x4000400040004000;
          v21 += 4;
        }

        while (v21);
        if (v12 == a2)
        {
          goto LABEL_20;
        }
      }
    }

    v22 = (a4 + 2 * v12);
    v23 = (a3 + 2 * v12);
    v24 = a2 - v12;
    do
    {
      *v23++ = 0x4000;
      *v22++ = 0x4000;
      --v24;
    }

    while (v24);
  }

LABEL_20:
  *a5 = *(a1 + 8980);
  v25 = (*(a1 + 9040) << 8) - *(a1 + 9044);
  v26 = *(*(a1 + 9032) + 8 * (v25 >> 8)) + 32 * -*(a1 + 9044);
  v27 = *(v26 + 18);
  if (v27 != 0xFFFF)
  {
    v28 = v25 + 1;
    do
    {
      v29 = (*v26 >> 53) & 0x3FFLL;
      if (*(a1 + 620) >= v27 && sub_100028A08(*(a1 + 680 + 8 * v29), *v26))
      {
        v30 = *(v26 + 24);
        if (v30 < *(a3 + 2 * v29))
        {
          *(a3 + 2 * v29) = v30;
        }
      }

      else
      {
        v31 = *(v26 + 24);
        if (v31 < *(a4 + 2 * v29))
        {
          *(a4 + 2 * v29) = v31;
        }
      }

      v26 = *(*(a1 + 9032) + 8 * (v28 >> 8)) + 32 * v28;
      v27 = *(v26 + 18);
      ++v28;
    }

    while (v27 != 0xFFFF);
  }

  return 1;
}

uint64_t sub_100066A38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_100036AE8(a1);
  v10 = *(a1 + 8980);
  v11 = v10 != 0x4000;
  v12 = (*(a1 + 9040) << 8) - *(a1 + 9044);
  v13 = *(a1 + 9032);
  v14 = *(v13 + 8 * (v12 >> 8)) + 32 * -*(a1 + 9044);
  v15 = *(v14 + 18);
  v16 = *(a1 + 620);
  if (v15 != 0xFFFF && v16 >= v15)
  {
    v18 = v10 != 0x4000;
    v19 = v12 + 1;
    while (1)
    {
      v22 = (*v14 >> 53) & 0x3FFLL;
      if (*(a3 + 4 * v22) && *(v14 + 24) < 0x4000)
      {
        if (sub_100028A08(*(a1 + 680 + 8 * v22), *v14))
        {
          sub_1000B1698(a1 + 9084, a4);
          return 1;
        }

        v13 = *(a1 + 9032);
        v16 = *(a1 + 620);
        v18 = 1;
      }

      v14 = *(v13 + 8 * (v19 >> 8)) + 32 * v19;
      v20 = *(v14 + 18);
      ++v19;
      if (v20 == 0xFFFF || v16 < v20)
      {
        v11 = v18;
        break;
      }
    }
  }

  sub_1000B1698(a1 + 9084, 0);
  return v9 < a5 && v11;
}

uint64_t sub_100066B8C(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = *(result + 9076) + *(result + 9048);
  v4 = *(result + 8980);
  if (v4 == 0x4000)
  {
    *a3 = 0x40000000;
    v5 = *(result + 9050);
    if (v5 != 0x4000)
    {
LABEL_3:
      *a4 = *(result + 9076) + v5;
      return result;
    }
  }

  else
  {
    *a3 = *(result + 9076) + v4;
    v5 = *(result + 9050);
    if (v5 != 0x4000)
    {
      goto LABEL_3;
    }
  }

  *a4 = 0x40000000;
  return result;
}

uint64_t sub_100066BF4(uint64_t a1)
{
  v2 = (a1 + 0x2000);
  result = sub_100012654(*(a1 + 384), *(a1 + 8976));
  v4 = v2[394];
  if (v4 > 0x4000)
  {
    v4 = 0x4000;
    v2[394] = 0x4000;
    *(a1 + 8968) = -1;
  }

  v35 = 0;
  v33 = 0;
  if (v4 <= v2[435])
  {
    v5 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v5);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v5);
      LOWORD(v4) = v2[394];
    }

    v6 = result - v2[433] + v4;
    v2[394] = v6;
    v2[396] = v6;
    if (v6 < v2[428])
    {
      v2[428] = v6;
      v2[430] = v2[393];
      v2[496] = v2[392];
    }
  }

  else
  {
    v2[396] = 0x4000;
    v2[394] = 0x4000;
  }

  v7 = *(a1 + 620);
  v8 = *(a1 + 592);
  v9 = *(v8 + 8 * ((v7 + 1) >> 8)) + 24 * (v7 + 1);
  v11 = *(v9 + 16);
  v10 = (v9 + 16);
  if (v11 == 0x4000)
  {
    *v10 = 0x3FFF;
    v7 = *(a1 + 620);
    v8 = *(a1 + 592);
  }

  v12 = 0;
  v13 = (*(a1 + 9040) << 8) - *(a1 + 9044);
  LODWORD(v35) = 0;
  HIDWORD(v35) = v13;
  v14 = *(a1 + 9364) + v7;
  do
  {
    v15 = *(v8 + 8 * (v12 >> 8)) + 24 * v12;
    v33 = v15;
    v16 = *(v15 + 16);
    ++v12;
  }

  while (v16 == 0x4000);
  if (v16 == 0x3FFF)
  {
    *(v15 + 16) = 0x4000;
    v17 = *(a1 + 592);
    v15 = *(v17 + 8 * (v12 >> 8)) + 24 * v12;
    v33 = v15;
    if (v12 <= v14)
    {
      while (*(v15 + 16) == 0x4000)
      {
        ++v12;
        v15 = *(v17 + 8 * (v12 >> 8)) + 24 * v12;
        v33 = v15;
        if (v14 + 1 == v12)
        {
          v12 = v14 + 1;
          break;
        }
      }
    }
  }

  else
  {
    --v12;
  }

  v34 = v12;
  v18 = *(a1 + 9032);
  v19 = *(v18 + 8 * (v13 >> 8)) + 32 * v13;
  v20 = *(a1 + 620);
  v21 = *(v19 + 18);
  if (v12 <= v20 || v20 >= v21)
  {
    v23 = v15;
    do
    {
      if (v12 < v21 || v12 == v21 && (*v23 & 0x7FFFFFFFFFFFFFFFuLL) < (*v19 & 0x7FFFFFFFFFFFFFFFuLL))
      {
        result = sub_100068E58(a1, v12, v23, v12, v13, &v35);
        if (*(a1 + 552) == 3)
        {
          return result;
        }
      }

      else
      {
        result = (*(a1 + 536))(a1, &v35 + 4, &v35, v12, v23);
        if (*(a1 + 552) == 3)
        {
          return result;
        }

        if (!result)
        {
          goto LABEL_46;
        }
      }

      if (*(a1 + 8896))
      {
        if (*(v23 + 14) == 0xFFFFLL)
        {
          *(v15 + 16) = 0x4000;
          v28 = *(a1 + 592);
          do
          {
            ++v12;
            v23 = *(v28 + 8 * (v12 >> 8)) + 24 * v12;
            v33 = v23;
            v29 = *(v23 + 16);
          }

          while (v29 == 0x4000);
          v15 = v23;
          if (v29 == 0x3FFF)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v23 = *(*(a1 + 592) + ((*(v23 + 14) >> 5) & 0x7F8)) + 24 * *(v23 + 14);
          v33 = v23;
          if (*(v23 + 16) == 0x3FFF)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v24 = *(a1 + 592);
        do
        {
          ++v12;
          v23 = *(v24 + 8 * (v12 >> 8)) + 24 * v12;
          v33 = v23;
          v25 = *(v23 + 16);
        }

        while (v25 == 0x4000);
        if (v25 == 0x3FFF)
        {
LABEL_35:
          *(v23 + 16) = 0x4000;
          v26 = v12 + 1;
          v27 = *(a1 + 592);
          v23 = *(v27 + 8 * ((v12 + 1) >> 8)) + 24 * (v12 + 1);
          v33 = v23;
          if (v12 < v14)
          {
            while (*(v23 + 16) == 0x4000)
            {
              ++v26;
              v23 = *(v27 + 8 * (v26 >> 8)) + 24 * v26;
              v33 = v23;
              if (v26 - v14 == 1)
              {
                v12 = v14 + 1;
                goto LABEL_46;
              }
            }
          }

          v12 = v26;
        }
      }

LABEL_46:
      v13 = HIDWORD(v35);
      v18 = *(a1 + 9032);
      v19 = *(v18 + ((HIDWORD(v35) >> 5) & 0x7FFFFF8)) + 32 * BYTE4(v35);
      v30 = *(a1 + 620);
      v21 = *(v19 + 18);
    }

    while (v12 <= v30 || v30 >= v21);
  }

  v34 = v12;
  while (v34 <= v14)
  {
    v31 = &v33;
LABEL_50:
    result = sub_100069020(a1, &v35 + 1, &v35, v31, &v34);
    v18 = *(a1 + 9032);
    v19 = *(v18 + ((HIDWORD(v35) >> 5) & 0x7FFFFF8)) + 32 * BYTE4(v35);
    if (*(a1 + 552) == 3)
    {
      return result;
    }
  }

  if (*(v19 + 18) != -1)
  {
    v31 = 0;
    goto LABEL_50;
  }

  v32 = *(v18 + ((v35 >> 5) & 0x7FFFFF8)) + 32 * v35;
  *(v32 + 18) = -1;
  *v32 = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 9044) = v35 + 1;
  return result;
}

uint64_t sub_100067084(uint64_t a1)
{
  v2 = (a1 + 0x2000);
  v23 = 0;
  v21 = *(*(a1 + 592) + ((*(a1 + 612) >> 5) & 0x7FFFFF8)) + 24 * *(a1 + 612);
  *(v21 + 14) = 0xFFFF;
  result = sub_100012654(*(a1 + 384), *(a1 + 8976));
  v4 = v2[394];
  if (v4 > 0x4000)
  {
    v4 = 0x4000;
    v2[394] = 0x4000;
    *(a1 + 8968) = -1;
  }

  if (v4 <= v2[435])
  {
    v5 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v5);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v5);
      LOWORD(v4) = v2[394];
    }

    v6 = result - v2[433] + v4;
    v2[394] = v6;
    v2[396] = v6;
    if (v6 < v2[428])
    {
      v2[428] = v6;
      v2[430] = v2[393];
      v2[496] = v2[392];
    }
  }

  else
  {
    v2[396] = 0x4000;
    v2[394] = 0x4000;
  }

  v7 = (*(a1 + 9040) << 8) - *(a1 + 9044);
  LODWORD(v23) = 0;
  HIDWORD(v23) = v7;
  v8 = *(a1 + 592);
  v9 = -1;
  do
  {
    ++v9;
    v10 = *(v8 + 8 * (v9 >> 8)) + 24 * v9;
    v21 = v10;
  }

  while (*(v10 + 16) == 0x4000);
  v22 = v9;
  v11 = *(a1 + 9032);
  v12 = *(v11 + 8 * (v7 >> 8)) + 32 * v7;
  v13 = *(v10 + 14);
  v14 = *(a1 + 620);
  v15 = *(v12 + 18);
  if (v14 >= v13 || v14 >= v15)
  {
    do
    {
      if (v13 < v15 || v13 == v15 && (*v10 & 0x7FFFFFFFFFFFFFFFuLL) < (*v12 & 0x7FFFFFFFFFFFFFFFuLL))
      {
        result = sub_100068E58(a1, v13, v10, v9, v7, &v23);
        if (*(a1 + 552) == 3)
        {
          return result;
        }
      }

      else
      {
        result = (*(a1 + 536))(a1, &v23 + 4, &v23, v13, v10);
        if (*(a1 + 552) == 3)
        {
          return result;
        }

        if (!result)
        {
          goto LABEL_21;
        }
      }

      v17 = *(a1 + 592);
      do
      {
        ++v9;
        v10 = *(v17 + 8 * (v9 >> 8)) + 24 * v9;
        v21 = v10;
      }

      while (*(v10 + 16) == 0x4000);
LABEL_21:
      v7 = HIDWORD(v23);
      v11 = *(a1 + 9032);
      v12 = *(v11 + ((HIDWORD(v23) >> 5) & 0x7FFFFF8)) + 32 * BYTE4(v23);
      v13 = *(v10 + 14);
      v18 = *(a1 + 620);
      v15 = *(v12 + 18);
    }

    while (v18 >= v13 || v18 >= v15);
  }

  v22 = v9;
  if (v13 != 0xFFFF)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (*(v12 + 18) == -1)
  {
    v20 = *(v11 + ((v23 >> 5) & 0x7FFFFF8)) + 32 * v23;
    *(v20 + 18) = -1;
    *v20 = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 9044) = v23 + 1;
  }

  else
  {
LABEL_32:
    while (1)
    {
      result = sub_100069020(a1, &v23 + 1, &v23, &v21, &v22);
      if (*(a1 + 552) == 3)
      {
        break;
      }

      v11 = *(a1 + 9032);
      v12 = *(v11 + ((HIDWORD(v23) >> 5) & 0x7FFFFF8)) + 32 * BYTE4(v23);
      if (*(v21 + 14) == 0xFFFF)
      {
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t sub_100067380(uint64_t a1, int a2)
{
  v2 = (a2 + 255) >> 8;
  if (v2 <= *(a1 + 9040))
  {
    return 1;
  }

  result = sub_1000C0034((8 * v2));
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a1 + 9040);
  if (v6 < v2)
  {
    v7 = (result + 8 * v6);
    v8 = v2 - v6;
    while (1)
    {
      v9 = sub_1000C0034(0x2000);
      *v7 = v9;
      if (!v9)
      {
        break;
      }

      ++v6;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

  if (v6 == v2)
  {
LABEL_9:
    j__memmove(v5, *(a1 + 9032), 8 * *(a1 + 9040));
    sub_1000BFEC4(*(a1 + 9032));
    *(a1 + 9032) = v5;
    *(a1 + 9040) = v2;
    return 1;
  }

  if (v6 > *(a1 + 9040))
  {
    v10 = v6;
    do
    {
      v11 = v10 - 1;
      sub_1000BFEC4(*(v5 + v10 - 1));
      v10 = v11;
    }

    while (v11 > *(a1 + 9040));
  }

  sub_1000BFEC4(v5);
  return 0;
}

uint64_t sub_100067490(uint64_t a1, __int16 a2, unsigned int a3, uint64_t a4, int a5)
{
  result = sub_1000BA7F4(*(a1 + 376), a3, 0);
  v18 = result;
  if (*(a1 + 612) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 592) + 8 * (v9 >> 8)) + 24 * v9;
      v11 = a2;
      if (*(a1 + 9280))
      {
        v12 = sub_1000BA7F4(*(a1 + 376), *(v10 + 14), 0);
        result = sub_1000BABCC(*(a1 + 376), &v18, 1u, v12);
        v11 = result + a2;
      }

      v13 = *(v10 + 16);
      v14 = *(a1 + 9008);
      if (v13 <= v11)
      {
        if (v14)
        {
          v17 = *(v10 + 8);
          if (v17 != a5)
          {
            result = sub_100020FE0(*(a1 + 9016), a5, v17, v11 - v13, v11 - *(a1 + 9048));
          }
        }
      }

      else
      {
        if (v14)
        {
          v15 = *(v10 + 8);
          if (v13 != 0x4000 && v15 != a5)
          {
            result = sub_100020FE0(*(a1 + 9016), v15, a5, v13 - v11, v13 - *(a1 + 9048));
          }
        }

        *(v10 + 16) = v11;
        *(v10 + 8) = a5;
      }

      ++v9;
    }

    while (v9 < *(a1 + 612));
  }

  return result;
}

uint64_t sub_1000675F8(uint64_t result, __int16 a2, unsigned int a3, uint64_t a4, int a5)
{
  v5 = *(result + 612);
  if (v5)
  {
    v9 = result;
    v10 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v10 = *(qword_1001065A8 + 3616);
    }

    v20 = 0;
    if (v10 >= v5 && *(result + 9280) || (result = sub_100067490(result, a2, a3, a4, a5), *(v9 + 9280)))
    {
      v20 = sub_1000BA7F4(*(v9 + 376), a3, 0);
      result = sub_1000BAC64(*(v9 + 376), 1u, &v20, *(v9 + 612), *(v9 + 656), *(v9 + 672), *(v9 + 664));
      *(v9 + 672) = result;
    }

    if (*(v9 + 612) >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (*(v9 + 9280))
        {
          v12 = *(*(v9 + 664) + 2 * v11);
        }

        v13 = *(*(v9 + 592) + 8 * (v11 >> 8)) + 24 * v11;
        v14 = (v12 + a2);
        v15 = *(v13 + 16);
        v16 = *(v9 + 9008);
        if (v14 >= v15)
        {
          if (v16)
          {
            v19 = *(v13 + 8);
            if (v19 != a5)
            {
              result = sub_100020FE0(*(v9 + 9016), a5, v19, v14 - v15, v14 - *(v9 + 9048));
            }
          }
        }

        else
        {
          if (v16)
          {
            v17 = *(v13 + 8);
            if (v15 != 0x4000 && v17 != a5)
            {
              result = sub_100020FE0(*(v9 + 9016), v17, a5, v15 - v14, v15 - *(v9 + 9048));
            }
          }

          *(v13 + 16) = v14;
          *(v13 + 8) = a5;
        }

        ++v11;
      }

      while (v11 < *(v9 + 612));
    }
  }

  return result;
}

uint64_t sub_1000677BC(uint64_t a1, __int16 a2, unsigned int a3, unint64_t a4, int a5)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v9 = *(a1 + 9192);
  LODWORD(v19) = a5;
  v10 = sub_1000BA7F4(*(a1 + 376), a3, 0);
  v21 = v10;
  v11 = *(a1 + 8 * ((a4 >> 53) & 0x3FF) + 680);
  result = sub_100025D04(v11, a3, v10, a4, *(a1 + 9224), *(a1 + 9216), *(a1 + 9188), v9);
  v13 = result;
  if (result > *(a1 + 9188))
  {
    v14 = 2 * result;
    result = sub_1000C0034(48 * result);
    if (!result)
    {
      *(a1 + 552) = 3;
      return result;
    }

    v9 = result;
    sub_1000BFEC4(*(a1 + 9192));
    *(a1 + 9188) = v14;
    *(a1 + 9192) = v9;
    result = sub_100025D04(v11, a3, v10, a4, *(a1 + 9224), *(a1 + 9216), v14, v9);
    v13 = result;
  }

  if (v13 >= 1)
  {
    do
    {
      v15 = v9[1] + a2;
      LOWORD(v20) = v15;
      if (*(a1 + 9280))
      {
        v16 = sub_1000BA7F4(*(a1 + 376), *v9, 0);
        result = sub_1000BABCC(*(a1 + 376), &v21, 1u, v16);
        v15 = v20 + result;
        LOWORD(v20) = v20 + result;
      }

      if (*(a1 + 9062) >= v15)
      {
        if (*(v9 + 4))
        {
          v17 = *(v9 + 1) | 0x8000000000000000;
        }

        else
        {
          v17 = *(v9 + 1);
        }

        v18 = v17;
        HIWORD(v19) = *v9;
        result = (*(a1 + 9408))(a1, &v18);
      }

      v9 += 12;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_100067968(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v23 = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v17 = 0;
  v18 = a5;
  v9 = (a4 >> 53) & 0x3FF;
  v19 = 0;
  v24 = -1;
  v10 = *(a1 + 8 * v9 + 680);
  sub_100025CE4(v10, v22);
  (*(v10 + 104))(v10, v22, a3, a4, 0xFFFFLL);
  result = (*(v10 + 112))(v22, v10, &v20);
  if (result)
  {
    while (!*(a1 + 9280) || *(&v21 + 1) != 0)
    {
      LOWORD(v19) = WORD1(v20) + a2;
      if (*(a1 + 9062) >= (WORD1(v20) + a2))
      {
        goto LABEL_15;
      }

LABEL_5:
      result = (*(v10 + 112))(v22, v10, &v20);
      if (!result)
      {
        return result;
      }
    }

    if (v24 == -1)
    {
      v24 = sub_1000BA7F4(*(a1 + 376), a3, 0);
    }

    v14 = sub_1000BA7F4(*(a1 + 376), v20, 0);
    LOWORD(v19) = sub_1000BABCC(*(a1 + 376), &v24, 1u, v14) + a2;
    if (*(a1 + 9062) < v19)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (v21)
    {
      v15 = *(&v20 + 1) | 0x8000000000000000;
    }

    else
    {
      v15 = *(&v20 + 1);
    }

    v17 = v15;
    if (*(&v21 + 1))
    {
      v16[0] = v20;
      v16[1] = v21;
      v12 = sub_1000616AC(a1, v9, v16) + *(a1 + 620) + 1;
    }

    else
    {
      LOWORD(v12) = v20;
    }

    HIWORD(v18) = v12;
    (*(a1 + 9408))(a1, &v17);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100067B44(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v16 = 0;
  v10 = (a4 >> 53) & 0x3FF;
  v18 = 0;
  v17 = a5;
  v11 = *(a1 + 8 * v10 + 680);
  sub_100025CE4(v11, v21);
  if (qword_1001065A8 && *(qword_1001065A8 + 4544))
  {
    sub_1000269BC(v21, a5, a2);
  }

  (*(v11 + 104))(v11, v21, a3, a4, 0xFFFFLL);
  for (result = (*(v11 + 112))(v21, v11, &v19); result; result = (*(v11 + 112))(v21, v11, &v19))
  {
    LOWORD(v18) = WORD1(v19) + a2;
    if (*(a1 + 9062) >= (WORD1(v19) + a2))
    {
      if (v20)
      {
        v14 = *(&v19 + 1) | 0x8000000000000000;
      }

      else
      {
        v14 = *(&v19 + 1);
      }

      v16 = v14;
      if (*(&v20 + 1))
      {
        v15[0] = v19;
        v15[1] = v20;
        v13 = sub_1000616AC(a1, v10, v15) + *(a1 + 620) + 1;
      }

      else
      {
        LOWORD(v13) = v19;
      }

      HIWORD(v17) = v13;
      (*(a1 + 9408))(a1, &v16);
    }
  }

  return result;
}

void sub_100067CD4(uint64_t a1)
{
  v2 = a1 + 680;
  v3 = sub_100028A28(a1 + 680, *(a1 + 8872));
  sub_100063488(a1);
  v4 = *(a1 + 8896);
  if (v4)
  {
    v4 = *(a1 + 616);
  }

  *(a1 + 612) = v4;
  v5 = *(a1 + 544);
  if (v5 == 5 || v5 == 2)
  {
    sub_1000634F4(a1);
  }

  v7 = *(a1 + 9048);
  v8 = v7 + *(a1 + 9060);
  if (v8 > 16382)
  {
    LOWORD(v8) = 0x3FFF;
  }

  v9 = v8;
  v10 = *(a1 + 9208);
  if (*(a1 + 9044) > v10)
  {
    v9 = sub_10005B794(*(a1 + 9232), v10, v7, v8);
  }

  if (*(a1 + 544) == 3 && qword_1001065A8 && *(qword_1001065A8 + 1248) >= 1 && *(a1 + 8980) == *(a1 + 9048) && sub_10000348C(*(a1 + 384)))
  {
    v11 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v11 = *(qword_1001065A8 + 1248);
    }

    v12 = (v9 - v11);
    if (v12 <= *(a1 + 9048))
    {
      v9 = *(a1 + 9048);
    }

    else
    {
      v9 = v12;
    }
  }

  *(a1 + 9062) = v9;
  v13 = *(a1 + 8980);
  *(a1 + 9056) = *(a1 + 8980);
  if (v13 <= v9)
  {
    (*(a1 + 9392))(a1);
  }

  else
  {
    *(a1 + 8980) = 0x4000;
    *(a1 + 8984) = 0x4000;
  }

  v14 = *(a1 + 9044);
  v15 = *(a1 + 9032);
  v16 = (*(v15 + 8 * ((v14 - 1) >> 8)) + 32 * (v14 - 1));
  v17 = *(a1 + 9040) << 8;
  v18 = *(v15 + 8 * ((v17 - 1) >> 8));
  v19 = *v16;
  *(v18 + 8176) = v16[1];
  *(v18 + 8160) = v19;
  if (*(a1 + 9044) == 1)
  {
    if (!*(a1 + 8896))
    {

      sub_10006345C(a1);
    }
  }

  else
  {
    v88 = v3;
    v20 = *(a1 + 9032);
    v21 = *(v20 + 8 * ((v14 - 2) >> 8));
    v22 = v17 - 2;
    v23 = *(v20 + 8 * ((v17 - 2) >> 8));
    v24 = *(a1 + 9076);
    v25 = *(a1 + 9068);
    v26 = sub_100061794(a1);
    v27 = v14 - 2;
    if (v14 < 2)
    {
      v32 = 1;
    }

    else
    {
      v28 = 0;
      v29 = (v24 - v25);
      v30 = (v23 + 8128);
      v31 = v21 + 32 * (v14 - 2);
      v32 = 1;
      while (2)
      {
        v33 = v27;
        while (1)
        {
          while (1)
          {
            if (*(a1 + 620) >= *(v31 + 18))
            {
              v58 = 0;
              v59 = 0xFFFFFFFFLL;
              v60 = -1;
              do
              {
                while (*(v31 + 24) > *(a1 + 9062))
                {
                  if (v33)
                  {
                    v31 = *(*(a1 + 9032) + 8 * ((v33 - 1) >> 8)) + 32 * (v33 - 1);
                    v34 = v33-- <= 0;
                    if (!v34)
                    {
                      continue;
                    }
                  }

                  goto LABEL_60;
                }

                v61 = *(v31 + 16);
                *v30 = *v31;
                v30[1] = v61;
                v62 = *(v31 + 18);
                if (v62 != v60)
                {
                  v86 = v26;
                  v63 = v29;
                  v64 = v28;
                  v89 = v59;
                  v65 = sub_10009A708(*(a1 + 9256), v62);
                  v59 = v89;
                  v28 = v64;
                  v29 = v63;
                  v58 = v65;
                  v26 = v86;
                  v60 = v62;
                }

                ++v32;
                v66 = *(v31 + 26);
                if (v58 - 1 <= v66)
                {
                  if (v58 == v66)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    v59 = v59;
                  }

                  if (v58 == v66)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = v28;
                  }

                  if (v58 - 1 == v66)
                  {
                    v69 = *(v31 + 24);
                    if (v69 < *(a1 + 9056))
                    {
                      *(a1 + 9056) = v69;
                    }

                    v28 = 0;
                    v59 = (*(a1 + 568) - 1);
                  }

                  v70 = (*(v31 + 2 * v59 + 20) - *(a1 + 9048));
                  if (v70 <= v26)
                  {
                    v84 = v29;
                    v87 = v26;
                    v90 = v59;
                    v82 = *v31;
                    v76 = v28;
                    v71 = sub_10009B3D0(*(a1 + 9000), *(v31 + 4 * v59 + 8), v60, *v31 & 0x7FFFFFFFFFFFFFFFLL, v28, v70, *(a1 + 9200));
                    v72 = (*(a1 + 9048) + *(a1 + 9068) + v70);
                    if (v72 <= *(a1 + 9062))
                    {
                      v80 = v71;
                      (*(a1 + 9400))(a1, v72, v60, v82 & 0x7FFFFFFFFFFFFFFFLL, v71);
                      LODWORD(v71) = v80;
                    }

                    v29 = v84;
                    v26 = v87;
                    v28 = v76;
                    v59 = v90;
                    if ((*v31 & 0x8000000000000000) != 0 && v76)
                    {
                      v73 = v71;
                      v74 = sub_100022C58(v2, *(a1 + 8872), v82 & 0x7FFFFFFFFFFFFFFFLL);
                      sub_10009B824(*(a1 + 9000), v73, v84 + v72 + v74);
                      v59 = v90;
                      v28 = v76;
                      v29 = v84;
                      v26 = v87;
                    }
                  }
                }

                else
                {
                  v67 = *(v31 + 24);
                  if (v67 < *(a1 + 9056))
                  {
                    *(a1 + 9056) = v67;
                  }
                }

                if (!v33)
                {
                  break;
                }

                v68 = *(a1 + 9032);
                v31 = *(v68 + 8 * ((v33 - 1) >> 8)) + 32 * (v33 - 1);
                --v22;
                v30 = (*(v68 + 8 * (v22 >> 8)) + 32 * v22);
                v34 = v33-- <= 0;
              }

              while (!v34);
              goto LABEL_60;
            }

            if (*(v31 + 24) <= *(a1 + 9062))
            {
              break;
            }

            if (v33)
            {
              v31 = *(*(a1 + 9032) + 8 * ((v33 - 1) >> 8)) + 32 * (v33 - 1);
              v34 = v33-- <= 0;
              if (!v34)
              {
                continue;
              }
            }

            goto LABEL_60;
          }

          v35 = v28;
          v83 = v29;
          v85 = v26;
          v36 = *(v31 + 16);
          *v30 = *v31;
          v30[1] = v36;
          --v22;
          v30 = (*(*(a1 + 9032) + 8 * (v22 >> 8)) + 32 * v22);
          ++v32;
          v37 = ~*(a1 + 620) + *(v31 + 18);
          v38 = sub_100060958(*(*(a1 + 9328) + 8 * v37), 0);
          v39 = v38;
          v40 = *v31 & 0x3FFFFFFLL;
          v41 = (v38 + 4 * v40);
          if (*v41 < 0)
          {
            v43 = (v31 + 20);
            v44 = (v31 + 8);
            v28 = 1;
            v26 = v85;
            goto LABEL_48;
          }

          v40 = v41[1];
          v42 = *(v38 + 4 * v40);
          v29 = v83;
          v26 = v85;
          if (v42 < 0)
          {
            break;
          }

          if (v33)
          {
            v28 = v35;
            v31 = *(*(a1 + 9032) + 8 * ((v33 - 1) >> 8)) + 32 * (v33 - 1);
            v34 = v33-- <= 0;
            if (!v34)
            {
              continue;
            }
          }

          goto LABEL_60;
        }

        v28 = 0;
        v45 = *(a1 + 568) - 1;
        v43 = (v31 + 2 * v45 + 20);
        v44 = (v31 + 4 * v45 + 8);
LABEL_48:
        v81 = *(*(a1 + 9344) + 4 * v37);
        v75 = v28;
        v77 = *(v39 + 4 * v40 + 2);
        v46 = *v43;
        v47 = *v44;
        if (!*(a1 + 9284) || v47 == -1 || (v48 = sub_10009C014(*(a1 + 9000), *v44), v49 = sub_1000BAD08(*(a1 + 376), v48, v77), v28 = v75, v50 = v49, v26 = v85, v50))
        {
          v51 = (v46 - *(a1 + 9048));
          if (v51 <= v26)
          {
            v52 = (*v31 >> 53) & 0x3FFLL;
            v78 = v51;
            sub_100023498(*(v2 + 8 * v52));
            sub_10009B3D0(*(a1 + 9000), v47, v77, (v52 << 53) + (v81 << 35), v75, v78, *(a1 + 9200));
            v79 = (*(a1 + 9048) + *(a1 + 9068) + v78);
            if (v79 <= *(a1 + 9062) && (v79 + sub_10002E608(v88, v81, 0, v53, v54, v55, v56, v57)) <= *(a1 + 9062))
            {
              (*(a1 + 9400))(a1);
            }

            v26 = v85;
            v28 = v75;
          }
        }

        if (v33)
        {
          v27 = v33 - 1;
          v31 = *(*(a1 + 9032) + 8 * ((v33 - 1) >> 8)) + 32 * (v33 - 1);
          v29 = v83;
          if (v33 > 0)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_60:
    if (sub_10009C034(*(a1 + 9000)))
    {
      *(a1 + 552) = 3;
    }

    else
    {
      if (*(a1 + 612) >= (*(a1 + 608) << 8) - 1)
      {
        *(a1 + 552) = 3;
      }

      if (!*(a1 + 8896))
      {
        sub_10006345C(a1);
      }

      *(a1 + 9044) = v32;
    }
  }
}

void sub_100068500(uint64_t a1)
{
  v74 = 0x40000000;
  v75 = -1;
  v73 = 0;
  v2 = *(a1 + 376);
  sub_100063488(a1);
  v3 = *(a1 + 8896);
  if (v3)
  {
    v3 = *(a1 + 616);
  }

  *(a1 + 612) = v3;
  v4 = *(a1 + 544);
  if (v4 == 5 || v4 == 2)
  {
    sub_1000634F4(a1);
  }

  v6 = *(a1 + 9048);
  v7 = v6 + *(a1 + 9060);
  if (v7 > 16382)
  {
    LOWORD(v7) = 0x3FFF;
  }

  v8 = v7;
  v9 = *(a1 + 9208);
  if (*(a1 + 9044) > v9)
  {
    v8 = sub_10005B794(*(a1 + 9232), v9, v6, v7);
  }

  v10 = &qword_1001065A8;
  if (*(a1 + 544) == 3 && qword_1001065A8 && *(qword_1001065A8 + 1248) >= 1 && *(a1 + 8980) == *(a1 + 9048) && sub_10000348C(*(a1 + 384)))
  {
    v11 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v11 = *(qword_1001065A8 + 1248);
    }

    v12 = (v8 - v11);
    if (v12 <= *(a1 + 9048))
    {
      v8 = *(a1 + 9048);
    }

    else
    {
      v8 = v12;
    }
  }

  *(a1 + 9062) = v8;
  v13 = *(a1 + 8980);
  *(a1 + 9056) = *(a1 + 8980);
  if (v13 <= v8)
  {
    (*(a1 + 9392))(a1);
  }

  else
  {
    *(a1 + 8980) = 0x4000;
    *(a1 + 8984) = 0x4000;
  }

  v14 = *(a1 + 9044);
  v15 = *(a1 + 9032);
  v16 = (*(v15 + 8 * ((v14 - 1) >> 8)) + 32 * (v14 - 1));
  v17 = *(a1 + 9040) << 8;
  v18 = *(v15 + 8 * ((v17 - 1) >> 8));
  v19 = *v16;
  *(v18 + 8176) = v16[1];
  *(v18 + 8160) = v19;
  if (*(a1 + 9044) == 1)
  {
    if (!*(a1 + 8896))
    {

      sub_10006345C(a1);
    }

    return;
  }

  v20 = v14 - 2;
  v21 = *(a1 + 9032);
  v22 = *(v21 + 8 * (v20 >> 8)) + 32 * v20;
  v23 = v17 - 2;
  v24 = (*(v21 + 8 * ((v17 - 2) >> 8)) + 8128);
  v70 = sub_100061794(a1);
  v71 = 0;
  v72 = 0;
  v25 = 0;
  v26 = -1;
  v27 = 1;
  while (1)
  {
    v28 = *(a1 + 9062);
    if (*(v22 + 24) > v28)
    {
      break;
    }

LABEL_35:
    v30 = *(v22 + 16);
    *v24 = *v22;
    v24[1] = v30;
    v31 = *(v22 + 18);
    if (v31 != v26)
    {
      v25 = sub_10009A708(*(a1 + 9256), *(v22 + 18));
      v26 = v31;
    }

    ++v27;
    v32 = *(v22 + 26);
    if (v25 - 1 <= v32)
    {
      v35 = v71;
      if (v25 == v32)
      {
        v35 = 1;
      }

      v71 = v35;
      if (v25 == v32)
      {
        v36 = 0;
      }

      else
      {
        v36 = v72;
      }

      if (v25 - 1 == v32)
      {
        v37 = *(v22 + 24);
        if (v37 < *(a1 + 9056))
        {
          *(a1 + 9056) = v37;
        }

        v71 = 0;
        v38 = *(a1 + 568) - 1;
      }

      else
      {
        v38 = v36;
      }

      v72 = v38;
      v68 = (*(v22 + 2 * v38 + 20) - *(a1 + 9048));
      if (v68 <= v70)
      {
        v66 = v25;
        if (*(a1 + 456) == -1)
        {
          v39 = 0;
        }

        else
        {
          v73 = sub_1000BA7F4(*(a1 + 376), v26, 0);
          v39 = sub_1000BABCC(*(a1 + 376), &v73, 1u, *(a1 + 456));
        }

        v67 = *v22;
        v40 = *(a1 + 544);
        if (v40 <= 0xB && ((1 << v40) & 0x828) != 0)
        {
          v39 += sub_100022C58(a1 + 680, *(a1 + 8872), v67 & 0x7FFFFFFFFFFFFFFFLL);
          v40 = *(a1 + 544);
        }

        v41 = *(a1 + 9048);
        v42 = *(a1 + 9076);
        v65 = v39;
        if (v40 == 2)
        {
          LODWORD(v43) = 1;
        }

        else
        {
          v43 = *v22 >> 63;
        }

        v44 = 1;
        v64 = v43;
        if (*(a1 + 9008) && v43 && (!*v10 || !*(*v10 + 4736)))
        {
          v45 = *(a1 + 9048);
          v62 = *(a1 + 9076);
          sub_10009C04C(*(a1 + 9000), &v75, &v74);
          v42 = v62;
          v41 = v45;
          v44 = v74 == 0x40000000;
        }

        v63 = v68 + v65 + v41 + v42;
        v46 = sub_10009B3D0(*(a1 + 9000), *(v22 + 4 * v72 + 8), v26, v67 & 0x7FFFFFFFFFFFFFFFLL, v71, v68, *(a1 + 9200));
        v47 = v46;
        if (!v44)
        {
          v48 = v75;
          if (v46 != v75)
          {
            v49 = v74 - v63;
            if (v74 <= v63)
            {
              v49 = v63 - v74;
              v55 = v46;
              v54 = v46;
              LOWORD(v50) = v68;
            }

            else
            {
              v50 = v74 - (*(a1 + 9076) + *(a1 + 9048));
              if (*(a1 + 456) == -1)
              {
                v54 = v75;
                v55 = v46;
                v48 = v46;
              }

              else
              {
                v61 = v46;
                v51 = v74 - v63;
                v52 = sub_10009C014(*(a1 + 9000), v75);
                v73 = sub_1000BA7F4(*(a1 + 376), v52, 0);
                v53 = sub_1000BABCC(*(a1 + 376), &v73, 1u, *(a1 + 456));
                v49 = v51;
                LOWORD(v50) = v65 + v50 - v53;
                v54 = v75;
                v48 = v61;
                v55 = v61;
              }
            }

            sub_100020FE0(*(a1 + 9016), v54, v48, v49, v50);
            v47 = v55;
          }
        }

        v25 = v66;
        if (*(a1 + 9272) || !v71)
        {
          if (*(a1 + 9276) && !v71)
          {
            goto LABEL_84;
          }

          if ((*(a1 + 9048) + *(a1 + 9068) + v68) <= *(a1 + 9062))
          {
            v60 = v47;
            (*(a1 + 9400))(a1);
            v47 = v60;
            v25 = v66;
          }
        }

        if (v71)
        {
          v56 = v64;
        }

        else
        {
          v56 = 0;
        }

        if (v56 == 1)
        {
          sub_10009B824(*(a1 + 9000), v47, v63);
          v25 = v66;
        }
      }

LABEL_84:
      v69 = v2;
      v57 = v10;
      v58 = v25;
      if (sub_10009C034(*(a1 + 9000)))
      {
        *(a1 + 552) = 3;
        return;
      }

      if (!v20)
      {
        goto LABEL_89;
      }

      --v20;
      v59 = *(a1 + 9032);
      v22 = *(v59 + 8 * (v20 >> 8)) + 32 * v20;
      --v23;
      v24 = (*(v59 + 8 * (v23 >> 8)) + 32 * v23);
      v25 = v58;
      v10 = v57;
      v2 = v69;
    }

    else
    {
      v33 = *(v22 + 24);
      if (v33 < *(a1 + 9056))
      {
        *(a1 + 9056) = v33;
      }

      v29 = __OFSUB__(v20--, 1);
      if (v20 < 0 != v29)
      {
        goto LABEL_89;
      }

      v34 = *(a1 + 9032);
      v22 = *(v34 + 8 * (v20 >> 8)) + 32 * v20;
      --v23;
      v24 = (*(v34 + 8 * (v23 >> 8)) + 32 * v23);
    }
  }

  while (1)
  {
    v29 = __OFSUB__(v20--, 1);
    if (v20 < 0 != v29)
    {
      break;
    }

    v22 = *(*(a1 + 9032) + 8 * (v20 >> 8)) + 32 * v20;
    if (*(v22 + 24) <= v28)
    {
      goto LABEL_35;
    }
  }

LABEL_89:
  if (*(a1 + 612) >= (*(a1 + 608) << 8) - 1)
  {
    *(a1 + 552) = 3;
  }

  if (!*(a1 + 8896))
  {
    sub_10006345C(a1);
  }

  *(a1 + 9044) = v27;
}

void sub_100068BAC(uint64_t a1)
{
  v2 = (a1 + 0x2000);
  *(a1 + 628) = 0x100000001;
  *(a1 + 9048) = 0;
  *(a1 + 9052) = -1;
  *(a1 + 9056) = 0;
  v3 = 1;
  *(a1 + 9044) = 1;
  *(a1 + 8992) = -1;
  v4 = *(*(a1 + 9032) + 8 * ((*(a1 + 9040) - 1) & 0xFFFFFF));
  *(v4 + 8178) = -1;
  *(v4 + 8160) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 624) = 0;
  *(a1 + 8986) = -1;
  *(a1 + 8976) = -1;
  *(a1 + 8960) = xmmword_1000F10B0;
  memset_pattern16((a1 + 8980), &unk_1000F0CE0, 4uLL);
  v2[394] = 0;
  v2[396] = 0;
  v2[392] = sub_1000011A4(*(a1 + 384));
  v5 = *(a1 + 544);
  if ((v5 | 8) != 0xB)
  {
    v3 = v5 == 5;
  }

  sub_10009B354(*(a1 + 9000), *(a1 + 8888), v3);
  v2[504] = 0;
  *(a1 + 9376) = 0;
  *(a1 + 9076) = 0;
  if (*(a1 + 8896))
  {
    v6 = *(a1 + 616);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        *(*(*(a1 + 592) + 8 * (i >> 8)) + 24 * i + 16) = 0x4000;
        v6 = *(a1 + 616);
      }
    }

    *(*(*(a1 + 592) + 8 * ((v6 - 1) >> 8)) + 24 * (v6 - 1) + 14) = -1;
  }

  else
  {
    v8 = *(a1 + 608) << 8;
    if (v8 >= 1)
    {
      for (j = 0; j != v8; ++j)
      {
        *(*(*(a1 + 592) + 8 * (j >> 8)) + 24 * j) = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    *(**(a1 + 592) + 14) = 0xFFFF;
    *(a1 + 612) = 0;
  }

  *(a1 + 588) = 0;
  *(a1 + 9364) = 0;
  *(a1 + 552) = 1;
}

uint64_t sub_100068D74(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v6 = (a1 + 0x2000);
  result = sub_100012654(*(a1 + 384), *(a3 + 16));
  v8 = *a2;
  v9 = *(a3 + 20);
  if (v8 < v9)
  {
    *(a3 + 20) = *a2;
    *(a3 + 8) = *(a2 + 1);
    v9 = v8;
  }

  if (v9 <= v6[435])
  {
    v10 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v10);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v10);
      LOWORD(v9) = *(a3 + 20);
    }

    v11 = result - v6[433] + v9;
    *(a3 + 20) = v11;
    *(a3 + 24) = v11;
    if (v11 < v6[428])
    {
      v6[428] = v11;
      v6[430] = *(a3 + 18);
      v6[496] = *(a3 + 16);
    }
  }

  else
  {
    *(a3 + 24) = 0x4000;
    *(a3 + 20) = 0x4000;
  }

  return result;
}

uint64_t sub_100068E58(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned int *a6)
{
  v6 = (result + 0x2000);
  if (*(a3 + 16) - *(result + 9058) <= *(result + 9064))
  {
    v7 = *a6;
    if (a5 - 2 <= v7)
    {
      *(result + 552) = 3;
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v10 = result;
      if (*(result + 556))
      {
        v11 = (a3 + 12);
      }

      else
      {
        v12 = a2;
        v13 = a3;
        sub_100099F24(*(result + 9256), a2, 0, &v21, &v22);
        LOWORD(a2) = v12;
        a3 = v13;
        result = v10;
        v11 = v21;
      }

      v14 = *v11;
      v15 = *(*(result + 9032) + ((v7 >> 5) & 0x7FFFFF8)) + 32 * v7;
      *(v15 + 20) = 1073758208;
      *(v15 + 26) = 0;
      *(v15 + 18) = a2;
      *(v15 + 16) = v14;
      v16 = a3;
      *v15 = *a3;
      result = sub_100012654(*(result + 384), v14);
      if (*(v10 + 556))
      {
        *(v15 + 27) = *(*(*(v10 + 600) + 8 * (a4 >> 8)) + a4);
      }

      v17 = *(v16 + 16);
      *(v15 + 20) = *(v16 + 16);
      *(v15 + 8) = *(v16 + 8);
      v18 = a6;
      if (v17 <= v6[435])
      {
        v19 = *result;
        result = *(*(*(v10 + 384) + 1792) + 2 * v19);
        if (result == 0x4000)
        {
          result = sub_100012668(*(v10 + 384), v19);
          v18 = a6;
          LOWORD(v17) = *(v15 + 20);
        }

        v20 = result - v6[433] + v17;
        *(v15 + 20) = v20;
        *(v15 + 24) = v20;
        if (v20 < v6[428])
        {
          v6[428] = v20;
          v6[430] = *(v15 + 18);
          v6[496] = *(v15 + 16);
        }
      }

      else
      {
        *(v15 + 24) = 0x4000;
        *(v15 + 20) = 0x4000;
      }

      ++*v18;
    }
  }

  return result;
}

uint64_t sub_100069020(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t *a4, int *a5)
{
  if (a4)
  {
    v6 = *a4;
  }

  else
  {
    v6 = 0;
  }

  v95 = (a1 + 0x2000);
  v7 = *(a1 + 9062);
  v8 = *a5;
  v96 = 0;
  v9 = *a2;
  v10 = *(a1 + 9032);
  v11 = *a2;
  v12 = *(v10 + 8 * (v9 >> 8)) + 32 * v11;
  v92 = *a3;
  v13 = *(v10 + ((*a3 >> 5) & 0x7FFFFF8)) + 32 * *a3;
  v14 = *(v12 + 18);
  if (!v6 || (v15 = *(v6 + 14), v15 > v14))
  {
    v16 = ~*(a1 + 620) + v14;
    result = sub_100060958(*(*(a1 + 9328) + 8 * v16), 0);
    v18 = *(a1 + 9032);
    v19 = *(v18 + 8 * (v9 >> 8)) + 32 * v11;
    if (*(v19 + 18) == v14)
    {
      v20 = v9;
      v22 = v92;
      v21 = v95;
      while (1)
      {
        v23 = *v19;
        v24 = *v19 & 0x3FFFFFFLL;
        if ((*(result + 4 * v24) & 0x80000000) == 0)
        {
          v25 = *(a1 + 568) - 1;
          v26 = *(v19 + 2 * v25 + 20);
          if (v26 <= v95[435])
          {
            break;
          }
        }

        ++v20;
        v19 = *(v18 + 8 * (v20 >> 8)) + 32 * v20;
        if (*(v19 + 18) != v14)
        {
          v23 = 0;
          LOWORD(v26) = 0x4000;
          v90 = 0;
          v91 = -1;
          LODWORD(v27) = 0xFFFF;
          goto LABEL_23;
        }
      }

      v91 = *(v19 + 4 * v25 + 8);
      LODWORD(v27) = *(result + 4 * v24 + 2);
      v28 = (result + 4 * (*v19 & 0x3FFFFFFLL) + 4);
      do
      {
        v29 = *v28;
        v28 += 2;
      }

      while (v29 < 0);
      v90 = *(v28 - 1);
    }

    else
    {
      v23 = 0;
      LOWORD(v26) = 0x4000;
      v90 = 0;
      v91 = -1;
      LODWORD(v27) = 0xFFFF;
      v20 = v9;
      v22 = v92;
      v21 = v95;
    }

LABEL_23:
    v87 = 0;
    v38 = *(*(a1 + 9336) + 2 * v16);
LABEL_24:
    v39 = *v12 & 0x3FFFFFF;
    v84 = v38 << 53;
    v78 = result + 4;
    v81 = -1;
    v85 = v7;
    v89 = result;
    if (v27 < v39)
    {
LABEL_25:
      while ((v20 - 2) > v22)
      {
        v93 = v22;
        *(v13 + 20) = 1073758208;
        *(v13 + 18) = v14;
        *(v13 + 26) = 0;
        v40 = *(result + 4 * v27) & 0x7FFF;
        *(v13 + 16) = v40;
        v41 = v23;
        *v13 = v84 + v27 + (v23 & 0x8000000000000000);
        v42 = sub_100012654(*(a1 + 384), v40);
        v21 = v95;
        *(v13 + 20) = v26;
        *(v13 + 8) = v91;
        if (v95[435] >= v26)
        {
          v44 = *v42;
          v45 = *(*(*(a1 + 384) + 1792) + 2 * v44);
          v46 = v26;
          if (v45 == 0x4000)
          {
            LOWORD(v45) = sub_100012668(*(a1 + 384), v44);
            v21 = v95;
            v46 = *(v13 + 20);
          }

          v47 = v45 - v21[433] + v46;
          *(v13 + 20) = v47;
          *(v13 + 24) = v47;
          v23 = v41;
          if (v47 < v21[428])
          {
            v21[428] = v47;
            v21[430] = *(v13 + 18);
            v21[496] = *(v13 + 16);
          }
        }

        else
        {
          *(v13 + 24) = 0x4000;
          *(v13 + 20) = 0x4000;
          v23 = v41;
        }

        LODWORD(v27) = v27 + 1;
        v22 = v93;
        result = v89;
        if (v27 >= v90)
        {
          v7 = v85;
          if (!v87)
          {
            ++v20;
          }

          v48 = *(a1 + 9032);
          v49 = *(v48 + 8 * (v20 >> 8)) + 32 * v20;
          if (*(v49 + 18) == v14)
          {
            while (1)
            {
              v50 = *v49 & 0x3FFFFFFLL;
              if ((*(v89 + 4 * v50) & 0x80000000) == 0)
              {
                v51 = *(a1 + 568) - 1;
                v26 = *(v49 + 2 * v51 + 20);
                if (v26 <= v21[435])
                {
                  break;
                }
              }

              ++v20;
              v49 = *(v48 + 8 * (v20 >> 8)) + 32 * v20;
              if (*(v49 + 18) != v14)
              {
                goto LABEL_44;
              }
            }

            v91 = *(v49 + 4 * v51 + 8);
            LODWORD(v27) = *(v89 + 4 * v50 + 2);
            v52 = (v78 + 4 * (*v49 & 0x3FFFFFFLL));
            do
            {
              v53 = *v52;
              v52 += 2;
            }

            while (v53 < 0);
            v87 = 0;
            v90 = *(v52 - 1);
            v23 = *v49;
          }

          else
          {
LABEL_44:
            v87 = 0;
            LOWORD(v26) = 0x4000;
            LODWORD(v27) = 0xFFFF;
          }
        }

        else
        {
          v7 = v85;
        }

LABEL_78:
        if (*(a1 + 552) == 3)
        {
LABEL_85:
          *a2 = v9;
          goto LABEL_86;
        }

        ++v22;
        v13 = *(*(a1 + 9032) + 8 * (v22 >> 8)) + 32 * v22;
        if (v27 >= v39)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_95;
    }

LABEL_28:
    v43 = *(v12 + 18);
    while (1)
    {
      if (v43 != v14)
      {
        goto LABEL_85;
      }

      if (*(v12 + 24) <= v7)
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 = *(*(a1 + 9032) + 8 * (v9 >> 8)) + 32 * v9;
      v43 = *(v12 + 18);
      if (v43 == v14)
      {
        v39 = *v12 & 0x3FFFFFF;
        if (v27 < v39)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v39 = 0xFFFF;
        if (v27 < 0xFFFF)
        {
          goto LABEL_25;
        }
      }
    }

    v54 = *(v12 + 16);
    *v13 = *v12;
    *(v13 + 16) = v54;
    if (v27 == v39)
    {
      LODWORD(v27) = v27 + 1;
      if (v27 >= v90)
      {
        if (!v87)
        {
          ++v20;
        }

        while (1)
        {
          v57 = *(*(a1 + 9032) + 8 * (v20 >> 8)) + 32 * v20;
          if (*(v57 + 18) != v14)
          {
            v87 = 0;
            LODWORD(v27) = 0xFFFF;
            v79 = v91;
            v55 = v91;
            v56 = v26;
            LOWORD(v26) = 0x4000;
            goto LABEL_66;
          }

          v58 = *v57 & 0x3FFFFFFLL;
          if ((*(result + 4 * v58) & 0x80000000) == 0)
          {
            v59 = *(a1 + 568) - 1;
            if (*(v57 + 2 * v59 + 20) <= v21[435])
            {
              break;
            }
          }

          ++v20;
        }

        v79 = *(v57 + 4 * v59 + 8);
        LODWORD(v27) = *(result + 4 * v58 + 2);
        v60 = (v78 + 4 * (*v57 & 0x3FFFFFFLL));
        do
        {
          v61 = *v60;
          v60 += 2;
        }

        while (v61 < 0);
        v87 = 0;
        v90 = *(v60 - 1);
        v55 = v91;
        v23 = *v57;
        v56 = v26;
        LOWORD(v26) = *(v57 + 2 * v59 + 20);
      }

      else
      {
        v79 = v91;
        v55 = v91;
        v56 = v26;
      }
    }

    else
    {
      v56 = 0x4000;
      v79 = v91;
      v55 = v81;
    }

LABEL_66:
    v94 = v23;
    v62 = v22;
    LOWORD(v96) = v56;
    HIDWORD(v96) = v55;
    if (*(v13 + 16))
    {
      result = (*(a1 + 9424))(a1, &v96, v13);
      v21 = v95;
    }

    else
    {
      result = sub_100012654(*(a1 + 384), 0);
      v63 = v96;
      v64 = *(v13 + 20);
      if (v96 < v64)
      {
        *(v13 + 20) = v96;
        *(v13 + 8) = HIDWORD(v96);
        v64 = v63;
      }

      v21 = v95;
      if (v64 <= v95[435])
      {
        v65 = *result;
        result = *(*(*(a1 + 384) + 1792) + 2 * v65);
        if (result == 0x4000)
        {
          result = sub_100012668(*(a1 + 384), v65);
          v21 = v95;
          LOWORD(v64) = *(v13 + 20);
        }

        v66 = result - v21[433] + v64;
        *(v13 + 20) = v66;
        *(v13 + 24) = v66;
        v22 = v62;
        if (v66 < v21[428])
        {
          v21[428] = v66;
          v21[430] = *(v13 + 18);
          v21[496] = *(v13 + 16);
        }

        goto LABEL_73;
      }

      *(v13 + 24) = 0x4000;
      *(v13 + 20) = 0x4000;
    }

    v22 = v62;
LABEL_73:
    if ((v20 - 2) <= v22)
    {
      goto LABEL_95;
    }

    v81 = v55;
    LODWORD(v9) = v9 + 1;
    v12 = *(*(a1 + 9032) + 8 * (v9 >> 8)) + 32 * v9;
    if (*(v12 + 18) == v14)
    {
      v39 = *v12 & 0x3FFFFFF;
    }

    else
    {
      v39 = 0xFFFF;
    }

    v91 = v79;
    result = v89;
    v23 = v94;
    goto LABEL_78;
  }

  v83 = ~*(a1 + 620) + v15;
  result = sub_100060958(*(*(a1 + 9328) + 8 * v83), 0);
  v26 = *(v6 + 16);
  v91 = *(v6 + 8);
  v27 = *(result + 2);
  v23 = *v6;
  v30 = (result + 4);
  do
  {
    v31 = *v30;
    v30 += 2;
  }

  while (v31 < 0);
  v90 = *(v30 - 1);
  *(v6 + 16) = 0x4000;
  v32 = v8 + 1;
  v33 = *(a1 + 592);
  v34 = *(v33 + 8 * ((v8 + 1) >> 8)) + 24 * (v8 + 1);
  v35 = *(a1 + 9360) + *(a1 + 620);
  if (*(v34 + 16) == 0x4000 && v8 < v35)
  {
    v37 = a5;
    v22 = v92;
    do
    {
      v67 = v32++;
      v34 = *(v33 + 8 * (v32 >> 8)) + 24 * v32;
    }

    while (*(v34 + 16) == 0x4000 && v67 < v35);
  }

  else
  {
    v37 = a5;
    v22 = v92;
  }

  *v37 = v32;
  *a4 = v34;
  v38 = *(*(a1 + 9336) + 2 * v83);
  v21 = v95;
  if (*(v6 + 14) >= v14)
  {
    v87 = 1;
    v20 = v9;
    goto LABEL_24;
  }

  if (v9 - 2 < (v22 - v27 + v90))
  {
LABEL_95:
    *(a1 + 552) = 3;
    return result;
  }

  if (v27 < v90)
  {
    v69 = (result + 4 * v27);
    v70 = (v27 | (v38 << 53)) + (v23 & 0x8000000000000000);
    do
    {
      v72 = v22;
      *(v13 + 20) = 1073758208;
      *(v13 + 18) = *(v6 + 14);
      *(v13 + 26) = 0;
      *v13 = v70;
      v73 = *v69 & 0x7FFF;
      *(v13 + 16) = *v69 & 0x7FFF;
      result = sub_100012654(*(a1 + 384), v73);
      v74 = *(v13 + 20);
      if (v26 < v74)
      {
        *(v13 + 20) = v26;
        *(v13 + 8) = v91;
        v74 = v26;
      }

      v75 = v95;
      if (v74 > v95[435])
      {
        *(v13 + 24) = 0x4000;
        *(v13 + 20) = 0x4000;
        v71 = v72;
      }

      else
      {
        v76 = *result;
        result = *(*(*(a1 + 384) + 1792) + 2 * v76);
        if (result == 0x4000)
        {
          result = sub_100012668(*(a1 + 384), v76);
          v75 = v95;
          LOWORD(v74) = *(v13 + 20);
        }

        v77 = result - v75[433] + v74;
        *(v13 + 20) = v77;
        *(v13 + 24) = v77;
        v71 = v72;
        if (v77 < v75[428])
        {
          v75[428] = v77;
          v75[430] = *(v13 + 18);
          v75[496] = *(v13 + 16);
        }
      }

      v22 = v71 + 1;
      v13 = *(*(a1 + 9032) + 8 * (v22 >> 8)) + 32 * v22;
      ++v70;
      v69 += 2;
    }

    while (v70 < v90);
  }

LABEL_86:
  *a3 = v22;
  return result;
}

uint64_t sub_100069908(uint64_t a1, __int16 *a2)
{
  v3 = (*(a1 + 9040) << 8) - *(a1 + 9044);
  v4 = *(a1 + 9032);
  v5 = *(v4 + 8 * (v3 >> 8)) + 32 * -*(a1 + 9044);
  v6 = *(v5 + 18);
  if (*(a1 + 620) >= v6)
  {
    v10 = a1 + 680;
    v8 = 0x4000;
    v7 = 0x4000;
    do
    {
      v11 = sub_100028A08(*(v10 + 8 * ((*v5 >> 53) & 0x3FFLL)), *v5);
      v12 = *(v5 + 24);
      v13 = v7;
      if (v12 < v7)
      {
        v13 = *(v5 + 24);
      }

      v14 = v8;
      if (v12 < v8)
      {
        v14 = *(v5 + 24);
      }

      if (v11)
      {
        v7 = v13;
      }

      ++v3;
      v4 = *(a1 + 9032);
      if (!v11)
      {
        v8 = v14;
      }

      v5 = *(v4 + 8 * (v3 >> 8)) + 32 * v3;
      v6 = *(v5 + 18);
    }

    while (*(a1 + 620) >= v6);
  }

  else
  {
    v7 = 0x4000;
    v8 = 0x4000;
  }

  if (v6 != 0xFFFF)
  {
    do
    {
      v15 = *(v4 + 8 * (v3 >> 8)) + 32 * v3;
      if (*(v15 + 24) < v8)
      {
        v8 = *(v15 + 24);
      }

      ++v3;
    }

    while (*(v15 + 18) != -1);
  }

  *a2 = v8;
  return v7;
}

uint64_t sub_100069A34(uint64_t a1)
{
  v1 = *(a1 + 9040) << 8;
  v2 = *(a1 + 9044);
  v3 = v1 - v2;
  if (v1 - v2 >= v1 - 1)
  {
    return 1;
  }

  v18 = 0;
  v17 = 0;
  v5 = a1 + 680;
  v6 = v2 - 1;
  while (1)
  {
    v7 = *(*(*(a1 + 9032) + 8 * (v3 >> 8)) + 32 * v3);
    v8 = v7 & 0x3FF;
    v9 = (v7 >> 10) & 0x1FFFFFF;
    v10 = (v7 >> 35) & 0x3FFFF;
    v17 = *(v5 + 8 * ((v7 >> 53) & 0x3FF));
    v11 = sub_100028A28(&v17, 1);
    sub_100030560(v11, v10, v9, &v18, v12, v13, v14, v15);
    if (v8 != v18 - 1)
    {
      break;
    }

    ++v3;
    if (!--v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100069B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v49 = a3;
  v9 = a2;
  v11 = 0;
  v12 = *(a1 + 9040) << 8;
  v13 = v12 - *(a1 + 9044);
  v14 = *(a1 + 9032);
  v15 = *(v14 + 8 * (v13 >> 8)) + 32 * -*(a1 + 9044);
  v54 = 0;
  v52 = (a1 + 680);
  v16 = v12 - 1;
  v17 = 0xFFFFLL;
  while (1)
  {
    v18 = *(v15 + 18);
    if (v18 != 0xFFFF)
    {
      break;
    }

    if (v16 == v13)
    {
      goto LABEL_43;
    }

    ++v13;
LABEL_2:
    v15 = *(v14 + 8 * (v13 >> 8)) + 32 * v13;
  }

  if (v18 != v17)
  {
    v11 = sub_10009A708(*(a1 + 9256), *(v15 + 18));
    v17 = v18;
  }

  v19 = *(v15 + 26);
  if (!qword_1001065A8 || (*(qword_1001065A8 + 816) ? (v20 = v11 == v19) : (v20 = 1), v20))
  {
    if (v11 != v19)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v21 = v17;
    v22 = sub_100028A08(v52[(*v15 >> 53) & 0x3FFLL], *v15);
    v17 = v21;
    if (!v22)
    {
      goto LABEL_41;
    }
  }

  if ((v11 != 1 && *(a1 + 544) == 2 || (*v15 & 0x8000000000000000) != 0) && *(v15 + 20) != 0x4000)
  {
    v46 = *(v15 + 20);
    v47 = v11;
    v51 = v17;
    v48 = v12;
    v23 = *(v15 + 8);
    v55 = 0;
    v53 = v54;
    v24 = sub_1000C9F54(1096, a2, a3, a4, a5, a6, a7, a8);
    v25 = sub_100028A28(v52, *(a1 + 8872));
    *(v24 + 12) = 1;
    *(v24 + 264) = 0u;
    *(v24 + 280) = 0u;
    *(v24 + 296) = 0u;
    v50 = v8;
    *(v24 + 307) = 0u;
    if (v8)
    {
      v26 = v24 + 264;
    }

    else
    {
      v26 = 0;
    }

    v45 = v23;
    v27 = v23;
    v28 = v24 + 146;
    v29 = sub_10009BC28(*(a1 + 9000), v27, v24 + 28, v24 + 384, v24 + 323, v24 + 856, (v24 + 146), v26, 59, &v55);
    *(v24 + 8) = v29;
    if (v29 <= 58)
    {
      LODWORD(v35) = v29;
      if (v25)
      {
        if (v29 >= 1)
        {
          v44 = v9;
          v36 = (v24 + 620);
          v37 = 214;
          do
          {
            *v36 = sub_10002E69C(v25, *(v36 - 59), v36[59], v30, v31, v32, v33, v34);
            ++v36;
            v35 = *(v24 + 8);
            v38 = v37 - 213;
            ++v37;
          }

          while (v38 < v35);
          v28 = v24 + 146;
          v9 = v44;
        }
      }

      else
      {
        bzero((v24 + 620), 4 * v29);
      }

      v39 = (*v15 >> 53) & 0x3FFLL;
      v55 = (*v15 >> 53) & 0x3FF;
      *(v24 + 16) = v52[v39];
      *(v24 + 28 + 2 * v35) = v51;
      *(v24 + 384 + 4 * *(v24 + 8)) = (*v15 >> 35) & 0x3FFFF;
      *(v24 + 323 + *(v24 + 8)) = (*v15 & 0x3FFLL) == 0;
      *(v28 + 2 * (*(v24 + 8))++) = *(a1 + 9200) - 1;
      *v24 = *(a1 + 9076) + v46;
      if (v53 >= 1)
      {
        v40 = 0;
        v41 = 1096 * v53 - 1096;
        v42 = v9;
        while (sub_10002118C(v24, v42))
        {
          v42 += 274;
          ++v40;
          v41 -= 1096;
          if (v53 == v40)
          {
            goto LABEL_39;
          }
        }

        if (*v24 >= *v42)
        {
          goto LABEL_40;
        }

        v54 = v53 - 1;
        if (v40 < v53 - 1)
        {
          j__memmove(v42, v42 + 274, v41);
        }
      }

LABEL_39:
      sub_10006A1B8(a1, v51, v15, v46, v45, v9, &v54, v49, v50);
    }

LABEL_40:
    sub_1000CA03C(v24, 1096);
    v8 = v50;
    v17 = v51;
    v11 = v47;
    v12 = v48;
  }

LABEL_41:
  if (++v13 != v12)
  {
    v14 = *(a1 + 9032);
    goto LABEL_2;
  }

LABEL_43:
  if (*(a1 + 8872) >= 1 && sub_100022AD4(*v52) == 3)
  {
    sub_100022A28(v9, &v54);
  }

  else
  {
    sub_100021C28(*(a1 + 376), v9, &v54);
  }

  return v54;
}

uint64_t sub_100069F10(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v28 = 0;
  v26 = 0;
  HIDWORD(v29) = 0;
  v25 = *(a1 + 376);
  v5 = *(a1 + 9040) << 8;
  v6 = v5 - *(a1 + 9044);
  v7 = *(a1 + 9032);
  v8 = *(v7 + 8 * (v6 >> 8)) + 32 * -*(a1 + 9044);
  v9 = (a1 + 680);
  LOWORD(v10) = -1;
  while (1)
  {
    v11 = *(v8 + 18);
    if (v11 != 0xFFFF)
    {
      break;
    }

    if (++v6 == v5)
    {
      goto LABEL_33;
    }

LABEL_3:
    v8 = *(v7 + 8 * (v6 >> 8)) + 32 * v6;
  }

  v12 = *(v8 + 20);
  v13 = *(v8 + 8);
  v14 = *(a1 + 620);
  if (v14 >= v11)
  {
    if (v11 != v10)
    {
      v26 = sub_10009A708(*(a1 + 9256), *(v8 + 18));
      LOWORD(v10) = v11;
    }

    v17 = *(v8 + 26);
    if (!qword_1001065A8 || (*(qword_1001065A8 + 816) ? (v18 = v26 == v17) : (v18 = 1), v18))
    {
      if (v26 != v17)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!sub_100028A08(v9[(*v8 >> 53) & 0x3FFLL], *v8))
      {
        goto LABEL_32;
      }

      if (*(v8 + 24) != *(v8 + 20))
      {
        v12 = *(v8 + 22);
        v13 = *(v8 + 12);
      }
    }

    v20 = (v8 + 20);
    if (*(a1 + 544) == 2)
    {
      v28 = 1;
    }

    else
    {
      v28 = *v8 >> 63;
      if (*v8 >= 0)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_30;
  }

  v15 = sub_100060958(*(*(a1 + 9328) + 8 * (~v14 + v11)), 0);
  v16 = *v8 & 0x3FFFFFFLL;
  if ((*(v15 + 4 * v16) & 0x80000000) == 0)
  {
    if (++v6 == v5)
    {
      goto LABEL_33;
    }

    goto LABEL_8;
  }

  v10 = *(v15 + 4 * v16 + 2);
  sub_100023498(v9[(*v8 >> 53) & 0x3FFLL]);
  if (!*(a1 + 9284) || v13 == -1 || (v19 = sub_10009C014(*(a1 + 9000), v13), sub_1000BAD08(v25, v19, v10)))
  {
    v20 = (v8 + 20);
    if (v28)
    {
LABEL_30:
      if (*v20 != 0x4000)
      {
        sub_10006A1B8(a1, v10, v8, v12, v13, a2, &v29 + 1, a3, a4);
      }
    }
  }

LABEL_32:
  if (++v6 != v5)
  {
LABEL_8:
    v7 = *(a1 + 9032);
    goto LABEL_3;
  }

LABEL_33:
  if (*(a1 + 8872) >= 1 && sub_100022AD4(*v9) == 3)
  {
    sub_100022A28(a2, &v29 + 1);
  }

  else
  {
    sub_100021C28(*(a1 + 376), a2, &v29 + 1);
  }

  return HIDWORD(v29);
}

void *sub_10006A1B8(uint64_t a1, unsigned int a2, uint64_t a3, int a4, unint64_t a5, _DWORD *a6, int *a7, int a8, int a9)
{
  v57 = 0;
  v13 = *a7;
  v56 = 0;
  v14 = (a1 + 680);
  v15 = sub_100028A28(a1 + 680, *(a1 + 8872));
  v23 = sub_1000C9F54(1096, v16, v17, v18, v19, v20, v21, v22);
  bzero(v23, 0x448uLL);
  v23[3] = 1;
  *(v23 + 66) = 0u;
  *(v23 + 70) = 0u;
  *(v23 + 74) = 0u;
  *(v23 + 307) = 0u;
  if (a9)
  {
    v24 = (v23 + 66);
  }

  else
  {
    v24 = 0;
  }

  v50 = v14;
  if (*(a1 + 8872) >= 1 && sub_100022AD4(*v14) == 3)
  {
    v25 = *(a3 + 18);
    v26 = *(a1 + 620);
    if (v26 >= v25)
    {
      v30 = *a3 & 0x7FFFFFFFFFFFFFFFLL;
      v29 = a2;
    }

    else
    {
      v55 = 0;
      v54 = 0;
      v27 = *(*(a1 + 9344) + 4 * (~v26 + v25));
      v57 = (*a3 >> 53) & 0x3FF;
      v28 = v15;
      v29 = a2;
      sub_100030C70(v28, v27, a2, &v55 + 1, &v55, &v54);
      v30 = (v57 << 53) + (v27 << 35) + (SHIDWORD(v55) << 10);
    }

    v41 = a4;
    v23[6] = sub_10009B3D0(*(a1 + 9000), a5, v29, v30, 0, 0, *(a1 + 9200));
    v42 = 1;
    v43 = a3;
    goto LABEL_18;
  }

  v31 = v23 + 146;
  v32 = sub_10009BC28(*(a1 + 9000), a5, (v23 + 7), (v23 + 96), v23 + 323, (v23 + 214), v23 + 73, v24, 59, &v57);
  v23[2] = v32;
  if (v32 <= 58)
  {
    LODWORD(v38) = v32;
    if (v15)
    {
      if (v32 >= 1)
      {
        v39 = 0;
        v40 = v23 + 155;
        do
        {
          *v40 = sub_10002E69C(v15, *(v40 - 59), v40[59], v33, v34, v35, v36, v37);
          ++v40;
          ++v39;
          v38 = v23[2];
        }

        while (v39 < v38);
        v31 = v23 + 146;
      }
    }

    else
    {
      bzero(v23 + 155, 4 * v32);
    }

    v42 = 0;
    v29 = a2;
    *(v23 + v38 + 14) = a2;
    v43 = a3;
    v23[v23[2] + 96] = (*a3 >> 35) & 0x3FFFF;
    *(v23 + v23[2] + 323) = (*a3 & 0x3FFLL) == 0;
    *&v31[2 * v23[2]++] = *(a1 + 9200) - 1;
    v41 = a4;
LABEL_18:
    v44 = (*v43 >> 53) & 0x3FFLL;
    v57 = (*v43 >> 53) & 0x3FF;
    *(v23 + 2) = v50[v44];
    *v23 = *(a1 + 9076) + v41;
    *(v23 + 2) = 0;
    v45 = *(a1 + 544);
    if ((v45 > 0xB || ((1 << v45) & 0x828) == 0) && *(a1 + 456) != -1)
    {
      v56 = sub_1000BA7F4(*(a1 + 376), v29, 0);
      *v23 += sub_1000BABCC(*(a1 + 376), &v56, 1u, *(a1 + 456));
    }

    v46 = 0;
    if (v42)
    {
      if (v13 >= 1)
      {
        while ((sub_100021244(v23, a6) & 0x80000000) == 0)
        {
          a6 += 274;
          if (v13 == ++v46)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else if (v13 >= 1)
    {
      while ((sub_1000210C4(v23, a6) & 0x80000000) == 0)
      {
        a6 += 274;
        if (v13 == ++v46)
        {
LABEL_28:
          v46 = v13;
          break;
        }
      }
    }

    v47 = v13 - v46;
    if (v13 >= a8)
    {
      if (v13 == v46)
      {
        return sub_1000CA03C(v23, 1096);
      }

      if (--v47 < 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *a7 = v13 + 1;
      if (v47 < 1)
      {
LABEL_32:
        memcpy(a6, v23, 0x448uLL);
        return sub_1000CA03C(v23, 1096);
      }
    }

    j__memmove(a6 + 274, a6, (1096 * v47));
    goto LABEL_32;
  }

  return sub_1000CA03C(v23, 1096);
}

uint64_t sub_10006A5A4(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v6 = (a1 + 0x2000);
  v7 = *(a3 + 16);
  v8 = *(a1 + 8976);
  result = sub_100012654(*(a1 + 384), v7);
  if (v7 == v8)
  {
    v10 = *a2;
    v11 = *(a3 + 20);
    if (v10 < v11)
    {
      *(a3 + 20) = *a2;
      *(a3 + 8) = *(a2 + 1);
      v11 = v10;
    }

    if (v11 > v6[435])
    {
      *(a3 + 24) = 0x4000;
      *(a3 + 20) = 0x4000;
      return result;
    }

    v16 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v16);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v16);
      LOWORD(v11) = *(a3 + 20);
    }

    v17 = result - v6[433] + v11;
    *(a3 + 20) = v17;
    *(a3 + 24) = v17;
    if (v17 < v6[428])
    {
      v6[428] = v17;
LABEL_28:
      v6[430] = *(a3 + 18);
      v6[496] = *(a3 + 16);
      return result;
    }

    return result;
  }

  v12 = *(a3 + 20);
  v13 = *(a3 + 22);
  if (v12 < v13)
  {
    *(a3 + 22) = *(a3 + 20);
    *(a3 + 12) = *(a3 + 8);
    v13 = v12;
  }

  if (v13 > v6[435])
  {
    *(a3 + 22) = 1073758208;
    v14 = 0x4000;
    v15 = *a2;
    if (v15 >= v12)
    {
      goto LABEL_20;
    }

LABEL_19:
    *(a3 + 20) = v15;
    *(a3 + 8) = *(a2 + 1);
    LOWORD(v12) = v15;
    goto LABEL_20;
  }

  v18 = *(result + 2);
  v19 = *(*(*(a1 + 384) + 1792) + 2 * v18);
  if (v19 == 0x4000)
  {
    v20 = result;
    LOWORD(v19) = sub_100012668(*(a1 + 384), v18);
    result = v20;
    LOWORD(v13) = *(a3 + 22);
    LOWORD(v12) = *(a3 + 20);
  }

  v14 = v19 - v6[433] + v13;
  *(a3 + 22) = v14;
  *(a3 + 24) = v14;
  v15 = *a2;
  if (v15 < v12)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v6[435] >= v12)
  {
    v21 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v21);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v21);
      LOWORD(v12) = *(a3 + 20);
      v14 = *(a3 + 24);
    }

    v22 = result - v6[433] + v12;
    *(a3 + 20) = v22;
    if (v22 < v14)
    {
      *(a3 + 24) = v22;
      v14 = v22;
    }
  }

  else
  {
    *(a3 + 20) = 0x4000;
  }

  if (v6[428] > v14)
  {
    v6[428] = v14;
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10006A7C8(uint64_t a1, _DWORD *a2, unsigned int *a3, int a4, uint64_t *a5)
{
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0u;
  v78 = 0u;
  BYTE10(v78) = -1;
  v9 = *(a1 + 568) - 1;
  *(&v78 + v9 + 2) = 0x4000;
  v10 = *a2;
  v11 = *(a1 + 9032);
  v12 = *(v11 + ((v10 >> 5) & 0x7FFFFF8));
  *(&v77 + v9 + 2) = -1;
  v13 = (v12 + 32 * v10);
  v14 = *a3;
  v15 = *(v11 + ((v14 >> 5) & 0x7FFFFF8)) + 32 * *a3;
  sub_100099F24(*(a1 + 9256), *(v13 + 9), 0, &v79, &v81);
  if (*(v13 + 9) == a4 && ((*v13 ^ *a5) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (*(v13 + 26))
    {
      if (v10 - 2 <= v14)
      {
        *(a1 + 552) = 3;
        return 1;
      }

      *(v15 + 20) = 1073758208;
      *(v15 + 18) = a4;
      *(v15 + 26) = 0;
      v21 = *v79;
      *(v15 + 16) = *v79;
      v22 = *a5;
      *v15 = *a5;
      LOWORD(v80) = *(a5 + 8);
      HIDWORD(v80) = *(a5 + 2);
      WORD1(v78) = a4;
      LOWORD(v78) = v21;
      *&v77 = v22;
      ++*a3;
      v75 = 1;
      v17 = v13;
      v13 = &v77;
    }

    else
    {
      LOWORD(v80) = *(a5 + 8);
      HIDWORD(v80) = *(a5 + 2);
      v74 = v13[1];
      *v15 = *v13;
      *(v15 + 16) = v74;
      LODWORD(v10) = v10 + 1;
      v17 = *(*(a1 + 9032) + 8 * (v10 >> 8)) + 32 * v10;
      v75 = 1;
    }
  }

  else
  {
    v75 = 0;
    v16 = v13[1];
    *v15 = *v13;
    *(v15 + 16) = v16;
    LOWORD(v80) = 0x4000;
    HIDWORD(v80) = -1;
    LODWORD(v10) = v10 + 1;
    v17 = *(*(a1 + 9032) + 8 * (v10 >> 8)) + 32 * v10;
  }

  if (*(v15 + 16))
  {
    (*(a1 + 9424))(a1, &v80, v15);
  }

  else
  {
    v18 = sub_100012654(*(a1 + 384), 0);
    v19 = v80;
    v20 = *(v15 + 20);
    if (v80 < v20)
    {
      *(v15 + 20) = v80;
      *(v15 + 8) = HIDWORD(v80);
      v20 = v19;
    }

    if (v20 <= *(a1 + 9062))
    {
      v23 = *v18;
      v24 = *(*(*(a1 + 384) + 1792) + 2 * v23);
      if (v24 == 0x4000)
      {
        LOWORD(v24) = sub_100012668(*(a1 + 384), v23);
        LOWORD(v20) = *(v15 + 20);
      }

      v25 = v24 - *(a1 + 9058) + v20;
      *(v15 + 20) = v25;
      *(v15 + 24) = v25;
      if (v25 < *(a1 + 9048))
      {
        *(a1 + 9048) = v25;
        *(a1 + 9052) = *(v15 + 18);
        *(a1 + 9184) = *(v15 + 16);
      }
    }

    else
    {
      *(v15 + 24) = 0x4000;
      *(v15 + 20) = 0x4000;
    }
  }

  v26 = *(v15 + 26);
  if (v81 - 1 > v26)
  {
    goto LABEL_22;
  }

  v27 = (v15 + 20);
  if (v81 == v26)
  {
    v28 = *v27;
    v29 = *(a1 + 9240);
    if (*v29 <= v28)
    {
      goto LABEL_20;
    }

LABEL_94:
    ++*(*(v29 + 8) + 2 * v28);
    ++*(*(a1 + 9240) + 4);
    if (v28 >= *(a1 + 9050))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v28 = v27[*(a1 + 568) - 1];
  v29 = *(a1 + 9240);
  if (*v29 > v28)
  {
    goto LABEL_94;
  }

LABEL_20:
  if (v28 < *(a1 + 9050))
  {
LABEL_21:
    *(a1 + 9050) = v28;
  }

LABEL_22:
  v30 = v14 + 1;
  for (i = *(*(a1 + 9032) + 8 * ((v14 + 1) >> 8)) + 32 * (v14 + 1); ; i = *(v32 + 8 * (v30 >> 8)) + 32 * v30)
  {
    v33 = *(v13 + 26);
    if (v33 + 1 == *(v17 + 26))
    {
      v34 = *(v13 + 9);
      v35 = v13;
      v13 = v17;
      if (v34 == *(v17 + 18))
      {
        while (1)
        {
          v13 = v17;
          if (*v35 != *v17)
          {
            break;
          }

          v36 = *(a1 + 568) - 1;
          LOWORD(v80) = *(v35 + v36 + 10);
          HIDWORD(v80) = *(v35 + v36 + 2);
          v37 = *(v17 + 16);
          *i = *v17;
          *(i + 16) = v37;
          if (*(i + 16))
          {
            (*(a1 + 9424))(a1, &v80, i);
          }

          else
          {
            v38 = sub_100012654(*(a1 + 384), 0);
            v39 = v80;
            v40 = *(i + 20);
            if (v80 < v40)
            {
              *(i + 20) = v80;
              *(i + 8) = HIDWORD(v80);
              v40 = v39;
            }

            if (v40 <= *(a1 + 9062))
            {
              v41 = *v38;
              v42 = *(*(*(a1 + 384) + 1792) + 2 * v41);
              if (v42 == 0x4000)
              {
                LOWORD(v42) = sub_100012668(*(a1 + 384), v41);
                LOWORD(v40) = *(i + 20);
              }

              v43 = v42 - *(a1 + 9058) + v40;
              *(i + 20) = v43;
              *(i + 24) = v43;
              if (v43 < *(a1 + 9048))
              {
                *(a1 + 9048) = v43;
                *(a1 + 9052) = *(i + 18);
                *(a1 + 9184) = *(i + 16);
              }
            }

            else
            {
              *(i + 24) = 0x4000;
              *(i + 20) = 0x4000;
            }
          }

          v44 = *(i + 26);
          if (v81 - 1 <= v44)
          {
            v45 = (i + 20);
            if (v81 == v44)
            {
              v46 = *v45;
              v47 = *(a1 + 9240);
              if (*v47 <= v46)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v46 = v45[*(a1 + 568) - 1];
              v47 = *(a1 + 9240);
              if (*v47 <= v46)
              {
LABEL_41:
                if (v46 >= *(a1 + 9050))
                {
                  goto LABEL_43;
                }

LABEL_42:
                *(a1 + 9050) = v46;
                goto LABEL_43;
              }
            }

            ++*(*(v47 + 8) + 2 * v46);
            ++*(*(a1 + 9240) + 4);
            if (v46 < *(a1 + 9050))
            {
              goto LABEL_42;
            }
          }

LABEL_43:
          LODWORD(v10) = v10 + 1;
          v48 = *(a1 + 9032);
          v17 = *(v48 + 8 * (v10 >> 8)) + 32 * v10;
          ++v30;
          i = *(v48 + 8 * (v30 >> 8)) + 32 * v30;
          v33 = *(v13 + 26);
          if (v33 + 1 == *(v17 + 26))
          {
            v35 = v13;
            if (*(v13 + 9) == *(v17 + 18))
            {
              continue;
            }
          }

          goto LABEL_49;
        }
      }
    }

    else
    {
LABEL_49:
      v35 = v13;
      v13 = v17;
    }

    v49 = v81;
    if (v81 > v33)
    {
      v50 = *(a1 + 568) - 1;
      LOWORD(v80) = *(v35 + v50 + 10);
      HIDWORD(v80) = *(v35 + v50 + 2);
      if (v80 != 0x4000)
      {
        break;
      }
    }

LABEL_75:
    if (*(v35 + 9) != *(v13 + 9) || ((*v13 ^ *v35) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      *a2 = v10;
      *a3 = v30;
      return v75;
    }

    v63 = v13[1];
    *i = *v13;
    *(i + 16) = v63;
    LOWORD(v80) = 0x4000;
    HIDWORD(v80) = -1;
    if (*(i + 16))
    {
      (*(a1 + 9424))(a1, &v80, i);
    }

    else
    {
      v64 = sub_100012654(*(a1 + 384), 0);
      v65 = v80;
      v66 = *(i + 20);
      if (v80 < v66)
      {
        *(i + 20) = v80;
        *(i + 8) = HIDWORD(v80);
        v66 = v65;
      }

      if (v66 <= *(a1 + 9062))
      {
        v67 = *v64;
        v68 = *(*(*(a1 + 384) + 1792) + 2 * v67);
        if (v68 == 0x4000)
        {
          LOWORD(v68) = sub_100012668(*(a1 + 384), v67);
          LOWORD(v66) = *(i + 20);
        }

        v69 = v68 - *(a1 + 9058) + v66;
        *(i + 20) = v69;
        *(i + 24) = v69;
        if (v69 < *(a1 + 9048))
        {
          *(a1 + 9048) = v69;
          *(a1 + 9052) = *(i + 18);
          *(a1 + 9184) = *(i + 16);
        }
      }

      else
      {
        *(i + 24) = 0x4000;
        *(i + 20) = 0x4000;
      }
    }

    LODWORD(v10) = v10 + 1;
    v32 = *(a1 + 9032);
    v17 = *(v32 + 8 * (v10 >> 8)) + 32 * v10;
    ++v30;
  }

  if (v10 - 2 > v30)
  {
    *(i + 18) = *(v35 + 9);
    *(i + 26) = *(v35 + 26) + 1;
    *i = *v35;
    if (v49 - 1 != *(v35 + 26))
    {
      *(i + 20) = 1073758208;
      v57 = v79[*(v35 + 26) + 1];
      *(i + 16) = v57;
      if (v57)
      {
        (*(a1 + 9424))(a1, &v80, i);
      }

      else
      {
        v60 = sub_100012654(*(a1 + 384), 0);
        v61 = v80;
        v62 = *(i + 20);
        if (v80 < v62)
        {
          *(i + 20) = v80;
          *(i + 8) = HIDWORD(v80);
          v62 = v61;
        }

        if (v62 <= *(a1 + 9062))
        {
          v70 = *v60;
          v71 = *(*(*(a1 + 384) + 1792) + 2 * v70);
          if (v71 == 0x4000)
          {
            LOWORD(v71) = sub_100012668(*(a1 + 384), v70);
            LOWORD(v62) = *(i + 20);
          }

          v72 = v71 - *(a1 + 9058) + v62;
          *(i + 20) = v72;
          *(i + 24) = v72;
          if (v72 < *(a1 + 9048))
          {
            *(a1 + 9048) = v72;
            *(a1 + 9052) = *(i + 18);
            *(a1 + 9184) = *(i + 16);
          }
        }

        else
        {
          *(i + 24) = 0x4000;
          *(i + 20) = 0x4000;
        }
      }

      goto LABEL_74;
    }

    v51 = *(a1 + 8976);
    *(i + 16) = v51;
    *(i + 20) = 0x4000;
    v52 = sub_100012654(*(a1 + 384), v51);
    v53 = v80;
    v54 = *(i + 20);
    if (v80 < v54)
    {
      *(i + 20) = v80;
      *(i + 8) = HIDWORD(v80);
      v54 = v53;
    }

    if (v54 <= *(a1 + 9062))
    {
      v58 = *v52;
      v59 = *(*(*(a1 + 384) + 1792) + 2 * v58);
      if (v59 == 0x4000)
      {
        LOWORD(v59) = sub_100012668(*(a1 + 384), v58);
        LOWORD(v54) = *(i + 20);
      }

      v55 = v59 - *(a1 + 9058) + v54;
      *(i + 20) = v55;
      *(i + 24) = v55;
      if (v55 < *(a1 + 9048))
      {
        *(a1 + 9048) = v55;
        *(a1 + 9052) = *(i + 18);
        *(a1 + 9184) = *(i + 16);
        v55 = *(i + 20);
        v56 = *(a1 + 9240);
        if (*v56 > v55)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v56 = *(a1 + 9240);
        if (*v56 > v55)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v55 = 0x4000;
      *(i + 24) = 0x4000;
      *(i + 20) = 0x4000;
      v56 = *(a1 + 9240);
      if (*v56 > 0x4000)
      {
LABEL_72:
        ++*(*(v56 + 8) + 2 * v55);
        ++*(*(a1 + 9240) + 4);
        if (*(a1 + 9050) <= v55)
        {
LABEL_74:
          ++v30;
          i = *(*(a1 + 9032) + 8 * (v30 >> 8)) + 32 * v30;
          goto LABEL_75;
        }

LABEL_73:
        *(a1 + 9050) = v55;
        goto LABEL_74;
      }
    }

    if (*(a1 + 9050) <= v55)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  *a2 = v10;
  *a3 = v30;
  *(a1 + 552) = 3;
  return v75;
}

uint64_t sub_10006B120(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1000C0034(9432);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  memcpy(v8, off_1000FD718, 0x208uLL);
  *(v9 + 376) = a1;
  *(v9 + 384) = a2;
  *(v9 + 432) = a3;
  *(v9 + 560) = a4;
  v10 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v10 = *(qword_1001065A8 + 5276);
  }

  *(v9 + 8896) = v10;
  *(v9 + 368) = 9;
  *(v9 + 8946) = sub_1000011A4(a2);
  *(v9 + 556) = 0;
  v11 = *(v9 + 432);
  v12 = sub_100001140(*(v9 + 384));
  *(v9 + 568) = v12;
  v13 = sub_100071BD8;
  if (v12 == 1)
  {
    v13 = sub_100070234;
  }

  *(v9 + 9416) = v13;
  *(v9 + 592) = 0;
  *(v9 + 588) = 0;
  *(v9 + 576) = 0;
  v14 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v15 = *(qword_1001065A8 + 5208) / v11;
    *(v9 + 8910) = v15;
    *(v9 + 8908) = *(v14 + 5216) / v11 - v15;
    *(v9 + 9024) = 0u;
    *(v9 + 9064) = *(v14 + 1688);
    *(v9 + 9066) = *(v14 + 1456);
    *(v9 + 9070) = *(v14 + 1496);
    v16 = *(v14 + 1664);
  }

  else
  {
    v16 = 0;
    *(v9 + 8908) = 0;
    *(v9 + 9064) = 0;
    *(v9 + 9070) = 0;
    *(v9 + 9024) = 0u;
  }

  *(v9 + 9072) = v16;
  *(v9 + 9202) = -1;
  *(v9 + 456) = 0xFFFFFFFFLL;
  *(v9 + 9204) = 0;
  if (v14)
  {
    v17 = sub_10009B1D8(*(v14 + 4120));
    *(v9 + 9000) = v17;
    if (!v17)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v17 = sub_10009B1D8(0);
    *(v9 + 9000) = v17;
    if (!v17)
    {
      goto LABEL_39;
    }
  }

  sub_10009B30C(v17, *(v9 + 376));
  *(v9 + 9016) = 0;
  *(v9 + 8872) = 0;
  if (!sub_100061E98(v9))
  {
    goto LABEL_39;
  }

  sub_100038200(v9);
  if (!*(v9 + 408))
  {
    goto LABEL_39;
  }

  *(v9 + 9232) = sub_10005B6A4();
  *(v9 + 9240) = sub_10005B6A4();
  v18 = sub_100001108(*(v9 + 384));
  *(v9 + 640) = sub_1000C0034(v18);
  *(v9 + 528) = sub_10006F97C;
  *(v9 + 536) = sub_100071E50;
  v19 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_23;
  }

  v20 = *(qword_1001065A8 + 4064);
  if (v20 >= 1)
  {
    v21 = sub_1000C0034(2 * v20);
    *(v9 + 9216) = v21;
    if (!v21)
    {
      goto LABEL_39;
    }

    v19 = qword_1001065A8;
    if (!qword_1001065A8)
    {
LABEL_23:
      *(v9 + 9360) = 0;
      goto LABEL_24;
    }
  }

  *(v9 + 9360) = v19[190];
  if (v19[191] < 1)
  {
    goto LABEL_36;
  }

  v22 = sub_1000C0034(8 * v19[190]);
  *(v9 + 9328) = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

  v23 = qword_1001065A8 ? 2 * *(qword_1001065A8 + 1520) : 0;
  v25 = sub_1000C0034(v23);
  *(v9 + 9336) = v25;
  if (!v25)
  {
    goto LABEL_39;
  }

  v26 = qword_1001065A8 ? 4 * *(qword_1001065A8 + 1520) : 0;
  v27 = sub_1000C0034(v26);
  *(v9 + 9344) = v27;
  if (!v27)
  {
    goto LABEL_39;
  }

  v19 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_24;
  }

  if (*(qword_1001065A8 + 1608) < 2)
  {
LABEL_36:
    *(v9 + 9368) = v19[201];
    *(v9 + 9372) = v19[202];
    v29 = v19[198];
    if (v29)
    {
      v30 = v19[517];
      if (v30)
      {
        v31 = sub_1000CF474(*(v9 + 384), *(v9 + 376), v11, v30, v29, 0, 0, 0);
        *(v9 + 472) = v31;
        if (!v31)
        {
          goto LABEL_39;
        }
      }
    }

    return v9;
  }

  v28 = sub_1000C0034(4 * *(qword_1001065A8 + 1520));
  *(v9 + 9352) = v28;
  if (v28)
  {
    v19 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_36;
    }

LABEL_24:
    *(v9 + 9368) = 0;
    return v9;
  }

LABEL_39:
  sub_10006B460(v9);
  return 0;
}

uint64_t sub_10006B460(uint64_t a1)
{
  sub_100062394(a1);
  v2 = *(a1 + 9016);
  if (v2)
  {
    sub_100020F9C(v2);
    *(a1 + 9016) = 0;
  }

  sub_1000BFEC4(*(a1 + 640));
  v3 = *(a1 + 472);
  if (v3)
  {
    sub_1000CF5EC(v3);
  }

  sub_10005B718(*(a1 + 9232));
  sub_10005B718(*(a1 + 9240));
  sub_100003974(*(a1 + 408));
  sub_1000C0B14(*(a1 + 592), *(a1 + 608), *(a1 + 608));
  sub_1000C0B14(*(a1 + 600), *(a1 + 608), *(a1 + 608));
  sub_1000999F8(*(a1 + 9256));
  sub_10004EA04(*(a1 + 9264));
  sub_1000BFEC4(*(a1 + 576));
  sub_1000C0B14(*(a1 + 9024), *(a1 + 9040), *(a1 + 9040));
  sub_10009B294(*(a1 + 9000));
  sub_1000BFEC4(*(a1 + 9216));
  sub_1000BFEC4(*(a1 + 9312));
  sub_1000BFEC4(*(a1 + 9328));
  sub_1000BFEC4(*(a1 + 9336));
  sub_1000BFEC4(*(a1 + 9344));
  sub_1000BFEC4(*(a1 + 9352));
  sub_1000BFEC4(*(a1 + 656));
  sub_1000BFEC4(*(a1 + 664));
  sub_1000BFEC4(*(a1 + 9192));
  sub_100022FBC(*(a1 + 9384));

  return sub_1000BFEC4(a1);
}

uint64_t sub_10006B574(uint64_t a1, int a2)
{
  sub_1000C0B14(*(a1 + 592), *(a1 + 608), *(a1 + 608));
  *(a1 + 592) = 0;
  if (*(a1 + 556))
  {
    sub_1000C0B14(*(a1 + 600), *(a1 + 608), *(a1 + 608));
    *(a1 + 600) = 0;
    v4 = *(a1 + 556);
    *(a1 + 608) = 0;
    if (v4)
    {
      sub_1000BFEC4(0);
      *(a1 + 600) = 0;
    }
  }

  else
  {
    *(a1 + 608) = 0;
  }

  sub_1000C0B14(*(a1 + 9024), *(a1 + 9040), *(a1 + 9040));
  *(a1 + 9024) = 0;
  *(a1 + 9040) = 0;
  result = sub_1000BFEC4(*(a1 + 9192));
  *(a1 + 9192) = 0;
  *(a1 + 9188) = 0;
  if (a2)
  {
    v6 = *(a1 + 9256);

    return sub_100099A60(v6);
  }

  return result;
}

uint64_t sub_10006B634(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8, int a9, int a10)
{
  v136 = 0;
  v137 = 0;
  *(a1 + 552) = 4;
  *(a1 + 544) = a6;
  *(a1 + 548) = a7;
  if (a5 >= 1025)
  {
    goto LABEL_2;
  }

  v12 = a5;
  v13 = *(a1 + 8896);
  if (v13)
  {
    if (a6 == 5 || a6 == 2)
    {
      goto LABEL_2;
    }
  }

  v14 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 4452) && *(qword_1001065A8 + 4544) || a6 == 11 && *(qword_1001065A8 + 4912) <= 0)
    {
      goto LABEL_2;
    }

LABEL_14:
    v121 = v13 == 0;
    v15 = sub_10006DE68;
    if (v121)
    {
      v15 = sub_10006E320;
    }

    *(a1 + 520) = v15;
    if (a6 > 4)
    {
      if (a6 != 5 && a6 != 11)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (a6 == 2)
      {
        goto LABEL_24;
      }

      if (a6 != 3)
      {
        goto LABEL_2;
      }
    }

    if (!v14 || *(v14 + 1272) != 0x7FFFFFFFLL && (!*(v14 + 4736) || !a8 || a9 || *(a1 + 456) != -1 || !*(v14 + 1528) || !*(a1 + 9360)))
    {
      goto LABEL_2;
    }

LABEL_24:
    v19 = a4;
    if (!sub_100022AE4(a4, a5))
    {
      v10 = 0;
      *(a1 + 552) = 3;
      return v10;
    }

    if (qword_1001065A8 && *(qword_1001065A8 + 1264))
    {
      v19 = (a1 + 9384);
      if (!*(a1 + 9384))
      {
        *(a1 + 9384) = sub_100023A64(*(a1 + 376), 0);
      }

      v12 = 1;
    }

    sub_100062394(a1);
    v20 = 8 * v12;
    v135 = (a1 + 680);
    memcpy((a1 + 680), v19, v20);
    *(a1 + 8872) = v12;
    v21 = sub_1000254B4(v12, v19);
    *(a1 + 8900) = v21;
    if (v21)
    {
      v22 = sub_1000C0034(8 * v12);
      *(a1 + 9288) = v22;
      if (!v22)
      {
        return 0;
      }

      memcpy(v22, v19, v20);
      v23 = sub_1000C0034(8 * v12);
      v24 = a1;
      *(a1 + 9296) = v23;
      if (!v23)
      {
        goto LABEL_144;
      }

      *(a1 + 9304) = v12;
      v25 = (a1 + 680);
      if (v12 >= 1)
      {
        v26 = 0;
        v27 = v19;
        do
        {
          v28 = sub_100024D4C(*&v27[v26 * 4]);
          *&v135[v26] = v28;
          if (!v28)
          {
            v10 = 0;
            *&v135[v26] = *&v19[v26 * 4];
            return v10;
          }

          v24 = a1;
          if (*(*(a1 + 9288) + v26 * 4) != v28)
          {
            *(*(a1 + 9296) + v26 * 4) = v28;
          }

          v26 += 2;
          v27 = v19;
        }

        while (2 * v12 != v26);
        v25 = (a1 + 680);
        v29 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          goto LABEL_59;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v24 = a1;
      v25 = v19;
    }

    v29 = qword_1001065A8;
    if (!qword_1001065A8)
    {
LABEL_59:
      v37 = 0;
      v36 = 1;
      v31 = a7;
      v30 = a6;
      v32 = a3;
      v33 = a2;
      v34 = a8;
      goto LABEL_72;
    }

LABEL_49:
    v31 = a7;
    v30 = a6;
    v32 = a3;
    v33 = a2;
    v34 = a8;
    if (!*(v29 + 5308) || v21 || v12 < 1 || !*(v29 + 4220))
    {
LABEL_55:
      v29 = qword_1001065A8;
      if (qword_1001065A8)
      {
LABEL_56:
        v36 = 0;
        v37 = *(v29 + 1072);
        goto LABEL_72;
      }

LABEL_71:
      v37 = 0;
      v36 = 1;
LABEL_72:
      v43 = 0;
      v44 = (v24 + 0x2000);
      *(v24 + 544) = v30;
      *(v24 + 9272) = v34;
      if (v31 == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v37;
      }

      *(v24 + 9276) = a9;
      *(v24 + 8892) = 1;
      if ((v36 & 1) == 0)
      {
        v43 = *(v29 + 1704);
      }

      *(v24 + 9068) = v43;
      if (v32 < 1)
      {
        *(v24 + 9204) = 0;
        v46 = -1;
      }

      else
      {
        *(v24 + 9204) = 1;
        v46 = *(v33 + 2 * v32 - 2);
      }

      v44[505] = v46;
      v132 = v25;
      if (v30 == 2)
      {
        if (v36)
        {
          v47 = 0;
          v48 = 0;
        }

        else
        {
          v47 = *(v29 + 5348);
          v48 = *(v29 + 5372);
        }

        sub_1000361DC(a1, v47, v48);
        v50 = a1;
        v51 = 0;
        *(a1 + 8872) = v12;
      }

      else
      {
        if (v36)
        {
          v49 = 0;
        }

        else
        {
          v49 = *(v29 + 5348);
        }

        if (v12 < 1)
        {
          v49 = 0;
          v51 = 1;
        }

        else
        {
          v52 = v12;
          v53 = v25;
          while (*v53 && sub_1000236C8(*v53))
          {
            ++v53;
            if (!--v52)
            {
              v49 = 0;
              v51 = 1;
              goto LABEL_95;
            }
          }

          v51 = 0;
LABEL_95:
          v29 = qword_1001065A8;
        }

        if (v29)
        {
          v54 = *(v29 + 5372);
        }

        else
        {
          v54 = 0;
        }

        sub_1000361DC(a1, v49, v54);
        v50 = a1;
      }

      if (*(v50 + 556))
      {
        v55 = 1;
        goto LABEL_103;
      }

      v59 = *(v50 + 544);
      if ((v59 | 8) == 0xB)
      {
        if (!v51)
        {
          v56 = (v50 + 8888);
          *(v50 + 8888) = a10;
          v57 = (v50 + 8884);
          *(v50 + 8884) = a10;
LABEL_108:
          v58 = 1;
          if (a6 != 2 && a6 != 5)
          {
            v60 = sub_100036264(a1, 0, v132, v12, a6, a7, &v137, &v137 + 1, &v136 + 1, &v136);
            v50 = a1;
LABEL_125:
            v65 = 1;
LABEL_128:
            if (!v60)
            {
              goto LABEL_257;
            }

            if (!v137)
            {
              goto LABEL_257;
            }

            v66 = sub_10006E648(a1, v137);
            v50 = a1;
            if (!v66)
            {
              goto LABEL_257;
            }

            if (sub_100099BA4(*(a1 + 9256), SHIDWORD(v136), v136))
            {
              if (qword_1001065A8 && *(qword_1001065A8 + 4504))
              {
                sub_1000236D0(v135, *(a1 + 8872), *(a1 + 9256));
              }

              v71 = sub_100061F6C(a1);
              v50 = a1;
              if (!v71)
              {
                goto LABEL_257;
              }

              if (sub_100022E1C(v132, v12, v45, *(a1 + 9256), v67, v68, v69, v70))
              {
                v50 = a1;
                if (a7)
                {
                  v72 = HIDWORD(v137);
                  v73 = qword_1001065A8;
                }

                else
                {
                  v73 = qword_1001065A8;
                  if (qword_1001065A8)
                  {
                    v74 = *(qword_1001065A8 + 1544);
                  }

                  else
                  {
                    v74 = 0;
                  }

                  v76 = HIDWORD(v137) + *(a1 + 9080) * v74;
                  if (v76 <= 1)
                  {
                    v72 = 1;
                  }

                  else
                  {
                    v72 = v76;
                  }

                  HIDWORD(v137) = v72;
                }

                v77 = *(a1 + 9040);
                *(a1 + 9208) = v72;
                if (v73)
                {
                  v78 = v73[388];
                }

                else
                {
                  v78 = 0;
                }

                *(a1 + 9212) = v78;
                if ((v65 & 1) == 0)
                {
                  v79 = v77 << 8;
                  if (v79 >= 65533)
                  {
                    v79 = 65533;
                  }

                  *(a1 + 9208) = v79;
                }

                *(a1 + 8876) = v51;
                switch(a7)
                {
                  case 2u:
                    if (v73)
                    {
                      v84 = v73[242];
                      goto LABEL_172;
                    }

                    break;
                  case 1u:
                    if (v73)
                    {
                      v84 = v73[1142];
                      goto LABEL_172;
                    }

                    break;
                  case 0u:
                    v80 = sub_100039AA0(v132, v12);
                    v81 = qword_1001065A8;
                    if (qword_1001065A8)
                    {
                      v82 = 4920;
                      if (!v80)
                      {
                        v82 = 1632;
                      }

                      v83 = *(qword_1001065A8 + v82);
                      v81 = *(qword_1001065A8 + 1640);
                    }

                    else
                    {
                      v83 = 0;
                    }

                    v50 = a1;
                    v84 = v83 + *(a1 + 9080) * v81;
                    if (v84 <= 1)
                    {
                      LOWORD(v84) = 1;
                    }

                    goto LABEL_172;
                }

                LOWORD(v84) = 0;
LABEL_172:
                v44[434] = v84;
                v44[435] = v84;
                if (v44[439] <= v84 && v44[438] <= 0x4000)
                {
                  v44[377] = sub_1000011A4(*(v50 + 384));
                  v85 = sub_10000119C(*(a1 + 384));
                  v50 = a1;
                  v44[528] = v85;
                  v86 = *(a1 + 544);
                  if (v86 <= 0xB && ((1 << v86) & 0x828) != 0)
                  {
                    if (v12 <= 1)
                    {
                      v87 = sub_100022FB4(*v132);
                      v50 = a1;
                      v86 = *(a1 + 544);
                    }

                    else
                    {
                      v87 = 1;
                    }

                    *(v50 + 8904) = v87;
                  }

                  if (v86 <= 0xB && ((1 << v86) & 0x828) != 0)
                  {
                    v88 = sub_100023738(v132, v12);
                    v50 = a1;
                    if (v88)
                    {
                      *(a1 + 9008) = 0;
                      v89 = a7;
                      goto LABEL_195;
                    }
                  }

                  v90 = qword_1001065A8;
                  if (qword_1001065A8)
                  {
                    v91 = *(qword_1001065A8 + 4552);
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v89 = a7;
                  if (*(v50 + 556))
                  {
                    v91 = 0;
                  }

                  *(v50 + 9008) = v91;
                  if (!v91)
                  {
                    goto LABEL_195;
                  }

                  *v57 = 0;
                  *v56 = 0;
                  if (v90)
                  {
                    v92 = *(v90 + 4040);
                    if (v92)
                    {
                      v93 = *(v50 + 9016);
                      if (v93)
                      {
                        sub_100020FD8(v93);
                        v50 = a1;
                        v89 = a7;
                        goto LABEL_195;
                      }

                      v94 = sub_100020F18(*(a1 + 9000), v92);
                      v50 = a1;
                      *(a1 + 9016) = v94;
                      v89 = a7;
                      if (v94)
                      {
LABEL_195:
                        if (v89 == 1)
                        {
                          v95 = *(v50 + 432);
                          if (qword_1001065A8)
                          {
                            v96 = *(qword_1001065A8 + 1600);
                            v97 = *(qword_1001065A8 + 1440);
                            v98 = v50 + 9084;
                          }

                          else
                          {
                            v98 = v50 + 9084;
                            v96 = 0;
                            v97 = 0;
                          }

                          sub_1000B1390(v98, v95, v96, 1000000, v97, 0);
                          v104 = a1;
                          *(a1 + 9180) = 0;
                          v105 = qword_1001065A8;
                          if (!qword_1001065A8)
                          {
                            goto LABEL_211;
                          }
                        }

                        else
                        {
                          if (qword_1001065A8)
                          {
                            v99 = *(qword_1001065A8 + 1592);
                            v100 = *(v50 + 432);
                            v101 = *(qword_1001065A8 + 1600);
                            v102 = *(qword_1001065A8 + 1440);
                            v103 = v50 + 9084;
                          }

                          else
                          {
                            v100 = *(v50 + 432);
                            v103 = v50 + 9084;
                            v101 = 0;
                            v99 = 0;
                            v102 = 0;
                          }

                          sub_1000B1390(v103, v100, v101, v99, v102, 0);
                          if (qword_1001065A8 && *(qword_1001065A8 + 1656) < *(qword_1001065A8 + 1592))
                          {
                            *(a1 + 9180) = 1;
                            *(a1 + 8880) = sub_100022B68(v132, v12);
                            if (qword_1001065A8)
                            {
                              v106 = *(qword_1001065A8 + 1600);
                              v107 = *(qword_1001065A8 + 1656);
                              v108 = *(qword_1001065A8 + 1440);
                            }

                            else
                            {
                              v107 = 0;
                              v106 = 0;
                              v108 = 0;
                            }

                            sub_1000B1390(a1 + 9132, *(a1 + 432), v106, v107, v108, 0);
                            v104 = a1;
                            v105 = qword_1001065A8;
                            if (!qword_1001065A8)
                            {
                              goto LABEL_211;
                            }
                          }

                          else
                          {
                            v104 = a1;
                            *(a1 + 9180) = 0;
                            v105 = qword_1001065A8;
                            if (!qword_1001065A8)
                            {
                              goto LABEL_211;
                            }
                          }
                        }

                        if (*(v105 + 4464))
                        {
                          sub_1000998FC(v104[1157]);
                          v104 = a1;
                        }

LABEL_211:
                        v109 = v104[1158];
                        if (v109)
                        {
                          sub_10004EA54(v109);
                          v104 = a1;
                        }

                        v110 = sub_1000B215C(v104[47]);
                        v50 = a1;
                        *(a1 + 620) = v110;
                        if (*(a1 + 8896))
                        {
                          v111 = v110 + *(a1 + 9360) + 2;
                          *(a1 + 616) = v111;
                          *(a1 + 612) = v111;
                        }

                        v112 = qword_1001065A8;
                        if (qword_1001065A8 && *(qword_1001065A8 + 1684))
                        {
                          v113 = sub_1000B20FC(*(a1 + 376));
                          v50 = a1;
                          *(a1 + 9280) = v113;
                          v112 = qword_1001065A8;
                          v114 = !v113;
                        }

                        else
                        {
                          *(a1 + 9280) = 0;
                          *(a1 + 456) = -1;
                          v114 = 1;
                        }

                        if (v112)
                        {
                          v115 = *(v112 + 1288);
                        }

                        else
                        {
                          v115 = 0;
                        }

                        *(v50 + 9284) = v115;
                        v116 = *(v50 + 544);
                        if (v116 > 4)
                        {
                          if (v116 == 5)
                          {
                            *(v50 + 9392) = sub_100062FDC;
                            *(v50 + 9400) = sub_10006EA84;
                            *(v50 + 9284) = 0;
                            goto LABEL_241;
                          }

                          if (v116 != 11)
                          {
                            goto LABEL_241;
                          }
                        }

                        else
                        {
                          if (v116 == 2)
                          {
                            v118 = sub_10006E758;
                            if (v112)
                            {
                              v119 = *(v112 + 3616);
                              v120 = sub_100062E34;
                              v121 = v119 == 0;
                              if (!v119)
                              {
                                v120 = sub_100062D60;
                              }

                              v118 = sub_10006E8C0;
                              if (v121)
                              {
                                v118 = sub_10006E758;
                              }
                            }

                            else
                            {
                              v120 = sub_100062D60;
                            }

                            v50 = a1;
                            *(a1 + 9392) = v120;
                            *(a1 + 9400) = v118;
                            if (!v114)
                            {
                              if (v112)
                              {
                                if (!*(a1 + 656))
                                {
                                  v127 = *(v112 + 3616);
                                  if (v127 >= 1)
                                  {
                                    v128 = sub_1000C0034(2 * v127);
                                    *(a1 + 656) = v128;
                                    if (!v128)
                                    {
                                      *(a1 + 552) = 3;
                                      v50 = a1;
                                      goto LABEL_257;
                                    }

                                    v129 = qword_1001065A8 ? 2 * *(qword_1001065A8 + 3616) : 0;
                                    v130 = sub_1000C0034(v129);
                                    v50 = a1;
                                    *(a1 + 664) = v130;
                                    if (!v130)
                                    {
                                      goto LABEL_256;
                                    }
                                  }
                                }
                              }
                            }

                            goto LABEL_241;
                          }

                          if (v116 != 3)
                          {
LABEL_241:
                            if (*(v50 + 8896))
                            {
                              if (*(v50 + 8904))
                              {
                                v122 = sub_100062AB0;
                              }

                              else
                              {
                                v122 = sub_100062C98;
                              }
                            }

                            else
                            {
                              v122 = sub_1000627A4;
                            }

                            *(v50 + 9408) = v122;
                            if (!qword_1001065A8 || !*(qword_1001065A8 + 4736) || (v123 = *(v50 + 544), v123 > 0xB) || ((1 << v123) & 0x828) == 0 || !*(v50 + 9272) || *(v50 + 9276) || (v124 = sub_10006EF9C, *(v50 + 456) != -1))
                            {
                              v124 = sub_10006F97C;
                            }

                            *(v50 + 528) = v124;
                            if (!*(v50 + 9280) || *(v50 + 9360) < 1)
                            {
                              v125 = v50;
                              v126 = sub_1000B2208(*(v50 + 376));
                              v44[431] = sub_1000BA830(*(v125 + 376), v126);
                              sub_10007003C(v125);
                              return 1;
                            }

                            goto LABEL_256;
                          }
                        }

                        *(v50 + 9392) = sub_1000631D4;
                        if (v114)
                        {
                          v117 = sub_10006EE0C;
                        }

                        else
                        {
                          v117 = sub_10006EC30;
                        }

                        *(v50 + 9400) = v117;
                        goto LABEL_241;
                      }
                    }
                  }
                }

LABEL_256:
                *(v50 + 552) = 3;
                goto LABEL_257;
              }

              v50 = a1;
            }

            else
            {
              v50 = a1;
              *(a1 + 552) = 3;
            }

LABEL_257:
            sub_100062394(v50);
            return 0;
          }

LABEL_114:
          v61 = qword_1001065A8;
          if (qword_1001065A8)
          {
            v62 = *(qword_1001065A8 + 1536);
            if (v62)
            {
              v63 = v62 < 65534;
            }

            else
            {
              v63 = 0;
            }

            v60 = v63;
            HIDWORD(v137) = *(qword_1001065A8 + 1536);
            LODWORD(v137) = *(qword_1001065A8 + 1560);
            if (v58)
            {
              HIDWORD(v136) = *(qword_1001065A8 + 4488);
              v64 = *(qword_1001065A8 + 4496);
LABEL_124:
              LODWORD(v136) = v64;
              goto LABEL_125;
            }

            HIDWORD(v136) = *(qword_1001065A8 + 4472);
            v61 = *(qword_1001065A8 + 4480);
          }

          else
          {
            v60 = 0;
            v64 = 0;
            v137 = 0;
            HIDWORD(v136) = 0;
            if (v58)
            {
              goto LABEL_124;
            }
          }

          v65 = 0;
          LODWORD(v136) = v61;
          goto LABEL_128;
        }
      }

      else
      {
        v55 = a10;
        if (!v51 || (v55 = a10, v59 != 5))
        {
LABEL_103:
          v56 = (v50 + 8888);
          *(v50 + 8888) = v55;
          v57 = (v50 + 8884);
          *(v50 + 8884) = a10;
          if (v51)
          {
            v58 = 0;
            goto LABEL_114;
          }

          goto LABEL_108;
        }
      }

      v58 = 0;
      v56 = (v50 + 8888);
      *(v50 + 8888) = 1;
      v57 = (v50 + 8884);
      *(v50 + 8884) = a10;
      goto LABEL_114;
    }

    v35 = v25;
    if (sub_100022C84(v25, v12))
    {
      v24 = a1;
      v31 = a7;
      v30 = a6;
      v32 = a3;
      v33 = a2;
      v34 = a8;
      v25 = v35;
      goto LABEL_55;
    }

    v38 = sub_1000C0034(8 * v12);
    *(a1 + 9288) = v38;
    if (v38)
    {
      memcpy(v38, v35, v20);
      v39 = sub_1000C0034(8 * v12);
      *(a1 + 9296) = v39;
      if (v39)
      {
        if (qword_1001065A8)
        {
          v40 = (qword_1001065A8 + 4220);
        }

        else
        {
          v40 = 0;
        }

        sub_1000316A8(0, v40, v12, v35, v135);
        v24 = a1;
        v41 = 0;
        *(a1 + 9304) = v12;
        v31 = a7;
        v30 = a6;
        v32 = a3;
        v33 = a2;
        v34 = a8;
        do
        {
          *(*(a1 + 9296) + v41 * 4) = 0;
          v42 = *&v135[v41];
          if (*(*(a1 + 9288) + v41 * 4) != v42)
          {
            *(*(a1 + 9296) + v41 * 4) = v42;
          }

          v41 += 2;
        }

        while (2 * v12 != v41);
        v25 = (a1 + 680);
        v29 = qword_1001065A8;
        if (qword_1001065A8)
        {
          goto LABEL_56;
        }

        goto LABEL_71;
      }

      v24 = a1;
LABEL_144:
      v75 = v24;
      sub_1000BFEC4(*(v24 + 9288));
      v10 = 0;
      *(v75 + 9288) = 0;
      return v10;
    }

    return 0;
  }

  if (a6 != 11)
  {
    goto LABEL_14;
  }

LABEL_2:
  v10 = 0;
  *(a1 + 552) = 3;
  return v10;
}

void sub_10006C43C(uint64_t a1)
{
  if (*(a1 + 9040))
  {
    if (*(a1 + 9008))
    {
      v2 = *(a1 + 9016);
      if (v2)
      {
        sub_100020FD8(v2);
      }
    }

    sub_1000B13D8(a1 + 9084);
    if (*(a1 + 9180))
    {
      sub_1000B13D8(a1 + 9132);
    }

    v7 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v7 = *(qword_1001065A8 + 1072);
    }

    if (*(a1 + 548) == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    sub_100022E1C((a1 + 680), *(a1 + 8872), v8, *(a1 + 9256), v3, v4, v5, v6);

    sub_10007003C(a1);
  }
}

uint64_t sub_10006C4E0(uint64_t result, const void *a2, _DWORD *a3, int32x4_t a4, double a5, int32x4_t a6, int32x4_t a7, int8x16_t a8, int8x16_t a9)
{
  v10 = result;
  v11 = (result + 0x2000);
  *v75 = 0;
  v12 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    *v75 = *a3;
    v76 = 0;
    if (*(result + 9058) != 0x4000)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (*(qword_1001065A8 + 1648) && !*(result + 632))
  {
    v15 = 1;
    goto LABEL_126;
  }

  if (*(qword_1001065A8 + 1680) && *(result + 9200) >= 1)
  {
    v13 = a3;
    v14 = sub_1000625D4(result, v75);
    result = sub_100012174(*(v10 + 384), a2, v14);
    v12 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      *(v10 + 628) = result > 0;
      *v75 = *v13;
      v76 = 0;
      if (v11[433] == 0x4000)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    *(v10 + 628) = *(qword_1001065A8 + 1472) < result;
    a3 = v13;
  }

  *v75 = *a3;
  if (*(v12 + 1464))
  {
    if (*(v10 + 628))
    {
      result = sub_1000625E4(v10, a2, a3);
      v76 = 0;
      if (v11[433] != 0x4000)
      {
        goto LABEL_20;
      }

LABEL_17:
      v16 = v11[504];
      if (v16)
      {
        *(v10 + 9076) = 0x40000000;
LABEL_30:
        v11[504] = v16 + 1;
        goto LABEL_121;
      }

      goto LABEL_20;
    }

    result = sub_1000625D4(v10, v75);
    a2 = result;
  }

  v76 = 0;
  if (v11[433] == 0x4000)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (a2)
  {
    sub_100003980(*(v10 + 384), a2, v75, *(v10 + 408), v11[504], *(v10 + 628), a4, a5, a6, a7, a8, a9);
  }

  sub_10009B3C0(*(v10 + 9000));
  if (v11[438] < 0 || v11[439] < 0)
  {
    sub_100062638(v10);
  }

  v17 = v11[428];
  v11[433] = v17;
  *(v10 + 9076) += v17;
  *(v11 + 214) = 1073758208;
  v11[430] = -1;
  if (qword_1001065A8 && *(qword_1001065A8 + 4544) && !sub_100022EE0((v10 + 680), *(v10 + 8872), 0, 0, v11[504]))
  {
    *(v10 + 552) = 3;
    sub_10005B760(*(v10 + 9240));
    if (v11[433] == 0x4000)
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_10005B760(*(v10 + 9240));
    if (v11[433] == 0x4000)
    {
LABEL_29:
      result = sub_100003B68(*(v10 + 384), v11[504], (v10 + 436));
      *(v10 + 9076) = 0x40000000;
      *(v10 + 552) = 5;
      v16 = v11[504];
      goto LABEL_30;
    }
  }

  (*(v10 + 520))(v10);
  if (*(v10 + 552) == 3)
  {
    result = sub_100003B68(*(v10 + 384), v11[504], (v10 + 436));
    goto LABEL_121;
  }

  v18 = v10 + 680;
  v19 = sub_100039AA0((v10 + 680), *(v10 + 8872));
  v20 = *(v10 + 9044);
  v21 = *(v10 + 9208);
  if (v19)
  {
    if (v20 > v21)
    {
      v22 = *(v10 + 9232);
      v23 = *(v22 + 1);
      v24 = *v22;
      bzero(v23, 2 * v24);
      if (v24 > v11[372])
      {
        ++*(v23 + v11[372]);
      }

      v25 = *(v10 + 9044);
      if (v25 >= 2)
      {
        v26 = 0;
        do
        {
          v27 = *(*(*(v10 + 9024) + 8 * (v26 >> 8)) + 48 * v26 + 36);
          if (v24 > v27)
          {
            v28 = v27 & ~(v27 >> 31);
            ++*(v23 + v28);
            v25 = *(v10 + 9044);
          }

          ++v26;
        }

        while (v26 < v25 - 1);
      }
    }
  }

  else if (v20 > v21)
  {
    v29 = *(v10 + 9232);
    v30 = *(v29 + 1);
    v31 = *v29;
    bzero(v30, 2 * v31);
    if (v31 > v11[372])
    {
      ++*(v30 + v11[372]);
    }

    v32 = *(v10 + 9044);
    if (v32 >= 2)
    {
      v33 = 0;
      do
      {
        v34 = *(*(*(v10 + 9024) + 8 * (v33 >> 8)) + 48 * v33 + 36);
        if (v31 > v34)
        {
          ++*(v30 + v34);
          v32 = *(v10 + 9044);
        }

        ++v33;
      }

      while (v33 < v32 - 1);
    }
  }

  (*(v10 + 528))(v10);
  if (v11[400] == -1 && v11[372] == 0x4000)
  {
    v11[400] = v11[504];
  }

  if (*(v10 + 424))
  {
    sub_100036DD0(v10, v35, v36, v37, v38, v39, v40, v41);
  }

  sub_100003B68(*(v10 + 384), v11[504], (v10 + 436));
  if (!qword_1001065A8 || !*(qword_1001065A8 + 1492) || sub_100022AD4((v10 + 9084)) != 3)
  {
    v51 = v11[496] == v11[377];
    result = sub_1000B13FC((v10 + 9084), v51);
    if (*(v10 + 9180))
    {
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  v42 = 0;
  v43 = *(v10 + 9040) << 8;
  v44 = v43 - *(v10 + 9044);
  v45 = *(v10 + 9024);
  v46 = *(v45 + 8 * (v44 >> 8)) + 48 * -*(v10 + 9044);
  v73 = v11[372];
  v74 = 0x4000;
  v47 = -1;
  while (1)
  {
    v48 = *(v46 + 32);
    if (v48 != 0xFFFF)
    {
      break;
    }

    if (v43 - 1 == v44)
    {
      goto LABEL_128;
    }

    ++v44;
LABEL_60:
    v46 = *(v45 + 8 * (v44 >> 8)) + 48 * v44;
  }

  if (v48 != v47)
  {
    v42 = sub_10009A708(*(v10 + 9256), *(v46 + 32));
    v47 = v48;
  }

  if (v42 == *(v46 + 38))
  {
    if (*(v10 + 544) == 2 || (*v46 & 0x8000000000000000) != 0)
    {
      v49 = *(v46 + 24);
      if (v49 >= v74)
      {
        LOWORD(v49) = v74;
      }

      v74 = v49;
    }
  }

  else
  {
    v50 = *(v46 + 36);
    if (v50 >= v73)
    {
      LOWORD(v50) = v73;
    }

    v73 = v50;
  }

  if (++v44 != v43)
  {
    v45 = *(v10 + 9024);
    goto LABEL_60;
  }

LABEL_128:
  v51 = v74 <= v73;
  v18 = v10 + 680;
  result = sub_1000B13FC((v10 + 9084), v51);
  if (!*(v10 + 9180))
  {
    goto LABEL_79;
  }

LABEL_78:
  result = sub_1000B13FC((v10 + 9132), v51);
  if (*(v10 + 544) != 11)
  {
    goto LABEL_85;
  }

LABEL_79:
  v52 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v52 = *(qword_1001065A8 + 4912);
  }

  if (v52 < (v11[372] - v11[428]))
  {
    if (*(v10 + 552) != 6)
    {
      *(v10 + 552) = 6;
    }

LABEL_86:
    result = sub_1000B1580((v10 + 9084));
    if (result)
    {
LABEL_87:
      v59 = 0;
      v60 = 0;
      goto LABEL_101;
    }

    v77 = 0;
    if (*(v10 + 9180))
    {
      if (sub_1000B1580((v10 + 9132)))
      {
        result = sub_10009C04C(*(v10 + 9000), &v77, &v77 + 1);
        if (*(v10 + 9076) + v11[428] == HIDWORD(v77) && v77 != -1)
        {
          if (!*(v10 + 8880))
          {
            goto LABEL_87;
          }

          if (v11[372] == 0x4000)
          {
            v61 = *(v10 + 9040) << 8;
            v62 = *(v10 + 9044);
            v63 = v61 - v62;
            if (v61 - v62 >= v61 - 1)
            {
LABEL_99:
              result = sub_100071044(v10);
              if (result)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v64 = v62 - 1;
              while (1)
              {
                v65 = *(*(*(v10 + 9024) + 8 * (v63 >> 8)) + 48 * v63);
                v66 = *(v18 + 8 * ((v65 >> 53) & 0x3FF));
                if (sub_100022AD4(v66) != 3 || sub_10002755C(v66, (v65 >> 35) & 0x3FFFF))
                {
                  break;
                }

                ++v63;
                if (!--v64)
                {
                  goto LABEL_99;
                }
              }
            }
          }
        }
      }
    }

    result = sub_100036B28(v10);
    v59 = 0;
    v60 = result == 0;
    if (result)
    {
LABEL_101:
      if (qword_1001065A8)
      {
        v59 = *(qword_1001065A8 + 5364);
        if (v59)
        {
          result = sub_100036634(v10, *(qword_1001065A8 + 5376), v53, v54, v55, v56, v57, v58);
          v59 = result != 0;
        }
      }
    }

    if ((v60 | v59))
    {
      if (*(v10 + 552) != 6)
      {
        v67 = 1;
        goto LABEL_108;
      }
    }

    else
    {
      v67 = 2;
LABEL_108:
      *(v10 + 552) = v67;
    }

    if (qword_1001065A8 && *(qword_1001065A8 + 816) && v11[372] == 0x4000)
    {
      result = sub_100070F10(v10, &v76);
      v68 = qword_1001065A8;
      if (qword_1001065A8)
      {
        v68 = *(qword_1001065A8 + 1504);
      }

      if (v68 < (v76 - result))
      {
        *(v10 + 552) = 2;
      }
    }
  }

  else
  {
LABEL_85:
    if (*(v10 + 552) != 3)
    {
      goto LABEL_86;
    }
  }

  ++v11[504];
  v69 = *(v10 + 9380) + 1;
  *(v10 + 9380) = v69;
  if (v69 == *(v10 + 9372))
  {
    *(v10 + 9380) = 0;
    v70 = *(v10 + 9376);
    if (v70 + 1 == *(v10 + 9368))
    {
      v71 = 0;
    }

    else
    {
      v71 = v70 + 1;
    }

    *(v10 + 9376) = v71;
  }

LABEL_121:
  v72 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 1464))
    {
      *(v10 + 628) = *(v10 + 628) == 0;
    }

    if (*(v72 + 1648))
    {
      v15 = *(v10 + 632) == 0;
LABEL_126:
      *(v10 + 632) = v15;
    }
  }

  return result;
}

uint64_t sub_10006CD18(uint64_t a1, int a2)
{
  result = *(a1 + 552);
  if (result != 1)
  {
    return result;
  }

  v5 = 1;
  if (sub_1000B162C((a1 + 9084), a2, 0) == 2)
  {
    v6 = sub_10009C03C(*(a1 + 9000));
    v7 = !v6;
    if (v6)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    v5 = v7;
    if (!*(a1 + 9180))
    {
      return result;
    }
  }

  else
  {
    result = 1;
    if (!*(a1 + 9180))
    {
      return result;
    }
  }

  v8 = result;
  v9 = sub_1000B162C((a1 + 9132), a2, 0);
  result = v8;
  if (v9 == 2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v17 = 0;
    sub_10009C04C(*(a1 + 9000), &v17, &v17 + 1);
    result = 1;
    if (*(a1 + 9076) + *(a1 + 9048) == HIDWORD(v17) && v17 != -1)
    {
      if (*(a1 + 8880))
      {
        if (*(a1 + 8936) == 0x4000)
        {
          v11 = *(a1 + 9040) << 8;
          v12 = *(a1 + 9044);
          v13 = v11 - v12;
          if (v11 - v12 >= v11 - 1)
          {
LABEL_25:
            if (sub_100071044(a1))
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }

          else
          {
            v14 = v12 - 1;
            while (1)
            {
              v15 = *(*(*(a1 + 9024) + 8 * (v13 >> 8)) + 48 * v13);
              v16 = *(a1 + 680 + 8 * ((v15 >> 53) & 0x3FF));
              if (sub_100022AD4(v16) != 3 || sub_10002755C(v16, (v15 >> 35) & 0x3FFFF))
              {
                return 1;
              }

              ++v13;
              if (!--v14)
              {
                goto LABEL_25;
              }
            }
          }
        }
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_10006CECC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5, _DWORD *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = sub_100036A44(a1);
  if (v22 == 4 || v22 == 3 || v22 == 1)
  {
    goto LABEL_9;
  }

  v23 = *(a1 + 544);
  v24 = v23 > 0xB;
  v25 = (1 << v23) & 0x828;
  if (v24 || v25 == 0)
  {
    v27 = *(a1 + 8872);
  }

  else
  {
    v27 = *(a1 + 8872);
    if (!v27)
    {
LABEL_9:
      result = 0;
LABEL_10:
      *a6 = -1;
      *a3 = 0x40000000;
      return result;
    }
  }

  v33 = sub_100028A28(a1 + 680, v27);
  if (*(a1 + 9320) < a2)
  {
    sub_1000BFEC4(*(a1 + 9312));
    result = sub_1000C0034(1096 * a2);
    *(a1 + 9312) = result;
    if (!result)
    {
      goto LABEL_10;
    }

    *(a1 + 9320) = a2;
  }

  v72 = (a1 + 680);
  v71 = *(a1 + 8872) >= 1 && sub_100022AD4(*(a1 + 680)) == 3;
  *v73 = 0;
  v34 = *(a1 + 9312);
  if (*(a1 + 9008))
  {
    if (qword_1001065A8 && *(qword_1001065A8 + 4736))
    {
      v67 = a8;
      v69 = a4;
      if (*(a1 + 556))
      {
        v73[1] = sub_100071128(a1, v34, a2, 0, v29, v30, v31, v32);
      }

      else
      {
        v73[1] = sub_100071534(a1, v34, a2, 0);
      }

LABEL_55:
      v54 = *(a1 + 8872);
      if (v54 >= 1 && (v55 = sub_100022AD4(*(a1 + 680)), v54 = *(a1 + 8872), v55 == 3))
      {
        sub_100021370(*(a1 + 376), v33, *(a1 + 9016), v34, &v73[1], a2, v72, v54, a14);
        if (qword_1001065A8)
        {
          v57 = v67;
          v56 = v69;
          v58 = a9;
          if (*(qword_1001065A8 + 1272) == 0x7FFFFFFFLL)
          {
            v59 = *(a1 + 9284);
          }

          else
          {
            v59 = 0;
          }
        }

        else
        {
          v59 = 0;
          v57 = v67;
          v56 = v69;
          v58 = a9;
        }

        sub_100038E34(v34, v73[1], v72, *(a1 + 8872), v59);
      }

      else
      {
        sub_100021E24(*(a1 + 376), v33, *(a1 + 9016), v34, &v73[1], a2, v72, v54, a14);
        v57 = v67;
        v56 = v69;
        v58 = a9;
      }

      bzero(a7, a5);
      if (qword_1001065A8 && *(qword_1001065A8 + 4592) && *(qword_1001065A8 + 4596))
      {
        if (*(qword_1001065A8 + 4104) < v73[1])
        {
          v73[1] = *(qword_1001065A8 + 4104);
        }

        sub_100039818(a1, 0, v34, &v73[1]);
      }

      if (v71)
      {
        sub_1000618D4(a1, v34, v73[1]);
      }

      sub_100061B70(a1, v34, v73[1]);
      sub_100038600(v34, &v73[1], a2, a3, v56, a5, a6, a7, v57, v58, a10, a11, a12, *(a1 + 376));
      result = v73[1];
      *(a1 + 9324) = v73[1];
      return result;
    }

    result = sub_10009C060(*(a1 + 9000), v34 + 28, v34 + 384, v34 + 856, v34 + 323, (v34 + 146), 59, (v34 + 8), v34, (v34 + 24), 0, 0, v73);
    *(v34 + 4) = 0;
    *(v34 + 264) = 0u;
    *(v34 + 280) = 0u;
    *(v34 + 296) = 0u;
    *(v34 + 307) = 0u;
    if (*(a1 + 8872) >= 1)
    {
      *(v34 + 16) = v72[v73[0]];
    }

    if (result)
    {
      v40 = *(v34 + 8);
      if (!v40)
      {
        return 0;
      }

      v67 = a8;
      v69 = a4;
      if (v33)
      {
        if (v40 >= 1)
        {
          v41 = 0;
          v42 = (v34 + 620);
          do
          {
            *v42 = sub_10002E69C(v33, *(v42 - 59), v42[59], v35, v36, v37, v38, v39);
            ++v42;
            ++v41;
          }

          while (v41 < *(v34 + 8));
        }
      }

      else
      {
        bzero((v34 + 620), 4 * v40);
      }

      v73[1] = 1;
      goto LABEL_55;
    }
  }

  else
  {
    if (a7)
    {
      bzero(a7, a5);
    }

    v43 = *(a1 + 8884);
    if (qword_1001065A8 && *(qword_1001065A8 + 4152))
    {
      if (*(a1 + 556))
      {
        v44 = sub_100071128(a1, v34, a2, v43, v29, v30, v31, v32);
      }

      else
      {
        v44 = sub_100071534(a1, v34, a2, v43);
      }

      v73[1] = v44;
      if (v71)
      {
        sub_100021268(*(a1 + 9000), v33, v72, v34, v44);
        sub_100021C28(*(a1 + 376), v34, &v73[1]);
        sub_100038E34(v34, v73[1], v72, *(a1 + 8872), *(a1 + 9284));
        sub_1000618D4(a1, v34, v73[1]);
      }

      if (qword_1001065A8 && *(qword_1001065A8 + 4592) && *(qword_1001065A8 + 4596) && !*(qword_1001065A8 + 5196))
      {
        if (*(qword_1001065A8 + 4104) < v73[1])
        {
          v73[1] = *(qword_1001065A8 + 4104);
        }

        sub_100039818(a1, 0, v34, &v73[1]);
      }

      sub_100061B70(a1, v34, v73[1]);
      sub_100038600(v34, &v73[1], a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, *(a1 + 376));
      result = v73[1];
      *(a1 + 9324) = v73[1];
      if (!result)
      {
        *(a1 + 552) = 3;
        goto LABEL_10;
      }
    }

    else
    {
      v45 = sub_10009C060(*(a1 + 9000), v34 + 28, v34 + 384, v34 + 856, v34 + 323, (v34 + 146), 59, (v34 + 8), v34, (v34 + 24), v43, v34 + 264, v73);
      if (*(a1 + 8872) >= 1)
      {
        *(v34 + 16) = v72[v73[0]];
      }

      *(v34 + 4) = 0;
      if (v71)
      {
        v66 = v45;
        sub_100038E34(v34, 1, v72, *(a1 + 8872), *(a1 + 9284));
        v45 = v66;
      }

      v51 = *(v34 + 8);
      if (!v51 || !v45)
      {
        result = 0;
        *(a1 + 552) = 3;
        *a6 = -1;
        return result;
      }

      v68 = a8;
      v70 = a4;
      if (v33)
      {
        if (v51 >= 1)
        {
          v52 = 0;
          v53 = (v34 + 620);
          do
          {
            *v53 = sub_10002E69C(v33, *(v53 - 59), v53[59], v46, v47, v48, v49, v50);
            ++v53;
            ++v52;
          }

          while (v52 < *(v34 + 8));
        }
      }

      else
      {
        bzero((v34 + 620), 4 * v51);
      }

      v60 = 1;
      v73[1] = 1;
      if (qword_1001065A8)
      {
        v62 = v68;
        v61 = v70;
        v63 = a9;
        if (*(qword_1001065A8 + 4592) && *(qword_1001065A8 + 4596))
        {
          if (*(qword_1001065A8 + 4104) <= 0)
          {
            v73[1] = *(qword_1001065A8 + 4104);
          }

          sub_100039818(a1, 0, v34, &v73[1]);
          v60 = v73[1];
        }
      }

      else
      {
        v62 = v68;
        v61 = v70;
        v63 = a9;
      }

      if (v71)
      {
        sub_1000618D4(a1, v34, v60);
        v60 = v73[1];
      }

      sub_100061B70(a1, v34, v60);
      sub_100038600(v34, &v73[1], a2, a3, v61, a5, a6, a7, v62, v63, a10, a11, a12, *(a1 + 376));
      result = v73[1];
      *(a1 + 9324) = v73[1];
    }

    if (*(a1 + 9280) && result >= 1)
    {
      v64 = 0;
      v65 = v34 + 28;
      do
      {
        *(v65 - 24) += sub_100039178(*(a1 + 376), 1, *(a1 + 9204), a1 + 9202, *(a1 + 460), a1 + 456, v65, *(v65 - 20));
        ++v64;
        result = v73[1];
        v65 += 1096;
      }

      while (v64 < v73[1]);
    }
  }

  return result;
}