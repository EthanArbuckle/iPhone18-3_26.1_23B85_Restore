uint64_t sub_100000678()
{
  v0 = off_10000C000[0];
  if (*off_10000C000[0])
  {
    v1 = 0;
    v2 = "";
    v3 = off_10000C058;
    do
    {
      v4 = strlen(v0);
      v5 = *(v3 - 9);
      if (!v5 || (v18 = 0u, v17 = 0u, v16 = 0u, v15 = 0u, v14 = 0u, __key = v5, bsearch(&__key, off_10000C000, 0x59uLL, 0x58uLL, sub_1000007A8)))
      {
        v6 = v1 + v4 + 1;
        v7 = v6 <= dword_10000E128;
        if (v6 <= dword_10000E128)
        {
          v8 = v2;
        }

        else
        {
          v8 = "\n";
        }

        if (v7)
        {
          v9 = v1 + v4 + 1;
        }

        else
        {
          v9 = v4;
        }

        if (dword_10000E128)
        {
          v10 = v8;
        }

        else
        {
          v10 = v2;
        }

        if (dword_10000E128)
        {
          v1 = v9;
        }

        printf("%s%s", v10, v0);
        v2 = " ";
      }

      v11 = *v3;
      v3 += 11;
      v0 = v11;
    }

    while (*v11);
  }

  return putchar(10);
}

void sub_1000007B4(const char *a1, uint64_t a2)
{
  v3 = strdup(a1);
  v4 = v3;
  __stringp = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      if (!*v5)
      {
        break;
      }

      __s1 = 0;
      while (1)
      {
        v6 = strsep(&__stringp, " \t,\n");
        if (!v6)
        {
          break;
        }

        if (*v6)
        {
          v7 = sub_100000920(v6, a2, &__s1);
          if (v7)
          {
            v8 = v7;
            if (a2 || !sub_1000043D8(v7))
            {
              v9 = malloc_type_malloc(0x18uLL, 0x70040305B5C43uLL);
              if (!v9)
              {
                sub_100004958();
              }

              v10 = v9;
              v9[1] = v8[1];
              if (__s1)
              {
                v11 = strdup(__s1);
                __s1 = v11;
                if (v11)
                {
                  v10[1] = v11;
                }
              }

              v12 = malloc_type_malloc(0x58uLL, 0x10D0040E0FCBBA0uLL);
              v10[2] = v12;
              if (!v12)
              {
                sub_100004958();
              }

              v13 = *(v8 + 1);
              *v12 = *v8;
              v12[1] = v13;
              v14 = *(v8 + 2);
              v15 = *(v8 + 3);
              v16 = *(v8 + 4);
              *(v12 + 10) = v8[10];
              v12[3] = v15;
              v12[4] = v16;
              v12[2] = v14;
              *v10 = 0;
              *off_10000DEC8 = v10;
              off_10000DEC8 = v10;
            }
          }

          break;
        }
      }

      v5 = __stringp;
    }

    while (__stringp);
  }

  free(v4);
  if (!off_10000DEC0)
  {
    sub_100004974();
  }
}

const char **sub_100000920(char *a1, uint64_t a2, const char **a3)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v6 = strchr(a1, 61);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
    v7 = v6 + 1;
  }

  __key = a1;
  v8 = bsearch(&__key, off_10000C000, 0x59uLL, 0x58uLL, sub_1000007A8);
  v9 = v8;
  if (v8)
  {
    v10 = v8[2];
    if (v10)
    {
      if (v7)
      {
        v11 = strlen(v10);
        v12 = v11 + strlen(v7);
        v13 = malloc_type_malloc(v12 + 2, 0x686AF9B6uLL);
        snprintf(v13, v12 + 2, "%s=%s", v9[2], v7);
        v10 = v13;
      }

      sub_1000007B4(v10, a2);
      return 0;
    }
  }

  else
  {
    warnx("%s: keyword not found", a1);
    dword_10000E138 = 1;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v9;
}

uint64_t sub_100000A44()
{
  *v3 = 0x1800000006;
  v2 = 8;
  v0 = sysctl(v3, 2u, &qword_10000E100, &v2, 0, 0);
  result = 1;
  if (v0 != -1)
  {
    dword_10000E108 = 100;
    dword_10000E10C = 1;
    return 0;
  }

  return result;
}

void sub_100000AE8()
{
  v0 = &off_10000DEC0;
  while (1)
  {
    v0 = *v0;
    if (!v0)
    {
      break;
    }

    if (*v0[1])
    {
      v1 = off_10000DEC0;
      if (off_10000DEC0)
      {
        do
        {
          v2 = v1[2];
          if ((*(v2 + 24) & 2) != 0)
          {
            if (*v1)
            {
              v5 = *(v2 + 48);
              v7 = v1[1];
              printf("%-*s");
            }

            else
            {
              v3 = v1[1];
              printf("%s");
            }
          }

          else
          {
            v4 = *(v2 + 48);
            v6 = v1[1];
            printf("%*s");
          }

          if (!*v1)
          {
            break;
          }

          putchar(32);
          v1 = *v1;
        }

        while (v1);
      }

      putchar(10);
      return;
    }
  }
}

