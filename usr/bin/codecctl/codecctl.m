unint64_t sub_100000948(FILE *a1, FILE *a2, unint64_t a3, unint64_t a4, int a5)
{
  do
  {
    do
    {
      printf("> ");
      fflush(__stdoutp);
      fgets(__str, 32, a1);
      v10 = strtoul(__str, 0, a5);
    }

    while (v10 < a3);
    v11 = v10;
  }

  while (v10 > a4);
  if (a2)
  {
    fprintf(a2, "%lu\n", v10);
    fflush(a2);
  }

  return v11;
}

_BYTE *sub_100000A3C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100000B74();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100000AF4(char *__str, int __base)
{
  if (*__str != 48 || __str[1] != 98)
  {
    return strtoul(__str, 0, __base);
  }

  v3 = __str[2];
  if ((v3 & 0xFE) != 0x30)
  {
    return 0;
  }

  result = 0;
  v5 = __str + 3;
  do
  {
    result = (v3 == 49) | (2 * result);
    v6 = *v5++;
    v3 = v6;
  }

  while ((v6 & 0xFE) == 0x30);
  return result;
}

void sub_100000B8C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100000BE8(exception, a1);
}

std::logic_error *sub_100000BE8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100000C1C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_100000C50(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100000B74();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_100000CF4(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100000E9C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100000E34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100000E14);
}

uint64_t sub_100000E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100000B74();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100001068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100001084(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_100001220(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 4) = 0x1000000001;
  *(a1 + 16) = __stdoutp;
  ioctl(0, 0x40087468uLL, v4);
  if (v5)
  {
    if (v5 < 0x11u)
    {
      v2 = 1;
    }

    else
    {
      v2 = v5 / 0x11u;
    }

    *(a1 + 4) = v2;
  }

  return a1;
}

FILE *sub_1000012E8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = result == __stdoutp;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && result != __stderrp)
  {
    result = fclose(result);
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100001364(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = a2;
    *result = 0;
  }

  return result;
}

uint64_t sub_10000137C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (!*(a2 + 23))
    {
      return 0;
    }
  }

  v5 = fopen(v4, "w");
  if (v5)
  {
    v6 = v5;
    sub_1000012E8(a1);
    *(a1 + 16) = v6;
    return 1;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  fprintf(__stderrp, "Unable to open output file %s\n", v8);
  return 0;
}

uint64_t sub_100001428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  return fprintf(v2, "%s\n", v3);
}

uint64_t sub_100001468(uint64_t result, int **a2, int a3, int a4)
{
  v4 = *a2;
  v20 = a2[1];
  if (*a2 != v20)
  {
    v7 = result;
    do
    {
      v8 = *(v7 + 4);
      if (a3 == 4 && *v7 == 1)
      {
        v9 = v8;
        if (*(v7 + 8) == 10)
        {
          v10 = v9 / 1.8;
        }

        else
        {
          v10 = v9 / 1.5;
        }

        v8 = v10;
      }

      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      v12 = *(v4 + 1);
      v13 = *(v4 + 2) - v12;
      if (v13)
      {
        v14 = 0;
        LODWORD(v15) = 0;
        v16 = *v4;
        v17 = v13 >> 2;
        v18 = (v11 + ((*(v4 + 2) - v12) >> 2) - 1) / v11;
        do
        {
          v19 = v15 / v11 + v14 * v18;
          if (v17 > v19)
          {
            sub_1000015F4(v7, (v16 + v19 * a4), *(v12 + 4 * v19), a3, 0);
          }

          if (v14 + 1 == v11 || v14 == -1)
          {
            fputc(10, *(v7 + 16));
          }

          else
          {
            fwrite("  ", 2uLL, 1uLL, *(v7 + 16));
          }

          v15 = (v15 + 1);
          v12 = *(v4 + 1);
          v17 = (*(v4 + 2) - v12) >> 2;
          v14 = v15 % v11;
        }

        while (v17 > v15 || v14);
      }

      result = fputc(10, *(v7 + 16));
      v4 += 8;
    }

    while (v4 != v20);
  }

  return result;
}

uint64_t sub_1000015F4(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  v16 = 0u;
  v9 = *(a1 + 8);
  if (v9 == 10)
  {
    switch(a4)
    {
      case 4:
        snprintf(__str, 0x64uLL, "R%012ud: %012d");
        break;
      case 2:
        snprintf(__str, 0x64uLL, "R%06ud: %06d");
        break;
      case 1:
        snprintf(__str, 0x64uLL, "R%06ud: %04d");
        break;
      default:
        fprintf(__stderrp, "Unexpected register width (%d).  Supported widths are 1 and 4\n");
        break;
    }
  }

  else if (v9 == 16)
  {
    switch(a4)
    {
      case 4:
        snprintf(__str, 0x64uLL, "%8Xh: 0x%08x");
        break;
      case 2:
        snprintf(__str, 0x64uLL, "%8Xh: 0x%04x");
        break;
      case 1:
        snprintf(__str, 0x64uLL, "%8Xh: 0x%02x");
        break;
      default:
        fprintf(__stderrp, "Unexpected register width (%d).  Supported widths are 1, 2, and 4\n");
        break;
    }
  }

  result = fputs(__str, *(a1 + 16));
  if (a5)
  {
    fwrite("    ", 4uLL, 1uLL, *(a1 + 16));
    v11 = (8 * a4);
    if (v11)
    {
      do
      {
        if ((a3 >> (v11 - 1)))
        {
          v12 = 49;
        }

        else
        {
          v12 = 48;
        }

        fputc(v12, *(a1 + 16));
      }

      while (v11-- > 1);
    }

    v14 = *(a1 + 16);

    return fputc(10, v14);
  }

  return result;
}

uint64_t sub_100001808(uint64_t a1, unsigned int *a2, int a3)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  v4 = *(a1 + 8);
  if (v4 == 10)
  {
    v11 = a2[2];
    v12 = a2[3];
    v8 = a2[1];
    v6 = *a2;
    snprintf(__str, 0x64uLL, "R%0*d: bitmask = %0*d, val = %0*d (patched count: %d)\n", (3 * a3));
  }

  else if (v4 == 16)
  {
    v9 = a2[2];
    v10 = a2[3];
    v7 = a2[1];
    snprintf(__str, 0x64uLL, "%8Xh: bitmask = 0x%0*x, val = 0x%0*x (patched count: %d)\n", *a2);
  }

  return fputs(__str, *(a1 + 16));
}

double sub_1000018E8(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = -1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *&result = 16;
  *(a1 + 88) = 16;
  *(a1 + 96) = 256;
  return result;
}

