uint64_t sub_100056E68(uint64_t a1, const void *a2, _DWORD *a3)
{
  v3 = *(a1 + 24);
  if (*(a1 + 20) <= v3)
  {
    return 0;
  }

  memcpy(*(*a1 + 8 * v3), a2, *(a1 + 16));
  *(*(a1 + 8) + 4 * (*(a1 + 24))++) = *a3;
  return 1;
}

uint64_t (**sub_100056EF4(uint64_t (**result)(void)))(void)
{
  if (result)
  {
    return (*result)();
  }

  return result;
}

uint64_t sub_100056F0C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 96))();
  (*(a1 + 8))(a1, a2);
  v5 = *(a1 + 104);

  return v5(a1, v4);
}

uint64_t sub_100057018(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_1000BD6C8(*(a1 + 280), 4, 0xFFFFFFFF);
  v5 = sub_1000BD6C8(*(a1 + 292), 4, v4);
  v6 = sub_1000BD6C8(*(a1 + 296), 4, v5);
  v7 = sub_1000BD6C8(*(a1 + 300), 4, v6);
  v8 = sub_1000BD6C8(*(a1 + 304), 4, v7);
  v9 = sub_1000BD6C8(*(a1 + 312), 4, v8);
  v10 = sub_1000BD6C8(*(a1 + 316), 4, v9);
  if (a2)
  {
    v10 = sub_1000BD6C8(*(a1 + 320), 4, v10);
  }

  v11 = sub_1000BD6C8(*(a1 + 324), 4, v10);
  v12 = sub_1000BD6C8(*(a1 + 328), 4, v11);
  v13 = sub_1000BD6C8(*(a1 + 332), 4, v12);
  v14 = sub_1000BD6C8(*(a1 + 340), 4, v13);
  v15 = sub_1000BD6C8(*(a1 + 344), 4, v14);
  v16 = sub_1000BD6C8(*(a1 + 348), 4, v15);
  v17 = sub_1000BD6C8(*(a1 + 352), 4, v16);
  v18 = sub_1000BD6C8(*(a1 + 356), 4, v17);
  result = sub_1000BD6C8(*(a1 + 360), 4, v18);
  v20 = *(a1 + 264);
  if (v20)
  {
    v21 = result;
    v22 = v20(a1, a2);

    return sub_1000BD6C8(v22, 4, v21);
  }

  return result;
}

void *sub_1000571B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1000BBAE0(a1, "bfty", a2, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = result;
    v20 = 0;
    if (!sub_1000BBD04(result, &v20) || v20 == 0)
    {
      sub_1000BBBC4(v11);
    }

    else
    {
      v19 = sub_100057300(a1, a2, v12, v13, v14, v15, v16, v17);
      sub_1000BBBC4(v11);
      result = v19;
      if (v19)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10005725C(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 376));
  sub_1000BFEC4(*(a1 + 384));
  sub_1000C02DC(*(a1 + 368));
  sub_1000BFEC4(*(a1 + 392));
  sub_1000A02A0(*(a1 + 408));
  sub_10001DD84(*(a1 + 416));
  sub_10001EFF0(*(a1 + 424));
  sub_10005D440(*(a1 + 448));
  sub_10005D440(*(a1 + 456));
  if (*(a1 + 340))
  {
    sub_10001FD08(*(a1 + 432));
  }

  if (*(a1 + 344))
  {
    sub_100003974(*(a1 + 440));
    sub_1000C02DC(*(a1 + 400));
  }

  return sub_1000BFEC4(a1);
}

uint64_t sub_100057300(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000BBAE0(a1, "bfx1", a2, a4, a5, a6, a7, a8);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_1000C0034(520);
  v13 = v12;
  if (v12)
  {
    *v12 = sub_10005725C;
    v12[1] = sub_100057834;
    v12[2] = sub_10005790C;
    v12[3] = sub_100057918;
    v12[4] = sub_100057A58;
    v12[5] = sub_100057B38;
    v12[6] = sub_100057CCC;
    v12[7] = sub_100057DA4;
    v12[8] = sub_10005820C;
    v12[9] = sub_1000582E4;
    v12[10] = sub_10005844C;
    v12[11] = sub_1000584D4;
    v12[12] = sub_1000584DC;
    v12[13] = sub_1000584E4;
    v12[14] = sub_1000584EC;
    v12[16] = sub_10005858C;
    v12[17] = sub_100058980;
    v12[18] = sub_100058AF8;
    v12[19] = sub_100058B18;
    v12[20] = sub_100058B9C;
    v12[21] = sub_100058BA4;
    v12[22] = sub_100058BAC;
    v12[23] = sub_100058BB4;
    v12[24] = sub_100058BBC;
    v12[25] = sub_100058BC4;
    v12[26] = sub_100058CB8;
    v12[28] = sub_100058CC0;
    v12[29] = sub_100058CC8;
    v12[30] = sub_100058E0C;
    v12[31] = sub_100058F40;
    v12[32] = sub_100058FCC;
    v12[33] = 0;
    if (!sub_1000BBD54(v11, v12 + 35) || !sub_1000BBD54(v11, (v13 + 284)) || !sub_1000BBD54(v11, (v13 + 288)) || !sub_1000BBD54(v11, (v13 + 292)) || !sub_1000BBD54(v11, (v13 + 296)) || !sub_1000BBD54(v11, (v13 + 300)) || !sub_1000BBD54(v11, (v13 + 304)) || !sub_1000BBD54(v11, (v13 + 308)) || !sub_1000BBD54(v11, (v13 + 312)) || !sub_1000BBD54(v11, (v13 + 316)) || !sub_1000BBD54(v11, (v13 + 320)) || !sub_1000BBD54(v11, (v13 + 324)) || !sub_1000BBD54(v11, (v13 + 328)) || !sub_1000BBD54(v11, (v13 + 332)) || !sub_1000BBD04(v11, (v13 + 340)) || (v14 = (v13 + 344), !sub_1000BBD04(v11, (v13 + 344))) || !sub_1000BBD04(v11, (v13 + 348)) || !sub_1000BBD04(v11, (v13 + 352)) || !sub_1000BBD04(v11, (v13 + 356)))
    {
      sub_1000BBBC4(v11);
      *(v13 + 484) = 3;
      *(v13 + 492) = 0;
LABEL_30:
      sub_10005725C(v13);
      return 0;
    }

    v15 = sub_1000BBD04(v11, (v13 + 360));
    sub_1000BBBC4(v11);
    *(v13 + 484) = 3;
    *(v13 + 492) = 0;
    if (!v15)
    {
      goto LABEL_30;
    }

    v22 = sub_1000A0354(a1, a2, v16, v17, v18, v19, v20, v21);
    *(v13 + 408) = v22;
    if (!v22)
    {
      goto LABEL_30;
    }

    v29 = sub_10001E890(a1, a2, v23, v24, v25, v26, v27, v28);
    *(v13 + 416) = v29;
    if (!v29)
    {
      goto LABEL_30;
    }

    v36 = sub_10001FA68(a1, a2, v30, v31, v32, v33, v34, v35);
    *(v13 + 424) = v36;
    if (!v36)
    {
      goto LABEL_30;
    }

    if (*(v13 + 340))
    {
      v43 = sub_100020228(a1, a2, v37, v38, v39, v40, v41, v42);
      *(v13 + 432) = v43;
      if (!v43)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *(v13 + 432) = 0;
    }

    if (*v14)
    {
      v45 = sub_10001EF28(a1, a2, v37, v38, v39, v40, v41, v42);
      *(v13 + 440) = v45;
      if (!v45)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *(v13 + 440) = 0;
    }

    v46 = sub_10005D6F8(a1, a2, (v13 + 456), v38, v39, v40, v41, v42);
    *(v13 + 448) = v46;
    if (!v46)
    {
      goto LABEL_30;
    }

    v47 = sub_100057000(v13);
    v48 = sub_1000C0034(v47);
    *(v13 + 392) = v48;
    if (!v48)
    {
      goto LABEL_30;
    }

    v49 = *(v13 + 320);
    if (*(v13 + 352))
    {
      v50 = v49 + 100;
    }

    else
    {
      v50 = *(v13 + 356) ? v49 + 1000 : v49;
    }

    v51 = sub_1000C0384(2, v50, *(v13 + 304));
    *(v13 + 368) = v51;
    if (!v51)
    {
      goto LABEL_30;
    }

    v52 = sub_1000C0034(v50);
    *(v13 + 384) = v52;
    if (!v52)
    {
      goto LABEL_30;
    }

    v53 = sub_1000C0034(2 * *(v13 + 304));
    *(v13 + 376) = v53;
    if (!v53)
    {
      goto LABEL_30;
    }

    if (!*v14)
    {
      *(v13 + 400) = 0;
      return v13;
    }

    v54 = sub_10001EF1C(*(v13 + 440));
    v55 = sub_1000C0384(2, v50, (v54 + 1));
    *(v13 + 400) = v55;
    if (!v55)
    {
      goto LABEL_30;
    }
  }

  return v13;
}

void sub_100057834(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(a1 + 476) = 0;
    *(a1 + 508) = 0;
    *(a1 + 464) = 0;
    *(a1 + 468) = *(a1 + 320) - *(a1 + 324);
    *(a1 + 500) = 0;
    sub_10001F068(*(a1 + 424));
  }

  if (*(a1 + 340))
  {
    sub_10001FD6C(*(a1 + 432), a2);
  }

  if (a2)
  {
    sub_1000A08D0(*(a1 + 408), 0);
    goto LABEL_9;
  }

  sub_1000A0538(*(a1 + 408));
  sub_1000A08D0(*(a1 + 408), 0);
  if (!*(a1 + 344))
  {
LABEL_9:
    if (a2)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_10001EA1C(*(a1 + 440));
LABEL_10:
  v4 = *(a1 + 384);
  v5 = *(a1 + 320);

  bzero(v4, v5);
}

uint64_t sub_100057918(uint64_t a1, int a2)
{
  *(a1 + 352) = 0;
  result = sub_10001F11C(*(a1 + 424));
  v5 = *(a1 + 464);
  v6 = v5 - *(a1 + 468);
  if (v6 < 0)
  {
    v6 += *(a1 + 320);
  }

  v7 = 2 * *(a1 + 324);
  if (v6 > (v7 | 1))
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 - v8;
  if (v9 >= a2 / *(a1 + 284))
  {
    v9 = a2 / *(a1 + 284);
  }

  v10 = v5 + ~v9;
  if (v10 < 0)
  {
    v10 += *(a1 + 320);
    *(a1 + 468) = v10;
    if (v10 == v5)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 468) = v10;
    if (v10 == v5)
    {
      return result;
    }
  }

  v11 = v9 > *(a1 + 332);
  do
  {
    v13 = v10;
    if ((*(*(a1 + 384) + v10) & 4) != 0)
    {
      v14 = *(a1 + 332) + v10;
      v15 = *(a1 + 320);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = v14 - v15;
      result = sub_10001FE50(*(a1 + 432), *(*(a1 + 368) + 8 * v13), *(a1 + 424));
      v5 = *(a1 + 464);
      if (v16 == v5 || !v11)
      {
        v11 = 0;
      }

      else
      {
        *(*(a1 + 384) + v13) |= 0x10u;
        v5 = *(a1 + 464);
        v11 = 1;
      }
    }

    v12 = *(a1 + 320);
    if (v13 + 1 < v12)
    {
      v12 = 0;
    }

    v10 = v13 + 1 - v12;
  }

  while (v10 != v5);
  return result;
}

void sub_100057A58(uint64_t a1, int a2)
{
  *(a1 + 484) = 3;
  *(a1 + 492) = 0;
  *(a1 + 496) = 0;
  v4 = qword_1001065A8;
  if (*(a1 + 340))
  {
    if (qword_1001065A8)
    {
      v5 = *(qword_1001065A8 + 2744);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 332) = v5;
    *(a1 + 336) = 0;
  }

  if (v4)
  {
    *(a1 + 352) = *(v4 + 2908);
    LODWORD(v4) = *(v4 + 2452);
  }

  else
  {
    *(a1 + 352) = 0;
  }

  *(a1 + 356) = v4;
  *(a1 + 488) = a2 != 0;
  sub_1000A0540(*(a1 + 408));
  sub_10001F138(*(a1 + 424), a2);
  bzero(*(a1 + 384), *(a1 + 320));
  v6 = *(a1 + 320) - *(a1 + 324);
  *(a1 + 468) = v6;
  if (*(a1 + 352) || *(a1 + 356))
  {
    *(a1 + 472) = v6;
  }

  *(a1 + 464) = 0;
  *(a1 + 476) = 0;
  *(a1 + 508) = 0;
}

uint64_t sub_100057B38(uint64_t a1)
{
  result = nullsub_1(*(a1 + 408));
  v3 = *(a1 + 492);
  if (*(a1 + 340))
  {
    if (v3)
    {
LABEL_3:
      v4 = 2;
LABEL_18:
      *(a1 + 484) = v4;
    }
  }

  else
  {
    if (v3 && !*(a1 + 348) && !*(a1 + 496))
    {
      goto LABEL_3;
    }

    if (*(a1 + 488))
    {
      if (*(a1 + 348))
      {
        v5 = *(a1 + 464);
        v6 = v5 - *(a1 + 324);
        if (v6 < 0)
        {
          v6 += *(a1 + 320);
        }

        if (v6 != v5)
        {
          v10 = *(a1 + 384);
          v11 = (v10 + v6);
          do
          {
            if ((*v11 & 4) == 0)
            {
              v12 = sub_10001DDDC(*(a1 + 416), *(a1 + 368), v5, *(a1 + 320), *(a1 + 476), 1);
              v10 = *(a1 + 384);
              if (v12)
              {
                sub_10001F1B8(*(a1 + 424), *(*(a1 + 368) + 8 * v6), *(v10 + v6));
                *v11++ |= 4u;
                v13 = *(a1 + 320);
                if (v5 + 1 < v13)
                {
                  ++v5;
                }

                else
                {
                  v5 = 0;
                }

                if (v6 + 1 < v13)
                {
                  ++v6;
                }

                else
                {
                  v6 = 0;
                }

                v10 = *(a1 + 384);
                if (v11 >= v10 + v13)
                {
                  v11 = *(a1 + 384);
                }
              }
            }
          }

          while (v11 != (v10 + *(a1 + 464)));
        }
      }

      result = sub_10001F268(*(a1 + 424));
      if (result)
      {
        v7 = *(a1 + 468);
        v8 = (*(a1 + 384) + v7);
        if (v7 != *(a1 + 464))
        {
          do
          {
            *v8++ |= 8u;
            v9 = *(a1 + 384);
            if (v8 >= v9 + *(a1 + 320))
            {
              v8 = *(a1 + 384);
            }
          }

          while (v8 != (v9 + *(a1 + 464)));
        }

        *v8 |= 8u;
        v4 = 6;
        goto LABEL_18;
      }
    }
  }

  *(a1 + 492) = 1;
  return result;
}

uint64_t sub_100057CCC(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 352) || *(a1 + 356))
  {
    v3 = *(a1 + 468);
    v4 = *(a1 + 464);
    v5 = v3 - v4;
    if (v3 - v4 >= 0)
    {
      if (v5 > 1)
      {
        goto LABEL_11;
      }

LABEL_7:
      if (v3 + 1 < *(a1 + 320))
      {
        v6 = v3 + 1;
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 468) = v6;
      goto LABEL_11;
    }

    if (*(a1 + 320) + v5 <= 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = *(a1 + 464);
    if (v4 == *(a1 + 468))
    {
      *(a1 + 500) = 1;
      return 4;
    }

    if (*(a1 + 500) == 1)
    {
      return 4;
    }
  }

LABEL_11:
  v8 = sub_1000A05A4(*(a1 + 408), a2, *(*(a1 + 368) + 8 * v4), (*(a1 + 384) + v4));

  return sub_100059074(a1, v8);
}

uint64_t sub_100057DA4(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*(a1 + 352) || *(a1 + 356))
  {
    v7 = *(a1 + 468);
    v8 = *(a1 + 464);
    v9 = v7 - v8;
    if (v7 - v8 < 0)
    {
      if (*(a1 + 320) + v9 > 1)
      {
        goto LABEL_11;
      }
    }

    else if (v9 > 1)
    {
      goto LABEL_11;
    }

    if (v7 + 1 < *(a1 + 320))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 468) = v10;
  }

  else
  {
    v8 = *(a1 + 464);
    if (v8 == *(a1 + 468))
    {
      *(a1 + 500) = 1;
      return 4;
    }

    if (*(a1 + 500) == 1)
    {
      return 4;
    }
  }

LABEL_11:
  if (a3 >= 1)
  {
    v11 = 0;
    v12 = (1 << *(a1 + 308));
    do
    {
      v13 = vcvtmd_s64_f64((*(a2 + 4 * v11) * v12) + 0.5);
      if (v13 >= 0x7FFF)
      {
        v13 = 0x7FFF;
      }

      if (v13 <= -32768)
      {
        LOWORD(v13) = 0x8000;
      }

      *(*(*(a1 + 368) + 8 * v8) + 2 * v11++) = v13;
    }

    while (a3 != v11);
  }

  if (a4)
  {
    if (a5)
    {
      *(*(a1 + 384) + v8) = 3;
    }

    if (*(a1 + 352))
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(*(a1 + 384) + v8) = sub_1000A08B8(*(a1 + 408), **(*(a1 + 368) + 8 * v8));
    if (*(a1 + 352))
    {
LABEL_22:
      sub_10001FE18(*(a1 + 432), **(*(a1 + 368) + 8 * v8));
      goto LABEL_29;
    }
  }

  if (*(a1 + 340) && (!qword_1001065A8 || !*(qword_1001065A8 + 2440) || *(qword_1001065A8 + 2376) > *(a1 + 480)))
  {
    sub_10001FE50(*(a1 + 432), *(*(a1 + 368) + 8 * v8), *(a1 + 424));
  }

LABEL_29:
  v14 = *(a1 + 384);
  if (*(v14 + v8))
  {
    ++*(a1 + 480);
    v15 = v8 - *(a1 + 324);
    if (v15 >= 0)
    {
LABEL_31:
      if (*(a1 + 304) == a3)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v15 = v8 - *(a1 + 324);
    if (v15 >= 0)
    {
      goto LABEL_31;
    }
  }

  v15 += *(a1 + 320);
  if (*(a1 + 304) == a3)
  {
LABEL_32:
    *(a1 + 496) = 1;
    if (*(a1 + 476) == 1)
    {
      *(a1 + 468) = 0;
    }

    if ((*(v14 + v8) & 2) != 0)
    {
      v16 = 5;
    }

    else
    {
      v16 = 6;
    }

    *(v14 + v8) |= 4u;
    if (*(a1 + 488))
    {
      sub_10001F1B8(*(a1 + 424), *(*(a1 + 368) + 8 * v8), *(*(a1 + 384) + v8));
    }

    if (!*(a1 + 340))
    {
      goto LABEL_67;
    }

    if (*(a1 + 352))
    {
      goto LABEL_67;
    }

    v17 = *(a1 + 332);
    if (*(a1 + 476) < v17)
    {
      goto LABEL_67;
    }

LABEL_56:
    v21 = v15 - v17;
    if (v21 < 0)
    {
      v21 += *(a1 + 320);
    }

    *(*(a1 + 384) + v21) |= 0x10u;
    if (*(a1 + 336))
    {
      v22 = *(a1 + 332);
      if (v22 >= 2)
      {
        *(a1 + 332) = v22 - 1;
        v23 = *(a1 + 320);
        if (v21 < v23)
        {
          v23 = 0;
        }

        *(*(a1 + 384) + v21 - v23 + 1) |= 0x10u;
      }
    }

    goto LABEL_67;
  }

LABEL_45:
  if (!sub_10001DDDC(*(a1 + 416), *(a1 + 368), v8, *(a1 + 320), *(a1 + 476), *(a1 + 492)))
  {
    v24 = *(a1 + 468);
    if (v24 + 1 < *(a1 + 320))
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 0;
    }

    *(a1 + 468) = v25;
    v16 = 3;
    goto LABEL_67;
  }

  v18 = *(a1 + 384);
  if ((*(v18 + v8) & 2) != 0)
  {
    v16 = 5;
  }

  else
  {
    v16 = 6;
  }

  *(v18 + v15) |= 4u;
  if (*(a1 + 488))
  {
    sub_10001F1B8(*(a1 + 424), *(*(a1 + 368) + 8 * v15), *(*(a1 + 384) + v15));
  }

  if (*(a1 + 340))
  {
    if (!*(a1 + 352))
    {
      v19 = *(a1 + 476);
      v20 = *(a1 + 324);
      v17 = *(a1 + 332);
      if (v19 >= v17 + 2 * v20 || *(a1 + 348) && v19 >= v17 + v20)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_67:
  v26 = *(a1 + 320);
  if (v8 + 1 < v26)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = 0;
  }

  *(a1 + 464) = v27;
  ++*(a1 + 476);
  ++*(a1 + 508);
  v28 = (v27 + v26 - *(a1 + 468)) % v26 - *(a1 + 324);
  if (*(a1 + 492))
  {
    if (v28 < 0)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v28 -= *(a1 + 332);
    if (v28 < 0)
    {
LABEL_75:
      v28 = 0;
      goto LABEL_76;
    }
  }

  if (sub_10001F3C4(*(a1 + 424)))
  {
    goto LABEL_75;
  }

LABEL_76:
  if (v28 > *(a1 + 516))
  {
    *(a1 + 516) = v28;
    if (*(a1 + 488))
    {
      return v16;
    }
  }

  else if (*(a1 + 488))
  {
    return v16;
  }

  *(a1 + 484) = v16;
  return v16;
}

uint64_t sub_10005820C(uint64_t a1, const void *a2, int a3)
{
  if (*(a1 + 352) || *(a1 + 356))
  {
    v4 = *(a1 + 468);
    v5 = *(a1 + 464);
    v6 = v4 - v5;
    if (v4 - v5 >= 0)
    {
      if (v6 > 1)
      {
        goto LABEL_11;
      }

LABEL_7:
      if (v4 + 1 < *(a1 + 320))
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = 0;
      }

      *(a1 + 468) = v7;
      goto LABEL_11;
    }

    if (*(a1 + 320) + v6 <= 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(a1 + 464);
    if (v5 == *(a1 + 468))
    {
      *(a1 + 500) = 1;
      return 4;
    }

    if (*(a1 + 500) == 1)
    {
      return 4;
    }
  }

LABEL_11:
  v9 = sub_1000A0820(*(a1 + 408), a2, a3, *(*(a1 + 368) + 8 * v5), (*(a1 + 384) + v5));

  return sub_100059074(a1, v9);
}

uint64_t sub_1000582E4(uint64_t a1, void *__dst)
{
  v2 = *(a1 + 484);
  if (v2 == 2)
  {
    return 2;
  }

  if (*(a1 + 492))
  {
    result = 2;
    *(a1 + 484) = 2;
  }

  else
  {
    v5 = *(a1 + 512);
    if (*(a1 + 508) == v5)
    {
      return 4;
    }

    else
    {
      v6 = v5 % *(a1 + 320);
      memcpy(__dst, *(*(a1 + 368) + 8 * v6), 2 * *(a1 + 300));
      v8 = a1;
      if ((*(*(a1 + 384) + v6) & 2) != 0)
      {
        result = 5;
      }

      else
      {
        result = 6;
      }

      ++*(a1 + 512);
      v9 = *(a1 + 468);
      if (v2 == 3)
      {
        v10 = *(a1 + 320);
      }

      else
      {
        v10 = *(a1 + 320);
        if (v9 + 1 < v10)
        {
          ++v9;
        }

        else
        {
          v9 = 0;
        }

        *(a1 + 468) = v9;
      }

      v11 = (*(a1 + 464) - v9 + v10) % v10 - *(a1 + 324);
      if (!*(a1 + 492))
      {
        v11 -= *(a1 + 332);
      }

      if (v11 < 0 || (v12 = result, v13 = sub_10001F3C4(*(a1 + 424)), result = v12, v8 = a1, v13))
      {
        v11 = 0;
      }

      if (v11 > *(v8 + 516))
      {
        *(v8 + 516) = v11;
      }
    }
  }

  return result;
}

uint64_t sub_10005844C(uint64_t a1)
{
  result = sub_10001F268(*(a1 + 424));
  if (result)
  {
    v3 = *(a1 + 468);
    v4 = (*(a1 + 384) + v3);
    if (v3 != *(a1 + 464))
    {
      do
      {
        *v4++ |= 8u;
        v5 = *(a1 + 384);
        if (v4 >= v5 + *(a1 + 320))
        {
          v4 = *(a1 + 384);
        }
      }

      while (v4 != (v5 + *(a1 + 464)));
    }

    *v4 |= 8u;
    *(a1 + 484) = 6;
  }

  return result;
}

