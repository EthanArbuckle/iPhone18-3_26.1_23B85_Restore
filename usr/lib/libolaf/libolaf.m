size_t gnssOsa_readNv(int a1, void *a2, size_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_readNv");
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 5, 1);
  }

  if (a2 && gp_NvStorage)
  {
    (*(*gp_NvStorage + 64))(&__p);
    if (v22 - __p >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v22 - __p;
    }

    memcpy(a2, __p, v8);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NvID,%d,BytesRead,%zu,BytesReq,%zu\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "gnssOsa_readNv", a1, v22 - __p, a3);
      LbsOsaTrace_WriteLog(0xEu, __str, v10, 5, 1);
    }

    if (__p == v22 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No NV data,%d\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 87, "gnssOsa_readNv", 769, a1);
      LbsOsaTrace_WriteLog(0xEu, __str, v12, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 68, "gnssOsa_readNv");
      LbsOsaTrace_WriteLog(0xEu, __str, v14, 5, 1);
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 69, "gnssOsa_readNv", 770);
      LbsOsaTrace_WriteLog(0xEu, __str, v16, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 68, "gnssOsa_readNv");
      LbsOsaTrace_WriteLog(0xEu, __str, v18, 5, 1);
    }

    v8 = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2994D7A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_storeBufferToNv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_storeBufferToNv");
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 5, 1);
  }

  if (a2 && gp_NvStorage)
  {
    *__str = 0;
    v16 = 0;
    v17 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__str, a2, a2 + a3, a3);
    v8 = (*(*gp_NvStorage + 32))(gp_NvStorage, a1, __str);
    if (*__str)
    {
      v16 = *__str;
      operator delete(*__str);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: invalid Argument\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_storeBufferToNv");
      LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 68, "gnssOsa_storeBufferToNv");
      LbsOsaTrace_WriteLog(0xEu, __str, v12, 5, 1);
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2994D7CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_getNvSize(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 68, "gnssOsa_getNvSize");
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 5, 1);
  }

  if (a2)
  {
    if (gp_NvStorage)
    {
      (*(*gp_NvStorage + 64))(&__p);
      *a2 = v18 - __p;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NvSize,%zu\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 68, "gnssOsa_getNvSize", *a2);
        LbsOsaTrace_WriteLog(0xEu, __str, v6, 5, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "gnssOsa_getNvSize");
        LbsOsaTrace_WriteLog(0xEu, __str, v8, 5, 1);
      }

      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      result = 1;
      goto LABEL_20;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NvStorage\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "gnssOsa_getNvSize", 770);
      LbsOsaTrace_WriteLog(0xEu, __str, v13, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0);
    if (result)
    {
LABEL_19:
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 68, "gnssOsa_getNvSize");
      LbsOsaTrace_WriteLog(0xEu, __str, v15, 5, 1);
      result = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NvSize\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "gnssOsa_getNvSize", 513);
      LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0);
    if (result)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2994D814C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_clearNV(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NvID,%d\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "gnssOsa_clearNV", a1);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 4, 1);
  }

  result = (*(*gp_NvStorage + 80))(gp_NvStorage, a1);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_flushNv(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_flushNv");
    LbsOsaTrace_WriteLog(0xEu, __str, v1, 5, 1);
  }

  (*(*gp_NvStorage + 56))(gp_NvStorage);
  result = LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 68, "gnssOsa_flushNv");
    result = LbsOsaTrace_WriteLog(0xEu, __str, v4, 5, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
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

void sub_2994D8488(_Unwind_Exception *exception_object)
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
  __cxa_throw(exception, off_29EF26A18, MEMORY[0x29EDC9348]);
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
  v44 = *MEMORY[0x29EDCA608];
  if (*(a2 + 43))
  {
    *(a2 + 60) = 1;
    goto LABEL_64;
  }

  v7 = result;
  v8 = a4 + 24576;
  v9 = (a3 + 7136);
  v10 = (a3 + 6752);
  memmove((a3 + 6800), (a3 + 6752), 0x150uLL);
  v11 = *(a3 + 7152);
  *(a3 + 7140) = *(a3 + 7136);
  v12 = *(a3 + 7160);
  *(a3 + 7156) = v11;
  *(a3 + 7164) = v12;
  v13 = *(a4 + 4);
  *(a3 + 7136) = v13;
  *(a3 + 6784) = 0u;
  *(a3 + 6768) = 0u;
  *(a3 + 6752) = 0u;
  v14 = 7;
  v15 = 8750;
  do
  {
    v16 = v9[v14];
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
    v19 = 0;
    v10[24] = 0u;
    v10[25] = 0u;
    v10[22] = 0u;
    v10[23] = 0u;
    v10[20] = 0u;
    v10[21] = 0u;
    v10[18] = 0u;
    v10[19] = 0u;
    v10[16] = 0u;
    v10[17] = 0u;
    v10[14] = 0u;
    v10[15] = 0u;
    v10[12] = 0u;
    v10[13] = 0u;
    v10[10] = 0u;
    v10[11] = 0u;
    v10[8] = 0u;
    v10[9] = 0u;
    v10[6] = 0u;
    v10[7] = 0u;
    v10[4] = 0u;
    v10[5] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    *v9 = *(a4 + 4);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v7 + 412;
  v26 = v7 + 844;
  v27 = v7 + 604;
  v28 = v7 + 316;
  result = a3 + 48 * v19 + 6752;
  do
  {
    if (*(v25 + 4 * v20) >= 10 && *(v26 + 2 * v20) >= 0x65u)
    {
      v29 = *(v27 + v20);
      *(v10 + v20) = v29;
      v23 += v29;
      ++v22;
      if (v19 < 1)
      {
        v37 = v29;
      }

      else
      {
        v30 = result;
        v31 = v19 + 1;
        v32 = v29;
        do
        {
          v34 = *v30;
          v30 -= 48;
          v33 = v34;
          v35 = v32;
          if (v34 > v32)
          {
            v35 = v33;
          }

          v36 = v29;
          if (v33 < v29)
          {
            v36 = v33;
          }

          if (v33)
          {
            v23 += v33;
            ++v22;
            v32 = v35;
            LOBYTE(v29) = v36;
          }

          --v31;
        }

        while (v31 > 1);
        v37 = v32;
        v29 = v29;
      }

      v38 = v37 - v29;
      if ((*(v28 + 2 * v20) & 0x300) == 0)
      {
        v38 -= 2;
      }

      if (v38 > v24)
      {
        v24 = v38;
      }

      if (v38 > v21)
      {
        v24 = v21;
        v21 = v38;
      }
    }

    ++v20;
    ++result;
  }

  while (v20 != 48);
  if (v22 < 8)
  {
    v39 = 0;
  }

  else if (v21 + v24 > 8 || v23 / v22 <= *(a3 + 3))
  {
    v39 = 7;
  }

  else
  {
    v39 = 1;
  }

  if (*(p_NA + 319) == 1)
  {
    v40 = *(p_NA + 19388);
    if (v40 > 3)
    {
      if (v40 == 7)
      {
        v41 = 7;
      }

      else
      {
        v41 = 0;
      }

      if (v40 == 6)
      {
        v41 = 6;
      }

      if (v40 == 5)
      {
        v42 = 5;
      }

      else
      {
        v42 = 0;
      }

      if (v40 == 4)
      {
        v42 = 4;
      }

      if (v40 <= 5)
      {
        v41 = v42;
      }

      goto LABEL_62;
    }

    if (v40 > 1)
    {
      if (v40 == 3)
      {
        v41 = 3;
      }

      else
      {
        v41 = 0;
      }

      if (v40 == 2)
      {
        v41 = 2;
      }

      goto LABEL_62;
    }

    if (v40)
    {
      v41 = v40 == 1;
LABEL_62:
      *(a2 + 60) = v41;
      if ((*(v8 + 500) & 1) == 0)
      {
        *(v8 + 492) = 1;
        *(v8 + 500) = 1;
      }

      goto LABEL_64;
    }
  }

  if (v22 >= 8)
  {
    *(a2 + 60) = v39;
  }

LABEL_64:
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

void PERAppendData(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1088);
  v5 = *(a1 + 728);
  if (v5)
  {
    v5(a1, a2);
    v6 = (*(a1 + 880))(a1, a1 + 1104);
    *(a1 + 1088) = v6;
  }

  else
  {
    v6 = *(a1 + 1088);
  }

  if (v6 - v4 >= a2)
  {
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];

    EPErrorHandler(a1, 22);
  }
}

uint64_t PERPutBit(uint64_t result, char a2)
{
  v3 = result;
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(result + 1096);
  if (v4 == *(result + 1080))
  {
    v5 = *(result + 1072);
    v6 = *(result + 1088) - v5;
    v7 = &v4[-v5];
    result = (*(result + 856))(result, 1);
    *(v3 + 1072) = result;
    v4 = &v7[result];
    *(v3 + 1080) = &v7[result + 1];
    *(v3 + 1088) = result + v6;
    *(v3 + 1096) = &v7[result];
  }

  v8 = *(v3 + 1105);
  if (v8 == 7)
  {
    *v4 = a2 << 7;
    v9 = *(v3 + 1105);
  }

  else
  {
    *v4 |= a2 << v8;
    v9 = *(v3 + 1105);
    if (!v9)
    {
      ++*(v3 + 1096);
      v10 = 7;
      goto LABEL_7;
    }
  }

  v10 = v9 - 1;
LABEL_7:
  *(v3 + 1105) = v10;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PERGetBit(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1096);
  if (v2 == *(a1 + 1088))
  {
    PERAppendData(a1, 1uLL);
    v2 = *(a1 + 1096);
  }

  v3 = *v2;
  v4 = *(a1 + 1105);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    *(a1 + 1096) = v2 + 1;
    v5 = 7;
  }

  *(a1 + 1105) = v5;
  v6 = *MEMORY[0x29EDCA608];
  return (v3 >> v4) & 1;
}

uint64_t PERPutBits(uint64_t result, unint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = result;
    v5 = a3 - *(result + 1105) + 7;
    v6 = v5 & 7;
    if (a3 >= 0x21)
    {
      result = CUCFErrorHandler(result, 15);
    }

    v7 = v5 >> 3;
    v8 = *(v4 + 1096);
    if ((v5 & 7) != 0)
    {
      v9 = &v8[v7 + 1];
    }

    else
    {
      v9 = &v8[v7];
    }

    v10 = *(v4 + 1080);
    if (v9 > v10)
    {
      v11 = &v8[(v6 != 0) + v7 - v10];
      v12 = *(v4 + 1072);
      v13 = *(v4 + 1088) - v12;
      v14 = &v8[-v12];
      v15 = v10 - v12;
      result = (*(v4 + 856))(v4, v11);
      *(v4 + 1072) = result;
      *(v4 + 1080) = &v11[v15 + result];
      *(v4 + 1088) = result + v13;
      v8 = &v14[result];
      *(v4 + 1096) = &v14[result];
    }

    if (*(v4 + 1105) == 7)
    {
      *v8 = 0;
    }

    if (v5 >= 8u)
    {
      v18 = (*(v4 + 1096) + v7);
      *(v4 + 1096) = v18;
      if ((v5 & 7) != 0)
      {
        *v18 = a2 << (8 - v6);
        a2 >>= v6;
        v18 = *(v4 + 1096);
      }

      v17 = v18 - 1;
      if (v5 >= 0x10u)
      {
        do
        {
          *v17-- = a2;
          LODWORD(v7) = v7 - 1;
          a2 >>= 8;
        }

        while (v7 > 1u);
      }

      v16 = (0xFFu >> (7 - *(v4 + 1105))) & a2;
    }

    else
    {
      v16 = (0xFFu >> (7 - *(v4 + 1105))) & (a2 << (8 - v6));
      v17 = *(v4 + 1096);
    }

    *v17 |= v16;
    *(v4 + 1105) = v6 ^ 7;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t PERGetBits(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0x21)
    {
      CUCFErrorHandler(a1, 15);
    }

    v4 = *(a1 + 1105);
    v5 = v4 - *(a1 + 1104) + 8 * (*(a1 + 1088) - *(a1 + 1096));
    v6 = v2 >= v5;
    v7 = v2 - v5;
    if (v7 != 0 && v6)
    {
      if ((v7 & 7) != 0)
      {
        v8 = (v7 >> 3) + 1;
      }

      else
      {
        v8 = v7 >> 3;
      }

      PERAppendData(a1, v8);
      LODWORD(v4) = *(a1 + 1105);
    }

    if (v4 == 7)
    {
      result = 0;
    }

    else
    {
      v10 = *(a1 + 1096);
      v11 = (*v10 << (7 - v4));
      if (v4 + 1 >= v2)
      {
        result = v11 >> (8 - v2);
        if (v4 + 1 == v2)
        {
          *(a1 + 1105) = 7;
          *(a1 + 1096) = v10 + 1;
          goto LABEL_25;
        }

        v13 = v4 - v2;
        goto LABEL_24;
      }

      result = v11 >> (7 - v4);
      LOBYTE(v2) = ~v4 + v2;
      *(a1 + 1096) = v10 + 1;
    }

    if (v2 >= 8u)
    {
      v12 = *(a1 + 1096) + 1;
      do
      {
        result = *(v12 - 1) | (result << 8);
        LOBYTE(v2) = v2 - 8;
        *(a1 + 1096) = v12++;
      }

      while (v2 > 7u);
    }

    if (v2)
    {
      *(a1 + 1105) = v2 ^ 7;
      result = (result << v2) | (**(a1 + 1096) >> (8 - v2));
      goto LABEL_25;
    }

    v13 = 7;
LABEL_24:
    *(a1 + 1105) = v13;
    goto LABEL_25;
  }

  result = 0;
