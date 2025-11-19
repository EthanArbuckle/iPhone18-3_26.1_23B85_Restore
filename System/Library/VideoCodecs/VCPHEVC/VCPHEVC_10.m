uint64_t sub_277440104(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    v6 = sub_277440168(*(result + 16), **(result + 24));
    return fprintf(a2, "-%s %s\n", a4, v6);
  }

  return result;
}

uint64_t sub_277440168(uint64_t a1, int a2)
{
  if (*a1)
  {
    while (*(a1 + 16) != a2)
    {
      v2 = *(a1 + 24);
      a1 += 24;
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    return *(a1 + 8);
  }

  else
  {
LABEL_4:
    if (dword_280B9A880 >= 3)
    {
      fwrite("enum_val not found\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "enum_val not found\n");
    }

    return 0;
  }
}

void sub_2774401EC(uint64_t a1)
{
  *a1 = &unk_288662D30;
  free(**(a1 + 16));
  **(a1 + 16) = 0;

  JUMPOUT(0x277CAD370);
}

uint64_t sub_277440260(uint64_t a1)
{
  *a1 = &unk_288662D30;
  free(**(a1 + 16));
  **(a1 + 16) = 0;
  return a1;
}

uint64_t sub_2774402B4(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (*(a1 + 8) == a3 && (free(**(a1 + 16)), **(a1 + 16) = 0, a2) && (**(a1 + 16) = strdup(a2)) == 0)
  {
    return 4294954392;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27744032C(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (**(result + 16))
  {
    v5 = result;
    v6 = dword_280B9A880;
    if (a3 && dword_280B9A880 >= 6)
    {
      result = fprintf(a2, "-%s ", a4);
      v6 = dword_280B9A880;
    }

    if (v6 >= 6)
    {
      return fprintf(a2, "%s\n", **(v5 + 16));
    }
  }

  return result;
}

uint64_t sub_2774403BC(uint64_t a1, char *__s1, int a3, _BYTE *a4)
{
  *a4 = 0;
  if (!__s1)
  {
    v9 = 1;
    goto LABEL_14;
  }

  v8 = *__s1;
  if (v8 != 48)
  {
    if (!strcmp(__s1, "false"))
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (v8 == 49 && !__s1[1])
    {
      v9 = 1;
      goto LABEL_13;
    }

LABEL_10:
    v10 = strcmp(__s1, "true");
    v9 = 1;
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = __s1[1];
  if (v9)
  {
    if (!strcmp(__s1, "false"))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_13:
  *a4 = 1;
LABEL_14:
  if (*(a1 + 8) == a3)
  {
    **(a1 + 16) = v9;
  }

  return 0;
}

uint64_t sub_2774404A0(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_288662B90;
  *(a1 + 8) = a1 + 16;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  sub_277440584(a1, 0xAAB8A388324B35B9, "loglevel", &dword_280B9A880, qword_27A7166F0, 0x9F7452DD75D54D31);
  sub_2774406FC(a1, 0x78039475C6A50527uLL, "config", sub_277440A44, 0, 1);
  return a1;
}

void sub_277440584(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4, void *a5, uint64_t a6)
{
  v7 = a5;
  v19[0] = a2;
  v19[1] = a3;
  v11 = *a5;
  if (!*a5)
  {
LABEL_7:
    v16 = operator new(0x20uLL, MEMORY[0x277D826F0]);
    if (!v16)
    {
      return;
    }

    v16[2] = 0;
    *v16 = &unk_288662AE0;
    *(v16 + 2) = v7;
    *(v16 + 3) = a4;
    if (v11)
    {
      while (v11 != a6)
      {
        v17 = v7[3];
        v7 += 3;
        v11 = v17;
        if (!v17)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if (a6)
      {
LABEL_13:
        v19[2] = v19;
        sub_2774407C4(a1 + 8, a2)[6] = v16;
        return;
      }
    }

    *a4 = *(v7 + 4);
    goto LABEL_13;
  }

  v12 = 0;
  v13 = *a5;
  while (1)
  {
    v14 = v12;
    v15 = a5;
    if (v12)
    {
      break;
    }

LABEL_6:
    ++v12;
    v13 = a5[3 * v12];
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  while (v13 != *v15)
  {
    v15 += 3;
    if (!--v14)
    {
      goto LABEL_6;
    }
  }

  if (dword_280B9A880 >= 3)
  {
    v18 = &a5[3 * v12];
    fprintf(*MEMORY[0x277D85DF8], "Hash of named enum '%s' and '%s' collide (%llx)! Change one of the names!\n", v18[1], v15[1], v13);
    syslog(27, "Hash of named enum '%s' and '%s' collide (%llx)! Change one of the names!\n", v18[1], v15[1], *v18);
  }
}

void *sub_2774406FC(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, int a6)
{
  v14[0] = a2;
  v14[1] = a3;
  a4();
  result = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v12 = result;
    *result = &unk_288662AB0;
    result[2] = a2;
    result[3] = a3;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    result[7] = a1;
    result[8] = a4;
    *(result + 2) = a6;
    v13 = *(a1 + 32);
    if (v13 <= a6)
    {
      v13 = a6;
    }

    *(a1 + 32) = v13;
    v14[2] = v14;
    result = sub_2774407C4(a1 + 8, a2);
    result[6] = v12;
  }

  return result;
}

void *sub_2774407C4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_2774408A8(uint64_t *result, uint64_t *a2)
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

uint64_t sub_277440A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v23[19] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (*(a1 + 36) == 1)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Config file within a config file not supported!\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Config file within a config file not supported!\n");
      }

      return 4294954394;
    }

    else
    {
      *(a1 + 36) = 1;
      sub_2773FCAFC(v21);
      if (v22[15])
      {
        sub_2773CC400(v16);
        std::ostream::operator<<();
        std::stringbuf::str();
        v6 = 0xCBF29CE484222325;
        v7 = *v4;
        if (*v4)
        {
          v8 = (v4 + 1);
          do
          {
            v6 = 0x100000001B3 * (v6 ^ v7);
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }

        if (v6 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v6;
        }

        if (v15 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v4 = sub_277440E48(a1, v10, v4, p_p);
        if (v15 < 0)
        {
          operator delete(__p);
        }

        v16[0] = *MEMORY[0x277D82818];
        v12 = *(MEMORY[0x277D82818] + 72);
        *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
        v16[2] = v12;
        v17 = MEMORY[0x277D82878] + 16;
        if (v19 < 0)
        {
          operator delete(v18[7].__locale_);
        }

        v17 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v18);
        std::iostream::~basic_iostream();
        MEMORY[0x277CAD300](&v20);
      }

      else
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "Unable to open config file '%s'\n", v4);
          syslog(27, "Unable to open config file '%s'\n", v4);
        }

        v4 = 4294954394;
      }

      v21[0] = *MEMORY[0x277D82808];
      *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x277CAD180](v22);
      std::istream::~istream();
      MEMORY[0x277CAD300](v23);
    }
  }

  return v4;
}

void sub_277440DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_2773FCCB4(&a51);
  MEMORY[0x277CAD300](&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

uint64_t sub_277440E48(uint64_t a1, int a2, const char *a3, char *__s1)
{
  v88 = *MEMORY[0x277D85DE8];
  if (!__s1)
  {
    return 0;
  }

  v5 = strdup(__s1);
  if (!v5)
  {
    return 4294954392;
  }

  v6 = v5;
  v7 = 0;
  __stringp = v5;
  v52 = 0;
  v49 = v5;
  v47 = a3;
  while (1)
  {
    v8 = strsep(&__stringp, "\r\n");
    v52 = v8;
    if (!v8)
    {
      v45 = 0;
      goto LABEL_83;
    }

    while (1)
    {
      v9 = *v8;
      if (v9 != 32 && v9 != 9)
      {
        break;
      }

      v52 = ++v8;
    }

    sub_2774413C0(v8);
    v11 = v52;
    v12 = *v52;
    if (!*v52 || v12 == 35)
    {
      goto LABEL_76;
    }

    if (v12 == 45)
    {
      break;
    }

    __dst[0] = 0;
    v35 = strsep(&v52, ":");
    v36 = v35;
    if (!v35)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s:%d: Parse error (expected <option> : <argument>)\n", a3, v7);
        syslog(27, "%s:%d: Parse error (expected <option> : <argument>)\n", a3, v7);
      }

      goto LABEL_89;
    }

    sub_2774413C0(v35);
    for (i = v52; ; v52 = i)
    {
      v38 = *i;
      if (v38 != 32 && v38 != 9)
      {
        break;
      }

      ++i;
    }

    v40 = *v36;
    v41 = 0xCBF29CE484222325;
    if (*v36)
    {
      v42 = (v36 + 1);
      do
      {
        v41 = 0x100000001B3 * (v41 ^ v40);
        v43 = *v42++;
        v40 = v43;
      }

      while (v43);
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v41;
    }

    v45 = sub_27744140C(a1, v44, v36, i, 0xFFFFFFFFLL, __dst);
    if (v45)
    {
      goto LABEL_83;
    }

LABEL_76:
    ++v7;
  }

  v48 = v7;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v13 = 1;
  v54 = a3;
  do
  {
    while (1)
    {
      v14 = *v11++;
      if (v14 != 32 && v14 != 9)
      {
        break;
      }

      v52 = v11;
    }

    (&v54)[v13] = strsep(&v52, " \t");
    v16 = v13 + 1;
    v11 = v52;
    if (v13 > 0x7E)
    {
      break;
    }

    ++v13;
  }

  while (v52);
  if (v52)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s:%d: Too many options (max %d)\n", a3, v48, 128);
      syslog(27, "%s:%d: Too many options (max %d)\n", a3, v48, 128);
    }

LABEL_89:
    v45 = 4294954394;
    goto LABEL_83;
  }

  v17 = *(a1 + 32);
  if ((v17 & 0x80000000) != 0)
  {
LABEL_60:
    v7 = v48;
    v6 = v49;
    a3 = v47;
    goto LABEL_76;
  }

LABEL_25:
  v18 = 1;
  while (1)
  {
    v53 = 0;
    v19 = (&v54)[v18];
    v20 = strlen(v19);
    if (v20)
    {
      break;
    }

LABEL_57:
    if (++v18 >= v16)
    {
      v34 = __OFSUB__(v17, 1);
      v17 = (v17 - 1);
      if (v17 < 0 != v34)
      {
        goto LABEL_60;
      }

      goto LABEL_25;
    }
  }

  if (*v19 != 45)
  {
    v45 = sub_27744140C(a1, 0, 0, v19, v17, &v53);
    if (v45)
    {
      goto LABEL_82;
    }

    goto LABEL_57;
  }

  v21 = &v19[v20];
  v22 = v20 - 1;
  do
  {
    if (!v22)
    {
      v27 = strchr(v21, 61);
      if (!v27)
      {
        goto LABEL_57;
      }

      v26 = v27;
      v19 = v21;
LABEL_37:
      if ((v26 - v19) >= 0x3FF)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "'%s' option too long!\n", v19);
          syslog(27, "'%s' option too long!\n", v19);
        }

        goto LABEL_57;
      }

      memcpy(__dst, v19, v26 - v19);
      __dst[v26 - v19] = 0;
      LOBYTE(v23) = __dst[0];
      if (!__dst[0])
      {
        goto LABEL_57;
      }

      v28 = 0;
      v29 = v26 + 1;
      v19 = __dst;
      goto LABEL_46;
    }

    v24 = *++v19;
    v23 = v24;
    --v22;
  }

  while (v24 == 45);
  v25 = strchr(v19, 61);
  if (v25)
  {
    v26 = v25;
    goto LABEL_37;
  }

  if (v18 + 1 >= v16)
  {
    v29 = 0;
  }

  else
  {
    v29 = (&v54)[v18 + 1];
  }

  v28 = 1;
  v30 = 0xCBF29CE484222325;
  if (v23)
  {
LABEL_46:
    v31 = 1;
    v30 = 0xCBF29CE484222325;
    do
    {
      v30 = 0x100000001B3 * (v30 ^ v23);
      v23 = v19[v31++];
    }

    while (v23);
  }

  if (v30 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v30;
  }

  v45 = sub_27744140C(a1, v32, v19, v29, v17, &v53);
  if (!v45)
  {
    if (v28)
    {
      v33 = v53;
    }

    else
    {
      v33 = 0;
    }

    if ((v28 | v53))
    {
      v18 += v33;
      goto LABEL_57;
    }

    if (dword_280B9A880 >= 6)
    {
      fprintf(*MEMORY[0x277D85DF8], "Option '%s' is invalid!\n", (&v54)[v18]);
    }

    v45 = 4294954394;
  }

LABEL_82:
  v6 = v49;
LABEL_83:
  free(v6);
  return v45;
}

size_t sub_2774413C0(const char *a1)
{
  result = strlen(a1);
  for (i = &a1[result - 1]; i > a1; --i)
  {
    v4 = *i;
    if (v4 != 32 && v4 != 9)
    {
      break;
    }

    *i = 0;
  }

  return result;
}

uint64_t sub_27744140C(uint64_t a1, unint64_t a2, const char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v14 = 0;
  result = sub_277441518(a1, a2, a3, a4, a5, a6, &v14);
  if (!result)
  {
    if (v14)
    {
      return 0;
    }

    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unknown option '%s'\n", v6);
      syslog(27, "Unknown option '%s'\n", v6);
    }

    result = 4294954386;
    if (a2)
    {
      if (v6)
      {
        v9 = strlen(v6);
        if (!v9)
        {
          return 4294954386;
        }

        v10 = v9 - 1;
        do
        {
          v12 = *v6++;
          v11 = v12;
          if (v12 < 0)
          {
            break;
          }
        }

        while (v10--);
        result = 4294954386;
        if (v11 < 0 && dword_280B9A880 >= 3)
        {
          fwrite("Option name contains non-ASCII characters, this is wrong!\n", 0x3AuLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(27, "Option name contains non-ASCII characters, this is wrong!\n");
          return 4294954386;
        }
      }
    }
  }

  return result;
}

uint64_t sub_277441518(uint64_t a1, unint64_t a2, const char *a3, char *__s, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 0;
  if (!a2 && strlen(__s) >= 3 && ((*__s << 16) | (__s[1] << 8) | __s[2]) == 0xE28094)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Option '%s' starts with the wrong dash, please retype it\n", __s);
      syslog(27, "Option '%s' starts with the wrong dash, please retype it\n");
    }

    return 4294954394;
  }

  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = v15;
  do
  {
    v18 = *(v14 + 32);
    v19 = v18 >= a2;
    v20 = v18 < a2;
    if (v19)
    {
      v17 = v14;
    }

    v14 = *(v14 + 8 * v20);
  }

  while (v14);
  if (v17 == v15 || a2 < *(v17 + 32))
  {
    return 0;
  }

  v22 = *(v17 + 48);
  if (a5 == -1)
  {
    a5 = v22[2];
  }

  *a7 = 1;
  result = (*(*v22 + 8))(v22, __s, a5, a6);
  if (result == -12902 && dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Invalid parameter '%s' to '%s'\n", __s, a3);
    syslog(27, "Invalid parameter '%s' to '%s'\n");
    return 4294954394;
  }

  return result;
}

void sub_2774416C0(uint64_t a1, unint64_t a2, const char *a3, _DWORD *a4, int a5)
{
  v12[0] = a2;
  v12[1] = a3;
  *a4 = a5;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_6:
    v11 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v11)
    {
      v11[2] = 0;
      *v11 = &unk_288662C40;
      *(v11 + 2) = a4;
      v12[2] = v12;
      sub_2774407C4(a1 + 8, a2)[6] = v11;
    }

    return;
  }

  while (1)
  {
    v10 = v8[4];
    if (a2 >= v10)
    {
      break;
    }

LABEL_5:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (v10 < a2)
  {
    ++v8;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

uint64_t sub_2774417E0(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v6 = strtoll(a2, &__endptr, 10);
  if (*__error())
  {
    return 4294954394;
  }

  if (*__endptr || (v6 - 0x80000000) <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return 4294954394;
  }

  result = 0;
  **(a1 + 16) = v6;
  return result;
}

uint64_t sub_277441898(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %lld\n", a4, **(result + 16));
  }

  return result;
}

void sub_2774418E8(uint64_t a1, unint64_t a2, const char *a3, _WORD *a4, __int16 a5)
{
  v12[0] = a2;
  v12[1] = a3;
  *a4 = a5;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_6:
    v11 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v11)
    {
      v11[2] = 0;
      *v11 = &unk_288662BE0;
      *(v11 + 2) = a4;
      v12[2] = v12;
      sub_2774407C4(a1 + 8, a2)[6] = v11;
    }

    return;
  }

  while (1)
  {
    v10 = v8[4];
    if (a2 >= v10)
    {
      break;
    }

LABEL_5:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (v10 < a2)
  {
    ++v8;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

uint64_t sub_277441A08(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v6 = strtoll(a2, &__endptr, 10);
  if (*__error())
  {
    return 4294954394;
  }

  if (*__endptr || (v6 - 0x8000) <= 0xFFFFFFFFFFFEFFFFLL)
  {
    return 4294954394;
  }

  result = 0;
  **(a1 + 16) = v6;
  return result;
}

uint64_t sub_277441ABC(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %lld\n", a4, **(result + 16));
  }

  return result;
}

void sub_277441B0C(uint64_t a1, unint64_t a2, const char *a3, _BYTE *a4, char a5)
{
  v12[0] = a2;
  v12[1] = a3;
  *a4 = a5;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_6:
    v11 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v11)
    {
      v11[2] = 0;
      *v11 = &unk_288662D00;
      *(v11 + 2) = a4;
      v12[2] = v12;
      sub_2774407C4(a1 + 8, a2)[6] = v11;
    }

    return;
  }

  while (1)
  {
    v10 = v8[4];
    if (a2 >= v10)
    {
      break;
    }

LABEL_5:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (v10 < a2)
  {
    ++v8;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

uint64_t sub_277441C2C(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v6 = strtoll(a2, &__endptr, 10);
  if (*__error() || *__endptr || (v6 - 128) <= 0xFFFFFFFFFFFFFEFFLL)
  {
    return 4294954394;
  }

  result = 0;
  **(a1 + 16) = v6;
  return result;
}

uint64_t sub_277441CDC(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %lld\n", a4, **(result + 16));
  }

  return result;
}

void sub_277441D2C(uint64_t a1, unint64_t a2, const char *a3, _BYTE *a4, char a5)
{
  v12[0] = a2;
  v12[1] = a3;
  *a4 = a5;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_6:
    v11 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v11)
    {
      v11[2] = 0;
      *v11 = &unk_288662CD0;
      *(v11 + 2) = a4;
      v12[2] = v12;
      sub_2774407C4(a1 + 8, a2)[6] = v11;
    }

    return;
  }

  while (1)
  {
    v10 = v8[4];
    if (a2 >= v10)
    {
      break;
    }

LABEL_5:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (v10 < a2)
  {
    ++v8;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

uint64_t sub_277441E4C(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %lld\n", a4, **(result + 16));
  }

  return result;
}

void sub_277441E9C(uint64_t a1, unint64_t a2, const char *a3, void *a4)
{
  v11[0] = a2;
  v11[1] = a3;
  *a4 = 0;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_6:
    v10 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v10)
    {
      v10[2] = 0;
      *v10 = &unk_288662D30;
      *(v10 + 2) = a4;
      v11[2] = v11;
      sub_2774407C4(a1 + 8, a2)[6] = v10;
    }

    return;
  }

  while (1)
  {
    v9 = v7[4];
    if (a2 >= v9)
    {
      break;
    }

LABEL_5:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (v9 < a2)
  {
    ++v7;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

void sub_277441FA4(uint64_t a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v11[0] = a2;
  v11[1] = a3;
  *a4 = 0;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_6:
    v10 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v10)
    {
      v10[2] = 0;
      *v10 = &unk_288662C10;
      *(v10 + 2) = a4;
      v11[2] = v11;
      sub_2774407C4(a1 + 8, a2)[6] = v10;
    }

    return;
  }

  while (1)
  {
    v9 = v7[4];
    if (a2 >= v9)
    {
      break;
    }

LABEL_5:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (v9 < a2)
  {
    ++v7;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

uint64_t sub_2774420C4(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v6 = strtoll(a2, &__endptr, 10);
  if (*__error())
  {
    return 4294954394;
  }

  if (*__endptr || HIDWORD(v6) != 0)
  {
    return 4294954394;
  }

  result = 0;
  **(a1 + 16) = v6;
  return result;
}

uint64_t sub_277442174(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %lld\n", a4, **(result + 16));
  }

  return result;
}

uint64_t sub_2774421DC(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v6 = strtoll(a2, &__endptr, 10);
  if (*__error() || *__endptr || v6 >= 0x10000)
  {
    return 4294954394;
  }

  result = 0;
  **(a1 + 16) = v6;
  return result;
}

uint64_t sub_277442288(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %lld\n", a4, **(result + 16));
  }

  return result;
}

void sub_2774422D8(uint64_t a1, unint64_t a2, const char *a3, float *a4, float a5)
{
  v12[0] = a2;
  v12[1] = a3;
  *a4 = a5;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_6:
    v11 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v11)
    {
      v11[2] = 0;
      *v11 = &unk_288662C70;
      *(v11 + 2) = a4;
      v12[2] = v12;
      sub_2774407C4(a1 + 8, a2)[6] = v11;
    }

    return;
  }

  while (1)
  {
    v10 = v8[4];
    if (a2 >= v10)
    {
      break;
    }

LABEL_5:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (v10 < a2)
  {
    ++v8;
    goto LABEL_5;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", a3);
  }
}

uint64_t sub_2774423F8(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  v10 = 0;
  *__error() = 0;
  v6 = strtod(a2, &v10);
  if (*__error())
  {
    return 4294954394;
  }

  v8 = *v10 || v6 < 1.17549435e-38;
  if (v8 || v6 > 3.40282347e38)
  {
    return 4294954394;
  }

  result = 0;
  v9 = v6;
  **(a1 + 16) = v9;
  return result;
}

uint64_t sub_2774424C4(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %f\n", a4, **(result + 16));
  }

  return result;
}

uint64_t sub_277442534(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (!a2)
  {
    return 4294954394;
  }

  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  v10 = 0;
  *__error() = 0;
  v6 = strtod(a2, &v10);
  if (*__error())
  {
    return 4294954394;
  }

  v7 = *v10 || v6 < 2.22507386e-308;
  if (v7 || v6 > 1.79769313e308)
  {
    return 4294954394;
  }

  result = 0;
  **(a1 + 16) = v6;
  return result;
}

uint64_t sub_2774425F8(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  if (dword_280B9A880 >= 6)
  {
    return fprintf(a2, "-%s %f\n", a4, **(result + 16));
  }

  return result;
}

