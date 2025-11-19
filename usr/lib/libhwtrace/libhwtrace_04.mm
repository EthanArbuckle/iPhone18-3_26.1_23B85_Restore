uint64_t sub_298B1A0DC(uint64_t result, int a2)
{
  v2 = word_298DFC5CA[a2];
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 1;
  v4[1] = v2;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1A150(uint64_t result, int a2)
{
  v2 = word_298DFBD50[a2];
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 1;
  v4[1] = v2;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1A1C4(uint64_t result, int a2)
{
  v2 = word_298DFC574[a2];
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 1;
  v4[1] = v2;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1A238(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = (a2 >> 11) & 0x40 | (a2 >> 5) & 0x3F;
  if (v3 != 63 && ((a2 >> 5) & 0x3F | -(0x80000000 >> __clz(v3 ^ 0x3F))) != 0xFFFFFFFF)
  {
    v4 = (a2 >> 5) & 0x1FFF;
    v5 = word_298DFC5CA[a2 & 0x1F];
    v6 = *(a1 + 24);
    if (v6 >= *(a1 + 28))
    {
      v12 = a1;
      sub_298B90A44(a1 + 16, (a1 + 32), v6 + 1, 16);
      a1 = v12;
      LODWORD(v6) = *(v12 + 24);
    }

    v7 = (*(a1 + 16) + 16 * v6);
    *v7 = 1;
    v7[1] = v5;
    v8 = (*(a1 + 24) + 1);
    *(a1 + 24) = v8;
    if (*a1 != 2201)
    {
      if (v8 >= *(a1 + 28))
      {
        v13 = a1;
        sub_298B90A44(a1 + 16, (a1 + 32), v8 + 1, 16);
        a1 = v13;
        LODWORD(v8) = *(v13 + 24);
      }

      v8 = *(a1 + 16) + 16 * v8;
      *v8 = 1;
      *(v8 + 8) = v5;
      LODWORD(v8) = *(a1 + 24) + 1;
      *(a1 + 24) = v8;
    }

    if (v8 >= *(a1 + 28))
    {
      v11 = a1;
      sub_298B90A44(a1 + 16, (a1 + 32), v8 + 1, 16);
      a1 = v11;
      LODWORD(v8) = *(v11 + 24);
    }

    v9 = (*(a1 + 16) + 16 * v8);
    *v9 = 2;
    v9[1] = v4;
    ++*(a1 + 24);
    return 3;
  }

  return v2;
}

uint64_t sub_298B1A3B4(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    return 0;
  }

  v2 = a2;
  v3 = *(a1 + 24);
  if (v3 >= *(a1 + 28))
  {
    v9 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v3 + 1, 16);
    a1 = v9;
    LODWORD(v3) = *(v9 + 24);
  }

  v4 = (*(a1 + 16) + 16 * v3);
  *v4 = 2;
  v4[1] = v2;
  v5 = *(a1 + 28);
  v6 = (*(a1 + 24) + 1);
  *(a1 + 24) = v6;
  if (v6 >= v5)
  {
    v8 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v6 + 1, 16);
    a1 = v8;
    LODWORD(v6) = *(v8 + 24);
  }

  *(*(a1 + 16) + 16 * v6) = xmmword_298CF79D0;
  ++*(a1 + 24);
  return 3;
}

