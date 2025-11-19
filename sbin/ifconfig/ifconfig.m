void bond_status(int a1)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0x100000003;
  qword_10001AE28 = &v10;
  if ((ioctl(a1, 0xC0206947uLL, &ifr) & 0x80000000) == 0)
  {
    if (BYTE2(v12))
    {
      if (BYTE2(v12) == 1)
      {
        v2 = "static";
      }

      else
      {
        v2 = __str;
        snprintf(__str, 0x10uLL, "%d", BYTE2(v12));
      }
    }

    else
    {
      v2 = "lacp";
    }

    if (v11)
    {
      *(&v11 + 1) = malloc_type_malloc(68 * v11, 0x100004069DB8102uLL);
      DWORD1(v11) = v11;
      if ((ioctl(a1, 0xC0206947uLL, &ifr) & 0x80000000) == 0)
      {
        if (v11 < 1)
        {
          if (bond_details)
          {
            printf("\tbond mode: %s\n\tbond key: 0x%04x interfaces: <none>\n", v2, v12);
          }

          else
          {
            puts("\tbond interfaces: <none>");
          }
        }

        else
        {
          if (bond_details)
          {
            printf("\tbond mode: %s\n\tbond key: 0x%04x interfaces:");
          }

          else
          {
            printf("\tbond interfaces:");
          }

          if (v11 >= 1)
          {
            v3 = 0;
            v4 = *(&v11 + 1);
            do
            {
              printf(" %s", v4);
              if (bond_details)
              {
                v5 = *(v4 + 19);
                v6 = "<unknown>";
                if (v5 <= 2)
                {
                  v6 = selected_state_string_names[v5];
                }

                printf(" (%s)", v6);
              }

              ++v3;
              v4 += 68;
            }

            while (v3 < v11);
          }

          putchar(10);
          if (bond_details)
          {
            v7 = v11;
            if (v11 >= 1)
            {
              v8 = *(&v11 + 1);
              do
              {
                printf("\tbond interface: %s priority: 0x%04x state: 0x%02x partner system: 0x%04x,%02x:%02x:%02x:%02x:%02x:%02x key: 0x%04x port: 0x%04x priority: 0x%04x state: 0x%02x\n", v8, *(v8 + 16), *(v8 + 18), *(v8 + 26), *(v8 + 20), *(v8 + 21), *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 28), *(v8 + 30), *(v8 + 32), *(v8 + 34));
                v8 += 68;
                --v7;
              }

              while (v7);
            }
          }
        }
      }

      free(*(&v11 + 1));
    }

    else if (bond_details)
    {
      printf("\tbond mode: %s\n\tbond key: 0x%04x interfaces: <none>", v2, v12);
    }

    else
    {
      puts("\tbond interfaces: <none>");
    }
  }
}

uint64_t bond_ctor()
{
  v0 = &bond_cmds;
  v1 = 3;
  do
  {
    cmd_register(v0);
    v0 += 5;
    --v1;
  }

  while (v1);

  return af_register(af_bond);
}

uint64_t setbonddev(const char *a1, uint64_t a2, int a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (snprintf(v6, 0x10uLL, "%s", a1) >= 0x10)
  {
    setbonddev_cold_2();
  }

  v5 = 1;
  qword_10001AE28 = &v5;
  result = ioctl(a3, 0x80206946uLL, &ifr);
  if (result == -1)
  {
    setbonddev_cold_1();
  }

  return result;
}

uint64_t unsetbonddev(const char *a1, uint64_t a2, int a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (snprintf(v6, 0x10uLL, "%s", a1) >= 0x10)
  {
    setbonddev_cold_2();
  }

  v5 = 2;
  qword_10001AE28 = &v5;
  result = ioctl(a3, 0x80206946uLL, &ifr);
  if (result == -1)
  {
    unsetbonddev_cold_1();
  }

  return result;
}

uint64_t setbondmode(const char *a1, uint64_t a2, int a3)
{
  if (!strcmp(a1, "lacp"))
  {
    v5 = 0;
  }

  else if (!strcmp(a1, "static"))
  {
    v5 = 1;
  }

  else
  {
    v5 = strtoul(a1, 0, 0);
    if (*__error())
    {
      setbondmode_cold_1();
    }
  }

  v10 = 0u;
  v9 = 0u;
  if (snprintf(&v8, 0x10uLL, "%s", a1) >= 0x10)
  {
    setbonddev_cold_2();
  }

  v7 = 5;
  v8 = v5;
  qword_10001AE28 = &v7;
  result = ioctl(a3, 0x80206946uLL, &ifr);
  if (result == -1)
  {
    setbondmode_cold_2();
  }

  return result;
}