void sub_27744264C(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.VideoProcessing");
  v1 = *MEMORY[0x277CBF040];
  v2 = *MEMORY[0x277CBF010];
  v3 = CFPreferencesCopyKeyList(@"com.apple.VideoProcessing", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (!v3)
  {
    if (dword_280B9A880 >= 7)
    {
      fwrite("No preferences set\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(31, "No preferences set\n");
    }

    return;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_30;
  }

  v6 = Count;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
    if (v7)
    {
      CFRelease(v7);
    }

    v10 = CFPreferencesCopyValue(ValueAtIndex, @"com.apple.VideoProcessing", v1, v2);
    v7 = v10;
    if (!ValueAtIndex || !v10)
    {
      continue;
    }

    CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
    v12 = CFGetTypeID(v7);
    if (v12 != CFStringGetTypeID())
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Got some other type than CFString for %s, ignoring\n", CStringPtr);
        syslog(27, "Got some other type than CFString for %s, ignoring\n");
      }

      continue;
    }

    v13 = CFStringGetCStringPtr(v7, 0x8000100u);
    if (!CStringPtr || (v14 = v13) == 0)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Preference couldn't be easily converted to C string, ignoring\n", 0x3EuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Preference couldn't be easily converted to C string, ignoring\n");
      }

      continue;
    }

    v21 = 0;
    v15 = *CStringPtr;
    v16 = 0xCBF29CE484222325;
    if (*CStringPtr)
    {
      v17 = (CStringPtr + 1);
      do
      {
        v16 = 0x100000001B3 * (v16 ^ v15);
        v18 = *v17++;
        v15 = v18;
      }

      while (v18);
    }

    v19 = v16 <= 1 ? 1 : v16;
    if (sub_277441518(a1, v19, CStringPtr, v13, 0xFFFFFFFFLL, &v21 + 1, &v21))
    {
      break;
    }

    if (v21 == 1)
    {
      if (dword_280B9A880 >= 4)
      {
        fprintf(*MEMORY[0x277D85DF8], "Read preference (%s, %s)\n", CStringPtr, v14);
        syslog(28, "Read preference (%s, %s)\n");
      }
    }

    else if (dword_280B9A880 >= 7)
    {
      fprintf(*MEMORY[0x277D85DF8], "Ignoring preference (%s, %s)\n", CStringPtr, v14);
      syslog(31, "Ignoring preference (%s, %s)\n");
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_30:
  CFRelease(v4);
}

uint64_t sub_277442944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3[201];
  *(a1 + 128) = v4;
  v5 = v3[2096];
  if (v5 <= 0xC && (v6 = v3[2098], v6 < 0xD))
  {
    v12 = v5 > 8 || v6 > 8;
    (*(&off_288663120 + 4 * v4 + 2 * v12))();
    if (v12)
    {
      (*(&off_2886631A0 + 4 * *(*(a2 + 16) + 222)))(a1, a3);
      (*(&off_2886631A0 + 4 * *(*(a2 + 16) + 223) + 2))(a1, a3);
    }

    else
    {
      v13 = sub_2774E0914;
      if (a3)
      {
        v13 = sub_2774E0CBC;
      }

      *(a1 + 72) = sub_2774E0418;
      *(a1 + 80) = v13;
      v14 = *(a1 + 128);
      v15 = sub_2774E7688;
      if (v14 >= 2)
      {
        v16 = sub_2774E73B0;
      }

      else
      {
        v16 = sub_2774E7520;
      }

      v17 = sub_2774E6990;
      if (v14 == 2)
      {
        v17 = sub_2774E6EA4;
      }

      if (v14 < 3)
      {
        v15 = sub_2774E772C;
      }

      *(a1 + 88) = v16;
      *(a1 + 96) = v15;
      if (v14 == 3)
      {
        v18 = sub_2774E6448;
      }

      else
      {
        v18 = v17;
      }

      *(a1 + 48) = v18;
      *(a1 + 104) = sub_2774E5C54;
      *(a1 + 112) = sub_2774E54CC;
    }

    result = 0;
    *(a1 + 120) = 0;
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Unsupported bit depth\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Unsupported bit depth\n");
    }

    return 4294954386;
  }

  return result;
}

uint64_t sub_277442B3C(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 112) = sub_277443170;
  *(result + 104) = sub_277442BE8;
  v2 = sub_2774E858C;
  if (v1 >= 2)
  {
    v3 = sub_2774E83C0;
  }

  else
  {
    v3 = sub_2774E84A8;
  }

  v4 = sub_2774E6990;
  if (v1 == 2)
  {
    v4 = sub_2774E6EA4;
  }

  if (v1 < 3)
  {
    v2 = sub_2774E8628;
  }

  *(result + 88) = v3;
  *(result + 96) = v2;
  if (v1 == 3)
  {
    v5 = sub_2774E6448;
  }

  else
  {
    v5 = v4;
  }

  *(result + 48) = v5;
  return result;
}

__int16 *sub_277442BE8(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8 * a2;
    do
    {
      sub_277442C84(v9, a2, 2, a3, a4);
      result = sub_277442C84(v9 + 1, a2, 2, a3, a4);
      v10 += 4;
      v9 = (v9 + v11);
    }

    while (v10 < a5);
  }

  return result;
}

__int16 *sub_277442C84(__int16 *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[-2 * a3];
  if (a3 < 1)
  {
    v11 = *result;
    v6 = result[-a3];
    v12 = v11 + v5 - 2 * v6;
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = -v12;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    if (a3 < 0)
    {
      v13 = result[a3] - 2 * v10 + result[3 * a3];
      if (v13 < 0)
      {
        v13 = -v13;
      }

      v14 = &result[3 * a2];
      v15 = v14[-2 * a3];
      v20 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = result[-a3];
    v7 = v6 - 2 * v5 + result[-3 * a3];
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    v11 = *result;
  }

  v13 = v11 + v10 - 2 * result[a3];
  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = &result[3 * a2];
  v15 = v14[-2 * a3];
  if (a3 > 0)
  {
    v16 = v14[-a3];
    v17 = v16 - 2 * v15 + v14[-3 * a3];
    if (v17 < 0)
    {
      v17 = -v17;
    }

    v18 = v14[v9];
    v19 = *v14;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_20:
  v19 = *v14;
  v16 = v14[-a3];
  v17 = v19 + v15 - 2 * v16;
  if (v17 < 0)
  {
    v17 = 2 * v16 - (v19 + v15);
  }

  v18 = v14[v9];
  if (v20)
  {
    v21 = v14[a3] - 2 * v18 + v14[3 * a3];
    goto LABEL_25;
  }

LABEL_24:
  v21 = v19 + v18 - 2 * v14[a3];
LABEL_25:
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 + v17 + v13 + v8 < 16 * a4)
  {
    v22 = (16 * a4) >> 2;
    if (v22 <= 2 * (v13 + v8))
    {
      goto LABEL_37;
    }

    v23 = result[-4 * a3] - v6;
    if (v23 < 0)
    {
      v23 = v6 - result[-4 * a3];
    }

    v24 = result[3 * a3] - v11;
    if (v24 < 0)
    {
      v24 = v11 - result[3 * a3];
    }

    if (v23 + v24 >= ((2 * a4) & 0x1FFFFFFFu))
    {
LABEL_37:
      v26 = 1;
    }

    else
    {
      v25 = v6 - v11;
      if (v25 < 0)
      {
        v25 = -v25;
      }

      v26 = v25 >= (80 * a5) >> 1;
    }

    if (v22 <= 2 * (v21 + v17))
    {
      goto LABEL_49;
    }

    v27 = v14[3 * a3];
    v28 = v14[-4 * a3] - v16;
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v29 = v27 - v19;
    if (v29 < 0)
    {
      v29 = -v29;
    }

    if (v28 + v29 >= ((2 * a4) & 0x1FFFFFFFu))
    {
      goto LABEL_49;
    }

    v30 = v16 - v19;
    if (v16 - v19 < 0)
    {
      v30 = v19 - v16;
    }

    if (v30 >= (80 * a5) >> 1)
    {
      v26 = 1;
    }

    if (v26)
    {
LABEL_49:
      v31 = 16 * a5;
      v32 = v17 + v8;
      v33 = v21 + v13;
      v34 = (16 * a4 + ((16 * a4) >> 1)) >> 3;
      v35 = 160 * a5;
      v36 = -16 * a5;
      v37 = (16 * a5) >> 1;
      v38 = -v37;
      v39 = 2 * a2;
      v40 = 4;
      do
      {
        v41 = result[-2 * a3];
        v42 = result[-a3];
        v43 = *result;
        v44 = result[a3];
        v45 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
        if (v45 >= 0)
        {
          v46 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
        }

        else
        {
          v46 = -v45;
        }

        if (v46 < v35)
        {
          if (v45 >= v31)
          {
            v48 = v31;
          }

          else
          {
            v48 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
          }

          if (v45 <= v36)
          {
            v49 = v36;
          }

          else
          {
            v49 = v48;
          }

          v50 = (v49 - v41 + ((result[-3 * a3] + v42 + 1) >> 1)) >> 1;
          if (v50 >= v37)
          {
            v51 = v37;
          }

          else
          {
            v51 = (v49 - v41 + ((result[-3 * a3] + v42 + 1) >> 1)) >> 1;
          }

          if (v50 <= v38)
          {
            v52 = -v37;
          }

          else
          {
            v52 = v51;
          }

          v53 = v52 + v41;
          if (v53 >= 0xFFF)
          {
            v54 = 4095;
          }

          else
          {
            v54 = v53;
          }

          if (v53 <= 0)
          {
            v55 = 0;
          }

          else
          {
            v55 = v54;
          }

          if (v32 < v34)
          {
            LOWORD(v41) = v55;
          }

          v47 = result[v9];
          v56 = (((v43 + v47 + 1) >> 1) - v44 - v49) >> 1;
          if (v56 >= v37)
          {
            v57 = v37;
          }

          else
          {
            v57 = (((v43 + v47 + 1) >> 1) - v44 - v49) >> 1;
          }

          if (v56 <= v38)
          {
            v58 = -v37;
          }

          else
          {
            v58 = v57;
          }

          v59 = v58 + v44;
          if (v59 >= 0xFFF)
          {
            v60 = 4095;
          }

          else
          {
            v60 = v59;
          }

          if (v59 <= 0)
          {
            v61 = 0;
          }

          else
          {
            v61 = v60;
          }

          if (v33 < v34)
          {
            LOWORD(v44) = v61;
          }

          v62 = v49 + v42;
          if (v62 >= 0xFFF)
          {
            v63 = 4095;
          }

          else
          {
            v63 = v62;
          }

          if (v62 <= 0)
          {
            v64 = 0;
          }

          else
          {
            v64 = v63;
          }

          v65 = v43 - v49;
          if (v65 >= 0xFFF)
          {
            v66 = 4095;
          }

          else
          {
            v66 = v65;
          }

          result[-2 * a3] = v41;
          result[-a3] = v64;
          if (v65 <= 0)
          {
            v67 = 0;
          }

          else
          {
            v67 = v66;
          }

          *result = v67;
          result[a3] = v44;
        }

        result = (result + v39);
        --v40;
      }

      while (v40);
    }

    else
    {
      v68 = 32 * a5;
      v69 = 2 * a2;
      v70 = 4;
      do
      {
        v71 = result[-3 * a3];
        v72 = result[-2 * a3];
        v73 = result[-a3];
        v74 = result[a3];
        v75 = result[v9];
        v76 = result[3 * a3];
        LOWORD(v77) = v68 + v71;
        v78 = *result;
        v79 = v78 + v73;
        v80 = v72 + 4;
        v81 = (v72 + 4 + 2 * result[-4 * a3] + 3 * v71 + v78 + v73) >> 3;
        if (v81 < v68 + v71)
        {
          v77 = (v72 + 4 + 2 * result[-4 * a3] + 3 * v71 + v78 + v73) >> 3;
        }

        if (v81 <= v71 - v68)
        {
          v82 = v71 - v68;
        }

        else
        {
          v82 = v77;
        }

        result[-3 * a3] = v82;
        v83 = v72 - v68;
        LOWORD(v84) = v68 + v72;
        v85 = (v79 + v72 + v71 + 2) >> 2;
        if (v85 < v68 + v72)
        {
          v84 = (v79 + v72 + v71 + 2) >> 2;
        }

        if (v85 > v83)
        {
          LOWORD(v83) = v84;
        }

        result[-2 * a3] = v83;
        v86 = v73 - v68;
        v87 = (v71 + 2 * v73 + 2 * v72 + 2 * v78 + v74 + 4) >> 3;
        if (v87 >= v68 + v73)
        {
          v88 = v68 + v73;
        }

        else
        {
          v88 = v87;
        }

        if (v87 > v86)
        {
          LOWORD(v86) = v88;
        }

        result[-a3] = v86;
        v89 = v78 - v68;
        LOWORD(v90) = v68 + v78;
        v91 = (v80 + 2 * v73 + 2 * v78 + 2 * v74 + v75) >> 3;
        if (v91 < v68 + v78)
        {
          v90 = (v80 + 2 * v73 + 2 * v78 + 2 * v74 + v75) >> 3;
        }

        if (v91 > v89)
        {
          LOWORD(v89) = v90;
        }

        *result = v89;
        v92 = v74 - v68;
        LOWORD(v93) = v68 + v74;
        v94 = v75 + v74 + v79;
        v95 = (v94 + 2) >> 2;
        if (v95 < v68 + v74)
        {
          v93 = (v94 + 2) >> 2;
        }

        if (v95 > v92)
        {
          LOWORD(v92) = v93;
        }

        result[a3] = v92;
        v96 = v75 - v68;
        v97 = v68 + v75;
        v98 = (v94 + 2 * v75 + 2 * v76 + 4) >> 3;
        if (v98 >= v97)
        {
          v99 = v97;
        }

        else
        {
          v99 = v98;
        }

        if (v98 <= v96)
        {
          v100 = v96;
        }

        else
        {
          v100 = v99;
        }

        result[v9] = v100;
        result = (result + v69);
        --v70;
      }

      while (v70);
    }
  }

  return result;
}

__int16 *sub_277443170(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    for (i = 0; i < a5; i += 4)
    {
      sub_277442C84(v9, 2, a2, a3, a4);
      result = sub_277442C84(v9 + 1, 2, a2, a3, a4);
      v9 += 8;
    }
  }

  return result;
}

uint64_t sub_277443200(uint64_t result, int a2)
{
  v2 = sub_2774E4C2C;
  if (a2)
  {
    v2 = sub_2774E5020;
  }

  *(result + 72) = sub_2774E46D0;
  *(result + 80) = v2;
  return result;
}

uint64_t sub_277443238(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 112) = sub_277443874;
  *(result + 104) = sub_2774432E4;
  v2 = sub_2774E828C;
  if (v1 >= 2)
  {
    v3 = sub_2774E80C0;
  }

  else
  {
    v3 = sub_2774E81A8;
  }

  v4 = sub_2774E6990;
  if (v1 == 2)
  {
    v4 = sub_2774E6EA4;
  }

  if (v1 < 3)
  {
    v2 = sub_2774E8328;
  }

  *(result + 88) = v3;
  *(result + 96) = v2;
  if (v1 == 3)
  {
    v5 = sub_2774E6448;
  }

  else
  {
    v5 = v4;
  }

  *(result + 48) = v5;
  return result;
}

__int16 *sub_2774432E4(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8 * a2;
    do
    {
      sub_277443380(v9, a2, 2, a3, a4);
      result = sub_277443380(v9 + 1, a2, 2, a3, a4);
      v10 += 4;
      v9 = (v9 + v11);
    }

    while (v10 < a5);
  }

  return result;
}

__int16 *sub_277443380(__int16 *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[-2 * a3];
  if (a3 < 1)
  {
    v11 = *result;
    v6 = result[-a3];
    v12 = v11 + v5 - 2 * v6;
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = -v12;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    if (a3 < 0)
    {
      v13 = result[a3] - 2 * v10 + result[3 * a3];
      if (v13 < 0)
      {
        v13 = -v13;
      }

      v14 = &result[3 * a2];
      v15 = v14[-2 * a3];
      v20 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = result[-a3];
    v7 = v6 - 2 * v5 + result[-3 * a3];
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    v11 = *result;
  }

  v13 = v11 + v10 - 2 * result[a3];
  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = &result[3 * a2];
  v15 = v14[-2 * a3];
  if (a3 > 0)
  {
    v16 = v14[-a3];
    v17 = v16 - 2 * v15 + v14[-3 * a3];
    if (v17 < 0)
    {
      v17 = -v17;
    }

    v18 = v14[v9];
    v19 = *v14;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_20:
  v19 = *v14;
  v16 = v14[-a3];
  v17 = v19 + v15 - 2 * v16;
  if (v17 < 0)
  {
    v17 = 2 * v16 - (v19 + v15);
  }

  v18 = v14[v9];
  if (v20)
  {
    v21 = v14[a3] - 2 * v18 + v14[3 * a3];
    goto LABEL_25;
  }

LABEL_24:
  v21 = v19 + v18 - 2 * v14[a3];
LABEL_25:
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 + v17 + v13 + v8 < 8 * a4)
  {
    v22 = (8 * a4) >> 2;
    v23 = 5 * a5;
    if (v22 <= 2 * (v13 + v8))
    {
      goto LABEL_37;
    }

    v24 = result[-4 * a3] - v6;
    if (v24 < 0)
    {
      v24 = v6 - result[-4 * a3];
    }

    v25 = result[3 * a3] - v11;
    if (v25 < 0)
    {
      v25 = v11 - result[3 * a3];
    }

    if (v24 + v25 >= (a4 & 0x1FFFFFFFu))
    {
LABEL_37:
      v27 = 1;
    }

    else
    {
      v26 = v6 - v11;
      if (v26 < 0)
      {
        v26 = -v26;
      }

      v27 = v26 >= (40 * a5) >> 1;
    }

    if (v22 <= 2 * (v21 + v17))
    {
      goto LABEL_49;
    }

    v28 = v14[3 * a3];
    v29 = v14[-4 * a3] - v16;
    if (v29 < 0)
    {
      v29 = -v29;
    }

    v30 = v28 - v19;
    if (v30 < 0)
    {
      v30 = -v30;
    }

    if (v29 + v30 >= (a4 & 0x1FFFFFFFu))
    {
      goto LABEL_49;
    }

    v31 = v16 - v19;
    if (v16 - v19 < 0)
    {
      v31 = v19 - v16;
    }

    if (v31 >= (40 * a5) >> 1)
    {
      v27 = 1;
    }

    if (v27)
    {
LABEL_49:
      v32 = 8 * a5;
      v33 = v17 + v8;
      v34 = v21 + v13;
      v35 = (8 * a4 + ((8 * a4) >> 1)) >> 3;
      v36 = -8 * a5;
      v37 = (8 * a5) >> 1;
      v38 = -v37;
      v39 = 2 * a2;
      v40 = 4;
      do
      {
        v41 = result[-2 * a3];
        v42 = result[-a3];
        v43 = *result;
        v44 = result[a3];
        v45 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
        if (v45 >= 0)
        {
          v46 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
        }

        else
        {
          v46 = -v45;
        }

        if (v46 < 16 * v23)
        {
          if (v45 >= v32)
          {
            v48 = v32;
          }

          else
          {
            v48 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
          }

          if (v45 <= v36)
          {
            v49 = v36;
          }

          else
          {
            v49 = v48;
          }

          v50 = (v49 - v41 + ((result[-3 * a3] + v42 + 1) >> 1)) >> 1;
          if (v50 >= v37)
          {
            v51 = v37;
          }

          else
          {
            v51 = (v49 - v41 + ((result[-3 * a3] + v42 + 1) >> 1)) >> 1;
          }

          if (v50 <= v38)
          {
            v52 = -v37;
          }

          else
          {
            v52 = v51;
          }

          v53 = v52 + v41;
          if (v53 >= 0x7FF)
          {
            v54 = 2047;
          }

          else
          {
            v54 = v53;
          }

          if (v53 <= 0)
          {
            v55 = 0;
          }

          else
          {
            v55 = v54;
          }

          if (v33 < v35)
          {
            LOWORD(v41) = v55;
          }

          v47 = result[v9];
          v56 = (((v43 + v47 + 1) >> 1) - v44 - v49) >> 1;
          if (v56 >= v37)
          {
            v57 = v37;
          }

          else
          {
            v57 = (((v43 + v47 + 1) >> 1) - v44 - v49) >> 1;
          }

          if (v56 <= v38)
          {
            v58 = -v37;
          }

          else
          {
            v58 = v57;
          }

          v59 = v58 + v44;
          if (v59 >= 0x7FF)
          {
            v60 = 2047;
          }

          else
          {
            v60 = v59;
          }

          if (v59 <= 0)
          {
            v61 = 0;
          }

          else
          {
            v61 = v60;
          }

          if (v34 < v35)
          {
            LOWORD(v44) = v61;
          }

          v62 = v49 + v42;
          if (v62 >= 0x7FF)
          {
            v63 = 2047;
          }

          else
          {
            v63 = v62;
          }

          if (v62 <= 0)
          {
            v64 = 0;
          }

          else
          {
            v64 = v63;
          }

          v65 = v43 - v49;
          if (v65 >= 0x7FF)
          {
            v66 = 2047;
          }

          else
          {
            v66 = v65;
          }

          result[-2 * a3] = v41;
          result[-a3] = v64;
          if (v65 <= 0)
          {
            v67 = 0;
          }

          else
          {
            v67 = v66;
          }

          *result = v67;
          result[a3] = v44;
        }

        result = (result + v39);
        --v40;
      }

      while (v40);
    }

    else
    {
      v68 = 16 * a5;
      v69 = 2 * a2;
      v70 = 4;
      do
      {
        v71 = result[-3 * a3];
        v72 = result[-2 * a3];
        v73 = result[-a3];
        v74 = result[a3];
        v75 = result[v9];
        v76 = result[3 * a3];
        LOWORD(v77) = v68 + v71;
        v78 = *result;
        v79 = v78 + v73;
        v80 = v72 + 4;
        v81 = (v72 + 4 + 2 * result[-4 * a3] + 3 * v71 + v78 + v73) >> 3;
        if (v81 < v68 + v71)
        {
          v77 = (v72 + 4 + 2 * result[-4 * a3] + 3 * v71 + v78 + v73) >> 3;
        }

        if (v81 <= v71 - v68)
        {
          v82 = v71 - v68;
        }

        else
        {
          v82 = v77;
        }

        result[-3 * a3] = v82;
        v83 = v72 - v68;
        LOWORD(v84) = v68 + v72;
        v85 = (v79 + v72 + v71 + 2) >> 2;
        if (v85 < v68 + v72)
        {
          v84 = (v79 + v72 + v71 + 2) >> 2;
        }

        if (v85 > v83)
        {
          LOWORD(v83) = v84;
        }

        result[-2 * a3] = v83;
        v86 = v73 - v68;
        v87 = (v71 + 2 * v73 + 2 * v72 + 2 * v78 + v74 + 4) >> 3;
        if (v87 >= v68 + v73)
        {
          v88 = v68 + v73;
        }

        else
        {
          v88 = v87;
        }

        if (v87 > v86)
        {
          LOWORD(v86) = v88;
        }

        result[-a3] = v86;
        v89 = v78 - v68;
        LOWORD(v90) = v68 + v78;
        v91 = (v80 + 2 * v73 + 2 * v78 + 2 * v74 + v75) >> 3;
        if (v91 < v68 + v78)
        {
          v90 = (v80 + 2 * v73 + 2 * v78 + 2 * v74 + v75) >> 3;
        }

        if (v91 > v89)
        {
          LOWORD(v89) = v90;
        }

        *result = v89;
        v92 = v74 - v68;
        LOWORD(v93) = v68 + v74;
        v94 = v75 + v74 + v79;
        v95 = (v94 + 2) >> 2;
        if (v95 < v68 + v74)
        {
          v93 = (v94 + 2) >> 2;
        }

        if (v95 > v92)
        {
          LOWORD(v92) = v93;
        }

        result[a3] = v92;
        v96 = v75 - v68;
        v97 = v68 + v75;
        v98 = (v94 + 2 * v75 + 2 * v76 + 4) >> 3;
        if (v98 >= v97)
        {
          v99 = v97;
        }

        else
        {
          v99 = v98;
        }

        if (v98 <= v96)
        {
          v100 = v96;
        }

        else
        {
          v100 = v99;
        }

        result[v9] = v100;
        result = (result + v69);
        --v70;
      }

      while (v70);
    }
  }

  return result;
}

__int16 *sub_277443874(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    for (i = 0; i < a5; i += 4)
    {
      sub_277443380(v9, 2, a2, a3, a4);
      result = sub_277443380(v9 + 1, 2, a2, a3, a4);
      v9 += 8;
    }
  }

  return result;
}