LABEL_25:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PERPutByte(uint64_t result, unsigned int a2)
{
  v3 = result;
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(result + 1105);
  v5 = *(result + 1096);
  if (v4 == 7)
  {
    if (v5 == *(result + 1080))
    {
      v6 = *(result + 1072);
      v7 = *(result + 1088) - v6;
      v8 = &v5[-v6];
      result = (*(result + 856))(result, 1);
      *(v3 + 1072) = result;
      v5 = &v8[result];
      *(v3 + 1080) = &v8[result + 1];
      *(v3 + 1088) = result + v7;
      *(v3 + 1096) = &v8[result];
    }

    *v5 = a2;
    ++*(v3 + 1096);
  }

  else
  {
    if (v5 + 1 == *(result + 1080))
    {
      v9 = *(result + 1072);
      v10 = *(result + 1088) - v9;
      v11 = &v5[-v9];
      v12 = &v5[-v9 + 1];
      result = (*(result + 856))(result, 1);
      *(v3 + 1072) = result;
      *(v3 + 1080) = &v12[result + 1];
      *(v3 + 1088) = result + v10;
      v5 = &v11[result];
      *(v3 + 1096) = &v11[result];
      LOBYTE(v4) = *(v3 + 1105);
    }

    *v5 |= a2 >> (7 - v4);
    v13 = *(v3 + 1096);
    *(v3 + 1096) = v13 + 1;
    *(v13 + 1) = a2 << (*(v3 + 1105) + 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PERGetByte(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1105);
  if (v2 == 7)
  {
    v3 = *(a1 + 1096);
    if (v3 == *(a1 + 1088))
    {
      PERAppendData(a1, 1uLL);
      v3 = *(a1 + 1096);
    }

    LOBYTE(v4) = *v3;
    *(a1 + 1096) = v3 + 1;
  }

  else
  {
    v5 = *(a1 + 1096);
    v6 = *(a1 + 1088) - v5;
    if (v6 <= 1)
    {
      PERAppendData(a1, 2 - v6);
      v5 = *(a1 + 1096);
      LOBYTE(v2) = *(a1 + 1105);
    }

    v7 = *v5 << (7 - v2);
    *(a1 + 1096) = v5 + 1;
    v4 = (v5[1] >> (v2 + 1)) | v7;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t PERSkipBytes(uint64_t a1, rsize_t __smax)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1105);
  v5 = *(a1 + 1096);
  v6 = &v5[__smax];
  v7 = *(a1 + 1080);
  if (v4 == 7)
  {
    if (v6 > v7)
    {
      v8 = (v5 - v7 + __smax);
      v9 = *(a1 + 1072);
      v10 = *(a1 + 1088) - v9;
      v11 = &v5[-v9];
      v12 = &v7[-v9];
      v13 = (*(a1 + 856))(a1, v8);
      *(a1 + 1072) = v13;
      *(a1 + 1080) = &v8[v12 + v13];
      *(a1 + 1088) = v13 + v10;
      v5 = &v11[v13];
      *(a1 + 1096) = v5;
    }

    v14 = __smax;
  }

  else
  {
    if (v6 >= v7)
    {
      v15 = __smax + v5 - v7 + 1;
      v16 = *(a1 + 1072);
      v17 = *(a1 + 1088) - v16;
      v18 = &v5[-v16];
      v19 = &v7[-v16];
      v20 = (*(a1 + 856))(a1, v15);
      *(a1 + 1072) = v20;
      *(a1 + 1080) = &v19[v15 + v20];
      *(a1 + 1088) = v20 + v17;
      v5 = &v18[v20];
      *(a1 + 1096) = v5;
      LOBYTE(v4) = *(a1 + 1105);
    }

    *v5 &= 510 << v4;
    v14 = __smax;
    v5 = (*(a1 + 1096) + 1);
  }

  result = memset_s(v5, v14, 0, v14);
  *(a1 + 1096) += __smax;
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void PERGetSkipBytes(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = *(a1 + 1096);
    v5 = v4 + a2;
    if (*(a1 + 1105) == 7)
    {
      v6 = *(a1 + 1088);
      if (v5 > v6)
      {
        v7 = v4 + a2 - v6;
LABEL_7:
        PERAppendData(a1, v7);
        v4 = *(a1 + 1096);
      }
    }

    else
    {
      v8 = v5 + 1;
      v9 = *(a1 + 1088);
      if (v8 > v9)
      {
        v7 = a2 + v4 - v9 + 1;
        goto LABEL_7;
      }
    }

    *(a1 + 1096) = v4 + a2;
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t PERPutSeg(uint64_t result, unsigned __int8 *a2, size_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = a3;
    v5 = result;
    v6 = *(result + 1096);
    v7 = &v6[v3];
    if (*(result + 1105) == 7)
    {
      v8 = *(result + 1080);
      if (v7 > v8)
      {
        v9 = &v6[v3 - v8];
        v10 = *(result + 1072);
        v11 = *(result + 1088) - v10;
        v12 = &v6[-v10];
        v13 = v8 - v10;
        v14 = (*(result + 856))(result, v9);
        v5[134] = v14;
        v5[135] = &v9[v13 + v14];
        v5[136] = v14 + v11;
        v6 = &v12[v14];
        v5[137] = &v12[v14];
      }

      result = memcpy_s("posp_memcpy", 29, v6, v3, a2, v3);
      v5[137] += v3;
    }

    else
    {
      v15 = *(result + 1080);
      if ((v7 + 1) > v15)
      {
        v16 = &v6[v3 - v15 + 1];
        v17 = *(result + 1072);
        v18 = *(result + 1088) - v17;
        v19 = &v6[-v17];
        v20 = v15 - v17;
        result = (*(result + 856))(result, v16);
        v5[134] = result;
        v5[135] = result + v20 + v16;
        v5[136] = result + v18;
        v5[137] = &v19[result];
      }

      do
      {
        *v5[137] |= *a2 >> (7 - *(v5 + 1105));
        v21 = v5[137];
        v5[137] = v21 + 1;
        v22 = *a2++;
        *(v21 + 1) = v22 << (*(v5 + 1105) + 1);
        --v3;
      }

      while (v3);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void *PEROctetsFragmentation(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x4000)
  {
    v7 = (a2 - 0x10000) >> 16;
    v8 = v7 + 1;
    if (a2 >> 16)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = a2 >> 14;
    if (a2 < 0x4000uLL)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 + 1;
    }

    v12 = a2 < 0x4000uLL;
    if (a2 >= 0x4000uLL)
    {
      v13 = 0x4000;
    }

    else
    {
      v13 = 0;
    }

    if (a2 >= 0x8000uLL)
    {
      v11 = v9 + 1;
      v12 = 0;
      v13 = 0x8000;
    }

    if (v10 > 2)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = v11;
    }

    v15 = v10 <= 2 && v12;
    if (v10 <= 2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 49152;
    }

    v17 = a2 - v16;
    if (v17 < 0x80)
    {
      PERSkipBytes(a1, v14);
      v19 = (*(a1 + 1096) - v17);
      v18 = &v19[-v14];
      result = memmove(v19, v18, v17);
    }

    else
    {
      PERSkipBytes(a1, v14 + 1);
      v18 = (*(a1 + 1096) + ~(v17 + v14));
      result = memmove(&v18[v14 + 1], v18, v17);
      v18[v14] = v2;
      LODWORD(v2) = (v17 >> 8) | 0xFFFFFF80;
    }

    v18[v14 - 1] = v2;
    if (!v15)
    {
      --v14;
      v18 -= v16;
      if (v14)
      {
        v20 = v14;
        result = memmove(&v18[v14], v18, v16);
      }

      else
      {
        v20 = 0;
      }

      v18[v20 - 1] = (v16 >> 14) | 0xC0;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v21 = v18;
      }

      else
      {
        v22 = v14 - 1;
        do
        {
          v21 = v18 - 0x10000;
          v23 = &v18[v22];
          result = memmove(v23 - 0x10000, v21, 0x10000uLL);
          *(v23 - 65537) = -60;
          --v8;
          --v22;
          v18 = v21;
        }

        while (v8 > 1u);
      }

      *(v21 - 65537) = -60;
    }
  }

  else
  {
    PERSkipBytes(a1, 1uLL);
    v4 = *(a1 + 1096);
    v5 = (v4 + ~v2);
    result = memmove((v4 - v2), v5, v2);
    *v5 = v2;
    *(v5 - 1) = BYTE1(v2) | 0x80;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEROctetsDefragmentation(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1096);
  v3 = PERGetByte(a1);
  if (v3 > 194)
  {
    if (v3 != 195)
    {
      if (v3 == 196)
      {
        v4 = (*(a1 + 1096) + 0x10000);
        *(a1 + 1096) = v4;
        v5 = 0x10000;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = (*(a1 + 1096) + 49152);
    *(a1 + 1096) = v4;
    v5 = 49152;
  }

  else
  {
    if (v3 != 193)
    {
      if (v3 == 194)
      {
        v4 = (*(a1 + 1096) + 0x8000);
        *(a1 + 1096) = v4;
        v5 = 0x8000;
        goto LABEL_11;
      }

LABEL_8:
      EPErrorHandler(a1, 26);
      v5 = 0;
      v4 = *(a1 + 1096);
      goto LABEL_11;
    }

    v4 = (*(a1 + 1096) + 0x4000);
    *(a1 + 1096) = v4;
    v5 = 0x4000;
  }

LABEL_11:
  v6 = *(a1 + 1088);
  if (v4 >= v6)
  {
    PERAppendData(a1, &v4[-v6]);
    v4 = *(a1 + 1096);
  }

  for (i = PERGetByte(a1); i == 196; v5 += 0x10000)
  {
    v8 = *(a1 + 1096);
    v9 = *(a1 + 1088) - v8;
    if (v9 < 0x10000)
    {
      PERAppendData(a1, 0x10000 - v9);
      v8 = *(a1 + 1096);
    }

    memmove(v4, v8, 0x10000uLL);
    v4 += 0x10000;
    *(a1 + 1096) += 0x10000;
    i = PERGetByte(a1);
  }

  v10 = i;
  if (i >= 0xC1)
  {
    v11 = (i & 3) << 14;
    v5 += v11;
    v12 = *(a1 + 1096);
    v13 = *(a1 + 1088) - v12;
    v14 = __OFSUB__(v11, v13);
    v15 = v11 - v13;
    if (!((v15 < 0) ^ v14 | (v15 == 0)))
    {
      PERAppendData(a1, v15);
      v12 = *(a1 + 1096);
    }

    memmove(v4, v12, v11);
    v4 += v11;
    *(a1 + 1096) += v11;
    v10 = PERGetByte(a1);
  }

  if ((v10 & 0xC0) == 0x80)
  {
    v16 = PERGetByte(a1) & 0xFFFFC0FF | ((v10 & 0x3F) << 8);
    v5 += v16;
    v17 = *(a1 + 1096);
    v18 = *(a1 + 1088) - v17;
    v19 = v16 >= v18;
    v20 = v16 - v18;
    if (v20 == 0 || !v19)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((v10 & 0x80) != 0)
  {
    EPErrorHandler(a1, 26);
    goto LABEL_26;
  }

  v16 = v10;
  v5 += v10;
  v17 = *(a1 + 1096);
  v23 = *(a1 + 1088) - v17;
  v14 = __OFSUB__(v10, v23);
  v20 = v10 - v23;
  if (!((v20 < 0) ^ v14 | (v20 == 0)))
  {
LABEL_24:
    PERAppendData(a1, v20);
    v17 = *(a1 + 1096);
  }

LABEL_25:
  memmove(v4, v17, v16);
LABEL_26:
  *(a1 + 1096) = v2 + 1;
  v21 = *MEMORY[0x29EDCA608];
  return v5;
}

void *PEROctetsFragmentationWithOffset(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v37 = *MEMORY[0x29EDCA608];
  if (a2 < 0x4000)
  {
    PERSkipBytes(a1, 1uLL);
    v4 = *(a1 + 1096);
    v5 = (v4 + ~v2);
    v6 = (v4 - v2);
    result = memmove((v4 - v2), v5, v2 + 1);
    v8 = (a1 + 1105);
    v9 = *(v5 - 1) & (510 << *(a1 + 1105));
    *(v5 - 1) = v9;
    *(v5 - 1) = v9 | ((v2 | 0x8000) >> (15 - *(a1 + 1105)));
    *v5 = (v2 | 0x8000) >> (7 - *(a1 + 1105));
    goto LABEL_48;
  }

  v10 = (a2 - 0x10000) >> 16;
  v11 = v10 + 1;
  if (a2 >> 16)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a2 >> 14;
  if (a2 < 0x4000uLL)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = a2 < 0x4000uLL;
  if (a2 >= 0x4000uLL)
  {
    v16 = 0x4000;
  }

  else
  {
    v16 = 0;
  }

  if (a2 >= 0x8000uLL)
  {
    v14 = v12 + 1;
    v15 = 0;
    v16 = 0x8000;
  }

  if (v13 > 2)
  {
    v17 = v12 + 1;
  }

  else
  {
    v17 = v14;
  }

  v18 = v13 <= 2 && v15;
  if (v13 <= 2)
  {
    v19 = v16;
  }

  else
  {
    v19 = 49152;
  }

  v20 = a2 - v19;
  if (v20 < 0x80)
  {
    PERSkipBytes(a1, v17);
    v21 = (*(a1 + 1096) - v20 - v17);
    v22 = (*(a1 + 1096) - v20);
  }

  else
  {
    PERSkipBytes(a1, v17 + 1);
    v21 = (*(a1 + 1096) + ~(v20 + v17));
    v22 = &v21[v17 + 1];
  }

  result = memmove(v22, v21, v20 + 1);
  if (!v18)
  {
    --v17;
    v21 -= v19;
    if (v17)
    {
      result = memmove(&v21[v17], v21, v19 | 1);
    }

    else
    {
      v17 = 0;
      --v21;
    }
  }

  if (v12)
  {
    if (v12 != 1)
    {
      v23 = v21 - 0x10000;
      v24 = v17 - 1;
      do
      {
        result = memmove(&v23[v24], v23, 0x10001uLL);
        --v11;
        v23 -= 0x10000;
        --v24;
      }

      while (v11 > 1u);
      v21 = v23 + 0x10000;
    }

    v21 -= 65537;
  }

  if (v2 >= 0x10000)
  {
    do
    {
      v25 = *v21 & (510 << *(a1 + 1105));
      *v21 = v25;
      *v21 = v25 | (0xC4u >> (7 - *(a1 + 1105)));
      v26 = v21[1] & (0xFFu >> (7 - *(a1 + 1105)));
      v21[1] = v26;
      v21[1] = v26 | (392 << *(a1 + 1105));
      v2 -= 0x10000;
      v21 += 65537;
    }

    while (v2 >> 16);
  }

  if (v2 >> 14 <= 2)
  {
    if (v2 >> 15)
    {
      v27 = -32768;
      v28 = -124;
      v29 = 194;
      v30 = 32769;
    }

    else
    {
      if (v2 < 0x4000)
      {
        goto LABEL_45;
      }

      v27 = -16384;
      v28 = -126;
      v29 = 193;
      v30 = 16385;
    }
  }

  else
  {
    v27 = -49152;
    v28 = -122;
    v29 = 195;
    v30 = 49153;
  }

  v31 = *v21 & (510 << *(a1 + 1105));
  *v21 = v31;
  *v21 = v31 | (v29 >> (7 - *(a1 + 1105)));
  v32 = v21[1] & (0xFFu >> (7 - *(a1 + 1105)));
  v21[1] &= 0xFFu >> (7 - *(a1 + 1105));
  v21[1] = v32 | (v28 << *(a1 + 1105));
  v2 += v27;
  v21 += v30;
LABEL_45:
  v8 = (a1 + 1105);
  if (v2 < 0x80)
  {
    v34 = *v21 & (510 << *(a1 + 1105));
    *v21 = v34;
    *v21 = v34 | (v2 >> (7 - *(a1 + 1105)));
    v6 = v21 + 1;
  }

  else
  {
    v33 = *v21 & (510 << *(a1 + 1105));
    *v21 = v33;
    *v21 = v33 | ((v2 | 0x8000) >> (15 - *(a1 + 1105)));
    v21[1] = (v2 | 0x8000) >> (7 - *(a1 + 1105));
    v6 = v21 + 2;
  }

LABEL_48:
  v35 = *v6 & (0xFFu >> (7 - *v8));
  *v6 = v35;
  *v6 = v35 | (v2 << (*v8 + 1));
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEROctetsDefragmentationWithOffset(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1096);
  v3 = PERGetByte(a1);
  if (v3 > 194)
  {
    if (v3 != 195)
    {
      if (v3 == 196)
      {
        v4 = (*(a1 + 1096) + 0x10000);
        *(a1 + 1096) = v4;
        v5 = 0x10000;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = (*(a1 + 1096) + 49152);
    *(a1 + 1096) = v4;
    v5 = 49152;
  }

  else
  {
    if (v3 != 193)
    {
      if (v3 == 194)
      {
        v4 = (*(a1 + 1096) + 0x8000);
        *(a1 + 1096) = v4;
        v5 = 0x8000;
        goto LABEL_11;
      }

LABEL_8:
      EPErrorHandler(a1, 26);
      v5 = 0;
      v4 = *(a1 + 1096);
      goto LABEL_11;
    }

    v4 = (*(a1 + 1096) + 0x4000);
    *(a1 + 1096) = v4;
    v5 = 0x4000;
  }

LABEL_11:
  v6 = *(a1 + 1088);
  if (v4 >= v6)
  {
    PERAppendData(a1, &v4[-v6]);
    v4 = *(a1 + 1096);
  }

  for (i = PERGetByte(a1); i == 196; v5 += 0x10000)
  {
    v8 = *(a1 + 1088) - *(a1 + 1096);
    if (v8 < 65537)
    {
      PERAppendData(a1, 65537 - v8);
    }

    *v4 &= 510 << *(a1 + 1105);
    **(a1 + 1096) &= 0xFFu >> (7 - *(a1 + 1105));
    *v4 |= **(a1 + 1096);
    memmove(v4 + 1, (*(a1 + 1096) + 1), 0x10000uLL);
    v4 += 0x10000;
    *(a1 + 1096) += 0x10000;
    i = PERGetByte(a1);
  }

  v9 = i;
  if (i >= 0xC1)
  {
    v10 = (i & 3) << 14;
    v5 += v10;
    v11 = *(a1 + 1088) - *(a1 + 1096);
    v12 = (i << 14) | 1u;
    if (v12 > v11)
    {
      PERAppendData(a1, v12 - v11);
    }

    *v4 &= 510 << *(a1 + 1105);
    **(a1 + 1096) &= 0xFFu >> (7 - *(a1 + 1105));
    *v4 |= **(a1 + 1096);
    memmove(v4 + 1, (*(a1 + 1096) + 1), (v9 & 3) << 14);
    v4 += v10;
    *(a1 + 1096) += v10;
    v9 = PERGetByte(a1);
  }

  if ((v9 & 0xC0) == 0x80)
  {
    v13 = PERGetByte(a1) & 0xFFFFC0FF | ((v9 & 0x3F) << 8);
    v5 += v13;
    v14 = *(a1 + 1088) - *(a1 + 1096);
    v15 = v13 - v14;
    if (v13 > v14)
    {
LABEL_23:
      PERAppendData(a1, v15);
    }
  }

  else
  {
    if ((v9 & 0x80) != 0)
    {
      EPErrorHandler(a1, 26);
      goto LABEL_25;
    }

    v13 = v9;
    v5 += v9;
    v18 = *(a1 + 1088) - *(a1 + 1096);
    v15 = v9 - v18;
    if (v9 > v18)
    {
      goto LABEL_23;
    }
  }

  *v4 &= 510 << *(a1 + 1105);
  **(a1 + 1096) &= 0xFFu >> (7 - *(a1 + 1105));
  *v4 |= **(a1 + 1096);
  memmove(v4 + 1, (*(a1 + 1096) + 1), v13);
LABEL_25:
  *(a1 + 1096) = v2 + 1;
  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t PERConstructedEncode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8);
  if (v4 >= 0x4000)
  {
    if (v4 >= 0x10000)
    {
      do
      {
        if ((*(a1 + 1056) & 0x40) != 0)
        {
          v5 = *(a1 + 1105);
          if (v5 != 7)
          {
            *(*(a1 + 1096))++ &= 510 << v5;
            *(a1 + 1105) = 7;
          }
        }

        PERPutByte(a1, 0xC4u);
        (*(a2 + 16))(a1, 0x10000, a2);
        v4 = *(a2 + 8);
      }

      while (v4 >> 16);
    }

    if (v4 >= 0xC000)
    {
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v6 = *(a1 + 1105);
        if (v6 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v6;
          *(a1 + 1105) = 7;
        }
      }

      PERPutByte(a1, 0xC3u);
      (*(a2 + 16))(a1, 49152, a2);
      v4 = *(a2 + 8);
    }

    if (v4 >= 0x8000)
    {
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v7 = *(a1 + 1105);
        if (v7 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v7;
          *(a1 + 1105) = 7;
        }
      }

      PERPutByte(a1, 0xC2u);
      (*(a2 + 16))(a1, 0x8000, a2);
      v4 = *(a2 + 8);
    }

    if (v4 >= 0x4000)
    {
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v8 = *(a1 + 1105);
        if (v8 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v8;
          *(a1 + 1105) = 7;
        }
      }

      PERPutByte(a1, 0xC1u);
      (*(a2 + 16))(a1, 0x4000, a2);
    }
  }

  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v9 = *(a1 + 1105);
    if (v9 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v9;
      *(a1 + 1105) = 7;
    }
  }

  v10 = *(a2 + 8);
  if (v10 > 0x7F)
  {
    PERPutBits(a1, v10 | 0x8000, 0x10u);
  }

  else
  {
    PERPutByte(a1, *(a2 + 8));
  }

  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *MEMORY[0x29EDCA608];

  return v12(a1, v11, a2);
}

uint64_t PERConstructedDecode(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v12 = *MEMORY[0x29EDCA608];
  while (1)
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v5 = *(a1 + 1105);
      if (v5 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v5;
        *(a1 + 1105) = 7;
      }
    }

    v6 = PERGetByte(a1);
    if ((v6 + 63) >= 4u)
    {
      break;
    }

    v4 = ((v6 + 63) << 14) + 0x4000;
LABEL_10:
    result = (*(a2 + 16))(a1, v4, a2);
    if (!(v4 >> 14))
    {
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  if ((v6 & 0xC0) == 0x80)
  {
    v9 = PERGetByte(a1) & 0xFFFFC0FF | ((v6 & 0x3F) << 8);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
    EPErrorHandler(a1, 26);
    goto LABEL_10;
  }

  v9 = v6;
LABEL_14:
  v10 = *(a2 + 16);
  v11 = *MEMORY[0x29EDCA608];

  return v10(a1, v9, a2);
}

uint64_t Hal17_SoftReset(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v32[0] = 0;
  v29 = 29250;
  v30 = a1;
  v34 = 3;
  v35 = 0;
  plc00_10EncodeHdrPlCs(&v29, v33, 12, 1u, 1, v32);
  v4 = v32[0];
  if (v32[0])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HdrErr,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal17_SoftReset", 775, v4);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  v36 = a2;
  v37 = a2;
  v38 = 2560;
  if (a1 == 77)
  {
    v9 = 2;
  }

  else
  {
    if (a1 != 80)
    {
      goto LABEL_11;
    }

    v9 = 3;
  }

  g_HalState = v9;
LABEL_11:
  if (Hal22_ZxSendToChip(v33, 0xCuLL) > 0)
  {
    v10 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
    if (v10 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v18 = 1543;
LABEL_26:
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx cpu,%c\n", v17, "HAL", 69, "Hal17_SoftReset", v18, a1);
        LbsOsaTrace_WriteLog(0xDu, __str, v19, 0, 1);
      }
    }

    else
    {
      if (!v10)
      {
        v11 = g_HalState;
        if (g_HalState != 3)
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_36;
        }

        if (g_ResetResp == a2)
        {
          if (g_ResetResp == 32)
          {
            IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
            result = 0;
            if (IsLoggingAllowed)
            {
              bzero(__str, 0x410uLL);
              v13 = mach_continuous_time();
              v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 73, "Hal17_SoftReset", 1289);
              LbsOsaTrace_WriteLog(0xDu, __str, v14, 4, 1);
              result = 0;
            }

            goto LABEL_35;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%c\n", v27);
            goto LABEL_33;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RstType,%x,Resp,%x\n", v20);
LABEL_33:
          LbsOsaTrace_WriteLog(0xDu, __str, v21, 0, 1);
        }

        result = 4294967288;
LABEL_35:
        v11 = g_HalState;
LABEL_36:
        if (v11 != 2)
        {
          goto LABEL_5;
        }

        if (g_ResetResp == a2)
        {
          if (g_ResetResp == 32)
          {
            v22 = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
            result = 0;
            if (v22)
            {
              bzero(__str, 0x410uLL);
              v23 = mach_continuous_time();
              v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 73, "Hal17_SoftReset", 1289);
              LbsOsaTrace_WriteLog(0xDu, __str, v24, 4, 1);
              result = 0;
            }

            goto LABEL_5;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%c\n", v28);
            goto LABEL_45;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rst,%x,resp,%x\n", v25);
LABEL_45:
          LbsOsaTrace_WriteLog(0xDu, __str, v26, 0, 1);
        }

        result = 4294967288;
        goto LABEL_5;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v18 = 1541;
        goto LABEL_26;
      }
    }

    result = 4294967287;
    goto LABEL_5;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal17_SoftReset", 1282);
    LbsOsaTrace_WriteLog(0xDu, __str, v16, 0, 1);
  }

  result = 4294967289;
LABEL_5:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal17_HandleReset(unsigned __int8 *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 0xC)
    {
      if (a1[2] == 66 && a1[3] == 82 && ((v6 = a1[4], v6 == 80) || v6 == 77))
      {
        g_ResetResp = a1[9];
        g_ResetResp = a1[8];
        result = gnssOsa_SemRelease(g_HandleAckSem);
        if ((result & 1) == 0)
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v12 = 1542;
            v13 = *__error();
            v11 = v7;
            v4 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
            goto LABEL_16;
          }
        }
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v14 = a1[3];
          v15 = a1[4];
          v12 = 1290;
          v13 = a1[2];
          v4 = "%10u %s%c %s: #%04hx rcvd MC,%c,MID,%c,MIDEx,%c\n";
          v11 = v8;
          goto LABEL_16;
        }
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v12 = 515;
        v13 = a2;
        v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = "%10u %s%c %s: #%04hx len,%u\n";
LABEL_16:
        v9 = snprintf(__str, 0x40FuLL, v4, v11, "HAL", 69, "Hal17_HandleReset", v12, v13, v14, v15);
        result = LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = 513;
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = "%10u %s%c %s: #%04hx data\n";
      goto LABEL_16;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Conv_Lock_Units(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = (a3 + 34);
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

uint64_t asn1PE_PosTechnology(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    Asn1Coder::AddBitToBuffer(a1, *a2);
    v4 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v7 = *(a1 + 16);
    }

    else
    {
      Asn1Coder::AddBitToBuffer(a1, a2[1]);
      v4 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = *(a1 + 16);
      }

      else
      {
        Asn1Coder::AddBitToBuffer(a1, a2[2]);
        v4 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v7 = *(a1 + 16);
        }

        else
        {
          Asn1Coder::AddBitToBuffer(a1, a2[3]);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v5 = *(a1 + 8);
            v6 = *(a1 + 12);
            v7 = *(a1 + 16);
          }

          else
          {
            Asn1Coder::AddBitToBuffer(a1, a2[4]);
            v4 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v5 = *(a1 + 8);
              v6 = *(a1 + 12);
              v7 = *(a1 + 16);
            }

            else
            {
              Asn1Coder::AddBitToBuffer(a1, a2[5]);
              v4 = *(a1 + 16);
              if (!*(a1 + 16))
              {
                Asn1Coder::AddBitToBuffer(a1, a2[6]);
                v4 = *(a1 + 16);
                goto LABEL_16;
              }

              v5 = *(a1 + 8);
              v6 = *(a1 + 12);
              v7 = *(a1 + 16);
            }
          }
        }
      }
    }
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PrefMethod(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (v3 >= 3)
  {
    v4 = 4;
    *(a1 + 16) = 4;
    SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    v4 = Asn1Coder::EncodeInteger(a1, 0, 2, v3);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  SuplAsn1Logger::TraceError(v4, *(a1 + 8), *(a1 + 12));
LABEL_6:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PosProtocol(uint64_t a1, unsigned __int8 *a2, uint8x8_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  a3.i32[0] = *(a2 + 3);
  v5 = vmovl_u8(a3).u64[0];
  Asn1Coder::AddBitToBuffer(a1, vuzp1_s8(v5, v5).u32[0] != 0);
  v6 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    LODWORD(v9) = *(a1 + 16);
LABEL_9:
    SuplAsn1Logger::TraceError(v9, v7, v8);
    goto LABEL_10;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v6 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    LODWORD(v9) = *(a1 + 16);
    goto LABEL_9;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v6 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    LODWORD(v9) = *(a1 + 16);
    goto LABEL_9;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v6 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    LODWORD(v9) = *(a1 + 16);
    goto LABEL_9;
  }

  v10.i32[0] = *(a2 + 3);
  v13 = vmovl_u8(v10).u64[0];
  if (!vuzp1_s8(v13, v13).u32[0])
  {
    v6 = 0;
    goto LABEL_10;
  }

  v9 = asn1PE_PosProtocol_VER2(a1, a2);
  v6 = v9;
  if (v9)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    goto LABEL_9;
  }

LABEL_10:
  v11 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t asn1PE_SETCapabilities(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    v9 = *MEMORY[0x29EDCA608];
    return v4;
  }

  v7 = asn1PE_PosTechnology(a1, a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v7 = asn1PE_PrefMethod(a1, a2 + 7);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v11 = *MEMORY[0x29EDCA608];

  return asn1PE_PosProtocol(a1, a2 + 8, v8);
}

uint64_t ds_NK_Summary_FirstLine(uint64_t result)
{
  v1 = 0;
  v6 = *MEMORY[0x29EDCA608];
  v2 = *result;
  v3 = 78;
  do
  {
    *result = v2 + 1;
    *v2 = v3;
    v2 = *result;
    if (*result >= *(result + 24))
    {
      v2 = *(result + 16);
      *result = v2;
    }

    v3 = str_0[++v1];
  }

  while (v1 != 16);
  *result = v2 + 1;
  *v2 = 10;
  if (*result >= *(result + 24))
  {
    *result = *(result + 16);
  }

  v4 = *MEMORY[0x29EDCA608];

  return GNSS_Nav_Debug_Flush_Check(result);
}

uint64_t ds_NK_Summary(void *a1)
{
  v1586 = *MEMORY[0x29EDCA608];
  v2 = a1[46];
  v3 = a1[9];
  v4 = a1[10];
  v5 = a1[22];
  v6 = a1[36];
  v7 = *(a1[20] + 394);
  GN_GPS_Get_LibVersion(v1582);
  v8 = *v2;
  v9 = 86;
  v10 = 1u;
  do
  {
    *v2 = v8 + 1;
    *v8 = v9;
    v8 = *v2;
    if (*v2 >= v2[3])
    {
      v8 = v2[2];
      *v2 = v8;
    }

    v9 = aVer[v10++];
  }

  while (v10 != 7);
  v11 = v1582[0];
  if (LOBYTE(v1582[0]))
  {
    v12 = v1582 + 1;
    do
    {
      *v2 = v8 + 1;
      *v8 = v11;
      v8 = *v2;
      if (*v2 >= v2[3])
      {
        v8 = v2[2];
        *v2 = v8;
      }

      v13 = *v12++;
      v11 = v13;
    }

    while (v13);
  }

  *v2 = v8 + 1;
  *v8 = 32;
  v14 = *v2;
  if (*v2 >= v2[3])
  {
    v14 = v2[2];
  }

  *v2 = v14 + 1;
  *v14 = 91;
  v15 = *v2;
  if (*v2 >= v2[3])
  {
    v15 = v2[2];
    *v2 = v15;
  }

  v16 = *(v6 + 118);
  if (v16)
  {
    v17 = (v6 + 119);
    do
    {
      *v2 = v15 + 1;
      *v15 = v16;
      v15 = *v2;
      if (*v2 >= v2[3])
      {
        v15 = v2[2];
        *v2 = v15;
      }

      v18 = *v17++;
      v16 = v18;
    }

    while (v18);
  }

  *v2 = v15 + 1;
  *v15 = 93;
  v19 = *v2;
  if (*v2 >= v2[3])
  {
    v19 = v2[2];
  }

  for (i = 3; i > 1; --i)
  {
    *v2 = v19 + 1;
    *v19 = 32;
    v19 = *v2;
    if (*v2 >= v2[3])
    {
      v19 = v2[2];
      *v2 = v19;
    }
  }

  sprintf_2f(v2, (*(v4 + 32) - *(v5 + 26996)) / 0x64u);
  v21 = (*v2)++;
  *v21 = 32;
  v22 = *v2;
  if (*v2 >= v2[3])
  {
    v22 = v2[2];
  }

  v23 = &ch_GNSS_Exe_States[20 * *(v3 + 1284) + 1];
  v24 = 32;
  do
  {
    *v2 = v22 + 1;
    *v22 = v24;
    v22 = *v2;
    if (*v2 >= v2[3])
    {
      v22 = v2[2];
      *v2 = v22;
    }

    v25 = *v23++;
    v24 = v25;
  }

  while (v25);
  sprintf_sp1d(v2, *(v3 + 1280));
  sprintf_sp1d(v2, v7);
  sprintf_sp1d(v2, *(v5 + 29));
  v26 = (*v2)++;
  *v26 = 10;
  if (*v2 >= v2[3])
  {
    *v2 = v2[2];
  }

  GNSS_Nav_Debug_Flush_Check(v2);
  v27 = a1[46];
  v28 = a1[2];
  v29 = a1[6];
  v31 = a1[9];
  v30 = a1[10];
  v32 = a1[22];
  v33 = a1[29];
  v34 = *v27;
  v35 = 84;
  v36 = 1u;
  do
  {
    *v27 = v34 + 1;
    *v34 = v35;
    v34 = *v27;
    if (*v27 >= v27[3])
    {
      v34 = v27[2];
      *v27 = v34;
    }

    v35 = aTime[v36++];
  }

  while (v36 != 7);
  v1552 = v28;
  v1523 = a1;
  *&v1582[0] = 0;
  LOWORD(v1583[0]) = 0;
  LOWORD(v1557) = 0;
  *v1556 = 0;
  v1555 = 0;
  v37 = *(v30 + 40);
  v38 = *(v30 + 54);
  v39 = (v30 + 144);
  *v1558 = 0;
  if (!R8_EQ((v30 + 144), v1558) || (v39 = (v30 + 152), *v1558 = 0, !R8_EQ((v30 + 152), v1558)) || (v39 = (v30 + 160), *v1558 = 0, v40 = R8_EQ((v30 + 160), v1558), v41 = 0.0, !v40))
  {
    v41 = *v39;
  }

  for (j = v37 - v41; j >= 604800.0; ++v38)
  {
    j = j + -604800.0;
  }

  while (j < 0.0)
  {
    j = j + 604800.0;
    --v38;
  }

  API_Get_UTC_Cor(0, v1582);
  GPS_To_UTC_Time(v1583, &v1557, &v1556[3], &v1556[2], &v1556[1], v1556, &v1555, v38, j, *v1582);
  sprintf_02d(v27, v1556[2]);
  sprintf_02d(v27, v1556[1]);
  v43 = v1556[0];
  if (v1556[2] == 23)
  {
    v44 = v1523;
    if (v1556[1] == 59 && v1556[0] >= 0x3Au)
    {
      v1558[0] = 0;
      v1554 = 0;
      v1585[0] = 0;
      API_Get_Next_Leap_Second(v1558, &v1554, v1585);
      v43 = v1556[0];
      if (!v1585[0] && v1554 == 1)
      {
        v43 = ++v1556[0];
      }
    }
  }

  else
  {
    v44 = v1523;
  }

  sprintf_02d(v27, v43);
  v45 = (*v27)++;
  *v45 = 46;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_03d(v27, v1555);
  v46 = *(v30 + 32);
  v47 = (*v27)++;
  *v47 = 32;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_10u(v27, v46);
  sprintf_5d(v27, *(v30 + 54));
  sprintf_12f3(v27, *(v30 + 40));
  sprintf_2d(v27, *(v33 + 16));
  v48 = *v27;
  v49 = &g_TOW_Stat_As_String[10 * *v29 + 1];
  v50 = 32;
  do
  {
    *v27 = v48 + 1;
    *v48 = v50;
    v48 = *v27;
    if (*v27 >= v27[3])
    {
      v48 = v27[2];
      *v27 = v48;
    }

    v51 = *v49++;
    v50 = v51;
  }

  while (v51);
  sprintf_6d(v27, v32[2757]);
  sprintf_6d(v27, v32[2758]);
  sprintf_gR8(v27, v29[4] * 1000000000.0);
  sprintf_sgR8(v27, *(v30 + 168) * 1000000000.0);
  v52 = (*v27)++;
  *v52 = 32;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_sp1u(v27, *(v30 + 36));
  if (*v29 < 1)
  {
    v57 = 0;
    v58 = *v27;
    v59 = 32;
    do
    {
      *v27 = v58 + 1;
      *v58 = v59;
      v58 = *v27;
      if (*v27 >= v27[3])
      {
        v58 = v27[2];
        *v27 = v58;
      }

      v59 = a9999999[++v57];
    }

    while (v57 != 16);
    goto LABEL_96;
  }

  v53 = *(v30 + 40) * 1000.0;
  v54 = -0.5;
  if (v53 > 0.0)
  {
    v54 = 0.5;
  }

  v55 = v53 + v54;
  if (v55 <= 2147483650.0)
  {
    if (v55 >= -2147483650.0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0x80000000;
    }
  }

  else
  {
    v56 = 0x7FFFFFFF;
  }

  v60 = _MergedGlobals_0;
  v61 = *(v30 + 32);
  if (_MergedGlobals_0)
  {
    v62 = dword_2A197176C;
  }

  else
  {
    _MergedGlobals_0 = *(v30 + 32);
    dword_2A197176C = v56;
    v62 = v56;
    v60 = v61;
  }

  v63 = v60 + v56;
  v64 = v62 + v61;
  v65 = v64 - v63;
  if (v64 - v63 <= -302400000)
  {
    v65 = -302400000;
  }

  v66 = v65 + v63;
  v67 = (v66 - v64 - (v66 != v64)) / 0x240C8400;
  if (v66 != v64)
  {
    ++v67;
  }

  v68 = 604800000 * v67 + v64;
  if ((v68 - v63) >= 302399999)
  {
    v69 = 302399999;
  }

  else
  {
    v69 = v68 - v63;
  }

  v70 = v68 - v63 - 604800000 * ((v68 + 604799999 - v63 - v69) / 0x240C8400);
  v71 = (*v27)++;
  *v71 = 32;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_4d(v27, v70);
  LODWORD(v1582[0]) = 0;
  v1558[0] = 0;
  v1585[0] = 0;
  v1583[0] = 0;
  if (!API_Get_FS_Pulse_TTick(v1582, v1558, v1585, v1583))
  {
    v75 = *v27;
    v76 = 32;
    v77 = 1u;
    do
    {
      *v27 = v75 + 1;
      *v75 = v76;
      v75 = *v27;
      if (*v27 >= v27[3])
      {
        v75 = v27[2];
        *v27 = v75;
      }

      v76 = a9999999_0[v77++];
    }

    while (v77 != 15);
LABEL_96:
    v78 = 0.0;
    goto LABEL_111;
  }

  LODWORD(v72) = v1558[0];
  v73 = *(v30 + 40) - *(v30 + 144) + ((*(v30 + 32) - LODWORD(v1582[0])) + v72 * -0.0000152587891) * -0.001 * (1.0 - *(v30 + 168));
    ;
  }

    ;
  }

  v79 = 0;
  v80 = *v27;
  v81 = 32;
  do
  {
    *v27 = v80 + 1;
    *v80 = v81;
    v80 = *v27;
    if (*v27 >= v27[3])
    {
      v80 = v27[2];
      *v27 = v80;
    }

    v81 = asc_29976B20A[++v79];
  }

  while (v79 != 2);
  sprintf_10u(v27, v1582[0]);
  sprintf_10u(v27, v1558[0]);
  v82 = -0.5;
  if (k * 10000.0 > 0.0)
  {
    v82 = 0.5;
  }

  v83 = k * 10000.0 + v82;
  if (v83 <= 2147483650.0)
  {
    if (v83 >= -2147483650.0)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0x80000000;
    }
  }

  else
  {
    v84 = 0x7FFFFFFF;
  }

  sprintf_7f(v27, v84, 2);
  v78 = k * 1000.0;
LABEL_111:
  v1548 = v78;
  v85 = *(v30 + 40) * 1000.0;
  v86 = -0.5;
  if (v85 > 0.0)
  {
    v86 = 0.5;
  }

  v87 = v85 + v86;
  if (v87 <= 2147483650.0)
  {
    if (v87 >= -2147483650.0)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0x80000000;
    }
  }

  else
  {
    v88 = 0x7FFFFFFF;
  }

  v89 = *(v29 + 24);
  v90 = *(v30 + 32) - (*(v29 + 25) + v88);
  v91 = (*v27)++;
  *v91 = 32;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_4d(v27, v90 + v89);
  v92 = (*v27)++;
  *v92 = 32;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_2d(v27, v32[2763]);
  v93 = v31[265];
  if (v93 == -1)
  {
    v94 = 255;
  }

  else
  {
    v94 = v93 / 0xEA60;
  }

  sprintf_4d(v27, v94);
  v95 = (*v27)++;
  *v95 = 32;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  sprintf_1u(v27, v31[267]);
  v96 = *v27;
  if (*(v1552 + 22))
  {
    *v27 = v96 + 1;
    *v96 = 32;
    if (*v27 >= v27[3])
    {
      *v27 = v27[2];
    }

    v97 = *(v30 + 40) * 1000.0;
    v98 = -0.5;
    if (v97 > 0.0)
    {
      v98 = 0.5;
    }

    v99 = v97 + v98;
    if (v99 <= 2147483650.0)
    {
      if (v99 >= -2147483650.0)
      {
        v100 = v99;
      }

      else
      {
        v100 = 0x80000000;
      }
    }

    else
    {
      v100 = 0x7FFFFFFF;
    }

    sprintf_5f(v27, *(v1552 + 24) - v100, 4);
    sprintf_sp1d(v27, *(v1552 + 22));
    sprintf_sp1d(v27, *(v1552 + 21));
    v96 = *v27;
  }

  else
  {
    v101 = 0;
    v102 = 32;
    do
    {
      *v27 = v96 + 1;
      *v96 = v102;
      v96 = *v27;
      if (*v27 >= v27[3])
      {
        v96 = v27[2];
        *v27 = v96;
      }

      v102 = a0000[++v101];
    }

    while (v101 != 8);
  }

  v103 = 32;
  v104 = 1u;
  do
  {
    *v27 = v96 + 1;
    *v96 = v103;
    v96 = *v27;
    if (*v27 >= v27[3])
    {
      v96 = v27[2];
      *v27 = v96;
    }

    v103 = aGoh[v104++];
  }

  while (v104 != 6);
  sprintf_4d(v27, v31[282]);
  v105 = v31[279];
  if (v105)
  {
    v106 = 274877907 * (*(v30 + 36) - v105);
    v107 = v106 >> 63;
    v108 = v106 >> 38;
    v109 = (*v27)++;
    *v109 = 32;
    if (*v27 >= v27[3])
    {
      *v27 = v27[2];
    }

    sprintf_4d(v27, v108 + v107);
    v110 = v31[282];
    if (v110)
    {
      v111 = 274877907 * (*(v30 + 36) - v110);
      v112 = (v111 >> 38) + (v111 >> 63);
    }

    else
    {
      v112 = 0;
    }

    v116 = (*v27)++;
    *v116 = 32;
    if (*v27 >= v27[3])
    {
      *v27 = v27[2];
    }

    sprintf_4d(v27, v112);
    v114 = *v27;
  }

  else
  {
    v113 = 0;
    v114 = *v27;
    v115 = 32;
    do
    {
      *v27 = v114 + 1;
      *v114 = v115;
      v114 = *v27;
      if (*v27 >= v27[3])
      {
        v114 = v27[2];
        *v27 = v114;
      }

      v115 = a00[++v113];
    }

    while (v113 != 4);
  }

  *v27 = v114 + 1;
  *v114 = 10;
  if (*v27 >= v27[3])
  {
    *v27 = v27[2];
  }

  GNSS_Nav_Debug_Flush_Check(v27);
  v117 = v44[46];
  v119 = v44[6];
  v118 = v44[7];
  v120 = (v118 + 16224);
  v121 = (v118 + 8458);
  v122 = v44[10];
  v123 = *v117;
  v124 = 71;
  v125 = 1u;
  do
  {
    *v117 = v123 + 1;
    *v123 = v124;
    v123 = *v117;
    if (*v117 >= v117[3])
    {
      v123 = v117[2];
      *v117 = v123;
    }

    v124 = aGlot[v125++];
  }

  while (v125 != 7);
  v126 = *(v119 + 72) - *(v122 + 152) + 0.0005;
  if (v126 >= 86400.0)
  {
    v126 = v126 + -86400.0;
  }

  v127 = ((v126 - v126) * 1000.0);
  v128 = (v126 / 0xE10);
  v129 = v126 - 3600 * v128;
  v130 = (v129 / 0x3C);
  v131 = v129 - 60 * v130;
  sprintf_02d(v117, v128);
  sprintf_02d(v117, v130);
  sprintf_02d(v117, v131);
  v132 = (*v117)++;
  *v132 = 46;
  if (*v117 >= v117[3])
  {
    *v117 = v117[2];
  }

  sprintf_03d(v117, v127);
  sprintf_3d(v117, *(v119 + 66));
  sprintf_5d(v117, *(v119 + 68));
  v133 = v121[3];
  sprintf_3d(v117, *v121);
  sprintf_3d(v117, v133);
  v134 = 0;
  v135 = *v117;
  v136 = 32;
  do
  {
    *v117 = v135 + 1;
    *v135 = v136;
    v135 = *v117;
    if (*v117 >= v117[3])
    {
      v135 = v117[2];
      *v117 = v135;
    }

    v136 = asc_29976B20A[++v134];
  }

  while (v134 != 2);
  sprintf_12f3(v117, *(v119 + 72));
  sprintf_2d(v117, *(v119 + 64));
  sprintf_3d(v117, *(v120 + 8));
  sprintf_5d(v117, *v120);
  v137 = (*v117)++;
  *v137 = 32;
  v138 = *v117;
  if (*v117 >= v117[3])
  {
    v138 = v117[2];
  }

  *v117 = v138 + 1;
  *v138 = 32;
  v139 = *v117;
  if (*v117 >= v117[3])
  {
    v139 = v117[2];
  }

  v140 = &g_TOW_Stat_As_String[10 * *(v119 + 60) + 1];
  v141 = 32;
  do
  {
    *v117 = v139 + 1;
    *v139 = v141;
    v139 = *v117;
    if (*v117 >= v117[3])
    {
      v139 = v117[2];
      *v117 = v139;
    }

    v142 = *v140++;
    v141 = v142;
  }

  while (v142);
  *v117 = v139 + 1;
  *v139 = 10;
  if (*v117 >= v117[3])
  {
    *v117 = v117[2];
  }

  v143 = GNSS_Nav_Debug_Flush_Check(v117);
  v144 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v143);
  v145 = v44[46];
  if (v144)
  {
    v146 = v44[34];
    if (*(v146 + 1020) == *(v146 + 4))
    {
      v147 = v44[27];
      v148 = *v145;
      v149 = 83;
      v150 = 1u;
      do
      {
        *v145 = v148 + 1;
        *v148 = v149;
        v148 = *v145;
        if (*v145 >= v145[3])
        {
          v148 = v145[2];
          *v145 = v148;
        }

        v149 = aSel[v150++];
      }

      while (v150 != 6);
      if (*(v147 + 2032))
      {
        v151 = 70;
      }

      else
      {
        v151 = 71;
      }

      *v145 = v148 + 1;
      *v148 = v151;
      v152 = *v145;
      if (*v145 >= v145[3])
      {
        v152 = v145[2];
      }

      *v145 = v152 + 1;
      *v152 = 32;
      v153 = *v145;
      if (*v145 >= v145[3])
      {
        v153 = v145[2];
      }

      if (*(v146 + 24))
      {
        v154 = 103;
      }

      else
      {
        v154 = 45;
      }

      *v145 = v153 + 1;
      *v153 = v154;
      v155 = *v145;
      if (*v145 >= v145[3])
      {
        v155 = v145[2];
      }

      if (*(v146 + 1040))
      {
        v156 = 102;
      }

      else
      {
        v156 = 45;
      }

      *v145 = v155 + 1;
      *v155 = v156;
      v157 = *v145;
      if (*v145 >= v145[3])
      {
        v157 = v145[2];
      }

      if (*(v146 + 2032))
      {
        v158 = 83;
      }

      else
      {
        v158 = 45;
      }

      *v145 = v157 + 1;
      *v157 = v158;
      v159 = *v145;
      if (*v145 >= v145[3])
      {
        v159 = v145[2];
      }

      if (*(v146 + 2033))
      {
        v160 = 71;
      }

      else
      {
        v160 = 70;
      }

      *v145 = v159 + 1;
      *v159 = v160;
      v161 = *v145;
      if (*v145 >= v145[3])
      {
        v161 = v145[2];
      }

      if (*(v146 + 2034))
      {
        v162 = 78;
      }

      else
      {
        v162 = 45;
      }

      *v145 = v161 + 1;
      *v161 = v162;
      v163 = *v145;
      if (*v145 >= v145[3])
      {
        v163 = v145[2];
      }

      if (*(v146 + 2035))
      {
        v164 = 66;
      }

      else
      {
        v164 = 45;
      }

      *v145 = v163 + 1;
      *v163 = v164;
      v165 = *v145;
      if (*v145 >= v145[3])
      {
        v165 = v145[2];
      }

      *v145 = v165 + 1;
      *v165 = 32;
      if (*v145 >= v145[3])
      {
        *v145 = v145[2];
      }

      Str_FIX_TYPE = Get_Str_FIX_TYPE(*(v146 + 28));
      v167 = *Str_FIX_TYPE;
      v168 = *v145;
      if (*Str_FIX_TYPE)
      {
        v169 = (Str_FIX_TYPE + 1);
        do
        {
          *v145 = v168 + 1;
          *v168 = v167;
          v168 = *v145;
          if (*v145 >= v145[3])
          {
            v168 = v145[2];
            *v145 = v168;
          }

          v170 = *v169++;
          v167 = v170;
        }

        while (v170);
      }

      *v145 = v168 + 1;
      *v168 = 32;
      if (*v145 >= v145[3])
      {
        *v145 = v145[2];
      }

      sprintf_4d(v145, *(v147 + 2148));
      v171 = 0;
      v172 = *v145;
      v173 = 32;
      do
      {
        *v145 = v172 + 1;
        *v172 = v173;
        v172 = *v145;
        if (*v145 >= v145[3])
        {
          v172 = v145[2];
          *v145 = v172;
        }

        v173 = aG[++v171];
      }

      while (v171 != 4);
      sprintf_ACC(v145, *(v146 + 2040));
      v174 = *(v147 + 2136);
      v175 = v174 - 1;
      v176 = v174 - 5 * ((v174 - 1) / 5u);
      for (m = 4; m != -1; --m)
      {
        v178 = v176 + m;
        if (v176 + m - 5 >= 0)
        {
          v178 = v176 + m - 5;
        }

        v179 = (*v145)++;
        *v179 = 32;
        if (*v145 >= v145[3])
        {
          *v145 = v145[2];
        }

        sprintf_ACC(v145, *(v147 + 2096 + 8 * v178));
      }

      v180 = 0;
      v181 = *v145;
      v182 = 32;
      v44 = v1523;
      do
      {
        *v145 = v181 + 1;
        *v181 = v182;
        v181 = *v145;
        if (*v145 >= v145[3])
        {
          v181 = v145[2];
          *v145 = v181;
        }

        v182 = aF[++v180];
      }

      while (v180 != 4);
      sprintf_ACC(v145, *(v146 + 2048));
      v183 = v174 - 5 * (v175 / 5);
      for (n = 4; n != -1; --n)
      {
        v185 = v183 + n;
        if (v183 + n - 5 >= 0)
        {
          v185 = v183 + n - 5;
        }

        v186 = (*v145)++;
        *v186 = 32;
        if (*v145 >= v145[3])
        {
          *v145 = v145[2];
        }

        sprintf_ACC(v145, *(v147 + 2048 + 8 * v185));
      }

      v187 = (*v145)++;
      *v187 = 32;
      if (*v145 >= v145[3])
      {
        *v145 = v145[2];
      }

      v188 = v147 + 2088;
      v189 = v174 - 5 * (v175 / 5);
      for (ii = 4; ii != -1; --ii)
      {
        v191 = v189 + ii;
        if (v189 + ii - 5 >= 0)
        {
          v191 = v189 + ii - 5;
        }

        sprintf1da(v145, *(v188 + v191), v1582, 0, 0);
      }

      v192 = (*v145)++;
      *v192 = 10;
      if (*v145 >= v145[3])
      {
        *v145 = v145[2];
      }

      GNSS_Nav_Debug_Flush_Check(v145);
      v145 = v1523[46];
    }
  }

  v193 = v44[38];
  v194 = *v145;
  v195 = 112;
  v196 = 1u;
  do
  {
    *v145 = v194 + 1;
    *v194 = v195;
    v194 = *v145;
    if (*v145 >= v145[3])
    {
      v194 = v145[2];
      *v145 = v194;
    }

    v195 = aPNd[v196++];
  }

  while (v196 != 7);
  v1582[0] = vmulq_f64(*(v193 + 96), vdupq_n_s64(0x3F91DF46A2529D44uLL));
  sprintf_LaLo(v145, v1582);
  sprintf_sgR8(v145, *(v193 + 112));
  sprintf_sgR8(v145, *(v193 + 120));
  v197 = (*v145)++;
  *v197 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_sgR8(v145, *(v193 + 128));
  v198 = *(v193 + 136) * 10.0;
  v199 = -0.5;
  if (v198 > 0.0)
  {
    v199 = 0.5;
  }

  v200 = v198 + v199;
  if (v200 <= 2147483650.0)
  {
    if (v200 >= -2147483650.0)
    {
      v201 = v200;
    }

    else
    {
      v201 = 0x80000000;
    }
  }

  else
  {
    v201 = 0x7FFFFFFF;
  }

  sprintf_7f(v145, v201, 2);
  sprintf_sgR8(v145, *(v193 + 144));
  v202 = *v145;
  v203 = 32;
  v204 = 1u;
  do
  {
    *v145 = v202 + 1;
    *v202 = v203;
    v202 = *v145;
    if (*v145 >= v145[3])
    {
      v202 = v145[2];
      *v145 = v202;
    }

    v203 = aSt[v204++];
  }

  while (v204 != 6);
  sprintf_2d(v145, *(v193 + 317));
  sprintf_2d(v145, *(v193 + 318));
  v205 = (*v145)++;
  *v205 = 32;
  v206 = *v145;
  if (*v145 >= v145[3])
  {
    v206 = v145[2];
    *v145 = v206;
  }

  v207 = *(v193 + 304);
  if (v207 <= 1)
  {
    if (!v207)
    {
      v208 = 45;
      goto LABEL_297;
    }

    if (v207 == 1)
    {
      v208 = 86;
      goto LABEL_297;
    }
  }

  else
  {
    switch(v207)
    {
      case 2:
        v208 = 76;
        goto LABEL_297;
      case 3:
        v208 = 77;
        goto LABEL_297;
      case 4:
        v208 = 72;
        goto LABEL_297;
    }
  }

  EvCrt_Illegal_Default("Get_Char_GN_RELIAB", 0x1103u);
  v206 = *v145;
  v208 = 120;
