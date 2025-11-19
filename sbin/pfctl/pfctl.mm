uint64_t sub_1000006C8(_DWORD *a1, int a2, int a3)
{
  v6 = *(a1 + 40);
  if (v6 <= 2)
  {
    if (!*(a1 + 40))
    {
      if (!*a1 && !a1[1] && !a1[2] && !a1[3] && !a1[4] && !a1[5] && !a1[6] && !a1[7])
      {
        result = printf("any");
        goto LABEL_56;
      }

      if (inet_ntop(a2, a1, v18, 0x30u))
      {
        result = printf("%s");
        goto LABEL_56;
      }

      v10 = 63;
LABEL_55:
      result = putchar(v10);
      goto LABEL_56;
    }

    if (v6 == 1)
    {
      v9 = "no-route";
      goto LABEL_37;
    }

    if (v6 != 2)
    {
LABEL_29:

      return putchar(63);
    }

    printf("(%s", a1);
    v8 = *(a1 + 41);
    if (v8)
    {
      printf(":network");
      v8 = *(a1 + 41);
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_42;
      }
    }

    else if ((*(a1 + 41) & 2) == 0)
    {
      goto LABEL_11;
    }

    printf(":broadcast");
    v8 = *(a1 + 41);
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }

LABEL_42:
    printf(":peer");
    if ((*(a1 + 41) & 8) == 0)
    {
LABEL_13:
      if (!a3)
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

LABEL_43:
    printf(":0");
    if (!a3)
    {
LABEL_54:
      v10 = 41;
      goto LABEL_55;
    }

LABEL_44:
    if (a1[8] <= 0)
    {
      printf(":*");
    }

    else
    {
      printf(":%d");
    }

    goto LABEL_54;
  }

  if (*(a1 + 40) <= 4u)
  {
    if (v6 == 3)
    {
      if (!a3)
      {
        return printf("<%s>");
      }

      if (a1[8] == -1)
      {
        return printf("<%s:*>");
      }

      return printf("<%s:%d>");
    }

    if (v6 == 4)
    {
      return printf("route %s");
    }

    goto LABEL_29;
  }

  if (v6 == 5)
  {
    v9 = "urpf-failed";
LABEL_37:

    return printf(v9);
  }

  if (v6 != 6)
  {
    goto LABEL_29;
  }

  if (inet_ntop(a2, a1, v18, 0x30u))
  {
    printf("%s", v18);
  }

  else
  {
    putchar(63);
  }

  if (inet_ntop(a2, a1 + 4, v18, 0x30u))
  {
    result = printf(" - %s");
  }

  else
  {
    result = printf(" - ?");
  }

LABEL_56:
  if (*(a1 + 40) != 6 && (*a1 || a1[1] || a1[2] || a1[3] || a1[4] || a1[5] || a1[6] || a1[7]))
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = a1[v11 + 4];
      if (v13 != -1)
      {
        break;
      }

      v12 += 32;
      if (++v11 == 4)
      {
        v12 = 128;
        goto LABEL_73;
      }
    }

    v14 = bswap32(v13);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v15-- + 30;
      }

      while (((v14 >> v16) & 1) != 0);
      v12 -= v15;
    }

LABEL_73:
    if (a2 == 2)
    {
      v17 = 32;
    }

    else
    {
      v17 = 128;
    }

    if (v12 != v17)
    {
      return printf("/%d");
    }
  }

  return result;
}

uint64_t sub_100000ACC(uint64_t a1)
{
  v2 = 0;
  result = 0;
  while (1)
  {
    v4 = *(a1 + v2);
    if (v4 != -1)
    {
      break;
    }

    v2 += 4;
    result = (result + 32);
    if (v2 == 16)
    {
      return 128;
    }
  }

  v5 = bswap32(v4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 0;
    do
    {
      v7 = v6-- + 30;
    }

    while (((v5 >> v7) & 1) != 0);
    return (result - v6);
  }

  return result;
}

uint64_t sub_100000B24(_OWORD *a1, int a2)
{
  __strlcpy_chk();
  if (a2 == 30)
  {
    *&v6[8] = 0uLL;
    v7 = 0;
    *v6 = 7708;
    *&v6[8] = *a1;
    v4 = 28;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    *&v6[8] = 0;
    *v6 = 528;
    *&v6[4] = *a1;
    v4 = 16;
LABEL_5:
    getnameinfo(v6, v4, v8, 0x401u, 0, 0, 1);
  }

  return printf("%s", v8);
}

uint64_t sub_100000C20(__int128 *a1, int a2, int a3, int a4, unsigned __int8 a5)
{
  v7 = a2;
  if (a2 == 2)
  {
    v9 = ":%u";
  }

  else
  {
    v9 = "[%u]";
  }

  v17 = *a1;
  if ((a5 & 0x40) != 0)
  {
    result = sub_100000B24(&v17, a2);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = *a1;
    if (a2 == 2)
    {
      LODWORD(v15) = -1;
    }

    else
    {
      *&v15 = -1;
      *(&v15 + 1) = -1;
      v7 = 30;
    }

    result = sub_1000006C8(&v14, v7, a5 & 0x80);
  }

  if (a3 > 46)
  {
    switch(a3)
    {
      case '/':
        if (a4 != 1)
        {
          return result;
        }

        break;
      case '2':
        if (v7 == 2)
        {
          v13 = ":%08x";
        }

        else
        {
          v13 = "[%08x]";
        }

        v11 = fmtcheck(v13, "%uh");
        v12 = *(a1 + 4);
        return printf(v11, bswap32(v12) >> 16);
      case ':':
        break;
      default:
        return result;
    }

LABEL_21:
    v11 = fmtcheck(v9, "%uh");
    v12 = *(a1 + 8);
    return printf(v11, bswap32(v12) >> 16);
  }

  if (a3 == 1 || (a3 == 6 || a3 == 17) && *(a1 + 8))
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100000D7C(uint64_t a1, int a2, int a3, int a4, unsigned __int8 a5)
{
  if (a3 == 17)
  {
    if (a2 == 2)
    {
      v9 = ":%u";
    }

    else
    {
      v9 = "[%u]";
    }

    v16 = *a1;
    if (a4 == 3)
    {
      putchar(126);
    }

    if ((a5 & 0x40) != 0)
    {
      sub_100000B24(&v16, a2);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = v16;
      if (a2 == 2)
      {
        LODWORD(v14) = -1;
        v10 = 2;
      }

      else
      {
        *&v14 = -1;
        *(&v14 + 1) = -1;
        v10 = 30;
      }

      sub_1000006C8(&v13, v10, a5 & 0x80);
    }

    if (a4 == 2)
    {
      putchar(126);
    }

    v12 = fmtcheck(v9, "%uh");
    return printf(v12, bswap32(*(a1 + 16)) >> 16);
  }

  else
  {

    return sub_100000C20(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100000EBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return printf("[%u + %u](+%u)");
  }

  else
  {
    return printf("[%u + %u]");
  }
}

uint64_t sub_100000F0C(unsigned int *a1, unsigned __int8 a2)
{
  v4 = *(a1 + 285);
  if (v4 == 2)
  {
    v5 = (a1 + 30);
  }

  else
  {
    v5 = (a1 + 38);
  }

  if (v4 == 2)
  {
    v6 = (a1 + 38);
  }

  else
  {
    v6 = (a1 + 30);
  }

  printf("%s ", a1 + 8);
  if (getprotobynumber(*(a1 + 284)))
  {
    printf("%s ");
  }

  else
  {
    printf("%u ");
  }

  v7 = *(a1 + 284);
  if (v7 == 47)
  {
    if (*(a1 + 291) == 1)
    {
      printf("pptp ");
      v7 = *(a1 + 284);
    }

    else
    {
      v7 = 47;
    }
  }

  sub_100000C20((a1 + 6), *(a1 + 282), v7, *(a1 + 291), a2);
  v8 = *(a1 + 282);
  if (v8 != *(a1 + 283) || (v9 = a1[12], v10 = a1[6], v8 == 2) && v10 != v9 || v8 == 30 && (a1[9] != a1[15] || a1[8] != a1[14] || a1[7] != a1[13] || v10 != v9))
  {
    if (*(a1 + 285) == 2)
    {
      printf(" -> ");
    }

    else
    {
      printf(" <- ");
    }

    sub_100000C20(a1 + 3, *(a1 + 283), *(a1 + 284), *(a1 + 291), a2);
  }

  if (*(a1 + 285) == 2)
  {
    printf(" -> ");
  }

  else
  {
    printf(" <- ");
  }

  sub_100000D7C((a1 + 24), *(a1 + 283), *(a1 + 284), *(a1 + 291), a2);
  printf("    ");
  v11 = *(a1 + 284);
  v12 = *(v5 + 24);
  if (v11 > 0x10)
  {
    if (v11 == 17)
    {
      if (v12 <= 2)
      {
        if (*(v6 + 24) <= 2uLL)
        {
          goto LABEL_45;
        }

LABEL_44:
        if (*(v6 + 24) <= 2uLL)
        {
LABEL_45:
          result = printf("   %s:%s\n");
          goto LABEL_47;
        }
      }

LABEL_46:
      result = printf("   %u:%u\n");
      goto LABEL_47;
    }

    if (v11 == 47 || v11 == 50)
    {
      goto LABEL_45;
    }

LABEL_43:
    if (v12 <= 2)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (v11 == 1)
  {
    goto LABEL_46;
  }

  if (v11 != 6)
  {
    goto LABEL_43;
  }

  if (v12 > 0xA)
  {
    if (v12 == 11)
    {
LABEL_69:
      v24 = "   PROXY:SRC";
      goto LABEL_70;
    }

    v13 = *(v6 + 24);
  }

  else
  {
    v13 = *(v6 + 24);
    if (v13 <= 0xA)
    {
      result = printf("   %s:%s\n");
      goto LABEL_75;
    }
  }

  if (v13 == 11)
  {
    goto LABEL_69;
  }

  if (v12 != 12 && v13 != 12)
  {
    result = printf("   <BAD STATE LEVELS %u:%u>\n");
LABEL_75:
    if ((a2 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

  v24 = "   PROXY:DST";
LABEL_70:
  result = puts(v24);
  if ((a2 & 4) == 0)
  {
    goto LABEL_47;
  }

LABEL_76:
  printf("   ");
  sub_100000EBC(v5);
  if (*(v5 + 25) && *(v6 + 25))
  {
    printf(" wscale %u", *(v5 + 25) & 0xF);
  }

  printf("  ");
  sub_100000EBC(v6);
  if (*(v5 + 25) && *(v6 + 25))
  {
    printf(" wscale %u", *(v6 + 25) & 0xF);
  }

  result = putchar(10);
LABEL_47:
  if ((a2 & 4) == 0)
  {
    if ((a2 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

  v17 = *(a1 + 57);
  v18 = v17 % 0x3C;
  v19 = v17 / 0x3C - 60 * (((v17 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
  v17 /= 0xE10uLL;
  *(a1 + 57) = v17;
  printf("   age %.2llu:%.2u:%.2u", v17, v19, v18);
  v20 = *(a1 + 59);
  v21 = v20 % 0x3C;
  v22 = v20 / 0x3C - 60 * (((v20 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
  v20 /= 0xE10uLL;
  *(a1 + 59) = v20;
  printf(", expires in %.2llu:%.2u:%.2u", v20, v22, v21);
  printf(", %llu:%llu pkts, %llu:%llu bytes", a1[62] | (a1[61] << 32), a1[64] | (a1[63] << 32), a1[66] | (a1[65] << 32), a1[68] | (a1[67] << 32));
  if (a1[55] != -1)
  {
    printf(", anchor %u", a1[55]);
  }

  if (a1[54] != -1)
  {
    printf(", rule %u", a1[54]);
  }

  v23 = *(a1 + 289);
  if ((v23 & 4) != 0)
  {
    printf(", source-track");
    v23 = *(a1 + 289);
  }

  if ((v23 & 8) != 0)
  {
    printf(", sticky-address");
  }

  if (*(a1 + 140))
  {
    printf(", tag %hu", *(a1 + 140));
  }

  printf(", flowhash 0x%08x", *(a1 + 293));
  result = putchar(10);
  if ((a2 & 0x80) != 0)
  {
LABEL_49:
    v15 = bswap32(a1[69]);
    if (*(a1 + 289))
    {
      v16 = " (no-sync)";
    }

    else
    {
      v16 = "";
    }

    return printf("   id: %016llx creatorid: %08x%s\n", a1[1] | (*a1 << 32), v15, v16);
  }

  return result;
}

uint64_t sub_10000143C(uint64_t result, unint64_t a2)
{
  v2 = *(a2 + 16);
  while (1)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      break;
    }

    v4 = v3[2];
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    if (v6 == v3)
    {
      v11 = v5[1];
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          *(v11 + 16) = v12 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_19;
        }
      }

      v13 = v3[1];
      if (v13 == a2)
      {
        v18 = *v13;
        v3[1] = *v13;
        if (v18)
        {
          v19 = v2 | 1;
          if ((*(v18 + 16) & 1) == 0)
          {
            v19 = v3;
          }

          *(v18 + 16) = v19;
          v20 = v3[2];
        }

        else
        {
          v20 = v4;
        }

        v13[2] = v20 & 0xFFFFFFFFFFFFFFFELL | v13[2] & 1;
        if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v29 = v3[2];
          v30 = (v29 & 0xFFFFFFFFFFFFFFFELL);
          if (*(v29 & 0xFFFFFFFFFFFFFFFELL) == v3)
          {
            *v30 = v13;
          }

          else
          {
            v30[1] = v13;
          }
        }

        else
        {
          *result = v13;
          v29 = v3[2];
        }

        *v13 = v3;
        if (v29)
        {
          v13 = (a2 | 1);
        }

        v3[2] = v13;
        v6 = *v5;
        v14 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v14 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v3;
      }

      *(a2 + 16) = v14;
      v31 = v5[2] | 1;
      v5[2] = v31;
      v32 = *(v6 + 8);
      *v5 = v32;
      if (v32)
      {
        if ((*(v32 + 16) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v32 + 16) = v4;
        v31 = v5[2];
      }

      *(v6 + 16) = v31 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
      if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v33 = v5[2];
        v34 = (v33 & 0xFFFFFFFFFFFFFFFELL);
        if (*(v33 & 0xFFFFFFFFFFFFFFFELL) == v5)
        {
          *v34 = v6;
        }

        else
        {
          v34[1] = v6;
        }
      }

      else
      {
        *result = v6;
        v33 = v5[2];
      }

      *(v6 + 8) = v5;
      if (v33)
      {
        v28 = v6 | 1;
      }

      else
      {
        v28 = v6;
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          *(v6 + 16) = v7 & 0xFFFFFFFFFFFFFFFELL;
LABEL_19:
          v3[2] &= ~1uLL;
          v5[2] |= 1uLL;
          v10 = v4 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_67;
        }
      }

      v8 = *v3;
      if (*v3 == a2)
      {
        v15 = *(v8 + 8);
        *v3 = v15;
        if (v15)
        {
          v16 = v2 | 1;
          if ((*(v15 + 16) & 1) == 0)
          {
            v16 = v3;
          }

          *(v15 + 16) = v16;
          v17 = v3[2];
        }

        else
        {
          v17 = v4;
        }

        *(v8 + 16) = v17 & 0xFFFFFFFFFFFFFFFELL | *(v8 + 16) & 1;
        if ((v17 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v21 = v3[2];
          v22 = (v21 & 0xFFFFFFFFFFFFFFFELL);
          if (*(v21 & 0xFFFFFFFFFFFFFFFELL) == v3)
          {
            *v22 = v8;
          }

          else
          {
            v22[1] = v8;
          }
        }

        else
        {
          *result = v8;
          v21 = v3[2];
        }

        *(v8 + 8) = v3;
        if (v21)
        {
          v8 = a2 | 1;
        }

        v3[2] = v8;
        v9 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v9 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      *(a2 + 16) = v9;
      v23 = v5[1];
      v24 = v5[2] | 1;
      v25 = *v23;
      v5[1] = *v23;
      v5[2] = v24;
      if (v25)
      {
        if ((*(v25 + 16) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v25 + 16) = v4;
        v24 = v5[2];
      }

      *(v23 + 16) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 16) & 1;
      if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v26 = v5[2];
        v27 = (v26 & 0xFFFFFFFFFFFFFFFELL);
        if (*(v26 & 0xFFFFFFFFFFFFFFFELL) == v5)
        {
          *v27 = v23;
        }

        else
        {
          v27[1] = v23;
        }
      }

      else
      {
        *result = v23;
        v26 = v5[2];
      }

      *v23 = v5;
      if (v26)
      {
        v28 = v23 | 1;
      }

      else
      {
        v28 = v23;
      }
    }

    v5[2] = v28;
LABEL_67:
    v2 = *(v10 + 16);
    a2 = v10;
  }

  *(*result + 16) &= ~1uLL;
  return result;
}

unint64_t *sub_100001728(unint64_t *result, unint64_t a2, unint64_t a3)
{
  while (1)
  {
    v3 = a3;
    a3 = a2;
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }
    }

    v5 = *result;
    if (v3 == *result)
    {
      goto LABEL_107;
    }

    v6 = *a2;
    if (*a2 == v3)
    {
      v6 = *(a2 + 8);
      v13 = *(v6 + 16);
      if (v13)
      {
        *(v6 + 16) = v13 & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(a2 + 16) | 1;
        v15 = *v6;
        *(a2 + 8) = *v6;
        *(a2 + 16) = v14;
        if (v15)
        {
          if (v15[2])
          {
            v16 = a2 | 1;
          }

          else
          {
            v16 = a2;
          }

          v15[2] = v16;
          v14 = *(a2 + 16);
        }

        *(v6 + 16) = v14 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
        if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v17 = *(a2 + 16);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v17 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v18 = v6;
          }

          else
          {
            v18[1] = v6;
            v15 = *(a2 + 8);
          }
        }

        else
        {
          *result = v6;
          v17 = *(a2 + 16);
          v5 = v6;
        }

        *v6 = a2;
        if (v17)
        {
          v6 |= 1uLL;
        }

        *(a2 + 16) = v6;
        v6 = v15;
      }

      v22 = *v6;
      if (*v6 && (*(v22 + 16) & 1) != 0)
      {
        v23 = *(v6 + 8);
        if (!v23)
        {
          goto LABEL_60;
        }

LABEL_58:
        if ((*(v23 + 16) & 1) == 0)
        {
          if (v22)
          {
LABEL_60:
            *(v22 + 16) &= ~1uLL;
          }

          v30 = *(v6 + 16) | 1;
          *(v6 + 16) = v30;
          v31 = *(v22 + 8);
          *v6 = v31;
          if (v31)
          {
            if (*(v31 + 16))
            {
              v32 = v6 | 1;
            }

            else
            {
              v32 = v6;
            }

            *(v31 + 16) = v32;
            v30 = *(v6 + 16);
          }

          *(v22 + 16) = v30 & 0xFFFFFFFFFFFFFFFELL | *(v22 + 16) & 1;
          if ((v30 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v33 = *(v6 + 16);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFELL);
            if (v6 == *(v33 & 0xFFFFFFFFFFFFFFFELL))
            {
              *v34 = v22;
            }

            else
            {
              v34[1] = v22;
            }
          }

          else
          {
            *result = v22;
            v33 = *(v6 + 16);
            v5 = v22;
          }

          *(v22 + 8) = v6;
          if (v33)
          {
            v22 |= 1uLL;
          }

          *(v6 + 16) = v22;
          v6 = *(a2 + 8);
          v23 = *(v6 + 8);
        }

        *(v6 + 16) = *(v6 + 16) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 16) & 1;
        *(a2 + 16) &= ~1uLL;
        if (v23)
        {
          *(v23 + 16) &= ~1uLL;
        }

        v40 = *v6;
        *(a2 + 8) = *v6;
        if (v40)
        {
          if (v40[2])
          {
            v41 = a2 | 1;
          }

          else
          {
            v41 = a2;
          }

          v40[2] = v41;
        }

        v42 = *(a2 + 16);
        *(v6 + 16) = v42 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
        if ((v42 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v38 = *(a2 + 16);
          v43 = (v38 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v38 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v43 = v6;
          }

          else
          {
            v43[1] = v6;
          }

          v29 = v6;
        }

        else
        {
          *result = v6;
          v38 = *(a2 + 16);
          v29 = v6;
          v5 = v6;
        }

        goto LABEL_104;
      }

      v23 = *(v6 + 8);
      if (v23 && (*(v23 + 16) & 1) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        *(v6 + 16) = v7 & 0xFFFFFFFFFFFFFFFELL;
        v8 = *(a2 + 16) | 1;
        *(a2 + 16) = v8;
        v9 = *(v6 + 8);
        *a2 = v9;
        if (v9)
        {
          if (v9[2])
          {
            v10 = a2 | 1;
          }

          else
          {
            v10 = a2;
          }

          v9[2] = v10;
          v8 = *(a2 + 16);
        }

        *(v6 + 16) = v8 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
        if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v11 = *(a2 + 16);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v11 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v12 = v6;
            v9 = *a2;
          }

          else
          {
            v12[1] = v6;
          }
        }

        else
        {
          *result = v6;
          v11 = *(a2 + 16);
          v5 = v6;
        }

        *(v6 + 8) = a2;
        if (v11)
        {
          v6 |= 1uLL;
        }

        *(a2 + 16) = v6;
        v6 = v9;
      }

      v19 = *v6;
      if (*v6)
      {
        v20 = v19[2];
        if (v20)
        {
          goto LABEL_45;
        }
      }

      v21 = *(v6 + 8);
      if (v21 && (*(v21 + 16) & 1) != 0)
      {
        if (!v19)
        {
          goto LABEL_47;
        }

        v20 = v19[2];
LABEL_45:
        if (v20)
        {
          v29 = v6;
        }

        else
        {
          v21 = *(v6 + 8);
          if (v21)
          {
LABEL_47:
            *(v21 + 16) &= ~1uLL;
          }

          v24 = *(v6 + 16) | 1;
          v25 = *v21;
          *(v6 + 8) = *v21;
          *(v6 + 16) = v24;
          if (v25)
          {
            if (*(v25 + 16))
            {
              v26 = v6 | 1;
            }

            else
            {
              v26 = v6;
            }

            *(v25 + 16) = v26;
            v24 = *(v6 + 16);
          }

          *(v21 + 16) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v21 + 16) & 1;
          if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v27 = *(v6 + 16);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFELL);
            if (v6 == *(v27 & 0xFFFFFFFFFFFFFFFELL))
            {
              *v28 = v21;
            }

            else
            {
              v28[1] = v21;
            }
          }

          else
          {
            *result = v21;
            v27 = *(v6 + 16);
            v5 = v21;
          }

          *v21 = v6;
          if (v27)
          {
            v21 |= 1uLL;
          }

          *(v6 + 16) = v21;
          v29 = *a2;
          v19 = **a2;
        }

        *(v29 + 16) = *(v29 + 16) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 16) & 1;
        *(a2 + 16) &= ~1uLL;
        if (v19)
        {
          v19[2] &= ~1uLL;
        }

        v6 = v29 + 8;
        v35 = *(v29 + 8);
        *a2 = v35;
        if (v35)
        {
          if (*(v35 + 16))
          {
            v36 = a2 | 1;
          }

          else
          {
            v36 = a2;
          }

          *(v35 + 16) = v36;
        }

        v37 = *(a2 + 16);
        *(v29 + 16) = v37 & 0xFFFFFFFFFFFFFFFELL | *(v29 + 16) & 1;
        if ((v37 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v38 = *(a2 + 16);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v38 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v39 = v29;
          }

          else
          {
            v39[1] = v29;
          }
        }

        else
        {
          *result = v29;
          v38 = *(a2 + 16);
          v5 = v29;
        }

LABEL_104:
        *v6 = a2;
        v44 = v29 | 1;
        if ((v38 & 1) == 0)
        {
          v44 = v29;
        }

        *(a2 + 16) = v44;
        v3 = v5;
LABEL_107:
        if (!v3)
        {
          return result;
        }

        v4 = *(v3 + 16);
        break;
      }
    }

    *(v6 + 16) |= 1uLL;
    a2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_100001BB8(unint64_t *a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!*a2)
  {
    v10 = (a2[2] & 0xFFFFFFFFFFFFFFFELL);
    v18 = a2[2] & 1;
    if (!v3)
    {
      if (!v10)
      {
LABEL_36:
        v19 = a1;
LABEL_37:
        *v19 = v3;
        if (v18)
        {
          return a2;
        }

LABEL_38:
        sub_100001728(a1, v10, v3);
        return a2;
      }

LABEL_30:
      v19 = &v10[8 * (*v10 != a2)];
      goto LABEL_37;
    }

LABEL_32:
    if (v3[2])
    {
      v20 = v10 + 1;
    }

    else
    {
      v20 = v10;
    }

    v3[2] = v20;
    if (!v10)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!v3)
  {
    v10 = (a2[2] & 0xFFFFFFFFFFFFFFFELL);
    v18 = a2[2] & 1;
    v3 = v4;
    goto LABEL_32;
  }

  do
  {
    v5 = v3;
    v3 = *v3;
  }

  while (v3);
  v3 = *(v5 + 8);
  v6 = *(v5 + 16);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  if (v3)
  {
    if (v3[2])
    {
      v8 = v6 | 1;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    }

    v3[2] = v8;
  }

  v9 = a1;
  if (v7)
  {
    v9 = &v7[*v7 != v5];
  }

  *v9 = v3;
  if ((*(v5 + 16) & 0xFFFFFFFFFFFFFFFELL) == a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  v11 = a2[2];
  *v5 = *a2;
  *(v5 + 16) = v11;
  v12 = a1;
  if ((a2[2] & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v12 = ((a2[2] & 0xFFFFFFFFFFFFFFFELL) + 8 * (*(a2[2] & 0xFFFFFFFFFFFFFFFELL) != a2));
  }

  v13 = v6 & 1;
  *v12 = v5;
  v14 = a2[1];
  if (*(*a2 + 16))
  {
    v15 = v5 | 1;
  }

  else
  {
    v15 = v5;
  }

  *(*a2 + 16) = v15;
  if (v14)
  {
    if (*(v14 + 16))
    {
      v5 |= 1uLL;
    }

    *(v14 + 16) = v5;
  }

  if (v10)
  {
    v16 = v10;
    do
    {
      v16 = *(v16 + 16) & 0xFFFFFFFFFFFFFFFELL;
    }

    while (v16);
  }

  if (!v13)
  {
    goto LABEL_38;
  }

  return a2;
}

unint64_t sub_100001D1C(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      v6 = strcmp((a2 + 128), (v4 + 128));
      v7 = v5;
      if ((v6 & 0x80000000) == 0)
      {
        if (!v6)
        {
          return v5;
        }

        v7 = (v5 + 8);
      }

      v4 = *v7;
    }

    while (v4);
    v8 = 8 * (v6 >= 0);
  }

  else
  {
    v5 = 0;
    v8 = 8;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5 | 1;
  v9 = (v5 + v8);
  if (!v5)
  {
    v9 = a1;
  }

  *v9 = a2;
  sub_10000143C(a1, a2);
  return 0;
}

const char *sub_100001DC0(const char **a1, uint64_t a2)
{
  for (i = *a1; i; i = *i)
  {
    v4 = strcmp((a2 + 128), i + 128);
    if ((v4 & 0x80000000) == 0)
    {
      if (!v4)
      {
        return i;
      }

      i += 8;
    }
  }

  return i;
}

uint64_t sub_100001E0C(uint64_t result, unint64_t a2)
{
  v2 = *(a2 + 40);
  while (1)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      break;
    }

    v4 = v3[5];
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 24);
    if (v6 == v3)
    {
      v11 = v5[4];
      if (v11)
      {
        v12 = *(v11 + 40);
        if (v12)
        {
          *(v11 + 40) = v12 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_19;
        }
      }

      v13 = v3[4];
      if (v13 == a2)
      {
        v18 = *(v13 + 24);
        v3[4] = v18;
        if (v18)
        {
          v19 = v2 | 1;
          if ((*(v18 + 40) & 1) == 0)
          {
            v19 = v3;
          }

          *(v18 + 40) = v19;
          v20 = v3[5];
        }

        else
        {
          v20 = v4;
        }

        *(v13 + 40) = v20 & 0xFFFFFFFFFFFFFFFELL | *(v13 + 40) & 1;
        if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v29 = v3[5];
          v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
          if (*((v29 & 0xFFFFFFFFFFFFFFFELL) + 24) == v3)
          {
            *(v30 + 24) = v13;
          }

          else
          {
            *(v30 + 32) = v13;
          }
        }

        else
        {
          *result = v13;
          v29 = v3[5];
        }

        *(v13 + 24) = v3;
        if (v29)
        {
          v13 = a2 | 1;
        }

        v3[5] = v13;
        v6 = v5[3];
        v14 = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v14 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v3;
      }

      *(a2 + 40) = v14;
      v31 = v5[5] | 1;
      v5[5] = v31;
      v32 = *(v6 + 32);
      v5[3] = v32;
      if (v32)
      {
        if ((*(v32 + 40) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v32 + 40) = v4;
        v31 = v5[5];
      }

      *(v6 + 40) = v31 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 40) & 1;
      if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v33 = v5[5];
        v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
        if (*((v33 & 0xFFFFFFFFFFFFFFFELL) + 24) == v5)
        {
          *(v34 + 24) = v6;
        }

        else
        {
          *(v34 + 32) = v6;
        }
      }

      else
      {
        *result = v6;
        v33 = v5[5];
      }

      *(v6 + 32) = v5;
      if (v33)
      {
        v28 = v6 | 1;
      }

      else
      {
        v28 = v6;
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 40);
        if (v7)
        {
          *(v6 + 40) = v7 & 0xFFFFFFFFFFFFFFFELL;
LABEL_19:
          v3[5] &= ~1uLL;
          v5[5] |= 1uLL;
          v10 = v4 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_67;
        }
      }

      v8 = v3[3];
      if (v8 == a2)
      {
        v15 = *(v8 + 32);
        v3[3] = v15;
        if (v15)
        {
          v16 = v2 | 1;
          if ((*(v15 + 40) & 1) == 0)
          {
            v16 = v3;
          }

          *(v15 + 40) = v16;
          v17 = v3[5];
        }

        else
        {
          v17 = v4;
        }

        *(v8 + 40) = v17 & 0xFFFFFFFFFFFFFFFELL | *(v8 + 40) & 1;
        if ((v17 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v21 = v3[5];
          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 24) == v3)
          {
            *(v22 + 24) = v8;
          }

          else
          {
            *(v22 + 32) = v8;
          }
        }

        else
        {
          *result = v8;
          v21 = v3[5];
        }

        *(v8 + 32) = v3;
        if (v21)
        {
          v8 = a2 | 1;
        }

        v3[5] = v8;
        v9 = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v9 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      *(a2 + 40) = v9;
      v23 = v5[4];
      v24 = v5[5] | 1;
      v25 = *(v23 + 24);
      v5[4] = v25;
      v5[5] = v24;
      if (v25)
      {
        if ((*(v25 + 40) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v25 + 40) = v4;
        v24 = v5[5];
      }

      *(v23 + 40) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 40) & 1;
      if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v26 = v5[5];
        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (*((v26 & 0xFFFFFFFFFFFFFFFELL) + 24) == v5)
        {
          *(v27 + 24) = v23;
        }

        else
        {
          *(v27 + 32) = v23;
        }
      }

      else
      {
        *result = v23;
        v26 = v5[5];
      }

      *(v23 + 24) = v5;
      if (v26)
      {
        v28 = v23 | 1;
      }

      else
      {
        v28 = v23;
      }
    }

    v5[5] = v28;
