uint64_t sub_2773FBD6C(uint64_t a1, uint64_t a2)
{
  *a1 = sub_2773FB848(a2, 8);
  *(a1 + 1) = sub_2773FB848(a2, 2);
  *(a1 + 2) = sub_2773FB848(a2, 1) != 0;
  *(a1 + 3) = sub_2773FB848(a2, 5);
  v4 = sub_2773FB848(a2, 16);
  *(a1 + 4) = sub_2773FB848(a2, 16) + (v4 << 16);
  v5 = sub_2773FB848(a2, 16);
  v6 = sub_2773FB848(a2, 16) + (v5 << 16);
  *(a1 + 8) = sub_2773FB848(a2, 16) | (v6 << 16);
  *(a1 + 16) = sub_2773FB848(a2, 8);
  v7 = sub_2773FB848(a2, 4);
  *(a1 + 18) = sub_2773FB848(a2, 12);
  v8 = sub_2773FB848(a2, 6);
  *(a1 + 20) = sub_2773FB848(a2, 2);
  v9 = sub_2773FB848(a2, 6);
  *(a1 + 21) = sub_2773FB848(a2, 2);
  v10 = sub_2773FB848(a2, 5);
  *(a1 + 22) = sub_2773FB848(a2, 3);
  v11 = sub_2773FB848(a2, 5);
  *(a1 + 23) = sub_2773FB848(a2, 3);
  *(a1 + 24) = sub_2773FB848(a2, 16);
  *(a1 + 26) = sub_2773FB848(a2, 2);
  *(a1 + 27) = sub_2773FB848(a2, 3);
  *(a1 + 28) = sub_2773FB848(a2, 1) != 0;
  *(a1 + 29) = sub_2773FB848(a2, 2);
  *(a1 + 30) = sub_2773FB848(a2, 8);
  if (*(a2 + 56))
  {
    return 4294954387;
  }

  if (*a1 != 1)
  {
    return 4294954394;
  }

  v13 = *(a1 + 29);
  result = 4294954394;
  if (v13 <= 3 && v13 != 2)
  {
    result = 0;
    v17 = v11 == 31 && v10 == 31 && v9 == 63 && v8 == 63 && v7 == 15;
    if (!v17 && dword_280B9A880 >= 3)
    {
      fwrite("Invalid value for a reserved hvcC field\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Invalid value for a reserved hvcC field\n");
      return 0;
    }
  }

  return result;
}

void *sub_2773FC004(void *a1)
{
  v2 = a1[197];
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  v3 = a1[195];
  if (v3)
  {
    sub_2773CC26C(v3);
  }

  v4 = a1[193];
  if (v4)
  {
    sub_2773CC26C(v4);
  }

  for (i = 191; i != 63; i -= 2)
  {
    v6 = a1[i];
    if (v6)
    {
      sub_2773CC26C(v6);
    }
  }

  do
  {
    v7 = a1[i];
    if (v7)
    {
      sub_2773CC26C(v7);
    }

    i -= 2;
  }

  while (i != 31);
  do
  {
    v8 = a1[i];
    if (v8)
    {
      sub_2773CC26C(v8);
    }

    i -= 2;
  }

  while (i != -1);
  return a1;
}

uint64_t sub_2773FC098(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v33 = a1 + 1170;
  v5 = a1 + 780;
  while (2)
  {
    v6 = 0;
    if (v4)
    {
      v7 = byte_27753D120;
    }

    else
    {
      v7 = byte_27753D0F8;
    }

    if (v4)
    {
      v8 = 64;
    }

    else
    {
      v8 = 16;
    }

    if (v4 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v30 = v9;
    v31 = v8;
    v32 = v7;
    v29 = v8 | 1;
    v28 = *v7 + 1;
    do
    {
      v10 = v6 - 3;
      if (v6 < 3)
      {
        v10 = v6;
      }

      v11 = 65 * v6;
      if (v4 == 3 && v10)
      {
        v12 = v33 + v11;
        v13 = *(v5 + v11 + 48);
        *(v12 + 32) = *(v5 + v11 + 32);
        *(v12 + 48) = v13;
        *(v12 + 64) = *(v5 + v11 + 64);
        v14 = *(v5 + v11 + 16);
        *v12 = *(v5 + 65 * v6);
        *(v12 + 16) = v14;
      }

      else if (sub_2773FB848(a2, 1))
      {
        if (v4 <= 1)
        {
          v16 = 8;
        }

        else
        {
          v15 = sub_2773FB90C(a2);
          v16 = (-((v15 + 1) & 1) ^ ((v15 + 1) >> 1)) + ((v15 + 1) & 1) + 8;
          *(a1 + 390 * v4 + 65 * v6) = (-((v15 + 1) & 1) ^ ((v15 + 1) >> 1)) + ((v15 + 1) & 1) + 8;
        }

        v22 = v31;
        v23 = v32;
        do
        {
          v24 = sub_2773FB90C(a2);
          v26 = *v23++;
          v25 = v26;
          if ((v16 + ((v24 + 1) & 1) + (-((v24 + 1) & 1) ^ ((v24 + 1) >> 1)) + 256) <= 0)
          {
            v16 = --(v16 + ((v24 + 1) & 1) + (-((v24 + 1) & 1) ^ ((v24 + 1) >> 1)) + 256);
          }

          else
          {
            v16 = (v16 + ((v24 + 1) & 1) + (-((v24 + 1) & 1) ^ ((v24 + 1) >> 1)));
          }

          *(v25 + v11 + a1 + 390 * v4 + 1) = v16;
          --v22;
        }

        while (v22);
        if (v4 < 2)
        {
          *(a1 + 390 * v4 + 65 * v6) = *(a1 + 390 * v4 + 65 * v6 + v28);
        }
      }

      else
      {
        v17 = sub_2773FB90C(a2);
        v18 = (v17 * v30);
        if (v6 < v18)
        {
          return 4294954394;
        }

        v19 = &unk_27750DBE0 + ((v6 > 2) | ((v6 > 2) << 6));
        if (!v4)
        {
          v19 = &unk_27750DBCF;
        }

        v20 = a1 + 390 * v4 + 65 * (v6 - v18);
        if (v17)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19;
        }

        memcpy((a1 + 390 * v4 + v11), v21, v29);
      }

      ++v6;
    }

    while (v6 != 6);
    if (++v4 != 4)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sub_2773FC2D8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  v4 = result;
  v39 = result;
  do
  {
    v5 = 0;
    v6 = byte_27753D120;
    if (!v3)
    {
      v6 = byte_27753D0F8;
    }

    v38 = v6;
    if (v3)
    {
      v7 = 64;
    }

    else
    {
      v7 = 16;
    }

    if (v3 == 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    v37 = v7;
    v9 = v7 | 1;
    v10 = v8 | (v8 << 6);
    v35 = v4;
    v40 = v10;
    __s2 = (v4 - v10);
    v46 = -v10;
    v47 = result + 390 * v3;
    v42 = v8;
    v43 = v3;
    v41 = v9;
    do
    {
      if (v3)
      {
        v11 = &unk_27750DBE0 + ((v5 > 2) | ((v5 > 2) << 6));
      }

      else
      {
        v11 = &unk_27750DBCF;
      }

      v12 = 65 * v5;
      v13 = memcmp((v47 + 65 * v5), v11, v9);
      v44 = v5;
      if (v5 >= v8)
      {
        v14 = __s2;
        v15 = v8;
        while (memcmp((v47 + v12), v14, v9))
        {
          v15 += v8;
          v14 += v46;
          if (v15 > v5)
          {
            goto LABEL_18;
          }
        }

        sub_2773FB780(v2, 0, 1);
        v16 = v15 / v8 + 1;
LABEL_25:
        v22 = __clz(v16);
        sub_2773FB780(v2, (v16 - (0x80000000 >> v22)) | (0x80000000 >> v22), 63 - 2 * v22);
        v3 = v43;
        goto LABEL_32;
      }

LABEL_18:
      v16 = 1;
      sub_2773FB780(v2, v13 != 0, 1);
      if (!v13)
      {
        goto LABEL_25;
      }

      if (v3 < 2)
      {
        v21 = 8;
      }

      else
      {
        v17 = *(v47 + 65 * v5);
        if (v17 <= 8)
        {
          v18 = 16 - 2 * v17;
        }

        else
        {
          v18 = 2 * v17 - 17;
        }

        v19 = v18 + 1;
        v20 = __clz(v19);
        sub_2773FB780(v2, (v19 - (0x80000000 >> v20)) | (0x80000000 >> v20), 63 - 2 * v20);
        v21 = *(v47 + 65 * v5);
      }

      v24 = v37;
      v23 = v38;
      v3 = v43;
      v2 = a2;
      do
      {
        v25 = *v23++;
        v26 = v25 + v12 + v39 + 390 * v43;
        v27 = *(v26 + 1);
        v28 = __OFSUB__(v27, v21);
        v30 = v27 - v21;
        v29 = (v30 < 0) ^ v28 | (v30 == 0);
        v31 = 2 * v30;
        if (v29)
        {
          v32 = -v31;
        }

        else
        {
          v32 = v31 - 1;
        }

        v33 = v32 + 1;
        v34 = __clz(v33);
        sub_2773FB780(a2, (v33 - (0x80000000 >> v34)) | (0x80000000 >> v34), 63 - 2 * v34);
        v21 = *(v26 + 1);
        --v24;
      }

      while (v24);
LABEL_32:
      v9 = v41;
      v8 = v42;
      v5 += v42;
      __s2 += v40;
    }

    while (v44 + v42 < 6);
    ++v3;
    v4 = v35 + 390;
    result = v39;
  }

  while (v3 != 4);
  return result;
}

uint64_t sub_2773FC57C(_BYTE *__dst, const char *a2)
{
  v2 = __dst;
  v3 = 0;
  v4 = __dst;
  do
  {
    v5 = 0;
    if (v3)
    {
      v6 = 65;
    }

    else
    {
      v6 = 17;
    }

    v7 = v4;
    do
    {
      if (v3)
      {
        v8 = &unk_27750DBE0 + ((v5 > 2) | ((v5 > 2) << 6));
      }

      else
      {
        v8 = &unk_27750DBCF;
      }

      memcpy(v7, v8, v6);
      ++v5;
      v7 += 65;
    }

    while (v5 != 6);
    ++v3;
    v4 += 390;
  }

  while (v3 != 4);
  if (!a2)
  {
    return 0;
  }

  v9 = strdup(a2);
  if (!v9)
  {
    return 4294954392;
  }

  v10 = v9;
  __stringp = v9;
  v44 = 0;
  v11 = strlen(v9);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = __stringp[i];
      if (v13 == 61 || v13 == 44)
      {
        __stringp[i] = 32;
      }
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
LABEL_20:
    v17 = strsep(&__stringp, "\r\n");
    v44 = v17;
    if (!v17)
    {
      v39 = 6;
      do
      {
        *v2 = v2[1];
        v2[390] = v2[391];
        v2 += 65;
        --v39;
      }

      while (v39);
      v38 = 0;
      goto LABEL_68;
    }
  }

  while (*v17 == 35);
  while (1)
  {
    while (1)
    {
      do
      {
        v36 = strsep(&v44, " ");
        v37 = v36;
        if (!v36)
        {
          goto LABEL_20;
        }
      }

      while (!*v36);
      if (*v36 == 20041 && v36[2] == 84)
      {
        break;
      }

      if (!v14)
      {
        if (dword_280B9A880 < 3)
        {
          goto LABEL_79;
        }

        v41 = "Unexpected token (expected coeff): '%s'\n";
        fprintf(*MEMORY[0x277D85DF8], "Unexpected token (expected coeff): '%s'\n");
LABEL_73:
        syslog(27, v41, v37);
        goto LABEL_79;
      }

      if (v16 >= v15)
      {
        if (dword_280B9A880 >= 3)
        {
          fwrite("coeff_idx exceeded num_coeff\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(27, "coeff_idx exceeded num_coeff\n");
        }

        v38 = 4294954385;
        goto LABEL_68;
      }

      v19 = atoi(v36);
      v20 = v19;
      if (v19 >= 0x100)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "Invalid coeff %d\n", v19);
          syslog(27, "Invalid coeff %d\n", v20);
        }

        goto LABEL_79;
      }

      *(v14 + v16++) = v19;
      if (v16 >= v15)
      {
        v14 = 0;
      }
    }

    if (v14)
    {
      if (dword_280B9A880 <= 2)
      {
        goto LABEL_79;
      }

      v41 = "Unexpected token '%s' (expected more coefficients)\n";
      fprintf(*MEMORY[0x277D85DF8], "Unexpected token '%s' (expected more coefficients)\n");
      goto LABEL_73;
    }

    if (strlen(v36) <= 0xC || (v21 = strncmp(v37, "INTRA", 5uLL), v22 = strncmp(v37, "INTER", 5uLL), v23 = v22, v21) && v22)
    {
LABEL_80:
      if (dword_280B9A880 > 2)
      {
LABEL_83:
        fprintf(*MEMORY[0x277D85DF8], "Invalid token '%s'\n", v37);
        syslog(27, "Invalid token '%s'\n", v37);
      }

LABEL_79:
      v38 = 4294954394;
      goto LABEL_68;
    }

    v24 = strchr(v37, 88);
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v26 = atoi(v37 + 5);
    if (v26 != atoi(v25 + 1) || (HIDWORD(v28) = v26 - 4, LODWORD(v28) = v26 - 4, v27 = v28 >> 2, v27 > 7) || ((1 << v27) & 0x8B) == 0)
    {
      if (dword_280B9A880 >= 3)
      {
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    v29 = strchr(v37, 95);
    if (!v29)
    {
      goto LABEL_80;
    }

    v30 = v29;
    v31 = __clz(__rbit32(v26)) - 2;
    if (v26)
    {
      v32 = v31;
    }

    else
    {
      v32 = -2;
    }

    if (v23)
    {
      v33 = 0;
    }

    else
    {
      v33 = 3;
    }

    if (strncmp(v29, "_LUMA", 5uLL))
    {
      if (!strncmp(v30, "_CHROMAU", 8uLL))
      {
        ++v33;
      }

      else
      {
        if (strncmp(v30, "_CHROMAV", 8uLL))
        {
          goto LABEL_80;
        }

        v33 += 2;
      }
    }

    v34 = strchr(v30 + 1, 95);
    if (v34)
    {
      if (*v34 != 95 || v34[1] != 68 || v34[2] != 67)
      {
        if (dword_280B9A880 >= 3)
        {
          goto LABEL_83;
        }

        goto LABEL_79;
      }

      v16 = 0;
      v14 = &v2[390 * v32 + (v33 | (v33 << 6))];
      v15 = 1;
    }

    else
    {
      v35 = v26;
      v16 = 0;
      v14 = &v2[390 * v32 + 1 + (v33 | (v33 << 6))];
      if (v35 == 4)
      {
        v15 = 16;
      }

      else
      {
        v15 = 64;
      }
    }
  }

  if (dword_280B9A880 > 2)
  {
LABEL_89:
    fprintf(*MEMORY[0x277D85DF8], "Invalid token '%s'\n", v37);
    syslog(27, "Invalid token '%s'\n", v37);
  }

LABEL_90:
  v38 = 4294954387;
LABEL_68:
  free(v10);
  return v38;
}

uint64_t *sub_2773FCAFC(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x277CAD170](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2773FCC7C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x277CAD300](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2773FCCB4(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x277CAD180](a1 + 2);

  return std::istream::~istream();
}

uint64_t sub_2773FCD80(uint64_t result, FILE *__stream)
{
  v3 = 0;
  v4 = dword_280B9A880;
  v11 = result;
  v5 = result + 1;
  do
  {
    v6 = 0;
    v7 = 16 << (2 * v3);
    if (v7 >= 0x40)
    {
      v7 = 64;
    }

    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v3 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v12 = v5;
    do
    {
      if (v4 > 5)
      {
        result = fprintf(__stream, "  scalingList[%d][%d] {", v3, v6);
        v4 = dword_280B9A880;
        if (v3 >= 2 && dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "\n    scaling_list_dc_coeff : %d", *(v11 + 390 * v3 + 65 * v6));
          v4 = dword_280B9A880;
        }
      }

      for (i = 0; i != v8; ++i)
      {
        if (!(i & 3 | v3))
        {
          if (v4 < 6)
          {
            continue;
          }

LABEL_22:
          result = fwrite("\n   ", 4uLL, 1uLL, __stream);
          v4 = dword_280B9A880;
          goto LABEL_23;
        }

        if (v3 && (i & 7) == 0 && v4 > 5)
        {
          goto LABEL_22;
        }

LABEL_23:
        if (v4 >= 6)
        {
          result = fprintf(__stream, " %3d", *(v5 + i));
          v4 = dword_280B9A880;
        }
      }

      if (v4 > 5)
      {
        result = fwrite("\n  }\n", 5uLL, 1uLL, __stream);
        v4 = dword_280B9A880;
      }

      v6 += v9;
      v5 += 65 * v9;
    }

    while (v6 < 6);
    ++v3;
    v5 = v12 + 390;
  }

  while (v3 != 4);
  return result;
}

uint64_t sub_2773FCF4C(uint64_t result, unsigned __int8 *a2)
{
  v2 = 0;
  *(result + 24) = a2;
  *result = xmmword_27750D350;
  v3 = *(result + 32);
  v4 = a2 & 3 | 0xFFFFFFFFFFFFFFF8;
  v5 = 56;
  v6 = a2;
  do
  {
    v2 |= *v6 << v5;
    *result = v2;
    if (v6 < v3)
    {
      *(result + 24) = ++v6;
    }

    v5 -= 8;
  }

  while (!__CFADD__(v4++, 1));
  *(result + 16) = ((8 * a2) | 0xFFFFFFE0);
  return result;
}

uint64_t sub_2773FCFB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - 2;
  a1[1] = v2;
  if (v1 >= v2 << 55)
  {
    return 1;
  }

  if (v2 > 0xFF)
  {
    return 0;
  }

  v3 = 2 * v1;
  *a1 = v3;
  a1[1] = 2 * v2;
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 >= -1)
  {
    v6 = a1[3];
    v7 = a1[4];
    v9 = *v6;
    v8 = v6 + 1;
    *a1 = (bswap32(v9) << v5) + v3;
    v5 = v4 - 31;
    if (v8 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    a1[3] = v10;
  }

  v11 = 0;
  a1[2] = v5;
  return v11;
}

uint64_t sub_2773FD034(unint64_t *a1, unsigned int a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1] << 54;
  v5 = a1[2];
  do
  {
    v6 = v3;
    if (v3 < v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    v3 = 2 * (v6 - v7);
    if (v5 < -1)
    {
      ++v5;
    }

    else
    {
      v8 = a1[3];
      v10 = *v8;
      v9 = v8 + 1;
      v3 += bswap32(v10) << (v5 + 1);
      v5 -= 31;
      if (v9 >= a1[4])
      {
        v11 = a1[4];
      }

      else
      {
        v11 = v9;
      }

      a1[3] = v11;
    }

    ++v2;
    a1[2] = v5;
    *a1 = v3;
  }

  while (v6 >= v4 && v2 < a2);
  return v2 - (v6 < v4);
}

__n128 sub_2773FD0BC(uint64_t a1)
{
  *(a1 + 8) = *(a1 + 232);
  *(a1 + 24) = *(a1 + 248);
  v1 = *(a1 + 408);
  *(a1 + 168) = *(a1 + 392);
  *(a1 + 184) = v1;
  v2 = *(a1 + 440);
  *(a1 + 200) = *(a1 + 424);
  *(a1 + 216) = v2;
  v3 = *(a1 + 344);
  *(a1 + 104) = *(a1 + 328);
  *(a1 + 120) = v3;
  v4 = *(a1 + 376);
  *(a1 + 136) = *(a1 + 360);
  *(a1 + 152) = v4;
  v5 = *(a1 + 280);
  *(a1 + 40) = *(a1 + 264);
  *(a1 + 56) = v5;
  result = *(a1 + 296);
  v7 = *(a1 + 312);
  *(a1 + 72) = result;
  *(a1 + 88) = v7;
  return result;
}

__n128 sub_2773FD11C(uint64_t a1)
{
  v1 = *(a1 + 184);
  *(a1 + 392) = *(a1 + 168);
  *(a1 + 408) = v1;
  v2 = *(a1 + 216);
  *(a1 + 424) = *(a1 + 200);
  *(a1 + 440) = v2;
  v3 = *(a1 + 120);
  *(a1 + 328) = *(a1 + 104);
  *(a1 + 344) = v3;
  v4 = *(a1 + 152);
  *(a1 + 360) = *(a1 + 136);
  *(a1 + 376) = v4;
  v5 = *(a1 + 56);
  *(a1 + 264) = *(a1 + 40);
  *(a1 + 280) = v5;
  v6 = *(a1 + 88);
  *(a1 + 296) = *(a1 + 72);
  *(a1 + 312) = v6;
  *(a1 + 232) = *(a1 + 8);
  result = *(a1 + 24);
  *(a1 + 248) = result;
  v8 = 8 * (*(a1 + 464) - *(a1 + 32));
  *(a1 + 40) = 0;
  *(a1 + 16) = 510;
  *(a1 + 24) = v8;
  return result;
}

void *sub_2773FD1C4(void *result, int a2, _BYTE *a3, int a4, int a5)
{
  if (a5)
  {
    v9 = result;
    result = sub_2773FD274(result, a2 != 0, a3);
    if (a2)
    {
      v10 = &a3[a4];
      v11 = a2 - 1;
      if (a2 != 1)
      {
        do
        {
          result = sub_2773FD274(v9, 1u, v10);
          --v11;
        }

        while (v11);
      }

      if (a5 > a2)
      {

        return sub_2773FD274(v9, 0, v10);
      }
    }
  }

  return result;
}