LABEL_297:
  *v145 = v206 + 1;
  *v206 = v208;
  v209 = *v145;
  if (*v145 >= v145[3])
  {
    v209 = v145[2];
  }

  *v145 = v209 + 1;
  *v209 = 32;
  v210 = *v145;
  if (*v145 >= v145[3])
  {
    v210 = v145[2];
    *v145 = v210;
  }

  v211 = *(v193 + 300);
  if (v211 <= 1)
  {
    if (!v211)
    {
      v212 = "NC";
      goto LABEL_313;
    }

    if (v211 == 1)
    {
      v212 = "0D";
      goto LABEL_313;
    }
  }

  else
  {
    switch(v211)
    {
      case 2:
        v212 = "1D";
        goto LABEL_313;
      case 3:
        v212 = "2D";
        goto LABEL_313;
      case 4:
        v212 = "3D";
        goto LABEL_313;
    }
  }

  EvCrt_Illegal_Default("Get_Str_GN_GNSS_CONTENT", 0x10EFu);
  v210 = *v145;
  v212 = "xx";
LABEL_313:
  v213 = *v212;
  if (*v212)
  {
    v214 = (v212 + 1);
    do
    {
      *v145 = v210 + 1;
      *v210 = v213;
      v210 = *v145;
      if (*v145 >= v145[3])
      {
        v210 = v145[2];
        *v145 = v210;
      }

      v215 = *v214++;
      v213 = v215;
    }

    while (v215);
  }

  *v145 = v210 + 1;
  *v210 = 32;
  v216 = *v145;
  if (*v145 >= v145[3])
  {
    v216 = v145[2];
    *v145 = v216;
  }

  v217 = *(v193 + 296);
  if (v217 > 2)
  {
    if (v217 == 3)
    {
      v218 = "D2";
      goto LABEL_334;
    }

    if (v217 != 4)
    {
      if (v217 == 5)
      {
        v218 = "D3";
        goto LABEL_334;
      }

      goto LABEL_331;
    }

    v218 = "G3";
  }

  else
  {
    if (!v217)
    {
      v218 = "NF";
      goto LABEL_334;
    }

    if (v217 != 1)
    {
      if (v217 == 2)
      {
        v218 = "G2";
        goto LABEL_334;
      }

LABEL_331:
      EvCrt_Illegal_Default("Get_Str_GN_GPS_FIX_TYPE", 0x10C4u);
      v216 = *v145;
      v218 = "xx";
      goto LABEL_334;
    }

    v218 = "ES";
  }

LABEL_334:
  v219 = *v218;
  if (*v218)
  {
    v220 = (v218 + 1);
    do
    {
      *v145 = v216 + 1;
      *v216 = v219;
      v216 = *v145;
      if (*v145 >= v145[3])
      {
        v216 = v145[2];
        *v145 = v216;
      }

      v221 = *v220++;
      v219 = v221;
    }

    while (v221);
  }

  *v145 = v216 + 1;
  *v216 = 32;
  v222 = *v145;
  if (*v145 >= v145[3])
  {
    v222 = v145[2];
    *v145 = v222;
  }

  v223 = *(v193 + 292);
  if (v223 > 2)
  {
    if (v223 == 3)
    {
      v224 = 86;
      goto LABEL_355;
    }

    if (v223 != 4)
    {
      if (v223 == 5)
      {
        v224 = 43;
        goto LABEL_355;
      }

      goto LABEL_352;
    }

    v224 = 70;
  }

  else
  {
    if (!v223)
    {
      v224 = 45;
      goto LABEL_355;
    }

    if (v223 != 1)
    {
      if (v223 == 2)
      {
        v224 = 80;
        goto LABEL_355;
      }

LABEL_352:
      EvCrt_Illegal_Default("Get_Char_GN_USTATE", 0x112Du);
      v222 = *v145;
      v224 = 120;
      goto LABEL_355;
    }

    v224 = 83;
  }

LABEL_355:
  *v145 = v222 + 1;
  *v222 = v224;
  v225 = *v145;
  if (*v145 >= v145[3])
  {
    v225 = v145[2];
  }

  v226 = 0;
  v227 = 32;
  do
  {
    *v145 = v225 + 1;
    *v225 = v227;
    v225 = *v145;
    if (*v145 >= v145[3])
    {
      v225 = v145[2];
      *v145 = v225;
    }

    v227 = a0x[++v226];
  }

  while (v226 != 4);
  sprintf_08x(v145, *(v193 + 312));
  v228 = 0;
  v229 = *v145;
  v230 = 32;
  do
  {
    *v145 = v229 + 1;
    *v229 = v230;
    v229 = *v145;
    if (*v145 >= v145[3])
    {
      v229 = v145[2];
      *v145 = v229;
    }

    v230 = a0x[++v228];
  }

  while (v228 != 4);
  sprintf_03x(v145, *(v193 + 288));
  v231 = *v145;
  v232 = 32;
  v233 = 1u;
  do
  {
    *v145 = v231 + 1;
    *v231 = v232;
    v231 = *v145;
    if (*v145 >= v145[3])
    {
      v231 = v145[2];
      *v145 = v231;
    }

    v232 = aPa[v233++];
  }

  while (v233 != 6);
  sprintf_ACC(v145, *(v193 + 200));
  v234 = (*v145)++;
  *v234 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_ACC(v145, *(v193 + 208));
  v235 = (*v145)++;
  *v235 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_3d(v145, *(v193 + 216));
  v236 = (*v145)++;
  *v236 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_ACC(v145, *(v193 + 192));
  v237 = *v145;
  v238 = 32;
  v239 = 1u;
  do
  {
    *v145 = v237 + 1;
    *v237 = v238;
    v237 = *v145;
    if (*v145 >= v145[3])
    {
      v237 = v145[2];
      *v145 = v237;
    }

    v238 = aVa[v239++];
  }

  while (v239 != 6);
  sprintf_ACC(v145, *(v193 + 224));
  v240 = (*v145)++;
  *v240 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_ACC(v145, *(v193 + 232));
  v241 = (*v145)++;
  *v241 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_ACC(v145, *(v193 + 240));
  v242 = *v145;
  v243 = 32;
  v244 = 1u;
  do
  {
    *v145 = v242 + 1;
    *v242 = v243;
    v242 = *v145;
    if (*v145 >= v145[3])
    {
      v242 = v145[2];
      *v145 = v242;
    }

    v243 = aTa[v244++];
  }

  while (v244 != 6);
  sprintf_ACC(v145, *(v193 + 152) * 1000.0);
  v245 = (*v145)++;
  *v245 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_ACC(v145, *(v193 + 160) * 1000000000.0);
  v246 = (*v145)++;
  *v246 = 32;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  sprintf_ACC(v145, *(v193 + 168) * 1000000000.0);
  v247 = *v145;
  v248 = 32;
  v249 = 1u;
  do
  {
    *v145 = v247 + 1;
    *v247 = v248;
    v247 = *v145;
    if (*v145 >= v145[3])
    {
      v247 = v145[2];
      *v145 = v247;
    }

    v248 = aEt[v249++];
  }

  while (v249 != 6);
  v250 = *(v193 + 308);
  if (v250 >= 0)
  {
    v251 = *(v193 + 308);
  }

  else
  {
    v251 = -v250;
  }

  sprintf1da(v145, v251, v1558, 0, v250 >> 31);
  v252 = (*v145)++;
  *v252 = 10;
  if (*v145 >= v145[3])
  {
    *v145 = v145[2];
  }

  v253 = GNSS_Nav_Debug_Flush_Check(v145);
  v254 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v253);
  v255 = v44[46];
  if (v254 && g_Enable_Nav_Debug >= 2u && *(v44[26] + 2126920) == 1)
  {
    v256 = v44[18];
    v257 = v44[11];
    v258 = 70;
    v259 = 1u;
    v260 = *v255;
    do
    {
      *v255 = v260 + 1;
      *v260 = v258;
      v260 = *v255;
      if (*v255 >= *(v255 + 24))
      {
        v260 = *(v255 + 16);
        *v255 = v260;
      }

      v258 = aFpe[v259++];
    }

    while (v259 != 7);
    sprintf_LaLo(v255, v256 + 192);
    sprintf_sgR8(v255, *(v256 + 208));
    sprintf_sgR8(v255, *(v256 + 208) - *(v257 + 232));
    v261 = (*v255)++;
    *v261 = 32;
    if (*v255 >= *(v255 + 24))
    {
      *v255 = *(v255 + 16);
    }

    sprintf_sgR8(v255, *(v256 + 248));
    v262 = *(v256 + 256) * 10.0;
    v263 = -0.5;
    if (v262 > 0.0)
    {
      v263 = 0.5;
    }

    v264 = v262 + v263;
    if (v264 <= 2147483650.0)
    {
      if (v264 >= -2147483650.0)
      {
        v265 = v264;
      }

      else
      {
        v265 = 0x80000000;
      }
    }

    else
    {
      v265 = 0x7FFFFFFF;
    }

    sprintf_7f(v255, v265, 2);
    sprintf_sgR8(v255, -*(v256 + 232));
    v266 = *v255;
    v267 = 32;
    v268 = 1u;
    do
    {
      *v255 = v266 + 1;
      *v266 = v267;
      v266 = *v255;
      if (*v255 >= *(v255 + 24))
      {
        v266 = *(v255 + 16);
        *v255 = v266;
      }

      v267 = aSt[v268++];
    }

    while (v268 != 6);
    v269 = 0;
    v270 = 32;
    do
    {
      *v255 = v266 + 1;
      *v266 = v270;
      v266 = *v255;
      if (*v255 >= *(v255 + 24))
      {
        v266 = *(v255 + 16);
        *v255 = v266;
      }

      v270 = asc_29976B2F5[++v269];
    }

    while (v269 != 2);
    sprintf_2d(v255, *(v256 + 24));
    v271 = (*v255)++;
    *v271 = 32;
    v272 = *v255;
    if (*v255 >= *(v255 + 24))
    {
      v272 = *(v255 + 16);
      *v255 = v272;
    }

    v273 = *(v256 + 36);
    if (v273 > 1)
    {
      if (v273 == 2)
      {
        v274 = 72;
        goto LABEL_436;
      }

      if (v273 == 3)
      {
        v274 = 70;
        goto LABEL_436;
      }
    }

    else
    {
      if (!v273)
      {
        v274 = 45;
        goto LABEL_436;
      }

      if (v273 == 1)
      {
        v274 = 76;
LABEL_436:
        *v255 = v272 + 1;
        *v272 = v274;
        v275 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v275 = *(v255 + 16);
        }

        *v255 = v275 + 1;
        *v275 = 32;
        v276 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v276 = *(v255 + 16);
        }

        v277 = 0;
        v278 = 32;
        do
        {
          *v255 = v276 + 1;
          *v276 = v278;
          v276 = *v255;
          if (*v255 >= *(v255 + 24))
          {
            v276 = *(v255 + 16);
            *v255 = v276;
          }

          v278 = asc_29976B2F5[++v277];
        }

        while (v277 != 2);
        *v255 = v276 + 1;
        *v276 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        v279 = Get_Str_FIX_TYPE(*(v256 + 28));
        v280 = *v279;
        v281 = *v255;
        if (*v279)
        {
          v282 = (v279 + 1);
          do
          {
            *v255 = v281 + 1;
            *v281 = v280;
            v281 = *v255;
            if (*v255 >= *(v255 + 24))
            {
              v281 = *(v255 + 16);
              *v255 = v281;
            }

            v283 = *v282++;
            v280 = v283;
          }

          while (v283);
        }

        *v255 = v281 + 1;
        *v281 = 32;
        v284 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v284 = *(v255 + 16);
        }

        v285 = 0;
        v286 = 45;
        do
        {
          *v255 = v284 + 1;
          *v284 = v286;
          v284 = *v255;
          if (*v255 >= *(v255 + 24))
          {
            v284 = *(v255 + 16);
            *v255 = v284;
          }

          v286 = asc_29976B2F8[++v285];
        }

        while (v285 != 2);
        v287 = 0;
        v288 = 0uLL;
        v289 = 0uLL;
        v290 = 0uLL;
        v291 = 0uLL;
        do
        {
          v292 = *(v256 + 264 + v287);
          v293 = vmovl_u8(*v292.i8);
          v294 = vmovl_high_u8(v292);
          v291 = vaddw_high_u16(v291, v294);
          v290 = vaddw_u16(v290, *v294.i8);
          v289 = vaddw_high_u16(v289, v293);
          v288 = vaddw_u16(v288, *v293.i8);
          v287 += 16;
        }

        while (v287 != 48);
        sprintf_2d(v255, vaddvq_s32(vaddq_s32(vaddq_s32(v288, v290), vaddq_s32(v289, v291))));
        v295 = (*v255)++;
        *v295 = 32;
        v296 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v296 = *(v255 + 16);
        }

        *v255 = v296 + 1;
        *v296 = 97;
        v297 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v297 = *(v255 + 16);
        }

        if (*(v256 + 312) == 1)
        {
          if (*(v256 + 320))
          {
            v298 = 85;
          }

          else if (*(v256 + 316))
          {
            v298 = 69;
          }

          else
          {
            v298 = 65;
          }
        }

        else
        {
          v298 = 45;
        }

        *v255 = v297 + 1;
        *v297 = v298;
        v299 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v299 = *(v255 + 16);
        }

        *v255 = v299 + 1;
        *v299 = 32;
        v300 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v300 = *(v255 + 16);
        }

        *v255 = v300 + 1;
        *v300 = 103;
        v301 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v301 = *(v255 + 16);
        }

        if (*(v256 + 328) == 1)
        {
          if (*(v256 + 336))
          {
            v302 = 85;
          }

          else if (*(v256 + 332))
          {
            v302 = 69;
          }

          else
          {
            v302 = 65;
          }
        }

        else
        {
          v302 = 45;
        }

        *v255 = v301 + 1;
        *v301 = v302;
        v303 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v303 = *(v255 + 16);
        }

        *v255 = v303 + 1;
        *v303 = 32;
        v304 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v304 = *(v255 + 16);
        }

        *v255 = v304 + 1;
        *v304 = 109;
        v305 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v305 = *(v255 + 16);
        }

        if (*(v256 + 360) == 1)
        {
          if (*(v256 + 368))
          {
            v306 = 85;
          }

          else if (*(v256 + 364))
          {
            v306 = 69;
          }

          else
          {
            v306 = 65;
          }
        }

        else
        {
          v306 = 45;
        }

        *v255 = v305 + 1;
        *v305 = v306;
        v307 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v307 = *(v255 + 16);
        }

        *v255 = v307 + 1;
        *v307 = 32;
        v308 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v308 = *(v255 + 16);
        }

        *v255 = v308 + 1;
        *v308 = 99;
        v309 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v309 = *(v255 + 16);
        }

        if (*(v256 + 376) == 1)
        {
          if (*(v256 + 384))
          {
            v310 = 85;
          }

          else if (*(v256 + 380))
          {
            v310 = 69;
          }

          else
          {
            v310 = 65;
          }
        }

        else
        {
          v310 = 45;
        }

        *v255 = v309 + 1;
        *v309 = v310;
        v311 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v311 = *(v255 + 16);
        }

        *v255 = v311 + 1;
        *v311 = 32;
        v312 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v312 = *(v255 + 16);
        }

        *v255 = v312 + 1;
        *v312 = 102;
        v313 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v313 = *(v255 + 16);
        }

        if (*(v256 + 392) == 1)
        {
          if (*(v256 + 400))
          {
            v314 = 85;
          }

          else if (*(v256 + 396))
          {
            v314 = 69;
          }

          else
          {
            v314 = 65;
          }
        }

        else
        {
          v314 = 45;
        }

        *v255 = v313 + 1;
        *v313 = v314;
        v315 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v315 = *(v255 + 16);
        }

        *v255 = v315 + 1;
        *v315 = 32;
        v316 = *v255;
        if (*v255 >= *(v255 + 24))
        {
          v316 = *(v255 + 16);
        }

        v317 = 32;
        v318 = 1u;
        do
        {
          *v255 = v316 + 1;
          *v316 = v317;
          v316 = *v255;
          if (*v255 >= *(v255 + 24))
          {
            v316 = *(v255 + 16);
            *v255 = v316;
          }

          v317 = aPa[v318++];
        }

        while (v318 != 6);
        sprintf_ACC(v255, *(v256 + 136));
        v319 = (*v255)++;
        *v319 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_ACC(v255, *(v256 + 144));
        v320 = (*v255)++;
        *v320 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_3d(v255, *(v256 + 152));
        v321 = (*v255)++;
        *v321 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_ACC(v255, *(v256 + 64));
        v322 = *v255;
        v323 = 32;
        v324 = 1u;
        do
        {
          *v255 = v322 + 1;
          *v322 = v323;
          v322 = *v255;
          if (*v255 >= *(v255 + 24))
          {
            v322 = *(v255 + 16);
            *v255 = v322;
          }

          v323 = aVa[v324++];
        }

        while (v324 != 6);
        sprintf_ACC(v255, *(v256 + 96));
        v325 = (*v255)++;
        *v325 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_ACC(v255, *(v256 + 104));
        v326 = (*v255)++;
        *v326 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_ACC(v255, *(v256 + 120));
        v327 = *v255;
        v328 = 32;
        v329 = 1u;
        do
        {
          *v255 = v327 + 1;
          *v327 = v328;
          v327 = *v255;
          if (*v255 >= *(v255 + 24))
          {
            v327 = *(v255 + 16);
            *v255 = v327;
          }

          v328 = aTa[v329++];
        }

        while (v329 != 6);
        sprintf_ACC(v255, *(v256 + 88) * 1000.0);
        v330 = (*v255)++;
        *v330 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_ACC(v255, *(v256 + 80) * 1000000000.0);
        v331 = (*v255)++;
        *v331 = 32;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        sprintf_ACC(v255, *(v256 + 128) * 1000000000.0);
        v332 = *v255;
        v333 = 32;
        v334 = 1u;
        do
        {
          *v255 = v332 + 1;
          *v332 = v333;
          v332 = *v255;
          if (*v255 >= *(v255 + 24))
          {
            v332 = *(v255 + 16);
            *v255 = v332;
          }

          v333 = aCl[v334++];
        }

        while (v334 != 6);
        sprintf_sgR8(v255, *(v256 + 184) * 1000000000.0);
        sprintf_gR8(v255, *(v256 + 160) * 1000000000.0);
        sprintf_sgR8(v255, (*(v256 + 168) - *(v256 + 160)) * 1000000000.0);
        sprintf_sgR8(v255, (*(v256 + 176) - *(v256 + 160)) * 1000000000.0);
        v335 = (*v255)++;
        *v335 = 10;
        if (*v255 >= *(v255 + 24))
        {
          *v255 = *(v255 + 16);
        }

        GNSS_Nav_Debug_Flush_Check(v255);
        v255 = v44[46];
        goto LABEL_559;
      }
    }

    EvCrt_Illegal_Default("Get_Char_FPE_CONF", 0x1117u);
    v272 = *v255;
    v274 = 120;
    goto LABEL_436;
  }

LABEL_559:
  v336 = v44[9];
  v337 = v44[10];
  v338 = v44[22];
  v339 = v44[29];
  strcpy(v1582, "    -------------- ");
  v340 = *v255;
  v341 = 71;
  v342 = 1u;
  do
  {
    *v255 = v340 + 1;
    *v340 = v341;
    v340 = *v255;
    if (*v255 >= *(v255 + 24))
    {
      v340 = *(v255 + 16);
      *v255 = v340;
    }

    v341 = aGeod[v342++];
  }

  while (v342 != 7);
  sprintf_LaLo(v255, v337 + 208);
  sprintf_sgR8(v255, *(v337 + 224));
  sprintf_sgR8(v255, *(v337 + 224) - *(v337 + 232));
  v343 = *(v337 + 392);
  if (v343 == 2)
  {
    v344 = 115;
  }

  else
  {
    if (v343 != 1)
    {
      goto LABEL_568;
    }

    v344 = 83;
  }

  BYTE4(v1582[0]) = v344;
LABEL_568:
  v345 = *(v337 + 396);
  if (v345 == 2)
  {
    v346 = 98;
  }

  else
  {
    if (v345 != 1)
    {
      goto LABEL_573;
    }

    v346 = 66;
  }

  BYTE5(v1582[0]) = v346;
LABEL_573:
  v347 = *(v337 + 408);
  if (v347 == 2)
  {
    v348 = 100;
  }

  else
  {
    if (v347 != 1)
    {
      goto LABEL_578;
    }

    v348 = 68;
  }

  BYTE6(v1582[0]) = v348;
LABEL_578:
  v349 = *(v337 + 400);
  if (v349 == 2)
  {
    v350 = 103;
  }

  else
  {
    if (v349 != 1)
    {
      goto LABEL_583;
    }

    v350 = 71;
  }

  BYTE7(v1582[0]) = v350;
LABEL_583:
  v351 = *(v337 + 416);
  if (v351 == 2)
  {
    v352 = 104;
  }

  else
  {
    if (v351 != 1)
    {
      goto LABEL_588;
    }

    v352 = 72;
  }

  BYTE8(v1582[0]) = v352;
LABEL_588:
  v353 = *(v337 + 420);
  if (v353 == 2)
  {
    v354 = 97;
  }

  else
  {
    if (v353 != 1)
    {
      goto LABEL_593;
    }

    v354 = 65;
  }

  BYTE9(v1582[0]) = v354;
LABEL_593:
  v355 = *(v337 + 424);
  if (v355 == 2)
  {
    v356 = 118;
  }

  else
  {
    if (v355 != 1)
    {
      goto LABEL_598;
    }

    v356 = 86;
  }

  BYTE10(v1582[0]) = v356;
LABEL_598:
  v357 = *(v337 + 428);
  if (v357 == 2)
  {
    v358 = 100;
  }

  else
  {
    if (v357 != 1)
    {
      goto LABEL_603;
    }

    v358 = 68;
  }

  BYTE11(v1582[0]) = v358;
LABEL_603:
  v359 = *(v337 + 432);
  if (v359 == 2)
  {
    v360 = 103;
  }

  else
  {
    if (v359 != 1)
    {
      goto LABEL_608;
    }

    v360 = 71;
  }

  BYTE12(v1582[0]) = v360;
LABEL_608:
  v361 = *(v337 + 436);
  if (v361 == 2)
  {
    v362 = 115;
  }

  else
  {
    if (v361 != 1)
    {
      goto LABEL_613;
    }

    v362 = 83;
  }

  BYTE13(v1582[0]) = v362;
LABEL_613:
  v363 = *(v337 + 440);
  if (v363 == 2)
  {
    v364 = 100;
  }

  else
  {
    if (v363 != 1)
    {
      goto LABEL_618;
    }

    v364 = 68;
  }

  BYTE14(v1582[0]) = v364;
LABEL_618:
  v365 = *(v337 + 444);
  if (v365 == 2)
  {
    v366 = 103;
  }

  else
  {
    if (v365 != 1)
    {
      goto LABEL_623;
    }

    v366 = 71;
  }

  HIBYTE(v1582[0]) = v366;
LABEL_623:
  v367 = *(v337 + 448);
  if (v367 == 2)
  {
    v368 = 100;
  }

  else
  {
    if (v367 != 1)
    {
      goto LABEL_628;
    }

    v368 = 68;
  }

  LOBYTE(v1582[1]) = v368;
LABEL_628:
  v369 = *(v337 + 452);
  if (v369 == 2)
  {
    v370 = 116;
  }

  else
  {
    if (v369 != 1)
    {
      goto LABEL_633;
    }

    v370 = 84;
  }

  BYTE1(v1582[1]) = v370;
LABEL_633:
  v371 = *(v337 + 456);
  if (v371 == 2)
  {
    v372 = 100;
  }

  else
  {
    if (v371 != 1)
    {
      goto LABEL_638;
    }

    v372 = 68;
  }

  BYTE2(v1582[1]) = v372;
LABEL_638:
  v373 = v1582[0];
  v374 = *v255;
  if (LOBYTE(v1582[0]))
  {
    v375 = v1582 + 1;
    do
    {
      *v255 = v374 + 1;
      *v374 = v373;
      v374 = *v255;
      if (*v255 >= *(v255 + 24))
      {
        v374 = *(v255 + 16);
        *v255 = v374;
      }

      v376 = *v375++;
      v373 = v376;
    }

    while (v376);
  }

  v377 = 32;
  v378 = 1u;
  do
  {
    *v255 = v374 + 1;
    *v374 = v377;
    v374 = *v255;
    if (*v255 >= *(v255 + 24))
    {
      v374 = *(v255 + 16);
      *v255 = v374;
    }

    v377 = aPf[v378++];
  }

  while (v378 != 6);
  sprintf_2d(v255, *(v336 + 66));
  v379 = *v255;
  v380 = 32;
  v381 = 1u;
  do
  {
    *v255 = v379 + 1;
    *v379 = v380;
    v379 = *v255;
    if (*v255 >= *(v255 + 24))
    {
      v379 = *(v255 + 16);
      *v255 = v379;
    }

    v380 = aSf[v381++];
  }

  while (v381 != 6);
  v382 = *(v338 + 11116);
  v383 = ch_Stat_Fil[v382];
  if (v383)
  {
    v384 = &ch_Stat_Fil[v382] + 1;
    do
    {
      *v255 = v379 + 1;
      *v379 = v383;
      v379 = *v255;
      if (*v255 >= *(v255 + 24))
      {
        v379 = *(v255 + 16);
        *v255 = v379;
      }

      v385 = *v384++;
      v383 = v385;
    }

    while (v385);
  }

  sprintf_2d(v255, *(v338 + 11161));
  sprintf_2d(v255, *(v338 + 11120));
  sprintf_2d(v255, *(v338 + 11160));
  v386 = fmin(*(v338 + 11128), 9.89999962) * 10.0;
  v387 = -0.5;
  if (v386 > 0.0)
  {
    v387 = 0.5;
  }

  v388 = v386 + v387;
  if (v388 <= 2147483650.0)
  {
    if (v388 >= -2147483650.0)
    {
      v389 = v388;
    }

    else
    {
      v389 = 0x80000000;
    }
  }

  else
  {
    v389 = 0x7FFFFFFF;
  }

  sprintf_3f(v255, v389, 2);
  sprintf_sgR8(v255, *(v338 + 11144));
  sprintf_sgR8(v255, *(v338 + 11152));
  v390 = *v255;
  v391 = 32;
  v392 = 1u;
  do
  {
    *v255 = v390 + 1;
    *v390 = v391;
    v390 = *v255;
    if (*v255 >= *(v255 + 24))
    {
      v390 = *(v255 + 16);
      *v255 = v390;
    }

    v391 = aHf[v392++];
  }

  while (v392 != 6);
  v393 = *(v338 + 11188);
  v394 = ch_Heading[v393];
  if (v394)
  {
    v395 = &ch_Heading[v393] + 1;
    do
    {
      *v255 = v390 + 1;
      *v390 = v394;
      v390 = *v255;
      if (*v255 >= *(v255 + 24))
      {
        v390 = *(v255 + 16);
        *v255 = v390;
      }

      v396 = *v395++;
      v394 = v396;
    }

    while (v396);
  }

  v397 = *(v338 + 11192);
  v398 = -0.5;
  if (v397 > 0.0)
  {
    v398 = 0.5;
  }

  v399 = v397 + v398;
  if (v399 <= 2147483650.0)
  {
    if (v399 >= -2147483650.0)
    {
      v400 = v399;
    }

    else
    {
      v400 = 0x80000000;
    }
  }

  else
  {
    v400 = 0x7FFFFFFF;
  }

  sprintf_5d(v255, v400);
  v401 = (*v255)++;
  *v401 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  v402 = *(v338 + 11208);
  if (v402)
  {
    v403 = (*v339 - v402) / 1000;
  }

  else
  {
    v403 = 0;
  }

  sprintf_4d(v255, v403);
  v404 = *(v338 + 11240);
  v405 = -0.5;
  if (v404 > 0.0)
  {
    v405 = 0.5;
  }

  v406 = v404 + v405;
  if (v406 <= 2147483650.0)
  {
    if (v406 >= -2147483650.0)
    {
      v407 = v406;
    }

    else
    {
      v407 = 0x80000000;
    }
  }

  else
  {
    v407 = 0x7FFFFFFF;
  }

  sprintf_5d(v255, v407);
  v408 = (*v255)++;
  *v408 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  v409 = *(v338 + 11248);
  if (v409)
  {
    v410 = (*v339 - v409) / 1000;
  }

  else
  {
    v410 = 0;
  }

  sprintf_4d(v255, v410);
  sprintf_2d(v255, *(v338 + 11232));
  v411 = (*v255)++;
  *v411 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  sprintf_11f9(v255, *(v338 + 11216));
  v412 = (*v255)++;
  *v412 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  sprintf_11f9(v255, *(v338 + 11224));
  v413 = *v255;
  v414 = 32;
  v415 = 1u;
  do
  {
    *v255 = v413 + 1;
    *v413 = v414;
    v413 = *v255;
    if (*v255 >= *(v255 + 24))
    {
      v413 = *(v255 + 16);
      *v255 = v413;
    }

    v414 = aHi[v415++];
  }

  while (v415 != 6);
  v416 = *(v339 + 31424) * 10.0;
  v417 = -0.5;
  if (v416 > 0.0)
  {
    v417 = 0.5;
  }

  v418 = v416 + v417;
  if (v418 <= 2147483650.0)
  {
    if (v418 >= -2147483650.0)
    {
      v419 = v418;
    }

    else
    {
      v419 = 0x80000000;
    }
  }

  else
  {
    v419 = 0x7FFFFFFF;
  }

  sprintf_2f(v255, v419);
  v420 = (*v255)++;
  *v420 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  v421 = *(v339 + 31400);
  v422 = -0.5;
  if (v421 > 0.0)
  {
    v422 = 0.5;
  }

  v423 = v421 + v422;
  if (v423 <= 2147483650.0)
  {
    if (v423 >= -2147483650.0)
    {
      v424 = v423;
    }

    else
    {
      v424 = 0x80000000;
    }
  }

  else
  {
    v424 = 0x7FFFFFFF;
  }

  sprintf_3d(v255, v424);
  v425 = (*v255)++;
  *v425 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  v426 = *(v339 + 952);
  v427 = -0.5;
  if (v426 > 0.0)
  {
    v427 = 0.5;
  }

  v428 = v426 + v427;
  if (v428 <= 2147483650.0)
  {
    if (v428 >= -2147483650.0)
    {
      v429 = v428;
    }

    else
    {
      v429 = 0x80000000;
    }
  }

  else
  {
    v429 = 0x7FFFFFFF;
  }

  sprintf_3d(v255, v429);
  v430 = (*v255)++;
  *v430 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  v431 = *(v339 + 31416);
  v432 = -0.5;
  if (v431 > 0.0)
  {
    v432 = 0.5;
  }

  v433 = v431 + v432;
  if (v433 <= 2147483650.0)
  {
    if (v433 >= -2147483650.0)
    {
      v434 = v433;
    }

    else
    {
      v434 = 0x80000000;
    }
  }

  else
  {
    v434 = 0x7FFFFFFF;
  }

  sprintf_3d(v255, v434);
  v435 = (*v255)++;
  *v435 = 32;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  v436 = *(v339 + 31408);
  v437 = -0.5;
  if (v436 > 0.0)
  {
    v437 = 0.5;
  }

  v438 = v436 + v437;
  if (v438 <= 2147483650.0)
  {
    if (v438 >= -2147483650.0)
    {
      v439 = v438;
    }

    else
    {
      v439 = 0x80000000;
    }
  }

  else
  {
    v439 = 0x7FFFFFFF;
  }

  sprintf_3d(v255, v439);
  v440 = (*v255)++;
  *v440 = 32;
  v441 = *v255;
  if (*v255 >= *(v255 + 24))
  {
    v441 = *(v255 + 16);
    *v255 = v441;
  }

  v442 = *(v339 + 31432);
  if (v442 > 3)
  {
    if (v442 <= 5)
    {
      if (v442 == 4)
      {
        v443 = 49;
      }

      else
      {
        v443 = 50;
      }

      goto LABEL_767;
    }

    if (v442 == 6)
    {
      v443 = 48;
      goto LABEL_767;
    }

    if (v442 == 7)
    {
      v443 = 77;
      goto LABEL_767;
    }

    goto LABEL_765;
  }

  if (v442 > 1)
  {
    if (v442 == 2)
    {
      v443 = 83;
    }

    else
    {
      v443 = 70;
    }

    goto LABEL_767;
  }

  if (!v442)
  {
    goto LABEL_766;
  }

  if (v442 != 1)
  {
LABEL_765:
    EvCrt_Illegal_Default("Get_Char_Hdg_Filt_Info", 0x11C6u);
    v441 = *v255;
LABEL_766:
    v443 = 120;
    goto LABEL_767;
  }

  v443 = 85;