size_t sub_100001930(uint64_t a1, int a2)
{
  v3 = __stderrp;
  v4 = getprogname();
  fprintf(v3, "usage: %s [-d | -x] [-p] [-u] [-H val] [-c width] [-f file] [codec|index|default] [sequence...]\n", v4);
  fwrite("\t-d\tUse decimal register numbers\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("\t-x\tUse hex register numbers\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-H\tForce headphone detect: true/false\n", 0x27uLL, 1uLL, __stderrp);
  fwrite("\t-p\tPing codec (set exit status based on success)\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("\t-u\tMatch codec on HAL UID rather than name\n", 0x2CuLL, 1uLL, __stderrp);
  fwrite("\t-c\tSet the column width (default is to expand to fit screen\n", 0x3DuLL, 1uLL, __stderrp);
  fwrite("\t-f\tDump output to file\n", 0x18uLL, 1uLL, __stderrp);
  fwrite("\t-a\tDump all codec settings then quit\n", 0x26uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("Sequence options:", 0x11uLL, 1uLL, __stderrp);
  fwrite("\t<reg> <value> <sleep_ms> \tWrite register\n", 0x2AuLL, 1uLL, __stderrp);
  fwrite("\tdump                     \tRead all registers\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("\tread <reg>               \tRead single register\n", 0x30uLL, 1uLL, __stderrp);
  fwrite("\tread <reg>,<count>       \tRead register range\n", 0x2FuLL, 1uLL, __stderrp);
  fwrite("\twrite <reg> <value>      \tWrite single register\n", 0x31uLL, 1uLL, __stderrp);
  fwrite("\tmask <reg> <mask> <value>\tMask and write single register\n", 0x3AuLL, 1uLL, __stderrp);
  fwrite("\tpatch <reg> <mask> <value>\tThis command can patch a register bitmask value similar to above\n\t                          \t'mask' command format, but only by patching that bitmask value in driver.\n\t                          \tWhen the underlying driver write a bitmask value during the runtime,\n\t                          \tthe (address matched) bitmask patch will be applied. This can be used\n\t                          \tas driver tunable for some parameters, control logic register should\n\t                          \tnot be patched.\n", 0x213uLL, 1uLL, __stderrp);
  fwrite("\tpatch reset\t\t\tRemove all register bitmask patch, it will rest the underlying driver to its default behavior.\n", 0x6EuLL, 1uLL, __stderrp);
  fwrite("\tpatch list\t\t\tList all patched register bitmask list, it also show how many times underlying\n\t          \t\t\tdriver actually write the patched bitmask.\n", 0x96uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  result = fwrite("Specify no sequence for interactive mode\n\n", 0x2AuLL, 1uLL, __stderrp);
  if (a2)
  {
    exit(0);
  }

  return result;
}

uint64_t sub_100001B80(uint64_t a1, std::string *this)
{
  v4 = std::string::compare(this, "default");
  v5 = (a1 + 32);
  if (v4)
  {
    std::string::operator=(v5, this);
  }

  else
  {
    if (*(a1 + 55) < 0)
    {
      *(a1 + 40) = 5;
      v5 = *(a1 + 32);
    }

    else
    {
      *(a1 + 55) = 5;
    }

    strcpy(v5, "Codec");
    *(a1 + 96) = 1;
  }

  return 1;
}

char *sub_100001C0C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[55] < 0)
  {
    return sub_100000C50(a2, *(result + 4), *(result + 5));
  }

  *a2 = *(result + 2);
  *(a2 + 16) = *(result + 6);
  return result;
}

BOOL sub_100001C3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    std::string::operator=((a1 + 64), a2);
  }

  else
  {
    fwrite("Empty output file name\n", 0x17uLL, 1uLL, __stderrp);
  }

  return v2 != 0;
}

char *sub_100001CA4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[87] < 0)
  {
    return sub_100000C50(a2, *(result + 8), *(result + 9));
  }

  *a2 = *(result + 4);
  *(a2 + 16) = *(result + 10);
  return result;
}

uint64_t sub_100001CDC(uint64_t a1, int a2, char **a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = getopt(a2, a3, "h?xdH:upc:f:a");
        if (v6 <= 101)
        {
          break;
        }

        if (v6 > 116)
        {
          if (v6 == 117)
          {
            *(a1 + 96) = 1;
          }

          else
          {
            if (v6 != 120)
            {
              goto LABEL_31;
            }

            *(a1 + 88) = 16;
          }
        }

        else if (v6 == 102)
        {
          sub_100000A3C(&__p, optarg);
          v6 = sub_100001C3C(a1, &__p);
          v10 = v6;
          if (SHIBYTE(v15) < 0)
          {
            operator delete(__p);
          }

          if ((v10 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v6 != 112)
          {
            goto LABEL_31;
          }

          v7 = a1;
          v8 = 5;
LABEL_10:
          sub_100001FF8(v7, v8, 0);
        }
      }

      if (v6 <= 98)
      {
        break;
      }

      if (v6 == 99)
      {
        *(a1 + 92) = atoi(optarg);
      }

      else
      {
        if (v6 != 100)
        {
          goto LABEL_31;
        }

        *(a1 + 88) = 10;
      }
    }

    if (v6 != 72)
    {
      break;
    }

    __p = 0;
    v14 = 0;
    v15 = 0;
    v9 = optarg;
    if (!strcmp(optarg, "true"))
    {
      v12 = 1;
      sub_100001F18(&__p, &v12);
    }

    else if (!strcmp(v9, "false"))
    {
      v12 = 0;
      sub_100001F18(&__p, &v12);
    }

    sub_100001FF8(a1, 6, &__p);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  if (v6 == 97)
  {
    v7 = a1;
    v8 = 4;
    goto LABEL_10;
  }

  if (v6 == -1)
  {
    return sub_1000020AC(a1, a2 - optind, &a3[optind]);
  }

LABEL_31:
  sub_100001930(v6, 0);
  return 0;
}

