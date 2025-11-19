uint64_t sub_1D2B331B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2B331F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void _freeDatabaseConnection(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    if (*v2)
    {
      free(*v2);
      v2 = a1[5];
    }

    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    if (*v3)
    {
      free(*v3);
      v3 = a1[9];
    }

    free(v3);
  }

  free(a1);
}

void _releaseDatabaseConnection(uint64_t a1, unsigned __int8 *a2)
{
  PRdb(a2, 2, 0);

  _freeDatabaseConnection(a2);
}

uint64_t _appIdentifierFromOptions(void *a1)
{
  result = [a1 objectForKey:@"AppIdentifier"];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SLLngToA(unsigned int a1)
{
  if ((SLLngToA_LToANotDef & 1) == 0)
  {
    SLLngToA_SLLangToAttr[0] = &SLatt1_tab;
    unk_1ED7D7190 = &SLatt2_tab;
    qword_1ED7D7198 = &SLatt5_tab;
    unk_1ED7D71A0 = &SLatt1_tab;
    qword_1ED7D71A8 = &SLatt2_tab;
    unk_1ED7D71B0 = &SLatt1_tab;
    qword_1ED7D71B8 = &SLatt1_tab;
    unk_1ED7D71C0 = &SLatt1_tab;
    qword_1ED7D71C8 = &SLatt1_tab;
    unk_1ED7D71D0 = &SLatt1_tab;
    qword_1ED7D71D8 = &SLatt1_tab;
    unk_1ED7D71E0 = &SLatt1_tab;
    qword_1ED7D71E8 = &SLatt1_tab;
    unk_1ED7D71F0 = &SLatt1_tab;
    qword_1ED7D71F8 = &SLatt1_tab;
    unk_1ED7D7200 = &SLatt7_tab;
    qword_1ED7D7208 = &SLatt1_tab;
    unk_1ED7D7210 = &SLatt1_tab;
    qword_1ED7D7218 = &SLatt2_tab;
    unk_1ED7D7220 = &SLatt1_tab;
    SLLngToA_LToANotDef = 1;
  }

  if (a1 > 0x25)
  {
    return 0;
  }

  else
  {
    return SLLngToA_SLLangToAttr[a1];
  }
}

uint64_t SLcap(uint64_t a1, int a2, int a3, void *a4, uint64_t a5)
{
  *a4 = 0;
  if (a2 > a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2;
  LOWORD(v10) = a2;
  do
  {
    if ((*(a5 + 4 * *(a1 + v10)) & 0x40000000) != 0)
    {
      ++v7;
      *(a4 + ((v10 - v9) >> 5)) |= 1 << ~(v10 - v9);
      if (v10 == a2)
      {
        ++v6;
      }
    }

    else if ((*(a5 + 4 * *(a1 + v10)) & 0x20000040) != 0)
    {
      ++v8;
    }

    else
    {
      LOWORD(a2) = a2 + 1;
    }

    v10 = (v10 + 1);
  }

  while (v10 <= a3);
  if (v6 && v7 == 1)
  {
    return 1;
  }

  if (v8 && v7)
  {
    return 3;
  }

  if (!v7)
  {
    return 0;
  }

  return 2;
}

uint64_t SLstrcmp(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      if (v2 != *a2)
      {
        break;
      }

      ++a2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return v2 - *a2;
}

uint64_t SLstrncmp(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  v3 = &a1[a3];
  if (a3 >= 1)
  {
    do
    {
      if (!*a1)
      {
        break;
      }

      if (*a1 != *a2)
      {
        break;
      }

      ++a1;
      ++a2;
    }

    while (a1 < v3);
  }

  if (a1 == v3)
  {
    return 0;
  }

  else
  {
    return *a1 - *a2;
  }
}

uint64_t SLc2pasc(char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 255)
  {
    LOWORD(v2) = 255;
  }

  LOWORD(v3) = v2 - 1;
  if (((v2 - 1) & 0x8000) == 0)
  {
    v3 = v3;
    v4 = v2;
    do
    {
      a1[v4--] = a1[v3--];
    }

    while (v3 != -1);
  }

  *a1 = v2;
  return v2;
}

uint64_t SLpasc2c(unsigned __int8 *a1)
{
  result = *a1;
  if (result)
  {
    v3 = 1;
    do
    {
      a1[v3 - 1] = a1[v3];
      ++v3;
    }

    while (result >= v3);
  }

  a1[result] = 0;
  return result;
}

uint64_t _setLanguageModel(void *a1, uint64_t a2, __CFString *a3, uint64_t a4)
{
  v8 = [a1 objectForKey:a2];
  v9 = v8;
  if (!a3)
  {
    a3 = &stru_1F4E0A7A0;
  }

  if (v8)
  {
    if (a4)
    {
LABEL_5:
      v10 = v9;
      v11 = a4;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [a1 setObject:v9 forKey:a2];
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x1E695DFB0] null];
  v10 = v9;
LABEL_8:

  return [v10 setObject:v11 forKey:a3];
}

BOOL _allowModelUsage()
{
  if (_allowModelUsage_onceToken != -1)
  {
    _allowModelUsage_cold_1();
  }

  return ((_allowModelUsage_kbdProcess | _allowModelUsage_inputuiProcess) & 1) == 0;
}

void sub_1D2B398B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B3A0C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t ___allowModelUsage_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  _allowModelUsage_kbdProcess = [v0 isEqualToString:@"kbd"];
  result = [v0 isEqualToString:@"InputUI"];
  _allowModelUsage_inputuiProcess = result;
  return result;
}

uint64_t descendingDoubleValueComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 doubleValue];
  v5 = v4;
  [a3 doubleValue];
  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

uint64_t descendingScoreComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [a2 score];
  v5 = v4;
  [a3 score];
  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

uint64_t SLchk(unsigned __int8 *a1, int a2, unsigned int a3, int *a4, unsigned int a5, _DWORD *a6)
{
  if (a3 > 2)
  {
    if (a3 > a5)
    {
      return 8;
    }

    v8 = *a4;
    if (*a4 == *a6 && a4[1] == a6[1])
    {
      return 0;
    }

    if (a2 < 1)
    {
      return 8;
    }

    v9 = a2;
    while (1)
    {
      v10 = *a1++;
      if (v10 == 45)
      {
        break;
      }

      if (!--v9)
      {
        return 8;
      }
    }

    if (((*a6 ^ v8) & 0x7FFFFFFF) != 0 || (v8 & 0x80000000) == 0)
    {
      return 8;
    }

LABEL_21:
    if (a4[1] != a6[1])
    {
      return 8;
    }

    return 0;
  }

  if (a3 >= a5)
  {
    return 0;
  }

  if (a3 == 2 && a5 == 3)
  {
    if (a2 >= 1)
    {
      v6 = a2;
      do
      {
        v7 = *a1++;
        if (v7 == 45)
        {
          return 0;
        }
      }

      while (--v6);
    }

    if (*a4 == *a6)
    {
      goto LABEL_21;
    }
  }

  return 8;
}

uint64_t SLLngToC(int a1, unsigned int a2)
{
  if ((LtoCNotDef & 1) == 0)
  {
    SLLtoCInit();
  }

  return SLLangToChar[2 * a2 + a1];
}

uint64_t SLLtoCInit()
{
  SLLangToChar = &SLToNat1ChrSet;
  *algn_1ED7D6D28 = &SLToDef1ChrSet;
  qword_1ED7D6D40 = &SLToNat5ChrSet;
  unk_1ED7D6D48 = &SLToDef5ChrSet;
  qword_1ED7D6E10 = &SLToNat7ChrSet;
  unk_1ED7D6E18 = &SLToDef7ChrSet;
  qword_1ED7D6D30 = &SLToNat2ChrSet;
  unk_1ED7D6D38 = &SLToDef2ChrSet;
  qword_1ED7D6D50 = &SLToNat1ChrSet;
  unk_1ED7D6D58 = &SLToDef1ChrSet;
  qword_1ED7D6D60 = &SLToNat2ChrSet;
  unk_1ED7D6D68 = &SLToDef2ChrSet;
  qword_1ED7D6D70 = &SLToNat1ChrSet;
  unk_1ED7D6D78 = &SLToDef1ChrSet;
  qword_1ED7D6D80 = &SLToNat1ChrSet;
  unk_1ED7D6D88 = &SLToDef1ChrSet;
  qword_1ED7D6D90 = &SLToNat1ChrSet;
  unk_1ED7D6D98 = &SLToDef1ChrSet;
  qword_1ED7D6DA0 = &SLToNat1ChrSet;
  unk_1ED7D6DA8 = &SLToDef1ChrSet;
  qword_1ED7D6DB0 = &SLToNat1ChrSet;
  unk_1ED7D6DB8 = &SLToDef1ChrSet;
  qword_1ED7D6DC0 = &SLToNat1ChrSet;
  unk_1ED7D6DC8 = &SLToDef1ChrSet;
  qword_1ED7D6DD0 = &SLToNat1ChrSet;
  unk_1ED7D6DD8 = &SLToDef1ChrSet;
  qword_1ED7D6DE0 = &SLToNat1ChrSet;
  unk_1ED7D6DE8 = &SLToDef1ChrSet;
  qword_1ED7D6DF0 = &SLToNat1ChrSet;
  unk_1ED7D6DF8 = &SLToDef1ChrSet;
  qword_1ED7D6E00 = &SLToNat1ChrSet;
  unk_1ED7D6E08 = &SLToDef1ChrSet;
  qword_1ED7D6E20 = &SLToNat1ChrSet;
  unk_1ED7D6E28 = &SLToDef1ChrSet;
  qword_1ED7D6E30 = &SLToNat1ChrSet;
  unk_1ED7D6E38 = &SLToDef1ChrSet;
  qword_1ED7D6E40 = &SLToNat2ChrSet;
  unk_1ED7D6E48 = &SLToDef2ChrSet;
  qword_1ED7D6E50 = &SLToNat1ChrSet;
  unk_1ED7D6E58 = &SLToDef1ChrSet;
  LtoCNotDef = 1;
  return 0;
}

uint64_t SLchcnv(char *a1, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  if ((LtoCNotDef & 1) == 0)
  {
    SLLtoCInit();
  }

  result = 8;
  if (a5 <= 0x25)
  {
    v11 = SLLangToChar[2 * a5 + a4];
    if (v11)
    {
      if (a2 < 1)
      {
        v13 = 0;
      }

      else
      {
        v12 = v11 - 128;
        v13 = a2;
        v14 = a2;
        v15 = a3;
        do
        {
          v17 = *a1++;
          v16 = v17;
          if (v17 < 0)
          {
            v16 = *(v12 + v16);
          }

          *v15++ = v16;
          --v14;
        }

        while (v14);
      }

      result = 0;
      a3[v13] = 0;
    }
  }

  return result;
}

