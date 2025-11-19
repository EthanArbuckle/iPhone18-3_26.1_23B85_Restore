uint64_t sub_10000B93C(const char *a1, char a2, int a3, void *a4)
{
  printf("table <%s>", a1);
  if ((a2 & 2) != 0)
  {
    printf(" const");
  }

  if (a2)
  {
    printf(" persist");
  }

  v7 = *a4;
  if (*a4)
  {
    do
    {
      if (v7[2])
      {
        printf(" file %s");
      }

      else
      {
        printf(" {");
        v8 = v7;
        do
        {
          v7 = v8;
          for (i = v8[1]; i; i = *(i + 104))
          {
            if (*(i + 81))
            {
              printf(" !");
            }

            else
            {
              printf(" ");
            }

            sub_1000006C8(i, *(i + 80), 0);
          }

          v8 = *v7;
        }

        while (*v7 && !v8[2]);
        printf(" }");
      }

      v7 = *v7;
    }

    while (v7);
  }

  if (a3 && !*a4)
  {
    printf(" { }");
  }

  return putchar(10);
}

uint64_t sub_10000BA8C(_BYTE *a1)
{
  v1 = *a1;
  if (*a1)
  {
    LODWORD(v2) = 0;
    v3 = off_100030890[0];
    v4 = a1 + 1;
    do
    {
      v5 = strchr(v3, v1);
      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      v2 = v2 | (1 << (v5 - v3));
      v6 = *v4++;
      v1 = v6;
    }

    while (v6);
    if (v2)
    {
      return v2;
    }
  }

  return 255;
}

