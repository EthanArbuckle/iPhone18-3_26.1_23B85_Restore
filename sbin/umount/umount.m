void start(int a1, char **a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    while (1)
    {
      v6 = getopt(a1, a2, "AaFfh:t:v");
      if (v6 > 101)
      {
        break;
      }

      if (v6 <= 69)
      {
        if (v6 != 65)
        {
          if (v6 == -1 && (v7 = optind, (v4 != 0) == (optind == a1)))
          {
            if (qword_100008018 && !v5)
            {
              v5 = makevfslist("nfs");
            }

            v18 = 0;
            if ((dword_100008014 & 0x80000) != 0)
            {
              v17 = getpid();
              if (sysctlbyname("vfs.generic.noremotehang", 0, 0, &v17, 4uLL))
              {
                if (dword_100008020)
                {
                  warn("sysctl vfs.generic.noremotehang");
                }
              }
            }

            if (v4 == 2)
            {
              v8 = getmntinfo(&v18, 2);
              if (!v8)
              {
                warn("getmntinfo");
                v9 = 1;
                goto LABEL_33;
              }

              if (v8 >= 2)
              {
                v9 = 0;
                v12 = v8 + 1;
                v13 = 2168 * v8 - 2096;
                do
                {
                  if (!checkvfsname(v18 + v13, v5) && sub_100000998(&v18->f_bfree + v13, v5))
                  {
                    v9 = 1;
                  }

                  --v12;
                  v13 -= 2168;
                }

                while (v12 > 2);
                goto LABEL_33;
              }

              goto LABEL_48;
            }

            if (v4 != 1)
            {
              v14 = a2[v7];
              if (v14)
              {
                v9 = 0;
                v15 = &a2[v7 + 1];
                do
                {
                  if (sub_100000998(v14, v5))
                  {
                    v9 = 1;
                  }

                  v16 = *v15++;
                  v14 = v16;
                }

                while (v16);
LABEL_33:
                exit(v9);
              }

LABEL_48:
              v9 = 0;
              goto LABEL_33;
            }

            if (setfsent())
            {
              v9 = sub_100000FD4(v5);
              goto LABEL_33;
            }

            v10 = __stderrp;
            v11 = __error();
            strerror(*v11);
            fprintf(v10, "Can't get filesystem checklist: %s\n");
          }

          else
          {
LABEL_34:
            fprintf(__stderrp, "usage: %s\n       %s\n");
          }

          exit(1);
        }

LABEL_17:
        v4 = 2;
      }

      else if (v6 == 70)
      {
        dword_100008010 = 1;
      }

      else
      {
        if (v6 != 97)
        {
          goto LABEL_34;
        }

        v4 = 1;
      }
    }

    if (v6 > 115)
    {
      if (v6 == 118)
      {
        dword_100008020 = 1;
      }

      else
      {
        if (v6 != 116)
        {
          goto LABEL_34;
        }

        if (v5)
        {
          errx(1, "only one -t option may be specified.");
        }

        v5 = makevfslist(optarg);
      }
    }

    else
    {
      if (v6 != 102)
      {
        if (v6 != 104)
        {
          goto LABEL_34;
        }

        qword_100008018 = optarg;
        goto LABEL_17;
      }

      dword_100008014 = 0x80000;
    }
  }
}