void *sub_2773FD274(void *result, unsigned int a2, _BYTE *a3)
{
  v3 = *a3;
  v4 = byte_27750DDF3[(result[2] & 0xC0) + (v3 >> 1)];
  v5 = v3 & 1;
  v6 = result[3];
  v7 = result[2] - v4;
  if (v5 == a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = result[2] - v4;
  }

  v9 = v8 + result[1];
  if (v5 != a2)
  {
    v7 = byte_27750DDF3[(result[2] & 0xC0) + (v3 >> 1)];
  }

  *a3 = byte_27750DDF3[(v5 ^ a2 | (2 * v3)) + 256];
  v10 = __clz(v7) - 55;
  v11 = v7 << v10;
  v12 = v9 << v10;
  v13 = v6 + v10;
  result[2] = v11;
  v14 = v13 - 32;
  if (v13 >= 32)
  {
    v15 = result[4];
    if (v15 < result[5])
    {
      v16 = result[58];
      v17 = v13 - 22;
      v18 = v12 >> v17;
      result[4] = v15 + 1;
      *v15 = bswap32(v12 >> v17);
      v12 &= ~(-1 << v17);
      if ((v18 & 0x100000000) != 0)
      {
        v19 = v15 - 1;
        do
        {
          if (v19 < v16)
          {
            break;
          }

          v20 = *v19;
          *v19 = bswap32(bswap32(*v19) + 1);
          --v19;
        }

        while (v20 == -1);
      }

      v13 = v14;
    }
  }

  result[1] = v12;
  result[3] = v13;
  return result;
}

void *sub_2773FD350(void *result, signed int a2, _BYTE *a3, signed int a4)
{
  v7 = result;
  if (a4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 1)
  {
    v9 = a3;
    do
    {
      result = sub_2773FD274(v7, 1u, v9++);
      --v8;
    }

    while (v8);
  }

  if (a2 < a4)
  {

    return sub_2773FD274(v7, 0, &a3[a2]);
  }

  return result;
}

void *sub_2773FD3F4(void *a1, unsigned int a2, int a3)
{
  v3 = 1 << a3;
  for (i = a3; a2 >= 1 << i; v3 = 1 << i)
  {
    ++i;
    a2 -= v3;
  }

  return sub_2773FD438(a1, a2 | (-2 << i), 2 * i - a3 + 1);
}

void *sub_2773FD438(void *a1, unsigned int a2, int a3)
{
  if (a3 >= 23)
  {
    v6 = a3 + 1;
    do
    {
      result = sub_2773FD574(a1, (a2 >> (v6-- - 2)) & 1);
    }

    while (v6 > 1);
  }

  else
  {

    return sub_2773FD4B8(a1, a2, a3);
  }

  return result;
}

void *sub_2773FD4B8(void *result, int a2, int a3)
{
  if (a3)
  {
    v3 = result[1];
    v4 = result[3] + a3;
    if (a3 >= 1)
    {
      v5 = a2 << -a3;
      v6 = a3 + 1;
      do
      {
        if (v5 >= 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = result[2];
        }

        v3 = v7 + 2 * v3;
        v5 *= 2;
        --v6;
      }

      while (v6 > 1);
    }

    v8 = v4 - 32;
    if (v4 >= 32)
    {
      v9 = result[4];
      if (v9 < result[5])
      {
        v10 = result[58];
        v11 = v4 - 22;
        v12 = v3 >> v11;
        result[4] = v9 + 1;
        *v9 = bswap32(v3 >> v11);
        v3 &= ~(-1 << v11);
        if ((v12 & 0x100000000) != 0)
        {
          v13 = v9 - 1;
          do
          {
            if (v13 < v10)
            {
              break;
            }

            v14 = *v13;
            *v13 = bswap32(bswap32(*v13) + 1);
            --v13;
          }

          while (v14 == -1);
        }

        v4 = v8;
      }
    }

    result[1] = v3;
    result[3] = v4;
  }

  return result;
}

void *sub_2773FD574(void *result, int a2)
{
  v2 = 2 * result[1];
  if (a2)
  {
    v2 += result[2];
  }

  v3 = result[3];
  v4 = v3 + 1;
  v5 = v3 - 31;
  if (v3 >= 31)
  {
    v6 = result[4];
    if (v6 < result[5])
    {
      v7 = result[58];
      v8 = v3 - 21;
      v9 = v2 >> v8;
      result[4] = v6 + 1;
      *v6 = bswap32(v2 >> v8);
      v2 &= ~(-1 << v8);
      if ((v9 & 0x100000000) != 0)
      {
        v10 = v6 - 1;
        do
        {
          if (v10 < v7)
          {
            break;
          }

          v11 = *v10;
          *v10 = bswap32(bswap32(*v10) + 1);
          --v10;
        }

        while (v11 == -1);
      }

      v4 = v5;
    }
  }

  result[1] = v2;
  result[3] = v4;
  return result;
}

void *sub_2773FD630(void *a1, int a2, int a3)
{
  if (a3 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 22)
  {
    do
    {
      result = sub_2773FD574(a1, 1);
      --v6;
    }

    while (v6);
    if (a2 < a3)
    {

      return sub_2773FD574(a1, 0);
    }
  }

  else
  {
    v7 = a2 < a3;
    if (a2 >= a3)
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 + 1;
    }

    return sub_2773FD4B8(a1, ~v7, v8);
  }

  return result;
}

void *sub_2773FD6E8(void *result, int a2)
{
  v2 = result[2] - 2;
  v3 = 1 - (v2 >> 8);
  v4 = 2;
  if (!a2)
  {
    v4 = result[2] - 2;
    v2 = 0;
  }

  v5 = v2 + result[1];
  if (a2)
  {
    v6 = 7;
  }

  else
  {
    v6 = v3;
  }

  v7 = v5 << v6;
  v8 = result[3] + v6;
  result[2] = v4 << v6;
  v9 = v8 - 32;
  if (v8 >= 32)
  {
    v10 = result[4];
    if (v10 < result[5])
    {
      v11 = result[58];
      v12 = v8 - 22;
      v13 = v7 >> v12;
      result[4] = v10 + 1;
      *v10 = bswap32(v7 >> v12);
      v7 &= ~(-1 << v12);
      if ((v13 & 0x100000000) != 0)
      {
        v14 = v10 - 1;
        do
        {
          if (v14 < v11)
          {
            break;
          }

          v15 = *v14;
          *v14 = bswap32(bswap32(*v14) + 1);
          --v14;
        }

        while (v15 == -1);
      }

      v8 = v9;
    }
  }

  result[1] = v7;
  result[3] = v8;
  return result;
}

uint64_t sub_2773FD7B4(uint64_t result, int a2, _BYTE *a3, int a4, int a5)
{
  if (a5)
  {
    v5 = *(result + 228) + dword_27753C4AC[(*a3 ^ (a2 != 0))];
    *(result + 228) = v5;
    if (a2)
    {
      v6 = a2 - 1;
      if (a2 != 1)
      {
        do
        {
          v5 += dword_27753C4AC[a3[a4] ^ 1];
          *(result + 228) = v5;
          --v6;
        }

        while (v6);
      }

      if (a5 > a2)
      {
        *(result + 228) = v5 + dword_27753C4AC[a3[a4]];
      }
    }
  }

  return result;
}

uint64_t sub_2773FD828(uint64_t result, signed int a2, unsigned __int8 *a3, signed int a4)
{
  if (a4 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a4;
  }

  if (v4 >= 1)
  {
    v5 = *(result + 228);
    v6 = a3;
    do
    {
      v7 = *v6++;
      v5 += dword_27753C4AC[v7 ^ 1];
      *(result + 228) = v5;
      --v4;
    }

    while (v4);
  }

  if (a2 < a4)
  {
    *(result + 228) += dword_27753C4AC[a3[a2]];
  }

  return result;
}

uint64_t sub_2773FD884(uint64_t result, unsigned int a2, int a3)
{
  v3 = 1 << a3;
  v4 = a3;
  if (1 << a3 <= a2)
  {
    v4 = a3;
    do
    {
      ++v4;
      a2 -= v3;
      v3 = 1 << v4;
    }

    while (a2 >= 1 << v4);
  }

  *(result + 228) = *(result + 228) - (a3 << 8) + (v4 << 9) + 256;
  return result;
}

uint64_t sub_2773FD8E4(uint64_t result, int a2, int a3)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < a3)
  {
    ++v3;
  }

  *(result + 228) += v3 << 8;
  return result;
}

uint64_t sub_2773FD924(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1792;
  }

  else
  {
    v2 = 2;
  }

  *(result + 228) += v2;
  return result;
}