uint64_t sub_1000584EC(uint64_t a1)
{
  v1 = 472;
  if (!*(a1 + 356))
  {
    v1 = 468;
  }

  v2 = *(a1 + v1);
  v3 = *(a1 + 464);
  v4 = v3 - v2;
  if (v3 - v2 < 0)
  {
    v5 = *(a1 + 324);
    if (*(a1 + 320) + v4 <= v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a1 + 324);
    if (v4 <= v5)
    {
      return 0;
    }
  }

  v6 = v3 - v5;
  v7 = *(a1 + 320);
  v8 = v6 + (v7 & (v6 >> 31));
  if (v2 + 1 < v7)
  {
    v9 = v2 + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == v8)
  {
    return 0;
  }

  v11 = *(a1 + 384);
  result = 0;
  do
  {
    if ((*(v11 + v9) & 2) != 0)
    {
      break;
    }

    result = (result + 1);
    if (v9 + 1 < v7)
    {
      ++v9;
    }

    else
    {
      v9 = 0;
    }
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_10005858C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 484);
  if ((v3 & 0xFFFFFFFE) == 2)
  {
    return v3;
  }

  if (*(a1 + 492))
  {
    v3 = 2;
    *(a1 + 484) = 2;
    if (*(a1 + 352))
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 472;
    if (!*(a1 + 356))
    {
      v7 = 468;
    }

    v5 = *(a1 + v7);
    a3[1] = v5;
    v6 = *(a1 + 492);
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v3 = 4;
  if (!*(a1 + 352))
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = *(a1 + 472);
  a3[1] = v5;
  v6 = *(a1 + 492);
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*(a1 + 348) || *(a1 + 496))
  {
    v8 = *(a1 + 464);
    if (v5 == v8)
    {
      *(*(a1 + 384) + v5) = 0;
LABEL_23:
      v3 = 2;
      goto LABEL_24;
    }

    v9 = v8 + ~v5;
    *(a1 + 476) = v9;
    if (v9 < 0)
    {
      v9 += *(a1 + 320);
      *(a1 + 476) = v9;
      if ((*(*(a1 + 384) + v5) & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else if ((*(*(a1 + 384) + v5) & 4) != 0)
    {
      goto LABEL_23;
    }

    v10 = a2;
    v11 = a3;
    v12 = *(a1 + 324) + v5;
    v13 = *(a1 + 320);
    if (v12 >= v13)
    {
      v14 = *(a1 + 320);
    }

    else
    {
      v14 = 0;
    }

    if (sub_10001DDDC(*(a1 + 416), *(a1 + 368), v12 - v14, v13, v9, v6))
    {
      *(*(a1 + 384) + v5) |= 4u;
    }

    v3 = 2;
    a3 = v11;
    a2 = v10;
  }

LABEL_24:
  if (*(a1 + 340) && !*(a1 + 492) && !*(a1 + 352))
  {
    v15 = *(a1 + 384);
    if ((*(v15 + v5) & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  v15 = *(a1 + 384);
  if ((*(v15 + v5) & 4) == 0)
  {
    goto LABEL_52;
  }

  v16 = *(a1 + 464) - v5;
  if (v16 < 0)
  {
    if (*(a1 + 320) + v16 > 1)
    {
      goto LABEL_35;
    }

LABEL_32:
    if (!*(a1 + 492))
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  if (v16 <= 1)
  {
    goto LABEL_32;
  }

LABEL_35:
  v17 = a2;
  v18 = a3;
  v20 = *(a1 + 368);
  v19 = *(a1 + 376);
  *(a1 + 504) = **(v20 + 8 * v5);
  if (sub_10001F3CC(*(a1 + 424), *(v20 + 8 * v5), (v15 + v5), v19))
  {
    if (*(a1 + 344))
    {
      if ((sub_10001EF1C(*(a1 + 440)) & 0x80000000) == 0)
      {
        v21 = 0;
        do
        {
          *(*(*(a1 + 400) + 8 * v5) + 2 * v21) = *(*(a1 + 376) + 2 * v21);
        }

        while (v21++ < sub_10001EF1C(*(a1 + 440)));
      }

      v23 = *(a1 + 440);
      v24 = sub_10005D6F0(*(a1 + 448));
      sub_10001ED1C(a1, v23, v24, *(a1 + 376), v25, v26, v27, v28);
    }

    v29 = 456;
    if (!*(a1 + 352))
    {
      v29 = 448;
    }

    sub_10005D4A4(*(a1 + v29), *(a1 + 376), v17);
    v56 = 0;
    v37 = sub_1000C9F54(2 * *(a1 + 304), v30, v31, v32, v33, v34, v35, v36);
    v45 = sub_1000C9F54(2 * *(a1 + 304), v38, v39, v40, v41, v42, v43, v44);
    sub_10001F8FC(*(a1 + 424), v45);
    sub_10005D678(*(a1 + 448), v37, &v56);
    v46 = *v37;
    if (v46 < 1)
    {
      LOWORD(v47) = 0;
    }

    else
    {
      v47 = (*v45 << (v56 - *(a1 + 308))) / v46;
    }

    sub_1000CA03C(v45, 2 * *(a1 + 304));
    sub_1000CA03C(v37, 2 * *(a1 + 304));
    *v18 = v47;
    *(a1 + 484) = 4;
    v48 = *(a1 + 384);
    if ((*(v48 + v5) & 2) != 0)
    {
      v3 = 5;
    }

    else
    {
      v3 = 6;
    }

    if (!*(a1 + 352) && !*(a1 + 356))
    {
      *(v48 + v5) = 0;
    }
  }

LABEL_52:
  if ((v3 - 5) >= 2)
  {
    v50 = *(a1 + 320);
  }

  else
  {
    ++*(a1 + 512);
    if (*(a1 + 352) || *(a1 + 356))
    {
      v49 = *(a1 + 472);
      v50 = *(a1 + 320);
      if (v49 + 1 < v50)
      {
        v51 = v49 + 1;
      }

      else
      {
        v51 = 0;
      }

      *(a1 + 472) = v51;
    }

    else
    {
      v54 = *(a1 + 468);
      v50 = *(a1 + 320);
      if (v54 + 1 < v50)
      {
        v55 = v54 + 1;
      }

      else
      {
        v55 = 0;
      }

      *(a1 + 468) = v55;
    }
  }

  v52 = (*(a1 + 464) - *(a1 + 468) + v50) % v50 - *(a1 + 324);
  if (*(a1 + 492))
  {
    if (v52 < 0)
    {
      goto LABEL_65;
    }

LABEL_64:
    if (!sub_10001F3C4(*(a1 + 424)))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v52 -= *(a1 + 332);
  if ((v52 & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_65:
  v52 = 0;
LABEL_66:
  if (v52 > *(a1 + 516))
  {
    *(a1 + 516) = v52;
  }

  return v3;
}

void *sub_100058980(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 86))
  {
    v8 = a3;
    v10 = result;
    v32 = 0;
    v11 = sub_1000C9F54(*(result + 76), a2, a3, a4, a5, a6, a7, a8);
    v19 = sub_1000C9F54(2 * *(v10 + 304), v12, v13, v14, v15, v16, v17, v18);
    v27 = sub_1000C9F54(2 * *(v10 + 304), v20, v21, v22, v23, v24, v25, v26);
    if ((sub_10001EF1C(*(v10 + 440)) & 0x80000000) != 0)
    {
      LODWORD(v28) = 0;
      if (*(v10 + 304) <= 0)
      {
LABEL_10:
        sub_10005D4A4(*(v10 + 448), v27, v11);
        sub_10005D678(*(v10 + 448), v19, &v32);
        v31 = sub_10005D6F0(*(v10 + 448));
        sub_10001EA28(v10, *(v10 + 440), v27, **(*(v10 + 368) + 8 * v8), v19, v32, v31, v11, a2);
        sub_1000CA03C(v27, 2 * *(v10 + 304));
        sub_1000CA03C(v19, 2 * *(v10 + 304));
        return sub_1000CA03C(v11, *(v10 + 304));
      }
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = v28;
        v27->i16[v28] = *(*(*(v10 + 400) + 8 * v8) + 2 * v28);
        ++v28;
      }

      while (v29 < sub_10001EF1C(*(v10 + 440)));
      if (v28 >= *(v10 + 304))
      {
        goto LABEL_10;
      }
    }

    v30 = v28;
    do
    {
      v27->i16[v30++] = 0;
    }

    while (*(v10 + 304) > v30);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100058AF8(uint64_t result, _WORD *a2, _WORD *a3)
{
  if (*(result + 340))
  {
    return sub_10001FE04(*(result + 432), a2, a3);
  }

  *a2 = 1;
  *a3 = 0;
  return result;
}

uint64_t sub_100058B18(uint64_t a1)
{
  if (!*(a1 + 340))
  {
    return 0;
  }

  v4 = 0;
  sub_10001FE04(*(a1 + 432), &v4 + 1, &v4);
  v2 = 200 * (v4 - SHIWORD(v4));
  return (v2 / ((23 << *(a1 + 308)) * sub_1000A08D8(*(a1 + 408))));
}

uint64_t sub_100058BC4(uint64_t result, _DWORD *a2, int *a3, _DWORD *a4)
{
  v6 = *(result + 320);
  if (v6 <= 0)
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    return result;
  }

  v7 = result;
  v8 = 472;
  if (!*(result + 356))
  {
    v8 = 468;
  }

  v9 = *(result + v8);
  *a2 = v6 - *(result + 324);
  v10 = (*(result + 464) - v9 + *(result + 320)) % *(result + 320);
  *a3 = v10;
  v11 = v10 - *(result + 324);
  *a3 = v11;
  if (*(result + 492))
  {
    if (v11 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a3 = v11 - *(result + 332);
    *a2 -= *(result + 332);
    if (*a3 < 0)
    {
LABEL_10:
      *a3 = 0;
      goto LABEL_11;
    }
  }

  result = sub_10001F3C4(*(result + 424));
  if (result)
  {
    goto LABEL_10;
  }

LABEL_11:
  *a4 = *(v7 + 516);
  return result;
}

uint64_t sub_100058CC8(uint64_t a1, uint64_t a2)
{
  *(a2 + 464) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v4 = (a2 + 48);
  *(a2 + 208) = 0u;
  v5 = a2 + 208;
  *a2 = 0u;
  *a2 = 0x100000003;
  *(a2 + 8) = *(a1 + 284);
  *(a2 + 12) = *(a1 + 288);
  *(a2 + 16) = *(a1 + 300);
  *(a2 + 40) = *(a1 + 480);
  *(a2 + 44) = sub_100056FD0(a1);
  sub_10001F8CC(*(a1 + 424), a2 + 52);
  sub_10001F8FC(*(a1 + 424), a2 + 130);
  sub_10001F960(*(a1 + 424), v5);
  *(a2 + 32) = sub_1000A08C8(*(a1 + 408));
  sub_1000A08E8(*(a1 + 408), (a2 + 36));
  sub_1000A08F8(*(a1 + 408), (a2 + 20), (a2 + 24), (a2 + 28));
  sub_100020134(*(a1 + 432), *(a1 + 300), (a2 + 364), (a2 + 442), (a2 + 444), (a2 + 446), v4);
  sub_10001EEC0(*(a1 + 440), (a2 + 452), (a2 + 456), (a2 + 460), (a2 + 464), (a2 + 448));
  return 1;
}

uint64_t sub_100058E0C(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    memcpy(__dst, a2, sizeof(__dst));
    if (__dst[1] == 1 && __dst[2] == *(a1 + 284) && __dst[3] == *(a1 + 288) && (v4 = __dst[11], v4 == sub_100056FD0(a1)))
    {
      *(a1 + 480) = __dst[10];
      sub_1000A08F0(*(a1 + 408), &__dst[9]);
      sub_1000A08D0(*(a1 + 408), __dst[8]);
      sub_10001F9C8(*(a1 + 424), &__dst[13]);
      sub_10001F9F8(*(a1 + 424), &__dst[32] + 2);
      sub_10001FA30(*(a1 + 424), &__dst[52]);
      sub_1000A0900(*(a1 + 408), __dst[5], __dst[6], __dst[7]);
      sub_1000201E4(*(a1 + 432), &__dst[91], SHIWORD(__dst[110]), __dst[111], SHIWORD(__dst[111]), __dst[12]);
      sub_10001EF08(*(a1 + 440), __dst[113], __dst[114], __dst[115], __dst[116], __dst[112]);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100058F40(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1000BCAA0(a2, "bfx0", a3);
  v5 = sub_100057000(a1);
  if (sub_100057008(a1))
  {
    v6 = *(a1 + 392);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = 1;
    sub_1000BCC04(v4, v6, v7, 1);
  }

  else
  {
    v8 = 0;
  }

  sub_1000BCB64(v4);
  return v8;
}

BOOL sub_100058FCC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_100057000(a1);
  v12 = sub_1000BBAE0(a2, "bfx0", a3, v7, v8, v9, v10, v11);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_1000BBE54(v12, *(a1 + 392), v6, 1) && sub_100057010(a1) != 0;
  sub_1000BBBC4(v13);
  return v14;
}

uint64_t sub_100059074(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 464);
  v5 = a2 - 5;
  if ((a2 - 5) <= 1 && (!qword_1001065A8 || !*(qword_1001065A8 + 2440) || *(qword_1001065A8 + 2376) > *(a1 + 480)))
  {
    if (*(a1 + 352))
    {
      sub_10001FE18(*(a1 + 432), **(*(a1 + 368) + 8 * v4));
    }

    else if (*(a1 + 340))
    {
      sub_10001FE50(*(a1 + 432), *(*(a1 + 368) + 8 * v4), *(a1 + 424));
      if (*(*(a1 + 384) + v4))
      {
        ++*(a1 + 480);
      }
    }
  }

  v6 = v4 - *(a1 + 324);
  if (v6 < 0)
  {
    v6 += *(a1 + 320);
  }

  v7 = v6;
  *(*(a1 + 384) + v6) &= ~2u;
  *(*(a1 + 384) + v6) |= *(*(a1 + 384) + v4) & 2;
  if (v5 >= 2)
  {
    v15 = *(a1 + 464);
    v16 = *(a1 + 320);
  }

  else
  {
    if (sub_10001DDDC(*(a1 + 416), *(a1 + 368), v4, *(a1 + 320), *(a1 + 476), *(a1 + 492)))
    {
      *(*(a1 + 384) + v7) |= 4u;
      if (*(a1 + 488))
      {
        sub_10001F1B8(*(a1 + 424), *(*(a1 + 368) + 8 * v7), *(*(a1 + 384) + v7));
      }

      if (*(a1 + 340))
      {
        if (!*(a1 + 352))
        {
          v8 = *(a1 + 476);
          v9 = *(a1 + 324);
          v10 = *(a1 + 332);
          if (v8 >= v10 + 2 * v9 || *(a1 + 348) && v8 >= v10 + v9)
          {
            v11 = v7 - v10;
            if (v11 < 0)
            {
              v11 += *(a1 + 320);
            }

            *(*(a1 + 384) + v11) |= 0x10u;
            if (*(a1 + 336))
            {
              v12 = *(a1 + 332);
              if (v12 >= 2)
              {
                *(a1 + 332) = v12 - 1;
                v13 = v11 + 1;
                v14 = *(a1 + 320);
                if (v13 < v14)
                {
                  v14 = 0;
                }

                *(*(a1 + 384) + v13 - v14) |= 0x10u;
              }
            }
          }
        }
      }
    }

    else
    {
      if (*(a1 + 352) || *(a1 + 356))
      {
        v17 = *(a1 + 472);
        if (v17 + 1 < *(a1 + 320))
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = 0;
        }

        *(a1 + 472) = v18;
      }

      else
      {
        v22 = *(a1 + 468);
        if (v22 + 1 < *(a1 + 320))
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = 0;
        }

        *(a1 + 468) = v23;
      }

      v2 = 3;
    }

    v16 = *(a1 + 320);
    if (v4 + 1 < v16)
    {
      v15 = v4 + 1;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 464) = v15;
    ++*(a1 + 476);
    ++*(a1 + 508);
  }

  v19 = (v15 - *(a1 + 468) + v16) % v16 - *(a1 + 324);
  if (*(a1 + 492))
  {
    if (v19 < 0)
    {
      goto LABEL_42;
    }

LABEL_41:
    if (!sub_10001F3C4(*(a1 + 424)))
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v19 -= *(a1 + 332);
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  v19 = 0;
LABEL_43:
  if (v19 > *(a1 + 516))
  {
    *(a1 + 516) = v19;
    if (*(a1 + 488))
    {
LABEL_45:
      if (!*(a1 + 356))
      {
        return v2;
      }

      goto LABEL_49;
    }
  }

  else if (*(a1 + 488))
  {
    goto LABEL_45;
  }

  *(a1 + 484) = v2;
  if (!*(a1 + 356))
  {
    return v2;
  }

LABEL_49:
  if (*(a1 + 476) > ((2 * *(a1 + 324)) | 1))
  {
    v20 = *(a1 + 432);
    if (v20)
    {
      if (sub_1000200F8(v20))
      {
        return 7;
      }

      else
      {
        return v2;
      }
    }
  }

  return v2;
}

int *sub_1000593B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = sub_1000BFBD8(0xA0uLL, a2, a3, a4, a5, a6, a7, a8);
  *v11 = a1;
  v11[2] = v9;
  v11[3] = 0;
  v11[4] = 16 * v9;
  v11[14] = v8;
  *(v11 + 3) = sub_1000BFBD8(16 * v9, v12, v13, v14, v15, v16, v17, v18);
  *(v11 + 4) = sub_1000BFBD8(2 * v11[2] + 2, v19, v20, v21, v22, v23, v24, v25);
  *(v11 + 5) = sub_1000BFBD8(2 * v11[2] + 2, v26, v27, v28, v29, v30, v31, v32);
  *(v11 + 6) = sub_1000BFBD8(v11[2], v33, v34, v35, v36, v37, v38, v39);
  *(v11 + 8) = sub_1000BFBD8(4 * v11[14], v40, v41, v42, v43, v44, v45, v46);
  v11[18] = v9;
  v11[19] = 0;
  v11[20] = 16 * v9;
  v11[32] = 8 * v9;
  v11[28] = 4 * v9;
  *(v11 + 11) = sub_1000BFBD8(16 * v9, v47, v48, v49, v50, v51, v52, v53);
  *(v11 + 12) = sub_1000BFBD8(2 * v11[18] + 2, v54, v55, v56, v57, v58, v59, v60);
  *(v11 + 13) = sub_1000BFBD8(2 * v11[18] + 2, v61, v62, v63, v64, v65, v66, v67);
  *(v11 + 15) = sub_1000BFBD8(2 * v11[28] + 2, v68, v69, v70, v71, v72, v73, v74);
  *(v11 + 17) = sub_1000BFBD8(2 * v11[32], v75, v76, v77, v78, v79, v80, v81);
  *(v11 + 18) = sub_1000BFBD8(v11[32], v82, v83, v84, v85, v86, v87, v88);
  *(v11 + 19) = sub_1000BFBD8(v11[32], v89, v90, v91, v92, v93, v94, v95);
  if (sub_100059760(v11, ".", 0, 0, 0, v96, v97, v98) || qword_1001065A8 && *(qword_1001065A8 + 3392) && !sub_1000595E0(v11))
  {
    sub_100059540(v11);
    return 0;
  }

  return v11;
}

uint64_t sub_100059540(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 152));
    sub_1000BFEC4(v1[18]);
    sub_1000BFEC4(v1[17]);
    sub_1000BFEC4(v1[15]);
    sub_1000BFEC4(v1[13]);
    sub_1000BFEC4(v1[12]);
    sub_1000BFEC4(v1[11]);
    sub_1000BFEC4(v1[8]);
    sub_1000BFEC4(v1[6]);
    sub_1000BFEC4(v1[5]);
    sub_1000BFEC4(v1[4]);
    sub_1000BFEC4(v1[3]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000595E0(uint64_t **a1)
{
  v1 = 0;
  v2 = *a1;
  do
  {
    v16 = 0;
    v3 = &off_1000FD410[2 * v1];
    v4 = v3[1];
    v5 = sub_1000C7854(v4) + 1;
    v6 = sub_1000C0034(2 * v5);
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    sub_1000CB980(v6, v4, v5);
    v8 = sub_1000CBA4C(v7, asc_1000F2960, &v16);
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = 0;
      do
      {
        v10 = sub_1000B259C(v2, v9, 1, 1, 0, 128 - v10, &v17[v10]) + v10;
        v9 = sub_1000CBA4C(0, asc_1000F2960, &v16);
      }

      while (v9);
      sub_1000BFEC4(v7);
      if (v10 >= 1 && sub_100059760(a1, *v3, v10, v17, 1, v11, v12, v13))
      {
        return 0;
      }
    }

    else
    {
      sub_1000BFEC4(v7);
    }

    ++v1;
  }

  while (v1 != 16);
  return 1;
}

uint64_t sub_100059760(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  if (a3 > 0)
  {
    v13 = *(a1 + 76);
    if (v13 < 1)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = *(a1 + 88);
    v14 = *(a1 + 96);
    while (1)
    {
      v16 = *v14++;
      if (!sub_1000C7A1C(a2, (v15 + v16)))
      {
        return 2;
      }

      if (!--v13)
      {
        goto LABEL_8;
      }
    }
  }

  sub_1000C7A1C(a2, ".");
  v13 = *(a1 + 76);
  if (v13 >= 1)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (v10 >= 1 && !a4)
  {
    return 2;
  }

  if (v10)
  {
    v18 = sub_1000C9F54(4 * v10, a2, a3, a4, a5, a6, a7, a8);
    v19 = v18;
    if (v10 <= 0)
    {
      qsort(v18, v10, 4uLL, sub_10005A7E4);
      v10 = 1;
    }

    else
    {
      v43 = v8;
      v20 = 0;
      v42 = v10;
      do
      {
        v21 = sub_1000B2844(*a1, *(a4 + v20));
        v22 = sub_1000B28D0(*a1, v21);
        if (v22 == 0xFFFF || (v23 = v22, sub_1000B2A30(*a1, v22) == 0xFFFF) || (*(v19 + v20) = v23, v23 == -1))
        {
          sub_1000CA03C(v19, 4 * v10);
          return 2;
        }

        v20 += 4;
      }

      while (4 * v10 != v20);
      qsort(v19, v10, 4uLL, sub_10005A7E4);
      if (v10 == 1)
      {
        v10 = 1;
        v8 = v43;
      }

      else
      {
        v39 = 1;
        v10 = 1;
        v8 = v43;
        do
        {
          v40 = *(v19 + v39);
          v41 = v19 + v10;
          if (v40 > *(v41 - 1))
          {
            ++v10;
            *v41 = v40;
          }

          ++v39;
        }

        while (v42 != v39);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = *(a1 + 12);
  if (v24 < 1)
  {
    if (v24 < *(a1 + 8))
    {
LABEL_30:
      if (v10 + *(*(a1 + 40) + 2 * v24) <= *(a1 + 56))
      {
        v28 = *(*(a1 + 32) + 2 * v24);
        v29 = sub_1000C7854(a2) + v28;
        if (v29 < *(a1 + 16))
        {
          *(*(a1 + 32) + 2 * v24 + 2) = v29 + 1;
          sub_1000C78DC((*(a1 + 24) + v28), a2, *(a1 + 16) - v28);
          v30 = *(a1 + 40);
          v31 = *(v30 + 2 * v24);
          if (v10 >= 1)
          {
            v32 = 4 * v31;
            v33 = v19;
            v34 = v10;
            do
            {
              v35 = *v33++;
              *(*(a1 + 64) + v32) = v35;
              v32 += 4;
              --v34;
            }

            while (v34);
            v30 = *(a1 + 40);
          }

          *(v30 + 2 * v24 + 2) = v31 + v10;
          v36 = 1;
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    v25 = 0;
    v27 = *(a1 + 24);
    v26 = *(a1 + 32);
    do
    {
      if (!sub_1000C7A1C(a2, (v27 + *(v26 + 2 * v25))))
      {
        v37 = (*(a1 + 40) + 2 * v25);
        if (v37[1] - *v37 == v10 && *(*(a1 + 48) + v25) == v8)
        {
          v38 = 2 * (memcmp(v19, (*(a1 + 64) + 4 * *v37), 4 * v10) != 0);
        }

        else
        {
          v38 = 2;
        }

        sub_1000CA03C(v19, 4 * v10);
        return v38;
      }

      ++v25;
    }

    while (v24 != v25);
    LODWORD(v24) = *(a1 + 12);
    if (v24 < *(a1 + 8))
    {
      goto LABEL_30;
    }
  }

  v36 = 0;
LABEL_38:
  if (v10)
  {
    sub_1000CA03C(v19, 4 * v10);
  }

  if (!v36)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 48) + v24) = v8;
  ++*(a1 + 12);
  return result;
}

BOOL sub_100059B08(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 12);
  if (v12 < 1)
  {
LABEL_5:
    LODWORD(v13) = -1;
  }

  else
  {
    v13 = 0;
    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    while (sub_1000C7A1C(a2, (v15 + *(v14 + 2 * v13))))
    {
      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }
  }

  v16 = *(a1 + 76);
  if (v16 < 1)
  {
LABEL_10:
    LODWORD(v17) = -1;
  }

  else
  {
    v17 = 0;
    v19 = *(a1 + 88);
    v18 = *(a1 + 96);
    while (sub_1000C7A1C(a2, (v19 + *(v18 + 2 * v17))))
    {
      if (v16 == ++v17)
      {
        goto LABEL_10;
      }
    }
  }

  v20 = 0;
  if (a3 >= 1 && (v13 & v17) != 0xFFFFFFFF)
  {
    v21 = sub_1000C9F54(4 * a3, a2, a3, a4, a5, a6, a7, a8);
    v22 = 0;
    do
    {
      v23 = *a1;
      v24 = sub_1000B2844(*a1, *(a4 + v22));
      *(v21 + v22) = sub_1000B28D0(v23, v24);
      v22 += 4;
    }

    while (4 * a3 != v22);
    if (v13 == -1)
    {
      v38 = 0;
      v32 = (*(a1 + 104) + 2 * v17);
      v33 = (v32[1] - *v32);
      if (v33 < 1)
      {
LABEL_25:
        v20 = 0;
      }

      else
      {
        v34 = (*(a1 + 120) + 2 * *v32 + 2);
        while (1)
        {
          v35 = *v34;
          v37[0] = *(v34 - 1);
          v37[1] = v35;
          v39 = 0;
          if (sub_10005A7FC(a1, a3, v21, 0, v37))
          {
            break;
          }

          ++v34;
          if (!--v33)
          {
            goto LABEL_25;
          }
        }

        v20 = 1;
      }
    }

    else
    {
      v25 = (*(a1 + 40) + 2 * ~v13);
      v26 = v25[1];
      v27 = *v25;
      LODWORD(v28) = (v26 - v27);
      if (v28 < 1)
      {
LABEL_20:
        v31 = 0;
      }

      else
      {
        v29 = (*(a1 + 64) + 4 * v27);
        v28 = v28;
        while (1)
        {
          v30 = *v29++;
          if (*v21 == v30)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_20;
          }
        }

        v31 = 1;
      }

      v20 = v31 == *(*(a1 + 48) + ~v13);
    }

    sub_1000CA03C(v21, 4 * a3);
  }

  return v20;
}

BOOL sub_100059D18(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1000BCAA0(a2, "grm1", a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_1000BCBAC(v4, *(a1 + 8)) && sub_1000BCBAC(v5, *(a1 + 12)) && sub_1000BCBAC(v5, *(a1 + 16)) && sub_1000BCBAC(v5, *(a1 + 56)) && sub_1000BCBAC(v5, *(a1 + 72)) && sub_1000BCBAC(v5, *(a1 + 76)) && sub_1000BCBAC(v5, *(a1 + 80)) && sub_1000BCBAC(v5, *(a1 + 112)) && sub_1000BCBAC(v5, *(a1 + 128)) && ((v6 = *(a1 + 24)) == 0 ? (v7 = 0) : (v7 = *(a1 + 16)), sub_1000BCC04(v5, v6, v7, 1) && ((v9 = *(a1 + 32)) == 0 ? (v10 = 0) : (v10 = *(a1 + 8) + 1), sub_1000BCC04(v5, v9, v10, 2) && ((v11 = *(a1 + 40)) == 0 ? (v12 = 0) : (v12 = *(a1 + 8) + 1), sub_1000BCC04(v5, v11, v12, 2) && ((v13 = *(a1 + 48)) == 0 ? (v14 = 0) : (v14 = *(a1 + 8)), sub_1000BCC04(v5, v13, v14, 1) && ((v15 = *(a1 + 64)) == 0 ? (v16 = 0) : (v16 = *(a1 + 56)), sub_1000BCC04(v5, v15, v16, 4) && ((v17 = *(a1 + 88)) == 0 ? (v18 = 0) : (v18 = *(a1 + 80)), sub_1000BCC04(v5, v17, v18, 1) && ((v19 = *(a1 + 96)) == 0 ? (v20 = 0) : (v20 = *(a1 + 72) + 1), sub_1000BCC04(v5, v19, v20, 2) && ((v21 = *(a1 + 104)) == 0 ? (v22 = 0) : (v22 = *(a1 + 72) + 1), sub_1000BCC04(v5, v21, v22, 2) && ((v23 = *(a1 + 120)) == 0 ? (v24 = 0) : (v24 = *(a1 + 112) + 1), sub_1000BCC04(v5, v23, v24, 2) && ((v25 = *(a1 + 136)) == 0 ? (v26 = 0) : (v26 = *(a1 + 128)), sub_1000BCC04(v5, v25, v26, 2) && ((v27 = *(a1 + 144)) == 0 ? (v28 = 0) : (v28 = *(a1 + 128)), sub_1000BCC04(v5, v27, v28, 1)))))))))))))
  {
    v29 = *(a1 + 152);
    if (v29)
    {
      v30 = *(a1 + 128);
    }

    else
    {
      v30 = 0;
    }

    v31 = sub_1000BCC04(v5, v29, v30, 1) != 0;
    sub_1000BCB64(v5);
    return v31;
  }

  else
  {
    sub_1000BCB64(v5);
    return 0;
  }
}

BOOL sub_100059FE4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000BBAE0(a2, "grm1", a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v14 = (a1 + 152);
  sub_1000BFEC4(*(a1 + 152));
  v15 = (a1 + 144);
  sub_1000BFEC4(*(a1 + 144));
  v16 = (a1 + 136);
  sub_1000BFEC4(*(a1 + 136));
  v17 = (a1 + 120);
  sub_1000BFEC4(*(a1 + 120));
  v18 = (a1 + 104);
  sub_1000BFEC4(*(a1 + 104));
  sub_1000BFEC4(*(a1 + 96));
  sub_1000BFEC4(*(a1 + 88));
  sub_1000BFEC4(*(a1 + 64));
  sub_1000BFEC4(*(a1 + 48));
  sub_1000BFEC4(*(a1 + 40));
  sub_1000BFEC4(*(a1 + 32));
  sub_1000BFEC4(*(a1 + 24));
  v11 = (a1 + 8);
  v12 = 0;
  if (sub_1000BBD54(v10, (a1 + 8)) && sub_1000BBD54(v10, (a1 + 12)) && sub_1000BBD54(v10, (a1 + 16)) && sub_1000BBD54(v10, (a1 + 56)) && sub_1000BBD54(v10, (a1 + 72)) && sub_1000BBD54(v10, (a1 + 76)) && sub_1000BBD54(v10, (a1 + 80)) && sub_1000BBD54(v10, (a1 + 112)) && sub_1000BBD54(v10, (a1 + 128)))
  {
    v19 = 0;
    if (sub_1000BBF0C(v10, 1, (a1 + 24), &v19))
    {
      if (!*(a1 + 24) || v19 == *(a1 + 16))
      {
        v19 = 0;
        if (sub_1000BBF0C(v10, 2, (a1 + 32), &v19) && (!*(a1 + 32) || v19 == *v11 + 1))
        {
          v19 = 0;
          if (sub_1000BBF0C(v10, 2, (a1 + 40), &v19) && (!*(a1 + 40) || v19 == *v11 + 1))
          {
            v19 = 0;
            if (sub_1000BBF0C(v10, 1, (a1 + 48), &v19) && (!*(a1 + 48) || v19 == *v11))
            {
              v19 = 0;
              if (sub_1000BBF0C(v10, 4, (a1 + 64), &v19) && (!*(a1 + 64) || v19 == *(a1 + 56)))
              {
                v19 = 0;
                if (sub_1000BBF0C(v10, 1, (a1 + 88), &v19) && (!*(a1 + 88) || v19 == *(a1 + 80)))
                {
                  v19 = 0;
                  if (sub_1000BBF0C(v10, 2, (a1 + 96), &v19) && (!*(a1 + 96) || v19 == *(a1 + 72) + 1))
                  {
                    v19 = 0;
                    if (sub_1000BBF0C(v10, 2, v18, &v19) && (!*v18 || v19 == *(a1 + 72) + 1))
                    {
                      v19 = 0;
                      if (sub_1000BBF0C(v10, 2, v17, &v19) && (!*v17 || v19 == *(a1 + 112) + 1))
                      {
                        v19 = 0;
                        if (sub_1000BBF0C(v10, 2, v16, &v19) && (!*v16 || v19 == *(a1 + 128)))
                        {
                          v19 = 0;
                          if (sub_1000BBF0C(v10, 1, v15, &v19) && (!*v15 || v19 == *(a1 + 128)))
                          {
                            v19 = 0;
                            if (sub_1000BBF0C(v10, 1, v14, &v19))
                            {
                              if (!*v14 || v19 == *(a1 + 128))
                              {
                                v12 = 1;
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

  sub_1000BBBC4(v10);
  return v12;
}

uint64_t *sub_10005A438(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000BBAE0(a1, "grm1", a2, a4, a5, a6, a7, a8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000C0034(160);
    v12 = v11;
    if (!v11 || (*v11 = a3, v13 = v11 + 1, sub_1000BBD54(v10, v11 + 1)) && sub_1000BBD54(v10, v12 + 12) && sub_1000BBD54(v10, v12 + 2) && sub_1000BBD54(v10, v12 + 7) && sub_1000BBD54(v10, v12 + 9) && sub_1000BBD54(v10, v12 + 76) && sub_1000BBD54(v10, v12 + 10) && sub_1000BBD54(v10, v12 + 14) && sub_1000BBD54(v10, v12 + 16) && (v15 = 0, sub_1000BBF0C(v10, 1, v12 + 3, &v15)) && (!v12[3] || v15 == *(v12 + 4)) && (v15 = 0, sub_1000BBF0C(v10, 2, v12 + 4, &v15)) && (!v12[4] || v15 == *v13 + 1) && (v15 = 0, sub_1000BBF0C(v10, 2, v12 + 5, &v15)) && (!v12[5] || v15 == *v13 + 1) && (v15 = 0, sub_1000BBF0C(v10, 1, v12 + 6, &v15)) && (!v12[6] || v15 == *v13) && (v15 = 0, sub_1000BBF0C(v10, 4, v12 + 8, &v15)) && (!v12[8] || v15 == *(v12 + 14)) && (v15 = 0, sub_1000BBF0C(v10, 1, v12 + 11, &v15)) && (!v12[11] || v15 == *(v12 + 20)) && (v15 = 0, sub_1000BBF0C(v10, 2, v12 + 12, &v15)) && (!v12[12] || v15 == *(v12 + 18) + 1) && (v15 = 0, sub_1000BBF0C(v10, 2, v12 + 13, &v15)) && (!v12[13] || v15 == *(v12 + 18) + 1) && (v15 = 0, sub_1000BBF0C(v10, 2, v12 + 15, &v15)) && (!v12[15] || v15 == *(v12 + 28) + 1) && (v15 = 0, sub_1000BBF0C(v10, 2, v12 + 17, &v15)) && (!v12[17] || v15 == *(v12 + 32)) && (v15 = 0, sub_1000BBF0C(v10, 1, v12 + 18, &v15)) && (!v12[18] || v15 == *(v12 + 32)) && (v15 = 0, sub_1000BBF0C(v10, 1, v12 + 19, &v15)) && (!v12[19] || v15 == *(v12 + 32)))
    {
      sub_1000BBBC4(v10);
      return v12;
    }

    sub_1000BBBC4(v10);
    sub_100059540(v12);
  }

  return 0;
}

uint64_t sub_10005A7E4(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

BOOL sub_10005A7FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (!a5)
  {
    return a4 == a2;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v9 = a1[17];
  v10 = a1[18];
  v11 = a1[19];
  while (2)
  {
    v12 = *a5;
    v13 = a5[2];
    do
    {
LABEL_4:
      v14 = *(v9 + 2 * v12);
      v15 = *(v10 + v12);
      v16 = *(v11 + v12);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v13 < v15)
        {
          v40 = v13 + 1;
          if (v13 + 1 >= v16)
          {
            LODWORD(v12) = v12 + 1;
            v41 = *(a5 + 2);
            if (v12 >= a5[1])
            {
              goto LABEL_54;
            }

            v40 = 0;
          }

          else
          {
            v41 = *(a5 + 2);
          }

          v63 = v41;
          LODWORD(v62) = v40;
          v61 = __PAIR64__(a5[1], v12);
          v41 = &v61;
LABEL_54:
          v66 = 0;
          v45 = (a1[13] + 2 * v14);
          v46 = (v45[1] - *v45);
          if (v46 >= 1)
          {
            for (i = (a1[15] + 2 * *v45 + 2); ; ++i)
            {
              v48 = *i;
              v64 = *(i - 1);
              v65 = v48;
              LODWORD(v66) = 0;
              v67 = v41;
              if (sub_10005A7FC(a1, a2, a3, a4, &v64))
              {
                break;
              }

              if (!--v46)
              {
                return 0;
              }
            }

            return 1;
          }

          return 0;
        }

        v58 = v11;
        v60 = a5;
        v42 = a5[1];
        v43 = *(a5 + 2);
        v44 = v43;
        if (v12 + 1 < v42)
        {
          v63 = v43;
          LODWORD(v62) = 0;
          v42 = v60[1];
          LODWORD(v61) = v12 + 1;
          HIDWORD(v61) = v42;
          v44 = &v61;
        }

        if (sub_10005A7FC(a1, a2, a3, a4, v44))
        {
          return 1;
        }

        v49 = v13 + 1;
        if (v13 + 1 >= *(v58 + v12))
        {
          if (v12 + 1 >= v42)
          {
            goto LABEL_63;
          }

          v49 = 0;
          LODWORD(v12) = v12 + 1;
        }

        v63 = v43;
        LODWORD(v62) = v49;
        v61 = __PAIR64__(v60[1], v12);
        v43 = &v61;
LABEL_63:
        v66 = 0;
        v50 = (a1[13] + 2 * v14);
        v51 = (v50[1] - *v50);
        if (v51 >= 1)
        {
          for (j = (a1[15] + 2 * *v50 + 2); ; ++j)
          {
            v53 = *j;
            v64 = *(j - 1);
            v65 = v53;
            LODWORD(v66) = 0;
            v67 = v43;
            if (sub_10005A7FC(a1, a2, a3, a4, &v64))
            {
              break;
            }

            if (!--v51)
            {
              return 0;
            }
          }

          return 1;
        }

        return 0;
      }

      v17 = ~v14;
      if (v13 < v15)
      {
        v18 = a4;
        if (a4 <= a2)
        {
          v19 = a2;
        }

        else
        {
          v19 = a4;
        }

        while (v18 != v19)
        {
          v20 = (a1[5] + 2 * v17);
          v21 = v20[1];
          v22 = *v20;
          LODWORD(v23) = (v21 - v22);
          if (v23 < 1)
          {
LABEL_9:
            if (*(a1[6] + v17))
            {
              return 0;
            }
          }

          else
          {
            v24 = (a1[8] + 4 * v22);
            v23 = v23;
            while (1)
            {
              v25 = *v24++;
              if (*(a3 + 4 * v18) == v25)
              {
                break;
              }

              if (!--v23)
              {
                goto LABEL_9;
              }
            }

            if (*(a1[6] + v17) != 1)
            {
              return 0;
            }
          }

          ++v13;
          ++v18;
          if (v13 == v15)
          {
            a4 = v18;
            v26 = a5[1];
            ++v12;
            if (v15 < v16)
            {
              goto LABEL_20;
            }

            goto LABEL_39;
          }
        }

        return 0;
      }

      v15 = v13;
      v26 = a5[1];
      ++v12;
      if (v13 < v16)
      {
LABEL_20:
        v27 = *(a5 + 2);
        v57 = v11;
        v59 = a5;
        v55 = v10;
        v56 = v9;
        if (v12 >= v26)
        {
          v54 = v26;
        }

        else
        {
          v63 = *(a5 + 2);
          LODWORD(v62) = 0;
          v28 = a5[1];
          v61 = __PAIR64__(v28, v12);
          v54 = v28;
          v27 = &v61;
        }

        v29 = v17;
        v30 = a4;
        if (a4 <= a2)
        {
          v31 = a2;
        }

        else
        {
          v31 = a4;
        }

        v32 = v31;
        while (!sub_10005A7FC(a1, a2, a3, v30, v27))
        {
          if (v30 == v32)
          {
            return 0;
          }

          v33 = (a1[5] + 2 * v29);
          v34 = v33[1];
          v35 = *v33;
          LODWORD(v36) = (v34 - v35);
          if (v36 < 1)
          {
LABEL_27:
            if (*(a1[6] + v29))
            {
              return 0;
            }
          }

          else
          {
            v37 = (a1[8] + 4 * v35);
            v36 = v36;
            while (1)
            {
              v38 = *v37++;
              if (*(a3 + 4 * v30) == v38)
              {
                break;
              }

              if (!--v36)
              {
                goto LABEL_27;
              }
            }

            if (*(a1[6] + v29) != 1)
            {
              return 0;
            }
          }

          ++v15;
          ++v30;
          if (v15 == v16)
          {
            a4 = v30;
            v11 = v57;
            a5 = v59;
            v10 = v55;
            v9 = v56;
            v13 = 0;
            if (v12 < v54)
            {
              goto LABEL_4;
            }

            goto LABEL_42;
          }
        }

        return 1;
      }

LABEL_39:
      v13 = 0;
    }

    while (v12 < v26);
LABEL_42:
    a5 = *(a5 + 2);
    if (a5)
    {
      continue;
    }

    return a4 == a2;
  }
}

uint64_t sub_10005AC3C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 24));
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10005AC88(unsigned int *a1, int16x8_t *a2, unint64_t a3)
{
  v4 = *a1;
  if (v4 < 1)
  {
    v5 = 0;
    goto LABEL_21;
  }

  if (v4 < 4)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = a2;
    goto LABEL_16;
  }

  if (v4 < 0x10)
  {
    v5 = 0;
    v8 = 0;
LABEL_11:
    v6 = v4 & 0x7FFFFFFC;
    v7 = (a2 + 2 * v6);
    v18 = v5;
    v19 = (a2 + 2 * v8);
    v20 = v8 - v6;
    do
    {
      v21 = *v19++;
      v18 = vorrq_s8(v18, vmovl_u16(vabs_s16(v21)));
      v20 += 4;
    }

    while (v20);
    v22 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    v5 = v22.i32[0] | v22.i32[1];
    if (v6 == v4)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v8 = v4 & 0x7FFFFFF0;
  v9 = a2 + 1;
  v10 = 0uLL;
  v11 = v8;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = vabsq_s16(v9[-1]);
    v16 = vabsq_s16(*v9);
    v12 = vorrq_s8(v12, vmovl_high_u16(v15));
    v10 = vorrq_s8(v10, vmovl_u16(*v15.i8));
    v14 = vorrq_s8(v14, vmovl_high_u16(v16));
    v13 = vorrq_s8(v13, vmovl_u16(*v16.i8));
    v9 += 2;
    v11 -= 16;
  }

  while (v11);
  v17 = vorrq_s8(vorrq_s8(v13, v10), vorrq_s8(v14, v12));
  *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  v5 = v17.i32[0] | v17.i32[1];
  if (v8 == v4)
  {
    goto LABEL_20;
  }

  if ((v4 & 0xC) != 0)
  {
    goto LABEL_11;
  }

  v7 = (a2 + 2 * v8);
  LODWORD(v6) = v4 & 0x7FFFFFF0;
LABEL_16:
  v23 = v4 - v6;
  do
  {
    v25 = v7->i16[0];
    v7 = (v7 + 2);
    v24 = v25;
    if (v25 < 0)
    {
      v24 = -v24;
    }

    v5 |= v24;
    --v23;
  }

  while (v23);
LABEL_20:
  if (v5 >> 14)
  {
    result = 0;
    goto LABEL_27;
  }

LABEL_21:
  v26 = 0;
  do
  {
    result = v26 + 1;
    if (v5 >> 13)
    {
      break;
    }

    v5 *= 2;
    v104 = v26++ >= 0xE;
  }

  while (!v104);
LABEL_27:
  v28 = 15 - result;
  v29 = 1 << (14 - result);
  if (!a1[2])
  {
    v57 = *(a1 + 2);
    if (v4 < 1)
    {
      goto LABEL_97;
    }

    v58 = (v4 + 1) >> 1;
    if ((v58 - 1) >= 0xF)
    {
      LODWORD(v59) = 0;
      if (a3 - v57 >= 0x20 && a3 - a2 >= 0x20)
      {
        v59 = v58 & 0x3FFFFFF0;
        v60 = (a3 + 2 * v59);
        v61 = (a2 + 2 * v59);
        v132 = vdupq_n_s32(v29);
        v62 = v57 + v59;
        v133 = v57 + 2;
        v134 = &a2[1];
        v135 = (a3 + 16);
        v136 = vnegq_s32(vdupq_n_s32(v28));
        v137 = v59;
        do
        {
          v138 = *v133[-2].i8;
          v139 = *v134[-2].i8;
          v140 = vmlal_s16(v132, *v139.i8, *v138.i8);
          v141 = vmlal_high_s16(v132, v139, v138);
          v142 = vuzp1q_s16(vshlq_s32(vmlal_s16(v132, *v134, *v133), v136), vshlq_s32(vmlal_high_s16(v132, *v134->i8, *v133->i8), v136));
          v135[-1] = vuzp1q_s16(vshlq_s32(v140, v136), vshlq_s32(v141, v136));
          *v135 = v142;
          v133 += 4;
          v134 += 4;
          v135 += 2;
          v137 -= 16;
        }

        while (v137);
        if (v59 == v58)
        {
LABEL_50:
          v67 = *(a1 + 2);
          LODWORD(v4) = *a1;
          v68 = v61;
          if (v58 < *a1)
          {
            v69 = v67 + 2 * (v4 / 2);
            v70 = (v4 + ~v58);
            if (v70 < 3 || ((v143 = (v4 + (v4 >> 31)) >> 1, v144 = 2 * v70 + 2, v145 = v60->u64 + v144, v60 < (v68 + v144)) ? (v146 = v68 >= v145) : (v146 = 1), v146 ? (v147 = 0) : (v147 = 1), v67 - 2 * v70 + 2 * v143 - 2 < v145 ? (v148 = v60 >= v69) : (v148 = 1), !v148 || (v147 & 1) != 0))
            {
              v71 = v60;
              v72 = v68;
            }

            else
            {
              v149 = v70 + 1;
              if (v70 < 0xF)
              {
                v150 = 0;
                goto LABEL_131;
              }

              v150 = v149 & 0x1FFFFFFF0;
              v174 = vdupq_n_s32(v29);
              v175 = v68 + 2;
              v176 = v60 + 1;
              v177 = (v67 + 2 * v143 - 16);
              v178 = vnegq_s32(vdupq_n_s32(v28));
              v179 = v149 & 0x1FFFFFFF0;
              do
              {
                v180 = vrev64q_s16(*v177);
                v181 = vextq_s8(v180, v180, 8uLL);
                v182 = vrev64q_s16(v177[-1]);
                v183 = vextq_s8(v182, v182, 8uLL);
                v184 = *v175[-2].i8;
                v185 = vmlal_s16(v174, *v184.i8, *v181.i8);
                v186 = vmlal_high_s16(v174, v184, v181);
                v187 = vmlal_s16(v174, *v175, *v183.i8);
                v188 = vmlal_high_s16(v174, *v175->i8, v183);
                v176[-1] = vuzp1q_s16(vshlq_s32(v185, v178), vshlq_s32(v186, v178));
                *v176 = vuzp1q_s16(vshlq_s32(v187, v178), vshlq_s32(v188, v178));
                v175 += 4;
                v176 += 2;
                v177 -= 2;
                v179 -= 16;
              }

              while (v179);
              if (v149 == v150)
              {
                goto LABEL_55;
              }

              if ((v149 & 0xC) != 0)
              {
LABEL_131:
                v189 = 2 * (v149 & 0x1FFFFFFFCLL);
                v71 = (v60 + v189);
                v72 = (v68 + v189);
                v69 -= v189;
                LODWORD(v58) = v58 + (v149 & 0xFFFFFFFC);
                v190 = vdupq_n_s32(v29);
                v191 = 2 * v150;
                v192 = (v68 + 2 * v150);
                v193 = (v60 + 2 * v150);
                v194 = v150 - (v149 & 0x1FFFFFFFCLL);
                v195 = (v67 - v191 + 2 * v143 - 8);
                v196 = vnegq_s32(vdupq_n_s32(v28));
                do
                {
                  v197 = *v195--;
                  v198 = vrev64_s16(v197);
                  v199 = *v192++;
                  *v193++ = vmovn_s32(vshlq_s32(vmlal_s16(v190, v199, v198), v196));
                  v194 += 4;
                }

                while (v194);
                if (v149 == (v149 & 0x1FFFFFFFCLL))
                {
                  goto LABEL_55;
                }

                goto LABEL_53;
              }

              LODWORD(v58) = v58 + v150;
              v69 -= 2 * v150;
              v72 = (v68 + 2 * v150);
              v71 = (v60 + 2 * v150);
            }

LABEL_53:
            v73 = (v69 - 2);
            v74 = v4 - v58;
            do
            {
              v76 = *v73--;
              v75 = v76;
              v77 = v72->i16[0];
              v72 = (v72 + 2);
              v71->i16[0] = (v29 + v77 * v75) >> v28;
              v71 = (v71 + 2);
              --v74;
            }

            while (v74);
LABEL_55:
            v78 = result;
            LODWORD(v4) = *a1;
LABEL_98:
            bzero((a3 + 2 * v4), 2 * (a1[1] - v4));
            return v78;
          }

LABEL_97:
          v78 = result;
          goto LABEL_98;
        }

LABEL_48:
        v63 = v58 - v59;
        do
        {
          v65 = *v62++;
          v64 = v65;
          v66 = v61->i16[0];
          v61 = (v61 + 2);
          v60->i16[0] = (v29 + v66 * v64) >> v28;
          v60 = (v60 + 2);
          --v63;
        }

        while (v63);
        goto LABEL_50;
      }
    }

    else
    {
      LODWORD(v59) = 0;
    }

    v60 = a3;
    v61 = a2;
    v62 = *(a1 + 2);
    goto LABEL_48;
  }

  v30 = a1[1];
  v31 = *(a1 + 2);
  if (v4 < 1)
  {
    goto LABEL_35;
  }

  v32 = v30;
  v33 = a3 + 2 * v30;
  v34 = v4 + 1;
  v35 = (v4 + 1) >> 1;
  v36 = (v33 + 2 * -v35);
  if ((v35 - 1) >= 0xF)
  {
    LODWORD(v37) = 0;
    v87 = 2 * v32;
    v88 = 2 * v32 + a3;
    v89 = v34 & 0x7FFFFFFE;
    if (v88 - (v31 + v89) >= 0x20 && v88 - (a2->u64 + v89) >= 0x20)
    {
      v37 = v35 & 0x3FFFFFF0;
      v36 += v37;
      v38 = (a2 + 2 * v37);
      v39 = v31 + v37;
      v90 = vdupq_n_s32(v29);
      v91 = v31 + 2;
      v92 = (v87 - 2 * v35 + a3 + 16);
      v93 = &a2[1];
      v94 = vnegq_s32(vdupq_n_s32(v28));
      v95 = v37;
      do
      {
        v96 = *v91[-2].i8;
        v97 = *v93[-2].i8;
        v98 = vmlal_s16(v90, *v97.i8, *v96.i8);
        v99 = vmlal_high_s16(v90, v97, v96);
        v100 = vuzp1q_s16(vshlq_s32(vmlal_s16(v90, *v93, *v91), v94), vshlq_s32(vmlal_high_s16(v90, *v93->i8, *v91->i8), v94));
        v92[-1] = vuzp1q_s16(vshlq_s32(v98, v94), vshlq_s32(v99, v94));
        *v92 = v100;
        v91 += 4;
        v92 += 2;
        v93 += 4;
        v95 -= 16;
      }

      while (v95);
      if (v37 == v35)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    LODWORD(v37) = 0;
  }

  v38 = a2;
  v39 = *(a1 + 2);
LABEL_32:
  v40 = v35 - v37;
  do
  {
    v42 = *v39++;
    v41 = v42;
    v43 = v38->i16[0];
    v38 = (v38 + 2);
    *v36++ = (v29 + v43 * v41) >> v28;
    --v40;
  }

  while (v40);
LABEL_34:
  v31 = *(a1 + 2);
  a2 = v38;
  LODWORD(v4) = *a1;
  v30 = a1[1];
LABEL_35:
  v44 = v4 + (v4 >> 31);
  v45 = v4 / 2;
  v46 = v31 + 2 * (v4 / 2);
  v47 = v30 - v4 / 2;
  v48 = (v46 - 2);
  if (v47 >= 1)
  {
    v49 = (v30 + ~v45);
    if (v49 >= 0xF)
    {
      LODWORD(v50) = 0;
      v101 = v44 >> 1;
      v102 = 2 * v49 + 2;
      v103 = a3 + v102;
      v104 = a2->u64 + v102 <= a3 || a2 >= v103;
      v105 = !v104;
      v106 = v31 + 2 * v101 + -2 * v49 - 2 < v103 && v46 > a3;
      if (!v106 && (v105 & 1) == 0)
      {
        v107 = v49 + 1;
        v50 = (v49 + 1) & 0x1FFFFFFF0;
        v48 -= v50;
        v51 = (a3 + 2 * v50);
        v52 = (a2 + 2 * v50);
        v108 = vdupq_n_s32(v29);
        v109 = &a2[1];
        v110 = (a3 + 16);
        v111 = (&v31[-2] + 2 * v101);
        v112 = vnegq_s32(vdupq_n_s32(v28));
        v113 = v50;
        do
        {
          v114 = vrev64q_s16(*v111);
          v115 = vextq_s8(v114, v114, 8uLL);
          v116 = vrev64q_s16(v111[-1]);
          v117 = vextq_s8(v116, v116, 8uLL);
          v118 = *v109[-2].i8;
          v119 = vmlal_s16(v108, *v118.i8, *v115.i8);
          v120 = vmlal_high_s16(v108, v118, v115);
          v121 = vmlal_s16(v108, *v109, *v117.i8);
          v122 = vmlal_high_s16(v108, *v109->i8, v117);
          v110[-1] = vuzp1q_s16(vshlq_s32(v119, v112), vshlq_s32(v120, v112));
          *v110 = vuzp1q_s16(vshlq_s32(v121, v112), vshlq_s32(v122, v112));
          v109 += 4;
          v110 += 2;
          v111 -= 2;
          v113 -= 16;
        }

        while (v113);
        if (v107 == v50)
        {
LABEL_42:
          v45 = *a1 / 2;
          a2 = v52;
          a3 = v51;
          if (v47 >= v45)
          {
            return result;
          }

          goto LABEL_57;
        }

LABEL_39:
        v53 = v50 + v45 - v30;
        do
        {
          v55 = *v48--;
          v54 = v55;
          v56 = v52->i16[0];
          v52 = (v52 + 2);
          *v51++ = (v29 + v56 * v54) >> v28;
          v104 = __CFADD__(v53++, 1);
        }

        while (!v104);
        goto LABEL_42;
      }
    }

    else
    {
      LODWORD(v50) = 0;
    }

    v51 = a3;
    v52 = a2;
    goto LABEL_39;
  }

  v47 = 0;
  if (v45 <= 0)
  {
    return result;
  }

LABEL_57:
  v79 = (v45 + ~v47);
  if (v79 < 3 || ((v123 = 2 * v79 + 2, v124 = a3 + v123, a3 < a2->u64 + v123) ? (v125 = a2 >= v124) : (v125 = 1), v125 ? (v126 = 0) : (v126 = 1), &v48[-v79] < v124 ? (v127 = a3 >= (v48 + 1)) : (v127 = 1), !v127 || (v126 & 1) != 0))
  {
    v80 = a3;
    v81 = a2;
    v82 = v48;
    goto LABEL_59;
  }

  v128 = v79 + 1;
  v129 = vdupq_n_s32(v29);
  v130 = vdupq_n_s32(v28);
  if (v79 < 0xF)
  {
    v131 = 0;
    goto LABEL_123;
  }

  v131 = v128 & 0x1FFFFFFF0;
  v151 = &a2[1];
  v152 = (a3 + 16);
  v153 = (v48 - 7);
  v154 = vnegq_s32(v130);
  v155 = v128 & 0x1FFFFFFF0;
  do
  {
    v156 = vrev64q_s16(*v153);
    v157 = vextq_s8(v156, v156, 8uLL);
    v158 = vrev64q_s16(v153[-1]);
    v159 = vextq_s8(v158, v158, 8uLL);
    v160 = *v151[-2].i8;
    v161 = vmlal_s16(v129, *v160.i8, *v157.i8);
    v162 = vmlal_high_s16(v129, v160, v157);
    v163 = vaddq_s16(*v152, vuzp1q_s16(vshlq_s32(vmlal_s16(v129, *v151, *v159.i8), v154), vshlq_s32(vmlal_high_s16(v129, *v151->i8, v159), v154)));
    v152[-1] = vaddq_s16(v152[-1], vuzp1q_s16(vshlq_s32(v161, v154), vshlq_s32(v162, v154)));
    *v152 = v163;
    v151 += 4;
    v152 += 2;
    v153 -= 2;
    v155 -= 16;
  }

  while (v155);
  if (v128 == v131)
  {
    return result;
  }

  if ((v128 & 0xC) == 0)
  {
    v47 += v131;
    v82 = &v48[-v131];
    v81 = (a2 + 2 * v131);
    v80 = (a3 + 2 * v131);
LABEL_59:
    v83 = v45 - v47;
    do
    {
      v85 = *v82--;
      v84 = v85;
      v86 = v81->i16[0];
      v81 = (v81 + 2);
      *v80++ += (v29 + v86 * v84) >> v28;
      --v83;
    }

    while (v83);
    return result;
  }

LABEL_123:
  v164 = 2 * (v128 & 0x1FFFFFFFCLL);
  v80 = (a3 + v164);
  v81 = (a2 + v164);
  v82 = &v48[v164 / 0xFFFFFFFFFFFFFFFELL];
  v47 += v128 & 0xFFFFFFFC;
  v165 = 2 * v131;
  v166 = (a2 + 2 * v131);
  v167 = (a3 + 2 * v131);
  v168 = v131 - (v128 & 0x1FFFFFFFCLL);
  v169 = &v48[v165 / 0xFFFFFFFFFFFFFFFELL - 3];
  v170 = vnegq_s32(v130);
  do
  {
    v171 = *v169--;
    v172 = vrev64_s16(v171);
    v173 = *v166++;
    *v167 = vadd_s16(*v167, vmovn_s32(vshlq_s32(vmlal_s16(v129, v173, v172), v170)));
    ++v167;
    v168 += 4;
  }

  while (v168);
  if (v128 != (v128 & 0x1FFFFFFFCLL))
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t *sub_10005B5AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bh0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(32);
  if (v10)
  {
    if (!sub_1000BBD54(v9, v10))
    {
      goto LABEL_11;
    }

    if (!sub_1000BBD54(v9, v10 + 4))
    {
      goto LABEL_11;
    }

    if (!sub_1000BBD04(v9, v10 + 2))
    {
      goto LABEL_11;
    }

    v13 = 0;
    if (!sub_1000BBF0C(v9, 2, v10 + 3, &v13))
    {
      goto LABEL_11;
    }

    v11 = v10[3];
    if (v11)
    {
      if (v13 == *v10 / 2)
      {
        v10[2] = v11;
        goto LABEL_12;
      }

LABEL_11:
      sub_1000BFEC4(v10[3]);
      v10[2] = 0;
      v10[3] = 0;
      sub_1000BFEC4(v10);
      v10 = 0;
    }
  }

LABEL_12:
  sub_1000BBBC4(v9);
  return v10;
}

_DWORD *sub_10005B6A4()
{
  result = sub_1000C0034(16);
  if (result)
  {
    v1 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v1 = *(qword_1001065A8 + 3416);
    }

    *result = v1;
    v2 = result;
    v3 = sub_1000C0034(2 * v1 + 2);
    result = v2;
    *(v2 + 8) = v3;
    if (!v3)
    {
      sub_1000BFEC4(v2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B718(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 8));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10005B794(int *a1, int a2, int a3, int a4)
{
  v4 = *a1;
  if (v4 > a3)
  {
    v5 = v4 - 1;
    v6 = *(a1 + 1);
    v7 = (v6 + 2 * v4);
    v8 = v6 + 2 * a4 + 2;
    if (v5 > a4)
    {
      v7 = v8;
    }

    *v7 = a2 + 1;
    v9 = *(a1 + 1);
    v10 = 2 * (a3 & ~(a3 >> 31));
    v11 = *(v9 + v10);
    v12 = v10 + 2;
    do
    {
      v11 += *(v9 + v12);
      v12 += 2;
    }

    while (v11 <= a2);
    v13 = v12 >> 1;
    v14 = (v12 >> 1) - 2;
    if (*a1 >= v13)
    {
      LOWORD(a4) = v14;
    }
  }

  return a4;
}

uint64_t sub_10005B808(unsigned int *a1)
{
  v2 = sub_1000BD6C8(*a1, 4, 0xFFFFFFFF);
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v2 = sub_1000BD6C8(*(*(a1 + 1) + 2 * v3++), 2, v2);
    }

    while (v3 < *a1);
  }

  return v2;
}

uint64_t sub_10005B874(uint64_t a1)
{
  result = sub_1000C0034(40);
  if (result)
  {
    *result = a1;
    *(result + 32) = 1;
  }

  return result;
}

uint64_t sub_10005B8AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2 >= 1)
    {
      v3 = v2 - 1;
      do
      {
        v5 = *(v1 + 24);
        v6 = *(v5 + 8 * v3);
        if (v6)
        {
          sub_10005BA18(*(v5 + 8 * v3));
          sub_1000BFEC4(v6);
          v5 = *(v1 + 24);
        }

        *(v5 + 8 * v3) = 0;
        sub_1000BFEC4(*(*(v1 + 16) + 8 * v3));
        *(*(v1 + 16) + 8 * v3) = 0;
        v4 = v3-- + 1;
      }

      while (v4 > 1);
    }

    *(v1 + 8) = 0;
    sub_1000BFEC4(*(v1 + 24));
    *(v1 + 24) = 0;
    sub_1000BFEC4(*(v1 + 16));
    *(v1 + 16) = 0;
    *(v1 + 32) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10005B970(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v6 = *(*(a1 + 16) + 8 * i);
      if (v6)
      {
        v7 = sub_1000C7A1C(v6, a2);
        v3 = *(a1 + 8);
        if (!v7)
        {
          break;
        }
      }
    }

    if (i != v3 && i != -1)
    {
      goto LABEL_13;
    }

    return 0;
  }

  LODWORD(i) = 0;
  if (!v3)
  {
    return 0;
  }

LABEL_13:
  sub_10005BA18(*(*(a1 + 24) + 8 * i));
  return 1;
}

uint64_t sub_10005BA18(uint64_t a1)
{
  if (*(a1 + 60) >= 1)
  {
    v2 = 0;
    for (i = 0; i < *(a1 + 60); ++i)
    {
      v4 = *(a1 + 72) + v2;
      v5 = *(a1 + 28);
      if (v5 < *(v4 + 26))
      {
        sub_1000BFEC4(*(v4 + 32));
        if (*(a1 + 28) < *(v4 + 10))
        {
LABEL_8:
          sub_1000BFEC4(*(*(a1 + 72) + v2 + 16));
        }
      }

      else if (v5 < *(v4 + 10))
      {
        goto LABEL_8;
      }

      v2 += 40;
    }
  }

  sub_1000BFEC4(*(a1 + 88));
  *(a1 + 88) = 0;
  sub_1000BFEC4(*(a1 + 80));
  *(a1 + 80) = 0;
  sub_1000BFEC4(*(a1 + 72));
  *(a1 + 72) = 0;
  v6 = *(a1 + 32);
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 100) = 255;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sub_1000BFEC4(*(*(a1 + 40) + v7 + 24));
      sub_1000BFEC4(*(*(a1 + 40) + v7 + 8));
      ++v8;
      v7 += 32;
    }

    while (v8 < *(a1 + 32));
  }

  sub_1000BFEC4(*(a1 + 40));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1000BDCD0(*(a1 + 48));
  *(a1 + 48) = 0;
  sub_1000BFEC4(*(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 12) = -1;
  sub_1000BFEC4(*(a1 + 112));
  *(a1 + 112) = 0;
  result = sub_1000BFEC4(*(a1 + 104));
  *(a1 + 104) = 0;
  *(a1 + 102) = -1;
  return result;
}

uint64_t sub_10005BB8C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v6 = *(*(a1 + 16) + 8 * i);
      if (v6)
      {
        v7 = sub_1000C7A1C(v6, a2);
        v3 = *(a1 + 8);
        if (!v7)
        {
          break;
        }
      }
    }

    if (i != v3 && i != -1)
    {
      goto LABEL_13;
    }

    return 0;
  }

  LODWORD(i) = 0;
  if (!v3)
  {
    return 0;
  }

LABEL_13:
  sub_1000BFEC4(*(*(a1 + 16) + 8 * i));
  *(*(a1 + 16) + 8 * i) = 0;
  v10 = *(a1 + 24);
  v11 = *(v10 + 8 * i);
  if (v11)
  {
    sub_10005BA18(*(v10 + 8 * i));
    sub_1000BFEC4(v11);
    v10 = *(a1 + 24);
  }

  *(v10 + 8 * i) = 0;
  return 1;
}

uint64_t sub_10005BC60(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 24) + 8 * a2);
  v3 = *(v2 + 60);
  if (!v3 || *(v2 + 104))
  {
    return 1;
  }

  *(v2 + 104) = sub_1000BFF20(2 * v3);
  v5 = sub_1000BFF20(2 * *(v2 + 60));
  *(v2 + 112) = v5;
  v6 = *(v2 + 104);
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    sub_1000BFEC4(v5);
    sub_1000BFEC4(*(v2 + 104));
    return 0;
  }

  v8 = **(v2 + 72) - *(v2 + 24);
  if (v8 >= 257)
  {
    if (v8 < 0x10000)
    {
      v10 = 0;
      v12 = **(v2 + 72) - *(v2 + 24);
    }

    else
    {
      v10 = 0;
      v11 = **(v2 + 72) - *(v2 + 24);
      do
      {
        ++v10;
        v12 = v11 >> 1;
        v13 = v11 >> 17;
        v11 >>= 1;
      }

      while (v13);
    }

    v14 = byte_1000F0FAB[v12 >> 8] + v10;
    v9 = byte_1000F0E50[((1 << (v14 - 1)) + v8) >> v14] + byte_1000F0F51[v14];
  }

  else
  {
    v9 = byte_1000F0E50[v8];
  }

  v15 = *(v2 + 98) - v9 + *(v2 + 100);
  *v6 = v15;
  **(v2 + 112) = v15;
  if (*(v2 + 60) >= 2)
  {
    v16 = 1;
    v17 = 44;
    do
    {
      v18 = *(v2 + 100) + *(v2 + 98) - *(*(v2 + 72) + v17);
      *(*(v2 + 104) + 2 * v16) = v18;
      if (qword_1001065A8 && *(qword_1001065A8 + 3464))
      {
        v18 -= *(v2 + 98);
      }

      *(*(v2 + 112) + 2 * v16++) = v18;
      v17 += 40;
    }

    while (v16 < *(v2 + 60));
  }

  if (qword_1001065A8 && *(qword_1001065A8 + 3464))
  {
    return 1;
  }

  v19 = *(v2 + 72);
  result = 1;
  if (*(v19 + 8))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = (*(v19 + 16) + v20);
      v23 = v22[1];
      if (v23 > 0x100)
      {
        v24 = byte_1000F0E50[((1 << (byte_1000F0FAB[v23 >> 8] - 1)) + v23) >> byte_1000F0FAB[v23 >> 8]] + byte_1000F0F51[byte_1000F0FAB[v23 >> 8]];
      }

      else
      {
        v24 = byte_1000F0E50[v23];
      }

      v25 = *v22;
      v26 = *(v2 + 112);
      v27 = *(v26 + 2 * v25);
      v28 = *(v19 + 4) - v24 + *(v2 + 96);
      v29 = v28;
      v30 = v28 - v27;
      v31 = v27 - v28;
      if (v28 >= v27)
      {
        LOWORD(v28) = *(v26 + 2 * v25);
      }

      if (v29 >= v27)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 73)
      {
        LOWORD(v28) = v28 - byte_1000F0F61[v32];
      }

      *(v26 + 2 * v25) = v28;
      ++v21;
      v20 += 4;
    }

    while (v21 < *(v19 + 8));
    return 1;
  }

  return result;
}

uint64_t sub_10005BF04(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4, unsigned int a5)
{
  v5 = *a4;
  if (v5 == 65533)
  {
    v6 = *(*(a1 + 24) + 8 * a2);
    return *(*(v6 + 112) + 2 * *(*(v6 + 16) + 2 * a5));
  }

  v8 = *(*(a1 + 24) + 8 * a2);
  if (a5 != 65532)
  {
    v11 = *(v8 + 16);
    v12 = *(v11 + 2 * a5);
    v13 = *(v8 + 72);
    v14 = *(v11 + 2 * v5);
    v10 = (*(v8 + 100) - *(v13 + 40 * *(v11 + 2 * a5) + 4) + *(v8 + 98));
    v15 = v13 + 40 * v14;
    v16 = *(v15 + 8);
    if (qword_1001065A8 && *(qword_1001065A8 + 3432) > v16)
    {
      if (!*(v15 + 8))
      {
        return v10;
      }

      v17 = 0;
      v18 = *(v15 + 16);
      while (1)
      {
        v19 = *v18;
        v18 += 2;
        v20 = v19 == v12;
        if (v19 >= v12)
        {
          break;
        }

        if (v16 == ++v17)
        {
          return v10;
        }
      }

      if (!v20)
      {
        return v10;
      }

      v25 = *(*(v15 + 16) + 4 * v17 + 2);
      if (v25 > 0x100)
      {
LABEL_36:
        v26 = byte_1000F0E50[((1 << (byte_1000F0FAB[v25 >> 8] - 1)) + v25) >> byte_1000F0FAB[v25 >> 8]] + byte_1000F0F51[byte_1000F0FAB[v25 >> 8]];
LABEL_37:
        v31 = *(v8 + 96) + *(v15 + 4) - v26;
        v33 = v31;
        v34 = v31 - v10;
        LOWORD(v31) = v10 - v31;
        v35 = v10 <= v33;
        if (v10 >= v33)
        {
          LOWORD(v10) = v33;
        }

        if (v35)
        {
          LOWORD(v31) = v34;
        }

        v31 = v31;
        if (v31 <= 73)
        {
          return (v10 - byte_1000F0F61[v31]);
        }

        return v10;
      }
    }

    else
    {
      v21 = *(v15 + 16);
      v22 = 0;
      if (*(v15 + 8))
      {
        v23 = v16 - 1;
        do
        {
          v24 = (v22 + v23) >> 1;
          if (v12 <= *(v21 + 4 * v24))
          {
            v23 = v24 - 1;
          }

          else
          {
            v22 = v24 + 1;
          }
        }

        while (v22 <= v23);
      }

      if (v22 >= v16 || v12 != *(v21 + 4 * v22))
      {
        return v10;
      }

      v25 = *(v21 + 4 * v22 + 2);
      if (v25 > 0x100)
      {
        goto LABEL_36;
      }
    }

    v26 = byte_1000F0E50[v25];
    goto LABEL_37;
  }

  v9 = **(v8 + 112);
  LOWORD(v10) = **(v8 + 112);
  if (qword_1001065A8 && *(qword_1001065A8 + 3464))
  {
    return v10;
  }

  v27 = *(v8 + 72) + 40 * *(*(v8 + 16) + 2 * v5);
  v28 = *(v27 + 16);
  if (*v28)
  {
    return v10;
  }

  v29 = v28[1];
  v30 = v29 > 0x100 ? byte_1000F0E50[((1 << (byte_1000F0FAB[v29 >> 8] - 1)) + v29) >> byte_1000F0FAB[v29 >> 8]] + byte_1000F0F51[byte_1000F0FAB[v29 >> 8]] : byte_1000F0E50[v29];
  v31 = *(v27 + 4) - v30 + *(v8 + 96);
  v32 = v10 - v31;
  if (v31 >= v9)
  {
    LOWORD(v31) = v31 - v10;
  }

  else
  {
    LOWORD(v10) = v31;
    LOWORD(v31) = v32;
  }

  v31 = v31;
  if (v31 > 73)
  {
    return v10;
  }

  return (v10 - byte_1000F0F61[v31]);
}

uint64_t sub_10005C1B8(uint64_t result, int a2, unsigned int a3, int a4, unsigned __int16 *a5, _WORD *a6)
{
  if (a4)
  {
    v6 = *(*(result + 24) + 8 * a2);
    v7 = *(*(v6 + 16) + 2 * a3);
    v8 = *(v6 + 102);
    if (v7 != v8)
    {
      if (v8 != 0xFFFF)
      {
        v9 = *(v6 + 72) + 40 * *(v6 + 102);
        v10 = *(v9 + 8);
        if (*(v9 + 8))
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (*(*(v9 + 16) + v11))
            {
              v13 = *(*(v9 + 16) + v11);
              *(*(v6 + 104) + 2 * v13) = *(v6 + 100) + *(v6 + 98) - *(*(v6 + 72) + 40 * v13 + 4);
              v10 = *(v9 + 8);
            }

            ++v12;
            v11 += 4;
          }

          while (v12 < v10);
        }
      }

      v14 = *(v6 + 72) + 40 * v7;
      v15 = *(v14 + 8);
      if (*(v14 + 8))
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(v14 + 16);
          result = *(v18 + v16);
          if (*(v18 + v16))
          {
            v19 = *(v18 + v16 + 2);
            if (v19 > 0x100)
            {
              v20 = byte_1000F0E50[((1 << (byte_1000F0FAB[v19 >> 8] - 1)) + v19) >> byte_1000F0FAB[v19 >> 8]] + byte_1000F0F51[byte_1000F0FAB[v19 >> 8]];
            }

            else
            {
              v20 = byte_1000F0E50[v19];
            }

            v21 = *(v6 + 104);
            v22 = *(v21 + 2 * result);
            v23 = *(v14 + 4) - v20 + *(v6 + 96);
            v24 = v23;
            v25 = v23 - v22;
            v26 = v22 - v23;
            if (v23 >= v22)
            {
              LOWORD(v23) = *(v21 + 2 * result);
            }

            if (v24 >= v22)
            {
              v27 = v25;
            }

            else
            {
              v27 = v26;
            }

            if (v27 <= 73)
            {
              LOWORD(v23) = v23 - byte_1000F0F61[v27];
            }

            *(v21 + 2 * result) = v23;
            v15 = *(v14 + 8);
          }

          ++v17;
          v16 += 4;
        }

        while (v17 < v15);
      }
    }

    if (a4 >= 1)
    {
      v28 = a4;
      do
      {
        v29 = *a5++;
        *a6++ = *(*(v6 + 104) + 2 * *(*(v6 + 16) + 2 * v29));
        --v28;
      }

      while (v28);
    }

    *(v6 + 102) = v7;
  }

  return result;
}

uint64_t sub_10005C378(uint64_t result, int a2, int a3, unsigned __int16 *a4, _WORD *a5)
{
  if (a3 >= 1)
  {
    v5 = *(*(result + 24) + 8 * a2);
    v6 = a3;
    do
    {
      v7 = *a4++;
      *a5++ = *(*(v5 + 112) + 2 * *(*(v5 + 16) + 2 * v7));
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_10005C3B0(uint64_t a1, int a2, unsigned int a3)
{
  v3 = *(*(a1 + 24) + 8 * a2);
  v4 = **(v3 + 112);
  v5 = **(v3 + 112);
  if (qword_1001065A8 && *(qword_1001065A8 + 3464))
  {
    return v5;
  }

  v7 = *(v3 + 72) + 40 * *(*(v3 + 16) + 2 * a3);
  v8 = *(v7 + 16);
  if (*v8)
  {
    return v5;
  }

  v9 = v8[1];
  v10 = v9 > 0x100 ? byte_1000F0E50[((1 << (byte_1000F0FAB[v9 >> 8] - 1)) + v9) >> byte_1000F0FAB[v9 >> 8]] + byte_1000F0F51[byte_1000F0FAB[v9 >> 8]] : byte_1000F0E50[v9];
  v11 = *(v7 + 4) - v10 + *(v3 + 96);
  v12 = v5 - v11;
  if (v11 >= v4)
  {
    v13 = v11 - v5;
  }

  else
  {
    v5 = v11;
    v13 = v12;
  }

  if (v13 > 73)
  {
    return v5;
  }

  else
  {
    return (v5 - byte_1000F0F61[v13]);
  }
}

BOOL sub_10005C4AC(uint64_t a1, uint64_t a2, char *a3)
{
  __sprintf_chk(v68, 0, 0x100uLL, "%s", "bir0");
  v6 = sub_1000BCAA0(a2, v68, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!sub_1000BCBAC(v6, *(a1 + 8)))
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(a1 + 16) + 8 * v9);
      if (v10)
      {
        v11 = sub_1000C7854(v10) + 1;
        if (!sub_1000BCBAC(v7, v11) || ((v12 = *(*(a1 + 16) + 8 * v9)) != 0 ? (v13 = v11) : (v13 = 0), !sub_1000BCC04(v7, v12, v13, 1)))
        {
LABEL_13:
          v8 = *(a1 + 8);
          if (v9 == v8)
          {
            goto LABEL_14;
          }

LABEL_18:
          v15 = 0;
          goto LABEL_102;
        }
      }

      else if (!sub_1000BCBAC(v7, 0))
      {
        goto LABEL_13;
      }

      if (++v9 >= *(a1 + 8))
      {
        goto LABEL_13;
      }
    }
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v8 >= 1)
  {
    v14 = 0;
    while (1)
    {
      if (*(*(a1 + 16) + 8 * v14))
      {
        v16 = *(*(a1 + 24) + 8 * v14);
        if (!sub_1000BCBAC(v7, *(v16 + 8)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 12)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 24)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 28)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 32)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 56)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 60)))
        {
          goto LABEL_99;
        }

        if (!sub_1000BCBAC(v7, *(v16 + 100)))
        {
          goto LABEL_99;
        }

        v17 = *(v16 + 16);
        if (v17)
        {
          if (!sub_1000BCC04(v7, v17, *(v16 + 12) + 1, 2))
          {
            goto LABEL_99;
          }
        }

        v18 = *(v16 + 32);
        if (v18 < 1)
        {
          if (v18)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v19 = 0;
          for (i = 0; i < *(v16 + 32); ++i)
          {
            v21 = *(v16 + 40);
            if (!sub_1000BCBAC(v7, *(v21 + v19)))
            {
              break;
            }

            v22 = v21 + v19;
            if (!sub_1000BCBAC(v7, *(v21 + v19 + 16)))
            {
              break;
            }

            v23 = sub_1000CB75C(*(v22 + 8));
            if (!sub_1000BCBAC(v7, v23))
            {
              break;
            }

            if (v23 >= 1)
            {
              v24 = *(v22 + 8);
              v25 = v24 ? v23 + 1 : 0;
              if (!sub_1000BCC04(v7, v24, v25, 2))
              {
                break;
              }
            }

            v26 = *(v21 + v19 + 24);
            if (v26)
            {
              if (!sub_1000BCC04(v7, v26, *(v22 + 16), 2))
              {
                break;
              }
            }

            else if (!sub_1000BCC04(v7, 0, 0, 2))
            {
              break;
            }

            v19 += 32;
          }

          if (i != *(v16 + 32))
          {
LABEL_99:
            v8 = *(a1 + 8);
            goto LABEL_101;
          }
        }

        v27 = *(v16 + 60);
        if (v27 < 1)
        {
          if (v27)
          {
            goto LABEL_99;
          }
        }

        else
        {
          for (j = 0; j < *(v16 + 60); ++j)
          {
            v29 = *(v16 + 72) + 40 * j;
            if (!sub_1000BCBAC(v7, *v29) || !sub_1000BCBAC(v7, *(v29 + 4)) || !sub_1000BCBAC(v7, *(v29 + 8)) || !sub_1000BCBAC(v7, *(v29 + 10)) || !sub_1000BCBAC(v7, *(v29 + 24)) || !sub_1000BCBAC(v7, *(v29 + 26)))
            {
              break;
            }

            if (*(v29 + 8) && *(v16 + 28) < *(v29 + 10))
            {
              v37 = sub_1000C9F54(2 * *(v29 + 8), v30, v31, v32, v33, v34, v35, v36);
              v45 = sub_1000C9F54(2 * *(v29 + 8), v38, v39, v40, v41, v42, v43, v44);
              v46 = v45;
              if (*(v29 + 8))
              {
                v47 = 0;
                v48 = 0;
                do
                {
                  v37[v48] = *(*(v29 + 16) + v47);
                  *(v45 + 2 * v48++) = *(*(v29 + 16) + v47 + 2);
                  v49 = *(v29 + 8);
                  v47 += 4;
                }

                while (v48 < v49);
              }

              else
              {
                LODWORD(v49) = 0;
              }

              if (v37)
              {
                v50 = v49;
              }

              else
              {
                v50 = 0;
              }

              if (!sub_1000BCC04(v7, v37, v50, 2))
              {
                break;
              }

              if (v46)
              {
                if (!sub_1000BCC04(v7, v46, *(v29 + 8), 2))
                {
                  break;
                }
              }

              else if (!sub_1000BCC04(v7, 0, 0, 2))
              {
                break;
              }

              sub_1000CA03C(v46, 2 * *(v29 + 8));
              sub_1000CA03C(v37, 2 * *(v29 + 8));
            }

            if (*(v29 + 24) && *(v16 + 28) < *(v29 + 26))
            {
              v51 = sub_1000C9F54(2 * *(v29 + 24), v30, v31, v32, v33, v34, v35, v36);
              v59 = sub_1000C9F54(2 * *(v29 + 24), v52, v53, v54, v55, v56, v57, v58);
              v60 = v59;
              if (*(v29 + 24))
              {
                v61 = 0;
                v62 = 0;
                do
                {
                  v51[v62] = *(*(v29 + 32) + v61);
                  *(v59 + 2 * v62++) = *(*(v29 + 32) + v61 + 2);
                  v63 = *(v29 + 24);
                  v61 += 4;
                }

                while (v62 < v63);
              }

              else
              {
                LODWORD(v63) = 0;
              }

              if (v51)
              {
                v64 = v63;
              }

              else
              {
                v64 = 0;
              }

              if (!sub_1000BCC04(v7, v51, v64, 2))
              {
                break;
              }

              if (v60)
              {
                if (!sub_1000BCC04(v7, v60, *(v29 + 24), 2))
                {
                  break;
                }
              }

              else if (!sub_1000BCC04(v7, 0, 0, 2))
              {
                break;
              }

              sub_1000CA03C(v60, 2 * *(v29 + 24));
              sub_1000CA03C(v51, 2 * *(v29 + 24));
            }
          }

          v27 = *(v16 + 60);
          if (j != v27)
          {
            goto LABEL_99;
          }
        }

        v65 = *(v16 + 80);
        if (v65)
        {
          if (!sub_1000BCC04(v7, v65, *(v16 + 28) * v27, 4))
          {
            goto LABEL_99;
          }
        }

        else if (!sub_1000BCC04(v7, 0, 0, 4))
        {
          goto LABEL_99;
        }

        v66 = *(v16 + 88);
        if (v66)
        {
          if (!sub_1000BCC04(v7, v66, *(v16 + 60) * *(v16 + 28), 4))
          {
            goto LABEL_99;
          }
        }

        else if (!sub_1000BCC04(v7, 0, 0, 4))
        {
          goto LABEL_99;
        }

        v8 = *(a1 + 8);
      }

      if (++v14 >= v8)
      {
        goto LABEL_99;
      }
    }
  }

  LODWORD(v14) = 0;