int8x16_t sub_10000BB08(int8x16_t *a1, unsigned int a2, int8x16_t result, int16x8_t a4)
{
  v4 = a2;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  v6 = a1 + 1;
  v7 = a2 - 32;
  if (a2 < 0x20)
  {
    v9 = 0;
  }

  else
  {
    v8 = v7 >> 5;
    memset(&a1[1], 255, (4 * v8 + 4));
    v9 = (v8 + 1);
    v10 = vdupq_n_s64(v8);
    a4 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(xmmword_100027B60, v10), vcgtq_u64(xmmword_100027B50, v10)), vuzp1q_s32(vcgtq_u64(xmmword_100027B40, v10), vcgtq_u64(xmmword_100027B30, v10)));
    *a4.i8 = vmovn_s16(a4);
    v11.i8[1] = -32;
    v11.i16[1] = -7968;
    v11.i32[1] = -522133280;
    v11.i8[0] = v7;
    *result.i8 = vbsl_s8(*a4.i8, v4, v11);
    result.i8[0] = vaddv_s8(*result.i8);
    v4 = result.i8[0];
  }

  if (v4)
  {
    v12 = v4 ^ 0x1F;
    if (v12 >= 0x1E)
    {
      v12 = 30;
    }

    v13 = v12 ^ 0x1F;
    v14 = ((v12 ^ 0x1F) + 3) & 0x3C;
    v15 = vdupq_n_s32(v13 - 1);
    a4.i32[0] = v6->i32[v9];
    v16 = xmmword_100027B70;
    v17 = 4;
    v18.i64[0] = 0x100000001;
    v18.i64[1] = 0x100000001;
    v19.i64[0] = 0x300000003;
    v19.i64[1] = 0x300000003;
    do
    {
      v20 = a4;
      a4 = vorrq_s8(a4, vshlq_u32(v18, v16));
      v16 = vaddq_s32(v16, v19);
      v17 -= 4;
    }

    while (v14 + v17 != 4);
    result = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v17), xmmword_100027B80), v15), v20, a4);
    *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
    v6->i32[v9] = bswap32(result.i32[0] | result.i32[1]);
  }

  if (!a1[2].i8[8])
  {
    result = vandq_s8(a1[1], *a1);
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000BC88(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    while (1)
    {
      v5 = *(v3 + 40);
      if (v5 != 3)
      {
        if (a2 == 2 && v5 == 2)
        {
          if (sub_100000ACC(v3 + 16) >= 33)
          {
            sub_10000BB08(v4, 0x20u, v6, v7);
          }
        }

        else if (a2 != 2)
        {
          goto LABEL_12;
        }

        if (*(v3 + 20) || *(v3 + 24) || *(v3 + 28))
        {
          v8 = __stderrp;
          v9 = sub_100000ACC(v3 + 16);
          fprintf(v8, "netmask %u invalid for IPv4 address\n", v9);
          return 1;
        }
      }

LABEL_12:
      v4 = v4[6].i64[1];
      if (!v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10000BD68()
{
  v17 = 0;
  if (getifaddrs(&v17) < 0)
  {
    sub_100020A34();
  }

  v0 = v17;
  if (!v17)
  {
    v16 = 0;
    v1 = 0;
    goto LABEL_31;
  }

  v1 = 0;
  do
  {
    sa_family = v0->ifa_addr->sa_family;
    v3 = sa_family > 0x1E;
    v4 = (1 << sa_family) & 0x40040004;
    if (v3 || v4 == 0)
    {
      goto LABEL_28;
    }

    v6 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
    if (!v6)
    {
      sub_100020A18();
    }

    v7 = v6;
    ifa_addr = v0->ifa_addr;
    v9 = ifa_addr->sa_family;
    v6[80] = v9;
    *(v6 + 24) = v0->ifa_flags;
    if (v9 == 30)
    {
      if (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80 || *&ifa_addr[1].sa_data[6])
      {
        *(v6 + 21) = 0;
        v10 = v6 + 84;
        goto LABEL_20;
      }

      *&ifa_addr[1].sa_data[6] = __rev16(*&ifa_addr->sa_data[8]);
      *&ifa_addr->sa_data[8] = 0;
      v9 = v6[80];
    }

    *(v6 + 21) = 0;
    v10 = v6 + 84;
    if (v9 != 30)
    {
      if (v9 == 2)
      {
        *v6 = *&v0->ifa_addr->sa_data[2];
        *(v6 + 4) = *&v0->ifa_netmask->sa_data[2];
        ifa_dstaddr = v0->ifa_dstaddr;
        if (ifa_dstaddr)
        {
          *(v6 + 12) = *&ifa_dstaddr->sa_data[2];
          v12 = v0->ifa_dstaddr;
          if (v12)
          {
            *(v6 + 16) = *&v12->sa_data[2];
          }
        }
      }

      goto LABEL_24;
    }

LABEL_20:
    *v6 = *&v0->ifa_addr->sa_data[6];
    *(v6 + 1) = *&v0->ifa_netmask->sa_data[6];
    v13 = v0->ifa_dstaddr;
    if (v13)
    {
      *(v6 + 3) = *&v13->sa_data[6];
      v14 = v0->ifa_dstaddr;
      if (v14)
      {
        *(v6 + 4) = *&v14->sa_data[6];
      }
    }

    *v10 = *&v0->ifa_addr[1].sa_data[6];
LABEL_24:
    v15 = strdup(v0->ifa_name);
    v7[11] = v15;
    if (!v15)
    {
      sub_1000209FC();
    }

    v7[13] = 0;
    v7[14] = v7;
    if (v1)
    {
      *(*(v1 + 112) + 104) = v7;
      *(v1 + 112) = v7;
    }

    else
    {
      v1 = v7;
    }

LABEL_28:
    v0 = v0->ifa_next;
  }

  while (v0);
  v16 = v17;
LABEL_31:
  qword_100030D40 = v1;
  freeifaddrs(v16);
}

uint64_t sub_10000BF5C(char *__s2)
{
  v2 = qword_100030D40;
  if (qword_100030D40 || (sub_10000BD68(), (v2 = qword_100030D40) != 0))
  {
    do
    {
      if (*(v2 + 80) == 18 && !strncmp(*(v2 + 88), __s2, 0x10uLL))
      {
        break;
      }

      v2 = *(v2 + 104);
    }

    while (v2);
  }

  return v2;
}

int8x16_t *sub_10000BFC8(const char *a1, char a2)
{
  v3 = a1;
  if (!strncmp(a1, "self", 0x10uLL))
  {
    v3 = 0;
  }

  v4 = qword_100030D40;
  if (qword_100030D40 || (sub_10000BD68(), (v4 = qword_100030D40) != 0))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if ((a2 & 2) != 0)
    {
      v9 = 48;
    }

    else
    {
      v9 = 16 * (a2 & 4);
    }

    while (1)
    {
      if (sub_10000C1D0(v3, v4) || (a2 & 2) != 0 && (*(v4 + 80) != 2 || (*(v4 + 96) & 2) == 0) || (a2 & 4) != 0 && (*(v4 + 96) & 0x10) == 0 || (a2 & 1) != 0 && *(v4 + 84))
      {
        v10 = v5;
      }

      else
      {
        v10 = *(v4 + 88);
        if (!v5 || strcmp(v5, *(v4 + 88)))
        {
          v7 = 0;
          v6 = 0;
        }

        v11 = *(v4 + 80);
        if ((a2 & 8) == 0)
        {
LABEL_21:
          if (v11 == 2)
          {
            v7 = 1;
          }

          else
          {
            v6 = 1;
          }

          v12 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          if (!v12)
          {
            sub_100020A18();
          }

          v14 = v12;
          v15 = *(v4 + 80);
          v12[5].i8[0] = v15;
          v16 = *(v4 + v9);
          *v12 = v16;
          if (a2)
          {
            v17 = sub_100000ACC(v4 + 16);
            v12 = v14;
          }

          else if (v15 == 2)
          {
            if ((~*(v4 + 96) & 0x2008) == 0)
            {
              v12[1] = *(v4 + 16);
              goto LABEL_42;
            }

            v17 = 32;
          }

          else
          {
            v17 = 128;
          }

          sub_10000BB08(v12, v17, v16, v13);
LABEL_42:
          v14[5].i32[1] = *(v4 + 84);
          v14[6].i64[1] = 0;
          v14[7].i64[0] = v14;
          if (v8)
          {
            *(v8[7].i64[0] + 104) = v14;
            v8[7].i64[0] = v14;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_10;
        }

        if (v11 == 2 && v7)
        {
          v7 = 1;
        }

        else
        {
          if (v11 != 30 || !v6)
          {
            goto LABEL_21;
          }

          v6 = 1;
        }
      }

LABEL_10:
      v4 = *(v4 + 104);
      v5 = v10;
      if (!v4)
      {
        return v8;
      }
    }
  }

  return 0;
}

uint64_t sub_10000C1D0(char *__s2, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2 != 30 && v2 != 2)
  {
    return 1;
  }

  if (!__s2 || !*__s2)
  {
    return 0;
  }

  v5 = *(a2 + 88);
  result = strcmp(v5, __s2);
  if (result)
  {
    v6 = strlen(__s2);
    if (v6 - 16 >= 0xFFFFFFFFFFFFFFF1 && (v7 = v6, __s2[v6 - 1] - 48 >= 0xA) && !strncmp(v5, __s2, v6))
    {
      return v5[v7] - 58 < 0xFFFFFFF6;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

int8x16_t *sub_10000C294(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2;
    __endptr = 0;
    v4 = v2 + 1;
    v5 = strtol(v2 + 1, &__endptr, 0);
    if (!__endptr || (__endptr != v4 ? (v6 = *__endptr == 0) : (v6 = 0), !v6 || (v7 = v5, v5 >= 129)))
    {
      fprintf(__stderrp, "invalid netmask '%s'\n");
      return 0;
    }

    v8 = strlen(a1);
    v9 = strlen(v3);
    v10 = malloc_type_malloc(v8 - v9 + 1, 0xF3C89226uLL);
    if (!v10)
    {
      sub_100020A50();
    }

    v11 = v10;
    v12 = strlen(a1);
    v13 = strlen(v3);
    strlcpy(v11, a1, v12 - v13 + 1);
    v14 = v7;
    v15 = v7;
  }

  else
  {
    v16 = strdup(a1);
    if (!v16)
    {
      sub_100020A6C();
    }

    v11 = v16;
    v15 = 0x80;
    v14 = 32;
    v7 = -1;
  }

  v17 = sub_10000C444(v11, v7);
  if (v17 || (v17 = sub_10000C600(a1)) != 0 || (v17 = sub_10000C6C8(v11, v15)) != 0)
  {
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v18 = sub_10000C7A4(v11, v14, v15);
    v19 = v18 == 0;
  }

  free(v11);
  if (!v18 || v19)
  {
    fprintf(__stderrp, "no IP address found for %s\n");
    return 0;
  }

  return v18;
}

int8x16_t *sub_10000C444(const char *a1, int a2)
{
  v3 = strdup(a1);
  if (!v3)
  {
    sub_100020A88();
  }

  v4 = v3;
  v5 = strrchr(v3, 58);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      if (!strcmp(v6 + 1, "network"))
      {
        v8 = 1;
      }

      else if (!strcmp(v6 + 1, "broadcast"))
      {
        v8 = 2;
      }

      else if (!strcmp(v6 + 1, "peer"))
      {
        v8 = 4;
      }

      else
      {
        if (v6[1] != 48 || v6[2])
        {
          goto LABEL_22;
        }

        v8 = 8;
      }

      v7 |= v8;
      *v6 = 0;
      v6 = strrchr(v4, 58);
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = 0;
LABEL_16:
  if ((v7 & (v7 - 1) & 6) != 0)
  {
    v9 = __stderrp;
    v10 = "illegal combination of interface modifiers\n";
    v11 = 43;
LABEL_21:
    fwrite(v10, v11, 1uLL, v9);
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if ((a2 & 0x80000000) == 0 && (v7 & 3) != 0)
  {
    v9 = __stderrp;
    v10 = "network or broadcast lookup, but extra netmask given\n";
    v11 = 53;
    goto LABEL_21;
  }

  if (!sub_10000BF5C(v4) && strncmp(v4, "self", 0x10uLL))
  {
    goto LABEL_22;
  }

  v14 = sub_10000BFC8(v4, v7);
  v12 = v14;
  if ((a2 & 0x80000000) == 0 && v14)
  {
    v17 = v14;
    do
    {
      v15 = sub_10000BB08(v17, a2, v15, v16);
      v17 = v17[6].i64[1];
    }

    while (v17);
  }

LABEL_23:
  free(v4);
  return v12;
}

int8x16_t *sub_10000C600(char *a1)
{
  v9 = 0;
  if (strrchr(a1, 47))
  {
    v2 = inet_net_pton(2, a1, &v9, 4uLL);
    v3 = v2;
    if (v2 == -1)
    {
      return 0;
    }
  }

  else
  {
    if (inet_pton(2, a1, &v9) != 1)
    {
      return 0;
    }

    v3 = 32;
  }

  v4 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
  if (!v4)
  {
    sub_100020A18();
  }

  v7 = v4;
  v4[5].i64[1] = 0;
  v4[5].i8[0] = 2;
  v4->i32[0] = v9;
  sub_10000BB08(v4, v3, v5, v6);
  v7[6].i64[1] = 0;
  v7[7].i64[0] = v7;
  return v7;
}

int8x16_t *sub_10000C6C8(const char *a1, unsigned __int8 a2)
{
  v9 = 0;
  memset(&v10.ai_socktype, 0, 40);
  v10.ai_socktype = 2;
  *&v10.ai_flags = 0x1E00000004;
  v3 = 0;
  if (!getaddrinfo(a1, "0", &v10, &v9))
  {
    v4 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
    if (!v4)
    {
      sub_100020A18();
    }

    v3 = v4;
    v4[5].i64[1] = 0;
    v4[5].i8[0] = 30;
    v6 = v9;
    v7 = *&v9->ai_addr->sa_data[6];
    *v4 = v7;
    v4[5].i32[1] = *&v6->ai_addr[1].sa_data[6];
    sub_10000BB08(v4, a2, v7, v5);
    freeaddrinfo(v6);
    v3[6].i64[1] = 0;
    v3[7].i64[0] = v3;
  }

  return v3;
}

int8x16_t *sub_10000C7A4(const char *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v5 = strdup(a1);
  if (!v5)
  {
    sub_100020AC0();
  }

  v6 = v5;
  v26 = 0;
  v7 = strrchr(v5, 58);
  if (v7 && *v7 == 58 && v7[1] == 48 && !v7[2])
  {
    v8 = 0;
    *v7 = 0;
  }

  else
  {
    v8 = 1;
  }

  memset(&v27, 0, sizeof(v27));
  v27.ai_socktype = 1;
  if (getaddrinfo(v6, 0, &v27, &v26))
  {
    free(v6);
    return 0;
  }

  v10 = v26;
  if (v26)
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    while (1)
    {
      ai_family = v10->ai_family;
      if (ai_family != 30 && ai_family != 2)
      {
        break;
      }

      if (v8)
      {
        v23 = v12;
        v15 = v11;
LABEL_18:
        v16 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
        if (!v16)
        {
          sub_100020AA4();
        }

        v19 = v16;
        v16[5].i64[1] = 0;
        v20 = v10->ai_family;
        v16[5].i8[0] = v20;
        ai_addr = v10->ai_addr;
        if (v20 == 2)
        {
          v16->i32[0] = *&ai_addr->sa_data[2];
          v22 = a2;
        }

        else
        {
          v17 = *&ai_addr->sa_data[6];
          *v16 = v17;
          v16[5].i32[1] = *&v10->ai_addr[1].sa_data[6];
          v22 = a3;
        }

        sub_10000BB08(v16, v22, v17, v18);
        v19[6].i64[1] = 0;
        v19[7].i64[0] = v19;
        if (v9)
        {
          *(v9[7].i64[0] + 104) = v19;
          v9[7].i64[0] = v19;
        }

        else
        {
          v9 = v19;
        }

        goto LABEL_30;
      }

      if (ai_family == 2)
      {
        v23 = 1;
        v15 = v11;
        if (!v12)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      v15 = 1;
      v23 = v12;
      if (!v11)
      {
        goto LABEL_18;
      }

      v23 = v12;
LABEL_30:
      v10 = v10->ai_next;
      v11 = v15;
      v12 = v23;
      if (!v10)
      {
        v24 = v26;
        goto LABEL_33;
      }
    }

    v23 = v12;
LABEL_23:
    v15 = v11;
    goto LABEL_30;
  }

  v24 = 0;
  v9 = 0;
LABEL_33:
  freeaddrinfo(v24);
  free(v6);
  return v9;
}

uint64_t sub_10000C9A8(void **a1, char *a2, int a3)
{
  if (*a2 == 33)
  {
    v5 = 0;
    do
    {
      v5 ^= 1u;
      v6 = *++a2;
    }

    while (v6 == 33);
  }

  else
  {
    v5 = 0;
  }

  v7 = sub_10000C294(a2);
  if (v7)
  {
    v8 = v7;
    v9 = sub_10000CA4C(a1, v7, a3, v5);
    do
    {
      v10 = *(v8 + 13);
      free(v8);
      v8 = v10;
    }

    while (v10);
  }

  else
  {
    *__error() = 0;
    return 0xFFFFFFFFLL;
  }

  return v9;
}

uint64_t sub_10000CA4C(void **a1, __int128 *a2, int a3, int a4)
{
  while (1)
  {
    v13 = 0;
    v12 = 0uLL;
    BYTE2(v13) = *(a2 + 81) ^ a4;
    LOBYTE(v13) = *(a2 + 80);
    v8 = sub_100000ACC((a2 + 1));
    BYTE1(v13) = v8;
    v9 = *(a2 + 80);
    if (v9 == 30)
    {
      v12 = *a2;
      v10 = 128;
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }

      LODWORD(v12) = *a2;
      v10 = 32;
    }

    if (a3)
    {
      break;
    }

    if (v10 < v8)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (sub_10000EA4C(a1, &v12))
    {
      return 0xFFFFFFFFLL;
    }

    a2 = *(a2 + 13);
    if (!a2)
    {
      return 0;
    }
  }

  if (!a4 && v10 == v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000CB30(void **a1, int a2)
{
  bzero(&v6, 0x404uLL);
  v5 = a2;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020ADC();
  }

  return sub_10000EA4C(a1, &v5);
}

uint64_t sub_10000CBDC(unsigned int *a1, int a2, const char *a3)
{
  v6 = sub_10000EC0C(a1, 0);
  if (!v6)
  {
LABEL_6:
    sub_100020AF8();
  }

  v7 = v6;
  while (*v7 != a2 || strcmp(a3, v7 + 4))
  {
    v7 = sub_10000EC0C(a1, v7);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  return v7[257];
}

uint64_t sub_10000CC54(int a1, uint64_t a2, unint64_t a3, int a4)
{
  v5[0] = *(a2 + 4) - a4;
  v5[1] = 1032;
  v6 = *(a2 + 16) + 1032 * a4;
  return ioctl(a1, a3, v5);
}

uint64_t sub_10000CC9C(uint64_t a1, const char *a2, int a3, uint64_t a4, int a5)
{
  __s1 = 0;
  if (!dword_100030D54)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3 <= 1 ? 1 : a3;
  v10 = sub_10000CE24(a1, &__s1);
  if (v10 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if (!v10)
  {
    puts("No queue in use");
  }

  v12 = __s1;
  if (__s1)
  {
    v13 = a4 & 0x400;
    v14 = __s1;
    do
    {
      if (!a2 || !strcmp(v14, a2))
      {
        if (v13)
        {
          sub_100011AC4("ALTQ:");
        }

        sub_10000D068(a1, v14, 0, v9, a4);
        v13 = 0;
      }

      v14 = *(v14 + 41);
    }

    while (v14);
  }

  if (a5 && v11)
  {
    while (1)
    {
      putchar(10);
      fflush(__stdoutp);
      sleep(v9);
      result = sub_10000CE24(a1, &__s1);
      if (result == -1)
      {
        break;
      }

      v16 = result;
      v12 = __s1;
      if (__s1)
      {
        v17 = __s1;
        do
        {
          if (!a2 || !strcmp(v17, a2))
          {
            sub_10000D068(a1, v17, 0, v9, a4);
          }

          v17 = *(v17 + 41);
        }

        while (v17);
      }

      if (v16 < 1)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    sub_10000D198(v12);
    return 0;
  }

  return result;
}

uint64_t sub_10000CE24(int a1, uint64_t *a2)
{
  v16 = 0u;
  memset(v17, 0, 328);
  v13 = 0;
  v12 = 0;
  v14 = 0;
  bzero(__src, 0x5F8uLL);
  if (ioctl(a1, 0xC158442FuLL, &v16))
  {
    warn("DIOCGETALTQS");
    return 0xFFFFFFFFLL;
  }

  v4 = DWORD1(v16);
  if (DWORD1(v16) != dword_100030C3C && *a2)
  {
    sub_10000D198(*a2);
    *a2 = 0;
    v4 = DWORD1(v16);
  }

  dword_100030C3C = v4;
  v5 = DWORD2(v16);
  if (DWORD2(v16))
  {
    for (i = 0; v5 != i; ++i)
    {
      DWORD2(v16) = i;
      if (ioctl(a1, 0xC1584430uLL, &v16))
      {
        warn("DIOCGETALTQ");
        return 0xFFFFFFFFLL;
      }

      if (LODWORD(v17[20]))
      {
        v12 = __PAIR64__(i, DWORD1(v16));
        v13 = __src;
        LODWORD(v14) = 1488;
        if (ioctl(a1, 0xC0184432uLL, &v12))
        {
          warn("DIOCGETQSTATS");
          return 0xFFFFFFFFLL;
        }

        v7 = sub_10000D1E0(*a2, &v17[4], v17);
        if (v7)
        {
          v8 = v7;
          memcpy((v7 + 344), __src, 0x5D0uLL);
          sub_10000D260(v8);
        }

        else
        {
          memcpy(__dst, v17, sizeof(__dst));
          memcpy(v10, __src, sizeof(v10));
          sub_10000D330(a2, __dst, v10);
        }
      }
    }
  }

  return v5;
}

uint64_t sub_10000D068(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = result;
    sub_100002FBC(a2, a3, 0, 0);
    if (*(a2 + 336))
    {
      putchar(123);
      for (i = *(a2 + 336); i; i = *(i + 328))
      {
        printf("%s", (i + 64));
        if (!*(i + 328))
        {
          break;
        }

        printf(", ");
      }

      putchar(125);
    }

    result = putchar(10);
    if ((a5 & 4) != 0)
    {
      result = sub_10000D434(result, a2, a4, a5);
    }

    if ((a5 & 0x200) != 0)
    {
      v11 = *(a2 + 320);
      v12 = sub_100003908(*(a2 + 56));
      result = printf("  [ qid=%u ifname=%s ifbandwidth=%s ]\n", v11, a2, v12);
    }

    for (j = *(a2 + 336); j; j = *(j + 328))
    {
      result = sub_10000D068(v9, j, (a3 + 1), a4, a5);
    }
  }

  return result;
}

void sub_10000D198(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      if (v1[42])
      {
        sub_10000D198();
      }

      v2 = v1[41];
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_10000D1E0(uint64_t a1, const char *a2, const char *a3)
{
  v3 = a1;
  if (a1)
  {
    while (strcmp((v3 + 64), a2) || strcmp(v3, a3))
    {
      v6 = *(v3 + 336);
      if (v6)
      {
        v7 = sub_10000D1E0(v6, a2, a3);
        if (v7)
        {
          return v7;
        }
      }

      v3 = *(v3 + 328);
      if (!v3)
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t sub_10000D260(uint64_t result)
{
  if (!*(result + 320))
  {
    return result;
  }

  v1 = *(result + 1832);
  v2 = *(result + 48) - 1;
  if (v2 <= 3)
  {
    v3 = qword_100027BA0[v2];
    v4 = *(result + qword_100027BC0[v2]);
    v5 = *(result + v3);
    if (v1)
    {
      goto LABEL_4;
    }

LABEL_13:
    *(result + 1856) = v4;
    *(result + 1864) = v5;
    v11 = 1;
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v6 = *(result + 1856);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7)
  {
    *(result + 1840) = (v8 + *(result + 1840) * (v1 - 1)) / v1;
  }

  v9 = *(result + 1864);
  v7 = v5 >= v9;
  v10 = v5 - v9;
  if (v7)
  {
    *(result + 1848) = (v10 + *(result + 1848) * (v1 - 1)) / v1;
  }

  *(result + 1856) = v4;
  *(result + 1864) = v5;
  if (v1 <= 7)
  {
    v11 = v1 + 1;
LABEL_14:
    *(result + 1832) = v11;
  }

  return result;
}

uint64_t sub_10000D330(uint64_t *a1, const char *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x750uLL, 0x10A004020F05D53uLL);
  if (!v6)
  {
    sub_100020B14();
  }

  v7 = v6;
  memcpy(v6, a2, 0x148uLL);
  memcpy(v7 + 43, a3, 0x5F8uLL);
  v7[41] = 0;
  v7[42] = 0;
  v8 = *a1;
  if (*a1)
  {
    if (a2[128])
    {
      v9 = sub_10000D1E0(v8, a2 + 128, a2);
      if (!v9)
      {
        errx(1, "parent %s not found", a2 + 128);
      }

      v10 = *(v9 + 336);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *(v10 + 328);
        }

        while (v10);
        a1 = (v11 + 328);
      }

      else
      {
        a1 = (v9 + 336);
      }
    }

    else
    {
      do
      {
        v12 = v8;
        v8 = *(v8 + 328);
      }

      while (v8);
      a1 = (v12 + 328);
    }
  }

  *a1 = v7;

  return sub_10000D260(v7);
}

uint64_t sub_10000D434(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a2[80])
  {
    v6 = a2[12];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        memcpy(__dst, a2 + 86, sizeof(__dst));
        return sub_10000D604(__dst, a3, a4);
      }

      else if (v6 == 4)
      {
        memcpy(__dst, a2 + 86, sizeof(__dst));
        return sub_10000D794(__dst, a3, a4);
      }
    }

    else if (v6 == 1)
    {
      memcpy(__dst, a2 + 86, sizeof(__dst));
      return sub_10000D52C(__dst, a3, a4);
    }

    else if (v6 == 2)
    {
      memcpy(__dst, a2 + 86, sizeof(__dst));
      return sub_10000D6CC(__dst, a3, a4);
    }
  }

  return result;
}

uint64_t sub_10000D52C(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  result = printf("  [ qlength: %3d/%3d  borrows: %6u  suspends: %6u ]\n", *(a1 + 84), *(a1 + 72), *(a1 + 44), *(a1 + 52));
  if ((a3 & 0x10000) != 0 && *(a1 + 92) == 2)
  {
    result = sub_10000D85C(a1 + 96);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D604(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = printf("  [ qlength: %3d/%3d ]\n", *(a1 + 8), *(a1 + 12));
  if ((a3 & 0x10000) != 0 && *(a1 + 56) == 2)
  {
    result = sub_10000D85C(a1 + 64);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D6CC(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264));
  result = printf("  [ qlength: %3d/%3d ]\n", *(a1 + 228), *(a1 + 232));
  if ((a3 & 0x10000) != 0 && *(a1 + 288) == 2)
  {
    result = sub_10000D85C(a1 + 296);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D794(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  result = printf("  [ qlength: %3d/%3d ]\n", *(a1 + 8), *(a1 + 12));
  if ((a3 & 0x10000) != 0 && *(a1 + 48) == 2)
  {
    result = sub_10000D85C(a1 + 56);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D85C(uint64_t a1)
{
  v2 = *(a1 + 12);
  putchar(10);
  printf("  [ early drop: %12llu  rlimit drop: %11llu  marked: %11llu ]\n", *(a1 + 48), *(a1 + 56), *(a1 + 72));
  printf("  [ penalized: %13llu  rehash cnt: %12llu  current: %10u ]\n", *(a1 + 80), *(a1 + 120), v2);
  sub_10000DB3C(*(a1 + 104));
  printf("  [ deque avg: %13s  ", byte_100030C40);
  sub_10000DB3C(*(a1 + 112));
  printf("rehash intvl: %11s]\n", byte_100030C40);
  sub_10000DB3C(*(a1 + 96));
  printf("  [ holdtime: %14s  ", byte_100030C40);
  sub_10000DB3C(*(a1 + 88));
  printf("pboxtime: %14s ]\n", byte_100030C40);
  printf("  [ allocation: %12u  drop thresh: %11u ]\n", *a1, *(a1 + 4));
  printf("  [ flow controlled: %7llu  adv feedback: %10llu ]\n", *(a1 + 136), *(a1 + 144));
  printf("\n\t\t\t\tCurrent bins (set %d)", v2);
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    printf("\n\tLevel: %d\n", v3);
    v6 = 0;
    v7 = a1 + 160 + (v2 << 9) + (v3 << 8);
    do
    {
      if ((v6 & 3) == 0)
      {
        printf("\t%6d:\t", v6 | 1);
      }

      if (*(v7 + 8 * v6) < 1)
      {
        printf("[           ]");
      }

      else
      {
        printf("[%1.4f %4u]");
      }

      if (v6)
      {
        if ((++v6 & 3) == 0)
        {
          putchar(10);
        }
      }

      else
      {
        v6 = 1;
      }
    }

    while (v6 != 32);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  printf("\n\t\t\t\tWarm up bins (set %d)", v2 ^ 1);
  v8 = 0;
  v9 = a1 + 160 + ((v2 ^ 1) << 9);
  v10 = 1;
  do
  {
    v11 = v10;
    printf("\n\tLevel: %d\n", v8);
    v12 = 0;
    v13 = v9 + (v8 << 8);
    do
    {
      if ((v12 & 3) == 0)
      {
        printf("\t%6d:\t", v12 | 1);
      }

      if (*(v13 + 8 * v12) < 1)
      {
        printf("[           ]");
      }

      else
      {
        printf("[%1.4f %4u]");
      }

      if (v12)
      {
        if ((++v12 & 3) == 0)
        {
          putchar(10);
        }
      }

      else
      {
        v12 = 1;
      }
    }

    while (v12 != 32);
    v10 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);

  return putchar(10);
}

uint64_t sub_10000DB3C(unint64_t a1)
{
  v1 = a1;
  if (a1 < 0x3B9ACA00)
  {
    if (a1 < 0xF4240)
    {
      if (a1 < 0x3E8)
      {
        v3 = "nsec";
        return snprintf(byte_100030C40, 0x20uLL, "%-4.2Lf %4s", v1, v3);
      }

      v2 = 1000.0;
      v3 = "usec";
    }

    else
    {
      v2 = 1000000.0;
      v3 = "msec";
    }
  }

  else
  {
    v2 = 1000000000.0;
    v3 = "sec ";
  }

  v1 = v1 / v2;
  return snprintf(byte_100030C40, 0x20uLL, "%-4.2Lf %4s", v1, v3);
}

uint64_t sub_10000DBEC(const void *a1, _DWORD *a2, int a3)
{
  bzero(__dst, 0x450uLL);
  v9 = a3;
  if (a1)
  {
    memcpy(__dst, a1, 0x428uLL);
  }

  if (ioctl(dword_1000309F0, 0xC450443CuLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_10000DCB8(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (a2 < 0 || !a1 && a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(v9, 0x450uLL);
  v14 = a4;
  v10 = a1;
  v11 = 1064;
  v12 = a2;
  if (ioctl(dword_1000309F0, 0xC450443DuLL, v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_10000DDA0(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (a2 < 0 || !a1 && a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(v9, 0x450uLL);
  v14 = a4;
  v10 = a1;
  v11 = 1064;
  v12 = a2;
  if (ioctl(dword_1000309F0, 0xC450443EuLL, v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_10000DE88(const void *a1, uint64_t a2, int *a3, int a4)
{
  if (a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    bzero(__dst, 0x450uLL);
    v14 = a4;
    if (a1)
    {
      memcpy(__dst, a1, sizeof(__dst));
    }

    v11 = a2;
    v12 = 1064;
    v13 = v5;
    result = ioctl(dword_1000309F0, 0xC450443FuLL, __dst);
    if (!result)
    {
      *a3 = v13;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000DF88(const void *a1, uint64_t a2, int *a3, int a4)
{
  if (a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    bzero(__dst, 0x450uLL);
    v14 = a4;
    if (a1)
    {
      memcpy(__dst, a1, sizeof(__dst));
    }

    v11 = a2;
    v12 = 1200;
    v13 = v5;
    result = ioctl(dword_1000309F0, 0xC4504440uLL, __dst);
    if (!result)
    {
      *a3 = v13;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E088(void *__src, _DWORD *a2, unsigned int a3)
{
  if (!__src)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v6 = 0u;
  v7 = 0u;
  v8 = a3;
  memcpy(__dst, __src, sizeof(__dst));
  if (ioctl(dword_1000309F0, 0xC4504442uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = DWORD2(v7);
  }

  return result;
}

uint64_t sub_10000E154(void *__src, uint64_t a2, int a3, _DWORD *a4, unsigned int a5)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = 20;
  v12 = a3;
  if (ioctl(dword_1000309F0, 0xC4504443uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a4)
  {
    *a4 = DWORD1(v13);
  }

  return result;
}

uint64_t sub_10000E24C(void *__src, uint64_t a2, int a3, _DWORD *a4, unsigned int a5)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = 20;
  v12 = a3;
  if (ioctl(dword_1000309F0, 0xC4504444uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a4)
  {
    *a4 = DWORD2(v13);
  }

  return result;
}

uint64_t sub_10000E344(void *__src, uint64_t a2, int a3, int *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, unsigned int a8)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v20 = 0u;
  v21 = a8;
  memcpy(__dst, __src, sizeof(__dst));
  v17 = a2;
  v18 = 20;
  v19 = a3;
  if (a4)
  {
    v15 = *a4;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v20) = v15;
  if (ioctl(dword_1000309F0, 0xC4504445uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    *a5 = DWORD1(v20);
  }

  if (a6)
  {
    *a6 = DWORD2(v20);
  }

  if (a7)
  {
    *a7 = HIDWORD(v20);
  }

  result = 0;
  if (a4)
  {
    *a4 = v20;
  }

  return result;
}

uint64_t sub_10000E488(void *__src, uint64_t a2, int *a3, unsigned int a4)
{
  if (__src && a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    v12 = 0u;
    v13 = a4;
    memcpy(__dst, __src, sizeof(__dst));
    v9 = a2;
    v10 = 20;
    v11 = v5;
    result = ioctl(dword_1000309F0, 0xC4504446uLL, __dst);
    if (!result)
    {
      *a3 = v11;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E57C(void *__src, uint64_t a2, int *a3, unsigned int a4)
{
  if (__src && a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    v12 = 0u;
    v13 = a4;
    memcpy(__dst, __src, sizeof(__dst));
    v9 = a2;
    v10 = 96;
    v11 = v5;
    result = ioctl(dword_1000309F0, 0xC4504447uLL, __dst);
    if (!result)
    {
      *a3 = v11;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E670(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (a2 < 0 || !a1 && a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(v9, 0x450uLL);
  v14 = a4;
  v10 = a1;
  v11 = 1064;
  v12 = a2;
  if (ioctl(dword_1000309F0, 0xC4504441uLL, v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_10000E758(void *__src, uint64_t a2, int a3, _DWORD *a4, unsigned int a5)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = 20;
  v12 = a3;
  if (ioctl(dword_1000309F0, 0xC4504449uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a4)
  {
    *a4 = DWORD1(v13);
  }

  return result;
}

uint64_t sub_10000E850(void *__src, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5, int a6, int a7)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v17 = 0u;
  v18 = a7;
  memcpy(__dst, __src, sizeof(__dst));
  v14 = a2;
  v15 = 20;
  v16 = a3;
  v19 = a6;
  if (ioctl(dword_1000309F0, 0xC450444DuLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  if (a4)
  {
    *a4 = DWORD1(v17);
  }

  result = 0;
  if (a5)
  {
    *a5 = v17;
  }

  return result;
}

uint64_t sub_10000E964(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v4 = *a3;
  if (*a3 < 0 || !a2 && v4)
  {
    goto LABEL_7;
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  if (a1)
  {
    if (__strlcpy_chk() > 0xF)
    {
LABEL_7:
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    v4 = *a3;
  }

  *&v8 = a2;
  DWORD2(v8) = 168;
  HIDWORD(v8) = v4;
  result = ioctl(dword_1000309F0, 0xC0284457uLL, &v7);
  if (!result)
  {
    *a3 = HIDWORD(v8);
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000EA4C(void **a1, void *__src)
{
  if (!a1 || ((v4 = *a1, v4 >= 1) ? (v5 = __src == 0) : (v5 = 1), !v5 ? (v6 = v4 >= 7) : (v6 = 1), v6))
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v8 = qword_1000309A8[v4];
  v9 = *(a1 + 1);
  if (v9 == *(a1 + 2))
  {
    if (!sub_10000EAF8(a1, 0))
    {
      v9 = *(a1 + 1);
      goto LABEL_15;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_15:
  memcpy(a1[2] + v8 * v9, __src, v8);
  result = 0;
  ++*(a1 + 1);
  return result;
}

uint64_t sub_10000EAF8(void **a1, int a2)
{
  if (!a1 || (v3 = *a1, (v3 - 7) <= 0xFFFFFFF9))
  {
    v4 = __error();
    v5 = 22;
LABEL_4:
    *v4 = v5;
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 2);
  if (a2 && v7 >= a2)
  {
    return 0;
  }

  v8 = qword_1000309A8[v3];
  if (v7)
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = (2 * v7);
    }

    if ((v9 & 0x80000000) != 0 || 0xFFFFFFFFFFFFFFFFLL / v8 <= v9)
    {
      v4 = __error();
      v5 = 12;
      goto LABEL_4;
    }

    v10 = malloc_type_realloc(a1[2], v8 * v9, 0xF80DFD9CuLL);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v10;
    bzero(&v10[v8 * *(a1 + 2)], v8 * (v9 - *(a1 + 2)));
    a1[2] = v11;
    LODWORD(v11) = v9;
  }

  else
  {
    if (a2 <= 64)
    {
      v11 = 64;
    }

    else
    {
      v11 = a2;
    }

    v12 = malloc_type_calloc(v8, v11, 0x99FABC16uLL);
    a1[2] = v12;
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  *(a1 + 2) = v11;
  return result;
}

unsigned int *sub_10000EC0C(unsigned int *result, uint64_t a2)
{
  if (result)
  {
    v2 = *result;
    if ((v2 - 7) >= 0xFFFFFFFA && (v3 = result[1]) != 0)
    {
      if (a2)
      {
        v4 = qword_1000309A8[v2];
        v5 = (a2 - *(result + 2)) / v4;
        v6 = a2 + v4;
        if (v5 >= v3 - 1)
        {
          return 0;
        }

        else
        {
          return v6;
        }
      }

      else
      {
        return *(result + 2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10000EC68(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 16) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_10000ECA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, _BYTE *, uint64_t))
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 == 45 && !*(a2 + 1))
  {
    v7 = __stdinp;
    goto LABEL_8;
  }

  v7 = sub_100013B04(a2, "r");
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
LABEL_8:
    while (1)
    {
      for (i = byte_1000309E0; ; byte_1000309E0 = i)
      {
        if (i < 0)
        {
          if (!__maskrune(i, 0x4000uLL))
          {
            break;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[i] & 0x4000) == 0)
        {
          break;
        }

        if (feof(v7))
        {
          break;
        }

        i = fgetc(v7);
      }

      if (byte_1000309E0 != 35)
      {
        break;
      }

      do
      {
        if (feof(v7))
        {
          break;
        }

        byte_1000309E0 = fgetc(v7);
      }

      while (byte_1000309E0 != 10);
    }

    if (feof(v7))
    {
      v8 = 0;
      byte_1000309E0 = 32;
      goto LABEL_34;
    }

    v10 = 0;
    while (1)
    {
      if (v10 <= 255)
      {
        v12[v10++] = byte_1000309E0;
      }

      byte_1000309E0 = fgetc(v7);
      if (feof(v7))
      {
        break;
      }

      if (byte_1000309E0 < 0)
      {
        if (__maskrune(byte_1000309E0, 0x4000uLL))
        {
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[byte_1000309E0] & 0x4000) != 0)
      {
        break;
      }
    }

    if (v10 >= 256)
    {
      break;
    }

    v12[v10] = 0;
    if (a4(a1, v12, a3))
    {
      goto LABEL_33;
    }
  }

  *__error() = 22;
LABEL_33:
  v8 = 0xFFFFFFFFLL;
LABEL_34:
  if (v7 != __stdinp)
  {
    fclose(v7);
  }

  return v8;
}

char *sub_10000EEC8(int a1)
{
  if (a1 == 3)
  {
    return "Table does not exist";
  }

  if (a1 == 2)
  {
    return "Anchor or Ruleset does not exist";
  }

  return strerror(a1);
}

uint64_t sub_10000EF18(int a1, char **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7)
{
  v134 = 0;
  v135 = 0;
  v133 = 0;
  if (!a4)
  {
    sub_10001069C();
  }

  v138 = 0;
  v139 = 0;
  v140 = 0;
  v136[1] = 0;
  v137 = 0;
  v136[0] = 0;
  bzero(__src, 0x428uLL);
  if (a3)
  {
    if (strlen(a3) >= 0x20)
    {
      sub_10001069C();
    }

    if (__strlcpy_chk() >= 0x20)
    {
      sub_100020B30();
    }
  }

  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020B30();
  }

  v19 = a7 & 8;
  v20 = v19 >> 2;
  if (*a4 == 45)
  {
    if (*(a4 + 1) == 70 && !*(a4 + 2))
    {
      if (a1 || a5)
      {
        sub_10001069C();
      }

      if ((a7 & 0x108) != 8 && sub_10000DBEC(__src, &v135, v19 >> 2))
      {
        goto LABEL_168;
      }

      sub_10001019C(a7, "%d tables deleted", v13, v14, v15, v16, v17, v18, v135);
      goto LABEL_61;
    }

    if (*(a4 + 1) == 115 && !*(a4 + 2))
    {
      if ((a7 & 0x80) != 0)
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      LODWORD(v138) = v55;
      if (a1 || a5)
      {
        sub_10001069C();
      }

      v56 = a7 & 0x108;
      v57 = HIDWORD(v138);
      do
      {
        sub_10000EAF8(&v138, v57);
        HIDWORD(v138) = v139;
        if ((a7 & 0x80) != 0)
        {
          if (v56 != 8 && sub_10000DF88(__src, v140, &v138 + 1, v19 >> 2))
          {
            goto LABEL_168;
          }
        }

        else if (v56 != 8 && sub_10000DE88(__src, v140, &v138 + 1, v19 >> 2))
        {
          goto LABEL_168;
        }

        v57 = HIDWORD(v138);
      }

      while (SHIDWORD(v138) > v139);
      if ((a7 & 0x400) != 0 && SHIDWORD(v138) >= 1)
      {
        sub_100011AC4("TABLES:");
      }

      for (i = sub_10000EC0C(&v138, 0); i; i = sub_10000EC0C(&v138, i))
      {
        if ((a7 & 0x80) != 0)
        {
          v141 = *(i + 1176);
          if ((a7 & 0x200) != 0 || (*(i + 1056) & 4) != 0)
          {
            v58 = 1;
            sub_10001022C(i, 1, a7 & 0x200);
            printf("\tAddresses:   %d\n", *(i + 1184));
            v59 = ctime(&v141);
            printf("\tCleared:     %s", v59);
            printf("\tReferences:  [ Anchors: %-18d Rules: %-18d ]\n", *(i + 1192), *(i + 1188));
            printf("\tEvaluations: [ NoMatch: %-18llu Match: %-18llu ]\n", *(i + 1168), *(i + 1160));
            v60 = 0;
            do
            {
              v61 = 0;
              v62 = 3 * v60;
              v63 = v58;
              v64 = &off_10002CD20[v62];
              v65 = (i + 1064 + 8 * v62);
              do
              {
                printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", v64[v61++], *v65, v65[6]);
                ++v65;
              }

              while (v61 != 3);
              v58 = 0;
              v60 = 1;
            }

            while ((v63 & 1) != 0);
          }
        }

        else
        {
          sub_10001022C(i, a7 & 4, a7 & 0x200);
        }
      }

      goto LABEL_170;
    }
  }

  if (!strcmp(a4, "kill"))
  {
    if (a1 || a5)
    {
      sub_10001069C();
    }

    if ((a7 & 0x108) != 8 && sub_10000DDA0(__src, 1, &v135, v19 >> 2))
    {
      goto LABEL_168;
    }

    sub_10001019C(a7, "%d table deleted", v21, v22, v23, v24, v25, v26, v135);
    goto LABEL_61;
  }

  if (!strcmp(a4, "flush"))
  {
    if (a1 || a5)
    {
      sub_10001069C();
    }

    if ((a7 & 0x108) != 8 && sub_10000E088(__src, &v135, v19 >> 2))
    {
      goto LABEL_168;
    }

    sub_10001019C(a7, "%d addresses deleted", v27, v28, v29, v30, v31, v32, v135);
LABEL_61:
    i = 0;
LABEL_170:
    sub_10000EC68(&v138);
    sub_10000EC68(v136);
    return i;
  }

  if (!strcmp(a4, "add"))
  {
    LODWORD(v138) = 3;
    if (sub_100010334(&v138, a1, a2, a5, 0))
    {
      goto LABEL_169;
    }

    v144 |= 1u;
    if ((a7 & 0x108) != 8 && sub_10000DCB8(__src, 1, &v135 + 1, v19 >> 2) && *__error() != 1)
    {
      goto LABEL_168;
    }

    if (!HIDWORD(v135) || (sub_10000FE48(v143), sub_10001019C(a7, "%d table created", v46, v47, v48, v49, v50, v51, SBYTE4(v135)), (a7 & 8) == 0))
    {
      v144 &= ~1u;
      if ((a7 & 0x108) == 8 || !sub_10000E154(__src, v140, SHIDWORD(v138), &v135 + 1, v20 | a7 & 4))
      {
        sub_10001019C(a7, "%d/%d addresses added", v40, v41, v42, v43, v44, v45, SBYTE4(v135));
        if ((a7 & 4) != 0)
        {
          v52 = sub_10000EC0C(&v138, 0);
          if (v52)
          {
            v53 = v52;
            do
            {
              if ((a7 & 0x80) != 0 || v53[19])
              {
                sub_1000103F8(v53, 0, a7 & 0x40);
              }

              v53 = sub_10000EC0C(&v138, v53);
              i = 0;
            }

            while (v53);
            goto LABEL_170;
          }
        }

        goto LABEL_61;
      }

      goto LABEL_168;
    }
  }

  else
  {
    if (!strcmp(a4, "delete"))
    {
      LODWORD(v138) = 3;
      if (!sub_100010334(&v138, a1, a2, a5, 0))
      {
        if ((a7 & 0x108) == 8 || !sub_10000E24C(__src, v140, SHIDWORD(v138), &v135, v20 | a7 & 4))
        {
          sub_10001019C(a7, "%d/%d addresses deleted", v66, v67, v68, v69, v70, v71, v135);
          if ((a7 & 4) != 0)
          {
            v72 = sub_10000EC0C(&v138, 0);
            if (v72)
            {
              v73 = v72;
              do
              {
                if ((a7 & 0x80) != 0 || v73[19])
                {
                  sub_1000103F8(v73, 0, a7 & 0x40);
                }

                v73 = sub_10000EC0C(&v138, v73);
                i = 0;
              }

              while (v73);
              goto LABEL_170;
            }
          }

          goto LABEL_61;
        }

        goto LABEL_168;
      }

      goto LABEL_169;
    }

    if (strcmp(a4, "replace"))
    {
      if (!strcmp(a4, "expire"))
      {
        v141 = 0;
        LODWORD(v138) = 4;
        LODWORD(v136[0]) = 3;
        if (a1 != 1 || a5)
        {
          sub_10001069C();
        }

        v87 = strtonum(*a2, 0, 0xFFFFFFFFLL, &v141);
        if (v141)
        {
          errx(1, "expiry time: %s", v141);
        }

        v88 = v87;
        v89 = a7 & 0x108;
        v90 = HIDWORD(v138);
        do
        {
          sub_10000EAF8(&v138, v90);
          HIDWORD(v138) = v139;
          if (v89 == 8)
          {
            break;
          }

          if (sub_10000E57C(__src, v140, &v138 + 1, v19 >> 2))
          {
            goto LABEL_168;
          }

          v90 = HIDWORD(v138);
        }

        while (SHIDWORD(v138) > v139);
        v91 = sub_10000EC0C(&v138, 0);
        if (v91)
        {
          v98 = v91;
          do
          {
            if (time(0) - *(v98 + 11) > v88 && sub_10000EA4C(v136, v98))
            {
              sub_100020B4C();
            }

            v98 = sub_10000EC0C(&v138, v98);
          }

          while (v98);
        }

        if (v89 == 8 || !sub_10000E24C(__src, v137, SHIDWORD(v136[0]), &v135, v20 | a7 & 4))
        {
          sub_10001019C(a7, "%d/%d addresses expired", v92, v93, v94, v95, v96, v97, v135);
          if ((a7 & 4) != 0)
          {
            v99 = sub_10000EC0C(v136, 0);
            if (v99)
            {
              v100 = v99;
              do
              {
                if ((a7 & 0x80) != 0 || v100[19])
                {
                  sub_1000103F8(v100, 0, a7 & 0x40);
                }

                v100 = sub_10000EC0C(v136, v100);
              }

              while (v100);
            }
          }

          goto LABEL_61;
        }

        goto LABEL_168;
      }

      if (!strcmp(a4, "show"))
      {
        if ((a7 & 4) != 0)
        {
          v101 = 4;
        }

        else
        {
          v101 = 3;
        }

        LODWORD(v138) = v101;
        if (a1 || a5)
        {
          sub_10001069C();
        }

        v102 = a7 & 0x108;
        v103 = HIDWORD(v138);
        do
        {
          sub_10000EAF8(&v138, v103);
          HIDWORD(v138) = v139;
          if ((a7 & 4) != 0)
          {
            if (v102 != 8 && sub_10000E57C(__src, v140, &v138 + 1, v19 >> 2))
            {
              goto LABEL_168;
            }
          }

          else if (v102 != 8 && sub_10000E488(__src, v140, &v138 + 1, v19 >> 2))
          {
            goto LABEL_168;
          }

          v103 = HIDWORD(v138);
        }

        while (SHIDWORD(v138) > v139);
        v104 = sub_10000EC0C(&v138, 0);
        if (v104)
        {
          v105 = v104;
          v132 = a7;
          do
          {
            if ((a7 & 4) != 0)
            {
              v141 = *(v105 + 11);
              sub_1000103F8(v105, 0, a7 & 0x40);
              v106 = ctime(&v141);
              printf("\tCleared:     %s", v106);
              v107 = 0;
              v108 = 1;
              do
              {
                v109 = v108;
                v110 = &off_10002CD20[3 * v107];
                v111 = &v105[4 * v107 + 6];
                v112 = &v105[4 * v107 + 14];
                printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", *v110, *v111, *v112);
                printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", v110[1], *(v111 + 1), *(v112 + 1));
                v108 = 0;
                v107 = 1;
              }

              while ((v109 & 1) != 0);
              LOBYTE(a7) = v132;
            }

            else
            {
              sub_1000103F8(v105, 0, a7 & 0x40);
            }

            v105 = sub_10000EC0C(&v138, v105);
            i = 0;
          }

          while (v105);
          goto LABEL_170;
        }

        goto LABEL_61;
      }

      if (strcmp(a4, "test"))
      {
        if (strcmp(a4, "zero"))
        {
          warnx("pfctl_table: unknown command '%s'", a4);
          goto LABEL_61;
        }

        if (a1 || a5)
        {
          sub_10001069C();
        }

        if ((a7 & 0x108) == 8)
        {
          v39 = 0;
LABEL_190:
          sub_10001019C(a7, "%d table/stats cleared", v33, v34, v35, v36, v37, v38, v39);
          goto LABEL_61;
        }

        if (!sub_10000E670(__src, 1, &v134, v20 | 0x10))
        {
          v39 = v134;
          goto LABEL_190;
        }

        goto LABEL_168;
      }

      LODWORD(v138) = 3;
      LODWORD(v136[0]) = 3;
      if (!sub_100010334(&v138, a1, a2, a5, 1))
      {
        if ((a7 & 0x80) != 0)
        {
          v20 |= 0x20u;
          v119 = sub_10000EC0C(&v138, 0);
          if (v119)
          {
            v120 = v119;
            do
            {
              if (sub_10000EA4C(v136, v120))
              {
                sub_100020B4C();
              }

              v120 = sub_10000EC0C(&v138, v120);
            }

            while (v120);
          }
        }

        if ((a7 & 0x108) == 8)
        {
          v121 = 0;
          goto LABEL_193;
        }

        if (!sub_10000E758(__src, v140, SHIDWORD(v138), &v133, v20))
        {
          v121 = v133;
LABEL_193:
          sub_10001019C(a7, "%d/%d addresses match", v113, v114, v115, v116, v117, v118, v121);
          if ((a7 & 0x84) == 4)
          {
            v126 = sub_10000EC0C(&v138, 0);
            if (v126)
            {
              v127 = v126;
              do
              {
                if (v127[19] == 1)
                {
                  sub_1000103F8(v127, 0, a7 & 0x40);
                }

                v127 = sub_10000EC0C(&v138, v127);
              }

              while (v127);
            }
          }

          if ((a7 & 0x80) != 0)
          {
            v128 = sub_10000EC0C(&v138, 0);
            if (v128)
            {
              v129 = v128;
              v130 = 0;
              do
              {
                v130 = sub_10000EC0C(v136, v130);
                sub_1000103F8(v130, v129, a7 & 0x40);
                v129 = sub_10000EC0C(&v138, v129);
              }

              while (v129);
            }
          }

          i = 2 * (v133 < SHIDWORD(v138));
          goto LABEL_170;
        }

LABEL_168:
        sub_100010140();
      }

LABEL_169:
      i = 0xFFFFFFFFLL;
      goto LABEL_170;
    }

    LODWORD(v138) = 3;
    if (sub_100010334(&v138, a1, a2, a5, 0))
    {
      goto LABEL_169;
    }

    v144 |= 1u;
    if ((a7 & 0x108) != 8 && sub_10000DCB8(__src, 1, &v135 + 1, v19 >> 2) && *__error() != 1)
    {
      goto LABEL_168;
    }

    if (!HIDWORD(v135) || (sub_10000FE48(v143), sub_10001019C(a7, "%d table created", v80, v81, v82, v83, v84, v85, SBYTE4(v135)), (a7 & 8) == 0))
    {
      v144 &= ~1u;
      while (1)
      {
        v86 = v139;
        LODWORD(v141) = v139;
        if ((a7 & 0x108) == 8)
        {
          break;
        }

        if (sub_10000E344(__src, v140, SHIDWORD(v138), &v141, &v135 + 1, &v135, &v134 + 1, v20 | a7 & 4))
        {
          goto LABEL_168;
        }

        v86 = v141;
        if (v141 <= v139)
        {
          break;
        }

        sub_10000EAF8(&v138, v141);
      }

      HIDWORD(v138) = v86;
      if (HIDWORD(v135))
      {
        sub_10001019C(a7, "%d addresses added", v74, v75, v76, v77, v78, v79, SBYTE4(v135));
      }

      if (v135)
      {
        sub_10001019C(a7, "%d addresses deleted", v74, v75, v76, v77, v78, v79, v135);
      }

      v123 = BYTE4(v134);
      if (HIDWORD(v134))
      {
        sub_10001019C(a7, "%d addresses changed", v74, v75, v76, v77, v78, v79, SBYTE4(v134));
        v123 = HIDWORD(v134) != 0;
      }

      if (!v135 && (v123 & 1) == 0)
      {
        sub_10001019C(a7, "no changes", v74, v75, v76, v77, v78, v79, v131);
      }

      if ((a7 & 4) != 0)
      {
        v124 = sub_10000EC0C(&v138, 0);
        if (v124)
        {
          v125 = v124;
          do
          {
            if ((a7 & 0x80) != 0 || v125[19])
            {
              sub_1000103F8(v125, 0, a7 & 0x40);
            }

            v125 = sub_10000EC0C(&v138, v125);
            i = 0;
          }

          while (v125);
          goto LABEL_170;
        }
      }

      goto LABEL_61;
    }
  }

  return 0;
}

uint64_t sub_10000FCC8(int a1, char **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7)
{
  if (!a3 || !a4)
  {
    sub_10001069C();
  }

  return sub_10000EF18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10000FD50(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  bzero(v11, 0x428uLL);
  if (__strlcpy_chk() > 0x1F || __strlcpy_chk() >= 0x400)
  {
    sub_100020B68();
  }

  v11[264] = a2;
  return sub_10000E850(v11, *(a5 + 16), *(a5 + 4), 0, 0, a6, 16 * (a3 != 0));
}

void sub_10000FE48(const char *a1)
{
  v2 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 1;
  do
  {
    sub_10000EAF8(&v7, v2);
    HIDWORD(v7) = v8;
    if (sub_10000DE88(0, v9, &v7 + 1, 64))
    {
      sub_10002098C();
    }

    v2 = HIDWORD(v7);
  }

  while (SHIDWORD(v7) > v8);
  v3 = sub_10000EC0C(&v7, 0);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      if ((v4[264] & 4) != 0 && (!a1 || !strcmp(a1, v4 + 1024)))
      {
        if (*v4)
        {
          if (v6 && !strcmp(v6, v4 + 1024))
          {
            v6 = 0;
            ++v5;
          }
        }

        else
        {
          v6 = (v4 + 256);
        }
      }

      v4 = sub_10000EC0C(&v7, v4);
    }

    while (v4);
    if (v5 == 1)
    {
      warnx("warning: namespace collision with <%s> global table.");
    }

    else if (v5 >= 2)
    {
      warnx("warning: namespace collisions with %d global tables.");
    }
  }

  sub_10000EC68(&v7);
}

uint64_t sub_10000FF8C(uint64_t a1, __int16 a2)
{
  v4 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 5;
  do
  {
    sub_10000EAF8(&v10, v4);
    HIDWORD(v10) = v11;
    if (sub_10000E964(a1, v12, &v10 + 1))
    {
      sub_100010140();
      return 1;
    }

    v4 = HIDWORD(v10);
  }

  while (SHIDWORD(v10) > v11);
  if ((a2 & 0x400) != 0)
  {
    sub_100011AC4("INTERFACES:");
  }

  result = sub_10000EC0C(&v10, 0);
  if (result)
  {
    v6 = result;
    do
    {
      v13 = *(v6 + 144);
      printf("%s", v6);
      if (a2 & 4) != 0 && (*(v6 + 153))
      {
        printf(" (skip)");
      }

      putchar(10);
      if ((a2 & 0x80) != 0)
      {
        v7 = ctime(&v13);
        printf("\tCleared:     %s", v7);
        printf("\tReferences:  [ States:  %-18d Rules: %-18d ]\n", *(v6 + 156), *(v6 + 160));
        for (i = 0; i != 8; ++i)
        {
          v9 = i >> 2;
          printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", (&(&off_10002CD50[4 * v9])[2 * ((i >> 1) & 1)])[i & 1], *(v6 + 16 + 32 * v9 + 16 * ((i >> 1) & 1) + 8 * (i & 1)), *(v6 + 80 + 32 * v9 + 16 * ((i >> 1) & 1) + 8 * (i & 1)));
        }
      }

      result = sub_10000EC0C(&v10, v6);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100010140()
{
  v0 = __stderrp;
  v1 = __progname;
  v2 = __error();
  v3 = sub_10000EEC8(*v2);
  return fprintf(v0, "%s: %s.\n", v1, v3);
}

size_t sub_10001019C(size_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((result & 0x10) == 0)
  {
    v9 = result;
    vfprintf(__stderrp, a2, &a9);
    if ((v9 & 0x100) != 0)
    {
      v10 = __stderrp;
      v11 = " (dummy).\n";
      v12 = 10;
    }

    else
    {
      v10 = __stderrp;
      if ((v9 & 8) != 0)
      {
        v11 = " (syntax only).\n";
        v12 = 16;
      }

      else
      {
        v11 = ".\n";
        v12 = 2;
      }
    }

    return fwrite(v11, v12, 1uLL, v10);
  }

  return result;
}

uint64_t sub_10001022C(uint64_t result, int a2, int a3)
{
  v3 = result;
  if (a3 || (*(result + 1056) & 4) != 0)
  {
    if (a2)
    {
      v4 = *(result + 1056);
      v5 = 104;
      if ((v4 & 0x20) == 0)
      {
        v5 = 45;
      }

      v6 = 114;
      if ((v4 & 0x10) == 0)
      {
        v6 = 45;
      }

      v13 = v6;
      v14 = v5;
      v7 = 105;
      if ((v4 & 8) == 0)
      {
        v7 = 45;
      }

      v8 = 97;
      if ((v4 & 4) == 0)
      {
        v8 = 45;
      }

      v12 = v7;
      v9 = 112;
      if ((v4 & 1) == 0)
      {
        v9 = 45;
      }

      v10 = 99;
      if ((*(result + 1056) & 2) == 0)
      {
        v10 = 45;
      }

      printf("%c%c%c%c%c%c\t%s", v10, v9, v8, v12, v13, v14, (result + 1024));
      if (*v3)
      {
        printf("\t%s", v3);
      }

      return putchar(10);
    }

    else
    {
      v11 = (result + 1024);

      return puts(v11);
    }
  }

  return result;
}

uint64_t sub_100010334(void **a1, int a2, char **a3, uint64_t a4, uint64_t a5)
{
  while (a2)
  {
    --a2;
    v10 = *a3++;
    if (sub_10000C9A8(a1, v10, a5))
    {
      if (*__error())
      {
        warn("cannot decode %s");
      }

      return 0xFFFFFFFFLL;
    }
  }

  result = sub_10000ECA4(a1, a4, a5, sub_10000C9A8);
  if (result)
  {
    warn("cannot load %s");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000103F8(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v30 = xmmword_100027CA0;
  v31 = unk_100027CB0;
  v32 = xmmword_100027CC0;
  v33 = unk_100027CD0;
  v26 = xmmword_100027C60;
  v27 = unk_100027C70;
  v28 = xmmword_100027C80;
  v29 = unk_100027C90;
  v22 = xmmword_100027C20;
  v23 = unk_100027C30;
  v24 = xmmword_100027C40;
  v25 = unk_100027C50;
  *v18 = *"{error}";
  v19 = *&algn_100027BE8[8];
  v20 = xmmword_100027C00;
  v21 = unk_100027C10;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6[19];
  if (v7 > 8)
  {
    v8 = 63;
  }

  else
  {
    v8 = aMadczxY[v6[19]];
  }

  v9 = a1[16];
  if (v9 == 30)
  {
    v10 = 128;
  }

  else
  {
    v10 = 32;
  }

  inet_ntop(v9, a1, v18, 0x100u);
  if (a1[18])
  {
    v11 = 33;
  }

  else
  {
    v11 = 32;
  }

  printf("%c %c%s", v8, v11, v18);
  if (v10 > a1[17])
  {
    printf("/%d", a1[17]);
  }

  if (a2 && v7)
  {
    if (__strlcpy_chk() >= 0x100)
    {
      sub_100020B84();
    }

    inet_ntop(a2[16], a2, v18, 0x100u);
    v12 = 32;
    if (a2[18])
    {
      v12 = 33;
    }

    printf("\t%c%s", v12, v18);
    if (v10 > a2[17])
    {
      printf("/%d");
    }
  }

  else if (a2 && !v7)
  {
    printf("\t nomatch");
  }

  if (a3 && v10 == a1[17])
  {
    __strlcpy_chk();
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    v15[1] = a1[16];
    if (v15[1] == 2)
    {
      *&v15[4] = *a1;
      v13 = 16;
    }

    else
    {
      *&v15[8] = *a1;
      v13 = 28;
    }

    v15[0] = v13;
    if (!getnameinfo(v15, v13, v17, 0x401u, 0, 0, 4))
    {
      printf("\t(%s)", v17);
    }
  }

  return putchar(10);
}

void sub_10001069C()
{
  fprintf(__stderrp, "usage: %s [-AdeghmNnOqRrvz] ", __progname);
  fwrite("[-a anchor] [-D macro=value] [-F modifier]\n", 0x2BuLL, 1uLL, __stderrp);
  fwrite("\t[-f file] [-i interface] [-K host | network] ", 0x2EuLL, 1uLL, __stderrp);
  fwrite("[-k host | network]\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t[-o level] [-p device] [-s modifier] [-w interval]\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("\t[-t table -T command [address ...]] [-x level]\n", 0x30uLL, 1uLL, __stderrp);
  exit(1);
}

uint64_t sub_100010758(int a1, char a2)
{
  if (ioctl(a1, 0x20004401uLL))
  {
    if (*__error() == 17)
    {
      sub_100020BBC();
    }

    sub_100020BA0();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("pf enabled\n", 0xBuLL, 1uLL, __stderrp);
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442AuLL) && *__error() != 17)
  {
    sub_100020BD8();
  }

  return 0;
}

uint64_t sub_10001080C(int a1, char a2, uint64_t a3)
{
  v6 = a3;
  if (ioctl(a1, 0x40084408uLL, &v6))
  {
    sub_100020BF4();
  }

  if ((a2 & 0x10) == 0)
  {
    fprintf(__stderrp, "pf enabled\nToken : %llu\n", v6);
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442AuLL) && *__error() != 17)
  {
    sub_100020BD8();
  }

  return 0;
}

uint64_t sub_1000108B0(int a1, char a2)
{
  if (ioctl(a1, 0x20004402uLL))
  {
    if (*__error() == 2)
    {
      sub_100020C2C();
    }

    sub_100020C10();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("pf disabled\n", 0xCuLL, 1uLL, __stderrp);
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442BuLL) && *__error() != 2)
  {
    sub_100020C48();
  }

  return 0;
}

uint64_t sub_100010964(int a1, char a2, uint64_t a3)
{
  v6 = a3;
  v7 = 0;
  if (ioctl(a1, 0xC0104409uLL, &v6))
  {
    if (*__error() == 2)
    {
      sub_100020C2C();
    }

    if (*__error() == 22)
    {
      sub_100020C80();
    }

    sub_100020C64();
  }

  if ((a2 & 0x10) == 0)
  {
    if (v7)
    {
      fprintf(__stderrp, "disable request successful. %llu more pf enable reference(s) remaining, pf still enabled.\n", v7);
    }

    else
    {
      fwrite("pf disabled\n", 0xCuLL, 1uLL, __stderrp);
    }
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442BuLL) && *__error() != 2)
  {
    sub_100020C48();
  }

  return 0;
}

uint64_t sub_100010A54(int a1, char a2)
{
  if (ioctl(a1, 0x20004416uLL))
  {
    sub_100020C9C();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("pf: statistics cleared\n", 0x17uLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010AB0(int a1, char a2)
{
  if ((a2 & 8) == 0)
  {
    v5 = 0x10000000000;
    memset(v4, 0, sizeof(v4));
    if (ioctl(a1, 0xC028445AuLL, v4))
    {
      sub_100020CB8();
    }

    if ((a2 & 0x10) == 0)
    {
      fwrite("pf: interface flags reset\n", 0x1AuLL, 1uLL, __stderrp);
    }
  }

  return 0;
}

uint64_t sub_100010B60(int a1, char a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = 6;
  if (sub_10000CB30(v5, 0) || sub_10000CB30(v5, 1) || sub_10000CC54(a1, v5, 0xC0104451uLL, 0) || sub_10000CC54(a1, v5, 0xC0104452uLL, 0))
  {
    sub_100020CD4();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("rules cleared\n", 0xEuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010C34(int a1, char a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = 6;
  if (sub_10000CB30(v5, 5) || sub_10000CC54(a1, v5, 0xC0104451uLL, 0) || sub_10000CC54(a1, v5, 0xC0104452uLL, 0))
  {
    sub_100020CF0();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("dummynet cleared\n", 0x11uLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010CF0(int a1, char a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = 6;
  if (sub_10000CB30(v5, 2) || sub_10000CB30(v5, 3) || sub_10000CB30(v5, 4) || sub_10000CC54(a1, v5, 0xC0104451uLL, 0) || sub_10000CC54(a1, v5, 0xC0104452uLL, 0))
  {
    sub_100020D0C();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("nat cleared\n", 0xCuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010DD8(int a1, char a2)
{
  if (!dword_100030D54)
  {
    return 0xFFFFFFFFLL;
  }

  v5[1] = 0;
  v5[2] = 0;
  v5[0] = 6;
  if (sub_10000CB30(v5, 6) || sub_10000CC54(a1, v5, 0xC0104451uLL, 0) || sub_10000CC54(a1, v5, 0xC0104452uLL, 0))
  {
    sub_100020D28();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("altq cleared\n", 0xDuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010EB0(int a1, char a2)
{
  if (ioctl(a1, 0x20004455uLL))
  {
    sub_100020D44();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("source tracking entries cleared\n", 0x20uLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010F0C(int a1, const char *a2, char a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (a2 && __strlcpy_chk() >= 0x10)
  {
    errx(1, "invalid interface: %s", a2);
  }

  if (ioctl(a1, 0xC0D84412uLL, v7))
  {
    sub_100020D60();
  }

  if ((a3 & 0x10) == 0)
  {
    fprintf(__stderrp, "%d states cleared\n", LOBYTE(v7[0]));
  }

  return 0;
}

void sub_100011010(char *a1, void *a2)
{
  __errstrp = 0;
  v4 = strchr(a1, 47);
  if (v4)
  {
    v13 = 0;
    *v4 = 0;
    v5 = v4 + 1;
    v6 = strtonum(v4 + 1, 0, 128, &__errstrp);
    if (__errstrp)
    {
      errx(1, "prefix is %s: %s", __errstrp, v5);
    }

    v7 = v6;
    memset(&v14, 0, sizeof(v14));
    v14.ai_flags = 4;
    v8 = getaddrinfo(a1, 0, &v14, &v13);
    if (v8)
    {
      sub_100020D7C(v8);
    }

    v9 = v13;
    ai_family = v13->ai_family;
    if (ai_family == 2 && v7 >= 33)
    {
      sub_100020DC0();
    }

    if (ai_family == 30 && v7 >= 129)
    {
      sub_100020DA4();
    }

    if (ai_family == 30)
    {
      v11 = (v7 >> 3);
      v12 = v7 & 7;
      *a2 = 0;
      a2[1] = 0;
      if (v11 >= 1)
      {
        memset(a2, 255, v11);
      }

      if (v12)
      {
        *(a2 + v11) = 0xFF00u >> v12;
      }
    }

    else if (ai_family == 2)
    {
      *a2 = bswap32(0xFFFFFFFFFFLL << (32 - v7));
    }

    freeaddrinfo(v9);
  }
}

uint64_t sub_10001115C(int a1, uint64_t a2, char a3)
{
  v30 = 0;
  v31 = 0;
  memset(v20, 0, sizeof(v20));
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v21 = -1;
  v22 = 0xFFFFFFFFFFFFFFFFLL;
  *&v29.sa_len = -1;
  *&v29.sa_data[6] = -1;
  sub_100011010(qword_100030D58, &v21);
  v5 = getaddrinfo(qword_100030D58, 0, 0, &v30);
  if (v5)
  {
    sub_100020D7C(v5);
  }

  v6 = v30;
  if (v30)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      ai_addr = v6->ai_addr;
      if (ai_addr)
      {
        if (*&v29.sa_len != *&ai_addr->sa_len || *&v29.sa_data[6] != *&ai_addr->sa_data[6])
        {
          v29 = *ai_addr;
          ai_family = v6->ai_family;
          v20[0] = ai_family;
          if (ai_family == 30)
          {
            *&v20[8] = *&ai_addr->sa_data[6];
          }

          else
          {
            if (ai_family != 2)
            {
              sub_100020DF8(ai_family);
            }

            *&v20[8] = *&ai_addr->sa_data[2];
          }

          ++v8;
          if (dword_100030D68 < 2)
          {
            if (ioctl(a1, 0xC088445BuLL, v20))
            {
              sub_100020DDC();
            }

            v9 += v20[0];
            v20[0] = v30->ai_family;
          }

          else
          {
            *(&v24[1] + 1) = -1;
            *&v25 = -1;
            *&v28.sa_len = -1;
            *&v28.sa_data[6] = -1;
            sub_100011010(qword_100030D60, &v24[1] + 1);
            v13 = getaddrinfo(qword_100030D60, 0, 0, &v31);
            if (v13)
            {
              sub_100020D7C(v13);
            }

            v14 = v31;
            if (v31)
            {
              v7 = 0;
              do
              {
                v15 = v14->ai_addr;
                if (v15 && v14->ai_family == v20[0] && (*&v28.sa_len != *&v15->sa_len || *&v28.sa_data[6] != *&v15->sa_data[6]))
                {
                  v28 = *v15;
                  if (v20[0] == 30)
                  {
                    *(v24 + 8) = *&v15->sa_data[6];
                  }

                  else
                  {
                    if (v20[0] != 2)
                    {
                      errx(1, "Unknown address family %d", v20[0]);
                    }

                    DWORD2(v24[0]) = *&v15->sa_data[2];
                  }

                  if (ioctl(a1, 0xC088445BuLL, v20))
                  {
                    sub_100020DDC();
                  }

                  ++v7;
                  v9 += v20[0];
                  v20[0] = v14->ai_family;
                }

                v14 = v14->ai_next;
              }

              while (v14);
              v17 = v31;
            }

            else
            {
              v17 = 0;
              v7 = 0;
            }

            freeaddrinfo(v17);
          }
        }
      }

      v6 = v6->ai_next;
    }

    while (v6);
    v18 = v30;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  freeaddrinfo(v18);
  if ((a3 & 0x10) == 0)
  {
    fprintf(__stderrp, "killed %d src nodes from %d sources and %d destinations\n", v9, v8, v7);
  }

  return 0;
}

uint64_t sub_10001143C(int a1, uint64_t a2, char a3)
{
  v22 = 0;
  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v25 = -1;
  v26 = 0xFFFFFFFFFFFFFFFFLL;
  *&v21.sa_len = -1;
  *&v21.sa_data[6] = -1;
  if (a2 && __strlcpy_chk() >= 0x10)
  {
    errx(1, "invalid interface: %s");
  }

  sub_100011010(qword_100030D70, &v25);
  v5 = getaddrinfo(qword_100030D70, 0, 0, &v22);
  if (v5)
  {
    sub_100020D7C(v5);
  }

  v6 = v22;
  if (v22)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      ai_addr = v6->ai_addr;
      if (ai_addr)
      {
        if (*&v21.sa_len != *&ai_addr->sa_len || *&v21.sa_data[6] != *&ai_addr->sa_data[6])
        {
          v21 = *ai_addr;
          ai_family = v6->ai_family;
          v24[0] = ai_family;
          if (ai_family == 30)
          {
            *&v24[8] = *&ai_addr->sa_data[6];
          }

          else
          {
            if (ai_family != 2)
            {
              sub_100020DF8(ai_family);
            }

            *&v24[8] = *&ai_addr->sa_data[2];
          }

          ++v8;
          if (dword_100030D80 < 2)
          {
            if (ioctl(a1, 0xC0D84429uLL, v24))
            {
              sub_100020E20();
            }

            v9 += v24[0];
            v24[0] = v22->ai_family;
          }

          else
          {
            *(&v28[1] + 1) = -1;
            *&v29 = -1;
            *&v20.sa_len = -1;
            *&v20.sa_data[6] = -1;
            sub_100011010(qword_100030D78, &v28[1] + 1);
            v13 = getaddrinfo(qword_100030D78, 0, 0, &v23);
            if (v13)
            {
              sub_100020D7C(v13);
            }

            v14 = v23;
            if (v23)
            {
              v7 = 0;
              do
              {
                v15 = v14->ai_addr;
                if (v15 && v14->ai_family == v24[0] && (*&v20.sa_len != *&v15->sa_len || *&v20.sa_data[6] != *&v15->sa_data[6]))
                {
                  v20 = *v15;
                  if (v24[0] == 30)
                  {
                    *(v28 + 8) = *&v15->sa_data[6];
                  }

                  else
                  {
                    if (v24[0] != 2)
                    {
                      errx(1, "Unknown address family %d");
                    }

                    DWORD2(v28[0]) = *&v15->sa_data[2];
                  }

                  if (ioctl(a1, 0xC0D84429uLL, v24))
                  {
                    sub_100020E20();
                  }

                  ++v7;
                  v9 += v24[0];
                  v24[0] = v14->ai_family;
                }

                v14 = v14->ai_next;
              }

              while (v14);
              v17 = v23;
            }

            else
            {
              v17 = 0;
              v7 = 0;
            }

            freeaddrinfo(v17);
          }
        }
      }

      v6 = v6->ai_next;
    }

    while (v6);
    v18 = v22;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  freeaddrinfo(v18);
  if ((a3 & 0x10) == 0)
  {
    fprintf(__stderrp, "killed %d states from %d sources and %d destinations\n", v9, v8, v7);
  }

  return 0;
}

uint64_t sub_100011758(int a1, void *a2, int a3, int a4, char a5, const void *a6)
{
  bzero(v19, 0x470uLL);
  memcpy(v24, a6, sizeof(v24));
  v23 = a5;
  v22 = a3;
  v20 = a4;
  if (ioctl(a1, 0xC4704435uLL, v19))
  {
    v14 = "DIOCGETADDRS";
LABEL_10:
    warn(v14);
    return 0xFFFFFFFFLL;
  }

  v12 = v21;
  *a2 = 0;
  a2[1] = a2;
  if (v12)
  {
    v13 = 0;
    v14 = "DIOCGETADDR";
    while (1)
    {
      v21 = v13;
      if (ioctl(a1, 0xC4704436uLL, v19))
      {
        break;
      }

      v15 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
      if (!v15)
      {
        sub_100020928();
      }

      v16 = v15;
      memmove(v15, &v25, 0x58uLL);
      v16[6] = 0;
      v17 = a2[1];
      v16[7] = v17;
      *v17 = v16;
      a2[1] = v16 + 6;
      if (v12 == ++v13)
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t *sub_1000118D8(uint64_t *result, uint64_t a2)
{
  for (i = *result; *result; i = *result)
  {
    v3 = (i + 48);
    v4 = *(i + 48);
    v5 = *(i + 56);
    v6 = (v4 + 56);
    if (!v4)
    {
      v6 = result + 1;
    }

    *v6 = v5;
    *v5 = v4;
    *v3 = 0;
    v7 = *(a2 + 8);
    *(i + 56) = v7;
    *v7 = i;
    *(a2 + 8) = v3;
  }

  return result;
}

void *sub_100011924(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = result[6];
      v4 = result[7];
      v5 = (v3 + 56);
      if (!v3)
      {
        v5 = a1 + 1;
      }

      *v5 = v4;
      *v4 = v3;
      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

uint64_t sub_100011974(uint64_t result, __int16 a2)
{
  v3 = result;
  if ((a2 & 0x200) != 0)
  {
    printf("  [ Skip steps: ");
    v4 = 0;
    v5 = v3 + 128;
    do
    {
      if (*(v5 + v4 * 8) != *(v3 + 948) + 1)
      {
        printf("%s=", off_10002CD90[v4]);
        if (*(v5 + v4 * 8) == -1)
        {
          printf("end ");
        }

        else
        {
          printf("%u ");
        }
      }

      ++v4;
    }

    while (v4 != 8);
    puts("]");
    result = printf("  [ queue: qname=%s qid=%u pqname=%s pqid=%u ]\n", (v3 + 272), *(v3 + 936), (v3 + 336), *(v3 + 940));
  }

  if ((a2 & 4) != 0)
  {
    result = printf("  [ Evaluations: %-8llu  Packets: %-8llu  Bytes: %-10llu  States: %-6u]\n", *(v3 + 648), *(v3 + 664) + *(v3 + 656), *(v3 + 680) + *(v3 + 672), *(v3 + 904));
    if ((a2 & 0x200) == 0)
    {
      return printf("  [ Inserted: uid %u pid %u ]\n", *(v3 + 956), *(v3 + 960));
    }
  }

  return result;
}

uint64_t sub_100011AC4(char *a1)
{
  if (!dword_1000309F4)
  {
    putchar(10);
  }

  dword_1000309F4 = 0;

  return puts(a1);
}

uint64_t sub_100011B10(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v10 = strlen(a2);
  v11 = v10;
  v12 = 1024 - v10;
  if (*a2)
  {
    snprintf(&a2[v10], v12, "/%s");
  }

  else
  {
    snprintf(&a2[v10], v12, "%s");
  }

  bzero(&v30, 0xC20uLL);
  memcpy(v33, a2, sizeof(v33));
  if ((a3 & 0x400) != 0)
  {
    if (ioctl(a1, 0xCC204406uLL, &v30))
    {
      goto LABEL_65;
    }

    v43 = 2;
    if (ioctl(a1, 0xCC204406uLL, &v30))
    {
      goto LABEL_65;
    }

    if (a4)
    {
      if (a4 != 1 || !dword_100030D50)
      {
        goto LABEL_15;
      }

      v13 = "LABEL COUNTERS:";
    }

    else
    {
      v13 = "FILTER RULES:";
    }

    sub_100011AC4(v13);
    goto LABEL_15;
  }

  v43 = 2;
  if (ioctl(a1, 0xCC204406uLL, &v30))
  {
    goto LABEL_65;
  }

LABEL_15:
  v27 = v11;
  v14 = v32;
  if ((a3 & 0x20) != 0)
  {
    v30 = 1;
  }

  if (v32)
  {
    v15 = 0;
    while (1)
    {
      v32 = v15;
      if (ioctl(a1, 0xCC204407uLL, &v30))
      {
        break;
      }

      if (sub_100011758(a1, v37, v15, v31, 2, a2))
      {
LABEL_62:
        result = 0xFFFFFFFFLL;
        goto LABEL_63;
      }

      if (a4)
      {
        if (a4 == 1 && v36[0])
        {
          printf("%s ", v36);
          printf("%llu %llu %llu %llu %llu %llu %llu\n", v38, v40 + v39, v42 + v41, v39, v41, v40, v42);
        }
      }

      else
      {
        if ((a3 & 0x400) != 0 && v36[0])
        {
          dword_100030D50 = 1;
        }

        sub_10000AA50(v35, v34, a3 & 0x280);
        putchar(10);
        sub_100011974(v35, a3);
      }

      sub_100011924(v37);
      if (v14 == ++v15)
      {
        goto LABEL_30;
      }
    }

LABEL_66:
    v11 = v27;
    warn("DIOCGETRULE");
    goto LABEL_67;
  }

LABEL_30:
  v43 = 0;
  if (ioctl(a1, 0xCC204406uLL, &v30))
  {
LABEL_65:
    warn("DIOCGETRULES");
LABEL_67:
    result = 0xFFFFFFFFLL;
    goto LABEL_64;
  }

  v16 = v32;
  if (v32)
  {
    v17 = 0;
    v18 = (a3 >> 2) & 1;
    v19 = v34;
    if (a6 < 1)
    {
      LOBYTE(v18) = 1;
    }

    v28 = v18;
    v26 = v32;
    do
    {
      v32 = v17;
      if (ioctl(a1, 0xCC204407uLL, &v30))
      {
        goto LABEL_66;
      }

      if (sub_100011758(a1, v37, v17, v31, 0, a2))
      {
        goto LABEL_62;
      }

      if (a4)
      {
        if (a4 == 1 && v36[0])
        {
          printf("%s ", v36);
          printf("%llu %llu %llu %llu %llu %llu %llu\n", v38, v40 + v39, v42 + v41, v39, v41, v40, v42);
        }
      }

      else
      {
        v20 = v19;
        if ((a3 & 0x400) != 0 && v36[0])
        {
          dword_100030D50 = 1;
        }

        if ((v28 & 1) == 0)
        {
          v21 = a6;
          do
          {
            printf("  ");
            --v21;
          }

          while (v21);
        }

        v19 = v20;
        if (v34[0])
        {
          v22 = strrchr(v20, 95);
          if (v22)
          {
            if (v22 == v20 || (a3 & 0x4000) != 0 || *(v22 - 1) == 47)
            {
LABEL_54:
              v23 = strrchr(v20, 47);
              if (v23)
              {
                v19 = v23 + 1;
              }

              sub_10000AA50(v35, v19, a3 & 0x280);
              puts(" {");
              sub_100011974(v35, a3);
              sub_100011B10(a1, a2, a3, 0, v19, (a6 + 1));
              if ((v28 & 1) == 0)
              {
                v24 = a6;
                do
                {
                  printf("  ");
                  --v24;
                }

                while (v24);
              }

              puts("}");
              v19 = v20;
              v16 = v26;
              goto LABEL_60;
            }
          }

          else if ((a3 & 0x4000) != 0)
          {
            goto LABEL_54;
          }
        }

        sub_10000AA50(v35, v20, a3 & 0x280);
        putchar(10);
        sub_100011974(v35, a3);
      }

LABEL_60:
      sub_100011924(v37);
      ++v17;
    }

    while (v17 != v16);
  }

  result = 0;
LABEL_63:
  v11 = v27;
LABEL_64:
  a2[v11] = 0;
  return result;
}

uint64_t sub_100012040(int a1, __int16 a2, const void *a3)
{
  v6 = a2 & 0x400;
  bzero(v14, 0xC20uLL);
  memcpy(v17, a3, sizeof(v17));
  v7 = 0;
  while (1)
  {
    v8 = dword_100027D80[v7];
    v21 = v8;
    if (ioctl(a1, 0xCC204406uLL, v14))
    {
      warn("DIOCGETRULES");
      return 0xFFFFFFFFLL;
    }

    v9 = v16;
    if (v16)
    {
      break;
    }

LABEL_11:
    if (++v7 == 3)
    {
      return 0;
    }
  }

  v10 = v6;
  v11 = 0;
  v12 = v10 == 0;
  while (1)
  {
    v16 = v11;
    if (ioctl(a1, 0xCC204407uLL, v14))
    {
      break;
    }

    if (sub_100011758(a1, v20, v11, v15, v8, a3))
    {
      return 0xFFFFFFFFLL;
    }

    if (!v12)
    {
      sub_100011AC4("TRANSLATION RULES:");
    }

    sub_10000AA50(v19, v18, a2 & 0x80);
    putchar(10);
    sub_100011974(v19, a2);
    sub_100011924(v20);
    ++v11;
    v12 = 1;
    if (v9 == v11)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  warn("DIOCGETRULE");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000121EC(int a1, __int16 a2, const void *a3)
{
  bzero(v10, 0xC20uLL);
  memcpy(v13, a3, sizeof(v13));
  v17 = 11;
  if (ioctl(a1, 0xCC204406uLL, v10))
  {
    warn("DIOCGETRULES");
  }

  else
  {
    v6 = v12;
    if (!v12)
    {
      return 0;
    }

    v7 = 0;
    for (i = (a2 & 0x400) == 0; ; i = 1)
    {
      v12 = v7;
      if (ioctl(a1, 0xCC204407uLL, v10))
      {
        break;
      }

      if (sub_100011758(a1, v16, v7, v11, 11, a3))
      {
        return 0xFFFFFFFFLL;
      }

      if (!i)
      {
        sub_100011AC4("DUMMYNET RULES:");
      }

      sub_10000AA50(v15, v14, a2 & 0x80);
      putchar(10);
      sub_100011974(v15, a2);
      sub_100011924(v16);
      if (v6 == ++v7)
      {
        return 0;
      }
    }

    warn("DIOCGETRULE");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100012374(int a1, __int16 a2)
{
  v4 = 0;
  v5 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    LODWORD(v13) = v5;
    if (v5)
    {
      v6 = malloc_type_realloc(v4, v5, 0x696471CEuLL);
      if (!v6)
      {
        sub_100020E3C();
      }

      v4 = v6;
      v14 = v6;
    }

    if (ioctl(a1, 0xC0104454uLL, &v13) < 0)
    {
      warn("DIOCGETSRCNODES");
      v8 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }

    v7 = v13;
    if (v13 + 16 < v5)
    {
      break;
    }

    v8 = 0;
    if (!v13 || !(v13 | v5))
    {
      goto LABEL_20;
    }

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v13;
    }

    v5 = 2 * v9;
  }

  v10 = v14;
  if ((a2 & 0x400) != 0 && v13 >= 1)
  {
    sub_100011AC4("SOURCE TRACKING NODES:");
    v7 = v13;
  }

  if (v7 >= 1)
  {
    v11 = 0;
    do
    {
      sub_10000A828(v10, a2);
      v10 += 152;
      v11 += 152;
    }

    while (v11 < v13);
  }

  v8 = 0;
LABEL_20:
  free(v4);
  return v8;
}

uint64_t sub_1000124A4(int a1, const char *a2, __int16 a3)
{
  v3 = a3;
  v6 = 0;
  v7 = 0;
  v8 = a3 & 0x400;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    LODWORD(v16) = v7;
    if (v7)
    {
      v9 = malloc_type_realloc(v6, v7, 0x45CF0466uLL);
      if (!v9)
      {
        sub_100020E3C();
      }

      v6 = v9;
      v17 = v9;
    }

    if (ioctl(a1, 0xC0104419uLL, &v16) < 0)
    {
      warn("DIOCGETSTATES");
      v11 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    v10 = v16;
    if (v16 + 16 < v7)
    {
      break;
    }

    v11 = 0;
    if (!v16 || !(v16 | v7))
    {
      goto LABEL_22;
    }

    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v16;
    }

    v7 = 2 * v12;
  }

  if (v16 >= 1)
  {
    v13 = 0;
    v14 = v17;
    do
    {
      if (!a2 || !strcmp(v14 + 8, a2))
      {
        if (v8)
        {
          sub_100011AC4("STATES:");
        }

        sub_100000F0C(v14, v3);
        v8 = 0;
        v10 = v16;
      }

      v13 += 297;
      v14 += 297;
    }

    while (v13 < v10);
  }

  v11 = 0;
LABEL_22:
  free(v6);
  return v11;
}

uint64_t sub_1000126C4(int a1)
{
  v7 = 0;
  v8 = 0;
  if (ioctl(a1, 0xC0104405uLL, &v7) < 0)
  {
    if (*__error() != 2)
    {
      warn("DIOCGETSTARTERS");
      return 0xFFFFFFFFLL;
    }

    puts("No pf starter references held");
  }

  else
  {
    v2 = malloc_type_malloc(2 * v7, 0xC34C9F46uLL);
    if (!v2)
    {
      sub_1000207D0();
    }

    v3 = v2;
    v8 = v2;
    if (ioctl(a1, 0xC0104405uLL, &v7) < 0)
    {
      free(v3);
      if (*__error() == 2)
      {
        sub_100020E74();
      }

      sub_100020E58();
    }

    v4 = v8;
    sub_100011AC4("TOKENS:");
    printf("%-8s %-28s %-24s %-s\n", "PID", "Process Name", "TOKEN", "TIMESTAMP");
    if (v7 >= 1)
    {
      v5 = 0;
      do
      {
        sub_1000125FC(v4);
        v5 += 84;
        v4 += 84;
      }

      while (v5 < v7);
    }
  }

  return 0;
}

uint64_t sub_100012810(int a1, __int16 a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (ioctl(a1, 0xC1B84415uLL, v4))
  {
    warn("DIOCGETSTATUS");
    return 0xFFFFFFFFLL;
  }

  else
  {
    if ((a2 & 0x400) != 0)
    {
      sub_100011AC4("INFO:");
    }

    sub_10000A2B4(v4, a2);
    return 0;
  }
}

uint64_t sub_1000128F0(int a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    sub_100011AC4("TIMEOUTS:");
  }

  v7 = 0;
  v3 = "tcp.first";
  if ("tcp.first")
  {
    v4 = &off_10002C4A8;
    do
    {
      v5 = *(v4 - 2);
      LODWORD(v7) = v5;
      if (ioctl(a1, 0xC008441EuLL, &v7))
      {
        sub_100020E90();
      }

      printf("%-20s %10d", v3, HIDWORD(v7));
      if ((v5 & 0xFFFFFFFE) == 0x16)
      {
        printf(" states");
      }

      else
      {
        putchar(115);
      }

      putchar(10);
      v3 = *v4;
      v4 += 2;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_1000129DC(int a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    sub_100011AC4("LIMITS:");
  }

  v3 = "states";
  v8 = 0;
  v4 = &off_10002CDE0;
  v5 = 6;
  do
  {
    LODWORD(v8) = *(v4 - 2);
    if (ioctl(a1, 0xC0084427uLL, &v8))
    {
      sub_100020EAC();
    }

    printf("%-13s ", v3);
    if (HIDWORD(v8) == -1)
    {
      puts("unlimited");
    }

    else
    {
      printf("hard limit %8u\n", HIDWORD(v8));
    }

    v6 = *v4;
    v4 += 2;
    v3 = v6;
    --v5;
  }

  while (v5);
  return 0;
}

uint64_t sub_100012AC4(uint64_t a1, uint64_t *a2, char a3)
{
  if ((*(a1 + 4) & 8) == 0 && ioctl(*a1, 0xC4704433uLL, a1 + 544))
  {
    sub_100020EC8();
  }

  *(a1 + 562) = a3;
  for (i = *a2; i; i = *(i + 48))
  {
    v7 = *(i + 16);
    *(a1 + 1592) = *i;
    *(a1 + 1608) = v7;
    v8 = *(i + 32);
    v9 = *(i + 48);
    v10 = *(i + 64);
    *(a1 + 1672) = *(i + 80);
    *(a1 + 1640) = v9;
    *(a1 + 1656) = v10;
    *(a1 + 1624) = v8;
    if ((*(a1 + 4) & 8) == 0 && ioctl(*a1, 0xC4704434uLL, a1 + 544))
    {
      sub_100020EE4();
    }
  }

  return 0;
}

uint64_t sub_100012B94(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_100002738(*(a2 + 1004));
  if (v6 == 6)
  {
    sub_100020F38((a2 + 1004));
  }

  v7 = *(a1 + 1704);
  if (*a3 && !*(a2 + 776))
  {
    v8 = malloc_type_calloc(1uLL, 0x720uLL, 0x10A0040674384F5uLL);
    *(a2 + 776) = v8;
    if (!v8)
    {
      sub_100020F1C();
    }

    sub_100002758(v8 + 144);
    *(*(a2 + 776) + 1728) = *(a2 + 776);
    if (__strlcpy_chk() >= 0x400)
    {
      sub_100020F00();
    }

    v9 = strrchr(a3, 47);
    if (v9 && !*v9)
    {
      err(1, "pfctl_add_rule: bad anchor name %s", a3);
    }

    if (__strlcpy_chk() >= 0x40)
    {
      sub_100020F00();
    }
  }

  v10 = malloc_type_calloc(1uLL, 0x410uLL, 0x10A2040FAB20DA7uLL);
  if (!v10)
  {
    sub_100020928();
  }

  v11 = v10;
  memmove(v10, a2, 0x410uLL);
  v11[72] = 0;
  v11[73] = v11 + 72;
  for (i = *(a2 + 576); i; i = *(a2 + 576))
  {
    v13 = (i + 48);
    v14 = *(i + 48);
    v15 = *(i + 56);
    v16 = (v14 + 56);
    if (!v14)
    {
      v16 = (a2 + 584);
    }

    *v16 = v15;
    *v15 = v14;
    *v13 = 0;
    v17 = v11[73];
    *(i + 56) = v17;
    *v17 = i;
    v11[73] = v13;
  }

  v18 = v7 + 96 * v6;
  v11[70] = 0;
  v19 = *(*(v18 + 1184) + 8);
  v11[71] = v19;
  *v19 = v11;
  *(*(v18 + 1184) + 8) = v11 + 70;
  return 0;
}

uint64_t sub_100012D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1696);
  v6 = *(v5 + 4);
  v7 = *(a1 + 12);
  if ((v7 & 4) != 0)
  {
    if (sub_10000CB30(v5, 2) || sub_10000CB30(*(a1 + 1696), 3) || sub_10000CB30(*(a1 + 1696), 4))
    {
      return 1;
    }

    v7 = *(a1 + 12);
  }

  if (*(a1 + 32) == a3 && dword_100030D54 != 0 && (v7 & 0x10) != 0)
  {
    if (sub_10000CB30(*(a1 + 1696), 6))
    {
      return 2;
    }

    v7 = *(a1 + 12);
  }

  v11 = *(a1 + 1696);
  if ((v7 & 2) == 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (sub_10000CB30(*(a1 + 1696), 0) || sub_10000CB30(*(a1 + 1696), 1))
  {
    return 3;
  }

  v7 = *(a1 + 12);
  v11 = *(a1 + 1696);
  if ((v7 & 0x40) != 0)
  {
LABEL_18:
    if (!sub_10000CB30(v11, 5))
    {
      v7 = *(a1 + 12);
      v11 = *(a1 + 1696);
      goto LABEL_25;
    }

    return 3;
  }

LABEL_25:
  if ((v7 & 0x20) != 0)
  {
    if (sub_10000CB30(v11, 7))
    {
      return 4;
    }

    v11 = *(a1 + 1696);
  }

  if (sub_10000CC54(*a1, v11, 0xC0104451uLL, v6))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012ED0(uint64_t a1, const char *a2, void *a3, uint64_t a4, int a5)
{
  v10 = strlen(a2);
  v11 = v10;
  *(a1 + 1704) = a3[72];
  v12 = 1024 - v10;
  if (*a2)
  {
    snprintf(&a2[v10], v12, "/%s");
  }

  else
  {
    snprintf(&a2[v10], v12, "%s");
  }

  if (!a5)
  {
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  v13 = *(a1 + 4);
  if (!*a3[12 * a4 + 4])
  {
    if ((v13 & 4) != 0)
    {
      putchar(10);
    }

    goto LABEL_14;
  }

  if ((v13 & 4) != 0)
  {
    puts(" {");
    v13 = *(a1 + 4);
  }

  if ((v13 & 8) == 0)
  {
    v14 = sub_100012D5C(a1, a2, a3[72]);
    if (v14)
    {
      v15 = v14;
      printf("pfctl_load_rulesets: pfctl_ruleset_trans %d\n", v14);
      goto LABEL_35;
    }
  }

  v16 = 0;
LABEL_15:
  if (a4 == 1 && *(a1 + 8))
  {
    sub_100005544(a1, a3);
  }

  v17 = &a3[12 * a4];
  v20 = v17[4];
  v19 = (v17 + 4);
  for (i = v20; ; i = *v19)
  {
    v21 = *i;
    if (!*i)
    {
      break;
    }

    v22 = v21[70];
    v23 = v21[71];
    v24 = i + 1;
    if (v22)
    {
      v24 = (v22 + 568);
    }

    *v24 = v23;
    *v23 = v22;
    sub_1000130E4(a1, a2, v21, a5);
    v25 = v21[97];
    if (v25)
    {
      v26 = sub_100012ED0(a1, a2, v25 + 1152, a4, (a5 + 1));
      if (v26)
      {
        v15 = v26;
        goto LABEL_35;
      }
    }

    else if ((*(a1 + 4) & 4) != 0)
    {
      putchar(10);
    }

    free(v21);
  }

  if ((v16 & 1) == 0 && (*(a1 + 4) & 4) != 0)
  {
    if (a5 >= 2)
    {
      v27 = a5 - 1;
      do
      {
        printf("  ");
        --v27;
      }

      while (v27);
    }

    puts("}");
  }

  v15 = 0;
LABEL_35:
  a2[v11] = 0;
  return v15;
}

uint64_t sub_1000130E4(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = sub_100002738(*(a3 + 1004));
  v9 = strlen(a2);
  bzero(v18, 0xC20uLL);
  if ((*(a1 + 4) & 8) == 0)
  {
    v19 = sub_10000CBDC(*(a1 + 1696), v8, a2);
  }

  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020F60();
  }

  v10 = *(a3 + 776);
  if (v10 && *(v10 + 1756))
  {
    v11 = 1024 - v9;
    if (*a2)
    {
      snprintf(&a2[v9], v11, "/%s");
    }

    else
    {
      snprintf(&a2[v9], v11, "%s");
    }
  }

  v12 = *(a1 + 4);
  if ((v12 & 8) == 0)
  {
    if (*(a3 + 1004) == 13)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a3 + 1013);
    }

    sub_100012AC4(a1, (a3 + 576), v13);
    v20 = *(a1 + 548);
    memcpy(v21, a3, sizeof(v21));
    if (*(a3 + 776) && __strlcpy_chk() >= 0x400)
    {
      sub_100020F60();
    }

    if (ioctl(*a1, 0xCC204404uLL, v18))
    {
      sub_100020F7C();
    }

    v12 = *(a1 + 4);
  }

  if ((v12 & 4) != 0)
  {
    v14 = v12 & 0x80;
    if ((v12 & 0x80) == 0 && a4 >= 1)
    {
      do
      {
        printf("  ");
        --a4;
      }

      while (a4);
      v14 = *(a1 + 4) & 0x80;
    }

    v15 = *(a3 + 776);
    if (v15)
    {
      v16 = (v15 + 64);
    }

    else
    {
      v16 = "";
    }

    sub_10000AA50(a3, v16, v14);
  }

  a2[v9] = 0;
  sub_100011924((a3 + 576));
  return 0;
}

uint64_t sub_100013318(uint64_t a1, const void *a2)
{
  if (dword_100030D54 && (dword_100030D84 & 0x10) != 0)
  {
    memcpy((*(a1 + 1680) + 16), a2, 0x148uLL);
    if ((*(a1 + 4) & 8) == 0 && ioctl(*a1, 0xC158442DuLL, *(a1 + 1680)))
    {
      if (*__error() == 6)
      {
        sub_100020FB4();
      }

      if (*__error() == 19)
      {
        errx(1, "%s: driver does not support altq", a2);
      }

      sub_100020F98();
    }

    sub_100002E3C((*(a1 + 1680) + 16));
  }

  return 0;
}

uint64_t sub_1000133DC(uint64_t a1, const char *a2, int a3, int a4, const char *a5, uint64_t a6)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  qword_100030D88 = 0;
  bzero(&unk_100030D90, 0x720uLL);
  sub_100002758(qword_100031210);
  qword_100031450 = &unk_100030D90;
  if (a6)
  {
    v12 = *(a6 + 4);
    v13 = a6;
  }

  else
  {
    v12 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 6;
    v13 = &v22;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  bzero(v26, 0x778uLL);
  bzero(v25, 0x428uLL);
  v14 = malloc_type_calloc(1uLL, 0x400uLL, 0x1969BA41uLL);
  if (!v14)
  {
    goto LABEL_50;
  }

  v15 = v14;
  if (__strlcpy_chk() >= 0x400)
  {
    warnx("pfctl_rules: strlcpy");
    goto LABEL_55;
  }

  v26[0] = a1;
  v26[1] = a3;
  v26[2] = a4;
  v27 = dword_100030D84;
  v16 = malloc_type_calloc(1uLL, 0x720uLL, 0x10A0040674384F5uLL);
  v32 = v16;
  if (!v16)
  {
LABEL_50:
    warnx("pfctl_rules: calloc");
    goto LABEL_55;
  }

  v17 = v16;
  sub_100002758(v16 + 144);
  v17[216] = v32;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020F00();
  }

  if (__strlcpy_chk() >= 0x40)
  {
    sub_100020F00();
  }

  v29 = v32;
  v28 = 0;
  if (*a5)
  {
    v27 &= ~0x10u;
  }

  v30 = v33;
  v31 = v13;
  sub_100013884(v26);
  if ((a3 & 8) != 0)
  {
    if ((sub_10002054C(a2, v26) & 0x80000000) != 0)
    {
LABEL_47:
      if (a6)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_56:
      if ((a3 & 8) != 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (sub_100012D5C(v26, a5, v32))
    {
      warnx("pfctl_rules");
      goto LABEL_55;
    }

    v18 = v27;
    if (dword_100030D54 && (v27 & 0x10) != 0)
    {
      v33[1] = sub_10000CBDC(v13, 6, a5);
      v18 = v27;
    }

    if ((v18 & 0x20) != 0)
    {
      v19 = sub_10000CBDC(v13, 7, a5);
      *(v29 + 1736) = v19;
    }

    if ((sub_10002054C(a2, v26) & 0x80000000) != 0)
    {
      warnx("Syntax error in config file: pf rules not loaded");
      goto LABEL_55;
    }
  }

  v20 = v27;
  if ((v27 & 2) != 0)
  {
    if (sub_100012ED0(v26, v15, v17 + 144, 0, 0))
    {
      goto LABEL_46;
    }

    v20 = v27;
  }

  if ((v20 & 4) != 0)
  {
    if (sub_100012ED0(v26, v15, v17 + 144, 2, 0) || sub_100012ED0(v26, v15, v17 + 144, 4, 0) || sub_100012ED0(v26, v15, v17 + 144, 3, 0))
    {
      goto LABEL_46;
    }

    v20 = v27;
    if ((v27 & 2) != 0)
    {
LABEL_26:
      if (!sub_100012ED0(v26, v15, v17 + 144, 1, 0))
      {
        v20 = v27;
        goto LABEL_28;
      }

LABEL_46:
      if ((a3 & 8) != 0)
      {
        goto LABEL_47;
      }

      warnx("Unable to load rules into kernel");
LABEL_55:
      if (a6)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_56;
    }
  }

  else if ((v20 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  if ((v20 & 0x40) != 0 && sub_100012ED0(v26, v15, v17 + 144, 5, 0))
  {
    goto LABEL_46;
  }

  if (dword_100030D54 && (v27 & 0x10) != 0 && sub_100003E54())
  {
    warnx("errors in altq config");
    goto LABEL_55;
  }

  if (!*a5 && sub_10002072C(a1, v26, v13) == -1)
  {
    warnx("load anchors");
    goto LABEL_55;
  }

  result = 0;
  if ((a3 & 8) == 0 && !a6)
  {
    if (*a5 || !sub_100013990(v26))
    {
      result = sub_10000CC54(a1, v13, 0xC0104452uLL, v12);
      if (!result)
      {
        return result;
      }

      warn("DIOCXCOMMIT");
    }

LABEL_41:
    if (sub_10000CC54(a1, v13, 0xC0104453uLL, v12))
    {
      sub_100020FD0();
    }

LABEL_42:
    exit(1);
  }

  return result;
}

uint64_t sub_100013884(uint64_t a1)
{
  v4 = 0;
  *(a1 + 1728) = xmmword_100027CF0;
  *(a1 + 1744) = xmmword_100027D00;
  *(a1 + 1760) = xmmword_100027D10;
  *(a1 + 1776) = xmmword_100027D20;
  *(a1 + 1792) = xmmword_100027D30;
  *(a1 + 1808) = xmmword_100027D40;
  *(a1 + 1824) = xmmword_100027D50;
  *(a1 + 1840) = xmmword_100027D60;
  *v5 = 0x500000006;
  v3 = 8;
  result = sysctl(v5, 2u, &v4, &v3, 0, 0);
  if (v4 <= 0x10000000)
  {
    *(a1 + 1852) = 100000;
  }

  *(a1 + 1856) = 1;
  return result;
}

uint64_t sub_100013990(uint64_t a1)
{
  if ((dword_100030D84 & 8) == 0)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v1 = 0;
  do
  {
    if ((*(v2 + 5) & 0x20) == 0 || *(v2 + v3 + 1898))
    {
      a1 = sub_100013B9C(v2, v3, *(v2 + 4 * v3 + 1832));
      if (a1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v1;
      }
    }

    ++v3;
  }

  while (v3 != 6);
  if (*(v2 + 1898) && !*(v2 + 1894) && !*(v2 + 1895))
  {
    v4 = *(v2 + 1832) / 0xAu;
    *(v2 + 1894) = 257;
    *(v2 + 1816) = vmul_s32(vdup_n_s32(v4), 0xC00000006);
  }

  for (i = 0; i != 26; ++i)
  {
    if ((*(v2 + 5) & 0x20) == 0 || *(v2 + i + 1872))
    {
      a1 = sub_100013BE4(v2, i, *(v2 + 4 * i + 1728));
      if (a1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v1;
      }
    }
  }

  if ((((*(v2 + 5) & 0x20) == 0 || *(v2 + 1904)) && ((a1 = sub_100013C34(v2, *(v2 + 1856)), a1) ? (v1 = 1) : (v1 = v1), (*(v2 + 5) & 0x20) == 0) || *(v2 + 1906)) && ((a1 = sub_100013C84(v2, *(v2 + 1864)), a1) ? (v1 = 1) : (v1 = v1), (*(v2 + 5) & 0x20) == 0) || *(v2 + 1905))
  {
    if (sub_100013D34(a1, *(v2 + 1860)))
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

FILE *sub_100013B04(const char *a1, const char *a2)
{
  v2 = fopen(a1, a2);
  v3 = v2;
  if (v2)
  {
    memset(&v6, 0, sizeof(v6));
    v4 = fileno(v2);
    if (fstat(v4, &v6))
    {
      fclose(v3);
      return 0;
    }

    else if ((v6.st_mode & 0xF000) == 0x4000)
    {
      fclose(v3);
      v3 = 0;
      *__error() = 21;
    }
  }

  return v3;
}

uint64_t sub_100013B9C(int *a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  result = ioctl(*a1, 0xC0084428uLL, v4);
  if (result)
  {
    sub_100020FEC();
    return 1;
  }

  return result;
}

uint64_t sub_100013BE4(int *a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  result = ioctl(*a1, 0xC008441DuLL, v4);
  if (result)
  {
    warnx("DIOCSETTIMEOUT");
    return 1;
  }

  return result;
}

uint64_t sub_100013C34(int *a1, int a2)
{
  v3 = a2;
  result = ioctl(*a1, 0xC0044418uLL, &v3);
  if (result)
  {
    warnx("DIOCSETDEBUG");
    return 1;
  }

  return result;
}

uint64_t sub_100013C84(int *a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = 0;
  if (a2 && __strlcpy_chk() > 0xF)
  {
    warnx("pfctl_load_logif: strlcpy");
  }

  else
  {
    result = ioctl(*a1, 0xC0104414uLL, v4);
    if (!result)
    {
      return result;
    }

    warnx("DIOCSETSTATUSIF");
  }

  return 1;
}

uint64_t sub_100013D34(uint64_t a1, int a2)
{
  v3 = a2;
  result = ioctl(dword_1000309F0, 0xC0044456uLL, &v3);
  if (result)
  {
    warnx("DIOCSETHOSTID");
    return 1;
  }

  return result;
}

uint64_t sub_100013D88(uint64_t a1, char *a2, int a3)
{
  if (!strcasecmp(a2, "states"))
  {
    v8 = &off_10002CDD0;
LABEL_7:
    v10 = *(v8 + 2);
    *(a1 + 4 * v10 + 1832) = a3;
    *(a1 + v10 + 1898) = 1;
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set limit %s %d\n", a2, a3);
    }

    return 0;
  }

  else
  {
    v6 = &off_10002CDD0;
    v7 = 6;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = strcasecmp(a2, v6[2]);
      v6 = v8;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    warnx("Bad pool name.");
    return 1;
  }
}

uint64_t sub_100013E5C(uint64_t a1, char *a2, int a3, int a4)
{
  if ((dword_100030D84 & 8) == 0)
  {
    return 0;
  }

  if (!"tcp.first")
  {
    goto LABEL_11;
  }

  v9 = &off_10002C498;
  if (strcasecmp(a2, "tcp.first"))
  {
    while (1)
    {
      v10 = v9[2];
      if (!v10)
      {
        break;
      }

      v9 += 2;
      if (!strcasecmp(a2, v10))
      {
        goto LABEL_7;
      }
    }

LABEL_11:
    warnx("Bad timeout name.");
    return 1;
  }

LABEL_7:
  result = 0;
  v11 = *(v9 + 2);
  *(a1 + 4 * v11 + 1728) = a3;
  *(a1 + v11 + 1872) = 1;
  if (!a4 && (*(a1 + 4) & 4) != 0)
  {
    printf("set timeout %s %d\n", a2, a3);
    return 0;
  }

  return result;
}

uint64_t sub_100013F44(uint64_t a1, char *a2)
{
  if ((dword_100030D84 & 8) == 0)
  {
    return 0;
  }

  if (!strcasecmp(a2, "normal"))
  {
    v6 = off_10002CE40;
  }

  else
  {
    v4 = off_10002CE40;
    v5 = 5;
    while (--v5)
    {
      v6 = v4 + 2;
      v7 = strcasecmp(a2, v4[2]);
      v4 = v6;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v6 = &unk_10002CE90;
  }

LABEL_9:
  v8 = v6[1];
  if (!v8)
  {
    warnx("invalid state timeouts optimization");
    return 1;
  }

  v9 = *v8;
  if (!*v8)
  {
LABEL_14:
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set optimization %s\n", a2);
    }

    return 0;
  }

  v10 = v8 + 2;
  while (1)
  {
    v11 = 1;
    if (sub_100013E5C(a1, v9, *(v10 - 2), 1))
    {
      return v11;
    }

    v12 = *v10;
    v10 += 2;
    v9 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_100014050(uint64_t a1, char *__s1)
{
  if ((dword_100030D84 & 8) != 0)
  {
    if (!strcmp(__s1, "none"))
    {
      free(*(a1 + 1864));
      *(a1 + 1864) = 0;
    }

    else
    {
      v4 = strdup(__s1);
      *(a1 + 1864) = v4;
      if (!v4)
      {
        sub_100021024();
      }
    }

    *(a1 + 1906) = 1;
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set loginterface %s\n", __s1);
    }
  }

  return 0;
}

uint64_t sub_1000140E0(uint64_t a1, unsigned int a2)
{
  if ((dword_100030D84 & 8) != 0)
  {
    *(a1 + 1860) = bswap32(a2);
    *(a1 + 1905) = 1;
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set hostid 0x%08x\n", a2);
    }
  }

  return 0;
}

uint64_t sub_100014138(uint64_t a1, char *__s1)
{
  if ((dword_100030D84 & 8) != 0)
  {
    if (!strcmp(__s1, "none"))
    {
      v4 = 0;
    }

    else if (!strcmp(__s1, "urgent"))
    {
      v4 = 1;
    }

    else if (!strcmp(__s1, "misc"))
    {
      v4 = 2;
    }

    else
    {
      if (strcmp(__s1, "loud"))
      {
        warnx("unknown debug level %s", __s1);
        return 0xFFFFFFFFLL;
      }

      v4 = 3;
    }

    *(a1 + 1856) = v4;
    v7 = 0;
    *(a1 + 1904) = 1;
    v5 = *(a1 + 4);
    if ((v5 & 8) == 0)
    {
      if (ioctl(dword_1000309F0, 0xC0044418uLL, &v7))
      {
        sub_100021040();
      }

      v5 = *(a1 + 4);
    }

    if ((v5 & 4) != 0)
    {
      printf("set debug %s\n", __s1);
    }
  }

  return 0;
}

uint64_t sub_10001424C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((dword_100030D84 & 8) != 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v10 = a3;
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100021094();
    }

    if ((*(a1 + 4) & 8) == 0)
    {
      v6 = *a1;
      if (a4)
      {
        if (ioctl(v6, 0xC0284459uLL, v8))
        {
          sub_10002105C();
        }
      }

      else if (ioctl(v6, 0xC028445AuLL, v8))
      {
        sub_100021078();
      }
    }
  }

  return 0;
}

size_t sub_10001432C(int a1, int a2, char a3)
{
  v7 = a2;
  result = ioctl(a1, 0xC0044418uLL, &v7);
  if (result)
  {
    sub_100021040();
  }

  if ((a3 & 0x10) == 0)
  {
    fwrite("debug level set to '", 0x14uLL, 1uLL, __stderrp);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v5 = "misc";
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_10;
        }

        v5 = "loud";
      }
    }

    else
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v5 = "urgent";
          v6 = 6;
LABEL_14:
          fwrite(v5, v6, 1uLL, __stderrp);
          return fwrite("'\n", 2uLL, 1uLL, __stderrp);
        }

LABEL_10:
        v5 = "<invalid>";
        v6 = 9;
        goto LABEL_14;
      }

      v5 = "none";
    }

    v6 = 4;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100014428(int a1, char a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (!ioctl(a1, 0xC158442FuLL, v4))
  {
    return 1;
  }

  if (*__error() != 19)
  {
    sub_1000210B0();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("No ALTQ support in kernel\nALTQ related functions disabled\n", 0x3AuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_10001450C(uint64_t a1, uint64_t a2, const void *a3)
{
  bzero(&v10, 0x444uLL);
  memcpy(v11, a3, sizeof(v11));
  if (ioctl(a1, 0xC444443AuLL, &v10))
  {
    if (*__error() != 22)
    {
      sub_1000210CC();
    }

    fprintf(__stderrp, "Anchor '%s' not found.\n", a3);
    return 0xFFFFFFFFLL;
  }

  v7 = v10;
  if (v10)
  {
    v8 = 0;
    while (1)
    {
      v10 = v8;
      if (ioctl(a1, 0xC444443BuLL, &v10))
      {
        sub_1000210E8();
      }

      if (v12 != 6713439)
      {
        v9[0] = 0;
        if (v11[0])
        {
          __strlcat_chk();
          __strlcat_chk();
        }

        __strlcat_chk();
        if ((a2 & 4) != 0 || v9[0] != 95)
        {
          printf("  %s\n", v9);
          if ((a2 & 4) != 0)
          {
            if (sub_10001450C(a1, a2, v9))
            {
              break;
            }
          }
        }
      }

      if (v7 == ++v8)
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

const char *sub_1000146E0(char *__s, const char **a2)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = strlen(__s);
    v6 = a2 + 1;
    do
    {
      if (!strncmp(__s, v4, v5))
      {
        break;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  return v4;
}

void start(int a1, char **a2)
{
  __endptr = 0;
  if (a1 < 2)
  {
LABEL_2:
    sub_10001069C();
  }

  v3 = a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (2)
  {
    v7 = getopt(v3, a2, "a:AdD:eEqf:F:gGhi:k:K:mMnNOo:p:rRs:t:T:vx:X:w:z");
    switch(v7)
    {
      case 'A':
        dword_100030D84 |= 0x10u;
        continue;
      case 'B':
      case 'C':
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'L':
      case 'P':
      case 'Q':
      case 'S':
      case 'U':
      case 'V':
      case 'W':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'l':
      case 'u':
      case 'y':
        goto LABEL_2;
      case 'D':
        if ((sub_100020670(optarg) & 0x80000000) != 0)
        {
          warnx("could not parse macro definition %s", optarg);
        }

        continue;
      case 'E':
        v5 = v5 | 0x1000;
        v4 = 2;
        continue;
      case 'F':
        qword_1000314B8 = sub_1000146E0(optarg, off_1000309F8);
        v4 = 2;
        if (qword_1000314B8)
        {
          continue;
        }

        warnx("Unknown flush modifier '%s'");
        goto LABEL_60;
      case 'K':
        v8 = dword_100030D68;
        if (dword_100030D68 >= 2)
        {
          warnx("can only specify -K twice", v36);
LABEL_60:
          sub_10001069C();
        }

        v9 = optarg;
        ++dword_100030D68;
        v10 = &qword_100030D58;
LABEL_40:
        v10[v8] = v9;
        v4 = 2;
        continue;
      case 'M':
        dword_1000314C8 = 1;
        continue;
      case 'N':
        dword_100030D84 |= 4u;
        continue;
      case 'O':
        dword_100030D84 |= 8u;
        continue;
      case 'R':
        dword_100030D84 |= 2u;
        continue;
      case 'T':
        qword_1000314E8 = sub_1000146E0(optarg, off_100030AF8);
        if (qword_1000314E8)
        {
          continue;
        }

        warnx("Unknown table command '%s'");
        goto LABEL_60;
      case 'X':
        *__error() = 0;
        v11 = strtoull(optarg, &__endptr, 0);
        if (optarg != __endptr && !*__endptr)
        {
          v6 = v11;
          v5 = v5 | 0x8000;
          v4 = 2;
          if (!*__error())
          {
            continue;
          }
        }

        warnx("Invalid token value '%s'");
        goto LABEL_60;
      case 'a':
        qword_1000314B0 = optarg;
        continue;
      case 'd':
        v5 = v5 | 1;
        v4 = 2;
        continue;
      case 'e':
        v5 = v5 | 2;
        v4 = 2;
        continue;
      case 'f':
        qword_1000314D0 = optarg;
        warnx("Use of -f option, could result in flushing of rules\npresent in the main ruleset added by the system at startup.\nSee /etc/pf.conf for further details.\n");
        v4 = 2;
        continue;
      case 'g':
        v5 = v5 | 0x200;
        continue;
      case 'i':
        qword_1000314C0 = optarg;
        continue;
      case 'k':
        v8 = dword_100030D80;
        if (dword_100030D80 >= 2)
        {
          warnx("can only specify -k twice", v36);
          goto LABEL_60;
        }

        v9 = optarg;
        ++dword_100030D80;
        v10 = &qword_100030D70;
        goto LABEL_40;
      case 'm':
        v5 = v5 | 0x2000;
        continue;
      case 'n':
        v5 = v5 | 8;
        continue;
      case 'o':
        qword_100030D48 = sub_1000146E0(optarg, off_100030A50);
        if (!qword_100030D48)
        {
          warnx("Unknown optimization '%s'");
          goto LABEL_60;
        }

        v5 = v5 | 0x800;
        continue;
      case 'p':
        off_1000309E8 = optarg;
        continue;
      case 'q':
        v5 = v5 | 0x10;
        continue;
      case 'r':
        v5 = v5 | 0x40;
        continue;
      case 's':
        qword_1000314D8 = sub_1000146E0(optarg, off_100030A70);
        if (qword_1000314D8)
        {
          continue;
        }

        warnx("Unknown show modifier '%s'");
        goto LABEL_60;
      case 't':
        qword_1000314E0 = optarg;
        continue;
      case 'v':
        v5 = (v5 << 9) & 0x10000 | (((v5 >> 2) & 1) << 7) | v5 | 4;
        continue;
      case 'w':
        *__error() = 0;
        dword_1000314F8 = strtoul(optarg, &__endptr, 0);
        if (optarg != __endptr && !*__endptr && !*__error() && dword_1000314F8 > 0)
        {
          continue;
        }

        warnx("Invalid interval value '%s'");
        goto LABEL_60;
      case 'x':
        qword_1000314F0 = sub_1000146E0(optarg, off_100030B50);
        v4 = 2;
        if (qword_1000314F0)
        {
          continue;
        }

        warnx("Unknown debug level '%s'");
        goto LABEL_60;
      case 'z':
        v5 = v5 | 0x20;
        v4 = 2;
        continue;
      default:
        if (v7 != -1)
        {
          goto LABEL_2;
        }

        if (qword_1000314E8)
        {
          v3 -= optind;
          a2 += optind;
          v12 = *qword_1000314E8;
          if (v12 == 108)
          {
            dword_100030D84 |= 0x20u;
            qword_1000314E8 = 0;
            goto LABEL_66;
          }

          v4 = 2 * (memchr("acdefkrz", v12, 9uLL) != 0);
        }

        else if (optind != v3)
        {
          warnx("unknown command line argument: %s ...");
          goto LABEL_60;
        }

        if (!dword_100030D84)
        {
          dword_100030D84 = -1;
        }

LABEL_66:
        v13 = malloc_type_calloc(1uLL, 0x400uLL, 0x85DA6AD0uLL);
        if (!v13)
        {
          errx(1, "pfctl: calloc", v36);
        }

        v14 = v13;
        bzero(__s1, 0x400uLL);
        if (qword_1000314B0)
        {
          v15 = strlen(qword_1000314B0);
          v16 = qword_1000314B0 + v15;
          v17 = (qword_1000314B0 + v15 - 1);
          if (*v17 == 42)
          {
            if (v15 >= 2)
            {
              v19 = *(v16 - 2);
              v18 = (v16 - 2);
              if (v19 == 47)
              {
                v17 = v18;
              }
            }

            *v17 = 0;
            v5 = v5 | 0x4000;
          }

          if (__strlcpy_chk() >= 0x400)
          {
            errx(1, "anchor name '%s' too long");
          }

          dword_100030D84 &= 0x66u;
        }

        if ((v5 & 8) != 0)
        {
          dword_1000309F0 = open(off_1000309E8, 0);
          v22 = v5 | 0x100;
          if (dword_1000309F0 < 0)
          {
            v22 = v5;
          }

          v5 = v22 & 0xFFFF6FFC;
          qword_1000314F0 = 0;
          qword_1000314D8 = 0;
          qword_1000314B8 = 0;
          v23 = 1;
        }

        else
        {
          v20 = open(off_1000309E8, v4);
          dword_1000309F0 = v20;
          if (v20 == -1)
          {
            err(1, "%s", off_1000309E8);
          }

          v23 = sub_100014428(v20, v5);
        }

        dword_100030D54 = v23;
        if (v5)
        {
          sub_1000108B0(dword_1000309F0, v5);
        }

        if ((v5 & 0x8000) != 0)
        {
          sub_100010964(dword_1000309F0, v5, v6);
        }

        if (qword_1000314D8)
        {
          v26 = *qword_1000314D8;
          switch(*qword_1000314D8)
          {
            case 'R':
              sub_1000126C4(dword_1000309F0);
              break;
            case 'S':
              sub_100012374(dword_1000309F0, v5);
              break;
            case 'T':
              sub_10000FCA4(__s1, v5);
              break;
            case 'U':
            case 'V':
            case 'W':
            case 'X':
            case 'Y':
            case 'Z':
            case '[':
            case '\\':
            case ']':
            case '^':
            case '_':
            case 'b':
            case 'c':
            case 'e':
            case 'f':
            case 'g':
            case 'h':
            case 'j':
            case 'k':
            case 'p':
              break;
            case 'a':
              v5 = v5 | 0x400;
              sub_100008E4C(dword_1000309F0);
              sub_100012040(dword_1000309F0, v5, __s1);
              sub_100011B10(dword_1000309F0, v14, v5, 0, __s1, 0);
              sub_1000121EC(dword_1000309F0, v5, __s1);
              sub_10000CC9C(dword_1000309F0, qword_1000314C0, dword_1000314F8, v5, 0);
              sub_1000124A4(dword_1000309F0, qword_1000314C0, v5);
              sub_100012374(dword_1000309F0, v5);
              sub_100012810(dword_1000309F0, v5);
              sub_100011B10(dword_1000309F0, v14, v5, 1, __s1, 0);
              sub_1000128F0(dword_1000309F0, v5);
              sub_1000129DC(dword_1000309F0, v5);
              sub_10000FCA4(__s1, v5);
              goto LABEL_148;
            case 'd':
              sub_1000121EC(dword_1000309F0, v5, __s1);
              break;
            case 'i':
              sub_100012810(dword_1000309F0, v5);
              break;
            case 'l':
              sub_100008E4C(dword_1000309F0);
              v31 = dword_1000309F0;
              v32 = v14;
              v33 = v5;
              v34 = 1;
              goto LABEL_151;
            case 'm':
              sub_1000129DC(dword_1000309F0, v5);
              break;
            case 'n':
              sub_100008E4C(dword_1000309F0);
              sub_100012040(dword_1000309F0, v5, __s1);
              break;
            case 'o':
              sub_100008E4C(dword_1000309F0);
LABEL_148:
              sub_10000902C(v5);
              break;
            case 'q':
              sub_10000CC9C(dword_1000309F0, qword_1000314C0, dword_1000314F8, v5, v5 & 0x80);
              break;
            case 'r':
              sub_100008E4C(dword_1000309F0);
              v31 = dword_1000309F0;
              v32 = v14;
              v33 = v5;
              v34 = 0;
LABEL_151:
              sub_100011B10(v31, v32, v33, v34, __s1, 0);
              break;
            case 's':
              sub_1000124A4(dword_1000309F0, qword_1000314C0, v5);
              break;
            case 't':
              sub_1000128F0(dword_1000309F0, v5);
              break;
            default:
              if (v26 == 65)
              {
                sub_10001450C(dword_1000309F0, v5, __s1);
              }

              else if (v26 == 73)
              {
                sub_10000FF8C(qword_1000314C0, v5);
              }

              break;
          }
        }

        if ((v5 & 0x20) != 0 && !qword_1000314D8)
        {
          sub_100011B10(dword_1000309F0, v14, v5, 2, __s1, 0);
        }

        v24 = qword_1000314B8;
        if (qword_1000314B8)
        {
          if (__s1[0] == 95 || strstr(__s1, "/_"))
          {
            goto LABEL_130;
          }

          v27 = *v24;
          if (v27 > 0x6D)
          {
            if (*v24 <= 0x70u)
            {
              if (v27 == 110)
              {
                sub_100010CF0(dword_1000309F0, v5);
              }

              else if (v27 == 111)
              {
                sub_100008314(dword_1000309F0);
              }
            }

            else
            {
              switch(v27)
              {
                case 'q':
                  sub_100010DD8(dword_1000309F0, v5);
                  break;
                case 's':
                  sub_100010F0C(dword_1000309F0, qword_1000314C0, v5);
                  break;
                case 'r':
                  sub_100010B60(dword_1000309F0, v5);
                  break;
              }
            }
          }

          else if (*v24 <= 0x60u)
          {
            if (v27 == 83)
            {
              sub_100010EB0(dword_1000309F0, v5);
            }

            else if (v27 == 84)
            {
              sub_10000EEF4(__s1, v5);
            }
          }

          else
          {
            switch(v27)
            {
              case 'a':
                sub_100010B60(dword_1000309F0, v5);
                sub_100010CF0(dword_1000309F0, v5);
                sub_100010C34(dword_1000309F0, v5);
                sub_10000EEF4(__s1, v5);
                if (!__s1[0])
                {
                  sub_100010DD8(dword_1000309F0, v5);
                  sub_100010F0C(dword_1000309F0, qword_1000314C0, v5);
                  sub_100010EB0(dword_1000309F0, v5);
                  sub_100010A54(dword_1000309F0, v5);
                  sub_100008314(dword_1000309F0);
                  sub_100010AB0(dword_1000309F0, v5);
                }

                break;
              case 'd':
                sub_100010C34(dword_1000309F0, v5);
                break;
              case 'i':
                sub_100010A54(dword_1000309F0, v5);
                break;
            }
          }
        }

        if (dword_100030D80)
        {
          sub_10001143C(dword_1000309F0, qword_1000314C0, v5);
        }

        if (dword_100030D68)
        {
          sub_10001115C(dword_1000309F0, v21, v5);
        }

        if (qword_1000314E8)
        {
          v25 = sub_10000FCC8(v3, a2, qword_1000314E0, qword_1000314E8, qword_1000314D0, __s1, v5);
          qword_1000314D0 = 0;
        }

        else
        {
          v25 = 0;
        }

        if (qword_100030D48 && *qword_100030D48 - 110 <= 2)
        {
          v28 = dword_100027D8C[(*qword_100030D48 - 110)];
        }

        else
        {
          v28 = 1;
        }

        v29 = qword_1000314D0;
        if (qword_1000314D0)
        {
          if ((dword_100030D84 & 8) == 0 || __s1[0] || (sub_100010AB0(dword_1000309F0, v5 | 0x10), (v29 = qword_1000314D0) != 0))
          {
            v30 = __s1[0];
            if (v5 & 0x2008 | __s1[0])
            {
LABEL_124:
              if (v30 != 95 && !strstr(__s1, "/_"))
              {
                if (sub_1000133DC(dword_1000309F0, v29, v5, v28, __s1, 0))
                {
                  v25 = 1;
                }

                else if ((v5 & 8) == 0 && (dword_100030D84 & 0x20) != 0)
                {
                  sub_10000FE48(0);
                }

                goto LABEL_155;
              }

LABEL_130:
              errx(1, "anchor names beginning with '_' cannot be modified from the command line");
            }

            if ((dword_100030D84 & 8) == 0)
            {
              goto LABEL_123;
            }

            if (sub_100007BF4(dword_1000309F0, v5, "/etc/pf.os"))
            {
              v25 = 1;
            }

            v29 = qword_1000314D0;
            if (qword_1000314D0)
            {
LABEL_123:
              v30 = __s1[0];
              goto LABEL_124;
            }
          }
        }

LABEL_155:
        if ((v5 & 2) != 0)
        {
          sub_100010758(dword_1000309F0, v5);
        }

        if ((v5 & 0x1000) != 0)
        {
          sub_10001080C(dword_1000309F0, v5, v6);
        }

        if (qword_1000314F0)
        {
          v35 = *qword_1000314F0 - 108;
          if (v35 <= 9 && ((0x207u >> v35) & 1) != 0)
          {
            sub_10001432C(dword_1000309F0, dword_100027D98[(*qword_1000314F0 - 108)], v5);
          }
        }

        exit(v25);
    }
  }
}

uint64_t strtonum(const char *__numstr, uint64_t __minval, uint64_t __maxval, const char **__errstrp)
{
  v23 = 0;
  v21 = "invalid";
  v20 = 22;
  v19 = "too small";
  v18 = 34;
  v17 = "too large";
  v16 = 34;
  v22 = *__error();
  *__error() = 0;
  if (__minval > __maxval || (__endptr = 0, v8 = strtoll(__numstr, &__endptr, 10), __endptr == __numstr) || *__endptr)
  {
    v9 = 0;
    v10 = &v20;
    v11 = &v21;
    goto LABEL_5;
  }

  v14 = v8;
  if (v8 != 0x8000000000000000)
  {
    if (v8 < __minval)
    {
      v9 = 0;
      v10 = &v18;
      v11 = &v19;
      goto LABEL_5;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*__error() != 34)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        if (__maxval == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = &v22;
          v11 = &v23;
          goto LABEL_5;
        }
      }

      goto LABEL_19;
    }

LABEL_18:
    if (v14 <= __maxval)
    {
      v10 = &v22;
      v11 = &v23;
      v9 = v14;
      goto LABEL_5;
    }

LABEL_19:
    v9 = 0;
    v10 = &v16;
    v11 = &v17;
    goto LABEL_5;
  }

  v15 = __error();
  v9 = 0;
  v10 = &v18;
  v11 = &v19;
  if (*v15 != 34 && __minval == 0x8000000000000000)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (__errstrp)
  {
    *__errstrp = *v11;
  }

  v12 = *v10;
  *__error() = v12;
  return v9;
}

uint64_t sub_100015820()
{
  __chkstk_darwin();
  v582 = 0;
  v7 = 0;
  v8 = &unk_100031000;
  v581 = &v584[1];
  v595 = 0u;
  v596 = 0u;
  v578 = &v625;
  v579 = &v627;
  v580 = v633;
  v593 = 0u;
  v594 = 0u;
  v9 = v668;
  v10 = 200;
  v591 = 0u;
  v592 = 0u;
  v589 = 0u;
  v590 = 0u;
  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  *v584 = 0u;
  dword_100031508 = 0;
  dword_10003150C = -2;
  __src = v668;
  v11 = v669;
  v12 = v669;
  while (1)
  {
    *v11 = v7;
    if (&v12[2 * v10 - 2] <= v11)
    {
      if (v10 >> 4 > 0x270 || ((2 * v10) >= 0x2710 ? (v10 = 10000) : (v10 *= 2), (v13 = malloc_type_malloc(210 * v10 + 207, 0x1000040BDFB0063uLL)) == 0))
      {
        sub_10001D73C("memory exhausted", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
        v570 = 2;
        goto LABEL_1772;
      }

      v14 = v13;
      v15 = ((v11 - v12) >> 1) + 1;
      memcpy(v13, v12, 2 * v15);
      memcpy(&v14[208 * ((2 * v10 + 207) / 0xD0u)], __src, 208 * v15);
      if (v12 != v669)
      {
        free(v12);
      }

      if (v10 <= v15)
      {
        v570 = 1;
        v12 = v14;
        goto LABEL_1772;
      }

      v11 = &v14[2 * v15 - 2];
      v9 = &v14[208 * ((2 * v10 + 207) / 0xD0u) - 208 + 208 * v15];
      __src = &v14[208 * ((2 * v10 + 207) / 0xD0u)];
      v12 = v14;
    }

    v16 = word_100027DD8[v7];
    if (v16 == -575)
    {
      goto LABEL_29;
    }

    v17 = v8[323];
    if (v17 == -2)
    {
      v17 = sub_10001CFAC();
      v8[323] = v17;
    }

    if (v17 <= 0)
    {
      v18 = 0;
      v8[323] = 0;
    }

    else
    {
      v18 = v17 > 0x185 ? 2 : byte_1000283E8[v17];
    }

    v19 = v18 + v16;
    if ((v18 + v16) > 0x345 || v18 != word_10002856E[v19])
    {
LABEL_29:
      v28 = word_100029286[v7];
      if (!word_100029286[v7])
      {
        goto LABEL_34;
      }

LABEL_30:
      v29 = byte_100029896[v28];
      v30 = &v9[-26 * v29];
      *v584 = *(v30 + 13);
      v31 = *(v30 + 14);
      v32 = *(v30 + 15);
      v33 = *(v30 + 17);
      v587 = *(v30 + 16);
      v588 = v33;
      v585 = v31;
      v586 = v32;
      v34 = *(v30 + 18);
      v35 = *(v30 + 19);
      v36 = *(v30 + 21);
      v591 = *(v30 + 20);
      v592 = v36;
      v589 = v34;
      v590 = v35;
      v37 = *(v30 + 22);
      v38 = *(v30 + 23);
      v39 = *(v30 + 25);
      v595 = *(v30 + 24);
      v596 = v39;
      v593 = v37;
      v594 = v38;
      switch(v28)
      {
        case 0x12u:
          ++*(qword_100030C60 + 36);
          goto LABEL_1416;
        case 0x13u:
          v243 = sub_10001D5F8(*v9, 0);
          if (v243)
          {
            free(*v9);
            qword_100030C60 = v243;
            if (!qword_100031880 || (v244 = dword_100031888, --dword_100031888, v244 <= 0))
            {
              v245 = dword_100031878;
              if (dword_100031878 <= 126)
              {
                ++dword_100031878;
                byte_10003188C[v245] = 10;
              }
            }

            goto LABEL_1416;
          }

          v572 = *v9;
          v61 = "failed to include file %s";
          goto LABEL_1550;
        case 0x14u:
          v55 = *v9;
          if (!strcmp(*v9, "none"))
          {
            goto LABEL_63;
          }

          if (!strcmp(v55, "basic"))
          {
            goto LABEL_61;
          }

          if (!strcmp(v55, "profile"))
          {
            goto LABEL_62;
          }

          v572 = *&v55;
          v47 = "unknown ruleset-optimization %s";
          goto LABEL_1651;
        case 0x15u:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_854;
          }

          dword_100030C78 = 1;
          v352 = sub_100013F44(qword_100030C68, *v9);
          v78 = *v9;
          if (!v352)
          {
            goto LABEL_1415;
          }

          v572 = *v9;
          v61 = "unknown optimization %s";
          goto LABEL_1550;
        case 0x16u:
          v81 = qword_100030C68;
          v82 = *(qword_100030C68 + 4);
          if ((v82 & 0x800) == 0)
          {
            *(qword_100030C68 + 4) = v82 | 0x800;
            *(v81 + 8) = *v9;
          }

          goto LABEL_1416;
        case 0x1Bu:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_854;
          }

          dword_100030C78 = 1;
          v77 = sub_100014050(qword_100030C68, *v9);
          v78 = *v9;
          if (!v77)
          {
            goto LABEL_1415;
          }

          v572 = *v9;
          v61 = "error setting loginterface %s";
          goto LABEL_1550;
        case 0x1Cu:
          v0 = *v9;
          if (*v9 && v0 < &_mh_execute_header)
          {
            if (!sub_1000140E0(qword_100030C68, v0))
            {
              goto LABEL_1416;
            }

            v572 = *v9;
            v47 = "error setting hostid %08x";
          }

          else
          {
            v47 = "hostid must be non-zero";
          }

          goto LABEL_1651;
        case 0x1Du:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            puts("set block-policy drop");
          }

          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 1;
          byte_100030C70 = 0;
          goto LABEL_1416;
        case 0x1Eu:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            puts("set block-policy return");
          }

          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 1;
          byte_100030C70 = 1;
          goto LABEL_1416;
        case 0x1Fu:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            if (*v9 == 1)
            {
              v63 = "yes";
            }

            else
            {
              v63 = "no";
            }

            printf("set require-order %s\n", v63);
          }

          dword_100030BA8 = *v9;
          goto LABEL_1416;
        case 0x20u:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            printf("set fingerprints %s\n", *v9);
          }

          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_854;
          }

          dword_100030C78 = 1;
          if (*(*(qword_100030C68 + 1704) + 64) || !sub_100007BF4(*qword_100030C68, *(qword_100030C68 + 4), *v9))
          {
            goto LABEL_1165;
          }

          v572 = *v9;
          v61 = "error loading fingerprints %s";
          goto LABEL_1550;
        case 0x21u:
          if ((*(qword_100030C68 + 4) & 4) == 0)
          {
            goto LABEL_1209;
          }

          if (*v9)
          {
            if (*v9 != 0x10000)
            {
              goto LABEL_1209;
            }

            v113 = "set state-policy if-bound";
          }

          else
          {
            v113 = "set state-policy floating";
          }

          puts(v113);
LABEL_1209:
          dword_100030C74 = *v9;
          goto LABEL_1416;
        case 0x22u:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
LABEL_854:
            v61 = "Rules must be in order: options, normalization, queueing, translation, filtering";
            goto LABEL_1550;
          }

          dword_100030C78 = 1;
          v84 = sub_100014138(qword_100030C68, *v9);
          v78 = *v9;
          if (!v84)
          {
            goto LABEL_1415;
          }

          v572 = *v9;
          v61 = "error setting debuglevel %s";
          goto LABEL_1550;
        case 0x23u:
          if (!sub_10001D82C(*v9, v0, v1, v2, v3, v4, v5, v6))
          {
            goto LABEL_1416;
          }

          v47 = "error setting skip interface(s)";
          goto LABEL_1651;
        case 0x24u:
        case 0x2Au:
        case 0x4Fu:
        case 0x51u:
        case 0x53u:
          v584[0] = *v9;
          goto LABEL_1416;
        case 0x25u:
          v584[0] = strdup("all");
          if (!v584[0])
          {
            sub_10002141C();
          }

          goto LABEL_1416;
        case 0x26u:
          if (asprintf(v584, "%s %s", *(v9 - 26), *v9) == -1)
          {
            sub_100021400();
          }

          v98 = *(v9 - 26);
          goto LABEL_863;
        case 0x28u:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            printf("%s = %s\n", *(v9 - 52), *v9);
          }

          v318 = sub_10001D99C(*(v9 - 52), *v9, 0);
          v98 = *(v9 - 52);
          if (v318 == -1)
          {
            goto LABEL_1777;
          }

LABEL_863:
          free(v98);
          goto LABEL_1165;
        case 0x29u:
          *c = 0;
          if (asprintf(c, "%lld", *v9) == -1)
          {
            v47 = "string: asprintf";
            goto LABEL_1651;
          }

          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            printf("%s = %s\n", *(v9 - 52), *c);
          }

          v126 = sub_10001D99C(*(v9 - 52), *c, 0);
          v98 = *(v9 - 52);
          if (v126 == -1)
          {
LABEL_1777:
            err(1, "cannot store variable %s", v98);
          }

          free(v98);
          v78 = *c;
          goto LABEL_1415;
        case 0x2Bu:
        case 0x5Eu:
          goto LABEL_265;
        case 0x32u:
          v319 = qword_100030C68;
          v320 = vadd_s32(*(qword_100030C68 + 16), 0x100000001);
          *(qword_100030C68 + 16) = v320;
          *(v319 + 24) = 1;
          snprintf(c, 0x40uLL, "_%d", v320.i32[1]);
          v321 = sub_10000281C(c);
          if (!v321)
          {
            sub_1000213E4();
          }

          v322 = *(v321 + 72);
          v323 = qword_100030C68;
          *(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 32) = v322;
          *(v323 + 1704) = v322;
          goto LABEL_1416;
        case 0x33u:
          v57 = qword_100030C68;
          *(qword_100030C68 + 1712) = *(qword_100030C68 + 1704);
          v58 = *(v57 + 16) - 1;
          *(v57 + 16) = v58;
          *(v57 + 1704) = *(v57 + 8 * v58 + 32);
          goto LABEL_1416;
        case 0x35u:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          v64 = (v9 - 208);
          if (dword_100030BA8 && dword_100030C78 >= 6)
          {
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
            v65 = *v64;
            if (!*v64)
            {
              goto LABEL_1553;
            }

LABEL_1552:
            free(v65);
            goto LABEL_1553;
          }

          dword_100030C78 = 5;
          v274 = *v64;
          if (*v64 && (*v274 == 95 || strstr(*v64, "/_")))
          {
LABEL_887:
            free(v274);
            v47 = "anchor names beginning with '_' are reserved for internal use";
            goto LABEL_1651;
          }

          bzero(c, 0x410uLL);
          v414 = *(qword_100030C68 + 16);
          if (*(qword_100030C68 + 32 + 8 * v414 + 8))
          {
            v415 = *v64;
            if (!*v64)
            {
              v415 = (*(qword_100030C68 + 1712) + 64);
            }

            sub_100002C50(c, *(qword_100030C68 + 32 + 8 * v414) + 1152, v415);
            if (!v631)
            {
              sub_1000213C8();
            }

            v416 = *(qword_100030C68 + 1712);
            if (v416 != v631)
            {
              if (*(v631 + 1756))
              {
                *&v572 = v631 + 64;
                v47 = "inline anchor '%s' already exists";
                goto LABEL_1651;
              }

              sub_10001DAB8(v416 + 1152, v631 + 1152);
              v416 = *(qword_100030C68 + 1712);
            }

            sub_100002B50((v416 + 1152));
            *(qword_100030C68 + 1712) = v631;
          }

          else if (!*v64)
          {
LABEL_1254:
            v47 = "anchors without explicit rules must specify a name";
            goto LABEL_1651;
          }

          HIBYTE(v646) = *(v9 - 364);
          v649 = *(v9 - 1246);
          v654 = *(v9 - 208);
          v641 = *(v9 - 39);
          v632 = *(v9 - 21);
          if (*(v9 - 13) && __strlcpy_chk() >= 0x40 || *(v9 - 12) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1392;
          }

          v651 = *(v9 - 88);
          if (sub_10001DBA4(c, *(v9 - 16)))
          {
            goto LABEL_1553;
          }

          free(*(v9 - 16));
          v656 = *(v9 - 184);
          v657 = *(v9 - 183);
          v462 = *(v9 - 184);
          if ((v462 & ~v657) != 0)
          {
LABEL_1405:
            v47 = "flags always false";
            goto LABEL_1651;
          }

          v463 = v657 | v462;
          if (v463 || *(v9 - 48))
          {
            v464 = *(v9 - 78);
            if (v464)
            {
              do
              {
                if (*v464 == 6)
                {
                  goto LABEL_1472;
                }

                v464 = *(v464 + 8);
              }

              while (v464);
              if (v463)
              {
                sub_10001D73C("flags only apply to tcp", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
              }

              v278 = *(v9 - 48);
LABEL_1403:
              if (!v278)
              {
                goto LABEL_1553;
              }

              v47 = "OS fingerprinting only applies to tcp";
              goto LABEL_1651;
            }
          }

LABEL_1472:
          v662 = *(v9 - 42);
          if (*(v9 - 38))
          {
            v47 = "cannot specify state handling on anchors";
            goto LABEL_1651;
          }

          if (*(v9 - 12) && __strlcpy_chk() >= 0x40)
          {
LABEL_1587:
            *&v572 = 63;
            v47 = "tag too long, max %u chars";
            goto LABEL_1651;
          }

          v651 = *(v9 - 88);
          v517 = *(v9 - 52);
          v518 = v654;
          if (v517)
          {
            v519 = v654 == 0;
          }

          else
          {
            v519 = 0;
          }

          if (v519)
          {
            v518 = *(v517 + 80);
            v654 = *(v517 + 80);
            while (1)
            {
              v517 = *(v517 + 104);
              if (!v517)
              {
                break;
              }

              if (*(v517 + 80) != v518)
              {
                v518 = 0;
                v654 = 0;
                break;
              }
            }
          }

          v520 = *(v9 - 50);
          if (v520)
          {
            v521 = v518 == 0;
          }

          else
          {
            v521 = 0;
          }

          if (v521)
          {
            v522 = *(v520 + 80);
            v654 = *(v520 + 80);
            while (1)
            {
              v520 = *(v520 + 104);
              if (!v520)
              {
                break;
              }

              if (*(v520 + 80) != v522)
              {
                v654 = 0;
                break;
              }
            }
          }

          if (*(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 40))
          {
            v523 = (*(qword_100030C68 + 1712) + 64);
          }

          else
          {
            v523 = *v64;
          }

          sub_10001DC08(c, *(v9 - 130), 0, *(v9 - 78), *(v9 - 48), *(v9 - 52), *(v9 - 51), *(v9 - 50), *(v9 - 49), *(v9 - 25), *(v9 - 24), *(v9 - 22), v523);
          free(*v64);
          *(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 40) = 0;
          goto LABEL_1416;
        case 0x36u:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 3)
          {
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
            v316 = (v9 - 156);
LABEL_872:
            v65 = *v316;
            goto LABEL_1552;
          }

          dword_100030C78 = 2;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = 2;
          v353 = (v9 - 156);
          if (!*(v9 - 156))
          {
            v47 = "anchors without explicit reules must specify a name";
            goto LABEL_1651;
          }

          v354 = *(v9 - 260);
          HIBYTE(v646) = v354;
          v355 = *(v9 - 624);
          v654 = *(v9 - 624);
          v356 = *(v9 + 1);
          if (v356)
          {
            v356 = 256;
            v645 = 256;
          }

          if (*(v9 + 5))
          {
            v356 |= 0x800u;
            v645 = v356;
          }

          if (*(v9 + 6))
          {
            if (v354)
            {
LABEL_1190:
              v47 = "reassemble tcp rules can not specify direction";
              goto LABEL_1651;
            }

            v356 |= 0x1000u;
            v645 = v356;
          }

          if (*(v9 + 2))
          {
            v658 = *(v9 + 2);
          }

          if (*(v9 + 3))
          {
            v644 = *(v9 + 3);
          }

          v357 = *(v9 + 4);
          if (v357)
          {
            v645 = v356 | v357;
          }

          v632 = *(v9 + 7);
          if (!v355)
          {
            v358 = *(v9 - 26);
            if (v358)
            {
              v355 = *(v358 + 80);
              v654 = *(v358 + 80);
              while (1)
              {
                v358 = *(v358 + 104);
                if (!v358)
                {
                  break;
                }

                if (*(v358 + 80) != v355)
                {
                  v355 = 0;
                  v654 = 0;
                  break;
                }
              }
            }
          }

          v359 = *(v9 - 24);
          if (v359)
          {
            v360 = v355 == 0;
          }

          else
          {
            v360 = 0;
          }

          if (v360)
          {
            v361 = *(v359 + 80);
            v654 = *(v359 + 80);
            while (1)
            {
              v359 = *(v359 + 104);
              if (!v359)
              {
                break;
              }

              if (*(v359 + 80) != v361)
              {
                v654 = 0;
                break;
              }
            }
          }

          v362 = *(v9 - 104);
          v363 = *(v9 - 52);
          v365 = *(v9 - 23);
          v364 = *(v9 - 22);
          v366 = *(v9 - 26);
          v367 = *(v9 - 25);
          v368 = *(v9 - 24);
LABEL_998:
          sub_10001DC08(c, v362, 0, v363, v364, v366, v367, v368, v365, 0, 0, 0, *v353);
          goto LABEL_999;
        case 0x37u:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 > 4)
          {
            goto LABEL_871;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = 4;
          v654 = *(v9 - 624);
          v369 = v654;
          v632 = *v9;
          if (v654)
          {
            goto LABEL_987;
          }

          v370 = *(v9 - 26);
          if (!v370)
          {
            goto LABEL_987;
          }

          v369 = *(v370 + 80);
          v654 = *(v370 + 80);
          while (1)
          {
            v370 = *(v370 + 104);
            if (!v370)
            {
              break;
            }

            if (*(v370 + 80) != v369)
            {
              v369 = 0;
              v654 = 0;
              break;
            }
          }

LABEL_987:
          v371 = *(v9 - 24);
          if (v371)
          {
            v372 = v369 == 0;
          }

          else
          {
            v372 = 0;
          }

          if (v372)
          {
            v373 = *(v371 + 80);
            v654 = *(v371 + 80);
            while (1)
            {
              v371 = *(v371 + 104);
              if (!v371)
              {
                break;
              }

              if (*(v371 + 80) != v373)
              {
                v654 = 0;
                break;
              }
            }
          }

          v362 = *(v9 - 104);
          v363 = *(v9 - 52);
          v365 = *(v9 - 23);
          v364 = *(v9 - 22);
          v366 = *(v9 - 26);
          v367 = *(v9 - 25);
          goto LABEL_997;
        case 0x38u:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
            goto LABEL_871;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = 8;
          v654 = *(v9 - 624);
          v70 = v654;
          v632 = *v9;
          if (v654)
          {
            goto LABEL_143;
          }

          v71 = *(v9 - 26);
          if (!v71)
          {
            goto LABEL_143;
          }

          v70 = *(v71 + 80);
          v654 = *(v71 + 80);
          while (1)
          {
            v71 = *(v71 + 104);
            if (!v71)
            {
              break;
            }

            if (*(v71 + 80) != v70)
            {
              v70 = 0;
              v654 = 0;
              break;
            }
          }

LABEL_143:
          v72 = *(v9 - 24);
          if (v72)
          {
            v73 = v70 == 0;
          }

          else
          {
            v73 = 0;
          }

          if (v73)
          {
            v74 = *(v72 + 80);
            v654 = *(v72 + 80);
            while (1)
            {
              v72 = *(v72 + 104);
              if (!v72)
              {
                break;
              }

              if (*(v72 + 80) != v74)
              {
                v654 = 0;
                break;
              }
            }
          }

          if (*(v9 - 25))
          {
            v47 = "source port parameter not supported in rdr-anchor";
            goto LABEL_1651;
          }

          v365 = *(v9 - 23);
          if (v365)
          {
            if (*(v365 + 8))
            {
              v47 = "destination port list expansion not supported in rdr-anchor";
              goto LABEL_1651;
            }

            if (*(v365 + 4) != 2)
            {
              v47 = "destination port operators not supported in rdr-anchor";
              goto LABEL_1651;
            }

            LOWORD(v599) = *v365;
            WORD1(v599) = *(*(v9 - 23) + 1);
            BYTE4(v599) = (*(v9 - 23))[4];
            v367 = *(v9 - 25);
            v365 = *(v9 - 23);
          }

          else
          {
            v367 = 0;
          }

          v362 = *(v9 - 104);
          v363 = *(v9 - 52);
          v364 = *(v9 - 22);
          v366 = *(v9 - 26);
LABEL_997:
          v368 = *(v9 - 24);
          v353 = (v9 - 130);
          goto LABEL_998;
        case 0x39u:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
LABEL_871:
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
            v316 = (v9 - 130);
            goto LABEL_872;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = 6;
          v654 = *(v9 - 156);
          v632 = *v9;
          v201 = *(v9 - 52);
          if (v201)
          {
            if (*(v201 + 1))
            {
              v47 = "proto list expansion not supported in binat-anchor";
              goto LABEL_1651;
            }

            v655 = *v201;
            free(*(v9 - 52));
          }

          if (*(v9 - 26) || *(v9 - 25) || *(v9 - 24) || *(v9 - 23))
          {
            v47 = "fromto parameter not supported in binat-anchor";
            goto LABEL_1651;
          }

          v353 = (v9 - 130);
          sub_100012B94(qword_100030C68, c, *(v9 - 130));
LABEL_999:
          v78 = *v353;
          goto LABEL_1415;
        case 0x3Au:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          v273 = (v9 - 182);
          v274 = *(v9 - 182);
          if (v274 && (*v274 == 95 || strstr(*(v9 - 182), "/_")))
          {
            goto LABEL_887;
          }

          bzero(c, 0x410uLL);
          LOBYTE(v646) = 11;
          if (!*v273)
          {
            goto LABEL_1254;
          }

          HIBYTE(v646) = *(v9 - 312);
          v649 = *(v9 - 1038);
          v654 = *(v9 - 156);
          v641 = *(v9 + 13);
          v632 = *(v9 + 31);
          if (v9[13] && __strlcpy_chk() >= 0x40 || v9[14] && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1392;
          }

          v651 = *(v9 + 120);
          if (sub_10001DBA4(c, v9[10]))
          {
            goto LABEL_1553;
          }

          free(v9[10]);
          v656 = *(v9 + 24);
          v657 = *(v9 + 25);
          v275 = *(v9 + 24);
          if ((v275 & ~v657) != 0)
          {
            goto LABEL_1405;
          }

          v276 = v657 | v275;
          if (!v276 && !*(v9 - 22))
          {
            goto LABEL_1453;
          }

          v277 = *(v9 - 52);
          if (!v277)
          {
            goto LABEL_1453;
          }

          while (*v277 != 6)
          {
            v277 = *(v277 + 8);
            if (!v277)
            {
              if (v276)
              {
                sub_10001D73C("flags only apply to tcp", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
              }

              v278 = *(v9 - 22);
              goto LABEL_1403;
            }
          }

LABEL_1453:
          v662 = *(v9 + 10);
          if (*(v9 + 14))
          {
            v47 = "cannot specify state handling on anchors";
            goto LABEL_1651;
          }

          if (v9[14] && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1587;
          }

          v651 = *(v9 + 120);
          v494 = *(v9 - 26);
          v495 = v654;
          if (v494 && !v654)
          {
            v495 = *(v494 + 80);
            v654 = *(v494 + 80);
            while (1)
            {
              v494 = *(v494 + 104);
              if (!v494)
              {
                break;
              }

              if (*(v494 + 80) != v495)
              {
                v495 = 0;
                v654 = 0;
                break;
              }
            }
          }

          v496 = *(v9 - 24);
          if (v496)
          {
            v497 = v495 == 0;
          }

          else
          {
            v497 = 0;
          }

          if (v497)
          {
            v498 = *(v496 + 80);
            v654 = *(v496 + 80);
            while (1)
            {
              v496 = *(v496 + 104);
              if (!v496)
              {
                break;
              }

              if (*(v496 + 80) != v498)
              {
                v654 = 0;
                break;
              }
            }
          }

          sub_10001DC08(c, *(v9 - 104), 0, *(v9 - 52), *(v9 - 22), *(v9 - 26), *(v9 - 25), *(v9 - 24), *(v9 - 23), v9[1], v9[2], v9[4], *v273);
          free(*v273);
          goto LABEL_1416;
        case 0x3Bu:
          v577 = v29;
          v85 = strlen((*(qword_100030C68 + 1704) + 64));
          v86 = (v9 - 52);
          v87 = *(v9 - 52);
          if (v85 + strlen(v87) + 1 <= 0x3FF)
          {
            v332 = malloc_type_calloc(1uLL, 0x20uLL, 0xB004013ACE7CCuLL);
            if (!v332)
            {
              sub_1000213AC();
            }

            v333 = v332;
            v334 = malloc_type_malloc(0x400uLL, 0xC994E5FCuLL);
            v333[2] = v334;
            if (!v334)
            {
              sub_100021390();
            }

            v335 = *(qword_100030C68 + 1704);
            v337 = *(v335 + 64);
            v336 = (v335 + 64);
            if (v337)
            {
              snprintf(v334, 0x400uLL, "%s/%s", v336, *v86);
            }

            else
            {
              __strlcpy_chk();
            }

            v425 = strdup(*v9);
            v333[3] = v425;
            if (!v425)
            {
              sub_100021374();
            }

            v426 = off_100030BA0;
            *v333 = 0;
            v333[1] = v426;
            *v426 = v333;
            off_100030BA0 = v333;
            free(*v86);
            free(*v9);
            goto LABEL_1201;
          }

          v573 = 1023;
          sub_10001D73C("anchorname %s too long, max %u\n", v88, v89, v90, v91, v92, v93, v94, v87);
          v95 = *v86;
          goto LABEL_1262;
        case 0x3Cu:
          WORD1(v584[0]) = 0;
          BYTE1(v584[0]) = 0;
          if (*(v9 - 52))
          {
            v252 = 3;
          }

          else
          {
            v252 = 2;
          }

          goto LABEL_1055;
        case 0x3Du:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 > 2)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 2;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = *(v9 - 1456);
          v56 = *(v9 - 312);
          HIBYTE(v646) = v56;
          v647 = *(v9 - 1040);
          v648 = *(v9 - 1039);
          if (*(v9 - 1038))
          {
            v47 = "scrub rules do not support 'quick'";
            goto LABEL_1651;
          }

          v654 = *(v9 - 156);
          v424 = *(v9 + 1);
          if (v424)
          {
            v424 = 256;
            v645 = 256;
          }

          if (*(v9 + 5))
          {
            v424 |= 0x800u;
            v645 = v424;
          }

          if (!*(v9 + 6))
          {
            goto LABEL_1312;
          }

          if (!v56)
          {
            v424 |= 0x1000u;
            v645 = v424;
LABEL_1312:
            if (*(v9 + 2))
            {
              v658 = *(v9 + 2);
            }

            if (*(v9 + 3))
            {
              v644 = *(v9 + 3);
            }

            v452 = *(v9 + 4);
            if (v452)
            {
              v645 = v424 | v452;
            }

            v632 = *(v9 + 7);
            sub_10001DC08(c, *(v9 - 104), 0, *(v9 - 52), *(v9 - 22), *(v9 - 26), *(v9 - 25), *(v9 - 24), *(v9 - 23), 0, 0, 0, "");
            goto LABEL_1416;
          }

          goto LABEL_1190;
        case 0x3Eu:
          v302 = &xmmword_1000315E0;
          v303 = 0uLL;
          goto LABEL_838;
        case 0x3Fu:
          v249 = &xmmword_1000315E0;
          goto LABEL_841;
        case 0x40u:
          v69 = 0uLL;
          xmmword_1000315E0 = 0u;
          *&dword_1000315F0 = 0u;
          goto LABEL_186;
        case 0x43u:
          if (!DWORD1(xmmword_1000315E0))
          {
            DWORD1(xmmword_1000315E0) = 1;
            goto LABEL_1416;
          }

          v47 = "no-df cannot be respecified";
          goto LABEL_1651;
        case 0x44u:
          if (xmmword_1000315E0)
          {
            v47 = "min-ttl cannot be respecified";
          }

          else
          {
            if (*v9 < 0x100)
            {
              LODWORD(xmmword_1000315E0) = xmmword_1000315E0 | 1;
              DWORD2(xmmword_1000315E0) = *v9;
              goto LABEL_1416;
            }

            v572 = *v9;
            v47 = "illegal min-ttl value %d";
          }

          goto LABEL_1651;
        case 0x45u:
          if ((xmmword_1000315E0 & 2) != 0)
          {
            v47 = "max-mss cannot be respecified";
          }

          else
          {
            if (*v9 < 0x10000)
            {
              LODWORD(xmmword_1000315E0) = xmmword_1000315E0 | 2;
              HIDWORD(xmmword_1000315E0) = *v9;
              goto LABEL_1416;
            }

            v572 = *v9;
            v47 = "illegal max-mss value %d";
          }

          goto LABEL_1651;
        case 0x46u:
          if ((xmmword_1000315E0 & 4) == 0)
          {
            LODWORD(xmmword_1000315E0) = xmmword_1000315E0 | 4;
            dword_1000315F0 = *v9;
            goto LABEL_1416;
          }

          v47 = "fragcache cannot be respecified";
          goto LABEL_1651;
        case 0x47u:
          v166 = *v9;
          if (strcasecmp(*v9, "tcp"))
          {
            v572 = *&v166;
            v61 = "scrub reassemble supports only tcp, not '%s'";
            goto LABEL_1550;
          }

          free(v166);
          if (!dword_1000315F8)
          {
            dword_1000315F8 = 1;
            goto LABEL_1416;
          }

          v47 = "reassemble tcp cannot be respecified";
          goto LABEL_1651;
        case 0x48u:
          if (!dword_1000315F4)
          {
            dword_1000315F4 = 1;
            goto LABEL_1416;
          }

          v47 = "random-id cannot be respecified";
          goto LABEL_1651;
        case 0x49u:
          if (!*v9)
          {
            goto LABEL_859;
          }

          dword_1000315FC = *v9;
          goto LABEL_1416;
        case 0x4Au:
          v246 = if_nametoindex(*v9);
          if (v246)
          {
            dword_1000315FC = v246;
            goto LABEL_1416;
          }

          v47 = "invalid rtable interface name";
          goto LABEL_1651;
        case 0x4Bu:
LABEL_63:
          LODWORD(v584[0]) = 0;
          goto LABEL_1416;
        case 0x4Cu:
          v46 = 512;
          goto LABEL_856;
        case 0x4Du:
          v46 = 1024;
          goto LABEL_856;
        case 0x4Eu:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 > 5)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 5;
          v142 = *(v9 - 52);
          if (!v142)
          {
            goto LABEL_1165;
          }

          v574 = v9 - 623;
          v575 = v9 - 622;
          v576 = v9 - 78;
          v577 = v29;
          while (2)
          {
            bzero(c, 0x410uLL);
            v646 = 257;
            v647 = *v576;
            v648 = *v574;
            v649 = *v575;
            v654 = *(v9 - 52);
            if (sub_10001DBA4(c, *v9))
            {
              goto LABEL_1553;
            }

            v632 = *(v9 + 2);
            v143 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
            if (!v143)
            {
              sub_100021358();
            }

            v144 = v143;
            if (__strlcpy_chk() > 0xF)
            {
              goto LABEL_1310;
            }

            v144[1].i8[0] = 1;
            if (*(v142 + 17))
            {
              v145 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
              if (!v145)
              {
                sub_100020A18();
              }

              v148 = v145;
              v145[2].i8[8] = 2;
              sub_10000BB08(v145, 0x80u, v146, v147);
              if (__strlcpy_chk() > 0xF)
              {
                v144 = v148;
                v29 = v577;
LABEL_1310:
                v285 = v144;
LABEL_1204:
                free(v285);
                v47 = "interface name too long";
                goto LABEL_1651;
              }

              v149 = malloc_type_malloc(0x78uLL, 0x10B20409DAB6FE4uLL);
              if (!v149)
              {
                sub_10002133C();
              }

              v150 = v149;
              memmove(v149, v148, 0x78uLL);
              v148[2].i8[9] = 1;
            }

            else
            {
              v148 = sub_10000BFC8(v144->i8, 1);
              v150 = 0;
              v151 = 0;
              if (!v148)
              {
                goto LABEL_325;
              }
            }

            sub_10001DC08(c, v144->i8, 0, 0, 0, v148, 0, 0, 0, 0, 0, 0, "");
            v151 = v150;
LABEL_325:
            if ((*(v142 + 20) & 8) != 0)
            {
              free(v151);
              v29 = v577;
            }

            else
            {
              v152 = v151;
              bzero(c, 0x410uLL);
              v646 = 257;
              v647 = *v576;
              v649 = *v575;
              v654 = *(v9 - 52);
              v153 = sub_10001DBA4(c, *v9);
              v29 = v577;
              if (v153)
              {
                goto LABEL_1553;
              }

              v632 = *(v9 + 2);
              v154 = v152;
              if (v152 || (v154 = sub_10000BFC8(v142, 0)) != 0)
              {
                sub_10001DC08(c, 0, 0, 0, 0, v154, 0, 0, 0, 0, 0, 0, "");
              }
            }

            v142 = *(v142 + 24);
            if (!v142)
            {
              goto LABEL_1165;
            }

            continue;
          }

        case 0x50u:
          goto LABEL_789;
        case 0x52u:
          v108 = *v9;
          *(*(*(v9 - 52) + 4) + 24) = *v9;
          *(*(v9 - 52) + 4) = v108;
          v40 = *(v9 - 52);
          goto LABEL_292;
        case 0x54u:
          *(*(v9 - 26) + 17) = 1;
LABEL_789:
          v40 = *(v9 - 26);
          goto LABEL_292;
        case 0x55u:
          xmmword_100031600 = 0uLL;
          goto LABEL_1416;
        case 0x56u:
          v288 = &xmmword_100031600;
          goto LABEL_749;
        case 0x57u:
          xmmword_100031600 = 0uLL;
          v584[1] = 0;
LABEL_265:
          v584[0] = 0;
          goto LABEL_1416;
        case 0x5Au:
          if (xmmword_100031600)
          {
            goto LABEL_787;
          }

          *&xmmword_100031600 = *v9;
          goto LABEL_1416;
        case 0x5Bu:
          if (!*v9)
          {
            goto LABEL_859;
          }

          DWORD2(xmmword_100031600) = *v9;
          goto LABEL_1416;
        case 0x5Cu:
          v282 = if_nametoindex(*v9);
          if (!v282)
          {
            goto LABEL_859;
          }

          DWORD2(xmmword_100031600) = v282;
          goto LABEL_1416;
        case 0x5Du:
          v40 = 1;
          goto LABEL_292;
        case 0x5Fu:
          v155 = (v9 - 52);
          v156 = *(v9 - 52);
          if (strlen(v156) >= 0x20)
          {
            *&v572 = 31;
            v164 = "table name too long, max %d chars";
            goto LABEL_399;
          }

          if ((*(qword_100030C68 + 12) & 0x20) == 0 || (v340 = sub_10001E6BC(v156, v9), v156 = *v155, !v340))
          {
            free(v156);
            v395 = v9[1];
            if (v395)
            {
              do
              {
                v396 = *(v395 + 2);
                if (v396)
                {
                  free(v396);
                }

                v397 = *(v395 + 1);
                if (v397)
                {
                  do
                  {
                    v398 = v397[13];
                    free(v397);
                    v397 = v398;
                  }

                  while (v398);
                }

                v399 = *v395;
                free(v395);
                v395 = v399;
              }

              while (v399);
            }

            goto LABEL_1416;
          }

          v65 = *v155;
          goto LABEL_1552;
        case 0x60u:
          xmmword_100031610 = 0uLL;
          qword_100031620 = &xmmword_100031610 + 8;
          goto LABEL_1416;
        case 0x61u:
          *v584 = xmmword_100031610;
          v117 = qword_100031620;
          goto LABEL_498;
        case 0x62u:
          v288 = &xmmword_100031610;
          xmmword_100031610 = 0uLL;
          qword_100031620 = &xmmword_100031610 + 8;
          *&v585 = &xmmword_100031610 + 8;
LABEL_749:
          *v584 = *v288;
          goto LABEL_1416;
        case 0x65u:
          v317 = *v9;
          if (!strcmp(*v9, "const"))
          {
            v393 = 2;
          }

          else
          {
            if (strcmp(v317, "persist"))
            {
              v572 = *&v317;
              v61 = "invalid table option '%s'";
              goto LABEL_1550;
            }

            v393 = 1;
          }

          LODWORD(xmmword_100031610) = xmmword_100031610 | v393;
LABEL_1165:
          v78 = *v9;
          goto LABEL_1415;
        case 0x66u:
          DWORD1(xmmword_100031610) = 1;
          goto LABEL_1416;
        case 0x67u:
          v299 = *(v9 - 26);
          if (!v299)
          {
            goto LABEL_771;
          }

          while (1)
          {
            v300 = *(v299 + 40);
            if (*(v299 + 40))
            {
              break;
            }

            v299 = *(v299 + 104);
            if (!v299)
            {
LABEL_771:
              v301 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
              if (!v301)
              {
                sub_100021320();
              }

              v301[1] = *(v9 - 26);
LABEL_828:
              *v301 = 0;
              *qword_100031620 = v301;
              qword_100031620 = v301;
              DWORD1(xmmword_100031610) = 1;
              goto LABEL_1416;
            }
          }

          if (*(v299 + 40) <= 2u)
          {
            if (v300 == 1)
            {
              v47 = "no-route is not permitted inside tables";
              goto LABEL_1651;
            }

            if (v300 == 2)
            {
              v47 = "dynamic addresses are not permitted inside tables";
              goto LABEL_1651;
            }
          }

          else
          {
            switch(v300)
            {
              case 3:
                v47 = "tables cannot contain tables";
                goto LABEL_1651;
              case 5:
                v47 = "urpf-failed is not permitted inside tables";
                goto LABEL_1651;
              case 6:
                v47 = "address ranges are not permitted inside tables";
                goto LABEL_1651;
            }
          }

          *&v572 = *(v299 + 40);
          v47 = "unknown address type %d";
          goto LABEL_1651;
        case 0x68u:
          v301 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
          if (!v301)
          {
            sub_100021320();
          }

          v301[2] = *v9;
          goto LABEL_828;
        case 0x69u:
          if (dword_100030BA8 && dword_100030C78 > 3)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 3;
          memset(c, 0, sizeof(c));
          v599 = 0u;
          v600 = 0u;
          v601 = 0u;
          v602 = 0u;
          v603 = 0u;
          v604 = 0u;
          v605 = 0u;
          v606 = 0u;
          v607 = 0u;
          v608 = 0u;
          v609 = 0u;
          v610 = 0u;
          v611 = 0u;
          *&v612 = 0;
          v4 = (v9 - 49);
          if (!*(v9 - 98))
          {
            v47 = "no scheduler specified!";
            goto LABEL_1651;
          }

          *&c[48] = *(v9 - 98);
          HIDWORD(v604) = *(v9 - 55);
          *&c[52] = *(v9 - 56);
          v1 = *v9;
          if (!*v9)
          {
            v47 = "no child queues specified";
            goto LABEL_1651;
          }

          if (!sub_10001E83C(c, *(v9 - 78), v1, *(v9 - 51), *(v9 - 50), v4))
          {
            goto LABEL_1416;
          }

          goto LABEL_1553;
        case 0x6Au:
          *&v612 = 0;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 4)
          {
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
            v316 = (v9 - 78);
            goto LABEL_872;
          }

          dword_100030C78 = 3;
          memset(c, 0, sizeof(c));
          v599 = 0uLL;
          v600 = 0uLL;
          v601 = 0uLL;
          v602 = 0uLL;
          v603 = 0uLL;
          v604 = 0uLL;
          v605 = 0uLL;
          v606 = 0uLL;
          v607 = 0uLL;
          v608 = 0uLL;
          v609 = 0uLL;
          v610 = 0uLL;
          v611 = 0uLL;
          *&v612 = 0;
          v344 = (v9 - 78);
          if (__strlcpy_chk() >= 0x40)
          {
            sub_10001D73C("queue name too long (max %d chars)", v345, v346, v347, v348, v349, v350, v351, 63);
            v65 = *v344;
            goto LABEL_1552;
          }

          free(*v344);
          if (*(v9 - 4))
          {
            v47 = "cannot specify tbrsize for queue";
            goto LABEL_1651;
          }

          if (*(v9 - 6) >= 0x100u)
          {
            goto LABEL_1251;
          }

          DWORD2(v604) = *(v9 - 6);
          if ((*(v9 - 26) & 0x20) != 0)
          {
            v451 = *(v9 - 5);
            DWORD1(v604) |= 1u;
          }

          else
          {
            v451 = *(v9 - 6);
          }

          DWORD2(v604) = v451;
          HIDWORD(v604) = *(v9 - 3);
          *&c[48] = *(v9 - 46);
          if (!sub_10001ED08(c, *(v9 - 52), *v9, *(v9 - 25), *(v9 - 24), (v9 - 23), v5, v6))
          {
            goto LABEL_1416;
          }

          v47 = "errors in queue definition";
          goto LABEL_1651;
        case 0x6Bu:
          qword_1000316E8 = 0x8000000000;
          xmmword_1000316C8 = 0u;
          unk_1000316D8 = 0u;
          xmmword_1000316A8 = 0u;
          unk_1000316B8 = 0u;
          xmmword_100031688 = 0u;
          unk_100031698 = 0u;
          xmmword_100031668 = 0u;
          unk_100031678 = 0u;
          xmmword_100031648 = 0u;
          unk_100031658 = 0u;
          xmmword_100031628 = 0u;
          *&word_100031638 = 0u;
          dword_1000316E0 = 1;
          word_100031638 = 100;
          goto LABEL_1416;
        case 0x6Cu:
          v202 = &xmmword_100031628;
          v594 = xmmword_1000316C8;
          v595 = unk_1000316D8;
          *&v596 = qword_1000316E8;
          v590 = xmmword_100031688;
          v591 = unk_100031698;
          v592 = xmmword_1000316A8;
          v593 = unk_1000316B8;
          v586 = xmmword_100031648;
          v587 = unk_100031658;
          v588 = xmmword_100031668;
          v589 = unk_100031678;
          goto LABEL_690;
        case 0x6Du:
          qword_1000316E8 = 0x8000000000;
          xmmword_100031628 = 0u;
          *&word_100031638 = 0u;
          xmmword_100031688 = 0u;
          unk_100031698 = 0u;
          xmmword_1000316C8 = 0u;
          unk_1000316D8 = 0u;
          xmmword_1000316A8 = 0u;
          unk_1000316B8 = 0u;
          xmmword_100031668 = 0u;
          unk_100031678 = 0u;
          xmmword_100031648 = 0u;
          unk_100031658 = 0u;
          dword_1000316E0 = 1;
          word_100031638 = 100;
          v590 = 0u;
          v591 = 0u;
          v588 = 0u;
          v589 = 0u;
          v586 = 0u;
          v587 = 0u;
          *v584 = 0u;
          v585 = *&word_100031638;
          *&v596 = 0x8000000000;
          v594 = 0u;
          v595 = unk_1000316D8;
          v592 = 0u;
          v593 = 0u;
          goto LABEL_1416;
        case 0x70u:
          if ((xmmword_100031628 & 1) == 0)
          {
            LODWORD(xmmword_100031628) = xmmword_100031628 | 1;
            *(&xmmword_100031628 + 8) = *v9;
            goto LABEL_1416;
          }

          v47 = "bandwidth cannot be respecified";
          goto LABEL_1651;
        case 0x71u:
          if ((xmmword_100031628 & 4) != 0)
          {
            v47 = "priority cannot be respecified";
          }

          else if ((xmmword_100031628 & 0x20) != 0)
          {
LABEL_924:
            v47 = "priority and weight are mutually exclusive";
          }

          else
          {
            if (*v9 < 0x100)
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 4;
              dword_1000316E0 = *v9;
              goto LABEL_1416;
            }

LABEL_1251:
            v47 = "priority out of range: max 255";
          }

          goto LABEL_1651;
        case 0x72u:
          if ((xmmword_100031628 & 0x10) != 0)
          {
            v47 = "qlimit cannot be respecified";
          }

          else
          {
            if (!*(v9 + 1))
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 0x10;
              HIDWORD(qword_1000316E8) = *v9;
              goto LABEL_1416;
            }

            v47 = "qlimit number too big";
          }

          goto LABEL_1651;
        case 0x73u:
          if ((xmmword_100031628 & 2) == 0)
          {
            LODWORD(xmmword_100031628) = xmmword_100031628 | 2;
            v48 = *v9;
            *(&xmmword_100031648 + 8) = *(v9 + 1);
            unk_100031640 = v48;
            v49 = *(v9 + 2);
            v50 = *(v9 + 3);
            v51 = *(v9 + 4);
            *(&xmmword_100031688 + 8) = *(v9 + 5);
            unk_100031680 = v51;
            *(&xmmword_100031668 + 8) = v50;
            unk_100031660 = v49;
            v52 = *(v9 + 6);
            v53 = *(v9 + 7);
            v54 = *(v9 + 8);
            *(&xmmword_1000316C8 + 8) = *(v9 + 9);
            unk_1000316C0 = v54;
            *(&xmmword_1000316A8 + 8) = v53;
            unk_1000316A0 = v52;
            goto LABEL_1416;
          }

          v47 = "scheduler cannot be respecified";
          goto LABEL_1651;
        case 0x74u:
          if ((xmmword_100031628 & 8) != 0)
          {
            v47 = "tbrsize cannot be respecified";
          }

          else
          {
            if (!*(v9 + 1))
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 8;
              LODWORD(qword_1000316E8) = *v9;
              goto LABEL_1416;
            }

            v47 = "tbrsize number too big";
          }

          goto LABEL_1651;
        case 0x75u:
          if ((xmmword_100031628 & 0x20) != 0)
          {
            v47 = "weight cannot be respecified";
          }

          else
          {
            if ((xmmword_100031628 & 4) != 0)
            {
              goto LABEL_924;
            }

            if (!*(v9 + 1))
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 0x20;
              dword_1000316E4 = *v9;
              goto LABEL_1416;
            }

            v47 = "weight number too big";
          }

          goto LABEL_1651;
        case 0x76u:
          *c = 0;
          LODWORD(v584[1]) = 0;
          v197 = strtold(*v9, c);
          v198 = v197;
          if (!*c)
          {
            goto LABEL_1325;
          }

          v199 = **c;
          if (v199 <= 0x4A)
          {
            if (v199 == 37)
            {
              if (!*(*c + 1))
              {
                if (v197 <= 0.0 || v197 > 100.0)
                {
                  v61 = "bandwidth spec out of range";
                  goto LABEL_1550;
                }

                LOWORD(v584[1]) = v197;
                WORD1(v584[1]) = 2;
                v198 = 0.0;
LABEL_1325:
                free(*v9);
                v584[0] = v198;
                if (v198 == 0.0)
                {
                  goto LABEL_1416;
                }

LABEL_1326:
                WORD1(v584[1]) = 1;
                goto LABEL_1416;
              }

LABEL_1247:
              v572 = *c;
              v61 = "unknown unit %s";
              goto LABEL_1550;
            }

            if (v199 != 71 || *(*c + 1) != 98 || *(*c + 2))
            {
              goto LABEL_1247;
            }

            v402 = 1000000000.0;
          }

          else if (v199 == 75)
          {
            if (*(*c + 1) != 98 || *(*c + 2))
            {
              goto LABEL_1247;
            }

            v402 = 1000.0;
          }

          else
          {
            if (v199 != 77)
            {
              if (v199 == 98 && !*(*c + 1))
              {
                goto LABEL_1325;
              }

              goto LABEL_1247;
            }

            if (*(*c + 1) != 98 || *(*c + 2))
            {
              goto LABEL_1247;
            }

            v402 = 1000000.0;
          }

          v198 = v198 * v402;
          goto LABEL_1325;
        case 0x77u:
          if ((*v9 & 0x8000000000000000) != 0)
          {
            v47 = "bandwidth number too big";
            goto LABEL_1651;
          }

          LOWORD(v584[1]) = 0;
          v584[0] = *v9;
          if (!v584[0])
          {
            goto LABEL_1416;
          }

          goto LABEL_1326;
        case 0x78u:
          LODWORD(v584[0]) = 1;
          DWORD2(v586) = 0;
          goto LABEL_1416;
        case 0x79u:
          LODWORD(v584[0]) = 1;
          DWORD2(v586) = *(v9 - 26);
          goto LABEL_1416;
        case 0x7Au:
          LODWORD(v584[0]) = 3;
          LODWORD(v584[1]) = 0;
          goto LABEL_1416;
        case 0x7Bu:
          LODWORD(v584[0]) = 3;
          LODWORD(v584[1]) = *(v9 - 26);
          goto LABEL_1416;
        case 0x7Cu:
          LODWORD(v584[0]) = 2;
          v59 = v581;
          *v581 = 0u;
          *(v59 + 1) = 0u;
          *(v59 + 2) = 0u;
          *(v59 + 3) = 0u;
          *(v59 + 4) = 0u;
          *(v59 + 5) = 0u;
          *(v59 + 6) = 0u;
          *(v59 + 7) = 0u;
          *(v59 + 8) = 0u;
          v59[18] = 0;
          goto LABEL_1416;
        case 0x7Du:
          LODWORD(v584[0]) = 2;
          v168 = *(v9 - 12);
          v169 = v581;
          *v581 = *(v9 - 13);
          *(v169 + 1) = v168;
          v170 = *(v9 - 11);
          v171 = *(v9 - 10);
          v172 = *(v9 - 8);
          *(v169 + 4) = *(v9 - 9);
          *(v169 + 5) = v172;
          *(v169 + 2) = v170;
          *(v169 + 3) = v171;
          v173 = *(v9 - 7);
          v174 = *(v9 - 6);
          v175 = *(v9 - 5);
          v169[18] = *(v9 - 8);
          *(v169 + 7) = v174;
          *(v169 + 8) = v175;
          *(v169 + 6) = v173;
          goto LABEL_1416;
        case 0x7Eu:
          LODWORD(v584[0]) = 4;
          v75 = v581;
          *v581 = 0u;
          *(v75 + 1) = 0u;
          *(v75 + 2) = 0u;
          *(v75 + 3) = 0u;
          v75[8] = 0;
          goto LABEL_1416;
        case 0x7Fu:
          LODWORD(v584[0]) = 4;
          v311 = v581;
          *v581 = *(v9 - 13);
          v312 = *(v9 - 12);
          v313 = *(v9 - 11);
          v314 = *(v9 - 10);
          v311[8] = *(v9 - 18);
          *(v311 + 2) = v313;
          *(v311 + 3) = v314;
          *(v311 + 1) = v312;
          goto LABEL_1416;
        case 0x80u:
        case 0x81u:
        case 0x83u:
        case 0x84u:
          v40 = v584[0] | *v9;
          goto LABEL_292;
        case 0x82u:
          v124 = *v9;
          if (!strcmp(*v9, "default"))
          {
            p_proto = 0x2000;
          }

          else
          {
            if (!strcmp(v124, "borrow"))
            {
              p_proto = 32;
              goto LABEL_1151;
            }

            if (!strcmp(v124, "red"))
            {
LABEL_1006:
              p_proto = 1;
            }

            else if (!strcmp(v124, "ecn") || !strcmp(v124, "red-ecn"))
            {
LABEL_1005:
              p_proto = 3;
            }

            else if (!strcmp(v124, "blue"))
            {
              p_proto = 0x10000;
            }

            else
            {
              if (strcmp(v124, "blue-ecn"))
              {
                if (!strcmp(v124, "sfb"))
                {
                  p_proto = 0x20000;
                  goto LABEL_1151;
                }

                if (!strcmp(v124, "sfb-ecn"))
                {
                  p_proto = 131074;
                  goto LABEL_1151;
                }

                if (strcmp(v124, "rio"))
                {
                  if (*v124 != 102 || v124[1] != 99 || v124[2])
                  {
                    v572 = *&v124;
                    v61 = "unknown cbq flag %s";
                    goto LABEL_1550;
                  }

                  p_proto = 0x40000;
                  goto LABEL_1151;
                }

                goto LABEL_1465;
              }

              p_proto = 65538;
            }
          }

          goto LABEL_1151;
        case 0x85u:
          v242 = *v9;
          if (!strcmp(*v9, "default"))
          {
            p_proto = 4096;
            goto LABEL_1151;
          }

          if (!strcmp(v242, "red"))
          {
            goto LABEL_1006;
          }

          if (!strcmp(v242, "ecn") || !strcmp(v242, "red-ecn"))
          {
            goto LABEL_1005;
          }

          if (!strcmp(v242, "blue"))
          {
            p_proto = 256;
          }

          else if (!strcmp(v242, "blue-ecn"))
          {
            p_proto = 258;
          }

          else
          {
            if (strcmp(v242, "sfb"))
            {
              if (!strcmp(v242, "sfb-ecn"))
              {
                p_proto = 514;
                goto LABEL_1151;
              }

              if (strcmp(v242, "rio"))
              {
                if (*v242 != 102 || v242[1] != 99 || v242[2])
                {
                  v572 = *&v242;
                  v61 = "unknown priq flag %s";
                  goto LABEL_1550;
                }

                p_proto = 1024;
                goto LABEL_1151;
              }

LABEL_1465:
              p_proto = 4;
              goto LABEL_1151;
            }

            p_proto = 512;
          }

LABEL_1151:
          v584[0] = p_proto;
          goto LABEL_1152;
        case 0x86u:
          v302 = &xmmword_1000316F0;
          qword_100031780 = 0;
          v303 = 0uLL;
          *(&xmmword_100031768 + 8) = 0u;
          goto LABEL_830;
        case 0x87u:
          v249 = &xmmword_1000316F0;
          v590 = xmmword_100031750;
          v591 = *&dword_100031760;
          v592 = *(&xmmword_100031768 + 8);
          v593.i64[0] = qword_100031780;
          v586 = *(&xmmword_100031708 + 8);
          v587 = xmmword_100031720;
          v588 = xmmword_100031730;
          v589 = unk_100031740;
LABEL_841:
          v315 = v249[1];
          *v584 = *v249;
          v585 = v315;
          goto LABEL_1416;
        case 0x8Au:
          if (byte_100031748)
          {
            goto LABEL_832;
          }

          v307 = *v9;
          v308 = (&xmmword_100031730 + 8);
          goto LABEL_1068;
        case 0x8Bu:
          v258 = v9 - 78;
          if (*(v9 - 78) >> 31)
          {
            goto LABEL_745;
          }

          if (byte_100031748)
          {
            goto LABEL_832;
          }

          v259 = *(v9 - 65);
          v260 = &xmmword_100031720;
          goto LABEL_1195;
        case 0x8Cu:
          if (byte_100031718)
          {
            goto LABEL_816;
          }

          v307 = *v9;
          v308 = &xmmword_100031708;
          goto LABEL_1068;
        case 0x8Du:
          v258 = v9 - 78;
          if (*(v9 - 78) >> 31)
          {
            goto LABEL_745;
          }

          if (byte_100031718)
          {
LABEL_816:
            v47 = "realtime already specified";
            goto LABEL_1651;
          }

          v259 = *(v9 - 65);
          v260 = &xmmword_1000316F0;
          goto LABEL_1195;
        case 0x8Eu:
          if (byte_100031778)
          {
            goto LABEL_936;
          }

          v307 = *v9;
          v308 = &xmmword_100031768;
          goto LABEL_1068;
        case 0x8Fu:
          v258 = v9 - 78;
          if (!(*(v9 - 78) >> 31))
          {
            if (byte_100031778)
            {
LABEL_936:
              v47 = "upperlimit already specified";
              goto LABEL_1651;
            }

            v259 = *(v9 - 65);
            v260 = &xmmword_100031750;
LABEL_1195:
            *v260 = v259;
            *(v260 + 4) = *v258;
            *(v260 + 24) = *(v9 - 13);
            *(v260 + 40) = 1;
            goto LABEL_1416;
          }

LABEL_745:
          v47 = "timing in curve out of range";
          goto LABEL_1651;
        case 0x90u:
          v60 = *v9;
          if (!strcmp(*v9, "default"))
          {
            v378 = 4096;
          }

          else if (!strcmp(v60, "red"))
          {
            v378 = 1;
          }

          else if (!strcmp(v60, "ecn") || !strcmp(v60, "red-ecn"))
          {
            v378 = 3;
          }

          else if (!strcmp(v60, "blue"))
          {
            v378 = 256;
          }

          else if (!strcmp(v60, "blue-ecn"))
          {
            v378 = 258;
          }

          else if (!strcmp(v60, "sfb"))
          {
            v378 = 512;
          }

          else if (!strcmp(v60, "sfb-ecn"))
          {
            v378 = 514;
          }

          else if (!strcmp(v60, "rio"))
          {
            v378 = 4;
          }

          else
          {
            if (*v60 != 102 || v60[1] != 99 || v60[2])
            {
              v572 = *&v60;
              v61 = "unknown hfsc flag %s";
LABEL_1550:
              sub_10001D73C(v61, v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
              goto LABEL_1551;
            }

            v378 = 1024;
          }

          LODWORD(qword_100031780) = qword_100031780 | v378;
          goto LABEL_1152;
        case 0x91u:
          v302 = &xmmword_100031788;
          qword_1000317C8 = 0;
          v303 = 0uLL;
          goto LABEL_837;
        case 0x92u:
          v202 = &xmmword_100031788;
          v586 = *(&xmmword_1000317A0 + 8);
          v587 = xmmword_1000317B8;
          *&v588 = qword_1000317C8;
LABEL_690:
          v279 = v202[1];
          *v584 = *v202;
          v585 = v279;
          goto LABEL_1416;
        case 0x95u:
          if (byte_1000317B0)
          {
            goto LABEL_832;
          }

          v307 = *v9;
          v308 = &xmmword_1000317A0;
LABEL_1068:
          *v308 = v307;
          *(v308 + 16) = 1;
          goto LABEL_1416;
        case 0x96u:
          if (!byte_1000317B0)
          {
            xmmword_100031788 = *(v9 - 39);
            dword_100031798 = *(v9 - 52);
            xmmword_1000317A0 = *(v9 - 13);
            byte_1000317B0 = 1;
            goto LABEL_1416;
          }

LABEL_832:
          v47 = "linkshare already specified";
          goto LABEL_1651;
        case 0x97u:
          v109 = *v9;
          v110 = &xmmword_1000317B8;
          goto LABEL_1065;
        case 0x98u:
          LODWORD(qword_1000317C8) = *v9;
          goto LABEL_1416;
        case 0x99u:
          v62 = *v9;
          if (!strcmp(*v9, "default"))
          {
            v379 = 4096;
          }

          else if (!strcmp(v62, "red"))
          {
            v379 = 1;
          }

          else if (!strcmp(v62, "ecn") || !strcmp(v62, "red-ecn"))
          {
            v379 = 3;
          }

          else if (!strcmp(v62, "blue"))
          {
            v379 = 256;
          }

          else if (!strcmp(v62, "blue-ecn"))
          {
            v379 = 258;
          }

          else if (!strcmp(v62, "sfb"))
          {
            v379 = 512;
          }

          else if (!strcmp(v62, "sfb-ecn"))
          {
            v379 = 514;
          }

          else if (!strcmp(v62, "rio"))
          {
            v379 = 4;
          }

          else
          {
            if (*v62 != 102 || v62[1] != 99 || v62[2])
            {
              v572 = *&v62;
              v61 = "unknown fairq flag %s";
              goto LABEL_1550;
            }

            v379 = 1024;
          }

          HIDWORD(qword_1000317C8) |= v379;
LABEL_1152:
          v78 = *v9;
          goto LABEL_1415;
        case 0x9Au:
        case 0xDCu:
        case 0xE6u:
        case 0xF0u:
        case 0xFDu:
        case 0x152u:
        case 0x16Bu:
        case 0x183u:
        case 0x199u:
        case 0x1B3u:
          goto LABEL_545;
        case 0x9Bu:
        case 0x9Du:
        case 0xDDu:
        case 0xDFu:
        case 0xE7u:
        case 0xE9u:
        case 0xF1u:
        case 0xF4u:
        case 0xFEu:
        case 0x100u:
        case 0x110u:
        case 0x112u:
        case 0x119u:
        case 0x11Bu:
        case 0x122u:
        case 0x124u:
        case 0x12Fu:
        case 0x131u:
        case 0x133u:
        case 0x135u:
        case 0x153u:
        case 0x15Fu:
        case 0x160u:
        case 0x167u:
        case 0x169u:
        case 0x19Au:
        case 0x1A2u:
        case 0x1A4u:
          goto LABEL_31;
        case 0x9Cu:
        case 0xDEu:
        case 0xE8u:
        case 0xF2u:
        case 0xFFu:
        case 0x111u:
        case 0x11Au:
        case 0x123u:
        case 0x130u:
        case 0x132u:
        case 0x151u:
        case 0x161u:
        case 0x168u:
        case 0x1A5u:
          v40 = *(v9 - 26);
          goto LABEL_292;
        case 0x9Eu:
          v96 = *v9;
          v42 = v9 - 52;
          *(*(*(v9 - 52) + 20) + 152) = *v9;
          *(*(v9 - 52) + 20) = v96;
          goto LABEL_291;
        case 0x9Fu:
          v584[0] = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
          if (!v584[0])
          {
            sub_100021304();
          }

          if (__strlcpy_chk() < 0x40)
          {
            free(*v9);
            v377 = v584[0];
            *(v584[0] + 19) = 0;
            *(v377 + 20) = v377;
            goto LABEL_1416;
          }

          v572 = *v9;
          v573 = 63;
          v221 = "queue name '%s' too long (max %d chars)";
          goto LABEL_779;
        case 0xA0u:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 6)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 5;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = *(v9 - 1664);
          v310 = *(v9 - 1663);
          if (v310 == 8 || v310 == 4)
          {
            v645 = *(v9 - 1663);
            v642 = *(v9 - 831);
            v643 = *(v9 - 830);
          }

          else if (v310 == 1)
          {
            v645 = 1;
            v661 = *(v9 - 1662);
          }

          HIBYTE(v646) = *(v9 - 364);
          v647 = *(v9 - 1248);
          v648 = *(v9 - 1247);
          v649 = *(v9 - 1246);
          v641 = *(v9 + 13);
          v632 = *(v9 + 31);
          v654 = *(v9 - 156);
          if (v9[13] && __strlcpy_chk() >= 0x40 || v9[14] && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1392;
          }

          v651 = *(v9 + 120);
          if (sub_10001DBA4(c, v9[10]))
          {
            goto LABEL_1553;
          }

          free(v9[10]);
          v409 = *(v9 + 24);
          v656 = *(v9 + 24);
          v657 = *(v9 + 25);
          v410 = v657;
          v411 = *(v9 + 24);
          if ((v411 & ~v657) != 0)
          {
            goto LABEL_1405;
          }

          v412 = v657 | v411;
          if (!v412 && !*(v9 - 22))
          {
            goto LABEL_1328;
          }

          v413 = *(v9 - 52);
          if (!v413)
          {
            goto LABEL_1328;
          }

          while (*v413 != 6)
          {
            v413 = *(v413 + 8);
            if (!v413)
            {
              if (v412)
              {
                sub_10001D73C("flags only apply to tcp", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
              }

              if (!*(v9 - 22))
              {
                goto LABEL_1553;
              }

              goto LABEL_1133;
            }
          }

LABEL_1328:
          if (*(v9 + 10))
          {
            v662 = *(v9 + 10);
            v645 |= 0x2000u;
          }

          if (*(v9 + 11))
          {
            v662 = *(v9 + 11);
            v645 |= 0x4000u;
          }

          if (*(v9 + 12))
          {
            v662 = *(v9 + 12);
            v645 |= 0x8000u;
          }

          v653 = *(v9 + 56);
          v453 = v646;
          if (!v653 && !v646)
          {
            v653 = (*v9 & 8) == 0;
          }

          v577 = v29;
          v454 = v9[8];
          if (!v454)
          {
            LODWORD(v576) = 0;
            LOBYTE(v485) = 0;
            v484 = 1;
            goto LABEL_1477;
          }

          v455 = 0;
          v456 = 0;
          LODWORD(v576) = 0;
          while (1)
          {
            v457 = *v454;
            if (*v454 > 4)
            {
              if (v457 > 6)
              {
                switch(v457)
                {
                  case 7:
                    if (v624)
                    {
                      v298 = "multiple 'overload' table definitions";
                      goto LABEL_1156;
                    }

                    if (__strlcpy_chk() >= 0x20)
                    {
                      v298 = "state option: strlcpy";
                      goto LABEL_1156;
                    }

                    v663 = v454[4];
                    break;
                  case 8:
                    if (v456)
                    {
                      v298 = "state locking option: multiple definitions";
                      goto LABEL_1156;
                    }

                    v645 |= *(v454 + 1);
                    v456 = 1;
                    break;
                  case 9:
                    v458 = *(v454 + 1);
                    if (*(v580 + v458))
                    {
                      v572 = *&(&off_10002C498)[2 * v458];
                      v298 = "state timeout %s multiple definitions";
                      goto LABEL_1156;
                    }

                    if ((v458 & 0xFFFFFFFE) == 0x16)
                    {
                      v455 = 1;
                    }

                    *(v580 + v458) = *(v454 + 2);
                    break;
                }

                goto LABEL_1382;
              }

              if (v457 == 5)
              {
                if (v639)
                {
                  v298 = "state option 'max-src-conn-rate' multiple definitions";
                  goto LABEL_1156;
                }

                v460 = *(v454 + 1);
                if (!v460 || !*(v454 + 2))
                {
                  v298 = "'max-src-conn-rate' values must be > 0";
                  goto LABEL_1156;
                }

                if (v460 > 0x418937)
                {
                  *&v572 = 4294967;
                  v298 = "'max-src-conn-rate' maximum rate must be < %u";
                  goto LABEL_1156;
                }

                v639 = *(v454 + 1);
                v640 = *(v454 + 2);
LABEL_1371:
                v459 = v645 | 0x60;
LABEL_1381:
                v645 = v459;
                goto LABEL_1382;
              }

              if (v457 == 6)
              {
                if (v636)
                {
                  v298 = "state option 'max-src-nodes' multiple definitions";
                  goto LABEL_1156;
                }

                if (!*(v454 + 1))
                {
                  v298 = "'max-src-nodes' must be > 0";
                  goto LABEL_1156;
                }

                v636 = *(v454 + 1);
                goto LABEL_1371;
              }
            }

            else if (v457 <= 1)
            {
              if (!v457)
              {
                if (v635)
                {
                  v298 = "state option 'max' multiple definitions";
                  goto LABEL_1156;
                }

                v635 = *(v454 + 1);
                goto LABEL_1382;
              }

              if (v457 == 1)
              {
                if ((v645 & 0x10) != 0)
                {
                  v298 = "state option 'sync' multiple definitions";
                  goto LABEL_1156;
                }

                v459 = v645 | 0x10;
                goto LABEL_1381;
              }
            }

            else
            {
              switch(v457)
              {
                case 2:
                  if (v576)
                  {
                    v298 = "state option 'source-track' multiple definitions";
                    goto LABEL_1156;
                  }

                  LODWORD(v576) = v454[4];
LABEL_1380:
                  v459 = v645 | 0x20;
                  goto LABEL_1381;
                case 3:
                  if (v637)
                  {
                    v298 = "state option 'max-src-states' multiple definitions";
                    goto LABEL_1156;
                  }

                  if (!*(v454 + 1))
                  {
                    v298 = "'max-src-states' must be > 0";
                    goto LABEL_1156;
                  }

                  v637 = *(v454 + 1);
                  goto LABEL_1380;
                case 4:
                  if (v638)
                  {
                    v298 = "state option 'max-src-conn' multiple definitions";
                    goto LABEL_1156;
                  }

                  if (!*(v454 + 1))
                  {
                    v298 = "'max-src-conn' must be > 0";
                    goto LABEL_1156;
                  }

                  v638 = *(v454 + 1);
                  goto LABEL_1371;
              }
            }

LABEL_1382:
            v461 = *(v454 + 5);
            free(v454);
            v454 = v461;
            if (!v461)
            {
              v453 = v646;
              v409 = v656;
              v410 = v657;
              v484 = v455 == 0;
              v485 = v456 != 0;
LABEL_1477:
              if (!v453 && !v409 && !v410 && !*(v9 + 18) && (*v9 & 1) == 0 && v653)
              {
                v656 = sub_10000BA8C("S");
                v657 = sub_10000BA8C("SA");
              }

              if (v635)
              {
                v486 = v484;
              }

              else
              {
                v486 = 0;
              }

              if (v486)
              {
                v633[11] = vmul_s32(vdup_n_s32(v635 / 0xA), 0xC00000006);
              }

              v487 = v645;
              if ((v645 & 0x20) != 0)
              {
                if (v576 == 2 && v636)
                {
                  v298 = "'max-src-nodes' is incompatible with 'source-track global'";
                  goto LABEL_1156;
                }

                if (v576 == 2 && v638)
                {
                  v298 = "'max-src-conn' is incompatible with 'source-track global'";
                  goto LABEL_1156;
                }

                if (v576 == 2 && v640)
                {
                  v298 = "'max-src-conn-rate' is incompatible with 'source-track global'";
                  goto LABEL_1156;
                }

                if (v634 < v640)
                {
                  v634 = v640;
                }

                if (v576 == 3)
                {
                  v487 = v645 | 0x60;
                  v645 |= 0x60u;
                }
              }

              if (v653 != 0 && !v485)
              {
                v487 |= dword_100030C74;
                v645 = v487;
              }

              if (*(v9 + 18))
              {
                v645 = v487 | 2;
              }

              v659 = *(v9 + 19);
              v488 = *(v9 - 26);
              v489 = v654;
              if (v488 && !v654)
              {
                v489 = *(v488 + 80);
                v654 = *(v488 + 80);
                while (1)
                {
                  v488 = *(v488 + 104);
                  if (!v488)
                  {
                    break;
                  }

                  if (*(v488 + 80) != v489)
                  {
                    v489 = 0;
                    v654 = 0;
                    break;
                  }
                }
              }

              v490 = *(v9 - 24);
              if (v490)
              {
                v491 = v489 == 0;
              }

              else
              {
                v491 = 0;
              }

              if (v491)
              {
                v489 = *(v490 + 80);
                v654 = *(v490 + 80);
                while (1)
                {
                  v490 = *(v490 + 104);
                  if (!v490)
                  {
                    break;
                  }

                  if (*(v490 + 80) != v489)
                  {
                    v489 = 0;
                    v654 = 0;
                    break;
                  }
                }
              }

              v492 = *(v9 - 824);
              if (*(v9 - 824))
              {
                if (!HIBYTE(v646))
                {
                  v298 = "direction must be explicit with rules that specify routing";
                  goto LABEL_1156;
                }

                v660 = *(v9 - 824);
                v629 = *(v9 - 823);
                v493 = *(v9 - 102);
                if (v493)
                {
                  *v579 = *v493;
                }
              }

              else
              {
                v492 = v660;
              }

              v512 = v9 - 104;
              if (v492 < 2)
              {
                goto LABEL_1832;
              }

              v513 = *v512;
              if (*v512 && !v489)
              {
                v514 = *(v513 + 80);
                v654 = v513[80];
                while (1)
                {
                  v513 = *(v513 + 13);
                  if (!v513)
                  {
                    break;
                  }

                  if (*(v513 + 80) != v514)
                  {
                    v654 = 0;
                    break;
                  }
                }
              }

              sub_10001F1D4(v9 - 104, &v654);
              v515 = *v512;
              if (!*v512)
              {
                v298 = "no routing address with matching address family found.";
                goto LABEL_1156;
              }

              if ((v629 & 0xF) != 4)
              {
                if ((v629 & 0xF) == 0)
                {
                  if (*(v515 + 13) || (v547 = *(v515 + 40), v547 == 3) || v547 == 2 && ((v515[41] & 8) == 0 || (v515[strlen(*v512) - 1] - 48) >= 0xA))
                  {
                    v629 |= 4u;
                    goto LABEL_1579;
                  }
                }

                v548 = sub_10001F284(v515, "tables are only supported in round-robin routing pools");
                v29 = v577;
                if (!v548)
                {
                  v515 = *v512;
                  if ((v629 & 0xF) == 4)
                  {
                    goto LABEL_1580;
                  }

                  v549 = sub_10001F2F0(*v512, "interface (%s) is only supported in round-robin routing pools");
                  v29 = v577;
                  if (!v549)
                  {
LABEL_1579:
                    v515 = *v512;
                    goto LABEL_1580;
                  }
                }

LABEL_1553:
                v9 -= 26 * v29;
                v11 -= 2 * v29;
                v7 = *v11;
                v8 = &unk_100031000;
                goto LABEL_1554;
              }

LABEL_1580:
              if (!*(v515 + 13) || (v629 & 0xF) == 4)
              {
LABEL_1832:
                if (v9[11])
                {
                  if (__strlcpy_chk() >= 0x40)
                  {
                    *&v572 = 63;
                    v298 = "rule qname too long (max %d chars)";
                    goto LABEL_1156;
                  }

                  free(v9[11]);
                }

                v0 = v9[12];
                if (v0)
                {
                  if (__strlcpy_chk() >= 0x40)
                  {
                    *&v572 = 63;
                    v298 = "rule pqname too long (max %d chars)";
                    goto LABEL_1156;
                  }

                  free(v9[12]);
                }

                v545 = *(v9 + 121);
                if (v653)
                {
                  if (v545 <= 1)
                  {
                    LOBYTE(v545) = 1;
                  }

                  v664 = v545;
                }

                else if (*(v9 + 121))
                {
                  v298 = "extfilter requires keep state";
                  goto LABEL_1156;
                }

                sub_10001DC08(c, *(v9 - 130), *v512, *(v9 - 52), *(v9 - 22), *(v9 - 26), *(v9 - 25), *(v9 - 24), *(v9 - 23), v9[1], v9[2], v9[4], "");
LABEL_1201:
                v29 = v577;
                goto LABEL_1416;
              }

              v298 = "r.rpool.opts must be PF_POOL_ROUNDROBIN";
LABEL_1156:
              sub_10001D73C(v298, v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
LABEL_1263:
              v29 = v577;
              goto LABEL_1553;
            }
          }

        case 0xA1u:
          v302 = &xmmword_1000317D0;
          v303 = 0uLL;
LABEL_830:
          v302[6] = v303;
          v302[7] = v303;
          v302[4] = v303;
          v302[5] = v303;
LABEL_837:
          v302[2] = v303;
          v302[3] = v303;
LABEL_838:
          *v302 = v303;
          v302[1] = v303;
          goto LABEL_1416;
        case 0xA2u:
          v588 = xmmword_100031810;
          v589 = *&qword_100031820;
          v590 = *(&xmmword_100031828 + 8);
          v591 = *&qword_100031840;
          *v584 = xmmword_1000317D0;
          v585 = *&qword_1000317E0;
          v586 = xmmword_1000317F0;
          v587 = *&dword_100031800;
          goto LABEL_1416;
        case 0xA3u:
          *(&xmmword_100031828 + 8) = 0u;
          *&qword_100031840 = 0u;
          xmmword_100031810 = 0u;
          *&qword_100031820 = 0u;
          xmmword_1000317F0 = 0u;
          *&dword_100031800 = 0u;
          xmmword_1000317D0 = 0u;
          *&qword_1000317E0 = 0u;
          *v584 = 0u;
          v585 = 0u;
          v586 = 0u;
          v587 = 0u;
          v588 = 0u;
          v589 = 0u;
          v590 = 0u;
          v591 = 0u;
          goto LABEL_1416;
        case 0xA6u:
          if (*(&xmmword_1000317D0 + 1))
          {
            *(*(*v9 + 3) + 16) = *(&xmmword_1000317D0 + 1);
          }

          *(&xmmword_1000317D0 + 1) = *v9;
          goto LABEL_1416;
        case 0xA7u:
          if (qword_1000317E0)
          {
            *(*(*v9 + 3) + 16) = qword_1000317E0;
          }

          qword_1000317E0 = *v9;
          goto LABEL_1416;
        case 0xA8u:
          if ((xmmword_1000317D0 & 1) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 1;
            byte_1000317E8 |= *v9;
            byte_1000317E9 |= *(v9 + 1);
            word_1000317EA |= *(v9 + 1);
            word_1000317EC |= *(v9 + 2);
            goto LABEL_1416;
          }

          v47 = "flags cannot be redefined";
          goto LABEL_1651;
        case 0xA9u:
          if ((xmmword_1000317D0 & 2) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 2;
            *&xmmword_1000317F0 = *v9;
            goto LABEL_1416;
          }

          v47 = "icmp-type cannot be redefined";
          goto LABEL_1651;
        case 0xAAu:
          if ((xmmword_1000317D0 & 4) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 4;
            DWORD2(xmmword_1000317F0) = *v9;
            goto LABEL_1416;
          }

          v47 = "tos cannot be redefined";
          goto LABEL_1651;
        case 0xABu:
          if ((xmmword_1000317D0 & 0x20) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 0x20;
            HIDWORD(xmmword_1000317F0) = *v9;
            goto LABEL_1416;
          }

          v47 = "dscp cannot be redefined";
          goto LABEL_1651;
        case 0xACu:
          if ((xmmword_1000317D0 & 0x40) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 0x40;
            dword_100031800 = *v9;
            goto LABEL_1416;
          }

          v47 = "sc cannot be redefined";
          goto LABEL_1651;
        case 0xADu:
          if ((xmmword_1000317D0 & 8) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 8;
            dword_100031808 = *v9;
            *&xmmword_100031810 = v9[1];
            goto LABEL_1416;
          }

          v47 = "modulate or keep cannot be redefined";
          goto LABEL_1651;
        case 0xAEu:
          DWORD2(xmmword_100031810) = 1;
          goto LABEL_1416;
        case 0xAFu:
          HIDWORD(xmmword_100031810) = 1;
          goto LABEL_1416;
        case 0xB0u:
          if (!qword_100031820)
          {
            qword_100031820 = *v9;
            goto LABEL_1416;
          }

LABEL_787:
          v47 = "label cannot be redefined";
          goto LABEL_1651;
        case 0xB1u:
          if (xmmword_100031828)
          {
            v47 = "queue cannot be redefined";
            goto LABEL_1651;
          }

          v109 = *v9;
          v110 = &xmmword_100031828;
LABEL_1065:
          *v110 = v109;
          goto LABEL_1416;
        case 0xB2u:
          qword_100031838 = *v9;
          goto LABEL_1416;
        case 0xB3u:
          qword_100031840 = *v9;
          byte_100031848 = *(v9 - 52);
          goto LABEL_1416;
        case 0xB4u:
          v305 = floor(*v9 * 4294967300.0 + 0.5);
          if (v305 >= 0.0 && v305 <= 4294967300.0)
          {
            v306 = v305;
            if (v305 <= 1)
            {
              v306 = 1;
            }

            dword_100031804 = v306;
            goto LABEL_1416;
          }

          v572 = v305;
          v47 = "invalid probability: %lf";
          goto LABEL_1651;
        case 0xB5u:
          if (!*v9)
          {
            goto LABEL_859;
          }

          dword_10003184C = *v9;
          goto LABEL_1416;
        case 0xB6u:
          v97 = if_nametoindex(*v9);
          if (!v97)
          {
            goto LABEL_859;
          }

          dword_10003184C = v97;
          goto LABEL_1416;
        case 0xB7u:
          if ((xmmword_1000317D0 & 0x20) == 0)
          {
            byte_100031849 = *v9;
            goto LABEL_1416;
          }

          v47 = "extfilter cannot be redefined";
          goto LABEL_1651;
        case 0xB8u:
          *c = 0;
          v66 = strtod(*v9, c);
          v67 = *c;
          v68 = **c;
          if (v68 == 37)
          {
            v66 = v66 * 0.01;
            ++*c;
            v68 = *(v67 + 1);
          }

          if (!v68)
          {
            free(*v9);
            v584[0] = *&v66;
            goto LABEL_1416;
          }

          v572 = *v9;
          v61 = "invalid probability: %s";
          goto LABEL_1550;
        case 0xB9u:
          *v584 = *v9;
          goto LABEL_1416;
        case 0xBAu:
        case 0xCAu:
        case 0xE3u:
        case 0x149u:
        case 0x14Eu:
        case 0x163u:
        case 0x19Du:
          LODWORD(v584[0]) = 0;
          goto LABEL_1416;
        case 0xBBu:
          v309 = *(v9 + 2);
          LODWORD(v584[0]) = *v9;
          WORD2(v584[0]) = v309;
          v252 = 1;
LABEL_1055:
          LOBYTE(v584[0]) = v252;
          goto LABEL_1416;
        case 0xBCu:
          if (byte_100030C70)
          {
            v44 = 8;
          }

          else
          {
            v44 = 0;
          }

          goto LABEL_438;
        case 0xBDu:
          BYTE1(v584[0]) = 0;
          goto LABEL_524;
        case 0xBEu:
          BYTE1(v584[0]) = 1;
LABEL_524:
          *(v584 + 2) = 0;
          goto LABEL_1416;
        case 0xBFu:
          if (*(v9 - 26) >= 0x100)
          {
            v572 = *(v9 - 26);
            v47 = "illegal ttl value %d";
            goto LABEL_1651;
          }

          BYTE1(v584[0]) = 1;
          WORD1(v584[0]) = *(v9 - 26);
LABEL_934:
          WORD2(v584[0]) = 0;
          goto LABEL_1416;
        case 0xC0u:
        case 0xC1u:
          v44 = 4;
          goto LABEL_438;
        case 0xC2u:
          BYTE1(v584[0]) = 4;
          WORD1(v584[0]) = *(v9 - 26);
          v79 = 771;
          goto LABEL_1159;
        case 0xC3u:
          BYTE1(v584[0]) = 4;
          WORD1(v584[0]) = 771;
          goto LABEL_775;
        case 0xC4u:
          BYTE1(v584[0]) = 4;
          WORD1(v584[0]) = *(v9 - 78);
LABEL_775:
          WORD2(v584[0]) = *(v9 - 26);
          goto LABEL_1416;
        case 0xC5u:
          v44 = 8;
LABEL_438:
          BYTE1(v584[0]) = v44;
          *(v584 + 2) = 17040131;
          goto LABEL_1416;
        case 0xC6u:
          v185 = *v9;
          v186 = 2;
          goto LABEL_641;
        case 0xC7u:
          v80 = *v9;
          if (*v9 > 0xFF)
          {
            goto LABEL_271;
          }

          v40 = *&v80 | 0x300;
          goto LABEL_292;
        case 0xC8u:
          v185 = *v9;
          v186 = 30;
LABEL_641:
          v267 = sub_10001F380(v185, v186);
          v584[0] = v267;
          free(*v9);
          if (!v267)
          {
            goto LABEL_1553;
          }

          goto LABEL_1416;
        case 0xC9u:
          v80 = *v9;
          if (*v9 <= 0xFF)
          {
            v40 = *&v80 | 0x100;
LABEL_292:
            v584[0] = v40;
            goto LABEL_1416;
          }

LABEL_271:
          v572 = v80;
          v47 = "invalid icmp code %lu";
          goto LABEL_1651;
        case 0xCBu:
          v46 = 1;
          goto LABEL_856;
        case 0xCCu:
        case 0xE4u:
          v46 = 2;
          goto LABEL_856;
        case 0xCDu:
          goto LABEL_704;
        case 0xCEu:
          goto LABEL_739;
        case 0xCFu:
          LOWORD(v584[0]) = 0;
          goto LABEL_704;
        case 0xD0u:
          LOWORD(v584[0]) = *v9;
LABEL_704:
          BYTE2(v584[0]) = 0;
          goto LABEL_1416;
        case 0xD1u:
          BYTE2(v584[0]) = 1;
          goto LABEL_702;
        case 0xD2u:
          v83 = *(v9 - 104);
          goto LABEL_738;
        case 0xD3u:
          v83 = *v9;
LABEL_738:
          LOWORD(v584[0]) = v83;
LABEL_739:
          BYTE2(v584[0]) = 1;
          goto LABEL_1416;
        case 0xD4u:
          v45 = 1;
          goto LABEL_736;
        case 0xD5u:
          LOBYTE(v584[0]) = *(v9 - 208) | 1;
          v76 = *(v9 - 207);
          goto LABEL_604;
        case 0xD6u:
          v45 = *v9;
          BYTE2(v584[0]) = *(v9 + 2);
          goto LABEL_736;
        case 0xD7u:
          LOBYTE(v584[0]) = *v9 | *(v9 - 416);
          BYTE1(v584[0]) = *(v9 + 1);
          if (BYTE1(v584[0]))
          {
            goto LABEL_1416;
          }

          v76 = *(v9 - 415);
          goto LABEL_604;
        case 0xD8u:
          v45 = 2;
          goto LABEL_736;
        case 0xD9u:
        case 0xDAu:
          v45 = 4;
LABEL_736:
          LOWORD(v584[0]) = v45;
          goto LABEL_1416;
        case 0xDBu:
          *c = 0;
          LOBYTE(v584[0]) = 0;
          v203 = *v9;
          if (!strncmp(*v9, "pflog", 5uLL))
          {
            v392 = strtonum(v203 + 5, 0, 255, c);
            if (!*c)
            {
              free(*v9);
              BYTE1(v584[0]) = v392;
              goto LABEL_1416;
            }

            v572 = *v9;
            v573 = *c;
            v61 = "%s: %s";
          }

          else
          {
            v572 = *&v203;
            v61 = "%s: should be a pflog interface";
          }

          goto LABEL_1550;
        case 0xE0u:
          v99 = *v9;
          v42 = v9 - 52;
          *(*(*(v9 - 52) + 4) + 24) = *v9;
          *(*(v9 - 52) + 4) = v99;
          goto LABEL_291;
        case 0xE1u:
          v584[0] = *v9;
          v584[0][16] = *(v9 - 26);
          goto LABEL_1416;
        case 0xE2u:
          v584[0] = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
          if (!v584[0])
          {
            sub_1000212E8();
          }

          v283 = __strlcpy_chk();
          v284 = *v9;
          if (v283 <= 0xF)
          {
            v375 = sub_10000BF5C(v284);
            if (v375)
            {
              *(v584[0] + 5) = *(v375 + 96);
            }

            free(*v9);
            v376 = v584[0];
            v584[0][16] = 0;
            *(v376 + 3) = 0;
            *(v376 + 4) = v376;
            goto LABEL_1416;
          }

          free(v284);
          v285 = v584[0];
          goto LABEL_1204;
        case 0xE5u:
          v46 = 30;
          goto LABEL_856;
        case 0xEAu:
        case 0x113u:
        case 0x134u:
        case 0x136u:
          v41 = *v9;
          v42 = v9 - 52;
          *(*(*(v9 - 52) + 2) + 8) = *v9;
          *(*(v9 - 52) + 2) = v41;
          goto LABEL_291;
        case 0xEBu:
          v286 = *v9;
          if (!*v9)
          {
            v47 = "proto 0 cannot be used";
            goto LABEL_1651;
          }

          v287 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
          v584[0] = v287;
          if (!v287)
          {
            sub_1000212CC();
          }

          *v287 = v286;
          goto LABEL_1220;
        case 0xECu:
          v128 = getprotobyname(*v9);
          if (!v128)
          {
            v572 = *v9;
            v61 = "unknown protocol %s";
            goto LABEL_1550;
          }

          p_proto = v128->p_proto;
          goto LABEL_1151;
        case 0xEDu:
          if (*v9 < 0x100)
          {
            goto LABEL_1416;
          }

          v47 = "protocol outside range";
          goto LABEL_1651;
        case 0xEEu:
          *&v586 = 0;
          v69 = 0uLL;
LABEL_186:
          *v584 = v69;
          v585 = v69;
          goto LABEL_1416;
        case 0xEFu:
          *v584 = *(v9 - 26);
          *&v586 = *(v9 - 26);
          v585 = *v9;
          goto LABEL_1416;
        case 0xF3u:
          v234 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300408DF105C4uLL);
          v584[0] = v234;
          if (!v234)
          {
            sub_1000212B0();
          }

          *v234 = *v9;
          *(v584[0] + 3) = v584[0];
          goto LABEL_1416;
        case 0xF5u:
        case 0x11Cu:
        case 0x125u:
          v43 = *v9;
          v42 = v9 - 52;
          *(*(*(v9 - 52) + 3) + 16) = *v9;
          *(*(v9 - 52) + 3) = v43;
          goto LABEL_291;
        case 0xF6u:
        case 0xF8u:
          v584[1] = 0;
          goto LABEL_545;
        case 0xF7u:
          goto LABEL_215;
        case 0xF9u:
          v112 = *v9;
          if (!*v9)
          {
            goto LABEL_215;
          }

          while (v112[40] != 5)
          {
            v112 = *(v112 + 13);
            if (!v112)
            {
LABEL_215:
              *v584 = *v9;
              goto LABEL_1416;
            }
          }

          v572 = COERCE_DOUBLE("urpf-failed is not permitted in a destination address");
          v47 = "%s";
          goto LABEL_1651;
        case 0xFAu:
          v584[0] = *v9;
          v584[1] = 0;
          goto LABEL_1416;
        case 0xFBu:
          v584[0] = *(v9 - 52);
          goto LABEL_785;
        case 0xFCu:
          v584[0] = 0;
          goto LABEL_785;
        case 0x101u:
          v193 = v9 - 52;
          v304 = *(v9 - 52);
          if (*v9)
          {
            if (v304)
            {
              *(*(v304 + 112) + 104) = *v9;
              goto LABEL_783;
            }

            v584[0] = *v9;
          }

          else
          {
            v584[0] = *(v9 - 52);
          }

          goto LABEL_1416;
        case 0x102u:
          v40 = *v9;
          if (*v9)
          {
            do
            {
              *(v40 + 81) = *(v9 - 26);
              v40 = *(v40 + 104);
            }

            while (v40);
LABEL_31:
            v40 = *v9;
          }

          goto LABEL_292;
        case 0x103u:
          v111 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v584[0] = v111;
          if (!v111)
          {
            sub_100021294();
          }

          v111[40] = 1;
          goto LABEL_289;
        case 0x104u:
          v111 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v584[0] = v111;
          if (!v111)
          {
            sub_100021294();
          }

          v111[40] = 5;
LABEL_289:
          *(v111 + 13) = 0;
          v111[81] = *(v9 - 26);
          *(v111 + 14) = v111;
          goto LABEL_1416;
        case 0x105u:
          v118 = sub_10000C294(*v9);
          v584[0] = v118;
          v119 = *v9;
          goto LABEL_228;
        case 0x106u:
          v577 = v29;
          v289 = (v9 - 52);
          v290 = sub_10000C294(*(v9 - 52));
          if (v290)
          {
            v291 = v290;
            v292 = sub_10000C294(*v9);
            if (v292)
            {
              v293 = v292;
              if (v291[5].u8[0] != v292[5].u8[0] || v291[2].i8[8] || v292[2].i8[8] || ((v294 = sub_100000ACC(v291[1].i64), v291[5].i8[0] != 2) ? (v295 = 128) : (v295 = 32), v294 != v295 || ((v296 = sub_100000ACC(v293[1].i64), v293[5].i8[0] != 2) ? (v297 = 128) : (v297 = 32), v296 != v297 || v291[6].i64[1] || v291[5].i8[1] || v293[6].i64[1] || v293[5].i8[1])))
              {
                free(v291);
                free(v293);
                free(*v289);
                free(*v9);
                v298 = "invalid address range";
                goto LABEL_1156;
              }

              v291[1] = *v293;
              v291[2].i8[8] = 6;
              v584[0] = v291;
              free(v293);
              free(*v289);
              free(*v9);
              goto LABEL_1201;
            }
          }

          free(*v289);
          free(*v9);
          sub_10001D73C("could not parse host specification", v325, v326, v327, v328, v329, v330, v331, SLOBYTE(v572));
          goto LABEL_1263;
        case 0x107u:
          *c = 0;
          if (asprintf(c, "%s/%lld", *(v9 - 52), *v9) == -1)
          {
            sub_100021278();
          }

          free(*(v9 - 52));
          goto LABEL_227;
        case 0x108u:
          *c = 0;
          if (asprintf(c, "%lld/%lld", *(v9 - 52), *v9) == -1)
          {
            sub_100021278();
          }

LABEL_227:
          v118 = sub_10000C294(*c);
          v584[0] = v118;
          v119 = *c;
LABEL_228:
          free(v119);
          if (v118)
          {
            goto LABEL_1416;
          }

          v47 = "could not parse host specification";
          goto LABEL_1651;
        case 0x10Au:
          if (*v9 <= 0x80)
          {
            v338 = *(v9 - 52);
            for (v584[0] = v338; v338; v338 = v338[6].i64[1])
            {
              v37 = sub_10000BB08(v338, *v9, v37, v38);
            }

            goto LABEL_1416;
          }

          v47 = "bit number too big";
          goto LABEL_1651;
        case 0x10Bu:
          if (strlen(*(v9 - 26)) >= 0x20)
          {
            v572 = *(v9 - 26);
            v209 = "table name '%s' too long";
            goto LABEL_1112;
          }

          v342 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v584[0] = v342;
          if (!v342)
          {
            sub_10002125C();
          }

          v342[40] = 3;
          if (__strlcpy_chk() >= 0x20)
          {
            sub_100021240();
          }

          free(*(v9 - 26));
LABEL_929:
          v343 = v584[0];
          *(v584[0] + 13) = 0;
          *(v343 + 14) = v343;
LABEL_1416:
          v465 = &v9[-26 * v29];
          v11 -= 2 * v29;
          v9 = v465 + 26;
          *(v465 + 13) = *v584;
          v466 = v585;
          v467 = v586;
          v468 = v588;
          *(v465 + 16) = v587;
          *(v465 + 17) = v468;
          *(v465 + 14) = v466;
          *(v465 + 15) = v467;
          v469 = v589;
          v470 = v590;
          v471 = v592;
          *(v465 + 20) = v591;
          *(v465 + 21) = v471;
          *(v465 + 18) = v469;
          *(v465 + 19) = v470;
          v472 = v593;
          v473 = v594;
          v474 = v596;
          *(v465 + 24) = v595;
          *(v465 + 25) = v474;
          *(v465 + 22) = v472;
          *(v465 + 23) = v473;
          v475 = word_100029A52[v28] - 147;
          v476 = *v11 + word_100029DC8[v475];
          if (v476 <= 0x345 && word_10002856E[v476] == *v11)
          {
            v20 = word_100028BFA[v476];
          }

          else
          {
            v20 = word_100029F1A[v475];
          }

          v8 = &unk_100031000;
          goto LABEL_1565;
        case 0x10Cu:
          v213 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v584[0] = v213;
          if (!v213)
          {
            sub_10002121C(v9);
          }

          v213[40] = 4;
          if (__strlcpy_chk() >= 0x20)
          {
            *&v572 = 31;
            v221 = "route label too long, max %u chars";
LABEL_779:
            sub_10001D73C(v221, v214, v215, v216, v217, v218, v219, v220, SLOBYTE(v572));
            free(*v9);
            v65 = v584[0];
            goto LABEL_1552;
          }

          v374 = v584[0];
          *(v584[0] + 13) = 0;
          *(v374 + 14) = v374;
          goto LABEL_1152;
        case 0x10Eu:
          *c = 0;
          if (sub_10001F428(*v9, c) == -1)
          {
            v572 = *v9;
            v61 = "%s is not a number";
            goto LABEL_1550;
          }

          p_proto = *c;
          goto LABEL_1151;
        case 0x10Fu:
          v136 = *(v9 - 26);
          v137 = *v136;
          v577 = v29;
          if (v137 < 0)
          {
            v138 = __maskrune(v137, 0x100uLL);
          }

          else
          {
            v138 = _DefaultRuneLocale.__runetype[v137] & 0x100;
          }

          if (!v138)
          {
            sub_10001D73C("invalid interface name '%s'", v0, v1, v2, v3, v4, v5, v6, v136);
            v95 = v136;
            goto LABEL_1262;
          }

          v380 = *(v9 - 26);
          v381 = strrchr(v380, 58);
          if (v381)
          {
            v382 = v381;
            v383 = 0;
            do
            {
              if (!strcmp(v382 + 1, "network"))
              {
                v391 = 1;
              }

              else if (!strcmp(v382 + 1, "broadcast"))
              {
                v391 = 2;
              }

              else if (!strcmp(v382 + 1, "peer"))
              {
                v391 = 4;
              }

              else
              {
                if (v382[1] != 48 || v382[2])
                {
                  sub_10001D73C("interface %s has bad modifier", v384, v385, v386, v387, v388, v389, v390, v380);
                  v95 = v136;
                  goto LABEL_1262;
                }

                v391 = 8;
              }

              v383 |= v391;
              *v382 = 0;
              v380 = *(v9 - 26);
              v382 = strrchr(v380, 58);
            }

            while (v382);
          }

          else
          {
            v383 = 0;
          }

          if ((v383 & (v383 - 1) & 6) != 0)
          {
            free(v136);
            v298 = "illegal combination of interface modifiers";
            goto LABEL_1156;
          }

          v427 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v584[0] = v427;
          v29 = v577;
          if (!v427)
          {
            sub_100020A18();
          }

          v427[5].i8[0] = 0;
          sub_10000BB08(v427, 0x80u, v428, v429);
          v430 = v584[0];
          v584[0][40] = 2;
          v430[41] = v383;
          v431 = __strlcpy_chk();
          free(v136);
          v285 = v584[0];
          if (v431 < 0x10)
          {
            *(v584[0] + 13) = 0;
            *(v285 + 14) = v285;
            goto LABEL_1416;
          }

          goto LABEL_1204;
        case 0x114u:
          v228 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
          v584[0] = v228;
          if (!v228)
          {
            sub_100021200();
          }

          *v228 = *v9;
          *(v584[0] + 1) = *(v9 + 1);
          v229 = v584[0];
          if (*(v9 + 2))
          {
            LOBYTE(v230) = 9;
          }

          else
          {
            LOBYTE(v230) = 2;
          }

          goto LABEL_1219;
        case 0x115u:
          if (*(v9 + 2))
          {
            goto LABEL_349;
          }

          v100 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
          v584[0] = v100;
          if (!v100)
          {
            sub_100021200();
          }

          *v100 = *v9;
          v101 = *(v9 + 1);
          goto LABEL_1218;
        case 0x116u:
          if (*(v9 - 102) || *(v9 + 2))
          {
LABEL_349:
            v47 = "':' cannot be used with an other port operator";
            goto LABEL_1651;
          }

          v433 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
          v584[0] = v433;
          if (!v433)
          {
            sub_100021200();
          }

          *v433 = *(v9 - 104);
          v101 = *v9;
LABEL_1218:
          *(v584[0] + 1) = v101;
          v230 = *(v9 - 52);
          v229 = v584[0];
LABEL_1219:
          v229[4] = v230;
          goto LABEL_1220;
        case 0x117u:
          v102 = *v9;
          v103 = strchr(*v9, 58);
          if (v103)
          {
            v104 = v103;
            *v103 = 0;
            v105 = sub_10001F4B4(*v9);
            if (v105 == -1)
            {
              goto LABEL_1551;
            }

            v106 = v105;
            v107 = sub_10001F4B4(v104 + 1);
            if (v107 == -1)
            {
              goto LABEL_1551;
            }

            v584[0] = __PAIR64__(v107, v106);
            LODWORD(v584[1]) = 9;
            goto LABEL_1152;
          }

          LODWORD(v584[0]) = sub_10001F4B4(v102);
          if (LODWORD(v584[0]) == -1)
          {
            goto LABEL_1551;
          }

          HIDWORD(v584[0]) = 0;
          LODWORD(v584[1]) = 0;
          goto LABEL_1152;
        case 0x118u:
          v233 = *v9;
          if (*v9 < 0x10000)
          {
            goto LABEL_713;
          }

          v572 = *v9;
          v47 = "illegal port value %lu";
          goto LABEL_1651;
        case 0x11Du:
          v241 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v584[0] = v241;
          if (!v241)
          {
            sub_1000211E4();
          }

          goto LABEL_607;
        case 0x11Eu:
          if (*v9 == 0x7FFFFFFF && (*(v9 - 26) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_553;
          }

          v141 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v584[0] = v141;
          if (!v141)
          {
            sub_1000211E4();
          }

          goto LABEL_552;
        case 0x11Fu:
          v140 = v9 - 52;
          if (*(v9 - 52) == 0x7FFFFFFF || *v9 == 0x7FFFFFFF)
          {
LABEL_553:
            v47 = "user unknown requires operator = or !=";
            goto LABEL_1651;
          }

          v141 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v584[0] = v141;
          if (!v141)
          {
            sub_1000211E4();
          }

LABEL_1114:
          v240 = *v140;
LABEL_1115:
          *v141 = v240;
          *(v584[0] + 1) = *v9;
          v408 = v584[0];
          v584[0][8] = *(v9 - 52);
          *(v408 + 2) = 0;
          *(v408 + 3) = v408;
          goto LABEL_1416;
        case 0x120u:
          v264 = *v9;
          if (!strcmp(*v9, "unknown"))
          {
            goto LABEL_873;
          }

          v239 = getpwnam(v264);
          if (v239)
          {
            goto LABEL_630;
          }

          v572 = *v9;
          v61 = "unknown user %s";
          goto LABEL_1550;
        case 0x121u:
          v40 = *v9;
          if (*v9 < 0x7FFFFFFF)
          {
            goto LABEL_292;
          }

          v572 = *v9;
          v47 = "illegal uid value %lu";
          goto LABEL_1651;
        case 0x126u:
          v241 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v584[0] = v241;
          if (!v241)
          {
            sub_1000211C8();
          }

LABEL_607:
          *v241 = *v9;
          *(v584[0] + 1) = *v9;
          v254 = v584[0];
          v584[0][8] = 2;
          *(v254 + 2) = 0;
          *(v254 + 3) = v254;
          goto LABEL_1416;
        case 0x127u:
          if (*v9 == 0x7FFFFFFF && (*(v9 - 26) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_576;
          }

          v141 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v584[0] = v141;
          if (!v141)
          {
            sub_1000211C8();
          }

LABEL_552:
          v240 = *v9;
          goto LABEL_1115;
        case 0x128u:
          v140 = v9 - 52;
          if (*(v9 - 52) == 0x7FFFFFFF || *v9 == 0x7FFFFFFF)
          {
LABEL_576:
            v47 = "group unknown requires operator = or !=";
            goto LABEL_1651;
          }

          v141 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v584[0] = v141;
          if (!v141)
          {
            sub_1000211C8();
          }

          goto LABEL_1114;
        case 0x129u:
          v238 = *v9;
          if (!strcmp(*v9, "unknown"))
          {
LABEL_873:
            v265 = 0x7FFFFFFFLL;
          }

          else
          {
            v239 = getgrnam(v238);
            if (!v239)
            {
              v572 = *v9;
              v61 = "unknown group %s";
              goto LABEL_1550;
            }

LABEL_630:
            v265 = v239[4];
          }

          goto LABEL_1413;
        case 0x12Au:
          v40 = *v9;
          if (*v9 < 0x7FFFFFFF)
          {
            goto LABEL_292;
          }

          v572 = *v9;
          v47 = "illegal gid value %lu";
          goto LABEL_1651;
        case 0x12Bu:
          v134 = sub_10000BA8C(*v9);
          if ((v134 & 0x80000000) == 0)
          {
            free(*v9);
            LOBYTE(v584[0]) = v134;
            goto LABEL_1416;
          }

          v572 = *v9;
          v61 = "bad flags %s";
          goto LABEL_1550;
        case 0x12Cu:
          LOBYTE(v584[0]) = *(v9 - 416);
          goto LABEL_603;
        case 0x12Du:
          LOBYTE(v584[0]) = 0;
LABEL_603:
          v76 = *v9;
LABEL_604:
          BYTE1(v584[0]) = v76;
          goto LABEL_1416;
        case 0x12Eu:
LABEL_702:
          LOWORD(v584[0]) = 0;
          goto LABEL_1416;
        case 0x137u:
          v135 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v584[0] = v135;
          if (!v135)
          {
            sub_1000211AC();
          }

          v135[1] = *v9;
          *v584[0] = 0;
          goto LABEL_299;
        case 0x138u:
          v114 = sub_1000099DC((*(v9 - 52) - 1), *v9, 2);
          if (v114)
          {
            free(*v9);
            v115 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
            v584[0] = v115;
            if (!v115)
            {
              sub_1000211AC();
            }

            v115[1] = *(v9 - 52);
            *v584[0] = *(v114 + 9) + 1;
            v584[0][2] = 1;
            v116 = v584[0];
            *(v584[0] + 1) = 0;
            *(v116 + 2) = v116;
            goto LABEL_1416;
          }

          v572 = *v9;
          v61 = "unknown icmp-code %s";
          goto LABEL_1550;
        case 0x139u:
          v122 = *v9;
          if (*v9 >= 0x100)
          {
            goto LABEL_273;
          }

          v123 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v584[0] = v123;
          if (!v123)
          {
            sub_1000211AC();
          }

          v123[1] = *(v9 - 52);
          *v584[0] = *v9 + 1;
LABEL_299:
          v584[0][2] = 1;
          goto LABEL_1220;
        case 0x13Au:
          v257 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v584[0] = v257;
          if (!v257)
          {
            sub_1000211AC();
          }

          v257[1] = *v9;
          *v584[0] = 0;
          goto LABEL_905;
        case 0x13Bu:
          v261 = sub_1000099DC((*(v9 - 52) - 1), *v9, 30);
          if (v261)
          {
            free(*v9);
            v262 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
            v584[0] = v262;
            if (!v262)
            {
              sub_1000211AC();
            }

            v262[1] = *(v9 - 52);
            v263 = *(v261 + 9);
LABEL_904:
            *v584[0] = v263 + 1;
LABEL_905:
            v584[0][2] = 58;
LABEL_1220:
            v434 = v584[0];
            *(v584[0] + 1) = 0;
            *(v434 + 2) = v434;
            goto LABEL_1416;
          }

          v572 = *v9;
          v61 = "unknown icmp6-code %s";
          goto LABEL_1550;
        case 0x13Cu:
          v122 = *v9;
          if (*v9 >= 0x100)
          {
LABEL_273:
            v572 = *&v122;
            v47 = "illegal icmp-code %lu";
            goto LABEL_1651;
          }

          v339 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v584[0] = v339;
          if (!v339)
          {
            sub_1000211AC();
          }

          v339[1] = *(v9 - 52);
          v263 = *v9;
          goto LABEL_904;
        case 0x13Du:
          v266 = sub_1000098D8(*v9, 2);
          if (v266)
          {
            goto LABEL_715;
          }

          v572 = *v9;
          v61 = "unknown icmp-type %s";
          goto LABEL_1550;
        case 0x13Eu:
          v204 = *v9;
          if (*v9 < 0x100)
          {
            goto LABEL_685;
          }

          v572 = *v9;
          v47 = "illegal icmp-type %lu";
          goto LABEL_1651;
        case 0x13Fu:
          v266 = sub_1000098D8(*v9, 30);
          if (!v266)
          {
            v572 = *v9;
            v61 = "unknown icmp6-type %s";
            goto LABEL_1550;
          }

LABEL_715:
          v265 = *(v266 + 8) + 1;
          goto LABEL_1413;
        case 0x140u:
          v204 = *v9;
          if (*v9 >= 0x100)
          {
            v572 = *v9;
            v47 = "illegal icmp6-type %lu";
            goto LABEL_1651;
          }

LABEL_685:
          v40 = (v204 + 1);
          goto LABEL_292;
        case 0x141u:
          v280 = *v9;
          if (!strcmp(*v9, "lowdelay"))
          {
            v281 = 16;
          }

          else if (!strcmp(v280, "throughput"))
          {
            v281 = 8;
          }

          else if (!strcmp(v280, "reliability"))
          {
            v281 = 4;
          }

          else
          {
            if (*v280 != 48 || v280[1] != 120)
            {
              v584[0] = 0;
LABEL_1214:
              v572 = *v9;
              v61 = "illegal tos value %s";
              goto LABEL_1550;
            }

            v281 = strtoul(v280, 0, 16);
          }

          v584[0] = v281;
          if (!v281 || v281 >= 256)
          {
            goto LABEL_1214;
          }

          goto LABEL_1414;
        case 0x142u:
          v120 = *v9;
          v584[0] = *&v120;
          if (v120 != 0.0 && *&v120 < 256)
          {
            goto LABEL_1416;
          }

          v572 = v120;
          v47 = "illegal tos value %s";
          goto LABEL_1651;
        case 0x143u:
          v269 = *v9;
          v270 = **v9;
          if (v270 != 69 || v269[1] != 70 || v269[2])
          {
            if (!strcmp(*v9, "af11"))
            {
              v400 = 40;
            }

            else if (!strcmp(v269, "af12"))
            {
              v400 = 48;
            }

            else
            {
              if (strcmp(v269, "af13"))
              {
                if (!strcmp(v269, "af21"))
                {
                  v436 = 72;
                }

                else if (!strcmp(v269, "af22"))
                {
                  v436 = 80;
                }

                else if (!strcmp(v269, "af23"))
                {
                  v436 = 88;
                }

                else if (!strcmp(v269, "af31"))
                {
                  v436 = 104;
                }

                else if (!strcmp(v269, "af32"))
                {
                  v436 = 112;
                }

                else if (!strcmp(v269, "af33"))
                {
                  v436 = 120;
                }

                else
                {
                  if (strcmp(v269, "af41"))
                  {
                    if (!strcmp(v269, "af42"))
                    {
                      v516 = 144;
                    }

                    else
                    {
                      if (strcmp(v269, "af43"))
                      {
                        if (v270 == 48 && v269[1] == 120)
                        {
                          v271 = v269;
                          v272 = 16;
                        }

                        else
                        {
                          v271 = v269;
                          v272 = 10;
                        }

                        v400 = strtoul(v271, 0, v272);
                        v584[0] = v400;
                        if (!v400)
                        {
                          goto LABEL_1549;
                        }

LABEL_1224:
                        if (v400 >= 65)
                        {
                          goto LABEL_1549;
                        }

LABEL_1414:
                        v78 = *v9;
                        goto LABEL_1415;
                      }

                      v516 = 152;
                    }

                    v584[0] = v516;
LABEL_1549:
                    v572 = *v9;
                    v61 = "illegal dscp value %s";
                    goto LABEL_1550;
                  }

                  v436 = 136;
                }

LABEL_1548:
                v584[0] = v436;
                goto LABEL_1549;
              }

              v400 = 56;
            }

            v584[0] = v400;
            goto LABEL_1224;
          }

          v436 = 184;
          goto LABEL_1548;
        case 0x144u:
          v222 = *v9;
          v223 = **v9;
          if (v223 == 98)
          {
            if (v222[1] == 101 && !v222[2])
            {
              v265 = 16;
              goto LABEL_1413;
            }

            if (strcmp(*v9, "bk_sys"))
            {
              if (v222[1] != 107 || v222[2])
              {
                v577 = v29;
LABEL_1070:
                v394 = 0;
                goto LABEL_1071;
              }

              v265 = 18;
LABEL_1413:
              v584[0] = v265;
              goto LABEL_1414;
            }
          }

          else if (strcmp(*v9, "bk_sys"))
          {
            v577 = v29;
            if (v223 != 114)
            {
              goto LABEL_1070;
            }

            if (v222[1] != 100)
            {
              v394 = 1;
LABEL_1071:
              if (strcmp(v222, "oam"))
              {
                if (v223 == 97 && v222[1] == 118)
                {
                  if (!v222[2])
                  {
                    v432 = 21;
                    goto LABEL_1464;
                  }

                  if (!v394)
                  {
                    goto LABEL_1182;
                  }
                }

                else if ((v394 & 1) == 0)
                {
LABEL_1177:
                  if (v223 != 118)
                  {
LABEL_1182:
                    if (strcmp(v222, "ctl"))
                    {
                      v584[0] = 0;
                      sub_10001D73C("illegal sc value %s", v417, v418, v419, v420, v421, v422, v423, *v9);
                      v95 = *v9;
LABEL_1262:
                      free(v95);
                      goto LABEL_1263;
                    }

                    v432 = 25;
                    goto LABEL_1464;
                  }

                  if (v222[1] == 105 && !v222[2])
                  {
                    v432 = 23;
                  }

                  else
                  {
                    if (v222[1] != 111 || v222[2])
                    {
                      goto LABEL_1182;
                    }

                    v432 = 24;
                  }

LABEL_1464:
                  v584[0] = v432;
                  v29 = v577;
                  goto LABEL_1414;
                }

LABEL_1175:
                if (v222[1] == 118 && !v222[2])
                {
                  v432 = 22;
                  goto LABEL_1464;
                }

                goto LABEL_1177;
              }

LABEL_1205:
              v432 = 20;
              goto LABEL_1464;
            }

            if (v222[2])
            {
              if (strcmp(v222, "oam"))
              {
                goto LABEL_1175;
              }

              goto LABEL_1205;
            }

            v265 = 19;
            goto LABEL_1413;
          }

          v265 = 17;
          goto LABEL_1413;
        case 0x145u:
        case 0x14Fu:
        case 0x164u:
LABEL_61:
          v46 = 1;
          goto LABEL_856;
        case 0x146u:
        case 0x1B5u:
          v46 = 2;
          goto LABEL_856;
        case 0x147u:
        case 0x150u:
        case 0x1B6u:
LABEL_62:
          v46 = 3;
          goto LABEL_856;
        case 0x148u:
          v46 = 0x10000;
          goto LABEL_856;
        case 0x14Au:
        case 0x19Bu:
          LODWORD(v584[0]) = 0;
          v584[1] = 0;
          goto LABEL_1416;
        case 0x14Bu:
          v125 = 1;
          goto LABEL_621;
        case 0x14Cu:
          v125 = 2;
          goto LABEL_621;
        case 0x14Du:
          v125 = 3;
LABEL_621:
          LODWORD(v584[0]) = v125;
          goto LABEL_785;
        case 0x154u:
          v121 = *v9;
          v42 = v9 - 52;
          *(*(*(v9 - 52) + 6) + 40) = *v9;
          *(*(v9 - 52) + 6) = v121;
          goto LABEL_291;
        case 0x155u:
          if (*(v9 + 1))
          {
            goto LABEL_917;
          }

          v165 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v165;
          if (!v165)
          {
            sub_100021174();
          }

          *v165 = 0;
          goto LABEL_421;
        case 0x156u:
          v268 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v268;
          if (!v268)
          {
            sub_100021174();
          }

          *v268 = 1;
          goto LABEL_914;
        case 0x157u:
          if (*(v9 + 1))
          {
            goto LABEL_917;
          }

          v129 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v129;
          if (!v129)
          {
            sub_100021174();
          }

          v130 = 3;
          goto LABEL_420;
        case 0x158u:
          if (*(v9 + 1))
          {
            goto LABEL_917;
          }

          v129 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v129;
          if (!v129)
          {
            sub_100021174();
          }

          v130 = 4;
          goto LABEL_420;
        case 0x159u:
          if (*(v9 - 103) || *(v9 + 1))
          {
            goto LABEL_917;
          }

          v210 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v210;
          if (!v210)
          {
            sub_100021174();
          }

          *v210 = 5;
          *(v584[0] + 1) = *(v9 - 52);
          v211 = v584[0];
          *(v584[0] + 2) = *v9;
          *(v211 + 5) = 0;
          *(v211 + 6) = v211;
          goto LABEL_1416;
        case 0x15Au:
          v155 = (v9 - 52);
          if (strlen(*(v9 - 52)) >= 0x20)
          {
            v572 = *(v9 - 52);
            v164 = "table name '%s' too long";
LABEL_399:
            sub_10001D73C(v164, v157, v158, v159, v160, v161, v162, v163, SLOBYTE(v572));
            v65 = *v155;
            goto LABEL_1552;
          }

          v584[0] = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          if (!v584[0])
          {
            sub_100021174();
          }

          if (__strlcpy_chk() >= 0x20)
          {
            sub_100021190();
          }

          free(*v155);
          *v584[0] = 7;
LABEL_913:
          v584[0][4] = *v9;
LABEL_914:
          v341 = v584[0];
          *(v584[0] + 5) = 0;
          *(v341 + 6) = v341;
          goto LABEL_1416;
        case 0x15Bu:
          if (*(v9 + 1))
          {
            goto LABEL_917;
          }

          v129 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v129;
          if (!v129)
          {
            sub_100021174();
          }

          v130 = 6;
LABEL_420:
          *v129 = v130;
LABEL_421:
          *(v584[0] + 1) = *v9;
          goto LABEL_914;
        case 0x15Cu:
          v212 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v212;
          if (!v212)
          {
            sub_100021174();
          }

          *v212 = 2;
          goto LABEL_913;
        case 0x15Du:
          v206 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v584[0] = v206;
          if (!v206)
          {
            sub_100021174();
          }

          *v206 = 8;
          *(v584[0] + 1) = *v9;
          goto LABEL_914;
        case 0x15Eu:
          if (*(v9 + 1))
          {
            goto LABEL_917;
          }

          v577 = v29;
          v187 = "tcp.first";
          v188 = *(v9 - 26);
          if (!"tcp.first")
          {
            goto LABEL_1087;
          }

          v189 = &off_10002C498;
          if (!strcmp("tcp.first", *(v9 - 26)))
          {
            goto LABEL_394;
          }

          do
          {
            v187 = v189[2];
            if (!v187)
            {
LABEL_1087:
              v572 = *&v188;
              v401 = "illegal timeout name %s";
              goto LABEL_1261;
            }

            v190 = strcmp(v189[2], v188);
            v189 += 2;
          }

          while (v190);
LABEL_394:
          if (strchr(v187, 46))
          {
            free(v188);
            v191 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
            v584[0] = v191;
            if (!v191)
            {
              sub_100021174();
            }

            *v191 = 9;
            *(v584[0] + 1) = *(v189 + 2);
            v192 = v584[0];
            *(v584[0] + 2) = *v9;
            *(v192 + 5) = 0;
            *(v192 + 6) = v192;
            goto LABEL_1201;
          }

          v572 = *&v188;
          v401 = "illegal state timeout %s";
LABEL_1261:
          sub_10001D73C(v401, v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
          v95 = *(v9 - 26);
          goto LABEL_1262;
        case 0x162u:
          v584[0] = *(v9 - 78);
          v584[1] = *(v9 - 26);
          goto LABEL_1416;
        case 0x165u:
          v179 = *v9;
          v180 = strchr(*v9, 58);
          if (v180)
          {
            v181 = v180 + 1;
            if (v180[1] != 42 || v180[2])
            {
              *v180 = 0;
              LODWORD(v584[0]) = sub_10001F4B4(*v9);
              if (LODWORD(v584[0]) == -1)
              {
                goto LABEL_1551;
              }

              v182 = sub_10001F4B4(v181);
              HIDWORD(v584[0]) = v182;
              if (v182 == -1)
              {
                goto LABEL_1551;
              }

              if (LODWORD(v584[0]) == v182)
              {
                HIDWORD(v584[0]) = 0;
              }

              LODWORD(v584[1]) = 0;
              goto LABEL_1414;
            }

            *v180 = 0;
            LODWORD(v584[0]) = sub_10001F4B4(*v9);
            if (LODWORD(v584[0]) != -1)
            {
              *(v584 + 4) = &_mh_execute_header;
              goto LABEL_1414;
            }
          }

          else
          {
            LODWORD(v584[0]) = sub_10001F4B4(v179);
            if (LODWORD(v584[0]) != -1)
            {
              HIDWORD(v584[0]) = 0;
              LODWORD(v584[1]) = 0;
              goto LABEL_1414;
            }
          }

LABEL_1551:
          v65 = *v9;
          goto LABEL_1552;
        case 0x166u:
          v233 = *v9;
          if (*v9 >= 0x10000)
          {
            v572 = *v9;
            v47 = "illegal port value %ld";
            goto LABEL_1651;
          }

LABEL_713:
          HIDWORD(v584[0]) = 0;
          LODWORD(v584[1]) = 0;
          v46 = bswap32(v233) >> 16;
LABEL_856:
          LODWORD(v584[0]) = v46;
          goto LABEL_1416;
        case 0x16Au:
          v132 = *v9;
          v42 = v9 - 52;
          *(*(*(v9 - 52) + 14) + 104) = *v9;
          *(*(v9 - 52) + 14) = *(v132 + 14);
LABEL_291:
          v40 = *v42;
          goto LABEL_292;
        case 0x16Cu:
          v139 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v584[0] = v139;
          if (!v139)
          {
            sub_10002113C();
          }

          goto LABEL_601;
        case 0x16Du:
          v133 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v584[0] = v133;
          if (!v133)
          {
            sub_10002113C();
          }

          goto LABEL_597;
        case 0x16Eu:
          v584[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
          if (!v584[0])
          {
            sub_100021158();
          }

          *v584[0] = arc4random();
          *(v584[0] + 1) = arc4random();
          *(v584[0] + 2) = arc4random();
          *(v584[0] + 3) = arc4random();
          goto LABEL_1416;
        case 0x16Fu:
          v255 = *v9;
          if (**v9 == 48 && v255[1] == 120)
          {
            if (strlen(*v9) != 34)
            {
              free(v255);
              v47 = "hex key must be 128 bits (32 hex digits) long";
              goto LABEL_1651;
            }

            v256 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
            v584[0] = v256;
            if (!v256)
            {
              sub_100021158();
            }

            if (sscanf(*v9, "0x%8x%8x%8x%8x", v256, v256 + 4, v256 + 8, v256 + 12) != 4)
            {
              free(v584[0]);
              free(*v9);
              v47 = "invalid hex key";
              goto LABEL_1651;
            }
          }

          else
          {
            memset(c, 0, 104);
            v584[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
            if (!v584[0])
            {
              sub_100021158();
            }

            CC_SHA256_Init(c);
            v324 = strlen(*v9);
            CC_SHA256_Update(c, *v9, v324);
            CC_SHA256_Final(md, c);
            *v584[0] = *md;
            *v584[0] = bswap32(*v584[0]);
            *(v584[0] + 1) = bswap32(*(v584[0] + 1));
            *(v584[0] + 1) = vrev32_s8(*(v584[0] + 8));
          }

          goto LABEL_1414;
        case 0x170u:
          xmmword_100031850 = 0uLL;
          qword_100031860 = 0;
          goto LABEL_1416;
        case 0x171u:
          *v584 = xmmword_100031850;
          v117 = qword_100031860;
          goto LABEL_498;
        case 0x172u:
          xmmword_100031850 = 0uLL;
          qword_100031860 = 0;
          v584[1] = 0;
          *&v585 = 0;
          goto LABEL_545;
        case 0x175u:
          if (DWORD2(xmmword_100031850))
          {
            goto LABEL_615;
          }

          v131 = 1;
          goto LABEL_513;
        case 0x176u:
          if (DWORD2(xmmword_100031850))
          {
            goto LABEL_615;
          }

          v131 = 2;
          goto LABEL_513;
        case 0x177u:
          if (DWORD2(xmmword_100031850))
          {
            goto LABEL_615;
          }

          DWORD2(xmmword_100031850) = 3;
          qword_100031860 = *v9;
          goto LABEL_1416;
        case 0x178u:
          if (DWORD2(xmmword_100031850))
          {
LABEL_615:
            v47 = "pool type cannot be redefined";
            goto LABEL_1651;
          }

          v131 = 4;
LABEL_513:
          DWORD2(xmmword_100031850) = v131;
          goto LABEL_1416;
        case 0x179u:
          if (!HIDWORD(xmmword_100031850))
          {
            HIDWORD(xmmword_100031850) = 1;
            goto LABEL_1416;
          }

          v47 = "static-port cannot be redefined";
          goto LABEL_1651;
        case 0x17Au:
          if ((xmmword_1000317D0 & 2) == 0)
          {
            LODWORD(xmmword_100031850) = xmmword_100031850 | 2;
            BYTE4(xmmword_100031850) |= 0x20u;
            goto LABEL_1416;
          }

          v47 = "sticky-address cannot be redefined";
          goto LABEL_1651;
        case 0x17Bu:
          v235 = *v9;
          if (strcmp(*v9, "apd"))
          {
            v236 = *v235;
            if (v236 == 101)
            {
              if (v235[1] == 105 && !v235[2])
              {
                v237 = 3;
                goto LABEL_1047;
              }
            }

            else if (v236 == 97 && v235[1] == 100 && !v235[2])
            {
              v237 = 2;
LABEL_1047:
              LODWORD(v584[0]) = v237;
              goto LABEL_1414;
            }

            v47 = "unknown extfilter/extmap mode.";
            goto LABEL_1651;
          }

          v237 = 1;
          goto LABEL_1047;
        case 0x17Cu:
          qword_100031868 = 0;
          goto LABEL_1416;
        case 0x17Du:
          v184 = HIDWORD(qword_100031868);
          if (!HIDWORD(qword_100031868))
          {
            v184 = 1;
            HIDWORD(qword_100031868) = 1;
          }

          if (qword_100031868 < v184)
          {
            LODWORD(qword_100031868) = v184;
          }

          v40 = qword_100031868;
          goto LABEL_292;
        case 0x17Eu:
          qword_100031868 = 0;
          goto LABEL_545;
        case 0x181u:
          if (SHIDWORD(qword_100031868) < 1)
          {
            HIDWORD(qword_100031868) = *v9;
            goto LABEL_1416;
          }

          v47 = "extfilter cannot be redefined.";
          goto LABEL_1651;
        case 0x182u:
          if (qword_100031868 < 1)
          {
            LODWORD(qword_100031868) = *v9;
            goto LABEL_1416;
          }

          v47 = "extmap cannot be redefined.";
          goto LABEL_1651;
        case 0x184u:
          v139 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v584[0] = v139;
          if (!v139)
          {
            sub_10002113C();
          }

LABEL_601:
          *v139 = *v9;
          v253 = v584[0];
          *(v584[0] + 4) = 0;
          *(v253 + 1) = 0;
          goto LABEL_1416;
        case 0x185u:
          v133 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v584[0] = v133;
          if (!v133)
          {
            sub_10002113C();
          }

LABEL_597:
          *v133 = *(v9 - 52);
          v250 = v584[0];
          v251 = *(v9 + 2);
          *(v584[0] + 1) = *v9;
          *(v250 + 4) = v251;
          goto LABEL_1416;
        case 0x186u:
          LOWORD(v584[0]) = 0;
          goto LABEL_934;
        case 0x187u:
          LOWORD(v584[0]) = 1;
          goto LABEL_934;
        case 0x188u:
          LOBYTE(v584[0]) = 1;
          goto LABEL_509;
        case 0x189u:
          LOBYTE(v584[0]) = 0;
LABEL_509:
          BYTE1(v584[0]) = *v9;
          v79 = *(v9 + 1);
          goto LABEL_1159;
        case 0x18Au:
          if (*(v9 - 104))
          {
            if (*v9)
            {
              goto LABEL_556;
            }

            v231 = 5;
          }

          else
          {
            v231 = 4;
          }

          goto LABEL_1158;
        case 0x18Bu:
          if (*(v9 - 104))
          {
            if (*v9)
            {
LABEL_556:
              v47 = "pass not valid with no";
              goto LABEL_1651;
            }

            v231 = 14;
          }

          else
          {
            v231 = 13;
          }

          goto LABEL_1158;
        case 0x18Cu:
          if (*(v9 - 104))
          {
            if (*v9)
            {
              goto LABEL_556;
            }

            v231 = 9;
          }

          else
          {
            v231 = 8;
          }

LABEL_1158:
          LOBYTE(v584[0]) = v231;
          BYTE1(v584[0]) = *v9;
          WORD1(v584[0]) = *(v9 + 1);
          v79 = *(v9 + 2);
LABEL_1159:
          WORD2(v584[0]) = v79;
          goto LABEL_1416;
        case 0x18Du:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v646) = *(v9 - 2080);
          v652 = *(v9 - 2079);
          v647 = *(v9 - 2078);
          v648 = *(v9 - 2076);
          v167 = *(v9 - 1664);
          v654 = *(v9 - 1664);
          if ((v646 - 13) > 1u)
          {
            if (v167)
            {
              goto LABEL_1102;
            }
          }

          else if (v167)
          {
            if (v167 != 30)
            {
              v47 = "nat64 can only match on inet6";
              goto LABEL_1651;
            }

LABEL_1102:
            if (*(v9 - 130) && __strlcpy_chk() >= 0x40 || (v0 = *(v9 - 103)) != 0 && __strlcpy_chk() >= 0x40)
            {
LABEL_1392:
              *&v572 = 63;
              v47 = "tag too long, max %u chars";
              goto LABEL_1651;
            }

            v651 = *(v9 - 208);
            v632 = *(v9 - 156);
            v406 = v646;
            if (v646 <= 0xEu && ((1 << v646) & 0x4220) != 0)
            {
              if (*(v9 - 52))
              {
                v47 = "translation rule with 'no' does not need '->'";
                goto LABEL_1651;
              }

LABEL_1715:
              v558 = *(v9 - 24);
              if (v558)
              {
                *v579 = *v558;
              }

              if (*(v9 - 204))
              {
                v629 |= *(v9 - 204);
              }

              if (*(v9 - 49))
              {
                if (v406 != 4)
                {
                  v47 = "the 'static-port' option is only valid with nat rules";
                  goto LABEL_1651;
                }

                if (v628 != -32768 && HIWORD(v628) != 49151)
                {
                  v47 = "the 'static-port' option can't be used when specifying a port range";
                  goto LABEL_1651;
                }

                v628 = 0;
              }

              else
              {
                v559 = *v9;
                if (v406 == 4)
                {
LABEL_1725:
                  v665 = v559;
                  v664 = *(v9 + 1);
                  v560 = *(v9 - 52);
                  if (v560)
                  {
                    v561 = *v560;
                  }

                  else
                  {
                    v561 = 0;
                  }

                  sub_10001DC08(c, *(v9 - 234), v561, *(v9 - 182), *(v9 - 152), *(v9 - 156), *(v9 - 155), *(v9 - 154), *(v9 - 153), 0, 0, 0, "");
                  v78 = *(v9 - 52);
                  goto LABEL_1415;
                }

                if (v559 || *(v9 + 1))
                {
                  v47 = "use extfilter/extmap options only on nat rules.";
                  goto LABEL_1651;
                }
              }

              v559 = *v9;
              if (*(v9 - 49) && v559 >= 2)
              {
                v47 = "state-port requires extmap apd";
                goto LABEL_1651;
              }

              goto LABEL_1725;
            }

            v447 = (v9 - 52);
            v448 = *(v9 - 52);
            if (!v448 || (v449 = *v448) == 0)
            {
              v47 = "translation rule requires '-> address'";
              goto LABEL_1651;
            }

            v450 = v654;
            if (!v654)
            {
              if (*(v449 + 84))
              {
                v450 = 0;
              }

              else
              {
                v450 = *(v449 + 80);
                v654 = v450;
              }
            }

            if (v646 == 13)
            {
              v524 = 2;
            }

            else
            {
              v524 = v450;
            }

            v630[0] = v524;
            sub_10001F1D4(*v447, v630);
            if (sub_10001F558(**v447, v630[0], v525, v526, v527, v528, v529, v530) || sub_10000BC88(**v447, v630[0]))
            {
              goto LABEL_1553;
            }

            v577 = v29;
            v531 = *(*v447 + 2);
            v532 = bswap32(v531) >> 16;
            LOWORD(v628) = v532;
            if (v646 != 4 && v646 != 13)
            {
              if (v646 == 8)
              {
                v533 = *v447;
                v534 = *(*v447 + 3);
                if (!v534 && *(v533 + 4) && (v550 = *(v9 - 153)) != 0)
                {
                  v532 = (bswap32(v550[1]) >> 16) + (bswap32(*(v533 + 4)) >> 16) - (bswap32(*v550) >> 16);
                }

                else
                {
                  v532 = bswap32(v534) >> 16;
                }

                goto LABEL_1702;
              }

LABEL_1703:
              v551 = *(v9 - 50);
              v629 = v551;
              v552 = *v447;
              if ((v551 & 0xF) == 0 && ((v556 = *v552, *(*v552 + 104)) || (v562 = *(v556 + 40), v562 == 3) || v562 == 2 && ((*(v556 + 41) & 8) == 0 || (*(strlen(*v552) + v556 - 1) - 48) >= 0xA)))
              {
                v553 = 4;
                v629 = 4;
                v552 = *v447;
              }

              else
              {
                v553 = v551;
                if ((v551 & 0xF) != 4)
                {
                  v554 = sub_10001F284(*v552, "tables are only supported in round-robin redirection pools");
                  v29 = v577;
                  if (v554)
                  {
                    goto LABEL_1553;
                  }

                  v553 = v629;
                  v552 = *v447;
                  if ((v629 & 0xF) != 4)
                  {
                    v555 = sub_10001F2F0(*v552, "interface (%s) is only supported in round-robin redirection pools");
                    v29 = v577;
                    if (v555)
                    {
                      goto LABEL_1553;
                    }

                    v552 = *v447;
                    v553 = v629;
                  }
                }
              }

              v557 = v553 & 0xF;
              if (*(*v552 + 104))
              {
                if (v557 != 4)
                {
                  v298 = "only round-robin valid for multiple redirection addresses";
                  goto LABEL_1156;
                }

                v406 = v646;
              }

              else
              {
                v406 = v646;
                if (v557 == 1 && v646 == 13)
                {
                  v298 = "nat64 doesn't support bitmask pool type";
                  goto LABEL_1156;
                }

                if (v557 == 3)
                {
                  v29 = v577;
                  if (v646 == 13)
                  {
                    v47 = "nat64 doesn't support source-hash pool type";
                    goto LABEL_1651;
                  }

                  goto LABEL_1715;
                }
              }

              v29 = v577;
              goto LABEL_1715;
            }

            v546 = *(*v447 + 3);
            HIWORD(v628) = bswap32(v546) >> 16;
            if (v531 | v546)
            {
              if (v546)
              {
                goto LABEL_1703;
              }
            }

            else
            {
              LOWORD(v628) = 0x8000;
              LOWORD(v532) = -16385;
            }

LABEL_1702:
            HIWORD(v628) = v532;
            goto LABEL_1703;
          }

          v403 = *(v9 - 156);
          if (v403 && (v404 = *(v403 + 80)) != 0 && !*(v403 + 84) || (v405 = *(v9 - 154)) != 0 && (v404 = *(v405 + 80)) != 0 && !*(v405 + 84))
          {
            v654 = v404;
          }

          goto LABEL_1102;
        case 0x18Eu:
          v622 = 0u;
          v623 = 0u;
          v620 = 0u;
          v621 = 0u;
          v618 = 0u;
          v619 = 0u;
          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v612 = 0u;
          v613 = 0u;
          v610 = 0u;
          v611 = 0u;
          v608 = 0u;
          v609 = 0u;
          v606 = 0u;
          v607 = 0u;
          v604 = 0u;
          v605 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v599 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
LABEL_825:
            v47 = "Rules must be in order: options, normalization, queueing, translation, filtering";
            goto LABEL_1651;
          }

          dword_100030C78 = 4;
          v247 = (v9 - 104);
          v248 = *(v9 - 104);
          if (v248)
          {
            while (*(v248 + 40) != 5)
            {
              v248 = *(v248 + 104);
              if (!v248)
              {
                goto LABEL_589;
              }
            }

            v572 = COERCE_DOUBLE("urpf-failed is not permitted as a binat destination");
            v47 = "%s";
LABEL_1651:
            sub_10001D73C(v47, v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
            goto LABEL_1553;
          }

LABEL_589:
          bzero(c, 0x410uLL);
          if (*(v9 - 676))
          {
            if (*(v9 - 2288))
            {
              v47 = "pass not valid with no";
              goto LABEL_1651;
            }

            v435 = 7;
          }

          else
          {
            v435 = 6;
          }

          LOBYTE(v646) = v435;
          v652 = *(v9 - 2288);
          v647 = *(v9 - 2287);
          v648 = *(v9 - 2284);
          v654 = *(v9 - 1872);
          LOBYTE(v437) = v654;
          if (!v654)
          {
            v438 = *(v9 - 156);
            if (v438 && (v437 = *(v438 + 80)) != 0 || *v247 && (LOBYTE(v437) = *(*v247 + 80), v437))
            {
              v654 = v437;
            }

            else if (!*v9 || (v477 = **v9) == 0 || (v437 = *(v477 + 80), v654 = v437, !v437))
            {
              v47 = "address family (inet/inet6) undefined";
              goto LABEL_1651;
            }
          }

          v630[0] = v437;
          v439 = (v9 - 260);
          v440 = *(v9 - 260);
          if (v440)
          {
            v608 = *v440;
            v650 = *(*v439 + 16);
            free(*v439);
          }

          if (*(v9 - 78) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1392;
          }

          v0 = *(v9 - 51);
          if (v0)
          {
            if (__strlcpy_chk() >= 0x40)
            {
              goto LABEL_1392;
            }
          }

          v651 = *(v9 - 104);
          v632 = *(v9 - 52);
          v441 = *(v9 - 208);
          if (v441)
          {
            v655 = *v441;
            free(*(v9 - 208));
          }

          v442 = (v9 - 156);
          v443 = *(v9 - 156);
          if (v443 && (sub_10001F284(v443, "invalid use of table <%s> as the source address of a binat rule") || *v442 && sub_10001F2F0(*v442, "invalid use of interface (%s) as the source address of a binat rule")))
          {
            goto LABEL_1553;
          }

          v444 = *v9;
          if (*v9)
          {
            if (*v444)
            {
              if (sub_10001F284(*v444, "invalid use of table <%s> as the redirect address of a binat rule"))
              {
                goto LABEL_1553;
              }

              v445 = *v9;
              if (*v9)
              {
                if (*v445 && sub_10001F2F0(*v445, "invalid use of interface (%s) as the redirect address of a binat rule"))
                {
                  goto LABEL_1553;
                }
              }
            }
          }

          v446 = *v442;
          if (!*v442)
          {
            goto LABEL_1540;
          }

          if (*(v446 + 104))
          {
            v47 = "multiple binat ip addresses";
            goto LABEL_1651;
          }

          v0 = v654;
          if (*(v446 + 40) == 2)
          {
            *(v446 + 80) = v654;
            v446 = *v442;
          }

          if (*(v446 + 80) != v0)
          {
            goto LABEL_1593;
          }

          if (sub_10000BC88(v446, v0))
          {
            goto LABEL_1553;
          }

          v499 = **v442;
          v500 = *(*v442 + 32);
          *&c[16] = *(*v442 + 16);
          *&c[32] = v500;
          *c = v499;
          free(*v442);
LABEL_1540:
          v501 = *v247;
          if (*v247)
          {
            if (*(v501 + 104))
            {
              v47 = "multiple binat ip addresses";
              goto LABEL_1651;
            }

            v0 = v654;
            if (*(v501 + 80) && *(v501 + 80) != v654)
            {
LABEL_1593:
              v47 = "binat ip versions must match";
              goto LABEL_1651;
            }

            if (sub_10000BC88(v501, v654))
            {
              goto LABEL_1553;
            }

            v535 = **v247;
            v536 = *(*v247 + 2);
            *&c[80] = *(*v247 + 1);
            *&c[96] = v536;
            *&c[64] = v535;
            BYTE8(v599) = *(*v247 + 81);
            free(*v247);
          }

          v537 = *v9;
          if (v646 == 7)
          {
            if (v537)
            {
              v47 = "'no binat' rule does not need '->'";
              goto LABEL_1651;
            }

LABEL_1758:
            sub_100012B94(qword_100030C68, c, "");
            goto LABEL_1416;
          }

          if (!v537 || !*v537)
          {
            v47 = "'binat' rule requires '-> address'";
            goto LABEL_1651;
          }

          sub_10001F1D4(v537, &v654);
          if (sub_10001F558(**v9, v654, v538, v539, v540, v541, v542, v543))
          {
            goto LABEL_1553;
          }

          v544 = **v9;
          if (*(v544 + 104))
          {
            v47 = "binat rule must redirect to a single address";
            goto LABEL_1651;
          }

          if (sub_10000BC88(v544, v654))
          {
            goto LABEL_1553;
          }

          if (v654 == 2 && !*&c[16] || v654 == 30 && !*&c[16] && __PAIR64__(*&c[20], 0) == *&c[24] && !*&c[28])
          {
            goto LABEL_1756;
          }

          if (v654 == 30)
          {
            v569 = **v9;
            if (*&c[24] != *(v569 + 24) || *&c[20] != *(v569 + 20))
            {
              goto LABEL_1768;
            }

            v568 = *(v569 + 16);
          }

          else
          {
            if (v654 != 2)
            {
              goto LABEL_1768;
            }

            v568 = *(**v9 + 16);
          }

          if (*&c[16] == v568)
          {
LABEL_1756:
            v625 = 0;
            v626 = v578;
            v563 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
            if (!v563)
            {
              sub_100021120();
            }

            v564 = **v9;
            v565 = *v564;
            v566 = v564[2];
            v563[1] = v564[1];
            v563[2] = v566;
            *v563 = v565;
            *(v563 + 6) = 0;
            *(v563 + 64) = 0;
            v567 = v626;
            *(v563 + 7) = v626;
            *v567 = v563;
            v626 = (v563 + 3);
            free(*v9);
            goto LABEL_1758;
          }

LABEL_1768:
          v47 = "'binat' source mask and redirect mask must be the same";
          goto LABEL_1651;
        case 0x18Fu:
          qword_100031870 = 0;
          goto LABEL_1416;
        case 0x190u:
          v40 = qword_100031870;
          goto LABEL_292;
        case 0x191u:
          qword_100031870 = 0;
LABEL_545:
          v584[0] = 0;
          goto LABEL_1416;
        case 0x194u:
          v205 = *v9;
          goto LABEL_520;
        case 0x195u:
          v205 = *(v9 - 26);
LABEL_520:
          v232 = 0x4000;
          goto LABEL_528;
        case 0x196u:
          v205 = *v9;
          goto LABEL_527;
        case 0x197u:
          v205 = *(v9 - 26);
LABEL_527:
          v232 = 0x8000;
LABEL_528:
          LODWORD(qword_100031870) = v205;
          HIDWORD(qword_100031870) = v232;
          goto LABEL_1416;
        case 0x198u:
          bzero(c, 0x410uLL);
          if (*(v9 - 468))
          {
            v224 = 12;
          }

          else
          {
            v224 = 11;
          }

          LOBYTE(v646) = v224;
          HIBYTE(v646) = *(v9 - 364);
          v647 = *(v9 - 1248);
          v648 = *(v9 - 1247);
          v649 = *(v9 - 1246);
          v641 = *(v9 - 39);
          v632 = *(v9 - 21);
          v654 = *(v9 - 208);
          if (*(v9 - 13) && __strlcpy_chk() >= 0x40 || *(v9 - 12) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1392;
          }

          v651 = *(v9 - 88);
          if (sub_10001DBA4(c, *(v9 - 16)))
          {
            goto LABEL_1553;
          }

          free(*(v9 - 16));
          v656 = *(v9 - 184);
          v657 = *(v9 - 183);
          v225 = *(v9 - 184);
          if ((v225 & ~v657) != 0)
          {
            goto LABEL_1405;
          }

          v226 = v657 | v225;
          if (!v226 && !*(v9 - 48))
          {
            goto LABEL_1294;
          }

          v227 = *(v9 - 78);
          if (!v227)
          {
            goto LABEL_1294;
          }

          while (*v227 != 6)
          {
            v227 = *(v227 + 8);
            if (!v227)
            {
              if (v226)
              {
                sub_10001D73C("flags only apply to tcp", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
              }

              if (!*(v9 - 48))
              {
                goto LABEL_1553;
              }

LABEL_1133:
              v47 = "OS fingerprinting only apply to tcp";
              goto LABEL_1651;
            }
          }

LABEL_1294:
          v662 = *(v9 - 42);
          if (*(v9 - 38))
          {
            v47 = "Dummynet rules must be stateless";
          }

          else
          {
            v653 = 0;
            if (*(v9 - 34))
            {
              v645 |= 2u;
            }

            v659 = *(v9 - 33);
            v478 = *(v9 - 52);
            v479 = v654;
            if (v478)
            {
              v480 = v654 == 0;
            }

            else
            {
              v480 = 0;
            }

            if (v480)
            {
              v479 = *(v478 + 80);
              v654 = *(v478 + 80);
              do
              {
                v478 = *(v478 + 104);
                if (!v478)
                {
                  goto LABEL_1437;
                }
              }

              while (*(v478 + 80) == v479);
              v479 = 0;
              v654 = 0;
            }

LABEL_1437:
            v481 = *(v9 - 50);
            if (v481)
            {
              v482 = v479 == 0;
            }

            else
            {
              v482 = 0;
            }

            if (v482)
            {
              v483 = *(v481 + 80);
              v654 = *(v481 + 80);
              do
              {
                v481 = *(v481 + 104);
                if (!v481)
                {
                  goto LABEL_1446;
                }
              }

              while (*(v481 + 80) == v483);
              v654 = 0;
            }

LABEL_1446:
            if (!*(v9 - 15) && !*(v9 - 14))
            {
              if (*v9)
              {
                v666 = *v9;
                v667 = *(v9 + 1);
              }

              sub_10001DC08(c, *(v9 - 130), 0, *(v9 - 78), *(v9 - 48), *(v9 - 52), *(v9 - 51), *(v9 - 50), *(v9 - 49), *(v9 - 25), *(v9 - 24), *(v9 - 22), "");
              goto LABEL_1416;
            }

            v47 = "Cannot specify an altq queue with a dummynet rule";
          }

          goto LABEL_1651;
        case 0x19Cu:
          LODWORD(v584[0]) = *(v9 - 52);
LABEL_785:
          v584[1] = *v9;
          goto LABEL_1416;
        case 0x19Eu:
          if (!*v9)
          {
            goto LABEL_859;
          }

          LODWORD(v584[0]) = *v9;
          goto LABEL_1416;
        case 0x19Fu:
          v200 = if_nametoindex(*v9);
          if (v200)
          {
            LODWORD(v584[0]) = v200;
            goto LABEL_1416;
          }

LABEL_859:
          v47 = "invalid rtable id";
          goto LABEL_1651;
        case 0x1A0u:
          v176 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v584[0] = v176;
          if (!v176)
          {
            sub_100021104();
          }

          v176[5].i64[1] = *v9;
          sub_10000BB08(v176, 0x80u, v177, v178);
          goto LABEL_929;
        case 0x1A1u:
          v584[0] = *(v9 - 26);
          *(v584[0] + 11) = *(v9 - 52);
          goto LABEL_1416;
        case 0x1A3u:
          v193 = v9 - 52;
          v194 = *(v9 - 52);
          v195 = *(v194 + 80);
          if (!v194[80])
          {
            *(v194 + 80) = (*v9)[80];
            v194 = *v193;
            v195 = *(*v193 + 80);
          }

          if (v195 != *(*v9 + 80))
          {
            v47 = "all pool addresses must be in the same address family";
            goto LABEL_1651;
          }

          *(*(v194 + 14) + 104) = *v9;
LABEL_783:
          *(*v193 + 14) = *(*v9 + 14);
          v40 = *v193;
          goto LABEL_292;
        case 0x1A6u:
          v584[0] = 0;
          LOWORD(v584[1]) = 0;
          goto LABEL_1416;
        case 0x1A7u:
          v584[0] = 0;
          LOWORD(v584[1]) = 1;
          goto LABEL_1416;
        case 0x1A8u:
          v584[0] = *(v9 - 26);
          v196 = 2;
          goto LABEL_497;
        case 0x1A9u:
          v584[0] = *(v9 - 26);
          v196 = 4;
          goto LABEL_497;
        case 0x1AAu:
          v584[0] = *(v9 - 26);
          v196 = 3;
LABEL_497:
          LOBYTE(v584[1]) = v196;
          BYTE1(v584[1]) = *(v9 + 4) | *(v9 + 8);
          v117 = v9[2];
          if (v117)
          {
LABEL_498:
            *&v585 = v117;
          }

          goto LABEL_1416;
        case 0x1ABu:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_466;
          }

          dword_100030C78 = 1;
          v1 = *v9;
          if (*v9 >> 32)
          {
            goto LABEL_917;
          }

          v407 = sub_100013E5C(qword_100030C68, *(v9 - 26), v1, 0);
          v78 = *(v9 - 26);
          if (!v407)
          {
            goto LABEL_1415;
          }

          v572 = *(v9 - 26);
          v209 = "unknown timeout %s";
          goto LABEL_1112;
        case 0x1AEu:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
LABEL_466:
            v209 = "Rules must be in order: options, normalization, queueing, translation, filtering";
          }

          else
          {
            dword_100030C78 = 1;
            v1 = *v9;
            if (*v9 >> 32)
            {
LABEL_917:
              v47 = "only positive values permitted";
              goto LABEL_1651;
            }

            v207 = sub_100013D88(qword_100030C68, *(v9 - 26), v1);
            v78 = *(v9 - 26);
            if (!v207)
            {
LABEL_1415:
              free(v78);
              goto LABEL_1416;
            }

            v208 = *v9;
            v572 = *(v9 - 26);
            v573 = v208;
            v209 = "unable to set limit %s %u";
          }

LABEL_1112:
          sub_10001D73C(v209, v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
          v65 = *(v9 - 26);
          goto LABEL_1552;
        case 0x1B4u:
          v183 = *v9;
          if (strcmp(*v9, "yes"))
          {
            v572 = *&v183;
            v61 = "invalid value '%s', expected 'yes' or 'no'";
            goto LABEL_1550;
          }

          v265 = 1;
          goto LABEL_1413;
        case 0x1B7u:
          v46 = 5;
          goto LABEL_856;
        case 0x1B8u:
          v46 = 4;
          goto LABEL_856;
        case 0x1B9u:
          v46 = 7;
          goto LABEL_856;
        case 0x1BAu:
          v46 = 6;
          goto LABEL_856;
        default:
          goto LABEL_1416;
      }
    }

    v20 = word_100028BFA[v19];
    if (v20 <= 0)
    {
      break;
    }

    if (v19 == 232)
    {
      v570 = 0;
      goto LABEL_1772;
    }

    v21 = v582 - 1;
    if (!v582)
    {
      v21 = 0;
    }

    v582 = v21;
    if (v17 >= 1)
    {
      v8[323] = -2;
    }

    v22 = unk_1000315C0;
    *(v9 + 23) = xmmword_1000315B0;
    *(v9 + 24) = v22;
    *(v9 + 25) = xmmword_1000315D0;
    v23 = unk_100031580;
    *(v9 + 19) = xmmword_100031570;
    *(v9 + 20) = v23;
    v24 = unk_1000315A0;
    *(v9 + 21) = xmmword_100031590;
    *(v9 + 22) = v24;
    v25 = unk_100031540;
    *(v9 + 15) = xmmword_100031530;
    *(v9 + 16) = v25;
    v26 = unk_100031560;
    *(v9 + 17) = xmmword_100031550;
    *(v9 + 18) = v26;
    v27 = unk_100031520;
    *(v9 + 13) = xmmword_100031510;
    *(v9 + 14) = v27;
    v9 += 26;
LABEL_1565:
    v11 += 2;
    v7 = v20;
  }

  if (word_100028BFA[v19])
  {
    v28 = -v20;
    goto LABEL_30;
  }

LABEL_34:
  v8 = &unk_100031000;
  if (v582 != 3)
  {
    if (!v582)
    {
      ++dword_100031508;
      sub_10001D73C("syntax error", v0, v1, v2, v3, v4, v5, v6, SLOBYTE(v572));
    }

    goto LABEL_1554;
  }

  if (dword_10003150C > 0)
  {
    dword_10003150C = -2;
    goto LABEL_1554;
  }

  if (!dword_10003150C)
  {
    goto LABEL_1769;
  }

LABEL_1554:
  if (word_100027DD8[v7] >= -1 && v7 == 1)
  {
LABEL_1564:
    v506 = unk_1000315C0;
    *(v9 + 23) = xmmword_1000315B0;
    *(v9 + 24) = v506;
    *(v9 + 25) = xmmword_1000315D0;
    v507 = unk_100031580;
    *(v9 + 19) = xmmword_100031570;
    *(v9 + 20) = v507;
    v508 = unk_1000315A0;
    *(v9 + 21) = xmmword_100031590;
    *(v9 + 22) = v508;
    v509 = unk_100031540;
    *(v9 + 15) = xmmword_100031530;
    *(v9 + 16) = v509;
    v510 = unk_100031560;
    *(v9 + 17) = xmmword_100031550;
    *(v9 + 18) = v510;
    v511 = unk_100031520;
    *(v9 + 13) = xmmword_100031510;
    *(v9 + 14) = v511;
    v9 += 26;
    v20 = 3;
    v582 = 3;
    goto LABEL_1565;
  }

  while (v11 != v12)
  {
    v504 = *(v11 - 1);
    v11 -= 2;
    v503 = v504;
    v9 -= 26;
    if (word_100027DD8[v504] >= -1 && v503 == 1)
    {
      goto LABEL_1564;
    }
  }

LABEL_1769:
  v570 = 1;
LABEL_1772:
  if (v12 != v669)
  {
    free(v12);
  }

  return v570;
}