uint64_t sub_298B1A488(uint64_t result, unsigned int a2)
{
  v2 = a2;
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v8 = result;
    v9 = a2;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    a2 = v9;
    result = v8;
    LODWORD(v3) = *(v8 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 2;
  v4[1] = v2;
  v5 = *(result + 28);
  v6 = (*(result + 24) + 1);
  *(result + 24) = v6;
  if (v6 >= v5)
  {
    v10 = result;
    v11 = a2;
    sub_298B90A44(result + 16, (result + 32), v6 + 1, 16);
    a2 = v11;
    result = v10;
    LODWORD(v6) = *(v10 + 24);
  }

  v7 = (*(result + 16) + 16 * v6);
  *v7 = 2;
  v7[1] = (a2 >> 5) & 8;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1A55C(uint64_t result, int a2)
{
  v2 = word_298DFB8C4[a2];
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 1;
  v4[1] = v2;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1A5D0(uint64_t a1, unsigned int a2)
{
  result = 0;
  v5 = a2 & 0x1F;
  v6 = (a2 >> 10) & 0x1F;
  v7 = *a1;
  if (*a1 > 6593)
  {
    v9 = HIWORD(a2) & 0x1F;
    if (v7 <= 6614)
    {
      if (v7 <= 6597)
      {
        if ((v7 - 6594) < 3)
        {
          goto LABEL_31;
        }

        v10 = 6597;
        goto LABEL_43;
      }

      if (v7 <= 6601)
      {
        if ((v7 - 6598) >= 3)
        {
          return result;
        }

        goto LABEL_31;
      }

      if (v7 != 6602)
      {
        if (v7 != 6613)
        {
          if (v7 != 6614)
          {
            return result;
          }

          goto LABEL_53;
        }

LABEL_55:
        sub_298B1A55C(a1, v9);
LABEL_56:
        sub_298B1A55C(a1, v5);
        v11 = a1;
        v12 = v6;
        goto LABEL_32;
      }

LABEL_44:
      v16 = word_298DFBCEE[v5];
LABEL_45:
      sub_298B0A034(a1, 1, v16);
      goto LABEL_33;
    }

    if (v7 > 6748)
    {
      if ((v7 - 6750) >= 3)
      {
        if (v7 == 6749)
        {
LABEL_53:
          sub_298B1A55C(a1, v9);
          goto LABEL_54;
        }

        if (v7 != 6753)
        {
          return result;
        }

LABEL_52:
        sub_298B1A55C(a1, v9);
        goto LABEL_44;
      }
    }

    else if ((v7 - 6615) >= 3)
    {
      if (v7 != 6618)
      {
        if (v7 != 6748)
        {
          return result;
        }

        goto LABEL_55;
      }

      goto LABEL_52;
    }

    sub_298B1A55C(a1, v9);
    goto LABEL_31;
  }

  if (v7 > 4210)
  {
    if (v7 <= 4497)
    {
      if ((v7 - 4211) >= 3)
      {
        if (v7 != 4214)
        {
          v8 = 4497;
LABEL_16:
          if (v7 != v8)
          {
            return result;
          }

          goto LABEL_56;
        }

        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if ((v7 - 4499) < 3)
    {
      goto LABEL_31;
    }

    if (v7 != 4498)
    {
      v10 = 4502;
LABEL_43:
      if (v7 != v10)
      {
        return result;
      }

      goto LABEL_44;
    }

LABEL_54:
    sub_298B0A034(a1, 1, word_298DFBCEE[v5]);
    v16 = word_298DFBCEE[v6];
    goto LABEL_45;
  }

  if (v7 > 4147)
  {
    if ((v7 - 4149) < 3)
    {
      goto LABEL_31;
    }

    if (v7 != 4148)
    {
      v10 = 4152;
      goto LABEL_43;
    }

    goto LABEL_54;
  }

  if ((v7 - 4143) >= 3)
  {
    if (v7 != 4146)
    {
      v8 = 4147;
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_31:
  v11 = a1;
  v12 = v5;
LABEL_32:
  sub_298B1A55C(v11, v12);
LABEL_33:
  v13 = word_298DFBD50[(a2 >> 5) & 0x1F];
  v14 = *(a1 + 24);
  if (v14 >= *(a1 + 28))
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v14 + 1, 16);
    LODWORD(v14) = *(a1 + 24);
  }

  v15 = (*(a1 + 16) + 16 * v14);
  *v15 = 1;
  v15[1] = v13;
  ++*(a1 + 24);
  if (((v7 - 4497) < 2 || (v7 - 4147) <= 1) && v5 == v6)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_298B1A8C8(uint64_t a1, unsigned int a2)
{
  result = 0;
  v5 = a2 & 0x1F;
  v6 = (a2 >> 5) & 0x1F;
  v7 = (a2 >> 22) & 3;
  v8 = *a1;
  if (*a1 <= 2236)
  {
    if (v8 <= 1396)
    {
      if (v8 != 1385)
      {
        if (v8 != 1382)
        {
          return result;
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (v8 > 1475)
      {
        if (v8 > 1681)
        {
          if (v8 > 1684)
          {
            if (v8 != 1685)
            {
              if (v8 != 1686)
              {
                return result;
              }

              goto LABEL_39;
            }
          }

          else if (v8 != 1682)
          {
            if (v8 != 1683)
            {
              return result;
            }

            goto LABEL_39;
          }
        }

        else if (v8 > 1484)
        {
          if (v8 != 1485)
          {
            if (v8 != 1487)
            {
              return result;
            }

            goto LABEL_39;
          }
        }

        else if (v8 != 1476)
        {
          if (v8 != 1478)
          {
            return result;
          }

          goto LABEL_39;
        }

LABEL_57:
        if ((a2 & 0x8000) != 0)
        {
          return 0;
        }

LABEL_14:
        v9 = word_298DFB8C4[v5];
        v10 = *(a1 + 24);
        if (v10 >= *(a1 + 28))
        {
          v18 = v6;
          sub_298B90A44(a1 + 16, (a1 + 32), v10 + 1, 16);
          v6 = v18;
          LODWORD(v10) = *(a1 + 24);
        }

        v11 = (*(a1 + 16) + 16 * v10);
        *v11 = 1;
        v11[1] = v9;
        ++*(a1 + 24);
        sub_298B1A55C(a1, v6);
        sub_298B1A55C(a1, HIWORD(a2) & 0x1F);
        goto LABEL_42;
      }

      if (v8 != 1400)
      {
        if (v8 != 1397)
        {
          return result;
        }

LABEL_12:
        result = 0;
        if ((a2 & 0x8000) != 0 || v7 == 3)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  if (v8 > 6788)
  {
    if (v8 != 6789 && v8 != 6796)
    {
      if (v8 != 6793)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_18:
    if (v7 == 3)
    {
      return 0;
    }

    goto LABEL_39;
  }

  if (v8 > 4808)
  {
    if (v8 == 6786)
    {
      goto LABEL_12;
    }

    if (v8 == 4809)
    {
      goto LABEL_57;
    }

    v19 = 4811;
    goto LABEL_53;
  }

  if (v8 > 2260)
  {
    if (v8 == 2261)
    {
      goto LABEL_39;
    }

    if (v8 == 4798)
    {
      goto LABEL_57;
    }

    v19 = 4799;
LABEL_53:
    if (v8 != v19)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (v8 == 2237)
  {
    goto LABEL_57;
  }

  if (v8 != 2238)
  {
    if (v8 != 2259)
    {
      return result;
    }

    goto LABEL_57;
  }

LABEL_39:
  v12 = word_298DFBCEE[v5];
  v13 = *(a1 + 24);
  if (*(a1 + 28) <= v13)
  {
    v20 = v6;
    sub_298B90A44(a1 + 16, (a1 + 32), v13 + 1, 16);
    v6 = v20;
    LODWORD(v13) = *(a1 + 24);
  }

  v14 = (*(a1 + 16) + 16 * v13);
  *v14 = 1;
  v14[1] = v12;
  ++*(a1 + 24);
  sub_298B0A034(a1, 1, word_298DFBCEE[v6]);
  sub_298B0A034(a1, 1, word_298DFBCEE[HIWORD(a2) & 0x1F]);
LABEL_42:
  v15 = (a2 >> 10) & 0xFFFFFF3F | (((a2 >> 22) & 3) << 6);
  v16 = *(a1 + 24);
  if (v16 >= *(a1 + 28))
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v16 + 1, 16);
    LODWORD(v16) = *(a1 + 24);
  }

  v17 = (*(a1 + 16) + 16 * v16);
  *v17 = 2;
  v17[1] = v15;
  ++*(a1 + 24);
  return 3;
}

uint64_t sub_298B1ABCC(int *a1, unsigned int a2)
{
  if ((a2 & 0x1C00) > 0x1000)
  {
    return 0;
  }

  result = 0;
  v5 = a2 & 0x1F;
  v6 = (a2 >> 5) & 0x1F;
  v7 = HIWORD(a2) & 0x1F;
  v8 = *a1;
  if (*a1 > 6786)
  {
    if (v8 <= 6793)
    {
      if (v8 != 6787)
      {
        if (v8 != 6790)
        {
          if (v8 != 6791)
          {
            return result;
          }

          goto LABEL_12;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v8 == 6798)
    {
LABEL_21:
      sub_298B1A150(a1, v5);
      sub_298B1A150(a1, (a2 >> 5) & 0x1F);
      v9 = word_298DFBCEE[v7];
      goto LABEL_22;
    }

    if (v8 == 6797)
    {
LABEL_26:
      sub_298B1A150(a1, v5);
      goto LABEL_27;
    }

    if (v8 != 6794)
    {
      return result;
    }

LABEL_20:
    sub_298B0A034(a1, 1, word_298DFB922[v5]);
    v10 = word_298DFB922[v6];
LABEL_24:
    sub_298B0A034(a1, 1, v10);
LABEL_28:
    sub_298B1A55C(a1, HIWORD(a2) & 0x1F);
    goto LABEL_29;
  }

  if (v8 > 1397)
  {
    if (v8 != 1398)
    {
      if (v8 != 1401)
      {
        if (v8 != 1402)
        {
          return result;
        }

        goto LABEL_21;
      }

      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (v8 == 1383)
  {
LABEL_23:
    sub_298B1A55C(a1, v5);
    v10 = word_298DFB922[v6];
    goto LABEL_24;
  }

  if (v8 == 1386)
  {
LABEL_25:
    sub_298B0A034(a1, 1, word_298DFBCEE[v5]);
LABEL_27:
    sub_298B1A150(a1, (a2 >> 5) & 0x1F);
    goto LABEL_28;
  }

  if (v8 != 1387)
  {
    return result;
  }

LABEL_12:
  sub_298B0A034(a1, 1, word_298DFBCEE[v5]);
  sub_298B1A150(a1, (a2 >> 5) & 0x1F);
  v9 = word_298DFBCEE[v7];
LABEL_22:
  sub_298B0A034(a1, 1, v9);
LABEL_29:
  sub_298B0A034(a1, 2, a2 >> 10);
  return 3;
}

uint64_t sub_298B1ADBC(uint64_t a1, unsigned int a2)
{
  v4 = a2 & 0x1F;
  v5 = (a2 >> 5) & 0x1F;
  v6 = (a2 >> 10) & 0x1F;
  if (((a2 >> 15) & 0x40) != 0)
  {
    v7 = (a2 >> 15) & 0x7F | 0xFFFFFFFFFFFFFF80;
  }

  else
  {
    v7 = (a2 >> 15) & 0x7F;
  }

  v8 = *a1;
  v9 = (*a1 - 4289) > 0x10 || ((1 << (*a1 + 63)) & 0x1B6DB) == 0;
  if (!v9 || (v8 - 6672) <= 0xD && ((1 << (v8 - 16)) & 0x36DB) != 0 || (v13 = (v8 - 6585) >= 2, v14 = v8 == 6587, (v8 - 6585) < 2))
  {
    v10 = word_298DFBD50[v5];
    v11 = *(a1 + 24);
    v12 = *(a1 + 28);
    v13 = v11 >= v12;
    v14 = v11 == v12;
    if (v11 >= v12)
    {
      sub_298B90A44(a1 + 16, (a1 + 32), v11 + 1, 16);
      LODWORD(v11) = *(a1 + 24);
    }

    v15 = (*(a1 + 16) + 16 * v11);
    *v15 = 1;
    v15[1] = v10;
    ++*(a1 + 24);
  }

  v16 = 0;
  if (v14 || !v13)
  {
    switch(v8)
    {
      case 4231:
      case 4288:
      case 4289:
      case 4290:
        goto LABEL_18;
      case 4232:
      case 4291:
      case 4292:
      case 4293:
        goto LABEL_19;
      case 4233:
      case 4297:
      case 4298:
      case 4299:
        goto LABEL_24;
      case 4234:
      case 4300:
        goto LABEL_40;
      case 4235:
      case 4294:
      case 4303:
        goto LABEL_21;
      case 4236:
      case 4237:
      case 4238:
      case 4239:
      case 4240:
      case 4241:
      case 4242:
      case 4243:
      case 4244:
      case 4245:
      case 4246:
      case 4247:
      case 4248:
      case 4249:
      case 4250:
      case 4251:
      case 4252:
      case 4253:
      case 4254:
      case 4255:
      case 4256:
      case 4257:
      case 4258:
      case 4259:
      case 4260:
      case 4261:
      case 4262:
      case 4263:
      case 4264:
      case 4265:
      case 4266:
      case 4267:
      case 4268:
      case 4269:
      case 4270:
      case 4271:
      case 4272:
      case 4273:
      case 4274:
      case 4275:
      case 4276:
      case 4277:
      case 4278:
      case 4279:
      case 4280:
      case 4281:
      case 4282:
      case 4283:
      case 4284:
      case 4285:
      case 4286:
      case 4287:
        return v16;
      case 4295:
      case 4296:
      case 4304:
      case 4305:
        goto LABEL_20;
      case 4301:
      case 4302:
        goto LABEL_39;
      default:
        JUMPOUT(0);
    }
  }

  switch(v8)
  {
    case 6583:
    case 6623:
    case 6683:
      goto LABEL_21;
    case 6585:
    case 6586:
    case 6684:
    case 6685:
LABEL_20:
      LOBYTE(v16) = 1;
LABEL_21:
      v18 = word_298DFBCEE[v4];
      v19 = *(a1 + 24);
      if (v19 >= *(a1 + 28))
      {
        v29 = word_298DFBCEE[v4];
        sub_298B90A44(a1 + 16, (a1 + 32), v19 + 1, 16);
        v18 = v29;
        LODWORD(v19) = *(a1 + 24);
      }

      v20 = (*(a1 + 16) + 16 * v19);
      *v20 = 1;
      v20[1] = v18;
      ++*(a1 + 24);
      sub_298B0A034(a1, 1, word_298DFBCEE[v6]);
      goto LABEL_27;
    case 6619:
    case 6671:
    case 6672:
    case 6673:
LABEL_18:
      v17 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_25;
    case 6620:
    case 6674:
    case 6675:
    case 6676:
LABEL_19:
      sub_298B1A1C4(a1, v4);
      sub_298B1A1C4(a1, v6);
      goto LABEL_26;
    case 6621:
    case 6677:
    case 6678:
    case 6679:
LABEL_24:
      v17 = &unk_298DFB86A;
LABEL_25:
      sub_298B0A034(a1, 1, v17[v4]);
      sub_298B0A034(a1, 1, v17[v6]);
LABEL_26:
      LOBYTE(v16) = 0;
      goto LABEL_27;
    case 6622:
    case 6680:
      goto LABEL_40;
    case 6681:
    case 6682:
LABEL_39:
      LOBYTE(v16) = 1;
LABEL_40:
      sub_298B1A55C(a1, v4);
      sub_298B1A55C(a1, v6);
LABEL_27:
      v21 = word_298DFBD50[v5];
      v22 = *(a1 + 24);
      if (v22 >= *(a1 + 28))
      {
        sub_298B90A44(a1 + 16, (a1 + 32), v22 + 1, 16);
        LODWORD(v22) = *(a1 + 24);
      }

      v23 = (*(a1 + 16) + 16 * v22);
      *v23 = 1;
      v23[1] = v21;
      v24 = *(a1 + 28);
      v25 = (*(a1 + 24) + 1);
      *(a1 + 24) = v25;
      if (v25 >= v24)
      {
        sub_298B90A44(a1 + 16, (a1 + 32), v25 + 1, 16);
        LODWORD(v25) = *(a1 + 24);
      }

      v26 = (*(a1 + 16) + 16 * v25);
      *v26 = 2;
      v26[1] = v7;
      ++*(a1 + 24);
      if ((a2 & 0x400000) != 0 && v4 == v6)
      {
        v16 = 1;
      }

      else
      {
        v27 = v16 ^ 1;
        if (v5 == 31)
        {
          v27 = 1;
        }

        if ((v27 & 1) != 0 || (v16 = 1, v4 != v5) && v6 != v5)
        {
          v16 = 3;
        }
      }

      break;
    default:
      return v16;
  }

  return v16;
}

uint64_t sub_298B1B3B8(uint64_t a1, unsigned int a2)
{
  v4 = a2 & 0x1F;
  if (*a1 == 4699)
  {
    result = sub_298B0A034(a1, 1, a0123456789Abcd_0[v4]);
  }

  else
  {
    result = sub_298B1A1C4(a1, v4);
  }

  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    result = sub_298B90A44(a1 + 16, (a1 + 32), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 24);
  }

  v7 = (*(a1 + 16) + 16 * v6);
  *v7 = 2;
  v7[1] = (a2 >> 11) & 0xE0 | (a2 >> 5) & 0x1F;
  v8 = (*(a1 + 24) + 1);
  *(a1 + 24) = v8;
  v9 = *a1 - 4702;
  if (v9 > 6)
  {
    goto LABEL_7;
  }

  v10 = 1 << v9;
  if ((v10 & 0x4D) != 0)
  {
LABEL_13:
    v11 = (a2 >> 10) & 0x18;
    goto LABEL_14;
  }

  if ((v10 & 0x12) == 0)
  {
LABEL_7:
    if ((*a1 - 4766) > 5)
    {
      return result;
    }

    if (((1 << (*a1 + 98)) & 0x2D) != 0)
    {
      goto LABEL_13;
    }
  }

  if ((a2 & 0x1000) != 0)
  {
    v11 = 272;
  }

  else
  {
    v11 = 264;
  }

LABEL_14:
  if (v8 >= *(a1 + 28))
  {
    result = sub_298B90A44(a1 + 16, (a1 + 32), v8 + 1, 16);
    LODWORD(v8) = *(a1 + 24);
  }

  v12 = (*(a1 + 16) + 16 * v8);
  *v12 = 2;
  v12[1] = v11;
  ++*(a1 + 24);
  return result;
}

uint64_t sub_298B1B52C(uint64_t result, unsigned int a2)
{
  v2 = (a2 >> 11) & 0xE0;
  v3 = word_298DFC574[a2 & 0x1F];
  v4 = *(result + 24);
  if (v4 >= *(result + 28))
  {
    v16 = result;
    v17 = a2;
    sub_298B90A44(result + 16, (result + 32), v4 + 1, 16);
    a2 = v17;
    result = v16;
    LODWORD(v4) = *(v16 + 24);
  }

  v5 = v2 & 0xFFFFFFE0 | (a2 >> 5) & 0x1F;
  v6 = (*(result + 16) + 16 * v4);
  *v6 = 1;
  v6[1] = v3;
  v7 = *(result + 28);
  v8 = (*(result + 24) + 1);
  *(result + 24) = v8;
  if (v8 >= v7)
  {
    v18 = result;
    v19 = a2;
    sub_298B90A44(result + 16, (result + 32), v8 + 1, 16);
    a2 = v19;
    result = v18;
    LODWORD(v8) = *(v18 + 24);
  }

  v9 = (*(result + 16) + 16 * v8);
  *v9 = 1;
  v9[1] = v3;
  v10 = *(result + 28);
  v11 = (*(result + 24) + 1);
  *(result + 24) = v11;
  if (v11 >= v10)
  {
    v20 = result;
    v21 = a2;
    sub_298B90A44(result + 16, (result + 32), v11 + 1, 16);
    a2 = v21;
    result = v20;
    LODWORD(v11) = *(v20 + 24);
  }

  v12 = (*(result + 16) + 16 * v11);
  *v12 = 2;
  v12[1] = v5;
  v13 = *(result + 28);
  v14 = (*(result + 24) + 1);
  *(result + 24) = v14;
  if (v14 >= v13)
  {
    v22 = result;
    v23 = a2;
    sub_298B90A44(result + 16, (result + 32), v14 + 1, 16);
    a2 = v23;
    result = v22;
    LODWORD(v14) = *(v22 + 24);
  }

  v15 = (*(result + 16) + 16 * v14);
  *v15 = 2;
  v15[1] = (a2 >> 10) & 0x18;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1B6B8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (((a2 >> 3) & 0x100000) != 0)
  {
    v6 = (a2 >> 3) & 0x1FFFFC | (a2 >> 29) & 3 | 0xFFFFFFFFFFE00000;
  }

  else
  {
    v6 = (a2 >> 3) & 0x1FFFFC | (a2 >> 29) & 3;
  }

  v7 = word_298DFBCEE[a2 & 0x1F];
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    v13 = a4;
    sub_298B90A44(a1 + 16, (a1 + 32), v8 + 1, 16);
    a4 = v13;
    LODWORD(v8) = *(a1 + 24);
  }

  v9 = (*(a1 + 16) + 16 * v8);
  *v9 = 1;
  v9[1] = v7;
  v10 = *(a1 + 24) + 1;
  *(a1 + 24) = v10;
  result = *(a4 + 24);
  if (result)
  {
    result = (*(*result + 16))(result, a1, *(a4 + 32), v6, a3, 0, 0, 0, 4);
    if (result)
    {
      return result;
    }

    v10 = *(a1 + 24);
  }

  if (v10 >= *(a1 + 28))
  {
    result = sub_298B90A44(a1 + 16, (a1 + 32), v10 + 1, 16);
    v10 = *(a1 + 24);
  }

  v12 = (*(a1 + 16) + 16 * v10);
  *v12 = 2;
  v12[1] = v6;
  ++*(a1 + 24);
  return result;
}

uint64_t sub_298B1B808(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 >> 22) & 3;
  if (v4 > 1)
  {
    return 0;
  }

  v9 = a2 & 0x1F;
  v10 = (a2 >> 5) & 0x1F;
  v11 = a2 & 0x2000001F;
  if ((a2 & 0x80000000) != 0)
  {
    if (v11 == 31)
    {
      sub_298B1A150(a1, 31);
    }

    else
    {
      sub_298B0A034(a1, 1, word_298DFBCEE[v9]);
    }

    v19 = word_298DFBD50[v10];
    v20 = *(a1 + 24);
    if (v20 >= *(a1 + 28))
    {
      sub_298B90A44(a1 + 16, (a1 + 32), v20 + 1, 16);
      LODWORD(v20) = *(a1 + 24);
    }

    v21 = (*(a1 + 16) + 16 * v20);
    *v21 = 1;
    v21[1] = v19;
    ++*(a1 + 24);
  }

  else
  {
    if (v11 == 31)
    {
      sub_298B0A034(a1, 1, 9);
    }

    else
    {
      sub_298B1A55C(a1, v9);
    }

    sub_298B0A034(a1, 1, word_298DFB922[v10]);
  }

  v12 = *(a4 + 24);
  if (v12 && (*(*v12 + 16))(v12, a1, *(a4 + 32), (a2 >> 10) & 0x3FFF, a3, 0, 0, 0, 4))
  {
    v16 = *(a1 + 24);
  }

  else
  {
    v13 = (a2 >> 10) & 0xFFF;
    v14 = *(a1 + 24);
    if (*(a1 + 28) <= v14)
    {
      sub_298B90A44(a1 + 16, (a1 + 32), v14 + 1, 16);
      LODWORD(v14) = *(a1 + 24);
    }

    v15 = (*(a1 + 16) + 16 * v14);
    *v15 = 2;
    v15[1] = v13;
    v16 = *(a1 + 24) + 1;
    *(a1 + 24) = v16;
  }

  if (v16 >= *(a1 + 28))
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v16 + 1, 16);
    v16 = *(a1 + 24);
  }

  v17 = (*(a1 + 16) + 16 * v16);
  *v17 = 2;
  v17[1] = 12 * v4;
  ++*(a1 + 24);
  return 3;
}

uint64_t sub_298B1BA24(uint64_t a1, unsigned int a2)
{
  v4 = a2 & 0x1F;
  v5 = (a2 >> 5) & 0x1F;
  v6 = *a1;
  if ((a2 & 0x80000000) != 0)
  {
    if (v6 == 1477)
    {
      sub_298B0A034(a1, 1, word_298DFBCEE[v4]);
    }

    else
    {
      sub_298B1A150(a1, v4);
    }

    sub_298B0A034(a1, 1, word_298DFBCEE[v5]);
    v7 = HIWORD(a2) & 0x40 | (a2 >> 10);
    if (v7 != 63)
    {
      result = 0;
      if (((a2 >> 10) | -(0x80000000 >> __clz(v7 ^ 0x3F))) == 0xFFFFFFFF)
      {
        return result;
      }

      v9 = (a2 >> 10) & 0x1FFF;
      v10 = *(a1 + 24);
      goto LABEL_10;
    }

    return 0;
  }

  if (v6 == 1475)
  {
    sub_298B1A55C(a1, v4);
  }

  else
  {
    sub_298B0A034(a1, 1, word_298DFB922[v4]);
  }

  v13 = word_298DFB8C4[v5];
  v14 = *(a1 + 24);
  if (v14 >= *(a1 + 28))
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v14 + 1, 16);
    LODWORD(v14) = *(a1 + 24);
  }

  v15 = (*(a1 + 16) + 16 * v14);
  *v15 = 1;
  v15[1] = v13;
  v10 = *(a1 + 24) + 1;
  *(a1 + 24) = v10;
  v16 = a2 >> 10;
  if (v16 == 63)
  {
    return 0;
  }

  result = 0;
  if ((v16 | -(0x80000000 >> __clz(v16 ^ 0x3F))) == 0xFFFFFFFF)
  {
    return result;
  }

  v9 = (a2 >> 10) & 0xFFF;
LABEL_10:
  v11 = v9;
  if (v10 >= *(a1 + 28))
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v10 + 1, 16);
    v10 = *(a1 + 24);
  }

  v12 = (*(a1 + 16) + 16 * v10);
  *v12 = 2;
  v12[1] = v11;
  ++*(a1 + 24);
  return 3;
}

uint64_t sub_298B1BBEC(_DWORD *a1, unsigned int a2)
{
  v2 = 0;
  v3 = *a1 - 4709;
  if (v3 <= 0x11)
  {
    v4 = 1 << v3;
    if ((v4 & 0x10005) != 0)
    {
      if ((a2 & 0x400000) != 0)
      {
        return 0;
      }

      v6 = a2;
      v7 = a1;
      sub_298B1A55C(a1, a2 & 0x1F);
    }

    else
    {
      if ((v4 & 0x2000A) == 0)
      {
        return v2;
      }

      v6 = a2;
      v7 = a1;
      sub_298B0A034(a1, 1, word_298DFBCEE[a2 & 0x1F]);
    }

    v8 = v6;
    v9 = (v6 >> 5);
    v10 = v8 >> 17;
    if ((*v7 - 4709) < 2)
    {
      v17 = *(v7 + 2);
      v19 = *v17;
      v18 = v7[6];
      if (v18 >= v7[7])
      {
        sub_298B90A44((v7 + 4), v7 + 8, v18 + 1, 16);
        LODWORD(v18) = v7[6];
        v17 = *(v7 + 2);
      }

      v17[v18] = v19;
      v11 = v7[6] + 1;
      v7[6] = v11;
    }

    else
    {
      v11 = v7[6];
    }

    v12 = v10 & 0x30;
    if (v11 >= v7[7])
    {
      sub_298B90A44((v7 + 4), v7 + 8, v11 + 1, 16);
      v11 = v7[6];
    }

    v13 = (*(v7 + 2) + 16 * v11);
    *v13 = 2;
    v13[1] = v9;
    v14 = v7[7];
    v15 = (v7[6] + 1);
    v7[6] = v15;
    if (v15 >= v14)
    {
      sub_298B90A44((v7 + 4), v7 + 8, v15 + 1, 16);
      LODWORD(v15) = v7[6];
    }

    v16 = (*(v7 + 2) + 16 * v15);
    *v16 = 2;
    v16[1] = v12;
    ++v7[6];
    return 3;
  }

  return v2;
}

uint64_t sub_298B1BDA0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x40000) != 0)
  {
    v5 = a2 | 0xFFFFFFFFFFF80000;
  }

  else
  {
    v5 = a2;
  }

  result = *(a4 + 24);
  if (!result || (result = (*(*result + 16))(result, a1, *(a4 + 32), 4 * v5, a3, *a1 != 4380, 0, 0, 4), (result & 1) == 0))
  {
    v7 = *(a1 + 24);
    if (*(a1 + 28) <= v7)
    {
      result = sub_298B90A44(a1 + 16, (a1 + 32), v7 + 1, 16);
      LODWORD(v7) = *(a1 + 24);
    }

    v8 = (*(a1 + 16) + 16 * v7);
    *v8 = 2;
    v8[1] = v5;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t sub_298B1BE80(uint64_t a1, unsigned int a2)
{
  v4 = a2 & 0x1F;
  v5 = (a2 >> 5) & 0x1F;
  if (((a2 >> 12) & 0x100) != 0)
  {
    v6 = (a2 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
  }

  else
  {
    v6 = (a2 >> 12) & 0x1FF;
  }

  v7 = *a1;
  switch(*a1)
  {
    case 0x10D6:
    case 0x10D7:
    case 0x10DB:
    case 0x10DC:
    case 0x10E1:
    case 0x10E2:
    case 0x10E6:
    case 0x10E7:
    case 0x10EB:
    case 0x10EC:
    case 0x10F1:
    case 0x10F2:
    case 0x10F6:
    case 0x10F7:
    case 0x10FB:
    case 0x10FC:
    case 0x1100:
    case 0x1101:
    case 0x1105:
    case 0x1106:
    case 0x110B:
    case 0x110C:
    case 0x1111:
    case 0x1112:
    case 0x1117:
    case 0x1118:
    case 0x111D:
    case 0x111E:
      goto LABEL_9;
    case 0x10D8:
    case 0x10D9:
    case 0x10DA:
    case 0x10DD:
    case 0x10DE:
    case 0x10DF:
    case 0x10E0:
    case 0x10E3:
    case 0x10E4:
    case 0x10E5:
    case 0x10E8:
    case 0x10E9:
    case 0x10EA:
    case 0x10ED:
    case 0x10EE:
    case 0x10EF:
    case 0x10F0:
    case 0x10F3:
    case 0x10F4:
    case 0x10F5:
    case 0x10F8:
    case 0x10F9:
    case 0x10FA:
    case 0x10FD:
    case 0x10FE:
    case 0x10FF:
    case 0x1102:
    case 0x1103:
    case 0x1104:
    case 0x1107:
    case 0x1108:
    case 0x1109:
    case 0x110A:
    case 0x110D:
    case 0x110E:
    case 0x110F:
    case 0x1110:
    case 0x1113:
    case 0x1114:
    case 0x1115:
    case 0x1116:
    case 0x1119:
    case 0x111A:
    case 0x111B:
    case 0x111C:
      break;
    default:
      if ((v7 - 6686) <= 0x29 && ((1 << (v7 - 30)) & 0x318C6318C63) != 0)
      {
LABEL_9:
        sub_298B1A150(a1, (a2 >> 5) & 0x1F);
        v7 = *a1;
      }

      break;
  }

  result = 0;
  switch(v7)
  {
    case 4129:
    case 4130:
    case 4131:
    case 4133:
    case 4140:
    case 4310:
    case 4311:
    case 4326:
    case 4327:
    case 4342:
    case 4343:
    case 4352:
    case 4353:
    case 4375:
    case 4376:
    case 4442:
    case 4443:
    case 4444:
    case 4446:
    case 4449:
    case 4483:
    case 4486:
    case 4489:
    case 4491:
    case 4495:
LABEL_6:
      sub_298B1A55C(a1, v4);
      goto LABEL_14;
    case 4132:
    case 4134:
    case 4135:
    case 4136:
    case 4347:
    case 4348:
    case 4357:
    case 4358:
    case 4363:
    case 4364:
    case 4381:
    case 4382:
    case 4445:
    case 4447:
    case 4448:
    case 4450:
    case 4490:
    case 4492:
    case 4493:
    case 4496:
LABEL_11:
      v9 = word_298DFBCEE;
      goto LABEL_12;
    case 4137:
    case 4138:
    case 4139:
    case 4141:
    case 4142:
    case 4143:
    case 4144:
    case 4145:
    case 4146:
    case 4147:
    case 4148:
    case 4149:
    case 4150:
    case 4151:
    case 4152:
    case 4153:
    case 4154:
    case 4155:
    case 4156:
    case 4157:
    case 4158:
    case 4159:
    case 4160:
    case 4161:
    case 4162:
    case 4163:
    case 4164:
    case 4165:
    case 4166:
    case 4167:
    case 4168:
    case 4169:
    case 4170:
    case 4171:
    case 4172:
    case 4173:
    case 4174:
    case 4175:
    case 4176:
    case 4177:
    case 4178:
    case 4179:
    case 4180:
    case 4181:
    case 4182:
    case 4183:
    case 4184:
    case 4185:
    case 4186:
    case 4187:
    case 4188:
    case 4189:
    case 4190:
    case 4191:
    case 4192:
    case 4193:
    case 4194:
    case 4195:
    case 4196:
    case 4197:
    case 4198:
    case 4199:
    case 4200:
    case 4201:
    case 4202:
    case 4203:
    case 4204:
    case 4205:
    case 4206:
    case 4207:
    case 4208:
    case 4209:
    case 4210:
    case 4211:
    case 4212:
    case 4213:
    case 4214:
    case 4215:
    case 4216:
    case 4217:
    case 4218:
    case 4219:
    case 4220:
    case 4221:
    case 4222:
    case 4223:
    case 4224:
    case 4225:
    case 4226:
    case 4227:
    case 4228:
    case 4229:
    case 4230:
    case 4231:
    case 4232:
    case 4233:
    case 4234:
    case 4235:
    case 4236:
    case 4237:
    case 4238:
    case 4239:
    case 4240:
    case 4241:
    case 4242:
    case 4243:
    case 4244:
    case 4245:
    case 4246:
    case 4247:
    case 4248:
    case 4249:
    case 4250:
    case 4251:
    case 4252:
    case 4253:
    case 4254:
    case 4255:
    case 4256:
    case 4257:
    case 4258:
    case 4259:
    case 4260:
    case 4261:
    case 4262:
    case 4263:
    case 4264:
    case 4265:
    case 4266:
    case 4267:
    case 4268:
    case 4269:
    case 4270:
    case 4271:
    case 4272:
    case 4273:
    case 4274:
    case 4275:
    case 4276:
    case 4277:
    case 4278:
    case 4279:
    case 4280:
    case 4281:
    case 4282:
    case 4283:
    case 4284:
    case 4285:
    case 4286:
    case 4287:
    case 4288:
    case 4289:
    case 4290:
    case 4291:
    case 4292:
    case 4293:
    case 4294:
    case 4295:
    case 4296:
    case 4297:
    case 4298:
    case 4299:
    case 4300:
    case 4301:
    case 4302:
    case 4303:
    case 4304:
    case 4305:
    case 4306:
    case 4307:
    case 4308:
    case 4309:
    case 4312:
    case 4313:
    case 4314:
    case 4317:
    case 4318:
    case 4319:
    case 4320:
    case 4323:
    case 4324:
    case 4325:
    case 4328:
    case 4329:
    case 4330:
    case 4333:
    case 4334:
    case 4335:
    case 4336:
    case 4339:
    case 4340:
    case 4341:
    case 4344:
    case 4345:
    case 4346:
    case 4349:
    case 4350:
    case 4351:
    case 4354:
    case 4355:
    case 4356:
    case 4359:
    case 4360:
    case 4361:
    case 4362:
    case 4365:
    case 4366:
    case 4367:
    case 4368:
    case 4371:
    case 4372:
    case 4373:
    case 4374:
    case 4377:
    case 4378:
    case 4379:
    case 4380:
    case 4383:
    case 4384:
    case 4385:
    case 4386:
    case 4387:
    case 4388:
    case 4389:
    case 4390:
    case 4391:
    case 4392:
    case 4393:
    case 4394:
    case 4395:
    case 4396:
    case 4397:
    case 4398:
    case 4399:
    case 4400:
    case 4401:
    case 4402:
    case 4403:
    case 4404:
    case 4405:
    case 4406:
    case 4407:
    case 4408:
    case 4409:
    case 4410:
    case 4411:
    case 4412:
    case 4413:
    case 4414:
    case 4415:
    case 4416:
    case 4417:
    case 4418:
    case 4419:
    case 4420:
    case 4421:
    case 4422:
    case 4423:
    case 4424:
    case 4425:
    case 4426:
    case 4427:
    case 4428:
    case 4429:
    case 4430:
    case 4431:
    case 4432:
    case 4433:
    case 4434:
    case 4435:
    case 4436:
    case 4437:
    case 4438:
    case 4439:
    case 4440:
    case 4441:
    case 4451:
    case 4452:
    case 4453:
    case 4454:
    case 4455:
    case 4456:
    case 4457:
    case 4458:
    case 4459:
    case 4460:
    case 4461:
    case 4462:
    case 4463:
    case 4464:
    case 4465:
    case 4466:
    case 4467:
    case 4468:
    case 4469:
    case 4470:
    case 4471:
    case 4472:
    case 4473:
    case 4474:
    case 4475:
    case 4476:
    case 4477:
    case 4478:
    case 4479:
    case 4480:
    case 4481:
    case 4482:
      return result;
    case 4315:
    case 4316:
    case 4484:
LABEL_29:
      v9 = "\r";
      goto LABEL_12;
    case 4321:
    case 4322:
    case 4485:
LABEL_27:
      v9 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_12;
    case 4331:
    case 4332:
    case 4487:
LABEL_30:
      v9 = &unk_298DFB36E;
      goto LABEL_12;
    case 4337:
    case 4338:
    case 4488:
LABEL_28:
      sub_298B1A1C4(a1, v4);
      goto LABEL_14;
    case 4369:
    case 4370:
    case 4494:
LABEL_31:
      v9 = &unk_298DFB86A;
LABEL_12:
      v10 = v9[v4];
      v11 = a1;
      v12 = 1;
      break;
    default:
      switch(v7)
      {
        case 6604:
        case 6605:
        case 6606:
        case 6686:
        case 6687:
        case 6701:
        case 6702:
        case 6721:
        case 6722:
        case 6735:
        case 6736:
        case 6737:
        case 6739:
        case 6742:
        case 6746:
          goto LABEL_6;
        case 6607:
        case 6726:
        case 6727:
        case 6738:
        case 6747:
          goto LABEL_11;
        case 6608:
        case 6609:
        case 6610:
        case 6611:
        case 6612:
        case 6613:
        case 6614:
        case 6615:
        case 6616:
        case 6617:
        case 6618:
        case 6619:
        case 6620:
        case 6621:
        case 6622:
        case 6623:
        case 6624:
        case 6625:
        case 6626:
        case 6627:
        case 6628:
        case 6629:
        case 6630:
        case 6631:
        case 6632:
        case 6633:
        case 6634:
        case 6635:
        case 6636:
        case 6637:
        case 6638:
        case 6639:
        case 6640:
        case 6641:
        case 6642:
        case 6643:
        case 6644:
        case 6645:
        case 6646:
        case 6647:
        case 6648:
        case 6649:
        case 6650:
        case 6651:
        case 6652:
        case 6653:
        case 6654:
        case 6655:
        case 6656:
        case 6657:
        case 6658:
        case 6659:
        case 6660:
        case 6661:
        case 6662:
        case 6663:
        case 6664:
        case 6665:
        case 6666:
        case 6667:
        case 6668:
        case 6669:
        case 6670:
        case 6671:
        case 6672:
        case 6673:
        case 6674:
        case 6675:
        case 6676:
        case 6677:
        case 6678:
        case 6679:
        case 6680:
        case 6681:
        case 6682:
        case 6683:
        case 6684:
        case 6685:
        case 6688:
        case 6689:
        case 6690:
        case 6693:
        case 6694:
        case 6695:
        case 6698:
        case 6699:
        case 6700:
        case 6703:
        case 6704:
        case 6705:
        case 6708:
        case 6709:
        case 6710:
        case 6713:
        case 6714:
        case 6715:
        case 6718:
        case 6719:
        case 6720:
        case 6723:
        case 6724:
        case 6725:
        case 6728:
        case 6729:
        case 6730:
        case 6731:
        case 6732:
        case 6733:
        case 6734:
          return result;
        case 6691:
        case 6692:
        case 6740:
          goto LABEL_29;
        case 6696:
        case 6697:
        case 6741:
          goto LABEL_27;
        case 6706:
        case 6707:
        case 6743:
          goto LABEL_30;
        case 6711:
        case 6712:
        case 6744:
          goto LABEL_28;
        case 6716:
        case 6717:
        case 6745:
          goto LABEL_31;
        default:
          if (v7 != 4917)
          {
            return result;
          }

          v11 = a1;
          v12 = 2;
          v10 = v4;
          break;
      }

      break;
  }

  sub_298B0A034(v11, v12, v10);
LABEL_14:
  v13 = word_298DFBD50[v5];
  v14 = *(a1 + 24);
  if (v14 >= *(a1 + 28))
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v14 + 1, 16);
    LODWORD(v14) = *(a1 + 24);
  }

  v15 = (*(a1 + 16) + 16 * v14);
  *v15 = 1;
  v15[1] = v13;
  v16 = *(a1 + 28);
  v17 = (*(a1 + 24) + 1);
  *(a1 + 24) = v17;
  if (v17 >= v16)
  {
    sub_298B90A44(a1 + 16, (a1 + 32), v17 + 1, 16);
    LODWORD(v17) = *(a1 + 24);
  }

  v18 = (*(a1 + 16) + 16 * v17);
  *v18 = 2;
  v18[1] = v6;
  ++*(a1 + 24);
  v19 = ((a2 & 0xC00) != 0) & (a2 >> 22);
  if ((a2 & 0x4000000) != 0 || v5 == 31)
  {
    LOBYTE(v19) = 0;
  }

  if (((v4 == v5) & v19) != 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_298B1CA0C(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = a2 & 0x1F;
  if (v3 != 31)
  {
    v4 = (a2 >> 5) & 0x1F;
    if (v3 != v4)
    {
      v5 = HIWORD(a2) & 0x1F;
      if (v3 != v5 && v5 != v4)
      {
        v6 = word_298DFBDB2[a2 & 0x1F];
        v7 = *(a1 + 24);
        if (v7 >= *(a1 + 28))
        {
          v31 = a1;
          sub_298B90A44(a1 + 16, (a1 + 32), v7 + 1, 16);
          a1 = v31;
          LODWORD(v7) = *(v31 + 24);
        }

        v8 = (*(a1 + 16) + 16 * v7);
        *v8 = 1;
        v8[1] = v6;
        v9 = (*(a1 + 24) + 1);
        *(a1 + 24) = v9;
        if (v5 == 31)
        {
          return 0;
        }

        else
        {
          v10 = word_298DFBDB2[v5];
          if (v9 >= *(a1 + 28))
          {
            v26 = a1;
            sub_298B90A44(a1 + 16, (a1 + 32), v9 + 1, 16);
            a1 = v26;
            LODWORD(v9) = *(v26 + 24);
          }

          v11 = (*(a1 + 16) + 16 * v9);
          *v11 = 1;
          v11[1] = v10;
          v12 = *(a1 + 28);
          v13 = (*(a1 + 24) + 1);
          *(a1 + 24) = v13;
          v14 = word_298DFBCEE[v4];
          if (v13 >= v12)
          {
            v27 = a1;
            sub_298B90A44(a1 + 16, (a1 + 32), v13 + 1, 16);
            a1 = v27;
            LODWORD(v13) = *(v27 + 24);
          }

          v15 = (*(a1 + 16) + 16 * v13);
          *v15 = 1;
          v15[1] = v14;
          v16 = *(a1 + 28);
          v17 = (*(a1 + 24) + 1);
          *(a1 + 24) = v17;
          if (v17 >= v16)
          {
            v28 = a1;
            sub_298B90A44(a1 + 16, (a1 + 32), v17 + 1, 16);
            a1 = v28;
            LODWORD(v17) = *(v28 + 24);
          }

          v18 = (*(a1 + 16) + 16 * v17);
          *v18 = 1;
          v18[1] = v6;
          v19 = *(a1 + 28);
          v20 = (*(a1 + 24) + 1);
          *(a1 + 24) = v20;
          if (v20 >= v19)
          {
            v29 = a1;
            sub_298B90A44(a1 + 16, (a1 + 32), v20 + 1, 16);
            a1 = v29;
            LODWORD(v20) = *(v29 + 24);
          }

          v21 = (*(a1 + 16) + 16 * v20);
          *v21 = 1;
          v21[1] = v10;
          v22 = *(a1 + 28);
          v23 = (*(a1 + 24) + 1);
          *(a1 + 24) = v23;
          if (v23 >= v22)
          {
            v30 = a1;
            sub_298B90A44(a1 + 16, (a1 + 32), v23 + 1, 16);
            a1 = v30;
            LODWORD(v23) = *(v30 + 24);
          }

          v24 = (*(a1 + 16) + 16 * v23);
          *v24 = 1;
          v24[1] = v14;
          ++*(a1 + 24);
          return 3;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_298B1CC5C(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = a2 & 0x1F;
  if (v3 != 31)
  {
    v4 = (a2 >> 5) & 0x1F;
    if (v3 != v4)
    {
      v5 = HIWORD(a2) & 0x1F;
      if (v3 != v5 && v5 != v4)
      {
        v6 = word_298DFBDB2[a2 & 0x1F];
        v7 = *(a1 + 24);
        if (v7 >= *(a1 + 28))
        {
          v24 = a1;
          sub_298B90A44(a1 + 16, (a1 + 32), v7 + 1, 16);
          a1 = v24;
          LODWORD(v7) = *(v24 + 24);
        }

        v8 = (*(a1 + 16) + 16 * v7);
        *v8 = 1;
        v8[1] = v6;
        v9 = *(a1 + 28);
        v10 = (*(a1 + 24) + 1);
        *(a1 + 24) = v10;
        v11 = word_298DFBCEE[v4];
        if (v10 >= v9)
        {
          v27 = a1;
          sub_298B90A44(a1 + 16, (a1 + 32), v10 + 1, 16);
          a1 = v27;
          LODWORD(v10) = *(v27 + 24);
        }

        v12 = (*(a1 + 16) + 16 * v10);
        *v12 = 1;
        v12[1] = v11;
        v13 = *(a1 + 28);
        v14 = (*(a1 + 24) + 1);
        *(a1 + 24) = v14;
        if (v14 >= v13)
        {
          v28 = a1;
          sub_298B90A44(a1 + 16, (a1 + 32), v14 + 1, 16);
          a1 = v28;
          LODWORD(v14) = *(v28 + 24);
        }

        v15 = (*(a1 + 16) + 16 * v14);
        *v15 = 1;
        v15[1] = v6;
        v16 = *(a1 + 28);
        v17 = (*(a1 + 24) + 1);
        *(a1 + 24) = v17;
        if (v17 >= v16)
        {
          v25 = a1;
          sub_298B90A44(a1 + 16, (a1 + 32), v17 + 1, 16);
          a1 = v25;
          LODWORD(v17) = *(v25 + 24);
        }

        v18 = (*(a1 + 16) + 16 * v17);
        *v18 = 1;
        v18[1] = v11;
        v19 = *(a1 + 28);
        v20 = (*(a1 + 24) + 1);
        *(a1 + 24) = v20;
        v21 = word_298DFBCEE[v5];
        if (v20 >= v19)
        {
          v26 = a1;
          sub_298B90A44(a1 + 16, (a1 + 32), v20 + 1, 16);
          a1 = v26;
          LODWORD(v20) = *(v26 + 24);
        }

        v22 = (*(a1 + 16) + 16 * v20);
        *v22 = 1;
        v22[1] = v21;
        ++*(a1 + 24);
        return 3;
      }
    }
  }

  return v2;
}

uint64_t sub_298B1CE54(uint64_t result, unsigned int a2)
{
  v2 = (a2 >> 1) & 1;
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v8 = result;
    v9 = a2;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    LOBYTE(a2) = v9;
    result = v8;
    LODWORD(v3) = *(v8 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 2;
  v4[1] = v2;
  v5 = *(result + 28);
  v6 = (*(result + 24) + 1);
  *(result + 24) = v6;
  if (v6 >= v5)
  {
    v10 = result;
    v11 = a2;
    sub_298B90A44(result + 16, (result + 32), v6 + 1, 16);
    LOBYTE(a2) = v11;
    result = v10;
    LODWORD(v6) = *(v10 + 24);
  }

  v7 = (*(result + 16) + 16 * v6);
  *v7 = 2;
  v7[1] = a2 & 1;
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1CF24(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v7 = a2 & 0x1F;
  v8 = *a1;
  if (*a1 <= 6689)
  {
    switch(v8)
    {
      case 4314:
      case 4330:
      case 4346:
      case 4356:
      case 4379:
        goto LABEL_32;
      case 4315:
      case 4316:
      case 4317:
      case 4318:
      case 4320:
      case 4321:
      case 4322:
      case 4323:
      case 4324:
      case 4326:
      case 4327:
      case 4328:
      case 4329:
      case 4331:
      case 4332:
      case 4333:
      case 4334:
      case 4336:
      case 4337:
      case 4338:
      case 4339:
      case 4340:
      case 4342:
      case 4343:
      case 4344:
      case 4345:
      case 4347:
      case 4348:
      case 4349:
      case 4350:
      case 4352:
      case 4353:
      case 4354:
      case 4355:
      case 4357:
      case 4358:
      case 4359:
      case 4360:
      case 4362:
      case 4363:
      case 4364:
      case 4365:
      case 4366:
      case 4368:
      case 4369:
      case 4370:
      case 4371:
      case 4372:
      case 4374:
      case 4375:
      case 4376:
      case 4377:
      case 4378:
      case 4380:
      case 4381:
      case 4382:
      case 4383:
      case 4384:
        return result;
      case 4319:
        goto LABEL_34;
      case 4325:
        goto LABEL_25;
      case 4335:
        goto LABEL_33;
      case 4341:
        goto LABEL_31;
      case 4351:
      case 4361:
      case 4367:
      case 4385:
        goto LABEL_3;
      case 4373:
        goto LABEL_35;
      default:
        if (v8 != 4916)
        {
          return result;
        }

        v20 = a1;
        v21 = a2;
        v22 = 2;
        break;
    }

    goto LABEL_37;
  }

  if (v8 <= 6719)
  {
    if (v8 > 6704)
    {
      if (v8 != 6705)
      {
        if (v8 != 6710)
        {
          if (v8 == 6715)
          {
LABEL_31:
            v21 = a2;
            v23 = a4;
            sub_298B1A1C4(a1, a2 & 0x1F);
LABEL_38:
            a2 = v21;
            a4 = v23;
            goto LABEL_6;
          }

          return result;
        }

LABEL_33:
        v19 = &unk_298DFB36E;
LABEL_36:
        v7 = v19[a2 & 0x1F];
        v20 = a1;
        v21 = a2;
        v22 = 1;
LABEL_37:
        v23 = a4;
        sub_298B0A034(v20, v22, v7);
        goto LABEL_38;
      }
    }

    else if (v8 != 6690)
    {
      if (v8 == 6695)
      {
LABEL_34:
        v19 = "\r";
      }

      else
      {
        if (v8 != 6700)
        {
          return result;
        }

LABEL_25:
        v19 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      }

      goto LABEL_36;
    }

LABEL_32:
    v21 = a2;
    v23 = a4;
    sub_298B1A55C(a1, a2 & 0x1F);
    goto LABEL_38;
  }

  switch(v8)
  {
    case 6730:
LABEL_3:
      v9 = word_298DFBCEE[a2 & 0x1F];
      v10 = *(a1 + 24);
      if (v10 >= *(a1 + 28))
      {
        v25 = a2;
        v26 = a4;
        sub_298B90A44(a1 + 16, (a1 + 32), v10 + 1, 16);
        a2 = v25;
        a4 = v26;
        LODWORD(v10) = *(a1 + 24);
      }

      v11 = (*(a1 + 16) + 16 * v10);
      *v11 = 1;
      v11[1] = v9;
      ++*(a1 + 24);
LABEL_6:
      v12 = (a2 >> 10) & 0xFFF;
      v13 = word_298DFBD50[(a2 >> 5) & 0x1F];
      v14 = *(a1 + 24);
      if (v14 >= *(a1 + 28))
      {
        v24 = a4;
        sub_298B90A44(a1 + 16, (a1 + 32), v14 + 1, 16);
        a4 = v24;
        LODWORD(v14) = *(a1 + 24);
      }

      v15 = (*(a1 + 16) + 16 * v14);
      *v15 = 1;
      v15[1] = v13;
      v16 = *(a1 + 24) + 1;
      *(a1 + 24) = v16;
      v17 = *(a4 + 24);
      if (v17)
      {
        if ((*(*v17 + 16))(v17, a1, *(a4 + 32), v12, a3, 0, 0, 0, 4))
        {
          return 3;
        }

        v16 = *(a1 + 24);
      }

      if (v16 >= *(a1 + 28))
      {
        sub_298B90A44(a1 + 16, (a1 + 32), v16 + 1, 16);
        v16 = *(a1 + 24);
      }

      v18 = (*(a1 + 16) + 16 * v16);
      *v18 = 2;
      v18[1] = v12;
      ++*(a1 + 24);
      return 3;
    case 6720:
LABEL_35:
      v19 = &unk_298DFB86A;
      goto LABEL_36;
    case 6725:
      goto LABEL_32;
  }

  return result;
}

uint64_t sub_298B1D350(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = (a2 >> 5) & 0x1F;
  v4 = *a1;
  if (*a1 > 4307)
  {
    if (v4 != 4308)
    {
      if (v4 != 4309)
      {
        return v2;
      }

      goto LABEL_7;
    }
  }

  else if (v4 != 4306)
  {
    if (v4 != 4307)
    {
      return v2;
    }

LABEL_7:
    v5 = word_298DFBD50[v3];
    v6 = *(a1 + 24);
    if (v6 >= *(a1 + 28))
    {
      v29 = a1;
      v30 = a2;
      sub_298B90A44(a1 + 16, (a1 + 32), v6 + 1, 16);
      a1 = v29;
      a2 = v30;
      LODWORD(v6) = *(v29 + 24);
    }

    v7 = (*(a1 + 16) + 16 * v6);
    *v7 = 1;
    v7[1] = v5;
    ++*(a1 + 24);
  }

  v8 = a2 & 0x1F;
  v9 = (a2 >> 13) & 0x200;
  v10 = v9 | (a2 >> 12) & 0x1FF;
  v11 = word_298DFBCEE[a2 & 0x1F];
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    v23 = a1;
    v24 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v12 + 1, 16);
    a1 = v23;
    LOWORD(a2) = v24;
    LODWORD(v12) = *(v23 + 24);
  }

  v13 = (*(a1 + 16) + 16 * v12);
  *v13 = 1;
  v13[1] = v11;
  v14 = *(a1 + 28);
  v15 = (*(a1 + 24) + 1);
  *(a1 + 24) = v15;
  v16 = word_298DFBD50[v3];
  if (v15 >= v14)
  {
    v25 = a1;
    v26 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v15 + 1, 16);
    a1 = v25;
    LOWORD(a2) = v26;
    LODWORD(v15) = *(v25 + 24);
  }

  v17 = (*(a1 + 16) + 16 * v15);
  *v17 = 1;
  v17[1] = v16;
  v18 = *(a1 + 28);
  v19 = (*(a1 + 24) + 1);
  *(a1 + 24) = v19;
  if (v9)
  {
    v20 = v10 | 0xFFFFFFFFFFFFFC00;
  }

  else
  {
    v20 = v10;
  }

  if (v19 >= v18)
  {
    v27 = a1;
    v28 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v19 + 1, 16);
    a1 = v27;
    LOWORD(a2) = v28;
    LODWORD(v19) = *(v27 + 24);
  }

  v21 = (*(a1 + 16) + 16 * v19);
  *v21 = 2;
  v21[1] = v20;
  ++*(a1 + 24);
  if ((a2 & 0x800) != 0 && v8 == v3 && v3 != 31)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_298B1D578(uint64_t a1, unsigned int a2)
{
  if ((~a2 & 0x18) == 0)
  {
    return 0;
  }

  v3 = a2 & 0x1F;
  v4 = (a2 >> 5) & 0x1F;
  v5 = *(a1 + 24);
  if (v5 >= *(a1 + 28))
  {
    v27 = a1;
    v28 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v5 + 1, 16);
    a2 = v28;
    a1 = v27;
    LODWORD(v5) = *(v27 + 24);
  }

  v6 = (*(a1 + 16) + 16 * v5);
  *v6 = 2;
  v6[1] = v3;
  v7 = *(a1 + 28);
  v8 = (*(a1 + 24) + 1);
  *(a1 + 24) = v8;
  v9 = word_298DFBD50[v4];
  if (v8 >= v7)
  {
    v23 = a1;
    v29 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v8 + 1, 16);
    a2 = v29;
    a1 = v23;
    LODWORD(v8) = *(v23 + 24);
  }

  v10 = (*(a1 + 16) + 16 * v8);
  *v10 = 1;
  v10[1] = v9;
  v11 = (*(a1 + 24) + 1);
  *(a1 + 24) = v11;
  if (*a1 == 4915)
  {
    v12 = word_298DFBCEE;
  }

  else
  {
    if (*a1 != 4914)
    {
      return 0;
    }

    v12 = word_298DFB8C4;
  }

  v13 = v12[HIWORD(a2) & 0x1F];
  if (v11 >= *(a1 + 28))
  {
    v24 = a1;
    v30 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v11 + 1, 16);
    a2 = v30;
    a1 = v24;
    LODWORD(v11) = *(v24 + 24);
  }

  v14 = (*(a1 + 16) + 16 * v11);
  *v14 = 1;
  v14[1] = v13;
  v15 = *(a1 + 28);
  v16 = (*(a1 + 24) + 1);
  *(a1 + 24) = v16;
  v17 = (a2 >> 15) & 1;
  if (v16 >= v15)
  {
    v25 = a1;
    v31 = a2;
    sub_298B90A44(a1 + 16, (a1 + 32), v16 + 1, 16);
    a2 = v31;
    a1 = v25;
    LODWORD(v16) = *(v25 + 24);
  }

  v18 = (a2 >> 12) & 1;
  v19 = (*(a1 + 16) + 16 * v16);
  *v19 = 2;
  v19[1] = v17;
  v20 = *(a1 + 28);
  v21 = (*(a1 + 24) + 1);
  *(a1 + 24) = v21;
  if (v21 >= v20)
  {
    v26 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v21 + 1, 16);
    a1 = v26;
    LODWORD(v21) = *(v26 + 24);
  }

  v22 = (*(a1 + 16) + 16 * v21);
  *v22 = 2;
  v22[1] = v18;
  ++*(a1 + 24);
  return 3;
}

double sub_298B1D7B8(uint64_t a1, unsigned int a2)
{
  v2 = (a2 >> 5) & 0x1F;
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  if ((a2 & 0x10000) != 0)
  {
    v10 = word_298DFC574[a2 & 0x1F];
    if (v3 >= v4)
    {
      v20 = a1;
      sub_298B90A44(a1 + 16, (a1 + 32), v3 + 1, 16);
      a1 = v20;
      LODWORD(v3) = *(v20 + 24);
    }

    v11 = (*(a1 + 16) + 16 * v3);
    *v11 = 1;
    v11[1] = v10;
    v7 = *(a1 + 28);
    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
    v9 = word_298DFBCEE;
  }

  else
  {
    v5 = word_298DFBCEE[a2 & 0x1F];
    if (v3 >= v4)
    {
      v19 = a1;
      sub_298B90A44(a1 + 16, (a1 + 32), v3 + 1, 16);
      a1 = v19;
      LODWORD(v3) = *(v19 + 24);
    }

    v6 = (*(a1 + 16) + 16 * v3);
    *v6 = 1;
    v6[1] = v5;
    v7 = *(a1 + 28);
    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
    v9 = word_298DFC574;
  }

  v12 = v9[v2];
  if (v8 >= v7)
  {
    v17 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v8 + 1, 16);
    a1 = v17;
    v8 = *(v17 + 24);
  }

  v13 = (*(a1 + 16) + 16 * v8);
  *v13 = 1;
  v13[1] = v12;
  v14 = *(a1 + 28);
  v15 = (*(a1 + 24) + 1);
  *(a1 + 24) = v15;
  if (v15 >= v14)
  {
    v18 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v15 + 1, 16);
    a1 = v18;
    LODWORD(v15) = *(v18 + 24);
  }

  *&result = 2;
  *(*(a1 + 16) + 16 * v15) = xmmword_298CF7A20;
  ++*(a1 + 24);
  return result;
}

uint64_t sub_298B1D948(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = HIWORD(a2) & 7;
  v6 = a2 >> 5;
  if (!v5 && v6 < 3)
  {
    return 0;
  }

  v42 = v3;
  v43 = v4;
  v8 = (a2 >> 8) & 1;
  v9 = (a2 >> 3) & 0x1C0 | (8 * v5) | v6;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v32 = a3;
    v34 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v10 + 1, 16);
    a3 = v32;
    a1 = v34;
    LODWORD(v10) = *(v34 + 24);
  }

  v11 = (*(a1 + 16) + 16 * v10);
  *v11 = 2;
  v11[1] = v9;
  v12 = *(a1 + 28);
  v13 = (*(a1 + 24) + 1);
  *(a1 + 24) = v13;
  if (v13 >= v12)
  {
    v33 = a3;
    v35 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v13 + 1, 16);
    a3 = v33;
    a1 = v35;
    LODWORD(v13) = *(v35 + 24);
  }

  v14 = (*(a1 + 16) + 16 * v13);
  v15 = 2;
  *v14 = 2;
  v14[1] = v8;
  ++*(a1 + 24);
  v16 = &unk_298EA2FE8;
  do
  {
    v17 = v15 >> 1;
    v18 = &v16[4 * (v15 >> 1)];
    v20 = *v18;
    v19 = v18 + 4;
    v15 += ~(v15 >> 1);
    if (v20 < v9)
    {
      v16 = v19;
    }

    else
    {
      v15 = v17;
    }
  }

  while (v15);
  if (v16 == &unk_298EA2FF8)
  {
    return 0;
  }

  if (*v16 != v9)
  {
    return 0;
  }

  v21 = *(a3 + 16);
  v22 = *(v21 + 216);
  if ((*(v21 + 216) & 0x40) != 0)
  {
    return 3;
  }

  v23 = &(&off_29EED3AB0)[14 * *(v16 + 1)];
  v24 = *(v21 + 232);
  v25 = *(v21 + 248);
  v26 = *(v21 + 264);
  v27 = *(v21 + 280);
  v28 = *(v23 + 2);
  __s1 = *(v23 + 1);
  v37 = v28;
  v29 = *(v23 + 4);
  v38 = *(v23 + 3);
  v39 = v29;
  v30 = *(v23 + 6);
  v40 = *(v23 + 5);
  v41 = v30;
  v31 = *(v21 + 296);
  __s1 = vandq_s8(__s1, v22);
  v37 = vandq_s8(v37, v24);
  v38 = vandq_s8(v38, v25);
  v39 = vandq_s8(v39, v26);
  v40 = vandq_s8(v40, v27);
  v41 = vandq_s8(v30, v31);
  if (!memcmp(&__s1, v23 + 2, 0x60uLL))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298B1DB34(uint64_t result, int a2, int a3)
{
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    v6 = a2;
    v7 = a3;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    a2 = v6;
    a3 = v7;
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 2;
  v4[1] = (a3 - a2);
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1DBB8(uint64_t result, int a2, int a3)
{
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    v6 = a2;
    v7 = a3;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    a2 = v6;
    a3 = v7;
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = 2;
  v4[1] = (a3 + a2) & (a3 - 1);
  ++*(result + 24);
  return result;
}

uint64_t sub_298B1DC44(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  v3 = *&(&off_29EEC61C8)[4 * a2][a3];
  v4 = *(a1 + 24);
  if (v4 >= *(a1 + 28))
  {
    v7 = a1;
    sub_298B90A44(a1 + 16, (a1 + 32), v4 + 1, 16);
    a1 = v7;
    LODWORD(v4) = *(v7 + 24);
  }

  v5 = (*(a1 + 16) + 16 * v4);
  *v5 = 1;
  v5[1] = v3;
  ++*(a1 + 24);
  return 3;
}

uint64_t sub_298B1DCE0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(result + 8);
    if (v3 >= v2)
    {
      if (v2)
      {
        v7 = result;
        memmove(*result, *a2, 16 * v2);
LABEL_13:
        result = v7;
      }
    }

    else
    {
      if (*(result + 12) < v2)
      {
        *(result + 8) = 0;
        v4 = a2;
        v5 = result;
        sub_298B90A44(result, (result + 16), v2, 16);
        a2 = v4;
        result = v5;
        v3 = 0;
        v6 = *(v4 + 8);
        if (!*(v4 + 8))
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (v3)
      {
        v8 = result;
        v9 = a2;
        memmove(*result, *a2, 16 * v3);
        a2 = v9;
        result = v8;
        v6 = *(v9 + 8) - v3;
        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      v3 = 0;
      v6 = *(a2 + 8);
      if (*(a2 + 8))
      {
LABEL_12:
        v10 = 16 * v3;
        v7 = result;
        memcpy((*result + v10), (*a2 + v10), 16 * v6);
        goto LABEL_13;
      }
    }

LABEL_14:
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_298B1DDF8(uint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1[4])
  {
    return 0;
  }

  *v116 = 0u;
  v117[1] = 0;
  *__sz = 0u;
  v115 = 0u;
  v117[0] = a4;
  __s = 0;
  v113 = 0;
  v15 = a1[3];
  if (v15 && v15(a1[5], a5, 0, a8, a9, 1, __sz))
  {
    goto LABEL_49;
  }

  if (a6)
  {
    v113 = 1;
    v16 = a5 + a4;
    v17 = (a1[4])(a1[5], v16, &v113, a5, &__s);
    if (v17)
    {
      v16 = 0;
      __sz[0] = 1;
      __sz[1] = v17;
    }

    v117[0] = v16;
    if (v113 == 5)
    {
      v23 = *(a3 + 32);
      if (*(a3 + 24) - v23 <= 0xDuLL)
      {
        sub_298B9BCEC(a3, "Objc message: ", 0xEuLL);
        goto LABEL_44;
      }

      qmemcpy(v23, "Objc message: ", 14);
      v28 = *(a3 + 32) + 14;
    }

    else
    {
      if (v113 != 1)
      {
        goto LABEL_49;
      }

      v18 = *(a3 + 32);
      if ((*(a3 + 24) - v18) <= 0x10)
      {
        sub_298B9BCEC(a3, "symbol stub for: ", 0x11uLL);
        goto LABEL_44;
      }

      *(v18 + 16) = 32;
      *v18 = *"symbol stub for: ";
      v28 = *(a3 + 32) + 17;
    }

    *(a3 + 32) = v28;
LABEL_44:
    if (__s)
    {
      v32 = strlen(__s);
      v33 = *(a3 + 32);
      if (v32 <= *(a3 + 24) - v33)
      {
        if (v32)
        {
          memcpy(v33, __s, v32);
          *(a3 + 32) += v32;
        }
      }

      else
      {
        sub_298B9BCEC(a3, __s, v32);
      }
    }

    goto LABEL_49;
  }

  result = 0;
  v20 = 0x100000002;
  v21 = *a2;
  if (*a2 <= 1445)
  {
    if (v21 != 1399)
    {
      if (v21 != 1445)
      {
        return result;
      }

      v22 = 0x100000005;
LABEL_24:
      v113 = v22;
      (a1[4])(a1[5], a5 + a4, &v113, a5, &__s);
      result = 0;
      v25 = v113;
      if (v113 <= 4)
      {
LABEL_25:
        if (v25 != 2)
        {
          if (v25 == 3)
          {
            v92 = *(a3 + 32);
            if ((*(a3 + 24) - v92) > 0x12)
            {
              *(v92 + 15) = 572537458;
              *v92 = *"literal pool for: ";
              *(a3 + 32) += 19;
            }

            else
            {
              sub_298B9BCEC(a3, "literal pool for: ", 0x13uLL);
            }

            if (__s)
            {
              v104 = strlen(__s);
            }

            else
            {
              v104 = 0;
            }

            sub_298B9B3A0(a3, __s, v104, 0);
            v105 = *(a3 + 32);
            if (*(a3 + 24) != v105)
            {
              result = 0;
              *v105 = 34;
LABEL_191:
              ++*(a3 + 32);
              return result;
            }
          }

          else
          {
            if (v25 != 4)
            {
              return result;
            }

            v26 = *(a3 + 32);
            if (*(a3 + 24) - v26 > 0x14uLL)
            {
              qmemcpy(v26, "Objc cfstring ref: @", 21);
              v27 = (*(a3 + 32) + 21);
              *(a3 + 32) = v27;
            }

            else
            {
              sub_298B9BCEC(a3, "Objc cfstring ref: @", 0x15uLL);
              v27 = *(a3 + 32);
            }

            if (__s)
            {
              v102 = strlen(__s);
              v103 = v102;
              if (v102 <= *(a3 + 24) - v27)
              {
                if (v102)
                {
                  memcpy(v27, __s, v102);
                  v27 = (*(a3 + 32) + v103);
                  *(a3 + 32) = v27;
                }
              }

              else
              {
                sub_298B9BCEC(a3, __s, v102);
                v27 = *(a3 + 32);
              }
            }

            if (*(a3 + 24) != v27)
            {
              result = 0;
              *v27 = 34;
              goto LABEL_191;
            }
          }

          v100 = "";
          v99 = a3;
          v101 = 1;
          goto LABEL_193;
        }

        v89 = *(a3 + 32);
        if (*(a3 + 24) - v89 <= 0x1CuLL)
        {
          sub_298B9BCEC(a3, "literal pool symbol address: ", 0x1DuLL);
          goto LABEL_172;
        }

        qmemcpy(v89, "literal pool symbol address: ", 29);
        v96 = *(a3 + 32) + 29;
LABEL_171:
        *(a3 + 32) = v96;
        goto LABEL_172;
      }

LABEL_33:
      if (v25 > 6)
      {
        if (v25 == 7)
        {
          v91 = *(a3 + 32);
          if ((*(a3 + 24) - v91) <= 0x12)
          {
            sub_298B9BCEC(a3, "Objc selector ref: ", 0x13uLL);
            goto LABEL_172;
          }

          *(v91 + 15) = 540698213;
          *v91 = *"Objc selector ref: ";
          v96 = *(a3 + 32) + 19;
          goto LABEL_171;
        }

        if (v25 != 8)
        {
          return result;
        }

        v31 = *(a3 + 32);
        if (*(a3 + 24) - v31 > 0xFuLL)
        {
          *v31 = *"Objc class ref: ";
          v96 = *(a3 + 32) + 16;
          goto LABEL_171;
        }

        sub_298B9BCEC(a3, "Objc class ref: ", 0x10uLL);
      }

      else
      {
        if (v25 == 5)
        {
          v90 = *(a3 + 32);
          if (*(a3 + 24) - v90 <= 0xDuLL)
          {
            sub_298B9BCEC(a3, "Objc message: ", 0xEuLL);
            goto LABEL_172;
          }

          qmemcpy(v90, "Objc message: ", 14);
          v96 = *(a3 + 32) + 14;
          goto LABEL_171;
        }

        if (v25 != 6)
        {
          return result;
        }

        v30 = *(a3 + 32);
        if ((*(a3 + 24) - v30) > 0x11)
        {
          *(v30 + 16) = 8250;
          *v30 = *"Objc message ref: ";
          v96 = *(a3 + 32) + 18;
          goto LABEL_171;
        }

        sub_298B9BCEC(a3, "Objc message ref: ", 0x12uLL);
      }

LABEL_172:
      if (!__s)
      {
        return 0;
      }

      v97 = strlen(__s);
      v98 = *(a3 + 32);
      if (v97 <= *(a3 + 24) - v98)
      {
        if (v97)
        {
          memcpy(v98, __s, v97);
          result = 0;
          *(a3 + 32) += v97;
          return result;
        }

        return 0;
      }

      v99 = a3;
      v100 = __s;
      v101 = v97;
LABEL_193:
      sub_298B9BCEC(v99, v100, v101);
      return 0;
    }

    v24 = 2432696320;
LABEL_32:
    v113 = v20;
    v29 = *(*(a1[1] + 152) + 104);
    (a1[4])(a1[5], v24 | ((a4 & 0x3FFFFF) << 10) | (32 * *(v29 + 2 * *(*(a2 + 16) + 24))) | *(v29 + 2 * *(*(a2 + 16) + 8)), &v113, a5, &__s);
    result = 0;
    v25 = v113;
    if (v113 <= 4)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (v21 == 4385)
  {
    v20 = 0x100000003;
    v24 = 4181721088;
    goto LABEL_32;
  }

  if (v21 == 4380)
  {
    v22 = 0x100000004;
    goto LABEL_24;
  }

  if (v21 != 1446)
  {
    return result;
  }

  v113 = 0x100000001;
  (a1[4])(a1[5], (8 * a4) & 0xFFFFE0 | ((a4 & 3) << 29) | 0x90000000 | *(*(*(a1[1] + 152) + 104) + 2 * *(*(a2 + 16) + 8)), &v113, a5, &__s);
  v108 = &unk_2A1F1BC68;
  v109 = "0x%llx";
  v110 = (a5 & 0xFFFFFFFFFFFFF000) + (a4 << 12);
  sub_298B9B1F8(a3, &v108);
LABEL_49:
  if (__sz[0])
  {
    if (!__sz[1])
    {
      v45 = v115;
      v46 = a1[1];
      *(v46 + 264) += 24;
      v47 = *(v46 + 184);
      if (v47 && ((v47 + 7) & 0xFFFFFFFFFFFFFFF8) - v47 + 24 <= *(v46 + 192) - v47)
      {
        v38 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v50 = *(v46 + 208) >> 7;
        if (v50 >= 0x1E)
        {
          LOBYTE(v50) = 30;
        }

        v51 = 4096 << v50;
        v38 = operator new(4096 << v50, 8uLL);
        v52 = *(v46 + 208);
        if (v52 >= *(v46 + 212))
        {
          sub_298B90A44(v46 + 200, (v46 + 216), v52 + 1, 8);
          LODWORD(v52) = *(v46 + 208);
        }

        *(*(v46 + 200) + 8 * v52) = v38;
        ++*(v46 + 208);
        *(v46 + 192) = v38 + v51;
      }

      *(v46 + 184) = v38 + 24;
      *v38 = 1;
      *(v38 + 1) = *(v38 + 4) << 24;
      *(v38 + 8) = 0;
      *(v38 + 16) = v45;
      if (*(&v115 + 1))
      {
        goto LABEL_96;
      }

      goto LABEL_56;
    }

    v34 = strlen(__sz[1]);
    v35 = a1[1];
    v111 = 261;
    v108 = __sz[1];
    v109 = v34;
    v36 = sub_298B2D288(v35, &v108);
    if (v117[1] <= 2)
    {
      if (!v117[1])
      {
        v57 = a1[1];
        v37 = 0;
        goto LABEL_95;
      }

      if (v117[1] == 1)
      {
        v37 = 23;
      }

      else
      {
        v37 = 24;
      }
    }

    else if (v117[1] > 4)
    {
      if (v117[1] == 5)
      {
        v37 = 21;
      }

      else
      {
        v37 = 22;
      }
    }

    else if (v117[1] == 3)
    {
      v37 = 25;
    }

    else
    {
      v37 = 26;
    }

    v57 = a1[1];
LABEL_95:
    v38 = sub_298B44B48(v36, v37, v57, 0);
    if (*(&v115 + 1))
    {
      goto LABEL_96;
    }

LABEL_56:
    v39 = 0;
    v40 = v117[0];
    if (!v117[0])
    {
      goto LABEL_57;
    }

    goto LABEL_98;
  }

  v38 = 0;
  if (!*(&v115 + 1))
  {
    goto LABEL_56;
  }

LABEL_96:
  if (v116[0])
  {
    v58 = strlen(v116[0]);
    v59 = a1[1];
    v111 = 261;
    v108 = v116[0];
    v109 = v58;
    v60 = sub_298B2D288(v59, &v108);
    v39 = sub_298B44B48(v60, 0, a1[1], 0);
    v40 = v117[0];
    if (v117[0])
    {
      goto LABEL_98;
    }

LABEL_57:
    v41 = 0;
    if (v39)
    {
      goto LABEL_107;
    }

    goto LABEL_58;
  }

  v70 = v116[1];
  v71 = a1[1];
  *(v71 + 264) += 24;
  v72 = *(v71 + 184);
  if (v72 && ((v72 + 7) & 0xFFFFFFFFFFFFFFF8) - v72 + 24 <= *(v71 + 192) - v72)
  {
    v39 = (v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v83 = *(v71 + 208) >> 7;
    if (v83 >= 0x1E)
    {
      LOBYTE(v83) = 30;
    }

    v84 = 4096 << v83;
    v39 = operator new(4096 << v83, 8uLL);
    v85 = *(v71 + 208);
    if (v85 >= *(v71 + 212))
    {
      sub_298B90A44(v71 + 200, (v71 + 216), v85 + 1, 8);
      LODWORD(v85) = *(v71 + 208);
    }

    *(*(v71 + 200) + 8 * v85) = v39;
    ++*(v71 + 208);
    *(v71 + 192) = v39 + v84;
  }

  *(v71 + 184) = v39 + 24;
  *v39 = 1;
  *(v39 + 1) = *(v39 + 4) << 24;
  *(v39 + 8) = 0;
  *(v39 + 16) = v70;
  v40 = v117[0];
  if (!v117[0])
  {
    goto LABEL_57;
  }

LABEL_98:
  v61 = a1[1];
  *(v61 + 264) += 24;
  v62 = *(v61 + 184);
  if (v62 && ((v62 + 7) & 0xFFFFFFFFFFFFFFF8) - v62 + 24 <= *(v61 + 192) - v62)
  {
    v41 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v63 = *(v61 + 208) >> 7;
    if (v63 >= 0x1E)
    {
      LOBYTE(v63) = 30;
    }

    v64 = 4096 << v63;
    v41 = operator new(4096 << v63, 8uLL);
    v65 = *(v61 + 208);
    if (v65 >= *(v61 + 212))
    {
      sub_298B90A44(v61 + 200, (v61 + 216), v65 + 1, 8);
      LODWORD(v65) = *(v61 + 208);
    }

    *(*(v61 + 200) + 8 * v65) = v41;
    ++*(v61 + 208);
    *(v61 + 192) = v41 + v64;
  }

  *(v61 + 184) = v41 + 24;
  *v41 = 1;
  *(v41 + 1) = *(v41 + 4) << 24;
  *(v41 + 8) = 0;
  *(v41 + 16) = v40;
  if (v39)
  {
LABEL_107:
    v66 = a1[1];
    v67 = *(v66 + 264);
    if (v38)
    {
      *(v66 + 264) = v67 + 32;
      v68 = *(v66 + 184);
      if (v68 && ((v68 + 7) & 0xFFFFFFFFFFFFFFF8) - v68 + 32 <= *(v66 + 192) - v68)
      {
        v69 = (v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v74 = *(v66 + 208) >> 7;
        if (v74 >= 0x1E)
        {
          LOBYTE(v74) = 30;
        }

        v75 = 4096 << v74;
        v69 = operator new(4096 << v74, 8uLL);
        v76 = *(v66 + 208);
        if (v76 >= *(v66 + 212))
        {
          sub_298B90A44(v66 + 200, (v66 + 216), v76 + 1, 8);
          LODWORD(v76) = *(v66 + 208);
        }

        *(*(v66 + 200) + 8 * v76) = v69;
        ++*(v66 + 208);
        *(v66 + 192) = v69 + v75;
      }

      *(v66 + 184) = v69 + 32;
      *v69 = 0;
      *(v69 + 1) = (*(v69 + 4) << 24) | 0x12;
      *(v69 + 8) = 0;
      *(v69 + 16) = v38;
      *(v69 + 24) = v39;
      if (v41)
      {
LABEL_123:
        v77 = a1[1];
        *(v77 + 264) += 32;
        v78 = *(v77 + 184);
        if (v78 && ((v78 + 7) & 0xFFFFFFFFFFFFFFF8) - v78 + 32 <= *(v77 + 192) - v78)
        {
          v44 = (v78 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          v79 = *(v77 + 208) >> 7;
          if (v79 >= 0x1E)
          {
            LOBYTE(v79) = 30;
          }

          v80 = 4096 << v79;
          v44 = operator new(4096 << v79, 8uLL);
          v81 = *(v77 + 208);
          if (v81 >= *(v77 + 212))
          {
            v106 = v44;
            sub_298B90A44(v77 + 200, (v77 + 216), v81 + 1, 8);
            v44 = v106;
            LODWORD(v81) = *(v77 + 208);
          }

          *(*(v77 + 200) + 8 * v81) = v44;
          ++*(v77 + 208);
          *(v77 + 192) = v44 + v80;
        }

        *(v77 + 184) = v44 + 32;
        *v44 = 0;
        *(v44 + 1) = *(v44 + 4) << 24;
        *(v44 + 8) = 0;
        *(v44 + 16) = v69;
LABEL_132:
        *(v44 + 24) = v41;
        v41 = v44;
LABEL_133:
        v53 = *(a2 + 24);
        if (*(a2 + 28) > v53)
        {
          goto LABEL_134;
        }

LABEL_150:
        sub_298B90A44(a2 + 16, (a2 + 32), v53 + 1, 16);
        LODWORD(v53) = *(a2 + 24);
        goto LABEL_134;
      }
    }

    else
    {
      *(v66 + 264) = v67 + 24;
      v73 = *(v66 + 184);
      if (v73 && ((v73 + 7) & 0xFFFFFFFFFFFFFFF8) - v73 + 24 <= *(v66 + 192) - v73)
      {
        v69 = (v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v86 = *(v66 + 208) >> 7;
        if (v86 >= 0x1E)
        {
          LOBYTE(v86) = 30;
        }

        v87 = 4096 << v86;
        v69 = operator new(4096 << v86, 8uLL);
        v88 = *(v66 + 208);
        if (v88 >= *(v66 + 212))
        {
          sub_298B90A44(v66 + 200, (v66 + 216), v88 + 1, 8);
          LODWORD(v88) = *(v66 + 208);
        }

        *(*(v66 + 200) + 8 * v88) = v69;
        ++*(v66 + 208);
        *(v66 + 192) = v69 + v87;
      }

      *(v66 + 184) = v69 + 24;
      *v69 = 3;
      *(v69 + 1) = (*(v69 + 4) << 24) | 1;
      *(v69 + 8) = 0;
      *(v69 + 16) = v39;
      if (v41)
      {
        goto LABEL_123;
      }
    }

    v41 = v69;
    v53 = *(a2 + 24);
    if (*(a2 + 28) > v53)
    {
      goto LABEL_134;
    }

    goto LABEL_150;
  }

LABEL_58:
  if (!v38)
  {
    if (!v41)
    {
      v48 = a1[1];
      *(v48 + 264) += 24;
      v49 = *(v48 + 184);
      if (v49 && ((v49 + 7) & 0xFFFFFFFFFFFFFFF8) - v49 + 24 <= *(v48 + 192) - v49)
      {
        v41 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v93 = *(v48 + 208) >> 7;
        if (v93 >= 0x1E)
        {
          LOBYTE(v93) = 30;
        }

        v94 = 4096 << v93;
        v41 = operator new(4096 << v93, 8uLL);
        v95 = *(v48 + 208);
        if (v95 >= *(v48 + 212))
        {
          sub_298B90A44(v48 + 200, (v48 + 216), v95 + 1, 8);
          LODWORD(v95) = *(v48 + 208);
        }

        *(*(v48 + 200) + 8 * v95) = v41;
        ++*(v48 + 208);
        *(v48 + 192) = v41 + v94;
      }

      *(v48 + 184) = v41 + 24;
      *v41 = 1;
      *(v41 + 1) = *(v41 + 4) << 24;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      v53 = *(a2 + 24);
      if (*(a2 + 28) > v53)
      {
        goto LABEL_134;
      }

      goto LABEL_150;
    }

    goto LABEL_133;
  }

  if (v41)
  {
    v42 = a1[1];
    *(v42 + 264) += 32;
    v43 = *(v42 + 184);
    if (v43 && ((v43 + 7) & 0xFFFFFFFFFFFFFFF8) - v43 + 32 <= *(v42 + 192) - v43)
    {
      v44 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v54 = *(v42 + 208) >> 7;
      if (v54 >= 0x1E)
      {
        LOBYTE(v54) = 30;
      }

      v55 = 4096 << v54;
      v44 = operator new(4096 << v54, 8uLL);
      v56 = *(v42 + 208);
      if (v56 >= *(v42 + 212))
      {
        v107 = v44;
        sub_298B90A44(v42 + 200, (v42 + 216), v56 + 1, 8);
        v44 = v107;
        LODWORD(v56) = *(v42 + 208);
      }

      *(*(v42 + 200) + 8 * v56) = v44;
      ++*(v42 + 208);
      *(v42 + 192) = v44 + v55;
    }

    *(v42 + 184) = v44 + 32;
    *v44 = 0;
    *(v44 + 1) = *(v44 + 4) << 24;
    *(v44 + 8) = 0;
    *(v44 + 16) = v38;
    goto LABEL_132;
  }

  v41 = v38;
  v53 = *(a2 + 24);
  if (*(a2 + 28) <= v53)
  {
    goto LABEL_150;
  }

LABEL_134:
  v82 = (*(a2 + 16) + 16 * v53);
  *v82 = 5;
  v82[1] = v41;
  ++*(a2 + 24);
  return 1;
}

void *sub_298B1ED58(void *result)
{
  *result = &unk_2A1F21E90;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_298B1EDD0(void *a1)
{
  *a1 = &unk_2A1F21E90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x29C2945F0);
}

const void **sub_298B1EEB8@<X0>(const void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = result[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      result = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_298B1EF68(uint64_t a1@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v40 = 0;
  v38 = &v41;
  v2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

  if (!v3)
  {
    std::generic_category();
    v25[0] = "FileSystem.cpp";
    v26 = ":";
    v27 = 771;
    v24 = 2;
    strcpy(__p, "34");
    v28[0] = v25;
    v29 = __p;
    v30 = 1026;
    v31[0] = v28;
    v32 = ": ";
    v33 = 770;
    v34[0] = v31;
    v35 = "URLForDirectory failed";
    v37 = 770;
    sub_298B996A4(v34, v19);
    operator new();
  }

  v4 = [v3 path];
  v5 = v4;
  v6 = [v4 UTF8String];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v8 = strlen(v6);
  v9 = v8;
  v39 = 0;
  if (v40 >= v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_298B90C08(&v38, &v41, v8, 1);
    v10 = v39;
  }

  memcpy(&v38[v10], v7, v9);
  v12 = v39;
  v11 = v9;
LABEL_9:
  v39 = v12 + v11;

  *&v41 = "com.apple.hwtrace";
  v43 = 259;
  v37 = 257;
  v33 = 257;
  v30 = 257;
  sub_298BA8944(&v38, 0, &v41, v34, v31, v28);
  if (v38)
  {
    v13 = v39;
    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v39 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v42) = v39;
    if (v39)
    {
      memmove(&v41, v38, v39);
    }

    *(&v41 + v13) = 0;
  }

  else
  {
    v41 = 0uLL;
    v42 = 0;
  }

  v46 = 0;
  v44 = v41;
  v45 = v42;

  if (v38 != &v41)
  {
    free(v38);
  }

  v14 = v44;
  if ((v46 & 1) == 0 || (*&v44 = 0, !v14))
  {
    if (v45 >= 0)
    {
      v15 = &v44;
    }

    else
    {
      v15 = v14;
    }

    v43 = 261;
    if (v45 >= 0)
    {
      v16 = SHIBYTE(v45);
    }

    else
    {
      v16 = *(&v44 + 1);
    }

    *&v41 = v15;
    *(&v41 + 1) = v16;
    v21 = sub_298BAA7F0(&v41, 1, 504);
    v22 = v17;
    if (v21)
    {
      v19[0] = "FileSystem.cpp";
      v19[2] = ":";
      v20 = 771;
      v24 = 2;
      strcpy(__p, "55");
      v25[0] = v19;
      v26 = __p;
      v27 = 1026;
      v28[0] = v25;
      v29 = ": ";
      v30 = 770;
      v31[0] = v28;
      v32 = "Couldn't create ";
      v33 = 770;
      v34[0] = v31;
      v35 = v15;
      v36 = v16;
      v37 = 1282;
      sub_298B996A4(v34, &v38);
      operator new();
    }

    v39 = 0;
    v40 = 0;
    v38 = &v41;
    v43 = 261;
    *&v41 = v15;
    *(&v41 + 1) = v16;
    v34[0] = "cache-lock";
    v37 = 259;
    v33 = 257;
    v30 = 257;
    sub_298BA8944(&v38, 0, &v41, v34, v31, v28);
    operator new();
  }

  *(a1 + 40) |= 1u;
  *a1 = v14;
  v18 = *MEMORY[0x29EDCA608];
}

void sub_298B1F874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  (*(*v22 + 8))(v22);
  if (v23 != -1)
  {
    *(v25 - 156) = 2;
    *(v25 - 176) = 0;
    *(v25 - 168) = 0;
    if (fcntl(v23, 8) == -1)
    {
      __error();
    }
  }

  v27 = *(v25 - 200);
  if (v27 != v24)
  {
    free(v27);
  }

  if (*(v25 - 104))
  {
    v28 = *(v25 - 128);
    *(v25 - 128) = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v25 - 105) < 0)
  {
    operator delete(*(v25 - 128));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_298B1FA0C(void *a1@<X0>, const unsigned __int8 **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v22 = 0;
  v23 = 0;
  v21 = &v24;
  sub_298B1FB90(a2, v19);
  v18 = 260;
  v17[0] = a1;
  v13[0] = v19;
  v13[2] = "-";
  v14 = 772;
  if (a3 == 2)
  {
    v7 = "image-override";
    v8 = 14;
  }

  else if (a3 == 1)
  {
    v7 = "shared-cache";
    v8 = 12;
  }

  else
  {
    v7 = "boot-kernel-collection.kc";
    v8 = 25;
  }

  v15[0] = v13;
  v15[2] = v7;
  v15[3] = v8;
  v16 = 1282;
  v12 = 257;
  v10 = 257;
  sub_298BA8944(&v21, 0, v17, v15, &v11, &v9);
  v17[0] = v21;
  v17[1] = v22;
  sub_298B1EEB8(v17, a4);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v21 != &v24)
  {
    free(v21);
  }
}

void sub_298B1FB3C(_Unwind_Exception *exception_object)
{
  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
    v4 = *(v2 - 72);
    if (v4 == v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *(v2 - 72);
    if (v4 == v1)
    {
      goto LABEL_3;
    }
  }

  free(v4);
  _Unwind_Resume(exception_object);
}

const unsigned __int8 **sub_298B1FB90@<X0>(const unsigned __int8 **result@<X0>, void *a2@<X8>)
{
  v8[2] = *MEMORY[0x29EDCA608];
  memset(v7, 0, sizeof(v7));
  if (*result)
  {
    v4 = v7;
    v5 = *result;
LABEL_6:
    uuid_unparse_upper(v5, v7);
    result = strlen(v7);
    v3 = result;
    goto LABEL_7;
  }

  v3 = result[2];
  if (!v3)
  {
    v8[0] = 0;
    v8[1] = 0;
    v4 = v7;
    v5 = v8;
    goto LABEL_6;
  }

  v4 = result[1];
  if (!v4)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_11;
  }

LABEL_7:
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
LABEL_11:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B1FCBC(const void *a1@<X0>, const void *a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v60 = *MEMORY[0x29EDCA608];
  v55[0] = a1;
  v55[1] = a2;
  if (atomic_load_explicit(&qword_2A13C2B90, memory_order_acquire) != -1)
  {
    *v56 = v51;
    v52.__r_.__value_.__r.__words[0] = v56;
    std::__call_once(&qword_2A13C2B90, &v52, sub_298B222A4);
  }

  if ((atomic_load_explicit(&qword_2A13C2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BA0))
  {
    sub_298B221EC(&xmmword_2A13C2BA8, "");
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A13C2BA8, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BA0);
  }

  if (atomic_load_explicit(&qword_2A13C2B98, memory_order_acquire) != -1)
  {
    *v56 = v51;
    v52.__r_.__value_.__r.__words[0] = v56;
    std::__call_once(&qword_2A13C2B98, &v52, sub_298B222E8);
  }

  sub_298B221EC(&v54, "");
  v8 = *(&xmmword_2A13C2BA8 + 1);
  if (byte_2A13C2BBF >= 0)
  {
    v8 = byte_2A13C2BBF;
  }

  if (v8)
  {
    LOWORD(v58) = 260;
    *v56 = &xmmword_2A13C2BA8;
    if (!sub_298BA9D1C(v56, 0))
    {
      v35 = std::generic_category();
      v47[0] = "FileSystem.cpp";
      v48 = 259;
      v45[0] = ":";
      v46 = 259;
      sub_298ADC860(v47, v45, v49);
      sub_298AFB090(0xA1uLL, 0, __p);
      v44 = 260;
      v43[0] = __p;
      sub_298ADC860(v49, v43, v50);
      v40[0] = ": ";
      v41 = 259;
      sub_298ADC860(v50, v40, v51);
      v38[0] = "Alternative tmp directory is not absolute: ";
      v39 = 259;
      sub_298ADC860(v51, v38, &v52);
      v37 = 260;
      v36[0] = &xmmword_2A13C2BA8;
      sub_298ADC860(&v52, v36, v56);
      sub_298ADDCA4(45, v35, v56);
    }

    std::string::operator=(&v54, &xmmword_2A13C2BA8);
    size = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v54.__r_.__value_.__l.__size_;
      if (v54.__r_.__value_.__l.__size_)
      {
        v23 = v54.__r_.__value_.__r.__words[0];
LABEL_37:
        if (v23->__r_.__value_.__s.__data_[size - 1] != 47)
        {
          std::string::append(&v54, "/");
        }
      }
    }

    else if (*(&v54.__r_.__value_.__s + 23))
    {
      v23 = &v54;
      goto LABEL_37;
    }

    LOWORD(v58) = 260;
    *v56 = &xmmword_2A13C2BA8;
    v25 = sub_298BAA7F0(v56, 1, 504);
    if (v25)
    {
      v26 = v24;
      v47[0] = "FileSystem.cpp";
      v48 = 259;
      v45[0] = ":";
      v46 = 259;
      sub_298ADC860(v47, v45, v49);
      sub_298AFB090(0x9EuLL, 0, __p);
      v44 = 260;
      v43[0] = __p;
      sub_298ADC860(v49, v43, v50);
      v40[0] = ": ";
      v41 = 259;
      sub_298ADC860(v50, v40, v51);
      v38[0] = "Couldn't create alternative tmp directory: ";
      v39 = 259;
      sub_298ADC860(v51, v38, &v52);
      v37 = 260;
      v36[0] = &xmmword_2A13C2BA8;
      sub_298ADC860(&v52, v36, v56);
      sub_298ADDCA4(v25, v26, v56);
    }
  }

  v9 = objc_autoreleasePoolPush();
  v10 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v54.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    v11 = NSTemporaryDirectory();
    v12 = v11;
    v13 = [v11 UTF8String];
    v14 = v13;
    if (!v13 || ((LOWORD(v58) = 257, !*v13) ? (v15 = 1) : (*v56 = v13, v15 = 3), LOBYTE(v58) = v15, !sub_298BA9D1C(v56, 0)))
    {
      v31 = std::generic_category();
      v47[0] = "FileSystem.cpp";
      v48 = 259;
      v45[0] = ":";
      v46 = 259;
      sub_298ADC860(v47, v45, v49);
      sub_298AFB090(0xAFuLL, 0, __p);
      v44 = 260;
      v43[0] = __p;
      sub_298ADC860(v49, v43, v50);
      v40[0] = ": ";
      v41 = 259;
      sub_298ADC860(v50, v40, v51);
      v38[0] = "NSTemporaryDirectory returned unusable result: ";
      v39 = 259;
      sub_298ADC860(v51, v38, &v52);
      v37 = 257;
      if (*v14)
      {
        v36[0] = v14;
        v32 = 3;
      }

      else
      {
        v32 = 1;
      }

      LOBYTE(v37) = v32;
      sub_298ADC860(&v52, v36, v56);
      sub_298ADDCA4(45, v31, v56);
    }

    MEMORY[0x29C294300](&v54, v14);
  }

  objc_autoreleasePoolPop(v9);
  sub_298B1EEB8(v55, &v52);
  v16 = std::string::append(&v52, "-hwtrace-%%%%%%%%.bin");
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v56[16] = *(&v16->__r_.__value_.__l + 2);
  *v56 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v56[23] >= 0)
  {
    v18 = v56;
  }

  else
  {
    v18 = *v56;
  }

  if (v56[23] >= 0)
  {
    v19 = v56[23];
  }

  else
  {
    v19 = *&v56[8];
  }

  std::string::append(&v54, v18, v19);
  if ((v56[23] & 0x80000000) != 0)
  {
    operator delete(*v56);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v53 = 260;
  v52.__r_.__value_.__r.__words[0] = &v54;
  sub_298BAC1B4(&v52, 0x1B6u, 4, v56);
  if ((v59 & 1) != 0 && (v20 = *v56, *v56 = 0, v20))
  {
    *(a5 + 40) |= 1u;
    *a5 = v20;
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      if (v57 >= 0)
      {
        v27 = &v56[8];
      }

      else
      {
        v27 = *&v56[8];
      }

      if (v57 >= 0)
      {
        v28 = SHIBYTE(v57);
      }

      else
      {
        v28 = *&v56[16];
      }

      sub_298BB01B0(v27, v28);
    }

    v29 = v58;
    if (a3 && fcntl(v58, 48, 1) == -1)
    {
      v34 = std::generic_category();
      v47[0] = "FileSystem.cpp";
      v48 = 259;
      v45[0] = ":";
      v46 = 259;
      sub_298ADC860(v47, v45, v49);
      sub_298AFB090(0xCFuLL, 0, v36);
      v44 = 260;
      v43[0] = v36;
      sub_298ADC860(v49, v43, v50);
      v40[0] = ": ";
      v41 = 259;
      sub_298ADC860(v50, v40, v51);
      v38[0] = "F_NOCACHE failed";
      v39 = 259;
      sub_298ADC860(v51, v38, &v52);
      sub_298ADDCA4(45, v34, &v52);
    }

    if (fcntl(v29, 81, 1) == -1)
    {
      v30 = std::generic_category();
      v47[0] = "FileSystem.cpp";
      v48 = 259;
      v45[0] = ":";
      v46 = 259;
      sub_298ADC860(v47, v45, v49);
      sub_298AFB090(0xD5uLL, 0, v36);
      v44 = 260;
      v43[0] = v36;
      sub_298ADC860(v49, v43, v50);
      v40[0] = ": ";
      v41 = 259;
      sub_298ADC860(v50, v40, v51);
      v38[0] = "F_SET_GREEDY_MODE failed";
      v39 = 259;
      sub_298ADC860(v51, v38, &v52);
      sub_298ADDCA4(45, v30, &v52);
    }

    if (fcntl(v29, 68, 1) == -1)
    {
      v33 = std::generic_category();
      v47[0] = "FileSystem.cpp";
      v48 = 259;
      v45[0] = ":";
      v46 = 259;
      sub_298ADC860(v47, v45, v49);
      sub_298AFB090(0xDAuLL, 0, v36);
      v44 = 260;
      v43[0] = v36;
      sub_298ADC860(v49, v43, v50);
      v40[0] = ": ";
      v41 = 259;
      sub_298ADC860(v50, v40, v51);
      v38[0] = "F_SETSTATICCONTENT failed";
      v39 = 259;
      sub_298ADC860(v51, v38, &v52);
      sub_298ADDCA4(45, v33, &v52);
    }

    *(a5 + 40) &= ~1u;
    *a5 = 0;
    *(a5 + 8) = *&v56[8];
    *(a5 + 24) = v57;
    HIBYTE(v57) = 0;
    v56[8] = 0;
    *(a5 + 32) = v58;
    v56[0] = 1;
    v58 = -1;
  }

  sub_298B20860(v56);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x29EDCA608];
}

uint64_t *sub_298B20860(uint64_t *result)
{
  if (result[5])
  {
    v1 = *result;
    *result = 0;
    if (v1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      return v2;
    }
  }

  else if (*(result + 31) < 0)
  {
    v3 = result;
    operator delete(result[1]);
    return v3;
  }

  return result;
}

void *sub_298B208F4@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (a2)
  {
    v3 = result;
    std::system_category();
    *uu2 = *v3;
    v6 = v3[1];
    operator new();
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B212E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a34)
  {
    (*(*a34 + 8))(a34);
    v39 = v37[1];
    v37[1] = 0;
    if (!v39)
    {
LABEL_3:
      v40 = *v37;
      *v37 = 0;
      if (v40)
      {
LABEL_4:
        (*(*v40 + 16))(v40);
      }

LABEL_5:
      MEMORY[0x29C2945F0](v37, 0x1070C401CED0764);
      if (!atomic_fetch_add(v35, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

      v42 = *(a10 + 16);
      if (v42)
      {
        do
        {
          v44 = *v42;
          if (*(v42 + 55) < 0)
          {
            operator delete(v42[4]);
          }

          operator delete(v42);
          v42 = v44;
        }

        while (v44);
      }

      v43 = *a10;
      *a10 = 0;
      if (v43)
      {
        operator delete(v43);
      }

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v39 = v37[1];
    v37[1] = 0;
    if (!v39)
    {
      goto LABEL_3;
    }
  }

  v41 = *(v39 + 40);
  *(v39 + 40) = 0;
  if (v41)
  {
    MEMORY[0x29C2945C0](v41, 0x1000C8077774924);
  }

  MEMORY[0x29C2945F0](v39, 0x1070C4001F9CED1);
  v40 = *v37;
  *v37 = 0;
  if (v40)
  {
    goto LABEL_4;
  }

  goto LABEL_5;
}

uint64_t sub_298B21594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_298AFF468(a1, &v10);
  v5 = v10;
  if (!v10)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 31);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v8 = *(a1 + 48);
    *(a1 + 48) = 0;
    v9 = v8;
    sub_298C39D18(&v9);
  }

  *(a2 + 8) |= 1u;
  *a2 = v5;
  return result;
}

uint64_t sub_298B2165C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    return a1;
  }

  if (!v3)
  {
    return a1;
  }

  v5 = v3[1];
  v3[1] = 0;
  if (v5)
  {
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
    if (v6)
    {
      MEMORY[0x29C2945C0](v6, 0x1000C8077774924);
    }

    MEMORY[0x29C2945F0](v5, 0x1070C4001F9CED1);
  }

  v7 = *v3;
  *v3 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  MEMORY[0x29C2945F0](v3, 0x1070C401CED0764);
  return a1;
}

uint64_t sub_298B21768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!getenv("IGNORE_HWTRACE_EXPERIMENTAL_DEFAULTS"))
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.hwtrace.experimental"];
    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a3];
    v8 = [v6 objectForKey:v7];
    if (v8)
    {
      a2 = [v6 BOOLForKey:v7];
    }

    else
    {
      a2 = a1;
    }
  }

  return a2;
}

