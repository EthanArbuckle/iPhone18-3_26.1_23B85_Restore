size_t gnssOsa_readNv(int a1, void *a2, size_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_readNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2 && gp_NvStorage)
  {
    (*(*gp_NvStorage + 64))(&__p);
    v7 = __p;
    v8 = v19;
    if (v19 - __p >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v19 - __p;
    }

    memcpy(a2, __p, v9);
    v10 = g_LbsOsaTrace_Config;
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NvID,%d,BytesRead,%zu,BytesReq,%zu\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 68, "gnssOsa_readNv", a1, v19 - __p, a3);
      gnssOsa_PrintLog(__str, 5, 1, 0);
      v7 = __p;
      v8 = v19;
      v10 = g_LbsOsaTrace_Config;
    }

    if (v7 == v8)
    {
      if (v10 < 2)
      {
LABEL_15:
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }

        goto LABEL_21;
      }

      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx No NV data,%d\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 87, "gnssOsa_readNv", 769, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
      v10 = g_LbsOsaTrace_Config;
    }

    if (v10 >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 68, "gnssOsa_readNv");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    goto LABEL_15;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "gnssOsa_readNv", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 68, "gnssOsa_readNv");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  v9 = 0;
LABEL_21:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_298F10F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_storeBufferToNv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_storeBufferToNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2 && gp_NvStorage)
  {
    *__str = 0;
    v13 = 0;
    v14 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__str, a2, a2 + a3, a3);
    v7 = (*(*gp_NvStorage + 32))(gp_NvStorage, a1, __str);
    if (*__str)
    {
      v13 = *__str;
      operator delete(*__str);
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: invalid Argument\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_storeBufferToNv");
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "gnssOsa_storeBufferToNv");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_298F111E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_getNvSize(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 68, "gnssOsa_getNvSize");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_17;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NvSize\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_getNvSize", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      goto LABEL_17;
    }

LABEL_16:
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "gnssOsa_getNvSize");
    gnssOsa_PrintLog(__str, 5, 1, 0);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  if (!gp_NvStorage)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_17;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NvStorage\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_getNvSize", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (*(*gp_NvStorage + 64))(&__p);
  *a2 = v12 - __p;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NvSize,%zu\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 68, "gnssOsa_getNvSize", *a2);
    gnssOsa_PrintLog(__str, 5, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 68, "gnssOsa_getNvSize");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  result = 1;
LABEL_18:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F115D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_clearNV(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NvID,%d\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "gnssOsa_clearNV", a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = (*(*gp_NvStorage + 80))(gp_NvStorage, a1);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssOsa_flushNv(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_flushNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  (*(*gp_NvStorage + 56))(gp_NvStorage);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 68, "gnssOsa_flushNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F118F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF06260, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_Environ_Severity(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x29EDCA608];
  if (*(a2 + 45))
  {
    *(a2 + 60) = 1;
    goto LABEL_65;
  }

  v7 = result;
  v8 = a4 + 61440;
  v9 = (a3 + 15368);
  v10 = (a3 + 14344);
  memmove((a3 + 14472), (a3 + 14344), 0x380uLL);
  v11 = *(a3 + 15384);
  *(a3 + 15372) = *v9;
  v12 = *(a3 + 15392);
  *(a3 + 15388) = v11;
  *(a3 + 15396) = v12;
  v13 = *(a4 + 4);
  *(a3 + 15368) = v13;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  *v10 = 0u;
  v10[1] = 0u;
  v14 = 7;
  v15 = 8750;
  do
  {
    v16 = *(v9 + v14);
    v15 -= 1000;
    v17 = v14-- != 0;
  }

  while (v17 && !v16);
  v18 = v16 + v15;
  if (v13 <= v18 && v13 + 750 >= v18 - 750)
  {
    v19 = v14 + 1;
  }

  else
  {
    bzero(v10, 0x420uLL);
    v19 = 0;
    *v9 = *(a4 + 4);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v7 + 1248;
  v26 = v7 + 2400;
  v27 = v7 + 1760;
  v28 = v7 + 992;
  result = v19 + 1;
  v29 = a3 + (v19 << 7) + 14344;
  do
  {
    if (*(v25 + 4 * v20) >= 10 && *(v26 + 2 * v20) >= 0x65u)
    {
      v30 = *(v27 + v20);
      *(v10 + v20) = v30;
      v23 += v30;
      ++v22;
      if (v19 < 1)
      {
        v38 = v30;
      }

      else
      {
        v31 = v29;
        v32 = v19 + 1;
        v33 = v30;
        do
        {
          v35 = *v31;
          v31 -= 128;
          v34 = v35;
          v36 = v33;
          if (v35 > v33)
          {
            v36 = v34;
          }

          v37 = v30;
          if (v34 < v30)
          {
            v37 = v34;
          }

          if (v34)
          {
            v23 += v34;
            ++v22;
            v33 = v36;
            LOBYTE(v30) = v37;
          }

          --v32;
        }

        while (v32 > 1);
        v38 = v33;
        v30 = v30;
      }

      v39 = v38 - v30;
      if ((*(v28 + 2 * v20) & 0x300) == 0)
      {
        v39 -= 2;
      }

      if (v39 > v24)
      {
        v24 = v39;
      }

      if (v39 > v21)
      {
        v24 = v21;
        v21 = v39;
      }
    }

    ++v20;
    ++v29;
  }

  while (v20 != 128);
  if (v22 < 8)
  {
    v40 = 0;
  }

  else if (v21 + v24 > 8 || v23 / v22 <= *(a3 + 3))
  {
    v40 = 7;
  }

  else
  {
    v40 = 1;
  }

  if (*(p_NA + 381) == 1)
  {
    v41 = *(p_NA + 26780);
    if (v41 > 3)
    {
      if (v41 == 7)
      {
        v43 = 7;
      }

      else
      {
        v43 = 0;
      }

      if (v41 == 6)
      {
        v43 = 6;
      }

      if (v41 == 5)
      {
        v44 = 5;
      }

      else
      {
        v44 = 0;
      }

      if (v41 == 4)
      {
        v44 = 4;
      }

      if (v41 <= 5)
      {
        v43 = v44;
      }

      goto LABEL_63;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v43 = 4;
        goto LABEL_63;
      }

      v42 = v41 == 3;
LABEL_59:
      if (v42)
      {
        v43 = *(p_NA + 26780);
      }

      else
      {
        v43 = 0;
      }

LABEL_63:
      *(a2 + 60) = v43;
      if ((*(v8 + 988) & 1) == 0)
      {
        *(v8 + 980) = 1;
        *(v8 + 988) = 1;
      }

      goto LABEL_65;
    }

    if (v41)
    {
      v42 = v41 == 1;
      goto LABEL_59;
    }
  }

  if (v22 >= 8)
  {
    *(a2 + 60) = v40;
  }

LABEL_65:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Conv_Lock_Units(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = (a3 + 38);
    v4 = (a2 + 14);
    result = result;
    do
    {
      if (*(v4 - 2) >= 0xFDF2u)
      {
        v5 = 6500;
      }

      else
      {
        v5 = *(v4 - 2) / 0xAu;
      }

      *(v4 - 2) = v5;
      if (*(v4 - 1) >= 0xFDF2u)
      {
        v6 = 6500;
      }

      else
      {
        v6 = *(v4 - 1) / 0xAu;
      }

      *(v4 - 1) = v6;
      v7 = *v4;
      v8 = v7 > 0xFDEC;
      v9 = (429496730 * (v7 + 5)) >> 32;
      if (v8)
      {
        LOWORD(v9) = 6500;
      }

      *v4 = v9;
      v4 += 18;
      v10 = *v3;
      v11 = ((26215 * v10) >> 18) + ((26215 * v10) >> 31);
      if (v10 > 32009)
      {
        LOWORD(v11) = 3200;
      }

      if (v10 >= -32009)
      {
        v12 = v11;
      }

      else
      {
        v12 = -3200;
      }

      *v3 = v12;
      v3 += 28;
      --result;
    }

    while (result);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ds_NK_Summary_FirstLine(uint64_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = (*result)++;
  *v1 = 10;
  v2 = *result;
  if (*result >= *(result + 24))
  {
    v2 = *(result + 16);
  }

  v3 = 0;
  v4 = 78;
  do
  {
    *result = v2 + 1;
    *v2 = v4;
    v2 = *result;
    if (*result >= *(result + 24))
    {
      v2 = *(result + 16);
      *result = v2;
    }

    v4 = str_0[++v3];
  }

  while (v3 != 16);
  *result = v2 + 1;
  *v2 = 10;
  if (*result >= *(result + 24))
  {
    *result = *(result + 16);
  }

  v5 = *MEMORY[0x29EDCA608];

  return GNSS_Nav_Debug_Flush_Check(result);
}

uint64_t ds_NK_Summary(void *a1)
{
  v1513 = *MEMORY[0x29EDCA608];
  v1 = a1[36];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[17];
  v5 = a1[27];
  v6 = *(a1[15] + 394);
  GN_GPS_Get_LibVersion(v1474);
  v7 = *v1;
  v8 = 86;
  v9 = 1u;
  do
  {
    *v1 = v7 + 1;
    *v7 = v8;
    v7 = *v1;
    if (*v1 >= v1[3])
    {
      v7 = v1[2];
      *v1 = v7;
    }

    v8 = aVer[v9++];
  }

  while (v9 != 7);
  v10 = v1474[0];
  if (LOBYTE(v1474[0]))
  {
    v11 = v1474 + 1;
    do
    {
      *v1 = v7 + 1;
      *v7 = v10;
      v7 = *v1;
      if (*v1 >= v1[3])
      {
        v7 = v1[2];
        *v1 = v7;
      }

      v12 = *v11++;
      v10 = v12;
    }

    while (v12);
  }

  *v1 = v7 + 1;
  *v7 = 32;
  v13 = *v1;
  if (*v1 >= v1[3])
  {
    v13 = v1[2];
  }

  *v1 = v13 + 1;
  *v13 = 91;
  v14 = *v1;
  if (*v1 >= v1[3])
  {
    v14 = v1[2];
    *v1 = v14;
  }

  v15 = *(v5 + 152);
  if (v15)
  {
    v16 = (v5 + 153);
    do
    {
      *v1 = v14 + 1;
      *v14 = v15;
      v14 = *v1;
      if (*v1 >= v1[3])
      {
        v14 = v1[2];
        *v1 = v14;
      }

      v17 = *v16++;
      v15 = v17;
    }

    while (v17);
  }

  *v1 = v14 + 1;
  *v14 = 93;
  v18 = *v1;
  if (*v1 >= v1[3])
  {
    v18 = v1[2];
  }

  for (i = 3; i > 1; --i)
  {
    *v1 = v18 + 1;
    *v18 = 32;
    v18 = *v1;
    if (*v1 >= v1[3])
    {
      v18 = v1[2];
      *v1 = v18;
    }
  }

  sprintf_2f(v1, (*(v3 + 32) - *(v4 + 68180)) / 0x64u);
  v20 = (*v1)++;
  *v20 = 32;
  v21 = *v1;
  if (*v1 >= v1[3])
  {
    v21 = v1[2];
  }

  v22 = &ch_GNSS_Exe_States[20 * *(v2 + 2048) + 1];
  v23 = 32;
  do
  {
    *v1 = v21 + 1;
    *v21 = v23;
    v21 = *v1;
    if (*v1 >= v1[3])
    {
      v21 = v1[2];
      *v1 = v21;
    }

    v24 = *v22++;
    v23 = v24;
  }

  while (v24);
  sprintf_sp1d(v1, *(v2 + 2046));
  sprintf_sp1d(v1, v6);
  sprintf_sp1d(v1, *(v4 + 29));
  v25 = (*v1)++;
  *v25 = 10;
  if (*v1 >= v1[3])
  {
    *v1 = v1[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1);
  v26 = a1[36];
  v27 = a1[6];
  v29 = a1[9];
  v28 = a1[10];
  v30 = (a1[17] + 24576);
  v31 = a1[22];
  v32 = *v26;
  v33 = 84;
  v34 = 1u;
  do
  {
    *v26 = v32 + 1;
    *v32 = v33;
    v32 = *v26;
    if (*v26 >= v26[3])
    {
      v32 = v26[2];
      *v26 = v32;
    }

    v33 = aTime[v34++];
  }

  while (v34 != 7);
  *v1474 = 0;
  v1473[0] = 0;
  *v1472 = 0;
  *v1471 = 0;
  v35 = *(v28 + 48);
  v36 = *(v28 + 62);
  v37 = (v28 + 152);
  *v1505 = 0;
  if (!R8_EQ((v28 + 152), v1505) || (v37 = (v28 + 160), *v1505 = 0, !R8_EQ((v28 + 160), v1505)) || (v37 = (v28 + 168), *v1505 = 0, v38 = R8_EQ((v28 + 168), v1505), v39 = 0.0, !v38))
  {
    v39 = *v37;
  }

  for (j = v35 - v39; j >= 604800.0; ++v36)
  {
    j = j + -604800.0;
  }

  while (j < 0.0)
  {
    j = j + 604800.0;
    --v36;
  }

  API_Get_UTC_Cor(0, v1474);
  GPS_To_UTC_Time(v1473, &v1472[3], &v1472[2], &v1472[1], v1472, &v1471[1], v1471, v36, j, *v1474);
  sprintf_02d(v26, v1472[1]);
  sprintf_02d(v26, v1472[0]);
  v41 = v1471[1];
  if (v1472[1] == 23 && v1472[0] == 59 && v1471[1] >= 0x3Au)
  {
    v1505[0] = 0;
    v1470 = 0;
    *&v1473[2] = 0;
    API_Get_Next_Leap_Second(v1505, &v1470, &v1473[2]);
    v41 = v1471[1];
    if (!*&v1473[2] && v1470 == 1)
    {
      v41 = ++v1471[1];
    }
  }

  sprintf_02d(v26, v41);
  v42 = (*v26)++;
  *v42 = 46;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_03d(v26, v1471[0]);
  v43 = *(v28 + 32);
  v44 = (*v26)++;
  *v44 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_10u(v26, v43);
  sprintf_5d(v26, *(v28 + 62));
  sprintf_12f3(v26, *(v28 + 48));
  sprintf_2d(v26, *(v31 + 24));
  v45 = *v26;
  v46 = &g_TOW_Stat_As_String[10 * *v27 + 1];
  v47 = 32;
  do
  {
    *v26 = v45 + 1;
    *v45 = v47;
    v45 = *v26;
    if (*v26 >= v26[3])
    {
      v45 = v26[2];
      *v26 = v45;
    }

    v48 = *v46++;
    v47 = v48;
  }

  while (v48);
  sprintf_6d(v26, v30[635]);
  sprintf_6d(v26, v30[636]);
  sprintf_gR8(v26, v27[6] * 1000000000.0);
  sprintf_sgR8(v26, *(v28 + 184) * 1000000000.0);
  v49 = (*v26)++;
  *v49 = 32;
  v50 = *v26;
  if (*v26 >= v26[3])
  {
    v50 = v26[2];
  }

  v51 = *(v28 + 36);
  *v26 = v50 + 1;
  *v50 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_10u(v26, v51);
  v52 = v29[61];
  v53 = (*v26)++;
  *v53 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_9d(v26, v52);
  v54 = 0.0;
  if (*(v28 + 60) == 1 && *v27 >= 1)
  {
    v54 = *(v28 + 48) + (604800 * *(v28 + 62) - 662342400);
  }

  v55 = (*v26)++;
  *v55 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_14f3(v26, v54);
  v56 = (*v26)++;
  *v56 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_19U(v26, *(v28 + 40));
  if (*v27 < 1)
  {
    v61 = *v26;
    v62 = 32;
    v63 = 1u;
    v64 = a1;
    do
    {
      *v26 = v61 + 1;
      *v61 = v62;
      v61 = *v26;
      if (*v26 >= v26[3])
      {
        v61 = v26[2];
        *v26 = v61;
      }

      v62 = a9999999999[v63++];
    }

    while (v63 != 20);
  }

  else
  {
    v57 = *(v28 + 48) * 1000.0;
    v58 = -0.5;
    if (v57 > 0.0)
    {
      v58 = 0.5;
    }

    v59 = v57 + v58;
    if (v59 <= 2147483650.0)
    {
      if (v59 >= -2147483650.0)
      {
        v60 = v59;
      }

      else
      {
        v60 = 0x80000000;
      }
    }

    else
    {
      v60 = 0x7FFFFFFF;
    }

    v65 = _MergedGlobals;
    v66 = *(v28 + 32);
    if (_MergedGlobals)
    {
      v67 = dword_2A145427C;
    }

    else
    {
      _MergedGlobals = *(v28 + 32);
      dword_2A145427C = v60;
      v67 = v60;
      v65 = v66;
    }

    v68 = v65 + v60;
    v69 = v67 + v66;
    v70 = v69 - v68;
    if (v69 - v68 <= -302400000)
    {
      v70 = -302400000;
    }

    v71 = v70 + v68;
    v72 = (v71 - v69 - (v71 != v69)) / 0x240C8400;
    if (v71 != v69)
    {
      ++v72;
    }

    v73 = 604800000 * v72 + v69;
    if ((v73 - v68) >= 302399999)
    {
      v74 = 302399999;
    }

    else
    {
      v74 = v73 - v68;
    }

    v75 = v73 - v68 - 604800000 * ((v73 + 604799999 - v68 - v74) / 0x240C8400);
    v76 = (*v26)++;
    *v76 = 32;
    if (*v26 >= v26[3])
    {
      *v26 = v26[2];
    }

    sprintf_4d(v26, v75);
    v1474[0] = 0;
    v1505[0] = 0;
    *v1473 = 0;
    if (API_Get_FS_Pulse_TTick(v1474, v1505, &v1473[2], v1473))
    {
      LODWORD(v77) = v1505[0];
      v78 = *(v28 + 48) - *(v28 + 152) + ((*(v28 + 32) - v1474[0]) + v77 * -0.0000152587891) * -0.001 * (1.0 - *(v28 + 184));
        ;
      }

        ;
      }

      v82 = 0;
      v83 = *v26;
      v84 = 32;
      do
      {
        *v26 = v83 + 1;
        *v83 = v84;
        v83 = *v26;
        if (*v26 >= v26[3])
        {
          v83 = v26[2];
          *v26 = v83;
        }

        v84 = asc_299059399[++v82];
      }

      while (v82 != 2);
      sprintf_10u(v26, v1474[0]);
      sprintf_10u(v26, v1505[0]);
      v85 = -0.5;
      if (k * 10000.0 > 0.0)
      {
        v85 = 0.5;
      }

      v86 = k * 10000.0 + v85;
      if (v86 <= 2147483650.0)
      {
        v64 = a1;
        if (v86 >= -2147483650.0)
        {
          v87 = v86;
        }

        else
        {
          v87 = 0x80000000;
        }
      }

      else
      {
        v87 = 0x7FFFFFFF;
        v64 = a1;
      }

      sprintf_7f(v26, v87, 2);
      v61 = *v26;
    }

    else
    {
      v61 = *v26;
      v80 = 32;
      v81 = 1u;
      v64 = a1;
      do
      {
        *v26 = v61 + 1;
        *v61 = v80;
        v61 = *v26;
        if (*v26 >= v26[3])
        {
          v61 = v26[2];
          *v26 = v61;
        }

        v80 = a9999999[v81++];
      }

      while (v81 != 15);
    }
  }

  v88 = (*(v28 + 48) - *(v28 + 152) - v27[15]) * 1000.0 - (*(v28 + 32) - *(v27 + 32));
  *v26 = v61 + 1;
  *v61 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_12f3(v26, v88);
  v89 = (*v26)++;
  *v89 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_2d(v26, v30[641]);
  v90 = v29[442];
  if (v90 == -1)
  {
    v91 = 255;
  }

  else
  {
    v91 = v90 / 0xEA60;
  }

  sprintf_4d(v26, v91);
  v92 = (*v26)++;
  *v92 = 32;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  sprintf_1u(v26, v29[444]);
  v93 = *v26;
  v94 = 32;
  v95 = 1u;
  do
  {
    *v26 = v93 + 1;
    *v93 = v94;
    v93 = *v26;
    if (*v26 >= v26[3])
    {
      v93 = v26[2];
      *v26 = v93;
    }

    v94 = aGoh[v95++];
  }

  while (v95 != 6);
  sprintf_4d(v26, v29[462]);
  v96 = v29[459];
  if (v96)
  {
    v97 = 274877907 * (*(v28 + 36) - v96);
    v98 = v97 >> 63;
    v99 = v97 >> 38;
    v100 = (*v26)++;
    *v100 = 32;
    if (*v26 >= v26[3])
    {
      *v26 = v26[2];
    }

    sprintf_4d(v26, v99 + v98);
    v101 = v29[462];
    if (v101)
    {
      v102 = 274877907 * (*(v28 + 36) - v101);
      v103 = (v102 >> 38) + (v102 >> 63);
    }

    else
    {
      v103 = 0;
    }

    v107 = (*v26)++;
    *v107 = 32;
    if (*v26 >= v26[3])
    {
      *v26 = v26[2];
    }

    sprintf_4d(v26, v103);
    v105 = *v26;
  }

  else
  {
    v104 = 0;
    v105 = *v26;
    v106 = 32;
    do
    {
      *v26 = v105 + 1;
      *v105 = v106;
      v105 = *v26;
      if (*v26 >= v26[3])
      {
        v105 = v26[2];
        *v26 = v105;
      }

      v106 = a00[++v104];
    }

    while (v104 != 4);
  }

  *v26 = v105 + 1;
  *v105 = 10;
  if (*v26 >= v26[3])
  {
    *v26 = v26[2];
  }

  GNSS_Nav_Debug_Flush_Check(v26);
  v108 = v64[36];
  v110 = v64[6];
  v109 = v64[7];
  v111 = (v109 + 17120);
  v112 = (v109 + 8986);
  v113 = v64[10];
  v114 = *v108;
  v115 = 71;
  v116 = 1u;
  do
  {
    *v108 = v114 + 1;
    *v114 = v115;
    v114 = *v108;
    if (*v108 >= v108[3])
    {
      v114 = v108[2];
      *v108 = v114;
    }

    v115 = aGlot[v116++];
  }

  while (v116 != 7);
  v117 = *(v110 + 88) - *(v113 + 160) + 0.0005;
  if (v117 >= 86400.0)
  {
    v117 = v117 + -86400.0;
  }

  v118 = ((v117 - v117) * 1000.0);
  v119 = (v117 / 0xE10);
  v120 = v117 - 3600 * v119;
  v121 = (v120 / 0x3C);
  v122 = v120 - 60 * v121;
  sprintf_02d(v108, v119);
  sprintf_02d(v108, v121);
  sprintf_02d(v108, v122);
  v123 = (*v108)++;
  *v123 = 46;
  if (*v108 >= v108[3])
  {
    *v108 = v108[2];
  }

  sprintf_03d(v108, v118);
  sprintf_3d(v108, *(v110 + 82));
  sprintf_5d(v108, *(v110 + 84));
  v124 = v112[3];
  sprintf_3d(v108, *v112);
  sprintf_3d(v108, v124);
  v125 = 0;
  v126 = *v108;
  v127 = 32;
  do
  {
    *v108 = v126 + 1;
    *v126 = v127;
    v126 = *v108;
    if (*v108 >= v108[3])
    {
      v126 = v108[2];
      *v108 = v126;
    }

    v127 = asc_299059399[++v125];
  }

  while (v125 != 2);
  sprintf_12f3(v108, *(v110 + 88));
  sprintf_2d(v108, *(v110 + 80));
  sprintf_3d(v108, *(v111 + 8));
  sprintf_5d(v108, *v111);
  v128 = (*v108)++;
  *v128 = 32;
  v129 = *v108;
  if (*v108 >= v108[3])
  {
    v129 = v108[2];
  }

  *v108 = v129 + 1;
  *v129 = 32;
  v130 = *v108;
  if (*v108 >= v108[3])
  {
    v130 = v108[2];
  }

  v131 = &g_TOW_Stat_As_String[10 * *(v110 + 76) + 1];
  v132 = 32;
  do
  {
    *v108 = v130 + 1;
    *v130 = v132;
    v130 = *v108;
    if (*v108 >= v108[3])
    {
      v130 = v108[2];
      *v108 = v130;
    }

    v133 = *v131++;
    v132 = v133;
  }

  while (v133);
  *v108 = v130 + 1;
  *v130 = 10;
  if (*v108 >= v108[3])
  {
    *v108 = v108[2];
  }

  GNSS_Nav_Debug_Flush_Check(v108);
  v134 = v64[36];
  v135 = v64[29];
  v136 = *v134;
  v137 = 112;
  v138 = 1u;
  do
  {
    *v134 = v136 + 1;
    *v136 = v137;
    v136 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v136 = *(v134 + 16);
      *v134 = v136;
    }

    v137 = aPNd[v138++];
  }

  while (v138 != 7);
  *v1474 = vmulq_f64(*(v135 + 104), vdupq_n_s64(0x3F91DF46A2529D44uLL));
  sprintf_LaLo(v134, v1474);
  sprintf_sgR8(v134, *(v135 + 120));
  sprintf_sgR8(v134, *(v135 + 128));
  v139 = (*v134)++;
  *v139 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_sgR8(v134, *(v135 + 136));
  v140 = *(v135 + 144) * 10.0;
  v141 = -0.5;
  if (v140 > 0.0)
  {
    v141 = 0.5;
  }

  v142 = v140 + v141;
  if (v142 <= 2147483650.0)
  {
    if (v142 >= -2147483650.0)
    {
      v143 = v142;
    }

    else
    {
      v143 = 0x80000000;
    }
  }

  else
  {
    v143 = 0x7FFFFFFF;
  }

  sprintf_7f(v134, v143, 2);
  sprintf_sgR8(v134, *(v135 + 152));
  v144 = *v134;
  v145 = 32;
  v146 = 1u;
  do
  {
    *v134 = v144 + 1;
    *v144 = v145;
    v144 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v144 = *(v134 + 16);
      *v134 = v144;
    }

    v145 = aSt[v146++];
  }

  while (v146 != 6);
  sprintf_2d(v134, *(v135 + 333));
  sprintf_2d(v134, *(v135 + 334));
  v147 = (*v134)++;
  *v147 = 32;
  v148 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v148 = *(v134 + 16);
  }

  v149 = *(v135 + 316);
  if (v149 >= 5)
  {
    v150 = 45;
  }

  else
  {
    v150 = 0x484D4C562DuLL >> (8 * v149);
  }

  *v134 = v148 + 1;
  *v148 = v150;
  v151 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v151 = *(v134 + 16);
  }

  *v134 = v151 + 1;
  *v151 = 32;
  v152 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v152 = *(v134 + 16);
  }

  v153 = *(v135 + 312) - 1;
  if (v153 > 3)
  {
    v154 = "NC";
  }

  else
  {
    v154 = off_29EF06268[v153];
  }

  v155 = *v154;
  if (*v154)
  {
    v156 = (v154 + 1);
    do
    {
      *v134 = v152 + 1;
      *v152 = v155;
      v152 = *v134;
      if (*v134 >= *(v134 + 24))
      {
        v152 = *(v134 + 16);
        *v134 = v152;
      }

      v157 = *v156++;
      v155 = v157;
    }

    while (v157);
  }

  *v134 = v152 + 1;
  *v152 = 32;
  v158 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v158 = *(v134 + 16);
  }

  v159 = *(v135 + 308) - 1;
  if (v159 > 4)
  {
    v160 = "NF";
  }

  else
  {
    v160 = off_29EF06288[v159];
  }

  v161 = *v160;
  if (*v160)
  {
    v162 = (v160 + 1);
    do
    {
      *v134 = v158 + 1;
      *v158 = v161;
      v158 = *v134;
      if (*v134 >= *(v134 + 24))
      {
        v158 = *(v134 + 16);
        *v134 = v158;
      }

      v163 = *v162++;
      v161 = v163;
    }

    while (v163);
  }

  *v134 = v158 + 1;
  *v158 = 32;
  v164 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v164 = *(v134 + 16);
  }

  v165 = *(v135 + 304);
  if (v165 >= 6)
  {
    v166 = 45;
  }

  else
  {
    v166 = 0x2B465650532DuLL >> (8 * v165);
  }

  *v134 = v164 + 1;
  *v164 = v166;
  v167 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v167 = *(v134 + 16);
  }

  v168 = 0;
  v169 = 32;
  do
  {
    *v134 = v167 + 1;
    *v167 = v169;
    v167 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v167 = *(v134 + 16);
      *v134 = v167;
    }

    v169 = a0x[++v168];
  }

  while (v168 != 4);
  sprintf_08x(v134, *(v135 + 328));
  v170 = 0;
  v171 = *v134;
  v172 = 32;
  do
  {
    *v134 = v171 + 1;
    *v171 = v172;
    v171 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v171 = *(v134 + 16);
      *v134 = v171;
    }

    v172 = a0x[++v170];
  }

  while (v170 != 4);
  sprintf_03x(v134, *(v135 + 296));
  v173 = *v134;
  v174 = 32;
  v175 = 1u;
  do
  {
    *v134 = v173 + 1;
    *v173 = v174;
    v173 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v173 = *(v134 + 16);
      *v134 = v173;
    }

    v174 = aPa[v175++];
  }

  while (v175 != 6);
  sprintf_ACC(v134, *(v135 + 208));
  v176 = (*v134)++;
  *v176 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 216));
  v177 = (*v134)++;
  *v177 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_3d(v134, *(v135 + 224));
  v178 = (*v134)++;
  *v178 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 200));
  v179 = *v134;
  v180 = 32;
  v181 = 1u;
  do
  {
    *v134 = v179 + 1;
    *v179 = v180;
    v179 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v179 = *(v134 + 16);
      *v134 = v179;
    }

    v180 = aVa[v181++];
  }

  while (v181 != 6);
  sprintf_ACC(v134, *(v135 + 232));
  v182 = (*v134)++;
  *v182 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 240));
  v183 = (*v134)++;
  *v183 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 248));
  v184 = *v134;
  v185 = 32;
  v186 = 1u;
  do
  {
    *v134 = v184 + 1;
    *v184 = v185;
    v184 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v184 = *(v134 + 16);
      *v134 = v184;
    }

    v185 = aTa[v186++];
  }

  while (v186 != 6);
  sprintf_ACC(v134, *(v135 + 160) * 1000.0);
  v187 = (*v134)++;
  *v187 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 168) * 1000000000.0);
  v188 = (*v134)++;
  *v188 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 176) * 1000000000.0);
  v189 = *v134;
  v190 = 32;
  v191 = 1u;
  do
  {
    *v134 = v189 + 1;
    *v189 = v190;
    v189 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v189 = *(v134 + 16);
      *v134 = v189;
    }

    v190 = aEt[v191++];
  }

  while (v191 != 6);
  v192 = *(v135 + 320);
  if (v192 >= 0)
  {
    v193 = *(v135 + 320);
  }

  else
  {
    v193 = -v192;
  }

  sprintf1da(v134, v193, v1505, 0, v192 >> 31);
  v194 = *v134;
  v195 = 32;
  v196 = 1u;
  do
  {
    *v134 = v194 + 1;
    *v194 = v195;
    v194 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v194 = *(v134 + 16);
      *v134 = v194;
    }

    v195 = aTr[v196++];
  }

  while (v196 != 6);
  v197 = *(v135 + 324);
  if (v197 >= 5)
  {
    v198 = 45;
  }

  else
  {
    v198 = 0x484D4C562DuLL >> (8 * v197);
  }

  *v134 = v194 + 1;
  *v194 = v198;
  v199 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v199 = *(v134 + 16);
  }

  v200 = 32;
  v201 = 1u;
  do
  {
    *v134 = v199 + 1;
    *v199 = v200;
    v199 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v199 = *(v134 + 16);
      *v134 = v199;
    }

    v200 = aTtff[v201++];
  }

  while (v201 != 8);
  sprintf_5f(v134, *(v135 + 336) / 10, 3);
  sprintf_5f(v134, *(v135 + 340) / 10, 3);
  v202 = *v134;
  v203 = 32;
  v204 = 1u;
  do
  {
    *v134 = v202 + 1;
    *v202 = v203;
    v202 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v202 = *(v134 + 16);
      *v134 = v202;
    }

    v203 = aDiv[v204++];
  }

  while (v204 != 7);
  v205 = *(v135 + 300);
  if (v205 >= 0)
  {
    v206 = *(v135 + 300);
  }

  else
  {
    v206 = -v205;
  }

  sprintf1da(v134, v206, v1505, 0, v205 >> 31);
  v207 = (*v134)++;
  *v207 = 10;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v134);
  v208 = v64[36];
  v209 = v64[10];
  v210 = v64[17];
  v211 = v64[22];
  strcpy(v1474, "    -------------- ");
  v212 = *v208;
  v213 = 71;
  v214 = 1u;
  do
  {
    *v208 = v212 + 1;
    *v212 = v213;
    v212 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v212 = *(v208 + 16);
      *v208 = v212;
    }

    v213 = aGeod[v214++];
  }

  while (v214 != 7);
  sprintf_LaLo(v208, v209 + 224);
  sprintf_sgR8(v208, *(v209 + 240));
  sprintf_sgR8(v208, *(v209 + 240) - *(v209 + 248));
  v215 = *(v209 + 416);
  if (v215 == 2)
  {
    v216 = 115;
  }

  else
  {
    if (v215 != 1)
    {
      goto LABEL_295;
    }

    v216 = 83;
  }

  LOBYTE(v1474[1]) = v216;
