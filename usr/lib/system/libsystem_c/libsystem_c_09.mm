int fwprintf(FILE *a1, const __int32 *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vfwprintf_l(a1, v5, a2, va);
}

int fwscanf(FILE *a1, const __int32 *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vfwscanf_l(a1, v5, a2, va);
}

int getc(FILE *a1)
{
  flockfile(a1);
  r = a1->_r;
  a1->_r = r - 1;
  if (r <= 0)
  {
    v4 = __srget(a1);
  }

  else
  {
    v3 = a1->_p++;
    v4 = *v3;
  }

  funlockfile(a1);
  return v4;
}

int getc_unlocked(FILE *a1)
{
  r = a1->_r;
  a1->_r = r - 1;
  if (r <= 0)
  {
    return __srget(a1);
  }

  v2 = a1->_p++;
  return *v2;
}

int getchar(void)
{
  flockfile(__stdinp);
  v0 = __stdinp;
  r = __stdinp->_r;
  __stdinp->_r = r - 1;
  if (r <= 0)
  {
    v3 = __srget(v0);
  }

  else
  {
    v2 = v0->_p++;
    v3 = *v2;
  }

  funlockfile(__stdinp);
  return v3;
}

int getchar_unlocked(void)
{
  v0 = __stdinp;
  r = __stdinp->_r;
  __stdinp->_r = r - 1;
  if (r <= 0)
  {
    return __srget(v0);
  }

  v2 = v0->_p++;
  return *v2;
}