void sub_298B2184C(void *a1@<X8>)
{
  LODWORD(v4) = 3430988;
  v5 = 3;
  LODWORD(__p) = 3430988;
  v3 = 3;
  sub_298B21920(&v4, &__p, "compressed-decoding-alg", a1);
  if (v3 < 0)
  {
    operator delete(__p);
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    return;
  }

  v1 = v4;

  operator delete(v1);
}

void sub_298B218E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_298B21920(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (getenv("IGNORE_HWTRACE_EXPERIMENTAL_DEFAULTS"))
  {
    *a4 = *a2;
    a4[2] = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.hwtrace.experimental"];
    v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a3];
    v9 = [v14 objectForKey:v8];
    if (v9)
    {
      v10 = [v14 stringForKey:v8];
      v11 = [v10 UTF8String];
      v12 = strlen(v11);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_298ADDDA0();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      *(a4 + 23) = v12;
      if (v12)
      {
        memmove(a4, v11, v12);
      }

      *(a4 + v13) = 0;
    }

    else
    {
      *a4 = *a1;
      a4[2] = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
    }
  }
}

void sub_298B21B70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F1BC88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B21BC4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 16);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

uint64_t sub_298B21C98(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 16) = *(a2 + 16);
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *v11 = 0;
      v11[1] = 0;
      *(v12 + 16) = *(v11 + 16);
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_298B21E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  operator new();
}

