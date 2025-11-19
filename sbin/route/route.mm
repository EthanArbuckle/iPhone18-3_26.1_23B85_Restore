void usage(const char *a1)
{
  if (a1)
  {
    warnx("bad keyword: %s", a1);
  }

  fwrite("usage: route [-dnqtv] command [[modifiers] args]\n", 0x31uLL, 1uLL, __stderrp);
  exit(64);
}

int main(int argc, const char **argv, const char **envp)
{
  if (argc < 2)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v5 = getopt(argc, argv, "nqdtv");
    if (v5 <= 112)
    {
      break;
    }

    switch(v5)
    {
      case 'v':
        v6 = &verbose;
        break;
      case 't':
        v6 = &tflag;
        break;
      case 'q':
        v6 = &qflag;
        break;
      default:
        goto LABEL_17;
    }

LABEL_13:
    *v6 = 1;
  }

  if (v5 == 100)
  {
    v6 = &debugonly;
    goto LABEL_13;
  }

  v6 = &nflag;
  if (v5 == 110)
  {
    goto LABEL_13;
  }

  if (v5 != -1)
  {
LABEL_17:
    usage(0);
  }

  v7 = optind;
  pid = getpid();
  uid = geteuid();
  if (tflag)
  {
    v8 = open("/dev/null", 1, 0);
  }

  else
  {
    v8 = socket(17, 3, 0);
  }

  s = v8;
  if (v8 < 0)
  {
    err(71, "socket");
  }

  v9 = &argv[v7];
  setuid(uid);
  v10 = *v9;
  if (!*v9)
  {
LABEL_22:
    usage(v10);
  }

  v11 = (argc - v7);
  v12 = keyword(*v9);
  if (v12 <= 15)
  {
    if (v12 != 1 && v12 != 4 && v12 != 10)
    {
      goto LABEL_22;
    }

LABEL_36:
    newroute(v11, v9);
LABEL_38:
    exit(0);
  }

  if (v12 == 16)
  {
    flushroutes(v11, v9);
    goto LABEL_38;
  }

  if (v12 != 46)
  {
    if (v12 != 19)
    {
      goto LABEL_22;
    }

    uid = 0;
    goto LABEL_36;
  }

  monitor(v11, v9, v13, v14, v15);
  return keyword(v18);
}

uint64_t keyword(const char *a1)
{
  v2 = strlen(a1);
  v3 = &keywords;
  v4 = keywords;
  if (keywords)
  {
    v5 = v2;
    do
    {
      if (!strcasecmp(v4, a1) && strlen(v4) == v5)
      {
        break;
      }

      v6 = v3[2];
      v3 += 2;
      v4 = v6;
    }

    while (v6);
  }

  return *(v3 + 2);
}

uint64_t newroute(int a1, const char **a2)
{
  v49 = 0;
  if (uid)
  {
    newroute_cold_1();
  }

  v2 = a2;
  v4 = *a2;
  if (**a2 != 103)
  {
    shutdown(s, 0);
  }

  if (a1 < 2)
  {
    v5 = 0;
    v7 = 2048;
    v8 = &byte_1000049A1;
    v6 = &byte_1000049A1;
  }

  else
  {
    v5 = 0;
    v6 = &byte_1000049A1;
    v7 = 2048;
    v8 = &byte_1000049A1;
    v9 = v2;
    do
    {
      v10 = a1 - 1;
      v12 = v9[1];
      ++v9;
      v11 = v12;
      if (*v12 == 45)
      {
        v13 = keyword(v11 + 1);
        switch(v13)
        {
          case 2:
            v7 |= 0x1000u;
            break;
          case 5:
            v7 |= 0x100u;
            break;
          case 12:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v16 = v2[2];
            v14 = v2 + 2;
            v5 = getaddr(1, v16, &v49);
            v8 = *v14;
            goto LABEL_36;
          case 15:
          case 23:
          case 47:
          case 64:
          case 69:
          case 70:
          case 72:
          case 73:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v15 = v2[2];
            v14 = v2 + 2;
            set_metric(v15, v13);
            goto LABEL_36;
          case 17:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v18 = v2[2];
            v14 = v2 + 2;
            v17 = v18;
            v19 = 2;
            goto LABEL_35;
          case 18:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v22 = v2[2];
            v14 = v2 + 2;
            v17 = v22;
            v19 = 8;
            goto LABEL_35;
          case 24:
            ++forcehost;
            break;
          case 26:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v24 = v2[2];
            v14 = v2 + 2;
            v17 = v24;
            v19 = 32;
            goto LABEL_35;
          case 27:
          case 36:
            ++iflag;
            break;
          case 28:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v23 = v2[2];
            v14 = v2 + 2;
            v17 = v23;
            v19 = 16;
LABEL_35:
            getaddr(v19, v17, 0);
            goto LABEL_36;
          case 33:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            v26 = v2[2];
            v14 = v2 + 2;
            ifscope = if_nametoindex(v26);
            if (!ifscope)
            {
              newroute_cold_2();
            }

            v7 |= 0x1000000u;
LABEL_36:
            v9 = v14;
            break;
          case 34:
            af = 2;
            v20 = &keywords;
            v21 = 16;
            goto LABEL_48;
          case 35:
            af = 30;
            v20 = &keywords;
            v21 = 28;
            goto LABEL_48;
          case 38:
            af = 18;
            v20 = &keywords;
            v21 = 20;
            goto LABEL_48;
          case 39:
            v7 |= 0x400u;
            break;
          case 41:
            locking = 1;
            break;
          case 42:
            lockrest = 1;
            break;
          case 49:
            goto LABEL_39;
          case 50:
            v10 = a1 - 2;
            if (a1 == 2)
            {
              goto LABEL_119;
            }

            getaddr(4, v2[2], 0);
            v9 = v2 + 2;
LABEL_39:
            v25 = forcenet + 1;
            goto LABEL_45;
          case 55:
            v7 &= ~0x800u;
            break;
          case 59:
            v10 = a1 - 2;
            if (a1 == 2)
            {
LABEL_119:
              usage(0);
            }

            v9 = v2 + 2;
            if (prefixlen(v2[2]) == -1)
            {
              forcenet = 0;
              v5 = 1;
            }

            else
            {
              v5 = 0;
              v25 = 1;
LABEL_45:
              forcenet = v25;
            }

            break;
          case 60:
            v7 |= 0x8000u;
            break;
          case 61:
            v7 |= 0x4000u;
            break;
          case 66:
            v7 |= 8u;
            break;
          case 71:
            af = 17;
            v20 = &keywords;
            v21 = 128;
LABEL_48:
            *(v20 + 320) = v21;
            break;
          case 74:
            v7 |= 0x800u;
            break;
          case 79:
            v7 |= 0x200u;
            break;
          default:
            usage(v11 + 1);
        }
      }

      else if (rtm_addrs)
      {
        if ((rtm_addrs & 2) != 0)
        {
          getaddr(4, v11, 0);
        }

        else
        {
          getaddr(2, v11, &v49);
          v6 = v11;
        }
      }

      else
      {
        v5 = getaddr(1, v11, &v49);
        v8 = v11;
      }

      v2 = v9;
      a1 = v10;
    }

    while (v10 > 1);
  }

  if (forcehost)
  {
    if (af == 30)
    {
      rtm_addrs &= ~4u;
      so_mask = 0u;
      *&qword_10000CD00 = 0u;
      xmmword_10000CD10 = 0u;
      unk_10000CD20 = 0u;
      xmmword_10000CD30 = 0u;
      unk_10000CD40 = 0u;
      xmmword_10000CD50 = 0u;
      unk_10000CD60 = 0u;
    }

    v5 = 1;
  }

  if (forcenet)
  {
    v27 = 1;
  }

  else
  {
    v27 = v5 == 0;
  }

  v28 = v27;
  if (v27)
  {
    v29 = 1;
  }

  else
  {
    v29 = 5;
  }

  v30 = v29 | v7;
  if (iflag)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 | 2;
  }

  if (BYTE1(so_mask) == 2)
  {
    v32 = 0;
    v33.s_addr = DWORD1(so_mask);
    while ((bswap32(1 << v32) & DWORD1(so_mask)) == 0)
    {
      if (++v32 == 32)
      {
        goto LABEL_83;
      }
    }

    if (v32 <= 0x1F)
    {
      do
      {
        if ((bswap32(1 << v32) & DWORD1(so_mask)) == 0)
        {
          newroute_cold_3(v33);
        }

        ++v32;
      }

      while (v32 != 32);
    }
  }