ssize_t getdelim(char **__linep, size_t *__linecapp, int __delimiter, FILE *__stream)
{
  v5 = *&__delimiter;
  flockfile(__stream);
  extra = __stream->_extra;
  if ((*(extra + 72) & 7) != 0)
  {
    if (!__linep)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(extra + 72) |= 7u;
    if (!__linep)
    {
LABEL_15:
      *__error() = 22;
      goto LABEL_16;
    }
  }

  if (!__linecapp)
  {
    goto LABEL_15;
  }

  if (!*__linep)
  {
    *__linecapp = 0;
  }

  if (__stream->_r <= 0 && __srefill(__stream))
  {
    if ((__stream->_flags & 0x40) == 0)
    {
      if (!*__linecapp)
      {
        v14 = malloc_type_realloc(*__linep, 1uLL, 0xA2B87323uLL);
        if (!v14)
        {
          goto LABEL_16;
        }

        *__linecapp = 1;
        *__linep = v14;
      }

      funlockfile(__stream);
      **__linep = 0;
      return -1;
    }

LABEL_16:
    __stream->_flags |= 0x40u;
    funlockfile(__stream);
    return -1;
  }

  v17 = 0;
  while (1)
  {
    p = __stream->_p;
    r = __stream->_r;
    v11 = j__mkdirx_np(__stream->_p, v5);
    if (v11)
    {
      break;
    }

    if (sappend(__linep, &v17, __linecapp, p, r))
    {
      goto LABEL_16;
    }

    if (__srefill(__stream))
    {
      if ((__stream->_flags & 0x40) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  v15 = (v11 + 1);
  if (sappend(__linep, &v17, __linecapp, p, v11 + 1 - p))
  {
    goto LABEL_16;
  }

  __stream->_r += LODWORD(__stream->_p) - v15;
  __stream->_p = v15;
LABEL_27:
  v16 = *__linep;
  v12 = v17;
  v16[v17] = 0;
  funlockfile(__stream);
  return v12;
}

uint64_t sappend(void **a1, void *a2, unint64_t *a3, char *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = a5 + *a2;
  v7 = __CFADD__(a5, *a2);
  v8 = __CFADD__(v6, 1);
  v9 = v6 + 1;
  v10 = v8;
  v11 = v10 << 63 >> 63 != v10;
  if (v7 || v11 || v9 >= 0x8000000000000001)
  {
    *__error() = 84;
    return 0xFFFFFFFFLL;
  }

  if (*a3 >= v9)
  {
    v21 = *a1;
  }

  else
  {
    v18 = 0x8000000000000000;
    if (v9 != 0x8000000000000000)
    {
      v18 = v9;
      if ((v9 & (v9 - 1)) != 0)
      {
        v19 = (v9 - 1) | ((v9 - 1) >> 1) | (((v9 - 1) | ((v9 - 1) >> 1)) >> 2);
        v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
        v18 = (v20 | (v20 >> 16) | ((v20 | (v20 >> 16)) >> 32)) + 1;
      }
    }

    v21 = malloc_type_realloc(*a1, v18, 0xA2B87323uLL);
    if (!v21)
    {
      return 0xFFFFFFFFLL;
    }

    *a3 = v18;
    *a1 = v21;
  }

  j__mkdtempat_np(v21 + v5, a4);
  result = 0;
  *a2 = v5 + a5;
  return result;
}

char *__cdecl gets(char *a1)
{
  flockfile(__stdinp);
  extra = __stdinp->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  if ((gets_warned & 1) == 0)
  {
    write_NOCANCEL();
    gets_warned = 1;
  }

  for (i = 0; ; ++i)
  {
    v4 = __stdinp;
    r = __stdinp->_r;
    __stdinp->_r = r - 1;
    if (r <= 0)
    {
      v7 = __srget(v4);
    }

    else
    {
      v6 = v4->_p++;
      v7 = *v6;
    }

    if (v7 == 10)
    {
      goto LABEL_13;
    }

    if (v7 == -1)
    {
      break;
    }

    a1[i] = v7;
  }

  if (i)
  {
LABEL_13:
    a1[i] = 0;
    goto LABEL_14;
  }

  a1 = 0;
LABEL_14:
  funlockfile(__stdinp);
  return a1;
}

int getw(FILE *a1)
{
  __ptr = 0;
  if (fread(&__ptr, 4uLL, 1uLL, a1) == 1)
  {
    return __ptr;
  }

  else
  {
    return -1;
  }
}

wint_t getwc(FILE *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return fgetwc_l(a1, v3);
}

wint_t getwchar(void)
{
  v0 = __stdinp;
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return fgetwc_l(v0, v3);
}

int mkostemps(char *path, int slen, int oflags)
{
  v5 = oflags;
  v4 = 0;
  if ((oflags & 0xFEFFFFC7) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (find_temp_path(4294967294, path, slen, 1, _mkostemps_action, &v5, &v4))
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

int mkstempsat_np(int dfd, char *path, int slen)
{
  v4 = 0;
  if (find_temp_path(*&dfd, path, slen, 1, _mkostemps_action, 0, &v4))
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

int mkostemp(char *path, int oflags)
{
  v4 = oflags;
  v3 = 0;
  if ((oflags & 0xFEFFFFC7) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (find_temp_path(4294967294, path, 0, 1, _mkostemps_action, &v4, &v3))
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

char *__cdecl mkdtemp(char *a1)
{
  if (find_temp_path(4294967294, a1, 0, 1, _mkdtemp_action, 0, 0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _mkdtemp_action(int a1, const char *a2)
{
  result = mkdirat(a1, a2, 0x1C0u);
  if (result)
  {
    if (*__error() == 17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

char *__cdecl mkdtempat_np(int dfd, char *path)
{
  if (find_temp_path(*&dfd, path, 0, 1, _mkdtemp_action, 0, 0))
  {
    return path;
  }

  else
  {
    return 0;
  }
}

const char *_mktemp(const char *a1)
{
  if (find_temp_path(4294967294, a1, 0, 0, _mktemp_action, 0, 0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

int mkstemp_dprotected_np(char *path, int dpclass, int dpflags)
{
  v4 = 0;
  v5[0] = dpclass;
  v5[1] = dpflags;
  if (find_temp_path(4294967294, path, 0, 1, _mkstemp_dprotected_np_action, v5, &v4))
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

uint64_t _mkstemp_dprotected_np_action(int a1, char *a2, int *a3, int *a4)
{
  if (a1 != -2)
  {
    _mkstemp_dprotected_np_action_cold_1();
  }

  v5 = open_dprotected_np(a2, 2562, *a3, a3[1], 384);
  if (v5 < 0)
  {
    if (*__error() == 17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v6 = v5;
    result = 0;
    *a4 = v6;
  }

  return result;
}

int rpmatch(const char *a1)
{
  memset(&v8, 0, sizeof(v8));
  memset(&v7, 0, sizeof(v7));
  v2 = nl_langinfo(52);
  if (regcomp(&v8, v2, 5))
  {
    return -1;
  }

  v4 = nl_langinfo(53);
  if (regcomp(&v7, v4, 5))
  {
    v3 = -1;
    v5 = &v8;
  }

  else
  {
    if (regexec(&v8, a1, 0, 0, 0))
    {
      if (regexec(&v7, a1, 0, 0, 0))
      {
        v3 = -1;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 1;
    }

    regfree(&v8);
    v5 = &v7;
  }

  regfree(v5);
  return v3;
}

BOOL __find_arguments(char *a1, _DWORD *a2, _DWORD **a3)
{
  v127 = 1;
  v5 = v125;
  v124 = v125;
  v126 = 8;
  v6 = 0x100004052888210;
  memset(v125, 0, sizeof(v125));
  v7 = v125;
  v8 = v125;
  do
  {
LABEL_2:
    if (!*a1++)
    {
LABEL_244:
      build_arg_table(&v124, a2, a3);
      if (v124 != v5)
      {
        free(v124);
      }

      return *a3 == 0;
    }
  }

  while (*(a1 - 1) != 37);
  v9 = 0;
LABEL_5:
  while (2)
  {
    v11 = *a1++;
    v10 = v11;
LABEL_6:
    while ((v10 - 49) < 9)
    {
      v12 = 0;
      do
      {
        v12 = v10 + 10 * v12 - 48;
        v13 = *a1++;
        v10 = v13;
      }

      while ((v13 - 48) < 0xA);
      if (v10 == 36)
      {
        LODWORD(v127) = v12;
        goto LABEL_5;
      }
    }

    switch(v10)
    {
      case ' ':
      case '#':
      case '\'':
      case '+':
      case '-':
      case '0':
        continue;
      case '*':
        v16 = *a1 - 48;
        if (v16 > 9)
        {
          v17 = 0;
          v21 = *a1;
          v18 = a1;
        }

        else
        {
          v17 = 0;
          v18 = a1;
          do
          {
            v17 = v16 + 10 * v17;
            v20 = *++v18;
            v19 = v20;
            v16 = v20 - 48;
          }

          while ((v20 - 48) < 0xA);
          v21 = v19;
        }

        v28 = v127;
        if (v21 != 36)
        {
          v36 = v126;
          if (v127 < v126)
          {
            goto LABEL_66;
          }

          v120 = a3;
          v123 = v5;
          v37 = a2;
          if (2 * v126 <= v127)
          {
            v38 = v127 + 1;
          }

          else
          {
            v38 = 2 * v126;
          }

          if (v126 != 8)
          {
            v40 = v6;
            v7 = malloc_type_realloc(v8, 4 * v38, v6);
            if (v7)
            {
              goto LABEL_63;
            }

            goto LABEL_247;
          }

          v39 = v8;
          v40 = v6;
          v41 = malloc_type_malloc(4 * v38, v6);
          if (!v41)
          {
            goto LABEL_247;
          }

          v7 = v41;
          v42 = v39[1];
          *v41 = *v39;
          v41[1] = v42;
LABEL_63:
          if (v36 < v38)
          {
            MEMORY[0x193AD5FD0](v7 + 4 * v36, 4 * (v38 + ~v36) + 4);
          }

          v124 = v7;
          LODWORD(v126) = v38;
          v8 = v7;
          v28 = v127;
          v6 = v40;
          a2 = v37;
          a3 = v120;
          v5 = v123;
LABEL_66:
          if (v28 > SHIDWORD(v126))
          {
            HIDWORD(v126) = v28;
          }

          LODWORD(v127) = v28 + 1;
          *(v8 + v28) = 2;
          continue;
        }

        LODWORD(v127) = v17;
        v29 = v126;
        if (v17 < v126)
        {
          goto LABEL_59;
        }

        v119 = a3;
        v123 = v5;
        v30 = a2;
        if (2 * v126 <= v17)
        {
          v31 = v17 + 1;
        }

        else
        {
          v31 = 2 * v126;
        }

        if (v126 == 8)
        {
          v32 = v8;
          v33 = v6;
          v34 = malloc_type_malloc(4 * v31, v6);
          if (!v34)
          {
            goto LABEL_247;
          }

          v7 = v34;
          v35 = v32[1];
          *v34 = *v32;
          v34[1] = v35;
LABEL_56:
          if (v29 < v31)
          {
            MEMORY[0x193AD5FD0](v7 + 4 * v29, 4 * (v31 + ~v29) + 4);
          }

          v124 = v7;
          LODWORD(v126) = v31;
          v17 = v127;
          v6 = v33;
          a2 = v30;
          a3 = v119;
          v5 = v123;
LABEL_59:
          if (v17 > SHIDWORD(v126))
          {
            HIDWORD(v126) = v17;
          }

          *(v7 + v17) = 2;
          LODWORD(v127) = v28;
          a1 = v18 + 1;
          v8 = v7;
          continue;
        }

        v33 = v6;
        v7 = malloc_type_realloc(v8, 4 * v31, v6);
        if (v7)
        {
          goto LABEL_56;
        }

LABEL_247:
        if (v124 != v123)
        {
          free(v124);
        }

        return 1;
      case '.':
        v14 = a1 + 1;
        v10 = *a1;
        if (v10 != 42)
        {
          ++a1;
          if ((v10 - 48) <= 9)
          {
            do
            {
              v15 = *v14++;
              v10 = v15;
            }

            while ((v15 - 48) < 0xA);
            a1 = v14;
          }

          goto LABEL_6;
        }

        v22 = *v14;
        v23 = v22 - 48;
        v123 = v5;
        v24 = 0;
        if ((v22 - 48) <= 9)
        {
          do
          {
            v24 = v23 + 10 * v24;
            v22 = a1[2];
            v23 = v22 - 48;
            ++a1;
          }

          while ((v22 - 48) < 0xA);
        }

        v25 = a2;
        v26 = v6;
        if (v22 == 36)
        {
          v27 = v127;
          LODWORD(v127) = v24;
          if (_ensurespace(&v124))
          {
            goto LABEL_247;
          }

          v7 = v124;
          *(v124 + v127) = 2;
          LODWORD(v127) = v27;
          a1 += 2;
          v8 = v7;
        }

        else
        {
          if (_ensurespace(&v124))
          {
            goto LABEL_247;
          }

          v7 = v124;
          v43 = v127;
          LODWORD(v127) = v127 + 1;
          *(v124 + v43) = 2;
          v8 = v7;
          a1 = v14;
        }

        v6 = v26;
        a2 = v25;
        v5 = v123;
        continue;
      case 'A':
      case 'E':
      case 'F':
      case 'G':
      case 'a':
      case 'e':
      case 'f':
      case 'g':
        if ((v9 & 8) != 0)
        {
          v44 = 23;
        }

        else
        {
          v44 = 22;
        }

        v45 = v127;
        v46 = v126;
        if (v127 < v126)
        {
          goto LABEL_84;
        }

        v123 = v5;
        v47 = a2;
        if (2 * v126 <= v127)
        {
          v48 = v127 + 1;
        }

        else
        {
          v48 = 2 * v126;
        }

        if (v126 == 8)
        {
          v49 = v8;
          v50 = v6;
          v51 = malloc_type_malloc(4 * v48, v6);
          if (!v51)
          {
            goto LABEL_247;
          }

          v7 = v51;
          v52 = v49[1];
          *v51 = *v49;
          v51[1] = v52;
        }

        else
        {
          v50 = v6;
          v7 = malloc_type_realloc(v8, 4 * v48, v6);
          if (!v7)
          {
            goto LABEL_247;
          }
        }

        if (v46 < v48)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v46, 4 * (v48 + ~v46) + 4);
        }

        v124 = v7;
        LODWORD(v126) = v48;
        v8 = v7;
        v45 = v127;
        v6 = v50;
        a2 = v47;
        goto LABEL_83;
      case 'C':
        LOWORD(v9) = v9 | 0x10;
        goto LABEL_114;
      case 'D':
        LOWORD(v9) = v9 | 0x10;
        goto LABEL_106;
      case 'L':
        v9 |= 8u;
        continue;
      case 'O':
        LOWORD(v9) = v9 | 0x10;
        goto LABEL_128;
      case 'S':
        v61 = 25;
        goto LABEL_98;
      case 'U':
        LOWORD(v9) = v9 | 0x10;
        goto LABEL_137;
      case 'X':
      case 'u':
      case 'x':
LABEL_137:
        v86 = v127;
        v87 = v126;
        v88 = v127 < v126;
        goto LABEL_138;
      case 'c':
LABEL_114:
        if ((v9 & 0x4000) != 0)
        {
          v78 = 26;
        }

        else
        {
          v78 = 2;
        }

        if ((v9 & 0x10) != 0)
        {
          v44 = 24;
        }

        else
        {
          v44 = v78;
        }

        v45 = v127;
        v79 = v126;
        if (v127 < v126)
        {
          goto LABEL_84;
        }

        v122 = a3;
        v123 = v5;
        v80 = a2;
        if (2 * v126 <= v127)
        {
          v81 = v127 + 1;
        }

        else
        {
          v81 = 2 * v126;
        }

        if (v126 == 8)
        {
          v82 = v8;
          v83 = v6;
          v84 = malloc_type_malloc(4 * v81, v6);
          if (!v84)
          {
            goto LABEL_247;
          }

          v7 = v84;
          v85 = v82[1];
          *v84 = *v82;
          v84[1] = v85;
        }

        else
        {
          v83 = v6;
          v7 = malloc_type_realloc(v8, 4 * v81, v6);
          if (!v7)
          {
            goto LABEL_247;
          }
        }

        if (v79 < v81)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v79, 4 * (v81 + ~v79) + 4);
        }

        v124 = v7;
        LODWORD(v126) = v81;
        v8 = v7;
        v45 = v127;
        v6 = v83;
        a2 = v80;
        a3 = v122;
LABEL_83:
        v5 = v123;
LABEL_84:
        if (v45 > SHIDWORD(v126))
        {
          HIDWORD(v126) = v45;
        }

        LODWORD(v127) = v45 + 1;
        *(v8 + v45) = v44;
        goto LABEL_2;
      case 'd':
      case 'i':
LABEL_106:
        v70 = v127;
        v71 = v126;
        if (v127 < v126)
        {
          goto LABEL_174;
        }

        v121 = a3;
        v123 = v5;
        v72 = a2;
        if (2 * v126 <= v127)
        {
          v73 = v127 + 1;
        }

        else
        {
          v73 = 2 * v126;
        }

        if (v126 == 8)
        {
          v74 = v8;
          v75 = v6;
          v76 = malloc_type_malloc(4 * v73, v6);
          if (!v76)
          {
            goto LABEL_247;
          }

          v7 = v76;
          v77 = v74[1];
          *v76 = *v74;
          v76[1] = v77;
        }

        else
        {
          v75 = v6;
          v7 = malloc_type_realloc(v8, 4 * v73, v6);
          if (!v7)
          {
            goto LABEL_247;
          }
        }

        if (v71 < v73)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v71, 4 * (v73 + ~v71) + 4);
        }

        v124 = v7;
        LODWORD(v126) = v73;
        v8 = v7;
        v70 = v127;
        v6 = v75;
        a2 = v72;
        a3 = v121;
        v5 = v123;
LABEL_174:
        if (v70 > SHIDWORD(v126))
        {
          HIDWORD(v126) = v70;
        }

        if ((v9 & 0x1000) != 0)
        {
          LODWORD(v127) = v70 + 1;
          *(v8 + v70) = 16;
        }

        else if ((v9 & 0x400) != 0)
        {
          LODWORD(v127) = v70 + 1;
          *(v8 + v70) = 13;
        }

        else if ((v9 & 0x800) != 0)
        {
          LODWORD(v127) = v70 + 1;
          *(v8 + v70) = 11;
        }

        else if ((v9 & 0x20) != 0)
        {
          LODWORD(v127) = v70 + 1;
          *(v8 + v70) = 8;
        }

        else
        {
          LODWORD(v127) = v70 + 1;
          if ((v9 & 0x10) != 0)
          {
            *(v8 + v70) = 5;
          }

          else
          {
            *(v8 + v70) = 2;
          }
        }

        goto LABEL_2;
      case 'h':
        if ((v9 & 0x40) != 0)
        {
          v9 = v9 & 0xFFFFDFBF | 0x2000;
        }

        else
        {
          v9 |= 0x40u;
        }

        continue;
      case 'j':
        v9 |= 0x1000u;
        continue;
      case 'l':
        if ((v9 & 0x10) != 0)
        {
          v9 = v9 & 0xFFFFFFCF | 0x20;
        }

        else
        {
          v9 |= 0x10u;
        }

        continue;
      case 'n':
        if ((v9 & 0x1000) == 0)
        {
          v123 = v5;
          if ((v9 & 0x800) != 0)
          {
            v102 = a2;
            v114 = v6;
            if (_ensurespace(&v124))
            {
              goto LABEL_247;
            }

            v7 = v124;
            v115 = v127;
            LODWORD(v127) = v127 + 1;
            v116 = 12;
          }

          else if ((v9 & 0x400) != 0)
          {
            v102 = a2;
            v114 = v6;
            if (_ensurespace(&v124))
            {
              goto LABEL_247;
            }

            v7 = v124;
            v115 = v127;
            LODWORD(v127) = v127 + 1;
            v116 = 15;
          }

          else
          {
            if ((v9 & 0x20) != 0)
            {
              v102 = a2;
              v114 = v6;
              if (_ensurespace(&v124))
              {
                goto LABEL_247;
              }

              v7 = v124;
              v117 = v127;
              LODWORD(v127) = v127 + 1;
              *(v124 + v117) = 10;
              goto LABEL_225;
            }

            if ((v9 & 0x10) == 0)
            {
              v101 = v6;
              v102 = a2;
              if ((v9 & 0x40) != 0)
              {
                if (_ensurespace(&v124))
                {
                  goto LABEL_247;
                }

                v7 = v124;
                v104 = v127;
                LODWORD(v127) = v127 + 1;
                v105 = 1;
              }

              else
              {
                v103 = _ensurespace(&v124);
                if ((v9 & 0x2000) != 0)
                {
                  if (v103)
                  {
                    goto LABEL_247;
                  }

                  v7 = v124;
                  v104 = v127;
                  LODWORD(v127) = v127 + 1;
                  v105 = 21;
                }

                else
                {
                  if (v103)
                  {
                    goto LABEL_247;
                  }

                  v7 = v124;
                  v104 = v127;
                  LODWORD(v127) = v127 + 1;
                  v105 = 4;
                }
              }

              *(v7 + v104) = v105;
              v8 = v7;
              v6 = v101;
              goto LABEL_226;
            }

            v102 = a2;
            v114 = v6;
            if (_ensurespace(&v124))
            {
              goto LABEL_247;
            }

            v7 = v124;
            v115 = v127;
            LODWORD(v127) = v127 + 1;
            v116 = 7;
          }

          *(v7 + v115) = v116;
LABEL_225:
          v8 = v7;
          v6 = v114;
LABEL_226:
          a2 = v102;
          v5 = v123;
          goto LABEL_2;
        }

        v106 = v127;
        v107 = v126;
        if (v127 >= v126)
        {
          v123 = v5;
          v108 = a2;
          if (2 * v126 <= v127)
          {
            v109 = v127 + 1;
          }

          else
          {
            v109 = 2 * v126;
          }

          if (v126 == 8)
          {
            v110 = v8;
            v111 = v6;
            v112 = malloc_type_malloc(4 * v109, v6);
            if (!v112)
            {
              goto LABEL_247;
            }

            v7 = v112;
            v113 = v110[1];
            *v112 = *v110;
            v112[1] = v113;
          }

          else
          {
            v111 = v6;
            v7 = malloc_type_realloc(v8, 4 * v109, v6);
            if (!v7)
            {
              goto LABEL_247;
            }
          }

          if (v107 < v109)
          {
            MEMORY[0x193AD5FD0](v7 + 4 * v107, 4 * (v109 + ~v107) + 4);
          }

          v124 = v7;
          LODWORD(v126) = v109;
          v8 = v7;
          v106 = v127;
          v6 = v111;
          a2 = v108;
          v5 = v123;
        }

        if (v106 > SHIDWORD(v126))
        {
          HIDWORD(v126) = v106;
        }

        LODWORD(v127) = v106 + 1;
        *(v8 + v106) = 18;
        goto LABEL_2;
      case 'o':
LABEL_128:
        v86 = v127;
        v87 = v126;
        v88 = v127 < v126;
        if ((v9 & 0x4000) != 0)
        {
          if (v127 >= v126)
          {
            v123 = v5;
            v89 = a2;
            if (2 * v126 <= v127)
            {
              v90 = v127 + 1;
            }

            else
            {
              v90 = 2 * v126;
            }

            if (v126 == 8)
            {
              v91 = v8;
              v92 = v6;
              v93 = malloc_type_malloc(4 * v90, v6);
              if (!v93)
              {
                goto LABEL_247;
              }

              v7 = v93;
              v94 = v91[1];
              *v93 = *v91;
              v93[1] = v94;
            }

            else
            {
              v92 = v6;
              v7 = malloc_type_realloc(v8, 4 * v90, v6);
              if (!v7)
              {
                goto LABEL_247;
              }
            }

            if (v87 < v90)
            {
              MEMORY[0x193AD5FD0](v7 + 4 * v87, 4 * (v90 + ~v87) + 4);
            }

            v124 = v7;
            LODWORD(v126) = v90;
            v8 = v7;
            v86 = v127;
            v6 = v92;
            a2 = v89;
            v5 = v123;
          }

          if (v86 > SHIDWORD(v126))
          {
            HIDWORD(v126) = v86;
          }

          LODWORD(v127) = v86 + 1;
          *(v8 + v86) = 26;
        }

        else
        {
LABEL_138:
          if (!v88)
          {
            v123 = v5;
            v95 = a2;
            if (2 * v87 <= v86)
            {
              v96 = v86 + 1;
            }

            else
            {
              v96 = 2 * v87;
            }

            if (v87 == 8)
            {
              v97 = v8;
              v98 = v6;
              v99 = malloc_type_malloc(4 * v96, v6);
              if (!v99)
              {
                goto LABEL_247;
              }

              v7 = v99;
              v100 = v97[1];
              *v99 = *v97;
              v99[1] = v100;
            }

            else
            {
              v98 = v6;
              v7 = malloc_type_realloc(v8, 4 * v96, v6);
              if (!v7)
              {
                goto LABEL_247;
              }
            }

            if (v87 < v96)
            {
              MEMORY[0x193AD5FD0](v7 + 4 * v87, 4 * (v96 + ~v87) + 4);
            }

            v124 = v7;
            LODWORD(v126) = v96;
            v8 = v7;
            v86 = v127;
            v6 = v98;
            a2 = v95;
            v5 = v123;
          }

          if (v86 > SHIDWORD(v126))
          {
            HIDWORD(v126) = v86;
          }

          if ((v9 & 0x1000) != 0)
          {
            LODWORD(v127) = v86 + 1;
            *(v8 + v86) = 17;
          }

          else if ((v9 & 0x400) != 0 || (v9 & 0x800) != 0)
          {
            LODWORD(v127) = v86 + 1;
            *(v8 + v86) = 14;
          }

          else if ((v9 & 0x20) != 0)
          {
            LODWORD(v127) = v86 + 1;
            *(v8 + v86) = 9;
          }

          else
          {
            LODWORD(v127) = v86 + 1;
            if ((v9 & 0x10) != 0)
            {
              *(v8 + v86) = 6;
            }

            else
            {
              *(v8 + v86) = 3;
            }
          }
        }

        goto LABEL_2;
      case 'p':
        v53 = v127;
        v54 = v126;
        if (v127 < v126)
        {
          goto LABEL_208;
        }

        v123 = v5;
        v55 = a2;
        if (2 * v126 <= v127)
        {
          v56 = v127 + 1;
        }

        else
        {
          v56 = 2 * v126;
        }

        if (v126 == 8)
        {
          v57 = v8;
          v58 = v6;
          v59 = malloc_type_malloc(4 * v56, v6);
          if (!v59)
          {
            goto LABEL_247;
          }

          v7 = v59;
          v60 = v57[1];
          *v59 = *v57;
          v59[1] = v60;
        }

        else
        {
          v58 = v6;
          v7 = malloc_type_realloc(v8, 4 * v56, v6);
          if (!v7)
          {
            goto LABEL_247;
          }
        }

        if (v54 < v56)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v54, 4 * (v56 + ~v54) + 4);
        }

        v124 = v7;
        LODWORD(v126) = v56;
        v8 = v7;
        v53 = v127;
        v6 = v58;
        a2 = v55;
        v5 = v123;
LABEL_208:
        if (v53 > SHIDWORD(v126))
        {
          HIDWORD(v126) = v53;
        }

        LODWORD(v127) = v53 + 1;
        *(v8 + v53) = 19;
        goto LABEL_2;
      case 'q':
        v9 |= 0x20u;
        continue;
      case 's':
        if ((v9 & 0x10) != 0)
        {
          v61 = 25;
        }

        else
        {
          v61 = 20;
        }

LABEL_98:
        v62 = v127;
        v63 = v126;
        if (v127 < v126)
        {
          goto LABEL_188;
        }

        v123 = v5;
        v64 = a2;
        if (2 * v126 <= v127)
        {
          v65 = v127 + 1;
        }

        else
        {
          v65 = 2 * v126;
        }

        if (v126 == 8)
        {
          v66 = v8;
          v67 = v6;
          v68 = malloc_type_malloc(4 * v65, v6);
          if (!v68)
          {
            goto LABEL_247;
          }

          v7 = v68;
          v69 = v66[1];
          *v68 = *v66;
          v68[1] = v69;
        }

        else
        {
          v67 = v6;
          v7 = malloc_type_realloc(v8, 4 * v65, v6);
          if (!v7)
          {
            goto LABEL_247;
          }
        }

        if (v63 < v65)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v63, 4 * (v65 + ~v63) + 4);
        }

        v124 = v7;
        LODWORD(v126) = v65;
        v8 = v7;
        v62 = v127;
        v6 = v67;
        a2 = v64;
        v5 = v123;
LABEL_188:
        if (v62 > SHIDWORD(v126))
        {
          HIDWORD(v126) = v62;
        }

        LODWORD(v127) = v62 + 1;
        *(v8 + v62) = v61;
        goto LABEL_2;
      case 't':
        v9 |= 0x800u;
        continue;
      case 'z':
        v9 |= 0x400u;
        continue;
      default:
        if (!v10)
        {
          goto LABEL_244;
        }

        goto LABEL_2;
    }
  }
}

_DWORD *build_arg_table(uint64_t a1, _DWORD *a2, _DWORD **a3)
{
  v5 = *(a1 + 44);
  if (v5 <= 7)
  {
    result = *a3;
  }

  else
  {
    result = malloc_type_malloc(16 * v5 + 16, 0x1092040C99D0F4CuLL);
    *a3 = result;
    if (!result)
    {
      return result;
    }
  }

  *result = 0;
  if (*(a1 + 44) >= 1)
  {
    v7 = 0;
    v8 = 4;
    do
    {
      switch(*(*a1 + 4 * v7 + 4))
      {
        case 0:
        case 2:
        case 3:
        case 0x18:
          v10 = a2;
          a2 += 2;
          (*a3)[v8] = *v10;
          break;
        case 1:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x19:
          v9 = a2;
          a2 += 2;
          *&(*a3)[v8] = *v9;
          break;
        case 0x16:
        case 0x17:
          v11 = a2;
          a2 += 2;
          *&(*a3)[v8] = *v11;
          break;
        case 0x1A:
          v12 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF0);
          a2 = v12 + 1;
          *&(*a3)[v8] = *v12;
          break;
        default:
          break;
      }

      ++v7;
      v8 += 4;
    }

    while (v7 < *(a1 + 44));
  }

  return result;
}

BOOL __find_warguments(int *a1, _DWORD *a2, _DWORD **a3)
{
  v115 = 1;
  v5 = v113;
  v112 = v113;
  v114 = 8;
  v6 = 0x100004052888210;
  memset(v113, 0, sizeof(v113));
  v7 = v113;
  v8 = v113;
  do
  {
LABEL_2:
    v9 = *a1++;
    if (!v9)
    {
LABEL_224:
      build_arg_table(&v112, a2, a3);
      if (v112 != v5)
      {
        free(v112);
      }

      return *a3 == 0;
    }
  }

  while (v9 != 37);
  v10 = 0;
LABEL_5:
  while (2)
  {
    v12 = *a1++;
    v11 = v12;
LABEL_6:
    while ((v11 - 49) < 9)
    {
      v13 = 0;
      do
      {
        v13 = v11 + 10 * v13 - 48;
        v14 = *a1++;
        v11 = v14;
      }

      while ((v14 - 48) < 0xA);
      if (v11 == 36)
      {
        LODWORD(v115) = v13;
        goto LABEL_5;
      }
    }

    switch(v11)
    {
      case ' ':
      case '#':
      case '\'':
      case '+':
      case '-':
      case '0':
        continue;
      case '*':
        v17 = *a1;
        v18 = *a1 - 48;
        if (v18 > 9)
        {
          v19 = 0;
          v20 = a1;
        }

        else
        {
          v19 = 0;
          v20 = a1;
          do
          {
            v19 = v18 + 10 * v19;
            v21 = v20[1];
            ++v20;
            v17 = v21;
            v18 = v21 - 48;
          }

          while ((v21 - 48) < 0xA);
        }

        v28 = v115;
        if (v17 != 36)
        {
          v35 = v114;
          if (v115 < v114)
          {
            goto LABEL_66;
          }

          v108 = a2;
          v111 = v5;
          if (2 * v114 <= v115)
          {
            v36 = v115 + 1;
          }

          else
          {
            v36 = 2 * v114;
          }

          if (v114 != 8)
          {
            v38 = v6;
            v7 = malloc_type_realloc(v8, 4 * v36, v6);
            if (v7)
            {
              goto LABEL_63;
            }

            goto LABEL_227;
          }

          v37 = v8;
          v38 = v6;
          v39 = malloc_type_malloc(4 * v36, v6);
          if (!v39)
          {
            goto LABEL_227;
          }

          v7 = v39;
          v40 = v37[1];
          *v39 = *v37;
          v39[1] = v40;
LABEL_63:
          if (v35 < v36)
          {
            MEMORY[0x193AD5FD0](v7 + 4 * v35, 4 * (v36 + ~v35) + 4);
          }

          v112 = v7;
          LODWORD(v114) = v36;
          v8 = v7;
          v28 = v115;
          v6 = v38;
          a2 = v108;
          v5 = v111;
LABEL_66:
          if (v28 > SHIDWORD(v114))
          {
            HIDWORD(v114) = v28;
          }

          LODWORD(v115) = v28 + 1;
          *(v8 + v28) = 2;
          continue;
        }

        LODWORD(v115) = v19;
        v29 = v114;
        if (v19 < v114)
        {
          goto LABEL_59;
        }

        v107 = a2;
        v111 = v5;
        if (2 * v114 <= v19)
        {
          v30 = v19 + 1;
        }

        else
        {
          v30 = 2 * v114;
        }

        if (v114 == 8)
        {
          v31 = v8;
          v32 = v6;
          v33 = malloc_type_malloc(4 * v30, v6);
          if (!v33)
          {
            goto LABEL_227;
          }

          v7 = v33;
          v34 = v31[1];
          *v33 = *v31;
          v33[1] = v34;
LABEL_56:
          if (v29 < v30)
          {
            MEMORY[0x193AD5FD0](v7 + 4 * v29, 4 * (v30 + ~v29) + 4);
          }

          v112 = v7;
          LODWORD(v114) = v30;
          v19 = v115;
          v6 = v32;
          a2 = v107;
          v5 = v111;
LABEL_59:
          if (v19 > SHIDWORD(v114))
          {
            HIDWORD(v114) = v19;
          }

          *(v7 + v19) = 2;
          LODWORD(v115) = v28;
          a1 = v20 + 1;
          v8 = v7;
          continue;
        }

        v32 = v6;
        v7 = malloc_type_realloc(v8, 4 * v30, v6);
        if (v7)
        {
          goto LABEL_56;
        }

LABEL_227:
        if (v112 != v111)
        {
          free(v112);
        }

        return 1;
      case '.':
        v15 = a1 + 1;
        v11 = *a1;
        if (*a1 != 42)
        {
          ++a1;
          if ((v11 - 48) <= 9)
          {
            do
            {
              v16 = *v15++;
              v11 = v16;
            }

            while ((v16 - 48) < 0xA);
            a1 = v15;
          }

          goto LABEL_6;
        }

        v22 = *v15;
        v23 = *v15 - 48;
        v111 = v5;
        v24 = 0;
        if (v23 <= 9)
        {
          do
          {
            v24 = v23 + 10 * v24;
            v22 = a1[2];
            v23 = v22 - 48;
            ++a1;
          }

          while ((v22 - 48) < 0xA);
        }

        v25 = a2;
        v26 = v6;
        if (v22 == 36)
        {
          v27 = v115;
          LODWORD(v115) = v24;
          if (_ensurespace(&v112))
          {
            goto LABEL_227;
          }

          v7 = v112;
          *(v112 + v115) = 2;
          LODWORD(v115) = v27;
          a1 += 2;
          v8 = v7;
        }

        else
        {
          if (_ensurespace(&v112))
          {
            goto LABEL_227;
          }

          v7 = v112;
          v41 = v115;
          LODWORD(v115) = v115 + 1;
          *(v112 + v41) = 2;
          v8 = v7;
          a1 = v15;
        }

        v6 = v26;
        a2 = v25;
        continue;
      case 'A':
      case 'E':
      case 'F':
      case 'G':
      case 'a':
      case 'e':
      case 'f':
      case 'g':
        if ((v10 & 8) != 0)
        {
          v42 = 23;
        }

        else
        {
          v42 = 22;
        }

        v43 = v115;
        v44 = v114;
        if (v115 < v114)
        {
          goto LABEL_92;
        }

        v111 = v5;
        v45 = a2;
        if (2 * v114 <= v115)
        {
          v46 = v115 + 1;
        }

        else
        {
          v46 = 2 * v114;
        }

        if (v114 == 8)
        {
          v47 = v8;
          v48 = v6;
          v49 = malloc_type_malloc(4 * v46, v6);
          if (!v49)
          {
            goto LABEL_227;
          }

          v7 = v49;
          v50 = v47[1];
          *v49 = *v47;
          v49[1] = v50;
        }

        else
        {
          v48 = v6;
          v7 = malloc_type_realloc(v8, 4 * v46, v6);
          if (!v7)
          {
            goto LABEL_227;
          }
        }

        if (v44 < v46)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v44, 4 * (v46 + ~v44) + 4);
        }

        v112 = v7;
        LODWORD(v114) = v46;
        v8 = v7;
        v43 = v115;
        v6 = v48;
        a2 = v45;
        goto LABEL_91;
      case 'C':
        v42 = 24;
        goto LABEL_131;
      case 'D':
        LOWORD(v10) = v10 | 0x10;
        goto LABEL_121;
      case 'L':
        v10 |= 8u;
        continue;
      case 'O':
      case 'U':
        LOWORD(v10) = v10 | 0x10;
        goto LABEL_80;
      case 'S':
        v67 = 25;
        goto LABEL_148;
      case 'X':
      case 'o':
      case 'u':
      case 'x':
LABEL_80:
        v51 = v115;
        v52 = v114;
        if (v115 < v114)
        {
          goto LABEL_99;
        }

        v111 = v5;
        v53 = a2;
        if (2 * v114 <= v115)
        {
          v54 = v115 + 1;
        }

        else
        {
          v54 = 2 * v114;
        }

        if (v114 == 8)
        {
          v55 = v8;
          v56 = v6;
          v57 = malloc_type_malloc(4 * v54, v6);
          if (!v57)
          {
            goto LABEL_227;
          }

          v7 = v57;
          v58 = v55[1];
          *v57 = *v55;
          v57[1] = v58;
        }

        else
        {
          v56 = v6;
          v7 = malloc_type_realloc(v8, 4 * v54, v6);
          if (!v7)
          {
            goto LABEL_227;
          }
        }

        if (v52 < v54)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v52, 4 * (v54 + ~v52) + 4);
        }

        v112 = v7;
        LODWORD(v114) = v54;
        v8 = v7;
        v51 = v115;
        v6 = v56;
        a2 = v53;
        v5 = v111;
LABEL_99:
        if (v51 > SHIDWORD(v114))
        {
          HIDWORD(v114) = v51;
        }

        if ((v10 & 0x1000) != 0)
        {
          LODWORD(v115) = v51 + 1;
          *(v8 + v51) = 17;
        }

        else if ((v10 & 0x400) != 0 || (v10 & 0x800) != 0)
        {
          LODWORD(v115) = v51 + 1;
          *(v8 + v51) = 14;
        }

        else if ((v10 & 0x20) != 0)
        {
          LODWORD(v115) = v51 + 1;
          *(v8 + v51) = 9;
        }

        else
        {
          LODWORD(v115) = v51 + 1;
          if ((v10 & 0x10) != 0)
          {
            *(v8 + v51) = 6;
          }

          else
          {
            *(v8 + v51) = 3;
          }
        }

        goto LABEL_2;
      case 'c':
        if ((v10 & 0x10) != 0)
        {
          v42 = 24;
        }

        else
        {
          v42 = 2;
        }

LABEL_131:
        v43 = v115;
        v75 = v114;
        if (v115 < v114)
        {
          goto LABEL_92;
        }

        v110 = a2;
        v111 = v5;
        if (2 * v114 <= v115)
        {
          v76 = v115 + 1;
        }

        else
        {
          v76 = 2 * v114;
        }

        if (v114 == 8)
        {
          v77 = v8;
          v78 = v6;
          v79 = malloc_type_malloc(4 * v76, v6);
          if (!v79)
          {
            goto LABEL_227;
          }

          v7 = v79;
          v80 = v77[1];
          *v79 = *v77;
          v79[1] = v80;
        }

        else
        {
          v78 = v6;
          v7 = malloc_type_realloc(v8, 4 * v76, v6);
          if (!v7)
          {
            goto LABEL_227;
          }
        }

        if (v75 < v76)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v75, 4 * (v76 + ~v75) + 4);
        }

        v112 = v7;
        LODWORD(v114) = v76;
        v8 = v7;
        v43 = v115;
        v6 = v78;
        a2 = v110;
LABEL_91:
        v5 = v111;
LABEL_92:
        if (v43 > SHIDWORD(v114))
        {
          HIDWORD(v114) = v43;
        }

        LODWORD(v115) = v43 + 1;
        *(v8 + v43) = v42;
        goto LABEL_2;
      case 'd':
      case 'i':
LABEL_121:
        v68 = v115;
        v69 = v114;
        if (v115 < v114)
        {
          goto LABEL_161;
        }

        v109 = a2;
        v111 = v5;
        if (2 * v114 <= v115)
        {
          v70 = v115 + 1;
        }

        else
        {
          v70 = 2 * v114;
        }

        if (v114 == 8)
        {
          v71 = v8;
          v72 = v6;
          v73 = malloc_type_malloc(4 * v70, v6);
          if (!v73)
          {
            goto LABEL_227;
          }

          v7 = v73;
          v74 = v71[1];
          *v73 = *v71;
          v73[1] = v74;
        }

        else
        {
          v72 = v6;
          v7 = malloc_type_realloc(v8, 4 * v70, v6);
          if (!v7)
          {
            goto LABEL_227;
          }
        }

        if (v69 < v70)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v69, 4 * (v70 + ~v69) + 4);
        }

        v112 = v7;
        LODWORD(v114) = v70;
        v8 = v7;
        v68 = v115;
        v6 = v72;
        a2 = v109;
        v5 = v111;
LABEL_161:
        if (v68 > SHIDWORD(v114))
        {
          HIDWORD(v114) = v68;
        }

        if ((v10 & 0x1000) != 0)
        {
          LODWORD(v115) = v68 + 1;
          *(v8 + v68) = 16;
        }

        else if ((v10 & 0x400) != 0)
        {
          LODWORD(v115) = v68 + 1;
          *(v8 + v68) = 13;
        }

        else if ((v10 & 0x800) != 0)
        {
          LODWORD(v115) = v68 + 1;
          *(v8 + v68) = 11;
        }

        else if ((v10 & 0x20) != 0)
        {
          LODWORD(v115) = v68 + 1;
          *(v8 + v68) = 8;
        }

        else
        {
          LODWORD(v115) = v68 + 1;
          if ((v10 & 0x10) != 0)
          {
            *(v8 + v68) = 5;
          }

          else
          {
            *(v8 + v68) = 2;
          }
        }

        goto LABEL_2;
      case 'h':
        if ((v10 & 0x40) != 0)
        {
          v10 = v10 & 0xFFFFDFBF | 0x2000;
        }

        else
        {
          v10 |= 0x40u;
        }

        continue;
      case 'j':
        v10 |= 0x1000u;
        continue;
      case 'l':
        if ((v10 & 0x10) != 0)
        {
          v10 = v10 & 0xFFFFFFCF | 0x20;
        }

        else
        {
          v10 |= 0x10u;
        }

        continue;
      case 'n':
        if ((v10 & 0x1000) == 0)
        {
          v111 = v5;
          if ((v10 & 0x800) != 0)
          {
            v82 = a2;
            v102 = v6;
            if (_ensurespace(&v112))
            {
              goto LABEL_227;
            }

            v7 = v112;
            v103 = v115;
            LODWORD(v115) = v115 + 1;
            v104 = 12;
          }

          else if ((v10 & 0x400) != 0)
          {
            v82 = a2;
            v102 = v6;
            if (_ensurespace(&v112))
            {
              goto LABEL_227;
            }

            v7 = v112;
            v103 = v115;
            LODWORD(v115) = v115 + 1;
            v104 = 15;
          }

          else
          {
            if ((v10 & 0x20) != 0)
            {
              v82 = a2;
              v102 = v6;
              if (_ensurespace(&v112))
              {
                goto LABEL_227;
              }

              v7 = v112;
              v105 = v115;
              LODWORD(v115) = v115 + 1;
              *(v112 + v105) = 10;
              goto LABEL_205;
            }

            if ((v10 & 0x10) == 0)
            {
              v81 = v6;
              v82 = a2;
              if ((v10 & 0x40) != 0)
              {
                if (_ensurespace(&v112))
                {
                  goto LABEL_227;
                }

                v7 = v112;
                v84 = v115;
                LODWORD(v115) = v115 + 1;
                v85 = 1;
              }

              else
              {
                v83 = _ensurespace(&v112);
                if ((v10 & 0x2000) != 0)
                {
                  if (v83)
                  {
                    goto LABEL_227;
                  }

                  v7 = v112;
                  v84 = v115;
                  LODWORD(v115) = v115 + 1;
                  v85 = 21;
                }

                else
                {
                  if (v83)
                  {
                    goto LABEL_227;
                  }

                  v7 = v112;
                  v84 = v115;
                  LODWORD(v115) = v115 + 1;
                  v85 = 4;
                }
              }

              *(v7 + v84) = v85;
              v8 = v7;
              v6 = v81;
              goto LABEL_206;
            }

            v82 = a2;
            v102 = v6;
            if (_ensurespace(&v112))
            {
              goto LABEL_227;
            }

            v7 = v112;
            v103 = v115;
            LODWORD(v115) = v115 + 1;
            v104 = 7;
          }

          *(v7 + v103) = v104;
LABEL_205:
          v8 = v7;
          v6 = v102;
LABEL_206:
          a2 = v82;
          v5 = v111;
          goto LABEL_2;
        }

        v94 = v115;
        v95 = v114;
        if (v115 >= v114)
        {
          v111 = v5;
          v96 = a2;
          if (2 * v114 <= v115)
          {
            v97 = v115 + 1;
          }

          else
          {
            v97 = 2 * v114;
          }

          if (v114 == 8)
          {
            v98 = v8;
            v99 = v6;
            v100 = malloc_type_malloc(4 * v97, v6);
            if (!v100)
            {
              goto LABEL_227;
            }

            v7 = v100;
            v101 = v98[1];
            *v100 = *v98;
            v100[1] = v101;
          }

          else
          {
            v99 = v6;
            v7 = malloc_type_realloc(v8, 4 * v97, v6);
            if (!v7)
            {
              goto LABEL_227;
            }
          }

          if (v95 < v97)
          {
            MEMORY[0x193AD5FD0](v7 + 4 * v95, 4 * (v97 + ~v95) + 4);
          }

          v112 = v7;
          LODWORD(v114) = v97;
          v8 = v7;
          v94 = v115;
          v6 = v99;
          a2 = v96;
          v5 = v111;
        }

        if (v94 > SHIDWORD(v114))
        {
          HIDWORD(v114) = v94;
        }

        LODWORD(v115) = v94 + 1;
        *(v8 + v94) = 18;
        goto LABEL_2;
      case 'p':
        v59 = v115;
        v60 = v114;
        if (v115 < v114)
        {
          goto LABEL_195;
        }

        v111 = v5;
        v61 = a2;
        if (2 * v114 <= v115)
        {
          v62 = v115 + 1;
        }

        else
        {
          v62 = 2 * v114;
        }

        if (v114 == 8)
        {
          v63 = v8;
          v64 = v6;
          v65 = malloc_type_malloc(4 * v62, v6);
          if (!v65)
          {
            goto LABEL_227;
          }

          v7 = v65;
          v66 = v63[1];
          *v65 = *v63;
          v65[1] = v66;
        }

        else
        {
          v64 = v6;
          v7 = malloc_type_realloc(v8, 4 * v62, v6);
          if (!v7)
          {
            goto LABEL_227;
          }
        }

        if (v60 < v62)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v60, 4 * (v62 + ~v60) + 4);
        }

        v112 = v7;
        LODWORD(v114) = v62;
        v8 = v7;
        v59 = v115;
        v6 = v64;
        a2 = v61;
        v5 = v111;
LABEL_195:
        if (v59 > SHIDWORD(v114))
        {
          HIDWORD(v114) = v59;
        }

        LODWORD(v115) = v59 + 1;
        *(v8 + v59) = 19;
        goto LABEL_2;
      case 'q':
        v10 |= 0x20u;
        continue;
      case 's':
        if ((v10 & 0x10) != 0)
        {
          v67 = 25;
        }

        else
        {
          v67 = 20;
        }

LABEL_148:
        v86 = v115;
        v87 = v114;
        if (v115 < v114)
        {
          goto LABEL_175;
        }

        v111 = v5;
        v88 = a2;
        if (2 * v114 <= v115)
        {
          v89 = v115 + 1;
        }

        else
        {
          v89 = 2 * v114;
        }

        if (v114 == 8)
        {
          v90 = v8;
          v91 = v6;
          v92 = malloc_type_malloc(4 * v89, v6);
          if (!v92)
          {
            goto LABEL_227;
          }

          v7 = v92;
          v93 = v90[1];
          *v92 = *v90;
          v92[1] = v93;
        }

        else
        {
          v91 = v6;
          v7 = malloc_type_realloc(v8, 4 * v89, v6);
          if (!v7)
          {
            goto LABEL_227;
          }
        }

        if (v87 < v89)
        {
          MEMORY[0x193AD5FD0](v7 + 4 * v87, 4 * (v89 + ~v87) + 4);
        }

        v112 = v7;
        LODWORD(v114) = v89;
        v8 = v7;
        v86 = v115;
        v6 = v91;
        a2 = v88;
        v5 = v111;
LABEL_175:
        if (v86 > SHIDWORD(v114))
        {
          HIDWORD(v114) = v86;
        }

        LODWORD(v115) = v86 + 1;
        *(v8 + v86) = v67;
        goto LABEL_2;
      case 't':
        v10 |= 0x800u;
        continue;
      case 'z':
        v10 |= 0x400u;
        continue;
      default:
        if (!v11)
        {
          goto LABEL_224;
        }

        goto LABEL_2;
    }
  }
}