LABEL_295:
  v217 = *(v209 + 420);
  if (v217 == 2)
  {
    v218 = 98;
  }

  else
  {
    if (v217 != 1)
    {
      goto LABEL_300;
    }

    v218 = 66;
  }

  BYTE1(v1474[1]) = v218;
LABEL_300:
  v219 = *(v209 + 432);
  if (v219 == 2)
  {
    v220 = 100;
  }

  else
  {
    if (v219 != 1)
    {
      goto LABEL_305;
    }

    v220 = 68;
  }

  BYTE2(v1474[1]) = v220;
LABEL_305:
  v221 = *(v209 + 424);
  if (v221 == 2)
  {
    v222 = 103;
  }

  else
  {
    if (v221 != 1)
    {
      goto LABEL_310;
    }

    v222 = 71;
  }

  HIBYTE(v1474[1]) = v222;
LABEL_310:
  v223 = *(v209 + 440);
  if (v223 == 2)
  {
    v224 = 104;
  }

  else
  {
    if (v223 != 1)
    {
      goto LABEL_315;
    }

    v224 = 72;
  }

  LOBYTE(v1474[2]) = v224;
LABEL_315:
  v225 = *(v209 + 444);
  if (v225 == 2)
  {
    v226 = 97;
  }

  else
  {
    if (v225 != 1)
    {
      goto LABEL_320;
    }

    v226 = 65;
  }

  BYTE1(v1474[2]) = v226;
LABEL_320:
  v227 = *(v209 + 448);
  if (v227 == 2)
  {
    v228 = 118;
  }

  else
  {
    if (v227 != 1)
    {
      goto LABEL_325;
    }

    v228 = 86;
  }

  BYTE2(v1474[2]) = v228;
LABEL_325:
  v229 = *(v209 + 452);
  if (v229 == 2)
  {
    v230 = 100;
  }

  else
  {
    if (v229 != 1)
    {
      goto LABEL_330;
    }

    v230 = 68;
  }

  HIBYTE(v1474[2]) = v230;
LABEL_330:
  v231 = *(v209 + 456);
  if (v231 == 2)
  {
    v232 = 103;
  }

  else
  {
    if (v231 != 1)
    {
      goto LABEL_335;
    }

    v232 = 71;
  }

  LOBYTE(v1474[3]) = v232;
LABEL_335:
  v233 = *(v209 + 460);
  if (v233 == 2)
  {
    v234 = 115;
  }

  else
  {
    if (v233 != 1)
    {
      goto LABEL_340;
    }

    v234 = 83;
  }

  BYTE1(v1474[3]) = v234;
LABEL_340:
  v235 = *(v209 + 464);
  if (v235 == 2)
  {
    v236 = 100;
  }

  else
  {
    if (v235 != 1)
    {
      goto LABEL_345;
    }

    v236 = 68;
  }

  BYTE2(v1474[3]) = v236;
LABEL_345:
  v237 = *(v209 + 468);
  if (v237 == 2)
  {
    v238 = 103;
  }

  else
  {
    if (v237 != 1)
    {
      goto LABEL_350;
    }

    v238 = 71;
  }

  HIBYTE(v1474[3]) = v238;
LABEL_350:
  v239 = *(v209 + 472);
  if (v239 == 2)
  {
    v240 = 100;
  }

  else
  {
    if (v239 != 1)
    {
      goto LABEL_355;
    }

    v240 = 68;
  }

  LOBYTE(v1474[4]) = v240;
LABEL_355:
  v241 = *(v209 + 476);
  if (v241 == 2)
  {
    v242 = 116;
  }

  else
  {
    if (v241 != 1)
    {
      goto LABEL_360;
    }

    v242 = 84;
  }

  BYTE1(v1474[4]) = v242;
