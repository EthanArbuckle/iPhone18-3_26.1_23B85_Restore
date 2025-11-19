void start(int a1, char *const *a2)
{
  qword_100008000 = *a2;
  setlinebuf(__stdoutp);
  v4 = 0;
  while (1)
  {
    v5 = getopt(a1, a2, "c:");
    if (v5 != 99)
    {
      break;
    }

    v4 = strtol(optarg, 0, 10);
    if (v4 <= 0)
    {
      warnx("count must be positive");
      goto LABEL_13;
    }
  }

  if (v5 == -1)
  {
    if (a1 - optind == 1)
    {
      v6 = strtod(a2[optind], 0);
      if (v6 >= 0.0)
      {
        v7 = v6;
        dword_100008008 = mach_host_self();
        if (v7 != 0.0)
        {
          sub_1000009AC();
          v8 = v4 - 1;
          if (v4 != 1)
          {
            do
            {
              usleep((v7 * 1000000.0));
              sub_1000009AC();
              --v8;
            }

            while (v8);
          }

LABEL_16:
          exit(0);
        }

LABEL_15:
        sub_10000073C();
        goto LABEL_16;
      }
    }

    else if (a1 - optind < 2)
    {
      dword_100008008 = mach_host_self();
      goto LABEL_15;
    }
  }

LABEL_13:
  fprintf(__stderrp, "usage: %s [[-c count] interval]\n", qword_100008000);
  exit(1);
}

uint64_t sub_10000073C()
{
  sub_100000BA0(&xmmword_100008010);
  printf("Mach Virtual Memory Statistics: (page size of %llu bytes)\n", vm_kernel_page_size);
  printf("%-30s %16llu.\n", "Pages free:", (xmmword_100008010 - dword_10000806C));
  printf("%-30s %16llu.\n", "Pages active:", DWORD1(xmmword_100008010));
  printf("%-30s %16llu.\n", "Pages inactive:", DWORD2(xmmword_100008010));
  printf("%-30s %16llu.\n", "Pages speculative:", dword_10000806C);
  printf("%-30s %16llu.\n", "Pages throttled:", DWORD1(xmmword_100008090));
  printf("%-30s %16llu.\n", "Pages wired down:", HIDWORD(xmmword_100008010));
  printf("%-30s %16llu.\n", "Pages purgeable:", dword_100008068);
  printf("%-30s %16llu.\n", "Translation faults:", qword_100008040);
  printf("%-30s %16llu.\n", "Pages copy-on-write:", qword_100008048);
  printf("%-30s %16llu.\n", "Pages zero filled:", qword_100008020);
  printf("%-30s %16llu.\n", "Pages reactivated:", qword_100008028);
  printf("%-30s %16llu.\n", "Pages purged:", qword_100008060);
  printf("%-30s %16llu.\n", "File-backed pages:", DWORD2(xmmword_100008090));
  printf("%-30s %16llu.\n", "Anonymous pages:", HIDWORD(xmmword_100008090));
  printf("%-30s %16llu.\n", "Pages stored in compressor:", qword_1000080A0);
  printf("%-30s %16llu.\n", "Pages occupied by compressor:", xmmword_100008090);
  printf("%-30s %16llu.\n", "Decompressions:", xmmword_100008070);
  printf("%-30s %16llu.\n", "Compressions:", *(&xmmword_100008070 + 1));
  printf("%-30s %16llu.\n", "Pageins:", xmmword_100008030);
  printf("%-30s %16llu.\n", "Pageouts:", *(&xmmword_100008030 + 1));
  printf("%-30s %16llu.\n", "Swapins:", qword_100008080);
  return printf("%-30s %16llu.\n", "Swapouts:", qword_100008088);
}