LABEL_67:
    v2 = *(v10 + 40);
    a2 = v10;
  }

  *(*result + 40) &= ~1uLL;
  return result;
}

unint64_t *sub_1000020F8(unint64_t *result, unint64_t a2, unint64_t a3)
{
  while (1)
  {
    v3 = a3;
    a3 = a2;
    if (v3)
    {
      v4 = v3[5];
      if (v4)
      {
        break;
      }
    }

    v5 = *result;
    if (v3 == *result)
    {
      goto LABEL_88;
    }

    v6 = *(a2 + 24);
    if (v6 == v3)
    {
      v6 = *(a2 + 32);
      v13 = *(v6 + 40);
      if (v13)
      {
        *(v6 + 40) = v13 & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(a2 + 40) | 1;
        v15 = *(v6 + 24);
        *(a2 + 32) = v15;
        *(a2 + 40) = v14;
        if (v15)
        {
          if (v15[5])
          {
            v16 = a2 | 1;
          }

          else
          {
            v16 = a2;
          }

          v15[5] = v16;
          v14 = *(a2 + 40);
        }

        *(v6 + 40) = v14 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 40) & 1;
        if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v17 = *(a2 + 40);
          v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
          if (a2 == *((v17 & 0xFFFFFFFFFFFFFFFELL) + 24))
          {
            *(v18 + 24) = v6;
          }

          else
          {
            *(v18 + 32) = v6;
            v15 = *(a2 + 32);
          }
        }

        else
        {
          *result = v6;
          v17 = *(a2 + 40);
          v5 = v6;
        }

        *(v6 + 24) = a2;
        if (v17)
        {
          v6 |= 1uLL;
        }

        *(a2 + 40) = v6;
        v6 = v15;
      }

      v22 = *(v6 + 24);
      if (v22 && (*(v22 + 40) & 1) != 0)
      {
        v23 = *(v6 + 32);
        if (!v23)
        {
          goto LABEL_59;
        }

LABEL_57:
        if ((*(v23 + 40) & 1) == 0)
        {
          if (v22)
          {
LABEL_59:
            *(v22 + 40) &= ~1uLL;
          }

          v29 = *(v6 + 40) | 1;
          *(v6 + 40) = v29;
          v30 = *(v22 + 32);
          *(v6 + 24) = v30;
          if (v30)
          {
            if (*(v30 + 40))
            {
              v31 = v6 | 1;
            }

            else
            {
              v31 = v6;
            }

            *(v30 + 40) = v31;
            v29 = *(v6 + 40);
          }

          *(v22 + 40) = v29 & 0xFFFFFFFFFFFFFFFELL | *(v22 + 40) & 1;
          if ((v29 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v32 = *(v6 + 40);
            v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
            if (v6 == *((v32 & 0xFFFFFFFFFFFFFFFELL) + 24))
            {
              *(v33 + 24) = v22;
            }

            else
            {
              *(v33 + 32) = v22;
            }
          }

          else
          {
            *result = v22;
            v32 = *(v6 + 40);
            v5 = v22;
          }

          *(v22 + 32) = v6;
          if (v32)
          {
            v22 |= 1uLL;
          }

          *(v6 + 40) = v22;
          v6 = *(a2 + 32);
          v23 = *(v6 + 32);
        }

        *(v6 + 40) = *(v6 + 40) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 40) & 1;
        *(a2 + 40) &= ~1uLL;
        if (v23)
        {
          *(v23 + 40) &= ~1uLL;
        }

        v34 = (v6 + 24);
        v35 = *(v6 + 24);
        *(a2 + 32) = v35;
        if (v35)
        {
          goto LABEL_76;
        }

        goto LABEL_80;
      }

      v23 = *(v6 + 32);
      if (v23 && (*(v23 + 40) & 1) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        *(v6 + 40) = v7 & 0xFFFFFFFFFFFFFFFELL;
        v8 = *(a2 + 40) | 1;
        *(a2 + 40) = v8;
        v9 = *(v6 + 32);
        *(a2 + 24) = v9;
        if (v9)
        {
          if (v9[5])
          {
            v10 = a2 | 1;
          }

          else
          {
            v10 = a2;
          }

          v9[5] = v10;
          v8 = *(a2 + 40);
        }

        *(v6 + 40) = v8 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 40) & 1;
        if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v11 = *(a2 + 40);
          v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
          if (a2 == *((v11 & 0xFFFFFFFFFFFFFFFELL) + 24))
          {
            *(v12 + 24) = v6;
            v9 = *(a2 + 24);
          }

          else
          {
            *(v12 + 32) = v6;
          }
        }

        else
        {
          *result = v6;
          v11 = *(a2 + 40);
          v5 = v6;
        }

        *(v6 + 32) = a2;
        if (v11)
        {
          v6 |= 1uLL;
        }

        *(a2 + 40) = v6;
        v6 = v9;
      }

      v19 = *(v6 + 24);
      if (v19)
      {
        v20 = *(v19 + 40);
        if (v20)
        {
          goto LABEL_45;
        }
      }

      v21 = *(v6 + 32);
      if (v21 && (*(v21 + 40) & 1) != 0)
      {
        if (!v19)
        {
          goto LABEL_47;
        }

        v20 = *(v19 + 40);
LABEL_45:
        if ((v20 & 1) == 0)
        {
          v21 = *(v6 + 32);
          if (v21)
          {
LABEL_47:
            *(v21 + 40) &= ~1uLL;
          }

          v24 = *(v6 + 40) | 1;
          v25 = *(v21 + 24);
          *(v6 + 32) = v25;
          *(v6 + 40) = v24;
          if (v25)
          {
            if (*(v25 + 40))
            {
              v26 = v6 | 1;
            }

            else
            {
              v26 = v6;
            }

            *(v25 + 40) = v26;
            v24 = *(v6 + 40);
          }

          *(v21 + 40) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v21 + 40) & 1;
          if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v27 = *(v6 + 40);
            v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
            if (v6 == *((v27 & 0xFFFFFFFFFFFFFFFELL) + 24))
            {
              *(v28 + 24) = v21;
            }

            else
            {
              *(v28 + 32) = v21;
            }
          }

          else
          {
            *result = v21;
            v27 = *(v6 + 40);
            v5 = v21;
          }

          *(v21 + 24) = v6;
          if (v27)
          {
            v21 |= 1uLL;
          }

          *(v6 + 40) = v21;
          v6 = *(a2 + 24);
          v19 = *(v6 + 24);
        }

        *(v6 + 40) = *(v6 + 40) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 40) & 1;
        *(a2 + 40) &= ~1uLL;
        if (v19)
        {
          *(v19 + 40) &= ~1uLL;
        }

        v34 = (v6 + 32);
        v35 = *(v6 + 32);
        *(a2 + 24) = v35;
        if (v35)
        {
LABEL_76:
          if (*(v35 + 40))
          {
            v36 = a2 | 1;
          }

          else
          {
            v36 = a2;
          }

          *(v35 + 40) = v36;
        }

LABEL_80:
        v37 = *(a2 + 40);
        *(v6 + 40) = v37 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 40) & 1;
        if ((v37 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v38 = *(a2 + 40);
          v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
          if (a2 == *((v38 & 0xFFFFFFFFFFFFFFFELL) + 24))
          {
            *(v39 + 24) = v6;
          }

          else
          {
            *(v39 + 32) = v6;
          }
        }

        else
        {
          *result = v6;
          v38 = *(a2 + 40);
          v5 = v6;
        }

        *v34 = a2;
        if (v38)
        {
          v6 |= 1uLL;
        }

        *(a2 + 40) = v6;
        v3 = v5;
LABEL_88:
        if (!v3)
        {
          return result;
        }

        v4 = v3[5];
        break;
      }
    }

    *(v6 + 40) |= 1uLL;
    a2 = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL;
  }

  v3[5] = v4 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_100002520(unint64_t *a1, void *a2)
{
  v5 = a2[3];
  v3 = a2[4];
  v4 = a2 + 3;
  if (!v5)
  {
    v11 = a2[5] & 0xFFFFFFFFFFFFFFFELL;
    v23 = a2[5] & 1;
    if (!v3)
    {
      if (!v11)
      {
LABEL_41:
        v24 = a1;
        goto LABEL_42;
      }

LABEL_33:
      v24 = (v11 + 24);
      if (*(v11 + 24) != a2)
      {
        v24 = (v11 + 32);
      }

LABEL_42:
      *v24 = v3;
      if (v23)
      {
        return a2;
      }

LABEL_43:
      sub_1000020F8(a1, v11, v3);
      return a2;
    }

LABEL_37:
    if (*(v3 + 40))
    {
      v25 = v11 + 1;
    }

    else
    {
      v25 = v11;
    }

    *(v3 + 40) = v25;
    if (!v11)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (!v3)
  {
    v11 = a2[5] & 0xFFFFFFFFFFFFFFFELL;
    v23 = a2[5] & 1;
    v3 = v5;
    goto LABEL_37;
  }

  do
  {
    v6 = v3;
    v3 = *(v3 + 24);
  }

  while (v3);
  v3 = *(v6 + 32);
  v7 = *(v6 + 40);
  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    if (*(v3 + 40))
    {
      v9 = v7 | 1;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v3 + 40) = v9;
  }

  v10 = a1;
  if (v8)
  {
    v10 = (v8 + 24);
    if (*(v8 + 24) != v6)
    {
      v10 = (v8 + 32);
    }
  }

  *v10 = v3;
  if ((*(v6 + 40) & 0xFFFFFFFFFFFFFFFELL) == a2)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFFFFELL;
  }

  v12 = v4[2];
  *(v6 + 24) = *v4;
  *(v6 + 40) = v12;
  v13 = a1;
  v14 = a2[5] & 0xFFFFFFFFFFFFFFFELL;
  if (v14)
  {
    v16 = *(v14 + 24);
    v15 = (v14 + 24);
    if (v16 == a2)
    {
      v13 = v15;
    }

    else
    {
      v13 = v15 + 1;
    }
  }

  v17 = v7 & 1;
  *v13 = v6;
  v19 = a2[3];
  v18 = a2[4];
  if (*(v19 + 40))
  {
    v20 = v6 | 1;
  }

  else
  {
    v20 = v6;
  }

  *(v19 + 40) = v20;
  if (v18)
  {
    if (*(v18 + 40))
    {
      v6 |= 1uLL;
    }

    *(v18 + 40) = v6;
  }

  if (v11)
  {
    v21 = v11;
    do
    {
      v21 = *(v21 + 40) & 0xFFFFFFFFFFFFFFFELL;
    }

    while (v21);
  }

  if (!v17)
  {
    goto LABEL_43;
  }

  return a2;
}

unint64_t sub_100002690(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      v6 = strcmp((a2 + 128), (v4 + 128));
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 24;
      }

      else
      {
        if (!v6)
        {
          return v5;
        }

        v7 = 32;
      }

      v4 = *(v5 + v7);
    }

    while (v4);
    LODWORD(v4) = v6 >> 31;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v5 | 1;
  if (v4)
  {
    v8 = (v5 + 24);
  }

  else
  {
    v8 = (v5 + 32);
  }

  if (!v5)
  {
    v8 = a1;
  }

  *v8 = a2;
  sub_100001E0C(a1, a2);
  return 0;
}

uint64_t sub_100002738(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return 6;
  }

  else
  {
    return dword_100027AB0[a1];
  }
}

void sub_100002758(void *a1)
{
  v1 = a1;
  bzero(a1, 0x258uLL);
  v2 = 6;
  do
  {
    v1[2] = 0;
    *v1 = 0;
    v1[1] = v1;
    v1[3] = v1 + 2;
    v1[4] = v1;
    v1[8] = v1 + 2;
    v1 += 12;
    --v2;
  }

  while (v2);
}

const char *sub_1000027A4()
{
  v0 = malloc_type_malloc(0x720uLL, 0x10A0040674384F5uLL);
  bzero(v0, 0x720uLL);
  __strlcpy_chk();
  v1 = sub_100001DC0(&qword_100030D88, v0);
  free(v0);
  return v1;
}

const char *sub_10000281C(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return &unk_100031210;
  }

  v2 = a1;
  while (v1 == 47)
  {
    v3 = *++v2;
    v1 = v3;
  }

  if (!v1)
  {
    return &unk_100031210;
  }

  v5 = sub_1000027A4();
  if (v5)
  {
    return v5 + 1152;
  }

  v6 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  bzero(v6, 0x400uLL);
  __strlcpy_chk();
  while (1)
  {
    v7 = strrchr(v6, 47);
    v8 = v7;
    if (!v7)
    {
      break;
    }

    *v7 = 0;
      ;
    }

    if (!*i)
    {
      v11 = &unk_100031210;
      goto LABEL_18;
    }

    v10 = sub_1000027A4();
    if (v10)
    {
      v11 = v10 + 1152;
LABEL_18:
      v12 = v11[72];
      goto LABEL_19;
    }
  }

  v12 = 0;
LABEL_19:
  if (v8)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v6;
  }

  __strlcpy_chk();
  if (!*v13)
  {
LABEL_46:
    free(v6);
    return 0;
  }

  for (j = 0; ; v12 = j)
  {
    v15 = strchr(v13, 47);
    v16 = v15;
    if (!v15)
    {
      break;
    }

    *v15 = 0;
    if (!*v13)
    {
      goto LABEL_46;
    }

LABEL_28:
    if (strlen(v13) > 0x3F || v12 && strlen((v12 + 128)) >= 0x3BF)
    {
      goto LABEL_46;
    }

    v17 = malloc_type_malloc(0x720uLL, 0x10A0040674384F5uLL);
    if (!v17)
    {
      goto LABEL_46;
    }

    j = v17;
    v18 = v17 + 64;
    bzero(v17, 0x720uLL);
    __strlcpy_chk();
    if (v12)
    {
      __strlcpy_chk();
      __strlcat_chk();
    }

    __strlcat_chk();
    v19 = sub_100001D1C(&qword_100030D88, j);
    if (v19)
    {
      printf("pf_find_or_create_ruleset: RB_INSERT1 '%s' '%s' collides with '%s' '%s'\n", (j + 128), v18, (v19 + 128), (v19 + 64));
LABEL_45:
      free(j);
      goto LABEL_46;
    }

    if (v12)
    {
      *(j + 48) = v12;
      v20 = sub_100002690((v12 + 56), j);
      if (v20)
      {
        printf("pf_find_or_create_ruleset: RB_INSERT2 '%s' '%s' collides with '%s' '%s'\n", (j + 128), v18, (v20 + 128), (v20 + 64));
        sub_100001BB8(&qword_100030D88, j);
        goto LABEL_45;
      }
    }

    bzero((j + 1152), 0x258uLL);
    for (k = 0; k != 576; k += 96)
    {
      v22 = (j + k);
      v22[144] = 0;
      v23 = j + k + 1152;
      v22[145] = v23;
      v24 = j + k + 1168;
      v22[146] = 0;
      v22[147] = v24;
      v22[148] = v23;
      v22[152] = v24;
    }

    *(j + 1728) = j;
    if (v16)
    {
      v13 = v16 + 1;
    }

    else
    {
      *v13 = 0;
    }
  }

  if (*v13)
  {
    goto LABEL_28;
  }

  free(v6);
  if (j)
  {
    return (j + 1152);
  }

  else
  {
    return 0;
  }
}