uint64_t opt_register(uint64_t result)
{
  *(result + 24) = opts;
  opts = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v146 = 0;
  v145 = 0u;
  v144 = 0u;
  memset(&v142, 0, sizeof(v142));
  noload = 0;
  all = 0;
  __strlcpy_chk();
  v5 = opts;
  if (opts)
  {
    do
    {
      v6 = *v5;
      __strlcat_chk();
      v5 = v5[3];
    }

    while (v5);
  }

  v7 = getopt(argc, argv, v143);
  v8 = &unk_10001A000;
  v9 = is_regex;
  if (v7 == -1 || is_regex)
  {
    v23 = 0;
    v21 = 0;
    v19 = 0;
    v25 = 0;
    v22 = optind;
    v24 = 1;
    goto LABEL_54;
  }

  v138 = 0;
  v10 = 0;
  v11 = 0;
  v140 = 0;
  while (1)
  {
    if (v7 > 107)
    {
      if (v7 <= 113)
      {
        if (v7 == 108)
        {
          ++v140;
        }

        else
        {
          if (v7 != 109)
          {
LABEL_44:
            v18 = opts;
            if (!opts)
            {
              goto LABEL_94;
            }

            while (v7 != **v18)
            {
              v18 = *(v18 + 3);
              if (!v18)
              {
                goto LABEL_94;
              }
            }

            (*(v18 + 2))(optarg);
            goto LABEL_49;
          }

          supmedia = 1;
        }
      }

      else
      {
        switch(v7)
        {
          case 'r':
            ++showrtref;
            break;
          case 'u':
            v10 = (v10 + 1);
            break;
          case 'v':
            ++verbose;
            break;
          default:
            goto LABEL_44;
        }
      }
    }

    else if (v7 <= 97)
    {
      if (v7 == 88)
      {
        v8[3560] = 1;
        v138 = optarg;
      }

      else
      {
        if (v7 != 97)
        {
          goto LABEL_44;
        }

        ++all;
      }
    }

    else
    {
      switch(v7)
      {
        case 'b':
          ++bond_details;
          break;
        case 'd':
          v11 = (v11 + 1);
          break;
        case 'f':
          if (!optarg)
          {
            goto LABEL_94;
          }

          v12 = v10;
          v13 = v11;
          __stringp[0] = strdup(optarg);
          v14 = strsep(__stringp, ",");
          if (v14)
          {
            v15 = v14;
            do
            {
              v16 = strchr(v15, 58);
              if (v16 && (v17 = v16 + 1, v16[1]))
              {
                *v16 = 0;
                if (!strcmp(v15, "addr"))
                {
                  f_addr = strdup(v17);
                }

                else if (!strcmp(v15, "ether"))
                {
                  f_ether = strdup(v17);
                }

                else if (!strcmp(v15, "inet"))
                {
                  f_inet = strdup(v17);
                }

                else if (!strcmp(v15, "inet6"))
                {
                  f_inet6 = strdup(v17);
                }
              }

              else
              {
                warnx("Skipping invalid format specification: %s\n", v15);
              }

              v15 = strsep(__stringp, ",");
            }

            while (v15);
          }

          free(__stringp[0]);
          v8 = &unk_10001A000;
          v11 = v13;
          v10 = v12;
          break;
        default:
          goto LABEL_44;
      }
    }

LABEL_49:
    v7 = getopt(argc, argv, v143);
    v9 = v8[3560];
    if (v7 == -1 || v8[3560])
    {
      v19 = v10 != 0;
      v20 = v11;
      v21 = v11 != 0;
      v22 = optind;
      v23 = v140;
      v24 = v140 == 0;
      if (!v140)
      {
        v25 = v138;
        goto LABEL_92;
      }

      v25 = v138;
      if (all || supmedia || bond_details)
      {
LABEL_94:
        usage();
      }

LABEL_92:
      if (v10 && v20)
      {
        goto LABEL_94;
      }

LABEL_54:
      v26 = argc - v22;
      if (v24 && v26 <= 0)
      {
        all = 1;
      }

      if (v9)
      {
        v27 = regcomp(&v142, v25, 5);
        v26 = argc - v22;
        if (v27)
        {
          errx(1, "bad interface pattern '%s'");
        }
      }

      v28 = &argv[v22];
      if (all | v23)
      {
        if (v26 >= 2)
        {
          goto LABEL_94;
        }

        if (v26 != 1)
        {
          goto LABEL_75;
        }

        v30 = *v28;
        v33 = af_getbyname(*v28);
        if (!v33)
        {
          goto LABEL_94;
        }

        v136 = v33;
        if (*v33)
        {
          v137 = 0;
          ++v28;
        }

        else
        {
          v29 = 1;
LABEL_63:
          v31 = af_getbyname(v30);
          if (v31)
          {
            --v29;
          }

          v137 = v29;
          if (v31)
          {
            ++v28;
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          v136 = v32;
        }
      }

      else
      {
        if ((v8[3560] & 1) == 0)
        {
          if (v26 <= 0)
          {
            goto LABEL_94;
          }

          v35 = *v28++;
          v25 = v35;
          v36 = v26 - 1;
          v37 = v26;
          if (!if_nametoindex(v35))
          {
            if (v37 == 1 || (v120 = *v28, strcmp(*v28, "create")) && strcmp(v120, "plumb"))
            {
              errx(1, "interface %s does not exist");
            }

            if (__strlcpy_chk() >= 0x10)
            {
              errx(1, "%s: cloning name too long");
            }

            ifconfig(v36, v28, 1, 0);
LABEL_83:
            exit(0);
          }

          v26 = v36;
        }

        if (v26 >= 1)
        {
          v29 = v26;
          v30 = *v28;
          goto LABEL_63;
        }

LABEL_75:
        v137 = v26;
        v136 = 0;
      }

      if (getifaddrs(&v146))
      {
        err(1, "getifaddrs", v122);
      }

      v134 = v28;
      v141 = v24;
      v34 = v146;
      if (!v146)
      {
        goto LABEL_78;
      }

      v38 = 0;
      v39 = 0;
      v135 = v21;
      v139 = v25;
      v129 = v19;
      while (2)
      {
        v145 = 0u;
        v144 = 0u;
        ifa_name = v34->ifa_name;
        __strlcpy_chk();
        if (v34->ifa_addr->sa_len <= 0x10uLL)
        {
          __memcpy_chk();
        }

        v41 = v34->ifa_name;
        if (v8[3560] == 1)
        {
          if (regexec(&v142, v34->ifa_name, 0, 0, 0))
          {
            goto LABEL_153;
          }

          v41 = v34->ifa_name;
        }

        else if (v25 && strcmp(v25, v34->ifa_name))
        {
          goto LABEL_153;
        }

        if (v38 && !strcmp(v38, v41))
        {
          goto LABEL_153;
        }

        v42 = __strlcpy_chk();
        v43 = v34->ifa_name;
        if (v42 >= 0x10)
        {
          warnx("%s: interface name too long, skipping", v34->ifa_name);
LABEL_153:
          v44 = v39;
          v43 = v38;
          goto LABEL_154;
        }

        if (v21 && (v34->ifa_flags & 1) != 0 || v19 && (v34->ifa_flags & 1) == 0)
        {
          v44 = v39;
          goto LABEL_154;
        }

        v44 = (v39 + 1);
        if (!v141)
        {
          if (v39 >= 1)
          {
            putchar(32);
          }

          fputs(name, __stdoutp);
          goto LABEL_154;
        }

        v45 = v137;
        if (is_regex == 1 && v137 >= 1)
        {
          v46 = snprintf(print_command_args_line, 0x800uLL, "ifconfig %s", name);
          if (v46 <= 0x7FF)
          {
            v47 = v46;
            v48 = 2048 - v46;
            if (v136)
            {
              v49 = snprintf(&print_command_args_line[v46], v48, " %s", *v136);
              if (v48 > v49)
              {
                v47 += v49;
                v48 -= v47;
                goto LABEL_118;
              }
            }

            else
            {
LABEL_118:
              if (v47 <= 0x7FF)
              {
                v50 = v134;
                v51 = 1;
                do
                {
                  v52 = snprintf(&print_command_args_line[v47], v48, " %s", *v50);
                  if (v48 <= v52)
                  {
                    break;
                  }

                  if (v51 >= v137)
                  {
                    break;
                  }

                  v47 += v52;
                  v48 -= v47;
                  ++v51;
                  ++v50;
                }

                while (v47 < 0x800);
              }
            }
          }

          puts(print_command_args_line);
          v21 = v135;
          v45 = v137;
        }

        if (v45 >= 1)
        {
          ifconfig(v45, v134, 0, v136);
          goto LABEL_154;
        }

        v147 = 712;
        v53 = v136;
        if (!v136)
        {
          v53 = af_getbyname("inet");
        }

        memset(v197, 0, 496);
        *__stringp = 0u;
        v195 = 0;
        v194 = 0u;
        v193 = 0u;
        v192 = 0u;
        v191 = 0u;
        v190 = 0u;
        v189 = 0u;
        v188 = 0u;
        v187 = 0u;
        v186 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        v170 = 0u;
        v169 = 0u;
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v163 = 0u;
        v162 = 0u;
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v154 = 0u;
        v153 = 0u;
        v152 = 0u;
        v151 = 0u;
        v150 = 0u;
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        v54 = *(v53 + 18);
        if (v54 == 18)
        {
          LOBYTE(v54) = 2;
        }

        BYTE1(qword_10001AE28) = v54;
        __strlcpy_chk();
        v55 = socket(BYTE1(qword_10001AE28), 2, 0);
        if ((v55 & 0x80000000) != 0)
        {
          err(1, "socket(family %u,SOCK_DGRAM)");
        }

        v56 = v55;
        printf("%s: ", name);
        printb("flags", v34->ifa_flags, "\x10\x01UP\x02BROADCAST\x03DEBUG\x04LOOPBACK\x05POINTOPOINT\x06SMART\aRUNNING\bNOARP\tPROMISC\nALLMULTI\vOACTIVE\fSIMPLEX\rLINK0\x0ELINK1\x0FLINK2\x10MULTICAST");
        if (ioctl(v56, 0xC0206917uLL, &ifr) != -1 && qword_10001AE28)
        {
          printf(" metric %d", qword_10001AE28);
        }

        if (ioctl(v56, 0xC0206933uLL, &ifr) != -1)
        {
          printf(" mtu %d", qword_10001AE28);
        }

        if (showrtref && ioctl(v56, 0xC0206989uLL, &ifr) != -1)
        {
          printf(" rtref %d", qword_10001AE28);
        }

        if (verbose)
        {
          v57 = if_nametoindex(v34->ifa_name);
          if (v57)
          {
            printf(" index %u", v57);
          }
        }

        if (!ioctl(v56, 0xC02069CCuLL, &ifr) && qword_10001AE28)
        {
          printf(" constrained");
        }

        putchar(10);
        if (verbose)
        {
          if (ioctl(v56, 0xC020698EuLL, &ifr) == -1 || (v58 = qword_10001AE28, !qword_10001AE28))
          {
            v59 = 1;
          }

          else
          {
            printb("\teflags", qword_10001AE28, "\x10\x01AUTOCONFIGURING\x04PROBE_CONNECTIVITY\x05ADV_REPORT\x06IPV6_DISABLED\aACCEPT_RTADV\bTXSTART\tRXPOLL\nVLAN\vBOND\fARPLL\rCLAT46\x0ENOAUTOIPV6\x0FEXPENSIVE\x10ROUTER4\x11CLONE\x12LOCALNET_PRIVATE\x13ND6ALT\x14RESTRICTED_RECV\x15AWDL\x16NOACKPRI\x17AWDL_RESTRICTED\x18CL2K\x19ECN_ENABLE\x1AECN_DISABLE\x1BCHANNEL_DRV\x1CCA\x1DSENDLIST\x1EDIRECTLINK\x1FFASTLN_ON UPDOWNCHANGE");
            putchar(10);
            v59 = (v58 & 0x80) == 0;
          }

          v130 = v59;
          if (verbose && ioctl(v56, 0xC02069CEuLL, &ifr) != -1 && qword_10001AE28)
          {
            printb("\txflags", qword_10001AE28, "\x10\x01WOL\x02TIMESTAMP\x03NOAUTONX\x04LEGACY\x05TXLOWINET\x06RXLOWINET\aALLOCKPI\bLOWPOWER\tMPKLOG\nCONSTRAINED\vLOWLAT\fMARKWKPKT\rFPD\x0ENOSHAPING\x0FMANAGEMENT\x10ULTRA_CONSTRAINED\x11IS_VPN\x12DELAYWAKEPKTEVENT\x13DISABLE_INPUT\x16RXFLOWSTEERING\x18LINK_HEURISTICS\x19LHOF\x1APOINTOPOINT_MDNS\x1BINBAND_WAKE_PKT\x1CLOW_POWER_WAKE");
            putchar(10);
          }
        }

        else
        {
          v130 = 1;
        }

        if (ioctl(v56, 0xC020695BuLL, &ifr))
        {
          v133 = 0;
        }

        else
        {
          v60 = WORD2(qword_10001AE28);
          if (HIDWORD(qword_10001AE28))
          {
            v61 = WORD2(qword_10001AE28);
            printb("\toptions", HIDWORD(qword_10001AE28), "\x10\x01RXCSUM\x02TXCSUM\x03VLAN_MTU\x04VLAN_HWTAGGING\x05JUMBO_MTU\x06TSO4\aTSO6\bLRO\tAV\nTXSTATUS\vCHANNEL_IO\fHW_TIMESTAMP\rSW_TIMESTAMP\x0EPARTIAL_CSUM\x0FZEROINVERT_CSUM\x10LRO_NUM_SEG");
            putchar(10);
            v60 = v61;
          }

          v133 = v60;
          if (supmedia && qword_10001AE28)
          {
            printb("\tcapabilities", qword_10001AE28, "\x10\x01RXCSUM\x02TXCSUM\x03VLAN_MTU\x04VLAN_HWTAGGING\x05JUMBO_MTU\x06TSO4\aTSO6\bLRO\tAV\nTXSTATUS\vCHANNEL_IO\fHW_TIMESTAMP\rSW_TIMESTAMP\x0EPARTIAL_CSUM\x0FZEROINVERT_CSUM\x10LRO_NUM_SEG");
            putchar(10);
          }
        }

        if (verbose)
        {
          v203[0] = 0;
          *v198 = xmmword_10000C420;
          LODWORD(v199[0]) = 3;
          DWORD1(v199[0]) = if_nametoindex(name);
          if (sysctl(v198, 6u, 0, v203, 0, 0) == -1)
          {
            v76 = "sysctl";
          }

          else
          {
            v62 = malloc_type_calloc(v203[0], 1uLL, 0xE42D8F8DuLL);
            if (v62)
            {
              v63 = v62;
              if (sysctl(v198, 6u, v62, v203, 0, 0) == -1)
              {
                perror("sysctl");
              }

              else
              {
                v64 = v63[25];
                if (v64)
                {
                  printb("\thwassist", v64, "\x10\x01CSUM_IP\x02CSUM_TCP\x03CSUM_UDP\x04CSUM_IP_FRAGS\x05CSUM_FRAGMENT\x06CSUM_TCPIPV6\aCSUM_UDPIPV6\bCSUM_FRAGMENT_IPV6\rCSUM_PARTIAL\x0ECSUM_ZERO_INVERT\x11VLAN_TAGGING\x12VLAN_MTU\x15MULTIPAGES\x16TSO_V4\x17TSO_V6\x18TXSTATUS\x19HW_TIMESTAMP\x1ASW_TIMESTAMP\x1DLRO\x1ERX_CSUM ");
                  putchar(10);
                }
              }

              free(v63);
              goto LABEL_176;
            }

            v76 = "calloc";
          }

          perror(v76);
        }

LABEL_176:
        *&v198[4] = 0;
        *v198 = 0;
        for (i = afs; i; i = *(i + 96))
        {
          v66 = *(i + 104);
          if (v66 && (!*(i + 18) || ((v198[((*(i + 18) + ((*(i + 18) >> 28) & 7)) << 16) >> 19] >> (*(i + 18) & 7)) & 1) == 0))
          {
            v66(v56);
            v67 = *(i + 18);
            v68 = 1 << (v67 & 7);
            v69 = ((v67 + ((v67 >> 28) & 7)) << 16) >> 19;
            v198[v69] |= v68;
          }
        }

        v70 = v34;
LABEL_183:
        ifa_addr = v70->ifa_addr;
        if (!ifa_addr || strcmp(v34->ifa_name, v70->ifa_name))
        {
LABEL_185:
          v70 = v70->ifa_next;
          if (!v70)
          {
            *v203 = 0u;
            v204 = 0u;
            LODWORD(v205) = 0;
            __strlcpy_chk();
            if (ioctl(v56, 0xC02469C9uLL, v203) < 0)
            {
              if (*__error() != 2 && *__error() != 12 && *__error() != 1)
              {
                warn("ioctl (SIOCGIFCLAT46ADDR)");
              }
            }

            else if (inet_ntop(30, &v204, v198, 0x100u))
            {
              printf("\tinet6 %s prefixlen %d clat46\n", v198, v205);
            }

            *v203 = 0u;
            v204 = 0u;
            v205 = 0u;
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
            __strlcpy_chk();
            if (ioctl(v56, 0xC06069C1uLL, v203) < 0)
            {
              if (*__error() == 2 || *__error() == 12 || *__error() == 1)
              {
                goto LABEL_213;
              }

              warn("ioctl(SIOCGIFNAT64PREFIX)");
              if (!v136)
              {
                goto LABEL_221;
              }

LABEL_214:
              if (*(v53 + 32))
              {
                call_af_other_status(v53, v56);
              }
            }

            else
            {
              v74 = &v204;
              v75 = 4;
              do
              {
                if (*(v74 + 4))
                {
                  inet_ntop(30, v74, v198, 0x100u);
                  printf("\tnat64 prefix %s prefixlen %d\n", v198, 8 * *(v74 + 4));
                }

                v74 = (v74 + 20);
                --v75;
              }

              while (v75);
LABEL_213:
              if (v136)
              {
                goto LABEL_214;
              }

LABEL_221:
              *&v198[4] = 0;
              *v198 = 0;
              for (j = afs; j; j = *(j + 96))
              {
                if (*(j + 32) && (!*(j + 18) || ((v198[((*(j + 18) + ((*(j + 18) >> 28) & 7)) << 16) >> 19] >> (*(j + 18) & 7)) & 1) == 0))
                {
                  call_af_other_status(j, v56);
                  v78 = *(j + 18);
                  v79 = 1 << (v78 & 7);
                  v80 = ((v78 + ((v78 >> 28) & 7)) << 16) >> 19;
                  v198[v80] |= v79;
                }
              }
            }

            __strlcpy_chk();
            v25 = v139;
            if (!ioctl(v56, 0xC331693DuLL, __stringp))
            {
              printf("%s", v197);
            }

            v21 = v135;
            if (!verbose)
            {
              goto LABEL_425;
            }

            if (ioctl(v56, 0xC02069D9uLL, &ifr) != -1)
            {
              printf("\tgeneration id: %llu\n", qword_10001AE28);
            }

            if (ioctl(v56, 0xC020699FuLL, &ifr) == -1)
            {
              goto LABEL_271;
            }

            v81 = 0;
            v82 = 1;
            if (qword_10001AE28 <= 143)
            {
              if (qword_10001AE28 != 1)
              {
                if (qword_10001AE28 != 6)
                {
                  goto LABEL_263;
                }

                if (dword_10001AE30 > 2)
                {
                  if (dword_10001AE30 == 3)
                  {
                    v82 = 0;
                    v81 = "Wi-Fi";
                    goto LABEL_263;
                  }

                  if (dword_10001AE30 == 4)
                  {
                    v82 = 0;
                    v81 = "IP over Thunderbolt";
                    goto LABEL_263;
                  }
                }

                else
                {
                  if (dword_10001AE30 == 1)
                  {
                    v82 = 0;
                    v81 = "USB Ethernet";
                    goto LABEL_263;
                  }

                  if (dword_10001AE30 == 2)
                  {
                    v82 = 0;
                    v81 = "Bluetooth PAN";
                    goto LABEL_263;
                  }
                }

                v82 = 0;
                v81 = "Ethernet";
                goto LABEL_263;
              }

              if (HIDWORD(qword_10001AE28) == 18)
              {
                if (dword_10001AE30 > 6)
                {
                  if (dword_10001AE30 == 8)
                  {
                    v82 = 0;
                    v81 = "Companion Link Default";
                    goto LABEL_263;
                  }

                  if (dword_10001AE30 == 7)
                  {
                    v82 = 0;
                    v81 = "Companion Link QuickRelay";
                    goto LABEL_263;
                  }
                }

                else
                {
                  if (dword_10001AE30 == 2)
                  {
                    v82 = 0;
                    v81 = "Companion Link Bluetooth";
                    goto LABEL_263;
                  }

                  if (dword_10001AE30 == 3)
                  {
                    v82 = 0;
                    v81 = "Companion Link Wi-Fi";
                    goto LABEL_263;
                  }
                }
              }

              v81 = 0;
              goto LABEL_263;
            }

            switch(qword_10001AE28)
            {
              case 0x90:
                v82 = 0;
                v81 = "IP over FireWire";
                break;
              case 0xFE:
                v82 = 0;
                v81 = "Packet capture";
                break;
              case 0xFF:
                v82 = 0;
                v81 = "Cellular";
                break;
            }

LABEL_263:
            if (verbose < 2)
            {
              if ((v82 & 1) == 0)
              {
                goto LABEL_270;
              }
            }

            else
            {
              if (v82)
              {
                snprintf(ift2str_buf, 0x100uLL, "0x%x family: %u subfamily: %u");
              }

              else
              {
                snprintf(ift2str_buf, 0x100uLL, "%s (0x%x) family: %u subfamily: %u");
              }

              v81 = ift2str_buf;
LABEL_270:
              printf("\ttype: %s\n", v81);
LABEL_271:
              if (verbose >= 2 && ioctl(v56, 0xC02069ADuLL, &ifr) != -1)
              {
                v83 = qword_10001AE28 - 1;
                if (qword_10001AE28 - 1) <= 6 && ((0x5Fu >> v83))
                {
                  printf("\tfunctional type: %s\n", off_1000143A0[v83]);
                }
              }
            }

            *v203 = 0u;
            v204 = 0u;
            __strlcpy_chk();
            if (ioctl(v56, 0xC02069A7uLL, v203) != -1)
            {
              if (v204)
              {
                *(&v204 + 1) = malloc_type_calloc(v204, 0x10uLL, 0x1000040451B5BE8uLL);
                if (*(&v204 + 1))
                {
                  if (ioctl(v56, 0xC02069A7uLL, v203) != 1 && v204)
                  {
                    v84 = 0;
                    v85 = 0;
                    do
                    {
                      v202 = 0u;
                      memset(v201, 0, sizeof(v201));
                      memset(v200, 0, sizeof(v200));
                      memset(v199, 0, sizeof(v199));
                      *v198 = 0u;
                      uuid_copy(v198, (*(&v204 + 1) + v84));
                      if (ioctl(v56, 0xC0E069A8uLL, v198) != 1)
                      {
                        printf("\tagent domain:%s type:%s flags:0x%x desc:%s\n", v199, v200, v202, v201);
                      }

                      ++v85;
                      v84 += 16;
                    }

                    while (v85 < v204);
                  }

                  free(*(&v204 + 1));
                }
              }
            }

            if (ioctl(v56, 0xC020698AuLL, &ifr) != -1)
            {
              print_linkqualitymetric(qword_10001AE28);
              putchar(10);
            }

            if (ioctl(v56, 0xC02069AAuLL, &ifr) != -1)
            {
              printf("\tstate");
              v86 = qword_10001AE28;
              if (qword_10001AE28)
              {
                v87 = BYTE1(qword_10001AE28);
                printf(" rrc: %u ", BYTE1(qword_10001AE28));
                v88 = "(?)";
                if (!v87)
                {
                  v88 = "(idle)";
                }

                if (v87 == 1)
                {
                  printf("(connected)");
                }

                else
                {
                  printf(v88);
                }

                v86 = qword_10001AE28;
              }

              v89 = " availability: (not valid)";
              if ((v86 & 4) != 0)
              {
                v90 = BYTE3(qword_10001AE28);
                printf(" availability: %u ", BYTE3(qword_10001AE28));
                v91 = "(?)";
                if (v90 == 1)
                {
                  v91 = "(false)";
                }

                if (!v90)
                {
                  printf("(true)");
                  goto LABEL_303;
                }

                v89 = v91;
              }

              printf(v89);
LABEL_303:
              if (verbose >= 2 && (qword_10001AE28 & 2) != 0)
              {
                print_linkqualitymetric(SBYTE2(qword_10001AE28));
              }
            }

            putchar(10);
            v171 = 0u;
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            v175 = 0u;
            v176 = 0u;
            v177 = 0u;
            v178 = 0u;
            v179 = 0u;
            v180 = 0u;
            v181 = 0u;
            v182 = 0u;
            v183 = 0u;
            v184 = 0u;
            v185 = 0u;
            __strlcpy_chk();
            if (ioctl(v56, 0xC0F06992uLL, &v171) != -1)
            {
              v92 = *(&v175 + 1);
              v93 = v175;
              v94 = *(&v174 + 1);
              v95 = v174;
              v96 = *(&v172 + 1);
              v124 = v173;
              v126 = *(&v177 + 1);
              v127 = v177;
              v128 = *(&v176 + 1);
              v125 = v176;
              if ((v130 & 1) == 0)
              {
                v131 = v175;
                v97 = v172;
                memset(v198, 0, sizeof(v198));
                LODWORD(v199[0]) = 0;
                v98 = "ALTQ_";
                if ((v172 & 1) == 0)
                {
                  v98 = &unk_10000D3B1;
                }

                v99 = "UNKNOWN";
                if (DWORD1(v172) == 7)
                {
                  v99 = "FQ_CODEL";
                }

                v100 = "NONE";
                if (DWORD1(v172))
                {
                  v100 = v99;
                }

                printf("\tscheduler: %s%s ", v98, v100);
                if ((v97 & 2) != 0)
                {
                  printf("(driver managed)");
                }

                putchar(10);
                memset(v198, 0, sizeof(v198));
                LODWORD(v199[0]) = 0;
                __strlcpy_chk();
                if (ioctl(v56, 0xC0146995uLL, v198) != -1 && LODWORD(v199[0]))
                {
                  v101 = "unknown";
                  if (LODWORD(v199[0]) == 1)
                  {
                    v101 = "opportunistic";
                  }

                  printf("\tthrottling: level %d (%s)\n", LODWORD(v199[0]), v101);
                }

                v21 = v135;
                v93 = v131;
              }

              v102 = v95 >= v96 ? v96 : v95;
              v103 = v96 ? v102 : v95;
              if (v92 | v94)
              {
                if (v92 == v94 && v93 == v103 && v92 == v93 && !v96)
                {
                  v96 = v92;
                  v104 = "\tlink rate: %s\n";
                }

                else
                {
                  v132 = v93;
                  bps_to_str(v103);
                  printf("\tuplink rate: %s [eff] / ", bps_to_str_buf);
                  if (v96)
                  {
                    bps_to_str(v96);
                    if (v124)
                    {
                      printf("%s [tbr %u%%] / ");
                    }

                    else
                    {
                      printf("%s [tbr] / ");
                    }

                    bps_to_str(v94);
                    printf("%s", bps_to_str_buf);
                    printf(" [max]");
                  }

                  else
                  {
                    bps_to_str(v94);
                    printf("%s");
                  }

                  putchar(10);
                  if (v92 == v132)
                  {
                    v96 = v92;
                    v104 = "\tdownlink rate: %s\n";
                  }

                  else
                  {
                    bps_to_str(v132);
                    printf("\tdownlink rate: %s [eff] / ", bps_to_str_buf);
                    v96 = v92;
                    v104 = "%s [max]\n";
                  }
                }

                v105 = v126;
LABEL_346:
                bps_to_str(v96);
                printf(v104, bps_to_str_buf);
              }

              else
              {
                v104 = "\tuplink rate: %s [tbr]\n";
                v105 = v126;
                if (v96)
                {
                  goto LABEL_346;
                }
              }

              v106 = v128;
              v25 = v139;
              if (v105 | v128)
              {
                if (v105 == v128 && v127 == v125)
                {
                  v107 = "\tlink latency: %s\n";
                  if (v105 == v127)
                  {
                    goto LABEL_360;
                  }
                }

                if (v128 && (v108 = "\tuplink latency: %s\n", v125 == v128))
                {
LABEL_355:
                  ns_to_str(v106);
                  printf(v108, ns_to_str_buf);
                }

                else if (v128)
                {
                  ns_to_str(v125);
                  printf("\tuplink latency: %s [eff] / ", ns_to_str_buf);
                  v106 = v128;
                  v108 = "%s [max]\n";
                  goto LABEL_355;
                }

                if (v105 && (v107 = "\tdownlink latency: %s\n", v105 == v127))
                {
LABEL_360:
                  ns_to_str(v105);
                  printf(v107, ns_to_str_buf);
                }

                else if (v105)
                {
                  ns_to_str(v127);
                  printf("\tdownlink latency: %s [eff] / ", ns_to_str_buf);
                  v107 = "%s [max]\n";
                  goto LABEL_360;
                }
              }
            }

            *v198 = xmmword_10000C430;
            *&v199[0] = if_nametoindex(name) | 0x500000000;
            if (sysctl(v198, 6u, v148, &v147, 0, 0) == -1)
            {
              err(1, "sysctl IFDATA_SUPPLEMENTAL", v123);
            }

            if (v149)
            {
              printf("\tunaligned pkts: %llu\n", v149);
            }

            if (*(&v149 + 1))
            {
              v109 = *(&v149 + 1);
              if (*(&v149 + 1) >> 30)
              {
                v109 = v109 * 9.31322575e-10;
                v110 = "GB";
              }

              else if (*(&v149 + 1) < 0x100000uLL)
              {
                v110 = "bytes";
                if (*(&v149 + 1) > 0x3FFuLL)
                {
                  v110 = "KB";
                  v109 = v109 * 0.0009765625;
                }
              }

              else
              {
                v109 = v109 * 0.000000953674316;
                v110 = "MB";
              }

              snprintf(bytes_to_str_buf, 0x20uLL, "%-4.2Lf %s", v109, v110);
              printf("\tdata milestone interval: %s\n", bytes_to_str_buf);
            }

            v195 = 0;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            __strlcpy_chk();
            if (ioctl(v56, 0xC0946990uLL, &v186) != -1 && v187)
            {
              printf("\tdesc: %s\n", &v187 + 4);
            }

            if (ioctl(v56, 0xC020699CuLL, &ifr) != -1 && qword_10001AE28)
            {
              printf("\tlogging: level %d ", qword_10001AE28);
              printb("facilities", HIDWORD(qword_10001AE28), "\x10\x01DLIL\x11FAMILY\x19DRIVER\x1DFIRMWARE");
              putchar(10);
            }

            if (ioctl(v56, 0xC020699DuLL, &ifr) != -1 && qword_10001AE28 && if_indextoname(qword_10001AE28, v203))
            {
              printf("\teffective interface: %s\n", v203);
            }

            if (ioctl(v56, 0xC02069A4uLL, &ifr) != -1 && qword_10001AE28 && HIDWORD(qword_10001AE28))
            {
              printf("\ttxstart qlen: %u packets timeout: %u microseconds\n", qword_10001AE28, HIDWORD(qword_10001AE28) / 0x3E8);
            }

            if ((v133 & 0x1800) != 0 && ioctl(v56, 0xC02069BAuLL, &ifr) != -1)
            {
              v111 = "enabled";
              if (!qword_10001AE28)
              {
                v111 = "disabled";
              }

              printf("\ttimestamp: %s\n", v111);
            }

            if (ioctl(v56, 0xC02069B7uLL, &ifr) == -1)
            {
              goto LABEL_406;
            }

            v112 = "yes";
            if (!qword_10001AE28)
            {
              v112 = "no";
            }

            printf("\tqosmarking enabled: %s mode: ", v112);
            if (ioctl(v56, 0xC02069B6uLL, &ifr) == -1)
            {
              goto LABEL_406;
            }

            if (qword_10001AE28 > 1)
            {
              if (qword_10001AE28 == 2)
              {
                v113 = "RFC4594";
              }

              else
              {
                if (qword_10001AE28 != 3)
                {
                  goto LABEL_402;
                }

                v113 = "custom";
              }

              goto LABEL_405;
            }

            if (!qword_10001AE28)
            {
              v113 = "none";
LABEL_405:
              puts(v113);
              goto LABEL_406;
            }

            if (qword_10001AE28 == 1)
            {
              v113 = "fastlane";
              goto LABEL_405;
            }

LABEL_402:
            printf("unknown (%u)\n", qword_10001AE28);
LABEL_406:
            if (ioctl(v56, 0xC02069C7uLL, &ifr) != -1)
            {
              v114 = "enabled";
              if (!qword_10001AE28)
              {
                v114 = "disabled";
              }

              printf("\tlow power mode: %s\n", v114);
            }

            if (ioctl(v56, 0xC02069E4uLL, &ifr) != -1 && qword_10001AE28)
            {
              v115 = "enabled";
              if (qword_10001AE28 != 1)
              {
                v115 = "disabled";
              }

              printf("\tL4S: %s\n", v115);
            }

            if (ioctl(v56, 0xC02069CAuLL, &ifr) != -1)
            {
              v116 = "enabled";
              if (!qword_10001AE28)
              {
                v116 = "disabled";
              }

              printf("\tmulti layer packet logging (mpklog): %s\n", v116);
            }

            v117 = af_getbyname("inet");
            if (v117)
            {
              (*(v117 + 128))(v56, 0, 0);
            }

            v118 = af_getbyname("inet6");
            if (v118)
            {
              v119 = v118;
              if (show_routermode6_s < 0 && (show_routermode6_s = socket(30, 2, 0), show_routermode6_s < 0))
              {
                perror("socket");
              }

              else
              {
                (*(v119 + 128))();
              }
            }

LABEL_425:
            close(v56);
            v19 = v129;
LABEL_154:
            v34 = v34->ifa_next;
            v38 = v43;
            v39 = v44;
            v8 = &unk_10001A000;
            if (!v34)
            {
LABEL_78:
              if (!v141)
              {
                putchar(10);
              }

              freeifaddrs(v146);
              if (v8[3560] == 1)
              {
                regfree(&v142);
              }

              freeformat();
              goto LABEL_83;
            }

            continue;
          }

          goto LABEL_183;
        }

        break;
      }

      if (v136)
      {
        if (*(v53 + 18) != ifa_addr->sa_family)
        {
          goto LABEL_185;
        }

        v72 = *(v53 + 24);
      }

      else
      {
        v73 = afs;
        if (!afs)
        {
          goto LABEL_185;
        }

        while (*(v73 + 18) != ifa_addr->sa_family)
        {
          v73 = *(v73 + 96);
          if (!v73)
          {
            goto LABEL_185;
          }
        }

        v72 = *(v73 + 24);
        if (!v72)
        {
          goto LABEL_185;
        }
      }

      v72(v56, v70);
      goto LABEL_185;
    }
  }
}

void usage()
{
  v2[0] = 0;
  for (i = opts; i; i = *(i + 24))
  {
    v1 = *(i + 8);
    __strlcat_chk();
    __strlcat_chk();
  }

  fprintf(__stderrp, "usage: ifconfig %sinterface address_family [address [dest_address]]\n                [parameters]\n       ifconfig interface create\n       ifconfig -a %s[-d] [-m] [-u] [-v] [address_family]\n       ifconfig -l [-d] [-u] [address_family]\n       ifconfig %s[-d] [-m] [-u] [-v]\n       ifconfig -X pattern %s[-a] [-d] [-d] [-m] [-u] [-v] [address_family]\n", v2, v2, v2, v2);
  exit(1);
}

uint64_t af_getbyname(char *__s2)
{
  for (i = afs; i; i = *(i + 96))
  {
    if (!strcmp(*i, __s2))
    {
      break;
    }
  }

  return i;
}

uint64_t ifconfig(int a1, const char **a2, int a3, const char **a4)
{
  __strlcpy_chk();
  v8 = &unk_10001A000;
  if (!a4)
  {
    v9 = af_getbyname("inet");
    v8 = &unk_10001A000;
    a4 = v9;
  }

LABEL_3:
  if (*(a4 + 9))
  {
    v10 = *(a4 + 9) == 18;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a4 + 9);
  }

  v8[3625] = v11;
  v12 = socket(v11, 2, 0);
  if ((v12 & 0x80000000) != 0)
  {
    ifconfig_cold_5();
  }

  v13 = v12;
  if (a1 >= 1)
  {
    do
    {
      v14 = cmds;
      if (cmds)
      {
        v15 = *a2;
        do
        {
          if (!strcmp(v15, *v14))
          {
            break;
          }

          v14 = *(v14 + 32);
        }

        while (v14);
      }

      if (setaddr)
      {
        v16 = &setifdstaddr_cmd;
      }

      else
      {
        v16 = &setifaddr_cmd;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      if (!*(v17 + 16))
      {
        goto LABEL_44;
      }

      if (a3)
      {
        if (*(v17 + 24))
        {
          a3 = 1;
        }

        else
        {
          v18 = callbacks;
          if (!callbacks)
          {
            ifconfig_cold_1();
          }

          v19 = *(callbacks + 8);
          callbacks = *(callbacks + 16);
          (*v18)(v13, v19);
          v20 = af_getbyname(*a2);
          if (v20)
          {
            v21 = v20;
            --a1;
            ++a2;
            if (v20 != a4)
            {
              close(v13);
              a3 = 0;
              a4 = v21;
              v8 = &unk_10001A000;
              goto LABEL_3;
            }
          }

          a3 = 0;
        }
      }

      v22 = *(v17 + 8);
      if (v22 > 16777213)
      {
        if (v22 == 16777214)
        {
          v27 = __OFSUB__(a1, 2);
          a1 -= 2;
          if ((a1 < 0) ^ v27 | (a1 == 0))
          {
            ifconfig_cold_3(v17);
          }

          v28 = a2[2];
          a2 += 2;
          (*(v17 + 16))(*(a2 - 1), v28, v13, a4);
          goto LABEL_44;
        }

        if (v22 == 0xFFFFFF)
        {
          v25 = a2[1];
          ++a2;
          v24 = v25;
          if (!v25)
          {
            ifconfig_cold_4(v17);
          }

          (*(v17 + 16))(v24, 0, v13, a4);
          --a1;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 16777212)
        {
          v26 = (*(v17 + 16))((a1 - 1), a2 + 1, v13, a4);
          if ((v26 & 0x80000000) != 0)
          {
            ifconfig_cold_2(v17);
          }

          a1 -= v26;
          a2 += v26;
          goto LABEL_44;
        }

        if (v22 == 16777213)
        {
          (*(v17 + 16))(a2[1], 0, v13, a4);
          v23 = a2[1] != 0;
          if (a2[1])
          {
            ++a2;
          }

          a1 -= v23;
          goto LABEL_44;
        }
      }

      (*(v17 + 16))(*a2, v22, v13, a4);
LABEL_44:
      ++a2;
      v27 = __OFSUB__(a1--, 1);
    }

    while (!((a1 < 0) ^ v27 | (a1 == 0)));
  }

  v29 = a4[7];
  if (v29)
  {
    (v29)(v13, a4);
  }

  for (i = callbacks; i; i = *(i + 16))
  {
    (*i)(v13, *(i + 8));
  }

  if (clearaddr)
  {
    v31 = a4[10];
    if (v31 && a4[8])
    {
      strlcpy(v31, name, 0x10uLL);
      if (ioctl(v13, a4[8], a4[10]) < 0 && (*__error() != 49 || doalias < 0))
      {
        Perror("ioctl (SIOCDIFADDR)");
      }
    }

    else
    {
      warnx("interface %s cannot change %s addresses!", name, *a4);
      clearaddr = 0;
    }
  }

  if (newaddr)
  {
    v32 = a4[11];
    if (v32 && a4[9])
    {
      if (__PAIR64__(setmask, setaddr))
      {
        strlcpy(v32, name, 0x10uLL);
        if (ioctl(v13, a4[9], a4[11]) < 0)
        {
          Perror("ioctl (SIOCAIFADDR)");
        }
      }
    }

    else
    {
      warnx("interface %s cannot change %s addresses!", name, *a4);
      newaddr = 0;
    }
  }

  return close(v13);
}

void freeformat()
{
  if (f_inet)
  {
    free(f_inet);
  }

  if (f_inet6)
  {
    free(f_inet6);
  }

  if (f_ether)
  {
    free(f_ether);
  }

  v0 = f_addr;
  if (f_addr)
  {

    free(v0);
  }
}

uint64_t af_register(uint64_t result)
{
  *(result + 96) = afs;
  afs = result;
  return result;
}

uint64_t cmd_register(uint64_t result)
{
  *(result + 32) = cmds;
  cmds = result;
  return result;
}

void *callback_register(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
  if (!result)
  {
    callback_register_cold_1();
  }

  *result = a1;
  result[1] = a2;
  result[2] = callbacks;
  callbacks = result;
  return result;
}

uint64_t setifcap(const char *a1, int a2, int a3)
{
  if (ioctl(a3, 0xC020695BuLL, &ifr) < 0)
  {
    Perror("ioctl (SIOCGIFCAP)");
  }

  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  if ((v6 & ~qword_10001AE28) != 0)
  {
    errx(1, "%s does not support %s", &ifr, a1);
  }

  v7 = HIDWORD(qword_10001AE28) | a2;
  if (a2 < 0)
  {
    v7 = HIDWORD(qword_10001AE28) & (a2 - 1);
  }

  LODWORD(qword_10001AE28) = v7 & qword_10001AE28;
  result = ioctl(a3, 0x8020695AuLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

void Perror(const char *a1)
{
  v2 = *__error();
  if (v2 != 1)
  {
    if (v2 == 6)
    {
      errx(1, "%s: no such interface");
    }

    err(1, "%s", a1);
  }

  errx(1, "%s: permission denied");
}

uint64_t setcl2k(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069A3uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setexpensive(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069A1uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setconstrained(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069CDuLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t settimestamp(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  if (a2)
  {
    result = ioctl(a3, 0xC02069B8uLL, &ifr);
  }

  else
  {
    result = ioctl(a3, 0xC02069B9uLL, &ifr);
  }

  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

void setecnmode(const char *a1, uint64_t a2, int a3)
{
  if (!strcmp(a1, "default"))
  {
    v5 = 0;
LABEL_10:
    LODWORD(qword_10001AE28) = v5;
    goto LABEL_11;
  }

  if (!strcmp(a1, "enable"))
  {
    v5 = 1;
    goto LABEL_10;
  }

  if (!strcmp(a1, "disable"))
  {
    v5 = 2;
    goto LABEL_10;
  }

  v6 = 0;
  LODWORD(qword_10001AE28) = strtold(a1, &v6);
  if (v6 == a1 || *__error())
  {
    warn("Invalid ECN mode value '%s'", a1);
    return;
  }

LABEL_11:
  __strlcpy_chk();
  if (ioctl(a3, 0x802069B1uLL, &ifr) < 0)
  {
    Perror("ioctl(SIOCSECNMODE)");
  }
}

uint64_t setprobeconnectivity(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069ABuLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setqosmarking(const char *a1, const char *a2, int a3)
{
  __strlcpy_chk();
  if (strcmp(a1, "mode"))
  {
    if (strcmp(a1, "enabled"))
    {
      setqosmarking_cold_1();
    }

    v6 = 3223349685;
    v7 = *a2;
    if ((v7 != 49 || a2[1]) && strcasecmp(a2, "on") && strcasecmp(a2, "yes") && strcasecmp(a2, "true"))
    {
      if (v7 == 48)
      {
        v8 = *(a2 + 1);
        if (!a2[1])
        {
          goto LABEL_21;
        }
      }

      if (strcasecmp(a2, "off") && strcasecmp(a2, "no") && strcasecmp(a2, "false"))
      {
        err(64, "bad value for qosmarking enabled: %s");
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v6 = 3223349684;
  if (!strcmp(a2, "fastlane"))
  {
LABEL_20:
    v8 = 1;
    goto LABEL_21;
  }

  if (!strcmp(a2, "rfc4594"))
  {
    v8 = 2;
  }

  else
  {
    if (strcmp(a2, "custom"))
    {
      if (strcasecmp(a2, "none") && strcasecmp(a2, "off"))
      {
        err(64, "bad value for qosmarking mode: %s");
      }

LABEL_19:
      v8 = 0;
      goto LABEL_21;
    }

    v8 = 3;
  }

LABEL_21:
  LODWORD(qword_10001AE28) = v8;
  result = ioctl(a3, v6, &ifr);
  if ((result & 0x80000000) != 0)
  {
    err(71, "ioctl(%s, %s)", a1, a2);
  }

  return result;
}

uint64_t setlowpowermode(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2 != 0;
  result = ioctl(a3, 0xC02069C8uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setifmarkwakepkt(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069D3uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setnoackpri(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069D0uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setnoshaping(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069D7uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setmanagement(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC020695CuLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setdisableinput(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0x802069E1uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setultraconstrained(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069DBuLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

uint64_t setlinkqualitymetric(const char *a1, uint64_t a2, int a3)
{
  __endptr = 0;
  __strlcpy_chk();
  if (a1 || ioctl(a3, 0xC020698AuLL, &ifr) == -1)
  {
    v5 = strtol(a1, &__endptr, 0);
    if (*__endptr)
    {
      if (strcasecmp(a1, "off") && strcasecmp(a1, "unknown"))
      {
        if (!strcasecmp(a1, "abort") || !strcasecmp(a1, "bad"))
        {
          LOBYTE(v5) = 10;
        }

        else if (!strcasecmp(a1, "MINIMALLY_VIABLE"))
        {
          LOBYTE(v5) = 20;
        }

        else
        {
          if (strcasecmp(a1, "poor"))
          {
            if (!strcasecmp(a1, "good"))
            {
              LOBYTE(v5) = 100;
              goto LABEL_27;
            }

            goto LABEL_24;
          }

          LOBYTE(v5) = 50;
        }

        goto LABEL_27;
      }

      fprintf(__stderrp, "# lqm value '%s' cannot be set\n");
    }

    else
    {
      if (v5 > 19)
      {
        if (v5 == 20 || v5 == 50 || v5 == 100)
        {
          goto LABEL_27;
        }

LABEL_24:
        fprintf(__stderrp, "# lqm value '%s' is invalid\n");
        goto LABEL_30;
      }

      if (v5 == 10)
      {
LABEL_27:
        LOBYTE(qword_10001AE28) = 2;
        BYTE2(qword_10001AE28) = v5;
        __strlcpy_chk();
        result = ioctl(a3, 0xC02069A9uLL, &ifr);
        if ((result & 0x80000000) != 0)
        {
          Perror("ioctl SIOCSIFINTERFACESTATE");
        }

        return result;
      }

      if (v5 != -2)
      {
        if (v5 == -1)
        {
          fprintf(__stderrp, "# lqm value '%s' (unknown) cannot be set\n");
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      fprintf(__stderrp, "# lqm value '%s' (off) cannot be set\n");
    }

LABEL_30:
    exit(64);
  }

  print_linkqualitymetric(qword_10001AE28);

  return putchar(10);
}

uint64_t print_linkqualitymetric(unsigned int a1)
{
  printf("\tlink quality: %d ", a1);
  v2 = "(bad)";
  v3 = "(poor)";
  if (a1 - 51 >= 0x32)
  {
    v4 = "(?)";
  }

  else
  {
    v4 = "(good)";
  }

  if (a1 >= 0x33)
  {
    v3 = v4;
  }

  if (a1 >= 0xB)
  {
    v2 = v3;
  }

  if (a1 == -1)
  {
    v2 = "(unknown)";
  }

  if (a1 == -2)
  {
    v5 = "(off)";
  }

  else
  {
    v5 = v2;
  }

  return printf(v5);
}

uint64_t setlinkcongested(const char *a1, uint64_t a2, int a3)
{
  __endptr = 0;
  __strlcpy_chk();
  if (!a1 && ioctl(a3, 0xC02069E2uLL, &ifr) != -1)
  {
    return printf("congested link: %d\n", qword_10001AE28);
  }

  LODWORD(qword_10001AE28) = strtol(a1, &__endptr, 0);
  if (*__endptr)
  {
    fprintf(__stderrp, "# invalid value '%s'\n", a1);
    exit(64);
  }

  result = ioctl(a3, 0x802069E2uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror("ioctl SIOCSIFCONGESTEDLINK");
  }

  return result;
}

uint64_t setlowpowerwake(const char *a1, uint64_t a2, int a3)
{
  __endptr = 0;
  __strlcpy_chk();
  if (!a1 && ioctl(a3, 0xC0206961uLL, &ifr) != -1)
  {
    return printf("low power wake: %d\n", qword_10001AE28);
  }

  LODWORD(qword_10001AE28) = strtol(a1, &__endptr, 0);
  if (*__endptr)
  {
    fprintf(__stderrp, "# invalid value '%s'\n", a1);
    exit(64);
  }

  result = ioctl(a3, 0x80206961uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror("ioctl SIOCSLOWPOWERWAKE");
  }

  return result;
}

uint64_t setinbandwakepacket(const char *a1, uint64_t a2, int a3)
{
  __endptr = 0;
  __strlcpy_chk();
  if (!a1 && ioctl(a3, 0xC0206960uLL, &ifr) != -1)
  {
    return printf("inband wake packet: %d\n", qword_10001AE28);
  }

  LODWORD(qword_10001AE28) = strtol(a1, &__endptr, 0);
  if (*__endptr)
  {
    fprintf(__stderrp, "# invalid value '%s'\n", a1);
    exit(64);
  }

  result = ioctl(a3, 0x80206960uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror("ioctl SIOCSINBANDWAKEPKT");
  }

  return result;
}

void setifavailability(uint64_t a1, int a2, int a3)
{
  __strlcpy_chk();
  LOBYTE(qword_10001AE28) = 4;
  BYTE3(qword_10001AE28) = a2 == 0;
  if (ioctl(a3, 0xC02069A9uLL, &ifr) < 0)
  {

    warn("ioctl(SIOCSIFINTERFACESTATE)");
  }
}

uint64_t printb(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a3 && *a3 == 8)
  {
    printf("%s=%o");
  }

  else
  {
    printf("%s=%x");
  }

  putchar(60);
  LOBYTE(v5) = a3[1];
  if (v5)
  {
    v6 = 0;
    v7 = a3 + 2;
    do
    {
      if ((a2 >> (v5 - 1)))
      {
        if (v6)
        {
          putchar(44);
        }

        v5 = *v7;
        if (v5 >= 33)
        {
          do
          {
            putchar(v5);
            v8 = *++v7;
            v5 = v8;
          }

          while (v8 > 32);
        }

        v6 = 1;
      }

      else
      {
        --v7;
        do
        {
          v9 = *++v7;
          v5 = v9;
        }

        while (v9 > 32);
      }

      ++v7;
    }

    while (v5);
  }

  return putchar(62);
}

void ifconfig_ctor()
{
  v0 = cmds;
  v1 = &basic_cmds;
  v2 = 84;
  do
  {
    v1[4] = v0;
    v0 = v1;
    v1 += 5;
    --v2;
  }

  while (v2);
  cmds = (v1 - 5);
}

uint64_t setifdstaddr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4)
  {
    return v4(result, 3);
  }

  return result;
}

uint64_t setifaddr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4)
  {
    ++setaddr;
    if (!doalias && *(a4 + 18) != 18)
    {
      clearaddr = 1;
    }

    return v4(result, doalias >= 0);
  }

  return result;
}

uint64_t call_af_other_status(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4 || (result = strncmp(name, v4, *(a1 + 16)), !result))
  {
    v6 = *(a1 + 32);

    return v6(a2);
  }

  return result;
}

uint64_t bps_to_str(unint64_t a1)
{
  v1 = a1;
  if (a1 < 0x3B9ACA00)
  {
    if (a1 < 0xF4240)
    {
      if (a1 < 0x3E8)
      {
        v3 = "bps ";
        return snprintf(bps_to_str_buf, 0x20uLL, "%-4.2Lf %4s", v1, v3);
      }

      v2 = 1000.0;
      v3 = "Kbps";
    }

    else
    {
      v2 = 1000000.0;
      v3 = "Mbps";
    }
  }

  else
  {
    v2 = 1000000000.0;
    v3 = "Gbps";
  }

  v1 = v1 / v2;
  return snprintf(bps_to_str_buf, 0x20uLL, "%-4.2Lf %4s", v1, v3);
}

uint64_t ns_to_str(unint64_t a1)
{
  v1 = a1;
  if (a1 < 0x3B9ACA00)
  {
    if (a1 < 0xF4240)
    {
      if (a1 < 0x3E8)
      {
        v3 = "nsec";
        return snprintf(ns_to_str_buf, 0x20uLL, "%-4.2Lf %4s", v1, v3);
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
  return snprintf(ns_to_str_buf, 0x20uLL, "%-4.2Lf %4s", v1, v3);
}

uint64_t setifflags(const char *a1, int a2, int a3)
{
  v8 = ifr;
  v9 = *&qword_10001AE28;
  if (ioctl(a3, 0xC0206911uLL, &v8) < 0)
  {
    Perror("ioctl (SIOCGIFFLAGS)");
  }

  __strlcpy_chk();
  v6 = v9 | a2;
  if (a2 < 0)
  {
    v6 = (a2 - 1) & v9;
  }

  LOWORD(v9) = v6;
  result = ioctl(a3, 0x80206910uLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

void *notealias(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0 && setaddr && doalias == 0)
  {
    v6 = *(a4 + 88);
    if (v6)
    {
      v7 = *(a4 + 80);
      if (v7)
      {
        result = memmove((v7 + 16), (v6 + 16), *(v6 + 16));
      }
    }

    doalias = a2;
    goto LABEL_13;
  }

  doalias = a2;
  if (a2 < 0)
  {
LABEL_13:
    clearaddr = 1;
    v9 = &newaddr;
    goto LABEL_14;
  }

  v9 = &clearaddr;
LABEL_14:
  *v9 = 0;
  return result;
}

uint64_t setifnetmask(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4)
  {
    ++setmask;
    return v4(result, 2);
  }

  return result;
}

void setifmetric(const char *a1, uint64_t a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = atoi(a1);
  if (ioctl(a3, 0x80206918uLL, &ifr) < 0)
  {

    warn("ioctl (set metric)");
  }
}

uint64_t setifbroadaddr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4)
  {
    return v4(result, 3);
  }

  return result;
}

uint64_t setifipdst(uint64_t a1)
{
  result = af_getbyname("inet");
  if (result)
  {
    result = (*(result + 40))(a1, 3);
    clearaddr = 0;
    newaddr = 0;
  }

  return result;
}

void settunnel(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 112))
  {
    v9 = 0;
    v10 = 0;
    v7 = getaddrinfo(a1, 0, 0, &v10);
    if (v7)
    {
      settunnel_cold_1(v7);
    }

    v8 = getaddrinfo(a2, 0, 0, &v9);
    if (v8)
    {
      settunnel_cold_1(v8);
    }

    if (v10->ai_addr->sa_family != v9->ai_addr->sa_family)
    {
      settunnel_cold_3();
    }

    (*(a4 + 112))(a3);
    freeaddrinfo(v10);
    freeaddrinfo(v9);
  }

  else
  {
    warn("address family %s does not support tunnel setup", *a4);
  }
}

uint64_t deletetunnel(int a1, int a2, int a3)
{
  result = ioctl(a3, 0x80206941uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    deletetunnel_cold_1();
  }

  return result;
}

uint64_t setifmpklog(const char *a1, int a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = a2;
  result = ioctl(a3, 0xC02069CBuLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    Perror(a1);
  }

  return result;
}

void setifmtu(const char *a1, uint64_t a2, int a3)
{
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = atoi(a1);
  if (ioctl(a3, 0x80206934uLL, &ifr) < 0)
  {

    warn("ioctl (set mtu)");
  }
}

void setrouter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 120);
  if (v5)
  {

    v5(a3);
  }

  else
  {
    warn("address family %s does not support router mode", *a4);
  }
}

void setifdesc(const char *a1, uint64_t a2, int a3)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  __strlcpy_chk();
  LODWORD(v6) = strlen(a1);
  __strlcpy_chk();
  if (ioctl(a3, 0xC094698FuLL, &v5) < 0)
  {
    warn("ioctl (set desc)");
  }
}

void settbr(const char *a1, uint64_t a2, int a3)
{
  v11 = 0;
  *__error() = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  __strlcpy_chk();
  v5 = strtold(a1, &v11);
  v6 = v11;
  if (v11 == a1 || (v7 = v5, *__error()))
  {
    warn("Invalid value '%s'");
    return;
  }

  v8 = v7;
  if (!v6)
  {
    goto LABEL_14;
  }

  LODWORD(v9) = *v6;
  if (v9 == 98)
  {
    if (!v6[1] || !strcmp(v6, "bps"))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!strcmp(v6, "bps"))
    {
LABEL_14:
      LODWORD(v9) = 0;
      goto LABEL_37;
    }

    if (v9 == 75 && v6[1] == 98)
    {
      if (v6[2] && strcmp(v6, "Kbps"))
      {
        goto LABEL_21;
      }

LABEL_27:
      LODWORD(v9) = 0;
      v10 = 1000;
LABEL_36:
      v8 *= v10;
      goto LABEL_37;
    }
  }

  if (!strcmp(v6, "Kbps"))
  {
    goto LABEL_27;
  }

  if (v9 == 77 && v6[1] == 98)
  {
    if (!v6[2] || !strcmp(v6, "Mbps"))
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

LABEL_21:
  if (!strcmp(v6, "Mbps"))
  {
LABEL_34:
    LODWORD(v9) = 0;
    v10 = 1000000;
    goto LABEL_36;
  }

  if (v9 == 71 && v6[1] == 98)
  {
    if (v6[2] && strcmp(v6, "Gbps"))
    {
      goto LABEL_33;
    }

LABEL_35:
    LODWORD(v9) = 0;
    v10 = 1000000000;
    goto LABEL_36;
  }

LABEL_29:
  if (!strcmp(v6, "Gbps"))
  {
    goto LABEL_35;
  }

  if (!v9)
  {
    goto LABEL_37;
  }

  if (v9 != 37 || v6[1])
  {
LABEL_33:
    printf("Unknown unit '%s'");
    return;
  }

  v9 = v7;
  if ((v8 - 101) <= 0xFFFFFF9B)
  {
    printf("Value out of range '%s'");
    return;
  }

LABEL_37:
  *(&v13 + 1) = v8;
  LODWORD(v14) = v9;
  if ((ioctl(a3, 0xC0F06991uLL, &v12) & 0x80000000) == 0 || *__error() == 2 || *__error() == 6 || *__error() == 19)
  {
    if (*__error() == 6)
    {
      printf("TBR cannot be set on %s\n");
    }

    else if (*__error() || v8)
    {
      if (*__error() == 19)
      {
        printf("%s: requires absolute TBR rate\n");
      }

      else if (v9)
      {
        printf("%s: TBR rate set to %u%% of effective link rate\n");
      }

      else
      {
        bps_to_str(v8);
        printf("%s: TBR rate set to %s\n");
      }
    }

    else
    {
      printf("%s: TBR is now disabled\n");
    }
  }

  else
  {
    warn("ioctl (set link params)");
  }
}

uint64_t setnetem(int a1, const char **a2, int a3)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (a1 < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = *a2;
    if (!strcmp(*a2, "input"))
    {
      v8 = &v16;
    }

    else
    {
      if (strcmp(v6, "output"))
      {
        if (*v6 == 45 && v6[1] == 104 && !v6[2] || !strcmp(v6, "--help"))
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v8 = &v12;
    }

    v7 = netem_parse_args(v8, a1, a2);
    if ((v7 & 0x80000000) != 0)
    {
LABEL_21:
      fwrite("Usage:\n\tTo enable/set netem params\n\t\tnetem <input|output>\n\t\t      [ bandwidth BIT_PER_SEC ]\n\t\t      [ delay DELAY_MSEC [ JITTER_MSEC ] ]\n\t\t      [ loss PERCENTAGE ]\n\t\t      [ duplication PERCENTAGE ]\n\t\t      [ reordering PERCENTAGE ]\n\n\tTo disable <input|output> netem\n\t\tnetem <input|output>\n\n\tTo show current settings\n\t\tnetem\n\n", 0x147uLL, 1uLL, __stderrp);
      return 0xFFFFFFFFLL;
    }
  }

  *__error() = 0;
  __strlcpy_chk();
  if (ioctl(a3, 0xC0F06992uLL, v20) < 0)
  {
    warn("ioctl (get link params)");
  }

  if (a1 == 1)
  {
    v6 = *a2;
    if (!strcmp(*a2, "input"))
    {
      v10 = &v21;
    }

    else
    {
      if (strcmp(v6, "output"))
      {
LABEL_20:
        fprintf(__stderrp, "uknown option %s\n", v6);
        goto LABEL_21;
      }

      v10 = &v25;
    }

    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    printf("%s: netem is now disabled for %s\n", name, v6);
    v7 = 1;
  }

  else
  {
    if (!a1)
    {
      print_netem_params(&v21, "Input");
      print_netem_params(&v25, "Output");
      return 0;
    }

    v9 = *a2;
    if (!strcmp(v9, "input"))
    {
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v19;
    }

    else if (!strcmp(v9, "output"))
    {
      v25 = v12;
      v26 = v13;
      v27 = v14;
      v28 = v15;
    }
  }

  if ((ioctl(a3, 0xC0F06991uLL, v20) & 0x80000000) == 0 || *__error() == 2 || *__error() == 6 || *__error() == 19)
  {
    if (*__error() == 6)
    {
      printf("netem cannot be set on %s\n");
    }

    else
    {
      printf("%s: netem configured\n");
    }
  }

  else
  {
    warn("ioctl (set link params)");
  }

  return v7;
}

void setthrottle(const char *a1, uint64_t a2, int a3)
{
  v5 = 0;
  *__error() = 0;
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  __strlcpy_chk();
  v7 = strtold(a1, &v5);
  if (v5 == a1 || *__error())
  {
    warn("Invalid value '%s'");
  }

  else if (ioctl(a3, 0xC0146994uLL, v6) < 0 && *__error() != 6)
  {
    warn("ioctl (set throttling level)");
  }

  else if (*__error() == 6)
  {
    printf("throttling level cannot be set on %s\n");
  }

  else
  {
    printf("%s: throttling level set to %d\n");
  }
}

void setlog(const char *a1, uint64_t a2, int a3)
{
  v5 = 0;
  *__error() = 0;
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = strtold(a1, &v5);
  if (v5 == a1 || *__error())
  {
    warn("Invalid value '%s'", a1);
  }

  else
  {
    HIDWORD(qword_10001AE28) = 285278209;
    if (ioctl(a3, 0xC020699BuLL, &ifr) < 0)
    {

      warn("ioctl (set logging parameters)");
    }
  }
}

void setdisableoutput(const char *a1, uint64_t a2, int a3)
{
  v5 = 0;
  *__error() = 0;
  v6 = 0u;
  v7 = 0u;
  __strlcpy_chk();
  LODWORD(v7) = strtold(a1, &v5);
  if (v5 == a1 || *__error())
  {
    warn("Invalid value '%s'");
  }

  else if (ioctl(a3, 0xC02069BBuLL, &v6) < 0 && *__error() != 6)
  {
    warn("ioctl set disable output");
  }

  else if (*__error() == 6)
  {
    printf("output thread can not be disabled on %s\n");
  }

  else
  {
    printf("output %s on %s\n");
  }
}

void setifsubfamily(const char *a1, uint64_t a2, int a3)
{
  __strlcpy_chk();
  __endptr = 0;
  v5 = strtoul(a1, &__endptr, 0);
  if (!*__endptr)
  {
    goto LABEL_7;
  }

  v6 = "any";
  v7 = &off_100014300;
  while (strcasecmp(v6, a1))
  {
    v8 = *v7;
    v7 += 2;
    v6 = v8;
    if (!v8)
    {
      return;
    }
  }

  v5 = *(v7 - 2);
  if (v5)
  {
LABEL_7:
    dword_10001AE30 = v5;
    if (ioctl(a3, 0xC02069BCuLL, &ifr) < 0)
    {

      warn("ioctl(SIOCSIFSUBFAMILY)");
    }
  }
}

uint64_t netem_parse_args(uint64_t a1, int a2, uint64_t a3)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 1;
  v4 = a2 - 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (a2 < 2)
  {
    v25 = -1;
    goto LABEL_59;
  }

  v5 = a3 + 8;
  v25 = -1;
  while (2)
  {
    v5 += 16;
    v4 -= 4;
    do
    {
      v6 = *(v5 - 16);
      if (!strcmp(v6, "model"))
      {
        v8 = *(v5 - 8);
        if (!strcmp(v8, "nlc"))
        {
          v9 = 1;
        }

        else if (!strcmp(v8, "iod"))
        {
          v9 = 2;
        }

        else
        {
          if (strcmp(v8, "fpd"))
          {
            err(1, "Invalid model '%s'");
          }

          v9 = 3;
        }

        *a1 = v9;
        goto LABEL_51;
      }

      if (!strcmp(v6, "bandwidth"))
      {
        if (v4 == -3 || (v10 = *(v5 - 8), v32 = 0, (get_longlong(&v32, v10) & 1) == 0))
        {
          netem_parse_args_cold_11((v5 - 8));
        }

        v25 = v32;
        goto LABEL_51;
      }

      if (!strcmp(v6, "corruption"))
      {
        if (v4 == -3 || (get_percent_fixed_point(&v30 + 1, *(v5 - 8)) & 1) == 0)
        {
          netem_parse_args_cold_10((v5 - 8));
        }

        goto LABEL_51;
      }

      if (!strcmp(v6, "delay"))
      {
        if (v4 == -3 || (get_uint32(&v31 + 1, *(v5 - 8)) & 1) == 0)
        {
          netem_parse_args_cold_9((v5 - 8));
        }

        if (v4 + 4 < 3)
        {
          v4 = 0;
          goto LABEL_59;
        }

        if (get_uint32(&v31, *v5))
        {
          ++v4;
          v5 += 8;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (!strcmp(v6, "duplication"))
      {
        if (v4 == -3 || (get_percent_fixed_point(&v30, *(v5 - 8)) & 1) == 0)
        {
          netem_parse_args_cold_8((v5 - 8));
        }

LABEL_51:
        v4 += 2;
        goto LABEL_52;
      }

      if (strcmp(v6, "loss"))
      {
        if (!strcmp(v6, "recovery"))
        {
          if (v4 == -3 || (get_uint32(&v27, *(v5 - 8)) & 1) == 0)
          {
            netem_parse_args_cold_3((v5 - 8));
          }
        }

        else if (!strcmp(v6, "reordering"))
        {
          if (v4 == -3 || (get_percent_fixed_point(&v26 + 1, *(v5 - 8)) & 1) == 0)
          {
            netem_parse_args_cold_2((v5 - 8));
          }
        }

        else
        {
          if (strcmp(v6, "ival"))
          {
            return 0xFFFFFFFFLL;
          }

          if (v4 == -3 || (get_uint32(&v26, *(v5 - 8)) & 1) == 0)
          {
            netem_parse_args_cold_1((v5 - 8));
          }
        }

        goto LABEL_51;
      }

      if (v4 == -3 || (get_percent_fixed_point(&v29 + 1, *(v5 - 8)) & 1) == 0)
      {
        netem_parse_args_cold_7((v5 - 8));
      }

      if (v4 + 4 < 3)
      {
        v4 += 2;
        goto LABEL_59;
      }

      v7 = *v5;
      v5 += 16;
      v4 -= 2;
    }

    while (!get_percent_fixed_point(&v29, v7));
    if (v4 == -3 || (get_percent_fixed_point(&v28 + 1, *(v5 - 8)) & 1) == 0)
    {
      netem_parse_args_cold_6((v5 - 8));
    }

    if ((v4 + 6) < 5 || (get_percent_fixed_point(&v28, *v5) & 1) == 0)
    {
      netem_parse_args_cold_5(v5);
    }

    if (v4 == -1 || (get_percent_fixed_point(&v27 + 1, *(v5 + 8)) & 1) == 0)
    {
      netem_parse_args_cold_4((v5 + 8));
    }

    v5 += 16;
LABEL_52:
    if (v4 > 0)
    {
      continue;
    }

    break;
  }

LABEL_59:
  v11 = HIDWORD(v30);
  if (HIDWORD(v30) > 0x186A0)
  {
    netem_parse_args_cold_17();
  }

  v12 = v30;
  if (v30 > 0x186A0)
  {
    netem_parse_args_cold_16();
  }

  v13 = HIDWORD(v31);
  if (v30 && !HIDWORD(v31))
  {
    netem_parse_args_cold_15();
  }

  if (HIDWORD(v31) >= 0x3E9)
  {
    err(1, "latency %dms too big (> 1 sec)");
  }

  v14 = v31;
  if ((3 * v31) > HIDWORD(v31))
  {
    err(1, "jitter %dms too big (latency %dms)");
  }

  v15 = v29;
  v16 = HIDWORD(v29);
  v18 = v28;
  v17 = HIDWORD(v28);
  v19 = HIDWORD(v27);
  if (!HIDWORD(v29) && (v29 || v28 || HIDWORD(v27)))
  {
    netem_parse_args_cold_14();
  }

  if (HIDWORD(v29) > 0x186A0 || v29 > 0x186A0 || HIDWORD(v28) > 0x186A0 || v28 > 0x186A0 || HIDWORD(v27) > 0x186A0 || (v29 + HIDWORD(v29)) > 0x186A0 || (v28 + HIDWORD(v28)) > 0x186A0)
  {
    netem_parse_args_cold_13();
  }

  v20 = HIDWORD(v26);
  if (HIDWORD(v26) > 0x186A0)
  {
    netem_parse_args_cold_12();
  }

  *(a1 + 8) = v25;
  *(a1 + 16) = v13;
  *(a1 + 20) = v14;
  *(a1 + 24) = v11;
  *(a1 + 28) = v12;
  *(a1 + 32) = v16;
  *(a1 + 36) = v15;
  *(a1 + 40) = v17;
  *(a1 + 44) = v18;
  v21 = v27;
  *(a1 + 48) = v19;
  *(a1 + 52) = v21;
  v22 = v26;
  result = (a2 - v4);
  *(a1 + 56) = v20;
  *(a1 + 60) = v22;
  return result;
}

uint64_t print_netem_params(_DWORD *a1, const char *a2)
{
  memset(__s2, 0, sizeof(__s2));
  if (!memcmp(a1, __s2, 0x40uLL))
  {
    return printf("%s NetEm Disabled\n\n");
  }

  v4 = *a1 - 1;
  if (v4 > 2)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1000143D8[v4];
  }

  printf("%s NetEm Parameters\n\tmodel                          %s\n", a2, v5);
  v7 = *(a1 + 1);
  if (v7)
  {
    if (v7 != -1)
    {
      printf("\tbandwidth rate                 %llubps\n", *(a1 + 1));
      goto LABEL_12;
    }

    v8 = "\tbandwidth rate                 unlimited";
  }

  else
  {
    v8 = "\tbandwidth rate                 0, blocking all";
  }

  puts(v8);
LABEL_12:
  LODWORD(v9) = a1[6];
  LODWORD(v10) = a1[14];
  printf("\tdelay latency                  %dms\n\t      jitter                   %dms\n\tcorruption                     %.3f%%\n\treordering                     %.3f%%\n\n\trecovery                       %dms\n", a1[4], a1[5], v9 / 1000.0, v10 / 1000.0, a1[13]);
  if (*(a1 + 9) || a1[11] || a1[12])
  {
    v11 = a1[8];
    v12 = a1[11];
    v13 = a1[12];
    return printf("\tloss GAP_RECV   -> GAP_LOSS    %.3f%%\n\t     GAP_RECV   -> BURST_LOSS  %.3f%%\n\t     BURST_LOSS -> BURST_RECV  %.3f%%\n\t     BURST_LOSS -> GAP_RECV    %.3f%%\n\t     BURST_RECV -> BURST_LOSS  %.3f%%\n");
  }

  else
  {
    v14 = a1[8];
    return printf("\tloss                           %.3f%%\n");
  }
}

uint64_t get_percent_fixed_point(_DWORD *a1, char *a2)
{
  v6 = 0;
  v3 = strtod(a2, &v6) / 100.0;
  v4 = v3 == INFINITY || (*&v3 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v4 || *v6 && (*v6 != 37 || v6[1]))
  {
    return 0;
  }

  *a1 = (v3 * 100000.0);
  return 1;
}

uint64_t get_uint32(_DWORD *a1, char *a2)
{
  v6 = 0;
  longlong = get_longlong(&v6, a2);
  if (longlong)
  {
    v4 = v6;
    if (v6 >= &_mh_execute_header)
    {
      fwrite("The value provided was out of range\n", 0x24uLL, 1uLL, __stderrp);
    }

    *a1 = v4;
  }

  return longlong;
}

uint64_t get_longlong(uint64_t *a1, char *__str)
{
  __endptr = 0;
  v4 = strtoll(__str, &__endptr, 10);
  if (__endptr == __str)
  {
    return 0;
  }

  v5 = v4;
  if (v4)
  {
    if ((v4 - 0x7FFFFFFFFFFFFFFFLL) <= 1 && *__error() == 34)
    {
      fwrite("The value provided was out of range\n", 0x24uLL, 1uLL, __stderrp);
      return 0;
    }
  }

  else if (*__error() == 22)
  {
    return 0;
  }

  *a1 = v5;
  return 1;
}

uint64_t ifmedia_getstate(int a1)
{
  result = ifmedia_getstate_ifmr;
  if (!ifmedia_getstate_ifmr)
  {
    v3 = malloc_type_malloc(0x2CuLL, 0x1010040C57E4BAFuLL);
    ifmedia_getstate_ifmr = v3;
    if (!v3)
    {
      ifmedia_getstate_cold_2();
    }

    *(v3 + 28) = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    __strlcpy_chk();
    v4 = ifmedia_getstate_ifmr;
    *(ifmedia_getstate_ifmr + 32) = 0;
    *(v4 + 36) = 0;
    if (ioctl(a1, 0xC02C6948uLL, v4) < 0)
    {
      ifmedia_getstate_cold_1();
    }

    v5 = *(ifmedia_getstate_ifmr + 32);
    if (!v5)
    {
      ifmedia_getstate_cold_3();
    }

    v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    if (!v6)
    {
      ifmedia_getstate_cold_2();
    }

    v7 = ifmedia_getstate_ifmr;
    *(ifmedia_getstate_ifmr + 36) = v6;
    if (ioctl(a1, 0xC02C6948uLL, v7) < 0)
    {
      ifmedia_getstate_cold_1();
    }

    return ifmedia_getstate_ifmr;
  }

  return result;
}

uint64_t ifmedia_ctor()
{
  v0 = &media_cmds;
  v1 = 5;
  do
  {
    cmd_register(v0);
    v0 += 5;
    --v1;
  }

  while (v1);

  return af_register(&af_media);
}

void *setmedia(const char *a1, uint64_t a2, int a3)
{
  v4 = ifmedia_getstate(a3);
  v5 = v4;
  v6 = &ifm_type_descriptions;
  v7 = &ifmedia_types_to_subtypes;
  while (*v6 != (**(v4 + 36) & 0xE0))
  {
    v8 = *(v6 + 3);
    v6 += 4;
    v7 += 22;
    if (!v8)
    {
      v15 = **(v4 + 36) & 0xE0;
      errx(1, "unknown media type 0x%x");
    }
  }

  v9 = *v7;
  if (!*v7)
  {
LABEL_13:
    errx(1, "unknown media subtype: %s");
  }

  v10 = 0;
  while (1)
  {
    v11 = *(v9 + 1);
    if (v11)
    {
      while (strcasecmp(v11, a1))
      {
        v11 = *(v9 + 3);
        v9 += 4;
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      v12 = *v9;
      if (v12 != -1)
      {
        break;
      }
    }

LABEL_12:
    ++v10;
    v9 = v7[2 * v10];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  __strlcpy_chk();
  v13 = *(v5 + 16) & 0xFFF0FF00 | v12 | **(v5 + 36) & 0xE0;
  if ((v12 & 0xF001F) == 0)
  {
    v13 = *(v5 + 16) & 0xF000FF00 | v12 & 0xF000FFE0 | **(v5 + 36) & 0xE0;
  }

  LODWORD(qword_10001AE28) = v13;
  *(v5 + 16) = v13;

  return callback_register(setifmediacallback, v5);
}

void *setmediainst(const char *a1, uint64_t a2, int a3)
{
  v4 = ifmedia_getstate(a3);
  v5 = atoi(a1);
  if (v5 >= 0x10)
  {
    errx(1, "invalid media instance: %s", a1);
  }

  v6 = v5;
  __strlcpy_chk();
  LODWORD(qword_10001AE28) = *(v4 + 16) & 0xFFFFFFF | (v6 << 28);
  *(v4 + 16) = qword_10001AE28;

  return callback_register(setifmediacallback, v4);
}

void setifmediacallback(int a1, uint64_t a2)
{
  if ((setifmediacallback_did_it & 1) == 0)
  {
    LODWORD(qword_10001AE28) = *(a2 + 16);
    if (ioctl(a1, 0xC0206937uLL, &ifr) < 0)
    {
      setifmediacallback_cold_1();
    }

    free(*(a2 + 36));
    free(a2);
    setifmediacallback_did_it = 1;
  }
}

void *domediaopt(const char *a1, int a2, int a3)
{
  v5 = ifmedia_getstate(a3);
  v6 = **(v5 + 36);
  v7 = strdup(a1);
  if (!v7)
  {
    domediaopt_cold_1();
  }

  v8 = v7;
  v9 = v6 & 0xE0;
  v10 = &ifm_type_descriptions;
  v11 = &ifmedia_types_to_subtypes;
  while (*v10 != v9)
  {
    v12 = *(v10 + 3);
    v10 += 4;
    v11 += 22;
    if (!v12)
    {
      errx(1, "unknown media type 0x%x");
    }
  }

  v13 = strtok(v7, ",");
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = (v11 + 10);
    do
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = 0;
        while (1)
        {
          v20 = *(v18 + 8);
          if (v20)
          {
            while (strcasecmp(v20, v14))
            {
              v20 = *(v18 + 24);
              v18 += 16;
              if (!v20)
              {
                goto LABEL_15;
              }
            }

            v16 = *v18;
            if (*v18 != -1)
            {
              break;
            }
          }

LABEL_15:
          ++v19;
          v18 = v17[2 * v19];
          if (!v18)
          {
            v16 = -1;
            goto LABEL_18;
          }
        }
      }

      if (!v16)
      {
        errx(1, "unknown option: %s");
      }

LABEL_18:
      v15 |= v16;
      v14 = strtok(0, ",");
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  free(v8);
  __strlcpy_chk();
  v21 = *(v5 + 16);
  v22 = v21 & 0xFFEFFFFF;
  if ((v15 & 0x200000) == 0)
  {
    v22 = *(v5 + 16);
  }

  v23 = v22 | v15 & 0xFFDFFFFF;
  v24 = v21 & ~v15;
  if (!a2)
  {
    v24 = v23;
  }

  LODWORD(qword_10001AE28) = v24;
  *(v5 + 16) = v24;

  return callback_register(setifmediacallback, v5);
}

void media_status(int a1)
{
  memset(v20, 0, 44);
  __strlcpy_chk();
  if ((ioctl(a1, 0xC02C6948uLL, v20) & 0x80000000) == 0)
  {
    if (LODWORD(v20[2]))
    {
      v2 = malloc_type_malloc(4 * SLODWORD(v20[2]), 0x100004052888210uLL);
      if (!v2)
      {
        ifmedia_getstate_cold_2();
      }

      v3 = v2;
      *(&v20[2] + 4) = v2;
      if (ioctl(a1, 0xC02C6948uLL, v20) < 0)
      {
        ifmedia_getstate_cold_1();
      }

      printf("\tmedia: ");
      print_media_word(v20[1]);
      if (HIDWORD(v20[1]) != LODWORD(v20[1]))
      {
        putchar(32);
        putchar(40);
        print_media_word(SHIDWORD(v20[1]));
        putchar(41);
      }

      putchar(10);
      if (BYTE8(v20[1]))
      {
        printf("\tstatus: ");
        if ((BYTE8(v20[1]) & 2) != 0)
        {
          printf("active");
        }

        else
        {
          printf("inactive");
        }

        putchar(10);
      }

      if (SLODWORD(v20[2]) >= 1)
      {
        if (supmedia)
        {
          puts("\tsupported media:");
          if (SLODWORD(v20[2]) >= 1)
          {
            v4 = 0;
            do
            {
              printf("\t\t");
              v5 = v3[v4];
              v6 = v5 & 0xE0;
              v7 = &ifm_type_descriptions;
              while (v6 != *v7)
              {
                v8 = v7 + 4;
                v9 = *(v7 + 3);
                v7 += 4;
                if (!v9)
                {
                  goto LABEL_21;
                }
              }

              v8 = v7;
LABEL_21:
              v10 = &ifmedia_types_to_subtypes;
              v11 = &ifm_type_descriptions;
              do
              {
                if (v6 == *v11)
                {
                  break;
                }

                v12 = *(v11 + 3);
                v11 += 4;
                v10 += 22;
              }

              while (v12);
              if (*(v8 + 1))
              {
                subtype_desc = get_subtype_desc(v3[v4], v10);
                if (subtype_desc)
                {
                  printf("media %s", *(subtype_desc + 8));
                  v16 = v10[10];
                  v15 = v10 + 10;
                  v14 = v16;
                  if (v16)
                  {
                    v17 = 0;
                    v18 = v15;
                    do
                    {
                      if (!*(v18 + 2))
                      {
                        for (i = *(v14 + 1); i; v14 += 16)
                        {
                          if ((*v14 & v5) != 0)
                          {
                            printf(" mediaopt %s", i);
                          }

                          i = *(v14 + 3);
                        }
                      }

                      ++v17;
                      v18 = &v15[2 * v17];
                      v14 = *v18;
                    }

                    while (*v18);
                  }

                  if (v5 >> 28)
                  {
                    printf(" instance %d");
                  }
                }

                else
                {
                  printf("<unknown subtype>");
                }
              }

              else
              {
                printf("<unknown type>");
              }

              putchar(10);
              ++v4;
            }

            while (v4 < SLODWORD(v20[2]));
          }
        }
      }

      free(v3);
    }

    else
    {
      warnx("%s: no media types?", name);
    }
  }
}

uint64_t print_media_word(int a1)
{
  v2 = a1 & 0xE0;
  v3 = &ifm_type_descriptions;
  while (v2 != *v3)
  {
    v4 = v3 + 4;
    v5 = *(v3 + 3);
    v3 += 4;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v4 = v3;
LABEL_6:
  v6 = &ifm_type_descriptions;
  v7 = &ifmedia_types_to_subtypes;
  do
  {
    if (v2 == *v6)
    {
      break;
    }

    v8 = *(v6 + 3);
    v6 += 4;
    v7 += 22;
  }

  while (v8);
  if (*(v4 + 1))
  {
    subtype_desc = get_subtype_desc(a1, v7);
    if (subtype_desc)
    {
      printf("%s", *(subtype_desc + 8));
      v12 = v7[10];
      v10 = v7 + 10;
      v11 = v12;
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = v10;
        do
        {
          if (!*(v15 + 2))
          {
            for (i = *(v11 + 1); i; v11 += 16)
            {
              if ((*v11 & a1) != 0)
              {
                v17 = ",";
                if (!v14)
                {
                  printf(" <");
                  i = *(v11 + 1);
                  v17 = &unk_10000D3B1;
                }

                ++v14;
                printf("%s%s", v17, i);
              }

              i = *(v11 + 3);
            }
          }

          ++v13;
          v15 = &v10[2 * v13];
          v11 = *v15;
        }

        while (*v15);
        v18 = ">";
        if (!v14)
        {
          v18 = &unk_10000D3B1;
        }
      }

      else
      {
        v18 = &unk_10000D3B1;
      }

      return printf("%s", v18);
    }

    v19 = "<unknown subtype>";
  }

  else
  {
    v19 = "<unknown type>";
  }

  return printf(v19);
}

uint64_t get_subtype_desc(int a1, void *a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = 0;
    v5 = a1 & 0xF001F;
    v6 = a2;
    while (*(v6 + 2) || !*(result + 8))
    {
LABEL_4:
      ++v4;
      v6 = &a2[2 * v4];
      result = *v6;
      if (!*v6)
      {
        return result;
      }
    }

    while (v5 != *result)
    {
      v7 = *(result + 24);
      result += 16;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void *vlan_ctor()
{
  v0 = &vlan_cmds;
  v1 = 7;
  do
  {
    cmd_register(v0);
    v0 += 5;
    --v1;
  }

  while (v1);
  af_register(af_vlan);

  return callback_register(vlan_cb, 0);
}

void vlan_cb()
{
  if ((word_100019FC8 != -1) != (params != 0))
  {
    vlan_cb_cold_1();
  }
}

void *setvlantag(const char *a1, uint64_t a2, uint64_t a3)
{
  __endptr = 0;
  v4 = strtoul(a1, &__endptr, 0);
  if (*__endptr)
  {
    setvlantag_cold_1();
  }

  word_100019FC8 = v4;
  if (v4 >= 0x10000)
  {
    setvlantag_cold_2();
  }

  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  qword_10001AE28 = v7;
  if (ioctl(a3, 0xC020697FuLL, &ifr) == -1)
  {
    return clone_setcallback(vlan_create);
  }

  else
  {
    return vlan_set(a3);
  }
}

void *setvlandev(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __strlcpy_chk();
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  qword_10001AE28 = v5;
  if (ioctl(a3, 0xC020697FuLL, &ifr) == -1)
  {
    return clone_setcallback(vlan_create);
  }

  else
  {
    return vlan_set(a3);
  }
}

uint64_t unsetvlandev(int a1, int a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  qword_10001AE28 = &v5;
  if (ioctl(a3, 0xC020697FuLL, &ifr) == -1)
  {
    unsetvlandev_cold_2();
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  result = ioctl(a3, 0x8020697EuLL, &ifr);
  if (result == -1)
  {
    unsetvlandev_cold_1();
  }

  return result;
}

uint64_t vlan_set(uint64_t result)
{
  if (word_100019FC8 != -1 && params != 0)
  {
    qword_10001AE28 = &params;
    result = ioctl(result, 0x8020697EuLL, &ifr);
    if (result == -1)
    {
      unsetvlandev_cold_1();
    }
  }

  return result;
}

uint64_t vlan_create(int a1, uint64_t a2)
{
  if (word_100019FC8 != 0xFFFF || params != 0)
  {
    if (word_100019FC8 == 0xFFFF)
    {
      vlan_create_cold_3();
    }

    if (!params)
    {
      vlan_create_cold_2();
    }

    *(a2 + 16) = &params;
  }

  result = ioctl(a1, 0xC020697AuLL, a2);
  if ((result & 0x80000000) != 0)
  {
    vlan_create_cold_1();
  }

  return result;
}

uint64_t vlan_status(int a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  qword_10001AE28 = v3;
  result = ioctl(a1, 0xC020697FuLL, &ifr);
  if (result != -1)
  {
    if (LOBYTE(v3[0]))
    {
      v2 = v3;
    }

    else
    {
      v2 = "<none>";
    }

    return printf("\tvlan: %d parent interface: %s\n", v4, v2);
  }

  return result;
}

void in_status(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (!v2)
  {
    return;
  }

  v4 = f_addr;
  if (!f_addr || !strcmp(f_addr, "default"))
  {
    v6.s_addr = *(v2 + 1);
    v20 = inet_ntoa(v6);
    printf("\tinet %s", v20);
  }

  else
  {
    if (!strcmp(v4, "fqdn"))
    {
      v5 = 0;
    }

    else if (!strcmp(v4, "host"))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (getnameinfo(v2, *v2, addr_buf, 0x401u, 0, 0, v5))
    {
      inet_ntop(2, v2 + 4, addr_buf, 0x401u);
    }

    printf("\tinet %s", addr_buf);
  }

  if ((*(a2 + 16) & 0x10) != 0)
  {
    v7 = *(a2 + 40);
    if (v7)
    {
      v8.s_addr = *(v7 + 4);
    }

    else
    {
      v8.s_addr = 0;
    }

    v9 = inet_ntoa(v8);
    printf(" --> %s", v9);
  }

  v10 = *(a2 + 32);
  v11 = f_inet;
  if (!f_inet)
  {
    goto LABEL_22;
  }

  if (!strcmp(f_inet, "cidr"))
  {
    if (v10)
    {
      v13 = *(v10 + 4);
    }

    else
    {
      v13 = 0;
    }

    v15 = bswap32(v13);
    v16 = 32;
    do
    {
      if (v15)
      {
        break;
      }

      v15 >>= 1;
      --v16;
    }

    while (v16);
    printf("/%d");
  }

  else
  {
    if (strcmp(v11, "dotted"))
    {
LABEL_22:
      if (v10)
      {
        v12 = *(v10 + 4);
      }

      printf(" netmask 0x%lx");
      goto LABEL_36;
    }

    if (v10)
    {
      v14.s_addr = *(v10 + 4);
    }

    else
    {
      v14.s_addr = 0;
    }

    inet_ntoa(v14);
    printf(" netmask %s");
  }

LABEL_36:
  if ((*(a2 + 16) & 2) != 0)
  {
    v17 = *(a2 + 40);
    if (v17)
    {
      v18.s_addr = *(v17 + 4);
      if (v18.s_addr)
      {
        v19 = inet_ntoa(v18);
        printf(" broadcast %s", v19);
      }
    }
  }

  putchar(10);
}

unsigned int in_getaddr(char *__s, int a2)
{
  v3 = *(&sintab + a2);
  *v3 = 16;
  if (a2 != 2)
  {
    *(v3 + 1) = 2;
    if (a2 == 1)
    {
      v4 = strrchr(__s, 47);
      if (v4)
      {
        v5 = v4;
        v11 = 0;
        *v4 = 0;
        if (sscanf(v4 + 1, "%u", &v11) != 1 || v11 >= 0x21)
        {
          *v5 = 47;
          goto LABEL_17;
        }

        byte_10001B850 = 16;
        dword_10001B854 = bswap32(-1 << (32 - v11));
      }
    }
  }

  result = inet_aton(__s, (v3 + 4));
  if (result)
  {
    return result;
  }

  v7 = gethostbyname(__s);
  if (!v7)
  {
    v10 = getnetbyname(__s);
    if (v10)
    {
      result = inet_makeaddr(v10->n_net, 0).s_addr;
      *(v3 + 4) = result;
      return result;
    }

LABEL_17:
    errx(1, "%s: bad value", __s);
  }

  h_length = v7->h_length;
  if (h_length >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = h_length;
  }

  return memmove((v3 + 4), *v7->h_addr_list, v9);
}

uint64_t in_status_tunnel(int a1)
{
  v3 = 0u;
  v4 = 0;
  __strlcpy_chk();
  result = ioctl(a1, 0xC020693FuLL, &v3);
  if ((result & 0x80000000) == 0 && v4.sa_family == 2)
  {
    if (getnameinfo(&v4, v4.sa_len, v6, 0x401u, 0, 0, 2))
    {
      v6[0] = 0;
    }

    result = ioctl(a1, 0xC0206940uLL, &v3);
    if ((result & 0x80000000) == 0 && v4.sa_family == 2)
    {
      if (getnameinfo(&v4, v4.sa_len, v5, 0x401u, 0, 0, 2))
      {
        v5[0] = 0;
      }

      return printf("\ttunnel inet %s --> %s\n", v6, v5);
    }
  }

  return result;
}

void in_set_tunnel(int a1, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, sizeof(v8));
  __strlcpy_chk();
  v6 = **(a2 + 32);
  __memcpy_chk();
  v7 = **(a3 + 32);
  __memcpy_chk();
  if (ioctl(a1, 0x8040693EuLL, v8) < 0)
  {
    warn("SIOCSIFPHYADDR");
  }
}

void in_set_router(int a1, int a2)
{
  v4 = 0u;
  v5 = 0u;
  __strlcpy_chk();
  LODWORD(v5) = a2;
  if (ioctl(a1, 0xC020698DuLL, &v4) < 0)
  {
    warn("SIOCSETROUTERMODE");
  }
}

uint64_t in_routermode(int a1, int a2, const char **a3)
{
  v12 = 0u;
  v13 = 0u;
  __strlcpy_chk();
  if (a2)
  {
    v6 = *a3;
    if (!strcasecmp(v6, "enabled"))
    {
      v7 = 1;
    }

    else
    {
      if (strcasecmp(v6, "disabled"))
      {
        errx(1, "mode '%s' invalid, must be one of disabled or enabled", v6);
      }

      v7 = 0;
    }

    LODWORD(v13) = v7;
    if (ioctl(a1, 0xC020698DuLL, &v12) < 0)
    {
      warn("SIOCSETROUTERMODE");
    }

    return 1;
  }

  else
  {
    if (ioctl(a1, 0xC02069D1uLL, &v12) < 0)
    {
      if (a3)
      {
        warn("SIOCGETROUTERMODE");
      }
    }

    else
    {
      v8 = &unk_10000D3B1;
      if (!a3)
      {
        v8 = "\troutermode4: ";
      }

      v9 = "<unknown>";
      if (v13 == 1)
      {
        v9 = "enabled";
      }

      if (v13)
      {
        v10 = v9;
      }

      else
      {
        v10 = "disabled";
      }

      printf("%s%s\n", v8, v10);
    }

    return 0;
  }
}

uint64_t inet6_ctor()
{
  v0 = &inet6_cmds;
  v1 = 27;
  do
  {
    cmd_register(v0);
    v0 += 5;
    --v1;
  }

  while (v1);
  af_register(&af_inet6);

  return opt_register(in6_Lopt);
}

uint64_t setifprefixlen(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 48);
  if (v4)
  {
    result = v4(result, 2);
  }

  explicit_prefix = 1;
  return result;
}

void setip6flags(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 18) != 30)
  {
    setip6flags_cold_1();
  }

  if (a2 < 0)
  {
    v4 = dword_10001A59C & (a2 - 1);
  }

  else
  {
    v4 = dword_10001A59C | a2;
  }

  dword_10001A59C = v4;
}

void setnd6flags(uint64_t a1, int a2, int a3)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  __strlcpy_chk();
  if (ioctl(a3, 0xC030694CuLL, v6))
  {
    warn("ioctl(SIOCGIFINFO_IN6)");
  }

  else
  {
    if (a2 < 0)
    {
      v5 = DWORD1(v7) & (a2 - 1);
    }

    else
    {
      v5 = DWORD1(v7) | a2;
    }

    DWORD1(v7) = v5;
    if (ioctl(a3, 0xC0486957uLL, v6))
    {
      warn("ioctl(SIOCSIFINFO_FLAGS)");
    }
  }
}

void setip6eui64(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 18) != 30)
  {
    errx(1, "%s not allowed for the AF", a1);
  }

  if (*&in6addr_any.__u6_addr32[2] != qword_10001A558)
  {
    setip6eui64_cold_1();
  }

  v7 = 0;
  if (getifaddrs(&v7))
  {
    setip6eui64_cold_2();
  }

  v4 = v7;
  if (!v7)
  {
LABEL_11:
    setip6eui64_cold_3();
  }

  v5 = v7;
  while (1)
  {
    ifa_addr = v5->ifa_addr;
    if (ifa_addr->sa_family == 30 && !strcmp(v5->ifa_name, name) && ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
    {
      break;
    }

    v5 = v5->ifa_next;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  qword_10001A558 = *&ifa_addr[1].sa_len;
  freeifaddrs(v4);
}

uint64_t setip6lifetime(const char *a1, const char *a2, uint64_t a3)
{
  __endptr = 0;
  v6 = time(0);
  v7 = strtoul(a2, &__endptr, 0);
  if (__endptr == a2)
  {
    errx(1, "invalid %s");
  }

  if (*(a3 + 18) != 30)
  {
    errx(1, "%s not allowed for the AF");
  }

  v8 = v7;
  result = strcmp(a1, "vltime");
  if (result)
  {
    result = strcmp(a1, "pltime");
    if (!result)
    {
      qword_10001A5A8 = v8 + v6;
      dword_10001A5B4 = v8;
    }
  }

  else
  {
    qword_10001A5A0 = v8 + v6;
    dword_10001A5B0 = v8;
  }

  return result;
}

void in6_status(uint64_t a1, uint64_t a2)
{
  v3 = time(0);
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v4 = *(a2 + 24);
  if (!v4)
  {
    return;
  }

  v5 = v3;
  memset(v25, 0, sizeof(v25));
  __strlcpy_chk();
  v6 = socket(30, 2, 0);
  if (v6 < 0)
  {
    warn("socket(AF_INET6,SOCK_DGRAM)");
    return;
  }

  v7 = v6;
  v8 = *v4;
  *(&v25[1] + 12) = *(v4 + 12);
  v25[1] = v8;
  if (ioctl(v6, 0xC1206949uLL, v25) < 0)
  {
    warn("ioctl(SIOCGIFAFLAG_IN6)");
LABEL_79:
    close(v7);
    return;
  }

  v9 = v25[1];
  v10 = *v4;
  *(&v25[1] + 12) = *(v4 + 12);
  v25[1] = v10;
  if (ioctl(v7, 0xC1206951uLL, v25) < 0)
  {
    warn("ioctl(SIOCGIFALIFETIME_IN6)");
    goto LABEL_79;
  }

  v11 = v25[1];
  close(v7);
  if (v4[8] == 254 && (v4[9] & 0xC0) == 0x80)
  {
    v12 = *(v4 + 5);
    if (*(v4 + 5))
    {
      *(v4 + 5) = 0;
      if (!*(v4 + 6))
      {
        *(v4 + 6) = __rev16(v12);
      }
    }
  }

  v13 = *(v4 + 6);
  v14 = f_addr;
  if (!f_addr)
  {
    goto LABEL_13;
  }

  if (!strcmp(f_addr, "fqdn"))
  {
    v15 = 0;
  }

  else
  {
    if (strcmp(v14, "host"))
    {
LABEL_13:
      v15 = 2;
      goto LABEL_16;
    }

    v15 = 1;
  }

LABEL_16:
  if (getnameinfo(v4, *v4, addr_buf_0, 0x201u, 0, 0, v15))
  {
    inet_ntop(30, v4 + 8, addr_buf_0, 0x201u);
  }

  printf("\tinet6 %s", addr_buf_0);
  if ((*(a2 + 16) & 0x10) != 0)
  {
    v16 = *(a2 + 40);
    if (v16)
    {
      if (v16[1] == 30)
      {
        v17 = v16 + 8;
        if (v16[8] == 254 && (v16[9] & 0xC0) == 0x80)
        {
          v18 = *(v16 + 5);
          if (*(v16 + 5))
          {
            *(v16 + 5) = 0;
            if (!*(v16 + 6))
            {
              *(v16 + 6) = __rev16(v18);
            }
          }
        }

        if (getnameinfo(v16, *v16, addr_buf_0, 0x201u, 0, 0, 2))
        {
          inet_ntop(30, v17, addr_buf_0, 0x201u);
        }

        printf(" --> %s", addr_buf_0);
      }
    }
  }

  v19 = *(a2 + 32);
  if (f_inet6 && !strcmp(f_inet6, "cidr"))
  {
    v20 = "/%d ";
  }

  else
  {
    v20 = " prefixlen %d ";
  }

  v21 = v23;
  if (v19)
  {
    v21 = v19;
  }

  v22 = prefix(v21 + 8);
  printf(v20, v22);
  if (v9)
  {
    printf("anycast ");
    if ((v9 & 2) == 0)
    {
LABEL_37:
      if ((v9 & 0x200) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_55;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_37;
  }

  printf("tentative ");
  if ((v9 & 0x200) == 0)
  {
LABEL_38:
    if ((v9 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_56;
  }

LABEL_55:
  printf("optimistic ");
  if ((v9 & 4) == 0)
  {
LABEL_39:
    if ((v9 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_56:
  printf("duplicated ");
  if ((v9 & 8) == 0)
  {
LABEL_40:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_58;
  }

LABEL_57:
  printf("detached ");
  if ((v9 & 0x10) == 0)
  {
LABEL_41:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_59;
  }

LABEL_58:
  printf("deprecated ");
  if ((v9 & 0x40) == 0)
  {
LABEL_42:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_60;
  }

LABEL_59:
  printf("autoconf ");
  if ((v9 & 0x80) == 0)
  {
LABEL_43:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_61;
  }

LABEL_60:
  printf("temporary ");
  if ((v9 & 0x100) == 0)
  {
LABEL_44:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_62;
  }

LABEL_61:
  printf("dynamic ");
  if ((v9 & 0x400) == 0)
  {
LABEL_45:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_63;
  }

LABEL_62:
  printf("secured ");
  if ((v9 & 0x1000) == 0)
  {
LABEL_46:
    if (!v13)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_63:
  printf("clat46 ");
  if (v13)
  {
LABEL_47:
    printf("scopeid 0x%x ", v13);
  }

LABEL_48:
  if (ip6lifetime && v11 != 0)
  {
    printf("pltime ");
    if (*(&v11 + 1))
    {
      if (*(&v11 + 1) >= v5)
      {
        snprintf(sec2str_result, 0x100uLL, "%lu", *(&v11 + 1) - v5);
      }

      printf("%s ");
    }

    else
    {
      printf("infty ");
    }

    printf("vltime ");
    if (v11)
    {
      if (v11 >= v5)
      {
        snprintf(sec2str_result, 0x100uLL, "%lu", v11 - v5);
      }

      printf("%s ");
    }

    else
    {
      printf("infty ");
    }
  }

  putchar(10);
}

void nd6_status()
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  __strlcpy_chk();
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    if (*__error() != 43)
    {
      warn("socket(AF_INET6, SOCK_DGRAM)");
    }
  }

  else
  {
    v1 = v0;
    if (ioctl(v0, 0xC030694CuLL, v2))
    {
      if (*__error() != 46 && *__error() != 22)
      {
        warn("ioctl(SIOCGIFINFO_IN6)");
      }

      close(v1);
    }

    else
    {
      close(v1);
      if (DWORD1(v3))
      {
        printb("\tnd6 options", DWORD1(v3), "\x10\x01PERFORMNUD\x02ACCEPT_RTADV\x03PREFER_SOURCE\x04IFDISABLED\x05DONT_SET_IFROUTE\x06PROXY_PREFIXES\aIGNORE_NA\bINSECURE\tREPLICATED\nDAD");
        putchar(10);
      }
    }
  }
}

uint64_t in6_getaddr(char *__s, int a2)
{
  v3 = *(&sin6tab + a2);
  memset(&v7, 0, sizeof(v7));
  v6 = 0;
  newaddr &= 1u;
  *v3 = 28;
  if (a2 != 2)
  {
    v3[1] = 30;
    if (a2 == 1)
    {
      v4 = strrchr(__s, 47);
      if (v4)
      {
        *v4 = 0;
        in6_getprefix(v4 + 1, 2);
        explicit_prefix = 1;
      }
    }
  }

  if (v3[1] == 30)
  {
    memset(&v7, 0, sizeof(v7));
    v7.ai_family = 30;
    if (!getaddrinfo(__s, 0, &v7, &v6))
    {
      return memmove(v3, v6->ai_addr, v6->ai_addrlen);
    }
  }

  result = inet_pton(30, __s, v3 + 8);
  if (result != 1)
  {
    errx(1, "%s: bad value", __s);
  }

  return result;
}

void *in6_getprefix(const char *a1, int a2)
{
  v4 = *(&sin6tab + a2);
  v5 = atoi(a1);
  if (v5 >= 0x81)
  {
    errx(1, "%s: bad value", a1);
  }

  v6 = v5;
  *v4 = 28;
  if (a2 != 2)
  {
    *(v4 + 1) = 30;
  }

  result = (v4 + 8);
  if ((v6 & 0x7F) != 0)
  {
    *result = 0;
    *(v4 + 16) = 0;
    if (v6 >= 8)
    {
      v8 = v6 - 15;
      if (v6 < 0xF)
      {
        v8 = 0;
      }

      v9 = v8 + 7;
      v10 = (v8 + 7) >> 3;
      memset(result, 255, v10 + 1);
      result = (v4 + v10 + 9);
      LOBYTE(v6) = v6 - (v9 & 0xF8) - 8;
    }

    *result = 255 << (8 - v6);
  }

  else
  {
    *result = -1;
    *(v4 + 16) = -1;
  }

  return result;
}

uint64_t in6_postproc(uint64_t a1, uint64_t a2)
{
  if ((explicit_prefix & 1) == 0)
  {
    v2 = *(a2 + 48);
    if (v2)
    {
      result = v2("64", 2);
    }

    explicit_prefix = 1;
  }

  return result;
}

uint64_t in6_status_tunnel(int a1)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  *v4 = 0u;
  __strlcpy_chk();
  result = ioctl(a1, 0xC120693FuLL, &v3);
  if ((result & 0x80000000) == 0 && BYTE1(v4[0]) == 30)
  {
    if (getnameinfo(v4, LOBYTE(v4[0]), v22, 0x401u, 0, 0, 2))
    {
      v22[0] = 0;
    }

    result = ioctl(a1, 0xC1206940uLL, &v3);
    if ((result & 0x80000000) == 0 && BYTE1(v4[0]) == 30)
    {
      if (getnameinfo(v4, LOBYTE(v4[0]), v21, 0x401u, 0, 0, 2))
      {
        v21[0] = 0;
      }

      return printf("\ttunnel inet6 %s --> %s\n", v22, v21);
    }
  }

  return result;
}

void in6_set_tunnel(int a1, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, sizeof(v8));
  __strlcpy_chk();
  v6 = **(a2 + 32);
  __memcpy_chk();
  v7 = **(a3 + 32);
  __memcpy_chk();
  if (ioctl(a1, 0x8080693EuLL, v8) < 0)
  {
    warn("SIOCSIFPHYADDR_IN6");
  }
}

void in6_set_router(int a1, int a2)
{
  v4 = 0u;
  v5 = 0u;
  __strlcpy_chk();
  LODWORD(v5) = a2 != 0;
  if (ioctl(a1, 0xC1206988uLL, &v4) < 0)
  {
    warn("SIOCSETROUTERMODE_IN6");
  }
}

uint64_t in6_routermode(int a1, int a2, const char **a3)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (a2)
  {
    v6 = *a3;
    if (!strcasecmp(v6, "exclusive") || !strcasecmp(v6, "enabled"))
    {
      v7 = 1;
    }

    else if (!strcasecmp(v6, "hybrid"))
    {
      v7 = 2;
    }

    else
    {
      if (strcasecmp(v6, "disabled"))
      {
        errx(1, "mode '%s' invalid, must be one of disabled, exclusive, or hybrid", v6);
      }

      v7 = 0;
    }

    LODWORD(v12) = v7;
    if (ioctl(a1, 0xC1206988uLL, &v11) < 0)
    {
      warn("SIOCSETROUTERMODE_IN6");
    }

    return 1;
  }

  else
  {
    if (ioctl(a1, 0xC1206989uLL, &v11) < 0)
    {
      if (a3)
      {
        warn("SIOCGETROUTERMODE_IN6");
      }
    }

    else
    {
      v9 = &unk_10000D3B1;
      if (!a3)
      {
        v9 = "\troutermode6: ";
      }

      if (v12 > 2)
      {
        v10 = "<unknown>";
      }

      else
      {
        v10 = off_100014480[v12];
      }

      printf("%s%s\n", v9, v10);
    }

    return 0;
  }
}

uint64_t prefix(unsigned __int8 *a1)
{
  v1 = 0;
  v2 = -1;
  for (i = a1; *i == 255; ++i)
  {
    v1 += 8;
    if (--v2 == -17)
    {
      return 128;
    }
  }

  v5 = 0;
  v6 = -v2;
  v7 = *i;
  v8 = (v1 + 7);
  while (1)
  {
    v9 = v5 + 7;
    if (((v7 >> (v5 + 7)) & 1) == 0)
    {
      break;
    }

    if (--v5 == -7)
    {
      goto LABEL_14;
    }
  }

  v8 = (v1 - v5);
  do
  {
    if ((v7 >> v9))
    {
      return 0;
    }

    --v9;
  }

  while (v9);
LABEL_14:
  while (v6 != 16)
  {
    if (a1[v6++])
    {
      return 0;
    }
  }

  return v8;
}

uint64_t link_ctor()
{
  af_register(&af_link);
  af_register(&af_ether);

  return af_register(&af_lladdr);
}

void link_status(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = v2[6];
    if (v2[6])
    {
      v4 = &v2[v2[5] + 8];
      v5 = ":";
      if (f_ether && !strcmp(f_ether, "dash"))
      {
        v5 = "-";
      }

      if (v2[4] == 6)
      {
        printf("\tether ");
      }

      else
      {
        printf("\tlladdr ");
      }

      v6 = v3 + 1;
      do
      {
        v8 = *v4++;
        v7 = v8;
        if (v6 == 2)
        {
          v9 = &unk_10000D3B1;
        }

        else
        {
          v9 = v5;
        }

        printf("%02x%s", v7, v9);
        --v6;
      }

      while (v6 > 1);

      putchar(10);
    }
  }
}

uint64_t link_getaddr(const char *a1, int a2)
{
  v4 = strlen(a1);
  if (a2 != 1)
  {
    link_getaddr_cold_1();
  }

  v5 = v4;
  v6 = malloc_type_malloc(v4 + 2, 0x844CDC38uLL);
  if (!v6)
  {
    link_getaddr_cold_3();
  }

  v7 = v6;
  memset(&v9, 0, sizeof(v9));
  *v6 = 58;
  strlcpy(v6 + 1, a1, v5 + 1);
  v9.sdl_len = 20;
  link_addr(v7, &v9);
  free(v7);
  if (v9.sdl_alen >= 0xFuLL)
  {
    link_getaddr_cold_2();
  }

  byte_10001C0A9 = 18;
  byte_10001C0A8 = v9.sdl_alen;
  return __memmove_chk();
}

uint64_t bridge_ctor()
{
  v0 = &bridge_cmds;
  v1 = 25;
  do
  {
    cmd_register(v0);
    v0 += 5;
    --v1;
  }

  while (v1);

  return af_register(af_bridge);
}

uint64_t setbridge_add(const char *a1, uint64_t a2, int a3)
{
  memset(v6, 0, sizeof(v6));
  __strlcpy_chk();
  v7[0] = 0u;
  __strlcpy_chk();
  v7[1] = xmmword_10000C460;
  v8 = v6;
  result = ioctl(a3, 0x8028697BuLL, v7);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGADD %s", a1);
  }

  return result;
}

uint64_t setbridge_delete(const char *a1, uint64_t a2, int a3)
{
  memset(v6, 0, sizeof(v6));
  __strlcpy_chk();
  v7[0] = 0u;
  __strlcpy_chk();
  v7[1] = xmmword_10000C470;
  v8 = v6;
  result = ioctl(a3, 0x8028697BuLL, v7);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGDEL %s", a1);
  }

  return result;
}

uint64_t setbridge_flush(uint64_t a1, uint64_t a2, int a3)
{
  memset(v5, 0, sizeof(v5));
  v6[0] = 0u;
  __strlcpy_chk();
  v6[1] = xmmword_10000C480;
  v7 = v5;
  result = ioctl(a3, 0x8028697BuLL, v6);
  if ((result & 0x80000000) != 0)
  {
    setbridge_flush_cold_1();
  }

  return result;
}

uint64_t setbridge_flushall(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  LODWORD(v6) = 1;
  v10[0] = 0u;
  __strlcpy_chk();
  v10[1] = xmmword_10000C480;
  v11 = &v5;
  result = ioctl(a3, 0x8028697BuLL, v10);
  if ((result & 0x80000000) != 0)
  {
    setbridge_flush_cold_1();
  }

  return result;
}

uint64_t setbridge_static(const char *a1, const char *a2, int a3)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  __strlcpy_chk();
  v6 = ether_aton(a2);
  if (!v6)
  {
    errx(1, "%s: invalid address: %s", a1, a2);
  }

  v7 = *v6->octet;
  *(&v10 + 13) = *&v6->octet[4];
  *(&v10 + 9) = v7;
  BYTE8(v10) = 1;
  LOWORD(v11) = 1;
  v12[0] = 0u;
  __strlcpy_chk();
  v12[1] = xmmword_10000C490;
  v13 = &v9;
  result = ioctl(a3, 0x8028697BuLL, v12);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSADDR %s", a1);
  }

  return result;
}

uint64_t setbridge_deladdr(const char *a1, uint64_t a2, int a3)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v5 = ether_aton(a1);
  if (!v5)
  {
    errx(1, "invalid address: %s", a1);
  }

  v6 = *v5->octet;
  *(&v9 + 13) = *&v5->octet[4];
  *(&v9 + 9) = v6;
  v11[0] = 0u;
  __strlcpy_chk();
  v11[1] = xmmword_10000C4A0;
  v12 = &v8;
  result = ioctl(a3, 0x8028697BuLL, v11);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGDADDR %s", a1);
  }

  return result;
}

uint64_t setbridge_maxaddr(const char *a1, uint64_t a2, int a3)
{
  v6 = 0;
  if ((get_val(a1, &v6) & 0x80000000) != 0)
  {
    errx(1, "invalid value: %s", a1);
  }

  v7 = v6;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v9 = vdupq_n_s64(4uLL);
  v10 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSCACHE %s", a1);
  }

  return result;
}

uint64_t setbridge_hellotime(const char *a1, uint64_t a2, int a3)
{
  v7 = 0;
  v6 = 0;
  if ((get_val(a1, &v6) & 0x80000000) != 0 || v6 >= 0x100)
  {
    errx(1, "invalid value: %s", a1);
  }

  LOBYTE(v7) = v6;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v9 = xmmword_10000C4B0;
  v10 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSHT %s", a1);
  }

  return result;
}

uint64_t setbridge_fwddelay(const char *a1, uint64_t a2, int a3)
{
  v7 = 0;
  v6 = 0;
  if ((get_val(a1, &v6) & 0x80000000) != 0 || v6 >= 0x100)
  {
    errx(1, "invalid value: %s", a1);
  }

  LOBYTE(v7) = v6;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v9 = xmmword_10000C4C0;
  v10 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSFD %s", a1);
  }

  return result;
}

uint64_t setbridge_maxage(const char *a1, uint64_t a2, int a3)
{
  v7 = 0;
  v6 = 0;
  if ((get_val(a1, &v6) & 0x80000000) != 0 || v6 >= 0x100)
  {
    errx(1, "invalid value: %s", a1);
  }

  LOBYTE(v7) = v6;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v9 = xmmword_10000C4D0;
  v10 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSMA %s", a1);
  }

  return result;
}

uint64_t setbridge_priority(const char *a1, uint64_t a2, int a3)
{
  v7 = 0;
  v6 = 0;
  if ((get_val(a1, &v6) & 0x80000000) != 0 || v6 >= 0x10000)
  {
    errx(1, "invalid value: %s", a1);
  }

  LOWORD(v7) = v6;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v9 = xmmword_10000C4E0;
  v10 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSPRI %s", a1);
  }

  return result;
}

uint64_t setbridge_ifpriority(uint64_t a1, const char *a2, int a3)
{
  v7 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if ((get_val(a2, &v7) & 0x80000000) != 0 || (v5 = v7, v7 >= 0x100))
  {
    errx(1, "invalid value: %s", a2);
  }

  __strlcpy_chk();
  BYTE13(v9) = v5;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  __strlcpy_chk();
  v14 = xmmword_10000C4F0;
  v15 = &v8;
  result = ioctl(a3, 0x8028697BuLL, &v13);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSIFPRIO %s", a2);
  }

  return result;
}