char *sub_100000BE0(uint64_t a1, int a2, int a3)
{
  if (dword_10000E114)
  {
    if (!dword_10000E11C || dword_10000E118 != 0)
    {

      return strdup("");
    }
  }

  v37 = 0;
  if (*(*a1 + 36) == 5)
  {
    v8 = asprintf(&v37, "<defunct>");
    goto LABEL_56;
  }

  size[0] = 0;
  *&size[1] = 0x800000001;
  v38 = 4;
  if (sysctl(&size[1], 2u, size, &v38, 0, 0) == -1)
  {
    goto LABEL_55;
  }

  v9 = malloc_type_malloc(size[0], 0x100004077774924uLL);
  if (!v9)
  {
    goto LABEL_55;
  }

  v10 = v9;
  *&size[1] = 0x3100000001;
  size[3] = *(*a1 + 40);
  v38 = size[0];
  if (sysctl(&size[1], 3u, v9, &v38, 0, 0) == -1)
  {
    goto LABEL_54;
  }

  v12 = (v10 + 1);
  v11 = *v10;
  v13 = v38;
  v14 = v10 + v38;
  if (v38 >= 5)
  {
    do
    {
      if (!*v12)
      {
        break;
      }

      ++v12;
    }

    while (v12 < v14);
  }

  if (v12 == v14)
  {
    goto LABEL_54;
  }

  if (v12 < v14)
  {
    v15 = v10 + v38 - v12;
    while (!*v12)
    {
      ++v12;
      if (!--v15)
      {
        v12 = v10 + v38;
        break;
      }
    }
  }

  if (v12 == v14)
  {
    goto LABEL_54;
  }

  v16 = 0;
  LODWORD(v17) = 0;
  v18 = v12;
  if (v11 >= 1 && v12 < v14)
  {
    v19 = 0;
    v17 = 0;
    v16 = 0;
    v20 = 0;
    v18 = v12;
    while (1)
    {
      if (!*v18)
      {
        v21 = v19;
        if (v16)
        {
          *v16 = 32;
          v21 = v17;
        }

        if (!a3)
        {
          goto LABEL_50;
        }

        ++v20;
        v13 = v38;
        v17 = v21;
        v16 = v18;
      }

      ++v18;
      if (v20 < v11)
      {
        v19 = (v19 + 1);
        if (v18 < v10 + v13)
        {
          continue;
        }
      }

      break;
    }
  }

  if (!a3 || !dword_10000E110)
  {
    goto LABEL_49;
  }

  if (!getuid())
  {
    v24 = v38;
    if (v18 < v10 + v38)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v22 = *(*a1 + 392);
  v23 = getuid();
  v24 = v38;
  if (v22 != v23 || v18 >= v10 + v38)
  {
LABEL_49:
    LODWORD(v21) = v17;
    v18 = v16;
LABEL_50:
    if (v18)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  while (1)
  {
LABEL_44:
    v26 = v16;
    if (*v18)
    {
      goto LABEL_48;
    }

    v16 = v18;
    if (!v26)
    {
      goto LABEL_48;
    }

    if (v18 == v26 + 1)
    {
      break;
    }

    *v26 = 32;
    v24 = v38;
    v16 = v18;
LABEL_48:
    if (++v18 >= v10 + v24)
    {
      goto LABEL_49;
    }
  }

  LODWORD(v21) = v17;
  v18 = v26;
LABEL_51:
  if (v18 != v12)
  {
    v27 = asprintf(&v37, "%s", v12);
    free(v10);
    goto LABEL_57;
  }

LABEL_54:
  free(v10);
LABEL_55:
  v28 = *a1 + 243;
  v8 = asprintf(&v37, "(%s)");
LABEL_56:
  v27 = v8;
  LODWORD(v21) = v8;
LABEL_57:
  if (!dword_10000E130)
  {
    v29 = v37;
    if (a2)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  v29 = &v37[v27 - 1];
  while (v29 > v37)
  {
    v30 = *v29--;
    if (v30 == 47)
    {
      v29 += 2;
      break;
    }
  }

  if (!a2)
  {
LABEL_66:
    v34 = &v29[v21];
    v36 = *v34;
    v35 = v34 + 1;
    if (v36)
    {
      v29 = v35;
    }

    else
    {
      v29 += v21;
    }
  }

LABEL_63:
  v31 = strlen(v29);
  v32 = malloc_type_malloc((4 * v31) | 1, 0x2F4F9D57uLL);
  if (!v32)
  {
    sub_100004998();
  }

  v33 = v32;
  strvis(v32, v29, 88);
  free(v37);
  return v33;
}

void sub_10000101C(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = sub_100000BE0(a1, a3, a4);
  v9 = v8;
  if (*a2)
  {
    printf("%-*.*s", *(v7 + 48), *(v7 + 48), v8);
  }

  else if (dword_10000E128)
  {
    v10 = *(v7 + 48) - dword_10000E13C + dword_10000E128;
    if (v10 < 1 || a5 != 0)
    {
      v10 = *(v7 + 48);
    }

    if (v10 >= 1)
    {
      v12 = v10 + 1;
      v13 = v8;
      do
      {
        v14 = *v13;
        if (!*v13)
        {
          break;
        }

        ++v13;
        putchar(v14);
        --v12;
      }

      while (v12 > 1);
    }
  }

  else
  {
    fputs(v8, __stdoutp);
  }

  free(v9);
}

size_t sub_100001114(uint64_t a1)
{
  v1 = sub_100000BE0(a1, 1, dword_10000E130 == 0);
  v2 = strlen(v1);
  free(v1);
  return v2;
}

size_t sub_100001164(uint64_t a1)
{
  v1 = sub_100000BE0(a1, 1, 1);
  v2 = strlen(v1);
  free(v1);
  return v2;
}

size_t sub_1000011A4(uint64_t a1)
{
  v1 = sub_100000BE0(a1, 1, 0);
  v2 = strlen(v1);
  free(v1);
  return v2;
}

uint64_t sub_100001260(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) + 48);
  v3 = getpwuid(*(*a1 + 420));
  if (v3)
  {
    pw_name = v3->pw_name;
  }

  else
  {
    pw_name = "UNKNOWN";
  }

  if (!*pw_name)
  {
    pw_name = "-";
  }

  return printf("%-*s", v2, pw_name);
}

uint64_t sub_1000012D0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!dword_10000E114)
  {
    v4 = *a1;
    v5 = *(*a1 + 36);
    if (v5 == 5)
    {
      v6 = 90;
    }

    else if (v5 == 4)
    {
      v6 = 84;
    }

    else
    {
      v6 = aRusith[*(a1 + 85)];
    }

    v14 = v6;
    v9 = *(v4 + 32);
    v10 = *(v4 + 242);
    if (v10 < 0)
    {
      v11 = 60;
    }

    else
    {
      if (!v10)
      {
        v12 = &v15;
        if ((v9 & 0x800) == 0)
        {
LABEL_16:
          if ((v9 & 0x2000) != 0 && v5 != 5)
          {
            *v12++ = 69;
          }

          if ((v9 & 0x10) != 0)
          {
            *v12++ = 86;
          }

          if ((v9 & 0x200) != 0)
          {
            *v12++ = 76;
          }

          if ((*(*a1 + 612) & 2) != 0)
          {
            *v12++ = 115;
          }

          if ((v9 & 2) != 0 && *(*a1 + 564) == *(*a1 + 576))
          {
            *v12++ = 43;
          }

          *v12 = 0;
          goto LABEL_29;
        }

LABEL_15:
        *v12++ = 88;
        goto LABEL_16;
      }

      v11 = 78;
    }

    v12 = v16;
    v15 = v11;
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (dword_10000E11C)
  {
    v3 = a1[57] + 60 * dword_10000E118;
    v14 = aRusith[sub_100004498(*(v3 + 24), *(v3 + 36))];
    v15 = 0;
LABEL_29:
    v7 = *(v2 + 48);
    v8 = &v14;
    return printf("%-*s", v7, v8);
  }

  v7 = *(v2 + 48);
  v8 = " ";
  return printf("%-*s", v7, v8);
}

uint64_t sub_100001488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!dword_10000E114)
  {
    v5 = *(v2 + 48);
    v11 = *(a1 + 348);
    return printf("%*d");
  }

  if (!dword_10000E11C)
  {
    v6 = *(v2 + 48);
    return printf("%*d");
  }

  v3 = *(a1 + 456) + 60 * dword_10000E118;
  v4 = *(v3 + 20);
  if (v4 == 1)
  {
    v8 = 48;
  }

  else
  {
    if (v4 != 2 && v4 != 4)
    {
      goto LABEL_13;
    }

    v8 = 44;
  }

  v9 = *(v3 + v8);
LABEL_13:
  v10 = (*(v2 + 48) - 1);
  return printf("%*d%c");
}

uint64_t sub_10000156C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (dword_10000E114)
  {
    if (!dword_10000E11C || dword_10000E118 != 0)
    {
      return printf("%-*s", *(v2 + 48), " ");
    }
  }

  v5 = *(v2 + 48);
  v6 = user_from_uid(*(*a1 + 420), 0);
  return printf("%-*s", v5, v6);
}

uint64_t sub_100001628(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) + 48);
  v3 = user_from_uid(*(*a1 + 392), 0);
  return printf("%-*s", v2, v3);
}

uint64_t sub_10000169C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*a1 + 572);
  if (v3 == -1)
  {
    return printf("%*s", *(v2 + 48), "??");
  }

  snprintf(__str, 0x10uLL, "%d/%d", HIBYTE(v3), v3 & 0xFFFFFF);
  return printf("%*s", *(v2 + 48), __str);
}

uint64_t sub_100001750(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (dword_10000E114)
  {
    if (!dword_10000E11C || dword_10000E118 != 0)
    {
      v5 = (*(v3 + 48) - 1);
      return printf("%*s ");
    }
  }

  v6 = *(*a1 + 572);
  if (v6 == -1 || (v7 = devname(v6, 0x2000u)) == 0)
  {
    v9 = (*(v3 + 48) - 1);
    return printf("%*s ");
  }

  v8 = *v7;
  if (v8 == 99)
  {
    if (v7[1] == 117)
    {
      v7[2];
    }
  }

  else if (v8 == 116 && v7[1] == 116)
  {
    v7[2];
  }

  v11 = (*(v3 + 48) - 1);
  *(*a1 + 612);
  return printf("%*.*s%c");
}