LABEL_767:
  *v255 = v441 + 1;
  *v441 = v443;
  v444 = *v255;
  if (*v255 >= *(v255 + 24))
  {
    v444 = *(v255 + 16);
  }

  *v255 = v444 + 1;
  *v444 = 32;
  v445 = *v255;
  if (*v255 >= *(v255 + 24))
  {
    v445 = *(v255 + 16);
  }

  if (*(v339 + 31436))
  {
    v446 = 83;
  }

  else
  {
    v446 = 45;
  }

  *v255 = v445 + 1;
  *v445 = v446;
  v447 = *v255;
  if (*v255 >= *(v255 + 24))
  {
    v447 = *(v255 + 16);
  }

  *v255 = v447 + 1;
  *v447 = 32;
  v448 = *v255;
  if (*v255 >= *(v255 + 24))
  {
    v448 = *(v255 + 16);
  }

  if (*(v339 + 31437))
  {
    v449 = 84;
  }

  else
  {
    v449 = 45;
  }

  *v255 = v448 + 1;
  *v448 = v449;
  v450 = *v255;
  if (*v255 >= *(v255 + 24))
  {
    v450 = *(v255 + 16);
  }

  *v255 = v450 + 1;
  *v450 = 10;
  if (*v255 >= *(v255 + 24))
  {
    *v255 = *(v255 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v255);
  v451 = v44[46];
  v453 = v44[9];
  v452 = v44[10];
  v454 = v44[22];
  v455 = v44[29];
  v456 = *v451;
  v457 = 76;
  v458 = 1u;
  do
  {
    *v451 = v456 + 1;
    *v456 = v457;
    v456 = *v451;
    if (*v451 >= *(v451 + 24))
    {
      v456 = *(v451 + 16);
      *v451 = v456;
    }

    v457 = aLocal[v458++];
  }

  while (v458 != 8);
  v459 = v452 + 26;
  v460 = (v454 + 27072);
  v461 = -3;
  do
  {
    v462 = *v459 - *(v460 - 5);
    if (v461 != -1)
    {
      if (v461 == -2)
      {
        v463 = -6.28318531;
        if (v462 >= 3.14159265 || (v463 = 6.28318531, v462 < -3.14159265))
        {
          v462 = v462 + v463;
        }
      }

      v462 = v462 * *v460;
    }

    v464 = (*v451)++;
    *v464 = 32;
    if (*v451 >= *(v451 + 24))
    {
      *v451 = *(v451 + 16);
    }

    sprintf_12f3(v451, v462);
    ++v460;
    ++v459;
  }

  while (!__CFADD__(v461++, 1));
  v466 = (*v451)++;
  *v466 = 32;
  if (*v451 >= *(v451 + 24))
  {
    *v451 = *(v451 + 16);
  }

  sprintf_sgR8(v451, v452[44]);
  sprintf_sgR8(v451, -v452[42]);
  v467 = 120;
  if (!*(v453 + 66))
  {
    v467 = 45;
  }

  sprintf_6d(v451, v452[v467]);
  v468 = v452 + 17;
  v469 = 0.0;
  for (jj = 4; jj > 1; --jj)
  {
    v471 = *v468--;
    v469 = v469 + v471 * v471;
  }

  sprintf_sgR8(v451, sqrt(v469));
  sprintf_6d(v451, *(v455 + 952));
  sprintf_sgR8(v451, v452[40]);
  sprintf_sgR8(v451, v452[41]);
  sprintf_sgR8(v451, v452[115]);
  sprintf_sgR8(v451, v452[116]);
  sprintf_sgR8(v451, v452[118]);
  sprintf_sgR8(v451, v452[119]);
  v472 = (*v451)++;
  *v472 = 10;
  if (*v451 >= *(v451 + 24))
  {
    *v451 = *(v451 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v451);
  print_line_LS(v44, 1);
  print_line_LS(v44, 2);
  print_line_LS(v44, 3);
  print_line_LS(v44, 4);
  print_line_LS(v44, 5);
  v473 = v44[46];
  v474 = &loc_299728000;
  if (g_Enable_Nav_Debug > 1u)
  {
    v475 = v44[22];
    v476 = *v473;
    v477 = 75;
    v478 = 1u;
    do
    {
      *v473 = v476 + 1;
      *v476 = v477;
      v476 = *v473;
      if (*v473 >= v473[3])
      {
        v476 = v473[2];
        *v473 = v476;
      }

      v477 = aKfarp[v478++];
    }

    while (v478 != 7);
    *v473 = v476 + 1;
    *v476 = 32;
    v479 = *v473;
    if (*v473 >= v473[3])
    {
      v479 = v473[2];
    }

    *v473 = v479 + 1;
    *v479 = 80;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11528));
    v480 = fmin(*(v475 + 11520), 9.89999962) * 10.0;
    v481 = -0.5;
    if (v480 > 0.0)
    {
      v481 = 0.5;
    }

    v482 = v480 + v481;
    if (v482 <= 2147483650.0)
    {
      if (v482 >= -2147483650.0)
      {
        v483 = v482;
      }

      else
      {
        v483 = 0x80000000;
      }
    }

    else
    {
      v483 = 0x7FFFFFFF;
    }

    sprintf_3f(v473, v483, 2);
    v484 = (*v473)++;
    *v484 = 32;
    v485 = *v473;
    if (*v473 >= v473[3])
    {
      v485 = v473[2];
    }

    *v473 = v485 + 1;
    *v485 = 72;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_6d(v473, fmin(*(v475 + 11480), 99999.0));
    v486 = (*v473)++;
    *v486 = 32;
    v487 = *v473;
    if (*v473 >= v473[3])
    {
      v487 = v473[2];
    }

    *v473 = v487 + 1;
    *v487 = 86;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_6d(v473, fmin(*(v475 + 11488), 99999.0));
    v488 = (*v473)++;
    *v488 = 32;
    v489 = *v473;
    if (*v473 >= v473[3])
    {
      v489 = v473[2];
    }

    *v473 = v489 + 1;
    *v489 = 66;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_6d(v473, fmin(*(v475 + 11496), 99999.0));
    v490 = (*v473)++;
    *v490 = 32;
    v491 = *v473;
    if (*v473 >= v473[3])
    {
      v491 = v473[2];
    }

    *v473 = v491 + 1;
    *v491 = 83;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_6d(v473, fmin(*(v475 + 11504), 99999.0));
    v492 = (*v473)++;
    *v492 = 32;
    v493 = *v473;
    if (*v473 >= v473[3])
    {
      v493 = v473[2];
    }

    *v473 = v493 + 1;
    *v493 = 72;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11440));
    v494 = (*v473)++;
    *v494 = 32;
    v495 = *v473;
    if (*v473 >= v473[3])
    {
      v495 = v473[2];
    }

    *v473 = v495 + 1;
    *v495 = 86;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11441));
    v496 = (*v473)++;
    *v496 = 32;
    v497 = *v473;
    if (*v473 >= v473[3])
    {
      v497 = v473[2];
    }

    *v473 = v497 + 1;
    *v497 = 66;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11442));
    v498 = (*v473)++;
    *v498 = 32;
    v499 = *v473;
    if (*v473 >= v473[3])
    {
      v499 = v473[2];
    }

    *v473 = v499 + 1;
    *v499 = 83;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11443));
    v500 = (*v473)++;
    *v500 = 32;
    v501 = *v473;
    if (*v473 >= v473[3])
    {
      v501 = v473[2];
    }

    *v473 = v501 + 1;
    *v501 = 86;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11624));
    v502 = fmin(*(v475 + 11616), 9.89999962) * 10.0;
    v503 = -0.5;
    if (v502 > 0.0)
    {
      v503 = 0.5;
    }

    v504 = v502 + v503;
    if (v504 <= 2147483650.0)
    {
      if (v504 >= -2147483650.0)
      {
        v505 = v504;
      }

      else
      {
        v505 = 0x80000000;
      }
    }

    else
    {
      v505 = 0x7FFFFFFF;
    }

    sprintf_3f(v473, v505, 2);
    v506 = (*v473)++;
    *v506 = 32;
    v507 = *v473;
    if (*v473 >= v473[3])
    {
      v507 = v473[2];
    }

    *v473 = v507 + 1;
    *v507 = 72;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, fmin(*(v475 + 11576), 99.0));
    v508 = (*v473)++;
    *v508 = 32;
    v509 = *v473;
    if (*v473 >= v473[3])
    {
      v509 = v473[2];
    }

    *v473 = v509 + 1;
    *v509 = 86;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, fmin(*(v475 + 11584), 99.0));
    v510 = (*v473)++;
    *v510 = 32;
    v511 = *v473;
    if (*v473 >= v473[3])
    {
      v511 = v473[2];
    }

    *v473 = v511 + 1;
    *v511 = 66;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, fmin(*(v475 + 11592), 99.0));
    v512 = (*v473)++;
    *v512 = 32;
    v513 = *v473;
    if (*v473 >= v473[3])
    {
      v513 = v473[2];
    }

    *v473 = v513 + 1;
    *v513 = 83;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, fmin(*(v475 + 11600), 99.0));
    v514 = (*v473)++;
    *v514 = 32;
    v515 = *v473;
    if (*v473 >= v473[3])
    {
      v515 = v473[2];
    }

    *v473 = v515 + 1;
    *v515 = 72;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11536));
    v516 = (*v473)++;
    *v516 = 32;
    v517 = *v473;
    if (*v473 >= v473[3])
    {
      v517 = v473[2];
    }

    *v473 = v517 + 1;
    *v517 = 86;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11537));
    v518 = (*v473)++;
    *v518 = 32;
    v519 = *v473;
    if (*v473 >= v473[3])
    {
      v519 = v473[2];
    }

    *v473 = v519 + 1;
    *v519 = 66;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11538));
    v520 = (*v473)++;
    *v520 = 32;
    v521 = *v473;
    if (*v473 >= v473[3])
    {
      v521 = v473[2];
    }

    *v473 = v521 + 1;
    *v521 = 83;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    sprintf_3d(v473, *(v475 + 11539));
    v522 = (*v473)++;
    *v522 = 10;
    if (*v473 >= v473[3])
    {
      *v473 = v473[2];
    }

    GNSS_Nav_Debug_Flush_Check(v473);
    v473 = v44[46];
    if (g_Enable_Nav_Debug >= 2u)
    {
      v523 = v44[7];
      v524 = v44[5];
      v525 = v44[9];
      v526 = *v473;
      v527 = 78;
      v528 = 1u;
      do
      {
        *v473 = v526 + 1;
        *v526 = v527;
        v526 = *v473;
        if (*v473 >= v473[3])
        {
          v526 = v473[2];
          *v473 = v526;
        }

        v527 = aNavm[v528++];
      }

      while (v528 != 7);
      if (v525[31])
      {
        v529 = 0;
        v530 = 0;
        v531 = (v523 + 208);
        do
        {
          if (*(*(v523 + 64) + v529))
          {
            v532 = 65;
          }

          else
          {
            v532 = 45;
          }

          if (*(*(v523 + 48) + v529) & 1) != 0 || (*(*(v523 + 56) + v529))
          {
            if (*(*v523 + v529))
            {
              v533 = 24;
            }

            else
            {
              v533 = 56;
            }

            v532 += v533;
            if (v532 == 77)
            {
              LOBYTE(v532) = 46;
            }

            if (*(*(v523 + 48) + v529))
            {
              v534 = *(*v523 + v529) == 0;
            }

            else
            {
              v534 = 1;
            }

            if (!v534)
            {
              if (*v531 == 0xFFFFFF)
              {
                v530 = (0x80000000 >> v529) | v530;
              }

              else
              {
                v530 = v530;
              }
            }
          }

          else
          {
            if (!*(*v523 + v529))
            {
              v532 += 32;
            }

            if (v532 == 77)
            {
              LOBYTE(v532) = 46;
            }
          }

          *v473 = v526 + 1;
          *v526 = v532;
          v526 = *v473;
          if (*v473 >= v473[3])
          {
            v526 = v473[2];
            *v473 = v526;
          }

          if ((~v529 & 3) == 0)
          {
            *v473 = v526 + 1;
            *v526 = 32;
            v526 = *v473;
            if (*v473 >= v473[3])
            {
              v526 = v473[2];
              *v473 = v526;
            }
          }

          ++v529;
          v531 += 27;
        }

        while (v529 != 32);
        v535 = 32;
        v536 = 1u;
        do
        {
          *v473 = v526 + 1;
          *v526 = v535;
          v526 = *v473;
          if (*v473 >= v473[3])
          {
            v526 = v473[2];
            *v473 = v526;
          }

          v535 = asc_29976B3BA[v536++];
        }

        while (v536 != 8);
        v537 = 0;
        while (1)
        {
          v538 = *(v524 + 5420 + 4 * v537);
          if (v538 > 1)
          {
            break;
          }

          if (!v538)
          {
            v539 = 77;
            goto LABEL_950;
          }

          if (v538 != 1)
          {
            goto LABEL_946;
          }

          v539 = 86;
LABEL_950:
          *v473 = v526 + 1;
          *v526 = v539;
          v526 = *v473;
          if (*v473 >= v473[3])
          {
            v526 = v473[2];
            *v473 = v526;
          }

          if ((~v537 & 3) == 0)
          {
            *v473 = v526 + 1;
            *v526 = 32;
            v526 = *v473;
            if (*v473 >= v473[3])
            {
              v526 = v473[2];
              *v473 = v526;
            }
          }

          if (++v537 == 32)
          {
            v540 = 0;
            v541 = 32;
            v44 = v1523;
            do
            {
              *v473 = v526 + 1;
              *v526 = v541;
              v526 = *v473;
              if (*v473 >= v473[3])
              {
                v526 = v473[2];
                *v473 = v526;
              }

              v541 = asc_29976B3D2[++v540];
            }

            while (v540 != 8);
            sprintf_08x(v473, v530);
            sprintf_sp1d(v473, *(v523 + 8428));
            sprintf_sp1d(v473, *(v523 + 8444));
            v526 = *v473;
            goto LABEL_965;
          }
        }

        if (v538 == 2)
        {
          v539 = 110;
          goto LABEL_950;
        }

        if (v538 != 3)
        {
LABEL_946:
          EvCrt_Illegal_Default("print_line_NavM", 0x66Fu);
          v526 = *v473;
        }

        v539 = 120;
        goto LABEL_950;
      }

      v542 = 71;
      v543 = 1u;
      do
      {
        *v473 = v526 + 1;
        *v526 = v542;
        v526 = *v473;
        if (*v473 >= v473[3])
        {
          v526 = v473[2];
          *v473 = v526;
        }

        v542 = aGpsDisabled[v543++];
      }

      while (v543 != 15);
LABEL_965:
      v544 = 32;
      v545 = 1u;
      do
      {
        *v473 = v526 + 1;
        *v526 = v544;
        v526 = *v473;
        if (*v473 >= v473[3])
        {
          v526 = v473[2];
          *v473 = v526;
        }

        v544 = aQzss[v545++];
      }

      while (v545 != 8);
      if (v525[33])
      {
        v546 = 0;
        v547 = 0;
        v548 = (v523 + 8712);
        v549 = 9;
        do
        {
          if (*(*(v523 + 8568) + v546))
          {
            v550 = 65;
          }

          else
          {
            v550 = 45;
          }

          if (*(*(v523 + 8552) + v546) & 1) != 0 || (*(*(v523 + 8560) + v546))
          {
            if (*(*(v523 + 8504) + v546))
            {
              v551 = 24;
            }

            else
            {
              v551 = 56;
            }

            v550 += v551;
            if (v550 == 77)
            {
              LOBYTE(v550) = 46;
            }

            if (*(*(v523 + 8552) + v546))
            {
              v552 = *(*(v523 + 8504) + v546) == 0;
            }

            else
            {
              v552 = 1;
            }

            if (!v552)
            {
              if (*v548 == 0xFFFFFF)
              {
                v547 = (1 << v549) | v547;
              }

              else
              {
                v547 = v547;
              }
            }
          }

          else
          {
            if (!*(*(v523 + 8504) + v546))
            {
              v550 += 32;
            }

            if (v550 == 77)
            {
              LOBYTE(v550) = 46;
            }
          }

          *v473 = v526 + 1;
          *v526 = v550;
          v526 = *v473;
          if (*v473 >= v473[3])
          {
            v526 = v473[2];
            *v473 = v526;
          }

          ++v546;
          --v549;
          v548 += 27;
        }

        while (v546 != 10);
        *v473 = v526 + 1;
        *v526 = 32;
        v553 = *v473;
        if (*v473 >= v473[3])
        {
          v553 = v473[2];
          *v473 = v553;
        }

        v554 = 0;
        while (1)
        {
          v555 = *(v524 + 5936 + v554);
          if (v555 > 1)
          {
            break;
          }

          if (!v555)
          {
            v556 = 77;
            goto LABEL_1008;
          }

          if (v555 != 1)
          {
            goto LABEL_1004;
          }

          v556 = 86;
LABEL_1008:
          *v473 = v553 + 1;
          *v553 = v556;
          v553 = *v473;
          if (*v473 >= v473[3])
          {
            v553 = v473[2];
            *v473 = v553;
          }

          v554 += 4;
          if (v554 == 40)
          {
            *v473 = v553 + 1;
            *v553 = 32;
            if (*v473 >= v473[3])
            {
              *v473 = v473[2];
            }

            sprintf_02x(v473, v547);
            v526 = *v473;
            v474 = &loc_299728000;
            goto LABEL_1018;
          }
        }

        if (v555 == 2)
        {
          v556 = 110;
          goto LABEL_1008;
        }

        if (v555 != 3)
        {
LABEL_1004:
          EvCrt_Illegal_Default("print_line_NavM", 0x6A5u);
          v553 = *v473;
        }

        v556 = 120;
        goto LABEL_1008;
      }

      v557 = 68;
      v558 = 1u;
      v474 = &loc_299728000;
      do
      {
        *v473 = v526 + 1;
        *v526 = v557;
        v526 = *v473;
        if (*v473 >= v473[3])
        {
          v526 = v473[2];
          *v473 = v526;
        }

        v557 = aDisabled[v558++];
      }

      while (v558 != 11);
LABEL_1018:
      v559 = 32;
      v560 = 1u;
      do
      {
        *v473 = v526 + 1;
        *v526 = v559;
        v526 = *v473;
        if (*v473 >= v473[3])
        {
          v526 = v473[2];
          *v473 = v526;
        }

        v559 = aSbas[v560++];
      }

      while (v560 != 8);
      if (v525[34])
      {
        for (kk = 0; kk != 39; ++kk)
        {
          v562 = *(v524 + 6316 + kk);
          if (v562 >= 3)
          {
            v563 = 90;
          }

          else
          {
            v563 = 0x41452Du >> (8 * v562);
          }

          *v473 = v526 + 1;
          *v526 = v563;
          v526 = *v473;
          if (*v473 >= v473[3])
          {
            v526 = v473[2];
            *v473 = v526;
          }
        }

        sprintf_sp1d(v473, *(v524 + 6355));
        sprintf_sp1d(v473, *(v524 + 6356));
        v526 = *v473;
      }

      else
      {
        v564 = 68;
        v565 = 1u;
        do
        {
          *v473 = v526 + 1;
          *v526 = v564;
          v526 = *v473;
          if (*v473 >= v473[3])
          {
            v526 = v473[2];
            *v473 = v526;
          }

          v564 = aDisabled_0[v565++];
        }

        while (v565 != 10);
      }

      *v473 = v526 + 1;
      *v526 = 10;
      if (*v473 >= v473[3])
      {
        *v473 = v473[2];
      }

      GNSS_Nav_Debug_Flush_Check(v473);
      v473 = v44[46];
      if (g_Enable_Nav_Debug > 1u)
      {
        v566 = v44[9];
        v567 = v44[7];
        v568 = 71;
        v569 = v44[5];
        v570 = 1u;
        v571 = *v473;
        do
        {
          *v473 = v571 + 1;
          *v571 = v568;
          v571 = *v473;
          if (*v473 >= v473[3])
          {
            v571 = v473[2];
            *v473 = v571;
          }

          v568 = aGlom[v570++];
        }

        while (v570 != 7);
        if (*(v566 + 32))
        {
          v572 = 0;
          v573 = 0;
          v574 = (v567 + 11284);
          v575 = 23;
          do
          {
            if (*(*(v567 + 16288) + v572))
            {
              v576 = 65;
            }

            else
            {
              v576 = 45;
            }

            if (*(*(v567 + 16272) + v572) & 1) != 0 || (*(*(v567 + 16280) + v572))
            {
              if (*(*(v567 + 11208) + v572))
              {
                v577 = 24;
              }

              else
              {
                v577 = 56;
              }

              v576 += v577;
              if (v576 == 77)
              {
                LOBYTE(v576) = 46;
              }

              if (*(*(v567 + 16272) + v572))
              {
                v578 = *(*(v567 + 11208) + v572) == 0;
              }

              else
              {
                v578 = 1;
              }

              if (!v578)
              {
                if (*v574 == 4095)
                {
                  v573 = (1 << v575) | v573;
                }

                else
                {
                  v573 = v573;
                }
              }
            }

            else
            {
              if (!*(*(v567 + 11208) + v572))
              {
                v576 += 32;
              }

              if (v576 == 77)
              {
                LOBYTE(v576) = 46;
              }
            }

            *v473 = v571 + 1;
            *v571 = v576;
            v571 = *v473;
            if (*v473 >= v473[3])
            {
              v571 = v473[2];
              *v473 = v571;
            }

            if ((~v572 & 3) == 0)
            {
              *v473 = v571 + 1;
              *v571 = 32;
              v571 = *v473;
              if (*v473 >= v473[3])
              {
                v571 = v473[2];
                *v473 = v571;
              }
            }

            ++v572;
            --v575;
            v574 += 32;
          }

          while (v572 != 24);
          v579 = 32;
          v580 = 1u;
          do
          {
            *v473 = v571 + 1;
            *v571 = v579;
            v571 = *v473;
            if (*v473 >= v473[3])
            {
              v571 = v473[2];
              *v473 = v571;
            }

            v579 = asc_29976B407[v580++];
          }

          while (v580 != 18);
          v581 = 0;
          while (1)
          {
            v582 = *(v569 + 5548 + 4 * v581);
            if (v582 > 1)
            {
              break;
            }

            if (!v582)
            {
              v583 = 77;
              goto LABEL_1086;
            }

            if (v582 != 1)
            {
              goto LABEL_1082;
            }

            v583 = 86;
LABEL_1086:
            *v473 = v571 + 1;
            *v571 = v583;
            v571 = *v473;
            if (*v473 >= v473[3])
            {
              v571 = v473[2];
              *v473 = v571;
            }

            if ((~(v581 + 32) & 3) == 0)
            {
              *v473 = v571 + 1;
              *v571 = 32;
              v571 = *v473;
              if (*v473 >= v473[3])
              {
                v571 = v473[2];
                *v473 = v571;
              }
            }

            if (++v581 == 24)
            {
              v584 = 0;
              v585 = v569 + 6140;
              v44 = v1523;
              while (1)
              {
                v586 = *(v585 + 4 * v584);
                if (v586 > 1)
                {
                  break;
                }

                if (!v586)
                {
                  v587 = 77;
                  goto LABEL_1103;
                }

                if (v586 != 1)
                {
                  goto LABEL_1099;
                }

                v587 = 86;
LABEL_1103:
                *v473 = v571 + 1;
                *v571 = v587;
                v571 = *v473;
                if (*v473 >= v473[3])
                {
                  v571 = v473[2];
                  *v473 = v571;
                }

                if ((~v584 & 3) == 0)
                {
                  *v473 = v571 + 1;
                  *v571 = 32;
                  v571 = *v473;
                  if (*v473 >= v473[3])
                  {
                    v571 = v473[2];
                    *v473 = v571;
                  }
                }

                if (++v584 == 14)
                {
                  *v473 = v571 + 1;
                  *v571 = 32;
                  if (*v473 >= v473[3])
                  {
                    *v473 = v473[2];
                  }

                  sprintf_06x(v473, v573);
                  v588 = *v473;
                  v589 = 9;
                  v474 = &loc_299728000;
                  do
                  {
                    *v473 = v588 + 1;
                    *v588 = 32;
                    v588 = *v473;
                    if (*v473 >= v473[3])
                    {
                      v588 = v473[2];
                      *v473 = v588;
                    }

                    --v589;
                  }

                  while (v589 > 1);
                  sprintf_sgR8(v473, vcvtd_n_f64_s32(*(v567 + 16236), 0x1EuLL) * 299792458.0);
                  v590 = (*v473)++;
                  *v590 = 10;
                  if (*v473 >= v473[3])
                  {
                    *v473 = v473[2];
                  }

                  GNSS_Nav_Debug_Flush_Check(v473);
                  goto LABEL_1124;
                }
              }

              if (v586 == 2)
              {
                v587 = 110;
                goto LABEL_1103;
              }

              if (v586 != 3)
              {
LABEL_1099:
                EvCrt_Illegal_Default("print_line_GloM", 0x71Du);
                v571 = *v473;
              }

              v587 = 120;
              goto LABEL_1103;
            }
          }

          if (v582 == 2)
          {
            v583 = 110;
            goto LABEL_1086;
          }

          if (v582 != 3)
          {
LABEL_1082:
            EvCrt_Illegal_Default("print_line_GloM", 0x70Eu);
            v571 = *v473;
          }

          v583 = 120;
          goto LABEL_1086;
        }

        v591 = 68;
        v592 = 1u;
        do
        {
          *v473 = v571 + 1;
          *v571 = v591;
          v571 = *v473;
          if (*v473 >= v473[3])
          {
            v571 = v473[2];
            *v473 = v571;
          }

          v591 = aDisabled_0[v592++];
        }

        while (v592 != 10);
        *v473 = v571 + 1;
        *v571 = 10;
        if (*v473 >= v473[3])
        {
          *v473 = v473[2];
        }

LABEL_1124:
        v593 = &unk_2A1928000;
        if (g_Enable_Nav_Debug < 2u)
        {
          goto LABEL_1195;
        }

        v594 = v44[46];
        v595 = v44[6];
        v596 = v44[7];
        v597 = v44[5];
        v598 = v44[29];
        v599 = v44[9];
        v600 = *v594;
        v601 = 71;
        v602 = 1u;
        do
        {
          *v594 = v600 + 1;
          *v600 = v601;
          v600 = *v594;
          if (*v594 >= v594[3])
          {
            v600 = v594[2];
            *v594 = v600;
          }

          v601 = aGalm[v602++];
        }

        while (v602 != 7);
        if (*(v599 + 36))
        {
          v603 = 0;
          v604 = 0;
          v605 = 35;
          while (1)
          {
            if (*(*(v596 + 16624) + v603))
            {
              v606 = 65;
            }

            else
            {
              v606 = 45;
            }

            if ((*(*(v596 + 16608) + v603) & 1) != 0 || *(*(v596 + 16616) + v603) == 1)
            {
              v606 += 24;
            }

            if (!*(*(v596 + 16560) + v603))
            {
              v606 += 32;
            }

            if (v606 == 77)
            {
              v606 = 46;
            }

            else if (*(v596 + 16700 + v603) == 1)
            {
              if ((*(*(v596 + 16608) + v603) & 1) == 0)
              {
                if (*(*(v596 + 16616) + v603))
                {
                  v606 = 77;
                }

                else
                {
                  v606 = 109;
                }

                goto LABEL_1148;
              }

              v606 = 77;
LABEL_1145:
              if (*(*(v596 + 16560) + v603))
              {
                v604 = v604 | (1 << v605);
              }

              else
              {
                v604 = v604;
              }

              goto LABEL_1148;
            }

            if (*(*(v596 + 16608) + v603))
            {
              goto LABEL_1145;
            }

LABEL_1148:
            *v594 = v600 + 1;
            *v600 = v606;
            v600 = *v594;
            if (*v594 >= v594[3])
            {
              v600 = v594[2];
              *v594 = v600;
            }

            if ((~v603 & 3) == 0)
            {
              *v594 = v600 + 1;
              *v600 = 32;
              v600 = *v594;
              if (*v594 >= v594[3])
              {
                v600 = v594[2];
                *v594 = v600;
              }
            }

            ++v603;
            --v605;
            if (v603 == 36)
            {
              v607 = 0;
              v608 = 32;
              do
              {
                *v594 = v600 + 1;
                *v600 = v608;
                v600 = *v594;
                if (*v594 >= v594[3])
                {
                  v600 = v594[2];
                  *v594 = v600;
                }

                v608 = asc_29976B20A[++v607];
              }

              while (v607 != 2);
              v609 = 0;
              v610 = v597 + 5644;
              while (1)
              {
                v611 = *(v610 + 4 * v609);
                if (v611 > 1)
                {
                  break;
                }

                if (!v611)
                {
                  v612 = 77;
                  goto LABEL_1172;
                }

                if (v611 != 1)
                {
                  goto LABEL_1168;
                }

                v612 = 86;
LABEL_1172:
                *v594 = v600 + 1;
                *v600 = v612;
                v600 = *v594;
                if (*v594 >= v594[3])
                {
                  v600 = v594[2];
                  *v594 = v600;
                }

                if ((~(v609 + 56) & 3) == 0)
                {
                  *v594 = v600 + 1;
                  *v600 = 32;
                  v600 = *v594;
                  if (*v594 >= v594[3])
                  {
                    v600 = v594[2];
                    *v594 = v600;
                  }
                }

                if (++v609 == 36)
                {
                  v613 = 32;
                  v614 = 1u;
                  v44 = v1523;
                  v474 = &loc_299728000;
                  do
                  {
                    *v594 = v600 + 1;
                    *v600 = v613;
                    v600 = *v594;
                    if (*v594 >= v594[3])
                    {
                      v600 = v594[2];
                      *v594 = v600;
                    }

                    v613 = asc_29976B44F[v614++];
                  }

                  while (v614 != 4);
                  sprintf_08x(v594, v604);
                  sprintf_sp1d(v594, *(v596 + 24372));
                  v615 = 0.0;
                  if ((*(v596 + 24372) - 2) <= 4)
                  {
                    v615 = *(v596 + 24392);
                    if (*v595 >= 1 && *(v595 + 5) == 1)
                    {
                      v615 = *(v598 + 608);
                    }
                  }

                  sprintf_sgR8(v594, v615 * 299792458.0);
                  v616 = (*v594)++;
                  *v616 = 10;
                  if (*v594 >= v594[3])
                  {
                    *v594 = v594[2];
                  }

                  GNSS_Nav_Debug_Flush_Check(v594);
                  v593 = &unk_2A1928000;
                  goto LABEL_1195;
                }
              }

              if (v611 == 2)
              {
                v612 = 110;
                goto LABEL_1172;
              }

              if (v611 != 3)
              {
LABEL_1168:
                EvCrt_Illegal_Default("print_line_GALM", 0x787u);
                v600 = *v594;
              }

              v612 = 120;
              goto LABEL_1172;
            }
          }
        }

        v617 = 71;
        v618 = 1u;
        do
        {
          *v594 = v600 + 1;
          *v600 = v617;
          v600 = *v594;
          if (*v594 >= v594[3])
          {
            v600 = v594[2];
            *v594 = v600;
          }

          v617 = aGalDisabled[v618++];
        }

        while (v618 != 15);
        *v594 = v600 + 1;
        *v600 = 10;
        v593 = &unk_2A1928000;
        if (*v594 >= v594[3])
        {
          *v594 = v594[2];
        }

LABEL_1195:
        if (v593[540] < 2u)
        {
          goto LABEL_1270;
        }

        v619 = v44[46];
        v621 = v44[6];
        v620 = v44[7];
        v622 = v620 + 4194;
        v623 = v620 + 3077;
        v624 = v44[5];
        v625 = v44[9];
        v626 = *v619;
        v627 = 66;
        v628 = 1u;
        do
        {
          *v619 = v626 + 1;
          *v626 = v627;
          v626 = *v619;
          if (*v619 >= v619[3])
          {
            v626 = v619[2];
            *v619 = v626;
          }

          v627 = aBdsm[v628++];
        }

        while (v628 != 7);
        if (*(v625 + 35))
        {
          v629 = 0;
          v630 = 0;
          v631 = 36;
          do
          {
            if (v629 < 5)
            {
              v632 = -1;
            }

            else
            {
              v632 = 0x7FFFFFF;
            }

            if (*(v620[3060] + v629))
            {
              v633 = 65;
            }

            else
            {
              v633 = 45;
            }

            if (*(v620[3058] + v629) & 1) != 0 || (*(v620[3059] + v629))
            {
              if (*(v620[3052] + v629))
              {
                v634 = 24;
              }

              else
              {
                v634 = 56;
              }

              v633 += v634;
              if (v633 == 77)
              {
                LOBYTE(v633) = 46;
              }

              if (*(v620[3058] + v629))
              {
                v635 = *(v620[3052] + v629) == 0;
              }

              else
              {
                v635 = 1;
              }

              if (!v635)
              {
                if (*v623 == v632)
                {
                  v630 = v630 | (1 << v631);
                }

                else
                {
                  v630 = v630;
                }
              }
            }

            else
            {
              if (!*(v620[3052] + v629))
              {
                v633 += 32;
              }

              if (v633 == 77)
              {
                LOBYTE(v633) = 46;
              }
            }

            *v619 = v626 + 1;
            *v626 = v633;
            v626 = *v619;
            if (*v619 >= v619[3])
            {
              v626 = v619[2];
              *v619 = v626;
            }

            if ((~v629 & 3) == 0)
            {
              *v619 = v626 + 1;
              *v626 = 32;
              v626 = *v619;
              if (*v619 >= v619[3])
              {
                v626 = v619[2];
                *v619 = v626;
              }
            }

            ++v629;
            --v631;
            v623 += 25;
          }

          while (v629 != 37);
          *v619 = v626 + 1;
          *v626 = 32;
          v636 = *v619;
          if (*v619 >= v619[3])
          {
            v636 = v619[2];
            *v619 = v636;
          }

          v637 = 0;
          v638 = v624 + 5788;
          while (1)
          {
            v639 = *(v638 + 4 * v637);
            if (v639 > 1)
            {
              break;
            }

            if (!v639)
            {
              v640 = 77;
              goto LABEL_1245;
            }

            if (v639 != 1)
            {
              goto LABEL_1241;
            }

            v640 = 86;
LABEL_1245:
            *v619 = v636 + 1;
            *v636 = v640;
            v636 = *v619;
            if (*v619 >= v619[3])
            {
              v636 = v619[2];
              *v619 = v636;
            }

            if ((~(v637 + 92) & 3) == 0)
            {
              *v619 = v636 + 1;
              *v636 = 32;
              v636 = *v619;
              if (*v619 >= v619[3])
              {
                v636 = v619[2];
                *v619 = v636;
              }
            }

            if (++v637 == 37)
            {
              *v619 = v636 + 1;
              *v636 = 32;
              v641 = *v619;
              v474 = &loc_299728000;
              if (*v619 >= v619[3])
              {
                v641 = v619[2];
              }

              *v619 = v641 + 1;
              *v641 = 32;
              v44 = v1523;
              if (*v619 >= v619[3])
              {
                *v619 = v619[2];
              }

              sprintf_08x(v619, v630);
              sprintf_sp1d(v619, *v622);
              v642 = 0.0;
              if ((*v622 - 2) <= 4)
              {
                v643 = *(v622 + 2) * 0.1;
                if (*v621 >= 1)
                {
                  v644 = *(v621 + 24) + -14.0;
                  if (v644 < 0.0)
                  {
                    v644 = v644 + 604800.0;
                  }

                  v643 = v643 + *(v622 + 3) * 0.1 * v644;
                }

                v642 = v643 * 0.299792458;
              }

              sprintf_sgR8(v619, v642);
              v645 = (*v619)++;
              *v645 = 10;
              if (*v619 >= v619[3])
              {
                *v619 = v619[2];
              }

              GNSS_Nav_Debug_Flush_Check(v619);
              v593 = &unk_2A1928000;
              goto LABEL_1270;
            }
          }

          if (v639 == 2)
          {
            v640 = 110;
            goto LABEL_1245;
          }

          if (v639 != 3)
          {
LABEL_1241:
            EvCrt_Illegal_Default("print_line_BDSM", 0x7F3u);
            v636 = *v619;
          }

          v640 = 120;
          goto LABEL_1245;
        }

        v646 = 66;
        v647 = 1u;
        do
        {
          *v619 = v626 + 1;
          *v626 = v646;
          v626 = *v619;
          if (*v619 >= v619[3])
          {
            v626 = v619[2];
            *v619 = v626;
          }

          v646 = aBdsDisabled[v647++];
        }

        while (v647 != 15);
        *v619 = v626 + 1;
        *v626 = 10;
        v593 = &unk_2A1928000;
        if (*v619 >= v619[3])
        {
          *v619 = v619[2];
        }

LABEL_1270:
        v473 = v44[46];
        if (v593[540] >= 2u)
        {
          v648 = v44[12];
          v649 = v44[6];
          v650 = 83;
          v651 = 1u;
          v652 = *v473;
          do
          {
            *v473 = v652 + 1;
            *v652 = v650;
            v652 = *v473;
            if (*v473 >= v473[3])
            {
              v652 = v473[2];
              *v473 = v652;
            }

            v650 = aStage[v651++];
          }

          while (v651 != 7);
          v653 = v648 + 160;
          v654 = 149;
          do
          {
            if (*(v653 + 24))
            {
              v655 = *(v649 + 24) - *v653 + 604800 * (*(v649 + 16) - *(v653 + 4));
              if (v655 >= 99)
              {
                v655 = 99;
              }

              if (v655 <= -99)
              {
                v656 = -99;
              }

              else
              {
                v656 = v655;
              }

              sprintf_sp1d(v473, v656);
            }

            v653 += 192;
            --v654;
          }

          while (v654);
          v657 = (*v473)++;
          *v657 = 10;
          if (*v473 >= v473[3])
          {
            *v473 = v473[2];
          }

          GNSS_Nav_Debug_Flush_Check(v473);
          v473 = v44[46];
        }
      }
    }
  }

  v658 = v44[10];
  v659 = v44[29];
  v660 = 65;
  v661 = v44[40];
  v662 = 1u;
  v663 = *v473;
  do
  {
    *v473 = v663 + 1;
    *v663 = v660;
    v663 = *v473;
    if (*v473 >= v473[3])
    {
      v663 = v473[2];
      *v473 = v663;
    }

    v660 = aAcc[v662++];
  }

  while (v662 != 6);
  sprintf_2d(v473, *(v658 + 1));
  sprintf_2d(v473, *(v658 + 2));
  sprintf_2d(v473, *v658);
  sprintf_2d(v473, v658[1]);
  v664 = (*v473)++;
  *v664 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 102));
  v665 = (*v473)++;
  *v665 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 103));
  v666 = (*v473)++;
  *v666 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 104));
  v667 = (*v473)++;
  *v667 = 32;
  v668 = *v473;
  if (*v473 >= v473[3])
  {
    v668 = v473[2];
    *v473 = v668;
  }

  v669 = *(v658 + 106);
  v1532 = v474[22];
  if (v669 <= v1532 || v669 >= 8999100.0)
  {
    sprintf_ACC(v473, v669);
  }

  else
  {
    v670 = v669 / 299792.458;
    if (v670 <= 9999.0)
    {
      if (v670 <= 9.9)
      {
        v988 = v670 * -100.0;
        v989 = -0.5;
        if (v988 > 0.0)
        {
          v989 = 0.5;
        }

        v990 = v988 + v989;
        if (v990 <= 2147483650.0)
        {
          if (v990 >= -2147483650.0)
          {
            v991 = v990;
          }

          else
          {
            v991 = 0x80000000;
          }
        }

        else
        {
          v991 = 0x7FFFFFFF;
        }

        sprintf_4f(v473, v991, 3);
      }

      else
      {
        v900 = -0.5 - v670;
        if (v900 <= 2147483650.0)
        {
          if (v900 >= -2147483650.0)
          {
            v901 = v900;
          }

          else
          {
            v901 = 0x80000000;
          }
        }

        else
        {
          v901 = 0x7FFFFFFF;
        }

        sprintf_5d(v473, v901);
      }
    }

    else
    {
      v671 = 45;
      v672 = 1u;
      do
      {
        *v473 = v668 + 1;
        *v668 = v671;
        v668 = *v473;
        if (*v473 >= v473[3])
        {
          v668 = v473[2];
          *v473 = v668;
        }

        v671 = a9999[v672++];
      }

      while (v672 != 6);
    }
  }

  v673 = (*v473)++;
  *v673 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 105));
  v674 = (*v473)++;
  *v674 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 109));
  v675 = (*v473)++;
  *v675 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 111));
  v676 = (*v473)++;
  *v676 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  v677 = *(v658 + 95) * 100.0;
  if (v677 <= 0.0)
  {
    v678 = -0.5;
  }

  else
  {
    v678 = 0.5;
  }

  v679 = v677 + v678;
  if (v679 <= 2147483650.0)
  {
    if (v679 >= -2147483650.0)
    {
      v680 = v679;
    }

    else
    {
      v680 = 0x80000000;
    }
  }

  else
  {
    v680 = 0x7FFFFFFF;
  }

  sprintf_6f(v473, v680, 3);
  v681 = *(v658 + 96) * 100.0;
  if (v681 <= 0.0)
  {
    v682 = -0.5;
  }

  else
  {
    v682 = 0.5;
  }

  v683 = v681 + v682;
  if (v683 <= 2147483650.0)
  {
    if (v683 >= -2147483650.0)
    {
      v684 = v683;
    }

    else
    {
      v684 = 0x80000000;
    }
  }

  else
  {
    v684 = 0x7FFFFFFF;
  }

  sprintf_6f(v473, v684, 3);
  v685 = *(v658 + 97) * 100.0;
  v686 = -0.5;
  if (v685 > 0.0)
  {
    v686 = 0.5;
  }

  v687 = v685 + v686;
  if (v687 <= 2147483650.0)
  {
    if (v687 >= -2147483650.0)
    {
      v688 = v687;
    }

    else
    {
      v688 = 0x80000000;
    }
  }

  else
  {
    v688 = 0x7FFFFFFF;
  }

  sprintf_6f(v473, v688, 3);
  v689 = (*v473)++;
  *v689 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 110));
  v690 = 0;
  v691 = *v473;
  v692 = 32;
  do
  {
    *v473 = v691 + 1;
    *v691 = v692;
    v691 = *v473;
    if (*v473 >= v473[3])
    {
      v691 = v473[2];
      *v473 = v691;
    }

    v692 = aEl[++v690];
  }

  while (v690 != 4);
  sprintf_ACC(v473, *(v658 + 112));
  v693 = (*v473)++;
  *v693 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 113));
  v694 = (*v473)++;
  *v694 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 114));
  v695 = *v473;
  for (mm = 5; mm > 1; --mm)
  {
    *v473 = v695 + 1;
    *v695 = 32;
    v695 = *v473;
    if (*v473 >= v473[3])
    {
      v695 = v473[2];
      *v473 = v695;
    }
  }

  sprintf_ACC(v473, *(v658 + 107));
  v697 = (*v473)++;
  *v697 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, *(v658 + 108));
  v698 = (*v473)++;
  *v698 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, v659[3056]);
  v699 = (*v473)++;
  *v699 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, v659[3057]);
  v700 = (*v473)++;
  *v700 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, v659[3058]);
  v701 = (*v473)++;
  *v701 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, v659[3059]);
  v702 = (*v473)++;
  *v702 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, v659[3060]);
  v703 = (*v473)++;
  *v703 = 32;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  sprintf_ACC(v473, v659[3061]);
  v704 = 0;
  v705 = *v473;
  v706 = 32;
  do
  {
    *v473 = v705 + 1;
    *v705 = v706;
    v705 = *v473;
    if (*v473 >= v473[3])
    {
      v705 = v473[2];
      *v473 = v705;
    }

    v706 = aNv[++v704];
  }

  while (v704 != 4);
  v707 = (v661 + 22132);
  v708 = 10;
  do
  {
    if (*v707 && *(v707 - 1) >= 1)
    {
      sprintf_4d(v473, *v707);
    }

    v707 += 8;
    --v708;
  }

  while (v708);
  v709 = (*v473)++;
  *v709 = 10;
  if (*v473 >= v473[3])
  {
    *v473 = v473[2];
  }

  GNSS_Nav_Debug_Flush_Check(v473);
  v710 = v44[46];
  v711 = v44[29];
  v712 = *v710;
  v713 = 69;
  v714 = 1u;
  do
  {
    *v710 = v712 + 1;
    *v712 = v713;
    v712 = *v710;
    if (*v710 >= v710[3])
    {
      v712 = v710[2];
      *v710 = v712;
    }

    v713 = aExtp[v714++];
  }

  while (v714 != 7);
  Char_Ass_Status_Edit = Get_Char_Ass_Status_Edit(*(v711 + 25024));
  v716 = (*v710)++;
  *v716 = Char_Ass_Status_Edit;
  if (*v710 >= v710[3])
  {
    *v710 = v710[2];
  }

  v717 = Get_Char_Ass_Status_Edit(*(v711 + 25040));
  v718 = (*v710)++;
  *v718 = v717;
  v719 = *v710;
  if (*v710 >= v710[3])
  {
    v719 = v710[2];
  }

  *v710 = v719 + 1;
  *v719 = 32;
  v720 = *v710;
  if (*v710 >= v710[3])
  {
    v720 = v710[2];
    *v710 = v720;
  }

  if ((*(v711 + 22992) & 1) != 0 || *(v711 + 23008) == 1)
  {
    v721 = 0;
    v722 = 72;
    do
    {
      *v710 = v720 + 1;
      *v720 = v722;
      v720 = *v710;
      if (*v710 >= v710[3])
      {
        v720 = v710[2];
        *v710 = v720;
      }

      v722 = aHor[++v721];
    }

    while (v721 != 4);
    v723 = print_line_ExtP(s_GN_Ptrs *)::ch_MEAS[*(v711 + 22996)];
    *v710 = v720 + 1;
    *v720 = v723;
    v724 = *v710;
    if (*v710 >= v710[3])
    {
      v724 = v710[2];
    }

    v725 = 0;
    v726 = 32;
    do
    {
      *v710 = v724 + 1;
      *v724 = v726;
      v724 = *v710;
      if (*v710 >= v710[3])
      {
        v724 = v710[2];
        *v710 = v724;
      }

      v726 = aT[++v725];
    }

    while (v725 != 4);
    v727 = print_line_ExtP(s_GN_Ptrs *)::ch_TRUST[*(v711 + 23000)];
    *v710 = v724 + 1;
    *v724 = v727;
    v728 = *v710;
    if (*v710 >= v710[3])
    {
      v728 = v710[2];
    }

    v729 = 0;
    v730 = 32;
    do
    {
      *v710 = v728 + 1;
      *v728 = v730;
      v728 = *v710;
      if (*v710 >= v710[3])
      {
        v728 = v710[2];
        *v710 = v728;
      }

      v730 = aC[++v729];
    }

    while (v729 != 4);
    v731 = print_line_ExtP(s_GN_Ptrs *)::ch_CORREL[*(v711 + 23004)];
    *v710 = v728 + 1;
    *v728 = v731;
    v732 = *v710;
    if (*v710 >= v710[3])
    {
      v732 = v710[2];
    }

    v733 = 0;
    v734 = 32;
    do
    {
      *v710 = v732 + 1;
      *v732 = v734;
      v732 = *v710;
      if (*v710 >= v710[3])
      {
        v732 = v710[2];
        *v710 = v732;
      }

      v734 = aE[++v733];
    }

    while (v733 != 4);
    if (*(v711 + 23008))
    {
      LOBYTE(v735) = 49;
      strcpy(v1582, "1");
      v736 = 1;
      do
      {
        *v710 = v732 + 1;
        *v732 = v735;
        v732 = *v710;
        if (*v710 >= v710[3])
        {
          v732 = v710[2];
          *v710 = v732;
        }

        v735 = *(v1582 + v736++);
      }

      while (v735);
    }

    else
    {
      *v710 = v732 + 1;
      *v732 = 45;
      v732 = *v710;
      if (*v710 >= v710[3])
      {
        v732 = v710[2];
      }
    }

    for (nn = 4; nn > 1; --nn)
    {
      *v710 = v732 + 1;
      *v732 = 32;
      v732 = *v710;
      if (*v710 >= v710[3])
      {
        v732 = v710[2];
        *v710 = v732;
      }
    }

    v738 = *v711 - *(v711 + 23012);
    if (v738 >= -999999)
    {
      if (v738 <= 999999)
      {
        v739 = v738 / 1000;
      }

      else
      {
        v739 = 9999;
      }
    }

    else
    {
      v739 = -9999;
    }

    sprintf_4d(v710, v739);
    v740 = (*v710)++;
    *v740 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_ACC(v710, sqrt(*(v711 + 23040)));
    v741 = (*v710)++;
    *v741 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_ACC(v710, sqrt(*(v711 + 23048)));
    v742 = (*v710)++;
    *v742 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_ACC(v710, sqrt(*(v711 + 23064)));
    v743 = (*v710)++;
    *v743 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_ACC(v710, sqrt(*(v711 + 23072)));
    v744 = (*v710)++;
    *v744 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_sgR8(v710, *(v711 + 23080));
    v745 = (*v710)++;
    *v745 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_sgR8(v710, *(v711 + 23088));
    v746 = (*v710)++;
    *v746 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_sgR8(v710, sqrt(fabs(*(v711 + 23104))));
    v747 = (*v710)++;
    *v747 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_sgR8(v710, sqrt(fabs(*(v711 + 23112))));
  }

  if ((*(v711 + 23120) & 1) != 0 || *(v711 + 23136) == 1)
  {
    v748 = *v710;
    v749 = 32;
    v750 = 1u;
    do
    {
      *v710 = v748 + 1;
      *v748 = v749;
      v748 = *v710;
      if (*v710 >= v710[3])
      {
        v748 = v710[2];
        *v710 = v748;
      }

      v749 = aVer_0[v750++];
    }

    while (v750 != 7);
    v751 = print_line_ExtP(s_GN_Ptrs *)::ch_MEAS[*(v711 + 23124)];
    *v710 = v748 + 1;
    *v748 = v751;
    v752 = *v710;
    if (*v710 >= v710[3])
    {
      v752 = v710[2];
    }

    v753 = 0;
    v754 = 32;
    do
    {
      *v710 = v752 + 1;
      *v752 = v754;
      v752 = *v710;
      if (*v710 >= v710[3])
      {
        v752 = v710[2];
        *v710 = v752;
      }

      v754 = aT[++v753];
    }

    while (v753 != 4);
    v755 = print_line_ExtP(s_GN_Ptrs *)::ch_TRUST[*(v711 + 23128)];
    *v710 = v752 + 1;
    *v752 = v755;
    v756 = *v710;
    if (*v710 >= v710[3])
    {
      v756 = v710[2];
    }

    v757 = 0;
    v758 = 32;
    do
    {
      *v710 = v756 + 1;
      *v756 = v758;
      v756 = *v710;
      if (*v710 >= v710[3])
      {
        v756 = v710[2];
        *v710 = v756;
      }

      v758 = aC[++v757];
    }

    while (v757 != 4);
    v759 = print_line_ExtP(s_GN_Ptrs *)::ch_CORREL[*(v711 + 23132)];
    *v710 = v756 + 1;
    *v756 = v759;
    v760 = *v710;
    if (*v710 >= v710[3])
    {
      v760 = v710[2];
    }

    v761 = 0;
    v762 = 32;
    do
    {
      *v710 = v760 + 1;
      *v760 = v762;
      v760 = *v710;
      if (*v710 >= v710[3])
      {
        v760 = v710[2];
        *v710 = v760;
      }

      v762 = aE[++v761];
    }

    while (v761 != 4);
    if (*(v711 + 23136))
    {
      LOBYTE(v763) = 49;
      strcpy(v1582, "1");
      v764 = 1;
      do
      {
        *v710 = v760 + 1;
        *v760 = v763;
        v760 = *v710;
        if (*v710 >= v710[3])
        {
          v760 = v710[2];
          *v710 = v760;
        }

        v763 = *(v1582 + v764++);
      }

      while (v763);
    }

    else
    {
      *v710 = v760 + 1;
      *v760 = 45;
      v760 = *v710;
      if (*v710 >= v710[3])
      {
        v760 = v710[2];
      }
    }

    for (i1 = 4; i1 > 1; --i1)
    {
      *v710 = v760 + 1;
      *v760 = 32;
      v760 = *v710;
      if (*v710 >= v710[3])
      {
        v760 = v710[2];
        *v710 = v760;
      }
    }

    v766 = *v711 - *(v711 + 23140);
    if (v766 >= -999999)
    {
      if (v766 <= 999999)
      {
        v767 = v766 / 1000;
      }

      else
      {
        v767 = 9999;
      }
    }

    else
    {
      v767 = -9999;
    }

    sprintf_4d(v710, v767);
    v768 = (*v710)++;
    *v768 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_ACC(v710, sqrt(*(v711 + 23152)));
    v769 = (*v710)++;
    *v769 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_ACC(v710, sqrt(*(v711 + 23160)));
    v770 = (*v710)++;
    *v770 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_sgR8(v710, *(v711 + 23168));
    v771 = (*v710)++;
    *v771 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    sprintf_sgR8(v710, sqrt(fabs(*(v711 + 23184))));
  }

  v772 = *v710;
  if (*(v711 + 25052) == 1)
  {
    v773 = 0;
    v774 = 32;
    v775 = v1523;
    do
    {
      *v710 = v772 + 1;
      *v772 = v774;
      v772 = *v710;
      if (*v710 >= v710[3])
      {
        v772 = v710[2];
        *v710 = v772;
      }

      v774 = aTepa[++v773];
    }

    while (v773 != 8);
    sprintf1da(v710, *(v711 + 25052), v1582, 0, 0);
    v776 = (*v710)++;
    *v776 = 32;
    if (*v710 >= v710[3])
    {
      *v710 = v710[2];
    }

    v777 = Get_Char_Ass_Status_Edit(*(v711 + 25056));
    v778 = (*v710)++;
    *v778 = v777;
    v779 = *v710;
    if (*v710 >= v710[3])
    {
      v779 = v710[2];
    }

    for (i2 = 3; i2 > 1; --i2)
    {
      *v710 = v779 + 1;
      *v779 = 32;
      v779 = *v710;
      if (*v710 >= v710[3])
      {
        v779 = v710[2];
        *v710 = v779;
      }
    }

    sprintf_4d(v710, *(v711 + 25064));
    v772 = *v710;
  }

  else
  {
    v775 = v1523;
  }

  *v710 = v772 + 1;
  *v772 = 10;
  if (*v710 >= v710[3])
  {
    *v710 = v710[2];
  }

  GNSS_Nav_Debug_Flush_Check(v710);
  v781 = v775[46];
  v782 = (v775[29] + 22720);
  v783 = *v781;
  v784 = 67;
  v785 = 1u;
  do
  {
    *v781 = v783 + 1;
    *v783 = v784;
    v783 = *v781;
    if (*v781 >= v781[3])
    {
      v783 = v781[2];
      *v781 = v783;
    }

    v784 = aCtxt[v785++];
  }

  while (v785 != 7);
  v786 = 0;
  v787 = 85;
  do
  {
    *v781 = v783 + 1;
    *v783 = v787;
    v783 = *v781;
    if (*v781 >= v781[3])
    {
      v783 = v781[2];
      *v781 = v783;
    }

    v787 = aUac[++v786];
  }

  while (v786 != 4);
  sprintf_2d(v781, *(v782 + 2220));
  sprintf_2d(v781, *(v782 + 2228));
  v788 = (*v781)++;
  *v788 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  v789 = Get_Char_Ass_Status_Edit(v782[556]);
  v790 = (*v781)++;
  *v790 = v789;
  v791 = *v781;
  if (*v781 >= v781[3])
  {
    v791 = v781[2];
  }

  *v781 = v791 + 1;
  *v791 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_3f(v781, v782[558] / 10, 3);
  v792 = (*v781)++;
  *v792 = 32;
  v793 = *v781;
  if (*v781 >= v781[3])
  {
    v793 = v781[2];
  }

  v794 = print_line_CTXT(s_GN_Ptrs *)::ch_UAC_TXT[v782[3]];
  *v781 = v793 + 1;
  *v793 = v794;
  v795 = *v781;
  if (*v781 >= v781[3])
  {
    v795 = v781[2];
  }

  *v781 = v795 + 1;
  *v795 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_1x(v781, v782[5]);
  v796 = (*v781)++;
  *v796 = 32;
  v797 = *v781;
  if (*v781 >= v781[3])
  {
    v797 = v781[2];
  }

  v798 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v782[4]];
  *v781 = v797 + 1;
  *v797 = v798;
  v799 = *v781;
  if (*v781 >= v781[3])
  {
    v799 = v781[2];
  }

  v800 = 32;
  v801 = 1u;
  do
  {
    *v781 = v799 + 1;
    *v799 = v800;
    v799 = *v781;
    if (*v781 >= v781[3])
    {
      v799 = v781[2];
      *v781 = v799;
    }

    v800 = aDms[v801++];
  }

  while (v801 != 8);
  sprintf_2d(v781, *(v782 + 2204));
  sprintf_2d(v781, *(v782 + 2212));
  v802 = (*v781)++;
  *v802 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  v803 = Get_Char_Ass_Status_Edit(v782[552]);
  v804 = (*v781)++;
  *v804 = v803;
  v805 = *v781;
  if (*v781 >= v781[3])
  {
    v805 = v781[2];
  }

  *v781 = v805 + 1;
  *v805 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_3f(v781, v782[554] / 10, 3);
  v806 = (*v781)++;
  *v806 = 32;
  v807 = *v781;
  if (*v781 >= v781[3])
  {
    v807 = v781[2];
  }

  v808 = print_line_CTXT(s_GN_Ptrs *)::ch_DMS_STE[*v782];
  *v781 = v807 + 1;
  *v807 = v808;
  v809 = *v781;
  if (*v781 >= v781[3])
  {
    v809 = v781[2];
  }

  *v781 = v809 + 1;
  *v809 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_1x(v781, v782[2]);
  v810 = (*v781)++;
  *v810 = 32;
  v811 = *v781;
  if (*v781 >= v781[3])
  {
    v811 = v781[2];
  }

  v812 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v782[1]];
  *v781 = v811 + 1;
  *v811 = v812;
  v813 = *v781;
  if (*v781 >= v781[3])
  {
    v813 = v781[2];
  }

  v814 = 32;
  v815 = 1u;
  do
  {
    *v781 = v813 + 1;
    *v813 = v814;
    v813 = *v781;
    if (*v781 >= v781[3])
    {
      v813 = v781[2];
      *v781 = v813;
    }

    v814 = aFiv[v815++];
  }

  while (v815 != 8);
  sprintf_2d(v781, *(v782 + 2236));
  sprintf_2d(v781, *(v782 + 2244));
  v816 = (*v781)++;
  *v816 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  v817 = Get_Char_Ass_Status_Edit(v782[560]);
  v818 = (*v781)++;
  *v818 = v817;
  v819 = *v781;
  if (*v781 >= v781[3])
  {
    v819 = v781[2];
  }

  *v781 = v819 + 1;
  *v819 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_3f(v781, v782[562] / 10, 3);
  v820 = (*v781)++;
  *v820 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_1x(v781, v782[6]);
  v821 = (*v781)++;
  *v821 = 32;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  sprintf_1x(v781, v782[8]);
  v822 = (*v781)++;
  *v822 = 32;
  v823 = *v781;
  if (*v781 >= v781[3])
  {
    v823 = v781[2];
  }

  v824 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v782[7]];
  *v781 = v823 + 1;
  *v823 = v824;
  v825 = *v781;
  if (*v781 >= v781[3])
  {
    v825 = v781[2];
  }

  *v781 = v825 + 1;
  *v825 = 10;
  if (*v781 >= v781[3])
  {
    *v781 = v781[2];
  }

  GNSS_Nav_Debug_Flush_Check(v781);
  v826 = v775[46];
  v827 = v775[29];
  if (g_Enable_Nav_Debug >= 2u)
  {
    if (*(v827 + 24988) != 1)
    {
      goto LABEL_1668;
    }

    v828 = *v826;
    v829 = 77;
    v830 = 1u;
    do
    {
      *v826 = v828 + 1;
      *v828 = v829;
      v828 = *v826;
      if (*v826 >= v826[3])
      {
        v828 = v826[2];
        *v826 = v828;
      }

      v829 = aMapv[v830++];
    }

    while (v830 != 7);
    v831 = 83;
    v832 = 1u;
    do
    {
      *v826 = v828 + 1;
      *v828 = v831;
      v828 = *v826;
      if (*v826 >= v826[3])
      {
        v828 = v826[2];
        *v826 = v828;
      }

      v831 = aStat[v832++];
    }

    while (v832 != 6);
    sprintf_2d(v826, *(v827 + 24988));
    sprintf_2d(v826, *(v827 + 24996));
    v833 = (*v826)++;
    *v833 = 32;
    v834 = *v826;
    if (*v826 >= v826[3])
    {
      v834 = v826[2];
    }

    *v826 = v834 + 1;
    *v834 = 101;
    if (*v826 >= v826[3])
    {
      *v826 = v826[2];
    }

    v835 = Get_Char_Ass_Status_Edit(*(v827 + 24992));
    v836 = (*v826)++;
    *v836 = v835;
    v837 = *v826;
    if (*v826 >= v826[3])
    {
      v837 = v826[2];
    }

    v838 = 32;
    v839 = 1u;
    do
    {
      *v826 = v837 + 1;
      *v837 = v838;
      v837 = *v826;
      if (*v826 >= v826[3])
      {
        v837 = v826[2];
        *v826 = v837;
      }

      v838 = aAge[v839++];
    }

    while (v839 != 6);
    sprintf_6d(v826, *(v827 + 25000));
    v840 = 0;
    v841 = *v826;
    v842 = 32;
    do
    {
      *v826 = v841 + 1;
      *v841 = v842;
      v841 = *v826;
      if (*v826 >= v826[3])
      {
        v841 = v826[2];
        *v826 = v841;
      }

      v842 = aAt[++v840];
    }

    while (v840 != 4);
    sprintf_sgR8(v826, *(v827 + 24056));
    v843 = 0;
    v844 = *v826;
    v845 = 32;
    do
    {
      *v826 = v844 + 1;
      *v844 = v845;
      v844 = *v826;
      if (*v826 >= v826[3])
      {
        v844 = v826[2];
        *v826 = v844;
      }

      v845 = aCt[++v843];
    }

    while (v843 != 4);
    sprintf_sgR8(v826, *(v827 + 24064));
    v846 = 0;
    v847 = *v826;
    v848 = 32;
    do
    {
      *v826 = v847 + 1;
      *v847 = v848;
      v847 = *v826;
      if (*v826 >= v826[3])
      {
        v847 = v826[2];
        *v826 = v847;
      }

      v848 = aHd[++v846];
    }

    while (v846 != 4);
    sprintf_sgR8(v826, *(v827 + 24072));
    v849 = 0;
    v850 = *v826;
    v851 = 32;
    do
    {
      *v826 = v850 + 1;
      *v850 = v851;
      v850 = *v826;
      if (*v826 >= v826[3])
      {
        v850 = v826[2];
        *v826 = v850;
      }

      v851 = aGs[++v849];
    }

    while (v849 != 4);
    sprintf_sgR8(v826, *(v827 + 24048));
    v852 = *v826;
    v853 = 32;
    v854 = 1u;
    do
    {
      *v826 = v852 + 1;
      *v852 = v853;
      v852 = *v826;
      if (*v826 >= v826[3])
      {
        v852 = v826[2];
        *v826 = v852;
      }

      v853 = aEpa[v854++];
    }

    while (v854 != 6);
    sprintf_sgR8(v826, *(v827 + 24080));
    v855 = *v826;
    v856 = 32;
    v857 = 1u;
    do
    {
      *v826 = v855 + 1;
      *v855 = v856;
      v855 = *v826;
      if (*v826 >= v826[3])
      {
        v855 = v826[2];
        *v826 = v855;
      }

      v856 = aEpc[v857++];
    }

    while (v857 != 6);
    sprintf_sgR8(v826, *(v827 + 24088));
    v858 = *v826;
    v859 = 77;
    v860 = 1u;
    do
    {
      *v826 = v858 + 1;
      *v858 = v859;
      v858 = *v826;
      if (*v826 >= v826[3])
      {
        v858 = v826[2];
        *v826 = v858;
      }

      v859 = aMv[v860++];
    }

    while (v860 != 4);
    sprintf_sgR8(v826, *(v827 + 23816));
    sprintf_sgR8(v826, *(v827 + 23824));
    sprintf_sgR8(v826, *(v827 + 23832));
    v861 = (*v826)++;
    *v861 = 32;
    if (*v826 >= v826[3])
    {
      *v826 = v826[2];
    }

    sprintf1da(v826, *(v827 + 23840), v1582, 0, 0);
    sprintf1da(v826, *(v827 + 23841), v1582, 0, 0);
    sprintf1da(v826, *(v827 + 23842), v1582, 0, 0);
    sprintf1da(v826, *(v827 + 23843), v1582, 0, 0);
    sprintf1da(v826, *(v827 + 23844), v1582, 0, 0);
    v862 = (*v826)++;
    *v862 = 32;
    v863 = *v826;
    if (*v826 >= v826[3])
    {
      v863 = v826[2];
    }

    if (!*(v827 + 24992))
    {
      v864 = 72;
      v865 = 1u;
      do
      {
        *v826 = v863 + 1;
        *v863 = v864;
        v863 = *v826;
        if (*v826 >= v826[3])
        {
          v863 = v826[2];
          *v826 = v863;
        }

        v864 = aHpos[v865++];
      }

      while (v865 != 6);
      sprintf1da(v826, *(v827 + 24868), v1582, 0, 0);
      v866 = (*v826)++;
      *v866 = 32;
      v867 = *v826;
      if (*v826 >= v826[3])
      {
        v867 = v826[2];
      }

      v868 = 32;
      v869 = 1u;
      do
      {
        *v826 = v867 + 1;
        *v867 = v868;
        v867 = *v826;
        if (*v826 >= v826[3])
        {
          v867 = v826[2];
          *v826 = v867;
        }

        v868 = aHpre[v869++];
      }

      while (v869 != 7);
      sprintf_ACC(v826, sqrt(*(v827 + 23896)));
      v870 = (*v826)++;
      *v870 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      sprintf_ACC(v826, sqrt(*(v827 + 23904)));
      v871 = (*v826)++;
      *v871 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      sprintf_ACC(v826, sqrt(*(v827 + 23920)));
      v872 = (*v826)++;
      *v872 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      sprintf_ACC(v826, sqrt(*(v827 + 23928)));
      v873 = (*v826)++;
      *v873 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      sprintf_sgR8(v826, *(v827 + 23936));
      v874 = (*v826)++;
      *v874 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      sprintf_sgR8(v826, *(v827 + 23944));
      v875 = *v826;
      v876 = 84;
      v877 = 1u;
      do
      {
        *v826 = v875 + 1;
        *v875 = v876;
        v875 = *v826;
        if (*v826 >= v826[3])
        {
          v875 = v826[2];
          *v826 = v875;
        }

        v876 = aTrck[v877++];
      }

      while (v877 != 6);
      sprintf1da(v826, *(v827 + 24869), v1582, 0, 0);
      v878 = (*v826)++;
      *v878 = 32;
      v879 = *v826;
      if (*v826 >= v826[3])
      {
        v879 = v826[2];
      }

      v880 = 0;
      v881 = 32;
      do
      {
        *v826 = v879 + 1;
        *v879 = v881;
        v879 = *v826;
        if (*v826 >= v826[3])
        {
          v879 = v826[2];
          *v826 = v879;
        }

        v881 = aTpre[++v880];
      }

      while (v880 != 8);
      sprintf_ACC(v826, sqrt(*(v827 + 24008)));
      v882 = (*v826)++;
      *v882 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      sprintf_sgR8(v826, *(v827 + 24024));
      v863 = *v826;
    }

    *v826 = v863 + 1;
    *v863 = 10;
    if (*v826 >= v826[3])
    {
      *v826 = v826[2];
    }

    GNSS_Nav_Debug_Flush_Check(v826);
    v826 = v775[46];
    v827 = v775[29];
    if (g_Enable_Nav_Debug >= 2u)
    {
LABEL_1668:
      if ((*(v827 + 25084) & 1) == 0 && (*(v827 + 25116) & 1) == 0 && *(v827 + 25100) != 1)
      {
        goto LABEL_2747;
      }

      v883 = *v826;
      v884 = 86;
      v885 = 1u;
      do
      {
        *v826 = v883 + 1;
        *v883 = v884;
        v883 = *v826;
        if (*v826 >= v826[3])
        {
          v883 = v826[2];
          *v826 = v883;
        }

        v884 = aVela[v885++];
      }

      while (v885 != 7);
      v886 = 0;
      v887 = 65;
      do
      {
        *v826 = v883 + 1;
        *v883 = v887;
        v883 = *v826;
        if (*v826 >= v826[3])
        {
          v883 = v826[2];
          *v826 = v883;
        }

        v887 = aAtv[++v886];
      }

      while (v886 != 4);
      sprintf_2d(v826, *(v827 + 25084));
      sprintf_2d(v826, *(v827 + 25092));
      v888 = (*v826)++;
      *v888 = 32;
      v889 = *v826;
      if (*v826 >= v826[3])
      {
        v889 = v826[2];
      }

      *v826 = v889 + 1;
      *v889 = 101;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      v890 = Get_Char_Ass_Status_Edit(*(v827 + 25088));
      v891 = (*v826)++;
      *v891 = v890;
      v892 = *v826;
      if (*v826 >= v826[3])
      {
        v892 = v826[2];
      }

      v893 = 32;
      v894 = 1u;
      do
      {
        *v826 = v892 + 1;
        *v892 = v893;
        v892 = *v826;
        if (*v826 >= v826[3])
        {
          v892 = v826[2];
          *v826 = v892;
        }

        v893 = aAge[v894++];
      }

      while (v894 != 6);
      sprintf_6d(v826, *(v827 + 25096));
      v895 = (*v826)++;
      *v895 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      if (*(v827 + 25084) == 1)
      {
        memset(v1582, 0, 24);
        Core_Get_ExtA_AT_Vel(120000, v1582);
        sprintf_sgR8(v826, *(v1582 + 1));
        v896 = *v826;
        v897 = 32;
        v898 = 1u;
        do
        {
          *v826 = v896 + 1;
          *v896 = v897;
          v896 = *v826;
          if (*v826 >= v826[3])
          {
            v896 = v826[2];
            *v826 = v896;
          }

          v897 = aRms[v898++];
        }

        while (v898 != 6);
        v899 = *&v1582[1];
      }

      else
      {
        sprintf_sgR8(v826, 0.0);
        v902 = *v826;
        v903 = 32;
        v904 = 1u;
        do
        {
          *v826 = v902 + 1;
          *v902 = v903;
          v902 = *v826;
          if (*v826 >= v826[3])
          {
            v902 = v826[2];
            *v826 = v902;
          }

          v903 = aRms[v904++];
        }

        while (v904 != 6);
        v899 = 0.0;
      }

      sprintf_sgR8(v826, v899);
      v905 = *v826;
      v906 = 32;
      v907 = 1u;
      do
      {
        *v826 = v905 + 1;
        *v905 = v906;
        v905 = *v826;
        if (*v826 >= v826[3])
        {
          v905 = v826[2];
          *v826 = v905;
        }

        v906 = aHed[v907++];
      }

      while (v907 != 6);
      sprintf_2d(v826, *(v827 + 25116));
      sprintf_2d(v826, *(v827 + 25124));
      v908 = (*v826)++;
      *v908 = 32;
      v909 = *v826;
      if (*v826 >= v826[3])
      {
        v909 = v826[2];
      }

      *v826 = v909 + 1;
      *v909 = 101;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      v910 = Get_Char_Ass_Status_Edit(*(v827 + 25120));
      v911 = (*v826)++;
      *v911 = v910;
      v912 = *v826;
      if (*v826 >= v826[3])
      {
        v912 = v826[2];
      }

      v913 = 32;
      v914 = 1u;
      do
      {
        *v826 = v912 + 1;
        *v912 = v913;
        v912 = *v826;
        if (*v826 >= v826[3])
        {
          v912 = v826[2];
          *v826 = v912;
        }

        v913 = aAge[v914++];
      }

      while (v914 != 6);
      sprintf_6d(v826, *(v827 + 25128));
      v915 = (*v826)++;
      *v915 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      if (*(v827 + 25116) == 1)
      {
        memset(v1582, 0, 24);
        Core_Get_ExtA_Heading(120000, v1582);
        sprintf_sgR8(v826, *(v1582 + 1));
        v916 = *v826;
        v917 = 32;
        v918 = 1u;
        do
        {
          *v826 = v916 + 1;
          *v916 = v917;
          v916 = *v826;
          if (*v826 >= v826[3])
          {
            v916 = v826[2];
            *v826 = v916;
          }

          v917 = aRms[v918++];
        }

        while (v918 != 6);
        v919 = *&v1582[1];
      }

      else
      {
        sprintf_sgR8(v826, 0.0);
        v920 = *v826;
        v921 = 32;
        v922 = 1u;
        do
        {
          *v826 = v920 + 1;
          *v920 = v921;
          v920 = *v826;
          if (*v826 >= v826[3])
          {
            v920 = v826[2];
            *v826 = v920;
          }

          v921 = aRms[v922++];
        }

        while (v922 != 6);
        v919 = 0.0;
      }

      sprintf_sgR8(v826, v919);
      v923 = *v826;
      v924 = 32;
      v925 = 1u;
      do
      {
        *v826 = v923 + 1;
        *v923 = v924;
        v923 = *v826;
        if (*v826 >= v826[3])
        {
          v923 = v826[2];
          *v826 = v923;
        }

        v924 = aVvl[v925++];
      }

      while (v925 != 6);
      sprintf_2d(v826, *(v827 + 25100));
      sprintf_2d(v826, *(v827 + 25108));
      v926 = (*v826)++;
      *v926 = 32;
      v927 = *v826;
      if (*v826 >= v826[3])
      {
        v927 = v826[2];
      }

      *v826 = v927 + 1;
      *v927 = 101;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      v928 = Get_Char_Ass_Status_Edit(*(v827 + 25104));
      v929 = (*v826)++;
      *v929 = v928;
      v930 = *v826;
      if (*v826 >= v826[3])
      {
        v930 = v826[2];
      }

      v931 = 32;
      v932 = 1u;
      do
      {
        *v826 = v930 + 1;
        *v930 = v931;
        v930 = *v826;
        if (*v826 >= v826[3])
        {
          v930 = v826[2];
          *v826 = v930;
        }

        v931 = aAge[v932++];
      }

      while (v932 != 6);
      sprintf_6d(v826, *(v827 + 25112));
      v933 = (*v826)++;
      *v933 = 32;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      if (*(v827 + 25100) == 1)
      {
        memset(v1582, 0, 24);
        Core_Get_ExtA_V_Vel(120000, v1582);
        sprintf_sgR8(v826, *(v1582 + 1));
        v934 = *v826;
        v935 = 32;
        v936 = 1u;
        do
        {
          *v826 = v934 + 1;
          *v934 = v935;
          v934 = *v826;
          if (*v826 >= v826[3])
          {
            v934 = v826[2];
            *v826 = v934;
          }

          v935 = aRms[v936++];
        }

        while (v936 != 6);
        v937 = *&v1582[1];
      }

      else
      {
        sprintf_sgR8(v826, 0.0);
        v938 = *v826;
        v939 = 32;
        v940 = 1u;
        do
        {
          *v826 = v938 + 1;
          *v938 = v939;
          v938 = *v826;
          if (*v826 >= v826[3])
          {
            v938 = v826[2];
            *v826 = v938;
          }

          v939 = aRms[v940++];
        }

        while (v940 != 6);
        v937 = 0.0;
      }

      sprintf_sgR8(v826, v937);
      v941 = (*v826)++;
      *v941 = 10;
      if (*v826 >= v826[3])
      {
        *v826 = v826[2];
      }

      GNSS_Nav_Debug_Flush_Check(v826);
      v826 = v775[46];
      v827 = v775[29];
      if (g_Enable_Nav_Debug > 1u)
      {
LABEL_2747:
        v942 = v775[22];
        v943 = *v826;
        v944 = 65;
        v945 = 1u;
        do
        {
          *v826 = v943 + 1;
          *v943 = v944;
          v943 = *v826;
          if (*v826 >= v826[3])
          {
            v943 = v826[2];
            *v826 = v943;
          }

          v944 = aApa[v945++];
        }

        while (v945 != 6);
        v946 = *(v827 + 23616);
        if (*(v827 + 23616) || *(v827 + 23120) != 1)
        {
          v947 = 23664;
          v948 = 23648;
          v949 = 23640;
        }

        else
        {
          v946 = *(v827 + 23124) + 1;
          v947 = 23168;
          v948 = 23152;
          v949 = 23144;
        }

        sprintf_2d(v826, v946);
        sprintf_sgR8(v826, *(v827 + v949));
        sprintf_sgR8(v826, sqrt(*(v827 + v948)));
        sprintf_sgR8(v826, *(v827 + v947));
        v950 = *v826;
        v951 = 32;
        v952 = 1u;
        do
        {
          *v826 = v950 + 1;
          *v950 = v951;
          v950 = *v826;
          if (*v826 >= v826[3])
          {
            v950 = v826[2];
            *v826 = v950;
          }

          v951 = aVva[v952++];
        }

        while (v952 != 7);
        sprintf_2d(v826, *(v827 + 23544));
        sprintf_sgR8(v826, *(v827 + 23568));
        sprintf_sgR8(v826, sqrt(*(v827 + 23576)));
        sprintf_sgR8(v826, *(v827 + 23592));
        v953 = 0;
        v954 = *v826;
        v955 = 32;
        do
        {
          *v826 = v954 + 1;
          *v954 = v955;
          v954 = *v826;
          if (*v826 >= v826[3])
          {
            v954 = v826[2];
            *v826 = v954;
          }

          v955 = aDy[++v953];
        }

        while (v953 != 4);
        v956 = *(v942 + 20);
        v957 = v956 >= 0 ? *(v942 + 20) : -v956;
        sprintf1da(v826, v957, v1582, 0, v956 >> 31);
        v958 = 0;
        v959 = *v826;
        v960 = 32;
        do
        {
          *v826 = v959 + 1;
          *v959 = v960;
          v959 = *v826;
          if (*v826 >= v826[3])
          {
            v959 = v826[2];
            *v826 = v959;
          }

          v960 = aT0[++v958];
        }

        while (v958 != 4);
        sprintf_1u(v826, *(v942 + 26996));
        LODWORD(v961) = *(v827 + 25364);
        sprintf_sgR8(v826, v961);
        v962 = (*v826)++;
        *v962 = 10;
        if (*v826 >= v826[3])
        {
          *v826 = v826[2];
        }

        GNSS_Nav_Debug_Flush_Check(v826);
        v826 = v775[46];
        v827 = v775[29];
        if (g_Enable_Nav_Debug > 1u)
        {
          v963 = 0;
          v964 = (v775[22] + 0x2000);
          v965 = v775[9];
          v966 = v775[10];
          v967 = *v826;
          v968 = 83;
          do
          {
            *v826 = v967 + 1;
            *v967 = v968;
            v967 = *v826;
            if (*v826 >= v826[3])
            {
              v967 = v826[2];
              *v826 = v967;
            }

            v968 = aSigs[++v963];
          }

          while (v963 != 4);
          sprintf_sgR8(v826, *(v966 + 1976));
          sprintf_sgR8(v826, *(v966 + 1984));
          sprintf_sgR8(v826, *(v966 + 2000));
          sprintf_sgR8(v826, *(v966 + 2008));
          sprintf_sgR8(v826, *(v966 + 2024));
          sprintf_sgR8(v826, *(v966 + 2032));
          v969 = *v826;
          v970 = 32;
          v971 = 1u;
          do
          {
            *v826 = v969 + 1;
            *v969 = v970;
            v969 = *v826;
            if (*v826 >= v826[3])
            {
              v969 = v826[2];
              *v826 = v969;
            }

            v970 = aEc[v971++];
          }

          while (v971 != 4);
          if (*(v966 + 1992) >= 0x270Fu)
          {
            v972 = 9999;
          }

          else
          {
            v972 = *(v966 + 1992);
          }

          sprintf_5d(v826, v972);
          if (*(v966 + 2016) >= 0x270Fu)
          {
            v973 = 9999;
          }

          else
          {
            v973 = *(v966 + 2016);
          }

          sprintf_5d(v826, v973);
          if (*(v966 + 2040) >= 0x270Fu)
          {
            v974 = 9999;
          }

          else
          {
            v974 = *(v966 + 2040);
          }

          sprintf_5d(v826, v974);
          v975 = 0;
          v976 = *v826;
          v977 = 32;
          do
          {
            *v826 = v976 + 1;
            *v976 = v977;
            v976 = *v826;
            if (*v826 >= v826[3])
            {
              v976 = v826[2];
              *v826 = v976;
            }

            v977 = aJn0[++v975];
          }

          while (v975 != 8);
          v978 = 0;
          v979 = 32;
          do
          {
            *v826 = v976 + 1;
            *v976 = v979;
            v976 = *v826;
            if (*v826 >= v826[3])
            {
              v976 = v826[2];
              *v826 = v976;
            }

            v979 = aNaEc[++v978];
          }

          while (v978 != 8);
          sprintf1da(v826, v964[1404], v1582, 0, 0);
          v980 = (*v826)++;
          *v980 = 32;
          if (*v826 >= v826[3])
          {
            *v826 = v826[2];
          }

          sprintf1da(v826, v964[1405], v1582, 0, 0);
          v981 = (*v826)++;
          *v981 = 32;
          if (*v826 >= v826[3])
          {
            *v826 = v826[2];
          }

          sprintf1da(v826, v964[1403], v1582, 0, 0);
          v982 = (*v826)++;
          *v982 = 32;
          v983 = *v826;
          if (*v826 >= v826[3])
          {
            v983 = v826[2];
            *v826 = v983;
          }

          if (*(v827 + 24824) <= 0)
          {
            v992 = 32;
            v993 = 1u;
            do
            {
              *v826 = v983 + 1;
              *v983 = v992;
              v983 = *v826;
              if (*v826 >= v826[3])
              {
                v983 = v826[2];
                *v826 = v983;
              }

              v992 = aXXXX[v993++];
            }

            while (v993 != 10);
          }

          else
          {
            sprintf_2d(v826, *(v827 + 23080));
            v984 = (*v826)++;
            *v984 = 32;
            if (*v826 >= v826[3])
            {
              *v826 = v826[2];
            }

            sprintf_2d(v826, *(v827 + 23088));
            v985 = (*v826)++;
            *v985 = 32;
            if (*v826 >= v826[3])
            {
              *v826 = v826[2];
            }

            sprintf_2d(v826, sqrt(*(v827 + 23040)));
            v986 = (*v826)++;
            *v986 = 32;
            if (*v826 >= v826[3])
            {
              *v826 = v826[2];
            }

            sprintf_2d(v826, sqrt(*(v827 + 23048)));
            v987 = (*v826)++;
            *v987 = 32;
            v983 = *v826;
            if (*v826 >= v826[3])
            {
              v983 = v826[2];
              *v826 = v983;
            }
          }

          if (*(v827 + 24828) <= 0)
          {
            v996 = 32;
            v997 = 1u;
            do
            {
              *v826 = v983 + 1;
              *v983 = v996;
              v983 = *v826;
              if (*v826 >= v826[3])
              {
                v983 = v826[2];
                *v826 = v983;
              }

              v996 = aXX[v997++];
            }

            while (v997 != 6);
          }

          else
          {
            sprintf_2d(v826, *(v827 + 23168));
            v994 = (*v826)++;
            *v994 = 32;
            if (*v826 >= v826[3])
            {
              *v826 = v826[2];
            }

            sprintf_2d(v826, sqrt(*(v827 + 23152)));
            v995 = (*v826)++;
            *v995 = 32;
            v983 = *v826;
            if (*v826 >= v826[3])
            {
              v983 = v826[2];
              *v826 = v983;
            }
          }

          if (*(v827 + 24816) <= 0)
          {
            v1000 = 32;
            v1001 = 1u;
            do
            {
              *v826 = v983 + 1;
              *v983 = v1000;
              v983 = *v826;
              if (*v826 >= v826[3])
              {
                v983 = v826[2];
                *v826 = v983;
              }

              v1000 = aXX[v1001++];
            }

            while (v1001 != 6);
          }

          else
          {
            sprintf_sgR8(v826, *(v827 + 22968));
            v998 = (*v826)++;
            *v998 = 32;
            if (*v826 >= v826[3])
            {
              *v826 = v826[2];
            }

            sprintf_2d(v826, sqrt(*(v827 + 22952)));
            v999 = (*v826)++;
            *v999 = 32;
            v983 = *v826;
            if (*v826 >= v826[3])
            {
              v983 = v826[2];
            }
          }

          v1002 = 0;
          v1003 = 32;
          do
          {
            *v826 = v983 + 1;
            *v983 = v1003;
            v983 = *v826;
            if (*v826 >= v826[3])
            {
              v983 = v826[2];
              *v826 = v983;
            }

            v1003 = aEs_0[++v1002];
          }

          while (v1002 != 4);
          v1004 = *(v965 + 60);
          if (v1004 > 3)
          {
            if (v1004 <= 5)
            {
              if (v1004 == 4)
              {
                v1005 = 52;
              }

              else
              {
                v1005 = 53;
              }

              goto LABEL_1882;
            }

            if (v1004 == 6)
            {
              v1005 = 54;
              goto LABEL_1882;
            }

            if (v1004 == 7)
            {
              v1005 = 55;
              goto LABEL_1882;
            }
          }

          else
          {
            if (v1004 > 1)
            {
              if (v1004 == 2)
              {
                v1005 = 50;
              }

              else
              {
                v1005 = 51;
              }

              goto LABEL_1882;
            }

            if (!v1004)
            {
              v1005 = 48;
              goto LABEL_1882;
            }

            if (v1004 == 1)
            {
              v1005 = 49;
LABEL_1882:
              *v826 = v983 + 1;
              *v983 = v1005;
              v1006 = *v826;
              if (*v826 >= v826[3])
              {
                v1006 = v826[2];
              }

              *v826 = v1006 + 1;
              *v1006 = 10;
              if (*v826 >= v826[3])
              {
                *v826 = v826[2];
              }

              GNSS_Nav_Debug_Flush_Check(v826);
              v826 = v775[46];
              v827 = v775[29];
              if (g_Enable_Nav_Debug >= 2u)
              {
                v1007 = 0;
                v1008 = v775[13];
                v1009 = v775[22];
                v1010 = *v775;
                v1011 = 86;
                v1012 = *v826;
                do
                {
                  *v826 = v1012 + 1;
                  *v1012 = v1011;
                  v1012 = *v826;
                  if (*v826 >= v826[3])
                  {
                    v1012 = v826[2];
                    *v826 = v1012;
                  }

                  v1011 = aVarf[++v1007];
                }

                while (v1007 != 4);
                sprintf_sgR8(v826, *(v827 + 2840));
                sprintf_sgR8(v826, v1009[1361]);
                sprintf_sgR8(v826, *(v827 + 8416));
                sprintf_sgR8(v826, v1009[1364]);
                sprintf_sgR8(v826, *(v827 + 13992));
                sprintf_sgR8(v826, v1009[1367]);
                v1013 = 0;
                v1014 = *v826;
                v1015 = 32;
                do
                {
                  *v826 = v1014 + 1;
                  *v1014 = v1015;
                  v1014 = *v826;
                  if (*v826 >= v826[3])
                  {
                    v1014 = v826[2];
                    *v826 = v1014;
                  }

                  v1015 = aS[++v1013];
                }

                while (v1013 != 2);
                sprintf_3d(v826, v1010);
                v1016 = *v826;
                v1017 = 32;
                v1018 = 1u;
                do
                {
                  *v826 = v1016 + 1;
                  *v1016 = v1017;
                  v1016 = *v826;
                  if (*v826 >= v826[3])
                  {
                    v1016 = v826[2];
                    *v826 = v1016;
                  }

                  v1017 = aI[v1018++];
                }

                while (v1018 != 4);
                v1019 = *(v827 + 656) * 10.0;
                v1020 = -0.5;
                if (v1019 > 0.0)
                {
                  v1020 = 0.5;
                }

                v1021 = v1019 + v1020;
                if (v1021 <= 2147483650.0)
                {
                  if (v1021 >= -2147483650.0)
                  {
                    v1022 = v1021;
                  }

                  else
                  {
                    v1022 = 0x80000000;
                  }
                }

                else
                {
                  v1022 = 0x7FFFFFFF;
                }

                sprintf_2f(v826, v1022);
                v1023 = *(v827 + 44);
                if (v1023 > -10)
                {
                  v1024 = *v826;
                  v1027 = 32;
                  if (v1023 <= 99)
                  {
                    v1029 = 1u;
                    do
                    {
                      *v826 = v1024 + 1;
                      *v1024 = v1027;
                      v1024 = *v826;
                      if (*v826 >= v826[3])
                      {
                        v1024 = v826[2];
                        *v826 = v1024;
                      }

                      v1027 = aTs[v1029++];
                    }

                    while (v1029 != 4);
                    sprintf_sp1d(v826, *(v827 + 44));
                    v1024 = *v826;
                  }

                  else
                  {
                    v1028 = 1u;
                    do
                    {
                      *v826 = v1024 + 1;
                      *v1024 = v1027;
                      v1024 = *v826;
                      if (*v826 >= v826[3])
                      {
                        v1024 = v826[2];
                        *v826 = v1024;
                      }

                      v1027 = aTs99[v1028++];
                    }

                    while (v1028 != 7);
                  }
                }

                else
                {
                  v1024 = *v826;
                  v1025 = 32;
                  v1026 = 1u;
                  do
                  {
                    *v826 = v1024 + 1;
                    *v1024 = v1025;
                    v1024 = *v826;
                    if (*v826 >= v826[3])
                    {
                      v1024 = v826[2];
                      *v826 = v1024;
                    }

                    v1025 = aTs9[v1026++];
                  }

                  while (v1026 != 7);
                }

                v1030 = 0;
                v1031 = 32;
                do
                {
                  *v826 = v1024 + 1;
                  *v1024 = v1031;
                  v1024 = *v826;
                  if (*v826 >= v826[3])
                  {
                    v1024 = v826[2];
                    *v826 = v1024;
                  }

                  v1031 = aNf_0[++v1030];
                }

                while (v1030 != 4);
                sprintf_sp1d(v826, v1008[72]);
                sprintf_sp1d(v826, v1008[73]);
                sprintf_sp1d(v826, v1008[74]);
                v1032 = (*v826)++;
                *v1032 = 10;
                if (*v826 >= v826[3])
                {
                  *v826 = v826[2];
                }

                GNSS_Nav_Debug_Flush_Check(v826);
                v826 = v775[46];
                v827 = v775[29];
                if (g_Enable_Nav_Debug >= 2u)
                {
                  v1033 = *v826;
                  v1034 = 79;
                  v1035 = 1u;
                  do
                  {
                    *v826 = v1033 + 1;
                    *v1033 = v1034;
                    v1033 = *v826;
                    if (*v826 >= v826[3])
                    {
                      v1033 = v826[2];
                      *v826 = v1033;
                    }

                    v1034 = aOrigSig[v1035++];
                  }

                  while (v1035 != 10);
                  v1036 = 0;
                  v1037 = v827 + 24496;
                  do
                  {
                    sprintf_sgR8F(v826, sqrt(*(v1037 + v1036)));
                    v1036 += 8;
                  }

                  while (v1036 != 88);
                  v1038 = (*v826)++;
                  *v1038 = 10;
                  if (*v826 >= v826[3])
                  {
                    *v826 = v826[2];
                  }

                  GNSS_Nav_Debug_Flush_Check(v826);
                  v826 = v775[46];
                  v827 = v775[29];
                }
              }

              goto LABEL_1939;
            }
          }

          EvCrt_Illegal_Default("Get_Char_CTXT_SES", 0x11ACu);
          v983 = *v826;
          v1005 = 45;
          goto LABEL_1882;
        }
      }
    }
  }