uint64_t SLcrypt(_BYTE *a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      if (a4 == v4)
      {
        v4 = 0;
      }

      v6 = *a1;
      if (*a1)
      {
        v7 = *(a3 + v4);
        if (v6 != v7)
        {
          *a1 = v7 ^ v6;
        }
      }

      ++v4;
      ++a1;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t SLOpen(uint64_t a1, uint64_t a2, int *a3, unsigned int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  __strcpy_chk();
  __strcat_chk();
  v6 = a4;
  v16 = 0;
  v7 = open(v18, a4 & 0xFFF, 511, 0, 0);
  *a3 = v7;
  if (v7 == -1)
  {
    result = 8;
    goto LABEL_29;
  }

  v8 = (a4 >> 12) & 3;
  if (v8 == 3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  WORD2(v16) = v10;
  if (fcntl(v7, 7, &v15) < 0)
  {
    goto LABEL_18;
  }

  if (v8 && WORD2(v16) == 2)
  {
    WORD2(v16) = v8;
    if (fcntl(*a3, 8, &v15) < 0)
    {
      if (close(*a3) == -1)
      {
        result = 8;
      }

      else
      {
        result = 4;
      }

      goto LABEL_29;
    }

    goto LABEL_21;
  }

  if (v8 && v16)
  {
LABEL_18:
    if (close(*a3) == -1)
    {
      result = 8;
    }

    else
    {
      result = 4;
    }

    goto LABEL_29;
  }

LABEL_21:
  result = 0;
  if ((v6 & 3) == 0)
  {
    v12 = *a3;
    if (v12 <= 0x3F)
    {
      memset(&v17, 0, sizeof(v17));
      if (!fstat(v12, &v17) && v17.st_size >= 1 && (v17.st_mode & 0xF000) == 0x8000)
      {
        v13 = mmap(0, v17.st_size, 1, 2, v12, 0);
        if (v13 != -1)
        {
          mapped_file_buffers[v12] = v13;
          mapped_file_sizes[v12] = v17.st_size;
          mapped_file_offsets[v12] = 0;
        }
      }

      result = 0;
    }
  }

LABEL_29:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SLfulfspec(char *__src, const char *a2, char *__dst)
{
  strcpy(__dst, __src);
  strcat(__dst, a2);
  return 0;
}

uint64_t SLClose(unsigned int a1)
{
  if (a1 <= 0x3F)
  {
    v2 = mapped_file_buffers[a1];
    if (v2)
    {
      v3 = mapped_file_sizes[a1];
      if (v3 >= 1)
      {
        munmap(v2, v3);
        mapped_file_buffers[a1] = 0;
        mapped_file_sizes[a1] = 0;
        mapped_file_offsets[a1] = 0;
      }
    }
  }

  return 8 * (close(a1) == -1);
}

uint64_t SLSeek(unsigned int a1, int a2, unsigned int a3)
{
  if (a3 > 2)
  {
    return 8;
  }

  if (a1 <= 0x3F && mapped_file_buffers[a1] && mapped_file_sizes[a1] >= 1)
  {
    v3 = seek_file_map(a1, a2, a3);
  }

  else
  {
    v3 = lseek(a1, a2, a3);
  }

  return 8 * (v3 == -1);
}

uint64_t seek_file_map(unsigned int a1, unint64_t a2, int a3)
{
  if (a1 > 0x3F)
  {
    return -1;
  }

  if (!mapped_file_buffers[a1])
  {
    return -1;
  }

  v3 = mapped_file_sizes[a1];
  if (v3 < 1)
  {
    return -1;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      a2 += v3;
    }

    else
    {
      a2 += mapped_file_offsets[a1];
    }
  }

  v4 = -1;
  if ((a2 & 0x8000000000000000) == 0 && a2 <= v3)
  {
    mapped_file_offsets[a1] = a2;
    return a2;
  }

  return v4;
}

uint64_t SLFpos(unsigned int a1, _DWORD *a2)
{
  if (a1 <= 0x3F && mapped_file_buffers[a1] && (v3 = mapped_file_sizes[a1], v3 >= 1))
  {
    v4 = mapped_file_offsets[a1];
    result = 8;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = v4 > v3 || v4 == -1;
      v7 = v4;
      if (!v6)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = lseek(a1, 0, 1);
    if (v7 != -1)
    {
LABEL_12:
      result = 0;
      *a2 = v7;
      return result;
    }

    return 8;
  }

  return result;
}

uint64_t SLRead(unsigned int a1, unsigned int a2, void *__dst, _DWORD *a4)
{
  if (a1 <= 0x3F && mapped_file_buffers[a1] && mapped_file_sizes[a1] >= 1)
  {
    file_map = read_file_map(a1, __dst, a2);
  }

  else
  {
    file_map = read(a1, __dst, a2);
  }

  *a4 = file_map;
  return 8 * (file_map == -1);
}

size_t read_file_map(unsigned int a1, void *__dst, size_t a3)
{
  if (a1 > 0x3F)
  {
    return -1;
  }

  v4 = mapped_file_buffers[a1];
  if (!v4)
  {
    return -1;
  }

  v5 = mapped_file_sizes[a1];
  if (v5 < 1)
  {
    return -1;
  }

  v6 = mapped_file_offsets[a1];
  if (v6 + a3 <= v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = v5 - v6;
  }

  memmove(__dst, (v4 + v6), v7);
  mapped_file_offsets[a1] += v7;
  return v7;
}

uint64_t SLFRead(unsigned int a1, int a2, void *__dst, unsigned int *a4)
{
  if (a1 <= 0x3F && mapped_file_buffers[a1] && mapped_file_sizes[a1] >= 1)
  {
    file_map = read_file_map(a1, __dst, a2);
  }

  else
  {
    file_map = read(a1, __dst, a2);
  }

  *a4 = file_map;
  return (file_map >> 28) & 8;
}

uint64_t SLHRead(unsigned int a1, int a2, char *__dst, _DWORD *a4)
{
  *a4 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (1)
  {
    v8 = v6 >= 4096 ? 4096 : v6;
    v11 = v8;
    if (SLFRead(a1, v8, __dst, &v11))
    {
      break;
    }

    v9 = v11;
    __dst += v11;
    *a4 += v11;
    v6 -= v9;
    if (!v6)
    {
      return 0;
    }
  }

  return 8;
}

uint64_t SLFWrite(int a1, int a2, void *__buf, unsigned int *a4)
{
  v5 = write(a1, __buf, a2);
  *a4 = v5;
  return (v5 >> 28) & 8;
}

uint64_t SLtmpnam(_BYTE *a1, char *a2)
{
  v4 = malloc_type_malloc(0x1FEuLL, 0x100004077774924uLL);
  v5 = malloc_type_malloc(8uLL, 0x100004077774924uLL);
  if (!*a2)
  {
    goto LABEL_6;
  }

  if (*a1)
  {
    __strcpy_chk();
    __strcat_chk();
  }

  else
  {
    __strcpy_chk();
  }

  if (access(v4, 0) == -1)
  {
    v9 = 0;
LABEL_18:
    v10 = v4;
  }

  else
  {
LABEL_6:
    v6 = time(0) ^ 0x75BD924;
    v7 = 308915776;
    while (1)
    {
      v8 = -2836 * (v6 / 127773) + 16807 * (v6 % 127773);
      v6 = v8 >= 0 ? -2836 * (v6 / 127773) + 16807 * (v6 % 127773) : v8 + 0x7FFFFFFF;
      snprintf(v5, 8uLL, "%06d", (v6 - -20928 * (((933038707 * v6) >> 58) + ((933038707 * v6) >> 63))));
      if (*a1)
      {
        __strcpy_chk();
        __strcat_chk();
      }

      else
      {
        __strcpy_chk();
      }

      if (access(v4, 0) == -1)
      {
        break;
      }

      if (!--v7)
      {
        v9 = 8;
        goto LABEL_18;
      }
    }

    strcpy(a2, v5);
    v9 = 0;
    v10 = v5;
    v5 = v4;
  }

  free(v10);
  free(v5);
  return v9;
}

uint64_t SLRand(_DWORD *a1)
{
  LODWORD(v1) = -2836 * ((*a1 ^ 0x75BD924) / 127773) + 16807 * ((*a1 ^ 0x75BD924) % 127773);
  if (v1 >= 0)
  {
    v1 = v1;
  }

  else
  {
    v1 = (v1 + 0x7FFFFFFF);
  }

  *a1 = v1 ^ 0x75BD924;
  return v1;
}

uint64_t SLremove()
{
  v0 = malloc_type_calloc(1uLL, 0x1FEuLL, 0x100004077774924uLL);
  if (!v0)
  {
    return 8;
  }

  v1 = v0;
  __strcpy_chk();
  __strcat_chk();
  v2 = unlink(v1) == -1;
  free(v1);
  return (8 * v2);
}

uint64_t SLfun(uint64_t a1, int a2, int a3, unsigned __int16 *a4, _WORD *a5)
{
  v5 = *(a1 + a2);
  v6 = (a2 + 1);
  if (v6 <= a3)
  {
    v7 = *(a1 + a2);
    do
    {
      v7 = ((v7 & 0x7F) << 8) + 19 * (v7 >> 7) + *(a1 + v6);
      if (v7 > 0x7FECu)
      {
        v7 -= 32749;
      }

      v5 ^= v7;
      v6 = (v6 + 1);
    }

    while (v6 <= a3);
  }

  else
  {
    v7 = *(a1 + a2);
  }

  *a5 = v5 & 0x7FFF;
  *a4 = v7;
  return 0;
}

uint64_t SLisint(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = a1 + 1;
  while ((*(a2 + 4 * v2) & 0x8000000) != 0)
  {
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t SLlisten(const char *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  v3 = strlen(a1) << 16;
  if (v3 > 0x10000)
  {
    if (v3 == 0x20000)
    {
      if (v2 == 45)
      {
        if (*v1 == 45)
        {
          LOBYTE(v4) = 2;
          return v4;
        }
      }

      else if ((v2 - 65) <= 0x19 && *v1 == 46)
      {
LABEL_18:
        LOBYTE(v4) = 0;
        return v4;
      }
    }

    v6 = 0;
    v7 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (v2 > 90)
      {
        if ((v2 - 99) <= 0x1A)
        {
          if (((1 << (v2 - 99)) & 0x280643) != 0)
          {
            v8 = 5;
            goto LABEL_46;
          }

          if (v2 == 123)
          {
            v8 = 9;
            goto LABEL_46;
          }

          if (v2 == 125)
          {
            v8 = 10;
            goto LABEL_46;
          }
        }

        if (v2 == 91)
        {
          v8 = 7;
          goto LABEL_46;
        }

        if (v2 == 93)
        {
          v8 = 8;
          goto LABEL_46;
        }
      }

      else if (v2 > 72)
      {
        if (v2 > 85)
        {
          if (v2 == 86 || v2 == 88)
          {
LABEL_45:
            v8 = 4;
            goto LABEL_46;
          }
        }

        else if ((v2 - 76) < 2 || v2 == 73)
        {
          goto LABEL_45;
        }
      }

      else if (v2 > 45)
      {
        if ((v2 - 67) < 2)
        {
          goto LABEL_45;
        }

        if (v2 == 46)
        {
          v8 = 6;
          goto LABEL_46;
        }
      }

      else
      {
        switch(v2)
        {
          case 0:
            v8 = 11;
            goto LABEL_46;
          case 40:
            v8 = 2;
            goto LABEL_46;
          case 41:
            v8 = 3;
            goto LABEL_46;
        }
      }

      if ((v2 & 0x80) != 0)
      {
        if (__maskrune(v2, 0x100uLL))
        {
LABEL_54:
          v8 = 0;
          goto LABEL_46;
        }
      }

      else if ((*(v7 + 4 * v2 + 60) & 0x100) != 0)
      {
        goto LABEL_54;
      }

      if ((v2 - 48) > 9)
      {
        goto LABEL_18;
      }

      v8 = 1;
LABEL_46:
      LODWORD(v6) = state_table[12 * v6 + v8];
      if ((v6 + 2) < 3u)
      {
        v4 = -v6;
        return v4;
      }

      v9 = *v1++;
      v2 = v9;
    }
  }

  LOBYTE(v4) = 2;
  v5 = v2 > 0x3D || ((1 << v2) & 0x20006C0000000000) == 0;
  if (v5 && ((v2 - 126) > 0x39 || ((1 << (v2 - 126)) & 0x200000002000001) == 0))
  {
    if (v2 == 111)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

uint64_t SLmap(uint64_t a1, int a2, int a3, void *a4, void *a5, void *a6, void *a7)
{
  *a7 = 0;
  *a6 = 0;
  *a5 = 0;
  *a4 = 0;
  if (a2 < a3)
  {
    v7 = a2;
    do
    {
      v8 = (a1 + a2);
      v9 = *v8;
      if (v9 > 0x2E)
      {
        v12 = a5;
        if (v9 != 47)
        {
          v12 = a6;
          if (v9 != 151)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (v9 != 45)
        {
          v10 = v9 != 46 || a3 - 2 <= a2;
          if (!v10 && v8[1] == 46 && v8[2] == 46)
          {
            v11 = a2;
            do
            {
              LOWORD(a2) = v11;
              *(a7 + ((v11 - v7) >> 5)) |= 1 << ~(v11 - v7);
              ++v11;
            }

            while (*(a1 + (a2 + 1)) == 46);
          }

          goto LABEL_23;
        }

        v12 = a4;
        if (a3 - 1 > a2)
        {
          v12 = a4;
          if (v8[1] == 45)
          {
            v13 = a2;
            do
            {
              LOWORD(a2) = v13;
              *(a6 + ((v13 - v7) >> 5)) |= 1 << ~(v13 - v7);
              ++v13;
            }

            while (*(a1 + (a2 + 1)) == 45);
            goto LABEL_23;
          }
        }
      }

      *(v12 + ((a2 - v7) >> 5)) |= 1 << ~(a2 - v7);
LABEL_23:
      a2 = (a2 + 1);
    }

    while (a2 < a3);
  }

  return 0;
}

uint64_t SLord(uint64_t a1, char *__dst, int a3, int a4, uint64_t a5)
{
  v6 = 0;
  v25 = *MEMORY[0x1E69E9840];
  *__dst = 0;
  if (a3 <= a4)
  {
    v7 = 0;
    do
    {
      v6 = v7 + 1;
      __src[v7] = ((*(a5 + 4 * *(a1 + a3)) >> 25) & 0x20) + *(a1 + a3);
      a3 = (a3 + 1);
      ++v7;
    }

    while (a3 <= a4);
  }

  v8 = 0;
  __src[v6] = 0;
  do
  {
    v9 = v8;
    v10 = __src[v8];
    v11 = *(a5 + 4 * __src[v8++]);
  }

  while ((v11 & 0x8000000) != 0);
  if (v9)
  {
    v12 = v6 - 1;
    v13 = v9 + 1;
    if (v9 + 1 == v12)
    {
      if (v10 == 116)
      {
        if (__src[v13] == 104)
        {
          v14 = 1;
LABEL_18:
          v15 = 1;
          goto LABEL_19;
        }
      }

      else if (v10 == 110 || v10 == 114)
      {
        if (__src[v13] == 100)
        {
          v14 = 0;
          goto LABEL_18;
        }
      }

      else if (v10 == 115 && __src[v13] == 116)
      {
        v15 = 0;
        v14 = 1;
LABEL_19:
        if (v9 >= 2 && __src[(v9 - 2)] == 49 && __src[(v9 - 1)] - 49 <= 2)
        {
          if (v10 == 116 && __src[v13] == 104)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v18 = __src[v9 - 1];
          switch(v18)
          {
            case '3':
              if (v10 == 114)
              {
                v23 = v14;
              }

              else
              {
                v23 = 1;
              }

              if ((v23 & 1) == 0)
              {
                goto LABEL_48;
              }

              v20 = 100;
              v21 = 114;
              goto LABEL_47;
            case '2':
              if (v10 == 110)
              {
                v22 = v14;
              }

              else
              {
                v22 = 1;
              }

              if ((v22 & 1) == 0)
              {
                goto LABEL_48;
              }

              v20 = 100;
              v21 = 110;
              goto LABEL_47;
            case '1':
              if (v10 == 115)
              {
                v19 = v15;
              }

              else
              {
                v19 = 1;
              }

              if ((v19 & 1) == 0)
              {
                goto LABEL_48;
              }

              v20 = 116;
              v21 = 115;
              goto LABEL_47;
          }

          if (v10 == 116)
          {
LABEL_48:
            result = 1;
            goto LABEL_26;
          }
        }

        v20 = 104;
        v21 = 116;
LABEL_47:
        strncpy(__dst, __src, v9);
        __dst[v9] = v21;
        __dst[v8] = v20;
        __dst[(v9 + 2)] = 0;
        goto LABEL_48;
      }
    }
  }

  result = 0;
LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SLpar(const char *a1, unsigned __int16 *a2, __int16 *a3, _WORD *a4, uint64_t a5)
{
  *a2 = 0;
  v10 = strlen(a1);
  LODWORD(v11) = (v10 - 1);
  *a3 = v10 - 1;
  if (v11 < 1)
  {
    goto LABEL_16;
  }

  v12 = &a1[(v10 - 1)];
  if (!(*(a5 + 4 * *v12) & 0x1000400))
  {
LABEL_15:
    LOWORD(v11) = *a3;
    goto LABEL_16;
  }

  do
  {
    --*a3;
    if ((*(a5 + 4 * *v12) & 0xA00000) == 0)
    {
      *a4 |= 0x100u;
    }

    if (v11 <= 1)
    {
      break;
    }

    LOWORD(v11) = v11 - 1;
    v12 = &a1[v11];
  }

  while ((*(a5 + 4 * *v12) & 0x1000400) != 0);
  v11 = *a3;
  v14 = a1[v11 + 1];
  switch(v14)
  {
    case '.':
      v15 = 512;
      goto LABEL_14;
    case '-':
      if (a1[v11 + 2] != 45)
      {
        v15 = 1024;
        goto LABEL_14;
      }

      goto LABEL_15;
    case '\'':
      v15 = 4096;
LABEL_14:
      *a4 |= v15;
      goto LABEL_15;
  }

LABEL_16:
  if (!v11)
  {
    return 8;
  }

  v16 = *a2;
  if (v16 <= v11)
  {
    v17 = &a1[*a2];
    v18 = *(a5 + 4 * *v17) & 0x1000400;
    v19 = *a2;
    if (v18)
    {
      while (1)
      {
        *a2 = v19 + 1;
        v20 = *v17;
        if ((*(a5 + 4 * v20) & 0x400000) == 0 && (v20 != 46 || *a3 <= v16 || *(v17 + 1) - 48 >= 0xA))
        {
          *a4 |= 0x100u;
        }

        v16 = (v16 + 1);
        if (v16 > *a3)
        {
          break;
        }

        v17 = &a1[v16];
        v19 = *a2;
        if ((*(a5 + 4 * *v17) & 0x1000400) == 0)
        {
          goto LABEL_26;
        }
      }

      v19 = *a2;
    }

    else
    {
LABEL_26:
      if (!v18)
      {
        return 8 * (*a2 == *a3);
      }
    }

    if (v19 >= 1)
    {
      v22 = &a1[v19];
      v23 = *(v22 - 1);
      if (v23 == 39)
      {
        v24 = 0x2000;
      }

      else
      {
        if (v23 != 45 || v19 >= 2 && *(v22 - 2) == 45)
        {
          return 8 * (*a2 == *a3);
        }

        v24 = 2048;
      }

      *a4 |= v24;
    }
  }

  return 8 * (*a2 == *a3);
}

uint64_t SLrecap(unsigned __int8 *a1, int a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a1 && *a1)
  {
    if (a5 <= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a5;
    }

    if (a5 == 3)
    {
      v6 = a3;
    }

    if (v6 >= 3)
    {
      if (a2 >= 1)
      {
        for (i = 0; i != a2; ++i)
        {
          if (i <= 0x3F && (*(a4 + 4 * (i >> 5)) & (1 << ~i)) != 0)
          {
            v10 = a1[i];
            if ((*(a6 + 4 * v10) & 0x20000000) != 0)
            {
              LOBYTE(v10) = v10 - 32;
            }

            a1[i] = v10;
          }
        }
      }
    }

    else if (v6 == 1)
    {
      if (a2 >= 1)
      {
        v12 = a2;
        while (1)
        {
          v13 = *a1;
          v14 = *(a6 + 4 * v13);
          if ((v14 & 0x60000040) != 0)
          {
            break;
          }

          ++a1;
          if (!--v12)
          {
            return 0;
          }
        }

        v15 = v13 - 32;
        if ((v14 & 0x20000000) == 0)
        {
          v15 = *a1;
        }

        *a1 = v15;
      }
    }

    else if (v6 == 2 && a2 >= 1)
    {
      v7 = a2;
      do
      {
        v8 = *a1;
        if ((*(a6 + 4 * v8) & 0x20000000) != 0)
        {
          LOBYTE(v8) = v8 - 32;
        }

        *a1++ = v8;
        --v7;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t SLwldcmp(uint64_t a1, int a2, unsigned __int8 *a3, int a4)
{
  v6 = *a3;
  if (v6 != 42 && a4 >= 1)
  {
    v10 = 0;
    while (v6 == 63 || v6 == *(a1 + v10))
    {
      v8 = v10 + 1;
      v6 = a3[v10 + 1];
      v11 = v6 == 42 || v8 >= a4;
      ++v10;
      if (v11)
      {
        v9 = v8;
        goto LABEL_15;
      }
    }

    return 0;
  }

  v8 = 0;
  v9 = 0;
LABEL_15:
  if (v9 == a4 && v9 == a2)
  {
    return 1;
  }

  v13 = a4 - 1;
  v14 = a3[v13];
  v15 = 1;
  if (v14 == 42 || a4 < 1)
  {
LABEL_29:
    v19 = v9;
    v20 = v15 + v9;
    if (v20 <= a4 + 1 && v20 <= a2 + 1)
    {
      if (v20 == a4)
      {
        return 1;
      }

      v30 = a2 - v15;
      if (a2 - v15 >= v9)
      {
        v21 = &a3[v8];
        v28 = &a3[v13];
        v29 = v21[1];
        v31 = v21 + 1;
        v22 = (v13 + ~v9);
        while (1)
        {
          if (*(a1 + v9) == v29)
          {
            v23 = a2 - v19;
            if (a2 - v19 >= v15)
            {
              break;
            }
          }

LABEL_41:
          result = 0;
          v19 = ++v9;
          if (v30 < v9)
          {
            return result;
          }
        }

        v24 = *(v28 - 1);
        v25 = v15;
        v26 = v15;
        while (1)
        {
          v27 = a2 - v25;
          if (*(a1 + v27) == v24)
          {
            if (SLwldcmp(a1 + v9, (v27 - v9 + 1), v31, v22))
            {
              return 1;
            }
          }

          v25 = ++v26;
          if (v23 < v26)
          {
            goto LABEL_41;
          }
        }
      }
    }
  }

  else
  {
    while (v14 == 63 || a2 >= v15 && v14 == *(a1 - v15 + a2))
    {
      v17 = v15 + 1;
      v15 = (v15 + 1);
      v13 = a4 - v17;
      v14 = a3[v13];
      if (v14 == 42 || v15 > a4)
      {
        goto LABEL_29;
      }
    }
  }

  return 0;
}

uint64_t SLWildCmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1;
    while (1)
    {
      v6 = *a2;
      if (!*a2)
      {
        return 0;
      }

      if (a3 != 2)
      {
        if (v6 != 63)
        {
          v7 = 1;
          if (v6 == 42)
          {
            break;
          }

          if (v6 != v4)
          {
            return 0;
          }
        }

LABEL_8:
        v8 = 1;
        v9 = 1;
        goto LABEL_39;
      }

      if ((v6 - 129) < 0x1F)
      {
        if (v6 != 129)
        {
          goto LABEL_17;
        }

        v10 = a2[1];
        if (v10 == 72)
        {
          v9 = 2;
LABEL_31:
          if (v4 >= 0xF0)
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }

          if (v4 < 0xE0)
          {
            v11 = 1;
          }

          if (v4 - 129 >= 0x1F)
          {
            v8 = v11;
          }

          else
          {
            v8 = 2;
          }

          goto LABEL_39;
        }

        v7 = 2;
        if (v10 == 150)
        {
          break;
        }

        goto LABEL_17;
      }

      if ((v6 & 0xF0) != 0xE0)
      {
        if (v6 == 63)
        {
          v9 = 1;
          goto LABEL_31;
        }

        v7 = 1;
        if (v6 == 42)
        {
          break;
        }
      }

LABEL_17:
      if (v6 != v4)
      {
        return 0;
      }

      if (v4 - 129 >= 0x1F)
      {
        if ((v4 & 0xF0) == 0xE0)
        {
          if (a2[1] != v5[1])
          {
            return 0;
          }

LABEL_25:
          if (v4 >= 0xF0)
          {
            v8 = 1;
          }

          else
          {
            v8 = 2;
          }

          v9 = v8;
          goto LABEL_39;
        }

        if (v4 >= 0xE0)
        {
          goto LABEL_25;
        }

        goto LABEL_8;
      }

      if (a2[1] != v5[1])
      {
        return 0;
      }

      v8 = 2;
      v9 = 2;
LABEL_39:
      a2 += v9;
      v5 += v8;
      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_49;
      }
    }

    v15 = &a2[v7];
    v16 = a2[v7];
    if (a2[v7])
    {
      v19 = (v16 - 160) < 0xFFFFFFE1 && (v16 & 0xF0) != 224 || a3 != 2;
      while (1)
      {
        if (v4 == v16)
        {
          if (!v19 && v5[1] != v15[1])
          {
LABEL_67:
            if (v4 >= 0xF0)
            {
              v21 = 1;
            }

            else
            {
              v21 = 2;
            }

            if (v4 < 0xE0)
            {
              v21 = 1;
            }

            if (v4 - 129 >= 0x1F)
            {
              v20 = v21;
            }

            else
            {
              v20 = 2;
            }

            goto LABEL_75;
          }

          if (SLWildCmp(v5, v15, a3))
          {
            return 1;
          }
        }

        if (a3 == 2)
        {
          goto LABEL_67;
        }

        v20 = 1;
LABEL_75:
        v5 += v20;
        v4 = *v5;
        if (!*v5)
        {
          return 0;
        }
      }
    }
  }

  else
  {
LABEL_49:
    while (1)
    {
      v13 = *a2;
      if (!*a2)
      {
        break;
      }

      if (a3 == 2 && (v13 - 129) < 0x1F)
      {
        if (v13 != 129 || a2[1] != 150)
        {
          return 0;
        }

        v12 = 2;
      }

      else
      {
        if (v13 != 42)
        {
          return 0;
        }

        v12 = 1;
      }

      a2 += v12;
    }
  }

  return 1;
}

uint64_t SLwldfix(_BYTE *a1, unsigned __int16 a2)
{
  while (1)
  {
    if (a2 >= 1)
    {
      v2 = 0;
      for (i = a1; ; ++i)
      {
        if (*i == 42)
        {
          v4 = i[1];
          if (v4 == 42)
          {
            *i = 1;
          }

          else
          {
            if (v4 != 63)
            {
              v5 = -v2;
              goto LABEL_12;
            }

            *i = 10815;
          }
        }

        if (-a2 == --v2)
        {
          return 1;
        }
      }
    }

    LOWORD(v5) = 0;
LABEL_12:
    if (v5 == a2)
    {
      return 1;
    }

    LOWORD(v6) = a2 - 1;
    if ((a2 - 1) > v5)
    {
      v6 = (a2 - 1);
      do
      {
        if (a1[v6] == 42)
        {
          v7 = (a2 - 2);
          v8 = a1[v7];
          if (v8 == 42)
          {
            a1[v6] = 1;
          }

          else
          {
            if (v8 != 63)
            {
              goto LABEL_22;
            }

            a1[v6] = 63;
            a1[v7] = 42;
          }
        }

        a2 = v6--;
      }

      while (v6 > v5);
      LOWORD(v6) = v5;
    }

LABEL_22:
    if (v5 == v6)
    {
      return 1;
    }

    a1 += v5 + 1;
    a2 = v6 + ~v5;
  }
}

uint64_t SLwldpro(const char *a1, _WORD *a2, _WORD *a3, __int16 a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = strlen(a1);
  v9 = v8;
  *a3 = 0;
  *a2 = 0;
  v10 = v8;
  if (v8)
  {
    v11 = v8;
    v12 = a1;
    do
    {
      v13 = *v12++;
      v14 = a4;
      if (v13 != 42)
      {
        ++*a2;
        v14 = *a3 + 1;
      }

      *a3 = v14;
      --v11;
    }

    while (v11);
  }

  strncpy(__dst, a1, 0x7EuLL);
  __dst[126] = 0;
  v15 = strlen(__dst);
  SLwldfix(__dst, v15);
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = __dst[v17];
    if (v18 >= 2)
    {
      v19 = v16++;
      a1[v19] = v18;
    }

    ++v17;
  }

  while (v18);
  if (v10 >= 0x7F)
  {
    v20 = (a1 + 126);
    v21 = v9 - 126;
    v22 = v16;
    do
    {
      v23 = *v20++;
      LOWORD(v16) = v22 + 1;
      a1[v22++] = v23;
      --v21;
    }

    while (v21);
  }

  a1[v16] = 0;
  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t SLWildPro(const char *a1, _WORD *a2, _WORD *a3, __int16 a4, int a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = strlen(a1);
  *a3 = 0;
  *a2 = 0;
  v11 = *a1;
  if (*a1)
  {
    v12 = a1;
    while (a5 != 2)
    {
      if (v11 == 42)
      {
        *a3 = a4;
      }

      else
      {
        ++*a2;
        ++*a3;
      }

      v16 = 1;
LABEL_30:
      v12 += v16;
      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_31;
      }
    }

    if ((v11 - 129) >= 0x1F)
    {
      v13 = a4;
      if (v11 == 42)
      {
        goto LABEL_22;
      }
    }

    else if (v11 == 129)
    {
      v13 = a4;
      if (*(v12 + 1) == 150)
      {
        goto LABEL_22;
      }
    }

    ++*a2;
    v14 = *v12;
    if ((v14 - 129) >= 0x1F)
    {
      if (v14 == 63)
      {
        goto LABEL_20;
      }
    }

    else if (v14 == 129)
    {
      v15 = *(v12 + 1);
      goto LABEL_20;
    }

    if ((v14 - 129) >= 0x1F && (v14 & 0xF0) != 0xE0)
    {
      v17 = 1;
LABEL_21:
      v13 = *a3 + v17;
LABEL_22:
      *a3 = v13;
      v18 = *v12;
      v19 = v18 - 129;
      if (v18 >= 0xF0)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v18 >= 0xE0)
      {
        v16 = v20;
      }

      else
      {
        v16 = 1;
      }

      if (v19 < 0x1F)
      {
        v16 = 2;
      }

      goto LABEL_30;
    }

LABEL_20:
    v17 = 2;
    goto LABEL_21;
  }

LABEL_31:
  strncpy(__dst, a1, 0x7EuLL);
  __dst[126] = 0;
  v21 = __dst[0];
  if (__dst[0])
  {
    v22 = __dst;
    while (1)
    {
      v23 = v22[1];
      if (!v22[1])
      {
        goto LABEL_77;
      }

      if (a5 != 2)
      {
        break;
      }

      v24 = v21 + 127;
      if ((v21 + 127) >= 0x1Fu)
      {
        if ((v21 & 0xF0) == 0xE0)
        {
          goto LABEL_67;
        }

        if (v21 != 42)
        {
          goto LABEL_62;
        }

        v26 = v22[1];
        v27 = 1;
LABEL_46:
        if ((v26 + 127) >= 0x1Fu)
        {
          if (v26 != 63)
          {
            if ((v26 & 0xF0) == 0xE0)
            {
              goto LABEL_63;
            }

            if (v26 == 42)
            {
              goto LABEL_58;
            }

            goto LABEL_62;
          }
        }

        else
        {
          if (v26 != 129)
          {
            goto LABEL_63;
          }

          v28 = v22[v27 + 1];
          if (v28 != 72)
          {
            if (v28 != 150)
            {
LABEL_63:
              v29 = v21;
              goto LABEL_64;
            }

LABEL_58:
            if (v21 > 0x80u)
            {
              *v22 = 257;
              goto LABEL_70;
            }

LABEL_60:
            LOBYTE(v23) = 1;
            *v22 = 1;
LABEL_61:
            v21 = v23;
            if (a5 != 2)
            {
              goto LABEL_70;
            }

LABEL_62:
            v24 = v21 + 127;
            goto LABEL_63;
          }
        }

        if (v21 > 0x80u)
        {
          v29 = v22[2];
          v24 = v29 + 127;
          *v22 = v29;
          if ((v29 + 127) >= 0x1Fu && (v29 & 0xF0) != 0xE0)
          {
            v22[2] = v21;
            v22[3] = v23;
LABEL_66:
            v21 = v29;
            if (v29 >= 0xE0u)
            {
LABEL_67:
              if (v21 >= 0xF0u)
              {
                v25 = 1;
              }

              else
              {
                v25 = 2;
              }

              goto LABEL_71;
            }

LABEL_70:
            v25 = 1;
            goto LABEL_71;
          }

          v22[1] = v22[3];
          v22[2] = v21;
          v22[3] = v23;
          goto LABEL_64;
        }

        v24 = v23 + 127;
        if ((v23 + 127) < 0x1Fu || (v23 & 0xF0) == 0xE0)
        {
          *v22 = v23;
          v22[1] = v21;
          v29 = v23;
LABEL_64:
          if (v24 >= 0x1Fu)
          {
            goto LABEL_66;
          }

LABEL_65:
          v25 = 2;
          goto LABEL_71;
        }

LABEL_42:
        *v22 = v23;
        v22[1] = v21;
        goto LABEL_61;
      }

      if (v21 != 129)
      {
        goto LABEL_65;
      }

      v25 = 2;
      if (v23 == 150)
      {
        v26 = v22[2];
        v27 = 2;
        goto LABEL_46;
      }

LABEL_71:
      v22 += v25;
      v21 = *v22;
      if (!*v22)
      {
        goto LABEL_77;
      }
    }

    if (v21 != 42)
    {
      goto LABEL_70;
    }

    if (v23 == 42)
    {
      goto LABEL_60;
    }

    if (v23 != 63)
    {
      goto LABEL_70;
    }

    goto LABEL_42;
  }

LABEL_77:
  v30 = 0;
  v31 = 0;
  do
  {
    v32 = __dst[v31];
    if (v32 >= 2)
    {
      v33 = v30++;
      a1[v33] = v32;
    }

    ++v31;
  }

  while (v32);
  if (v10 >= 0x7FuLL)
  {
    v34 = (a1 + 126);
    v35 = v10 - 126;
    v36 = v30;
    do
    {
      v37 = *v34++;
      LOWORD(v30) = v36 + 1;
      a1[v36++] = v37;
      --v35;
    }

    while (v35);
  }

  a1[v30] = 0;
  v38 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t SLparcmp(uint64_t a1, _BYTE *a2, _WORD *a3, int a4, uint64_t a5)
{
  *a3 = 0;
  *a2 = 0;
  v5 = (a1 - 1);
  for (i = 1; ; --i)
  {
    v7 = v5[1];
    if ((*(a5 + 4 * v5[1]) & 0x400) == 0 || !a4 && (v7 == 42 || v7 == 63))
    {
      break;
    }

    ++v5;
    if (!v7)
    {
      return 0;
    }
  }

  v9 = v5 + 1;
  if (i == 1)
  {
    goto LABEL_21;
  }

  v10 = *v5;
  if (v10 == 39)
  {
    v11 = 0x2000;
    if (i)
    {
      v11 = *(v5 - 1) == 45 ? 2048 : 0x2000;
      if (*(v5 - 1) == 45)
      {
        v9 = v5;
      }
    }
  }

  else
  {
    if (v10 != 45 || i && *(v5 - 1) == 45)
    {
      goto LABEL_21;
    }

    v11 = 2048;
  }

  *a3 |= v11;
LABEL_21:
  for (j = 0; ; ++j)
  {
    v13 = *v9;
    if (v13 != 10 && v13 != 32)
    {
      break;
    }

    a2[j] = 32;
    do
    {
      v15 = *++v9;
      v14 = v15;
    }

    while (v15 == 32 || v14 == 10);
LABEL_34:
    ;
  }

  if (*v9)
  {
    a2[j] = v13;
    if (*v9 == 45 && v9[1] == 10)
    {
      ++v9;
    }

    ++v9;
    goto LABEL_34;
  }

  v17 = &a2[j];
  *v17 = 0;
  v18 = *(v17 - 1);
  if ((*(a5 + 4 * v18) & 0x400) == 0)
  {
    goto LABEL_49;
  }

  do
  {
    if (!a4 && (v18 == 42 || v18 == 63))
    {
      break;
    }

    v17 = &a2[--j];
    v18 = *(v17 - 1);
  }

  while ((*(a5 + 4 * v18) & 0x400) != 0);
  v19 = *v17;
  if (v19 == 39)
  {
    v20 = 4096;
LABEL_48:
    *a3 |= v20;
    goto LABEL_49;
  }

  if (v19 == 45)
  {
    if (v17[1] == 45)
    {
      goto LABEL_49;
    }

    v20 = 1024;
    goto LABEL_48;
  }

  if (v19 == 46 && v17[1] != 46)
  {
    v20 = 512;
    goto LABEL_48;
  }

LABEL_49:
  result = j;
  *v17 = 0;
  return result;
}

uint64_t SLtokenz(unsigned __int8 **a1, _BYTE *a2, __int16 *a3, int a4, uint64_t a5)
{
  LOWORD(v5) = 0;
  v6 = *a1;
  *a2 = 0;
  if ((*(a5 + 4 * *v6) & 0x400) != 0)
  {
    return v5;
  }

  *a3 = 0;
  v7 = *(v6 - 1);
  if (v7 == 39)
  {
    v8 = 0x2000;
  }

  else
  {
    if (v7 != 45 || *(v6 - 2) == 45)
    {
      goto LABEL_8;
    }

    v8 = 2048;
  }

  *a3 = v8;
LABEL_8:
  v5 = 0;
  v9 = 0;
  v10 = *v6;
  v11 = *(a5 + 4 * *v6);
  v12 = 1;
  do
  {
    for (i = v6; (v11 & 0x400) == 0; v11 = *(a5 + 4 * v14))
    {
      a2[v5] = v10;
      if ((v11 & 0x60000040) != 0)
      {
        v12 = 0;
      }

      v14 = *++i;
      v10 = v14;
      ++v5;
    }

    v6 = i + 1;
    v15 = i[1];
    if (v10 == 45 && v15 == 10)
    {
      if ((*(a5 + 4 * i[2]) & 0x400) == 0)
      {
        *a3 |= ++v9;
        v16 = v5++;
        a2[v16] = *i;
        v6 = i + 2;
        goto LABEL_44;
      }

      v15 = 10;
    }

    if ((*(a5 + 4 * v15) & 0x400) == 0)
    {
      if (v10 <= 0x2E && ((1 << v10) & 0x608000000000) != 0)
      {
        if (v10 == 45)
        {
          *a3 |= 0x8000u;
          ++v9;
          LOBYTE(v10) = *i;
        }

LABEL_33:
        v18 = v5++;
        a2[v18] = v10;
        goto LABEL_44;
      }

      if (a4 == 7 && v10 == 58)
      {
        goto LABEL_33;
      }

      if (v10 == 47)
      {
        v19 = v5++;
        a2[v19] = 47;
        *a3 |= 0x4000u;
        goto LABEL_44;
      }

LABEL_36:
      if (v10 == 44)
      {
        if (v12)
        {
          v20 = 1;
          do
          {
            v21 = v20;
            v22 = *(a5 + 4 * i[v20++]);
          }

          while ((v22 & 0x8000400) == 0x8000000);
          if (v21 >= 2 && (v22 & 0x400) != 0)
          {
            v23 = v5++;
            a2[v23] = 44;
            goto LABEL_44;
          }
        }
      }

LABEL_43:
      v6 = i;
      goto LABEL_44;
    }

    if (v10 == 47)
    {
      goto LABEL_43;
    }

    if (v10 != 46)
    {
      goto LABEL_36;
    }

    if (v15 != 45 && v15 != 39 || (*(a5 + 4 * i[2]) & 0x400) != 0)
    {
      goto LABEL_43;
    }

    if (v15 == 45)
    {
      ++v9;
    }

    v17 = v5 + 1;
    a2[v5] = 46;
    v5 += 2;
    a2[v17] = *v6;
    v6 = i + 2;
LABEL_44:
    v10 = *v6;
    v11 = *(a5 + 4 * *v6);
  }

  while ((v11 & 0x400) == 0);
  if (v10 == 39)
  {
    v24 = 4096;
    goto LABEL_53;
  }

  if (v10 == 45)
  {
    if (v6[1] == 45)
    {
      goto LABEL_54;
    }

    v24 = 1024;
LABEL_53:
    *a3 |= v24;
    goto LABEL_54;
  }

  if (v10 == 46 && v6[1] != 46)
  {
    v24 = 512;
    goto LABEL_53;
  }

LABEL_54:
  a2[v5] = 0;
  *a1 = v6;
  if (v12)
  {
    v5 = -v5;
  }

  return v5;
}

uint64_t SFaccent(unsigned __int8 *a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 55) != 8 || (a4[1745] & 0x40) == 0 || *a4 != 3;
  v99 = 0;
  v7 = *(a3 + 56);
  v8 = *(*(a4 + 4) + 32);
  v9 = *(a3 + 136);
  a4[1066] = 0;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
    v11 = a2;
    v12 = v8;
    do
    {
      v14 = *a1++;
      v13 = v14;
      v15 = *(v7 + 4 * v14);
      if ((v15 & 0x4064000) != 0 && ((v15 >> 18) & 1 & ~v6) == 0)
      {
        if (*(a3 + 55) == 15)
        {
          if (v13 == 1)
          {
            LOBYTE(v13) = 1;
          }

          else if ((v15 & 0x4020000) != 0)
          {
            LOBYTE(v13) = v13 - 1;
          }
        }

        else if (v13 != 0xE0 && Lat_1_acc_0[v13 - 224])
        {
          LOBYTE(v13) = Lat_1_acc_0[v13 - 224];
        }
      }

      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  v16 = 0;
  v8[v10] = 0;
  memset(v101, 0, 224);
  memset(v100, 0, sizeof(v100));
  *(v100 + v8[1]) = 1;
  memset(&v101[14], 0, 32);
  *(v101 + *v8) = 1;
  if (!*(a3 + 104) || a2 < 1)
  {
    goto LABEL_107;
  }

  v91 = v6;
  v17 = 0;
  v18 = 0;
  v89 = v9;
  v90 = (a4 + 1086);
  v19 = a2;
  LOWORD(v20) = a4[1085];
  do
  {
    v21 = 0;
    do
    {
      if (SLstrncmp(*(*(a3 + 160) + 8 * ((v20 + v21) >> 1)), &v8[v17], *(*(a3 + 176) + ((v20 + v21) >> 1))) >= 0)
      {
        LOWORD(v20) = (v20 + v21) >> 1;
      }

      else
      {
        v21 = (v20 + v21) >> 1;
      }
    }

    while (v20 - v21 > 1);
    do
    {
      v22 = v20;
      if (*(*(a3 + 176) + v20) == 1 && *(*(a3 + 168) + v20) == 1 && **(*(a3 + 160) + 8 * v20) == v8[v17] && (*(v7 + 4 * **(*(a3 + 152) + 8 * v20)) & 0x4064000) != (*(v7 + 4 * **(*(a3 + 160) + 8 * v20)) & 0x4064000) && ((*(v7 + 4 * **(*(a3 + 152) + 8 * v20)) >> 18) & 1 & ~v91) == 0)
      {
        v90[v18] = a2 - v17;
        v23 = v18 + 1;
        v18 += 2;
        v90[v23] = v20;
        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_38;
          }

          v24 = v100;
        }

        else
        {
          v24 = v101;
        }

        *(v24 + **(*(a3 + 152) + 8 * v20)) = 1;
      }

      else
      {
        v20 = a4[1085];
        if (v22 >= v20 || **(*(a3 + 160) + 8 * v22) > v8[v17])
        {
          goto LABEL_42;
        }
      }

LABEL_38:
      v20 = (v22 + 1);
    }

    while (v20 < a4[1085]);
    LOWORD(v20) = a4[1085];
LABEL_42:
    ++v17;
  }

  while (v17 != v19);
  if (v18)
  {
    v90[v18] = -1;
    v90[(v18 + 1)] = -1;
    v98 = 0;
    v25 = *(a3 + 1184);
    v26 = a4[1067];
    v27 = (v25 + a4[1068]);
    v28 = v27[v26];
    v29 = *v27;
    v30 = v27[v26 + 1];
    v31 = v27[1];
    v32 = a4[1069];
    v33 = *(v25 + v32);
    v34 = *(v25 + v32 + v26);
    v94 = *(v25 + v32);
    v95 = v34;
    if (v26 >= 2)
    {
      v35 = 0;
      v36 = 0;
      v37 = (v30 | (v31 << 8)) - 1;
      v38 = (v28 | (v29 << 8)) - 1;
      LODWORD(v39) = 1;
      do
      {
        v40 = *(a3 + 1184);
        if (v38 >= v37)
        {
          v39 = (v39 + 1);
          v41 = a4[1069];
          v33 = *(v40 + (v41 + v39) - 1);
          v42 = (v26 + v39);
          v34 = *(v40 + (v42 + v41) - 1);
          v94 = v33;
          v95 = v34;
          v43 = *(v40 + v42 + a4[1068]) | (*(v40 + a4[1068] + v39) << 8);
          v38 = v37;
          v37 = v43 - 1;
        }

        v44 = v38 + 1;
        v45 = *(v40 + (v38 + 1) - 1);
        if (v45 == 255)
        {
          v38 += 3;
          v48 = v38;
          v47 = (v40 + v38 - 2);
        }

        else
        {
          v46 = a4[1070] + v45;
          v47 = (v40 + v46 - 1);
          v48 = (v46 + 256);
          v38 = v44;
        }

        v49 = *(v40 + v48 - 1);
        if (*v47)
        {
          v35 = *v47;
        }

        v96 = v35;
        if (v49)
        {
          v36 = v49;
        }

        v97 = v36;
        v52 = v36 == 32 && v35 == 32 && v34 != 32;
        if (*(v101 + v33) && *(v100 + v34))
        {
          if (v52)
          {
            goto LABEL_82;
          }

          v53 = *v90;
          if (v53 == 255)
          {
            goto LABEL_80;
          }

          v54 = 0;
          v55 = 0;
          do
          {
            v56 = a2 - v53;
            if ((v56 & 0xFFFE) == 2 && *(&v94 + v56) == **(*(a3 + 152) + 8 * v90[v55 + 1]))
            {
              ++v54;
            }

            v55 += 2;
            v53 = v90[v55];
          }

          while (v53 != 255);
          if (!v54)
          {
LABEL_80:
            if (v36 != 32 && v36 != v8[3])
            {
              continue;
            }
          }

          else if (v36 == 32 || v54 != 1 || v36 == v8[3])
          {
LABEL_82:
            if (a4[1066] > 499)
            {
              break;
            }

            v57 = 0;
            v58 = a4 + 64;
            do
            {
              LOBYTE(v58[2 * a4[1066]]) = *(&v94 + v57++);
              v58 = (v58 + 1);
            }

            while (v57 != 4);
            ++a4[1066];
            LODWORD(v26) = a4[1067];
            continue;
          }

          if (v35 == v8[2])
          {
            goto LABEL_82;
          }
        }

        else
        {
          v38 = v37;
        }
      }

      while (v39 < v26);
    }

    v59 = *a4;
    if (v59 <= 99)
    {
      *a4 = 101;
      a4[1746] |= 0x200u;
      v60 = *(a3 + 128);
      v61 = 255;
      do
      {
        *(a4 + 2156) = ++v61;
        v62 = (v60 + v61);
        v63 = *v62;
        v64 = &v62[v89];
        a4[1076] = v63;
        v65 = *v64;
        a4[1077] = v65;
        v66 = &v64[v89];
        v67 = *v66;
        v68 = &v66[v89];
        a4[1072] = v67;
        a4[1073] = *v68;
        v69 = &v68[v89];
        v70 = *v69;
        v71 = &v69[v89];
        a4[1074] = v70;
        a4[1075] = *v71;
        v72 = &v71[v89];
        v73 = *v72;
        v74 = &v72[v89];
        a4[1071] = v73;
        a4[1081] = *v74;
        v75 = &v74[v89];
        v76 = *v75;
        v77 = &v75[v89];
        a4[1082] = v76;
        a4[1083] = *v77;
        a4[1084] = v77[v89];
      }

      while (v65 != 4);
    }

    v78 = a4 + 64;
    *(a4 + 15) = a4 + 64;
    if (a4[1066] >= 1)
    {
      v79 = 0;
      do
      {
        if (SLstrncmp(*(a4 + 15), &v78[2 * v79], 4) <= 0)
        {
          *(a4 + 15) = &v78[2 * v79];
          v93[0] = *&v78[2 * v79];
          v80 = *(a3 + 54);
          if (v80 >= 5)
          {
            v81 = 4;
            do
            {
              *(v93 + v81++) = 0;
            }

            while (v80 > v81);
          }

          v82 = SFbisrch(v93, 0, v80 - 1, &v99, a3);
          v83 = *(a3 + 54);
          if (v83 >= 5)
          {
            v84 = 4;
            do
            {
              *(v93 + v84++) = -1;
            }

            while (v83 > v84);
          }

          v85 = SFbisrch(v93, 0, v83 - 1, &v99, a3);
          v86 = (v85 - v82 + v99);
          v99 += v85 - v82;
          if (*(a4 + 3202) == 1)
          {
            PDdecod2(v8, a2, v82, v86, a3, a4);
          }

          else
          {
            SFdecode(v8, a2, v82, v86, a3, a4);
          }
        }

        ++v79;
      }

      while (v79 < a4[1066]);
    }

    *a4 = v59;
    if (v59 == 3)
    {
      a4[1746] &= ~0x200u;
    }

    v16 = a4[20];
  }

  else
  {
    v16 = 0;
  }

LABEL_107:
  v87 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t SFadd(char *a1, int a2, __int16 *a3, __int16 *a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (v8 >= a5)
  {
    return 8;
  }

  v11 = *a4;
  if (a6 <= (*a4 + a2))
  {
    return 8;
  }

  if (v8 < 1)
  {
    v20 = *a3;
LABEL_14:
    *a3 = v8 + 1;
    *(a8 + 2 * v20) = v11;
    if (a2 >= 1)
    {
      v22 = a2;
      do
      {
        v23 = *a1++;
        v24 = *a4;
        *a4 = v24 + 1;
        *(a7 + v24) = v23;
        --v22;
      }

      while (v22);
    }

    v25 = *a4;
    *a4 = v25 + 1;
    *(a7 + v25) = 0;
    return 10;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v17 = *(a8 + 2 * v16);
      v18 = strlen((a7 + v17));
      v19 = v18 <= a2 ? a2 : v18;
      if (!SLstrncmp(a1, (a7 + v17), v19))
      {
        return 11;
      }

      ++v16;
      v20 = *a3;
      if (v16 >= v20)
      {
        LOWORD(v8) = *a3;
        v11 = *a4;
        goto LABEL_14;
      }
    }
  }
}

uint64_t SFadd1(char *a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v4) = *(a3 + 40);
  if (v4 >= *(a3 + 42))
  {
    return 8;
  }

  if (*(a3 + 56) <= (*(a3 + 44) + a2))
  {
    return 8;
  }

  if (a4 == 2)
  {
    if (v4 >= 1)
    {
      v14 = *(a3 + 48);
      v15 = *(*(a3 + 64) + 2 * *(a3 + 40) - 2);
      v16 = strlen((v14 + v15));
      if (v16 <= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = v16;
      }

      if (!SLstrncmp(a1, (v14 + v15), v17))
      {
        return 11;
      }

      LOWORD(v4) = *(a3 + 40);
    }
  }

  else if (a4 == 1 && v4 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + 48);
      v10 = *(*(a3 + 64) + 2 * v8);
      v11 = strlen((v9 + v10));
      v12 = v11 <= a2 ? a2 : v11;
      if (!SLstrncmp(a1, (v9 + v10), v12))
      {
        return 11;
      }

      ++v8;
      v4 = *(a3 + 40);
    }

    while (v8 < v4);
  }

  v18 = *(a3 + 44);
  v19 = *(a3 + 64);
  *(a3 + 40) = v4 + 1;
  *(v19 + 2 * v4) = v18;
  v20 = (*(a3 + 48) + v18);
  if (a2 >= 1)
  {
    LOWORD(v21) = 0;
    do
    {
      v22 = *a1++;
      *v20++ = v22;
      v21 = (v21 + 1);
    }

    while (v21 < a2);
  }

  *v20 = 0;
  *(a3 + 44) += a2 + 1;
  return 10;
}

