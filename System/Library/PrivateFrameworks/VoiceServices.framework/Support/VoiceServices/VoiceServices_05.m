uint64_t sub_100035A44(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 216);
  if (*a1 >= 1)
  {
    v4 = 0;
    v5 = 0;
    LODWORD(v6) = -1;
    while (v5)
    {
      v7 = *(a1 + 240);
      v6 = sub_1000BD5C4(v7, v6);
      if (v7 >= 1)
      {
        goto LABEL_8;
      }

LABEL_3:
      v4 = ++v5;
      if (v2 <= v5)
      {
        goto LABEL_17;
      }
    }

    v7 = 1;
    LODWORD(v6) = sub_1000BD5C4(1u, v6);
LABEL_8:
    v8 = 0;
    do
    {
      v9 = v4;
      if (*(a1 + 245))
      {
        v9 = *(*(a1 + 192) + 2 * v5);
      }

      v10 = sub_1000BD5C4(*(*(a1 + 8) + 6 * (v8 + *(a1 + 240) * v9) + 2), v6);
      v11 = v4;
      if (*(a1 + 245))
      {
        v11 = *(*(a1 + 192) + 2 * v5);
      }

      v12 = sub_1000BD5C4(*(*(a1 + 8) + 6 * (v8 + *(a1 + 240) * v11) + 4), v10);
      v13 = v4;
      if (*(a1 + 245))
      {
        v13 = *(*(a1 + 192) + 2 * v5);
      }

      v6 = sub_1000BD5C4(*(*(a1 + 8) + 6 * (v8 + *(a1 + 240) * v13)), v12);
      ++v8;
    }

    while (v7 != v8);
    goto LABEL_3;
  }

  v6 = 0xFFFFFFFFLL;
LABEL_17:
  v14 = 96;
  if (*(a1 + 246))
  {
    v15 = 2;
  }

  else
  {
    v14 = 64;
    v15 = 1;
  }

  if (*(a1 + 246))
  {
    v16 = 112;
  }

  else
  {
    v16 = 80;
  }

  v17 = sub_1000BD7F4(*(a1 + v14), v15, v3, v6);
  v18 = sub_1000BD7F4(*(a1 + v16), v15, v3, v17);
  v19 = sub_1000BD7F4(*(a1 + 128), 1, v3, v18);
  v20 = sub_1000BD7F4(*(a1 + 24), 1, *(a1 + 40), v19);
  if (*(a1 + 244) && !*(a1 + 248))
  {
    v26 = v3 + 7;
    if (v3 < -7)
    {
      v26 = v3 + 14;
    }

    v20 = sub_1000BD7F4(*(a1 + 144), 1, v26 >> 3, v20);
    if (*(a1 + 245))
    {
      goto LABEL_26;
    }

    return v20;
  }

  if (!*(a1 + 245))
  {
    return v20;
  }

LABEL_26:
  v21 = *a1;
  v22 = v3 + 7;
  if (v3 < -7)
  {
    v22 = v3 + 14;
  }

  v23 = sub_1000BD7F4(*(a1 + 152), 1, v22 >> 3, v20);
  v24 = *(a1 + 192);

  return sub_1000BD7F4(v24, 2, v21, v23);
}

uint64_t sub_100035CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (sub_100001140(a2) > 2)
  {
    return 0;
  }

  if (a3 && sub_100001140(a3) > 2 || a4 && sub_100001140(a4) > 2)
  {
    return 0;
  }

  result = 0;
  if (a6 <= 6)
  {
    if (a6 > 3)
    {
      if (a6 == 4)
      {
        result = sub_10009C9FC(a1, a2, a5);
      }

      else if (a6 == 5)
      {
        result = sub_10003B66C(a1, a2, a3, a4, a5);
      }

      else
      {
        result = sub_100039B04(a1, a2, a3, a4, a5);
      }

LABEL_33:
      if (result)
      {
        v17 = *(result + 48);
        if (v17)
        {
          v18 = result;
          v17();
          return v18;
        }
      }

      return result;
    }

    if (a6 != 1)
    {
      if (a6 != 3)
      {
        return result;
      }

      goto LABEL_25;
    }

    v13 = a1;
    v14 = a2;
    v15 = a5;
    v16 = 0;
LABEL_32:
    result = sub_10004F0A4(v13, v14, v15, v16);
    goto LABEL_33;
  }

  if (a6 > 8)
  {
    if (a6 != 9)
    {
      if (a6 != 10)
      {
        if (a6 != 11)
        {
          return result;
        }

        result = sub_1000AE7F4(a1, a2, a3, a5);
        goto LABEL_33;
      }

      v13 = a1;
      v14 = a2;
      v15 = a5;
      v16 = 1;
      goto LABEL_32;
    }

LABEL_25:
    if (!qword_1001065A8 || !*(qword_1001065A8 + 1164))
    {
      return 0;
    }

    result = sub_100063CD0(a1, a2, a5, a6 == 7, a6 == 9);
    goto LABEL_33;
  }

  if (a6 == 7)
  {
    goto LABEL_25;
  }

  result = sub_1000C0034(520);
  if (result)
  {
    *(result + 368) = 8;
    *result = sub_1000385E8;
  }

  return result;
}

uint64_t sub_100035F08(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100035F1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    sub_1000A1774(*(result + 504));
    *(v3 + 504) = 0;
    sub_1000A1774(*(v3 + 496));
    *(v3 + 496) = 0;
    sub_1000A0950(*(v3 + 488));
    *(v3 + 488) = 0;
    v4 = *(v3 + 392);
    if (v4 && *(v3 + 400))
    {
      sub_100056E04(v4);
    }

    *(v3 + 392) = 0;
    v5 = *v3;

    return v5(v3, a2);
  }

  return result;
}