void sub_298B22098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19 != v20)
  {
    free(a19);
  }

  v22 = *(v19 + 8);
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_298B22124(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F1BCC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2945F0);
}

double sub_298B22178(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    closedir(v2);
  }

  *(a1 + 24) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 9;
  *(a1 + 60) = 1;
  result = 0.0;
  *(a1 + 61) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0xFFFF;
  return result;
}

_BYTE *sub_298B221EC(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_298B222A8()
{
  result = getrlimit(8, &v1);
  if (!result)
  {
    v1.rlim_cur = v1.rlim_max;
    return setrlimit(8, &v1);
  }

  return result;
}

void sub_298B222E8()
{
  v4 = 0;
  LOBYTE(v3) = 0;
  v2 = 0;
  LOBYTE(__p) = 0;
  sub_298B21920(&v3, &__p, "alt-tmp-dir", &v5);
  if (byte_2A13C2BBF < 0)
  {
    operator delete(xmmword_2A13C2BA8);
  }

  xmmword_2A13C2BA8 = v5;
  unk_2A13C2BB8 = v6;
  if (v2 < 0)
  {
    operator delete(__p);
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    return;
  }

  v0 = v3;

  operator delete(v0);
}

void sub_298B223A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

const unsigned __int8 *sub_298B223E4(void *a1, unsigned __int8 *uu2)
{
  v2 = *(uu2 + 1) ^ *uu2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_6;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v3 - 1) & v2;
  }

  else
  {
    v6 = *(uu2 + 1) ^ *uu2;
    if (v2 >= *&v3)
    {
      v6 = v2 % *&v3;
    }
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v9 = *v7) == 0)
  {
LABEL_6:
    operator new();
  }

  if (v5.u32[0] >= 2uLL)
  {
    while (1)
    {
      v10 = *(v9 + 1);
      if (v10 == v2)
      {
        if (!uuid_compare(v9 + 16, uu2))
        {
          return v9;
        }
      }

      else
      {
        if (v10 >= *&v3)
        {
          v10 %= *&v3;
        }

        if (v10 != v6)
        {
          goto LABEL_6;
        }
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
    v11 = *(v9 + 1);
    if (v11 == v2)
    {
      break;
    }

    if ((v11 & (*&v3 - 1)) != v6)
    {
      goto LABEL_6;
    }

LABEL_20:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  if (uuid_compare(v9 + 16, uu2))
  {
    goto LABEL_20;
  }

  return v9;
}

void sub_298B22724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_298B22738(va);
  _Unwind_Resume(a1);
}

void *sub_298B22738(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

id sub_298B227A0(id a1)
{
  v1 = a1;
  if (atomic_load_explicit(&qword_2A13C2BC0, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&qword_2A13C2BC0, &v4, sub_298B2285C);
  }

  if (v1 <= 2)
  {
    a1 = *off_29EEB4A60[v1];
  }

  return a1;
}

uint64_t sub_298B22840(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 16;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_298B22860()
{
  v0 = os_log_create("com.apple.libhwtrace", "default");
  v1 = qword_2A13C2BC8;
  qword_2A13C2BC8 = v0;

  v2 = os_log_create("com.apple.libhwtrace", "recording");
  v3 = qword_2A13C2BD0;
  qword_2A13C2BD0 = v2;

  qword_2A13C2BD8 = os_log_create("com.apple.libhwtrace", "trace");

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_298B228EC(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    (*(*a2 + 224))(a2, 0);
    v4 = v3[2];
    if (v4)
    {
      v5 = 32 * v4;
      v6 = (*v3 + 16);
      do
      {
        (*(*a2 + 640))(a2, (63 - __clz(*v6)), 0, 1, 0);
        (*(*a2 + 192))(a2, *(v6 - 2), 0);
        (*(*a2 + 512))(a2, *(v6 - 1), *v6, *(v6 + 1));
        v6 += 8;
        v5 -= 32;
      }

      while (v5);
    }

    result = (*(*a2 + 224))(a2, 4);
    v3[2] = 0;
  }

  return result;
}

void *sub_298B22A70(_DWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a1[2];
  v5 = a1[4];
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B22C08(a1, 2 * v5);
    v10 = *a3;
    v11 = v8[4] - 1;
    v12 = ((*a3 >> 4) ^ (*a3 >> 9)) & v11;
    a4 = (*v8 + 16 * v12);
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -8192;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = (*v8 + 16 * v12);
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - a1[3] > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B22C08(a1, v5);
    v10 = *a3;
    v19 = v8[4] - 1;
    v20 = ((*a3 >> 4) ^ (*a3 >> 9)) & v19;
    a4 = (*v8 + 16 * v20);
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++v8[2];
      if (v10 == -4096)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -4096)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -8192;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = (*v8 + 16 * v20);
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++a1[2];
  if (v6 != -4096)
  {
LABEL_4:
    --a1[3];
  }

  return a4;
}

void *sub_298B22C08(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298B22D18(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (v10 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v14 = result;
LABEL_13:
      v17 = &result[2 * v10];
      do
      {
        *v14 = -4096;
        v14 += 2;
      }

      while (v14 != v17);
      return result;
    }

    v12 = v11 + 1;
    v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v14 = &result[2 * v13];
    v15 = result + 2;
    v16 = v13;
    do
    {
      *(v15 - 2) = -4096;
      *v15 = -4096;
      v15 += 4;
      v16 -= 2;
    }

    while (v16);
    if (v12 != v13)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_298B22D18(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v8 = *result;
LABEL_6:
      v11 = &v4[2 * v3];
      do
      {
        *v8 = -4096;
        v8 += 2;
      }

      while (v8 != v11);
      goto LABEL_8;
    }

    v6 = v5 + 1;
    v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v8 = &v4[2 * v7];
    v9 = v4 + 2;
    v10 = v7;
    do
    {
      *(v9 - 2) = -4096;
      *v9 = -4096;
      v9 += 4;
      v10 -= 2;
    }

    while (v10);
    if (v6 != v7)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v13 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = *(result + 16) - 1;
      v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
      v12 = *result + 16 * v15;
      v16 = *v12;
      if (v13 != *v12)
      {
        v17 = 0;
        v18 = 1;
        while (v16 != -4096)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 == -8192;
          }

          if (v19)
          {
            v17 = v12;
          }

          v20 = v15 + v18++;
          v15 = v20 & v14;
          v12 = *result + 16 * (v20 & v14);
          v16 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_13;
          }
        }

        if (v17)
        {
          v12 = v17;
        }
      }

LABEL_13:
      *v12 = v13;
      *(v12 + 8) = *(a2 + 2);
      ++*(result + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t sub_298B22E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return (*(*a1 + 152))(a1, a2, a4, a5, a6);
  }

  else
  {
    return 1;
  }
}