uint64_t _ensurespace(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v2 >= v3)
  {
    v4 = *a1;
    if (2 * v3 <= v2)
    {
      v5 = v2 + 1;
    }

    else
    {
      v5 = 2 * v3;
    }

    if (v3 == 8)
    {
      v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
      if (v6)
      {
        v7 = v6;
        v8 = v4[1];
        *v6 = *v4;
        *(v6 + 1) = v8;
LABEL_9:
        if (v3 < v5)
        {
          MEMORY[0x193AD5FD0](&v7[4 * v3], 4 * (v5 + ~v3) + 4);
        }

        *a1 = v7;
        *(a1 + 40) = v5;
        v2 = *(a1 + 48);
        goto LABEL_12;
      }
    }

    else
    {
      v7 = malloc_type_realloc(*a1, 4 * v5, 0x100004052888210uLL);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  result = 0;
  if (v2 > *(a1 + 44))
  {
    *(a1 + 44) = v2;
  }

  return result;
}

int putc(int a1, FILE *a2)
{
  flockfile(a2);
  w = a2->_w;
  a2->_w = w - 1;
  v5 = a1;
  if (w < 1 && (a1 == 10 || w <= a2->_lbfsize))
  {
    v5 = __swbuf(a1, a2);
  }

  else
  {
    v6 = a2->_p++;
    *v6 = a1;
  }

  funlockfile(a2);
  return v5;
}

int putc_unlocked(int result, FILE *a2)
{
  w = a2->_w;
  a2->_w = w - 1;
  if (w < 1 && (result == 10 || w <= a2->_lbfsize))
  {
    return __swbuf(result, a2);
  }

  v3 = a2->_p++;
  *v3 = result;
  return result;
}

int putchar(int a1)
{
  v2 = __stdoutp;
  flockfile(__stdoutp);
  w = v2->_w;
  v2->_w = w - 1;
  v4 = a1;
  if (w < 1 && (a1 == 10 || w <= v2->_lbfsize))
  {
    v4 = __swbuf(a1, v2);
  }

  else
  {
    v5 = v2->_p++;
    *v5 = a1;
  }

  funlockfile(v2);
  return v4;
}

int putchar_unlocked(int result)
{
  v1 = __stdoutp;
  w = __stdoutp->_w;
  __stdoutp->_w = w - 1;
  if (w < 1 && (result == 10 || w <= v1->_lbfsize))
  {
    return __swbuf(result, v1);
  }

  v3 = v1->_p++;
  *v3 = result;
  return result;
}

int putw(int a1, FILE *a2)
{
  v7 = a1;
  v5[0] = &v7;
  v5[1] = 4;
  v6[0] = v5;
  v6[1] = 0x400000001;
  flockfile(a2);
  v3 = __sfvwrite(a2, v6);
  funlockfile(a2);
  return v3;
}

wint_t putwc(__int32 a1, FILE *a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return fputwc_l(a1, a2, v4);
}

wint_t putwchar(__int32 a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return fputwc_l(a1, __stdoutp, v3);
}

uint64_t lflush(FILE *a1)
{
  if ((~a1->_flags & 9) != 0)
  {
    return 0;
  }

  flockfile(a1);
  v2 = __sflush(a1);
  funlockfile(a1);
  return v2;
}

int __srget(FILE *a1)
{
  if (__srefill(a1))
  {
    return -1;
  }

  --a1->_r;
  v3 = a1->_p++;
  return *v3;
}

int scanf(const char *a1, ...)
{
  va_start(va, a1);
  flockfile(__stdinp);
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  v5 = __svfscanf_l(__stdinp, v4, a1, va);
  funlockfile(__stdinp);
  return v5;
}

int scanf_l(locale_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = &__global_locale;
  if (a1 != -1)
  {
    v3 = a1;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = __c_locale;
  }

  flockfile(__stdinp);
  v5 = __svfscanf_l(__stdinp, v4, a2, va);
  funlockfile(__stdinp);
  return v5;
}

int setvbuf(FILE *a1, char *a2, int a3, size_t a4)
{
  if (a3 == 2 || (v8 = -1, a3 <= 1) && (a4 & 0x80000000) == 0)
  {
    if (off_1EAC9EA90)
    {
      (off_1EAC9EA90)(a1, 152);
      if (off_1EAC9EA90)
      {
        (off_1EAC9EA90)(a2, a4);
      }
    }

    flockfile(a1);
    __sflush(a1);
    base = a1->_ub._base;
    if (base)
    {
      if (base != a1->_ubuf)
      {
        free(base);
      }

      a1->_ub._base = 0;
    }

    a1->_lbfsize = 0;
    a1->_r = 0;
    flags = a1->_flags;
    if ((flags & 0x80) != 0)
    {
      free(a1->_bf._base);
    }

    size = 0;
    v18 = 0;
    v11 = flags & 0xE35C;
    if (a3 == 2)
    {
      v8 = 0;
LABEL_15:
      a1->_flags = v11 | 2;
      a1->_w = 0;
      a1->_p = a1->_nbuf;
      a1->_bf._base = a1->_nbuf;
      a1->_bf._size = 1;
LABEL_33:
      funlockfile(a1);
      return v8;
    }

    v11 |= __swhatbuf(a1, &size, &v18);
    v12 = size;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = size;
    }

    if (a2 && a4)
    {
      v8 = 0;
    }

    else
    {
      v14 = malloc_type_malloc(v13, 0xB8F518A4uLL);
      if (v14)
      {
        a2 = v14;
        v8 = 0;
      }

      else
      {
        v17 = size;
        if (v13 == size)
        {
          v8 = -1;
          goto LABEL_15;
        }

        a2 = malloc_type_malloc(size, 0xCA0745DEuLL);
        v8 = -1;
        v13 = v17;
        if (!a2)
        {
          goto LABEL_15;
        }
      }

      LOWORD(v11) = v11 | 0x80;
      v12 = size;
    }

    v15 = v11 | 0x800;
    if (v13 == v12)
    {
      v15 = v11;
    }

    a1->_flags = v15 | (a3 == 1);
    a1->_p = a2;
    a1->_bf._base = a2;
    a1->_bf._size = v13;
    if ((v15 & 8) != 0)
    {
      if (v15 & 1 | (a3 == 1))
      {
        a1->_w = 0;
        a1->_lbfsize = -v13;
      }

      else
      {
        a1->_w = v13;
      }
    }

    else
    {
      a1->_w = 0;
    }

    __cleanup = 1;
    goto LABEL_33;
  }

  return v8;
}

int swprintf(__int32 *a1, size_t a2, const __int32 *a3, ...)
{
  va_start(va, a3);
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return vswprintf_l(a1, a2, v6, a3, va);
}

int swscanf(const __int32 *a1, const __int32 *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vswscanf_l(a1, v5, a2, va);
}

char *__cdecl tempnam(const char *__dir, const char *__prefix)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(__dir);
    if (off_1EAC9EA80)
    {
      (off_1EAC9EA80)(__prefix);
    }
  }

  result = malloc_type_malloc(0x400uLL, 0x634E0336uLL);
  if (result)
  {
    v5 = result;
    if (!__prefix)
    {
      __prefix = "tmp.";
    }

    if (!__dir || access(__dir, 2) || (__dir[j__strsignal_r(__dir, v6, v7) - 1] != 47 ? (v15 = "/") : (v15 = ""), snprintf(v5, 0x400uLL, "%s%s%sXXXXXX", __dir, v15, __prefix), (result = _mktemp(v5)) == 0))
    {
      if (access("/var/tmp/", 2) || (snprintf(v5, 0x400uLL, "%s%sXXXXXX", "/var/tmp/", __prefix), (result = _mktemp(v5)) == 0))
      {
        if (issetugid() || (v10 = getenv("TMPDIR")) == 0 || (v11 = v10, access(v10, 2)) || (v11[j__strsignal_r(v11, v12, v13) - 1] != 47 ? (v14 = "/") : (v14 = ""), snprintf(v5, 0x400uLL, "%s%s%sXXXXXX", v11, v14, __prefix), (result = _mktemp(v5)) == 0))
        {
          snprintf(v5, 0x400uLL, "%s%sXXXXXX", "/tmp/", __prefix);
          result = _mktemp(v5);
          if (!result)
          {
            v8 = *__error();
            free(v5);
            v9 = __error();
            result = 0;
            *v9 = v8;
          }
        }
      }
    }
  }

  return result;
}

FILE *tmpfile(void)
{
  if (issetugid())
  {
    v2 = 0;
  }

  else
  {
    v2 = getenv("TMPDIR");
  }

  v10 = 0;
  v9 = 0;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "/tmp/";
  }

  if (!*v3)
  {
    return 0;
  }

  v4 = v3[j__strsignal_r(v3, v0, v1) - 1] == 47 ? "" : "/";
  asprintf(&v9, "%s%s%s", v3, v4, "tmp.XXXXXX");
  if (!v9)
  {
    return 0;
  }

  v11 = -1;
  sigprocmask(1, &v11, &v10);
  v5 = mkstemp(v9);
  if (v5 == -1)
  {
    free(v9);
    sigprocmask(3, &v10, 0);
    return 0;
  }

  unlink(v9);
  free(v9);
  sigprocmask(3, &v10, 0);
  result = fdopen(v5, "w+");
  if (!result)
  {
    v7 = *__error();
    close_NOCANCEL();
    v8 = __error();
    result = 0;
    *v8 = v7;
  }

  return result;
}

char *__cdecl tmpnam(char *a1)
{
  v1 = a1;
  if (!a1)
  {
    if (pthread_once(&tmpnam_buf_control, tmpnam_buf_allocate))
    {
      return 0;
    }

    v1 = tmpnam_buf;
    if (!tmpnam_buf)
    {
      return 0;
    }
  }

  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(v1, 1024);
  }

  snprintf(v1, 0x400uLL, "%stmp.%lu.XXXXXX", "/var/tmp/", tmpnam_tmpcount);
  ++tmpnam_tmpcount;

  return _mktemp(v1);
}

void *tmpnam_buf_allocate()
{
  result = malloc_type_malloc(0x400uLL, 0xE0379BA3uLL);
  tmpnam_buf = result;
  return result;
}

int ungetc(int a1, FILE *a2)
{
  pthread_once(&__sdidinit, __sinit);
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  v5 = __ungetc(a1, a2);
  funlockfile(a2);
  return v5;
}

uint64_t __ungetc(int a1, uint64_t a2)
{
  if (a1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
    if ((v4 & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if ((v4 & 8) != 0)
    {
      if (__sflush(a2))
      {
        return 0xFFFFFFFFLL;
      }

      v4 = *(a2 + 16) & 0xFFF7;
      *(a2 + 12) = 0;
      *(a2 + 40) = 0;
    }

    v4 |= 4u;
    *(a2 + 16) = v4;
  }

  v5 = v3;
  v6 = *(a2 + 88);
  if (v6)
  {
    v7 = *(a2 + 96);
    if (*(a2 + 8) < v7)
    {
      v8 = *a2;
LABEL_22:
      *a2 = v8 - 1;
      *(v8 - 1) = v3;
      goto LABEL_23;
    }

    if (v6 == (a2 + 116))
    {
      v14 = malloc_type_malloc(0x400uLL, 0x7A2B1554uLL);
      if (v14)
      {
        v15 = 0;
        *(a2 + 88) = v14;
        *(a2 + 96) = 1024;
        v8 = v14 + 1021;
        do
        {
          v14[v15 + 1023] = *(a2 + 118 + v15);
          v16 = v15 + 3;
          --v15;
        }

        while (v16 > 1);
        goto LABEL_22;
      }
    }

    else
    {
      v11 = malloc_type_realloc(v6, 2 * v7, 0x20A778A6uLL);
      if (v11)
      {
        v12 = v11;
        v8 = &v11[v7];
        j__mkdtempat_np(v11 + v7, v11);
        *(a2 + 88) = v12;
        *(a2 + 96) = 2 * v7;
        goto LABEL_22;
      }
    }

    return 0xFFFFFFFFLL;
  }

  *(a2 + 16) = v4 & 0xFFDF;
  v9 = *(a2 + 24);
  v10 = *a2;
  if (v9 && v10 > v9 && *(v10 - 1) == v3)
  {
    *a2 = v10 - 1;
LABEL_23:
    v13 = *(a2 + 8) + 1;
    goto LABEL_24;
  }

  *(a2 + 112) = *(a2 + 8);
  **(a2 + 104) = v10;
  *(a2 + 88) = a2 + 116;
  *(a2 + 96) = 3;
  *(a2 + 118) = v3;
  *a2 = a2 + 118;
  v13 = 1;
LABEL_24:
  *(a2 + 8) = v13;
  return v5;
}

uint64_t __ungetwc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != -1)
  {
    v5 = (*(*(a3 + 1328) + 96))(v10, a1, *(a2 + 104) + 80, a3);
    if (v5 == -1)
    {
      *(a2 + 16) |= 0x40u;
      return 0xFFFFFFFFLL;
    }

    else
    {
      while (v5)
      {
        v6 = v5 - 1;
        v7 = __ungetc(v10[v5 - 1], a2);
        v5 = v6;
        if (v7 == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v3;
}

wint_t ungetwc(wint_t a1, FILE *a2)
{
  v3 = *&a1;
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  v8 = __ungetwc(v3, a2, v7);
  funlockfile(a2);
  return v8;
}

wint_t ungetwc_l(wint_t a1, FILE *a2, locale_t a3)
{
  v5 = *&a1;
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v7 = &__global_locale;
  if (a3 != -1)
  {
    v7 = a3;
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = __c_locale;
  }

  v9 = __ungetwc(v5, a2, v8);
  funlockfile(a2);
  return v9;
}

uint64_t _vdprintf(pthread_mutex_t *a1, pthread_rwlock_t *a2, int a3, atomic_uint *a4, char *a5, __int16 *a6)
{
  v17 = 0u;
  v16 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v15 = v18;
  v22 = 0;
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18[0] = 0;
  v18[1] = 850045858;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (a3 < 0x8000)
  {
    v8 = v32;
    DWORD1(v9) = 1024;
    WORD4(v9) = 8;
    WORD5(v9) = a3;
    *(&v11 + 1) = &v8;
    *(&v13 + 1) = __swrite;
    *&v10 = v32;
    DWORD2(v10) = 1024;
    LOBYTE(v23) = 0;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v6 = __v2printf(a1, a2, &v8, a4, a5, a6);
    if ((v6 & 0x80000000) == 0)
    {
      if (__fflush(&v8))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    *__error() = 24;
    return 0xFFFFFFFFLL;
  }

  return v6;
}

int vdprintf(int a1, const char *a2, va_list a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return _vdprintf(0xFFFFFFFFFFFFFFFFLL, 0, a1, v5, a2, a3);
}

BOOL __printf_is_memory_read_only(vm_address_t a1)
{
  size = 0;
  address = a1;
  v7 = 0;
  *info = 0u;
  v6 = 0u;
  object_name = 0;
  infoCnt = 9;
  v1 = vm_region_64(*MEMORY[0x1E69E9A60], &address, &size, 9, info, &infoCnt, &object_name);
  return (v1 | info[0] & 2) == 0;
}

int vfscanf(FILE *__stream, const char *__format, va_list a3)
{
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(__stream, 152);
  }

  flockfile(__stream);
  v6 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__global_locale;
  }

  v9 = __svfscanf_l(__stream, v8, __format, a3);
  funlockfile(__stream);
  return v9;
}

int vfscanf_l(FILE *a1, locale_t a2, const char *a3, va_list a4)
{
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, 152);
  }

  v8 = &__global_locale;
  if (a2 != -1)
  {
    v8 = a2;
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  flockfile(a1);
  v10 = __svfscanf_l(a1, v9, a3, a4);
  funlockfile(a1);
  return v10;
}

int __svfscanf(FILE *a1, const char *a2, va_list a3)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return __svfscanf_l(a1, v7, a2, a3);
}

void *__parsefloat_buf(size_t a1)
{
  if (__parsefloat_buf_parsefloat_tsd_key)
  {
    v2 = 15;
  }

  else
  {
    pthread_mutex_lock(&__parsefloat_buf_parsefloat_tsd_lock);
    if ((__parsefloat_buf_parsefloat_tsd_key & 1) == 0)
    {
      __parsefloat_buf_parsefloat_tsd_key = 1;
      pthread_key_init_np();
    }

    pthread_mutex_unlock(&__parsefloat_buf_parsefloat_tsd_lock);
    if (__parsefloat_buf_parsefloat_tsd_key)
    {
      v2 = 15;
    }

    else
    {
      v2 = -1;
    }
  }

  v3 = pthread_getspecific(v2);
  if (v3)
  {
    v4 = v3;
    if (__parsefloat_buf_bsiz < a1)
    {
      v4 = reallocf(v3, a1);
      if (__parsefloat_buf_parsefloat_tsd_key)
      {
        v5 = 15;
      }

      else
      {
        v5 = -1;
      }

      pthread_setspecific(v5, v4);
      if (v4)
      {
        __parsefloat_buf_bsiz = a1;
      }

      else
      {
        __parsefloat_buf_bsiz = 0;
      }
    }
  }

  else
  {
    if (a1 <= 0x201)
    {
      v6 = 513;
    }

    else
    {
      v6 = a1;
    }

    __parsefloat_buf_bsiz = v6;
    v4 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v4)
    {
      if (__parsefloat_buf_parsefloat_tsd_key)
      {
        v7 = 15;
      }

      else
      {
        v7 = -1;
      }

      pthread_setspecific(v7, v4);
    }

    else
    {
      __parsefloat_buf_bsiz = 0;
    }
  }

  return v4;
}