void sub_2773FD97C(void *a1)
{
  for (i = 0; i != 32; i += 2)
  {
    v3 = &a1[i];
    v4 = a1[i + 4];
    v3[3] = 0;
    v3[4] = 0;
    if (v4)
    {
      sub_2773CC26C(v4);
    }

    v5 = v3[36];
    v3[35] = 0;
    v3[36] = 0;
    if (v5)
    {
      sub_2773CC26C(v5);
    }

    v6 = &a1[i];
    v7 = a1[i + 68];
    *&a1[i + 67] = 0u;
    if (v7)
    {
      sub_2773CC26C(v7);
    }

    v8 = v6[100];
    *(v6 + 99) = 0u;
    if (v8)
    {
      sub_2773CC26C(v8);
    }

    v9 = a1[i + 132];
    *&a1[i + 131] = 0u;
    if (v9)
    {
      sub_2773CC26C(v9);
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

uint64_t sub_2773FDA2C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  v87 = 0;
  v88 = a2;
  v85[0] = &v86;
  v85[1] = &v88;
  v86 = 0;
  v78 = a1;
  if (a5)
  {
    v9 = (*(a5 + 4) + *a5);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = a5 + 24;
      v82 = a5 + 120;
      v80 = 0;
      v81 = -*(*a3 + 2108) & a6;
      v79 = a1 + 134;
      v77 = a1 + 262;
      while (1)
      {
        v13 = *(v12 + 2 * v10);
        v14 = 1 << v10;
        if (((1 << v10) & *(a5 + 186)) != 0)
        {
          break;
        }

        v29 = v9;
        v30 = v12;
        v31 = v6;
        v32 = v88;
        v33 = *(*a3 + 224);
        if ((atomic_load_explicit(&qword_280A71200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71200))
        {
          __cxa_atexit(sub_2773FE28C, &qword_280A711F0, &dword_2773BE000);
          __cxa_guard_release(&qword_280A71200);
        }

        v34 = 0;
        v35 = ~(-16 << v33);
        v36 = v32 + 32;
        v6 = v31;
        v12 = v30;
        v9 = v29;
        while (!*v36 || ((*(*v36 + 1024) ^ v13) & v35) != 0)
        {
          ++v34;
          v36 += 16;
          if (v34 == 17)
          {
            v37 = &qword_280A711F0;
            goto LABEL_35;
          }
        }

        v37 = (v32 + 32 + 16 * v34);
LABEL_35:
        v20 = *v37;
        v19 = v37[1];
        if (v19)
        {
          goto LABEL_6;
        }

LABEL_7:
        v21 = v87;
        v86 = v20;
        v87 = v19;
        if (v21)
        {
          sub_2773CC26C(v21);
        }

        v22 = sub_2773FE0F8(v85, v13, (v14 & *(a5 + 184)) != 0);
        if (v22)
        {
          goto LABEL_98;
        }

        v23 = v86;
        if (!v86)
        {
          goto LABEL_28;
        }

        v24 = v87;
        if ((v14 & *(a5 + 184)) != 0)
        {
          if (v87)
          {
            atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = &v79[4 * v11];
          v26 = v25[1];
          ++v11;
          *v25 = v23;
          v25[1] = v24;
          if (v26)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v87)
          {
            atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v38 = &v77[4 * v80];
          v26 = v38[1];
          *v38 = v23;
          v38[1] = v24;
          ++v80;
          if (v26)
          {
LABEL_15:
            sub_2773CC26C(v26);
          }
        }

        v27 = 0;
        v28 = v88 + 32;
        while (!*v28 || *(*v28 + 1024) != v13)
        {
          ++v27;
          v28 += 16;
          if (v27 == 17)
          {
            goto LABEL_28;
          }
        }

        *(v88 + v27 + 304) = 2;
LABEL_28:
        if (++v10 == v9)
        {
          a1 = v78;
          v7 = a4;
          v39 = v80;
          v40 = 5;
          v41 = 3;
          goto LABEL_41;
        }
      }

      v15 = *(v82 + 4 * v10);
      v16 = *(*a3 + 2108);
      v17 = v81 + v13;
      v13 = v81 + v13 - v16 * v15;
      v18 = sub_2773FE028(v88, v17 - v16 * v15);
      v20 = *v18;
      v19 = v18[1];
      if (!v19)
      {
        goto LABEL_7;
      }

LABEL_6:
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_7;
    }

    v11 = 0;
    v39 = 0;
    v40 = 5;
    v41 = 3;
  }

  else
  {
    v11 = 0;
    v39 = 0;
    v40 = 3;
    v41 = 5;
  }

LABEL_41:
  a1[v41] = v11;
  a1[v40] = v39;
  if (!v7)
  {
    v60 = 0;
    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_97;
  }

  if (!*(v7 + 160))
  {
    v44 = 0;
    v43 = 0;
LABEL_70:
    a1 = v78;
    v78[1] = v43;
    if (*(v7 + 161))
    {
      v61 = 0;
      v62 = 0;
      while (1)
      {
        v63 = (v7 + 64 + 4 * v61);
        v64 = *v63 + v6;
        v65 = sub_2773FE028(v88, v64);
        v67 = *v65;
        v66 = v65[1];
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v68 = v87;
        v86 = v67;
        v87 = v66;
        if (v68)
        {
          sub_2773CC26C(v68);
        }

        v22 = sub_2773FE0F8(v85, v64, *(v63 + 2));
        if (v22)
        {
          goto LABEL_98;
        }

        v69 = v86;
        if (v86)
        {
          v70 = 0;
          v71 = v88 + 32;
          while (!*v71 || *(*v71 + 1024) != v64)
          {
            ++v70;
            v71 += 16;
            if (v70 == 17)
            {
              goto LABEL_84;
            }
          }

          if ((*(v88 + v70 + 304) & 2) != 0)
          {
            goto LABEL_93;
          }

LABEL_84:
          v72 = v87;
          if (*(v63 + 2) == 1)
          {
            if (v87)
            {
              atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v73 = &v78[4 * v62 + 70];
            v74 = v73[1];
            ++v62;
          }

          else
          {
            if (v87)
            {
              atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v73 = &v78[4 * v44 + 198];
            v74 = v73[1];
            ++v44;
          }

          *v73 = v69;
          v73[1] = v72;
          if (v74)
          {
            sub_2773CC26C(v74);
          }
        }

LABEL_93:
        if (++v61 >= *(v7 + 161))
        {
          a1 = v78;
          v43 = v78[1];
          goto LABEL_96;
        }
      }
    }

    v62 = 0;
LABEL_96:
    a1[2] = v62;
    a1[4] = v44;
    v60 = v62 + v43;
    v11 = a1[3];
LABEL_97:
    v22 = 0;
    *a1 = v60 + v11;
    goto LABEL_98;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  v84 = a1 + 198;
  v45 = a1 + 6;
  while (1)
  {
    v46 = v7;
    v47 = (v7 + 4 * v42);
    v48 = *v47 + v6;
    v49 = sub_2773FE028(v88, v48);
    v51 = *v49;
    v50 = v49[1];
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v52 = v87;
    v86 = v51;
    v87 = v50;
    if (v52)
    {
      sub_2773CC26C(v52);
    }

    v22 = sub_2773FE0F8(v85, v48, *(v47 + 2));
    if (v22)
    {
      break;
    }

    v53 = v86;
    if (v86)
    {
      v54 = 0;
      v55 = v88 + 32;
      while (!*v55 || *(*v55 + 1024) != v48)
      {
        ++v54;
        v55 += 16;
        if (v54 == 17)
        {
          goto LABEL_56;
        }
      }

      if ((*(v88 + v54 + 304) & 2) != 0)
      {
        goto LABEL_60;
      }

LABEL_56:
      v56 = *(v47 + 2);
      v57 = v87;
      v7 = v46;
      if (v56 == 1)
      {
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v58 = &v45[4 * v43];
        v59 = v58[1];
        ++v43;
      }

      else
      {
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v58 = &v84[4 * v44];
        v59 = v58[1];
        ++v44;
      }

      *v58 = v53;
      v58[1] = v57;
      if (v59)
      {
        sub_2773CC26C(v59);
      }
    }

    else
    {
LABEL_60:
      v7 = v46;
    }

    if (++v42 >= *(v7 + 160))
    {
      goto LABEL_70;
    }
  }

LABEL_98:
  if (v87)
  {
    sub_2773CC26C(v87);
  }

  return v22;
}

void sub_2773FE008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_2773CC26C(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2773FE028(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_280A711E8, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    v8 = a2;
    v6 = __cxa_guard_acquire(&qword_280A711E8);
    a2 = v8;
    v7 = v6;
    a1 = v9;
    if (v7)
    {
      __cxa_atexit(sub_2773FE28C, &unk_280A711D8, &dword_2773BE000);
      __cxa_guard_release(&qword_280A711E8);
      a1 = v9;
      a2 = v8;
    }
  }

  v2 = 0;
  v3 = a1 + 32;
  result = &unk_280A711D8;
  for (i = v3; !*i || *(*i + 1024) != a2; i += 16)
  {
    if (++v2 == 17)
    {
      return result;
    }
  }

  return (v3 + 16 * v2);
}

uint64_t sub_2773FE0F8(void **a1, int a2, int a3)
{
  if (**a1)
  {
    return 0;
  }

  if (!a3)
  {
    if (dword_280B9A880 >= 6)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unused reference with POC %d not found!\n", a2);
      syslog(30, "Unused reference with POC %d not found!\n", a2);
    }

    return 0;
  }

  v6 = *a1[1];
  v13 = a2;
  v7 = *(v6 + 24);
  if (!v7)
  {
    sub_2773FE240();
  }

  (*(*v7 + 48))(&v12);
  v8 = *a1;
  v9 = v12;
  v12 = 0uLL;
  v10 = v8[1];
  *v8 = v9;
  if (v10)
  {
    sub_2773CC26C(v10);
  }

  if (*(&v12 + 1))
  {
    sub_2773CC26C(*(&v12 + 1));
  }

  if (**a1)
  {
    return 0;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed to create missing reference for poc %d\n", a2);
    syslog(27, "Failed to create missing reference for poc %d\n", a2);
  }

  return 4294954387;
}

void sub_2773FE240()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_288662EC0, MEMORY[0x277D82660]);
}

uint64_t sub_2773FE28C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  return a1;
}

void *sub_2773FE2BC(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2773FE514(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2773CCBA8(a1);
}

uint64_t sub_2773FE520(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2773FE630(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  v3[0] = &unk_2886630E8;
  v3[3] = v3;
  sub_2773FE2BC(v3, a1);
  sub_2773FE520(v3);
  return a1;
}

void sub_2773FE714(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      if (v7 < v8)
      {
        *a1 = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      if (a3 <= a5)
      {
        if (a3 - 65537 >= 0xFFFFFFFFFFFF03FFLL)
        {

          sub_2773FE970(a1);
        }

        else
        {
          sub_2773FEBE4(a1, &a1[a3 >> 1], a3 >> 1, a4);
          v23 = &v19[2 * (a3 >> 1)];
          sub_2773FEBE4(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v23);
          v24 = &v19[2 * a3];
          v25 = v23;
          while (v25 != v24)
          {
            v26 = *v25;
            v27 = *v19;
            v28 = v26 >= v27;
            v29 = v26 < v27;
            if (v26 >= v27)
            {
              LOWORD(v26) = *v19;
            }

            v19 += 2 * v28;
            v25 += v29;
            *v6 = v26;
            v6 += 2;
            if (v19 == v23)
            {
              while (v25 != v24)
              {
                v31 = *v25++;
                *v6 = v31;
                v6 += 2;
              }

              return;
            }
          }

          while (v19 != v23)
          {
            v30 = *v19;
            v19 += 2;
            *v6 = v30;
            v6 += 2;
          }
        }
      }

      else
      {
        v20 = a3 >> 1;
        v21 = &a1[a3 >> 1];
        sub_2773FE714(a1, v21, a3 >> 1, a4, a5);
        v22 = a3 - (a3 >> 1);
        sub_2773FE714(v21, a2, v22, v19, a5);

        sub_2773FED90(v6, v21, a2, v20, v22, v19, a5);
      }
    }

    else if (a1 != a2)
    {
      v10 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v11 = 2;
        v12 = a1;
        do
        {
          v13 = v12[1];
          v14 = *v12;
          v12 = v10;
          if (v13 < v14)
          {
            v15 = v11;
            while (1)
            {
              *(a1 + v15) = v14;
              v16 = v15 - 2;
              if (v15 == 2)
              {
                break;
              }

              v14 = *(a1 + v15 - 4);
              v15 -= 2;
              if (v13 >= v14)
              {
                v17 = (a1 + v16);
                goto LABEL_16;
              }
            }

            v17 = a1;
LABEL_16:
            *v17 = v13;
          }

          v10 = v12 + 1;
          v11 += 2;
        }

        while (v12 + 1 != a2);
      }
    }
  }
}

void sub_2773FE970(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v27[256] = *MEMORY[0x277D85DE8];
  bzero(v26, 0x1000uLL);
  if (v6 == v5)
  {
    v11 = 0;
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    v9 = v6;
    do
    {
      v10 = *v9++;
      ++v26[v10];
      v8 &= v10 >= v7;
      ++*(v27 + ((v10 >> 5) & 0x7F8));
      v7 = v10;
    }

    while (v9 != v5);
    v11 = v26[0];
  }

  v12 = 1;
  v13 = v11;
  do
  {
    v14 = v26[v12];
    if (v13 <= v14)
    {
      v13 = v26[v12];
    }

    v11 += v14;
    v26[v12++] = v11;
  }

  while (v12 != 256);
  v15 = v27[0];
  v16 = 257;
  v17 = v27[0];
  do
  {
    v18 = v26[v16];
    if (v17 <= v18)
    {
      v17 = v26[v16];
    }

    v15 += v18;
    v26[v16++] = v15;
  }

  while (v16 != 512);
  if ((v8 & 1) == 0)
  {
    v19 = v5 - v6;
    v20 = v5 - v6;
    if (v13 != v20 || v17 != v20)
    {
      if (v13 == v20)
      {
        if (v6 != v5)
        {
          memmove(v3, v6, v5 - v6);
          if (v17 != v20)
          {
            do
            {
LABEL_27:
              v24 = *&v3[v19 - 2];
              v25 = v27[v24 >> 8] - 1;
              v27[v24 >> 8] = v25;
              v6[v25] = v24;
              v19 -= 2;
            }

            while (v19);
            return;
          }

          goto LABEL_30;
        }
      }

      else if (v6 != v5)
      {
        v21 = v5;
        do
        {
          v22 = *--v21;
          v23 = v26[v22] - 1;
          v26[v22] = v23;
          *&v3[2 * v23] = v22;
        }

        while (v21 != v6);
      }

      if (v17 != v20)
      {
        if (v6 == v5)
        {
          return;
        }

        goto LABEL_27;
      }

      if (v6 == v5)
      {
        return;
      }

LABEL_30:

      memmove(v6, v3, v5 - v6);
    }
  }
}

unsigned __int16 *sub_2773FEBE4(unsigned __int16 *result, unsigned __int16 *a2, unint64_t a3, unsigned __int16 *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_9:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v9 = *(a2 - 1);
      v8 = *(a2 - 1);
      v10 = *result;
      v11 = v9 >= v10;
      if (v9 >= v10)
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      if (v11)
      {
        v6 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v22 = &result[a3 >> 1];
      sub_2773FE714(result, v22, a3 >> 1, a4, a3 >> 1);
      result = sub_2773FE714(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v23 = &v6[a3 >> 1];
      while (v23 != a2)
      {
        v24 = *v23;
        v25 = *v6;
        v26 = v24 >= v25;
        v27 = v24 < v25;
        if (v24 >= v25)
        {
          LOWORD(v24) = *v6;
        }

        v23 += v27;
        v6 += v26;
        *v4++ = v24;
        if (v6 == v22)
        {
          while (v23 != a2)
          {
            v29 = *v23++;
            *v4++ = v29;
          }

          return result;
        }
      }

      while (v6 != v22)
      {
        v28 = *v6++;
        *v4++ = v28;
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = a4;
        v15 = a4;
        do
        {
          v17 = *v15++;
          v16 = v17;
          v18 = *v12;
          if (v18 >= v17)
          {
            *v15 = v18;
          }

          else
          {
            v14[1] = v16;
            v19 = a4;
            if (v14 != a4)
            {
              v20 = v13;
              while (1)
              {
                v19 = (a4 + v20);
                v21 = *(a4 + v20 - 2);
                if (*v12 >= v21)
                {
                  break;
                }

                *v19 = v21;
                v20 -= 2;
                if (!v20)
                {
                  v19 = a4;
                  break;
                }
              }
            }

            *v19 = *v12;
          }

          ++v12;
          v13 += 2;
          v14 = v15;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

char *sub_2773FED90(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v10 = result;
    while (v7 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v11 = *a2;
      while (1)
      {
        v12 = *v10;
        if (v11 < v12)
        {
          break;
        }

        v10 += 2;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v7)
      {
        if (a4 == 1)
        {
          *v10 = v11;
          *a2 = v12;
          return result;
        }

        v15 = &v10[(a4 + (a4 >> 63)) & 0xFFFFFFFFFFFFFFFELL];
        if (a3 == a2)
        {
          v13 = a2;
        }

        else
        {
          v20 = (a3 - a2) >> 1;
          v13 = a2;
          do
          {
            v21 = v20 >> 1;
            v22 = &v13[2 * (v20 >> 1)];
            v24 = *v22;
            v23 = v22 + 1;
            v20 += ~(v20 >> 1);
            if (v24 < *v15)
            {
              v13 = v23;
            }

            else
            {
              v20 = v21;
            }
          }

          while (v20);
        }

        v26 = a4 / 2;
        v25 = (v13 - a2) >> 1;
      }

      else
      {
        v13 = &a2[(v7 + (v7 >> 63)) & 0xFFFFFFFFFFFFFFFELL];
        if (a2 == v10)
        {
          v15 = v10;
        }

        else
        {
          v14 = (a2 - v10) >> 1;
          v15 = v10;
          do
          {
            v16 = v14 >> 1;
            v17 = &v15[v14 >> 1];
            v19 = *v17;
            v18 = v17 + 1;
            v14 += ~(v14 >> 1);
            if (*v13 < v19)
            {
              v14 = v16;
            }

            else
            {
              v15 = v18;
            }
          }

          while (v14);
        }

        v25 = v7 / 2;
        v26 = (v15 - v10) >> 1;
      }

      v27 = v13;
      if (v15 != a2)
      {
        v27 = v15;
        if (a2 != v13)
        {
          v28 = v15 + 1;
          if (v15 + 1 == a2)
          {
            v74 = *v15;
            v35 = v13 - a2;
            v76 = a7;
            v78 = a6;
            v36 = a3;
            v37 = v25;
            memmove(v15, v15 + 1, v13 - a2);
            v25 = v37;
            a7 = v76;
            a6 = v78;
            a3 = v36;
            v27 = v15 + v35;
            *v27 = v74;
          }

          else
          {
            v29 = a2 + 2;
            if (a2 + 2 == v13)
            {
              v38 = *(v13 - 1);
              v27 = (v15 + 1);
              if (v13 - 2 != v15)
              {
                v77 = a7;
                v79 = a6;
                v39 = a3;
                v40 = v25;
                v75 = *(v13 - 1);
                memmove(v15 + 1, v15, v13 - 2 - v15);
                v38 = v75;
                v25 = v40;
                a7 = v77;
                a6 = v79;
                a3 = v39;
              }

              *v15 = v38;
            }

            else
            {
              v30 = a2 - v15;
              v31 = (a2 - v15) >> 1;
              v32 = v13 - a2;
              if (v31 == (v13 - a2) >> 1)
              {
                do
                {
                  v33 = *(v28 - 1);
                  *(v28 - 1) = *(v29 - 1);
                  *(v29 - 1) = v33;
                  if (v28 == a2)
                  {
                    break;
                  }

                  ++v28;
                  v34 = v29 == v13;
                  v29 += 2;
                }

                while (!v34);
                v27 = a2;
              }

              else
              {
                v41 = v32 >> 1;
                v42 = (a2 - v15) >> 1;
                do
                {
                  v43 = v42;
                  v42 = v41;
                  v41 = v43 % v41;
                }

                while (v41);
                v44 = &v15[v42];
                do
                {
                  v46 = *--v44;
                  v45 = v46;
                  v47 = (v44 + v30);
                  v48 = v44;
                  do
                  {
                    v49 = v48;
                    v48 = v47;
                    *v49 = *v47;
                    v50 = __OFSUB__(v31, (v13 - v47) >> 1);
                    v52 = v31 - ((v13 - v47) >> 1);
                    v51 = (v52 < 0) ^ v50;
                    v47 = &v15[v52];
                    if (v51)
                    {
                      v47 = (v48 + v30);
                    }
                  }

                  while (v47 != v44);
                  *v48 = v45;
                }

                while (v44 != v15);
                v27 = v15 + v32;
              }
            }
          }
        }
      }

      a4 -= v26;
      v7 -= v25;
      if (v26 + v25 >= a4 + v7)
      {
        v57 = a4;
        v58 = v25;
        v54 = a6;
        v55 = a7;
        result = sub_2773FED90(v27, v13, a3, v57, v7);
        v13 = v15;
        v7 = v58;
        a4 = v26;
        a3 = v27;
      }

      else
      {
        v53 = v10;
        v54 = a6;
        v55 = a7;
        v56 = a3;
        result = sub_2773FED90(v53, v15, v27, v26, v25);
        a3 = v56;
        v10 = v27;
      }

      a2 = v13;
      a6 = v54;
      a7 = v55;
      if (!v7)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (v10 != a2)
      {
        v67 = a6;
        v68 = v10;
        do
        {
          v69 = *v68;
          v68 += 2;
          *v67 = v69;
          v67 += 2;
        }

        while (v68 != a2);
        while (a2 != a3)
        {
          v70 = *a2;
          v71 = *a6;
          v72 = v70 >= v71;
          v73 = v70 < v71;
          if (v70 >= v71)
          {
            LOWORD(v70) = *a6;
          }

          a6 += 2 * v72;
          a2 += 2 * v73;
          *v10 = v70;
          v10 += 2;
          if (a6 == v67)
          {
            return result;
          }
        }

        return memmove(v10, a6, v67 - a6);
      }
    }

    else if (a2 != a3)
    {
      v59 = a6;
      v60 = a2;
      do
      {
        v61 = *v60;
        v60 += 2;
        *v59 = v61;
        v59 += 2;
      }

      while (v60 != a3);
      while (a2 != v10)
      {
        v62 = *(v59 - 1);
        v63 = *(a2 - 1);
        v64 = v62 >= v63;
        if (v62 <= v63)
        {
          LOWORD(v62) = *(a2 - 1);
        }

        if (v64)
        {
          v59 -= 2;
        }

        else
        {
          a2 -= 2;
        }

        *(a3 - 1) = v62;
        a3 -= 2;
        if (v59 == a6)
        {
          return result;
        }
      }

      if (v59 != a6)
      {
        v65 = -2;
        do
        {
          v66 = *(v59 - 1);
          v59 -= 2;
          *&a3[v65] = v66;
          v65 -= 2;
        }

        while (v59 != a6);
      }
    }
  }

  return result;
}

uint64_t *sub_2773FF200(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280B9A8E8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v5 = __cxa_guard_acquire(&qword_280B9A8E8);
    a1 = v6;
    if (v5)
    {
      __cxa_atexit(sub_2773FE28C, &qword_280A71208, &dword_2773BE000);
      __cxa_guard_release(&qword_280B9A8E8);
      a1 = v6;
    }
  }

  v1 = (a1 + 32);
  result = &qword_280A71208;
  v3 = 17;
  do
  {
    v4 = *v1;
    if (*v1 && (*(v4 + 43) & 1) == 0 && (!*result || *(v4 + 1024) < *(*result + 1024)))
    {
      result = v1;
    }

    v1 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *sub_2773FF2CC(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_280A71248, memory_order_acquire) & 1) == 0)
  {
    v11 = a1;
    v10 = a2;
    v8 = __cxa_guard_acquire(&qword_280A71248);
    a2 = v10;
    v9 = v8;
    a1 = v11;
    if (v9)
    {
      __cxa_atexit(sub_2773FE28C, &unk_280A71238, &dword_2773BE000);
      __cxa_guard_release(&qword_280A71248);
      a1 = v11;
      a2 = v10;
    }
  }

  v2 = 0;
  v3 = -1;
  v4 = (a1 + 32);
  v5 = -1;
  do
  {
    v6 = *v4;
    if (*v4 && *(v6 + 1024) > v5 && *(v6 + 36) == a2)
    {
      v5 = *(v6 + 1024);
      v3 = v2;
    }

    ++v2;
    v4 += 2;
  }

  while (v2 != 17);
  if (v3 == -1)
  {
    return &unk_280A71238;
  }

  else
  {
    return (a1 + 32 + 16 * v3);
  }
}

std::__shared_weak_count *sub_2773FF3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  for (i = (a1 + 32); *i; i += 2)
  {
    if (++v3 == 17)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("DPB overflow!\n", 0xEuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "DPB overflow!\n");
      }

      return 4294954387;
    }
  }

  v6 = (a1 + 32 + 16 * v3);
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  result = v6[1];
  *v6 = a2;
  v6[1] = a3;
  if (result)
  {
    sub_2773CC26C(result);
    return 0;
  }

  return result;
}

void sub_2773FF468(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (a1 + 304);
  v3 = 17;
  do
  {
    if (*v1 && !*v2 && *(*v1 + 43) == 1)
    {
      v4 = v1[1];
      *v1 = 0;
      v1[1] = 0;
      if (v4)
      {
        sub_2773CC26C(v4);
      }
    }

    ++v2;
    v1 += 2;
    --v3;
  }

  while (v3);
}

void sub_2773FF4D4(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a1 + 304;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    v3 = a2[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = 0;
        v6 = a1 + 32;
        while (!*v6 || *(*v6 + 1024) != *(*&a2[4 * i + 6] + 1024))
        {
          ++v5;
          v6 += 16;
          if (v5 == 17)
          {
            goto LABEL_10;
          }
        }

        *(v2 + v5) = 1;
        v3 = a2[1];
LABEL_10:
        ;
      }
    }

    v7 = a2[2];
    if (v7 >= 1)
    {
      for (j = 0; j < v7; ++j)
      {
        v9 = 0;
        v10 = a1 + 32;
        while (!*v10 || *(*v10 + 1024) != *(*&a2[4 * j + 70] + 1024))
        {
          ++v9;
          v10 += 16;
          if (v9 == 17)
          {
            goto LABEL_19;
          }
        }

        *(v2 + v9) = 1;
        v7 = a2[2];
LABEL_19:
        ;
      }
    }

    v11 = a2[4];
    if (v11 >= 1)
    {
      for (k = 0; k < v11; ++k)
      {
        v13 = 0;
        v14 = a1 + 32;
        while (!*v14 || *(*v14 + 1024) != *(*&a2[4 * k + 198] + 1024))
        {
          ++v13;
          v14 += 16;
          if (v13 == 17)
          {
            goto LABEL_28;
          }
        }

        *(v2 + v13) = 1;
        v11 = a2[4];
LABEL_28:
        ;
      }
    }

    v15 = a2[3];
    if (v15 >= 1)
    {
      for (m = 0; m < v15; ++m)
      {
        v17 = 0;
        v18 = a1 + 32;
        while (!*v18 || *(*v18 + 1024) != *(*&a2[4 * m + 134] + 1024))
        {
          ++v17;
          v18 += 16;
          if (v17 == 17)
          {
            goto LABEL_37;
          }
        }

        *(v2 + v17) = 2;
        v15 = a2[3];
LABEL_37:
        ;
      }
    }

    v19 = a2[5];
    if (v19 >= 1)
    {
      for (n = 0; n < v19; ++n)
      {
        v21 = 0;
        v22 = a1 + 32;
        while (!*v22 || *(*v22 + 1024) != *(*&a2[4 * n + 262] + 1024))
        {
          ++v21;
          v22 += 16;
          if (v21 == 17)
          {
            goto LABEL_46;
          }
        }

        *(v2 + v21) = 2;
        v19 = a2[5];
LABEL_46:
        ;
      }
    }
  }

  else if (dword_280B9A880 >= 3)
  {
    fwrite("MarkRefs gets invalid combined RPS!\n", 0x24uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "MarkRefs gets invalid combined RPS!\n");
  }
}

uint64_t sub_2773FF760(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 324;
  for (i = 32; i != 304; i += 16)
  {
    v4 = *(a1 + i);
    if (v4)
    {
      *(v2 + 4 * v1++) = *(v4 + 1024);
    }
  }

  v5 = v1;
  v6 = (v2 + 4 * v1);
  v14 = sub_2774001A0;
  if (v1 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = v1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_12;
      }
    }

    v12 = v9;
  }

LABEL_12:
  sub_2773FF86C(v2, v6, &v14, v5, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  return v2;
}

void sub_2773FF854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2773FF86C(uint64_t result, int *a2, uint64_t (**a3)(int *, int *), unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v10 = *v8;
        *v8 = *v9;
        *v9 = v10;
      }
    }

    else if (a4 > 128)
    {
      v19 = a5;
      v20 = a4 >> 1;
      v21 = (result + 4 * (a4 >> 1));
      v22 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_2773FFACC(result, v21, a3, v22, a5);
        v23 = &v19[4 * v20];
        result = sub_2773FFACC(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v23);
        v24 = &v19[4 * a4];
        v25 = v23;
        while (v25 != v24)
        {
          result = (*a3)(v25, v19);
          if (result)
          {
            v26 = v25;
          }

          else
          {
            v26 = v19;
          }

          if (result)
          {
            v27 = 0;
          }

          else
          {
            v27 = 4;
          }

          v19 += v27;
          if (result)
          {
            v28 = 4;
          }

          else
          {
            v28 = 0;
          }

          v25 = (v25 + v28);
          *v8++ = *v26;
          if (v19 == v23)
          {
            while (v25 != v24)
            {
              v30 = *v25++;
              *v8++ = v30;
            }

            return result;
          }
        }

        while (v19 != v23)
        {
          v29 = *v19;
          v19 += 4;
          *v8++ = v29;
        }
      }

      else
      {
        sub_2773FF86C(result, v21, a3, v22, a5, a6);
        sub_2773FF86C(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v19, a6);

        return sub_2773FFCC0(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v19, a6);
      }
    }

    else if (result != a2)
    {
      v12 = (result + 4);
      if ((result + 4) != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v15 = v14;
          v14 = v12;
          result = (*a3)(v12, v15);
          if (result)
          {
            v31 = *v14;
            v16 = v13;
            while (1)
            {
              *(v8 + v16 + 4) = *(v8 + v16);
              if (!v16)
              {
                break;
              }

              v16 -= 4;
              result = (*a3)(&v31, (v8 + v16));
              if ((result & 1) == 0)
              {
                v17 = (v8 + v16 + 4);
                goto LABEL_16;
              }
            }

            v17 = v8;
LABEL_16:
            *v17 = v31;
          }

          v12 = v14 + 1;
          v13 += 4;
        }

        while (v14 + 1 != a2);
      }
    }
  }

  return result;
}