LABEL_101:
  v15 = v14 == v8;
LABEL_102:
  sub_1000BCB64(v7);
  return v15;
}

uint64_t sub_10005CAE0(uint64_t a1, uint64_t a2, char *a3)
{
  __sprintf_chk(v89, 0, 0x100uLL, "%s", "bir0");
  v11 = sub_1000BBAE0(a2, v89, a3, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000BBD54(v11, (a1 + 8));
    v14 = *(a1 + 8);
    if (!v13)
    {
      goto LABEL_133;
    }

    *(a1 + 12) = v14;
    if (v14 < 1)
    {
      goto LABEL_21;
    }

    *(a1 + 16) = sub_1000C0034(8 * v14);
    v15 = (a1 + 16);
    v16 = sub_1000C0034(8 * *(a1 + 8));
    *(a1 + 24) = v16;
    if (*(a1 + 16))
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      sub_1000BFEC4(v16);
      sub_1000BFEC4(*v15);
      *(a1 + 8) = 0;
      *v15 = 0;
      *(a1 + 24) = 0;
LABEL_137:
      sub_10005B8AC(a1);
      v18 = 0;
      goto LABEL_138;
    }

    LODWORD(v14) = *(a1 + 8);
    if (v14 < 1)
    {
LABEL_21:
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_133;
    }

    v19 = 0;
    v20 = 0;
    do
    {
      v88 = 0;
      if (!sub_1000BBD54(v12, &v88) || v88 >= 1 && ((v87 = 0, !sub_1000BBF0C(v12, 1, (*v15 + v19), &v87)) || *(*v15 + 8 * v20) && v87 != v88))
      {
        LODWORD(v14) = *(a1 + 8);
        if (v20 == v14)
        {
          goto LABEL_22;
        }

        goto LABEL_133;
      }

      ++v20;
      v14 = *(a1 + 8);
      v19 += 8;
    }

    while (v20 < v14);
    if (v20 != v14)
    {
      goto LABEL_133;
    }

LABEL_22:
    if (v14 < 1)
    {
      LODWORD(v21) = 0;
LABEL_119:
      LODWORD(v14) = *(a1 + 8);
      if (v21 == v14)
      {
LABEL_132:
        v18 = 1;
LABEL_138:
        sub_1000BBBC4(v12);
        return v18;
      }

LABEL_133:
      if (v14 >= 1 && !*(a1 + 16) && !*(a1 + 24))
      {
        *(a1 + 8) = 0;
      }

      goto LABEL_137;
    }

    v21 = 0;
    while (1)
    {
      if (!*(*(a1 + 16) + 8 * v21))
      {
        goto LABEL_24;
      }

      *(*(a1 + 24) + 8 * v21) = sub_1000C0034(336);
      v22 = *(*(a1 + 24) + 8 * v21);
      if (!v22)
      {
        goto LABEL_119;
      }

      *v22 = *a1;
      v23 = qword_1001065A8;
      if (qword_1001065A8)
      {
        v23 = *(qword_1001065A8 + 3472) / 5;
      }

      *(*(*(a1 + 24) + 8 * v21) + 96) = asc_1000F2F81[-v23 + 20];
      *(*(*(a1 + 24) + 8 * v21) + 98) = asc_1000F2F81[v23];
      *(*(*(a1 + 24) + 8 * v21) + 102) = -1;
      v24 = *(*(a1 + 24) + 8 * v21);
      v88 = 0;
      if (!sub_1000BBD54(v12, &v88))
      {
        goto LABEL_125;
      }

      v24[2] = v88;
      if (!sub_1000BBD54(v12, v24 + 3) || !sub_1000BBD54(v12, v24 + 6) || !sub_1000BBD54(v12, v24 + 7) || !sub_1000BBD54(v12, v24 + 8) || !sub_1000BBD54(v12, v24 + 14) || !sub_1000BBD54(v12, v24 + 15) || !sub_1000BBDFC(v12, v24 + 50))
      {
        goto LABEL_125;
      }

      v25 = v24[8];
      v24[9] = v25;
      v24[16] = v24[15];
      if ((v24[3] & 0x80000000) == 0)
      {
        v88 = 0;
        if (!sub_1000BBF0C(v12, 2, v24 + 2, &v88) || *(v24 + 2) && v88 != v24[3] + 1)
        {
          goto LABEL_125;
        }

        v25 = v24[8];
      }

      if (v25 < 1)
      {
        LODWORD(v28) = 0;
      }

      else
      {
        v26 = sub_1000C0034(32 * v25);
        *(v24 + 5) = v26;
        if (!v26)
        {
          v24[8] = 0;
LABEL_124:
          v24[15] = 0;
LABEL_125:
          if (v24[15] >= 1 && !*(v24 + 9))
          {
            v24[15] = 0;
          }

          if (v24[8] >= 1 && !*(v24 + 5))
          {
            v24[8] = 0;
          }

          sub_1000BFEC4(*(*(a1 + 24) + 8 * v21));
          *(*(a1 + 24) + 8 * v21) = 0;
          LODWORD(v14) = *(a1 + 8);
          if (v21 == v14)
          {
            goto LABEL_132;
          }

          goto LABEL_133;
        }

        if (v24[8] < 1)
        {
          if (v24[8])
          {
            goto LABEL_125;
          }

          goto LABEL_60;
        }

        v27 = 0;
        v28 = 0;
        do
        {
          v29 = *(v24 + 5);
          v30 = v29 + v27;
          v88 = 0;
          if (!sub_1000BBD54(v12, (v29 + v27)))
          {
            break;
          }

          if (!sub_1000BBD54(v12, (v30 + 16)))
          {
            break;
          }

          if (!sub_1000BBD54(v12, &v88))
          {
            break;
          }

          if (v88 >= 1)
          {
            v87 = 0;
            if (!sub_1000BBF0C(v12, 2, (v29 + v27 + 8), &v87) || *(v29 + v27 + 8) && v87 != v88 + 1)
            {
              break;
            }
          }

          v87 = 0;
          v31 = v29 + v27;
          if (!sub_1000BBF0C(v12, 2, (v31 + 24), &v87) || *(v31 + 24) && v87 != *(v30 + 16))
          {
            break;
          }

          ++v28;
          v27 += 32;
        }

        while (v28 < v24[8]);
      }

      if (v28 != v24[8])
      {
        goto LABEL_125;
      }

LABEL_60:
      v32 = v24[15];
      if (v32 <= 0)
      {
        LODWORD(i) = 0;
        v34 = (v24 + 18);
      }

      else
      {
        v33 = sub_1000C0034(40 * v32);
        *(v24 + 9) = v33;
        v34 = (v24 + 18);
        if (!v33)
        {
          goto LABEL_124;
        }

        LODWORD(v32) = v24[15];
        if (v32 < 1)
        {
          LODWORD(i) = 0;
        }

        else
        {
          for (i = 0; i < v24[15]; ++i)
          {
            v37 = *v34 + 40 * i;
            if (!sub_1000BBD54(v12, v37) || !sub_1000BBD54(v12, (v37 + 4)) || !sub_1000BBDFC(v12, (v37 + 8)) || !sub_1000BBDFC(v12, (v37 + 10)) || !sub_1000BBDFC(v12, (v37 + 24)) || !sub_1000BBDFC(v12, (v37 + 26)))
            {
              break;
            }

            if (*(v37 + 8) && v24[7] < *(v37 + 10))
            {
              v45 = sub_1000C9F54(2 * *(v37 + 8), v38, v39, v40, v41, v42, v43, v44);
              v53 = sub_1000C9F54(2 * *(v37 + 8), v46, v47, v48, v49, v50, v51, v52);
              if (!sub_1000BBE54(v12, v45, *(v37 + 8), 2))
              {
                break;
              }

              if (!sub_1000BBE54(v12, v53, *(v37 + 8), 2))
              {
                break;
              }

              v54 = sub_1000C0034(4 * *(v37 + 10));
              *(v37 + 16) = v54;
              if (!v54)
              {
                break;
              }

              if (*(v37 + 8))
              {
                v55 = 0;
                v56 = 0;
                do
                {
                  *(*(v37 + 16) + v55) = *(v45 + v56);
                  *(*(v37 + 16) + v55 + 2) = *(v53 + v56++);
                  v57 = *(v37 + 8);
                  v55 += 4;
                }

                while (v56 < v57);
                v58 = 2 * v57;
              }

              else
              {
                v58 = 0;
              }

              sub_1000CA03C(v53, v58);
              sub_1000CA03C(v45, 2 * *(v37 + 8));
            }

            if (*(v37 + 24) && v24[7] < *(v37 + 26))
            {
              v59 = sub_1000C9F54(2 * *(v37 + 24), v38, v39, v40, v41, v42, v43, v44);
              v67 = sub_1000C9F54(2 * *(v37 + 24), v60, v61, v62, v63, v64, v65, v66);
              if (!sub_1000BBE54(v12, v59, *(v37 + 24), 2))
              {
                break;
              }

              if (!sub_1000BBE54(v12, v67, *(v37 + 24), 2))
              {
                break;
              }

              v68 = sub_1000C0034(4 * *(v37 + 26));
              *(v37 + 32) = v68;
              if (!v68)
              {
                break;
              }

              if (*(v37 + 24))
              {
                v69 = 0;
                v70 = 0;
                do
                {
                  *(*(v37 + 32) + v69) = *(v59 + v70);
                  *(*(v37 + 32) + v69 + 2) = *(v67 + v70++);
                  v71 = *(v37 + 24);
                  v69 += 4;
                }

                while (v70 < v71);
                v36 = 2 * v71;
              }

              else
              {
                v36 = 0;
              }

              sub_1000CA03C(v67, v36);
              sub_1000CA03C(v59, 2 * *(v37 + 24));
            }
          }

          LODWORD(v32) = v24[15];
        }
      }

      if (i != v32)
      {
        goto LABEL_125;
      }

      v88 = 0;
      if (!sub_1000BBF0C(v12, 4, v24 + 10, &v88) || *(v24 + 10) && v88 != v24[15] * v24[7])
      {
        goto LABEL_125;
      }

      v88 = 0;
      if (!sub_1000BBF0C(v12, 4, v24 + 11, &v88))
      {
        goto LABEL_125;
      }

      v77 = v24[15];
      if (*(v24 + 11))
      {
        if (v88 != v24[7] * v77)
        {
          goto LABEL_125;
        }
      }

      if (v77 >= 1)
      {
        v78 = 0;
        for (j = 0; j < v24[15]; ++j)
        {
          v80 = *v34;
          v81 = *v34 + v78;
          v82 = v24[7];
          if (v82 >= *(v81 + 10))
          {
            *(v81 + 16) = *(v24 + 10) + 4 * j * v82;
            v82 = v24[7];
            if (v82 >= *(v81 + 26))
            {
LABEL_112:
              *(v80 + v78 + 32) = *(v24 + 11) + 0x3333333333333334 * ((v78 + v80 - *v34) >> 3) * v82;
            }
          }

          else if (v82 >= *(v81 + 26))
          {
            goto LABEL_112;
          }

          v78 += 40;
        }
      }

      v83 = sub_1000BDBCC(2 * v24[8], sub_10005D42C, 0, v72, v73, v74, v75, v76);
      *(v24 + 6) = v83;
      if (!v83)
      {
        goto LABEL_125;
      }

      sub_1000BDC9C(v83, 0.5);
      if (v24[8] >= 1)
      {
        v84 = 0;
        v85 = 0;
        do
        {
          sub_1000BDE7C(*(v24 + 6), *(v24 + 5) + v84);
          ++v85;
          v84 += 32;
        }

        while (v85 < v24[8]);
      }

LABEL_24:
      if (++v21 >= *(a1 + 8))
      {
        goto LABEL_119;
      }
    }
  }

  return 0;
}