int vfwprintf_l(FILE *a1, locale_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v7 = &__global_locale;
  if (a2 != -1)
  {
    v7 = a2;
  }

  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = __c_locale;
  }

  flockfile(a1);
  flags = a1->_flags;
  if ((flags & 0x1A) != 0xA || (file = a1->_file, file < 0))
  {
    v12 = __vfwprintf(a1, v8, a3, a4);
    goto LABEL_13;
  }

  v11 = 0;
  v31 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v32[0] = 0;
  v32[1] = 850045858;
  v29 = v32;
  v36 = 0;
  v37 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  if ((flags & 0x200) == 0 && !a1->_bf._base)
  {
    if (__swsetup(a1))
    {
      v12 = -1;
      goto LABEL_13;
    }

    flags = a1->_flags;
    v11 = v37 & 0xF8;
    LOWORD(file) = a1->_file;
  }

  WORD4(v23) = flags & 0xFFFD;
  WORD5(v23) = file;
  write = a1->_write;
  *(&v25 + 1) = a1->_cookie;
  *(&v27 + 1) = write;
  extra = a1->_extra;
  LOBYTE(v37) = *(extra + 72) & 7 | v11;
  v16 = *(extra + 8);
  v18 = *(extra + 5);
  v17 = *(extra + 6);
  v40 = *(extra + 7);
  v41 = v16;
  v38 = v18;
  v39 = v17;
  v19 = *(extra + 12);
  v21 = *(extra + 9);
  v20 = *(extra + 10);
  v44 = *(extra + 11);
  v45 = v19;
  v42 = v21;
  v43 = v20;
  v22 = v46;
  *&v24 = v46;
  DWORD1(v23) = 1024;
  DWORD2(v24) = 1024;
  LODWORD(v25) = 0;
  v12 = __vfwprintf(&v22, v8, a3, a4);
  if ((v12 & 0x80000000) == 0 && __fflush(&v22))
  {
    v12 = -1;
  }

  if ((BYTE8(v23) & 0x40) != 0)
  {
    a1->_flags |= 0x40u;
  }

LABEL_13:
  funlockfile(a1);
  return v12;
}

