uint64_t start(int a1, char *const *a2)
{
  memset(&v35, 0, sizeof(v35));
  v4 = getopt(a1, a2, "io:en:s:h") << 24;
  if (v4 == -16777216)
  {
    v31 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_38:
    if (optind != a1 - 1 || (v5 & v6 & 1) != 0)
    {
LABEL_40:
      puts("usage: mount_tmpfs [-o options] [-i | -e] [-n max_nodes] [-s max_mem_size] <directory>");
      return 64;
    }

    v14 = a2[optind];
    if (getvfsbyname("tmpfs", &v35))
    {
      LODWORD(__endptr[0]) = 0;
      v15 = fork();
      if (v15 == -1)
      {
        goto LABEL_46;
      }

      if (!v15)
      {
        execl("/sbin/kextload", "/sbin/kextload", "/System/Library/Extensions/tmpfs.kext", 0);
        v30 = __error();
        exit(*v30);
      }

      if (wait4(v15, __endptr, 0, 0) != v15 || (__endptr[0] & 0x7F) != 0)
      {
LABEL_46:
        v16 = *__error();
        if (v16)
        {
LABEL_47:
          fprintf(__stderrp, "could not load kernel extension, return code %d\n", v16);
          return v16;
        }
      }

      else
      {
        v16 = BYTE1(__endptr[0]);
        if (BYTE1(__endptr[0]))
        {
          goto LABEL_47;
        }
      }

      if (getvfsbyname("tmpfs", &v35))
      {
        sub_100000A48();
      }
    }

    v34 = 0;
    v21 = vm_kernel_page_size;
    v33 = 8;
    if (sysctlbyname("hw.memsize", &v34, &v33, 0, 0))
    {
      v22 = 1000000 * v21;
      v23 = __stderrp;
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      fprintf(v23, "Could not get the hw memory size, errno = %d (%s)\n", v24, v26);
    }

    else
    {
      v22 = v34 >> 1;
    }

    v27 = vm_kernel_page_size;
    if (v7)
    {
      v28 = (v7 + vm_kernel_page_size - 1) / vm_kernel_page_size * vm_kernel_page_size;
      if (v28 <= v22)
      {
        v22 = (v7 + vm_kernel_page_size - 1) / vm_kernel_page_size * vm_kernel_page_size;
      }

      else
      {
        fprintf(__stderrp, "Desired memsize %lld too large - defaulting to %lld bytes\n", v28, v22);
        v27 = vm_kernel_page_size;
      }
    }

    v29 = 100000;
    if (v8)
    {
      v29 = v8;
    }

    __endptr[0] = (v22 / v27);
    __endptr[1] = v29;
    __endptr[2] = ((v5 ^ 1) & 1);
    if (mount("tmpfs", v14, v31, __endptr))
    {
      sub_100000A74();
    }

    return 0;
  }

  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v31 = 0;
  while (1)
  {
    v9 = v4 >> 24;
    if (v9 <= 109)
    {
      break;
    }

    if (v9 != 110)
    {
      if (v9 != 115)
      {
        if (v9 != 111)
        {
          goto LABEL_40;
        }

        LODWORD(__endptr[0]) = 0;
        LODWORD(v34) = 0;
        getmnt_silent = 0;
        if (!getmntopts())
        {
          err(1, "error parsing mount options");
        }

        v31 = __endptr[0];
        freemntopts();
        goto LABEL_37;
      }

      v10 = optarg;
      __endptr[0] = 0;
      v11 = strtoll(optarg, __endptr, 10);
      v7 = v11;
      v12 = __endptr[0];
      v13 = *__endptr[0];
      if (v13 > 0x66)
      {
        if (*__endptr[0] <= 0x6Cu)
        {
          if (v13 != 103)
          {
            if (v13 == 107)
            {
              goto LABEL_24;
            }

            goto LABEL_34;
          }

LABEL_31:
          v7 = v11 << 30;
          goto LABEL_33;
        }

        if (v13 != 109)
        {
          if (v13 != 116)
          {
            goto LABEL_34;
          }

LABEL_30:
          v7 = v11 << 40;
          goto LABEL_33;
        }
      }

      else
      {
        if (*__endptr[0] <= 0x4Cu)
        {
          if (v13 != 71)
          {
            if (v13 != 75)
            {
              goto LABEL_34;
            }

LABEL_24:
            v7 = v11 << 10;
LABEL_33:
            v12 = __endptr[0] + 1;
LABEL_34:
            if (v12 == v10 || *v12 || v7 <= 0)
            {
              v17 = __stderrp;
              v18 = optarg;
              v19 = 115;
              goto LABEL_51;
            }

            goto LABEL_37;
          }

          goto LABEL_31;
        }

        if (v13 != 77)
        {
          if (v13 != 84)
          {
            goto LABEL_34;
          }

          goto LABEL_30;
        }
      }

      v7 = v11 << 20;
      goto LABEL_33;
    }

    v8 = strtoll(optarg, 0, 10);
    if (v8 <= 0)
    {
      v17 = __stderrp;
      v18 = optarg;
      v19 = 110;
LABEL_51:
      fprintf(v17, "invalid value for '-%c': %s\n", v19, v18);
      return 64;
    }

LABEL_37:
    v4 = getopt(a1, a2, "io:en:s:h") << 24;
    if (v4 == -16777216)
    {
      goto LABEL_38;
    }
  }

  if (v9 == 101)
  {
    v5 = 1;
    goto LABEL_37;
  }

  if (v9 == 105)
  {
    v6 = 1;
    goto LABEL_37;
  }

  if (v9 != 104)
  {
    goto LABEL_40;
  }

  puts("usage: mount_tmpfs [-o options] [-i | -e] [-n max_nodes] [-s max_mem_size] <directory>");
  return 0;
}