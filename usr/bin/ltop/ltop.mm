uint64_t start(int a1, char **a2)
{
  qword_100008040 = *a2;
  v4 = &dword_100008000;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = getopt(a1, a2, "g:hdLp:r:");
        if (v5 <= 103)
        {
          break;
        }

        switch(v5)
        {
          case 'p':
            dword_100008000 = atoi(optarg);
            break;
          case 'r':
            qword_100008010 = optarg;
            break;
          case 'h':
            sub_100000E64();
            goto LABEL_115;
          default:
LABEL_117:
            sub_100000E64();
LABEL_110:
            exit(1);
        }
      }

      if (v5 <= 102)
      {
        break;
      }

      qword_100008008 = optarg;
    }

    if (v5 != 100)
    {
      break;
    }

    dword_100008018 = 1;
  }

  if (v5 != -1)
  {
    if (v5 == 76)
    {
      sub_100000E98();
      sub_100000F8C();
LABEL_115:
      exit(0);
    }

    goto LABEL_117;
  }

  if (optind == a1)
  {
    v49 = 0;
  }

  else
  {
    v49 = atoi(a2[optind]);
  }

  v6 = qword_100008008;
  v7 = qword_100008010;
  if (qword_100008008 && qword_100008010)
  {
    v46 = __stderrp;
    v47 = "Cannot specify both a resource and a group\n";
    v48 = 43;
LABEL_109:
    fwrite(v47, v48, 1uLL, v46);
    goto LABEL_110;
  }

  if (qword_100008008)
  {
    if (!qword_100008028)
    {
      sub_100000E98();
      v6 = qword_100008008;
    }

    v8 = dword_100008030;
    if (dword_100008030 < 1)
    {
LABEL_24:
      fprintf(__stderrp, "No such group: %s\n");
      goto LABEL_110;
    }

    v9 = (qword_100008028 + 32);
    while (strcmp(v6, v9))
    {
      v9 += 96;
      if (!--v8)
      {
        goto LABEL_24;
      }
    }

    v7 = qword_100008010;
  }

  if (!v7)
  {
    goto LABEL_34;
  }

  if (!qword_100008028)
  {
    sub_100000E98();
    v7 = qword_100008010;
  }

  v10 = dword_100008030;
  if (dword_100008030 < 1)
  {
LABEL_33:
    fprintf(__stderrp, "No such resource: %s\n");
    goto LABEL_110;
  }

  v11 = qword_100008028;
  while (strcmp(v7, v11))
  {
    v11 += 96;
    if (!--v10)
    {
      goto LABEL_33;
    }
  }

  do
  {
LABEL_34:
    sub_100000E98();
    if (*v4 < 0)
    {
      *v52 = 0x600000001;
      v50 = 0;
      v51 = 4;
      if (sysctl(v52, 2u, &v50, &v51, 0, 0) < 0)
      {
        sub_100001274();
      }

      LODWORD(v12) = v50;
    }

    else
    {
      LODWORD(v12) = 1;
    }

    v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
    if (!v13)
    {
      sub_100001254();
    }

    v14 = v13;
    if (*v4 < 0)
    {
      v15 = proc_listallpids(v13, 4 * v12);
      if ((v15 & 0x80000000) != 0)
      {
        sub_100001234();
      }

      LODWORD(v12) = v15;
      qsort(v14, v15, 4uLL, sub_1000010AC);
    }

    else
    {
      *v13 = *v4;
    }

    if (v12 >= 1)
    {
      v16 = 0;
      v12 = v12;
      v17 = v12;
      do
      {
        v18 = *(v14 + v16);
        if ((v18 & 0x80000000) == 0)
        {
          v53 = 0u;
          v54 = 0u;
          *v52 = 0u;
          *__error() = 0;
          if ((ledger() & 0x80000000) != 0)
          {
            if (*__error() != 2 && *__error() != 3)
            {
              sub_100001214();
            }
          }

          else
          {
            v19 = qword_100008038;
            if (qword_100008038)
            {
              while (v54 != *v19)
              {
                v19 = *(v19 + 40);
                if (!v19)
                {
                  goto LABEL_50;
                }
              }

              v21 = *(v19 + 16);
            }

            else
            {
LABEL_50:
              v20 = malloc_type_malloc(0x30uLL, 0x10200406083FE87uLL);
              if (!v20)
              {
                v46 = __stderrp;
                v47 = "Out of memory";
                v48 = 13;
                goto LABEL_109;
              }

              v19 = v20;
              *v20 = v54;
              v21 = *(&v54 + 1);
              v22 = qword_100008038;
              v20[2] = 0;
              *(v20 + 2) = v21;
              *(v20 + 3) = 0;
              *(v20 + 4) = 0;
              *(v20 + 5) = v22;
              qword_100008038 = v20;
            }

            if (v21 >= dword_100008030)
            {
              v21 = dword_100008030;
            }

            v51 = v21;
            v23 = malloc_type_malloc(48 * v21, 0x1000040EED21634uLL);
            if ((ledger() & 0x80000000) != 0)
            {
              sub_100001214();
            }

            *(v19 + 24) = v23;
            *(v19 + 8) = 1;
            v24 = qword_100008020;
            if (qword_100008020)
            {
              while (*v24 != v18)
              {
                v24 = *(v24 + 48);
                if (!v24)
                {
                  goto LABEL_62;
                }
              }
            }

            else
            {
LABEL_62:
              v25 = malloc_type_malloc(0x38uLL, 0x1020040D8E0519AuLL);
              if (!v25)
              {
                v46 = __stderrp;
                v47 = "Out of memory\n";
                v48 = 14;
                goto LABEL_109;
              }

              v24 = v25;
              if (!proc_name(v18, v25 + 8, 0x20u))
              {
                __strlcpy_chk();
              }

              *v24 = v18;
              v26 = qword_100008020;
              *(v24 + 40) = v19;
              *(v24 + 48) = v26;
              qword_100008020 = v24;
            }

            *(v24 + 4) = 1;
            v12 = v17;
          }
        }

        ++v16;
      }

      while (v16 != v12);
    }

    free(v14);
    printf("\n%5s %32s %32s %10s  %10s  %10s  %10s  %10s \n", "PID", "COMMAND", "RESOURCE", "CREDITS", "DEBITS", "BALANCE", "LIMIT", "PERIOD");
    v27 = qword_100008020;
    if (!qword_100008020)
    {
      goto LABEL_115;
    }

    v28 = 0;
    do
    {
      while (1)
      {
        if (!*(v27 + 4))
        {
          goto LABEL_87;
        }

        printf("%5d %32s ", *v27, (v27 + 8));
        v29 = *(v27 + 40);
        if (v29[2] >= 1)
        {
          break;
        }

        v28 = 0;
        v27 = *(v27 + 48);
        if (!v27)
        {
          goto LABEL_115;
        }
      }

      v30 = 0;
      v31 = 0;
      v28 = 0;
      v32 = v29[4];
      v33 = qword_100008008;
      v34 = (v29[3] + 16);
      v35 = (v32 + 16);
      do
      {
        if ((!v33 || !strcmp(v33, (qword_100008028 + v30 + 32))) && (!qword_100008010 || !strcmp(qword_100008010, (qword_100008028 + v30))))
        {
          if (v28)
          {
            printf("%5s %32s ", "", "");
          }

          printf("%32s ", (qword_100008028 + v30));
          if (v32)
          {
            sub_1000010BC(*(v34 - 1), *(v34 - 1) - *(v35 - 1));
            sub_1000010BC(*v34, *v34 - *v35);
            v36 = *(v34 - 2);
            v37 = v36 - *(v35 - 2);
          }

          else
          {
            sub_1000010BC(*(v34 - 1), 0);
            sub_1000010BC(*v34, 0);
            v37 = 0;
            v36 = *(v34 - 2);
          }

          sub_1000010BC(v36, v37);
          v38 = v34[1];
          if (v38 == 0x7FFFFFFFFFFFFFFFLL)
          {
            printf("%10s  %10s", "none", "-");
          }

          else
          {
            sub_1000010BC(v38, 0);
            sub_1000010BC(v34[2], 0);
          }

          ++v28;
          putchar(10);
          v33 = qword_100008008;
          v29 = *(v27 + 40);
        }

        ++v31;
        v30 += 96;
        v34 += 6;
        v35 += 6;
      }

      while (v29[2] > v31);
LABEL_87:
      v27 = *(v27 + 48);
    }

    while (v27);
    if (!v28)
    {
      goto LABEL_115;
    }

    v39 = qword_100008020;
    v4 = &dword_100008000;
    if (qword_100008020)
    {
      do
      {
        v40 = *(v39 + 48);
        if (*(v39 + 4))
        {
          *(v39 + 4) = 0;
        }

        else
        {
          qword_100008020 = *(v39 + 48);
          free(v39);
        }

        v39 = v40;
      }

      while (v40);
    }

    v41 = qword_100008038;
    if (qword_100008038)
    {
      do
      {
        v42 = *(v41 + 40);
        if (*(v41 + 8))
        {
          *(v41 + 8) = 0;
          free(*(v41 + 32));
          v43 = *(v41 + 24);
          *(v41 + 24) = 0;
          *(v41 + 32) = v43;
        }

        else
        {
          qword_100008038 = *(v41 + 40);
          free(*(v41 + 24));
          v44 = *(v41 + 32);
          if (v44)
          {
            free(v44);
          }

          free(v41);
        }

        v41 = v42;
      }

      while (v42);
    }

    free(qword_100008028);
    qword_100008028 = 0;
    sleep(v49);
  }

  while (v49);
  return 0;
}