uint64_t sub_277443904(uint64_t result, int a2)
{
  v2 = sub_2774E3E80;
  if (a2)
  {
    v2 = sub_2774E424C;
  }

  *(result + 72) = sub_2774E394C;
  *(result + 80) = v2;
  return result;
}

uint64_t sub_27744393C(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 112) = sub_277443F70;
  *(result + 104) = sub_2774439E8;
  v2 = sub_2774E7F8C;
  if (v1 >= 2)
  {
    v3 = sub_2774E7DC0;
  }

  else
  {
    v3 = sub_2774E7EA8;
  }

  v4 = sub_2774E6990;
  if (v1 == 2)
  {
    v4 = sub_2774E6EA4;
  }

  if (v1 < 3)
  {
    v2 = sub_2774E8028;
  }

  *(result + 88) = v3;
  *(result + 96) = v2;
  if (v1 == 3)
  {
    v5 = sub_2774E6448;
  }

  else
  {
    v5 = v4;
  }

  *(result + 48) = v5;
  return result;
}

__int16 *sub_2774439E8(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8 * a2;
    do
    {
      sub_277443A84(v9, a2, 2, a3, a4);
      result = sub_277443A84(v9 + 1, a2, 2, a3, a4);
      v10 += 4;
      v9 = (v9 + v11);
    }

    while (v10 < a5);
  }

  return result;
}

__int16 *sub_277443A84(__int16 *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[-2 * a3];
  if (a3 < 1)
  {
    v11 = *result;
    v6 = result[-a3];
    v12 = v11 + v5 - 2 * v6;
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = -v12;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    if (a3 < 0)
    {
      v13 = result[a3] - 2 * v10 + result[3 * a3];
      if (v13 < 0)
      {
        v13 = -v13;
      }

      v14 = &result[3 * a2];
      v15 = v14[-2 * a3];
      v20 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = result[-a3];
    v7 = v6 - 2 * v5 + result[-3 * a3];
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    v11 = *result;
  }

  v13 = v11 + v10 - 2 * result[a3];
  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = &result[3 * a2];
  v15 = v14[-2 * a3];
  if (a3 > 0)
  {
    v16 = v14[-a3];
    v17 = v16 - 2 * v15 + v14[-3 * a3];
    if (v17 < 0)
    {
      v17 = -v17;
    }

    v18 = v14[v9];
    v19 = *v14;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_20:
  v19 = *v14;
  v16 = v14[-a3];
  v17 = v19 + v15 - 2 * v16;
  if (v17 < 0)
  {
    v17 = 2 * v16 - (v19 + v15);
  }

  v18 = v14[v9];
  if (v20)
  {
    v21 = v14[a3] - 2 * v18 + v14[3 * a3];
    goto LABEL_25;
  }

LABEL_24:
  v21 = v19 + v18 - 2 * v14[a3];
LABEL_25:
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 + v17 + v13 + v8 < 4 * a4)
  {
    v22 = 4 * a4;
    if ((a4 & 0x3FFFFFFFu) <= 2 * (v13 + v8))
    {
      goto LABEL_37;
    }

    v23 = result[-4 * a3] - v6;
    if (v23 < 0)
    {
      v23 = v6 - result[-4 * a3];
    }

    v24 = result[3 * a3] - v11;
    if (v24 < 0)
    {
      v24 = v11 - result[3 * a3];
    }

    if (v23 + v24 >= v22 >> 3)
    {
LABEL_37:
      v26 = 1;
    }

    else
    {
      v25 = v6 - v11;
      if (v25 < 0)
      {
        v25 = -v25;
      }

      v26 = v25 >= (20 * a5) >> 1;
    }

    if ((a4 & 0x3FFFFFFFu) <= 2 * (v21 + v17))
    {
      goto LABEL_49;
    }

    v27 = v14[3 * a3];
    v28 = v14[-4 * a3] - v16;
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v29 = v27 - v19;
    if (v29 < 0)
    {
      v29 = -v29;
    }

    if (v28 + v29 >= v22 >> 3)
    {
      goto LABEL_49;
    }

    v30 = v16 - v19;
    if (v16 - v19 < 0)
    {
      v30 = v19 - v16;
    }

    if (v30 >= (20 * a5) >> 1)
    {
      v26 = 1;
    }

    if (v26)
    {
LABEL_49:
      v31 = 4 * a5;
      v32 = v17 + v8;
      v33 = v21 + v13;
      v34 = (v22 + (v22 >> 1)) >> 3;
      v35 = 40 * a5;
      v36 = -4 * a5;
      v37 = (4 * a5) >> 1;
      v38 = -v37;
      v39 = 2 * a2;
      v40 = 4;
      do
      {
        v41 = result[-2 * a3];
        v42 = result[-a3];
        v43 = *result;
        v44 = result[a3];
        v45 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
        if (v45 >= 0)
        {
          v46 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
        }

        else
        {
          v46 = -v45;
        }

        if (v46 < v35)
        {
          if (v45 >= v31)
          {
            v48 = v31;
          }

          else
          {
            v48 = (9 * (v43 - v42) - 3 * (v44 - v41) + 8) >> 4;
          }

          if (v45 <= v36)
          {
            v49 = v36;
          }

          else
          {
            v49 = v48;
          }

          v50 = (v49 - v41 + ((result[-3 * a3] + v42 + 1) >> 1)) >> 1;
          if (v50 >= v37)
          {
            v51 = v37;
          }

          else
          {
            v51 = (v49 - v41 + ((result[-3 * a3] + v42 + 1) >> 1)) >> 1;
          }

          if (v50 <= v38)
          {
            v52 = -v37;
          }

          else
          {
            v52 = v51;
          }

          v53 = v52 + v41;
          if (v53 >= 0x3FF)
          {
            v54 = 1023;
          }

          else
          {
            v54 = v53;
          }

          if (v53 <= 0)
          {
            v55 = 0;
          }

          else
          {
            v55 = v54;
          }

          if (v32 < v34)
          {
            LOWORD(v41) = v55;
          }

          v47 = result[v9];
          v56 = (((v43 + v47 + 1) >> 1) - v44 - v49) >> 1;
          if (v56 >= v37)
          {
            v57 = v37;
          }

          else
          {
            v57 = (((v43 + v47 + 1) >> 1) - v44 - v49) >> 1;
          }

          if (v56 <= v38)
          {
            v58 = -v37;
          }

          else
          {
            v58 = v57;
          }

          v59 = v58 + v44;
          if (v59 >= 0x3FF)
          {
            v60 = 1023;
          }

          else
          {
            v60 = v59;
          }

          if (v59 <= 0)
          {
            v61 = 0;
          }

          else
          {
            v61 = v60;
          }

          if (v33 < v34)
          {
            LOWORD(v44) = v61;
          }

          v62 = v49 + v42;
          if (v62 >= 0x3FF)
          {
            v63 = 1023;
          }

          else
          {
            v63 = v62;
          }

          if (v62 <= 0)
          {
            v64 = 0;
          }

          else
          {
            v64 = v63;
          }

          v65 = v43 - v49;
          if (v65 >= 0x3FF)
          {
            v66 = 1023;
          }

          else
          {
            v66 = v65;
          }

          result[-2 * a3] = v41;
          result[-a3] = v64;
          if (v65 <= 0)
          {
            v67 = 0;
          }

          else
          {
            v67 = v66;
          }

          *result = v67;
          result[a3] = v44;
        }

        result = (result + v39);
        --v40;
      }

      while (v40);
    }

    else
    {
      v68 = 8 * a5;
      v69 = 2 * a2;
      v70 = 4;
      do
      {
        v71 = result[-3 * a3];
        v72 = result[-2 * a3];
        v73 = result[-a3];
        v74 = result[a3];
        v75 = result[v9];
        v76 = result[3 * a3];
        LOWORD(v77) = v68 + v71;
        v78 = *result;
        v79 = v78 + v73;
        v80 = v72 + 4;
        v81 = (v72 + 4 + 2 * result[-4 * a3] + 3 * v71 + v78 + v73) >> 3;
        if (v81 < v68 + v71)
        {
          v77 = (v72 + 4 + 2 * result[-4 * a3] + 3 * v71 + v78 + v73) >> 3;
        }

        if (v81 <= v71 - v68)
        {
          v82 = v71 - v68;
        }

        else
        {
          v82 = v77;
        }

        result[-3 * a3] = v82;
        v83 = v72 - v68;
        LOWORD(v84) = v68 + v72;
        v85 = (v79 + v72 + v71 + 2) >> 2;
        if (v85 < v68 + v72)
        {
          v84 = (v79 + v72 + v71 + 2) >> 2;
        }

        if (v85 > v83)
        {
          LOWORD(v83) = v84;
        }

        result[-2 * a3] = v83;
        v86 = v73 - v68;
        v87 = (v71 + 2 * v73 + 2 * v72 + 2 * v78 + v74 + 4) >> 3;
        if (v87 >= v68 + v73)
        {
          v88 = v68 + v73;
        }

        else
        {
          v88 = v87;
        }

        if (v87 > v86)
        {
          LOWORD(v86) = v88;
        }

        result[-a3] = v86;
        v89 = v78 - v68;
        LOWORD(v90) = v68 + v78;
        v91 = (v80 + 2 * v73 + 2 * v78 + 2 * v74 + v75) >> 3;
        if (v91 < v68 + v78)
        {
          v90 = (v80 + 2 * v73 + 2 * v78 + 2 * v74 + v75) >> 3;
        }

        if (v91 > v89)
        {
          LOWORD(v89) = v90;
        }

        *result = v89;
        v92 = v74 - v68;
        LOWORD(v93) = v68 + v74;
        v94 = v75 + v74 + v79;
        v95 = (v94 + 2) >> 2;
        if (v95 < v68 + v74)
        {
          v93 = (v94 + 2) >> 2;
        }

        if (v95 > v92)
        {
          LOWORD(v92) = v93;
        }

        result[a3] = v92;
        v96 = v75 - v68;
        v97 = v68 + v75;
        v98 = (v94 + 2 * v75 + 2 * v76 + 4) >> 3;
        if (v98 >= v97)
        {
          v99 = v97;
        }

        else
        {
          v99 = v98;
        }

        if (v98 <= v96)
        {
          v100 = v96;
        }

        else
        {
          v100 = v99;
        }

        result[v9] = v100;
        result = (result + v69);
        --v70;
      }

      while (v70);
    }
  }

  return result;
}

__int16 *sub_277443F70(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    for (i = 0; i < a5; i += 4)
    {
      sub_277443A84(v9, 2, a2, a3, a4);
      result = sub_277443A84(v9 + 1, 2, a2, a3, a4);
      v9 += 8;
    }
  }

  return result;
}

uint64_t sub_277444000(uint64_t result, int a2)
{
  v2 = sub_2774E30FC;
  if (a2)
  {
    v2 = sub_2774E34C8;
  }

  *(result + 72) = sub_2774E2BC8;
  *(result + 80) = v2;
  return result;
}

uint64_t sub_277444038(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 112) = sub_277444670;
  *(result + 104) = sub_2774440E4;
  v2 = sub_2774E7C8C;
  if (v1 >= 2)
  {
    v3 = sub_2774E7AC0;
  }

  else
  {
    v3 = sub_2774E7BA8;
  }

  v4 = sub_2774E6990;
  if (v1 == 2)
  {
    v4 = sub_2774E6EA4;
  }

  if (v1 < 3)
  {
    v2 = sub_2774E7D28;
  }

  *(result + 88) = v3;
  *(result + 96) = v2;
  if (v1 == 3)
  {
    v5 = sub_2774E6448;
  }

  else
  {
    v5 = v4;
  }

  *(result + 48) = v5;
  return result;
}

__int16 *sub_2774440E4(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8 * a2;
    do
    {
      sub_277444180(v9, a2, 2, a3, a4);
      result = sub_277444180(v9 + 1, a2, 2, a3, a4);
      v10 += 4;
      v9 = (v9 + v11);
    }

    while (v10 < a5);
  }

  return result;
}

__int16 *sub_277444180(__int16 *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[-2 * a3];
  if (a3 < 1)
  {
    v11 = *result;
    v6 = result[-a3];
    v12 = v11 + v5 - 2 * v6;
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = -v12;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    if (a3 < 0)
    {
      v13 = result[a3] - 2 * v10 + result[3 * a3];
      if (v13 < 0)
      {
        v13 = -v13;
      }

      v14 = &result[3 * a2];
      v15 = v14[-2 * a3];
      v20 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = result[-a3];
    v7 = v6 - 2 * v5 + result[-3 * a3];
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    v11 = *result;
  }

  v13 = v11 + v10 - 2 * result[a3];
  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = &result[3 * a2];
  v15 = v14[-2 * a3];
  if (a3 > 0)
  {
    v16 = v14[-a3];
    v17 = v16 - 2 * v15 + v14[-3 * a3];
    if (v17 < 0)
    {
      v17 = -v17;
    }

    v18 = v14[v9];
    v19 = *v14;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_20:
  v19 = *v14;
  v16 = v14[-a3];
  v17 = v19 + v15 - 2 * v16;
  if (v17 < 0)
  {
    v17 = 2 * v16 - (v19 + v15);
  }

  v18 = v14[v9];
  if (v20)
  {
    v21 = v14[a3] - 2 * v18 + v14[3 * a3];
    goto LABEL_25;
  }

LABEL_24:
  v21 = v19 + v18 - 2 * v14[a3];
LABEL_25:
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 + v17 + v13 + v8 < 2 * a4)
  {
    v22 = 2 * a4;
    v23 = (2 * a4) >> 2;
    v24 = 5 * a5;
    if (v23 <= 2 * (v13 + v8))
    {
      goto LABEL_37;
    }

    v25 = result[-4 * a3] - v6;
    if (v25 < 0)
    {
      v25 = v6 - result[-4 * a3];
    }

    v26 = result[3 * a3] - v11;
    if (v26 < 0)
    {
      v26 = v11 - result[3 * a3];
    }

    if (v25 + v26 >= v22 >> 3)
    {
LABEL_37:
      v28 = 1;
    }

    else
    {
      v27 = v6 - v11;
      if (v27 < 0)
      {
        v27 = -v27;
      }

      v28 = v27 >= (10 * a5) >> 1;
    }

    if (v23 <= 2 * (v21 + v17))
    {
      goto LABEL_49;
    }

    v29 = v14[3 * a3];
    v30 = v14[-4 * a3] - v16;
    if (v30 < 0)
    {
      v30 = -v30;
    }

    v31 = v29 - v19;
    if (v31 < 0)
    {
      v31 = -v31;
    }

    if (v30 + v31 >= v22 >> 3)
    {
      goto LABEL_49;
    }

    v32 = v16 - v19;
    if (v16 - v19 < 0)
    {
      v32 = v19 - v16;
    }

    if (v32 >= (10 * a5) >> 1)
    {
      v28 = 1;
    }

    if (v28)
    {
LABEL_49:
      v33 = 2 * a5;
      v34 = (v22 + (a4 & 0x7FFFFFFF)) >> 3;
      v35 = v17 + v8;
      v36 = v21 + v13;
      v37 = -2 * a5;
      v38 = (2 * a5) >> 1;
      v39 = -v38;
      v40 = 2 * a2;
      v41 = 4;
      do
      {
        v42 = result[-2 * a3];
        v43 = result[-a3];
        v44 = *result;
        v45 = result[a3];
        v46 = (9 * (v44 - v43) - 3 * (v45 - v42) + 8) >> 4;
        if (v46 >= 0)
        {
          v47 = (9 * (v44 - v43) - 3 * (v45 - v42) + 8) >> 4;
        }

        else
        {
          v47 = -v46;
        }

        if (v47 < 4 * v24)
        {
          if (v46 >= v33)
          {
            v49 = v33;
          }

          else
          {
            v49 = (9 * (v44 - v43) - 3 * (v45 - v42) + 8) >> 4;
          }

          if (v46 <= v37)
          {
            v50 = v37;
          }

          else
          {
            v50 = v49;
          }

          v51 = (v50 - v42 + ((result[-3 * a3] + v43 + 1) >> 1)) >> 1;
          if (v51 >= v38)
          {
            v52 = v38;
          }

          else
          {
            v52 = (v50 - v42 + ((result[-3 * a3] + v43 + 1) >> 1)) >> 1;
          }

          if (v51 <= v39)
          {
            v53 = -v38;
          }

          else
          {
            v53 = v52;
          }

          v54 = v53 + v42;
          if (v54 >= 0x1FF)
          {
            v55 = 511;
          }

          else
          {
            v55 = v54;
          }

          if (v54 <= 0)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55;
          }

          if (v35 < v34)
          {
            LOWORD(v42) = v56;
          }

          v48 = result[v9];
          v57 = (((v44 + v48 + 1) >> 1) - v45 - v50) >> 1;
          if (v57 >= v38)
          {
            v58 = v38;
          }

          else
          {
            v58 = (((v44 + v48 + 1) >> 1) - v45 - v50) >> 1;
          }

          if (v57 <= v39)
          {
            v59 = -v38;
          }

          else
          {
            v59 = v58;
          }

          v60 = v59 + v45;
          if (v60 >= 0x1FF)
          {
            v61 = 511;
          }

          else
          {
            v61 = v60;
          }

          if (v60 <= 0)
          {
            v62 = 0;
          }

          else
          {
            v62 = v61;
          }

          if (v36 < v34)
          {
            LOWORD(v45) = v62;
          }

          v63 = v50 + v43;
          if (v63 >= 0x1FF)
          {
            v64 = 511;
          }

          else
          {
            v64 = v63;
          }

          if (v63 <= 0)
          {
            v65 = 0;
          }

          else
          {
            v65 = v64;
          }

          v66 = v44 - v50;
          if (v66 >= 0x1FF)
          {
            v67 = 511;
          }

          else
          {
            v67 = v66;
          }

          result[-2 * a3] = v42;
          result[-a3] = v65;
          if (v66 <= 0)
          {
            v68 = 0;
          }

          else
          {
            v68 = v67;
          }

          *result = v68;
          result[a3] = v45;
        }

        result = (result + v40);
        --v41;
      }

      while (v41);
    }

    else
    {
      v69 = 4 * a5;
      v70 = 2 * a2;
      v71 = 4;
      do
      {
        v72 = result[-3 * a3];
        v73 = result[-2 * a3];
        v74 = result[-a3];
        v75 = result[a3];
        v76 = result[v9];
        v77 = result[3 * a3];
        LOWORD(v78) = v69 + v72;
        v79 = *result;
        v80 = v79 + v74;
        v81 = v73 + 4;
        v82 = (v73 + 4 + 2 * result[-4 * a3] + 3 * v72 + v79 + v74) >> 3;
        if (v82 < v69 + v72)
        {
          v78 = (v73 + 4 + 2 * result[-4 * a3] + 3 * v72 + v79 + v74) >> 3;
        }

        if (v82 <= v72 - v69)
        {
          v83 = v72 - v69;
        }

        else
        {
          v83 = v78;
        }

        result[-3 * a3] = v83;
        v84 = v73 - v69;
        LOWORD(v85) = v69 + v73;
        v86 = (v80 + v73 + v72 + 2) >> 2;
        if (v86 < v69 + v73)
        {
          v85 = (v80 + v73 + v72 + 2) >> 2;
        }

        if (v86 > v84)
        {
          LOWORD(v84) = v85;
        }

        result[-2 * a3] = v84;
        v87 = v74 - v69;
        v88 = (v72 + 2 * v74 + 2 * v73 + 2 * v79 + v75 + 4) >> 3;
        if (v88 >= v69 + v74)
        {
          v89 = v69 + v74;
        }

        else
        {
          v89 = v88;
        }

        if (v88 > v87)
        {
          LOWORD(v87) = v89;
        }

        result[-a3] = v87;
        v90 = v79 - v69;
        LOWORD(v91) = v69 + v79;
        v92 = (v81 + 2 * v74 + 2 * v79 + 2 * v75 + v76) >> 3;
        if (v92 < v69 + v79)
        {
          v91 = (v81 + 2 * v74 + 2 * v79 + 2 * v75 + v76) >> 3;
        }

        if (v92 > v90)
        {
          LOWORD(v90) = v91;
        }

        *result = v90;
        v93 = v75 - v69;
        LOWORD(v94) = v69 + v75;
        v95 = v76 + v75 + v80;
        v96 = (v95 + 2) >> 2;
        if (v96 < v69 + v75)
        {
          v94 = (v95 + 2) >> 2;
        }

        if (v96 > v93)
        {
          LOWORD(v93) = v94;
        }

        result[a3] = v93;
        v97 = v76 - v69;
        v98 = v69 + v76;
        v99 = (v95 + 2 * v76 + 2 * v77 + 4) >> 3;
        if (v99 >= v98)
        {
          v100 = v98;
        }

        else
        {
          v100 = v99;
        }

        if (v99 <= v97)
        {
          v101 = v97;
        }

        else
        {
          v101 = v100;
        }

        result[v9] = v101;
        result = (result + v70);
        --v71;
      }

      while (v71);
    }
  }

  return result;
}

__int16 *sub_277444670(__int16 *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    for (i = 0; i < a5; i += 4)
    {
      sub_277444180(v9, 2, a2, a3, a4);
      result = sub_277444180(v9 + 1, 2, a2, a3, a4);
      v9 += 8;
    }
  }

  return result;
}

uint64_t sub_277444700(uint64_t result, int a2)
{
  v2 = sub_2774E2378;
  if (a2)
  {
    v2 = sub_2774E2744;
  }

  *(result + 72) = sub_2774E1E44;
  *(result + 80) = v2;
  return result;
}

uint64_t sub_277444738(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 112) = sub_277444D68;
  *(result + 104) = sub_2774447E4;
  v2 = sub_2774E7994;
  if (v1 >= 2)
  {
    v3 = sub_2774E77C8;
  }

  else
  {
    v3 = sub_2774E78B0;
  }

  v4 = sub_2774E6990;
  if (v1 == 2)
  {
    v4 = sub_2774E6EA4;
  }

  if (v1 < 3)
  {
    v2 = sub_2774E7A2C;
  }

  *(result + 88) = v3;
  *(result + 96) = v2;
  if (v1 == 3)
  {
    v5 = sub_2774E6448;
  }

  else
  {
    v5 = v4;
  }

  *(result + 48) = v5;
  return result;
}

__int16 *sub_2774447E4(__int16 *result, uint64_t a2, unsigned int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8 * a2;
    do
    {
      sub_277444880(v9, a2, 2, a3, a4);
      result = sub_277444880(v9 + 1, a2, 2, a3, a4);
      v10 += 4;
      v9 = (v9 + v11);
    }

    while (v10 < a5);
  }

  return result;
}