uint64_t SFanachk(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  if (a2)
  {
    v3 = (a1 + a2 - 1);
    while (1)
    {
      v4 = *v3--;
      v5 = *(v8 + v4) + 1;
      *(v8 + v4) = v5;
      if (*(a3 + v4) < v5)
      {
        break;
      }

      if (!--a2)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SFanagrm(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 68) < a2)
  {
    return 8;
  }

  v23 = v4;
  v24 = v5;
  *(a3 + 3431) = 0u;
  *(a3 + 3447) = 0u;
  *(a3 + 3399) = 0u;
  *(a3 + 3415) = 0u;
  *(a3 + 3367) = 0u;
  *(a3 + 3383) = 0u;
  *(a3 + 3335) = 0u;
  *(a3 + 3351) = 0u;
  *(a3 + 3303) = 0u;
  *(a3 + 3319) = 0u;
  *(a3 + 3271) = 0u;
  *(a3 + 3287) = 0u;
  *(a3 + 3239) = 0u;
  *(a3 + 3255) = 0u;
  *(a3 + 3207) = 0u;
  *(a3 + 3223) = 0u;
  if (a2 < 1)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = *a1;
  v13 = *a1;
  do
  {
    v14 = a1[v11];
    if (v14 < v13)
    {
      v13 = a1[v11];
    }

    if (v14 > v12)
    {
      v12 = a1[v11];
    }

    ++*(a3 + 3207 + v14);
    ++v11;
  }

  while (a2 != v11);
  if (a2 > 24)
  {
    v22 = 0;
    **(*(a3 + 32) + 24) = v13;
    v15 = *(a4 + 54);
    if (v15 >= 2)
    {
      v16 = 1;
      do
      {
        *(*(*(a3 + 32) + 24) + v16++) = 0;
        v15 = *(a4 + 54);
      }

      while (v15 > v16);
    }

    v17 = SFbisrch(*(*(a3 + 32) + 24), 0, v15 - 1, &v22, a4);
    **(*(a3 + 32) + 24) = v12;
    v18 = *(a4 + 54);
    if (v18 >= 2)
    {
      v19 = 1;
      do
      {
        *(*(*(a3 + 32) + 24) + v19++) = -1;
        v18 = *(a4 + 54);
      }

      while (v18 > v19);
    }

    v20 = SFbisrch(*(*(a3 + 32) + 24), 0, v18 - 1, &v22, a4);
    v21 = (v20 - v17 + v22);
    v22 += v20 - v17;
    *(a3 + 40) = 0;
    *(a3 + 44) = 0;
    if (*(a3 + 3202) == 1)
    {
      PDdecod2(a1, a2, v17, v21, a4, a3);
    }

    else
    {
      SFdecode(a1, a2, v17, v21, a4, a3);
    }
  }

  else
  {
LABEL_11:
    SFanaqua(a1, a2, a3, a4);
  }

  if (*(a3 + 40))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

uint64_t SFanaqua(uint64_t a1, int a2, _WORD *a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  memset(v54, 0, 256);
  if (a2 >= 1)
  {
    v8 = a2;
    v9 = a1;
    do
    {
      v10 = *v9++;
      ++v54[v10];
      --v8;
    }

    while (v8);
  }

  a3[1066] = 0;
  v52 = 0;
  v11 = *(a4 + 1184);
  v12 = a3[1068];
  v13 = a3[1067];
  v14 = (v11 + v13 + v12);
  v15 = *v14;
  v16 = v11 + v12;
  v17 = *(v11 + v12);
  v18 = v14[1];
  v19 = a3[1069];
  v20 = *(v11 + v19);
  v21 = *(v16 + 1);
  v22 = *(v11 + v19 + v13);
  v48 = *(v11 + v19);
  v49 = v22;
  if (v13)
  {
    v23 = (v18 | (v21 << 8)) - 1;
    v24 = (v15 | (v17 << 8)) - 1;
    v44 = a3 + 64;
    v25 = 32;
    v26 = 1;
    v27 = 0uLL;
    v28 = 32;
    while (1)
    {
      v29 = v24 + 1;
      v30 = *(a4 + 1184);
      v31 = *(v30 + (v24 + 1) - 1);
      if (v31 == 255)
      {
        v29 = v24 + 3;
        v34 = (v24 + 3);
        v33 = (v30 + v34 - 2);
      }

      else
      {
        v32 = a3[1070] + v31;
        v33 = (v30 + v32 - 1);
        v34 = (v32 + 256);
      }

      if (!v54[v20] || !v54[v22])
      {
        goto LABEL_38;
      }

      v35 = *(v30 + v34 - 1);
      if (*v33)
      {
        v25 = *v33;
      }

      v50 = v25;
      if (v35)
      {
        v28 = v35;
      }

      v51 = v28;
      if ((v25 == 32 || v54[v25]) && (v28 == 32 || v54[v28]))
      {
        v36 = 0;
        v53[14] = v27;
        v53[15] = v27;
        v53[12] = v27;
        v53[13] = v27;
        v53[10] = v27;
        v53[11] = v27;
        v53[8] = v27;
        v53[9] = v27;
        v53[6] = v27;
        v53[7] = v27;
        v53[4] = v27;
        v53[5] = v27;
        v53[2] = v27;
        v53[3] = v27;
        v53[0] = v27;
        v53[1] = v27;
        while (1)
        {
          v37 = *(&v48 + v36);
          if (v37 == 32)
          {
            break;
          }

          ++*(v53 + v37);
          if (++v36 == 4)
          {
            goto LABEL_27;
          }
        }

        if (v36 == a2)
        {
LABEL_27:
          v36 = 0;
          while (*(v53 + v36) <= v54[v36])
          {
            if (++v36 == 256)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_25;
        }

        if (v36 == 256)
        {
          goto LABEL_30;
        }

LABEL_25:
        if (*(&v48 + v36) != 32)
        {
          goto LABEL_35;
        }

LABEL_30:
        if (a3[1066] > 498)
        {
          v46 = v28;
          v47 = v25;
          v45 = v22;
          icgetana(a1, a2, a3, a4);
          v22 = v45;
          v28 = v46;
          v25 = v47;
          v27 = 0uLL;
        }

        else
        {
          v38 = 0;
          v39 = v44;
          do
          {
            LOBYTE(v39[2 * a3[1066]]) = *(&v48 + v38++);
            v39 = (v39 + 1);
          }

          while (v38 != 4);
          ++a3[1066];
        }
      }

LABEL_35:
      LOWORD(v13) = a3[1067];
      if (v29 >= v23)
      {
        break;
      }

      v40 = v23;
      LODWORD(v23) = v29;
LABEL_39:
      v24 = v23;
      v23 = v40;
      if (v26 > v13)
      {
        goto LABEL_40;
      }
    }

    v30 = *(a4 + 1184);
LABEL_38:
    v41 = a3[1069] + ++v26;
    v20 = *(v30 + v41 - 1);
    v22 = *(v30 + v41 + v13 - 1);
    v48 = *(v30 + v41 - 1);
    v49 = v22;
    v40 = (*(v30 + v13 + v26 + a3[1068]) | (*(v30 + a3[1068] + v26) << 8)) - 1;
    goto LABEL_39;
  }

LABEL_40:
  icgetana(a1, a2, a3, a4);
  v42 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t icgetana(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3 + 128;
  *(a3 + 128 + 4 * *(a3 + 2132)) = 0;
  v6 = *(a3 + 2132);
  *(a3 + 120) = a3 + 128;
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v19 = 0;
    do
    {
      result = SLstrncmp(*(a3 + 120), (v5 + 4 * v10), 4);
      if (result <= 0)
      {
        *(a3 + 120) = v5 + 4 * v10;
        v20[0] = *(v5 + 4 * v10);
        v11 = *(a4 + 54);
        if (v11 >= 5)
        {
          v12 = 4;
          do
          {
            *(v20 + v12++) = 0;
          }

          while (v11 > v12);
        }

        v13 = SFbisrch(v20, 0, v11 - 1, &v19, a4);
        v14 = *(a4 + 54);
        if (v14 >= 5)
        {
          v15 = 4;
          do
          {
            *(v20 + v15++) = -1;
          }

          while (v14 > v15);
        }

        v16 = SFbisrch(v20, 0, v14 - 1, &v19, a4);
        v17 = (v16 - v13 + v19);
        v19 += v16 - v13;
        if (*(a3 + 3202) == 1)
        {
          result = PDdecod2(v9, a2, v13, v17, a4, a3);
        }

        else
        {
          result = SFdecode(v9, a2, v13, v17, a4, a3);
        }
      }

      ++v10;
    }

    while (v10 != v6);
  }

  *(a3 + 2132) = 0;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SFbisrch(uint64_t a1, int a2, int a3, _WORD *a4, uint64_t a5)
{
  v7 = *(a5 + 54);
  if (*(a5 + 54))
  {
    v8 = a2 <= a3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    LOWORD(v9) = 0;
    do
    {
      v35[v9] = *(a1 + a2);
      LOWORD(v9) = v9 + 1;
      v10 = v9;
      if (v9 >= v7)
      {
        break;
      }

      a2 = (a2 + 1);
    }

    while (a2 <= a3);
    v9 = v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  memset(&v35[v9], 32, v7 - v10);
  v35[v7] = 0;
  v11 = *(a5 + 48);
  if (v11 < 2)
  {
    v16 = 0;
    v13 = 0;
    v15 = *(a5 + 48);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a5 + 48);
    v15 = *(a5 + 48);
    do
    {
      v16 = (v14 + v12) >> 1;
      if (v7)
      {
        v17 = 4 * v16;
        v18 = *(a5 + 40);
        v19 = *(v18 + (4 * v16));
        if (v35[0] >= v19)
        {
          v21 = 0;
          v20 = 0;
          v22 = v35[0];
          while (v22 <= v19)
          {
            v20 = ++v21;
            if (v21 >= v7)
            {
              goto LABEL_22;
            }

            ++v17;
            v22 = v35[v21];
            v19 = *(v18 + v17);
            if (v22 < v19)
            {
              goto LABEL_20;
            }
          }

          v13 = v16;
        }

        else
        {
          v20 = 0;
LABEL_20:
          v15 = v16;
        }
      }

      else
      {
        v20 = 0;
      }

LABEL_22:
      if (v20 == v7)
      {
        break;
      }

      v14 = v15;
      v12 = v13;
    }

    while (v15 - v13 >= 2);
  }

  if (v15 - v13 >= 2)
  {
    v13 = v16;
  }

  if (v13)
  {
    v23 = 0;
    v24 = v13;
    while (1)
    {
      if (v7 && (v25 = 4 * v24, v26 = *(a5 + 40), v35[0] == *(v26 + (4 * v24))))
      {
        v27 = 0;
        do
        {
          v28 = ++v27;
          if (v27 >= v7)
          {
            break;
          }

          ++v25;
        }

        while (v35[v27] == *(v26 + v25));
      }

      else
      {
        v28 = 0;
      }

      if (v28 != v7)
      {
        break;
      }

      --v24;
      ++v23;
      if (!v24)
      {
        LOWORD(v24) = 0;
        goto LABEL_42;
      }
    }

    LOWORD(v13) = v23;
  }

  else
  {
    LOWORD(v24) = 0;
    LOWORD(v13) = 0;
  }

LABEL_42:
  result = v24;
  for (i = result + 1 + v13; i != v11; i = result + 1 + v13)
  {
    if (v7 && (v31 = 4 * i, v32 = *(a5 + 40), v35[0] == *(v32 + v31)))
    {
      v33 = 0;
      do
      {
        v34 = ++v33;
        if (v33 >= v7)
        {
          break;
        }

        ++v31;
      }

      while (v35[v33] == *(v32 + v31));
    }

    else
    {
      v34 = 0;
    }

    if (v34 != v7)
    {
      break;
    }

    LOWORD(v13) = v13 + 1;
  }

  *a4 = v13;
  return result;
}

uint64_t SFchkwrd(uint64_t a1, uint64_t a2, char *__src, int a4, unsigned int a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  v9 = __src;
  v12 = *(a2 + 112);
  v13 = *(a2 + 32);
  v47 = v13[7];
  __dst = v13[6];
  v14 = *(a1 + 56);
  v15 = *(a2 + 3192);
  v16 = v13[5];
  if (!*(a2 + 2))
  {
    if (*(a1 + 55) == 2 && *(a2 + 3490) == 64 && **(a2 + 3496))
    {
      __src[a4 - **(a2 + 3496)] = -95;
    }

    v22 = *(a2 + 18);
    if ((v22 & 0x40) != 0 && !*(a2 + 3472))
    {
      return 11;
    }

    v23 = *(a1 + 55);
    if (v23 == 5 && (**(a2 + 3496) & 0x30) != 0)
    {
      v24 = *(a2 + 3490);
      if ((v24 & 0x30) != 0 && ((**(a2 + 3496) & 0x10) == 0 && (v24 & 0x10) != 0 || (**(a2 + 3496) & 0x20) == 0 && (v24 & 0x20) != 0))
      {
        return 11;
      }
    }

    if ((v22 & 1) != 0 || (a5 & 0xFFFFFFFB) == 0 && (v22 & 0x20) != 0)
    {
      return 11;
    }

    if (v23 == 1 && *(a2 + 3512))
    {
      if (!**(a2 + 3496))
      {
        return 11;
      }

      v45 = v14;
      v25 = *(*(a2 + 32) + 32);
      strcpy(v25, "ne");
      strcpy(v25 + 2, __src);
      v8 += 2;
      v9 = v25;
      v14 = v45;
    }
  }

  if (*(a2 + 3184) && *(a2 + 3206))
  {
    strcpy(*(v15 + 8), v9);
    *(v15 + 17) = *(a2 + 88);
    *(v15 + 20) = *(a2 + 92);
    *(v15 + 24) = *(a2 + 96);
    *(v15 + 2) = *(a2 + 3204);
    *v15 = 0;
    *(v15 + 42) = 1;
    v17 = 1 << (*(a1 + 55) - 1);
    if (!*(a1 + 55))
    {
      LODWORD(v17) = -1;
    }

    *(v15 + 36) = v17;
    PDword(v15, 1, 1);
    v18 = *(v15 + 50);
    if (*(v15 + 50))
    {
      *(a2 + 102) = v18;
      if (v18 >= 1)
      {
        v19 = *(v15 + 104);
        while (*(*v19 + 71) != v7 || !*(*v19 + 70))
        {
          v19 += 8;
          if (!--v18)
          {
            goto LABEL_12;
          }
        }

        return 11;
      }
    }
  }

LABEL_12:
  if (!*(a2 + 2))
  {
    if (!v12)
    {
      v46 = v14;
      v26 = (a2 + 88);
      if (v7 || *(a2 + 88) != 3)
      {
        strcpy(v16, v9);
        goto LABEL_63;
      }

      v27 = 0;
      goto LABEL_49;
    }

    if (!*(v12 + 34) && !*(v12 + 44) || (*(a2 + 3492) & 0x200) != 0 || SFcltcmp(a1, a2) == 10 && SFcltscr(v9, v8, a1, v12) == 10)
    {
      v46 = v14;
      v26 = (a2 + 88);
      if (v7 || *(a2 + 88) != 3)
      {
        strcpy(v16, v9);
LABEL_56:
        if (*v12 && (*(v12 + 34) || *(v12 + 44)))
        {
          if (v7 == 4)
          {
            v29 = 0;
          }

          else
          {
            v29 = v7;
          }

          v30 = *(v12 + 76);
          v31 = v8;
          v32 = v12 + 80;
          v33 = v16;
LABEL_67:
          SLrecap(v33, v31, v29, v32, v30, v46);
          v34 = *(a1 + 55);
          switch(v34)
          {
            case 5:
              goto LABEL_70;
            case 15:
              if (*v26 == 2 || (*(a2 + 3490) & 0x40) != 0 && (*(a2 + 92) & 0x80000000) != 0)
              {
                SFremacc(v16, v46, 15);
              }

              v35 = v8 - 1;
              if (v9[v35] == 253 && *v26 == 2)
              {
                v16[v35] = -81;
              }

              break;
            case 8:
LABEL_70:
              if ((*(a2 + 3490) & 0x40) != 0)
              {
                SFremacc(v16, v46, v34);
              }

              break;
          }

          if (v12 && (*(a2 + 3492) & 0x200) == 0)
          {
            if (*(v12 + 34))
            {
              v36 = __dst;
              strcpy(__dst, (v12 + 34));
              v37 = *(v12 + 16);
              v38 = v46;
              v39 = v47;
              if (v37 != 3)
              {
                v40 = strlen(__dst);
                if (v37 == 4)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = *(v12 + 16);
                }

                SLrecap(__dst, v40, v41, 0, v37, v46);
              }

              strcat(__dst, v16);
            }

            else
            {
              v36 = __dst;
              strcpy(__dst, v16);
              v38 = v46;
              v39 = v47;
            }

            if (*(v12 + 44))
            {
              strcpy(v39, (v12 + 44));
              v42 = *(v12 + 17);
              if (v42 != 3)
              {
                v43 = strlen(v39);
                if (v42 == 4)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = *(v12 + 17);
                }

                SLrecap(v39, v43, v44, 0, v42, v38);
              }

              strcat(v36, v39);
            }

            strcpy(v16, v36);
          }

          v21 = strlen(v16);
          v20 = v16;
          goto LABEL_98;
        }

LABEL_63:
        if (v7 == 4)
        {
          v29 = 0;
        }

        else
        {
          v29 = v7;
        }

        v30 = *v26;
        v31 = v8;
        v33 = v16;
        v32 = a6;
        goto LABEL_67;
      }

      v27 = strlen((v12 + 34));
LABEL_49:
      if ((*(a2 + 92 + 4 * (v27 >> 5)) >> ~v27))
      {
        if ((*(a2 + 92 + 4 * ((v27 + 1) >> 5)) >> ~(v27 + 1)))
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
      }

      strcpy(v16, v9);
      if (!v12)
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }

    return 11;
  }

  if (v7)
  {
    SLrecap(v9, v8, v7, a6, v7, v14);
  }

  v20 = v9;
  v21 = v8;
LABEL_98:

  return SFadd1(v20, v21, a2, 1);
}

uint64_t SFcltchk(uint64_t a1, int a2, int a3, unsigned __int16 *a4, _WORD *a5, unsigned int a6, uint64_t a7)
{
  SLfun(a1, a2, a3, a4, a5);
  v11 = 0;
  v12 = *a5 & (((a6 - 1) & 0xFFFC) >> 2);
  *a5 &= ((a6 - 1) & 0xFFFC) >> 2;
  v13 = *a4 & 7;
  v14 = 3 - v13;
  v15 = 2 * v13;
  while (1)
  {
    v16 = bswap32(*(a7 + 4 * v12));
    if (!v16)
    {
      return 11;
    }

    if ((v16 & 0x7FFF) == *a4)
    {
      break;
    }

    v14 += v15;
    v17 = v12 + v14;
    if ((a6 - 1) >> 2 >= v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = a6 >> 2;
    }

    v12 = v17 - v18;
    *a5 = v12;
    if (v11++ >= 0xA)
    {
      return 11;
    }
  }

  return 10;
}

uint64_t SFcltcmp(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 112);
  __strcpy_chk();
  v5 = *(a1 + 55);
  v6 = 1;
  if (v5 > 0xC || ((1 << v5) & 0x1228) == 0)
  {
    goto LABEL_13;
  }

  if (*(v4 + 34))
  {
    v6 = (*(v4 + 88) & *(v4 + 58)) != 0;
  }

  if (!*(v4 + 44))
  {
LABEL_13:
    v9 = 1;
  }

  else
  {
    v8 = (*(v4 + 90) & *(v4 + 60));
    v9 = v8 != 0;
    if (v5 == 5 && (*(a2 + 3490) & 0x40) != 0 && *(a2 + 88) == 2 && !SLstrcmp(v12, "-la"))
    {
      v9 = (*(v4 + 60) & 0x1A00 | v8) != 0;
    }
  }

  if (v6 && v9)
  {
    result = 10;
  }

  else
  {
    result = 11;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SFcltdb(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 55);
  v3 = *(a2 + 112);
  if ((*(a2 + 3492) & 0x200) == 0 || *(a2 + 40) <= 0)
  {
    *(v3 + 58) = 0;
  }

  if (v2 <= 7)
  {
    if (v2 == 3)
    {
      v15 = *(v3 + 62);
      v16 = (v15 & 0xF) - 1;
      if (v16 <= 3)
      {
        *(v3 + 58) |= 0x400020000020001uLL >> (16 * v16);
      }

      v17 = (v15 >> 4) & 7;
      if (v17 == 2)
      {
        v8 = *(v3 + 60) | 2;
        goto LABEL_47;
      }

      if (v17 == 1)
      {
        v8 = *(v3 + 60) | 1;
        goto LABEL_47;
      }

      return 1;
    }

    if (v2 != 5)
    {
      return 1;
    }

    v5 = *(v3 + 62);
    v6 = (v5 & 0xF) - 1;
    if (v6 <= 7 && ((0xEFu >> v6) & 1) != 0)
    {
      *(v3 + 58) |= word_1D2BF7860[v6];
    }

    v7 = (v5 >> 4) & 7;
    if (v7 > 3)
    {
      switch(v7)
      {
        case 4:
LABEL_44:
          v8 = *(v3 + 60) | 0x400;
          goto LABEL_47;
        case 5:
LABEL_46:
          v8 = *(v3 + 60) | 0x800;
          goto LABEL_47;
        case 6:
          v8 = *(v3 + 60) | 0x1000;
          goto LABEL_47;
      }

      return 1;
    }

    switch(v7)
    {
      case 1:
        goto LABEL_45;
      case 2:
LABEL_42:
        v8 = *(v3 + 60) | 0x100;
        goto LABEL_47;
      case 3:
LABEL_22:
        v8 = *(v3 + 60) | 0x200;
LABEL_47:
        *(v3 + 60) = v8;
        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 8:
        v9 = *(v3 + 62);
        *(v3 + 92) = v9 & 0xF;
        v10 = (32 * v9) & 0xE00;
        *(v3 + 60) = (32 * v9) & 0xE00;
        v11 = *(a2 + 40);
        if (v11 <= 2)
        {
          if ((v9 & 0xF) != 0)
          {
            *(v3 + 2 * v11 + 64) |= v9 << 12;
          }

          if (v10)
          {
            v12 = v3 + 2 * *(a2 + 40);
            *(v12 + 64) |= v10 >> 8;
          }
        }

        return 1;
      case 9:
        v13 = *(v3 + 62);
        v14 = (v13 & 0xF) - 1;
        if (v14 <= 0xA)
        {
          *(v3 + 58) |= word_1D2BF7870[v14];
        }

        v8 = *(v3 + 60) | (16 * v13) & 0x100;
        goto LABEL_47;
      case 12:
        v4 = *(v3 + 62) & 7;
        if (v4 > 1)
        {
          if (v4 != 2)
          {
            if (v4 != 3)
            {
              if (v4 != 4)
              {
                return 1;
              }

              goto LABEL_46;
            }

            goto LABEL_44;
          }

          goto LABEL_22;
        }

        if ((*(v3 + 62) & 7) != 0)
        {
          if (v4 == 1)
          {
            goto LABEL_42;
          }

          return 1;
        }

LABEL_45:
        v8 = *(v3 + 60) | 0x80;
        goto LABEL_47;
    }
  }

  return 1;
}

uint64_t SFcltscr(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 55);
  v7 = a4 + 34;
  v8 = *(a3 + 56);
  if (*(a4 + 34))
  {
    v9 = *a1;
    if (v9 != 104 && (*(v8 + 4 * v9) & 0x10000000) == 0)
    {
      if (v6 != 5 || SLstrcmp((a4 + 34), "d'"))
      {
        return 11;
      }

      v15 = "yeux";
      v16 = a1;
      goto LABEL_32;
    }
  }

  if (*(a3 + 55) > 8u)
  {
    if (v6 != 12)
    {
      if (v6 != 9 || (!*(a4 + 34) || (*(a4 + 88) & 0x40) == 0 || *a1 == 105 || (*(v8 + 4 * a1[1]) & 0x10000000) == 0) && (SLstrcmp((a4 + 34), "c'") || (*(v8 + 4 * *a1) & 0x800) != 0))
      {
        return 10;
      }

      return 11;
    }

    if ((*(a4 + 90) & 0x80000000) == 0)
    {
      return 10;
    }

    v23 = &a1[a2];
    v24 = *(v23 - 1);
    if ((*(a4 + 90) & 0x20) != 0)
    {
      if (v24 == 114 && (((*(v23 - 2) - 97) >> 1) | ((*(v23 - 2) - 97) << 7)) < 8u)
      {
        return dword_1D2BF7888[(((*(v23 - 2) - 97) >> 1) | ((*(v23 - 2) - 97) << 7))];
      }

      return 11;
    }

    result = 10;
    if ((v24 - 224) > 0x14 || ((1 << (v24 + 32)) & 0x101401) == 0)
    {
      if (v24 == 105)
      {
        return 10;
      }

      else
      {
        return 11;
      }
    }

    return result;
  }

  if (v6 == 3)
  {
    if (!*(a4 + 44))
    {
      return 10;
    }

    v17 = *(a4 + 60);
    if (v17 == 3)
    {
      return 10;
    }

    v18 = a1[a2 - 1];
    v19 = (*(v8 + 4 * v18) & 0x10000000) == 0 || v18 == 117;
    v20 = v19 || v18 == 249;
    v21 = v20;
    if (((v17 & 1) != 0 || v21) && ((v17 & 2) != 0 || !v21))
    {
      return 10;
    }

    return 11;
  }

  if (v6 != 5 || !*(a4 + 44) || (*(a4 + 90) & 0x80000000) == 0)
  {
    return 10;
  }

  v11 = &a1[a2];
  v12 = *(v11 - 1);
  result = 11;
  if (v12 > 0x72)
  {
    if (*(v11 - 1) <= 0x77u)
    {
      if (v12 != 115)
      {
        if (v12 != 116)
        {
          return result;
        }

        goto LABEL_81;
      }

      if (!SLstrcmp((a4 + 44), "-je") || !SLstrcmp((v7 + 10), "-tu"))
      {
        return 10;
      }
    }

    else
    {
      if (v12 == 120)
      {
        goto LABEL_70;
      }

      if (v12 != 122)
      {
        if (v12 != 233)
        {
          return result;
        }

LABEL_70:
        if (!SLstrcmp((a4 + 44), "-je") || !SLstrcmp((v7 + 10), "-tu") && *(v11 - 1) == 120)
        {
          return 10;
        }

        return 11;
      }
    }

    if (!SLstrcmp((v7 + 10), "-y") || !SLstrcmp((v7 + 10), "-en"))
    {
      return 10;
    }

    v15 = "-y-en";
LABEL_93:
    v16 = (v7 + 10);
LABEL_32:
    if (!SLstrcmp(v16, v15))
    {
      return 10;
    }

    return 11;
  }

  if (*(v11 - 1) > 0x63u)
  {
    if (v12 != 100)
    {
      if (v12 != 101)
      {
        if (v12 != 105)
        {
          return result;
        }

        v14 = SLstrcmp((a4 + 44), "-je");
        result = 11;
        if (a2 < 2 || v14 || *(v11 - 2) != 97)
        {
          return result;
        }

        return 10;
      }

      goto LABEL_76;
    }

LABEL_81:
    if (!SLstrcmp((a4 + 44), "-il") || !SLstrcmp((v7 + 10), "-elle") || !SLstrcmp((v7 + 10), "-on"))
    {
      return 10;
    }

    if (SLstrcmp((v7 + 10), "-ils"))
    {
      v26 = SLstrcmp((v7 + 10), "-elles");
      result = 11;
      if (a2 < 2 || v26)
      {
        return result;
      }
    }

    else if (a2 < 2)
    {
      return 11;
    }

    if (*(v11 - 2) == 110)
    {
      return 10;
    }

    return 11;
  }

  if (v12 == 97 || v12 == 99)
  {
LABEL_76:
    if (!SLstrcmp((a4 + 44), "-t-il") || !SLstrcmp((v7 + 10), "-t-elle"))
    {
      return 10;
    }

    v15 = "-t-on";
    goto LABEL_93;
  }

  return result;
}

uint64_t SFcor1qd(const char *a1, void *a2, unsigned __int16 *a3)
{
  v5 = a2[148];
  v6 = a3[1067];
  v7 = a3[1068];
  v8 = a3[1069] - 1;
  v9 = a3[1070];
  v10 = v7 + v6;
  v11 = strlen(a1);
  v70 = 0;
  v12 = (v5 + (v7 + v6));
  v13 = *v12;
  v14 = *(v5 + v7);
  v15 = v12[1];
  v16 = *(v5 + v7 + 1);
  v17 = *(v5 + v8 + 1);
  v18 = *(v5 + (v8 + v6) + 1);
  v66 = *(v5 + v8 + 1);
  v67 = v18;
  if (v6 >= 2)
  {
    v19 = a3;
    v20 = v7;
    v21 = v8;
    v22 = (v9 - 1);
    v23 = v11;
    v24 = v10;
    v25 = (v8 + v6);
    v26 = (v9 + 255);
    v57 = v19 + 128;
    v27 = (v15 | (v16 << 8)) - 1;
    v28 = (v13 | (v14 << 8)) - 1;
    v29 = 1;
    v30 = 32;
    v31 = 32;
    do
    {
      v32 = *(a1 + 1);
      v33 = *a1;
      while (1)
      {
        if (v28 >= v27)
        {
          v17 = *(v5 + ++v29 + v21);
          v18 = *(v5 + v29 + v25);
          v66 = *(v5 + v29 + v21);
          v67 = v18;
          v28 = v27;
          v27 = (*(v5 + v29 + v24) | (*(v5 + v20 + v29) << 8)) - 1;
        }

        v34 = *(v5 - 1 + (v28 + 1));
        v35 = (v5 + (v34 + v22));
        v36 = (v5 + (v34 + v26));
        v37 = v5 + (v28 + 3);
        v38 = (v37 - 2);
        v39 = (v37 - 1);
        if (v34 == 255)
        {
          v36 = v39;
          v35 = v38;
        }

        v40 = *v35;
        v41 = *v36;
        if (v17 == v32 && v18 == v33)
        {
          v42 = v17;
          goto LABEL_18;
        }

        if (v17 == v33 && (v18 == v32 || v18 == *(a1 + 2) || v18 == v17))
        {
          break;
        }

        v28 = v27;
        if (v6 <= v29)
        {
          return 10;
        }
      }

      v42 = v32;
LABEL_18:
      if (v34 == 255)
      {
        v28 += 3;
      }

      else
      {
        ++v28;
      }

      if (v40)
      {
        v30 = v40;
      }

      v68 = v30;
      if (v41)
      {
        v31 = v41;
      }

      v69 = v31;
      if (v31 == 32)
      {
        if (v30 == 32)
        {
          v43 = v18 != 32;
          if (v18 == 32)
          {
            v44 = 1;
          }

          else
          {
            v44 = 2;
          }
        }

        else
        {
          v43 = 0;
          v44 = 3;
        }
      }

      else
      {
        v43 = 0;
        v44 = 4;
      }

      if (v17 == v33)
      {
        v45 = v18 == v17 && v30 == v42;
        v46 = *(a1 + 2);
        v48 = v45 && v31 == v46;
        if (v18 == v42)
        {
          if (v31 == v46 && v30 == v18)
          {
            v48 = 1;
          }

          if (v30 == v46 && (v31 == v30 || v31 == *(a1 + 4) || v31 == *(a1 + 3)))
          {
            v48 = 1;
          }

          if (v30 == *(a1 + 3) && (v31 == v46 || v31 == *(a1 + 4)))
          {
            v48 = 1;
          }
        }

        if (v18 == v46)
        {
          v50 = *(a1 + 3);
          if ((v31 == v50 || v31 == 32) && v30 == v42)
          {
            v48 = 1;
          }

LABEL_78:
          if (v30 == v50 && v31 == *(a1 + 4))
          {
LABEL_81:
            v58 = v31;
            v59 = v30;
            v60 = v25;
            v61 = v24;
            v63 = v21;
            v64 = v20;
            v62 = v19;
            v53 = SFcorqbr(a2, v19, &v66, v44, a1, v23, *(v19 + 2162), *(v19 + 2164), *(v19 + 2166), HIWORD(*(v19 + 2166)));
            v31 = v58;
            v30 = v59;
            v25 = v60;
            v24 = v61;
            v19 = v62;
            v21 = v63;
            v20 = v64;
            if (v53 == 10)
            {
              if (*(v62 + 2132) > 499)
              {
                return 10;
              }

              v54 = 0;
              v55 = v57;
              do
              {
                *(v55 + 4 * *(v62 + 2132)) = *(&v66 + v54++);
                ++v55;
              }

              while (v54 != 4);
              ++*(v62 + 2132);
            }

            goto LABEL_86;
          }
        }
      }

      else
      {
        if (v17 != v32)
        {
          goto LABEL_86;
        }

        v48 = v18 == v33 && (v43 || v30 == *(a1 + 2) && (v31 == 32 || v31 == *(a1 + 3)));
        if (v18 == *(a1 + 2))
        {
          v50 = *(a1 + 3);
          goto LABEL_78;
        }
      }

      if (v48)
      {
        goto LABEL_81;
      }

LABEL_86:
      v17 = v66;
      v18 = v67;
    }

    while (v6 > v29);
  }

  return 10;
}

uint64_t SFcor2qd(const char *a1, void *a2, uint64_t a3)
{
  v5 = a2[148];
  v6 = *(a3 + 2134);
  v7 = *(a3 + 2136);
  v8 = *(a3 + 2138) - 1;
  v9 = *(a3 + 2140);
  v10 = strlen(a1);
  v71 = 0;
  v11 = (v5 + (v7 + v6));
  v12 = *v11;
  v13 = *(v5 + v7);
  v14 = v11[1];
  v15 = *(v5 + v7 + 1);
  v16 = *(v5 + (v8 + v6) + 1);
  v67 = *(v5 + v8 + 1);
  v68 = v16;
  if (v6 >= 2)
  {
    v17 = a1;
    v18 = v6;
    v19 = v8;
    v20 = (v9 - 1);
    v61 = v10;
    v21 = (v7 + v6);
    v22 = (v8 + v6);
    v23 = v5 - 1;
    v24 = (v14 | (v15 << 8)) - 1;
    v25 = (v12 | (v13 << 8)) - 1;
    v26 = (v9 + 255);
    v27 = 32;
    v28 = 1;
    v29 = 32;
    v60 = v26;
    do
    {
      if (v25 >= v24)
      {
        v28 = (v28 + 1);
        v30 = *(v5 + v28 + v22);
        v67 = *(v5 + v28 + v19);
        v68 = v30;
        v25 = v24;
        v24 = (*(v5 + v28 + v21) | (*(v5 + v7 + v28) << 8)) - 1;
      }

      v31 = *(v23 + (v25 + 1));
      v32 = (v5 + (v31 + v20));
      v33 = v5 + (v25 + 3);
      v34 = (v33 - 2);
      v35 = (v33 - 1);
      v36 = v31 == 255;
      if (v31 == 255)
      {
        v25 += 3;
      }

      else
      {
        ++v25;
      }

      if (v31 == 255)
      {
        v37 = v35;
      }

      else
      {
        v37 = (v5 + (v31 + v26));
      }

      if (v36)
      {
        v32 = v34;
      }

      v38 = *v32;
      v39 = *v37;
      v40 = *(a3 + 2152);
      if (*(a3 + 2152) >= 1)
      {
        v41 = *v17;
        if (v67 < v41)
        {
          goto LABEL_15;
        }

        if (v67 > v41)
        {
          return 10;
        }

        v42 = *(v17 + 1);
        if (v40 == 1)
        {
          if (v68 == v42)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v68 < v42)
          {
            goto LABEL_15;
          }

          if (v68 > v42)
          {
            return 10;
          }
        }
      }

      if (v38)
      {
        v27 = v38;
      }

      v69 = v27;
      if (v39)
      {
        v29 = v39;
      }

      v70 = v29;
      if (!v40 && v67 == *v17 && v68 == *(v17 + 1) && v27 == *(v17 + 2))
      {
        continue;
      }

      if (v29 == 32)
      {
        if (v27 == 32)
        {
          v43 = 0;
          if (v68 == 32)
          {
            v44 = 1;
          }

          else
          {
            v44 = 2;
          }
        }

        else
        {
          v44 = 3;
          v43 = 1;
        }
      }

      else
      {
        v43 = 0;
        v44 = 4;
      }

      if (v40 >= 3)
      {
        if (v27 == *(v17 + 2) && (v40 == 3 || v29 == *(v17 + 3)))
        {
          goto LABEL_46;
        }
      }

      else if (v40 == 2)
      {
        if (v27 != *(v17 + 2))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v40)
        {
          goto LABEL_46;
        }

        v52 = *v17;
        if (v67 == v52)
        {
LABEL_15:
          v25 = v24;
          continue;
        }

        v53 = *(v17 + 1);
        if (v68 == v52)
        {
          v54 = *(v17 + 2);
          v55 = v29 == v54;
          if (v27 != v53)
          {
            v55 = 0;
          }
        }

        else
        {
          v55 = 0;
          v54 = *(v17 + 2);
        }

        if (v68 == v53 && v27 == v54 && ((v43 & 1) != 0 || v29 == *(v17 + 3)))
        {
          v55 = 1;
        }

        if (v67 == v53 && v68 == v54 && v27 == *(v17 + 3))
        {
          if (v29 == *(v17 + 4) || v55)
          {
LABEL_46:
            v63 = v29;
            v64 = v28;
            v65 = v27;
            v66 = v24;
            v45 = v21;
            v46 = v20;
            v47 = v19;
            v48 = v18;
            v49 = v17;
            if (SFcorqbr(a2, a3, &v67, v44, v17, v61, *(a3 + 2162), *(a3 + 2164), *(a3 + 2166), HIWORD(*(a3 + 2166))) == 10)
            {
              v19 = v47;
              v17 = v49;
              v21 = v45;
              v23 = v5 - 1;
              v27 = v65;
              v24 = v66;
              v26 = v60;
              v28 = v64;
              v29 = v63;
              if (*(a3 + 2132) > 499)
              {
                return 10;
              }

              v18 = v48;
              v20 = v46;
              v50 = 0;
              v51 = a3 + 128;
              do
              {
                *(v51 + 4 * *(a3 + 2132)) = *(&v67 + v50++);
                ++v51;
              }

              while (v50 != 4);
              ++*(a3 + 2132);
            }

            else
            {
              v18 = v48;
              v19 = v47;
              v17 = v49;
              v20 = v46;
              v21 = v45;
              v23 = v5 - 1;
              v27 = v65;
              v24 = v66;
              v26 = v60;
              v28 = v64;
              v29 = v63;
            }

            continue;
          }
        }

        else if (v55)
        {
          goto LABEL_46;
        }

        if (v68 != v54 && v68 != v53 && v68 != v52)
        {
          v25 = v24;
        }
      }
    }

    while (v18 > v28);
  }

  return 10;
}