LABEL_1939:
  v1039 = *v826;
  v1040 = 83;
  v1041 = 1u;
  do
  {
    *v826 = v1039 + 1;
    *v1039 = v1040;
    v1039 = *v826;
    if (*v826 >= v826[3])
    {
      v1039 = v826[2];
      *v826 = v1039;
    }

    v1040 = aSvecCor[v1041++];
  }

  while (v1041 != 10);
  for (i3 = 0; i3 != 88; i3 += 8)
  {
    sprintf_sgR8F(v826, *(v827 + 25272 + i3));
  }

  v1043 = *v826;
  for (i4 = 3; i4 > 1; --i4)
  {
    *v826 = v1043 + 1;
    *v1043 = 32;
    v1043 = *v826;
    if (*v826 >= v826[3])
    {
      v1043 = v826[2];
      *v826 = v1043;
    }
  }

  v1045 = 0;
  v1046 = v827 + 25166;
  do
  {
    sprintf1da(v826, *(v1046 + v1045++), v1582, 0, 0);
  }

  while (v1045 != 11);
  v1047 = (*v826)++;
  *v1047 = 10;
  if (*v826 >= v826[3])
  {
    *v826 = v826[2];
  }

  v1048 = v775[46];
  v1049 = v775[29];
  v1050 = *v1048;
  v1051 = 83;
  v1052 = 1u;
  do
  {
    *v1048 = v1050 + 1;
    *v1050 = v1051;
    v1050 = *v1048;
    if (*v1048 >= v1048[3])
    {
      v1050 = v1048[2];
      *v1048 = v1050;
    }

    v1051 = aSvecSig[v1052++];
  }

  while (v1052 != 10);
  v1053 = 0;
  v1054 = v1049 + 24136;
  do
  {
    sprintf_sgR8F(v1048, sqrt(*(v1054 + v1053)));
    v1053 += 8;
  }

  while (v1053 != 88);
  v1055 = (*v1048)++;
  *v1055 = 10;
  if (*v1048 >= v1048[3])
  {
    *v1048 = v1048[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1048);
  v1056 = v775[46];
  v1057 = v775[29];
  if (g_Enable_Nav_Debug < 2u)
  {
    goto LABEL_2004;
  }

  v1058 = v775[22];
  if (!*(v1058 + 144))
  {
    v1059 = *v1056;
    v1060 = 81;
    v1061 = 1u;
    do
    {
      *v1056 = v1059 + 1;
      *v1059 = v1060;
      v1059 = *v1056;
      if (*v1056 >= v1056[3])
      {
        v1059 = v1056[2];
        *v1056 = v1059;
      }

      v1060 = aQBSize[v1061++];
    }

    while (v1061 != 10);
    v1062 = 0;
    v1063 = v1058 + 184;
    do
    {
      sprintf_sgR8F(v1056, sqrt(*(v1063 + v1062)));
      v1062 += 8;
    }

    while (v1062 != 48);
    sprintf_sgR8F(v1056, *(v1057 + 20016));
    sprintf_sgR8F(v1056, *(v1057 + 20024));
    v1064 = (*v1056)++;
    *v1064 = 10;
    if (*v1056 >= v1056[3])
    {
      *v1056 = v1056[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1056);
    v1056 = v775[46];
    v1057 = v775[29];
    if (g_Enable_Nav_Debug < 2u)
    {
      goto LABEL_2004;
    }

    v1058 = v775[22];
  }

  v1065 = v775[10];
  v1066 = *v1056;
  v1067 = 119;
  v1068 = 1u;
  do
  {
    *v1056 = v1066 + 1;
    *v1066 = v1067;
    v1066 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1066 = v1056[2];
      *v1056 = v1066;
    }

    v1067 = aWrdop[v1068++];
  }

  while (v1068 != 10);
  sprintf_sgR8F(v1056, sqrt(*(v1058 + 7248)));
  for (i5 = 0; i5 != 24; i5 += 8)
  {
    sprintf_sgR8(v1056, sqrt(*(v1058 + 7256 + i5)));
  }

  sprintf_sgR8(v1056, *(v1058 + 7280));
  v1070 = *v1056;
  v1071 = 32;
  v1072 = 1u;
  do
  {
    *v1056 = v1070 + 1;
    *v1070 = v1071;
    v1070 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1070 = v1056[2];
      *v1056 = v1070;
    }

    v1071 = aPrefc[v1072++];
  }

  while (v1072 != 8);
  sprintf_LaLo(v1056, v1057 + 31296);
  sprintf_sgR8(v1056, *(v1057 + 31312));
  sprintf_sgR8(v1056, *(v1057 + 31312) - *(v1065 + 232));
  v1073 = (*v1056)++;
  *v1073 = 32;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  v1074 = (v1058 + 27072);
  for (i6 = 3912; i6 != 3915; ++i6)
  {
    v1076 = *(v1057 + 8 * i6) - *(v1074 - 5);
    if (i6 != 3914)
    {
      if (i6 == 3913)
      {
        v1077 = -6.28318531;
        if (v1076 >= 3.14159265 || (v1077 = 6.28318531, v1076 < -3.14159265))
        {
          v1076 = v1076 + v1077;
        }
      }

      v1076 = v1076 * *v1074;
    }

    sprintf_6d(v1056, v1076);
    v1078 = (*v1056)++;
    *v1078 = 32;
    v1079 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1079 = v1056[2];
      *v1056 = v1079;
    }

    ++v1074;
  }

  v1080 = 32;
  v1081 = 1u;
  do
  {
    *v1056 = v1079 + 1;
    *v1079 = v1080;
    v1079 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1079 = v1056[2];
      *v1056 = v1079;
    }

    v1080 = aVel[v1081++];
  }

  while (v1081 != 6);
  v1082 = 0;
  v1083 = v1057 + 31320;
  do
  {
    sprintf_sgR8(v1056, *(v1083 + v1082));
    v1082 += 8;
  }

  while (v1082 != 24);
  v1084 = (*v1056)++;
  *v1084 = 10;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1056);
  v1056 = v775[46];
  v1057 = v775[29];