__n128 sub_298B22EF0(uint64_t a1)
{
  *a1 = &unk_2A1F1BCF8;
  *(a1 + 8) = 0x400000004;
  *(a1 + 16) = 1;
  *(a1 + 17) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0x100000004;
  *(a1 + 32) = 256;
  *(a1 + 34) = 0;
  *(a1 + 64) = 256;
  *(a1 + 66) = 1;
  *(a1 + 80) = 0;
  *(a1 + 82) = 0;
  *(a1 + 184) = 0;
  *(a1 + 185) = 16777217;
  *(a1 + 200) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 335) = 0;
  *(a1 + 339) = 1;
  *(a1 + 340) = 0;
  *(a1 + 352) = 0;
  *(a1 + 353) = 257;
  *(a1 + 356) = 0;
  *(a1 + 360) = 16842753;
  *(a1 + 364) = 1;
  *(a1 + 365) = 0;
  *(a1 + 384) = 0;
  *(a1 + 391) = 0;
  *(a1 + 396) = xmmword_298D1A080;
  *(a1 + 412) = 29;
  *(a1 + 416) = 0;
  *(a1 + 420) = 0;
  *(a1 + 424) = 0;
  *(a1 + 428) = 0;
  *(a1 + 432) = 0x100000101010001;
  *(a1 + 440) = 1;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0x1A00000002;
  *(a1 + 483) = 1;
  *(a1 + 40) = ";";
  *(a1 + 48) = "#";
  *(a1 + 56) = 1;
  *(a1 + 72) = ":";
  *(a1 + 88) = "L";
  *(a1 + 96) = 1;
  result = *(a1 + 88);
  *(a1 + 120) = "";
  *(a1 + 128) = 0;
  *(a1 + 136) = "APP";
  *(a1 + 144) = "NO_APP";
  *(a1 + 104) = result;
  *(a1 + 152) = ".code16";
  *(a1 + 160) = ".code32";
  *(a1 + 168) = ".code64";
  *(a1 + 176) = 0;
  *(a1 + 192) = "\t.zero\t";
  *(a1 + 208) = "\t.ascii\t";
  *(a1 + 216) = "\t.asciz\t";
  *(a1 + 248) = "\t.byte\t";
  *(a1 + 256) = "\t.short\t";
  *(a1 + 264) = "\t.long\t";
  *(a1 + 272) = "\t.quad\t";
  *(a1 + 344) = "\t.globl\t";
  *(a1 + 376) = "\t.weak\t";
  *(a1 + 480) = 1;
  *(a1 + 482) = 1;
  *(a1 + 189) = 0;
  return result;
}