uint64_t SFcor3qd(const char *a1, void *a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a2[148];
  v7 = *(a3 + 2134);
  v8 = *(a3 + 2136);
  v9 = *(a3 + 2138);
  v10 = *(a3 + 2140);
  v11 = strlen(a1);
  v12 = *(a3 + 2172);
  if (v11 - v12 <= 1)
  {
    v13 = v8;
    v14 = v7;
    v15 = v8 + v7;
    v16 = (v9 - 1);
    v17 = (a3 + 2172);
    memset(v83, 0, 256);
    memset(v82, 0, sizeof(v82));
    if (v12 != 255)
    {
      v18 = 0;
      do
      {
        if (v11 == v12)
        {
          v19 = v17[v18 + 1];
          v20 = *(a2[21] + v19);
          v21 = *(a2[22] + v19);
          v22 = *(a2[19] + 8 * v19);
          v83[*v22] = 1;
          if (v20 == 1)
          {
            v23 = &a1[v21];
          }

          else
          {
            v23 = (v22 + 1);
          }
        }

        else
        {
          if ((v11 - v12) != 1)
          {
            break;
          }

          v83[*a1] = 1;
          v23 = *(a2[19] + 8 * v17[v18 + 1]);
        }

        *(v82 + *v23) = 1;
        v18 += 2;
        v12 = v17[v18];
      }

      while (v12 != 255);
    }

    v81 = 0;
    v24 = (v6 + v15);
    v25 = *v24;
    v26 = (v6 + v8);
    v27 = *v26;
    v28 = v24[1];
    v29 = v26[1];
    v30 = *(v6 + (v9 - 1 + v7) + 1);
    v77 = *(v6 + (v9 - 1) + 1);
    v78 = v30;
    if (v7 >= 2)
    {
      v31 = (v10 - 1);
      v32 = (v8 + v7);
      v75 = (v9 - 1 + v7);
      v33 = (v28 | (v29 << 8)) - 1;
      v34 = (v25 | (v27 << 8)) - 1;
      v76 = (v10 + 255);
      v35 = 32;
      v36 = 1;
      v37 = 32;
      v72 = v14;
      v73 = v11;
      v70 = v31;
      v71 = v16;
      v69 = v15;
      while (1)
      {
        if (v34 >= v33)
        {
          v38 = *(v6 + ++v36 + v75);
          v77 = *(v6 + v36 + v16);
          v78 = v38;
          v34 = v33;
          v33 = (*(v6 + v36 + v32) | (*(v6 + v13 + v36) << 8)) - 1;
        }

        v39 = *(v6 - 1 + (v34 + 1));
        v40 = (v6 + (v39 + v31));
        v41 = v34 + 3;
        v42 = v6 + (v34 + 3);
        v43 = (v42 - 2);
        v44 = (v42 - 1);
        v45 = v39 == 255;
        if (v39 == 255)
        {
          v46 = v44;
        }

        else
        {
          v41 = v34 + 1;
          v46 = (v6 + (v39 + v76));
        }

        if (v45)
        {
          v40 = v43;
        }

        v47 = *v40;
        v48 = *v46;
        if (v47)
        {
          v35 = v47;
        }

        v79 = v35;
        if (v48)
        {
          v37 = v48;
        }

        v80 = v37;
        if (v37 == 32)
        {
          if (v35 == 32)
          {
            v49 = v78 == 32 ? 1 : 2;
          }

          else
          {
            v49 = 3;
          }
        }

        else
        {
          v49 = 4;
        }

        v34 = v33;
        if (v83[v77])
        {
          v34 = v33;
          if (*(v82 + v78))
          {
            v50 = *v17;
            v34 = v33;
            if (v50 != 255)
            {
              break;
            }
          }
        }

LABEL_66:
        if (v14 <= v36)
        {
          goto LABEL_67;
        }
      }

      v74 = v41;
      v51 = 0;
      v52 = 0;
      while (1)
      {
        v53 = (v11 - v50);
        if (v53 > 1)
        {
LABEL_56:
          if (v51 == 1)
          {
            v34 = v74;
          }

          else
          {
            v34 = v33;
          }

          goto LABEL_66;
        }

        if (v53 == 1 && *a1 != v77)
        {
          goto LABEL_65;
        }

        v54 = v17[v52 + 1];
        v55 = a2[21];
        v56 = *(v55 + v54);
        v57 = *(a2[22] + v54);
        if (!*(v55 + v54))
        {
          break;
        }

        if (v53 >= v49)
        {
          v58 = 0;
          v59 = 0;
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v60 = *(a2[19] + 8 * v54);
          v61 = v53;
          do
          {
            if (*(&v77 + v61) != *(v60 + v58))
            {
              break;
            }

            v59 = ++v58;
            v51 = 1;
            if (v58 >= v56)
            {
              break;
            }

            v61 = v53 + v58;
          }

          while (v61 < v49);
        }

        if (v59 + v53 == v49)
        {
          goto LABEL_59;
        }

        if (v59 == v56)
        {
          goto LABEL_50;
        }

LABEL_55:
        v52 += 2;
        v50 = v17[v52];
        if (v50 == 255)
        {
          goto LABEL_56;
        }
      }

      if (v53 == v49)
      {
        goto LABEL_59;
      }

      v58 = 0;
LABEL_50:
      v62 = v53 + v58;
      if (v62 < v49)
      {
        v63 = v57 - v56;
        do
        {
          if (*(&v77 + v62) != a1[v63 + v62])
          {
            break;
          }

          v62 = v53 + ++v58;
        }

        while (v62 < v49);
      }

      if (v62 == v49)
      {
LABEL_59:
        if (v37 != 32 || (v64 = SFcorqbr(a2, a3, &v77, v49, a1, v73, *(a3 + 2162), *(a3 + 2164), *(a3 + 2166), HIWORD(*(a3 + 2166))), v32 = v69, v31 = v70, v16 = v71, LOWORD(v11) = v73, v13 = v8, v14 = v72, v64 == 10))
        {
          if (*(a3 + 2132) > 499)
          {
            goto LABEL_67;
          }

          v65 = 0;
          v66 = a3 + 128;
          do
          {
            *(v66 + 4 * *(a3 + 2132)) = *(&v77 + v65++);
            ++v66;
          }

          while (v65 != 4);
          ++*(a3 + 2132);
        }

LABEL_65:
        v34 = v74;
        goto LABEL_66;
      }

      goto LABEL_55;
    }
  }

LABEL_67:
  v67 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t SFcor6qd(const char *a1, void *a2, unsigned __int16 *a3)
{
  v4 = a2;
  v157 = *MEMORY[0x1E69E9840];
  v6 = a2[7];
  v7 = a2[148];
  v115 = a3[1067];
  v116 = a3[1068];
  v8 = a3[1069];
  v9 = a3[1070];
  v10 = strlen(a1);
  v11 = a1;
  v12 = a3;
  v13 = v10;
  v14 = *(v12 + 2172);
  v15 = *a1;
  v16 = *(v6 + 4 * v15);
  if (v10 <= v14)
  {
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v17 = v115;
    v18 = v116;
    if ((v16 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v17 = v115;
    v18 = v116;
    if ((v16 & 0x10000000) == 0)
    {
      goto LABEL_152;
    }

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
  }

  v19 = 0;
  v20 = vdupq_n_s64(v15);
  v21 = xmmword_1D2BF78B0;
  v22 = xmmword_1D2BF78C0;
  v23 = xmmword_1D2BF78D0;
  v24 = xmmword_1D2BF78E0;
  v25 = xmmword_1D2BF78F0;
  v26 = xmmword_1D2BF7900;
  v27 = xmmword_1D2BF7910;
  v28 = &v141 + 7;
  v29 = xmmword_1D2BF7920;
  v30.i64[0] = 0x1000000010000000;
  v30.i64[1] = 0x1000000010000000;
  v31 = vdupq_n_s64(0x10uLL);
  do
  {
    v32 = vbicq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v29, v20), vceqq_s64(v27, v20)), vuzp1q_s32(vceqq_s64(v26, v20), vceqq_s64(v25, v20)))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v24, v20), vceqq_s64(v23, v20)), vuzp1q_s32(vceqq_s64(v22, v20), vceqq_s64(v21, v20))))), vuzp1q_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v19), v30)), vceqzq_s32(vandq_s8(*(v6 + v19 + 16), v30))), vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v19 + 32), v30)), vceqzq_s32(vandq_s8(*(v6 + v19 + 48), v30)))));
    if (v32.i8[0])
    {
      *(v28 - 7) = 1;
    }

    if (v32.i8[1])
    {
      *(v28 - 6) = 1;
    }

    if (v32.i8[2])
    {
      *(v28 - 5) = 1;
    }

    if (v32.i8[3])
    {
      *(v28 - 4) = 1;
    }

    if (v32.i8[4])
    {
      *(v28 - 3) = 1;
    }

    if (v32.i8[5])
    {
      *(v28 - 2) = 1;
    }

    if (v32.i8[6])
    {
      *(v28 - 1) = 1;
    }

    if (v32.i8[7])
    {
      *v28 = 1;
    }

    if (v32.i8[8])
    {
      v28[1] = 1;
    }

    if (v32.i8[9])
    {
      v28[2] = 1;
    }

    if (v32.i8[10])
    {
      v28[3] = 1;
    }

    if (v32.i8[11])
    {
      v28[4] = 1;
    }

    if (v32.i8[12])
    {
      v28[5] = 1;
    }

    if (v32.i8[13])
    {
      v28[6] = 1;
    }

    if (v32.i8[14])
    {
      v28[7] = 1;
    }

    if (v32.i8[15])
    {
      v28[8] = 1;
    }

    v26 = vaddq_s64(v26, v31);
    v27 = vaddq_s64(v27, v31);
    v29 = vaddq_s64(v29, v31);
    v25 = vaddq_s64(v25, v31);
    v24 = vaddq_s64(v24, v31);
    v23 = vaddq_s64(v23, v31);
    v19 += 64;
    v22 = vaddq_s64(v22, v31);
    v28 += 16;
    v21 = vaddq_s64(v21, v31);
  }

  while (v19 != 1024);
  *(&v125 + *(a1 + 1)) = 1;