LABEL_83:
  *__error() = 0;
  if (!rtmsg(*v4, v31))
  {
    v42 = 0;
    v41 = 1;
    goto LABEL_101;
  }

  v34 = 1;
  while (*__error() == 51)
  {
    if (af != 2)
    {
      goto LABEL_98;
    }

LABEL_93:
    if (!*v6)
    {
      goto LABEL_98;
    }

    v36 = v49;
    if (!v49)
    {
      goto LABEL_98;
    }

    h_addr_list = v49->h_addr_list;
    v39 = h_addr_list[1];
    v38 = h_addr_list + 1;
    if (!v39)
    {
      goto LABEL_98;
    }

    v49->h_addr_list = v38;
    v40 = *v38;
    v36->h_length;
    __memmove_chk();
    ++v34;
    *__error() = 0;
    if (!rtmsg(*v4, v31))
    {
      v41 = 1;
      goto LABEL_99;
    }
  }

  if (*__error() == 3 && af == 2)
  {
    goto LABEL_93;
  }

LABEL_98:
  v41 = 0;
LABEL_99:
  v42 = v34 > 1;
LABEL_101:
  if (*v4 == 103)
  {
    exit(0);
  }

  v43 = *__error();
  v44 = "host";
  if (v28)
  {
    v44 = "net";
  }

  printf("%s %s %s", v4, v44, v8);
  if (*v6)
  {
    printf(": gateway %s", v6);
    if ((v42 & v41) == 1 && af == 2)
    {
      v45.s_addr = DWORD1(so_gate);
      v46 = inet_ntoa(v45);
      printf(" (%s)", v46);
      return putchar(10);
    }
  }

  if (v41)
  {
    return putchar(10);
  }

  switch(v43)
  {
    case 3:
      v48 = "not in table";
      break;
    case 55:
      v48 = "routing table overflow";
      break;
    case 16:
      v48 = "entry in use";
      break;
    default:
      v48 = strerror(v43);
      break;
  }

  return printf(": %s\n", v48);
}