void sub_100001EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001F18(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100002574();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10000258C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_100001FF8(uint64_t a1, int a2, char **a3)
{
  v10 = a2;
  if (!a3)
  {
    v11 = &v10;
    v5 = sub_10000273C(a1, &v10) + 5;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  v11 = &v10;
  v5 = sub_10000273C(a1, &v10) + 5;
  if (v5 != a3)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = (v7 - *a3) >> 3;
LABEL_5:
    sub_1000025D4(v5, v6, v7, v8);
  }

  *(a1 + 97) = 0;
  return 1;
}

uint64_t sub_1000020AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *a3;
    v7 = strlen(*a3);
    if (v7)
    {
      v8 = 0;
      while (1)
      {
        v9 = v6[v8];
        if (v9 < 0 || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_7;
        }
      }

      sub_100000A3C(&__p, v6);
      sub_100001B80(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_7:
      *(a1 + 56) = atoi(v6) - 1;
    }

    if (a2 >= 2)
    {
      v10 = *(a3 + 8);
      if (!strcmp(v10, "dump"))
      {
        sub_100001FF8(a1, 1, 0);
      }

      else
      {
        v11 = strcmp(v10, "write");
        if (a2 < 4 || v11)
        {
          v12 = strcmp(v10, "read");
          if (a2 == 2 || v12)
          {
            v17 = strcmp(v10, "mask");
            if (a2 < 5 || v17)
            {
              v18 = strcmp(v10, "patch");
              if (v18)
              {
                sub_100001930(v18, 1);
                return 0;
              }

              memset(&__p, 0, sizeof(__p));
              v21 = *(a3 + 16);
              if (!strcmp(v21, "reset"))
              {
                v22 = 1;
                sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
              }

              else
              {
                if (!strcmp(v21, "list"))
                {
                  v22 = 2;
                }

                else
                {
                  v22 = 0;
                  sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
                  v22 = sub_100000AF4(*(a3 + 16), *(a1 + 88));
                  sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
                  v22 = sub_100000AF4(*(a3 + 32), *(a1 + 88));
                  sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
                  v22 = sub_100000AF4(*(a3 + 24), *(a1 + 88));
                }

                sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
              }

              sub_100001FF8(a1, 7, &__p.__r_.__value_.__l.__data_);
            }

            else
            {
              memset(&__p, 0, sizeof(__p));
              v22 = sub_100000AF4(*(a3 + 16), *(a1 + 88));
              sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
              v22 = sub_100000AF4(*(a3 + 32), *(a1 + 88));
              sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
              v22 = sub_100000AF4(*(a3 + 24), *(a1 + 88));
              sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
              sub_100001FF8(a1, 2, &__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            memset(&__p, 0, sizeof(__p));
            v13 = *(a3 + 16);
            v14 = strchr(v13, 44);
            if (v14)
            {
              v15 = v14;
              v16 = strtoul(v14 + 1, 0, 0);
              *v15 = 0;
              v13 = *(a3 + 16);
            }

            else
            {
              v16 = 1;
            }

            v22 = sub_100000AF4(v13, *(a1 + 88));
            sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
            v22 = v16;
            sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
            sub_100001FF8(a1, 0, &__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
          v22 = sub_100000AF4(*(a3 + 16), *(a1 + 88));
          sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
          v22 = sub_100000AF4(*(a3 + 24), *(a1 + 88));
          sub_100001F18(&__p.__r_.__value_.__l.__data_, &v22);
          sub_100001FF8(a1, 2, &__p.__r_.__value_.__l.__data_);
        }

        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if ((*(a1 + 55) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 55))
    {
      goto LABEL_31;
    }

LABEL_34:
    if ((*(a1 + 56) & 0x80000000) != 0)
    {
      return 1;
    }

    v20 = 3;
LABEL_36:
    *(a1 + 24) = v20;
    return 1;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_34;
  }

LABEL_31:
  if (*(a1 + 96) == 1)
  {
    v20 = 2;
    goto LABEL_36;
  }

  result = 1;
  *(a1 + 24) = 1;
  return result;
}

void sub_10000248C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000024FC(uint64_t **a1, _DWORD *a2, uint64_t *a3)
{
  v4 = (a1 + 1);
  v3 = *a1;
  if (*a1 != (a1 + 1))
  {
    *a2 = *(v3 + 8);
    if (v3 + 5 != a3)
    {
      sub_1000025D4(a3, v3[5], v3[6], (v3[6] - v3[5]) >> 3);
    }

    sub_10000286C(a1, v3);
  }

  return v3 != v4;
}

void sub_10000258C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100000C1C();
}

void *sub_1000025D4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100002700(v6, v10);
    }

    sub_100002574();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_100002700(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10000258C(a1, a2);
  }

  sub_100002574();
}

uint64_t *sub_10000273C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100002814(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100001084(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10000286C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000028B0(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_1000028B0(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_100002924(v6, a2);
  return v3;
}

uint64_t *sub_100002924(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t start(int a1, char **a2)
{
  sub_1000018E8(v27);
  if ((sub_100001CDC(v27, a1, a2) & 1) == 0)
  {
    exit(2);
  }

  v26 = 0;
  v4 = sub_100001B78(v27);
  if (v4 == 1)
  {
    sub_100001C0C(v27, __p);
    sub_100004A94(__p, v22);
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = sub_1000051AC();
        v6 = sub_100001C34(v27);
        if ((v6 & 0x80000000) == 0)
        {
          v7 = v5[1];
          if (v6 < ((v7 - *v5) >> 3))
          {
            v8 = (*v5 + 8 * v6);
            v9 = *v8;
            *v8 = 0;
            v26 = v9;
            sub_1000041A4(v8 + 1, v7, v8);
            v11 = v10;
            v12 = v5[1];
            while (v12 != v11)
            {
              v14 = *--v12;
              v13 = v14;
              *v12 = 0;
              if (v14)
              {
                (*(*v13 + 8))(v13);
              }
            }

            v5[1] = v11;
            goto LABEL_17;
          }
        }

        fprintf(__stdoutp, "There is no device at index %d\n", v6 + 1);
        sub_1000030A0(v5);
      }

      v9 = 0;
      goto LABEL_17;
    }

    sub_100001C0C(v27, __p);
    sub_100004E98(__p, v22);
  }

  v9 = v22[0];
  v26 = v22[0];
  v22[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  sub_1000012E4(__p);
  v15 = sub_100001CD4(v27);
  sub_100001364(__p, v15);
  v16 = sub_100001CCC(v27);
  sub_100001374(__p, v16);
  sub_100001CA4(v27, v22);
  if (v23 < 0)
  {
    v17 = v22[1];
    operator delete(v22[0]);
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  else if (!v23)
  {
    goto LABEL_24;
  }

  sub_100001CA4(v27, v22);
  v18 = sub_10000137C(__p, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if ((v18 & 1) == 0)
  {
    exit(2);
  }

LABEL_24:
  sub_1000031E4(v27, __p, &v26);
  if (!sub_100001B70(v27))
  {
    sub_10000133C(__p);
    if (!v9)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v9)
  {
    sub_100003774(v27, __p, &v26);
    sub_10000133C(__p);
LABEL_28:
    (*(*v9 + 8))(v9);
    goto LABEL_30;
  }

  v19 = sub_1000051AC();
  fwrite("Choose a device:\n\n", 0x12uLL, 1uLL, __stdoutp);
  sub_1000030A0(v19);
  v20 = sub_100000948(__stdinp, 0, 1uLL, (v19[1] - *v19) >> 3, 0);
  sub_100003774(v27, __p, (*v19 + 8 * v20 - 8));
  sub_10000133C(__p);
LABEL_30:
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27[4]);
  }

  sub_100004280(v27, v27[1]);
  return 0;
}

void sub_100002FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_100004230(&a24);
  _Unwind_Resume(a1);
}

void sub_1000030A0(uint64_t *a1)
{
  fprintf(__stdoutp, "%4s %s\n", &unk_100009627, "NAME");
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = __stdoutp;
      sub_100005748(*(v2 + 8 * v3), v12);
      v6 = v13;
      v7 = v12[0];
      sub_1000057D8(*(v2 + 8 * v3), __p);
      if (v6 >= 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = v7;
      }

      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      fprintf(v5, "[%2d]: %s (%s)\n", v4, v8, v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      v3 = v4;
      v2 = *a1;
      ++v4;
    }

    while (v3 < (a1[1] - *a1) >> 3);
  }
}

void sub_1000031C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000031E4(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = sub_1000024FC(a1, &v49, &v46);
          if (!v6)
          {
LABEL_65:
            v34 = !v6;
            goto LABEL_81;
          }

          if (v49 <= 3)
          {
            break;
          }

          if (v49 <= 5)
          {
            if (v49 != 4)
            {
              __p = 0;
              if (!*a3 || !sub_100007130(*a3, &__p))
              {
                goto LABEL_70;
              }

              if (__p == kCFBooleanTrue)
              {
                v41 = 0;
                v42 = "Ping success\n";
              }

              else
              {
                if (__p != kCFBooleanFalse)
                {
LABEL_70:
                  v35 = __stdoutp;
                  v36 = "ping error\n";
                  v37 = 11;
LABEL_79:
                  fwrite(v36, v37, 1uLL, v35);
                  goto LABEL_80;
                }

                v41 = 1;
                v42 = "Ping failure\n";
              }

              fwrite(v42, 0xDuLL, 1uLL, __stdoutp);
              exit(v41);
            }

            v14 = sub_1000051AC();
            v15 = *v14;
            v16 = v14[1];
            if (*v14 != v16)
            {
              v17 = 1;
              do
              {
                while (!sub_10000393C(v15, a2, 1))
                {
                  v18 = __stderrp;
                  sub_100005748(*v15, &__p);
                  p_p = &__p;
                  if (v45 < 0)
                  {
                    p_p = __p;
                  }

                  fprintf(v18, "Failed to dump registers for %s\n", p_p);
                  if (SHIBYTE(v45) < 0)
                  {
                    operator delete(__p);
                  }

                  v17 = 0;
                  if (++v15 == v16)
                  {
                    goto LABEL_65;
                  }
                }

                ++v15;
              }

              while (v15 != v16);
              if ((v17 & 1) == 0)
              {
                goto LABEL_65;
              }
            }
          }

          else if (v49 == 6)
          {
            if (v46 != v47 && *a3)
            {
              v22 = *v46 ? kCFBooleanTrue : kCFBooleanFalse;
              if ((sub_1000071BC(*a3, v22) & 1) == 0)
              {
                *v46;
                fprintf(__stderrp, "Unable to force headphone detect (%s)\n");
                goto LABEL_80;
              }
            }
          }

          else
          {
            if (v49 != 7)
            {
              goto LABEL_71;
            }

            if (v47 == v46)
            {
              goto LABEL_65;
            }

            v7 = *v46;
            if (v7 == 2)
            {
              __p = 0;
              v44 = 0;
              v45 = 0;
              v8 = sub_100006048(*a3, &__p);
              v10 = __p;
              v9 = v44;
              if (__p != v44)
              {
                do
                {
                  v11 = sub_100005AAC(*a3, *v10);
                  sub_100001808(a2, v10, v11);
                  v10 += 4;
                }

                while (v10 != v9);
                v10 = __p;
              }

              if (v10)
              {
                v44 = v10;
                operator delete(v10);
              }

              if ((v8 & 1) == 0)
              {
LABEL_78:
                v35 = __stderrp;
                v36 = "Unable to patch the register\n";
                v37 = 29;
                goto LABEL_79;
              }
            }

            else
            {
              v23 = *(v46 + 2);
              v24 = *(v46 + 3);
              v25 = *a3;
              LODWORD(__p) = *(v46 + 1);
              HIDWORD(__p) = v24;
              v44 = v23;
              if ((sub_100005F3C(v25, v7, &__p) & 1) == 0)
              {
                goto LABEL_78;
              }
            }
          }
        }

        if (v49)
        {
          break;
        }

        v20 = v46;
        if (v46 == v47)
        {
          v34 = 0;
          goto LABEL_82;
        }

        if (!*a3)
        {
          goto LABEL_65;
        }

        if ((v47 - v46) < 9)
        {
          v21 = 1;
        }

        else
        {
          v21 = *(v46 + 2);
        }

        v26 = *v46;
        sub_1000042E4(&__p, v21);
        v27 = sub_1000063F4(*a3, v26, v21, &__p);
        v28 = v27;
        if (!v27)
        {
          fprintf(__stderrp, "Unable to find register address %x\n", v26);
LABEL_61:
          v30 = __p;
          goto LABEL_62;
        }

        v30 = __p;
        v29 = v44;
        if (__p != v44)
        {
          do
          {
            v31 = *v30;
            v32 = v30[1];
            v33 = sub_100005AAC(*a3, *v30);
            sub_1000015F4(a2, v31, v32, v33, 1);
            v30 += 2;
          }

          while (v30 != v29);
          goto LABEL_61;
        }

LABEL_62:
        if (v30)
        {
          v44 = v30;
          operator delete(v30);
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (v49 == 1)
      {
        break;
      }

      if (v49 != 2)
      {
LABEL_71:
        fprintf(__stdoutp, "Unhandled Standalone operation %d\n");
        goto LABEL_80;
      }

      if ((v47 - v46) < 9)
      {
        goto LABEL_65;
      }

      v12 = *v46;
      if (v47 - v46 == 16)
      {
        v13 = sub_100005998(*a3, *v46, *(v46 + 2));
      }

      else
      {
        v13 = sub_100005884(*a3, *v46, *(v46 + 4), *(v46 + 2));
      }

      if ((v13 & 1) == 0)
      {
        fprintf(__stderrp, "Unable to write to the register address %x\n");
        goto LABEL_80;
      }
    }

    if (!*a3)
    {
      goto LABEL_65;
    }
  }

  while (sub_10000393C(a3, a2, 1));
  v38 = __stderrp;
  sub_100005748(*a3, &__p);
  if (v45 >= 0)
  {
    v39 = &__p;
  }

  else
  {
    v39 = __p;
  }

  fprintf(v38, "Failed to dump registers for %s\n", v39);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

LABEL_80:
  v34 = 0;
LABEL_81:
  v20 = v46;
LABEL_82:
  if (v20)
  {
    v47 = v20;
    operator delete(v20);
  }

  return v34;
}

void sub_100003710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100003774(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v11 = *a3;
    while (1)
    {
      fputc(10, __stdoutp);
      sub_10000393C(a3, a2, 0);
      fputc(10, __stdoutp);
      fwrite("? ", 2uLL, 1uLL, __stdoutp);
      fflush(__stdoutp);
      if (!fgets(__str, 32, __stdinp))
      {
        break;
      }

      v7 = sub_100001CCC(a1);
      v8 = sub_100000AF4(__str, v7);
      if (sub_100005D08(*a3, v8))
      {
        fwrite("new value? ", 0xBuLL, 1uLL, __stdoutp);
        fflush(__stdoutp);
        fgets(__str, 32, __stdinp);
        v9 = sub_100000AF4(__str, 16);
        if ((sub_100005998(*a3, v8, v9) & 1) == 0)
        {
          fprintf(__stderrp, "Failed to write register to %x\n", v8);
        }
      }
    }

    v3 = v11;
  }

  else
  {
    fwrite("Critical error!!! No device has been selected!!!\n", 0x31uLL, 1uLL, __stderrp);
  }

  return v3 != 0;
}

BOOL sub_10000393C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  if (a3)
  {
    v6 = sub_1000012AC();
    sub_100003E50(&v30);
    sub_1000040F4(&__p, v6, 61);
    if ((v29 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v8 = v29;
    }

    else
    {
      v8 = v28;
    }

    v9 = sub_100000CF4(&v32, p_p, v8);
    sub_100000CF4(v9, "\n", 1);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    v10 = sub_100000CF4(&v32, "NAME : [", 8);
    sub_100005748(*a1, &__p);
    if ((v29 & 0x80u) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v12 = v29;
    }

    else
    {
      v12 = v28;
    }

    v13 = sub_100000CF4(v10, v11, v12);
    sub_100000CF4(v13, "]\n", 2);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    sub_1000040F4(&__p, v6, 61);
    if ((v29 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v15 = v29;
    }

    else
    {
      v15 = v28;
    }

    v16 = sub_100000CF4(&v32, v14, v15);
    sub_100000CF4(v16, "\n", 1);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if ((v39 & 0x10) != 0)
    {
      v19 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v19 = v35;
      }

      locale = v34[4].__locale_;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v17 = 0;
        v29 = 0;
LABEL_41:
        *(&__p + v17) = 0;
        sub_100001428(a2, &__p);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        v32 = v21;
        if (v37 < 0)
        {
          operator delete(v36);
        }

        std::locale::~locale(v34);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v4 = *a1;
        goto LABEL_46;
      }

      locale = v34[1].__locale_;
      v19 = v34[3].__locale_;
    }

    v17 = v19 - locale;
    if ((v19 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100000B74();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v29 = v19 - locale;
    if (v17)
    {
      memmove(&__p, locale, v17);
    }

    goto LABEL_41;
  }

LABEL_46:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_10000683C(v4);
  v18 = sub_1000065D8(*a1, &v30, 1);
  if (v18)
  {
    memset(v26, 0, sizeof(v26));
    sub_1000044AC(v26, v30, v31, (v31 - v30) >> 5);
    v22 = sub_100005D44(*a1);
    sub_100001468(a2, v26, 1, v22);
    __p = v26;
    sub_1000047F4(&__p);
  }

  if (sub_1000065D8(*a1, &v30, 3))
  {
    memset(v25, 0, sizeof(v25));
    sub_1000044AC(v25, v30, v31, (v31 - v30) >> 5);
    v23 = sub_100005D44(*a1);
    sub_100001468(a2, v25, 4, v23);
    __p = v25;
    sub_1000047F4(&__p);
  }

  else
  {
    v18 = 0;
  }

  sub_1000068B0(*a1);
  __p = &v30;
  sub_1000047F4(&__p);
  return v18;
}

void sub_100003DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100003E50(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100004898((a1 + 3), 24);
  return a1;
}

void sub_1000040CC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_1000040F4(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100000B74();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t *sub_1000041A4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t sub_100004230(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100004280(a1, *(a1 + 8));
  return a1;
}

void sub_100004280(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100004280(a1, *a2);
    sub_100004280(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *sub_1000042E4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100002700(result, a2);
  }

  return result;
}

void sub_100004340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000435C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1000044AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100004534(result, a4);
  }

  return result;
}

void sub_100004514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000047F4(&a9);
  _Unwind_Resume(a1);
}