LABEL_40:
  v33 = v18 + v17;
  v114 = (v8 - 1);
  v34 = (v12 + 2172);
  if (v14 != 255 && v10 == v14)
  {
    v35 = 0;
    v36 = v4[21];
    v37 = v4[22];
    v38.i64[0] = 0x1000000010000000;
    v38.i64[1] = 0x1000000010000000;
    v39 = vdupq_n_s64(0x10uLL);
    v40 = v4[19];
    do
    {
      v41 = v34[v35 + 1];
      v42 = *(v36 + v41);
      v43 = *(v37 + v41);
      v44 = *(v40 + 8 * v41);
      *(&v141 + *v44) = 1;
      if (v43 == 1)
      {
        v45 = *(a1 + 1);
        if ((*(v6 + 4 * v45) & 0x10000000) != 0)
        {
          v46 = 0;
          v47 = &v125 + 7;
          v48 = vdupq_n_s64(v45);
          v49 = xmmword_1D2BF7920;
          v50 = xmmword_1D2BF7910;
          v51 = xmmword_1D2BF7900;
          v52 = xmmword_1D2BF78F0;
          v53 = xmmword_1D2BF78E0;
          v54 = xmmword_1D2BF78D0;
          v55 = xmmword_1D2BF78C0;
          v56 = xmmword_1D2BF78B0;
          do
          {
            v57 = vbicq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v49, v48), vceqq_s64(v50, v48)), vuzp1q_s32(vceqq_s64(v51, v48), vceqq_s64(v52, v48)))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v53, v48), vceqq_s64(v54, v48)), vuzp1q_s32(vceqq_s64(v55, v48), vceqq_s64(v56, v48))))), vuzp1q_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v46), v38)), vceqzq_s32(vandq_s8(*(v6 + v46 + 16), v38))), vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v46 + 32), v38)), vceqzq_s32(vandq_s8(*(v6 + v46 + 48), v38)))));
            if (v57.i8[0])
            {
              *(v47 - 7) = 1;
            }

            if (v57.i8[1])
            {
              *(v47 - 6) = 1;
            }

            if (v57.i8[2])
            {
              *(v47 - 5) = 1;
            }

            if (v57.i8[3])
            {
              *(v47 - 4) = 1;
            }

            if (v57.i8[4])
            {
              *(v47 - 3) = 1;
            }

            if (v57.i8[5])
            {
              *(v47 - 2) = 1;
            }

            if (v57.i8[6])
            {
              *(v47 - 1) = 1;
            }

            if (v57.i8[7])
            {
              *v47 = 1;
            }

            if (v57.i8[8])
            {
              v47[1] = 1;
            }

            if (v57.i8[9])
            {
              v47[2] = 1;
            }

            if (v57.i8[10])
            {
              v47[3] = 1;
            }

            if (v57.i8[11])
            {
              v47[4] = 1;
            }

            if (v57.i8[12])
            {
              v47[5] = 1;
            }

            if (v57.i8[13])
            {
              v47[6] = 1;
            }

            if (v57.i8[14])
            {
              v47[7] = 1;
            }

            if (v57.i8[15])
            {
              v47[8] = 1;
            }

            v51 = vaddq_s64(v51, v39);
            v50 = vaddq_s64(v50, v39);
            v49 = vaddq_s64(v49, v39);
            v52 = vaddq_s64(v52, v39);
            v53 = vaddq_s64(v53, v39);
            v54 = vaddq_s64(v54, v39);
            v46 += 64;
            v55 = vaddq_s64(v55, v39);
            v47 += 16;
            v56 = vaddq_s64(v56, v39);
          }

          while (v46 != 1024);
        }
      }

      if (v42 == 1)
      {
        v58 = &a1[v43];
      }

      else
      {
        v58 = v44 + 1;
      }

      *(&v125 + *v58) = 1;
      v35 += 2;
      v59 = v34[v35];
    }

    while (v59 != 255 && v13 == v59);
  }

  v118 = v13;
  v124 = 0;
  v61 = (v7 + v33);
  v62 = *v61;
  v63 = v116;
  v64 = (v7 + v116);
  v65 = *v64;
  v66 = v61[1];
  v67 = v64[1];
  v68 = (v8 - 1);
  v69 = *(v7 + (v8 - 1 + v17) + 1);
  v120 = *(v7 + (v8 - 1) + 1);
  v121 = v69;
  if (v17 >= 2)
  {
    v70 = (v9 - 1);
    v71 = v33;
    v117 = (v8 - 1 + v17);
    v72 = (v66 | (v67 << 8)) - 1;
    v73 = (v62 | (v65 << 8)) - 1;
    v119 = (v9 + 255);
    v74 = v7 - 1;
    v109 = v12 + 128;
    v75 = 32;
    v76 = 1;
    v77 = 32;
    v112 = v11;
    v113 = v4;
    v110 = v33;
    v111 = v70;
    do
    {
      if (v73 >= v72)
      {
        v78 = *(v7 + ++v76 + v117);
        v120 = *(v7 + v76 + v68);
        v121 = v78;
        v73 = v72;
        v72 = (*(v7 + v76 + v71) | (*(v7 + v63 + v76) << 8)) - 1;
      }

      v79 = *(v74 + (v73 + 1));
      v80 = (v7 + (v79 + v70));
      v81 = v7 + (v73 + 3);
      v82 = (v81 - 2);
      v83 = (v81 - 1);
      v84 = v79 == 255;
      if (v79 == 255)
      {
        v73 += 3;
      }

      else
      {
        ++v73;
      }

      if (v79 == 255)
      {
        v85 = v83;
      }

      else
      {
        v85 = (v7 + (v79 + v119));
      }

      if (v84)
      {
        v80 = v82;
      }

      v86 = *v80;
      v87 = *v85;
      v88 = *(v12 + 2152);
      if (*(v12 + 2152) >= 1)
      {
        v89 = *v11;
        if (v120 < v89)
        {
          goto LABEL_127;
        }

        if (v120 > v89)
        {
          break;
        }

        v90 = *(v11 + 1);
        if (v88 == 1)
        {
          if (v121 == v90)
          {
            goto LABEL_127;
          }
        }

        else
        {
          if (v121 < v90)
          {
            goto LABEL_127;
          }

          if (v121 > v90)
          {
            break;
          }
        }
      }

      if (v86)
      {
        v75 = v86;
      }

      v122 = v75;
      if (v87)
      {
        v77 = v87;
      }

      v123 = v77;
      if (!v88 && v120 == *v11 && v121 == *(v11 + 1) && v75 == *(v11 + 2))
      {
        continue;
      }

      if (v77 == 32)
      {
        if (v75 == 32)
        {
          if (v121 == 32)
          {
            v91 = 1;
          }

          else
          {
            v91 = 2;
          }
        }

        else
        {
          v91 = 3;
        }
      }

      else
      {
        v91 = 4;
      }

      if (!*(&v141 + v120) || !*(&v125 + v121))
      {
LABEL_127:
        v73 = v72;
        continue;
      }

      if ((*(v6 + 4 * v120) & 0x10000000) == 0 || (*(v6 + 4 * *v11) & 0x10000000) == 0)
      {
        v92 = *v34;
        if (v92 == 255)
        {
          v73 = v72;
        }

        else
        {
          v93 = 0;
          v94 = 0;
          do
          {
            v95 = (v118 - v92);
            if (v95 > 1)
            {
              break;
            }

            if (v95 == 1 && *v11 != v120)
            {
              goto LABEL_151;
            }

            v96 = 0;
            v97 = v34[v93 + 1];
            v98 = *(v4[21] + v97);
            if (*(v4[21] + v97) && v95 < v91)
            {
              v99 = 0;
              v96 = 0;
              v100 = *(v4[19] + 8 * v97);
              v101 = v95;
              do
              {
                if (*(&v120 + v101) != *(v100 + v99))
                {
                  break;
                }

                v96 = ++v99;
                v94 = 1;
                if (v99 >= v98)
                {
                  break;
                }

                v101 = v95 + v99;
              }

              while (v101 < v91);
            }

            if (v96 == v98 || v96 + v95 == v91)
            {
              goto LABEL_145;
            }

            v93 += 2;
            v92 = v34[v93];
          }

          while (v92 != 255);
          if (v94 != 1)
          {
            v73 = v72;
          }
        }

        goto LABEL_151;
      }

LABEL_145:
      v102 = v4;
      v103 = v12;
      if (SFcorqbr(v102, v12, &v120, v91, v11, v118, *(v12 + 2144), *(v12 + 2146), *(v12 + 2148), HIWORD(*(v12 + 2148))) != 10)
      {
        v12 = v103;
        v11 = v112;
        v4 = v113;
        v68 = v114;
        v17 = v115;
        v63 = v116;
        v71 = v110;
        v70 = v111;
LABEL_151:
        v74 = v7 - 1;
        continue;
      }

      v104 = *(v103 + 2132);
      v12 = v103;
      v11 = v112;
      v4 = v113;
      v68 = v114;
      v17 = v115;
      v63 = v116;
      v71 = v110;
      v70 = v111;
      v74 = v7 - 1;
      if (v104 > 499)
      {
        break;
      }

      v105 = 0;
      v106 = v109;
      do
      {
        *(v106 + 4 * *(v12 + 2132)) = *(&v120 + v105++);
        ++v106;
      }

      while (v105 != 4);
      ++*(v12 + 2132);
    }

    while (v17 > v76);
  }