uint64_t setbridge_ifpathcost(uint64_t a1, const char *a2, int a3)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  if ((get_val(a2, &v6) & 0x80000000) != 0)
  {
    errx(1, "invalid value: %s", a2);
  }

  __strlcpy_chk();
  DWORD2(v8) = v6;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  __strlcpy_chk();
  v13 = xmmword_10000C500;
  v14 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v12);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSIFCOST %s", a2);
  }

  return result;
}

uint64_t setbridge_timeout(const char *a1, uint64_t a2, int a3)
{
  v6 = 0;
  if ((get_val(a1, &v6) & 0x80000000) != 0)
  {
    errx(1, "invalid value: %s", a1);
  }

  v7 = v6;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v9 = xmmword_10000C510;
  v10 = &v7;
  result = ioctl(a3, 0x8028697BuLL, &v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSTO %s", a1);
  }

  return result;
}

uint64_t setbridge_hostfilter(const char *a1, const char *a2, int a3)
{
  v11 = 0;
  v13 = 0;
  v12 = 0;
  s_addr = 0;
  v9.s_addr = 0;
  v10 = 1;
  __strlcpy_chk();
  v6 = ether_aton(a2);
  if (v6)
  {
    v10 |= 2u;
    v7 = *v6->octet;
    WORD2(v13) = *&v6->octet[4];
    LODWORD(v13) = v7;
  }

  else
  {
    if (!inet_aton(a2, &v9))
    {
      errx(1, "invalid address: %s", a2);
    }

    v10 |= 4u;
    s_addr = v9.s_addr;
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  __strlcpy_chk();
  v16 = xmmword_10000C520;
  v17 = &v10;
  result = ioctl(a3, 0x8028697BuLL, &v15);
  if ((result & 0x80000000) != 0)
  {
    err(1, "BRDGSHOSTFILTER %s %s", a1, a2);
  }

  return result;
}

uint64_t unsetbridge_hostfilter(uint64_t a1, uint64_t a2, int a3)
{
  memset(v5, 0, sizeof(v5));
  __strlcpy_chk();
  v6[0] = 0u;
  __strlcpy_chk();
  v6[1] = xmmword_10000C520;
  v7 = v5;
  result = ioctl(a3, 0x8028697BuLL, v6);
  if ((result & 0x80000000) != 0)
  {
    unsetbridge_hostfilter_cold_1();
  }

  return result;
}

uint64_t do_bridgeflag(int a1, uint64_t a2, int a3, int a4)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v14 = 0u;
  __strlcpy_chk();
  v15 = xmmword_10000C530;
  v16 = &v9;
  if (ioctl(a1, 0xC028697BuLL, &v14) < 0)
  {
    do_bridgeflag_cold_2();
  }

  if (a4)
  {
    v7 = v10 | a3;
  }

  else
  {
    v7 = v10 & ~a3;
  }

  LODWORD(v10) = v7;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  __strlcpy_chk();
  v15 = xmmword_10000C540;
  v16 = &v9;
  result = ioctl(a1, 0x8028697BuLL, &v14);
  if ((result & 0x80000000) != 0)
  {
    do_bridgeflag_cold_1();
  }

  return result;
}