uint64_t sub_100000998(char *a1, const char **a2)
{
  memset(&v45, 0, sizeof(v45));
  v44 = 0;
  __s1 = 0;
  v4 = sub_1000010E0(a1, 0, &__s1);
  v5 = a1;
  if (!v4 && (v5 = sub_1000010E0(a1, 1, &__s1), (v4 = a1) == 0) || !v5)
  {
    v5 = &v47;
    if (!realpath_DARWIN_EXTSN(a1, &v47))
    {
      v5 = a1;
      if (dword_100008020)
      {
        warn("realpath(%s)", &v47);
        v5 = a1;
      }
    }

    if (stat(v5, &v45) < 0)
    {
      if (dword_100008020)
      {
        warn("stat(%s)", v5);
      }

      v7 = sub_1000010E0(v5, 0, &__s1);
      if (v7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v6 = v45.st_mode & 0xF000;
      if (v6 != 0x4000)
      {
        if (v6 != 24576)
        {
          warnx("%s: not a directory or special device", v5);
          if (v5)
          {
LABEL_17:
            if (!strcmp(v5, a1))
            {
              goto LABEL_112;
            }
          }

LABEL_29:
          v11 = sub_1000010E0(a1, 0, &__s1);
          if (v11)
          {
            v4 = v11;
            goto LABEL_31;
          }

          v29 = sub_1000010E0(a1, 1, &__s1);
          if (v29)
          {
            v5 = v29;
            v4 = a1;
            goto LABEL_32;
          }

LABEL_112:
          warnx("%s: not currently mounted", a1);
          return 1;
        }

        v7 = sub_1000010E0(v5, 0, &__s1);
        if (!v7)
        {
          if (v5)
          {
            goto LABEL_17;
          }

          goto LABEL_29;
        }

LABEL_25:
        v4 = v7;
        goto LABEL_32;
      }
    }

    v10 = sub_1000010E0(v5, 1, &__s1);
    if (v10)
    {
      v4 = v5;
      v5 = v10;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if ((dword_100008014 & 0x80000) == 0)
  {
LABEL_31:
    v5 = a1;
    goto LABEL_32;
  }

  v42 = 0;
  memset(v46.__opaque, 0, sizeof(v46.__opaque));
  v46.__sig = 1018212795;
  memset(v47.__opaque, 0, sizeof(v47.__opaque));
  v47.__sig = 850045863;
  v38 = v4;
  v39 = 0;
  v40 = &v46;
  v41 = &v47;
  v37.tv_sec = time(0) + 10;
  v37.tv_nsec = 0;
  if (!pthread_create(&v42, 0, sub_10000129C, &v38) && !pthread_mutex_lock(&v47))
  {
    if (v39)
    {
      pthread_mutex_unlock(&v47);
    }

    else
    {
      do
      {
        v8 = pthread_cond_timedwait(&v46, &v47, &v37);
      }

      while (!(v39 | v8));
      v9 = v8;
      pthread_mutex_unlock(&v47);
      if (v9)
      {
        *__error() = v9;
        warn("pthread_cond_timeout failed; continuing with unmount");
      }
    }
  }

LABEL_32:
  if (checkvfsname(__s1, a2))
  {
    return 1;
  }

  if (qword_100008018)
  {
    v13 = strncmp("ftp://", v5, 6uLL);
    v14 = strcmp(__s1, "nfs");
    v15 = 0;
    if (!v13)
    {
      v16 = 0;
      goto LABEL_83;
    }

    v16 = 0;
    if (v14)
    {
      goto LABEL_83;
    }

    if (*v5 == 91)
    {
      v17 = 0;
      v18 = 0;
      v19 = v5 + 1;
      for (i = v5 + 1; ; ++i)
      {
        v21 = (*i & 0x80000000) == 0 && _DefaultRuneLocale.__runetype[*i] & 0x10000;
        v22 = *i;
        if (v22 != 58 && !v21)
        {
          break;
        }

        if (v22 == 58)
        {
          if (!v17)
          {
            v17 = i;
          }

          if (!v18)
          {
            if (i[1] == 47)
            {
              v18 = i;
            }

            else
            {
              v18 = 0;
            }
          }
        }
      }

      if (v22 == 93 && i[1] == 58)
      {
        memset(&v46, 0, 28);
        v24 = *i;
        *i = 0;
        v25 = inet_pton(30, v5 + 1, &v46);
        *i = v24;
        if (v25)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      i = v5;
    }

    v26 = *i;
    if (*i)
    {
      while (!v17 || !v18)
      {
        if (v26 == 58)
        {
          if (!v17)
          {
            v17 = i;
          }

          if (!v18)
          {
            if (i[1] == 47)
            {
              v18 = i;
            }

            else
            {
              v18 = 0;
            }
          }
        }

        v27 = *++i;
        v26 = v27;
        if (!v27)
        {
          goto LABEL_70;
        }
      }

      i = v18;
    }

    else
    {
LABEL_70:
      if (v17)
      {
        v28 = v17;
      }

      else
      {
        v28 = i;
      }

      if (v18)
      {
        i = v18;
      }

      else
      {
        i = v28;
      }

      if (!(v18 | v17))
      {
        v15 = 0;
        v16 = 0;
        goto LABEL_83;
      }
    }

    v19 = v5;
LABEL_82:
    v30 = *i;
    *i = 0;
    v15 = getipnodebyname(v19, 2, 0, &v44);
    v16 = getipnodebyname(v19, 30, 0, &v44);
    *i = v30;
LABEL_83:
    if (qword_100008018)
    {
      v31 = (v15 | v16) == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_88;
    }

    if (sub_10000130C(v15))
    {
      v33 = 1;
      if (!v15)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v33 = sub_10000130C(v16) != 0;
      if (!v15)
      {
LABEL_96:
        if (v16)
        {
          freehostent(v16);
        }

        if (!v33)
        {
          return 1;
        }

        goto LABEL_88;
      }
    }

    freehostent(v15);
    goto LABEL_96;
  }

LABEL_88:
  if (dword_100008020)
  {
    printf("%s unmount from %s\n", v5, v4);
  }

  if (dword_100008010 || (unmount(v4, dword_100008014) & 0x80000000) == 0)
  {
    return 0;
  }

  if (getuid() || *__error() != 70 && *__error() != 2 && (dword_100008014 & 0x80000) == 0)
  {
    if (*__error() == 16)
    {
      v34 = __stderrp;
      v35 = __error();
      v36 = strerror(*v35);
      fprintf(v34, "umount(%s): %s -- try 'diskutil unmount'\n", v4, v36);
      return 1;
    }

LABEL_111:
    warn("unmount(%s)", v4);
    return 1;
  }

  if (dword_100008020)
  {
    warn("unmount(%s)", v4);
  }

  if ((sub_1000013DC(v4, dword_100008014) & 0x80000000) != 0)
  {
    goto LABEL_111;
  }

  return 0;
}

BOOL sub_100000FD4(const char **a1)
{
  v2 = getfsent();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  while (1)
  {
    fs_file = v3->fs_file;
    if (*fs_file != 47 || fs_file[1])
    {
      fs_type = v3->fs_type;
      if (*fs_type == 114 && (fs_type[1] == 119 && !fs_type[2] || fs_type[1] == 111 && !fs_type[2] || fs_type[1] == 113 && !fs_type[2]))
      {
        break;
      }
    }

    v3 = getfsent();
    if (!v3)
    {
      return 0;
    }
  }

  v7 = strlen(fs_file);
  v8 = malloc_type_malloc(v7 + 1, 0xF151AEE3uLL);
  if (!v8)
  {
    sub_1000017AC();
  }

  v9 = v8;
  strlcpy(v8, v3->fs_file, v7 + 1);
  v10 = sub_100000FD4(a1);
  v6 = (sub_100000998(v9, a1) | v10) != 0;
  free(v9);
  return v6;
}

uint64_t sub_1000010E0(char *__s2, int a2, void *a3)
{
  if (qword_100008000)
  {
    v6 = dword_100008008;
  }

  else
  {
    v6 = getmntinfo(&qword_100008000, 2);
    dword_100008008 = v6;
    if (!v6)
    {
      warn("getmntinfo");
      return 0;
    }
  }

  if (v6 < 1)
  {
    return 0;
  }

  v7 = qword_100008000;
  v8 = v6 + 1;
  v9 = 2168 * v6 - 2096;
  while (a2 != 1)
  {
    if (!a2)
    {
      if (!strcmp((v7 + v9 + 1040), __s2) || !strncmp(__s2, "/dev/", 5uLL) && (v10 = strstr((v7 + v9 + 1040), "://")) != 0 && (v11 = v10, strlen(v10) >= 4) && (v12 = v11 + 3, (v13 = strchr(v12, 47)) != 0) && (v14 = v13, v15 = strlen(__s2 + 5), v15 == v14 - v12) && !strncmp(v12, __s2 + 5, v15))
      {
        if (a3)
        {
          *a3 = v7 + v9;
          v7 = qword_100008000;
        }

        return v7 + v9 + 16;
      }
    }

LABEL_17:
    --v8;
    v9 -= 2168;
    if (v8 <= 1)
    {
      return 0;
    }
  }

  if (strcmp((v7 + v9 + 16), __s2))
  {
    goto LABEL_17;
  }

  if (a3)
  {
    *a3 = v7 + v9;
    v7 = qword_100008000;
  }

  return v7 + v9 + 1040;
}

uint64_t sub_10000129C(uint64_t a1)
{
  v4 = 2;
  fsctl(*a1, 0x80044101uLL, &v4, 0);
  v2 = *(a1 + 24);
  pthread_mutex_lock(v2);
  *(a1 + 8) = 1;
  pthread_cond_signal(*(a1 + 16));
  pthread_mutex_unlock(v2);
  return 0;
}

uint64_t sub_10000130C(uint64_t a1)
{
  v1 = qword_100008018;
  if (qword_100008018)
  {
    if (!a1)
    {
      return 0;
    }

    v3 = *a1;
    if (strcasecmp(qword_100008018, *a1))
    {
      v4 = strchr(v3, 46);
      if (!v4 || (*v4 = 0, v1 = qword_100008018, strcasecmp(qword_100008018, *a1)))
      {
        v5 = *(a1 + 8);
        v6 = *v5;
        if (*v5)
        {
          v7 = v5 + 1;
          while (strcasecmp(v1, v6))
          {
            v8 = strchr(v6, 46);
            if (v8)
            {
              *v8 = 0;
              v1 = qword_100008018;
              if (!strcasecmp(qword_100008018, *(v7 - 1)))
              {
                break;
              }
            }

            v9 = *v7++;
            v6 = v9;
            if (!v9)
            {
              return 0;
            }
          }

          return 1;
        }

        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1000013DC(char *a1, int a2)
{
  v5 = a2;
  v4 = 0;
  if ((sub_10000145C(a1, &v4) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (dword_100008020)
  {
    printf("attempting to unmount %s by fsid\n", a1);
  }

  return sub_100001514(65538, &v4, 0, 0, &v5, 4);
}

uint64_t sub_10000145C(char *__s2, void *a2)
{
  v4 = qword_100008000;
  if (qword_100008000)
  {
    v5 = dword_100008008;
  }

  else
  {
    v5 = getmntinfo(&qword_100008000, 2);
    dword_100008008 = v5;
    if (!v5)
    {
      warn("getmntinfo");
      return 0xFFFFFFFFLL;
    }

    v4 = qword_100008000;
  }

  v6 = v5 + 1;
  v7 = (v4 + 2168 * v5 - 2080);
  while (--v6 >= 1)
  {
    v8 = v7 - 2168;
    v9 = strcmp(v7, __s2);
    v7 = v8;
    if (!v9)
    {
      result = 0;
      *a2 = *(v8 + 266);
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100001514(int a1, void *a2, void *a3, size_t *a4, uint64_t a5, uint64_t a6)
{
  v20 = 14;
  if (sysctlnametomib("vfs.generic.ctlbyfsid", v21, &v20) == -1)
  {
    warn("sysctlnametomib(%s)", "vfs.generic.ctlbyfsid");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v12 = v20;
    v21[v20] = a1;
    *&v15[4] = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    v14 = 1;
    *v15 = *a2;
    *&v15[12] = a5;
    *&v16 = a6;
    return sysctl(v21, v12 + 1, a3, a4, &v14, 0x50uLL);
  }
}

uint64_t checkvfsname(char *__s1, const char **a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = *a2;
    if (*v2)
    {
      v5 = v2 + 1;
      while (strcmp(__s1, v3))
      {
        v6 = *v5++;
        v3 = v6;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v2) = byte_10000800C;
    }

    else
    {
LABEL_6:
      LOBYTE(v2) = byte_10000800C ^ 1;
    }
  }

  return v2 & 1;
}

void *makevfslist(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if (strchr(a1, 47))
  {
    sub_100001784();
  }

  if (*v1 == 110 && v1[1] == 111)
  {
    v1 += 2;
    byte_10000800C = 1;
  }

  v2 = 0;
  for (i = v1; *i == 44; ++i)
  {
    ++v2;
LABEL_11:
    ;
  }

  if (*i)
  {
    goto LABEL_11;
  }

  v4 = malloc_type_malloc(8 * v2 + 16, 0x10040436913F5uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = v1;
    v6 = strchr(v1, 44);
    if (v6)
    {
      v7 = 1;
      do
      {
        *v6 = 0;
        v8 = v6 + 1;
        v5[v7++] = v8;
        v6 = strchr(v8, 44);
      }

      while (v6);
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    v5[v9] = 0;
  }

  else
  {
    warn(0);
  }

  return v5;
}