uint64_t sub_100035FA0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100035FB0(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 372), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 416), 4, v2);
  v4 = sub_1000BD6C8(*(a1 + 424), 1, v3);
  if (*(a1 + 424))
  {
    v5 = sub_1000BD6C8(*(a1 + 428), 4, v4);
    LODWORD(v6) = *(a1 + 452);
    if (v6 < 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_1000BD6C8(0x4000u, 2, v4);
    LODWORD(v6) = *(a1 + 452);
    if (v6 < 1)
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
  do
  {
    v5 = sub_1000BD6C8(*(a1 + 448 + 2 * v7++), 2, v5);
    v6 = *(a1 + 452);
  }

  while (v7 < v6);
LABEL_7:
  v8 = sub_1000BD6C8(v6, 4, v5);
  if (*(a1 + 460) >= 1)
  {
    v9 = 0;
    do
    {
      v8 = sub_1000BD6C8(*(a1 + 456 + 2 * v9++), 2, v8);
    }

    while (v9 < *(a1 + 460));
  }

  v10 = *(a1 + 512);

  return sub_1000BD6C8(v10, 4, v8);
}

uint64_t sub_1000360D0(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000360E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000360F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10003610C(uint64_t result)
{
  v1 = *(result + 264);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10003611C(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    *(a1 + 424) = 0;
    *(a1 + 428) = 0x4000;
    *(a1 + 416) = 0x40000000;
    return 1;
  }

  v4 = qword_1001065A8;
  if (qword_1001065A8 && (*(qword_1001065A8 + 5356) || *(qword_1001065A8 + 5292)))
  {
    result = 1;
    *(a1 + 424) = 1;
    *(a1 + 428) = a3;
    *(a1 + 416) = 0;
  }

  else
  {
    result = sub_100001120(*(a1 + 384));
    v4 = qword_1001065A8;
    *(a1 + 424) = 1;
    *(a1 + 428) = a3;
    *(a1 + 416) = 0;
    if (!v4)
    {
      return result;
    }
  }

  if (*(v4 + 5268))
  {
    if (*(v4 + 5316))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000361F4(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100036218(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x40000000;
  }
}

uint64_t sub_10003622C(uint64_t result)
{
  if (*(result + 224))
  {
    return (*(result + 248))();
  }

  return result;
}

uint64_t sub_100036240(uint64_t result)
{
  v1 = *(result + 256);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100036250(uint64_t result)
{
  *(result + 468) = 0;
  v1 = *(result + 280);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100036264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8, int *a9, int *a10)
{
  v25 = 0;
  *a7 = 0;
  *a8 = 0;
  v10 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_7;
  }

  if (!*(qword_1001065A8 + 1160))
  {
    v10 = *(qword_1001065A8 + 1536);
LABEL_7:
    *a8 = v10;
    v15 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v15 = *(qword_1001065A8 + 1560);
    }

    *a7 = v15;
    v16 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v16 = *(qword_1001065A8 + 4488);
    }

    *a9 = v16;
    v17 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v17 = *(qword_1001065A8 + 4496);
    }

    *a10 = v17;
    return 1;
  }

  if (a2)
  {
    result = sub_100030478(a2, &v25, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

LABEL_15:
    v18 = sub_1000B207C(*(a1 + 376));
    if (sub_1000C7A1C(v18, "enus"))
    {
      if (v25 >= 1)
      {
        if (v25 >= 0x208)
        {
          v19 = 20000;
          if (v25 < 0x44C)
          {
            v20 = 3000;
            v21 = 6000;
            v22 = 2500;
LABEL_51:
            *a9 = v22;
            *a10 = v19;
            *a7 = v21;
            result = 1;
            *a8 = v20;
            return result;
          }

          v23 = v25 >= 0xC1C;
          if (v25 >= 0xC1C)
          {
            v22 = 7000;
          }

          else
          {
            v22 = 5000;
          }

          if (v25 >= 0xC1C)
          {
            v21 = 30000;
          }

          else
          {
            v21 = 20000;
          }

          if (v25 >= 0xC1C)
          {
            v19 = 60000;
          }

          else
          {
            v19 = 40000;
          }

          v24 = 8000;
LABEL_48:
          if (v23)
          {
            v20 = 12000;
          }

          else
          {
            v20 = v24;
          }

          goto LABEL_51;
        }

        goto LABEL_22;
      }
    }

    else if (v25 >= 1)
    {
      if (v25 >= 0x208)
      {
        if (v25 < 0x44C)
        {
          v20 = 1000;
          v21 = 6000;
          v19 = 20000;
          v22 = 2500;
          goto LABEL_51;
        }

        v19 = 40000;
        v22 = 5000;
        if (v25 < 0x834)
        {
          v20 = 1500;
          v21 = 6000;
          goto LABEL_51;
        }

        v23 = v25 >= 0xC1C;
        if (v25 >= 0xC1C)
        {
          v22 = 7000;
        }

        else
        {
          v22 = 5000;
        }

        if (v25 >= 0xC1C)
        {
          v19 = 60000;
        }

        else
        {
          v19 = 40000;
        }

        if (v25 >= 0xC1C)
        {
          v21 = 30000;
        }

        else
        {
          v21 = 10000;
        }

        v24 = 2500;
        goto LABEL_48;
      }

LABEL_22:
      v20 = 1000;
      v21 = 3000;
      v19 = 10000;
      v22 = 1500;
      goto LABEL_51;
    }

    v20 = 200;
    v19 = 4000;
    v22 = 500;
    v21 = 500;
    goto LABEL_51;
  }

  result = sub_100023790(a3, a4, &v25);
  if (result)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_10003648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  *(a1 + 480) = 0;
  *(a1 + 452) = a2;
  *(a1 + 436) = 0;
  *(a1 + 464) = 0;
  if (a6 <= 0xA && ((1 << a6) & 0x438) != 0)
  {
    if (!a4)
    {
      return 0;
    }

    v16 = sub_100022AD4(*a5);
    if (a4 > 1)
    {
      v17 = v16;
      v18 = a5 + 1;
      v19 = a4 - 1;
      while (sub_100022AD4(*v18) == v17)
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }
  }

  if (a2 < 1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = a2 - 2;
  if (a2 < 2)
  {
    v20 = 0;
  }

  v21 = *(a1 + 452) - v20;
  *(a1 + 452) = v21;
  memcpy((a1 + 448), (a3 + 2 * v20), 2 * v21);
  if (*(a3 + 2 * a2 - 2) == -3)
  {
    *(a1 + 456) = -4;
    v22 = 1;
  }

  else
  {
LABEL_14:
    v22 = 0;
    *(a1 + 456) = -1;
  }

  *(a1 + 460) = v22;
  result = (*(a1 + 32))(a1, a3, a2, a5, a4, a6, a7, a8, a9);
  v24 = *(a1 + 424) == 0;
  *(a1 + 416) = (*(a1 + 424) == 0) << 30;
  if (v24)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 420) = v25;
  *(a1 + 468) = result;
  return result;
}

uint64_t sub_100036610(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100036620(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL sub_100036634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v45 = 0;
  v10 = *(a1 + 420);
  v11 = *(a1 + 452);
  v12 = sub_1000C9F54(4 * v11 + 4, a2, a3, a4, a5, a6, a7, a8);
  v20 = v12;
  if (v11 >= 1)
  {
    v21 = (a1 + 448);
    v22 = v11;
    v23 = v12;
    do
    {
      v24 = *v21++;
      *v23++ = sub_1000BA810(*(a1 + 376), v24);
      --v22;
    }

    while (v22);
  }

  v44 = 0;
  if (!*(a1 + 424))
  {
    v25 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_18;
  }

  v25 = sub_1000C9F54(512, v13, v14, v15, v16, v17, v18, v19);
  v33 = sub_1000C9F54(128, v26, v27, v28, v29, v30, v31, v32);
  if (*(a1 + 468) && (*(a1 + 64))(a1) != 4)
  {
    if ((*(a1 + 64))(a1) != 3)
    {
      v35 = (*(a1 + 104))(a1, 1, &v45, &v44, 128, v25, v33, 0, 0, 0, 0, 0, 0, 0);
      if (v35)
      {
        if (v35 >= 1)
        {
          LODWORD(v36) = -1;
          v37 = v25;
          do
          {
            v38 = *v37++;
            v36 = (v36 + 1);
          }

          while (v38 != -1);
          if (*(a1 + 424))
          {
            v39 = *(a1 + 416);
          }

          else
          {
            v39 = 0x40000000;
          }

          v41 = (*(a1 + 112))(a1, v11, v20, (v11 + v36), v36, v25, v33);
          if (qword_1001065A8)
          {
            if (*(qword_1001065A8 + 5268))
            {
              v42 = (v45 - v41) * (306 - v8) / 256 - v39;
LABEL_27:
              v34 = v42 > 0;
              goto LABEL_18;
            }

            LODWORD(v43) = v45 - v39 - v41;
            if (*(qword_1001065A8 + 5316))
            {
              v43 = *(qword_1001065A8 + 4560) * v43 / v10;
            }
          }

          else
          {
            LODWORD(v43) = v45 - v39 - v41;
          }

          v42 = v43 - v8;
          goto LABEL_27;
        }
      }

      else
      {
        (*(a1 + 96))(a1);
      }
    }

    v34 = 1;
    goto LABEL_18;
  }

  *v25 = -1;
  v45 = 0x40000000;
  v34 = 1;
LABEL_18:
  sub_1000CA03C(v33, 128);
  sub_1000CA03C(v25, 512);
  sub_1000CA03C(v20, 4 * v11 + 4);
  return v34;
}

uint64_t sub_100036890(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a15)
  {
    *a15 = 0;
  }

  if (!*(a1 + 468) || (*(a1 + 64))(a1) == 4)
  {
    result = 0;
    *a8 = -1;
    *a5 = 0x40000000;
    return result;
  }

  if ((*(a1 + 64))(a1) != 3)
  {
    result = (*(a1 + 104))(a1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a2, a3);
    if (result)
    {
      goto LABEL_11;
    }

    (*(a1 + 96))(a1);
  }

  result = 0;
LABEL_11:
  if (a15)
  {
    if (result <= 0)
    {
      *a15 = 0;
    }

    else if (result == 1)
    {
      *a15 = 100;
    }

    else
    {
      v24 = a5[1] - *a5;
      if (v24 >= 6400)
      {
        v24 = 6400;
      }

      v25 = qword_1001065A8;
      if (qword_1001065A8 && (v25 = *(qword_1001065A8 + 1240), v25 * v24 > 3231))
      {
        LODWORD(v26) = 100;
      }

      else
      {
        v26 = (v25 * v24 + (v25 * v24 < 0 ? 0x1FuLL : 0)) >> 5;
      }

      *a15 = v26;
    }
  }

  return result;
}

uint64_t sub_100036A18(uint64_t a1)
{
  if (*(a1 + 424))
  {
    return *(a1 + 416);
  }

  else
  {
    return 0x40000000;
  }
}

uint64_t sub_100036A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 64))();
  if (result <= 6 && ((1 << result) & 0x66) != 0)
  {
    v8 = *(a1 + 56);

    return v8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_100036AD0(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100036B00(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036B14(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100036B54(uint64_t a1, int a2, int a3)
{
  v3 = a3 - a2;
  if (a3 - a2 >= 6400)
  {
    v3 = 6400;
  }

  v4 = qword_1001065A8;
  if (qword_1001065A8 && (v4 = *(qword_1001065A8 + 1240), v4 * v3 > 3231))
  {
    return 100;
  }

  else
  {
    return (v4 * v3 + (v4 * v3 < 0 ? 0x1FuLL : 0)) >> 5;
  }
}

uint64_t sub_100036BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a4 && *(a4 + 44) <= a8)
  {
    return 0;
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    return 0;
  }

  else
  {
    return v8(a1, a2);
  }
}

uint64_t sub_100036BF4(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036C08(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036C44(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100036C58(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100036C6C(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100036C80(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100036C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  if (a2 < 1)
  {
    v14 = 0;
    v23 = 2 * a5;
    v24 = sub_1000C9F54(v23, a2, a3, a4, a5, a6, a7, a8);
    if (a5 < 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14 = sub_1000C9F54((2 * a2), a2, a3, a4, a5, a6, a7, a8);
  v15 = 0;
  do
  {
    *(v14 + v15) = sub_1000B2A30(*(a1 + 376), *(a3 + 4 * v15));
    ++v15;
  }

  while (a2 != v15);
  v23 = 2 * a5;
  v24 = sub_1000C9F54(v23, v16, v17, v18, v19, v20, v21, v22);
  if (a5 >= 1)
  {
LABEL_7:
    v25 = a5;
    v26 = v24;
    do
    {
      v27 = *v8++;
      *v26++ = sub_1000B2AA8(*(a1 + 376), v27, 0);
      --v25;
    }

    while (v25);
  }

LABEL_9:
  v28 = sub_100039178(*(a1 + 376), a4, a2, v14, *(a1 + 460), a1 + 456, v24, a5);
  sub_1000CA03C(v24, v23);
  sub_1000CA03C(v14, 2 * a2);
  return v28;
}

uint64_t sub_100036DC0(uint64_t result)
{
  v1 = *(result + 120);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100036DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  result = sub_100003BA4(*(a1 + 384), &v10, a3, a4, a5, a6, a7, a8);
  *(a1 + 416) += result;
  if (v10)
  {
    ++*(a1 + 420);
  }

  return result;
}

uint64_t sub_100036E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, int *a10)
{
  sub_1000B1AEC(a10);
  if (!sub_10003648C(a1, a2, a3, a4, a5, a6, a7, a8, a9))
  {
    return 3;
  }

  v24 = 0;
  while (1)
  {
    v17 = sub_1000B1AFC(a10, &v24);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    v19 = v24;
    v20 = (*(a1 + 64))(a1);
    if (v20 <= 6 && ((1 << v20) & 0x66) != 0)
    {
      (*(a1 + 56))(a1, v18, v19);
    }

    if (((*(a1 + 64))(a1) & 0xFFFFFFFE) == 2)
    {
      break;
    }

    if (sub_1000CEDA4())
    {
      (*(a1 + 96))(a1);
      break;
    }
  }

  *(a1 + 480) = a10;
  (*(a1 + 160))(a1, a10);
  return (*(a1 + 64))(a1);
}

uint64_t sub_100036F78(uint64_t a1, uint64_t a2, int *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = sub_10000119C(*(a1 + 384));
  v51 = a3;
  sub_1000B1AEC(a3);
  if (*(a1 + 424))
  {
    *(a1 + 416) = 0;
  }

  v55 = 0;
  sub_100002998(*(a1 + 384), v10, v11, v12, v13, v14, v15);
  if (*(a2 + 36) < 1)
  {
    v18 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a5 != 0;
    if (a6)
    {
      v20 = a5 != 0;
    }

    else
    {
      v20 = 0;
    }

    v49 = 0;
    v50 = v20;
    if (!a6)
    {
      v19 = 1;
    }

    v46 = v19;
    do
    {
      if (*(*(a2 + 8) + 2 * v16) < 1)
      {
        v21 = 0;
        v53 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        if (a4)
        {
          v23 = 0;
        }

        else
        {
          v23 = v44 == *(*a2 + 2 * v16);
        }

        v24 = v23;
        v52 = v24;
        v53 = 0;
        do
        {
          v25 = sub_1000B1AFC(v51, &v55);
          sub_100003980(*(a1 + 384), v25, v55, *(a1 + 408), v17, 0, v26, v27, v28, v29, v30, v31);
          v32 = sub_10000EE08(*(a1 + 384), *(*a2 + 2 * v16));
          v39 = v32;
          if (v52)
          {
            v40 = 0;
          }

          else
          {
            v40 = v32;
          }

          if (*(a1 + 424))
          {
            v41 = a7;
            if (a7)
            {
              v56 = 0;
              v42 = sub_100003BA4(*(a1 + 384), &v56, v33, v34, v35, v36, v37, v38);
              *(a1 + 416) += v42;
              if (v56)
              {
                ++*(a1 + 420);
              }

              v41 = v39 - v42;
            }

            v49 = v41;
            v53 += v41;
          }

          sub_100003B68(*(a1 + 384), v17, (a1 + 436));
          if (a7 && a5 && *(a1 + 424))
          {
            *(a7 + 4 * v17) = v49;
          }

          if (v50)
          {
            *(a6 + 4 * v17) = v39;
          }

          v18 = (v40 + v18);
          v21 += v40;
          ++v17;
          ++v22;
        }

        while (v22 < *(*(a2 + 8) + 2 * v16));
      }

      if (a7 && !a5 && *(a1 + 424))
      {
        *(a7 + 4 * v16) = v53;
      }

      if (!v46)
      {
        *(a6 + 4 * v16) = v21;
      }

      ++v16;
    }

    while (v16 < *(a2 + 36));
  }

  sub_1000B1AFC(v51, 0);
  return v18;
}

BOOL sub_100037200(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v9 = a3;
  if (a3 >= 1)
  {
    v12 = a3;
    v13 = a2;
    while (1)
    {
      v14 = sub_1000B2A30(*(a1 + 376), *v13);
      v15 = *v13++;
      if (v15 == -1 || v14 == 0xFFFF)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_9;
      }
    }

    (*(a1 + 96))(a1);
    return 0;
  }

LABEL_9:
  v45 = 0;
  v17 = (2 * v9) | 1;
  v18 = v17;
  v43 = 4 * v17;
  v19 = sub_1000C9F54(v43, a2, a3, a4, a5, a6, a7, a8);
  v27 = sub_1000C9F54(v17, v20, v21, v22, v23, v24, v25, v26);
  v42 = 2 * v17;
  v35 = sub_1000C9F54(v42, v28, v29, v30, v31, v32, v33, v34);
  if (v9 != 1)
  {
    v36 = v19;
    v39 = sub_1000374A0(a1, v9, v17, a2, v19, v35, v27, a4, &v45);
    goto LABEL_16;
  }

  v36 = v19;
  if (sub_1000B2C18(*(a1 + 376), *a2) != 1)
  {
    v39 = sub_1000374A0(a1, 1, v17, a2, v19, v35, v27, a4, &v45);
LABEL_16:
    v40 = v39;
    v37 = (*(a1 + 64))(a1);
    if (!v40)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_1000B28E4(*(a1 + 376), *a2, v35, 1);
  *v27 = 0;
  v45 = 1;
  v37 = (*(a1 + 64))(a1);
LABEL_17:
  if (sub_100037AEC(a1, v9))
  {
    v40 = sub_1000A19B0(*(a1 + 496), v9) != 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_20:
  sub_1000A1958(*(a1 + 496));
  sub_1000A1958(*(a1 + 504));
  sub_1000B1AEC(a4);
  if (v40)
  {
    v41 = sub_100001138(*(a1 + 384)) && qword_1001065A8 && *(qword_1001065A8 + 1480) != 0;
    v37 = sub_100037BA0(a1, v45, v35, v27, a4, v41, &v44);
    if (v37 != 3)
    {
      sub_1000A1938(*(a1 + 504), *(a1 + 496));
    }
  }

  sub_1000CA03C(v35, v42);
  sub_1000CA03C(v27, v18);
  sub_1000CA03C(v36, v43);
  if (v37 != 3 && v40)
  {
    return *(*(a1 + 504) + 68) != 0x40000000;
  }

  return 0;
}

unsigned int *sub_1000374A0(uint64_t a1, int a2, uint64_t a3, unsigned int *a4, unsigned int *a5, int16x8_t *a6, uint64_t a7, int *a8, _DWORD *a9)
{
  v17 = a9;
  *a9 = 0;
  if (qword_1001065A8)
  {
    v18 = *(qword_1001065A8 + 4928);
  }

  else
  {
    v18 = 0;
  }

  __s1 = a4;
  v19 = sub_10002CFE0(a4, a2, *(a1 + 376), v18);
  v20 = v19;
  v102 = v19;
  if (!v19)
  {
    return v20;
  }

  v103 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v94 = a3;
  v95 = a7;
  if (!qword_1001065A8 || !*(qword_1001065A8 + 3320))
  {
    v57 = 0;
    v58 = 1;
LABEL_33:
    sub_1000B1AEC(a8);
    *(a1 + 480) = 0;
    *(a1 + 452) = 0;
    *(a1 + 436) = 0;
    *(a1 + 464) = 0;
    v64 = sub_100022AD4(v20);
    if (v58 < 2 || sub_100022AD4(v57) == v64)
    {
      *(a1 + 456) = -1;
      *(a1 + 460) = 0;
      v65 = (*(a1 + 32))(a1, 0, 0, &v102, v58, 3, 2, 1, &_mh_execute_header);
      v54 = *(a1 + 424) == 0;
      *(a1 + 416) = (*(a1 + 424) == 0) << 30;
      v66 = v54 ? -1 : 0;
      *(a1 + 420) = v66;
      *(a1 + 468) = v65;
      if (v65)
      {
        v67 = v65;
        do
        {
          v68 = sub_1000B1AFC(a8, &v99);
          if (!v68)
          {
            break;
          }

          v69 = v68;
          v70 = v99;
          v71 = (*(a1 + 64))(a1);
          if (v71 <= 6 && ((1 << v71) & 0x66) != 0)
          {
            (*(a1 + 56))(a1, v69, v70);
          }
        }

        while (((*(a1 + 64))(a1) & 0xFFFFFFFE) != 2);
        *(a1 + 480) = a8;
        (*(a1 + 160))(a1, a8);
        v73 = (*(a1 + 64))(a1);
        v20 = v73 == 3 ? 0 : v67;
        if (v73 != 3)
        {
          if (*(a1 + 468) && (*(a1 + 64))(a1) != 4)
          {
            v81 = a5;
            if ((*(a1 + 64))(a1) != 3)
            {
              v82 = (*(a1 + 104))(a1, 1, &v101, &v100, v94, a5, v95, 0, 0, 0, 0, 0, 0, 0);
              if (v82)
              {
                if (v82 >= 1)
                {
                  v83 = 0;
                  do
                  {
                    v84 = v83;
                    v85 = a5[v83++];
                  }

                  while (v85 != -1);
                  *v17 = v84;
                  if (v84)
                  {
                    v86 = -1;
                    do
                    {
                      v87 = *v81++;
                      sub_1000B28E4(*(a1 + 376), v87, a6, v83 + v86--);
                      a6 = (a6 + 2);
                    }

                    while (v84 + v86 != -1);
                  }

                  goto LABEL_56;
                }
              }

              else
              {
                (*(a1 + 96))(a1);
              }
            }
          }

          else
          {
            *a5 = -1;
            v101 = 0x40000000;
          }

          (*(a1 + 96))(a1);
        }
      }
    }

    v20 = 0;
LABEL_56:
    v74 = v58 - 1;
    v75 = *(&v102 + v74);
    *(a1 + 468) = 0;
    v76 = *(a1 + 280);
    if (v76)
    {
      v76(a1, v75);
      v75 = *(&v102 + v74);
    }

    sub_100022FBC(v75);
    if (v58 >= 2)
    {
      v77 = v58 - 2;
      v78 = *(&v102 + v77);
      *(a1 + 468) = 0;
      v79 = *(a1 + 280);
      if (v79)
      {
        v79(a1, v78);
        v78 = *(&v102 + v77);
      }

      sub_100022FBC(v78);
    }

    return v20;
  }

  v97 = a5;
  v92 = v19;
  v88 = a6;
  v21 = *(a1 + 376);
  v22 = sub_1000B210C(v21);
  v23 = sub_1000B214C(v21);
  v91 = 4 * a3;
  v31 = sub_1000C9F54(v91, v24, v25, v26, v27, v28, v29, v30);
  v90 = 2 * v22;
  v39 = sub_1000C9F54(v90 + 2, v32, v33, v34, v35, v36, v37, v38);
  v89 = 2 * v23;
  v47 = sub_1000C9F54(v89 + 2, v40, v41, v42, v43, v44, v45, v46);
  v93 = a2;
  __s2 = v31;
  if (a2 < 1)
  {
    v59 = 0;
    a5 = v97;
    goto LABEL_27;
  }

  v48 = a2;
  v49 = 1;
  v50 = __s1;
  do
  {
    sub_1000B22CC(v21, *v50, v39, v47);
    v55 = *v50;
    *v31 = *v50;
    if (!v47)
    {
      goto LABEL_9;
    }

    v56 = *v47;
    if (v56 == 109)
    {
      v55 = sub_1000B2174(v21, v39);
      *v31 = v55;
      v56 = *v47;
      if (v56 == 109)
      {
        if (v47[1] != 122)
        {
          goto LABEL_9;
        }

        v55 = sub_1000B2174(v21, v39);
        *v31 = v55;
        v56 = *v47;
      }
    }

    if (v56 == 102)
    {
      v55 = sub_1000B2174(v21, v39);
      *v31 = v55;
      if (*v47 == 102 && v47[1] == 122)
      {
        v55 = sub_1000B2174(v21, v39);
        *v31 = v55;
      }
    }

LABEL_9:
    v51 = sub_1000B2A30(*(a1 + 376), v55);
    v53 = *v50++;
    v52 = v53;
    v54 = v51 == -1 || v52 == -1;
    if (v54)
    {
      v49 = 0;
    }

    ++v31;
    --v48;
  }

  while (v48);
  v59 = v49 == 0;
  a5 = v97;
  v17 = a9;
LABEL_27:
  v60 = memcmp(__s1, __s2, 4 * a2);
  v57 = 0;
  v58 = 1;
  v20 = v92;
  if (!v60 || v59)
  {
LABEL_32:
    sub_1000CA03C(v47, v89 + 2);
    sub_1000CA03C(v39, v90 + 2);
    sub_1000CA03C(__s2, v91);
    a6 = v88;
    goto LABEL_33;
  }

  v61 = *(a1 + 376);
  if (!qword_1001065A8)
  {
    v62 = __s2;
    v63 = sub_10002CFE0(__s2, v93, v61, 0);
    v103 = v63;
    if (!v63)
    {
      goto LABEL_64;
    }

LABEL_31:
    v57 = v63;
    v58 = 2;
    goto LABEL_32;
  }

  v62 = __s2;
  v63 = sub_10002CFE0(__s2, v93, v61, *(qword_1001065A8 + 4928));
  v103 = v63;
  if (v63)
  {
    goto LABEL_31;
  }

LABEL_64:
  sub_1000CA03C(v47, v89 + 2);
  sub_1000CA03C(v39, v90 + 2);
  sub_1000CA03C(v62, v91);
  sub_100022FBC(v92);
  return 0;
}

uint64_t sub_100037AEC(uint64_t a1, int a2)
{
  if (!*(a1 + 488))
  {
    result = sub_1000A0908(*(a1 + 384), *(a1 + 376), *(a1 + 432));
    *(a1 + 488) = result;
    if (!result)
    {
      return result;
    }
  }

  v5 = *(a1 + 504);
  if (v5 && *(v5 + 40) < a2)
  {
    sub_1000A1774(v5);
    v5 = 0;
    *(a1 + 504) = 0;
  }

  v6 = *(a1 + 496);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (*(v6 + 40) < a2)
  {
    sub_1000A1774(*(a1 + 496));
    *(a1 + 496) = 0;
LABEL_9:
    result = sub_1000A17F0(*(a1 + 376), a2);
    *(a1 + 496) = result;
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 504);
  }

  if (v5)
  {
    return 1;
  }

  result = sub_1000A17F0(*(a1 + 376), a2);
  *(a1 + 504) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100037BA0(uint64_t a1, int a2, unsigned __int16 *a3, const void *a4, int *a5, int a6, _DWORD *a7)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!sub_100037AEC(a1, a2))
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 496);
  if (!sub_1000A19B0(v14, a2))
  {
    goto LABEL_13;
  }

  sub_1000A1958(*(a1 + 496));
  v15 = sub_10009C034(a5);
  if (v15 <= 0)
  {
    goto LABEL_13;
  }

  v33 = 0;
  v22 = sub_1000A0DF8(*(a1 + 488), v15, a6, 0x7FFFFFFF, 1, 0, a2, a3, v16, v17, v18, v19, v20, v21, 0, *(v14 + 24), *(v14 + 32), *v14, *(v14 + 16), *(v14 + 8), (v14 + 36), a4);
  *(v14 + 72) = *(a1 + 432);
  if (!v22)
  {
    goto LABEL_13;
  }

  memcpy(*(v14 + 48), a3, 2 * a2);
  memcpy(*(v14 + 56), a4, a2);
  *(v14 + 44) = a2;
  *(v14 + 64) = 0;
  sub_1000B1AEC(a5);
  v23 = qword_1001065A8 ? *(qword_1001065A8 + 5372) : 0;
  sub_1000038D8(*(a1 + 384), *(a1 + 408), 0, v23);
  do
  {
    v24 = sub_1000B1AFC(a5, &v33);
    if (!v24)
    {
      break;
    }

    v31 = sub_1000A1384(*(a1 + 488), v24, v33, *(a1 + 408), v25, v26, v27, v28, v29, v30);
    ++*(v14 + 64);
  }

  while ((v31 & 0xFFFFFFFE) != 2);
  result = sub_1000A11A0(*(a1 + 488), 0, (v14 + 68));
  *a7 = *(v14 + 68);
  if (result == 3)
  {
LABEL_13:
    (*(a1 + 96))(a1);
    return 3;
  }

  return result;
}

void sub_100037D5C(uint64_t a1)
{
  sub_1000A1958(*(a1 + 496));
  v2 = *(a1 + 504);

  sub_1000A1958(v2);
}

BOOL sub_100037D98(uint64_t a1, uint64_t a2, unsigned int *a3, int *a4, _DWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0x40000000;
  result = sub_100037200(a1, a3, a2, a4, a5, a6, a7, a8);
  if (result)
  {
    *a5 = *(*(a1 + 504) + 68);
    v12 = *(a1 + 504);
    result = 1;
    if (!a6)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
    if (!a6)
    {
      return result;
    }
  }

  *a6 = v12;
  return result;
}

uint64_t sub_100037E0C(uint64_t a1, uint64_t a2, int *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (qword_1001065A8)
  {
    v14 = *(qword_1001065A8 + 5372);
  }

  else
  {
    v14 = 0;
  }

  sub_1000038D8(*(a1 + 384), *(a1 + 408), 0, v14);

  return sub_100036F78(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100037EB4(uint64_t a1, uint64_t a2, unsigned int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1001065A8)
  {
    v8 = *(qword_1001065A8 + 48);
    if (!*(a1 + 488))
    {
      return 3;
    }
  }

  else
  {
    v8 = 0;
    if (!*(a1 + 488))
    {
      return 3;
    }
  }

  if (!a2 || !*(a1 + 496) || !sub_100037200(a1, a3, a2, a4, a5, a6, a7, a8))
  {
    return 3;
  }

  return sub_100037F60(a1, a4, 0, v8);
}

uint64_t sub_100037F60(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (a3)
  {
    if (*(a3 + 68) == 0x40000000)
    {
      return 3;
    }
  }

  else
  {
    v5 = *(a1 + 504);
    if (*(v5 + 68) == 0x40000000)
    {
      return 3;
    }
  }

  if (!*(v5 + 64))
  {
    return 3;
  }

  if (!a4)
  {
    goto LABEL_23;
  }

  v24 = 0;
  v8 = *(a1 + 384);
  sub_1000B1AEC(a2);
  v9 = *(v5 + 36);
  if (v9 > 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(v5 + 8);
    while (*(v12 + 2 * v11) < 1)
    {
LABEL_10:
      if (++v11 >= v9)
      {
        goto LABEL_16;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = sub_1000B1AFC(a2, &v24);
      sub_100003980(v8, v15, v24, *(a1 + 408), v10, 0, v16, v17, v18, v19, v20, v21);
      v22 = sub_1000090F0(v8, *(*v5 + 2 * v11), a4);
      sub_100003B68(v8, v10, (a1 + 436));
      if (!v22)
      {
        return 4;
      }

      ++v14;
      ++v10;
      v12 = *(v5 + 8);
      if (v14 >= *(v12 + 2 * v11))
      {
        v9 = *(v5 + 36);
        goto LABEL_10;
      }
    }
  }

LABEL_16:
  if (!qword_1001065A8 || !*(qword_1001065A8 + 884))
  {
    goto LABEL_23;
  }

  v23 = sub_100006FC4(*(a1 + 384));
  if (v23 && qword_1001065A8)
  {
    if (*(qword_1001065A8 + 4604))
    {
      v23 = sub_100008FA8(*(a1 + 384));
      goto LABEL_22;
    }

LABEL_23:
    result = 0;
    ++*(a1 + 512);
    return result;
  }

LABEL_22:
  if (v23)
  {
    goto LABEL_23;
  }

  return 4;
}

uint64_t sub_100038140(uint64_t a1, unsigned int a2, int a3)
{
  sub_100007DF0(*(a1 + 384));
  v6 = sub_100007B30(*(a1 + 384), a2, a3) == 0;
  *(a1 + 512) = 0;
  return (4 * v6);
}

uint64_t sub_100038198(void *a1)
{
  sub_1000A1774(a1[63]);
  a1[63] = 0;
  sub_1000A1774(a1[62]);
  a1[62] = 0;
  sub_1000A0950(a1[61]);
  a1[61] = 0;
  v2 = a1[48];

  return sub_100007DF0(v2);
}

uint64_t sub_1000381F0(uint64_t result)
{
  v1 = *(result + 320);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100038200(uint64_t a1)
{
  result = sub_100006208();
  *(a1 + 408) = result;
  return result;
}

void *sub_100038228(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  if (sub_100001140(a4) > 2 || a5 && sub_100001140(a5) > 2)
  {
    return 0;
  }

  if (a6 && sub_100001140(a6) > 2)
  {
    return 0;
  }

  v22[0] = 0;
  if (a2)
  {
    sub_1000C78DC(v22, a2, 256);
  }

  sub_1000C7968(v22, "bd0", 256);
  if (!sub_1000C8ABC(a1, v22))
  {
    return 0;
  }

  result = sub_1000BBAE0(a1, "bd0", a2, v12, v13, v14, v15, v16);
  if (!result)
  {
    return result;
  }

  v18 = result;
  *v22 = 0;
  if (!sub_1000BBD54(result, v22))
  {
    sub_1000BBBC4(v18);
    return 0;
  }

  v19 = *v22;
  v20 = sub_1000BBD54(v18, &v21);
  sub_1000BBBC4(v18);
  if (!v20)
  {
    return 0;
  }

  if (v19 > 5)
  {
    if (v19 != 6)
    {
      if (v19 == 11)
      {
        return sub_1000AEA30(a1, a2, a3, a4, a5, v21);
      }

      return sub_100035CC4(a3, a4, a5, 0, v21, v19);
    }

    return sub_100039D10(a1, a2, a3, a4, a5, a6, v21);
  }

  else
  {
    if (v19 != 1)
    {
      if (v19 == 5)
      {
        return sub_10003B980(a1, a2, a3, a4, a5, a6, v21);
      }

      return sub_100035CC4(a3, a4, a5, 0, v21, v19);
    }

    return sub_1000502B0(a1, a2, a3, a4, v21);
  }
}

void sub_100038448(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v5 = *a4;
  if (!qword_1001065A8)
  {
    goto LABEL_27;
  }

  v9 = *(qword_1001065A8 + 4596);
  if ((v9 - 4) >= 2)
  {
    if (v9 == 2)
    {
      goto LABEL_17;
    }

    v10 = 0;
    if (!*(qword_1001065A8 + 1764))
    {
      goto LABEL_17;
    }

LABEL_7:
    v11 = *(a1 + 480);
    if (v11 && sub_10009C034(v11))
    {
      v5 = *a4;
      if (*a4 >= 1)
      {
        v12 = 0;
        do
        {
          v13 = &a3[32 * v12];
          sub_1000394C4(a1, a2, v13 + 3, v13 + 8, (v13 + 88), *(v13 + 1), v10);
          if (*(v13 + 3) == 0x40000000)
          {
            if (--v5 > v12)
            {
              j__memmove(&a3[32 * v12], v13 + 128, (v5 - v12) << 7);
            }

            --v12;
          }

          ++v12;
        }

        while (v12 < v5);
      }

      *a4 = v5;
    }

    goto LABEL_17;
  }

  v10 = 1;
  if (*(qword_1001065A8 + 1764))
  {
    goto LABEL_7;
  }

LABEL_17:
  if (!qword_1001065A8)
  {
    goto LABEL_27;
  }

  v14 = *(qword_1001065A8 + 4596);
  if ((v14 & 0xFFFFFFFE) == 2)
  {
    if (v5 < 1)
    {
      goto LABEL_27;
    }
  }

  else if (v14 != 5 || v5 <= 0)
  {
    goto LABEL_27;
  }

  v16 = v5;
  v17 = a3 + 3;
  do
  {
    sub_100039758(a1, v17, (v17 + 1), *(v17 - 2), 1, 2);
    v17 += 32;
    --v16;
  }

  while (v16);
LABEL_27:

  sub_1000207EC(a3, v5);
}

uint64_t sub_1000385EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  *a7 = 0x40000000;
  result = *a6;
  *a6 = 0;
  return result;
}

void sub_100038600(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *a2;
  if (v14 < 1)
  {
    LODWORD(v14) = 0;
    goto LABEL_47;
  }

  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a1;
  v19 = a13;
  v20 = a11;
  if (a14)
  {
    v98 = a2;
    v21 = 0;
    v22 = 0;
    v107 = (a1 + 620);
    v108 = (a1 + 146);
    v101 = *a2;
    while (1)
    {
      v23 = v18[2];
      if (v23 + v22 >= a6)
      {
        LODWORD(v14) = v21;
        goto LABEL_46;
      }

      v25 = v23 + 7;
      v24 = v23 < -7;
      v26 = v23 + 14;
      if (!v24)
      {
        v26 = v25;
      }

      v106 = v22;
      v27 = v22;
      v28 = (v15 + v22);
      v29 = v18;
      bzero(v28, v26 >> 3);
      if (v29[2] < 1)
      {
        v38 = v29;
        v39 = v106;
        *(a4 + 4 * v21) = *v29;
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v103 = v21;
        v30 = 0;
        v31 = v20;
        v109 = v20 + v27;
        v32 = v16 + 4 * v27;
        v33 = a9 + 4 * v27;
        v34 = a10 + 4 * v27;
        v35 = v107;
        v36 = v108;
        v37 = a12 + 2 * v27;
        do
        {
          *(v32 + 4 * v30) = sub_1000BA7FC(a14, *(v36 - 59));
          if (a12)
          {
            *(v37 + 2 * v30) = *v36;
          }

          if (a9)
          {
            *(v33 + 4 * v30) = *(v35 - 59);
          }

          v38 = v29;
          if (a10)
          {
            *(v34 + 4 * v30) = *v35;
          }

          if (v31)
          {
            *(v109 + v30) = *(v29 + v30 + 323);
          }

          *(v28 + v30) = *(v29 + v30 + 264);
          ++v30;
          ++v36;
          ++v35;
        }

        while (v30 < v29[2]);
        v39 = v106 + v30;
        v15 = a8;
        v14 = v101;
        v16 = a7;
        v19 = a13;
        v20 = v31;
        v17 = a5;
        v21 = v103;
        *(a4 + 4 * v103) = *v29;
        if (!a5)
        {
          goto LABEL_21;
        }
      }

      *(v17 + 2 * v21) = *(v38 + 2);
LABEL_21:
      *(v16 + 4 * v39) = -1;
      if (v19)
      {
        *(v19 + 8 * v21) = *(v38 + 2);
      }

      v22 = v39 + 1;
      v18 = v38 + 274;
      ++v21;
      v107 += 274;
      v108 += 548;
      if (v21 == v14)
      {
        goto LABEL_46;
      }
    }
  }

  if (a11)
  {
    v98 = a2;
    if (a12)
    {
      v41 = 0;
      v42 = 0;
      while (1)
      {
        v43 = v18[2];
        if (v43 + v42 >= a6)
        {
          break;
        }

        v44 = v43 + 7;
        v24 = v43 < -7;
        v45 = v43 + 14;
        if (!v24)
        {
          v45 = v44;
        }

        v46 = v18;
        bzero((a8 + v42), v45 >> 3);
        if (v46[2] > 0)
        {
          v47 = 0;
          v48 = 146;
          v49 = 96;
          do
          {
            *(v16 + 4 * v42 + 4 * v47) = *(v46 + v48 - 118);
            *(a12 + 2 * v42 + 2 * v47) = *(v46 + v48);
            if (a9)
            {
              *(a9 + 4 * v42 + 4 * v47) = v46[v49];
            }

            if (a10)
            {
              *(a10 + 4 * v42 + 4 * v47) = v46[v49 + 59];
            }

            *(a11 + v42 + v47) = *(v46 + v47 + 323);
            *(a8 + v42 + v47) = *(v46 + v47 + 264);
            ++v47;
            ++v49;
            v48 += 2;
          }

          while (v47 < v46[2]);
          v42 += v47;
        }

        *(a4 + 4 * v41) = *v46;
        if (a5)
        {
          *(a5 + 2 * v41) = *(v46 + 2);
        }

        *(v16 + 4 * v42) = -1;
        if (a13)
        {
          *(a13 + 8 * v41) = *(v46 + 2);
        }

        ++v42;
        v18 = v46 + 274;
        if (++v41 == v14)
        {
          goto LABEL_46;
        }
      }

      LODWORD(v14) = v41;
LABEL_46:
      a2 = v98;
      goto LABEL_47;
    }

    v80 = 0;
    v81 = 0;
    while (1)
    {
      v82 = v18[2];
      if (v82 + v81 >= a6)
      {
        LODWORD(v14) = v80;
        goto LABEL_46;
      }

      v83 = v82 + 7;
      v24 = v82 < -7;
      v84 = v82 + 14;
      if (!v24)
      {
        v84 = v83;
      }

      v85 = v81;
      v86 = v18;
      bzero((v15 + v81), v84 >> 3);
      if (v86[2] > 0)
      {
        if (a9)
        {
          v87 = 4 * v81;
          v88 = 0;
          if (a10)
          {
            v89 = v16 + v87;
            v90 = a10 + v87;
            v91 = a9 + v87;
            v92 = 96;
            do
            {
              *(v89 + 4 * v88) = *(v86 + v88 + 14);
              *(v91 + 4 * v88) = v86[v92];
              *(v90 + 4 * v88) = v86[v92 + 59];
              *(a11 + v81 + v88) = *(v86 + v88 + 323);
              *(v15 + v81 + v88) = *(v86 + v88 + 264);
              ++v88;
              ++v92;
            }

            while (v88 < v86[2]);
          }

          else
          {
            do
            {
              v96 = 4 * v88;
              *(v16 + v87 + v96) = *(v86 + v88 + 14);
              *(a9 + v87 + v96) = v86[v88 + 96];
              *(a11 + v81 + v88) = *(v86 + v88 + 323);
              *(v15 + v81 + v88) = *(v86 + v88 + 264);
              ++v88;
            }

            while (v88 < v86[2]);
          }
        }

        else
        {
          v88 = 0;
          v93 = v15 + v81;
          v94 = a11 + v81;
          if (!a10)
          {
            v97 = a13;
            do
            {
              *(v16 + 4 * v85 + 4 * v88) = *(v86 + v88 + 14);
              *(v94 + v88) = *(v86 + v88 + 323);
              *(v93 + v88) = *(v86 + v88 + 264);
              ++v88;
              ++v81;
            }

            while (v88 < v86[2]);
            goto LABEL_97;
          }

          do
          {
            v95 = 4 * v88;
            *(v16 + 4 * v81 + v95) = *(v86 + v88 + 14);
            *(a10 + 4 * v81 + v95) = v86[v88 + 155];
            *(v94 + v88) = *(v86 + v88 + 323);
            *(v93 + v88) = *(v86 + v88 + 264);
            ++v88;
          }

          while (v88 < v86[2]);
        }

        v81 += v88;
      }

      v97 = a13;
LABEL_97:
      *(a4 + 4 * v80) = *v86;
      if (a5)
      {
        *(a5 + 2 * v80) = *(v86 + 2);
      }

      *(v16 + 4 * v81) = -1;
      if (v97)
      {
        *(v97 + 8 * v80) = *(v86 + 2);
      }

      ++v81;
      v18 = v86 + 274;
      if (++v80 == v14)
      {
        goto LABEL_46;
      }
    }
  }

  v51 = a2;
  v52 = 0;
  v53 = 0;
  while (1)
  {
    v54 = v18[2];
    if (v54 + v53 >= a6)
    {
      break;
    }

    v55 = v54 + 7;
    v24 = v54 < -7;
    v56 = v54 + 14;
    if (!v24)
    {
      v56 = v55;
    }

    v57 = v18;
    bzero((v15 + v53), v56 >> 3);
    if (v57[2] > 0)
    {
      v58 = 4 * v53;
      v59 = a12;
      if (!a12)
      {
        v68 = a10 + v58;
        v69 = a9 + v58;
        v70 = a7 + v58;
        v71 = 96;
        v72 = a13;
        do
        {
          *(v70 + 4 * v59) = *(v57 + v59 + 14);
          if (a9)
          {
            *(v69 + 4 * v59) = v57[v71];
          }

          if (a10)
          {
            *(v68 + 4 * v59) = v57[v71 + 59];
          }

          *(v15 + v53 + v59) = *(v57 + v59 + 264);
          ++v59;
          ++v71;
        }

        while (v59 < v57[2]);
        v53 += v59;
        goto LABEL_76;
      }

      v60 = a12 + 2 * v53;
      v61 = a9;
      if (!a9)
      {
        v73 = a10 + v58;
        v74 = a7 + v58;
        v75 = 146;
        v72 = a13;
        do
        {
          *(v74 + 4 * v61) = *(v57 + v75 - 118);
          *(v60 + 2 * v61) = *(v57 + v75);
          if (a10)
          {
            *(v73 + 4 * v61) = v57[v61 + 155];
          }

          *(v15 + v53 + v61) = *(v57 + v61 + 264);
          ++v61;
          v75 += 2;
        }

        while (v61 < v57[2]);
        v53 += v61;
        goto LABEL_76;
      }

      v62 = 0;
      if (a10)
      {
        v63 = a7 + v58;
        v64 = a10 + v58;
        v65 = a9 + v58;
        v66 = 146;
        v67 = 96;
        do
        {
          *(v63 + 4 * v62) = *(v57 + v66 - 118);
          *(v60 + 2 * v62) = *(v57 + v66);
          *(v65 + 4 * v62) = v57[v67];
          *(v64 + 4 * v62) = v57[v67 + 59];
          *(v15 + v53 + v62) = *(v57 + v62 + 264);
          ++v62;
          ++v67;
          v66 += 2;
        }

        while (v62 < v57[2]);
      }

      else
      {
        v76 = a9 + v58;
        v77 = a7 + v58;
        v78 = 146;
        do
        {
          v79 = 4 * v62;
          *(v77 + v79) = *(v57 + v78 - 118);
          *(v60 + 2 * v62) = *(v57 + v78);
          *(v76 + v79) = v57[v62 + 96];
          *(v15 + v53 + v62) = *(v57 + v62 + 264);
          ++v62;
          v78 += 2;
        }

        while (v62 < v57[2]);
      }

      v53 += v62;
    }

    v72 = a13;
LABEL_76:
    *(a4 + 4 * v52) = *v57;
    if (v17)
    {
      *(v17 + 2 * v52) = *(v57 + 2);
    }

    *(a7 + 4 * v53) = -1;
    if (v72)
    {
      *(v72 + 8 * v52) = *(v57 + 2);
    }

    ++v53;
    v18 = v57 + 274;
    if (++v52 == v14)
    {
      goto LABEL_106;
    }
  }

  LODWORD(v14) = v52;
LABEL_106:
  a2 = v51;
LABEL_47:
  *a2 = v14;
}

uint64_t sub_100038E34(uint64_t result, int a2, _DWORD **a3, uint64_t a4, int a5)
{
  if (a2 >= 1 && **a3 == 3)
  {
    v7 = a2;
    v8 = result;
    do
    {
      if (**a3 == 3)
      {
        result = sub_100027CE8(*(v8 + 16), *(v8 + 8), v8 + 28, v8 + 384, v8 + 856, v8 + 323, a5);
        *(v8 + 4) += result;
      }

      v8 += 1096;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100038ED4(unsigned __int16 *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, int a6)
{
  v66 = 0;
  v11 = 2 * sub_1000B2164(a4);
  v19 = sub_1000C9FC0(v11 + 2, v12, v13, v14, v15, v16, v17, v18);
  v59 = sub_1000C9FC0(v11 + 2, v20, v21, v22, v23, v24, v25, v26);
  v34 = sub_1000C9FC0(v11, v27, v28, v29, v30, v31, v32, v33);
  v61 = a1 + 1;
  v62 = a4;
  v60 = v19;
  v35 = sub_1000B811C(a4, *a1, v19);
  v38 = (a3 - 1);
  v58 = v11;
  if (a3 < 1)
  {
    v43 = 2;
  }

  else
  {
    v39 = v35;
    v64 = a3;
    v40 = 0;
    if (a6)
    {
      v41 = 0;
      v42 = -1;
      v43 = 2;
      v44 = v59;
      v45 = v60;
      v63 = v34;
      while (1)
      {
        v46 = v44;
        if (v40 != v38)
        {
          v42 = sub_1000B811C(v62, v61[v40], v44);
        }

        if (v40 >= v38 || *(a2 + v40))
        {
          v47 = 0;
        }

        else
        {
          v47 = *v46;
        }

        sub_100002454(a5, v45, v39, v34, v41, v47, v36, v37);
        if (v39 >= 1)
        {
          v48 = v39;
          do
          {
            v49 = *v34++;
            sub_100012628(a5, v49, &v66);
            v43 = (v66 + v43);
            --v48;
          }

          while (v48);
        }

        if (v40 == v38)
        {
          v34 = v63;
          if (!*(a2 + v38))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (*(a2 + v40) == 1)
          {
            v43 = (v43 + 1);
          }

          else
          {
            v43 = v43;
          }

          v34 = v63;
          if (!*(a2 + v40))
          {
LABEL_20:
            v41 = v45[v39 - 1];
            goto LABEL_9;
          }
        }

        v41 = 0;
LABEL_9:
        ++v40;
        v44 = v45;
        v45 = v46;
        v39 = v42;
        if (v40 == v64)
        {
          goto LABEL_23;
        }
      }
    }

    v51 = -1;
    v43 = 2;
    v52 = v59;
    v53 = v60;
    do
    {
      v54 = v52;
      if (v40 != v38)
      {
        v51 = sub_1000B811C(v62, v61[v40], v52);
      }

      sub_100002454(a5, v53, v39, v34, 0, 0, v36, v37);
      if (v39 >= 1)
      {
        v55 = v39;
        v56 = v34;
        do
        {
          v57 = *v56++;
          sub_100012628(a5, v57, &v66);
          v43 = (v66 + v43);
          --v55;
        }

        while (v55);
      }

      if (v40 != v38)
      {
        if (*(a2 + v40) == 1)
        {
          v43 = (v43 + 1);
        }

        else
        {
          v43 = v43;
        }
      }

      ++v40;
      v52 = v53;
      v53 = v54;
      v39 = v51;
    }

    while (v40 != v64);
  }

LABEL_23:
  sub_1000CA03C(v34, v58);
  sub_1000CA03C(v59, v58 + 2);
  sub_1000CA03C(v60, v58 + 2);
  return v43;
}

uint64_t sub_100039178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = a8;
  v9 = a7;
  v12 = a3;
  v13 = a2;
  if (a5 < 1)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = 0;
    while (*(a6 + 2 * v15) != -1)
    {
      if (a5 == ++v15)
      {
        LODWORD(v15) = a5;
        break;
      }
    }
  }

  if (a3 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  if (v15 >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = v15;
  }

  v63 = 2 * (v16 + a8 + v17);
  v18 = sub_1000C9F54(v63, a2, a3, a4, a5, a6, a7, a8);
  v19 = v18;
  if (v16 >= 1)
  {
    v20 = v12 - v16;
    if (v16 < 4 || v18 - (2 * v20 + a4) < 0x20)
    {
      v21 = 0;
      goto LABEL_17;
    }

    if (v16 >= 0x10)
    {
      v21 = v16 & 0x7FFFFFF0;
      v44 = (2 * v20 + a4 + 16);
      v45 = (v18 + 16);
      v46 = v21;
      do
      {
        v47 = *v44;
        *(v45 - 1) = *(v44 - 1);
        *v45 = v47;
        v44 += 2;
        v45 += 2;
        v46 -= 16;
      }

      while (v46);
      if (v21 == v16)
      {
        goto LABEL_19;
      }

      if ((v16 & 0xC) == 0)
      {
LABEL_17:
        v22 = (a4 + 2 * v21 + 2 * v20);
        v23 = (v18 + 2 * v21);
        v24 = v16 - v21;
        do
        {
          v25 = *v22++;
          *v23++ = v25;
          --v24;
        }

        while (v24);
        goto LABEL_19;
      }
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v21 = v16 & 0x7FFFFFFC;
    v49 = (a4 + 2 * v48 + 2 * v20);
    v50 = (v18 + 2 * v48);
    v51 = v48 - v21;
    do
    {
      v52 = *v49++;
      *v50++ = v52;
      v51 += 4;
    }

    while (v51);
    if (v21 != v16)
    {
      goto LABEL_17;
    }

LABEL_19:
    v26 = v16;
    if (v8 < 1)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v26 = 0;
  if (v8 < 1)
  {
    goto LABEL_25;
  }

LABEL_22:
  v62 = v16;
  v16 = v17;
  v27 = (v18 + 2 * v26);
  v26 += v8;
  v28 = v8;
  v8 = v8;
  do
  {
    v29 = *v9++;
    *v27++ = sub_1000BA7F4(a1, v29, 0);
    --v8;
  }

  while (v8);
  LODWORD(v8) = v28;
  v17 = v16;
  LODWORD(v16) = v62;
LABEL_25:
  if (v17 < 1)
  {
    goto LABEL_31;
  }

  if (v17 < 4 || v19 + 2 * v26 - a6 < 0x20)
  {
    v30 = 0;
    v31 = v26;
    goto LABEL_29;
  }

  if (v17 >= 0x10)
  {
    v30 = v17 & 0x7FFFFFF0;
    v53 = (v19 + 2 * v26 + 16);
    v54 = (a6 + 16);
    v55 = v30;
    do
    {
      v56 = *v54;
      *(v53 - 1) = *(v54 - 1);
      *v53 = v56;
      v53 += 2;
      v54 += 2;
      v55 -= 16;
    }

    while (v55);
    if (v30 == v17)
    {
      goto LABEL_31;
    }

    if ((v17 & 0xC) == 0)
    {
      v31 = v30 + v26;
LABEL_29:
      v32 = (a6 + 2 * v30);
      v33 = v17 - v30;
      v34 = v19 + v31;
      do
      {
        v35 = *v32++;
        *v34++ = v35;
        --v33;
      }

      while (v33);
      goto LABEL_31;
    }
  }

  else
  {
    v30 = 0;
  }

  v57 = v30;
  v30 = v17 & 0x7FFFFFFC;
  v31 = v30 + v26;
  v58 = (v19 + 2 * v57 + 2 * v26);
  v59 = (a6 + 2 * v57);
  v60 = v57 - v30;
  do
  {
    v61 = *v59++;
    *v58++ = v61;
    v60 += 4;
  }

  while (v60);
  if (v30 != v17)
  {
    goto LABEL_29;
  }

LABEL_31:
  v36 = (v17 + v8);
  if (v36 < 1)
  {
    LOWORD(v37) = 0;
  }

  else
  {
    v37 = 0;
    v38 = v16;
    v39 = v16 - v13;
    while (1)
    {
      v40 = *(v19 + v38);
      if (v40 == 0xFFFF)
      {
        break;
      }

      if (v38 >= v13)
      {
        v41 = v13;
      }

      else
      {
        v41 = v38;
      }

      v42 = v39;
      if (v38 <= v13)
      {
        v42 = 0;
      }

      v37 += sub_1000BABCC(a1, v19 + 2 * v42, v41, v40);
      ++v39;
      ++v38;
      if (!--v36)
      {
        goto LABEL_43;
      }
    }

    LOWORD(v37) = 0x4000;
  }

LABEL_43:
  sub_1000CA03C(v19, v63);
  return v37;
}

uint64_t sub_1000394C4(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned __int16 *a4, uint64_t a5, unsigned int a6, int a7)
{
  v12 = *(a1 + 392);
  v13 = *(a1 + 480);
  v14 = sub_100038ED4(a4, a5, a6, *(a1 + 376), *(a1 + 384), a7);
  if (!a2)
  {
    a2 = *(a1 + 384);
  }

  result = sub_1000A0908(a2, *(a1 + 376), *(a1 + 432));
  if (result)
  {
    v16 = result;
    v75 = a7;
    v77 = v12;
    if (v13)
    {
      v17 = sub_10009C034(v13);
    }

    else
    {
      v17 = sub_100056E60(v12);
    }

    v25 = v17;
    v83[0] = 0;
    v81 = 0;
    v80 = 0;
    v74 = a3;
    *a3 = 0x40000000;
    v26 = 2 * v14;
    v27 = sub_1000C9FC0(v26, v18, v19, v20, v21, v22, v23, v24);
    v35 = sub_1000C9FC0(v26, v28, v29, v30, v31, v32, v33, v34);
    v43 = sub_1000C9FC0(v26, v36, v37, v38, v39, v40, v41, v42);
    v76 = sub_1000C9FC0(v26, v44, v45, v46, v47, v48, v49, v50);
    if (sub_1000A0DF8(v16, v25, v75, 0x7FFFFFFF, 1, 0, a6, a4, v51, v52, v53, v54, v55, v56, 0, v43, v14, v27, v35, v76, v83, a5) && v25 >= 1)
    {
      if (v13)
      {
        v57 = 0;
        while (1)
        {
          v58 = sub_1000B1C1C(v13, v57, &v80);
          if (sub_1000A1384(v16, v58, v80, *(a1 + 408), v59, v60, v61, v62, v63, v64) == 3)
          {
            break;
          }

          if (v25 == ++v57)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        while (1)
        {
          v67 = sub_100056EDC(v77, v13, &v80);
          if (sub_1000A1384(v16, v67, v80, *(a1 + 408), v68, v69, v70, v71, v72, v73) == 3)
          {
            break;
          }

          LODWORD(v13) = v13 + 1;
          if (v25 == v13)
          {
LABEL_13:
            if (sub_1000A11A0(v16, 0, &v81) != 3)
            {
              v82 = -1;
              v65 = *(a1 + 452);
              if (v65)
              {
                v82 = *(a1 + 2 * v65 + 446);
              }

              v66 = sub_100039178(*(a1 + 376), 1, 1, &v82, *(a1 + 460), a1 + 456, a4, a6);
              v81 += v66;
              *v74 = v81;
            }

            break;
          }
        }
      }
    }

    sub_1000CA03C(v76, v26);
    sub_1000CA03C(v43, v26);
    sub_1000CA03C(v35, v26);
    sub_1000CA03C(v27, v26);
    return sub_1000A0950(v16);
  }

  return result;
}

uint64_t sub_100039758(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 452);
  if (v11 >= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  v13 = a1 + 448;
  *a2 -= sub_100039178(*(a1 + 376), a5, v12, a1 + 448 + 2 * (v11 - v12), *(a1 + 460), a1 + 456, a3, a4);
  v14 = *(a1 + 452);
  if (v14 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = v14;
  }

  result = sub_100039178(*(a1 + 376), a6, v15, v13 + 2 * (v14 - v15), *(a1 + 460), a1 + 456, a3, a4);
  *a2 += result;
  return result;
}

void sub_100039818(uint64_t a1, uint64_t a2, char *__base, int *a4)
{
  v8 = *a4;
  if (qword_1001065A8)
  {
    v9 = *(qword_1001065A8 + 4596);
    if ((v9 - 4) < 2)
    {
      v10 = 1;
      v11 = *(a1 + 480);
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if (v9 == 2)
    {
      goto LABEL_16;
    }
  }

  v10 = 0;
  v11 = *(a1 + 480);
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (sub_10009C034(v11))
  {
    v8 = *a4;
    if (*a4 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = &__base[1096 * v12];
        sub_1000394C4(a1, a2, v13, v13 + 14, (v13 + 264), *(v13 + 2), v10);
        if (*v13 == 0x40000000)
        {
          if (--v8 > v12)
          {
            j__memmove(&__base[1096 * v12], v13 + 1096, 1096 * (v8 - v12));
          }

          --v12;
        }

        ++v12;
      }

      while (v12 < v8);
    }

    *a4 = v8;
  }

LABEL_16:
  if (!qword_1001065A8)
  {
    goto LABEL_32;
  }

  v14 = *(qword_1001065A8 + 4596);
  if ((v14 & 0xFFFFFFFE) == 2)
  {
    if (v8 < 1)
    {
      goto LABEL_32;
    }
  }

  else if (v14 != 5 || v8 <= 0)
  {
    goto LABEL_32;
  }

  v16 = a1 + 448;
  v17 = __base + 28;
  v18 = v8;
  do
  {
    v19 = *(v17 - 5);
    v20 = *(a1 + 452);
    if (v20 >= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    *(v17 - 7) -= sub_100039178(*(a1 + 376), 1, v21, v16 + 2 * (v20 - v21), *(a1 + 460), a1 + 456, v17, *(v17 - 5));
    v22 = *(a1 + 452);
    if (v22 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v22;
    }

    *(v17 - 7) += sub_100039178(*(a1 + 376), 2, v23, v16 + 2 * (v22 - v23), *(a1 + 460), a1 + 456, v17, v19);
    v17 += 1096;
    --v18;
  }

  while (v18);
LABEL_32:

  qsort(__base, v8, 0x448uLL, sub_1000210C4);
}

uint64_t sub_100039A34(_DWORD **a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = a2;
  do
  {
    v5 = *a1++;
    if (sub_1000236B0(v5))
    {
      v3 = (v3 + 1);
    }

    else
    {
      v3 = v3;
    }

    --v4;
  }

  while (v4);
  return v3;
}

BOOL sub_100039AA0(_DWORD **a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  do
  {
    v5 = *a1++;
    if (sub_1000236B0(v5))
    {
      ++v3;
    }

    --v4;
  }

  while (v4);
  return v3 != 0;
}

uint64_t sub_100039B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100039BE0(a1, a2, a5);
  if (result)
  {
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a2;
    }

    v12 = result;
    v13 = sub_100035CC4(a1, v11, 0, 0, a5, 1);
    result = v12;
    *(v12 + 528) = v13;
    if (v13)
    {
      if (!a4)
      {
LABEL_9:
        *(result + 472) = *(v13 + 472);
        return result;
      }

      v14 = sub_100035CC4(a1, a4, 0, 0, a5, 10);
      result = v12;
      *(v12 + 544) = v14;
      if (v14)
      {
        v13 = *(v12 + 528);
        goto LABEL_9;
      }
    }

    sub_100035F1C(result, 0);
    return 0;
  }

  return result;
}

uint64_t sub_100039BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100001140(a2) > 2)
  {
    return 0;
  }

  v6 = sub_1000C0034(632);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  memcpy(v6, &off_1000FCDF8, 0x208uLL);
  *(v7 + 376) = a1;
  *(v7 + 384) = a2;
  *(v7 + 432) = a3;
  v8 = sub_100035CC4(a1, a2, 0, 0, a3, 4);
  *(v7 + 536) = v8;
  if (!v8)
  {
    sub_1000BFEC4(v7);
    return 0;
  }

  sub_100038200(v7);
  if (!*(v7 + 408))
  {
LABEL_10:
    sub_100035F1C(v7, 0);
    return 0;
  }

  if (!qword_1001065A8)
  {
    sub_1000361DC(v7, 0, 0);
    v9 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1000361DC(v7, 0, *(qword_1001065A8 + 5372));
  v9 = qword_1001065A8;
  if (qword_1001065A8)
  {
LABEL_7:
    LODWORD(v9) = *(v9 + 4680);
  }

LABEL_8:
  *(v7 + 576) = v9;
  v10 = sub_1000C0034(2 * v9);
  *(v7 + 584) = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = sub_1000C0034(4 * *(v7 + 576));
  *(v7 + 592) = v11;
  if (!v11)
  {
    goto LABEL_10;
  }

  return v7;
}

void *sub_100039D10(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_100039BE0(a3, a4, a7);
  if (v14)
  {
    v28 = a6;
    v15 = sub_1000C7854(a2) + 10;
    v23 = sub_1000C9FC0(v15, v16, v17, v18, v19, v20, v21, v22);
    sub_1000C7968(v23, a2, v15);
    sub_1000C7968(v23, "fast", v15);
    if (a5)
    {
      v24 = a5;
    }

    else
    {
      v24 = a4;
    }

    v14[66] = sub_100038228(a1, v23, a3, v24, 0, 0);
    sub_1000CA03C(v23, v15);
    v25 = v14[66];
    if (v25)
    {
      if (!v28)
      {
LABEL_9:
        v14[59] = *(v25 + 472);
        return v14;
      }

      v26 = sub_100035CC4(a3, v28, 0, 0, a7, 10);
      v14[68] = v26;
      if (v26)
      {
        v25 = v14[66];
        goto LABEL_9;
      }
    }

    sub_100035F1C(v14, 0);
    return 0;
  }

  return v14;
}

uint64_t sub_100039E4C(uint64_t *a1, uint64_t a2)
{
  sub_100003974(a1[51]);
  v4 = a1[66];
  if (v4)
  {
    sub_100035F1C(v4, a2);
    a1[66] = 0;
  }

  v5 = a1[67];
  if (v5)
  {
    sub_100035F1C(v5, a2);
    a1[67] = 0;
  }

  v6 = a1[68];
  if (v6)
  {
    sub_100035F1C(v6, a2);
    a1[68] = 0;
  }

  sub_1000BFEC4(a1[73]);
  sub_1000BFEC4(a1[74]);
  bzero(a1, 0x208uLL);

  return sub_1000BFEC4(a1);
}

uint64_t sub_100039EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  if (a5 || (a6 - 3) <= 2)
  {
    goto LABEL_3;
  }

  v12 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    v13 = a2;
    *(a1 + 372) = a6;
    *(a1 + 564) = HIDWORD(a9);
    goto LABEL_14;
  }

  if (!*(qword_1001065A8 + 3224) || *(qword_1001065A8 + 3024))
  {
    v13 = a2;
    *(a1 + 372) = a6;
    *(a1 + 564) = HIDWORD(a9);
    if (a6 == 1)
    {
      if (*(v12 + 4716))
      {
        a6 = 2;
      }

      else
      {
        a6 = 1;
      }
    }

LABEL_14:
    v14 = a3;
    v15 = a7;
    result = sub_10003648C(*(a1 + 528), a3, v13, 0, 0, a6, a7, a8, a9);
    *(a1 + 552) = v15;
    *(a1 + 556) = a8;
    *(a1 + 560) = a9;
    if (v14 < 1)
    {
      *(a1 + 568) = 0;
      if (!result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(a1 + 572) = *(v13 + 2 * v14 - 2);
      *(a1 + 568) = 1;
      if (!result)
      {
        goto LABEL_4;
      }
    }

    *(a1 + 520) = 0;
    v11 = (a1 + 616);
    goto LABEL_5;
  }

LABEL_3:
  sub_100036B4C(*(a1 + 536));
  result = 0;
LABEL_4:
  v11 = (a1 + 520);
LABEL_5:
  *v11 = 1;
  return result;
}

uint64_t sub_10003A020(uint64_t a1, int a2, int a3)
{
  if (!sub_10003611C(a1, a2, a3) || !sub_100035F08(*(a1 + 528)))
  {
    return 0;
  }

  v4 = *(a1 + 536);

  return sub_100035F08(v4);
}

uint64_t sub_10003A09C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (qword_1001065A8 && *(qword_1001065A8 + 1780) && !*(result + 616))
  {
    *(result + 616) = 1;
  }

  else
  {
    *(result + 616) = *(result + 616) == 0;
    result = sub_100036A4C(*(result + 528), a2, a3);
    if (*(v3 + 372) != 1 || qword_1001065A8 && *(qword_1001065A8 + 4716))
    {
      v4 = *(v3 + 528);

      return sub_100036B28(v4);
    }
  }

  return result;
}

uint64_t sub_10003A138(uint64_t a1)
{
  result = sub_100036A44(*(a1 + 528));
  if (result != 1)
  {
    if (sub_100036B28(*(a1 + 528)))
    {
      return 3;
    }

    else if (sub_100036B28(*(a1 + 536)))
    {
      return 3;
    }

    else
    {
      result = sub_100036A44(*(a1 + 528));
      if (result != 2)
      {
        v3 = *(a1 + 536);

        return sub_100036A44(v3);
      }
    }
  }

  return result;
}

uint64_t sub_10003A1CC(uint64_t a1)
{
  result = sub_100036A44(*(a1 + 528));
  if (result != 1)
  {
    if (sub_100036B28(*(a1 + 528)))
    {
      return 3;
    }

    else if (sub_100036B28(*(a1 + 536)))
    {
      return 3;
    }

    else
    {
      result = sub_100036A44(*(a1 + 528));
      if (result != 2)
      {
        v3 = *(a1 + 536);

        return sub_100036A44(v3);
      }
    }
  }

  return result;
}

uint64_t sub_10003A258(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    sub_100036B4C(v2);
  }

  result = *(a1 + 536);
  if (result)
  {

    return sub_100036B4C(result);
  }

  return result;
}

_OWORD *sub_10003A2A8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, uint64_t a14)
{
  v22 = *(a1 + 536);
  if (sub_100036A44(a1) == 3)
  {
    result = 0;
LABEL_3:
    *a6 = -1;
    *a3 = 0x40000000;
    return result;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  if (*(a1 + 372) == 1 && (!qword_1001065A8 || !*(qword_1001065A8 + 4716)))
  {
    return sub_100036890(*(a1 + 528), a13, a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0);
  }

  v105 = a10;
  v24 = sub_10009C42C(v22, &v107);
  v106 = v24;
  v25 = sub_100036B28(*(a1 + 528));
  if (*(a1 + 372) != 1 || qword_1001065A8 && *(qword_1001065A8 + 4716))
  {
    v25 |= sub_100036B28(*(a1 + 536));
  }

  if (v25)
  {
    return 0;
  }

  if (v24)
  {
    v26 = DWORD1(v107);
    v27 = SDWORD1(v107);
    if (SDWORD1(v107) < 1)
    {
      goto LABEL_20;
    }

    v28 = (DWORD1(v107) + 1) >> 1;
    if (DWORD1(v107) < 7)
    {
      v29 = 0;
      goto LABEL_18;
    }

    v29 = 0;
    v48 = 2 * DWORD1(v107);
    v49 = &v107 + v48;
    v50 = 2 * v28;
    if (&v49[-2 * v28 + 16] > v49 + 14)
    {
      goto LABEL_18;
    }

    v51 = &v107 + DWORD1(v107);
    if (&v51[-v28 + 88] > v51 + 87)
    {
      goto LABEL_18;
    }

    v29 = 0;
    v52 = &v108;
    v53 = &v107 + v50 + 16;
    v54 = &v112 + v28 + 8;
    v55 = &v107 + v48 - v50 + 16;
    v56 = v49 + 16;
    v57 = &v107 + DWORD1(v107) - v28 + 88;
    v58 = v51 + 88;
    v59 = &v107 >= v49 || v55 >= v53;
    v60 = !v59;
    v61 = &v108 >= v58 || v57 >= v53;
    v62 = !v61;
    v63 = &v112 + 8 >= v56 || v55 >= v54;
    v64 = !v63;
    v65 = &v107 >= v51 || v57 >= v54;
    v66 = !v65;
    v67 = v55 >= v58 || v57 >= v56;
    v68 = !v67;
    v69 = &v112 + 8 >= v53 || &v108 >= v54;
    if (!v69 || v60 || v62 || v64 || v66 || v68)
    {
      goto LABEL_18;
    }

    if (DWORD1(v107) >= 0x1F)
    {
      v29 = ((DWORD1(v107) + 1) >> 1) & 0x7FFFFFF0;
      v80 = (&v107 + DWORD1(v107) + 72);
      v81 = (&v107 + v48 - 16);
      v82 = v29;
      v83 = (&v112 + 8);
      do
      {
        v85 = *v52;
        v84 = v52[1];
        v86 = vrev64q_s16(*v81);
        v87 = vrev64q_s16(v81[1]);
        *v52 = vextq_s8(v87, v87, 8uLL);
        v52[1] = vextq_s8(v86, v86, 8uLL);
        v52 += 2;
        v88 = vrev64q_s16(v85);
        v89 = vrev64q_s16(v84);
        *v81 = vextq_s8(v89, v89, 8uLL);
        v81[1] = vextq_s8(v88, v88, 8uLL);
        v81 -= 2;
        v90 = *v83;
        v91 = vrev64q_s8(*v80);
        *v83++ = vextq_s8(v91, v91, 8uLL);
        v92 = vrev64q_s8(v90);
        *v80-- = vextq_s8(v92, v92, 8uLL);
        v82 -= 16;
      }

      while (v82);
      if (v29 == v28)
      {
        goto LABEL_20;
      }

      if ((v28 & 0xC) == 0)
      {
LABEL_18:
        v30 = v28 - v29;
        v31 = &v107 + v29 + 88;
        v32 = &v107 + v26 - v29 + 87;
        v33 = 2 * v29;
        v34 = (&v107 + 2 * v26 - v33 + 14);
        v35 = (&v107 + v33 + 16);
        do
        {
          v36 = *v35;
          *v35++ = *v34;
          *v34-- = v36;
          LOBYTE(v36) = *v31;
          *v31++ = *v32;
          *v32-- = v36;
          --v30;
        }

        while (v30);
        goto LABEL_20;
      }
    }

    else
    {
      v29 = 0;
    }

    v93 = v29;
    v29 = v28 & 0x7FFFFFFC;
    v94 = (&v107 + 2 * v93 + 16);
    v95 = (&v107 + v26 - v93 + 84);
    v96 = (&v107 + 2 * v26 + -2 * v93 + 8);
    v97 = (&v107 + v93 + 88);
    v98 = v93 - v29;
    do
    {
      v99 = *v94;
      v100 = vrev64_s16(*v96);
      *v94++ = v100;
      v101 = vrev64_s16(v99);
      *v96-- = v101;
      v101.i32[0] = *v97;
      v102 = vmovl_u8(v101).u64[0];
      v100.i32[0] = *v95;
      *v97++ = vuzp1_s8(vrev64_s16(*&vmovl_u8(v100)), v102).u32[0];
      v103 = vrev64_s16(v102);
      *v95-- = vuzp1_s8(v103, v103).u32[0];
      v98 += 4;
    }

    while (v98);
    if (v29 != v28)
    {
      goto LABEL_18;
    }

LABEL_20:
    v37 = v27 - 1;
    v104 = &v107;
    j__memmove(&v112 + 8, &v112 + 9, v27 - 1);
    *(&v112 + v37 + 8) = 0;
    v38 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v104 = 0;
  v38 = qword_1001065A8;
  if (qword_1001065A8)
  {
LABEL_21:
    v38 = *(v38 + 4008);
  }

LABEL_22:
  if (v38 < a2)
  {
    LODWORD(v38) = v38 + 1;
  }

  result = sub_1000C0034(v38 << 7);
  if (!result)
  {
    goto LABEL_3;
  }

  v39 = result;
  v40 = *(*(a1 + 536) + 472);
  if (!v40)
  {
    v40 = *(a1 + 472);
  }

  if (a2 > 1 || !v24)
  {
    if (!qword_1001065A8)
    {
      v47 = 0;
LABEL_81:
      v70 = sub_1000D06D8(v40, result, v47, *(a1 + 456), 0, 0);
      v71 = 0;
      v106 = v70;
      v72 = v104;
      if (v104 && v70)
      {
        v73 = sub_100020768(v104, v39, *(a1 + 564));
        v72 = v104;
        v71 = v73;
      }

      v74 = qword_1001065A8;
      if (!qword_1001065A8 || !*(qword_1001065A8 + 1712))
      {
        sub_100020808(*(v40 + 96), v72, v39, &v106, a2);
        v74 = qword_1001065A8;
      }

      v75 = *(a1 + 544);
      if (v75)
      {
        if (v74)
        {
          v76 = *(v74 + 1496);
          v77 = *(v74 + 1704);
          LODWORD(v74) = *(v74 + 4600);
        }

        else
        {
          v77 = 0;
          v76 = 0;
        }

        sub_10004F68C(v75, &v106, v39, *(a1 + 480), *(a1 + 568), a1 + 572, v76, v77, v74);
        v74 = qword_1001065A8;
      }

      if (v74 && *(v74 + 4596) && (!*(v74 + 4216) || !v71))
      {
        v79 = *(v74 + 4104);
        if (v79 < v106)
        {
          v106 = v79;
        }

        sub_100038448(a1, 0, v39, &v106);
      }

      goto LABEL_101;
    }

LABEL_35:
    v47 = *(qword_1001065A8 + 4008);
    goto LABEL_81;
  }

  if (qword_1001065A8 && *(qword_1001065A8 + 4596))
  {
    goto LABEL_35;
  }

  v41 = v107;
  v42 = v108;
  v43 = v110;
  result[2] = v109;
  result[3] = v43;
  *result = v41;
  result[1] = v42;
  v44 = v111;
  v45 = v112;
  v46 = v114;
  result[6] = v113;
  result[7] = v46;
  result[4] = v44;
  result[5] = v45;
LABEL_101:
  sub_100020474(v39, *(v40 + 96), &v106, a2, a3, a5, a6, a7, a11);
  if (a8)
  {
    bzero(a8, 4 * v106);
  }

  if (v105)
  {
    bzero(v105, v106);
  }

  sub_1000BFEC4(v39);
  return v106;
}

uint64_t sub_10003A95C(uint64_t a1)
{
  sub_100036DC0(*(a1 + 528));
  v2 = *(a1 + 536);

  return sub_100036DC0(v2);
}

_DWORD *sub_10003A9A0(uint64_t a1)
{
  v2 = *(*(a1 + 536) + 472);
  if (!v2)
  {
    v2 = *(a1 + 472);
  }

  return sub_1000CF8F4(v2);
}

uint64_t sub_10003A9BC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14)
{
  v14 = a8;
  v15 = a7;
  v17 = a5;
  if (a5)
  {
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = *(a1 + 472);
    if (a4)
    {
      goto LABEL_7;
    }
  }

  v18 = a1;
  if (!sub_100037200(a2, a6, a7, a3, 1, a6, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  a4 = *(a2 + 504);
  a1 = v18;
LABEL_7:
  v39 = 0;
  v38 = 0;
  v20 = *(a4 + 16);
  v37 = a1;
  if (v14 >= 1)
  {
    v21 = 0;
    v22 = 0;
    while (*(v20 + 2 * v21) < v14)
    {
      v22 += *(*(a4 + 8) + 2 * v21++);
      if (v21 >= *(a4 + 36))
      {
        goto LABEL_14;
      }
    }

    if (v21)
    {
LABEL_14:
      if (!*(*(a4 + 24) + 2 * (v21 - 1)) && qword_1001065A8 && *(qword_1001065A8 + 4128))
      {
        v23 = v22 - *(*(a4 + 8) + 2 * (v21 - 1));
        goto LABEL_16;
      }
    }

    v23 = v22;
    goto LABEL_16;
  }

  LODWORD(v21) = 0;
  v22 = 0;
  v23 = 0;
LABEL_16:
  v21 = v21;
  do
  {
    if (*(v20 + 2 * v21) > a9 && *(*(a4 + 24) + 2 * v21))
    {
      break;
    }

    v22 += *(*(a4 + 8) + 2 * v21++);
  }

  while (v21 < *(a4 + 36));
  if (v21 <= 0)
  {
    v25 = qword_1001065A8;
    v26 = v22 - (v22 > 0);
    if (!qword_1001065A8)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v24 = v21 - 1;
  v25 = qword_1001065A8;
  if (!*(*(a4 + 24) + 2 * v24))
  {
    if (!qword_1001065A8)
    {
      v26 = v22 - (v22 > 0);
      v27 = sub_1000C9FC0(0, a2, a3, a4, a5, a6, a7, a8);
      if (v14)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (*(qword_1001065A8 + 4128))
    {
      v22 -= *(*(a4 + 8) + 2 * v24);
    }

    v26 = v22 - (v22 > 0);
LABEL_33:
    if (*(v25 + 1780))
    {
      v23 = (v23 + ((v23 & 0x8000) >> 15)) >> 1;
      v26 = (v26 + ((v26 & 0x8000) >> 15)) >> 1;
    }

    v27 = sub_1000C9FC0(*(v25 + 4008) << 7, a2, a3, a4, a5, a6, a7, a8);
    if (v14)
    {
      goto LABEL_36;
    }

LABEL_26:
    v28 = (v17 + 104);
    v29 = *(v17 + 108);
    if (v15 - 1 != a9)
    {
      goto LABEL_27;
    }

LABEL_37:
    v31 = v37;
    v30 = *(v37 + 456);
    v32 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v26 = v22 - (v22 > 0);
  if (qword_1001065A8)
  {
    goto LABEL_33;
  }

LABEL_25:
  v27 = sub_1000C9FC0(0, a2, a3, a4, a5, a6, a7, a8);
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_36:
  v38 = sub_1000B2A30(*(v17 + 96), a6[v14 - 1]);
  v28 = &v38;
  v29 = 1;
  if (v15 - 1 == a9)
  {
    goto LABEL_37;
  }

LABEL_27:
  v30 = sub_1000B2A30(*(v17 + 96), a6[a9 + 1]);
  v31 = v37;
  v32 = qword_1001065A8;
  if (!qword_1001065A8)
  {
LABEL_28:
    v33 = 0;
LABEL_41:
    v34 = sub_1000D0728(v17, v27, v33, v23, v26, v28, v29, v30, 0, 0);
    goto LABEL_42;
  }

LABEL_38:
  if (!*(v32 + 4128))
  {
    v33 = *(v32 + 4008);
    goto LABEL_41;
  }

  v34 = sub_10009C9BC(*(v31 + 536), v17, v27, *(v32 + 4008), v23, v26, v28, v29, v30, 0, 0);
LABEL_42:
  v39 = v34;
  sub_100020474(v27, *(v17 + 96), &v39, a10, a11, a12, a13, a14, 0);
  if (qword_1001065A8)
  {
    v35 = *(qword_1001065A8 + 4008) << 7;
  }

  else
  {
    v35 = 0;
  }

  sub_1000CA03C(v27, v35);
  return v39;
}

uint64_t sub_10003AD64(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 372) == 1 && (!qword_1001065A8 || !*(qword_1001065A8 + 4716)))
  {
    result = sub_100036A38(*(result + 528), 0);
    *(v3 + 520) = 1;
  }

  if (*(v3 + 520) == 1)
  {
    return result;
  }

  *(v3 + 480) = a2;
  v4 = *(v3 + 536);
  if (!a2)
  {
LABEL_10:
    result = sub_100036B4C(v4);
    goto LABEL_11;
  }

  if (!sub_10003648C(v4, *(v3 + 568), v3 + 572, 0, 0, *(v3 + 372), *(v3 + 552), *(v3 + 556), *(v3 + 560)) || (v5 = sub_100036AE8(*(v3 + 528)), v6 = v5 - 1, v5 <= 1))
  {
    v4 = *(v3 + 536);
    goto LABEL_10;
  }

  v7 = v5 - 1;
  if (qword_1001065A8)
  {
    v7 = v6 << (*(qword_1001065A8 + 1780) != 0);
  }

  sub_100036A38(*(v3 + 528), 0);
  sub_10009C500(*(v3 + 536), v6);
  if (qword_1001065A8 && *(qword_1001065A8 + 3224) && *(qword_1001065A8 + 3024) && *(qword_1001065A8 + 1312) == 3)
  {
    v15 = sub_1000C9F54(2 * *(v3 + 576), v8, v9, v10, v11, v12, v13, v14);
    v90 = sub_1000C9F54(4 * *(v3 + 576), v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v15 = 0;
    v90 = 0;
  }

  v23 = 0;
  v24 = 0;
  v93 = 0;
  v25 = 0;
  v94 = 0;
  v26 = qword_1001065A8;
  v86 = a2;
  v89 = v15;
  do
  {
    while (1)
    {
      if (v26 && *(v26 + 1648))
      {
        if (v93)
        {
          if (!v6)
          {
            goto LABEL_110;
          }

          LOWORD(v6) = v6 - 1;
        }

        v93 = !v93;
      }

      v27 = sub_1000B1C1C(a2, v7, &v94);
      v28 = v27;
      if ((v25 & 1) == 0 || !qword_1001065A8)
      {
        goto LABEL_39;
      }

      if (!*(qword_1001065A8 + 1464))
      {
        v29 = v27;
        if (!*(qword_1001065A8 + 1680))
        {
          goto LABEL_40;
        }

        v30 = sub_100012174(*(v3 + 384), v27, v23);
        v31 = qword_1001065A8;
        if (qword_1001065A8)
        {
          v31 = *(qword_1001065A8 + 1472);
        }

        v24 = v31 > v30;
LABEL_39:
        v29 = v28;
        goto LABEL_40;
      }

      v33 = !v24;
      v24 = v24;
      v29 = v33 ? v27 : v23;
LABEL_40:
      if (!v6)
      {
        goto LABEL_80;
      }

      v32 = v6 - 1;
      if (!qword_1001065A8 || !*(qword_1001065A8 + 3224))
      {
        goto LABEL_48;
      }

      v33 = !*(qword_1001065A8 + 3024) || (v6 & 1) == 0;
      if (v33)
      {
        goto LABEL_48;
      }

      v36 = *(qword_1001065A8 + 1312);
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v34 = 0;
          v32 = v6;
          goto LABEL_49;
        }

        if (v36 != 3)
        {
LABEL_48:
          v34 = 0;
          goto LABEL_49;
        }

        v34 = v6 != 1;
        v32 = v6 == 1 ? 1 : v6 - 2;
      }

      else
      {
        if (!v36)
        {
          goto LABEL_81;
        }

        if (v36 != 1)
        {
          goto LABEL_48;
        }

        if (v6 == 1)
        {
LABEL_80:
          v36 = 0;
          goto LABEL_81;
        }

        v34 = 0;
        v32 = v6 - 2;
      }

LABEL_49:
      v35 = sub_1000D0030(*(v3 + 472), *(v3 + 584), *(v3 + 592), *(v3 + 576) - 1, v32);
      v36 = v35;
      if (v34 && !v35)
      {
        v36 = sub_1000D0030(*(v3 + 472), *(v3 + 584), *(v3 + 592), *(v3 + 576) - 1, v6);
        goto LABEL_81;
      }

      if (v34)
      {
        v92 = v35;
        v37 = sub_1000D0030(*(v3 + 472), v15, v90, *(v3 + 576) - 1, v6);
        v91 = *(v3 + 584);
        v38 = *(v3 + 592);
        v87 = *(v3 + 576);
        v39 = v37 + v92;
        v88 = 8 * (v37 + v92);
        v47 = sub_1000C9F54(v88, v40, v41, v42, v43, v44, v45, v46);
        v48 = v47;
        if (v92 >= 1)
        {
          v49 = v92;
          v50 = v47 + 1;
          v51 = v91;
          do
          {
            v52 = *v51++;
            *(v50 - 2) = v52;
            v53 = *v38++;
            *v50 = v53;
            v50 += 2;
            --v49;
          }

          while (v49);
        }

        if (v37 >= 1)
        {
          v54 = v37;
          v55 = &v47[2 * v92 + 1];
          v56 = v89;
          v57 = v90;
          do
          {
            v58 = *v56++;
            *(v55 - 2) = v58;
            v59 = *v57++;
            *v55 = v59;
            v55 += 2;
            --v54;
          }

          while (v54);
        }

        v60 = v39;
        qsort(v47, v39, 8uLL, sub_10003B4E8);
        v61 = 0;
        if (v60 >= 1)
        {
          v62 = -1;
          v63 = v48;
          do
          {
            v64 = *v63;
            if (v64 != v62)
            {
              *&v48[8 * v61++] = *v63;
              v62 = v64;
            }

            ++v63;
            --v60;
          }

          while (v60);
        }

        if (v61 > v87)
        {
          qsort(v48, v61, 8uLL, sub_10003B50C);
          v61 = v87;
        }

        a2 = v86;
        v65 = v91;
        if (v61 >= 1)
        {
          if (v61 < 5 || v91 < &v48[8 * v61 - 6] && v48 < v91 + 2 * v61)
          {
            v66 = 0;
            goto LABEL_71;
          }

          if (v61 < 0x11)
          {
            v66 = 0;
            goto LABEL_104;
          }

          v72 = 16;
          if ((v61 & 0xF) != 0)
          {
            v72 = v61 & 0xF;
          }

          v66 = v61 - v72;
          v73 = (v48 + 64);
          v74 = (v91 + 16);
          v75 = v66;
          do
          {
            v76 = v73 - 32;
            v77 = vld4q_s16(v76);
            v78 = vld4q_s16(v73);
            *(v74 - 1) = v77;
            *v74 = v78;
            v73 += 64;
            v74 += 2;
            v75 -= 16;
          }

          while (v75);
          v65 = v91;
          if (v72 >= 5)
          {
LABEL_104:
            v79 = v65;
            if ((v61 & 3) != 0)
            {
              v80 = v61 & 3;
            }

            else
            {
              v80 = 4;
            }

            v81 = &v48[8 * v66];
            v82 = (v79 + 2 * v66);
            v83 = v80 + v66;
            v66 = v61 - v80;
            v84 = v83 - v61;
            do
            {
              v85 = vld4_s16(v81);
              v81 += 16;
              *v82++ = v85;
              v84 += 4;
            }

            while (v84);
            v65 = v91;
          }

LABEL_71:
          v67 = v61 - v66;
          v68 = (v65 + 2 * v66);
          v69 = &v48[8 * v66];
          do
          {
            v70 = *v69;
            v69 += 8;
            *v68++ = v70;
            --v67;
          }

          while (v67);
        }

        sub_1000CA03C(v48, v88);
        v36 = v92;
        if (v61)
        {
          v36 = v61;
        }

        v15 = v89;
      }

LABEL_81:
      sub_10009C510(*(v3 + 536), v36, *(v3 + 584), *(v3 + 592));
      sub_10009C520(*(v3 + 536), v29, v94, !v24);
      if (sub_100036B28(*(v3 + 536)))
      {
        goto LABEL_110;
      }

      v26 = qword_1001065A8;
      if (qword_1001065A8)
      {
        break;
      }

      v7 += 0xFFFF;
      LOWORD(v6) = v6 - 1;
      v25 = 1;
      v23 = v28;
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_110;
      }
    }

    if (*(qword_1001065A8 + 1464))
    {
      v24 = !v24;
    }

    if (*(qword_1001065A8 + 1780))
    {
      v71 = -2;
    }

    else
    {
      v71 = -1;
    }

    v7 += v71;
    LOWORD(v6) = v6 - 1;
    v25 = 1;
    v23 = v28;
  }

  while ((v6 & 0x8000) == 0);
LABEL_110:
  if (v15)
  {
    sub_1000CA03C(v90, 4 * *(v3 + 576));
    sub_1000CA03C(v15, 2 * *(v3 + 576));
  }

  result = sub_100036A38(*(v3 + 536), 0);
LABEL_11:
  *(v3 + 520) = 1;
  return result;
}

uint64_t sub_10003B3D4(uint64_t a1)
{
  result = sub_100036C44(*(a1 + 528));
  if (result)
  {
    return sub_100036C44(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003B418(uint64_t a1)
{
  result = sub_100036C58(*(a1 + 528));
  if (result)
  {
    return sub_100036C58(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003B45C(uint64_t a1)
{
  result = sub_100036C6C(*(a1 + 528));
  if (result)
  {
    return sub_100036C6C(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003B4A0(uint64_t a1)
{
  result = sub_100036C80(*(a1 + 528));
  if (result)
  {
    return sub_100036C80(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003B4E8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*(a1 + 1) - *(a2 + 1));
  }

  return result;
}

uint64_t sub_10003B50C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  result = (v3 - v4);
  if (v3 == v4)
  {
    v6 = *a1 - *a2;
    if (v6)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003B53C(uint64_t a1, int a2, __int16 a3)
{
  result = sub_100036B28(*(a1 + 528));
  v7 = result;
  if (*(a1 + 372) == 1)
  {
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_100036B28(*(a1 + 536));
    if (result | v7)
    {
      return result;
    }
  }

  v8 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v8 = *(qword_1001065A8 + 4088);
  }

  v9 = (v8 + a3);
  v10 = (sub_100036AE8(*(a1 + 528)) - 1);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (sub_1000D3DC4(*(a1 + 552), a2, v11))
  {
    v12 = 0;
    while (sub_1000D4110(*(a1 + 552), &v12))
    {
      sub_100036210(*(a1 + 536));
    }

    return sub_100023498(*(a1 + 536));
  }

  else
  {
    result = sub_100036B4C(*(a1 + 536));
    *(a1 + 520) = 1;
  }

  return result;
}

uint64_t sub_10003B68C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_100001140(a4) > 2 || a5 && sub_100001140(a5) > 2 || a6 && sub_100001140(a6) > 2)
  {
    return 0;
  }

  v14 = sub_1000C0034(8824);
  v15 = v14;
  if (v14)
  {
    memcpy(v14, &off_1000FD000, 0x208uLL);
    *(v15 + 376) = a3;
    *(v15 + 384) = a4;
    v16 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 3304))
      {
        a7 = (a7 << (*(qword_1001065A8 + 1780) != 0));
      }

      *(v15 + 432) = a7;
      v17 = 3;
      if (*(v16 + 1584))
      {
        if (*(v16 + 4136))
        {
          v17 = 9;
        }

        else
        {
          v17 = 3;
        }
      }
    }

    else
    {
      *(v15 + 432) = a7;
      v17 = 3;
    }

    v18 = sub_100035CC4(a3, a4, 0, 0, a7, v17);
    *(v15 + 536) = v18;
    if (!v18)
    {
      goto LABEL_42;
    }

    v19 = sub_100001108(a4);
    if (qword_1001065A8)
    {
      v20 = sub_100056D58(v19, *(qword_1001065A8 + 4056));
      *(v15 + 392) = v20;
      *(v15 + 400) = 1;
      if (!v20)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v21 = sub_100056D58(v19, 0);
      *(v15 + 392) = v21;
      *(v15 + 400) = 1;
      if (!v21)
      {
LABEL_42:
        sub_100035F1C(v15, 0);
        return 0;
      }
    }

    v22 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v22 = *(qword_1001065A8 + 5240);
    }

    *(v15 + 8820) = v22;
    sub_100038200(v15);
    if (!*(v15 + 408))
    {
      goto LABEL_42;
    }

    v23 = qword_1001065A8 ? *(qword_1001065A8 + 5372) : 0;
    sub_1000361DC(v15, 0, v23);
    v24 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v25 = a7;
      v26 = (*(qword_1001065A8 + 3512) / a7);
      if (v26 <= 1)
      {
        LOWORD(v26) = 1;
      }

      *(v15 + 562) = v26;
      v24 = *(v24 + 3504);
    }

    else
    {
      v25 = a7;
      *(v15 + 562) = 1;
    }

    v27 = (v24 / v25);
    if (v27 <= 1)
    {
      LOWORD(v27) = 1;
    }

    *(v15 + 560) = v27;
    if (!a5)
    {
      a5 = a4;
    }

    if (a1)
    {
      v28 = sub_1000C7854(a2) + 10;
      v36 = sub_1000C9FC0(v28, v29, v30, v31, v32, v33, v34, v35);
      *v36 = 0;
      sub_1000C7968(v36, a2, v28);
      sub_1000C7968(v36, "fast", v28);
      *(v15 + 528) = sub_100038228(a1, v36, a3, a5, 0, 0);
      sub_1000CA03C(v36, v28);
      v37 = *(v15 + 528);
    }

    else
    {
      v37 = sub_100035CC4(a3, a5, 0, 0, a7, 1);
      *(v15 + 528) = v37;
    }

    if (!v37)
    {
      goto LABEL_42;
    }

    if (a6)
    {
      v38 = sub_100035CC4(a3, a6, 0, 0, a7, 10);
      *(v15 + 544) = v38;
      if (!v38)
      {
        goto LABEL_42;
      }
    }

    v39 = *(*(v15 + 528) + 472);
    *(v15 + 472) = v39;
    v40 = sub_1000D3CAC(v39);
    *(v15 + 552) = v40;
    if (!v40)
    {
      goto LABEL_42;
    }
  }

  return v15;
}

uint64_t sub_10003B984(uint64_t *a1, uint64_t a2)
{
  sub_100003974(a1[51]);
  v4 = a1[66];
  if (v4)
  {
    sub_100035F1C(v4, a2);
    a1[66] = 0;
  }

  v5 = a1[67];
  if (v5)
  {
    sub_100035F1C(v5, a2);
    a1[67] = 0;
  }

  v6 = a1[68];
  if (v6)
  {
    sub_100035F1C(v6, a2);
    a1[68] = 0;
  }

  v7 = a1[69];
  if (v7)
  {
    sub_1000D3D74(v7);
    a1[69] = 0;
  }

  v8 = a1[1101];
  if (v8)
  {
    sub_1000BFEC4(v8);
    a1[1101] = 0;
  }

  bzero(a1, 0x208uLL);

  return sub_1000BFEC4(a1);
}

BOOL sub_10003BA2C(uint64_t a1)
{
  v2 = sub_1000360E4(*(a1 + 528));
  v3 = sub_1000360E4(*(a1 + 536));
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

uint64_t sub_10003BA8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v10 = a6 - 5;
  if (a6 == 5 || (v12 = a4, qword_1001065A8) && *(qword_1001065A8 + 3224) && !*(qword_1001065A8 + 3024))
  {
    sub_100036B4C(*(a1 + 536));
    v11 = (a1 + 520);
LABEL_26:
    result = 0;
    *v11 = 1;
    return result;
  }

  if (a6 == 4)
  {
    v14 = 5;
  }

  else
  {
    v14 = a6;
  }

  *(a1 + 372) = a6;
  *(a1 + 8784) = HIDWORD(a9);
  if (a3 < 1)
  {
    v16 = 0;
  }

  else
  {
    *(a1 + 8792) = *(a2 + 2 * a3 - 2);
    v16 = 1;
  }

  *(a1 + 8788) = v16;
  v18 = a5;
  v25 = a7;
  result = sub_10003648C(*(a1 + 528), a3, a2, a5, a4, v14, a7, a8, a9);
  v11 = (a1 + 520);
  if (!result)
  {
    goto LABEL_26;
  }

  *v11 = 0;
  v20 = __CFADD__(v10, 2);
  if (v10 >= 0xFFFFFFFE)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  if (!v20)
  {
    v12 = 0;
  }

  if (v21)
  {
    v22 = result;
    memcpy((a1 + 568), v12, 8 * v21);
    result = v22;
  }

  *(a1 + 8760) = v21;
  if (a6 != 1)
  {
    sub_100056E58(*(a1 + 392));
    result = sub_10003648C(*(a1 + 536), a3, a2, v21, v12, v14, v25, a8, a9);
    *(a1 + 566) = 0;
    *(a1 + 8780) = 1;
    if (*(a1 + 8820))
    {
      if (*(a1 + 8816) >= 1)
      {
        v23 = 0;
        v24 = *(a1 + 8808);
        do
        {
          *(v24 + 4 * v23++) = 0x40000000;
        }

        while (v23 < *(a1 + 8816));
      }
    }
  }

  return result;
}

uint64_t sub_10003BC40(uint64_t a1, int a2, int a3)
{
  if (!sub_10003611C(a1, a2, a3) || !sub_100035F08(*(a1 + 528)))
  {
    return 0;
  }

  v4 = *(a1 + 536);

  return sub_100035F08(v4);
}

void sub_10003BCBC(uint64_t a1, const void *a2, _DWORD *a3)
{
  if (qword_1001065A8 && *(qword_1001065A8 + 1780) && !*(a1 + 8780))
  {
    *(a1 + 8780) = 1;
    return;
  }

  *(a1 + 8780) = *(a1 + 8780) == 0;
  sub_100036A4C(*(a1 + 528), a2, a3);
  if (*(a1 + 372) != 1)
  {
    if (sub_100036A44(*(a1 + 528)) != 5)
    {
      if (sub_100056E68(*(a1 + 392), a2, a3))
      {
        if (!sub_100036B28(*(a1 + 528)))
        {
          v6 = sub_100036AE8(*(a1 + 528));
          v7 = *(a1 + 566);
          v8 = *(a1 + 560);
          if (v8 + v7 + *(a1 + 562) <= v6)
          {
            v9 = v6;
            v10 = sub_100036B28(*(a1 + 528));
            if (*(a1 + 372) != 1)
            {
              v10 |= sub_100036B28(*(a1 + 536));
            }

            if (!v10)
            {
              v11 = v9 - v8;
              sub_10003B53C(a1, v7, v11);
              *(a1 + 566) = v11;
              v12 = *(*(a1 + 528) + 384);

              sub_100012594(v12);
            }
          }
        }

        return;
      }

      sub_100036B4C(*(a1 + 536));
    }

    *(a1 + 520) = 1;
  }
}

uint64_t sub_10003BE48(uint64_t a1)
{
  v2 = *(a1 + 372);
  v3 = *(a1 + 528);
  if (v2 == 1)
  {

    return sub_100036A44(v3);
  }

  if (sub_100036B28(v3) || sub_100036B28(*(a1 + 536)))
  {
    return 3;
  }

  result = sub_100036A44(*(a1 + 528));
  if (result != 2)
  {
    v3 = *(a1 + 536);

    return sub_100036A44(v3);
  }

  return result;
}

uint64_t sub_10003BEDC(uint64_t a1)
{
  sub_100036AD0(*(a1 + 528));
  v2 = *(a1 + 536);

  return sub_100036AD0(v2);
}

uint64_t sub_10003BF30(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    sub_100036B4C(v2);
  }

  result = *(a1 + 536);
  if (result)
  {

    return sub_100036B4C(result);
  }

  return result;
}

_OWORD *sub_10003BF80(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, uint64_t a14)
{
  v15 = a5;
  v17 = a2;
  v19 = *(a1 + 472);
  if (qword_1001065A8 && *(qword_1001065A8 + 4552))
  {
    v20 = *(a1 + 536);
    return sub_100036890(v20, a13, a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  if (*(a1 + 372) == 1)
  {
    v20 = *(a1 + 528);
    return sub_100036890(v20, a13, a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0);
  }

  v22 = sub_100036208(*(a1 + 536));
  v45 = v22;
  if (v22)
  {
    v23 = &v46;
  }

  else
  {
    v23 = 0;
  }

  v43 = v23;
  v24 = sub_100036B28(*(a1 + 528));
  if (*(a1 + 372) != 1)
  {
    v24 |= sub_100036B28(*(a1 + 536));
  }

  if (v24)
  {
    return 0;
  }

  v25 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v25 = *(qword_1001065A8 + 4008);
  }

  if (v25 < v17)
  {
    LODWORD(v25) = v25 + 1;
  }

  result = sub_1000C0034(v25 << 7);
  if (result)
  {
    v26 = result;
    if (v17 <= 1 && v22)
    {
      if (!qword_1001065A8 || !*(qword_1001065A8 + 4596))
      {
        v27 = v46;
        v28 = v47;
        v29 = v49;
        result[2] = v48;
        result[3] = v29;
        *result = v27;
        result[1] = v28;
        v30 = v50;
        v31 = v51;
        v32 = v53;
        result[6] = v52;
        result[7] = v32;
        result[4] = v30;
        result[5] = v31;
LABEL_47:
        sub_100020474(v26, *(v19 + 96), &v45, v17, a3, v15, a6, a7, a11);
        sub_1000BFEC4(v26);
        return v45;
      }
    }

    else if (!qword_1001065A8)
    {
      v33 = 0;
LABEL_27:
      v34 = sub_1000D06D8(v19, result, v33, *(a1 + 456), (a1 + 568), *(a1 + 8760));
      v35 = 0;
      v45 = v34;
      if (v22 && v34)
      {
        v35 = sub_100020768(&v46, v26, *(a1 + 8784));
      }

      v36 = v35;
      v37 = qword_1001065A8;
      if (!qword_1001065A8 || !*(qword_1001065A8 + 1712))
      {
        sub_100020808(*(v19 + 96), v43, v26, &v45, v17);
        v37 = qword_1001065A8;
      }

      v38 = *(a1 + 544);
      if (v38)
      {
        if (v37)
        {
          v39 = *(v37 + 1496);
          v40 = *(v37 + 1704);
          LODWORD(v37) = *(v37 + 4600);
        }

        else
        {
          v40 = 0;
          v39 = 0;
        }

        sub_10004F68C(v38, &v45, v26, *(a1 + 480), *(a1 + 8788), a1 + 8792, v39, v40, v37);
        v37 = qword_1001065A8;
      }

      if (v37 && *(v37 + 4596) && (!*(v37 + 4216) || !v36))
      {
        v42 = *(v37 + 4104);
        if (v42 < v45)
        {
          v45 = v42;
        }

        sub_100038448(a1, 0, v26, &v45);
      }

      goto LABEL_47;
    }

    v33 = *(qword_1001065A8 + 4008);
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_10003C298(uint64_t a1)
{
  sub_100036DC0(*(a1 + 528));
  v2 = *(a1 + 536);

  return sub_100036DC0(v2);
}

uint64_t sub_10003C2E4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14)
{
  v14 = a8;
  v40 = a7;
  v16 = a5;
  v17 = a4;
  v21 = sub_1000C9F54(0x2000, a2, a3, a4, a5, a6, a7, a8);
  v22 = v21;
  if (!v16)
  {
    v16 = *(a1 + 472);
  }

  v23 = *(a1 + 8760);
  memcpy(v21, (a1 + 568), 8 * v23);
  if (qword_1001065A8 && *(qword_1001065A8 + 1780))
  {
    goto LABEL_25;
  }

  if (v17)
  {
LABEL_8:
    v42 = 0;
    v41 = 0;
    memcpy((a1 + 568), v22, 8 * v23);
    *(a1 + 8760) = v23;
    v27 = 0;
    v28 = 0;
    if (v14 <= 0)
    {
      v29 = *(v17 + 16);
    }

    else
    {
      v29 = *(v17 + 16);
      do
      {
        if (*(v29 + 2 * v27) >= v14)
        {
          break;
        }

        v28 += *(*(v17 + 8) + 2 * v27++);
      }

      while (v27 < *(v17 + 36));
      v27 = v27;
    }

    v30 = v28;
    do
    {
      if (*(v29 + 2 * v27) > a9 && *(*(v17 + 24) + 2 * v27))
      {
        break;
      }

      v30 += *(*(v17 + 8) + 2 * v27++);
    }

    while (v27 < *(v17 + 36));
    if (qword_1001065A8)
    {
      v31 = sub_1000C0034(*(qword_1001065A8 + 4008) << 7);
      if (v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v31 = sub_1000C0034(0);
      if (v31)
      {
LABEL_20:
        v32 = v31;
        LOWORD(v33) = v30 - (v30 > 0);
        if (v14)
        {
          v41 = sub_1000B2A30(*(v16 + 96), a6[v14 - 1]);
          v34 = &v41;
          v35 = 1;
          v33 = v33;
          if (v40 - 1 == a9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v34 = (v16 + 104);
          v35 = *(v16 + 108);
          v33 = v33;
          if (v40 - 1 == a9)
          {
LABEL_22:
            v36 = *(a1 + 456);
            v37 = qword_1001065A8;
            if (qword_1001065A8)
            {
LABEL_23:
              v38 = *(v37 + 4008);
LABEL_29:
              v42 = sub_1000D0728(v16, v32, v38, v28, v33, v34, v35, v36, v22, v23);
              sub_100020474(v32, *(v16 + 96), &v42, a10, a11, a12, a13, a14, 0);
              sub_1000BFEC4(v32);
              sub_1000CA03C(v22, 0x2000);
              return v42;
            }

LABEL_28:
            v38 = 0;
            goto LABEL_29;
          }
        }

        v36 = sub_1000B2A30(*(v16 + 96), a6[a9 + 1]);
        v37 = qword_1001065A8;
        if (qword_1001065A8)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

LABEL_25:
    sub_1000CA03C(v22, 0x2000);
    return 0;
  }

  if (sub_100037200(a2, a6, v40, a3, 1, v24, v25, v26))
  {
    v17 = *(a2 + 504);
    goto LABEL_8;
  }

  sub_1000CA03C(v22, 0x2000);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003C5E8(uint64_t a1)
{
  result = *(a1 + 536);
  if (result)
  {
    return sub_100036C08(result);
  }

  return result;
}

uint64_t sub_10003C620(uint64_t a1, uint64_t a2)
{
  result = sub_100036AE8(*(a1 + 528));
  if (*(a1 + 520) != 1 && result != 0)
  {
    if (*(a1 + 372) != 1)
    {
      sub_10003B53C(a1, *(a1 + 566), result);
      sub_100036A38(*(a1 + 536), a2);
    }

    result = sub_100036A38(*(a1 + 528), a2);
    *(a1 + 520) = 1;
  }

  return result;
}

uint64_t sub_10003C698(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 392);
  if (result)
  {
    result = sub_100056E04(result);
  }

  *(a1 + 392) = a2;
  *(a1 + 400) = 0;
  return result;
}

uint64_t sub_10003C700(uint64_t a1, int a2, int a3)
{
  result = sub_100036240(*(a1 + 528));
  if (*(a1 + 8820))
  {
    v7 = *(a1 + 8816);
    if (v7 > a3)
    {
      v8 = *(a1 + 8808);
LABEL_11:
      v8[a3] = a2;
      return result;
    }

    if (v7)
    {
      v9 = 2 * v7;
    }

    else
    {
      v9 = 200;
    }

    v10 = sub_1000BFF20(4 * v9);
    if (v10)
    {
      v8 = v10;
      j__memmove(v10, *(a1 + 8808), 4 * *(a1 + 8816));
      v11 = *(a1 + 8816);
      if (v11 < v9)
      {
        memset_pattern16(&v8[v11], &unk_1000F0DB0, 4 * (v9 + ~v11) + 4);
      }

      result = sub_1000BFEC4(*(a1 + 8808));
      *(a1 + 8816) = v9;
      *(a1 + 8808) = v8;
      goto LABEL_11;
    }

    return sub_100036B4C(a1);
  }

  return result;
}

uint64_t sub_10003C804(uint64_t a1)
{
  if (qword_1001065A8 && *(qword_1001065A8 + 1776))
  {
    return sub_100036C44(*(a1 + 536)) != 0;
  }

  result = sub_100036C44(*(a1 + 528));
  if (result)
  {
    return sub_100036C44(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003C860(uint64_t a1)
{
  if (qword_1001065A8 && *(qword_1001065A8 + 1776))
  {
    return sub_100036C58(*(a1 + 536)) != 0;
  }

  result = sub_100036C58(*(a1 + 528));
  if (result)
  {
    return sub_100036C58(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003C8BC(uint64_t a1)
{
  if (qword_1001065A8 && *(qword_1001065A8 + 1776))
  {
    return sub_100036C6C(*(a1 + 536)) != 0;
  }

  result = sub_100036C6C(*(a1 + 528));
  if (result)
  {
    return sub_100036C6C(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003C918(uint64_t a1)
{
  if (qword_1001065A8 && *(qword_1001065A8 + 1776))
  {
    return sub_100036C80(*(a1 + 536)) != 0;
  }

  result = sub_100036C80(*(a1 + 528));
  if (result)
  {
    return sub_100036C80(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_10003C974(uint64_t a1)
{
  result = *(a1 + 536);
  if (result)
  {
    v2 = qword_1001065A8 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(qword_1001065A8 + 4712))
    {
      return sub_1000381F0(result);
    }
  }

  return result;
}

void sub_10003C9B0(uint64_t a1)
{
  bzero((a1 + 6648), 0x5E8uLL);
  *(a1 + 6656) = a1 + 7196;
  *(a1 + 6648) = 5;
  *(a1 + 6672) = a1 + 6696;
  *(a1 + 6668) = 500;
  if (qword_1001065A8 && *(qword_1001065A8 + 100))
  {
    *(a1 + 5500) = 0;
    *(a1 + 800) = 0u;
    sub_10004377C(a1);
    if (!v9)
    {
      sub_100043B68(a1, v2, v3, v4, v5, v6, v7, v8);
      if (qword_1001065A8)
      {
        if (!sub_10003CE50(a1, *(qword_1001065A8 + 100)))
        {
          return;
        }
      }

      else if (!sub_10003CE50(a1, 0))
      {
        return;
      }

      *(a1 + 152) = sub_100099774();
      *(a1 + 156) = sub_100099758();
      *(a1 + 160) = sub_100099760();
LABEL_35:
      ++dword_100101738;
    }
  }

  else
  {
    if (sub_100001118(*(a1 + 16)))
    {
      v10 = *a1;
      sub_100001110(*(a1 + 16));
      sub_100056F70(v10);
    }

    sub_1000BAE5C(*(a1 + 8));
    sub_1000045BC(*(a1 + 16), 0);
    v11 = *(a1 + 24);
    if (v11)
    {
      sub_1000045BC(v11, 0);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      sub_1000045BC(v12, 0);
    }

    if (*(a1 + 24))
    {
      sub_100001118(*(a1 + 16));
      sub_100001118(*(a1 + 24));
      if (sub_100001118(*(a1 + 16)))
      {
        sub_100001110(*(a1 + 16));
        sub_100001110(*(a1 + 24));
      }
    }

    if (*(a1 + 40))
    {
      sub_100001118(*(a1 + 16));
      sub_100001118(*(a1 + 40));
      if (sub_100001118(*(a1 + 16)))
      {
        sub_100001110(*(a1 + 16));
        sub_100001110(*(a1 + 40));
      }
    }

    if (qword_1001065A8)
    {
      v13 = *(qword_1001065A8 + 1872);
      *(a1 + 6468) = v13;
      if (v13)
      {
        sub_10000DBBC(*(a1 + 16));
      }

      if (sub_1000400D8(a1))
      {
        return;
      }
    }

    else
    {
      *(a1 + 6468) = 0;
      if (sub_1000400D8(a1))
      {
        return;
      }
    }

    if (!qword_1001065A8 || !*(qword_1001065A8 + 1928) || !sub_100046328(a1))
    {
      sub_100001108(*(a1 + 16));
      sub_10004377C(a1);
      if (!v21)
      {
        sub_100043B68(a1, v14, v15, v16, v17, v18, v19, v20);
        if (qword_1001065A8)
        {
          v22 = *(a1 + 728);
          if (!sub_10003CE50(a1, *(qword_1001065A8 + 100)))
          {
            return;
          }
        }

        else
        {
          v22 = *(a1 + 728);
          if (!sub_10003CE50(a1, 0))
          {
            return;
          }
        }

        if (sub_1000474F4(a1, v23, v24, v25, v26, v27, v28, v29))
        {
          *(a1 + 6260) = 0xFFFFFFFF00000000;
          *(a1 + 5640) = sub_10004EAF0(*(a1 + 5624), (a1 + 5632), (a1 + 5644), (a1 + 5648));
          *(a1 + 760) = 0;
          if (qword_1001065A8)
          {
            v30 = *(qword_1001065A8 + 2048);
            v31 = *(qword_1001065A8 + 2072);
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }

          sub_1000B1390(a1 + 496, v22, v30, v31, 0, 1);
          if (qword_1001065A8)
          {
            v32 = *(qword_1001065A8 + 2032);
            v33 = *(qword_1001065A8 + 2040);
            if (v32 == -1)
            {
              v32 = *(qword_1001065A8 + 2048);
            }

            if (v33 == -1)
            {
              v33 = *(qword_1001065A8 + 2072);
            }
          }

          else
          {
            v32 = 0;
            v33 = 0;
          }

          sub_1000B1390(a1 + 544, v22, v32, v33, 0, 1);
          if (qword_1001065A8)
          {
            v34 = *(qword_1001065A8 + 1992);
            v35 = *(qword_1001065A8 + 2000);
            if (v34 == -1)
            {
              v34 = *(qword_1001065A8 + 2048);
            }

            if (v35 == -1)
            {
              v35 = *(qword_1001065A8 + 2072);
            }
          }

          else
          {
            v34 = 0;
            v35 = 0;
          }

          sub_1000B1390(a1 + 448, v22, v34, v35, 0, 1);
          if (qword_1001065A8)
          {
            v36 = *(qword_1001065A8 + 2056);
            v37 = *(qword_1001065A8 + 2064);
            if (v36 == -1)
            {
              v36 = *(qword_1001065A8 + 2048);
            }

            if (v37 == -1)
            {
              v37 = *(qword_1001065A8 + 2072);
            }
          }

          else
          {
            v36 = 0;
            v37 = 0;
          }

          sub_1000B1390(a1 + 592, v22, v36, v37, 0, 1);
          *(a1 + 440) = a1 + 496;
          if (*(a1 + 56) || !qword_1001065A8 || (v43 = *(qword_1001065A8 + 2120)) == 0 || (v44 = sub_1000593B4(*(a1 + 8), v43, (32 * v43), v38, v39, v40, v41, v42), (*(a1 + 56) = v44) != 0))
          {
            *&v45 = 0xFFFFFFFFLL;
            *(&v45 + 1) = 0xFFFFFFFFLL;
            *(a1 + 6416) = v45;
            *(a1 + 152) = sub_100099774();
            *(a1 + 160) = sub_100099760();
            *(a1 + 156) = sub_100099758();
            goto LABEL_35;
          }
        }
      }
    }
  }
}

_DWORD *sub_10003CE04(_DWORD *a1)
{
  bzero(a1, 0x5E8uLL);
  *(a1 + 1) = a1 + 137;
  *a1 = 5;
  *(a1 + 3) = a1 + 12;
  a1[5] = 500;
  return a1;
}

uint64_t sub_10003CE50(uint64_t a1, int a2)
{
  *(a1 + 5512) = 0;
  *(a1 + 96) = a2;
  if ((!qword_1001065A8 || !*(qword_1001065A8 + 1912)) && !*(a1 + 104))
  {
    if (a2)
    {
      v3 = a2;
      v4 = 8;
      goto LABEL_6;
    }

    if (!qword_1001065A8)
    {
      goto LABEL_33;
    }

    if (*(qword_1001065A8 + 4728))
    {
      v3 = a2;
      v4 = 11;
      goto LABEL_6;
    }

    if (*(qword_1001065A8 + 4720))
    {
      v3 = a2;
      v4 = 6;
      goto LABEL_6;
    }

    if (*(qword_1001065A8 + 4712))
    {
      v3 = a2;
      v4 = 5;
    }

    else
    {
LABEL_33:
      v3 = a2;
      v4 = 1;
    }

LABEL_6:
    result = sub_100035CC4(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 40), *(a1 + 728), v4);
    *(a1 + 104) = result;
    a2 = v3;
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 112) || (!a2 ? (!qword_1001065A8 || !*(qword_1001065A8 + 4544) ? (v6 = 3) : (v6 = 9)) : (v6 = 8), result = sub_100035CC4(*(a1 + 8), *(a1 + 16), 0, 0, *(a1 + 728), v6), (*(a1 + 112) = result) != 0))
  {
    v7 = *(a1 + 24);
    if (!v7 || *(a1 + 136) || (result = sub_100035CC4(*(a1 + 8), v7, 0, 0, *(a1 + 728), 3), (*(a1 + 136) = result) != 0))
    {
      v8 = *(a1 + 40);
      if (!v8 || *(a1 + 144) || (result = sub_100035CC4(*(a1 + 8), v8, 0, 0, *(a1 + 728), 3), (*(a1 + 144) = result) != 0))
      {
        v9 = *(a1 + 32);
        if (!v9)
        {
          return 1;
        }

        if (*(a1 + 120))
        {
          return 1;
        }

        result = sub_100035CC4(*(a1 + 8), v9, 0, 0, *(a1 + 728), 3);
        *(a1 + 120) = result;
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003CFF8()
{
  sub_1000C9EBC(0);
  sub_1000C9EDC(0x1000uLL, 2048, v0, v1, v2, v3, v4, v5);

  return sub_1000C9ED0();
}

int *sub_10003D030(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = sub_1000BFBD8(0x90uLL, a2, a3, a4, a5, a6, a7, a8);
  v11 = v10;
  if (v10 && (*v10 = v8, v10[8] = a1, v12 = sub_1000C0034(4 * v8), (*(v11 + 1) = v12) != 0) && (v13 = sub_1000C0034(2 * *v11), (*(v11 + 2) = v13) != 0) && (v14 = sub_1000C0034(8 * *v11), (*(v11 + 3) = v14) != 0) && (v15 = sub_1000C0034(4 * v11[8]), (*(v11 + 5) = v15) != 0) && (v16 = sub_1000C0034(4 * v11[8]), (*(v11 + 6) = v16) != 0) && (v17 = sub_1000C0034(4 * v11[8]), (*(v11 + 7) = v17) != 0) && (v18 = sub_1000C0034(v11[8]), (*(v11 + 8) = v18) != 0) && (v19 = sub_1000C0034(2 * v11[8]), (*(v11 + 9) = v19) != 0) && (v20 = sub_1000C0034(v11[8]), (*(v11 + 10) = v20) != 0) && (v11[1] = -1, *(v11 + 11) = -NAN, *(v11 + 13) = 0, v21 = sub_1000C0034(4 * v11[8]), (*(v11 + 15) = v21) != 0))
  {
    v22 = v11[8];
    v11[32] = 0;
    v11[33] = v22;
    v11[28] = -1;
    *(v11 + 17) = 0;
    return v11;
  }

  else
  {
    sub_10003D17C(v11);
    return 0;
  }
}

uint64_t sub_10003D17C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 80));
    v1[10] = 0;
    sub_1000BFEC4(v1[9]);
    v1[9] = 0;
    sub_1000BFEC4(v1[5]);
    v1[5] = 0;
    sub_1000BFEC4(v1[1]);
    v1[1] = 0;
    sub_1000BFEC4(v1[2]);
    v1[2] = 0;
    sub_1000BFEC4(v1[15]);
    v1[15] = 0;
    sub_1000BFEC4(v1[6]);
    v1[6] = 0;
    sub_1000BFEC4(v1[8]);
    v1[8] = 0;
    sub_1000BFEC4(v1[3]);
    v1[3] = 0;
    sub_1000BFEC4(v1[7]);
    v1[7] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

int *sub_10003D234(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10003D030(a1[8], *a1, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *result = *a1;
    result[8] = a1[8];
    result[1] = a1[1];
    result[22] = a1[22];
    result[23] = a1[23];
    *(result + 13) = *(a1 + 13);
    result[33] = a1[33];
    result[32] = a1[32];
    result[28] = a1[28];
    result[35] = a1[35];
    result[34] = a1[34];
    if (*a1 >= 1)
    {
      v10 = 0;
      do
      {
        *(*(result + 1) + 4 * v10) = *(*(a1 + 1) + 4 * v10);
        ++v10;
        v11 = *a1;
      }

      while (v10 < v11);
      if (v11 >= 1)
      {
        for (i = 0; i < v13; ++i)
        {
          *(*(result + 2) + 2 * i) = *(*(a1 + 2) + 2 * i);
          v13 = *a1;
        }

        if (v13 >= 1)
        {
          v14 = 0;
          do
          {
            *(*(result + 3) + 8 * v14) = *(*(a1 + 3) + 8 * v14);
            ++v14;
          }

          while (v14 < *a1);
        }
      }
    }

    if (a1[8] >= 1)
    {
      v15 = 0;
      do
      {
        *(*(result + 5) + 4 * v15) = *(*(a1 + 5) + 4 * v15);
        ++v15;
        v16 = a1[8];
      }

      while (v15 < v16);
      if (v16 >= 1)
      {
        for (j = 0; j < v18; ++j)
        {
          *(*(result + 6) + 4 * j) = *(*(a1 + 6) + 4 * j);
          v18 = a1[8];
        }

        if (v18 >= 1)
        {
          for (k = 0; k < v20; ++k)
          {
            *(*(result + 8) + k) = *(*(a1 + 8) + k);
            v20 = a1[8];
          }

          if (v20 >= 1)
          {
            for (m = 0; m < v22; ++m)
            {
              *(*(result + 9) + 2 * m) = *(*(a1 + 9) + 2 * m);
              v22 = a1[8];
            }

            if (v22 >= 1)
            {
              for (n = 0; n < v24; ++n)
              {
                *(*(result + 10) + n) = *(*(a1 + 10) + n);
                v24 = a1[8];
              }

              if (v24 >= 1)
              {
                for (ii = 0; ii < v26; ++ii)
                {
                  *(*(result + 15) + 4 * ii) = *(*(a1 + 15) + 4 * ii);
                  v26 = a1[8];
                }

                if (v26 >= 1)
                {
                  v27 = 0;
                  do
                  {
                    *(*(result + 7) + 4 * v27) = *(*(a1 + 7) + 4 * v27);
                    ++v27;
                  }

                  while (v27 < a1[8]);
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

uint64_t sub_10003D47C(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 376));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  result = sub_1000BFEC4(*(a1 + 392));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  return result;
}

uint64_t sub_10003D4BC(uint64_t a1, uint64_t *a2)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  if (a1)
  {
    v16 = sub_1000BFB80(*(a1 + 6480));
    v15 = sub_1000C9EBC(*(a1 + 6488));
    v12 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v4 = *(a1 + 6520);
    v5 = *(a1 + 6528);
  }

  else
  {
    v16 = sub_1000BFB80(0);
    v15 = sub_1000C9EBC(0);
    v12 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v5 = 0;
    v4 = 0;
  }

  v13 = sub_1000CED78(v4, v5, &v14);
  bzero(&v18, 0x5E8uLL);
  v19 = &v23;
  v18 = 5;
  v21 = &v22;
  v20 = 500;
  sub_1000BDB44(&v18);
  v6 = sub_1000BDA90();
  if (!setjmp(v6))
  {
    if (a1 && !sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (!*(a1 + 8160))
      {
        if (*(a1 + 5672))
        {
          sub_10003E0EC(a1, 1);
        }

        sub_10004D998(a1);
        sub_10004D9F0(a1);
        sub_1000478C0(a1);
        sub_100043BC4(a1);
        sub_100043A90(a1);
        sub_100040114(a1);
        if (qword_1001065A8)
        {
          v9 = *(qword_1001065A8 + 4456);
        }

        else
        {
          v9 = 0;
        }

        sub_100035F1C(*(a1 + 104), v9);
        *(a1 + 104) = 0;
        sub_100035F1C(*(a1 + 112), v9);
        sub_100035F1C(*(a1 + 136), v9);
        sub_100035F1C(*(a1 + 144), v9);
        sub_100035F1C(*(a1 + 120), v9);
        *(a1 + 112) = 0;
        v10 = *(a1 + 56);
        if (v10)
        {
          sub_100059540(v10);
        }

        v11 = *(a1 + 80);
        if (v11)
        {
          sub_1000302F8(v11);
        }

        sub_10002C0CC(*(a1 + 72));
        sub_10002E3A0(*(a1 + 80));
        sub_10004635C(a1);
        sub_1000B130C(*(a1 + 48));
        sub_1000B1DD8(*(a1 + 8));
        sub_1000055CC(*(a1 + 16));
        sub_1000055CC(*(a1 + 24));
        sub_1000055CC(*(a1 + 40));
        sub_1000055CC(*(a1 + 32));
        sub_100056EF4(*a1);
        sub_1000BFEC4(*(a1 + 376));
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
        *(a1 + 384) = 0;
        sub_1000BFEC4(*(a1 + 392));
        *(a1 + 392) = 0;
        *(a1 + 400) = 0;
        sub_10004EA6C(*(a1 + 5624));
        sub_1000BFEC4(*(a1 + 6512));
        qword_1001065A8 = 0;
        if (a2)
        {
          *a2 = *(a1 + 6480);
          bzero(a1, 0x1FF0uLL);
          --dword_100101738;
          sub_1000BFEC4(a1);
          sub_1000C9F24();
          sub_1000BFB94(*a2);
        }

        else
        {
          bzero(a1, 0x1FF0uLL);
          --dword_100101738;
          sub_1000BFEC4(a1);
          sub_1000C9F24();
        }

        v17 = 0;
        goto LABEL_12;
      }

      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    v17 = v7;
LABEL_12:
    sub_1000BDAF4();
    goto LABEL_13;
  }

  if (a1)
  {
    *(a1 + 8160) = 1;
  }

  v17 = 1;
LABEL_13:
  sub_10004D8D8(v17);
  sub_1000CED78(v13, v14, 0);
  sub_1000BDB44(v12);
  sub_1000C9EBC(v15);
  sub_1000BFB80(v16);
  return v17;
}

uint64_t sub_10003D838(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (a1)
  {
    v12 = sub_1000BFB80(*(a1 + 6480));
    v11 = sub_1000C9EBC(*(a1 + 6488));
    v8 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v9 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v10);
    nullsub_1(v9);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (!setjmp(v7))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v13 = 4;
        sub_1000BDAF4();
      }

      else
      {
        if (*(a1 + 8160))
        {
          v13 = 1;
        }

        else
        {
          *a2 = *(a1 + 164);
          *a3 = *(a1 + 168);
          v13 = 0;
        }

        sub_1000BDAF4();
      }

      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v12 = sub_1000BFB80(0);
    v11 = sub_1000C9EBC(0);
    v8 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v9 = sub_1000CED78(0, 0, &v10);
    nullsub_1(v9);
  }

  v13 = 1;
LABEL_9:
  sub_10004D8D8(v13);
  sub_1000CED78(v9, v10, 0);
  sub_1000BDB44(v8);
  sub_1000C9EBC(v11);
  sub_1000BFB80(v12);
  return v13;
}

uint64_t sub_10003D9F8(uint64_t a1)
{
  v40 = 0;
  if (*(a1 + 5680) != 6)
  {
    return v40;
  }

  v2 = *(a1 + 6232) != 1 || qword_1001065A8 == 0;
  if (v2 || !*(qword_1001065A8 + 1980))
  {
    *(a1 + 6320) = 0;
    return v40;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 6312);
  v6 = *(a1 + 5512);
  v7 = sub_1000B2C18(v3, *(a1 + 5720));
  if (v7 > *(a1 + 6324))
  {
    v8 = sub_1000B216C(v3);
    if (v7 <= v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = v7;
    }

    v17 = sub_1000BFBD8(24 * v16, v9, v10, v11, v12, v13, v14, v15);
    v5 = v17;
    v18 = *(a1 + 6324);
    if (v18 >= 1)
    {
      memcpy(v17, *(a1 + 6312), 24 * v18);
    }

    sub_1000BFEC4(*(a1 + 6312));
    *(a1 + 6312) = v5;
    v19 = *(a1 + 6324);
    if (v19 < v16)
    {
      v20 = v16 - v19;
      v21 = &v5[24 * v19 + 8];
      do
      {
        v22 = sub_1000A0908(v4, v3, *(a1 + 728));
        *(v21 - 1) = v22;
        if (!v22)
        {
          return 1;
        }

        v23 = sub_1000A17F0(v3, 1);
        *v21 = v23;
        if (!v23)
        {
          return 1;
        }

        v21 += 3;
      }

      while (--v20);
    }

    *(a1 + 6324) = v16;
  }

  *(a1 + 6320) = v7;
  v24 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v25 = *(qword_1001065A8 + 5252);
    *(a1 + 6336) = v25;
    if (v25)
    {
      *(a1 + 6328) = 0;
      *(a1 + 6332) = *(v24 + 984);
      if (v7 < 1)
      {
        goto LABEL_35;
      }

LABEL_27:
      v27 = 0;
      v28 = (v5 + 8);
      v29 = v7;
      while (1)
      {
        v41 = sub_1000B2AA8(v3, *(a1 + 5720), v27);
        v30 = *v28;
        if (!*v28)
        {
          return 1;
        }

        sub_1000A1958(*v28);
        if (qword_1001065A8)
        {
          v37 = *(qword_1001065A8 + 4136);
          v38 = *(qword_1001065A8 + 2072);
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        if (!sub_1000A0DF8(*(v28 - 1), v37, 0, v38, 1, 0, 1, &v41, v31, v32, v33, v34, v35, v36, 0, *(v30 + 24), *(v30 + 32), *v30, *(v30 + 16), *(v30 + 8), (v30 + 36), 0))
        {
          return 1;
        }

        *(v30 + 44) = 1;
        **(v30 + 48) = v41;
        ++v27;
        v28 += 3;
        if (v29 == v27)
        {
          v24 = qword_1001065A8;
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    *(a1 + 6336) = 0;
  }

  *(a1 + 6328) = 0x40000000;
  if (v7 >= 1)
  {
    goto LABEL_27;
  }

LABEL_35:
  if (v24)
  {
    v39 = *(v24 + 5372);
  }

  else
  {
    v39 = 0;
  }

  sub_1000361DC(v6, 0, v39);
  return v40;
}

uint64_t sub_10003DC78(uint64_t a1, int a2)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (a1)
  {
    v10 = sub_1000BFB80(*(a1 + 6480));
    v9 = sub_1000C9EBC(*(a1 + 6488));
    v6 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v7 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v8);
    nullsub_1(v7);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (setjmp(v5))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      v11 = 4;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (*(a1 + 8160))
    {
LABEL_13:
      v11 = 1;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (a2)
    {
      if (*(a1 + 5712) && (!*(a1 + 6280) || !sub_100057010(*a1)))
      {
        goto LABEL_13;
      }

      sub_1000BFEC4(*(a1 + 6280));
      *(a1 + 6280) = 0;
      *(a1 + 5712) = 0;
    }

    else
    {
      if (!*(a1 + 5672))
      {
        v11 = 11;
        sub_1000BDAF4();
        goto LABEL_9;
      }

      sub_1000BFEC4(*(a1 + 6280));
      *(a1 + 6280) = 0;
      *(a1 + 5712) = 2;
      *(a1 + 5680) = 2;
      if (!*(a1 + 5676))
      {
        *(a1 + 5672) = 0;
      }
    }

    v11 = 0;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v10 = sub_1000BFB80(0);
  v9 = sub_1000C9EBC(0);
  v6 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v7 = sub_1000CED78(0, 0, &v8);
  nullsub_1(v7);
LABEL_8:
  v11 = 1;
LABEL_9:
  sub_10004D8D8(v11);
  sub_1000CED78(v7, v8, 0);
  sub_1000BDB44(v6);
  sub_1000C9EBC(v9);
  sub_1000BFB80(v10);
  return v11;
}

uint64_t sub_10003DE88(uint64_t a1, int a2)
{
  v13 = 0;
  v12 = 1;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (!a1)
  {
    v11 = sub_1000BFB80(0);
    v10 = sub_1000C9EBC(0);
    v7 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v8 = sub_1000CED78(0, 0, &v9);
    nullsub_1(v8);
LABEL_8:
    v13 = 1;
    goto LABEL_9;
  }

  v11 = sub_1000BFB80(*(a1 + 6480));
  v10 = sub_1000C9EBC(*(a1 + 6488));
  v7 = sub_1000BDB58();
  sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
  v8 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v9);
  nullsub_1(v8);
  if (*(a1 + 8160))
  {
    return 1;
  }

  sub_1000BDB44((a1 + 6648));
  v5 = sub_1000BDA90();
  if (setjmp(v5))
  {
    *(a1 + 8160) = 1;
    goto LABEL_8;
  }

  if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
  {
    v6 = 4;
  }

  else if (*(a1 + 8160))
  {
    v6 = 1;
  }

  else
  {
    if (!*(a1 + 5672) || !*(a1 + 5680))
    {
      v13 = 0;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (a2)
    {
      v13 = 0;
      if (*(a1 + 5708))
      {
        v13 = sub_10003E85C(a1);
      }

      sub_10003E8C4(a1);
      *(a1 + 5696) = 0;
      *(a1 + 5708) = 0;
      *(a1 + 5680) = 0;
      v6 = v13;
    }

    else
    {
      if (*(a1 + 5680) != 4 && *(a1 + 5680) != 3)
      {
        sub_10003E8C4(a1);
        v13 = 0;
        sub_1000BDAF4();
        goto LABEL_9;
      }

      v12 = sub_10003E924(a1);
      *(a1 + 5680) = 5;
      *(a1 + 5696) = 0;
      sub_10003E8C4(a1);
      *(a1 + 5708) = 2;
      if (!*(a1 + 5676))
      {
        *(a1 + 5672) = 0;
      }

      if (v12)
      {
        v6 = 0;
      }

      else
      {
        v6 = 12;
      }
    }
  }

  v13 = v6;
  sub_1000BDAF4();
LABEL_9:
  sub_10004D8D8(v13);
  sub_1000CED78(v8, v9, 0);
  sub_1000BDB44(v7);
  sub_1000C9EBC(v10);
  sub_1000BFB80(v11);
  return v13;
}

uint64_t sub_10003E0EC(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a1)
  {
    v11 = sub_1000BFB80(*(a1 + 6480));
    v10 = sub_1000C9EBC(*(a1 + 6488));
    v7 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v8 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v9);
    nullsub_1(v8);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (!setjmp(v5))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v6 = 4;
      }

      else if (*(a1 + 8160))
      {
        v6 = 1;
      }

      else if (*(a1 + 5672))
      {
        if (a2)
        {
          if (*(a1 + 5716))
          {
            v12 = sub_10003E32C(a1, 1);
          }

          if (*(a1 + 5712))
          {
            v12 = sub_10003DC78(a1, 1);
          }

          if (*(a1 + 5708))
          {
            v12 = sub_10003DE88(a1, 1);
          }

          *(a1 + 5684) = 1;
          *(a1 + 5708) = 0;
          *(a1 + 5712) = 0;
          *(a1 + 5716) = 0;
        }

        else
        {
          if (!*(a1 + 5684))
          {
            v12 = sub_10003E32C(a1, 0);
          }

          *(a1 + 5684) = 1;
          *(a1 + 5708) = 2;
          *(a1 + 5712) = 2;
          *(a1 + 5716) = 2;
          sub_10003E7EC(a1);
        }

        v6 = v12;
      }

      else
      {
        v6 = 11;
      }

      v12 = v6;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v11 = sub_1000BFB80(0);
    v10 = sub_1000C9EBC(0);
    v7 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v8 = sub_1000CED78(0, 0, &v9);
    nullsub_1(v8);
  }

  v12 = 1;
LABEL_9:
  sub_10004D8D8(v12);
  sub_1000CED78(v8, v9, 0);
  sub_1000BDB44(v7);
  sub_1000C9EBC(v10);
  sub_1000BFB80(v11);
  return v12;
}

uint64_t sub_10003E32C(uint64_t a1, int a2)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = a2;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (a1)
  {
    v23 = sub_1000BFB80(*(a1 + 6480));
    v22 = sub_1000C9EBC(*(a1 + 6488));
    v19 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v20 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v21);
    nullsub_1(v20);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v4 = sub_1000BDA90();
    if (setjmp(v4))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      v5 = 4;
LABEL_80:
      v29 = v5;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (*(a1 + 8160))
    {
      v5 = 1;
      goto LABEL_80;
    }

    v28 = *(a1 + 136) != 0;
    v27 = *(a1 + 144) != 0;
    if (!*(a1 + 5716) || *(a1 + 5680) != 6)
    {
      v24 = 1;
    }

    if (v24)
    {
      sub_100038198(*(a1 + 112));
      if (v28)
      {
        sub_100038198(*(a1 + 136));
      }

      if (v27)
      {
        sub_100038198(*(a1 + 144));
      }

      sub_10003E7EC(a1);
      *(a1 + 5716) = 0;
LABEL_79:
      v5 = v29;
      goto LABEL_80;
    }

    if (qword_1001065A8 && *(qword_1001065A8 + 1980))
    {
      sub_10003E9C8(a1);
    }

    if (!*(a1 + 5660))
    {
LABEL_65:
      if (v25 != 4)
      {
        v25 = sub_100038118(*(a1 + 112));
        if (!v25 && v28)
        {
          v25 = sub_100038118(*(a1 + 136));
        }

        if (!v25 && v27)
        {
          v25 = sub_100038118(*(a1 + 144));
        }
      }

      sub_100038198(*(a1 + 112));
      nullsub_1(*(a1 + 16));
      if (v28)
      {
        sub_100038198(*(a1 + 136));
        nullsub_1(*(a1 + 24));
      }

      if (v27)
      {
        sub_100038198(*(a1 + 144));
        nullsub_1(*(a1 + 40));
      }

      if (v25 == 4)
      {
        *(a1 + 5716) = 0;
        v29 = 2;
      }

      else
      {
        *(a1 + 5716) = 2;
      }

      goto LABEL_79;
    }

    v26 = 0;
    v6 = *(a1 + 5668);
    if (v6 <= 2)
    {
      if (!v6 || (v7 = 1, v6 == 2))
      {
        v7 = *(a1 + 5668);
      }

      goto LABEL_37;
    }

    if (v6 == 3)
    {
      v7 = 1;
      v26 = 1;
    }

    else
    {
      if (v6 != 4)
      {
        v7 = 1;
        if (v6 != 5)
        {
          goto LABEL_37;
        }

        v26 = 1;
      }

      v7 = 3;
    }

LABEL_37:
    v25 = sub_100038118(*(a1 + 112));
    if (!v25 && v28)
    {
      v25 = sub_100038118(*(a1 + 136));
    }

    if (!v25 && v27)
    {
      v25 = sub_100038118(*(a1 + 144));
    }

    if (!v25)
    {
      v25 = sub_100038140(*(a1 + 112), v7, v26);
    }

    if (!v25 && v28)
    {
      v25 = sub_100038140(*(a1 + 136), v7, v26);
    }

    if (!v25 && v27)
    {
      v25 = sub_100038140(*(a1 + 144), v7, v26);
    }

    if (v25 != 4)
    {
      if (*(a1 + 6304))
      {
        sub_100020FD8(*(a1 + 6304));
        v8 = sub_1000B1DA8(*(a1 + 6304));
        if (!v25)
        {
          if (v8)
          {
            v13 = v8;
            do
            {
              v25 = sub_100037EB4(*(a1 + 112), *(v13 + 16), *(v13 + 8), *v13, v9, v10, v11, v12);
              if (!v25 && v28)
              {
                v25 = sub_100037EB4(*(a1 + 136), *(v13 + 16), *(v13 + 8), *v13, v14, v15, v16, v17);
              }

              if (!v25 && v27)
              {
                v25 = sub_100037EB4(*(a1 + 144), *(v13 + 16), *(v13 + 8), *v13, v14, v15, v16, v17);
              }

              if (v25 == 4)
              {
                break;
              }

              v18 = sub_1000B1DA8(*(a1 + 6304));
              if (v25)
              {
                break;
              }

              v13 = v18;
            }

            while (v18);
          }
        }
      }
    }

    goto LABEL_65;
  }

  v23 = sub_1000BFB80(0);
  v22 = sub_1000C9EBC(0);
  v19 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v20 = sub_1000CED78(0, 0, &v21);
  nullsub_1(v20);
LABEL_8:
  v29 = 1;
LABEL_9:
  sub_10004D8D8(v29);
  sub_1000CED78(v20, v21, 0);
  sub_1000BDB44(v19);
  sub_1000C9EBC(v22);
  sub_1000BFB80(v23);
  return v29;
}

uint64_t sub_10003E7EC(uint64_t a1)
{
  *(a1 + 5672) = 0;
  sub_1000B1D1C(*(a1 + 6304));
  *(a1 + 6304) = 0;
  sub_1000C02DC(*(a1 + 6272));
  *(a1 + 6272) = 0;
  sub_1000BFEC4(*(a1 + 328));
  *(a1 + 328) = 0;
  sub_1000BFEC4(*(a1 + 6240));
  *(a1 + 6240) = 0;
  sub_1000BFEC4(*(a1 + 6288));
  *(a1 + 6288) = 0;
  result = sub_1000BFEC4(*(a1 + 6296));
  *(a1 + 6296) = 0;
  *(a1 + 6256) = 0;
  return result;
}

BOOL sub_10003E85C(uint64_t *a1)
{
  v2 = sub_100057010(*a1);
  if (sub_100001118(a1[2]))
  {
    v3 = a1[2];
    v4 = sub_100036B4C(*a1);
    sub_100001128(v3, v4);
  }

  return v2 == 0;
}

uint64_t sub_10003E8C4(uint64_t a1)
{
  sub_1000C02DC(*(a1 + 6272));
  *(a1 + 6272) = 0;
  sub_1000BFEC4(*(a1 + 328));
  *(a1 + 328) = 0;
  sub_1000BFEC4(*(a1 + 6240));
  *(a1 + 6240) = 0;
  sub_1000BFEC4(*(a1 + 6288));
  *(a1 + 6288) = 0;
  result = sub_1000BFEC4(*(a1 + 6296));
  *(a1 + 6296) = 0;
  *(a1 + 6256) = 0;
  return result;
}

BOOL sub_10003E924(uint64_t a1)
{
  v2 = *(a1 + 6288);
  v3 = *v2;
  v4 = v2[1];
  if (v4 < *v2)
  {
    v3 = v2[1];
  }

  if (v2[2] >= v3)
  {
    v5 = v4 < *v2;
  }

  else
  {
    v3 = v2[2];
    v5 = 2;
  }

  if (v2[3] < v3)
  {
    v3 = v2[3];
    v5 = 3;
  }

  if (v2[4] >= v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 4;
  }

  v7 = v6 - 2;
  if (v6 <= 2)
  {
    v7 = v6 - 3;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 5704) = v8;
  sub_100001128(*(a1 + 16), v8);
  return sub_100057010(*a1) != 0;
}

uint64_t sub_10003E9C8(uint64_t a1)
{
  if (*(a1 + 6324) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(a1 + 6312) + v2);
      sub_1000A0950(*v4);
      sub_1000A1774(v4[1]);
      ++v3;
      *v4 = 0;
      v4[1] = 0;
      v2 += 24;
    }

    while (v3 < *(a1 + 6324));
  }

  *(a1 + 6324) = 0;
  result = sub_1000BFEC4(*(a1 + 6312));
  *(a1 + 6312) = 0;
  *(a1 + 6320) = 0;
  return result;
}

uint64_t sub_10003EA48(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v24 = 0;
  if (!*(a1 + 5688))
  {
    LODWORD(a1) = 0;
    goto LABEL_53;
  }

  v4 = a1;
  LODWORD(a1) = 0;
  v5 = *(v4 + 5680);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      if (*(v4 + 104))
      {
        v15 = 800;
        if (*(v4 + 5512) == *(v4 + 112))
        {
          v15 = 808;
        }
      }

      else
      {
        v15 = 808;
      }

      LODWORD(a1) = 0;
      *(*(v4 + v15) + 4) = -1;
      goto LABEL_50;
    }

    if (v5 != 3)
    {
      goto LABEL_50;
    }

    LODWORD(a1) = sub_10003EFD8(v4, 0);
    if (*(v4 + 104))
    {
      v6 = 800;
      if (*(v4 + 5512) == *(v4 + 112))
      {
        v6 = 808;
      }
    }

    else
    {
      v6 = 808;
    }

    *(*(v4 + v6) + 4) = -1;
    goto LABEL_30;
  }

  if (v5 == 4)
  {
    LODWORD(a1) = sub_10003EFD8(v4, 1);
    goto LABEL_30;
  }

  if (v5 != 6)
  {
    goto LABEL_50;
  }

  v7 = *(v4 + 6320);
  if (v7 < 1)
  {
    if (*(v4 + 6232))
    {
      if (!sub_100046178(v4, -2))
      {
        LODWORD(a1) = 1;
LABEL_30:
        if (a1)
        {
          if (a1 != 2)
          {
            goto LABEL_51;
          }

          goto LABEL_32;
        }

        goto LABEL_50;
      }

      v25 = 0;
      if (sub_100037D98(*(v4 + 112), *(v4 + 6232), (v4 + 5720), *(v4 + 256), &v25, 0, 1, v20))
      {
        v22 = *(v4 + 136);
        if (!v22 || sub_100037D98(v22, *(v4 + 6232), (v4 + 5720), *(v4 + 256), &v25, 0, 1, v21))
        {
          a1 = *(v4 + 144);
          if (!a1)
          {
            goto LABEL_30;
          }

          if (sub_100037D98(a1, *(v4 + 6232), (v4 + 5720), *(v4 + 256), &v25, 0, 1, v21))
          {
            LODWORD(a1) = 0;
            goto LABEL_30;
          }
        }
      }
    }

    LODWORD(a1) = 2;
    goto LABEL_30;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(v4 + 6328);
  do
  {
    v11 = *(v4 + 6312) + v8;
    v12 = *(v11 + 8);
    v13 = sub_1000A11A0(*v11, 0, (v11 + 16));
    v14 = *(*(v4 + 6312) + v8 + 16);
    *(v12 + 68) = v14;
    if (*(v4 + 6336) && v14 > *(v4 + 6332) + v10)
    {
      v13 = 3;
    }

    if (v13 == 3)
    {
      ++v9;
    }

    v8 += 24;
  }

  while (24 * v7 != v8);
  if (v9 == v7)
  {
LABEL_32:
    if (*(v4 + 6320) >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        *(*(v4 + 6312) + v16 + 16) = 0x40000000;
        sub_1000A1958(*(*(v4 + 6312) + v16 + 8));
        ++v17;
        v16 += 24;
      }

      while (v17 < *(v4 + 6320));
    }

    sub_100037D5C(*(v4 + 112));
    v18 = *(v4 + 136);
    if (v18)
    {
      sub_100037D5C(v18);
    }

    v19 = *(v4 + 144);
    if (v19)
    {
      sub_100037D5C(v19);
    }

    LODWORD(a1) = 2;
    goto LABEL_50;
  }

  LODWORD(a1) = 0;
LABEL_50:
  *(v4 + 5688) = 0;
  *(v4 + 6448) = 0;
LABEL_51:
  if (a1 == 2)
  {
    v24 = 12;
  }

LABEL_53:
  *a3 = a1;
  return v24;
}

uint64_t sub_10003ED38(uint64_t a1, uint64_t a2, __int16 *a3, int *a4)
{
  v29 = 0;
  *a4 = 2;
  if (!*(a1 + 5672))
  {
    return 11;
  }

  if (!*(a1 + 6448))
  {
    result = 0;
    *a4 = 1;
    return result;
  }

  if (!a2)
  {
    if (!*(a1 + 348))
    {
      *a4 = 0;
      goto LABEL_31;
    }

    if (*(a1 + 352))
    {
      *a4 = 0;
      goto LABEL_30;
    }

    if (*(a1 + 356))
    {
      *a4 = 0;
      v29 = 12;
      goto LABEL_31;
    }

    v25 = 3;
    goto LABEL_26;
  }

  v6 = *(a1 + 6320);
  if (v6 >= 1)
  {
    v28 = a4;
    v8 = sub_100036AF0(*(a1 + 5512));
    if (*(a1 + 6336))
    {
      *(a1 + 6328) += sub_1000A1320(**(a1 + 6312), a2, a3, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v27 = v6;
    do
    {
      v19 = (*(a1 + 6312) + v15);
      v20 = v19[1];
      v21 = sub_1000A1384(*v19, a2, a3, v8, v9, v10, v11, v12, v13, v14);
      ++*(v20 + 64);
      if (v21)
      {
        if (v21 == 2)
        {
          ++v18;
        }

        else if (v21 == 3)
        {
          ++v16;
        }
      }

      else
      {
        ++v17;
      }

      v15 += 24;
      --v6;
    }

    while (v6);
    a4 = v28;
    if (v17 + v18 + v16 == v27 || v17 == v27 || v16 == v27)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

LABEL_26:
    *a4 = v25;
  }

LABEL_30:
  v29 = 0;
LABEL_31:
  if (*(a1 + 640))
  {
    v26 = a4;
    if (sub_100044C18(a1) >= *(a1 + 644))
    {
      *v26 = 0;
    }
  }

  return v29;
}

char *sub_10003EF0C(void *a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  if (a1[13])
  {
    v4 = 100;
    if (a1[689] == a1[14])
    {
      v4 = 101;
    }

    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 101;
    if ((a2 & 0x80000000) != 0)
    {
LABEL_16:
      result = 0;
      *a3 = 0;
      return result;
    }
  }

  v5 = a1[v4];
  if (*(v5 + 4) <= a2)
  {
    goto LABEL_16;
  }

  v6 = *(v5 + 40);
  v7 = -1;
  v8 = a2;
  v9 = v6;
  do
  {
    v10 = v9;
    v11 = v6;
    v12 = (v9 - 1);
    do
    {
      v13 = *v9++;
      v12 += 4;
    }

    while (v13 != -1);
    *a3 = ((v12 - &v6[v7]) >> 2) - 1;
    v6 = *(v5 + 40);
    v7 = (v12 - v6) >> 2;
  }

  while (v8-- > 0);
  if (a4)
  {
    *a4 = *(*(v5 + 8) + 4 * a2);
    v6 = *(v5 + 40);
  }

  return v6 + ((v10 - v11) << 30 >> 30);
}

uint64_t sub_10003EFD8(uint64_t a1, int a2)
{
  v19 = 0;
  if (!*(a1 + 6232))
  {
    return 2;
  }

  v4 = sub_100057000(*a1);
  v5 = sub_1000C0034(v4);
  if (!v5)
  {
    return 4;
  }

  v6 = v5;
  if (!sub_100057008(*a1))
  {
    sub_1000BFEC4(v6);
    return 3;
  }

  v7 = sub_100057010(*a1);
  if (!a2)
  {
    if (v7)
    {
      sub_100045D44(a1);
      if (sub_100057008(*a1))
      {
        if (sub_100057010(*a1))
        {
          sub_100045D44(a1);
          if (sub_100057008(*a1))
          {
            if (sub_100057010(*a1))
            {
              sub_100045D44(a1);
              if (sub_100057008(*a1))
              {
                if (sub_100057010(*a1))
                {
                  sub_100045D44(a1);
                  if (sub_100057008(*a1))
                  {
                    v10 = 3;
                    if (sub_100057010(*a1))
                    {
                      sub_100045D44(a1);
                      if (sub_100057008(*a1))
                      {
                        v10 = 0;
                      }

                      else
                      {
                        v10 = 3;
                      }
                    }

                    goto LABEL_52;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_51;
  }

  if (!v7)
  {
    goto LABEL_51;
  }

  if (sub_100045D44(a1) && sub_100046178(a1, -2))
  {
    v18 = 0;
    sub_10009C034(*(a1 + 256));
    **(a1 + 6296) = 0;
    v9 = sub_100037D98(*(a1 + 112), *(a1 + 6232), (a1 + 5720), *(a1 + 256), &v18, &v19, 1, v8);
    if (!v9)
    {
      v10 = 2;
      if (sub_100057008(*a1))
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }

    **(a1 + 6296) = v18;
    if (qword_1001065A8 && *(qword_1001065A8 + 3480))
    {
      v10 = 0;
      **(a1 + 6296) = sub_100037E0C(*(a1 + 5512), v19, *(a1 + 256), 0, 0, 0, 0);
      if (!sub_100057008(*a1))
      {
        goto LABEL_51;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (sub_100057008(*a1))
  {
LABEL_30:
    v12 = 1;
    while (1)
    {
      if (!sub_100057010(*a1))
      {
        goto LABEL_51;
      }

      if (!sub_100045D44(a1) || !sub_100046178(a1, -2))
      {
        goto LABEL_45;
      }

      v18 = 0;
      sub_10009C034(*(a1 + 256));
      if (!qword_1001065A8)
      {
        break;
      }

      v14 = *(qword_1001065A8 + 1936);
      *(*(a1 + 6296) + 4 * v12) = 0;
      if (!v14)
      {
        goto LABEL_40;
      }

      v9 = sub_100037D98(*(a1 + 112), *(a1 + 6232), (a1 + 5720), *(a1 + 256), &v18, &v19, 1, v13);
      if (v9)
      {
        v15 = 0;
        *(*(a1 + 6296) + 4 * v12) = v18;
        v16 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          goto LABEL_43;
        }

LABEL_42:
        LODWORD(v16) = *(v16 + 3480) != 0;
LABEL_43:
        if ((v15 | v16))
        {
          *(*(a1 + 6296) + 4 * v12) = sub_100037E0C(*(a1 + 5512), v19, *(a1 + 256), v16 ^ 1, 0, 0, 0);
        }

        goto LABEL_45;
      }

      v10 = 2;
      if (!sub_100057008(*a1))
      {
        goto LABEL_51;
      }

LABEL_46:
      if (++v12 == 5)
      {
        goto LABEL_52;
      }
    }

    *(*(a1 + 6296) + 4 * v12) = 0;
LABEL_40:
    if (v9)
    {
      v15 = 1;
      v16 = qword_1001065A8;
      if (qword_1001065A8)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

LABEL_45:
    if (!sub_100057008(*a1))
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_51:
  v10 = 3;
LABEL_52:
  if (sub_100057010(*a1))
  {
    v17 = v10;
  }

  else
  {
    v17 = 3;
  }

  sub_1000BFEC4(v6);
  return v17;
}

uint64_t sub_10003F3CC(uint64_t a1, uint64_t a2, int a3, unsigned int a4, void *a5)
{
  v9 = sub_1000BCAA0(a2, "elvisversion", 0);
  if (!v9)
  {
    return 9;
  }

  v10 = v9;
  sub_1000BCBAC(v9, 0x7FFFFFFF);
  sub_1000BCBAC(v10, 2);
  sub_1000BCBAC(v10, *(a1 + 152));
  v11 = sub_100099758();
  sub_1000BCBAC(v10, v11);
  sub_1000BCBAC(v10, *(a1 + 156));
  sub_1000BCBAC(v10, *(a1 + 160));
  sub_1000BCBAC(v10, 2);
  sub_1000BCBAC(v10, 4);
  sub_1000BCBAC(v10, 8);
  sub_1000BCBAC(v10, 2);
  sub_1000BCBAC(v10, 2);
  sub_1000BCBAC(v10, 4);
  sub_1000BCBAC(v10, 2);
  sub_1000BCBAC(v10, a3);
  v20 = 0;
  v19 = 0;
  sub_1000B2084(*(a1 + 8), 5, &v19);
  sub_1000BCC04(v10, &v19, 4u, 1);
  v12 = sub_100056FA0(*a1);
  sub_1000BCBAC(v10, v12);
  sub_1000BCBAC(v10, *(a1 + 164));
  sub_1000BCBAC(v10, *(a1 + 168));
  v13 = sub_100057018(*a1, 0);
  v14 = sub_100003C84(*(a1 + 16), 0);
  v15 = sub_1000BAD10(*(a1 + 8));
  sub_1000BCBAC(v10, v13);
  sub_1000BCBAC(v10, v14);
  sub_1000BCBAC(v10, v15);
  if (a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  sub_1000BCC04(v10, a5, v16, 1);
  if (*(a1 + 48))
  {
    v17 = sub_10004D968(a1);
  }

  else
  {
    v17 = 0;
  }

  sub_1000BCBAC(v10, v17);
  sub_1000BCB64(v10);
  return 0;
}

uint64_t sub_10003F5D8(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, unsigned int *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, int a14, _BYTE *a15, int a16, void *a17)
{
  v24 = sub_1000BBAE0(a1, "elvisversion", 0, a4, a5, a6, a7, a8);
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  *a5 = -1;
  v37 = 0;
  LODWORD(v26) = sub_1000BBD54(v24, a5);
  if (!v26)
  {
    v29 = 0;
    *a5 = -1;
    goto LABEL_25;
  }

  if (*a5 == 0x7FFFFFFF)
  {
    if (!sub_1000BBD54(v25, &v37))
    {
      goto LABEL_49;
    }

    v27 = v37;
    *a3 = 0;
    *a6 = 0;
    if (v27)
    {
      v32 = a15;
      v28 = 0;
      if ((v27 - 1) > 1)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }
  }

  else
  {
    *a3 = 0;
    *a6 = 0;
  }

  BYTE4(v35[0]) = 0;
  LODWORD(v35[0]) = 0;
  if (!sub_1000BBE54(v25, v35, 4, 1))
  {
    goto LABEL_49;
  }

  sub_1000C78DC(a15, v35, a14);
  v36 = 0;
  if (!sub_1000BBD54(v25, &v36))
  {
    goto LABEL_49;
  }

  v32 = a15;
  v28 = v36;
  if ((v37 - 1) > 1)
  {
LABEL_7:
    if (v28 <= 5)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_37:
  if (!sub_1000BBD54(v25, a3) || !sub_1000BBD54(v25, a4) || !sub_1000BBD54(v25, a5) || !sub_1000BBD54(v25, a6))
  {
    goto LABEL_49;
  }

  if (v37 == 2)
  {
    memset(v35, 0, 28);
    sub_10003F990(v25, v35);
    v30.i64[0] = *&v35[0];
    v30.i64[1] = *(v35 + 12);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v30, xmmword_1000F0DC0)))) & 1) != 0 || *(&v35[1] + 4) != 0x200000004)
    {
      return 0;
    }
  }

  LODWORD(v35[0]) = 0;
  if (!sub_1000BBD54(v25, v35) || (v28 = v35[0], BYTE4(v35[0]) = 0, LODWORD(v35[0]) = 0, !sub_1000BBE54(v25, v35, 4, 1)))
  {
LABEL_49:
    if (sub_1000BBC1C(v25))
    {
      v26 = v26;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_32;
  }

  sub_1000C78DC(v32, v35, a14);
  if (v28 > 5)
  {
    return 0;
  }

LABEL_8:
  v29 = dword_1000F0DD0[v28];
  *a2 = v28;
  LODWORD(v35[0]) = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  if (!sub_1000BBD54(v25, v35) || !sub_1000BBD54(v25, &v36) || !sub_1000BBD54(v25, &v34 + 4) || !sub_1000BBD54(v25, &v34) || !sub_1000BBD54(v25, &v33 + 4) || !sub_1000BBD54(v25, &v33))
  {
    goto LABEL_25;
  }

  *a7 = v35[0];
  *a8 = v36;
  *a9 = HIDWORD(v34);
  if (a11)
  {
    *a11 = v34;
  }

  if (a12)
  {
    *a12 = HIDWORD(v33);
  }

  if (a13)
  {
    *a13 = v33;
  }

  if (!sub_1000BBE54(v25, a17, a16, 1) || (LODWORD(v35[0]) = 0, !sub_1000BBD54(v25, v35)))
  {
LABEL_25:
    if (sub_1000BBC1C(v25))
    {
      v26 = v26;
    }

    else
    {
      v26 = 0;
    }

    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  *a10 = v35[0];
  v26 = sub_1000BBC1C(v25);
  if (v29)
  {
LABEL_29:
    if (*a5 == *a4)
    {
      v26 = v26;
    }

    else
    {
      v26 = 0;
    }
  }

LABEL_32:
  sub_1000BBBC4(v25);
  return v26;
}

BOOL sub_10003F990(uint64_t a1, uint64_t a2)
{
  sub_1000BBD54(a1, a2);
  sub_1000BBD54(a1, (a2 + 4));
  sub_1000BBD54(a1, (a2 + 8));
  sub_1000BBD54(a1, (a2 + 12));
  sub_1000BBD54(a1, (a2 + 16));
  sub_1000BBD54(a1, (a2 + 20));

  return sub_1000BBD54(a1, (a2 + 24));
}

uint64_t sub_10003FA0C(const char *a1, void **a2, unsigned int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v18 = sub_1000C7E94(a1);
  result = 4;
  if (a3 > 2 || !v18)
  {
    return result;
  }

  v27 = sub_1000C9F54(13, v11, v12, v13, v14, v15, v16, v17);
  *v27 = 0;
  *(v27 + 5) = 0;
  if (a3 == 2)
  {
    v28 = *a2;
  }

  else
  {
    v28 = sub_1000BFBD8(0x1FF0uLL, v20, v21, v22, v23, v24, v25, v26);
    v28[1021] = "Elvis Magic";
  }

  v85 = 0;
  v86 = 0;
  v84 = 0;
  v79 = 0;
  if (!sub_10003F5D8(v18, &v79, &v85, &v86, &v86 + 1, &v85 + 1, &v84, &v83, &v82, &v81, a4, a5, a6, 5, v80, 13, v27))
  {
    goto LABEL_10;
  }

  v29 = v85;
  if (v29 != sub_100099774())
  {
    goto LABEL_10;
  }

  v30 = sub_100099758();
  v37 = HIDWORD(v86);
  if (HIDWORD(v86) != v30 && !v85)
  {
    goto LABEL_10;
  }

  if (v85)
  {
    v40 = 1;
  }

  else
  {
    v40 = v86 == v30;
  }

  v38 = 1;
  if (!v40 || v79 != a3)
  {
    goto LABEL_11;
  }

  *(v28 + 38) = v85;
  *(v28 + 39) = v37;
  *(v28 + 40) = HIDWORD(v85);
  v41 = v28[814];
  v42 = sub_1000C1908(v18, 0, v31, v32, v33, v34, v35, v36);
  v28[814] = v42;
  if (!v42)
  {
    goto LABEL_10;
  }

  qword_1001065A8 = v42;
  v28[813] = v42;
  sub_1000BFEC4(v41);
  if (a3 == 2)
  {
LABEL_26:
    v49 = sub_1000BB268(v18, 0, v43, v44, v45, v46, v47, v48);
    v28[1] = v49;
    if (!v49)
    {
      goto LABEL_10;
    }

    if (*v27)
    {
      v56 = sub_1000B1358(v18, 0);
      v28[6] = v56;
      if (!v56)
      {
        goto LABEL_10;
      }
    }

    if (v28[17])
    {
      goto LABEL_10;
    }

    if (v28[18])
    {
      goto LABEL_10;
    }

    if (v27[7])
    {
      v57 = sub_100038228(v18, "bdec0/", v28[1], v28[2], v28[3], v28[5]);
      v28[13] = v57;
      if (!v57)
      {
        goto LABEL_10;
      }
    }

    if (v27[8])
    {
      v58 = sub_100038228(v18, "bdec1/", v28[1], v28[2], 0, 0);
      v28[14] = v58;
      if (!v58)
      {
        goto LABEL_10;
      }
    }

    if (v27[9])
    {
      v59 = sub_100038228(v18, "bdec2/", v28[1], v28[3], 0, 0);
      v28[17] = v59;
      if (!v59)
      {
        goto LABEL_10;
      }
    }

    if (v27[10])
    {
      v60 = sub_100038228(v18, "bdec3/", v28[1], v28[5], 0, 0);
      v28[18] = v60;
      if (!v60)
      {
        goto LABEL_10;
      }
    }

    if (v27[11])
    {
      v61 = sub_100038228(v18, "bdec4/", v28[1], v28[4], 0, 0);
      v28[15] = v61;
      if (!v61)
      {
        goto LABEL_10;
      }
    }

    if (v27[2])
    {
      v62 = qword_1001065A8 ? *(qword_1001065A8 + 1920) : 0;
      v74 = sub_10002C08C(v62);
      v28[9] = v74;
      if (!v74)
      {
        goto LABEL_10;
      }
    }

    if (v27[1])
    {
      v75 = sub_10003363C(v18, 0, v28[1], v28[2], v28[9], v53, v54, v55);
      v28[10] = v75;
      if (!v75)
      {
        goto LABEL_10;
      }
    }

    if (v27[12])
    {
      v76 = v28[7];
      if (v76)
      {
        sub_100059540(v76);
      }

      v77 = sub_10005A438(v18, 0, v28[1], v51, v52, v53, v54, v55);
      v28[7] = v77;
      if (!v77)
      {
        goto LABEL_10;
      }
    }

    v78 = sub_10004EB10(v18, 0, v50, v51, v52, v53, v54, v55);
    v28[703] = v78;
    if (!v78 || !v28[13] && !v28[14])
    {
      goto LABEL_10;
    }

LABEL_57:
    v38 = 0;
    goto LABEL_11;
  }

  v63 = sub_1000571B0(v18, 0, v43, v44, v45, v46, v47, v48);
  *v28 = v63;
  if (!v63 || (v64 = sub_100056FA0(v63), v64 != v84) || !sub_100056FD8(*v28) && qword_1001065A8 && *(qword_1001065A8 + 764) || (v70 = sub_10000BE30(v18, 0, 0, v65, v66, v67, v68, v69), (v28[2] = v70) == 0))
  {
LABEL_10:
    v38 = 1;
    goto LABEL_11;
  }

  if (!v27[4] || (v38 = 1, v71 = sub_10000BE30(v18, 0, 1u, v44, v45, v46, v47, v48), (v28[3] = v71) != 0))
  {
    if (!v27[5] || (v72 = sub_10000BE30(v18, 0, 2u, v44, v45, v46, v47, v48), (v28[5] = v72) != 0))
    {
      if (!v27[6] || (v73 = sub_10000BE30(v18, 0, 3u, v44, v45, v46, v47, v48), (v28[4] = v73) != 0))
      {
        *a2 = v28;
        if (a3)
        {
          goto LABEL_57;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  if (sub_1000C836C(v18))
  {
    v39 = 3;
  }

  else
  {
    v39 = 0;
  }

  sub_1000CA03C(v27, 13);
  if (!v38)
  {
    return v39;
  }

  *a2 = 0;
  return 1;
}

uint64_t sub_10003FE70(const char *a1, const char *a2, uint64_t a3, void *a4)
{
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v19 = -1;
  v20 = -1;
  v16 = 0;
  v18 = sub_1000BFB80(a3);
  v17 = sub_1000C9EBC(0);
  v14 = sub_1000BDB58();
  v15 = sub_1000CED78(0, 0, &v16);
  memset(v25, 0, 512);
  if (sub_10003CE04(v25) && (sub_1000BDB44(v25), v8 = sub_1000BDA90(), !setjmp(v8)))
  {
    if (a4 && a1 && *a1 && a2 && *a2)
    {
      sub_10003CFF8();
      v24 = sub_10003FA0C(a1, &v23, 1u, &v22, &v22 + 1, &v21);
      if (!v24)
      {
        v24 = sub_10003FA0C(a2, &v23, 2u, &v20, &v20 + 1, &v19);
      }

      if (!v24 && v22 != v20 && v21 != v19)
      {
        v24 = 3;
      }

      if (!v24)
      {
        v9 = v23;
        sub_10003C9B0(v23);
        v24 = v10;
        if (!v10)
        {
          *a4 = v9;
          v9[810] = a3;
          v9[811] = sub_1000C9ED0();
          v9[812] = sub_1000010DC();
          v9[813] = v11;
        }
      }

      v12 = v24;
    }

    else
    {
      v12 = 4;
    }

    v24 = v12;
    sub_1000BDAF4();
  }

  else
  {
    v24 = 1;
  }

  sub_10004D8D8(v24);
  sub_1000CED78(v15, v16, 0);
  sub_1000BDB44(v14);
  sub_1000C9EBC(v17);
  sub_1000BFB80(v18);
  return v24;
}

uint64_t sub_1000400D8(uint64_t a1)
{
  v2 = sub_100020AAC(512);
  *(a1 + 6408) = v2;
  return 2 * (v2 == 0);
}

uint64_t sub_100040114(uint64_t a1)
{
  result = *(a1 + 6408);
  if (result)
  {
    result = sub_100020B08(result);
    *(a1 + 6408) = 0;
  }

  return result;
}

uint64_t sub_100040144(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    return sub_10002C44C(v2, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100040158(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  result = *(a1 + 72);
  if (result)
  {
    return sub_10002C688(result, a2) != 0;
  }

  return result;
}

uint64_t sub_100040194(uint64_t a1, unsigned int a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!a1)
  {
    v13 = sub_1000BFB80(0);
    v12 = sub_1000C9EBC(0);
    v9 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v10 = sub_1000CED78(0, 0, &v11);
    nullsub_1(v10);
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v13 = sub_1000BFB80(*(a1 + 6480));
  v12 = sub_1000C9EBC(*(a1 + 6488));
  v9 = sub_1000BDB58();
  sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
  v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
  nullsub_1(v10);
  if (*(a1 + 8160))
  {
    return 1;
  }

  sub_1000BDB44((a1 + 6648));
  v5 = sub_1000BDA90();
  if (setjmp(v5))
  {
    *(a1 + 8160) = 1;
    goto LABEL_8;
  }

  if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
  {
    if (*(a1 + 8160) || (v6 = *(a1 + 72)) == 0)
    {
      v14 = 1;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (a2 != -1 && sub_10002C688(v6, a2) && (a2 & 0x80000000) == 0)
    {
      if (*(a1 + 6448))
      {
        v14 = 7;
        sub_1000BDAF4();
      }

      else if (sub_10002C63C(*(a1 + 72), a2))
      {
        v7 = *(a1 + 112);
        if (v7)
        {
          sub_1000403E4(a1, v7, a2);
        }

        if (qword_1001065A8 && *(qword_1001065A8 + 4728))
        {
          v8 = *(a1 + 104);
          if (v8)
          {
            sub_1000403E4(a1, v8, a2);
          }
        }

        sub_1000404B8(a1);
        sub_10002C1E8(*(a1 + 72), a2);
        *(a1 + 5512) = 0;
        v14 = 0;
        sub_1000BDAF4();
      }

      else
      {
        v14 = 17;
        sub_1000BDAF4();
      }

      goto LABEL_9;
    }
  }

  v14 = 4;
  sub_1000BDAF4();
LABEL_9:
  sub_10004D8D8(v14);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v14;
}

uint64_t sub_1000403E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 104))
  {
    v6 = 800;
    if (*(a1 + 5512) == *(a1 + 112))
    {
      v6 = 808;
    }
  }

  else
  {
    v6 = 808;
  }

  v7 = *(a1 + v6);
  v8 = sub_10002C688(*(a1 + 72), a3);
  result = sub_100036250(a2);
  if (*(a1 + 5456) == v8)
  {
    *(a1 + 5456) = 0;
  }

  v10 = *(a1 + 1320);
  if (v10 >= 1)
  {
    v11 = (a1 + 1324);
    while (1)
    {
      v12 = *v11++;
      if (v12 == a3)
      {
        break;
      }

      if (!--v10)
      {
        return result;
      }
    }

    *(a1 + 1320) = 0;
    *(v7 + 4) = 0;
    *(v7 + 140) = 0;
  }

  return result;
}

uint64_t sub_1000404B8(uint64_t result)
{
  if (!*(result + 5500))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 104);
  if (!v2)
  {
    v4 = *(result + 808);
    if (*(result + 5464))
    {
      goto LABEL_6;
    }

LABEL_17:
    if (*(result + 5472) < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v3 = 800;
  if (*(result + 5512) == *(result + 112))
  {
    v3 = 808;
  }

  v4 = *(result + v3);
  if (!*(result + 5464))
  {
    goto LABEL_17;
  }

LABEL_6:
  if (qword_1001065A8)
  {
    v5 = 112;
    if (!*(qword_1001065A8 + 1912))
    {
      v5 = 104;
    }

    v2 = *(result + v5);
  }

  if (*(result + 5472) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 5464) + 8 * v6);
      sub_100036250(v2);
      result = sub_10002C494(*(v1 + 72), v7);
      *(*(v1 + 5464) + 8 * v6++) = 0;
      v8 = *(v1 + 5472);
    }

    while (v6 < v8);
    if (v8 >= 1)
    {
LABEL_14:
      *(v1 + 5472) = 0;
      *(v4 + 4) = 0;
      *(v4 + 140) = 0;
    }
  }

  return result;
}

BOOL sub_1000405C4(uint64_t a1)
{
  v1 = sub_100022ADC(a1);
  v2 = sub_1000C7854("_SHADOWIR_");
  return sub_1000C7898(v1, "_SHADOWIR_", v2, v3) == 0;
}

uint64_t sub_100040610(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = a3;
  if (*(a1 + 5476) < a3)
  {
    sub_1000BFEC4(*(a1 + 5464));
    *(a1 + 5464) = sub_1000BFBD8(8 * v3, v6, v7, v8, v9, v10, v11, v12);
    *(a1 + 5476) = v3;
  }

  if (v3 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v3;
    v15 = a2;
    do
    {
      if (sub_100039AA0(v15, 1))
      {
        v19[0] = 0;
        __sprintf_chk(v19, 0, 0x100uLL, "%s_%d", "_SHADOWIR_", v13);
        v16 = sub_100025684(*v15, v19);
        v17 = sub_10002C44C(*(a1 + 72), *v15);
        sub_10002C29C(*(a1 + 72), v16, v17);
        *(*(a1 + 5464) + 8 * v13) = v16;
        a2[v3++] = v16;
        v13 = (v13 + 1);
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  *(a1 + 5472) = v13;
  return v13;
}

uint64_t sub_100040760(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = sub_10002C6B8(v2);
  v4 = v3;
  if (*(a1 + 5476) <= v3)
  {
    v13 = v3 + 1;
    sub_1000BFEC4(*(a1 + 5464));
    v14 = sub_1000C0034(8 * v13);
    *(a1 + 5464) = v14;
    *(a1 + 5476) = v13;
    if (v14)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (!*(a1 + 5464))
  {
    return 1;
  }

LABEL_3:
  v5 = 0;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = 0;
    do
    {
      v7 = sub_10002C688(v2, v6);
      if (v7)
      {
        v8 = v7;
        v9 = sub_100022ADC(v7);
        v10 = sub_1000C7854("_SHADOWIR_");
        if (!sub_1000C7898(v9, "_SHADOWIR_", v10, v11))
        {
          *(*(a1 + 5464) + 8 * v5++) = v8;
        }
      }

      ++v6;
    }

    while (v4 + 1 != v6);
  }

  result = 0;
  *(a1 + 5472) = v5;
  return result;
}

uint64_t sub_100040870(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v15 = 0;
  v14 = -1;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (a1)
  {
    v13 = sub_1000BFB80(*(a1 + 6480));
    v12 = sub_1000C9EBC(*(a1 + 6488));
    v9 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
    nullsub_1(v10);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (!setjmp(v7))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v15 = 4;
        sub_1000BDAF4();
      }

      else if (*(a1 + 8160))
      {
        v15 = 1;
        sub_1000BDAF4();
      }

      else
      {
        *a3 = -1;
        v8 = *(a1 + 72);
        if (v8)
        {
          v14 = sub_10002C6C4(v8, a2);
        }

        if (v14 != -1)
        {
          *a3 = v14;
        }

        v15 = 0;
        sub_1000BDAF4();
      }

      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v13 = sub_1000BFB80(0);
    v12 = sub_1000C9EBC(0);
    v9 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v10 = sub_1000CED78(0, 0, &v11);
    nullsub_1(v10);
  }

  v15 = 1;
LABEL_9:
  sub_10004D8D8(v15);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v15;
}

uint64_t sub_100040A58(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, _DWORD *a11)
{
  v19 = sub_10004E900(a5);
  if (!a2)
  {
    return 4;
  }

  v20 = v19;
  if (!sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START") || !sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END") || !*a2)
  {
    return 4;
  }

  sub_1000C7870("_ ", *a2);
  result = 4;
  if ((a4 & 0x80000000) == 0 && a3 <= 0x2000000 && a11)
  {
    v22 = *(a1 + 80);
    if (v22)
    {
      if (*(a1 + 6448))
      {
        return 7;
      }

      else
      {
        if (a8)
        {
          v23 = sub_10002EE74(v22, a2, a4, v20, a9, a10);
        }

        else
        {
          v24 = sub_10004E900(a5);
          v23 = sub_10002EBC8(v22, a2, a3, a4, v24, a6, a7);
        }

        v25 = v23;
        result = 0;
        *a11 = v25;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100040BA0(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, _DWORD *a8)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (a1)
  {
    v23 = sub_1000BFB80(*(a1 + 6480));
    v22 = sub_1000C9EBC(*(a1 + 6488));
    v19 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v20 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v21);
    nullsub_1(v20);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v17 = sub_1000BDA90();
    if (setjmp(v17))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v18 = 1;
        goto LABEL_14;
      }

      if (a2 && *a2 && !sub_1000C7870("_ ", *a2))
      {
        v24 = sub_100040A58(a1, a2, a3, a4, a5, a6, a7, 0, 0, -1, a8);
        v18 = v24;
        goto LABEL_14;
      }
    }

    v18 = 4;
LABEL_14:
    v24 = v18;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v23 = sub_1000BFB80(0);
  v22 = sub_1000C9EBC(0);
  v19 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v20 = sub_1000CED78(0, 0, &v21);
  nullsub_1(v20);
LABEL_8:
  v24 = 1;
LABEL_9:
  sub_10004D8D8(v24);
  sub_1000CED78(v20, v21, 0);
  sub_1000BDB44(v19);
  sub_1000C9EBC(v22);
  sub_1000BFB80(v23);
  return v24;
}

uint64_t sub_100040DB0(uint64_t a1, unsigned __int8 *a2, _BOOL4 *a3, _DWORD *a4)
{
  if (!a2)
  {
    return 4;
  }

  if (!*a2)
  {
    return 4;
  }

  if (!sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START") || !sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END"))
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (!*a2)
  {
    v9 = 0;
    goto LABEL_10;
  }

  sub_1000C7870("_ ", *a2);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = sub_10002E70C(v8, a2, a4) != -1;
LABEL_10:
    result = 0;
    *a3 = v9;
    return result;
  }

  return 1;
}

uint64_t sub_100040E9C(uint64_t a1, unsigned __int8 *a2, _BOOL4 *a3)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (a1)
  {
    v13 = sub_1000BFB80(*(a1 + 6480));
    v12 = sub_1000C9EBC(*(a1 + 6488));
    v9 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
    nullsub_1(v10);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (!setjmp(v7))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v8 = 4;
      }

      else if (*(a1 + 8160))
      {
        v8 = 1;
      }

      else
      {
        v15 = sub_100040DB0(a1, a2, a3, &v14);
        v8 = v15;
      }

      v15 = v8;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v13 = sub_1000BFB80(0);
    v12 = sub_1000C9EBC(0);
    v9 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v10 = sub_1000CED78(0, 0, &v11);
    nullsub_1(v10);
  }

  v15 = 1;
LABEL_9:
  sub_10004D8D8(v15);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v15;
}

uint64_t sub_10004105C(uint64_t a1, _DWORD *a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!a1)
  {
    v13 = sub_1000BFB80(0);
    v12 = sub_1000C9EBC(0);
    v9 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v10 = sub_1000CED78(0, 0, &v11);
    nullsub_1(v10);
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v13 = sub_1000BFB80(*(a1 + 6480));
  v12 = sub_1000C9EBC(*(a1 + 6488));
  v9 = sub_1000BDB58();
  sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
  v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
  nullsub_1(v10);
  if (*(a1 + 8160))
  {
    return 1;
  }

  sub_1000BDB44((a1 + 6648));
  v5 = sub_1000BDA90();
  if (setjmp(v5))
  {
    *(a1 + 8160) = 1;
    goto LABEL_8;
  }

  if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
  {
    v6 = 4;
  }

  else if (*(a1 + 8160))
  {
    v6 = 1;
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    v7 = *(a1 + 80);
    if (!v7)
    {
      v14 = 0;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (*(a1 + 6448))
    {
      v6 = 7;
    }

    else
    {
      v8 = sub_1000302F8(v7);
      if (a2)
      {
        *a2 = v8;
      }

      v6 = v14;
    }
  }

  v14 = v6;
  sub_1000BDAF4();
LABEL_9:
  sub_10004D8D8(v14);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v14;
}

uint64_t sub_100041228(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int *a4, __int16 *a5, int a6, int a7, _DWORD *a8)
{
  v44 = a7;
  if (a8)
  {
    *a8 = 0;
  }

  v43 = 0;
  if (!a2 || !*a2)
  {
    return 4;
  }

  if (sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START") && sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END"))
  {
    if (!*a2)
    {
      return 4;
    }

    sub_1000C7870("_ ", *a2);
    v19 = *(a1 + 80);
    if (!v19)
    {
      return 1;
    }

    if (sub_10002E70C(v19, a2, &v43) == -1 || v43)
    {
      return 4;
    }
  }

  if (a3 > 0)
  {
    v21 = *(a1 + 8);
    v22 = a3;
    v23 = a4;
    while (1)
    {
      v24 = *v23++;
      if (!sub_1000B252C(v21, v24))
      {
        return 4;
      }

      if (!--v22)
      {
        v32 = (2 * a3);
        v33 = sub_1000C9F54(v32, v25, v26, v27, v28, v29, v30, v31);
        v34 = 0;
        while (1)
        {
          v35 = sub_1000B2A30(v21, a4[v34]);
          if (v35 == 0xFFFF)
          {
            v36 = sub_10004DA20(a1, a4[v34], 0);
            if (v36)
            {
              v37 = v36;
              goto LABEL_28;
            }

            LOWORD(v35) = sub_1000B2A30(v21, a4[v34]);
          }

          v33[v34++] = v35;
          if (a3 == v34)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v32 = 2 * a3;
  v33 = sub_1000C9F54(v32, v12, v13, v14, v15, v16, v17, v18);
LABEL_23:
  if (sub_10002F130(*(a1 + 80), a2, a5, &v44))
  {
    v38 = a6;
    if (a6 >= 255)
    {
      v38 = 255;
    }

    v39 = sub_10002F46C(*(a1 + 80), a2, v33, a3, v38 & ~(v38 >> 31), v44);
    v37 = 0;
  }

  else
  {
    v37 = 0;
LABEL_28:
    v39 = 0;
  }

  sub_1000CA03C(v33, v32);
  *a8 = v39;
  return v37;
}

uint64_t sub_100041428(unint64_t a1, unsigned __int8 *a2, __int16 *a3, int a4, int a5, int a6, int a7, _DWORD *a8)
{
  v187 = 0;
  *a8 = 0;
  v16 = sub_10002E83C(*(a1 + 80), a2);
  if (!sub_10003052C(*(a1 + 80), v16, &v187))
  {
    return 4;
  }

  v24 = sub_1000C9F54(400, v17, v18, v19, v20, v21, v22, v23);
  if (v24)
  {
    v27 = v187;
    if ((v187 - 5) < 7)
    {
      v171 = v24;
      v168 = v187 - 5;
      v163 = a7;
      v190[0] = a4;
      *a8 = 0;
      v28 = v27;
      v29 = sub_1000CB75C(a3);
      v170 = 2 * (v29 + 1);
      v37 = sub_1000C9F54(v170, v30, v31, v32, v33, v34, v35, v36);
      v38 = v37;
      v185 = v28;
      if ((v28 & 0xFFFFFFFE) == 0xA)
      {
        sub_1000CB778(v37, a3, v29 + 2);
        v165 = a6;
        v166 = a5;
        v167 = a3;
        v169 = a8;
        v189 = 0;
        if (!a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1000CD380(a3, v29 + 1, v37);
        v165 = a6;
        v166 = a5;
        v167 = a3;
        v169 = a8;
        v189 = 0;
        if (!a2)
        {
          goto LABEL_24;
        }
      }

      if (*a2)
      {
        if (sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START"))
        {
          if (sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END"))
          {
            v39 = *a2;
            if (*a2)
            {
              sub_1000C7870("_ ", *a2);
              v62 = *(a1 + 80);
              if (v62)
              {
                sub_10002E70C(v62, a2, &v189);
              }
            }
          }
        }
      }

LABEL_24:
      v172 = a2;
      for (i = 100; ; i = v90)
      {
        v64 = 4 * i;
        v65 = sub_1000C9F54(v64, v39, v40, v41, v42, v43, v44, v45);
        v73 = sub_1000C9F54(v64, v66, v67, v68, v69, v70, v71, v72);
        v81 = sub_1000C9F54(v64, v74, v75, v76, v77, v78, v79, v80);
        v82 = sub_1000B49C0(*(a1 + 8), v28, v38, 0, 1u, i, v65, v73, v81, 0, 0);
        if (v82 <= 0)
        {
          sub_1000CA03C(v81, 4 * i);
          sub_1000CA03C(v73, 4 * i);
          sub_1000CA03C(v65, 4 * i);
          sub_1000CA03C(v38, v170);
          v61 = 0;
          *v169 = 0;
          goto LABEL_83;
        }

        v90 = v82;
        if (v82 <= i)
        {
          break;
        }

        sub_1000CA03C(v81, 4 * i);
        sub_1000CA03C(v73, 4 * i);
        sub_1000CA03C(v65, 4 * i);
      }

      v161 = v29;
      v182 = v38;
      v162 = 2 * i;
      v164 = sub_1000C9F54(v162, v83, v84, v85, v86, v87, v88, v89);
      v97 = 0;
      v98 = 4 * v90;
      v99 = v90;
      do
      {
        v188 = -1;
        v100 = v65[v97 / 4];
        if (v100 == -1)
        {
          v101 = v81[v97 / 4];
          v183 = 2 * (v101 + 1);
          v102 = sub_1000C9F54(v183, v100, v91, v92, v93, v94, v95, v96);
          sub_1000CB778(v102, &v182[v73[v97 / 4]], v101 + 1);
          if (v185 == 11)
          {
            v103 = sub_1000B210C(*(a1 + 8));
            v104 = sub_1000B214C(*(a1 + 8));
            if (v104 <= v101)
            {
              v112 = v101;
            }

            else
            {
              v112 = v104;
            }

            v175 = v112 + 1;
            if (v103 <= v101)
            {
              v113 = v101;
            }

            else
            {
              v113 = v103;
            }

            v114 = v113 + 1;
            v178 = 2 * (v113 + 1);
            v173 = sub_1000C9F54(v178, v105, v106, v107, v108, v109, v110, v111);
            v122 = sub_1000C9F54(2 * v175, v115, v116, v117, v118, v119, v120, v121);
            v123 = v114;
            v124 = v122;
            if (sub_1000D59A0(v102, v173, v123, v122, v175))
            {
              v61 = sub_10004DC44(a1, v173, v124, &v188);
            }

            else
            {
              v61 = 4;
            }

            v125 = v124;
            v98 = 4 * v90;
            sub_1000CA03C(v125, 2 * v175);
            sub_1000CA03C(v173, v178);
          }

          else
          {
            v61 = sub_10004DC44(a1, v102, 0, &v188);
            v98 = 4 * v90;
          }

          sub_1000CA03C(v102, v183);
          v65[v97 / 4] = v188;
          v99 = v90;
          if (v61)
          {
LABEL_46:
            sub_1000CA03C(v164, v162);
            sub_1000CA03C(v81, v64);
            sub_1000CA03C(v73, v64);
            sub_1000CA03C(v65, v64);
            sub_1000CA03C(v182, v170);
            goto LABEL_83;
          }
        }

        else
        {
          v188 = v65[v97 / 4];
          v61 = sub_10004DA20(a1, v100, 0);
          if (v61)
          {
            goto LABEL_46;
          }
        }

        v97 += 4;
      }

      while (v98 != v97);
      if (v168 > 2)
      {
LABEL_53:
        v129 = 0;
        v130 = v164;
        do
        {
          *(v164 + v129) = sub_1000B2A30(*(a1 + 8), v65[v129]);
          ++v129;
        }

        while (v99 != v129);
        if (sub_10002F130(*(a1 + 80), v172, v167, v190))
        {
          v131 = sub_10002F46C(*(a1 + 80), v172, v164, v90, v166, v190[0]);
          if (v165)
          {
            v139 = v131;
            if (v131)
            {
              v177 = 4 * (20 * (v90 + 1));
              v140 = sub_1000C9F54(v177, v132, v133, v134, v135, v136, v137, v138);
              v176 = (2 * (v90 + 1));
              v181 = sub_1000C9F54(v176, v141, v142, v143, v144, v145, v146, v147);
              v180 = sub_1000B7E24(*(a1 + 8), v185, v182, v90, v65, v73, 20 * (v90 + 1), v140);
              if (v180 >= 1)
              {
                v148 = 0;
                if (v163 >= 255)
                {
                  v149 = 255;
                }

                else
                {
                  v149 = v163;
                }

                v179 = v149 & ~(v149 >> 31);
                v174 = v140;
                do
                {
                  v184 = v148;
                  v151 = 0;
                  v152 = -1;
                  v186 = v140;
                  do
                  {
                    v153 = v151;
                    if (++v152 > v99)
                    {
                      break;
                    }

                    v154 = *v140++;
                    ++v151;
                  }

                  while (v154 != -1);
                  if (v152)
                  {
                    v155 = v153;
                    v156 = v186;
                    v157 = v181;
                    do
                    {
                      v158 = *v156++;
                      *v157++ = sub_1000B2A30(*(a1 + 8), v158);
                      --v155;
                    }

                    while (v155);
                  }

                  v150 = sub_10002F46C(*(a1 + 80), v172, v181, v152, v179, v190[0]);
                  v140 = &v186[(v152 + 1)];
                  v148 = v184 + 1;
                }

                while (v184 + 1 != v180);
                v139 = v150;
                v140 = v174;
              }

              sub_1000CA03C(v181, v176);
              sub_1000CA03C(v140, v177);
              v130 = v164;
            }
          }

          else
          {
            v139 = v131;
          }
        }

        else
        {
          v139 = 0;
        }

        sub_1000CA03C(v130, v162);
        sub_1000CA03C(v81, v64);
        sub_1000CA03C(v73, v64);
        sub_1000CA03C(v65, v64);
        sub_1000CA03C(v182, v170);
        v61 = 0;
        if (v139)
        {
          *v169 = 1;
        }
      }

      else
      {
        v126 = 0;
        while (1)
        {
          v127 = sub_1000B7E40(*(a1 + 8), v65[v126]);
          v65[v126] = v127;
          v128 = sub_10004DA20(a1, v127, 0);
          if (v128)
          {
            break;
          }

          if (v99 == ++v126)
          {
            goto LABEL_53;
          }
        }

        v61 = v128;
        sub_1000CA03C(v164, v162);
        sub_1000CA03C(v81, v64);
        sub_1000CA03C(v73, v64);
        sub_1000CA03C(v65, v64);
        sub_1000CA03C(v182, 2 * v161 + 4);
      }

LABEL_83:
      v24 = v171;
      goto LABEL_84;
    }

    if (v187 > 4)
    {
      v61 = 0;
LABEL_84:
      LODWORD(v46) = 100;
LABEL_85:
      sub_1000CA03C(v24, 4 * v46);
      return v61;
    }

    LODWORD(v46) = 100;
    v47 = v24;
    v48 = sub_10004DD48(a1, a3, 100, v24, &v187 + 1, 1, v25, v26);
    v49 = HIDWORD(v187);
    if (SHIDWORD(v187) < 101)
    {
      v61 = v48;
      if (v48 | HIDWORD(v187))
      {
LABEL_14:
        if (v61)
        {
          v24 = v47;
        }

        else
        {
          v159 = sub_100041228(a1, a2, v49, v47, a3, a5, a4, a8);
          if (*a8)
          {
            v61 = v159;
          }

          else
          {
            v61 = 1;
          }

          v24 = v47;
        }

        goto LABEL_85;
      }

      return 4;
    }

    sub_1000CA03C(v47, 400);
    v46 = SHIDWORD(v187);
    v57 = sub_1000C9F54(4 * SHIDWORD(v187), v50, v51, v52, v53, v54, v55, v56);
    if (v57)
    {
      v47 = v57;
      v60 = sub_10004DD48(a1, a3, v46, v57, &v187 + 1, 1, v58, v59);
      v49 = HIDWORD(v187);
      if (HIDWORD(v187) == v46)
      {
        v61 = v60;
      }

      else
      {
        v61 = 1;
      }

      if (v61 | HIDWORD(v187))
      {
        goto LABEL_14;
      }

      return 4;
    }
  }

  return 2;
}