LABEL_152:
  v107 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t SFcor8qd(const char *a1, void *a2, uint64_t a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = a2[148];
  v7 = *(a3 + 2134);
  v8 = *(a3 + 2140);
  v68 = *(a3 + 2136);
  v67 = (*(a3 + 2138) - 1);
  v9 = *(a3 + 2138) - 1 + v7;
  v10 = strlen(a1);
  memset(v89, 0, 256);
  memset(v74, 0, sizeof(v74));
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v11 = *(a1 + 1);
  *(v74 + v11) = 1;
  v12 = *a1;
  v89[v12] = 1;
  *(v74 + *(a1 + 2)) = 1;
  v89[v11] = 1;
  BYTE14(v75) = 1;
  v13 = (a3 + 2172);
  v14 = *(a3 + 2172);
  if (v14 != 255)
  {
    v15 = 0;
    do
    {
      if (v14 == v10)
      {
        v16 = v13[v15 + 1];
        v17 = *(a2[21] + v16);
        v18 = *(a2[22] + v16);
        v19 = *(a2[19] + 8 * v16);
        v89[*v19] = 1;
        if (v17 == 1)
        {
          v20 = &a1[v18];
        }

        else
        {
          v20 = v19 + 1;
        }
      }

      else
      {
        if ((v10 - v14) != 1)
        {
          break;
        }

        v89[v12] = 1;
        v20 = *(a2[19] + 8 * v13[v15 + 1]);
      }

      *(v74 + *v20) = 1;
      v15 += 2;
      v14 = v13[v15];
    }

    while (v14 != 255);
  }

  v73 = 0;
  v21 = (v6 + (v68 + v7));
  v22 = *v21;
  v23 = (v6 + v68);
  v24 = *v23;
  v25 = v21[1];
  v26 = v23[1];
  v27 = *(v6 + v67 + 1);
  v28 = *(v6 + v9 + 1);
  v69 = *(v6 + v67 + 1);
  v70 = v28;
  if (v7 < 2)
  {
    goto LABEL_79;
  }

  v66 = v9;
  v29 = (v25 | (v26 << 8)) - 1;
  v30 = (v22 | (v24 << 8)) - 1;
  v31 = 32;
  v32 = 1;
  v33 = 32;
  while (1)
  {
    if (v30 >= v29)
    {
      v27 = *(v6 + ++v32 + v67);
      v28 = *(v6 + v32 + v66);
      v69 = *(v6 + v32 + v67);
      v70 = v28;
      v30 = v29;
      v29 = (*(v6 + v32 + (v68 + v7)) | (*(v6 + v68 + v32) << 8)) - 1;
    }

    v34 = *(v6 - 1 + (v30 + 1));
    v35 = (v6 + v34 + (v8 - 1));
    v36 = v6 + (v30 + 3);
    v37 = (v36 - 2);
    v38 = (v36 - 1);
    v39 = v34 == 255;
    if (v34 == 255)
    {
      v40 = v30 + 3;
    }

    else
    {
      v40 = v30 + 1;
    }

    if (v34 == 255)
    {
      v41 = v38;
    }

    else
    {
      v41 = (v6 + v34 + (v8 + 255));
    }

    if (v39)
    {
      v35 = v37;
    }

    v42 = *v35;
    v43 = *v41;
    if (v42)
    {
      v31 = v42;
    }

    v71 = v31;
    if (v43)
    {
      v33 = v43;
    }

    v72 = v33;
    if (v33 == 32)
    {
      if (v31 == 32)
      {
        v44 = v28 == 32 ? 1 : 2;
      }

      else
      {
        v44 = 3;
      }
    }

    else
    {
      v44 = 4;
    }

    v30 = v29;
    if (v89[v27])
    {
      v30 = v29;
      if (*(v74 + v28))
      {
        break;
      }
    }

LABEL_55:
    if (v7 <= v32)
    {
      goto LABEL_79;
    }
  }

  v45 = *v13;
  if (v45 == 255)
  {
LABEL_36:
    if (v44 + 1 == v10)
    {
      v46 = 0;
      for (i = 0; ; ++i)
      {
        if (a1[i] == *(&v69 + v46))
        {
          ++v46;
        }

        else
        {
          if (v44 == v46)
          {
            goto LABEL_51;
          }

          if (i != v46)
          {
            break;
          }
        }
      }
    }

    v48 = 0;
    v49 = 0;
    while (1)
    {
      v50 = a1[v48];
      v51 = *(&v69 + v49);
      if (v50 == v51)
      {
        break;
      }

      if (v50 != 46)
      {
        if (v51 != 46)
        {
          v30 = v40;
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      ++v48;
LABEL_50:
      if (v44 == v49)
      {
        goto LABEL_51;
      }
    }

    ++v48;
LABEL_49:
    ++v49;
    goto LABEL_50;
  }

  v54 = 0;
  while (1)
  {
    v55 = v10 - v45;
    if (v55 > 1u)
    {
      goto LABEL_36;
    }

    v56 = v55;
    if (v55 == 1 && *a1 != v27)
    {
      goto LABEL_36;
    }

    v57 = v13[v54 + 1];
    v58 = *(a2[21] + v57);
    v59 = *(a2[22] + v57);
    if (!*(a2[21] + v57))
    {
      break;
    }

    v60 = 0;
    v61 = 0;
    do
    {
      if (v60 + v56 >= v44)
      {
        break;
      }

      if (*(&v69 + v60 + v56) != *(*(a2[19] + 8 * v57) + v61))
      {
        break;
      }

      v60 = ++v61;
    }

    while (v61 < v58);
    if (v60 + v56 == v44)
    {
      goto LABEL_51;
    }

    if (v60 == v58)
    {
      goto LABEL_71;
    }

LABEL_76:
    v54 += 2;
    v45 = v13[v54];
    if (v45 == 255)
    {
      goto LABEL_36;
    }
  }

  if (v44 == v56)
  {
    goto LABEL_51;
  }

  v61 = 0;
LABEL_71:
  v62 = v56 + v61;
  if (v62 < v44)
  {
    v63 = v59 - v58;
    do
    {
      if (*(&v69 + v62) != a1[v63 + v62])
      {
        break;
      }

      v62 = v56 + ++v61;
    }

    while (v62 < v44);
  }

  if (v62 != v44)
  {
    goto LABEL_76;
  }

LABEL_51:
  if (*(a3 + 2132) <= 499)
  {
    v52 = 0;
    v53 = a3 + 128;
    do
    {
      *(v53 + 4 * *(a3 + 2132)) = *(&v69 + v52++);
      ++v53;
    }

    while (v52 != 4);
    ++*(a3 + 2132);
    v30 = v40;
    goto LABEL_55;
  }

LABEL_79:
  v64 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t SFcorbr8(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  if ((a6 | a4) < 0)
  {
    return 0;
  }

  v10 = a1;
  if (a4 < 1)
  {
LABEL_6:
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    while (*(a3 + v11) == *(a5 + v11))
    {
      if (a4 == ++v11)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = *(a2 + 2172);
  if (v12 != 255)
  {
    v20 = 0;
    v21 = a2 + 2172;
    v22 = a3 + a4 + 1;
    v23 = a4 + 1;
    v36 = a4 + 1;
    do
    {
      v24 = a6 - v12;
      if (v11 < v24)
      {
        break;
      }

      v25 = *(a2 + 32);
      if (v25)
      {
        v26 = v24;
        v27 = *(v21 + v20 + 1);
        v28 = *(v10[21] + v27);
        v29 = *(v25 + 8);
        v30 = v29 > a3 || v22 > v29 + 455;
        if (!v30 && (v28 + v26) <= v23)
        {
          v35 = *(v10[22] + v27);
          v32 = v22;
          v33 = SLstrncmp((a3 + v26), *(v10[19] + 8 * v27), v28);
          v23 = v36;
          v22 = v32;
          v10 = a1;
          if (!v33)
          {
            v34 = SLstrcmp((a3 + v26 + v28), (a5 + v26 + v35));
            v23 = v36;
            v22 = v32;
            v10 = a1;
            if (!v34)
            {
              return 1;
            }
          }
        }
      }

      v20 += 2;
      v12 = *(v21 + v20);
    }

    while (v12 != 255);
  }

  if (a6 - 1 != a4)
  {
LABEL_16:
    v15 = 0;
    v16 = 0;
    while (1)
    {
      if (v16 == a6 && v15 == a4)
      {
        return 1;
      }

      v17 = *(a3 + v15);
      v18 = *(a5 + v16);
      if (v17 == v18)
      {
        break;
      }

      if (v17 != 46)
      {
        if (v18 != 46)
        {
          return 0;
        }

        goto LABEL_24;
      }

      ++v15;
LABEL_25:
      if (a6 < v16)
      {
        return 0;
      }
    }

    ++v15;
LABEL_24:
    ++v16;
    goto LABEL_25;
  }

  v13 = 0;
  LOWORD(v14) = 0;
  while (v14 != a6 || v13 != a4)
  {
    if (*(a3 + v13) == *(a5 + v14))
    {
      ++v13;
    }

    else if (v13 != v14)
    {
      goto LABEL_16;
    }

    v14 = (v14 + 1);
    if (v14 > a6)
    {
      goto LABEL_16;
    }
  }

  return 1;
}

uint64_t SFcorbru(void *a1, _WORD *a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, unsigned __int16 a6, unsigned int a7, unsigned int a8, int a9, __int16 a10)
{
  v12 = 0;
  v13 = (a7 + 0xFFFF) >> 16;
  v88 = (a7 - 1);
  v14 = a10;
  v80 = (a8 - 1);
  v81 = a1[7];
  v82 = v13 & ((a8 + 0xFFFF) >> 16);
  v83 = v13 & ((a9 + 0xFFFF) >> 16);
  v15 = (a2 + 1086);
  v79 = a1 + 23;
  v85 = v13 & ((HIWORD(a9) + 0xFFFF) >> 16);
  v91 = a2;
  v89 = (a2 + 1086);
LABEL_2:
  v16 = 0;
  v17 = -v12;
  v18 = (a4 - a6);
  if (v18 >= 0)
  {
    v19 = (a4 - a6);
  }

  else
  {
    v19 = -v18;
  }

  v20 = 1;
  v84 = v19;
  while (1)
  {
    v21 = a6;
    v22 = a4;
    if ((a6 & 0x8000) != 0 || (a4 & 0x8000) != 0)
    {
      if ((v20 & (v12 != 0)) != 1)
      {
        return 0;
      }

      goto LABEL_107;
    }

    if (v19 > v14)
    {
      if ((v20 & (v12 != 0)) == 0)
      {
        return 0;
      }

      goto LABEL_107;
    }

    LOWORD(v23) = 0;
    v24 = a4 != 0;
    v25 = a6 != 0;
    if (a4 && a6)
    {
      v23 = 0;
      while (*(a3 + v23) == *(a5 + v23))
      {
        v25 = ++v23 < a6;
        v24 = v23 < a4;
        if (v23 >= a4 || v23 >= a6)
        {
          goto LABEL_21;
        }
      }

      v24 = 1;
      v25 = 1;
    }

LABEL_21:
    v26 = v23;
    if (v23 == a4 && a6 == v23)
    {
      return 1;
    }

    if (a7)
    {
      if (v24 && v25)
      {
        if (a8)
        {
          v27 = (a3 + v23);
          if ((*(v81 + 4 * *v27) & 0x10000000) != 0 && (*(v81 + 4 * *(a5 + v26)) & 0x10000000) != 0)
          {
            WORD2(v78) = a10;
            v28 = (a4 + ~v26);
            v29 = (a6 + ~v26);
            v30 = (v27 + 1);
            v31 = a5 + v26 + 1;
            LODWORD(v78) = a9;
            v32 = a1;
            v33 = v91;
            v34 = v88;
            v35 = v80;
            goto LABEL_42;
          }
        }

        if (a9)
        {
          WORD2(v78) = a10;
          WORD1(v78) = HIWORD(a9);
          v28 = (a4 + ~v26);
          v29 = (a6 + ~v26);
          v30 = a3 + v26 + 1;
          v31 = a5 + v26 + 1;
          LOWORD(v78) = a9 - 1;
          v32 = a1;
          v33 = v91;
          v34 = v88;
          v35 = a8;
LABEL_42:
          v37 = SFcorbru(v32, v33, v30, v28, v31, v29, v34, v35, v78);
          v15 = v89;
          a2 = v91;
          if (v37)
          {
            return 1;
          }
        }
      }

LABEL_43:
      if ((v16 & 1) == 0)
      {
        v46 = v26 + 1;
        if (v26 + 1 < v22 && v46 < v21 && *(a3 + v26) == *(a5 + v46) && *(a3 + v46) == *(a5 + v26) && a2[1077] != 4)
        {
          v75 = 2;
          goto LABEL_109;
        }

        v47 = v26 + 2;
        if (v26 + 2 < v22 && v47 < v21 && *(a3 + v26) == *(a5 + v47) && *(a3 + v46) == *(a5 + v46) && *(a3 + v47) == *(a5 + v26) && a2[1077] != 4)
        {
          v75 = 3;
LABEL_109:
          v76 = (v75 + v26);
          v12 += v76;
          a3 += v76;
          a4 = v22 - v76;
          a5 += v76;
          a6 = v21 - v76;
          v14 = a10;
          goto LABEL_2;
        }
      }

      if (v24)
      {
        if (v26 || a2[1079] > v22)
        {
          v38 = (a3 + v26);
          if (*v38 == *(v38 - 1))
          {
            WORD2(v78) = a10 - 1;
            v39 = (v21 - v26);
            v40 = (v22 + ~v26);
            v41 = (v38 + 1);
            v42 = a5 + v26;
            v43 = a7;
            LODWORD(v78) = a9;
            v44 = a1;
            v45 = v91;
            goto LABEL_65;
          }
        }

        if (v82)
        {
          v48 = (a3 + v26);
          if ((*(v81 + 4 * *v48) & 0x10000000) != 0)
          {
            WORD2(v78) = a10 - 1;
            v39 = (v21 - v26);
            v40 = (v22 + ~v26);
            v41 = (v48 + 1);
            v42 = a5 + v26;
            LODWORD(v78) = a9;
            v44 = a1;
            v45 = v91;
            v43 = v88;
            v49 = v80;
            goto LABEL_67;
          }
        }

        if (v83)
        {
          v42 = a5 + v26;
          WORD2(v78) = a10 - 1;
          WORD1(v78) = HIWORD(a9);
          v39 = (v21 - v26);
          v40 = (v22 + ~v26);
          v41 = a3 + v26 + 1;
          LOWORD(v78) = a9 - 1;
          v44 = a1;
          v45 = v91;
          v43 = v88;
LABEL_65:
          v49 = a8;
LABEL_67:
          v50 = SFcorbru(v44, v45, v41, v40, v42, v39, v43, v49, v78);
          v15 = v89;
          a2 = v91;
          if (v50)
          {
            return 1;
          }
        }
      }

      if (v25)
      {
        if ((v26 || a2[1080] > v21) && (v51 = (a5 + v26), *v51 == *(v51 - 1)))
        {
          WORD2(v78) = a10 - 1;
          v52 = (v22 - v26);
          v53 = (v21 + ~v26);
          v54 = a3 + v26;
          v55 = v51 + 1;
          v56 = a7;
          LODWORD(v78) = a9;
          v57 = a1;
          v58 = v91;
          v59 = a8;
LABEL_76:
          v61 = SFcorbru(v57, v58, v54, v52, v55, v53, v56, v59, v78);
          v15 = v89;
          a2 = v91;
          if (v61)
          {
            return 1;
          }
        }

        else if (v82)
        {
          v60 = (a5 + v26);
          if ((*(v81 + 4 * *v60) & 0x10000000) != 0)
          {
            WORD2(v78) = a10 - 1;
            v52 = (v22 - v26);
            v53 = (v21 + ~v26);
            v54 = a3 + v26;
            v55 = v60 + 1;
            LODWORD(v78) = a9;
            v57 = a1;
            v58 = v91;
            v56 = v88;
            v59 = v80;
            goto LABEL_76;
          }
        }

        if (v83)
        {
          WORD2(v78) = a10 - 1;
          WORD1(v78) = HIWORD(a9);
          LOWORD(v78) = a9 - 1;
          v62 = SFcorbru(a1, v91, a3 + v26, (v22 - v26), a5 + v26 + 1, (v21 + ~v26), v88, a8, v78);
          v15 = v89;
          a2 = v91;
          if (v62)
          {
            return 1;
          }
        }
      }

      v14 = a10;
      if (v85)
      {
        v63 = *v15;
        if (v63 != 255)
        {
          v64 = 0;
          while (1)
          {
            v65 = (v21 - v63);
            if (v26 < (v21 - v63))
            {
              if (v65 > v26)
              {
                goto LABEL_105;
              }

              goto LABEL_104;
            }

            v66 = v15[v64 + 1];
            v67 = *(a1[19] + 8 * v66);
            if (*v67 == *(a3 + (v21 - v63)))
            {
              break;
            }

LABEL_104:
            v64 += 2;
            v63 = v15[v64];
            if (v63 == 255)
            {
              goto LABEL_105;
            }
          }

          v68 = *(a1[21] + v66);
          if (v68 != 2)
          {
            if (v68 != 3)
            {
              if (v68 != 4)
              {
LABEL_92:
                v69 = v63;
                v70 = *(a1[22] + v66);
                if (a2[1] || (v70 + v65 == v21 ? (v71 = 1) : (v71 = 2), a2[1080] == v21 ? (v72 = v21 == v69) : (v72 = 0), !v72 ? (v73 = v71) : (v73 = 4), (v73 & *(v79 + v66 - 1)) != 0))
                {
                  WORD2(v78) = a10;
                  LODWORD(v78) = a9 - 0x10000;
                  v74 = SFcorbru(a1, v91, a3 + v65 + v68, (v22 - v65 - v68), a5 + v65 + v70, (v69 - v70), v88, a8, v78);
                  v15 = v89;
                  a2 = v91;
                  if (v74)
                  {
                    return 1;
                  }
                }

                goto LABEL_104;
              }

              if (v67[3] != *(a3 + v65 + 3))
              {
                goto LABEL_104;
              }
            }

            if (v67[2] != *(a3 + v65 + 2))
            {
              goto LABEL_104;
            }
          }

          if (v67[1] != *(a3 + v65 + 1))
          {
            goto LABEL_104;
          }

          goto LABEL_92;
        }
      }

LABEL_105:
      v36 = v20 & (v12 != 0);
      goto LABEL_106;
    }

    if ((!v25 || *(a3 + v23) == *(a5 + v23 + 1)) && (!v24 || *(a3 + v23 + 1) == *(a5 + v23)) || !v23 && a2[1079] <= a4 || *(a3 + v23) == *(a3 + v23 - 1) || !v23 && a2[1080] <= a6 || *(a5 + v23) == *(a5 + v23 - 1))
    {
      goto LABEL_43;
    }

    v36 = v20 & (v12 != 0);
    v14 = a10;
LABEL_106:
    v17 = -v12;
    v19 = v84;
    if ((v36 & 1) == 0)
    {
      return 0;
    }

LABEL_107:
    v20 = 0;
    a3 += v17;
    a5 += v17;
    a4 = v12 + v22;
    a6 = v12 + v21;
    v16 = 1;
  }
}

void sub_1D2B471C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SFcorqbr(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, __int16 a9, __int16 a10)
{
  if (a4 < 1)
  {
    return 10;
  }

  if (a6 < 1)
  {
    LOWORD(v16) = 0;
    v17 = 0;
    v18 = 1;
  }

  else
  {
    LOWORD(v16) = 0;
    while (*(a3 + v16) == *(a5 + v16))
    {
      v16 = (v16 + 1);
      v17 = v16 < a6;
      v18 = v16 < a4;
      if (v16 >= a4 || v16 >= a6)
      {
        goto LABEL_11;
      }
    }

    v18 = 1;
    v17 = 1;
  }

LABEL_11:
  v20 = a1[7];
  v21 = v16;
  v22 = (a3 + v16);
  v23 = *v22;
  if (v23 == 32)
  {
    if (a6 == v16)
    {
      return 10;
    }
  }

  else if (!v18)
  {
    return 10;
  }

  if (!a7)
  {
    return 11;
  }

  v24 = a10;
  v25 = a9;
  v26 = v16;
  if (v18 && v17)
  {
    if (a8 && (*(v20 + 4 * *v22) & 0x10000000) != 0 && (v27 = a5 + v16, (*(v20 + 4 * *(a5 + v21)) & 0x10000000) != 0))
    {
      HIWORD(v90) = a10;
      LOWORD(v90) = 0;
      v100 = v21;
      v103 = v26;
      v98 = a7;
      v111 = v20;
      v115 = v22;
      v33 = SFcorqbr(a1, a2, v22 + 1, (~v21 + a4), v27 + 1, (~v21 + a6), (a7 - 1), (a8 - 1), v90);
      v25 = a9;
      v21 = v100;
      v26 = v103;
      v24 = a10;
      a7 = v98;
      v87 = v33 == 10;
      v20 = v111;
      v22 = v115;
      if (v87)
      {
        return 10;
      }
    }

    else if (a9)
    {
      v28 = (~v26 + a4);
      if (v28 < 1)
      {
        return 10;
      }

      v29 = v22 + 1;
      v30 = (~v26 + a6);
      if (v30 < 1)
      {
        LOWORD(v31) = 0;
      }

      else
      {
        LOWORD(v31) = 0;
        while (v29[v31] == *(a5 + v21 + 1 + v31))
        {
          v31 = (v31 + 1);
          v32 = v31 < v28;
          if (v31 >= v28 || v31 >= v30)
          {
            goto LABEL_33;
          }
        }
      }

      v32 = 1;
LABEL_33:
      if (v29[v31] == 32)
      {
        if (v31 == v30)
        {
          return 10;
        }
      }

      else if (!v32)
      {
        return 10;
      }
    }
  }

  v118 = a8;
  v34 = v21 + 1;
  v35 = *(a5 + v21 + 1);
  v116 = v22;
  if (v23 == v35 && *(a3 + v34) == *(a5 + v21))
  {
    HIWORD(v91) = v24;
    LOWORD(v91) = v25;
    v107 = v25;
    v101 = v21;
    v104 = v26;
    v112 = v20;
    v36 = a7;
    v97 = v24;
    v37 = SFcorqbr(a1, a2, v22 + 2, (a4 - v21 - 2), a5 + v21 + 2, (a6 - v26 - 2), a7, v118, v91);
    v25 = v107;
    v21 = v101;
    v26 = v104;
    v24 = v97;
    a7 = v36;
    v87 = v37 == 10;
    v20 = v112;
    v22 = v116;
    if (v87)
    {
      return 10;
    }
  }

  v38 = v21 + 2;
  if (v21 + 2 <= a4 && v38 <= a6 && v23 == *(a5 + v38) && *(a3 + v34) == v35 && a6 >= 3 && a4 >= 3 && *(a3 + v38) == *(a5 + v21))
  {
    HIWORD(v92) = v24;
    LOWORD(v92) = v25;
    v108 = v25;
    v102 = v21;
    v105 = v26;
    v113 = v20;
    v39 = a7;
    v40 = v24;
    v41 = SFcorqbr(a1, a2, v22 + 3, (a4 - v21 - 3), a5 + v21 + 3, (a6 - v26 - 3), a7, v118, v92);
    v25 = v108;
    v21 = v102;
    v26 = v105;
    v24 = v40;
    a7 = v39;
    v87 = v41 == 10;
    v20 = v113;
    if (v87)
    {
      return 10;
    }
  }

  v42 = v118;
  if (v18)
  {
    if (v26 >= 1 && (v43 = a3 + v26, v23 == *(v43 - 1)))
    {
      HIWORD(v93) = v24;
      LOWORD(v93) = 0;
      v109 = v25;
      v44 = v26;
      v114 = v20;
      v45 = a7;
      v46 = v24;
      v47 = v21;
      v48 = SFcorqbr(a1, a2, v43 + 1, (~v21 + a4), a5 + v26, (a6 - v26), a7, v118, v93);
      v25 = v109;
      v21 = v47;
      v24 = v46;
      v42 = v118;
      a7 = v45;
      v26 = v44;
    }

    else
    {
      if (!v118 || (*(v20 + 4 * v23) & 0x10000000) == 0)
      {
        if (v25)
        {
          v49 = (~v21 + a4);
          if (v49 < 1)
          {
            return 10;
          }

          v50 = v116 + 1;
          v51 = (a6 - v26);
          if (v51 < 1)
          {
            LOWORD(v52) = 0;
          }

          else
          {
            LOWORD(v52) = 0;
            while (v50[v52] == *(a5 + v21 + v52))
            {
              v52 = (v52 + 1);
              v53 = v52 < v49;
              if (v52 >= v49 || v52 >= v51)
              {
                goto LABEL_111;
              }
            }
          }

          v53 = 1;
LABEL_111:
          if (v50[v52] == 32)
          {
            if (v52 == v51)
            {
              return 10;
            }
          }

          else if (!v53)
          {
            return 10;
          }
        }

        goto LABEL_64;
      }

      HIWORD(v94) = v24;
      LOWORD(v94) = 0;
      v110 = v25;
      v106 = v26;
      v99 = a7;
      v114 = v20;
      v54 = v24;
      v55 = v21;
      v48 = SFcorqbr(a1, a2, v116 + 1, (~v21 + a4), a5 + v21, (a6 - v26), (a7 - 1), (v118 - 1), v94);
      v25 = v110;
      v21 = v55;
      v24 = v54;
      v42 = v118;
      a7 = v99;
      v26 = v106;
    }

    v87 = v48 == 10;
    v20 = v114;
    if (v87)
    {
      return 10;
    }
  }

LABEL_64:
  if (!v17)
  {
    goto LABEL_80;
  }

  if (v21 >= 1)
  {
    v56 = a5 + v26;
    if (*(a5 + v21) == *(v56 - 1))
    {
      HIWORD(v95) = v24;
      LOWORD(v95) = 0;
      v57 = (a4 - v26);
      v58 = (~v21 + a6);
      v59 = (a3 + v26);
      v60 = v26;
      v61 = v56 + 1;
      v62 = (v42 - 1);
      v63 = a1;
      v64 = a2;
      v65 = a7;
      goto LABEL_79;
    }
  }

  if (v42 && (*(v20 + 4 * *(a5 + v21)) & 0x10000000) != 0)
  {
    HIWORD(v95) = v24;
    LOWORD(v95) = 0;
    v57 = (a4 - v26);
    v58 = (~v21 + a6);
    v60 = v26;
    v61 = a5 + v21 + 1;
    v65 = a7;
    a7 = (a7 - 1);
    v62 = (v42 - 1);
    v63 = a1;
    v64 = a2;
    v59 = v116;
LABEL_79:
    v71 = v42;
    v72 = v24;
    result = SFcorqbr(v63, v64, v59, v57, v61, v58, a7, v62, v95);
    v24 = v72;
    v42 = v71;
    LOWORD(a7) = v65;
    v26 = v60;
    if (result == 10)
    {
      return result;
    }

    goto LABEL_80;
  }

  if (!v25)
  {
    goto LABEL_80;
  }

  v66 = (a4 - v26);
  if (v66 >= 1)
  {
    v67 = (~v21 + a6);
    if (v67 < 1)
    {
      LOWORD(v68) = 0;
    }

    else
    {
      LOWORD(v68) = 0;
      while (1)
      {
        v23 = v116[v68];
        if (v23 != *(a5 + v21 + 1 + v68))
        {
          break;
        }

        v69 = v68 + 1;
        v68 = (v68 + 1);
        v70 = v68 < v66;
        if (v68 >= v66 || v68 >= v67)
        {
          v23 = v116[v69];
          goto LABEL_118;
        }
      }
    }

    v70 = 1;
LABEL_118:
    if (v23 == 32)
    {
      if (v68 == v67)
      {
        return 10;
      }

      goto LABEL_80;
    }

    if (v70)
    {
LABEL_80:
      if (!v24)
      {
        return 11;
      }

      v73 = a2;
      v74 = *(a2 + 2172);
      if (v74 == 255)
      {
        return 11;
      }

      v75 = 0;
      v76 = a2 + 2172;
      v117 = (a7 - 1);
      v77 = v24 - 1;
      while (1)
      {
        v78 = a6 - v74;
        if (v78 < 0)
        {
          goto LABEL_107;
        }

        if (v78 > v26)
        {
          goto LABEL_107;
        }

        v79 = *(v76 + v75 + 1);
        v80 = *(a1[19] + 8 * v79);
        v81 = (a3 + v78);
        if (*v80 != *v81)
        {
          goto LABEL_107;
        }

        v82 = *(a1[21] + v79);
        v83 = a4 - v78;
        if (v83 >= v82)
        {
          v83 = *(a1[21] + v79);
        }

        if (v83 == 2)
        {
          goto LABEL_94;
        }

        if (v83 == 3)
        {
          goto LABEL_93;
        }

        if (v83 == 4)
        {
          break;
        }

LABEL_95:
        v84 = v74;
        v85 = *(a1[22] + v79);
        if (*(v73 + 2) || (v85 + v78 == a6 ? (v86 = 1) : (v86 = 2), *(v73 + 2160) == a6 ? (v87 = a6 == v84) : (v87 = 0), !v87 ? (v88 = v86) : (v88 = 4), (v88 & *(a1 + v79 + 183)) != 0))
        {
          HIWORD(v96) = v77;
          LOWORD(v96) = 0;
          v89 = v26;
          result = SFcorqbr(a1, a2, a3 + v78 + *(a1[21] + v79), (a4 - v78 - v82), a5 + v78 + v85, (v84 - v85), v117, v42, v96);
          v26 = v89;
          v73 = a2;
          if (result == 10)
          {
            return result;
          }
        }

LABEL_107:
        v75 += 2;
        v74 = *(v76 + v75);
        result = 11;
        if (v74 == 255)
        {
          return result;
        }
      }

      if (v80[3] != v81[3])
      {
        goto LABEL_107;
      }

LABEL_93:
      if (v80[2] != v81[2])
      {
        goto LABEL_107;
      }

LABEL_94:
      if (v80[1] != v81[1])
      {
        goto LABEL_107;
      }

      goto LABEL_95;
    }
  }

  return 10;
}

uint64_t SFcorrec(char *__src, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v77 = *(a4 + 42);
  if (*(a4 + 40) > v77)
  {
    return 0;
  }

  v6 = a2;
  v7 = *(*(a4 + 32) + 24);
  v8 = strcpy(v7, __src);
  v9 = strlen(v8);
  *(a4 + 2160) = v9;
  v10 = *(a4 + 40);
  v11 = *(a3 + 136);
  if (*(a4 + 2156) == 255)
  {
    *(a4 + 2157) = v11;
    *(a4 + 3172) = 0;
  }

  v82 = 0;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 >= 2;
  }

  v13 = !v12;
  v14 = *(a4 + 2156);
  if (v14 == v11)
  {
    LOWORD(v15) = v10;
    goto LABEL_12;
  }

  v73 = v11;
  v79 = a4 + 2172;
  __s = v7 + 2;
  v80 = a4 + 128;
  v67 = v10;
  v68 = v6 & 0xFFFFFFFD;
  v69 = v13 ^ 1;
  v70 = v6;
  v17 = v10;
  LOWORD(v15) = v10;
  while (2)
  {
    if (*(a4 + 2157) == v14)
    {
      LOWORD(v10) = v17;
      break;
    }

    v71 = v17;
    v78 = v9;
    *(a4 + 2156) = v14 + 1;
    *(a4 + 2132) = 0;
    v18 = (*(a3 + 128) + (v14 + 1));
    *(a4 + 2152) = *v18;
    v19 = &v18[v73];
    v76 = *v19;
    *(a4 + 2154) = v76;
    v20 = &v19[v73];
    *(a4 + 2144) = *v20;
    v21 = &v20[v73];
    *(a4 + 2146) = *v21;
    v22 = &v21[v73];
    *(a4 + 2148) = *v22;
    v23 = &v22[v73];
    *(a4 + 2150) = *v23;
    v24 = &v23[v73];
    *(a4 + 2142) = *v24;
    v25 = &v24[v73];
    *(a4 + 2162) = *v25;
    v26 = &v25[v73];
    *(a4 + 2164) = *v26;
    v27 = &v26[v73];
    *(a4 + 2166) = *v27;
    v28 = &v27[v73];
    *(a4 + 2168) = *v28;
    v75 = v28[v73];
    if ((v14 + 1) == 2)
    {
      if (*(a3 + 104) && v9 >= 1)
      {
        v29 = 0;
        v30 = 0;
        LOWORD(v31) = *(a4 + 2170);
        do
        {
          v32 = 0;
          do
          {
            if (SLstrncmp(*(*(a3 + 160) + 8 * ((v31 + v32) >> 1)), &v7[v29], *(*(a3 + 176) + ((v31 + v32) >> 1))) >= 0)
            {
              v31 = (v31 + v32) >> 1;
            }

            else
            {
              v32 = (v31 + v32) >> 1;
            }
          }

          while (v31 - v32 > 1);
          LOWORD(v33) = v31 - (*(a4 + 2170) == v31);
          v34 = *(*(a3 + 160) + 8 * v33);
          do
          {
            if (!SLstrncmp(v34, &v7[v29], *(*(a3 + 176) + v33)) && v30 <= 999)
            {
              v35 = (v79 + v30);
              *v35 = v78 - v29;
              v30 += 2;
              v35[1] = v33;
            }

            v33 = (v33 + 1);
            v31 = *(a4 + 2170);
            if (v33 >= v31)
            {
              break;
            }

            v34 = *(*(a3 + 160) + 8 * v33);
          }

          while (*v34 <= v7[v29]);
          ++v29;
        }

        while (v29 != v78);
      }

      else
      {
        v30 = 0;
      }

      *(v79 + v30) = -1;
      *(v79 + (v30 + 1)) = -1;
    }

    do
    {
      if (*(a3 + 55) == 1)
      {
        v36 = v78;
        v37 = v76;
        if (*(a4 + 3512))
        {
          if ((v78 & 0x8000) == 0)
          {
            v38 = v78 + 1;
            v39 = &__s[v78];
            do
            {
              *v39 = *(v39 - 2);
              --v39;
              --v38;
            }

            while (v38);
          }

          *v7 = 25966;
          v36 = strlen(v7);
          v40 = 0;
          goto LABEL_42;
        }

        if (*v7 == 110 && v7[1] == 101 && v78 >= 3)
        {
          v36 = (v78 - 2);
          v52 = strlen(__s);
          memmove(v7, __s, v52 + 1);
          v40 = 1;
LABEL_42:
          *(a4 + 3512) = v40;
        }
      }

      else
      {
        v36 = v78;
        v37 = v76;
      }

      v41 = v36;
      if (*(a4 + 40))
      {
        v42 = 1;
      }

      else
      {
        v42 = v36 <= 8;
      }

      if (v42 && *(a4 + 2148) == 2)
      {
        *(a4 + 2148) = 1;
      }

      v43 = *(a4 + 2156);
      if (v43 == 14 && *(a4 + 2148) == 1)
      {
        *(a4 + 2148) = 0;
      }

      v44 = *(a3 + 55);
      if (v44 != 5 && v44 != 16)
      {
        v49 = *(a4 + 2154);
        if (v49 == 1)
        {
          v50 = 3;
          goto LABEL_95;
        }

        if (v49 != 8 && *(a4 + 2142))
        {
          if (v43 < 12)
          {
            v50 = 1;
LABEL_95:
            *(a4 + 2142) = v50;
            goto LABEL_59;
          }

          if (v43 <= 0xD)
          {
            v50 = 2;
            goto LABEL_95;
          }
        }
      }

LABEL_59:
      v46 = v75 == 0;
      v47 = v37 == 8;
      v78 = v36;
      if (v36 <= 4)
      {
        v47 = 0;
      }

      if (v36 >= 4)
      {
        v46 = 0;
      }

      v48 = (v36 - 7) < 0xFFFBu && v37 == 7;
      if (v48 || v47 || v46)
      {
        continue;
      }

      *(a4 + 120) = "";
      if (v76 <= 4)
      {
        if (v76 > 2)
        {
          if (v76 != 3)
          {
            goto LABEL_98;
          }

          SFcor3qd(v7, a3, a4);
          goto LABEL_101;
        }

        if (v76 == 1)
        {
          SFcor1qd(v7, a3, a4);
          goto LABEL_101;
        }

        if (v76 != 2)
        {
LABEL_101:
          *(v80 + 4 * *(a4 + 2132)) = 0;
          v53 = *(a4 + 2132);
          if (v53 >= 1)
          {
            LOWORD(v54) = 0;
            while (1)
            {
              v55 = (v80 + 4 * v54);
              v56 = *v55;
              if (SLstrncmp(*(a4 + 120), v55, 4) <= 0)
              {
                *(a4 + 120) = v55;
                v81 = v56;
                v57 = *(a3 + 54);
                if (v57 >= 5)
                {
                  v58 = 4;
                  do
                  {
                    *(&v81 + v58++) = 0;
                  }

                  while (v57 > v58);
                }

                v59 = SFbisrch(&v81, 0, v57 - 1, &v82, a3);
                v60 = *(a3 + 54);
                if (v60 >= 5)
                {
                  v61 = 4;
                  do
                  {
                    *(&v81 + v61++) = -1;
                  }

                  while (v60 > v61);
                  v62 = SFbisrch(&v81, 0, v60 - 1, &v82, a3);
                  v82 += v62 - v59;
                }

                if (*(a4 + 3202) == 1)
                {
                  v63 = PDdecod2(v7, v41, v59, v82, a3, a4);
                }

                else
                {
                  v63 = SFdecode(v7, v41, v59, v82, a3, a4);
                }

                if (v63 == 8)
                {
                  return 0;
                }

                if (*(a4 + 40) == v77)
                {
                  goto LABEL_117;
                }
              }

              v54 = (v54 + 1);
              if (v54 >= v53)
              {
                goto LABEL_117;
              }
            }
          }

          continue;
        }

        goto LABEL_93;
      }

      if (v76 > 6)
      {
        if (v76 != 7)
        {
          if (v76 == 8)
          {
            SFcor8qd(v7, a3, a4);
          }

          goto LABEL_101;
        }

LABEL_93:
        SFcor2qd(v7, a3, a4);
        goto LABEL_101;
      }

      if (v76 != 5)
      {
        SFcor6qd(v7, a3, a4);
        goto LABEL_101;
      }

      if (*(a4 + 3202) == 1)
      {
LABEL_98:
        if ((v44 - 1) >= 2)
        {
          SFaccent(v7, v36, a3, a4);
        }

        continue;
      }

      if (SFcorrig(v7, a3, a4) == 10)
      {
        goto LABEL_143;
      }

LABEL_117:
      ;
    }

    while (*(a4 + 3512));
    v15 = *(a4 + 40);
    if (v70 != 2 || v15 == v77)
    {
      v10 = *(a4 + 40);
      if (v15 > v71)
      {
        SFcorsrt(__src, v71, (v15 - 1), a3, a4);
        LOWORD(v15) = *(a4 + 40);
        v10 = v15;
      }
    }

    else
    {
      v10 = v71;
    }

    v9 = v78;
    if (v15 == v77)
    {
      return 0;
    }

    v64 = v69;
    if (v15 < 1)
    {
      v64 = 1;
    }

    if ((v64 & 1) == 0)
    {
      v65 = *(a4 + 2156);
      if (v65 <= 4)
      {
        v66 = 8;
      }

      else
      {
        v66 = v65 + 4;
      }

      *(a4 + 2157) = v66;
      goto LABEL_137;
    }

    if (v70 != 2)
    {
LABEL_137:
      if (!*(a4 + 3172) && v67 < v15)
      {
LABEL_143:
        result = 1;
        *(a4 + 3172) = 1;
        return result;
      }
    }

    if (v68 == 1)
    {
      return 1;
    }

    v14 = *(a4 + 2156);
    v17 = v10;
    if (v14 != v73)
    {
      continue;
    }

    break;
  }

LABEL_12:
  if (v10 < v15)
  {
    SFcorsrt(__src, v10, (v15 - 1), a3, a4);
  }

  return 0;
}

uint64_t SFcorrig(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 138))
  {
    return 11;
  }

  v6 = 0;
  v7 = *(a2 + 144);
  while (1)
  {
    v8 = SLstrcmp(a1, v7);
    v9 = strlen(v7);
    if (!v8)
    {
      break;
    }

    v6 += v9 + 1;
    v7 = (*(a2 + 144) + v6);
    if (*(a2 + 138) <= v6)
    {
      return 11;
    }
  }

  v11 = &v7[v9];
  v12 = strlen(&v7[v9 + 1]);

  return SFadd1(v11 + 1, v12, a3, 1);
}

uint64_t SFcorsrt(char *__src, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v65 = *MEMORY[0x1E69E9840];
  if (*(a5 + 3202) == 1)
  {
    v10 = *MEMORY[0x1E69E9840];

    return PDcorsrt(__src, a2, a3, a4, a5);
  }

  else
  {
    v12 = *(a5 + 3176);
    v13 = *(*(a5 + 32) + 32);
    v14 = *(a5 + 112);
    if (v14 && (v16 = *(v14 + 34), v15 = (v14 + 34), v16))
    {
      v17 = strcpy(v13, v15);
      strcat(v17, __src);
    }

    else
    {
      strcpy(v13, __src);
    }

    v18 = *(a5 + 112);
    if (v18)
    {
      v20 = *(v18 + 44);
      v19 = (v18 + 44);
      if (v20)
      {
        strcat(v13, v19);
      }
    }

    v60 = a2;
    if (a2 <= v7)
    {
      v62 = *(a5 + 64);
      v61 = *(a5 + 48);
      LOWORD(v21) = a2;
      v22 = *(a4 + 56);
      do
      {
        v23 = v7;
        v24 = v21;
        v25 = (v61 + *(v62 + 2 * v21));
        v26 = strlen(v13);
        v27 = strlen(v25);
        memset(v64, 0, sizeof(v64));
        memset(v63, 0, sizeof(v63));
        if (v26 >= 1)
        {
          v28 = 0;
          do
          {
            v29 = &v13[v28];
            v30 = *v29;
            if (v30 != v29[1])
            {
              v31 = (((*(v22 + 4 * v30) >> 25) & 0x20) + v30);
              ++*(v64 + v31);
            }

            ++v28;
          }

          while (v26 > v28);
        }

        if (v27 >= 1)
        {
          v32 = 0;
          do
          {
            v33 = &v25[v32];
            v34 = *v33;
            if (v34 != *(v33 + 1))
            {
              v35 = (((*(v22 + 4 * v34) >> 25) & 0x20) + v34);
              ++*(v63 + v35);
            }

            ++v32;
          }

          while (v27 > v32);
        }

        v36 = 0;
        v37 = 0;
        do
        {
          v38 = *(v64 + v36) - *(v63 + v36);
          if (v38)
          {
            if (v38 < 0)
            {
              v38 = *(v63 + v36) - *(v64 + v36);
            }

            if ((*(v22 + 4 * v36) & 0x10000000) != 0)
            {
              v37 += 2 * v38;
            }

            else
            {
              v37 += 3 * v38;
            }
          }

          ++v36;
        }

        while (v36 != 256);
        if (v26 < 1)
        {
          v50 = 0;
        }

        else
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          do
          {
            if (v27 >= 1)
            {
              v42 = 0;
              v43 = 0;
              do
              {
                v44 = 0;
                do
                {
                  v45 = v44;
                  v46 = v39 + v44;
                  v47 = v42 + v44++;
                }

                while (v47 < v27 && v13[v46] == v25[v47] && v46 < v26);
                if (v45 > v41)
                {
                  v41 = v45;
                }

                v42 = ++v43;
              }

              while (v27 > v43);
            }

            v39 = ++v40;
          }

          while (v26 > v40);
          v50 = v41;
        }

        v51 = v26 - v27;
        if (v51 < 0)
        {
          LOWORD(v51) = v27 - v26;
        }

        *(v12 + 2 * v24) = 2 * v37 + 4 * v51 - v50 + 16 * (v13[v26 - 1] != v25[v27 - 1]);
        v21 = (v24 + 1);
        v7 = v23;
      }

      while (v21 <= v23);
    }

    if (v60 < v7)
    {
      v52 = v7 + v60;
      v53 = v60;
      do
      {
        if (v52 - v53 > v60)
        {
          v54 = v60;
          LOWORD(v55) = v60;
          do
          {
            v55 = v55;
            v56 = v54 + 1;
            if (*(v12 + 2 * v55) > *(v12 + 2 * v56))
            {
              v57 = *(a5 + 64);
              v58 = *(v57 + 2 * v55);
              *(v57 + 2 * v55) = *(v57 + 2 * v56);
              *(v57 + 2 * v56) = v58;
              LOWORD(v57) = *(v12 + 2 * v55);
              *(v12 + 2 * v55) = *(v12 + 2 * v56);
              *(v12 + 2 * v56) = v57;
            }

            LOWORD(v55) = v55 + 1;
            v54 = v55;
          }

          while (v52 - v53 > v55);
        }

        ++v53;
      }

      while (v53 != v7);
    }

    v59 = *MEMORY[0x1E69E9840];
    return 10;
  }
}

uint64_t PRSetEnabledLogTypes()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PRLogCorrection", @"com.apple.applespell", &keyExistsAndHasValidFormat);
  v1 = keyExistsAndHasValidFormat;
  keyExistsAndHasValidFormat = 0;
  v2 = CFPreferencesGetAppBooleanValue(@"PRLogGuessing", @"com.apple.applespell", &keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = 2;
  if (!v3)
  {
    v5 = 3;
  }

  if (v2)
  {
    v6 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogCompletion", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v8 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 |= 4uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogAdaptation", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v9 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v7 |= 8uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogAssets", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v10 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v7 |= 0x10uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogTimes", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v11 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v7 |= 0x20uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogNames", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v12 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v7 |= 0x40uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogXPC", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v13 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v7 |= 0x80uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogLexicon", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v14 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v7 |= 0x100uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogLanguageModel", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v15 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v7;
  }

  else
  {
    v16 = v7 | 0x200;
  }

  v17 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  keyExistsAndHasValidFormat = 0;
  v18 = CFPreferencesGetAppBooleanValue(@"PRLogTypology", @"com.apple.applespell", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = v16 | 0x400;
  }

  else
  {
    v20 = v16;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogReplacements", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v21 = 1;
  }

  else
  {
    v21 = keyExistsAndHasValidFormat == 0;
  }

  if (v21)
  {
    v20 |= 0x800uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogAssetRequests", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v22 = 1;
  }

  else
  {
    v22 = keyExistsAndHasValidFormat == 0;
  }

  if (v22)
  {
    v20 |= 0x1000uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogBackground", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v23 = 1;
  }

  else
  {
    v23 = keyExistsAndHasValidFormat == 0;
  }

  if (v23)
  {
    v20 |= 0x2000uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogSentenceCorrection", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v24 = 1;
  }

  else
  {
    v24 = keyExistsAndHasValidFormat == 0;
  }

  if (v24)
  {
    v20 |= 0x4000uLL;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PRLogContainer", @"com.apple.applespell", &keyExistsAndHasValidFormat))
  {
    v25 = 1;
  }

  else
  {
    v25 = keyExistsAndHasValidFormat == 0;
  }

  v26 = v20 | 0x10000;
  if (!v25)
  {
    v26 = v20;
  }

  _enabledLogTypes = v26;
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"PRLogToFile", @"com.apple.applespell", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (result)
    {
      _logToFile = 1;
    }
  }

  return result;
}

uint64_t PRLogObject(uint64_t a1)
{
  if (PRLogObject_onceToken != -1)
  {
    PRLogObject_cold_1();
  }

  if (a1 <= 255)
  {
    if (a1 > 15)
    {
      if (a1 > 63)
      {
        if (a1 == 64)
        {
          v2 = &__PRLogNames;
          return *v2;
        }

        if (a1 == 128)
        {
          v2 = &__PRLogXPC;
          return *v2;
        }
      }

      else
      {
        if (a1 == 16)
        {
          v2 = &__PRLogAssets;
          return *v2;
        }

        if (a1 == 32)
        {
          v2 = &__PRLogTimes;
          return *v2;
        }
      }
    }

    else if (a1 > 3)
    {
      if (a1 == 4)
      {
        v2 = &__PRLogCompletion;
        return *v2;
      }

      if (a1 == 8)
      {
        v2 = &__PRLogAdaptation;
        return *v2;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v2 = &__PRLogCorrection;
        return *v2;
      }

      if (a1 == 2)
      {
        v2 = &__PRLogGuessing;
        return *v2;
      }
    }

LABEL_44:
    v2 = &__PRLogGeneral;
    return *v2;
  }

  if (a1 <= 4095)
  {
    if (a1 > 1023)
    {
      if (a1 == 1024)
      {
        v2 = &__PRLogTypology;
        return *v2;
      }

      if (a1 == 2048)
      {
        v2 = &__PRLogReplacements;
        return *v2;
      }
    }

    else
    {
      if (a1 == 256)
      {
        v2 = &__PRLogLexicon;
        return *v2;
      }

      if (a1 == 512)
      {
        v2 = &__PRLogLanguageModel;
        return *v2;
      }
    }

    goto LABEL_44;
  }

  if (a1 < 0x4000)
  {
    if (a1 == 4096)
    {
      v2 = &__PRLogAssetRequests;
      return *v2;
    }

    if (a1 == 0x2000)
    {
      v2 = &__PRLogBackground;
      return *v2;
    }

    goto LABEL_44;
  }

  if (a1 == 0x4000)
  {
    v2 = &__PRLogSentenceCorrection;
    return *v2;
  }

  if (a1 == 0x8000)
  {
    v2 = &__PRLogInputAnalytics;
    return *v2;
  }

  if (a1 != 0x10000)
  {
    goto LABEL_44;
  }

  v2 = &__PRLogContainer;
  return *v2;
}

os_log_t __PRLogObject_block_invoke()
{
  __PRLogGeneral = os_log_create("com.apple.ProofReader", "general");
  __PRLogCorrection = os_log_create("com.apple.ProofReader", "correction");
  __PRLogGuessing = os_log_create("com.apple.ProofReader", "guessing");
  __PRLogCompletion = os_log_create("com.apple.ProofReader", "completion");
  __PRLogAdaptation = os_log_create("com.apple.ProofReader", "adaptation");
  __PRLogAssets = os_log_create("com.apple.ProofReader", "assets");
  __PRLogTimes = os_log_create("com.apple.ProofReader", "times");
  __PRLogNames = os_log_create("com.apple.ProofReader", "names");
  __PRLogXPC = os_log_create("com.apple.ProofReader", "xpc");
  __PRLogLexicon = os_log_create("com.apple.ProofReader", "lexicon");
  __PRLogLanguageModel = os_log_create("com.apple.ProofReader", "language-model");
  __PRLogTypology = os_log_create("com.apple.ProofReader", "typology");
  __PRLogReplacements = os_log_create("com.apple.ProofReader", "replacements");
  __PRLogAssetRequests = os_log_create("com.apple.ProofReader", "asset-requests");
  __PRLogBackground = os_log_create("com.apple.ProofReader", "background");
  __PRLogSentenceCorrection = os_log_create("com.apple.ProofReader", "sentence-correction");
  __PRLogInputAnalytics = os_log_create("com.apple.ProofReader", "input-analytics");
  result = os_log_create("com.apple.ProofReader", "container");
  __PRLogContainer = result;
  return result;
}

void PRLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Current = CFAbsoluteTimeGetCurrent();
  v20 = 0;
  if ((_enabledLogTypes & a1) != 0)
  {
    v12 = Current;
    if (PRLog_onceToken != -1)
    {
      PRLog_cold_1();
    }

    if (PRLog_fd == -2 && _logToFile != 0)
    {
      v14 = [objc_msgSend(_NSSpellingDictDirectoryPath2() stringByAppendingPathComponent:{@"prlog.txt", "UTF8String"}];
      v15 = open(v14, 522);
      PRLog_fd = v15;
      if ((v15 & 0x80000000) == 0)
      {
        fchmod(v15, 0x1B6u);
      }
    }

    v19 = &a9;
    if (a2)
    {
      a2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a2 locale:0 arguments:v19];
    }

    if (pthread_threadid_np(0, &v20))
    {
      v16 = pthread_self();
      v17 = pthread_mach_thread_np(v16);
      v20 = v17;
    }

    else
    {
      v17 = v20;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PRLog_block_invoke_2;
    block[3] = &unk_1E84054A8;
    block[4] = a2;
    *&block[5] = v12;
    block[6] = v17;
    dispatch_async(PRLog__queue, block);
  }
}

void __PRLog_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.ProofReader.loggingBackgroundQueue", v0);
  PRLog__queue = v1;
  global_queue = dispatch_get_global_queue(9, 0);

  dispatch_set_target_queue(v1, global_queue);
}