void sub_100004534(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100004570(a1, a2);
  }

  sub_100002574();
}

void sub_100004570(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100000C1C();
}

uint64_t sub_1000045B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100004674(v4 + 8, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 2);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100004774(v8);
  return v4;
}

uint64_t sub_100004674(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000046F0(result, a4);
  }

  return result;
}

void sub_1000046D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000046F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10000472C(a1, a2);
  }

  sub_100002574();
}

void sub_10000472C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100000C1C();
}

uint64_t sub_100004774(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000047AC(a1);
  }

  return a1;
}

void sub_1000047AC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

void sub_1000047F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100004848(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100004848(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_100004898(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100004954(a1);
  return a1;
}

void sub_10000492C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100004954(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void **sub_100004A5C(void **a1)
{
  v3 = a1;
  sub_10000722C(&v3);
  return a1;
}

void sub_100004A94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  *a2 = 0;
  if (!v3)
  {
    return;
  }

  sub_100000A3C(__p, "IONameMatch");
  v5 = sub_100004CA8(a1, __p);
  v6 = v5;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      return;
    }

    v8 = *a1 + v7;
  }

  else
  {
    if (!*(a1 + 23))
    {
      return;
    }

    v8 = a1 + v7;
  }

  if (*(v8 - 1) == 69)
  {
    std::string::basic_string(&v12, a1, 0, v7 - 1, &v15);
    sub_100000A3C(v10, "IONameMatch");
    v9 = sub_100004CA8(&v12, v10);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
LABEL_6:
      operator new();
    }
  }
}