void *sub_298B230F8(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (v2)
  {
    v3 = a1[57];
    v4 = a1[56];
    if (v3 == v2)
    {
LABEL_11:
      a1[57] = v2;
      operator delete(v4);
      return a1;
    }

    while (*(v3 - 1) < 0)
    {
      operator delete(*(v3 - 24));
      v5 = *(v3 - 48);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 88;
      if (v3 == v2)
      {
        v4 = a1[56];
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 48);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 40) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void *sub_298B231A4(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (v2)
  {
    v3 = a1[57];
    v4 = a1[56];
    if (v3 == v2)
    {
LABEL_11:
      a1[57] = v2;
      operator delete(v4);
      return a1;
    }

    while (*(v3 - 1) < 0)
    {
      operator delete(*(v3 - 24));
      v5 = *(v3 - 48);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 88;
      if (v3 == v2)
      {
        v4 = a1[56];
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 48);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 40) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void sub_298B23250(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = a1[57];
  v4 = a1[56];
  if (v3 == v2)
  {
LABEL_11:
    a1[57] = v2;
    operator delete(v4);
LABEL_12:

    JUMPOUT(0x29C2945F0);
  }

  while (*(v3 - 1) < 0)
  {
    operator delete(*(v3 - 24));
    v5 = *(v3 - 48);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_4:
    v3 -= 88;
    if (v3 == v2)
    {
      v4 = a1[56];
      goto LABEL_11;
    }
  }

  v5 = *(v3 - 48);
  if (!v5)
  {
    goto LABEL_4;
  }

LABEL_9:
  *(v3 - 40) = v5;
  operator delete(v5);
  goto LABEL_4;
}

uint64_t sub_298B2331C(uint64_t *a1, __int128 *a2)
{
  v3 = a1[57];
  if (v3 >= a1[58])
  {
    result = sub_298B2371C(a1 + 56, a2);
  }

  else
  {
    result = sub_298B23824(v3, a2) + 88;
  }

  a1[57] = result;
  return result;
}

unint64_t sub_298B2339C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4[1];
  result = sub_298B44B48(a2, 0, v6, 0);
  if ((a3 & 0x10) != 0)
  {
    v8 = result;
    v17 = "tmp";
    v18 = 259;
    v9 = sub_298B2D8D0(v6, &v17, 1);
    (*(*a4 + 192))(a4, v9, 0);
    v10 = sub_298B44B48(v9, 0, v6, 0);
    *(v6 + 264) += 32;
    v11 = *(v6 + 184);
    if (v11)
    {
      v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) - v11 + 32 > *(v6 + 192) - v11;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v6 + 208) >> 7;
      if (v13 >= 0x1E)
      {
        LOBYTE(v13) = 30;
      }

      v14 = 4096 << v13;
      result = operator new(4096 << v13, 8uLL);
      v15 = *(v6 + 208);
      if (v15 >= *(v6 + 212))
      {
        v16 = result;
        sub_298B90A44(v6 + 200, (v6 + 216), v15 + 1, 8);
        result = v16;
        LODWORD(v15) = *(v6 + 208);
      }

      *(*(v6 + 200) + 8 * v15) = result;
      ++*(v6 + 208);
      *(v6 + 192) = result + v14;
    }

    else
    {
      result = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v6 + 184) = result + 32;
    *result = 0;
    *(result + 1) = (*(result + 4) << 24) | 0x12;
    *(result + 8) = 0;
    *(result + 16) = v8;
    *(result + 24) = v10;
  }

  return result;
}

uint64_t sub_298B23530(uint64_t a1, int a2)
{
  if (a2 == 64)
  {
    return *(a1 + 180) & 1;
  }

  v3 = 0x800000000000401uLL >> (a2 - 36);
  if ((a2 - 36) > 0x3B)
  {
    LOBYTE(v3) = 0;
  }

  if (((a2 & 0xDF) - 65) >= 0x1Au)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if ((a2 - 48) < 0xA)
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_298B23588(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3 - 1;
  do
  {
    v6 = *a2++;
    result = (*(*a1 + 48))(a1, v6);
    if (result)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 1;
    }

    --v5;
  }

  while (!v8);
  return result;
}

uint64_t sub_298B23604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    if (*a2 == 1936941614)
    {
      return (*(a1 + 337) ^ 1) & 1;
    }

    return 0;
  }

  if (a3 != 5)
  {
    return 0;
  }

  if (*a2 == 2019914798 && *(a2 + 4) == 116)
  {
    return 1;
  }

  return *a2 == 1952539694 && *(a2 + 4) == 97;
}

void sub_298B236BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
    v3 = *(a2 + 40);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a2 + 40);
    if (!v3)
    {
      return;
    }
  }

  *(a2 + 48) = v3;

  operator delete(v3);
}

uint64_t sub_298B2371C(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_298ADDDA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v8[4] = a1;
  if (v5)
  {
    sub_298B239C8(a1, v5);
  }

  v8[0] = 0;
  v8[1] = 88 * v2;
  v8[3] = 0;
  sub_298B23824(88 * v2, a2);
  v8[2] = 88 * v2 + 88;
  sub_298B23944(a1, v8);
  v6 = a1[1];
  sub_298B23AC4(v8);
  return v6;
}

uint64_t sub_298B23824(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  sub_298B23890((a1 + 40), a2 + 5);
  if (*(a2 + 87) < 0)
  {
    sub_298AFE11C((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
  }

  return a1;
}

void *sub_298B23890(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_298B238F4(result, v2 - *a2);
  }

  return result;
}

void sub_298B238F4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_298ADDDA0();
}

void sub_298B23944(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1] + *a1 - v4;
  sub_298B23A18(a1, *a1, v4, v5);
  a2[1] = v5;
  v6 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v6;
  v7 = a1[1];
  a1[1] = a2[2];
  a2[2] = v7;
  v8 = a1[2];
  a1[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
}

void sub_298B239C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {

    operator new();
  }

  sub_298ADDDA0();
}

void sub_298B23A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 32);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 32) = v9;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v10 = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 64) = v10;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    do
    {
      sub_298B236BC(a1, v5);
      v5 += 88;
    }

    while (v5 != a3);
  }
}

uint64_t sub_298B23AC4(uint64_t a1)
{
  sub_298B23AFC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_298B23AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    while (1)
    {
      *(a1 + 16) = v2 - 88;
      if ((*(v2 - 1) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(*(v2 - 24));
      v5 = *(v2 - 48);
      if (v5)
      {
        goto LABEL_8;
      }

LABEL_3:
      v2 = *(a1 + 16);
      if (v2 == a2)
      {
        return;
      }
    }

    v5 = *(v2 - 48);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    *(v2 - 40) = v5;
    operator delete(v5);
    goto LABEL_3;
  }
}

uint64_t sub_298B23B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if (v2 == 2)
  {
    return 0;
  }

  if (!*(a2 + 239) && strlen((a2 + 224)) == 6)
  {
    v6 = *(a2 + 224) != 1094999903 || *(a2 + 228) != 16724;
    v7 = *(a2 + 208);
    if (!v6 && v7 == 10)
    {
      v14 = *(a2 + 200);
      v15 = *v14;
      v16 = *(v14 + 4);
      if (v15 == 0x6972747366635F5FLL && v16 == 26478)
      {
        return 0;
      }
    }

    else if (!v6 && v7 == 16)
    {
      v10 = *(a2 + 200);
      v12 = *v10;
      v11 = v10[1];
      if (v12 == 0x635F636A626F5F5FLL && v11 == 0x736665727373616CLL)
      {
        return 0;
      }
    }
  }

  v18 = 0xF9907u >> v2;
  if (v2 > 0x14u)
  {
    LOBYTE(v18) = 1;
  }

  return v18 & 1;
}

const void *sub_298B23CA8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 60) == 12)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  v5 = ".note.GNU-stack";
  v6 = 259;
  return sub_298B2DE08(a2, &v5, 1, 0, 0, 0, 0, -1, 0);
}