uint64_t sub_100001880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*a1 + 572);
  v4 = "??";
  if (v3 != -1)
  {
    v5 = devname(v3, 0x2000u);
    if (v5)
    {
      v4 = v5;
    }
  }

  return printf("%-*s", *(v2 + 48), v4);
}

uint64_t sub_1000018E4(time_t **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (dword_10000DE98 < 0)
  {
    dword_10000DE98 = *nl_langinfo(4) != 0;
  }

  v11 = **a1;
  v4 = localtime(&v11);
  v5 = qword_10000E120 - **a1;
  if (v5 > 86399)
  {
    if (v5 > 0x93A7F)
    {
      v9 = "%e%b%y";
      goto LABEL_11;
    }

    v6 = dword_10000DE98;
    v7 = "%a%I%p";
    v8 = "%a%H  ";
  }

  else
  {
    v6 = dword_10000DE98;
    v7 = "%l:%M%p";
    v8 = "%k:%M  ";
  }

  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

LABEL_11:
  strftime(v12, 0x64uLL, v9, v4);
  return printf("%-*s", *(v3 + 48), v12);
}

uint64_t sub_100001A1C(time_t **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v5 = **a1;
  v3 = localtime(&v5);
  strftime(v6, 0x63uLL, "%c", v3);
  return printf("%-*s", *(v2 + 48), v6);
}

char *sub_100001AB4(void **a1)
{
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  gettimeofday(&v5, 0);
  v2 = v5.tv_sec - **a1;
  v4 = 0;
  if (v2 < 8640001)
  {
    if (v2 < 86401)
    {
      if (v2 < 3601)
      {
        asprintf(&v4, "%02ld:%02ld");
      }

      else
      {
        asprintf(&v4, "%02ld:%02ld:%02ld");
      }
    }

    else
    {
      asprintf(&v4, "%02ld-%02ld:%02ld:%02ld");
    }
  }

  else
  {
    asprintf(&v4, "%ld-%02ld:%02ld:%02ld");
  }

  return v4;
}

void sub_100001CC4(void **a1, uint64_t a2)
{
  v3 = sub_100001AB4(a1);
  printf("%*s", *(*(a2 + 16) + 48), v3);

  free(v3);
}

size_t sub_100001D20(void **a1)
{
  v1 = sub_100001AB4(a1);
  v2 = strlen(v1);
  free(v1);
  return v2;
}

uint64_t sub_100001D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(*a1 + 96))
  {
    v3 = *(v2 + 48);
    if (*(*a1 + 104))
    {
      return printf("%-*.*s");
    }

    else
    {
      return printf("%-*lx");
    }
  }

  else
  {
    v5 = *(v2 + 48);
    return printf("%-*s");
  }
}

uint64_t sub_100001E54(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a1[101] + a1[96];
  v4 = v3 <= 999999;
  if (v3 > 999999)
  {
    v3 -= 1000000;
  }

  v5 = a1[103] + a1[98];
  v6 = a1[97] + a1[95] + a1[100];
  if (!v4)
  {
    ++v6;
  }

  if (v5 <= 999999)
  {
    v7 = a1[103] + a1[98];
  }

  else
  {
    v7 = v5 - 1000000;
  }

  v8 = v7 + v3;
  v9 = v6 + a1[102];
  if (v5 > 999999)
  {
    ++v9;
  }

  if (v8 > 999999)
  {
    ++v9;
    v8 -= 1000000;
  }

  snprintf(__str, 0x80uLL, "%3ld:%02ld.%02ld", ((v8 + 5000) / 1000000 + v9) / 60, ((v8 + 5000) / 1000000 + v9) % 60, (v8 + 5000) / 10000 % 100);
  return printf("%*s", *(v2 + 48), __str);
}

uint64_t sub_100001FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (dword_10000E114)
  {
    v3 = dword_10000E11C;
    if (dword_10000E11C)
    {
      v4 = (*(a1 + 456) + 60 * dword_10000E118);
      v3 = *v4;
      v5 = v4[1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = *(a1 + 404) + *(a1 + 384);
    v3 = *(a1 + 400) + *(a1 + 380);
    if (v5 >= 1000000)
    {
      ++v3;
      v5 -= 1000000;
    }
  }

  snprintf(__str, 0x80uLL, "%3ld:%02ld.%02ld", ((v5 + 5000) / 1000000 + v3) / 60, ((v5 + 5000) / 1000000 + v3) % 60, (v5 + 5000) / 10000 % 100);
  return printf("%*s", *(v2 + 48), __str);
}

uint64_t sub_100002168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (dword_10000E114)
  {
    v3 = dword_10000E11C;
    if (dword_10000E11C)
    {
      v4 = *(a1 + 456) + 60 * dword_10000E118;
      v3 = *(v4 + 8);
      v5 = *(v4 + 12);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = *(a1 + 412) + *(a1 + 392);
    v3 = *(a1 + 408) + *(a1 + 388);
    if (v5 >= 1000000)
    {
      ++v3;
      v5 -= 1000000;
    }
  }

  snprintf(__str, 0x80uLL, "%3ld:%02ld.%02ld", ((v5 + 5000) / 1000000 + v3) / 60, ((v5 + 5000) / 1000000 + v3) % 60, (v5 + 5000) / 10000 % 100);
  return printf("%*s", *(v2 + 48), __str);
}

uint64_t sub_1000022FC(uint64_t a1, uint64_t a2)
{
  if (dword_10000E114)
  {
    v2 = dword_10000E11C;
    if (dword_10000E11C)
    {
      v2 = *(*(a1 + 456) + 60 * dword_10000E118 + 16);
    }
  }

  else
  {
    v2 = *(a1 + 344);
  }

  return printf("%*.1f", *(*(a2 + 16) + 48), v2 * 100.0 / 1000.0);
}

double sub_100002394(uint64_t a1)
{
  if (dword_10000E10C)
  {
    v2 = dword_10000E140;
  }

  else
  {
    v2 = sub_100000A44();
    dword_10000E140 = v2;
  }

  result = 0.0;
  if (!v2)
  {
    return *(a1 + 372) / qword_10000E100 * 100.0;
  }

  return result;
}

uint64_t sub_100002414(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) + 48);
  v3 = sub_100002394(a1);
  return printf("%*.1f", v2, v3);
}

uint64_t sub_100002458(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 313))
  {
    v2 = *(a1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return printf("%*ld", *(*(a2 + 16) + 48), v2);
}

uint64_t sub_100002524(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = &byte_10000DE9D;
  if ((*(a2 + 24) & 2) != 0)
  {
    byte_10000DE9D = 45;
    v5 = &byte_10000DE9E;
  }

  *v5 = 42;
  v6 = v5 + 1;
  do
  {
    v7 = *v4++;
    *v6++ = v7;
  }

  while (v7);
  v8 = *(a2 + 64);
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v10 = fmtcheck(asc_10000DE9C, "%*hd");
        v11 = *(a2 + 48);
        v12 = *a1;
      }

      else
      {
        v10 = fmtcheck(asc_10000DE9C, "%*hu");
        v11 = *(a2 + 48);
        v12 = *a1;
      }
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_27;
      }

      v10 = fmtcheck(asc_10000DE9C, "%*hhu");
      v11 = *(a2 + 48);
      v12 = *a1;
    }

    else
    {
      v10 = fmtcheck(asc_10000DE9C, "%*hhd");
      v11 = *(a2 + 48);
      v12 = *a1;
    }
  }

  else
  {
    if (v8 > 5)
    {
      switch(v8)
      {
        case 6:
          v9 = "%*ld";
          goto LABEL_25;
        case 7:
          v9 = "%*lu";
          goto LABEL_25;
        case 8:
          v9 = "%*lx";
LABEL_25:
          v10 = fmtcheck(asc_10000DE9C, v9);
          v11 = *(a2 + 48);
          v12 = *a1;
          return printf(v10, v11, v12);
      }

LABEL_27:
      errx(1, "unknown type %d", *(a2 + 64));
    }

    if (v8 == 4)
    {
      v13 = "%*d";
    }

    else
    {
      v13 = "%*u";
    }

    v10 = fmtcheck(asc_10000DE9C, v13);
    v11 = *(a2 + 48);
    v12 = *a1;
  }

  return printf(v10, v11, v12);
}