void sub_100004C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  *v26 = 0;
  _Unwind_Resume(exception_object);
}

CFMutableDictionaryRef sub_100004CA8(uint64_t a1, const char *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v8 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    CFDictionarySetValue(v5, v8, v7);
    v13 = sub_100004FE4(v5, 0);
    v11 = v13;
    if (!v13)
    {
      v11 = sub_100004FE4(v5, "IOService");
    }

LABEL_20:
    CFRelease(v7);
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
  if (v7)
  {
    goto LABEL_20;
  }

  if (v8)
  {
LABEL_14:
    CFRelease(v9);
  }

LABEL_15:
  CFRelease(v5);
  return v11;
}

uint64_t sub_100004DC0(uint64_t a1, char a2)
{
  *(a1 + 12) = a2;
  CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 8), @"CodecRegisterStartIndex", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    valuePtr = 0;
    if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
    {
      *(a1 + 16) = valuePtr;
    }

    CFRelease(v4);
  }

  if (*(a1 + 12) == 1)
  {
    v5 = IORegistryEntryCreateCFProperty(*(a1 + 8), @"CodecExtendedRegisterStartIndex", kCFAllocatorDefault, 0);
    if (v5)
    {
      v6 = v5;
      v8 = 0;
      if (CFNumberGetValue(v5, kCFNumberSInt32Type, &v8))
      {
        *(a1 + 16) = v8;
      }

      CFRelease(v6);
    }
  }

  return 1;
}

void sub_100004E98(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  *a2 = 0;
  if (v3)
  {
    sub_100000A3C(__p, "CodecUID");
    v5 = sub_100004CA8(a1, __p);
    v6 = v5;
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (!v6)
      {
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    operator new();
  }
}

void sub_100004F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = 0;
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef sub_100004FE4(const __CFDictionary *a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "AppleEmbeddedAudio";
  }

  result = IOServiceMatching(v3);
  if (result)
  {
    v5 = result;
    if (a1)
    {
      Count = CFDictionaryGetCount(a1);
      keys = 0;
      v12 = 0;
      v13 = 0;
      values = 0;
      v9 = 0;
      v10 = 0;
      sub_10000510C(&keys, Count);
      sub_10000510C(&values, Count);
      CFDictionaryGetKeysAndValues(a1, keys, values);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          CFDictionarySetValue(v5, keys[i], values[i]);
        }
      }

      if (values)
      {
        v9 = values;
        operator delete(values);
      }

      if (keys)
      {
        v12 = keys;
        operator delete(keys);
      }
    }

    return IOServiceGetMatchingService(kIOMainPortDefault, v5);
  }

  return result;
}