LABEL_2004:
  v1085 = v775[9];
  v1086 = *v1056;
  v1087 = 67;
  v1088 = 1u;
  do
  {
    *v1056 = v1086 + 1;
    *v1086 = v1087;
    v1086 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1086 = v1056[2];
      *v1056 = v1086;
    }

    v1087 = aClkbias[v1088++];
  }

  while (v1088 != 10);
  v1089 = (*(v1057 + 736) * 2997924580.0);
  sprintf_5f(v1056, v1089, 2);
  v1090 = (*v1056)++;
  *v1090 = 32;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  v1091 = (*(v1057 + 744) * 2997924580.0);
  sprintf_5f(v1056, v1091, 2);
  v1092 = (*v1056)++;
  *v1092 = 32;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  v1093 = (*(v1057 + 752) * 2997924580.0);
  sprintf_5f(v1056, v1093, 2);
  v1094 = (*v1056)++;
  *v1094 = 32;
  v1095 = *v1056;
  if (*v1056 >= v1056[3])
  {
    v1095 = v1056[2];
  }

  v1096 = 32;
  v1097 = 1u;
  do
  {
    *v1056 = v1095 + 1;
    *v1095 = v1096;
    v1095 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1095 = v1056[2];
      *v1056 = v1095;
    }

    v1096 = aDclk[v1097++];
  }

  while (v1097 != 7);
  if (v1091)
  {
    v1098 = v1089 == 0;
  }

  else
  {
    v1098 = 1;
  }

  if (v1098)
  {
    v1099 = 0;
  }

  else
  {
    v1099 = v1091 - v1089;
  }

  *v1056 = v1095 + 1;
  *v1095 = 32;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  sprintf_5f(v1056, v1099, 2);
  if (v1093)
  {
    v1100 = v1089 == 0;
  }

  else
  {
    v1100 = 1;
  }

  if (v1100)
  {
    v1101 = 0;
  }

  else
  {
    v1101 = v1093 - v1089;
  }

  v1102 = (*v1056)++;
  *v1102 = 32;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  sprintf_5f(v1056, v1101, 2);
  v1103 = *v1056;
  v1104 = 32;
  v1105 = 1u;
  do
  {
    *v1056 = v1103 + 1;
    *v1103 = v1104;
    v1103 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1103 = v1056[2];
      *v1056 = v1103;
    }

    v1104 = aIni[v1105++];
  }

  while (v1105 != 7);
  sprintf_2d(v1056, *(v1057 + 768));
  sprintf_2d(v1056, *(v1057 + 769));
  sprintf_2d(v1056, *(v1057 + 770));
  v1106 = 0;
  v1107 = *v1056;
  v1108 = 32;
  do
  {
    *v1056 = v1107 + 1;
    *v1107 = v1108;
    v1107 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1107 = v1056[2];
      *v1056 = v1107;
    }

    v1108 = aLsKf[++v1106];
  }

  while (v1106 != 8);
  sprintf_2d(v1056, *(v1057 + 31344));
  v1109 = *v1056;
  v1110 = 32;
  v1111 = 1u;
  do
  {
    *v1056 = v1109 + 1;
    *v1109 = v1110;
    v1109 = *v1056;
    if (*v1056 >= v1056[3])
    {
      v1109 = v1056[2];
      *v1056 = v1109;
    }

    v1110 = aJit[v1111++];
  }

  while (v1111 != 7);
  sprintf_4f(v1056, (*(v1085 + 250) * 2.99792458), 2);
  LOBYTE(v1112) = *(v1085 + 251);
  sprintf_4f(v1056, (v1112 * 2.99792458), 2);
  v1113 = (*v1056)++;
  *v1113 = 10;
  if (*v1056 >= v1056[3])
  {
    *v1056 = v1056[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1056);
  v1114 = v775[46];
  if (g_Enable_Nav_Debug >= 2u)
  {
    v1115 = v775[7];
    v1116 = *v1114;
    v1117 = 71;
    v1118 = 1u;
    do
    {
      *v1114 = v1116 + 1;
      *v1116 = v1117;
      v1116 = *v1114;
      if (*v1114 >= v1114[3])
      {
        v1116 = v1114[2];
        *v1114 = v1116;
      }

      v1117 = aGlofrq[v1118++];
    }

    while (v1118 != 8);
    v1119 = 0;
    v1120 = v1115 + 16336;
    do
    {
      if (*(v1120 + 4 * v1119) != 2139062143)
      {
        sprintf_3d(v1114, v1119 + 1);
        sprintf_3d(v1114, *(v1120 + 4 * v1119));
        v1121 = (*v1114)++;
        *v1121 = 59;
        v1116 = *v1114;
        if (*v1114 >= v1114[3])
        {
          v1116 = v1114[2];
          *v1114 = v1116;
        }
      }

      ++v1119;
    }

    while (v1119 != 24);
    *v1114 = v1116 + 1;
    *v1116 = 10;
    if (*v1114 >= v1114[3])
    {
      *v1114 = v1114[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1114);
    v1114 = v775[46];
    if (g_Enable_Nav_Debug >= 2u)
    {
      v1122 = 0;
      v1123 = v775[7];
      v1124 = *v1114;
      v1125 = 71;
      do
      {
        *v1114 = v1124 + 1;
        *v1124 = v1125;
        v1124 = *v1114;
        if (*v1114 >= v1114[3])
        {
          v1124 = v1114[2];
          *v1114 = v1124;
        }

        v1125 = aGloslot[++v1122];
      }

      while (v1122 != 8);
      v1126 = 0;
      v1127 = v1123 + 16432;
      v1128 = -7;
      do
      {
        if (*(v1127 + v1126) != 2139062143)
        {
          sprintf_3d(v1114, v1128);
          sprintf_3d(v1114, *(v1127 + v1126));
          v1129 = (*v1114)++;
          *v1129 = 59;
          v1124 = *v1114;
          if (*v1114 >= v1114[3])
          {
            v1124 = v1114[2];
            *v1114 = v1124;
          }
        }

        v1126 += 4;
        ++v1128;
      }

      while (v1126 != 56);
      *v1114 = v1124 + 1;
      *v1124 = 10;
      if (*v1114 >= v1114[3])
      {
        *v1114 = v1114[2];
      }

      GNSS_Nav_Debug_Flush_Check(v1114);
      v1114 = v775[46];
    }
  }

  v1130 = v775[10];
  v1131 = v775[22];
  v1132 = v775[29];
  v1133 = 82;
  v1134 = v775[6];
  v1135 = 1u;
  v1136 = *v1114;
  do
  {
    *v1114 = v1136 + 1;
    *v1136 = v1133;
    v1136 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1136 = v1114[2];
      *v1114 = v1136;
    }

    v1133 = aReset[v1135++];
  }

  while (v1135 != 8);
  sprintf1da(v1114, *(v1131 + 128), v1582, 0, 0);
  sprintf_3d(v1114, *(v1131 + 132));
  sprintf_5d(v1114, *(v1131 + 136));
  sprintf_6d(v1114, *(v1131 + 140));
  sprintf_2d(v1114, *(v1131 + 168));
  v1137 = 0;
  v1138 = *v1114;
  v1139 = 32;
  do
  {
    *v1114 = v1138 + 1;
    *v1138 = v1139;
    v1138 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1138 = v1114[2];
      *v1114 = v1138;
    }

    v1139 = aQb[++v1137];
  }

  while (v1137 != 4);
  if (*(v1131 + 175))
  {
    v1140 = 49;
  }

  else
  {
    v1140 = 48;
  }

  *v1114 = v1138 + 1;
  *v1138 = v1140;
  if (*v1114 >= v1114[3])
  {
    *v1114 = v1114[2];
  }

  v1141 = *(v1131 + 176);
  if (*(v1131 + 178))
  {
    v1141 |= 2u;
  }

  if (*(v1131 + 180))
  {
    v1142 = v1141 | 4;
  }

  else
  {
    v1142 = v1141;
  }

  sprintf1da(v1114, v1142, v1582, 0, 0);
  if (*(v1131 + 179))
  {
    v1143 = *(v1131 + 177) | 2;
  }

  else
  {
    v1143 = *(v1131 + 177);
  }

  sprintf1da(v1114, v1143, v1582, 0, 0);
  sprintf_6d(v1114, *(v1131 + 144));
  v1144 = 0;
  v1145 = *v1114;
  v1146 = 32;
  do
  {
    *v1114 = v1145 + 1;
    *v1145 = v1146;
    v1145 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1145 = v1114[2];
      *v1114 = v1145;
    }

    v1146 = aSt_0[++v1144];
  }

  while (v1144 != 4);
  sprintf1da(v1114, *(v1134 + 5), v1582, 0, 0);
  v1147 = *v1114;
  v1148 = &g_TOW_Stat_As_String[10 * *v1134 + 1];
  v1149 = 32;
  do
  {
    *v1114 = v1147 + 1;
    *v1147 = v1149;
    v1147 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1147 = v1114[2];
      *v1114 = v1147;
    }

    v1150 = *v1148++;
    v1149 = v1150;
  }

  while (v1150);
  v1151 = 0;
  v1152 = 32;
  do
  {
    *v1114 = v1147 + 1;
    *v1147 = v1152;
    v1147 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1147 = v1114[2];
      *v1114 = v1147;
    }

    v1152 = aSp[++v1151];
  }

  while (v1151 != 4);
  sprintf1da(v1114, *(v1130 + 19), v1582, 0, 0);
  sprintf1da(v1114, *(v1131 + 232), v1582, 0, 0);
  sprintf1da(v1114, *(v1131 + 233), v1582, 0, 0);
  sprintf1da(v1114, *(v1132 + 25165), v1582, 0, 0);
  v1153 = *v1114;
  v1154 = 32;
  v1155 = 1u;
  do
  {
    *v1114 = v1153 + 1;
    *v1153 = v1154;
    v1153 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1153 = v1114[2];
      *v1114 = v1153;
    }

    v1154 = aFf[v1155++];
  }

  while (v1155 != 6);
  sprintf_3f(v1114, 10 * *(v1131 + 11048) / 0x3E8u, 2);
  sprintf_sp1d(v1114, *(v1132 + 40));
  v1156 = *v1114;
  v1157 = 32;
  v1158 = 1u;
  do
  {
    *v1114 = v1156 + 1;
    *v1156 = v1157;
    v1156 = *v1114;
    if (*v1114 >= v1114[3])
    {
      v1156 = v1114[2];
      *v1114 = v1156;
    }

    v1157 = aOr[v1158++];
  }

  while (v1158 != 6);
  sprintf1da(v1114, *(v1132 + 976), v1582, 0, 0);
  v1159 = (*v1114)++;
  *v1159 = 10;
  if (*v1114 >= v1114[3])
  {
    *v1114 = v1114[2];
  }

  GNSS_Nav_Debug_Flush_Check(v1114);
  v1160 = v775[46];
  v1527 = v775[4];
  v1528 = v775[5];
  v1520 = v775[7];
  v1161 = v775[22];
  v1162 = v775[29];
  v1163 = v775[13];
  v1525 = v775[35];
  v1553 = v1163 + 76;
  if ((*(v1162 + 25170) & 1) == 0)
  {
    v1548 = v1548 - *(v1162 + 25216);
  }

  v1536 = v775[33];
  v1164 = 0;
  v1545 = v775[10];
  v1540 = v775[8];
  v1521 = v775[12];
  v1542 = v775[22];
  *v1583 = *(v1162 + 688);
  v1584 = *(v1162 + 704);
  do
  {
    *&v1585[v1164] = *(v1162 + v1164 * 4 + 664) - *(v1161 + 27008 + v1164 * 4);
    v1164 += 2;
  }

  while (v1164 != 6);
  v1165 = 0;
  memset(v1582, 0, sizeof(v1582));
  v1580 = 0u;
  v1581 = 0u;
  v1578 = 0u;
  v1579 = 0u;
  v1576 = 0u;
  v1577 = 0u;
  v1574 = 0u;
  v1575 = 0u;
  v1572 = 0u;
  v1573 = 0u;
  v1570 = 0u;
  v1571 = 0u;
  v1550 = v1162 + 2960;
  v1551 = v1162 + 7616;
  v1166 = v1162 + 20032;
  v1167 = fabs(v1548);
  v1547 = v1162 + 3056;
  v1568 = 0u;
  v1569 = 0u;
  v1566 = 0u;
  v1567 = 0u;
  v1534 = v1162 + 6848;
  v1539 = v1162 + 8536;
  v1544 = (v1162 + 13192);
  v1537 = v1162 + 8632;
  v1526 = v1162;
  v1519 = v1162 + 12424;
  v1565 = 0u;
  v1563 = 0u;
  v1564 = 0u;
  v1561 = 0u;
  v1562 = 0u;
  v1168 = 0.0;
  v1559 = 0u;
  v1560 = 0u;
  v1169 = v1162 + 20032;
  v1170 = 0.0;
  v1171 = 0.0;
  *v1558 = 0u;
  v1172 = 0.0;
  do
  {
    if (Is_Legal(*(v1553 + 4 * v1165)))
    {
      if ((*(v1550 + v1165) & 1) != 0 || (v1557 = 0.0, !R8_EQ((v1551 + 8 * v1165), &v1557)))
      {
        v1173 = 0;
        v1174 = 0.0;
        do
        {
          v1174 = v1174 + *&v1585[v1173] * *(v1169 + v1173 * 4);
          v1173 += 2;
        }

        while (v1173 != 6);
        if (v1167 > 0.5)
        {
          v1174 = v1174 - *(v1166 + 56 * v1165 + 48) * v1548;
        }

        v1175 = v1174 + *(v1551 + 8 * v1165);
        *(v1582 + v1165) = v1175;
        v1176 = *(v1547 + 4 * v1165);
        if ((v1176 - 1) >= 0x1D)
        {
          if (v1176)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          }

          else
          {
            v1181 = 1.0 / *(v1534 + 8 * v1165);
            v1172 = v1172 + v1181 * v1175;
            v1171 = v1171 + v1181;
          }
        }
      }

      if ((*(v1539 + v1165) & 1) != 0 || (v1557 = 0.0, !R8_EQ(&v1544[v1165], &v1557)))
      {
        v1177 = 0;
        v1178 = 0.0;
        do
        {
          v1178 = v1178 + *&v1583[v1177] * *(v1169 + v1177 * 4);
          v1177 += 2;
        }

        while (v1177 != 6);
        v1179 = v1178 + v1544[v1165];
        *&v1558[2 * v1165] = v1179;
        v1180 = *(v1537 + 4 * v1165);
        if ((v1180 - 1) >= 0x1D)
        {
          if (v1180)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          }

          else
          {
            v1182 = 1.0 / *(v1519 + 8 * v1165);
            v1170 = v1170 + v1182 * v1179;
            v1168 = v1168 + v1182;
          }
        }
      }
    }

    ++v1165;
    v1169 += 56;
  }

  while (v1165 != 48);
  v1183 = 0;
  v1184 = 0;
  if (v1171 <= 0.0 || v1172 == 0.0)
  {
    v1187 = 0.0;
  }

  else
  {
    v1187 = v1172 / v1171;
  }

  if (v1168 <= 0.0 || v1170 == 0.0)
  {
    v1190 = 0.0;
  }

  else
  {
    v1190 = v1170 / v1168;
  }

  v1191 = v1544;
  do
  {
    if (Is_Legal(*(v1553 + 4 * v1184)))
    {
      if ((*(v1526 + v1184 + 2960) & 1) != 0 || (v1557 = 0.0, !R8_EQ((v1551 + v1183), &v1557)))
      {
        *(v1582 + v1184) = *(v1582 + v1184) - v1187;
      }

      if ((*(v1551 + v1184 + 920) & 1) != 0 || (v1557 = 0.0, !R8_EQ(v1191, &v1557)))
      {
        *&v1558[2 * v1184] = (*&v1558[2 * v1184] - v1190) * 5.25503547;
      }
    }

    ++v1184;
    ++v1191;
    v1183 += 8;
  }

  while (v1184 != 48);
  v1192 = 0;
  v1193 = v1545 + 1160;
  v1522 = v1542 + 7744;
  v1546 = v1526 + 3528;
  v1549 = v1526 + 3552;
  v1524 = v1540 + 416;
  v1531 = v1542 + 6696;
  v1530 = v1542 + 6312;
  v1543 = v1163 + 316;
  v1541 = v1163 + 604;
  v1535 = v1528 + 3996;
  v1529 = v1528 + 60;
  v1194 = &unk_2A1928000;
  v1533 = v1193;
  do
  {
    v1195 = (v1553 + 4 * v1192);
    if (!*v1195)
    {
      goto LABEL_2501;
    }

    v1196 = *(v1193 + 4 * v1192);
    if (v1194[540] <= 2u && v1196 < 4)
    {
      goto LABEL_2501;
    }

    v1198 = v1195[2];
    if (v1195[2])
    {
      v1538 = GNSS_Id_To_Num_Prn_Idx(*v1195);
    }

    else
    {
      v1538 = 0;
    }

    v1199 = *v1160;
    v1200 = 83;
    v1201 = 1u;
    do
    {
      *v1160 = v1199 + 1;
      *v1199 = v1200;
      v1199 = *v1160;
      if (*v1160 >= v1160[3])
      {
        v1199 = v1160[2];
        *v1160 = v1199;
      }

      v1200 = aSv[v1201++];
    }

    while (v1201 != 4);
    v1202 = ch_CONSTELL_ID[*v1195];
    *v1160 = v1199 + 1;
    *v1199 = v1202;
    v1203 = *v1160;
    if (*v1160 >= v1160[3])
    {
      v1203 = v1160[2];
      *v1160 = v1203;
    }

    v1204 = ch_GNSS_SIGID[v1195[1]];
    *v1160 = v1203 + 1;
    *v1203 = v1204;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_4d(v1160, v1198);
    sprintf_3d(v1160, v1195[3]);
    if (*v1195 == 2)
    {
      v1205 = v1195[3] + 8;
    }

    else
    {
      v1205 = 0;
    }

    sprintf_3d(v1160, v1205);
    sprintf_3d(v1160, *(v1163 + 268 + v1192));
    v1206 = (*v1160)++;
    *v1206 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_04x(v1160, *(v1543 + 2 * v1192));
    sprintf_3d(v1160, *(v1163 + 412 + 4 * v1192));
    LOBYTE(v1207) = *(v1541 + v1192);
    LOBYTE(v1208) = *(v1163 + 652 + v1192);
    v1209 = (v1207 + v1208 * 0.0625) * 10.0;
    if (v1209 <= 0.0)
    {
      v1210 = -0.5;
    }

    else
    {
      v1210 = 0.5;
    }

    v1211 = v1209 + v1210;
    if (v1211 <= 2147483650.0)
    {
      if (v1211 >= -2147483650.0)
      {
        v1212 = v1211;
      }

      else
      {
        v1212 = 0x80000000;
      }
    }

    else
    {
      v1212 = 0x7FFFFFFF;
    }

    sprintf_4f(v1160, v1212, 2);
    LOBYTE(v1213) = *(v1163 + 700 + v1192);
    LOBYTE(v1214) = *(v1163 + 748 + v1192);
    v1215 = (v1213 + v1214 * 0.0625) * 10.0;
    if (v1215 <= 0.0)
    {
      v1216 = -0.5;
    }

    else
    {
      v1216 = 0.5;
    }

    v1217 = v1215 + v1216;
    if (v1217 <= 2147483650.0)
    {
      if (v1217 >= -2147483650.0)
      {
        v1218 = v1217;
      }

      else
      {
        v1218 = 0x80000000;
      }
    }

    else
    {
      v1218 = 0x7FFFFFFF;
    }

    sprintf_4f(v1160, v1218, 2);
    v1219 = *(v1543 + 2 * v1192);
    v1220 = v1163 + 844;
    if ((v1219 & 8) != 0)
    {
      v1220 = v1163 + 1036;
      if ((v1219 & 0xC0) == 0)
      {
        v1220 = v1163 + 940;
        if ((v1219 & 0x30) == 0)
        {
          v1220 = v1163 + 844;
        }
      }
    }

    sprintf_6d(v1160, *(v1220 + 2 * v1192));
    if (!v1198 || v1196 == 3)
    {
      strcpy(v1585, "    0");
      v1221 = *v1160;
      LOBYTE(v1222) = 32;
      v1223 = 1;
      do
      {
        *v1160 = v1221 + 1;
        *v1221 = v1222;
        v1221 = *v1160;
        if (*v1160 >= v1160[3])
        {
          v1221 = v1160[2];
          *v1160 = v1221;
        }

        v1222 = *(v1585 + v1223++);
      }

      while (v1222);
      strcpy(v1585, "  0");
      v1224 = *v1160;
      LOBYTE(v1225) = 32;
      v1226 = 1;
      do
      {
        *v1160 = v1224 + 1;
        *v1224 = v1225;
        v1224 = *v1160;
        if (*v1160 >= v1160[3])
        {
          v1224 = v1160[2];
          *v1160 = v1224;
        }

        v1225 = *(v1585 + v1226++);
      }

      while (v1225);
      strcpy(v1585, "   0");
      v1227 = *v1160;
      LOBYTE(v1228) = 32;
      v1229 = 1;
      do
      {
        *v1160 = v1227 + 1;
        *v1227 = v1228;
        v1227 = *v1160;
        if (*v1160 >= v1160[3])
        {
          v1227 = v1160[2];
          *v1160 = v1227;
        }

        v1228 = *(v1585 + v1229++);
      }

      while (v1228);
    }

    else
    {
      if (*(v1526 + v1192 + 49) == 1 && *(v1522 + 2 * v1192))
      {
        sprintf_5d(v1160, *(v1522 + 2 * v1192));
      }

      else
      {
        v1230 = *v1160;
        for (i7 = 5; i7 > 1; --i7)
        {
          *v1160 = v1230 + 1;
          *v1230 = 32;
          v1230 = *v1160;
          if (*v1160 >= v1160[3])
          {
            v1230 = v1160[2];
            *v1160 = v1230;
          }
        }

        if ((*(v1526 + v1192 + 12738) & 0x8000000000000000) != 0)
        {
          *v1160 = v1230 + 1;
          v1232 = 120;
        }

        else if (*v1195 == 3 && *(v1520 + 16700 + v1198 - 1) == 1 && (*(*(v1520 + 16608) + v1198 - 1) & 1) == 0)
        {
          *v1160 = v1230 + 1;
          v1232 = 109;
        }

        else
        {
          v1232 = ch_EPH_ALM[*(v1521 + 192 * *(v1526 + v1192 + 12738) + 184)];
          *v1160 = v1230 + 1;
        }

        *v1230 = v1232;
        if (*v1160 >= v1160[3])
        {
          *v1160 = v1160[2];
        }
      }

      v1233 = *(v1527 + GNSS_Id_To_Num_Prn_Idx(*v1195));
      if (v1233 <= -9)
      {
        v1234 = -9;
      }

      else
      {
        v1234 = v1233;
      }

      sprintf_3d(v1160, v1234);
      v1235 = *(v1527 + 178 + 2 * GNSS_Id_To_Num_Prn_Idx(*v1195));
      if ((v1235 & 0x80000000) != 0)
      {
        v1236 = 0;
        v1237 = *v1160;
        v1238 = 32;
        do
        {
          *v1160 = v1237 + 1;
          *v1237 = v1238;
          v1237 = *v1160;
          if (*v1160 >= v1160[3])
          {
            v1237 = v1160[2];
            *v1160 = v1237;
          }

          v1238 = a0[++v1236];
        }

        while (v1236 != 4);
      }

      else
      {
        sprintf_4d(v1160, v1235);
      }
    }

    v1239 = (*v1160)++;
    *v1239 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_sgR8(v1160, *&v1526[2 * v1192 + 1304]);
    if (*(v1550 + v1192) == 1)
    {
      if (*(v1526 + v1192 + 6368))
      {
        v1240 = 3;
      }

      else
      {
        v1240 = 1;
      }

      if (*(v1526 + v1192 + 6800))
      {
        v1241 = v1240 | 4;
      }

      else
      {
        v1241 = v1240;
      }
    }

    else
    {
      v1241 = 0;
    }

    sprintf_2d(v1160, v1241);
    v1242 = *(v1547 + 4 * v1192);
    if (v1242 >= 0x1D)
    {
      gn_report_assertion_failure("SV_Meas_Edit_Char");
      v1243 = 120;
    }

    else
    {
      v1243 = aGhkmnpqrstvyac[v1242];
    }

    v1244 = (*v1160)++;
    *v1244 = v1243;
    v1245 = *v1160;
    if (*v1160 >= v1160[3])
    {
      v1245 = v1160[2];
    }

    *v1160 = v1245 + 1;
    *v1245 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    if (*(v1546 + v1192))
    {
      goto LABEL_2269;
    }

    v1246 = v1549[v1192];
    if ((v1246 - 1) < 0x1D)
    {
      goto LABEL_2269;
    }

    if (v1246)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_2269:
      sprintf_sgR8(v1160, *&v1526[2 * v1192 + 4188]);
      if (*(v1546 + v1192) == 1)
      {
        if (*(v1526 + v1192 + 17520))
        {
          v1247 = 3;
        }

        else
        {
          v1247 = 1;
        }

        if (*(v1526 + v1192 + 17952))
        {
          v1248 = v1247 | 4;
        }

        else
        {
          v1248 = v1247;
        }
      }

      else
      {
        v1248 = 0;
      }

      sprintf_2d(v1160, v1248);
      v1249 = v1549[v1192];
      if (v1249 >= 0x1D)
      {
        gn_report_assertion_failure("SV_Meas_Edit_Char");
        v1250 = 120;
      }

      else
      {
        v1250 = aGhkmnpqrstvyac[v1249];
      }

      v1251 = (*v1160)++;
      *v1251 = v1250;
      v1252 = *v1160;
      if (*v1160 >= v1160[3])
      {
        v1252 = v1160[2];
        *v1160 = v1252;
      }

      v1253 = " 1 ";
      goto LABEL_2283;
    }

    sprintf_sgR8(v1160, *&v1526[2 * v1192 + 2794]);
    if (*(v1539 + v1192) == 1)
    {
      if (*(v1526 + v1192 + 11944))
      {
        v1375 = 3;
      }

      else
      {
        v1375 = 1;
      }

      if (*(v1526 + v1192 + 12376))
      {
        v1376 = v1375 | 4;
      }

      else
      {
        v1376 = v1375;
      }
    }

    else
    {
      v1376 = 0;
    }

    sprintf_2d(v1160, v1376);
    v1382 = *(v1537 + 4 * v1192);
    if (v1382 >= 0x1D)
    {
      gn_report_assertion_failure("SV_Meas_Edit_Char");
      v1383 = 120;
    }

    else
    {
      v1383 = aGhkmnpqrstvyac[v1382];
    }

    v1384 = (*v1160)++;
    *v1384 = v1383;
    v1252 = *v1160;
    if (*v1160 >= v1160[3])
    {
      v1252 = v1160[2];
      *v1160 = v1252;
    }

    v1253 = " 0 ";
    if (*(v1526 + v1192 + 19536))
    {
      v1253 = " 2 ";
    }