int *sub_2773FFACC(int *result, int *a2, uint64_t (**a3)(int *, int *), unint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_9:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      *v5++ = *v11;
      if (!result)
      {
        v7 = v10;
      }

      goto LABEL_9;
    }

    if (a4 > 8)
    {
      v19 = &result[a4 >> 1];
      sub_2773FF86C(result, v19, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_2773FF86C(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v20 = &v7[a4 >> 1];
      while (v20 != a2)
      {
        result = (*a3)(v20, v7);
        if (result)
        {
          v21 = v20;
        }

        else
        {
          v21 = v7;
        }

        if (result)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v20 = (v20 + v22);
        if (result)
        {
          v23 = 0;
        }

        else
        {
          v23 = 4;
        }

        v7 = (v7 + v23);
        *v5++ = *v21;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v25 = *v20++;
            *v5++ = v25;
          }

          return result;
        }
      }

      while (v7 != v19)
      {
        v24 = *v7++;
        *v5++ = v24;
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = a5;
        do
        {
          v15 = v14++;
          result = (*a3)(v12, v15);
          v16 = v14;
          if (result)
          {
            v15[1] = *v15;
            v16 = v5;
            if (v15 != v5)
            {
              v17 = v13;
              while (1)
              {
                v16 = (v5 + v17);
                result = (*a3)(v12, (v5 + v17 - 4));
                if (!result)
                {
                  break;
                }

                *(v5 + v17) = *(v5 + v17 - 4);
                v17 -= 4;
                if (!v17)
                {
                  v16 = v5;
                  break;
                }
              }
            }
          }

          v18 = *v12++;
          *v16 = v18;
          v13 += 4;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_2773FFCC0(uint64_t result, char *a2, char *a3, uint64_t (**a4)(char *, char *), uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  v10 = a6;
  v15 = result;
  while (v10 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    while (1)
    {
      result = (*a4)(a2, v15);
      if (result)
      {
        break;
      }

      v15 += 4;
      if (!--a5)
      {
        return result;
      }
    }

    v75 = a3;
    if (a5 >= v10)
    {
      if (a5 == 1)
      {
        v68 = *v15;
        *v15 = *a2;
        *a2 = v68;
        return result;
      }

      v74 = a5 / 2;
      v19 = &v15[4 * (a5 / 2)];
      if (a3 == a2)
      {
        v26 = a3;
        v27 = a3;
        v17 = a2;
      }

      else
      {
        v69 = a8;
        v71 = v10;
        v22 = *a4;
        v23 = (a3 - a2) >> 2;
        v17 = a2;
        do
        {
          v24 = &v17[4 * (v23 >> 1)];
          v25 = v22(v24, &v15[4 * (a5 / 2)]);
          if (v25)
          {
            v23 += ~(v23 >> 1);
          }

          else
          {
            v23 >>= 1;
          }

          if (v25)
          {
            v17 = v24 + 4;
          }
        }

        while (v23);
        v26 = v17;
        v27 = a2;
        a8 = v69;
        v10 = v71;
      }

      v16 = (v26 - v27) >> 2;
    }

    else
    {
      v16 = v10 / 2;
      v17 = &a2[4 * (v10 / 2)];
      if (a2 == v15)
      {
        v20 = a2;
        v21 = a2;
        v19 = v15;
      }

      else
      {
        v70 = v10;
        v73 = v10 / 2;
        v18 = (a2 - v15) >> 2;
        v19 = v15;
        do
        {
          if ((*a4)(v17, &v19[4 * (v18 >> 1)]))
          {
            v18 >>= 1;
          }

          else
          {
            v19 += 4 * (v18 >> 1) + 4;
            v18 += ~(v18 >> 1);
          }
        }

        while (v18);
        v20 = v19;
        v21 = v15;
        v10 = v70;
        v16 = v73;
      }

      v74 = (v20 - v21) >> 2;
    }

    v28 = v17;
    if (v19 != a2)
    {
      v28 = v19;
      if (a2 != v17)
      {
        v29 = v19 + 4;
        if (v19 + 4 == a2)
        {
          v72 = v10;
          v36 = *v19;
          v37 = v17 - a2;
          v38 = v17 - a2;
          v39 = v16;
          memmove(v19, v29, v38);
          v16 = v39;
          v28 = &v19[v37];
          *v28 = v36;
        }

        else
        {
          v30 = a2 + 4;
          if (a2 + 4 != v17)
          {
            v31 = a2 - v19;
            v32 = (a2 - v19) >> 2;
            v33 = v17 - a2;
            if (v32 == (v17 - a2) >> 2)
            {
              do
              {
                v34 = *(v29 - 1);
                *(v29 - 1) = *(v30 - 1);
                *(v30 - 1) = v34;
                if (v29 == a2)
                {
                  break;
                }

                v29 += 4;
                v35 = v30 == v17;
                v30 += 4;
              }

              while (!v35);
              v28 = a2;
            }

            else
            {
              v42 = v33 >> 2;
              v43 = (a2 - v19) >> 2;
              do
              {
                v44 = v43;
                v43 = v42;
                v42 = v44 % v42;
              }

              while (v42);
              v45 = &v19[4 * v43];
              do
              {
                v47 = *(v45 - 1);
                v45 -= 4;
                v46 = v47;
                v48 = &v45[v31];
                v49 = v45;
                do
                {
                  v50 = v49;
                  v49 = v48;
                  *v50 = *v48;
                  v51 = __OFSUB__(v32, (v17 - v48) >> 2);
                  v53 = v32 - ((v17 - v48) >> 2);
                  v52 = (v53 < 0) ^ v51;
                  v48 = &v19[4 * v53];
                  if (v52)
                  {
                    v48 = v49 + v31;
                  }
                }

                while (v48 != v45);
                *v49 = v46;
              }

              while (v45 != v19);
              v28 = &v19[v33];
            }

            goto LABEL_54;
          }

          v72 = v10;
          v40 = *(v17 - 1);
          v28 = v19 + 4;
          if (v17 - 4 != v19)
          {
            v41 = v16;
            memmove(v19 + 4, v19, v17 - 4 - v19);
            v16 = v41;
          }

          *v19 = v40;
        }

        v10 = v72;
      }
    }

LABEL_54:
    a5 -= v74;
    v10 -= v16;
    if (v74 + v16 >= a5 + v10)
    {
      v54 = a5;
      v55 = v16;
      result = sub_2773FFCC0(v28, v17, v75, a4, v54, v10, a7, a8);
      v17 = v19;
      v10 = v55;
      a5 = v74;
      v75 = v28;
    }

    else
    {
      result = sub_2773FFCC0(v15, v19, v28, a4, v74, v16, a7, a8);
      v15 = v28;
    }

    a2 = v17;
    a3 = v75;
    if (!v10)
    {
      return result;
    }
  }

  if (a5 <= v10)
  {
    if (v15 != a2)
    {
      v62 = a7;
      v63 = v15;
      do
      {
        v64 = *v63;
        v63 += 4;
        *v62 = v64;
        v62 += 4;
      }

      while (v63 != a2);
      while (a2 != a3)
      {
        result = (*a4)(a2, a7);
        if (result)
        {
          v65 = a2;
        }

        else
        {
          v65 = a7;
        }

        if (result)
        {
          v66 = 0;
        }

        else
        {
          v66 = 4;
        }

        a7 += v66;
        if (result)
        {
          v67 = 4;
        }

        else
        {
          v67 = 0;
        }

        a2 += v67;
        *v15 = *v65;
        v15 += 4;
        if (a7 == v62)
        {
          return result;
        }
      }

      return memmove(v15, a7, v62 - a7);
    }
  }

  else if (a2 != a3)
  {
    v56 = a7;
    v57 = a2;
    do
    {
      v58 = *v57;
      v57 += 4;
      *v56 = v58;
      v56 += 4;
    }

    while (v57 != a3);
    while (a2 != v15)
    {
      result = (*a4)(v56 - 4, a2 - 4);
      if (result)
      {
        v59 = a2;
      }

      else
      {
        v59 = v56;
      }

      if (result)
      {
        a2 -= 4;
      }

      else
      {
        v56 -= 4;
      }

      *(a3 - 1) = *(v59 - 1);
      a3 -= 4;
      if (v56 == a7)
      {
        return result;
      }
    }

    if (v56 != a7)
    {
      v60 = -4;
      do
      {
        v61 = *(v56 - 1);
        v56 -= 4;
        *&a3[v60] = v61;
        v60 -= 4;
      }

      while (v56 != a7);
    }
  }

  return result;
}

uint64_t sub_2774001B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 4) = 0;
  *a1 = 0;
  *(a1 + 6) = 33685509;
  *(a1 + 10) = 2;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 88) = 0;
  v6 = (a1 + 88);
  *(a1 + 11) = 0;
  *(a1 + 17) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (sub_2773FB848(a2, 1))
  {
    v7 = sub_2773FB848(a2, 8);
    if (v7 == 255)
    {
      *a1 = sub_2773FB848(a2, 16);
      *(a1 + 2) = sub_2773FB848(a2, 16);
    }

    else
    {
      v8 = v7;
      if (v7 > 16)
      {
        if (dword_280B9A880 >= 4)
        {
          fprintf(*MEMORY[0x277D85DF8], "Reserved aspect_ratio_idc %d\n", v7);
          syslog(28, "Reserved aspect_ratio_idc %d\n", v8);
        }
      }

      else
      {
        v9 = &unk_27750DC62 + 2 * v7;
        *a1 = *v9;
        *(a1 + 2) = v9[1];
      }
    }
  }

  v10 = sub_2773FB848(a2, 1);
  *(a1 + 4) = v10 != 0;
  if (v10)
  {
    *(a1 + 5) = sub_2773FB848(a2, 1) != 0;
  }

  if (sub_2773FB848(a2, 1))
  {
    *(a1 + 6) = sub_2773FB848(a2, 3);
    *(a1 + 7) = sub_2773FB848(a2, 1) != 0;
    if (sub_2773FB848(a2, 1))
    {
      *(a1 + 8) = sub_2773FB848(a2, 8);
      *(a1 + 9) = sub_2773FB848(a2, 8);
      *(a1 + 10) = sub_2773FB848(a2, 8);
    }
  }

  if (sub_2773FB848(a2, 1))
  {
    *(a1 + 11) = sub_2773FB90C(a2);
    *(a1 + 12) = sub_2773FB90C(a2);
  }

  *(a1 + 13) = sub_2773FB848(a2, 1) != 0;
  *(a1 + 14) = sub_2773FB848(a2, 1) != 0;
  *(a1 + 15) = sub_2773FB848(a2, 1) != 0;
  if (sub_2773FB848(a2, 1))
  {
    *(a1 + 16) = sub_2773FB90C(a2);
    *(a1 + 18) = sub_2773FB90C(a2);
    *(a1 + 20) = sub_2773FB90C(a2);
    *(a1 + 22) = sub_2773FB90C(a2);
  }

  v11 = sub_2773FB848(a2, 1);
  *(a1 + 24) = v11 != 0;
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = sub_2773FB848(a2, 16);
  *(a1 + 28) = sub_2773FB848(a2, 16) + (v12 << 16);
  v13 = sub_2773FB848(a2, 16);
  *(a1 + 32) = sub_2773FB848(a2, 16) + (v13 << 16);
  v14 = sub_2773FB848(a2, 1);
  *(a1 + 36) = v14 != 0;
  if (v14)
  {
    *(a1 + 40) = sub_2773FB9A4(a2);
  }

  v15 = sub_2773FB848(a2, 1);
  *(a1 + 44) = v15 != 0;
  if (v15 && (v16 = sub_2774670EC(a1 + 48, a2, 1, *(a3 + 1) + 1), v16))
  {
    v17 = v16;
    if (dword_280B9A880 >= 3)
    {
      fwrite("Error parsing VUI HRD\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Error parsing VUI HRD\n");
    }
  }

  else
  {
LABEL_24:
    v18 = sub_2773FB848(a2, 1);
    *v6 = v18 != 0;
    if (v18)
    {
      *(a1 + 89) = sub_2773FB848(a2, 1) != 0;
      *(a1 + 90) = sub_2773FB848(a2, 1) != 0;
      *(a1 + 91) = sub_2773FB848(a2, 1) != 0;
      *(a1 + 92) = sub_2773FB90C(a2);
      *(a1 + 96) = sub_2773FB90C(a2);
      *(a1 + 100) = sub_2773FB90C(a2);
      *(a1 + 104) = sub_2773FB90C(a2);
      v17 = 0;
      *(a1 + 108) = sub_2773FB90C(a2);
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

uint64_t sub_277400600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v9 = a1 + 8 * a7;
  v10 = (v9 + 56);
  if (a9 == 1)
  {
    v10 = (a1 + 64);
  }

  v11 = (v9 + 296);
  if (!a8)
  {
    v11 = v10;
  }

  return (*v11)(a2, a3, a4, a5, a6);
}

uint64_t sub_277400640(void (**a1)(__int32 *a1, uint64_t a2, int32x4_t *a3, int a4, int a5), uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4[2096];
  if (v5 == 8)
  {
    v6 = v4[2098];
    if (v6 == 8)
    {
      result = 0;
      a1[24] = sub_277402560;
      a1[25] = sub_277402534;
      a1[30] = sub_277401184;
      a1[46] = sub_277401120;
      a1[47] = sub_2774010BC;
      a1[48] = sub_277402308;
      a1[39] = sub_2774F1FDC;
      a1[40] = sub_2774F1F6C;
      a1[41] = sub_2774F1F1C;
      a1[42] = sub_2774F1ED4;
      a1[8] = sub_2774F1CD0;
      a1[9] = sub_2774F1B10;
      a1[10] = sub_2774F18C4;
      a1[11] = sub_2774F1528;
      a1[12] = sub_2774F06C8;
      a1[1] = sub_2774F0558;
      *a1 = sub_2774F0384;
      a1[2] = sub_2774F0084;
      a1[4] = sub_2774EFC6C;
      a1[6] = sub_2774EE9D0;
      a1[20] = sub_2774EE9BC;
      a1[22] = sub_2774EE9A8;
      a1[23] = sub_2774EE984;
      a1[31] = sub_2774EE928;
      a1[32] = sub_2774EE7F4;
      a1[33] = sub_2774EE6F0;
      a1[34] = sub_2774EE5FC;
      a1[28] = sub_277402560;
      a1[29] = sub_277402534;
      a1[38] = sub_277402740;
      a1[49] = sub_277402308;
      a1[43] = sub_2774FC3F8;
      a1[44] = sub_2774FC3AC;
      a1[45] = sub_2774FC370;
      a1[13] = sub_2774FC298;
      a1[14] = sub_2774FC228;
      a1[15] = sub_2774FC1B8;
      a1[16] = sub_2774FC128;
      a1[17] = sub_2774FBA1C;
      a1[18] = sub_2774FB240;
      a1[19] = sub_2774FAC60;
      a1[21] = sub_2774EE9BC;
      a1[26] = sub_2774EE9A8;
      a1[27] = sub_2774EE984;
      a1[35] = sub_2774FAB40;
      a1[36] = sub_2774FAA18;
      a1[37] = sub_2774FA900;
      return result;
    }
  }

  else
  {
    if (v5 > 0xC)
    {
      goto LABEL_8;
    }

    v6 = v4[2098];
  }

  if (v6 <= 0xC)
  {
    (*(&off_2886620A0 + 4 * v4[222]))(a1);
    (*(&off_2886620A0 + 4 * *(*(a2 + 16) + 223) + 2))(a1);
    return 0;
  }

LABEL_8:
  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Luma/Chroma bitdepth %d/%d not supported\n", v5, v4[2098]);
    syslog(27, "Luma/Chroma bitdepth %d/%d not supported\n", *(*(a2 + 16) + 2096), *(*(a2 + 16) + 2098));
  }

  return 4294954386;
}

void *sub_2774009FC(void *result)
{
  result[43] = sub_277400E9C;
  result[44] = sub_277400E30;
  result[45] = sub_277400DC4;
  result[28] = sub_277400D98;
  result[29] = sub_277400D6C;
  result[38] = sub_277400C5C;
  result[49] = sub_277400B40;
  result[13] = sub_277504668;
  result[14] = sub_2775045F8;
  result[15] = sub_277504588;
  result[16] = sub_2775044F8;
  result[17] = sub_277503DE8;
  result[18] = sub_27750361C;
  result[19] = sub_277503018;
  result[21] = sub_2774F8E80;
  result[26] = sub_2774F8E6C;
  result[27] = sub_2774F8E54;
  result[35] = sub_277502EFC;
  result[36] = sub_277502DD4;
  result[37] = sub_277502CBC;
  return result;
}

uint64_t sub_277400B40(uint64_t result, int a2, int a3)
{
  v3 = 1 << a2;
  v4 = a2 - 3;
  v5 = 3 - a2;
  v6 = 1 << (2 - a2);
  if (a3 == 1)
  {
    if (a2 != 31)
    {
      v7 = 0;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 1 << a2;
      }

      v9 = 2 * v3;
      do
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(result + v10);
          v13 = (v6 + v12) >> v5;
          v14 = v12 << v4;
          if (a2 < 3)
          {
            v14 = v13;
          }

          v11 += v14;
          if (v11 >= 0x7FFF)
          {
            v15 = 0x7FFF;
          }

          else
          {
            v15 = v11;
          }

          if (v15 <= -32768)
          {
            LOWORD(v15) = 0x8000;
          }

          *(result + v10) = v15;
          v10 += 2;
        }

        while (2 * v8 != v10);
        ++v7;
        result += v9;
      }

      while (v7 != v8);
    }
  }

  else if (a2 != 31)
  {
    v16 = 0;
    if (v3 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 1 << a2;
    }

    do
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v18 << a2) + v16;
        v21 = *(result + 2 * v20);
        v22 = (v6 + v21) >> v5;
        v23 = v21 << v4;
        if (a2 < 3)
        {
          v23 = v22;
        }

        v19 += v23;
        if (v19 >= 0x7FFF)
        {
          v24 = 0x7FFF;
        }

        else
        {
          v24 = v19;
        }

        if (v24 <= -32768)
        {
          LOWORD(v24) = 0x8000;
        }

        *(result + 2 * v20) = v24;
        ++v18;
      }

      while (v17 != v18);
      ++v16;
    }

    while (v16 != v17);
  }

  return result;
}

void sub_277400C5C(uint64_t a1, uint64_t a2, char *a3, char *a4, __int16 *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 2);
  v10 = 2 * a2;
  do
  {
    v11 = v7;
    v12 = v9;
    v13 = 32;
    do
    {
      v14 = *&a3[v11];
      v15 = *&a4[v11];
      if (a5)
      {
        v16 = *&a3[v11 - 2048] << 12 >> a5[2];
        v14 += (v16 * *a5) >> 3;
        v15 += (v16 * a5[1]) >> 3;
      }

      v17 = v14 + *(v12 - 1);
      if (v17 >= 0xFFF)
      {
        v18 = 4095;
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

      *(v12 - 1) = v19;
      v20 = v15 + *v12;
      if (v20 >= 0xFFF)
      {
        v21 = 4095;
      }

      else
      {
        v21 = v20;
      }

      if (v20 <= 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      *v12 = v22;
      v12 += 2;
      v11 += 2;
      --v13;
    }

    while (v13);
    ++v8;
    v9 = (v9 + v10);
    v7 += 64;
  }

  while (v8 != 32);
  if (a5)
  {
    bzero(a3 - 2048, 0x800uLL);
  }

  bzero(a3, 0x800uLL);

  bzero(a4, 0x800uLL);
}

int16x8_t sub_277400D6C(uint64_t a1)
{
  for (i = 0; i != 2048; i += 16)
  {
    result = vqmovn_high_s32(vqmovn_s32(vshll_n_s16(*(a1 + i), 2uLL)), vshll_high_n_s16(*(a1 + i), 2uLL));
    *(a1 + i) = result;
  }

  return result;
}

int16x8_t sub_277400D98(uint64_t a1)
{
  for (i = 0; i != 512; i += 16)
  {
    result = vqmovn_high_s32(vqmovn_s32(vshll_n_s16(*(a1 + i), 1uLL)), vshll_high_n_s16(*(a1 + i), 1uLL));
    *(a1 + i) = result;
  }

  return result;
}

uint64_t sub_277400DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = (result + 2);
  v8 = (a3 + 2);
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = v7;
    do
    {
      *(a5 + v9) = *(v11 - 1) - *(v10 - 1);
      v13 = *v11;
      v11 += 2;
      v12 = v13;
      v14 = *v10;
      v10 += 2;
      *(a6 + v9) = v12 - v14;
      v9 += 2;
    }

    while (v9 != 32);
    ++v6;
    a6 += 32;
    a5 += 32;
    v7 += a2;
    v8 += a4;
  }

  while (v6 != 16);
  return result;
}

uint64_t sub_277400E30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = (result + 2);
  v8 = (a3 + 2);
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = v7;
    do
    {
      *(a5 + v9) = *(v11 - 1) - *(v10 - 1);
      v13 = *v11;
      v11 += 2;
      v12 = v13;
      v14 = *v10;
      v10 += 2;
      *(a6 + v9) = v12 - v14;
      v9 += 2;
    }

    while (v9 != 16);
    ++v6;
    a6 += 16;
    a5 += 16;
    v7 += a2;
    v8 += a4;
  }

  while (v6 != 8);
  return result;
}

uint64_t sub_277400E9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = (result + 2);
  v8 = (a3 + 2);
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = v7;
    do
    {
      *(a5 + v9) = *(v11 - 1) - *(v10 - 1);
      v13 = *v11;
      v11 += 2;
      v12 = v13;
      v14 = *v10;
      v10 += 2;
      *(a6 + v9) = v12 - v14;
      v9 += 2;
    }

    while (v9 != 8);
    ++v6;
    a6 += 8;
    a5 += 8;
    v7 += a2;
    v8 += a4;
  }

  while (v6 != 4);
  return result;
}

void (**sub_277400F08(void (**result)(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)))(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  result[24] = sub_277400D98;
  result[25] = sub_277400D6C;
  result[30] = sub_277401184;
  result[46] = sub_277401120;
  result[47] = sub_2774010BC;
  result[48] = sub_277400B40;
  result[39] = sub_2774FA8A8;
  result[40] = sub_2774FA830;
  result[41] = sub_2774FA7D8;
  result[42] = sub_2774FA780;
  result[8] = sub_2774FA6BC;
  result[9] = sub_2774FA594;
  result[10] = sub_2774FA4AC;
  result[11] = sub_2774FA3E4;
  result[12] = sub_2774FA320;
  result[1] = sub_2774FA1F0;
  *result = sub_2774FA01C;
  result[2] = sub_2774F9D0C;
  result[4] = sub_2774F996C;
  result[6] = sub_2774F8E94;
  result[20] = sub_2774F8E80;
  result[22] = sub_2774F8E6C;
  result[23] = sub_2774F8E54;
  result[31] = sub_2774F8DFC;
  result[32] = sub_2774F8CD0;
  result[33] = sub_2774F8BD4;
  result[34] = sub_2774F8AE0;
  return result;
}

uint64_t sub_2774010BC(uint64_t result, int a2)
{
  if (a2 != 31)
  {
    v2 = 0;
    v3 = 1 << a2;
    do
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (v4 << a2) + v2;
        v5 += *(result + 2 * v6);
        if (v5 >= 0x7FFF)
        {
          v7 = 0x7FFF;
        }

        else
        {
          v7 = v5;
        }

        if (v7 <= -32768)
        {
          LOWORD(v7) = 0x8000;
        }

        *(result + 2 * v6) = v7;
        ++v4;
      }

      while (v3 != v4);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_277401120(uint64_t result, int a2)
{
  if (a2 != 31)
  {
    v2 = 0;
    v3 = (1 << a2);
    do
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v5 += *(result + 2 * v4);
        if (v5 >= 0x7FFF)
        {
          v6 = 0x7FFF;
        }

        else
        {
          v6 = v5;
        }

        if (v6 <= -32768)
        {
          LOWORD(v6) = 0x8000;
        }

        *(result + 2 * v4++) = v6;
      }

      while (v3 != v4);
      ++v2;
      result += 2 * (1 << a2);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_277401184(uint64_t result)
{
  v1 = 0;
  for (i = 30; i != 14; i -= 2)
  {
    v3 = *(result + v1);
    *(result + v1) = *(result + i);
    *(result + i) = v3;
    v1 += 2;
  }

  return result;
}

void *sub_2774011B0(void *result)
{
  result[43] = sub_277400E9C;
  result[44] = sub_277400E30;
  result[45] = sub_277400DC4;
  result[28] = nullsub_6;
  result[29] = sub_277401520;
  result[38] = sub_277401410;
  result[49] = sub_2774012F4;
  result[13] = sub_277502BE4;
  result[14] = sub_277502B74;
  result[15] = sub_277502B04;
  result[16] = sub_277502A74;
  result[17] = sub_277502364;
  result[18] = sub_277501B98;
  result[19] = sub_277501594;
  result[21] = sub_2774F7060;
  result[26] = sub_2774F704C;
  result[27] = sub_2774F7028;
  result[35] = sub_277501478;
  result[36] = sub_277501350;
  result[37] = sub_277501238;
  return result;
}

uint64_t sub_2774012F4(uint64_t result, int a2, int a3)
{
  v3 = 1 << a2;
  v4 = a2 - 4;
  v5 = 4 - a2;
  v6 = 1 << (3 - a2);
  if (a3 == 1)
  {
    if (a2 != 31)
    {
      v7 = 0;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 1 << a2;
      }

      v9 = 2 * v3;
      do
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(result + v10);
          v13 = (v6 + v12) >> v5;
          v14 = v12 << v4;
          if (a2 < 4)
          {
            v14 = v13;
          }

          v11 += v14;
          if (v11 >= 0x7FFF)
          {
            v15 = 0x7FFF;
          }

          else
          {
            v15 = v11;
          }

          if (v15 <= -32768)
          {
            LOWORD(v15) = 0x8000;
          }

          *(result + v10) = v15;
          v10 += 2;
        }

        while (2 * v8 != v10);
        ++v7;
        result += v9;
      }

      while (v7 != v8);
    }
  }

  else if (a2 != 31)
  {
    v16 = 0;
    if (v3 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 1 << a2;
    }

    do
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v18 << a2) + v16;
        v21 = *(result + 2 * v20);
        v22 = (v6 + v21) >> v5;
        v23 = v21 << v4;
        if (a2 < 4)
        {
          v23 = v22;
        }

        v19 += v23;
        if (v19 >= 0x7FFF)
        {
          v24 = 0x7FFF;
        }

        else
        {
          v24 = v19;
        }

        if (v24 <= -32768)
        {
          LOWORD(v24) = 0x8000;
        }

        *(result + 2 * v20) = v24;
        ++v18;
      }

      while (v17 != v18);
      ++v16;
    }

    while (v16 != v17);
  }

  return result;
}