void sub_1000050DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000510C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100007280(result, a2);
    }

    sub_100002574();
  }

  return result;
}

uint64_t *sub_1000051AC()
{
  *existing = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 1065353216;
  sub_1000055AC(&qword_100010000);
  v0 = IOServiceMatching("AppleEmbeddedAudio");
  if (!IOServiceGetMatchingServices(kIOMainPortDefault, v0, &existing[1]))
  {
    while (1)
    {
      existing[0] = IOIteratorNext(existing[1]);
      if (!existing[0])
      {
        break;
      }

      sub_1000078C0(&v6, existing);
    }
  }

  if (existing[1])
  {
    IOObjectRelease(existing[1]);
  }

  LODWORD(v5[0]) = 1;
  sub_100007D44(&v12, "AppleAudioHardwareInterface", v5);
  v10 = &v12;
  v11 = 1;
  v1 = sub_1000072C8(&v10);
  v5[1] = v1;
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  sub_100007E10(&v12, "IOPropertyMatch");
  if (v1)
  {
    CFRetain(v1);
  }

  v13 = v1;
  v10 = &v12;
  v11 = 1;
  v2 = sub_1000072C8(&v10);
  v5[0] = v2;
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v5[0] = 0;
  if (!IOServiceGetMatchingServices(kIOMainPortDefault, v2, &existing[1]))
  {
    while (1)
    {
      existing[0] = IOIteratorNext(existing[1]);
      if (!existing[0])
      {
        break;
      }

      sub_1000078C0(&v6, existing);
    }
  }

  if (v7)
  {
    v3 = *(v7 + 16);
    operator new();
  }

  if (existing[1])
  {
    IOObjectRelease(existing[1]);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  sub_100007874(&v6);
  return &qword_100010000;
}

void sub_1000054F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_100000B60(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000055AC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_100005618(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

const void **sub_10000565C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100005690(uint64_t a1)
{
  *a1 = off_10000C3D0;
  sub_100007F0C(a1 + 24, *(a1 + 32));
  return a1;
}

void sub_1000056DC(uint64_t a1)
{
  *a1 = off_10000C3D0;
  sub_100007F0C(a1 + 24, *(a1 + 32));

  operator delete();
}

_BYTE *sub_100005748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  if (IORegistryEntryGetName(*(a1 + 8), v5))
  {
    v3 = &unk_100009627;
  }

  else
  {
    v3 = v5;
  }

  return sub_100000A3C(a2, v3);
}

_BYTE *sub_1000057D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  parent = 0;
  if (IORegistryEntryGetParentEntry(*(a1 + 8), "IOService", &parent) || (memset(name, 0, 128), IORegistryEntryGetName(parent, name)))
  {
    v3 = &unk_100009627;
  }

  else
  {
    v3 = name;
  }

  return sub_100000A3C(a2, v3);
}

uint64_t sub_100005884(uint64_t a1, int a2, int a3, int a4)
{
  v10 = 0;
  result = sub_10000590C(a1, a2, &v10);
  if (result)
  {
    v9 = v10 & ~a3 | a4 & a3;

    return sub_100005998(a1, a2, v9);
  }

  return result;
}

uint64_t sub_10000590C(uint64_t a1, int a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = sub_1000063F4(a1, a2, 1u, &v8);
  v5 = v8;
  if (v9 == v8)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if (v6 == 1)
  {
    *a3 = v8[1];
LABEL_7:
    v9 = v5;
    operator delete(v5);
    return v4;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  return v4;
}

void sub_10000597C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100005998(uint64_t a1, int a2, int a3)
{
  v15 = a3;
  valuePtr = a2;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 3, &kCFTypeArrayCallBacks);
  cf = Mutable;
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(v5, v6);
    CFRelease(v7);
  }

  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v15);
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(v5, v8);
    CFRelease(v9);
  }

  v10 = CFArrayCreate(kCFAllocatorDefault, &cf, 1, &kCFTypeArrayCallBacks);
  if (v10)
  {
    v11 = v10;
    v12 = sub_100005DD8(a1, @"CodecRegisterData", v10);
    CFRelease(v11);
  }

  else
  {
    v12 = 0;
  }

  CFRelease(cf);
  return v12;
}

uint64_t sub_100005AAC(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 40))
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_100005B68(a1, &__p, 0);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v4 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 28);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 28) <= a2)
  {
    return *(v7 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_100005B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100005B68(uint64_t a1, uint64_t a2, int a3)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = sub_1000065D8(a1, &v25, a3);
  if (v22)
  {
    v4 = v25;
    for (i = v26; v4 != i; v4 += 32)
    {
      v5 = *v4;
      v6 = sub_100005D44(a1);
      v8 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (v8 != v7)
      {
        v9 = v6;
        v10 = *(a2 + 8);
        do
        {
          v11 = v5 | (*v8 << 32);
          v12 = *(a2 + 16);
          if (v10 >= v12)
          {
            v13 = (v10 - *a2) >> 3;
            if ((v13 + 1) >> 61)
            {
              sub_100002574();
            }

            v14 = v12 - *a2;
            v15 = v14 >> 2;
            if (v14 >> 2 <= (v13 + 1))
            {
              v15 = v13 + 1;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              sub_10000258C(a2, v16);
            }

            v17 = (8 * v13);
            *v17 = v11;
            v10 = (8 * v13 + 8);
            v18 = *(a2 + 8) - *a2;
            v19 = v17 - v18;
            memcpy(v17 - v18, *a2, v18);
            v20 = *a2;
            *a2 = v19;
            *(a2 + 8) = v10;
            *(a2 + 16) = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v10++ = v11;
          }

          *(a2 + 8) = v10;
          ++v8;
          v5 += v9;
        }

        while (v8 != v7);
      }
    }
  }

  v28 = &v25;
  sub_1000047F4(&v28);
  return v22;
}

void sub_100005CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_1000047F4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100005D08(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  LODWORD(result) = sub_10000590C(a1, a2, &v5);
  if (v3 <= a2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005D44(uint64_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 8), @"CodecRegisterAddressIncrement", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 1;
  }

  v2 = CFProperty;
  v3 = CFGetTypeID(CFProperty);
  if (v3 != CFNumberGetTypeID())
  {
    return 1;
  }

  valuePtr = 0;
  CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = valuePtr;
  }

  CFRelease(v2);
  return v4;
}

uint64_t sub_100005DD8(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (IORegistryEntrySetCFProperty(*(a1 + 8), a2, a3))
  {
    memset(name, 0, 128);
    if (IORegistryEntryGetName(*(a1 + 8), name))
    {
      v5 = &unk_100009627;
    }

    else
    {
      v5 = name;
    }

    sub_100000A3C(&__p, v5);
    sub_100007060(a2, name);
  }

  return 1;
}