LABEL_360:
  v243 = *(v209 + 480);
  if (v243 == 2)
  {
    v244 = 100;
    goto LABEL_364;
  }

  if (v243 == 1)
  {
    v244 = 68;
LABEL_364:
    BYTE2(v1474[4]) = v244;
  }

  v245 = v1474[0];
  v246 = *v208;
  if (LOBYTE(v1474[0]))
  {
    v247 = v1474 + 1;
    do
    {
      *v208 = v246 + 1;
      *v246 = v245;
      v246 = *v208;
      if (*v208 >= *(v208 + 24))
      {
        v246 = *(v208 + 16);
        *v208 = v246;
      }

      v248 = *v247++;
      v245 = v248;
    }

    while (v248);
  }

  v249 = 32;
  v250 = 1u;
  do
  {
    *v208 = v246 + 1;
    *v246 = v249;
    v246 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v246 = *(v208 + 16);
      *v208 = v246;
    }

    v249 = aSf[v250++];
  }

  while (v250 != 6);
  v251 = *(v210 + 27204);
  v252 = ch_Stat_Fil[v251];
  if (v252)
  {
    v253 = &ch_Stat_Fil[v251] + 1;
    do
    {
      *v208 = v246 + 1;
      *v246 = v252;
      v246 = *v208;
      if (*v208 >= *(v208 + 24))
      {
        v246 = *(v208 + 16);
        *v208 = v246;
      }

      v254 = *v253++;
      v252 = v254;
    }

    while (v254);
  }

  sprintf_2d(v208, *(v210 + 27249));
  sprintf_2d(v208, *(v210 + 27208));
  sprintf_2d(v208, *(v210 + 27248));
  v255 = fmin(*(v210 + 27216), 9.89999962) * 10.0;
  v256 = -0.5;
  if (v255 > 0.0)
  {
    v256 = 0.5;
  }

  v257 = v255 + v256;
  if (v257 <= 2147483650.0)
  {
    if (v257 >= -2147483650.0)
    {
      v258 = v257;
    }

    else
    {
      v258 = 0x80000000;
    }
  }

  else
  {
    v258 = 0x7FFFFFFF;
  }

  sprintf_3f(v208, v258, 2);
  sprintf_sgR8(v208, *(v210 + 27232));
  sprintf_sgR8(v208, *(v210 + 27240));
  v259 = *v208;
  v260 = 32;
  v261 = 1u;
  do
  {
    *v208 = v259 + 1;
    *v259 = v260;
    v259 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v259 = *(v208 + 16);
      *v208 = v259;
    }

    v260 = aHf[v261++];
  }

  while (v261 != 6);
  v262 = *(v210 + 27276);
  v263 = ch_Heading[v262];
  if (v263)
  {
    v264 = &ch_Heading[v262] + 1;
    do
    {
      *v208 = v259 + 1;
      *v259 = v263;
      v259 = *v208;
      if (*v208 >= *(v208 + 24))
      {
        v259 = *(v208 + 16);
        *v208 = v259;
      }

      v265 = *v264++;
      v263 = v265;
    }

    while (v265);
  }

  v266 = *(v210 + 27280);
  v267 = -0.5;
  if (v266 > 0.0)
  {
    v267 = 0.5;
  }

  v268 = v266 + v267;
  if (v268 <= 2147483650.0)
  {
    if (v268 >= -2147483650.0)
    {
      v269 = v268;
    }

    else
    {
      v269 = 0x80000000;
    }
  }

  else
  {
    v269 = 0x7FFFFFFF;
  }

  sprintf_5d(v208, v269);
  v270 = (*v208)++;
  *v270 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v271 = *(v210 + 27296);
  if (v271)
  {
    v272 = (*v211 - v271) / 1000;
  }

  else
  {
    v272 = 0;
  }

  sprintf_4d(v208, v272);
  v273 = *(v210 + 27328);
  v274 = -0.5;
  if (v273 > 0.0)
  {
    v274 = 0.5;
  }

  v275 = v273 + v274;
  if (v275 <= 2147483650.0)
  {
    if (v275 >= -2147483650.0)
    {
      v276 = v275;
    }

    else
    {
      v276 = 0x80000000;
    }
  }

  else
  {
    v276 = 0x7FFFFFFF;
  }

  sprintf_5d(v208, v276);
  v277 = (*v208)++;
  *v277 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v278 = *(v210 + 27336);
  if (v278)
  {
    v279 = (*v211 - v278) / 1000;
  }

  else
  {
    v279 = 0;
  }

  sprintf_4d(v208, v279);
  sprintf_2d(v208, *(v210 + 27320));
  v280 = (*v208)++;
  *v280 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  sprintf_11f9(v208, *(v210 + 27304));
  v281 = (*v208)++;
  *v281 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  sprintf_11f9(v208, *(v210 + 27312));
  v282 = *v208;
  v283 = 32;
  v284 = 1u;
  do
  {
    *v208 = v282 + 1;
    *v282 = v283;
    v282 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v282 = *(v208 + 16);
      *v208 = v282;
    }

    v283 = aHi[v284++];
  }

  while (v284 != 6);
  v285 = *(v211 + 79832) * 10.0;
  v286 = -0.5;
  if (v285 > 0.0)
  {
    v286 = 0.5;
  }

  v287 = v285 + v286;
  if (v287 <= 2147483650.0)
  {
    if (v287 >= -2147483650.0)
    {
      v288 = v287;
    }

    else
    {
      v288 = 0x80000000;
    }
  }

  else
  {
    v288 = 0x7FFFFFFF;
  }

  sprintf_2f(v208, v288);
  v289 = (*v208)++;
  *v289 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v290 = *(v211 + 79808);
  v291 = -0.5;
  if (v290 > 0.0)
  {
    v291 = 0.5;
  }

  v292 = v290 + v291;
  if (v292 <= 2147483650.0)
  {
    if (v292 >= -2147483650.0)
    {
      v293 = v292;
    }

    else
    {
      v293 = 0x80000000;
    }
  }

  else
  {
    v293 = 0x7FFFFFFF;
  }

  sprintf_3d(v208, v293);
  v294 = (*v208)++;
  *v294 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v295 = *(v211 + 1856);
  v296 = -0.5;
  if (v295 > 0.0)
  {
    v296 = 0.5;
  }

  v297 = v295 + v296;
  if (v297 <= 2147483650.0)
  {
    if (v297 >= -2147483650.0)
    {
      v298 = v297;
    }

    else
    {
      v298 = 0x80000000;
    }
  }

  else
  {
    v298 = 0x7FFFFFFF;
  }

  sprintf_3d(v208, v298);
  v299 = (*v208)++;
  *v299 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v300 = *(v211 + 79824);
  v301 = -0.5;
  if (v300 > 0.0)
  {
    v301 = 0.5;
  }

  v302 = v300 + v301;
  if (v302 <= 2147483650.0)
  {
    if (v302 >= -2147483650.0)
    {
      v303 = v302;
    }

    else
    {
      v303 = 0x80000000;
    }
  }

  else
  {
    v303 = 0x7FFFFFFF;
  }

  sprintf_3d(v208, v303);
  v304 = (*v208)++;
  *v304 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v305 = *(v211 + 79816);
  v306 = -0.5;
  if (v305 > 0.0)
  {
    v306 = 0.5;
  }

  v307 = v305 + v306;
  if (v307 <= 2147483650.0)
  {
    if (v307 >= -2147483650.0)
    {
      v308 = v307;
    }

    else
    {
      v308 = 0x80000000;
    }
  }

  else
  {
    v308 = 0x7FFFFFFF;
  }

  sprintf_3d(v208, v308);
  v309 = (*v208)++;
  *v309 = 32;
  v310 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v310 = *(v208 + 16);
  }

  v311 = *(v211 + 79840);
  if (v311 >= 8)
  {
    v312 = 120;
  }

  else
  {
    v312 = 0x4D30323146535578uLL >> (8 * v311);
  }

  *v208 = v310 + 1;
  *v310 = v312;
  v313 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v313 = *(v208 + 16);
  }

  *v208 = v313 + 1;
  *v313 = 32;
  v314 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v314 = *(v208 + 16);
  }

  if (*(v211 + 79844))
  {
    v315 = 83;
  }

  else
  {
    v315 = 45;
  }

  *v208 = v314 + 1;
  *v314 = v315;
  v316 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v316 = *(v208 + 16);
  }

  *v208 = v316 + 1;
  *v316 = 32;
  v317 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v317 = *(v208 + 16);
  }

  if (*(v211 + 79845))
  {
    v318 = 84;
  }

  else
  {
    v318 = 45;
  }

  *v208 = v317 + 1;
  *v317 = v318;
  v319 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v319 = *(v208 + 16);
  }

  *v208 = v319 + 1;
  *v319 = 10;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v208);
  v320 = v64[36];
  v321 = v64[10];
  v322 = v64[17];
  v323 = v64[22];
  v324 = *v320;
  v325 = 76;
  v326 = 1u;
  do
  {
    *v320 = v324 + 1;
    *v324 = v325;
    v324 = *v320;
    if (*v320 >= *(v320 + 24))
    {
      v324 = *(v320 + 16);
      *v320 = v324;
    }

    v325 = aLocal[v326++];
  }

  while (v326 != 8);
  v327 = v321 + 28;
  v328 = (v322 + 68288);
  v329 = -3;
  do
  {
    v330 = *v327 - *(v328 - 9);
    if (v329 != -1)
    {
      if (v329 == -2)
      {
        v331 = -6.28318531;
        if (v330 >= 3.14159265 || (v331 = 6.28318531, v330 < -3.14159265))
        {
          v330 = v330 + v331;
        }
      }

      v330 = v330 * *v328;
    }

    v332 = (*v320)++;
    *v332 = 32;
    if (*v320 >= *(v320 + 24))
    {
      *v320 = *(v320 + 16);
    }

    sprintf_12f3(v320, v330);
    ++v328;
    ++v327;
    v333 = __CFADD__(v329++, 1);
  }

  while (!v333);
  v334 = (*v320)++;
  *v334 = 32;
  if (*v320 >= *(v320 + 24))
  {
    *v320 = *(v320 + 16);
  }

  sprintf_sgR8(v320, v321[46]);
  sprintf_sgR8(v320, -v321[44]);
  sprintf_6d(v320, v321[124]);
  v335 = v321 + 18;
  v336 = 0.0;
  for (m = 4; m > 1; --m)
  {
    v338 = *v335--;
    v336 = v336 + v338 * v338;
  }

  sprintf_sgR8(v320, sqrt(v336));
  sprintf_6d(v320, *(v323 + 1856));
  sprintf_sgR8(v320, v321[42]);
  sprintf_sgR8(v320, v321[43]);
  sprintf_sgR8(v320, v321[119]);
  sprintf_sgR8(v320, v321[120]);
  sprintf_sgR8(v320, v321[122]);
  sprintf_sgR8(v320, v321[123]);
  v339 = (*v320)++;
  *v339 = 10;
  if (*v320 >= *(v320 + 24))
  {
    *v320 = *(v320 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v320);
  print_line_LS(v64, 1);
  print_line_LS(v64, 2);
  print_line_LS(v64, 3);
  print_line_LS(v64, 4);
  print_line_LS(v64, 5);
  v340 = v64[36];
  if (g_Logging_Cfg >= 7)
  {
    v341 = v64[17];
    v342 = *v340;
    v343 = 75;
    v344 = 1u;
    do
    {
      *v340 = v342 + 1;
      *v342 = v343;
      v342 = *v340;
      if (*v340 >= v340[3])
      {
        v342 = v340[2];
        *v340 = v342;
      }

      v343 = aKfarp[v344++];
    }

    while (v344 != 7);
    *v340 = v342 + 1;
    *v342 = 32;
    v345 = *v340;
    if (*v340 >= v340[3])
    {
      v345 = v340[2];
    }

    *v340 = v345 + 1;
    *v345 = 80;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, *(v341 + 27616));
    v346 = fmin(*(v341 + 27608), 9.89999962) * 10.0;
    v347 = -0.5;
    if (v346 > 0.0)
    {
      v347 = 0.5;
    }

    v348 = v346 + v347;
    if (v348 <= 2147483650.0)
    {
      if (v348 >= -2147483650.0)
      {
        v349 = v348;
      }

      else
      {
        v349 = 0x80000000;
      }
    }

    else
    {
      v349 = 0x7FFFFFFF;
    }

    sprintf_3f(v340, v349, 2);
    v350 = (*v340)++;
    *v350 = 32;
    v351 = *v340;
    if (*v340 >= v340[3])
    {
      v351 = v340[2];
    }

    *v340 = v351 + 1;
    *v351 = 72;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_6d(v340, fmin(*(v341 + 27568), 99999.0));
    v352 = (*v340)++;
    *v352 = 32;
    v353 = *v340;
    if (*v340 >= v340[3])
    {
      v353 = v340[2];
    }

    *v340 = v353 + 1;
    *v353 = 86;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_6d(v340, fmin(*(v341 + 27576), 99999.0));
    v354 = (*v340)++;
    *v354 = 32;
    v355 = *v340;
    if (*v340 >= v340[3])
    {
      v355 = v340[2];
    }

    *v340 = v355 + 1;
    *v355 = 66;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_6d(v340, fmin(*(v341 + 27584), 99999.0));
    v356 = (*v340)++;
    *v356 = 32;
    v357 = *v340;
    if (*v340 >= v340[3])
    {
      v357 = v340[2];
    }

    *v340 = v357 + 1;
    *v357 = 83;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_6d(v340, fmin(*(v341 + 27592), 99999.0));
    v358 = (*v340)++;
    *v358 = 32;
    v359 = *v340;
    if (*v340 >= v340[3])
    {
      v359 = v340[2];
    }

    *v340 = v359 + 1;
    *v359 = 72;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, *(v341 + 27528));
    v360 = (*v340)++;
    *v360 = 32;
    v361 = *v340;
    if (*v340 >= v340[3])
    {
      v361 = v340[2];
    }

    *v340 = v361 + 1;
    *v361 = 86;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, *(v341 + 27529));
    v362 = (*v340)++;
    *v362 = 32;
    v363 = *v340;
    if (*v340 >= v340[3])
    {
      v363 = v340[2];
    }

    *v340 = v363 + 1;
    *v363 = 66;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, *(v341 + 27530));
    v364 = (*v340)++;
    *v364 = 32;
    v365 = *v340;
    if (*v340 >= v340[3])
    {
      v365 = v340[2];
    }

    *v340 = v365 + 1;
    *v365 = 83;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, *(v341 + 27531));
    v366 = (*v340)++;
    *v366 = 32;
    v367 = *v340;
    if (*v340 >= v340[3])
    {
      v367 = v340[2];
    }

    *v340 = v367 + 1;
    *v367 = 86;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, *(v341 + 27712));
    v368 = fmin(*(v341 + 27704), 9.89999962) * 10.0;
    v369 = -0.5;
    if (v368 > 0.0)
    {
      v369 = 0.5;
    }

    v370 = v368 + v369;
    if (v370 <= 2147483650.0)
    {
      if (v370 >= -2147483650.0)
      {
        v371 = v370;
      }

      else
      {
        v371 = 0x80000000;
      }
    }

    else
    {
      v371 = 0x7FFFFFFF;
    }

    sprintf_3f(v340, v371, 2);
    v372 = (*v340)++;
    *v372 = 32;
    v373 = *v340;
    if (*v340 >= v340[3])
    {
      v373 = v340[2];
    }

    *v340 = v373 + 1;
    *v373 = 72;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, fmin(*(v341 + 27664), 99.0));
    v374 = (*v340)++;
    *v374 = 32;
    v375 = *v340;
    if (*v340 >= v340[3])
    {
      v375 = v340[2];
    }

    *v340 = v375 + 1;
    *v375 = 86;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, fmin(*(v341 + 27672), 99.0));
    v376 = (*v340)++;
    *v376 = 32;
    v377 = *v340;
    if (*v340 >= v340[3])
    {
      v377 = v340[2];
    }

    *v340 = v377 + 1;
    *v377 = 66;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, fmin(*(v341 + 27680), 99.0));
    v378 = (*v340)++;
    *v378 = 32;
    v379 = *v340;
    if (*v340 >= v340[3])
    {
      v379 = v340[2];
    }

    *v340 = v379 + 1;
    *v379 = 83;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_3d(v340, fmin(*(v341 + 27688), 99.0));
    v380 = (*v340)++;
    *v380 = 32;
    v381 = *v340;
    if (*v340 >= v340[3])
    {
      v381 = v340[2];
    }

    *v340 = v381 + 1;
    *v381 = 72;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_4d(v340, *(v341 + 27624));
    v382 = (*v340)++;
    *v382 = 32;
    v383 = *v340;
    if (*v340 >= v340[3])
    {
      v383 = v340[2];
    }

    *v340 = v383 + 1;
    *v383 = 86;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_4d(v340, *(v341 + 27625));
    v384 = (*v340)++;
    *v384 = 32;
    v385 = *v340;
    if (*v340 >= v340[3])
    {
      v385 = v340[2];
    }

    *v340 = v385 + 1;
    *v385 = 66;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_4d(v340, *(v341 + 27626));
    v386 = (*v340)++;
    *v386 = 32;
    v387 = *v340;
    if (*v340 >= v340[3])
    {
      v387 = v340[2];
    }

    *v340 = v387 + 1;
    *v387 = 83;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_4d(v340, *(v341 + 27627));
    v388 = (*v340)++;
    *v388 = 10;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    GNSS_Nav_Debug_Flush_Check(v340);
    v340 = v64[36];
  }

  v389 = v64[7];
  v390 = v64[5];
  v391 = v64[9];
  v392 = *v340;
  v393 = 78;
  v394 = 1u;
  do
  {
    *v340 = v392 + 1;
    *v392 = v393;
    v392 = *v340;
    if (*v340 >= v340[3])
    {
      v392 = v340[2];
      *v340 = v392;
    }

    v393 = aNavm[v394++];
  }

  while (v394 != 7);
  if (v391[14])
  {
    v395 = 0;
    v396 = 0;
    v397 = (v389 + 224);
    do
    {
      if (*(*(v389 + 80) + v395))
      {
        v398 = 65;
      }

      else
      {
        v398 = 45;
      }

      if (*(*(v389 + 64) + v395) & 1) != 0 || (*(*(v389 + 72) + v395))
      {
        if (*(*v389 + v395))
        {
          v399 = 24;
        }

        else
        {
          v399 = 56;
        }

        v398 += v399;
        if (v398 == 77)
        {
          LOBYTE(v398) = 46;
        }

        if (*(*(v389 + 64) + v395))
        {
          v400 = *(*v389 + v395) == 0;
        }

        else
        {
          v400 = 1;
        }

        if (!v400)
        {
          if (*v397 == 0xFFFFFF)
          {
            v396 = (0x80000000 >> v395) | v396;
          }

          else
          {
            v396 = v396;
          }
        }
      }

      else
      {
        if (!*(*v389 + v395))
        {
          v398 += 32;
        }

        if (v398 == 77)
        {
          LOBYTE(v398) = 46;
        }
      }

      *v340 = v392 + 1;
      *v392 = v398;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      if ((~v395 & 3) == 0)
      {
        *v340 = v392 + 1;
        *v392 = 32;
        v392 = *v340;
        if (*v340 >= v340[3])
        {
          v392 = v340[2];
          *v340 = v392;
        }
      }

      ++v395;
      v397 += 29;
    }

    while (v395 != 32);
    v401 = 32;
    v402 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v401;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      v401 = asc_29905949C[v402++];
    }

    while (v402 != 8);
    for (n = 0; n != 32; ++n)
    {
      if (v391[n + 265])
      {
        LOBYTE(v404) = 46;
      }

      else if (v391[n + 544])
      {
        LOBYTE(v404) = 58;
      }

      else
      {
        v405 = *(v390 + 7720 + 4 * n);
        v1138 = v405 > 2;
        v404 = 0x6E564Du >> (8 * v405);
        if (v1138)
        {
          LOBYTE(v404) = 120;
        }
      }

      *v340 = v392 + 1;
      *v392 = v404;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      if ((~n & 3) == 0)
      {
        *v340 = v392 + 1;
        *v392 = 32;
        v392 = *v340;
        if (*v340 >= v340[3])
        {
          v392 = v340[2];
          *v340 = v392;
        }
      }
    }

    v406 = 0;
    v407 = 32;
    do
    {
      *v340 = v392 + 1;
      *v392 = v407;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      v407 = asc_2990594A4[++v406];
    }

    while (v406 != 8);
    sprintf_08x(v340, v396);
    sprintf_sp1d(v340, *(v389 + 8956));
    sprintf_sp1d(v340, *(v389 + 8972));
    v392 = *v340;
  }

  else
  {
    v408 = 71;
    v409 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v408;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      v408 = aGpsDisabled[v409++];
    }

    while (v409 != 15);
  }

  v410 = 32;
  v411 = 1u;
  do
  {
    *v340 = v392 + 1;
    *v392 = v410;
    v392 = *v340;
    if (*v340 >= v340[3])
    {
      v392 = v340[2];
      *v340 = v392;
    }

    v410 = aQzss[v411++];
  }

  while (v411 != 8);
  if (v391[16])
  {
    v412 = 0;
    v413 = 0;
    v414 = (v389 + 9256);
    v415 = 9;
    do
    {
      if (*(*(v389 + 9112) + v412))
      {
        v416 = 65;
      }

      else
      {
        v416 = 45;
      }

      if (*(*(v389 + 9096) + v412) & 1) != 0 || (*(*(v389 + 9104) + v412))
      {
        if (*(*(v389 + 9032) + v412))
        {
          v417 = 24;
        }

        else
        {
          v417 = 56;
        }

        v416 += v417;
        if (v416 == 77)
        {
          LOBYTE(v416) = 46;
        }

        if (*(*(v389 + 9096) + v412))
        {
          v418 = *(*(v389 + 9032) + v412) == 0;
        }

        else
        {
          v418 = 1;
        }

        if (!v418)
        {
          if (*v414 == 0xFFFFFF)
          {
            v413 = (1 << v415) | v413;
          }

          else
          {
            v413 = v413;
          }
        }
      }

      else
      {
        if (!*(*(v389 + 9032) + v412))
        {
          v416 += 32;
        }

        if (v416 == 77)
        {
          LOBYTE(v416) = 46;
        }
      }

      *v340 = v392 + 1;
      *v392 = v416;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      ++v412;
      --v415;
      v414 += 29;
    }

    while (v412 != 10);
    *v340 = v392 + 1;
    *v392 = 32;
    v419 = *v340;
    if (*v340 >= v340[3])
    {
      v419 = v340[2];
    }

    v420 = 0;
    v421 = v391 + 420;
    do
    {
      if (*v421)
      {
        LOBYTE(v422) = 46;
      }

      else if (v421[279])
      {
        LOBYTE(v422) = 58;
      }

      else
      {
        v423 = *(v390 + 8340 + v420);
        v1138 = v423 > 2;
        v422 = 0x6E564Du >> (8 * v423);
        if (v1138)
        {
          LOBYTE(v422) = 120;
        }
      }

      *v340 = v419 + 1;
      *v419 = v422;
      v419 = *v340;
      if (*v340 >= v340[3])
      {
        v419 = v340[2];
        *v340 = v419;
      }

      v420 += 4;
      ++v421;
    }

    while (v420 != 40);
    *v340 = v419 + 1;
    *v419 = 32;
    if (*v340 >= v340[3])
    {
      *v340 = v340[2];
    }

    sprintf_03x(v340, v413);
    v392 = *v340;
  }

  else
  {
    v424 = 68;
    v425 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v424;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      v424 = aDisabled[v425++];
    }

    while (v425 != 11);
  }

  v426 = 32;
  v427 = 1u;
  do
  {
    *v340 = v392 + 1;
    *v392 = v426;
    v392 = *v340;
    if (*v340 >= v340[3])
    {
      v392 = v340[2];
      *v340 = v392;
    }

    v426 = aSbas[v427++];
  }

  while (v427 != 8);
  if (v391[17])
  {
    for (ii = 0; ii != 39; ++ii)
    {
      v429 = *(v390 + 8783 + ii);
      if (v429 >= 3)
      {
        v430 = 90;
      }

      else
      {
        v430 = 0x41452Du >> (8 * v429);
      }

      *v340 = v392 + 1;
      *v392 = v430;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }
    }

    sprintf_sp1d(v340, *(v390 + 8822));
    sprintf_sp1d(v340, *(v390 + 8823));
    v392 = *v340;
  }

  else
  {
    v431 = 68;
    v432 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v431;
      v392 = *v340;
      if (*v340 >= v340[3])
      {
        v392 = v340[2];
        *v340 = v392;
      }

      v431 = aDisabled_0[v432++];
    }

    while (v432 != 10);
  }

  *v340 = v392 + 1;
  *v392 = 10;
  if (*v340 >= v340[3])
  {
    *v340 = v340[2];
  }

  GNSS_Nav_Debug_Flush_Check(v340);
  v433 = v64[36];
  v434 = v64[9];
  v435 = v64[7];
  v436 = v435 + 4279;
  v437 = v435 + 5994;
  v438 = v64[5];
  v439 = v64[17];
  v440 = *v433;
  v441 = 71;
  v442 = 1u;
  do
  {
    *v433 = v440 + 1;
    *v440 = v441;
    v440 = *v433;
    if (*v433 >= *(v433 + 24))
    {
      v440 = *(v433 + 16);
      *v433 = v440;
    }

    v441 = aGlom[v442++];
  }

  while (v442 != 7);
  if (*(v434 + 15))
  {
    v443 = 0;
    v444 = 0;
    v445 = 23;
    do
    {
      if (*(v435[2148] + v443))
      {
        v446 = 65;
      }

      else
      {
        v446 = 45;
      }

      if (*(v435[2146] + v443) & 1) != 0 || (*(v435[2147] + v443))
      {
        if (*(v435[1489] + v443))
        {
          v447 = 24;
        }

        else
        {
          v447 = 56;
        }

        v446 += v447;
        if (v446 == 77)
        {
          LOBYTE(v446) = 46;
        }

        if (*(v435[2146] + v443))
        {
          v448 = *(v435[1489] + v443) == 0;
        }

        else
        {
          v448 = 1;
        }

        if (!v448)
        {
          if (*v437 == 4095)
          {
            v444 = (1 << v445) | v444;
          }

          else
          {
            v444 = v444;
          }
        }
      }

      else
      {
        if (!*(v435[1489] + v443))
        {
          v446 += 32;
        }

        if (v446 == 77)
        {
          LOBYTE(v446) = 46;
        }
      }

      *v433 = v440 + 1;
      *v440 = v446;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      if ((~v443 & 3) == 0)
      {
        *v433 = v440 + 1;
        *v440 = 32;
        v440 = *v433;
        if (*v433 >= *(v433 + 24))
        {
          v440 = *(v433 + 16);
          *v433 = v440;
        }
      }

      ++v443;
      --v445;
      v437 += 32;
    }

    while (v443 != 24);
    v449 = 32;
    v450 = 1u;
    do
    {
      *v433 = v440 + 1;
      *v440 = v449;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      v449 = asc_2990594D9[v450++];
    }

    while (v450 != 18);
    v451 = 0;
    v452 = v434 + 297;
    do
    {
      if (*(v452 + v451))
      {
        LOBYTE(v453) = 46;
      }

      else
      {
        v454 = *(v438 + 7848 + 4 * v451);
        v1138 = v454 > 2;
        v453 = 0x6E564Du >> (8 * v454);
        if (v1138)
        {
          LOBYTE(v453) = 120;
        }
      }

      *v433 = v440 + 1;
      *v440 = v453;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      if ((~(v451 + 32) & 3) == 0)
      {
        *v433 = v440 + 1;
        *v440 = 32;
        v440 = *v433;
        if (*v433 >= *(v433 + 24))
        {
          v440 = *(v433 + 16);
          *v433 = v440;
        }
      }

      ++v451;
    }

    while (v451 != 24);
    v455 = 0;
    v456 = v438 + 8600;
    do
    {
      v457 = *(v456 + 4 * v455);
      if (v457 >= 3)
      {
        v458 = 120;
      }

      else
      {
        v458 = 0x6E564Du >> (8 * v457);
      }

      *v433 = v440 + 1;
      *v440 = v458;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      if ((~v455 & 3) == 0)
      {
        *v433 = v440 + 1;
        *v440 = 32;
        v440 = *v433;
        if (*v433 >= *(v433 + 24))
        {
          v440 = *(v433 + 16);
          *v433 = v440;
        }
      }

      ++v455;
    }

    while (v455 != 14);
    *v433 = v440 + 1;
    *v440 = 32;
    if (*v433 >= *(v433 + 24))
    {
      *v433 = *(v433 + 16);
    }

    sprintf_06x(v433, v444);
    v459 = *v433;
    for (jj = 3; jj > 1; --jj)
    {
      *v433 = v459 + 1;
      *v459 = 32;
      v459 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v459 = *(v433 + 16);
        *v433 = v459;
      }
    }

    v461 = *v436;
    if ((*v436 & 0x80000000) == 0)
    {
      v462 = *v436;
    }

    else
    {
      v462 = -v461;
    }

    sprintf1da(v433, v462, v1474, 0, v461 >> 31);
    sprintf_sgR8(v433, vcvtd_n_f64_s32(v436[4], 0x1EuLL) * 299792458.0);
    sprintf_sgR8(v433, *(v439 + 15528));
    v463 = (*v433)++;
    *v463 = 10;
    if (*v433 >= *(v433 + 24))
    {
      *v433 = *(v433 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v433);
  }

  else
  {
    v464 = 68;
    v465 = 1u;
    do
    {
      *v433 = v440 + 1;
      *v440 = v464;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      v464 = aDisabled_0[v465++];
    }

    while (v465 != 10);
    *v433 = v440 + 1;
    *v440 = 10;
    if (*v433 >= *(v433 + 24))
    {
      *v433 = *(v433 + 16);
    }
  }

  v466 = v64[36];
  v467 = v64[9];
  v468 = v64[5];
  v469 = v64;
  v472 = v64 + 6;
  v471 = v64[6];
  v470 = v472[1];
  v473 = v469[17];
  v474 = v469[22];
  v475 = *v466;
  v476 = 71;
  v477 = 1u;
  do
  {
    *v466 = v475 + 1;
    *v475 = v476;
    v475 = *v466;
    if (*v466 >= v466[3])
    {
      v475 = v466[2];
      *v466 = v475;
    }

    v476 = aGalm[v477++];
  }

  while (v477 != 7);
  if (*(v467 + 19))
  {
    v478 = 0;
    v479 = 0;
    v480 = 35;
    while (1)
    {
      if (*(*(v470 + 17632) + v478))
      {
        v481 = 65;
      }

      else
      {
        v481 = 45;
      }

      if ((*(*(v470 + 17616) + v478) & 1) != 0 || *(*(v470 + 17624) + v478) == 1)
      {
        v481 += 24;
      }

      if (!*(*(v470 + 17552) + v478))
      {
        v481 += 32;
      }

      if (v481 == 77)
      {
        v481 = 46;
      }

      else if (*(v470 + 17672 + v478) == 1)
      {
        if ((*(*(v470 + 17616) + v478) & 1) == 0)
        {
          if (*(*(v470 + 17624) + v478))
          {
            v481 = 77;
          }

          else
          {
            v481 = 109;
          }

          goto LABEL_834;
        }

        v481 = 77;
LABEL_831:
        if (*(*(v470 + 17552) + v478))
        {
          v479 = v479 | (1 << v480);
        }

        else
        {
          v479 = v479;
        }

        goto LABEL_834;
      }

      if (*(*(v470 + 17616) + v478))
      {
        goto LABEL_831;
      }

LABEL_834:
      *v466 = v475 + 1;
      *v475 = v481;
      v475 = *v466;
      if (*v466 >= v466[3])
      {
        v475 = v466[2];
        *v466 = v475;
      }

      if ((~v478 & 3) == 0)
      {
        *v466 = v475 + 1;
        *v475 = 32;
        v475 = *v466;
        if (*v466 >= v466[3])
        {
          v475 = v466[2];
          *v466 = v475;
        }
      }

      ++v478;
      --v480;
      if (v478 == 36)
      {
        v482 = 0;
        v483 = 32;
        do
        {
          *v466 = v475 + 1;
          *v475 = v483;
          v475 = *v466;
          if (*v466 >= v466[3])
          {
            v475 = v466[2];
            *v466 = v475;
          }

          v483 = asc_299059399[++v482];
        }

        while (v482 != 2);
        v484 = 0;
        v485 = v468 + 7944;
        do
        {
          if (*(v467 + v484 + 321))
          {
            LOBYTE(v486) = 46;
          }

          else if (*(v467 + v484 + 600))
          {
            LOBYTE(v486) = 58;
          }

          else
          {
            v487 = *(v485 + 4 * v484);
            v1138 = v487 > 2;
            v486 = 0x6E564Du >> (8 * v487);
            if (v1138)
            {
              LOBYTE(v486) = 120;
            }
          }

          *v466 = v475 + 1;
          *v475 = v486;
          v475 = *v466;
          if (*v466 >= v466[3])
          {
            v475 = v466[2];
            *v466 = v475;
          }

          if ((~(v484 + 56) & 3) == 0)
          {
            *v466 = v475 + 1;
            *v475 = 32;
            v475 = *v466;
            if (*v466 >= v466[3])
            {
              v475 = v466[2];
              *v466 = v475;
            }
          }

          ++v484;
        }

        while (v484 != 36);
        v488 = 32;
        v489 = 1u;
        do
        {
          *v466 = v475 + 1;
          *v475 = v488;
          v475 = *v466;
          if (*v466 >= v466[3])
          {
            v475 = v466[2];
            *v466 = v475;
          }

          v488 = asc_299059501[v489++];
        }

        while (v489 != 4);
        sprintf_08x(v466, v479);
        sprintf_sp1d(v466, *(v470 + 25344));
        v490 = 0.0;
        if ((*(v470 + 25344) - 2) < 5)
        {
          v490 = *(v470 + 25368);
          if (*v471 >= 1 && *(v471 + 16) == 1)
          {
            v490 = *(v474 + 1496);
          }
        }

        sprintf_sgR8(v466, v490 * 299792458.0);
        sprintf_sgR8(v466, *(v473 + 15544));
        v491 = (*v466)++;
        *v491 = 10;
        if (*v466 >= v466[3])
        {
          *v466 = v466[2];
        }

        GNSS_Nav_Debug_Flush_Check(v466);
        v492 = a1;
        goto LABEL_877;
      }
    }
  }

  v493 = 71;
  v494 = 1u;
  v492 = a1;
  do
  {
    *v466 = v475 + 1;
    *v475 = v493;
    v475 = *v466;
    if (*v466 >= v466[3])
    {
      v475 = v466[2];
      *v466 = v475;
    }

    v493 = aGalDisabled[v494++];
  }

  while (v494 != 15);
  *v466 = v475 + 1;
  *v475 = 10;
  if (*v466 >= v466[3])
  {
    *v466 = v466[2];
  }

LABEL_877:
  v495 = v492[36];
  v497 = v492[6];
  v496 = v492[7];
  v498 = v496 + 5632;
  v499 = v492[9];
  v500 = v492[5];
  v501 = v492[17];
  v502 = *v495;
  v503 = 66;
  v504 = 1u;
  do
  {
    *v495 = v502 + 1;
    *v502 = v503;
    v502 = *v495;
    if (*v495 >= v495[3])
    {
      v502 = v495[2];
      *v495 = v502;
    }

    v503 = aBdsm[v504++];
  }

  while (v504 != 7);
  if (*(v499 + 18))
  {
    for (kk = 0; kk != 63; ++kk)
    {
      if (*(v496[3184] + kk))
      {
        v506 = 65;
      }

      else
      {
        v506 = 45;
      }

      if ((*(v496[3182] + kk) & 1) != 0 || *(v496[3183] + kk) == 1)
      {
        v506 += 24;
      }

      if (!*(v496[3174] + kk))
      {
        v506 += 32;
      }

      if (v506 == 77)
      {
        v506 = 46;
      }

      *v495 = v502 + 1;
      *v502 = v506;
      v502 = *v495;
      if (*v495 >= v495[3])
      {
        v502 = v495[2];
        *v495 = v502;
      }

      if ((~kk & 3) == 0)
      {
        *v495 = v502 + 1;
        *v502 = 32;
        v502 = *v495;
        if (*v495 >= v495[3])
        {
          v502 = v495[2];
          *v495 = v502;
        }
      }
    }

    v507 = 32;
    v508 = 1u;
    do
    {
      *v495 = v502 + 1;
      *v502 = v507;
      v502 = *v495;
      if (*v495 >= v495[3])
      {
        v502 = v495[2];
        *v495 = v502;
      }

      v507 = asc_299059501[v508++];
    }

    while (v508 != 4);
    v509 = 0;
    v510 = v500 + 8088;
    do
    {
      if (*(v499 + v509 + 357))
      {
        LOBYTE(v511) = 46;
      }

      else if (*(v499 + v509 + 636))
      {
        LOBYTE(v511) = 58;
      }

      else
      {
        v512 = *(v510 + 4 * v509);
        v1138 = v512 > 2;
        v511 = 0x6E564Du >> (8 * v512);
        if (v1138)
        {
          LOBYTE(v511) = 120;
        }
      }

      *v495 = v502 + 1;
      *v502 = v511;
      v502 = *v495;
      if (*v495 >= v495[3])
      {
        v502 = v495[2];
        *v495 = v502;
      }

      if ((~(v509 + 92) & 3) == 0)
      {
        *v495 = v502 + 1;
        *v502 = 32;
        v502 = *v495;
        if (*v495 >= v495[3])
        {
          v502 = v495[2];
          *v495 = v502;
        }
      }

      ++v509;
    }

    while (v509 != 63);
    *v495 = v502 + 1;
    *v502 = 32;
    if (*v495 >= v495[3])
    {
      *v495 = v495[2];
    }

    sprintf_sp1d(v495, *(v498 + 596));
    v514 = 0.0;
    if ((*(v498 + 596) - 2) < 5)
    {
      v514 = *(v498 + 307);
      if (*v497 >= 1 && *(v497 + 16) == 1)
      {
        LODWORD(v513) = *(v498 + 598);
        v515 = *(v497 + 40) - v513 + (604800 * (*(v497 + 32) - *(v498 + 1194)));
        v516 = v515;
        if (v515 < 0)
        {
          v516 = -v516;
        }

        if (v516 >> 5 <= 0xE0)
        {
          v514 = v514 + *(v498 + 308) * v515;
        }
      }
    }

    sprintf_sgR8(v495, v514 * 299792458.0);
    sprintf_sgR8(v495, *(v501 + 15560));
    sprintf_sgR8(v495, *(v498 + 312) * 299792458.0);
    v517 = (*v495)++;
    *v517 = 10;
    if (*v495 >= v495[3])
    {
      *v495 = v495[2];
    }

    GNSS_Nav_Debug_Flush_Check(v495);
  }

  else
  {
    v518 = 66;
    v519 = 1u;
    do
    {
      *v495 = v502 + 1;
      *v502 = v518;
      v502 = *v495;
      if (*v495 >= v495[3])
      {
        v502 = v495[2];
        *v495 = v502;
      }

      v518 = aBdsDisabled[v519++];
    }

    while (v519 != 15);
    *v495 = v502 + 1;
    *v502 = 10;
    if (*v495 >= v495[3])
    {
      *v495 = v495[2];
    }
  }

  v520 = v492[36];
  v521 = v492[6];
  v522 = v492[7] + 47584;
  v523 = v492[9];
  v524 = v492[5];
  v525 = v492[17];
  v526 = v492[22] + 61440;
  v527 = *v520;
  v528 = 78;
  v529 = 1u;
  do
  {
    *v520 = v527 + 1;
    *v527 = v528;
    v527 = *v520;
    if (*v520 >= v520[3])
    {
      v527 = v520[2];
      *v520 = v527;
    }

    v528 = aNvcm[v529++];
  }

  while (v529 != 7);
  if (*(v523 + 20))
  {
    for (mm = 0; mm != 14; ++mm)
    {
      if (*(*(v522 + 72) + mm))
      {
        v531 = 65;
      }

      else
      {
        v531 = 45;
      }

      if ((*(*(v522 + 56) + mm) & 1) != 0 || *(*(v522 + 64) + mm) == 1)
      {
        v531 += 24;
      }

      if (!*(*v522 + mm))
      {
        v531 += 32;
      }

      if (v531 == 77)
      {
        v531 = 58;
      }

      *v520 = v527 + 1;
      *v527 = v531;
      v527 = *v520;
      if (*v520 >= v520[3])
      {
        v527 = v520[2];
        *v520 = v527;
      }

      if ((~mm & 3) == 0)
      {
        *v520 = v527 + 1;
        *v527 = 32;
        v527 = *v520;
        if (*v520 >= v520[3])
        {
          v527 = v520[2];
          *v520 = v527;
        }
      }
    }

    v532 = 32;
    v533 = 1u;
    do
    {
      *v520 = v527 + 1;
      *v527 = v532;
      v527 = *v520;
      if (*v520 >= v520[3])
      {
        v527 = v520[2];
        *v520 = v527;
      }

      v532 = asc_299059501[v533++];
    }

    while (v533 != 4);
    v534 = 0;
    v535 = v524 + 8380;
    v536 = v523 + 709;
    do
    {
      if (*(v536 + v534))
      {
        LOBYTE(v537) = 58;
      }

      else
      {
        v538 = *(v535 + 4 * v534);
        v1138 = v538 > 2;
        v537 = 0x6E564Du >> (8 * v538);
        if (v1138)
        {
          LOBYTE(v537) = 120;
        }
      }

      *v520 = v527 + 1;
      *v527 = v537;
      v527 = *v520;
      if (*v520 >= v520[3])
      {
        v527 = v520[2];
        *v520 = v527;
      }

      if ((~(v534 - 91) & 3) == 0)
      {
        *v520 = v527 + 1;
        *v527 = 32;
        v527 = *v520;
        if (*v520 >= v520[3])
        {
          v527 = v520[2];
          *v520 = v527;
        }
      }

      ++v534;
    }

    while (v534 != 14);
    *v520 = v527 + 1;
    *v527 = 32;
    if (*v520 >= v520[3])
    {
      *v520 = v520[2];
    }

    sprintf_sp1d(v520, *(v522 + 2972));
    v539 = 0.0;
    if ((*(v522 + 2972) - 2) < 5 && *v521 >= 1)
    {
      v539 = *(v522 + 3000);
      if (*(v521 + 16) == 1)
      {
        if (*(v522 + 3028) - *(v521 + 32) >= 0)
        {
          v540 = -((*(v522 + 3028) - *(v521 + 32)) & 0x3FF);
        }

        else
        {
          v540 = (*(v521 + 32) - *(v522 + 3028)) & 0x3FF;
        }

        if (v540 > 511)
        {
          v540 -= 1024;
        }

        if (v540 < -512)
        {
          v540 += 1024;
        }

        v541 = *(v521 + 40) - *(v522 + 3024) + (604800 * v540);
        v539 = v539 + *(v522 + 3008) * v541 + *(v522 + 3016) * (v541 * v541);
      }
    }

    sprintf_sgR8(v520, v539 * 299792458.0);
    sprintf_sgR8(v520, *(v525 + 15576));
    if (*(v526 + 2424) == 1)
    {
      v542 = *(v526 + 2428) / 60;
    }

    else
    {
      v542 = -999;
    }

    v545 = a1;
    v546 = *v520;
    v547 = 32;
    v548 = 1u;
    do
    {
      *v520 = v546 + 1;
      *v546 = v547;
      v546 = *v520;
      if (*v520 >= v520[3])
      {
        v546 = v520[2];
        *v520 = v546;
      }

      v547 = aRof[v548++];
    }

    while (v548 != 7);
    sprintf_2d(v520, *(v526 + 2424));
    sprintf_2d(v520, *(v526 + 2425));
    sprintf_5d(v520, v542);
    v549 = (*v520)++;
    *v549 = 10;
    if (*v520 >= v520[3])
    {
      *v520 = v520[2];
    }

    GNSS_Nav_Debug_Flush_Check(v520);
  }

  else
  {
    v543 = 0;
    v544 = 78;
    v545 = a1;
    do
    {
      *v520 = v527 + 1;
      *v527 = v544;
      v527 = *v520;
      if (*v520 >= v520[3])
      {
        v527 = v520[2];
        *v520 = v527;
      }

      v544 = aNavicDisabled[++v543];
    }

    while (v543 != 16);
    *v520 = v527 + 1;
    *v527 = 10;
    if (*v520 >= v520[3])
    {
      *v520 = v520[2];
    }
  }

  v550 = v545[36];
  if (g_Logging_Cfg >= 5)
  {
    v551 = v545[11];
    v552 = v545[6];
    v553 = *(v552 + 32);
    v554 = *(v552 + 40);
    v555 = *v550;
    v556 = 83;
    v557 = 1u;
    do
    {
      *v550 = v555 + 1;
      *v555 = v556;
      v555 = *v550;
      if (*v550 >= v550[3])
      {
        v555 = v550[2];
        *v550 = v555;
      }

      v556 = aStage[v557++];
    }

    while (v557 != 7);
    v558 = 0;
    v559 = v554;
    while (1)
    {
      v560 = v551 + 192 * v558;
      if (*(v560 + 176))
      {
        break;
      }

LABEL_1034:
      if (++v558 == 197)
      {
        v568 = (*v550)++;
        *v568 = 10;
        if (*v550 >= v550[3])
        {
          *v550 = v550[2];
        }

        GNSS_Nav_Debug_Flush_Check(v550);
        v545 = a1;
        v550 = a1[36];
        goto LABEL_1038;
      }
    }

    if (v558 <= 91)
    {
      if (v558)
      {
        if (v558 == 32)
        {
          v561 = "  R ";
        }

        else
        {
          if (v558 != 56)
          {
            goto LABEL_1028;
          }

          v561 = "  E ";
        }
      }

      else
      {
        v561 = "  G ";
      }
    }

    else if (v558 > 164)
    {
      if (v558 == 165)
      {
        v561 = "  N ";
      }

      else
      {
        if (v558 != 179)
        {
          goto LABEL_1028;
        }

        v561 = "  S ";
      }
    }

    else
    {
      if (v558 != 92)
      {
        if (v558 == 155)
        {
          v561 = "  Q ";
          goto LABEL_1023;
        }

LABEL_1028:
        v566 = v559 - *(v560 + 160) + 604800 * (v553 - *(v560 + 164));
        if (v566 >= 99)
        {
          v566 = 99;
        }

        if (v566 <= -99)
        {
          v567 = -99;
        }

        else
        {
          v567 = v566;
        }

        sprintf_sp1d(v550, v567);
        goto LABEL_1034;
      }

      v561 = "  B ";
    }

LABEL_1023:
    v562 = *v561;
    if (*v561)
    {
      v563 = *v550;
      v564 = (v561 + 1);
      do
      {
        *v550 = v563 + 1;
        *v563 = v562;
        v563 = *v550;
        if (*v550 >= v550[3])
        {
          v563 = v550[2];
          *v550 = v563;
        }

        v565 = *v564++;
        v562 = v565;
      }

      while (v565);
    }

    goto LABEL_1028;
  }