__int16 *sub_277444880(__int16 *result, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = result[-2 * a3];
  if (a3 < 1)
  {
    v11 = *result;
    v6 = result[-a3];
    v12 = v11 + v5 - 2 * v6;
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = -v12;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    if (a3 < 0)
    {
      v13 = result[a3] - 2 * v10 + result[3 * a3];
      if (v13 < 0)
      {
        v13 = -v13;
      }

      v14 = &result[3 * a2];
      v15 = v14[-2 * a3];
      v20 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = result[-a3];
    v7 = v6 - 2 * v5 + result[-3 * a3];
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    v9 = 2 * a3;
    v10 = result[2 * a3];
    v11 = *result;
  }

  v13 = v11 + v10 - 2 * result[a3];
  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = &result[3 * a2];
  v15 = v14[-2 * a3];
  if (a3 > 0)
  {
    v16 = v14[-a3];
    v17 = v16 - 2 * v15 + v14[-3 * a3];
    if (v17 < 0)
    {
      v17 = -v17;
    }

    v18 = v14[v9];
    v19 = *v14;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_20:
  v19 = *v14;
  v16 = v14[-a3];
  v17 = v19 + v15 - 2 * v16;
  if (v17 < 0)
  {
    v17 = -v17;
  }

  v18 = v14[v9];
  if (v20)
  {
    v21 = v14[a3] - 2 * v18 + v14[3 * a3];
    goto LABEL_25;
  }

LABEL_24:
  v21 = v19 + v18 - 2 * v14[a3];
LABEL_25:
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 + v17 + v13 + v8 < a4)
  {
    v22 = 5 * a5;
    if (a4 >> 2 <= 2 * (v13 + v8))
    {
      goto LABEL_37;
    }

    v23 = result[-4 * a3] - v6;
    if (v23 < 0)
    {
      v23 = v6 - result[-4 * a3];
    }

    v24 = result[3 * a3] - v11;
    if (v24 < 0)
    {
      v24 = v11 - result[3 * a3];
    }

    if (v23 + v24 >= a4 >> 3)
    {
LABEL_37:
      v26 = 1;
    }

    else
    {
      v25 = v6 - v11;
      if (v25 < 0)
      {
        v25 = -v25;
      }

      v26 = v25 >= (v22 + 1) >> 1;
    }

    if (a4 >> 2 <= 2 * (v21 + v17))
    {
      goto LABEL_49;
    }

    v27 = v14[3 * a3];
    v28 = v14[-4 * a3] - v16;
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v29 = v27 - v19;
    if (v29 < 0)
    {
      v29 = -v29;
    }

    if (v28 + v29 >= a4 >> 3)
    {
      goto LABEL_49;
    }

    v30 = v16 - v19;
    if (v16 - v19 < 0)
    {
      v30 = v19 - v16;
    }

    if (v30 >= (v22 + 1) >> 1)
    {
      v26 = 1;
    }

    if (v26)
    {
LABEL_49:
      v31 = v17 + v8;
      v32 = v21 + v13;
      v33 = (a4 + (a4 >> 1)) >> 3;
      v34 = a5 >> 1;
      v35 = -(a5 >> 1);
      v36 = 2 * a2;
      v37 = 4;
      do
      {
        v38 = result[-2 * a3];
        v39 = result[-a3];
        v40 = *result;
        v41 = result[a3];
        v42 = (9 * (v40 - v39) - 3 * (v41 - v38) + 8) >> 4;
        if (v42 >= 0)
        {
          v43 = (9 * (v40 - v39) - 3 * (v41 - v38) + 8) >> 4;
        }

        else
        {
          v43 = -v42;
        }

        if (v43 < 10 * a5)
        {
          if (v42 >= a5)
          {
            v45 = a5;
          }

          else
          {
            v45 = (9 * (v40 - v39) - 3 * (v41 - v38) + 8) >> 4;
          }

          if (v42 <= -a5)
          {
            v46 = -a5;
          }

          else
          {
            v46 = v45;
          }

          v47 = (v46 - v38 + ((result[-3 * a3] + v39 + 1) >> 1)) >> 1;
          if (v47 >= v34)
          {
            v48 = a5 >> 1;
          }

          else
          {
            v48 = (v46 - v38 + ((result[-3 * a3] + v39 + 1) >> 1)) >> 1;
          }

          if (v47 <= v35)
          {
            v49 = -(a5 >> 1);
          }

          else
          {
            v49 = v48;
          }

          v50 = v49 + v38;
          if (v50 >= 0xFF)
          {
            v51 = 255;
          }

          else
          {
            v51 = v50;
          }

          if (v50 <= 0)
          {
            v52 = 0;
          }

          else
          {
            v52 = v51;
          }

          if (v31 < v33)
          {
            LOWORD(v38) = v52;
          }

          v44 = result[v9];
          v53 = (((v40 + v44 + 1) >> 1) - v41 - v46) >> 1;
          if (v53 >= v34)
          {
            v54 = a5 >> 1;
          }

          else
          {
            v54 = (((v40 + v44 + 1) >> 1) - v41 - v46) >> 1;
          }

          if (v53 <= v35)
          {
            v55 = -(a5 >> 1);
          }

          else
          {
            v55 = v54;
          }

          v56 = v55 + v41;
          if (v56 >= 0xFF)
          {
            v57 = 255;
          }

          else
          {
            v57 = v56;
          }

          if (v56 <= 0)
          {
            v58 = 0;
          }

          else
          {
            v58 = v57;
          }

          if (v32 < v33)
          {
            LOWORD(v41) = v58;
          }

          v59 = v46 + v39;
          if (v59 >= 0xFF)
          {
            v60 = 255;
          }

          else
          {
            v60 = v59;
          }

          if (v59 <= 0)
          {
            v61 = 0;
          }

          else
          {
            v61 = v60;
          }

          v62 = v40 - v46;
          if (v62 >= 0xFF)
          {
            v63 = 255;
          }

          else
          {
            v63 = v62;
          }

          result[-2 * a3] = v38;
          result[-a3] = v61;
          if (v62 <= 0)
          {
            v64 = 0;
          }

          else
          {
            v64 = v63;
          }

          *result = v64;
          result[a3] = v41;
        }

        result = (result + v36);
        --v37;
      }

      while (v37);
    }

    else
    {
      v65 = 2 * a5;
      v66 = 2 * a2;
      v67 = 4;
      do
      {
        v68 = result[-3 * a3];
        v69 = result[-2 * a3];
        v70 = result[-a3];
        v71 = result[a3];
        v72 = result[v9];
        v73 = result[3 * a3];
        LOWORD(v74) = v65 + v68;
        v75 = *result;
        v76 = v75 + v70;
        v77 = v69 + 4;
        v78 = (v69 + 4 + 2 * result[-4 * a3] + 3 * v68 + v75 + v70) >> 3;
        if (v78 < v65 + v68)
        {
          v74 = (v69 + 4 + 2 * result[-4 * a3] + 3 * v68 + v75 + v70) >> 3;
        }

        if (v78 <= v68 - v65)
        {
          v79 = v68 - v65;
        }

        else
        {
          v79 = v74;
        }

        result[-3 * a3] = v79;
        v80 = v69 - v65;
        LOWORD(v81) = v65 + v69;
        v82 = (v76 + v69 + v68 + 2) >> 2;
        if (v82 < v65 + v69)
        {
          v81 = (v76 + v69 + v68 + 2) >> 2;
        }

        if (v82 > v80)
        {
          LOWORD(v80) = v81;
        }

        result[-2 * a3] = v80;
        v83 = v70 - v65;
        v84 = (v68 + 2 * v70 + 2 * v69 + 2 * v75 + v71 + 4) >> 3;
        if (v84 >= v65 + v70)
        {
          v85 = v65 + v70;
        }

        else
        {
          v85 = v84;
        }

        if (v84 > v83)
        {
          LOWORD(v83) = v85;
        }

        result[-a3] = v83;
        v86 = v75 - v65;
        LOWORD(v87) = v65 + v75;
        v88 = (v77 + 2 * v70 + 2 * v75 + 2 * v71 + v72) >> 3;
        if (v88 < v65 + v75)
        {
          v87 = (v77 + 2 * v70 + 2 * v75 + 2 * v71 + v72) >> 3;
        }

        if (v88 > v86)
        {
          LOWORD(v86) = v87;
        }

        *result = v86;
        v89 = v71 - v65;
        LOWORD(v90) = v65 + v71;
        v91 = v72 + v71 + v76;
        v92 = (v91 + 2) >> 2;
        if (v92 < v65 + v71)
        {
          v90 = (v91 + 2) >> 2;
        }

        if (v92 > v89)
        {
          LOWORD(v89) = v90;
        }

        result[a3] = v89;
        v93 = v72 - v65;
        v94 = v65 + v72;
        v95 = (v91 + 2 * v72 + 2 * v73 + 4) >> 3;
        if (v95 >= v94)
        {
          v96 = v94;
        }

        else
        {
          v96 = v95;
        }

        if (v95 <= v93)
        {
          v97 = v93;
        }

        else
        {
          v97 = v96;
        }

        result[v9] = v97;
        result = (result + v66);
        --v67;
      }

      while (v67);
    }
  }

  return result;
}

__int16 *sub_277444D68(__int16 *result, uint64_t a2, unsigned int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v9 = result;
    for (i = 0; i < a5; i += 4)
    {
      sub_277444880(v9, 2, a2, a3, a4);
      result = sub_277444880(v9 + 1, 2, a2, a3, a4);
      v9 += 8;
    }
  }

  return result;
}

uint64_t sub_277444DF8(uint64_t result, int a2)
{
  v2 = sub_2774E1604;
  if (a2)
  {
    v2 = sub_2774E19C8;
  }

  *(result + 72) = sub_2774E10D8;
  *(result + 80) = v2;
  return result;
}

char *sub_277444E30(char *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v5 = i >> 1;
      v6 = *(a3 + (v5 & 0x3FFFFFFE));
      v7 = *(result - 2);
      v8 = *result;
      v9 = *(result - 4) - result[2] + 4 * (v8 - v7) + 4;
      v10 = v9 >> 3;
      if (v9 >> 3 >= v6)
      {
        v10 = *(a3 + (v5 & 0x3FFFFFFE));
      }

      if ((v6 + (v9 >> 3) < 0) ^ __OFADD__(v6, v9 >> 3) | (v6 + (v9 >> 3) == 0))
      {
        v11 = -v6;
      }

      else
      {
        v11 = v10;
      }

      v12 = v11 + v7;
      if ((v11 + v7) >= 0xFF)
      {
        v13 = -1;
      }

      else
      {
        v13 = v11 + v7;
      }

      if (v12 <= 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      *(result - 2) = v14;
      v15 = v8 - v11;
      if (v15 >= 0xFF)
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
      }

      if (v15 <= 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      *result = v17;
      v18 = *(a3 + (v5 | 1));
      v19 = *(result - 1);
      v20 = result[1];
      v21 = *(result - 3) - result[3] + 4 * (v20 - v19) + 4;
      v22 = v21 >> 3;
      if (v21 >> 3 >= v18)
      {
        v22 = v18;
      }

      if ((v18 + (v21 >> 3) < 0) ^ __OFADD__(v18, v21 >> 3) | (v18 + (v21 >> 3) == 0))
      {
        v23 = -v18;
      }

      else
      {
        v23 = v22;
      }

      v24 = v23 + v19;
      if ((v23 + v19) >= 0xFF)
      {
        v25 = -1;
      }

      else
      {
        v25 = v23 + v19;
      }

      if (v24 <= 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25;
      }

      *(result - 1) = v26;
      v27 = v20 - v23;
      if (v27 >= 0xFF)
      {
        v28 = -1;
      }

      else
      {
        v28 = v27;
      }

      if (v27 <= 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      result[1] = v29;
      result += a2;
    }
  }

  return result;
}