void __PRLog_block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) UTF8String];
  v3 = v2;
  if (v2)
  {
    v4 = strlen(v2);
  }

  else
  {
    v4 = 0;
  }

  __s = 0;
  v22 = vcvtmd_s64_f64(*(a1 + 40) + *MEMORY[0x1E695E468]);
  memset(&v21, 0, sizeof(v21));
  localtime_r(&v22, &v21);
  v5 = v21.tm_year + 1900;
  v6 = v21.tm_mon + 1;
  tm_hour = v21.tm_hour;
  tm_mday = v21.tm_mday;
  tm_sec = v21.tm_sec;
  tm_min = v21.tm_min;
  v11 = vcvtmd_s64_f64(modf(*(a1 + 40), &__y) * 1000.0);
  v12 = getpid();
  asprintf(&__s, "%04d-%02d-%02d %02d:%02d:%02d.%03d AppleSpell[%d:%llu] ", v5, v6, tm_mday, tm_hour, tm_min, tm_sec, v11, v12, *(a1 + 48));
  v13 = __s;
  v25[0] = __s;
  if (__s)
  {
    v14 = strlen(__s);
  }

  else
  {
    v14 = 0;
  }

  v25[1] = v14;
  v26 = v3;
  if (v3)
  {
    v27 = strlen(v3);
    v28 = "\n";
    if (v4)
    {
      v15 = v3[v4 - 1] != 10;
      goto LABEL_12;
    }
  }

  else
  {
    v27 = 0;
    v28 = "\n";
  }

  v15 = 1;
LABEL_12:
  v29 = v15;
  if (__s)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if ((PRLog_fd & 0x80000000) == 0)
  {
    if (__s)
    {
      v17 = v25;
    }

    else
    {
      v17 = &v26;
    }

    writev(PRLog_fd, v17, v15 + v16);
    v13 = v25[0];
  }

  if (v13)
  {
    v18 = v25;
  }

  else
  {
    v18 = &v26;
  }

  writev(2, v18, v15 + v16);
  if (__s)
  {
    free(__s);
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1D2B4A2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SFdecbit(int a1, int a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(*(a6 + 3520) + 2 * a3) = 0;
  *(*(a6 + 3528) + a3) = 0;
  *(*(a6 + 3536) + a3) = 0;
  *(*(a6 + 3496) + a3) = 0;
  if ((a4[3] & 3u) > 1)
  {
    v9 = *(a6 + 3520);
    if ((a4[3] & 3) == 2)
    {
      v10 = *(v9 + 2 * a3) | 0x400;
    }

    else
    {
      v10 = *(v9 + 2 * a3) | 0x4000;
    }
  }

  else
  {
    v9 = *(a6 + 3520);
    if ((a4[3] & 3) != 0)
    {
      v10 = *(v9 + 2 * a3) | 0x800;
    }

    else
    {
      v10 = *(v9 + 2 * a3) & 0xF3FF;
    }
  }

  *(v9 + 2 * a3) = v10;
  if ((a4[6] & 3u) > 1)
  {
    if ((a4[6] & 3) == 2)
    {
      v11 = v10 | 0x2000;
      goto LABEL_14;
    }
  }

  else if ((a4[6] & 3) != 0)
  {
    v11 = v10 | 0x1000;
    goto LABEL_14;
  }

  v11 = v10 & 0xCFFF;
LABEL_14:
  *(v9 + 2 * a3) = v11;
  if (*(a5 + 88))
  {
    if (*a4)
    {
      v11 |= 0x200u;
      *(v9 + 2 * a3) = v11;
    }

    v12 = a4[1];
    if (v12 >= 0x40)
    {
      v11 |= 4u;
      *(v9 + 2 * a3) = v11;
      v12 = a4[1];
    }

    v13 = (v12 >> 3) & 3;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = v11 | 2;
      }

      else
      {
        v14 = v11 | 0xA;
      }
    }

    else if (v13)
    {
      v14 = v11 | 8;
    }

    else
    {
      v14 = v11 & 0xFFF5;
    }

    *(v9 + 2 * a3) = v14;
    v20 = a4[1];
    if ((v20 & 6) != 0)
    {
      v14 |= 0x100u;
      *(v9 + 2 * a3) = v14;
      v20 = a4[1];
    }

    if (v20)
    {
      v14 |= 1u;
      *(v9 + 2 * a3) = v14;
    }

    v21 = a4[4];
    if ((v21 & 0x80000000) != 0)
    {
      *(v9 + 2 * a3) = v14 | 0x40;
      v21 = a4[4];
    }

    *(*(a6 + 3528) + a3) = (v21 >> 1) & 0x3F;
    *(*(a6 + 3536) + a3) = a4[4] << 7;
    *(*(a6 + 3536) + a3) |= (a4[5] >> 1) & 0x7C;
    *(*(a6 + 3536) + a3) |= (a4[5] >> 1) & 3;
    if ((a4[5] & 1) == 0)
    {
      goto LABEL_58;
    }

    if (a2 == 6)
    {
      v22 = 32;
    }

    else
    {
      if (a2 != 11)
      {
LABEL_58:
        if ((a4[6] & 4) != 0)
        {
          *(*(a6 + 3520) + 2 * a3) |= 0x10u;
        }

        if (a1)
        {
          if ((*(*(a6 + 3520) + 2 * a3) & 0x60) != 0)
          {
            *(a6 + 3480) = 0;
            *(a6 + 3480 + 4 * ((a1 - 1) >> 5)) |= 1 << -a1;
          }

          else
          {
            *(*(a6 + 3496) + a3) = a1;
          }
        }

        goto LABEL_64;
      }

      v22 = 128;
    }

    *(*(a6 + 3520) + 2 * a3) |= v22;
    goto LABEL_58;
  }

  v15 = *(a6 + 112);
  if (*v15)
  {
    v16 = (a4[1] >> 3) & 7;
    if (a2 != 12)
    {
      LOWORD(v16) = 16 * v16;
    }

    v15[31] = v16;
    v17 = (a4[1] >> 1) & 3;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a6 + 3496);
        v19 = *(v18 + a3) | 0x20;
        goto LABEL_51;
      }
    }

    else if (v17)
    {
      v18 = *(a6 + 3496);
      v19 = *(v18 + a3) | 0x10;
      goto LABEL_51;
    }

    v18 = *(a6 + 3496);
    v19 = *(v18 + a3) & 0xCF;
LABEL_51:
    *(v18 + a3) = v19;
    v25 = *(a6 + 112);
    v26 = *(v25 + 62);
    v27 = v26 | (a4[4] >> 1) & 0xF;
    *(v25 + 62) = v26 | (a4[4] >> 1) & 0xF;
    if (a2 == 8 && (a4[4] & 1) != 0)
    {
      *(v25 + 62) = v27 | 0x80;
    }

    SFcltdb(a5, a6);
    *(*(a6 + 3496) + a3) |= a4[5] >> 6;
    *(*(a6 + 3496) + a3) |= (a4[5] >> 1) & 0xC;
    *(*(a6 + 3504) + a3) |= (4 * a4[5]) & 0x18;
    *(*(a6 + 3504) + a3) |= 4 * (a4[5] & 1);
    v28 = (a4[6] >> 1) & 2;
    v29 = *(a6 + 3504);
    goto LABEL_55;
  }

  if ((a2 - 1) < 2)
  {
    v28 = (a4[4] >> 1) & 0x3F;
    v29 = *(a6 + 3496);
LABEL_55:
    *(v29 + a3) |= v28;
    goto LABEL_64;
  }

  if (a2 != 15)
  {
    if (a2 != 16)
    {
      goto LABEL_64;
    }

    if ((a4[1] & 6u) > 3)
    {
      if ((a4[1] & 6) == 4)
      {
        v23 = *(a6 + 3496);
        v24 = *(v23 + a3) | 2;
        goto LABEL_75;
      }
    }

    else if ((a4[1] & 6) != 0)
    {
      v23 = *(a6 + 3496);
      v24 = *(v23 + a3) | 1;
LABEL_75:
      *(v23 + a3) = v24;
      goto LABEL_64;
    }

    *(*(a6 + 3496) + a3) = 0;
    goto LABEL_64;
  }

  if ((a4[1] & 6u) > 3)
  {
    if ((a4[1] & 6) == 4)
    {
      v32 = *(a6 + 3496);
      v33 = *(v32 + a3) | 2;
      goto LABEL_78;
    }

LABEL_80:
    *(*(a6 + 3496) + a3) = 0;
    goto LABEL_81;
  }

  if ((a4[1] & 6) == 0)
  {
    goto LABEL_80;
  }

  v32 = *(a6 + 3496);
  v33 = *(v32 + a3) | 1;
LABEL_78:
  *(v32 + a3) = v33;
LABEL_81:
  if ((a4[6] & 4) != 0)
  {
    *(*(a6 + 3520) + 2 * a3) |= 0x10u;
  }

  if (a4[1])
  {
    *(*(a6 + 3520) + 2 * a3) |= 1u;
  }

  if (a4[4])
  {
    *(*(a6 + 3520) + 2 * a3) |= 0x200u;
  }

LABEL_64:
  v30 = *(*(a6 + 72) + a3);
  if (*(a6 + 88) >= v30 || v30 == 4 || !*(a6 + 18))
  {
    *(a6 + 18) = *(*(a6 + 3520) + 2 * a3);
  }

  return 0;
}

uint64_t SFdecode(unsigned __int8 *a1, int a2, int a3, int a4, uint64_t a5, unsigned __int16 *a6)
{
  if (a2 <= 0 && *a6 != 17)
  {
    return 11;
  }

  if (a6[1])
  {
    return 8;
  }

  return SFicdecode(a1, a2, a3, a4, a5, a6);
}