LABEL_1038:
  v569 = v545[10];
  v570 = (v545[22] + 61440);
  v571 = v545[17] + 0x10000;
  v572 = v545[31];
  v573 = *v550;
  v574 = 65;
  v575 = 1u;
  do
  {
    *v550 = v573 + 1;
    *v573 = v574;
    v573 = *v550;
    if (*v550 >= v550[3])
    {
      v573 = v550[2];
      *v550 = v573;
    }

    v574 = aAcc[v575++];
  }

  while (v575 != 6);
  sprintf_2d(v550, *(v569 + 1));
  sprintf_2d(v550, *(v569 + 2));
  sprintf_2d(v550, *v569);
  sprintf_2d(v550, v569[1]);
  v576 = (*v550)++;
  *v576 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 105));
  v577 = (*v550)++;
  *v577 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 106));
  v578 = (*v550)++;
  *v578 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 107));
  v579 = (*v550)++;
  *v579 = 32;
  v580 = *v550;
  if (*v550 >= v550[3])
  {
    v580 = v550[2];
    *v550 = v580;
  }

  v581 = *(v569 + 109);
  if (v581 <= 99999.0 || v581 >= 8999100.0)
  {
    sprintf_ACC(v550, v581);
  }

  else
  {
    v582 = v581 / 299792.458;
    if (v582 <= 9999.0)
    {
      if (v582 <= 9.9)
      {
        v1430 = v582 * -100.0;
        v1431 = -0.5;
        if (v1430 > 0.0)
        {
          v1431 = 0.5;
        }

        v1432 = v1430 + v1431;
        if (v1432 <= 2147483650.0)
        {
          if (v1432 >= -2147483650.0)
          {
            v1433 = v1432;
          }

          else
          {
            v1433 = 0x80000000;
          }
        }

        else
        {
          v1433 = 0x7FFFFFFF;
        }

        sprintf_4f(v550, v1433, 3);
      }

      else
      {
        v972 = -0.5 - v582;
        if (v972 <= 2147483650.0)
        {
          if (v972 >= -2147483650.0)
          {
            v973 = v972;
          }

          else
          {
            v973 = 0x80000000;
          }
        }

        else
        {
          v973 = 0x7FFFFFFF;
        }

        sprintf_5d(v550, v973);
      }
    }

    else
    {
      v583 = 45;
      v584 = 1u;
      do
      {
        *v550 = v580 + 1;
        *v580 = v583;
        v580 = *v550;
        if (*v550 >= v550[3])
        {
          v580 = v550[2];
          *v550 = v580;
        }

        v583 = a9999[v584++];
      }

      while (v584 != 6);
    }
  }

  v585 = (*v550)++;
  *v585 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 108));
  v586 = (*v550)++;
  *v586 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 110));
  v587 = (*v550)++;
  *v587 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 113));
  v588 = (*v550)++;
  *v588 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 115));
  v589 = (*v550)++;
  *v589 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  v590 = *(v569 + 98) * 100.0;
  if (v590 <= 0.0)
  {
    v591 = -0.5;
  }

  else
  {
    v591 = 0.5;
  }

  v592 = v590 + v591;
  if (v592 <= 2147483650.0)
  {
    if (v592 >= -2147483650.0)
    {
      v593 = v592;
    }

    else
    {
      v593 = 0x80000000;
    }
  }

  else
  {
    v593 = 0x7FFFFFFF;
  }

  sprintf_6f(v550, v593, 3);
  v594 = *(v569 + 99) * 100.0;
  if (v594 <= 0.0)
  {
    v595 = -0.5;
  }

  else
  {
    v595 = 0.5;
  }

  v596 = v594 + v595;
  if (v596 <= 2147483650.0)
  {
    if (v596 >= -2147483650.0)
    {
      v597 = v596;
    }

    else
    {
      v597 = 0x80000000;
    }
  }

  else
  {
    v597 = 0x7FFFFFFF;
  }

  sprintf_6f(v550, v597, 3);
  v598 = *(v569 + 100) * 100.0;
  v599 = -0.5;
  if (v598 > 0.0)
  {
    v599 = 0.5;
  }

  v600 = v598 + v599;
  if (v600 <= 2147483650.0)
  {
    if (v600 >= -2147483650.0)
    {
      v601 = v600;
    }

    else
    {
      v601 = 0x80000000;
    }
  }

  else
  {
    v601 = 0x7FFFFFFF;
  }

  sprintf_6f(v550, v601, 3);
  v602 = (*v550)++;
  *v602 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 114));
  v603 = 0;
  v604 = *v550;
  v605 = 32;
  do
  {
    *v550 = v604 + 1;
    *v604 = v605;
    v604 = *v550;
    if (*v550 >= v550[3])
    {
      v604 = v550[2];
      *v550 = v604;
    }

    v605 = aEl[++v603];
  }

  while (v603 != 4);
  sprintf_ACC(v550, *(v569 + 116));
  v606 = (*v550)++;
  *v606 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 117));
  v607 = (*v550)++;
  *v607 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 118));
  v608 = *v550;
  for (nn = 5; nn > 1; --nn)
  {
    *v550 = v608 + 1;
    *v608 = 32;
    v608 = *v550;
    if (*v550 >= v550[3])
    {
      v608 = v550[2];
      *v550 = v608;
    }
  }

  sprintf_ACC(v550, *(v569 + 111));
  v610 = (*v550)++;
  *v610 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, *(v569 + 112));
  v611 = (*v550)++;
  *v611 = 32;
  v612 = *v550;
  if (*v550 >= v550[3])
  {
    v612 = v550[2];
  }

  v613 = 0;
  v614 = 32;
  do
  {
    *v550 = v612 + 1;
    *v612 = v614;
    v612 = *v550;
    if (*v550 >= v550[3])
    {
      v612 = v550[2];
      *v550 = v612;
    }

    v614 = aSf_0[++v613];
  }

  while (v613 != 4);
  v615 = v570[133] * 100.0;
  v616 = -0.5;
  if (v615 > 0.0)
  {
    v616 = 0.5;
  }

  v617 = v615 + v616;
  if (v617 <= 2147483650.0)
  {
    if (v617 >= -2147483650.0)
    {
      v618 = v617;
    }

    else
    {
      v618 = 0x80000000;
    }
  }

  else
  {
    v618 = 0x7FFFFFFF;
  }

  sprintf_3f(v550, v618, 3);
  v619 = (*v550)++;
  *v619 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  v620 = *(v571 + 2624) * 100.0;
  v621 = -0.5;
  if (v620 > 0.0)
  {
    v621 = 0.5;
  }

  v622 = v620 + v621;
  if (v622 <= 2147483650.0)
  {
    if (v622 >= -2147483650.0)
    {
      v623 = v622;
    }

    else
    {
      v623 = 0x80000000;
    }
  }

  else
  {
    v623 = 0x7FFFFFFF;
  }

  sprintf_3f(v550, v623, 3);
  v624 = (*v550)++;
  *v624 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  v625 = v570[134] * 100.0;
  v626 = -0.5;
  if (v625 > 0.0)
  {
    v626 = 0.5;
  }

  v627 = v625 + v626;
  if (v627 <= 2147483650.0)
  {
    if (v627 >= -2147483650.0)
    {
      v628 = v627;
    }

    else
    {
      v628 = 0x80000000;
    }
  }

  else
  {
    v628 = 0x7FFFFFFF;
  }

  sprintf_3f(v550, v628, 3);
  v629 = (*v550)++;
  *v629 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  v630 = *(v571 + 2632) * 100.0;
  v631 = -0.5;
  if (v630 > 0.0)
  {
    v631 = 0.5;
  }

  v632 = v630 + v631;
  if (v632 <= 2147483650.0)
  {
    if (v632 >= -2147483650.0)
    {
      v633 = v632;
    }

    else
    {
      v633 = 0x80000000;
    }
  }

  else
  {
    v633 = 0x7FFFFFFF;
  }

  sprintf_3f(v550, v633, 3);
  v634 = (*v550)++;
  *v634 = 32;
  v635 = *v550;
  if (*v550 >= v550[3])
  {
    v635 = v550[2];
  }

  v636 = 32;
  v637 = 1u;
  do
  {
    *v550 = v635 + 1;
    *v635 = v636;
    v635 = *v550;
    if (*v550 >= v550[3])
    {
      v635 = v550[2];
      *v550 = v635;
    }

    v636 = aFsd[v637++];
  }

  while (v637 != 6);
  sprintf_ACC(v550, v570[42]);
  v638 = (*v550)++;
  *v638 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, v570[43]);
  v639 = (*v550)++;
  *v639 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, v570[44]);
  v640 = (*v550)++;
  *v640 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, v570[45]);
  v641 = (*v550)++;
  *v641 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, v570[46]);
  v642 = (*v550)++;
  *v642 = 32;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  sprintf_ACC(v550, v570[47]);
  v643 = *v550;
  if (g_Logging_Cfg >= 7)
  {
    v644 = 0;
    v645 = 32;
    do
    {
      *v550 = v643 + 1;
      *v643 = v645;
      v643 = *v550;
      if (*v550 >= v550[3])
      {
        v643 = v550[2];
        *v550 = v643;
      }

      v645 = aNv[++v644];
    }

    while (v644 != 4);
    v646 = (v572 + 32132);
    v647 = 18;
    do
    {
      if (*v646 && *(v646 - 1) >= 1)
      {
        sprintf_4d(v550, *v646);
      }

      v646 += 8;
      --v647;
    }

    while (v647);
    v643 = *v550;
  }

  *v550 = v643 + 1;
  *v643 = 10;
  if (*v550 >= v550[3])
  {
    *v550 = v550[2];
  }

  GNSS_Nav_Debug_Flush_Check(v550);
  v648 = v545[36];
  v649 = v545[22];
  v650 = *v648;
  v651 = 69;
  v652 = 1u;
  do
  {
    *v648 = v650 + 1;
    *v650 = v651;
    v650 = *v648;
    if (*v648 >= v648[3])
    {
      v650 = v648[2];
      *v648 = v650;
    }

    v651 = aExtp[v652++];
  }

  while (v652 != 7);
  Char_Ass_Status_Edit = Get_Char_Ass_Status_Edit(*(v649 + 62376));
  v654 = (*v648)++;
  *v654 = Char_Ass_Status_Edit;
  if (*v648 >= v648[3])
  {
    *v648 = v648[2];
  }

  v655 = Get_Char_Ass_Status_Edit(*(v649 + 62392));
  v656 = (*v648)++;
  *v656 = v655;
  v657 = *v648;
  if (*v648 >= v648[3])
  {
    v657 = v648[2];
  }

  *v648 = v657 + 1;
  *v657 = 32;
  v658 = *v648;
  if (*v648 >= v648[3])
  {
    v658 = v648[2];
    *v648 = v658;
  }

  if ((*(v649 + 60216) & 1) != 0 || *(v649 + 60232) == 1)
  {
    v659 = 0;
    v660 = 72;
    do
    {
      *v648 = v658 + 1;
      *v658 = v660;
      v658 = *v648;
      if (*v648 >= v648[3])
      {
        v658 = v648[2];
        *v648 = v658;
      }

      v660 = aHor[++v659];
    }

    while (v659 != 4);
    v661 = print_line_ExtP(s_GN_Ptrs *)::ch_MEAS[*(v649 + 60220)];
    *v648 = v658 + 1;
    *v658 = v661;
    v662 = *v648;
    if (*v648 >= v648[3])
    {
      v662 = v648[2];
    }

    v663 = 0;
    v664 = 32;
    do
    {
      *v648 = v662 + 1;
      *v662 = v664;
      v662 = *v648;
      if (*v648 >= v648[3])
      {
        v662 = v648[2];
        *v648 = v662;
      }

      v664 = aT[++v663];
    }

    while (v663 != 4);
    v665 = print_line_ExtP(s_GN_Ptrs *)::ch_TRUST[*(v649 + 60224)];
    *v648 = v662 + 1;
    *v662 = v665;
    v666 = *v648;
    if (*v648 >= v648[3])
    {
      v666 = v648[2];
    }

    v667 = 0;
    v668 = 32;
    do
    {
      *v648 = v666 + 1;
      *v666 = v668;
      v666 = *v648;
      if (*v648 >= v648[3])
      {
        v666 = v648[2];
        *v648 = v666;
      }

      v668 = aC[++v667];
    }

    while (v667 != 4);
    v669 = print_line_ExtP(s_GN_Ptrs *)::ch_CORREL[*(v649 + 60228)];
    *v648 = v666 + 1;
    *v666 = v669;
    v670 = *v648;
    if (*v648 >= v648[3])
    {
      v670 = v648[2];
    }

    v671 = 0;
    v672 = 32;
    do
    {
      *v648 = v670 + 1;
      *v670 = v672;
      v670 = *v648;
      if (*v648 >= v648[3])
      {
        v670 = v648[2];
        *v648 = v670;
      }

      v672 = aE_0[++v671];
    }

    while (v671 != 4);
    if (*(v649 + 60232))
    {
      LOBYTE(v673) = 49;
      LOWORD(v1474[0]) = 49;
      v674 = 1;
      do
      {
        *v648 = v670 + 1;
        *v670 = v673;
        v670 = *v648;
        if (*v648 >= v648[3])
        {
          v670 = v648[2];
          *v648 = v670;
        }

        v673 = *(v1474 + v674++);
      }

      while (v673);
    }

    else
    {
      *v648 = v670 + 1;
      *v670 = 45;
      v670 = *v648;
      if (*v648 >= v648[3])
      {
        v670 = v648[2];
      }
    }

    for (i1 = 4; i1 > 1; --i1)
    {
      *v648 = v670 + 1;
      *v670 = 32;
      v670 = *v648;
      if (*v648 >= v648[3])
      {
        v670 = v648[2];
        *v648 = v670;
      }
    }

    v676 = *v649 - *(v649 + 60236);
    if (v676 >= -999999)
    {
      v678 = v676 / 1000;
      if (v678 >= 999)
      {
        v677 = 999;
      }

      else
      {
        v677 = v678;
      }
    }

    else
    {
      v677 = -999;
    }

    sprintf_4d(v648, v677);
    v679 = (*v648)++;
    *v679 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_ACC(v648, sqrt(*(v649 + 60264)));
    v680 = (*v648)++;
    *v680 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_ACC(v648, sqrt(*(v649 + 60272)));
    v681 = (*v648)++;
    *v681 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_ACC(v648, sqrt(*(v649 + 60288)));
    v682 = (*v648)++;
    *v682 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_ACC(v648, sqrt(*(v649 + 60296)));
    v683 = (*v648)++;
    *v683 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_sgR8(v648, *(v649 + 60304));
    v684 = (*v648)++;
    *v684 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_sgR8(v648, *(v649 + 60312));
    v685 = (*v648)++;
    *v685 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_sgR8(v648, sqrt(fabs(*(v649 + 60328))));
    v686 = (*v648)++;
    *v686 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_sgR8(v648, sqrt(fabs(*(v649 + 60336))));
  }

  if ((*(v649 + 60344) & 1) != 0 || *(v649 + 60360) == 1)
  {
    v687 = *v648;
    v688 = 32;
    v689 = 1u;
    do
    {
      *v648 = v687 + 1;
      *v687 = v688;
      v687 = *v648;
      if (*v648 >= v648[3])
      {
        v687 = v648[2];
        *v648 = v687;
      }

      v688 = aVer_0[v689++];
    }

    while (v689 != 7);
    v690 = print_line_ExtP(s_GN_Ptrs *)::ch_MEAS[*(v649 + 60348)];
    *v648 = v687 + 1;
    *v687 = v690;
    v691 = *v648;
    if (*v648 >= v648[3])
    {
      v691 = v648[2];
    }

    v692 = 0;
    v693 = 32;
    do
    {
      *v648 = v691 + 1;
      *v691 = v693;
      v691 = *v648;
      if (*v648 >= v648[3])
      {
        v691 = v648[2];
        *v648 = v691;
      }

      v693 = aT[++v692];
    }

    while (v692 != 4);
    v694 = print_line_ExtP(s_GN_Ptrs *)::ch_TRUST[*(v649 + 60352)];
    *v648 = v691 + 1;
    *v691 = v694;
    v695 = *v648;
    if (*v648 >= v648[3])
    {
      v695 = v648[2];
    }

    v696 = 0;
    v697 = 32;
    do
    {
      *v648 = v695 + 1;
      *v695 = v697;
      v695 = *v648;
      if (*v648 >= v648[3])
      {
        v695 = v648[2];
        *v648 = v695;
      }

      v697 = aC[++v696];
    }

    while (v696 != 4);
    v698 = print_line_ExtP(s_GN_Ptrs *)::ch_CORREL[*(v649 + 60356)];
    *v648 = v695 + 1;
    *v695 = v698;
    v699 = *v648;
    if (*v648 >= v648[3])
    {
      v699 = v648[2];
    }

    v700 = 0;
    v701 = 32;
    do
    {
      *v648 = v699 + 1;
      *v699 = v701;
      v699 = *v648;
      if (*v648 >= v648[3])
      {
        v699 = v648[2];
        *v648 = v699;
      }

      v701 = aE_0[++v700];
    }

    while (v700 != 4);
    if (*(v649 + 60360))
    {
      LOBYTE(v702) = 49;
      LOWORD(v1474[0]) = 49;
      v703 = 1;
      do
      {
        *v648 = v699 + 1;
        *v699 = v702;
        v699 = *v648;
        if (*v648 >= v648[3])
        {
          v699 = v648[2];
          *v648 = v699;
        }

        v702 = *(v1474 + v703++);
      }

      while (v702);
    }

    else
    {
      *v648 = v699 + 1;
      *v699 = 45;
      v699 = *v648;
      if (*v648 >= v648[3])
      {
        v699 = v648[2];
      }
    }

    for (i2 = 4; i2 > 1; --i2)
    {
      *v648 = v699 + 1;
      *v699 = 32;
      v699 = *v648;
      if (*v648 >= v648[3])
      {
        v699 = v648[2];
        *v648 = v699;
      }
    }

    v705 = *v649 - *(v649 + 60364);
    if (v705 >= -999999)
    {
      if (v705 <= 999999)
      {
        v706 = v705 / 1000;
      }

      else
      {
        v706 = 9999;
      }
    }

    else
    {
      v706 = -9999;
    }

    sprintf_4d(v648, v706);
    v707 = (*v648)++;
    *v707 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_ACC(v648, sqrt(*(v649 + 60376)));
    v708 = (*v648)++;
    *v708 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_ACC(v648, sqrt(*(v649 + 60384)));
    v709 = (*v648)++;
    *v709 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_sgR8(v648, *(v649 + 60392));
    v710 = (*v648)++;
    *v710 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    sprintf_sgR8(v648, sqrt(fabs(*(v649 + 60408))));
  }

  v711 = *v648;
  if (*(v649 + 62404) == 1)
  {
    v712 = 0;
    v713 = 32;
    v714 = a1;
    do
    {
      *v648 = v711 + 1;
      *v711 = v713;
      v711 = *v648;
      if (*v648 >= v648[3])
      {
        v711 = v648[2];
        *v648 = v711;
      }

      v713 = aTepa[++v712];
    }

    while (v712 != 8);
    sprintf1da(v648, *(v649 + 62404), v1474, 0, 0);
    v715 = (*v648)++;
    *v715 = 32;
    if (*v648 >= v648[3])
    {
      *v648 = v648[2];
    }

    v716 = Get_Char_Ass_Status_Edit(*(v649 + 62408));
    v717 = (*v648)++;
    *v717 = v716;
    v718 = *v648;
    if (*v648 >= v648[3])
    {
      v718 = v648[2];
    }

    for (i3 = 3; i3 > 1; --i3)
    {
      *v648 = v718 + 1;
      *v718 = 32;
      v718 = *v648;
      if (*v648 >= v648[3])
      {
        v718 = v648[2];
        *v648 = v718;
      }
    }

    sprintf_4d(v648, *(v649 + 62416));
    v711 = *v648;
  }

  else
  {
    v714 = a1;
  }

  *v648 = v711 + 1;
  *v711 = 10;
  if (*v648 >= v648[3])
  {
    *v648 = v648[2];
  }

  GNSS_Nav_Debug_Flush_Check(v648);
  v720 = v714[36];
  v721 = (v714[22] + 59944);
  v722 = *v720;
  v723 = 67;
  v724 = 1u;
  do
  {
    *v720 = v722 + 1;
    *v722 = v723;
    v722 = *v720;
    if (*v720 >= v720[3])
    {
      v722 = v720[2];
      *v720 = v722;
    }

    v723 = aCtxt[v724++];
  }

  while (v724 != 7);
  v725 = 0;
  v726 = 85;
  do
  {
    *v720 = v722 + 1;
    *v722 = v726;
    v722 = *v720;
    if (*v720 >= v720[3])
    {
      v722 = v720[2];
      *v720 = v722;
    }

    v726 = aUac[++v725];
  }

  while (v725 != 4);
  sprintf_2d(v720, *(v721 + 2348));
  sprintf_2d(v720, *(v721 + 2356));
  v727 = (*v720)++;
  *v727 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  v728 = Get_Char_Ass_Status_Edit(v721[588]);
  v729 = (*v720)++;
  *v729 = v728;
  v730 = *v720;
  if (*v720 >= v720[3])
  {
    v730 = v720[2];
  }

  *v720 = v730 + 1;
  *v730 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_3f(v720, v721[590] / 10, 3);
  v731 = (*v720)++;
  *v731 = 32;
  v732 = *v720;
  if (*v720 >= v720[3])
  {
    v732 = v720[2];
  }

  v733 = print_line_CTXT(s_GN_Ptrs *)::ch_UAC_TXT[v721[3]];
  *v720 = v732 + 1;
  *v732 = v733;
  v734 = *v720;
  if (*v720 >= v720[3])
  {
    v734 = v720[2];
  }

  *v720 = v734 + 1;
  *v734 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_1x(v720, v721[5]);
  v735 = (*v720)++;
  *v735 = 32;
  v736 = *v720;
  if (*v720 >= v720[3])
  {
    v736 = v720[2];
  }

  v737 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v721[4]];
  *v720 = v736 + 1;
  *v736 = v737;
  v738 = *v720;
  if (*v720 >= v720[3])
  {
    v738 = v720[2];
  }

  v739 = 32;
  v740 = 1u;
  do
  {
    *v720 = v738 + 1;
    *v738 = v739;
    v738 = *v720;
    if (*v720 >= v720[3])
    {
      v738 = v720[2];
      *v720 = v738;
    }

    v739 = aDms[v740++];
  }

  while (v740 != 8);
  sprintf_2d(v720, *(v721 + 2332));
  sprintf_2d(v720, *(v721 + 2340));
  v741 = (*v720)++;
  *v741 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  v742 = Get_Char_Ass_Status_Edit(v721[584]);
  v743 = (*v720)++;
  *v743 = v742;
  v744 = *v720;
  if (*v720 >= v720[3])
  {
    v744 = v720[2];
  }

  *v720 = v744 + 1;
  *v744 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_3f(v720, v721[586] / 10, 3);
  v745 = (*v720)++;
  *v745 = 32;
  v746 = *v720;
  if (*v720 >= v720[3])
  {
    v746 = v720[2];
  }

  v747 = print_line_CTXT(s_GN_Ptrs *)::ch_DMS_STE[*v721];
  *v720 = v746 + 1;
  *v746 = v747;
  v748 = *v720;
  if (*v720 >= v720[3])
  {
    v748 = v720[2];
  }

  *v720 = v748 + 1;
  *v748 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_1x(v720, v721[2]);
  v749 = (*v720)++;
  *v749 = 32;
  v750 = *v720;
  if (*v720 >= v720[3])
  {
    v750 = v720[2];
  }

  v751 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v721[1]];
  *v720 = v750 + 1;
  *v750 = v751;
  v752 = *v720;
  if (*v720 >= v720[3])
  {
    v752 = v720[2];
  }

  v753 = 32;
  v754 = 1u;
  do
  {
    *v720 = v752 + 1;
    *v752 = v753;
    v752 = *v720;
    if (*v720 >= v720[3])
    {
      v752 = v720[2];
      *v720 = v752;
    }

    v753 = aFiv[v754++];
  }

  while (v754 != 8);
  sprintf_2d(v720, *(v721 + 2364));
  sprintf_2d(v720, *(v721 + 2372));
  v755 = (*v720)++;
  *v755 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  v756 = Get_Char_Ass_Status_Edit(v721[592]);
  v757 = (*v720)++;
  *v757 = v756;
  v758 = *v720;
  if (*v720 >= v720[3])
  {
    v758 = v720[2];
  }

  *v720 = v758 + 1;
  *v758 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_3f(v720, v721[594] / 10, 3);
  v759 = (*v720)++;
  *v759 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_1x(v720, v721[6]);
  v760 = (*v720)++;
  *v760 = 32;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  sprintf_1x(v720, v721[8]);
  v761 = (*v720)++;
  *v761 = 32;
  v762 = *v720;
  if (*v720 >= v720[3])
  {
    v762 = v720[2];
  }

  v763 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v721[7]];
  *v720 = v762 + 1;
  *v762 = v763;
  v764 = *v720;
  if (*v720 >= v720[3])
  {
    v764 = v720[2];
  }

  *v720 = v764 + 1;
  *v764 = 10;
  if (*v720 >= v720[3])
  {
    *v720 = v720[2];
  }

  GNSS_Nav_Debug_Flush_Check(v720);
  v765 = v714[36];
  v766 = v714[22];
  if (*(v766 + 62340) == 1)
  {
    v767 = *v765;
    v768 = 77;
    v769 = 1u;
    do
    {
      *v765 = v767 + 1;
      *v767 = v768;
      v767 = *v765;
      if (*v765 >= v765[3])
      {
        v767 = v765[2];
        *v765 = v767;
      }

      v768 = aMapv[v769++];
    }

    while (v769 != 7);
    v770 = 83;
    v771 = 1u;
    do
    {
      *v765 = v767 + 1;
      *v767 = v770;
      v767 = *v765;
      if (*v765 >= v765[3])
      {
        v767 = v765[2];
        *v765 = v767;
      }

      v770 = aStat[v771++];
    }

    while (v771 != 6);
    sprintf_2d(v765, *(v766 + 62340));
    sprintf_2d(v765, *(v766 + 62348));
    v772 = (*v765)++;
    *v772 = 32;
    v773 = *v765;
    if (*v765 >= v765[3])
    {
      v773 = v765[2];
    }

    *v765 = v773 + 1;
    *v773 = 101;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    v774 = Get_Char_Ass_Status_Edit(*(v766 + 62344));
    v775 = (*v765)++;
    *v775 = v774;
    v776 = *v765;
    if (*v765 >= v765[3])
    {
      v776 = v765[2];
    }

    v777 = 32;
    v778 = 1u;
    do
    {
      *v765 = v776 + 1;
      *v776 = v777;
      v776 = *v765;
      if (*v765 >= v765[3])
      {
        v776 = v765[2];
        *v765 = v776;
      }

      v777 = aAge[v778++];
    }

    while (v778 != 6);
    sprintf_6d(v765, *(v766 + 62352));
    v779 = 0;
    v780 = *v765;
    v781 = 32;
    do
    {
      *v765 = v780 + 1;
      *v780 = v781;
      v780 = *v765;
      if (*v765 >= v765[3])
      {
        v780 = v765[2];
        *v765 = v780;
      }

      v781 = aAt[++v779];
    }

    while (v779 != 4);
    sprintf_sgR8(v765, *(v766 + 61352));
    v782 = 0;
    v783 = *v765;
    v784 = 32;
    do
    {
      *v765 = v783 + 1;
      *v783 = v784;
      v783 = *v765;
      if (*v765 >= v765[3])
      {
        v783 = v765[2];
        *v765 = v783;
      }

      v784 = aCt[++v782];
    }

    while (v782 != 4);
    sprintf_sgR8(v765, *(v766 + 61360));
    v785 = 0;
    v786 = *v765;
    v787 = 32;
    do
    {
      *v765 = v786 + 1;
      *v786 = v787;
      v786 = *v765;
      if (*v765 >= v765[3])
      {
        v786 = v765[2];
        *v765 = v786;
      }

      v787 = aHd[++v785];
    }

    while (v785 != 4);
    sprintf_sgR8(v765, *(v766 + 61368));
    v788 = 0;
    v789 = *v765;
    v790 = 32;
    do
    {
      *v765 = v789 + 1;
      *v789 = v790;
      v789 = *v765;
      if (*v765 >= v765[3])
      {
        v789 = v765[2];
        *v765 = v789;
      }

      v790 = aGs[++v788];
    }

    while (v788 != 4);
    sprintf_sgR8(v765, *(v766 + 61344));
    v791 = *v765;
    v792 = 32;
    v793 = 1u;
    do
    {
      *v765 = v791 + 1;
      *v791 = v792;
      v791 = *v765;
      if (*v765 >= v765[3])
      {
        v791 = v765[2];
        *v765 = v791;
      }

      v792 = aEpa[v793++];
    }

    while (v793 != 6);
    sprintf_sgR8(v765, *(v766 + 61376));
    v794 = *v765;
    v795 = 32;
    v796 = 1u;
    do
    {
      *v765 = v794 + 1;
      *v794 = v795;
      v794 = *v765;
      if (*v765 >= v765[3])
      {
        v794 = v765[2];
        *v765 = v794;
      }

      v795 = aEpc[v796++];
    }

    while (v796 != 6);
    sprintf_sgR8(v765, *(v766 + 61384));
    v797 = 0;
    v798 = *v765;
    v799 = 32;
    do
    {
      *v765 = v798 + 1;
      *v798 = v799;
      v798 = *v765;
      if (*v765 >= v765[3])
      {
        v798 = v765[2];
        *v765 = v798;
      }

      v799 = aMv[++v797];
    }

    while (v797 != 4);
    sprintf_sgR8(v765, *(v766 + 61040));
    sprintf_sgR8(v765, *(v766 + 61048));
    sprintf_sgR8(v765, *(v766 + 61056));
    v800 = (*v765)++;
    *v800 = 32;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    sprintf1da(v765, *(v766 + 61064), v1474, 0, 0);
    sprintf1da(v765, *(v766 + 61065), v1474, 0, 0);
    sprintf1da(v765, *(v766 + 61066), v1474, 0, 0);
    sprintf1da(v765, *(v766 + 61067), v1474, 0, 0);
    sprintf1da(v765, *(v766 + 61068), v1474, 0, 0);
    v801 = (*v765)++;
    *v801 = 32;
    v802 = *v765;
    if (*v765 >= v765[3])
    {
      v802 = v765[2];
    }

    if (!*(v766 + 62344))
    {
      v803 = 32;
      v804 = 1u;
      do
      {
        *v765 = v802 + 1;
        *v802 = v803;
        v802 = *v765;
        if (*v765 >= v765[3])
        {
          v802 = v765[2];
          *v765 = v802;
        }

        v803 = aHpos[v804++];
      }

      while (v804 != 7);
      sprintf1da(v765, *(v766 + 62220), v1474, 0, 0);
      v805 = (*v765)++;
      *v805 = 32;
      v806 = *v765;
      if (*v765 >= v765[3])
      {
        v806 = v765[2];
      }

      v807 = 32;
      v808 = 1u;
      do
      {
        *v765 = v806 + 1;
        *v806 = v807;
        v806 = *v765;
        if (*v765 >= v765[3])
        {
          v806 = v765[2];
          *v765 = v806;
        }

        v807 = aHpre[v808++];
      }

      while (v808 != 7);
      sprintf_ACC(v765, sqrt(*(v766 + 61120)));
      v809 = (*v765)++;
      *v809 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_ACC(v765, sqrt(*(v766 + 61128)));
      v810 = (*v765)++;
      *v810 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_ACC(v765, sqrt(*(v766 + 61144)));
      v811 = (*v765)++;
      *v811 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_ACC(v765, sqrt(*(v766 + 61152)));
      v812 = (*v765)++;
      *v812 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_sgR8(v765, *(v766 + 61160));
      v813 = (*v765)++;
      *v813 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_sgR8(v765, *(v766 + 61168));
      v814 = *v765;
      v815 = 32;
      v816 = 1u;
      do
      {
        *v765 = v814 + 1;
        *v814 = v815;
        v814 = *v765;
        if (*v765 >= v765[3])
        {
          v814 = v765[2];
          *v765 = v814;
        }

        v815 = aTrck[v816++];
      }

      while (v816 != 7);
      sprintf1da(v765, *(v766 + 62221), v1474, 0, 0);
      v817 = (*v765)++;
      *v817 = 32;
      v818 = *v765;
      if (*v765 >= v765[3])
      {
        v818 = v765[2];
      }

      v819 = 32;
      v820 = 1u;
      do
      {
        *v765 = v818 + 1;
        *v818 = v819;
        v818 = *v765;
        if (*v765 >= v765[3])
        {
          v818 = v765[2];
          *v765 = v818;
        }

        v819 = aTpre[v820++];
      }

      while (v820 != 7);
      sprintf_ACC(v765, sqrt(*(v766 + 61232)));
      v821 = (*v765)++;
      *v821 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_sgR8(v765, *(v766 + 61248));
      v822 = *v765;
      v823 = 32;
      v824 = 1u;
      do
      {
        *v765 = v822 + 1;
        *v822 = v823;
        v822 = *v765;
        if (*v765 >= v765[3])
        {
          v822 = v765[2];
          *v765 = v822;
        }

        v823 = aVvel[v824++];
      }

      while (v824 != 7);
      sprintf1da(v765, *(v766 + 62223), v1474, 0, 0);
      v825 = (*v765)++;
      *v825 = 32;
      v826 = *v765;
      if (*v765 >= v765[3])
      {
        v826 = v765[2];
      }

      v827 = 32;
      v828 = 1u;
      do
      {
        *v765 = v826 + 1;
        *v826 = v827;
        v826 = *v765;
        if (*v765 >= v765[3])
        {
          v826 = v765[2];
          *v765 = v826;
        }

        v827 = aVpre[v828++];
      }

      while (v828 != 7);
      sprintf_ACC(v765, sqrt(*(v766 + 61304)));
      v829 = (*v765)++;
      *v829 = 32;
      if (*v765 >= v765[3])
      {
        *v765 = v765[2];
      }

      sprintf_sgR8(v765, *(v766 + 61320));
      v830 = *v765;
      v831 = 32;
      v832 = 1u;
      do
      {
        *v765 = v830 + 1;
        *v830 = v831;
        v830 = *v765;
        if (*v765 >= v765[3])
        {
          v830 = v765[2];
          *v765 = v830;
        }

        v831 = aPfwd[v832++];
      }

      while (v832 != 7);
      sprintf1da(v765, *(v766 + 62222), v1474, 0, 0);
      v833 = (*v765)++;
      *v833 = 32;
      v802 = *v765;
      if (*v765 >= v765[3])
      {
        v802 = v765[2];
      }
    }

    *v765 = v802 + 1;
    *v802 = 10;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    GNSS_Nav_Debug_Flush_Check(v765);
    v765 = v714[36];
    v766 = v714[22];
  }

  if ((*(v766 + 62436) & 1) != 0 || (*(v766 + 62468) & 1) != 0 || *(v766 + 62452) == 1)
  {
    v834 = *v765;
    v835 = 86;
    v836 = 1u;
    do
    {
      *v765 = v834 + 1;
      *v834 = v835;
      v834 = *v765;
      if (*v765 >= v765[3])
      {
        v834 = v765[2];
        *v765 = v834;
      }

      v835 = aVela[v836++];
    }

    while (v836 != 7);
    v837 = 0;
    v838 = 65;
    do
    {
      *v765 = v834 + 1;
      *v834 = v838;
      v834 = *v765;
      if (*v765 >= v765[3])
      {
        v834 = v765[2];
        *v765 = v834;
      }

      v838 = aAtv[++v837];
    }

    while (v837 != 4);
    sprintf_2d(v765, *(v766 + 62436));
    sprintf_2d(v765, *(v766 + 62444));
    v839 = (*v765)++;
    *v839 = 32;
    v840 = *v765;
    if (*v765 >= v765[3])
    {
      v840 = v765[2];
    }

    *v765 = v840 + 1;
    *v840 = 101;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    v841 = Get_Char_Ass_Status_Edit(*(v766 + 62440));
    v842 = (*v765)++;
    *v842 = v841;
    v843 = *v765;
    if (*v765 >= v765[3])
    {
      v843 = v765[2];
    }

    v844 = 32;
    v845 = 1u;
    do
    {
      *v765 = v843 + 1;
      *v843 = v844;
      v843 = *v765;
      if (*v765 >= v765[3])
      {
        v843 = v765[2];
        *v765 = v843;
      }

      v844 = aAge[v845++];
    }

    while (v845 != 6);
    sprintf_6d(v765, *(v766 + 62448));
    v846 = (*v765)++;
    *v846 = 32;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    if (*(v766 + 62436) == 1)
    {
      memset(v1474, 0, 24);
      Core_Get_ExtA_AT_Vel(120000, v1474);
      sprintf_sgR8(v765, *&v1474[2]);
      v847 = *v765;
      v848 = 32;
      v849 = 1u;
      do
      {
        *v765 = v847 + 1;
        *v847 = v848;
        v847 = *v765;
        if (*v765 >= v765[3])
        {
          v847 = v765[2];
          *v765 = v847;
        }

        v848 = aRms[v849++];
      }

      while (v849 != 6);
      v850 = *&v1474[4];
    }

    else
    {
      sprintf_sgR8(v765, 0.0);
      v851 = *v765;
      v852 = 32;
      v853 = 1u;
      do
      {
        *v765 = v851 + 1;
        *v851 = v852;
        v851 = *v765;
        if (*v765 >= v765[3])
        {
          v851 = v765[2];
          *v765 = v851;
        }

        v852 = aRms[v853++];
      }

      while (v853 != 6);
      v850 = 0.0;
    }

    sprintf_sgR8(v765, v850);
    v854 = *v765;
    v855 = 32;
    v856 = 1u;
    do
    {
      *v765 = v854 + 1;
      *v854 = v855;
      v854 = *v765;
      if (*v765 >= v765[3])
      {
        v854 = v765[2];
        *v765 = v854;
      }

      v855 = aHed[v856++];
    }

    while (v856 != 6);
    sprintf_2d(v765, *(v766 + 62468));
    sprintf_2d(v765, *(v766 + 62476));
    v857 = (*v765)++;
    *v857 = 32;
    v858 = *v765;
    if (*v765 >= v765[3])
    {
      v858 = v765[2];
    }

    *v765 = v858 + 1;
    *v858 = 101;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    v859 = Get_Char_Ass_Status_Edit(*(v766 + 62472));
    v860 = (*v765)++;
    *v860 = v859;
    v861 = *v765;
    if (*v765 >= v765[3])
    {
      v861 = v765[2];
    }

    v862 = 32;
    v863 = 1u;
    do
    {
      *v765 = v861 + 1;
      *v861 = v862;
      v861 = *v765;
      if (*v765 >= v765[3])
      {
        v861 = v765[2];
        *v765 = v861;
      }

      v862 = aAge[v863++];
    }

    while (v863 != 6);
    sprintf_6d(v765, *(v766 + 62480));
    v864 = (*v765)++;
    *v864 = 32;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    if (*(v766 + 62468) == 1)
    {
      memset(v1474, 0, 24);
      Core_Get_ExtA_Heading(120000, v1474);
      sprintf_sgR8(v765, *&v1474[2]);
      v865 = *v765;
      v866 = 32;
      v867 = 1u;
      do
      {
        *v765 = v865 + 1;
        *v865 = v866;
        v865 = *v765;
        if (*v765 >= v765[3])
        {
          v865 = v765[2];
          *v765 = v865;
        }

        v866 = aRms[v867++];
      }

      while (v867 != 6);
      v868 = *&v1474[4];
    }

    else
    {
      sprintf_sgR8(v765, 0.0);
      v869 = *v765;
      v870 = 32;
      v871 = 1u;
      do
      {
        *v765 = v869 + 1;
        *v869 = v870;
        v869 = *v765;
        if (*v765 >= v765[3])
        {
          v869 = v765[2];
          *v765 = v869;
        }

        v870 = aRms[v871++];
      }

      while (v871 != 6);
      v868 = 0.0;
    }

    sprintf_sgR8(v765, v868);
    v872 = *v765;
    v873 = 32;
    v874 = 1u;
    do
    {
      *v765 = v872 + 1;
      *v872 = v873;
      v872 = *v765;
      if (*v765 >= v765[3])
      {
        v872 = v765[2];
        *v765 = v872;
      }

      v873 = aVvl[v874++];
    }

    while (v874 != 6);
    sprintf_2d(v765, *(v766 + 62452));
    sprintf_2d(v765, *(v766 + 62460));
    v875 = (*v765)++;
    *v875 = 32;
    v876 = *v765;
    if (*v765 >= v765[3])
    {
      v876 = v765[2];
    }

    *v765 = v876 + 1;
    *v876 = 101;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    v877 = Get_Char_Ass_Status_Edit(*(v766 + 62456));
    v878 = (*v765)++;
    *v878 = v877;
    v879 = *v765;
    if (*v765 >= v765[3])
    {
      v879 = v765[2];
    }

    v880 = 32;
    v881 = 1u;
    do
    {
      *v765 = v879 + 1;
      *v879 = v880;
      v879 = *v765;
      if (*v765 >= v765[3])
      {
        v879 = v765[2];
        *v765 = v879;
      }

      v880 = aAge[v881++];
    }

    while (v881 != 6);
    sprintf_6d(v765, *(v766 + 62464));
    v882 = (*v765)++;
    *v882 = 32;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    if (*(v766 + 62452) == 1)
    {
      memset(v1474, 0, 24);
      Core_Get_ExtA_V_Vel(120000, v1474);
      sprintf_sgR8(v765, *&v1474[2]);
      v883 = *v765;
      v884 = 32;
      v885 = 1u;
      do
      {
        *v765 = v883 + 1;
        *v883 = v884;
        v883 = *v765;
        if (*v765 >= v765[3])
        {
          v883 = v765[2];
          *v765 = v883;
        }

        v884 = aRms[v885++];
      }

      while (v885 != 6);
      v886 = *&v1474[4];
    }

    else
    {
      sprintf_sgR8(v765, 0.0);
      v887 = *v765;
      v888 = 32;
      v889 = 1u;
      do
      {
        *v765 = v887 + 1;
        *v887 = v888;
        v887 = *v765;
        if (*v765 >= v765[3])
        {
          v887 = v765[2];
          *v765 = v887;
        }

        v888 = aRms[v889++];
      }

      while (v889 != 6);
      v886 = 0.0;
    }

    sprintf_sgR8(v765, v886);
    v890 = (*v765)++;
    *v890 = 10;
    if (*v765 >= v765[3])
    {
      *v765 = v765[2];
    }

    GNSS_Nav_Debug_Flush_Check(v765);
    v765 = v714[36];
    v766 = v714[22];
  }

  v891 = v714[17];
  v892 = *v765;
  v893 = 65;
  v894 = 1u;
  do
  {
    *v765 = v892 + 1;
    *v892 = v893;
    v892 = *v765;
    if (*v765 >= v765[3])
    {
      v892 = v765[2];
      *v765 = v892;
    }

    v893 = aApa[v894++];
  }

  while (v894 != 6);
  v895 = *(v766 + 60840);
  if (*(v766 + 60840) || *(v766 + 60344) != 1)
  {
    v896 = 60888;
    v897 = 60872;
    v898 = 60864;
  }

  else
  {
    v895 = *(v766 + 60348) + 1;
    v896 = 60392;
    v897 = 60376;
    v898 = 60368;
  }

  sprintf_2d(v765, v895);
  sprintf_sgR8(v765, *(v766 + v898));
  sprintf_sgR8(v765, sqrt(*(v766 + v897)));
  sprintf_sgR8(v765, *(v766 + v896));
  v899 = *v765;
  v900 = 32;
  v901 = 1u;
  do
  {
    *v765 = v899 + 1;
    *v899 = v900;
    v899 = *v765;
    if (*v765 >= v765[3])
    {
      v899 = v765[2];
      *v765 = v899;
    }

    v900 = aVva[v901++];
  }

  while (v901 != 7);
  sprintf_2d(v765, *(v766 + 60768));
  sprintf_sgR8(v765, *(v766 + 60792));
  sprintf_sgR8(v765, sqrt(*(v766 + 60800)));
  sprintf_sgR8(v765, *(v766 + 60816));
  v902 = 0;
  v903 = *v765;
  v904 = 32;
  do
  {
    *v765 = v903 + 1;
    *v903 = v904;
    v903 = *v765;
    if (*v765 >= v765[3])
    {
      v903 = v765[2];
      *v765 = v903;
    }

    v904 = aDy[++v902];
  }

  while (v902 != 4);
  v905 = *(v891 + 20);
  if (v905 >= 0)
  {
    v906 = *(v891 + 20);
  }

  else
  {
    v906 = -v905;
  }

  sprintf1da(v765, v906, v1474, 0, v905 >> 31);
  v907 = 0;
  v908 = *v765;
  v909 = 32;
  do
  {
    *v765 = v908 + 1;
    *v908 = v909;
    v908 = *v765;
    if (*v765 >= v765[3])
    {
      v908 = v765[2];
      *v765 = v908;
    }

    v909 = aT0[++v907];
  }

  while (v907 != 4);
  sprintf_1u(v765, *(v891 + 68180));
  LODWORD(v910) = *(v766 + 62748);
  sprintf_sgR8(v765, v910);
  v911 = (*v765)++;
  *v911 = 10;
  if (*v765 >= v765[3])
  {
    *v765 = v765[2];
  }

  GNSS_Nav_Debug_Flush_Check(v765);
  v912 = 0;
  v913 = v714[36];
  v914 = v714[9];
  v915 = v714[10];
  v916 = (v714[17] + 24576);
  v917 = v714[22] + 60176;
  v918 = *v913;
  v919 = 83;
  do
  {
    *v913 = v918 + 1;
    *v918 = v919;
    v918 = *v913;
    if (*v913 >= v913[3])
    {
      v918 = v913[2];
      *v913 = v918;
    }

    v919 = aSigs[++v912];
  }

  while (v912 != 4);
  sprintf_sgR8(v913, *(v915 + 3816));
  sprintf_sgR8(v913, *(v915 + 3824));
  sprintf_sgR8(v913, *(v915 + 3840));
  sprintf_sgR8(v913, *(v915 + 3848));
  sprintf_sgR8(v913, *(v915 + 3864));
  sprintf_sgR8(v913, *(v915 + 3872));
  v920 = *v913;
  v921 = 32;
  v922 = 1u;
  do
  {
    *v913 = v920 + 1;
    *v920 = v921;
    v920 = *v913;
    if (*v913 >= v913[3])
    {
      v920 = v913[2];
      *v913 = v920;
    }

    v921 = aEc[v922++];
  }

  while (v922 != 4);
  if (*(v915 + 3832) >= 0x270Fu)
  {
    v923 = 9999;
  }

  else
  {
    v923 = *(v915 + 3832);
  }

  sprintf_5d(v913, v923);
  if (*(v915 + 3856) >= 0x270Fu)
  {
    v924 = 9999;
  }

  else
  {
    v924 = *(v915 + 3856);
  }

  sprintf_5d(v913, v924);
  if (*(v915 + 3880) >= 0x270Fu)
  {
    v925 = 9999;
  }

  else
  {
    v925 = *(v915 + 3880);
  }

  sprintf_5d(v913, v925);
  v926 = 0;
  v927 = *v913;
  v928 = 32;
  do
  {
    *v913 = v927 + 1;
    *v927 = v928;
    v927 = *v913;
    if (*v913 >= v913[3])
    {
      v927 = v913[2];
      *v913 = v927;
    }

    v928 = aJn0[++v926];
  }

  while (v926 != 8);
  v929 = 0;
  v930 = 32;
  do
  {
    *v913 = v927 + 1;
    *v927 = v930;
    v927 = *v913;
    if (*v913 >= v913[3])
    {
      v927 = v913[2];
      *v913 = v927;
    }

    v930 = aNaEc[++v929];
  }

  while (v929 != 8);
  sprintf1da(v913, v916[1257], v1474, 0, 0);
  v931 = (*v913)++;
  *v931 = 32;
  if (*v913 >= v913[3])
  {
    *v913 = v913[2];
  }

  sprintf1da(v913, v916[1258], v1474, 0, 0);
  v932 = (*v913)++;
  *v932 = 32;
  if (*v913 >= v913[3])
  {
    *v913 = v913[2];
  }

  sprintf1da(v913, v916[1256], v1474, 0, 0);
  v933 = (*v913)++;
  *v933 = 32;
  v934 = *v913;
  if (*v913 >= v913[3])
  {
    v934 = v913[2];
    *v913 = v934;
  }

  if (*(v917 + 2000) <= 0)
  {
    v939 = 32;
    v940 = 1u;
    do
    {
      *v913 = v934 + 1;
      *v934 = v939;
      v934 = *v913;
      if (*v913 >= v913[3])
      {
        v934 = v913[2];
        *v913 = v934;
      }

      v939 = aXXXX[v940++];
    }

    while (v940 != 10);
  }

  else
  {
    sprintf_2d(v913, *(v917 + 128));
    v935 = (*v913)++;
    *v935 = 32;
    if (*v913 >= v913[3])
    {
      *v913 = v913[2];
    }

    sprintf_2d(v913, *(v917 + 136));
    v936 = (*v913)++;
    *v936 = 32;
    if (*v913 >= v913[3])
    {
      *v913 = v913[2];
    }

    sprintf_2d(v913, sqrt(*(v917 + 88)));
    v937 = (*v913)++;
    *v937 = 32;
    if (*v913 >= v913[3])
    {
      *v913 = v913[2];
    }

    sprintf_2d(v913, sqrt(*(v917 + 96)));
    v938 = (*v913)++;
    *v938 = 32;
    v934 = *v913;
    if (*v913 >= v913[3])
    {
      v934 = v913[2];
      *v913 = v934;
    }
  }

  if (*(v917 + 2004) <= 0)
  {
    v943 = 32;
    v944 = 1u;
    do
    {
      *v913 = v934 + 1;
      *v934 = v943;
      v934 = *v913;
      if (*v913 >= v913[3])
      {
        v934 = v913[2];
        *v913 = v934;
      }

      v943 = aXX[v944++];
    }

    while (v944 != 6);
  }

  else
  {
    sprintf_2d(v913, *(v917 + 216));
    v941 = (*v913)++;
    *v941 = 32;
    if (*v913 >= v913[3])
    {
      *v913 = v913[2];
    }

    sprintf_2d(v913, sqrt(*(v917 + 200)));
    v942 = (*v913)++;
    *v942 = 32;
    v934 = *v913;
    if (*v913 >= v913[3])
    {
      v934 = v913[2];
      *v913 = v934;
    }
  }

  if (*(v917 + 1992) <= 0)
  {
    v947 = 32;
    v948 = 1u;
    do
    {
      *v913 = v934 + 1;
      *v934 = v947;
      v934 = *v913;
      if (*v913 >= v913[3])
      {
        v934 = v913[2];
        *v913 = v934;
      }

      v947 = aXX[v948++];
    }

    while (v948 != 6);
  }

  else
  {
    sprintf_sgR8(v913, *(v917 + 16));
    v945 = (*v913)++;
    *v945 = 32;
    if (*v913 >= v913[3])
    {
      *v913 = v913[2];
    }

    sprintf_2d(v913, sqrt(*v917));
    v946 = (*v913)++;
    *v946 = 32;
    v934 = *v913;
    if (*v913 >= v913[3])
    {
      v934 = v913[2];
    }
  }

  v949 = 0;
  v950 = 32;
  do
  {
    *v913 = v934 + 1;
    *v934 = v950;
    v934 = *v913;
    if (*v913 >= v913[3])
    {
      v934 = v913[2];
      *v913 = v934;
    }

    v950 = aEs_0[++v949];
  }

  while (v949 != 4);
  v951 = *(v914 + 60);
  if (v951 >= 8)
  {
    v952 = 48;
  }

  else
  {
    v952 = v951 + 48;
  }

  *v913 = v934 + 1;
  *v934 = v952;
  v953 = *v913;
  if (*v913 >= v913[3])
  {
    v953 = v913[2];
  }

  *v913 = v953 + 1;
  *v953 = 10;
  if (*v913 >= v913[3])
  {
    *v913 = v913[2];
  }

  GNSS_Nav_Debug_Flush_Check(v913);
  v954 = v714[36];
  if (g_Logging_Cfg >= 5)
  {
    v955 = 0;
    v956 = v714[12];
    v957 = v714[22];
    v958 = v714[17];
    v959 = *v714;
    v960 = 86;
    v961 = *v954;
    do
    {
      *v954 = v961 + 1;
      *v961 = v960;
      v961 = *v954;
      if (*v954 >= v954[3])
      {
        v961 = v954[2];
        *v954 = v961;
      }

      v960 = aVarf[++v955];
    }

    while (v955 != 4);
    sprintf_sgR8(v954, *(v957 + 6800));
    sprintf_sgR8(v954, v958[3372]);
    sprintf_sgR8(v954, *(v957 + 21704));
    sprintf_sgR8(v954, v958[3375]);
    sprintf_sgR8(v954, *(v957 + 36608));
    sprintf_sgR8(v954, v958[3378]);
    v962 = 0;
    v963 = *v954;
    v964 = 32;
    do
    {
      *v954 = v963 + 1;
      *v963 = v964;
      v963 = *v954;
      if (*v954 >= v954[3])
      {
        v963 = v954[2];
        *v954 = v963;
      }

      v964 = aS_0[++v962];
    }

    while (v962 != 2);
    sprintf_3d(v954, v959);
    v965 = *v954;
    v966 = 32;
    v967 = 1u;
    do
    {
      *v954 = v965 + 1;
      *v965 = v966;
      v965 = *v954;
      if (*v954 >= v954[3])
      {
        v965 = v954[2];
        *v954 = v965;
      }

      v966 = aI[v967++];
    }

    while (v967 != 4);
    v968 = *(v957 + 1552) * 10.0;
    v969 = -0.5;
    if (v968 > 0.0)
    {
      v969 = 0.5;
    }

    v970 = v968 + v969;
    if (v970 <= 2147483650.0)
    {
      if (v970 >= -2147483650.0)
      {
        v971 = v970;
      }

      else
      {
        v971 = 0x80000000;
      }
    }

    else
    {
      v971 = 0x7FFFFFFF;
    }

    sprintf_2f(v954, v971);
    v974 = *(v957 + 52);
    if (v974 > -10)
    {
      v975 = *v954;
      v978 = 32;
      if (v974 <= 99)
      {
        v980 = 1u;
        do
        {
          *v954 = v975 + 1;
          *v975 = v978;
          v975 = *v954;
          if (*v954 >= v954[3])
          {
            v975 = v954[2];
            *v954 = v975;
          }

          v978 = aTs[v980++];
        }

        while (v980 != 4);
        sprintf_sp1d(v954, *(v957 + 52));
        v975 = *v954;
      }

      else
      {
        v979 = 1u;
        do
        {
          *v954 = v975 + 1;
          *v975 = v978;
          v975 = *v954;
          if (*v954 >= v954[3])
          {
            v975 = v954[2];
            *v954 = v975;
          }

          v978 = aTs99[v979++];
        }

        while (v979 != 7);
      }
    }

    else
    {
      v975 = *v954;
      v976 = 32;
      v977 = 1u;
      do
      {
        *v954 = v975 + 1;
        *v975 = v976;
        v975 = *v954;
        if (*v954 >= v954[3])
        {
          v975 = v954[2];
          *v954 = v975;
        }

        v976 = aTs9[v977++];
      }

      while (v977 != 7);
    }

    v981 = 0;
    v982 = 32;
    do
    {
      *v954 = v975 + 1;
      *v975 = v982;
      v975 = *v954;
      if (*v954 >= v954[3])
      {
        v975 = v954[2];
        *v954 = v975;
      }

      v982 = aNf_0[++v981];
    }

    while (v981 != 4);
    sprintf_sp1d(v954, v956[80]);
    sprintf_sp1d(v954, v956[81]);
    sprintf_sp1d(v954, v956[82]);
    sprintf_sp1d(v954, v956[83]);
    v983 = (*v954)++;
    *v983 = 10;
    if (*v954 >= v954[3])
    {
      *v954 = v954[2];
    }

    GNSS_Nav_Debug_Flush_Check(v954);
    v954 = v714[36];
  }

  v984 = v714[22];
  v985 = *v954;
  v986 = 79;
  v987 = 1u;
  do
  {
    *v954 = v985 + 1;
    *v985 = v986;
    v985 = *v954;
    if (*v954 >= v954[3])
    {
      v985 = v954[2];
      *v954 = v985;
    }

    v986 = aOrigSig[v987++];
  }

  while (v987 != 10);
  v988 = 0;
  v989 = v984 + 61824;
  do
  {
    sprintf_sgR8F(v954, sqrt(*(v989 + v988)));
    v988 += 8;
  }

  while (v988 != 96);
  v990 = (*v954)++;
  *v990 = 10;
  if (*v954 >= v954[3])
  {
    *v954 = v954[2];
  }

  GNSS_Nav_Debug_Flush_Check(v954);
  v991 = v714[36];
  v992 = v714[22];
  v993 = *v991;
  v994 = 83;
  v995 = 1u;
  do
  {
    *v991 = v993 + 1;
    *v993 = v994;
    v993 = *v991;
    if (*v991 >= v991[3])
    {
      v993 = v991[2];
      *v991 = v993;
    }

    v994 = aSvecCor[v995++];
  }

  while (v995 != 10);
  for (i4 = 0; i4 != 96; i4 += 8)
  {
    sprintf_sgR8F(v991, *(v992 + 62648 + i4));
  }

  v997 = *v991;
  for (i5 = 3; i5 > 1; --i5)
  {
    *v991 = v997 + 1;
    *v997 = 32;
    v997 = *v991;
    if (*v991 >= v991[3])
    {
      v997 = v991[2];
      *v991 = v997;
    }
  }

  v999 = 0;
  v1000 = v992 + 62540;
  do
  {
    sprintf1da(v991, *(v1000 + v999++), v1474, 0, 0);
  }

  while (v999 != 12);
  v1001 = (*v991)++;
  *v1001 = 10;
  if (*v991 >= v991[3])
  {
    *v991 = v991[2];
  }

  v1002 = v714[36];
  v1003 = v714[22];
  v1004 = *v1002;
  v1005 = 83;
  v1006 = 1u;
  do
  {
    *v1002 = v1004 + 1;
    *v1004 = v1005;
    v1004 = *v1002;
    if (*v1002 >= v1002[3])
    {
      v1004 = v1002[2];
      *v1002 = v1004;
    }

    v1005 = aSvecSig[v1006++];
  }

  while (v1006 != 10);
  v1007 = 0;
  v1008 = v1003 + 61432;
  do
  {
    sprintf_sgR8F(v1002, sqrt(*(v1008 + v1007)));
    v1007 += 8;
  }

  while (v1007 != 96);
  v1009 = (*v1002)++;
  *v1009 = 10;
  if (*v1002 >= v1002[3])
  {
    *v1002 = v1002[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1002);
  v1010 = v714[36];
  v1011 = v714[17];
  v1012 = v714[22];
  if (!*(v1011 + 152))
  {
    v1013 = v1012 + 49152;
    v1014 = *v1010;
    v1015 = 81;
    v1016 = 1u;
    do
    {
      *v1010 = v1014 + 1;
      *v1014 = v1015;
      v1014 = *v1010;
      if (*v1010 >= v1010[3])
      {
        v1014 = v1010[2];
        *v1010 = v1014;
      }

      v1015 = aQBSize[v1016++];
    }

    while (v1016 != 10);
    v1017 = 0;
    v1018 = v1011 + 192;
    do
    {
      sprintf_sgR8F(v1010, sqrt(*(v1018 + v1017)));
      v1017 += 8;
    }

    while (v1017 != 48);
    sprintf_sgR8F(v1010, *(v1013 + 3608));
    sprintf_sgR8F(v1010, *(v1013 + 3616));
    v1019 = (*v1010)++;
    *v1019 = 10;
    if (*v1010 >= v1010[3])
    {
      *v1010 = v1010[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1010);
    v1010 = v714[36];
    v1011 = v714[17];
    v1012 = v714[22];
  }

  if (g_Logging_Cfg >= 5)
  {
    v1020 = v714[10];
    v1021 = *v1010;
    v1022 = 119;
    v1023 = 1u;
    do
    {
      *v1010 = v1021 + 1;
      *v1021 = v1022;
      v1021 = *v1010;
      if (*v1010 >= v1010[3])
      {
        v1021 = v1010[2];
        *v1010 = v1021;
      }

      v1022 = aWrdop[v1023++];
    }

    while (v1023 != 10);
    sprintf_sgR8F(v1010, sqrt(*(v1011 + 15488)));
    for (i6 = 0; i6 != 24; i6 += 8)
    {
      sprintf_sgR8(v1010, sqrt(*(v1011 + 15496 + i6)));
    }

    sprintf_sgR8(v1010, *(v1011 + 15520));
    v1025 = *v1010;
    v1026 = 32;
    v1027 = 1u;
    do
    {
      *v1010 = v1025 + 1;
      *v1025 = v1026;
      v1025 = *v1010;
      if (*v1010 >= v1010[3])
      {
        v1025 = v1010[2];
        *v1010 = v1025;
      }

      v1026 = aPrefc[v1027++];
    }

    while (v1027 != 8);
    v1028 = (v1012 + 79624);
    sprintf_LaLo(v1010, v1012 + 79624);
    sprintf_sgR8(v1010, *(v1012 + 79640));
    sprintf_sgR8(v1010, *(v1012 + 79640) - *(v1020 + 248));
    v1029 = (*v1010)++;
    *v1029 = 32;
    if (*v1010 >= v1010[3])
    {
      *v1010 = v1010[2];
    }

    v1030 = (v1011 + 68288);
    v1031 = -3;
    do
    {
      v1032 = *v1028 - *(v1030 - 9);
      if (v1031 != -1)
      {
        if (v1031 == -2)
        {
          v1033 = -6.28318531;
          if (v1032 >= 3.14159265 || (v1033 = 6.28318531, v1032 < -3.14159265))
          {
            v1032 = v1032 + v1033;
          }
        }

        v1032 = v1032 * *v1030;
      }

      sprintf_6d(v1010, v1032);
      v1034 = (*v1010)++;
      *v1034 = 32;
      v1035 = *v1010;
      if (*v1010 >= v1010[3])
      {
        v1035 = v1010[2];
        *v1010 = v1035;
      }

      ++v1030;
      ++v1028;
      v333 = __CFADD__(v1031++, 1);
    }

    while (!v333);
    v1036 = 32;
    v1037 = 1u;
    do
    {
      *v1010 = v1035 + 1;
      *v1035 = v1036;
      v1035 = *v1010;
      if (*v1010 >= v1010[3])
      {
        v1035 = v1010[2];
        *v1010 = v1035;
      }

      v1036 = aVel[v1037++];
    }

    while (v1037 != 6);
    v1038 = 0;
    v1039 = v1012 + 79648;
    do
    {
      sprintf_sgR8(v1010, *(v1039 + v1038));
      v1038 += 8;
    }

    while (v1038 != 24);
    v1040 = (*v1010)++;
    *v1040 = 10;
    if (*v1010 >= v1010[3])
    {
      *v1010 = v1010[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1010);
    v1010 = v714[36];
    v1012 = v714[22];
  }

  v1041 = v714[9];
  v1042 = *v1010;
  v1043 = 67;
  v1044 = 1u;
  do
  {
    *v1010 = v1042 + 1;
    *v1042 = v1043;
    v1042 = *v1010;
    if (*v1010 >= v1010[3])
    {
      v1042 = v1010[2];
      *v1010 = v1042;
    }

    v1043 = aClkbias[v1044++];
  }

  while (v1044 != 10);
  v1045 = (*(v1012 + 1632) * 2997924580.0);
  sprintf_9f(v1010, v1045, 2);
  v1046 = (*v1010)++;
  *v1046 = 32;
  if (*v1010 >= v1010[3])
  {
    *v1010 = v1010[2];
  }

  v1047 = (*(v1012 + 1640) * 2997924580.0);
  sprintf_9f(v1010, v1047, 2);
  v1048 = (*v1010)++;
  *v1048 = 32;
  if (*v1010 >= v1010[3])
  {
    *v1010 = v1010[2];
  }

  v1049 = (*(v1012 + 1648) * 2997924580.0);
  sprintf_9f(v1010, v1049, 2);
  v1050 = (*v1010)++;
  *v1050 = 32;
  v1051 = *v1010;
  if (*v1010 >= v1010[3])
  {
    v1051 = v1010[2];
  }

  v1052 = 32;
  v1053 = 1u;
  do
  {
    *v1010 = v1051 + 1;
    *v1051 = v1052;
    v1051 = *v1010;
    if (*v1010 >= v1010[3])
    {
      v1051 = v1010[2];
      *v1010 = v1051;
    }

    v1052 = aDclk[v1053++];
  }

  while (v1053 != 7);
  if (v1047)
  {
    v1054 = v1045 == 0;
  }

  else
  {
    v1054 = 1;
  }

  if (v1054)
  {
    v1055 = 0;
  }

  else
  {
    v1055 = v1047 - v1045;
  }

  *v1010 = v1051 + 1;
  *v1051 = 32;
  if (*v1010 >= v1010[3])
  {
    *v1010 = v1010[2];
  }

  sprintf_5f(v1010, v1055, 2);
  if (v1049)
  {
    v1056 = v1045 == 0;
  }

  else
  {
    v1056 = 1;
  }

  if (v1056)
  {
    v1057 = 0;
  }

  else
  {
    v1057 = v1049 - v1045;
  }

  v1058 = (*v1010)++;
  *v1058 = 32;
  if (*v1010 >= v1010[3])
  {
    *v1010 = v1010[2];
  }

  sprintf_5f(v1010, v1057, 2);
  v1059 = 0;
  v1060 = *v1010;
  v1061 = 32;
  do
  {
    *v1010 = v1060 + 1;
    *v1060 = v1061;
    v1060 = *v1010;
    if (*v1010 >= v1010[3])
    {
      v1060 = v1010[2];
      *v1010 = v1060;
    }

    v1061 = aL5L1[++v1059];
  }

  while (v1059 != 8);
  v1062 = (*(v1012 + 1656) * 2.99792458e10);
  *v1010 = v1060 + 1;
  *v1060 = 32;
  if (*v1010 >= v1010[3])
  {
    *v1010 = v1010[2];
  }

  sprintf_5f(v1010, v1062, 3);
  v1063 = *v1010;
  v1064 = 32;
  v1065 = 1u;
  do
  {
    *v1010 = v1063 + 1;
    *v1063 = v1064;
    v1063 = *v1010;
    if (*v1010 >= v1010[3])
    {
      v1063 = v1010[2];
      *v1010 = v1063;
    }

    v1064 = aIni[v1065++];
  }

  while (v1065 != 7);
  sprintf_2d(v1010, *(v1012 + 1680));
  sprintf_2d(v1010, *(v1012 + 1681));
  sprintf_2d(v1010, *(v1012 + 1682));
  v1066 = 0;
  v1067 = *v1010;
  v1068 = 32;
  do
  {
    *v1010 = v1067 + 1;
    *v1067 = v1068;
    v1067 = *v1010;
    if (*v1010 >= v1010[3])
    {
      v1067 = v1010[2];
      *v1010 = v1067;
    }

    v1068 = aLsKf[++v1066];
  }

  while (v1066 != 8);
  sprintf_2d(v1010, *(v1012 + 79672));
  v1069 = *v1010;
  v1070 = 32;
  v1071 = 1u;
  do
  {
    *v1010 = v1069 + 1;
    *v1069 = v1070;
    v1069 = *v1010;
    if (*v1010 >= v1010[3])
    {
      v1069 = v1010[2];
      *v1010 = v1069;
    }

    v1070 = aJit[v1071++];
  }

  while (v1071 != 7);
  sprintf_4f(v1010, (*(v1041 + 242) * 2.99792458), 2);
  LOBYTE(v1072) = *(v1041 + 243);
  sprintf_4f(v1010, (v1072 * 2.99792458), 2);
  v1073 = (*v1010)++;
  *v1073 = 10;
  if (*v1010 >= v1010[3])
  {
    *v1010 = v1010[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1010);
  v1074 = v714[36];
  if (g_Logging_Cfg >= 5)
  {
    v1075 = v714[7];
    v1076 = *v1074;
    v1077 = 71;
    v1078 = 1u;
    do
    {
      *v1074 = v1076 + 1;
      *v1076 = v1077;
      v1076 = *v1074;
      if (*v1074 >= v1074[3])
      {
        v1076 = v1074[2];
        *v1074 = v1076;
      }

      v1077 = aGlofrq[v1078++];
    }

    while (v1078 != 8);
    v1079 = 0;
    v1080 = v1075 + 17328;
    do
    {
      if (*(v1080 + 4 * v1079) != 2139062143)
      {
        sprintf_3d(v1074, v1079 + 1);
        sprintf_3d(v1074, *(v1080 + 4 * v1079));
        v1081 = (*v1074)++;
        *v1081 = 59;
        v1076 = *v1074;
        if (*v1074 >= v1074[3])
        {
          v1076 = v1074[2];
          *v1074 = v1076;
        }
      }

      ++v1079;
    }

    while (v1079 != 24);
    *v1074 = v1076 + 1;
    *v1076 = 10;
    if (*v1074 >= v1074[3])
    {
      *v1074 = v1074[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1074);
    v1074 = v714[36];
  }

  v1082 = 0;
  v1083 = v714[7];
  v1084 = *v1074;
  v1085 = 71;
  do
  {
    *v1074 = v1084 + 1;
    *v1084 = v1085;
    v1084 = *v1074;
    if (*v1074 >= v1074[3])
    {
      v1084 = v1074[2];
      *v1074 = v1084;
    }

    v1085 = aGloslot[++v1082];
  }

  while (v1082 != 8);
  v1086 = 0;
  v1087 = v1083 + 17424;
  v1088 = -7;
  do
  {
    if (*(v1087 + v1086) != 2139062143)
    {
      sprintf_3d(v1074, v1088);
      sprintf_3d(v1074, *(v1087 + v1086));
      v1089 = (*v1074)++;
      *v1089 = 59;
      v1084 = *v1074;
      if (*v1074 >= v1074[3])
      {
        v1084 = v1074[2];
        *v1074 = v1084;
      }
    }

    v1086 += 4;
    ++v1088;
  }

  while (v1086 != 56);
  *v1074 = v1084 + 1;
  *v1084 = 10;
  if (*v1074 >= v1074[3])
  {
    *v1074 = v1074[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1074);
  v1090 = v714[36];
  v1091 = v714[10];
  v1092 = v714[17];
  v1093 = v714[22];
  v1094 = v714[6];
  v1095 = *v1090;
  v1096 = 82;
  v1097 = 1u;
  do
  {
    *v1090 = v1095 + 1;
    *v1095 = v1096;
    v1095 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1095 = v1090[2];
      *v1090 = v1095;
    }

    v1096 = aReset[v1097++];
  }

  while (v1097 != 8);
  sprintf1da(v1090, *(v1092 + 136), v1474, 0, 0);
  sprintf_3d(v1090, *(v1092 + 140));
  sprintf_5d(v1090, *(v1092 + 144));
  sprintf_6d(v1090, *(v1092 + 148));
  sprintf_2d(v1090, *(v1092 + 176));
  v1098 = 0;
  v1099 = *v1090;
  v1100 = 32;
  do
  {
    *v1090 = v1099 + 1;
    *v1099 = v1100;
    v1099 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1099 = v1090[2];
      *v1090 = v1099;
    }

    v1100 = aQb[++v1098];
  }

  while (v1098 != 4);
  if (*(v1092 + 183))
  {
    v1101 = 49;
  }

  else
  {
    v1101 = 48;
  }

  *v1090 = v1099 + 1;
  *v1099 = v1101;
  if (*v1090 >= v1090[3])
  {
    *v1090 = v1090[2];
  }

  v1102 = *(v1092 + 184);
  if (*(v1092 + 186))
  {
    v1102 |= 2u;
  }

  if (*(v1092 + 188))
  {
    v1103 = v1102 | 4;
  }

  else
  {
    v1103 = v1102;
  }

  sprintf1da(v1090, v1103, v1474, 0, 0);
  if (*(v1092 + 187))
  {
    v1104 = *(v1092 + 185) | 2;
  }

  else
  {
    v1104 = *(v1092 + 185);
  }

  sprintf1da(v1090, v1104, v1474, 0, 0);
  sprintf_6d(v1090, *(v1092 + 152));
  v1105 = 0;
  v1106 = *v1090;
  v1107 = 32;
  do
  {
    *v1090 = v1106 + 1;
    *v1106 = v1107;
    v1106 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1106 = v1090[2];
      *v1090 = v1106;
    }

    v1107 = aSt_0[++v1105];
  }

  while (v1105 != 4);
  sprintf1da(v1090, *(v1094 + 16), v1474, 0, 0);
  v1108 = *v1090;
  v1109 = &g_TOW_Stat_As_String[10 * *v1094 + 1];
  v1110 = 32;
  do
  {
    *v1090 = v1108 + 1;
    *v1108 = v1110;
    v1108 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1108 = v1090[2];
      *v1090 = v1108;
    }

    v1111 = *v1109++;
    v1110 = v1111;
  }

  while (v1111);
  v1112 = 0;
  v1113 = 32;
  do
  {
    *v1090 = v1108 + 1;
    *v1108 = v1113;
    v1108 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1108 = v1090[2];
      *v1090 = v1108;
    }

    v1113 = aSp[++v1112];
  }

  while (v1112 != 4);
  sprintf1da(v1090, *(v1091 + 18), v1474, 0, 0);
  sprintf1da(v1090, *(v1092 + 240), v1474, 0, 0);
  sprintf1da(v1090, *(v1092 + 241), v1474, 0, 0);
  sprintf1da(v1090, *(v1093 + 62539), v1474, 0, 0);
  v1114 = *v1090;
  v1115 = 32;
  v1116 = 1u;
  do
  {
    *v1090 = v1114 + 1;
    *v1114 = v1115;
    v1114 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1114 = v1090[2];
      *v1090 = v1114;
    }

    v1115 = aFf[v1116++];
  }

  while (v1116 != 6);
  sprintf_3f(v1090, 10 * *(v1092 + 27136) / 0x3E8u, 2);
  sprintf_sp1d(v1090, *(v1093 + 48));
  v1117 = *v1090;
  v1118 = 32;
  v1119 = 1u;
  do
  {
    *v1090 = v1117 + 1;
    *v1117 = v1118;
    v1117 = *v1090;
    if (*v1090 >= v1090[3])
    {
      v1117 = v1090[2];
      *v1090 = v1117;
    }

    v1118 = aOr[v1119++];
  }

  while (v1119 != 6);
  sprintf1da(v1090, *(v1093 + 1880), v1474, 0, 0);
  v1120 = (*v1090)++;
  *v1120 = 10;
  if (*v1090 >= v1090[3])
  {
    *v1090 = v1090[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1090);
  v1121 = 0;
  v1122 = v714[36];
  v1124 = v714[7];
  v1123 = v714[8];
  v1125 = v714[17];
  v1446 = v714[5];
  v1447 = v714[22];
  v1126 = v714[10];
  v1437 = v714[11];
  v1127 = v714[12];
  v1443 = v714[26];
  v1444 = v714[4];
  v1511 = 0u;
  v1512 = 0u;
  v1509 = 0u;
  v1510 = 0u;
  v1507 = 0u;
  v1508 = 0u;
  *v1505 = 0u;
  v1506 = 0u;
  v1503 = 0u;
  v1504 = 0u;
  v1501 = 0u;
  v1502 = 0u;
  v1499 = 0u;
  v1500 = 0u;
  v1497 = 0u;
  v1498 = 0u;
  v1495 = 0u;
  v1496 = 0u;
  v1493 = 0u;
  v1494 = 0u;
  v1491 = 0u;
  v1492 = 0u;
  v1489 = 0u;
  v1490 = 0u;
  v1487 = 0u;
  v1488 = 0u;
  v1485 = 0u;
  v1486 = 0u;
  v1483 = 0u;
  v1484 = 0u;
  v1481 = 0u;
  v1482 = 0u;
  v1480 = 0u;
  v1478 = 0u;
  v1479 = 0u;
  v1476 = 0u;
  v1477 = 0u;
  v1475 = 0u;
  v1458 = v1127 + 96;
  v1128 = (v1127 + 99);
  memset(v1474, 0, sizeof(v1474));
  do
  {
    *(v1505 + v1121) = v1121;
    v1129 = *(v1128 - 3);
    if (*(v1128 - 3))
    {
      v1130 = (v1129 << 16) | (*(v1128 - 2) << 8);
      if (v1129 == 2)
      {
        v1131 = v1130 + *v1128;
      }

      else
      {
        v1131 = v1130 | *(v1128 - 1);
      }

      v1474[v1121] = v1131;
    }

    ++v1121;
    v1128 += 4;
  }

  while (v1121 != 128);
  VecSortIndexAscI4(v1474, v1505, 0, 127);
  v1132 = 0;
  v1133 = v1126 + 1640;
  v1466 = v1127 + 992;
  v1456 = v1127 + 1248;
  v1457 = v1127 + 864;
  v1463 = v1127 + 1760;
  v1454 = v1127 + 2016;
  v1455 = v1127 + 1888;
  v1442 = v1127 + 2912;
  v1436 = v1127 + 2656;
  v1459 = v1127 + 2400;
  v1438 = v1125 + 16648;
  v1434 = v1124;
  v1435 = v1124 + 17672;
  v1452 = v1127 + 8160;
  v1453 = v1127 + 2144;
  v1464 = v1447 + 1770;
  v1460 = v1447 + 1834;
  v1468 = v1447 + 9222;
  v1461 = v1447 + 9286;
  v1441 = v1447 + 5496;
  v1440 = v1127 + 4448;
  v1450 = v1125 + 14208;
  v1449 = v1125 + 13184;
  v1439 = v1447 + 5560;
  v1451 = v1446 + 5976;
  v1445 = v1446 + 72;
  v1134 = v1127 + 96;
  do
  {
    v1135 = *(v1505 + v1132);
    v1136 = (v1134 + 4 * v1135);
    if (!*v1136)
    {
      goto LABEL_2143;
    }

    v1137 = *(v1133 + 4 * v1135);
    v1138 = g_Logging_Cfg <= 3 && v1137 < 4;
    if (v1138)
    {
      goto LABEL_2143;
    }

    v1139 = v1136[2];
    if (v1136[2])
    {
      v1462 = GNSS_Id_To_Num_Prn_Idx(*v1136);
    }

    else
    {
      v1462 = -1;
    }

    v1140 = *v1122;
    v1141 = 83;
    v1142 = 1u;
    do
    {
      *v1122 = v1140 + 1;
      *v1140 = v1141;
      v1140 = *v1122;
      if (*v1122 >= v1122[3])
      {
        v1140 = v1122[2];
        *v1122 = v1140;
      }

      v1141 = aSv[v1142++];
    }

    while (v1142 != 4);
    v1143 = ch_CONSTELL_ID[*v1136];
    *v1122 = v1140 + 1;
    *v1140 = v1143;
    v1144 = *v1122;
    if (*v1122 >= v1122[3])
    {
      v1144 = v1122[2];
      *v1122 = v1144;
    }

    v1145 = 3 * v1136[1];
    v1146 = ch_GNSS_SIGID[v1145];
    if (v1146)
    {
      v1147 = &ch_GNSS_SIGID[v1145 + 1];
      do
      {
        *v1122 = v1144 + 1;
        *v1144 = v1146;
        v1144 = *v1122;
        if (*v1122 >= v1122[3])
        {
          v1144 = v1122[2];
          *v1122 = v1144;
        }

        v1148 = *v1147++;
        v1146 = v1148;
      }

      while (v1148);
    }

    sprintf_4d(v1122, v1139);
    sprintf_3d(v1122, v1136[3]);
    if (*v1136 == 2)
    {
      v1149 = v1136[3] + 8;
    }

    else
    {
      v1149 = 0;
    }

    sprintf_3d(v1122, v1149);
    sprintf_3d(v1122, *(v1457 + v1135));
    v1150 = (*v1122)++;
    *v1150 = 32;
    if (*v1122 >= v1122[3])
    {
      *v1122 = v1122[2];
    }

    sprintf_04x(v1122, *(v1466 + 2 * v1135));
    sprintf_3d(v1122, *(v1456 + 4 * v1135));
    LOBYTE(v1151) = *(v1463 + v1135);
    LOBYTE(v1152) = *(v1455 + v1135);
    v1153 = (v1151 + v1152 * 0.0625) * 10.0;
    if (v1153 <= 0.0)
    {
      v1154 = -0.5;
    }

    else
    {
      v1154 = 0.5;
    }

    v1155 = v1153 + v1154;
    if (v1155 <= 2147483650.0)
    {
      if (v1155 >= -2147483650.0)
      {
        v1156 = v1155;
      }

      else
      {
        v1156 = 0x80000000;
      }
    }

    else
    {
      v1156 = 0x7FFFFFFF;
    }

    sprintf_4f(v1122, v1156, 2);
    LOBYTE(v1157) = *(v1454 + v1135);
    LOBYTE(v1158) = *(v1453 + v1135);
    v1159 = (v1157 + v1158 * 0.0625) * 10.0;
    if (v1159 <= 0.0)
    {
      v1160 = -0.5;
    }

    else
    {
      v1160 = 0.5;
    }

    v1161 = v1159 + v1160;
    if (v1161 <= 2147483650.0)
    {
      if (v1161 >= -2147483650.0)
      {
        v1162 = v1161;
      }

      else
      {
        v1162 = 0x80000000;
      }
    }

    else
    {
      v1162 = 0x7FFFFFFF;
    }

    sprintf_4f(v1122, v1162, 2);
    v1163 = *(v1466 + 2 * v1135);
    v1164 = v1459;
    if ((v1163 & 8) != 0)
    {
      v1164 = v1442;
      if ((v1163 & 0xC0) == 0)
      {
        v1164 = v1436;
        if ((v1163 & 0x30) == 0)
        {
          v1164 = v1459;
        }
      }
    }

    sprintf_6d(v1122, *(v1164 + 2 * v1135));
    if (!v1139 || v1137 == 3)
    {
      v1165 = *v1122;
      v1166 = 32;
      v1167 = 1u;
      do
      {
        *v1122 = v1165 + 1;
        *v1165 = v1166;
        v1165 = *v1122;
        if (*v1122 >= v1122[3])
        {
          v1165 = v1122[2];
          *v1122 = v1165;
        }

        v1166 = aX90[v1167++];
      }

      while (v1167 != 13);
    }

    else
    {
      if (*(v1447 + v1135 + 57) == 1 && *(v1438 + 2 * v1135))
      {
        sprintf_5d(v1122, *(v1438 + 2 * v1135));
      }

      else
      {
        v1168 = *v1122;
        for (i7 = 5; i7 > 1; --i7)
        {
          *v1122 = v1168 + 1;
          *v1168 = 32;
          v1168 = *v1122;
          if (*v1122 >= v1122[3])
          {
            v1168 = v1122[2];
            *v1122 = v1168;
          }
        }

        if ((*(v1447 + v1135 + 31510) & 0x8000000000000000) != 0)
        {
          *v1122 = v1168 + 1;
          v1170 = 120;
        }

        else if (*v1136 == 3 && *(v1435 + v1139 - 1) == 1 && (*(*(v1434 + 17616) + v1139 - 1) & 1) == 0)
        {
          *v1122 = v1168 + 1;
          v1170 = 109;
        }

        else
        {
          v1170 = ch_EPH_ALM[*(v1437 + 192 * *(v1447 + v1135 + 31510) + 176)];
          *v1122 = v1168 + 1;
        }

        *v1168 = v1170;
        if (*v1122 >= v1122[3])
        {
          *v1122 = v1122[2];
        }
      }

      v1171 = *(v1444 + GNSS_Id_To_Num_Prn_Idx(*v1136));
      if (v1171 <= -9)
      {
        v1172 = -9;
      }

      else
      {
        v1172 = v1171;
      }

      sprintf_3d(v1122, v1172);
      v1173 = *(v1444 + 218 + 2 * GNSS_Id_To_Num_Prn_Idx(*v1136));
      if ((v1173 & 0x80000000) != 0)
      {
        v1174 = 0;
        v1175 = *v1122;
        v1176 = 32;
        do
        {
          *v1122 = v1175 + 1;
          *v1175 = v1176;
          v1175 = *v1122;
          if (*v1122 >= v1122[3])
          {
            v1175 = v1122[2];
            *v1122 = v1175;
          }

          v1176 = a0[++v1174];
        }

        while (v1174 != 4);
      }

      else
      {
        sprintf_4d(v1122, v1173);
      }
    }

    sprintf_4d(v1122, *(v1452 + 2 * v1135));
    v1177 = (*v1122)++;
    *v1177 = 32;
    if (*v1122 >= v1122[3])
    {
      *v1122 = v1122[2];
    }

    sprintf_sgR8(v1122, *&v1447[2 * v1135 + 3274]);
    if (*(v1464 + v1135) == 1)
    {
      if (*(v1447 + v1135 + 16168))
      {
        v1178 = 3;
      }

      else
      {
        v1178 = 1;
      }

      if (*(v1447 + v1135 + 17320))
      {
        v1178 |= 4u;
      }

      if (*(v1447 + v1135 + 19496))
      {
        v1179 = v1178 | 8;
      }

      else
      {
        v1179 = v1178;
      }
    }

    else
    {
      v1179 = 0;
    }

    sprintf_2x(v1122, v1179);
    v1180 = v1460[v1135];
    if (v1180 >= 0x1F)
    {
      gn_report_assertion_failure("SV_Meas_Edit_Char");
      v1181 = 120;
    }

    else
    {
      v1181 = aCghkmnpqrstvya[v1180];
    }

    v1182 = (*v1122)++;
    *v1182 = v1181;
    v1183 = *v1122;
    if (*v1122 >= v1122[3])
    {
      v1183 = v1122[2];
    }

    *v1122 = v1183 + 1;
    *v1183 = 32;
    if (*v1122 >= v1122[3])
    {
      *v1122 = v1122[2];
    }

    if ((*(v1468 + v1135) & 1) != 0 || (v1461[v1135] - 1) <= 0x1D)
    {
      sprintf_sgR8(v1122, *&v1447[2 * v1135 + 10982]);
      if (*(v1468 + v1135) == 1)
      {
        if (*(v1447 + v1135 + 45976))
        {
          v1184 = 3;
        }

        else
        {
          v1184 = 1;
        }

        if (*(v1447 + v1135 + 47128))
        {
          v1184 |= 4u;
        }

        if (*(v1447 + v1135 + 49304))
        {
          v1185 = v1184 | 8;
        }

        else
        {
          v1185 = v1184;
        }
      }

      else
      {
        v1185 = 0;
      }

      sprintf_2x(v1122, v1185);
      v1186 = v1461[v1135];
      if (v1186 >= 0x1F)
      {
        gn_report_assertion_failure("SV_Meas_Edit_Char");
        v1187 = 120;
      }

      else
      {
        v1187 = aCghkmnpqrstvya[v1186];
      }

      v1188 = (*v1122)++;
      *v1188 = v1187;
      v1189 = *v1122;
      if (*v1122 >= v1122[3])
      {
        v1189 = v1122[2];
        *v1122 = v1189;
      }

      v1190 = " 1 ";
    }

    else
    {
      sprintf_sgR8(v1122, *&v1447[2 * v1135 + 7256]);
      if (*(v1441 + v1135) == 1)
      {
        if (*(v1447 + v1135 + 31072))
        {
          v1191 = 3;
        }

        else
        {
          v1191 = 1;
        }

        if (*(v1447 + v1135 + 32224))
        {
          v1191 |= 4u;
        }

        if (*(v1447 + v1135 + 34400))
        {
          v1192 = v1191 | 8;
        }

        else
        {
          v1192 = v1191;
        }
      }

      else
      {
        v1192 = 0;
      }

      sprintf_2x(v1122, v1192);
      v1193 = v1439[v1135];
      if (v1193 >= 0x1F)
      {
        gn_report_assertion_failure("SV_Meas_Edit_Char");
        v1194 = 120;
      }

      else
      {
        v1194 = aCghkmnpqrstvya[v1193];
      }

      v1195 = (*v1122)++;
      *v1195 = v1194;
      v1189 = *v1122;
      if (*v1122 >= v1122[3])
      {
        v1189 = v1122[2];
        *v1122 = v1189;
      }

      v1190 = " 0 ";
      if (*(v1447 + v1135 + 51480))
      {
        v1190 = " 2 ";
      }
    }

    v1196 = *v1190;
    if (*v1190)
    {
      v1197 = (v1190 + 1);
      do
      {
        *v1122 = v1189 + 1;
        *v1189 = v1196;
        v1189 = *v1122;
        if (*v1122 >= v1122[3])
        {
          v1189 = v1122[2];
          *v1122 = v1189;
        }

        v1198 = *v1197++;
        v1196 = v1198;
      }

      while (v1198);
    }

    if (!v1139 || v1137 != 1)
    {
      Get_SV_Carrier_Inv_Wavelength();
      v1203 = (v1204 * *(v1440 + 8 * v1135));
LABEL_2061:
      v1202 = v1462;
      goto LABEL_2062;
    }

    v1199 = *(v1451 + GNSS_Id_To_Num_Prn_Idx(*v1136));
    if (v1199 < 0 || (v1200 = v1445 + 48 * v1199, *(v1200 + 4) != 1))
    {
      if (v1139 - 120 >= 0x27)
      {
        v1203 = (-*(v1446 + 24) * 1.57542);
      }

      else
      {
        v1203 = -9999;
      }

      goto LABEL_2061;
    }

    v1201 = v1136[1];
    v1202 = v1462;
    if (v1201 > 0xF || ((1 << v1201) & 0xDD77) == 0)
    {
      v1239 = *(v1200 + 22);
      v1240 = 115;
LABEL_2150:
      v1203 = v1239 * v1240 / 154;
      goto LABEL_2062;
    }

    if (((1 << v1201) & 0xBBBF) == 0)
    {
      v1239 = *(v1200 + 22);
      v1240 = 118;
      goto LABEL_2150;
    }

    v1203 = *(v1200 + 22);
LABEL_2062:
    sprintf_6d(v1122, v1203);
    v1205 = (*v1122)++;
    *v1205 = 32;
    v1206 = *v1122;
    if (*v1122 >= v1122[3])
    {
      v1206 = v1122[2];
      *v1122 = v1206;
    }

    if (*v1136)
    {
      v1207 = *v1447 - *(v1123 + 576 + 4 * v1135);
      if (v1207 >= -999)
      {
        v1211 = v1207 / 1000;
        if (v1211 >= 9)
        {
          v1208 = 9;
        }

        else
        {
          v1208 = v1211;
        }
      }

      else
      {
        v1208 = 0;
      }

      sprintf_2d(v1122, v1208);
    }

    else
    {
      v1209 = 0;
      v1210 = 32;
      do
      {
        *v1122 = v1206 + 1;
        *v1206 = v1210;
        v1206 = *v1122;
        if (*v1122 >= v1122[3])
        {
          v1206 = v1122[2];
          *v1122 = v1206;
        }

        v1210 = aX[++v1209];
      }

      while (v1209 != 2);
    }

    v1212 = 0;
    if (v1139)
    {
      LODWORD(v1213) = 0;
      if ((v1202 & 0x80000000) == 0)
      {
        if ((*(v1451 + v1202) & 0x8000000000000000) != 0)
        {
          v1212 = (-*(v1446 + 24) * 1.57542) / 10;
          LODWORD(v1213) = (5381 * *(v1446 + 4)) >> 10;
        }

        else
        {
          v1214 = v1445 + 48 * *(v1451 + v1202);
          v1212 = *(v1214 + 26);
          v1215 = v1136[1];
          if (v1215 <= 0xF && ((1 << v1215) & 0xDD77) != 0)
          {
            if (((1 << v1215) & 0xBBBF) != 0)
            {
              LODWORD(v1213) = *(v1214 + 18);
            }

            else
            {
              v1213 = (27889399 * (118 * *(v1214 + 18))) >> 32;
            }
          }

          else
          {
            v1213 = (27889399 * (115 * *(v1214 + 18))) >> 32;
          }
        }
      }
    }

    else
    {
      LODWORD(v1213) = 0;
    }

    sprintf_5d(v1122, v1212);
    sprintf_6d(v1122, v1213);
    if (!Is_Legal(*v1136) || (v1202 & 0x80000000) != 0)
    {
      v1216 = *v1122;
      v1217 = 32;
      v1218 = 1u;
      do
      {
        *v1122 = v1216 + 1;
        *v1216 = v1217;
        v1216 = *v1122;
        if (*v1122 >= v1122[3])
        {
          v1216 = v1122[2];
          *v1122 = v1216;
        }

        v1217 = a00_0[v1218++];
      }

      while (v1218 != 15);
    }

    else
    {
      sprintf_8d(v1122, *(v1443 + 4 * v1135));
      sprintf_6d(v1122, *(v1443 + 512 + 2 * v1135));
    }

    if ((*(v1464 + v1135) & 1) != 0 || (v1460[v1135] - 1) < 0x1E || (*(v1441 + v1135) & 1) != 0 || (v1439[v1135] - 1) < 0x1E || (*(v1468 + v1135) & 1) != 0 || (v1461[v1135] - 1) <= 0x1D)
    {
      sprintf_sgR8(v1122, *&v1447[2 * v1135 + 4906]);
      v1219 = sqrt(*&v1447[2 * v1135 + 4362]);
      if (v1219 <= 99999.0)
      {
        if (v1219 <= 999.9)
        {
          v1224 = v1219 * 10.0;
          if (v1224 <= 0.0)
          {
            v1225 = -0.5;
          }

          else
          {
            v1225 = 0.5;
          }

          v1226 = v1224 + v1225;
          if (v1226 <= 2147483650.0)
          {
            if (v1226 >= -2147483650.0)
            {
              v1227 = v1226;
            }

            else
            {
              v1227 = 0x80000000;
            }
          }

          else
          {
            v1227 = 0x7FFFFFFF;
          }

          sprintf_5f(v1122, v1227, 2);
        }

        else
        {
          v1223 = v1219 + 0.5;
          if (v1223 >= 2147483650.0)
          {
            v1223 = 2147483650.0;
          }

          sprintf_6d(v1122, v1223);
        }
      }

      else
      {
        v1220 = *v1122;
        v1221 = 32;
        v1222 = 1u;
        do
        {
          *v1122 = v1220 + 1;
          *v1220 = v1221;
          v1220 = *v1122;
          if (*v1122 >= v1122[3])
          {
            v1220 = v1122[2];
            *v1122 = v1220;
          }

          v1221 = a99999[v1222++];
        }

        while (v1222 != 7);
      }

      if ((*(v1468 + v1135) & 1) != 0 || (v1461[v1135] - 1) <= 0x1D)
      {
        sprintf_sgR8(v1122, *&v1447[2 * v1135 + 12358]);
        v1228 = fmin(sqrt(*&v1447[2 * v1135 + 11814]), 9.89999962) * 1000.0;
        if (v1228 <= 0.0)
        {
          v1229 = -0.5;
        }

        else
        {
          v1229 = 0.5;
        }

        v1230 = v1228 + v1229;
        if (v1230 <= 2147483650.0)
        {
          if (v1230 >= -2147483650.0)
          {
            v1231 = v1230;
          }

          else
          {
            v1231 = 0x80000000;
          }
        }

        else
        {
          v1231 = 0x7FFFFFFF;
        }

        v1235 = v1122;
        v1236 = 4;
      }

      else
      {
        sprintf_sgR8(v1122, *&v1447[2 * v1135 + 8632]);
        v1232 = fmin(sqrt(*&v1447[2 * v1135 + 8088]), 99.9000015) * 100.0;
        if (v1232 <= 0.0)
        {
          v1233 = -0.5;
        }

        else
        {
          v1233 = 0.5;
        }

        v1234 = v1232 + v1233;
        if (v1234 <= 2147483650.0)
        {
          if (v1234 >= -2147483650.0)
          {
            v1231 = v1234;
          }

          else
          {
            v1231 = 0x80000000;
          }
        }

        else
        {
          v1231 = 0x7FFFFFFF;
        }

        v1235 = v1122;
        v1236 = 3;
      }

      sprintf_5f(v1235, v1231, v1236);
      sprintf_4d(v1122, *(v1463 + v1135) - *(v1447 + v1135 + 1882));
      v1237 = (*v1122)++;
      *v1237 = 32;
      if (*v1122 >= v1122[3])
      {
        *v1122 = v1122[2];
      }

      sprintf_sgR8(v1122, *&v1447[2 * v1135 + 3018]);
      sprintf_sgR8(v1122, *(v1443 + 3168 + 8 * v1135));
      sprintf_sgR8(v1122, *(v1443 + 4192 + 8 * v1135));
      sprintf_3d(v1122, *(v1450 + v1135));
      sprintf_sgR8(v1122, sqrt(*(v1449 + 8 * v1135)));
    }

    v1238 = (*v1122)++;
    *v1238 = 10;
    if (*v1122 >= v1122[3])
    {
      *v1122 = v1122[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1122);
    v1133 = v1126 + 1640;
    v1134 = v1458;
LABEL_2143:
    ++v1132;
  }

  while (v1132 != 128);
  v1241 = 0;
  v1242 = a1[36];
  v1243 = a1[5];
  v1244 = a1[10];
  v1245 = a1[8];
  v1246 = a1[17];
  v1247 = a1[22];
  v1248 = *v1242;
  v1249 = 84;
  do
  {
    *v1242 = v1248 + 1;
    *v1248 = v1249;
    v1248 = *v1242;
    if (*v1242 >= v1242[3])
    {
      v1248 = v1242[2];
      *v1242 = v1248;
    }

    v1249 = aTheEnd[++v1241];
  }

  while (v1241 != 8);
  v1250 = &ch_Pos_Confid[5 * *(v1244 + 12) + 1];
  v1251 = 32;
  do
  {
    *v1242 = v1248 + 1;
    *v1248 = v1251;
    v1248 = *v1242;
    if (*v1242 >= v1242[3])
    {
      v1248 = v1242[2];
      *v1242 = v1248;
    }

    v1252 = *v1250++;
    v1251 = v1252;
  }

  while (v1252);
  sprintf_sp1d(v1242, *(v1246 + 243));
  sprintf_sp1d(v1242, *(v1247 + 1876));
  sprintf_sp1d(v1242, *v1245);
  sprintf_sp1d(v1242, *(v1246 + 242));
  v1253 = 0;
  v1254 = *v1242;
  v1255 = 32;
  do
  {
    *v1242 = v1254 + 1;
    *v1254 = v1255;
    v1254 = *v1242;
    if (*v1242 >= v1242[3])
    {
      v1254 = v1242[2];
      *v1242 = v1254;
    }

    v1255 = aVis[++v1253];
  }

  while (v1253 != 4);
  sprintf_3d(v1242, *(v1243 + 8592));
  if (*(v1243 + 8592))
  {
    v1256 = 0;
    v1257 = v1243 + 6194;
    do
    {
      v1505[0] = 0;
      v1258 = *(v1257 + 2 * v1256);
      if (v1258 < 1)
      {
        v1263 = 0;
        v1264 = *v1242;
        v1265 = 32;
        do
        {
          *v1242 = v1264 + 1;
          *v1264 = v1265;
          v1264 = *v1242;
          if (*v1242 >= v1242[3])
          {
            v1264 = v1242[2];
            *v1242 = v1264;
          }

          v1265 = aX[++v1263];
        }

        while (v1263 != 2);
        v1259 = *(v1257 + 2 * v1256);
      }

      else
      {
        v1259 = LongPrnIdx_To_Prn(v1258 - 1, v1505);
        v1260 = (*v1242)++;
        *v1260 = 32;
        v1261 = *v1242;
        if (*v1242 >= v1242[3])
        {
          v1261 = v1242[2];
        }

        v1262 = ch_CONSTELL_ID[v1505[0]];
        *v1242 = v1261 + 1;
        *v1261 = v1262;
        if (*v1242 >= v1242[3])
        {
          *v1242 = v1242[2];
        }
      }

      if (v1259 >= 0)
      {
        v1266 = v1259;
      }

      else
      {
        v1266 = -v1259;
      }

      sprintf1da(v1242, v1266, v1474, 0, v1259 >> 31);
      ++v1256;
    }

    while (v1256 < *(v1243 + 8592));
  }

  v1267 = *v1242;
  for (i8 = 3; i8 > 1; --i8)
  {
    *v1242 = v1267 + 1;
    *v1267 = 32;
    v1267 = *v1242;
    if (*v1242 >= v1242[3])
    {
      v1267 = v1242[2];
      *v1242 = v1267;
    }
  }

  sprintf_sp1d(v1242, *(v1246 + 15408));
  sprintf_sp1d(v1242, *(v1246 + 15409));
  sprintf_sgR8(v1242, *(v1247 + 6808));
  sprintf_sp1d(v1242, *(v1247 + 6771));
  sprintf_sp1d(v1242, *(v1247 + 62121));
  sprintf_sgR8(v1242, *(v1247 + 21712));
  sprintf_sp1d(v1242, *(v1247 + 21675));
  sprintf_sp1d(v1242, *(v1247 + 62123));
  sprintf_sgR8(v1242, *(v1247 + 36616));
  sprintf_sp1d(v1242, *(v1247 + 36579));
  sprintf_sp1d(v1242, *(v1247 + 62124));
  sprintf_sp1d(v1242, *(v1246 + 244));
  sprintf_sp1d(v1242, *(v1247 + 62122));
  v1269 = (*v1242)++;
  *v1269 = 10;
  if (*v1242 >= v1242[3])
  {
    *v1242 = v1242[2];
  }

  result = GNSS_Nav_Debug_Flush_Check(v1242);
  if (g_Logging_Cfg < 6)
  {
    goto LABEL_2534;
  }

  v1271 = a1[36];
  v1272 = *(a1[10] + 48);
  v1273 = -0.5;
  if (v1272 > 0.0)
  {
    v1273 = 0.5;
  }

  v1274 = v1272 + v1273;
  if (v1274 <= 2147483650.0)
  {
    if (v1274 >= -2147483650.0)
    {
      v1275 = v1274 % 86400;
    }

    else
    {
      v1275 = -11648;
    }
  }

  else
  {
    v1275 = 11647;
  }

  v1469 = v1275;
  v1276 = a1[4];
  v1467 = a1[5];
  if (g_Logging_Cfg != 6)
  {
    v1277 = *v1271;
    v1278 = 83;
    v1279 = 1u;
    do
    {
      *v1271 = v1277 + 1;
      *v1277 = v1278;
      v1277 = *v1271;
      if (*v1271 >= v1271[3])
      {
        v1277 = v1271[2];
        *v1271 = v1277;
      }

      v1278 = aSvid[v1279++];
    }

    while (v1279 != 6);
    sprintf_8d(v1271, v1469);
    v1280 = (*v1271)++;
    *v1280 = 32;
    if (*v1271 >= v1271[3])
    {
      *v1271 = v1271[2];
    }

    v1281 = 0;
    while (1)
    {
      if (v1281 <= 91)
      {
        switch(v1281)
        {
          case 0:
            v1282 = "  G ";
            goto LABEL_2216;
          case 32:
            v1282 = "  R ";
LABEL_2216:
            v1283 = *v1282;
            if (*v1282)
            {
              v1284 = *v1271;
              v1285 = (v1282 + 1);
              do
              {
                *v1271 = v1284 + 1;
                *v1284 = v1283;
                v1284 = *v1271;
                if (*v1271 >= v1271[3])
                {
                  v1284 = v1271[2];
                  *v1271 = v1284;
                }

                v1286 = *v1285++;
                v1283 = v1286;
              }

              while (v1286);
            }

            break;
          case 56:
            v1282 = "  E ";
            goto LABEL_2216;
        }
      }

      else if (v1281 > 164)
      {
        if (v1281 == 165)
        {
          v1282 = "  N ";
          goto LABEL_2216;
        }

        if (v1281 == 179)
        {
          v1282 = "  S ";
          goto LABEL_2216;
        }
      }

      else
      {
        if (v1281 == 92)
        {
          v1282 = "  B ";
          goto LABEL_2216;
        }

        if (v1281 == 155)
        {
          v1282 = "  Q ";
          goto LABEL_2216;
        }
      }

      v1287 = Num_Prn_Idx_To_GNSS_Id(v1281);
      sprintf_4d(v1271, v1287);
      if (++v1281 == 218)
      {
        v1288 = (*v1271)++;
        *v1288 = 10;
        if (*v1271 >= v1271[3])
        {
          *v1271 = v1271[2];
        }

        GNSS_Nav_Debug_Flush_Check(v1271);
        break;
      }
    }
  }

  v1289 = *v1271;
  v1290 = 69;
  v1291 = 1u;
  do
  {
    *v1271 = v1289 + 1;
    *v1289 = v1290;
    v1289 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1289 = v1271[2];
      *v1271 = v1289;
    }

    v1290 = aElev[v1291++];
  }

  while (v1291 != 6);
  sprintf_8d(v1271, v1469);
  v1292 = (*v1271)++;
  *v1292 = 32;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  v1293 = 0;
  while (2)
  {
    if (v1293 <= 91)
    {
      switch(v1293)
      {
        case 0:
          v1294 = "  G ";
          goto LABEL_2248;
        case 32:
          v1294 = "  R ";
          goto LABEL_2248;
        case 56:
          v1294 = "  E ";
          goto LABEL_2248;
      }
    }

    else if (v1293 > 164)
    {
      if (v1293 == 165)
      {
        v1294 = "  N ";
        goto LABEL_2248;
      }

      if (v1293 == 179)
      {
        v1294 = "  S ";
        goto LABEL_2248;
      }
    }

    else
    {
      if (v1293 == 92)
      {
        v1294 = "  B ";
        goto LABEL_2248;
      }

      if (v1293 == 155)
      {
        v1294 = "  Q ";
LABEL_2248:
        v1295 = *v1294;
        if (*v1294)
        {
          v1296 = *v1271;
          v1297 = (v1294 + 1);
          do
          {
            *v1271 = v1296 + 1;
            *v1296 = v1295;
            v1296 = *v1271;
            if (*v1271 >= v1271[3])
            {
              v1296 = v1271[2];
              *v1271 = v1296;
            }

            v1298 = *v1297++;
            v1295 = v1298;
          }

          while (v1298);
        }
      }
    }

    sprintf_4d(v1271, *(v1276 + v1293++));
    if (v1293 != 218)
    {
      continue;
    }

    break;
  }

  v1299 = (*v1271)++;
  *v1299 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1271);
  v1300 = *v1271;
  v1301 = 65;
  v1302 = 1u;
  do
  {
    *v1271 = v1300 + 1;
    *v1300 = v1301;
    v1300 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1300 = v1271[2];
      *v1271 = v1300;
    }

    v1301 = aAzim[v1302++];
  }

  while (v1302 != 6);
  sprintf_8d(v1271, v1469);
  v1303 = (*v1271)++;
  *v1303 = 32;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  v1304 = 0;
  v1305 = v1276 + 218;
  while (2)
  {
    if (v1304 <= 91)
    {
      switch(v1304)
      {
        case 0:
          v1306 = "  G ";
          goto LABEL_2279;
        case 32:
          v1306 = "  R ";
          goto LABEL_2279;
        case 56:
          v1306 = "  E ";
          goto LABEL_2279;
      }
    }

    else if (v1304 > 164)
    {
      if (v1304 == 165)
      {
        v1306 = "  N ";
        goto LABEL_2279;
      }

      if (v1304 == 179)
      {
        v1306 = "  S ";
        goto LABEL_2279;
      }
    }

    else
    {
      if (v1304 == 92)
      {
        v1306 = "  B ";
        goto LABEL_2279;
      }

      if (v1304 == 155)
      {
        v1306 = "  Q ";
LABEL_2279:
        v1307 = *v1306;
        if (*v1306)
        {
          v1308 = *v1271;
          v1309 = (v1306 + 1);
          do
          {
            *v1271 = v1308 + 1;
            *v1308 = v1307;
            v1308 = *v1271;
            if (*v1271 >= v1271[3])
            {
              v1308 = v1271[2];
              *v1271 = v1308;
            }

            v1310 = *v1309++;
            v1307 = v1310;
          }

          while (v1310);
        }
      }
    }

    sprintf_4d(v1271, *(v1305 + 2 * v1304++));
    if (v1304 != 218)
    {
      continue;
    }

    break;
  }

  v1311 = (*v1271)++;
  *v1311 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1271);
  v1312 = *v1271;
  v1313 = 83;
  v1314 = 1u;
  do
  {
    *v1271 = v1312 + 1;
    *v1312 = v1313;
    v1312 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1312 = v1271[2];
      *v1271 = v1312;
    }

    v1313 = aSidx[v1314++];
  }

  while (v1314 != 6);
  sprintf_8d(v1271, v1469);
  v1315 = (*v1271)++;
  *v1315 = 32;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  v1316 = 0;
  while (2)
  {
    if (v1316 <= 91)
    {
      switch(v1316)
      {
        case 0:
          v1317 = "  G ";
          goto LABEL_2310;
        case 32:
          v1317 = "  R ";
          goto LABEL_2310;
        case 56:
          v1317 = "  E ";
          goto LABEL_2310;
      }
    }

    else if (v1316 > 164)
    {
      if (v1316 == 165)
      {
        v1317 = "  N ";
        goto LABEL_2310;
      }

      if (v1316 == 179)
      {
        v1317 = "  S ";
        goto LABEL_2310;
      }
    }

    else
    {
      if (v1316 == 92)
      {
        v1317 = "  B ";
        goto LABEL_2310;
      }

      if (v1316 == 155)
      {
        v1317 = "  Q ";
LABEL_2310:
        v1318 = *v1317;
        if (*v1317)
        {
          v1319 = *v1271;
          v1320 = (v1317 + 1);
          do
          {
            *v1271 = v1319 + 1;
            *v1319 = v1318;
            v1319 = *v1271;
            if (*v1271 >= v1271[3])
            {
              v1319 = v1271[2];
              *v1271 = v1319;
            }

            v1321 = *v1320++;
            v1318 = v1321;
          }

          while (v1321);
        }
      }
    }

    sprintf_4d(v1271, *(v1467 + 5976 + v1316++));
    if (v1316 != 218)
    {
      continue;
    }

    break;
  }

  v1322 = (*v1271)++;
  *v1322 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1271);
  if (g_Logging_Cfg > 6)
  {
    v1323 = a1[7];
    v1465 = a1[9];
    v1324 = 72;
    v1325 = 1u;
    v1326 = *v1271;
    do
    {
      *v1271 = v1326 + 1;
      *v1326 = v1324;
      v1326 = *v1271;
      if (*v1271 >= v1271[3])
      {
        v1326 = v1271[2];
        *v1271 = v1326;
      }

      v1324 = aHL1[v1325++];
    }

    while (v1325 != 6);
    sprintf_8d(v1271, v1469);
    v1327 = (*v1271)++;
    *v1327 = 32;
    if (*v1271 >= v1271[3])
    {
      *v1271 = v1271[2];
    }

    v1328 = 0;
    while (2)
    {
      if (v1328 <= 91)
      {
        switch(v1328)
        {
          case 0:
            v1329 = "  G ";
            goto LABEL_2342;
          case 32:
            v1329 = "  R ";
            goto LABEL_2342;
          case 56:
            v1329 = "  E ";
            goto LABEL_2342;
        }
      }

      else if (v1328 > 164)
      {
        if (v1328 == 165)
        {
          v1329 = "  N ";
          goto LABEL_2342;
        }

        if (v1328 == 179)
        {
          v1329 = "  S ";
          goto LABEL_2342;
        }
      }

      else
      {
        if (v1328 == 92)
        {
          v1329 = "  B ";
          goto LABEL_2342;
        }

        if (v1328 == 155)
        {
          v1329 = "  Q ";
LABEL_2342:
          v1330 = *v1329;
          if (*v1329)
          {
            v1331 = *v1271;
            v1332 = (v1329 + 1);
            do
            {
              *v1271 = v1331 + 1;
              *v1331 = v1330;
              v1331 = *v1271;
              if (*v1271 >= v1271[3])
              {
                v1331 = v1271[2];
                *v1271 = v1331;
              }

              v1333 = *v1332++;
              v1330 = v1333;
            }

            while (v1333);
          }
        }
      }

      sprintf_4d(v1271, *(v1323 + 50616 + v1328++));
      if (v1328 != 218)
      {
        continue;
      }

      break;
    }

    v1334 = (*v1271)++;
    *v1334 = 10;
    if (*v1271 >= v1271[3])
    {
      *v1271 = v1271[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1271);
    v1335 = *v1271;
    v1336 = 72;
    v1337 = 1u;
    do
    {
      *v1271 = v1335 + 1;
      *v1335 = v1336;
      v1335 = *v1271;
      if (*v1271 >= v1271[3])
      {
        v1335 = v1271[2];
        *v1271 = v1335;
      }

      v1336 = aHL5[v1337++];
    }

    while (v1337 != 6);
    sprintf_8d(v1271, v1469);
    v1338 = (*v1271)++;
    *v1338 = 32;
    if (*v1271 >= v1271[3])
    {
      *v1271 = v1271[2];
    }

    v1339 = 0;
    while (2)
    {
      if (v1339 <= 91)
      {
        switch(v1339)
        {
          case 0:
            v1340 = "  G ";
            goto LABEL_2373;
          case 32:
            v1340 = "  R ";
            goto LABEL_2373;
          case 56:
            v1340 = "  E ";
            goto LABEL_2373;
        }
      }

      else if (v1339 > 164)
      {
        if (v1339 == 165)
        {
          v1340 = "  N ";
          goto LABEL_2373;
        }

        if (v1339 == 179)
        {
          v1340 = "  S ";
          goto LABEL_2373;
        }
      }

      else
      {
        if (v1339 == 92)
        {
          v1340 = "  B ";
          goto LABEL_2373;
        }

        if (v1339 == 155)
        {
          v1340 = "  Q ";
LABEL_2373:
          v1341 = *v1340;
          if (*v1340)
          {
            v1342 = *v1271;
            v1343 = (v1340 + 1);
            do
            {
              *v1271 = v1342 + 1;
              *v1342 = v1341;
              v1342 = *v1271;
              if (*v1271 >= v1271[3])
              {
                v1342 = v1271[2];
                *v1271 = v1342;
              }

              v1344 = *v1343++;
              v1341 = v1344;
            }

            while (v1344);
          }
        }
      }

      sprintf_4d(v1271, *(v1323 + 50834 + v1339++));
      if (v1339 == 218)
      {
        v1345 = (*v1271)++;
        *v1345 = 10;
        if (*v1271 >= v1271[3])
        {
          *v1271 = v1271[2];
        }

        GNSS_Nav_Debug_Flush_Check(v1271);
        v1346 = *v1271;
        v1347 = 73;
        v1348 = 1u;
        do
        {
          *v1271 = v1346 + 1;
          *v1346 = v1347;
          v1346 = *v1271;
          if (*v1271 >= v1271[3])
          {
            v1346 = v1271[2];
            *v1271 = v1346;
          }

          v1347 = aIL1[v1348++];
        }

        while (v1348 != 6);
        sprintf_8d(v1271, v1469);
        v1349 = (*v1271)++;
        *v1349 = 32;
        if (*v1271 >= v1271[3])
        {
          *v1271 = v1271[2];
        }

        v1350 = 0;
        while (2)
        {
          if (v1350 <= 91)
          {
            switch(v1350)
            {
              case 0:
                v1351 = "  G ";
                goto LABEL_2404;
              case 32:
                v1351 = "  R ";
                goto LABEL_2404;
              case 56:
                v1351 = "  E ";
                goto LABEL_2404;
            }
          }

          else if (v1350 > 164)
          {
            if (v1350 == 165)
            {
              v1351 = "  N ";
              goto LABEL_2404;
            }

            if (v1350 == 179)
            {
              v1351 = "  S ";
              goto LABEL_2404;
            }
          }

          else
          {
            if (v1350 == 92)
            {
              v1351 = "  B ";
              goto LABEL_2404;
            }

            if (v1350 == 155)
            {
              v1351 = "  Q ";
LABEL_2404:
              v1352 = *v1351;
              if (*v1351)
              {
                v1353 = *v1271;
                v1354 = (v1351 + 1);
                do
                {
                  *v1271 = v1353 + 1;
                  *v1353 = v1352;
                  v1353 = *v1271;
                  if (*v1271 >= v1271[3])
                  {
                    v1353 = v1271[2];
                    *v1271 = v1353;
                  }

                  v1355 = *v1354++;
                  v1352 = v1355;
                }

                while (v1355);
              }
            }
          }

          sprintf_4d(v1271, *(v1465 + 265 + v1350++));
          if (v1350 != 218)
          {
            continue;
          }

          break;
        }

        v1356 = (*v1271)++;
        *v1356 = 10;
        if (*v1271 >= v1271[3])
        {
          *v1271 = v1271[2];
        }

        GNSS_Nav_Debug_Flush_Check(v1271);
        v1357 = *v1271;
        v1358 = 73;
        v1359 = 1u;
        do
        {
          *v1271 = v1357 + 1;
          *v1357 = v1358;
          v1357 = *v1271;
          if (*v1271 >= v1271[3])
          {
            v1357 = v1271[2];
            *v1271 = v1357;
          }

          v1358 = aIL5[v1359++];
        }

        while (v1359 != 6);
        sprintf_8d(v1271, v1469);
        v1360 = (*v1271)++;
        *v1360 = 32;
        if (*v1271 >= v1271[3])
        {
          *v1271 = v1271[2];
        }

        v1361 = 0;
        while (2)
        {
          if (v1361 <= 91)
          {
            switch(v1361)
            {
              case 0:
                v1362 = "  G ";
                goto LABEL_2435;
              case 32:
                v1362 = "  R ";
                goto LABEL_2435;
              case 56:
                v1362 = "  E ";
                goto LABEL_2435;
            }
          }

          else if (v1361 > 164)
          {
            if (v1361 == 165)
            {
              v1362 = "  N ";
              goto LABEL_2435;
            }

            if (v1361 == 179)
            {
              v1362 = "  S ";
              goto LABEL_2435;
            }
          }

          else
          {
            if (v1361 == 92)
            {
              v1362 = "  B ";
              goto LABEL_2435;
            }

            if (v1361 == 155)
            {
              v1362 = "  Q ";
LABEL_2435:
              v1363 = *v1362;
              if (*v1362)
              {
                v1364 = *v1271;
                v1365 = (v1362 + 1);
                do
                {
                  *v1271 = v1364 + 1;
                  *v1364 = v1363;
                  v1364 = *v1271;
                  if (*v1271 >= v1271[3])
                  {
                    v1364 = v1271[2];
                    *v1271 = v1364;
                  }

                  v1366 = *v1365++;
                  v1363 = v1366;
                }

                while (v1366);
              }
            }
          }

          sprintf_4d(v1271, *(v1465 + 544 + v1361++));
          if (v1361 == 218)
          {
            v1367 = (*v1271)++;
            *v1367 = 10;
            if (*v1271 >= v1271[3])
            {
              *v1271 = v1271[2];
            }

            GNSS_Nav_Debug_Flush_Check(v1271);
            goto LABEL_2444;
          }

          continue;
        }
      }

      continue;
    }
  }

LABEL_2444:
  v1368 = *v1271;
  v1369 = 75;
  v1370 = 1u;
  do
  {
    *v1271 = v1368 + 1;
    *v1368 = v1369;
    v1368 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1368 = v1271[2];
      *v1271 = v1368;
    }

    v1369 = aKvis[v1370++];
  }

  while (v1370 != 6);
  sprintf_8d(v1271, v1469);
  v1371 = *v1271;
  v1372 = 32;
  v1373 = 1u;
  do
  {
    *v1271 = v1371 + 1;
    *v1371 = v1372;
    v1371 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1371 = v1271[2];
      *v1271 = v1371;
    }

    v1372 = asc_299059803[v1373++];
  }

  while (v1373 != 6);
  v1374 = 0;
  v1375 = *(v1467 + 8592);
  v1376 = v1467 + 6194;
  if (v1375 >= 0xD2)
  {
    v1377 = 218;
  }

  else
  {
    v1377 = v1375 + 8;
  }

  do
  {
    if (v1374 == *(v1467 + 8592))
    {
      v1378 = 0;
      v1379 = *v1271;
      v1380 = 32;
      do
      {
        *v1271 = v1379 + 1;
        *v1379 = v1380;
        v1379 = *v1271;
        if (*v1271 >= v1271[3])
        {
          v1379 = v1271[2];
          *v1271 = v1379;
        }

        v1380 = asc_299059809[++v1378];
      }

      while (v1378 != 4);
    }

    sprintf_4d(v1271, *(v1376 + 2 * v1374++));
  }

  while (v1374 != v1377);
  v1381 = (*v1271)++;
  *v1381 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1271);
  v1382 = *v1271;
  v1383 = 77;
  v1384 = 1u;
  do
  {
    *v1271 = v1382 + 1;
    *v1382 = v1383;
    v1382 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1382 = v1271[2];
      *v1271 = v1382;
    }

    v1383 = aMvis[v1384++];
  }

  while (v1384 != 6);
  sprintf_8d(v1271, v1469);
  v1385 = *v1271;
  v1386 = 32;
  v1387 = 1u;
  do
  {
    *v1271 = v1385 + 1;
    *v1385 = v1386;
    v1385 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1385 = v1271[2];
      *v1271 = v1385;
    }

    v1386 = asc_299059803[v1387++];
  }

  while (v1387 != 6);
  v1388 = 0;
  v1389 = *(v1467 + 8593);
  if (v1389 >= 0xD2)
  {
    v1390 = 218;
  }

  else
  {
    v1390 = v1389 + 8;
  }

  do
  {
    if (v1388 == *(v1467 + 8593))
    {
      v1391 = 0;
      v1392 = *v1271;
      v1393 = 32;
      do
      {
        *v1271 = v1392 + 1;
        *v1392 = v1393;
        v1392 = *v1271;
        if (*v1271 >= v1271[3])
        {
          v1392 = v1271[2];
          *v1271 = v1392;
        }

        v1393 = asc_299059809[++v1391];
      }

      while (v1391 != 4);
    }

    sprintf_4d(v1271, *(v1467 + 6630 + 2 * v1388++));
  }

  while (v1388 != v1390);
  v1394 = (*v1271)++;
  *v1394 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1271);
  v1395 = *v1271;
  v1396 = 65;
  v1397 = 1u;
  do
  {
    *v1271 = v1395 + 1;
    *v1395 = v1396;
    v1395 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1395 = v1271[2];
      *v1271 = v1395;
    }

    v1396 = aAaok[v1397++];
  }

  while (v1397 != 6);
  sprintf_8d(v1271, v1469);
  v1398 = *v1271;
  v1399 = 32;
  v1400 = 1u;
  do
  {
    *v1271 = v1398 + 1;
    *v1398 = v1399;
    v1398 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1398 = v1271[2];
      *v1271 = v1398;
    }

    v1399 = asc_299059803[v1400++];
  }

  while (v1400 != 6);
  v1401 = 0;
  v1402 = *(v1467 + 8596);
  if (v1402 >= 0x73)
  {
    v1403 = 123;
  }

  else
  {
    v1403 = v1402 + 8;
  }

  do
  {
    if (v1401 == *(v1467 + 8596))
    {
      v1404 = 0;
      v1405 = *v1271;
      v1406 = 32;
      do
      {
        *v1271 = v1405 + 1;
        *v1405 = v1406;
        v1405 = *v1271;
        if (*v1271 >= v1271[3])
        {
          v1405 = v1271[2];
          *v1271 = v1405;
        }

        v1406 = asc_299059809[++v1404];
      }

      while (v1404 != 4);
    }

    sprintf_4d(v1271, *(v1467 + 72 + 48 * v1401++ + 4));
  }

  while (v1401 != v1403);
  v1407 = (*v1271)++;
  *v1407 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1271);
  v1408 = *v1271;
  v1409 = 86;
  v1410 = 1u;
  do
  {
    *v1271 = v1408 + 1;
    *v1408 = v1409;
    v1408 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1408 = v1271[2];
      *v1271 = v1408;
    }

    v1409 = aViz[v1410++];
  }

  while (v1410 != 6);
  sprintf_8d(v1271, v1469);
  sprintf_5d(v1271, *(v1467 + 8592));
  sprintf_4d(v1271, *(v1467 + 8593));
  sprintf_4d(v1271, *(v1467 + 8594));
  sprintf_4d(v1271, *(v1467 + 8595));
  sprintf_4d(v1271, *(v1467 + 8596));
  if (*(v1467 + 8592))
  {
    v1411 = 0;
    do
    {
      v1505[0] = 0;
      v1412 = *(v1376 + 2 * v1411);
      if (v1412 < 1)
      {
        v1417 = 0;
        v1418 = *v1271;
        v1419 = 32;
        do
        {
          *v1271 = v1418 + 1;
          *v1418 = v1419;
          v1418 = *v1271;
          if (*v1271 >= v1271[3])
          {
            v1418 = v1271[2];
            *v1271 = v1418;
          }

          v1419 = aX[++v1417];
        }

        while (v1417 != 2);
        v1413 = *(v1376 + 2 * v1411);
      }

      else
      {
        v1413 = LongPrnIdx_To_Prn(v1412 - 1, v1505);
        v1414 = (*v1271)++;
        *v1414 = 32;
        v1415 = *v1271;
        if (*v1271 >= v1271[3])
        {
          v1415 = v1271[2];
        }

        v1416 = ch_CONSTELL_ID[v1505[0]];
        *v1271 = v1415 + 1;
        *v1415 = v1416;
        if (*v1271 >= v1271[3])
        {
          *v1271 = v1271[2];
        }
      }

      if (v1413 >= 0)
      {
        v1420 = v1413;
      }

      else
      {
        v1420 = -v1413;
      }

      sprintf1da(v1271, v1420, v1474, 0, v1413 >> 31);
      ++v1411;
    }

    while (v1411 < *(v1467 + 8592));
  }

  v1421 = 0;
  v1422 = *v1271;
  v1423 = 32;
  do
  {
    *v1271 = v1422 + 1;
    *v1422 = v1423;
    v1422 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1422 = v1271[2];
      *v1271 = v1422;
    }

    v1423 = aGfvz[++v1421];
  }

  while (v1421 != 8);
  sprintf_4d(v1271, *(v1467 + 8671));
  sprintf_3d(v1271, *(v1467 + 8670));
  v1424 = 0;
  v1425 = *v1271;
  v1426 = 32;
  do
  {
    *v1271 = v1425 + 1;
    *v1425 = v1426;
    v1425 = *v1271;
    if (*v1271 >= v1271[3])
    {
      v1425 = v1271[2];
      *v1271 = v1425;
    }

    v1426 = asc_299059399[++v1424];
  }

  while (v1424 != 2);
  for (i9 = 0; i9 != 14; ++i9)
  {
    sprintf_3d(v1271, *(v1467 + 8656 + i9));
  }

  v1428 = (*v1271)++;
  *v1428 = 10;
  if (*v1271 >= v1271[3])
  {
    *v1271 = v1271[2];
  }

  result = GNSS_Nav_Debug_Flush_Check(v1271);
LABEL_2534:
  v1429 = *MEMORY[0x29EDCA608];
  return result;
}