uint64_t sub_100000E98()
{
  v4 = dword_100008030 + 5;
  v0 = malloc_type_malloc(96 * (dword_100008030 + 5), 0x1000040565EDBD2uLL);
  if (!v0)
  {
LABEL_6:
    fwrite("Out of memory\n", 0xEuLL, 1uLL, __stderrp);
    exit(1);
  }

  v1 = v0;
  while (1)
  {
    result = ledger();
    if ((result & 0x80000000) != 0)
    {
      sub_100001294();
    }

    v3 = dword_100008030 + 5;
    dword_100008030 = v4;
    if (v4 != v3)
    {
      break;
    }

    free(v1);
    v4 = dword_100008030 + 5;
    v1 = malloc_type_malloc(96 * (dword_100008030 + 5), 0x1000040565EDBD2uLL);
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  qword_100008028 = v1;
  return result;
}

uint64_t sub_100000F8C()
{
  puts("Resources being tracked:");
  result = printf("\t%10s  %15s  %8s\n", "GROUP", "RESOURCE", "UNITS");
  v1 = dword_100008030;
  if (dword_100008030 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = qword_100008028;
    do
    {
      v5 = v4 + 96 * v3;
      if (*v5 && v3 < v1)
      {
        v6 = v3;
        v7 = v2;
        do
        {
          result = strcmp((v4 + v7 + 32), (v5 + 32));
          if (!result)
          {
            result = printf("\t%10s  %15s  %8s\n", (v4 + v7 + 32), (v4 + v7), (v4 + v7 + 64));
            *(qword_100008028 + v7) = 0;
            v4 = qword_100008028;
            v1 = dword_100008030;
          }

          v7 += 96;
          ++v6;
        }

        while (v1 > v6);
      }

      ++v3;
      v2 += 96;
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t sub_1000010BC(uint64_t a1, uint64_t a2)
{
  if (dword_100008018)
  {
    a1 = a2;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return printf("%10s  ");
  }

  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  v5 = "";
  if (v4 >= 0x186A1)
  {
    v5 = "K";
  }

  if (v4 >= 0x989681)
  {
    v5 = "M";
  }

  if (v4 >= 0x2540BE401)
  {
    v6 = "G";
  }

  else
  {
    v6 = v5;
  }

  strlen(v6);
  return printf("%*lld%s%c ");
}