uint64_t sub_10000270C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!*(a1 + 313))
  {
    return printf("%*s", *(v3 + 48), "-");
  }

  v4 = (a1 + *(v3 + 56) + 24);

  return sub_100002524(v4, v3);
}

uint64_t sub_10000276C(uint64_t a1, uint64_t a2)
{
  buffer = 0;
  v12 = 0;
  v3 = proc_pidinfo(*(*a1 + 40), 12, 0, &buffer, 16);
  v4 = *(a2 + 16);
  if (v3 != 16)
  {
    v6 = *(v4 + 48);
    return printf("%*s");
  }

  v5 = *v4;
  if (!strcmp(*v4, "wql"))
  {
    v7 = off_100008260[BYTE4(v12) & 3];
    v9 = *(v4 + 48);
    return printf("%*s");
  }

  if (strcmp(v5, "wqr"))
  {
    strcmp(v5, "wqb");
  }

  v10 = *(v4 + 48);
  return printf("%*d");
}

uint64_t sub_100002864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*a1 + 40);
  v4 = kpersona_pidinfo();
  v5 = *(v2 + 48);
  if (v4)
  {
    return printf("%*s");
  }

  else
  {
    return printf("%*u");
  }
}

uint64_t start(int a1, uint64_t a2)
{
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  size = 0;
  v123 = 0;
  *v142 = xmmword_100004FB0;
  v4 = compat_mode("bin/ps", "unix2003");
  setlocale(0, "");
  time(&qword_10000E120);
  v5 = getenv("COLUMNS");
  if (v5 && *v5)
  {
    v6 = v4;
    v8 = atoi(v5);
    goto LABEL_12;
  }

  if (ioctl(1, 0x40087468uLL, &v123) != -1 || ioctl(2, 0x40087468uLL, &v123) != -1)
  {
    v6 = v4;
    v9 = WORD1(v123);
    if (!WORD1(v123))
    {
      v8 = 79;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v6 = v4;
  v7 = ioctl(0, 0x40087468uLL, &v123);
  v8 = 79;
  if (v7 != -1)
  {
    v9 = WORD1(v123);
    if (WORD1(v123))
    {
LABEL_10:
      v8 = v9 - 1;
    }
  }

LABEL_12:
  dword_10000E128 = v8;
  if (a1 < 2)
  {
    goto LABEL_50;
  }

  if (v6)
  {
    v10 = "aACcdeEfg:G:hjLlMmO:o:p:rSTt:U:u:vwx";
  }

  else
  {
    v10 = "aACcdeEgG:hjLlMmO:o:p:rSTt:U:uvwx";
  }

  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *v11;
  if (*v11)
  {
    v14 = *v11;
    v15 = *(a2 + 8);
    while (1)
    {
      v16 = strchr(v10, v14);
      if (v16)
      {
        if (v16[1] == 58)
        {
          break;
        }
      }

      v17 = *++v15;
      v14 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    if (v13 == 45)
    {
      goto LABEL_48;
    }

    v18 = 0;
  }

  else
  {
LABEL_21:
    v15 = 0;
    v18 = 1;
  }

  v19 = strlen(v11);
  v20 = &v11[v19 - 1];
  v21 = *v20;
  if (v21 == 116)
  {
    if (v13 != 45 && v20 == v15)
    {
      if (v12)
      {
        v67 = *v12;
        if (v67 != 45 && (v67 - 48) > 9)
        {
          goto LABEL_38;
        }
      }

      *v20 = 84;
      v13 = *v11;
    }
  }

  else
  {
    if ((v21 - 48) < 0xA)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      while (v20 >= v11)
      {
        v23 = *v20;
        v24 = v23 != 44 && (v23 - 48) > 9;
        if (v24)
        {
          break;
        }

        --v20;
      }

      v26 = 0;
      v25 = v20 + 1;
      goto LABEL_40;
    }
  }

  if (v13 != 45)
  {
LABEL_38:
    v25 = 0;
    v26 = 1;
LABEL_40:
    v27 = malloc_type_malloc(v19 + 3, 0xDDC02D29uLL);
    if (!v27)
    {
      sub_100004958();
    }

    v28 = v27;
    v29 = v27;
    if (*v11 != 45)
    {
      v6 = 0;
      *v27 = 45;
      v29 = v27 + 1;
    }

    if (v26)
    {
      v30 = v29;
      v31 = v11;
    }

    else
    {
      memcpy(v29, v11, v25 - v11);
      v29[v25 - v11] = 112;
      v30 = &v29[v25 - v11 + 1];
      v31 = v25;
    }

    strcpy(v30, v31);
    goto LABEL_49;
  }

LABEL_48:
  v28 = v11;
LABEL_49:
  *(a2 + 8) = v28;
LABEL_50:
  byte_10000E148 = 0;
  *&v139 = 0;
  DWORD2(v139) = 4;
  *&v140 = sub_100003ACC;
  *(&v140 + 1) = "group";
  v141 = 0;
  *&v136 = 0;
  DWORD2(v136) = 4;
  *&v137 = sub_100003C10;
  *(&v137 + 1) = "process group";
  v138 = 0;
  *&v133 = 0;
  DWORD2(v133) = 4;
  *&v134 = sub_100003C10;
  *(&v134 + 1) = "process id";
  v135 = 0;
  *&v130 = 0;
  DWORD2(v130) = 4;
  *&v131 = sub_100003D24;
  *(&v131 + 1) = "ruser";
  v132 = 0;
  *&v127 = 0;
  DWORD2(v127) = 4;
  *&v128 = sub_100003E60;
  *(&v128 + 1) = "tty";
  v129 = 0;
  *&v124 = 0;
  DWORD2(v124) = 4;
  *&v125 = sub_100003D24;
  *(&v125 + 1) = "user";
  v32 = v6;
  if (v6)
  {
    v33 = "aACcdeEfg:G:hjLlMmO:o:p:rSTt:U:u:vwx";
  }

  else
  {
    v33 = "aACcdeEgG:hjLlMmO:o:p:rSTt:U:uvwx";
  }

  v126 = 0;
  v34 = getopt(a1, a2, v33);
  if (v34 == -1)
  {
    v119 = 0;
    v35 = 0;
    HIDWORD(v120) = 0;
    v36 = 0;
    LODWORD(v37) = -1;
    v38 = 1;
    v39 = 1;
    v40 = v32;
    v41 = aUserPidPpidPgi + 37;
  }

  else
  {
    v118 = 0;
    v120 = 0;
    v36 = 0;
    v35 = 0;
    v42 = 0;
    v43 = aUidPidPpidFlag;
    if (!v32)
    {
      v43 = aUidPidPpidCpuP;
    }

    v117 = v43;
    v37 = 0xFFFFFFFFLL;
    v40 = v32;
    v41 = &aUserPidPpidPgi[37];
    while (2)
    {
      v44 = v37;
      v37 = 0;
      switch(v34)
      {
        case 'A':
          goto LABEL_74;
        case 'C':
          dword_10000E12C = 1;
          goto LABEL_106;
        case 'E':
          goto LABEL_76;
        case 'G':
          v48 = optarg;
          v49 = &v139;
          goto LABEL_96;
        case 'L':
          sub_100000678();
          exit(0);
        case 'M':
          sub_1000007B4(aUserPidTtCpuSt, 0);
          aUserPidTtCpuSt[0] = 0;
          v42 = 1;
          dword_10000E114 = 1;
          goto LABEL_106;
        case 'O':
          v53 = aPid_1;
          v42 = 1;
          sub_1000007B4(aPid_1, 1);
          sub_1000007B4(optarg, 1);
          sub_1000007B4(aTtStateTimeCom, 1);
          aTtStateTimeCom[0] = 0;
          v41 = aUserPidPpidPgi + 37;
          goto LABEL_92;
        case 'S':
          dword_10000E134 = 1;
          goto LABEL_106;
        case 'T':
          v48 = ttyname(0);
          optarg = v48;
          if (!v48)
          {
            sub_1000049B0();
          }

          goto LABEL_90;
        case 'U':
          v48 = optarg;
          v49 = &v130;
          goto LABEL_96;
        case 'X':
          goto LABEL_107;
        case 'a':
          ++v35;
          LODWORD(v120) = 1;
          goto LABEL_106;
        case 'c':
          dword_10000E130 = 1;
          goto LABEL_106;
        case 'd':
          LODWORD(v118) = 1;
          goto LABEL_74;
        case 'e':
          if (!v40)
          {
LABEL_76:
            dword_10000E110 = 1;
            goto LABEL_106;
          }

LABEL_74:
          ++v35;
          LODWORD(v120) = 1;
LABEL_75:
          v37 = 1;
          goto LABEL_107;
        case 'f':
          *(v41 + 74) = 0;
          if (!v40 || v124)
          {
            sub_1000007B4(aUserPidPpidCpu, 0);
          }

          else
          {
            sub_1000007B4(aUidPidPpidCpuC, 0);
            v52 = sub_100000920("command", 0, 0);
            if (v52)
            {
              *(v52 + 24) = 64;
            }
          }

          goto LABEL_105;
        case 'g':
          if (!v40)
          {
            goto LABEL_106;
          }

          v48 = optarg;
          v49 = &v136;
          goto LABEL_96;
        case 'h':
          v47 = v123;
          if (v123 <= 5u)
          {
            v47 = 22;
          }

          HIDWORD(v120) = v47;
          goto LABEL_106;
        case 'j':
          v46 = aUserPidPpidPgi;
          sub_1000007B4(aUserPidPpidPgi, 0);
          goto LABEL_104;
        case 'l':
          sub_1000007B4(v117, 0);
          aUidPidPpidCpuP[0] = 0;
          goto LABEL_105;
        case 'm':
          v50 = &aUserPidPpidPgi[37];
          v51 = 1;
          goto LABEL_88;
        case 'o':
          v42 = 1;
          sub_1000007B4(optarg, 1);
          goto LABEL_106;
        case 'p':
          sub_1000040B8(&v133, optarg);
          ++v35;
          goto LABEL_106;
        case 'r':
          v50 = aUserPidPpidPgi + 37;
          v51 = 2;
LABEL_88:
          *(v50 + 83) = v51;
          goto LABEL_106;
        case 't':
          v48 = optarg;
LABEL_90:
          v49 = &v127;
          goto LABEL_96;
        case 'u':
          if (v40)
          {
            v48 = optarg;
            v49 = &v124;
LABEL_96:
            sub_1000040B8(v49, v48);
            ++v35;
            v36 = 1;
          }

          else
          {
            v46 = aUserPidCpuMemV;
            sub_1000007B4(aUserPidCpuMemV, 0);
            dword_10000E14C = 2;
LABEL_104:
            *v46 = 0;
LABEL_105:
            v42 = 1;
          }

          goto LABEL_106;
        case 'v':
          v53 = aPidStateTimeSl;
          sub_1000007B4(aPidStateTimeSl, 0);
          v42 = 1;
          dword_10000E14C = 1;
LABEL_92:
          *v53 = 0;
          goto LABEL_106;
        case 'w':
          if (HIDWORD(v118))
          {
            v45 = 0;
          }

          else
          {
            if (*(v41 + 74) > 130)
            {
              goto LABEL_102;
            }

            v45 = 131;
          }

          *(v41 + 74) = v45;
LABEL_102:
          ++HIDWORD(v118);
LABEL_106:
          v37 = v44;
LABEL_107:
          v34 = getopt(a1, a2, v33);
          if (v34 != -1)
          {
            continue;
          }

          v38 = v42 == 0;
          v39 = v118 == 0;
          v119 = v120 != 0;
          break;
        case 'x':
          goto LABEL_75;
        default:
          goto LABEL_173;
      }

      break;
    }
  }

  v54 = optind;
  if (!isatty(1))
  {
    *(v41 + 74) = 0;
  }

  v55 = *(a2 + 8 * v54);
  if (v55)
  {
    v56 = (a2 + 8 * v54 + 8);
    do
    {
      if (*v55 - 48 > 9)
      {
        v74 = __stderrp;
        v75 = getprogname();
        fprintf(v74, "%s: illegal argument: %s\n", v75, *(v56 - 1));
LABEL_173:
        sub_100004278(v40);
      }

      sub_1000040B8(&v133, v55);
      v57 = *v56++;
      v55 = v57;
    }

    while (v57);
  }

  if (byte_10000E148 == 1)
  {
    goto LABEL_176;
  }

  if (v37 >= 0)
  {
    v58 = v37;
  }

  else
  {
    v58 = v36;
  }

  v121 = v58;
  if (v38)
  {
    if (v40 && v124)
    {
      sub_1000007B4("uid", 0);
    }

    if (v40)
    {
      v59 = aPidTtyTimeComm;
    }

    else
    {
      v59 = aPidTtStateTime;
    }

    sub_1000007B4(v59, 0);
  }

  if (!v35)
  {
    v126 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    if (!v126)
    {
      sub_100004958();
    }

    *&v124 = 0x100000001;
    *v126 = getuid();
    v35 = 1;
  }

  v60 = off_10000DEC0;
  if (off_10000DEC0)
  {
    do
    {
      v61 = v60[2];
      v62 = *(v61 + 24);
      if ((v62 & 8) != 0)
      {
        *(v61 + 80) = *(v61 + 48);
        *(v61 + 48) = 0;
      }

      if ((v62 & 4) != 0)
      {
        byte_10000E158 = 1;
      }

      v60 = *v60;
    }

    while (v60);
  }

  v63 = 0;
  if (v35 != 1)
  {
    v64 = 0;
    v65 = 0;
    goto LABEL_156;
  }

  v64 = 0;
  v65 = 0;
  if (v139 == 1)
  {
    goto LABEL_156;
  }

  if (v136 == 1)
  {
    v66 = &v138;
    v65 = 2;
LABEL_155:
    v63 = **v66;
    v64 = 1;
    goto LABEL_156;
  }

  v65 = v133;
  if (v133 == 1)
  {
    v66 = &v135;
    goto LABEL_155;
  }

  if (v130 == 1)
  {
    v66 = &v132;
    v65 = 6;
    goto LABEL_155;
  }

  if (v127 == 1)
  {
    v66 = &v129;
    v65 = 4;
    goto LABEL_155;
  }

  if (v124 == 1)
  {
    v66 = &v126;
    if (v121)
    {
      v65 = 6;
    }

    else
    {
      v65 = 5;
    }

    goto LABEL_155;
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
LABEL_156:
  *v142 = 0xE00000001;
  v142[2] = v65;
  v142[3] = v63;
  if ((sysctl(v142, 4u, 0, &size, 0, 0) & 0x80000000) == 0)
  {
    v69 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v70 = 0;
    v71 = size;
    while (1)
    {
      size = v71;
      v72 = sysctl(v142, 4u, v69, &size, 0, 0);
      if ((v72 & 0x80000000) == 0)
      {
        break;
      }

      if (v70 > 0x3E7)
      {
        goto LABEL_157;
      }

      if (*__error() != 12 || sysctl(v142, 4u, 0, &size, 0, 0))
      {
        goto LABEL_165;
      }

      v69 = malloc_type_realloc(v69, size, 0x10B2040B74D5165uLL);
      v71 = size;
LABEL_166:
      ++v70;
    }

    if (!v72)
    {
      v73 = size / 0x288;
      if ((size / 0x288) >= 1)
      {
        qword_10000E150 = malloc_type_calloc((size / 0x288) & 0x7FFFFFFF, 0x1D8uLL, 0x10300409D75B528uLL);
        if (!qword_10000E150)
        {
          sub_100004958();
        }

        LODWORD(v76) = 0;
        v83 = v119 | v64;
        v84 = v69;
        while (1)
        {
          v85 = v84[10];
          if (v85 && (v39 || v85 != v84[141]))
          {
            v86 = v133;
            if (v133 >= 1)
            {
              v87 = v135;
              do
              {
                v88 = *v87++;
                if (v85 == v88)
                {
                  goto LABEL_210;
                }
              }

              while (--v86);
            }

            if (v121 || (v97 = v84[143], v97 != -1) && (v84[8] & 2) != 0 && devname(v97, 0x2000u))
            {
              if (v83)
              {
                goto LABEL_210;
              }

              v98 = v139;
              if (v139 >= 1)
              {
                v99 = v141;
                do
                {
                  v100 = *v99++;
                  if (v84[100] == v100)
                  {
                    goto LABEL_210;
                  }
                }

                while (--v98);
              }

              v101 = v136;
              if (v136 >= 1)
              {
                v102 = v138;
                do
                {
                  v103 = *v102++;
                  if (v84[141] == v103)
                  {
                    goto LABEL_210;
                  }
                }

                while (--v101);
              }

              v104 = v130;
              if (v130 >= 1)
              {
                v105 = v132;
                do
                {
                  v106 = *v105++;
                  if (v84[98] == v106)
                  {
                    goto LABEL_210;
                  }
                }

                while (--v104);
              }

              v107 = v127;
              if (v127 >= 1)
              {
                v108 = v129;
                do
                {
                  v109 = *v108++;
                  if (v84[143] == v109)
                  {
                    goto LABEL_210;
                  }
                }

                while (--v107);
              }

              v110 = v124;
              if (v124 >= 1)
              {
                v111 = v126;
                while (1)
                {
                  v112 = *v111++;
                  if (v84[105] == v112)
                  {
                    break;
                  }

                  if (!--v110)
                  {
                    goto LABEL_221;
                  }
                }

LABEL_210:
                v89 = qword_10000E150 + 472 * v76;
                *v89 = v84;
                sub_1000045C8(v89);
                if (byte_10000E158 == 1)
                {
                  *(v89 + 313) = 0;
                  v90 = strlen((*v89 + 243));
                  v91 = malloc_type_malloc(v90 + 3, 0xE7DE01FDuLL);
                  *(v89 + 320) = v91;
                  strcpy(v91, (*v89 + 243));
                  v92 = malloc_type_malloc(0xAuLL, 0xC41CA1F5uLL);
                  *(v89 + 328) = v92;
                  *v92 = 0;
                }

                v93 = off_10000DEC0;
                if (off_10000DEC0)
                {
                  do
                  {
                    v94 = v93[2];
                    if ((*(v94 + 24) & 8) != 0)
                    {
                      v95 = (*(v94 + 40))(v89);
                      if (v95 <= *(v94 + 48))
                      {
                        LOWORD(v95) = *(v94 + 48);
                      }

                      else
                      {
                        *(v94 + 48) = v95;
                      }

                      v96 = *(v94 + 80);
                      if (v96 < v95)
                      {
                        *(v94 + 48) = v96;
                      }
                    }

                    v93 = *v93;
                  }

                  while (v93);
                }

                LODWORD(v76) = v76 + 1;
              }
            }
          }

LABEL_221:
          v84 += 162;
          v24 = v73 <= 1;
          LODWORD(v73) = v73 - 1;
          if (v24)
          {
            goto LABEL_175;
          }
        }
      }

      LODWORD(v76) = 0;
LABEL_175:
      sub_1000042E4();
      sub_100000AE8();
      if (v76)
      {
        qsort(qword_10000E150, v76, 0x1D8uLL, sub_100004354);
        if (v76 <= 0)
        {
          v113 = qword_10000E150;
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = HIDWORD(v120) - 4;
          v76 = v76;
          do
          {
            if (dword_10000E114)
            {
              dword_10000E11C = 1;
              if (*(qword_10000E150 + 472 * v77 + 440))
              {
                v80 = 0;
                do
                {
                  dword_10000E118 = v80;
                  v81 = off_10000DEC0;
                  if (off_10000DEC0)
                  {
                    do
                    {
                      (*(v81[2] + 32))(qword_10000E150 + 472 * v77, v81);
                      if (!*v81)
                      {
                        break;
                      }

                      putchar(32);
                      v81 = *v81;
                    }

                    while (v81);
                  }

                  putchar(10);
                  if (HIDWORD(v120))
                  {
                    if (v78 == v79)
                    {
                      putchar(10);
                      sub_100000AE8();
                      v78 = 0;
                    }

                    else
                    {
                      ++v78;
                    }
                  }

                  ++v80;
                }

                while (v80 < *(qword_10000E150 + 472 * v77 + 440));
              }

              dword_10000E11C = 0;
            }

            else
            {
              v82 = off_10000DEC0;
              if (off_10000DEC0)
              {
                do
                {
                  (*(v82[2] + 32))(qword_10000E150 + 472 * v77, v82);
                  if (!*v82)
                  {
                    break;
                  }

                  putchar(32);
                  v82 = *v82;
                }

                while (v82);
              }

              putchar(10);
              if (HIDWORD(v120))
              {
                if (v78 == v79)
                {
                  putchar(10);
                  sub_100000AE8();
                  v78 = 0;
                }

                else
                {
                  ++v78;
                }
              }
            }

            ++v77;
          }

          while (v77 != v76);
          v113 = qword_10000E150;
          v114 = qword_10000E150 + 436;
          do
          {
            if (!*v114 && *(v114 + 4))
            {
              free(*(v114 + 20));
            }

            v114 += 472;
            --v76;
          }

          while (v76);
        }

        free(v69);
        free(v113);
        *(&v139 + 4) = 0;
        LODWORD(v139) = 0;
        if (v141)
        {
          free(v141);
        }

        v140 = 0uLL;
        v141 = 0;
        DWORD2(v133) = 0;
        *&v133 = 0;
        if (v135)
        {
          free(v135);
        }

        v134 = 0uLL;
        v135 = 0;
        *(&v136 + 4) = 0;
        LODWORD(v136) = 0;
        if (v138)
        {
          free(v138);
        }

        v137 = 0uLL;
        v138 = 0;
        DWORD2(v130) = 0;
        *&v130 = 0;
        if (v132)
        {
          free(v132);
        }

        v131 = 0uLL;
        v132 = 0;
        DWORD2(v127) = 0;
        *&v127 = 0;
        if (v129)
        {
          free(v129);
        }

        v128 = 0uLL;
        v129 = 0;
        DWORD2(v124) = 0;
        *&v124 = 0;
        if (v126)
        {
          free(v126);
        }

        v125 = 0uLL;
        v126 = 0;
        v115 = dword_10000E138;
        if (!dword_10000E138)
        {
          v116 = __stdoutp;
          if (ferror(__stdoutp) || fflush(v116))
          {
            sub_1000049CC();
          }

          v115 = dword_10000E138;
        }

        exit(v115);
      }

LABEL_176:
      exit(1);
    }

LABEL_165:
    sleep(1u);
    goto LABEL_166;
  }

LABEL_157:
  perror("Failure calling sysctl");
  return 0;
}

uint64_t sub_100003ACC(uint64_t a1, char *__s)
{
  if (!*__s)
  {
    v12 = *(a1 + 24);
    warnx("Invalid (zero-length) %s name");
LABEL_17:
    result = 0;
    byte_10000E148 = 1;
    return result;
  }

  if (strlen(__s) > 0xFE)
  {
    v13 = *(a1 + 24);
    warnx("%s name too long: %s");
    goto LABEL_17;
  }

  __endptr = 0;
  *__error() = 0;
  v4 = strtoul(__s, &__endptr, 10);
  if (*__error() || (!*__endptr ? (v5 = v4 >> 31 == 0) : (v5 = 0), !v5 || (v6 = getgrgid(v4)) == 0))
  {
    v6 = getgrnam(__s);
    if (!v6)
    {
      v14 = *(a1 + 24);
      warnx("No %s %s '%s'");
      goto LABEL_17;
    }
  }

  v7 = v6;
  v8 = *a1;
  if (*a1 >= *(a1 + 4))
  {
    sub_100004420(a1);
    v8 = *a1;
  }

  gr_gid = v7->gr_gid;
  v10 = *(a1 + 32);
  *a1 = v8 + 1;
  *(v10 + 4 * v8) = gr_gid;
  return 1;
}

uint64_t sub_100003C10(uint64_t a1, const char *a2)
{
  if (*a2)
  {
    __endptr = 0;
    *__error() = 0;
    v4 = strtol(a2, &__endptr, 10);
    v5 = "Invalid %s: %s";
    v6 = __endptr != a2 && *__endptr == 0;
    if (!v6 || (v4 & 0x8000000000000000) != 0 || (v7 = *__error(), v5 = "%s too large: %s", v7) || v4 >> 5 >= 0xC35)
    {
      warnx(v5, *(a1 + 24), a2);
      *__error() = 34;
    }

    if (*__error() == 34)
    {
      result = 0;
      byte_10000E148 = 1;
    }

    else
    {
      v9 = *a1;
      if (*a1 >= *(a1 + 4))
      {
        sub_100004420(a1);
        v9 = *a1;
      }

      v10 = *(a1 + 32);
      *a1 = v9 + 1;
      *(v10 + 4 * v9) = v4;
      return 1;
    }
  }

  else
  {
    sub_1000049E8();
    return 0;
  }

  return result;
}

uint64_t sub_100003D24(uint64_t a1, char *__s)
{
  if (!*__s)
  {
    v12 = *(a1 + 24);
    warnx("Invalid (zero-length) %s name");
    goto LABEL_17;
  }

  if (strlen(__s) > 0xFE)
  {
    v13 = *(a1 + 24);
    warnx("%s name too long: %s");
    goto LABEL_17;
  }

  v4 = getpwnam(__s);
  if (!v4)
  {
    __endptr = 0;
    *__error() = 0;
    v5 = strtoul(__s, &__endptr, 10);
    if (*__error())
    {
      v6 = "No %s named '%s'";
    }

    else
    {
      v6 = "No %s named '%s'";
      if (!*__endptr && !(v5 >> 31))
      {
        v4 = getpwuid(v5);
        if (v4)
        {
          goto LABEL_8;
        }

        v6 = "No %s name or ID matches '%s'";
      }
    }

    warnx(v6, *(a1 + 24), __s);
LABEL_17:
    result = 0;
    byte_10000E148 = 1;
    return result;
  }

LABEL_8:
  v7 = v4;
  v8 = *a1;
  if (*a1 >= *(a1 + 4))
  {
    sub_100004420(a1);
    v8 = *a1;
  }

  pw_uid = v7->pw_uid;
  v10 = *(a1 + 32);
  *a1 = v8 + 1;
  *(v10 + 4 * v8) = pw_uid;
  return 1;
}

uint64_t sub_100003E60(uint64_t a1, char *a2)
{
  v2 = a2;
  memset(&v10, 0, sizeof(v10));
  v11[0] = 0;
  v4 = *a2;
  if (v4 != 47)
  {
    if (v4 == 99 && a2[1] == 111 && !a2[2])
    {
      v2 = "/dev/console";
    }

    else
    {
      __strlcpy_chk();
      __strlcat_chk();
      if (v12[0] != 0x7974742F7665642FLL && (v12[0] != 0x6E6F632F7665642FLL || *(v12 + 5) != 0x656C6F736E6F63))
      {
        __strlcpy_chk();
        __strlcat_chk();
        if (!stat(v11, &v10) && (v10.st_mode & 0xF000) == 0x2000)
        {
          goto LABEL_16;
        }
      }

      v2 = v12;
    }
  }

  if (access(v2, 0) == -1 || stat(v2, &v10) == -1)
  {
    if (v11[0])
    {
      warn("%s and %s");
    }

    else
    {
      warn("%s");
    }

    goto LABEL_28;
  }

  if ((v10.st_mode & 0xF000) != 0x2000)
  {
    if (v11[0])
    {
      warnx("%s and %s: Not a terminal");
    }

    else
    {
      warnx("%s: Not a terminal");
    }

LABEL_28:
    result = 0;
    byte_10000E148 = 1;
    return result;
  }

LABEL_16:
  v6 = *a1;
  if (*a1 >= *(a1 + 4))
  {
    sub_100004420(a1);
    v6 = *a1;
  }

  st_rdev = v10.st_rdev;
  v8 = *(a1 + 32);
  *a1 = v6 + 1;
  *(v8 + 4 * v6) = st_rdev;
  return 1;
}

void sub_1000040B8(uint64_t a1, const char *a2)
{
  v2 = a2;
  LOBYTE(v4) = *a2;
  if (*a2 || ((*(a1 + 16))(a1, v14), (LOBYTE(v4) = *v2) != 0))
  {
    while (1)
    {
      if (v4 == 9 || v4 == 32)
      {
        v10 = *++v2;
        LOBYTE(v4) = v10;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 != 44)
        {
          v5 = 0;
          do
          {
            v6 = v5;
            if (memchr(" \t,", v4, 4uLL))
            {
              v8 = &v14[v6];
              v2 += v6;
              goto LABEL_19;
            }

            v5 = v6 + 1;
            v14[v6] = v4;
            v4 = v2[v6 + 1];
          }

          while (v2[v6 + 1] && v6 < 0x3FF);
          v7 = &v2[v5];
          if (v6 < 0x3FF)
          {
            v8 = &v14[v5];
            v2 = v7;
            goto LABEL_19;
          }

          while (v4 && !memchr(" \t,", v4, 4uLL))
          {
            v9 = *++v7;
            v4 = v9;
          }

          warnx("Value too long: %.*s", v7 - v2, v2);
          byte_10000E148 = 1;
          v2 = v7;
          goto LABEL_20;
        }

LABEL_17:
        v8 = v14;
LABEL_19:
        *v8 = 0;
        (*(a1 + 16))(a1, v14);
LABEL_20:
        v11 = *v2;
        if (*v2)
        {
          do
          {
            if (v11 != 32 && v11 != 9)
            {
              break;
            }

            v12 = *++v2;
            v11 = v12;
          }

          while (v12);
          v13 = v11 == 44;
        }

        else
        {
          v13 = 0;
        }

        v2 += v13;
        LOBYTE(v4) = *v2;
        if (!*v2)
        {
          return;
        }
      }
    }
  }
}

void sub_100004278(int a1)
{
  v1 = "          [-g grp[,grp...]] [-u [uid,uid...]]";
  if (!a1)
  {
    v1 = "          [-u]";
  }

  fprintf(__stderrp, "%s\n%s\n%s\n%s\n", "usage: ps [-AaCcEefhjlMmrSTvwXx] [-O fmt | -o fmt] [-G gid[,gid...]]", v1, "          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]", "       ps [-L]");
  exit(1);
}

void sub_1000042E4()
{
  v0 = dword_10000E13C;
  for (i = off_10000DEC0; i; i = *i)
  {
    v2 = *(i + 2);
    v3 = strlen(*(i + 1));
    v4 = *(v2 + 48);
    if (v4 < v3)
    {
      *(v2 + 48) = v3;
      v4 = v3;
    }

    v0 += v4 + 1;
    dword_10000E13C = v0;
  }

  dword_10000E13C = v0 - 1;
}

uint64_t sub_100004354(_DWORD *a1, _DWORD *a2)
{
  if (dword_10000E14C == 1)
  {
    v5 = a2[93];
    v6 = a1[93];
    return (v5 - v6);
  }

  if (dword_10000E14C == 2)
  {
    v3 = sub_1000022F4(a2);
    return v3 - sub_1000022F4(a1);
  }

  v7 = *(*a1 + 572);
  v8 = *(*a2 + 572);
  result = (v7 - v8);
  if (v7 == v8)
  {
    v5 = *(*a1 + 40);
    v6 = *(*a2 + 40);
    return (v5 - v6);
  }

  return result;
}

_UNKNOWN **sub_1000043D8(const char **a1)
{
  v2 = &off_10000DEC0;
  do
  {
    v2 = *v2;
  }

  while (v2 && strcmp(*v2[2], *a1));
  return v2;
}

void *sub_100004420(uint64_t a1)
{
  v2 = 2 * *(a1 + 4) + 2;
  result = malloc_type_realloc(*(a1 + 32), *(a1 + 8) * v2, 0xDE72F8ABuLL);
  if (!result)
  {
    free(*(a1 + 32));
    errx(1, "realloc to %d %ss failed", v2, *(a1 + 24));
  }

  *(a1 + 4) = v2;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100004498(uint64_t result, uint64_t a2)
{
  if (result <= 2)
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2)
    {
      return 5;
    }

    return 7;
  }

  if (result != 3)
  {
    if (result == 5)
    {
      return 6;
    }

    if (result == 4)
    {
      return 2;
    }

    return 7;
  }

  if (a2 <= 20)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1000044F8(uint64_t a1, thread_inspect_t target_act, int a3, thread_info_t thread_info_out)
{
  if (a3 == 4)
  {
    thread_info_outCnt = 4;
    v9 = target_act;
    v10 = 12;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    thread_info_outCnt = 5;
    v9 = target_act;
    v10 = 11;
LABEL_8:
    result = thread_info(v9, v10, thread_info_out, &thread_info_outCnt);
    if (result)
    {
      return result;
    }

    v7 = *(a1 + 348);
    v8 = thread_info_out[1];
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    return 5;
  }

  thread_info_outCnt = 5;
  result = thread_info(target_act, 0xAu, thread_info_out, &thread_info_outCnt);
  if (result)
  {
    return result;
  }

  v7 = *(a1 + 348);
  v8 = thread_info_out[2];
LABEL_10:
  result = 0;
  if (v7 < v8)
  {
    *(a1 + 348) = v8;
  }

  return result;
}

uint64_t sub_1000045C8(uint64_t a1)
{
  thread_info_outCnt = 10;
  *(a1 + 340) = 7;
  v2 = *(*a1 + 40);
  v3 = (a1 + 336);
  if (task_read_for_pid())
  {
    return 1;
  }

  task_info_outCnt = 10;
  if (task_info(*(a1 + 336), 0x12u, (a1 + 360), &task_info_outCnt))
  {
    goto LABEL_6;
  }

  v25 = 0;
  *info = 0u;
  v24 = 0u;
  size = 0;
  address = 2415919104;
  object_name = 0;
  task_info_outCnt = 9;
  if (!mach_vm_region(*v3, &address, &size, 10, info, &task_info_outCnt, &object_name))
  {
    if (v24)
    {
      if (size == 0x10000000)
      {
        v5 = *(a1 + 364);
        if (v5 >= 0x20000001)
        {
          *(a1 + 364) = v5 - 0x20000000;
        }
      }
    }
  }

  task_info_outCnt = 4;
  if (task_info(*(a1 + 336), 3u, (a1 + 400), &task_info_outCnt))
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 396);
  if (v6 == 4)
  {
    task_info_outCnt = 4;
    v8 = *(a1 + 336);
    v9 = (a1 + 416);
    v10 = 12;
LABEL_18:
    if (!task_info(v8, v10, v9, &task_info_outCnt))
    {
      v7 = *(a1 + 420);
      *(a1 + 348) = v7;
      goto LABEL_20;
    }

LABEL_6:
    result = 1;
    *(a1 + 436) = 1;
    return result;
  }

  if (v6 == 2)
  {
    task_info_outCnt = 5;
    v8 = *(a1 + 336);
    v9 = (a1 + 416);
    v10 = 11;
    goto LABEL_18;
  }

  if (v6 != 1)
  {
    goto LABEL_21;
  }

  task_info_outCnt = 5;
  if (task_info(*(a1 + 336), 0xAu, (a1 + 416), &task_info_outCnt))
  {
    goto LABEL_6;
  }

  *(a1 + 348) = *(a1 + 424);
  v7 = *(a1 + 420);
LABEL_20:
  *(a1 + 352) = v7;
LABEL_21:
  *(a1 + 436) = 0;
  *(a1 + 344) = 0;
  if (task_threads(*(a1 + 336), (a1 + 448), (a1 + 440)))
  {
    mach_port_deallocate(mach_task_self_, *v3);
    return 1;
  }

  *(a1 + 356) = 1;
  *(a1 + 456) = malloc_type_calloc(*(a1 + 440), 0x3CuLL, 0x1000040C2DCA394uLL);
  if (*(a1 + 440))
  {
    v11 = 0;
    v12 = 0;
    v13 = 40;
    while (1)
    {
      thread_info_outCnt = 10;
      v14 = thread_info(*(*(a1 + 448) + 4 * v11), 3u, (*(a1 + 456) + v13 - 40), &thread_info_outCnt);
      v15 = *(a1 + 456);
      if (v14)
      {
        v12 = 1;
      }

      else
      {
        *(a1 + 344) += *(v15 + v13 - 24);
      }

      if (sub_1000044F8(a1, *(*(a1 + 448) + 4 * v11), *(v15 + v13 - 20), (v15 + v13)))
      {
        v12 = 1;
      }

      v16 = *(a1 + 456);
      v17 = *(v16 + v13 - 16);
      if (v17 <= 2)
      {
        if (v17 != 1)
        {
          if (v17 != 2)
          {
LABEL_42:
            v17 = 7;
            goto LABEL_43;
          }

          v17 = 5;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            if (*(v16 + v13 - 4) <= 20)
            {
              v17 = 3;
            }

            else
            {
              v17 = 4;
            }

            break;
          case 5:
            v17 = 6;
            break;
          case 4:
            v17 = 2;
            break;
          default:
            goto LABEL_42;
        }
      }

LABEL_43:
      if (v17 < *(a1 + 340))
      {
        *(a1 + 340) = v17;
      }

      if ((*(v16 + v13 - 12) & 1) == 0)
      {
        *(a1 + 356) = 0;
      }

      mach_port_deallocate(mach_task_self_, *(*(a1 + 448) + 4 * v11++));
      v18 = *(a1 + 440);
      v13 += 60;
      if (v11 >= v18)
      {
        v19 = 4 * v18;
        goto LABEL_50;
      }
    }
  }

  v12 = 0;
  v19 = 0;
LABEL_50:
  *(a1 + 464) = v12;
  vm_deallocate(mach_task_self_, *(a1 + 448), v19);
  mach_port_deallocate(mach_task_self_, *(a1 + 336));
  return 0;
}

void sub_100004974()
{
  warnx("no valid keywords; valid keywords:");
  sub_100000678();
  exit(1);
}