uint64_t __vfwprintf(uint64_t a1, _xlocale *a2, unsigned int *a3, _DWORD *a4)
{
  v397 = a4;
  v396 = 0;
  memset(v395, 0, 32);
  v393 = 0.0;
  v394 = 0;
  v392 = 0;
  v391 = 0;
  v390 = 0uLL;
  v389 = 0;
  v388 = 0;
  memset(v387, 0, sizeof(v387));
  *v386 = 0u;
  v384 = 0;
  if (((*(a1 + 16) & 8) == 0 || (*(a1 + 16) & 0x200) == 0 && !*(a1 + 24)) && __swsetup(a1))
  {
    *__error() = 9;
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 104);
  if ((*(v7 + 72) & 7) == 0)
  {
    *(v7 + 72) |= 1u;
  }

  v384 = v397;
  v385 = 0;
  v8 = v387 + 8;
  *&v386[2] = v387 + 8;
  *&v387[0] = 0;
  v373 = a1;
  *v386 = a1;
  v399[0] = 0;
  memset(&v405, 0, sizeof(v405));
  v9 = localeconv_l(a2);
  v377 = 0;
  v367 = 0;
  v368 = 0;
  v10 = 0;
  v369 = 0;
  v370 = 0;
  v371 = 0;
  v11 = 0;
  if ((~mbrtowc_l(v399, v9->decimal_point, *(*(a2 + 166) + 64), &v405, a2) & 0xFFFFFFFE) != 0)
  {
    v12 = v399[0];
  }

  else
  {
    v12 = 46;
  }

  HIDWORD(v394) = v12;
  v363 = 0;
  v13 = 1;
  v364 = a3;
LABEL_12:
  for (i = a3; ; ++i)
  {
    v15 = *i;
    if (!*i || v15 == 37)
    {
      break;
    }
  }

  v16 = i - a3;
  if (i == a3)
  {
    v378 = v11;
  }

  else
  {
    v378 = (v16 >> 2) + v11;
    if (v378 >= 0x80000000)
    {
      goto LABEL_754;
    }

    v17.i32[0] = 1;
    v17.i32[1] = v16 >> 2;
    v18 = vadd_s32(*&v387[0], v17);
    v19 = v387[0];
    v20 = &v8[16 * SLODWORD(v387[0])];
    *v20 = a3;
    *(v20 + 1) = (v16 >> 2);
    *&v387[0] = v18;
    if (v19 >= 7)
    {
      v21 = v13;
      v22 = __sprint(*v386, a2, &v386[2]);
      v13 = v21;
      if (v22)
      {
        goto LABEL_758;
      }
    }
  }

  if (!v15)
  {
LABEL_756:
    __sprint(*v386, a2, &v386[2]);
    goto LABEL_757;
  }

  v23 = 0;
  v24 = 0;
  v395[1] = 0;
  v396 = 0;
  v25 = a3;
  a3 = i + 1;
  v401 = 0;
  v389 = 88;
  v26 = -1;
LABEL_24:
  while (2)
  {
    v28 = *a3++;
    v27 = v28;
LABEL_25:
    v29 = v23;
    while (1)
    {
      v23 = v29;
      if (v27 - 49 >= 9)
      {
        break;
      }

      v29 = 0;
      do
      {
        v29 = v27 - 48 + 10 * v29;
        v30 = *a3++;
        v27 = v30;
      }

      while (v30 - 48 < 0xA);
      if (v27 == 36)
      {
        v13 = v29;
        if (!v385)
        {
          v385 = v399;
          v34 = v26;
          v35 = v10;
          v36 = v24;
          warguments = __find_warguments(v364, v384, &v385);
          v24 = v36;
          v10 = v35;
          v26 = v34;
          v13 = v29;
          if (warguments)
          {
            goto LABEL_755;
          }
        }

        goto LABEL_24;
      }
    }

    switch(v27)
    {
      case ' ':
        if (!v396)
        {
          v396 = 32;
        }

        continue;
      case '#':
        v24 = v24 | 1;
        continue;
      case '\'':
        v24 = v24 | 0x200;
        continue;
      case '*':
        v38 = *a3;
        v39 = *a3 - 48;
        if (v39 > 9)
        {
          v43 = 0;
          v25 = a3;
        }

        else
        {
          v40 = v26;
          v41 = 0;
          v25 = a3;
          do
          {
            v41 = 10 * v41 + v39;
            v42 = *(v25 + 1);
            v25 += 4;
            v38 = v42;
            v39 = v42 - 48;
          }

          while ((v42 - 48) < 0xA);
          v43 = 16 * v41;
          v26 = v40;
        }

        v44 = v385;
        if (v38 != 36)
        {
          if (v385)
          {
            v48 = *(v385 + 4 * v13);
          }

          else
          {
            v49 = v397;
            v397 += 2;
            v48 = *v49;
          }

          v13 = (v13 + 1);
LABEL_74:
          v23 = v48;
          if (v48 < 0)
          {
            v23 = -v48;
LABEL_76:
            v24 = v24 | 4;
          }

          continue;
        }

        if (v385)
        {
          goto LABEL_68;
        }

        v45 = v24;
        v46 = v26;
        v47 = v13;
        v385 = v399;
        if (!__find_warguments(v364, v384, &v385))
        {
          v44 = v385;
          v13 = v47;
          v26 = v46;
          v24 = v45;
          if (v385)
          {
LABEL_68:
            v48 = *&v44[v43];
          }

          else
          {
            v50 = v397;
            v397 += 2;
            v48 = *v50;
          }

          v25 += 4;
          a3 = v25;
          goto LABEL_74;
        }

        goto LABEL_755;
      case '+':
        v396 = 43;
        continue;
      case ',':
      case ':':
      case ';':
      case '_':
        v389 = v27;
        continue;
      case '-':
        goto LABEL_76;
      case '.':
        v31 = *a3++;
        v27 = v31;
        if (v31 != 42)
        {
          v26 = 0;
          v32 = v27 - 48;
          if (v27 - 48 <= 9)
          {
            v26 = 0;
            do
            {
              v26 = 10 * v26 + v32;
              v33 = *a3++;
              v27 = v33;
              v32 = v33 - 48;
            }

            while (v33 - 48 < 0xA);
          }

          goto LABEL_25;
        }

        v51 = *a3;
        v52 = *a3 - 48;
        if (v52 > 9)
        {
          v55 = 0;
          v25 = a3;
        }

        else
        {
          v53 = 0;
          v25 = a3;
          do
          {
            v53 = 10 * v53 + v52;
            v54 = *(v25 + 1);
            v25 += 4;
            v51 = v54;
            v52 = v54 - 48;
          }

          while ((v54 - 48) < 0xA);
          v55 = 16 * v53;
        }

        v56 = v385;
        if (v51 != 36)
        {
          if (v385)
          {
            v59 = *(v385 + 4 * v13);
          }

          else
          {
            v60 = v397;
            v397 += 2;
            v59 = *v60;
          }

          v13 = (v13 + 1);
LABEL_93:
          v26 = v59;
          continue;
        }

        if (v385)
        {
          goto LABEL_87;
        }

        v57 = v24;
        v58 = v13;
        v385 = v399;
        if (!__find_warguments(v364, v384, &v385))
        {
          v56 = v385;
          v13 = v58;
          v24 = v57;
          if (v385)
          {
LABEL_87:
            v59 = *&v56[v55];
          }

          else
          {
            v61 = v397;
            v397 += 2;
            v59 = *v61;
          }

          v25 += 4;
          a3 = v25;
          goto LABEL_93;
        }

        goto LABEL_755;
      case '0':
        v24 = v24 | 0x80;
        continue;
      case 'A':
      case 'a':
        if ((v24 & 0x4000) != 0)
        {
          goto LABEL_124;
        }

        if (v27 == 97)
        {
          v65 = 120;
        }

        else
        {
          v65 = 88;
        }

        v66 = "0123456789ABCDEFn";
        if (v27 == 97)
        {
          v66 = &__vfwprintf_xdigs_lower;
        }

        v368 = v66;
        if (v27 == 97)
        {
          v67 = 112;
        }

        else
        {
          v67 = 80;
        }

        v372 = v67;
        v401 = v65;
        v68 = v26 + (v26 >= 0);
        v374 = v24;
        if ((v24 & 8) != 0)
        {
          v63 = v13;
          if (v385)
          {
            v100 = *(v385 + 2 * v13);
          }

          else
          {
            v118 = v397;
            v397 += 2;
            v100 = *v118;
          }

          v393 = v100;
          v117 = __hldtoa(v368, v26 + (v26 >= 0), &v392, &v394, &v391);
        }

        else
        {
          v63 = v13;
          if (v385)
          {
            v69 = *(v385 + 2 * v13);
          }

          else
          {
            v116 = v397;
            v397 += 2;
            v69 = *v116;
          }

          v393 = v69;
          v117 = __hdtoa(v368, v26 + (v26 >= 0), &v392, &v394, &v391, v69);
        }

        v95 = v117;
        if (v68 >= 0)
        {
          v70 = v68;
        }

        else
        {
          v70 = &v391[-v117];
        }

        if (v392 == 0x7FFFFFFF)
        {
          v401 = 0;
        }

        free(v377);
        v369 = v391 - v95;
        v93 = v372;
        goto LABEL_271;
      case 'C':
        v73 = v24 | 0x10;
        if ((v24 & 0x4000) == 0)
        {
          goto LABEL_133;
        }

        goto LABEL_161;
      case 'D':
        LOWORD(v24) = v24 | 0x10;
        goto LABEL_150;
      case 'E':
      case 'e':
        if ((v24 & 0x4000) != 0)
        {
          goto LABEL_124;
        }

        v62 = v24;
        v63 = v13;
        if (v26 >= 0)
        {
          ++v26;
        }

        else
        {
          v26 = 7;
        }

        v64 = v27;
        goto LABEL_118;
      case 'F':
      case 'f':
        if ((v24 & 0x4000) != 0)
        {
          goto LABEL_124;
        }

        v62 = v24;
        v63 = v13;
        v64 = 0;
        goto LABEL_118;
      case 'G':
      case 'g':
        if ((v24 & 0x4000) != 0)
        {
LABEL_124:
          v72 = 0;
          v73 = v24 | 0x100;
          goto LABEL_402;
        }

        v62 = v24;
        v63 = v13;
        v64 = v27 - 2;
        if (v26 <= 1)
        {
          v26 = 1;
        }

LABEL_118:
        if (v26 >= 0)
        {
          v70 = v26;
        }

        else
        {
          v70 = 6;
        }

        free(v377);
        v374 = v62;
        if ((v62 & 8) != 0)
        {
          if (v385)
          {
            v74 = *(v385 + 2 * v63);
          }

          else
          {
            v96 = v397;
            v397 += 2;
            v74 = *v96;
          }

          v393 = v74;
          v93 = v64;
          if (v64)
          {
            v97 = 2;
          }

          else
          {
            v97 = 3;
          }

          v95 = __ldtoa(&v393, v97, v70, &v392, &v394, &v391);
        }

        else
        {
          if (v385)
          {
            v71 = *(v385 + 2 * v63);
          }

          else
          {
            v92 = v397;
            v397 += 2;
            v71 = *v92;
          }

          v393 = v71;
          v93 = v64;
          if (v64)
          {
            v94 = 2;
          }

          else
          {
            v94 = 3;
          }

          v95 = __dtoa(v94, v70, &v392, &v394, &v391, v71);
          if (v392 == 9999)
          {
            v392 = 0x7FFFFFFF;
          }
        }

        v369 = v391 - v95;
LABEL_271:
        v377 = __mbsconv(v95, 0xFFFFFFFFLL, a2);
        __freedtoa(v95);
        if (v394)
        {
          v396 = 45;
        }

        v13 = (v63 + 1);
        v26 = v70;
        v119 = v374;
        v371 = v93;
        if (v392 == 0x7FFFFFFF)
        {
          if (*v377 == 78)
          {
            if (v27 <= 0x60)
            {
              v25 = "N";
            }

            else
            {
              v25 = "n";
            }

            v396 = 0;
          }

          else if (v27 <= 0x60)
          {
            v25 = "I";
          }

          else
          {
            v25 = "i";
          }

          v72 = 0;
          v73 = v374 & 0xFF7F;
          v10 = 3;
          goto LABEL_402;
        }

        v73 = v374 | 0x100;
        if ((v27 & 0xFFFFFFDF) != 0x47)
        {
          goto LABEL_284;
        }

        if (v392 >= -3 && (v120 = v70 - v392, v70 >= v392))
        {
          v130 = v374 & 1;
          if ((v374 & 1) == 0)
          {
            v120 = v369 - v392;
          }

          v26 = v120 & ~(v120 >> 63);
        }

        else
        {
          if ((v374 & 1) == 0)
          {
            v26 = v369;
          }

LABEL_284:
          if (v93)
          {
            v379 = v26;
            v121 = v13;
            v122 = v392 - 1;
            if (v392 >= 1)
            {
              v123 = 43;
            }

            else
            {
              v123 = 45;
            }

            if (v392 - 1 < 0)
            {
              v122 = 1 - v392;
            }

            v402[0] = v93;
            v402[1] = v123;
            if (v122 < 0xA)
            {
              v131 = &v403;
              if ((v93 & 0x5F) == 0x45)
              {
                v403 = 48;
                v131 = v404;
              }

              *v131 = v122 | 0x30;
              v127 = v131 + 1;
            }

            else
            {
              v124 = 0;
              do
              {
                v125 = v122;
                v126 = v122;
                v122 /= 0xAu;
                *&v398[v124 + 20] = (v126 % 0xA) | 0x30;
                v124 -= 4;
              }

              while (v125 > 0x63);
              *&v398[v124 + 20] = v122 | 0x30;
              v127 = &v403;
              if (v124 + 28 <= 31)
              {
                v128 = v124 + 20;
                v365 = -17 - v124;
                j__mkdtempat_np(&v403, &v398[v124 + 20]);
                v119 = v374;
                v73 = v374 | 0x100;
                v13 = v121;
                v129 = 20;
                if (v128 > 20)
                {
                  v129 = v128;
                }

                v127 = &v404[(v129 + v365) & 0xFFFFFFFFFFFFFFFCLL];
              }
            }

            v72 = 0;
            v132 = (v127 - v402) >> 2;
            v26 = v379;
            v363 = v132;
            v10 = v379 + ((v379 > 1) | (v119 & 1)) + v132;
LABEL_321:
            v25 = v377;
            goto LABEL_402;
          }

          v130 = v374 & 1;
        }

        v371 = 0;
        v72 = 0;
        if (v392 <= 0)
        {
          v133 = 1;
        }

        else
        {
          v133 = v392;
        }

        if (v130)
        {
          v134 = 0;
        }

        else
        {
          v134 = v26 == 0;
        }

        if (v134)
        {
          v135 = 0;
        }

        else
        {
          v135 = v26 + 1;
        }

        v10 = v135 + v133;
        if ((v374 & 0x200) != 0 && v392 >= 1)
        {
          v136 = v13;
          v137 = v26;
          inited = grouping_init_0(v395, v392, a2);
          v26 = v137;
          v13 = v136;
          v72 = 0;
          v371 = 0;
          v10 += inited;
        }

        goto LABEL_321;
      case 'L':
        v24 = v24 | 8;
        continue;
      case 'O':
        LOWORD(v24) = v24 | 0x10;
        goto LABEL_163;
      case 'S':
        LOWORD(v24) = v24 | 0x10;
        goto LABEL_155;
      case 'U':
        LOWORD(v24) = v24 | 0x10;
        goto LABEL_128;
      case 'X':
        v80 = "0123456789ABCDEFn";
        goto LABEL_141;
      case 'c':
        v73 = v24;
        if ((v24 & 0x4000) != 0)
        {
LABEL_161:
          v72 = 0;
        }

        else
        {
LABEL_133:
          if ((v73 & 0x10) != 0)
          {
            if (v385)
            {
              v99 = *(v385 + 4 * v13);
            }

            else
            {
              v115 = v397;
              v397 += 2;
              v99 = *v115;
            }
          }

          else
          {
            v76 = v26;
            v77 = v13;
            if (v385)
            {
              v78 = *(v385 + 4 * v13);
            }

            else
            {
              v114 = v397;
              v397 += 2;
              v78 = *v114;
            }

            v99 = btowc_l(v78, a2);
            LODWORD(v13) = v77;
            v26 = v76;
          }

          v72 = 0;
          v13 = (v13 + 1);
          *v405.__mbstate8 = v99;
          v396 = 0;
          v25 = &v405;
          v10 = 1;
        }

        goto LABEL_402;
      case 'd':
      case 'i':
LABEL_150:
        if ((v24 & 0x4000) != 0)
        {
          goto LABEL_167;
        }

        if ((v24 & 0x1C20) != 0)
        {
          if (v385)
          {
            v86 = *(v385 + 2 * v13);
          }

          else
          {
            v109 = v397;
            v397 += 2;
            v86 = *v109;
          }

          if ((v86 & 0x8000000000000000) == 0)
          {
            v370 = v86;
            goto LABEL_358;
          }

          v370 = -v86;
        }

        else
        {
          if ((v24 & 0x10) != 0)
          {
            if (v385)
            {
              v98 = *(v385 + 2 * v13);
            }

            else
            {
              v139 = v397;
              v397 += 2;
              v98 = *v139;
            }
          }

          else if ((v24 & 0x40) != 0)
          {
            if (v385)
            {
              LODWORD(v98) = *(v385 + 4 * v13);
            }

            else
            {
              v98 = v397;
              v397 += 2;
              LODWORD(v98) = *v98;
            }

            v98 = v98;
          }

          else if ((v24 & 0x2000) != 0)
          {
            if (v385)
            {
              LODWORD(v98) = *(v385 + 4 * v13);
            }

            else
            {
              v98 = v397;
              v397 += 2;
              LODWORD(v98) = *v98;
            }

            v98 = v98;
          }

          else
          {
            if (v385)
            {
              LODWORD(v98) = *(v385 + 4 * v13);
            }

            else
            {
              v98 = v397;
              v397 += 2;
              LODWORD(v98) = *v98;
            }

            v98 = v98;
          }

          if ((v98 & 0x8000000000000000) == 0)
          {
            v367 = v98;
            goto LABEL_358;
          }

          v367 = -v98;
        }

        v396 = 45;
LABEL_358:
        v113 = 10;
        goto LABEL_384;
      case 'h':
        if ((v24 & 0x40) != 0)
        {
          v24 = v24 & 0xFFFFDFBF | 0x2000;
        }

        else
        {
          v24 = v24 | 0x40;
        }

        continue;
      case 'j':
        v24 = v24 | 0x1000;
        continue;
      case 'l':
        if ((v24 & 0x10) != 0)
        {
          v24 = v24 & 0xFFFFFFCF | 0x20;
        }

        else
        {
          v24 = v24 | 0x10;
        }

        continue;
      case 'n':
        if (v385)
        {
          v85 = *(v385 + 2 * v13);
        }

        else
        {
          v107 = v397;
          v397 += 2;
          v85 = *v107;
        }

        v13 = (v13 + 1);
        v11 = v378;
        if (v85)
        {
          if ((v24 & 0x20) != 0 || (v24 & 0x400) != 0 || (v24 & 0x800) != 0 || (v24 & 0x1000) != 0 || (v24 & 0x10) != 0)
          {
            v11 = v378;
            *v85 = v378;
          }

          else if ((v24 & 0x40) != 0)
          {
            v11 = v378;
            *v85 = v378;
          }

          else
          {
            v11 = v378;
            if ((v24 & 0x2000) != 0)
            {
              *v85 = v378;
            }

            else
            {
              *v85 = v378;
            }
          }
        }

        goto LABEL_12;
      case 'o':
LABEL_163:
        if ((v24 & 0x4000) != 0)
        {
          goto LABEL_167;
        }

        if ((v24 & 0x1C20) != 0)
        {
          if (v385)
          {
            v91 = *(v385 + 2 * v13);
          }

          else
          {
            v111 = v397;
            v397 += 2;
            v91 = *v111;
          }

          v370 = v91;
        }

        else
        {
          if ((v24 & 0x10) != 0)
          {
            if (v385)
            {
              v108 = *(v385 + 2 * v13);
            }

            else
            {
              v142 = v397;
              v397 += 2;
              v108 = *v142;
            }
          }

          else if ((v24 & 0x40) != 0)
          {
            if (v385)
            {
              LOWORD(v108) = *(v385 + 8 * v13);
            }

            else
            {
              v108 = v397;
              v397 += 2;
              LODWORD(v108) = *v108;
            }

            v108 = v108;
          }

          else if ((v24 & 0x2000) != 0)
          {
            if (v385)
            {
              LOBYTE(v108) = *(v385 + 16 * v13);
            }

            else
            {
              v108 = v397;
              v397 += 2;
              LODWORD(v108) = *v108;
            }

            v108 = v108;
          }

          else
          {
            if (v385)
            {
              LODWORD(v108) = *(v385 + 4 * v13);
            }

            else
            {
              v108 = v397;
              v397 += 2;
              LODWORD(v108) = *v108;
            }

            v108 = v108;
          }

          v367 = v108;
        }

        v113 = 8;
        goto LABEL_383;
      case 'p':
        if ((v24 & 0x4000) != 0)
        {
          v72 = 0;
          v27 = 112;
          goto LABEL_168;
        }

        if (v385)
        {
          v79 = *(v385 + 2 * v13);
        }

        else
        {
          v112 = v397;
          v397 += 2;
          v79 = *v112;
        }

        v370 = v79;
        LOWORD(v24) = v24 | 0x1000;
        v401 = 120;
        v113 = 16;
        v368 = &__vfwprintf_xdigs_lower;
        goto LABEL_383;
      case 'q':
        v24 = v24 | 0x20;
        continue;
      case 's':
LABEL_155:
        v375 = v24;
        if ((v24 & 0x10) != 0)
        {
          v87 = v26;
          v88 = v13;
          if (v385)
          {
            v90 = *(v385 + 2 * v13);
          }

          else
          {
            v102 = v397;
            v397 += 2;
            v90 = *v102;
          }

          if (v90)
          {
            v25 = v90;
          }

          else
          {
            v25 = &dword_18E98AEDC;
          }
        }

        else
        {
          v87 = v26;
          v88 = v13;
          free(v377);
          if (v385)
          {
            v89 = *(v385 + 2 * v88);
          }

          else
          {
            v101 = v397;
            v397 += 2;
            v89 = *v101;
          }

          if (v89)
          {
            v25 = __mbsconv(v89, v87, a2);
            v377 = v25;
            if (!v25)
            {
              v377 = 0;
              *(v373 + 16) |= 0x40u;
              goto LABEL_757;
            }
          }

          else
          {
            v377 = 0;
            v25 = &dword_18E98AEDC;
          }
        }

        v103 = wcslen(v25);
        if (v103 >= 0x7FFFFFFF)
        {
          goto LABEL_754;
        }

        v72 = 0;
        v13 = (v88 + 1);
        v26 = v87;
        if (v87 >= v103)
        {
          v104 = v103;
        }

        else
        {
          v104 = v87;
        }

        if (v87 >= 0)
        {
          v10 = v104;
        }

        else
        {
          v10 = v103;
        }

        v396 = 0;
        v73 = v375;
        goto LABEL_402;
      case 't':
        v24 = v24 | 0x800;
        continue;
      case 'u':
LABEL_128:
        if ((v24 & 0x4000) != 0)
        {
          goto LABEL_167;
        }

        if ((v24 & 0x1C20) != 0)
        {
          if (v385)
          {
            v75 = *(v385 + 2 * v13);
          }

          else
          {
            v110 = v397;
            v397 += 2;
            v75 = *v110;
          }

          v370 = v75;
        }

        else
        {
          if ((v24 & 0x10) != 0)
          {
            if (v385)
            {
              v105 = *(v385 + 2 * v13);
            }

            else
            {
              v140 = v397;
              v397 += 2;
              v105 = *v140;
            }
          }

          else if ((v24 & 0x40) != 0)
          {
            if (v385)
            {
              LOWORD(v105) = *(v385 + 8 * v13);
            }

            else
            {
              v105 = v397;
              v397 += 2;
              LODWORD(v105) = *v105;
            }

            v105 = v105;
          }

          else if ((v24 & 0x2000) != 0)
          {
            if (v385)
            {
              LOBYTE(v105) = *(v385 + 16 * v13);
            }

            else
            {
              v105 = v397;
              v397 += 2;
              LODWORD(v105) = *v105;
            }

            v105 = v105;
          }

          else
          {
            if (v385)
            {
              LODWORD(v105) = *(v385 + 4 * v13);
            }

            else
            {
              v105 = v397;
              v397 += 2;
              LODWORD(v105) = *v105;
            }

            v105 = v105;
          }

          v367 = v105;
        }

        v113 = 10;
        goto LABEL_383;
      case 'v':
        v24 = v24 | 0x4000;
        continue;
      case 'x':
        v80 = &__vfwprintf_xdigs_lower;
LABEL_141:
        v368 = v80;
        if ((v24 & 0x4000) == 0)
        {
          if ((v24 & 0x1C20) == 0)
          {
            if ((v24 & 0x10) != 0)
            {
              v82 = v26;
              if (v385)
              {
                v106 = *(v385 + 2 * v13);
              }

              else
              {
                v141 = v397;
                v397 += 2;
                v106 = *v141;
              }
            }

            else if ((v24 & 0x40) != 0)
            {
              v82 = v26;
              if (v385)
              {
                LOWORD(v106) = *(v385 + 8 * v13);
              }

              else
              {
                v106 = v397;
                v397 += 2;
                LODWORD(v106) = *v106;
              }

              v106 = v106;
            }

            else
            {
              v82 = v26;
              if ((v24 & 0x2000) != 0)
              {
                if (v385)
                {
                  LOBYTE(v106) = *(v385 + 16 * v13);
                }

                else
                {
                  v106 = v397;
                  v397 += 2;
                  LODWORD(v106) = *v106;
                }

                v106 = v106;
              }

              else
              {
                if (v385)
                {
                  LODWORD(v106) = *(v385 + 4 * v13);
                }

                else
                {
                  v106 = v397;
                  v397 += 2;
                  LODWORD(v106) = *v106;
                }

                v106 = v106;
              }
            }

            v367 = v106;
LABEL_370:
            v26 = v82;
            if (v24)
            {
              if ((v24 & 0x1C20) == 0)
              {
                if (!v367)
                {
                  goto LABEL_374;
                }

                goto LABEL_373;
              }

              if (v370)
              {
LABEL_373:
                v401 = v27;
              }
            }

LABEL_374:
            LOWORD(v24) = v24 & 0xBDFF;
            v113 = 16;
LABEL_383:
            v396 = 0;
LABEL_384:
            v143 = v13;
            if (v26 < 0)
            {
              v73 = v24;
            }

            else
            {
              v73 = v24 & 0xFF7F;
            }

            if ((v73 & 0x1C20) != 0)
            {
              if (!(v370 | v26))
              {
                v25 = &v406;
                if (v113 != 8)
                {
                  goto LABEL_397;
                }

                v25 = &v406;
                if ((v24 & 1) == 0)
                {
                  goto LABEL_397;
                }
              }

              v144 = v73 & 1;
              v145 = v370;
            }

            else
            {
              if (!(v367 | v26))
              {
                v25 = &v406;
                if (v113 != 8)
                {
                  goto LABEL_397;
                }

                v25 = &v406;
                if ((v24 & 1) == 0)
                {
                  goto LABEL_397;
                }
              }

              v144 = v73 & 1;
              v145 = v367;
            }

            v146 = v26;
            v147 = __ultoa_0(v145, &v406, v113, v144, v368);
            v26 = v146;
            v25 = v147;
LABEL_397:
            v148 = &v406 - v25;
            v10 = (&v406 - v25) >> 2;
            if (v10 >= 33)
            {
              abort_report_np("%s:%s:%u: size (%zd) > BUF (%d)");
            }

            v13 = (v143 + 1);
            if ((v73 & 0x200) != 0 && &v406 != v25)
            {
              v380 = v8;
              v149 = v25;
              v150 = v73;
              v151 = v10;
              v152 = v26;
              v153 = grouping_init_0(v395, v148 >> 2, a2);
              v26 = v152;
              v154 = v151;
              v73 = v150;
              v25 = v149;
              v8 = v380;
              v13 = (v143 + 1);
              v10 = v154 + v153;
            }

            v72 = v26;
            goto LABEL_402;
          }

          if ((v24 & 0x1000) != 0 || (v24 & 0x400) != 0)
          {
            v82 = v26;
            v81 = v385;
            if (!v385)
            {
              goto LABEL_146;
            }
          }

          else
          {
            v81 = v385;
            v82 = v26;
            if (!v385)
            {
LABEL_146:
              v83 = v397;
              v397 += 2;
              v84 = *v83;
LABEL_195:
              v370 = v84;
              goto LABEL_370;
            }
          }

          v84 = v81[2 * v13];
          goto LABEL_195;
        }

LABEL_167:
        v72 = 0;
LABEL_168:
        v73 = v24;
LABEL_402:
        v381 = v26;
        v376 = v13;
        if ((v73 & 0x4000) == 0)
        {
          if (v72 <= v10)
          {
            v155 = v10;
          }

          else
          {
            v155 = v72;
          }

          v156 = v396;
          if (v396)
          {
            ++v155;
          }

          if (v401)
          {
            v155 += 2;
          }

          if (v23 <= v155)
          {
            v157 = v155;
          }

          else
          {
            v157 = v23;
          }

          v11 = v157 + v378;
          if (v157 + v378 < 0x80000000)
          {
            v361 = v72;
            v158 = v23 - v155;
            v159 = v73 & 0x84;
            if ((v73 & 0x84) == 0 && v158 >= 1)
            {
              v360 = v25;
              v160 = v73;
              v161 = v10;
              v162 = v23 - v155;
              do
              {
                if (v162 >= 0x10)
                {
                  v163 = 16;
                }

                else
                {
                  v163 = v162;
                }

                v164.i32[0] = 1;
                v164.i32[1] = v163;
                v165 = vadd_s32(*&v387[0], v164);
                v166 = v387[0];
                v167 = &v8[16 * SLODWORD(v387[0])];
                *v167 = &blanks_0;
                *(v167 + 1) = v163;
                *&v387[0] = v165;
                if (v166 >= 7 && __sprint(*v386, a2, &v386[2]))
                {
                  goto LABEL_757;
                }

                v168 = __OFSUB__(v162, v163);
                v162 -= v163;
              }

              while (!((v162 < 0) ^ v168 | (v162 == 0)));
              v156 = v396;
              v10 = v161;
              v73 = v160;
              v25 = v360;
            }

            if (v156)
            {
              v169 = vadd_s32(*&v387[0], 0x100000001);
              v170 = v387[0];
              v171 = &v8[16 * SLODWORD(v387[0])];
              *v171 = &v396;
              v171[1] = 1;
              *&v387[0] = v169;
              if (v170 >= 7)
              {
                if (__sprint(*v386, a2, &v386[2]))
                {
                  goto LABEL_757;
                }
              }
            }

            if (v401)
            {
              v400 = 48;
              v172 = vadd_s32(*&v387[0], 0x200000001);
              v173 = v387[0];
              v174 = &v8[16 * SLODWORD(v387[0])];
              *v174 = &v400;
              v174[1] = 2;
              *&v387[0] = v172;
              if (v173 >= 7)
              {
                if (__sprint(*v386, a2, &v386[2]))
                {
                  goto LABEL_757;
                }
              }
            }

            if (v159 == 128 && v158 >= 1)
            {
              v175 = v158;
              do
              {
                v176 = v175 >= 0x10 ? 16 : v175;
                v177.i32[0] = 1;
                v177.i32[1] = v176;
                v178 = vadd_s32(*&v387[0], v177);
                v179 = v387[0];
                v180 = &v8[16 * SLODWORD(v387[0])];
                *v180 = &zeroes_0;
                *(v180 + 1) = v176;
                *&v387[0] = v178;
                if (v179 >= 7)
                {
                  if (__sprint(*v386, a2, &v386[2]))
                  {
                    goto LABEL_757;
                  }
                }

                v168 = __OFSUB__(v175, v176);
                v175 -= v176;
              }

              while (!((v175 < 0) ^ v168 | (v175 == 0)));
            }

            if ((v73 & 0x100) == 0)
            {
              v181 = v361 - v10;
              if (v361 - v10 >= 1)
              {
                do
                {
                  v182 = v181 >= 0x10 ? 16 : v181;
                  v183.i32[0] = 1;
                  v183.i32[1] = v182;
                  v184 = vadd_s32(*&v387[0], v183);
                  v185 = v387[0];
                  v186 = &v8[16 * SLODWORD(v387[0])];
                  *v186 = &zeroes_0;
                  *(v186 + 1) = v182;
                  *&v387[0] = v184;
                  if (v185 >= 7)
                  {
                    if (__sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_757;
                    }
                  }

                  v168 = __OFSUB__(v181, v182);
                  v181 -= v182;
                }

                while (!((v181 < 0) ^ v168 | (v181 == 0)));
              }

              if (v395[1])
              {
                if ((grouping_print_0(v395, v386, v25, &v406, a2) & 0x80000000) != 0)
                {
                  goto LABEL_757;
                }

                goto LABEL_741;
              }

              v230.i32[0] = 1;
              v230.i32[1] = v10;
              v231 = vadd_s32(*&v387[0], v230);
              v232 = v387[0];
              v233 = &v8[16 * SLODWORD(v387[0])];
              *v233 = v25;
              v233[1] = v10;
              *&v387[0] = v231;
              if (v232 >= 7)
              {
                goto LABEL_549;
              }

              goto LABEL_741;
            }

            if (!v371)
            {
              v214 = v392;
              if (v392 <= 0)
              {
                v234 = vadd_s32(*&v387[0], 0x100000001);
                v235 = v387[0];
                v236 = &v8[16 * SLODWORD(v387[0])];
                *v236 = &zeroes_0;
                *(v236 + 1) = 1;
                *&v387[0] = v234;
                if (v235 >= 7 && __sprint(*v386, a2, &v386[2]))
                {
                  goto LABEL_757;
                }

                v237 = v381;
                if (v381 || (v73 & 1) != 0)
                {
                  v238 = vadd_s32(*&v387[0], 0x100000001);
                  v239 = v387[0];
                  v240 = &v8[16 * SLODWORD(v387[0])];
                  *v240 = &v394 + 4;
                  *(v240 + 1) = 1;
                  v237 = v381;
                  *&v387[0] = v238;
                  if (v239 >= 7)
                  {
                    v241 = __sprint(*v386, a2, &v386[2]);
                    v237 = v381;
                    if (v241)
                    {
                      goto LABEL_757;
                    }
                  }
                }

                v242 = v392;
                if (v392 < 0)
                {
                  v243 = -v392;
                  do
                  {
                    if (v243 >= 0x10)
                    {
                      v244 = 16;
                    }

                    else
                    {
                      v244 = v243;
                    }

                    v245.i32[0] = 1;
                    v245.i32[1] = v244;
                    v246 = vadd_s32(*&v387[0], v245);
                    v247 = v387[0];
                    v248 = &v8[16 * SLODWORD(v387[0])];
                    *v248 = &zeroes_0;
                    *(v248 + 1) = v244;
                    *&v387[0] = v246;
                    if (v247 >= 7 && __sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_757;
                    }

                    v168 = __OFSUB__(v243, v244);
                    v243 -= v244;
                  }

                  while (!((v243 < 0) ^ v168 | (v243 == 0)));
                  v242 = v392;
                  v237 = v381;
                }

                v249 = v237 + v242;
              }

              else
              {
                v215 = &v377[v369];
                if (v395[1])
                {
                  v216 = grouping_print_0(v395, v386, v25, v215, a2);
                  if (v216 < 0)
                  {
                    goto LABEL_757;
                  }
                }

                else
                {
                  v324 = (v215 - v25) >> 2;
                  if (v324 >= v392)
                  {
                    v325 = v392;
                  }

                  else
                  {
                    v325 = v324;
                  }

                  if (v324 < 1)
                  {
                    LODWORD(v325) = 0;
                  }

                  else
                  {
                    v326.i32[0] = 1;
                    v326.i32[1] = v325;
                    v327 = vadd_s32(*&v387[0], v326);
                    v328 = v387[0];
                    v329 = &v8[16 * SLODWORD(v387[0])];
                    *v329 = v25;
                    v329[1] = v325;
                    *&v387[0] = v327;
                    if (v328 >= 7 && __sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_757;
                    }
                  }

                  v330 = v214 - v325;
                  if (v330 >= 1)
                  {
                    do
                    {
                      v331 = v330 >= 0x10 ? 16 : v330;
                      v332.i32[0] = 1;
                      v332.i32[1] = v331;
                      v333 = vadd_s32(*&v387[0], v332);
                      v334 = v387[0];
                      v335 = &v8[16 * SLODWORD(v387[0])];
                      *v335 = &zeroes_0;
                      *(v335 + 1) = v331;
                      *&v387[0] = v333;
                      if (v334 >= 7)
                      {
                        if (__sprint(*v386, a2, &v386[2]))
                        {
                          goto LABEL_757;
                        }
                      }

                      v168 = __OFSUB__(v330, v331);
                      v330 -= v331;
                    }

                    while (!((v330 < 0) ^ v168 | (v330 == 0)));
                  }

                  v216 = v392;
                }

                v25 += 4 * v216;
                if (v381 || (v73 & 1) != 0)
                {
                  v336 = vadd_s32(*&v387[0], 0x100000001);
                  v337 = v387[0];
                  v338 = &v8[16 * SLODWORD(v387[0])];
                  *v338 = &v394 + 4;
                  *(v338 + 1) = 1;
                  *&v387[0] = v336;
                  if (v337 < 7)
                  {
                    v249 = v381;
                  }

                  else
                  {
                    v339 = __sprint(*v386, a2, &v386[2]);
                    v249 = v381;
                    if (v339)
                    {
                      goto LABEL_757;
                    }
                  }
                }

                else
                {
                  v249 = 0;
                }
              }

              v340 = (&v377[v369] - v25) >> 2;
              if (v340 >= v249)
              {
                v341 = v249;
              }

              else
              {
                v341 = v340;
              }

              if (v341 < 1)
              {
                LODWORD(v341) = 0;
              }

              else
              {
                v342.i32[0] = 1;
                v342.i32[1] = v341;
                v343 = vadd_s32(*&v387[0], v342);
                v344 = v387[0];
                v345 = &v8[16 * SLODWORD(v387[0])];
                *v345 = v25;
                v345[1] = v341;
                *&v387[0] = v343;
                if (v344 >= 7)
                {
                  v346 = v249;
                  v347 = __sprint(*v386, a2, &v386[2]);
                  v249 = v346;
                  if (v347)
                  {
                    goto LABEL_757;
                  }
                }
              }

              v348 = v249 - v341;
              if (v348 >= 1)
              {
                while (1)
                {
                  v349 = v348 >= 0x10 ? 16 : v348;
                  v350.i32[0] = 1;
                  v350.i32[1] = v349;
                  v351 = vadd_s32(*&v387[0], v350);
                  v352 = v387[0];
                  v353 = &v8[16 * SLODWORD(v387[0])];
                  *v353 = &zeroes_0;
                  *(v353 + 1) = v349;
                  *&v387[0] = v351;
                  if (v352 >= 7)
                  {
                    if (__sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_757;
                    }
                  }

                  v168 = __OFSUB__(v348, v349);
                  v348 -= v349;
                  if ((v348 < 0) ^ v168 | (v348 == 0))
                  {
                    goto LABEL_741;
                  }
                }
              }

              goto LABEL_741;
            }

            if (v381 > 1 || (v73 & 1) != 0)
            {
              *v405.__mbstate8 = *v25;
              HIDWORD(v405._mbstateL) = HIDWORD(v394);
              v217 = vadd_s32(*&v387[0], 0x200000001);
              v218 = v387[0];
              v219 = &v8[16 * SLODWORD(v387[0])];
              *v219 = &v405;
              v219[1] = 2;
              *&v387[0] = v217;
              if (v218 >= 7)
              {
                if (__sprint(*v386, a2, &v386[2]))
                {
                  goto LABEL_757;
                }

                v217 = *&v387[0];
              }

              v220 = &v8[16 * v217.i32[0]];
              *v220 = v25 + 4;
              *(v220 + 1) = v369 - 1;
              v221.i32[0] = 1;
              v221.i32[1] = v369 - 1;
              *&v387[0] = vadd_s32(v217, v221);
              if (v217.i32[0] >= 7 && __sprint(*v386, a2, &v386[2]))
              {
                goto LABEL_757;
              }

              v222 = v381 - v369;
              if (v381 - v369 >= 1)
              {
                do
                {
                  v223 = v222 >= 0x10 ? 16 : v222;
                  v224.i32[0] = 1;
                  v224.i32[1] = v223;
                  v225 = vadd_s32(*&v387[0], v224);
                  v226 = v387[0];
                  v227 = &v8[16 * SLODWORD(v387[0])];
                  *v227 = &zeroes_0;
                  *(v227 + 1) = v223;
                  *&v387[0] = v225;
                  if (v226 >= 7)
                  {
                    if (__sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_757;
                    }
                  }

                  v168 = __OFSUB__(v222, v223);
                  v222 -= v223;
                }

                while (!((v222 < 0) ^ v168 | (v222 == 0)));
              }
            }

            else
            {
              v192 = vadd_s32(*&v387[0], 0x100000001);
              v193 = v387[0];
              v194 = &v8[16 * SLODWORD(v387[0])];
              *v194 = v25;
              v194[1] = 1;
              *&v387[0] = v192;
              if (v193 < 7)
              {
                goto LABEL_546;
              }

              if (__sprint(*v386, a2, &v386[2]))
              {
                goto LABEL_757;
              }
            }

            v192 = *&v387[0];
LABEL_546:
            v228 = &v8[16 * v192.i32[0]];
            *v228 = v402;
            *(v228 + 1) = v363;
            v229.i32[0] = 1;
            v229.i32[1] = v363;
            *&v387[0] = vadd_s32(v192, v229);
            if (v192.i32[0] >= 7)
            {
LABEL_549:
              if (__sprint(*v386, a2, &v386[2]))
              {
                goto LABEL_757;
              }
            }

LABEL_741:
            if ((v73 & 4) == 0 || v158 < 1)
            {
LABEL_750:
              v359 = __sprint(*v386, a2, &v386[2]);
              v13 = v376;
              if (!v359)
              {
                goto LABEL_12;
              }

              goto LABEL_758;
            }

            while (1)
            {
              v354 = v158 >= 0x10 ? 16 : v158;
              v355.i32[0] = 1;
              v355.i32[1] = v354;
              v356 = vadd_s32(*&v387[0], v355);
              v357 = v387[0];
              v358 = &v8[16 * SLODWORD(v387[0])];
              *v358 = &blanks_0;
              *(v358 + 1) = v354;
              *&v387[0] = v356;
              if (v357 >= 7)
              {
                if (__sprint(*v386, a2, &v386[2]))
                {
                  break;
                }
              }

              v168 = __OFSUB__(v158, v354);
              v158 -= v354;
              if ((v158 < 0) ^ v168 | (v158 == 0))
              {
                goto LABEL_750;
              }
            }

LABEL_757:
            v11 = v378;
            goto LABEL_758;
          }

LABEL_754:
          *__error() = 84;
LABEL_755:
          v11 = -1;
          goto LABEL_758;
        }

        v383 = 0;
        if (v385)
        {
          v187 = *(v385 + v13);
        }

        else
        {
          v188 = ((v397 + 15) & 0xFFFFFFFFFFFFFFF0);
          v397 = v188 + 1;
          v187 = *v188;
        }

        v390 = v187;
        v189 = (a3 - i - 4) >> 2;
        if ((v189 + 2) >= 0x22)
        {
          v362 = v187;
          v191 = malloc_type_malloc(v189 + 3, 0x100004077774924uLL);
          *&v187 = v362;
          v190 = v191;
        }

        else
        {
          v190 = v398;
        }

        if (v389 == 88)
        {
          if (v27 == 99)
          {
            v389 = 0;
          }

          else
          {
            v389 = 32;
          }
        }

        if (v189 < 1)
        {
          v197 = 0;
          v202 = 1;
          v203 = 1;
          if ((v73 & 0x40) != 0)
          {
            goto LABEL_487;
          }

LABEL_482:
          if ((v73 & 0x10) == 0)
          {
            v204 = v27 - 65;
            if (v27 - 65 > 0x2F)
            {
              goto LABEL_560;
            }

            if (((1 << v204) & 0x7100000051) != 0)
            {
              v205 = 6;
LABEL_493:
              v206 = 4;
              goto LABEL_497;
            }

            if (((1 << v204) & 0x800400000000) == 0)
            {
LABEL_560:
              *&v190[v197] = 26728;
              v197 += 2;
            }

            if (v27 == 112)
            {
              v205 = 3;
            }

            else
            {
              v205 = 0;
            }

            v206 = 16;
            goto LABEL_497;
          }

          if (v27 == 112)
          {
            v205 = 5;
          }

          else
          {
            v205 = 2;
          }

          goto LABEL_493;
        }

        v195 = 0;
        v196 = 0;
        v197 = 0;
        v198 = i;
        do
        {
          v200 = *v198++;
          v199 = v200;
          v201 = (v200 - 42);
          if (v201 <= 0x3E)
          {
            if (((1 << v201) & 0x4020000000030004) != 0)
            {
              goto LABEL_480;
            }

            if (!v201)
            {
              if (*(i - 1) == 46)
              {
                v195 = 1;
              }

              else
              {
                v196 = 1;
              }

LABEL_479:
              v190[v197++] = v199;
              goto LABEL_480;
            }
          }

          if (v199 != 108 && v199 != 118)
          {
            goto LABEL_479;
          }

LABEL_480:
          i = v198;
          --v189;
        }

        while (v189);
        v202 = v196 == 0;
        v203 = v195 == 0;
        if ((v73 & 0x40) == 0)
        {
          goto LABEL_482;
        }

LABEL_487:
        if (v27 != 99)
        {
          if (v27 == 112)
          {
            v205 = 4;
            goto LABEL_496;
          }

          v190[v197++] = 104;
        }

        v205 = 1;
LABEL_496:
        v206 = 8;
LABEL_497:
        v207 = &v190[v197];
        *v207 = v27;
        v207[1] = 0;
        v366 = v10;
        if (!v202)
        {
          if (v203)
          {
            if (v205 <= 2)
            {
              if (v205)
              {
                if (v205 != 1)
                {
                  v251 = asprintf_l(&v383, a2, v190, v23, v187);
LABEL_624:
                  v11 = v378 + v251;
                  v271 = v383;
                  v272.i32[0] = 1;
                  v272.i32[1] = v251;
                  v273 = vadd_s32(*&v387[0], v272);
                  v274 = v387[0];
                  v275 = &v8[16 * SLODWORD(v387[0])];
                  *v275 = v383;
                  v275[1] = v251;
                  *&v387[0] = v273;
                  if (v274 >= 7)
                  {
                    if (__sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_758;
                    }

                    v271 = v383;
                  }

                  free(v271);
                  v276 = &v390 + 1;
                  v277 = 1;
                  while (1)
                  {
                    if (v389)
                    {
                      v278 = vadd_s32(*&v387[0], 0x100000001);
                      v279 = v387[0];
                      v280 = &v8[16 * SLODWORD(v387[0])];
                      *v280 = &v389;
                      v280[1] = 1;
                      *&v387[0] = v278;
                      if (v279 >= 7)
                      {
                        if (__sprint(*v386, a2, &v386[2]))
                        {
                          goto LABEL_758;
                        }
                      }
                    }

                    if (v205 <= 2)
                    {
                      if (!v205)
                      {
                        goto LABEL_638;
                      }

                      if (v205 != 1)
                      {
                        goto LABEL_640;
                      }
                    }

                    else
                    {
                      if (v205 > 4)
                      {
                        if (v205 != 5)
                        {
                          v282 = asprintf_l(&v383, a2, v190, v23, *v276);
                          goto LABEL_642;
                        }

LABEL_640:
                        v281 = *v276;
                        goto LABEL_641;
                      }

                      if (v205 == 3)
                      {
LABEL_638:
                        v281 = *(&v390 + v277);
                        goto LABEL_641;
                      }
                    }

                    v281 = *(&v390 + v277);
LABEL_641:
                    v282 = asprintf_l(&v383, a2, v190, v23, v281);
LABEL_642:
                    v11 += v282;
                    v283 = v383;
                    v284.i32[0] = 1;
                    v284.i32[1] = v282;
                    v285 = vadd_s32(*&v387[0], v284);
                    v286 = v387[0];
                    v287 = &v8[16 * SLODWORD(v387[0])];
                    *v287 = v383;
                    v287[1] = v282;
                    *&v387[0] = v285;
                    if (v286 >= 7)
                    {
                      if (__sprint(*v386, a2, &v386[2]))
                      {
                        goto LABEL_758;
                      }

                      v283 = v383;
                    }

                    free(v283);
                    ++v277;
                    ++v276;
                    if (v206 == v277)
                    {
                      goto LABEL_698;
                    }
                  }
                }

                v209 = v187;
              }

              else
              {
                v209 = v187;
              }
            }

            else if (v205 > 4)
            {
              if (v205 != 5)
              {
                v251 = asprintf_l(&v383, a2, v190, v23, *&v187);
                goto LABEL_624;
              }

              v209 = v187;
            }

            else if (v205 == 3)
            {
              v209 = v187;
            }

            else
            {
              v209 = v187;
            }

            v251 = asprintf_l(&v383, a2, v190, v23, v209);
            goto LABEL_624;
          }

          if (v205 <= 2)
          {
            v212 = v381;
            if (v205)
            {
              if (v205 != 1)
              {
                v253 = asprintf_l(&v383, a2, v190, v23, v381, v187);
LABEL_674:
                v11 = v378 + v253;
                v306 = v383;
                v307.i32[0] = 1;
                v307.i32[1] = v253;
                v308 = vadd_s32(*&v387[0], v307);
                v309 = v387[0];
                v310 = &v8[16 * SLODWORD(v387[0])];
                *v310 = v383;
                v310[1] = v253;
                *&v387[0] = v308;
                if (v309 >= 7)
                {
                  if (__sprint(*v386, a2, &v386[2]))
                  {
                    goto LABEL_758;
                  }

                  v306 = v383;
                }

                free(v306);
                v311 = &v390 + 1;
                v312 = 1;
                while (1)
                {
                  if (v389)
                  {
                    v313 = vadd_s32(*&v387[0], 0x100000001);
                    v314 = v387[0];
                    v315 = &v8[16 * SLODWORD(v387[0])];
                    *v315 = &v389;
                    v315[1] = 1;
                    *&v387[0] = v313;
                    if (v314 >= 7)
                    {
                      if (__sprint(*v386, a2, &v386[2]))
                      {
                        goto LABEL_758;
                      }
                    }
                  }

                  if (v205 <= 2)
                  {
                    v316 = v381;
                    if (!v205)
                    {
                      goto LABEL_688;
                    }

                    if (v205 != 1)
                    {
                      goto LABEL_690;
                    }
                  }

                  else
                  {
                    v316 = v381;
                    if (v205 > 4)
                    {
                      if (v205 != 5)
                      {
                        v318 = asprintf_l(&v383, a2, v190, v23, v381, *v311);
                        goto LABEL_692;
                      }

LABEL_690:
                      v317 = *v311;
                      goto LABEL_691;
                    }

                    if (v205 == 3)
                    {
LABEL_688:
                      v317 = *(&v390 + v312);
                      goto LABEL_691;
                    }
                  }

                  v317 = *(&v390 + v312);
LABEL_691:
                  v318 = asprintf_l(&v383, a2, v190, v23, v316, v317);
LABEL_692:
                  v11 += v318;
                  v319 = v383;
                  v320.i32[0] = 1;
                  v320.i32[1] = v318;
                  v321 = vadd_s32(*&v387[0], v320);
                  v322 = v387[0];
                  v323 = &v8[16 * SLODWORD(v387[0])];
                  *v323 = v383;
                  v323[1] = v318;
                  *&v387[0] = v321;
                  if (v322 >= 7)
                  {
                    if (__sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_758;
                    }

                    v319 = v383;
                  }

                  free(v319);
                  ++v312;
                  ++v311;
                  if (v206 == v312)
                  {
LABEL_698:
                    if (v190 != v398)
                    {
                      free(v190);
                    }

                    v13 = (v376 + 1);
                    v10 = v366;
                    goto LABEL_12;
                  }
                }
              }

              v213 = v187;
            }

            else
            {
              v213 = v187;
            }
          }

          else
          {
            v212 = v381;
            if (v205 > 4)
            {
              if (v205 != 5)
              {
                v253 = asprintf_l(&v383, a2, v190, v23, v381, *&v187);
                goto LABEL_674;
              }

              v213 = v187;
            }

            else if (v205 == 3)
            {
              v213 = v187;
            }

            else
            {
              v213 = v187;
            }
          }

          v253 = asprintf_l(&v383, a2, v190, v23, v212, v213);
          goto LABEL_674;
        }

        if (!v203)
        {
          if (v205 <= 2)
          {
            v210 = v381;
            if (v205)
            {
              if (v205 != 1)
              {
                v252 = asprintf_l(&v383, a2, v190, v381, v187);
LABEL_649:
                v11 = v378 + v252;
                v288 = v383;
                v289.i32[0] = 1;
                v289.i32[1] = v252;
                v290 = vadd_s32(*&v387[0], v289);
                v291 = v387[0];
                v292 = &v8[16 * SLODWORD(v387[0])];
                *v292 = v383;
                v292[1] = v252;
                *&v387[0] = v290;
                if (v291 >= 7)
                {
                  if (__sprint(*v386, a2, &v386[2]))
                  {
                    goto LABEL_758;
                  }

                  v288 = v383;
                }

                free(v288);
                v293 = &v390 + 1;
                v294 = 1;
                while (1)
                {
                  if (v389)
                  {
                    v295 = vadd_s32(*&v387[0], 0x100000001);
                    v296 = v387[0];
                    v297 = &v8[16 * SLODWORD(v387[0])];
                    *v297 = &v389;
                    v297[1] = 1;
                    *&v387[0] = v295;
                    if (v296 >= 7)
                    {
                      if (__sprint(*v386, a2, &v386[2]))
                      {
                        goto LABEL_758;
                      }
                    }
                  }

                  if (v205 <= 2)
                  {
                    v298 = v381;
                    if (!v205)
                    {
                      goto LABEL_663;
                    }

                    if (v205 != 1)
                    {
                      goto LABEL_665;
                    }
                  }

                  else
                  {
                    v298 = v381;
                    if (v205 > 4)
                    {
                      if (v205 != 5)
                      {
                        v300 = asprintf_l(&v383, a2, v190, v381, *v293);
                        goto LABEL_667;
                      }

LABEL_665:
                      v299 = *v293;
                      goto LABEL_666;
                    }

                    if (v205 == 3)
                    {
LABEL_663:
                      v299 = *(&v390 + v294);
                      goto LABEL_666;
                    }
                  }

                  v299 = *(&v390 + v294);
LABEL_666:
                  v300 = asprintf_l(&v383, a2, v190, v298, v299);
LABEL_667:
                  v11 += v300;
                  v301 = v383;
                  v302.i32[0] = 1;
                  v302.i32[1] = v300;
                  v303 = vadd_s32(*&v387[0], v302);
                  v304 = v387[0];
                  v305 = &v8[16 * SLODWORD(v387[0])];
                  *v305 = v383;
                  v305[1] = v300;
                  *&v387[0] = v303;
                  if (v304 >= 7)
                  {
                    if (__sprint(*v386, a2, &v386[2]))
                    {
                      goto LABEL_758;
                    }

                    v301 = v383;
                  }

                  free(v301);
                  ++v294;
                  ++v293;
                  if (v206 == v294)
                  {
                    goto LABEL_698;
                  }
                }
              }

              v211 = v187;
            }

            else
            {
              v211 = v187;
            }
          }

          else
          {
            v210 = v381;
            if (v205 > 4)
            {
              if (v205 != 5)
              {
                v252 = asprintf_l(&v383, a2, v190, v381, *&v187);
                goto LABEL_649;
              }

              v211 = v187;
            }

            else if (v205 == 3)
            {
              v211 = v187;
            }

            else
            {
              v211 = v187;
            }
          }

          v252 = asprintf_l(&v383, a2, v190, v210, v211);
          goto LABEL_649;
        }

        if (v205 <= 2)
        {
          if (!v205)
          {
            v208 = v187;
            goto LABEL_591;
          }

          if (v205 == 1)
          {
            v208 = v187;
            goto LABEL_591;
          }

          v250 = asprintf_l(&v383, a2, v190, v187);
        }

        else if (v205 > 4)
        {
          if (v205 == 5)
          {
            v208 = v187;
            goto LABEL_591;
          }

          v250 = asprintf_l(&v383, a2, v190, *&v187);
        }

        else
        {
          if (v205 == 3)
          {
            v208 = v187;
          }

          else
          {
            v208 = v187;
          }

LABEL_591:
          v250 = asprintf_l(&v383, a2, v190, v208);
        }

        v11 = v378 + v250;
        v254 = v383;
        v255.i32[0] = 1;
        v255.i32[1] = v250;
        v256 = vadd_s32(*&v387[0], v255);
        v257 = v387[0];
        v258 = &v8[16 * SLODWORD(v387[0])];
        *v258 = v383;
        v258[1] = v250;
        *&v387[0] = v256;
        if (v257 < 7)
        {
LABEL_595:
          free(v254);
          v259 = &v390 + 1;
          v260 = 1;
          while (1)
          {
            if (v389)
            {
              v261 = vadd_s32(*&v387[0], 0x100000001);
              v262 = v387[0];
              v263 = &v8[16 * SLODWORD(v387[0])];
              *v263 = &v389;
              v263[1] = 1;
              *&v387[0] = v261;
              if (v262 >= 7)
              {
                if (__sprint(*v386, a2, &v386[2]))
                {
                  goto LABEL_758;
                }
              }
            }

            if (v205 <= 2)
            {
              if (!v205)
              {
                goto LABEL_606;
              }

              if (v205 != 1)
              {
                goto LABEL_608;
              }
            }

            else
            {
              if (v205 > 4)
              {
                if (v205 != 5)
                {
                  v265 = asprintf_l(&v383, a2, v190, *v259);
                  goto LABEL_610;
                }

LABEL_608:
                v264 = *v259;
                goto LABEL_609;
              }

              if (v205 == 3)
              {
LABEL_606:
                v264 = *(&v390 + v260);
                goto LABEL_609;
              }
            }

            v264 = *(&v390 + v260);
LABEL_609:
            v265 = asprintf_l(&v383, a2, v190, v264);
LABEL_610:
            v11 += v265;
            v266 = v383;
            v267.i32[0] = 1;
            v267.i32[1] = v265;
            v268 = vadd_s32(*&v387[0], v267);
            v269 = v387[0];
            v270 = &v8[16 * SLODWORD(v387[0])];
            *v270 = v383;
            v270[1] = v265;
            *&v387[0] = v268;
            if (v269 >= 7)
            {
              if (__sprint(*v386, a2, &v386[2]))
              {
                goto LABEL_758;
              }

              v266 = v383;
            }

            free(v266);
            ++v260;
            ++v259;
            if (v206 == v260)
            {
              goto LABEL_698;
            }
          }
        }

        if (!__sprint(*v386, a2, &v386[2]))
        {
          v254 = v383;
          goto LABEL_595;
        }

LABEL_758:
        free(v377);
        if ((*(v373 + 16) & 0x40) != 0)
        {
          v11 = -1;
        }

        if (v385 && v385 != v399)
        {
          free(v385);
        }

        if (v11 > 0x7FFFFFFE)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v11;
        }

      case 'z':
        v24 = v24 | 0x400;
        continue;
      default:
        if (!v27)
        {
          goto LABEL_756;
        }

        v72 = 0;
        *v405.__mbstate8 = v27;
        v396 = 0;
        v25 = &v405;
        v10 = 1;
        goto LABEL_168;
    }
  }
}