void bridge_addresses(int a1, const char *a2)
{
  memset(v13, 0, 12);
  *&v12.octet[4] = 0;
  *v12.octet = 0;
  v4 = malloc_type_realloc(0, 0x2000uLL, 0x5FF3792BuLL);
  if (!v4)
  {
LABEL_6:
    bridge_addresses_cold_2();
  }

  v5 = v4;
  v6 = 0x2000;
  while (1)
  {
    LODWORD(v13[0]) = v6;
    *(v13 + 4) = v5;
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    __strlcpy_chk();
    v15 = xmmword_10000C550;
    v16 = v13;
    if (ioctl(a1, 0xC028697BuLL, &v14) < 0)
    {
      bridge_addresses_cold_1();
    }

    if (LODWORD(v13[0]) + 36 < v6)
    {
      break;
    }

    v6 = (2 * v6);
    v5 = malloc_type_realloc(v5, v6, 0x5FF3792BuLL);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (LODWORD(v13[0]) >= 0x24)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v13 + 4) + v7;
      v10 = *(*(v13 + 4) + v7 + 29);
      *v12.octet = *(*(v13 + 4) + v7 + 25);
      *&v12.octet[4] = v10;
      v11 = ether_ntoa(&v12);
      printf("%s%s Vlan%d %s %lu ", a2, v11, *(v9 + 32), v9, *(v9 + 16));
      printb("flags", *(v9 + 24), "\x10\x01STATIC\x02STICKY");
      putchar(10);
      ++v8;
      v7 += 36;
    }

    while (v8 < LODWORD(v13[0]) / 0x24uLL);
  }

  free(v5);
}