uint64_t sub_298B23D14(uint64_t a1)
{
  v2 = *(a1 + 2184);
  if (v2)
  {
    *(a1 + 2192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2160);
  if (v3)
  {
    *(a1 + 2168) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 520);
  v5 = *(a1 + 528);
  if (v5)
  {
    v6 = &v4[48 * v5 - 40];
    v7 = -48 * v5;
    do
    {
      if (v6 + 2 != *v6)
      {
        free(*v6);
      }

      v6 -= 6;
      v7 += 48;
    }

    while (v7);
    v4 = *(a1 + 520);
  }

  if (v4 != (a1 + 536))
  {
    free(v4);
  }

  v8 = *(a1 + 216);
  if (v8 != *(a1 + 208))
  {
    free(v8);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    v10 = *(a1 + 160);
    v11 = *(a1 + 152);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 9);
        v10 -= 4;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 152);
    }

    *(a1 + 160) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 128);
  if (v13)
  {
    v14 = *(a1 + 136);
    v15 = *(a1 + 128);
    if (v14 != v13)
    {
      v16 = *(a1 + 136);
      do
      {
        v19 = *(v16 - 3);
        v16 -= 3;
        v18 = v19;
        if (v19)
        {
          v20 = *(v14 - 2);
          v17 = v18;
          if (v20 != v18)
          {
            do
            {
              v21 = *(v20 - 1);
              v20 -= 3;
              if (v21 < 0)
              {
                operator delete(*v20);
              }
            }

            while (v20 != v18);
            v17 = *v16;
          }

          *(v14 - 2) = v18;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *(a1 + 128);
    }

    *(a1 + 136) = v13;
    operator delete(v15);
  }

  v22 = *(a1 + 104);
  if (v22)
  {
    *(a1 + 112) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    *(a1 + 88) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    *(a1 + 64) = v24;
    operator delete(v24);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    *(a1 + 40) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  return a1;
}

void sub_298B23F7C(uint64_t a1)
{
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 88) = *(a1 + 80);
  *(a1 + 112) = *(a1 + 104);
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3 != v2)
  {
    v4 = *(a1 + 136);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 1);
            v8 -= 3;
            if (v9 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  *(a1 + 136) = v2;
  v10 = *(a1 + 152);
  v11 = *(a1 + 160);
  while (v11 != v10)
  {
    v12 = *(v11 - 9);
    v11 -= 4;
    if (v12 < 0)
    {
      operator delete(*v11);
    }
  }

  *(a1 + 160) = v10;
  v13 = *(a1 + 216);
  if (v13 == *(a1 + 208))
  {
    goto LABEL_23;
  }

  v14 = *(a1 + 224);
  if (v14 < 0x21 || 4 * (*(a1 + 228) - *(a1 + 232)) >= v14)
  {
    memset(v13, 255, 8 * v14);
LABEL_23:
    *(a1 + 228) = 0;
    *(a1 + 232) = 0;
    goto LABEL_29;
  }

  free(v13);
  v16 = *(a1 + 228) - *(a1 + 232);
  v17 = 1 << (33 - __clz(v16 - 1));
  *(a1 + 228) = 0;
  *(a1 + 232) = 0;
  if (v16 <= 0x10)
  {
    v18 = 32;
  }

  else
  {
    v18 = v17;
  }

  *(a1 + 224) = v18;
  v19 = malloc_type_malloc(8 * v18, 0x3C0F72FBuLL);
  if (!v19)
  {
    sub_298B86A40("Allocation failed");
  }

  *(a1 + 216) = v19;
  memset(v19, 255, 8 * *(a1 + 224));
LABEL_29:
  *(a1 + 496) = 0;
  *(a1 + 500) &= 0xF8u;
  *(a1 + 504) = 0;
  v20 = *(a1 + 528);
  if (v20)
  {
    v21 = (*(a1 + 520) + 48 * v20 - 40);
    v22 = -48 * v20;
    do
    {
      if (v21 + 2 != *v21)
      {
        free(*v21);
      }

      v21 -= 6;
      v22 += 48;
    }

    while (v22);
  }

  *(a1 + 528) = 0;
  *(a1 + 512) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2092) = 0u;
  *(a1 + 2116) = 0;
  *(a1 + 2128) = 0u;
  if (*(a1 + 2148) == 1)
  {
    *(a1 + 2148) = 0;
  }

  *(a1 + 2152) = 0;
  v23 = *(a1 + 8);
  if (v23)
  {
    (*(*v23 + 48))(v23);
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  v25 = *(a1 + 24);
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  v26 = *(a1 + 528);
  if (v26)
  {
    v27 = (*(a1 + 520) + 48 * v26 - 40);
    v28 = -48 * v26;
    do
    {
      if (v27 + 2 != *v27)
      {
        free(*v27);
      }

      v27 -= 6;
      v28 += 48;
    }

    while (v28);
  }

  *(a1 + 528) = 0;
  *(a1 + 512) = 0;
}

uint64_t sub_298B24270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  v2 = *(a1 + 216);
  v4 = a1 + 208;
  if (v2 == v3)
  {
    v12 = *(a1 + 228);
    if (v12)
    {
      v13 = 8 * v12;
      while (*v3 != a2)
      {
        ++v3;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_13;
        }
      }

      v11 = *(a1 + 216);
      v8 = v3;
    }

    else
    {
LABEL_13:
      v8 = &v2[v12];
      v11 = *(a1 + 216);
    }
  }

  else
  {
    v5 = *(a1 + 224);
    v6 = v5 - 1;
    v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = &v2[v7];
    v9 = *v8;
    if (*v8 == -1)
    {
      v10 = 0;
LABEL_4:
      if (v10)
      {
        v8 = v10;
      }

      if (*v8 != a2)
      {
        v8 = &v2[v5];
      }
    }

    else
    {
      v10 = 0;
      v25 = 1;
      while (v9 != a2)
      {
        if (v10)
        {
          v26 = 0;
        }

        else
        {
          v26 = v9 == -2;
        }

        if (v26)
        {
          v10 = v8;
        }

        v27 = v7 + v25++;
        v7 = v27 & v6;
        v8 = &v2[v27 & v6];
        v9 = *v8;
        if (*v8 == -1)
        {
          goto LABEL_4;
        }
      }
    }

    v11 = *(a1 + 208);
  }

  v14 = 16;
  if (v2 == v11)
  {
    v14 = 20;
  }

  if (v8 != &v2[*(v4 + v14)])
  {
    return 1;
  }

  if ((*(a2 + 8) & 0x7000) != 0x2000)
  {
    return 0;
  }

  *(a2 + 8) |= 8uLL;
  v18 = *(a2 + 24);
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v19 = sub_298B44C70(v18, &v28, 0, 0, 0, 0, 0);
  result = 0;
  if (v19 && !v29 && !v31)
  {
    if (!v28 || *(v28 + 1))
    {
      return 0;
    }

    result = sub_298B24270(a1, *(v28 + 16));
    if (result)
    {
      v20 = *(a1 + 208);
      if (*(a1 + 216) != v20)
      {
        goto LABEL_29;
      }

      v21 = *(a1 + 228);
      if (v21)
      {
        v22 = 0;
        v23 = 8 * v21;
        v24 = *(a1 + 208);
        while (*v24 != a2)
        {
          if (*v24 == -2)
          {
            v22 = v24;
          }

          ++v24;
          v23 -= 8;
          if (!v23)
          {
            if (!v22)
            {
              goto LABEL_38;
            }

            *v22 = a2;
            --*(a1 + 232);
            return 1;
          }
        }

        return 1;
      }

LABEL_38:
      if (v21 < *(a1 + 224))
      {
        *(a1 + 228) = v21 + 1;
        *(v20 + 8 * v21) = a2;
      }

      else
      {
LABEL_29:
        sub_298B905B0(v4, a2);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_298B244B4(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v51 = *MEMORY[0x29EDCA608];
  v16 = *a3;
  v17 = *a1;
  *a7 = 0;
  *a8 = 0;
  if ((sub_298B44C70(v16, a5, *a2, a2, a3, 0, 0) & 1) == 0)
  {
    v19 = *(a3 + 16);
    v20 = "expected relocatable expression";
    goto LABEL_6;
  }

  v18 = a5[1];
  if (v18 && *(v18 + 1))
  {
    v19 = *(a3 + 16);
    v20 = "unsupported subtraction of qualified symbol";
LABEL_6:
    v46[0] = v20;
    v47 = 259;
    *(v17 + 2056) = 1;
    v48 = v19;
    v49[0] = &unk_2A1F1BDB8;
    v49[1] = &v48;
    v49[2] = v46;
    v50 = v49;
    sub_298B2FFE4(v17, v19, v49);
    if (v50 == v49)
    {
      (*(*v50 + 32))(v50);
      result = 1;
      goto LABEL_50;
    }

    if (v50)
    {
      (*(*v50 + 40))();
    }

    goto LABEL_9;
  }

  v22 = (*(*a1[1] + 80))(a1[1], *(a3 + 12));
  v23 = a1[1];
  if ((*(v22 + 16) & 4) != 0)
  {
    result = (*(*v23 + 112))(v23, a1, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_50;
  }

  v24 = *((*(*v23 + 80))(v23, *(a3 + 12)) + 16);
  v25 = *((*(*a1[1] + 80))(a1[1], *(a3 + 12)) + 16);
  if (v25)
  {
    if (a5[1])
    {
      goto LABEL_17;
    }

    v31 = *a5;
    if (!*a5)
    {
      v27 = 0;
      v29 = a5[2];
      goto LABEL_32;
    }

    if (!*(v31 + 1) && ((v32 = *(v31 + 16), *v32) || (*(v32 + 8) & 0x7080) == 0x2000 && (*(v32 + 8) |= 8uLL, v45 = v32, v42 = sub_298B45440(*(v32 + 24)), (*v45 = v42) != 0)) && (v33 = a1[3]) != 0)
    {
      if ((v24 & 8) != 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = (*(*v33 + 48))(v33, a1);
      }
    }

    else
    {
LABEL_17:
      v27 = 0;
    }

    v26 = *a5;
    *a7 = a5[2];
    if (!v26)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v26 = *a5;
    if (!*a5)
    {
      v29 = a5[2];
      v27 = a5[1] == 0;
      goto LABEL_32;
    }

    v27 = 0;
    *a7 = a5[2];
  }

  v28 = *(v26 + 16);
  if (*v28 || (*(v28 + 8) & 0x7080) == 0x2000 && (*(v28 + 8) |= 8uLL, v43 = v28, v30 = sub_298B45440(*(v28 + 24)), v28 = v43, (*v43 = v30) != 0))
  {
    v46[0] = 0;
    sub_298B460F8(a2, v28, 1, v46);
    v29 = *a7 + v46[0];
LABEL_32:
    *a7 = v29;
  }

LABEL_33:
  v34 = a5[1];
  if (v34)
  {
    v35 = *(v34 + 16);
    if (*v35 || (*(v35 + 8) & 0x7080) == 0x2000 && (*(v35 + 8) |= 8uLL, v44 = v35, v36 = sub_298B45440(*(v35 + 24)), v35 = v44, (*v44 = v36) != 0))
    {
      v46[0] = 0;
      sub_298B460F8(a2, v35, 1, v46);
      *a7 -= v46[0];
    }
  }

  v37 = (*(*a1[1] + 80))(a1[1], *(a3 + 12));
  if (v25)
  {
    v38 = *(v37 + 16);
    sub_298B45F80(a2, a4);
    v39 = *(a4 + 32) + *(a3 + 8);
    if ((v38 & 2) != 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFFCLL;
    }

    *a7 -= v39;
  }

  if (v27)
  {
    v40 = (*(*a1[1] + 88))(a1[1], a1, a3, a5, a6);
    result = 1;
    if (!v40)
    {
      goto LABEL_50;
    }

    *a8 = 1;
  }

  result = 0;
  if (*a5 && a5[1])
  {
    if (*(*a5 + 1) || ((*(*a1[1] + 120))(a1[1], a2, a4, a3, a5, a7) & 1) == 0)
    {
      result = 0;
      goto LABEL_50;
    }

LABEL_9:
    result = 1;
  }

LABEL_50:
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B24A18(uint64_t *a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  result = 4;
  switch(*(a3 + 48))
  {
    case 1:
    case 2:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      result = *(a3 + 72);
      goto LABEL_3;
    case 3:
      v13 = *(a3 + 64);
      v14 = *a2;
      v31 = 0;
      v32 = 0;
      v34 = 0;
      v33 = 0;
      if (*v13 == 1)
      {
        result = *(v13 + 16) * *(a3 + 52);
        if (result < 0)
        {
LABEL_13:
          v15 = *a1;
          v16 = *(a3 + 72);
          v17 = "invalid number of bytes";
          goto LABEL_37;
        }
      }

      else
      {
        if (sub_298B44C70(v13, &v31, v14, a2, 0, 0, 1))
        {
          v21 = v31 == 0;
        }

        else
        {
          v21 = 0;
        }

        if (v21 && !v32)
        {
          result = v33 * *(a3 + 52);
          if (result < 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v15 = *a1;
          v16 = *(a3 + 72);
          v17 = "expected assembly-time absolute expression";
LABEL_37:
          v31 = v17;
          v35 = 259;
          v24[0] = v16;
          *(v15 + 2056) = 1;
LABEL_38:
          v37[0] = &unk_2A1F1BDB8;
          v37[1] = v24;
          v38 = &v31;
          v39 = v37;
          sub_298B2FFE4(v15, v16, v37);
          v12 = v39;
          if (v39 == v37)
          {
LABEL_10:
            (*(*v12 + 32))(v12);
            result = 0;
          }

          else
          {
LABEL_39:
            if (v12)
            {
              (*(*v12 + 40))(v12);
            }

            result = 0;
          }
        }
      }

LABEL_3:
      v6 = *MEMORY[0x29EDCA608];
      return result;
    case 4:
      result = *(a3 + 56);
      goto LABEL_3;
    case 6:
      v28[0] = 0;
      v28[1] = 0;
      v30 = 0;
      v29 = 0;
      if ((sub_298B44C70(*(a3 + 56), v28, *a2, a2, 0, 0, 1) & 1) == 0)
      {
        v15 = *a1;
        v16 = *(a3 + 64);
        v31 = "expected assembly-time absolute expression";
        v35 = 259;
        v24[0] = v16;
        *(v15 + 2056) = 1;
        goto LABEL_38;
      }

      sub_298B45F80(a2, a3);
      v8 = *(a3 + 32);
      v9 = v29;
      v26 = v29;
      v27 = v8;
      if (!v28[0])
      {
        goto LABEL_8;
      }

      v22[0] = 0;
      if (!sub_298B460F8(a2, *(v28[0] + 16), 0, v22))
      {
        v15 = *a1;
        v16 = *(a3 + 64);
        v17 = "expected absolute expression";
        goto LABEL_37;
      }

      v9 += v22[0];
      v26 = v9;
LABEL_8:
      result = v9 - v8;
      if (!((v9 - v8) >> 30))
      {
        goto LABEL_3;
      }

      v10 = *a1;
      v11 = *(a3 + 64);
      v22[0] = "invalid .org offset '";
      v22[2] = &v26;
      v23 = 3587;
      v24[0] = v22;
      v24[2] = "' (at offset '";
      v25 = 770;
      v36 = v11;
      v37[0] = v24;
      v38 = &v27;
      v40 = 3330;
      v31 = v37;
      v33 = "')";
      v35 = 770;
      *(v10 + 2056) = 1;
      v41[0] = &unk_2A1F1BDB8;
      v41[1] = &v36;
      v41[2] = &v31;
      v42 = v41;
      sub_298B2FFE4(v10, v11, v41);
      v12 = v42;
      if (v42 == v41)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    case 0xA:
      result = *(a3 + 64);
      goto LABEL_3;
    case 0xB:
      goto LABEL_3;
    case 0xC:
      result = *(a3 + 88);
      goto LABEL_3;
    default:
      sub_298B45F80(a2, a3);
      v18 = ((*(a3 + 32) + (1 << *(a3 + 52)) - 1) & -(1 << *(a3 + 52))) - *(a3 + 32);
      LODWORD(v31) = v18;
      if (!(*(**(a3 + 16) + 8))(*(a3 + 16)) || (*(a3 + 53) & 1) == 0 || (v19 = (*(*a1[1] + 96))(a1[1], a3, &v31), v18 = v31, (v19 & 1) == 0))
      {
        if (v18 && (*(a3 + 53) & 1) != 0 && v18 % (*(*a1[1] + 192))(a1[1]))
        {
          do
          {
            LODWORD(v31) = v31 + (1 << *(a3 + 52));
            v20 = v31;
          }

          while (v20 % (*(*a1[1] + 192))(a1[1]));
        }

        if (v31 <= *(a3 + 68))
        {
          v18 = v31;
        }

        else
        {
          v18 = 0;
        }
      }

      result = v18;
      goto LABEL_3;
  }
}

unint64_t sub_298B24F10(unint64_t *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *(v4 + 112);
  v6 = *a2;
  *(a2 + 49) = 1;
  if (v5 == a2 || v6 == 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(v6 + 32);
    v9 = sub_298B24A18(*a1, a1) + v8;
    v4 = a2[2];
  }

  a2[4] = v9;
  *(a2 + 49) = 0;
  v10 = a1[19];
  v28 = v4;
  v11 = *(a1 + 42);
  if (!v11)
  {
    v20 = 0;
LABEL_19:
    v14 = sub_298B26F04(a1 + 38, &v28, &v28, v20);
    *v14 = v28;
    v14[1] = 0;
    goto LABEL_20;
  }

  v12 = v11 - 1;
  v13 = (v11 - 1) & ((v4 >> 4) ^ (v4 >> 9));
  v14 = (v10 + 16 * v13);
  v15 = *v14;
  if (v4 != *v14)
  {
    v16 = 0;
    v17 = 1;
    while (v15 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v15 == -8192;
      }

      if (v18)
      {
        v16 = v14;
      }

      v19 = v13 + v17++;
      v13 = v19 & v12;
      v14 = (v10 + 16 * (v19 & v12));
      v15 = *v14;
      if (v4 == *v14)
      {
        goto LABEL_20;
      }
    }

    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

    goto LABEL_19;
  }

LABEL_20:
  v14[1] = a2;
  result = *a1;
  if (*(*a1 + 496) && *(a2 + 50) == 1)
  {
    result = sub_298B24A18(result, a1);
    v22 = *(*a1 + 496);
    if ((*(*a1 + 500) & 1) == 0 && result > v22)
    {
      sub_298B868A8("Fragment can't be larger than a bundle size", 1);
    }

    v23 = a2[4];
    v24 = (v22 - 1) & v23;
    v25 = v24 + result;
    if (*(a2 + 52) == 1)
    {
      if (v22 != v25)
      {
        if (v22 > v25)
        {
          v26 = v22 - v25;
        }

        else
        {
          v26 = 2 * v22 - v25;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v24)
      {
        v27 = v22 >= v25;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v26 = v22 - v24;
LABEL_35:
        if (v26 >= 0x100)
        {
          sub_298B868A8("Padding cannot exceed 255 bytes", 1);
        }

        goto LABEL_36;
      }
    }

    v26 = 0;
LABEL_36:
    *(a2 + 53) = v26;
    a2[4] = v26 + v23;
  }

  return result;
}

void sub_298B250EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_298ADDDA0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_298B25204(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 53);
  if (*(a3 + 53))
  {
    v6 = *(a3 + 56);
    if (*(a3 + 52) == 1)
    {
      v7 = v4 + a4;
      v8 = *(result + 496);
      v9 = v7 - v8;
      if (v7 > v8)
      {
        v10 = result;
        v11 = a2;
        v12 = *(a3 + 56);
        if (((*(**(result + 8) + 208))(*(result + 8), a2, v9) & 1) == 0)
        {
          v17[0] = "unable to write NOP sequence of ";
          v18 = 259;
          v16 = 265;
          LODWORD(v15[0]) = v9;
          sub_298ADC860(v17, v15, v19);
          v13 = " bytes";
          v14 = 259;
          goto LABEL_10;
        }

        v4 -= v9;
        a2 = v11;
        v6 = v12;
        result = v10;
      }
    }

    result = (*(**(result + 8) + 208))(*(result + 8), a2, v4, v6);
    if (result)
    {
      return result;
    }

    v17[0] = "unable to write NOP sequence of ";
    v18 = 259;
    v16 = 265;
    LODWORD(v15[0]) = v4;
    sub_298ADC860(v17, v15, v19);
    v13 = " bytes";
    v14 = 259;
LABEL_10:
    sub_298ADC860(v19, &v13, v20);
    sub_298B868DC(v20, 1);
  }

  return result;
}

void sub_298B25380(uint64_t *a1, uint64_t **a2)
{
  v220 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  v5 = a1[5];
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      if (*(*v4 + 104) == *v4 + 104)
      {
        operator new();
      }

      *(*v4 + 28) = v6++;
      v4 += 8;
    }

    while (v4 != v5);
  }

  v7 = *(a2 + 4);
  if (v7)
  {
    v8 = 0;
    v9 = a2[1];
    do
    {
      v10 = v9[v8];
      *(v10 + 32) = v8;
      v11 = v10 + 104;
      v12 = *(v10 + 112);
      if (v12 != v11)
      {
        v13 = 0;
        do
        {
          *(v12 + 40) = v13++;
          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v14 = a1[4];
  v15 = a1[5];
  if (v14 != v15)
  {
    while (1)
    {
      v202 = 0;
      v200 = v15;
      do
      {
        while (1)
        {
          v201 = v14;
          v16 = *v14 + 104;
          v203 = *v14;
          v17 = *(*v14 + 112);
          v207 = v16;
          if (v17 == v16)
          {
            break;
          }

          do
          {
            v20 = 0;
            do
            {
              v21 = 0;
              v22 = *(v17 + 48);
              if (v22 > 9)
              {
                if (*(v17 + 48) <= 0xCu)
                {
                  if (v22 != 10)
                  {
                    if (v22 != 12)
                    {
                      goto LABEL_30;
                    }

                    v23 = *(v17 + 88);
                    v24 = *(*a1 + 176);
                    if (!v24)
                    {
                      operator new();
                    }

                    sub_298B28FB0(v24, a2, v17);
                    v25 = *(v17 + 88);
                    goto LABEL_133;
                  }

                  if (*(v17 + 56))
                  {
                    sub_298B45F80(a2, v17);
                    v54 = *(v17 + 32);
                    v55 = *(v17 + 56);
                    if (v55 == v17)
                    {
                      v56 = 0;
                    }

                    else
                    {
                      v56 = 0;
                      do
                      {
                        v56 += sub_298B24A18(a1, a2, v55);
                        if (*(v55[2] + 112) == v55)
                        {
                          v55 = 0;
                        }

                        else
                        {
                          v55 = *v55;
                        }
                      }

                      while (v55 != v17);
                    }

                    v74 = *(v17 + 52);
                    v75 = v54 >> v74;
                    v76 = (v56 + v54 - 1) >> v74;
                    v77 = (v56 + v54) & ~(-1 << v74);
                    v78 = ((v54 + (1 << v74) - 1) & -(1 << v74)) - v54;
                    if (v75 == v76 && v77 != 0)
                    {
                      v78 = 0;
                    }

                    if (v78 != *(v17 + 64))
                    {
                      *(v17 + 64) = v78;
                      v80 = *(a2 + 42);
                      if (v80)
                      {
                        v81 = *(v17 + 16);
                        v82 = a2[19];
                        v83 = v80 - 1;
                        v84 = ((v81 >> 4) ^ (v81 >> 9)) & v83;
                        v85 = &v82[2 * v84];
                        v86 = *v85;
                        if (*v85 == v81)
                        {
                          v87 = ((v81 >> 4) ^ (v81 >> 9)) & v83;
LABEL_159:
                          v88 = v82[2 * v87 + 1];
                          if (v88 && *(v17 + 40) <= *(v88 + 40))
                          {
                            if (*(v81 + 112) == v17)
                            {
                              v89 = 0;
                            }

                            else
                            {
                              v89 = *v17;
                            }

                            *&v212 = *(v17 + 16);
                            if (v86 != v81)
                            {
                              v140 = 0;
                              v141 = 1;
                              while (v86 != -4096)
                              {
                                if (v140)
                                {
                                  v142 = 0;
                                }

                                else
                                {
                                  v142 = v86 == -8192;
                                }

                                if (v142)
                                {
                                  v140 = v85;
                                }

                                v143 = v84 + v141++;
                                v84 = v143 & v83;
                                v85 = &v82[2 * v84];
                                v86 = *v85;
                                if (v81 == *v85)
                                {
                                  goto LABEL_165;
                                }
                              }

                              if (v140)
                              {
                                v144 = v140;
                              }

                              else
                              {
                                v144 = v85;
                              }

                              v85 = sub_298B26F04(a2 + 38, &v212, &v212, v144);
                              *v85 = v212;
                              v85[1] = 0;
                            }

LABEL_165:
                            v85[1] = v89;
                            v21 = 1;
                            goto LABEL_30;
                          }
                        }

                        else
                        {
                          v135 = 1;
                          v136 = *v85;
                          LODWORD(v87) = ((v81 >> 4) ^ (v81 >> 9)) & v83;
                          while (v136 != -4096)
                          {
                            v137 = v87 + v135++;
                            v87 = v137 & v83;
                            v136 = v82[2 * v87];
                            if (v136 == v81)
                            {
                              goto LABEL_159;
                            }
                          }
                        }
                      }

LABEL_310:
                      v21 = 1;
                      goto LABEL_30;
                    }
                  }

                  goto LABEL_29;
                }

                if (v22 == 13)
                {
                  v23 = *(v17 + 72);
                  v57 = *(*a1 + 176);
                  if (!v57)
                  {
                    operator new();
                  }

                  sub_298B29B6C(v57, a2, v17);
                  goto LABEL_132;
                }

                if (v22 != 14)
                {
                  goto LABEL_30;
                }

                v31 = *(v17 + 72);
                v32 = *(v17 + 136);
                v33 = *a2;
                v212 = 0uLL;
                LODWORD(__dst[1]) = 0;
                __dst[0] = 0;
                if (*v32 != 1)
                {
                  sub_298B44C70(v32, &v212, v33, a2, 0, 0, 1);
                  v32 = &v212;
                }

                v34 = 0;
                v35 = *(v32 + 2);
                *(v17 + 72) = 0;
                DWORD2(v212) = 0;
                v215 = 0;
                v216 = 0;
                *&v212 = &unk_2A1F1E0B8;
                v218 = v17 + 64;
                v217 = 0;
                __dst[1] = 0;
                v214 = 0;
                __dst[0] = 0;
                *(v17 + 104) = 0;
                while (1)
                {
LABEL_59:
                  v37 = v35;
                  v38 = v35 & 0x7F;
                  v35 >>= 7;
                  v40 = (v37 & 0x40) == 0 || v35 != -1;
                  v41 = v37 >= 0x40 && v40;
                  if (++v34 < v31 || v41)
                  {
                    v43 = 0x80;
                  }

                  else
                  {
                    v43 = 0;
                  }

                  v44 = v43 | v38;
                  v36 = v214;
                  if (v214 >= __dst[1])
                  {
                    while (!__dst[0])
                    {
                      if (!v217)
                      {
                        v219[0] = v44;
                        sub_298B9BB84(&v212);
                        if (!v41)
                        {
                          goto LABEL_84;
                        }

                        goto LABEL_59;
                      }

                      if ((*(v212 + 88))(&v212))
                      {
                        if (v214 != __dst[0])
                        {
                          v214 = __dst[0];
                          sub_298B9BB84(&v212);
                        }

                        operator new[]();
                      }

                      sub_298ADDDB0(&v212);
                      v36 = v214;
                      if (v214 < __dst[1])
                      {
                        goto LABEL_58;
                      }
                    }

                    v214 = __dst[0];
                    sub_298B9BB84(&v212);
                    v36 = v214;
                  }

LABEL_58:
                  v214 = v36 + 1;
                  *v36 = v44;
                  if (!v41)
                  {
LABEL_84:
                    if (v34 >= v31)
                    {
                      goto LABEL_148;
                    }

                    v45 = (v35 >> 63) & 0x7F;
                    v46 = v31 - 1;
                    if (v34 >= v31 - 1)
                    {
                      goto LABEL_96;
                    }

                    v47 = v214;
                    if (v214 >= __dst[1])
                    {
                      goto LABEL_91;
                    }

                    while (1)
                    {
LABEL_89:
                      v214 = v47 + 1;
                      *v47 = v45 | 0x80;
                      if (++v34 == v46)
                      {
                        goto LABEL_96;
                      }

LABEL_90:
                      v47 = v214;
                      if (v214 < __dst[1])
                      {
                        continue;
                      }

LABEL_91:
                      while (!__dst[0])
                      {
                        if (!v217)
                        {
                          v219[0] = v45 | 0x80;
                          sub_298B9BB84(&v212);
                          if (++v34 == v46)
                          {
LABEL_96:
                            v48 = v214;
                            if (v214 >= __dst[1])
                            {
                              while (!__dst[0])
                              {
                                if (!v217)
                                {
                                  v219[0] = v45;
                                  sub_298B9BB84(&v212);
                                  goto LABEL_148;
                                }

                                sub_298B9AE98(&v212);
                                v48 = v214;
                                if (v214 < __dst[1])
                                {
                                  goto LABEL_147;
                                }
                              }

                              v214 = __dst[0];
                              sub_298B9BB84(&v212);
                              v48 = v214;
                            }

LABEL_147:
                            v214 = v48 + 1;
                            *v48 = v45;
LABEL_148:
                            v73 = v31 == *(v17 + 72);
                            goto LABEL_296;
                          }

                          goto LABEL_90;
                        }

                        sub_298B9AE98(&v212);
                        v47 = v214;
                        if (v214 < __dst[1])
                        {
                          goto LABEL_89;
                        }
                      }

                      v214 = __dst[0];
                      sub_298B9BB84(&v212);
                      v47 = v214;
                    }
                  }
                }
              }

              if (*(v17 + 48) <= 7u)
              {
                if (v22 != 5)
                {
                  if (v22 != 7)
                  {
                    goto LABEL_30;
                  }

                  v219[0] = 0;
                  if ((*(*a1[1] + 168))(a1[1], v17, a2, v219))
                  {
                    v21 = v219[0];
                    goto LABEL_30;
                  }

                  v62 = *a2;
                  v63 = **a2;
                  v23 = *(v17 + 72);
                  v64 = *(v17 + 144);
                  v212 = 0uLL;
                  LODWORD(__dst[1]) = 0;
                  __dst[0] = 0;
                  if (*v64 != 1)
                  {
                    sub_298B44C70(v64, &v212, v62, a2, 0, 0, 1);
                    v64 = &v212;
                  }

                  v65 = *(v64 + 2);
                  v66 = *(v17 + 136);
                  *(v17 + 72) = 0;
                  *(v17 + 104) = 0;
                  sub_298B359D8(v63, *(a1 + 100) | (*(a1 + 202) << 16), v66, v65, (v17 + 64));
                  goto LABEL_132;
                }

                v49 = (v17 + 136);
                if ((*(*a1[1] + 136))(a1[1], v17 + 136, *(v17 + 56)))
                {
                  v50 = *(v17 + 96);
                  v51 = *(v17 + 104);
                  if (v51)
                  {
                    v52 = 24 * v51;
                    while (1)
                    {
                      v212 = 0uLL;
                      LODWORD(__dst[1]) = 0;
                      __dst[0] = 0;
                      *v219 = 0;
                      LOBYTE(v209[0]) = 0;
                      sub_298B244B4(a1, a2, v50, v17, &v212, *(v17 + 56), v219, v209);
                      if (!v212 || (*(v212 + 1) == 36 ? (v53 = *(v50 + 12) == 1) : (v53 = 0), !v53))
                      {
                        if ((*(*a1[1] + 144))(a1[1], v50))
                        {
                          break;
                        }
                      }

                      v21 = 0;
                      v50 += 24;
                      v52 -= 24;
                      if (!v52)
                      {
                        goto LABEL_30;
                      }
                    }

                    v212 = *v49;
                    __dst[0] = &v214;
                    __dst[1] = 0xA00000000;
                    if (&v212 == v49 || (v90 = *(v17 + 160), !*(v17 + 160)))
                    {
LABEL_173:
                      (*(*a1[1] + 160))(a1[1], &v212, *(v17 + 56));
                      *v49 = v212;
                      if (&v212 == v49)
                      {
                        goto LABEL_308;
                      }

                      v93 = LODWORD(__dst[1]);
                      v94 = *(v17 + 160);
                      if (v94 >= LODWORD(__dst[1]))
                      {
                        if (LODWORD(__dst[1]))
                        {
                          memmove(*(v17 + 152), __dst[0], 16 * LODWORD(__dst[1]));
                        }

                        goto LABEL_307;
                      }

                      if (*(v17 + 164) >= LODWORD(__dst[1]))
                      {
                        if (v94)
                        {
                          memmove(*(v17 + 152), __dst[0], 16 * v94);
                          v95 = LODWORD(__dst[1]) - v94;
                          if (LODWORD(__dst[1]) == v94)
                          {
LABEL_307:
                            *(v17 + 160) = v93;
LABEL_308:
                            *(v17 + 104) = 0;
                            *(v17 + 72) = 0;
                            (*(*a1[2] + 32))(a1[2], &v212, v17 + 64, v17 + 96, *(v17 + 56));
                            if (__dst[0] != &v214)
                            {
                              free(__dst[0]);
                            }

                            goto LABEL_310;
                          }
                        }

                        else
                        {
                          v94 = 0;
                          v95 = LODWORD(__dst[1]);
                          if (!LODWORD(__dst[1]))
                          {
                            goto LABEL_307;
                          }
                        }
                      }

                      else
                      {
                        *(v17 + 160) = 0;
                        sub_298B90A44(v17 + 152, (v17 + 168), v93, 16);
                        v94 = 0;
                        v95 = LODWORD(__dst[1]);
                        if (!LODWORD(__dst[1]))
                        {
                          goto LABEL_307;
                        }
                      }

                      memcpy((*(v17 + 152) + 16 * v94), __dst[0] + 16 * v94, 16 * v95);
                      goto LABEL_307;
                    }

                    v91 = &v214;
                    v92 = *(v17 + 160);
                    if (v90 >= 0xB)
                    {
                      sub_298B90A44(__dst, &v214, *(v17 + 160), 16);
                      v92 = *(v17 + 160);
                      if (!v92)
                      {
LABEL_172:
                        LODWORD(__dst[1]) = v90;
                        goto LABEL_173;
                      }

                      v91 = __dst[0];
                    }

                    memcpy(v91, *(v17 + 152), 16 * v92);
                    goto LABEL_172;
                  }
                }

LABEL_29:
                v21 = 0;
                goto LABEL_30;
              }

              if (v22 == 8)
              {
                LOBYTE(v211) = 0;
                if ((*(*a1[1] + 176))(a1[1], v17, a2, &v211))
                {
                  v21 = v211;
                  goto LABEL_30;
                }

                v58 = *a2;
                v59 = **a2;
                v60 = *(v17 + 136);
                v212 = 0uLL;
                LODWORD(__dst[1]) = 0;
                __dst[0] = 0;
                if (*v60 == 1)
                {
                  v61 = *(v60 + 16);
                  goto LABEL_128;
                }

                if (sub_298B44C70(v60, &v212, v58, a2, 0, 0, 0) && v212 == 0)
                {
                  v61 = __dst[0];
LABEL_128:
                  v23 = *(v17 + 72);
                  *(v17 + 72) = 0;
                  *(v17 + 104) = 0;
                  sub_298B3BCBC(v59, v61, (v17 + 64));
LABEL_132:
                  v25 = *(v17 + 72);
LABEL_133:
                  v21 = v23 != v25;
                  goto LABEL_30;
                }

                v96 = *a1;
                v97 = *(*(v17 + 136) + 8);
                *&v212 = "invalid CFI advance_loc expression";
                LOWORD(v214) = 259;
                *&v209[0] = v97;
                *(v96 + 2056) = 1;
                *v219 = &unk_2A1F1BDB8;
                *&v219[8] = v209;
                *&v219[16] = &v212;
                *&v219[24] = v219;
                sub_298B2FFE4(v96, v97, v219);
                if (*&v219[24] == v219)
                {
                  (*(**&v219[24] + 32))(*&v219[24]);
                  *(v59 + 264) += 24;
                  v98 = *(v59 + 184);
                  if (!v98)
                  {
                    goto LABEL_187;
                  }
                }

                else
                {
                  if (*&v219[24])
                  {
                    (*(**&v219[24] + 40))();
                  }

                  *(v59 + 264) += 24;
                  v98 = *(v59 + 184);
                  if (!v98)
                  {
LABEL_187:
                    v100 = *(v59 + 208) >> 7;
                    if (v100 >= 0x1E)
                    {
                      LOBYTE(v100) = 30;
                    }

                    v101 = 4096 << v100;
                    v99 = operator new(4096 << v100, 8uLL);
                    v102 = *(v59 + 208);
                    if (v102 >= *(v59 + 212))
                    {
                      v138 = v99;
                      sub_298B90A44(v59 + 200, (v59 + 216), v102 + 1, 8);
                      v99 = v138;
                      v102 = *(v59 + 208);
                    }

                    *(*(v59 + 200) + 8 * v102) = v99;
                    ++*(v59 + 208);
                    *(v59 + 192) = v99 + v101;
                    goto LABEL_192;
                  }
                }

                if (((v98 + 7) & 0xFFFFFFFFFFFFFFF8) - v98 + 24 > *(v59 + 192) - v98)
                {
                  goto LABEL_187;
                }

                v99 = (v98 + 7) & 0xFFFFFFFFFFFFFFF8;
LABEL_192:
                v21 = 0;
                *(v59 + 184) = v99 + 24;
                *v99 = 1;
                *(v99 + 1) = *(v99 + 4) << 24;
                *(v99 + 8) = 0;
                *(v99 + 16) = 0;
                *(v17 + 136) = v99;
                goto LABEL_30;
              }

              if (v22 != 9)
              {
                goto LABEL_30;
              }

              v26 = *(v17 + 72);
              v211 = 0;
              *(v17 + 104) = 0;
              v27 = *(v17 + 120);
              v28 = *a2;
              if ((*(a1 + 500) & 2) != 0)
              {
                v212 = 0uLL;
                LODWORD(__dst[1]) = 0;
                __dst[0] = 0;
                if (*v27 == 1)
                {
LABEL_135:
                  v30 = *(v27 + 16);
                  v211 = v30;
                  v67 = v26;
                  goto LABEL_217;
                }

                v68 = sub_298B44C70(v27, &v212, v28, a2, 0, 0, 1);
                v30 = __dst[0];
                v211 = __dst[0];
                if (v68 && v212 == 0)
                {
LABEL_183:
                  v67 = v26;
                  goto LABEL_217;
                }
              }

              else
              {
                v212 = 0uLL;
                LODWORD(__dst[1]) = 0;
                __dst[0] = 0;
                if (*v27 == 1)
                {
                  goto LABEL_135;
                }

                v29 = sub_298B44C70(v27, &v212, v28, a2, 0, 0, 0);
                v30 = __dst[0];
                v211 = __dst[0];
                if (v29 && v212 == 0)
                {
                  goto LABEL_183;
                }
              }

              v69 = (*(*a1[1] + 184))(a1[1], v17, a2, &v211);
              if ((v69 & 1) == 0)
              {
                v70 = *(*(v17 + 120) + 8);
                v71 = ".u";
                if (*(v17 + 112))
                {
                  v71 = ".s";
                }

                if (*v71)
                {
                  __dst[0] = "leb128 expression is not absolute";
                  v72 = 3;
                }

                else
                {
                  v72 = 1;
                  v71 = "leb128 expression is not absolute";
                }

                v103 = *a1;
                *&v212 = v71;
                LOBYTE(v214) = 3;
                BYTE1(v214) = v72;
                *&v209[0] = v70;
                *(v103 + 2056) = 1;
                *v219 = &unk_2A1F1BDB8;
                *&v219[8] = v209;
                *&v219[16] = &v212;
                *&v219[24] = v219;
                sub_298B2FFE4(v103, v70, v219);
                if (*&v219[24] == v219)
                {
                  (*(**&v219[24] + 32))(*&v219[24]);
                  v104 = *a1;
                  *(v104 + 264) = *(*a1 + 264) + 24;
                  v105 = *(v104 + 184);
                  if (!v105)
                  {
                    goto LABEL_202;
                  }
                }

                else
                {
                  if (*&v219[24])
                  {
                    (*(**&v219[24] + 40))();
                  }

                  v104 = *a1;
                  *(v104 + 264) = *(*a1 + 264) + 24;
                  v105 = *(v104 + 184);
                  if (!v105)
                  {
LABEL_202:
                    v107 = *(v104 + 208) >> 7;
                    if (v107 >= 0x1E)
                    {
                      LOBYTE(v107) = 30;
                    }

                    v108 = 4096 << v107;
                    v106 = operator new(4096 << v107, 8uLL);
                    v109 = *(v104 + 208);
                    if (v109 >= *(v104 + 212))
                    {
                      v139 = v106;
                      sub_298B90A44(v104 + 200, (v104 + 216), v109 + 1, 8);
                      v106 = v139;
                      v109 = *(v104 + 208);
                    }

                    *(*(v104 + 200) + 8 * v109) = v106;
                    ++*(v104 + 208);
                    *(v104 + 192) = v106 + v108;
                    goto LABEL_207;
                  }
                }

                if (((v105 + 7) & 0xFFFFFFFFFFFFFFF8) - v105 + 24 > *(v104 + 192) - v105)
                {
                  goto LABEL_202;
                }

                v106 = (v105 + 7) & 0xFFFFFFFFFFFFFFF8;
LABEL_207:
                *(v104 + 184) = v106 + 24;
                *v106 = 1;
                *(v106 + 1) = *(v106 + 4) << 24;
                *(v106 + 8) = 0;
                *(v106 + 16) = 0;
                *(v17 + 120) = v106;
              }

              v110 = 0;
              v30 = v211;
              v111 = v211;
              do
              {
                v112 = v111 | 0x80;
                v113 = v111 > 0x7F;
                if (v111 <= 0x7F)
                {
                  v112 = v111;
                }

                v111 >>= 7;
                *(&__dst[-2] + v110++) = v112;
              }

              while (v113);
              if (v26 <= v110)
              {
                v67 = v110;
              }

              else
              {
                v67 = v26;
              }

              if ((v69 & 0x100) != 0)
              {
                v30 = 0;
                v211 = 0;
              }

LABEL_217:
              *(v17 + 72) = 0;
              DWORD2(v212) = 0;
              v215 = 0;
              v216 = 0;
              *&v212 = &unk_2A1F1E0B8;
              v218 = v17 + 64;
              v217 = 0;
              __dst[1] = 0;
              v214 = 0;
              __dst[0] = 0;
              if ((*(v17 + 112) & 1) == 0)
              {
                v128 = 0;
                while (1)
                {
LABEL_263:
                  if (++v128 < v67 || v30 > 0x7F)
                  {
                    v131 = v30 | 0x80;
                  }

                  else
                  {
                    v131 = v30;
                  }

                  v129 = v214;
                  if (v214 < __dst[1])
                  {
                    goto LABEL_261;
                  }

                  while (!__dst[0])
                  {
                    if (!v217)
                    {
                      v219[0] = v131;
                      sub_298B9BB84(&v212);
                      v113 = v30 > 0x7F;
                      v30 >>= 7;
                      if (!v113)
                      {
                        goto LABEL_275;
                      }

                      goto LABEL_263;
                    }

                    sub_298B9AE98(&v212);
                    v129 = v214;
                    if (v214 < __dst[1])
                    {
                      goto LABEL_261;
                    }
                  }

                  v214 = __dst[0];
                  sub_298B9BB84(&v212);
                  v129 = v214;
LABEL_261:
                  v214 = v129 + 1;
                  *v129 = v131;
                  v113 = v30 > 0x7F;
                  v30 >>= 7;
                  if (!v113)
                  {
LABEL_275:
                    if (v128 >= v67)
                    {
                      goto LABEL_295;
                    }

                    v132 = v67 - 1;
                    if (v128 >= v67 - 1)
                    {
LABEL_277:
                      v133 = v214;
                      if (v214 >= __dst[1])
                      {
                        while (!__dst[0])
                        {
                          if (!v217)
                          {
                            v219[0] = 0;
                            goto LABEL_333;
                          }

                          sub_298B9AE98(&v212);
                          v133 = v214;
                          if (v214 < __dst[1])
                          {
                            goto LABEL_294;
                          }
                        }

                        v214 = __dst[0];
                        sub_298B9BB84(&v212);
                        v133 = v214;
                      }

LABEL_294:
                      v214 = v133 + 1;
                      *v133 = 0;
                      goto LABEL_295;
                    }

LABEL_284:
                    while (2)
                    {
                      v134 = v214;
                      if (v214 >= __dst[1])
                      {
                        while (!__dst[0])
                        {
                          if (!v217)
                          {
                            v219[0] = 0x80;
                            sub_298B9BB84(&v212);
                            if (++v128 == v132)
                            {
                              goto LABEL_277;
                            }

                            goto LABEL_284;
                          }

                          sub_298B9AE98(&v212);
                          v134 = v214;
                          if (v214 < __dst[1])
                          {
                            goto LABEL_283;
                          }
                        }

                        v214 = __dst[0];
                        sub_298B9BB84(&v212);
                        v134 = v214;
                      }

LABEL_283:
                      v214 = v134 + 1;
                      *v134 = 0x80;
                      if (++v128 == v132)
                      {
                        goto LABEL_277;
                      }

                      continue;
                    }
                  }
                }
              }

              v205 = v26;
              v114 = 0;
              do
              {
                while (1)
                {
                  v116 = v30;
                  v117 = v30 & 0x7F;
                  v30 = v30 >> 7;
                  v119 = (v116 & 0x40) == 0 || v30 != -1;
                  v120 = v116 >= 0x40 && v119;
                  if (++v114 < v67 || v120)
                  {
                    v122 = 0x80;
                  }

                  else
                  {
                    v122 = 0;
                  }

                  v123 = v122 | v117;
                  v115 = v214;
                  if (v214 < __dst[1])
                  {
                    goto LABEL_220;
                  }

LABEL_237:
                  if (!__dst[0])
                  {
                    break;
                  }

                  v214 = __dst[0];
                  sub_298B9BB84(&v212);
                  v115 = v214;
LABEL_220:
                  v214 = v115 + 1;
                  *v115 = v123;
                  if (!v120)
                  {
                    goto LABEL_242;
                  }
                }

                if (v217)
                {
                  sub_298B9AE98(&v212);
                  v115 = v214;
                  if (v214 < __dst[1])
                  {
                    goto LABEL_220;
                  }

                  goto LABEL_237;
                }

                v219[0] = v123;
                sub_298B9BB84(&v212);
              }

              while (v120);
LABEL_242:
              LODWORD(v26) = v205;
              if (v114 < v67)
              {
                v124 = (v30 >> 63) & 0x7F;
                v125 = v67 - 1;
                if (v114 >= v67 - 1)
                {
                  goto LABEL_254;
                }

                v126 = v214;
                if (v214 < __dst[1])
                {
                  goto LABEL_247;
                }

                while (1)
                {
LABEL_249:
                  if (__dst[0])
                  {
                    v214 = __dst[0];
                    sub_298B9BB84(&v212);
                    v126 = v214;
                    goto LABEL_247;
                  }

                  if (!v217)
                  {
                    break;
                  }

                  sub_298B9AE98(&v212);
                  v126 = v214;
                  if (v214 < __dst[1])
                  {
                    goto LABEL_247;
                  }
                }

                v219[0] = v124 | 0x80;
                sub_298B9BB84(&v212);
                if (++v114 != v125)
                {
                  do
                  {
                    v126 = v214;
                    if (v214 >= __dst[1])
                    {
                      goto LABEL_249;
                    }

LABEL_247:
                    v214 = v126 + 1;
                    *v126 = v124 | 0x80;
                    ++v114;
                  }

                  while (v114 != v125);
                }

LABEL_254:
                v127 = v214;
                if (v214 < __dst[1])
                {
LABEL_292:
                  v214 = v127 + 1;
                  *v127 = v124;
                }

                else
                {
                  while (1)
                  {
                    if (__dst[0])
                    {
                      v214 = __dst[0];
                      sub_298B9BB84(&v212);
                      v127 = v214;
                      goto LABEL_292;
                    }

                    if (!v217)
                    {
                      break;
                    }

                    sub_298B9AE98(&v212);
                    v127 = v214;
                    if (v214 < __dst[1])
                    {
                      goto LABEL_292;
                    }
                  }

                  v219[0] = v124;
LABEL_333:
                  sub_298B9BB84(&v212);
                }
              }

LABEL_295:
              v73 = v26 == *(v17 + 72);
LABEL_296:
              v21 = !v73;
              *&v212 = &unk_2A1F1DEC8;
              if (v217 == 1 && __dst[0])
              {
                MEMORY[0x29C2945C0](__dst[0], 0x1000C8077774924);
              }

LABEL_30:
              if ((v21 & (v20 == 0)) != 0)
              {
                v20 = v17;
              }

              v17 = *(v17 + 8);
            }

            while (v17 != v207);
            if (!v20)
            {
              goto LABEL_20;
            }

            v145 = *(a2 + 42);
            if (v145)
            {
              v146 = *(v20 + 16);
              v147 = a2[19];
              v148 = v145 - 1;
              v149 = ((v146 >> 4) ^ (v146 >> 9)) & v148;
              v19 = &v147[2 * v149];
              v150 = *v19;
              if (*v19 == v146)
              {
                v151 = ((v146 >> 4) ^ (v146 >> 9)) & v148;
LABEL_338:
                v152 = v147[2 * v151 + 1];
                if (v152 && *(v20 + 40) <= *(v152 + 40))
                {
                  if (*(v146 + 112) == v20)
                  {
                    v153 = 0;
                  }

                  else
                  {
                    v153 = *v20;
                  }

                  *&v212 = *(v20 + 16);
                  if (v150 != v146)
                  {
                    v154 = 0;
                    v155 = 1;
                    while (v150 != -4096)
                    {
                      if (v154)
                      {
                        v156 = 0;
                      }

                      else
                      {
                        v156 = v150 == -8192;
                      }

                      if (v156)
                      {
                        v154 = v19;
                      }

                      v157 = v149 + v155++;
                      v149 = v157 & v148;
                      v19 = &v147[2 * v149];
                      v150 = *v19;
                      if (v146 == *v19)
                      {
                        goto LABEL_26;
                      }
                    }

                    if (v154)
                    {
                      v18 = v154;
                    }

                    else
                    {
                      v18 = v19;
                    }

                    v19 = sub_298B26F04(a2 + 38, &v212, &v212, v18);
                    *v19 = v212;
                    v19[1] = 0;
                  }

LABEL_26:
                  v19[1] = v153;
                }
              }

              else
              {
                v158 = 1;
                v159 = *v19;
                LODWORD(v151) = ((v146 >> 4) ^ (v146 >> 9)) & v148;
                while (v159 != -4096)
                {
                  v160 = v151 + v158++;
                  v151 = v160 & v148;
                  v159 = v147[2 * v151];
                  if (v159 == v146)
                  {
                    goto LABEL_338;
                  }
                }
              }
            }

            v17 = *(v203 + 112);
            v202 = 1;
          }

          while (v17 != v207);
          v14 = v201 + 8;
          v202 = 1;
          if (v201 + 8 == v200)
          {
            goto LABEL_358;
          }
        }

LABEL_20:
        v14 = v201 + 8;
      }

      while (v201 + 8 != v200);
      if ((v202 & 1) == 0)
      {
        goto LABEL_390;
      }

LABEL_358:
      if (*(*a1 + 2056))
      {
        goto LABEL_426;
      }

      v14 = a1[4];
      v15 = a1[5];
      if (v14 != v15 && *(a2 + 42))
      {
        do
        {
          v163 = *(a2 + 42);
          if (v163)
          {
            v164 = *(*v14 + 112);
            v165 = v164[2];
            v166 = a2[19];
            v167 = v163 - 1;
            v168 = ((v165 >> 4) ^ (v165 >> 9)) & v167;
            v162 = &v166[2 * v168];
            v169 = *v162;
            if (*v162 == v165)
            {
              v170 = ((v165 >> 4) ^ (v165 >> 9)) & v167;
LABEL_371:
              v171 = v166[2 * v170 + 1];
              if (v171 && *(v164 + 10) <= *(v171 + 40))
              {
                if (*(v165 + 112) == v164)
                {
                  v172 = 0;
                }

                else
                {
                  v172 = *v164;
                }

                *&v212 = v164[2];
                if (v169 != v165)
                {
                  v173 = 0;
                  v174 = 1;
                  while (v169 != -4096)
                  {
                    if (v173)
                    {
                      v175 = 0;
                    }

                    else
                    {
                      v175 = v169 == -8192;
                    }

                    if (v175)
                    {
                      v173 = v162;
                    }

                    v176 = v168 + v174++;
                    v168 = v176 & v167;
                    v162 = &v166[2 * v168];
                    v169 = *v162;
                    if (v165 == *v162)
                    {
                      goto LABEL_366;
                    }
                  }

                  if (v173)
                  {
                    v161 = v173;
                  }

                  else
                  {
                    v161 = v162;
                  }

                  v162 = sub_298B26F04(a2 + 38, &v212, &v212, v161);
                  *v162 = v212;
                  v162[1] = 0;
                }

LABEL_366:
                v162[1] = v172;
              }
            }

            else
            {
              v177 = 1;
              v178 = *v162;
              LODWORD(v170) = ((v165 >> 4) ^ (v165 >> 9)) & v167;
              while (v178 != -4096)
              {
                v179 = v170 + v177++;
                v170 = v179 & v167;
                v178 = v166[2 * v170];
                if (v178 == v165)
                {
                  goto LABEL_371;
                }
              }
            }
          }

          v14 += 8;
        }

        while (v14 != v15);
        v14 = a1[4];
        v15 = a1[5];
      }

      if (v14 == v15)
      {
LABEL_390:
        LODWORD(v7) = *(a2 + 4);
        break;
      }
    }
  }

  if (v7)
  {
    v180 = 0;
    v181 = 8 * v7;
    do
    {
      v182 = a2[1][v180 / 8];
      sub_298B45F80(a2, *(v182 + 104));
      sub_298B24A18(a1, a2, *(v182 + 104));
      v180 += 8;
    }

    while (v181 != v180);
  }

  (*(*a1[1] + 216))(a1[1], a1, a2);
  (*(*a1[3] + 24))(a1[3], a1, a2);
  v183 = a1[4];
  v184 = a1[5];
  v204 = v184;
  while (v183 != v184)
  {
    v206 = v183;
    v185 = *v183;
    v186 = v185 + 104;
    v208 = v185;
    v187 = *(v185 + 112);
    if (v187 != v185 + 104)
    {
      do
      {
        while (1)
        {
          v188 = *(v187 + 48);
          if (v188 <= 7)
          {
            break;
          }

          if (*(v187 + 48) > 0xCu)
          {
            if (v188 == 13)
            {
              v191 = 0;
              v189 = (v187 + 120);
              v190 = (v187 + 128);
LABEL_415:
              v192 = *v190;
              if (v192)
              {
                v193 = *v189;
                v195 = *(v187 + 64);
                v194 = *(v187 + 72);
                v196 = 24 * v192;
                do
                {
                  memset(v209, 0, 28);
                  v212 = 0uLL;
                  LODWORD(__dst[1]) = 0;
                  __dst[0] = 0;
                  v211 = 0;
                  v210 = 0;
                  v197 = sub_298B244B4(a1, a2, v193, v187, &v212, v191, &v211, &v210);
                  if ((v197 & 1) == 0)
                  {
                    v198 = a1[3];
                    *v219 = v212;
                    *&v219[16] = *__dst;
                    (*(*v198 + 32))(v198, a1, a2, v187, v193, v219, &v211);
                  }

                  *v219 = v212;
                  *&v219[16] = *__dst;
                  v209[0] = v212;
                  *(v209 + 12) = *&v219[12];
                  (*(*a1[1] + 128))(a1[1], a1, v193, v209, v195, v194, v211, v197, v191);
                  v193 += 24;
                  v196 -= 24;
                }

                while (v196);
              }

              goto LABEL_399;
            }

            if (v188 == 14)
            {
              goto LABEL_414;
            }
          }

          else if (v188 == 8 || v188 == 9)
          {
LABEL_414:
            v191 = 0;
            v189 = (v187 + 96);
            v190 = (v187 + 104);
            goto LABEL_415;
          }

LABEL_399:
          v187 = *(v187 + 8);
          if (v187 == v186)
          {
            goto LABEL_395;
          }
        }

        if (*(v187 + 48) > 4u)
        {
          if (v188 == 5)
          {
            v189 = (v187 + 96);
            v190 = (v187 + 104);
            v191 = *(v187 + 56);
            goto LABEL_415;
          }

          if (v188 == 7)
          {
            goto LABEL_414;
          }

          goto LABEL_399;
        }

        if (*(v187 + 48))
        {
          if (v188 == 1)
          {
            v189 = (v187 + 120);
            v190 = (v187 + 128);
            v191 = *(v187 + 56);
            goto LABEL_415;
          }

          goto LABEL_399;
        }

        if (!(*(*v208 + 8))(v208) || (*(v187 + 53) & 1) == 0)
        {
          goto LABEL_399;
        }

        (*(*a1[1] + 104))(a1[1], a1, a2, v187);
        v187 = *(v187 + 8);
      }

      while (v187 != v186);
    }

LABEL_395:
    v184 = v204;
    v183 = v206 + 1;
  }

LABEL_426:
  v199 = *MEMORY[0x29EDCA608];
}

void *sub_298B26F04(_DWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a1[2];
  v5 = a1[4];
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B2709C(a1, 2 * v5);
    v10 = *a3;
    v11 = v8[4] - 1;
    v12 = ((*a3 >> 4) ^ (*a3 >> 9)) & v11;
    a4 = (*v8 + 16 * v12);
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -8192;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = (*v8 + 16 * v12);
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - a1[3] > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B2709C(a1, v5);
    v10 = *a3;
    v19 = v8[4] - 1;
    v20 = ((*a3 >> 4) ^ (*a3 >> 9)) & v19;
    a4 = (*v8 + 16 * v20);
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++v8[2];
      if (v10 == -4096)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -4096)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -8192;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = (*v8 + 16 * v20);
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++a1[2];
  if (v6 != -4096)
  {
LABEL_4:
    --a1[3];
  }

  return a4;
}

void *sub_298B2709C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = (*a1 + 16 * v25);
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = (*a1 + 16 * (v30 & v16));
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = v17[1];
          *(a1 + 8) = ++v15;
        }

        v17 += 2;
      }

      while (v17 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t sub_298B272AC(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = v2[15];
      if (v3 != v2 + 17)
      {
        free(v3);
      }

      v4 = v2[8];
      if (v4 != v2 + 11)
      {
        free(v4);
      }

      MEMORY[0x29C2945F0](v2, 0x10E0C40A0F9ED01);
    }
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    v6 = *(a1 + 240);
    v7 = *(a1 + 232);
    if (v6 != v5)
    {
      do
      {
        v8 = v6 - 48;
        MEMORY[0x29C2945E0](*(v6 - 24), 4);
        v6 = v8;
      }

      while (v8 != v5);
      v7 = *(a1 + 232);
    }

    *(a1 + 240) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    *(a1 + 216) = v9;
    operator delete(v9);
  }

  sub_298B2B0DC(*(a1 + 192));
  v10 = *(a1 + 40);
  if (v10 != (a1 + 56))
  {
    free(v10);
  }

  if (*(a1 + 12))
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 0;
      v13 = 8 * v11;
      do
      {
        v14 = *(*a1 + v12);
        if (v14 != -8 && v14 != 0)
        {
          MEMORY[0x29C2945E0]();
        }

        v12 += 8;
      }

      while (v13 != v12);
    }
  }

  free(*a1);
  return a1;
}