void sub_277401410(uint64_t a1, uint64_t a2, char *a3, char *a4, __int16 *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 2);
  v10 = 2 * a2;
  do
  {
    v11 = v7;
    v12 = v9;
    v13 = 32;
    do
    {
      v14 = *&a3[v11];
      v15 = *&a4[v11];
      if (a5)
      {
        v16 = *&a3[v11 - 2048] << 11 >> a5[2];
        v14 += (v16 * *a5) >> 3;
        v15 += (v16 * a5[1]) >> 3;
      }

      v17 = v14 + *(v12 - 1);
      if (v17 >= 0x7FF)
      {
        v18 = 2047;
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

      *(v12 - 1) = v19;
      v20 = v15 + *v12;
      if (v20 >= 0x7FF)
      {
        v21 = 2047;
      }

      else
      {
        v21 = v20;
      }

      if (v20 <= 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      *v12 = v22;
      v12 += 2;
      v11 += 2;
      --v13;
    }

    while (v13);
    ++v8;
    v9 = (v9 + v10);
    v7 += 64;
  }

  while (v8 != 32);
  if (a5)
  {
    bzero(a3 - 2048, 0x800uLL);
  }

  bzero(a3, 0x800uLL);

  bzero(a4, 0x800uLL);
}

int16x8_t sub_277401520(uint64_t a1)
{
  for (i = 0; i != 2048; i += 16)
  {
    result = vqmovn_high_s32(vqmovn_s32(vshll_n_s16(*(a1 + i), 1uLL)), vshll_high_n_s16(*(a1 + i), 1uLL));
    *(a1 + i) = result;
  }

  return result;
}

void (**sub_277401550(void (**result)(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)))(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  result[24] = nullsub_6;
  result[25] = sub_277401520;
  result[30] = sub_277401184;
  result[46] = sub_277401120;
  result[47] = sub_2774010BC;
  result[48] = sub_2774012F4;
  result[39] = sub_2774F8A88;
  result[40] = sub_2774F8A10;
  result[41] = sub_2774F89B8;
  result[42] = sub_2774F8960;
  result[8] = sub_2774F889C;
  result[9] = sub_2774F8774;
  result[10] = sub_2774F868C;
  result[11] = sub_2774F85C4;
  result[12] = sub_2774F8500;
  result[1] = sub_2774F83D0;
  *result = sub_2774F81FC;
  result[2] = sub_2774F7EEC;
  result[4] = sub_2774F7B4C;
  result[6] = sub_2774F7074;
  result[20] = sub_2774F7060;
  result[22] = sub_2774F704C;
  result[23] = sub_2774F7028;
  result[31] = sub_2774F6FD0;
  result[32] = sub_2774F6EA4;
  result[33] = sub_2774F6DA8;
  result[34] = sub_2774F6CB4;
  return result;
}

void *sub_277401704(void *result)
{
  result[43] = sub_277400E9C;
  result[44] = sub_277400E30;
  result[45] = sub_277400DC4;
  result[28] = sub_277401A78;
  result[29] = nullsub_7;
  result[38] = sub_277401964;
  result[49] = sub_277401848;
  result[13] = sub_277501160;
  result[14] = sub_2775010F0;
  result[15] = sub_277501080;
  result[16] = sub_277500FF0;
  result[17] = sub_2775008E0;
  result[18] = sub_277500114;
  result[19] = sub_2774FFB10;
  result[21] = sub_2774F5234;
  result[26] = sub_2774F5220;
  result[27] = sub_2774F51FC;
  result[35] = sub_2774FF9F4;
  result[36] = sub_2774FF8CC;
  result[37] = sub_2774FF7B4;
  return result;
}

uint64_t sub_277401848(uint64_t result, int a2, int a3)
{
  v3 = 1 << a2;
  v4 = a2 - 5;
  v5 = 5 - a2;
  v6 = 1 << (4 - a2);
  if (a3 == 1)
  {
    if (a2 != 31)
    {
      v7 = 0;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 1 << a2;
      }

      v9 = 2 * v3;
      do
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(result + v10);
          v13 = (v6 + v12) >> v5;
          v14 = v12 << v4;
          if (a2 < 5)
          {
            v14 = v13;
          }

          v11 += v14;
          if (v11 >= 0x7FFF)
          {
            v15 = 0x7FFF;
          }

          else
          {
            v15 = v11;
          }

          if (v15 <= -32768)
          {
            LOWORD(v15) = 0x8000;
          }

          *(result + v10) = v15;
          v10 += 2;
        }

        while (2 * v8 != v10);
        ++v7;
        result += v9;
      }

      while (v7 != v8);
    }
  }

  else if (a2 != 31)
  {
    v16 = 0;
    if (v3 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 1 << a2;
    }

    do
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v18 << a2) + v16;
        v21 = *(result + 2 * v20);
        v22 = (v6 + v21) >> v5;
        v23 = v21 << v4;
        if (a2 < 5)
        {
          v23 = v22;
        }

        v19 += v23;
        if (v19 >= 0x7FFF)
        {
          v24 = 0x7FFF;
        }

        else
        {
          v24 = v19;
        }

        if (v24 <= -32768)
        {
          LOWORD(v24) = 0x8000;
        }

        *(result + 2 * v20) = v24;
        ++v18;
      }

      while (v17 != v18);
      ++v16;
    }

    while (v16 != v17);
  }

  return result;
}

void sub_277401964(uint64_t a1, uint64_t a2, char *a3, char *a4, __int16 *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 2);
  v10 = 2 * a2;
  do
  {
    v11 = v7;
    v12 = v9;
    v13 = 32;
    do
    {
      v14 = *&a3[v11];
      v15 = *&a4[v11];
      if (a5)
      {
        v16 = *&a3[v11 - 2048] << 10 >> a5[2];
        v14 += (v16 * *a5) >> 3;
        v15 += (v16 * a5[1]) >> 3;
      }

      v17 = v14 + *(v12 - 1);
      if (v17 >= 0x3FF)
      {
        v18 = 1023;
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

      *(v12 - 1) = v19;
      v20 = v15 + *v12;
      if (v20 >= 0x3FF)
      {
        v21 = 1023;
      }

      else
      {
        v21 = v20;
      }

      if (v20 <= 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      *v12 = v22;
      v12 += 2;
      v11 += 2;
      --v13;
    }

    while (v13);
    ++v8;
    v9 = (v9 + v10);
    v7 += 64;
  }

  while (v8 != 32);
  if (a5)
  {
    bzero(a3 - 2048, 0x800uLL);
  }

  bzero(a3, 0x800uLL);

  bzero(a4, 0x800uLL);
}

uint64_t sub_277401A78(uint64_t result)
{
  v1 = 0;
  v2.i64[0] = 0x1000100010001;
  v2.i64[1] = 0x1000100010001;
  do
  {
    *(result + v1) = vhaddq_s16(*(result + v1), v2);
    v1 += 16;
  }

  while (v1 != 512);
  return result;
}

void (**sub_277401A9C(void (**result)(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)))(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  result[24] = sub_277401A78;
  result[25] = nullsub_7;
  result[30] = sub_277401184;
  result[46] = sub_277401120;
  result[47] = sub_2774010BC;
  result[48] = sub_277401848;
  result[39] = sub_2774F6C5C;
  result[40] = sub_2774F6BE4;
  result[41] = sub_2774F6B8C;
  result[42] = sub_2774F6B34;
  result[8] = sub_2774F6A70;
  result[9] = sub_2774F6948;
  result[10] = sub_2774F6860;
  result[11] = sub_2774F6798;
  result[12] = sub_2774F66D4;
  result[1] = sub_2774F65A4;
  *result = sub_2774F63D0;
  result[2] = sub_2774F60C0;
  result[4] = sub_2774F5D20;
  result[6] = sub_2774F5248;
  result[20] = sub_2774F5234;
  result[22] = sub_2774F5220;
  result[23] = sub_2774F51FC;
  result[31] = sub_2774F51A4;
  result[32] = sub_2774F5078;
  result[33] = sub_2774F4F7C;
  result[34] = sub_2774F4E88;
  return result;
}

void *sub_277401C50(void *result)
{
  result[43] = sub_277400E9C;
  result[44] = sub_277400E30;
  result[45] = sub_277400DC4;
  result[28] = sub_277401FE4;
  result[29] = sub_277401FC0;
  result[38] = sub_277401EB0;
  result[49] = sub_277401D94;
  result[13] = sub_2774FF6DC;
  result[14] = sub_2774FF66C;
  result[15] = sub_2774FF5FC;
  result[16] = sub_2774FF56C;
  result[17] = sub_2774FEE5C;
  result[18] = sub_2774FE690;
  result[19] = sub_2774FE08C;
  result[21] = sub_2774F3408;
  result[26] = sub_2774F33F4;
  result[27] = sub_2774F33D0;
  result[35] = sub_2774FDF70;
  result[36] = sub_2774FDE48;
  result[37] = sub_2774FDD30;
  return result;
}

uint64_t sub_277401D94(uint64_t result, int a2, int a3)
{
  v3 = 1 << a2;
  v4 = a2 - 6;
  v5 = 6 - a2;
  v6 = 1 << (5 - a2);
  if (a3 == 1)
  {
    if (a2 != 31)
    {
      v7 = 0;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 1 << a2;
      }

      v9 = 2 * v3;
      do
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(result + v10);
          v13 = (v6 + v12) >> v5;
          v14 = v12 << v4;
          if (a2 < 6)
          {
            v14 = v13;
          }

          v11 += v14;
          if (v11 >= 0x7FFF)
          {
            v15 = 0x7FFF;
          }

          else
          {
            v15 = v11;
          }

          if (v15 <= -32768)
          {
            LOWORD(v15) = 0x8000;
          }

          *(result + v10) = v15;
          v10 += 2;
        }

        while (2 * v8 != v10);
        ++v7;
        result += v9;
      }

      while (v7 != v8);
    }
  }

  else if (a2 != 31)
  {
    v16 = 0;
    if (v3 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 1 << a2;
    }

    do
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v18 << a2) + v16;
        v21 = *(result + 2 * v20);
        v22 = (v6 + v21) >> v5;
        v23 = v21 << v4;
        if (a2 < 6)
        {
          v23 = v22;
        }

        v19 += v23;
        if (v19 >= 0x7FFF)
        {
          v24 = 0x7FFF;
        }

        else
        {
          v24 = v19;
        }

        if (v24 <= -32768)
        {
          LOWORD(v24) = 0x8000;
        }

        *(result + 2 * v20) = v24;
        ++v18;
      }

      while (v17 != v18);
      ++v16;
    }

    while (v16 != v17);
  }

  return result;
}

void sub_277401EB0(uint64_t a1, uint64_t a2, char *a3, char *a4, __int16 *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 2);
  v10 = 2 * a2;
  do
  {
    v11 = v7;
    v12 = v9;
    v13 = 32;
    do
    {
      v14 = *&a3[v11];
      v15 = *&a4[v11];
      if (a5)
      {
        v16 = *&a3[v11 - 2048] << 9 >> a5[2];
        v14 += (v16 * *a5) >> 3;
        v15 += (v16 * a5[1]) >> 3;
      }

      v17 = v14 + *(v12 - 1);
      if (v17 >= 0x1FF)
      {
        v18 = 511;
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

      *(v12 - 1) = v19;
      v20 = v15 + *v12;
      if (v20 >= 0x1FF)
      {
        v21 = 511;
      }

      else
      {
        v21 = v20;
      }

      if (v20 <= 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      *v12 = v22;
      v12 += 2;
      v11 += 2;
      --v13;
    }

    while (v13);
    ++v8;
    v9 = (v9 + v10);
    v7 += 64;
  }

  while (v8 != 32);
  if (a5)
  {
    bzero(a3 - 2048, 0x800uLL);
  }

  bzero(a3, 0x800uLL);

  bzero(a4, 0x800uLL);
}

uint64_t sub_277401FC0(uint64_t result)
{
  v1 = 0;
  v2.i64[0] = 0x1000100010001;
  v2.i64[1] = 0x1000100010001;
  do
  {
    *(result + v1) = vhaddq_s16(*(result + v1), v2);
    v1 += 16;
  }

  while (v1 != 2048);
  return result;
}

int16x8_t sub_277401FE4(uint64_t a1)
{
  for (i = 0; i != 512; i += 16)
  {
    result = vrshrn_high_n_s32(vrshrn_n_s32(vmovl_s16(*(a1 + i)), 2uLL), vmovl_high_s16(*(a1 + i)), 2uLL);
    *(a1 + i) = result;
  }

  return result;
}

void (**sub_277402010(void (**result)(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)))(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  result[24] = sub_277401FE4;
  result[25] = sub_277401FC0;
  result[30] = sub_277401184;
  result[46] = sub_277401120;
  result[47] = sub_2774010BC;
  result[48] = sub_277401D94;
  result[39] = sub_2774F4E30;
  result[40] = sub_2774F4DB8;
  result[41] = sub_2774F4D60;
  result[42] = sub_2774F4D08;
  result[8] = sub_2774F4C44;
  result[9] = sub_2774F4B1C;
  result[10] = sub_2774F4A34;
  result[11] = sub_2774F496C;
  result[12] = sub_2774F48A8;
  result[1] = sub_2774F4778;
  *result = sub_2774F45A4;
  result[2] = sub_2774F4294;
  result[4] = sub_2774F3EF4;
  result[6] = sub_2774F341C;
  result[20] = sub_2774F3408;
  result[22] = sub_2774F33F4;
  result[23] = sub_2774F33D0;
  result[31] = sub_2774F3378;
  result[32] = sub_2774F324C;
  result[33] = sub_2774F3150;
  result[34] = sub_2774F305C;
  return result;
}

void *sub_2774021C4(void *result)
{
  result[43] = sub_277400E9C;
  result[44] = sub_277400E30;
  result[45] = sub_277400DC4;
  result[28] = sub_277402560;
  result[29] = sub_277402534;
  result[38] = sub_277402424;
  result[49] = sub_277402308;
  result[13] = sub_2774FC298;
  result[14] = sub_2774FC228;
  result[15] = sub_2774FC1B8;
  result[16] = sub_2774FDCA0;
  result[17] = sub_2774FD590;
  result[18] = sub_2774FCDC4;
  result[19] = sub_2774FC7C0;
  result[21] = sub_2774EE9BC;
  result[26] = sub_2774EE9A8;
  result[27] = sub_2774EE984;
  result[35] = sub_2774FC6A4;
  result[36] = sub_2774FC57C;
  result[37] = sub_2774FC464;
  return result;
}

uint64_t sub_277402308(uint64_t result, int a2, int a3)
{
  v3 = 1 << a2;
  v4 = a2 - 7;
  v5 = 7 - a2;
  v6 = 1 << (6 - a2);
  if (a3 == 1)
  {
    if (a2 != 31)
    {
      v7 = 0;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 1 << a2;
      }

      v9 = 2 * v3;
      do
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(result + v10);
          v13 = (v6 + v12) >> v5;
          v14 = v12 << v4;
          if (a2 < 7)
          {
            v14 = v13;
          }

          v11 += v14;
          if (v11 >= 0x7FFF)
          {
            v15 = 0x7FFF;
          }

          else
          {
            v15 = v11;
          }

          if (v15 <= -32768)
          {
            LOWORD(v15) = 0x8000;
          }

          *(result + v10) = v15;
          v10 += 2;
        }

        while (2 * v8 != v10);
        ++v7;
        result += v9;
      }

      while (v7 != v8);
    }
  }

  else if (a2 != 31)
  {
    v16 = 0;
    if (v3 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 1 << a2;
    }

    do
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v18 << a2) + v16;
        v21 = *(result + 2 * v20);
        v22 = (v6 + v21) >> v5;
        v23 = v21 << v4;
        if (a2 < 7)
        {
          v23 = v22;
        }

        v19 += v23;
        if (v19 >= 0x7FFF)
        {
          v24 = 0x7FFF;
        }

        else
        {
          v24 = v19;
        }

        if (v24 <= -32768)
        {
          LOWORD(v24) = 0x8000;
        }

        *(result + 2 * v20) = v24;
        ++v18;
      }

      while (v17 != v18);
      ++v16;
    }

    while (v16 != v17);
  }

  return result;
}

void sub_277402424(uint64_t a1, uint64_t a2, char *a3, char *a4, __int16 *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 2);
  v10 = 2 * a2;
  do
  {
    v11 = v7;
    v12 = v9;
    v13 = 32;
    do
    {
      v14 = *&a3[v11];
      v15 = *&a4[v11];
      if (a5)
      {
        v16 = *&a3[v11 - 2048] << 8 >> a5[2];
        v14 += (v16 * *a5) >> 3;
        v15 += (v16 * a5[1]) >> 3;
      }

      v17 = v14 + *(v12 - 1);
      if (v17 >= 0xFF)
      {
        v18 = 255;
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

      *(v12 - 1) = v19;
      v20 = v15 + *v12;
      if (v20 >= 0xFF)
      {
        v21 = 255;
      }

      else
      {
        v21 = v20;
      }

      if (v20 <= 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      *v12 = v22;
      v12 += 2;
      v11 += 2;
      --v13;
    }

    while (v13);
    ++v8;
    v9 = (v9 + v10);
    v7 += 64;
  }

  while (v8 != 32);
  if (a5)
  {
    bzero(a3 - 2048, 0x800uLL);
  }

  bzero(a3, 0x800uLL);

  bzero(a4, 0x800uLL);
}

int16x8_t sub_277402534(uint64_t a1)
{
  for (i = 0; i != 2048; i += 16)
  {
    result = vrshrn_high_n_s32(vrshrn_n_s32(vmovl_s16(*(a1 + i)), 2uLL), vmovl_high_s16(*(a1 + i)), 2uLL);
    *(a1 + i) = result;
  }

  return result;
}

int16x8_t sub_277402560(uint64_t a1)
{
  for (i = 0; i != 512; i += 16)
  {
    result = vrshrn_high_n_s32(vrshrn_n_s32(vmovl_s16(*(a1 + i)), 3uLL), vmovl_high_s16(*(a1 + i)), 3uLL);
    *(a1 + i) = result;
  }

  return result;
}

void (**sub_27740258C(void (**result)(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)))(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  result[24] = sub_277402560;
  result[25] = sub_277402534;
  result[30] = sub_277401184;
  result[46] = sub_277401120;
  result[47] = sub_2774010BC;
  result[48] = sub_277402308;
  result[39] = sub_2774F3004;
  result[40] = sub_2774F2F8C;
  result[41] = sub_2774F2F34;
  result[42] = sub_2774F2EDC;
  result[8] = sub_2774F2E18;
  result[9] = sub_2774F2CF0;
  result[10] = sub_2774F2C08;
  result[11] = sub_2774F2B40;
  result[12] = sub_2774F2A7C;
  result[1] = sub_2774F29EC;
  *result = sub_2774F28F0;
  result[2] = sub_2774F270C;
  result[4] = sub_2774F254C;
  result[6] = sub_2774F23A0;
  result[20] = sub_2774EE9BC;
  result[22] = sub_2774EE9A8;
  result[23] = sub_2774EE984;
  result[31] = sub_2774F2348;
  result[32] = sub_2774F221C;
  result[33] = sub_2774F2120;
  result[34] = sub_2774F202C;
  return result;
}

void sub_277402740(uint64_t a1, uint64_t a2, char *a3, char *a4, __int16 *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 1);
  do
  {
    v10 = v7;
    v11 = v9;
    v12 = 32;
    do
    {
      v13 = *&a3[v10];
      v14 = *&a4[v10];
      if (a5)
      {
        v15 = *&a3[v10 - 2048] << 8 >> a5[2];
        v13 += (v15 * *a5) >> 3;
        v14 += (v15 * a5[1]) >> 3;
      }

      v16 = v13 + *(v11 - 1);
      if (v16 >= 0xFF)
      {
        v17 = -1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 <= 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      *(v11 - 1) = v18;
      v19 = v14 + *v11;
      if (v19 >= 0xFF)
      {
        v20 = -1;
      }

      else
      {
        v20 = v19;
      }

      if (v19 <= 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      *v11 = v21;
      v11 += 2;
      v10 += 2;
      --v12;
    }

    while (v12);
    ++v8;
    v9 += a2;
    v7 += 64;
  }

  while (v8 != 32);
  if (a5)
  {
    bzero(a3 - 2048, 0x800uLL);
  }

  bzero(a3, 0x800uLL);

  bzero(a4, 0x800uLL);
}

uint64_t sub_27740284C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a1 + 536) = v4[406];
  v5 = v4[397];
  *(a1 + 537) = v5;
  *(a1 + 538) = v4[2148];
  v6 = v4[2096];
  if (v6 == 8)
  {
    v7 = v4[2098];
    if (v7 == 8)
    {
      result = 0;
      *a1 = sub_2774113D8;
      *(a1 + 16) = sub_277411038;
      *(a1 + 200) = sub_27741101C;
      *(a1 + 208) = sub_277411000;
      *(a1 + 216) = sub_277410FE4;
      *(a1 + 224) = sub_277410FC8;
      *(a1 + 232) = sub_277410FA4;
      *(a1 + 120) = sub_277410F7C;
      *(a1 + 128) = sub_277410F54;
      *(a1 + 136) = sub_277410F2C;
      *(a1 + 144) = sub_277410F08;
      *(a1 + 152) = sub_277410EE0;
      *(a1 + 520) = sub_277410E40;
      *(a1 + 32) = sub_2774565BC;
      *(a1 + 40) = sub_2774564EC;
      v9 = v5 == 0;
      v10 = sub_2774562CC;
      if (!v9)
      {
        v10 = sub_27745642C;
      }

      *(a1 + 48) = v10;
      *(a1 + 280) = sub_277456210;
      *(a1 + 288) = sub_2774560B4;
      *(a1 + 296) = sub_277455CA0;
      *(a1 + 304) = sub_277455860;
      *(a1 + 312) = sub_277455058;
      *(a1 + 160) = sub_27745500C;
      *(a1 + 168) = sub_277454F30;
      *(a1 + 176) = sub_277454DC4;
      *(a1 + 184) = sub_277454DA4;
      *(a1 + 192) = sub_277454D7C;
      *(a1 + 80) = sub_277454D30;
      *(a1 + 88) = sub_277454CB4;
      *(a1 + 96) = sub_277454BC4;
      *(a1 + 104) = sub_277454AF8;
      *(a1 + 112) = sub_277454A00;
      *(a1 + 320) = sub_277454998;
      *(a1 + 328) = sub_2774548DC;
      *(a1 + 336) = sub_277454744;
      *(a1 + 344) = sub_2774546E8;
      *(a1 + 352) = sub_277454660;
      *(a1 + 240) = sub_2774543AC;
      *(a1 + 248) = sub_277454300;
      *(a1 + 256) = sub_277453F4C;
      *(a1 + 264) = sub_277453AEC;
      *(a1 + 272) = sub_277452E58;
      *(a1 + 8) = sub_2774107CC;
      v11 = *(a1 + 538);
      v12 = sub_27740FFFC;
      if (v11 == 2)
      {
        v12 = sub_27741028C;
      }

      if (v11 == 3)
      {
        v12 = sub_27740F878;
      }

      *(a1 + 24) = v12;
      *(a1 + 56) = sub_27740F7D0;
      *(a1 + 64) = sub_27740F728;
      *(a1 + 72) = sub_27740F680;
      *(a1 + 528) = sub_27740F574;
      *(a1 + 360) = sub_2774584EC;
      *(a1 + 368) = sub_2774582E0;
      *(a1 + 376) = sub_277458040;
      *(a1 + 384) = sub_277457B94;
      *(a1 + 392) = sub_277457B74;
      *(a1 + 400) = sub_277457B58;
      *(a1 + 408) = sub_277457B38;
      *(a1 + 416) = sub_277457B10;
      *(a1 + 424) = sub_277457AE0;
      *(a1 + 432) = sub_277457A80;
      *(a1 + 440) = sub_277457A04;
      *(a1 + 448) = sub_277457914;
      *(a1 + 456) = sub_2774578D0;
      *(a1 + 464) = sub_277457888;
      *(a1 + 472) = sub_27745781C;
      *(a1 + 480) = sub_27745777C;
      *(a1 + 488) = sub_2774576D4;
      *(a1 + 496) = sub_277457384;
      *(a1 + 504) = sub_277456FC4;
      *(a1 + 512) = sub_27745664C;
      return result;
    }

    goto LABEL_12;
  }

  if (v6 <= 0xC)
  {
    v7 = v4[2098];
LABEL_12:
    if (v7 <= 0xC)
    {
      (off_288662388[4 * v4[222]])(a1);
      (off_288662388[4 * *(*(a2 + 16) + 223) + 2])(a1);
      return 0;
    }
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Luma/Chroma bitdepth %d/%d not supported\n", v4[2096], v4[2098]);
    syslog(27, "Luma/Chroma bitdepth %d/%d not supported\n", *(*(a2 + 16) + 2096), *(*(a2 + 16) + 2098));
  }

  return 4294954386;
}