char *sub_277444F38(char *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v5 = *(a3 + (i & 0x7FFFFFFE));
      v6 = *(result - 2);
      v7 = *result;
      v8 = *(result - 4) - result[2] + 4 * (v7 - v6) + 4;
      v9 = v8 >> 3;
      if (v8 >> 3 >= v5)
      {
        v9 = *(a3 + (i & 0x7FFFFFFE));
      }

      if ((v5 + (v8 >> 3) < 0) ^ __OFADD__(v5, v8 >> 3) | (v5 + (v8 >> 3) == 0))
      {
        v10 = -v5;
      }

      else
      {
        v10 = v9;
      }

      v11 = v10 + v6;
      if ((v10 + v6) >= 0xFF)
      {
        v12 = -1;
      }

      else
      {
        v12 = v10 + v6;
      }

      if (v11 <= 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      *(result - 2) = v13;
      v14 = v7 - v10;
      if (v14 >= 0xFF)
      {
        v15 = -1;
      }

      else
      {
        v15 = v14;
      }

      if (v14 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      *result = v16;
      v17 = *(a3 + (i & 0xFFFFFFFE) + 1);
      v18 = *(result - 1);
      v19 = result[1];
      v20 = *(result - 3) - result[3] + 4 * (v19 - v18) + 4;
      v21 = v20 >> 3;
      if (v20 >> 3 >= v17)
      {
        v21 = *(a3 + (i & 0xFFFFFFFE) + 1);
      }

      if ((v17 + (v20 >> 3) < 0) ^ __OFADD__(v17, v20 >> 3) | (v17 + (v20 >> 3) == 0))
      {
        v22 = -v17;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22 + v18;
      if ((v22 + v18) >= 0xFF)
      {
        v24 = -1;
      }

      else
      {
        v24 = v22 + v18;
      }

      if (v23 <= 0)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      *(result - 1) = v25;
      v26 = v19 - v22;
      if (v26 >= 0xFF)
      {
        v27 = -1;
      }

      else
      {
        v27 = v26;
      }

      if (v26 <= 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      result[1] = v28;
      result += a2;
    }
  }

  return result;
}

char *sub_27744503C(char *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = result + 1;
    v6 = a4;
    do
    {
      v7 = v4 >> 1;
      v8 = *(a3 + (v7 & 0x3FFFFFFE));
      result = &v5[-a2];
      v9 = v5[-a2 - 1];
      v10 = *(v5 - 1);
      v11 = v5[-2 * a2 - 1] - v5[a2 - 1] + 4 * (v10 - v9) + 4;
      v12 = v11 >> 3;
      if (v11 >> 3 >= v8)
      {
        v12 = *(a3 + (v7 & 0x3FFFFFFE));
      }

      if ((v8 + (v11 >> 3) < 0) ^ __OFADD__(v8, v11 >> 3) | (v8 + (v11 >> 3) == 0))
      {
        v13 = -v8;
      }

      else
      {
        v13 = v12;
      }

      v14 = v13 + v9;
      if ((v13 + v9) >= 0xFF)
      {
        v15 = -1;
      }

      else
      {
        v15 = v13 + v9;
      }

      if (v14 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      *(result - 1) = v16;
      v17 = v10 - v13;
      if (v17 >= 0xFF)
      {
        v18 = -1;
      }

      else
      {
        v18 = v17;
      }

      if (v17 <= 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      *(v5 - 1) = v19;
      v20 = *(a3 + (v7 | 1));
      v21 = *result;
      v22 = *v5;
      v23 = v5[-2 * a2] - v5[a2] + 4 * (v22 - v21) + 4;
      v24 = v23 >> 3;
      if (v23 >> 3 >= v20)
      {
        v24 = v20;
      }

      if ((v20 + (v23 >> 3) < 0) ^ __OFADD__(v20, v23 >> 3) | (v20 + (v23 >> 3) == 0))
      {
        v25 = -v20;
      }

      else
      {
        v25 = v24;
      }

      v26 = v25 + v21;
      if ((v25 + v21) >= 0xFF)
      {
        v27 = -1;
      }

      else
      {
        v27 = v25 + v21;
      }

      if (v26 <= 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      *result = v28;
      v29 = v22 - v25;
      if (v29 >= 0xFF)
      {
        v30 = -1;
      }

      else
      {
        v30 = v29;
      }

      if (v29 <= 0)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      *v5 = v31;
      v5 += 2;
      ++v4;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_277445158(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = (result + 1);
    v6 = a4;
    do
    {
      v7 = *(a3 + (v4 & 0x7FFFFFFE));
      v8 = &v5[-a2];
      v9 = v5[-a2 - 1];
      v10 = *(v5 - 1);
      v11 = v5[-2 * a2 - 1] - v5[a2 - 1] + 4 * (v10 - v9) + 4;
      v12 = v11 >> 3;
      if (v11 >> 3 >= v7)
      {
        v12 = *(a3 + (v4 & 0x7FFFFFFE));
      }

      if ((v7 + (v11 >> 3) < 0) ^ __OFADD__(v7, v11 >> 3) | (v7 + (v11 >> 3) == 0))
      {
        v13 = -v7;
      }

      else
      {
        v13 = v12;
      }

      v14 = v13 + v9;
      if ((v13 + v9) >= 0xFF)
      {
        v15 = -1;
      }

      else
      {
        v15 = v13 + v9;
      }

      if (v14 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      *(v8 - 1) = v16;
      v17 = v10 - v13;
      if (v17 >= 0xFF)
      {
        v18 = -1;
      }

      else
      {
        v18 = v17;
      }

      if (v17 <= 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      *(v5 - 1) = v19;
      v20 = *(a3 + (v4 & 0xFFFFFFFE) + 1);
      v21 = *v8;
      result = *v5;
      v22 = v5[-2 * a2] - v5[a2] + 4 * (result - v21) + 4;
      v23 = v22 >> 3;
      if (v22 >> 3 >= v20)
      {
        v23 = *(a3 + (v4 & 0xFFFFFFFE) + 1);
      }

      if ((v20 + (v22 >> 3) < 0) ^ __OFADD__(v20, v22 >> 3) | (v20 + (v22 >> 3) == 0))
      {
        v24 = -v20;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 + v21;
      if ((v24 + v21) >= 0xFF)
      {
        v26 = -1;
      }

      else
      {
        v26 = v24 + v21;
      }

      if (v25 <= 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }

      *v8 = v27;
      v28 = result - v24;
      if (v28 >= 0xFF)
      {
        v29 = -1;
      }

      else
      {
        v29 = v28;
      }

      if (v28 <= 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      *v5 = v30;
      v5 += 2;
      ++v4;
    }

    while (v6 != v4);
  }

  return result;
}

void *sub_277445270(void *result, uint64_t a2)
{
  v2 = sub_277446304;
  v3 = sub_277446E88;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_277446304;
    v3 = sub_277446E88;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_277446A40;
      v3 = sub_277447434;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_277446144;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_277445334;
  result[7] = sub_277445334;
  return result;
}

void sub_277445334(uint64_t a1, int a2, int a3, int a4, int a5, char *a6)
{
  v97 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8);
  bzero(a6, 0x380uLL);
  v82 = v10;
  v74 = v10[96];
  v11 = *(a1 + 32);
  v12 = *(v11 + 14);
  LODWORD(v11) = *(v11 + 15);
  memset(v96, 0, sizeof(v96));
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  v75 = a4;
  v76 = a5;
  v79 = a2;
  v77 = a2 >> 3;
  v13 = (a4 >> 3);
  v89 = 2 * v11;
  v90 = 2 * v12;
  memset(v91, 0, sizeof(v91));
  v86 = (a5 >> 3);
  if (v86 >= 1)
  {
    v14 = 0;
    v87 = a6 + 768;
    v83 = v96;
    v84 = v95;
    v81 = (a4 >> 3);
    do
    {
      if (v13 >= 1)
      {
        v15 = v81;
        v16 = a3 + 8 * v14;
        v17 = v83;
        v18 = (v82[97] + 2 * v77 + 2 + 2 * v82[96] * (v16 >> 3));
        v19 = v87;
        v20 = v84;
        v21 = v79 + 8;
        do
        {
          v22 = (**a1)(a1, (v21 >> *(*(a1 + 16) + 2113)), (v16 >> *(*(a1 + 16) + 2113)));
          v23 = (*(v18 - 1) >> 9) + (*v18 >> 9) + 1;
          *v17 = *(v22 + 661) + (v23 >> 1) - 2;
          v17 += 8;
          v24 = *(v22 + 660) + (v23 >> 1);
          if (v24 >= 51)
          {
            v24 = 51;
          }

          if (v24 <= 15)
          {
            v24 = 15;
          }

          *v19 = byte_27753C6D3[v24 - 15];
          v19 += 8;
          v25 = *(v22 + 661) + 2;
          v26 = (v23 + v90) >> 1;
          if (v26 >= 51)
          {
            LOBYTE(v26) = 51;
          }

          *(v20 - 64) = v25 + v26;
          v27 = (v23 + v89) >> 1;
          if (v27 >= 51)
          {
            LOBYTE(v27) = 51;
          }

          *v20 = v25 + v27;
          v20 += 8;
          v21 += 8;
          ++v18;
          --v15;
        }

        while (v15);
      }

      ++v87;
      v83 = (v83 + 1);
      v84 = (v84 + 1);
      ++v14;
      v13 = v81;
    }

    while (v14 != v86);
  }

  v28 = a3;
  v29 = a3 == 0;
  if (v86 > v29)
  {
    v30 = v91 | (8 * (a3 == 0));
    v85 = a3 == 0;
    v31 = &a6[8 * v85 + 832];
    v32 = v93 & 0xFFFFFFFFFFFFFFF7 | (8 * v85);
    do
    {
      if (v13 >= 1)
      {
        v33 = 0;
        v88 = a3 + 8 * v85;
        v34 = v82[96] * (v88 >> 3);
        v35 = v82[97];
        v36 = v35 + 2 * v34 + 2 * (v79 >> 3);
        v37 = v35 + 2 * v77 - 2 * v74 + 2 * v34;
        v38 = v79;
        do
        {
          v39 = v31;
          v40 = (**a1)(a1, (v38 >> *(*(a1 + 16) + 2113)), (v88 >> *(*(a1 + 16) + 2113)));
          v31 = v39;
          v41 = (*(v37 + 2 * v33) >> 9) + (*(v36 + 2 * v33) >> 9) + 1;
          *(v32 + v33) = *(v40 + 661) + (v41 >> 1) - 2;
          v42 = *(v40 + 660) + (v41 >> 1);
          if (v42 >= 51)
          {
            v42 = 51;
          }

          if (v42 <= 15)
          {
            v42 = 15;
          }

          v39[v33] = byte_27753C6D3[v42 - 15];
          v43 = *(v40 + 661) + 2;
          v44 = (v41 + v90) >> 1;
          if (v44 >= 51)
          {
            LOBYTE(v44) = 51;
          }

          *(v30 + v33) = v43 + v44;
          v45 = (v41 + v89) >> 1;
          if (v45 >= 51)
          {
            LOBYTE(v45) = 51;
          }

          *(v30 + v33++ + 64) = v43 + v45;
          v38 += 8;
        }

        while (v13 != v33);
      }

      v30 += 8;
      v31 += 8;
      v32 += 8;
      ++v85;
    }

    while (v85 != v86);
    v28 = a3;
    v29 = a3 == 0;
  }

  if (v13 >= 1)
  {
    v46 = 0;
    v47 = (v76 >> 2);
    v48 = a6;
    v49 = (a6 + 257);
    do
    {
      if (v47 >= 1)
      {
        v50 = 0;
        v51 = v82[121] + v82[117] * ((v79 + 8 + 8 * v46) >> 3) + (v28 >> 2);
        do
        {
          if (*(v51 + v50))
          {
            v52 = *(v96 + 8 * v46 + (v50 >> 1)) + 2 * *(v51 + v50);
            if (v52 >= 53)
            {
              v52 = 53;
            }

            if (v52 <= 17)
            {
              v52 = 17;
            }

            v48[v50] = byte_27753C704[v52 - 17];
          }

          ++v50;
        }

        while (v47 != v50);
        v53 = 0;
        v54 = v49;
        do
        {
          if (*(v51 + v53) >= 2u)
          {
            v55 = v53 >> 1;
            v56 = *(v94 + 8 * v46 + v55);
            if (v56 >= 53)
            {
              v56 = 53;
            }

            if (v56 <= 17)
            {
              v56 = 17;
            }

            v57 = byte_27753C704[v56 - 17];
            v58 = *(v95 + 8 * v46 + v55);
            if (v58 >= 53)
            {
              v58 = 53;
            }

            if (v58 <= 17)
            {
              v58 = 17;
            }

            v59 = byte_27753C704[v58 - 17];
            *(v54 - 1) = v57;
            *v54 = v59;
          }

          ++v53;
          v54 += 2;
        }

        while (v47 != v53);
      }

      ++v46;
      v48 += 16;
      v49 += 32;
    }

    while (v46 != v13);
  }

  if (v86 > v29)
  {
    v60 = v28 == 0;
    v61 = (v75 >> 2);
    v62 = &a6[16 * v60 + 128];
    v63 = &a6[32 * v60 + 513];
    do
    {
      if (v61 >= 1)
      {
        v64 = 0;
        v65 = v82[118] + v82[116] * ((v28 + 8 * v60) >> 3) + (v79 >> 2);
        do
        {
          if (*(v65 + v64))
          {
            v66 = *(v93 + 8 * v60 + (v64 >> 1)) + 2 * *(v65 + v64);
            if (v66 >= 53)
            {
              v66 = 53;
            }

            if (v66 <= 17)
            {
              v66 = 17;
            }

            v62[v64] = byte_27753C704[v66 - 17];
          }

          ++v64;
        }

        while (v61 != v64);
        v67 = 0;
        v68 = v63;
        do
        {
          if (*(v65 + v67) >= 2u)
          {
            v69 = v67 >> 1;
            v70 = *(v91 + 8 * v60 + v69);
            if (v70 >= 53)
            {
              v70 = 53;
            }

            if (v70 <= 17)
            {
              v70 = 17;
            }

            v71 = byte_27753C704[v70 - 17];
            v72 = *(v92 + 8 * v60 + v69);
            if (v72 >= 53)
            {
              v72 = 53;
            }

            if (v72 <= 17)
            {
              v72 = 17;
            }

            v73 = byte_27753C704[v72 - 17];
            *(v68 - 1) = v71;
            *v68 = v73;
          }

          ++v67;
          v68 += 2;
        }

        while (v61 != v67);
      }

      ++v60;
      v62 += 16;
      v63 += 32;
    }

    while (v60 != v86);
  }
}

unsigned __int8 *sub_277445A14(uint64_t a1, int a2, int a3, int a4, int a5, char *a6)
{
  v110 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 8);
  v99 = *(a1 + 661);
  v12 = v99 + 2;
  v13 = *(a1 + 660);
  bzero(a6, 0x2F0uLL);
  v14 = *(v11 + 768);
  v15 = *(a1 + 32);
  v16 = *(v15 + 14);
  v17 = *(v15 + 15);
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v105, 0, sizeof(v105));
  memset(&v104[6], 0, 48);
  if (a2)
  {
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
  }

  v101 = v18;
  v102 = a3;
  if (a3)
  {
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
  }

  v96 = a4;
  v97 = a2;
  v93 = a5;
  v94 = a4 + a2 < *(v11 + 520);
  v92 = a5 + a3 < *(v11 + 524);
  v20 = (a5 >> 3);
  result = byte_27753C6D3;
  v22 = (a4 >> 3);
  memset(v104, 0, 96);
  v103 = v19;
  if (v20 > v19)
  {
    v23 = a2 == 0;
    v100 = a2 >> 3;
    v24 = v19 << 63 >> 63;
    do
    {
      v25 = v24 + 1;
      if (v22 > v23)
      {
        v26 = *(v11 + 800) + 2 * *(v11 + 768) * ((v102 + 8 * v24) >> 3) + 2 * v100;
        v27 = v23;
        do
        {
          v28 = (*(v26 + 2 * v27 - 2) >> 9) + (*(v26 + 2 * v27) >> 9) + 1;
          *(v108 + 9 * v27 + v25) = v99 - 2 + (v28 >> 1);
          v29 = v13 + (v28 >> 1);
          if (v29 >= 51)
          {
            v29 = 51;
          }

          if (v29 <= 15)
          {
            v29 = 15;
          }

          a6[10 * v27 + 592 + v25] = byte_27753C6D3[v29 - 15];
          if ((v27 & 1) == 0)
          {
            v30 = 0;
            v31 = 1;
            v32 = v16;
            do
            {
              v33 = v31;
              v34 = (v28 + 2 * v32) >> 1;
              if (v34 >= 30)
              {
                if (v34 < 0x3A)
                {
                  LOBYTE(v34) = byte_27753C740[v34 - 30];
                }

                else
                {
                  LOBYTE(v34) = v34 - 6;
                }
              }

              v31 = 0;
              *(v105 + 72 * v30 + 9 * (v27 >> 1) + v25) = v34 + v12;
              v32 = v17;
              v30 = 1;
            }

            while ((v33 & 1) != 0);
          }

          ++v27;
        }

        while (v27 != v22);
      }

      v24 = v25;
    }

    while (v25 != v20);
  }

  v35 = v102;
  v95 = v102 == 0;
  if (v20 > v95)
  {
    v36 = v102 == 0;
    v37 = a4 >> 3;
    do
    {
      if (v22 > v101)
      {
        v38 = *(v11 + 800) + 2 * *(v11 + 768) * ((v102 + 8 * v36) >> 3) + 2 * (v97 >> 3);
        v39 = v101 << 63 >> 63;
        do
        {
          v40 = (*(v38 + 2 * (v39 - v14)) >> 9) + (*(v38 + 2 * v39) >> 9) + 1;
          ++v39;
          *(v106 + 9 * v36 + v39) = v99 - 2 + (v40 >> 1);
          v41 = v13 + (v40 >> 1);
          if (v41 >= 51)
          {
            v41 = 51;
          }

          if (v41 <= 15)
          {
            v41 = 15;
          }

          a6[10 * v36 + 672 + v39] = byte_27753C6D3[v41 - 15];
          if ((v36 & 1) == 0)
          {
            v42 = 0;
            v43 = 1;
            v44 = v16;
            do
            {
              v45 = v43;
              v46 = (v40 + 2 * v44) >> 1;
              if (v46 >= 30)
              {
                if (v46 < 0x3A)
                {
                  LOBYTE(v46) = byte_27753C740[v46 - 30];
                }

                else
                {
                  LOBYTE(v46) = v46 - 6;
                }
              }

              v43 = 0;
              *(v104 + 72 * v42 + 9 * (v36 >> 1) + v39) = v46 + v12;
              v44 = v17;
              v42 = 1;
            }

            while ((v45 & 1) != 0);
          }
        }

        while (v39 != v37);
      }

      ++v36;
    }

    while (v36 != v20);
    v35 = v102;
  }

  if (v22 > (v97 == 0))
  {
    v47 = (v93 >> 2) - v92;
    v48 = v97 == 0;
    result = v105;
    v49 = &a6[20 * v48];
    v50 = (v35 >> 2) - (v103 & 1);
    do
    {
      v51 = *(v11 + 936) * ((v97 + 8 * v48) >> 3);
      v52 = *(v11 + 968);
      if (v47 > v103)
      {
        v53 = (v52 + v50 + v51);
        v54 = 2 - (v103 & 1);
        v55 = (v103 & 1) + v47;
        do
        {
          v57 = *v53++;
          v56 = v57;
          if (v57)
          {
            v58 = *(v108 + 9 * v48 + (v54 >> 1)) + 2 * v56;
            if (v58 >= 53)
            {
              v58 = 53;
            }

            if (v58 <= 17)
            {
              v58 = 17;
            }

            v49[v54] = byte_27753C704[v58 - 17];
          }

          ++v54;
          --v55;
        }

        while (v55);
      }

      if ((v48 & 1) == 0 && v47 > v103)
      {
        v59 = v48 >> 1;
        v60 = &a6[34 * v59 + 323 + 2 * (v103 << 63 >> 63)];
        v61 = (v52 + v50 + v51);
        v62 = v103 + 2;
        v63 = (v103 & 1) + v47;
        do
        {
          v64 = *v61++;
          if (v64 >= 2)
          {
            v65 = *(v105 + 9 * v59 + (v62 >> 1));
            if (v65 >= 53)
            {
              v65 = 53;
            }

            if (v65 <= 17)
            {
              v65 = 17;
            }

            v66 = byte_27753C704[v65 - 17];
            v67 = *(&v105[4] + 9 * v59 + (v62 >> 1) + 8);
            if (v67 >= 53)
            {
              v67 = 53;
            }

            if (v67 <= 17)
            {
              v67 = 17;
            }

            v68 = byte_27753C704[v67 - 17];
            *(v60 - 1) = v66;
            *v60 = v68;
          }

          v60 += 2;
          ++v62;
          --v63;
        }

        while (v63);
      }

      ++v48;
      v49 += 20;
    }

    while (v48 != v22);
  }

  if (v20 > v95)
  {
    v69 = (v96 >> 2) - v94;
    v70 = v35 == 0;
    v71 = &a6[20 * v70 - (v101 & 1) + 162];
    result = (v101 + 2);
    v72 = (v97 >> 2) - (v101 & 1);
    do
    {
      v73 = *(v11 + 928) * ((v35 + 8 * v70) >> 3);
      v74 = *(v11 + 944);
      if (v69 > v101)
      {
        v75 = (v74 + v72 + v73);
        v76 = v101 + 2;
        v77 = v71;
        v78 = (v101 & 1) + v69;
        do
        {
          v80 = *v75++;
          v79 = v80;
          if (v80)
          {
            v81 = *(v106 + 9 * v70 + (v76 >> 1)) + 2 * v79;
            if (v81 >= 53)
            {
              v81 = 53;
            }

            if (v81 <= 17)
            {
              v81 = 17;
            }

            *v77 = byte_27753C704[v81 - 17];
          }

          ++v77;
          ++v76;
          --v78;
        }

        while (v78);
      }

      if ((v70 & 1) == 0 && v69 > v101)
      {
        v82 = v70 >> 1;
        v83 = &a6[34 * v82 + 459 + 2 * (v101 << 63 >> 63)];
        v84 = (v74 + v72 + v73);
        v85 = v101 + 2;
        v86 = (v101 & 1) + v69;
        do
        {
          v87 = *v84++;
          if (v87 >= 2)
          {
            v88 = *(v104 + 9 * v82 + (v85 >> 1));
            if (v88 >= 53)
            {
              v88 = 53;
            }

            if (v88 <= 17)
            {
              v88 = 17;
            }

            v89 = byte_27753C704[v88 - 17];
            v90 = *(&v104[4] + 9 * v82 + (v85 >> 1) + 8);
            if (v90 >= 53)
            {
              v90 = 53;
            }

            if (v90 <= 17)
            {
              v90 = 17;
            }

            v91 = byte_27753C704[v90 - 17];
            *(v83 - 1) = v89;
            *v83 = v91;
          }

          v83 += 2;
          ++v85;
          --v86;
        }

        while (v86);
      }

      ++v70;
      v71 += 20;
    }

    while (v70 != v20);
  }

  return result;
}

uint64_t sub_277446144(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = (v7 - v10);
  }

  else
  {
    v12 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v13 = (v8 - v11);
  }

  else
  {
    v13 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v12, v13, v30);
  v15 = *(v6 + 416);
  v29 = *(v6 + 400);
  v16 = (v15 * v11 + v10) << *(v6 + 531);
  v17 = (v12 >> 3);
  if (v17 > (v10 == 0))
  {
    v18 = v10 == 0;
    v19 = v17 - v18;
    v20 = &v30[10 * v18];
    v21 = &v30[5 * v18 + 296];
    v22 = v29 + v16 + 16 * v18 - 16 * v15;
    do
    {
      result = (*(a1 + 72))(v22, v15, v21, v20, (v13 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 16;
      --v19;
    }

    while (v19);
  }

  v23 = (v13 >> 3);
  if (v23 > (v11 == 0))
  {
    v24 = v11 == 0;
    v25 = v23 - v24;
    v26 = &v30[10 * v24 + 80];
    v27 = &v30[5 * v24 + 336];
    v28 = v16 + 16 * v15 * v24 + v29 - 16;
    do
    {
      result = (*(a1 + 80))(v28, v15, v27, v26, (v12 + 8));
      v26 += 10;
      v27 += 5;
      v28 += 16 * v15;
      --v25;
    }

    while (v25);
  }

  return result;
}

unint64_t sub_277446304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = MEMORY[0x28223BE20](a1);
  v69 = result;
  v70 = *(v66 + 8);
  v71 = *(v66 + 16);
  v72 = *(v70 + 520);
  v73 = *(v70 + 524);
  v74 = *(v70 + 416);
  v75 = *(v70 + 424);
  v139 = v70;
  v140 = v66;
  v76 = *(v71 + 2117);
  v77 = *(v71 + 2113);
  v78 = v67 << v77;
  v79 = v68 << v77;
  v80 = (v68 << v77) - 16;
  v130 = v72;
  if (*(v71 + 2120) - 1 == v67)
  {
    v81 = v79 < 16;
    if (v79 >= 16)
    {
      v82 = 0;
    }

    else
    {
      v82 = v80;
    }

    v83 = v82 + v76;
    if (v81)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    v85 = (v78 - 1) & 0xFFFFFFC0;
    if (v78 <= 63)
    {
      v85 = 0;
    }

    v131 = v85;
    v133 = v72 - v85;
    v86 = v83 + v84 - 8;
    if (v83 + v84 < 8)
    {
      v86 = 0;
    }

    *(result + 120) = v86;
    if (*(*(v66 + 16) + 2124) - 1 == v68)
    {
      v83 = v73 - v84;
      *(result + 120) = v73;
    }
  }

  else
  {
    if (!v67 || (v78 & 0x3F) != 0)
    {
      return result;
    }

    v87 = v79 < 16;
    if (v79 >= 16)
    {
      v88 = 0;
    }

    else
    {
      v88 = v80;
    }

    v83 = v88 + v76;
    if (v87)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    if (v78 >= 64)
    {
      v89 = v78 - 64;
    }

    else
    {
      v89 = 0;
    }

    v131 = v89;
    if (v78 >= 64)
    {
      v78 = 64;
    }

    v133 = v78;
    v90 = v73 - v84;
    if (*(v71 + 2124) - 1 == v68)
    {
      v83 = v90;
    }
  }

  if (v83 >= 1)
  {
    v91 = 0;
    vars8 = &STACK[0x420];
    v122 = v84;
    vars0 = &a65;
    v132 = 16 * v74;
    v92 = 16 * v75;
    v121 = v83;
    v123 = v83;
    do
    {
      if (v83 - v91 >= 64)
      {
        v93 = 64;
      }

      else
      {
        v93 = (v83 - v91);
      }

      v124 = v91;
      v145 = v91 + v122;
      v94 = v91 + v122 - 8;
      if (!(v91 + v122))
      {
        v94 = 0;
      }

      v144 = v94;
      v95 = v93 + 8;
      if (!(v91 + v122))
      {
        v95 = v93;
      }

      v143 = v95;
      if (v133 >= 1)
      {
        v96 = 0;
        v97 = v145 == 0;
        v141 = (v93 >> 3);
        v142 = v145 == 0;
        v128 = v92 * v97;
        v129 = v132 * v97;
        v127 = &STACK[0x320] + 4 * v97;
        do
        {
          if (v133 - v96 >= 64)
          {
            v98 = 64;
          }

          else
          {
            v98 = (v133 - v96);
          }

          v99 = v96 + v131;
          v138 = v96;
          v146 = v98 + v131 + v96;
          v100 = *(v139 + 416);
          v134 = *(v139 + 400);
          v101 = *(v139 + 531);
          (*(v69 + 48))(v140, v99, v145, v98, v93, &a33);
          if (v146 >= v130)
          {
            v102 = v98;
          }

          else
          {
            v102 = v98 + 8;
          }

          v103 = (v99 + v100 * v145) << v101;
          v104 = v98 >> 3;
          if (v146 >= v130)
          {
            v105 = v104;
          }

          else
          {
            v105 = v104 + 1;
          }

          v137 = v99;
          v136 = v102;
          sub_2774467E4(&STACK[0x4A0], v140, v99, v144, v102, v143, 0);
          v147 = v105;
          if (v105 >= 2)
          {
            v106 = v105 - 1;
            v107 = v134 + v103 + 16;
            v108 = &a33;
            v109 = &STACK[0x420];
            do
            {
              (*(v69 + 72))(v107, v74, v109, v108, v93);
              v108 += 16;
              ++v109;
              v107 += 16;
              --v106;
            }

            while (v106);
          }

          sub_27744689C(&STACK[0x4A0]);
          if (v141 > v142)
          {
            v110 = &STACK[0x460] + (v145 == 0);
            v111 = v134 + v129 + v103;
            v112 = &a49 + 2 * (v145 == 0);
            v113 = (__PAIR128__(v141, v145) - 1) >> 64;
            do
            {
              (*(v69 + 80))(v111, v74, v110, v112, v98);
              v112 += 2;
              ++v110;
              v111 += v132;
              --v113;
            }

            while (v113);
          }

          sub_27744689C(&STACK[0x4A0]);
          v135 = *(v139 + 408);
          v114 = (*(v139 + 424) * v145 + 2 * v137) << *(v139 + 531);
          sub_2774467E4(&STACK[0x4A0], v140, v137, v144, v136, v143, 1u);
          v92 = 16 * v75;
          if (v147 >= 2)
          {
            v115 = v147 - 1;
            v116 = v135 + v114 + 32;
            v117 = &a65;
            do
            {
              (*(v69 + 88))(v116, v75, v117, v93);
              v117 += 4;
              v116 += 32;
              --v115;
            }

            while (v115);
          }

          sub_27744689C(&STACK[0x4A0]);
          if (v141 > v142)
          {
            v118 = v127;
            v119 = v135 + v128 + v114;
            v120 = (__PAIR128__(v141, v145) - 1) >> 64;
            do
            {
              (*(v69 + 96))(v119, v75, v118, v98);
              v118 += 4;
              v119 += 16 * v75;
              --v120;
            }

            while (v120);
          }

          result = sub_27744689C(&STACK[0x4A0]);
          v96 = v138 + 64;
        }

        while (v138 + 64 < v133);
      }

      v91 = v124 + 64;
      v83 = v123;
    }

    while (v124 + 64 < v121);
  }

  return result;
}

void *sub_2774467E4(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  __dst[18432] = a2;
  *(__dst + 36866) = a3;
  *(__dst + 36867) = a4;
  *(__dst + 36868) = a5;
  *(__dst + 36869) = a6;
  *(__dst + 36870) = a7;
  if (a6 >= 1)
  {
    v7 = __dst;
    v8 = *(a2 + 8);
    v9 = v8 + 8 * a7;
    v10 = *(v9 + 416);
    v11 = (*(v9 + 400) + ((v10 * a4 + (a3 << a7)) << *(v8 + 531)));
    v12 = 2 * (a5 << (a7 != 0));
    v13 = a6;
    v14 = 2 * v10;
    do
    {
      __dst = memcpy(v7, v11, v12);
      v11 += v14;
      v7 += v12;
      --v13;
    }

    while (v13);
  }

  return __dst;
}

unint64_t sub_27744689C(unint64_t result)
{
  v1 = (result + 147456);
  v2 = *(result + 147476);
  v3 = *(result + 147480);
  v22 = *(result + 147480) != 0;
  if (v2 >= 1)
  {
    v4 = result;
    LODWORD(result) = 0;
    v5 = *(*v1 + 8);
    v6 = v5 + 8 * v3;
    v7 = *(v6 + 416);
    v8 = *(*(*v1 + 32) + 19);
    v9 = v1[4];
    v10 = *(v6 + 400) + ((v7 * v1[3] + (v1[2] << v3)) << *(v5 + 531));
    v19 = 16 * (v9 << v22);
    v20 = 16 * v7;
    v24 = *(*(*v1 + 16) + 283);
    v11 = 2 * (v9 << v22);
    v12 = 2 * v7;
    v21 = v8;
    do
    {
      if (v9 >= 1)
      {
        v13 = 0;
        v23 = result;
        do
        {
          v14 = (v1[2] + v13) >> 3;
          v15 = *(*(*v1 + 8) + 776) + 2 * *(*(*v1 + 8) + 768) * ((v1[3] + result) >> 3);
          if (v8 && (*(v15 + 2 * v14) & 0x100) != 0 || v24 && (*(v15 + 2 * v14) & 0xC) != 0)
          {
            v16 = 2 * (v13 << v22);
            v17 = v16;
            v18 = 8;
            do
            {
              memcpy((v10 + v16), (v4 + v17), (16 << v22));
              v17 += v11;
              v16 += v12;
              --v18;
            }

            while (v18);
            v9 = v1[4];
            LODWORD(result) = v23;
            v8 = v21;
          }

          v13 += 8;
        }

        while (v13 < v9);
        v2 = v1[5];
      }

      v10 += v20;
      result = (result + 8);
      v4 += v19;
    }

    while (result < v2);
  }

  return result;
}

uint64_t sub_277446A40(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v61 = result;
  v62 = *(a2 + 8);
  v63 = *(a2 + 16);
  v64 = *(v62 + 520);
  v65 = *(v62 + 524);
  v66 = *(v62 + 416);
  v67 = *(v62 + 424);
  v129 = v62;
  v68 = *(v63 + 2117);
  v69 = *(v63 + 2113);
  v70 = a3 << v69;
  v71 = a4 << v69;
  v72 = (a4 << v69) - 16;
  if (*(v63 + 2120) - 1 == a3)
  {
    v73 = v71 < 16;
    if (v71 >= 16)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72;
    }

    v75 = v74 + v68;
    if (v73)
    {
      v76 = 0;
    }

    else
    {
      v76 = v72;
    }

    v77 = (v70 - 1) & 0xFFFFFFC0;
    if (v70 <= 63)
    {
      v77 = 0;
    }

    v121 = v77;
    v124 = v64 - v77;
    v78 = v75 + v76 - 8;
    if (v75 + v76 < 8)
    {
      v78 = 0;
    }

    *(result + 120) = v78;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v75 = v65 - v76;
      *(result + 120) = v65;
    }
  }

  else
  {
    if (!a3 || (v70 & 0x3F) != 0)
    {
      return result;
    }

    v79 = v71 < 16;
    if (v71 >= 16)
    {
      v80 = 0;
    }

    else
    {
      v80 = v72;
    }

    v75 = v80 + v68;
    if (v79)
    {
      v76 = 0;
    }

    else
    {
      v76 = v72;
    }

    if (v70 >= 64)
    {
      v81 = v70 - 64;
    }

    else
    {
      v81 = 0;
    }

    v121 = v81;
    if (v70 >= 64)
    {
      v70 = 64;
    }

    v124 = v70;
    v82 = v65 - v76;
    if (*(v63 + 2124) - 1 == a4)
    {
      v75 = v82;
    }
  }

  if (v75 >= 1)
  {
    v83 = 0;
    v110 = v76;
    v123 = 16 * v66;
    v84 = 16 * v67;
    v111 = v75;
    v120 = a2;
    v119 = v64;
    v112 = v75;
    do
    {
      v113 = v83;
      if (v75 - v83 >= 64)
      {
        v85 = 64;
      }

      else
      {
        v85 = (v75 - v83);
      }

      if (v124 >= 1)
      {
        v86 = 0;
        v132 = v83 + v110;
        v87 = v83 + v110 == 0;
        v130 = (v85 >> 3);
        v131 = v83 + v110 == 0;
        v122 = (__PAIR128__(v130, v83 + v110) - 1) >> 64;
        v117 = &STACK[0x8C0] + v87;
        v118 = &a45 + 2 * v87;
        vars8 = v84 * v87;
        v116 = v123 * v87;
        vars0 = &STACK[0x780] + 4 * v87;
        do
        {
          if (v124 - v86 >= 64)
          {
            v88 = 64;
          }

          else
          {
            v88 = (v124 - v86);
          }

          v89 = v86 + v121;
          v128 = v86;
          v133 = v88 + v121 + v86;
          v90 = *(v129 + 416);
          v125 = *(v129 + 400);
          v91 = *(v129 + 531);
          result = (*(v61 + 48))(a2, v89, v132, v88, v85, &a29);
          v126 = v89;
          v92 = (v89 + v90 * v132) << v91;
          LODWORD(v93) = v88 >> 3;
          if (v133 >= v64)
          {
            v93 = v93;
          }

          else
          {
            v93 = (v93 + 1);
          }

          v134 = v93;
          if (v93 >= 2)
          {
            v94 = v93 - 1;
            v95 = v125 + v92 + 16;
            v96 = &a29;
            v97 = &STACK[0x880];
            do
            {
              result = (*(v61 + 72))(v95, v66, v97, v96, v85);
              v96 += 16;
              ++v97;
              v95 += 16;
              --v94;
            }

            while (v94);
          }

          if (v130 > v131)
          {
            v98 = v117;
            v99 = v125 + v116 + v92;
            v100 = v118;
            v101 = v122;
            do
            {
              result = (*(v61 + 80))(v99, v66, v98, v100, v88);
              v100 += 2;
              ++v98;
              v99 += v123;
              --v101;
            }

            while (v101);
          }

          v102 = *(v129 + 424) * v132 + 2 * v126;
          v127 = *(v129 + 408);
          v103 = v102 << *(v129 + 531);
          v84 = 16 * v67;
          if (v134 >= 2)
          {
            v104 = v134 - 1;
            v105 = v127 + v103 + 32;
            v106 = &a61;
            do
            {
              result = (*(v61 + 88))(v105, v67, v106, v85);
              v106 += 4;
              v105 += 32;
              --v104;
            }

            while (v104);
          }

          if (v130 > v131)
          {
            v107 = vars0;
            v108 = v127 + vars8 + v103;
            v109 = v122;
            do
            {
              result = (*(v61 + 96))(v108, v67, v107, v88);
              v107 += 4;
              v108 += 16 * v67;
              --v109;
            }

            while (v109);
          }

          v86 = v128 + 64;
          a2 = v120;
          v64 = v119;
        }

        while (v128 + 64 < v124);
      }

      v83 = v113 + 64;
      v75 = v112;
    }

    while (v113 + 64 < v111);
  }

  return result;
}

unint64_t sub_277446E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  result = MEMORY[0x28223BE20](a1);
  v52 = v51;
  v53 = v50;
  v54 = result;
  v55 = *(v50 + 8);
  v105 = *(v55 + 520);
  v56 = *(v55 + 416);
  v57 = *(v55 + 424);
  v58 = *v51;
  v106 = v55;
  if (*v51 < *(v55 + 524))
  {
    v58 &= 0xFFFFFFF0;
    *v51 = v58;
  }

  v59 = *(result + 120);
  if (v59 < v58)
  {
    v111 = (v105 - 1) & 0xFFFFFFC0;
    vars0 = v57;
    vars8 = 16 * v57;
    v112 = 16 * v56;
    v113 = v50;
    v104 = v52;
    do
    {
      v60 = *(v106 + 531);
      v61 = *(v106 + 400) + ((*(v106 + 416) * v59) << v60);
      v62 = *(v106 + 408) + ((*(v106 + 424) * v59) << v60);
      v63 = v58 - v59;
      if (v63 >= 64)
      {
        v64 = 64;
      }

      else
      {
        v64 = v63;
      }

      if (v59)
      {
        v65 = v59 - 8;
      }

      else
      {
        v65 = 0;
      }

      v66 = v64 + 8;
      if (!v59)
      {
        v66 = v64;
      }

      v114 = v66;
      v115 = v65;
      v118 = (v64 >> 3);
      if (v111 < 1)
      {
        v67 = 0;
      }

      else
      {
        v67 = 0;
        do
        {
          v119 = v62;
          (*(v54 + 48))(v53, v67, *(v54 + 120), 64, v64, &a17);
          v116 = v67;
          sub_2774467E4(&STACK[0x420], v53, v67, v115, 72, v114, 0);
          v68 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v54 + 72))(v61 + i, v56, &STACK[0x3A0] + v68, &STACK[0x3A0] + i - 784, v64);
            v68 += 8;
          }

          sub_27744689C(&STACK[0x420]);
          v70 = *(v54 + 120);
          if (v118 > (v70 == 0))
          {
            v71 = v70 == 0;
            v72 = v118 - v71;
            v73 = &a33 + 2 * v71;
            v74 = &STACK[0x3E0] + v71;
            v75 = v61 + v112 * v71;
            do
            {
              (*(v54 + 80))(v75, v56, v74, v73, 64);
              v73 += 2;
              ++v74;
              v75 += v112;
              --v72;
            }

            while (v72);
          }

          sub_27744689C(&STACK[0x420]);
          sub_2774467E4(&STACK[0x420], v113, v116, v115, 72, v114, 1u);
          v76 = 0;
          v57 = vars0;
          do
          {
            v77 = v76 + 32;
            (*(v54 + 88))(v76 + 32 + v119, vars0, &a49 + v76, v64);
            v76 = v77;
          }

          while (v77 != 256);
          sub_27744689C(&STACK[0x420]);
          v78 = *(v54 + 120);
          if (v118 > (v78 == 0))
          {
            v79 = v78 == 0;
            v80 = v118 - v79;
            v81 = &STACK[0x2A0] + 4 * v79;
            v82 = v119 + vars8 * v79;
            do
            {
              (*(v54 + 96))(v82, vars0, v81, 64);
              v81 += 4;
              v82 += vars8;
              --v80;
            }

            while (v80);
          }

          result = sub_27744689C(&STACK[0x420]);
          v61 += 128;
          v62 = v119 + 256;
          v67 = (v116 + 64);
          v53 = v113;
        }

        while (v67 < v111);
        v59 = *(v54 + 120);
      }

      v83 = v105 - v67;
      if (v105 == v67)
      {
        v52 = v104;
      }

      else
      {
        v120 = v62;
        (*(v54 + 48))(v53, v67, v59, (v105 - v67), v64, &a17);
        v117 = v67;
        sub_2774467E4(&STACK[0x420], v53, v67, v115, v83, v114, 0);
        v108 = v105 - v67;
        v107 = ((v83 >> 3) - 1);
        v103 = v83 >> 3;
        if (v83 >> 3 >= 2)
        {
          v84 = v61 + 16;
          v85 = &a17;
          v86 = &STACK[0x3A0];
          v87 = ((v83 >> 3) - 1);
          do
          {
            (*(v54 + 72))(v84, v56, v86, v85, v64);
            v85 += 16;
            ++v86;
            v84 += 16;
            --v87;
          }

          while (v87);
        }

        sub_27744689C(&STACK[0x420]);
        v88 = *(v54 + 120);
        if (v118 > (v88 == 0))
        {
          v89 = v88 == 0;
          v90 = v118 - v89;
          v91 = &a33 + 2 * v89;
          v92 = &STACK[0x3E0] + v89;
          v93 = v61 + v112 * v89;
          do
          {
            (*(v54 + 80))(v93, v56, v92, v91, v108);
            v91 += 2;
            ++v92;
            v93 += v112;
            --v90;
          }

          while (v90);
        }

        sub_27744689C(&STACK[0x420]);
        sub_2774467E4(&STACK[0x420], v113, v117, v115, v108, v114, 1u);
        v94 = &a49;
        v95 = v107;
        if (v103 >= 2)
        {
          v96 = v120 + 32;
          do
          {
            (*(v54 + 88))(v96, v57, v94, v64);
            v94 += 4;
            v96 += 32;
            --v95;
          }

          while (v95);
        }

        sub_27744689C(&STACK[0x420]);
        v97 = *(v54 + 120);
        if (v118 > (v97 == 0))
        {
          v98 = v97 == 0;
          v99 = v118 - v98;
          v100 = &STACK[0x2A0] + 4 * v98;
          v101 = v120 + vars8 * v98;
          do
          {
            (*(v54 + 96))(v101, v57, v100, v108);
            v100 += 4;
            v101 += vars8;
            --v99;
          }

          while (v99);
        }

        result = sub_27744689C(&STACK[0x420]);
        LODWORD(v59) = *(v54 + 120);
        v52 = v104;
        v53 = v113;
      }

      v59 = (v59 + v64);
      *(v54 + 120) = v59;
      v58 = *v52;
    }

    while (v59 < *v52);
  }

  v102 = *(v106 + 524);
  if (v102 >= v59)
  {
    v102 = v59;
  }

  *v52 = v102;
  if (*(v54 + 120) < *(v106 + 524))
  {
    if (v102 <= 4)
    {
      v102 = 4;
    }

    *v52 = v102 - 4;
  }

  return result;
}

uint64_t sub_277447434(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v49 = a3;
  v50 = result;
  v51 = *(a2 + 8);
  v101 = *(v51 + 520);
  v52 = *(v51 + 416);
  v53 = *(v51 + 424);
  v54 = *a3;
  v102 = v51;
  if (*a3 < *(v51 + 524))
  {
    v54 &= 0xFFFFFFF0;
    *a3 = v54;
  }

  v55 = *(result + 120);
  if (v55 < v54)
  {
    v108 = (v101 - 1) & 0xFFFFFFC0;
    vars0 = &a33;
    vars8 = v53;
    v109 = 16 * v52;
    v106 = 16 * v53;
    v100 = v49;
    do
    {
      v56 = *(v102 + 531);
      v57 = *(v102 + 400) + ((*(v102 + 416) * v55) << v56);
      v58 = *(v102 + 408) + ((*(v102 + 424) * v55) << v56);
      v59 = v54 - v55;
      if (v59 >= 64)
      {
        v60 = 64;
      }

      else
      {
        v60 = v59;
      }

      v61 = v60 >> 3;
      v112 = (v60 >> 3);
      v62 = 0;
      if (v108 >= 1)
      {
        do
        {
          v113 = v58;
          v110 = v62;
          (*(v50 + 48))(a2);
          v63 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v50 + 72))(v57 + i, v52, &STACK[0x7C0] + v63, &STACK[0x7C0] + i - 784, v60);
            v63 += 8;
          }

          v65 = *(v50 + 120);
          if (v61 > (v65 == 0))
          {
            v66 = v65 == 0;
            v67 = v112 - v66;
            v68 = &a33 + 2 * v66;
            v69 = &STACK[0x800] + v66;
            v70 = v57 + v109 * v66;
            do
            {
              (*(v50 + 80))(v70, v52, v69, v68, 64);
              v68 += 2;
              ++v69;
              v70 += v109;
              --v67;
            }

            while (v67);
          }

          v71 = 0;
          v53 = vars8;
          do
          {
            v72 = v71 + 32;
            result = (*(v50 + 88))(v71 + 32 + v113, vars8, &a49 + v71, v60);
            v71 = v72;
          }

          while (v72 != 256);
          v73 = *(v50 + 120);
          if (v112 > (v73 == 0))
          {
            v74 = v73 == 0;
            v75 = v112 - v74;
            v76 = &STACK[0x6C0] + 4 * v74;
            v77 = v113 + v106 * v74;
            do
            {
              result = (*(v50 + 96))(v77, vars8, v76, 64);
              v76 += 4;
              v77 += v106;
              --v75;
            }

            while (v75);
          }

          v57 += 128;
          v61 = v60 >> 3;
          v58 = v113 + 256;
          v62 = v110 + 64;
        }

        while (v110 + 64 < v108);
        v55 = *(v50 + 120);
      }

      v78 = v101 - v62;
      if (v101 != v62)
      {
        v114 = v58;
        result = (*(v50 + 48))(a2);
        v111 = v78;
        v103 = ((v78 >> 3) - 1);
        v99 = v78 >> 3;
        if (v78 >> 3 >= 2)
        {
          v79 = v57 + 16;
          v80 = &a17;
          v81 = &STACK[0x7C0];
          v82 = ((v78 >> 3) - 1);
          do
          {
            result = (*(v50 + 72))(v79, v52, v81, v80, v60);
            v80 += 16;
            ++v81;
            v79 += 16;
            --v82;
          }

          while (v82);
        }

        v83 = *(v50 + 120);
        v84 = v111;
        if (v112 > (v83 == 0))
        {
          v85 = v83 == 0;
          v86 = v112 - v85;
          v87 = &a33 + 2 * v85;
          v88 = &STACK[0x800] + v85;
          v89 = v57 + v109 * v85;
          do
          {
            v90 = v84;
            result = (*(v50 + 80))(v89, v52, v88, v87, v84);
            v84 = v90;
            v87 += 2;
            ++v88;
            v89 += v109;
            --v86;
          }

          while (v86);
        }

        v91 = &a49;
        v92 = v103;
        if (v99 >= 2)
        {
          v93 = v114 + 32;
          do
          {
            result = (*(v50 + 88))(v93, v53, v91, v60);
            v91 += 4;
            v93 += 32;
            --v92;
          }

          while (v92);
        }

        v55 = *(v50 + 120);
        if (v112 > (v55 == 0))
        {
          v94 = v55 == 0;
          v95 = v112 - v94;
          v96 = &STACK[0x6C0] + 4 * v94;
          v97 = v114 + v106 * v94;
          do
          {
            result = (*(v50 + 96))(v97, v53, v96, v111);
            v96 += 4;
            v97 += v106;
            --v95;
          }

          while (v95);
          v55 = *(v50 + 120);
        }
      }

      v55 += v60;
      *(v50 + 120) = v55;
      v49 = v100;
      v54 = *v100;
    }

    while (v55 < *v100);
  }

  v98 = *(v102 + 524);
  if (v98 >= v55)
  {
    v98 = v55;
  }

  *v49 = v98;
  if (*(v50 + 120) < *(v102 + 524))
  {
    if (v98 <= 4)
    {
      v98 = 4;
    }

    *v49 = v98 - 4;
  }

  return result;
}