int vfwprintf(FILE *a1, const __int32 *a2, __darwin_va_list a3)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vfwprintf_l(a1, v7, a2, a3);
}

void *__mbsconv(const char *__sig, char *a2, _xlocale *a3)
{
  memset(&v15, 0, sizeof(v15));
  if (!__sig)
  {
    return 0;
  }

  v4 = __sig;
  if ((a2 & 0x80000000) != 0)
  {
    v6 = j__strsignal_r(__sig, a2, a3);
    goto LABEL_10;
  }

  v5 = *(*(a3 + 166) + 64);
  memset(&v15, 0, sizeof(v15));
  v6 = 0;
  if (a2)
  {
    v7 = a2;
    v8 = __sig;
    do
    {
      v9 = mbrlen_l(v8, v5, &v15, a3);
      if (v9 + 2 < 3)
      {
        break;
      }

      v8 += v9;
      v6 += v9;
      --v7;
    }

    while (v7);
    if (v9 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0;
    }
  }

LABEL_10:
  v10 = malloc_type_malloc(4 * v6 + 4, 0x100004052888210uLL);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    memset(&v15, 0, sizeof(v15));
    if (!v6)
    {
      goto LABEL_19;
    }

    v12 = v10;
    while (1)
    {
      v13 = mbrtowc_l(v12, v4, v6, &v15, a3);
      if (v13 + 2 < 3)
      {
        break;
      }

      ++v12;
      v4 += v13;
      v6 -= v13;
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    if (v13 < 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_19:
      *v12 = 0;
      return v11;
    }

    free(v11);
    return 0;
  }

  return v11;
}