LABEL_2283:
    v1254 = *v1253;
    if (*v1253)
    {
      v1255 = (v1253 + 1);
      do
      {
        *v1160 = v1252 + 1;
        *v1252 = v1254;
        v1252 = *v1160;
        if (*v1160 >= v1160[3])
        {
          v1252 = v1160[2];
          *v1160 = v1252;
        }

        v1256 = *v1255++;
        v1254 = v1256;
      }

      while (v1256);
    }

    if (v1198 && v1196 == 1)
    {
      v1257 = *(v1535 + GNSS_Id_To_Num_Prn_Idx(*v1195));
      if (v1257 < 0 || (v1258 = v1529 + 48 * v1257, *(v1258 + 4) != 1))
      {
        if (v1198 <= 0x20)
        {
          v1259 = (-*(v1528 + 24) * 1.57542);
        }

        else
        {
          v1259 = -9999;
        }
      }

      else
      {
        v1259 = *(v1258 + 22);
      }
    }

    else
    {
      v1259 = *(v1163 + 1616 + 8 * v1192);
    }

    sprintf_6d(v1160, v1259);
    v1260 = (*v1160)++;
    *v1260 = 32;
    v1261 = *v1160;
    if (*v1160 >= v1160[3])
    {
      v1261 = v1160[2];
      *v1160 = v1261;
    }

    if (Is_Legal(*v1195))
    {
      v1262 = *v1526 - *(v1524 + 4 * v1192);
      if (v1262 >= -999)
      {
        v1269 = v1262 / 1000;
        if (v1269 >= 9)
        {
          v1263 = 9;
        }

        else
        {
          v1263 = v1269;
        }
      }

      else
      {
        v1263 = 0;
      }

      sprintf_2d(v1160, v1263);
      if (!v1198)
      {
        goto LABEL_2313;
      }
    }

    else
    {
      v1264 = 0;
      v1265 = 32;
      do
      {
        *v1160 = v1261 + 1;
        *v1261 = v1265;
        v1261 = *v1160;
        if (*v1160 >= v1160[3])
        {
          v1261 = v1160[2];
          *v1160 = v1261;
        }

        v1265 = aX[++v1264];
      }

      while (v1264 != 2);
      if (!v1198)
      {
LABEL_2313:
        v1268 = 0;
        v1266 = v1526 + 3528;
        goto LABEL_2315;
      }
    }

    v1266 = v1526 + 3528;
    if ((*(v1535 + v1538) & 0x8000000000000000) != 0)
    {
      v1268 = (-*(v1528 + 24) * 1.57542) / 10;
      v1198 = (5381 * *(v1528 + 4)) >> 10;
    }

    else
    {
      v1267 = v1529 + 48 * *(v1535 + v1538);
      v1268 = *(v1267 + 26);
      v1198 = *(v1267 + 18);
    }