void sub_100005F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100005F3C(uint64_t a1, int a2, uint64_t *a3)
{
  valuePtr = a2;
  v13 = *a3;
  v14 = *(a3 + 2);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 4, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  p_valuePtr = &valuePtr;
  v7 = 16;
  do
  {
    v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, p_valuePtr);
    if (v8)
    {
      v9 = v8;
      CFArrayAppendValue(v5, v8);
      CFRelease(v9);
    }

    ++p_valuePtr;
    v7 -= 4;
  }

  while (v7);
  v10 = sub_100005DD8(a1, @"CodecRegisterPatch", v5);
  CFRelease(v5);
  return v10;
}

const __CFString *sub_100006048(uint64_t a1, const void **a2)
{
  result = CFStringCreateWithCString(kCFAllocatorDefault, "CodecRegisterPatch", 0);
  if (result)
  {
    v5 = result;
    cf = 0;
    v31 = sub_100006278(a1, result, &cf);
    if (v31)
    {
      v6 = cf;
      v7 = CFGetTypeID(cf);
      if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v6) >= 1)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
          valuePtr = 0;
          v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
          v12 = valuePtr;
          valuePtr = 0;
          v13 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          v14 = valuePtr;
          valuePtr = 0;
          v15 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
          CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr);
          v16 = valuePtr;
          valuePtr = 0;
          v17 = CFArrayGetValueAtIndex(ValueAtIndex, 3);
          CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
          v18 = valuePtr;
          v19 = a2[1];
          v20 = a2[2];
          if (v19 >= v20)
          {
            v22 = *a2;
            v23 = v19 - *a2;
            v24 = v23 >> 4;
            v25 = (v23 >> 4) + 1;
            if (v25 >> 60)
            {
              sub_100002574();
            }

            v26 = v20 - v22;
            if (v26 >> 3 > v25)
            {
              v25 = v26 >> 3;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF0)
            {
              v25 = 0xFFFFFFFFFFFFFFFLL;
            }

            if (v25)
            {
              sub_1000076D8(a2, v25);
            }

            v27 = (16 * v24);
            *v27 = v12;
            v27[1] = v14;
            v27[2] = v16;
            v27[3] = v18;
            v21 = 16 * v24 + 16;
            v28 = &v27[-4 * (v23 >> 4)];
            memcpy(v28, v22, v23);
            v29 = *a2;
            *a2 = v28;
            a2[1] = v21;
            a2[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v19 = v12;
            *(v19 + 1) = v14;
            v21 = (v19 + 16);
            *(v19 + 2) = v16;
            *(v19 + 3) = v18;
          }

          a2[1] = v21;
          v8 = v9;
        }

        while (CFArrayGetCount(v6) > v9++);
      }
    }

    CFRelease(v5);
    return v31;
  }

  return result;
}

BOOL sub_100006278(uint64_t a1, const __CFString *a2, void *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 8), a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    memset(name, 0, 128);
    if (IORegistryEntryGetName(*(a1 + 8), name))
    {
      v7 = &unk_100009627;
    }

    else
    {
      v7 = name;
    }

    sub_100000A3C(&__p, v7);
    sub_100007060(a2, name);
  }

  *a3 = CFProperty;
  return CFProperty != 0;
}

void sub_1000063B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000063F4(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    v11 = 1;
    return v11 & 1;
  }

  v7 = a1;
  *(a4 + 8) = *a4;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v8 = sub_100005B68(a1, &__p, 0);
  v9 = __p;
  if (!v8 || (v10 = v27, __p == v27))
  {
    v11 = 0;
    if (!__p)
    {
      return v11 & 1;
    }

LABEL_30:
    v27 = v9;
    operator delete(v9);
    return v11 & 1;
  }

  v11 = 0;
  v12 = __p + 8;
  v25 = v7;
  do
  {
    v11 |= *(v12 - 2) == a2;
    if (v11)
    {
      if (a2 + sub_100005D44(v7) * a3 <= *(v12 - 2))
      {
        break;
      }

      v14 = *(a4 + 8);
      v13 = *(a4 + 16);
      if (v14 >= v13)
      {
        v16 = (v14 - *a4) >> 3;
        if ((v16 + 1) >> 61)
        {
          sub_100002574();
        }

        v17 = v13 - *a4;
        v18 = v17 >> 2;
        if (v17 >> 2 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          sub_10000258C(a4, v19);
        }

        *(8 * v16) = *(v12 - 1);
        v15 = 8 * v16 + 8;
        v20 = *(a4 + 8) - *a4;
        v21 = (8 * v16 - v20);
        memcpy(v21, *a4, v20);
        v22 = *a4;
        *a4 = v21;
        *(a4 + 8) = v15;
        *(a4 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }

        v7 = v25;
      }

      else
      {
        *v14 = *(v12 - 1);
        v15 = (v14 + 1);
      }

      *(a4 + 8) = v15;
    }

    else
    {
      v15 = *(a4 + 8);
    }

    v23 = a3 <= ((v15 - *a4) >> 3) || v12 == v10;
    v12 += 8;
  }

  while (!v23);
  v9 = __p;
  if (__p)
  {
    goto LABEL_30;
  }

  return v11 & 1;
}

void sub_1000065B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000065D8(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = sub_10000683C(a1);
  if (v6)
  {
    v7 = *(a1 + 48);
    v27 = *(a1 + 40);
    v8 = *(a1 + 12);
    v9 = CFGetTypeID(v7);
    if (v9 == CFArrayGetTypeID())
    {
      sub_100004848(a2);
      Count = CFArrayGetCount(v7);
      sub_1000068F8(a2, Count / 2);
      if (CFArrayGetCount(v7) >= 2)
      {
        v11 = 0;
        v12 = 1;
        v13 = 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v12 - 1);
          valuePtr = 0;
          if (ValueAtIndex && CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            v15 = valuePtr;
            v8 |= valuePtr < v11;
            v16 = CFArrayGetValueAtIndex(v7, v12);
            if (v8)
            {
              if (a3 != 1)
              {
                v20 = 4;
                goto LABEL_17;
              }

              v8 = 1;
            }

            else
            {
              if (a3 != 3)
              {
                v20 = 1;
LABEL_17:
                if (!sub_100006994(a1, a2, v16, valuePtr, v20, v17, v27 == 0))
                {
                  fprintf(__stderrp, "Error encountered while reading register data for register address %x\n", valuePtr);
                }

                goto LABEL_11;
              }

              v8 = 0;
            }
          }

          else
          {
            v15 = v11;
          }

LABEL_11:
          v18 = v13++;
          v12 += 2;
          v19 = v18 < CFArrayGetCount(v7) / 2;
          v11 = v15;
          if (!v19)
          {
            goto LABEL_27;
          }
        }
      }

      goto LABEL_27;
    }

    v21 = CFGetTypeID(v7);
    if (v21 != CFDataGetTypeID())
    {
LABEL_27:
      sub_1000068B0(a1);
      return v6;
    }

    sub_100004848(a2);
    v22 = *(a1 + 16);
    if (v8)
    {
      if (a3 != 1)
      {
        Length = CFDataGetLength(v7) / 4;
        v24 = 4;
        goto LABEL_25;
      }
    }

    else if (a3 != 3)
    {
      Length = CFDataGetLength(v7);
      v24 = 2;
LABEL_25:
      sub_1000068F8(a2, Length);
      if (!sub_100006994(a1, a2, v7, v22, v24, v25, v27 == 0))
      {
        fprintf(__stderrp, "Error encountered while reading register data for register address %x\n", v22);
      }

      goto LABEL_27;
    }
  }

  return v6;
}