uint64_t __sprint(FILE *a1, locale_t a2, uint64_t a3)
{
  v4 = *(a3 + 12);
  if (!v4)
  {
LABEL_13:
    result = 0;
    *(a3 + 8) = 0;
    return result;
  }

  v7 = *a3;
  while (1)
  {
    v8 = v7[1];
    if (v8 >= 1)
    {
      break;
    }

LABEL_12:
    v7 += 2;
    v4 -= v8;
    *(a3 + 12) = v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v9 = *v7;
  v10 = v7[1] & 0x7FFFFFFF;
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    if ((a1->_flags & 0x200) == 0)
    {
      LODWORD(v11) = __fputwc(v11, a1, a2);
      goto LABEL_9;
    }

    memset(&v20, 0, sizeof(v20));
    v13 = wcrtomb_l(v19, v11, &v20, a2);
    if (v13 == -1)
    {
      break;
    }

    v15[1] = v13;
    v16 = v15;
    v17 = 1;
    v18 = v13;
    v15[0] = v19;
    if (__sfvwrite(a1, &v16) == -1)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_9:
    if (v11 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    if (!--v10)
    {
      v4 = *(a3 + 12);
      goto LABEL_12;
    }
  }

  a1->_flags |= 0x40u;
  return 0xFFFFFFFFLL;
}

int vfwscanf(FILE *a1, const __int32 *a2, __darwin_va_list a3)
{
  flockfile(a1);
  extra = a1->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v7 = __locale_key;
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__global_locale;
  }

  v10 = __vfwscanf(a1, v9, a2, a3);
  funlockfile(a1);
  return v10;
}

uint64_t __vfwscanf(uint64_t a1, locale_t a2, unsigned int *a3, __int32 **a4)
{
  v167 = 0;
  v168 = a4;
  memset(&v170, 0, sizeof(v170));
  v158 = *(*(a2 + 166) + 64);
  v4 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __s = 0;
  v153 = 0;
  v159 = 0;
  v11 = &__global_locale;
  if (a2 != -1)
  {
    v11 = a2;
  }

  v163 = 0;
  v164 = v11;
  do
  {
    v12 = v5;
    v162 = v8;
    v161 = v10;
    while (1)
    {
      v5 = v12;
LABEL_7:
      if (v4 > 0x7F)
      {
        if (v4 >= 0x100)
        {
          LOWORD(v14) = ___runetype_l(v4, a2);
          goto LABEL_13;
        }

        v13 = *(*(v164 + 166) + 120);
      }

      else
      {
        v13 = &_DefaultRuneLocale;
      }

      v14 = v13->__runetype[v4];
LABEL_13:
      v12 = v5 + 1;
      if ((v14 & 0x4000) != 0)
      {
        v26 = __fgetwc(a1, a2);
        if (v26 == -1)
        {
          goto LABEL_80;
        }

        v27 = v26;
        while (1)
        {
          if (v27 > 0x7F)
          {
            if (v27 >= 0x100)
            {
              LOWORD(v29) = ___runetype_l(v27, a2);
              goto LABEL_72;
            }

            v28 = *(*(v164 + 166) + 120);
          }

          else
          {
            v28 = &_DefaultRuneLocale;
          }

          v29 = v28->__runetype[v27];
LABEL_72:
          if ((v29 & 0x4000) == 0)
          {
            __ungetwc(v27, a1, a2);
            goto LABEL_80;
          }

          v9 = (v9 + 1);
          v27 = __fgetwc(a1, a2);
          if (v27 == -1)
          {
            goto LABEL_80;
          }
        }
      }

      if (v4 == 37)
      {
        break;
      }

      v23 = __fgetwc(a1, a2);
      if (v23 == -1)
      {
        goto LABEL_494;
      }

LABEL_78:
      if (v23 != v4)
      {
        v145 = v23;
        goto LABEL_503;
      }

      v9 = (v9 + 1);
      v8 = v162;
LABEL_80:
      v4 = *v12;
      if (!*v12)
      {
        return v8;
      }
    }

    v15 = 0;
    v16 = 0;
    while (2)
    {
      v5 = v12 + 1;
      v17 = *v12;
      switch(v17)
      {
        case '$':
          if ((v16 - 10) < 0xFFFFFFF7 || *(v12 - 2) != 37)
          {
            goto LABEL_494;
          }

          v18 = v16;
          v16 = 0;
          v168 = a4;
          ++v12;
          if (v18 >= 2)
          {
            v19 = v18 + 1;
            do
            {
              ++v168;
              --v19;
            }

            while (v19 > 2);
            v16 = 0;
            v12 = v5;
          }

          continue;
        case '%':
          v22 = __fgetwc(a1, a2);
          if (v22 == -1)
          {
            goto LABEL_494;
          }

          v23 = v22;
          while (2)
          {
            if (v23 > 0x7F)
            {
              if (v23 >= 0x100)
              {
                LOWORD(v25) = ___runetype_l(v23, a2);
                goto LABEL_61;
              }

              v24 = *(*(v164 + 166) + 120);
            }

            else
            {
              v24 = &_DefaultRuneLocale;
            }

            v25 = v24->__runetype[v23];
LABEL_61:
            if ((v25 & 0x4000) != 0)
            {
              LODWORD(v9) = v9 + 1;
              v23 = __fgetwc(a1, a2);
              if (v23 == -1)
              {
                goto LABEL_494;
              }

              continue;
            }

            break;
          }

          v4 = 37;
          ++v12;
          goto LABEL_78;
        case '&':
        case '\'':
        case '(':
        case ')':
        case '+':
        case ',':
        case '-':
        case '.':
        case '/':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '?':
        case '@':
        case 'B':
        case 'D':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case 'Y':
        case 'Z':
        case '\\':
        case ']':
        case '^':
        case '_':
        case 'b':
        case 'k':
        case 'm':
        case 'r':
        case 'v':
        case 'w':
        case 'y':
          return v162;
        case '*':
          v15 |= 8u;
          ++v12;
          continue;
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          v16 = v17 + 10 * v16 - 48;
          ++v12;
          continue;
        case 'A':
        case 'E':
        case 'F':
        case 'G':
        case 'a':
        case 'e':
        case 'f':
        case 'g':
          v30 = 4;
          if ((v15 & 0x20) != 0)
          {
            goto LABEL_121;
          }

          goto LABEL_109;
        case 'C':
          v15 |= 1u;
          goto LABEL_99;
        case 'L':
          v15 |= 2u;
          ++v12;
          continue;
        case 'S':
          v15 |= 1u;
          goto LABEL_92;
        case 'X':
        case 'x':
          v31 = 33024;
          goto LABEL_95;
        case '[':
          v159 = v12[1] == 94;
          v33 = v12 + 2;
          v34 = 1;
          if (v12[1] == 94)
          {
            v34 = 2;
          }

          else
          {
            v33 = v12 + 1;
          }

            ;
          }

          __s = (v12 + 1);
          v153 = i;
          v5 = i + 1;
          v15 |= 0x20u;
          v30 = 1;
          if ((v15 & 0x20) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_121;
        case 'c':
LABEL_99:
          v30 = 0;
          v15 |= 0x20u;
          if ((v15 & 0x20) != 0)
          {
            goto LABEL_121;
          }

          goto LABEL_109;
        case 'd':
          goto LABEL_90;
        case 'h':
          if ((v15 & 4) != 0)
          {
            v15 = v15 & 0xFFFFBFFB | 0x4000;
          }

          else
          {
            v15 |= 4u;
          }

          ++v12;
          continue;
        case 'i':
          v161 = 0;
          v30 = 3;
          if ((v15 & 0x20) != 0)
          {
            goto LABEL_121;
          }

          goto LABEL_109;
        case 'j':
          v15 |= 0x800u;
          ++v12;
          continue;
        case 'l':
          if (v15)
          {
            v15 = v15 & 0xFFFFFBFE | 0x400;
          }

          else
          {
            ++v15;
          }

          ++v12;
          continue;
        case 'n':
          if ((v15 & 8) == 0)
          {
            v20 = v168++;
            v21 = *v20;
            if (v21)
            {
              if ((v15 & 0x4000) != 0)
              {
                *v21 = v9;
              }

              else if ((v15 & 4) != 0)
              {
                *v21 = v9;
              }

              else if ((v15 & 1) != 0 || (v15 & 0x400) != 0 || (v15 & 0x800) != 0 || (v15 & 0x2000) != 0 || (v15 & 0x1000) != 0)
              {
                *v21 = v9;
              }

              else
              {
                *v21 = v9;
              }
            }
          }

          v4 = *v5;
          v8 = v162;
          if (*v5)
          {
            goto LABEL_7;
          }

          return v8;
        case 'o':
          v15 |= 0x8000u;
          v30 = 3;
          v32 = 8;
          goto LABEL_96;
        case 'p':
          v31 = 33040;
LABEL_95:
          v15 |= v31;
          v30 = 3;
          v32 = 16;
          goto LABEL_96;
        case 'q':
          v15 |= 0x400u;
          ++v12;
          continue;
        case 's':
LABEL_92:
          v30 = 2;
          if ((v15 & 0x20) != 0)
          {
            goto LABEL_121;
          }

          goto LABEL_109;
        case 't':
          v15 |= 0x1000u;
          ++v12;
          continue;
        case 'u':
          v15 |= 0x8000u;
LABEL_90:
          v30 = 3;
          v32 = 10;
LABEL_96:
          v161 = v32;
          if ((v15 & 0x20) != 0)
          {
            goto LABEL_121;
          }

LABEL_109:
          v36 = __fgetwc(a1, a2);
          if (v36 == -1)
          {
            goto LABEL_494;
          }

          v37 = v36;
          break;
        case 'z':
          v15 |= 0x2000u;
          ++v12;
          continue;
        default:
          if (v17)
          {
            return v162;
          }

          return 0xFFFFFFFFLL;
      }

      break;
    }

    while (1)
    {
      if (v37 <= 0x7F)
      {
        v38 = &_DefaultRuneLocale;
        goto LABEL_117;
      }

      if (v37 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v37, a2) & 0x4000) == 0)
      {
        goto LABEL_120;
      }

LABEL_118:
      v9 = (v9 + 1);
      v37 = __fgetwc(a1, a2);
      if (v37 == -1)
      {
        goto LABEL_494;
      }
    }

    v38 = *(*(v164 + 166) + 120);
LABEL_117:
    if ((v38->__runetype[v37] & 0x4000) != 0)
    {
      goto LABEL_118;
    }

LABEL_120:
    __ungetwc(v37, a1, a2);