void *sub_2774478DC(void *result, uint64_t a2)
{
  v2 = sub_277447B60;
  v3 = sub_277448718;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_277447B60;
    v3 = sub_277448718;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_2774482D0;
      v3 = sub_277448CF4;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_2774479A0;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_277445334;
  result[7] = sub_277445334;
  return result;
}

uint64_t sub_2774479A0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = (v7 - v10);
  }

  else
  {
    v12 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v13 = (v8 - v11);
  }

  else
  {
    v13 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v12, v13, v30);
  v15 = *(v6 + 416);
  v29 = *(v6 + 400);
  v16 = (v15 * v11 + v10) << *(v6 + 531);
  v17 = (v12 >> 3);
  if (v17 > (v10 == 0))
  {
    v18 = v10 == 0;
    v19 = v17 - v18;
    v20 = &v30[10 * v18];
    v21 = &v30[5 * v18 + 296];
    v22 = v29 + v16 + 8 * v18 - 8 * v15;
    do
    {
      result = (*(a1 + 72))(v22, v15, v21, v20, (v13 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 8;
      --v19;
    }

    while (v19);
  }

  v23 = (v13 >> 3);
  if (v23 > (v11 == 0))
  {
    v24 = v11 == 0;
    v25 = v23 - v24;
    v26 = &v30[10 * v24 + 80];
    v27 = &v30[5 * v24 + 336];
    v28 = v16 + 8 * v15 * v24 + v29 - 8;
    do
    {
      result = (*(a1 + 80))(v28, v15, v27, v26, (v12 + 8));
      v26 += 10;
      v27 += 5;
      v28 += 8 * v15;
      --v25;
    }

    while (v25);
  }

  return result;
}

void (**sub_277447B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63))(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *)
{
  result = MEMORY[0x28223BE20](a1);
  v69 = result;
  STACK[0x124D8] = *MEMORY[0x277D85DE8];
  v70 = *(v66 + 8);
  v71 = *(v66 + 16);
  v72 = *(v70 + 520);
  v73 = *(v70 + 524);
  v74 = *(v70 + 416);
  v75 = *(v70 + 424);
  v139 = v70;
  v140 = v66;
  v76 = *(v71 + 2117);
  v77 = *(v71 + 2113);
  v78 = v67 << v77;
  v79 = v68 << v77;
  v80 = (v68 << v77) - 16;
  v130 = v72;
  if (*(v71 + 2120) - 1 == v67)
  {
    v81 = v79 < 16;
    if (v79 >= 16)
    {
      v82 = 0;
    }

    else
    {
      v82 = v80;
    }

    v83 = v82 + v76;
    if (v81)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    v85 = (v78 - 1) & 0xFFFFFFC0;
    if (v78 <= 63)
    {
      v85 = 0;
    }

    v131 = v85;
    v133 = v72 - v85;
    v86 = v83 + v84 - 8;
    if (v83 + v84 < 8)
    {
      v86 = 0;
    }

    *(result + 30) = v86;
    if (*(*(v66 + 16) + 2124) - 1 == v68)
    {
      v83 = v73 - v84;
      *(result + 30) = v73;
    }
  }

  else
  {
    if (!v67 || (v78 & 0x3F) != 0)
    {
      return result;
    }

    v87 = v79 < 16;
    if (v79 >= 16)
    {
      v88 = 0;
    }

    else
    {
      v88 = v80;
    }

    v83 = v88 + v76;
    if (v87)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    if (v78 >= 64)
    {
      v89 = v78 - 64;
    }

    else
    {
      v89 = 0;
    }

    v131 = v89;
    if (v78 >= 64)
    {
      v78 = 64;
    }

    v133 = v78;
    v90 = v73 - v84;
    if (*(v71 + 2124) - 1 == v68)
    {
      v83 = v90;
    }
  }

  if (v83 >= 1)
  {
    v91 = 0;
    vars8 = &STACK[0x420];
    v122 = v84;
    vars0 = &a65;
    v132 = 8 * v74;
    v92 = 8 * v75;
    v121 = v83;
    v123 = v83;
    do
    {
      if (v83 - v91 >= 64)
      {
        v93 = 64;
      }

      else
      {
        v93 = (v83 - v91);
      }

      v124 = v91;
      v145 = v91 + v122;
      v94 = v91 + v122 - 8;
      if (!(v91 + v122))
      {
        v94 = 0;
      }

      v144 = v94;
      v95 = v93 + 8;
      if (!(v91 + v122))
      {
        v95 = v93;
      }

      v143 = v95;
      if (v133 >= 1)
      {
        v96 = 0;
        v97 = v145 == 0;
        v141 = (v93 >> 3);
        v142 = v145 == 0;
        v128 = v92 * v97;
        v129 = v132 * v97;
        v127 = &STACK[0x320] + 4 * v97;
        do
        {
          if (v133 - v96 >= 64)
          {
            v98 = 64;
          }

          else
          {
            v98 = (v133 - v96);
          }

          v99 = v96 + v131;
          v138 = v96;
          v146 = v98 + v131 + v96;
          v100 = *(v139 + 416);
          v134 = *(v139 + 400);
          v101 = *(v139 + 531);
          v69[6](v140, v99, v145, v98, v93, &a33);
          if (v146 >= v130)
          {
            v102 = v98;
          }

          else
          {
            v102 = v98 + 8;
          }

          v103 = (v99 + v100 * v145) << v101;
          v104 = v98 >> 3;
          if (v146 >= v130)
          {
            v105 = v104;
          }

          else
          {
            v105 = v104 + 1;
          }

          v137 = v99;
          v136 = v102;
          sub_27744807C(&STACK[0x4B0], v140, v99, v144, v102, v143, 0);
          v147 = v105;
          if (v105 >= 2)
          {
            v106 = v105 - 1;
            v107 = v134 + v103 + 8;
            v108 = &a33;
            v109 = &STACK[0x420];
            do
            {
              (v69[9])(v107, v74, v109, v108, v93);
              v108 += 16;
              ++v109;
              v107 += 8;
              --v106;
            }

            while (v106);
          }

          sub_27744812C(&STACK[0x4B0]);
          if (v141 > v142)
          {
            v110 = &STACK[0x460] + (v145 == 0);
            v111 = v134 + v129 + v103;
            v112 = &a49 + 2 * (v145 == 0);
            v113 = (__PAIR128__(v141, v145) - 1) >> 64;
            do
            {
              (v69[10])(v111, v74, v110, v112, v98);
              v112 += 2;
              ++v110;
              v111 += v132;
              --v113;
            }

            while (v113);
          }

          sub_27744812C(&STACK[0x4B0]);
          v135 = *(v139 + 408);
          v114 = (*(v139 + 424) * v145 + 2 * v137) << *(v139 + 531);
          sub_27744807C(&STACK[0x4B0], v140, v137, v144, v136, v143, 1u);
          v92 = 8 * v75;
          if (v147 >= 2)
          {
            v115 = v147 - 1;
            v116 = v135 + v114 + 16;
            v117 = &a65;
            do
            {
              (v69[11])(v116, v75, v117, v93);
              v117 += 4;
              v116 += 16;
              --v115;
            }

            while (v115);
          }

          sub_27744812C(&STACK[0x4B0]);
          if (v141 > v142)
          {
            v118 = v127;
            v119 = v135 + v128 + v114;
            v120 = (__PAIR128__(v141, v145) - 1) >> 64;
            do
            {
              (v69[12])(v119, v75, v118, v98);
              v118 += 4;
              v119 += 8 * v75;
              --v120;
            }

            while (v120);
          }

          result = sub_27744812C(&STACK[0x4B0]);
          v96 = v138 + 64;
        }

        while (v138 + 64 < v133);
      }

      v91 = v124 + 64;
      v83 = v123;
    }

    while (v124 + 64 < v121);
  }

  return result;
}

void *sub_27744807C(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  __dst[9216] = a2;
  *(__dst + 18434) = a3;
  *(__dst + 18435) = a4;
  *(__dst + 18436) = a5;
  *(__dst + 18437) = a6;
  *(__dst + 18438) = a7;
  if (a6 >= 1)
  {
    v7 = __dst;
    v8 = *(a2 + 8);
    v9 = v8 + 8 * a7;
    v10 = *(v9 + 416);
    v11 = (*(v9 + 400) + ((v10 * a4 + (a3 << a7)) << *(v8 + 531)));
    v12 = a5 << (a7 != 0);
    v13 = a6;
    do
    {
      __dst = memcpy(v7, v11, v12);
      v11 += v10;
      v7 += v12;
      --v13;
    }

    while (v13);
  }

  return __dst;
}