void monitor(char *lowpc, char *highpc, char *buf, int bufsiz, int cntsiz)
{
  if (lowpc < 2)
  {
    goto LABEL_175;
  }

  v5 = highpc;
  v6 = lowpc;
  __endptr = 0;
  v7 = highpc;
  while (1)
  {
    v9 = *(v7 + 1);
    v7 += 8;
    v8 = v9;
    v10 = v9 + 1;
    if (*v9 != 45)
    {
LABEL_215:
      errx(64, "unsuported parameter %s", buf);
    }

    if (*v10 == 110)
    {
      v11 = v8[2] == 111;
      if (v8[2] == 111)
      {
        v10 = v8 + 3;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v6 - 1;
    switch(keyword(v10))
    {
      case 1u:
        if (!v11)
        {
          v22 = qword_10000C790 | 2;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 2;
        break;
      case 2u:
        if (!v11)
        {
          v21 = monitor_filter | 0x1000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x1000;
        goto LABEL_112;
      case 3u:
        if (!v11)
        {
          v21 = monitor_filter | 0x400000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x400000;
        goto LABEL_112;
      case 4u:
        if (!v11)
        {
          v22 = qword_10000C790 | 8;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 8;
        break;
      case 5u:
        if (!v11)
        {
          v21 = monitor_filter | 0x100;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x100;
        goto LABEL_112;
      case 6u:
        if (!v11)
        {
          v21 = monitor_filter | 0x2000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x2000000;
        goto LABEL_112;
      case 7u:
        if (!v11)
        {
          v21 = monitor_filter | 0x20000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x20000000;
        goto LABEL_112;
      case 8u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x2000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x2000;
        break;
      case 9u:
        if (!v11)
        {
          v21 = monitor_filter | 0x80;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x80;
        goto LABEL_112;
      case 0xAu:
        if (!v11)
        {
          v22 = qword_10000C790 | 4;
LABEL_160:
          qword_10000C790 = v22;
          goto LABEL_163;
        }

        v13 = qword_10000C798 | 4;
        break;
      case 0xBu:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x10000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x10000;
        break;
      case 0xDu:
        if (!v11)
        {
          v21 = monitor_filter | 0x40;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x40;
        goto LABEL_112;
      case 0xEu:
        if (!v11)
        {
          v21 = monitor_filter | 0x10;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x10;
        goto LABEL_112;
      case 0x11u:
        if (!v11)
        {
          v21 = monitor_filter | 2;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 2;
        goto LABEL_112;
      case 0x13u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x10;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x10;
        break;
      case 0x14u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x200000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x200000;
        break;
      case 0x15u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x100000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x100000;
        break;
      case 0x16u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x20000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x20000;
        break;
      case 0x18u:
        if (!v11)
        {
          v21 = monitor_filter | 4;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 4;
        goto LABEL_112;
      case 0x19u:
        if (!v11)
        {
          v21 = monitor_filter | 0x40000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x40000000;
        goto LABEL_112;
      case 0x1Du:
        v12 = v6 - 2;
        if (v6 == 2)
        {
          usage(0);
        }

        v17 = *(v5 + 2);
        v16 = (v5 + 16);
        v15 = v17;
        if (!*v17)
        {
          errx(64, "empty interface index: %s", buf);
        }

        v18 = strtoul(v15, &__endptr, 0);
        dword_10000C774 = v18;
        if (*__endptr)
        {
          dword_10000C774 = if_nametoindex(*v16);
          v20 = *v16;
          if (!dword_10000C774)
          {
            v32 = *v16;
            errx(64, "bad interface name: %s", v19);
          }

          __strlcpy_chk();
        }

        else
        {
          if (v18 >= 0x10000)
          {
            v31 = *v16;
            errx(64, "interface index to big %s", buf);
          }

          if (v18 && !if_indextoname(v18, byte_10000C778))
          {
            warnx("no name for interface index: %s", *v16);
          }
        }

        if (v11)
        {
          v23 = 2;
        }

        else
        {
          v23 = 1;
        }

        dword_10000C770 = v23;
        v7 = v16;
        goto LABEL_163;
      case 0x1Eu:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x4000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x4000;
        break;
      case 0x1Fu:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x40000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x40000;
        break;
      case 0x20u:
        if (!v11)
        {
          v21 = monitor_filter | 0x4000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x4000000;
        goto LABEL_112;
      case 0x21u:
        if (!v11)
        {
          v21 = monitor_filter | 0x1000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x1000000;
        goto LABEL_112;
      case 0x27u:
        if (!v11)
        {
          v21 = monitor_filter | 0x400;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x400;
        goto LABEL_112;
      case 0x28u:
        if (!v11)
        {
          v21 = monitor_filter | 0x200000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x200000;
        goto LABEL_112;
      case 0x29u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x100;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x100;
        break;
      case 0x2Cu:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x80;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x80;
        break;
      case 0x2Du:
        if (!v11)
        {
          v21 = monitor_filter | 0x20;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x20;
        goto LABEL_112;
      case 0x30u:
        if (!v11)
        {
          v21 = monitor_filter | 0x800000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x800000;
        goto LABEL_112;
      case 0x33u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x1000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x1000;
        break;
      case 0x34u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x8000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x8000;
        break;
      case 0x35u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x80000;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x80000;
        break;
      case 0x36u:
        if (!v11)
        {
          v21 = monitor_filter | 0x2000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x2000;
        goto LABEL_112;
      case 0x39u:
        if (!v11)
        {
          v21 = monitor_filter | 0x100000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x100000;
        goto LABEL_112;
      case 0x3Au:
        if (!v11)
        {
          v21 = monitor_filter | 0x10000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x10000;
        goto LABEL_112;
      case 0x3Cu:
        if (!v11)
        {
          v21 = monitor_filter | 0x8000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x8000;
        goto LABEL_112;
      case 0x3Du:
        if (!v11)
        {
          v21 = monitor_filter | 0x4000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x4000;
        goto LABEL_112;
      case 0x3Eu:
        if (!v11)
        {
          v21 = monitor_filter | 0x40000;
LABEL_162:
          LODWORD(monitor_filter) = v21;
          goto LABEL_163;
        }

        v14 = HIDWORD(monitor_filter) | 0x40000;
        goto LABEL_112;
      case 0x3Fu:
        if (!v11)
        {
          v21 = monitor_filter | 0x8000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x8000000;
        goto LABEL_112;
      case 0x41u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x40;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x40;
        break;
      case 0x42u:
        if (!v11)
        {
          v21 = monitor_filter | 8;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 8;
        goto LABEL_112;
      case 0x43u:
        if (!v11)
        {
          v22 = qword_10000C790 | 0x800;
          goto LABEL_160;
        }

        v13 = qword_10000C798 | 0x800;
        break;
      case 0x44u:
        if (!v11)
        {
          v21 = monitor_filter | 0x10000000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x10000000;
        goto LABEL_112;
      case 0x4Au:
        if (!v11)
        {
          v21 = monitor_filter | 0x800;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x800;
LABEL_112:
        HIDWORD(monitor_filter) = v14;
        goto LABEL_163;
      case 0x4Bu:
        if (!v11)
        {
          v21 = monitor_filter | 1;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 1;
        goto LABEL_112;
      case 0x4Cu:
        if (!v11)
        {
          v21 = monitor_filter | 0x20000;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x20000;
        goto LABEL_112;
      case 0x4Fu:
        if (!v11)
        {
          v21 = monitor_filter | 0x200;
          goto LABEL_162;
        }

        v14 = HIDWORD(monitor_filter) | 0x200;
        goto LABEL_112;
      default:
        goto LABEL_215;
    }

    qword_10000C798 = v13;
LABEL_163:
    v5 = v7;
    v6 = v12;
    if (v12 <= 1)
    {
      if (verbose >= 2)
      {
        printf("# filtering flags 0x%08x no_flags 0x%08x ifindex %u ifname %s\n", monitor_filter, HIDWORD(monitor_filter), dword_10000C774, byte_10000C778);
      }

LABEL_175:
      ++verbose;
      if (debugonly)
      {
        interfaces();
        exit(0);
      }

      do
      {
LABEL_176:
        v33 = 0;
        v24 = read(s, &__endptr, 0x800uLL);
        v33 = time(0);
        if (BYTE2(__endptr) != 5)
        {
          goto LABEL_212;
        }
      }

      while (qword_10000C790 && (qword_10000C790 & (1 << SBYTE3(__endptr))) == 0 || qword_10000C798 && (qword_10000C798 & (1 << SBYTE3(__endptr))) != 0);
      if (!dword_10000C770)
      {
        goto LABEL_207;
      }

      if (BYTE3(__endptr) - 12 >= 2)
      {
        if (BYTE3(__endptr) - 15 >= 2)
        {
          if (BYTE3(__endptr) == 14)
          {
            v25 = v36;
            v26 = &v39;
            goto LABEL_188;
          }

          v25 = WORD2(__endptr);
          v26 = &v38;
          v27 = &v36;
          if (WORD2(__endptr))
          {
            goto LABEL_202;
          }
        }

        else
        {
          v25 = v36;
          v26 = &v37;
LABEL_188:
          v27 = &__endptr + 2;
          if (v25)
          {
            goto LABEL_202;
          }
        }

        v25 = *v27;
        if (!*v27)
        {
          goto LABEL_202;
        }

        v28 = 1;
        while (1)
        {
          if ((v28 & v25) != 0)
          {
            if (*(v26 + 1) == 18)
            {
              v25 = *(v26 + 1);
LABEL_202:
              if (dword_10000C770 == 2)
              {
                if (dword_10000C774 != v25)
                {
                  goto LABEL_207;
                }
              }

              else if (dword_10000C770 != 1 || dword_10000C774 == v25)
              {
LABEL_207:
                if (!monitor_filter)
                {
                  goto LABEL_212;
                }

                if (BYTE3(__endptr) - 12 < 2 || BYTE3(__endptr) - 15 < 2 || BYTE3(__endptr) == 14)
                {
                  if (match_msg_flags(v35))
                  {
                    goto LABEL_212;
                  }
                }

                else if (match_msg_flags(v35))
                {
LABEL_212:
                  v30 = ctime(&v33);
                  printf("\ngot message of size %ld on %s", v24, v30);
                  print_rtmsg(&__endptr);
                }
              }

              goto LABEL_176;
            }

            if (*v26)
            {
              v29 = ((*v26 - 1) & 0xFFFFFFFC) + 4;
            }

            else
            {
              v29 = 4;
            }

            v26 = (v26 + v29);
          }

          v28 *= 2;
          if (!v28)
          {
            v25 = 0;
            goto LABEL_202;
          }
        }
      }

      v25 = v36;
      v26 = (&v37 + 4);
      goto LABEL_188;
    }
  }
}

ssize_t flushroutes(int a1, uint64_t a2)
{
  if (uid)
  {
    newroute_cold_1();
  }

  size = 0;
  shutdown(s, 0);
  if (a1 >= 2)
  {
    v4 = *(a2 + 8);
    if (a1 == 2 && *v4 == 45)
    {
      v5 = keyword(v4 + 1);
      switch(v5)
      {
        case '""':
          v6 = 2;
          goto LABEL_11;
        case '&':
          v6 = 18;
          goto LABEL_11;
        case '#':
          v6 = 30;
LABEL_11:
          af = v6;
          goto LABEL_12;
      }
    }

    usage(v4);
  }

LABEL_12:
  *v23 = xmmword_100004620;
  v24 = 1;
  if (sysctl(v23, 6u, 0, &size, 0, 0) < 0)
  {
    flushroutes_cold_4();
  }

  v7 = malloc_type_malloc(size, 0xD6A51BC2uLL);
  if (!v7)
  {
    flushroutes_cold_3();
  }

  v8 = v7;
  result = sysctl(v23, 6u, v7, &size, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    flushroutes_cold_2();
  }

  v10 = size;
  if (verbose)
  {
    result = puts("Examining routing table from sysctl");
  }

  if (v10 >= 1)
  {
    v11 = 0;
    v12 = (v8 + v10);
    v13 = routename_line;
    do
    {
      if (verbose)
      {
        result = print_rtmsg(v8);
      }

      if ((v8[4] & 2) == 0)
      {
        goto LABEL_39;
      }

      if (af)
      {
        v14 = af == *(v8 + 93) && debugonly == 0;
        if (!v14)
        {
          goto LABEL_39;
        }
      }

      else if (debugonly)
      {
        goto LABEL_39;
      }

      v15 = v13;
      *(v8 + 3) = 2;
      *(v8 + 5) = v11;
      result = write(s, v8, *v8);
      v16 = result;
      if (result < *v8)
      {
        warn("write to routing socket");
        return printf("got only %d for rlen\n", v16);
      }

      ++v11;
      v13 = v15;
      if (!qflag)
      {
        if (verbose)
        {
          result = print_rtmsg(v8);
        }

        else
        {
          v17 = (v8 + 46);
          if ((v8[4] & 4) != 0)
          {
            routename((v8 + 46));
            v18 = v15;
          }

          else
          {
            v18 = netname((v8 + 46));
          }

          printf("%-20.20s ", v18);
          v19 = *v17;
          v20 = ((v19 - 1) & 0xFFFFFFFC) + 4;
          v14 = v19 == 0;
          v21 = 4;
          if (!v14)
          {
            v21 = v20;
          }

          routename(&v17[v21]);
          printf("%-20.20s ", v15);
          result = puts("done");
          v13 = v15;
        }
      }

LABEL_39:
      v8 = (v8 + *v8);
    }

    while (v8 < v12);
  }

  return result;
}

unsigned __int16 *print_rtmsg(unsigned __int16 *result)
{
  if (!verbose)
  {
    return result;
  }

  v1 = result;
  if (*(result + 2) != 5)
  {
    return printf("routing message version %d not understood\n", *(result + 2));
  }

  printf("%s: len %d, ", *(&msgtypes + *(result + 3)), *result);
  v2 = *(v1 + 3);
  if ((v2 - 12) < 2)
  {
    printf("metric %d, flags:", *(v1 + 16));
    bprintf(__stdoutp, *(v1 + 8), routeflags);
    v3 = *(v1 + 4);
    v4 = (v1 + 20);
    goto LABEL_11;
  }

  if ((v2 - 15) < 2)
  {
    v3 = *(v1 + 4);
    v4 = (v1 + 16);
LABEL_11:

    return pmsg_addrs(v4, v3);
  }

  if (v2 == 14)
  {
    printf("if# %d, flags:", *(v1 + 12));
    bprintf(__stdoutp, *(v1 + 8), ifnetflags);
    v3 = *(v1 + 4);
    v4 = (v1 + 112);
    goto LABEL_11;
  }

  printf("pid: %ld, seq %d, errno %d, ", *(v1 + 16), *(v1 + 20), *(v1 + 24));
  v5 = *(v1 + 8);
  if ((v5 & 0x1000000) != 0)
  {
    printf("ifscope %d, ", *(v1 + 4));
    v5 = *(v1 + 8);
  }

  if ((v5 & 0x4000000) != 0)
  {
    printf("ifref, ");
  }

  printf("flags:");
  bprintf(__stdoutp, *(v1 + 8), routeflags);

  return pmsg_common(v1);
}

char *routename(sockaddr_dl *a1)
{
  if ((routename_first & 1) == 0)
  {
    routename_first = 1;
    if (gethostname(&routename_domain, 0x100uLL) || (v2 = index(&routename_domain, 46)) == 0)
    {
      routename_domain = 0;
    }

    else
    {
      byte_10000CF7D = 0;
      strlen(v2 + 1);
      __memmove_chk();
    }
  }

  sdl_len = a1->sdl_len;
  if (!a1->sdl_len)
  {
    goto LABEL_37;
  }

  sdl_family = a1->sdl_family;
  switch(sdl_family)
  {
    case 30:
      *&v21.sa_len = 7708;
      *&v21.sa_data[6] = 0;
      v23 = 0;
      v22 = 0;
      __memcpy_chk();
      if (sdl_len == 28 && v21.sa_data[6] == 255 && (v21.sa_data[7] & 0xF) == 1)
      {
        v23 = bswap32(*&v21.sa_data[8]) >> 16;
        *&v21.sa_data[8] = 0;
      }

      if (nflag)
      {
        v19 = 34;
      }

      else
      {
        v19 = 32;
      }

      if (getnameinfo(&v21, 0x1Cu, routename_line, 0x101u, 0, 0, v19))
      {
        goto LABEL_37;
      }

      break;
    case 18:
      sdl_index = a1->sdl_index;
      link_ntoa(a1);
      snprintf(routename_line, 0x101uLL, "index: %u %s");
      break;
    case 2:
      v5 = *&a1->sdl_type;
      *&v21.sa_len = v5;
      if (sdl_len < 4 || !v5)
      {
        goto LABEL_37;
      }

      if (!nflag)
      {
        v13 = gethostbyaddr(&v21, 4u, 2);
        if (v13)
        {
          p_h_name = &v13->h_name;
          v15 = index(v13->h_name, 46);
          if (v15)
          {
            v16 = v15;
            if (!strcmp(v15 + 1, &routename_domain))
            {
              *v16 = 0;
            }
          }

          v17 = *p_h_name;
          v18 = strlen(v17);
          if (clean_non_printable(v17, v18))
          {
LABEL_37:
            __strlcpy_chk();
            return routename_line;
          }
        }
      }

      snprintf(routename_line, 0x101uLL, "%u.%u.%u.%u");
      break;
    default:
      v7 = (sdl_len + 1) & 0x1FELL;
      v8 = snprintf(routename_line, 0x101uLL, "(%d)", a1->sdl_family);
      if (v7 >= 3 && v8 <= 256)
      {
        v9 = &a1->sdl_len + v7;
        v10 = v8;
        p_sdl_type = &a1->sdl_type;
        do
        {
          v12 = snprintf(&routename_line[v10], 257 - v10, " %x", *(p_sdl_type - 1));
          if (p_sdl_type >= v9)
          {
            break;
          }

          v10 += v12;
          p_sdl_type += 2;
        }

        while (v10 < 257);
      }

      break;
  }

  return routename_line;
}

char *netname(sockaddr_dl *a1)
{
  sdl_family = a1->sdl_family;
  if (sdl_family == 30)
  {
    *&v17.sa_len = 0;
    *&v17.sa_data[6] = 0;
    v19 = 0;
    v18 = 0;
    sdl_len = a1->sdl_len;
    __memcpy_chk();
    *&v17.sa_len = 7708;
    if (sdl_len == 28 && v17.sa_data[6] == 255 && (v17.sa_data[7] & 0xF) == 1)
    {
      v19 = bswap32(*&v17.sa_data[8]) >> 16;
      *&v17.sa_data[8] = 0;
    }

    if (nflag)
    {
      v16 = 34;
    }

    else
    {
      v16 = 32;
    }

    if (!getnameinfo(&v17, 0x1Cu, netname_line, 0x101u, 0, 0, v16))
    {
      return netname_line;
    }

    goto LABEL_33;
  }

  if (sdl_family != 18)
  {
    if (sdl_family != 2)
    {
      v7 = (a1->sdl_len + 1) & 0x1FELL;
      v8 = snprintf(netname_line, 0x101uLL, "af %d:", a1->sdl_family);
      if (v7 && v8 <= 256)
      {
        v9 = (&a1->sdl_len + v7);
        v10 = v8;
        p_sdl_index = &a1->sdl_index;
        v12 = &a1->sdl_index;
        do
        {
          v13 = *v12++;
          v14 = snprintf(&netname_line[v10], 257 - v10, " %x", v13);
          if (p_sdl_index >= v9)
          {
            break;
          }

          v10 += v14;
          p_sdl_index = v12;
        }

        while (v10 < 257);
      }

      return netname_line;
    }

    v3 = *&a1->sdl_type;
    if (v3)
    {
      v4 = bswap32(v3);
      if (nflag || (v15 = getnetbyaddr(v4, 2)) == 0 || !v15->n_name)
      {
        if ((v4 & 0xFFFFFF) != 0)
        {
          if (v4)
          {
            if (v4)
            {
              snprintf(netname_line, 0x101uLL, "%u.%u.%u.%u");
            }

            else
            {
              snprintf(netname_line, 0x101uLL, "%u.%u.%u");
            }
          }

          else
          {
            snprintf(netname_line, 0x101uLL, "%u.%u");
          }
        }

        else
        {
          snprintf(netname_line, 0x101uLL, "%u");
        }

        return netname_line;
      }
    }

LABEL_33:
    __strlcpy_chk();
    return netname_line;
  }

  return link_ntoa(a1);
}

uint64_t set_metric(const char *a1, int a2)
{
  v2 = v17;
  if (a2 > 68)
  {
    v3 = &unk_10000CA38;
    v11 = &unk_10000CA3C;
    if (a2 == 73)
    {
      v12 = 32;
    }

    else
    {
      v12 = 0;
    }

    if (a2 != 73)
    {
      v11 = v17;
    }

    if (a2 == 72)
    {
      v6 = 16;
    }

    else
    {
      v6 = v12;
    }

    if (a2 != 72)
    {
      v3 = v11;
    }

    v7 = &unk_10000CA40;
    if (a2 == 70)
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    if (a2 == 70)
    {
      v2 = &xmmword_10000CA44;
    }

    if (a2 == 69)
    {
      v9 = 64;
    }

    else
    {
      v9 = v13;
    }

    if (a2 != 69)
    {
      v7 = v2;
    }

    v10 = a2 <= 71;
  }

  else
  {
    v3 = &rt_metrics + 4;
    v4 = &unk_10000CA34;
    if (a2 == 64)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    if (a2 != 64)
    {
      v4 = v17;
    }

    if (a2 == 47)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (a2 != 47)
    {
      v3 = v4;
    }

    v7 = (&rt_metrics + 12);
    if (a2 == 23)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (a2 == 23)
    {
      v2 = (&rt_metrics + 8);
    }

    if (a2 == 15)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    if (a2 != 15)
    {
      v7 = v2;
    }

    v10 = a2 <= 46;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (v10)
  {
    v15 = v7;
  }

  else
  {
    v15 = v3;
  }

  rtm_inits |= v14;
  if (__PAIR64__(lockrest, locking))
  {
    LODWORD(rt_metrics) = rt_metrics | v14;
    if (locking)
    {
      locking = 0;
    }
  }

  result = atoi(a1);
  *v15 = result;
  return result;
}

uint64_t getaddr(int a1, char *a2, hostent **a3)
{
  v6 = af;
  if (!af)
  {
    v6 = 2;
    af = 2;
    aflen = 16;
  }

  rtm_addrs |= a1;
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        v7 = &so_genmask;
        break;
      case 16:
        v6 = 18;
        v7 = &so_ifp;
        break;
      case 32:
        v7 = &so_ifa;
        break;
      default:
        goto LABEL_102;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v7 = &so_dst;
        break;
      case 2:
        if (iflag)
        {
          *&v39.ai_flags = 0;
          if (getifaddrs(&v39))
          {
            getaddr_cold_1();
          }

          v8 = *&v39.ai_flags;
          if (*&v39.ai_flags)
          {
            v9 = 0;
            v10 = *&v39.ai_flags;
            do
            {
              v11 = v10[3];
              if (v11[1] == 18 && !strcmp(a2, v10[1]))
              {
                v9 = v11;
              }

              v10 = *v10;
            }

            while (v10);
            if (v9)
            {
              memcpy(&so_gate, v9, *v9);
              freeifaddrs(v8);
              return 1;
            }
          }

          freeifaddrs(v8);
        }

        v7 = &so_gate;
        break;
      case 4:
        v7 = &so_mask;
        break;
      default:
LABEL_102:
        usage("internal error");
    }
  }

  *v7 = aflen;
  *(v7 + 1) = v6;
  if (!strcmp(a2, "default"))
  {
    if (a1 == 8 || a1 == 4)
    {
      result = 0;
      *v7 = 0;
      return result;
    }

    if (a1 == 1)
    {
      ++forcenet;
      getaddr(4, a2, 0);
    }

    return 0;
  }

  switch(v6)
  {
    case 17:
      *v7 = 0x80;
      sockaddr(a2, v7);
      return 1;
    case 18:
      link_addr(a2, v7);
      return 1;
    case 30:
      v38 = 0;
      if (a1 == 1)
      {
        v12 = strchr(a2, 47);
        v13 = v12;
        if (v12)
        {
          *v12 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      memset(&v39.ai_socktype, 0, 40);
      *&v39.ai_flags = 0x1E00000004;
      v39.ai_socktype = 2;
      v22 = getaddrinfo(a2, 0, &v39, &v38);
      if (v22 || (v23 = v38, v38->ai_family != 30) || v38->ai_addrlen != 28)
      {
        v36 = __stderrp;
        v37 = gai_strerror(v22);
        fprintf(v36, "%s: %s\n", a2, v37);
        exit(1);
      }

      ai_addr = v38->ai_addr;
      v25 = *&ai_addr->sa_data[10];
      *v7 = *ai_addr;
      *(v7 + 12) = v25;
      v26 = *(v7 + 8);
      if (v26 == 255)
      {
        v27 = *(v7 + 9);
        if ((v27 & 0xF) != 1 && ((v27 & 0xF0) == 0x30 || (v27 & 0xF) != 2))
        {
          goto LABEL_60;
        }
      }

      else if (v26 != 254 || (*(v7 + 9) & 0xC0) != 0x80)
      {
        goto LABEL_60;
      }

      v28 = *(v7 + 6);
      if (v28)
      {
        *(v7 + 5) = bswap32(v28) >> 16;
        *(v7 + 6) = 0;
      }

LABEL_60:
      freeaddrinfo(v23);
      if (v39.ai_flags == 4)
      {
        if (v13)
        {
          *v13 = 47;
          if (a1 != 1)
          {
            return 0;
          }

          v29 = v13 + 1;
          goto LABEL_64;
        }

        if (a1 != 1)
        {
          return 0;
        }

        if (*(v7 + 2))
        {
          if ((*(v7 + 2) & 0xE0) == 0x20)
          {
            v40 = 0;
            v41 = 0;
            if (!*(v7 + 2))
            {
              v29 = "64";
              goto LABEL_64;
            }
          }
        }

        else if (!*(v7 + 3) && !*(v7 + 4) && !*(v7 + 5) && !*(v7 + 6))
        {
          v29 = "0";
LABEL_64:
          if (strcmp(v29, "128"))
          {
            rtm_addrs |= 4u;
            prefixlen(v29);
            return 0;
          }
        }
      }

      return 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v15 = strchr(a2, 47);
  if (a1 == 1)
  {
    v16 = v15;
    if (v15)
    {
      *v15 = 0;
      v17 = inet_network(a2);
      if (v17 != -1)
      {
        v18 = v17;
        v19 = strtoul(v16 + 1, 0, 0);
        n_net = v18;
        v21 = v7;
LABEL_78:
        inet_makenetandmask(n_net, v21, v19);
        return 0;
      }

      *v16 = 47;
    }
  }

  if (a1 == 1 && forcenet || !inet_aton(a2, v7 + 1))
  {
    if (a1 != 1 || forcehost || (n_net = inet_network(a2), n_net == -1) && ((v32 = getnetbyname(a2)) == 0 || (n_net = v32->n_net, !n_net)))
    {
      v33 = gethostbyname(a2);
      if (!v33)
      {
        errx(68, "bad address: %s", a2);
      }

      if (a3)
      {
        *a3 = v33;
      }

      *(v7 + 1) = v33->h_addrtype;
      h_length = v33->h_length;
      if (h_length >= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = h_length;
      }

      memmove(v7 + 4, *v33->h_addr_list, v35);
      return 1;
    }

LABEL_77:
    v21 = v7;
    v19 = 0;
    goto LABEL_78;
  }

  result = 1;
  if (a1 == 1 && !forcehost)
  {
    v30 = *(v7 + 1);
    v31.s_addr = v30;
    if (inet_lnaof(v31))
    {
      return 1;
    }

    n_net = bswap32(v30);
    goto LABEL_77;
  }

  return result;
}

uint64_t prefixlen(const char *a1)
{
  v2 = atoi(a1);
  v3 = v2;
  rtm_addrs |= 4u;
  if (af == 30)
  {
    v4 = &so_mask + 8;
    v5 = 128;
  }

  else
  {
    if (af != 2)
    {
      fwrite("prefixlen not supported in this af\n", 0x23uLL, 1uLL, __stderrp);
LABEL_15:
      exit(1);
    }

    v4 = &so_mask + 4;
    v5 = 32;
  }

  if (v2 > v5)
  {
    fprintf(__stderrp, "%s: bad value\n", a1);
    goto LABEL_15;
  }

  v6 = v2 >> 3;
  v7 = v2 & 7;
  BYTE1(so_mask) = af;
  LOBYTE(so_mask) = aflen;
  bzero(v4, v5 >> 3);
  if (v3 >= 8)
  {
    memset(v4, 255, v6);
  }

  if (v7)
  {
    v4[v6] = 0xFF00u >> v7;
  }

  if (v3 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t rtmsg(int a1, int a2)
{
  *__error() = 0;
  bzero(&m_rtmsg, 0x25CuLL);
  if (a1 == 97)
  {
    v4 = 0;
    v5 = 1;
  }

  else if (a1 == 103)
  {
    if (!BYTE1(so_ifp))
    {
      LOWORD(so_ifp) = 4628;
      rtm_addrs |= 0x10u;
    }

    v5 = 4;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    if (a1 == 99)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  unk_10000C7E0 = rt_metrics;
  byte_10000C7BF = v5;
  unk_10000C7C4 = a2;
  byte_10000C7BE = 5;
  unk_10000C7D0 = ++rtmsg_seq;
  v6 = rtm_addrs;
  unk_10000C7C8 = rtm_addrs;
  unk_10000C7F0 = unk_10000CA34;
  unk_10000C800 = xmmword_10000CA44;
  unk_10000C810 = qword_10000CA54;
  unk_10000C7DC = rtm_inits;
  word_10000C7C0 = ifscope;
  if ((rtm_addrs & 4) != 0)
  {
    mask_addr();
    v6 = rtm_addrs;
  }

  v7 = &unk_10000C818;
  if (v6)
  {
    v8 = so_dst ? (so_dst + 3) & 0x1FC : 4;
    memmove(&unk_10000C818, &so_dst, v8);
    v7 = &unk_10000C818 + v8;
    if (verbose)
    {
      sodump(&so_dst);
    }
  }

  if ((rtm_addrs & 2) != 0)
  {
    v9 = so_gate ? (so_gate + 3) & 0x1FC : 4;
    memmove(v7, &so_gate, v9);
    v7 += v9;
    if (verbose)
    {
      sodump(&so_gate);
    }
  }

  if ((rtm_addrs & 4) != 0)
  {
    v10 = so_mask ? (so_mask + 3) & 0x1FC : 4;
    memmove(v7, &so_mask, v10);
    v7 += v10;
    if (verbose)
    {
      sodump(&so_mask);
    }
  }

  if ((rtm_addrs & 8) != 0)
  {
    v11 = so_genmask ? (so_genmask + 3) & 0x1FC : 4;
    memmove(v7, &so_genmask, v11);
    v7 += v11;
    if (verbose)
    {
      sodump(&so_genmask);
    }
  }

  if ((rtm_addrs & 0x10) != 0)
  {
    v12 = so_ifp ? (so_ifp + 3) & 0x1FC : 4;
    memmove(v7, &so_ifp, v12);
    v7 += v12;
    if (verbose)
    {
      sodump(&so_ifp);
    }
  }

  if ((rtm_addrs & 0x20) != 0)
  {
    if (so_ifa)
    {
      v13 = (so_ifa + 3) & 0x1FC;
    }

    else
    {
      v13 = 4;
    }

    memmove(v7, &so_ifa, v13);
    LODWORD(v7) = v7 + v13;
    if (!verbose)
    {
      v14 = v7 - &m_rtmsg;
      m_rtmsg = v7 - &m_rtmsg;
      goto LABEL_51;
    }

    sodump(&so_ifa);
  }

  v14 = v7 - &m_rtmsg;
  m_rtmsg = v7 - &m_rtmsg;
  if (verbose)
  {
    print_rtmsg(&m_rtmsg);
  }

LABEL_51:
  if (debugonly)
  {
    return 0;
  }

  if ((write(s, &m_rtmsg, v14) & 0x80000000) == 0)
  {
    if (v4)
    {
      while (1)
      {
        v15 = read(s, &m_rtmsg, 0x25CuLL);
        if (v15 < 1)
        {
          break;
        }

        if (unk_10000C7D0 == rtmsg_seq && dword_10000C7CC == pid)
        {
          goto LABEL_62;
        }
      }

      if ((v15 & 0x80000000) == 0)
      {
LABEL_62:
        print_getmsg(&m_rtmsg, v15);
        return 0;
      }

      warn("read from routing socket");
    }

    return 0;
  }

  rtmsg_cold_1();
  return 0xFFFFFFFFLL;
}

void sockaddr(_BYTE *a1, unsigned __int8 *a2)
{
  v5 = (a2 + 1);
  v4 = *a2;
  v6 = &a2[v4];
  bzero(a2, v4);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *a1;
    v11 = v10 - 48;
    v12 = v10 - 97;
    v13 = v10 - 65;
    v14 = v8 | 8;
    if (!*a1)
    {
      v14 = v8 | 4;
    }

    v15 = v13 > 5;
    if (v13 <= 5)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v9 = v10 - 55;
    }

    v17 = v10 - 87;
    v18 = v12 > 5;
    if (v12 <= 5)
    {
      v19 = v8;
    }

    else
    {
      v19 = v16;
    }

    if (!v18)
    {
      v9 = v17;
    }

    if (v11 <= 9)
    {
      v9 = v11;
    }

    else
    {
      v8 = v19;
    }

    if (v8 > 1)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_23;
    }

    if (v8 != 1)
    {
      goto LABEL_26;
    }

    v7 = v9 + 16 * v7;
    v8 = 2;
LABEL_27:
    ++a1;
    if (v5 >= v6)
    {
      goto LABEL_30;
    }
  }

  if (v8 == 2)
  {
    *v5++ = v7;
LABEL_23:
    v8 = 1;
    v7 = v9;
    goto LABEL_27;
  }

  if ((v8 - 5) >= 2)
  {
    if (v8 == 4)
    {
      goto LABEL_30;
    }

LABEL_26:
    v8 = 0;
    *v5++ = v7;
    v7 = 0;
    goto LABEL_27;
  }

  *v5 = v7;
  LOBYTE(v5) = v5 + 1;
LABEL_30:
  *a2 = v5 - a2;
}

uint64_t inet_makenetandmask(uint64_t result, uint64_t a2, int a3)
{
  rtm_addrs |= 4u;
  if (result)
  {
    do
    {
      v3 = result;
      result = (result << 8);
    }

    while (!HIBYTE(v3));
    if (a3)
    {
      goto LABEL_6;
    }

    if (v3)
    {
      LOBYTE(a3) = 32;
LABEL_6:
      v4 = -1 << -a3;
      goto LABEL_10;
    }

    v5 = 0;
    a3 = 32;
    v6 = 255;
    do
    {
      a3 -= 8;
      if (v5 > 2)
      {
        break;
      }

      v7 = v3 & (v6 << 8);
      v6 <<= 8;
      ++v5;
    }

    while (!v7);
  }

  else
  {
    v3 = 0;
  }

  v4 = -1 << -a3;
  if (!a3)
  {
    v4 = 0;
  }

LABEL_10:
  *(a2 + 4) = bswap32(v3);
  DWORD1(so_mask) = bswap32(v4);
  LOWORD(so_mask) = 528;
  return result;
}

unsigned __int16 *interfaces()
{
  size = 0;
  *v5 = xmmword_100004620;
  v6 = 3;
  if (sysctl(v5, 6u, 0, &size, 0, 0) < 0)
  {
    flushroutes_cold_4();
  }

  v0 = malloc_type_malloc(size, 0x1E082E2AuLL);
  if (!v0)
  {
    flushroutes_cold_3();
  }

  v1 = v0;
  result = sysctl(v5, 6u, v0, &size, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    interfaces_cold_1();
  }

  if (size >= 1)
  {
    v3 = v1 + size;
    do
    {
      result = print_rtmsg(v1);
      v1 = (v1 + *v1);
    }

    while (v1 < v3);
  }

  return result;
}

void mask_addr()
{
  v0 = &so_mask + so_mask;
  LOBYTE(so_mask) = 0;
  v1 = v0 + 1;
  while (v0 > &so_mask)
  {
    v2 = *--v0;
    --v1;
    if (v2)
    {
      v3 = v1 - &so_mask;
      LOBYTE(so_mask) = v3;
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  if ((rtm_addrs & 1) != 0 && (BYTE1(so_dst) > 0x1Eu || ((1 << SBYTE1(so_dst)) & 0x40010005) == 0))
  {
    v5 = v3;
    v6 = &so_dst + v3 + 1;
    if (&so_dst + so_dst + 1 > v6)
    {
      bzero(v6, so_dst - v3);
    }

    if (v3 >= 2u)
    {
      do
      {
        *(&so_dst + v5) &= *(&so_mask + v5);
        v7 = v5-- + 1;
      }

      while (v7 > 3);
    }
  }
}

uint64_t sodump(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 2)
  {
    v2.s_addr = *(a1 + 4);
    inet_ntoa(v2);
    printf("%s: inet %s; ");
  }

  else if (v1 == 18)
  {
    link_ntoa(a1);
    printf("%s: link %s; ");
  }

  v3 = __stdoutp;

  return fflush(v3);
}

void print_getmsg(unsigned __int16 *a1, int a2)
{
  routename(&so_dst);
  printf("   route to: %s\n", routename_line);
  if (*(a1 + 2) != 5)
  {
    warnx("routing message version %d not understood", *(a1 + 2));
    return;
  }

  if (*a1 > a2)
  {
    warnx("message length mismatch, in packet %d, returned %d", *a1, a2);
  }

  v4 = *(a1 + 6);
  if (v4)
  {
    print_getmsg_cold_1(v4);
    return;
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (a1 + 46);
    v11 = 1;
    do
    {
      if ((v11 & v5) != 0)
      {
        if (v11 > 3)
        {
          if (v11 == 4)
          {
            v8 = v10;
          }

          else if (v11 == 16 && v10->sdl_family == 18 && v10->sdl_nlen)
          {
            v7 = v10;
          }
        }

        else
        {
          if (v11 == 2)
          {
            v12 = v10;
          }

          else
          {
            v12 = v9;
          }

          if (v11 == 1)
          {
            v6 = v10;
          }

          else
          {
            v9 = v12;
          }
        }

        if (v10->sdl_len)
        {
          v13 = ((v10->sdl_len - 1) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v13 = 4;
        }

        v10 = (v10 + v13);
      }

      v11 *= 2;
    }

    while (v11);
    if (v6 && v8)
    {
      v8->sdl_family = v6->sdl_family;
    }

    else if (!v6)
    {
LABEL_32:
      if (v8)
      {
        v14 = nflag;
        nflag = 1;
        routename(v8);
        printf("       mask: %s\n", routename_line);
        nflag = v14;
      }

      if (v9 && (a1[4] & 2) != 0)
      {
        routename(v9);
        printf("    gateway: %s\n", routename_line);
      }

      if (v7)
      {
        printf("  interface: %.*s\n", v7->sdl_nlen, v7->sdl_data);
      }

      goto LABEL_39;
    }

    routename(v6);
    printf("destination: %s\n", routename_line);
    goto LABEL_32;
  }

LABEL_39:
  printf("      flags: ");
  bprintf(__stdoutp, *(a1 + 2), routeflags);
  printf("\n%s\n", " recvpipe  sendpipe  ssthresh  rtt,msec    rttvar  hopcount      mtu     expire");
  if ((*(a1 + 9) & 8) != 0)
  {
    v15 = 76;
  }

  else
  {
    v15 = 32;
  }

  printf("%8u%c ", *(a1 + 13), v15);
  if ((*(a1 + 9) & 0x10) != 0)
  {
    v16 = 76;
  }

  else
  {
    v16 = 32;
  }

  printf("%8u%c ", *(a1 + 14), v16);
  if ((*(a1 + 9) & 0x20) != 0)
  {
    v17 = 76;
  }

  else
  {
    v17 = 32;
  }

  printf("%8u%c ", *(a1 + 15), v17);
  v18 = (*(a1 + 16) + 500) / 0x3E8uLL;
  if ((*(a1 + 9) & 0x40) != 0)
  {
    v19 = 76;
  }

  else
  {
    v19 = 32;
  }

  printf("%8u%c ", (*(a1 + 16) + 500) / 0x3E8u, v19);
  v20 = (*(a1 + 17) + 500) / 0x3E8uLL;
  if ((*(a1 + 9) & 0x80) != 0)
  {
    v21 = 76;
  }

  else
  {
    v21 = 32;
  }

  printf("%8u%c ", (*(a1 + 17) + 500) / 0x3E8u, v21);
  if ((*(a1 + 9) & 2) != 0)
  {
    v22 = 76;
  }

  else
  {
    v22 = 32;
  }

  printf("%8u%c ", *(a1 + 11), v22);
  if (*(a1 + 9))
  {
    v23 = 76;
  }

  else
  {
    v23 = 32;
  }

  printf("%8u%c ", *(a1 + 10), v23);
  v24 = *(a1 + 12);
  if (v24)
  {
    v24 = *(a1 + 12) - time(0);
    *(a1 + 12) = v24;
  }

  v25 = 76;
  if ((*(a1 + 9) & 4) == 0)
  {
    v25 = 32;
  }

  printf("%8d%c\n", v24, v25);
  if (verbose)
  {

    pmsg_common(a1);
  }

  else if ((*(a1 + 3) & 0xFFFFFF48) != 0)
  {
    printf("sockaddrs: ");
    bprintf(__stdoutp, *(a1 + 3), addrnames);

    putchar(10);
  }
}

FILE *bprintf(FILE *result, unsigned int a2, char *a3)
{
  if (a2)
  {
    v3 = a3;
    LOBYTE(v4) = *a3;
    if (*a3)
    {
      v6 = result;
      v7 = 0;
      do
      {
        if ((a2 >> (v4 - 1)))
        {
          ++v3;
          if (v7)
          {
            v8 = 44;
          }

          else
          {
            v8 = 60;
          }

          result = putc(v8, v6);
          v4 = *v3;
          if (v4 >= 33)
          {
            do
            {
              result = putc(v4, v6);
              v9 = *++v3;
              v4 = v9;
            }

            while (v9 > 32);
          }

          v7 = 1;
        }

        else
        {
          do
          {
            v10 = *++v3;
            v4 = v10;
          }

          while (v10 > 32);
        }
      }

      while (v4);
      if (v7)
      {

        return putc(62, v6);
      }
    }
  }

  return result;
}

uint64_t pmsg_addrs(sockaddr_dl *a1, unsigned int a2)
{
  if (a2)
  {
    printf("\nsockaddrs: ");
    bprintf(__stdoutp, a2, addrnames);
    putchar(10);
    v5 = 1;
    do
    {
      if ((v5 & a2) != 0)
      {
        routename(a1);
        printf(" %s", routename_line);
        if (a1->sdl_len)
        {
          v6 = ((a1->sdl_len - 1) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v6 = 4;
        }

        a1 = (a1 + v6);
      }

      v5 *= 2;
    }

    while (v5);
    putchar(10);
    v7 = __stdoutp;

    return fflush(v7);
  }

  else
  {

    return putchar(10);
  }
}

uint64_t pmsg_common(uint64_t a1)
{
  printf("\nlocks: ");
  bprintf(__stdoutp, *(a1 + 36), metricnames);
  printf(" inits: ");
  bprintf(__stdoutp, *(a1 + 32), metricnames);
  v2 = *(a1 + 12);

  return pmsg_addrs((a1 + 92), v2);
}

uint64_t match_msg_flags(unsigned int a1)
{
  v1 = dword_10000C76C & a1;
  if ((dword_10000C76C & a1 & 1) != 0 || (v1 & 2) != 0 || (v1 & 4) != 0 || (v1 & 8) != 0 || (v1 & 0x10) != 0 || (v1 & 0x20) != 0 || (v1 & 0x40) != 0 || (v1 & 0x80) != 0 || (v1 & 0x100) != 0 || (v1 & 0x200) != 0 || (v1 & 0x400) != 0 || (v1 & 0x800) != 0 || (v1 & 0x1000) != 0 || (v1 & 0x2000) != 0 || (v1 & 0x4000) != 0 || (v1 & 0x8000) != 0 || (v1 & 0x10000) != 0 || (v1 & 0x20000) != 0 || (v1 & 0x40000) != 0 || (v1 & 0x100000) != 0 || (v1 & 0x200000) != 0 || (v1 & 0x400000) != 0 || (v1 & 0x800000) != 0 || (v1 & 0x1000000) != 0 || (v1 & 0x2000000) != 0 || (v1 & 0x4000000) != 0 || (v1 & 0x8000000) != 0 || (v1 & 0x10000000) != 0 || (v1 & 0x20000000) != 0 || (v1 & 0x40000000) != 0 || (a1 & 1) == 0 && (monitor_filter & 1) != 0 || (a1 & 2) == 0 && (monitor_filter & 2) != 0 || (a1 & 4) == 0 && (monitor_filter & 4) != 0 || (a1 & 8) == 0 && (monitor_filter & 8) != 0 || (a1 & 0x10) == 0 && (monitor_filter & 0x10) != 0 || (a1 & 0x20) == 0 && (monitor_filter & 0x20) != 0 || (a1 & 0x40) == 0 && (monitor_filter & 0x40) != 0 || (a1 & 0x80) == 0 && (monitor_filter & 0x80) != 0 || (a1 & 0x100) == 0 && (monitor_filter & 0x100) != 0 || (a1 & 0x200) == 0 && (monitor_filter & 0x200) != 0 || (a1 & 0x400) == 0 && (monitor_filter & 0x400) != 0 || (a1 & 0x800) == 0 && (monitor_filter & 0x800) != 0 || (a1 & 0x1000) == 0 && (monitor_filter & 0x1000) != 0 || (a1 & 0x2000) == 0 && (monitor_filter & 0x2000) != 0 || (a1 & 0x4000) == 0 && (monitor_filter & 0x4000) != 0 || (a1 & 0x8000) == 0 && (monitor_filter & 0x8000) != 0 || (a1 & 0x10000) == 0 && (monitor_filter & 0x10000) != 0 || (a1 & 0x20000) == 0 && (monitor_filter & 0x20000) != 0 || (a1 & 0x40000) == 0 && (monitor_filter & 0x40000) != 0 || (a1 & 0x100000) == 0 && (monitor_filter & 0x100000) != 0 || (a1 & 0x200000) == 0 && (monitor_filter & 0x200000) != 0 || (a1 & 0x400000) == 0 && (monitor_filter & 0x400000) != 0 || (a1 & 0x800000) == 0 && (monitor_filter & 0x800000) != 0 || (a1 & 0x1000000) == 0 && (monitor_filter & 0x1000000) != 0 || (a1 & 0x2000000) == 0 && (monitor_filter & 0x2000000) != 0 || (a1 & 0x4000000) == 0 && (monitor_filter & 0x4000000) != 0 || (a1 & 0x8000000) == 0 && (monitor_filter & 0x8000000) != 0 || (a1 & 0x10000000) == 0 && (monitor_filter & 0x10000000) != 0 || (a1 & 0x20000000) == 0 && (monitor_filter & 0x20000000) != 0)
  {
    return 0;
  }

  if ((monitor_filter & 0x40000000) != 0)
  {
    return (a1 >> 30) & 1;
  }

  return 1;
}

_BYTE *clean_non_printable(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      for (i = a1; ; ++i)
      {
        v5 = *i;
        if (!*i)
        {
          return a1;
        }

        if (v5 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v5] & 0x40000) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (!--v3)
        {
          return a1;
        }
      }

      if (__maskrune(v5, 0x40000uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *i = 63;
      goto LABEL_8;
    }
  }

  return a1;
}

void rtmsg_cold_1()
{
  v0 = *__error();
  switch(v0)
  {
    case 3:
      v1 = "not in table";
      break;
    case 55:
      v1 = "routing table overflow";
      break;
    case 16:
      v1 = "entry in use";
      break;
    default:
      v1 = strerror(v0);
      break;
  }

  warnx("writing to routing socket: %s", v1);
}

void print_getmsg_cold_1(int a1)
{
  *__error() = a1;
  v1 = __error();
  warn("message indicates error %d", *v1);
}