void sub_100002B50(char *a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1 != &unk_100031210)
    {
LABEL_3:
      v2 = *(v1 + 72);
      if (v2 && !*(v2 + 56) && *(v2 + 1752) <= 0 && *(v1 + 147) <= 0 && !*(v1 + 148))
      {
        v3 = v1 + 64;
        v4 = 6;
        while (!**(v3 - 4) && !**v3 && !*(v3 + 7))
        {
          v3 += 96;
          if (!--v4)
          {
            sub_100001BB8(&qword_100030D88, v2);
            v5 = *(v1 + 72);
            v6 = v5[6];
            if (v6)
            {
              sub_100002520((v6 + 56), v5);
              free(*(v1 + 72));
              v1 = (v6 + 1152);
              if (v6 != &unk_100030D90)
              {
                goto LABEL_3;
              }
            }

            else
            {
              v7 = *(v1 + 72);

              free(v7);
            }

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100002C50(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *(a1 + 776) = 0;
  *(a1 + 1024) = 0;
  if (!*a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  bzero(v6, 0x400uLL);
  if (*v3 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    *(a1 + 1024) = 1;
    v8 = *(a2 + 576);
    if (v8 && *(v8 + 128))
    {
      __strlcpy_chk();
    }

    else
    {
      *v6 = 0;
    }

    for (i = *v3; i == 46 && v3[1] == 46 && v3[2] == 47; i = v12)
    {
      if (!*v6)
      {
        puts("pf_anchor_setup: .. beyond root");
        free(v6);
        return 1;
      }

      v10 = strrchr(v6, 47);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }

      *v11 = 0;
      ++*(a1 + 1024);
      v12 = v3[3];
      v3 += 3;
    }

    if (*v6)
    {
      __strlcat_chk();
    }

    __strlcat_chk();
  }

  v13 = strrchr(v6, 47);
  if (v13 && *v13 == 47 && v13[1] == 42 && !v13[2])
  {
    *(a1 + 1025) = 1;
    *v13 = 0;
  }

  v14 = sub_10000281C(v6);
  free(v6);
  if (v14 && (v15 = *(v14 + 72)) != 0)
  {
    result = 0;
    *(a1 + 776) = v15;
    ++*(v15 + 1752);
  }

  else
  {
    puts("pf_anchor_setup: ruleset");
    return 1;
  }

  return result;
}

void *sub_100002E3C(const void *a1)
{
  v2 = malloc_type_malloc(0x148uLL, 0x10A004011940935uLL);
  if (!v2)
  {
    sub_1000207D0();
  }

  v3 = v2;
  result = memcpy(v2, a1, 0x148uLL);
  *(v3 + 3) = 0;
  v5 = off_100030008;
  *(v3 + 4) = off_100030008;
  *v5 = v3;
  off_100030008 = v3 + 24;
  return result;
}

const char *sub_100002EA8(char *__s1)
{
  v1 = off_100030000;
  if (off_100030000)
  {
    do
    {
      if (!strncmp(__s1, v1, 0x10uLL) && !v1[64])
      {
        break;
      }

      v1 = *(v1 + 3);
    }

    while (v1);
  }

  return v1;
}

void *sub_100002EFC(const char *a1, char *__s1)
{
  for (i = off_100030000; i; i = *(i + 3))
  {
    if (!strncmp(__s1, i, 0x10uLL) && !strncmp(a1, i + 64, 0x40uLL))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100002F68(char *__s1)
{
  v1 = off_100030000;
  if (!off_100030000)
  {
    return 0;
  }

  while (strncmp(__s1, v1 + 64, 0x40uLL))
  {
    v1 = *(v1 + 3);
    if (!v1)
    {
      return 0;
    }
  }

  return v1[80];
}

uint64_t sub_100002FBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 64))
  {

    return sub_100003140(a1, a2, a3, 1, a4);
  }

  else
  {
    result = printf("altq on %s ", a1);
    v7 = *(a1 + 48);
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        result = sub_1000034D0(a1);
        if (!result)
        {
          result = printf("priq ");
        }
      }

      else if (v7 == 4)
      {
        result = sub_1000037A4(a1, a4);
        if (!result)
        {
          result = printf("fairq ");
        }
      }
    }

    else if (v7 == 1)
    {
      result = sub_100003348(a1);
      if (!result)
      {
        result = printf("cbq ");
      }
    }

    else if (v7 == 2)
    {
      result = sub_1000035E0(a1, a4);
      if (!result)
      {
        result = printf("hfsc ");
      }
    }

    if (*(a1 + 40))
    {
      v8 = *(a1 + 44);
      if (v8 == 1)
      {
        sub_100003908(*(a1 + 56));
        result = printf("bandwidth %s ");
      }

      else if (v8 == 2)
      {
        result = printf("bandwidth %llu%% ");
      }
    }

    if (*(a1 + 52))
    {
      result = printf("tbrsize %u ", *(a1 + 52));
    }

    if (*(a1 + 204) != 128)
    {
      return printf("qlimit %u ", *(a1 + 204));
    }
  }

  return result;
}

uint64_t sub_100003140(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  printf("queue ");
  for (; a2; --a2)
  {
    putchar(32);
  }

  result = printf("%s ", (a1 + 64));
  if (a4)
  {
    result = printf("on %s ", a1);
  }

  v10 = *(a1 + 48);
  v11 = v10 > 4;
  v12 = (1 << v10) & 0x16;
  if (!v11 && v12 != 0)
  {
    v14 = *(a1 + 44);
    if (v14 == 1)
    {
      sub_100003908(*(a1 + 216));
      result = printf("bandwidth %s ");
    }

    else if (v14 == 2)
    {
      result = printf("bandwidth %llu%% ");
    }
  }

  if (*(a1 + 196))
  {
    result = printf("weight %u ");
  }

  else if (*(a1 + 200) != 1)
  {
    result = printf("priority %u ");
  }

  if (*(a1 + 204) != 128)
  {
    result = printf("qlimit %u ", *(a1 + 204));
  }

  v15 = *(a1 + 48);
  if (v15 > 2)
  {
    if (v15 == 3)
    {

      return sub_1000034D0(a1);
    }

    else if (v15 == 4)
    {

      return sub_1000037A4(a1, a5);
    }
  }

  else if (v15 == 1)
  {

    return sub_100003348(a1);
  }

  else if (v15 == 2)
  {

    return sub_1000035E0(a1, a5);
  }

  return result;
}

uint64_t sub_100003348(uint64_t a1)
{
  if (*(a1 + 256))
  {
    printf("cbq(");
    v2 = *(a1 + 256);
    if (v2)
    {
      printf(" red");
      v2 = *(a1 + 256);
      if ((v2 & 4) == 0)
      {
LABEL_4:
        if ((v2 & 0x10000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_4;
    }

    printf(" rio");
    v2 = *(a1 + 256);
    if ((v2 & 0x10000) == 0)
    {
LABEL_5:
      if ((v2 & 0x20000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_20:
    printf(" blue");
    v2 = *(a1 + 256);
    if ((v2 & 0x20000) == 0)
    {
LABEL_6:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    printf(" sfb");
    v2 = *(a1 + 256);
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

LABEL_22:
    printf(" ecn");
    v2 = *(a1 + 256);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    printf(" cleardscp");
    v2 = *(a1 + 256);
    if ((v2 & 8) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    printf(" flowvalve");
    v2 = *(a1 + 256);
    if ((v2 & 0x20) == 0)
    {
LABEL_10:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    printf(" borrow");
    v2 = *(a1 + 256);
    if ((v2 & 0x100) == 0)
    {
LABEL_11:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_26:
    printf(" wrr");
    v2 = *(a1 + 256);
    if ((v2 & 0x200) == 0)
    {
LABEL_12:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }

LABEL_27:
    printf(" efficient");
    v2 = *(a1 + 256);
    if ((v2 & 0x1000) == 0)
    {
LABEL_13:
      if ((v2 & 0x2000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }

LABEL_28:
    printf(" root");
    v2 = *(a1 + 256);
    if ((v2 & 0x2000) == 0)
    {
LABEL_14:
      if ((v2 & 0x40000) == 0)
      {
LABEL_16:
        printf(") ");
        return 1;
      }

LABEL_15:
      printf(" fc");
      goto LABEL_16;
    }

LABEL_29:
    printf(" default");
    if ((*(a1 + 256) & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1000034D0(uint64_t a1)
{
  if (*(a1 + 224))
  {
    printf("priq(");
    v2 = *(a1 + 224);
    if (v2)
    {
      printf(" red");
      v2 = *(a1 + 224);
      if ((v2 & 4) == 0)
      {
LABEL_4:
        if ((v2 & 0x100) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_4;
    }

    printf(" rio");
    v2 = *(a1 + 224);
    if ((v2 & 0x100) == 0)
    {
LABEL_5:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    printf(" blue");
    v2 = *(a1 + 224);
    if ((v2 & 0x200) == 0)
    {
LABEL_6:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_16:
    printf(" sfb");
    v2 = *(a1 + 224);
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    printf(" ecn");
    v2 = *(a1 + 224);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    printf(" cleardscp");
    v2 = *(a1 + 224);
    if ((v2 & 0x1000) == 0)
    {
LABEL_9:
      if ((v2 & 0x400) == 0)
      {
LABEL_11:
        printf(") ");
        return 1;
      }

LABEL_10:
      printf(" fc");
      goto LABEL_11;
    }

LABEL_19:
    printf(" default");
    if ((*(a1 + 224) & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_1000035E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2 + 8;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a2 + 56;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2 + 104;
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 316) && !*(a1 + 240) && !*(a1 + 304))
  {
    v12 = *(a1 + 272);
    if (!v12 || v12 == *(a1 + 216) && !*(a1 + 264))
    {
      return 0;
    }
  }

  printf("hfsc(");
  v6 = *(a1 + 316);
  if (v6)
  {
    printf(" red");
    v6 = *(a1 + 316);
    if ((v6 & 4) == 0)
    {
LABEL_15:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_15;
  }

  printf(" rio");
  v6 = *(a1 + 316);
  if ((v6 & 0x100) == 0)
  {
LABEL_16:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  printf(" blue");
  v6 = *(a1 + 316);
  if ((v6 & 0x200) == 0)
  {
LABEL_17:
    if ((v6 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  printf(" sfb");
  v6 = *(a1 + 316);
  if ((v6 & 2) == 0)
  {
LABEL_18:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  printf(" ecn");
  v6 = *(a1 + 316);
  if ((v6 & 0x10) == 0)
  {
LABEL_19:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

LABEL_37:
    printf(" default");
    if ((*(a1 + 316) & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_36:
  printf(" cleardscp");
  v6 = *(a1 + 316);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_37;
  }

LABEL_20:
  if ((v6 & 0x400) != 0)
  {
LABEL_21:
    printf(" fc");
  }

LABEL_22:
  v7 = *(a1 + 240);
  if (v7)
  {
    sub_100004F18("realtime", *(a1 + 224), *(a1 + 232), v7, v3);
  }

  v8 = *(a1 + 272);
  if (v8)
  {
    v9 = *(a1 + 264);
    if (v8 != *(a1 + 216) || v9)
    {
      sub_100004F18("linkshare", *(a1 + 256), v9, v8, v4);
    }
  }

  v10 = *(a1 + 304);
  if (v10)
  {
    sub_100004F18("upperlimit", *(a1 + 288), *(a1 + 296), v10, v5);
  }

  printf(") ");
  return 1;
}

uint64_t sub_1000037A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2 + 8;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a1 + 228))
  {
    v8 = *(a1 + 256);
    if (!v8 || v8 == *(a1 + 216) && !*(a1 + 248))
    {
      return 0;
    }
  }

  printf("fairq(");
  v4 = *(a1 + 228);
  if (v4)
  {
    printf(" red");
    v4 = *(a1 + 228);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

  printf(" rio");
  v4 = *(a1 + 228);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  printf(" blue");
  v4 = *(a1 + 228);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  printf(" sfb");
  v4 = *(a1 + 228);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  printf(" ecn");
  v4 = *(a1 + 228);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  printf(" cleardscp");
  v4 = *(a1 + 228);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  printf(" default");
  if ((*(a1 + 228) & 0x400) != 0)
  {
LABEL_13:
    printf(" fc");
  }

LABEL_14:
  v5 = *(a1 + 256);
  if (v5)
  {
    v6 = *(a1 + 248);
    if (v5 != *(a1 + 216) || v6)
    {
      sub_100005014("linkshare", *(a1 + 240), v6, v5, v3);
    }
  }

  printf(") ");
  return 1;
}

char *sub_100003908(double a1)
{
  v1 = &unk_100030BB0 + 16 * dword_100030C30;
  if (dword_100030C30 == 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_100030C30 + 1;
  }

  dword_100030C30 = v2;
  if (a1 >= 1000.0)
  {
    v3 = 0;
    do
    {
      a1 = a1 / 1000.0;
    }

    while (a1 >= 1000.0 && v3++ < 3);
  }

  HIDWORD(v5) = -1030792151 * (a1 * 100.0) + 85899344;
  LODWORD(v5) = HIDWORD(v5);
  if ((v5 >> 2) < 0x28F5C29)
  {
    snprintf(v1, 0x10uLL, "%lld%cb");
  }

  else
  {
    snprintf(v1, 0x10uLL, "%.2Lf%cb");
  }

  return v1;
}

uint64_t sub_100003A08(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 10);
  *(a2 + 40) = 0;
  *(a2 + 44) = v6;
  if (v6 == 2)
  {
    v7 = *(a3 + 8);
    *(a2 + 56) = v7;
    if ((v7 - 101) > 0xFFFFFF9B)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = 1;
      fwrite("bandwidth spec out of range\n", 0x1CuLL, 1uLL, __stderrp);
      v9 = *(a2 + 40) | 1;
    }

    *(a2 + 40) = v9;
  }

  else if (*a3)
  {
    v8 = 0;
    *(a2 + 56) = *a3;
    *(a2 + 40) = 0x100000001;
  }

  else if (sub_100003B18(*a1))
  {
    v8 = 0;
    *(a2 + 44) = 2;
    *(a2 + 56) = 100;
  }

  else
  {
    fprintf(__stderrp, "interface %s does not know its bandwidth, please specify an absolute bandwidth\n", a2);
    v8 = 1;
  }

  return sub_100003BC4(a2, a4, *(a2 + 56)) + v8;
}

uint64_t sub_100003B18(int a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  if (__strlcpy_chk() >= 0x10)
  {
    sub_1000207EC();
  }

  if (ioctl(a1, 0xC018445CuLL, v3) == -1)
  {
    perror("interface speed not available");
  }

  return v4;
}

uint64_t sub_100003BC4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v8 = 0;
      v14 = *(a2 + 8);
      v15 = *(a2 + 24);
      *(a1 + 256) = *(a2 + 40);
      *(a1 + 224) = v14;
      *(a1 + 240) = v15;
      return v8;
    }

    if (v3 == 2)
    {
      *(a1 + 316) = *(a2 + 152);
      if (*(a2 + 96))
      {
        v4 = *(a2 + 56);
        if (!v4)
        {
          v4 = *(a2 + 64);
        }

        *(a1 + 256) = v4;
        if (*(a2 + 66) == 2)
        {
          *(a1 + 280) |= 1u;
        }

        v5 = *(a2 + 80);
        if (!v5)
        {
          v5 = *(a2 + 88);
        }

        *(a1 + 272) = v5;
        if (*(a2 + 90) == 2)
        {
          *(a1 + 280) |= 0x10u;
        }

        *(a1 + 264) = *(a2 + 72);
      }

      if (*(a2 + 48))
      {
        v6 = *(a2 + 8);
        if (!v6)
        {
          v6 = *(a2 + 16);
        }

        *(a1 + 224) = v6;
        if (*(a2 + 18) == 2)
        {
          *(a1 + 248) |= 1u;
        }

        v7 = *(a2 + 32);
        if (!v7)
        {
          v7 = *(a2 + 40);
        }

        *(a1 + 240) = v7;
        if (*(a2 + 42) == 2)
        {
          *(a1 + 248) |= 0x10u;
        }

        *(a1 + 232) = *(a2 + 24);
      }

      v8 = *(a2 + 144);
      if (*(a2 + 144))
      {
        v9 = *(a2 + 104);
        if (!v9)
        {
          v9 = *(a2 + 112);
        }

        *(a1 + 288) = v9;
        if (*(a2 + 114) == 2)
        {
          *(a1 + 312) |= 1u;
        }

        v10 = *(a2 + 128);
        if (!v10)
        {
          v10 = *(a2 + 136);
        }

        *(a1 + 304) = v10;
        if (*(a2 + 138) == 2)
        {
          *(a1 + 312) |= 0x10u;
        }

        v8 = 0;
        *(a1 + 296) = *(a2 + 120);
      }

      return v8;
    }

LABEL_51:
    warnx("eval_queue_opts: unknown scheduler type %u", *a2);
    return 1;
  }

  if (v3 == 3)
  {
    v8 = 0;
    *(a1 + 224) = *(a2 + 8);
    return v8;
  }

  if (v3 != 4)
  {
    goto LABEL_51;
  }

  *(a1 + 228) = *(a2 + 76);
  *(a1 + 224) = *(a2 + 72);
  v11 = *(a2 + 56);
  if (!v11)
  {
    v11 = *(a2 + 64);
    if (*(a2 + 64))
    {
      v11 *= a3 / 0x64;
    }
  }

  *(a1 + 232) = v11;
  v8 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v12 = *(a2 + 8);
    if (!v12)
    {
      v12 = *(a2 + 16);
      if (*(a2 + 16))
      {
        v12 *= a3 / 0x64;
      }
    }

    *(a1 + 240) = v12;
    v13 = *(a2 + 32);
    if (!v13)
    {
      if (*(a2 + 40))
      {
        v13 = a3 / 0x64 * *(a2 + 40);
      }

      else
      {
        v13 = 0;
      }
    }

    v8 = 0;
    *(a1 + 256) = v13;
    *(a1 + 248) = *(a2 + 24);
  }

  return v8;
}

uint64_t sub_100003E54()
{
  v0 = off_100030000;
  if (off_100030000)
  {
    v1 = 0;
    while (1)
    {
      if (*(v0 + 64))
      {
        goto LABEL_4;
      }

      v2 = *(v0 + 12);
      if (v2 > 2)
      {
        if (v2 == 3)
        {
          v15 = off_100030000;
          if (!off_100030000)
          {
            goto LABEL_62;
          }

          v12 = 0;
          do
          {
            if (!strncmp(v15, v0, 0x10uLL) && v15[64])
            {
              v12 += (*(v15 + 56) >> 12) & 1;
            }

            v15 = *(v15 + 3);
          }

          while (v15);
LABEL_52:
          if (v12 != 1)
          {
            goto LABEL_62;
          }

          v1 = 0;
          goto LABEL_4;
        }

        if (v2 == 4)
        {
          v7 = off_100030000;
          if (off_100030000)
          {
            v8 = 0;
            v9 = 0;
            v10 = off_100030000;
            do
            {
              if (!strncmp(v10, v0, 0x10uLL) && v10[64])
              {
                if ((*(v10 + 57) & 0x1000) != 0)
                {
                  v9 = v10;
                }

                v8 += (*(v10 + 57) & 0x1000u) >> 12;
              }

              v10 = *(v10 + 3);
            }

            while (v10);
            if (v8 == 1)
            {
              v1 = 0;
              do
              {
                if (!strncmp(v7, v0, 0x10uLL) && v7[64] && !strncmp(v7 + 128, v9 + 64, 0x40uLL))
                {
                  warnx("default queue is not a leaf");
                  v1 = (v1 + 1);
                }

                v7 = *(v7 + 3);
              }

              while (v7);
              goto LABEL_4;
            }
          }

LABEL_62:
          v1 = 1;
          goto LABEL_63;
        }
      }

      else
      {
        if (v2 == 1)
        {
          v11 = off_100030000;
          if (!off_100030000)
          {
            warnx("should have one root queue on %s", v0);
LABEL_65:
            v1 = 2;
LABEL_63:
            warnx("should have one default queue on %s", v0);
            goto LABEL_4;
          }

          v12 = 0;
          v13 = 0;
          do
          {
            if (!strncmp(v11, v0, 0x10uLL) && v11[64])
            {
              v14 = *(v11 + 64);
              v13 += (v14 >> 12) & 1;
              v12 += (v14 >> 13) & 1;
            }

            v11 = *(v11 + 3);
          }

          while (v11);
          if (v13 != 1)
          {
            warnx("should have one root queue on %s", v0);
            if (v12 != 1)
            {
              goto LABEL_65;
            }

            v1 = 1;
            goto LABEL_4;
          }

          goto LABEL_52;
        }

        if (v2 == 2)
        {
          v3 = off_100030000;
          if (off_100030000)
          {
            v4 = 0;
            v5 = 0;
            v6 = off_100030000;
            do
            {
              if (!strncmp(v6, v0, 0x10uLL) && v6[64] && v6[128])
              {
                if ((*(v6 + 79) & 0x1000) != 0)
                {
                  v5 = v6;
                }

                v4 += (*(v6 + 79) & 0x1000u) >> 12;
              }

              v6 = *(v6 + 3);
            }

            while (v6);
            if (v4 == 1)
            {
              v1 = 0;
              do
              {
                if (!strncmp(v3, v0, 0x10uLL) && v3[64] && !strncmp(v3 + 128, v5 + 64, 0x40uLL))
                {
                  warnx("default queue is not a leaf");
                  v1 = (v1 + 1);
                }

                v3 = *(v3 + 3);
              }

              while (v3);
              goto LABEL_4;
            }
          }

          goto LABEL_62;
        }
      }

LABEL_4:
      v0 = *(v0 + 3);
      if (!v0)
      {
        return v1;
      }
    }
  }

  return 0;
}

uint64_t sub_100004138(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4)
{
  v8 = sub_100002EA8(__s1);
  if (!v8)
  {
    fprintf(__stderrp, "altq not defined on %s\n");
    return 1;
  }

  v9 = *(v8 + 12);
  *(__s1 + 12) = v9;
  v10 = *(v8 + 7);
  *(__s1 + 7) = v10;
  if (sub_100002EFC(__s1 + 64, __s1))
  {
    fprintf(__stderrp, "queue %s already exists on interface %s\n");
    return 1;
  }

  v12 = sub_100002F68(__s1 + 64);
  v13 = __s1[128];
  *(__s1 + 80) = v12;
  if (v13)
  {
    v14 = sub_100002EFC(__s1 + 128, __s1);
    if (!v14)
    {
      fprintf(__stderrp, "parent %s not found for %s\n");
      return 1;
    }

    v15 = v14;
    *(__s1 + 48) = v14[80];
  }

  else
  {
    v15 = 0;
  }

  if (!*(__s1 + 51))
  {
    *(__s1 + 51) = 128;
  }

  if (v9 <= 4 && ((1 << v9) & 0x16) != 0)
  {
    if (v15)
    {
      if (!*(a3 + 10))
      {
        v16 = 0;
        *(__s1 + 27) = 0;
        v17 = *(v15 + 27);
LABEL_32:
        v18 = off_100030000;
        if (off_100030000)
        {
          v19 = 0;
          do
          {
            if (!strncmp(v18, __s1, 0x10uLL) && *(v18 + 64) && !strncmp(v18 + 128, __s1 + 128, 0x40uLL))
            {
              v19 += *(v18 + 27);
            }

            v18 = *(v18 + 3);
          }

          while (v18);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19 + v16;
        v21 = *(__s1 + 11);
        if (v21 == 2 && v20 > 0x64 || v21 == 1 && v20 > v17)
        {
          warnx("the sum of the child bandwidth (%llu) higher than parent %s (%llu)");
          return 1;
        }

        goto LABEL_45;
      }

      if (v15[11] == 2)
      {
        *(__s1 + 11) = 2;
        v16 = *(a3 + 8);
        if ((v16 - 1) > 0x63)
        {
          fprintf(__stderrp, "queue %s bandwidth must be in percentage relative to parent %s\n");
          return 1;
        }
      }

      else
      {
        v16 = *a3;
        if (!*a3)
        {
          if (*(a3 + 8))
          {
            v16 = *(v15 + 27) / 0x64uLL * *(a3 + 8);
          }

          else
          {
            v16 = 0;
          }
        }
      }
    }

    else
    {
      v16 = *a3;
    }

    *(__s1 + 27) = v16;
    if (v16 > v10 && *(__s1 + 11) != 2)
    {
      fprintf(__stderrp, "bandwidth for %s higher than interface\n");
      return 1;
    }

    if (!v15)
    {
      goto LABEL_47;
    }

    v17 = *(v15 + 27);
    if (v16 > v17 && *(__s1 + 11) != 2)
    {
      warnx("bandwidth for %s higher than parent");
      return 1;
    }

    goto LABEL_32;
  }

LABEL_45:
  if (v15)
  {
    v22 = *(v15 + 27);
    goto LABEL_48;
  }

LABEL_47:
  v22 = 0;
LABEL_48:
  result = sub_100003BC4(__s1, a4, v22);
  if (result)
  {
    return 1;
  }

  v23 = *(__s1 + 12);
  if (v23 > 2)
  {
    if (v23 == 3)
    {

      return sub_100004874(__s1);
    }

    else if (v23 == 4)
    {

      return sub_100004CB0(__s1);
    }
  }

  else if (v23 == 1)
  {

    return sub_10000454C(a1, __s1);
  }

  else if (v23 == 2)
  {

    return sub_100004938(__s1);
  }

  return result;
}

uint64_t sub_10000454C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 196))
  {
    warnx("use priority instead of weight");
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 200) >= 8u)
  {
    warnx("priority out of range: max %d");
    return 0xFFFFFFFFLL;
  }

  v4 = sub_100004E20(a2);
  v5 = (a2 + 232);
  v6 = *(a2 + 232);
  if (!v6)
  {
    *v5 = v4;
    v6 = v4;
    if (v4 < 0x801)
    {
      goto LABEL_9;
    }

    v7 = v4 & 0x7FFFF7FF;
    goto LABEL_8;
  }

  v7 = v4;
  if (v6 > v4)
  {
LABEL_8:
    *v5 = v7;
    v6 = v7;
  }

LABEL_9:
  v9 = (a2 + 236);
  v8 = *(a2 + 236);
  if (v8)
  {
    v9 = (a2 + 232);
    v10 = v4;
    if (v8 <= v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = v4;
    v10 = v6;
  }

  *v9 = v4;
  v6 = v10;
LABEL_14:
  if (v6 > v8)
  {
    *v5 = v8;
    v6 = v8;
  }

  if (!*(a2 + 128))
  {
    *(a2 + 256) |= 0x1100u;
  }

  v11 = *(a2 + 56);
  v12 = 1.0 / v11 * 1000000000.0 * 8.0;
  v13 = *(a2 + 224);
  v14 = *(a2 + 228);
  v15 = *(a2 + 216);
  v16 = v15 / v11;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0001;
  }

  v18 = v12 / v17;
  if (v12 / v17 < 1.0)
  {
    fprintf(__stderrp, "cbq: queue %s is too fast!\n", (a2 + 64));
    v8 = *(a2 + 236);
  }

  v19 = v8;
  if (v18 * v8 > 2147483650.0)
  {
    if (*(a2 + 216) && (*(a1 + 4) & 0x10) == 0)
    {
      sub_100020808((a2 + 56), v12, v19);
    }

    fprintf(__stderrp, "cbq: queue %s is too slow!\n", (a2 + 64));
    v20 = *(a2 + 236);
    v18 = (0x7FFFFFFF / v20);
    v19 = v20;
  }

  v21 = v12 * v6;
  v22 = (1.0 - v17) * v21 / v17;
  if (v22 <= 10000000.0)
  {
    v23 = 16;
  }

  else
  {
    v23 = 4;
  }

  if (v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = v23;
  }

  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v25 = 2;
  }

  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = pow(0.96875, v24);
  v28 = v21 * fmax((1.0 / v17 + -1.0) * ((1.0 - v27) / v27), 0.03125);
  v29 = pow(0.96875, (v26 - 1));
  result = 0;
  *(a2 + 224) = v26;
  *(a2 + 228) = v24;
  *(a2 + 240) = v18;
  *(a2 + 244) = fabs(v28 * 8.0 / v18 * 32.0 / 1000.0);
  *(a2 + 248) = (-(v18 * v19) * 8.0 / v18 * 32.0 / 1000.0);
  *(a2 + 252) = fabs(v22 * ((1.0 - v29) * 32.0 / v29 + 1.0) * 8.0 / v18 * 32.0 / 1000.0);
  return result;
}

uint64_t sub_100004874(char *__s2)
{
  if (__s2[196])
  {
    warnx("use priority instead of weight");
  }

  else
  {
    v2 = *(__s2 + 50);
    if (v2 > 0xF)
    {
      warnx("priority out of range: max %d");
    }

    else
    {
      v3 = off_100030000;
      if (!off_100030000)
      {
        return 0;
      }

      while (strncmp(v3, __s2, 0x10uLL) || !v3[64] || *(v3 + 50) != v2)
      {
        v3 = *(v3 + 3);
        if (!v3)
        {
          return 0;
        }
      }

      warnx("%s and %s have the same priority");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100004938(uint64_t a1)
{
  v2 = (a1 + 128);
  if (!*(a1 + 128))
  {
    v18 = *(a1 + 56);
    *(a1 + 264) = 0;
    *(a1 + 272) = v18;
    *(a1 + 256) = v18;
    if (*(a1 + 44) == 2)
    {
      result = 0;
      *(a1 + 280) |= 0x11u;
      return result;
    }

    return 0;
  }

  qword_100030C80 = 0;
  qword_100030C88 = 0;
  v3 = *(a1 + 272);
  if (!v3)
  {
    v3 = *(a1 + 216);
    *(a1 + 272) = v3;
  }

  v4 = *(a1 + 224);
  if (v4 && !*(a1 + 240) || (v5 = *(a1 + 256)) != 0 && !v3 || (v6 = *(a1 + 288)) != 0 && !*(a1 + 304))
  {
    warnx("m2 is zero for %s");
  }

  else
  {
    v7 = *(a1 + 240);
    if (v5)
    {
      v8 = v5 >= v3;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
    v10 = v4 >= v7 || v4 == 0;
    if (v10 && v9 && (!v6 || v6 >= *(a1 + 304)))
    {
      v11 = sub_100002EFC((a1 + 128), a1);
      if (!v11)
      {
        errx(1, "parent %s not found for %s", v2, (a1 + 64));
      }

      v12 = v11;
      v26 = 0u;
      v27 = 0u;
      v13 = off_100030000;
      if (off_100030000)
      {
        do
        {
          if (!strncmp(v13, a1, 0x10uLL) && *(v13 + 64))
          {
            if (*(a1 + 240))
            {
              v14 = *(v13 + 30);
              if (v14)
              {
                v15 = *(v13 + 29);
                *(&v26 + 1) = *(v13 + 28);
                LODWORD(v27) = v15;
                *(&v27 + 1) = v14;
                sub_100005110(&qword_100030C80, &v26);
              }
            }

            if (!strncmp(v13 + 128, v2, 0x40uLL))
            {
              if (*(a1 + 272))
              {
                v16 = *(v13 + 34);
                if (v16)
                {
                  v17 = *(v13 + 33);
                  *(&v26 + 1) = *(v13 + 32);
                  LODWORD(v27) = v17;
                  *(&v27 + 1) = v16;
                  sub_100005110(&qword_100030C88, &v26);
                }
              }
            }
          }

          v13 = *(v13 + 3);
        }

        while (v13);
        v7 = *(a1 + 240);
      }

      if (v7 && (v20 = *(a1 + 232), *(&v26 + 1) = *(a1 + 224), LODWORD(v27) = v20, *(&v27 + 1) = v7, sub_100005110(&qword_100030C80, &v26), *(&v26 + 1) = 0, LODWORD(v27) = 0, *(&v27 + 1) = 80 * (*(a1 + 56) / 0x64uLL), !sub_1000051A4(&qword_100030C80, &v26)))
      {
        sub_100020854(&v27 + 1);
      }

      else
      {
        v21 = *(a1 + 272);
        if (!v21 || (v22 = *(a1 + 264), *(&v26 + 1) = *(a1 + 256), LODWORD(v27) = v22, *(&v27 + 1) = v21, sub_100005110(&qword_100030C88, &v26), v12[11] == 2) || (v23 = *(v12 + 33), *(&v26 + 1) = *(v12 + 32), LODWORD(v27) = v23, *(&v27 + 1) = *(v12 + 34), sub_1000051A4(&qword_100030C88, &v26)))
        {
          v24 = *(a1 + 304);
          if (!v24)
          {
LABEL_48:
            sub_1000052CC(&qword_100030C80);
            sub_1000052CC(&qword_100030C88);
            return 0;
          }

          v25 = *(a1 + 56);
          if (*(a1 + 288) > v25 || v24 > v25)
          {
            warnx("upper-limit larger than interface bandwidth");
          }

          else
          {
            if (*(a1 + 240) <= v24)
            {
              goto LABEL_48;
            }

            warnx("upper-limit sc smaller than real-time sc");
          }
        }

        else
        {
          warnx("linkshare sc for queue %s exceeds parent's sc");
        }
      }

      sub_1000052CC(&qword_100030C80);
      sub_1000052CC(&qword_100030C88);
    }

    else
    {
      warnx("m1 must be zero for convex curve: %s");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100004CB0(uint64_t a1)
{
  v2 = (a1 + 128);
  if (*(a1 + 128))
  {
    qword_100030C88 = 0;
    v3 = *(a1 + 256);
    if (!v3)
    {
      v3 = *(a1 + 216);
      *(a1 + 256) = v3;
    }

    v4 = sub_100002EFC((a1 + 128), a1);
    if (!v4)
    {
      errx(1, "parent %s not found for %s", v2, (a1 + 64));
    }

    v5 = v4;
    v12 = 0u;
    v13 = 0u;
    v6 = off_100030000;
    if (off_100030000)
    {
      do
      {
        if (!strncmp(v6, a1, 0x10uLL))
        {
          if (*(v6 + 64))
          {
            if (!strncmp(v6 + 128, v2, 0x40uLL))
            {
              if (*(a1 + 256))
              {
                v7 = *(v6 + 32);
                if (v7)
                {
                  v8 = *(v6 + 31);
                  *(&v12 + 1) = *(v6 + 30);
                  LODWORD(v13) = v8;
                  *(&v13 + 1) = v7;
                  sub_100005110(&qword_100030C88, &v12);
                }
              }
            }
          }
        }

        v6 = *(v6 + 3);
      }

      while (v6);
      v3 = *(a1 + 256);
    }

    if (v3 && (v9 = v5[31], *(&v12 + 1) = v5[30], LODWORD(v13) = v9, *(&v13 + 1) = v5[32], !sub_1000051A4(&qword_100030C88, &v12)))
    {
      sub_10002088C();
      return 0xFFFFFFFFLL;
    }

    else
    {
      sub_1000052CC(&qword_100030C88);
      return 0;
    }
  }

  else
  {
    result = 0;
    v11 = *(a1 + 56);
    *(a1 + 248) = 0;
    *(a1 + 256) = v11;
    *(a1 + 240) = v11;
  }

  return result;
}

uint64_t sub_100004E20(const char *a1)
{
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    sub_10002090C();
  }

  v3 = v2;
  v5 = 0u;
  v6 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    sub_1000208F0();
  }

  if (ioctl(v3, 0xC0206933uLL, &v5) == -1)
  {
    sub_1000208D4();
  }

  if (close(v3))
  {
    sub_1000208B8();
  }

  result = v6;
  if (v6 < 1)
  {
    warnx("could not get mtu for %s, assuming 1500", a1);
    return 1500;
  }

  return result;
}

uint64_t sub_100004F18(const char *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  printf(" %s", a1);
  if (a3)
  {
    putchar(40);
    if (a5 && *(a5 + 8))
    {
      printf("%u%%");
    }

    else
    {
      sub_100003908(a2);
      printf("%s");
    }

    printf(" %llu", a3);
  }

  if (a5 && *(a5 + 32))
  {
    result = printf(" %u%%");
  }

  else
  {
    sub_100003908(a4);
    result = printf(" %s");
  }

  if (a3)
  {

    return putchar(41);
  }

  return result;
}

uint64_t sub_100005014(const char *a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5)
{
  printf(" %s", a1);
  if (a3)
  {
    putchar(40);
    if (a5 && *(a5 + 8))
    {
      printf("%u%%");
    }

    else
    {
      sub_100003908(a2);
      printf("%s");
    }

    printf(" %u", a3);
  }

  if (a5 && *(a5 + 32))
  {
    result = printf(" %u%%");
  }

  else
  {
    sub_100003908(a4);
    result = printf(" %s");
  }

  if (a3)
  {

    return putchar(41);
  }

  return result;
}

double *sub_100005110(double *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 8);
    if (v4 || *(a2 + 24))
    {
      v5 = *(a2 + 16);
      if (v5)
      {
        sub_100005310(result, 0.0, v5, v4);
        LODWORD(v6) = *(a2 + 16);
        v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      v8 = *(a2 + 24);

      return sub_100005310(v3, v7, INFINITY, v8);
    }
  }

  return result;
}

uint64_t sub_1000051A4(double *a1, uint64_t a2)
{
  if (a2 && (*(a2 + 8) || *(a2 + 24)))
  {
    v4 = sub_1000053E4(a1, INFINITY);
    if (v4)
    {
      v6 = *a1;
      if (*a1 != v4)
      {
        LODWORD(v5) = *(a2 + 16);
        v7 = v5;
        v8 = *(a2 + 8);
        while (1)
        {
          v9 = v6;
          v10 = *(*&v6 + 16);
          v11 = v10 <= v7 ? v10 * v8 : (v10 - v7) * *(a2 + 24) + v7 * v8;
          if (*(*&v6 + 24) > v11)
          {
            break;
          }

          v6 = **&v6;
          if (**&v9 == v4)
          {
            v12 = *(*&v9 + 40);
            if (v12 > *(a2 + 24))
            {
              return 0;
            }

            v15 = *(*&v9 + 16);
            LODWORD(v11) = *(a2 + 16);
            v16 = *&v11;
            if (v15 < v16)
            {
              v17 = *(a2 + 8);
              if (v12 > v17 && *(*&v9 + 24) + (v16 - v15) * v12 > v16 * v17)
              {
                return 0;
              }
            }

            return 1;
          }
        }

        return 0;
      }
    }
  }

  else
  {
    v14 = *a1;
    if (*a1)
    {
      while (*(*&v14 + 40) == 0.0)
      {
        v14 = **&v14;
        if (v14 == 0.0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t *sub_1000052CC(uint64_t **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        *(v3 + 8) = v4;
      }

      *v4 = v3;
      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

double *sub_100005310(double *a1, double a2, double a3, double a4)
{
  v8 = a2 + a3;
  if (a3 == INFINITY)
  {
    v9 = INFINITY;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1000053E4(a1, a2);
  result = sub_1000053E4(a1, v9);
  if (v10 && result)
  {
    for (; v10 != result; v10 = *v10)
    {
      v10[5] = v10[5] + a4;
      v10[3] = v10[3] + (v10[2] - a2) * a4 + 0.0;
    }

    result = sub_1000053E4(a1, INFINITY);
    while (v10 != result)
    {
      v10[3] = v10[3] + a4 * a3;
      v10 = *v10;
    }
  }

  return result;
}

double *sub_1000053E4(double *a1, double a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    while (1)
    {
      v6 = *&v4;
      v7 = *(*&v4 + 16);
      if (v7 == a2)
      {
        return *&v4;
      }

      v8 = v7 < a2;
      if (v7 >= a2)
      {
        goto LABEL_8;
      }

      v4 = **&v4;
      v5 = v6;
      if (!*v6)
      {
        v5 = v6;
        v6 = 0;
        goto LABEL_8;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  v8 = 1;
LABEL_8:
  result = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040CA010D23uLL);
  if (result)
  {
    result[2] = a2;
    v10 = a2 == INFINITY || v8;
    v11 = 0.0;
    if ((v10 & 1) == 0)
    {
      v12 = v6[2];
      v11 = INFINITY;
      if (v12 != INFINITY)
      {
        v11 = v12 - a2;
      }
    }

    result[4] = v11;
    if (v5)
    {
      if (a2 == INFINITY)
      {
        v5[4] = INFINITY;
        v13 = v5[5];
        if (v13 == 0.0)
        {
          v14 = v5[3];
        }

        else
        {
          v14 = INFINITY;
        }
      }

      else
      {
        v16 = v5[3];
        v17 = a2 - v5[2];
        v5[4] = v17;
        v13 = v5[5];
        v14 = v16 + v17 * v13;
      }

      result[3] = v14;
      result[5] = v13;
      v15 = *v5;
      *result = *v5;
      if (v15 == 0.0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result[3] = 0.0;
      result[5] = 0.0;
      v15 = *a1;
      *result = *a1;
      v5 = a1;
      if (v15 == 0.0)
      {
        goto LABEL_26;
      }
    }

    *(*&v15 + 8) = result;
LABEL_26:
    *v5 = result;
    *(result + 1) = v5;
  }

  return result;
}

uint64_t sub_100005544(uint64_t a1, void *a2)
{
  v41 = 0;
  v42 = 0;
  qword_100030C98 = 0;
  unk_100030CA0 = 0;
  qword_100030C90 = 0;
  sub_100005854();
  v39 = 0;
  v40 = &v39;
  v7 = a2[16];
  a2[16] = a2[20];
  a2[20] = v7;
  for (i = *v7; *v7; i = *v7)
  {
    v9 = i[70];
    v10 = i[71];
    v11 = v7 + 1;
    if (v9)
    {
      v11 = (v9 + 568);
    }

    *v11 = v10;
    *v10 = v9;
    v12 = malloc_type_calloc(1uLL, 0x4B8uLL, 0x10A2040A94CC7BAuLL);
    if (!v12)
    {
      sub_100020928();
    }

    v13 = v12;
    v4 = memcpy(v12, i, 0x410uLL);
    v14 = v13 + 576;
    if (i[72])
    {
      *(v13 + 72) = 0;
      *(v13 + 73) = v14;
      v4 = sub_1000118D8(i + 72, v14);
    }

    else
    {
      *(v13 + 80) = 0;
      v5 = 0.0;
      *(v13 + 38) = 0u;
      *(v13 + 39) = 0u;
      *v14 = 0u;
      *(v13 + 37) = 0u;
    }

    *(v13 + 133) = 0;
    v15 = v40;
    *(v13 + 134) = v40;
    *v15 = v13;
    v40 = (v13 + 1064);
    v7 = a2[20];
  }

  v41 = 0;
  v42 = &v41;
  if (!sub_1000058DC(v5, v6, v4, &v39, &v41) && ((*(a1 + 8) & 2) == 0 || !sub_100005A20()))
  {
    v25 = v41;
    if (!v41)
    {
      result = 0;
      *(a2[72] + 1752) = 0;
      return result;
    }

    while (!sub_100005D18(a1, v25))
    {
      v25 = v25[2];
      if (!v25)
      {
        v26 = v41;
        *(a2[72] + 1752) = 0;
        if (v26)
        {
          do
          {
            v27 = v26[2];
            v28 = v26[3];
            v29 = (v27 + 24);
            if (!v27)
            {
              v29 = &v42;
            }

            *v29 = v28;
            *v28 = v27;
            for (j = *v26; *v26; j = *v26)
            {
              v31 = *(j + 1064);
              v32 = *(j + 1072);
              v33 = (v31 + 1072);
              if (!v31)
              {
                v33 = v26 + 1;
              }

              *v33 = v32;
              *v32 = v31;
              v34 = a2[72];
              v35 = *(v34 + 1752);
              *(v34 + 1752) = v35 + 1;
              *(j + 948) = v35;
              v36 = malloc_type_calloc(1uLL, 0x410uLL, 0x10A2040FAB20DA7uLL);
              if (!v36)
              {
                sub_100020928();
              }

              v37 = v36;
              memcpy(v36, j, 0x410uLL);
              v37[72] = 0;
              v37[73] = v37 + 72;
              sub_1000118D8((j + 576), (v37 + 72));
              v37[70] = 0;
              v38 = *(a2[16] + 8);
              v37[71] = v38;
              *v38 = v37;
              *(a2[16] + 8) = v37 + 70;
              sub_100005DA8(*(j + 1040));
              sub_100005DA8(*(j + 1048));
              free(j);
            }

            sub_100005E10(a1, v26);
            v26 = v41;
          }

          while (v41);
        }

        return 0;
      }
    }
  }

  for (k = v39; v39; k = v39)
  {
    v17 = *(k + 1064);
    v18 = *(k + 1072);
    v19 = (v17 + 1072);
    if (!v17)
    {
      v19 = &v40;
    }

    *v19 = v18;
    *v18 = v17;
    sub_100005DA8(*(k + 1040));
    sub_100005DA8(*(k + 1048));
    free(k);
  }

  while (1)
  {
    v23 = v41;
    if (!v41)
    {
      break;
    }

    v20 = v41[2];
    v21 = v41[3];
    v22 = (v20 + 24);
    if (!v20)
    {
      v22 = &v42;
    }

    *v22 = v21;
    *v21 = v20;
    sub_100005E10(a1, v23);
  }

  return 1;
}

void sub_100005854()
{
  for (i = 0; i != 8; ++i)
  {
    v1 = 8;
    v2 = &off_10002C3E8;
    do
    {
      if (i == *(v2 - 2))
      {
        qword_100030CA8[i] = *v2;
        qword_100030CE8[i] = *(v2 - 2);
      }

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  for (j = 0; j != 8; ++j)
  {
    if (!qword_100030CA8[j])
    {
      sub_100020944();
    }
  }
}

uint64_t sub_1000058DC(double a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a4;
  if (*a4)
  {
    v8 = 0;
    v9 = a4 + 1;
    v10 = 0uLL;
    do
    {
      v11 = *(v5 + 1064);
      v12 = *(v5 + 1072);
      v13 = (v11 + 1072);
      if (!v11)
      {
        v13 = v9;
      }

      *v13 = v12;
      *v12 = v11;
      v20 = v10;
      v21 = a2;
      if (!v8 || (v14 = sub_1000079B8(v8, v5), v10 = v20, a2 = v21, !v14))
      {
        v15 = malloc_type_calloc(1uLL, 0xA8uLL, 0xA0040F7771C94uLL);
        if (!v15)
        {
          warn("calloc");
          return 1;
        }

        v8 = v15;
        v16 = 0;
        *v15 = 0;
        v15[1] = v15;
        v10 = v20;
        do
        {
          a2.n128_u64[0] = &v15[v16 + 5];
          a2.n128_u64[1] = &v15[v16 + 7];
          vst2q_f64(a2.n128_u64[0], *(&a2 - 1));
          v16 += 4;
        }

        while (v16 != 16);
        v15[2] = 0;
        v17 = *(a5 + 8);
        v15[3] = v17;
        *v17 = v15;
        *(a5 + 8) = v15 + 2;
      }

      *(v5 + 1064) = 0;
      v18 = v8[1];
      *(v5 + 1072) = v18;
      *v18 = v5;
      v8[1] = (v5 + 1064);
      v5 = *a4;
    }

    while (*a4);
  }

  return 0;
}

uint64_t sub_100005A20()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  memset(__s1, 0, 512);
  v17 = 0;
  v18 = &v17;
  v19[0] = 0;
  v19[1] = v19;
  memset(__s2, 0, 512);
  bzero(v22, 0xC20uLL);
  v4 = ioctl(*v3, 0xCC204406uLL, v22);
  if (v4)
  {
LABEL_20:
    v9 = "DIOCGETRULES";
LABEL_21:
    warn(v9);
    return 1;
  }

  v7 = v23;
  if (v23 >= 1)
  {
    v8 = 0;
    v9 = "calloc";
    do
    {
      v10 = malloc_type_calloc(1uLL, 0x4B8uLL, 0x10A2040A94CC7BAuLL);
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = v10;
      v23 = v8;
      if (ioctl(*v3, 0xCC204407uLL, v22))
      {
        goto LABEL_20;
      }

      memcpy(v11, v25, 0x410uLL);
      v4 = sub_10000281C(v24);
      v11[97] = *(v4 + 72);
      if (!v11[72])
      {
        v11[80] = 0;
        v5 = 0.0;
        *(v11 + 38) = 0u;
        *(v11 + 39) = 0u;
        *(v11 + 36) = 0u;
        *(v11 + 37) = 0u;
      }

      v11[133] = 0;
      v12 = v18;
      v11[134] = v18;
      *v12 = v11;
      v18 = v11 + 133;
    }

    while (v7 != ++v8);
  }

  if (sub_1000058DC(v5, v6, v4, &v17, v19))
  {
    return 1;
  }

  v14 = v19[0];
  v15 = *v2;
  if (v15 && v19[0])
  {
    do
    {
      sub_100006C74(__s1, *v15, 1);
      sub_100006C74(__s2, *v14, 1);
      if (memcmp(__s1, __s2, 0x410uLL))
      {
        goto LABEL_17;
      }

      *(v15 + 32) = v14;
      v14 = *(v14 + 16);
      v15 = *(v15 + 16);
    }

    while (v15 && v14);
  }

  if (v14)
  {
    do
    {
LABEL_17:
      v16 = *(v14 + 16);
      sub_100005E10(v3, v14);
      v14 = v16;
    }

    while (v16);
  }

  return 0;
}

BOOL sub_100005D18(uint64_t a1, uint64_t *a2)
{
  if (!*(*a2 + 1064))
  {
    return 0;
  }

  sub_100005EA8();
  if (sub_1000061F4(a1, a2))
  {
    return 1;
  }

  if ((*(a1 + 8) & 2) == 0 || !*(*a2 + 1008) || !a2[4])
  {
    return sub_100006864(a1, a2, 0, v4, v5) != 0;
  }

  sub_1000065F0(a1, a2);
  return 0;
}

void sub_100005DA8(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 10) - 1;
    *(a1 + 10) = v2;
    if (!v2)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        sub_10000EC68(v3);
        free(*(a1 + 8));
      }

      free(a1);
    }
  }
}

void sub_100005E10(uint64_t a1, uint64_t *a2)
{
  for (i = *a2; *a2; i = *a2)
  {
    v5 = *(i + 1064);
    v6 = *(i + 1072);
    v7 = (v5 + 1072);
    if (!v5)
    {
      v7 = a2 + 1;
    }

    *v7 = v6;
    *v6 = v5;
    sub_100005DA8(*(i + 1040));
    sub_100005DA8(*(i + 1048));
    free(i);
  }

  if (a2[4])
  {
    sub_100005E10(a1);
  }

  free(a2);
}

uint64_t sub_100005EA8()
{
  __chkstk_darwin();
  memset(__src, 0, 512);
  memset(__dst, 0, 512);
  memset(__s2, 0, 512);
  memset(v13, 0, 512);
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = v0 + 1;
  do
  {
    v3 = v1[133];
    if (!v3)
    {
      return 0;
    }

    v4 = v1[133];
    while (1)
    {
      v5 = v4[133];
      sub_100006C74(__src, v1, 4);
      sub_100006C74(__s2, v4, 4);
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v13, __s2, sizeof(v13));
      sub_100006CD8(__src, __s2);
      sub_100006CD8(v13, __dst);
      if (!memcmp(__src, __s2, 0x410uLL))
      {
        v6 = v4[133];
        v7 = v4[134];
        v8 = (v6 + 1072);
        if (!v6)
        {
          v8 = v2;
        }

        *v8 = v7;
        *v7 = v6;
        if (v3 == v4)
        {
          v3 = v1[133];
        }

        free(v4);
        goto LABEL_13;
      }

      if (!memcmp(__dst, v13, 0x410uLL))
      {
        break;
      }

LABEL_13:
      v4 = v5;
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v9 = v1[133];
    v10 = v1[134];
    v11 = (v9 + 1072);
    if (!v9)
    {
      v11 = v2;
    }

    *v11 = v10;
    *v10 = v9;
    free(v1);
LABEL_18:
    v1 = v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_1000061F4(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 12) & 0x20) == 0)
  {
    warnx("Must enable table loading for optimizations");
    return 1;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = a2 + 1;
  do
  {
    v6 = *(v3 + 1064);
    if (!v6)
    {
      break;
    }

    v7 = v3 + 1040;
    v8 = v3 + 1048;
    do
    {
      v9 = v6;
      v6 = *(v6 + 1064);
      v10 = *(v3 + 56) != *(v9 + 56) || memcmp(v3, v9, 0x30uLL) != 0;
      v11 = *(v3 + 120) == *(v9 + 120) && memcmp((v3 + 64), (v9 + 64), 0x30uLL) == 0;
      if (v10 || v11)
      {
        if (!v10 || !v11 || *v8 || *(v9 + 1040) || *(v9 + 1048) || !sub_100006F7C(v3, v9) || !sub_1000070CC(v3, v9))
        {
          continue;
        }

        if (!*v7 && sub_100007128(a1, (v3 + 1040), *(v3 + 1013), v3) || sub_100007128(a1, (v3 + 1040), *(v3 + 1013), v9))
        {
          return 1;
        }

        v12 = *v7;
        if (*(*v7 + 32) < 6)
        {
          ++*(v12 + 40);
          *(v9 + 1040) = v12;
          continue;
        }
      }

      else
      {
        if (*v7 || *(v9 + 1048) || *(v9 + 1040) || !sub_100006F7C(v3, v9) || !sub_1000070CC(v3 + 64, v9 + 64))
        {
          continue;
        }

        if (!*v8 && sub_100007128(a1, (v3 + 1048), *(v3 + 1013), (v3 + 64)) || sub_100007128(a1, (v3 + 1048), *(v3 + 1013), (v9 + 64)))
        {
          return 1;
        }

        v13 = *v8;
        if (*(*v8 + 32) < 6)
        {
          ++*(v13 + 40);
          *(v9 + 1048) = v13;
          continue;
        }
      }

      v14 = *(v9 + 1064);
      v15 = *(v9 + 1072);
      v16 = (v14 + 1072);
      if (!v14)
      {
        v16 = a2 + 1;
      }

      *v16 = v15;
      *v15 = v14;
      free(v9);
    }

    while (v6);
    v3 = *(v3 + 1064);
  }

  while (v3);
  v17 = *a2;
  if (*a2)
  {
    while (1)
    {
      v18 = v17;
      v17 = *(v17 + 1064);
      v19 = *(v18 + 130);
      if (!v19)
      {
        goto LABEL_54;
      }

      if (*(v18 + 131))
      {
        sub_100020960();
      }

      if (*(v19 + 32) < 6)
      {
        goto LABEL_54;
      }

      if (*(v19 + 36))
      {
        v20 = *(v18 + 134);
        v21 = (v17 + 1072);
        if (!v17)
        {
          v21 = v5;
        }

        *v21 = v20;
        *v20 = v17;
LABEL_60:
        free(v18);
LABEL_61:
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        *(v19 + 36) = 1;
        v22 = *(a1 + 4);
        if ((v22 & 8) == 0)
        {
          if (sub_100007318(a1, v19))
          {
            return 1;
          }

          v22 = *(a1 + 4);
        }

        *(a1 + 28) = 1;
        if ((v22 & 4) != 0)
        {
          sub_10000B93C(*(v18 + 130), 2, 1, (*(v18 + 130) + 48));
        }

        v18[1] = 0u;
        v18[2] = 0u;
        *v18 = 0u;
        *(v18 + 40) = 3;
        __strlcpy_chk();
        sub_10000EC68(*(*(v18 + 130) + 64));
        free(*(*(v18 + 130) + 64));
        *(*(v18 + 130) + 64) = 0;
LABEL_54:
        v23 = *(v18 + 131);
        if (!v23 || *(v23 + 32) < 6)
        {
          goto LABEL_61;
        }

        if (*(v23 + 36))
        {
          v24 = *(v18 + 133);
          v25 = *(v18 + 134);
          v26 = (v24 + 1072);
          if (!v24)
          {
            v26 = v5;
          }

          *v26 = v25;
          *v25 = v24;
          goto LABEL_60;
        }

        *(v23 + 36) = 1;
        v27 = *(a1 + 4);
        if ((v27 & 8) == 0)
        {
          if (sub_100007318(a1, v23))
          {
            return 1;
          }

          v27 = *(a1 + 4);
        }

        *(a1 + 28) = 1;
        if ((v27 & 4) != 0)
        {
          sub_10000B93C(*(v18 + 131), 2, 1, (*(v18 + 131) + 48));
        }

        v18[4] = 0u;
        v28 = v18 + 4;
        v28[1] = 0u;
        v28[2] = 0u;
        *(v28 + 40) = 3;
        __strlcpy_chk();
        sub_10000EC68(*(*(v28 + 123) + 64));
        free(*(*(v28 + 123) + 64));
        *(*(v28 + 123) + 64) = 0;
        if (!v17)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1000065F0(uint64_t a1, void **a2)
{
  memset(__s1, 0, 512);
  memset(__s2, 0, 512);
  v4 = a2[4];
  v5 = *v4;
  if (*v4)
  {
    do
    {
      sub_100006C74(__s1, v5, 4);
      v6 = *a2;
      if (*a2)
      {
        while (1)
        {
          if (!v6[132])
          {
            sub_100006C74(__s2, v6, 4);
            if (!memcmp(__s1, __s2, 0x410uLL))
            {
              break;
            }
          }

          v6 = v6[133];
          if (!v6)
          {
            goto LABEL_8;
          }
        }

        v6[132] = v5[83] + v5[82];
      }

LABEL_8:
      v5 = v5[133];
    }

    while (v5);
  }

  sub_100005E10(a1, v4);
  a2[4] = 0;
  v20 = 0;
  v21 = &v20;
  v7 = *a2;
  if (*a2)
  {
    v8 = a2 + 1;
    do
    {
      v9 = v7[133];
      v10 = v7[134];
      v11 = (v9 + 1072);
      if (!v9)
      {
        v11 = a2 + 1;
      }

      *v11 = v10;
      *v10 = v9;
      v7[133] = 0;
      v12 = v21;
      v7[134] = v21;
      *v12 = v7;
      v21 = v7 + 133;
      v7 = *a2;
    }

    while (*a2);
    while (1)
    {
      v18 = v20;
      if (!v20)
      {
        break;
      }

      v13 = v20[133];
      v14 = v20[134];
      if (v13)
      {
        *(v13 + 1072) = v14;
      }

      *v14 = v13;
      v15 = *a2;
      if (*a2)
      {
        while (v18[132] <= v15[132])
        {
          v15 = v15[133];
          if (!v15)
          {
            goto LABEL_20;
          }
        }

        v17 = v15 + 134;
        v16 = v15[134];
        v18[134] = v16;
        v18[133] = v15;
      }

      else
      {
LABEL_20:
        v18[133] = 0;
        v16 = *v8;
        v18[134] = *v8;
        v17 = a2 + 1;
      }

      *v16 = v18;
      *v17 = v18 + 133;
    }
  }

  return 0;
}

uint64_t sub_100006864(uint64_t a1, uint64_t *a2, int a3, double a4, __n128 a5)
{
  v6 = 0;
  v66 = 0;
  v67[0] = 0;
  v7 = a2 + 5;
  do
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = &v7[2 * v6];
      do
      {
        v10 = *v9;
        if (*v9)
        {
          while ((qword_100030CA8[v6])(v8, *(v10 + 8)))
          {
            v10 = *(v10 + 24);
            if (!v10)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
LABEL_7:
          v11 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00406DBE01EBuLL);
          if (!v11)
          {
            sub_100020928();
          }

          v10 = v11;
          v11[1] = 0;
          v11[2] = v11 + 1;
          v11[3] = 0;
          v12 = v9[1];
          v11[4] = v12;
          *v12 = v11;
          v9[1] = (v11 + 3);
        }

        sub_1000074C8(a2, v6, v10, v8);
        v8 = *(v8 + 1064);
      }

      while (v8);
    }

    ++v6;
  }

  while (v6 != 8);
  v13 = *a2;
  if (*a2)
  {
    v14 = 0;
    do
    {
      ++v14;
      v13 = *(v13 + 1064);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
  for (i = 5; i != 21; i += 2)
  {
    v17 = a2[i];
    v18 = *v17;
    if (*v17 == v14 || v18 == 1)
    {
      *v17 = 0;
    }

    else if (v18 > v15)
    {
      v15 = *v17;
    }
  }

  if (v15)
  {
    v66 = 0;
    v67[0] = &v66;
    v19 = *a2;
    if (*a2)
    {
      v20 = (a2 + 1);
      do
      {
        v21 = *(v19 + 1064);
        v22 = *(v19 + 1072);
        v23 = (v21 + 1072);
        if (!v21)
        {
          v23 = a2 + 1;
        }

        *v23 = v22;
        *v22 = v21;
        *(v19 + 1064) = 0;
        v24 = v67[0];
        *(v19 + 1072) = v67[0];
        *v24 = v19;
        v67[0] = v19 + 1064;
        v19 = *a2;
      }

      while (*a2);
      v25 = v66;
      if (v66)
      {
        v26 = 0;
        v27 = 0uLL;
        while (1)
        {
          v28 = 0;
          v29 = 1;
          v30 = 5;
          do
          {
            if (*a2[v30] > v29)
            {
              v29 = *a2[v30];
              v26 = v28;
            }

            ++v28;
            v30 += 2;
          }

          while (v28 != 8);
          if (v29 < 2)
          {
            break;
          }

          v31 = &v7[2 * v26];
          v34 = *v31;
          v32 = v31 + 1;
          v33 = v34;
          v35 = v34[3];
          v36 = v34[4];
          if (v35)
          {
            v32 = (v35 + 32);
          }

          *v32 = v36;
          *v36 = v35;
          v37 = a2;
          if (*v33 > 2)
          {
            v63 = v27;
            v38 = malloc_type_calloc(1uLL, 0xA8uLL, 0xA0040F7771C94uLL);
            if (!v38)
            {
              warn("calloc");
              return 1;
            }

            v37 = v38;
            v39 = 0;
            *v38 = 0;
            v38[1] = v38;
            v27 = v63;
            do
            {
              a5.n128_u64[0] = &v38[v39 + 5];
              a5.n128_u64[1] = &v38[v39 + 7];
              vst2q_f64(a5.n128_u64[0], *(&a5 - 1));
              v39 += 4;
            }

            while (v39 != 16);
            v40 = a2[3];
            v38[3] = v40;
            v38[2] = a2;
            *v40 = v38;
            a2[3] = (v38 + 2);
          }

          v64 = v27;
          v65 = a5;
          for (j = v33[1]; j; j = v33[1])
          {
            v42 = *(j + 1064);
            v43 = *(j + 1072);
            v44 = (v42 + 1072);
            if (!v42)
            {
              v44 = v67;
            }

            *v44 = v43;
            *v43 = v42;
            v45 = j + 16 * v26;
            v46 = *(v45 + 1080);
            v47 = *(v45 + 1088);
            v48 = (v46 + 16 * v26 + 1088);
            if (!v46)
            {
              v48 = v33 + 2;
            }

            *v48 = v47;
            *v47 = v46;
            *(j + 1064) = 0;
            v49 = v37[1];
            *(j + 1072) = v49;
            *v49 = j;
            v37[1] = j + 1064;
            sub_100007558(&v7[2 * v26], a2, j, v33);
          }

          free(v33);
          if (v37 != a2 && sub_100006864(a1, v37, (a3 + 1)))
          {
            return 1;
          }

          v25 = v66;
          v27 = v64;
          a5 = v65;
          if (!v66)
          {
            goto LABEL_56;
          }
        }

        do
        {
          v50 = *(v25 + 1064);
          v51 = *(v25 + 1072);
          v52 = (v50 + 1072);
          if (!v50)
          {
            v52 = v67;
          }

          *v52 = v51;
          *v51 = v50;
          *(v25 + 1064) = 0;
          v53 = *v20;
          *(v25 + 1072) = *v20;
          *v53 = v25;
          *v20 = (v25 + 1064);
          v25 = v66;
        }

        while (v66);
      }
    }
  }

LABEL_56:
  for (k = 0; k != 8; ++k)
  {
    v55 = &v7[2 * k];
    for (m = *v55; *v55; m = *v55)
    {
      v57 = m[3];
      v58 = m[4];
      v59 = (v57 + 32);
      if (!v57)
      {
        v59 = v55 + 1;
      }

      *v59 = v58;
      *v58 = v57;
      free(m);
    }
  }

  return 0;
}

void sub_100006C74(char *a1, const void *a2, int a3)
{
  memcpy(a1, a2, 0x410uLL);
  v5 = &unk_100030028;
  v6 = 68;
  do
  {
    if (*(v5 - 4) >= a3)
    {
      bzero(&a1[*(v5 - 1)], *v5);
    }

    v5 += 4;
    --v6;
  }

  while (v6);
}

uint64_t sub_100006CD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (!*(result + 256))
  {
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
  }

  if (!*(result + 1005))
  {
    *(a2 + 1005) = 0;
  }

  v4 = *(result + 1014);
  if (!*(result + 1014) || v4 == *(a2 + 1014))
  {
    if (!*(result + 1017) && !*(result + 1018) && (*(a2 + 1017) || *(a2 + 1018)))
    {
      *(a2 + 1017) = 0;
    }

    if (!v4)
    {
      *(a2 + 1014) = 0;
    }
  }

  if (!*(result + 52))
  {
    *(a2 + 52) = 0;
    *(a2 + 48) = 0;
  }

  if (!*(result + 116))
  {
    *(a2 + 116) = 0;
    *(a2 + 112) = 0;
  }

  if (!*(result + 40))
  {
    if (!*(result + 56) && !*(a2 + 56) && !*(result + 16) && !*(result + 20) && !*(result + 24) && !*(result + 28))
    {
      v6 = 0uLL;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      goto LABEL_35;
    }

    if (!*(a2 + 40) && *(result + 56) == *(a2 + 56) && *(result + 1013) == *(a2 + 1013))
    {
      v5 = sub_100000ACC(result + 16);
      result = sub_100000ACC(a2 + 16);
      if (v5 < result && *v3 == (*(v3 + 16) & *a2) && *(v3 + 4) == (*(v3 + 20) & *(a2 + 4)) && *(v3 + 8) == (*(v3 + 24) & *(a2 + 8)) && *(v3 + 12) == (*(v3 + 28) & *(a2 + 12)))
      {
        v6 = *v3;
        v7 = *(v3 + 32);
        *(a2 + 16) = *(v3 + 16);
        *(a2 + 32) = v7;
LABEL_35:
        *a2 = v6;
      }
    }
  }

  if (!*(v3 + 104))
  {
    if (*(v3 + 120) || *(a2 + 120) || *(v3 + 80) || *(v3 + 84) || *(v3 + 88) || *(v3 + 92))
    {
      if (*(a2 + 104))
      {
        goto LABEL_54;
      }

      if (*(v3 + 120) != *(a2 + 120))
      {
        goto LABEL_54;
      }

      if (*(v3 + 1013) != *(a2 + 1013))
      {
        goto LABEL_54;
      }

      v8 = sub_100000ACC(v3 + 80);
      result = sub_100000ACC(a2 + 80);
      if (v8 >= result || *(v3 + 64) != (*(v3 + 80) & *(a2 + 64)) || *(v3 + 68) != (*(v3 + 84) & *(a2 + 68)) || *(v3 + 72) != (*(v3 + 88) & *(a2 + 72)) || *(v3 + 76) != (*(v3 + 92) & *(a2 + 76)))
      {
        goto LABEL_54;
      }

      v9 = *(v3 + 64);
      v10 = *(v3 + 96);
      *(a2 + 80) = *(v3 + 80);
      *(a2 + 96) = v10;
    }

    else
    {
      v9 = 0uLL;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
    }

    *(a2 + 64) = v9;
  }

LABEL_54:
  if (!*(v3 + 1013))
  {
    *(a2 + 1013) = 0;
  }

  return result;
}

BOOL sub_100006F7C(const void *a1, const void *a2)
{
  memset(__s1, 0, 512);
  memset(v4, 0, 512);
  sub_100006C74(__s1, a1, 3);
  sub_100006C74(v4, a2, 3);
  return memcmp(__s1, v4, 0x410uLL) == 0;
}

uint64_t sub_100007128(uint64_t a1, char **a2, char a3, __int128 *a4)
{
  v8 = *a2;
  if (!*a2)
  {
    v9 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040EDDA91A3uLL);
    *a2 = v9;
    if (!v9 || (v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL), (*(*a2 + 8) = v10) == 0))
    {
      sub_100020928();
    }

    v11 = *a2;
    *(v11 + 10) = 1;
    **(v11 + 8) = 3;
    *(v11 + 6) = 0;
    *(*a2 + 7) = *a2 + 48;
    v12 = *a2;
    v13 = dword_100030C34++;
    snprintf(v12, 0x20uLL, "%s%d", "__automatic_", v13);
    v8 = *a2;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  LOBYTE(v30) = a3;
  v14 = a4[1];
  v25 = *a4;
  v26 = v14;
  v27 = a4[2];
  if (sub_10000CA4C(*(v8 + 8), &v25, 0, 0))
  {
    warn("failed to add host");
    return 1;
  }

  else
  {
    if ((*(a1 + 4) & 4) != 0)
    {
      v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
      if (!v15)
      {
        sub_1000207D0();
      }

      v16 = v15;
      v17 = malloc_type_malloc(0x78uLL, 0x10B20409DAB6FE4uLL);
      v16[1] = v17;
      if (!v17)
      {
        sub_1000207D0();
      }

      v18 = v25;
      v19 = v26;
      v20 = v28;
      v17[2] = v27;
      v17[3] = v20;
      *v17 = v18;
      v17[1] = v19;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      *(v17 + 14) = v32;
      v17[5] = v22;
      v17[6] = v23;
      v17[4] = v21;
      *v16 = 0;
      **(*a2 + 7) = v16;
      *(*a2 + 7) = v16;
    }

    result = 0;
    ++*(*a2 + 8);
  }

  return result;
}

uint64_t sub_100007318(uint64_t a1, char *__str)
{
  if (qword_100030C90)
  {
    v4 = dword_100030D28;
  }

  else
  {
    LODWORD(qword_100030C90) = 1;
    v5 = HIDWORD(qword_100030C90);
    do
    {
      sub_10000EAF8(&qword_100030C90, v5);
      HIDWORD(qword_100030C90) = qword_100030C98;
      if (sub_10000DE88(0, unk_100030CA0, &qword_100030C90 + 1, 64))
      {
        sub_10002098C();
      }

      v5 = HIDWORD(qword_100030C90);
    }

    while (SHIDWORD(qword_100030C90) > qword_100030C98);
    v4 = arc4random();
    dword_100030D28 = v4;
  }

  snprintf(__str, 0x20uLL, "%s%x_%d", "__automatic_", v4, dword_100030C38);
  v6 = sub_10000EC0C(&qword_100030C90, 0);
  if (v6)
  {
    v7 = v6;
    do
    {
      if (!strcasecmp(v7 + 1024, __str))
      {
        dword_100030D28 = arc4random();
        snprintf(__str, 0x20uLL, "%s%x_%d", "__automatic_", dword_100030D28, dword_100030C38);
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      v7 = sub_10000EC0C(&qword_100030C90, v8);
    }

    while (v7);
  }

  ++dword_100030C38;
  result = sub_10000FD50(__str, 2, 1, *(a1 + 32) + 64, *(__str + 8), *(*(a1 + 32) + 1736));
  if (result)
  {
    warn("failed to create table %s in %s", __str, (*(a1 + 32) + 64));
    return 1;
  }

  return result;
}

uint64_t sub_1000074C8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = (*a3)++;
  v5 = a4 + 16 * a2;
  *(v5 + 1080) = 0;
  v6 = *(a3 + 16);
  *(v5 + 1088) = v6;
  *v6 = a4;
  *(a3 + 16) = v5 + 1080;
  v7 = *(a3 + 32);
  v8 = **(v7 + 8);
  if (v8)
  {
    v9 = (a3 + 24);
    do
    {
      if (*v8 > v4)
      {
        break;
      }

      v10 = *v9;
      if (*v9)
      {
        *(v10 + 32) = v7;
        v7 = *(a3 + 32);
      }

      else
      {
        *(result + 16 * a2 + 48) = v7;
      }

      *v7 = v10;
      v11 = *(v8 + 32);
      *(a3 + 24) = v8;
      *(a3 + 32) = v11;
      *v11 = a3;
      *(v8 + 32) = v9;
      v7 = *(a3 + 32);
      v8 = **(v7 + 8);
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100007558(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 8; ++i)
  {
    v5 = *(a2 + 40 + 16 * i);
    if (v5)
    {
      v6 = v5 == a4;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 && *v5 >= 2)
    {
      while (1)
      {
        v7 = *(v5 + 8);
        if (v7)
        {
          break;
        }

LABEL_10:
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v8 = v7;
        v9 = v7 + 1080;
        v7 = *(v7 + 1080 + 16 * i);
        if (v8 == a3)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_10;
        }
      }

      v10 = *(v9 + 16 * i + 8);
      v11 = (v7 + 16 * i + 1088);
      v12 = (*v5)--;
      if (!v7)
      {
        v11 = (v5 + 16);
      }

      *v11 = v10;
      *v10 = v7;
      for (j = *(v5 + 24); j; j = *(v5 + 24))
      {
        if (*j < v12)
        {
          break;
        }

        v14 = *(v5 + 32);
        *(j + 32) = v14;
        *v14 = j;
        v16 = *(j + 24);
        v15 = (j + 24);
        *(v5 + 24) = v16;
        v17 = v16 + 32;
        v18 = (v16 ? v17 : result + 8);
        *v18 = v5 + 24;
        *v15 = v5;
        *(v5 + 32) = v15;
      }
    }

LABEL_20:
    ;
  }

  return result;
}

BOOL sub_10000763C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1013))
  {
    v2 = *(a1 + 1013) == *(a2 + 1013);
  }

  else
  {
    v2 = 0;
  }

  return !v2;
}

uint64_t sub_100007674(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) != *(a2 + 120))
  {
    return 1;
  }

  v4 = *(a1 + 104);
  if (v4 != *(a2 + 104))
  {
    return 1;
  }

  result = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      return result;
    }

    if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
    {
      v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
      if (v9 && (*(a1 + 64) || *(a1 + 68) || *(a1 + 72) || *(a1 + 76)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4 == 2)
  {
    if (!strcmp((a1 + 64), (a2 + 64)) && *(a1 + 105) == *(a2 + 105))
    {
      return *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88);
    }

    return 1;
  }

  if (v4 != 3)
  {
    if (v4 == 5)
    {
      return result;
    }

    return 1;
  }

  v7 = (a2 + 64);

  return strcmp((a1 + 64), v7);
}

BOOL sub_100007834(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1014))
  {
    v2 = *(a1 + 1014) == *(a2 + 1014);
  }

  else
  {
    v2 = 0;
  }

  return !v2;
}

uint64_t sub_10000784C(char *__s1, char *__s2)
{
  if (__s1[56] != __s2[56])
  {
    return 1;
  }

  v4 = __s1[40];
  if (v4 != __s2[40])
  {
    return 1;
  }

  result = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      return result;
    }

    if (*__s1 == *__s2 && *(__s1 + 1) == *(__s2 + 1))
    {
      v8 = *(__s1 + 2) == *(__s2 + 2) && *(__s1 + 3) == *(__s2 + 3);
      if (v8 && (*__s1 || *(__s1 + 1) || *(__s1 + 2) || *(__s1 + 3)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4 == 2)
  {
    if (!strcmp(__s1, __s2) && __s1[41] == __s2[41])
    {
      return *(__s1 + 2) != *(__s2 + 2) || *(__s1 + 3) != *(__s2 + 3);
    }

    return 1;
  }

  if (v4 != 3)
  {
    if (v4 == 5)
    {
      return result;
    }

    return 1;
  }

  return strcmp(__s1, __s2);
}

BOOL sub_1000079B8(const char **a1, uint64_t a2)
{
  for (i = 0; i != 68; ++i)
  {
    v5 = &(&off_100030010)[4 * i];
    if (!*(v5 + 2))
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = 0;
        v8 = &v5[2][a2];
        v9 = 1;
        while (!v8[v7])
        {
          v7 = v9;
          if (v6 <= v9++)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }
    }

LABEL_3:
    ;
  }

  if ((*(a2 + 1000) & 0x40) != 0)
  {
    return 0;
  }

  memset(__s1, 0, 512);
  memset(v13, 0, 512);
  if (*(a2 + 256) && (*(a2 + 256 + strlen((a2 + 256)) - 1) - 48) >= 0xA)
  {
    v11 = *a1;
  }

  else
  {
    v11 = *a1;
    if (!v11[256] || (v11[strlen(v11 + 256) + 255] - 48) < 0xA)
    {
      goto LABEL_19;
    }
  }

  if (strcasecmp((a2 + 256), v11 + 256))
  {
    return 0;
  }

LABEL_19:
  sub_100006C74(__s1, v11, 2);
  sub_100006C74(v13, a2, 2);
  return memcmp(__s1, v13, 0x410uLL) == 0;
}

BOOL sub_100007BF4(uint64_t a1, uint64_t a2, const char *a3)
{
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  sub_1000082B4(&qword_100030D30);
  v6 = sub_100013B04(a3, "r");
  if (v6)
  {
    v7 = v6;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if ((a2 & 8) == 0)
    {
      sub_100008314(a1);
    }

    v38 = 0;
    v39 = 0;
    v36 = 0;
    v33 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    v8 = fgetln(v7, &v38);
    v39 = v8;
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = 0;
LABEL_6:
      if (v28)
      {
        free(v28);
      }

      if (v27)
      {
        free(v27);
      }

      if (v26)
      {
        free(v26);
      }

      if (v25)
      {
        free(v25);
      }

      if (v24)
      {
        free(v24);
      }

      v10 = (v10 + 1);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0;
      if (!v38)
      {
        goto LABEL_36;
      }

      v11 = 0;
      v12 = 1;
      while (v9[v11] != 35)
      {
        v11 = v12;
        if (v38 <= v12++)
        {
          v11 = v38;
          goto LABEL_22;
        }
      }

      v38 = v11;
      if (!v11)
      {
        goto LABEL_36;
      }

LABEL_22:
      v14 = v11 - 1;
      while (1)
      {
        v15 = v9[v14];
        if (v15 < 0)
        {
          if (!__maskrune(v15, 0x4000uLL))
          {
LABEL_29:
            if (v38)
            {
              for (i = v38 - 1; i != -1; --i)
              {
                v17 = *v9;
                if (v17 < 0)
                {
                  if (!__maskrune(v17, 0x4000uLL))
                  {
LABEL_39:
                    v39 = v9;
                    if (v38 && !sub_10000833C(&v39, &v38, &v37, &v36, "window size", 15, 0xFFFF) && !sub_10000833C(&v39, &v38, &v35 + 1, 0, "ttl", 0, 255) && !sub_10000833C(&v39, &v38, &v35, 0, "don't fragment frag", 0, 1) && !sub_10000833C(&v39, &v38, &v34, &v33, "overall packet size", 9, 0x2000) && !sub_1000085EC(&v39, &v38, &v24, "TCP Options", 1, a3, v10) && !sub_1000085EC(&v39, &v38, &v28, "OS class", 1, a3, v10) && !sub_1000085EC(&v39, &v38, &v27, "OS version", 0, a3, v10) && !sub_1000085EC(&v39, &v38, &v26, "OS subtype", 0, a3, v10) && !sub_1000085EC(&v39, &v38, &v25, "OS description", 2, a3, v10) && !sub_1000086C4(a3, v10, v24, &v29, &v30, &v32 + 1, &v32, &v31 + 1, &v31, &v30 + 1))
                    {
                      if (v38)
                      {
                        fprintf(__stderrp, "%s:%d excess field\n", a3, v10);
                        goto LABEL_37;
                      }

                      BYTE2(v48) = BYTE4(v35);
                      if (v35)
                      {
                        HIWORD(v47) |= 0x1000u;
                      }

                      v18 = v36 - 1;
                      if (v36 - 1) <= 7 && ((0x8Bu >> v18))
                      {
                        HIWORD(v47) |= word_100027B20[v18];
                      }

                      WORD4(v47) = v37;
                      if (v33 == 1)
                      {
                        v19 = 32;
LABEL_61:
                        HIWORD(v47) |= v19;
                      }

                      else if (v33 == 8)
                      {
                        v19 = 16;
                        goto LABEL_61;
                      }

                      WORD5(v47) = v34;
                      if (v31 == 1)
                      {
                        v20 = 256;
LABEL_66:
                        HIWORD(v47) |= v20;
                      }

                      else if (v31 == 8)
                      {
                        v20 = 128;
                        goto LABEL_66;
                      }

                      BYTE1(v48) = BYTE4(v31);
                      if (v32 == 1)
                      {
                        v21 = 2048;
LABEL_71:
                        HIWORD(v47) |= v21;
                      }

                      else if (v32 == 8)
                      {
                        v21 = 1024;
                        goto LABEL_71;
                      }

                      WORD6(v47) = WORD2(v32);
                      *&v47 = v29;
                      LOBYTE(v48) = v30;
                      if (HIDWORD(v30))
                      {
                        HIWORD(v47) |= 0x2000u;
                      }

                      v22 = *v28;
                      if (v22 == 64)
                      {
                        HIDWORD(v40) |= 2u;
                        v22 = *v28;
                      }

                      if (v22 == 42)
                      {
                        HIDWORD(v40) |= 4u;
                      }

                      __strlcpy_chk();
                      __strlcpy_chk();
                      __strlcpy_chk();
                      sub_100008938(a1, a2, &v40);
                      HIWORD(v47) |= 0x5000u;
                      WORD5(v47) += 20;
                      sub_100008938(a1, a2, &v40);
                    }

LABEL_37:
                    v9 = fgetln(v7, &v38);
                    v39 = v9;
                    if (!v9)
                    {
                      if (v28)
                      {
                        free(v28);
                      }

                      goto LABEL_81;
                    }

                    goto LABEL_6;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) == 0)
                {
                  goto LABEL_39;
                }

                v38 = i;
                ++v9;
              }
            }

LABEL_36:
            v39 = v9;
            goto LABEL_37;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v15] & 0x4000) == 0)
        {
          goto LABEL_29;
        }

        v38 = v14--;
        if (v14 == -1)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_81:
    if (v27)
    {
      free(v27);
    }

    if (v26)
    {
      free(v26);
    }

    if (v25)
    {
      free(v25);
    }

    if (v24)
    {
      free(v24);
    }

    fclose(v7);
    if ((a2 & 0x80) != 0)
    {
      printf("Loaded %d passive OS fingerprints\n", dword_100030D38);
    }

    return 0;
  }

  else
  {
    warn("%s", a3);
    return strncmp(a3, "/etc/pf.os", 0xBuLL) != 0;
  }
}

void sub_1000082B4(uint64_t **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      *(v3 + 8) = v4;
    }

    *v4 = v3;
    sub_1000082B4(i + 7);
    free(i);
  }

  dword_100030D38 = 0;
  dword_100030D3C = 0;
}

uint64_t sub_100008314(int a1)
{
  result = ioctl(a1, 0x2000444EuLL);
  if (result)
  {
    sub_1000209A8();
  }

  return result;
}

uint64_t sub_10000833C(uint64_t *a1, uint64_t *a2, _DWORD *a3, int *a4, uint64_t a5, char a6, int a7)
{
  if (a4)
  {
    *a4 = 0;
  }

  v24 = 0;
  *a3 = 0;
  v11 = sub_100009790(a1, a2, &v24);
  if (!v11)
  {
    return 1;
  }

  v12 = v24;
  if (!v24)
  {
    fprintf(__stderrp, "%s:%d empty %s\n");
    return 1;
  }

  v13 = *v11;
  if ((v13 - 37) > 0x2F || ((1 << (v13 - 37)) & 0xC00000000001) == 0)
  {
    v15 = 0;
    if (v24 >= 1 && v13 == 42)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v24 >= 1)
    {
      if (*v11 <= 0x52u)
      {
        if (v13 == 37)
        {
          goto LABEL_27;
        }

        if (v13 != 42)
        {
LABEL_39:
          if (!a4 || !*a4)
          {
            fprintf(__stderrp, "%s:%d does not allow %c' %s\n");
            return 1;
          }

          v15 = 1;
          goto LABEL_42;
        }

LABEL_18:
        if (v24 != 1)
        {
          fprintf(__stderrp, "%s:%d long '%c' %s\n");
          return 1;
        }

        if (a4 && (a6 & 1) != 0)
        {
          result = 0;
          *a4 = 1;
          return result;
        }

LABEL_27:
        if (a4 && (a6 & 8) != 0)
        {
          *a4 = 8;
        }

        if (v12 == 1)
        {
          fprintf(__stderrp, "%s:%d modulus %s must have a value\n");
          return 1;
        }

        goto LABEL_39;
      }

      if (v13 == 84)
      {
        if (a4 && (a6 & 4) != 0)
        {
          v17 = 4;
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 != 83)
        {
          goto LABEL_39;
        }

        if (a4 && (a6 & 2) != 0)
        {
          v17 = 2;
LABEL_36:
          *a4 = v17;
        }
      }

      if (v12 == 1)
      {
        return 0;
      }

      goto LABEL_39;
    }

    v15 = 0;
  }

LABEL_42:
  if (v15 >= v12)
  {
    v18 = 0;
LABEL_49:
    if (v18 <= a7)
    {
      result = 0;
      *a3 = v18;
      return result;
    }

    fprintf(__stderrp, "%s:%d %s value %ld > %d\n");
  }

  else
  {
    v18 = 0;
    v19 = &v11[v15];
    v20 = v12 - v15;
    while (1)
    {
      v22 = *v19++;
      v21 = v22;
      if (v22 - 58 <= 0xFFFFFFF5)
      {
        fprintf(__stderrp, "%s:%d non-digit character in %s\n");
        return 1;
      }

      v23 = v21 + 10 * v18;
      if (v23 <= 47)
      {
        break;
      }

      v18 = v23 - 48;
      if (!--v20)
      {
        goto LABEL_49;
      }
    }

    fprintf(__stderrp, "%s:%d %s overflowed\n");
  }

  return 1;
}

uint64_t sub_1000085EC(uint64_t *a1, uint64_t *a2, void *a3, const char *a4, int a5, const char *a6, int a7)
{
  v17 = 0;
  v12 = sub_100009790(a1, a2, &v17);
  if (!v12)
  {
    return 1;
  }

  v13 = v17;
  if (v17 < a5)
  {
    fprintf(__stderrp, "%s:%d too short %s\n", a6, a7, a4);
    return 1;
  }

  v15 = v12;
  v16 = malloc_type_malloc(v17 + 1, 0x17A54356uLL);
  *a3 = v16;
  if (!v16)
  {
    perror("malloc()");
    return 1;
  }

  memcpy(v16, v15, v13);
  result = 0;
  *(*a3 + v13) = 0;
  return result;
}

uint64_t sub_1000086C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, unsigned int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  *a4 = 0;
  *a5 = 0;
  *a8 = 0;
  *a9 = 1;
  *a6 = 0;
  *a7 = 1;
  *a10 = 0;
  v10 = *a3;
  if (*a3)
  {
    if (v10 != 46 || a3[1])
    {
      v17 = 0;
      v18 = *a5;
      while (1)
      {
        if (v18 > 0x14)
        {
          return 0;
        }

        v19 = v17 + 1;
        v20 = __toupper(v10);
        if (v20 <= 82)
        {
          break;
        }

        switch(v20)
        {
          case 'W':
            v23 = 1;
            v24 = a9;
            v25 = a8;
LABEL_25:
            *v25 = 0;
            *v24 = 0;
            *a4 = v23 | (8 * *a4);
            v26 = a3[v19];
            if (v26 == 37)
            {
              *v24 = 8;
              v19 = v17 + 2;
              LOBYTE(v26) = a3[v17 + 2];
              goto LABEL_32;
            }

            if (v26 != 42)
            {
              goto LABEL_32;
            }

            if (a3[v17 + 2] != 44 && a3[v17 + 2])
            {
              LOBYTE(v26) = 42;
LABEL_32:
              while (1)
              {
                v27 = v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                ++v19;
                *v25 = v27 + 10 * *v25;
                v26 = a3[v19];
                if (!a3[v19] || v26 == 44)
                {
                  goto LABEL_21;
                }
              }

              fprintf(__stderrp, "%s:%d unknown character '%c' in %c TCP opt\n");
              return 1;
            }

            *v24 = 1;
            v19 = v17 + 2;
            break;
          case 'T':
            if (a3[v19] == 48)
            {
              *a10 = 1;
              v19 = v17 + 2;
            }

            v21 = *a4;
            v22 = 4;
            goto LABEL_20;
          case 'S':
            goto LABEL_13;
        }

LABEL_21:
        v18 = *a5 + 1;
        *a5 = v18;
        v10 = a3[v19];
        if (v10 != 44)
        {
          if (!a3[v19])
          {
            return v10;
          }

          fprintf(__stderrp, "%s:%d unknown option to %c TCP opt\n");
          return 1;
        }

        v17 = v19 + 1;
        v10 = a3[v19 + 1];
        if (!a3[v19 + 1])
        {
          return v10;
        }
      }

      if (v20 != 77)
      {
        if (v20 != 78)
        {
          goto LABEL_21;
        }

LABEL_13:
        v21 = *a4;
        v22 = 3;
        if (v20 == 78)
        {
          v22 = 0;
        }

LABEL_20:
        *a4 = v22 | (8 * v21);
        goto LABEL_21;
      }

      v23 = 2;
      v24 = a7;
      v25 = a6;
      goto LABEL_25;
    }

    return 0;
  }

  return v10;
}

void sub_100008938(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = (a3 + 3);
  v7 = *(a3 + 48) - 48;
  if (v7 > 9)
  {
    v9 = 0;
    v8 = -1;
  }

  else
  {
    if (*(a3 + 49) == 46)
    {
      v8 = *(a3 + 48) - 48;
    }

    else
    {
      v8 = -1;
    }

    v9 = 2 * (*(a3 + 49) == 46);
    v7 = v6[v9] - 48;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (v7 <= 9)
  {
    v10 = v9 | 1;
    v11 = v6[v10] - 48;
    LODWORD(v12) = v9 + 2;
    v13 = v11 >= 0xA ? v7 : v11 + 10 * v7;
    v12 = v11 >= 0xA ? v10 : v12;
    if (v6[v12] == 45)
    {
      v14 = v6[v12 + 1] - 48;
      if (v14 <= 9 && (v6[v12 + 2] == 46 ? (v15 = v14 == v8) : (v15 = 0), v15))
      {
        v12 += 3;
        v14 = v6[v12] - 48;
      }

      else
      {
        if (v8 != -1)
        {
          goto LABEL_36;
        }

        LODWORD(v12) = v12 + 1;
      }

      if (v14 <= 9)
      {
        v16 = v12 + 1;
        v17 = v6[v16] - 48;
        LODWORD(v12) = v12 + 2;
        if (v17 >= 0xA)
        {
          v12 = v16;
        }

        else
        {
          v14 = v17 + 10 * v14;
          v12 = v12;
        }

        v18 = v6[v12] - 48;
        if (v18 < 0xA)
        {
          v14 = v18 + 10 * v14;
          ++v12;
        }

        if (!v6[v12])
        {
          v19 = a3[7];
          v57 = a3[6];
          v58 = v19;
          v59 = *(a3 + 16);
          v20 = a3[3];
          v53 = a3[2];
          v54 = v20;
          v21 = a3[5];
          v55 = a3[4];
          v56 = v21;
          v22 = a3[1];
          v51 = *a3;
          v52 = v22;
          if (v13 <= v14)
          {
            v23 = v14 + 1;
            do
            {
              v54 = 0u;
              v55 = 0u;
              HIDWORD(v51) |= 1u;
              if (v8 == -1)
              {
                snprintf(&v54, 0x20uLL, "%d");
              }

              else
              {
                snprintf(&v54, 0x20uLL, "%d.%d");
              }

              sub_100008938(a1, a2, &v51);
              ++v13;
            }

            while (v23 != v13);
          }
        }
      }
    }
  }

LABEL_36:
  v24 = a3 + 5;
  v25 = *(a3 + 80) - 48;
  if (v25 > 9)
  {
    v27 = 0;
    v26 = -1;
  }

  else
  {
    if (*(a3 + 81) == 46)
    {
      v26 = *(a3 + 80) - 48;
    }

    else
    {
      v26 = -1;
    }

    v27 = 2 * (*(a3 + 81) == 46);
    v25 = *(v24 + v27) - 48;
  }

  if (v25 <= 9)
  {
    v28 = v27 | 1;
    v29 = *(v24 + v28) - 48;
    LODWORD(v30) = v27 + 2;
    v31 = v29 >= 0xA ? v25 : v29 + 10 * v25;
    v30 = v29 >= 0xA ? v28 : v30;
    if (*(v24 + v30) == 45)
    {
      v32 = *(v24 + v30 + 1) - 48;
      if (v32 <= 9 && (*(v24 + v30 + 2) == 46 ? (v33 = v32 == v26) : (v33 = 0), v33))
      {
        v30 += 3;
        v32 = *(v24 + v30) - 48;
      }

      else
      {
        if (v26 != -1)
        {
          goto LABEL_71;
        }

        LODWORD(v30) = v30 + 1;
      }

      if (v32 <= 9)
      {
        v34 = v30 + 1;
        v35 = *(v24 + v34) - 48;
        LODWORD(v30) = v30 + 2;
        if (v35 >= 0xA)
        {
          v30 = v34;
        }

        else
        {
          v32 = v35 + 10 * v32;
          v30 = v30;
        }

        v36 = *(v24 + v30) - 48;
        if (v36 < 0xA)
        {
          v32 = v36 + 10 * v32;
          ++v30;
        }

        if (!*(v24 + v30))
        {
          v37 = a3[7];
          v57 = a3[6];
          v58 = v37;
          v59 = *(a3 + 16);
          v38 = a3[3];
          v53 = a3[2];
          v54 = v38;
          v39 = a3[5];
          v55 = a3[4];
          v56 = v39;
          v40 = a3[1];
          v51 = *a3;
          v52 = v40;
          if (v31 <= v32)
          {
            v41 = v32 + 1;
            do
            {
              v56 = 0u;
              v57 = 0u;
              HIDWORD(v51) |= 1u;
              if (v26 == -1)
              {
                snprintf(&v56, 0x20uLL, "%d");
              }

              else
              {
                snprintf(&v56, 0x20uLL, "%d.%d");
              }

              sub_100008938(a1, a2, &v51);
              ++v31;
            }

            while (v41 != v31);
          }
        }
      }
    }
  }

LABEL_71:
  if (!strcasecmp(a3 + 16, "nomatch"))
  {
    sub_1000209E0();
  }

  v42 = sub_1000096C4(&qword_100030D30, a3 + 16);
  v43 = v42;
  v44 = *(v42 + 4);
  if (!v44)
  {
    v44 = dword_100030D3C + 1;
    dword_100030D3C = v44;
    *(v42 + 4) = v44;
  }

  v45 = sub_1000096C4(v42 + 56, v6);
  if (!v45)
  {
    LOWORD(v47) = 0;
LABEL_82:
    v50 = 0;
    goto LABEL_83;
  }

  v46 = v45;
  v47 = *(v45 + 4);
  if (!v47)
  {
    v47 = *(v43 + 16) + 1;
    *(v43 + 16) = v47;
    *(v45 + 4) = v47;
  }

  v48 = sub_1000096C4(v45 + 56, a3 + 80);
  if (!v48)
  {
    goto LABEL_82;
  }

  v49 = *(v48 + 4);
  if (!v49)
  {
    v49 = *(v46 + 16) + 1;
    *(v46 + 16) = v49;
    *(v48 + 4) = v49;
  }

  v50 = v49 & 0x3FF;
LABEL_83:
  *(a3 + 2) = v50 & 0xC00003FF | ((v44 & 0x3FF) << 20) | ((v47 & 0x3FF) << 10);
  ++dword_100030D38;
  if ((a2 & 8) == 0 && ioctl(a1, 0xC088444FuLL, a3))
  {
    if (*__error() != 17)
    {
      sub_1000209C4();
    }

    warn("Duplicate signature for %s %s %s", a3 + 16, v6, a3 + 80);
  }
}

uint64_t sub_100008E4C(int a1)
{
  sub_1000082B4(&qword_100030D30);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  if (!ioctl(a1, 0xC0884450uLL, &v4))
  {
    v2 = 1;
    do
    {
      sub_100008F54(&v4);
      LODWORD(v12) = 0;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
      HIDWORD(v12) = v2++;
    }

    while (!ioctl(a1, 0xC0884450uLL, &v4));
  }

  if (*__error() == 16)
  {
    return 0;
  }

  warn("DIOCOSFPGET");
  return 1;
}

char *sub_100008F54(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1000096C4(&qword_100030D30, (a1 + 16));
  v4 = v3;
  if (!*(v3 + 4))
  {
    v5 = (v2 >> 20) & 0x3FF;
    *(v3 + 4) = v5;
    if (dword_100030D3C > v5)
    {
      v5 = dword_100030D3C;
    }

    dword_100030D3C = v5;
  }

  result = sub_1000096C4(v3 + 56, (a1 + 48));
  if (result)
  {
    v7 = result;
    if (!*(result + 4))
    {
      v8 = (v2 >> 10) & 0x3FF;
      *(result + 4) = v8;
      if (*(v4 + 16) > v8)
      {
        v8 = *(v4 + 16);
      }

      *(v4 + 16) = v8;
    }

    result = sub_1000096C4(result + 56, (a1 + 80));
    if (result && !*(result + 4))
    {
      v9 = v2 & 0x3FF;
      *(result + 4) = v9;
      if (*(v7 + 16) > v9)
      {
        v9 = *(v7 + 16);
      }

      *(v7 + 16) = v9;
    }
  }

  ++dword_100030D38;
  return result;
}

uint64_t sub_10000902C(uint64_t result)
{
  if (qword_100030D30)
  {
    v1 = result;
    if ((result & 0x400) != 0)
    {
      sub_100011AC4("OS FINGERPRINTS:");
      return printf("%u fingerprints loaded\n", dword_100030D38);
    }

    else
    {
      puts("Class\tVersion\tSubtype(subversion)");
      puts("-----\t-------\t-------------------");
      sub_1000090E4(v1, &qword_100030D30);

      return sub_10000920C(v1, &qword_100030D30, "");
    }
  }

  return result;
}

uint64_t sub_1000090E4(uint64_t result, char **a2)
{
  v16 = 0;
  v2 = *a2;
  if (*a2)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      v6 = *(v2 + 1);
      if (*v2)
      {
        *(v5 + 8) = v6;
      }

      *v6 = v5;
      v7 = v16;
      if (v16)
      {
        while (1)
        {
          v8 = v7;
          if (strcasecmp(v7 + 20, v2 + 20) >= 1)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            *v2 = 0;
            *v8 = v2;
            *(v2 + 1) = v8;
            goto LABEL_11;
          }
        }

        v9 = v8[1];
        *v2 = v8;
        *(v2 + 1) = v9;
        *v9 = v2;
        v8[1] = v2;
      }

      else
      {
        v16 = v2;
        *v2 = 0;
        *(v2 + 1) = &v16;
      }

LABEL_11:
      result = sub_1000090E4(v4, v2 + 56);
      v2 = *a2;
    }

    while (*a2);
    v10 = v16;
    if (v16)
    {
      v11 = 0;
      while (1)
      {
        v12 = v11;
        v11 = v10;
        v13 = *v10;
        v14 = v11[1];
        if (v13)
        {
          *(v13 + 8) = v14;
        }

        *v14 = v13;
        if (!v12)
        {
          break;
        }

        v15 = *v12;
        *v11 = *v12;
        if (v15)
        {
          goto LABEL_18;
        }

LABEL_19:
        *v12 = v11;
        v11[1] = v12;
        v10 = v16;
        if (!v16)
        {
          return result;
        }
      }

      v15 = *a2;
      *v11 = *a2;
      v12 = a2;
      if (!v15)
      {
        goto LABEL_19;
      }

LABEL_18:
      *(v15 + 1) = v11;
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_10000920C(uint64_t result, const char **a2, const char *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = result;
    do
    {
      snprintf(__str, 0x20uLL, "%s%s\t", a3, v3 + 20);
      puts(__str);
      result = sub_10000920C(v5, v3 + 56, __str);
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000092B4(const char *a1)
{
  if (!strcasecmp(a1, "unknown"))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = &qword_100030D30;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (!strcasecmp(a1, v2 + 20))
    {
      v3 = 0;
      v4 = 0;
      v5 = *(v2 + 4);
LABEL_6:
      if (v5 >= 0x400)
      {
        v7 = __stderrp;
        v8 = "warning: fingerprint table overflowed classes\n";
        v9 = 46;
      }

      else
      {
        if (v3 >= 0x400)
        {
          v7 = __stderrp;
          v8 = "warning: fingerprint table overflowed versions\n";
        }

        else
        {
          if (v4 < 0x400)
          {
            result = ((v5 & 0x3FF) << 20) | ((v3 & 0x3FF) << 10) | v4 & 0x3FF;
            if (result)
            {
              return result;
            }

            v7 = __stderrp;
            v8 = "warning: fingerprint packed to 'any'\n";
            v9 = 37;
            goto LABEL_42;
          }

          v7 = __stderrp;
          v8 = "warning: fingerprint table overflowed subtypes\n";
        }

        v9 = 47;
      }

LABEL_42:
      fwrite(v8, v9, 1uLL, v7);
      return 4294967294;
    }
  }

  v10 = strdup(a1);
  if (!v10)
  {
    sub_1000207D0();
  }

  v11 = v10;
  v12 = strchr(v10, 32);
  if (v12)
  {
    *v12 = 0;
    v13 = v12 + 1;
    v14 = &qword_100030D30;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (!strcasecmp(v11, v14 + 20))
      {
        v5 = *(v14 + 4);
        v15 = (v14 + 7);
        v16 = v14 + 7;
        while (1)
        {
          v16 = *v16;
          if (!v16)
          {
            break;
          }

          if (!strcasecmp(v13, v16 + 20))
          {
            v3 = *(v16 + 4);
            free(v11);
            v4 = 0;
            goto LABEL_6;
          }
        }

        v17 = strlen(v13);
        v18 = *v15;
        if (*v15)
        {
          v19 = v17;
          while (1)
          {
            v20 = strlen(v18 + 20);
            if (v19 >= v20 + 2)
            {
              v21 = v20;
              v22 = &v13[v20];
              v23 = v13[v20];
              v24 = v23 > 0x2E;
              v25 = (1 << v23) & 0x600100000200;
              if (!v24 && v25 != 0 && !strncasecmp(v13, v18 + 20, v20))
              {
                v27 = v18[7];
                if (v27)
                {
                  break;
                }
              }
            }

LABEL_31:
            v18 = *v18;
            if (!v18)
            {
              goto LABEL_39;
            }
          }

          v28 = v21 + 1;
          while (v19 != v28 + strlen(v27 + 20) || strcasecmp(v22 + 1, v27 + 20))
          {
            v27 = *v27;
            if (!v27)
            {
              goto LABEL_31;
            }
          }

          v3 = *(v18 + 4);
          v4 = *(v27 + 4);
          free(v11);
          goto LABEL_6;
        }

        break;
      }
    }
  }

LABEL_39:
  free(v11);
  return 4294967294;
}

char *sub_100009524(unsigned int a1, char *__dst, size_t __size)
{
  if (!a1)
  {
    v5 = "any";
    goto LABEL_18;
  }

  if (a1 == -1)
  {
    v5 = "unknown";
LABEL_18:
    strlcpy(__dst, v5, __size);
    return __dst;
  }

  v6 = (a1 >> 10) & 0x3FF;
  v7 = &qword_100030D30;
  do
  {
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  while (*(v7 + 4) != ((a1 >> 20) & 0x3FF));
  if (v6)
  {
    v8 = v7 + 7;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (*(v8 + 4) == v6)
      {
        if ((a1 & 0x3FF) != 0)
        {
          v9 = v8 + 7;
          while (1)
          {
            v9 = *v9;
            if (!v9)
            {
              goto LABEL_17;
            }

            if (*(v9 + 4) == (a1 & 0x3FF))
            {
              v10 = v9 + 20;
              goto LABEL_22;
            }
          }
        }

        v10 = 0;
LABEL_22:
        snprintf(__dst, __size, "%s", v7 + 20);
        strlcat(__dst, " ", __size);
        strlcat(__dst, v8 + 20, __size);
        if (v10)
        {
          if (strchr(v8 + 20, 32) || !strchr(v8 + 20, 46) || (*v10 - 48) >= 0xA)
          {
            v12 = " ";
          }

          else
          {
            v12 = ".";
          }

          strlcat(__dst, v12, __size);
          strlcat(__dst, v10, __size);
        }

        return __dst;
      }
    }

LABEL_17:
    v5 = "nomatch";
    goto LABEL_18;
  }

  snprintf(__dst, __size, "%s", v7 + 20);
  return __dst;
}

char *sub_1000096C4(char *a1, char *a2)
{
  if (!a2 || !*a2)
  {
    return 0;
  }

  v4 = a1;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strcasecmp(v4 + 20, a2))
    {
      v5 = *v4;
      v6 = *(v4 + 1);
      if (*v4)
      {
        *(v5 + 1) = v6;
      }

      *v6 = v5;
      goto LABEL_12;
    }
  }

  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040598284C3uLL);
  if (!v7)
  {
    sub_100020928();
  }

  v4 = v7;
  *(v7 + 7) = 0;
  __strlcpy_chk();
LABEL_12:
  v8 = *a1;
  *v4 = *a1;
  if (v8)
  {
    *(v8 + 8) = v4;
  }

  *a1 = v4;
  *(v4 + 1) = a1;
  return v4;
}

uint64_t sub_100009790(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v5 = *a1;
  v6 = *a2;
  if (!*a2)
  {
LABEL_9:
    *a3 = 0;
    *a2 = 0;
    return v5;
  }

  v8 = 0;
  v9 = v6 - 1;
  while (1)
  {
    v10 = *(v5 + v8);
    if (v10 < 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v10] & 0x4000) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    ++v8;
    --v9;
    if (v6 == v8)
    {
      v5 += v8;
      goto LABEL_9;
    }
  }

  if (__maskrune(v10, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_11:
  v13 = 0;
  *a3 = 0;
  v14 = v6 - v8;
  v11 = v5 + v8;
  while (*(v5 + v13 + v8) != 58)
  {
    *a3 = ++v13;
    if (v14 == v13)
    {
      *a2 = 0;
      goto LABEL_16;
    }
  }

  *a1 = v5 + v8 + v13 + 1;
  *a2 = v9 - v13;
  if (!v13)
  {
    return v11;
  }

LABEL_16:
  v15 = v13;
  v16 = v13 - 1;
  do
  {
    v17 = *(v5 + v15 + v8 - 1);
    if (v17 < 0)
    {
      if (!__maskrune(v17, 0x4000uLL))
      {
        return v11;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) == 0)
    {
      return v11;
    }

    *a3 = v16--;
    --v15;
  }

  while (v15);
  return v11;
}

char **sub_1000098D8(char *__s1, int a2)
{
  if (a2 == 30)
  {
    v3 = &off_10002C7C8;
    v4 = 26;
    while (strcmp(__s1, *v3))
    {
      v3 += 2;
      if (!--v4)
      {
        return 0;
      }
    }
  }

  else
  {
    v3 = &off_10002C638;
    v5 = 25;
    while (strcmp(__s1, *v3))
    {
      v3 += 2;
      if (!--v5)
      {
        return 0;
      }
    }
  }

  return v3;
}

char **sub_100009964(int a1, int a2, int a3)
{
  if (a3 == 30)
  {
    result = &off_10002CB48;
    v5 = 12;
    while (*(result + 8) != a1 || *(result + 9) != a2)
    {
      result += 2;
      if (!--v5)
      {
        return 0;
      }
    }
  }

  else
  {
    result = &off_10002C968;
    v6 = 30;
    while (*(result + 8) != a1 || *(result + 9) != a2)
    {
      result += 2;
      if (!--v6)
      {
        return 0;
      }
    }
  }

  return result;
}

char **sub_1000099DC(uint64_t a1, char *__s1, int a3)
{
  if (a3 == 30)
  {
    v5 = &off_10002CB48;
    v6 = 12;
    while (*(v5 + 8) != a1 || strcmp(__s1, *v5))
    {
      v5 += 2;
      if (!--v6)
      {
        return 0;
      }
    }
  }

  else
  {
    v5 = &off_10002C968;
    v7 = 30;
    while (*(v5 + 8) != a1 || strcmp(__s1, *v5))
    {
      v5 += 2;
      if (!--v7)
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_100009A84(uint64_t result)
{
  if (result <= 4)
  {
    if (result > 2)
    {
      if (result == 3)
      {
        return printf(" != %s");
      }

      else
      {
        return printf(" < %s");
      }
    }

    else if (result == 1)
    {
      return printf(" %s >< %s");
    }

    else if (result == 2)
    {
      return printf(" = %s");
    }
  }

  else if (result <= 6)
  {
    if (result == 5)
    {
      return printf(" <= %s");
    }

    else
    {
      return printf(" > %s");
    }
  }

  else
  {
    switch(result)
    {
      case 7:
        return printf(" >= %s");
      case 8:
        return printf(" %s <> %s");
      case 9:
        return printf(" %s:%s");
    }
  }

  return result;
}

uint64_t sub_100009B90(uint64_t a1, unsigned int a2, unsigned int a3, char *a4)
{
  if (dword_1000314C8)
  {
    getservbyport(a2, a4);
  }

  snprintf(__str, 6uLL, "%u", __rev16(a2));
  snprintf(v8, 6uLL, "%u", __rev16(a3));
  printf(" port");
  return sub_100009A84(a1);
}

uint64_t sub_100009C5C(uint64_t a1, int a2, int a3, const char *a4)
{
  snprintf(__str, 0xBuLL, "%u", a2);
  snprintf(v8, 0xBuLL, "%u", a3);
  printf(" %s", a4);
  return sub_100009A84(a1);
}

uint64_t sub_100009D40(uint64_t result)
{
  v1 = off_100030890[0];
  LOBYTE(v2) = *off_100030890[0];
  if (*off_100030890[0])
  {
    v3 = result;
    v4 = 0;
    do
    {
      if ((v3 >> v4))
      {
        result = putchar(v2);
        v1 = off_100030890[0];
      }

      v5 = &v1[v4++];
      v2 = v5[1];
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100009DA0(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6)
{
  if (*(a1 + 40) || *(a3 + 40) || *a1 || *(a1 + 4) || *(a1 + 8) || *(a1 + 12) || *(a1 + 16) || *(a1 + 20) || *(a1 + 24) || *(a1 + 28) || *a3 || *(a3 + 4) || *(a3 + 8) || *(a3 + 12) || *(a3 + 16) || *(a3 + 20) || *(a3 + 24) || *(a3 + 28) || *(a1 + 56) || *(a3 + 56) || *(a1 + 52) || a2 || *(a3 + 52))
  {
    printf(" from ");
    if (*(a1 + 56))
    {
      printf("! ");
    }

    sub_1000006C8(a1, a4, a6);
    if (*(a1 + 52))
    {
      if (a5 == 6)
      {
        v12 = "tcp";
      }

      else
      {
        v12 = "udp";
      }

      sub_100009B90(*(a1 + 52), *(a1 + 48), *(a1 + 50), v12);
    }

    if (a2)
    {
      v13 = sub_100009524(a2, __dst, 0x60uLL);
      printf(" os %s", v13);
    }

    printf(" to ");
    if (*(a3 + 56))
    {
      printf("! ");
    }

    sub_1000006C8(a3, a4, a6);
    result = *(a3 + 52);
    if (*(a3 + 52))
    {
      if (a5 == 6)
      {
        v15 = "tcp";
      }

      else
      {
        v15 = "udp";
      }

      return sub_100009B90(result, *(a3 + 48), *(a3 + 50), v15);
    }
  }

  else
  {

    return printf(" all");
  }

  return result;
}

const char *sub_100009FEC(const char *result, int a2, int a3, int a4, unsigned int a5)
{
  v8 = result;
  v9 = *result;
  if (*result)
  {
    if (!*(v9 + 48) || (result = printf("{ "), (v9 = *v8) != 0))
    {
      do
      {
        if (a5 > 0xD)
        {
          goto LABEL_7;
        }

        if (((1 << a5) & 0x2150) != 0)
        {
          sub_1000006C8(v9, a4, 0);
          goto LABEL_7;
        }

        if (!a5)
        {
          if (a4 == 30)
          {
            if (!*v9 && !*(v9 + 4) && !*(v9 + 8) && !*(v9 + 12))
            {
LABEL_16:
              printf("%s", (v9 + 64));
              goto LABEL_7;
            }
          }

          else if (a4 == 2 && !*v9)
          {
            goto LABEL_16;
          }

          printf("(%s ", (v9 + 64));
          sub_1000006C8(v9, a4, 0);
          putchar(41);
        }

LABEL_7:
        result = ", ";
        if (*(v9 + 48) || (result = " }", *(*v8 + 48)))
        {
          result = printf(result);
        }

        v9 = *(v9 + 48);
      }

      while (v9);
    }
  }

  if (a5 == 13)
  {
LABEL_25:
    v11 = a3 == 49151 && a2 == 0x8000;
    if (!v11 && a3 | a2)
    {
      if (a2 == a3)
      {
        result = printf(" port %u");
      }

      else
      {
        result = printf(" port %u:%u");
      }
    }

    goto LABEL_37;
  }

  if (a5 != 8)
  {
    if (a5 != 4)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    result = printf(" port %u", a2);
    if (a3)
    {
      if (a3 != a2)
      {
        result = printf(":%u");
      }
    }
  }

LABEL_37:
  v12 = v8[65] & 0xF;
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      result = printf(" source-hash 0x%08x%08x%08x%08x");
    }

    else if (v12 == 4)
    {
      result = printf(" round-robin");
    }
  }

  else if (v12 == 1)
  {
    result = printf(" bitmask");
  }

  else if (v12 == 2)
  {
    result = printf(" random");
  }

  if ((v8[65] & 0x20) != 0)
  {
    result = printf(" sticky-address");
  }

  if (!(a3 | a2) && a5 == 4)
  {

    return printf(" static-port");
  }

  return result;
}

uint64_t sub_10000A2B4(uint64_t a1, char a2)
{
  v4 = time(0);
  v5 = *(a1 + 392);
  v6 = v4 - v5;
  if (v5)
  {
    snprintf(__str, 0x50uLL, "Status: %s for %u days %.2u:%.2u:%.2u");
  }

  else
  {
    snprintf(__str, 0x50uLL, "Status: %s");
  }

  printf("%-44s", __str);
  v7 = *(a1 + 400);
  if (v7 <= 3)
  {
    printf("%15s\n\n", off_10002CD00[v7]);
  }

  if ((a2 & 4) != 0)
  {
    printf("Hostid:   0x%08x\n", bswap32(*(a1 + 404)));
    v8 = 0;
    v9 = (a1 + 424);
    do
    {
      v10 = *v9++;
      v11 = &v17[v8];
      *v11 = a0123456789abcd[v10 >> 4];
      v11[1] = a0123456789abcd[v10 & 0xF];
      v8 += 2;
    }

    while (v8 != 32);
    v17[32] = 0;
    printf("Checksum: 0x%s\n\n", v17);
  }

  if (*(a1 + 408))
  {
    printf("Interface Stats for %-16s %5s %16s\n", (a1 + 408), "IPv4", "IPv6");
    printf("  %-25s %14llu %16llu\n", "Bytes In", *(a1 + 336), *(a1 + 352));
    printf("  %-25s %14llu %16llu\n", "Bytes Out", *(a1 + 344), *(a1 + 360));
    puts("  Packets In");
    printf("    %-23s %14llu %16llu\n", "Passed", *(a1 + 240), *(a1 + 288));
    printf("    %-23s %14llu %16llu\n", "Blocked", *(a1 + 248), *(a1 + 296));
    puts("  Packets Out");
    printf("    %-23s %14llu %16llu\n", "Passed", *(a1 + 264), *(a1 + 312));
    printf("    %-23s %14llu %16llu\n\n", "Blocked", *(a1 + 272), *(a1 + 320));
  }

  printf("%-27s %14s %16s\n", "State Table", "Total", "Rate");
  printf("  %-25s %14u %14s\n", "current entries", *(a1 + 380), "");
  for (i = 0; i != 3; ++i)
  {
    printf("  %-25s %14llu ", off_100030968[i], *(a1 + 192 + i * 8));
    if (v6 < 1)
    {
      printf("%14s\n");
    }

    else
    {
      printf("%14.1f/s\n");
    }
  }

  if ((a2 & 4) != 0)
  {
    puts("Source Tracking Table");
    printf("  %-25s %14u %14s\n", "current entries", *(a1 + 384), "");
    for (j = 0; j != 3; ++j)
    {
      printf("  %-25s %14lld ", off_100030988[j], *(a1 + 216 + j * 8));
      if (v6 < 1)
      {
        printf("%14s\n");
      }

      else
      {
        printf("%14.1f/s\n");
      }
    }
  }

  puts("Counters");
  for (k = 0; k != 17; ++k)
  {
    printf("  %-25s %14llu ", off_100030898[k], *(a1 + k * 8));
    if (v6 < 1)
    {
      result = printf("%14s\n");
    }

    else
    {
      result = printf("%14.1f/s\n");
    }
  }

  if ((a2 & 4) != 0)
  {
    puts("Limit Counters");
    for (m = 0; m != 7; ++m)
    {
      printf("  %-25s %14lld ", off_100030928[m], *(a1 + 136 + m * 8));
      if (v6 < 1)
      {
        result = printf("%14s\n");
      }

      else
      {
        result = printf("%14.1f/s\n");
      }
    }
  }

  return result;
}

uint64_t sub_10000A828(uint64_t a1, char a2)
{
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 144);
  if (v4 == 2)
  {
    LODWORD(v14) = -1;
  }

  else
  {
    *&v14 = -1;
    *(&v14 + 1) = -1;
  }

  v13 = *(a1 + 24);
  sub_1000006C8(&v13, v4, a2 & 0x80);
  printf(" -> ");
  v13 = *(a1 + 40);
  sub_1000006C8(&v13, *(a1 + 144), a2 & 0x80);
  result = printf("(states %u, connections %u, rate %u.%u/%us)\n", *(a1 + 104), *(a1 + 108), *(a1 + 120) / 0x3E8u, *(a1 + 120) % 0x3E8u / 0x64, *(a1 + 116));
  if ((a2 & 4) != 0)
  {
    v6 = *(a1 + 128);
    v7 = v6 % 0x3C;
    v8 = v6 / 0x3C - 60 * (((v6 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
    v6 /= 0xE10uLL;
    *(a1 + 128) = v6;
    printf("   age %.2llu:%.2u:%.2u", v6, v8, v7);
    if (!*(a1 + 104))
    {
      v9 = *(a1 + 136);
      v10 = v9 % 0x3C;
      v11 = v9 / 0x3C - 60 * (((v9 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
      v9 /= 0xE10uLL;
      *(a1 + 136) = v9;
      printf(", expires in %.2llu:%.2u:%.2u", v9, v11, v10);
    }

    printf(", %llu pkts, %llu bytes", *(a1 + 96) + *(a1 + 88), *(a1 + 80) + *(a1 + 72));
    v12 = *(a1 + 145);
    if (*(a1 + 145))
    {
      if (v12 == 8)
      {
        if (*(a1 + 56) != -1)
        {
          printf(", rdr rule %u");
        }
      }

      else if (v12 == 4 && *(a1 + 56) != -1)
      {
        printf(", nat rule %u");
      }
    }

    else if (*(a1 + 56) != -1)
    {
      printf(", filter rule %u");
    }

    return putchar(10);
  }

  return result;
}

uint64_t sub_10000AA50(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = a3;
  if (a3)
  {
    printf("@%d ", *(a1 + 948));
  }

  if (*(a1 + 1004) < 0xFu)
  {
    if (*a2)
    {
      if (*a2 == 95)
      {
        printf("%s");
      }

      else
      {
        printf("%s %s");
      }
    }

    else
    {
      printf("%s", off_10002CC08[*(a1 + 1004)]);
      if (*(a1 + 1011))
      {
        printf(" pass");
      }
    }
  }

  else
  {
    printf("action(%d)");
  }

  if (*(a1 + 1004) == 1)
  {
    v6 = *(a1 + 1000);
    if ((v6 & 8) != 0)
    {
      printf(" return");
      goto LABEL_43;
    }

    if (v6)
    {
      if (*(a1 + 1022))
      {
        printf(" return-rst(ttl %d)");
      }

      else
      {
        printf(" return-rst");
      }
    }

    else
    {
      if ((v6 & 4) == 0)
      {
        printf(" drop");
        goto LABEL_43;
      }

      v7 = &off_10002C968;
      v8 = 30;
      while (*(v7 + 8) != HIBYTE(*(a1 + 964)) || *(v7 + 9) != *(a1 + 964))
      {
        v7 += 2;
        if (!--v8)
        {
          v7 = 0;
          break;
        }
      }

      v9 = &off_10002CB48;
      v10 = 12;
      while (*(v9 + 8) != HIBYTE(*(a1 + 966)) || *(v9 + 9) != *(a1 + 966))
      {
        v9 += 2;
        if (!--v10)
        {
          v9 = 0;
          break;
        }
      }

      v11 = *(a1 + 1013);
      if (v11 == 30)
      {
        printf(" return-icmp6");
        if (v9)
        {
LABEL_35:
          printf("(%s)");
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      if (v11 == 2)
      {
        printf(" return-icmp");
        if (v7)
        {
          goto LABEL_35;
        }

LABEL_38:
        printf("(%u)");
        goto LABEL_43;
      }

      printf(" return-icmp");
      if (v7)
      {
        printf("(%s, ");
      }

      else
      {
        printf("(%u, ");
      }

      if (v9)
      {
        printf("%s)");
      }

      else
      {
        printf("%u)");
      }
    }
  }

LABEL_43:
  v12 = *(a1 + 1005);
  if (v12 == 1)
  {
    printf(" in");
  }

  else if (v12 == 2)
  {
    printf(" out");
  }

  if (*(a1 + 1006))
  {
    printf(" log");
    if (*(a1 + 1006) > 1u || *(a1 + 1007))
    {
      printf(" (");
      v13 = *(a1 + 1006);
      if ((v13 & 2) != 0)
      {
        printf("%sall", "");
        v15 = *(a1 + 1006);
        v14 = 1;
      }

      else
      {
        v14 = 0;
        v15 = *(a1 + 1006);
      }

      if ((v15 & 4) != 0)
      {
        if ((v13 & 2) != 0)
        {
          v16 = ", ";
        }

        else
        {
          v16 = "";
        }

        printf("%suser", v16);
        v14 = 1;
      }

      if (*(a1 + 1007))
      {
        if (v14)
        {
          v17 = ", ";
        }

        else
        {
          v17 = "";
        }

        printf("%sto pflog%u", v17, *(a1 + 1007));
      }

      putchar(41);
    }
  }

  if (*(a1 + 1008))
  {
    printf(" quick");
  }

  if (*(a1 + 256))
  {
    if (*(a1 + 1009))
    {
      printf(" on ! %s");
    }

    else
    {
      printf(" on %s");
    }
  }

  v18 = *(a1 + 1021);
  if (v18 > 1)
  {
    switch(v18)
    {
      case 2u:
        printf(" route-to");
        break;
      case 3u:
        printf(" dup-to");
        break;
      case 4u:
        printf(" reply-to");
        break;
      default:
        goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (!*(a1 + 1021))
  {
    goto LABEL_83;
  }

  if (v18 == 1)
  {
    printf(" fastroute");
LABEL_80:
    v18 = *(a1 + 1021);
  }

LABEL_81:
  if (v18 != 1)
  {
    putchar(32);
    sub_100009FEC((a1 + 576), 0, 0, *(a1 + 1013), 0);
  }

LABEL_83:
  if (*(a1 + 1013))
  {
    if (*(a1 + 1013) == 2)
    {
      printf(" inet");
    }

    else
    {
      printf(" inet6");
    }
  }

  if (*(a1 + 1014))
  {
    if (getprotobynumber(*(a1 + 1014)))
    {
      printf(" proto %s");
    }

    else
    {
      printf(" proto %u");
    }
  }

  sub_100009DA0(a1, *(a1 + 792), a1 + 64, *(a1 + 1013), *(a1 + 1014), v3);
  if (*(a1 + 984))
  {
    sub_100009C5C(*(a1 + 984), *(a1 + 976), *(a1 + 980), "user");
  }

  result = *(a1 + 996);
  if (*(a1 + 996))
  {
    result = sub_100009C5C(result, *(a1 + 988), *(a1 + 992), "group");
  }

  if (*(a1 + 1017) || *(a1 + 1018))
  {
    printf(" flags ");
    sub_100009D40(*(a1 + 1017));
    putchar(47);
    result = sub_100009D40(*(a1 + 1018));
  }

  else if (!*(a1 + 1004) && (*(a1 + 1014) == 6 || !*(a1 + 1014)) && (*(a1 + 1000) & 2) == 0 && !*a2 && *(a1 + 1012))
  {
    result = printf(" flags any");
  }

  if (*(a1 + 1015))
  {
    v20 = *(a1 + 1015) - 1;
    if (*(a1 + 1013) == 30)
    {
      v21 = &off_10002C7C8;
      v22 = 26;
      v23 = " icmp6-type";
      while (*(v21 + 8) != v20)
      {
        v21 += 2;
        if (!--v22)
        {
          goto LABEL_107;
        }
      }
    }

    else
    {
      v21 = &off_10002C638;
      v24 = 25;
      v23 = " icmp-type";
      while (*(v21 + 8) != v20)
      {
        v21 += 2;
        if (!--v24)
        {
LABEL_107:
          v21 = 0;
          break;
        }
      }
    }

    printf(v23);
    if (v21)
    {
      result = printf(" %s");
    }

    else
    {
      result = printf(" %u");
    }

    if (*(a1 + 1016))
    {
      if (sub_100009964((*(a1 + 1015) - 1), (*(a1 + 1016) - 1), *(a1 + 1013)))
      {
        result = printf(" code %s");
      }

      else
      {
        result = printf(" code %u");
      }
    }
  }

  if (*(a1 + 1023))
  {
    v25 = *(a1 + 1023);
    if ((*(a1 + 1001) & 0x20) == 0 || (result = printf(" tos 0x%2.2x", *(a1 + 1023)), v25 = *(a1 + 1023), *(a1 + 1023)))
    {
      if ((*(a1 + 1001) & 0x40) == 0 || (result = printf(" dscp 0x%2.2x", v25 & 0xFC), v25 = *(a1 + 1023), *(a1 + 1023)))
      {
        if ((*(a1 + 1001) & 0x80) != 0)
        {
          printf(" sc ");
          if (v25 <= 20)
          {
            if (v25 > 17)
            {
              if (v25 == 18)
              {
                result = printf("bk");
              }

              else if (v25 == 19)
              {
                result = printf("rd");
              }

              else
              {
                result = printf("oam");
              }

              goto LABEL_150;
            }

            if (v25 == 16)
            {
              result = printf("be");
              goto LABEL_150;
            }

            if (v25 == 17)
            {
              result = printf("bk_sys");
              goto LABEL_150;
            }

LABEL_149:
            result = printf(" 0x%2.2x");
            goto LABEL_150;
          }

          if (v25 > 22)
          {
            switch(v25)
            {
              case 23:
                result = printf("vi");
                goto LABEL_150;
              case 24:
                result = printf("vo");
                goto LABEL_150;
              case 25:
                result = printf("ctl");
                goto LABEL_150;
            }

            goto LABEL_149;
          }

          if (v25 == 21)
          {
            result = printf("av");
          }

          else
          {
            result = printf("rv");
          }
        }
      }
    }
  }

LABEL_150:
  v26 = *(a1 + 1012);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      result = printf(" modulate state");
    }

    else if (v26 == 3)
    {
      result = printf(" synproxy state");
    }
  }

  else if (*(a1 + 1012))
  {
    if (v26 == 1)
    {
      result = printf(" keep state");
    }
  }

  else if (!*(a1 + 1004) && !*a2)
  {
    result = printf(" no state");
  }

  v27 = *(a1 + 952);
  if (v27)
  {
    snprintf(__str, 0x14uLL, "%f", v27 * 100.0 * 2.32830644e-10);
    v28 = strlen(__str);
    if (v28 >= 2)
    {
      v29 = v28 & 0x7FFFFFFF;
      while (1)
      {
        v30 = __str[v29 - 1];
        if (v30 != 48)
        {
          break;
        }

        __str[--v29] = 0;
        if ((v29 + 1) <= 2)
        {
          goto LABEL_169;
        }
      }

      if (v30 == 46)
      {
        __str[v29 - 1] = 0;
      }
    }

LABEL_169:
    result = printf(" probability %s%%", __str);
  }

  if (*(a1 + 908) || *(a1 + 916) || *(a1 + 920))
  {
    v31 = a1 + 1000;
    goto LABEL_174;
  }

  v31 = a1 + 1000;
  v49 = *(a1 + 1000);
  if ((v49 & 0x10030) != 0)
  {
    goto LABEL_174;
  }

  v58 = 0;
  do
  {
    v59 = *(a1 + 800 + 4 * v58);
    if (v59)
    {
      v60 = 1;
    }

    else
    {
      v60 = v58 >= 0x19;
    }

    ++v58;
  }

  while (!v60);
  if (v59)
  {
LABEL_174:
    printf(" (");
    v32 = *(a1 + 908);
    v62 = v3;
    if (v32)
    {
      printf("max %u", v32);
      v33 = *v31;
      if ((*v31 & 0x10) == 0)
      {
LABEL_186:
        if ((v33 & 0x20) == 0)
        {
LABEL_191:
          if (!*(a1 + 920))
          {
LABEL_194:
            if (!*(a1 + 924))
            {
LABEL_197:
              if (!*(a1 + 928))
              {
LABEL_200:
                if (!*(a1 + 916))
                {
LABEL_203:
                  if (!*(a1 + 528))
                  {
                    if ((*(v31 + 2) & 1) == 0)
                    {
LABEL_214:
                      v41 = 0;
LABEL_215:
                      v61 = a2;
                      v42 = 0;
                      v43 = a1 + 800;
                      while (!*(v43 + 4 * v42))
                      {
LABEL_227:
                        if (++v42 == 26)
                        {
                          result = putchar(41);
                          v49 = *v31;
                          v3 = v62;
                          a2 = v61;
                          goto LABEL_229;
                        }
                      }

                      if (v41)
                      {
                        if (v42)
                        {
                          goto LABEL_219;
                        }
                      }

                      else
                      {
                        printf(", ");
                        if (v42)
                        {
LABEL_219:
                          v44 = &off_10002C498;
                          v45 = 25;
                          while (--v45)
                          {
                            v46 = (v44 + 2);
                            v47 = *(v44 + 6);
                            v44 += 2;
                            if (v42 == v47)
                            {
                              v48 = *v46;
                              goto LABEL_226;
                            }
                          }

                          v48 = "inv.timeout";
                          goto LABEL_226;
                        }
                      }

                      v48 = "tcp.first";
LABEL_226:
                      printf("%s %u", v48, *(v43 + 4 * v42));
                      v41 = 0;
                      goto LABEL_227;
                    }

LABEL_212:
                    printf(", ");
LABEL_213:
                    printf("if-bound");
                    goto LABEL_214;
                  }

                  v40 = (a1 + 528);
                  printf(", ");
                  v41 = 0;
                  v39 = 1;
LABEL_205:
                  printf("overload <%s>", v40);
                  if (*(a1 + 1026))
                  {
                    printf(" flush");
                    if ((*(a1 + 1026) & 2) != 0)
                    {
                      printf(" global");
                    }
                  }

                  if ((*(v31 + 2) & 1) == 0)
                  {
                    goto LABEL_215;
                  }

                  if (!v39)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_212;
                }

                printf(", ");
                v38 = *(a1 + 916);
LABEL_202:
                printf("max-src-nodes %u", v38);
                goto LABEL_203;
              }

              printf(", ");
              v37 = *(a1 + 928);
LABEL_199:
              printf("max-src-conn-rate %u/%u", v37, *(a1 + 932));
              goto LABEL_200;
            }

            printf(", ");
            v36 = *(a1 + 924);
LABEL_196:
            printf("max-src-conn %u", v36);
            goto LABEL_197;
          }

          printf(", ");
          v35 = *(a1 + 920);
LABEL_193:
          printf("max-src-states %u", v35);
          goto LABEL_194;
        }

        printf(", ");
LABEL_188:
        printf("source-track");
        if ((*v31 & 0x40) != 0)
        {
          printf(" rule");
        }

        else
        {
          printf(" global");
        }

        goto LABEL_191;
      }

      printf(", ");
    }

    else
    {
      v34 = *v31;
      if ((*v31 & 0x10) == 0)
      {
        if ((v34 & 0x20) == 0)
        {
          v35 = *(a1 + 920);
          if (!v35)
          {
            v36 = *(a1 + 924);
            if (!v36)
            {
              v37 = *(a1 + 928);
              if (!v37)
              {
                v38 = *(a1 + 916);
                if (!v38)
                {
                  if (!*(a1 + 528))
                  {
                    if ((v34 & 0x10000) == 0)
                    {
                      v41 = 1;
                      goto LABEL_215;
                    }

                    goto LABEL_213;
                  }

                  v39 = 0;
                  v40 = (a1 + 528);
                  v41 = 1;
                  goto LABEL_205;
                }

                goto LABEL_202;
              }

              goto LABEL_199;
            }

            goto LABEL_196;
          }

          goto LABEL_193;
        }

        goto LABEL_188;
      }
    }

    printf("no-sync");
    v33 = *v31;
    goto LABEL_186;
  }

LABEL_229:
  if ((v49 & 2) != 0)
  {
    result = printf(" fragment");
    v49 = *v31;
    if ((*v31 & 0x100) == 0)
    {
LABEL_231:
      if ((v49 & 0x800) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_232;
    }
  }

  else if ((v49 & 0x100) == 0)
  {
    goto LABEL_231;
  }

  result = printf(" no-df");
  if ((*v31 & 0x800) != 0)
  {
LABEL_232:
    result = printf(" random-id");
  }

LABEL_233:
  if (*(a1 + 1019))
  {
    result = printf(" min-ttl %d", *(a1 + 1019));
  }

  if (*(a1 + 968))
  {
    result = printf(" max-mss %d", *(a1 + 968));
  }

  if (*(a1 + 1020))
  {
    result = printf(" allow-opts");
  }

  if (*(a1 + 1004) == 2)
  {
    v50 = *v31;
    if ((*v31 & 0x1000) != 0)
    {
      printf(" reassemble tcp");
      v50 = *v31;
    }

    v51 = " fragment crop";
    if ((v50 & 0x200) == 0)
    {
      v51 = " fragment reassemble";
    }

    if ((v50 & 0x400) != 0)
    {
      result = printf(" fragment drop-ovl");
    }

    else
    {
      result = printf(v51);
    }
  }

  if (*(a1 + 192))
  {
    result = printf(" label %s");
  }

  else if (*(a1 + 1004) == 11 && *(a1 + 1032))
  {
    result = printf(" %s %d");
  }

  if (*(a1 + 272))
  {
    if (*(a1 + 336))
    {
      result = printf(" queue(%s, %s)");
    }

    else
    {
      result = printf(" queue %s");
    }
  }

  if (*(a1 + 400))
  {
    result = printf(" tag %s", (a1 + 400));
  }

  if (*(a1 + 464))
  {
    if (*(a1 + 1010))
    {
      printf(" !");
    }

    result = printf(" tagged %s", (a1 + 464));
  }

  if (*(a1 + 796))
  {
    result = printf(" rtable %u", *(a1 + 796));
  }

  if (!*a2)
  {
    v52 = *(a1 + 1004);
    if (v52 <= 0xD && ((1 << v52) & 0x2150) != 0)
    {
      printf(" -> ");
      v53 = *(a1 + 1004);
      if (v53 == 13)
      {
        v54 = 2;
      }

      else
      {
        v54 = *(a1 + 1013);
      }

      result = sub_100009FEC((a1 + 576), *(a1 + 636), *(a1 + 638), v54, v53);
    }
  }

  v55 = *(a1 + 1028);
  if ((v55 & 0xFE) == 2)
  {
    result = printf(" extfilter %s", off_10002CCE8[(v55 - 1) & 3]);
    v55 = *(a1 + 1028);
  }

  v56 = *(a1 + 1029);
  if (v56 <= 3 && v56 > v55)
  {
    result = printf(" extmap %s", off_10002CCE8[v56 - 1]);
  }

  if (v3)
  {
    v57 = (a1 + 696);
    if (!*(a1 + 696))
    {
      v57 = "nil";
    }

    return printf("\n  [ Owner : %-12s Priority : %-5d ]", v57, *(a1 + 760));
  }

  return result;
}