uint64_t SFicdecode(unsigned __int8 *a1, int a2, int a3, int a4, uint64_t a5, unsigned __int16 *a6)
{
  v228[1] = *MEMORY[0x1E69E9840];
  v228[0] = 0;
  v7 = *a6;
  v8 = a2 < 25;
  if (v7 != 6)
  {
    v8 = 0;
  }

  v9 = v7 > 0x63 || v8;
  v10 = *a6;
  if (v7 == 6)
  {
    v11 = 0;
    v199 = a6[1732];
    v191 = a2;
  }

  else if (v7 < 0x64)
  {
    v199 = 0;
    v191 = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v12 = a6[1071];
    v199 = a2 - v12;
    v191 = v12 + a2;
  }

  if (v10 == 3)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = a3 + 1;
  }

  else
  {
    v14 = a3;
  }

  v15 = (a4 - (v13 != 0));
  v16 = *(a5 + 6);
  if (v16 < 7)
  {
    v19 = (v10 == 3 || v10 > 0x63) && v16 == 6;
    if (v15 < 0)
    {
      goto LABEL_331;
    }
  }

  else
  {
    v18 = v10 == 3 || v10 > 0x63;
    v19 = v18 & *(a5 + 8);
    if (v15 < 0)
    {
LABEL_331:
      result = 11;
      goto LABEL_332;
    }
  }

  v223 = v13;
  v200 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v187 = 0;
  v25 = *(a6 + 4);
  v205 = *(a5 + 56);
  v214 = *(a5 + 55);
  v26 = *(a5 + 2);
  v27 = *(a5 + 24);
  v225 = *(a5 + 32);
  v28 = *(a6 + 1);
  v29 = *(v25 + 8);
  __dst = *(v25 + 16);
  v170 = a6[1077];
  v171 = *(a6 + 88);
  v30 = *(a5 + 52);
  v31 = *(a5 + 16);
  v216 = *(a5 + 12) + v26 * v14;
  v32 = &v28[*(a5 + 2)];
  v193 = v32 - 1;
  v189 = v32 - 2;
  v166 = a1 - 1;
  v167 = v29 - 1;
  v210 = a6[1744];
  v180 = v210 & 0xF;
  v33 = 0;
  v34 = *(a6 + 15);
  v168 = &a1[a2];
  v169 = &a1[a2];
  v201 = *(a5 + 50);
  if ((v201 - 9) >= 3)
  {
    v35 = 12;
  }

  else
  {
    v35 = (v201 - 9) + 9;
  }

  v206 = *(a5 + 2);
  v173 = v35;
  v174 = 2 * v26;
  v218 = a6;
  v198 = a1;
  v196 = v9;
  v197 = *a6;
  v212 = v11;
  v36 = v19;
  v195 = v19;
  v213 = *(a6 + 1);
  v37 = v29;
  __src = v29;
  v204 = *(a5 + 52);
  v203 = *(a5 + 16);
  v194 = *(a5 + 24);
  do
  {
    while (2)
    {
      v38 = v14;
      if (a6[8] != v14)
      {
        v39 = v24;
        v40 = v33;
        v41 = v22;
        v226 = 0;
        if (SLSeek(*(a5 + 64), v216, 0) == 8 || (!SLFRead(*(a5 + 64), v206, v213, &v226) ? (v42 = v226 == v206) : (v42 = 0), v28 = v213, !v42))
        {
          *(v218 + 16) = 0;
          goto LABEL_331;
        }

        a6 = v218;
        a1 = v198;
        v9 = v196;
        v10 = v197;
        v36 = v195;
        v22 = v41;
        v37 = __src;
        v33 = v40;
        v31 = v203;
        v24 = v39;
        v27 = v194;
      }

      a6[8] = v38;
      v43 = v193;
      if (v36)
      {
        v23 = 0;
        v22 = *v193;
        if (v22 <= 4)
        {
          v44 = 3;
        }

        else
        {
          v44 = 4;
        }

        v43 = v189;
        if (v44 >= a2)
        {
          LOWORD(v44) = a2;
        }

        v200 = v44 + 1;
      }

      v45 = v24;
      v202 = v15 - 1;
      v14 = v38 + 1;
      v216 += v206;
      v217 = v15;
      if (v28 > v43)
      {
        v46 = v223;
        v47 = v37;
        goto LABEL_57;
      }

      v179 = v38;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v224 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v215 = 0;
      v54 = 0;
      v188 = v14 + 1;
      v183 = 4 * v188;
      v55 = v28;
      v47 = v37;
      v192 = v14;
      while (1)
      {
        if (v55 > v43)
        {
          goto LABEL_312;
        }

        v56 = v54 << (v215 + v201);
        v57 = v215 + v201;
LABEL_62:
        v58 = (v57 - 8);
        if (v58 >= 1)
        {
          v59 = *v55++;
          v56 |= v59 << (v57 - 8);
          v58 = v57 - 16;
        }

        v60 = -v58;
        v211 = *v55;
        v61 = (v211 >> -v58) | v56;
        if (!(v61 << 16))
        {
LABEL_312:
          v46 = v223;
          goto LABEL_57;
        }

        v215 = v58;
        v208 = v55;
        v221 = v43;
        if (v30 >= v61)
        {
          LODWORD(v64) = *(v225 + v61);
          v71 = (v31 + ((*(v27 + ((2 * v61) & 0xFFFELL) + 1) << 8) | *(v27 + ((2 * v61) & 0xFFFELL))));
        }

        else
        {
          v62 = v33;
          LOWORD(v63) = 0;
          v64 = 0;
          do
          {
            while (1)
            {
              v65 = 2 * v61;
              v66 = *(v27 + 2 * (v61 & 0x7FFF));
              if (v30 >= v61)
              {
                break;
              }

              *&v227[2 * v63 + 256] = *(v225 + v61) | ((v66 & 0xF) << 8);
              LOWORD(v63) = v63 + 1;
              v61 = (v66 >> 4) | (16 * *(v27 + v65 + 1));
              if ((v63 & 0x8000) != 0)
              {
                goto LABEL_76;
              }
            }

            v67 = *(v225 + v61);
            if (v67)
            {
              v68 = 0;
              v69 = v31 + (v66 | (*(v27 + v65 + 1) << 8));
              do
              {
                v70 = (v64 + 1);
                v227[v64] = *(v69 + v68++);
                LODWORD(v64) = v64 + 1;
              }

              while (v67 > v68);
            }

            else
            {
              v70 = v64;
            }

            v63 = v63 - 1;
            LOWORD(v61) = *&v227[2 * v63 + 256];
            v64 = v70;
          }

          while ((v63 & 0x8000) == 0);
LABEL_76:
          v71 = v227;
          v47 = __src;
          v33 = v62;
        }

        v24 = v45;
        v72 = v49;
        v207 = SFU2MASK[v60];
        v73 = v48;
        if (v64)
        {
          break;
        }

LABEL_310:
        v48 = v73;
        v49 = v72;
        v45 = v24;
        v55 = v208 + 1;
        v54 = v207 & v211;
        v46 = v223;
        v43 = v221;
        v28 = v213;
        v31 = v203;
        v14 = v192;
        if (v208 + 1 > v221)
        {
          goto LABEL_57;
        }
      }

      v74 = v214;
      v75 = a5;
      while (1)
      {
        LODWORD(v64) = v64 - 1;
        if (v51 <= 1u)
        {
          break;
        }

        if (v51 == 2)
        {
          v87 = *v71++;
          v73 = v87 >> 3;
          v24 = v24 | ((v87 & 7) << 8);
          v51 = 3;
          goto LABEL_277;
        }

        if (v51 == 3)
        {
          v78 = *v71++;
          v79 = v24 | v78;
          v24 = (v24 | v78) - 1;
          v80 = *(v75 + 80);
          if (v53 >= 63)
          {
            v52 = 63;
          }

          else
          {
            v52 = v53;
          }

          if (v10 == 3 && v72)
          {
LABEL_98:
            v51 = 0;
            goto LABEL_277;
          }

          if (v9)
          {
            if (v53 >= 4)
            {
              v88 = *v47;
              v89 = *v34;
              if (v88 < v89)
              {
                goto LABEL_98;
              }

              if (v88 == v89)
              {
                v90 = v47[1];
                v91 = v34[1];
                if (v90 < v91)
                {
                  goto LABEL_98;
                }

                if (v90 == v91)
                {
                  v92 = v47[2];
                  v93 = v34[2];
                  if (v92 < v93 || v92 == v93 && v47[3] < v34[3])
                  {
                    goto LABEL_98;
                  }
                }
              }
            }

            if (v33 <= 3)
            {
              v94 = *v47;
              v95 = *v34;
              while (1)
              {
                if (v94 <= v95)
                {
                  if (v94 != v95)
                  {
                    goto LABEL_175;
                  }

                  v96 = v47[1];
                  v97 = v34[1];
                  if (v96 <= v97)
                  {
                    if (v96 != v97)
                    {
                      break;
                    }

                    v98 = v47[2];
                    v99 = v34[2];
                    if (v98 <= v99 && (v98 != v99 || v47[3] <= v34[3]))
                    {
                      break;
                    }
                  }
                }

                v100 = v34[4];
                v34 += 4;
                v95 = v100;
                if (!v100)
                {
LABEL_323:
                  *v34 = -1;
                  goto LABEL_324;
                }
              }

              v95 = *v47;
LABEL_175:
              if (v188 >= *(v75 + 48) || (v117 = (*(v75 + 40) + v183), v118 = *v117, v95 <= v118) && (v95 != v118 || (v119 = v34[1], v120 = v117[1], v119 <= v120) && (v119 != v120 || (v121 = v34[2], v122 = v117[2], v121 <= v122) && (v121 != v122 || v34[3] <= v117[3]))))
              {
                *(v218 + 120) = v34;
                goto LABEL_184;
              }

LABEL_324:
              *(v218 + 120) = v34;
              goto LABEL_325;
            }
          }

LABEL_184:
          if ((v212 & 1) == 0)
          {
            v51 = 0;
            if (v53 < v199 || v53 > v191)
            {
              goto LABEL_277;
            }
          }

          v220 = v50;
          v123 = (v80 - v24 + 8 * v24);
          if (v74 == 6)
          {
            if ((v210 & (8 * *v123) & 0xF0) == 0)
            {
              v51 = 0;
              goto LABEL_276;
            }

            v126 = (v123[6] >> 3) & 0xF;
            switch(v126)
            {
              case 3:
                v124 = 48;
                break;
              case 15:
                v124 = 32;
                break;
              case 14:
                v124 = 16;
                break;
              default:
                LOBYTE(v124) = 0;
                goto LABEL_200;
            }
          }

          else
          {
            if (v74 == 16)
            {
              v124 = 0;
              v125 = (v123[6] >> 3) & 7;
              if (v125 > 2)
              {
                if (v125 != 3)
                {
                  if (v125 == 4)
                  {
                    v124 = 16;
                  }

                  goto LABEL_230;
                }

                v124 = 144;
                goto LABEL_224;
              }

              if (v125 != 1)
              {
                if (v125 != 2)
                {
                  goto LABEL_230;
                }

LABEL_224:
                v135 = *v123 & 0xF8;
                if (v135 == 8)
                {
                  v136 = v124;
                }

                else
                {
                  v136 = v124 | 0x40;
                }

                v137 = v136 | 0x20;
                if (v135 == 16)
                {
                  v124 |= 0x40u;
                }

                else
                {
                  v124 = v137;
                }

                goto LABEL_230;
              }

              v124 = 128;
LABEL_230:
              if ((v124 & v210) == 0)
              {
                goto LABEL_273;
              }

              v138 = v123[2] & 0x1F;
              if (v138 > 0xB)
              {
                switch(v138)
                {
                  case 0xCu:
                    v124 |= 4u;
                    break;
                  case 0xDu:
                    v124 |= 2u;
                    break;
                  case 0x13u:
                    v124 |= 1u;
                    break;
                }
              }

              else if (v138 == 2 || v138 == 6 || v138 == 9)
              {
                v124 |= 8u;
              }

              if ((v124 & 0xF) != 0)
              {
                v51 = v180 & v124;
                if ((v180 & v124) == 0)
                {
                  goto LABEL_274;
                }
              }

LABEL_200:
              v127 = v123[2];
              v128 = v127 >> 5;
              if (v10 == 3)
              {
                if (*(v218 + 102) >= 5)
                {
                  v129 = 5;
                }

                else
                {
                  v129 = *(v218 + 102);
                }

                *(*(v218 + 72) + v129) = v128;
                *(*(v218 + 80) + 8 * v129) = v228[0];
                *(*(v218 + 3504) + v129) = v124;
                *(*(v218 + 24) + 2 * v129) = v79;
                v185 = v22;
                v130 = v33;
                v131 = v72;
                v181 = v53;
                v132 = v73;
                v133 = v52;
                SFdecbit(v73, v214, v129, (v80 - v24 + 8 * v24), a5, v218);
                v75 = a5;
                v52 = v133;
                v73 = v132;
                v53 = v181;
                v72 = v131;
                v24 = (v79 - 1);
                v27 = v194;
                v33 = v130;
                v47 = __src;
                v74 = v214;
                v22 = v185;
                v36 = v195;
                v9 = v196;
                v10 = v197;
                a1 = v198;
                v51 = 0;
                ++*(v218 + 102);
                v187 = 1;
                goto LABEL_275;
              }

              if (v127 & 0x1F) == 0x12 || v123[4] < 0 || v74 == 6 && (v123[5] & 1) != 0 && v127 < 0x20 || (*v123 & v210 & 7) != 0 || (v123[1])
              {
                goto LABEL_273;
              }

              if (v10 == 5)
              {
                v182 = v127 >> 5;
                v176 = v52;
                v178 = v73;
                v163 = v72;
                v184 = (v79 - 1);
                v164 = v33;
                v165 = v23;
                v186 = v22;
                if (!SLwldcmp(v47, v53, a1, a2))
                {
                  goto LABEL_263;
                }

                goto LABEL_215;
              }

              if (v10 == 6)
              {
                v182 = v127 >> 5;
                v176 = v52;
                v178 = v73;
                v163 = v72;
                v184 = (v79 - 1);
                v164 = v33;
                v165 = v23;
                v186 = v22;
                if (!SFanachk(v47, v53, v218 + 3207))
                {
                  goto LABEL_263;
                }

                goto LABEL_215;
              }

              if (v128 == 2)
              {
                v51 = v171;
                if (!v171)
                {
                  goto LABEL_274;
                }
              }

              v148 = v34[3];
              if (v148 != 32 && v148 != v47[3] || (v149 = v34[2], v149 != 32) && v149 != v47[2] || (v150 = v34[1], v150 != 32) && v150 != v47[1])
              {
LABEL_273:
                v51 = 0;
LABEL_274:
                v75 = a5;
LABEL_275:
                v30 = v204;
LABEL_276:
                v50 = v220;
                goto LABEL_277;
              }

              *(v218 + 2158) = v53;
              *(v218 + 2160) = a2;
              v186 = v22;
              v164 = v33;
              v165 = v23;
              v184 = (v79 - 1);
              v163 = v72;
              v176 = v52;
              v178 = v73;
              v182 = v128;
              if (v170 != 2)
              {
                if (v170 == 8)
                {
                  if (!SFcorbr8(a5, v218, v47, v53, a1, a2))
                  {
                    goto LABEL_263;
                  }

                  goto LABEL_215;
                }

                if (v170 == 7)
                {
                  if (a2 < 7 || (v151 = &v47[v53], *(v169 - 3) != *(v151 - 3)) || *(v169 - 2) != *(v151 - 2) || *(v169 - 1) != *(v151 - 1))
                  {
                    if (*(v218 + 2152) <= 1)
                    {
                      v152 = &v47[v53];
                      if (*(v152 - 1) != *(v168 - 1))
                      {
                        v51 = 0;
                        v75 = a5;
                        a1 = v198;
                        v9 = v196;
                        v10 = v197;
                        v36 = v195;
                        v22 = v22;
                        v74 = v214;
                        v47 = __src;
                        v30 = v204;
                        v24 = (v79 - 1);
                        v27 = v194;
                        v72 = v72;
                        v50 = v220;
                        v73 = v73;
                        goto LABEL_277;
                      }

                      a1 = v198;
                      v47 = __src;
                      v27 = v194;
                      if (!*(v218 + 2152))
                      {
                        v153 = *(v152 - 2);
                        v154 = *(v168 - 2);
                        goto LABEL_298;
                      }
                    }
                  }
                }

                goto LABEL_299;
              }

              if (*(v218 + 2152))
              {
                goto LABEL_299;
              }

              v153 = v167[v53];
              v154 = v166[a2];
LABEL_298:
              if (v153 == v154)
              {
LABEL_299:
                if (SFcorbru(a5, v218, v47, v53, a1, a2, *(v218 + 2144), *(v218 + 2146), *(v218 + 2148), *(v218 + 2142)))
                {
LABEL_215:
                  strcpy(__dst, __src);
                  *(*(v218 + 3504) + *(v218 + 102)) = v124;
                  SFdecbit(v178, v214, 0, v123, a5, v218);
                  **(v218 + 24) = v79;
                  v134 = SFchkwrd(a5, v218, __dst, v53, v182, v228);
                  if (v134 == 10)
                  {
                    **(v218 + 72) = v182;
                    **(v218 + 80) = v228[0];
                    *(v218 + 102) = 1;
                    a1 = v198;
                    v10 = v197;
                    if (*(v218 + 40) == *(v218 + 42) || *(v218 + 56) <= (*(v218 + 44) + v53))
                    {
                      goto LABEL_325;
                    }

                    v51 = 0;
                    v36 = v195;
                    v9 = v196;
                    v22 = v186;
                    v33 = v164;
                    v23 = v165;
                    v74 = v214;
                    v47 = __src;
                    v30 = v204;
                    v24 = v184;
                    v72 = v163;
                    v50 = v220;
                    v52 = v176;
                    v73 = v178;
                  }

                  else
                  {
                    a1 = v198;
                    v9 = v196;
                    v10 = v197;
                    v36 = v195;
                    v22 = v186;
                    v33 = v164;
                    v23 = v165;
                    v30 = v204;
                    v72 = v163;
                    v50 = v220;
                    v52 = v176;
                    if (v134 == 8)
                    {
                      goto LABEL_331;
                    }

                    v51 = 0;
                    v74 = v214;
                    v47 = __src;
                    v24 = v184;
                    v73 = v178;
                  }

                  v75 = a5;
                  goto LABEL_277;
                }

LABEL_263:
                v51 = 0;
                v75 = a5;
                a1 = v198;
                v9 = v196;
                v10 = v197;
                v36 = v195;
                v22 = v186;
                v23 = v165;
                v74 = v214;
                v47 = __src;
              }

              else
              {
                v51 = 0;
                v75 = a5;
                v9 = v196;
                v10 = v197;
                v36 = v195;
                v22 = v22;
                v74 = v214;
              }

              v33 = v164;
              v30 = v204;
              v24 = v184;
              v72 = v163;
              v50 = v220;
              v52 = v176;
              v73 = v178;
              goto LABEL_277;
            }

            v124 = (8 * *v123) & 0xF0;
          }

          if ((v124 & v210) == 0)
          {
            goto LABEL_273;
          }

          goto LABEL_200;
        }

LABEL_277:
        if (!v64)
        {
          goto LABEL_310;
        }
      }

      if (!v51)
      {
        v81 = v23;
        if (v36)
        {
          v82 = v23;
        }

        else
        {
          v82 = 0;
        }

        if (v36)
        {
          v23 = 0;
        }

        else
        {
          v81 = 0;
          v23 = v23;
        }

        v83 = &v71[v81];
        v85 = *v83;
        v71 = v83 + 1;
        v84 = v85;
        v33 = (v52 - (v85 & 0x3F));
        if (v224)
        {
          if (v33 > 31)
          {
            v86 = HIDWORD(v228[0]) & SFU4MASK[v33 & 0x1F];
          }

          else
          {
            v86 = 0;
            LODWORD(v228[0]) &= SFU4MASK[v33];
          }

          HIDWORD(v228[0]) = v86;
          if (v84 < 0)
          {
            v104 = LODWORD(v228[0]) | 0x80000000;
          }

          else
          {
            v104 = v228[0] & 0x7FFFFFFF;
          }

          LODWORD(v228[0]) = v104;
        }

        else
        {
          v228[0] = (v84 & 0x80) << 24;
        }

        LODWORD(v64) = v64 - v82;
        v224 = v84 & 0x40;
        v51 = 1;
        v53 = v33;
        goto LABEL_277;
      }

      if (v51 != 1)
      {
        goto LABEL_277;
      }

      v77 = *v71++;
      v76 = v77;
      if (v77 > 7uLL)
      {
        if (v224 && (*(v205 + 4 * v76) & 0x40000000) != 0)
        {
          v101 = v72;
          LOBYTE(v76) = v76 + 32;
          if (v53 <= 63)
          {
            *(v228 + (v53 >> 5)) |= 1 << ~v53;
          }
        }

        else
        {
          v101 = v72;
        }

        v47[v53] = v76;
        if (v101)
        {
          v102 = 0;
        }

        else
        {
          v102 = v53 == v50;
        }

        v103 = v102;
        if (v53 < v50 || (v103 & 1) != 0)
        {
          v72 = v76 - a1[v53];
          v53 = (v53 + 1);
          v51 = 1;
          v50 = v53;
        }

        else
        {
          v53 = (v53 + 1);
          v51 = 1;
          v72 = v101;
        }

        goto LABEL_277;
      }

      v47[v53] = 0;
      if (v53 == v50 && !v72)
      {
        v72 = -a1[v53];
        ++v50;
      }

      if (v223)
      {
        if ((v72 & 0x8000) == 0)
        {
          v37 = v47;
          v223 = 0;
          v14 = v179 - 1;
          v216 -= v174;
          if (v72)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }

          v28 = v213;
          v31 = v203;
LABEL_319:
          a6 = v218;
          if ((v15 & 0x8000) == 0)
          {
            continue;
          }

          goto LABEL_330;
        }

        if (v217 > 0)
        {
          v37 = v47;
          goto LABEL_317;
        }
      }

      else if (v10 == 3 && v72 >= 1)
      {
        if (v187)
        {
          result = 10;
        }

        else
        {
          result = 11;
        }

        goto LABEL_332;
      }

      break;
    }

    v51 = 2;
    if (!v36 || v33 >= v22)
    {
      v73 = 0;
      v223 = 0;
      v24 = 0;
      goto LABEL_277;
    }

    if (v10 == 3)
    {
      if (v50 <= v200 && ((v72 >> 15) & 1) != 0)
      {
        goto LABEL_303;
      }

LABEL_261:
      v73 = 0;
      v24 = 0;
      v223 = 0;
      v221 -= 3;
      v51 = 2;
      goto LABEL_277;
    }

    if (v10 < 0x64)
    {
      goto LABEL_261;
    }

    if (v33 > 3)
    {
      v175 = v52;
      v177 = v73;
      v219 = v50;
      v112 = v72;
      v113 = v24;
      v114 = v33;
      v115 = v23;
      v116 = v22;
    }

    else
    {
      v105 = *v47;
      v106 = *v34;
      while (1)
      {
        if (v105 <= v106)
        {
          if (v105 != v106)
          {
            goto LABEL_249;
          }

          v107 = v47[1];
          v108 = v34[1];
          if (v107 <= v108)
          {
            if (v107 != v108)
            {
              break;
            }

            v109 = v47[2];
            v110 = v34[2];
            if (v109 <= v110 && (v109 != v110 || v47[3] <= v34[3]))
            {
              break;
            }
          }
        }

        v111 = v34[4];
        v34 += 4;
        v106 = v111;
        if (!v111)
        {
          goto LABEL_323;
        }
      }

      v106 = *v47;
LABEL_249:
      if (v188 < *(v75 + 48))
      {
        v139 = (*(v75 + 40) + v183);
        v140 = *v139;
        if (v106 > v140)
        {
          goto LABEL_324;
        }

        if (v106 == v140)
        {
          v141 = v34[1];
          v142 = v139[1];
          if (v141 > v142)
          {
            goto LABEL_324;
          }

          if (v141 == v142)
          {
            v143 = v34[2];
            v144 = v139[2];
            if (v143 > v144 || v143 == v144 && v34[3] > v139[3])
            {
              goto LABEL_324;
            }
          }
        }
      }

      v175 = v52;
      v177 = v73;
      v219 = v50;
      v112 = v72;
      v113 = v24;
      v114 = v33;
      v115 = v23;
      v116 = v22;
      *(v218 + 120) = v34;
    }

    v145 = v53;
    if (v53 >= 4)
    {
      v145 = 4;
    }

    v146 = memcmp(v47, v34, v145);
    v47 = __src;
    v147 = v146;
    a1 = v198;
    v9 = v196;
    v10 = v197;
    v36 = v195;
    v22 = v116;
    v23 = v115;
    v74 = v214;
    v33 = v114;
    v30 = v204;
    v24 = v113;
    v27 = v194;
    v72 = v112;
    v50 = v219;
    v52 = v175;
    v73 = v177;
    v75 = a5;
    if (!v147)
    {
      goto LABEL_261;
    }

LABEL_303:
    v23 = *v221 - 1;
    if (!*v221)
    {
      v37 = v47;
      v223 = 0;
LABEL_317:
      v28 = v213;
      v31 = v203;
      v14 = v192;
LABEL_318:
      v15 = v202;
      goto LABEL_319;
    }

    v48 = v73;
    v49 = v72;
    v155 = *(v221 - 2);
    v156 = *(v221 - 1) | ((v155 & 3) << 8);
    v28 = v213;
    v31 = v203;
    v14 = v192;
    if (!v156)
    {
      v37 = v47;
      v223 = 0;
      goto LABEL_318;
    }

    v157 = (v156 - 1);
    v55 = &v213[(v173 * v157) >> 3];
    v158 = -(v173 * v157) & 7;
    v45 = v24;
    if (v158)
    {
      v159 = *v55++;
      v160 = (SFU2MASK[v158] & v159);
    }

    else
    {
      v160 = 0;
    }

    v223 = 0;
    v51 = 0;
    v46 = 0;
    v43 = v221 - 3;
    v52 = v155 >> 2;
    v57 = v201 - v158;
    v56 = v160 << (v201 - v158);
    if (v55 <= v221 - 3)
    {
      goto LABEL_62;
    }

LABEL_57:
    v37 = v47;
    v223 = v46;
    v24 = v45;
    v15 = v202;
    a6 = v218;
  }

  while (v217 > 0);
LABEL_330:
  if (!v187)
  {
    goto LABEL_331;
  }

LABEL_325:
  result = 10;
LABEL_332:
  v162 = *MEMORY[0x1E69E9840];
  return result;
}