LABEL_2315:
    sprintf_5d(v1160, v1268);
    sprintf_6d(v1160, v1198);
    if (Is_Legal(*v1195))
    {
      sprintf_5d(v1160, *(v1525 + 2 * v1192));
      sprintf_6d(v1160, *(v1525 + 96 + 2 * v1192));
    }

    else
    {
      v1270 = *v1160;
      v1271 = 32;
      v1272 = 1u;
      do
      {
        *v1160 = v1270 + 1;
        *v1270 = v1271;
        v1270 = *v1160;
        if (*v1160 >= v1160[3])
        {
          v1270 = v1160[2];
          *v1160 = v1270;
        }

        v1271 = a00_0[v1272++];
      }

      while (v1272 != 12);
    }

    if (*(v1550 + v1192))
    {
      goto LABEL_2323;
    }

    v1273 = *(v1547 + 4 * v1192);
    if ((v1273 - 1) < 0x1D)
    {
      goto LABEL_2323;
    }

    if (v1273)
    {
      goto LABEL_2518;
    }

    if (*(v1539 + v1192))
    {
      goto LABEL_2323;
    }

    v1377 = *(v1537 + 4 * v1192);
    if ((v1377 - 1) < 0x1D)
    {
      goto LABEL_2323;
    }

    if (v1377)
    {
      goto LABEL_2518;
    }

    if (*(v1266 + v1192))
    {
      goto LABEL_2323;
    }

    v1378 = v1549[v1192];
    if ((v1378 - 1) < 0x1D)
    {
      goto LABEL_2323;
    }

    if (v1378)
    {
LABEL_2518:
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_2323:
      sprintf_sgR8(v1160, *(v1551 + 8 * v1192));
      v1274 = sqrt(*(v1534 + 8 * v1192));
      if (v1274 <= v1532)
      {
        if (v1274 <= 999.9)
        {
          v1279 = v1274 * 10.0;
          if (v1279 <= 0.0)
          {
            v1280 = -0.5;
          }

          else
          {
            v1280 = 0.5;
          }

          v1281 = v1279 + v1280;
          if (v1281 <= 2147483650.0)
          {
            if (v1281 >= -2147483650.0)
            {
              v1282 = v1281;
            }

            else
            {
              v1282 = 0x80000000;
            }
          }

          else
          {
            v1282 = 0x7FFFFFFF;
          }

          sprintf_5f(v1160, v1282, 2);
        }

        else
        {
          v1278 = v1274 + 0.5;
          if (v1278 >= 2147483650.0)
          {
            v1278 = 2147483650.0;
          }

          sprintf_6d(v1160, v1278);
        }
      }

      else
      {
        v1275 = *v1160;
        v1276 = 32;
        v1277 = 1u;
        do
        {
          *v1160 = v1275 + 1;
          *v1275 = v1276;
          v1275 = *v1160;
          if (*v1160 >= v1160[3])
          {
            v1275 = v1160[2];
            *v1160 = v1275;
          }

          v1276 = a99999[v1277++];
        }

        while (v1277 != 7);
      }

      if ((*(v1266 + v1192) & 1) != 0 || (v1283 = v1549[v1192], (v1283 - 1) < 0x1D))
      {
LABEL_2344:
        sprintf_sgR8(v1160, *&v1526[2 * v1192 + 4692]);
        v1284 = fmin(sqrt(*&v1526[2 * v1192 + 4500]), 9.89999962) * 1000.0;
        if (v1284 <= 0.0)
        {
          v1285 = -0.5;
        }

        else
        {
          v1285 = 0.5;
        }

        v1286 = v1284 + v1285;
        if (v1286 <= 2147483650.0)
        {
          if (v1286 >= -2147483650.0)
          {
            v1287 = v1286;
          }

          else
          {
            v1287 = 0x80000000;
          }
        }

        else
        {
          v1287 = 0x7FFFFFFF;
        }

        v1288 = v1160;
        v1289 = 4;
      }

      else
      {
        if (v1283)
        {
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          goto LABEL_2344;
        }

        sprintf_sgR8(v1160, v1544[v1192]);
        v1379 = fmin(sqrt(*(v1519 + 8 * v1192)), 99.9000015) * 100.0;
        if (v1379 <= 0.0)
        {
          v1380 = -0.5;
        }

        else
        {
          v1380 = 0.5;
        }

        v1381 = v1379 + v1380;
        if (v1381 <= 2147483650.0)
        {
          if (v1381 >= -2147483650.0)
          {
            v1287 = v1381;
          }

          else
          {
            v1287 = 0x80000000;
          }
        }

        else
        {
          v1287 = 0x7FFFFFFF;
        }

        v1288 = v1160;
        v1289 = 3;
      }

      sprintf_5f(v1288, v1287, v1289);
      sprintf_4d(v1160, *(v1541 + v1192) - *(v1526 + v1192 + 978));
      v1290 = (*v1160)++;
      *v1290 = 32;
      if (*v1160 >= v1160[3])
      {
        *v1160 = v1160[2];
      }

      sprintf_sgR8(v1160, *(v1525 + 2432 + 8 * v1192));
      v1291 = sprintf_sgR8(v1160, *(v1525 + 2816 + 8 * v1192));
      if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v1291))
      {
        v1292 = *(v1536 + 17512);
        v1293 = (v1292 - 1);
        if (v1292 - 1 < 0)
        {
          v1299 = " |    0.000 0~   0.0    0.000 0~   0.0    0.000    0.000    0.000    0.000 |";
        }

        else
        {
          v1294 = 4 * (v1292 - 1);
          v1295 = v1293 + 1652;
          v1296 = 144 * v1293 + 17552;
          v1297 = 8 * (v1292 - 1);
          while (*(v1536 + v1294 + 400) != v1195[2] || *(v1536 + v1294 + 592) != *v1195)
          {
            v1298 = v1295 - 1652;
            --v1295;
            v1296 -= 144;
            v1297 -= 8;
            v1294 -= 4;
            if (v1298 <= 0)
            {
              v1299 = " |    0.000 0~   0.0    0.000 0~   0.0    0.000    0.000    0.000    0.000 |";
              v1266 = v1526 + 3528;
              goto LABEL_2396;
            }
          }

          v1300 = *v1160;
          v1301 = 32;
          v1302 = 1u;
          do
          {
            *v1160 = v1300 + 1;
            *v1300 = v1301;
            v1300 = *v1160;
            if (*v1160 >= v1160[3])
            {
              v1300 = v1160[2];
              *v1160 = v1300;
            }

            v1301 = asc_29976B6A1[v1302++];
          }

          while (v1302 != 4);
          sprintf_sgR8(v1160, *(v1536 + v1297 + 2808));
          v1303 = (*v1160)++;
          *v1303 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf1da(v1160, *(v1536 + v1294 + 1032) == 0, v1585, 0, 0);
          v1304 = *(v1536 + v1294 + 1032);
          if (v1304 >= 0x1D)
          {
            gn_report_assertion_failure("SV_Meas_Edit_Char");
            v1305 = 120;
          }

          else
          {
            v1305 = aGhkmnpqrstvyac[v1304];
          }

          v1306 = (*v1160)++;
          *v1306 = v1305;
          v1307 = *v1160;
          if (*v1160 >= v1160[3])
          {
            v1307 = v1160[2];
          }

          *v1160 = v1307 + 1;
          *v1307 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_ACC(v1160, sqrt(*(v1536 + v1297 + 4824)));
          v1308 = (*v1160)++;
          *v1308 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_sgR8(v1160, *(v1536 + v1297 + 8384));
          v1309 = (*v1160)++;
          *v1309 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf1da(v1160, *(v1536 + 4 * v1295) == 0, v1585, 0, 0);
          v1310 = *(v1536 + 4 * v1295);
          if (v1310 >= 0x1D)
          {
            gn_report_assertion_failure("SV_Meas_Edit_Char");
            v1311 = v1536;
            v1312 = 120;
          }

          else
          {
            v1311 = v1536;
            v1312 = aGhkmnpqrstvyac[v1310];
          }

          v1266 = v1526 + 3528;
          v1313 = (*v1160)++;
          *v1313 = v1312;
          v1314 = *v1160;
          if (*v1160 >= v1160[3])
          {
            v1314 = v1160[2];
          }

          *v1160 = v1314 + 1;
          *v1314 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_ACC(v1160, sqrt(*(v1311 + v1297 + 10400)));
          v1315 = (*v1160)++;
          *v1315 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_sgR8(v1160, *(v1536 + v1296));
          v1316 = (*v1160)++;
          *v1316 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_sgR8(v1160, *(v1536 + v1296 + 96));
          v1317 = (*v1160)++;
          *v1317 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_sgR8(v1160, *(v1536 + v1296 + 8));
          v1318 = (*v1160)++;
          *v1318 = 32;
          if (*v1160 >= v1160[3])
          {
            *v1160 = v1160[2];
          }

          sprintf_sgR8(v1160, *(v1536 + v1296 + 104));
          v1299 = " |";
        }

LABEL_2396:
        v1319 = *v1299;
        if (*v1299)
        {
          v1320 = *v1160;
          v1321 = (v1299 + 1);
          do
          {
            *v1160 = v1320 + 1;
            *v1320 = v1319;
            v1320 = *v1160;
            if (*v1160 >= v1160[3])
            {
              v1320 = v1160[2];
              *v1160 = v1320;
            }

            v1322 = *v1321++;
            v1319 = v1322;
          }

          while (v1322);
        }
      }

      sprintf_3d(v1160, *(v1531 + v1192));
      sprintf_sgR8(v1160, sqrt(*(v1530 + 8 * v1192)));
      v1323 = &v1526[6 * v1192 + 824];
      v1324 = sqrt(*v1323) * 10.0;
      if (v1324 <= 0.0)
      {
        v1325 = -0.5;
      }

      else
      {
        v1325 = 0.5;
      }

      v1326 = v1324 + v1325;
      if (v1326 <= 2147483650.0)
      {
        if (v1326 >= -2147483650.0)
        {
          v1327 = v1326;
        }

        else
        {
          v1327 = 0x80000000;
        }
      }

      else
      {
        v1327 = 0x7FFFFFFF;
      }

      sprintf_5f(v1160, v1327, 2);
      v1328 = sqrt(v1323[1]) * 10.0;
      if (v1328 <= 0.0)
      {
        v1329 = -0.5;
      }

      else
      {
        v1329 = 0.5;
      }

      v1330 = v1328 + v1329;
      if (v1330 <= 2147483650.0)
      {
        if (v1330 >= -2147483650.0)
        {
          v1331 = v1330;
        }

        else
        {
          v1331 = 0x80000000;
        }
      }

      else
      {
        v1331 = 0x7FFFFFFF;
      }

      sprintf_5f(v1160, v1331, 2);
      v1332 = v1526 + 3612;
      if ((*(v1266 + v1192) & 1) == 0)
      {
        v1333 = v1549[v1192];
        v1332 = v1526 + 3612;
        if ((v1333 - 1) >= 0x1D)
        {
          if (v1333)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            v1332 = v1526 + 3612;
          }

          else
          {
            v1332 = v1526 + 2218;
          }
        }
      }

      v1334 = &v1332[6 * v1192];
      v1335 = sqrt(*v1334) * 10.0;
      if (v1335 <= 0.0)
      {
        v1336 = -0.5;
      }

      else
      {
        v1336 = 0.5;
      }

      v1337 = v1335 + v1336;
      if (v1337 <= 2147483650.0)
      {
        if (v1337 >= -2147483650.0)
        {
          v1338 = v1337;
        }

        else
        {
          v1338 = 0x80000000;
        }
      }

      else
      {
        v1338 = 0x7FFFFFFF;
      }

      sprintf_4f(v1160, v1338, 2);
      v1339 = sqrt(v1334[1]) * 10.0;
      if (v1339 <= 0.0)
      {
        v1340 = -0.5;
      }

      else
      {
        v1340 = 0.5;
      }

      v1341 = v1339 + v1340;
      if (v1341 <= 2147483650.0)
      {
        if (v1341 >= -2147483650.0)
        {
          v1342 = v1341;
        }

        else
        {
          v1342 = 0x80000000;
        }
      }

      else
      {
        v1342 = 0x7FFFFFFF;
      }

      sprintf_4f(v1160, v1342, 2);
      v1343 = *&v1526[2 * v1192 + 1208];
      v1344 = v1343 >= 999.900024;
      v1345 = v1343 > -999.900024 || v1343 >= 999.900024;
      if (v1343 <= -999.900024)
      {
        v1344 = 1;
      }

      if (v1345)
      {
        v1346 = 999.900024;
      }

      else
      {
        v1346 = -999.900024;
      }

      if (v1344)
      {
        v1343 = v1346;
      }

      v1347 = v1343 * 10.0;
      if (v1347 <= 0.0)
      {
        v1348 = -0.5;
      }

      else
      {
        v1348 = 0.5;
      }

      v1349 = v1347 + v1348;
      if (v1349 <= 2147483650.0)
      {
        if (v1349 >= -2147483650.0)
        {
          v1350 = v1349;
        }

        else
        {
          v1350 = 0x80000000;
        }
      }

      else
      {
        v1350 = 0x7FFFFFFF;
      }

      sprintf_6f(v1160, v1350, 2);
      v1351 = sqrt(*&v1526[2 * v1192 + 1496]) * 10.0;
      if (v1351 <= 0.0)
      {
        v1352 = -0.5;
      }

      else
      {
        v1352 = 0.5;
      }

      v1353 = v1351 + v1352;
      if (v1353 <= 2147483650.0)
      {
        if (v1353 >= -2147483650.0)
        {
          v1354 = v1353;
        }

        else
        {
          v1354 = 0x80000000;
        }
      }

      else
      {
        v1354 = 0x7FFFFFFF;
      }

      sprintf_5f(v1160, v1354, 2);
      v1356 = v1526 + 4284;
      v1355 = v1526 + 3996;
      if ((*(v1266 + v1192) & 1) == 0)
      {
        v1357 = v1549[v1192];
        v1356 = v1526 + 4284;
        v1355 = v1526 + 3996;
        if ((v1357 - 1) >= 0x1D)
        {
          if (v1357)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            v1356 = v1526 + 4284;
            v1355 = v1526 + 3996;
          }

          else
          {
            v1356 = v1526 + 2890;
            v1355 = v1526 + 2602;
          }
        }
      }

      v1358 = *&v1355[2 * v1192];
      v1359 = v1358 >= 99.9000015;
      v1360 = v1358 > -99.9000015 || v1358 >= 99.9000015;
      if (v1358 <= -99.9000015)
      {
        v1359 = 1;
      }

      if (v1360)
      {
        v1361 = 99.9000015;
      }

      else
      {
        v1361 = -99.9000015;
      }

      if (v1359)
      {
        v1358 = v1361;
      }

      v1362 = v1358 * 10.0;
      if (v1362 <= 0.0)
      {
        v1363 = -0.5;
      }

      else
      {
        v1363 = 0.5;
      }

      v1364 = v1362 + v1363;
      if (v1364 <= 2147483650.0)
      {
        if (v1364 >= -2147483650.0)
        {
          v1365 = v1364;
        }

        else
        {
          v1365 = 0x80000000;
        }
      }

      else
      {
        v1365 = 0x7FFFFFFF;
      }

      sprintf_5f(v1160, v1365, 2);
      v1366 = sqrt(*&v1356[2 * v1192]) * 10.0;
      if (v1366 <= 0.0)
      {
        v1367 = -0.5;
      }

      else
      {
        v1367 = 0.5;
      }

      v1368 = v1366 + v1367;
      if (v1368 <= 2147483650.0)
      {
        if (v1368 >= -2147483650.0)
        {
          v1369 = v1368;
        }

        else
        {
          v1369 = 0x80000000;
        }
      }

      else
      {
        v1369 = 0x7FFFFFFF;
      }

      sprintf_5f(v1160, v1369, 2);
    }

    v1370 = (*v1160)++;
    *v1370 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_2d(v1160, *(v1163 + 2912 + v1192));
    v1371 = (*v1160)++;
    *v1371 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_2d(v1160, *(v1163 + 2960 + v1192));
    v1372 = (*v1160)++;
    *v1372 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_2d(v1160, *(v1163 + 3008 + 2 * v1192));
    v1373 = (*v1160)++;
    *v1373 = 32;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    sprintf_4d(v1160, *(v1163 + 1132 + 2 * v1192));
    v1374 = (*v1160)++;
    *v1374 = 10;
    if (*v1160 >= v1160[3])
    {
      *v1160 = v1160[2];
    }

    GNSS_Nav_Debug_Flush_Check(v1160);
    v1194 = &unk_2A1928000;
    v1193 = v1533;
LABEL_2501:
    ++v1192;
  }

  while (v1192 != 48);
  v1385 = 0;
  v1386 = v1523[46];
  v1387 = v1523[5];
  v1388 = v1523[10];
  v1389 = v1523[8];
  v1390 = v1523[22];
  v1391 = v1523[29];
  v1392 = *v1386;
  v1393 = 84;
  do
  {
    *v1386 = v1392 + 1;
    *v1392 = v1393;
    v1392 = *v1386;
    if (*v1386 >= v1386[3])
    {
      v1392 = v1386[2];
      *v1386 = v1392;
    }

    v1393 = aTheEnd[++v1385];
  }

  while (v1385 != 8);
  v1394 = &ch_Pos_Confid[5 * *(v1388 + 12) + 1];
  v1395 = 32;
  do
  {
    *v1386 = v1392 + 1;
    *v1392 = v1395;
    v1392 = *v1386;
    if (*v1386 >= v1386[3])
    {
      v1392 = v1386[2];
      *v1386 = v1392;
    }

    v1396 = *v1394++;
    v1395 = v1396;
  }

  while (v1396);
  sprintf_sp1d(v1386, *(v1390 + 235));
  sprintf_sp1d(v1386, *(v1391 + 972));
  sprintf_sp1d(v1386, *v1389);
  sprintf_sp1d(v1386, *(v1390 + 234));
  v1397 = 0;
  v1398 = *v1386;
  v1399 = 32;
  do
  {
    *v1386 = v1398 + 1;
    *v1398 = v1399;
    v1398 = *v1386;
    if (*v1386 >= v1386[3])
    {
      v1398 = v1386[2];
      *v1386 = v1398;
    }

    v1399 = aVis[++v1397];
  }

  while (v1397 != 4);
  sprintf_3d(v1386, *(v1387 + 6132));
  if (*(v1387 + 6132))
  {
    v1400 = 0;
    v1401 = v1387 + 4174;
    do
    {
      v1558[0] = 0;
      v1402 = *(v1401 + 2 * v1400);
      if (v1402 < 1)
      {
        v1407 = 0;
        v1408 = *v1386;
        v1409 = 32;
        do
        {
          *v1386 = v1408 + 1;
          *v1408 = v1409;
          v1408 = *v1386;
          if (*v1386 >= v1386[3])
          {
            v1408 = v1386[2];
            *v1386 = v1408;
          }

          v1409 = aX[++v1407];
        }

        while (v1407 != 2);
        v1403 = *(v1401 + 2 * v1400);
      }

      else
      {
        v1403 = LongPrnIdx_To_Prn(v1402 - 1, v1558);
        v1404 = (*v1386)++;
        *v1404 = 32;
        v1405 = *v1386;
        if (*v1386 >= v1386[3])
        {
          v1405 = v1386[2];
        }

        v1406 = ch_CONSTELL_ID[v1558[0]];
        *v1386 = v1405 + 1;
        *v1405 = v1406;
        if (*v1386 >= v1386[3])
        {
          *v1386 = v1386[2];
        }
      }

      if (v1403 >= 0)
      {
        v1410 = v1403;
      }

      else
      {
        v1410 = -v1403;
      }

      sprintf1da(v1386, v1410, v1582, 0, v1403 >> 31);
      ++v1400;
    }

    while (v1400 < *(v1387 + 6132));
  }

  v1411 = *v1386;
  for (i8 = 3; i8 > 1; --i8)
  {
    *v1386 = v1411 + 1;
    *v1411 = 32;
    v1411 = *v1386;
    if (*v1386 >= v1386[3])
    {
      v1411 = v1386[2];
      *v1386 = v1411;
    }
  }

  sprintf_sp1d(v1386, *(v1390 + 7172));
  sprintf_sgR8(v1386, *(v1391 + 2848));
  sprintf_sp1d(v1386, *(v1391 + 2811));
  sprintf_sp1d(v1386, *(v1391 + 24777));
  sprintf_sgR8(v1386, *(v1391 + 8424));
  sprintf_sp1d(v1386, *(v1391 + 8387));
  sprintf_sp1d(v1386, *(v1391 + 24779));
  sprintf_sp1d(v1386, *(v1390 + 236));
  sprintf_sp1d(v1386, *(v1391 + 24778));
  v1413 = (*v1386)++;
  *v1413 = 10;
  if (*v1386 >= v1386[3])
  {
    *v1386 = v1386[2];
  }

  result = GNSS_Nav_Debug_Flush_Check(v1386);
  if (g_Enable_Nav_Debug >= 4u)
  {
    v1415 = v1523[46];
    v1417 = v1523[4];
    v1416 = v1523[5];
    v1418 = *(v1523[10] + 40);
    v1419 = -0.5;
    if (v1418 > 0.0)
    {
      v1419 = 0.5;
    }

    v1420 = v1418 + v1419;
    if (v1420 <= 2147483650.0)
    {
      if (v1420 >= -2147483650.0)
      {
        v1421 = v1420 % 86400;
      }

      else
      {
        v1421 = -11648;
      }
    }

    else
    {
      v1421 = 11647;
    }

    v1422 = *v1415;
    v1423 = 69;
    v1424 = 1u;
    do
    {
      *v1415 = v1422 + 1;
      *v1422 = v1423;
      v1422 = *v1415;
      if (*v1415 >= v1415[3])
      {
        v1422 = v1415[2];
        *v1415 = v1422;
      }

      v1423 = aElev[v1424++];
    }

    while (v1424 != 6);
    sprintf_8d(v1415, v1421);
    v1425 = *v1415;
    v1426 = 32;
    v1427 = 1u;
    do
    {
      *v1415 = v1425 + 1;
      *v1425 = v1426;
      v1425 = *v1415;
      if (*v1415 >= v1415[3])
      {
        v1425 = v1415[2];
        *v1415 = v1425;
      }

      v1426 = asc_29976B72C[v1427++];
    }

    while (v1427 != 6);
    v1428 = 0;
    while (1)
    {
      if (v1428 > 138)
      {
        if (v1428 == 0xFFFFFFFFLL || v1428 == 139)
        {
LABEL_2603:
          v1429 = *v1415;
          v1430 = 32;
          v1431 = 1u;
          do
          {
            *v1415 = v1429 + 1;
            *v1429 = v1430;
            v1429 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1429 = v1415[2];
              *v1415 = v1429;
            }

            v1430 = asc_29976B6A1[v1431++];
          }

          while (v1431 != 4);
        }
      }

      else if (v1428 == 32 || v1428 == 129)
      {
        goto LABEL_2603;
      }

      sprintf_4d(v1415, *(v1417 + v1428++));
      if (v1428 == 178)
      {
        v1432 = (*v1415)++;
        *v1432 = 10;
        if (*v1415 >= v1415[3])
        {
          *v1415 = v1415[2];
        }

        GNSS_Nav_Debug_Flush_Check(v1415);
        v1433 = *v1415;
        v1434 = 65;
        v1435 = 1u;
        do
        {
          *v1415 = v1433 + 1;
          *v1433 = v1434;
          v1433 = *v1415;
          if (*v1415 >= v1415[3])
          {
            v1433 = v1415[2];
            *v1415 = v1433;
          }

          v1434 = aAzim[v1435++];
        }

        while (v1435 != 6);
        sprintf_8d(v1415, v1421);
        v1436 = *v1415;
        v1437 = 32;
        v1438 = 1u;
        do
        {
          *v1415 = v1436 + 1;
          *v1436 = v1437;
          v1436 = *v1415;
          if (*v1415 >= v1415[3])
          {
            v1436 = v1415[2];
            *v1415 = v1436;
          }

          v1437 = asc_29976B72C[v1438++];
        }

        while (v1438 != 6);
        v1439 = 0;
        v1440 = v1417 + 178;
        while (2)
        {
          if (v1439 > 138)
          {
            if (v1439 == 0xFFFFFFFFLL || v1439 == 139)
            {
              goto LABEL_2625;
            }
          }

          else
          {
            if (v1439 != 32 && v1439 != 129)
            {
              goto LABEL_2629;
            }

LABEL_2625:
            v1441 = *v1415;
            v1442 = 32;
            v1443 = 1u;
            do
            {
              *v1415 = v1441 + 1;
              *v1441 = v1442;
              v1441 = *v1415;
              if (*v1415 >= v1415[3])
              {
                v1441 = v1415[2];
                *v1415 = v1441;
              }

              v1442 = asc_29976B6A1[v1443++];
            }

            while (v1443 != 4);
          }

LABEL_2629:
          sprintf_4d(v1415, *(v1440 + 2 * v1439++));
          if (v1439 != 178)
          {
            continue;
          }

          break;
        }

        v1444 = (*v1415)++;
        *v1444 = 10;
        if (*v1415 >= v1415[3])
        {
          *v1415 = v1415[2];
        }

        GNSS_Nav_Debug_Flush_Check(v1415);
        v1445 = *v1415;
        v1446 = 83;
        v1447 = 1u;
        do
        {
          *v1415 = v1445 + 1;
          *v1445 = v1446;
          v1445 = *v1415;
          if (*v1415 >= v1415[3])
          {
            v1445 = v1415[2];
            *v1415 = v1445;
          }

          v1446 = aSidx[v1447++];
        }

        while (v1447 != 6);
        sprintf_8d(v1415, v1421);
        v1448 = *v1415;
        v1449 = 32;
        v1450 = 1u;
        do
        {
          *v1415 = v1448 + 1;
          *v1448 = v1449;
          v1448 = *v1415;
          if (*v1415 >= v1415[3])
          {
            v1448 = v1415[2];
            *v1415 = v1448;
          }

          v1449 = asc_29976B72C[v1450++];
        }

        while (v1450 != 6);
        v1451 = 0;
LABEL_2641:
        if (v1451 > 138)
        {
          if (v1451 == 0xFFFFFFFFLL || v1451 == 139)
          {
            goto LABEL_2647;
          }
        }

        else
        {
          if (v1451 != 32 && v1451 != 129)
          {
            goto LABEL_2651;
          }

LABEL_2647:
          v1452 = *v1415;
          v1453 = 32;
          v1454 = 1u;
          do
          {
            *v1415 = v1452 + 1;
            *v1452 = v1453;
            v1452 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1452 = v1415[2];
              *v1415 = v1452;
            }

            v1453 = asc_29976B6A1[v1454++];
          }

          while (v1454 != 4);
        }

LABEL_2651:
        sprintf_4d(v1415, *(v1416 + 3996 + v1451++));
        if (v1451 == 178)
        {
          v1455 = (*v1415)++;
          *v1455 = 10;
          if (*v1415 >= v1415[3])
          {
            *v1415 = v1415[2];
          }

          GNSS_Nav_Debug_Flush_Check(v1415);
          v1456 = *v1415;
          v1457 = 75;
          v1458 = 1u;
          do
          {
            *v1415 = v1456 + 1;
            *v1456 = v1457;
            v1456 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1456 = v1415[2];
              *v1415 = v1456;
            }

            v1457 = aKvis[v1458++];
          }

          while (v1458 != 6);
          sprintf_8d(v1415, v1421);
          v1459 = *v1415;
          v1460 = 32;
          v1461 = 1u;
          do
          {
            *v1415 = v1459 + 1;
            *v1459 = v1460;
            v1459 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1459 = v1415[2];
              *v1415 = v1459;
            }

            v1460 = asc_29976B72C[v1461++];
          }

          while (v1461 != 6);
          v1462 = 0;
          v1463 = *(v1416 + 6132);
          v1464 = v1416 + 4174;
          if (v1463 >= 0xAA)
          {
            v1465 = 178;
          }

          else
          {
            v1465 = v1463 + 8;
          }

          do
          {
            if (v1462 == *(v1416 + 6132))
            {
              v1466 = 0;
              v1467 = *v1415;
              v1468 = 32;
              do
              {
                *v1415 = v1467 + 1;
                *v1467 = v1468;
                v1467 = *v1415;
                if (*v1415 >= v1415[3])
                {
                  v1467 = v1415[2];
                  *v1415 = v1467;
                }

                v1468 = asc_29976B744[++v1466];
              }

              while (v1466 != 4);
            }

            sprintf_4d(v1415, *(v1464 + 2 * v1462++));
          }

          while (v1462 != v1465);
          v1469 = (*v1415)++;
          *v1469 = 10;
          if (*v1415 >= v1415[3])
          {
            *v1415 = v1415[2];
          }

          GNSS_Nav_Debug_Flush_Check(v1415);
          v1470 = *v1415;
          v1471 = 77;
          v1472 = 1u;
          do
          {
            *v1415 = v1470 + 1;
            *v1470 = v1471;
            v1470 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1470 = v1415[2];
              *v1415 = v1470;
            }

            v1471 = aMvis[v1472++];
          }

          while (v1472 != 6);
          sprintf_8d(v1415, v1421);
          v1473 = *v1415;
          v1474 = 32;
          v1475 = 1u;
          do
          {
            *v1415 = v1473 + 1;
            *v1473 = v1474;
            v1473 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1473 = v1415[2];
              *v1415 = v1473;
            }

            v1474 = asc_29976B72C[v1475++];
          }

          while (v1475 != 6);
          v1476 = 0;
          v1477 = *(v1416 + 6133);
          if (v1477 >= 0xAA)
          {
            v1478 = 178;
          }

          else
          {
            v1478 = v1477 + 8;
          }

          do
          {
            if (v1476 == *(v1416 + 6133))
            {
              v1479 = 0;
              v1480 = *v1415;
              v1481 = 32;
              do
              {
                *v1415 = v1480 + 1;
                *v1480 = v1481;
                v1480 = *v1415;
                if (*v1415 >= v1415[3])
                {
                  v1480 = v1415[2];
                  *v1415 = v1480;
                }

                v1481 = asc_29976B744[++v1479];
              }

              while (v1479 != 4);
            }

            sprintf_4d(v1415, *(v1416 + 4530 + 2 * v1476++));
          }

          while (v1476 != v1478);
          v1482 = (*v1415)++;
          *v1482 = 10;
          if (*v1415 >= v1415[3])
          {
            *v1415 = v1415[2];
          }

          GNSS_Nav_Debug_Flush_Check(v1415);
          v1483 = *v1415;
          v1484 = 65;
          v1485 = 1u;
          do
          {
            *v1415 = v1483 + 1;
            *v1483 = v1484;
            v1483 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1483 = v1415[2];
              *v1415 = v1483;
            }

            v1484 = aAaok[v1485++];
          }

          while (v1485 != 6);
          sprintf_8d(v1415, v1421);
          v1486 = *v1415;
          v1487 = 32;
          v1488 = 1u;
          do
          {
            *v1415 = v1486 + 1;
            *v1486 = v1487;
            v1486 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1486 = v1415[2];
              *v1415 = v1486;
            }

            v1487 = asc_29976B72C[v1488++];
          }

          while (v1488 != 6);
          v1489 = 0;
          v1490 = *(v1416 + 6136);
          if (v1490 >= 0x4A)
          {
            v1491 = 82;
          }

          else
          {
            v1491 = v1490 + 8;
          }

          do
          {
            if (v1489 == *(v1416 + 6136))
            {
              v1492 = 0;
              v1493 = *v1415;
              v1494 = 32;
              do
              {
                *v1415 = v1493 + 1;
                *v1493 = v1494;
                v1493 = *v1415;
                if (*v1415 >= v1415[3])
                {
                  v1493 = v1415[2];
                  *v1415 = v1493;
                }

                v1494 = asc_29976B744[++v1492];
              }

              while (v1492 != 4);
            }

            sprintf_4d(v1415, *(v1416 + 60 + 48 * v1489++ + 4));
          }

          while (v1489 != v1491);
          v1495 = (*v1415)++;
          *v1495 = 10;
          if (*v1415 >= v1415[3])
          {
            *v1415 = v1415[2];
          }

          GNSS_Nav_Debug_Flush_Check(v1415);
          v1496 = *v1415;
          v1497 = 86;
          v1498 = 1u;
          do
          {
            *v1415 = v1496 + 1;
            *v1496 = v1497;
            v1496 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1496 = v1415[2];
              *v1415 = v1496;
            }

            v1497 = aViz[v1498++];
          }

          while (v1498 != 6);
          sprintf_8d(v1415, v1421);
          sprintf_5d(v1415, *(v1416 + 6132));
          sprintf_4d(v1415, *(v1416 + 6133));
          sprintf_4d(v1415, *(v1416 + 6134));
          sprintf_4d(v1415, *(v1416 + 6135));
          sprintf_4d(v1415, *(v1416 + 6136));
          if (*(v1416 + 6132))
          {
            v1499 = 0;
            do
            {
              v1558[0] = 0;
              v1500 = *(v1464 + 2 * v1499);
              if (v1500 < 1)
              {
                v1505 = 0;
                v1506 = *v1415;
                v1507 = 32;
                do
                {
                  *v1415 = v1506 + 1;
                  *v1506 = v1507;
                  v1506 = *v1415;
                  if (*v1415 >= v1415[3])
                  {
                    v1506 = v1415[2];
                    *v1415 = v1506;
                  }

                  v1507 = aX[++v1505];
                }

                while (v1505 != 2);
                v1501 = *(v1464 + 2 * v1499);
              }

              else
              {
                v1501 = LongPrnIdx_To_Prn(v1500 - 1, v1558);
                v1502 = (*v1415)++;
                *v1502 = 32;
                v1503 = *v1415;
                if (*v1415 >= v1415[3])
                {
                  v1503 = v1415[2];
                }

                v1504 = ch_CONSTELL_ID[v1558[0]];
                *v1415 = v1503 + 1;
                *v1503 = v1504;
                if (*v1415 >= v1415[3])
                {
                  *v1415 = v1415[2];
                }
              }

              if (v1501 >= 0)
              {
                v1508 = v1501;
              }

              else
              {
                v1508 = -v1501;
              }

              sprintf1da(v1415, v1508, v1582, 0, v1501 >> 31);
              ++v1499;
            }

            while (v1499 < *(v1416 + 6132));
          }

          v1509 = 0;
          v1510 = *v1415;
          v1511 = 32;
          do
          {
            *v1415 = v1510 + 1;
            *v1510 = v1511;
            v1510 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1510 = v1415[2];
              *v1415 = v1510;
            }

            v1511 = aGfvz[++v1509];
          }

          while (v1509 != 8);
          sprintf_4d(v1415, *(v1416 + 6211));
          sprintf_3d(v1415, *(v1416 + 6210));
          v1512 = 0;
          v1513 = *v1415;
          v1514 = 32;
          do
          {
            *v1415 = v1513 + 1;
            *v1513 = v1514;
            v1513 = *v1415;
            if (*v1415 >= v1415[3])
            {
              v1513 = v1415[2];
              *v1415 = v1513;
            }

            v1514 = asc_29976B20A[++v1512];
          }

          while (v1512 != 2);
          v1515 = 0;
          v1516 = v1416 + 6196;
          do
          {
            sprintf_3d(v1415, *(v1516 + v1515++));
          }

          while (v1515 != 14);
          v1517 = (*v1415)++;
          *v1517 = 10;
          if (*v1415 >= v1415[3])
          {
            *v1415 = v1415[2];
          }

          result = GNSS_Nav_Debug_Flush_Check(v1415);
          break;
        }

        goto LABEL_2641;
      }
    }
  }

  v1518 = *MEMORY[0x29EDCA608];
  return result;
}