_DWORD *sub_27744812C(_DWORD *result)
{
  v1 = result + 18432;
  v2 = result[18437];
  v3 = result[18438];
  v21 = result[18438] != 0;
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = *(*v1 + 8);
    v7 = v6 + 8 * v3;
    v8 = *(v7 + 416);
    v9 = *(*(*v1 + 32) + 19);
    v23 = *(*(*v1 + 16) + 283);
    v10 = result[18436];
    v11 = *(v7 + 400) + ((v8 * result[18435] + (result[18434] << v3)) << *(v6 + 531));
    v19 = 8 * (v10 << v21);
    v12 = v10 << v21;
    v20 = v9;
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v22 = v5;
        do
        {
          v14 = (v1[2] + v13) >> 3;
          v15 = *(*(*v1 + 8) + 776) + 2 * *(*(*v1 + 8) + 768) * ((v1[3] + v5) >> 3);
          if (v9 && (*(v15 + 2 * v14) & 0x100) != 0 || v23 && (*(v15 + 2 * v14) & 0xC) != 0)
          {
            v16 = v13 << v21;
            v17 = v16;
            v18 = 8;
            do
            {
              result = memcpy((v11 + v16), v4 + v17, (8 << v21));
              v17 += v12;
              v16 += v8;
              --v18;
            }

            while (v18);
            v10 = v1[4];
            v5 = v22;
            v9 = v20;
          }

          v13 += 8;
        }

        while (v13 < v10);
        v2 = v1[5];
      }

      v11 += 8 * v8;
      v4 = (v4 + v19);
      v5 += 8;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t sub_2774482D0(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v61 = result;
  v62 = *(a2 + 8);
  v63 = *(a2 + 16);
  v64 = *(v62 + 520);
  v65 = *(v62 + 524);
  v66 = *(v62 + 416);
  v67 = *(v62 + 424);
  v129 = v62;
  v68 = *(v63 + 2117);
  v69 = *(v63 + 2113);
  v70 = a3 << v69;
  v71 = a4 << v69;
  v72 = (a4 << v69) - 16;
  if (*(v63 + 2120) - 1 == a3)
  {
    v73 = v71 < 16;
    if (v71 >= 16)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72;
    }

    v75 = v74 + v68;
    if (v73)
    {
      v76 = 0;
    }

    else
    {
      v76 = v72;
    }

    v77 = (v70 - 1) & 0xFFFFFFC0;
    if (v70 <= 63)
    {
      v77 = 0;
    }

    v121 = v77;
    v124 = v64 - v77;
    v78 = v75 + v76 - 8;
    if (v75 + v76 < 8)
    {
      v78 = 0;
    }

    *(result + 120) = v78;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v75 = v65 - v76;
      *(result + 120) = v65;
    }
  }

  else
  {
    if (!a3 || (v70 & 0x3F) != 0)
    {
      return result;
    }

    v79 = v71 < 16;
    if (v71 >= 16)
    {
      v80 = 0;
    }

    else
    {
      v80 = v72;
    }

    v75 = v80 + v68;
    if (v79)
    {
      v76 = 0;
    }

    else
    {
      v76 = v72;
    }

    if (v70 >= 64)
    {
      v81 = v70 - 64;
    }

    else
    {
      v81 = 0;
    }

    v121 = v81;
    if (v70 >= 64)
    {
      v70 = 64;
    }

    v124 = v70;
    v82 = v65 - v76;
    if (*(v63 + 2124) - 1 == a4)
    {
      v75 = v82;
    }
  }

  if (v75 >= 1)
  {
    v83 = 0;
    v110 = v76;
    v123 = 8 * v66;
    v84 = 8 * v67;
    v111 = v75;
    v120 = a2;
    v119 = v64;
    v112 = v75;
    do
    {
      v113 = v83;
      if (v75 - v83 >= 64)
      {
        v85 = 64;
      }

      else
      {
        v85 = (v75 - v83);
      }

      if (v124 >= 1)
      {
        v86 = 0;
        v132 = v83 + v110;
        v87 = v83 + v110 == 0;
        v130 = (v85 >> 3);
        v131 = v83 + v110 == 0;
        v122 = (__PAIR128__(v130, v83 + v110) - 1) >> 64;
        v117 = &STACK[0x8C0] + v87;
        v118 = &a45 + 2 * v87;
        vars8 = v84 * v87;
        v116 = v123 * v87;
        vars0 = &STACK[0x780] + 4 * v87;
        do
        {
          if (v124 - v86 >= 64)
          {
            v88 = 64;
          }

          else
          {
            v88 = (v124 - v86);
          }

          v89 = v86 + v121;
          v128 = v86;
          v133 = v88 + v121 + v86;
          v90 = *(v129 + 416);
          v125 = *(v129 + 400);
          v91 = *(v129 + 531);
          result = (*(v61 + 48))(a2, v89, v132, v88, v85, &a29);
          v126 = v89;
          v92 = (v89 + v90 * v132) << v91;
          LODWORD(v93) = v88 >> 3;
          if (v133 >= v64)
          {
            v93 = v93;
          }

          else
          {
            v93 = (v93 + 1);
          }

          v134 = v93;
          if (v93 >= 2)
          {
            v94 = v93 - 1;
            v95 = v125 + v92 + 8;
            v96 = &a29;
            v97 = &STACK[0x880];
            do
            {
              result = (*(v61 + 72))(v95, v66, v97, v96, v85);
              v96 += 16;
              ++v97;
              v95 += 8;
              --v94;
            }

            while (v94);
          }

          if (v130 > v131)
          {
            v98 = v117;
            v99 = v125 + v116 + v92;
            v100 = v118;
            v101 = v122;
            do
            {
              result = (*(v61 + 80))(v99, v66, v98, v100, v88);
              v100 += 2;
              ++v98;
              v99 += v123;
              --v101;
            }

            while (v101);
          }

          v102 = *(v129 + 424) * v132 + 2 * v126;
          v127 = *(v129 + 408);
          v103 = v102 << *(v129 + 531);
          v84 = 8 * v67;
          if (v134 >= 2)
          {
            v104 = v134 - 1;
            v105 = v127 + v103 + 16;
            v106 = &a61;
            do
            {
              result = (*(v61 + 88))(v105, v67, v106, v85);
              v106 += 4;
              v105 += 16;
              --v104;
            }

            while (v104);
          }

          if (v130 > v131)
          {
            v107 = vars0;
            v108 = v127 + vars8 + v103;
            v109 = v122;
            do
            {
              result = (*(v61 + 96))(v108, v67, v107, v88);
              v107 += 4;
              v108 += 8 * v67;
              --v109;
            }

            while (v109);
          }

          v86 = v128 + 64;
          a2 = v120;
          v64 = v119;
        }

        while (v128 + 64 < v124);
      }

      v83 = v113 + 64;
      v75 = v112;
    }

    while (v113 + 64 < v111);
  }

  return result;
}

_DWORD *sub_277448718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  result = MEMORY[0x28223BE20](a1);
  v51 = v50;
  v52 = result;
  STACK[0x12458] = *MEMORY[0x277D85DE8];
  v119 = v53;
  v54 = *(v53 + 8);
  v109 = *(v54 + 520);
  v55 = *(v54 + 416);
  v56 = *(v54 + 424);
  v57 = *v50;
  v110 = v54;
  if (*v50 < *(v54 + 524))
  {
    v57 &= 0xFFFFFFF0;
    *v50 = v57;
  }

  v58 = result[30];
  if (v58 < v57)
  {
    v115 = (v109 - 1) & 0xFFFFFFC0;
    vars8 = &a49;
    v59 = 8 * v56;
    v108 = v51;
    v116 = 8 * v55;
    vars0 = 8 * v56;
    do
    {
      v60 = *(v110 + 531);
      v61 = *(v110 + 400) + ((*(v110 + 416) * v58) << v60);
      v62 = *(v110 + 408) + ((*(v110 + 424) * v58) << v60);
      v63 = v57 - v58;
      if (v63 >= 64)
      {
        v64 = 64;
      }

      else
      {
        v64 = v63;
      }

      if (v58)
      {
        v65 = v58 - 8;
      }

      else
      {
        v65 = 0;
      }

      v66 = v64 + 8;
      if (!v58)
      {
        v66 = v64;
      }

      v120 = v66;
      v121 = v65;
      v67 = v64 >> 3;
      v124 = (v64 >> 3);
      v68 = 0;
      if (v115 >= 1)
      {
        do
        {
          v117 = v62;
          v69 = &a17;
          v70 = v68;
          (*(v52 + 6))(v119, v68, v52[30], 64, v64, &a17);
          v122 = v70;
          sub_27744807C(&STACK[0x430], v119, v70, v121, 72, v120, 0);
          v71 = 0;
          do
          {
            v72 = v71 + 8;
            (*(v52 + 9))(v71 + 8 + v61, v55, &STACK[0x3A0] + v71, v69, v64);
            v69 += 16;
            v71 = v72;
          }

          while (v72 != 64);
          sub_27744812C(&STACK[0x430]);
          v73 = v52[30];
          if (v67 > (v73 == 0))
          {
            v74 = v73 == 0;
            v75 = v124 - v74;
            v76 = &a33 + 2 * v74;
            v77 = &STACK[0x3E0] + v74;
            v78 = v61 + v116 * v74;
            do
            {
              (*(v52 + 10))(v78, v55, v77, v76, 64);
              v76 += 2;
              ++v77;
              v78 += v116;
              --v75;
            }

            while (v75);
          }

          sub_27744812C(&STACK[0x430]);
          sub_27744807C(&STACK[0x430], v119, v70, v121, 72, v120, 1u);
          v79 = &a49;
          for (i = 16; i != 144; i += 16)
          {
            (*(v52 + 11))(v117 + i, v56, v79, v64);
            v79 += 4;
          }

          sub_27744812C(&STACK[0x430]);
          v81 = v52[30];
          v59 = 8 * v56;
          if (v124 > (v81 == 0))
          {
            v82 = v81 == 0;
            v83 = v124 - v82;
            v84 = &STACK[0x2A0] + 4 * v82;
            v85 = v117 + vars0 * v82;
            do
            {
              (*(v52 + 12))(v85, v56, v84, 64);
              v84 += 4;
              v85 += vars0;
              --v83;
            }

            while (v83);
          }

          result = sub_27744812C(&STACK[0x430]);
          v61 += 64;
          v62 = v117 + 128;
          v68 = (v122 + 64);
          v67 = v64 >> 3;
        }

        while (v68 < v115);
        v58 = v52[30];
      }

      v86 = v109 - v68;
      if (v109 == v68)
      {
        v51 = v108;
      }

      else
      {
        v118 = v62;
        v87 = v68;
        (*(v52 + 6))(v119, v68, v58, (v109 - v68), v64, &a17);
        v123 = v87;
        sub_27744807C(&STACK[0x430], v119, v87, v121, v86, v120, 0);
        v112 = v86;
        v111 = ((v86 >> 3) - 1);
        v107 = v86 >> 3;
        if (v86 >> 3 >= 2)
        {
          v88 = v61 + 8;
          v89 = &a17;
          v90 = &STACK[0x3A0];
          v91 = v111;
          do
          {
            (*(v52 + 9))(v88, v55, v90, v89, v64);
            v89 += 16;
            ++v90;
            v88 += 8;
            --v91;
          }

          while (v91);
        }

        sub_27744812C(&STACK[0x430]);
        v92 = v52[30];
        if (v124 > (v92 == 0))
        {
          v93 = v92 == 0;
          v94 = v124 - v93;
          v95 = &a33 + 2 * v93;
          v96 = &STACK[0x3E0] + v93;
          v97 = v61 + v116 * v93;
          do
          {
            (*(v52 + 10))(v97, v55, v96, v95, v112);
            v95 += 2;
            ++v96;
            v97 += v116;
            --v94;
          }

          while (v94);
        }

        sub_27744812C(&STACK[0x430]);
        sub_27744807C(&STACK[0x430], v119, v123, v121, v112, v120, 1u);
        v98 = v111;
        if (v107 >= 2)
        {
          v99 = v118 + 16;
          v100 = &a49;
          do
          {
            (*(v52 + 11))(v99, v56, v100, v64);
            v100 += 4;
            v99 += 16;
            --v98;
          }

          while (v98);
        }

        sub_27744812C(&STACK[0x430]);
        v101 = v52[30];
        if (v124 > (v101 == 0))
        {
          v102 = v101 == 0;
          v103 = v124 - v102;
          v104 = &STACK[0x2A0] + 4 * v102;
          v105 = v118 + v59 * v102;
          do
          {
            (*(v52 + 12))(v105, v56, v104, v112);
            v104 += 4;
            v105 += v59;
            --v103;
          }

          while (v103);
        }

        result = sub_27744812C(&STACK[0x430]);
        LODWORD(v58) = v52[30];
        v51 = v108;
      }

      v58 = (v58 + v64);
      v52[30] = v58;
      v57 = *v51;
    }

    while (v58 < *v51);
  }

  v106 = *(v110 + 524);
  if (v106 >= v58)
  {
    v106 = v58;
  }

  *v51 = v106;
  if (v52[30] < *(v110 + 524))
  {
    if (v106 <= 4)
    {
      v106 = 4;
    }

    *v51 = v106 - 4;
  }

  return result;
}

uint64_t sub_277448CF4(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v49 = a3;
  v50 = result;
  v51 = *(a2 + 8);
  v102 = *(v51 + 520);
  v52 = *(v51 + 416);
  v53 = *(v51 + 424);
  v54 = *a3;
  v103 = v51;
  if (*a3 < *(v51 + 524))
  {
    v54 &= 0xFFFFFFF0;
    *a3 = v54;
  }

  v55 = *(result + 120);
  if (v55 < v54)
  {
    v108 = (v102 - 1) & 0xFFFFFFC0;
    vars0 = &a33;
    v109 = 8 * v52;
    v56 = 8 * v53;
    v101 = v49;
    vars8 = 8 * v53;
    do
    {
      v57 = *(v103 + 531);
      v58 = *(v103 + 400) + ((*(v103 + 416) * v55) << v57);
      v112 = *(v103 + 408) + ((*(v103 + 424) * v55) << v57);
      v59 = v54 - v55;
      if (v59 >= 64)
      {
        v60 = 64;
      }

      else
      {
        v60 = v59;
      }

      v61 = v60 >> 3;
      v113 = (v60 >> 3);
      v62 = 0;
      if (v108 >= 1)
      {
        do
        {
          v63 = &a17;
          v110 = v62;
          (*(v50 + 48))(a2);
          v64 = 0;
          do
          {
            v65 = v64 + 8;
            (*(v50 + 72))(v64 + 8 + v58, v52, &STACK[0x7C0] + v64, v63, v60);
            v63 += 16;
            v64 = v65;
          }

          while (v65 != 64);
          v66 = *(v50 + 120);
          if (v61 > (v66 == 0))
          {
            v67 = v66 == 0;
            v68 = v113 - v67;
            v69 = &a33 + 2 * v67;
            v70 = &STACK[0x800] + v67;
            v71 = v58 + v109 * v67;
            do
            {
              (*(v50 + 80))(v71, v52, v70, v69, 64);
              v69 += 2;
              ++v70;
              v71 += v109;
              --v68;
            }

            while (v68);
          }

          v72 = &a49;
          for (i = 16; i != 144; i += 16)
          {
            result = (*(v50 + 88))(v112 + i, v53, v72, v60);
            v72 += 4;
          }

          v74 = *(v50 + 120);
          v56 = 8 * v53;
          if (v113 > (v74 == 0))
          {
            v75 = v74 == 0;
            v76 = v113 - v75;
            v77 = &STACK[0x6C0] + 4 * v75;
            v78 = v112 + vars8 * v75;
            do
            {
              result = (*(v50 + 96))(v78, v53, v77, 64);
              v77 += 4;
              v78 += vars8;
              --v76;
            }

            while (v76);
          }

          v58 += 64;
          v112 += 128;
          v62 = v110 + 64;
          v61 = v60 >> 3;
        }

        while (v110 + 64 < v108);
        v55 = *(v50 + 120);
      }

      v79 = v102 - v62;
      if (v102 != v62)
      {
        result = (*(v50 + 48))(a2);
        v111 = v79;
        v104 = ((v79 >> 3) - 1);
        v100 = v79 >> 3;
        if (v79 >> 3 >= 2)
        {
          v80 = v58 + 8;
          v81 = &a17;
          v82 = &STACK[0x7C0];
          v83 = ((v79 >> 3) - 1);
          do
          {
            result = (*(v50 + 72))(v80, v52, v82, v81, v60);
            v81 += 16;
            ++v82;
            v80 += 8;
            --v83;
          }

          while (v83);
        }

        v84 = *(v50 + 120);
        v85 = v111;
        if (v113 > (v84 == 0))
        {
          v86 = v84 == 0;
          v87 = v113 - v86;
          v88 = &a33 + 2 * v86;
          v89 = &STACK[0x800] + v86;
          v90 = v58 + v109 * v86;
          do
          {
            v91 = v85;
            result = (*(v50 + 80))(v90, v52, v89, v88, v85);
            v85 = v91;
            v88 += 2;
            ++v89;
            v90 += v109;
            --v87;
          }

          while (v87);
        }

        v92 = v104;
        if (v100 >= 2)
        {
          v93 = v112 + 16;
          v94 = &a49;
          do
          {
            result = (*(v50 + 88))(v93, v53, v94, v60);
            v94 += 4;
            v93 += 16;
            --v92;
          }

          while (v92);
        }

        v55 = *(v50 + 120);
        if (v113 > (v55 == 0))
        {
          v95 = v55 == 0;
          v96 = v113 - v95;
          v97 = &STACK[0x6C0] + 4 * v95;
          v98 = v112 + v56 * v95;
          do
          {
            result = (*(v50 + 96))(v98, v53, v97, v111);
            v97 += 4;
            v98 += v56;
            --v96;
          }

          while (v96);
          v55 = *(v50 + 120);
        }
      }

      v55 += v60;
      *(v50 + 120) = v55;
      v49 = v101;
      v54 = *v101;
    }

    while (v55 < *v101);
  }

  v99 = *(v103 + 524);
  if (v99 >= v55)
  {
    v99 = v55;
  }

  *v49 = v99;
  if (*(v50 + 120) < *(v103 + 524))
  {
    if (v99 <= 4)
    {
      v99 = 4;
    }

    *v49 = v99 - 4;
  }

  return result;
}

void *sub_2774491A0(void *result, uint64_t a2)
{
  v2 = sub_277449B08;
  v3 = sub_27744A624;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_277449B08;
    v3 = sub_27744A624;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_27744A1D4;
      v3 = sub_27744ABC0;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_277449948;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_277449264;
  result[7] = sub_277449264;
  return result;
}

void sub_277449264(uint64_t a1, int a2, int a3, int a4, int a5, char *a6)
{
  v98 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 8);
  bzero(a6, 0x380uLL);
  v83 = v11;
  v75 = v11[96];
  v12 = *(a1 + 32);
  v13 = *(v12 + 14);
  LODWORD(v12) = *(v12 + 15);
  memset(v97, 0, sizeof(v97));
  memset(v96, 0, sizeof(v96));
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  v76 = a4;
  v77 = a5;
  v82 = a2;
  v79 = a2 >> 3;
  v14 = a4 >> 3;
  v89 = 2 * v12;
  v90 = 2 * v13;
  memset(v92, 0, sizeof(v92));
  v86 = (a5 >> 3);
  v91 = (a4 >> 3);
  if (v86 >= 1)
  {
    v15 = 0;
    v87 = a6 + 768;
    v84 = v97;
    do
    {
      if (v14 >= 1)
      {
        v16 = 0;
        v17 = a3 + 8 * v15;
        v18 = v84;
        v19 = (v83[97] + 2 * v79 + 2 + 2 * v83[96] * (v17 >> 3));
        v20 = v82 + 8;
        v21 = v87;
        do
        {
          v22 = (**a1)(a1, (v20 >> *(*(a1 + 16) + 2113)), (v17 >> *(*(a1 + 16) + 2113)));
          v23 = (*(v19 - 1) >> 9) + (*v19 >> 9) + 1;
          *v18 = *(v22 + 661) + (v23 >> 1) - 2;
          v24 = *(v22 + 660) + (v23 >> 1);
          if (v24 >= 51)
          {
            v24 = 51;
          }

          if (v24 <= 15)
          {
            v24 = 15;
          }

          *v21 = byte_27753C6D3[v24 - 15];
          if (v16)
          {
            v25 = *(v22 + 661) + 2;
            v26 = (v23 + v90) >> 1;
            if (v26 >= 51)
            {
              LOBYTE(v26) = 51;
            }

            v27 = v95 + 8 * (v16 >> 1) + v15;
            *v27 = v25 + v26;
            v28 = (v23 + v89) >> 1;
            if (v28 >= 51)
            {
              LOBYTE(v28) = 51;
            }

            v27[64] = v25 + v28;
          }

          ++v16;
          ++v19;
          v21 += 8;
          v18 += 8;
          v20 += 8;
          v14 = v91;
        }

        while (v91 != v16);
      }

      ++v15;
      ++v87;
      v84 = (v84 + 1);
    }

    while (v15 != v86);
  }

  v29 = a3 == 0;
  if (v86 > v29)
  {
    v30 = v92 | (8 * (a3 == 0));
    v81 = a3;
    v31 = &a6[8 * (a3 == 0) + 832];
    v85 = a3 == 0;
    v32 = v94 & 0xFFFFFFFFFFFFFFF7 | (8 * v85);
    v80 = 2 * v79 - 2 * v75;
    do
    {
      if (v14 >= 1)
      {
        v33 = 0;
        v88 = v81 + 8 * v85;
        v34 = v83[96] * (v88 >> 3);
        v35 = v83[97];
        v36 = v35 + 2 * v34 + 2 * (v82 >> 3);
        v37 = v35 + v80 + 2 * v34;
        v38 = v82;
        do
        {
          v39 = (**a1)(a1, (v38 >> *(*(a1 + 16) + 2113)), (v88 >> *(*(a1 + 16) + 2113)));
          v14 = v91;
          v40 = (*(v37 + 2 * v33) >> 9) + (*(v36 + 2 * v33) >> 9) + 1;
          *(v32 + v33) = *(v39 + 661) + (v40 >> 1) - 2;
          v41 = *(v39 + 660) + (v40 >> 1);
          if (v41 >= 51)
          {
            v41 = 51;
          }

          if (v41 <= 15)
          {
            v41 = 15;
          }

          v31[v33] = byte_27753C6D3[v41 - 15];
          v42 = *(v39 + 661) + 2;
          v43 = (v40 + v90) >> 1;
          if (v43 >= 51)
          {
            LOBYTE(v43) = 51;
          }

          *(v30 + v33) = v42 + v43;
          v44 = (v40 + v89) >> 1;
          if (v44 >= 51)
          {
            LOBYTE(v44) = 51;
          }

          *(v30 + v33++ + 64) = v42 + v44;
          v38 += 8;
        }

        while (v91 != v33);
      }

      v30 += 8;
      v31 += 8;
      v32 += 8;
      ++v85;
    }

    while (v85 != v86);
    a3 = v81;
  }

  if (v14 >= 1)
  {
    v45 = 0;
    v46 = (v77 >> 2);
    v47 = a6;
    do
    {
      if (v46 >= 1)
      {
        v48 = 0;
        v49 = &a6[32 * (v45 >> 1) + 257];
        v50 = v83[121] + v83[117] * ((v82 + 8 + 8 * v45) >> 3) + (a3 >> 2);
        do
        {
          if (*(v50 + v48))
          {
            v51 = *(v97 + 8 * v45 + (v48 >> 1)) + 2 * *(v50 + v48);
            if (v51 >= 53)
            {
              v51 = 53;
            }

            if (v51 <= 17)
            {
              v51 = 17;
            }

            v47[v48] = byte_27753C704[v51 - 17];
          }

          ++v48;
        }

        while (v46 != v48);
        if (v45)
        {
          v52 = 0;
          v53 = v45 >> 1;
          v54 = v95 + 8 * v53;
          v55 = v96 + 8 * v53;
          do
          {
            if (*(v50 + v52) >= 2u)
            {
              v56 = v52 >> 1;
              v57 = v54[v56];
              if (v57 >= 53)
              {
                v57 = 53;
              }

              if (v57 <= 17)
              {
                v57 = 17;
              }

              v58 = byte_27753C704[v57 - 17];
              v59 = v55[v56];
              if (v59 >= 53)
              {
                v59 = 53;
              }

              if (v59 <= 17)
              {
                v59 = 17;
              }

              v60 = byte_27753C704[v59 - 17];
              *(v49 - 1) = v58;
              *v49 = v60;
            }

            ++v52;
            v49 += 2;
          }

          while (v46 != v52);
        }
      }

      ++v45;
      v47 += 16;
    }

    while (v45 != v14);
  }

  if (v86 > v29)
  {
    v61 = a3 == 0;
    v62 = (v76 >> 2);
    v63 = &a6[16 * v61 + 128];
    v64 = &a6[32 * v61 + 513];
    do
    {
      if (v62 >= 1)
      {
        v65 = 0;
        v66 = v83[118] + v83[116] * ((a3 + 8 * v61) >> 3) + (v82 >> 2);
        do
        {
          if (*(v66 + v65))
          {
            v67 = *(v94 + 8 * v61 + (v65 >> 1)) + 2 * *(v66 + v65);
            if (v67 >= 53)
            {
              v67 = 53;
            }

            if (v67 <= 17)
            {
              v67 = 17;
            }

            v63[v65] = byte_27753C704[v67 - 17];
          }

          ++v65;
        }

        while (v62 != v65);
        v68 = 0;
        v69 = v64;
        do
        {
          if (*(v66 + v68) >= 2u)
          {
            v70 = v68 >> 1;
            v71 = *(v92 + 8 * v61 + v70);
            if (v71 >= 53)
            {
              v71 = 53;
            }

            if (v71 <= 17)
            {
              v71 = 17;
            }

            v72 = byte_27753C704[v71 - 17];
            v73 = *(v93 + 8 * v61 + v70);
            if (v73 >= 53)
            {
              v73 = 53;
            }

            if (v73 <= 17)
            {
              v73 = 17;
            }

            v74 = byte_27753C704[v73 - 17];
            *(v69 - 1) = v72;
            *v69 = v74;
          }

          ++v68;
          v69 += 2;
        }

        while (v62 != v68);
      }

      ++v61;
      v63 += 16;
      v64 += 32;
    }

    while (v61 != v86);
  }
}