uint64_t sub_10005D440(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 72));
    v1[8] = 0;
    v1[9] = 0;
    sub_1000C02DC(v1[7]);
    v1[6] = 0;
    v1[7] = 0;
    sub_1000BFEC4(v1[5]);
    v1[4] = 0;
    v1[5] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

int *sub_10005D4A4(int *result, int16x8_t *a2, uint64_t a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = result[4] + result[6];
    v5 = v4 - result[5];
    v6 = 1 << (*(result + 16) + *(result + 24) - 1);
    v7 = *(result + 4);
    do
    {
      v10 = *(v7 + 4 * v3);
      v11 = result[1];
      if (v11 == 1)
      {
        v8 = **(*(result + 6) + 8 * v10) * a2->i16[v10];
        goto LABEL_4;
      }

      if (v11 < 1)
      {
        v8 = 0;
        goto LABEL_4;
      }

      v12 = *(*(result + 6) + 8 * v10);
      if (v11 < 4)
      {
        LODWORD(v13) = 0;
        v8 = 0;
        v14 = *(*(result + 6) + 8 * v10);
        v15 = a2;
        goto LABEL_23;
      }

      if (v11 >= 0x10)
      {
        v16 = v11 & 0x7FFFFFF0;
        v17 = v12 + 1;
        v18 = 0uLL;
        v19 = v16;
        v20 = a2 + 1;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v24 = v20[-1];
          v25 = v17[-1];
          v21 = vmlal_high_s16(v21, v25, v24);
          v18 = vmlal_s16(v18, *v25.i8, *v24.i8);
          v23 = vmlal_high_s16(v23, *v17, *v20);
          v22 = vmlal_s16(v22, *v17->i8, *v20->i8);
          v20 += 2;
          v17 += 2;
          v19 -= 16;
        }

        while (v19);
        v8 = vaddvq_s32(vaddq_s32(vaddq_s32(v22, v18), vaddq_s32(v23, v21)));
        if (v16 == v11)
        {
          goto LABEL_4;
        }

        if ((v11 & 0xC) == 0)
        {
          v15 = (a2 + 2 * v16);
          v14 = &v12->i16[v16];
          LODWORD(v13) = v11 & 0x7FFFFFF0;
LABEL_23:
          v33 = v11 - v13;
          do
          {
            v35 = v15->i16[0];
            v15 = (v15 + 2);
            v34 = v35;
            v36 = *v14++;
            v8 += v36 * v34;
            --v33;
          }

          while (v33);
          goto LABEL_4;
        }
      }

      else
      {
        v8 = 0;
        v16 = 0;
      }

      v13 = v11 & 0x7FFFFFFC;
      v14 = &v12->i16[v13];
      v15 = (a2 + 2 * v13);
      v26 = v8;
      v27 = (a2 + 2 * v16);
      v28 = (v12 + 2 * v16);
      v29 = v16 - v13;
      do
      {
        v30 = *v27++;
        v31 = v30;
        v32 = *v28++;
        v26 = vmlal_s16(v26, v32, v31);
        v29 += 4;
      }

      while (v29);
      v8 = vaddvq_s32(v26);
      if (v13 != v11)
      {
        goto LABEL_23;
      }

LABEL_4:
      v9 = (v8 + v6 + (*(*(result + 8) + 2 * v10) << v5)) >> v4;
      if (v9 >= 255)
      {
        v9 = 255;
      }

      *(a3 + v3++) = v9 & ~(v9 >> 31);
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_10005D678(int *result, uint64_t a2, _DWORD *a3)
{
  *a3 = result[4] + result[6];
  if (*(result + 6))
  {
    if (result[3] >= 1)
    {
      v3 = 0;
      do
      {
        *(a2 + 2 * v3) = **(*(result + 6) + 8 * v3);
        ++v3;
      }

      while (v3 < result[3]);
    }
  }

  else if (*result >= 1)
  {
    v4 = 0;
    do
    {
      *(a2 + 2 * v4++) = 1;
    }

    while (v4 < *result);
  }

  return result;
}

uint64_t *sub_10005D6F8(uint64_t a1, char *a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000BBAE0(a1, "bld0", a2, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v14 = 0;
  *a3 = 0;
  v11 = sub_1000C0034(80);
  if (v11)
  {
    v14 = 0;
    if (sub_10005D838(v10, v11))
    {
      if (!sub_1000BBD04(v10, &v14) || !v14)
      {
        goto LABEL_14;
      }

      v12 = sub_1000C0034(80);
      if (v12 && sub_10005D838(v10, v12))
      {
        *a3 = v12;
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
    }

    sub_1000BFEC4(v11[9]);
    v11[8] = 0;
    v11[9] = 0;
    sub_1000C02DC(v11[7]);
    v11[6] = 0;
    v11[7] = 0;
    sub_1000BFEC4(v11[5]);
    v11[4] = 0;
    v11[5] = 0;
    sub_1000BFEC4(v11);
    if (v12)
    {
      sub_1000BFEC4(v12[9]);
      v12[8] = 0;
      v12[9] = 0;
      sub_1000C02DC(v12[7]);
      v12[6] = 0;
      v12[7] = 0;
      sub_1000BFEC4(v12[5]);
      v12[4] = 0;
      v12[5] = 0;
      sub_1000BFEC4(v12);
    }

    v11 = 0;
  }

LABEL_14:
  sub_1000BBBC4(v10);
  return v11;
}

uint64_t sub_10005D838(uint64_t a1, uint64_t *a2)
{
  result = sub_1000BBD54(a1, a2);
  if (result)
  {
    result = sub_1000BBD54(a1, a2 + 4);
    if (result)
    {
      result = sub_1000BBD54(a1, a2 + 1);
      if (result)
      {
        result = sub_1000BBD54(a1, a2 + 12);
        if (result)
        {
          result = sub_1000BBD54(a1, a2 + 2);
          if (result)
          {
            result = sub_1000BBD54(a1, a2 + 20);
            if (result)
            {
              result = sub_1000BBD54(a1, a2 + 3);
              if (result)
              {
                v9 = 0;
                if (sub_1000BBF0C(a1, 4, a2 + 5, &v9))
                {
                  v5 = a2[5];
                  if (!v5)
                  {
                    goto LABEL_12;
                  }

                  if (v9 == *a2)
                  {
                    a2[4] = v5;
LABEL_12:
                    v8 = 0;
                    if (sub_1000BBF0C(a1, 2, a2 + 9, &v8))
                    {
                      v6 = a2[9];
                      if (!v6)
                      {
                        v7 = *(a2 + 2);
LABEL_20:
                        result = sub_1000C0384(2, v7, *(a2 + 1));
                        a2[7] = result;
                        if (result)
                        {
                          a2[6] = result;
                          return sub_1000BC3DC(a1, result, *(a2 + 2), *(a2 + 1), 2) != 0;
                        }

                        return result;
                      }

                      v7 = v8;
                      if (v8 == *(a2 + 2))
                      {
                        a2[8] = v6;
                        goto LABEL_20;
                      }
                    }

                    return 0;
                  }
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10005D9A0()
{
  result = sub_1000C0034(888);
  if (result)
  {
    *(result + 16) = 1;
  }

  return result;
}

void *sub_10005D9C8(void *result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  result[1] = a2;
  return result;
}

uint64_t sub_10005D9D0(_DWORD *a1)
{
  LODWORD(v2) = a1[7];
  if (v2 >= 1)
  {
    v3 = 93;
    v4 = a1;
    do
    {
      if (a1[4] || v3 - 93 == v2 - 1 && a1[8] == 1)
      {
        sub_1000BFEC4(v4[77]);
        v4[77] = 0;
        v6 = v4[93];
        if (v6)
        {
          sub_1000BFEC4(v6);
          v4[93] = 0;
        }

        v7 = v4[21];
        if (v7)
        {
          sub_1000BFEC4(v7);
          v4[21] = 0;
        }
      }

      v2 = a1[7];
      v5 = v3 - 92;
      ++v3;
      ++v4;
    }

    while (v5 < v2);
  }

  return sub_1000BFEC4(a1);
}

uint64_t sub_10005DA94(uint64_t a1)
{
  if (*(a1 + 28) >= 1)
  {
    v2 = 0;
    v3 = a1;
    do
    {
      sub_1000BFEC4(v3[77]);
      v3[77] = 0;
      v4 = v3[93];
      if (v4)
      {
        sub_1000BFEC4(v4);
        v3[93] = 0;
      }

      v5 = v3[21];
      if (v5)
      {
        sub_1000BFEC4(v5);
        v3[21] = 0;
      }

      ++v2;
      ++v3;
    }

    while (v2 < *(a1 + 28));
  }

  return sub_1000BFEC4(a1);
}

void *sub_10005DB2C(uint64_t *a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5, uint64_t a6, uint64_t *a7)
{
  sub_10005DC2C(a1, a2, a3, a4, a5, a6, a7);
  v13 = sub_1000B2164(a1) + 3;
  v21 = sub_1000C9FC0(4 * v13, v14, v15, v16, v17, v18, v19, v20);
  qword_100101740 = v21;
  *algn_100101748 = &v21[v13];
  *v21 = 0;
  v21[v13] = 0;
  if (a5)
  {
    qword_100101750 = a6;
    qsort(a3, a4, 2uLL, sub_10005DD54);
    qword_100101750 = 0;
  }

  else
  {
    qword_100101758 = a1;
    qword_100101760 = a2;
    qsort(a3, a4, 2uLL, sub_10005DE24);
  }

  v22 = qword_100101740;

  return sub_1000CA03C(v22, 4 * v13);
}

uint64_t *sub_10005DC2C(uint64_t *result, uint64_t a2, unsigned __int16 *a3, int a4, int a5, uint64_t a6, uint64_t *a7)
{
  if (a5)
  {
    v11 = result;
    v12 = sub_1000B2164(result);
    v38 = 2 * v12;
    v20 = sub_1000C9FC0(v38 + 2, v13, v14, v15, v16, v17, v18, v19);
    *a7 = sub_1000C0E9C(v12 * a4, (v12 * a4 + ((v12 * a4) >> 31)) >> 1, 2, v21, v22, v23, v24, v25);
    if (a4 >= 1)
    {
      v26 = a4;
      do
      {
        v27 = *a3++;
        v28 = sub_1000B811C(v11, v27, v20);
        v35 = sub_1000C1060(*a7, 2 * v28 + 2, v29, v30, v31, v32, v33, v34);
        sub_100002454(a2, v20, v28, v35, 0, 0, v36, v37);
        v35[v28] = 0x7FFF;
        *(a6 + 8 * v27) = v35;
        --v26;
      }

      while (v26);
    }

    return sub_1000CA03C(v20, v38 + 2);
  }

  return result;
}

uint64_t sub_10005DD54(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *(qword_100101750 + 8 * *a1);
  v5 = *(qword_100101750 + 8 * *a2);
  v6 = sub_100098C00(v4);
  v7 = sub_100098C00(v5);
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 < 1)
  {
LABEL_10:
    if (v6 == v7)
    {
      v14 = *a1;
      v15 = *a2;
      v12 = v14 >= v15;
      LODWORD(v13) = v14 != v15;
      if (v12)
      {
        return v13;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v6 > v7)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    while (1)
    {
      v10 = *v4++;
      v9 = v10;
      v11 = *v5++;
      v12 = v9 >= v11;
      LODWORD(v13) = v9 != v11;
      v13 = v12 ? v13 : 0xFFFFFFFFLL;
      if (v13)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_10;
      }
    }
  }

  return v13;
}

uint64_t sub_10005DE24(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = qword_100101740;
  v5 = *algn_100101748;
  sub_1000B811C(qword_100101758, *a1, (qword_100101740 + 2));
  sub_1000B811C(qword_100101758, *a2, (v5 + 2));
  v10 = *a1;
  v11 = *a2;

  return sub_1000610D8((v4 + 2), (v5 + 2), v10, v11, v6, v7, v8, v9);
}

uint64_t sub_10005DEA4(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, unsigned __int16 *a5, uint64_t a6, int a7, int a8, int a9, uint64_t a10, int a11, int a12, int a13, int *a14, uint64_t a15)
{
  v21 = a12;
  v20 = a13;
  v22 = sub_1000CA0BC();
  v209 = v22;
  if (a2)
  {
    v30 = v22;
    v31 = sub_1000B2164(a2);
    if (a12)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    v40 = v31 + v39;
    v41 = sub_1000C9FC0(2 * (v31 + v39) + 2, v32, v33, v34, v35, v36, v37, v38);
  }

  else
  {
    if (a4 < 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = 0;
      v43 = a4;
      v44 = a5;
      do
      {
        v45 = *v44++;
        v46 = sub_100098BE4(*(a6 + 8 * v45));
        if (v46 > v42)
        {
          v42 = v46;
        }

        --v43;
      }

      while (v43);
    }

    v41 = 0;
    a7 = 0;
    v21 = a12;
    if (a12)
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    v40 = v42 + v47;
    v20 = a13;
    v30 = v209;
  }

  v199 = v41;
  v202 = a2;
  v48 = 0;
  v49 = v20 == 0;
  v50 = v40 + 100 >= a8;
  v51 = !v49 || !v50;
  if (!v49 || !v50)
  {
    a9 = v40 + 100;
  }

  if (v51)
  {
    v53 = v40 + 100;
  }

  else
  {
    v53 = a8;
  }

  v232 = v53;
  v233 = a9;
  v203 = 0;
  if (a4)
  {
    v223 = 0;
    if (!a7)
    {
      v54 = 2 * v40;
      v203 = sub_1000C9FC0(v54 + 4, v23, v24, v25, v26, v27, v28, v29);
      v223 = sub_1000C9FC0(v54 + 4, v55, v56, v57, v58, v59, v60, v61);
      v48 = sub_1000C9FC0(v54 + 4, v62, v63, v64, v65, v66, v67, v68);
    }

    v210 = 4 * v40;
    v224 = sub_1000C9FC0(v210, v23, v24, v25, v26, v27, v28, v29);
    v76 = *(a1 + 28);
    if (v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v223 = 0;
    v210 = 4 * v40;
    v224 = sub_1000C9FC0(v210, v23, v24, v25, v26, v27, v28, v29);
    v76 = *(a1 + 28);
    if (v20)
    {
LABEL_27:
      v76 -= *(a1 + 32) == 1;
    }
  }

  v211 = v76;
  v204 = v40;
  if (v40 > *(a1 + 104 + 4 * v76))
  {
    v77 = v40 + 5;
    v78 = sub_1000C0034(4 * v77);
    if (!v78)
    {
      v115 = v30;
      goto LABEL_201;
    }

    v79 = v78;
    v80 = a1 + 8 * v211;
    sub_1000BFEC4(*(v80 + 168));
    *(v80 + 168) = v79;
    *(a1 + 104 + 4 * v211) = v77;
  }

  v237[0] = 0;
  v236 = 0;
  __src = sub_1000C9FC0(v210, v69, v70, v71, v72, v73, v74, v75);
  if (a11)
  {
    v81 = a11;
  }

  else
  {
    v81 = 65533;
  }

  v229 = v81;
  v205 = a1;
  v201 = a4;
  v198 = a6;
  v208 = v21;
  if (!a4)
  {
    v234 = 0;
    *v224 = 1;
LABEL_124:
    v89 = 2;
LABEL_125:
    sub_1000CA03C(__src, v210);
    v116 = v89;
    v117 = v209;
    v124 = v201;
    v119 = v205;
    v120 = a5;
    v121 = v211;
    v122 = a13;
    v123 = a11;
    if (!a11)
    {
      goto LABEL_126;
    }

    goto LABEL_110;
  }

  if (!a7)
  {
    v114 = *a5;
    if (a15)
    {
      sub_100099F24(a15, v114, 0, &v236, v237);
      LODWORD(v83) = v237[0];
      memcpy(v48, v236, 2 * v237[0]);
      if (v21)
      {
        v48[v83] = 0;
        LODWORD(v83) = v83 + 1;
        v237[0] = v83;
      }
    }

    else
    {
      if (v202)
      {
        v126 = v199;
        v127 = sub_1000B811C(v202, v114, v199);
        LODWORD(v83) = v127;
        v237[0] = v127;
        if (v21)
        {
          v199[v127] = 0;
          v83 = v127 + 1;
          v237[0] = v127 + 1;
          v199[v83] = -1;
        }
      }

      else
      {
        v126 = *(a6 + 8 * v114);
        LODWORD(v83) = sub_100098BE4(v126);
        v237[0] = v83;
      }

      sub_100002454(a3, v126, v83, v48, 0, 0, v128, v129);
    }

    v84 = v203;
    v48[v83] = 0x7FFF;
    v82 = v48;
    v85 = v224;
    *v224 = 1;
    v227 = (a4 - 1);
    if (a4 >= 1)
    {
      goto LABEL_37;
    }

    goto LABEL_123;
  }

  v82 = *(a10 + 8 * *a5);
  LODWORD(v83) = sub_100098C00(v82);
  v84 = 0;
  v85 = v224;
  *v224 = 1;
  v227 = (a4 - 1);
  if (a4 < 1)
  {
LABEL_123:
    v234 = 0;
    goto LABEL_124;
  }

LABEL_37:
  v234 = 0;
  v86 = 0;
  v216 = 0;
  v218 = 0;
  LODWORD(v87) = 0;
  v88 = 0;
  v212 = a5 + 1;
  __n = 4 * v204;
  v200 = v85 + 5;
  v207 = v85 + 1;
  v89 = 2;
  v90.i64[0] = 0x100000001;
  v90.i64[1] = 0x100000001;
  __dst = v223;
  v225 = a4;
  while (1)
  {
    v91 = v83;
    v92 = v87;
    if (a7)
    {
      if (v86 == v227)
      {
        LODWORD(v83) = 0;
        LODWORD(v87) = 0;
        __dst = v84;
        v84 = v82;
        v82 = 0;
        goto LABEL_70;
      }

      v87 = *(a10 + 8 * v212[v86]);
      v93 = sub_100098C00(v87);
      LODWORD(v83) = v93;
      if (v91 >= v93)
      {
        v94 = v93;
      }

      else
      {
        v94 = v91;
      }

      if (!v87)
      {
        __dst = v84;
        v84 = v82;
        v82 = 0;
        v90.i64[0] = 0x100000001;
        v90.i64[1] = 0x100000001;
        goto LABEL_70;
      }

      __dst = v84;
      v84 = v82;
      v82 = v87;
      v90.i64[0] = 0x100000001;
      v90.i64[1] = 0x100000001;
      if (v94 < 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v86)
      {
        memcpy(__dst, v84, 2 * v88 + 2);
      }

      memcpy(v84, v82, 2 * v83 + 2);
      if (v86 == v227)
      {
        LODWORD(v83) = 0;
      }

      else
      {
        v95 = v212[v86];
        if (a15)
        {
          sub_100099F24(a15, v95, 0, &v236, v237);
          memcpy(v82, v236, 2 * v237[0]);
          LODWORD(v83) = v237[0];
          if (v208)
          {
            v82[v237[0]] = 0;
            LODWORD(v83) = ++v237[0];
          }
        }

        else
        {
          if (v202)
          {
            v83 = v199;
            v96 = sub_1000B811C(v202, v95, v199);
            LODWORD(v99) = v96;
            v237[0] = v96;
            if (v208)
            {
              v199[v96] = 0;
              v99 = v96 + 1;
              v237[0] = v96 + 1;
              v199[v99] = -1;
            }
          }

          else
          {
            v83 = *(v198 + 8 * v95);
            LODWORD(v99) = sub_100098BE4(v83);
            v237[0] = v99;
          }

          sub_100002454(a3, v83, v99, v82, 0, 0, v97, v98);
          LODWORD(v83) = v237[0];
        }
      }

      v90.i64[0] = 0x100000001;
      v90.i64[1] = 0x100000001;
      v82[v83] = 0x7FFF;
      if (v91 >= v83)
      {
        v94 = v83;
      }

      else
      {
        v94 = v91;
      }

      if (v94 < 2)
      {
LABEL_51:
        LODWORD(v87) = 0;
        goto LABEL_70;
      }
    }

    v100 = 0;
    v87 = (v94 - 1);
    while (v84[v100] == v82[v100])
    {
      if (v87 == ++v100)
      {
        goto LABEL_70;
      }
    }

    LODWORD(v87) = v100;
LABEL_70:
    if (v92 <= v87)
    {
      v101 = v87;
    }

    else
    {
      v101 = v92;
    }

    if (v91 >= v232)
    {
      v102 = v232;
    }

    else
    {
      v102 = v91;
    }

    if (v101 + 1 >= v232)
    {
      v103 = v101 + 1;
    }

    else
    {
      v103 = v102;
    }

    if (v92 >= v233)
    {
      v104 = v233;
    }

    else
    {
      v104 = v92;
    }

    if (v103 <= v233)
    {
      v105 = v103;
    }

    else
    {
      v92 = v104;
      v105 = v233 + 1;
    }

    v106 = v234;
    if (v105 < v91)
    {
      v106 = 1;
    }

    v234 = v106;
    if (v105 + v89 - v92 > v229)
    {
      break;
    }

    if (v86 && !v92)
    {
      memcpy(__src, v224, __n);
      v90.i64[0] = 0x100000001;
      v90.i64[1] = 0x100000001;
      v218 = v89;
      v216 = v86;
    }

    if (v92 < v105)
    {
      v107 = v105 - v92;
      v108 = v92;
      if (v107 < 8)
      {
        goto LABEL_96;
      }

      v108 = (v107 & 0xFFFFFFFFFFFFFFF8) + v92;
      v109 = &v200[v92];
      v110 = v107 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v111 = vaddq_s32(*v109, v90);
        v109[-1] = vaddq_s32(v109[-1], v90);
        *v109 = v111;
        v109 += 2;
        v110 -= 8;
      }

      while (v110);
      if (v107 != (v107 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_96:
        v112 = v105 - v108;
        v113 = &v207[v108];
        do
        {
          ++*v113++;
          --v112;
        }

        while (v112);
      }
    }

    v89 = v89 - v92 + v105;
    ++v86;
    v88 = v91;
    if (v86 == v225)
    {
      goto LABEL_125;
    }
  }

  v116 = v218;
  if (!v218)
  {
    v216 = v86;
    v116 = v89;
    v117 = v209;
    v118 = v201;
    v119 = v205;
    v120 = a5;
    v121 = v211;
    v122 = a13;
    v123 = a11;
    sub_1000CA03C(__src, v210);
    if (!a13)
    {
      goto LABEL_117;
    }

LABEL_108:
    v124 = v216;
    if (v216 != v118)
    {
      goto LABEL_200;
    }

    if (!v123)
    {
      goto LABEL_126;
    }

    goto LABEL_110;
  }

  memcpy(v224, __src, __n);
  v117 = v209;
  v118 = v201;
  v119 = v205;
  v120 = a5;
  v121 = v211;
  v122 = a13;
  v123 = a11;
  sub_1000CA03C(__src, v210);
  if (a13)
  {
    goto LABEL_108;
  }

LABEL_117:
  v124 = v216;
  if (v123)
  {
LABEL_110:
    if (v116 <= v123)
    {
      if (!v122)
      {
        goto LABEL_130;
      }

      v125 = *(v119 + 32);
      goto LABEL_129;
    }

    goto LABEL_200;
  }

LABEL_126:
  v130 = v119 + 8 * v121;
  sub_1000BFEC4(*(v130 + 616));
  sub_1000BFEC4(*(v130 + 744));
  v123 = v116;
  if (!v122)
  {
    goto LABEL_130;
  }

  v125 = *(v119 + 32);
  v123 = v116;
  if (v125 == 1)
  {
    *(v119 + 28) = (*(v119 + 28) - 1);
    v123 = v116;
    goto LABEL_130;
  }

LABEL_129:
  if (v125)
  {
LABEL_134:
    v213 = v119 + 8 * v121;
    v133 = *(v213 + 616);
    *v133 = sub_1000011A4(a3);
    v133[1] = 1;
    v134 = &v133[2 * v116 - 2];
    *v134 = 0;
    v134[1] = v116 - 1;
    v237[0] = 0;
    v236 = 0;
    v217 = 4 * v204;
    v142 = sub_1000C9FC0(v217 + 20, v135, v136, v137, v138, v139, v140, v141);
    v143 = v142;
    if (v204 >= 1)
    {
      v144 = 0;
      v145 = v142;
      v146 = v224;
      v147 = v204;
      do
      {
        *v145++ = v144;
        v148 = *v146++;
        v144 += v148;
        --v147;
      }

      while (v147);
    }

    v219 = v116;
    __na = v142;
    if (v124)
    {
      if (a7)
      {
        v48 = *(a10 + 8 * *v120);
        LODWORD(v149) = sub_100098C00(v48);
        v150 = 0;
        *v143 = 1;
        v230 = (v124 - 1);
        if (v124 >= 1)
        {
LABEL_140:
          v151 = v143;
          v152 = 0;
          v153 = 0;
          v154 = 0;
          v155 = 0;
          __dsta = v120 + 1;
          if (v208)
          {
            v156 = 2;
          }

          else
          {
            v156 = 1;
          }

          v228 = v156;
          v226 = v151 + 1;
          while (1)
          {
            if (a7)
            {
              if (v152 == v230)
              {
                v157 = 0;
                v158 = 0;
                v223 = v150;
                LODWORD(v159) = 0;
              }

              else
              {
                v157 = *(a10 + 8 * __dsta[v152]);
                v161 = v150;
                v158 = sub_100098C00(v157);
                v223 = v161;
                LODWORD(v159) = 0;
                if (v149 >= v158)
                {
                  v162 = v158;
                }

                else
                {
                  v162 = v149;
                }

                if (v157)
                {
                  goto LABEL_169;
                }
              }
            }

            else
            {
              v160 = v150;
              if (v152)
              {
                memcpy(v223, v150, 2 * v155 + 2);
                v150 = v160;
              }

              memcpy(v150, v48, 2 * v149 + 2);
              if (v152 == v230)
              {
                v158 = 0;
              }

              else
              {
                v163 = __dsta[v152];
                if (a15)
                {
                  sub_100099F24(a15, v163, 0, &v236, v237);
                  memcpy(v48, v236, 2 * v237[0]);
                  v158 = v237[0];
                  if (v208)
                  {
                    v48[v237[0]] = 0;
                    v158 = ++v237[0];
                  }
                }

                else
                {
                  if (v202)
                  {
                    v164 = v199;
                    v165 = sub_1000B811C(v202, v163, v199);
                    LODWORD(v168) = v165;
                    v237[0] = v165;
                    if (v208)
                    {
                      v199[v165] = 0;
                      v168 = v165 + 1;
                      v237[0] = v165 + 1;
                      v199[v168] = -1;
                    }
                  }

                  else
                  {
                    v164 = *(v198 + 8 * v163);
                    LODWORD(v168) = sub_100098BE4(v164);
                    v237[0] = v168;
                  }

                  sub_100002454(a3, v164, v168, v48, 0, 0, v166, v167);
                  v158 = v237[0];
                }
              }

              v48[v158] = 0x7FFF;
              v157 = v48;
              v48 = v160;
              LODWORD(v159) = 0;
              if (v149 >= v158)
              {
                v162 = v158;
              }

              else
              {
                v162 = v149;
              }

              if (v157)
              {
LABEL_169:
                if (v162 >= 2)
                {
                  v169 = 0;
                  v159 = (v162 - 1);
                  while (v48[v169] == *(v157 + 2 * v169))
                  {
                    if (v159 == ++v169)
                    {
                      goto LABEL_175;
                    }
                  }

                  LODWORD(v159) = v169;
                }
              }
            }

LABEL_175:
            if (v154 <= v159)
            {
              v170 = v159;
            }

            else
            {
              v170 = v154;
            }

            if (v149 >= v232)
            {
              v171 = v232;
            }

            else
            {
              v171 = v149;
            }

            if (v170 + 1 >= v232)
            {
              v172 = v170 + 1;
            }

            else
            {
              v172 = v171;
            }

            if (v154 >= v233)
            {
              v173 = v233;
            }

            else
            {
              v173 = v154;
            }

            if (v172 <= v233)
            {
              v174 = v154;
            }

            else
            {
              v174 = v173;
            }

            if (v172 > v233)
            {
              v172 = v233 + 1;
            }

            if (v174 < v172)
            {
              v175 = v172 - 1;
              v176 = v172;
              v177 = &v226[v174];
              v178 = v175 - v174;
              v179 = v176 - v174;
              v180 = &v48[v174];
              do
              {
                v182 = &v133[2 * *v177];
                v184 = *v180++;
                v183 = v184;
                *v182 = v184;
                if (v178)
                {
                  v181 = v177[1];
                }

                else
                {
                  LOWORD(v181) = a5[v152];
                  *v182 = v183 | 0x8000;
                }

                v182[1] = v181;
                ++*v177++;
                --v178;
                --v179;
              }

              while (v179);
            }

            v153 += v228 + v149;
            ++v152;
            v154 = v159;
            v155 = v149;
            v150 = v48;
            LODWORD(v149) = v158;
            v48 = v157;
            if (v152 == v124)
            {
              goto LABEL_213;
            }
          }
        }
      }

      else
      {
        v186 = *v120;
        if (a15)
        {
          sub_100099F24(a15, v186, 0, &v236, v237);
          LODWORD(v149) = v237[0];
          memcpy(v48, v236, 2 * v237[0]);
          if (v208)
          {
            v48[v149] = 0;
            LODWORD(v149) = v149 + 1;
            v237[0] = v149;
          }
        }

        else
        {
          if (v202)
          {
            v187 = sub_1000B811C(v202, v186, v199);
            LODWORD(v149) = v187;
            v237[0] = v187;
            if (v208)
            {
              v199[v187] = 0;
              v149 = v187 + 1;
              v237[0] = v187 + 1;
              v199[v149] = -1;
            }

            v190 = v199;
          }

          else
          {
            v149 = *(v198 + 8 * v186);
            v191 = sub_100098BE4(v149);
            v190 = v149;
            LODWORD(v149) = v191;
            v237[0] = v191;
          }

          sub_100002454(a3, v190, v149, v48, 0, 0, v188, v189);
        }

        v150 = v203;
        v48[v149] = 0x7FFF;
        *v143 = 1;
        v230 = (v124 - 1);
        if (v124 >= 1)
        {
          goto LABEL_140;
        }
      }

      v153 = 0;
    }

    else
    {
      v153 = 0;
      *v142 = 1;
    }

LABEL_213:
    sub_1000CA03C(__na, v217 + 20);
    v192 = (v205 + 4 * v211);
    v192[106] = *v224;
    v192[90] = v219;
    v192[122] = v124;
    v192[138] = v153;
    if (v234)
    {
      *(v205 + 20) = 1;
    }

    if (v204 < 1)
    {
      v194 = 0;
    }

    else
    {
      v193 = 0;
      v194 = 0;
      v195 = 0;
      v196 = *(v213 + 168);
      do
      {
        *(v196 + 4 * v193) = v195;
        v197 = v224[v193];
        v195 += v197;
        if (v197 > 0)
        {
          v194 = v193;
        }

        ++v193;
      }

      while (v204 != v193);
    }

    v192[10] = v194;
    sub_1000CA0A0(v209);
    *a14 = v124;
    return 1;
  }

LABEL_130:
  v131 = sub_1000C0034(4 * v123);
  *(v119 + 616 + 8 * v121) = v131;
  if (v131)
  {
    v132 = sub_1000C0034(v123);
    *(v119 + 8 * v121 + 744) = v132;
    if (v132)
    {
      *(v119 + 4 * v121 + 296) = v123;
      ++*(v119 + 28);
      if (v122)
      {
        *(v119 + 32) = 1;
      }

      goto LABEL_134;
    }

    sub_1000BFEC4(*(v119 + 616 + 8 * v121));
  }

LABEL_200:
  v115 = v117;
LABEL_201:
  sub_1000CA0A0(v115);
  return 0;
}

uint64_t sub_10005EC84(uint64_t a1, unsigned __int16 *__base, uint64_t __nel, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v29 = a8;
  v10 = a7;
  v13 = __nel;
  v31 = 0;
  if (!a7)
  {
    if (qword_1001065A8)
    {
      v23 = *(qword_1001065A8 + 3664);
      v16 = v23 == 0;
      *a1 = a5;
      *(a1 + 8) = a4;
      if (!__nel)
      {
        return sub_10005DEA4(a1, a4, a5, 0, __base, a6, v16, 0x7FFFFFFF, 0x7FFFFFFF, 0, 0, 0, 0, &v32, a10);
      }

      if (v23)
      {
        v16 = 0;
        v28 = 0;
        v17 = 0;
        v18 = a9;
        v32 = 0;
        if (a4)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }
    }

    else
    {
      *a1 = a5;
      *(a1 + 8) = a4;
      if (!__nel)
      {
        v16 = 1;
        return sub_10005DEA4(a1, a4, a5, 0, __base, a6, v16, 0x7FFFFFFF, 0x7FFFFFFF, 0, 0, 0, 0, &v32, a10);
      }
    }

    v25 = __nel;
    if (a4)
    {
      v25 = sub_1000B215C(a4) + 1;
    }

    v28 = 8 * v25;
    v17 = sub_1000C9FC0(v28, __base, __nel, a4, a5, a6, a7, a8);
    v16 = 1;
    v18 = a9;
    v32 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v16 = 0;
  *a1 = a5;
  *(a1 + 8) = a4;
  if (__nel)
  {
    v28 = 0;
    v17 = 0;
    v18 = a9;
    v32 = 0;
    if (a4)
    {
LABEL_4:
      sub_10005DB2C(a4, a5, __base, v13, v16, v17, &v31);
      *(a1 + 20) = 0;
      if (v13 < 1)
      {
        result = 1;
        v24 = qword_1001065A8;
        if (qword_1001065A8)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      v19 = 0;
      while (1)
      {
        v20 = qword_1001065A8;
        if (qword_1001065A8)
        {
          v21 = *(qword_1001065A8 + 3688);
          v20 = *(qword_1001065A8 + 3680);
        }

        else
        {
          v21 = 0;
        }

        result = sub_10005DEA4(a1, a4, a5, v13 - v19, &__base[v19], a6, v16, v21, v20, v17, v18, v10, v29, &v32, a10);
        if (!result)
        {
          goto LABEL_28;
        }

        v19 += v32;
        if (v19 >= v13)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_23:
    qword_100101760 = a5;
    qword_100101768 = a6;
    if (v13 <= 0)
    {
      *(a1 + 20) = 0;
      result = 1;
      v24 = qword_1001065A8;
      if (qword_1001065A8)
      {
LABEL_29:
        if (*(v24 + 3664))
        {
          return result;
        }
      }

LABEL_30:
      v27 = result;
      sub_1000C0F40(v31);
      sub_1000CA03C(v17, v28);
      return v27;
    }

    qsort(__base, v13, 2uLL, sub_10005EF78);
    v26 = 0;
    *(a1 + 20) = 0;
    while (1)
    {
      result = sub_10005DEA4(a1, 0, a5, v13 - v26, &__base[v26], a6, v16, 0x7FFFFFFF, 0x7FFFFFFF, v17, v18, v10, v29, &v32, a10);
      if (!result)
      {
        break;
      }

      v26 += v32;
      if (v26 >= v13)
      {
LABEL_27:
        result = 1;
        break;
      }
    }

LABEL_28:
    v24 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  return sub_10005DEA4(a1, a4, a5, 0, __base, a6, v16, 0x7FFFFFFF, 0x7FFFFFFF, 0, 0, 0, 0, &v32, a10);
}

uint64_t sub_10005EF78(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(qword_100101768 + 8 * v10);
  v12 = *a2;
  v13 = *(qword_100101768 + 8 * v12);
  v14 = *v11;
  v17 = v11[1];
  v16 = v11 + 1;
  v15 = v17;
  if (__PAIR64__(v17, v14) == __PAIR64__(v13[1], *v13))
  {
LABEL_13:

    return sub_1000610D8(v16, v13 + 1, v10, v12, a5, a6, a7, a8);
  }

  if (v15 == 0xFFFF)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v23 = sub_10000223C(qword_100101760, 0, v14, v18, a5, a6, a7, a8);
  if (v13[1] == 0xFFFF)
  {
    v24 = 0;
  }

  else
  {
    v24 = v13[1];
  }

  v25 = sub_10000223C(qword_100101760, 0, *v13, v24, v19, v20, v21, v22);
  if (v23 < v25)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = v23 != v25;
  }

  if (!result)
  {
    LODWORD(v10) = *a1;
    LODWORD(v12) = *a2;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10005F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000CA0BC();
  v16 = sub_1000C0034(888);
  if (!v16)
  {
    return v16;
  }

  v24 = sub_1000C9F54(8 * a2, v9, v10, v11, v12, v13, v14, v15);
  if (a2 < 1)
  {
    v44 = 0;
    goto LABEL_36;
  }

  v57 = a2;
  v58 = v8;
  v25 = 0;
  v26 = a2;
  do
  {
    while (*(a3 + 4) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v36 = sub_10009A708(a4, *(a3 + 2 * v27 + 16)) + v28;
        v37 = *(a3 + 4);
        if (v27 >= v37 - 1)
        {
          v38 = v36;
        }

        else
        {
          v38 = v36 + 1;
        }

        if (*(a3 + v27 + 88))
        {
          v28 = v38;
        }

        else
        {
          v28 = v36;
        }

        ++v27;
      }

      while (v27 < v37);
      v39 = sub_1000C9F54(2 * v28 + 2, v29, v30, v31, v32, v33, v34, v35);
      *(v24 + 8 * v25) = v39;
      if (*(a3 + 4) >= 1)
      {
        goto LABEL_15;
      }

LABEL_21:
      *v39 = -1;
      a3 += 128;
      if (++v25 == v26)
      {
        goto LABEL_22;
      }
    }

    v39 = sub_1000C9F54(2, v17, v18, v19, v20, v21, v22, v23);
    *(v24 + 8 * v25) = v39;
    if (*(a3 + 4) < 1)
    {
      goto LABEL_21;
    }

LABEL_15:
    v40 = 0;
    v41 = 0;
    v60 = 0;
    __src = 0;
    do
    {
      sub_100099F24(a4, *(a3 + 2 * v40 + 16), &__src, 0, &v60);
      j__memmove(&v39[v41], __src, 2 * v60);
      v41 += v60;
      v42 = *(a3 + 4);
      if (*(a3 + v40 + 88) && v40 < v42 - 1)
      {
        v39[v41++] = 0;
        v42 = *(a3 + 4);
      }

      ++v40;
    }

    while (v40 < v42);
    v39[v41] = -1;
    a3 += 128;
    ++v25;
  }

  while (v25 != v26);
LABEL_22:
  a2 = v57;
  v43 = sub_1000C0034((2 * v57));
  v8 = v58;
  if (!v43)
  {
    goto LABEL_37;
  }

  v44 = v43;
  if (v57 < 4)
  {
    v45 = 0;
    goto LABEL_35;
  }

  if (v57 >= 0x10)
  {
    v45 = v26 & 0x7FFFFFF0;
    v46 = xmmword_1000F0CF0;
    v47 = (v43 + 16);
    v48.i64[0] = 0x8000800080008;
    v48.i64[1] = 0x8000800080008;
    v49.i64[0] = 0x10001000100010;
    v49.i64[1] = 0x10001000100010;
    v50 = v45;
    do
    {
      v47[-1] = v46;
      *v47 = vaddq_s16(v46, v48);
      v46 = vaddq_s16(v46, v49);
      v47 += 2;
      v50 -= 16;
    }

    while (v50);
    if (v45 != v26)
    {
      if ((v26 & 0xC) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v45 = 0;
LABEL_32:
    v51 = v45;
    v45 = v26 & 0x7FFFFFFC;
    v52 = vorr_s8(vdup_n_s16(v51), 0x3000200010000);
    v53 = 2 * v51;
    v54 = v51 - v45;
    do
    {
      *(v43 + v53) = v52;
      v52 = vadd_s16(v52, 0x4000400040004);
      v53 += 8;
      v54 += 4;
    }

    while (v54);
    for (; v26 != v45; ++v45)
    {
LABEL_35:
      *(v43 + 2 * v45) = v45;
    }
  }

LABEL_36:
  v55 = sub_10005EC84(v16, v44, a2, 0, a1, v24, 0, 0, 0, 0);
  sub_1000BFEC4(v44);
  if (!v55)
  {
LABEL_37:
    sub_1000BFEC4(v16);
    v16 = 0;
  }

  sub_1000CA0A0(v8);
  return v16;
}

BOOL sub_10005F398(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v8 = *(a1 + 8);
  sub_1000B2164(v8);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 65533;
  }

  if (*(a1 + 32))
  {
    v11 = *a1;
    v10 = *(a1 + 8);
    v12 = 2 * sub_1000B2164(v10);
    v20 = sub_1000C9F54(v12 + 2, v13, v14, v15, v16, v17, v18, v19);
    v21 = *(a1 + 28) - 1;
    v22 = *(a1 + 8 * v21 + 616);
    v30 = sub_1000B811C(v10, a2, v20);
    if (*(a1 + 4 * v21 + 488))
    {
      v31 = sub_1000C9F54(v12 + 2, v23, v24, v25, v26, v27, v28, v29);
      sub_100002454(v11, v20, v30, v31, 0, 0, v32, v33);
      LODWORD(v11) = 0;
      if (v30 >= 2)
      {
        v34 = 0;
        v35 = 0;
        v11 = (v30 - 1);
        v36 = v22;
        while (1)
        {
          v37 = v36 + 2;
          do
          {
            v38 = *v37;
            v37 += 2;
          }

          while (v38 < 0);
          v39 = v36[1];
          v40 = *(v37 - 1) - v39;
          if (v40 < 1)
          {
            LODWORD(v41) = 0;
          }

          else
          {
            v41 = 0;
            v35 = &v22[2 * v39];
            while (1)
            {
              v42 = *v35;
              if ((v42 & 0x80000000) == 0 && v31[v34] == v42)
              {
                break;
              }

              ++v41;
              v35 += 2;
              if (v40 == v41)
              {
                goto LABEL_22;
              }
            }
          }

          if (v41 == v40)
          {
            break;
          }

          ++v34;
          v36 = v35;
          if (v34 == v11)
          {
            goto LABEL_23;
          }
        }

LABEL_22:
        LODWORD(v11) = v34;
      }

LABEL_23:
      sub_1000CA03C(v31, v12 + 2);
      sub_1000CA03C(v20, v12 + 2);
      v30 -= v11;
    }

    else
    {
      sub_1000CA03C(v20, v12 + 2);
    }

    *a4 = v30;
    return v30 <= v9 - *(a1 + 4 * *(a1 + 28) + 356);
  }

  else
  {
    v43 = 2 * sub_1000B2164(v8);
    v51 = sub_1000C9F54(v43 + 2, v44, v45, v46, v47, v48, v49, v50);
    v52 = sub_1000B811C(v8, a2, v51);
    *a4 = v52;
    sub_1000CA03C(v51, v43 + 2);
    return v52 <= v9;
  }
}

uint64_t sub_10005F598(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v86 = *a1;
  v8 = *(a1 + 28) - 1;
  v9 = a1 + 488;
  v10 = *(a1 + 488 + 4 * v8) + a3;
  v87 = *(a1 + 8);
  v11 = sub_1000B2164(v87);
  v12 = v11;
  if (qword_1001065A8 && *(qword_1001065A8 + 3696))
  {
    v13 = *(v9 + 4 * v8);
    v14 = *(a1 + 4 * v8 + 552) + (v11 + 2) * a3;
    v15 = sub_10009977C(0, *(qword_1001065A8 + 4508), *(qword_1001065A8 + 4512), 0, 1, v87, v86);
    if (!sub_100099BA4(v15, v10, v14 + v13))
    {
      sub_1000999F8(v15);
      return 0;
    }
  }

  else
  {
    v15 = 0;
  }

  result = sub_1000C0034(2 * v10);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v77 = a4;
  v25 = *(a1 + 8 * v8 + 616);
  v78 = a1;
  v26 = *(a1 + 4 * v8 + 424);
  v90[0] = 0;
  if (v15)
  {
    v27 = sub_1000C9F54(2 * v12 + 2, v17, v18, v19, v20, v21, v22, v23);
    v89 = 0;
    v88 = 0;
    if (v26 < 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v27 = 0;
    v89 = 0;
    v88 = 0;
    if (v26 < 1)
    {
      goto LABEL_13;
    }
  }

  v28 = v25;
  do
  {
    sub_100061228(v25, v28, v24, v90, v15, v27, 0);
    v28 += 2;
    --v26;
  }

  while (v26);
LABEL_13:
  v29 = 2 * v12;
  sub_1000CA03C(v27, v29 + 2);
  v85 = sub_1000C0034(v29 + 2);
  if (!v85)
  {
    v31 = v24;
LABEL_79:
    sub_1000BFEC4(v31);
    return 0;
  }

  if (v15)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1000C0034(v29 + 2);
    if (!v30)
    {
      sub_1000BFEC4(v24);
      v31 = v85;
      goto LABEL_79;
    }
  }

  v32 = sub_1000C0034(v29 + 2);
  if (!v32)
  {
    sub_1000BFEC4(v24);
    v74 = v85;
LABEL_78:
    sub_1000BFEC4(v74);
    v31 = v30;
    goto LABEL_79;
  }

  v33 = v32;
  v76 = v30;
  v34 = sub_1000C0034(v29 + 2);
  if (!v34)
  {
    sub_1000BFEC4(v24);
    sub_1000BFEC4(v85);
    sub_1000BFEC4(v30);
    v31 = v33;
    goto LABEL_79;
  }

  v30 = v34;
  v35 = *(v9 + 4 * v8);
  if (a3 >= 1)
  {
    v36 = 0;
    v37 = -1;
    v80 = a3;
    while (1)
    {
      v38 = *(a2 + 2 * v36);
      v83 = v35;
      v84 = *(a2 + 2 * v36);
      v82 = v36;
      if (!v15)
      {
        break;
      }

      sub_100099F24(v15, v38, 0, &v88, &v89 + 1);
      memcpy(v33, v88, 2 * SHIDWORD(v89));
      v33[SHIDWORD(v89)] = 0x7FFF;
      v39 = v35 - 1;
      if (v35 >= 1)
      {
        v40 = 0;
        while (1)
        {
          v41 = (v39 + v40) >> 1;
          v42 = v24[v41];
          sub_100099F24(v15, v24[v41], 0, &v88, &v89);
          memcpy(v30, v88, 2 * v89);
          v30[v89] = 0x7FFF;
          v43 = sub_100098C00(v33);
          v44 = sub_100098C00(v30);
          v45 = v43 >= v44 ? v44 : v43;
          if (v45 >= 1)
          {
            break;
          }

LABEL_42:
          v37 = v43 != v44;
          if (v43 >= v44)
          {
            goto LABEL_43;
          }

          v37 = -1;
LABEL_28:
          if (v37 < 0)
          {
            v39 = v41 - 1;
          }

          else
          {
            v40 = v41 + 1;
          }

          if (v40 > v39)
          {
            goto LABEL_68;
          }
        }

        v46 = v33;
        v47 = v30;
        while (1)
        {
          v49 = *v46++;
          v48 = v49;
          v50 = *v47++;
          v51 = v48 >= v50;
          v52 = v48 != v50;
          v37 = v51 ? v52 : -1;
          if (v37)
          {
            break;
          }

          if (!--v45)
          {
            goto LABEL_42;
          }
        }

LABEL_43:
        if (!v37)
        {
          v37 = v84 - v42;
          if (v84 == v42)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_28;
      }

LABEL_67:
      v40 = 0;
      if (v37)
      {
LABEL_68:
        if (v83 > v40)
        {
          j__memmove(&v24[v40 + 1], &v24[v40], 2 * (v83 - v40));
        }

        v24[v40] = v84;
        v35 = v83 + 1;
      }

      else
      {
        v37 = 0;
      }

LABEL_23:
      v36 = v82 + 1;
      if (v82 + 1 == v80)
      {
        goto LABEL_71;
      }
    }

    HIDWORD(v89) = sub_1000B811C(v87, v38, v85);
    sub_100002454(v86, v85, SHIDWORD(v89), v33, 0, 0, v53, v54);
    v33[SHIDWORD(v89)] = 0x7FFF;
    v55 = v35 - 1;
    if (v35 < 1)
    {
      goto LABEL_67;
    }

    v40 = 0;
    while (1)
    {
      v56 = (v55 + v40) >> 1;
      v57 = v24[v56];
      LODWORD(v89) = sub_1000B811C(v87, v57, v85);
      sub_100002454(v86, v85, v89, v30, 0, 0, v58, v59);
      v30[v89] = 0x7FFF;
      v60 = sub_100098C00(v33);
      v61 = sub_100098C00(v30);
      if (v60 >= v61)
      {
        v62 = v61;
      }

      else
      {
        v62 = v60;
      }

      if (v62 < 1)
      {
LABEL_63:
        v37 = v60 != v61;
        if (v60 < v61)
        {
          v37 = -1;
          goto LABEL_49;
        }
      }

      else
      {
        v63 = v33;
        v64 = v30;
        while (1)
        {
          v66 = *v63++;
          v65 = v66;
          v67 = *v64++;
          v51 = v65 >= v67;
          v68 = v65 != v67;
          v37 = v51 ? v68 : -1;
          if (v37)
          {
            break;
          }

          if (!--v62)
          {
            goto LABEL_63;
          }
        }
      }

      if (!v37)
      {
        v37 = v84 - v57;
        if (v84 == v57)
        {
LABEL_66:
          v35 = v83;
          goto LABEL_23;
        }
      }

LABEL_49:
      if (v37 < 0)
      {
        v55 = v56 - 1;
      }

      else
      {
        v40 = v56 + 1;
      }

      if (v40 > v55)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_71:
  v69 = sub_1000B215C(v87);
  v70 = sub_1000C0034(8 * v69 + 8);
  if (!v70)
  {
    sub_1000BFEC4(v24);
    sub_1000BFEC4(v85);
    sub_1000BFEC4(v76);
    v74 = v33;
    goto LABEL_78;
  }

  v71 = v70;
  v72 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v73 = *(qword_1001065A8 + 3688);
    v72 = *(qword_1001065A8 + 3680);
  }

  else
  {
    v73 = 0;
  }

  v75 = sub_10005DEA4(v78, v87, v86, v35, v24, 0, 0, v73, v72, v70, v77, a5, 1, v90, v15);
  if (v15)
  {
    sub_1000999F8(v15);
  }

  sub_1000BFEC4(v71);
  sub_1000BFEC4(v30);
  sub_1000BFEC4(v33);
  sub_1000BFEC4(v76);
  sub_1000BFEC4(v85);
  sub_1000BFEC4(v24);
  return v75;
}

uint64_t sub_10005FBA4(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 28) - 1;
  v6 = a1 + 488;
  v7 = *(a1 + 488 + 4 * v5);
  if (!v7)
  {
    return 1;
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_1000B2164(v10);
  v12 = a1 + 4 * v5;
  if (v11 <= *(v12 + 40))
  {
    v13 = *(v12 + 40);
  }

  else
  {
    v13 = v11;
  }

  v53 = v9;
  if (qword_1001065A8 && *(qword_1001065A8 + 3696))
  {
    v14 = *(a1 + 4 * v5 + 552);
    v15 = *(v6 + 4 * v5);
    v16 = sub_10009977C(0, *(qword_1001065A8 + 4508), *(qword_1001065A8 + 4512), 0, 1, v10, v9);
    if (!sub_100099BA4(v16, v7, v15 + v14))
    {
      sub_1000999F8(v16);
      return 0;
    }
  }

  else
  {
    v16 = 0;
  }

  result = sub_1000C0034(2 * v7);
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = *(a1 + 8 * v5 + 616);
  v27 = *(v12 + 424);
  v59 = 0;
  v52 = v10;
  if (v16)
  {
    v28 = sub_1000C9F54(2 * v13 + 2, v18, v19, v20, v21, v22, v23, v24);
    if (v27 < 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v28 = 0;
    if (v27 < 1)
    {
      goto LABEL_18;
    }
  }

  v29 = v26;
  do
  {
    sub_100061228(v26, v29, v25, &v59, v16, v28, 0);
    v29 += 2;
    --v27;
  }

  while (v27);
LABEL_18:
  v30 = 2 * v13;
  sub_1000CA03C(v28, v30 + 2);
  v31 = sub_1000C0034(v30 + 2);
  if (!v31)
  {
    v44 = v25;
LABEL_39:
    sub_1000BFEC4(v44);
    return 0;
  }

  v32 = v31;
  v33 = sub_1000C0034(v30 + 2);
  if (!v33)
  {
    sub_1000BFEC4(v25);
    v44 = v32;
    goto LABEL_39;
  }

  v34 = v33;
  v35 = sub_1000C0034(v30 + 2);
  if (!v35)
  {
    sub_1000BFEC4(v25);
    sub_1000BFEC4(v32);
    v44 = v34;
    goto LABEL_39;
  }

  v36 = v35;
  v37 = sub_1000C0034(v30 + 2);
  if (!v37)
  {
    sub_1000BFEC4(v25);
    sub_1000BFEC4(v32);
    sub_1000BFEC4(v34);
    v44 = v36;
    goto LABEL_39;
  }

  v51 = v37;
  v38 = *(v6 + 4 * v5);
  if (a3 >= 1)
  {
    v39 = 0;
    v40 = a2;
    do
    {
      if (v38 >= 1)
      {
        v41 = v38;
        v42 = 2 * v38 - 2;
        v43 = v25;
        while (*(v40 + 2 * v39) != *v43)
        {
          v42 -= 2;
          ++v43;
          if (!--v41)
          {
            goto LABEL_25;
          }
        }

        j__memmove(v43, v43 + 1, v42);
        v40 = a2;
        --v38;
      }

LABEL_25:
      ++v39;
    }

    while (v39 != a3);
  }

  v45 = sub_1000B215C(v52);
  v46 = sub_1000C0034(8 * v45 + 8);
  if (!v46)
  {
    sub_1000BFEC4(v25);
    sub_1000BFEC4(v32);
    sub_1000BFEC4(v34);
    sub_1000BFEC4(v36);
    v44 = v51;
    goto LABEL_39;
  }

  v47 = v46;
  v48 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v49 = *(qword_1001065A8 + 3688);
    v48 = *(qword_1001065A8 + 3680);
  }

  else
  {
    v49 = 0;
  }

  v50 = sub_10005DEA4(a1, v52, v53, v38, v25, 0, 0, v49, v48, v46, a4, a5, 1, &v58, v16);
  if (v16)
  {
    sub_1000999F8(v16);
  }

  sub_1000BFEC4(v47);
  sub_1000BFEC4(v51);
  sub_1000BFEC4(v36);
  sub_1000BFEC4(v34);
  sub_1000BFEC4(v32);
  sub_1000BFEC4(v25);
  return v50;
}

uint64_t sub_10005FF28(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 20), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 24), 4, v2);
  v4 = sub_1000BD6C8(*(a1 + 28), 4, v3);
  v5 = sub_1000BD6C8(*(a1 + 32), 4, v4);
  v6 = sub_1000BD6C8(*(a1 + 36), 1, v5);
  v7 = sub_1000BD7F4((a1 + 40), 4, *(a1 + 28), v6);
  v8 = sub_1000BD7F4((a1 + 104), 4, *(a1 + 28), v7);
  LODWORD(v9) = *(a1 + 28);
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      v8 = sub_1000BD7F4(*(a1 + 168 + 8 * v10), 4, *(a1 + 168 + 4 * v10 - 64), v8);
      ++v10;
      v9 = *(a1 + 28);
    }

    while (v10 < v9);
  }

  v11 = sub_1000BD7F4((a1 + 296), 4, v9, v8);
  v12 = a1 + 360;
  v13 = sub_1000BD7F4((a1 + 360), 4, *(a1 + 28), v11);
  v14 = sub_1000BD7F4((a1 + 424), 4, *(a1 + 28), v13);
  v15 = sub_1000BD7F4((a1 + 488), 4, *(a1 + 28), v14);
  v16 = sub_1000BD7F4((a1 + 552), 4, *(a1 + 28), v15);
  LODWORD(v17) = *(a1 + 28);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = a1 + 616;
    do
    {
      if (*(v12 + 4 * v18) >= 1)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = sub_1000BD6C8(*(*(v19 + 8 * v18) + v20), 2, v16);
          LODWORD(v16) = sub_1000BD6C8(*(*(v19 + 8 * v18) + v20 + 2), 2, v22);
          ++v21;
          v23 = *(v12 + 4 * v18);
          v20 += 4;
        }

        while (v21 < v23);
        if (v23 >= 2)
        {
          v24 = 0;
          do
          {
            LODWORD(v16) = sub_1000BD6C8(*(*(a1 + 744 + 8 * v18) + v24++), 1, v16);
          }

          while (v24 < *(v12 + 4 * v18) - 1);
        }
      }

      v16 = sub_1000BD6C8(*(a1 + 872 + v18++), 1, v16);
      v17 = *(a1 + 28);
    }

    while (v18 < v17);
  }

  return sub_1000BD7F4((a1 + 872), 1, v17, v16);
}

uint64_t sub_10006016C(uint64_t result, uint64_t a2)
{
  *(result + 36) = -1;
  if (*(result + 28) >= 1)
  {
    v3 = result;
    v4 = 0;
    v17 = result + 744;
    do
    {
      result = sub_1000602BC(v3, v4, a2, 0, 0);
      v6 = **(v3 + 8 * v4 + 744);
      *(v3 + v4 + 872) = v6;
      if (v6 < *(v3 + 36))
      {
        *(v3 + 36) = v6;
      }

      ++v4;
      v5 = *(v3 + 28);
    }

    while (v4 < v5);
    if (v5 >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v3 + 616 + 8 * v7);
        v9 = *(v17 + 8 * v7);
        v10 = *(v3 + 36);
        *v9 = 0;
        v11 = *(v8 + 2);
        v12 = (v8 + 4);
        do
        {
          v13 = *v12;
          v12 += 2;
        }

        while (v13 < 0);
        v14 = *(v12 - 1);
        v15 = v14 - v11;
        if (v14 != v11)
        {
          v16 = 0;
          do
          {
            result = sub_1000607D0(v8, a2, v9, (v16++ + v11), v10, 1);
          }

          while (v16 < v15);
        }

        ++v7;
      }

      while (v7 < *(v3 + 28));
    }
  }

  return result;
}

uint64_t sub_1000602BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = a1 + 8 * a2;
  v8 = *(v7 + 616);
  v9 = *(v7 + 744);
  v10 = a4;
  v11 = (v8 + 4 * a4);
  if (*v11 < 0)
  {
    v20 = *(a1 + 8);
    v21 = sub_1000BA7F4(v20, v11[1], 0);
    v22 = sub_1000BAC18(v20, 0, 0, v21);
    if (v22 >= 255)
    {
      v23 = 255;
    }

    else
    {
      v23 = v22;
    }

    if (v23 <= a5)
    {
      v19 = a5;
    }

    else
    {
      v19 = v23;
    }
  }

  else
  {
    v14 = v11[1];
    v15 = (v8 + 4 * a4 + 4);
    do
    {
      v16 = *v15;
      v15 += 2;
    }

    while (v16 < 0);
    v17 = *(v15 - 1);
    v18 = v17 - v14;
    if (v17 == v14)
    {
      v19 = -1;
    }

    else
    {
      v24 = 0;
      v19 = -1;
      do
      {
        v25 = sub_1000602BC(a1, a2, a3, (v24 + v14), a5);
        if (v25 < v19)
        {
          v19 = v25;
        }

        ++v24;
      }

      while (v24 < v18);
    }
  }

  *(v9 + v10) = v19;
  return v19;
}

uint64_t sub_1000603D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (*(a1 + 28) < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 36);
  }

  result = sub_1000602BC(a1, a2, a3, 0, v6);
  v8 = v4;
  v9 = *(a1 + 8 * v4 + 744);
  v10 = *v9;
  *(a1 + v8 + 872) = v10;
  if (*(a1 + 28) >= 2)
  {
    v10 = *(a1 + 36);
  }

  else
  {
    *(a1 + 36) = v10;
  }

  v11 = *(a1 + 8 * v8 + 616);
  *v9 = 0;
  v12 = *(v11 + 2);
  v13 = (v11 + 4);
  do
  {
    v14 = *v13;
    v13 += 2;
  }

  while (v14 < 0);
  v15 = *(v13 - 1);
  v16 = v15 - v12;
  if (v15 != v12)
  {
    v17 = 0;
    do
    {
      result = sub_1000607D0(v11, a3, v9, (v17++ + v12), v10, 1);
    }

    while (v17 < v16);
  }

  return result;
}

uint64_t sub_1000604CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v29 = a2 + 616;
  v8 = *(a2 + 616 + 8 * a3);
  v9 = a2 + 744;
  v10 = *(a2 + 744 + 8 * a3);
  v31 = a5;
  result = sub_10006065C(a1, v8, a4, v10, 0, a5);
  v12 = *v10;
  *(a2 + a3 + 872) = v12;
  v13 = *(a2 + 36);
  if (v12 >= v13)
  {
    *v10 = 0;
    v23 = *(v8 + 2);
    v24 = (v8 + 4);
    do
    {
      v25 = *v24;
      v24 += 2;
    }

    while (v25 < 0);
    v26 = *(v24 - 1);
    v27 = v26 - v23;
    if (v26 != v23)
    {
      v28 = 0;
      do
      {
        result = sub_1000607D0(v8, a4, v10, (v28++ + v23), v13, 1);
      }

      while (v28 < v27);
    }
  }

  else
  {
    *(a2 + 36) = v12;
    if (*(a2 + 28) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(v29 + 8 * v14);
        v16 = *(v9 + 8 * v14);
        result = sub_10006065C(a1, v15, a4, v16, 0, v31);
        *v16 = 0;
        v17 = *(v15 + 2);
        v18 = (v15 + 4);
        do
        {
          v19 = *v18;
          v18 += 2;
        }

        while (v19 < 0);
        v20 = *(v18 - 1);
        v21 = v20 - v17;
        if (v20 != v17)
        {
          v22 = 0;
          do
          {
            result = sub_1000607D0(v15, a4, v16, (v22++ + v17), v12, 1);
          }

          while (v22 < v21);
        }

        ++v14;
      }

      while (v14 < *(a2 + 28));
    }
  }

  return result;
}

uint64_t sub_10006065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v27 = a6;
  v9 = a5;
  v10 = (a2 + 4 * a5);
  v11 = v10[1];
  if (*v10 < 0)
  {
    v19 = sub_1000BA7F4(a1, v10[1], 0);
    if (a6 == 0xFFFF)
    {
      v21 = a1;
      v20 = 0;
      v22 = 0;
    }

    else
    {
      v20 = &v27;
      v21 = a1;
      v22 = 1;
    }

    v25 = sub_1000BABCC(v21, v20, v22, v19);
    if (v25 >= 255)
    {
      v18 = -1;
    }

    else
    {
      v18 = v25;
    }
  }

  else
  {
    v14 = (a2 + 4 * a5 + 4);
    do
    {
      v15 = *v14;
      v14 += 2;
    }

    while (v15 < 0);
    v16 = *(v14 - 1);
    v17 = v16 - v11;
    if (v16 == v11)
    {
      v18 = -1;
    }

    else
    {
      v23 = 0;
      v18 = -1;
      do
      {
        v24 = sub_10006065C(a1, a2, a3, a4, (v23 + v11), a6);
        if (v24 < v18)
        {
          v18 = v24;
        }

        ++v23;
      }

      while (v23 < v17);
    }
  }

  *(a4 + v9) = v18;
  return v18;
}

uint64_t sub_10006078C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = sub_1000BAC18(a1, 0, 0, a2);
  if (v4 >= 255)
  {
    v5 = 255;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= a3)
  {
    return a3;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1000607D0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v6 = (*(a3 + a4) - a5 + a2 / 2) / a2;
  *(a3 + a4) = v6;
  v7 = (result + 4 * a4);
  if (*v7 < 0)
  {
    return result;
  }

  v11 = result;
  v6 = v6;
  if (qword_1001065A8)
  {
    v12 = *(qword_1001065A8 + 3168);
    if (*(qword_1001065A8 + 3176) < a6)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v12 < v6)
    {
      *(a3 + a4) = v12;
      v6 = v12;
    }

    goto LABEL_8;
  }

  v12 = 0;
  if (a6 <= 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v13 = a5 + v6 * a2;
  if (v13 >= 255)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  v15 = v7[1];
  v16 = (result + 4 * a4 + 4);
  do
  {
    v17 = *v16;
    v16 += 2;
  }

  while (v17 < 0);
  v18 = *(v16 - 1);
  v19 = v18 - v15;
  if (v18 != v15)
  {
    v20 = 0;
    do
    {
      result = sub_1000607D0(v11, a2, a3, (v20++ + v15), v14, (a6 + 1));
    }

    while (v20 < v19);
  }

  return result;
}

uint64_t sub_1000608E8(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v2 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 5360))
      {
        *(result + 36) = -1;
        if (!*(v2 + 5360))
        {
          return result;
        }

        return sub_10006016C(result, a2);
      }

      if (*(qword_1001065A8 + 5264))
      {
        v3 = -1;
      }

      else
      {
        v3 = 0;
      }

      *(result + 36) = v3;
      if (*(v2 + 5360))
      {
        return sub_10006016C(result, a2);
      }
    }

    else
    {
      *(result + 36) = 0;
    }
  }

  return result;
}

