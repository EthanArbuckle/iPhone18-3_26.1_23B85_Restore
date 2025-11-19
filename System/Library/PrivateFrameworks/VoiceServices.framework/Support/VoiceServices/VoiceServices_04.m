uint64_t sub_100029F78(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unsigned int a5)
{
  *(a2 + 144) = sub_100030F28(*(a1 + 256));
  *(a2 + 152) = sub_100030F34(*(a1 + 256));
  if (a3 == 65534)
  {
    *(a2 + 168) = 1;
    v10 = a1;
    v11 = a2;
    v12 = 65534;
LABEL_5:
    result = sub_10002B3A0(v10, v11, v12, a4, a5);
    *(a2 + 128) = 0;
    return result;
  }

  v13 = (a4 >> 35) & 0x3FFFF;
  v14 = sub_10002E1CC(*(a1 + 256), (a4 >> 35) & 0x3FFFF);
  if ((a4 & 0x3FF) < (sub_10002DECC(v14, (a4 >> 10) & 0x1FFFFFF) - 1))
  {
    *(a2 + 168) = 1;
    v10 = a1;
    v11 = a2;
    v12 = a3;
    goto LABEL_5;
  }

  v16 = (a4 >> 53) & 0x3FF;
  v17 = *(a1 + 268);
  if (v17 > v13)
  {
    v18 = *(a1 + 272);
    if (*(v18 + 4 * v13) == v13)
    {
      goto LABEL_18;
    }

LABEL_12:
    v19 = 0;
    while (*(v18 + 4 * v19) != v13)
    {
      if (v17 == ++v19)
      {
        LODWORD(v13) = *(a1 + 268);
        goto LABEL_18;
      }
    }

    LODWORD(v13) = v19;
    goto LABEL_18;
  }

  if (v17 >= 1)
  {
    v18 = *(a1 + 272);
    goto LABEL_12;
  }

  LODWORD(v13) = 0;
LABEL_18:
  if (v13 == v17)
  {
    LODWORD(v13) = -1;
  }

  *(a2 + 64) = *(*(a1 + 288) + 4 * v13 + 4) - *(*(a1 + 288) + 4 * v13);
  *(a2 + 120) = a5;
  v20 = sub_100030404(*(a1 + 256));
  *a2 = sub_1000B2074(v20);
  *(a2 + 32) = v13;
  *(a2 + 60) = 0;
  *(a2 + 8) = v16;
  *(a2 + 28) = a3;
  v21 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v21 = *(qword_1001065A8 + 1288);
  }

  *(a2 + 84) = v21;
  result = sub_10002B28C(a2, a1);
  if (!result)
  {
    *(a2 + 128) = &unk_1000F0D8C;
    *(a2 + 136) = 0;
  }

  return result;
}

uint64_t sub_10002A13C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = sub_100030404(*(a2 + 256));
  v7 = *(a1 + 128);
  if (v7)
  {
    v8 = v6;
    while (1)
    {
      v9 = *(a1 + 136);
      if (v9 == v7[1])
      {
        result = sub_10002B28C(a1, a2);
        if (!result)
        {
          return result;
        }

        v7 = *(a1 + 128);
        v9 = *(a1 + 136);
      }

      v11 = v9 + *v7;
      *(a1 + 136) = v9 + 1;
      v12 = *(*(a1 + 144) + 2 * v11);
      *a3 = v12;
      if (!*(a1 + 84) || sub_1000BAD08(v8, *(a1 + 28), v12))
      {
        v13 = *(a1 + 120);
        if (v13 == 0xFFFF || v13 == *a3)
        {
          break;
        }
      }
    }

    v14 = *(*(a1 + 152) + 2 * v11);
    if (*(*(a2 + 296) + *(a1 + 56)))
    {
      v15 = v14 < 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    *(a3 + 4) = v16;
    *(a3 + 1) = *(a1 + 96) + ((v14 & 0x7FFF) << 10);
    a3[1] = *(a1 + 88);
    *(a3 + 3) = 0;
    return 1;
  }

  else
  {

    return sub_100027F6C(a1, a2, a3);
  }
}