uint64_t sub_277449948(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = (v7 - v10);
  }

  else
  {
    v12 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v13 = (v8 - v11);
  }

  else
  {
    v13 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v12, v13, v30);
  v15 = *(v6 + 416);
  v29 = *(v6 + 400);
  v16 = (v15 * v11 + v10) << *(v6 + 531);
  v17 = (v12 >> 3);
  if (v17 > (v10 == 0))
  {
    v18 = v10 == 0;
    v19 = v17 - v18;
    v20 = &v30[10 * v18];
    v21 = &v30[5 * v18 + 296];
    v22 = v29 + v16 + 16 * v18 - 16 * v15;
    do
    {
      result = (*(a1 + 72))(v22, v15, v21, v20, (v13 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 16;
      --v19;
    }

    while (v19);
  }

  v23 = (v13 >> 3);
  if (v23 > (v11 == 0))
  {
    v24 = v11 == 0;
    v25 = v23 - v24;
    v26 = &v30[10 * v24 + 80];
    v27 = &v30[5 * v24 + 336];
    v28 = v16 + 16 * v15 * v24 + v29 - 16;
    do
    {
      result = (*(a1 + 80))(v28, v15, v27, v26, (v12 + 8));
      v26 += 10;
      v27 += 5;
      v28 += 16 * v15;
      --v25;
    }

    while (v25);
  }

  return result;
}

int *sub_277449B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = MEMORY[0x28223BE20](a1);
  v69 = v66;
  v70 = result;
  v71 = *(v66 + 8);
  v72 = *(v66 + 16);
  v73 = *(v71 + 520);
  v74 = *(v71 + 524);
  v75 = *(v71 + 416);
  v76 = *(v71 + 424);
  v144 = v71;
  v77 = *(v72 + 2117);
  v78 = *(v72 + 2113);
  v79 = v67 << v78;
  v80 = v68 << v78;
  v81 = (v68 << v78) - 16;
  v132 = v73;
  if (*(v72 + 2120) - 1 == v67)
  {
    v82 = v80 < 16;
    if (v80 >= 16)
    {
      v83 = 0;
    }

    else
    {
      v83 = v81;
    }

    v84 = v83 + v77;
    if (v82)
    {
      v85 = 0;
    }

    else
    {
      v85 = v81;
    }

    v86 = (v79 - 1) & 0xFFFFFFC0;
    if (v79 <= 63)
    {
      v86 = 0;
    }

    v133 = v86;
    v135 = v73 - v86;
    v87 = v84 + v85 - 8;
    if (v84 + v85 < 8)
    {
      v87 = 0;
    }

    result[30] = v87;
    if (*(*(v66 + 16) + 2124) - 1 == v68)
    {
      v84 = v74 - v85;
      result[30] = v74;
    }
  }

  else
  {
    if (!v67 || (v79 & 0x3F) != 0)
    {
      return result;
    }

    v88 = v80 < 16;
    if (v80 >= 16)
    {
      v89 = 0;
    }

    else
    {
      v89 = v81;
    }

    v84 = v89 + v77;
    if (v88)
    {
      v85 = 0;
    }

    else
    {
      v85 = v81;
    }

    if (v79 >= 64)
    {
      v90 = v79 - 64;
    }

    else
    {
      v90 = 0;
    }

    v133 = v90;
    if (v79 >= 64)
    {
      v79 = 64;
    }

    v135 = v79;
    v91 = v74 - v85;
    if (*(v72 + 2124) - 1 == v68)
    {
      v84 = v91;
    }
  }

  if (v84 >= 1)
  {
    v92 = 0;
    vars8 = &STACK[0x420];
    v124 = v85;
    vars0 = &a65;
    v134 = 16 * v75;
    v93 = 16 * v76;
    v123 = v84;
    v143 = v66;
    v125 = v84;
    do
    {
      if (v84 - v92 >= 64)
      {
        v94 = 64;
      }

      else
      {
        v94 = (v84 - v92);
      }

      v126 = v92;
      v149 = v92 + v124;
      v95 = v92 + v124 - 8;
      if (!(v92 + v124))
      {
        v95 = 0;
      }

      v148 = v95;
      v96 = v94 + 8;
      if (!(v92 + v124))
      {
        v96 = v94;
      }

      v147 = v96;
      if (v135 >= 1)
      {
        v97 = 0;
        v98 = v149 == 0;
        v145 = (v94 >> 3);
        v146 = v149 == 0;
        v130 = v93 * v98;
        v131 = v134 * v98;
        v129 = &STACK[0x320] + 4 * v98;
        do
        {
          if (v135 - v97 >= 64)
          {
            v99 = 64;
          }

          else
          {
            v99 = (v135 - v97);
          }

          v100 = v97 + v133;
          v101 = v99 + v133 + v97;
          v140 = *(v144 + 416);
          v142 = v97;
          v136 = *(v144 + 400);
          v102 = *(v144 + 531);
          (*(v70 + 6))(v69, v100, v149, v99, v94, &a33);
          v139 = v101 < v132;
          if (v101 >= v132)
          {
            v103 = v99;
          }

          else
          {
            v103 = v99 + 8;
          }

          v104 = (v100 + v140 * v149) << v102;
          v105 = v99 >> 3;
          if (v101 >= v132)
          {
            v106 = v105;
          }

          else
          {
            v106 = v105 + 1;
          }

          v141 = v100;
          v138 = v103;
          sub_277449FEC(&STACK[0x4A0], v69, v100, v148, v103, v147, 0);
          if (v106 >= 2)
          {
            v107 = v106 - 1;
            v108 = v136 + v104 + 16;
            v109 = &a33;
            v110 = &STACK[0x420];
            do
            {
              (*(v70 + 9))(v108, v75, v110, v109, v94);
              v109 += 16;
              ++v110;
              v108 += 16;
              --v107;
            }

            while (v107);
          }

          sub_27744A0A4(&STACK[0x4A0]);
          if (v145 > v146)
          {
            v111 = &STACK[0x460] + (v149 == 0);
            v112 = v136 + v131 + v104;
            v113 = &a49 + 2 * (v149 == 0);
            v114 = (__PAIR128__(v145, v149) - 1) >> 64;
            do
            {
              (*(v70 + 10))(v112, v75, v111, v113, v99);
              v113 += 2;
              ++v111;
              v112 += v134;
              --v114;
            }

            while (v114);
          }

          sub_27744A0A4(&STACK[0x4A0]);
          v137 = *(v144 + 408);
          v115 = ((v141 & 0xFFFFFFFFFFFFFFFELL) + *(v144 + 424) * v149) << *(v144 + 531);
          sub_277449FEC(&STACK[0x4A0], v143, v141, v148, v138, v147, 1u);
          v116 = (v139 + ((v99 + 8) >> 4));
          v93 = 16 * v76;
          if (v116 >= 2)
          {
            v117 = v116 - 1;
            v118 = v137 + v115 + 32;
            v119 = &a65;
            do
            {
              (*(v70 + 11))(v118, v76, v119, v94);
              v119 += 4;
              v118 += 32;
              --v117;
            }

            while (v117);
          }

          sub_27744A0A4(&STACK[0x4A0]);
          if (v145 > v146)
          {
            v120 = v129;
            v121 = v137 + v130 + v115;
            v122 = (__PAIR128__(v145, v149) - 1) >> 64;
            do
            {
              (*(v70 + 12))(v121, v76, v120, (v99 >> 1));
              v120 += 4;
              v121 += 16 * v76;
              --v122;
            }

            while (v122);
          }

          result = sub_27744A0A4(&STACK[0x4A0]);
          v69 = v143;
          v97 = v142 + 64;
        }

        while (v142 + 64 < v135);
      }

      v92 = v126 + 64;
      v84 = v125;
    }

    while (v126 + 64 < v123);
  }

  return result;
}

void *sub_277449FEC(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  __dst[9216] = a2;
  *(__dst + 18434) = a3;
  *(__dst + 18435) = a4;
  *(__dst + 18436) = a5;
  *(__dst + 18437) = a6;
  *(__dst + 18438) = a7;
  if (a6 >= 1)
  {
    v7 = __dst;
    v8 = *(a2 + 8);
    v9 = v8 + 8 * a7;
    v10 = *(v9 + 416);
    v11 = (*(v9 + 400) + ((v10 * a4 + (a3 >> (a7 != 0) << a7)) << *(v8 + 531)));
    v12 = 2 * a5;
    v13 = a6;
    v14 = 2 * v10;
    do
    {
      __dst = memcpy(v7, v11, v12);
      v11 += v14;
      v7 += v12;
      --v13;
    }

    while (v13);
  }

  return __dst;
}

int *sub_27744A0A4(int *result)
{
  v1 = result + 18432;
  v2 = result[18437];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[18438];
    v5 = *(*v1 + 8);
    v6 = v5 + 8 * v4;
    v7 = *(v6 + 416);
    v8 = *(*(*v1 + 32) + 19);
    v9 = *(*(*v1 + 16) + 283);
    v10 = result[18436];
    v11 = (v7 * result[18435] + (result[18434] >> (v4 != 0) << v4)) << *(v5 + 531);
    v12 = 16 * v7;
    v13 = 16 * v10;
    v14 = (*(v6 + 400) + v11);
    v15 = 2 * v10;
    v16 = 2 * v7;
    do
    {
      if (v10 >= 1)
      {
        v17 = 0;
        v18 = v14;
        v19 = result;
        do
        {
          v20 = (v1[2] + v17) >> 3;
          v21 = *(*(*v1 + 8) + 776) + 2 * *(*(*v1 + 8) + 768) * ((v1[3] + v3) >> 3);
          if (v8 && (*(v21 + 2 * v20) & 0x100) != 0 || v9 && (*(v21 + 2 * v20) & 0xC) != 0)
          {
            v22 = v18;
            v23 = v19;
            v24 = 8;
            do
            {
              *v22 = *v23;
              v23 = (v23 + v15);
              v22 = (v22 + v16);
              --v24;
            }

            while (v24);
            LODWORD(v10) = v1[4];
          }

          v17 += 8;
          v19 += 4;
          ++v18;
        }

        while (v17 < v10);
        v2 = v1[5];
      }

      v14 = (v14 + v12);
      v3 += 8;
      result = (result + v13);
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t sub_27744A1D4(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = result;
  v66 = *(a2 + 8);
  v67 = *(a2 + 16);
  v68 = *(v66 + 520);
  v69 = *(v66 + 524);
  v70 = *(v66 + 416);
  v71 = *(v66 + 424);
  v138 = v66;
  v72 = *(v67 + 2117);
  v73 = *(v67 + 2113);
  v74 = a3 << v73;
  v75 = a4 << v73;
  v76 = (a4 << v73) - 16;
  if (*(v67 + 2120) - 1 == a3)
  {
    v77 = v75 < 16;
    if (v75 >= 16)
    {
      v78 = 0;
    }

    else
    {
      v78 = v76;
    }

    v79 = v78 + v72;
    if (v77)
    {
      v80 = 0;
    }

    else
    {
      v80 = v76;
    }

    v81 = (v74 - 1) & 0xFFFFFFC0;
    if (v74 <= 63)
    {
      v81 = 0;
    }

    v128 = v81;
    v131 = v68 - v81;
    v82 = v79 + v80 - 8;
    if (v79 + v80 < 8)
    {
      v82 = 0;
    }

    *(result + 120) = v82;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v79 = v69 - v80;
      *(result + 120) = v69;
    }
  }

  else
  {
    if (!a3 || (v74 & 0x3F) != 0)
    {
      return result;
    }

    v83 = v75 < 16;
    if (v75 >= 16)
    {
      v84 = 0;
    }

    else
    {
      v84 = v76;
    }

    v79 = v84 + v72;
    if (v83)
    {
      v80 = 0;
    }

    else
    {
      v80 = v76;
    }

    if (v74 >= 64)
    {
      v85 = v74 - 64;
    }

    else
    {
      v85 = 0;
    }

    v128 = v85;
    if (v74 >= 64)
    {
      v74 = 64;
    }

    v131 = v74;
    v86 = v69 - v80;
    if (*(v67 + 2124) - 1 == a4)
    {
      v79 = v86;
    }
  }

  if (v79 >= 1)
  {
    v87 = 0;
    v116 = v80;
    vars8 = &a65;
    v130 = 16 * v70;
    v88 = 16 * v71;
    v117 = v79;
    v127 = a2;
    v126 = v68;
    v118 = v79;
    do
    {
      vars0 = v87;
      if (v79 - v87 >= 64)
      {
        v89 = 64;
      }

      else
      {
        v89 = (v79 - v87);
      }

      if (v131 >= 1)
      {
        v90 = 0;
        v141 = v87 + v116;
        v91 = v87 + v116 == 0;
        v139 = (v89 >> 3);
        v140 = v87 + v116 == 0;
        v129 = (__PAIR128__(v139, v87 + v116) - 1) >> 64;
        v124 = &STACK[0x900] + v91;
        v125 = &a49 + 2 * v91;
        v122 = v88 * v91;
        v123 = v130 * v91;
        v121 = &STACK[0x7C0] + 4 * v91;
        do
        {
          if (v131 - v90 >= 64)
          {
            v92 = 64;
          }

          else
          {
            v92 = (v131 - v90);
          }

          v93 = v90 + v128;
          v137 = v90;
          v94 = v92 + v128 + v90;
          v132 = *(v138 + 416);
          v133 = *(v138 + 400);
          v95 = *(v138 + 531);
          result = (*(v65 + 48))(a2, v93, v141, v92, v89, &a33);
          v134 = v94 < v68;
          v135 = v93;
          v96 = (v93 + v132 * v141) << v95;
          LODWORD(v97) = v92 >> 3;
          if (v94 >= v68)
          {
            v97 = v97;
          }

          else
          {
            v97 = (v97 + 1);
          }

          if (v97 >= 2)
          {
            v98 = v97 - 1;
            v99 = v133 + v96 + 16;
            v100 = &a33;
            v101 = &STACK[0x8C0];
            do
            {
              result = (*(v65 + 72))(v99, v70, v101, v100, v89);
              v100 += 16;
              ++v101;
              v99 += 16;
              --v98;
            }

            while (v98);
          }

          if (v139 > v140)
          {
            v102 = v124;
            v103 = v133 + v123 + v96;
            v104 = v125;
            v105 = v129;
            do
            {
              result = (*(v65 + 80))(v103, v70, v102, v104, v92);
              v104 += 2;
              ++v102;
              v103 += v130;
              --v105;
            }

            while (v105);
          }

          v106 = (v135 & 0xFFFFFFFFFFFFFFFELL) + *(v138 + 424) * v141;
          v136 = *(v138 + 408);
          v107 = v106 << *(v138 + 531);
          v108 = (v134 + ((v92 + 8) >> 4));
          v88 = 16 * v71;
          if (v108 >= 2)
          {
            v109 = v108 - 1;
            v110 = v136 + v107 + 32;
            v111 = &a65;
            do
            {
              result = (*(v65 + 88))(v110, v71, v111, v89);
              v111 += 4;
              v110 += 32;
              --v109;
            }

            while (v109);
          }

          if (v139 > v140)
          {
            v112 = (v92 >> 1);
            v113 = v121;
            v114 = v136 + v122 + v107;
            v115 = v129;
            do
            {
              result = (*(v65 + 96))(v114, v71, v113, v112);
              v113 += 4;
              v114 += 16 * v71;
              --v115;
            }

            while (v115);
          }

          v90 = v137 + 64;
          a2 = v127;
          v68 = v126;
        }

        while (v137 + 64 < v131);
      }

      v87 = vars0 + 64;
      v79 = v118;
    }

    while (vars0 + 64 < v117);
  }

  return result;
}

int *sub_27744A624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  result = MEMORY[0x28223BE20](a1);
  v52 = v51;
  v53 = v50;
  v54 = result;
  v55 = *(v50 + 8);
  v106 = *(v55 + 520);
  v56 = *(v55 + 416);
  v57 = *(v55 + 424);
  v58 = *v51;
  v107 = v55;
  if (*v51 < *(v55 + 524))
  {
    v58 &= 0xFFFFFFF0;
    *v51 = v58;
  }

  v59 = result[30];
  if (v59 < v58)
  {
    v111 = (v106 - 1) & 0xFFFFFFC0;
    vars0 = v57;
    vars8 = &a49;
    v113 = 16 * v56;
    v114 = v50;
    v105 = v52;
    v112 = 16 * v57;
    do
    {
      v60 = *(v107 + 531);
      v61 = *(v107 + 400) + ((*(v107 + 416) * v59) << v60);
      v62 = *(v107 + 408) + ((*(v107 + 424) * v59) << v60);
      v63 = v58 - v59;
      if (v63 >= 64)
      {
        v64 = 64;
      }

      else
      {
        v64 = v63;
      }

      if (v59)
      {
        v65 = v59 - 8;
      }

      else
      {
        v65 = 0;
      }

      v66 = v64 + 8;
      if (!v59)
      {
        v66 = v64;
      }

      v115 = v66;
      v116 = v65;
      v67 = v64 >> 3;
      v119 = (v64 >> 3);
      v68 = 0;
      if (v111 >= 1)
      {
        do
        {
          v120 = v62;
          (*(v54 + 6))(v53, v68, v54[30], 64, v64, &a17);
          v117 = v68;
          sub_277449FEC(&STACK[0x420], v53, v68, v116, 72, v115, 0);
          v69 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v54 + 9))(v61 + i, v56, &STACK[0x3A0] + v69, &STACK[0x3A0] + i - 784, v64);
            v69 += 8;
          }

          sub_27744A0A4(&STACK[0x420]);
          v71 = v54[30];
          if (v67 > (v71 == 0))
          {
            v72 = v71 == 0;
            v73 = v119 - v72;
            v74 = &a33 + 2 * v72;
            v75 = &STACK[0x3E0] + v72;
            v76 = v61 + v113 * v72;
            do
            {
              (*(v54 + 10))(v76, v56, v75, v74, 64);
              v74 += 2;
              ++v75;
              v76 += v113;
              --v73;
            }

            while (v73);
          }

          sub_27744A0A4(&STACK[0x420]);
          sub_277449FEC(&STACK[0x420], v114, v117, v116, 72, v115, 1u);
          v77 = 0;
          v57 = vars0;
          do
          {
            v78 = v77 + 32;
            (*(v54 + 11))(v77 + 32 + v120, vars0, &a49 + v77, v64);
            v77 = v78;
          }

          while (v78 != 128);
          sub_27744A0A4(&STACK[0x420]);
          v79 = v54[30];
          if (v119 > (v79 == 0))
          {
            v80 = v79 == 0;
            v81 = v119 - v80;
            v82 = &STACK[0x2A0] + 4 * v80;
            v83 = v120 + v112 * v80;
            do
            {
              (*(v54 + 12))(v83, vars0, v82, 32);
              v82 += 4;
              v83 += v112;
              --v81;
            }

            while (v81);
          }

          result = sub_27744A0A4(&STACK[0x420]);
          v61 += 128;
          v67 = v64 >> 3;
          v62 = v120 + 128;
          v68 = (v117 + 64);
          v53 = v114;
        }

        while (v68 < v111);
        v59 = v54[30];
      }

      v84 = v106 - v68;
      if (v106 == v68)
      {
        v52 = v105;
      }

      else
      {
        v121 = v62;
        (*(v54 + 6))(v53, v68, v59, (v106 - v68), v64, &a17);
        v118 = v68;
        sub_277449FEC(&STACK[0x420], v53, v68, v116, v84, v115, 0);
        v108 = v106 - v68;
        if (v84 >> 3 >= 2)
        {
          v85 = ((v84 >> 3) - 1);
          v86 = v61 + 16;
          v87 = &a17;
          v88 = &STACK[0x3A0];
          do
          {
            (*(v54 + 9))(v86, v56, v88, v87, v64);
            v87 += 16;
            ++v88;
            v86 += 16;
            --v85;
          }

          while (v85);
        }

        sub_27744A0A4(&STACK[0x420]);
        v89 = v54[30];
        if (v119 > (v89 == 0))
        {
          v90 = v89 == 0;
          v91 = v119 - v90;
          v92 = &a33 + 2 * v90;
          v93 = &STACK[0x3E0] + v90;
          v94 = v61 + v113 * v90;
          do
          {
            (*(v54 + 10))(v94, v56, v93, v92, v108);
            v92 += 2;
            ++v93;
            v94 += v113;
            --v91;
          }

          while (v91);
        }

        sub_27744A0A4(&STACK[0x420]);
        sub_277449FEC(&STACK[0x420], v114, v118, v116, v108, v115, 1u);
        v95 = (v108 + 8) >> 4;
        if (v95 >= 2)
        {
          v96 = (v95 - 1);
          v97 = v121 + 32;
          v98 = &a49;
          do
          {
            (*(v54 + 11))(v97, v57, v98, v64);
            v98 += 4;
            v97 += 32;
            --v96;
          }

          while (v96);
        }

        sub_27744A0A4(&STACK[0x420]);
        v99 = v54[30];
        if (v119 > (v99 == 0))
        {
          v100 = v99 == 0;
          v101 = v119 - v100;
          v102 = &STACK[0x2A0] + 4 * v100;
          v103 = v121 + v112 * v100;
          do
          {
            (*(v54 + 12))(v103, v57, v102, (v108 >> 1));
            v102 += 4;
            v103 += v112;
            --v101;
          }

          while (v101);
        }

        result = sub_27744A0A4(&STACK[0x420]);
        LODWORD(v59) = v54[30];
        v52 = v105;
        v53 = v114;
      }

      v59 = (v59 + v64);
      v54[30] = v59;
      v58 = *v52;
    }

    while (v59 < *v52);
  }

  v104 = *(v107 + 524);
  if (v104 >= v59)
  {
    v104 = v59;
  }

  *v52 = v104;
  if (v54[30] < *(v107 + 524))
  {
    if (v104 <= 4)
    {
      v104 = 4;
    }

    *v52 = v104 - 4;
  }

  return result;
}