uint64_t get_val(const char *a1, unint64_t *a2)
{
  __endptr = 0;
  *__error() = 0;
  v4 = strtoul(a1, &__endptr, 0);
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*__endptr)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v5;
  return result;
}

void bridge_status(int a1)
{
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0;
  v65 = 0u;
  __strlcpy_chk();
  v66 = xmmword_10000C560;
  *&v67 = &v54;
  if ((ioctl(a1, 0xC028697BuLL, &v65) & 0x80000000) == 0)
  {
    v2 = v54;
    *&v67 = 0;
    v65 = 0u;
    v66 = 0u;
    __strlcpy_chk();
    v66 = xmmword_10000C570;
    *&v67 = &v54;
    if ((ioctl(a1, 0xC028697BuLL, &v65) & 0x80000000) == 0)
    {
      v3 = v54;
      *&v67 = 0;
      v65 = 0u;
      v66 = 0u;
      __strlcpy_chk();
      v66 = xmmword_10000C580;
      *&v67 = &v54;
      if ((ioctl(a1, 0xC028697BuLL, &v65) & 0x80000000) == 0)
      {
        v4 = v54;
        *&v67 = 0;
        v65 = 0u;
        v66 = 0u;
        __strlcpy_chk();
        v66 = xmmword_10000C590;
        *&v67 = &v55;
        if ((ioctl(a1, 0xC028697BuLL, &v65) & 0x80000000) == 0)
        {
          v5 = WORD3(v55);
          v6 = BYTE4(v55);
          v7 = BYTE2(v55);
          v8 = BYTE3(v55);
          v9 = v55;
          v51 = v4;
          v10 = BYTE1(v55);
          puts("\tConfiguration:");
          v53.octet[0] = BYTE5(v56);
          v53.octet[1] = BYTE4(v56);
          v53.octet[2] = BYTE3(v56);
          v53.octet[3] = BYTE2(v56);
          v53.octet[4] = BYTE1(v56);
          v53.octet[5] = v56;
          v11 = ether_ntoa(&v53);
          printf("\t\tid %s priority %u hellotime %u fwddelay %u\n", v11, v5, v7, v8);
          printf("\t\tmaxage %u holdcnt %u proto %s maxaddr %u timeout %u\n", v10, v9, stpproto[v6], v2, v3);
          v53.octet[0] = BYTE13(v56);
          v53.octet[1] = BYTE12(v56);
          v12 = HIWORD(*(&v56 + 1));
          v53.octet[2] = BYTE11(v56);
          v53.octet[3] = BYTE10(v56);
          v53.octet[4] = BYTE9(v56);
          v53.octet[5] = BYTE8(v56);
          v13 = ether_ntoa(&v53);
          printf("\t\troot id %s priority %d ifcost %u port %u\n", v13, v12, HIDWORD(v55), WORD4(v55) & 0xFFF);
          v14 = "enabled";
          if ((v51 & 1) == 0)
          {
            v14 = "disabled";
          }

          printf("\t\tipfilter %s flags 0x%x\n", v14, v51);
          v52 = strdup("\tmember: ");
          if (!v52)
          {
            domediaopt_cold_1();
          }

          v15 = *v52;
          if (*v52)
          {
            v16 = (v52 + 1);
            while ((v15 & 0x80) == 0)
            {
              if ((_DefaultRuneLocale.__runetype[v15] & 0x40000) != 0)
              {
                goto LABEL_12;
              }

LABEL_13:
              v17 = *v16++;
              v15 = v17;
              if (!v17)
              {
                goto LABEL_17;
              }
            }

            if (!__maskrune(v15, 0x40000uLL))
            {
              goto LABEL_13;
            }

LABEL_12:
            *(v16 - 1) = 32;
            goto LABEL_13;
          }

LABEL_17:
          memset(v60, 0, 12);
          v18 = malloc_type_realloc(0, 0x2000uLL, 0xF69E43E8uLL);
          if (!v18)
          {
LABEL_22:
            bridge_status_cold_8();
          }

          v19 = v18;
          v20 = 0x2000;
          while (1)
          {
            LODWORD(v60[0]) = v20;
            *(v60 + 4) = v19;
            *&v67 = 0;
            v65 = 0u;
            v66 = 0u;
            __strlcpy_chk();
            v66 = xmmword_10000C5A0;
            *&v67 = v60;
            if (ioctl(a1, 0xC028697BuLL, &v65) < 0)
            {
              bridge_status_cold_7();
            }

            if (LODWORD(v60[0]) + 80 < v20)
            {
              break;
            }

            v20 = (2 * v20);
            v19 = malloc_type_realloc(v19, v20, 0xF69E43E8uLL);
            if (!v19)
            {
              goto LABEL_22;
            }
          }

          if (LODWORD(v60[0]) >= 0x50)
          {
            v28 = 0;
            v29 = 0;
            v30 = &ifr;
            v50 = a1;
            do
            {
              v31 = *(v60 + 4);
              v32 = *(v60 + 4) + v28;
              printf("%s%s ", "\tmember: ", (*(v60 + 4) + v28));
              printb("flags", *(v32 + 16), "\x10\x01LEARNING\x02DISCOVER\x03STP\x04SPAN\x05STICKY006EDGE\aAUTOEDGE\bPTP\tAUTOPTP\fPRIVATE\rPROXYSTA\x0EPROXYSTA_DISCOVER\x10MACNAT\x11CSUM\x12VIRTIO");
              putchar(10);
              printf("%s", v52);
              printf("ifmaxaddr %u", *(v32 + 40));
              printf(" port %u priority %u", *(v32 + 28), *(v32 + 29));
              printf(" path cost %u", *(v32 + 24));
              if ((*(v32 + 16) & 4) != 0)
              {
                v33 = *(v32 + 30);
                if (v33 > 2)
                {
                  v45 = *(v32 + 30);
                  printf(" <unknown proto %d>");
                }

                else
                {
                  v44 = stpproto[v33];
                  printf(" proto %s");
                }

                printf("\n%s", v52);
                v34 = *(v31 + v28 + 31);
                if (v34 > 4)
                {
                  v47 = *(v31 + v28 + 31);
                  printf("<unknown role %d>");
                }

                else
                {
                  v46 = stproles[v34];
                  printf("role %s");
                }

                v35 = *(v31 + v28 + 32);
                if (v35 > 5)
                {
                  v49 = *(v31 + v28 + 32);
                  printf(" <unknown state %d>");
                }

                else
                {
                  v48 = stpstates[v35];
                  printf(" state %s");
                }
              }

              putchar(10);
              if (verbose)
              {
                *&v59.octet[4] = 0;
                *v59.octet = 0;
                v61 = 0u;
                v62 = 0u;
                __strlcpy_chk();
                *&v67 = 0;
                v65 = 0u;
                v66 = 0u;
                __strlcpy_chk();
                v66 = xmmword_10000C5B0;
                *&v67 = &v61;
                if (ioctl(a1, 0xC028697BuLL, &v65) < 0)
                {
                  err(1, "unable to get host filter settings for %s");
                }

                v36 = v30;
                if (v61)
                {
                  v37 = HIDWORD(v62);
                  v59 = *(&v62 + 4);
                }

                else
                {
                  v37 = 0;
                  *&v59.octet[4] = 0;
                  *v59.octet = 0;
                }

                printf("%s", v52);
                v38 = v61 & 1;
                v39 = ether_ntoa(&v59);
                v40.s_addr = v37;
                v41 = inet_ntoa(v40);
                printf("hostfilter %d hw: %s ip: %s", v38, v39, v41);
                putchar(10);
                v65 = 0u;
                v66 = 0u;
                v67 = 0u;
                v68 = 0u;
                v69 = 0u;
                __strlcpy_chk();
                v72 = 0;
                v70 = 0u;
                v71 = 0u;
                v30 = v36;
                __strlcpy_chk();
                v71 = xmmword_10000C530;
                v72 = &v65;
                if (ioctl(v50, 0xC028697BuLL, &v70) < 0)
                {
                  do_bridgeflag_cold_2();
                }

                a1 = v50;
                if (BYTE2(v66))
                {
                  v64 = 0u;
                  v63 = 0u;
                  __strlcpy_chk();
                  v72 = 0;
                  v70 = 0u;
                  v71 = 0u;
                  __strlcpy_chk();
                  v71 = xmmword_10000C5C0;
                  v72 = &v63;
                  if (ioctl(v50, 0xC028697BuLL, &v70) < 0)
                  {
                    warn("unable to get bridge member stats size %s");
                  }

                  else if (DWORD1(v64) <= 0xF7)
                  {
                    warn("bridge stats incompatible size %d < %lu");
                  }

                  else
                  {
                    v42 = malloc_type_malloc(v64, 0xBBC9EE50uLL);
                    if (!v42)
                    {
                      bridge_status_cold_1();
                    }

                    v43 = v42;
                    *(&v64 + 1) = v42;
                    v72 = 0;
                    v70 = 0u;
                    v71 = 0u;
                    __strlcpy_chk();
                    v71 = xmmword_10000C5C0;
                    v72 = &v63;
                    if (ioctl(v50, 0xC028697BuLL, &v70) < 0)
                    {
                      err(1, "unable to get bridge member stats %s");
                    }

                    puts("\t\tchecksum stats:");
                    print_bripstats("\t\tin:", v43);
                    printf("%s IPv4=%qu UDP=%qu TCP=%qu%s", "\t\t\tchecksum offloaded:", v43[16], v43[17], v43[18], "\n");
                    print_bripstats("\t\tout:", (v43 + 8));
                    printf("%s IPv4=%qu UDP=%qu TCP=%qu%s", "\t\t\tchecksum good sw:", v43[19], v43[20], v43[21], &unk_10000D3B1);
                    printf("%s IPv4=%qu UDP=%qu TCP=%qu%s", " hw:", v43[22], v43[23], v43[24], "\n");
                    printf("%s IPv4=%qu UDP=%qu TCP=%qu%s", "\t\t\tchecksum bad sw:", v43[25], v43[26], v43[27], &unk_10000D3B1);
                    printf("%s IPv4=%qu UDP=%qu TCP=%qu%s", " hw:", v43[28], v43[29], v43[30], "\n");
                    free(v43);
                  }
                }
              }

              ++v29;
              v28 += 80;
            }

            while (v29 < LODWORD(v60[0]) / 0x50uLL);
          }

          free(v19);
          free(v52);
          if (all)
          {
            v21 = verbose < 2;
          }

          else
          {
            v21 = 0;
          }

          if (!v21)
          {
            puts("\tAddress cache:");
            bridge_addresses(a1, "\t\t");
            v70 = 0uLL;
            *&v67 = 0;
            v65 = 0u;
            v66 = 0u;
            __strlcpy_chk();
            v66 = xmmword_10000C5D0;
            *&v67 = &v70;
            if ((ioctl(a1, 0xC028697BuLL, &v65) & 0x80000000) == 0)
            {
              if (v70)
              {
                puts("\tMAC NAT list:");
                if (!WORD2(v70))
                {
                  bridge_status_cold_6();
                }

                if (WORD2(v70) <= 0x2Fu)
                {
                  bridge_status_cold_5();
                }

                v22 = malloc_type_malloc(v70, 0x73C7F85AuLL);
                if (!v22)
                {
                  bridge_status_cold_4();
                }

                v23 = v22;
                *(&v70 + 1) = v22;
                *&v67 = 0;
                v65 = 0u;
                v66 = 0u;
                __strlcpy_chk();
                v66 = xmmword_10000C5D0;
                *&v67 = &v70;
                if (ioctl(a1, 0xC028697BuLL, &v65) < 0)
                {
                  bridge_status_cold_3();
                }

                if (v70 >= WORD2(v70))
                {
                  v24 = 0;
                  v25 = v23;
                  v26 = v70 / WORD2(v70);
                  do
                  {
                    LODWORD(v63) = v25[6];
                    WORD2(v63) = *(v25 + 14);
                    inet_ntop(*(v25 + 31), v25 + 8, &v65, 0x2Eu);
                    v27 = ether_ntoa(&v63);
                    printf("%s%s %s %s %lu\n", "\t\t", v25, &v65, v27, *(v25 + 2));
                    ++v24;
                    v25 = (v25 + WORD2(v70));
                  }

                  while (v24 < v26);
                }

                free(v23);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t print_bripstats(const char *a1, uint64_t a2)
{
  printf("%s IPv4=%qu IPv6=%qu UDP=%qu TCP=%qu", a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  v3 = *(a2 + 40);
  if (*(a2 + 32) != 0)
  {
    goto LABEL_5;
  }

  if (*(a2 + 48) || *(a2 + 56))
  {
    v3 = 0;
LABEL_5:
    printf(" bad IPv4=%qu IPv6=%qu UDP=%qu TCP=%qu", *(a2 + 32), v3, *(a2 + 48), *(a2 + 56));
  }

  return putchar(10);
}

void *clone_setcallback(void *result)
{
  if (clone_cb)
  {
    v1 = clone_cb == result;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    clone_setcallback_cold_1();
  }

  clone_cb = result;
  return result;
}

uint64_t clone_ctor()
{
  v0 = &clone_cmds;
  v1 = 4;
  do
  {
    cmd_register(v0);
    v0 += 5;
    --v1;
  }

  while (v1);

  return opt_register(clone_Copt);
}

uint64_t clone_destroy(uint64_t a1, uint64_t a2, int a3)
{
  __strlcpy_chk();
  result = ioctl(a3, 0x80206979uLL, &ifr);
  if ((result & 0x80000000) != 0)
  {
    clone_destroy_cold_1();
  }

  return result;
}

uint64_t ifclonecreate(uint64_t a1)
{
  *__s2 = 0u;
  v4 = 0u;
  __strlcpy_chk();
  if (clone_cb)
  {
    clone_cb(a1, __s2);
  }

  else if (ioctl(a1, 0xC020697AuLL, __s2) < 0)
  {
    vlan_create_cold_1();
  }

  result = strncmp(name, __s2, 0x10uLL);
  if (result)
  {
    __strlcpy_chk();
    return puts(name);
  }

  return result;
}

void list_cloners()
{
  v0 = socket(2, 2, 0);
  if (v0 == -1)
  {
    list_cloners_cold_4();
  }

  v1 = v0;
  v7 = 0;
  v8 = 0;
  if (ioctl(v0, 0xC0106981uLL, &v7) < 0)
  {
    list_cloners_cold_3();
  }

  v2 = malloc_type_malloc(16 * v7, 0xB4602A4AuLL);
  if (!v2)
  {
    list_cloners_cold_2();
  }

  v3 = v2;
  HIDWORD(v7) = v7;
  v8 = v2;
  if (ioctl(v1, 0xC0106981uLL, &v7) < 0)
  {
    list_cloners_cold_1();
  }

  v4 = HIDWORD(v7);
  if (SHIDWORD(v7) > v7)
  {
    HIDWORD(v7) = v7;
    v4 = v7;
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      if (v5)
      {
        putchar(32);
      }

      printf("%s", v6);
      ++v5;
      v6 += 16;
    }

    while (v5 < SHIDWORD(v7));
  }

  putchar(10);
  free(v3);
}

uint64_t fake_ctor()
{
  cmd_register(&fake_cmds);
  cmd_register(&off_10001ACA8);

  return af_register(af_fake);
}

uint64_t set_peer(int a1, const char *a2, uint64_t a3)
{
  v8[0] = 0u;
  memset(v7, 0, sizeof(v7));
  __strlcpy_chk();
  v8[1] = xmmword_10000C5E0;
  v9 = v7;
  if (a3)
  {
    __strlcpy_chk();
  }

  result = ioctl(a1, 0x8028697BuLL, v8);
  if ((result & 0x80000000) != 0)
  {
    err(1, "SIOCDRVSPEC %s peer", a2);
  }

  return result;
}

uint64_t fake_status(int a1)
{
  v5[0] = 0u;
  memset(v3, 0, sizeof(v3));
  memset(v4, 0, sizeof(v4));
  __strlcpy_chk();
  v5[1] = xmmword_10000C5E0;
  v6 = v3;
  result = ioctl(a1, 0xC028697BuLL, v5);
  if ((result & 0x80000000) == 0)
  {
    if (LOBYTE(v4[0]))
    {
      return printf("\tpeer: %s\n", v4);
    }

    else
    {
      return puts("\tpeer: <none>");
    }
  }

  return result;
}

uint64_t nexus_status(uint64_t result)
{
  if (verbose)
  {
    v1 = result;
    memset(v3, 0, 37);
    memset(out, 0, 37);
    memset(v4, 0, sizeof(v4));
    __strlcpy_chk();
    result = ioctl(v1, 0xC06069C3uLL, v4);
    if ((result & 0x80000000) == 0)
    {
      result = uuid_is_null(&v4[1] + 8);
      if (!result)
      {
        uuid_unparse_upper(&v4[1] + 8, out);
        printf("\tnetif: %s\n", out);
        result = uuid_is_null(&v4[2] + 8);
        if (!result)
        {
          uuid_unparse_upper(&v4[2] + 8, v3);
          return printf("\tflowswitch: %s\n", v3);
        }
      }
    }
  }

  return result;
}

uint64_t setfastlane(const char *a1, const char *a2, int a3)
{
  __strlcpy_chk();
  warnx("### fastlane is obsolete, use qosmarking ###");
  if (!strcmp(a1, "capable"))
  {
    v9 = *a2;
    if (v9 == 49 && !a2[1] || !strcasecmp(a2, "on") || !strcasecmp(a2, "yes") || !strcasecmp(a2, "true"))
    {
      v7 = "mode";
      v8 = "fastlane";
    }

    else
    {
      if ((v9 != 48 || a2[1]) && strcasecmp(a2, "off") && strcasecmp(a2, "no") && strcasecmp(a2, "false"))
      {
        goto LABEL_31;
      }

      v7 = "mode";
      v8 = "off";
    }
  }

  else
  {
    if (strcmp(a1, "enable"))
    {
      err(64, "fastlane takes capable or enable");
    }

    v6 = *a2;
    if ((v6 != 49 || a2[1]) && strcasecmp(a2, "on") && strcasecmp(a2, "yes") && strcasecmp(a2, "true"))
    {
      if (v6 == 48 && !a2[1] || !strcasecmp(a2, "off") || !strcasecmp(a2, "no") || !strcasecmp(a2, "false"))
      {
        v7 = "enabled";
        v8 = "0";
        goto LABEL_27;
      }

LABEL_31:
      err(64, "bad value for fastlane %s");
    }

    v7 = "enabled";
    v8 = "1";
  }

LABEL_27:

  return setqosmarking(v7, v8, a3);
}