uint64_t sub_277402DE0(uint64_t result)
{
  *(result + 8) = sub_277404164;
  v1 = *(result + 538);
  v2 = sub_277403AC0;
  if (v1 == 2)
  {
    v2 = sub_277403D48;
  }

  if (v1 == 3)
  {
    v2 = sub_277403568;
  }

  *(result + 24) = v2;
  *(result + 56) = sub_2774034C0;
  *(result + 64) = sub_277403418;
  *(result + 72) = sub_277403370;
  *(result + 376) = sub_2774032CC;
  *(result + 384) = sub_277403228;
  *(result + 472) = sub_277403184;
  *(result + 480) = sub_2774030C0;
  *(result + 528) = sub_277402FB4;
  *(result + 456) = sub_27745D6E0;
  *(result + 464) = sub_27745D694;
  *(result + 360) = sub_27745D5E4;
  *(result + 368) = sub_27745D544;
  *(result + 392) = sub_27745D51C;
  *(result + 400) = sub_27745D4EC;
  *(result + 408) = sub_27745D4C0;
  *(result + 416) = sub_27745D484;
  *(result + 424) = sub_27745D444;
  *(result + 432) = sub_27745D404;
  *(result + 440) = sub_27745D3D4;
  *(result + 448) = sub_27745D39C;
  *(result + 488) = sub_27745E22C;
  *(result + 496) = sub_27745DEC0;
  *(result + 504) = sub_27745DAF4;
  *(result + 512) = sub_27745D71C;
  return result;
}

uint64_t sub_277402FB4(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v6 = a6;
    v9 = result;
    v10 = 0;
    v11 = a6 + 2;
    v18 = a2;
    v12 = 12 - a4;
    v13 = 4 * a2;
    v14 = 2 * a5;
    do
    {
      if (a2 >= 1)
      {
        v15 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v6 + v15) = result << v12;
          v15 += 4;
        }

        while (v13 != v15);
      }

      ++v10;
      v6 += v14;
    }

    while (v10 != a3);
    v16 = 0;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v11 + v17) = result << v12;
          v17 += 4;
        }

        while (4 * v18 != v17);
      }

      ++v16;
      v11 += v14;
    }

    while (v16 != a3);
  }

  return result;
}

__n128 sub_2774030C0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = xmmword_27750D360;
  v5 = (a2 + 256);
  v6 = 0uLL;
  v7 = 32;
  v8 = xmmword_27750D360;
  v9 = 0uLL;
  do
  {
    v10 = v5 - 128;
    v22 = vld2q_s16(v5);
    v5 += 16;
    v23 = vld2q_s16(v10);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v22.val[0]), v23.val[0]);
    v4 = vaddw_u16(vaddw_u16(v4, *v22.val[0].i8), *v23.val[0].i8);
    v9 = vaddw_high_u16(vaddw_high_u16(v9, v22.val[1]), v23.val[1]);
    v8 = vaddw_u16(vaddw_u16(v8, *v22.val[1].i8), *v23.val[1].i8);
    v7 -= 8;
  }

  while (v7);
  v11 = 0;
  v12 = vdupq_n_s32((vaddvq_s32(vaddq_s32(v8, v9)) << 10) & 0xFFFF0000 | (vaddvq_s32(vaddq_s32(v4, v6)) >> 6));
  do
  {
    a4[v11++] = v12;
  }

  while (v11 != 8);
  v13 = 2 * a3;
  v14 = 31;
  do
  {
    v15 = a4 + v13;
    v16 = *a4;
    v17 = a4[1];
    v18 = a4[3];
    *(v15 + 32) = a4[2];
    *(v15 + 48) = v18;
    *v15 = v16;
    *(v15 + 16) = v17;
    result = a4[4];
    v20 = a4[5];
    v21 = a4[7];
    *(v15 + 96) = a4[6];
    *(v15 + 112) = v21;
    *(v15 + 64) = result;
    *(v15 + 80) = v20;
    a4 = (a4 + v13);
    --v14;
  }

  while (v14);
  return result;
}

int32x4_t sub_277403184(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4)
{
  v4 = xmmword_27750D370;
  v5 = (a2 + 128);
  v6 = 0uLL;
  v7 = 16;
  v8 = xmmword_27750D370;
  v9 = 0uLL;
  do
  {
    v10 = v5 - 64;
    v17 = vld2q_s16(v5);
    v5 += 16;
    v18 = vld2q_s16(v10);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v17.val[0]), v18.val[0]);
    v4 = vaddw_u16(vaddw_u16(v4, *v17.val[0].i8), *v18.val[0].i8);
    v9 = vaddw_high_u16(vaddw_high_u16(v9, v17.val[1]), v18.val[1]);
    v8 = vaddw_u16(vaddw_u16(v8, *v17.val[1].i8), *v18.val[1].i8);
    v7 -= 8;
  }

  while (v7);
  v11 = vdupq_n_s32((vaddvq_s32(vaddq_s32(v8, v9)) << 11) & 0xFFFF0000 | (vaddvq_s32(vaddq_s32(v4, v6)) >> 5));
  *a4 = v11;
  a4[1] = v11;
  a4[2] = v11;
  a4[3] = v11;
  v12 = 15;
  do
  {
    result = *a4;
    v14 = a4[1];
    v15 = a4[2];
    v16 = a4[3];
    a4 = (a4 + 2 * a3);
    a4[2] = v15;
    a4[3] = v16;
    *a4 = result;
    a4[1] = v14;
    --v12;
  }

  while (v12);
  return result;
}

uint64_t sub_277403228(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a4 + 2);
  do
  {
    v6 = &a2[2 * v4];
    v7 = 31;
    v8 = 31 - v4++;
    v9 = -32;
    v10 = a2 + 129;
    v11 = v5;
    do
    {
      *(v11 - 1) = ((v9 + 33) * a2[192] + v7 * *v6 + v8 * *(v10 - 1) + v4 * a2[64] + 32) >> 6;
      v12 = *v10;
      v10 += 2;
      result = ((v9 + 33) * a2[193] + v7 * v6[1] + v8 * v12 + v4 * a2[65] + 32) >> 6;
      *v11 = result;
      v11 += 2;
      --v7;
    }

    while (!__CFADD__(v9++, 1));
    v5 += a3;
  }

  while (v4 != 32);
  return result;
}

uint64_t sub_2774032CC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a4 + 2);
  do
  {
    v6 = &a2[2 * v4];
    v7 = 15;
    v8 = 15 - v4++;
    v9 = -16;
    v10 = a2 + 65;
    v11 = v5;
    do
    {
      *(v11 - 1) = ((v9 + 17) * a2[96] + v7 * *v6 + v8 * *(v10 - 1) + v4 * a2[32] + 16) >> 5;
      v12 = *v10;
      v10 += 2;
      result = ((v9 + 17) * a2[97] + v7 * v6[1] + v8 * v12 + v4 * a2[33] + 16) >> 5;
      *v11 = result;
      v11 += 2;
      --v7;
    }

    while (!__CFADD__(v9++, 1));
    v5 += a3;
  }

  while (v4 != 16);
  return result;
}

unsigned __int16 *sub_277403370(unsigned __int16 *result, uint64_t a2)
{
  v2 = 1;
  do
  {
    v3 = 0;
    v4 = *(result - 2);
    v5 = v2;
    *(a2 - 4) = (*result + 2 * v4 + result[128] + 2) >> 2;
    *(a2 + 508) = result[254];
    *(a2 + 252) = result[126];
    v6 = v4;
    do
    {
      v7 = result[v3];
      v8 = (a2 + v3 * 2);
      *v8 = (v4 + 2 * v7 + result[v3 + 2] + 2) >> 2;
      v9 = result[v3 + 128];
      v8[128] = (v6 + 2 * v9 + result[v3 + 130] + 2) >> 2;
      v3 += 2;
      v4 = v7;
      v6 = v9;
    }

    while (v3 != 126);
    v2 = 0;
    ++result;
    a2 += 2;
  }

  while ((v5 & 1) != 0);
  return result;
}

unsigned __int16 *sub_277403418(unsigned __int16 *result, uint64_t a2)
{
  v2 = 1;
  do
  {
    v3 = 0;
    v4 = *(result - 2);
    v5 = v2;
    *(a2 - 4) = (*result + 2 * v4 + result[64] + 2) >> 2;
    *(a2 + 252) = result[126];
    *(a2 + 124) = result[62];
    v6 = v4;
    do
    {
      v7 = result[v3];
      v8 = (a2 + v3 * 2);
      *v8 = (v4 + 2 * v7 + result[v3 + 2] + 2) >> 2;
      v9 = result[v3 + 64];
      v8[64] = (v6 + 2 * v9 + result[v3 + 66] + 2) >> 2;
      v3 += 2;
      v4 = v7;
      v6 = v9;
    }

    while (v3 != 62);
    v2 = 0;
    ++result;
    a2 += 2;
  }

  while ((v5 & 1) != 0);
  return result;
}

unsigned __int16 *sub_2774034C0(unsigned __int16 *result, uint64_t a2)
{
  v2 = 1;
  do
  {
    v3 = 0;
    v4 = *(result - 2);
    v5 = v2;
    *(a2 - 4) = (*result + 2 * v4 + result[32] + 2) >> 2;
    *(a2 + 124) = result[62];
    *(a2 + 60) = result[30];
    v6 = v4;
    do
    {
      v7 = result[v3];
      v8 = (a2 + v3 * 2);
      *v8 = (v4 + 2 * v7 + result[v3 + 2] + 2) >> 2;
      v9 = result[v3 + 32];
      v8[32] = (v6 + 2 * v9 + result[v3 + 34] + 2) >> 2;
      v3 += 2;
      v4 = v7;
      v6 = v9;
    }

    while (v3 != 30);
    v2 = 0;
    ++result;
    a2 += 2;
  }

  while ((v5 & 1) != 0);
  return result;
}

void sub_277403568(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 4 * v13;
      v16 = a5 + 4 * v13 - 4;
      v17 = a4 + 4 * a3 * (v13 - 1) - 4;
      v18 = v15 - 4 * v8 + a5 + 8;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s16(v27, *v14.i8).u8[0])
            {
              *(v23 - 2) = v11;
            }

            if (vuzp1_s16(v27, *&v14).i8[2])
            {
              *(v23 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))).i32[1])
            {
              *v23 = v11;
              v23[1] = v11;
            }

            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
        }

        ++v12;
        v16 -= 4 * v8;
        v17 -= 4 * a3 * v8;
        v18 -= 4 * v8;
      }

      while (v12 != v7);
      v28 = 0;
      if (v6 >= 8)
      {
        v29 = 8;
      }

      else
      {
        v29 = v6;
      }

      v30 = a5 + 4 * v6 - 4;
      v31 = a4 + 4 * a3 * (v6 - 1) - 4;
      v32 = vdupq_n_s64(4uLL);
      v33 = 4 * v6 - 4 * v29 + a5 + 8;
      do
      {
        if (((a2 >> v28) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v34 = v31;
            v35 = v30;
            v36 = v29 + 1;
            do
            {
              v11 = *v34;
              *v35-- = *v34;
              --v36;
              v34 -= a3;
            }

            while (v36 > 1);
          }
        }

        else
        {
          v37 = v33;
          v38 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v39 = xmmword_27750D320;
          v40 = xmmword_27750D310;
          do
          {
            v41 = vmovn_s64(vcgeq_u64(v14, v39));
            if (vuzp1_s16(v41, *v14.i8).u8[0])
            {
              *(v37 - 2) = v11;
            }

            if (vuzp1_s16(v41, *&v14).i8[2])
            {
              *(v37 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v40))).i32[1])
            {
              *v37 = v11;
              v37[1] = v11;
            }

            v40 = vaddq_s64(v40, v32);
            v39 = vaddq_s64(v39, v32);
            v37 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        ++v28;
        v30 -= 4 * v29;
        v31 -= 4 * a3 * v29;
        v33 -= 4 * v29;
      }

      while (v28 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v7 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = v8;
      if (v8 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v8;
      }

      v46 = v43;
      v47 = (a5 + 4 * v43);
      v48 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = vdupq_n_s64(v8 - 1);
      v50 = 4 * v8;
      v51 = (a4 - 4 * a3);
      v52 = vdupq_n_s64(4uLL);
      v53 = v47 + 2;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v54 = v51;
            v55 = v47;
            v56 = v45;
            do
            {
              v57 = *v54++;
              v11 = v57;
              *v55++ = v57;
              --v56;
            }

            while (v56);
          }
        }

        else
        {
          v58 = v53;
          v59 = (v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v60 = xmmword_27750D320;
          v61 = xmmword_27750D310;
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v49, v60));
            if (vuzp1_s16(v62, *v49.i8).u8[0])
            {
              *(v58 - 2) = v11;
            }

            if (vuzp1_s16(v62, *&v49).i8[2])
            {
              *(v58 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v61))).i32[1])
            {
              *v58 = v11;
              v58[1] = v11;
            }

            v61 = vaddq_s64(v61, v52);
            v60 = vaddq_s64(v60, v52);
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
        }

        ++v42;
        v47 = (v47 + v50);
        v51 = (v51 + v50);
        v53 = (v53 + v50);
      }

      while (v42 != v7);
      v63 = 0;
      v64 = 4 * v46;
      v65 = 4 * v6;
      v66 = (a5 + v64 + v65);
      v67 = 4 * v44;
      v68 = (a4 + v65 - 4 * a3);
      v69 = v66 + 2;
      v70 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v63) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v71 = v68;
            v72 = v66;
            v73 = v45;
            do
            {
              v74 = *v71++;
              v11 = v74;
              *v72++ = v74;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          v75 = v69;
          v76 = v48;
          v77 = xmmword_27750D320;
          v78 = xmmword_27750D310;
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v49, v77));
            if (vuzp1_s16(v79, *v49.i8).u8[0])
            {
              *(v75 - 2) = v11;
            }

            if (vuzp1_s16(v79, *&v49).i8[2])
            {
              *(v75 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v78))).i32[1])
            {
              *v75 = v11;
              v75[1] = v11;
            }

            v78 = vaddq_s64(v78, v70);
            v77 = vaddq_s64(v77, v70);
            v75 += 4;
            v76 -= 4;
          }

          while (v76);
        }

        ++v63;
        v66 = (v66 + v67);
        v68 = (v68 + v67);
        v69 = (v69 + v67);
      }

      while (v63 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D820, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_277403AC0(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = (1 << a1);
    v6 = (v5 >> 2);
    v7 = __clz(__rbit32(a2));
    if (v7 < 9)
    {
      v8 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 + 18 + v7]) * a3 - 4);
    }

    else
    {
      v8 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v7] - a3));
    }

    v9 = *v8;
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = 2 << a1;
      v12 = a5 + 4 * v11;
      v13 = a4 + 4 * a3 * (v11 - 1) - 4;
      do
      {
        v14 = v10 + 1;
        if ((a2 >> v10))
        {
          v15 = -4;
          v16 = v13;
          do
          {
            v9 = *v16;
            *(v12 + v15) = *v16;
            v15 -= 4;
            v16 -= a3;
          }

          while (v15 != -20);
        }

        else
        {
          *(a5 + 4 * (v11 - 4 * v14)) = vdupq_n_s32(v9);
        }

        v12 -= 16;
        v13 -= 16 * a3;
        v10 = v14;
      }

      while (v14 != v6);
      v17 = 0;
      v18 = a5 + 4 * v5;
      v19 = a4 + 4 * a3 * (v5 - 1) - 4;
      do
      {
        v20 = v17 + 1;
        if (((a2 >> v17) & 0x10) != 0)
        {
          v21 = -4;
          v22 = v19;
          do
          {
            v9 = *v22;
            *(v18 + v21) = *v22;
            v21 -= 4;
            v22 -= a3;
          }

          while (v21 != -20);
        }

        else
        {
          *(a5 + 4 * (v5 - 4 * v20)) = vdupq_n_s32(v9);
        }

        v18 -= 16;
        v19 -= 16 * a3;
        v17 = v20;
      }

      while (v20 != v6);
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v9;
    if (v6 >= 1)
    {
      v23 = 0;
      v24 = 2 << a1;
      v25 = a5 + 4 * v24;
      v26 = a4 - 4 * a3;
      v27 = v25;
      do
      {
        if (((a2 >> v23) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v9 = *(v26 + i);
            *(v27 + i) = v9;
          }
        }

        else
        {
          *(v25 + 16 * v23) = vdupq_n_s32(v9);
        }

        ++v23;
        v27 += 16;
        v26 += 16;
      }

      while (v23 != v6);
      v29 = 0;
      v30 = a5 + 4 * v24 + 4 * v5;
      v31 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v29) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v9 = *(v31 + j);
            *(v30 + j) = v9;
          }
        }

        else
        {
          *(v25 + 4 * (v5 + 4 * v29)) = vdupq_n_s32(v9);
        }

        ++v29;
        v30 += 16;
        v31 += 16;
      }

      while (v29 != v6);
    }
  }

  else
  {
    memset_pattern16((a5 - 4), &unk_27750D820, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_277403D48(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = (1 << a1);
    v7 = ((v6 + 4) >> 3);
    if (v6 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = a5 + 4 * (2 << a1) - 4;
      v16 = a4 + 4 * a3 * ((2 << a1) - 1) - 4;
      v17 = 4 * (2 << a1) - 4 * v8 + a5 + 8;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v19 = v16;
            v20 = v15;
            v21 = v8 + 1;
            do
            {
              v11 = *v19;
              *v20-- = *v19;
              --v21;
              v19 -= a3;
            }

            while (v21 > 1);
          }
        }

        else
        {
          v22 = v17;
          v23 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v24 = xmmword_27750D320;
          v25 = xmmword_27750D310;
          do
          {
            v26 = vmovn_s64(vcgeq_u64(v14, v24));
            if (vuzp1_s16(v26, *v14.i8).u8[0])
            {
              *(v22 - 2) = v11;
            }

            if (vuzp1_s16(v26, *&v14).i8[2])
            {
              *(v22 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v25))).i32[1])
            {
              *v22 = v11;
              v22[1] = v11;
            }

            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 4;
            v23 -= 4;
          }

          while (v23);
        }

        ++v12;
        v15 -= 4 * v8;
        v16 -= 4 * a3 * v8;
        v17 -= 4 * v8;
      }

      while (v12 != v7);
      v27 = 0;
      if (v6 >= 8)
      {
        v28 = 8;
      }

      else
      {
        v28 = v6;
      }

      v29 = a5 + 4 * v6 - 4;
      v30 = a4 + 4 * a3 * (v6 - 1) - 4;
      v31 = 4 * v6 - 4 * v28 + a5 + 8;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v27) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v33 = v30;
            v34 = v29;
            v35 = v28 + 1;
            do
            {
              v11 = *v33;
              *v34-- = *v33;
              --v35;
              v33 -= a3;
            }

            while (v35 > 1);
          }
        }

        else
        {
          v36 = v31;
          v37 = v13;
          v38 = xmmword_27750D320;
          v39 = xmmword_27750D310;
          do
          {
            v40 = vmovn_s64(vcgeq_u64(v14, v38));
            if (vuzp1_s16(v40, *v14.i8).u8[0])
            {
              *(v36 - 2) = v11;
            }

            if (vuzp1_s16(v40, *&v14).i8[2])
            {
              *(v36 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v39))).i32[1])
            {
              *v36 = v11;
              v36[1] = v11;
            }

            v39 = vaddq_s64(v39, v32);
            v38 = vaddq_s64(v38, v32);
            v36 += 4;
            v37 -= 4;
          }

          while (v37);
        }

        ++v27;
        v29 -= 4 * v28;
        v30 -= 4 * a3 * v28;
        v31 -= 4 * v28;
      }

      while (v27 != v7);
    }

    v41 = (v6 >> 2);
    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = a5 + 4 * v43;
      v45 = a4 - 4 * a3;
      v46 = v44;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v11 = *(v45 + i);
            *(v46 + i) = v11;
          }
        }

        else
        {
          *(v44 + 16 * v42) = vdupq_n_s32(v11);
        }

        ++v42;
        v46 += 16;
        v45 += 16;
      }

      while (v42 != v41);
      v48 = 0;
      v49 = a5 + 4 * v43 + 4 * v6;
      v50 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v48) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v11 = *(v50 + j);
            *(v49 + j) = v11;
          }
        }

        else
        {
          *(v44 + 4 * (v6 + 4 * v48)) = vdupq_n_s32(v11);
        }

        ++v48;
        v49 += 16;
        v50 += 16;
      }

      while (v48 != v41);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D820, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_277404164(int a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 4 * a3 * v10 - 4);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v14 = (a4 + 4 * (v10 - a3));
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 4 * a3);
      }

      if ((a2 & 0x100) != 0)
      {
        v14 = (a4 + 4 * ~a3);
      }

      if ((a2 & 0xF0) != 0)
      {
        v14 = (a4 + 4 * (v10 - 1) * a3 - 4);
      }

      v15 = *v14;
      v16 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v10 - 1);
      v18 = &a5[v10 + 2];
      v19 = xmmword_27750D310;
      v20 = xmmword_27750D320;
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v20));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v18 - 2) = v15;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v18 - 1) = v15;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
        {
          *v18 = v15;
          v18[1] = v15;
        }

        v19 = vaddq_s64(v19, v21);
        v20 = vaddq_s64(v20, v21);
        v18 += 4;
        v16 -= 4;
      }

      while (v16);
    }

    if ((a2 & 0xF0) != 0)
    {
      if (a1 != 31)
      {
        v23 = (a4 - 4);
        if (v10 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v10;
        }

        v25 = a5;
        do
        {
          *v25++ = *v23;
          v23 += a3;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      v26 = a5[v10];
      v27 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = vdupq_n_s64(v10 - 1);
      v29 = xmmword_27750D310;
      v30 = xmmword_27750D320;
      v31 = a5 + 2;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v33, *v28.i8).u8[0])
        {
          *(v31 - 2) = v26;
        }

        if (vuzp1_s16(v33, *&v28).i8[2])
        {
          *(v31 - 1) = v26;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
        {
          *v31 = v26;
          v31[1] = v26;
        }

        v29 = vaddq_s64(v29, v32);
        v30 = vaddq_s64(v30, v32);
        v31 += 4;
        v27 -= 4;
      }

      while (v27);
    }

    v34 = (a4 + 4 * ~a3);
    if ((a2 & 0x100) == 0)
    {
      v34 = a5;
    }

    v35 = *v34;
    *(a5 - 1) = v35;
    v36 = 2 << a1;
    if ((a2 & 0x1E00) != 0)
    {
      memcpy(&a5[v36], (a4 - 4 * a3), 4 * v10);
    }

    else
    {
      v37 = v36;
      v38 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v39 = vdupq_n_s64(v10 - 1);
      v40 = &a5[v37 + 2];
      v41 = xmmword_27750D310;
      v42 = xmmword_27750D320;
      v43 = vdupq_n_s64(4uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v39, v42));
        if (vuzp1_s16(v44, *v39.i8).u8[0])
        {
          *(v40 - 2) = v35;
        }

        if (vuzp1_s16(v44, *&v39).i8[2])
        {
          *(v40 - 1) = v35;
        }

        if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v41))).i32[1])
        {
          *v40 = v35;
          v40[1] = v35;
        }

        v41 = vaddq_s64(v41, v43);
        v42 = vaddq_s64(v42, v43);
        v40 += 4;
        v38 -= 4;
      }

      while (v38);
    }

    v45 = &a5[3 << v6];
    if ((a2 & 0x1E000) != 0)
    {

      memcpy(v45, (a4 + 4 * v10 - 4 * a3), 4 * v10);
    }

    else
    {
      v46 = *(v45 - 1);
      v47 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = vdupq_n_s64(v10 - 1);
      v49 = &a5[(3 << v6) + 2];
      v50 = xmmword_27750D310;
      v51 = xmmword_27750D320;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v51));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v49 - 2) = v46;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v49 - 1) = v46;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v50))).i32[1])
        {
          *v49 = v46;
          v49[1] = v46;
        }

        v50 = vaddq_s64(v50, v52);
        v51 = vaddq_s64(v51, v52);
        v49 += 4;
        v47 -= 4;
      }

      while (v47);
    }
  }

  else
  {

    memset_pattern16(a5 - 1, &unk_27750D820, (16 * ((4 << a1) >> 2)) | 4);
  }
}