uint64_t sub_10002A2BC(uint64_t a1, uint64_t a2, int a3)
{
  v10 = sub_100030404(*(a1 + 256));
  v11 = *(a1 + 400);
  if (*(a1 + 424) >= a3)
  {
    v14 = *(a1 + 408);
    v34 = 0;
    if (a3 < 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    v16 = a2 - 2;
    v17 = 2 * a3;
    v18 = v11;
    v19 = v14;
    do
    {
      v20 = *(v16 + v17);
      *v18++ = v20;
      *v19++ = sub_1000BA7F4(v10, v20, &v34);
      v17 -= 2;
    }

    while (v17);
LABEL_10:
    for (i = 0; ; i += 8)
    {
      v35 = 0;
      v22 = *v14;
      if (!i)
      {
        break;
      }

      if (*i != v22)
      {
        return 0;
      }

LABEL_28:
      while (1)
      {
        v29 = *(*(a1 + 272) + 4 * *(i + 1));
        sub_100030560(*(a1 + 256), v29, *(i + 2), &v35 + 1, v6, v7, v8, v9);
        v30 = *(i + 3);
        v31 = (HIDWORD(v35) - v30);
        if (a3 >= v31)
        {
          v32 = 1;
          if (v31 >= 2)
          {
            while (sub_100030600(*(a1 + 256), v29, *(i + 2), (v30 + v32), &v35, v7, v8, v9) == v14[v32])
            {
              if (v31 == ++v32)
              {
                goto LABEL_32;
              }
            }
          }

          if (v32 == v31)
          {
            break;
          }
        }

        v28 = i[8];
        i += 8;
        if (v28 != *v14)
        {
          return 0;
        }
      }

LABEL_32:
      if (a3 == v31)
      {
        if (*(*(a1 + 296) + *(i + 1)))
        {
          return 1;
        }
      }

      else if (sub_100023060(a1, (v11 + 2 * v31), a3 - v31, *(v11 + 2 * v31 - 2), (*(*(a1 + 272) + 4 * *(i + 1)) << 35) + v31 + *(i + 3) - 1 + (*(i + 2) << 10)))
      {
        return 1;
      }
    }

    v23 = *(a1 + 392);
    if (v23 <= 0)
    {
      i = *(a1 + 384);
      if (*i == v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      LODWORD(v24) = 0;
      v25 = v23 - 1;
      v26 = *(a1 + 384);
      do
      {
        v27 = (v25 + v24) >> 1;
        if (*(v26 + 16 * v27) < v22)
        {
          v24 = v27 + 1;
        }

        else
        {
          v25 = v27 - 1;
          v24 = v24;
        }
      }

      while (v24 <= v25);
      i = (v26 + 16 * v24);
      if (*i == v22)
      {
        goto LABEL_28;
      }
    }

    return 0;
  }

  sub_1000BFEC4(*(a1 + 400));
  sub_1000BFEC4(*(a1 + 408));
  sub_1000BFEC4(*(a1 + 416));
  result = sub_1000C0034(2 * a3);
  if (!result)
  {
    return result;
  }

  v11 = result;
  v13 = sub_1000C0034(2 * a3);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1000C0034(4 * a3);
    if (v15)
    {
      *(a1 + 400) = v11;
      *(a1 + 408) = v14;
      *(a1 + 416) = v15;
      *(a1 + 424) = a3;
      v34 = 0;
      if (a3 < 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1000BFEC4(v11);
    v33 = v14;
  }

  else
  {
    v33 = v11;
  }

  sub_1000BFEC4(v33);
  return 0;
}

uint64_t sub_10002A568(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  v11 = sub_100030404(*(a1 + 256));
  v19 = sub_1000C9F54(2 * a2, v12, v13, v14, v15, v16, v17, v18);
  v20 = v19;
  if (a2 >= 1)
  {
    v21 = a2;
    v22 = v19;
    do
    {
      v23 = *a3++;
      sub_1000B28E4(v11, v23, v22, 1);
      v22 = (v22 + 2);
      --v21;
    }

    while (v21);
  }

  v24 = sub_10002BACC(a1, v20, a2, 65534, 0, a4, a5, a6);
  sub_1000CA03C(v20, 2 * a2);
  return v24;
}

uint64_t sub_10002A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v25 = 0;
  v24 = 0;
  if (*(a1 + 268) >= 2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(*(a1 + 272) + 4 * v10);
      sub_10003040C(*(a1 + 256), v11, &v25 + 1, a4, a5, a6, a7, a8);
      if (SHIDWORD(v25) >= 1)
      {
        v12 = 0;
        do
        {
          sub_100030560(*(a1 + 256), v11, v12, &v25, a5, a6, a7, a8);
          v9 += v25;
          v12 = (v12 + 1);
        }

        while (v12 < SHIDWORD(v25));
      }

      ++v10;
    }

    while (v10 < *(a1 + 268));
  }

  result = sub_1000C0034(16 * v9 + 16);
  if (result)
  {
    v19 = result;
    *(a1 + 384) = result;
    *(a1 + 392) = v9;
    if (*(a1 + 268) >= 2)
    {
      v20 = 1;
      do
      {
        v21 = *(*(a1 + 272) + 4 * v20);
        sub_10003040C(*(a1 + 256), v21, &v25 + 1, v14, v15, v16, v17, v18);
        if (SHIDWORD(v25) >= 1)
        {
          v22 = 0;
          do
          {
            sub_100030560(*(a1 + 256), v21, v22, &v25, v15, v16, v17, v18);
            if (v25 >= 1)
            {
              v23 = 0;
              do
              {
                *v19 = sub_100030600(*(a1 + 256), v21, v22, v23, &v24, v16, v17, v18);
                v19[1] = v20;
                v19[2] = v22;
                v19[3] = v23;
                v19 += 4;
                v23 = (v23 + 1);
              }

              while (v23 < v25);
            }

            v22 = (v22 + 1);
          }

          while (v22 < SHIDWORD(v25));
        }

        *v19 = -1;
        ++v20;
      }

      while (v20 < *(a1 + 268));
      v19 = *(a1 + 384);
    }

    qsort(v19, v9, 0x10uLL, sub_10002C048);
    return 1;
  }

  return result;
}

uint64_t sub_10002A834(uint64_t a1)
{
  result = sub_1000BFEC4(*(a1 + 384));
  *(a1 + 384) = 0;
  return result;
}

uint64_t sub_10002A860(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  *(a1 + 312) = -1;
  *(a1 + 104) = sub_10002A284;
  *(a1 + 112) = sub_100027F6C;
  LODWORD(v12) = *(a1 + 268);
  if (v12 < 2)
  {
LABEL_9:
    *(a1 + 344) = v9;
    if (!v9)
    {
      goto LABEL_34;
    }

    if (v12 < 2)
    {
      v20 = 0;
      LODWORD(v19) = 1;
LABEL_23:
      if (v19 != v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = *a2;
      if (*a2 == -1)
      {
        goto LABEL_25;
      }

      v18 = *(a1 + 272);
      v19 = 1;
LABEL_14:
      v20 = a2;
      do
      {
        if (v17 == *(v18 + 4 * v19))
        {
          *(a1 + 104) = sub_10002A284;
          *(a1 + 112) = sub_100027F6C;
          if (*v20 == -1)
          {
            break;
          }

          goto LABEL_23;
        }

        v21 = v20[1];
        ++v20;
        v17 = v21;
      }

      while (v21 != -1);
      while (++v19 != v12)
      {
        v17 = *a2;
        v20 = a2;
        if (*a2 != -1)
        {
          goto LABEL_14;
        }
      }
    }

    a2 = v20;
    if (v12 < 2)
    {
      LODWORD(v19) = 1;
LABEL_32:
      if (v19 == v12)
      {
        *(a1 + 104) = sub_100029F78;
        *(a1 + 112) = sub_10002A13C;
      }

      goto LABEL_34;
    }

LABEL_25:
    v22 = 1;
    while (1)
    {
      v23 = *(*(a1 + 272) + 4 * v22);
      if (!sub_1000312E8(*(a1 + 256), v23, a3, a4, a5, a6, a7, a8))
      {
        break;
      }

      ++v22;
      v12 = *(a1 + 268);
      if (v22 >= v12)
      {
        goto LABEL_31;
      }
    }

    *a2 = v23;
    a2[1] = -1;
    LODWORD(v12) = *(a1 + 268);
LABEL_31:
    LODWORD(v19) = v22;
    goto LABEL_32;
  }

  v13 = 1;
  while (1)
  {
    v14 = sub_10002E1CC(*(a1 + 256), *(*(a1 + 272) + 4 * v13));
    if (sub_10002D888(v14))
    {
      break;
    }

    ++v13;
    v12 = *(a1 + 268);
    if (v13 >= v12)
    {
      if (v12 < 2)
      {
        goto LABEL_9;
      }

      v15 = 1;
      while (1)
      {
        v16 = sub_10002E1CC(*(a1 + 256), *(*(a1 + 272) + 4 * v15));
        if (sub_10002D890(v16))
        {
          goto LABEL_21;
        }

        ++v15;
        v12 = *(a1 + 268);
        if (v15 >= v12)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_21:
  *(a1 + 344) = 0;
LABEL_34:
  if (qword_1001065A8 && *(qword_1001065A8 + 1228) && *(a1 + 268) >= 2)
  {
    v24 = 1;
    do
    {
      sub_10002EFA4(*(a1 + 256), *(*(a1 + 272) + 4 * v24++));
    }

    while (v24 < *(a1 + 268));
  }

  result = sub_100030A3C(*(a1 + 256), a4, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v26 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 4452))
      {
        if (*(a1 + 268) >= 2)
        {
          v27 = 1;
          do
          {
            sub_10002F110(*(a1 + 256), *(*(a1 + 272) + 4 * v27++));
          }

          while (v27 < *(a1 + 268));
          v26 = qword_1001065A8;
          if (!qword_1001065A8)
          {
            return 1;
          }
        }
      }

      if (!*(v26 + 4544) || !*(a1 + 340) || !*(a1 + 376))
      {
        return 1;
      }

      if (*(a1 + 320) || (result = sub_1000C0034(4 * *(v26 + 4136)), (*(a1 + 320) = result) != 0))
      {
        if (*(a1 + 328) || (result = sub_1000C0034(*(a1 + 264) << 6), (*(a1 + 328) = result) != 0))
        {
          if (*(a1 + 268) >= 2)
          {
            v28 = 1;
            v29 = 64;
            do
            {
              v42 = 0;
              v41 = 0;
              sub_1000306E8(*(a1 + 256), *(*(a1 + 272) + 4 * v28), &v42, &v41);
              if (v42 && sub_100030724(*(a1 + 256), *(*(a1 + 272) + 4 * v28)) && !*(*(a1 + 328) + v29))
              {
                if (qword_1001065A8)
                {
                  *(*(a1 + 328) + v29) = sub_1000C0034(2 * *(qword_1001065A8 + 4136) + 2);
                  v30 = *(*(a1 + 328) + v29);
                  if (!v30)
                  {
                    return 0;
                  }
                }

                else
                {
                  *(*(a1 + 328) + v29) = sub_1000C0034(2);
                  v30 = *(*(a1 + 328) + v29);
                  if (!v30)
                  {
                    return 0;
                  }
                }

                *v30 = 0;
                *(*(*(a1 + 328) + v29) + 2) = 0;
                *(*(*(a1 + 328) + v29) + 4) = 0;
              }

              ++v28;
              v31 = *(a1 + 268);
              v29 += 64;
            }

            while (v28 < v31);
            v32 = v31 < 2;
            v33 = qword_1001065A8;
            if (!qword_1001065A8)
            {
              return 1;
            }

            goto LABEL_69;
          }

          v32 = 1;
          v33 = qword_1001065A8;
          if (qword_1001065A8)
          {
LABEL_69:
            if (!*(v33 + 1076))
            {
              v32 = 1;
            }

            if (!v32)
            {
              v34 = 0;
              v35 = 1;
              while (1)
              {
                v38 = *(a1 + 328) + v34;
                if (*(v38 + 88))
                {
                  if (qword_1001065A8)
                  {
                    v36 = 4 * *(qword_1001065A8 + 4136);
                  }

                  else
                  {
                    v36 = 0;
                  }

                  bzero(*(v38 + 96), v36);
                  v37 = *(a1 + 328);
                }

                else
                {
                  if (qword_1001065A8)
                  {
                    v39 = 8 * *(qword_1001065A8 + 4136);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  *(*(a1 + 328) + v34 + 88) = sub_1000C0034(v39);
                  if (!*(*(a1 + 328) + v34 + 88))
                  {
                    return 0;
                  }

                  v40 = qword_1001065A8 ? 4 * *(qword_1001065A8 + 4136) : 0;
                  *(*(a1 + 328) + v34 + 96) = sub_1000C0034(v40);
                  v37 = *(a1 + 328);
                  if (!*(v37 + v34 + 96))
                  {
                    return 0;
                  }
                }

                *(v37 + v34 + 120) = 0;
                ++v35;
                v34 += 64;
                result = 1;
                if (v35 >= *(a1 + 268))
                {
                  return result;
                }
              }
            }
          }

          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10002AD78(uint64_t result)
{
  *(result + 104) = sub_10002A284;
  *(result + 112) = sub_100027F6C;
  return result;
}

uint64_t sub_10002AD9C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, int *a5, _BOOL4 *a6)
{
  result = sub_100030C70(*(a1 + 256), a2, a3, a4, a5, a6);
  v10 = *(a1 + 268);
  if ((a2 & 0x80000000) == 0 && v10 > a2 && *(*(a1 + 272) + 4 * a2) == a2)
  {
    if (a2 == v10)
    {
      v11 = -1;
    }

    else
    {
      v11 = a2;
    }

    if (*(*(a1 + 296) + v11))
    {
      return result;
    }

    goto LABEL_24;
  }

  if (v10 >= 1)
  {
    v12 = 0;
    while (*(*(a1 + 272) + 4 * v12) != a2)
    {
      if (v10 == ++v12)
      {
        if (*(*(a1 + 296) - 1))
        {
          return result;
        }

        goto LABEL_24;
      }
    }

    if (v12 == v10)
    {
      v14 = -1;
    }

    else
    {
      v14 = v12;
    }

    if (*(*(a1 + 296) + v14))
    {
      return result;
    }

    goto LABEL_24;
  }

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (!*(*(a1 + 296) + v13))
  {
LABEL_24:
    *a6 = 0;
  }

  return result;
}

uint64_t sub_10002AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 268) < 2)
  {
    return 0;
  }

  v15[5] = v8;
  v15[6] = v9;
  v15[0] = 0;
  v11 = 1;
  do
  {
    if (*(*(a1 + 288) + 4 * v11 + 4) - *(*(a1 + 288) + 4 * v11) > 0)
    {
      return 1;
    }

    v12 = *(*(a1 + 272) + 4 * v11);
    sub_10003040C(*(a1 + 256), v12, v15 + 1, a4, a5, a6, a7, a8);
    if (SHIDWORD(v15[0]) >= 1)
    {
      v13 = 0;
      do
      {
        sub_100030560(*(a1 + 256), v12, v13, v15, a5, a6, a7, a8);
        if (SLODWORD(v15[0]) > 1)
        {
          return 1;
        }

        v13 = (v13 + 1);
      }

      while (v13 < SHIDWORD(v15[0]));
    }

    ++v11;
  }

  while (v11 < *(a1 + 268));
  return 0;
}

int8x8_t *sub_10002AF8C(uint64_t a1, uint64_t a2)
{
  sub_1000BCC04(a2, (a1 + 4), 0x40u, 1);
  result = sub_1000BCBAC(a2, *(a1 + 76));
  if (result)
  {
    result = sub_1000BCBAC(a2, *(a1 + 264));
    if (result)
    {
      result = sub_1000BCBAC(a2, *(a1 + 268));
      if (result)
      {
        result = sub_1000BCBAC(a2, *(a1 + 368));
        if (result)
        {
          result = sub_1000BCBAC(a2, *(a1 + 372));
          if (result)
          {
            result = sub_1000BCBAC(a2, *(a1 + 336));
            if (result)
            {
              result = sub_1000BCBAC(a2, *(a1 + 340));
              if (result)
              {
                result = sub_1000BCBAC(a2, *(a1 + 348));
                if (result)
                {
                  v5 = *(a1 + 280);
                  result = sub_1000BCBAC(a2, v5 != 0);
                  if (result)
                  {
                    v6 = *(a1 + 272);
                    v7 = v6 ? *(a1 + 264) : 0;
                    result = sub_1000BCC04(a2, v6, v7, 4);
                    if (result)
                    {
                      v8 = *(a1 + 288);
                      v9 = v8 ? *(a1 + 264) + 1 : 0;
                      result = sub_1000BCC04(a2, v8, v9, 4);
                      if (result)
                      {
                        v10 = *(a1 + 296);
                        v11 = v10 ? *(a1 + 264) : 0;
                        result = sub_1000BCC04(a2, v10, v11, 1);
                        if (result)
                        {
                          v12 = *(a1 + 304);
                          v13 = v12 ? *(a1 + 368) : 0;
                          result = sub_1000BCC04(a2, v12, v13, 4);
                          if (result)
                          {
                            v14 = *(a1 + 352);
                            if (!v14 || (result = sub_1000BCC04(a2, v14, *(a1 + 368), 1), result) && ((v15 = *(a1 + 360)) == 0 ? (v16 = 0) : (v16 = *(a1 + 264)), result = sub_1000BCC04(a2, v15, v16, 1), result))
                            {
                              if (!v5)
                              {
                                return 1;
                              }

                              v17 = *(a1 + 280);
                              v18 = v17 ? *(a1 + 264) : 0;
                              result = sub_1000BCC04(a2, v17, v18, 4);
                              if (result)
                              {
                                return 1;
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10002E1E4(*(a1 + 256), a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v10 = *(a1 + 268);
    if (v10 <= 0x40000)
    {
      if (v10 < 2)
      {
        return 1;
      }

      else
      {
        v24 = 0;
        v11 = 1;
        while (1)
        {
          v12 = *(a1 + 272);
          v13 = *(v12 + 4 * v11);
          if (!sub_1000302E0(*(a1 + 256), *(v12 + 4 * v11)))
          {
            sub_10003040C(*(a1 + 256), v13, &v24 + 1, v14, v15, v16, v17, v18);
            if (SHIDWORD(v24) > 0x2000000)
            {
              return 0;
            }

            if (SHIDWORD(v24) >= 1)
            {
              break;
            }
          }

LABEL_7:
          if (++v11 >= *(a1 + 268))
          {
            return 1;
          }
        }

        v23 = 0;
        while (1)
        {
          sub_100030560(*(a1 + 256), v13, v23, &v24, v19, v20, v21, v22);
          if (v24 > 1024)
          {
            return 0;
          }

          v23 = (v23 + 1);
          if (v23 >= SHIDWORD(v24))
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002B28C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  if (v2 == *(a1 + 64))
  {
    return 0;
  }

  for (i = v2 + *(*(a2 + 288) + 4 * *(a1 + 32)); ; ++i)
  {
    *(a1 + 60) = v2 + 1;
    v7 = *(*(a2 + 304) + 4 * i);
    *(a1 + 56) = v7;
    v8 = *(a2 + 272);
    v9 = *(v8 + 4 * v7);
    v15 = sub_100030F40(*(a2 + 256), *(v8 + 4 * v7));
    if (!*v15)
    {
      sub_100030F50(*(a2 + 256), *a1, v9, v10, v11, v12, v13, v14);
    }

    if (v15[1])
    {
      break;
    }

    v2 = *(a1 + 60);
    if (v2 == *(a1 + 64))
    {
      return 0;
    }
  }

  v16 = *(*(a2 + 272) + 4 * v7);
  *(a1 + 44) = v16;
  v17 = *(a2 + 336);
  if (v17)
  {
    LOWORD(v17) = *(*(a2 + 352) + i);
  }

  *(a1 + 88) = v17;
  *(a1 + 96) = (*(a1 + 8) << 53) + (v16 << 35);
  *(a1 + 128) = v15;
  *(a1 + 136) = 0;
  return 1;
}

uint64_t sub_10002B3A0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unsigned int a5)
{
  v55 = sub_100030404(*(a1 + 256));
  v10 = sub_1000B2074(v55);
  v11 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v11 = *(qword_1001065A8 + 1288);
  }

  v57 = 0;
  v56 = 0;
  *(a2 + 176) = 0;
  v12 = (a2 + 176);
  *(a2 + 84) = v11;
  *(a2 + 120) = a5;
  *(a2 + 192) = 0;
  v54 = (a2 + 192);
  *(a2 + 28) = a3;
  if (a3 != 65534)
  {
    v15 = a4 & 0x3FF;
    v16 = (a4 >> 10) & 0x1FFFFFF;
    v14 = (a4 >> 35) & 0x3FFFF;
    *(a2 + 48) = sub_10002E1CC(*(a1 + 256), (a4 >> 35) & 0x3FFFF);
    if (*(a1 + 340))
    {
      sub_1000306E8(*(a1 + 256), (a4 >> 35) & 0x3FFFF, (a2 + 176), (a2 + 184));
    }

    if (*(a2 + 16) == a4)
    {
      v57 = *(a2 + 204);
      v20 = v57;
      *(a2 + 40) = v16;
      v13 = v20 - 1;
      v17 = *(a1 + 268);
      if (v17 <= v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a2 + 36) = v15;
      *(a2 + 172) = sub_10002DFC8(*(a2 + 48), (a4 >> 10) & 0x1FFFFFF, a4 & 0x3FF, &v57);
      *(a2 + 16) = a4;
      *(a2 + 24) = v14;
      v21 = v57;
      *(a2 + 204) = v57;
      *(a2 + 40) = v16;
      v13 = v21 - 1;
      v17 = *(a1 + 268);
      if (v17 <= v14)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    v18 = *(a1 + 272);
    LODWORD(v19) = v14;
    if (*(v18 + 4 * v14) == v14)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  LODWORD(v16) = 0;
  v57 = 1;
  *(a2 + 36) = -1;
  *(a2 + 16) = a4;
  *(a2 + 24) = 0;
  v17 = *(a1 + 268);
  if (v17 > 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  if (v17 < 1)
  {
    if (v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }

    *(a2 + 160) = 0;
    if (v15 < v13)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  v18 = *(a1 + 272);
LABEL_15:
  v19 = 0;
  while (*(v18 + 4 * v19) != v14)
  {
    if (v17 == ++v19)
    {
      LODWORD(v19) = v17;
      break;
    }
  }

LABEL_19:
  if (v19 == v17)
  {
    v22 = -1;
  }

  else
  {
    v22 = v19;
  }

  *(a2 + 160) = 0;
  if (v15 < v13)
  {
LABEL_23:
    *(a2 + 72) = sub_10002D880(*(a2 + 48));
    *(a2 + 44) = v14;
    *(a2 + 56) = v22;
    *(a2 + 116) = 1;
    *(a2 + 88) = 0;
    v23 = v15 == v57 - 2 && *(*(a1 + 296) + v22);
    *(a2 + 80) = v23;
    *(a2 + 76) = sub_10002DFC8(*(a2 + 48), v16, v15 + 1, &v57);
    *(a2 + 96) = (a4 & 0x7FE0000000000000 | (v14 << 35) | (v15 + 1)) + (v16 << 10);
    if (*(a1 + 340))
    {
      sub_1000306E8(*(a1 + 256), *(a2 + 44), v54, (a2 + 200));
    }

    *(a2 + 112) = 0;
    if (*(a2 + 160))
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_35:
  v52 = v10;
  v53 = a4;
  *(a2 + 116) = 0;
  v25 = *(*(a1 + 288) + 4 * v22 + 4) - *(*(a1 + 288) + 4 * v22);
  *(a2 + 64) = v25;
  if (v25 < 1)
  {
    v26 = 0;
    LODWORD(v16) = 0;
    goto LABEL_80;
  }

  if (a5 == 0xFFFF)
  {
    v26 = 0;
    while (1)
    {
      v36 = v26 + *(*(a1 + 288) + 4 * v22);
      v32 = *(*(a1 + 304) + 4 * v36);
      *(a2 + 56) = v32;
      v37 = *(*(a1 + 272) + 4 * v32);
      *(a2 + 44) = v37;
      v38 = sub_10002E1CC(*(a1 + 256), v37);
      *(a2 + 48) = v38;
      v39 = sub_10002D880(v38);
      *(a2 + 72) = v39;
      if (v39)
      {
        break;
      }

      if (++v26 >= *(a2 + 64))
      {
        LODWORD(v16) = 0;
        goto LABEL_80;
      }
    }

    *(a2 + 88) = 0;
    if (*(a1 + 336))
    {
      v27 = *(*(a1 + 352) + v36);
      *(a2 + 88) = v27;
    }

    else
    {
      v27 = 0;
    }

    LODWORD(v16) = 0;
    *(a2 + 76) = sub_10002DFC8(*(a2 + 48), 0, 0, &v57);
    v40 = (a2 + 76);
    v41 = qword_1001065A8;
    if (!qword_1001065A8)
    {
LABEL_58:
      v44 = v57;
      *(a2 + 112) = 1;
      if (v44 == 1)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v26 = 0;
    LODWORD(v16) = 0;
    while (1)
    {
      v31 = v26 + *(*(a1 + 288) + 4 * v22);
      v32 = *(*(a1 + 304) + 4 * v31);
      *(a2 + 56) = v32;
      v33 = *(*(a1 + 272) + 4 * v32);
      *(a2 + 44) = v33;
      v34 = sub_10002E1CC(*(a1 + 256), v33);
      *(a2 + 48) = v34;
      v35 = sub_10002D880(v34);
      *(a2 + 72) = v35;
      if (v35)
      {
        *(a2 + 88) = 0;
        if (*(a1 + 336))
        {
          v27 = *(*(a1 + 352) + v31);
          *(a2 + 88) = v27;
        }

        else
        {
          v27 = 0;
        }

        v28 = sub_1000BA7F4(v55, a5, 0);
        v29 = v28;
        v30 = sub_10002DD34(*(a2 + 48), v28, &v57);
        LODWORD(v16) = 0xFFFF;
        if (v30 != 0xFFFF)
        {
          break;
        }
      }

      if (++v26 >= *(a2 + 64))
      {
        goto LABEL_80;
      }
    }

    LODWORD(v16) = v30;
    *(a2 + 76) = v29;
    v40 = (a2 + 76);
    v41 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_58;
    }
  }

  if (!*(v41 + 1172))
  {
    goto LABEL_58;
  }

  v42 = v57;
  *(a2 + 112) = v57 == 1;
  if (v42 == 1)
  {
LABEL_59:
    v43 = *(*(a1 + 296) + v32) != 0;
    goto LABEL_60;
  }

LABEL_57:
  v43 = 0;
LABEL_60:
  *(a2 + 80) = v43;
  v45 = *(a2 + 44);
  *(a2 + 96) = (v53 & 0x7FE0000000000000) + (v16 << 10) + (v45 << 35);
  *(a2 + 160) = 0;
  sub_1000306E8(*(a1 + 256), v45, v54, (a2 + 200));
  if (*(a2 + 168))
  {
    v46 = sub_100030724(*(a1 + 256), *(a2 + 44));
    *(a2 + 160) = v46;
    if (v46)
    {
      *(a2 + 80) = *(*(a1 + 296) + v32);
      *(a2 + 60) = v26;
      *(a2 + 88) = v27;
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 4544) && *(a1 + 340) && *v54)
        {
          sub_10002B9E8(a1, a2);
        }
      }
    }
  }

  v56 = 0x7FFF;
  if (*(a1 + 340) && !*(a2 + 160))
  {
    v47 = *v54;
    if (*v54)
    {
      v48 = *(a2 + 200);
      if (*(a2 + 24) == *(a2 + 44))
      {
        sub_10005C1B8(v47, v48, *(a2 + 172), 1, v40, &v56);
      }

      else
      {
        sub_10005C378(v47, v48, 1, v40, &v56);
      }
    }

    else if (*v12)
    {
      v49 = sub_10005C3B0(*v12, *(a2 + 184), *(a2 + 172));
      v56 = v49;
      goto LABEL_76;
    }

    v49 = v56;
LABEL_76:
    if (v49 != 0x7FFF)
    {
      LOWORD(v50) = qword_1001065A8;
      if (qword_1001065A8)
      {
        v50 = *(qword_1001065A8 + 4168);
      }

      *(a2 + 88) = *(a2 + 88) + v49 - v50;
    }
  }

LABEL_80:
  *(a2 + 60) = v26;
  v10 = v52;
  a4 = v53;
  if (*(a2 + 160))
  {
LABEL_30:
    result = 1;
    goto LABEL_84;
  }

LABEL_81:
  if (!*(a2 + 116) && *(a2 + 60) >= *(a2 + 64))
  {
    result = 0;
    *(a2 + 104) = 0;
    v51 = 72;
    goto LABEL_85;
  }

  result = sub_10001CAD8(v10, *(a2 + 76));
LABEL_84:
  v51 = 104;
LABEL_85:
  *(a2 + v51) = result;
  *(a2 + 32) = v22;
  *a2 = v10;
  *(a2 + 8) = (a4 >> 53) & 0x3FF;
  *(a2 + 68) = v16;
  *(a2 + 108) = 0;
  *(a2 + 90) = *(a2 + 88);
  return result;
}

uint64_t sub_10002B9E8(uint64_t result, uint64_t a2)
{
  if (*(result + 340))
  {
    if (*(a2 + 192))
    {
      v3 = result;
      v4 = *(result + 328) + (*(a2 + 56) << 6);
      v5 = *v4;
      v6 = *(*v4 + 2 * *(result + 312) + 2);
      result = sub_1000C06E8((v4 + 8), (v4 + 16), (v4 + 20), 10, 12, v6 + 1);
      if (result)
      {
        v7 = *(*(v4 + 8) + ((v6 >> 7) & 0x1F8)) + 12 * (v6 & 0x3FF);
        if (*(a2 + 176) == *(a2 + 192))
        {
          v8 = *(a2 + 28);
        }

        else
        {
          v8 = -2;
        }

        *v7 = v8;
        *(v7 + 4) = *(a2 + 208);
        *(v7 + 8) = *(a2 + 212);
        v9 = v5 + 2 * *(v3 + 312);
        ++*(v9 + 2);
      }
    }
  }

  return result;
}

uint64_t sub_10002BACC(_DWORD *a1, unsigned __int16 *a2, int a3, int a4, unint64_t a5, uint64_t a6, _DWORD *a7, BOOL *a8)
{
  v71 = *(a1 + 32);
  v72 = a1;
  v16 = a1;
  if (a1[87])
  {
    v16 = sub_100024D4C(a1);
    v72 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  if (!sub_100022E1C(&v72, 1, 0, 0, a5, a6, a7, a8))
  {
    return 0;
  }

  v69 = a6;
  v70 = a7;
  *a7 = 0x40000000;
  if (*v72 == 3)
  {
    *&v77 = 0x7FFFFFFFFFFFFFFFLL;
    WORD2(v89) = 0x4000;
  }

  v74 = 0u;
  v75 = 0u;
  v17 = *a2;
  DWORD2(v86) = 0;
  sub_10002B3A0(v72, &v76, a4, a5, v17);
  v25 = (a3 - 1);
  if (a3 != 1)
  {
    __n = 8 * v25;
    v45 = sub_1000C9F54(__n, v18, v19, v20, v21, v22, v23, v24);
    v26 = 0;
    if (sub_100027F6C(&v76, v72, &v74))
    {
      v73 = 0;
      if (a8)
      {
        v46 = a8 + 1;
      }

      else
      {
        v46 = 0;
      }

      do
      {
        v49 = *(&v74 + 1);
        if (sub_10002BACC(v72, a2 + 1, v25, v74, *(&v74 + 1), v45, &v73, v46))
        {
          if (a8)
          {
            *a8 = (v49 & 0x3FF) == 0;
          }

          if (!*(v16 + 44) && !v16[85])
          {
            v61 = (v49 >> 35) & 0x3FFFF;
            v62 = sub_10002E914(v71, v61);
            v63 = v62;
            if (v72 == a1)
            {
              v65 = v69;
              v64 = v70;
            }

            else
            {
              v65 = v69;
              v64 = v70;
              if (sub_100031630(v62))
              {
                v66 = sub_1000247FC(a1, v61);
                v63 = sub_10002E914(v71, v66);
              }
            }

            *v65 = v63;
            *v64 = 0;
            memcpy(v65 + 1, v45, __n);
            v26 = 1;
            break;
          }

          v50 = v73 + SWORD1(v74);
          v73 = v50;
          if (v50 < *v70)
          {
            v51 = (v49 >> 35) & 0x3FFFF;
            v52 = sub_10002E914(v71, (v49 >> 35) & 0x3FFFF);
            v48 = v52;
            if (v72 != a1 && sub_100031630(v52))
            {
              if (a1[67] < 2)
              {
LABEL_58:
                v47 = -1;
              }

              else
              {
                v53 = 1;
                while (1)
                {
                  v54 = sub_1000302E0(*(a1 + 32), *(*(a1 + 34) + 4 * v53));
                  if (v54)
                  {
                    v55 = *(v54 + 268);
                    if (v55 >= 2)
                    {
                      break;
                    }
                  }

LABEL_73:
                  if (++v53 >= a1[67])
                  {
                    goto LABEL_58;
                  }
                }

                v56 = 4 * v55;
                v57 = 4;
                while (*(*(v54 + 280) + v57) != v51)
                {
                  v57 += 4;
                  if (v56 == v57)
                  {
                    goto LABEL_73;
                  }
                }

                v47 = *(*(v54 + 272) + v57);
              }

              v48 = sub_10002E914(v71, v47);
            }

            *v69 = v48;
            *v70 = v50;
            memcpy(v69 + 1, v45, __n);
          }

          v26 = 1;
        }
      }

      while (sub_100027F6C(&v76, v72, &v74));
    }

    sub_1000CA03C(v45, __n);
    goto LABEL_91;
  }

  v26 = 0;
  if (!sub_100027F6C(&v76, v72, &v74))
  {
    goto LABEL_91;
  }

  while (!v75)
  {
LABEL_14:
    if (!sub_100027F6C(&v76, v72, &v74))
    {
      goto LABEL_91;
    }
  }

  v29 = *(&v74 + 1);
  if (a8)
  {
    *a8 = (WORD4(v74) & 0x3FF) == 0;
  }

  v30 = (v29 >> 35) & 0x3FFFF;
  v31 = *(v16 + 44);
  if (v31 || v16[85])
  {
    v32 = v16[67];
    if (v32 <= v30)
    {
      if (v32 < 1)
      {
        LODWORD(v34) = 0;
        v35 = SWORD1(v74);
        if (v31)
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      }

      v33 = *(v16 + 34);
    }

    else
    {
      v33 = *(v16 + 34);
      LODWORD(v34) = v30;
      if (*(v33 + 4 * v30) == v30)
      {
        goto LABEL_29;
      }
    }

    v34 = 0;
    while (*(v33 + 4 * v34) != v30)
    {
      if (v32 == ++v34)
      {
        LODWORD(v34) = v16[67];
        break;
      }
    }

LABEL_29:
    v35 = SWORD1(v74);
    if (v31)
    {
LABEL_30:
      if (v34 == v32)
      {
        v36 = -1;
      }

      else
      {
        v36 = v34;
      }

      v35 += *(*(v16 + 45) + v36);
    }

LABEL_34:
    if (v16[85] && v88)
    {
      v37 = sub_10005C3B0(v88, SDWORD2(v88), WORD6(v80));
      LOWORD(v38) = qword_1001065A8;
      if (qword_1001065A8)
      {
        v38 = *(qword_1001065A8 + 4168);
      }

      v35 = (v35 + v37 - v38);
    }

    if (v35 < *v70)
    {
      v39 = sub_10002E914(v71, v30);
      v28 = v39;
      if (v72 != a1 && sub_100031630(v39))
      {
        if (a1[67] < 2)
        {
LABEL_10:
          v27 = -1;
        }

        else
        {
          v40 = 1;
          while (1)
          {
            v41 = sub_1000302E0(*(a1 + 32), *(*(a1 + 34) + 4 * v40));
            if (v41)
            {
              v42 = *(v41 + 268);
              if (v42 >= 2)
              {
                break;
              }
            }

LABEL_44:
            if (++v40 >= a1[67])
            {
              goto LABEL_10;
            }
          }

          v43 = 4 * v42;
          v44 = 4;
          while (*(*(v41 + 280) + v44) != v30)
          {
            v44 += 4;
            if (v43 == v44)
            {
              goto LABEL_44;
            }
          }

          v27 = *(*(v41 + 272) + v44);
        }

        v28 = sub_10002E914(v71, v27);
      }

      *v69 = v28;
      *v70 = v35;
    }

    v26 = 1;
    goto LABEL_14;
  }

  v58 = sub_10002E914(v71, v30);
  v59 = v58;
  if (v72 != a1 && sub_100031630(v58))
  {
    v60 = sub_1000247FC(a1, v30);
    v59 = sub_10002E914(v71, v60);
  }

  *v69 = v59;
  *v70 = 0;
  v26 = 1;
LABEL_91:
  if (v72 != a1)
  {
    sub_100024228(v72);
  }

  return v26;
}

uint64_t sub_10002C048(_DWORD *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = (v3 - v4);
  if (v3 == v4)
  {
    v6 = a1[1];
    v7 = a2[1];
    result = (v6 - v7);
    if (v6 == v7)
    {
      v8 = a1[2];
      v9 = a2[2];
      result = (v8 - v9);
      if (v8 == v9)
      {
        return (a1[3] - a2[3]);
      }
    }
  }

  return result;
}

_DWORD *sub_10002C08C(int a1)
{
  result = sub_1000C0034(40);
  if (result)
  {
    result[2] = 0;
    result[3] = (a1 + 255) >> 8;
    result[5] = -1;
  }

  return result;
}

uint64_t sub_10002C0CC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    v3 = v2 << 8;
    if ((v2 << 8) >= 1)
    {
      v4 = 0;
      do
      {
        v6 = v4 >> 8;
        if (*(*(*v1 + 8 * (v4 >> 8)) + 8 * v4))
        {
          v7 = *(*(v1 + 24) + 8 * v6);
          v8 = *(v7 + 4 * v4);
          if ((v8 & 0x40000000) != 0)
          {
            v9 = v8 & 0xBFFFFFFF;
            *(v7 + 4 * v4) = v9;
            if (!v9)
            {
              v10 = *(*v1 + 8 * v6);
              v11 = *(v10 + 8 * v4);
              *(v10 + 8 * v4) = 0;
              LODWORD(v10) = *(v1 + 20);
              --*(v1 + 16);
              if (v10 == v4)
              {
                v5 = v4;
                while (1)
                {
                  v12 = __OFSUB__(v5--, 1);
                  if (v5 < 0 != v12)
                  {
                    break;
                  }

                  if (*(*(*v1 + 8 * (v5 >> 8)) + 8 * v5))
                  {
                    goto LABEL_6;
                  }
                }

                v5 = -1;
LABEL_6:
                *(v1 + 20) = v5;
              }

              sub_100022FBC(v11);
            }
          }
        }

        ++v4;
      }

      while (v4 != v3);
      v2 = *(v1 + 8);
    }

    sub_1000C0B14(*v1, v2, v2);
    *v1 = 0;
    sub_1000C0B14(*(v1 + 24), *(v1 + 36), *(v1 + 36));
    *(v1 + 24) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10002C1E8(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 24) + 8 * (a2 >> 8));
  v3 = *(v2 + 4 * a2);
  if ((v3 & 0x40000000) == 0)
  {
    return 0;
  }

  v5 = v3 & 0xBFFFFFFF;
  *(v2 + 4 * a2) = v5;
  if (v5)
  {
    return 1;
  }

  v6 = *(*a1 + 8 * (a2 >> 8));
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = 0;
  LODWORD(v6) = *(a1 + 20);
  --*(a1 + 16);
  if (v6 == a2)
  {
    v8 = (a2 & (a2 >> 31)) - 1;
    while (1)
    {
      v9 = __OFSUB__(a2--, 1);
      if (a2 < 0 != v9)
      {
        break;
      }

      if (*(*(*a1 + 8 * (a2 >> 8)) + 8 * a2))
      {
        goto LABEL_11;
      }
    }

    a2 = v8;
LABEL_11:
    *(a1 + 20) = a2;
  }

  sub_100022FBC(v7);
  return 1;
}

uint64_t sub_10002C29C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (*(a1 + 8) << 8);
  v5 = *(a1 + 20);
  if (v5 < v4 - 1)
  {
    v6 = v5 + 1;
    result = (v5 + 1);
LABEL_3:
    *(a1 + 20) = v6;
LABEL_13:
    ++*(a1 + 16);
    *(*(*a1 + 8 * (result >> 8)) + 8 * result) = a2;
    *(a2 + 76) = a3;
    *(*(*(a1 + 24) + 8 * (result >> 8)) + 4 * result) = 0x40000000;
    return result;
  }

  if (*(a1 + 16) != v4)
  {
    if (v4 < 1)
    {
LABEL_12:
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
      while (*(*(*a1 + 8 * (result >> 8)) + 8 * result))
      {
        result = (result + 1);
        if (v4 == result)
        {
          goto LABEL_12;
        }
      }
    }

    goto LABEL_13;
  }

  v8 = a2;
  v9 = a3;
  if (sub_1000C06E8(a1, (a1 + 12), (a1 + 8), 8, 8, v4 | 1) && sub_1000C06E8((a1 + 24), (a1 + 32), (a1 + 36), 8, 4, v4 | 1))
  {
    v6 = *(a1 + 20) + 1;
    result = v4;
    a3 = v9;
    a2 = v8;
    goto LABEL_3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002C3D8(uint64_t a1, int a2)
{
  result = sub_1000C06E8(a1, (a1 + 12), (a1 + 8), 8, 8, a2);
  if (result)
  {

    return sub_1000C06E8((a1 + 24), (a1 + 32), (a1 + 36), 8, 4, a2);
  }

  return result;
}

uint64_t sub_10002C44C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2) << 8;
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *a1;
  while (*(*(v5 + 8 * (result >> 8)) + 8 * result) != a2)
  {
    result = (result + 1);
    if (v2 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10002C494(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) << 8;
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = v3 >> 8;
    if (*(*(*a1 + 8 * (v3 >> 8)) + 8 * v3) == a2)
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  v6 = *(*(a1 + 24) + 8 * v4);
  v7 = *(v6 + 4 * v3);
  if ((v7 & 0x40000000) == 0)
  {
    return 0;
  }

  v8 = v7 & 0xBFFFFFFF;
  *(v6 + 4 * v3) = v8;
  if (v8)
  {
    return 1;
  }

  v9 = *(*a1 + 8 * v4);
  v10 = *(v9 + 8 * v3);
  *(v9 + 8 * v3) = 0;
  LODWORD(v9) = *(a1 + 20);
  --*(a1 + 16);
  if (v9 == v3)
  {
    while (1)
    {
      v11 = __OFSUB__(v3--, 1);
      if (((v3 & 0x80000000) != 0) != v11)
      {
        break;
      }

      if (*(*(*a1 + 8 * (v3 >> 8)) + 8 * v3))
      {
        goto LABEL_16;
      }
    }

    v3 = -1;
LABEL_16:
    *(a1 + 20) = v3;
  }

  sub_100022FBC(v10);
  return 1;
}

uint64_t sub_10002C598(uint64_t result, unsigned int a2)
{
  v2 = *(*(result + 24) + 8 * (a2 >> 8));
  ++*(v2 + 4 * a2);
  return result;
}

uint64_t sub_10002C5B8(uint64_t result, int a2)
{
  v2 = *(*(result + 24) + 8 * (a2 >> 8));
  v3 = *(v2 + 4 * a2) - 1;
  *(v2 + 4 * a2) = v3;
  if (!v3)
  {
    v4 = *(*result + 8 * (a2 >> 8));
    v5 = *(v4 + 8 * a2);
    *(v4 + 8 * a2) = 0;
    LODWORD(v4) = *(result + 20);
    --*(result + 16);
    if (v4 == a2)
    {
      v6 = (a2 & (a2 >> 31)) - 1;
      while (1)
      {
        v7 = __OFSUB__(a2--, 1);
        if (a2 < 0 != v7)
        {
          break;
        }

        if (*(*(*result + 8 * (a2 >> 8)) + 8 * a2))
        {
          goto LABEL_8;
        }
      }

      a2 = v6;
LABEL_8:
      *(result + 20) = a2;
    }

    return sub_100022FBC(v5);
  }

  return result;
}

uint64_t sub_10002C688(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 20) < a2)
  {
    return 0;
  }

  else
  {
    return *(*(*a1 + 8 * (a2 >> 8)) + 8 * a2);
  }
}

uint64_t sub_10002C6B8(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_10002C6C4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 20);
  if ((v2 & 0x80000000) == 0)
  {
    v5 = 0;
    do
    {
      v7 = *(*(*a1 + 8 * (v5 >> 8)) + 8 * v5);
      if (v7)
      {
        v8 = sub_100022ADC(v7);
        if (!sub_1000C7A1C(v8, a2))
        {
          return v5;
        }

        v2 = *(a1 + 20);
      }

      v6 = v5 < v2;
      v5 = (v5 + 1);
    }

    while (v6);
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_10002C748(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1000BCAA0(a2, "bcm0", a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!sub_1000BCBAC(v4, *(a1 + 12)) || !sub_1000BCBAC(v5, *(a1 + 8)) || !sub_1000BCBAC(v5, *(a1 + 16)) || !sub_1000BCBAC(v5, *(a1 + 20)) || !sub_1000BCBAC(v5, *(a1 + 32)) || !sub_1000BCBAC(v5, *(a1 + 36)))
  {
    goto LABEL_26;
  }

  if ((*(a1 + 20) & 0x80000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v10 = *(*a1 + 8 * (v6 >> 8));
      v11 = *(v10 + 8 * v6);
      if (!v11)
      {
        if (!sub_1000BCBAC(v5, 0))
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      }

      if (sub_100022AD4(*(v10 + 8 * v6)) == 3)
      {
        if (!sub_1000BCBAC(v5, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v12 = sub_100022AD4(v11);
        if (!sub_1000BCBAC(v5, v12 == 2))
        {
          goto LABEL_22;
        }

        if (v12 != 2)
        {
          goto LABEL_12;
        }
      }

      if (!sub_1000BCBAC(v5, *v11) || !sub_10002388C(v11))
      {
LABEL_22:
        v8 = v6;
        goto LABEL_24;
      }

LABEL_12:
      v8 = v6 + 1;
      if (v6++ >= *(a1 + 20))
      {
        goto LABEL_24;
      }
    }
  }

  v8 = 0;
LABEL_24:
  if (sub_1000BCE4C(v5, *(a1 + 24), *(a1 + 36), 0x100u, 4))
  {
    v13 = v8 == *(a1 + 20) + 1;
  }

  else
  {
LABEL_26:
    v13 = 0;
  }

  sub_1000BCB64(v5);
  return v13;
}

BOOL sub_10002C910(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1000BBAE0(a2, "bcm0", a3, a4, a5, a6, a7, a8);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  if (!sub_1000BBD54(v11, &v28 + 4) || !sub_1000BBD54(v12, &v28) || !sub_1000BBD54(v12, &v26 + 4) || !sub_1000BBD54(v12, &v27) || !sub_1000BBD54(v12, &v26) || !sub_1000BBD54(v12, &v25 + 4) || !sub_1000C09A8(a1, (a1 + 12), SHIDWORD(v28)) || v28 >= 1 && !sub_10002C3D8(a1, v28 << 8))
  {
    goto LABEL_32;
  }

  v13 = v27;
  *(a1 + 16) = HIDWORD(v26);
  *(a1 + 20) = v13;
  if (v13 < 0)
  {
    v16 = 0;
  }

  else
  {
    v14 = 0;
    while (sub_1000BBD54(v12, &v25))
    {
      if (v25)
      {
        if (!sub_1000BBD54(v12, &v27 + 4))
        {
          break;
        }

        v18 = *(*a1 + 8 * (v14 >> 8));
        v19 = sub_100023894(v12, SHIDWORD(v27), a4, a5);
        *(v18 + 8 * v14) = v19;
        if (!v19)
        {
          break;
        }
      }

      v16 = v14 + 1;
      if (v14++ >= v27)
      {
        goto LABEL_22;
      }
    }

    v16 = v14;
  }

LABEL_22:
  v21 = (a1 + 24);
  v20 = *(a1 + 24);
  if (v20)
  {
    if (*(a1 + 36) >= 1)
    {
      v22 = 0;
      do
      {
        sub_1000BFEC4(*(*(a1 + 24) + 8 * v22++));
      }

      while (v22 < *(a1 + 36));
      v20 = *v21;
    }

    sub_1000BFEC4(v20);
  }

  v24 = 0;
  if (sub_1000BC6E0(v12, (a1 + 24), *(a1 + 32), 256, 4, &v24) && (!*v21 || v24 == *(a1 + 36)))
  {
    v15 = v16 == *(a1 + 20) + 1;
  }

  else
  {
LABEL_32:
    v15 = 0;
  }

  sub_1000BBBC4(v12);
  return v15;
}

uint64_t sub_10002CB38(unsigned int *a1, int a2, int a3, uint64_t *a4, int a5)
{
  v11 = sub_1000C0034(312);
  if (v11)
  {
    v12 = sub_1000C7898(" XTR ", (v11 + 4), 64, v10);
    *v11 = 1;
    if (v12)
    {
      *(v11 + 52) = 0u;
      *(v11 + 36) = 0u;
      *(v11 + 20) = 0u;
      *(v11 + 4) = 0u;
      sub_1000C78DC((v11 + 4), " XTR ", 64);
    }

    *(v11 + 68) = 0x100000001;
    *(v11 + 80) = sub_10002CFF0;
    *(v11 + 88) = sub_10002D060;
    *(v11 + 96) = sub_10002D068;
    *(v11 + 104) = sub_10002D170;
    *(v11 + 112) = sub_10002D18C;
    *(v11 + 120) = 0;
    *(v11 + 128) = sub_10002D328;
    *(v11 + 136) = sub_10002D3DC;
    *(v11 + 144) = nullsub_4;
    *(v11 + 152) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 184) = 0u;
    *(v11 + 200) = sub_10002D55C;
    *(v11 + 208) = sub_10002D564;
    *(v11 + 216) = 0u;
    *(v11 + 232) = 0u;
    *(v11 + 256) = a4;
    *(v11 + 264) = a2;
    v13 = sub_1000C0034(4 * a2 + 4);
    *(v11 + 272) = v13;
    if (!v13)
    {
      goto LABEL_48;
    }

    v14 = a2;
    *v13 = 0;
    v55 = a5;
    if (a2 < 1)
    {
      v21 = 0;
      v22 = sub_1000C0034(0);
      if (v22)
      {
LABEL_16:
        v28 = v22;
        v54 = v21;
        *(v11 + 280) = v22;
        if (a2 >= 1)
        {
          v29 = 0;
          v30 = 0;
          do
          {
            if (a3)
            {
              if (a3 == 1)
              {
                v32 = sub_1000BA810(a4, *(a1 + v29));
              }

              else
              {
                v32 = a1[v29];
              }

              v31 = sub_1000B28E4(a4, v32, __src, 200);
            }

            else
            {
              __src[0].i16[0] = *(a1 + v29);
              v31 = 1;
            }

            memcpy((v28 + 2 * v30), __src, 2 * v31);
            v30 += v31;
            ++v29;
          }

          while (a2 != v29);
        }

        *(v11 + 288) = v55;
        if (!v55)
        {
LABEL_44:
          *(v11 + 248) = 1;
          return v11;
        }

        v33 = sub_1000C0034(4 * a2 + 4);
        *(v11 + 296) = v33;
        if (v33)
        {
          v34 = sub_1000C0034(v54);
          *(v11 + 304) = v34;
          if (v34)
          {
            **(v11 + 296) = 0;
            v35 = 2 * sub_1000B2164(a4);
            v43 = sub_1000C9F54(v35 + 2, v36, v37, v38, v39, v40, v41, v42);
            if (a2 >= 1)
            {
              v44 = 0;
              v45 = 0;
              do
              {
                v46 = *(v11 + 272);
                v47 = *(v46 + 4 * v44);
                v48 = v44 + 1;
                if (v47 < *(v46 + 4 * (v44 + 1)))
                {
                  do
                  {
                    sub_1000B811C(a4, *(v28 + 2 * v47), v43);
                    v49 = v45;
                    v50 = v45;
                    while (v50 > *(*(v11 + 296) + 4 * v44))
                    {
                      v51 = *(v11 + 304) + 2 * v50--;
                      if (*v43 == *(v51 - 2))
                      {
                        goto LABEL_34;
                      }
                    }

                    ++v45;
                    *(*(v11 + 304) + 2 * v49) = *v43;
LABEL_34:
                    ++v47;
                  }

                  while (v47 < *(*(v11 + 272) + 4 * v48));
                }

                *(*(v11 + 296) + 4 * v48) = v45;
                ++v44;
              }

              while (v48 != v14);
            }

            sub_1000CA03C(v43, v35 + 2);
            goto LABEL_44;
          }

          sub_1000BFEC4(*(v11 + 272));
          sub_1000BFEC4(*(v11 + 280));
          v23 = *(v11 + 296);
        }

        else
        {
          sub_1000BFEC4(*(v11 + 272));
          v23 = *(v11 + 280);
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (a3 == 2)
      {
        v15 = 0;
        v24 = 4;
        v25 = a2;
        v26 = a1;
        do
        {
          v27 = *v26++;
          v15 += sub_1000B28E4(a4, v27, __src, 200);
          *(*(v11 + 272) + v24) = v15;
          v24 += 4;
          --v25;
        }

        while (v25);
      }

      else
      {
        if (a3 != 1)
        {
          v52 = 0;
          do
          {
            __src[0].i16[0] = *(a1 + v52);
            *(*(v11 + 272) + 4 * v52 + 4) = v52 + 1;
            ++v52;
          }

          while (a2 != v52);
          v21 = 2 * a2;
          v22 = sub_1000C0034(v21);
          if (v22)
          {
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        v15 = 0;
        v16 = 4;
        v17 = a2;
        v18 = a1;
        do
        {
          v19 = *v18;
          v18 = (v18 + 2);
          v20 = sub_1000BA810(a4, v19);
          v15 += sub_1000B28E4(a4, v20, __src, 200);
          *(*(v11 + 272) + v16) = v15;
          v16 += 4;
          --v17;
        }

        while (v17);
      }

      v21 = 2 * v15;
      v22 = sub_1000C0034(v21);
      if (v22)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v23 = *(v11 + 272);
LABEL_47:
    sub_1000BFEC4(v23);
LABEL_48:
    sub_1000BFEC4(v11);
    return 0;
  }

  return v11;
}

uint64_t sub_10002CFF0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 280));
    v1[35] = 0;
    sub_1000BFEC4(v1[34]);
    v1[34] = 0;
    sub_1000BFEC4(v1[37]);
    v1[37] = 0;
    sub_1000BFEC4(v1[38]);
    v1[38] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10002D068(uint64_t a1, unsigned int a2)
{
  v3 = sub_1000BA810(*(a1 + 256), a2);
  v4 = sub_1000B28E4(*(a1 + 256), v3, 0, 0);
  if (!v4)
  {
    return 1;
  }

  v12 = v4;
  v13 = sub_1000C9F54(2 * v4, v5, v6, v7, v8, v9, v10, v11);
  v14 = sub_1000B28E4(*(a1 + 256), v3, v13, v12);
  v15 = *(*(a1 + 272) + 4 * *(a1 + 264));
  if (v15 < 1 || v14 < 1)
  {
    v17 = 1;
  }

  else
  {
    v16 = 0;
    v17 = 1;
    while (2)
    {
      v18 = v14;
      v19 = v13;
      do
      {
        v20 = v19->u16[0];
        v19 = (v19 + 2);
        if (*(*(a1 + 280) + 2 * v16) == v20)
        {
          v17 = 0;
          *(a1 + 264) = -1;
          goto LABEL_13;
        }

        --v18;
      }

      while (v18);
      if (++v16 != v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  sub_1000CA03C(v13, 2 * v14);
  return v17;
}

void sub_10002D170(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, __int16 a5)
{
  *(a2 + 8) = a3;
  *(a2 + 16) = a4 & 0x1FFFFFFFFFFFFFLL;
  *a2 = (a4 >> 53) & 0x3FF;
  *(a2 + 24) = a5;
}

BOOL sub_10002D18C(char *__s1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *(__s1 + 2);
  v4 = v3 + 1;
  *(a3 + 1) = v3 + 1 + (*__s1 << 53);
  v5 = *(a2 + 264);
  if (v3 >= v5)
  {
    return 0;
  }

  *(a3 + 4) = v4 == v5;
  a3[1] = 0;
  *(a3 + 3) = 0;
  v9 = *(a2 + 272);
  v10 = *(v9 + 4 * v3);
  v11 = (*(a2 + 280) + 2 * v10);
  v12 = *(v9 + 4 * v4) - v10;
  v13 = __s1 + 24;
  if (*(__s1 + 12) == -1)
  {
    while (1)
    {
      v15 = *(__s1 + 1);
      if (v15 >= v12)
      {
        break;
      }

      *a3 = *&v11[2 * v15];
      ++*(__s1 + 1);
      if (!qword_1001065A8 || !*(qword_1001065A8 + 1288) || sub_1000BAD08(*(a2 + 256), *(__s1 + 4), *a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (!qword_1001065A8 || !*(qword_1001065A8 + 1288) || (result = sub_1000BAD08(*(a2 + 256), *(__s1 + 4), *a3)))
  {
    if (*(__s1 + 1))
    {
      return 0;
    }

    if (sub_1000C77E0(v13, 2, v11, v12) != -1)
    {
      *a3 = *(__s1 + 12);
      result = 1;
      *(__s1 + 1) = 1;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10002D328(uint64_t a1, char *__s1, int a3)
{
  v3 = *(a1 + 264);
  if (v3 < a3)
  {
    return 0;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 4 * v3;
  v8 = a3;
  while (sub_1000C77E0(__s1, 2, (*(a1 + 280) + 2 * *(*(a1 + 272) + v7 - 4)), *(*(a1 + 272) + v7) - *(*(a1 + 272) + v7 - 4)) != -1)
  {
    __s1 += 2;
    v7 -= 4;
    if (!--v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10002D3DC(uint64_t a1, int a2, uint64_t a3, void *a4, _DWORD *a5, _BYTE *a6)
{
  if (*(a1 + 264) != a2)
  {
    return 0;
  }

  v9 = *(a1 + 256);
  v36 = sub_1000B216C(v9);
  v35 = 2 * v36;
  v17 = sub_1000C9F54(v35, v10, v11, v12, v13, v14, v15, v16);
  if (a2 < 1)
  {
LABEL_10:
    sub_1000CA03C(v17, v35);
    bzero(a4, 8 * a2);
    if (a6)
    {
      bzero(a6, a2);
      *a6 = 1;
    }

    *a5 = 0;
    return 1;
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = *(a1 + 272);
      v20 = *(a1 + 280);
      v21 = *(v19 + 4 * v18);
      v22 = a3;
      v23 = *(a3 + 4 * v18++);
      v24 = *(v19 + 4 * v18);
      v25 = v9;
      v26 = sub_1000B28E4(v9, v23, v17, v36);
      if (v26 < 1)
      {
        break;
      }

      v27 = v24 - v21;
      v28 = (v20 + 2 * v21);
      v29 = v17;
      v30 = v26;
      while (sub_1000C77E0(v29, 2, v28, v27) == -1)
      {
        v29 = (v29 + 2);
        if (!--v30)
        {
          goto LABEL_14;
        }
      }

      a3 = v22;
      v9 = v25;
      if (v18 == a2)
      {
        goto LABEL_10;
      }
    }

LABEL_14:
    sub_1000CA03C(v17, v35);
    return 0;
  }
}

uint64_t sub_10002D564(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 288))
  {
    return 0xFFFFLL;
  }

  if (*(a1 + 264) == a2)
  {
    return 0;
  }

  v4 = *(a1 + 304);
  v5 = (*(a1 + 296) + 4 * a2);
  result = (v5[1] - *v5);
  *a3 = v4 + 2 * *v5;
  return result;
}

uint64_t sub_10002D5A8(int a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  result = 0;
  if (a1 <= 0x2000000 && ((a2 | a1) & 0x80000000) == 0)
  {
    if (a1 || !a2)
    {
      if (!a1 || a2)
      {
        result = sub_1000C0034(224);
        if (result)
        {
          *(result + 204) = 0x100000001;
          v15 = 32 - __clz(a1 + 1);
          if (v15 >= 8)
          {
            v15 = 8;
          }

          if (!a1)
          {
            v15 = 8;
          }

          *result = v15;
          *(result + 4) = 1 << v15;
          v16 = (a1 + (1 << v15) - 1) / (1 << v15);
          *(result + 8) = v16;
          *(result + 24) = 0;
          *(result + 12) = 0;
          v17 = 32 - __clz(a2);
          if (v17 >= 8)
          {
            v17 = 8;
          }

          if (a2)
          {
            v18 = v17;
          }

          else
          {
            v18 = 8;
          }

          *(result + 32) = v18;
          *(result + 36) = 1 << v18;
          *(result + 40) = (a2 + (1 << v18) - 1) / (1 << v18);
          *(result + 44) = 0;
          *(result + 52) = a5;
          *(result + 148) = 0;
          *(result + 152) = a3;
          *(result + 172) = 0;
          *(result + 176) = a4;
          *(result + 128) = 0;
          *(result + 136) = 0;
          *(result + 144) = v16;
          *(result + 160) = 0;
          *(result + 168) = v16;
          *(result + 56) = a6;
          if (a6)
          {
            v19 = a7;
          }

          else
          {
            v19 = -1;
          }

          *(result + 64) = v19;
          *(result + 200) = 0;
          *(result + 216) = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002D720(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 204))
    {
      if (*(result + 12) >= 1)
      {
        v2 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 24) + 8 * v2++));
        }

        while (v2 < *(v1 + 12));
      }

      sub_1000BFEC4(*(v1 + 24));
      if (*(v1 + 44) >= 1)
      {
        v3 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 128) + 8 * v3++));
        }

        while (v3 < *(v1 + 44));
      }

      sub_1000BFEC4(*(v1 + 128));
      if (*(v1 + 152))
      {
        if (*(v1 + 148) >= 1)
        {
          v4 = 0;
          do
          {
            sub_1000BFEC4(*(*(v1 + 136) + 8 * v4++));
          }

          while (v4 < *(v1 + 148));
        }

        sub_1000BFEC4(*(v1 + 136));
      }

      if (*(v1 + 172) >= 1)
      {
        v5 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 160) + 8 * v5++));
        }

        while (v5 < *(v1 + 172));
      }

      sub_1000BFEC4(*(v1 + 160));
      v6 = *(v1 + 104);
      if (v6)
      {
        if (*(v1 + 116) >= 1)
        {
          v7 = 0;
          do
          {
            sub_1000BFEC4(*(*(v1 + 104) + 8 * v7++));
          }

          while (v7 < *(v1 + 116));
          v6 = *(v1 + 104);
        }

        sub_1000BFEC4(v6);
      }

      sub_1000BFEC4(*(v1 + 72));
      sub_1000BFEC4(*(v1 + 80));
      result = sub_100033E38(*(v1 + 216));
      *(v1 + 216) = 0;
    }
  }

  return result;
}

uint64_t sub_10002D8A4(uint64_t a1, int a2, uint64_t a3, unsigned __int16 a4, uint64_t *a5)
{
  v10 = sub_1000B2074(a5);
  v11 = *(a1 + 16);
  v12 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v12 = *(qword_1001065A8 + 1280);
  }

  if (v12 > v11)
  {
    if (v11 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = -1;
      do
      {
        v16 = *(*(*(a1 + 24) + 8 * (v14 >> *a1)) + 4 * ((*(a1 + 4) + 0x7FFFFFFF) & v14));
        v17 = *(*(*(a1 + 128) + 8 * (v16 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v16));
        if (v17 != v15)
        {
          v18 = sub_1000BA810(a5, *(*(*(a1 + 128) + 8 * (v16 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v16)));
          v13 += sub_1000B2C18(a5, v18);
          v11 = *(a1 + 16);
          v15 = v17;
        }

        ++v14;
      }

      while (v14 < v11);
    }

    if (v13 <= *(a1 + 92))
    {
      goto LABEL_29;
    }

    v35 = sub_1000C0034(8 * v13);
    if (v35)
    {
      v36 = v35;
      v37 = sub_1000C0034(2 * v13);
      if (v37)
      {
        v38 = v37;
        sub_1000BFEC4(*(a1 + 72));
        sub_1000BFEC4(*(a1 + 80));
        *(a1 + 72) = v36;
        *(a1 + 80) = v38;
        *(a1 + 92) = v13;
LABEL_29:
        v65 = a4;
        v39 = sub_1000B216C(a5);
        v64 = 2 * v39;
        v47 = sub_1000C9F54(v64, v40, v41, v42, v43, v44, v45, v46);
        if (*(a1 + 16) < 1)
        {
          v49 = 0;
        }

        else
        {
          v48 = 0;
          v49 = 0;
          v50 = -1;
          do
          {
            v51 = *(a1 + 24);
            v52 = *(a1 + 4) - 1;
            v53 = *(*(v51 + 8 * (v48 >> *a1)) + 4 * (v52 & v48));
            v54 = v48 + 1;
            v55 = *(*(*(a1 + 128) + 8 * (v53 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v53));
            if (v55 != v50)
            {
              v56 = *(*(v51 + 8 * (v54 >> *a1)) + 4 * (v52 & v54));
              v57 = sub_10001C7F8(v10, *(*(*(a1 + 128) + 8 * (v53 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v53)), v47, v39);
              if (v57 >= 1)
              {
                v58 = 0;
                v59 = 8 * v49;
                v60 = 2 * v49;
                v49 += v57;
                v61 = v59;
                do
                {
                  *(*(a1 + 72) + v61) = v47->i16[v58];
                  *(*(a1 + 80) + v60 + v58 * 2) = v55;
                  *(*(a1 + 72) + v61 + 2) = v56 == v53 + 1;
                  *(*(a1 + 72) + v59 + 2 * v58++ + 4) = v48 << 10;
                  v61 += 8;
                }

                while (v57 != v58);
              }

              v50 = v55;
            }

            ++v48;
          }

          while (v54 < *(a1 + 16));
        }

        sub_1000CA03C(v47, v64);
        *(a1 + 88) = v49;
        *(a1 + 96) = v65;
        return 1;
      }

      v62 = v36;
      goto LABEL_47;
    }

LABEL_48:
    result = 0;
    *(a1 + 88) = -1;
    return result;
  }

  if (*(a1 + 188))
  {
    if (*(a1 + 96) != a4)
    {
      if (*(a1 + 92) < a2)
      {
        v19 = sub_1000C0034(8 * a2);
        if (!v19)
        {
          goto LABEL_48;
        }

        v20 = v19;
        v21 = sub_1000C0034(2 * a2);
        if (!v21)
        {
          v62 = v20;
LABEL_47:
          sub_1000BFEC4(v62);
          goto LABEL_48;
        }

        v22 = v21;
        sub_1000BFEC4(*(a1 + 72));
        sub_1000BFEC4(*(a1 + 80));
        *(a1 + 72) = v20;
        *(a1 + 80) = v22;
        *(a1 + 92) = a2;
      }

      if (a2 < 1)
      {
        v24 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = sub_10001B934(v10, *(a3 + 2 * v23), 0);
          v26 = sub_10002DD34(a1, v25, &v66);
          if (v26 != 0xFFFF)
          {
            v27 = (*(*(a1 + 24) + 8 * (v26 >> *a1)) + 4 * ((*(a1 + 4) + 0x7FFFFFFF) & v26));
            v28 = v24;
            v29 = 8 * v24;
            v30 = v24 + 1;
            v31 = v26 << 10;
            v32 = v26 + 1;
            do
            {
              *(*(a1 + 72) + v29) = *(a3 + 2 * v23);
              *(*(a1 + 80) + 2 * v28) = v25;
              v24 = v30;
              v33 = (*(*(a1 + 24) + 8 * (v32 >> *a1)) + 4 * ((*(a1 + 4) + 0x7FFFFFFF) & v32));
              *(*(a1 + 72) + v29 + 2) = *v33 == *v27 + 1;
              *(*(a1 + 72) + v29 + 4) = v31;
              v34 = *(a1 + 16);
              if (v32 == v34)
              {
                break;
              }

              if (v34 == *(a1 + 48))
              {
                break;
              }

              v29 += 8;
              v30 = v24 + 1;
              v31 += 1024;
              ++v32;
              ++v28;
              v27 = v33;
            }

            while (v25 == *(*(*(a1 + 128) + 8 * (*v33 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & *v33)));
          }

          ++v23;
        }

        while (v23 != a2);
      }

      *(a1 + 88) = v24;
      *(a1 + 96) = a4;
    }
  }

  else
  {
    *(a1 + 88) = -1;
  }

  return 1;
}

uint64_t sub_10002DD34(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (*(a1 + 104))
  {
    *a3 = 1;
    return *(*(*(a1 + 104) + 8 * (a2 >> 8)) + 2 * a2);
  }

  v5 = *(a1 + 16);
  if (v5 == *(a1 + 48))
  {
    result = 0;
    v6 = v5 - 1;
    if (v5 >= 1)
    {
      do
      {
        v7 = (v6 + result) >> 1;
        v8 = *(*(*(a1 + 128) + 8 * (v7 >> *(a1 + 32))) + 2 * ((*(a1 + 36) + 0x7FFFFFFF) & v7));
        if (v8 < a2)
        {
          result = v7 + 1;
        }

        else
        {
          result = result;
        }

        if (v8 >= a2)
        {
          v6 = v7 - 1;
        }
      }

      while (result <= v6);
    }

    if (result < v5 && *(*(*(a1 + 128) + 8 * (result >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & result)) == a2)
    {
      *a3 = 1;
      return result;
    }
  }

  else
  {
    result = 0;
    v9 = v5 - 1;
    if (v5 >= 1)
    {
      do
      {
        v10 = (result + v9) >> 1;
        v11 = *(*(*(a1 + 24) + 8 * (v10 >> *a1)) + 4 * (v10 & (*(a1 + 4) + 0x7FFFFFFF)));
        v12 = *(*(*(a1 + 128) + 8 * (v11 >> *(a1 + 32))) + 2 * (v11 & (*(a1 + 36) - 1)));
        if (v12 < a2)
        {
          result = v10 + 1;
        }

        else
        {
          result = result;
        }

        if (v12 >= a2)
        {
          v9 = v10 - 1;
        }
      }

      while (result <= v9);
    }

    if (result < v5)
    {
      v13 = *(a1 + 24);
      v14 = *(a1 + 4) - 1;
      v15 = *(*(v13 + 8 * (result >> *a1)) + 4 * (v14 & result));
      if (*(*(*(a1 + 128) + 8 * (v15 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v15)) == a2)
      {
        *a3 = *(*(v13 + 8 * ((result + 1) >> *a1)) + 4 * (v14 & (result + 1))) - v15;
        return result;
      }
    }
  }

  return 0xFFFFLL;
}

uint64_t sub_10002DF04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (v3 >= *(a1 + 36))
        {
          v7 = *(a1 + 36);
        }

        else
        {
          v7 = v3;
        }

        j__memmove((a2 + 2 * v6), *(*(a1 + 128) + v5), 2 * v7);
        v6 += v7;
        v5 += 8;
        v8 = __OFSUB__(v3, v7);
        v3 -= v7;
      }

      while (!((v3 < 0) ^ v8 | (v3 == 0)));
    }
  }

  return *(a1 + 48);
}

uint64_t sub_10002DF90(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 152))
  {
    return *(*(*(a1 + 136) + 8 * (a2 >> *a1)) + ((*(a1 + 4) - 1) & a2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002DFC8(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 8 * (a2 >> *a1));
  v6 = *(a1 + 4) - 1;
  v7 = *(*(v4 + 8 * ((a2 + 1) >> *a1)) + 4 * (v6 & (a2 + 1)));
  v8 = v6 & a2;
  v9 = v7 - *(v5 + 4 * v8);
  *a4 = v9;
  if (v9 <= a3)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(*(a1 + 128) + 8 * ((*(v5 + 4 * v8) + a3) >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & (*(v5 + 4 * v8) + a3)));
  }
}

uint64_t sub_10002E040(uint64_t a1, unsigned int a2, _WORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 4) - 1;
  v6 = *(a1 + 128);
  v7 = *(*(v4 + 8 * (a2 >> *a1)) + 4 * (v5 & a2));
  v8 = *(a1 + 32);
  v9 = *(v6 + 8 * (v7 >> v8));
  v10 = *(a1 + 36) - 1;
  v11 = v10 & v7;
  v12 = a2 + 1;
  v13 = *(v4 + 8 * (v12 >> *a1));
  v14 = v5 & v12;
  v15 = *(v13 + 4 * v14);
  if (*(v9 + 2 * v11) != *(*(v6 + 8 * (v15 >> v8)) + 2 * (v15 & v10)))
  {
    return 0;
  }

  *a4 = *(*(v4 + 8 * ((a2 + 2) >> *a1)) + 4 * (v5 & (a2 + 2))) - v15 == 2;
  *a3 = *(*(*(a1 + 128) + 8 * ((*(v13 + 4 * v14) + 1) >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & (*(v13 + 4 * v14) + 1)));
  return 1;
}

uint64_t sub_10002E108(uint64_t result, void *a2, _DWORD *a3)
{
  *a2 = *(result + 56);
  *a3 = *(result + 64);
  return result;
}

uint64_t sub_10002E11C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 4) - 1;
  v4 = *(*(v2 + 8 * (a2 >> *a1)) + 4 * (v3 & a2));
  v5 = a2 + 1;
  if ((*(*(v2 + 8 * (v5 >> *a1)) + 4 * (v3 & v5)) - v4) < 2)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    v8 = *(a1 + 128);
    v9 = *(a1 + 32);
    v10 = *(a1 + 36) - 1;
    v11 = *(*(v8 + 8 * (v4 >> v9)) + 2 * (v10 & v4));
    while (1)
    {
      v12 = *(*(v2 + 8 * (v5 >> *a1)) + 4 * (v5 & v3));
      if (*(*(v8 + 8 * (v12 >> v9)) + 2 * (v12 & v10)) != v11)
      {
        break;
      }

      if (v7 == ++v5)
      {
        v5 = *(a1 + 16);
        return v5 + ~a2;
      }
    }
  }

  return v5 + ~a2;
}

uint64_t sub_10002E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 132);
  if (!v8)
  {
    return 1;
  }

  v10 = *(*(*(a1 + 40) + ((v8 >> 5) & 0x7FFFFF8)) + 8 * *(a1 + 132));
  v11 = sub_100031D70(*(a1 + 136), v10, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    v12 = *(a1 + 136);
    *(a1 + 132) = 0;
    sub_1000C0A78(*(v12 + 24), *(v12 + 12), *(v12 + 12));
    *(v12 + 12) = 0;
    sub_1000C0A78(*(v12 + 128), *(v12 + 44), *(v12 + 44));
    *(v12 + 44) = 0;
    sub_1000C0A78(*(v12 + 136), *(v12 + 148), *(v12 + 148));
    *(v12 + 148) = 0;
    sub_1000C0A78(*(v12 + 160), *(v12 + 172), *(v12 + 172));
    *(v12 + 172) = 0;
    *(v12 + 16) = 0;
    *(v12 + 48) = 0;
    if (!*(a1 + 72) || *(v10 + 180))
    {
      return 1;
    }

    v14 = *(v10 + 16);
    if (v14 < 1)
    {
      v22 = 0;
      v23 = qword_1001065A8;
      if (!qword_1001065A8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = *a1;
      v18 = -1;
      do
      {
        v19 = *(*(*(v10 + 24) + 8 * (v16 >> *v10)) + 4 * ((*(v10 + 4) + 0x7FFFFFFF) & v16));
        v20 = *(*(*(v10 + 128) + 8 * (v19 >> *(v10 + 32))) + 2 * ((*(v10 + 36) - 1) & v19));
        if (v20 != v18)
        {
          v21 = sub_1000BA810(v17, *(*(*(v10 + 128) + 8 * (v19 >> *(v10 + 32))) + 2 * ((*(v10 + 36) - 1) & v19)));
          v15 += sub_1000B2C18(v17, v21);
          v14 = *(v10 + 16);
          v18 = v20;
        }

        ++v16;
      }

      while (v16 < v14);
      v22 = v15;
      v23 = qword_1001065A8;
      if (!qword_1001065A8)
      {
        goto LABEL_14;
      }
    }

    v23 = *(v23 + 1272);
LABEL_14:
    *(v10 + 180) = v23 <= v22;
  }

  return v11;
}

uint64_t sub_10002E3A0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 32) >= 1)
    {
      v2 = 0;
      do
      {
        v3 = ++v2 >> 8;
        v4 = *(*(*(v1 + 56) + 8 * (v2 >> 8)) + 8 * v2);
        if (v4)
        {
          sub_1000BFEC4(v4);
          if (!*(*(*(v1 + 104) + 8 * v3) + 4 * v2))
          {
            v5 = *(*(*(v1 + 40) + 8 * v3) + 8 * v2);
            if (*(v5 + 204))
            {
              sub_10002D720(v5);
              sub_1000BFEC4(v5);
            }
          }
        }
      }

      while (v2 < *(v1 + 32));
    }

    v6 = *(v1 + 40);
    if (v6)
    {
      if (*(v1 + 52) >= 1)
      {
        v7 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 40) + 8 * v7++));
        }

        while (v7 < *(v1 + 52));
        v6 = *(v1 + 40);
      }

      sub_1000BFEC4(v6);
    }

    v8 = *(v1 + 56);
    if (v8)
    {
      if (*(v1 + 68) >= 1)
      {
        v9 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 56) + 8 * v9++));
        }

        while (v9 < *(v1 + 68));
        v8 = *(v1 + 56);
      }

      sub_1000BFEC4(v8);
    }

    v10 = *(v1 + 88);
    if (v10)
    {
      if (*(v1 + 100) >= 1)
      {
        v11 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 88) + 8 * v11++));
        }

        while (v11 < *(v1 + 100));
        v10 = *(v1 + 88);
      }

      sub_1000BFEC4(v10);
    }

    v12 = *(v1 + 104);
    if (v12)
    {
      if (*(v1 + 116) >= 1)
      {
        v13 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 104) + 8 * v13++));
        }

        while (v13 < *(v1 + 116));
        v12 = *(v1 + 104);
      }

      sub_1000BFEC4(v12);
    }

    if (*(v1 + 72))
    {
      v14 = *(v1 + 32);
      if (v14 >= 1)
      {
        v15 = 0;
        do
        {
          ++v15;
          v16 = *(*(*(v1 + 72) + 8 * (v15 >> 8)) + 8 * v15);
          if (v16)
          {
            sub_10005D9D0(v16);
            v14 = *(v1 + 32);
          }
        }

        while (v15 < v14);
      }

      if (*(v1 + 84) >= 1)
      {
        v17 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 72) + 8 * v17++));
        }

        while (v17 < *(v1 + 84));
      }

      sub_1000BFEC4(*(v1 + 72));
    }

    v18 = *(v1 + 136);
    sub_10002D720(v18);
    sub_1000BFEC4(v18);
    v19 = *(v1 + 120);
    if (v19)
    {
      sub_1000BFEC4(*v19);
      sub_1000BFEC4(v19[2]);
      sub_1000BFEC4(v19[4]);
      sub_1000BFEC4(v19);
    }

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10002E608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(*(*(a1 + 40) + 8 * (v9 >> 8)) + 8 * v9);
  if (*(v11 + 152))
  {
    return *(*(*(v11 + 136) + 8 * (v8 >> *v11)) + ((*(v11 + 4) - 1) & v8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(*(*(a1 + 40) + 8 * (v9 >> 8)) + 8 * v9);
  return *(*(*(v11 + 160) + 8 * (v8 >> *v11)) + 4 * ((*(v11 + 4) - 1) & v8));
}

uint64_t sub_10002E70C(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  *a3 = 0;
  if (!sub_1000C7A1C(a2, "<s>"))
  {
    return 0;
  }

  if (!sub_1000C7A1C(a2, "<e>"))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (v6 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 1;
  while (1)
  {
    v9 = v7 >> 8;
    v10 = *(*(*(a1 + 56) + 8 * (v7 >> 8)) + 8 * v7);
    if (v10)
    {
      break;
    }

LABEL_5:
    v8 = v7 < v6;
    v7 = (v7 + 1);
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (sub_1000C7A1C(v10, a2))
  {
    v6 = *(a1 + 32);
    goto LABEL_5;
  }

  if (*(*(*(a1 + 40) + 8 * v9) + 8 * v7))
  {
    return v7;
  }

  v12 = *(*(a1 + 104) + 8 * v9);
  *a3 = 1;
  return *(v12 + 4 * v7);
}

uint64_t sub_10002E83C(uint64_t a1, unsigned __int8 *a2)
{
  result = sub_1000C7A1C(a2, "<s>");
  if (result)
  {
    result = sub_1000C7A1C(a2, "<e>");
    if (result)
    {
      v5 = *(a1 + 32);
      if (v5 < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = 1;
      while (1)
      {
        v8 = *(*(*(a1 + 56) + 8 * (v6 >> 8)) + 8 * v6);
        if (v8)
        {
          if (!sub_1000C7A1C(v8, a2))
          {
            if (*(*(*(a1 + 40) + 8 * (v6 >> 8)) + 8 * v6))
            {
              return v6;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          v5 = *(a1 + 32);
        }

        if (v6++ >= v5)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

const char *sub_10002E914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return "<s>";
  }

  if ((a2 & 0x40000000) == 0)
  {
    return *(*(*(a1 + 56) + 8 * (a2 >> 8)) + 8 * a2);
  }

  v4 = sub_10002C688(*(a1 + 16), a2 & 0x3FFFFFFF);

  return sub_100022ADC(v4);
}

uint64_t sub_10002E9A8(uint64_t a1, const void *a2, unsigned int a3)
{
  v5 = *(*(a1 + 40) + 8 * (a3 >> 8));
  v6 = a3;
  if (*(*(*(a1 + 104) + 8 * (a3 >> 8)) + 4 * a3))
  {
    v7 = *(*(*(a1 + 104) + 8 * (a3 >> 8)) + 4 * a3);
  }

  else
  {
    v7 = a3;
  }

  v8 = (sub_1000C7854(a2) + 1);
  v9 = sub_1000C0034(v8);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  j__memmove(v9, a2, v8);
  v11 = *(a1 + 32);
  if (v11 == *(a1 + 24) - 1)
  {
    if (!sub_100033E88(a1, v11 + 2))
    {
      return 0xFFFFFFFFLL;
    }

    result = (*(a1 + 32) + 1);
    *(a1 + 32) = result;
LABEL_14:
    if (result == -1)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v11 >= 1)
  {
    v13 = (v11 + 1);
    v14 = -v11;
    result = 1;
    while (*(*(*(a1 + 56) + 8 * (result >> 8)) + 8 * result))
    {
      result = (result + 1);
      if (v14 + result == 1)
      {
        result = v13;
        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

  result = 1;
LABEL_18:
  v15 = result >> 8;
  *(*(*(a1 + 40) + 8 * v15) + 8 * result) = *(v5 + 8 * v6);
  *(*(*(a1 + 56) + 8 * v15) + 8 * result) = v10;
  *(*(*(a1 + 88) + 8 * v15) + 4 * result) = 0;
  *(*(*(a1 + 104) + 8 * v15) + 4 * result) = v7;
  v16 = *(a1 + 72);
  if (v16)
  {
    *(*(v16 + 8 * v15) + 8 * result) = 0;
  }

  ++*(a1 + 24);
  if ((v7 & 0x40000000) != 0)
  {
    v18 = *(a1 + 16);
    v19 = result;
    sub_10002C598(v18, v7 & 0x3FFFFFFF);
    return v19;
  }

  else
  {
    v17 = *(*(a1 + 88) + 8 * (v7 >> 8));
    ++*(v17 + 4 * v7);
  }

  return result;
}

uint64_t sub_10002EB98(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x40000000) != 0)
  {
    return sub_10002C598(*(result + 16), a2 & 0x3FFFFFFF);
  }

  v2 = *(*(result + 88) + 8 * (a2 >> 8));
  ++*(v2 + 4 * a2);
  return result;
}

uint64_t sub_10002EBC8(uint64_t a1, _BYTE *a2, int a3, unsigned int a4, int a5, int a6, int a7)
{
  result = sub_1000C7A1C(a2, "<s>");
  if (!result)
  {
    return result;
  }

  result = sub_1000C7A1C(a2, "<e>");
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 32);
  if (v15 < 1)
  {
    return sub_10002ECE0(a1, a2, a3, a4, a5, &v18, a6, a7, 0, 0);
  }

  v16 = 0;
  while (1)
  {
    ++v16;
    v17 = *(*(*(a1 + 56) + 8 * (v16 >> 8)) + 8 * v16);
    if (v17)
    {
      break;
    }

LABEL_5:
    if (v16 >= v15)
    {
      return sub_10002ECE0(a1, a2, a3, a4, a5, &v18, a6, a7, 0, 0);
    }
  }

  if (sub_1000C7A1C(v17, a2))
  {
    v15 = *(a1 + 32);
    goto LABEL_5;
  }

  if (*(*(*(a1 + 40) + 8 * (v16 >> 8)) + 8 * v16))
  {
    return 0;
  }

  return sub_10002ECE0(a1, a2, a3, a4, a5, &v18, a6, a7, 0, 0);
}

uint64_t sub_10002ECE0(uint64_t a1, const void *a2, int a3, unsigned int a4, int a5, unsigned int *a6, int a7, int a8, uint64_t a9, int a10)
{
  v18 = (sub_1000C7854(a2) + 1);
  v19 = sub_1000C0034(v18);
  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v19;
  j__memmove(v19, a2, v18);
  v21 = *(a1 + 32);
  if (v21 == *(a1 + 24) - 1)
  {
    if (!sub_100033E88(a1, v21 + 2))
    {
      goto LABEL_16;
    }

    v22 = *(a1 + 32) + 1;
    *(a1 + 32) = v22;
    goto LABEL_11;
  }

  if (v21 >= 1)
  {
    v24 = v21 + 1;
    v25 = -v21;
    v22 = 1;
    while (*(*(*(a1 + 56) + 8 * (v22 >> 8)) + 8 * v22))
    {
      ++v22;
      if (v25 + v22 == 1)
      {
        v22 = v24;
        break;
      }
    }

LABEL_11:
    if (v22 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v22 = 1;
LABEL_14:
  v26 = sub_10002D5A8(a3, a4, a7, a8, a5, a9, a10);
  if (v26)
  {
    v27 = v22 >> 8;
    *(*(*(a1 + 40) + 8 * v27) + 8 * v22) = v26;
    *(*(*(a1 + 56) + 8 * v27) + 8 * v22) = v20;
    *(*(*(a1 + 88) + 8 * v27) + 4 * v22) = 0;
    *(*(*(a1 + 104) + 8 * v27) + 4 * v22) = 0;
    ++*(a1 + 24);
    *a6 = v22;
    return 1;
  }

LABEL_16:
  sub_1000BFEC4(v20);
  return 0;
}

uint64_t sub_10002EE74(uint64_t a1, _BYTE *a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  result = sub_1000C7A1C(a2, "<s>");
  if (!result)
  {
    return result;
  }

  result = sub_1000C7A1C(a2, "<e>");
  if (!result)
  {
    return result;
  }

  v13 = *(a1 + 32);
  if (v13 < 1)
  {
    return sub_10002ECE0(a1, a2, a3, a3, a4, &v16, 0, 0, a5, a6);
  }

  v14 = 0;
  while (1)
  {
    ++v14;
    v15 = *(*(*(a1 + 56) + 8 * (v14 >> 8)) + 8 * v14);
    if (v15)
    {
      break;
    }

LABEL_5:
    if (v14 >= v13)
    {
      return sub_10002ECE0(a1, a2, a3, a3, a4, &v16, 0, 0, a5, a6);
    }
  }

  if (sub_1000C7A1C(v15, a2))
  {
    v13 = *(a1 + 32);
    goto LABEL_5;
  }

  if (*(*(*(a1 + 40) + 8 * (v14 >> 8)) + 8 * v14))
  {
    return 0;
  }

  return sub_10002ECE0(a1, a2, a3, a3, a4, &v16, 0, 0, a5, a6);
}

uint64_t *sub_10002EFA4(uint64_t *result, unsigned int a2)
{
  v2 = *(*(result[5] + 8 * (a2 >> 8)) + 8 * a2);
  if (*(v2 + 56) && !*(v2 + 120))
  {
    result = sub_1000B2154(*result);
    v3 = result;
    if (qword_1001065A8 && *(qword_1001065A8 + 1228))
    {
      result = sub_1000C06E8((v2 + 104), (v2 + 112), (v2 + 116), 8, 2, result + 1);
    }

    v4 = 0;
    do
    {
      for (i = 0; i != 512; i += 2)
      {
        *(*(*(v2 + 104) + 8 * v4) + i) = -1;
      }

      ++v4;
    }

    while (v4 != (v3 + 256) >> 8);
    v6 = *(v2 + 16);
    if (v6 >= 1)
    {
      v7 = v6 + 1;
      do
      {
        v8 = v7 - 2;
        *(*(*(v2 + 104) + ((*(*(*(v2 + 128) + 8 * (v8 >> *(v2 + 32))) + 2 * ((*(v2 + 36) - 1) & v8)) >> 5) & 0x7F8)) + 2 * *(*(*(v2 + 128) + 8 * (v8 >> *(v2 + 32))) + 2 * ((*(v2 + 36) - 1) & v8))) = v7-- - 2;
      }

      while (v7 > 1);
    }

    *(v2 + 120) = 1;
  }

  return result;
}

uint64_t sub_10002F0C4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      ++v2;
      v3 = *(*(*(result + 40) + 8 * (v2 >> 8)) + 8 * v2);
      if (v3)
      {
        *(v3 + 188) = 1;
        v1 = *(result + 32);
      }
    }

    while (v2 < v1);
  }

  return result;
}

uint64_t sub_10002F130(uint64_t a1, unsigned __int8 *a2, __int16 *a3, unsigned int *a4)
{
  result = sub_1000C7A1C(a2, "<s>");
  if (!result)
  {
    return result;
  }

  result = sub_1000C7A1C(a2, "<e>");
  if (!result)
  {
    return result;
  }

  v9 = *(a1 + 32);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = 1;
  while (1)
  {
    v12 = *(*(*(a1 + 56) + 8 * (v10 >> 8)) + 8 * v10);
    if (v12)
    {
      break;
    }

LABEL_5:
    if (v10++ >= v9)
    {
      return 0;
    }
  }

  if (sub_1000C7A1C(v12, a2))
  {
    v9 = *(a1 + 32);
    goto LABEL_5;
  }

  v13 = *(a1 + 40);
  if (*(*(v13 + 8 * (v10 >> 8)) + 8 * v10))
  {
    v14 = v10;
  }

  else
  {
    v14 = -1;
  }

  if (v14 + 1 < 2)
  {
    return 0;
  }

  v15 = *(*(v13 + 8 * (v14 >> 8)) + 8 * v14);
  if (!a3)
  {
    if (*a4 == -1 && !*(v15 + 176))
    {
      v33 = *(a1 + 156);
      *(a1 + 156) = v33 + 1;
      *a4 = v33;
    }

    return 1;
  }

  v16 = (v15 + 216);
  if (*(v15 + 176))
  {
    v17 = *a4;
    v18 = *v16;
    if (*v16)
    {
      v19 = 1234556789 * v17;
      while (1)
      {
        v20 = v18;
        if (*v18 == v17)
        {
          return 1;
        }

        if ((v19 & 0x40000000) != 0)
        {
          v21 = 2;
        }

        else
        {
          v21 = 4;
        }

        v19 *= 2;
        v18 = *&v18[v21];
        if (!v18)
        {
          v16 = &v20[v21];
          break;
        }
      }
    }

    v22 = sub_1000CB75C(a3);
    v30 = v22;
    if (v22 <= 7)
    {
      v31 = 7;
    }

    else
    {
      v31 = v22;
    }

    v32 = sub_1000BFBD8((2 * (v31 - 7) + 47) & 0x1FFFFFFF8, v23, v24, v25, v26, v27, v28, v29);
    *v32 = v17;
    sub_1000CB778(v32 + 12, a3, v30 + 1);
    *(v32 + 1) = 0;
    *(v32 + 2) = 0;
    result = 1;
    *v16 = v32;
  }

  else
  {
    v34 = sub_1000CB75C(a3);
    v42 = v34;
    if (v34 < 1)
    {
      v47 = 0;
    }

    else
    {
      v43 = 0;
      v44 = a3;
      v45 = v34;
      do
      {
        v46 = *v44++;
        v43 = v46 + 12345 * v43;
        --v45;
      }

      while (v45);
      v47 = 1234556789 * v43;
    }

    v48 = *v16;
    if (*v16)
    {
      v49 = 0x40000000;
      while (1)
      {
        v50 = v48;
        if (!sub_1000CBE9C(a3, v48 + 12))
        {
          break;
        }

        if ((v49 & v47) != 0)
        {
          v51 = 2;
        }

        else
        {
          v51 = 4;
        }

        v49 >>= 1;
        v48 = *&v50[v51];
        if (!v48)
        {
          v52 = &v50[v51];
          goto LABEL_48;
        }
      }

      result = 1;
      *a4 = *v50;
    }

    else
    {
      v49 = 0x40000000;
      v52 = v16;
LABEL_48:
      if (v42 <= 7)
      {
        v53 = 7;
      }

      else
      {
        v53 = v42;
      }

      v54 = sub_1000BFBD8((2 * (v53 - 7) + 47) & 0x1FFFFFFF8, v35, v36, v37, v38, v39, v40, v41);
      sub_1000CB778(v54 + 12, a3, v42 + 1);
      *(v54 + 1) = 0;
      *(v54 + 2) = 0;
      *v52 = v54;
      if (v49)
      {
        for (i = 0; i != v49; ++i)
        {
          v56 = (57737437 * (i ^ v47)) | 0x80000000;
          if (v56 != -1)
          {
            *v54 = v56;
            v57 = *v16;
            if (*v16 == v54)
            {
LABEL_62:
              result = 1;
              *a4 = v56;
              return result;
            }

            v58 = 0x40000000;
            while (*v57 != v56)
            {
              if ((v58 & v47) != 0)
              {
                v59 = 2;
              }

              else
              {
                v59 = 4;
              }

              v58 >>= 1;
              v57 = *&v57[v59];
              if (v57 == v54)
              {
                goto LABEL_62;
              }
            }
          }
        }
      }

      result = 0;
      *a4 = -1;
    }
  }

  return result;
}

uint64_t sub_10002F46C(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, int a4, unsigned int a5, int a6)
{
  result = sub_1000C7A1C(a2, "<s>");
  if (!result)
  {
    return result;
  }

  result = sub_1000C7A1C(a2, "<e>");
  if (!result)
  {
    return result;
  }

  v13 = *(a1 + 32);
  if (v13 < 1)
  {
    return 0;
  }

  v14 = 1;
  while (1)
  {
    v16 = v14 >> 8;
    v17 = v14;
    v18 = *(*(*(a1 + 56) + 8 * (v14 >> 8)) + 8 * v14);
    if (v18)
    {
      break;
    }

LABEL_5:
    if (v14++ >= v13)
    {
      return 0;
    }
  }

  if (sub_1000C7A1C(v18, a2))
  {
    v13 = *(a1 + 32);
    goto LABEL_5;
  }

  v26 = *(*(a1 + 40) + 8 * v16);
  v27 = *(v26 + 8 * v14);
  if (!v27)
  {
    return 0;
  }

  v28 = *(v26 + 8 * v14);
  if (*(a1 + 132) == v14)
  {
    if (a4 <= 1024)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (*(v27 + 16))
  {
    result = sub_10002F988(v27, a4, a3, a5, a6);
    if (!result)
    {
      return result;
    }

    goto LABEL_50;
  }

  result = sub_10002E1E4(a1, v19, v20, v21, v22, v23, v24, v25);
  if (!result)
  {
    return result;
  }

  v28 = *(*(*(a1 + 40) + 8 * v16) + 8 * v14);
  if (a4 > 1024)
  {
    return 0;
  }

LABEL_13:
  v29 = *(a1 + 136);
  if (*(a1 + 132) == v14)
  {
    if (*(v29 + 16) == 0x2000000)
    {
      v30 = sub_1000C0034(224);
      if (v30)
      {
        v37 = v30;
        v30[1] = *(*(a1 + 136) + 4);
        *v30 = **(a1 + 136);
        v30[9] = *(*(a1 + 136) + 36);
        v30[8] = *(*(a1 + 136) + 32);
        v30[38] = *(*(a1 + 136) + 152);
        v30[44] = *(*(a1 + 136) + 176);
        v30[51] = 1;
        if (sub_100031D70(*(a1 + 136), v30, v31, v32, v33, v34, v35, v36))
        {
          sub_10002D720(*(a1 + 136));
          v38 = *(a1 + 136);
          v39 = v37[1];
          *v38 = *v37;
          v38[1] = v39;
          v40 = v37[2];
          v41 = v37[3];
          v42 = v37[5];
          v38[4] = v37[4];
          v38[5] = v42;
          v38[2] = v40;
          v38[3] = v41;
          v43 = v37[6];
          v44 = v37[7];
          v45 = v37[9];
          v38[8] = v37[8];
          v38[9] = v45;
          v38[6] = v43;
          v38[7] = v44;
          v46 = v37[10];
          v47 = v37[11];
          v48 = v37[13];
          v38[12] = v37[12];
          v38[13] = v48;
          v38[10] = v46;
          v38[11] = v47;
        }
      }

      if (*(v29 + 16) == 0x2000000)
      {
        result = sub_10002F988(v29, a4, a3, a5, a6);
        if (!result)
        {
          return result;
        }

        goto LABEL_50;
      }
    }
  }

  else
  {
    *(a1 + 132) = v14;
    *(v29 + 4) = v28[1];
    *v29 = *v28;
    *(v29 + 36) = v28[9];
    *(v29 + 32) = v28[8];
    v49 = v28[38];
    *(v29 + 152) = v49;
    *(v29 + 176) = v28[44];
    if (!v49)
    {
      v50 = *(v29 + 136);
      if (v50)
      {
        if (*(v29 + 148) >= 1)
        {
          v51 = 0;
          do
          {
            sub_1000BFEC4(*(*(v29 + 136) + 8 * v51++));
          }

          while (v51 < *(v29 + 148));
          v50 = *(v29 + 136);
        }

        sub_1000BFEC4(v50);
        *(v29 + 136) = 0;
      }
    }
  }

  v52 = *(v29 + 48) + a4;
  v71 = *(v29 + 16) + 1;
  if (sub_100033F80(v29, v71))
  {
    v53 = v52 == 0x7FFFFFFF;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    return 0;
  }

  result = sub_1000C06E8((v29 + 128), (v29 + 40), (v29 + 44), *(v29 + 32), 2, v52);
  if (result)
  {
    if (!*(v29 + 16))
    {
      ***(v29 + 24) = 0;
    }

    *(*(*(v29 + 24) + 8 * (v71 >> *v29)) + 4 * ((*(v29 + 4) - 1) & v71)) = v52;
    if (*(v29 + 152))
    {
      *(*(*(v29 + 136) + 8 * (*(v29 + 16) >> *v29)) + ((*(v29 + 4) - 1) & *(v29 + 16))) = a5;
    }

    *(*(*(v29 + 160) + 8 * (*(v29 + 16) >> *v29)) + 4 * ((*(v29 + 4) - 1) & *(v29 + 16))) = a6;
    if (a4 >= 1)
    {
      v54 = *(v29 + 48);
      v55 = a4;
      do
      {
        v56 = *a3++;
        *(*(*(v29 + 128) + 8 * (v54 >> *(v29 + 32))) + 2 * ((*(v29 + 36) - 1) & v54)) = v56;
        ++v54;
        --v55;
      }

      while (v55);
    }

    *(v29 + 16) = v71;
    *(v29 + 48) = v52;
LABEL_50:
    v57 = *(a1 + 120);
    if (v57)
    {
      if (*(v57 + 8) >= 1)
      {
        v58 = 0;
        v59 = 0;
        do
        {
          *(*v57 + v58) = 0;
          ++v59;
          v58 += 4;
        }

        while (v59 < *(v57 + 8));
      }

      *(v57 + 40) = 1;
    }

    if (*(a1 + 72))
    {
      v60 = *(*(*(a1 + 104) + 8 * v16) + 4 * v17);
      if (v60)
      {
        v27 = *(*(*(a1 + 40) + ((v60 >> 5) & 0x7FFFFF8)) + 8 * *(*(*(a1 + 104) + 8 * v16) + 4 * v17));
      }

      if (!*(v27 + 180))
      {
        v61 = *(v27 + 16);
        if (v61 < 1)
        {
          v69 = 0;
        }

        else
        {
          v62 = 0;
          v63 = 0;
          v64 = *a1;
          v65 = -1;
          do
          {
            v66 = *(*(*(v27 + 24) + 8 * (v63 >> *v27)) + 4 * ((*(v27 + 4) + 0x7FFFFFFF) & v63));
            v67 = *(*(*(v27 + 128) + 8 * (v66 >> *(v27 + 32))) + 2 * ((*(v27 + 36) - 1) & v66));
            if (v67 != v65)
            {
              v68 = sub_1000BA810(v64, *(*(*(v27 + 128) + 8 * (v66 >> *(v27 + 32))) + 2 * ((*(v27 + 36) - 1) & v66)));
              v62 += sub_1000B2C18(v64, v68);
              v61 = *(v27 + 16);
              v65 = v67;
            }

            ++v63;
          }

          while (v63 < v61);
          v69 = v62;
        }

        v70 = qword_1001065A8;
        if (qword_1001065A8)
        {
          v70 = *(qword_1001065A8 + 1272);
        }

        *(v27 + 180) = v70 <= v69;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_10002F988(uint64_t a1, int a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  if (a2 > 1024)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = 0;
  v9 = v7 - 1;
  if (v7 >= 1)
  {
    v10 = *(a1 + 24);
    v11 = *a1;
    v12 = *(a1 + 4) - 1;
    do
    {
      v15 = (v9 + v8) >> 1;
      v16 = *(*(v10 + 8 * (v15 >> v11)) + 4 * (v12 & v15));
      v17 = v15 + 1;
      v18 = *(*(v10 + 8 * (v17 >> v11)) + 4 * (v12 & v17)) - v16;
      if (v18 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < 1)
      {
LABEL_5:
        v13 = a2 - v18;
        if (a2 == v18)
        {
          if (*(a1 + 176))
          {
            v13 = a5 - *(*(*(a1 + 160) + 8 * (v15 >> v11)) + 4 * (v12 & v15));
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v20 = a3;
        while (1)
        {
          v21 = *v20++;
          v13 = v21 - *(*(*(a1 + 128) + 8 * (v16 >> *(a1 + 32))) + 2 * (v16 & (*(a1 + 36) - 1)));
          if (v13)
          {
            break;
          }

          ++v16;
          if (!--v19)
          {
            goto LABEL_5;
          }
        }
      }

      v14 = v15 - 1;
      if (v13 < 1)
      {
        v9 = v14;
      }

      else
      {
        v8 = v17;
      }
    }

    while (v8 <= v9);
  }

  if (v8 < v7)
  {
    v22 = *(a1 + 24);
    v23 = v8 >> *a1;
    v24 = *(a1 + 4) - 1;
    v25 = v24 & v8;
    v26 = *(*(v22 + 8 * v23) + 4 * v25);
    v27 = *(*(v22 + 8 * ((v8 + 1) >> *a1)) + 4 * (v24 & (v8 + 1))) - v26;
    if (v27 >= a2)
    {
      v28 = a2;
    }

    else
    {
      v28 = v27;
    }

    if (v28 < 1)
    {
LABEL_29:
      if (v27 == a2 && (!*(a1 + 176) || *(*(*(a1 + 160) + 8 * v23) + 4 * v25) == a5))
      {
        if (*(a1 + 152))
        {
          v31 = *(*(a1 + 136) + 8 * v23);
          if (*(v31 + v25) > a4)
          {
            *(v31 + v25) = a4;
          }
        }

        return 1;
      }
    }

    else
    {
      v29 = a3;
      while (1)
      {
        v30 = *v29++;
        if (v30 != *(*(*(a1 + 128) + 8 * (v26 >> *(a1 + 32))) + 2 * (v26 & (*(a1 + 36) - 1))))
        {
          break;
        }

        ++v26;
        if (!--v28)
        {
          goto LABEL_29;
        }
      }
    }
  }

  if (v7 == 0x2000000)
  {
    return 0;
  }

  v32 = a3;
  v33 = a4;
  result = sub_100033F80(a1, v7 + 1);
  if (!result)
  {
    return result;
  }

  v36 = *(a1 + 48) + a2;
  if (v36 == 0x7FFFFFFF)
  {
    return 0;
  }

  result = sub_1000C06E8((a1 + 128), (a1 + 40), (a1 + 44), *(a1 + 32), 2, *(a1 + 48) + a2);
  if (result)
  {
    sub_1000C0C08(*(a1 + 24), *(a1 + 12), *(a1 + 4), 4, v8, *(a1 + 16) - v8 + 1, v8 + 1);
    v37 = *(*(*(a1 + 24) + 8 * (v8 >> *a1)) + 4 * ((*(a1 + 4) - 1) & v8));
    sub_1000C0C08(*(a1 + 128), *(a1 + 44), *(a1 + 36), 2, v37, *(a1 + 48) - v37, v37 + a2);
    if (a2 >= 1)
    {
      v38 = a2;
      do
      {
        v39 = *v32++;
        *(*(*(a1 + 128) + 8 * (v37 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v37)) = v39;
        ++v37;
        --v38;
      }

      while (v38);
    }

    if (*(a1 + 152))
    {
      sub_1000C0C08(*(a1 + 136), *(a1 + 148), *(a1 + 4), 1, v8, *(a1 + 16) - v8, v8 + 1);
      *(*(*(a1 + 136) + 8 * (v8 >> *a1)) + ((*(a1 + 4) - 1) & v8)) = v33;
    }

    sub_1000C0C08(*(a1 + 160), *(a1 + 172), *(a1 + 4), 4, v8, *(a1 + 16) - v8, v8 + 1);
    *(*(*(a1 + 160) + 8 * (v8 >> *a1)) + 4 * ((*(a1 + 4) - 1) & v8)) = a5;
    for (i = *(a1 + 16); v8 <= i; i = *(a1 + 16))
    {
      v41 = *(*(a1 + 24) + 8 * (++v8 >> *a1));
      *(v41 + 4 * ((*(a1 + 4) - 1) & v8)) += a2;
    }

    *(a1 + 16) = i + 1;
    *(a1 + 48) = v36;
    result = 1;
    *(a1 + 184) = 1;
  }

  return result;
}

uint64_t sub_10002FD6C(uint64_t a1, unsigned __int8 *a2)
{
  if (!sub_1000C7A1C(a2, "<s>") || !sub_1000C7A1C(a2, "<e>"))
  {
    v5 = 0;
    goto LABEL_11;
  }

  v4 = *(a1 + 32);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 1;
  while (1)
  {
    v7 = *(*(*(a1 + 56) + 8 * (v5 >> 8)) + 8 * v5);
    if (v7)
    {
      break;
    }

LABEL_5:
    if (v5++ >= v4)
    {
      return 0;
    }
  }

  if (sub_1000C7A1C(v7, a2))
  {
    v4 = *(a1 + 32);
    goto LABEL_5;
  }

  if (!*(*(*(a1 + 40) + 8 * (v5 >> 8)) + 8 * v5))
  {
    return 0;
  }

LABEL_11:

  return sub_10002FE5C(a1, v5);
}

uint64_t sub_10002FE5C(uint64_t a1, unsigned int a2)
{
  v4 = a2 >> 8;
  v5 = a2;
  v6 = *(*(*(a1 + 40) + 8 * (a2 >> 8)) + 8 * a2);
  v7 = *(v6 + 56);
  if (!v7 || (result = sub_10005B970(v7, *(*(*(a1 + 56) + 8 * v4) + 8 * a2)), result) && (!*(v6 + 200) || (result = sub_10002FE5C(a1), result)))
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = *(*(*(a1 + 104) + 8 * v4) + 4 * v5);
      if (!v10)
      {
        v10 = a2;
      }

      v11 = *(v9 + 8 * (v10 >> 8));
      v12 = v10;
      v13 = *(v11 + 8 * v10);
      if (v13)
      {
        sub_10005D9D0(v13);
        *(v11 + 8 * v12) = 0;
        --*(a1 + 128);
      }
    }

    *(v6 + 16) = 0;
    *(v6 + 48) = 0;
    *(v6 + 180) = 0;
    if (*(a1 + 132) == a2)
    {
      v14 = *(a1 + 136);
      *(a1 + 132) = 0;
      sub_1000C0A78(*(v14 + 24), *(v14 + 12), *(v14 + 12));
      *(v14 + 12) = 0;
      sub_1000C0A78(*(v14 + 128), *(v14 + 44), *(v14 + 44));
      *(v14 + 44) = 0;
      sub_1000C0A78(*(v14 + 136), *(v14 + 148), *(v14 + 148));
      *(v14 + 148) = 0;
      sub_1000C0A78(*(v14 + 160), *(v14 + 172), *(v14 + 172));
      *(v14 + 172) = 0;
      *(v14 + 16) = 0;
      *(v14 + 48) = 0;
    }

    v15 = *(a1 + 120);
    if (v15)
    {
      if (*(v15 + 8) >= 1)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          *(*v15 + v16) = 0;
          ++v17;
          v16 += 4;
        }

        while (v17 < *(v15 + 8));
      }

      result = 1;
      *(v15 + 40) = 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10002FFF0(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(*(*(*(a1 + 40) + 8 * (a2 >> 8)) + 8 * a2) + 200);
  }
}

void *sub_100030018(void *result, unsigned int a2)
{
  if ((a2 & 0x40000000) != 0)
  {
    v6 = result[2];
    v7 = a2 & 0x3FFFFFFF;

    return sub_10002C5B8(v6, v7);
  }

  else
  {
    v2 = a2 >> 8;
    v3 = *(result[11] + 8 * (a2 >> 8));
    v4 = a2;
    v5 = *(v3 + 4 * a2) - 1;
    *(v3 + 4 * a2) = v5;
    if (!v5)
    {
      v8 = *(*(result[5] + 8 * v2) + 8 * a2);
      if (*(v8 + 56) && *(v8 + 200))
      {
        v9 = result;
        v10 = a2;
        sub_100030018();
        result = v9;
        a2 = v10;
      }

      if (*(*(result[13] + 8 * v2) + 4 * v4))
      {
        v11 = result;
        v12 = a2;
        sub_100030018();
        result = v11;
        a2 = v12;
      }

      return sub_100030104(result, a2);
    }
  }

  return result;
}

uint64_t sub_100030104(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = a2 >> 8;
  v4 = *(*(result + 40) + 8 * (a2 >> 8));
  v5 = a2;
  v6 = *(v4 + 8 * a2);
  v7 = *(*(result + 56) + 8 * (a2 >> 8));
  v8 = *(*(result + 104) + 8 * (a2 >> 8));
  if (*(v8 + 4 * a2))
  {
    if (!v6)
    {
      --*(result + 28);
    }

    *(v8 + 4 * a2) = 0;
    result = sub_1000BFEC4(*(v7 + 8 * a2));
    *(v7 + 8 * v5) = 0;
    *(v4 + 8 * v5) = 0;
    --*(v2 + 24);
  }

  else
  {
    if (v6)
    {
      if (!*(v6 + 208))
      {
        return result;
      }

      v10 = *(v6 + 56);
      if (v10)
      {
        sub_10005BB8C(v10, *(v7 + 8 * a2));
        *(v6 + 56) = 0;
        *(v6 + 64) = -1;
      }
    }

    sub_1000BFEC4(*(v7 + 8 * v5));
    *(v7 + 8 * v5) = 0;
    sub_10002D720(v6);
    result = sub_1000BFEC4(v6);
    *(v4 + 8 * v5) = 0;
    --*(v2 + 24);
    v11 = *(v2 + 120);
    if (v11 && *(*v11 + 4 * a2))
    {
      if (*(v11 + 8) >= 1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          *(*v11 + v12) = 0;
          ++v13;
          v12 += 4;
        }

        while (v13 < *(v11 + 8));
      }

      *(v11 + 40) = 1;
    }

    v14 = *(v2 + 72);
    if (v14)
    {
      v15 = *(v14 + 8 * v3);
      result = *(v15 + 8 * v5);
      if (result)
      {
        result = sub_10005D9D0(result);
        *(v15 + 8 * v5) = 0;
      }
    }

    if (*(v2 + 132) == a2)
    {
      v16 = *(v2 + 136);
      *(v2 + 132) = 0;
      sub_1000C0A78(*(v16 + 24), *(v16 + 12), *(v16 + 12));
      *(v16 + 12) = 0;
      sub_1000C0A78(*(v16 + 128), *(v16 + 44), *(v16 + 44));
      *(v16 + 44) = 0;
      sub_1000C0A78(*(v16 + 136), *(v16 + 148), *(v16 + 148));
      *(v16 + 148) = 0;
      result = sub_1000C0A78(*(v16 + 160), *(v16 + 172), *(v16 + 172));
      *(v16 + 172) = 0;
      *(v16 + 16) = 0;
      *(v16 + 48) = 0;
    }
  }

  return result;
}

uint64_t sub_1000302E0(uint64_t a1, int a2)
{
  if ((a2 & 0x40000000) != 0)
  {
    return sub_10002C688(*(a1 + 16), a2 & 0x3FFFFFFF);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000302F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = ++v3 >> 8;
      if (!*(*(*(a1 + 56) + 8 * (v3 >> 8)) + 8 * v3) || *(*(*(a1 + 88) + 8 * v5) + 4 * v3))
      {
        goto LABEL_7;
      }

      v6 = *(*(*(a1 + 104) + 8 * v5) + 4 * v3);
      if ((v6 & 0x40000000) == 0)
      {
        v7 = *(*(*(a1 + 40) + 8 * v5) + 8 * v3);
        if (*(v7 + 56))
        {
          v8 = *(v7 + 200);
          if (v8)
          {
            LODWORD(v4) = v4 + 1;
            sub_100030018(a1, v8);
            v6 = *(*(*(a1 + 104) + 8 * v5) + 4 * v3);
          }
        }

        if (!v6)
        {
          goto LABEL_6;
        }

        if (*(*(*(a1 + 88) + 8 * (v6 >> 8)) + 4 * v6) == 1)
        {
          LODWORD(v4) = v4 + 1;
        }
      }

      sub_100030018(a1, v6);
LABEL_6:
      v4 = (v4 + 1);
      sub_100030104(a1, v3);
      v1 = *(a1 + 32);
LABEL_7:
      if (v3 >= v1)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_10003040C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (*(a1 + 132) != a2 || (result = sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8), result))
  {
    v12 = *(*(*(a1 + 40) + 8 * (v9 >> 8)) + 8 * v9);
    if (v12)
    {
      LODWORD(v12) = *(v12 + 16);
    }

    *a3 = v12;
    return 1;
  }

  return result;
}

uint64_t sub_100030478(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if (*(a1 + 32) < 1)
    {
      v19 = 0;
LABEL_12:
      *a2 = v19;
      return 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        if (v18 + 1 == *(a1 + 132))
        {
          result = sub_10002E1E4(a1, v11, v12, v13, v14, v15, v16, v17);
          if (!result)
          {
            break;
          }
        }

        v20 = *(*(*(a1 + 40) + 8 * ((v18 + 1) >> 8)) + 8 * (v18 + 1));
        if (v20)
        {
          LODWORD(v20) = *(v20 + 16);
        }

        if (v20 > v19)
        {
          v19 = v20;
        }

        if (++v18 >= *(a1 + 32))
        {
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003052C(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = *(*(*(a1 + 40) + 8 * (a2 >> 8)) + 8 * a2);
  if (v3)
  {
    result = 1;
    *a3 = *(v3 + 52);
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t sub_100030560(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2;
  *a4 = 0;
  if (*(a1 + 132) != a2 || (result = sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8), result))
  {
    v13 = *(*(*(a1 + 40) + 8 * (v10 >> 8)) + 8 * v10);
    *a4 = *(*(*(v13 + 24) + 8 * ((v9 + 1) >> *v13)) + 4 * ((*(v13 + 4) - 1) & (v9 + 1))) - *(*(*(v13 + 24) + 8 * (v9 >> *v13)) + 4 * ((*(v13 + 4) - 1) & v9));
    return 1;
  }

  return result;
}

uint64_t sub_100030600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v13 = *(*(*(a1 + 40) + 8 * (v11 >> 8)) + 8 * v11);
  v14 = *(v13 + 24);
  v15 = *(v14 + 8 * (v10 >> *v13));
  v16 = *(v13 + 4) - 1;
  v17 = *(*(v14 + 8 * ((v10 + 1) >> *v13)) + 4 * (v16 & (v10 + 1)));
  v18 = v16 & v10;
  v19 = v17 - *(v15 + 4 * v18);
  *a5 = v19;
  if (v19 <= v9)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(*(v13 + 128) + 8 * ((*(v15 + 4 * v18) + v9) >> *(v13 + 32))) + 2 * ((*(v13 + 36) - 1) & (*(v15 + 4 * v18) + v9)));
  }
}

uint64_t sub_1000306E8(uint64_t result, unsigned int a2, void *a3, _DWORD *a4)
{
  v4 = *(*(*(result + 40) + 8 * (a2 >> 8)) + 8 * a2);
  if (v4)
  {
    *a3 = *(v4 + 56);
    *a4 = *(v4 + 64);
  }

  else
  {
    *a3 = 0;
    *a4 = -1;
  }

  return result;
}

uint64_t sub_100030724(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*(a1 + 104) + 8 * (a2 >> 8)) + 4 * a2);
  if (!v3)
  {
    v3 = a2;
  }

  return *(*(v2 + 8 * (v3 >> 8)) + 8 * v3);
}

uint64_t sub_100030764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 + 32) >= 1)
  {
    v10 = 1;
    do
    {
      v12 = v10 >> 8;
      if (*(*(*(a1 + 104) + 8 * (v10 >> 8)) + 4 * v10))
      {
        continue;
      }

      v13 = *(*(*(a1 + 40) + 8 * v12) + 8 * v10);
      if (!v13)
      {
        continue;
      }

      v14 = *(v13 + 16);
      if (v14 >= 1)
      {
        v15 = 0;
        do
        {
          while (1)
          {
            v16 = *(v13 + 24);
            v17 = *(v13 + 4);
            v18 = *(v16[v15 >> *v13] + 4 * ((v17 - 1) & v15));
            v19 = v15 + 1;
            v20 = *(v16[v19 >> *v13] + 4 * ((v17 - 1) & v19));
            v21 = v20 - v18;
            if ((v20 - v18) >= 1)
            {
              break;
            }

LABEL_11:
            ++v15;
            if (v19 >= v14)
            {
              goto LABEL_20;
            }
          }

          while (*(*(*(v13 + 128) + 8 * (v18 >> *(v13 + 32))) + 2 * (v18 & (*(v13 + 36) - 1))) != v8)
          {
            if (v20 == ++v18)
            {
              goto LABEL_11;
            }
          }

          sub_1000C0C08(v16, *(v13 + 12), v17, 4, v19, v14 - v15, v15);
          v22 = *(v13 + 16);
          if (v15 < v22)
          {
            v23 = v15;
            do
            {
              *(*(*(v13 + 24) + 8 * (v23 >> *v13)) + 4 * ((*(v13 + 4) - 1) & v23)) = *(*(*(v13 + 24) + 8 * ((v23 + 1) >> *v13)) + 4 * ((*(v13 + 4) - 1) & (v23 + 1))) - v21;
              v22 = *(v13 + 16);
              ++v23;
            }

            while (v23 < v22);
          }

          *(v13 + 16) = v22 - 1;
          sub_1000C0C08(*(v13 + 128), *(v13 + 44), *(v13 + 36), 2, v21 + v20, *(v13 + 48) - v20, v20);
          *(v13 + 48) -= v21;
          v14 = *(v13 + 16);
        }

        while (v15 < v14);
      }

LABEL_20:
      if (!*(a1 + 72))
      {
        continue;
      }

      if (v14 < 1)
      {
        v31 = 0;
        v32 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = *a1;
        v27 = -1;
        do
        {
          v28 = *(*(*(v13 + 24) + 8 * (v25 >> *v13)) + 4 * ((*(v13 + 4) + 0x7FFFFFFF) & v25));
          v29 = *(*(*(v13 + 128) + 8 * (v28 >> *(v13 + 32))) + 2 * ((*(v13 + 36) - 1) & v28));
          if (v29 != v27)
          {
            v30 = sub_1000BA810(v26, *(*(*(v13 + 128) + 8 * (v28 >> *(v13 + 32))) + 2 * ((*(v13 + 36) - 1) & v28)));
            v24 += sub_1000B2C18(v26, v30);
            v14 = *(v13 + 16);
            v27 = v29;
          }

          ++v25;
        }

        while (v25 < v14);
        v31 = v24;
        v32 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          goto LABEL_28;
        }
      }

      v32 = *(v32 + 1272);
LABEL_28:
      *(v13 + 180) = v32 <= v31;
      if (v32 > v31)
      {
        v33 = *(*(a1 + 72) + 8 * v12);
        v34 = *(v33 + 8 * v10);
        if (v34)
        {
          sub_10005D9D0(v34);
          *(v33 + 8 * v10) = 0;
        }
      }
    }

    while (v10++ < *(a1 + 32));
  }

  return 1;
}

uint64_t sub_100030A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
    if (*(a1 + 132))
    {
      sub_10002E1E4(a1, v10, v11, a4, a5, a6, a7, a8);
    }
  }

  v12 = *(a1 + 32);
  if (v12 < 1)
  {
    goto LABEL_17;
  }

  LODWORD(v13) = 0;
  do
  {
    v13 = (v13 + 1);
    v14 = *(*(*(a1 + 40) + 8 * (v13 >> 8)) + 8 * v13);
    if (v14 && *(v14 + 180))
    {
      sub_100032264(a1, v13, a2, a4, a5, a6, a7, a8);
      v12 = *(a1 + 32);
    }
  }

  while (v13 < v12);
  if (v12 < 1)
  {
LABEL_17:
    v19 = *(a1 + 120);
    if (!v19)
    {
      return 1;
    }

    if (*(v19 + 8) <= v12)
    {
      result = sub_1000C0034(4 * (v12 + 1));
      if (!result)
      {
        return result;
      }

      v20 = result;
      j__memmove(result, *v19, 4 * *(v19 + 8));
      v21 = *(v19 + 8);
      if (v12 >= v21)
      {
        v22 = *(v19 + 8);
        if (v12 == v21)
        {
          goto LABEL_25;
        }

        v23 = (v12 - v21) + 1;
        v22 = (v23 & 0x1FFFFFFFELL) + v21;
        v24 = (v20 + 4 * v21 + 4);
        v25 = v23 & 0x1FFFFFFFELL;
        do
        {
          *(v24 - 2) = 0;
          *v24 = 0;
          v24 += 4;
          v25 -= 2;
        }

        while (v25);
        if (v23 != (v23 & 0x1FFFFFFFELL))
        {
LABEL_25:
          v26 = v12 - v22 + 1;
          v27 = (v20 + 4 * v22);
          do
          {
            *v27 = 0;
            v27 += 2;
            --v26;
          }

          while (v26);
        }
      }

      sub_1000BFEC4(*v19);
      *v19 = v20;
      *(v19 + 8) = v12 + 1;
      v19 = *(a1 + 120);
    }

    v28 = !v19 || qword_1001065A8 == 0;
    if (v28 || !*(qword_1001065A8 + 4608))
    {
      return 1;
    }

    if (*(v19 + 8) >= 1)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        *(*v19 + v29) = 0;
        ++v30;
        v29 += 4;
      }

      while (v30 < *(v19 + 8));
    }

    result = 1;
    *(v19 + 40) = 1;
  }

  else
  {
    v15 = 0;
    while (1)
    {
      ++v15;
      v16 = *(*(*(a1 + 40) + 8 * (v15 >> 8)) + 8 * v15);
      if (v16)
      {
        *(v16 + 96) = -1;
        v17 = *(v16 + 56);
        if (v17)
        {
          result = sub_10005BC60(v17, *(v16 + 64));
          if (!result)
          {
            break;
          }
        }
      }

      v12 = *(a1 + 32);
      if (v15 >= v12)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_100030C70(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int *a4, int *a5, _BOOL4 *a6)
{
  v35 = 0;
  result = sub_1000BA7F4(*a1, a3, &v35);
  v12 = *(*(a1[5] + 8 * (a2 >> 8)) + 8 * a2);
  v13 = v12[4];
  if (v13 <= 0)
  {
    v14 = 0;
    v16 = *(v12 + 3);
    v17 = *v12;
    v18 = v12[1];
  }

  else
  {
    v14 = 0;
    v15 = v13 - 1;
    v16 = *(v12 + 3);
    v17 = *v12;
    v18 = v12[1];
    do
    {
      v19 = (v14 + v15) >> 1;
      v20 = *(*(v16 + 8 * (v19 >> v17)) + 4 * (v19 & (v18 + 0x7FFFFFFF)));
      if (*(*(*(v12 + 16) + 8 * (v20 >> v12[8])) + 2 * (v20 & (v12[9] - 1))) >= result)
      {
        v15 = v19 - 1;
      }

      else
      {
        v14 = v19 + 1;
      }
    }

    while (v14 <= v15);
  }

  v21 = *(*(v16 + 8 * (v14 >> v17)) + 4 * (v14 & (v18 - 1)));
  *a4 = v14;
  v22 = *(v12 + 3);
  v23 = *v12;
  v24 = v12[1] - 1;
  v25 = *(*(v22 + 8 * ((v14 + 1) >> *v12)) + 4 * (v24 & (v14 + 1)));
  v26 = v25 - v21 == 1;
  v27 = v12[4];
  if ((v14 + 1) >= v27)
  {
    v32 = 1;
  }

  else
  {
    v28 = 0;
    v29 = *(v12 + 16);
    v30 = v12[8];
    v31 = v12[9] - 1;
    v32 = v27 - v14;
    v33 = v14 + 2;
    while (*(*(v29 + 8 * (v25 >> v30)) + 2 * (v25 & v31)) == result)
    {
      v34 = *(*(v22 + 8 * ((v33 + v28) >> v23)) + 4 * ((v33 + v28) & v24));
      if (v34 - v25 == 1)
      {
        v26 = 1;
      }

      ++v28;
      v25 = v34;
      if (v32 - 1 == v28)
      {
        goto LABEL_18;
      }
    }

    v32 = v28 + 1;
  }

LABEL_18:
  *a6 = v26;
  *a5 = v32;
  return result;
}

BOOL sub_100030E30(uint64_t a1)
{
  if (*(a1 + 120) || !qword_1001065A8)
  {
    return 1;
  }

  v2 = *(qword_1001065A8 + 4032);
  if (v2 < 1)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = sub_1000C0034(48);
  if (v5)
  {
    v6 = v5;
    *(v5 + 8) = v4 + 1;
    v7 = sub_1000C0034(4 * (v4 + 1));
    *v6 = v7;
    if (v7)
    {
      v8 = sub_1000C0034(2 * v2);
      *(v6 + 16) = v8;
      if (v8)
      {
        *(v6 + 24) = v2;
        v9 = sub_1000C0034(2 * v2);
        *(v6 + 32) = v9;
        if (v9)
        {
          *(v6 + 40) = 1;
          *(a1 + 120) = v6;
          return *(a1 + 120) != 0;
        }

        sub_1000BFEC4(*(v6 + 16));
      }

      sub_1000BFEC4(*v6);
    }

    sub_1000BFEC4(v6);
  }

  return *(a1 + 120) != 0;
}

uint64_t sub_100030F50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v58 = a3;
  v55 = a3;
  v56 = a3 >> 8;
  while (1)
  {
    v10 = *(v9 + 120);
    v11 = *(v9 + 132);
    if (v11)
    {
      result = sub_10002E1E4(v9, a2, a3, a4, a5, a6, a7, a8);
      v11 = *(v9 + 132);
    }

    v12 = *(v10 + 40);
    v59 = *(v10 + 16) + 2 * v12;
    v13 = *(v10 + 32);
    v14 = *(v10 + 24);
    v57 = v10;
    if (v11 == v58 && (result = sub_10002E1E4(v9, a2, a3, a4, a5, a6, a7, a8), !result) || (v15 = *(*(*(v9 + 40) + 8 * v56) + 8 * v55)) == 0)
    {
      v20 = v59;
      goto LABEL_52;
    }

    v16 = *(v15 + 16);
    if (v16 >= 1)
    {
      break;
    }

    v22 = 0;
    v20 = v59;
LABEL_44:
    if (v22 == v16)
    {
      goto LABEL_52;
    }

LABEL_47:
    v50 = *(v9 + 120);
    if (*(v50 + 8) >= 1)
    {
      v51 = 0;
      v52 = 0;
      do
      {
        *(*v50 + v51) = 0;
        ++v52;
        v51 += 4;
      }

      while (v52 < *(v50 + 8));
    }

    *(v50 + 40) = 1;
  }

  v17 = 0;
  v18 = (v13 + 2 * v12);
  v19 = v14 - v12;
  v20 = v59;
  while (1)
  {
    v24 = *(v15 + 24);
    v25 = *(v15 + 4) - 1;
    v22 = v17 + 1;
    v26 = *(*(v24 + 8 * (v22 >> *v15)) + 4 * (v25 & v22));
    v27 = *(*(v24 + 8 * (v17 >> *v15)) + 4 * (v25 & v17));
    v28 = v26 - v27;
    if ((v26 - v27) < 1)
    {
      break;
    }

    result = sub_10001C7F8(a2, *(*(*(v15 + 128) + 8 * (v27 >> *(v15 + 32))) + 2 * ((*(v15 + 36) - 1) & v27)), v20, v19);
    v29 = __OFSUB__(v19, result);
    v19 -= result;
    if (v19 < 0 != v29)
    {
      goto LABEL_46;
    }

LABEL_18:
    v30 = v17 | 0xFFFF8000;
    if (v28 != 1)
    {
      v30 = v17;
    }

    if (result < 1)
    {
      goto LABEL_34;
    }

    if (result >= 4)
    {
      if (result < 0x10)
      {
        v31 = 0;
LABEL_29:
        v35 = v31;
        v31 = result & 0x7FFFFFFC;
        v36 = vdup_n_s16(v30);
        v37 = (v18 + 2 * v35);
        v38 = v35 - v31;
        do
        {
          *v37++ = v36;
          v38 += 4;
        }

        while (v38);
        if (v31 == result)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v31 = result & 0x7FFFFFF0;
      v32 = vdupq_n_s16(v30);
      v33 = v18 + 1;
      v34 = v31;
      do
      {
        v33[-1] = v32;
        *v33 = v32;
        v33 += 2;
        v34 -= 16;
      }

      while (v34);
      if (v31 == result)
      {
        goto LABEL_34;
      }

      if ((result & 0xC) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_32:
    v39 = &v18->i16[v31];
    v40 = result - v31;
    do
    {
      *v39++ = v30;
      --v40;
    }

    while (v40);
LABEL_34:
    if (qword_1001065A8 && *(qword_1001065A8 + 1172))
    {
      v41 = *(v15 + 24);
      v42 = *(v15 + 4) - 1;
      v43 = *(*(v41 + 8 * (v17 >> *v15)) + 4 * (v42 & v17));
      if ((*(*(v41 + 8 * (v22 >> *v15)) + 4 * (v42 & v22)) - v43) >= 2)
      {
        v44 = *(v15 + 16);
        if (v22 < v44)
        {
          v45 = *(v15 + 128);
          v46 = *(v15 + 32);
          v47 = *(v15 + 36) - 1;
          v48 = *(*(v45 + 8 * (v43 >> v46)) + 2 * (v47 & v43));
          while (1)
          {
            v49 = *(*(v41 + 8 * (v22 >> *v15)) + 4 * (v22 & v42));
            if (*(*(v45 + 8 * (v49 >> v46)) + 2 * (v49 & v47)) != v48)
            {
              break;
            }

            if (v44 == ++v22)
            {
              v22 = *(v15 + 16);
              break;
            }
          }
        }

        v21 = v22 + ~v17;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21 + v17 + 1;
    }

    v23 = 2 * result;
    v20 = (v20 + v23);
    v18 = (v18 + v23);
    v17 = v22;
    if (v22 >= v16)
    {
      goto LABEL_44;
    }
  }

  result = sub_10001C7F8(a2, 0xFFFFu, v20, v19);
  v29 = __OFSUB__(v19, result);
  v19 -= result;
  if (v19 < 0 == v29)
  {
    goto LABEL_18;
  }

LABEL_46:
  if (v17 != v16)
  {
    goto LABEL_47;
  }

LABEL_52:
  v53 = (*v57 + 4 * v58);
  *v53 = *(v57 + 40);
  v54 = (v20 - v59) >> 1;
  v53[1] = v54;
  *(v57 + 40) = (*(v57 + 40) + v54);
  return result;
}

uint64_t sub_1000312E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(a1 + 132);
  if (v10)
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
    v10 = *(a1 + 132);
  }

  v11 = *(a1 + 120);
  if (v10 != v8 || (result = sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8), result))
  {
    v13 = *(*(*(a1 + 40) + 8 * (v8 >> 8)) + 8 * v8);
    if (v13 && (v14 = *(v13 + 16), v14 >= 1))
    {
      v15 = 0;
      v16 = 0;
      v17 = *a1;
      while (1)
      {
        v20 = *(v13 + 24);
        v21 = *(v13 + 4) - 1;
        v19 = v16 + 1;
        v22 = *(*(v20 + 8 * (v19 >> *v13)) + 4 * (v21 & v19));
        v23 = *(*(v20 + 8 * (v16 >> *v13)) + 4 * (v21 & v16));
        v24 = v22 <= v23 ? 0xFFFF : *(*(*(v13 + 128) + 8 * (v23 >> *(v13 + 32))) + 2 * ((*(v13 + 36) - 1) & v23));
        v25 = sub_1000BA810(v17, v24);
        v15 += sub_1000B2C18(v17, v25);
        if (v15 >= *(v11 + 24))
        {
          return 0;
        }

        if (qword_1001065A8 && *(qword_1001065A8 + 1172))
        {
          v26 = *(v13 + 24);
          v27 = *(v13 + 4) - 1;
          v28 = *(*(v26 + 8 * (v16 >> *v13)) + 4 * (v27 & v16));
          if ((*(*(v26 + 8 * (v19 >> *v13)) + 4 * (v27 & v19)) - v28) >= 2)
          {
            v29 = *(v13 + 16);
            if (v19 < v29)
            {
              v30 = *(v13 + 128);
              v31 = *(v13 + 32);
              v32 = *(v13 + 36) - 1;
              v33 = *(*(v30 + 8 * (v28 >> v31)) + 2 * (v32 & v28));
              while (1)
              {
                v34 = *(*(v26 + 8 * (v19 >> *v13)) + 4 * (v19 & v27));
                if (*(*(v30 + 8 * (v34 >> v31)) + 2 * (v34 & v32)) != v33)
                {
                  break;
                }

                if (v29 == ++v19)
                {
                  v19 = *(v13 + 16);
                  break;
                }
              }
            }

            v18 = v19 + ~v16;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18 + v16 + 1;
        }

        v16 = v19;
        if (v19 >= v14)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

char *sub_1000314FC()
{
  if (++aAaaaaaaa[8] >= 123)
  {
    aAaaaaaaa[8] = 97;
    if (++aAaaaaaaa[7] >= 123)
    {
      aAaaaaaaa[7] = 97;
      if (++aAaaaaaaa[6] >= 123)
      {
        aAaaaaaaa[6] = 97;
        if (++aAaaaaaaa[5] >= 123)
        {
          aAaaaaaaa[5] = 97;
          if (++aAaaaaaaa[4] >= 123)
          {
            aAaaaaaaa[4] = 97;
            if (++aAaaaaaaa[3] >= 123)
            {
              aAaaaaaaa[3] = 97;
              if (++aAaaaaaaa[2] >= 123)
              {
                aAaaaaaaa[2] = 97;
                if ((aAaaaaaaa[1] + 1) < 123)
                {
                  v0 = aAaaaaaaa[1] + 1;
                }

                else
                {
                  v0 = 97;
                }

                aAaaaaaaa[1] = v0;
              }
            }
          }
        }
      }
    }
  }

  return aAaaaaaaa;
}

void *sub_1000316A8(void *result, unsigned __int8 *a2, int a3, const void *a4, void *a5)
{
  if (!a3)
  {
    return result;
  }

  v9 = result;
  v10 = sub_100028A28(a4, a3);
  if (!v9)
  {
    v9 = v10;
  }

  if (!v9 || v9 != v10)
  {
LABEL_20:

    return memcpy(a5, a4, 8 * a3);
  }

  result = sub_10002E1E4(v9, v11, v12, v13, v14, v15, v16, v17);
  if (!result)
  {
    return result;
  }

  v18 = sub_1000C7854(a2);
  v19 = sub_1000C7854("Opt");
  if (!sub_1000C7A1C(a2, "<s>") || !sub_1000C7A1C(a2, "<e>"))
  {
    v21 = 0;
    goto LABEL_19;
  }

  v20 = *(v9 + 32);
  if (v20 < 1)
  {
    goto LABEL_20;
  }

  v21 = 1;
  while (1)
  {
    v23 = *(*(*(v9 + 56) + 8 * (v21 >> 8)) + 8 * v21);
    if (!v23)
    {
      goto LABEL_12;
    }

    if (!sub_1000C7A1C(v23, a2))
    {
      break;
    }

    v20 = *(v9 + 32);
LABEL_12:
    v22 = v21 < v20;
    v21 = (v21 + 1);
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  if (!*(*(*(v9 + 40) + 8 * (v21 >> 8)) + 8 * v21))
  {
    goto LABEL_20;
  }

LABEL_19:
  if (*(*(*(*(v9 + 40) + 8 * (v21 >> 8)) + 8 * v21) + 176) || !sub_100028A6C(a3, a4, v21))
  {
    goto LABEL_20;
  }

  v31 = v18 + v19 + 1;
  v32 = v31;
  v33 = sub_1000C9F54(v31, v24, v25, v26, v27, v28, v29, v30);
  sub_1000C78DC(v33, a2, v31);
  sub_1000C7968(v33, "Opt", v31);
  v34 = 4 * (*(v9 + 24) + ~*(v9 + 28));
  v42 = sub_1000C9F54(v34, v35, v36, v37, v38, v39, v40, v41);
  v43 = v42;
  v44 = *(v9 + 32);
  v45 = v44 + 1;
  if (v44 >= 1)
  {
    v46 = 0;
    v47 = 1;
    do
    {
      if (*(*(*(v9 + 40) + 8 * (v47 >> 8)) + 8 * v47))
      {
        *(v42 + 4 * v46++) = v47;
      }

      ++v47;
      --v44;
    }

    while (v44);
  }

  v48 = sub_1000C0034(4 * v45);
  *(v9 + 144) = v48;
  if (!v48)
  {
    sub_1000CA03C(v43, v34);
    sub_1000CA03C(v33, v31);
    goto LABEL_20;
  }

  v53 = sub_100031AD4(v9, v21, v33, &v101, v49, v50, v51, v52);
  v54 = v33;
  if (!v53)
  {
    sub_1000CA03C(v43, v34);
    sub_1000CA03C(v33, v32);
    sub_1000BFEC4(*(v9 + 144));
    *(v9 + 144) = 0;
    goto LABEL_20;
  }

  v55 = v53;
  v95 = v34;
  v96 = v54;
  v97 = v32;
  v99 = sub_100028638(v53, 0, 0);
  v94 = 4 * v99;
  v63 = sub_1000C9F54(v94, v56, v57, v58, v59, v60, v61, v62);
  v98 = sub_1000286E8(v55, 0, 0, v64, v65, v66);
  v93 = 4 * v98;
  v74 = sub_1000C9F54(v93, v67, v68, v69, v70, v71, v72, v73);
  v100 = v63;
  sub_100028638(v55, 0, v63);
  sub_1000286E8(v55, 0, v74, v75, v76, v77);
  sub_1000314FC();
  v78 = sub_1000C7854(aAaaaaaaa) + 11;
  v92 = v78;
  v86 = sub_1000C9F54(v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1000C78DC(v86, aAaaaaaaa, v78);
  if (a3 >= 1)
  {
    v87 = 0;
    do
    {
      while (sub_100022AD4(*(a4 + v87)) == 3)
      {
        v88 = sub_1000C7854(aAaaaaaaa);
        sprintf(&v86[v88], "%d", v87);
        *(a5 + v87) = sub_100028B60(*(a4 + v87), v55, v100, v99, v74, v98, v9, v21, v89, v90, v91, v86);
        if (a3 == ++v87)
        {
          goto LABEL_36;
        }
      }

      *(a5 + v87) = *(a4 + v87);
      ++v87;
    }

    while (a3 != v87);
  }

LABEL_36:
  sub_1000CA03C(v86, v92);
  sub_1000CA03C(v74, v93);
  sub_1000CA03C(v100, v94);
  sub_1000CA03C(v43, v95);
  sub_1000CA03C(v96, v97);
  sub_100022FBC(v55);
  result = sub_1000BFEC4(*(v9 + 144));
  *(v9 + 144) = 0;
  return result;
}

uint64_t sub_100031AD4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v12 = *(a1 + 132);
  if (v12)
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
    v12 = *(a1 + 132);
  }

  if (v12 == a2 && !sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v13 = *(*(*(a1 + 40) + 8 * (a2 >> 8)) + 8 * a2);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
    return 0;
  }

  if (++aAaaaaaaa[8] >= 123)
  {
    aAaaaaaaa[8] = 97;
    if (++aAaaaaaaa[7] >= 123)
    {
      aAaaaaaaa[7] = 97;
      if (++aAaaaaaaa[6] >= 123)
      {
        aAaaaaaaa[6] = 97;
        if (++aAaaaaaaa[5] >= 123)
        {
          aAaaaaaaa[5] = 97;
          if (++aAaaaaaaa[4] >= 123)
          {
            aAaaaaaaa[4] = 97;
            if (++aAaaaaaaa[3] >= 123)
            {
              aAaaaaaaa[3] = 97;
              if (++aAaaaaaaa[2] >= 123)
              {
                aAaaaaaaa[2] = 97;
                if ((aAaaaaaaa[1] + 1) < 123)
                {
                  v15 = aAaaaaaaa[1] + 1;
                }

                else
                {
                  v15 = 97;
                }

                aAaaaaaaa[1] = v15;
              }
            }
          }
        }
      }
    }
  }

  sub_100034048(a1, 0, 0, a2, 0, 0, v14, aAaaaaaaa, &v22, &v20 + 1, &v19 + 1, 0, 0);
  v16 = v22;
  if (!sub_100033E88(a1, v22 + *(a1 + 24)))
  {
    return 0;
  }

  result = 0;
  if (v16)
  {
    if (HIDWORD(v20))
    {
      v18 = sub_100023DC8(a3, a1, v16, SHIDWORD(v20), 0);
      sub_100034048(a1, v18, 0, a2, 0, 0, v14, aAaaaaaaa, &v21, &v20, &v19, 0, 0);
      result = v18;
      *a4 = v16;
    }
  }

  return result;
}

uint64_t sub_100031D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000C9F54(4 * *(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      *(v10 + i) = i;
      v12 = *(a1 + 16);
    }
  }

  qword_100101730 = a1;
  qsort(v10, v12, 4uLL, sub_100034C94);
  v14 = *(a1 + 16);
  v15 = *(a1 + 48);
  if (v14 > 1)
  {
    v16 = v14 + 1;
    v17 = v11 + v14 - 1;
    v18 = v17;
    do
    {
      v19 = *v17;
      v20 = *--v18;
      if (!sub_100034CB4(a1, *v17, v20, 0))
      {
        LODWORD(v14) = v14 - 1;
        v15 = v15 - *(*(*(a1 + 24) + 8 * ((v19 + 1) >> *a1)) + 4 * ((*(a1 + 4) - 1) & (v19 + 1))) + *(*(*(a1 + 24) + 8 * (v19 >> *a1)) + 4 * ((*(a1 + 4) - 1) & v19));
        *v17 = -1;
      }

      --v16;
      v17 = v18;
    }

    while (v16 > 2);
  }

  if (*(a2 + 12))
  {
    v21 = (a2 + 44);
    if (*(a2 + 44))
    {
      goto LABEL_11;
    }

LABEL_14:
    *(a2 + 40) = *(a1 + 44);
    if (!*(a2 + 152))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(a2 + 8) = *(a1 + 12);
  v21 = (a2 + 44);
  if (!*(a2 + 44))
  {
    goto LABEL_14;
  }

LABEL_11:
  if (!*(a2 + 152))
  {
LABEL_16:
    if (*(a2 + 172))
    {
      goto LABEL_17;
    }

LABEL_33:
    *(a2 + 168) = *(a1 + 172);
    if (sub_100033F80(a2, v14))
    {
      goto LABEL_18;
    }

LABEL_34:
    *(a2 + 8) = 0;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    goto LABEL_35;
  }

LABEL_15:
  if (*(a2 + 148))
  {
    goto LABEL_16;
  }

  *(a2 + 144) = *(a1 + 148);
  if (!*(a2 + 172))
  {
    goto LABEL_33;
  }

LABEL_17:
  if (!sub_100033F80(a2, v14))
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v15 == 0x7FFFFFFF || !sub_1000C06E8((a2 + 128), (a2 + 40), v21, *(a2 + 32), 2, v15))
  {
    *(a2 + 40) = 0;
LABEL_35:
    sub_1000CA03C(v11, 4 * *(a1 + 16));
    return 0;
  }

  v22 = *(a1 + 16);
  if (v22 < 1)
  {
    v25 = 0;
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      if (*(v11 + v23) != -1)
      {
        *(*(*(a2 + 24) + 8 * (v25 >> *a2)) + 4 * ((*(a2 + 4) - 1) & v25)) = v24;
        if (*(a2 + 152))
        {
          *(*(*(a2 + 136) + 8 * (v25 >> *a2)) + ((*(a2 + 4) - 1) & v25)) = *(*(*(a1 + 136) + 8 * (*(v11 + v23) >> *a1)) + ((*(a1 + 4) - 1) & *(v11 + v23)));
        }

        *(*(*(a2 + 160) + 8 * (v25 >> *a2)) + 4 * ((*(a2 + 4) - 1) & v25)) = *(*(*(a1 + 160) + 8 * (*(v11 + v23) >> *a1)) + 4 * ((*(a1 + 4) - 1) & *(v11 + v23)));
        v26 = *(v11 + v23);
        v27 = *(a1 + 24);
        v28 = *(a1 + 4) - 1;
        v29 = *(*(v27 + 8 * (v26 >> *a1)) + 4 * (v28 & v26));
        v30 = *(*(v27 + 8 * ((v26 + 1) >> *a1)) + 4 * (v28 & (v26 + 1)));
        if (v30 > v29)
        {
          v31 = v24 + v30 - v29;
          do
          {
            *(*(*(a2 + 128) + 8 * (v24 >> *(a2 + 32))) + 2 * ((*(a2 + 36) - 1) & v24)) = *(*(*(a1 + 128) + 8 * (v29 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v29));
            ++v24;
            ++v29;
          }

          while (v30 != v29);
          v24 = v31;
        }

        ++v25;
        v22 = *(a1 + 16);
      }

      ++v23;
    }

    while (v23 < v22);
  }

  *(*(*(a2 + 24) + 8 * (v25 >> *a2)) + 4 * ((*(a2 + 4) - 1) & v25)) = v24;
  sub_1000CA03C(v11, 4 * *(a1 + 16));
  *(a2 + 16) = v14;
  *(a2 + 48) = v15;
  return 1;
}

void *sub_100032144(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(*(*(a1 + 40) + 8 * (a3 >> 8)) + 8 * a3);
  v5 = *a1;
  v24 = 0;
  v6 = sub_1000B2074(v5);
  v7 = sub_1000B216C(v5);
  v23 = 2 * v7;
  v15 = sub_1000C9F54(v23, v8, v9, v10, v11, v12, v13, v14);
  v16 = *(v4 + 48);
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = sub_10001C7F8(v6, *(*(*(v4 + 128) + 8 * (i >> *(v4 + 32))) + 2 * ((*(v4 + 36) + 0x7FFFFFFF) & i)), v15, v7);
      if (v18 >= 1)
      {
        v19 = v18;
        v20 = v15;
        do
        {
          v21 = v20->u16[0];
          v20 = (v20 + 2);
          sub_100099F24(a2, v21, 0, 0, &v24);
          --v19;
        }

        while (v19);
      }
    }
  }

  result = sub_1000CA03C(v15, v23);
  *(v4 + 184) = 0;
  return result;
}

uint64_t sub_100032264(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v10 = result;
  if (*(result + 132))
  {
    result = sub_10002E1E4(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(*(*(v10 + 40) + 8 * (v9 >> 8)) + 8 * v9);
  *(v11 + 180) = 0;
  v12 = *(v10 + 72);
  if (v12)
  {
    v13 = *(*(*(v10 + 104) + 8 * (v9 >> 8)) + 4 * v9);
    if (!v13)
    {
      v13 = v9;
    }

    v14 = *(v12 + 8 * (v13 >> 8));
    v15 = v13;
    if (*(v14 + 8 * v13))
    {
      v38 = *(v14 + 8 * v13);
      v16 = *(v11 + 16);
      if (v16 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    v24 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v24 = *(qword_1001065A8 + 1528);
    }

    if (v24 > *(v10 + 128))
    {
      result = sub_10005D9A0();
      if (result)
      {
        *(v14 + 8 * v15) = result;
        ++*(v10 + 128);
        v38 = *(v14 + 8 * v15);
        v16 = *(v11 + 16);
        if (v16 >= 1)
        {
LABEL_8:
          v17 = 0;
          v18 = 0;
          v19 = *v10;
          v20 = -1;
          do
          {
            v21 = *(*(*(v11 + 24) + 8 * (v18 >> *v11)) + 4 * ((*(v11 + 4) + 0x7FFFFFFF) & v18));
            v22 = *(*(*(v11 + 128) + 8 * (v21 >> *(v11 + 32))) + 2 * ((*(v11 + 36) - 1) & v21));
            if (v22 != v20)
            {
              v23 = sub_1000BA810(v19, *(*(*(v11 + 128) + 8 * (v21 >> *(v11 + 32))) + 2 * ((*(v11 + 36) - 1) & v21)));
              v17 = sub_1000B2C18(v19, v23) + v17;
              v16 = *(v11 + 16);
              v20 = v22;
            }

            ++v18;
          }

          while (v18 < v16);
          goto LABEL_18;
        }

LABEL_17:
        v17 = 0;
LABEL_18:
        v25 = sub_1000C9F54(2 * v17, a2, a3, a4, a5, a6, a7, a8);
        v26 = *v10;
        v27 = *(v11 + 16);
        if (v27 >= 1)
        {
          v35 = v8;
          v36 = v15;
          v37 = v14;
          v28 = 0;
          v29 = 0;
          v30 = -1;
          do
          {
            v31 = *(*(*(v11 + 24) + 8 * (v29 >> *v11)) + 4 * ((*(v11 + 4) + 0x7FFFFFFF) & v29));
            v32 = *(*(*(v11 + 128) + 8 * (v31 >> *(v11 + 32))) + 2 * ((*(v11 + 36) - 1) & v31));
            if (v32 != v30)
            {
              v33 = sub_1000BA810(v26, *(*(*(v11 + 128) + 8 * (v31 >> *(v11 + 32))) + 2 * ((*(v11 + 36) - 1) & v31)));
              v28 += sub_1000B28E4(v26, v33, &v25[v28], v17 - v28);
              v27 = *(v11 + 16);
              v30 = v32;
            }

            ++v29;
          }

          while (v29 < v27);
          v26 = *v10;
          v14 = v37;
          v15 = v36;
          v8 = v35;
        }

        v34 = sub_10005EC84(v38, v25, v17, v26, *(v10 + 8), 0, 1, 1, 0, v8);
        sub_1000CA03C(v25, 2 * v17);
        if (!v34 || (result = sub_100060940(v38), result >= 2))
        {
          result = sub_10005D9D0(v38);
          *(v14 + 8 * v15) = 0;
          --*(v10 + 128);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100032530(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = result;
  if (*(result + 132))
  {
    result = sub_10002E1E4(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(v10 + 32);
  if (v11 >= 1)
  {
    if (v8)
    {
      v12 = 0;
      do
      {
        ++v12;
        if (*(*(*(v10 + 40) + 8 * (v12 >> 8)) + 8 * v12))
        {
          result = sub_100032144(v10, a2, v12);
          v11 = *(v10 + 32);
        }
      }

      while (v12 < v11);
    }

    else
    {
      do
      {
        ++v8;
        v13 = *(*(*(v10 + 40) + 8 * (v8 >> 8)) + 8 * v8);
        if (v13 && *(v13 + 184))
        {
          result = sub_100032144(v10, a2, v8);
          v11 = *(v10 + 32);
        }
      }

      while (v8 < v11);
    }
  }

  return result;
}

uint64_t sub_100032608(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    LODWORD(v20) = 0;
    do
    {
      v20 = (v20 + 1);
      v21 = *(*(*(a1 + 40) + 8 * (v20 >> 8)) + 8 * v20);
      if (v21 && *(v21 + 180))
      {
        sub_100032264(a1, v20, 0, v14, v15, v16, v17, v18);
        v19 = *(a1 + 32);
      }
    }

    while (v20 < v19);
  }

  result = sub_1000BCAA0(a2, "bcm1", a3);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 52) != *(a1 + 68) || *(a1 + 48) != *(a1 + 64))
  {
    return 0;
  }

  v22 = result;
  if (!sub_1000BCBAC(result, *(a1 + 24)) || !sub_1000BCBAC(v22, *(a1 + 28)) || !sub_1000BCBAC(v22, *(a1 + 32)) || !sub_1000BCBAC(v22, *(a1 + 48)) || !sub_1000BCBAC(v22, *(a1 + 52)) || !sub_1000BCBAC(v22, *(a1 + 80)) || !sub_1000BCBAC(v22, *(a1 + 84)) || !sub_1000BCBAC(v22, *(a1 + 96)) || !sub_1000BCBAC(v22, *(a1 + 100)) || !sub_1000BCBAC(v22, *(a1 + 112)) || !sub_1000BCBAC(v22, *(a1 + 116)) || (v23 = *(a1 + 72), !sub_1000BCBAC(v22, v23 != 0)) || !sub_1000BCE4C(v22, *(a1 + 88), *(a1 + 100), 0x100u, 4) || !sub_1000BCE4C(v22, *(a1 + 104), *(a1 + 116), 0x100u, 4))
  {
    v26 = 0;
    goto LABEL_31;
  }

  v24 = *(a1 + 32);
  if (v24 < 1)
  {
    v27 = 1;
    goto LABEL_53;
  }

  v25 = 1;
  while (1)
  {
    v29 = v25 >> 8;
    v30 = *(*(a1 + 56) + 8 * (v25 >> 8));
    v31 = *(v30 + 8 * v25);
    if (v31)
    {
      v32 = *(*(*(a1 + 40) + 8 * v29) + 8 * v25);
      if (!v32 || *(v32 + 208))
      {
        break;
      }
    }

    if (!sub_1000BCBAC(v22, 0))
    {
      goto LABEL_50;
    }

LABEL_34:
    v27 = v25 + 1;
    if (v25++ >= *(a1 + 32))
    {
      goto LABEL_51;
    }
  }

  v33 = sub_1000C7854(v31) + 1;
  if (sub_1000BCBAC(v22, v33))
  {
    v34 = *(v30 + 8 * v25);
    v35 = v34 ? v33 : 0;
    if (sub_1000BCC04(v22, v34, v35, 1) && (*(*(*(a1 + 104) + 8 * v29) + 4 * v25) || sub_100032920(v32, v22)))
    {
      if (!v23)
      {
        goto LABEL_34;
      }

      v36 = *(*(*(a1 + 72) + 8 * v29) + 8 * v25);
      if (sub_1000BCBAC(v22, v36 != 0) && (!v36 || sub_100060984(v36, v22)))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_50:
  v27 = v25;
LABEL_51:
  v24 = *(a1 + 32);
LABEL_53:
  v26 = v27 > v24;
LABEL_31:
  sub_1000BCB64(v22);
  return v26;
}

uint64_t sub_100032920(uint64_t a1, uint64_t a2)
{
  if (!sub_1000BCBAC(a2, *a1))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 4)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 8)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 12)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 16)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 32)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 36)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 40)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 44)))
  {
    return 0;
  }

  if (!sub_1000BCBAC(a2, *(a1 + 48)))
  {
    return 0;
  }

  sub_1000BCBAC(a2, *(a1 + 52));
  if (!sub_1000BCBAC(a2, *(a1 + 144)) || !sub_1000BCBAC(a2, *(a1 + 148)) || !sub_1000BCBAC(a2, *(a1 + 152)) || !sub_1000BCBAC(a2, *(a1 + 168)) || !sub_1000BCBAC(a2, *(a1 + 172)) || !sub_1000BCBAC(a2, *(a1 + 176)) || !sub_1000BCBAC(a2, *(a1 + 64)) || !sub_1000BCBAC(a2, *(a1 + 200)) || !sub_1000BCBAC(a2, *(a1 + 192)) || !sub_1000BCBAC(a2, *(a1 + 196)) || !sub_1000BCE4C(a2, *(a1 + 24), *(a1 + 12), *(a1 + 4), 4) || !sub_1000BCE4C(a2, *(a1 + 128), *(a1 + 44), *(a1 + 36), 2) || *(a1 + 152) && !sub_1000BCE4C(a2, *(a1 + 136), *(a1 + 148), *(a1 + 4), 1))
  {
    return 0;
  }

  if (!sub_1000BCE4C(a2, *(a1 + 160), *(a1 + 172), *(a1 + 4), 4))
  {
    return 0;
  }

  v4 = *(a1 + 216);

  return sub_100034DD4(v4, a2);
}

uint64_t sub_100032B30(_DWORD *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v11 = sub_1000BBAE0(a2, "bcm1", a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    v12 = v11;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v13 = a1[25];
    v14 = a1[29];
    if (!sub_1000BBD54(v11, a1 + 6) || !sub_1000BBD54(v12, a1 + 7) || !sub_1000BBD54(v12, a1 + 8) || !sub_1000BBD54(v12, &v76 + 4) || !sub_1000BBD54(v12, &v76) || !sub_1000BBD54(v12, &v75) || !sub_1000BBD54(v12, &v74) || !sub_1000BBD54(v12, a1 + 24) || !sub_1000BBD54(v12, a1 + 25) || !sub_1000BBD54(v12, a1 + 28) || !sub_1000BBD54(v12, a1 + 29) || !sub_1000BBD54(v12, &v72))
    {
      goto LABEL_140;
    }

    if (v72 && !*(a1 + 9))
    {
      v20 = sub_1000C0034(8 * a1[20]);
      *(a1 + 9) = v20;
      if (!v20)
      {
        goto LABEL_140;
      }

      if (a1[21] >= 1)
      {
        v21 = 0;
        do
        {
          *(*(a1 + 9) + 8 * v21++) = sub_1000C0034(2048);
        }

        while (v21 < a1[21]);
      }
    }

    else if (v75 != a1[20])
    {
      v15 = sub_1000C0034(8 * v75);
      if (!v15)
      {
        goto LABEL_140;
      }

      v16 = v15;
      v17 = v75;
      if (v75 < a1[21])
      {
        v18 = v75;
        do
        {
          sub_1000BFEC4(*(*(a1 + 9) + 8 * v18++));
        }

        while (v18 < a1[21]);
        v17 = v75;
      }

      if (v17 >= a1[20])
      {
        v17 = a1[20];
      }

      j__memmove(v16, *(a1 + 9), 8 * v17);
      sub_1000BFEC4(*(a1 + 9));
      *(a1 + 9) = v16;
    }

    v22 = v74;
    LODWORD(v23) = a1[21];
    if (v74 < v23)
    {
      v24 = v74;
      do
      {
        sub_1000BFEC4(*(*(a1 + 9) + 8 * v24));
        *(*(a1 + 9) + 8 * v24++) = 0;
      }

      while (v24 < a1[21]);
      v22 = v74;
      LODWORD(v23) = a1[21];
    }

    if (v23 < v22)
    {
      v23 = v23;
      do
      {
        *(*(a1 + 9) + 8 * v23) = sub_1000C0034(2048);
        v22 = v74;
        if (!*(*(a1 + 9) + 8 * v23))
        {
          break;
        }

        ++v23;
      }

      while (v23 < v74);
    }

    if (v23 != v22)
    {
      goto LABEL_140;
    }

    v26 = (a1 + 22);
    v25 = *(a1 + 11);
    a1[20] = v75;
    a1[21] = v22;
    if (v25)
    {
      if (v13 >= 1)
      {
        v27 = 0;
        v28 = 8 * v13;
        do
        {
          sub_1000BFEC4(*(*v26 + v27));
          v27 += 8;
        }

        while (v28 != v27);
        v25 = *v26;
      }

      sub_1000BFEC4(v25);
    }

    v30 = (a1 + 26);
    v29 = *(a1 + 13);
    if (v29)
    {
      if (v14 >= 1)
      {
        v31 = 0;
        v32 = 8 * v14;
        do
        {
          sub_1000BFEC4(*(*v30 + v31));
          v31 += 8;
        }

        while (v32 != v31);
        v29 = *v30;
      }

      sub_1000BFEC4(v29);
    }

    v33 = v76;
    if (*(a1 + 5))
    {
      v34 = 1;
    }

    else
    {
      v34 = v76 < 1;
    }

    if (v34)
    {
      if (HIDWORD(v76) != a1[12])
      {
        v35 = sub_1000C0034(8 * SHIDWORD(v76));
        if (!v35)
        {
          goto LABEL_140;
        }

        v36 = v35;
        v37 = HIDWORD(v76);
        if (SHIDWORD(v76) < a1[13])
        {
          v38 = SHIDWORD(v76);
          do
          {
            sub_1000BFEC4(*(*(a1 + 7) + 8 * v38++));
          }

          while (v38 < a1[13]);
          v37 = HIDWORD(v76);
        }

        if (v37 >= a1[12])
        {
          v37 = a1[12];
        }

        j__memmove(v36, *(a1 + 7), 8 * v37);
        sub_1000BFEC4(*(a1 + 7));
        *(a1 + 7) = v36;
        v39 = sub_1000C0034(8 * SHIDWORD(v76));
        if (!v39)
        {
          goto LABEL_140;
        }

        v40 = v39;
        v41 = HIDWORD(v76);
        if (SHIDWORD(v76) < a1[13])
        {
          v42 = SHIDWORD(v76);
          do
          {
            sub_1000BFEC4(*(*(a1 + 5) + 8 * v42++));
          }

          while (v42 < a1[13]);
          v41 = HIDWORD(v76);
        }

        if (v41 >= a1[12])
        {
          v41 = a1[12];
        }

        j__memmove(v40, *(a1 + 5), 8 * v41);
        sub_1000BFEC4(*(a1 + 5));
        *(a1 + 5) = v40;
        v33 = v76;
      }
    }

    else
    {
      v43 = sub_1000C0034(8 * SHIDWORD(v76));
      if (!v43)
      {
        goto LABEL_140;
      }

      v44 = v43;
      v45 = v76;
      if (v76 < 1)
      {
        LODWORD(v46) = 0;
      }

      else
      {
        v46 = 0;
        do
        {
          v47 = sub_1000C0034(2048);
          *(v44 + 8 * v46) = v47;
          v45 = v76;
          if (!v47)
          {
            break;
          }

          ++v46;
        }

        while (v46 < v76);
      }

      if (v46 != v45)
      {
        goto LABEL_140;
      }

      v70 = sub_1000C0034(8 * SHIDWORD(v76));
      if (!v70)
      {
        goto LABEL_140;
      }

      v33 = v76;
      if (v76 < 1)
      {
        LODWORD(v48) = 0;
      }

      else
      {
        v48 = 0;
        do
        {
          v49 = sub_1000C0034(2048);
          *(v70 + 8 * v48) = v49;
          v33 = v76;
          if (!v49)
          {
            break;
          }

          ++v48;
        }

        while (v48 < v76);
      }

      if (v48 != v33)
      {
        goto LABEL_140;
      }

      a1[17] = v33;
      *(a1 + 7) = v44;
      a1[13] = v33;
      *(a1 + 5) = v70;
    }

    LODWORD(v50) = a1[13];
    if (v33 >= v50)
    {
      if (v50 >= v33)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v51 = v33;
      do
      {
        sub_1000BFEC4(*(*(a1 + 7) + 8 * v51));
        *(*(a1 + 7) + 8 * v51) = 0;
        sub_1000BFEC4(*(*(a1 + 5) + 8 * v51));
        *(*(a1 + 5) + 8 * v51++) = 0;
        v52 = a1[13];
      }

      while (v51 < v52);
      v33 = v76;
      LODWORD(v50) = a1[13];
      if (v52 >= v76)
      {
LABEL_93:
        if (v50 != v33)
        {
          goto LABEL_140;
        }

        goto LABEL_103;
      }
    }

    v50 = v50;
    while (1)
    {
      *(*(a1 + 7) + 8 * v50) = sub_1000C0034(2048);
      if (!*(*(a1 + 7) + 8 * v50))
      {
        break;
      }

      *(*(a1 + 5) + 8 * v50) = sub_1000C0034(2048);
      v33 = v76;
      if (*(*(a1 + 5) + 8 * v50))
      {
        if (++v50 < v76)
        {
          continue;
        }
      }

      if (v50 == v76)
      {
        goto LABEL_103;
      }

      goto LABEL_140;
    }

    v33 = v76;
    if (v50 != v76)
    {
      goto LABEL_140;
    }

LABEL_103:
    v53 = HIDWORD(v76);
    a1[16] = HIDWORD(v76);
    a1[17] = v33;
    a1[12] = v53;
    a1[13] = v33;
    v71 = 0;
    if (sub_1000BC6E0(v12, a1 + 11, a1[24], 256, 4, &v71) && (!*v26 || v71 == a1[25]))
    {
      v71 = 0;
      if (sub_1000BC6E0(v12, a1 + 13, a1[28], 256, 4, &v71))
      {
        if (!*v30 || v71 == a1[29])
        {
          v54 = a1[8];
          if (v54 < 1)
          {
            v56 = 1;
          }

          else
          {
            v55 = 1;
            do
            {
              v56 = v55;
              if (!sub_1000BBD54(v12, &v75 + 4))
              {
LABEL_134:
                v54 = a1[8];
                goto LABEL_137;
              }

              if (HIDWORD(v75))
              {
                v57 = v56 >> 8;
                v58 = *(*(a1 + 5) + 8 * (v56 >> 8));
                if (*(v58 + 8 * v56))
                {
                  goto LABEL_134;
                }

                v59 = *(*(a1 + 7) + 8 * v57);
                v71 = 0;
                if (!sub_1000BBF0C(v12, 1, &v73, &v71) || v73 && v71 != HIDWORD(v75))
                {
                  goto LABEL_134;
                }

                *(v59 + 8 * v56) = v73;
                if (*(*(*v30 + 8 * v57) + 4 * v56))
                {
                  v60 = 0;
                }

                else
                {
                  v61 = sub_100033398(v12);
                  if (!v61)
                  {
                    goto LABEL_134;
                  }

                  v60 = v61;
                  if (*(v61 + 16) != -1)
                  {
                    v61[7] = a4;
                  }

                  *(v58 + 8 * v56) = v61;
                  *(v61 + 204) = 0x100000001;
                  *(v61 + 46) = 1;
                }

                if (v72)
                {
                  v71 = 0;
                  if (!sub_1000BBD54(v12, &v71))
                  {
                    goto LABEL_134;
                  }

                  if (v71)
                  {
                    v62 = sub_10005D9A0();
                    if (!v62)
                    {
                      goto LABEL_134;
                    }

                    v63 = v62;
                    if (!sub_100060B48(v62, v12))
                    {
                      goto LABEL_134;
                    }

                    if (v8)
                    {
                      v64 = 0;
                      *(*(*(a1 + 9) + 8 * v57) + 8 * v56) = v63;
                    }

                    else
                    {
                      sub_10005D9D0(v63);
                      v64 = 1;
                    }

                    if (v60)
                    {
                      *(v60 + 45) = v64;
                    }
                  }
                }
              }

              v55 = v56 + 1;
              v54 = a1[8];
            }

            while (v56 < v54);
            ++v56;
          }

LABEL_137:
          if (v56 == v54 + 1)
          {
            if (v54 < 1)
            {
              v19 = 1;
            }

            else
            {
              v65 = 0;
              v19 = 1;
              do
              {
                v67 = ++v65 >> 8;
                if (*(*(*(a1 + 7) + 8 * (v65 >> 8)) + 8 * v65))
                {
                  v68 = *(*(*v30 + 8 * v67) + 4 * v65);
                  if (v68)
                  {
                    v69 = (v68 & 0x40000000) == 0;
                  }

                  else
                  {
                    v69 = 0;
                  }

                  if (v69)
                  {
                    *(*(*(a1 + 5) + 8 * v67) + 8 * v65) = *(*(*(a1 + 5) + ((v68 >> 5) & 0x7FFFFF8)) + 8 * v68);
                    v54 = a1[8];
                  }
                }
              }

              while (v65 < v54);
            }

            goto LABEL_141;
          }
        }
      }
    }

LABEL_140:
    v19 = 0;
LABEL_141:
    sub_1000BBBC4(v12);
    return v19;
  }

  return 0;
}

uint64_t *sub_100033398(uint64_t a1)
{
  v2 = sub_1000C0034(224);
  if (v2)
  {
    if (!sub_1000BBD54(a1, v2) || !sub_1000BBD54(a1, v2 + 4) || !sub_1000BBD54(a1, v2 + 1) || !sub_1000BBD54(a1, v2 + 12) || !sub_1000BBD54(a1, v2 + 2) || !sub_1000BBD54(a1, v2 + 4) || !sub_1000BBD54(a1, v2 + 36) || !sub_1000BBD54(a1, v2 + 5) || !sub_1000BBD54(a1, v2 + 44) || !sub_1000BBD54(a1, v2 + 6) || (v4 = 0, !sub_1000BBD54(a1, &v4)) || (*(v2 + 13) = v4, !sub_1000BBD54(a1, v2 + 18)) || !sub_1000BBD54(a1, v2 + 148) || !sub_1000BBD54(a1, v2 + 19) || !sub_1000BBD54(a1, v2 + 21) || !sub_1000BBD54(a1, v2 + 172) || !sub_1000BBD54(a1, v2 + 22) || !sub_1000BBD54(a1, v2 + 8) || !sub_1000BBD54(a1, v2 + 25) || !sub_1000BBD54(a1, v2 + 24) || !sub_1000BBD54(a1, v2 + 196) || (v4 = 0, !sub_1000BC6E0(a1, v2 + 3, *(v2 + 2), *(v2 + 1), 4, &v4)) || v2[3] && v4 != *(v2 + 3) || (v4 = 0, !sub_1000BC6E0(a1, v2 + 16, *(v2 + 10), *(v2 + 9), 2, &v4)) || v2[16] && v4 != *(v2 + 11) || *(v2 + 38) && ((v4 = 0, !sub_1000BC6E0(a1, v2 + 17, *(v2 + 36), *(v2 + 1), 1, &v4)) || v2[17] && v4 != *(v2 + 37)) || (v4 = 0, !sub_1000BC6E0(a1, v2 + 20, *(v2 + 42), *(v2 + 1), 4, &v4)) || v2[20] && v4 != *(v2 + 43) || !sub_100034E98(v2 + 27, a1))
    {
      sub_1000BFEC4(v2);
      return 0;
    }
  }

  return v2;
}

_DWORD *sub_10003363C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1000BBAE0(a1, "bcm1", a2, a4, a5, a6, a7, a8);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = sub_1000C0034(160);
  if (!v13)
  {
    goto LABEL_59;
  }

  v14 = sub_1000C0034(224);
  *(v13 + 17) = v14;
  if (v14)
  {
    v39 = 0;
    v40 = 0;
    *v13 = a3;
    *(v13 + 1) = a4;
    *(v13 + 2) = a5;
    *(v14 + 204) = 1;
    if (!sub_1000BBD54(v12, v13 + 6) || !sub_1000BBD54(v12, v13 + 8) || !sub_1000BBD54(v12, v13 + 13) || !sub_1000BBD54(v12, v13 + 12) || !sub_1000BBD54(v12, v13 + 25) || !sub_1000BBD54(v12, v13 + 24) || !sub_1000BBD54(v12, v13 + 29) || !sub_1000BBD54(v12, v13 + 28) || !sub_1000BBD54(v12, v13 + 20) || !sub_1000BBD54(v12, v13 + 39))
    {
      goto LABEL_47;
    }

    v15 = v13[12];
    if (v15 < 1)
    {
      goto LABEL_38;
    }

    v16 = sub_1000C0034(8 * v15);
    *(v13 + 5) = v16;
    if (!v16)
    {
      goto LABEL_47;
    }

    if (v13[13] >= 1)
    {
      v17 = 0;
      do
      {
        *(*(v13 + 5) + 8 * v17) = sub_1000C0034(2048);
        if (!*(*(v13 + 5) + 8 * v17))
        {
          break;
        }

        ++v17;
      }

      while (v17 < v13[13]);
    }

    v18 = sub_1000C0034(8 * v13[12]);
    *(v13 + 7) = v18;
    if (!v18)
    {
LABEL_47:
      sub_1000BBBC4(v12);
      sub_10002E3A0(v13);
      return 0;
    }

    v19 = v13[13];
    if (v19 >= 1)
    {
      v20 = 0;
      do
      {
        *(*(v13 + 7) + 8 * v20) = sub_1000C0034(2048);
        v21 = *(*(v13 + 7) + 8 * v20);
        v19 = v13[13];
        ++v20;
        if (v21)
        {
          v22 = v20 < v19;
        }

        else
        {
          v22 = 0;
        }
      }

      while (v22);
    }

    v13[16] = v13[12];
    v13[17] = v19;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 1528) >= 1)
      {
        v23 = v13[20];
        if (v23 >= 1)
        {
          v24 = sub_1000C0034(8 * v23);
          *(v13 + 9) = v24;
          if (v24)
          {
            if (v13[21] >= 1)
            {
              v25 = 0;
              do
              {
                *(*(v13 + 9) + 8 * v25) = sub_1000C0034(2048);
                if (!*(*(v13 + 9) + 8 * v25))
                {
                  break;
                }

                ++v25;
              }

              while (v25 < v13[21]);
            }

            goto LABEL_38;
          }

          goto LABEL_47;
        }
      }
    }

LABEL_38:
    while (sub_1000BBD54(v12, &v40 + 4))
    {
      if (HIDWORD(v40) == v13[8] + 1)
      {
        break;
      }

      if (!sub_1000BBD54(v12, &v40))
      {
        break;
      }

      v29 = BYTE4(v40);
      v30 = *(*(v13 + 7) + ((HIDWORD(v40) >> 5) & 0x7FFFFF8));
      v38 = 0;
      if (!sub_1000BBF0C(v12, 1, &v39, &v38) || v39 && v38 != v40)
      {
        break;
      }

      *(v30 + 8 * v29) = v39;
      v26 = *(*(v13 + 5) + ((HIDWORD(v40) >> 5) & 0x7FFFFF8));
      v27 = BYTE4(v40);
      v28 = sub_100033A54(v12);
      *(v26 + 8 * v27) = v28;
      if (!v28)
      {
        goto LABEL_47;
      }
    }

    v31 = sub_1000C0034(8 * v13[24]);
    *(v13 + 11) = v31;
    if (!v31)
    {
      goto LABEL_47;
    }

    if (v13[25] >= 1)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v38 = 0;
        if (!sub_1000BBF0C(v12, 4, (v31 + v32), &v38))
        {
          break;
        }

        v31 = *(v13 + 11);
        if (*(v31 + v32))
        {
          if (v38 != 256)
          {
            break;
          }
        }

        ++v33;
        v32 += 8;
      }

      while (v33 < v13[25]);
    }

    if (v13[29] >= 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = *(v13 + 13);
      do
      {
        v38 = 0;
        if (!sub_1000BBF0C(v12, 4, (v36 + v34), &v38))
        {
          break;
        }

        v36 = *(v13 + 13);
        if (*(v36 + v34))
        {
          if (v38 != 256)
          {
            break;
          }
        }

        ++v35;
        v34 += 8;
      }

      while (v35 < v13[29]);
    }

LABEL_59:
    sub_1000BBBC4(v12);
    return v13;
  }

  sub_1000BBBC4(v12);
  sub_1000BFEC4(v13);
  return 0;
}

uint64_t *sub_100033A54(uint64_t a1)
{
  v2 = sub_1000C0034(224);
  if (!v2)
  {
    return v2;
  }

  if (!sub_1000BBD54(a1, v2) || !sub_1000BBD54(a1, v2 + 4) || !sub_1000BBD54(a1, v2 + 1) || !sub_1000BBD54(a1, v2 + 12) || !sub_1000BBD54(a1, v2 + 2) || !sub_1000BBD54(a1, v2 + 4) || !sub_1000BBD54(a1, v2 + 36) || !sub_1000BBD54(a1, v2 + 5) || !sub_1000BBD54(a1, v2 + 44) || !sub_1000BBD54(a1, v2 + 6) || (v12 = 0, !sub_1000BBD54(a1, &v12)) || (*(v2 + 13) = v12, !sub_1000BBD54(a1, v2 + 25)) || (v3 = sub_1000C0034(8 * *(v2 + 2)), (v2[3] = v3) == 0))
  {
    sub_1000BFEC4(v2);
    return 0;
  }

  if (*(v2 + 3) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v11 = 0;
      if (!sub_1000BBF0C(a1, 4, (v3 + v4), &v11))
      {
        break;
      }

      v3 = v2[3];
      if (*(v3 + v4))
      {
        if (v11 != *(v2 + 1))
        {
          break;
        }
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *(v2 + 3));
  }

  v7 = sub_1000C0034(8 * *(v2 + 10));
  v2[16] = v7;
  if (!v7)
  {
    return 0;
  }

  if (*(v2 + 11) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 0;
      if (!sub_1000BBF0C(a1, 2, (v7 + v8), &v10))
      {
        break;
      }

      v7 = v2[16];
      if (*(v7 + v8))
      {
        if (v10 != *(v2 + 9))
        {
          break;
        }
      }

      ++v9;
      v8 += 8;
    }

    while (v9 < *(v2 + 11));
  }

  *(v2 + 204) = 1;
  *(v2 + 46) = 1;
  return v2;
}

unint64_t sub_100033C8C(uint64_t a1, unsigned __int8 *a2, int a3, int a4, _WORD *a5)
{
  if (!sub_1000C7A1C(a2, "<s>") || !sub_1000C7A1C(a2, "<e>"))
  {
    v14 = 0;
    if (a3 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  if (v10 < 1)
  {
LABEL_24:
    v14 = -1;
    if (a3 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  v11 = 1;
  while (1)
  {
    v13 = *(*(*(a1 + 56) + 8 * (v11 >> 8)) + 8 * v11);
    if (!v13)
    {
      goto LABEL_6;
    }

    if (!sub_1000C7A1C(v13, a2))
    {
      break;
    }

    v10 = *(a1 + 32);
LABEL_6:
    if (v11++ >= v10)
    {
      goto LABEL_24;
    }
  }

  if (*(*(*(a1 + 40) + 8 * (v11 >> 8)) + 8 * v11))
  {
    v14 = v11;
  }

  else
  {
    v14 = -1;
  }

  if (a3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_16:
  v15 = *(*(*(*(a1 + 40) + 8 * (v14 >> 8)) + 8 * v14) + 216);
  if (!v15)
  {
LABEL_23:
    result = 0xFFFFFFFFLL;
LABEL_34:
    *a5 = 0;
    return result;
  }

  v16 = 1234556789 * a3;
  while (*v15 != a3)
  {
    if ((v16 & 0x40000000) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 4;
    }

    v15 = *&v15[v17];
    v16 *= 2;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  result = sub_1000CB75C((v15 + 6));
  if (result >= a4 - 1)
  {
    v19 = a4 - 1;
  }

  else
  {
    v19 = result;
  }

  if (v19 >= 1)
  {
    v20 = v15 + 6;
    v21 = result;
    j__memmove(a5, v20, (2 * v19));
    result = v21;
  }

  if (a4 >= 1)
  {
    a5 += v19;
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100033E38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100033E38(*(result + 8));
    sub_100033E38(*(v1 + 16));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100033E88(uint64_t a1, int a2)
{
  if (a2 > 0x40000)
  {
    return 0;
  }

  result = sub_1000C06E8((a1 + 40), (a1 + 48), (a1 + 52), 8, 8, a2);
  if (result)
  {
    if (!qword_1001065A8 || *(qword_1001065A8 + 1528) < 1 || (result = sub_1000C06E8((a1 + 72), (a1 + 80), (a1 + 84), 8, 8, a2), result))
    {
      result = sub_1000C06E8((a1 + 56), (a1 + 64), (a1 + 68), 8, 8, a2);
      if (result)
      {
        result = sub_1000C06E8((a1 + 88), (a1 + 96), (a1 + 100), 8, 4, a2);
        if (result)
        {
          return sub_1000C06E8((a1 + 104), (a1 + 112), (a1 + 116), 8, 4, a2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100033F80(uint64_t a1, int a2)
{
  result = sub_1000C06E8((a1 + 24), (a1 + 8), (a1 + 12), *a1, 4, a2 + 1);
  if (result)
  {
    if (!*(a1 + 152) || (result = sub_1000C06E8((a1 + 136), (a1 + 144), (a1 + 148), *a1, 1, a2), result))
    {
      v5 = *(a1 + 16);
      result = sub_1000C06E8((a1 + 160), (a1 + 168), (a1 + 172), *a1, 4, a2);
      if (v5 < a2)
      {
        do
        {
          *(*(*(a1 + 160) + 8 * (v5 >> *a1)) + 4 * ((*(a1 + 4) - 1) & v5)) = -1;
          ++v5;
        }

        while (a2 != v5);
      }
    }
  }

  return result;
}

unint64_t sub_100034048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, int a12, int a13)
{
  v14 = a7;
  v15 = a6;
  v162 = a5;
  v167 = a4;
  v16 = a3;
  v18 = a10;
  v19 = a11;
  v169 = 0;
  if (*(a1 + 132))
  {
    sub_10002E1E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v166 = v167 >> 8;
  v20 = *(*(*(a1 + 40) + 8 * (v167 >> 8)) + 8 * v167);
  v170[0] = 0xFFFFFFFFLL;
  v21 = sub_1000C7854(a8) + 11;
  v163 = v21;
  v29 = sub_1000C9F54(v21, v22, v23, v24, v25, v26, v27, v28);
  v30 = v21;
  v31 = v29;
  sub_1000C78DC(v29, a8, v30);
  v158 = a8;
  v32 = sub_1000C7854(a8);
  sprintf(&v31[v32], "_%d", 0);
  v168 = v16;
  if (qword_1001065A8)
  {
    v33 = a2;
    if (*(qword_1001065A8 + 4264) <= a12)
    {
      goto LABEL_11;
    }

    v34 = a13;
    if (*(qword_1001065A8 + 4256) <= a13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v33 = a2;
    if ((a12 & 0x80000000) == 0 || (v34 = a13, a13 >= 0))
    {
LABEL_11:
      if (!v33)
      {
        goto LABEL_61;
      }

      if (v14 < 1)
      {
        v47 = 0;
        v56 = 0;
LABEL_49:
        v160 = v31;
        sub_10002ECE0(a1, v31, v14, v47, v20[13], &v169 + 1, 0, 0, 0, 0);
        v69 = *(*(*(a1 + 40) + ((HIDWORD(v169) >> 5) & 0x7FFFFF8)) + 8 * BYTE4(v169));
        sub_100024470(a2, SHIDWORD(v169), v170 + 1);
        sub_1000248C0(a2, v162, SHIDWORD(v170[0]), 0);
        sub_1000248C0(a2, SHIDWORD(v170[0]), 0, 0);
        v84 = sub_1000C9F54(v56, v70, v71, v72, v73, v74, v75, v76);
        if (v14 >= 1)
        {
          for (i = 0; i != v14; ++i)
          {
            v86 = i + v16;
            if (*(a1 + 132) == v167 && !sub_10002E1E4(a1, v77, v78, v79, v80, v81, v82, v83))
            {
              v88 = 0;
              v89 = -v15;
              if (v15 < 0)
              {
LABEL_55:
                v90 = v15 + *(*(*(v20 + 3) + 8 * (v86 >> *v20)) + 4 * ((v20[1] - 1) & v86));
                v91 = v88 - v15;
                v92 = &v84[v15];
                do
                {
                  *v92++ = *(*(*(v20 + 16) + 8 * (v90 >> v20[8])) + 2 * ((v20[9] - 1) & v90));
                  ++v90;
                  --v91;
                }

                while (v91);
              }
            }

            else
            {
              v87 = *(*(*(a1 + 40) + 8 * v166) + 8 * v167);
              v88 = *(*(*(v87 + 24) + 8 * ((v86 + 1) >> *v87)) + 4 * ((*(v87 + 4) - 1) & (v86 + 1))) - *(*(*(v87 + 24) + 8 * (v86 >> *v87)) + 4 * ((*(v87 + 4) - 1) & v86));
              v89 = v88 - v15;
              if (v88 > v15)
              {
                goto LABEL_55;
              }
            }

            sub_10002F988(v69, v89, &v84[v15], 0, -1);
          }
        }

        sub_1000CA03C(v84, v56);
        v19 = a11;
        v31 = v160;
        v18 = a10;
LABEL_61:
        sub_1000CA03C(v31, v163);
        ++*a9;
        ++*v18;
        result = sub_1000C7854(v31);
        v94 = result + *v19 + 1;
        goto LABEL_112;
      }

      v41 = *(v20 + 3);
      v42 = *v20;
      v43 = v20[1] - 1;
      v44 = *(*(v41 + 8 * (v16 >> *v20)) + 4 * (v43 & v16));
      if (v14 == 1)
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
      }

      else
      {
        v45 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v46 = v14 & 0x7FFFFFFE;
        v60 = v16 + 2;
        v61 = v14 & 0x7FFFFFFE;
        do
        {
          v62 = *(*(v41 + 8 * ((v60 - 1) >> v42)) + 4 * ((v60 - 1) & v43));
          v63 = v62 - v44;
          v44 = *(*(v41 + 8 * (v60 >> v42)) + 4 * (v60 & v43));
          v64 = v44 - v62;
          if (v63 > v45)
          {
            v45 = v63;
          }

          if (v64 > v57)
          {
            v57 = v64;
          }

          v58 += v63;
          v59 += v64;
          v60 += 2;
          v61 -= 2;
        }

        while (v61);
        if (v45 <= v57)
        {
          v45 = v57;
        }

        v47 = v59 + v58;
        if (v46 == v14)
        {
          goto LABEL_48;
        }
      }

      v65 = v14 - v46;
      v66 = v46 + v16 + 1;
      do
      {
        v67 = *(*(v41 + 8 * (v66 >> v42)) + 4 * (v66 & v43));
        v68 = v67 - v44;
        if (v68 > v45)
        {
          v45 = v68;
        }

        v47 += v68;
        ++v66;
        v44 = v67;
        --v65;
      }

      while (v65);
LABEL_48:
      v56 = 2 * v45;
      goto LABEL_49;
    }
  }

  v159 = v31;
  if (v14 < 1)
  {
    goto LABEL_66;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = *(v20 + 3);
  v39 = *v20;
  v40 = v20[1] - 1;
  while (1)
  {
    v48 = *(*(v38 + 8 * ((v37 + v16) >> v39)) + 4 * ((v37 + v16) & v40));
    v49 = *(*(v38 + 8 * ((v37 + v16 + 1) >> v39)) + 4 * ((v37 + v16 + 1) & v40)) - v48;
    v50 = v49 <= v15 ? 0xFFFF : *(*(*(v20 + 16) + 8 * ((v48 + v15) >> v20[8])) + 2 * ((v20[9] - 1) & (v48 + v15)));
    v51 = v37 + 1;
    if (v37 + 1 == v14)
    {
      break;
    }

    v52 = *(*(v38 + 8 * ((v51 + v16) >> v39)) + 4 * ((v51 + v16) & v40));
    if (*(*(v38 + 8 * ((v51 + v16 + 1) >> v39)) + 4 * ((v51 + v16 + 1) & v40)) - v52 <= v15)
    {
      if (v50 != 0xFFFF)
      {
LABEL_15:
        ++v36;
        v35 = v35 - v15 + v49;
        goto LABEL_16;
      }
    }

    else if (v50 != *(*(*(v20 + 16) + 8 * ((v52 + v15) >> v20[8])) + 2 * ((v20[9] - 1) & (v52 + v15))))
    {
      goto LABEL_15;
    }

    v51 = v37 + 2;
    if (v37 + 2 >= v14)
    {
      goto LABEL_16;
    }

    v53 = -2 - v37;
    v54 = v16 + v37;
    while (1)
    {
      v55 = *(*(v38 + 8 * ((v54 + 2) >> v39)) + 4 * ((v54 + 2) & v40));
      if (*(*(v38 + 8 * ((v54 + 3) >> v39)) + 4 * ((v54 + 3) & v40)) - v55 <= v15)
      {
        break;
      }

      if (v50 != *(*(*(v20 + 16) + 8 * ((v55 + v15) >> v20[8])) + 2 * ((v20[9] - 1) & (v55 + v15))))
      {
        goto LABEL_33;
      }

LABEL_31:
      --v53;
      ++v54;
      if (-v14 == v53)
      {
        goto LABEL_63;
      }
    }

    if (v50 == 0xFFFF)
    {
      goto LABEL_31;
    }

LABEL_33:
    v51 = -v53;
LABEL_16:
    v37 = v51;
    if (v51 >= v14)
    {
      goto LABEL_63;
    }
  }

  ++v36;
  v35 = v35 - v15 + v49;
LABEL_63:
  if (v36 < 1)
  {
LABEL_66:
    v156 = 0;
    v155 = 0;
    v164 = 0;
    goto LABEL_69;
  }

  if (v33)
  {
    sub_10002ECE0(a1, v31, v36, v35, v20[13], &v169 + 1, 0, 0, 0, 0);
    v164 = *(*(*(a1 + 40) + ((HIDWORD(v169) >> 5) & 0x7FFFFF8)) + 8 * BYTE4(v169));
    sub_100024470(v33, SHIDWORD(v169), v170 + 1);
    sub_1000248C0(v33, v162, SHIDWORD(v170[0]), 0);
    sub_1000248C0(v33, SHIDWORD(v170[0]), 0, 0);
  }

  else
  {
    v164 = 0;
  }

  v155 = sub_1000C7854(v31) + 1;
  v156 = 1;
LABEL_69:
  v95 = sub_1000C7854(v158) + 11;
  v154 = v95;
  v157 = sub_1000C9F54(v95, v96, v97, v98, v99, v100, v101, v102);
  sub_1000C78DC(v157, v158, v95);
  if (v14 < 1)
  {
    goto LABEL_111;
  }

  v109 = 0;
  v153 = v34 + 1;
  v161 = v15;
  while (2)
  {
    v110 = a2;
    while (2)
    {
      v111 = v109 + v16;
      v112 = *(v20 + 3);
      v113 = *v20;
      v114 = v20[1] - 1;
      v115 = v111 + 1;
      v116 = *(*(v112 + 8 * (v111 >> *v20)) + 4 * (v114 & v111)) + v15;
      v117 = *(*(v112 + 8 * (v115 >> *v20)) + 4 * (v114 & v115)) - v116;
      if (v14 - v109 < 2)
      {
LABEL_87:
        if (!v110)
        {
LABEL_73:
          if (++v109 >= v14)
          {
            v19 = a11;
            goto LABEL_111;
          }

          continue;
        }

        if (*(a1 + 132) == v167 && !sub_10002E1E4(a1, v103, v104, v105, v106, v110, v107, v108))
        {
          v127 = 0;
          v128 = 0;
          v129 = sub_1000C9F54(0, v103, v104, v105, v106, v110, v107, v108);
          if (v15 < 0)
          {
LABEL_91:
            v130 = v15 + *(*(*(v20 + 3) + 8 * (v111 >> *v20)) + 4 * ((v20[1] - 1) & v111));
            v131 = &v129[v161];
            v132 = v127 - v15;
            do
            {
              *v131++ = *(*(*(v20 + 16) + 8 * (v130 >> v20[8])) + 2 * ((v20[9] - 1) & v130));
              ++v130;
              --v132;
            }

            while (v132);
          }
        }

        else
        {
          v126 = *(*(*(a1 + 40) + 8 * v166) + 8 * v167);
          v127 = *(*(*(v126 + 24) + 8 * (v115 >> *v126)) + 4 * ((*(v126 + 4) - 1) & v115)) - *(*(*(v126 + 24) + 8 * (v111 >> *v126)) + 4 * ((*(v126 + 4) - 1) & v111));
          v128 = 2 * v127;
          v129 = sub_1000C9F54(v128, v103, v104, v105, v106, v110, v107, v108);
          if (v127 > v15)
          {
            goto LABEL_91;
          }
        }

        sub_10002F988(v164, v117, &v129[v15], 0, -1);
        sub_1000CA03C(v129, v128);
        v16 = v168;
        v110 = a2;
        goto LABEL_73;
      }

      break;
    }

    v118 = *(v20 + 16);
    v119 = v20[8];
    v120 = v20[9] - 1;
    v121 = 1;
    while (1)
    {
      v122 = v121 + v111;
      v123 = *(*(v112 + 8 * (v122 >> v113)) + 4 * (v122 & v114)) + v15;
      v104 = v123 & v120;
      v103 = *(*(v118 + 8 * (v123 >> v119)) + 2 * v104);
      if (*(*(v118 + 8 * (v116 >> v119)) + 2 * (v120 & v116)) != v103)
      {
        break;
      }

      v124 = v122 + 1;
      v103 = *(v112 + 8 * (v124 >> v113));
      v125 = *(v103 + 4 * (v124 & v114)) - v123;
      if (v117 < v125)
      {
        v125 = v117;
      }

      v117 = 1;
      if (v125 >= 2)
      {
        while (1)
        {
          v106 = *(v118 + 8 * ((v123 + v117) >> v119));
          v105 = (v123 + v117) & v120;
          v103 = *(*(v118 + 8 * ((v116 + v117) >> v119)) + 2 * ((v116 + v117) & v120));
          v104 = *(v106 + 2 * v105);
          if (v103 != v104)
          {
            break;
          }

          if (v125 == ++v117)
          {
            v117 = v125;
            break;
          }
        }
      }

      v121 = (v121 + 1);
      if (v121 == v14 - v109)
      {
        v121 = (v14 - v109);
        break;
      }
    }

    if (v121 == 1)
    {
      v16 = v168;
      goto LABEL_87;
    }

    v133 = sub_1000C7854(v158);
    sprintf(&v157[v133], "_%d", v156);
    v151 = sub_1000C7854(v157);
    if (*(a1 + 132) == v167 && !sub_10002E1E4(a1, v134, v135, v136, v137, v138, v139, v140))
    {
      v142 = 0;
    }

    else
    {
      v141 = *(*(*(a1 + 40) + 8 * v166) + 8 * v167);
      v142 = *(*(*(v141 + 24) + 8 * (v115 >> *v141)) + 4 * ((*(v141 + 4) - 1) & v115)) - *(*(*(v141 + 24) + 8 * (v111 >> *v141)) + 4 * ((*(v141 + 4) - 1) & v111));
    }

    v152 = v142;
    v150 = 2 * v142;
    v143 = sub_1000C9F54(v150, v134, v135, v136, v137, v138, v139, v140);
    if (v142 > v15)
    {
      v144 = v15 + *(*(*(v20 + 3) + 8 * (v111 >> *v20)) + 4 * ((v20[1] - 1) & v111));
      v145 = &v143[v161];
      v146 = v142 - v15;
      do
      {
        *v145++ = *(*(*(v20 + 16) + 8 * (v144 >> v20[8])) + 2 * ((v20[9] - 1) & v144));
        ++v144;
        --v146;
      }

      while (v146);
    }

    v19 = a11;
    if (a2)
    {
      v149 = v143;
      sub_10002ECE0(a1, v157, 1, v117, v20[13], &v169, 0, 0, 0, 0);
      v148 = v169;
      sub_10002F988(*(*(*(a1 + 40) + ((v169 >> 5) & 0x7FFFFF8)) + 8 * v169), v117, &v149[v15], 0, -1);
      sub_100024470(a2, v148, v170);
      sub_1000248C0(a2, v162, v170[0], 0);
      sub_1000CA03C(v149, v150);
      if (v117 == v152 - v15)
      {
        sub_1000248C0(a2, v170[0], 0, 0);
        goto LABEL_106;
      }
    }

    else
    {
      sub_1000CA03C(v143, v150);
      if (v117 == v152 - v15)
      {
LABEL_106:
        v111 = ++v109 + v168;
        v121 = (v121 - 1);
      }
    }

    v155 += v151 + 1;
    ++v156;
    LODWORD(v147) = v117 + a12;
    HIDWORD(v147) = v153;
    sub_100034048(a1, a2, v111, v167, LODWORD(v170[0]), (v117 + v15), v121, v157, a9, a10, a11, v147);
    v109 += v121;
    v16 = v168;
    if (v109 < v14)
    {
      continue;
    }

    break;
  }

LABEL_111:
  sub_1000CA03C(v157, v154);
  result = sub_1000CA03C(v159, v163);
  *a9 += v156;
  *a10 += v156;
  v94 = *v19 + v155;
LABEL_112:
  *v19 = v94;
  return result;
}

uint64_t sub_100034CB4(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = *(a1 + 24);
  v5 = a2 >> *a1;
  v6 = *(a1 + 4) - 1;
  v7 = v6 & a2;
  v8 = *(*(v4 + 8 * v5) + 4 * v7);
  v9 = a3 >> *a1;
  v10 = v6 & a3;
  v11 = *(*(v4 + 8 * v9) + 4 * (v6 & a3));
  v12 = *(*(v4 + 8 * ((a2 + 1) >> *a1)) + 4 * (v6 & (a2 + 1))) - v8;
  v13 = *(*(v4 + 8 * ((a3 + 1) >> *a1)) + 4 * (v6 & (a3 + 1))) - v11;
  if (v12 >= v13)
  {
    v14 = *(*(v4 + 8 * ((a3 + 1) >> *a1)) + 4 * (v6 & (a3 + 1))) - v11;
  }

  else
  {
    v14 = *(*(v4 + 8 * ((a2 + 1) >> *a1)) + 4 * (v6 & (a2 + 1))) - v8;
  }

  if (v14 >= 1)
  {
    do
    {
      v15 = *(*(*(a1 + 128) + 8 * (v8 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v8)) - *(*(*(a1 + 128) + 8 * (v11 >> *(a1 + 32))) + 2 * ((*(a1 + 36) - 1) & v11));
      if (v15)
      {
        return v15;
      }

      ++v11;
      ++v8;
    }

    while (--v14);
  }

  v15 = (v12 - v13);
  if (v12 != v13)
  {
    return v15;
  }

  if (*(a1 + 176))
  {
    v15 = (*(*(*(a1 + 160) + 8 * v5) + 4 * v7) - *(*(*(a1 + 160) + 8 * v9) + 4 * v10));
    if (v15)
    {
      return v15;
    }
  }

  if (a4)
  {
    v15 = *(a1 + 152);
    if (v15)
    {
      return *(*(*(a1 + 136) + 8 * v5) + v7) - *(*(*(a1 + 136) + 8 * v9) + v10);
    }

    return v15;
  }

  return 0;
}

uint64_t sub_100034DD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_1000CB75C(a1 + 24);
    if (sub_1000BCBAC(a2, v4) && sub_1000BCBAC(a2, *a1))
    {
      v5 = sub_1000CB75C(a1 + 24);
      if (sub_1000BCC04(a2, (a1 + 24), v5 + 1, 2))
      {
        if (sub_100034DD4(*(a1 + 8), a2) && sub_100034DD4(*(a1 + 16), a2))
        {
          return 1;
        }
      }
    }
  }

  else if (sub_1000BCBAC(a2, -1))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100034E98(void *a1, uint64_t a2)
{
  v14 = 0;
  result = sub_1000BBD54(a2, &v14);
  if (!result)
  {
    return result;
  }

  v12 = v14;
  if (v14 == -1)
  {
    v13 = 0;
LABEL_11:
    *a1 = v13;
    return 1;
  }

  if (v14 <= 7)
  {
    v12 = 7;
  }

  v13 = sub_1000BFBD8((2 * (v12 - 7) + 47) & 0x1FFFFFFF8, v5, v6, v7, v8, v9, v10, v11);
  result = sub_1000BBD54(a2, v13);
  if (result)
  {
    result = sub_1000BC1BC(a2, v14 + 1, v13 + 24);
    if (result)
    {
      result = sub_100034E98(v13 + 8, a2);
      if (result)
      {
        result = sub_100034E98(v13 + 16, a2);
        if (result)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100034F78(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000C02DC(*(result + 32));
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

int16x8_t *sub_100034FC4(int16x8_t *result, int16x8_t *a2, _WORD *a3)
{
  v4 = result->u32[0];
  v3 = result->u32[1];
  v5 = result->u32[2];
  v6 = result->u32[3];
  v7 = result[1].i64[1];
  if (v4 < 1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  if (v4 < 4)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  if (v4 >= 0x10)
  {
    v8 = v4 & 0x7FFFFFF0;
    v10 = a2 + 1;
    v11 = 0uLL;
    v12 = v8;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    do
    {
      v16 = v10[-1];
      v13 = vaddw_high_s16(v13, v16);
      v11 = vaddw_s16(v11, *v16.i8);
      v15 = vaddw_high_s16(v15, *v10);
      v14 = vaddw_s16(v14, *v10->i8);
      v10 += 2;
      v12 -= 16;
    }

    while (v12);
    v9 = vaddvq_s32(vaddq_s32(vaddq_s32(v14, v11), vaddq_s32(v15, v13)));
    if (v8 == v4)
    {
      goto LABEL_16;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_14:
      v22 = &a2->i16[v8];
      v23 = v4 - v8;
      do
      {
        v24 = *v22++;
        v9 += v24;
        --v23;
      }

      while (v23);
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v17 = v8;
  v8 = v4 & 0x7FFFFFFC;
  v18 = v9;
  v19 = (a2 + 2 * v17);
  v20 = v17 - v8;
  do
  {
    v21 = *v19++;
    v18 = vaddw_s16(v18, v21);
    v20 += 4;
  }

  while (v20);
  v9 = vaddvq_s32(v18);
  if (v8 != v4)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (result[1].i32[1])
  {
    v9 /= v4;
  }

  v25 = v9 << (v5 - v6);
  v26 = (v9 + (1 << (v6 - v5 - 1))) >> (v6 - v5);
  v27 = __OFSUB__(v6, v5);
  v28 = v6 - v5;
  if ((v28 < 0) ^ v27 | (v28 == 0))
  {
    v29 = v25;
  }

  else
  {
    v29 = v26;
  }

  if (v29 >= 0x7FFF)
  {
    LOWORD(v29) = 0x7FFF;
  }

  *a3 = v29;
  if (v3 >= 2)
  {
    v30 = result + 1;
    if (v4 > 0)
    {
      result = a2 + 1;
      v31 = 1;
      while (1)
      {
        v33 = *v7;
        if (v4 >= 4)
        {
          if (v4 < 0x10)
          {
            v35 = 0;
            v37 = 0;
LABEL_40:
            v36 = &v33->i16[v4 & 0x7FFFFFFC];
            v47 = v35;
            v48 = (v33 + 2 * v37);
            v49 = (a2 + 2 * v37);
            v50 = v37 - (v4 & 0x7FFFFFFC);
            do
            {
              v51 = *v49++;
              v52 = v51;
              v53 = *v48++;
              v47 = vmlal_s16(v47, v53, v52);
              v50 += 4;
            }

            while (v50);
            v35 = vaddvq_s32(v47);
            v34 = v4 & 0x7FFFFFFC;
            if (v34 == v4)
            {
              goto LABEL_26;
            }

            goto LABEL_45;
          }

          v38 = v33 + 1;
          v39 = 0uLL;
          v40 = v4 & 0x7FFFFFF0;
          v41 = a2 + 1;
          v42 = 0uLL;
          v43 = 0uLL;
          v44 = 0uLL;
          do
          {
            v45 = v41[-1];
            v46 = v38[-1];
            v42 = vmlal_high_s16(v42, v46, v45);
            v39 = vmlal_s16(v39, *v46.i8, *v45.i8);
            v44 = vmlal_high_s16(v44, *v38, *v41);
            v43 = vmlal_s16(v43, *v38->i8, *v41->i8);
            v38 += 2;
            v41 += 2;
            v40 -= 16;
          }

          while (v40);
          v35 = vaddvq_s32(vaddq_s32(vaddq_s32(v43, v39), vaddq_s32(v44, v42)));
          if ((v4 & 0x7FFFFFF0) == v4)
          {
            goto LABEL_26;
          }

          if ((v4 & 0xC) != 0)
          {
            v37 = v4 & 0x7FFFFFF0;
            goto LABEL_40;
          }

          v36 = &v33->i16[v4 & 0x7FFFFFF0];
          v34 = v4 & 0x7FFFFFF0;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = *v7;
        }

LABEL_45:
        v54 = &a2->i16[v34];
        v55 = v4 - v34;
        do
        {
          v57 = *v54++;
          v56 = v57;
          v58 = *v36++;
          v35 += v58 * v56;
          --v55;
        }

        while (v55);
LABEL_26:
        ++v7;
        v32 = ((1 << (v30->i32[0] + v28 - 1)) + v35) >> (v30->i32[0] + v28);
        if (v32 >= 0x7FFF)
        {
          v32 = 0x7FFF;
        }

        if (v32 <= -32768)
        {
          LOWORD(v32) = 0x8000;
        }

        a3[v31++] = v32;
        if (v31 == v3)
        {
          return result;
        }
      }
    }

    if (v3 < 5 || a3 + 1 < &result[1].i16[2] && v30 < &a3[v3])
    {
      v59 = 1;
      goto LABEL_52;
    }

    v63 = v3 - 1;
    if (v3 >= 0x11)
    {
      v64 = v63 & 0xFFFFFFFFFFFFFFF0;
      v65 = vdupq_n_s32(v30->i32[0] + v28);
      v66.i64[0] = -1;
      v66.i64[1] = -1;
      v67.i64[0] = 0x100000001;
      v67.i64[1] = 0x100000001;
      v68 = vshlq_s32(vshlq_u32(v67, vaddq_s32(v65, v66)), vnegq_s32(v65));
      v69 = vqmovn_high_s32(vqmovn_s32(v68), v68);
      v70 = (a3 + 9);
      v71 = v63 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v70[-1] = v69;
        *v70 = v69;
        v70 += 2;
        v71 -= 16;
      }

      while (v71);
      if (v63 == v64)
      {
        return result;
      }

      if ((v63 & 0xC) == 0)
      {
        v59 = v64 | 1;
LABEL_52:
        v60 = v3 - v59;
        v61 = &a3[v59];
        do
        {
          v62 = 1 << (v30->i32[0] + v28 - 1) >> (v30->i32[0] + v28);
          if (v62 >= 0x7FFF)
          {
            v62 = 0x7FFF;
          }

          if (v62 <= -32768)
          {
            LOWORD(v62) = 0x8000;
          }

          *v61++ = v62;
          --v60;
        }

        while (v60);
        return result;
      }
    }

    else
    {
      v64 = 0;
    }

    v59 = v63 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v72 = vdupq_n_s32(v30->i32[0] + v28);
    v73.i64[0] = -1;
    v73.i64[1] = -1;
    v74.i64[0] = 0x100000001;
    v74.i64[1] = 0x100000001;
    v75 = vqmovn_s32(vshlq_s32(vshlq_u32(v74, vaddq_s32(v72, v73)), vnegq_s32(v72)));
    v76 = &a3[v64 + 1];
    v77 = v64 - (v63 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v76++ = v75;
      v77 += 4;
    }

    while (v77);
    if (v63 == (v63 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    goto LABEL_52;
  }

  return result;
}

void *sub_1000353D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bdc0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(40);
  if (v10)
  {
    if (!sub_1000BBD54(v9, v10) || !sub_1000BBD54(v9, v10 + 4) || !sub_1000BBD54(v9, v10 + 1) || !sub_1000BBD54(v9, v10 + 12) || !sub_1000BBD54(v9, v10 + 2) || (v11 = sub_1000C0384(2, (*(v10 + 1) - 1), *v10), v10[3] = v11, v10[4] = v11, !sub_1000BC3DC(v9, v11, *(v10 + 1) - 1, *v10, 2)))
    {
      sub_1000C02DC(v10[4]);
      v10[3] = 0;
      v10[4] = 0;
      sub_1000BFEC4(v10);
      v10 = 0;
    }
  }

  sub_1000BBBC4(v9);
  return v10;
}

uint64_t sub_1000354D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!*(a1 + 244))
  {
    v9 = sub_100035778;
    if (!*(a1 + 245))
    {
      v22 = sub_100035778;
      v23 = a3;
LABEL_26:
      v24 = (*(a1 + 8) + 6 * (a5 + *(a1 + 240) * v23));
      if (!v24[1])
      {
        LOWORD(v19) = v24[2];
        return v19;
      }

      v25 = *(a1 + 246);
      if (*(a1 + 246))
      {
        for (i = 0; ; i = -v19)
        {
          v27 = i + *v24;
          if ((v22)(a1, v27, a2, a3, a4))
          {
            v19 = *(*(a1 + 112) + 2 * v27);
            if (v19 < 0)
            {
              continue;
            }
          }

          else
          {
            v19 = *(*(a1 + 96) + 2 * v27);
            if (v19 < 0)
            {
              continue;
            }
          }

          v28 = v24[2] + v19;
          v19 = v28;
          if ((v28 & 0x8000) == 0)
          {
            return v19;
          }
        }
      }

      while (1)
      {
        v29 = *v24 + v25;
        if ((v22)(a1, v29, a2, a3, a4))
        {
          break;
        }

        v19 = *(*(a1 + 64) + v29);
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_38:
        v25 = -v19;
        if ((v19 & 0x8000) == 0)
        {
          return v19;
        }
      }

      v19 = *(*(a1 + 80) + v29);
      if (v19 < 0)
      {
        goto LABEL_38;
      }

LABEL_43:
      LOWORD(v19) = v19 + v24[2];
      goto LABEL_38;
    }

LABEL_25:
    v22 = v9;
    v23 = *(*(a1 + 192) + 2 * a3);
    goto LABEL_26;
  }

  v9 = sub_100035800;
  if (*(a1 + 245))
  {
    goto LABEL_25;
  }

  v10 = (*(a1 + 8) + 6 * (a5 + *(a1 + 240) * a3));
  if (v10[1])
  {
    v11 = *v10;
    v12 = *(a1 + 144);
    v13 = *(a1 + 128);
    v14 = *(a1 + 52);
    v15 = *(a1 + 24);
    v16 = 0;
    if (!*(a1 + 246))
    {
      while (1)
      {
        v20 = v11 - v16;
        v21 = (byte_1000F1D9C[(v11 - v16) & 7] & *(v12 + ((v11 - v16) >> 3))) != 0 ? a2 : a4;
        if ((byte_1000F1D9C[v21 & 7] & *(v15 + v14 * *(v13 + v20) + (v21 >> 3))) != 0)
        {
          break;
        }

        v19 = *(*(a1 + 64) + v20);
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_15:
        v16 = v19;
        if ((v19 & 0x8000) == 0)
        {
          return v19;
        }
      }

      v19 = *(*(a1 + 80) + v20);
      if (v19 < 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      LOWORD(v19) = v19 + v10[2];
      goto LABEL_15;
    }

    while (1)
    {
      v17 = v11 - v16;
      v18 = (byte_1000F1D9C[(v11 - v16) & 7] & *(v12 + ((v11 - v16) >> 3))) != 0 ? a2 : a4;
      if ((byte_1000F1D9C[v18 & 7] & *(v15 + v14 * *(v13 + v17) + (v18 >> 3))) != 0)
      {
        break;
      }

      v19 = *(*(a1 + 96) + 2 * v17);
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_6:
      v16 = v19;
      if ((v19 & 0x8000) == 0)
      {
        return v19;
      }
    }

    v19 = *(*(a1 + 112) + 2 * v17);
    if (v19 < 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    LOWORD(v19) = v10[2] + v19;
    goto LABEL_6;
  }

  LOWORD(v19) = v10[2];
  return v19;
}

BOOL sub_100035778(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a1 + 24) + *(a1 + 52) * *(*(a1 + 128) + a2);
  if (a3 != 0xFFFF)
  {
    v6 = (a3 + *(a1 + 56) / 2);
    if ((byte_1000F1D9C[v6 & 7] & *(v5 + (v6 >> 3))) != 0)
    {
      return 1;
    }
  }

  return a5 != 0xFFFF && (byte_1000F1D9C[a5 & 7] & *(v5 + (a5 >> 3))) != 0;
}

BOOL sub_100035800(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a2 >> 3;
  if (*(a1 + 245) && (*(*(a1 + 152) + v5) & byte_1000F1D9C[a2 & 7]) != 0)
  {
    a5 = a4;
  }

  if ((byte_1000F1D9C[a2 & 7] & *(*(a1 + 144) + v5)) != 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  return v6 != 0xFFFF && (byte_1000F1D9C[v6 & 7] & *(*(a1 + 24) + *(a1 + 52) * *(*(a1 + 128) + a2) + (v6 >> 3))) != 0;
}

uint64_t sub_100035888(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 245))
  {
    a2 = *(*(a1 + 192) + 2 * a2);
  }

  return *(*(a1 + 8) + 6 * (a3 + *(a1 + 240) * a2) + 2);
}

uint64_t sub_1000358B4(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (*(a1 + 245))
  {
    a2 = *(*(a1 + 192) + 2 * a2);
  }

  v4 = (*(a1 + 8) + 6 * (a3 + *(a1 + 240) * a2));
  v5 = *v4 + a4;
  if (!*(a1 + 246))
  {
    v6 = *(*(a1 + 64) + v5);
    if (v6 < 0)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = *(*(a1 + 96) + 2 * v5);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_5:
    LOWORD(v6) = v4[2] + v6;
  }

  return v6;
}

uint64_t sub_100035914(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (*(a1 + 245))
  {
    a2 = *(*(a1 + 192) + 2 * a2);
  }

  v4 = (*(a1 + 8) + 6 * (a3 + *(a1 + 240) * a2));
  v5 = *v4 + a4;
  if (!*(a1 + 246))
  {
    v6 = *(*(a1 + 80) + v5);
    if (v6 < 0)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = *(*(a1 + 112) + 2 * v5);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_5:
    LOWORD(v6) = v4[2] + v6;
  }

  return v6;
}

uint64_t sub_100035974(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 16));
    v1[1] = 0;
    v1[2] = 0;
    sub_1000BFEC4(v1[9]);
    v1[8] = 0;
    v1[9] = 0;
    sub_1000BFEC4(v1[11]);
    v1[10] = 0;
    v1[11] = 0;
    sub_1000BFEC4(v1[13]);
    v1[12] = 0;
    v1[13] = 0;
    sub_1000BFEC4(v1[15]);
    v1[14] = 0;
    v1[15] = 0;
    sub_1000BFEC4(v1[17]);
    v1[16] = 0;
    v1[17] = 0;
    sub_1000BFEC4(v1[21]);
    v1[18] = 0;
    v1[21] = 0;
    sub_1000BFEC4(v1[22]);
    v1[19] = 0;
    v1[22] = 0;
    sub_1000BFEC4(v1[23]);
    v1[20] = 0;
    v1[23] = 0;
    sub_1000BFEC4(v1[25]);
    v1[24] = 0;
    v1[25] = 0;
    sub_1000BFEC4(v1[4]);
    v1[3] = 0;
    v1[4] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}