double sub_1000009AC()
{
  v0 = dword_100008150;
  v1 = ++dword_100008150;
  if (!v0)
  {
    sub_100000C10();
    v1 = dword_100008150;
  }

  if (v1 >= 21)
  {
    dword_100008150 = 0;
  }

  sub_100000BA0(&xmmword_100008010);
  sub_100000D68((xmmword_100008010 - dword_10000806C), 8u);
  sub_100000D68(DWORD1(xmmword_100008010), 8u);
  sub_100000D68(dword_10000806C, 8u);
  sub_100000D68(DWORD2(xmmword_100008010), 8u);
  sub_100000D68(DWORD1(xmmword_100008090), 8u);
  sub_100000D68(HIDWORD(xmmword_100008010), 8u);
  sub_100000D68(dword_100008068, 8u);
  sub_100000D68(qword_100008040 - qword_1000080E0, 8u);
  sub_100000D68(qword_100008048 - qword_1000080E8, 8u);
  sub_100000D68(qword_100008020 - qword_1000080C0, 8u);
  sub_100000D68(qword_100008028 - qword_1000080C8, 8u);
  sub_100000D68(qword_100008060 - qword_100008100, 8u);
  sub_100000D68(DWORD2(xmmword_100008090), 0xBu);
  sub_100000D68(HIDWORD(xmmword_100008090), 9u);
  sub_100000D68(qword_1000080A0, 8u);
  sub_100000D68(xmmword_100008090, 8u);
  sub_100000D68(xmmword_100008070 - xmmword_100008110, 8u);
  sub_100000D68(*(&xmmword_100008070 + 1) - *(&xmmword_100008110 + 1), 8u);
  sub_100000D68(xmmword_100008030 - xmmword_1000080D0, 8u);
  sub_100000D68(*(&xmmword_100008030 + 1) - *(&xmmword_1000080D0 + 1), 8u);
  sub_100000D68(qword_100008080 - qword_100008120, 8u);
  sub_100000D68(qword_100008088 - qword_100008128, 8u);
  putchar(10);
  xmmword_100008110 = xmmword_100008070;
  *&qword_100008120 = *&qword_100008080;
  xmmword_100008130 = xmmword_100008090;
  unk_100008140 = *&qword_1000080A0;
  xmmword_1000080D0 = xmmword_100008030;
  *&qword_1000080E0 = *&qword_100008040;
  xmmword_1000080F0 = xmmword_100008050;
  *&qword_100008100 = *&qword_100008060;
  result = *&xmmword_100008010;
  xmmword_1000080B0 = xmmword_100008010;
  *&qword_1000080C0 = *&qword_100008020;
  return result;
}

uint64_t sub_100000BA0(host_info64_t host_info64_out)
{
  host_info64_outCnt = 40;
  result = host_statistics64(dword_100008008, 4, host_info64_out, &host_info64_outCnt);
  if (result)
  {
    fprintf(__stderrp, "%s: failed to get statistics. error %d\n", qword_100008000, 1);
    exit(1);
  }

  return result;
}

double sub_100000C10()
{
  sub_100000BA0(&xmmword_100008010);
  printf("Mach Virtual Memory Statistics: ");
  printf("(page size of %llu bytes)\n", vm_kernel_page_size);
  printf("%8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %11s %9s %8s %8s %8s %8s %8s %8s %8s %8s\n", "free", "active", "specul", "inactive", "throttle", "wired", "prgable", "faults", "copy", "0fill", "reactive", "purged", "file-backed", "anonymous", "cmprssed", "cmprssor", "dcomprs", "comprs", "pageins", "pageout", "swapins", "swapouts");
  result = 0.0;
  xmmword_1000080B0 = 0u;
  *&qword_1000080C0 = 0u;
  xmmword_1000080D0 = 0u;
  *&qword_1000080E0 = 0u;
  xmmword_1000080F0 = 0u;
  *&qword_100008100 = 0u;
  xmmword_100008110 = 0u;
  *&qword_100008120 = 0u;
  xmmword_100008130 = 0u;
  unk_100008140 = 0u;
  return result;
}

uint64_t sub_100000D68(unint64_t a1, unsigned int a2)
{
  if (a2 >= 0x4F)
  {
    v3 = 79;
  }

  else
  {
    v3 = a2;
  }

  if (snprintf(__str, 0x50uLL, "%*llu", v3, a1) > v3 && snprintf(__str, 0x50uLL, "%*lluK", v3 - 1, a1 / 0x3E8) > v3 && snprintf(__str, 0x50uLL, "%*lluM", v3 - 1, a1 / 0xF4240) > v3)
  {
    snprintf(__str, 0x50uLL, "%*lluG", v3 - 1, a1 / 0x3B9ACA00);
  }

  fputs(__str, __stdoutp);
  return putchar(32);
}