LABEL_121:
    if (v30 <= 1)
    {
      if (!v30)
      {
        if (v16 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v16;
        }

        v48 = v15 & 8;
        if ((v15 & 1) == 0)
        {
          if ((v15 & 8) == 0)
          {
            v49 = v168++;
            v163 = *v49;
          }

          v50 = 0;
          memset(&v170, 0, sizeof(v170));
          while (1)
          {
            v51 = __fgetwc(a1, a2);
            if (v51 == -1)
            {
              goto LABEL_437;
            }

            v52 = v51;
            if (v48 || v47 < v158)
            {
              v54 = wcrtomb_l(path, v51, &v170, a2);
              if (v54 == -1)
              {
                goto LABEL_494;
              }

              v53 = v54;
              if (v54 > v47)
              {
                __ungetwc(v52, a1, a2);
LABEL_437:
                if (v50)
                {
LABEL_438:
                  LODWORD(v47) = -v50;
                  if (v48)
                  {
                    v8 = v162;
                  }

                  else
                  {
                    v8 = v162 + 1;
                  }

                  goto LABEL_441;
                }

                goto LABEL_494;
              }

              if (!v48)
              {
                j__mkdtempat_np(v163, path);
              }
            }

            else
            {
              v53 = wcrtomb_l(v163, v51, &v170, a2);
              if (v53 == -1)
              {
                goto LABEL_494;
              }
            }

            if (v48)
            {
              v55 = 0;
            }

            else
            {
              v55 = v53;
            }

            v163 += v55;
            --v50;
            v47 -= v53;
            if (!v47)
            {
              goto LABEL_438;
            }
          }
        }

        if ((v15 & 8) == 0)
        {
          v82 = v168++;
          v167 = *v82;
        }

        v83 = 0;
        while (1)
        {
          v84 = __fgetwc(a1, a2);
          if (v84 == -1)
          {
            break;
          }

          if (!v48)
          {
            v85 = v167;
            *v167 = v84;
            v167 = v85 + 1;
          }

          if (v47 == ++v83)
          {
            goto LABEL_403;
          }
        }

        LODWORD(v47) = v83;
LABEL_403:
        if (v47)
        {
          v8 = ((v48 >> 3) ^ 1) + v162;
LABEL_441:
          v10 = v161;
          goto LABEL_491;
        }

LABEL_494:
        if (v162)
        {
          return v162;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (v16)
      {
        v69 = v16;
      }

      else
      {
        v69 = -1;
      }

      if ((~v15 & 9) == 0)
      {
        v70 = __fgetwc(a1, a2);
        v10 = v161;
        if (v70 == -1)
        {
          return v162;
        }

        v71 = v70;
        v47 = 0;
        v8 = v162;
        while (1)
        {
          if (v69 == v47)
          {
            goto LABEL_425;
          }

          v72 = wmemchr(__s, v71, (v153 - __s) >> 2);
          if (v159)
          {
            if (v72)
            {
              goto LABEL_424;
            }
          }

          else if (!v72)
          {
LABEL_424:
            LODWORD(v69) = v47;
LABEL_425:
            __ungetwc(v71, a1, a2);
            LODWORD(v47) = v69;
            if (v69)
            {
              goto LABEL_491;
            }

            return v8;
          }

          ++v47;
          v71 = __fgetwc(a1, a2);
          if (v71 == -1)
          {
            goto LABEL_491;
          }
        }
      }

      v10 = v161;
      if (v15)
      {
        v126 = v168++;
        v127 = *v126;
        v167 = *v126;
        v128 = __fgetwc(a1, a2);
        if (v128 != -1)
        {
          v129 = v128;
          v130 = v69 + 1;
          while (--v130 && !v159 != (wmemchr(__s, v129, (v153 - __s) >> 2) == 0))
          {
            v131 = v167;
            *v167 = v129;
            v167 = v131 + 1;
            v129 = __fgetwc(a1, a2);
            if (v129 == -1)
            {
              goto LABEL_428;
            }
          }

          __ungetwc(v129, a1, a2);
        }

LABEL_428:
        v47 = (v167 - v127) >> 2;
        if (!v47)
        {
          return v162;
        }

        *v167 = 0;
      }

      else
      {
        if ((v15 & 8) == 0)
        {
          v86 = v168++;
          v163 = *v86;
        }

        memset(&v170, 0, sizeof(v170));
        v87 = __fgetwc(a1, a2);
        if (v87 == -1)
        {
          LODWORD(v47) = 0;
LABEL_434:
          if (!v162)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          v88 = v87;
          LODWORD(v47) = 0;
          do
          {
            if (!v159 == (wmemchr(__s, v88, (v153 - __s) >> 2) == 0))
            {
LABEL_442:
              v10 = v161;
              goto LABEL_443;
            }

            if ((v15 & 8) != 0 || v69 < v158)
            {
              v90 = wcrtomb_l(path, v88, &v170, a2);
              if (v90 == -1)
              {
                goto LABEL_494;
              }

              v89 = v90;
              if (v90 > v69)
              {
                goto LABEL_442;
              }

              if ((v15 & 8) == 0)
              {
                j__mkdtempat_np(v163, path);
              }
            }

            else
            {
              v89 = wcrtomb_l(v163, v88, &v170, a2);
              if (v89 == -1)
              {
                goto LABEL_494;
              }
            }

            if ((v15 & 8) != 0)
            {
              v91 = 0;
            }

            else
            {
              v91 = v89;
            }

            v163 += v91;
            LODWORD(v47) = v47 + 1;
            v92 = __fgetwc(a1, a2);
            v88 = v92;
            if (v92 == -1)
            {
              break;
            }

            v69 -= v89;
          }

          while (v69);
          v10 = v161;
          if (v92 == -1)
          {
            goto LABEL_434;
          }

LABEL_443:
          __ungetwc(v88, a1, a2);
        }

        if (!v47)
        {
          return v162;
        }

        if ((v15 & 8) != 0)
        {
          goto LABEL_486;
        }

        *v163 = 0;
      }

LABEL_490:
      v8 = v162 + 1;
      goto LABEL_491;
    }

    if (v30 == 2)
    {
      if (v16)
      {
        v56 = v16;
      }

      else
      {
        v56 = -1;
      }

      if ((~v15 & 9) == 0)
      {
        v57 = __fgetwc(a1, a2);
        if (v57 == -1)
        {
          v8 = v162;
          v10 = v161;
          goto LABEL_492;
        }

        v58 = v57;
        v59 = (v9 + v56);
        v10 = v161;
        while (1)
        {
          if (!v56)
          {
            goto LABEL_431;
          }

          if (v58 > 0x7F)
          {
            if (v58 >= 0x100)
            {
              LOWORD(v61) = ___runetype_l(v58, a2);
              goto LABEL_195;
            }

            v60 = *(*(v164 + 166) + 120);
          }

          else
          {
            v60 = &_DefaultRuneLocale;
          }

          v61 = v60->__runetype[v58];
LABEL_195:
          if ((v61 & 0x4000) != 0)
          {
            v59 = v9;
LABEL_431:
            __ungetwc(v58, a1, a2);
            v9 = v59;
LABEL_432:
            v8 = v162;
            goto LABEL_492;
          }

          v9 = (v9 + 1);
          v58 = __fgetwc(a1, a2);
          --v56;
          if (v58 == -1)
          {
            goto LABEL_432;
          }
        }
      }

      if ((v15 & 1) == 0)
      {
        if ((v15 & 8) == 0)
        {
          v73 = v168++;
          v163 = *v73;
        }

        memset(&v170, 0, sizeof(v170));
        v74 = __fgetwc(a1, a2);
        if (v74 == -1)
        {
          goto LABEL_247;
        }

        v75 = v74;
        while (v75 > 0x7F)
        {
          if (v75 < 0x100)
          {
            v76 = *(*(v164 + 166) + 120);
            goto LABEL_230;
          }

          LOWORD(v77) = ___runetype_l(v75, a2);
LABEL_231:
          if ((v77 & 0x4000) != 0)
          {
            goto LABEL_246;
          }

          if ((v15 & 8) != 0 || v56 < v158)
          {
            v79 = wcrtomb_l(path, v75, &v170, a2);
            if (v79 == -1)
            {
              goto LABEL_494;
            }

            v78 = v79;
            if (v79 > v56)
            {
              goto LABEL_246;
            }

            if ((v15 & 8) == 0)
            {
              j__mkdtempat_np(v163, path);
            }
          }

          else
          {
            v78 = wcrtomb_l(v163, v75, &v170, a2);
            if (v78 == -1)
            {
              goto LABEL_494;
            }
          }

          if ((v15 & 8) != 0)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          v163 += v80;
          v9 = (v9 + 1);
          v81 = __fgetwc(a1, a2);
          v75 = v81;
          if (v81 != -1)
          {
            v56 -= v78;
            if (v56)
            {
              continue;
            }
          }

          if (v81 != -1)
          {
LABEL_246:
            __ungetwc(v75, a1, a2);
          }

LABEL_247:
          v10 = v161;
          if ((v15 & 8) != 0)
          {
            goto LABEL_432;
          }

          *v163 = 0;
LABEL_450:
          v8 = v162 + 1;
          goto LABEL_492;
        }

        v76 = &_DefaultRuneLocale;
LABEL_230:
        v77 = v76->__runetype[v75];
        goto LABEL_231;
      }

      v119 = v168++;
      v167 = *v119;
      v120 = __fgetwc(a1, a2);
      v10 = v161;
      if (v120 == -1)
      {
        goto LABEL_449;
      }

      v121 = v120;
      v122 = (v9 + v56);
      while (1)
      {
        if (!v56)
        {
          goto LABEL_448;
        }

        if (v121 > 0x7F)
        {
          if (v121 >= 0x100)
          {
            LOWORD(v124) = ___runetype_l(v121, a2);
            goto LABEL_414;
          }

          v123 = *(*(v164 + 166) + 120);
        }

        else
        {
          v123 = &_DefaultRuneLocale;
        }

        v124 = v123->__runetype[v121];
LABEL_414:
        if ((v124 & 0x4000) != 0)
        {
          v122 = v9;
LABEL_448:
          __ungetwc(v121, a1, a2);
          v9 = v122;
LABEL_449:
          *v167 = 0;
          goto LABEL_450;
        }

        v125 = v167;
        *v167 = v121;
        v167 = v125 + 1;
        v9 = (v9 + 1);
        v121 = __fgetwc(a1, a2);
        --v56;
        if (v121 == -1)
        {
          goto LABEL_449;
        }
      }
    }

    if (v30 != 3)
    {
      v148 = a1;
      v169 = 0;
      memset(&v172, 0, sizeof(v172));
      v62 = localeconv();
      if (mbrtowc_l(&v169, v62->decimal_point, *(*(a2 + 166) + 64), &v172, a2) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v169 = 46;
      }

      if (v16)
      {
        v63 = v16 + 1;
      }

      else
      {
        v63 = 513;
      }

      v64 = __parsefloat_buf(4 * v63);
      if (!v64)
      {
        return v162;
      }

      v65 = v64 - 1;
      v66 = &v64[v63 - 1];
      v67 = v64 < v66;
      v151 = v64;
      if (v16 && v64 >= v66)
      {
        v68 = v64;
        goto LABEL_478;
      }

      v149 = v63;
      v157 = 0;
      v155 = 0;
      v93 = 0;
      v147 = 0;
      v68 = v64;
      while (1)
      {
        v154 = v67;
        v152 = v66;
        v94 = __fgetwc(a1, a2);
        if (v94 == -1)
        {
          goto LABEL_478;
        }

        v95 = v94;
        v156 = v68;
        v96 = v94;
        v150 = v94 & 0xFFFFFFDF;
        v97 = v155;
        v98 = v157;
        do
        {
          while (1)
          {
            while (v93 > 4)
            {
              if (v93 <= 6)
              {
                if (v93 == 6)
                {
                  if ((v98 & 1) == 0)
                  {
                    goto LABEL_308;
                  }

                  if (v95 > 0x7F)
                  {
                    if (v95 >= 0x100)
                    {
                      v100 = v97;
                      v101 = ___runetype_l(v95, a2);
                      v97 = v100;
                      v98 = v157;
                      goto LABEL_307;
                    }

                    v99 = *(*(v164 + 166) + 120);
                  }

                  else
                  {
                    v99 = &_DefaultRuneLocale;
                  }

                  LODWORD(v101) = v99->__runetype[v96];
LABEL_307:
                  if ((v101 & 0x10000) != 0)
                  {
                    goto LABEL_336;
                  }

LABEL_308:
                  if (v95 <= 0x7F)
                  {
                    v102 = &_DefaultRuneLocale;
LABEL_313:
                    v104 = v102->__runetype[v96];
                    goto LABEL_314;
                  }

                  if (v95 < 0x100)
                  {
                    v102 = *(*(v164 + 166) + 120);
                    goto LABEL_313;
                  }

                  v103 = v97;
                  LOWORD(v104) = ___runetype_l(v95, a2);
                  v97 = v103;
                  v98 = v157;
LABEL_314:
                  if ((v104 & 0x400) != 0)
                  {
LABEL_336:
                    v93 = 6;
                    goto LABEL_347;
                  }

                  v93 = 7;
                  if (v95 == v169)
                  {
                    if ((v97 & 1) == 0)
                    {
                      v155 = 0;
                      goto LABEL_335;
                    }

LABEL_347:
                    v106 = v156;
                    v155 = 1;
LABEL_360:
                    v65 = v106;
                    goto LABEL_371;
                  }
                }

                else
                {
                  v97 = 1;
                  v93 = 6;
                  if (v150 == 88)
                  {
                    v98 = 1;
                    goto LABEL_335;
                  }
                }
              }

              else
              {
                if (v93 != 8)
                {
                  if (v93 == 7)
                  {
                    if (!((v150 != 69) | v98 & 1) || ((v150 == 80) & v98) != 0)
                    {
                      if (v97)
                      {
                        v155 = 1;
                        v93 = 8;
                        goto LABEL_335;
                      }

                      goto LABEL_476;
                    }

                    if ((v98 & 1) == 0)
                    {
                      goto LABEL_385;
                    }

                    if (v95 <= 0x7F)
                    {
                      v105 = &_DefaultRuneLocale;
                      goto LABEL_383;
                    }

                    if (v95 < 0x100)
                    {
                      v105 = *(*(v164 + 166) + 120);
LABEL_383:
                      LODWORD(v113) = v105->__runetype[v96];
                    }

                    else
                    {
                      v113 = ___runetype_l(v95, a2);
                      v98 = v157;
                    }

                    if ((v113 & 0x10000) == 0)
                    {
LABEL_385:
                      if (v95 <= 0x7F)
                      {
                        v115 = &_DefaultRuneLocale;
                        goto LABEL_391;
                      }

                      if (v95 < 0x100)
                      {
                        v115 = *(*(v164 + 166) + 120);
LABEL_391:
                        v116 = v115->__runetype[v96];
                      }

                      else
                      {
                        LOWORD(v116) = ___runetype_l(v95, a2);
                        v98 = v157;
                      }

                      if ((v116 & 0x400) != 0)
                      {
                        v155 = 1;
                        v93 = 7;
                        goto LABEL_359;
                      }

LABEL_476:
                      __ungetwc(v95, a1, a2);
LABEL_477:
                      v68 = v156;
                      goto LABEL_478;
                    }

                    v155 = 1;
                    v93 = 7;
                    v98 = 1;
LABEL_359:
                    v106 = v156;
                    goto LABEL_360;
                  }

                  if (v95 <= 0x7F)
                  {
                    v107 = &_DefaultRuneLocale;
                    goto LABEL_355;
                  }

                  if (v95 < 0x100)
                  {
                    v107 = *(*(v164 + 166) + 120);
LABEL_355:
                    v109 = v107->__runetype[v96];
                  }

                  else
                  {
                    v108 = v97;
                    LOWORD(v109) = ___runetype_l(v95, a2);
                    LODWORD(v97) = v108;
                    v98 = v157;
                  }

                  if ((v109 & 0x400) == 0)
                  {
                    goto LABEL_476;
                  }

                  v93 = 9;
LABEL_358:
                  v155 = v97;
                  goto LABEL_359;
                }

                v93 = 9;
LABEL_297:
                if (v95 == 43 || v95 == 45)
                {
                  goto LABEL_334;
                }
              }
            }

            if (v93 < 1)
            {
              v93 = 1;
              goto LABEL_297;
            }

            if (v93 > 1)
            {
              if (v93 == 2)
              {
                if (v147 > 6 || v95 != aNfinity[v147] && v95 != aNfinity_0[v147])
                {
                  goto LABEL_476;
                }

                v106 = v156;
                if (v147 == 6 || v147 == 1)
                {
                  v65 = v156;
                }

                ++v147;
                v93 = 2;
              }

              else
              {
                if (v93 != 3)
                {
                  goto LABEL_476;
                }

                switch(v147)
                {
                  case 2:
                    if (v95 != 40)
                    {
                      if (v95 != -1)
                      {
                        goto LABEL_476;
                      }

                      goto LABEL_477;
                    }

LABEL_364:
                    v93 = 3;
                    goto LABEL_365;
                  case 1:
                    if (v150 != 78)
                    {
                      goto LABEL_476;
                    }

                    v93 = 3;
LABEL_368:
                    v106 = v156;
                    v65 = v156;
                    break;
                  case 0:
                    if (v150 != 65)
                    {
                      goto LABEL_476;
                    }

                    goto LABEL_364;
                  default:
                    if (v95 == 41)
                    {
                      v93 = 4;
                      goto LABEL_368;
                    }

                    if (v95 <= 0x7F)
                    {
                      v114 = &_DefaultRuneLocale;
                      goto LABEL_397;
                    }

                    if (v95 < 0x100)
                    {
                      v114 = *(*(v164 + 166) + 120);
LABEL_397:
                      v118 = v114->__runetype[v96];
                    }

                    else
                    {
                      v117 = v97;
                      LOWORD(v118) = ___runetype_l(v95, a2);
                      LODWORD(v97) = v117;
                      v98 = v157;
                    }

                    v93 = 3;
                    if (v95 != 95 && (v118 & 0x500) == 0)
                    {
                      goto LABEL_476;
                    }

LABEL_365:
                    v106 = v156;
                    break;
                }

                ++v147;
              }

              v155 = v97;
              goto LABEL_371;
            }

            v93 = 6;
            if (v95 > 77)
            {
              break;
            }

            if (v95 == 48)
            {
              v93 = 5;
              goto LABEL_358;
            }

            if (v95 == 73)
            {
              goto LABEL_332;
            }
          }

          if (v95 == 78)
          {
            break;
          }

          if (v95 == 105)
          {
LABEL_332:
            v93 = 2;
            goto LABEL_334;
          }
        }

        while (v95 != 110);
        v93 = 3;
LABEL_334:
        v155 = v97;
LABEL_335:
        v106 = v156;
LABEL_371:
        v157 = v98;
        if (!v154)
        {
          v111 = __parsefloat_buf(4 * (v149 + 513));
          if (v111)
          {
            v110 = &v111[v149 + 512];
            v112 = (v111 + v156 - v151);
            v65 = (v111 + v65 - v151);
            v151 = v111;
            v149 += 513;
            v106 = v112;
            a1 = v148;
            goto LABEL_375;
          }

          return v162;
        }

        v110 = v152;
LABEL_375:
        *v106 = v95;
        v68 = v106 + 1;
        v67 = v68 < v110;
        v66 = v110;
        if (v16 && v68 >= v110)
        {
LABEL_478:
          for (j = (v68 - 1); v65 < j; j -= 4)
          {
            v140 = *j;
            __ungetwc(v140, a1, a2);
          }

          v65[1] = 0;
          v47 = ((v65 + 1) - v151) >> 2;
          v10 = v161;
          if (v47)
          {
            if ((v15 & 8) == 0)
            {
              if ((v15 & 2) != 0)
              {
                v143 = wcstold_l(v151, &v167, a2);
              }

              else
              {
                if ((v15 & 1) == 0)
                {
                  v141 = wcstof_l(v151, &v167, a2);
                  v142 = v168++;
                  **v142 = v141;
                  goto LABEL_490;
                }

                v143 = wcstod_l(v151, &v167, a2);
              }

              v144 = v168++;
              **v144 = v143;
              goto LABEL_490;
            }

LABEL_486:
            v8 = v162;
            goto LABEL_491;
          }

          return v162;
        }
      }
    }

    v39 = v15 | 0x2C0;
    v167 = nptr;
    if (v16 - 513 >= 0xFFFFFFFFFFFFFE00)
    {
      v40 = v16;
    }

    else
    {
      v40 = 512;
    }

    if (!v40)
    {
      v10 = v161;
      goto LABEL_453;
    }

    v10 = v161;
    while (2)
    {
      v41 = __fgetwc(a1, a2);
      if (v41 > 55)
      {
        v42 = v41 - 65;
        if ((v41 - 65) > 0x37)
        {
          goto LABEL_508;
        }

        if (((1 << v42) & 0x3F0000003FLL) != 0)
        {
          if (v10 < 11)
          {
            goto LABEL_452;
          }

          goto LABEL_137;
        }

        if (((1 << v42) & 0x80000000800000) != 0)
        {
          if ((v39 & 0x100) == 0 || v167 != &nptr[(HIWORD(v39) & 1) + 1])
          {
            goto LABEL_452;
          }

          v39 &= ~0x100u;
          v10 = 16;
        }

        else
        {
LABEL_508:
          if ((v41 - 56) >= 2)
          {
            goto LABEL_452;
          }

          v44 = v10;
          v10 = __vfwscanf_basefix[v10];
          if ((v44 - 1) < 8)
          {
            goto LABEL_452;
          }

LABEL_137:
          v39 &= 0xFFFFFE3F;
        }

LABEL_138:
        v43 = v167;
        *v167 = v41;
        v167 = v43 + 1;
        if (!--v40)
        {
          goto LABEL_453;
        }

        continue;
      }

      break;
    }

    if (v41 > 47)
    {
      if ((v41 - 49) < 7)
      {
        v10 = __vfwscanf_basefix[v10];
        goto LABEL_137;
      }

      if (v41 != 48)
      {
        goto LABEL_452;
      }

      v45 = v39 | 0x100;
      v46 = v10 == 0;
      if (v10)
      {
        v10 = v10;
      }

      else
      {
        v10 = 8;
      }

      if (!v46)
      {
        v45 = v39;
      }

      if ((v45 & 0x200) != 0)
      {
        v39 = v45 & 0xFFFFFD3F;
      }

      else
      {
        v39 = v45 & 0xFFFFFC3F;
      }

      goto LABEL_138;
    }

    if (v41 == 43 || v41 == 45)
    {
      if ((v39 & 0x40) == 0)
      {
        goto LABEL_452;
      }

      v39 = v39 & 0xFFFEFFBF | 0x10000;
      goto LABEL_138;
    }

    if (v41 == -1)
    {
      goto LABEL_453;
    }

LABEL_452:
    __ungetwc(v41, a1, a2);
LABEL_453:
    v132 = v167;
    if ((v39 & 0x80) != 0)
    {
      if (v167 <= nptr)
      {
        return v162;
      }

      v145 = *--v167;
LABEL_503:
      __ungetwc(v145, a1, a2);
      return v162;
    }

    v133 = *(v167 - 1);
    if ((v133 & 0xFFFFFFDF) == 0x58)
    {
      --v167;
      __ungetwc(v133, a1, a2);
      v132 = v167;
    }

    if ((v39 & 8) != 0)
    {
      v8 = v162;
    }

    else
    {
      *v132 = 0;
      if ((v39 & 0x8000) != 0)
      {
        v134 = wcstoumax_l(nptr, 0, v10, a2);
        if ((v39 & 0x10) != 0)
        {
          goto LABEL_470;
        }
      }

      else
      {
        v134 = wcstoimax_l(nptr, 0, v10, a2);
        if ((v39 & 0x10) != 0)
        {
          goto LABEL_470;
        }
      }

      if ((v39 & 0x4000) != 0)
      {
        v137 = v168++;
        **v137 = v134;
      }

      else if ((v39 & 4) != 0)
      {
        v138 = v168++;
        **v138 = v134;
      }

      else if ((v39 & 1) != 0 || (v39 & 0x400) != 0 || (v39 & 0x800) != 0 || (v39 & 0x1000) != 0 || (v39 & 0x2000) != 0)
      {
LABEL_470:
        v136 = v168++;
        **v136 = v134;
      }

      else
      {
        v135 = v168++;
        **v135 = v134;
      }

      v8 = v162 + 1;
      v132 = v167;
    }

    v47 = (v132 - nptr) >> 2;
LABEL_491:
    v9 = (v47 + v9);
LABEL_492:
    v4 = *v5;
  }

  while (*v5);
  return v8;
}

int vfwscanf_l(FILE *a1, locale_t a2, const __int32 *a3, __darwin_va_list a4)
{
  flockfile(a1);
  extra = a1->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v9 = &__global_locale;
  if (a2 != -1)
  {
    v9 = a2;
  }

  if (a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = __vfwscanf(a1, v10, a3, a4);
  funlockfile(a1);
  return v11;
}

int vscanf(const char *__format, va_list a2)
{
  flockfile(__stdinp);
  v4 = __stdinp;
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  v8 = __svfscanf_l(v4, v7, __format, a2);
  funlockfile(__stdinp);
  return v8;
}

int vscanf_l(locale_t a1, const char *a2, va_list a3)
{
  v5 = &__global_locale;
  if (a1 != -1)
  {
    v5 = a1;
  }

  if (a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = __c_locale;
  }

  flockfile(__stdinp);
  v7 = __svfscanf_l(__stdinp, v6, a2, a3);
  funlockfile(__stdinp);
  return v7;
}

int vsscanf(const char *__str, const char *__format, va_list a3)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vsscanf_l(__str, v7, __format, a3);
}

int vswprintf_l(__int32 *a1, size_t n, locale_t a3, const __int32 *a4, __darwin_va_list a5)
{
  v26 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v24 = v27;
  v31 = 0;
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27[0] = 0;
  v27[1] = 850045858;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = &__global_locale;
  if (a3 != -1)
  {
    v5 = a3;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = __c_locale;
  }

  v39 = 0uLL;
  v40 = 0uLL;
  if (!n)
  {
    v14 = 22;
    goto LABEL_16;
  }

  DWORD2(v18) = -48632;
  v17 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  v19[0] = v17;
  if (!v17)
  {
    v14 = 12;
    goto LABEL_16;
  }

  DWORD1(v18) = 127;
  LODWORD(v19[1]) = 127;
  LOBYTE(v32) = v32 & 0xF8;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = __vfwprintf(&v17, v6, a4, a5);
  if (v11 < 0)
  {
    v14 = *__error();
    free(v19[0]);
    goto LABEL_16;
  }

  v12 = v11;
  *v17 = 0;
  v16 = v19[0];
  memset(&v41, 0, sizeof(v41));
  v13 = mbsrtowcs_l(a1, &v16, n, &v41, v6);
  free(v19[0]);
  if (v13 == -1)
  {
    v14 = 92;
    goto LABEL_16;
  }

  if (v13 == n)
  {
    a1[n - 1] = 0;
    v14 = 84;
LABEL_16:
    *__error() = v14;
    return -1;
  }

  return v12;
}

int vswprintf(__int32 *a1, size_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v6 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__global_locale;
  }

  return vswprintf_l(a1, a2, v8, a3, a4);
}

int vswscanf_l(const __int32 *a1, locale_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v25 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v23 = v26;
  v30 = 0;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26[0] = 0;
  v26[1] = 850045858;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = &__global_locale;
  if (a2 != -1)
  {
    v7 = a2;
  }

  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = __c_locale;
  }

  v38 = 0uLL;
  v39 = 0uLL;
  v9 = wcslen(a1);
  v10 = malloc_type_malloc(v9 * *(*(v8 + 166) + 64) + 1, 0xFEE33C81uLL);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  memset(&v40, 0, sizeof(v40));
  v15 = a1;
  v12 = wcsrtombs_l(v10, &v15, 0xFFFFFFFFFFFFFFFFLL, &v40, v8);
  if (v12 == -1)
  {
    v13 = -1;
  }

  else
  {
    v16 = v11;
    *&v18 = v11;
    DWORD2(v17) = -65532;
    LODWORD(v17) = v12;
    DWORD2(v18) = v12;
    *(&v20 + 1) = eofread_0;
    *&v22 = 0;
    *&v24 = 0;
    LOBYTE(v31) = v31 & 0xF8;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = __vfwscanf(&v16, v8, a3, a4);
  }

  free(v11);
  return v13;
}

int vswscanf(const __int32 *a1, const __int32 *a2, __darwin_va_list a3)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vswscanf_l(a1, v7, a2, a3);
}

int vwprintf(const __int32 *a1, __darwin_va_list a2)
{
  v4 = __stdoutp;
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vfwprintf_l(v4, v7, a1, a2);
}

int vwscanf(const __int32 *a1, __darwin_va_list a2)
{
  v4 = __stdinp;
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vfwscanf_l(v4, v7, a1, a2);
}

int wprintf(const __int32 *a1, ...)
{
  va_start(va, a1);
  v2 = __stdoutp;
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vfwprintf_l(v2, v5, a1, va);
}

int wscanf(const __int32 *a1, ...)
{
  va_start(va, a1);
  v2 = __stdinp;
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vfwscanf_l(v2, v5, a1, va);
}

FILE *__cdecl open_wmemstream(__int32 **__bufp, size_t *__sizep)
{
  if (__bufp && __sizep)
  {
    v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *__bufp = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(0xA0uLL, 0x1090040970F6AABuLL);
      if (v5)
      {
        v6 = v5;
        *v5 = __bufp;
        v5[1] = __sizep;
        *(v5 + 1) = 0u;
        *(v5 + 2) = 0u;
        *(v5 + 3) = 0u;
        *(v5 + 4) = 0u;
        *(v5 + 5) = 0u;
        *(v5 + 6) = 0u;
        *(v5 + 7) = 0u;
        *(v5 + 8) = 0u;
        *(v5 + 9) = 0u;
        wmemstream_update(v5);
        v7 = funopen(v6, 0, wmemstream_write, wmemstream_seek, wmemstream_close);
        v8 = v7;
        if (v7)
        {
          fwide(v7, 1);
        }

        else
        {
          v10 = *__error();
          free(v6);
          free(*__bufp);
          *__bufp = 0;
          *__error() = v10;
        }
      }

      else
      {
        v9 = *__error();
        free(*__bufp);
        *__bufp = 0;
        v8 = 0;
        *__error() = v9;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    *__error() = 22;
  }

  return v8;
}

uint64_t wmemstream_update(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0x8000000000000000) != 0 || (v2 = *(result + 24), (v2 & 0x8000000000000000) != 0))
  {
    wmemstream_update_cold_1();
  }

  if (v1 >= v2)
  {
    v1 = *(result + 24);
  }

  **(result + 8) = v1;
  return result;
}

uint64_t wmemstream_write(uint64_t a1, char *a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 112);
  *(&v23._mbstateL + 4) = *(a1 + 96);
  *(&v23._mbstateL + 5) = v6;
  v7 = *(a1 + 144);
  *(&v23._mbstateL + 6) = *(a1 + 128);
  *(&v23._mbstateL + 7) = v7;
  v8 = *(a1 + 48);
  *v23.__mbstate8 = *(a1 + 32);
  *(&v23._mbstateL + 1) = v8;
  v9 = *(a1 + 80);
  *(&v23._mbstateL + 2) = *(a1 + 64);
  *(&v23._mbstateL + 3) = v9;
  if (a3 >= 1)
  {
    v10 = 0;
    v11 = a3;
    v12 = a2;
    do
    {
      v13 = mbrlen(v12, v11, &v23);
      if (v13 == -2)
      {
        break;
      }

      if (v13 == -1)
      {
        goto LABEL_10;
      }

      v14 = v13 <= 1 ? 1 : v13;
      v11 -= v14;
      v12 += v14;
      ++v10;
    }

    while (v11 > 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    *__error() = 92;
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
LABEL_12:
  if ((*(a1 + 24) + v10) >= 0x1FFFFFFFFFFFFFFELL)
  {
    v15 = 0x1FFFFFFFFFFFFFFELL;
  }

  else
  {
    v15 = *(a1 + 24) + v10;
  }

  if (v15 > *(a1 + 16))
  {
    v16 = reallocarray_DARWIN_EXTSN();
    if (!v16)
    {
      return 0xFFFFFFFFLL;
    }

    v17 = v16;
    wmemset((v16 + 4 * *(a1 + 16) + 4), 0, v15 - *(a1 + 16));
    **a1 = v17;
    *(a1 + 16) = v15;
  }

  if (v3 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *(a1 + 24);
      if (v19 >= *(a1 + 16))
      {
        break;
      }

      v20 = mbrtowc((**a1 + 4 * v19), v4, v3, (a1 + 32));
      if (v20 == -1)
      {
        if (v18)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v20 == -2)
      {
        v18 += v3;
        break;
      }

      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      v4 += v21;
      v3 -= v21;
      ++*(a1 + 24);
      v18 += v21;
    }

    while (v3 > 0);
  }

  wmemstream_update(a1);
  return v18;
}

uint64_t wmemstream_seek(uint64_t a1, int64_t a2, int a3)
{
  v4 = *(a1 + 24);
  switch(a3)
  {
    case 2:
      v5 = *(a1 + 16);
      if (a2 < 0)
      {
        a2 += v5;
        if (a2 < 0)
        {
          v6 = __error();
          v7 = 22;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v5 ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
        {
          v6 = __error();
          v7 = 84;
LABEL_13:
          *v6 = v7;
          return -1;
        }

        a2 += v5;
      }

LABEL_15:
      *(a1 + 24) = a2;
      if (a2 != v4)
      {
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        *(a1 + 96) = 0u;
        *(a1 + 112) = 0u;
        *(a1 + 64) = 0u;
        *(a1 + 80) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
      }

      break;
    case 1:
      if (a2)
      {
        wmemstream_seek_cold_1();
      }

      break;
    case 0:
      if (a2 < 0)
      {
        wmemstream_seek_cold_2();
      }

      goto LABEL_15;
  }

  wmemstream_update(a1);
  return *(a1 + 24);
}