uint64_t sub_2774045B4(uint64_t result)
{
  *result = sub_27740567C;
  *(result + 16) = sub_277404EF4;
  v1 = *(result + 537);
  *(result + 296) = sub_277404E84;
  *(result + 304) = sub_277404E14;
  *(result + 312) = sub_277404DA4;
  *(result + 200) = sub_277404D84;
  *(result + 208) = sub_277404D64;
  *(result + 216) = sub_277404D44;
  *(result + 224) = sub_277404D1C;
  *(result + 232) = sub_277404CE4;
  *(result + 120) = sub_277404CBC;
  *(result + 128) = sub_277404C94;
  *(result + 136) = sub_277404C68;
  *(result + 144) = sub_277404C38;
  *(result + 152) = sub_277404C00;
  *(result + 336) = sub_2774049F0;
  *(result + 344) = sub_277404980;
  *(result + 352) = sub_277404904;
  *(result + 520) = sub_277404864;
  *(result + 32) = sub_27745A218;
  *(result + 40) = sub_27745A154;
  v2 = v1 == 0;
  v3 = sub_277459FB4;
  if (!v2)
  {
    v3 = sub_27745C3CC;
  }

  *(result + 48) = v3;
  *(result + 320) = sub_277459F3C;
  *(result + 328) = sub_277459E60;
  *(result + 280) = sub_277459DC8;
  *(result + 288) = sub_277459D2C;
  *(result + 160) = sub_27745C360;
  *(result + 168) = sub_27745C28C;
  *(result + 176) = sub_27745C1DC;
  *(result + 184) = sub_277459B10;
  *(result + 192) = sub_277459AD4;
  *(result + 80) = sub_27745C180;
  *(result + 88) = sub_27745C0E8;
  *(result + 96) = sub_27745C044;
  *(result + 104) = sub_27745990C;
  *(result + 112) = sub_2774598D4;
  *(result + 240) = sub_27745BE88;
  *(result + 248) = sub_27745BC00;
  *(result + 256) = sub_27745B898;
  *(result + 264) = sub_27745B450;
  *(result + 272) = sub_27745AFCC;
  return result;
}

uint64_t sub_277404864(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = 12 - a3;
    v11 = 2 * a2;
    v12 = 2 * a4;
    do
    {
      v13 = 0;
      do
      {
        result = sub_2773FB848(v8, a3);
        *(a5 + v13) = result << v10;
        v13 += 2;
      }

      while (v11 != v13);
      ++v9;
      a5 += v12;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_277404904(uint64_t a1, uint16x8_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = xmmword_27750D380;
  v5 = a2 + 16;
  v6 = 0uLL;
  v7 = 64;
  do
  {
    v8 = v5[-16];
    v6 = vaddw_high_u16(vaddw_high_u16(v6, *v5), v8);
    v4 = vaddw_u16(vaddw_u16(v4, *v5->i8), *v8.i8);
    ++v5;
    v7 -= 8;
  }

  while (v7);
  v9 = 0;
  v10 = vdupq_n_s16(vaddvq_s32(vaddq_s32(v4, v6)) >> 7);
  do
  {
    for (i = 0; i != 128; i += 16)
    {
      *(a4 + i) = v10;
    }

    ++v9;
    a4 += 2 * a3;
  }

  while (v9 != 64);
}

void sub_277404980(uint64_t a1, uint16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = xmmword_27750D360;
  v5 = a2 + 8;
  v6 = 0uLL;
  v7 = 32;
  do
  {
    v8 = v5[-8];
    v6 = vaddw_high_u16(vaddw_high_u16(v6, *v5), v8);
    v4 = vaddw_u16(vaddw_u16(v4, *v5->i8), *v8.i8);
    ++v5;
    v7 -= 8;
  }

  while (v7);
  v9 = vdupq_n_s16(vaddvq_s32(vaddq_s32(v4, v6)) >> 6);
  v10 = a4 + 2;
  v11 = 32;
  do
  {
    v10[-2] = v9;
    v10[-1] = v9;
    *v10 = v9;
    v10[1] = v9;
    v10 = (v10 + 2 * a3);
    --v11;
  }

  while (v11);
}

void sub_2774049F0(uint64_t a1, uint16x4_t *a2, uint64_t a3, _WORD *a4)
{
  v4 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(a2[8], *a2), a2[10]), a2[2]), vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(*a2[8].i8, *a2->i8), *a2[10].i8), *a2[2].i8)), xmmword_27750D370)) >> 5;
  *a4 = (2 * v4 + *a2->i8 + *a2[8].i8 + 2) >> 2;
  v5 = 3 * v4 + 2;
  v6 = &a4[a3 + 4];
  v7 = 1;
  v8 = vdupq_n_s64(0xFuLL);
  v9 = vdupq_n_s64(8uLL);
  do
  {
    v10 = a2 + v7;
    a4[v7] = (v5 + v10[32]) >> 2;
    a4[v7 * a3] = (v5 + *v10) >> 2;
    v11 = v6;
    v12 = 16;
    v13 = xmmword_27750D320;
    v14 = xmmword_27750D310;
    v15 = xmmword_27750D300;
    v16 = xmmword_27750D2F0;
    do
    {
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v8, v13)), 6), 6).u8[0])
      {
        *(v11 - 3) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v13)), 6), 6).i8[1])
      {
        *(v11 - 2) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v14))), 6).i8[2])
      {
        *(v11 - 1) = v4;
        *v11 = v4;
      }

      if (vuzp1_s8(6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v15)), 6)).i32[1])
      {
        v11[1] = v4;
      }

      if (vuzp1_s8(6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v15)), 6)).i8[5])
      {
        v11[2] = v4;
      }

      if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v16)))).i8[6])
      {
        v11[3] = v4;
        v11[4] = v4;
      }

      v15 = vaddq_s64(v15, v9);
      v14 = vaddq_s64(v14, v9);
      v13 = vaddq_s64(v13, v9);
      v11 += 8;
      v16 = vaddq_s64(v16, v9);
      v12 -= 8;
    }

    while (v12);
    ++v7;
    v6 += 2 * a3;
  }

  while (v7 != 16);
}

void sub_277404C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 64; ++i)
  {
    v5 = 0;
    v6 = (a2 + 2 * i);
    v7 = vld1q_dup_s16(v6);
    do
    {
      *(a4 + v5) = v7;
      v5 += 16;
    }

    while (v5 != 128);
    a4 += 2 * a3;
  }
}

int16x8_t sub_277404C38(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

int16x8_t sub_277404C68(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 1;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-1] = result;
    *v5 = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 32);
  return result;
}

int16x8_t sub_277404C94(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  for (i = 0; i != 16; i += 2)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

int16x4_t sub_277404CBC(uint64_t a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  for (i = 0; i != 8; i += 2)
  {
    v5 = (a2 + i);
    result = vld1_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

__n128 sub_277404CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 64;
  do
  {
    v5 = *(a2 + 256);
    v6 = *(a2 + 272);
    v7 = *(a2 + 304);
    *(a4 + 32) = *(a2 + 288);
    *(a4 + 48) = v7;
    *a4 = v5;
    *(a4 + 16) = v6;
    result = *(a2 + 320);
    v9 = *(a2 + 336);
    v10 = *(a2 + 368);
    *(a4 + 96) = *(a2 + 352);
    *(a4 + 112) = v10;
    *(a4 + 64) = result;
    *(a4 + 80) = v9;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277404D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 32;
  do
  {
    result = *(a2 + 128);
    v6 = *(a2 + 144);
    v7 = *(a2 + 176);
    *(a4 + 32) = *(a2 + 160);
    *(a4 + 48) = v7;
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277404D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 16;
  do
  {
    result = *(a2 + 64);
    v6 = *(a2 + 80);
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277404D64(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = 8;
  do
  {
    result = a2[2];
    *a4 = result;
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
  return result;
}

void sub_277404D84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  do
  {
    *a4 = *(a2 + 16);
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
}

uint64_t sub_277404DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = 0;
    v6 = v4 + 1;
    v7 = 63;
    do
    {
      result = *(a2 + 256 + 2 * v5);
      *(a4 + 2 * v5) = ((v5 + 1) * *(a2 + 384) + v7 * *(a2 + 2 * v4) + (63 - v4) * result + v6 * *(a2 + 128) + 64) >> 7;
      --v7;
      ++v5;
    }

    while (v5 != 64);
    a4 += 2 * a3;
    ++v4;
  }

  while (v6 != 64);
  return result;
}

uint64_t sub_277404E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = 0;
    v6 = v4 + 1;
    v7 = 31;
    do
    {
      result = *(a2 + 128 + 2 * v5);
      *(a4 + 2 * v5) = ((v5 + 1) * *(a2 + 192) + v7 * *(a2 + 2 * v4) + (31 - v4) * result + v6 * *(a2 + 64) + 32) >> 6;
      --v7;
      ++v5;
    }

    while (v5 != 32);
    a4 += 2 * a3;
    ++v4;
  }

  while (v6 != 32);
  return result;
}

uint64_t sub_277404E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = 0;
    v6 = v4 + 1;
    v7 = 15;
    do
    {
      result = *(a2 + 64 + 2 * v5);
      *(a4 + 2 * v5) = ((v5 + 1) * *(a2 + 96) + v7 * *(a2 + 2 * v4) + (15 - v4) * result + v6 * *(a2 + 32) + 16) >> 5;
      --v7;
      ++v5;
    }

    while (v5 != 16);
    a4 += 2 * a3;
    ++v4;
  }

  while (v6 != 16);
  return result;
}

void sub_277404EF4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 2 * v13;
      v16 = a5 + 2 * v13 - 2;
      v17 = a4 + 2 * a3 * (v13 - 1) - 2;
      v18 = v15 - 2 * v8 + a5 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          v27 = xmmword_27750D300;
          v28 = xmmword_27750D2F0;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s8(vuzp1_s16(v29, *v14.i8), *v14.i8).u8[0])
            {
              *(v23 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v29, *&v14), *&v14).i8[1])
            {
              *(v23 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))), *&v14).i8[2])
            {
              *(v23 - 2) = v11;
              *(v23 - 1) = v11;
            }

            v30 = vmovn_s64(vcgeq_u64(v14, v27));
            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i32[1])
            {
              *v23 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i8[5])
            {
              v23[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v28)))).i8[6])
            {
              v23[2] = v11;
              v23[3] = v11;
            }

            v27 = vaddq_s64(v27, v19);
            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 8;
            v28 = vaddq_s64(v28, v19);
            v24 -= 8;
          }

          while (v24);
        }

        ++v12;
        v16 -= 2 * v8;
        v17 -= 2 * a3 * v8;
        v18 -= 2 * v8;
      }

      while (v12 != v7);
      v31 = 0;
      if (v6 >= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v6;
      }

      v33 = a5 + 2 * v6 - 2;
      v34 = a4 + 2 * a3 * (v6 - 1) - 2;
      v35 = 2 * v6 - 2 * v32 + a5 + 8;
      do
      {
        if (((a2 >> v31) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v36 = v34;
            v37 = v33;
            v38 = v32 + 1;
            do
            {
              v11 = *v36;
              *v37-- = *v36;
              --v38;
              v36 -= a3;
            }

            while (v38 > 1);
          }
        }

        else
        {
          v39 = v35;
          v40 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = xmmword_27750D320;
          v42 = xmmword_27750D310;
          v43 = xmmword_27750D300;
          v44 = xmmword_27750D2F0;
          do
          {
            v45 = vmovn_s64(vcgeq_u64(v14, v41));
            if (vuzp1_s8(vuzp1_s16(v45, *v14.i8), *v14.i8).u8[0])
            {
              *(v39 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v45, *&v14), *&v14).i8[1])
            {
              *(v39 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v42))), *&v14).i8[2])
            {
              *(v39 - 2) = v11;
              *(v39 - 1) = v11;
            }

            v46 = vmovn_s64(vcgeq_u64(v14, v43));
            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i32[1])
            {
              *v39 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i8[5])
            {
              v39[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v44)))).i8[6])
            {
              v39[2] = v11;
              v39[3] = v11;
            }

            v47 = vdupq_n_s64(8uLL);
            v43 = vaddq_s64(v43, v47);
            v42 = vaddq_s64(v42, v47);
            v41 = vaddq_s64(v41, v47);
            v44 = vaddq_s64(v44, v47);
            v39 += 8;
            v40 -= 8;
          }

          while (v40);
        }

        ++v31;
        v33 -= 2 * v32;
        v34 -= 2 * a3 * v32;
        v35 -= 2 * v32;
      }

      while (v31 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v7 >= 1)
    {
      v48 = 0;
      v49 = 2 << a1;
      v50 = v8;
      if (v8 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v8;
      }

      v52 = (a5 + 2 * v49);
      v53 = vdupq_n_s64(v8 - 1);
      v54 = 2 * v8;
      v55 = vdupq_n_s64(8uLL);
      v56 = (a4 - 2 * a3);
      v57 = v52 + 4;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v58 = v56;
            v59 = v52;
            v60 = v51;
            do
            {
              v61 = *v58++;
              v11 = v61;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v62 = v57;
          v63 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = xmmword_27750D320;
          v65 = xmmword_27750D310;
          v66 = xmmword_27750D300;
          v67 = xmmword_27750D2F0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v53, v64));
            if (vuzp1_s8(vuzp1_s16(v68, *v53.i8), *v53.i8).u8[0])
            {
              *(v62 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v68, *&v53), *&v53).i8[1])
            {
              *(v62 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v65))), *&v53).i8[2])
            {
              *(v62 - 2) = v11;
              *(v62 - 1) = v11;
            }

            v69 = vmovn_s64(vcgeq_u64(v53, v66));
            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i32[1])
            {
              *v62 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i8[5])
            {
              v62[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v67)))).i8[6])
            {
              v62[2] = v11;
              v62[3] = v11;
            }

            v66 = vaddq_s64(v66, v55);
            v65 = vaddq_s64(v65, v55);
            v64 = vaddq_s64(v64, v55);
            v62 += 8;
            v67 = vaddq_s64(v67, v55);
            v63 -= 8;
          }

          while (v63);
        }

        ++v48;
        v52 = (v52 + v54);
        v56 = (v56 + v54);
        v57 = (v57 + v54);
      }

      while (v48 != v7);
      v70 = 0;
      v71 = 2 * v6;
      v72 = (a5 + 2 * v49 + v71);
      v73 = 2 * v50;
      v74 = (a4 + v71 - 2 * a3);
      v75 = v72 + 4;
      v76 = vdupq_n_s64(8uLL);
      do
      {
        if (((a2 >> v70) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v77 = v74;
            v78 = v72;
            v79 = v51;
            do
            {
              v80 = *v77++;
              v11 = v80;
              *v78++ = v80;
              --v79;
            }

            while (v79);
          }
        }

        else
        {
          v81 = v75;
          v82 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = xmmword_27750D320;
          v84 = xmmword_27750D310;
          v85 = xmmword_27750D300;
          v86 = xmmword_27750D2F0;
          do
          {
            v87 = vmovn_s64(vcgeq_u64(v53, v83));
            if (vuzp1_s8(vuzp1_s16(v87, *v53.i8), *v53.i8).u8[0])
            {
              *(v81 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v87, *&v53), *&v53).i8[1])
            {
              *(v81 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v84))), *&v53).i8[2])
            {
              *(v81 - 2) = v11;
              *(v81 - 1) = v11;
            }

            v88 = vmovn_s64(vcgeq_u64(v53, v85));
            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i32[1])
            {
              *v81 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i8[5])
            {
              v81[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v86)))).i8[6])
            {
              v81[2] = v11;
              v81[3] = v11;
            }

            v85 = vaddq_s64(v85, v76);
            v84 = vaddq_s64(v84, v76);
            v83 = vaddq_s64(v83, v76);
            v81 += 8;
            v86 = vaddq_s64(v86, v76);
            v82 -= 8;
          }

          while (v82);
        }

        ++v70;
        v72 = (v72 + v73);
        v74 = (v74 + v73);
        v75 = (v75 + v73);
      }

      while (v70 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 2), &unk_27750D820, (8 * ((4 << a1) >> 2)) | 2);
  }
}

void sub_27740567C(int a1, int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 2 * a3 * v10 - 2);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

