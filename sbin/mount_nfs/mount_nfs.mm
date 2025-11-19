uint64_t sub_100000810(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = v3 + v2;
  if (__CFADD__(v3, v2))
  {
    return 12;
  }

  v5 = malloc_type_realloc(*a1, v3 + v2, 0x20F3AEF3uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  result = 0;
  *a1 = v6;
  *(a1 + 8) = v4;
  v8 = *(a1 + 40);
  *(a1 + 24) = &v6[v2];
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_100000898(uint64_t a1, char *__src, unint64_t a3, int a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a3;
  v8 = *(a1 + 32);
  while (1)
  {
    if (!v8)
    {
      result = sub_100000810(a1);
      if (result)
      {
        return result;
      }

      v8 = *(a1 + 32);
      if (!v8)
      {
        break;
      }
    }

    if (v8 >= v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = v8;
    }

    if (v5)
    {
      if (v10 >= v5)
      {
        v10 = v5;
      }

      memmove(*(a1 + 24), __src, v10);
      v8 = *(a1 + 32) - v10;
      *(a1 + 24) += v10;
      *(a1 + 32) = v8;
      __src += v10;
      v5 -= v10;
    }

    else
    {
      bzero(*(a1 + 24), v10);
      v8 = *(a1 + 32) - v10;
      *(a1 + 24) += v10;
      *(a1 + 32) = v8;
    }

    v4 -= v10;
    if (!v4)
    {
      return 0;
    }
  }

  return 12;
}

void sub_100000970(int a1, char *a2, ...)
{
  va_start(va, a2);
  if ((dword_100010940 & 0x400000) != 0)
  {
    vsyslog(3, a2, va);
  }

  verrx(a1, a2, va);
}

void *sub_1000009C4()
{
  v0 = malloc_type_malloc(0x330uLL, 0x1050040AE3C178BuLL);
  qword_100010920 = v0;
  if (!v0)
  {
    sub_100000970(12, "memory allocation failed");
  }

  v1 = v0;
  result = memmove(v0, &off_1000105C8, 0x330uLL);
  v3 = &dword_100000008;
  do
  {
    *&v1[v3] = *(&off_1000105C8 + v3) == 0;
    v3 += 24;
  }

  while (v3 != 824);
  return result;
}

uint64_t sub_1000017D4(const char *a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v3 = fopen(a1, "r");
  if (v3)
  {
    v4 = v3;
    v5 = fparseln(v3, &v25, &v24, 0, 0);
    if (v5)
    {
      v6 = v5;
      do
      {
        if (v25)
        {
          for (i = &v6[v25 - 1]; i > v6; --i)
          {
            v8 = *i;
            if (v8 < 0)
            {
              if (!__maskrune(v8, 0x4000uLL))
              {
                break;
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v8] & 0x4000) == 0)
            {
              break;
            }

            *i = 0;
          }

          v9 = v6 - 1;
          do
          {
            v10 = v9[1];
            if (v10 < 0)
            {
              v11 = __maskrune(v10, 0x4000uLL);
            }

            else
            {
              v11 = _DefaultRuneLocale.__runetype[v10] & 0x4000;
            }

            ++v9;
          }

          while (v11);
          v12 = strchr(v6, 61);
          v13 = v12;
          if (v12)
          {
            v14 = v12 - 1;
            do
            {
              v14[1] = 0;
              if (v14 <= v6)
              {
                break;
              }

              v15 = *v14;
              v16 = v15 < 0 ? __maskrune(v15, 0x4000uLL) : _DefaultRuneLocale.__runetype[v15] & 0x4000;
              --v14;
            }

            while (v16);
            v17 = v13;
            do
            {
              while (1)
              {
                v19 = *++v17;
                v18 = v19;
                if (v19 < 0)
                {
                  break;
                }

                if ((_DefaultRuneLocale.__runetype[v18] & 0x4000) == 0)
                {
                  goto LABEL_29;
                }
              }
            }

            while (__maskrune(v18, 0x4000uLL));
LABEL_29:
            if (!strncmp(v9, "nfs.client.", 0xBuLL))
            {
              v21 = strtol(v17, 0, 0);
              v20 = v17;
LABEL_36:
              if (dword_100010938)
              {
                printf("%4ld %s=%s (%ld)\n", v24, v9, v17, v21);
              }

              if (!strcmp(v9, "nfs.client.access_cache_timeout"))
              {
                if (v13 && v21)
                {
                  *a2 = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.access_for_getattr"))
              {
                *(a2 + 4) = v21;
              }

              else if (!strcmp(v9, "nfs.client.allow_async"))
              {
                *(a2 + 8) = v21;
              }

              else if (!strcmp(v9, "nfs.client.callback_port"))
              {
                if (v13 && v21)
                {
                  *(a2 + 12) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.initialdowndelay"))
              {
                *(a2 + 16) = v21;
              }

              else if (!strcmp(v9, "nfs.client.iosize"))
              {
                if (v13 && v21)
                {
                  *(a2 + 20) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.mount.options"))
              {
                sub_100001CD8(v20);
              }

              else if (!strcmp(v9, "nfs.client.nextdowndelay"))
              {
                *(a2 + 24) = v21;
              }

              else if (!strcmp(v9, "nfs.client.nfsiod_thread_max"))
              {
                if (v13)
                {
                  *(a2 + 28) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.statfs_rate_limit"))
              {
                if (v13 && v21)
                {
                  *(a2 + 32) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.is_mobile"))
              {
                *(a2 + 36) = v21;
              }

              else if (!strcmp(v9, "nfs.client.squishy_flags"))
              {
                if (v13 && v21)
                {
                  *(a2 + 40) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.root_steals_gss_context"))
              {
                if (v13 && v21)
                {
                  *(a2 + 44) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.default_nfs4domain"))
              {
                if (v13)
                {
                  *(a2 + 56) = strndup(v20, 0x400uLL);
                }
              }

              else if (!strcmp(v9, "nfs.client.mount_timeout"))
              {
                if (v13 && v21)
                {
                  *(a2 + 48) = v21;
                }
              }

              else if (!strcmp(v9, "nfs.client.mount_quick_timeout"))
              {
                if (v13 && v21)
                {
                  *(a2 + 52) = v21;
                }
              }

              else if (dword_100010938)
              {
                printf("ignoring unknown config value: %4ld %s=%s\n");
              }

              goto LABEL_90;
            }
          }

          else
          {
            v20 = 0;
            if (!strncmp(v9, "nfs.client.", 0xBuLL))
            {
              v17 = &unk_1000084D7;
              v21 = 1;
              goto LABEL_36;
            }
          }

          if (dword_100010938 >= 2)
          {
            printf("%4ld %s=%s\n");
          }
        }

LABEL_90:
        free(v6);
        v6 = fparseln(v4, &v25, &v24, 0, 0);
      }

      while (v6);
    }

    fclose(v4);
    return 0;
  }

  else
  {
    if (*__error() != 2)
    {
      warn("%s", a1);
    }

    return 1;
  }
}

void sub_100001CD8(const char *a1)
{
  getmnt_silent = 1;
  if (!getmntopts())
  {
    goto LABEL_13;
  }

  if (dword_100010940)
  {
    LODWORD(qword_100010944) = qword_100010944 | 0x400000;
  }

  freemntopts();
  if (!getmntopts())
  {
    goto LABEL_13;
  }

  if (dword_100010938 >= 3)
  {
    printf("altflags=0x%x\n", 0);
  }

  freemntopts();
  if (!getmntopts())
  {
LABEL_13:
    sub_100000970(22, "getmntops failed: %s", a1);
  }

  if (dword_100010938 >= 3)
  {
    printf("negative altflags=0x%x\n", 0);
  }

  freemntopts();
  if (qword_100010A0C)
  {
    LODWORD(qword_100010944) = qword_100010944 | 0x4000;
  }

  sub_1000069AC(a1);
}

void sub_1000037DC()
{
  if (xmmword_100010AE0)
  {
    v1 = 0;
  }

  else
  {
    v1 = qword_100010AD8 == 0;
  }

  if (v1 && *(&xmmword_100010AE0 + 1) == 0)
  {
    return;
  }

  if (!qword_1000109DC)
  {
    sub_100007230();
    v4 = "no sec flavors specified for principal or realm, assuming kerberos";

    goto LABEL_15;
  }

  if (qword_1000109DC < 1)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = 0;
    v4 = "principal or realm specified but no kerberos is enabled";
    while ((dword_100010940[v3 + 40] - 390003) >= 3)
    {
      if (qword_1000109DC == ++v3)
      {

        goto LABEL_15;
      }
    }
  }

  if (v3 == qword_1000109DC)
  {
    v4 = "principal or realm specified but no kerberos is enabled";

LABEL_15:
    warnx(v4);
  }
}

uint64_t sub_1000038B4()
{
  if (dword_100010000 != -1)
  {
    *__big = dword_100010000;
    sysctlbyname("vfs.generic.nfs.client.access_cache_timeout", 0, 0, __big, 4uLL);
  }

  if (dword_100010004 != -1)
  {
    *__big = dword_100010004;
    sysctlbyname("vfs.generic.nfs.client.access_for_getattr", 0, 0, __big, 4uLL);
  }

  if (dword_100010008 != -1)
  {
    *__big = dword_100010008;
    sysctlbyname("vfs.generic.nfs.client.allow_async", 0, 0, __big, 4uLL);
  }

  if (dword_10001000C != -1)
  {
    *__big = dword_10001000C;
    sysctlbyname("vfs.generic.nfs.client.callback_port", 0, 0, __big, 4uLL);
  }

  if (dword_100010010 != -1)
  {
    *__big = dword_100010010;
    sysctlbyname("vfs.generic.nfs.client.initialdowndelay", 0, 0, __big, 4uLL);
  }

  if (dword_100010014 != -1)
  {
    *__big = dword_100010014;
    sysctlbyname("vfs.generic.nfs.client.iosize", 0, 0, __big, 4uLL);
  }

  if (dword_100010018 != -1)
  {
    *__big = dword_100010018;
    sysctlbyname("vfs.generic.nfs.client.nextdowndelay", 0, 0, __big, 4uLL);
  }

  if (dword_10001001C != -1)
  {
    *__big = dword_10001001C;
    sysctlbyname("vfs.generic.nfs.client.nfsiod_thread_max", 0, 0, __big, 4uLL);
  }

  if (dword_100010020 != -1)
  {
    *__big = dword_100010020;
    sysctlbyname("vfs.generic.nfs.client.statfs_rate_limit", 0, 0, __big, 4uLL);
  }

  v0 = dword_100010024;
  if (dword_100010024 == -1)
  {
    __len = 128;
    v1 = IOPSCopyPowerSourcesInfo();
    if (!v1)
    {
      goto LABEL_36;
    }

    v2 = v1;
    v3 = IOPSCopyPowerSourcesList(v1);
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
          if (ValueAtIndex)
          {
            v10 = IOPSGetPowerSourceDescription(v2, ValueAtIndex);
            Value = CFDictionaryGetValue(v10, @"Is Present");
            if (Value)
            {
              v12 = Value;
              v13 = CFGetTypeID(Value);
              if (v13 == CFBooleanGetTypeID())
              {
                if (CFBooleanGetValue(v12))
                {
                  v14 = CFDictionaryGetValue(v10, @"Type");
                  if (v14)
                  {
                    v15 = v14;
                    v16 = CFGetTypeID(v14);
                    if (v16 == CFStringGetTypeID() && CFStringCompare(v15, @"InternalBattery", 0) == kCFCompareEqualTo)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          v8 = v6 > ++v7;
        }

        while (v6 != v7);
        CFRelease(v4);
        CFRelease(v2);
        if (v8)
        {
          v0 = 1;
LABEL_39:
          dword_100010024 = v0;
          goto LABEL_40;
        }

LABEL_36:
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        *__big = 0u;
        v23 = 0u;
        v17 = sysctlbyname("hw.model", __big, &__len, 0, 0);
        v0 = 0;
        if ((v17 & 0x80000000) == 0 && __len)
        {
          v0 = strnstr(__big, "Book", __len) != 0;
        }

        goto LABEL_39;
      }

      CFRelease(v4);
    }

    CFRelease(v2);
    goto LABEL_36;
  }

LABEL_40:
  *__big = v0;
  result = sysctlbyname("vfs.generic.nfs.client.is_mobile", 0, 0, __big, 4uLL);
  if (dword_100010028 != -1)
  {
    *__big = dword_100010028;
    result = sysctlbyname("vfs.generic.nfs.client.squishy_flags", 0, 0, __big, 4uLL);
  }

  if (dword_10001002C != -1)
  {
    *__big = dword_10001002C;
    result = sysctlbyname("vfs.generic.nfs.client.root_steals_gss_context", 0, 0, __big, 4uLL);
  }

  if (dword_100010030 != -1)
  {
    *__big = dword_100010030;
    result = sysctlbyname("vfs.generic.nfs.client.mount_timeout", 0, 0, __big, 4uLL);
  }

  if (dword_100010034 != -1)
  {
    *__big = dword_100010034;
    result = sysctlbyname("vfs.generic.nfs.client.mount_quick_timeout", 0, 0, __big, 4uLL);
  }

  v19 = qword_100010038;
  if (qword_100010038)
  {
    v20 = strnlen(qword_100010038, 0x400uLL);
    return sysctlbyname("vfs.generic.nfs.client.default_nfs4domain", 0, 0, v19, v20);
  }

  return result;
}

uint64_t sub_100003D64(const char *a1, void *a2)
{
  *a2 = 0;
  v3 = strdup(a1);
  if (!v3)
  {
    return 12;
  }

  if (!*v3)
  {
    v31 = 22;
    goto LABEL_97;
  }

  v36 = a2;
  v4 = 0;
  v5 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v38 = v3;
  v6 = v3;
  while (2)
  {
    v37 = v4;
    v7 = malloc_type_malloc(0x20uLL, 0x10300405ED1140EuLL);
    if (!v7)
    {
      v31 = 12;
      if (v5)
      {
        goto LABEL_93;
      }

      goto LABEL_96;
    }

    v4 = v7;
    *v7 = 0u;
    v7[1] = 0u;
    if (!*v6)
    {
      goto LABEL_86;
    }

    v8 = 0;
    v39 = v7 + 1;
    while (1)
    {
      v9 = malloc_type_malloc(0x18uLL, 0x30040275E93A9uLL);
      if (!v9)
      {
        goto LABEL_87;
      }

      v10 = v9;
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      if (!strncmp(v6, "ftp://", 6uLL))
      {
        v12 = 0;
        i = v6;
        v6 = "localhost";
        goto LABEL_39;
      }

      v11 = *v6;
      if (v11 != 91)
      {
        v12 = 0;
        v13 = 0;
        i = v6;
        if (!*v6)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

      v12 = 0;
      v13 = 0;
      for (i = (v6 + 2); ; ++i)
      {
        v15 = (*(i - 1) & 0x80000000) == 0 && _DefaultRuneLocale.__runetype[*(i - 1)] & 0x10000;
        v11 = *(i - 1);
        if (v11 != 58 && !v15)
        {
          break;
        }

        if (v11 == 58)
        {
          if (!v12)
          {
            v12 = (i - 1);
          }

          if (!v13)
          {
            if (*i == 47)
            {
              v13 = (i - 1);
            }

            else
            {
              v13 = 0;
            }
          }
        }
      }

      v20 = (i - 1);
      if (v11 != 93)
      {
        --i;
        goto LABEL_51;
      }

      v21 = *i;
      if (v21 == 44 || v21 == 58)
      {
        *v20 = 0;
        v22 = inet_pton(30, v6 + 1, v40);
        *v20 = 93;
        if (v22)
        {
          goto LABEL_39;
        }

        v11 = *i;
LABEL_51:
        if (!v11)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

      v11 = 93;
      --i;
      if (v12)
      {
LABEL_29:
        if (v13)
        {
          goto LABEL_39;
        }
      }

      while (1)
      {
        if (v11 == 58)
        {
          if (!v12)
          {
            v12 = i;
          }

          if (!v13 && i[1] == 47)
          {
            goto LABEL_39;
          }
        }

        else if (v11 == 44)
        {
          goto LABEL_39;
        }

        v17 = *++i;
        v11 = v17;
        if (!v17)
        {
          break;
        }

LABEL_28:
        if (v12)
        {
          goto LABEL_29;
        }
      }

LABEL_38:
      i = v12;
      if (!v12)
      {
        v31 = 22;
        goto LABEL_91;
      }

LABEL_39:
      v18 = *i;
      *i = 0;
      v10[1] = strdup(v6);
      *i = v18;
      if (!v10[1])
      {
        v31 = 12;
LABEL_91:
        free(v4);
        goto LABEL_92;
      }

      v19 = v39;
      if (v8)
      {
        v19 = v8;
      }

      *v19 = v10;
      ++*(v4 + 6);
      if (*i != 44)
      {
        break;
      }

      v6 = i + 1;
      v8 = v10;
      if (!i[1])
      {
        goto LABEL_86;
      }
    }

    if (!strncmp(i, "ftp://", 6uLL))
    {
      v23 = i;
    }

    else
    {
      v23 = i + 1;
    }

    if (!*v23)
    {
      if (!v12)
      {
LABEL_86:
        v31 = 22;
        goto LABEL_88;
      }

      v23 = (v12 + 1);
    }

    for (j = v23; ; ++j)
    {
      v25 = *j;
      if (!*j)
      {
        break;
      }

      if (v25 == 44)
      {
        v26 = j;
        do
        {
          v28 = *++v26;
          v27 = v28;
        }

        while (v28 != 58 && v27 != 0);
        if (!v27)
        {
          j = v26;
        }

        v25 = *j;
        break;
      }
    }

    *j = 0;
    *(v4 + 2) = strdup(v23);
    *j = v25;
    if (*(v4 + 2))
    {
      v30 = v4;
      if (v37)
      {
        *v37 = v4;
        v25 = *j;
        v30 = v5;
      }

      if (v25 == 44)
      {
        v6 = j + 1;
      }

      else
      {
        v6 = j;
      }

      v5 = v30;
      if (!*v6)
      {
        if (!v30)
        {
          v31 = 22;
          goto LABEL_96;
        }

        free(v38);
        v31 = 0;
        *v36 = v30;
        return v31;
      }

      continue;
    }

    break;
  }

LABEL_87:
  v31 = 12;
LABEL_88:
  v10 = v4;
LABEL_92:
  free(v10);
  if (v5)
  {
    do
    {
LABEL_93:
      v32 = v5[1];
      if (v32)
      {
        do
        {
          v33 = *v32;
          free(v32);
          v5[1] = v33;
          v32 = v33;
        }

        while (v33);
      }

      v34 = *v5;
      free(v5);
      v5 = v34;
    }

    while (v34);
  }

LABEL_96:
  v3 = v38;
LABEL_97:
  free(v3);
  return v31;
}

uint64_t sub_1000041BC(uint64_t result, _DWORD *a2)
{
  *a2 = 0;
  if (result)
  {
    v3 = result;
    do
    {
      for (i = v3[1]; i; i = *i)
      {
        result = sub_100006B04(i);
        if (!result)
        {
          if (i[2])
          {
            ++*a2;
          }
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10000422C(uint64_t **a1, const char *a2)
{
  printf("mount %s on %s\n", qword_100010928, a2);
  v3 = dword_100010940[0];
  printf("mount flags: 0x%x", dword_100010940[0]);
  if (v3)
  {
    v4 = &off_10000C298;
    do
    {
      v5 = *(v4 - 2);
      if (!v5)
      {
        break;
      }

      if ((v5 & v3) != 0)
      {
        printf(", %s", *v4);
        v3 &= ~v5;
      }

      v4 += 2;
    }

    while (v3);
  }

  putchar(10);
  if (SHIDWORD(qword_100010A0C) > 1)
  {
    v6 = HIDWORD(qword_100010A0C) == 2 || HIDWORD(qword_100010A0C) == 30;
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else if (HIDWORD(qword_100010A0C))
  {
    if (HIDWORD(qword_100010A0C) == 1)
    {
      printf("socket: type:%s");
    }

    goto LABEL_23;
  }

  v7 = "any";
  if (qword_100010A0C == 2)
  {
    v7 = "udp";
  }

  if (qword_100010A0C == 1)
  {
    v8 = "tcp";
  }

  else
  {
    v8 = v7;
  }

  printf("socket: type:%s", v8);
  if (HIDWORD(qword_100010A0C))
  {
    printf("%s%s");
  }

LABEL_23:
  v9 = qword_100010944;
  if ((qword_100010944 & 0x8000) != 0)
  {
    printf(",port=%d", dword_100010A14);
    v9 = qword_100010944;
  }

  if ((v9 & 0x10000) != 0)
  {
    printf(",mountport=%d", dword_100010A18);
  }

  if ((qword_10001094C & 0x10000) != 0 || dword_100010938 >= 2)
  {
    if ((qword_10001094C & 0x1000000000000) != 0)
    {
      v10 = &unk_1000084D7;
    }

    else
    {
      v10 = "no";
    }

    printf(",%smntudp", v10);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  *v79 = 0u;
  v80 = 0u;
  putchar(10);
  puts("file system locations:");
  if (a1)
  {
    while (1)
    {
      puts(a1[2]);
      v11 = a1[1];
      if (v11)
      {
        break;
      }

LABEL_46:
      a1 = *a1;
      if (!a1)
      {
        goto LABEL_47;
      }
    }

    while (1)
    {
      printf("  %s\n", v11[1]);
      v12 = v11[2];
      if (v12)
      {
        break;
      }

LABEL_45:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_46;
      }
    }

    while (1)
    {
      v13 = *(v12 + 1);
      if (v13 == 1)
      {
        v15 = v12[4] + 2;
        printf("    local transport %s\n");
      }

      else
      {
        if (v13 == 2)
        {
          v14 = 4;
        }

        else
        {
          if (v13 != 30)
          {
            puts("    ??? ???");
            goto LABEL_44;
          }

          v14 = 8;
        }

        inet_ntop(v13, (v12[4] + v14), v79, 0x80u);
        *(v12 + 1);
        printf("    %s %s\n");
      }

LABEL_44:
      v12 = v12[5];
      if (!v12)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_47:
  if ((qword_100010944 & 0x100000) != 0)
  {
    printf("fh %d ", dword_100010A50);
    if (dword_100010A50 >= 1)
    {
      v16 = 0;
      do
      {
        printf("%02x", *(&dword_100010940[69] + v16++));
      }

      while (v16 < dword_100010A50);
    }

    putchar(10);
  }

  printf("NFS options:");
  if (dword_100010934)
  {
    v17 = "bg";
  }

  else
  {
    v17 = "fg";
  }

  printf(" %s,retrycnt=%d", v17, dword_1000108F8);
  v18 = qword_100010944;
  if ((qword_100010944 & 2) != 0)
  {
    printf(",vers=%d", xmmword_100010954);
    v18 = qword_100010944;
    if ((qword_100010944 & 4) != 0)
    {
      printf(".%d", DWORD1(xmmword_100010954));
      v18 = qword_100010944;
    }
  }

  if ((v18 & 0x8000000) != 0)
  {
    printf(",vers=%d", HIWORD(xmmword_100010954));
    if (WORD6(xmmword_100010954))
    {
      printf(".%d", WORD6(xmmword_100010954));
    }

    printf("-%d", WORD5(xmmword_100010954));
    if (WORD4(xmmword_100010954))
    {
      printf(".%d", WORD4(xmmword_100010954));
    }
  }

  v19 = qword_10001094C;
  if ((qword_10001094C & 1) != 0 || dword_100010938 >= 2)
  {
    if ((qword_10001094C & 0x100000000) != 0)
    {
      v21 = "soft";
    }

    else
    {
      v21 = "hard";
    }

    printf(",%s", v21);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
    if ((qword_10001094C & 2) != 0)
    {
      goto LABEL_72;
    }

LABEL_71:
    if (!v20)
    {
      goto LABEL_76;
    }

    goto LABEL_72;
  }

  v20 = 0;
  if ((qword_10001094C & 2) == 0)
  {
    goto LABEL_71;
  }

LABEL_72:
  if ((qword_10001094C & 0x200000000) != 0)
  {
    v22 = &unk_1000084D7;
  }

  else
  {
    v22 = "no";
  }

  printf(",%sintr", v22);
  v19 = qword_10001094C;
  v20 = dword_100010938 > 1;
LABEL_76:
  if ((v19 & 4) != 0 || v20)
  {
    if ((qword_10001094C & 0x400000000) != 0)
    {
      v23 = &unk_1000084D7;
    }

    else
    {
      v23 = "no";
    }

    printf(",%sresvport", v23);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 8) != 0 || v20)
  {
    if ((qword_10001094C & 0x800000000) != 0)
    {
      v24 = "no";
    }

    else
    {
      v24 = &unk_1000084D7;
    }

    printf(",%sconn", v24);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 0x400) != 0 || v20)
  {
    if ((qword_10001094C & 0x40000000000) != 0)
    {
      v25 = "no";
    }

    else
    {
      v25 = &unk_1000084D7;
    }

    printf(",%scallback", v25);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 0x80) != 0 || v20)
  {
    if ((qword_10001094C & 0x8000000000) != 0)
    {
      v26 = "no";
    }

    else
    {
      v26 = &unk_1000084D7;
    }

    printf(",%snegnamecache", v26);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 0x800) != 0 || v20)
  {
    if ((qword_10001094C & 0x80000000000) != 0)
    {
      v27 = &unk_1000084D7;
    }

    else
    {
      v27 = "no";
    }

    printf(",%snamedattr", v27);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 0x1000) != 0 || v20)
  {
    if ((qword_10001094C & 0x100000000000) != 0)
    {
      v28 = "no";
    }

    else
    {
      v28 = &unk_1000084D7;
    }

    printf(",%sacl", v28);
    v19 = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 0x2000) != 0 || v20)
  {
    if ((qword_10001094C & 0x200000000000) != 0)
    {
      v29 = &unk_1000084D7;
    }

    else
    {
      v29 = "no";
    }

    printf(",%saclonly", v29);
    LOBYTE(v19) = qword_10001094C;
    v20 = dword_100010938 > 1;
  }

  if ((v19 & 0x20) != 0 || v20)
  {
    if ((qword_10001094C & 0x2000000000) != 0)
    {
      v31 = &unk_1000084D7;
    }

    else
    {
      v31 = "no";
    }

    printf(",%scallumnt", v31);
    v30 = dword_100010938 > 1;
  }

  else
  {
    v30 = 0;
  }

  if (((qword_100010944 & 0x800) != 0 || v30) && dword_1000109D8 <= 2)
  {
    printf((&off_10000C400)[dword_1000109D8]);
  }

  if ((qword_10001094C & 0x8000) != 0 || dword_100010938 >= 2)
  {
    if ((qword_10001094C & 0x800000000000) != 0)
    {
      v33 = "no";
    }

    else
    {
      v33 = &unk_1000084D7;
    }

    printf(",%squota", v33);
    v32 = dword_100010938 > 1;
  }

  else
  {
    v32 = 0;
  }

  v34 = qword_100010944;
  if ((qword_100010944 & 8) != 0 || v32)
  {
    if ((qword_100010944 & 8) != 0)
    {
      v35 = dword_100010964;
    }

    else
    {
      v35 = 0x8000;
    }

    printf(",rsize=%d", v35);
    v34 = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v34 & 0x10) != 0 || v32)
  {
    if ((v34 & 0x10) != 0)
    {
      v36 = dword_100010968;
    }

    else
    {
      v36 = 0x8000;
    }

    printf(",wsize=%d", v36);
    v34 = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v34 & 0x40) != 0 || v32)
  {
    if ((v34 & 0x40) != 0)
    {
      v37 = dword_100010970;
    }

    else
    {
      v37 = 16;
    }

    printf(",readahead=%d", v37);
    v34 = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v34 & 0x20) != 0 || v32)
  {
    if ((v34 & 0x20) != 0)
    {
      v38 = dword_10001096C;
    }

    else
    {
      v38 = 0x8000;
    }

    printf(",dsize=%d", v38);
    v32 = dword_100010938 > 1;
  }

  v39 = qword_10001094C;
  if ((qword_10001094C & 0x40) != 0 || v32)
  {
    if ((qword_10001094C & 0x4000000000) != 0)
    {
      v40 = &unk_1000084D7;
    }

    else
    {
      v40 = "no";
    }

    printf(",%srdirplus", v40);
    v39 = qword_10001094C;
    v32 = dword_100010938 > 1;
  }

  if ((v39 & 0x10) != 0 || v32)
  {
    if ((qword_10001094C & 0x1000000000) != 0)
    {
      v41 = &unk_1000084D7;
    }

    else
    {
      v41 = "no";
    }

    printf(",%sdumbtimer", v41);
    v32 = dword_100010938 > 1;
  }

  v42 = qword_100010944;
  if ((qword_100010944 & 0x20000) != 0 || v32)
  {
    if ((qword_100010944 & 0x20000) != 0)
    {
      v43 = *(&xmmword_100010A20 + 1) % 100000000 + 10 * xmmword_100010A20;
    }

    else
    {
      v43 = 10;
    }

    printf(",timeo=%ld", v43);
    v42 = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v42 & 0x40000) != 0 || v32)
  {
    if ((v42 & 0x40000) != 0)
    {
      v44 = dword_100010A30;
    }

    else
    {
      v44 = 10;
    }

    printf(",retrans=%d", v44);
    LOWORD(v42) = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v42 & 0x2000) != 0 || v32)
  {
    if ((v42 & 0x2000) != 0)
    {
      v45 = unk_100010A08;
    }

    else
    {
      v45 = 16;
    }

    printf(",maxgroups=%d", v45);
    LOWORD(v42) = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v42 & 0x80) != 0 || v32)
  {
    v6 = (v42 & 0x80) == 0;
    v46 = 5;
    if (!v6)
    {
      v46 = *&dword_100010978;
    }

    printf(",acregmin=%ld", v46);
    LOWORD(v42) = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v42 & 0x100) != 0 || v32)
  {
    v6 = (v42 & 0x100) == 0;
    v47 = 60;
    if (!v6)
    {
      v47 = *(&xmmword_100010980 + 1);
    }

    printf(",acregmax=%ld", v47);
    LOWORD(v42) = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v42 & 0x200) != 0 || v32)
  {
    v6 = (v42 & 0x200) == 0;
    v48 = 5;
    if (!v6)
    {
      v48 = *&dword_100010998;
    }

    printf(",acdirmin=%ld", v48);
    LOWORD(v42) = qword_100010944;
    v32 = dword_100010938 > 1;
  }

  if ((v42 & 0x400) != 0 || v32)
  {
    v6 = (v42 & 0x400) == 0;
    v49 = 60;
    if (!v6)
    {
      v49 = *(&xmmword_1000109A0 + 1);
    }

    printf(",acdirmax=%ld", v49);
    v32 = dword_100010938 > 1;
  }

  v50 = BYTE4(qword_100010944);
  if ((qword_100010944 & 0x200000000) != 0 || v32)
  {
    v51 = 5;
    if ((qword_100010944 & 0x200000000) != 0)
    {
      v51 = qword_1000109B8;
    }

    printf(",acrootdirmin=%ld", v51);
    v50 = BYTE4(qword_100010944);
    v32 = dword_100010938 > 1;
  }

  if ((v50 & 4) != 0 || v32)
  {
    v6 = (v50 & 4) == 0;
    v53 = 60;
    if (!v6)
    {
      v53 = *(&xmmword_1000109C0 + 1);
    }

    printf(",acrootdirmax=%ld", v53);
    v52 = dword_100010938 > 1;
  }

  else
  {
    v52 = 0;
  }

  if ((qword_100010944 & 0x80000) != 0 || v52)
  {
    v55 = xmmword_100010A40;
    if ((qword_100010944 & 0x80000) == 0)
    {
      v55 = 0;
    }

    printf(",deadtimeout=%ld", v55);
    v54 = dword_100010938 > 1;
  }

  else
  {
    v54 = 0;
  }

  v56 = qword_10001094C;
  if ((qword_10001094C & 0x100) != 0 || v54)
  {
    if ((qword_10001094C & 0x10000000000) != 0)
    {
      v57 = &unk_1000084D7;
    }

    else
    {
      v57 = "no";
    }

    printf(",%smutejukebox", v57);
    v56 = qword_10001094C;
    v54 = dword_100010938 > 1;
  }

  if ((v56 & 0x200) != 0 || v54)
  {
    if ((qword_10001094C & 0x20000000000) != 0)
    {
      v58 = &unk_1000084D7;
    }

    else
    {
      v58 = "no";
    }

    printf(",%sephemeral", v58);
    v56 = qword_10001094C;
    v54 = dword_100010938 > 1;
  }

  if ((v56 & 0x4000) != 0 || v54)
  {
    if ((qword_10001094C & 0x400000000000) != 0)
    {
      v59 = &unk_1000084D7;
    }

    else
    {
      v59 = "no";
    }

    printf(",%snfc", v59);
  }

  if ((qword_100010944 & 0x1000) == 0)
  {
    goto LABEL_272;
  }

  if (SHIDWORD(qword_1000109DC) <= 390002)
  {
    if (!HIDWORD(qword_1000109DC))
    {
      v60 = "none";
      goto LABEL_258;
    }

    if (HIDWORD(qword_1000109DC) == 1)
    {
      v60 = "sys";
      goto LABEL_258;
    }
  }

  else
  {
    switch(HIDWORD(qword_1000109DC))
    {
      case 0x5F373:
        v60 = "krb5";
        goto LABEL_258;
      case 0x5F374:
        v60 = "krb5i";
        goto LABEL_258;
      case 0x5F375:
        v60 = "krb5p";
        goto LABEL_258;
    }
  }

  v60 = "?";
LABEL_258:
  printf(",sec=%s", v60);
  if (qword_1000109DC >= 2)
  {
    v61 = &unk_1000109E4;
    for (i = 1; i < qword_1000109DC; ++i)
    {
      v64 = *v61++;
      v63 = v64;
      if (v64 <= 390002)
      {
        v65 = "none";
        if (v63)
        {
          if (v63 != 1)
          {
LABEL_270:
            v65 = "?";
            goto LABEL_271;
          }

          v65 = "sys";
        }
      }

      else
      {
        switch(v63)
        {
          case 390003:
            v65 = "krb5";
            break;
          case 390004:
            v65 = "krb5i";
            break;
          case 390005:
            v65 = "krb5p";
            break;
          default:
            goto LABEL_270;
        }
      }

LABEL_271:
      printf(":%s", v65);
    }
  }

LABEL_272:
  if ((qword_100010944 & 0x10000000) != 0)
  {
    v66 = (dword_1000109FC - 16) > 2 ? "?" : (&off_10000C418)[dword_1000109FC - 16];
    printf(",etype=%s", v66);
    if (qword_1000109F4 >= 2)
    {
      v67 = &unk_100010A00;
      v68 = 1;
      do
      {
        v69 = *v67++;
        v70 = v69 - 16;
        v71 = "?";
        if ((v69 - 16) <= 2)
        {
          v71 = (&off_10000C418)[v70];
        }

        printf(":%s", v71);
        ++v68;
      }

      while (v68 < qword_1000109F4);
    }
  }

  v72 = qword_100010944;
  if ((qword_100010944 & 0x1000000) != 0)
  {
    printf(",realm=%s", qword_100010AD8);
    v72 = qword_100010944;
  }

  if ((v72 & 0x2000000) != 0)
  {
    printf(",principal=%s", xmmword_100010AE0);
    v72 = qword_100010944;
  }

  if ((v72 & 0x4000000) != 0)
  {
    printf(",sprincipal=%s", *(&xmmword_100010AE0 + 1));
  }

  v73 = BYTE4(qword_100010944);
  if ((qword_100010944 & 0x100000000) != 0 || dword_100010938 >= 2)
  {
    if ((qword_100010944 & 0x100000000) != 0)
    {
      v74 = dword_100010A34;
    }

    else
    {
      v74 = 0;
    }

    printf(",readlink_nocache=%d", v74);
    v73 = BYTE4(qword_100010944);
  }

  if ((v73 & 8) != 0)
  {
    printf(",accesscache=%d", dword_100010A38);
  }

  if ((qword_10001094C & 0x80000) != 0 || dword_100010938 >= 2)
  {
    if ((qword_10001094C & 0x8000000000000) != 0)
    {
      v76 = "no";
    }

    else
    {
      v76 = &unk_1000084D7;
    }

    printf(",%sopaque_auth", v76);
    v75 = dword_100010938 > 1;
    if ((qword_10001094C & 0x100000) != 0)
    {
      goto LABEL_304;
    }

LABEL_303:
    if (!v75)
    {
      return putchar(10);
    }

    goto LABEL_304;
  }

  v75 = 0;
  if ((qword_10001094C & 0x100000) == 0)
  {
    goto LABEL_303;
  }

LABEL_304:
  if ((qword_10001094C & 0x10000000000000) != 0)
  {
    v77 = &unk_1000084D7;
  }

  else
  {
    v77 = "no";
  }

  printf(",%sskip_renew", v77);
  return putchar(10);
}

uint64_t sub_1000051FC(uint64_t a1, void *a2)
{
  *a2 = 0;
  v3 = qword_100010944;
  v4 = qword_100010944 | 0x600000;
  v72 = HIDWORD(qword_100010944);
  v73 = qword_100010944 | 0x600000;
  if (qword_100010B00 && qword_100010928 && !strncmp(qword_100010928, "ftp://", 6uLL))
  {
    v4 = v3 | 0xE00000;
    v73 = v3 | 0xE00000;
  }

  if (qword_10001094C)
  {
    v4 |= 1u;
    v73 = v4;
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v83 = 0u;
  v84 = 0u;
  *__s = 0u;
  *v80 = 0;
  v81 = 0;
  v79 = 0x100000001;
  v74[0] = 0;
  v74[1] = 0;
  v77 = 0;
  v78 = 512;
  v75 = 0;
  v76 = 0;
  __src = 1476395008;
  v5 = sub_100000898(v74, &__src, 4uLL, 0);
  if (v79 == 1)
  {
    v6 = v76 - v74[0];
  }

  else
  {
    v6 = 0;
  }

  v69 = v6;
  if (!v5)
  {
    __src = 0;
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (v7)
    {
      goto LABEL_14;
    }

    __src = 0;
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (v7)
    {
      goto LABEL_14;
    }

    __src = 0x2000000;
    v5 = sub_100000898(v74, &__src, 4uLL, 0);
  }

  v7 = v5;
LABEL_14:
  v8 = &v73;
  v9 = 1;
  do
  {
    v10 = v9;
    if (!v7)
    {
      __src = bswap32(*v8);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }

    v9 = 0;
    v8 = &v72;
  }

  while ((v10 & 1) != 0);
  if (v79 == 1)
  {
    v11 = v76 - v74[0];
  }

  else
  {
    v11 = 0;
  }

  v68 = v11;
  if (v7)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    __src = 0;
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (!v7)
  {
    __src = 0x1000000;
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(qword_10001094C);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        __src = 0x1000000;
        v7 = sub_100000898(v74, &__src, 4uLL, 0);
        if (!v7)
        {
          __src = bswap32(HIDWORD(qword_10001094C));
          v7 = sub_100000898(v74, &__src, 4uLL, 0);
        }
      }
    }
  }

LABEL_30:
  if ((v4 & 2) != 0 && !v7)
  {
    __src = bswap32(xmmword_100010954);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 4) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_36;
  }

  if (!v7)
  {
    __src = bswap32(DWORD1(xmmword_100010954));
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

LABEL_36:
  if ((v4 & 0x8000000) != 0 && !v7)
  {
    __src = bswap32(HIDWORD(xmmword_100010954));
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(DWORD2(xmmword_100010954));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v4 & 8) != 0 && !v7)
  {
    __src = bswap32(dword_100010964);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_46;
  }

  if (!v7)
  {
    __src = bswap32(dword_100010968);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

LABEL_46:
  if ((v4 & 0x20) != 0 && !v7)
  {
    __src = bswap32(dword_10001096C);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_52;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  if (!v7)
  {
    __src = bswap32(dword_100010970);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

LABEL_52:
  if ((v4 & 0x80) != 0 && !v7)
  {
    __src = bswap32(dword_100010978);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(xmmword_100010980);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v4 & 0x100) != 0 && !v7)
  {
    __src = bswap32(DWORD2(xmmword_100010980));
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(dword_100010990);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v4 & 0x200) != 0 && !v7)
  {
    __src = bswap32(dword_100010998);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(xmmword_1000109A0);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v4 & 0x400) != 0 && !v7)
  {
    __src = bswap32(DWORD2(xmmword_1000109A0));
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(dword_1000109B0);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v4 & 0x800) != 0 && !v7)
  {
    __src = bswap32(dword_1000109D8);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_80;
    }
  }

  else if ((v4 & 0x1000) == 0)
  {
    goto LABEL_80;
  }

  if (!v7)
  {
    __src = bswap32(qword_1000109DC);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

  v12 = qword_1000109DC;
  if (qword_1000109DC)
  {
    v13 = 0;
    do
    {
      if (!v7)
      {
        __src = bswap32(dword_100010940[v13 + 40]);
        v7 = sub_100000898(v74, &__src, 4uLL, 0);
        v12 = qword_1000109DC;
      }

      ++v13;
    }

    while (v13 < v12);
  }

LABEL_80:
  if ((v4 & 0x10000000) != 0)
  {
    if (!v7)
    {
      __src = bswap32(qword_1000109F4);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        __src = bswap32(HIDWORD(qword_1000109F4));
        v7 = sub_100000898(v74, &__src, 4uLL, 0);
      }
    }

    v14 = qword_1000109F4;
    if (qword_1000109F4)
    {
      v15 = 0;
      do
      {
        if (!v7)
        {
          __src = bswap32(dword_100010940[v15 + 47]);
          v7 = sub_100000898(v74, &__src, 4uLL, 0);
          v14 = qword_1000109F4;
        }

        ++v15;
      }

      while (v15 < v14);
    }
  }

  if ((v4 & 0x2000) != 0 && !v7)
  {
    __src = bswap32(unk_100010A08);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_120;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_120;
  }

  if (SHIDWORD(qword_100010A0C) > 1)
  {
    if (HIDWORD(qword_100010A0C) != 2 && HIDWORD(qword_100010A0C) != 30)
    {
      goto LABEL_115;
    }

    goto LABEL_98;
  }

  if (!HIDWORD(qword_100010A0C))
  {
LABEL_98:
    v16 = &unk_1000084D7;
    if (HIDWORD(qword_100010A0C) == 2)
    {
      v16 = "4";
    }

    if (HIDWORD(qword_100010A0C) == 30)
    {
      v17 = "6";
    }

    else
    {
      v17 = v16;
    }

    v18 = "inet";
    v19 = "tcp";
    if (qword_100010A0C)
    {
      if (qword_100010A0C == 2)
      {
        v18 = "udp";
      }

      v20 = qword_100010A0C == 1;
    }

    else
    {
      if (dword_100010930 == 17)
      {
        v18 = "udp";
      }

      v20 = dword_100010930 == 6;
    }

    if (!v20)
    {
      v19 = v18;
    }

    snprintf(byte_100010B08, 0x10uLL, "%s%s", v19, v17);
    goto LABEL_115;
  }

  if (HIDWORD(qword_100010A0C) == 1)
  {
    __strlcpy_chk();
    if (v7)
    {
      goto LABEL_120;
    }

    goto LABEL_116;
  }

LABEL_115:
  if (v7)
  {
    goto LABEL_120;
  }

LABEL_116:
  __src = bswap32(strlen(byte_100010B08));
  v7 = sub_100000898(v74, &__src, 4uLL, 0);
  if (!v7)
  {
    v21 = strlen(byte_100010B08);
    v7 = sub_100000898(v74, byte_100010B08, v21, 0);
  }

LABEL_120:
  if ((v4 & 0x8000) != 0 && !v7)
  {
    __src = bswap32(dword_100010A14);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_126;
    }
  }

  else if ((v4 & 0x10000) == 0)
  {
    goto LABEL_126;
  }

  if (!v7)
  {
    __src = bswap32(dword_100010A18);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

LABEL_126:
  if ((v4 & 0x20000) != 0 && !v7)
  {
    __src = bswap32(xmmword_100010A20);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(DWORD2(xmmword_100010A20));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v4 & 0x40000) != 0 && !v7)
  {
    __src = bswap32(dword_100010A30);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_137;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_137;
  }

  if (!v7)
  {
    __src = bswap32(xmmword_100010A40);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(DWORD2(xmmword_100010A40));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

LABEL_137:
  if ((v4 & 0x100000) != 0 && !v7)
  {
    __src = bswap32(dword_100010A50);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      v7 = sub_100000898(v74, algn_100010A54, dword_100010A50, 0);
    }
  }

  v22 = 0;
  if (a1)
  {
    v23 = a1;
    do
    {
      ++v22;
      v23 = *v23;
    }

    while (v23);
  }

  if (!v7)
  {
    __src = bswap32(v22);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

  if (!a1)
  {
    goto LABEL_222;
  }

  do
  {
    if (!v7)
    {
      __src = bswap32(*(a1 + 24));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }

    v70 = a1;
    v24 = *(a1 + 8);
    if (v24)
    {
      while (1)
      {
        __src = 0;
        if (!v7)
        {
          __src = bswap32(strlen(v24[1]));
          v7 = sub_100000898(v74, &__src, 4uLL, 0);
          if (!v7)
          {
            v25 = strlen(v24[1]);
            v7 = sub_100000898(v74, v24[1], v25, 0);
          }
        }

        v26 = v24[2];
        if (v26)
        {
          v27 = 0;
          v28 = v24[2];
          do
          {
            ++v27;
            v28 = v28[5];
          }

          while (v28);
          if (v7)
          {
LABEL_157:
            if (v26)
            {
              break;
            }

            goto LABEL_188;
          }
        }

        else
        {
          v27 = 0;
          if (v7)
          {
            goto LABEL_157;
          }
        }

        __src = bswap32(v27);
        v7 = sub_100000898(v74, &__src, 4uLL, 0);
        v26 = v24[2];
        if (v26)
        {
          break;
        }

LABEL_188:
        if (!v7)
        {
          __src = 0;
          v7 = sub_100000898(v74, &__src, 4uLL, 0);
        }

        v24 = *v24;
        if (!v24)
        {
          goto LABEL_191;
        }
      }

      while (1)
      {
        v29 = v26[4];
        v30 = *(v29 + 1);
        if (v30 != 30 && v30 != 2)
        {
          break;
        }

        v32 = *(v26 + 1);
        if (v32 == 2)
        {
          v33 = 4;
        }

        else
        {
          v33 = 8;
        }

        if (inet_ntop(v32, (v29 + v33), __s, 0x80u) != __s)
        {
          warn("unable to convert server address to string");
          v7 = *__error();
        }

        if (*(v26 + 1) != 30)
        {
          goto LABEL_178;
        }

        v34 = v26[4];
        v35 = *(v34 + 24);
        if (!v35)
        {
          goto LABEL_178;
        }

        if (if_indextoname(*(v34 + 24), v80))
        {
          v36 = strlen(__s);
          if (128 - v36 >= 0x10)
          {
            v37 = 16;
          }

          else
          {
            v37 = 128 - v36;
          }

          snprintf(&__s[v36], v37, "%%%s", v80);
          if (!v7)
          {
LABEL_179:
            __src = bswap32(strlen(__s));
            v7 = sub_100000898(v74, &__src, 4uLL, 0);
            if (!v7)
            {
              v38 = strlen(__s);
              v7 = sub_100000898(v74, __s, v38, 0);
            }
          }
        }

        else
        {
          warn("unable to convert scope_id %u to interface name", v35);
          v7 = *__error();
          if (!v7)
          {
            goto LABEL_179;
          }
        }

LABEL_181:
        v26 = v26[5];
        if (!v26)
        {
          goto LABEL_188;
        }
      }

      if (v30 != 1)
      {
        warn("Unsupported addres family %d", *(v29 + 1));
        v7 = 45;
        goto LABEL_181;
      }

      __strlcpy_chk();
LABEL_178:
      if (!v7)
      {
        goto LABEL_179;
      }

      goto LABEL_181;
    }

LABEL_191:
    v39 = v70;
    v40 = v70[2];
    v41 = v40 - 1;
    do
    {
      v43 = *++v41;
      v42 = v43;
    }

    while (v43 == 47);
    for (i = 0; v42; ++i)
    {
      v45 = v41--;
      while (v42 != 47 && v42)
      {
        v46 = *++v45;
        v42 = v46;
        ++v41;
      }

      do
      {
        v47 = *++v41;
        v42 = v47;
      }

      while (v47 == 47);
    }

    if (!v7)
    {
      __src = bswap32(i);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      v40 = v70[2];
    }

    v48 = (v40 - 1);
    do
    {
      v50 = *++v48;
      v49 = v50;
    }

    while (v50 == 47);
    if (v49)
    {
      while (1)
      {
        v51 = 0;
        v52 = v48 - 1;
        while (v49 && v49 != 47)
        {
          LOBYTE(v49) = v48[++v51];
          ++v52;
        }

        if (v7)
        {
          break;
        }

        __src = bswap32(v51);
        v53 = sub_100000898(v74, &__src, 4uLL, 0);
        if (v53 || (v53 = sub_100000898(v74, v48, v51, 0), v53))
        {
          v7 = v53;
          break;
        }

        v48 = v52;
        v39 = v70;
        do
        {
          v54 = *++v48;
          v49 = v54;
        }

        while (v54 == 47);
        if (!v49)
        {
          goto LABEL_206;
        }

        v7 = 0;
      }

      v39 = v70;
    }

    else if (!v7)
    {
LABEL_206:
      __src = 0;
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }

    a1 = *v39;
  }

  while (a1);
LABEL_222:
  if (!v7)
  {
    __src = bswap32(dword_100010940[0]);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
  }

  v55 = v73;
  if ((v73 & 0x800000) != 0)
  {
    __src = 0;
    if (!v7)
    {
      __src = bswap32(strlen(qword_100010928));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        v56 = strlen(qword_100010928);
        v7 = sub_100000898(v74, qword_100010928, v56, 0);
      }
    }
  }

  if ((v55 & 0x1000000) != 0)
  {
    __src = 0;
    if (!v7)
    {
      __src = bswap32(strlen(qword_100010AD8));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        v57 = strlen(qword_100010AD8);
        v7 = sub_100000898(v74, qword_100010AD8, v57, 0);
      }
    }
  }

  if ((v55 & 0x2000000) != 0)
  {
    __src = 0;
    if (!v7)
    {
      __src = bswap32(strlen(xmmword_100010AE0));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        v58 = strlen(xmmword_100010AE0);
        v7 = sub_100000898(v74, xmmword_100010AE0, v58, 0);
      }
    }
  }

  if ((v55 & 0x4000000) != 0)
  {
    __src = 0;
    if (!v7)
    {
      __src = bswap32(strlen(*(&xmmword_100010AE0 + 1)));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        v59 = strlen(*(&xmmword_100010AE0 + 1));
        v7 = sub_100000898(v74, *(&xmmword_100010AE0 + 1), v59, 0);
      }
    }
  }

  if ((v55 & 0x20000000) != 0)
  {
    __src = 0;
    if (!v7)
    {
      __src = bswap32(strlen(xmmword_100010AF0));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        v60 = strlen(xmmword_100010AF0);
        v7 = sub_100000898(v74, xmmword_100010AF0, v60, 0);
      }
    }
  }

  if ((v55 & 0x40000000) != 0)
  {
    __src = 0;
    if (!v7)
    {
      __src = bswap32(strlen(*(&xmmword_100010AF0 + 1)));
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
      if (!v7)
      {
        v61 = strlen(*(&xmmword_100010AF0 + 1));
        v7 = sub_100000898(v74, *(&xmmword_100010AF0 + 1), v61, 0);
      }
    }
  }

  v62 = v72;
  if ((v72 & 1) != 0 && !v7)
  {
    __src = bswap32(dword_100010A34);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if ((v62 & 2) == 0)
    {
      goto LABEL_255;
    }
  }

  else if ((v72 & 2) == 0)
  {
    goto LABEL_255;
  }

  if (!v7)
  {
    __src = bswap32(qword_1000109B8);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(xmmword_1000109C0);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

LABEL_255:
  if ((v62 & 4) != 0 && !v7)
  {
    __src = bswap32(DWORD2(xmmword_1000109C0));
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      __src = bswap32(dword_1000109D0);
      v7 = sub_100000898(v74, &__src, 4uLL, 0);
    }
  }

  if ((v62 & 8) != 0 && !v7)
  {
    __src = bswap32(dword_100010A38);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (v7)
    {
      goto LABEL_273;
    }
  }

  else if (v7)
  {
    goto LABEL_273;
  }

  if (v79 == 1)
  {
    v63 = v76 - v74[0];
    v64 = v69;
    v75 = v63;
    v76 = v74[0] + v69;
    v77 = v63 - v69;
  }

  else
  {
    LODWORD(v63) = 0;
    v64 = v69;
  }

  __src = bswap32(v63 - v64 + 4);
  v65 = sub_100000898(v74, &__src, 4uLL, 0);
  if (v65)
  {
    v7 = v65;
  }

  else
  {
    if (v79 == 1)
    {
      v76 = v74[0] + v68;
      v77 = v75 - v68;
    }

    __src = bswap32(v63 - v68 - 4);
    v7 = sub_100000898(v74, &__src, 4uLL, 0);
    if (!v7)
    {
      *a2 = v74[0];
      HIDWORD(v79) &= ~1u;
    }
  }

LABEL_273:
  if ((v79 & 0x100000000) != 0 && v79 == 1 && v74[0])
  {
    free(v74[0]);
  }

  return v7;
}

uint64_t sub_100006520()
{
  *_newrpclib___rpc_createerr() = 0;
  if (qword_100010A0C == 2)
  {
    timeout = _newrpclib_clntudp_bufcreate_timeout();
    if (!timeout)
    {
      return *_newrpclib___rpc_createerr();
    }

    goto LABEL_5;
  }

  timeout = _newrpclib_clnttcp_create_timeout();
  if (timeout)
  {
LABEL_5:
    (*(*(timeout + 8) + 32))();
  }

  return *_newrpclib___rpc_createerr();
}

void sub_1000065CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      for (i = v1[1]; i; i = *i)
      {
        v3 = i[2];
        if (v3)
        {
          freeaddrinfo(v3);
          i[2] = 0;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }
}

uint64_t sub_10000662C(const char *a1, int *a2)
{
  if (a1)
  {
    v3 = a1;
    printf("hstr = [%s]\n", a1);
    if (*v3 == 48 && (*(v3 + 1) | 0x20) == 0x78)
    {
      v3 += 2;
    }

    v4 = strlen(v3);
    if ((v4 & 1) == 0)
    {
      *a2 = v4 >> 1;
      LOBYTE(v5) = *v3;
      if (!*v3)
      {
        return 0;
      }

      v6 = 0;
      v7 = a2 + 1;
      v8 = v3 + 1;
      while (1)
      {
        v9 = off_100010900;
        v10 = __tolower(v5);
        v11 = strchr(v9, v10);
        if (!v11)
        {
          break;
        }

        v12 = v11 - v9;
        if (v6)
        {
          v14 = v7 + 1;
          v13 = *v7 | v12 & 0xF;
        }

        else
        {
          v13 = 16 * v12;
          v14 = v7;
        }

        *v7 = v13;
        v5 = v8[v6++];
        v7 = v14;
        if (!v5)
        {
          return 0;
        }
      }
    }
  }

  v16 = __error();
  result = 22;
  *v16 = 22;
  return result;
}

char *sub_100006734(int *a1)
{
  v2 = *a1;
  v3 = malloc_type_calloc(1uLL, 2 * v2 + 3, 0xED82DA14uLL);
  v4 = v3;
  if (v3)
  {
    strlcpy(v3, "0x", 2 * v2 + 3);
    if (v2 >= 1)
    {
      v5 = (a1 + 1);
      v6 = v4 + 3;
      do
      {
        *(v6 - 1) = off_100010900[*v5 >> 4];
        v7 = *v5++;
        *v6 = off_100010900[v7 & 0xF];
        v6 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return v4;
}

uint64_t sub_1000067DC(const char *a1, unsigned int *a2, unsigned int *a3, _DWORD *a4)
{
  __endptr = 0;
  *a3 = 0;
  *a4 = 0;
  v7 = a2;
  while (1)
  {
    v8 = strtol(a1, &__endptr, 10);
    v9 = __endptr;
    v10 = *__endptr;
    if (*__endptr && v10 != 46)
    {
      if (v10 != 45 || (v8 - 5) < 0xFFFFFFFFFFFFFFFDLL)
      {
        return 0;
      }
    }

    else if ((v8 - 5) < 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0;
    }

    *v7 = v8 << 16;
    v12 = *v9;
    if (v12 == 45)
    {
      goto LABEL_20;
    }

    if (v12 != 46)
    {
      break;
    }

    v13 = strtol(v9 + 1, &__endptr, 10);
    v14 = v13;
    v9 = __endptr;
    if (*__endptr)
    {
      result = 0;
      if (*__endptr != 45 || (v14 & 0x8000000000000000) != 0)
      {
        return result;
      }
    }

    else if (v13 < 0)
    {
      return 0;
    }

    v16 = *v7;
    if (v14 > *(&unk_100010908 + ((v16 >> 14) & 0x3FFFC)))
    {
      return 0;
    }

    *v7 = v16 | v14;
    *a4 = 1;
    if (!*v9)
    {
      goto LABEL_24;
    }

LABEL_20:
    a1 = v9 + 1;
    v17 = v7 == a3;
    v7 = a3;
    if (v17)
    {
      return 0;
    }
  }

  if (*v9)
  {
    return 0;
  }

LABEL_24:
  v18 = *a3;
  if (*a3)
  {
    v19 = *a2;
    if (*a2 > v18)
    {
      *a2 = v18;
      *a3 = v19;
    }
  }

  return 1;
}

uint64_t sub_10000693C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *&xmmword_100010954 = 0;
    LODWORD(qword_100010944) = qword_100010944 & 0xF7FFFFF9 | 0x8000000;
    DWORD2(xmmword_100010954) = a2;
    HIDWORD(xmmword_100010954) = result;
  }

  else
  {
    v3 = qword_100010944 & 0xF7FFFFFB;
    LODWORD(qword_100010944) = qword_100010944 & 0xF7FFFFF9 | 2;
    xmmword_100010954 = WORD1(result);
    if (a3)
    {
      LODWORD(qword_100010944) = v3 | 6;
      DWORD1(xmmword_100010954) = result;
    }
  }

  return result;
}

void sub_1000069AC(const char *a1)
{
  v1 = strdup(a1);
  if (v1)
  {
    v2 = v1;
    v3 = strtok(v1, ",");
    if (v3)
    {
      v4 = v3;
      do
      {
        if (*v4 == 110)
        {
          v5 = 2 * (v4[1] == 111);
        }

        else
        {
          v5 = 0;
        }

        v6 = strchr(&v4[v5], 61);
        if (v6)
        {
          *v6 = 0;
        }

        v7 = off_100010040;
        if (off_100010040)
        {
          v8 = &off_100010058;
          while (strcasecmp(&v4[v5], v7))
          {
            v9 = *v8;
            v8 += 3;
            v7 = v9;
            if (!v9)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v10 = off_1000105C8;
          if (off_1000105C8)
          {
            v11 = &off_1000105E0;
            while (strcasecmp(&v4[v5], v10))
            {
              v12 = *v11;
              v11 += 3;
              v10 = v12;
              if (!v12)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_17:
            warnx("warning: option %s not known", v4);
          }
        }

        v4 = strtok(0, ",");
      }

      while (v4);
    }

    free(v2);
  }
}

uint64_t sub_100006B04(uint64_t a1)
{
  memset(&v28, 0, sizeof(v28));
  v27 = 0;
  bzero(__s, 0x401uLL);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v29 = 0u;
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  v3 = *v2;
  if (*v2)
  {
    if (v3 != 60)
    {
      if (v3 == 91 && v2[strlen(*(a1 + 8)) - 1] == 93)
      {
        __strlcpy_chk();
        __s[strlen(__s) - 1] = 0;
        v2 = __s;
      }

      goto LABEL_23;
    }

    if (v2[strlen(*(a1 + 8)) - 1] != 62)
    {
LABEL_23:
      memset(&v28, 0, sizeof(v28));
      v28.ai_flags = 1024;
      v28.ai_socktype = qword_100010A0C;
      if (qword_100010B00)
      {
        v2 = "localhost";
      }

      if (getaddrinfo(v2, 0, &v28, &v27))
      {
        warnx("can't resolve host: %s", v2);
        return 2;
      }

      v8 = v27;
      if (!v27)
      {
        goto LABEL_74;
      }

      goto LABEL_27;
    }

    __strlcpy_chk();
    __s[strlen(__s) - 1] = 0;
    v2 = v38;
  }

  v27 = malloc_type_malloc(0x30uLL, 0x1030040D19128EAuLL);
  if (!v27)
  {
    warnx("Can't allocate addrinfo sturcture for local address for %s");
    return 12;
  }

  v4 = malloc_type_malloc(0x6AuLL, 0x10000403684B423uLL);
  if (!v4)
  {
    free(v27);
    warnx("Can't allocate local socket address for %s");
    return 12;
  }

  v5 = v4;
  *&v4->sa_len = 362;
  if (dword_100010938 >= 3)
  {
    printf("hostname is <%s> : %s\n", v2, xmmword_100010AF0);
  }

  if (*v2)
  {
    v6 = xmmword_100010AF0;
    if (xmmword_100010AF0)
    {
      if (strcmp(xmmword_100010AF0, v2))
      {
        warnx("%s overrides port=%s", v2, v6);
        v6 = xmmword_100010AF0;
      }

      free(v6);
    }

    v7 = strdup(v2);
    *&xmmword_100010AF0 = v7;
    if (!v7)
    {
      v25 = strerror(1);
      sub_100000970(1, "No memory to duplicate hostname %s: %s", 0, v25);
    }

    LODWORD(qword_100010944) = qword_100010944 | 0x20000000;
    if (dword_100010938 >= 3)
    {
      printf("Setting local_nfs_port to %s\n", v7);
    }
  }

  v5->sa_data[0] = 0;
  v8 = v27;
  *&v27->ai_flags = &_mh_execute_header;
  v9 = qword_100010A0C;
  if (qword_100010A0C <= 1)
  {
    v9 = 1;
  }

  v8->ai_socktype = v9;
  *&v8->ai_protocol = 0x6A00000000;
  v8->ai_canonname = 0;
  v8->ai_addr = v5;
  v8->ai_next = 0;
LABEL_27:
  v26 = a1;
  v10 = 0;
  v11 = 0;
  do
  {
    while (1)
    {
      v12 = v8;
      v8 = v8->ai_next;
      if ((!HIDWORD(qword_100010A0C) || v12->ai_family == HIDWORD(qword_100010A0C)) && (!qword_100010A0C || v12->ai_socktype == qword_100010A0C) && (xmmword_100010954 < 4 || v12->ai_socktype != 2))
      {
        ai_family = v12->ai_family;
        if (ai_family <= 0x1E && ((1 << ai_family) & 0x40000006) != 0)
        {
          break;
        }
      }

      ai_next = v8;
      if (v11)
      {
        goto LABEL_52;
      }

      v27 = v8;
LABEL_54:
      v12->ai_next = v10;
      if (dword_100010938 >= 3)
      {
        v21 = v12->ai_family;
        if (v21 == 2)
        {
          v22 = 4;
        }

        else
        {
          if (v21 == 1)
          {
            if (v12->ai_socktype != 2)
            {
              v12->ai_socktype = 1;
            }

            printf("discard address: %s %s\n");
            goto LABEL_63;
          }

          v22 = 8;
        }

        inet_ntop(v21, &v12->ai_addr->sa_len + v22, v29, 0x80u);
        v12->ai_socktype;
        v12->ai_family;
        printf("discard address: %s %s %s\n");
      }

LABEL_63:
      v10 = v12;
      if (!v8)
      {
        goto LABEL_72;
      }
    }

    if (!qword_100010A0C && v11 && v12->ai_socktype != v11->ai_socktype)
    {
      v15 = v11->ai_family;
      v16 = v15 - ai_family;
      if (v15 != ai_family)
      {
        goto LABEL_44;
      }

      ai_addrlen = v11->ai_addrlen;
      v18 = v12->ai_addrlen;
      if (ai_addrlen == v18)
      {
        v16 = bcmp(v11->ai_addr, v12->ai_addr, ai_addrlen);
LABEL_44:
        if (v16)
        {
          goto LABEL_45;
        }

LABEL_71:
        ai_next = v12->ai_next;
LABEL_52:
        v11->ai_next = ai_next;
        goto LABEL_54;
      }

      if (ai_addrlen == v18)
      {
        goto LABEL_71;
      }
    }

LABEL_45:
    if (dword_100010938 < 3)
    {
      goto LABEL_68;
    }

    v19 = v12->ai_family;
    if (v19 == 2)
    {
      v23 = 4;
LABEL_67:
      inet_ntop(v19, &v12->ai_addr->sa_len + v23, v29, 0x80u);
      v12->ai_socktype;
      v12->ai_family;
      printf("usable address: %s %s %s\n");
      goto LABEL_68;
    }

    if (v19 != 1)
    {
      v23 = 8;
      goto LABEL_67;
    }

    if (v12->ai_socktype != 2)
    {
      v12->ai_socktype = 1;
    }

    printf("usable address: %s %s\n");
LABEL_68:
    v11 = v12;
  }

  while (v8);
LABEL_72:
  a1 = v26;
  if (v10)
  {
    free(v10);
  }

LABEL_74:
  result = 0;
  *(a1 + 16) = v27;
  return result;
}

double sub_100007230()
{
  LODWORD(qword_100010944) = qword_100010944 | 0x1000;
  *&result = 0x5F37300000001;
  qword_1000109DC = 0x5F37300000001;
  return result;
}