BOOL sub_10000683C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(v2);
    return 1;
  }

  else
  {
    if (*(a1 + 12))
    {
      v4 = @"CodecExtendedRegisterData";
    }

    else
    {
      v4 = @"CodecRegisterData";
    }

    CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 8), v4, kCFAllocatorDefault, 0);
    *(a1 + 48) = CFProperty;
    return CFProperty != 0;
  }
}

uint64_t sub_1000068B0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    if (CFGetRetainCount(*(a1 + 48)) == 1)
    {
      *(a1 + 48) = 0;
    }

    CFRelease(v1);
  }

  return 1;
}

void *sub_1000068F8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100004570(result, a2);
    }

    sub_100002574();
  }

  return result;
}

BOOL sub_100006994(uint64_t a1, uint64_t a2, CFDataRef theData, unsigned int a4, int a5, uint64_t a6, int a7)
{
  if (!theData)
  {
    return theData != 0;
  }

  switch(a5)
  {
    case 1:
      Length = CFDataGetLength(theData);
      BytePtr = CFDataGetBytePtr(theData);
      if (!BytePtr)
      {
        return theData != 0;
      }

      v34 = BytePtr;
      v39 = a2;
      __src = 0;
      v46 = 0;
      v47 = 0;
      sub_100006DB0(&__src, Length);
      if (Length >= 1)
      {
        v35 = a4;
        do
        {
          v36 = *v34++;
          LODWORD(v40) = v36;
          sub_100006F80(&__src, &v40);
          if (a7)
          {
            v44 = v35;
            v40 = &v44;
            *(sub_100007F60(a1 + 24, &v44) + 8) = 1;
          }

          ++v35;
          --Length;
        }

        while (Length);
      }

      break;
    case 2:
      v26 = CFDataGetLength(theData);
      v27 = CFDataGetBytePtr(theData);
      if (!v27)
      {
        return theData != 0;
      }

      v28 = v27;
      v39 = a2;
      v29 = v26 >> 1;
      __src = 0;
      v46 = 0;
      v47 = 0;
      sub_100006DB0(&__src, v26 >> 1);
      if (v26 >= 2)
      {
        v30 = a4;
        do
        {
          v31 = *v28;
          v28 += 2;
          LODWORD(v40) = v31;
          sub_100006F80(&__src, &v40);
          if (a7)
          {
            v44 = v30;
            v40 = &v44;
            *(sub_100007F60(a1 + 24, &v44) + 8) = 2;
          }

          ++v30;
          --v29;
        }

        while (v29);
      }

      break;
    case 4:
      v12 = CFDataGetLength(theData);
      v13 = CFDataGetBytePtr(theData);
      if (!v13)
      {
        return theData != 0;
      }

      v14 = v13;
      v38 = a2;
      __src = 0;
      v46 = 0;
      v47 = 0;
      sub_100006DB0(&__src, v12 >> 2);
      if (v12 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v46;
          if (v46 >= v47)
          {
            v18 = __src;
            v19 = v46 - __src;
            v20 = (v46 - __src) >> 2;
            v21 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              sub_100002574();
            }

            v22 = v47 - __src;
            if ((v47 - __src) >> 1 > v21)
            {
              v21 = v22 >> 1;
            }

            v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
            v24 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v23)
            {
              v24 = v21;
            }

            if (v24)
            {
              sub_10000472C(&__src, v24);
            }

            *(4 * v20) = *&v14[4 * v15];
            v17 = (4 * v20 + 4);
            memcpy(0, v18, v19);
            v25 = __src;
            __src = 0;
            v46 = v17;
            v47 = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v46 = *&v14[4 * v15];
            v17 = v16 + 1;
          }

          v46 = v17;
          if (a7)
          {
            v44 = a4 + sub_100005D44(a1) * v15;
            v40 = &v44;
            *(sub_100007F60(a1 + 24, &v44) + 8) = 4;
          }

          ++v15;
        }

        while (v12 >> 2 != v15);
      }

      LODWORD(v40) = a4;
      v42 = 0;
      v43 = 0;
      __p = 0;
      sub_100004674(&__p, __src, v46, (v46 - __src) >> 2);
      sub_100006E50(v38, &v40);
      goto LABEL_37;
    default:
      return theData != 0;
  }

  LODWORD(v40) = a4;
  v42 = 0;
  v43 = 0;
  __p = 0;
  sub_100004674(&__p, __src, v46, (v46 - __src) >> 2);
  sub_100006E50(v39, &v40);
LABEL_37:
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v46 = __src;
    operator delete(__src);
  }

  return theData != 0;
}

void sub_100006D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100006DB0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_10000472C(result, a2);
    }

    sub_100002574();
  }

  return result;
}

uint64_t sub_100006E50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_100002574();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_100004570(result, v10);
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 8) = 0;
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = 32 * v7 + 32;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_100007720(v16);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = v4 + 32;
  }

  v3[1] = v6;
  return result;
}

void sub_100006F80(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_100002574();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10000472C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_100007060(const __CFString *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_100007114(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100007130(uint64_t a1, void *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, "Ping", 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v8 = 0;
  v6 = sub_100006278(a1, v4, &v8);
  *a2 = v8;
  CFRelease(v5);
  return v6;
}

const __CFString *sub_1000071BC(uint64_t a1, const void *a2)
{
  result = CFStringCreateWithCString(kCFAllocatorDefault, "HPDetect", 0);
  if (result)
  {
    v5 = result;
    v6 = sub_100005DD8(a1, result, a2);
    CFRelease(v5);
    return v6;
  }

  return result;
}

void sub_10000722C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000055AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100007280(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100000C1C();
}

CFDictionaryRef sub_1000072C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_10000510C(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  sub_10000510C(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_100002574();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_100007280(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          sub_100002574();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_100007280(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_100007524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

const void **sub_10000757C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000075B0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000075E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100000C1C();
}

uint64_t sub_10000762C(uint64_t a1)
{
  sub_100007664(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100007664(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1000076D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100000C1C();
}

uint64_t sub_100007720(uint64_t a1)
{
  sub_100007758(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100007758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

std::string *sub_1000077B8(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

uint64_t sub_100007874(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1000078C0(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100007AF0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100007BE0(a1, prime);
    }
  }
}

void sub_100007BE0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100000C1C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_100007D44(uint64_t a1, char *a2, int *a3)
{
  sub_100007E10(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_100007DDC(_Unwind_Exception *a1)
{
  sub_1000075B0(v1 + 1);
  sub_10000757C(v1);
  _Unwind_Resume(a1);
}

CFStringRef *sub_100007E10(CFStringRef *a1, char *a2)
{
  sub_100000A3C(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_100007ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000075B0(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100007F0C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100007F0C(a1, *a2);
    sub_100007F0C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_100007F60(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}