int8x8_t *sub_100060984(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_1000BCBAC(a2, *(a1 + 32));
  if (result)
  {
    if (*(a1 + 32) != 1)
    {
      return 1;
    }

    v5 = *(a1 + 28) - 1;
    v6 = (a1 + 4 * v5);
    result = sub_1000BCBAC(a2, v6[10]);
    if (result)
    {
      v7 = a1 + 104;
      result = sub_1000BCBAC(a2, *(a1 + 104 + 4 * v5));
      if (result)
      {
        v8 = a1 + 296;
        result = sub_1000BCBAC(a2, *(a1 + 296 + 4 * v5));
        if (result)
        {
          result = sub_1000BCBAC(a2, v6[90]);
          if (result)
          {
            result = sub_1000BCBAC(a2, v6[106]);
            if (result)
            {
              result = sub_1000BCBAC(a2, v6[122]);
              if (result)
              {
                result = sub_1000BCBAC(a2, v6[138]);
                if (result)
                {
                  result = sub_1000BCBAC(a2, *(a1 + v5 + 872));
                  if (result)
                  {
                    v9 = (a1 + 8 * v5);
                    v10 = v9[21];
                    v11 = v10 ? *(v7 + 4 * v5) : 0;
                    result = sub_1000BCC04(a2, v10, v11, 4);
                    if (result)
                    {
                      v12 = v9[77];
                      v13 = v12 ? *(v8 + 4 * v5) : 0;
                      result = sub_1000BCC04(a2, v12, v13, 4);
                      if (result)
                      {
                        v14 = v9[93];
                        v15 = v14 ? *(v8 + 4 * v5) : 0;
                        result = sub_1000BCC04(a2, v14, v15, 1);
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

  return result;
}

uint64_t sub_100060AF0(uint64_t a1, uint64_t a2, char *a3)
{
  result = sub_1000BCAA0(a2, "blt0", a3);
  if (result)
  {
    v5 = result;
    v6 = sub_100060984(a1, result);
    sub_1000BCB64(v5);
    return v6;
  }

  return result;
}

uint64_t sub_100060B48(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    return 0;
  }

  result = sub_1000BBD54(a2, v2);
  if (result)
  {
    if (*v2 != 1)
    {
      return 1;
    }

    v6 = *(a1 + 28);
    v7 = (a1 + 4 * v6);
    result = sub_1000BBD54(a2, v7 + 10);
    if (result)
    {
      result = sub_1000BBD54(a2, v7 + 26);
      if (result)
      {
        v8 = v7 + 74;
        result = sub_1000BBD54(a2, v7 + 74);
        if (result)
        {
          result = sub_1000BBD54(a2, v7 + 90);
          if (result)
          {
            result = sub_1000BBD54(a2, v7 + 106);
            if (result)
            {
              result = sub_1000BBD54(a2, v7 + 122);
              if (result)
              {
                result = sub_1000BBD54(a2, v7 + 138);
                if (result)
                {
                  result = sub_1000BBDA4(a2, (a1 + v6 + 872));
                  if (result)
                  {
                    v12 = 0;
                    v9 = (a1 + 8 * v6);
                    if (!sub_1000BBF0C(a2, 4, v9 + 21, &v12) || v9[21] && v12 != v7[26])
                    {
                      return 0;
                    }

                    v11 = 0;
                    if (!sub_1000BBF0C(a2, 4, v9 + 77, &v11) || v9[77] && v11 != *v8)
                    {
                      return 0;
                    }

                    v10 = 0;
                    if (!sub_1000BBF0C(a2, 1, v9 + 93, &v10) || v9[93] && v10 != *v8)
                    {
                      return 0;
                    }

                    ++*(a1 + 28);
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

  return result;
}

void *sub_100060D0C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1000BBAE0(a2, "blt0", a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v10 = result;
    v11 = sub_100060B48(a1, result);
    sub_1000BBBC4(v10);
    return v11;
  }

  return result;
}

uint64_t sub_100060D64(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v13 = sub_1000C0034(888);
  if (v13)
  {
    v14 = sub_1000BBAE0(a1, "blt0", a2, v8, v9, v10, v11, v12);
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = 1;
    if (!sub_1000BBD54(v14, (v13 + 20)))
    {
      goto LABEL_23;
    }

    if (!sub_1000BBD54(v15, (v13 + 24)))
    {
      goto LABEL_23;
    }

    if (!sub_1000BBD54(v15, (v13 + 28)))
    {
      goto LABEL_23;
    }

    if (!sub_1000BBD54(v15, (v13 + 32)))
    {
      goto LABEL_23;
    }

    if (!sub_1000BBDA4(v15, (v13 + 36)))
    {
      goto LABEL_23;
    }

    if (!sub_1000BBE54(v15, (v13 + 40), 16, 4))
    {
      goto LABEL_23;
    }

    v16 = (v13 + 104);
    if (!sub_1000BBE54(v15, (v13 + 104), 16, 4))
    {
      goto LABEL_23;
    }

    if (*(v13 + 28) >= 1)
    {
      v17 = 0;
      v18 = (v13 + 168);
      do
      {
        LODWORD(v34) = 0;
        if (!sub_1000BBF0C(v15, 4, v18, &v34) || *v18 && v34 != *v16)
        {
          break;
        }

        ++v17;
        ++v16;
        ++v18;
      }

      while (v17 < *(v13 + 28));
    }

    v19 = (v13 + 296);
    if (!sub_1000BBE54(v15, (v13 + 296), 16, 4) || !sub_1000BBE54(v15, (v13 + 360), 16, 4) || !sub_1000BBE54(v15, (v13 + 424), 16, 4) || !sub_1000BBE54(v15, (v13 + 488), 16, 4) || !sub_1000BBE54(v15, (v13 + 552), 16, 4))
    {
LABEL_23:
      sub_1000BBBC4(v15);
LABEL_24:
      LODWORD(v22) = *(v13 + 28);
      if (v22 >= 1)
      {
        v23 = 93;
        v24 = v13;
        do
        {
          if (*(v13 + 16) || v23 - 93 == v22 - 1 && *(v13 + 32) == 1)
          {
            sub_1000BFEC4(v24[77]);
            v24[77] = 0;
            v26 = v24[93];
            if (v26)
            {
              sub_1000BFEC4(v26);
              v24[93] = 0;
            }

            v27 = v24[21];
            if (v27)
            {
              sub_1000BFEC4(v27);
              v24[21] = 0;
            }
          }

          v22 = *(v13 + 28);
          v25 = v23 - 92;
          ++v23;
          ++v24;
        }

        while (v25 < v22);
      }

      sub_1000BFEC4(v13);
      return 0;
    }

    if (*(v13 + 28) >= 1)
    {
      v20 = 0;
      v21 = v13 + 616;
      while (1)
      {
        v34 = 0;
        v33 = 0;
        if (!sub_1000BBF0C(v15, 2, &v34, &v33) || v34 && v33 != 2 * *(v21 + 4 * v20 - 320))
        {
          break;
        }

        *(v21 + 8 * v20++) = v34;
        v29 = *(v13 + 28);
        if (v20 >= v29)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v29) = *(v13 + 28);
LABEL_43:
      if (v29 >= 1)
      {
        v30 = 0;
        v31 = (v13 + 744);
        do
        {
          LODWORD(v34) = 0;
          if (!sub_1000BBF0C(v15, 1, v31, &v34) || *v31 && v34 != *v19)
          {
            break;
          }

          ++v30;
          ++v19;
          ++v31;
        }

        while (v30 < *(v13 + 28));
      }
    }

    v32 = sub_1000BBE54(v15, (v13 + 872), 16, 1);
    sub_1000BBBC4(v15);
    if (!v32)
    {
      goto LABEL_24;
    }
  }

  return v13;
}

uint64_t sub_1000610D8(unsigned __int16 *a1, unsigned __int16 *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (v10 == *a2)
  {
    while (v10 != 0xFFFF)
    {
      v11 = a1[1];
      ++a1;
      v10 = v11;
      v12 = a2[1];
      ++a2;
      if (v10 != v12)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_6;
      }
    }

    return (a3 - a4);
  }

  else
  {
    v13 = 0;
LABEL_6:
    v14 = &a2[v13];
    v15 = &a1[v13];
    while (1)
    {
      v16 = *v15;
      v17 = *v14;
      if (v16 == 0xFFFF)
      {
        break;
      }

      if (v17 == 0xFFFF)
      {
        return 1;
      }

      v19 = v15[1];
      ++v15;
      v18 = v19;
      if (v19 == 0xFFFF)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      v25 = sub_10000223C(qword_100101760, *(v15 - 2), v16, v20, a5, a6, a7, a8);
      if (v14[1] == 0xFFFF)
      {
        v26 = 0;
      }

      else
      {
        v26 = v14[1];
      }

      v27 = sub_10000223C(qword_100101760, *(v14 - 1), *v14, v26, v21, v22, v23, v24);
      if (v25 < v27)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = v25 != v27;
      }

      ++v14;
      if (result)
      {
        return result;
      }
    }

    if (v17 == 0xFFFF)
    {
      return (a3 - a4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t sub_100061228(uint64_t result, __int16 *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v13 = result;
  if (a5 && a7 >= 1)
  {
    *(a6 + 2 * a7 - 2) = *a2;
  }

  if (*a2 < 0)
  {
    v20 = a2[1];
    *(a3 + 2 * (*a4)++) = v20;
    if (a5)
    {
      *(a6 + 2 * a7) = 0x7FFF;

      return sub_10009A5D8(a5, v20, a6, a7);
    }
  }

  else
  {
    v14 = a2 + 2;
    do
    {
      v15 = *v14;
      v14 += 2;
    }

    while (v15 < 0);
    v16 = *(v14 - 1);
    v17 = a2[1];
    if (v16 - v17 >= 1)
    {
      v18 = 0;
      v19 = v16 - v17;
      do
      {
        result = sub_100061228(v13, v13 + 4 * (v18 + a2[1]), a3, a4, a5, a6, (v7 + 1));
        ++v18;
      }

      while (v19 != v18);
    }
  }

  return result;
}

uint64_t sub_100061360(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000728C0(*(result + 144));
    sub_100078808(v1[15]);
    sub_1000BFEC4(v1[11]);
    sub_100078F3C(v1[13]);
    sub_100078F3C(v1[9]);
    sub_100078808(v1[7]);
    sub_100078F3C(v1[5]);
    sub_100078F3C(v1[2]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000613E0(uint64_t a1)
{
  v2 = sub_1000BD5C4(*a1, 0xFFFFFFFF);
  v3 = sub_1000BD5C4(*(a1 + 24), v2);
  v4 = sub_1000BD5C4(*(a1 + 128), v3);
  v5 = sub_100078F9C(*(a1 + 8));
  v6 = sub_1000BD6C8(v5, 4, v4);
  v7 = sub_100078F9C(*(a1 + 32));
  v8 = sub_1000BD6C8(v7, 4, v6);
  v9 = sub_10007885C(*(a1 + 48));
  v10 = sub_1000BD6C8(v9, 4, v8);
  v11 = sub_100078F9C(*(a1 + 64));
  v12 = sub_1000BD6C8(v11, 4, v10);
  v13 = *(a1 + 96);
  if (v13)
  {
    v14 = sub_100078F9C(v13);
    v12 = sub_1000BD6C8(v14, 4, v12);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = sub_1000BD7F4(v15, 2, 256, 0xFFFFFFFFLL);
    v12 = sub_1000BD6C8(v16, 4, v12);
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    v18 = sub_10007885C(v17);
    v12 = sub_1000BD6C8(v18, 4, v12);
  }

  v19 = sub_100076A68(*(a1 + 136));

  return sub_1000BD6C8(v19, 4, v12);
}

uint64_t *sub_100061508(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "blid0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(152);
  if (!v10)
  {
LABEL_22:
    sub_1000BBBC4(v9);
    return v10;
  }

  v21 = 0;
  if (sub_1000BBD54(v9, v10) && sub_1000BBD54(v9, v10 + 3) && sub_1000BBD54(v9, v10 + 16))
  {
    v11 = sub_10007908C(v9);
    v10[2] = v11;
    if (v11)
    {
      v10[1] = v11;
      v12 = sub_10007908C(v9);
      v10[5] = v12;
      if (v12)
      {
        v10[4] = v12;
        v13 = sub_1000788B0(v9);
        v10[7] = v13;
        if (v13)
        {
          v10[6] = v13;
          v14 = sub_10007908C(v9);
          v10[9] = v14;
          if (v14)
          {
            v10[8] = v14;
            v20 = 0;
            if (sub_1000BBF0C(v9, 2, v10 + 11, &v20))
            {
              v15 = v10[11];
              if (!v15 || v20 == 256)
              {
                if (v15)
                {
                  v10[10] = v15;
                }

                if (sub_1000BBD54(v9, &v21))
                {
                  if (v21 != 1)
                  {
                    goto LABEL_20;
                  }

                  v16 = sub_10007908C(v9);
                  v10[13] = v16;
                  if (v16)
                  {
                    v10[12] = v16;
                    v17 = sub_1000788B0(v9);
                    v10[15] = v17;
                    if (v17)
                    {
                      v10[14] = v17;
LABEL_20:
                      v18 = sub_100076A84(v9);
                      v10[18] = v18;
                      if (v18)
                      {
                        v10[17] = v18;
                        goto LABEL_22;
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

  sub_1000BBBC4(v9);
  sub_100061360(v10);
  return 0;
}

uint64_t sub_1000616AC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 9364);
  if (v4 < 1)
  {
    result = 0;
    if (v4 < *(a1 + 9360))
    {
LABEL_10:
      *(*(a1 + 9328) + 8 * result) = *(a3 + 24);
      *(*(a1 + 9336) + 2 * result) = a2;
      *(*(a1 + 9344) + 4 * result) = (*(a3 + 8) >> 35) & 0x3FFFF;
      v7 = *(a1 + 9352);
      if (v7)
      {
        *(v7 + 4 * result) = *(a1 + 9376);
      }

      ++*(a1 + 9364);
    }

    else
    {
LABEL_14:
      result = 0;
      *(a1 + 552) = 3;
    }
  }

  else
  {
    result = 0;
    while (1)
    {
      if (((*(a3 + 8) >> 35) & 0x3FFFF) == *(*(a1 + 9344) + 4 * result) && *(*(a1 + 9336) + 2 * result) == a2)
      {
        v6 = *(a1 + 9352);
        if (!v6 || *(v6 + 4 * result) == *(a1 + 9376))
        {
          break;
        }
      }

      if (v4 == ++result)
      {
        result = v4;
        if (v4 >= *(a1 + 9360))
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_100061794(uint64_t a1)
{
  v2 = a1 + 0x2000;
  v3 = *(a1 + 9048);
  v4 = (*(a1 + 9048) + *(a1 + 9064));
  if (v4 >= *(a1 + 9062))
  {
    v4 = *(a1 + 9062);
  }

  if ((*(a1 + 9050) + *(a1 + 9066)) >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 9050) + *(a1 + 9066);
  }

  v6 = *(a1 + 9212);
  v7 = *(a1 + 9240);
  if (v6 >= v7[1])
  {
    return (v5 - v3);
  }

  else
  {
    return (sub_10005B794(v7, v6, v3, v5) - *(v2 + 856));
  }
}

uint64_t sub_100061830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 < 1)
  {
    return 0;
  }

  v8 = a7;
  v9 = (a1 + 0x2000);
  v10 = a5;
  v12 = sub_100036C94(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = ~(*(a6 + 4 * v10 - 4) == -4) + v10;
  v14 = v9[439] + v12 + v9[438] * (~(*(a6 + 4 * v10 - 4) == -4) + v10);
  if (v13 >= 1 && v8 != 0)
  {
    do
    {
      if (*v8++)
      {
        v14 += v9[440];
      }

      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_1000618D4(uint64_t result, uint64_t a2, int a3)
{
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 5308))
    {
      if (*(qword_1001065A8 + 4220))
      {
        v3 = result;
        if (*(result + 9296))
        {
          v28 = result + 680;
          v4 = sub_100028A28(result + 680, *(result + 8872));
          if (*(v3 + 8900))
          {
            v5 = *(v3 + 8872);
            if (v5 >= 1 && a3 >= 1)
            {
              v6 = 0;
              v7 = -1;
              v8 = -1;
              do
              {
                if (*(*(v3 + 9296) + 8 * v6))
                {
                  v9 = 0;
                  v10 = a2 + 384;
                  do
                  {
                    v11 = a2 + 1096 * v9;
                    if (*(v28 + 8 * v6) == *(v11 + 16) && *(v11 + 8) > 0)
                    {
                      v12 = 0;
                      do
                      {
                        v13 = sub_10002E914(v4, *(v10 + 4 * v12));
                        if (sub_100031630(v13))
                        {
                          v14 = *(v10 + 4 * v12);
                          if (v14 != v7)
                          {
                            v8 = sub_1000247FC(*(*(v3 + 9288) + 8 * v6), *(v10 + 4 * v12));
                            v7 = v14;
                          }

                          *(v10 + 4 * v12) = v8;
                        }

                        ++v12;
                      }

                      while (v12 < *(v11 + 8));
                    }

                    ++v9;
                    v10 += 1096;
                  }

                  while (v9 != a3);
                  v5 = *(v3 + 8872);
                }

                ++v6;
              }

              while (v6 < v5);
            }
          }

          if (qword_1001065A8)
          {
            v15 = (qword_1001065A8 + 4220);
          }

          else
          {
            v15 = 0;
          }

          result = sub_10002E83C(v4, v15);
          if (result != -1)
          {
            v16 = *(v3 + 8872);
            if (v16 >= 1 && a3 >= 1)
            {
              v17 = result;
              v18 = 0;
              v27 = v3;
              do
              {
                if (*(*(v3 + 9296) + 8 * v18))
                {
                  v19 = 0;
                  v20 = a2;
                  do
                  {
                    v21 = a2 + 1096 * v19;
                    if (*(v28 + 8 * v18) == *(v21 + 16) && *(v21 + 8) > 0)
                    {
                      v22 = 0;
                      v23 = 0;
                      do
                      {
                        v24 = v20 + 4 * v22;
                        v25 = sub_10002E914(v4, *(v24 + 384));
                        result = sub_100031630(v25);
                        if (result)
                        {
                          *(v24 + 384) = v17;
                          if (v23)
                          {
                            *(v20 + v22 + 323) = 0;
                          }
                        }

                        ++v22;
                        v23 = result;
                      }

                      while (v22 < *(v21 + 8));
                    }

                    ++v19;
                    v20 += 1096;
                  }

                  while (v19 != a3);
                  v3 = v27;
                  v16 = *(v27 + 8872);
                }

                ++v18;
              }

              while (v18 < v16);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100061B70(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100022AD4(*(a1 + 680));
  if (result == 3 && *(a1 + 9296))
  {
    v7 = *(a1 + 8872);
    if (v7 >= 1 && a3 >= 1)
    {
      v9 = 0;
      do
      {
        if (*(*(a1 + 9296) + 8 * v9))
        {
          v10 = *(*(a1 + 9288) + 8 * v9);
          v11 = a3;
          v12 = (a2 + 16);
          do
          {
            if (*(a1 + 680 + 8 * v9) == *v12)
            {
              *v12 = v10;
            }

            v12 += 137;
            --v11;
          }

          while (v11);
          v7 = *(a1 + 8872);
        }

        ++v9;
      }

      while (v9 < v7);
    }
  }

  return result;
}

uint64_t sub_100061C30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 472);
  *(a2 + 88) = 0u;
  v5 = a2 + 88;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0u;
  if (sub_100036A44(a1) == 3)
  {
    v6 = (a2 + 12);
  }

  else
  {
    if (v4)
    {
      if (qword_1001065A8)
      {
        v7 = *(qword_1001065A8 + 1512);
      }

      else
      {
        v7 = 0;
      }

      sub_1000D3170(v4, v7, *(a1 + 452), a1 + 448);
      v8 = (v4 + 128);
    }

    else
    {
      v8 = (a1 + 9000);
    }

    v6 = (a2 + 12);
    v9 = sub_10009C060(*v8, a2 + 16, 0, 0, 0, 0, 36, (a2 + 4), (a2 + 12), 0, *(a1 + 8884), v5, 0);
    v10 = *(a2 + 4);
    if (v10 && v10 <= 36 && v9)
    {
      return 1;
    }

    *(a1 + 552) = 3;
  }

  result = 0;
  *v6 = 0x40000000;
  return result;
}

uint64_t sub_100061D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v15 = 0;
  v11 = 2 * a2;
  v12 = sub_1000C9F54(v11, a2, a3, a4, a5, a6, a7, a8);
  sub_10009C060(*(a1 + 9000), v12, 0, 0, 0, 0, v9, &v15 + 1, &v15, 0, 0, 0, 0);
  if (SHIDWORD(v15) >= 1)
  {
    v13 = 0;
    do
    {
      *(a3 + 4 * v13) = sub_1000BA7FC(*(a1 + 376), *(v12 + v13));
      ++v13;
    }

    while (v13 < SHIDWORD(v15));
  }

  sub_1000CA03C(v12, v11);
  return HIDWORD(v15);
}

uint64_t sub_100061E28(uint64_t a1)
{
  sub_1000998FC(*(a1 + 9256));
  sub_10009B314(*(a1 + 9000));
  *(a1 + 552) = 4;
  return 1;
}

uint64_t sub_100061E64(uint64_t a1)
{
  sub_1000998FC(*(a1 + 9256));
  *(a1 + 552) = 4;
  return 1;
}

uint64_t sub_100061E98(uint64_t a1)
{
  v2 = qword_1001065A8;
  if (!*(a1 + 576))
  {
    if (!qword_1001065A8)
    {
      v3 = 0;
      v4 = 0;
      *(a1 + 584) = 0;
      goto LABEL_10;
    }

    *(a1 + 584) = *(qword_1001065A8 + 1576);
    v5 = *(v2 + 1576);
    if (v5 < 1)
    {
      goto LABEL_3;
    }

    result = sub_1000C0034(4 * v5);
    *(a1 + 576) = result;
    if (!result)
    {
      return result;
    }

    v2 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  if (!qword_1001065A8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v3 = *(v2 + 4508);
  v4 = *(v2 + 4512);
LABEL_10:
  result = sub_10009977C(1, v3, v4, *(a1 + 556), 1, *(a1 + 376), *(a1 + 384));
  *(a1 + 9256) = result;
  if (result)
  {
    if (!qword_1001065A8)
    {
      return 1;
    }

    v7 = *(qword_1001065A8 + 2288);
    if (v7 < 1)
    {
      return 1;
    }

    result = sub_10004E924(v7, 8 * v7, *(a1 + 384));
    *(a1 + 9264) = result;
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100061F6C(uint64_t a1)
{
  v2 = sub_1000B215C(*(a1 + 376));
  if (*(a1 + 8896))
  {
    v3 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v3 = *(qword_1001065A8 + 4176);
    }

    v4 = v2 + *(a1 + 9360) + v3 + 2;
  }

  else
  {
    v4 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v4 = *(qword_1001065A8 + 4160);
    }
  }

  v5 = (v4 + 255) >> 8;
  if (v5 <= *(a1 + 608))
  {
    return 1;
  }

  result = sub_1000C0034((8 * v5));
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (!*(a1 + 556))
  {
    v8 = 0;
    v9 = *(a1 + 608);
    if (v9 >= v5)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v8 = sub_1000C0034((8 * v5));
  if (!v8)
  {
    v16 = v7;
LABEL_33:
    sub_1000BFEC4(v16);
    return 0;
  }

  v9 = *(a1 + 608);
  if (v9 < v5)
  {
LABEL_14:
    v10 = v9;
    v11 = &v7[v10];
    v12 = &v8[v10];
    while (1)
    {
      v13 = sub_1000C0034(6144);
      *v11 = v13;
      if (!v13)
      {
        break;
      }

      if (*(a1 + 556))
      {
        v14 = sub_1000C0034(256);
        *v12 = v14;
        if (!v14)
        {
          sub_1000BFEC4(*v11);
          break;
        }
      }

      ++v9;
      ++v11;
      ++v12;
      if (v5 == v9)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_20:
  if (v9 != v5)
  {
    if (v9 > *(a1 + 608))
    {
      v15 = v9;
      do
      {
        sub_1000BFEC4(v7[v15 - 1]);
        if (*(a1 + 556))
        {
          sub_1000BFEC4(v8[v15 - 1]);
        }

        --v15;
      }

      while (v15 > *(a1 + 608));
    }

    sub_1000BFEC4(v7);
    v16 = v8;
    goto LABEL_33;
  }

LABEL_21:
  j__memmove(v7, *(a1 + 592), 8 * *(a1 + 608));
  sub_1000BFEC4(*(a1 + 592));
  *(a1 + 592) = v7;
  if (*(a1 + 556))
  {
    j__memmove(v8, *(a1 + 600), 8 * *(a1 + 608));
    sub_1000BFEC4(*(a1 + 600));
    *(a1 + 600) = v8;
  }

  *(a1 + 608) = v5;
  return 1;
}