LABEL_32:
      if ((a2 & 0xF0) != 0)
      {
        if (a1 != 31)
        {
          v27 = (a4 - 2);
          if (v10 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v10;
          }

          v29 = a5;
          do
          {
            *v29++ = *v27;
            v27 += a3;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v30 = a5[v10];
        v31 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = vdupq_n_s64(v10 - 1);
        v33 = xmmword_27750D2F0;
        v34 = xmmword_27750D300;
        v35 = xmmword_27750D310;
        v36 = xmmword_27750D320;
        v37 = a5 + 4;
        v38 = vdupq_n_s64(8uLL);
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v32, v36));
          if (vuzp1_s8(vuzp1_s16(v39, *v32.i8), *v32.i8).u8[0])
          {
            *(v37 - 4) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v32), *&v32).i8[1])
          {
            *(v37 - 3) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))), *&v32).i8[2])
          {
            *(v37 - 2) = v30;
            *(v37 - 1) = v30;
          }

          v40 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i32[1])
          {
            *v37 = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i8[5])
          {
            v37[1] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33)))).i8[6])
          {
            v37[2] = v30;
            v37[3] = v30;
          }

          v34 = vaddq_s64(v34, v38);
          v35 = vaddq_s64(v35, v38);
          v36 = vaddq_s64(v36, v38);
          v37 += 8;
          v33 = vaddq_s64(v33, v38);
          v31 -= 8;
        }

        while (v31);
      }

      v41 = (a4 + 2 * ~a3);
      if ((a2 & 0x100) == 0)
      {
        v41 = a5;
      }

      v42 = *v41;
      *(a5 - 1) = v42;
      v43 = 2 << a1;
      if ((a2 & 0x1E00) != 0)
      {
        memcpy(&a5[v43], (a4 - 2 * a3), 2 * v10);
      }

      else
      {
        v44 = v43;
        v45 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = vdupq_n_s64(v10 - 1);
        v47 = &a5[v44 + 4];
        v48 = xmmword_27750D2F0;
        v49 = xmmword_27750D300;
        v50 = xmmword_27750D310;
        v51 = xmmword_27750D320;
        v52 = vdupq_n_s64(8uLL);
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v46, v51));
          if (vuzp1_s8(vuzp1_s16(v53, *v46.i8), *v46.i8).u8[0])
          {
            *(v47 - 4) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(v53, *&v46), *&v46).i8[1])
          {
            *(v47 - 3) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v50))), *&v46).i8[2])
          {
            *(v47 - 2) = v42;
            *(v47 - 1) = v42;
          }

          v54 = vmovn_s64(vcgeq_u64(v46, v49));
          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i32[1])
          {
            *v47 = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i8[5])
          {
            v47[1] = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v48)))).i8[6])
          {
            v47[2] = v42;
            v47[3] = v42;
          }

          v49 = vaddq_s64(v49, v52);
          v50 = vaddq_s64(v50, v52);
          v51 = vaddq_s64(v51, v52);
          v47 += 8;
          v48 = vaddq_s64(v48, v52);
          v45 -= 8;
        }

        while (v45);
      }

      v55 = &a5[3 << v6];
      if ((a2 & 0x1E000) != 0)
      {

        memcpy(v55, (a4 + 2 * v10 - 2 * a3), 2 * v10);
      }

      else
      {
        v56 = *(v55 - 1);
        v57 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_n_s64(v10 - 1);
        v59 = &a5[(3 << v6) + 4];
        v60 = xmmword_27750D2F0;
        v61 = xmmword_27750D300;
        v62 = xmmword_27750D310;
        v63 = xmmword_27750D320;
        v64 = vdupq_n_s64(8uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v58, v63));
          if (vuzp1_s8(vuzp1_s16(v65, *v58.i8), *v58.i8).u8[0])
          {
            *(v59 - 4) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(v65, *&v58), *&v58).i8[1])
          {
            *(v59 - 3) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v62))), *&v58).i8[2])
          {
            *(v59 - 2) = v56;
            *(v59 - 1) = v56;
          }

          v66 = vmovn_s64(vcgeq_u64(v58, v61));
          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i32[1])
          {
            *v59 = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i8[5])
          {
            v59[1] = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v60)))).i8[6])
          {
            v59[2] = v56;
            v59[3] = v56;
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 = vaddq_s64(v63, v64);
          v59 += 8;
          v60 = vaddq_s64(v60, v64);
          v57 -= 8;
        }

        while (v57);
      }

      return;
    }

    if ((a2 & 0xF0) != 0)
    {
      v14 = (a4 + 2 * (v10 - 1) * a3 - 2);
      goto LABEL_18;
    }

    if ((a2 & 0x100) != 0)
    {
      v15 = ~a3;
    }

    else
    {
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 2 * a3);
        goto LABEL_18;
      }

      v15 = v10 - a3;
    }

    v14 = (a4 + 2 * v15);
LABEL_18:
    v16 = *v14;
    v17 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = vdupq_n_s64(v10 - 1);
    v19 = &a5[v10 + 4];
    v20 = xmmword_27750D2F0;
    v21 = xmmword_27750D300;
    v22 = xmmword_27750D310;
    v23 = xmmword_27750D320;
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v23));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v19 - 4) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v19 - 3) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v22))), *&v18).i8[2])
      {
        *(v19 - 2) = v16;
        *(v19 - 1) = v16;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v19 = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v19[1] = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20)))).i8[6])
      {
        v19[2] = v16;
        v19[3] = v16;
      }

      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v19 += 8;
      v20 = vaddq_s64(v20, v24);
      v17 -= 8;
    }

    while (v17);
    goto LABEL_32;
  }

  memset_pattern16(a5 - 1, &unk_27750D820, (8 * ((4 << a1) >> 2)) | 2);
}

uint64_t sub_277405CF4(uint64_t result)
{
  *(result + 8) = sub_277406BD0;
  v1 = *(result + 538);
  v2 = sub_27740652C;
  if (v1 == 2)
  {
    v2 = sub_2774067B4;
  }

  if (v1 == 3)
  {
    v2 = sub_277405FD4;
  }

  *(result + 24) = v2;
  *(result + 56) = sub_2774034C0;
  *(result + 64) = sub_277403418;
  *(result + 72) = sub_277403370;
  *(result + 384) = sub_277403228;
  *(result + 480) = sub_2774030C0;
  *(result + 528) = sub_277405EC8;
  *(result + 456) = sub_27745D6E0;
  *(result + 464) = sub_27745D694;
  *(result + 360) = sub_27745D5E4;
  *(result + 368) = sub_27745D544;
  *(result + 392) = sub_27745D51C;
  *(result + 400) = sub_27745D4EC;
  *(result + 408) = sub_27745D4C0;
  *(result + 416) = sub_27745D484;
  *(result + 424) = sub_27745D444;
  *(result + 432) = sub_27745D404;
  *(result + 440) = sub_27745D3D4;
  *(result + 448) = sub_27745D39C;
  *(result + 488) = sub_27745D190;
  *(result + 496) = sub_27745CE88;
  *(result + 504) = sub_27745CB38;
  *(result + 512) = sub_27745C7D4;
  *(result + 472) = sub_27745C778;
  *(result + 376) = sub_27745C678;
  return result;
}

uint64_t sub_277405EC8(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v6 = a6;
    v9 = result;
    v10 = 0;
    v11 = a6 + 2;
    v18 = a2;
    v12 = 11 - a4;
    v13 = 4 * a2;
    v14 = 2 * a5;
    do
    {
      if (a2 >= 1)
      {
        v15 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v6 + v15) = result << v12;
          v15 += 4;
        }

        while (v13 != v15);
      }

      ++v10;
      v6 += v14;
    }

    while (v10 != a3);
    v16 = 0;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v11 + v17) = result << v12;
          v17 += 4;
        }

        while (4 * v18 != v17);
      }

      ++v16;
      v11 += v14;
    }

    while (v16 != a3);
  }

  return result;
}

void sub_277405FD4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 4 * v13;
      v16 = a5 + 4 * v13 - 4;
      v17 = a4 + 4 * a3 * (v13 - 1) - 4;
      v18 = v15 - 4 * v8 + a5 + 8;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s16(v27, *v14.i8).u8[0])
            {
              *(v23 - 2) = v11;
            }

            if (vuzp1_s16(v27, *&v14).i8[2])
            {
              *(v23 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))).i32[1])
            {
              *v23 = v11;
              v23[1] = v11;
            }

            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
        }

        ++v12;
        v16 -= 4 * v8;
        v17 -= 4 * a3 * v8;
        v18 -= 4 * v8;
      }

      while (v12 != v7);
      v28 = 0;
      if (v6 >= 8)
      {
        v29 = 8;
      }

      else
      {
        v29 = v6;
      }

      v30 = a5 + 4 * v6 - 4;
      v31 = a4 + 4 * a3 * (v6 - 1) - 4;
      v32 = vdupq_n_s64(4uLL);
      v33 = 4 * v6 - 4 * v29 + a5 + 8;
      do
      {
        if (((a2 >> v28) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v34 = v31;
            v35 = v30;
            v36 = v29 + 1;
            do
            {
              v11 = *v34;
              *v35-- = *v34;
              --v36;
              v34 -= a3;
            }

            while (v36 > 1);
          }
        }

        else
        {
          v37 = v33;
          v38 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v39 = xmmword_27750D320;
          v40 = xmmword_27750D310;
          do
          {
            v41 = vmovn_s64(vcgeq_u64(v14, v39));
            if (vuzp1_s16(v41, *v14.i8).u8[0])
            {
              *(v37 - 2) = v11;
            }

            if (vuzp1_s16(v41, *&v14).i8[2])
            {
              *(v37 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v40))).i32[1])
            {
              *v37 = v11;
              v37[1] = v11;
            }

            v40 = vaddq_s64(v40, v32);
            v39 = vaddq_s64(v39, v32);
            v37 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        ++v28;
        v30 -= 4 * v29;
        v31 -= 4 * a3 * v29;
        v33 -= 4 * v29;
      }

      while (v28 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v7 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = v8;
      if (v8 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v8;
      }

      v46 = v43;
      v47 = (a5 + 4 * v43);
      v48 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = vdupq_n_s64(v8 - 1);
      v50 = 4 * v8;
      v51 = (a4 - 4 * a3);
      v52 = vdupq_n_s64(4uLL);
      v53 = v47 + 2;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v54 = v51;
            v55 = v47;
            v56 = v45;
            do
            {
              v57 = *v54++;
              v11 = v57;
              *v55++ = v57;
              --v56;
            }

            while (v56);
          }
        }

        else
        {
          v58 = v53;
          v59 = (v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v60 = xmmword_27750D320;
          v61 = xmmword_27750D310;
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v49, v60));
            if (vuzp1_s16(v62, *v49.i8).u8[0])
            {
              *(v58 - 2) = v11;
            }

            if (vuzp1_s16(v62, *&v49).i8[2])
            {
              *(v58 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v61))).i32[1])
            {
              *v58 = v11;
              v58[1] = v11;
            }

            v61 = vaddq_s64(v61, v52);
            v60 = vaddq_s64(v60, v52);
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
        }

        ++v42;
        v47 = (v47 + v50);
        v51 = (v51 + v50);
        v53 = (v53 + v50);
      }

      while (v42 != v7);
      v63 = 0;
      v64 = 4 * v46;
      v65 = 4 * v6;
      v66 = (a5 + v64 + v65);
      v67 = 4 * v44;
      v68 = (a4 + v65 - 4 * a3);
      v69 = v66 + 2;
      v70 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v63) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v71 = v68;
            v72 = v66;
            v73 = v45;
            do
            {
              v74 = *v71++;
              v11 = v74;
              *v72++ = v74;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          v75 = v69;
          v76 = v48;
          v77 = xmmword_27750D320;
          v78 = xmmword_27750D310;
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v49, v77));
            if (vuzp1_s16(v79, *v49.i8).u8[0])
            {
              *(v75 - 2) = v11;
            }

            if (vuzp1_s16(v79, *&v49).i8[2])
            {
              *(v75 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v78))).i32[1])
            {
              *v75 = v11;
              v75[1] = v11;
            }

            v78 = vaddq_s64(v78, v70);
            v77 = vaddq_s64(v77, v70);
            v75 += 4;
            v76 -= 4;
          }

          while (v76);
        }

        ++v63;
        v66 = (v66 + v67);
        v68 = (v68 + v67);
        v69 = (v69 + v67);
      }

      while (v63 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D830, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740652C(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = (1 << a1);
    v6 = (v5 >> 2);
    v7 = __clz(__rbit32(a2));
    if (v7 < 9)
    {
      v8 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 + 18 + v7]) * a3 - 4);
    }

    else
    {
      v8 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v7] - a3));
    }

    v9 = *v8;
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = 2 << a1;
      v12 = a5 + 4 * v11;
      v13 = a4 + 4 * a3 * (v11 - 1) - 4;
      do
      {
        v14 = v10 + 1;
        if ((a2 >> v10))
        {
          v15 = -4;
          v16 = v13;
          do
          {
            v9 = *v16;
            *(v12 + v15) = *v16;
            v15 -= 4;
            v16 -= a3;
          }

          while (v15 != -20);
        }

        else
        {
          *(a5 + 4 * (v11 - 4 * v14)) = vdupq_n_s32(v9);
        }

        v12 -= 16;
        v13 -= 16 * a3;
        v10 = v14;
      }

      while (v14 != v6);
      v17 = 0;
      v18 = a5 + 4 * v5;
      v19 = a4 + 4 * a3 * (v5 - 1) - 4;
      do
      {
        v20 = v17 + 1;
        if (((a2 >> v17) & 0x10) != 0)
        {
          v21 = -4;
          v22 = v19;
          do
          {
            v9 = *v22;
            *(v18 + v21) = *v22;
            v21 -= 4;
            v22 -= a3;
          }

          while (v21 != -20);
        }

        else
        {
          *(a5 + 4 * (v5 - 4 * v20)) = vdupq_n_s32(v9);
        }

        v18 -= 16;
        v19 -= 16 * a3;
        v17 = v20;
      }

      while (v20 != v6);
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v9;
    if (v6 >= 1)
    {
      v23 = 0;
      v24 = 2 << a1;
      v25 = a5 + 4 * v24;
      v26 = a4 - 4 * a3;
      v27 = v25;
      do
      {
        if (((a2 >> v23) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v9 = *(v26 + i);
            *(v27 + i) = v9;
          }
        }

        else
        {
          *(v25 + 16 * v23) = vdupq_n_s32(v9);
        }

        ++v23;
        v27 += 16;
        v26 += 16;
      }

      while (v23 != v6);
      v29 = 0;
      v30 = a5 + 4 * v24 + 4 * v5;
      v31 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v29) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v9 = *(v31 + j);
            *(v30 + j) = v9;
          }
        }

        else
        {
          *(v25 + 4 * (v5 + 4 * v29)) = vdupq_n_s32(v9);
        }

        ++v29;
        v30 += 16;
        v31 += 16;
      }

      while (v29 != v6);
    }
  }

  else
  {
    memset_pattern16((a5 - 4), &unk_27750D830, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_2774067B4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = (1 << a1);
    v7 = ((v6 + 4) >> 3);
    if (v6 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = a5 + 4 * (2 << a1) - 4;
      v16 = a4 + 4 * a3 * ((2 << a1) - 1) - 4;
      v17 = 4 * (2 << a1) - 4 * v8 + a5 + 8;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v19 = v16;
            v20 = v15;
            v21 = v8 + 1;
            do
            {
              v11 = *v19;
              *v20-- = *v19;
              --v21;
              v19 -= a3;
            }

            while (v21 > 1);
          }
        }

        else
        {
          v22 = v17;
          v23 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v24 = xmmword_27750D320;
          v25 = xmmword_27750D310;
          do
          {
            v26 = vmovn_s64(vcgeq_u64(v14, v24));
            if (vuzp1_s16(v26, *v14.i8).u8[0])
            {
              *(v22 - 2) = v11;
            }

            if (vuzp1_s16(v26, *&v14).i8[2])
            {
              *(v22 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v25))).i32[1])
            {
              *v22 = v11;
              v22[1] = v11;
            }

            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 4;
            v23 -= 4;
          }

          while (v23);
        }

        ++v12;
        v15 -= 4 * v8;
        v16 -= 4 * a3 * v8;
        v17 -= 4 * v8;
      }

      while (v12 != v7);
      v27 = 0;
      if (v6 >= 8)
      {
        v28 = 8;
      }

      else
      {
        v28 = v6;
      }

      v29 = a5 + 4 * v6 - 4;
      v30 = a4 + 4 * a3 * (v6 - 1) - 4;
      v31 = 4 * v6 - 4 * v28 + a5 + 8;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v27) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v33 = v30;
            v34 = v29;
            v35 = v28 + 1;
            do
            {
              v11 = *v33;
              *v34-- = *v33;
              --v35;
              v33 -= a3;
            }

            while (v35 > 1);
          }
        }

        else
        {
          v36 = v31;
          v37 = v13;
          v38 = xmmword_27750D320;
          v39 = xmmword_27750D310;
          do
          {
            v40 = vmovn_s64(vcgeq_u64(v14, v38));
            if (vuzp1_s16(v40, *v14.i8).u8[0])
            {
              *(v36 - 2) = v11;
            }

            if (vuzp1_s16(v40, *&v14).i8[2])
            {
              *(v36 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v39))).i32[1])
            {
              *v36 = v11;
              v36[1] = v11;
            }

            v39 = vaddq_s64(v39, v32);
            v38 = vaddq_s64(v38, v32);
            v36 += 4;
            v37 -= 4;
          }

          while (v37);
        }

        ++v27;
        v29 -= 4 * v28;
        v30 -= 4 * a3 * v28;
        v31 -= 4 * v28;
      }

      while (v27 != v7);
    }

    v41 = (v6 >> 2);
    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = a5 + 4 * v43;
      v45 = a4 - 4 * a3;
      v46 = v44;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v11 = *(v45 + i);
            *(v46 + i) = v11;
          }
        }

        else
        {
          *(v44 + 16 * v42) = vdupq_n_s32(v11);
        }

        ++v42;
        v46 += 16;
        v45 += 16;
      }

      while (v42 != v41);
      v48 = 0;
      v49 = a5 + 4 * v43 + 4 * v6;
      v50 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v48) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v11 = *(v50 + j);
            *(v49 + j) = v11;
          }
        }

        else
        {
          *(v44 + 4 * (v6 + 4 * v48)) = vdupq_n_s32(v11);
        }

        ++v48;
        v49 += 16;
        v50 += 16;
      }

      while (v48 != v41);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D830, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_277406BD0(int a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 4 * a3 * v10 - 4);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v14 = (a4 + 4 * (v10 - a3));
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 4 * a3);
      }

      if ((a2 & 0x100) != 0)
      {
        v14 = (a4 + 4 * ~a3);
      }

      if ((a2 & 0xF0) != 0)
      {
        v14 = (a4 + 4 * (v10 - 1) * a3 - 4);
      }

      v15 = *v14;
      v16 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v10 - 1);
      v18 = &a5[v10 + 2];
      v19 = xmmword_27750D310;
      v20 = xmmword_27750D320;
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v20));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v18 - 2) = v15;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v18 - 1) = v15;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
        {
          *v18 = v15;
          v18[1] = v15;
        }

        v19 = vaddq_s64(v19, v21);
        v20 = vaddq_s64(v20, v21);
        v18 += 4;
        v16 -= 4;
      }

      while (v16);
    }

    if ((a2 & 0xF0) != 0)
    {
      if (a1 != 31)
      {
        v23 = (a4 - 4);
        if (v10 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v10;
        }

        v25 = a5;
        do
        {
          *v25++ = *v23;
          v23 += a3;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      v26 = a5[v10];
      v27 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = vdupq_n_s64(v10 - 1);
      v29 = xmmword_27750D310;
      v30 = xmmword_27750D320;
      v31 = a5 + 2;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v33, *v28.i8).u8[0])
        {
          *(v31 - 2) = v26;
        }

        if (vuzp1_s16(v33, *&v28).i8[2])
        {
          *(v31 - 1) = v26;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
        {
          *v31 = v26;
          v31[1] = v26;
        }

        v29 = vaddq_s64(v29, v32);
        v30 = vaddq_s64(v30, v32);
        v31 += 4;
        v27 -= 4;
      }

      while (v27);
    }

    v34 = (a4 + 4 * ~a3);
    if ((a2 & 0x100) == 0)
    {
      v34 = a5;
    }

    v35 = *v34;
    *(a5 - 1) = v35;
    v36 = 2 << a1;
    if ((a2 & 0x1E00) != 0)
    {
      memcpy(&a5[v36], (a4 - 4 * a3), 4 * v10);
    }

    else
    {
      v37 = v36;
      v38 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v39 = vdupq_n_s64(v10 - 1);
      v40 = &a5[v37 + 2];
      v41 = xmmword_27750D310;
      v42 = xmmword_27750D320;
      v43 = vdupq_n_s64(4uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v39, v42));
        if (vuzp1_s16(v44, *v39.i8).u8[0])
        {
          *(v40 - 2) = v35;
        }

        if (vuzp1_s16(v44, *&v39).i8[2])
        {
          *(v40 - 1) = v35;
        }

        if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v41))).i32[1])
        {
          *v40 = v35;
          v40[1] = v35;
        }

        v41 = vaddq_s64(v41, v43);
        v42 = vaddq_s64(v42, v43);
        v40 += 4;
        v38 -= 4;
      }

      while (v38);
    }

    v45 = &a5[3 << v6];
    if ((a2 & 0x1E000) != 0)
    {

      memcpy(v45, (a4 + 4 * v10 - 4 * a3), 4 * v10);
    }

    else
    {
      v46 = *(v45 - 1);
      v47 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = vdupq_n_s64(v10 - 1);
      v49 = &a5[(3 << v6) + 2];
      v50 = xmmword_27750D310;
      v51 = xmmword_27750D320;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v51));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v49 - 2) = v46;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v49 - 1) = v46;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v50))).i32[1])
        {
          *v49 = v46;
          v49[1] = v46;
        }

        v50 = vaddq_s64(v50, v52);
        v51 = vaddq_s64(v51, v52);
        v49 += 4;
        v47 -= 4;
      }

      while (v47);
    }
  }

  else
  {

    memset_pattern16(a5 - 1, &unk_27750D830, (16 * ((4 << a1) >> 2)) | 4);
  }
}