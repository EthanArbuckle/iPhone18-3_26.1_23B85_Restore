uint64_t sub_100000678(_DWORD *a1)
{
  v2 = getprotobyname("ipv6-icmp");
  v3 = v2;
  if (!v2)
  {
    sub_100001E2C("icmp: unknown protocol");
  }

  *a1 = 3;
  v4 = socket(30, 3, v2->p_proto);
  if ((v4 & 0x80000000) != 0)
  {
    *a1 = 2;
    v4 = socket(30, 2, v3->p_proto);
    if ((v4 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = v4;
  v6 = fcntl(v4, 3, 0);
  if (v6 < 0)
  {
    perror("fcntl");
  }

  if (fcntl(v5, 4, v6 | 4u) < 0)
  {
    perror("fcntl");
  }

  return v5;
}

void *sub_10000075C(uint64_t a1)
{
  qword_10000C160 = a1 + 8;
  result = malloc_type_calloc(1uLL, a1 + 8, 0x100004077774924uLL);
  qword_10000C158 = result;
  if (!result)
  {

    sub_100001E2C("can't malloc ping packet");
  }

  return result;
}

uint64_t sub_1000007C0(int a1, _OWORD *a2, _DWORD *a3)
{
  v6 = 28;
  *&v7[8] = 0uLL;
  *v7 = 7680;
  v8 = 0;
  *&v7[8] = *a2;
  result = bind(a1, v7, 0x1Cu);
  if ((result & 0x80000000) != 0)
  {
    sub_10000212C("cannot bind source address");
  }

  if (a3)
  {
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    result = getsockname(a1, v7, &v6);
    if ((result & 0x80000000) != 0)
    {
      sub_10000212C("can't get ICMP socket identity");
    }

    if (*&v7[2])
    {
      *a3 = *&v7[2];
    }
  }

  return result;
}

ssize_t sub_100000868(int a1, sockaddr *a2, socklen_t a3, unsigned int a4, __int16 a5)
{
  v8 = qword_10000C158;
  *qword_10000C158 = 128;
  v8[3] = __rev16(a4);
  v8[2] = a5;
  v9 = qword_10000C160;
  if (dword_10000C1F8)
  {
    v10 = qword_10000C160 >= 9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 8;
    do
    {
      *(qword_10000C158 + v11++) = random();
      v9 = qword_10000C160;
    }

    while (qword_10000C160 > v11);
  }

  v8[1] = 0;
  return sendto(a1, v8, v9, 0, a2, a3);
}

uint64_t sub_100000920(uid_t a1, int a2, int a3, int a4, const void *a5, socklen_t a6)
{
  v12 = geteuid();
  if (v12 == a1)
  {

    return setsockopt(a2, a3, a4, a5, a6);
  }

  else
  {
    v14 = v12;
    if (seteuid(a1))
    {
      perror("cannot elevate privileges for setsockopt");
    }

    v15 = setsockopt(a2, a3, a4, a5, a6);
    if (seteuid(v14))
    {
      sub_100005420();
    }

    return v15;
  }
}

void start(int a1, uint64_t a2)
{
  v4 = geteuid();
  v45[0] = 0;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  v42 = 0u;
  v40.__sigaction_u.__sa_handler = 0;
  *&v40.sa_mask = 0;
  qword_10000C208 = *a2;
  if (a1 == 2)
  {
    if ((v5 = *(a2 + 8), *v5 == 45) && *(v5 + 1) == 104 && !*(v5 + 2) || !strcmp(v5, "--help"))
    {
LABEL_6:
      sub_1000019B0(0);
    }
  }

  dword_10000C118 = sub_1000050F4(&dword_10000C11C);
  dword_10000C120 = sub_100000678(&dword_10000C124);
  if (strstr(qword_10000C208, "fping6"))
  {
    dword_10000C17C = 30;
  }

  dword_10000C210 = 0;
  qword_10000C214 = 0;
  unk_10000C21C = 0;
  if (!v4)
  {
    if (getuid())
    {
      v6 = getuid();
      if (seteuid(v6) == -1)
      {
        perror("cannot setuid");
      }
    }
  }

  sub_1000049CC(&v41, a2);
  dword_10000C174 = bswap32(getpid()) >> 16;
  dword_10000C170 = dword_10000C174;
  dword_10000C224 = 1;
  dword_10000C228 = 1;
  opterr = 1;
  memcpy(__dst, &off_1000081F0, sizeof(__dst));
  v38 = 0.0;
  while (2)
  {
    v7 = sub_100004C94(&v41, __dst, 0);
    switch(v7)
    {
      case '4':
        if ((dword_10000C17C & 0xFFFFFFFD) != 0)
        {
          goto LABEL_88;
        }

        dword_10000C17C = 2;
        continue;
      case '5':
      case '7':
      case '8':
      case '9':
      case ':':
      case ';':
      case '<':
      case '=':
      case '>':
      case '@':
      case 'E':
      case 'F':
      case 'G':
      case 'J':
      case 'K':
      case 'L':
      case 'P':
      case 'T':
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
      case 'j':
      case 'k':
      case 'w':
        continue;
      case '6':
        if (dword_10000C17C)
        {
          v13 = dword_10000C17C == 30;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
LABEL_88:
          fprintf(__stderrp, "%s: can't specify both -4 and -6\n");
          goto LABEL_102;
        }

        dword_10000C17C = 30;
        continue;
      case '?':
        fprintf(__stderrp, "%s: %s\n", *a2, v43);
        fwrite("see 'fping -h' for usage information\n", 0x25uLL, 1uLL, __stderrp);
        goto LABEL_102;
      case 'A':
        dword_10000C250 = 1;
        continue;
      case 'B':
        *&v8 = atof(*(&v42 + 1));
        dword_10000C148 = v8;
        if (*&v8 == 0.0)
        {
          goto LABEL_154;
        }

        continue;
      case 'C':
        dword_10000C150 = atoi(*(&v42 + 1));
        if (!dword_10000C150)
        {
          goto LABEL_154;
        }

        dword_10000C230 = 1;
        dword_10000C234 = 1;
        continue;
      case 'D':
        dword_10000C1F4 = 1;
        continue;
      case 'H':
        dword_10000C198 = atoi(*(&v42 + 1));
        if (!dword_10000C198)
        {
          goto LABEL_154;
        }

        continue;
      case 'I':
        if ((dword_10000C118 & 0x80000000) == 0)
        {
          v11 = strlen(*(&v42 + 1));
          if (sub_100000920(v4, dword_10000C118, 0xFFFF, 4404, *(&v42 + 1), v11))
          {
            v14 = "binding to specific interface (SO_BINTODEVICE)";
LABEL_93:
            perror(v14);
LABEL_102:
            exit(1);
          }
        }

        if ((dword_10000C120 & 0x80000000) == 0)
        {
          v12 = strlen(*(&v42 + 1));
          if (sub_100000920(v4, dword_10000C120, 0xFFFF, 4404, *(&v42 + 1), v12))
          {
            v14 = "binding to specific interface (SO_BINTODEVICE), IPV6";
            goto LABEL_93;
          }
        }

        continue;
      case 'M':
        fprintf(__stderrp, "%s, -M option not supported on this platform\n");
        goto LABEL_102;
      case 'N':
        dword_10000C244 = 1;
        continue;
      case 'O':
        if (!sscanf(*(&v42 + 1), "%i", v45))
        {
          goto LABEL_154;
        }

        if ((dword_10000C118 & 0x80000000) == 0 && setsockopt(dword_10000C118, 0, 3, v45, 4u))
        {
          perror("setting type of service octet IP_TOS");
        }

        if ((dword_10000C120 & 0x80000000) == 0 && setsockopt(dword_10000C120, 41, 36, v45, 4u))
        {
          perror("setting type of service octet IPV6_TCLASS");
        }

        continue;
      case 'Q':
        dword_10000C224 = 0;
        dword_10000C238 = 1;
        if (!sscanf(*(&v42 + 1), "%f", &v38) || v38 < 0.0)
        {
          goto LABEL_154;
        }

        qword_10000C190 = (v38 * 1000000000.0);
        continue;
      case 'R':
        dword_10000C1F8 = 1;
        continue;
      case 'S':
        if (inet_pton(2, *(&v42 + 1), &dword_10000C210))
        {
          dword_10000C19C = 1;
        }

        else
        {
          if (!inet_pton(30, *(&v42 + 1), &qword_10000C214))
          {
            fprintf(__stderrp, "%s: can't parse source address: %s\n");
            goto LABEL_102;
          }

          dword_10000C1A0 = 1;
        }

        continue;
      case 'X':
        dword_10000C18C = atoi(*(&v42 + 1));
        if (!dword_10000C18C)
        {
          goto LABEL_154;
        }

        dword_10000C264 = 1;
        continue;
      case 'a':
        dword_10000C260 = 1;
        continue;
      case 'b':
        v9 = *(&v42 + 1);
        v10 = &dword_10000C14C;
        goto LABEL_45;
      case 'c':
        dword_10000C150 = atoi(*(&v42 + 1));
        if (!dword_10000C150)
        {
          goto LABEL_154;
        }

        dword_10000C230 = 1;
        continue;
      case 'd':
        HIDWORD(qword_10000C248) = 1;
        if (qword_10000C248)
        {
          goto LABEL_87;
        }

        continue;
      case 'e':
        dword_10000C23C = 1;
        continue;
      case 'f':
        qword_10000C200 = *(&v42 + 1);
        continue;
      case 'g':
        dword_10000C1EC = 1;
        continue;
      case 'h':
        goto LABEL_6;
      case 'i':
        if (!sscanf(*(&v42 + 1), "%f", &v38) || v38 < 0.0)
        {
          goto LABEL_154;
        }

        qword_10000C138 = (v38 * 1000000.0);
        continue;
      case 'l':
        dword_10000C258 = 1;
        dword_10000C228 = 0;
        continue;
      case 'm':
        dword_10000C240 = 1;
        continue;
      case 'n':
        LODWORD(qword_10000C248) = 1;
        if (!HIDWORD(qword_10000C248))
        {
          continue;
        }

LABEL_87:
        fprintf(__stderrp, "%s: use either one of -d or -n\n");
        goto LABEL_102;
      case 'o':
        dword_10000C1F0 = 1;
        continue;
      case 'p':
        if (!sscanf(*(&v42 + 1), "%f", &v38) || v38 < 0.0)
        {
          goto LABEL_154;
        }

        qword_10000C140 = (v38 * 1000000.0);
        continue;
      case 'q':
        dword_10000C224 = 0;
        dword_10000C238 = 1;
        continue;
      case 'r':
        v9 = *(&v42 + 1);
        v10 = &dword_10000C128;
LABEL_45:
        if (!sscanf(v9, "%u", v10))
        {
          goto LABEL_154;
        }

        continue;
      case 's':
        dword_10000C254 = 1;
        continue;
      case 't':
        if (!sscanf(*(&v42 + 1), "%f", &v38) || v38 < 0.0)
        {
          goto LABEL_154;
        }

        qword_10000C130 = (v38 * 1000000.0);
        dword_10000C22C = 1;
        continue;
      case 'u':
        dword_10000C25C = 1;
        continue;
      case 'v':
        printf("%s: Version %s\n", qword_10000C208, "5.1");
        exit(0);
      case 'x':
        dword_10000C18C = atoi(*(&v42 + 1));
        if (!dword_10000C18C)
        {
          goto LABEL_154;
        }

        continue;
      default:
        if (v7 != -1)
        {
          continue;
        }

        if (v4 != getuid())
        {
          v15 = getuid();
          if (setuid(v15))
          {
            perror("fatal: failed to permanently drop privileges");
            exit(4);
          }
        }

        if (dword_10000C118 < 0 && dword_10000C120 < 0 || dword_10000C17C == 30 && dword_10000C120 < 0)
        {
          sub_100001E2C("can't create socket (must run as root?)");
        }

        if (dword_10000C198 >= 0x100)
        {
          fprintf(__stderrp, "%s: ttl %u out of range\n");
          goto LABEL_102;
        }

        if (dword_10000C25C && dword_10000C260)
        {
          fprintf(__stderrp, "%s: specify only one of a, u\n");
          goto LABEL_102;
        }

        if (dword_10000C230 && dword_10000C258)
        {
          fprintf(__stderrp, "%s: specify only one of c, l\n");
          goto LABEL_102;
        }

        if ((qword_10000C138 < 1000000 || qword_10000C140 <= 9999999) && getuid())
        {
          fprintf(__stderrp, "%s: these options are too risky for mere mortals.\n", qword_10000C208);
          fprintf(__stderrp, "%s: You need -i >= %u and -p >= %u\n");
          goto LABEL_102;
        }

        if (dword_10000C14C >= 0xFFD1)
        {
          fprintf(__stderrp, "%s: data size %u not valid, must be lower than %u\n");
          goto LABEL_102;
        }

        if (*&dword_10000C148 > 5.0 || *&dword_10000C148 < 1.0)
        {
          fprintf(__stderrp, "%s: backoff factor %.1f not valid, must be between %.1f and %.1f\n");
          goto LABEL_102;
        }

        if (dword_10000C260 || dword_10000C25C || dword_10000C18C)
        {
          dword_10000C224 = 0;
        }

        if (dword_10000C230)
        {
          if (dword_10000C224)
          {
            dword_10000C268 = 1;
          }

          dword_10000C224 = 0;
          dword_10000C25C = 0;
          dword_10000C260 = 0;
        }

        if (dword_10000C258)
        {
          if (!qword_10000C190)
          {
            dword_10000C268 = 1;
          }

          dword_10000C224 = 0;
          dword_10000C25C = 0;
          dword_10000C260 = 0;
        }

        v16 = dword_10000C150;
        if (dword_10000C150 <= (dword_10000C128 + 1))
        {
          v16 = dword_10000C128 + 1;
        }

        dword_10000C26C = v16;
        if (dword_10000C258 | dword_10000C230 && !dword_10000C22C)
        {
          v17 = qword_10000C140;
          if (qword_10000C140 >= 2000000000)
          {
            v17 = 2000000000;
          }

          qword_10000C130 = v17;
        }

        if (dword_10000C198)
        {
          if ((dword_10000C118 & 0x80000000) == 0 && setsockopt(dword_10000C118, 0, 4, &dword_10000C198, 4u))
          {
            perror("setting time to live");
          }

          if ((dword_10000C120 & 0x80000000) == 0 && setsockopt(dword_10000C120, 41, 4, &dword_10000C198, 4u))
          {
            perror("setting time to live");
          }
        }

        clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
        qword_10000C270 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
        qword_10000C278 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
        v18 = a2 + 8 * SHIDWORD(v41);
        if (dword_10000C230)
        {
          v19 = dword_10000C150;
        }

        else if (dword_10000C258 && qword_10000C140 <= qword_10000C130)
        {
          v19 = qword_10000C130 / qword_10000C140 + 1;
        }

        else
        {
          v19 = 1;
        }

        dword_10000C280 = v19;
        v20 = *v18;
        v21 = qword_10000C200;
        if (*v18 && qword_10000C200)
        {
          goto LABEL_154;
        }

        v22 = v20 != 0;
        if (dword_10000C1EC)
        {
          v23 = qword_10000C200 == 0;
        }

        else
        {
          v22 = 1;
          v23 = 1;
        }

        if (!v23 || !v22)
        {
          goto LABEL_154;
        }

        if (v20 || qword_10000C200 || dword_10000C1EC)
        {
          if (!v20 || dword_10000C1EC)
          {
            if (!qword_10000C200)
            {
              if (v20 && dword_10000C1EC)
              {
                if (a1 - HIDWORD(v41) == 2)
                {
                  sub_100002358(v20, *(v18 + 8));
                  goto LABEL_191;
                }

                if (a1 - HIDWORD(v41) == 1)
                {
                  sub_100002188(v20);
                  goto LABEL_191;
                }
              }

LABEL_154:
              sub_1000019B0(1);
            }

            goto LABEL_178;
          }
        }

        else
        {
          v21 = "-";
          qword_10000C200 = "-";
          v20 = *v18;
          if (!*v18)
          {
LABEL_178:
            if (*v21 != 45 || v21[1])
            {
              v26 = fopen_DARWIN_EXTSN();
            }

            else
            {
              v26 = fdopen_DARWIN_EXTSN();
            }

            v27 = v26;
            if (!v26)
            {
              sub_10000212C("fopen");
            }

            if (fgets(v37, 132, v26))
            {
              do
              {
                if (sscanf(v37, "%s", v36) == 1 && v36[0] && v36[0] != 35)
                {
                  sub_100001E78(v36);
                }
              }

              while (fgets(v37, 132, v27));
            }

            fclose(v27);
LABEL_191:
            if (!dword_10000C1CC)
            {
              if (dword_10000C1D8)
              {
                v28 = 2;
              }

              else
              {
                v28 = 1;
              }

              exit(v28);
            }

            if ((dword_10000C118 & 0x80000000) == 0 && (dword_10000C19C || dword_10000C11C == 2))
            {
              if (dword_10000C11C == 2)
              {
                v29 = &dword_10000C170;
              }

              else
              {
                v29 = 0;
              }

              sub_10000523C(dword_10000C118, &dword_10000C210, v29);
            }

            if ((dword_10000C120 & 0x80000000) == 0 && (dword_10000C1A0 || dword_10000C124 == 2))
            {
              if (dword_10000C124 == 2)
              {
                v30 = &dword_10000C174;
              }

              else
              {
                v30 = 0;
              }

              sub_1000007C0(dword_10000C120, &qword_10000C214, v30);
            }

            qword_10000C168 = malloc_type_calloc(dword_10000C1CC, 8uLL, 0x2004093837F09uLL);
            if (!qword_10000C168)
            {
              sub_100001E2C("Can't malloc array of hosts");
            }

            v31 = qword_10000C288;
            if (qword_10000C288)
            {
              v32 = 0;
              do
              {
                v33 = *(v31 + 24);
                *(qword_10000C168 + 8 * v32) = v33;
                *v33 = v32++;
                v31 = *(v31 + 8);
              }

              while (v31);
            }

            sub_1000051D8(dword_10000C14C);
            sub_10000075C(dword_10000C14C);
            v40.__sigaction_u.__sa_handler = sub_10000254C;
            *&v40.sa_mask = 0x200000006;
            if (!sigaction(3, &v40, 0) && !sigaction(2, &v40, 0))
            {
              setlinebuf(__stdoutp);
              if (qword_10000C190)
              {
                qword_10000C298 = qword_10000C270 + qword_10000C190;
              }

              qword_10000C2A0 = 0;
              sub_100004F90();
              sub_10000257C(v34, v35);
              sub_100003890();
            }

            sub_100001E2C("failure to set signal handler");
          }
        }

        v24 = (v18 + 8);
        do
        {
          sub_100001E78(v20);
          v25 = *v24++;
          v20 = v25;
        }

        while (v25);
        goto LABEL_191;
    }
  }
}

void sub_1000019B0(int a1)
{
  v2 = &__stderrp;
  if (!a1)
  {
    v2 = &__stdoutp;
  }

  v3 = *v2;
  fprintf(*v2, "Usage: %s [options] [targets...]\n", qword_10000C208);
  fputc(10, v3);
  fwrite("Probing options:\n", 0x11uLL, 1uLL, v3);
  fwrite("   -4, --ipv4         only ping IPv4 addresses\n", 0x2FuLL, 1uLL, v3);
  fwrite("   -6, --ipv6         only ping IPv6 addresses\n", 0x2FuLL, 1uLL, v3);
  fprintf(v3, "   -b, --size=BYTES   amount of ping data to send, in bytes (default: %d)\n", 56);
  fwrite("   -B, --backoff=N    set exponential backoff factor to N (default: 1.5)\n", 0x49uLL, 1uLL, v3);
  fwrite("   -c, --count=N      count mode: send N pings to each target\n", 0x3EuLL, 1uLL, v3);
  fwrite("   -f, --file=FILE    read list of targets from a file(- means stdin)\n", 0x48uLL, 1uLL, v3);
  fwrite("   -g, --generate     generate target list (only if no -f specified)\n", 0x45uLL, 1uLL, v3);
  fwrite("                      (give start and end IP in the target list, or a CIDR address)\n", 0x54uLL, 1uLL, v3);
  fprintf(v3, "                      (ex. %s -g 192.168.1.0 192.168.1.255 or %s -g 192.168.1.0/24)\n", qword_10000C208, qword_10000C208);
  fwrite("   -H, --ttl=N        set the IP TTL value (Time To Live hops)\n", 0x3FuLL, 1uLL, v3);
  fwrite("   -I, --iface=IFACE  bind to a particular interface\n", 0x35uLL, 1uLL, v3);
  fwrite("   -l, --loop         loop mode: send pings forever\n", 0x34uLL, 1uLL, v3);
  fwrite("   -m, --all          use all IPs of provided hostnames (e.g. IPv4 and IPv6), use with -A\n", 0x5AuLL, 1uLL, v3);
  fwrite("   -M, --dontfrag     set the Don't Fragment flag\n", 0x32uLL, 1uLL, v3);
  fwrite("   -O, --tos=N        set the type of service (tos) flag on the ICMP packets\n", 0x4DuLL, 1uLL, v3);
  fwrite("   -p, --period=MSEC  interval between ping packets to one target (in ms)\n", 0x4AuLL, 1uLL, v3);
  fprintf(v3, "                      (in loop and count modes, default: %.0f ms)\n", qword_10000C140 / 1000000.0);
  fprintf(v3, "   -r, --retry=N      number of retries (default: %d)\n", 3);
  fwrite("   -R, --random       random packet data (to foil link data compression)\n", 0x49uLL, 1uLL, v3);
  fwrite("   -S, --src=IP       set source address\n", 0x29uLL, 1uLL, v3);
  fprintf(v3, "   -t, --timeout=MSEC individual target initial timeout (default: %.0f ms,\n", qword_10000C130 / 1000000.0);
  fwrite("                      except with -l/-c/-C, where it's the -p period up to 2000 ms)\n", 0x54uLL, 1uLL, v3);
  fputc(10, v3);
  fwrite("Output options:\n", 0x10uLL, 1uLL, v3);
  fwrite("   -a, --alive        show targets that are alive\n", 0x32uLL, 1uLL, v3);
  fwrite("   -A, --addr         show targets by address\n", 0x2EuLL, 1uLL, v3);
  fwrite("   -C, --vcount=N     same as -c, report results in verbose format\n", 0x43uLL, 1uLL, v3);
  fwrite("   -d, --rdns         show targets by name (force reverse-DNS lookup)\n", 0x46uLL, 1uLL, v3);
  fwrite("   -D, --timestamp    print timestamp before each output line\n", 0x3EuLL, 1uLL, v3);
  fwrite("   -e, --elapsed      show elapsed time on return packets\n", 0x3AuLL, 1uLL, v3);
  fprintf(v3, "   -i, --interval=MSEC  interval between sending ping packets (default: %.0f ms)\n", qword_10000C138 / 1000000.0);
  fwrite("   -n, --name         show targets by name (reverse-DNS lookup for target IPs)\n", 0x4FuLL, 1uLL, v3);
  fwrite("   -N, --netdata      output compatible for netdata (-l -Q are required)\n", 0x49uLL, 1uLL, v3);
  fwrite("   -o, --outage       show the accumulated outage time (lost packets * packet interval)\n", 0x58uLL, 1uLL, v3);
  fwrite("   -q, --quiet        quiet (don't show per-target/per-ping results)\n", 0x45uLL, 1uLL, v3);
  fwrite("   -Q, --squiet=SECS  same as -q, but add interval summary every SECS seconds\n", 0x4EuLL, 1uLL, v3);
  fwrite("   -s, --stats        print final stats\n", 0x28uLL, 1uLL, v3);
  fwrite("   -u, --unreach      show targets that are unreachable\n", 0x38uLL, 1uLL, v3);
  fwrite("   -v, --version      show version\n", 0x23uLL, 1uLL, v3);
  fwrite("   -x, --reachable=N  shows if >=N hosts are reachable or not\n", 0x3EuLL, 1uLL, v3);
  fwrite("   -X, --fast-reachable=N exits true immediately when N hosts are found\n", 0x48uLL, 1uLL, v3);
  exit(a1);
}

void sub_100001E2C(const char *a1)
{
  if (dword_10000C224)
  {
    fprintf(__stderrp, "%s: %s\n", qword_10000C208, a1);
  }

  exit(4);
}

void sub_100001E78(char *a1)
{
  memset(&v18.ai_socktype, 0, 40);
  v18.ai_flags = 0x10000000;
  v18.ai_family = dword_10000C17C;
  v18.ai_socktype = 3;
  if (dword_10000C17C == 30)
  {
    v2 = 58;
    goto LABEL_5;
  }

  if (dword_10000C17C == 2)
  {
    v2 = 1;
LABEL_5:
    v18.ai_protocol = v2;
    goto LABEL_7;
  }

  v18.ai_socktype = 1;
LABEL_7:
  v19 = 0;
  v3 = getaddrinfo(a1, 0, &v18, &v19);
  if (v3)
  {
    if (!dword_10000C238)
    {
      v4 = __stderrp;
      v5 = gai_strerror(v3);
      fprintf(v4, "%s: %s\n", a1, v5);
    }

    ++dword_10000C1D8;
    return;
  }

  v6 = v19;
  if (v19)
  {
    while (1)
    {
      v7 = a1;
      if (!qword_10000C248)
      {
        goto LABEL_18;
      }

      v8 = HIDWORD(qword_10000C248) != 0;
      if (qword_10000C248)
      {
        v20[0] = 0;
        v18.ai_flags = 4;
        if (!getaddrinfo(a1, 0, &v18, v20))
        {
          break;
        }
      }

      if (v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 = a1;
LABEL_18:
      ai_addr = v6->ai_addr;
      ai_addrlen = v6->ai_addrlen;
      if (!dword_10000C250)
      {
        v14 = a1;
        v15 = v7;
        v16 = v6->ai_addr;
        goto LABEL_28;
      }

      v11 = getnameinfo(v6->ai_addr, v6->ai_addrlen, v21, 0x100u, 0, 0, 2);
      if (!v11)
      {
        if (qword_10000C248)
        {
          snprintf(v20, 0x203uLL, "%s (%s)", v7, v21);
          v16 = v6->ai_addr;
          ai_addrlen = v6->ai_addrlen;
          v15 = v20;
        }

        else
        {
          v16 = v6->ai_addr;
          ai_addrlen = v6->ai_addrlen;
          v15 = v21;
        }

        v14 = a1;
LABEL_28:
        sub_100004758(v14, v15, v16, ai_addrlen);
        if (!dword_10000C240)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (!dword_10000C238)
      {
        v12 = __stderrp;
        v13 = gai_strerror(v11);
        fprintf(v12, "%s: can't forward-lookup address (%s)\n", a1, v13);
      }

LABEL_29:
      v6 = v6->ai_next;
      if (!v6)
      {
LABEL_30:
        v17 = v19;
        goto LABEL_32;
      }
    }

    freeaddrinfo(v20[0]);
LABEL_16:
    v7 = v22;
    if (!getnameinfo(v6->ai_addr, v6->ai_addrlen, v22, 0x100u, 0, 0, 0))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = 0;
LABEL_32:
  freeaddrinfo(v17);
}

void sub_10000212C(const char *a1)
{
  v2 = __stderrp;
  v3 = qword_10000C208;
  v4 = __error();
  v5 = strerror(*v4);
  fprintf(v2, "%s: %s : %s\n", v3, a1, v5);
  exit(4);
}

void sub_100002188(char *a1)
{
  v2 = strchr(a1, 47);
  if (!v2)
  {
    sub_1000019B0(1);
  }

  v12 = 0;
  *v2 = 0;
  v3 = atoi(v2 + 1);
  memset(&v13, 0, sizeof(v13));
  v13.ai_flags = 4;
  v4 = getaddrinfo(a1, 0, &v13, &v12);
  if (v4)
  {
    v10 = __stderrp;
    gai_strerror(v4);
    fprintf(v10, "%s, can't parse address %s: %s\n");
    goto LABEL_18;
  }

  v5 = v12;
  if (v12->ai_family != 2)
  {
    fprintf(__stderrp, "%s: -g works only with IPv4 addresses\n");
    goto LABEL_18;
  }

  if (v3 - 33 <= 0xFFFFFFDF)
  {
    fprintf(__stderrp, "%s: netmask must be between 1 and 32 (is: %s)\n");
LABEL_18:
    exit(1);
  }

  v6 = (0xFFFFFFFFLL << (32 - v3)) & bswap32(*&v12->ai_addr->sa_data[2]);
  if (v3 >= 0x1F)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = -2;
  if (v3 >= 0x1F)
  {
    v8 = -1;
  }

  v9 = (1 << (32 - v3)) + v8 + v6;
  if (v7 <= v9)
  {
    do
    {
      v11 = bswap32(v7);
      inet_ntop(2, &v11, v14, 0x14u);
      sub_100001E78(v14);
      ++v7;
    }

    while (v7 <= v9);
    v5 = v12;
  }

  freeaddrinfo(v5);
}

void sub_100002358(const char *a1, const char *a2)
{
  v13 = 0;
  memset(&v14, 0, sizeof(v14));
  v14.ai_flags = 4;
  v3 = getaddrinfo(a1, 0, &v14, &v13);
  if (v3)
  {
    v10 = __stderrp;
    gai_strerror(v3);
    fprintf(v10, "%s: can't parse address %s: %s\n");
    goto LABEL_14;
  }

  v4 = v13;
  if (v13->ai_family != 2)
  {
    goto LABEL_10;
  }

  v5 = *&v13->ai_addr->sa_data[2];
  memset(&v14, 0, sizeof(v14));
  v14.ai_flags = 4;
  v6 = getaddrinfo(a2, 0, &v14, &v13);
  if (v6)
  {
    v11 = __stderrp;
    gai_strerror(v6);
    fprintf(v11, "%s: can't parse address %s: %s\n");
    goto LABEL_14;
  }

  v4 = v13;
  if (v13->ai_family != 2)
  {
LABEL_10:
    freeaddrinfo(v4);
    fprintf(__stderrp, "%s: -g works only with IPv4 addresses\n");
    goto LABEL_14;
  }

  v7 = bswap32(v5);
  v8 = bswap32(*&v13->ai_addr->sa_data[2]);
  freeaddrinfo(v13);
  if (v7 + 100000 < v8)
  {
    fprintf(__stderrp, "%s: -g parameter generates too many addresses\n");
LABEL_14:
    exit(1);
  }

  if (v7 <= v8)
  {
    v9 = v8 + 1;
    do
    {
      v12 = bswap32(v7);
      inet_ntop(2, &v12, v15, 0x14u);
      sub_100001E78(v15);
      ++v7;
    }

    while (v9 != v7);
  }
}

uint64_t sub_10000254C(uint64_t result)
{
  if (result == 2)
  {
    v1 = &dword_10000C184;
  }

  else
  {
    if (result != 3)
    {
      return result;
    }

    v1 = &dword_10000C180;
  }

  *v1 = 1;
  return result;
}

void sub_10000257C(uint64_t a1, uint64_t a2)
{
  v2 = qword_10000C288;
  v3 = qword_10000C2A8;
  v4 = qword_10000C2A8 != 0;
  while (qword_10000C288 != 0 || qword_10000C2A8 != 0)
  {
    if (v4 && *(v3 + 16) <= qword_10000C270)
    {
      sub_100004714(&qword_10000C2A8, v3);
      v14 = *(v3 + 24);
      v15 = *(v3 + 32);
      ++*(v14 + 176);
      ++*(v14 + 216);
      v16 = dword_10000C258;
      if ((v15 & 0x80000000) == 0 && !dword_10000C258)
      {
        *(*(v14 + 248) + 8 * v15) = -4;
      }

      ++dword_10000C1DC;
      if (dword_10000C268)
      {
        if (dword_10000C1F4)
        {
          printf("[%.5f] ", qword_10000C270 / 1000000000.0);
          v15 = *(v3 + 32);
        }

        printf("%-*s : [%d], timed out", dword_10000C1C8, *(v14 + 16), v15);
        v17 = *(v14 + 180);
        if (v17 < 1)
        {
          printf(" (NaN avg, ");
        }

        else
        {
          sub_100002B40(*(v14 + 208) / v17);
          printf(" (%s avg, ");
        }

        if (*(v14 + 176) < *(v14 + 180))
        {
          v18 = *(v14 + 184);
          printf("%d%% return)");
        }

        else
        {
          printf("%d%% loss)");
        }

        putchar(10);
        v16 = dword_10000C258;
      }

      if (!(v16 | dword_10000C230) && *(v14 + 176) < (dword_10000C128 + 1))
      {
        if (dword_10000C228)
        {
          *(v14 + 160) = (*&dword_10000C148 * *(v14 + 160));
        }

        sub_100002C0C(v14, *(v3 + 32));
      }

      goto LABEL_69;
    }

    if (v2 && *(v2 + 16) <= qword_10000C270 && qword_10000C270 - qword_10000C2A0 >= qword_10000C138)
    {
      sub_100004714(&qword_10000C288, v2);
      v5 = *(v2 + 24);
      sub_100002C0C(v5, *(v2 + 32));
      if (dword_10000C258)
      {
        v6 = *(v2 + 32) + 1;
      }

      else
      {
        if (!dword_10000C230)
        {
          goto LABEL_10;
        }

        v6 = *(v2 + 32) + 1;
        if (v6 >= dword_10000C150)
        {
          goto LABEL_10;
        }
      }

      v7 = *(v2 + 16);
      v8 = qword_10000C140;
      v9 = *(v5 + 256) + 40 * (v6 % dword_10000C280);
      *(v9 + 32) = v6;
      *(v9 + 16) = v8 + v7;
      *(v9 + 24) = v5;
      sub_100004960(&qword_10000C288, v9);
    }

LABEL_10:
    if (qword_10000C288)
    {
      v10 = (*(qword_10000C288 + 16) - qword_10000C270) & ~((*(qword_10000C288 + 16) - qword_10000C270) >> 63);
      if (v10 < qword_10000C138 && qword_10000C138 > qword_10000C270 - qword_10000C2A0)
      {
        v10 = qword_10000C138 - (qword_10000C270 - qword_10000C2A0);
      }
    }

    else
    {
      v10 = -1;
    }

    if (qword_10000C2A8)
    {
      v11 = *(qword_10000C2A8 + 16) - qword_10000C270;
      v12 = v11 < v10 || v10 < 0;
      v13 = v11 & ~(v11 >> 63);
      if (v12)
      {
        v10 = v13;
      }
    }

    if (qword_10000C190 && dword_10000C258 | dword_10000C230 && qword_10000C298 - qword_10000C270 < v10)
    {
      v10 = (qword_10000C298 - qword_10000C270) & ~((qword_10000C298 - qword_10000C270) >> 63);
    }

    else if (v10 == -1)
    {
      return;
    }

    if (dword_10000C184)
    {
      return;
    }

    while (sub_100002E24(v10, a2))
    {
      v10 = 0;
    }

    clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
    qword_10000C270 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
    if (dword_10000C180)
    {
      dword_10000C180 = 0;
      sub_100003364();
    }

    if (qword_10000C190 && dword_10000C258 | dword_10000C230 && qword_10000C270 >= qword_10000C298)
    {
      if (dword_10000C244)
      {
        sub_1000035D0();
      }

      else
      {
        sub_100003364();
      }

      if (qword_10000C270 >= qword_10000C298)
      {
        if (qword_10000C190 + qword_10000C298 <= qword_10000C270 + 1)
        {
          v19 = qword_10000C270 + 1;
        }

        else
        {
          v19 = qword_10000C190 + qword_10000C298;
        }

        v20 = 1;
        if (qword_10000C190 + qword_10000C298 < qword_10000C270 + 1)
        {
          v20 = 2;
        }

        v21 = v19 - (qword_10000C190 + qword_10000C298 < qword_10000C270 + 1) - (qword_10000C190 + qword_10000C298);
        if (qword_10000C190 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = qword_10000C190;
        }

        qword_10000C298 += qword_10000C190 * (v20 + v21 / v22);
      }
    }

LABEL_69:
    v2 = qword_10000C288;
    v3 = qword_10000C2A8;
    v4 = qword_10000C2A8 != 0;
  }
}

uint64_t *sub_100002A28(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    sub_100004714(a1, *a1);
  }

  return v1;
}

uint64_t sub_100002A58(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  ++*(result + 176);
  ++*(result + 216);
  if (a3)
  {
    ++*(result + 180);
    ++*(result + 220);
    v4 = *(result + 192);
    if (!v4 || v4 < a4)
    {
      *(result + 192) = a4;
    }

    v5 = *(result + 224);
    if (!v5 || v5 < a4)
    {
      *(result + 224) = a4;
    }

    v6 = *(result + 200);
    if (!v6 || v6 > a4)
    {
      *(result + 200) = a4;
    }

    v7 = *(result + 232);
    if (!v7 || v7 > a4)
    {
      *(result + 232) = a4;
    }

    *(result + 208) += a4;
    *(result + 240) += a4;
    if ((a2 & 0x80000000) == 0 && !dword_10000C258)
    {
      *(*(result + 248) + 8 * a2) = a4;
    }
  }

  else
  {
    if ((a2 & 0x80000000) == 0 && !dword_10000C258)
    {
      *(*(result + 248) + 8 * a2) = -4;
    }

    ++dword_10000C1DC;
  }

  return result;
}

char *sub_100002B40(uint64_t a1)
{
  v1 = a1 / 1000000.0;
  if (v1 >= 0.0)
  {
    if (v1 >= 1.0)
    {
      if (v1 >= 10.0)
      {
        if (v1 >= 100.0)
        {
          if (v1 >= 1000000.0)
          {
            v2 = "%.3e";
          }

          else
          {
            v2 = "%.0f";
          }
        }

        else
        {
          v2 = "%.1f";
        }
      }

      else
      {
        v2 = "%.2f";
      }
    }

    else
    {
      v2 = "%.3f";
    }
  }

  else
  {
    v2 = "%.2g";
  }

  __sprintf_chk(byte_10001C311, 0, 0xAuLL, v2, a1 / 1000000.0);
  return byte_10001C311;
}

uint64_t sub_100002C0C(uint64_t a1, int a2)
{
  clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
  v4 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
  qword_10000C270 = v4;
  *(a1 + 168) = v4;
  v5 = sub_100004FEC(*a1, a2, v4);
  v6 = *(a1 + 25);
  if (v6 == 2 && (dword_10000C118 & 0x80000000) == 0)
  {
    if ((sub_100005358(dword_10000C118, (a1 + 24), *(a1 + 152), v5, dword_10000C170) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = 0;
  if (v6 == 30 && (dword_10000C120 & 0x80000000) == 0)
  {
    if ((sub_100000868(dword_10000C120, (a1 + 24), *(a1 + 152), v5, dword_10000C174) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (*__error() != 64)
    {
      if (dword_10000C224)
      {
        if (!dword_10000C238)
        {
          v12 = __stderrp;
          v13 = *(a1 + 16);
          v14 = __error();
          v15 = strerror(*v14);
          fprintf(v12, "%s: error while sending ping: %s\n", v13, v15);
        }
      }

      result = 0;
      ++*(a1 + 176);
      ++*(a1 + 216);
      if (dword_10000C258)
      {
        goto LABEL_16;
      }

      v11 = -3;
      goto LABEL_11;
    }

LABEL_9:
    v8 = qword_10000C270;
    v9 = *(a1 + 160);
    v10 = *(a1 + 264) + 40 * (a2 % dword_10000C280);
    *(v10 + 32) = a2;
    *(v10 + 16) = v9 + v8;
    *(v10 + 24) = a1;
    sub_100004960(&qword_10000C2A8, v10);
    result = 1;
    if (dword_10000C258)
    {
LABEL_16:
      ++dword_10000C1E0;
      qword_10000C2A0 = *(a1 + 168);
      return result;
    }

    v11 = -1;
LABEL_11:
    *(*(a1 + 248) + 8 * a2) = v11;
    goto LABEL_16;
  }

  return result;
}

void *sub_100002DF0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 256) + 40 * (a2 % dword_10000C280);
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return sub_100004960(&qword_10000C288, v3);
}

uint64_t sub_100002E24(unint64_t a1, uint64_t a2)
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  result = sub_100004098(a1, a2, &v22, 0x80u, byte_10000C311, 0x10000);
  if (result)
  {
    v3 = result;
    v20 = 0;
    v19 = 0;
    clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
    v4 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
    qword_10000C270 = v4;
    if (v22.sa_family == 30)
    {
      if (sub_100004408(&v22, 0x80u, byte_10000C311, 0x10000uLL, &v20, &v19) && dword_10000C174 == v20)
      {
        goto LABEL_12;
      }
    }

    else if (v22.sa_family == 2)
    {
      v5 = sub_10000417C(&v22, 0x80u, byte_10000C311, 0x10000uLL, &v20, &v19);
      if ((v5 & 0x80000000) == 0 && dword_10000C170 == v20)
      {
        if (dword_10000C178)
        {
          v6 = 0;
        }

        else
        {
          v6 = v5;
        }

        v3 -= v6;
LABEL_12:
        v7 = sub_1000050B8(v19, qword_10000C270);
        if (v7)
        {
          v8 = v7[1];
          v9 = *(qword_10000C168 + 8 * *v7);
          v10 = v4 - *(v7 + 1);
          ++*(v9 + 184);
          ++dword_10000C1E4;
          if (dword_10000C258 || (*(*(v9 + 248) + 8 * v8) & 0x8000000000000000) != 0)
          {
            if (v10 <= *(v9 + 160))
            {
              sub_100002A58(v9, v8, 1, v10);
              if (!qword_10000C1A8 || v10 > qword_10000C1A8)
              {
                qword_10000C1A8 = v10;
              }

              if (!qword_10000C1B0 || v10 < qword_10000C1B0)
              {
                qword_10000C1B0 = v10;
              }

              qword_10000C1C0 += v10;
              ++qword_10000C1B8;
              *(v9 + 160) = qword_10000C130;
              v11 = *(v9 + 264);
              if (v11)
              {
                sub_100004714(&qword_10000C2A8, (v11 + 40 * (v8 % dword_10000C280)));
              }

              if (*(v9 + 180) == 1)
              {
                v12 = ++dword_10000C1D0;
                if (dword_10000C264 && v12 >= dword_10000C18C)
                {
                  dword_10000C184 = 1;
                }

                if (dword_10000C224 | dword_10000C260)
                {
                  printf("%s", *(v9 + 16));
                  if (dword_10000C224)
                  {
                    printf(" is alive");
                  }

                  if (dword_10000C23C)
                  {
                    sub_100002B40(v10);
                    printf(" (%s ms)", byte_10001C311);
                  }

                  if (sub_100004678(&v22, v9 + 24))
                  {
                    getnameinfo(&v22, 0x80u, v21, 0x2Eu, 0, 0, 2);
                    fprintf(__stderrp, " [<- %s]", v21);
                  }

                  putchar(10);
                }
              }

              if (dword_10000C268)
              {
                if (dword_10000C1F4)
                {
                  printf("[%.5f] ", v4 / 1000000000.0);
                }

                v13 = *(v9 + 16);
                v14 = dword_10000C1C8;
                v15 = *(v9 + 208) / *(v9 + 180);
                sub_100002B40(v10);
                printf("%-*s : [%d], %d bytes, %s ms", v14, v13, v8, v3, byte_10001C311);
                sub_100002B40(v15);
                printf(" (%s avg, ", byte_10001C311);
                if (*(v9 + 176) < *(v9 + 180))
                {
                  v16 = *(v9 + 184);
                  printf("%d%% return)");
                }

                else
                {
                  printf("%d%% loss)");
                }

                if (sub_100004678(&v22, v9 + 24))
                {
                  getnameinfo(&v22, 0x80u, v21, 0x2Eu, 0, 0, 2);
                  fprintf(__stderrp, " [<- %s]", v21);
                }

                putchar(10);
              }
            }
          }

          else if (!dword_10000C268)
          {
            v17 = __stderrp;
            v18 = *(v9 + 16);
            sub_100002B40(v10);
            fprintf(v17, "%s : duplicate for [%d], %d bytes, %s ms", v18, v8, v3, byte_10001C311);
            if (sub_100004678(&v22, v9 + 24))
            {
              getnameinfo(&v22, 0x80u, v21, 0x2Eu, 0, 0, 2);
              fprintf(__stderrp, " [<- %s]", v21);
            }

            fputc(10, __stderrp);
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_100003364()
{
  if (dword_10000C224 | dword_10000C268)
  {
    fputc(10, __stderrp);
  }

  clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
  qword_10000C270 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
  v0 = localtime(&stru_10000C2B8.tv_sec);
  result = fprintf(__stderrp, "[%2.2d:%2.2d:%2.2d]\n", v0->tm_hour, v0->tm_min, v0->tm_sec);
  if (dword_10000C1CC >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(qword_10000C168 + 8 * v2);
      fprintf(__stderrp, "%-*s :", dword_10000C1C8, *(v3 + 16));
      v4 = *(v3 + 220);
      v5 = *(v3 + 216);
      if (v5 >= v4)
      {
        if (v5 < 1)
        {
          v6 = 0;
        }

        else
        {
          v6 = 100 * (v5 - v4) / v5;
        }

        fprintf(__stderrp, " xmt/rcv/%%loss = %d/%d/%d%%", v5, *(v3 + 220), v6);
        if (dword_10000C1F0)
        {
          v12 = ((qword_10000C140 * (*(v3 + 216) - *(v3 + 220))) / 1000000.0);
          fprintf(__stderrp, ", outage(ms) = %d");
        }
      }

      else
      {
        v13 = *(v3 + 220);
        fprintf(__stderrp, " xmt/rcv/%%return = %d/%d/%d%%");
      }

      v7 = *(v3 + 220);
      if (v7)
      {
        v8 = __stderrp;
        v9 = *(v3 + 240) / v7;
        sub_100002B40(*(v3 + 232));
        fprintf(v8, ", min/avg/max = %s", byte_10001C311);
        v10 = __stderrp;
        sub_100002B40(v9);
        fprintf(v10, "/%s", byte_10001C311);
        v11 = __stderrp;
        sub_100002B40(*(v3 + 224));
        fprintf(v11, "/%s", byte_10001C311);
      }

      result = fputc(10, __stderrp);
      ++v2;
      *(v3 + 216) = 0u;
      *(v3 + 232) = 0u;
    }

    while (v2 < dword_10000C1CC);
  }

  return result;
}

uint64_t sub_1000035D0()
{
  if (dword_10000C1CC >= 1)
  {
    v0 = 0;
    do
    {
      v1 = *(qword_10000C168 + 8 * v0);
      if ((byte_10000C2E8 & 1) == 0)
      {
        printf("CHART fping.%s_packets '' 'FPing Packets' packets '%s' fping.packets line 110020 %.0f\n", *(v1 + 8), *(v1 + 16), qword_10000C190 / 1000000000.0);
        puts("DIMENSION xmt sent absolute 1 1");
        puts("DIMENSION rcv received absolute 1 1");
      }

      printf("BEGIN fping.%s_packets\n", *(v1 + 8));
      printf("SET xmt = %d\n", *(v1 + 216));
      printf("SET rcv = %d\n", *(v1 + 220));
      puts("END");
      if ((byte_10000C2E8 & 1) == 0)
      {
        printf("CHART fping.%s_quality '' 'FPing Quality' percentage '%s' fping.quality area 110010 %.0f\n", *(v1 + 8), *(v1 + 16), qword_10000C190 / 1000000000.0);
        puts("DIMENSION returned '' absolute 1 1");
      }

      printf("BEGIN fping.%s_quality\n", *(v1 + 8));
      v2 = *(v1 + 216);
      if (v2 < 1)
      {
        v3 = 0;
      }

      else
      {
        v3 = 100 * *(v1 + 220) / v2;
      }

      printf("SET returned = %d\n", v3);
      puts("END");
      if ((byte_10000C2E8 & 1) == 0)
      {
        printf("CHART fping.%s_latency '' 'FPing Latency' ms '%s' fping.latency area 110000 %.0f\n", *(v1 + 8), *(v1 + 16), qword_10000C190 / 1000000000.0);
        puts("DIMENSION min minimum absolute 1 1000000");
        puts("DIMENSION max maximum absolute 1 1000000");
        puts("DIMENSION avg average absolute 1 1000000");
      }

      printf("BEGIN fping.%s_latency\n", *(v1 + 8));
      v4 = *(v1 + 220);
      if (v4)
      {
        v5 = *(v1 + 240) / v4;
        printf("SET min = %lld\n", *(v1 + 232));
        printf("SET avg = %lld\n", v5);
        printf("SET max = %lld\n", *(v1 + 224));
      }

      result = puts("END");
      ++v0;
      *(v1 + 216) = 0u;
      *(v1 + 232) = 0u;
    }

    while (v0 < dword_10000C1CC);
  }

  byte_10000C2E8 = 1;
  return result;
}

uint64_t sub_100003848()
{
  result = clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
  qword_10000C270 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
  return result;
}

void sub_100003890()
{
  clock_gettime(_CLOCK_REALTIME, &stru_10000C2B8);
  qword_10000C270 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
  qword_10000C2C8 = stru_10000C2B8.tv_nsec + 1000000000 * stru_10000C2B8.tv_sec;
  v0 = dword_10000C1CC;
  if (dword_10000C1CC >= 1)
  {
    v1 = 0;
    v2 = qword_10000C168;
    do
    {
      v3 = *(v2 + 8 * v1);
      if (!*(v3 + 180))
      {
        ++dword_10000C1D4;
        if (dword_10000C224 | dword_10000C25C)
        {
          printf("%s", *(v3 + 16));
          if (dword_10000C224)
          {
            printf(" is unreachable");
          }

          putchar(10);
          v2 = qword_10000C168;
          v0 = dword_10000C1CC;
        }
      }

      ++v1;
    }

    while (v1 < v0);
  }

  if (dword_10000C230 | dword_10000C258)
  {
    sub_100003A28();
  }

  if (dword_10000C254)
  {
    sub_100003C98();
  }

  if (dword_10000C18C)
  {
    v4 = dword_10000C1CC - dword_10000C1D4;
    if (dword_10000C1CC - dword_10000C1D4 >= dword_10000C18C)
    {
      printf("Enough hosts reachable (required: %d, reachable: %d)\n", dword_10000C18C, v4);
      goto LABEL_22;
    }

    printf("Not enough hosts reachable (required: %d, reachable: %d)\n", dword_10000C18C, v4);
  }

  else
  {
    if (dword_10000C1D8)
    {
      exit(2);
    }

    if (dword_10000C1D0 == dword_10000C1CC)
    {
LABEL_22:
      exit(0);
    }
  }

  exit(1);
}

void sub_100003A28()
{
  if (dword_10000C224 | dword_10000C268)
  {
    fputc(10, __stderrp);
  }

  if (dword_10000C1CC >= 1)
  {
    v0 = 0;
    do
    {
      v1 = *(qword_10000C168 + 8 * v0);
      fprintf(__stderrp, "%-*s :", dword_10000C1C8, *(v1 + 16));
      if (dword_10000C234)
      {
        if (*(v1 + 176) >= 1)
        {
          v2 = 0;
          do
          {
            v3 = *(*(v1 + 248) + 8 * v2);
            v4 = __stderrp;
            if (v3 < 0)
            {
              fwrite(" -", 2uLL, 1uLL, __stderrp);
            }

            else
            {
              sub_100002B40(v3);
              fprintf(v4, " %s", byte_10001C311);
            }

            ++v2;
          }

          while (v2 < *(v1 + 176));
        }
      }

      else
      {
        v5 = *(v1 + 176);
        v6 = *(v1 + 180);
        if (v5 >= v6)
        {
          if (v5 < 1)
          {
            v7 = 0;
          }

          else
          {
            v7 = 100 * (v5 - v6) / v5;
          }

          fprintf(__stderrp, " xmt/rcv/%%loss = %d/%d/%d%%", v5, *(v1 + 180), v7);
          if (dword_10000C1F0)
          {
            v14 = ((qword_10000C140 * (*(v1 + 176) - *(v1 + 180))) / 1000000.0);
            fprintf(__stderrp, ", outage(ms) = %d");
          }
        }

        else
        {
          v13 = *(v1 + 176);
          fprintf(__stderrp, " xmt/rcv/%%return = %d/%d/%d%%");
        }

        v8 = *(v1 + 180);
        if (v8)
        {
          v9 = __stderrp;
          v10 = *(v1 + 208) / v8;
          sub_100002B40(*(v1 + 200));
          fprintf(v9, ", min/avg/max = %s", byte_10001C311);
          v11 = __stderrp;
          sub_100002B40(v10);
          fprintf(v11, "/%s", byte_10001C311);
          v12 = __stderrp;
          sub_100002B40(*(v1 + 192));
          fprintf(v12, "/%s", byte_10001C311);
        }
      }

      fputc(10, __stderrp);
      ++v0;
    }

    while (v0 < dword_10000C1CC);
  }
}

uint64_t sub_100003C98()
{
  fputc(10, __stderrp);
  fprintf(__stderrp, " %7d targets\n", dword_10000C1CC);
  fprintf(__stderrp, " %7d alive\n", dword_10000C1D0);
  fprintf(__stderrp, " %7d unreachable\n", dword_10000C1D4);
  fprintf(__stderrp, " %7d unknown addresses\n", dword_10000C1D8);
  fputc(10, __stderrp);
  fprintf(__stderrp, " %7d timeouts (waiting for response)\n", dword_10000C1DC);
  fprintf(__stderrp, " %7d ICMP Echos sent\n", dword_10000C1E0);
  fprintf(__stderrp, " %7d ICMP Echo Replies received\n", dword_10000C1E4);
  fprintf(__stderrp, " %7d other ICMP received\n", dword_10000C1E8);
  fputc(10, __stderrp);
  if (qword_10000C1B8)
  {
    v0 = qword_10000C1B0;
  }

  else
  {
    v0 = 0;
    qword_10000C1B0 = 0;
    qword_10000C1A8 = 0;
    qword_10000C1B8 = 1;
    qword_10000C1C0 = 0;
  }

  v1 = __stderrp;
  sub_100002B40(v0);
  fprintf(v1, " %s ms (min round trip time)\n", byte_10001C311);
  v2 = __stderrp;
  sub_100002B40(qword_10000C1C0 / qword_10000C1B8);
  fprintf(v2, " %s ms (avg round trip time)\n", byte_10001C311);
  v3 = __stderrp;
  sub_100002B40(qword_10000C1A8);
  fprintf(v3, " %s ms (max round trip time)\n", byte_10001C311);
  fprintf(__stderrp, " %12.3f sec (elapsed real time)\n", (qword_10000C2C8 - qword_10000C278) / 1000000000.0);
  v4 = __stderrp;

  return fputc(10, v4);
}

void *sub_100003ED0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 264) + 40 * (a2 % dword_10000C280);
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return sub_100004960(&qword_10000C2A8, v3);
}

uint64_t sub_100003F04()
{
  for (i = dword_10000C118; ; i = dword_10000C118)
  {
    memset(v6, 0, sizeof(v6));
    if ((i & 0x80000000) == 0 && __darwin_check_fd_set_overflow(i, v6, 1))
    {
      *(v6 + (i >> 5)) |= 1 << i;
    }

    v1 = dword_10000C120;
    if ((dword_10000C120 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C120, v6, 1))
    {
      *(v6 + ((v1 >> 3) & 0x1FFFFFFC)) |= 1 << v1;
    }

    v2 = select_DARWIN_EXTSN();
    if ((v2 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      perror("select");
      return 0xFFFFFFFFLL;
    }
  }

  if (v2)
  {
    v3 = dword_10000C118;
    if (dword_10000C118 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C118, v6, 1) && ((*(v6 + ((v3 >> 3) & 0x1FFFFFFC)) >> v3))
    {
      return dword_10000C118;
    }

    v5 = dword_10000C120;
    if (dword_10000C120 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C120, v6, 1) && ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return dword_10000C120;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100004098(unint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a5;
  v12[1] = a6;
  v11.msg_name = a3;
  *&v11.msg_namelen = a4;
  v11.msg_iov = v12;
  *&v11.msg_iovlen = 1;
  v11.msg_control = &unk_10000C2E9;
  *&v11.msg_controllen = 40;
  if (a1)
  {
    v6 = a1 / 0x3B9ACA00;
    v7 = a1 % 0x3B9ACA00 / 0x3E8 + 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v12[2] = v6;
  v12[3] = v7;
  v8 = sub_100003F04();
  if (v8 == -1)
  {
    return 0;
  }

  v9 = recvmsg(v8, &v11, 16);
  return v9 & ~(v9 >> 31);
}

double sub_10000416C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

uint64_t sub_10000417C(sockaddr *a1, socklen_t a2, _BYTE *a3, unint64_t a4, _WORD *a5, _WORD *a6)
{
  v6 = a4;
  if (dword_10000C178)
  {
    result = 0;
  }

  else
  {
    result = 4 * (*a3 & 0xFu);
  }

  v10 = (result + 8);
  if (v10 > a4)
  {
    if (dword_10000C224)
    {
      getnameinfo(a1, a2, v23, 0x2Eu, 0, 0, 2);
      printf("received packet too short for ICMP (%d bytes from %s)\n", v6, v23);
    }

    return 0xFFFFFFFFLL;
  }

  v11 = &a3[result];
  if (!*v11)
  {
    *a5 = *(v11 + 2);
    *a6 = bswap32(*(v11 + 3)) >> 16;
    return result;
  }

  if (v10 + 28 <= a4 && v11[28] == 8 && dword_10000C170 == *(v11 + 16))
  {
    v12 = sub_1000050B8(bswap32(*(v11 + 17)) >> 16, qword_10000C270);
    if (v12)
    {
      v13 = v12;
      getnameinfo(a1, a2, v23, 0x2Eu, 0, 0, 2);
      v14 = *v11;
      if (v14 <= 0xC)
      {
        if (((1 << v14) & 0x1830) != 0)
        {
          if (!dword_10000C238)
          {
            v15 = __stderrp;
            v22 = *(*(qword_10000C168 + 8 * *v13) + 16);
            v19 = (&off_10000C000)[*v11];
LABEL_16:
            fprintf(v15, "%s from %s for ICMP Echo sent to %s");
            goto LABEL_17;
          }

          goto LABEL_25;
        }

        if (v14 == 3)
        {
          v16 = *(qword_10000C168 + 8 * *v13);
          v17 = v11[1];
          if (v17 < 0x10)
          {
            if (!dword_10000C238)
            {
              v15 = __stderrp;
              v18 = *(v16 + 16);
              v20 = off_10000C098[v17];
              goto LABEL_16;
            }
          }

          else if (!dword_10000C238)
          {
            v21 = *(v16 + 16);
            fprintf(__stderrp, "ICMP Unreachable (Invalid Code) from %s for ICMP Echo sent to %s");
LABEL_17:
            if (!dword_10000C238)
            {
              fputc(10, __stderrp);
            }
          }

LABEL_25:
          ++dword_10000C1E8;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100004408(sockaddr *a1, socklen_t a2, unsigned __int8 *a3, unint64_t a4, _WORD *a5, _WORD *a6)
{
  v6 = a4;
  if (a4 <= 7)
  {
    if (dword_10000C224)
    {
      getnameinfo(a1, a2, v22, 0x2Eu, 0, 0, 2);
      printf("received packet too short for ICMP (%d bytes from %s)\n", v6, v22);
    }

    return 0;
  }

  if (*a3 == 129)
  {
    *a5 = *(a3 + 2);
    *a6 = bswap32(*(a3 + 3)) >> 16;
    return 1;
  }

  if (a4 >= 0x24 && a3[28] == 8 && dword_10000C174 == *(a3 + 16))
  {
    v11 = sub_1000050B8(bswap32(*(a3 + 17)) >> 16, qword_10000C270);
    if (v11)
    {
      v12 = v11;
      getnameinfo(a1, a2, v22, 0x2Eu, 0, 0, 2);
      v13 = *a3;
      if (v13 <= 0xC)
      {
        if (((1 << v13) & 0x1830) != 0)
        {
          if (!dword_10000C238)
          {
            v14 = __stderrp;
            v21 = *(*(qword_10000C168 + 8 * *v12) + 16);
            v18 = (&off_10000C000)[*a3];
LABEL_14:
            fprintf(v14, "%s from %s for ICMP Echo sent to %s");
            goto LABEL_15;
          }

          goto LABEL_22;
        }

        if (v13 == 3)
        {
          v15 = *(qword_10000C168 + 8 * *v12);
          v16 = a3[1];
          if (v16 < 0x10)
          {
            if (!dword_10000C238)
            {
              v14 = __stderrp;
              v17 = *(v15 + 16);
              v19 = off_10000C098[v16];
              goto LABEL_14;
            }
          }

          else if (!dword_10000C238)
          {
            v20 = *(v15 + 16);
            fprintf(__stderrp, "ICMP Unreachable (Invalid Code) from %s for ICMP Echo sent to %s");
LABEL_15:
            if (!dword_10000C238)
            {
              fputc(10, __stderrp);
            }
          }

LABEL_22:
          ++dword_10000C1E8;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100004678(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = v2 - *(a2 + 1);
  if (!v3)
  {
    if (v2 != 30)
    {
      if (v2 == 2)
      {
        return (*(a1 + 4) - *(a2 + 4));
      }

      return 0;
    }

    v4 = bswap64(*(a1 + 8));
    v5 = bswap64(*(a2 + 8));
    if (v4 == v5)
    {
      v4 = bswap64(*(a1 + 16));
      v5 = bswap64(*(a2 + 16));
      if (v4 == v5)
      {
        return 0;
      }
    }

    if (v4 < v5)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t **sub_100004714(uint64_t **result, uint64_t *a2)
{
  if (*result == a2)
  {
    *result = a2[1];
  }

  v2 = *a2;
  if (result[1] == a2)
  {
    result[1] = v2;
  }

  v3 = a2[1];
  if (v2)
  {
    v2[1] = v3;
  }

  if (v3)
  {
    *v3 = v2;
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *sub_100004758(const char *a1, const char *a2, uint64_t a3, int a4)
{
  v7 = malloc_type_calloc(1uLL, 0x110uLL, 0x1030040B29573AEuLL);
  if (!v7)
  {
    sub_100001E2C("can't allocate HOST_ENTRY");
  }

  v8 = v7;
  v9 = strdup(a1);
  *(v8 + 1) = v9;
  v10 = strdup(a2);
  *(v8 + 2) = v10;
  __memcpy_chk();
  *(v8 + 38) = a4;
  *(v8 + 20) = qword_10000C130;
  *(v8 + 25) = 0;
  if (dword_10000C244)
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = (v9 + 1);
      while ((v11 & 0x80) == 0)
      {
        if ((_DefaultRuneLocale.__runetype[v11] & 0x500) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        v13 = *v12++;
        v11 = v13;
        if (!v13)
        {
          v10 = *(v8 + 2);
          goto LABEL_12;
        }
      }

      if (__maskrune(v11, 0x500uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *(v12 - 1) = 95;
      goto LABEL_8;
    }
  }

LABEL_12:
  v14 = strlen(v10);
  if (v14 > dword_10000C1C8)
  {
    dword_10000C1C8 = v14;
  }

  if (!dword_10000C258)
  {
    v15 = malloc_type_malloc(8 * dword_10000C26C, 0x100004000313F17uLL);
    if (!v15)
    {
      sub_100001E2C("can't allocate resp_times array");
    }

    v16 = v15;
    if (dword_10000C26C >= 2)
    {
      memset_pattern16(v15 + 8, &unk_100007400, 8 * (dword_10000C26C - 1));
    }

    *(v8 + 31) = v16;
  }

  *(v8 + 32) = malloc_type_calloc(dword_10000C280, 0x28uLL, 0x10200407E778586uLL);
  *(v8 + 33) = malloc_type_calloc(dword_10000C280, 0x28uLL, 0x10200407E778586uLL);
  v17 = qword_10000C270;
  v18 = *(v8 + 32);
  *(v18 + 32) = 0;
  *(v18 + 16) = v17;
  *(v18 + 24) = v8;
  result = sub_100004960(&qword_10000C288, v18);
  ++dword_10000C1CC;
  return result;
}

void *sub_100004960(void *result, void *a2)
{
  v2 = result + 1;
  v3 = result[1];
  if (v3)
  {
    v4 = a2[2];
    if (v4 >= v3[2])
    {
      *a2 = v3;
      a2[1] = 0;
      v3[1] = a2;
    }

    else
    {
      while (1)
      {
        v5 = v3;
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v4 >= v3[2])
        {
          *a2 = v3;
          a2[1] = v5;
          v2 = v3 + 1;
          goto LABEL_9;
        }
      }

      *a2 = 0;
      a2[1] = v5;
      v2 = result;
LABEL_9:
      *v5 = a2;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    *result = a2;
  }

  *v2 = a2;
  return result;
}

double sub_1000049CC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 0x100000001;
  *(a1 + 8) = 0x100000001;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1000049E8(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v2 = *a1;
  v3 = *(a1 + 12);
  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v4 != 45 || !v4[1])
  {
    goto LABEL_6;
  }

  if (v4[1] != 45)
  {
    v10 = *(a1 + 96);
    v11 = &v4[v10];
    *(a1 + 16) = v11[1];
    v12 = v11[1];
    if (v12 == 58)
    {
      goto LABEL_24;
    }

    do
    {
      v14 = *a2++;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == v12;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
    if (!v13)
    {
LABEL_24:
      *(a1 + 12) = v3 + 1;
      v25[0] = v11[1];
      v25[1] = 0;
      v20 = "invalid option";
      v21 = v25;
    }

    else
    {
      if (*a2 != 58)
      {
        v22 = v11[2];
        if (v11[2])
        {
          v22 = v10 + 1;
        }

        else
        {
          *(a1 + 12) = v3 + 1;
        }

        *(a1 + 96) = v22;
        return v11[1];
      }

      v16 = v3 + 1;
      if (a2[1] == 58)
      {
        *(a1 + 96) = 0;
        *(a1 + 12) = v16;
        v18 = v11[2];
        v17 = v11 + 2;
        if (v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        *(a1 + 24) = v19;
        return *(v17 - 1);
      }

      v23 = *(v2 + 8 * v16);
      *(a1 + 96) = 0;
      *(a1 + 12) = v16;
      if (v11[2])
      {
        *(a1 + 24) = v11 + 2;
        return v11[1];
      }

      if (v23)
      {
        *(a1 + 24) = v23;
        *(a1 + 12) = v3 + 2;
        return v11[1];
      }

      *(a1 + 24) = 0;
      v24[0] = v11[1];
      v24[1] = 0;
      v20 = "option requires an argument";
      v21 = v24;
    }

    sub_100004BD0(a1, v20, v21);
    return 63;
  }

  if (!v4[2])
  {
    *(a1 + 12) = v3 + 1;
    return 0xFFFFFFFFLL;
  }

LABEL_6:
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 12) = v3 + 1;
  result = sub_1000049E8(a1);
  v7 = *a1;
  v8 = *(*a1 + 8 * v3);
  v9 = *(a1 + 12) - 1;
  if (v9 > v3)
  {
    do
    {
      *(*a1 + 8 * v3) = *(*a1 + 8 * v3 + 8);
      ++v3;
    }

    while (v9 != v3);
    v7 = *a1;
  }

  *(v7 + 8 * v9) = v8;
  *(a1 + 12) = v9;
  return result;
}

uint64_t sub_100004BD0(uint64_t result, _BYTE *a2, char *a3)
{
  LOBYTE(v3) = *a2;
  if (*a2)
  {
    v4 = 0;
    do
    {
      *(result + 32 + v4) = v3;
      v3 = a2[++v4];
    }

    while (v3);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v5 = result + 32;
  v6 = 32;
  v7 = &_mh_execute_header.magic + 1;
  do
  {
    *(v5 + v4) = v6;
    v4 = (v4 + 1);
    v6 = asc_100007301[v7++];
  }

  while (v7 != 6);
  if (v4 <= 0x3D)
  {
    v8 = v4;
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      ++a3;
      v4 = v8 + 1;
      *(v5 + v8) = v9;
      if (v8++ >= 0x3D)
      {
        goto LABEL_15;
      }
    }

    v4 = v8;
  }

LABEL_15:
  *(v5 + v4) = 39;
  *(v5 + (v4 + 1)) = 0;
  return result;
}

uint64_t sub_100004C70(uint64_t a1)
{
  *(a1 + 96) = 0;
  v1 = *(a1 + 12);
  v2 = *(*a1 + 8 * v1);
  if (v2)
  {
    *(a1 + 12) = v1 + 1;
  }

  return v2;
}

uint64_t sub_100004C94(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 12);
  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1;
  if (*v4 != 45 || !v4[1])
  {
    if (*(a1 + 8))
    {
      *(a1 + 12) = v3 + 1;
      result = sub_100004C94(a1, a2, a3);
      v19 = *v7;
      v20 = *(*v7 + 8 * v3);
      v21 = *(v7 + 12) - 1;
      if (v21 > v3)
      {
        do
        {
          *(*v7 + 8 * v3) = *(*v7 + 8 * v3 + 8);
          ++v3;
        }

        while (v21 != v3);
        v19 = *v7;
      }

      *(v19 + 8 * v21) = v20;
      *(v7 + 12) = v21;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v4[1] == 45)
  {
    v8 = v4 + 2;
    if (v4[2])
    {
      v9 = 0;
      *(a1 + 32) = 0;
      *(a1 + 24) = 0;
      *(a1 + 12) = (v3 + 1);
      while (1)
      {
        v10 = a2 + 16 * v9;
        v11 = *v10;
        if (*v10)
        {
          v12 = *v8;
          v13 = *v10;
          if (*v8)
          {
            v14 = v4 + 3;
            v13 = *v10;
            while (v12 != 61 && *v13)
            {
              if (v12 != *v13)
              {
                goto LABEL_17;
              }

              ++v13;
              v15 = *v14++;
              v12 = v15;
              if (!v15)
              {
                goto LABEL_14;
              }
            }

            if (v12 == 61 && !*v13)
            {
LABEL_20:
              if (a3)
              {
                *a3 = v9;
              }

              result = *(v10 + 8);
              *(v7 + 16) = result;
              for (i = v4 + 3; ; ++i)
              {
                v18 = *(i - 1);
                if (!*(i - 1) || v18 == 61)
                {
                  break;
                }
              }

              v30 = *(v10 + 12);
              if (v18 == 61 && v30 == 0)
              {
                v32 = "option takes no arguments";
                goto LABEL_60;
              }

              if (v18 == 61)
              {
                *(v7 + 24) = i;
                return result;
              }

              if (v30 == 1)
              {
                v33 = *v7;
                v34 = *(v7 + 12);
                *(v7 + 12) = v34 + 1;
                v35 = *(v33 + 8 * v34);
                *(v7 + 24) = v35;
                if (!v35)
                {
                  v32 = "option requires an argument";
LABEL_60:
                  a1 = v7;
LABEL_61:
                  sub_100004BD0(a1, v32, v11);
                  return 63;
                }
              }

              return result;
            }
          }

          else
          {
LABEL_14:
            if (!*v13)
            {
              goto LABEL_20;
            }
          }
        }

        else if (!*(v10 + 8))
        {
          v32 = "invalid option";
          v11 = v4 + 2;
          goto LABEL_61;
        }

LABEL_17:
        ++v9;
      }
    }

    *(a1 + 12) = v3 + 1;
    return 0xFFFFFFFFLL;
  }

  v22 = 0;
  v23 = v36;
  while (1)
  {
    v24 = a2 + 16 * v22;
    v25 = *(v24 + 8);
    if (*v24)
    {
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (!v25)
    {
      break;
    }

LABEL_36:
    *v23++ = v25;
    if (*(v24 + 12) >= 1)
    {
      v26 = 0;
      do
      {
        *v23++ = 58;
        ++v26;
      }

      while (v26 < *(v24 + 12));
    }

LABEL_39:
    ++v22;
  }

  *v23 = 0;
  result = sub_1000049E8(a1, v36);
  if (a3)
  {
    *a3 = -1;
    if (result != -1)
    {
      v27 = 0;
      for (j = (a2 + 8); ; j += 4)
      {
        if (*(j - 1))
        {
          v29 = *j;
        }

        else
        {
          v29 = *j;
          if (!*j)
          {
            return result;
          }
        }

        if (v29 == *(v7 + 16))
        {
          *a3 = v27;
        }

        ++v27;
      }
    }
  }

  return result;
}

void sub_100004F90()
{
  qword_10001C320 = malloc_type_calloc(0xFFFFuLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!qword_10001C320)
  {

    perror("malloc error (can't allocate seqmap_map)");
  }
}

uint64_t sub_100004FEC(int a1, int a2, uint64_t a3)
{
  if (!qword_10001C320)
  {
    fwrite("fping internal error: seqmap not initialized.\n", 0x2EuLL, 1uLL, __stderrp);
    goto LABEL_6;
  }

  v3 = dword_10001C328;
  v4 = qword_10001C320 + 16 * dword_10001C328;
  if (a3 - *(v4 + 8) < 10000000000)
  {
    fprintf(__stderrp, "fping error: not enough sequence numbers available! (expire_timeout=%lld, host_nr=%d, ping_count=%d, seqmap_next_id=%d)\n", 10000000000, a1, a2, dword_10001C328);
LABEL_6:
    exit(4);
  }

  *v4 = a1;
  *(v4 + 4) = a2;
  *(v4 + 8) = a3;
  dword_10001C328 = (v3 + 1) % 0xFFFFu;
  return v3;
}

uint64_t sub_1000050B8(unsigned int a1, uint64_t a2)
{
  if (HIWORD(a1))
  {
    return 0;
  }

  if (a2 - *(qword_10001C320 + 16 * a1 + 8) <= 0x2540BE3FFLL)
  {
    return qword_10001C320 + 16 * a1;
  }

  return 0;
}

uint64_t sub_1000050F4(_DWORD *a1)
{
  v2 = getprotobyname("icmp");
  v3 = v2;
  if (!v2)
  {
    sub_100001E2C("icmp: unknown protocol");
  }

  *a1 = 3;
  v4 = socket(2, 3, v2->p_proto);
  if ((v4 & 0x80000000) != 0)
  {
    *a1 = 2;
    v4 = socket(2, 2, v3->p_proto);
    if ((v4 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = v4;
  v6 = fcntl(v4, 3, 0);
  if (v6 < 0)
  {
    perror("fcntl");
  }

  if (fcntl(v5, 4, v6 | 4u) < 0)
  {
    perror("fcntl");
  }

  return v5;
}

void *sub_1000051D8(uint64_t a1)
{
  qword_10000C2E0 = a1 + 8;
  result = malloc_type_calloc(1uLL, a1 + 8, 0x100004077774924uLL);
  qword_10000C2D8 = result;
  if (!result)
  {

    sub_100001E2C("can't malloc ping packet");
  }

  return result;
}

uint64_t sub_10000523C(int a1, _DWORD *a2, _DWORD *a3)
{
  v6 = 16;
  *&v7.sa_len = 512;
  *&v7.sa_data[6] = 0;
  *&v7.sa_data[2] = *a2;
  result = bind(a1, &v7, 0x10u);
  if ((result & 0x80000000) != 0)
  {
    sub_10000212C("cannot bind source address");
  }

  if (a3)
  {
    *&v7.sa_len = 0;
    *&v7.sa_data[6] = 0;
    result = getsockname(a1, &v7, &v6);
    if ((result & 0x80000000) != 0)
    {
      sub_10000212C("can't get ICMP socket identity");
    }

    if (*v7.sa_data)
    {
      *a3 = *v7.sa_data;
    }
  }

  return result;
}

uint64_t sub_100005300(unsigned __int16 *a1, int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 += v4;
      a2 = v3 - 2;
      v5 = v3 > 3;
      v3 -= 2;
    }

    while (v5);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(WORD1(v2) + v2 + (((v2 >> 16) + v2) >> 16));
}

ssize_t sub_100005358(int a1, const sockaddr *a2, socklen_t a3, unsigned int a4, unsigned __int16 a5)
{
  v8 = qword_10000C2D8;
  *qword_10000C2D8 = 8;
  v8[3] = __rev16(a4);
  v8[2] = a5;
  v9 = qword_10000C2E0;
  if (dword_10000C1F8)
  {
    v10 = qword_10000C2E0 >= 9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 8;
    do
    {
      *(qword_10000C2D8 + v11++) = random();
      v9 = qword_10000C2E0;
    }

    while (qword_10000C2E0 > v11);
  }

  v8[1] = sub_100005300(v8, v9);
  return sendto(a1, v8, v9, 0, a2, a3);
}