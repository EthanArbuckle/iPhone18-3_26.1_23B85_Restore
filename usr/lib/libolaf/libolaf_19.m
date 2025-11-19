BOOL GN_SUPL_Set_Config(unsigned __int16 *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = Trace_GN_SUPL_Set_Config(a1);
  if (a1)
  {
    v3 = *(a1 + 14);
    Instance = SuplUtils::GetInstance(v2);
    *(Instance + 279) = v3;
    v5 = SuplUtils::GetInstance(Instance);
    *(v5 + 6) = 1000 * *a1;
    v6 = SuplUtils::GetInstance(v5);
    *(v6 + 7) = 1000 * a1[1];
    v7 = SuplUtils::GetInstance(v6);
    *(v7 + 8) = 1000 * a1[2];
    *(SuplUtils::GetInstance(v7) + 38) = a1[6];
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "GN_SUPL_Set_Config", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
  }

  result = a1 != 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GN_SUPL_Set_SlpInfo(unsigned __int8 *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  Trace_gnsDC_SlpInfo(a1);
  if (a1)
  {
    v17[0] = 0;
    __p[1] = 0;
    v19 = 0;
    __p[0] = 0;
    v20 = 7275;
    v2 = *(a1 + 65);
    if (v2 > 1)
    {
      if (v2 == 3)
      {
        v3 = 4;
        goto LABEL_17;
      }

      if (v2 == 2)
      {
        v3 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      if (!v2)
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SLP Addr Type is not set\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "GN_SUPL_Set_SlpInfo", 770);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
        }

        goto LABEL_18;
      }

      if (v2 == 1)
      {
        v3 = 2;
LABEL_17:
        v17[0] = v3;
        IsLoggingAllowed = MEMORY[0x29C29E950](__p, a1 + 1);
LABEL_18:
        v20 = *(a1 + 133);
        Instance = SimUtils::GetInstance(IsLoggingAllowed);
        v12 = SimUtils::SetSlpInfo(Instance, *a1, v17);
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetSlpInfo fn return value,%d\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 73, "GN_SUPL_Set_SlpInfo", v12);
          LbsOsaTrace_WriteLog(0x12u, __str, v14, 4, 1);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_22;
      }
    }

    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SLP Addr Type,%u\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "GN_SUPL_Set_SlpInfo", 515, *(a1 + 65));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "GN_SUPL_Set_SlpInfo", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
  }

LABEL_22:
  result = a1 != 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299625F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL GN_SUPL_Set_SetIdParams(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = Trace_GN_SUPL_SetIdParams(a1);
  if (a1)
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    v32 = -1;
    if (*(a1 + 23) < 0)
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v32 = 1;
        std::string::__init_copy_ctor_external(&v31, *a1, v10);
        v5 = __p;
        v6 = v34;
        goto LABEL_9;
      }
    }

    else if (*(a1 + 23))
    {
      v5 = 0;
      v6 = 0;
      v32 = 1;
      v31 = *a1;
LABEL_9:
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      __str[0] = -1;
      v12 = v6 - v5;
      if (v12 > 7)
      {
        if (v12 != 8)
        {
          v34 = v5 + 8;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&__p, 8 - v12, __str);
      }

      if (size)
      {
        v13 = 0;
        v14 = 0;
        v15 = size - 1;
        while (1)
        {
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            v16 = v31.__r_.__value_.__r.__words[0];
            v17 = *(v31.__r_.__value_.__r.__words[0] + v14) - 48;
            if (v17 >= 0xA)
            {
              LOBYTE(v17) = -1;
            }

            if (v15 != v14)
            {
              v18 = v14 + 1;
LABEL_28:
              v20 = v16->__r_.__value_.__s.__data_[v18];
              v21 = v20 - 48;
              v19 = 16 * v20;
              if (v21 >= 0xA)
              {
                v19 = -16;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v16 = &v31;
            v17 = v31.__r_.__value_.__s.__data_[v14] - 48;
            if (v17 >= 0xA)
            {
              LOBYTE(v17) = -1;
            }

            if (v15 != v14)
            {
              v18 = v14 | 1;
              goto LABEL_28;
            }
          }

          v19 = -16;
LABEL_30:
          *(__p + v13) = v19 | v17;
          v14 += 2;
          if (v14 < size && v13++ < 7)
          {
            continue;
          }

          break;
        }
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    Instance = SuplUtils::GetInstance(v4);
    v24 = SuplUtils::SetSETInfo(Instance, a2, &v32);
    v7 = v24 == 0;
    if (v24)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SET ID rejected\n", (*&g_MacClockTicksToMsRelation * v25), "SPL", 69, "GN_SUPL_Set_SetIdParams", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v26, 0, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL STACK accepted SET ID update\n", (*&g_MacClockTicksToMsRelation * v27), "SPL", 73, "GN_SUPL_Set_SetIdParams");
      LbsOsaTrace_WriteLog(0x12u, __str, v28, 4, 1);
    }

    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    goto LABEL_42;
  }

  v7 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "GN_SUPL_Set_SetIdParams", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    v7 = 0;
  }

LABEL_42:
  v29 = *MEMORY[0x29EDCA608];
  return v7;
}

BOOL GN_SUPL_Extd_Set_Config(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = Trace_GN_SUPL_Extd_Set_Config(a1);
  if (a1)
  {
    Instance = SuplUtils::GetInstance(v2);
    v4 = SuplVersionNegotiation::GetInstance(Instance);
    atomic_store(2u, v4 + 2);
    atomic_store(0, v4 + 3);
    v5 = SuplUtils::GetInstance(v4);
    *(v5 + 36) = *(a1 + 6);
    v6 = SuplUtils::GetInstance(v5);
    *(v6 + 37) = *(a1 + 7);
    v7 = *(a1 + 1);
    v8 = SuplUtils::GetInstance(v6);
    *(v8 + 276) = 0;
    *(v8 + 277) = v7;
    v9 = SuplUtils::GetInstance(v8);
    v10 = v9[278];
    v25[2] = v10 == 1;
    v11 = SuplUtils::GetInstance(v9);
    v12 = 0;
    if (!v11[279])
    {
      v12 = v11[276] == 1;
    }

    v25[0] = v12;
    v13 = SuplUtils::GetInstance(v11);
    v14 = v13[277];
    v25[1] = v14 == 1;
    v15 = *(SuplUtils::GetInstance(v13) + 279);
    v25[3] = v15 == 1;
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v17 = 70;
      if (v15 == 1)
      {
        v18 = 84;
      }

      else
      {
        v18 = 70;
      }

      if (v10 == 1)
      {
        v19 = 84;
      }

      else
      {
        v19 = 70;
      }

      v24 = v18;
      if (v14 == 1)
      {
        v20 = 84;
      }

      else
      {
        v20 = 70;
      }

      if (v12)
      {
        v17 = 84;
      }

      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PPDU_Config_Out GPS MSA,%c,MSB,%c,Auto,%c,DisableMsa,%c\n", v16, "SPL", 73, "GN_SUPL_Extd_Set_Config", v17, v20, v19, v24);
      LbsOsaTrace_WriteLog(0x12u, __str, v21, 4, 1);
    }

    GN_SUPL_PPDU_Config_Out(v25);
  }

  result = a1 != 0;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_Abort(int a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  result = Trace_GN_SUPL_Abort(a1, a2);
  if (a2 == 255)
  {
    result = SUPL_Message_Init();
    if (result)
    {
      *(result + 20) = a1;
      *(result + 16) = 11;
      *(result + 136) = -1;
      v5 = qword_2A14BEA08;
      v6 = (qword_2A14BEA08 + 8);
      if (!qword_2A14BEA08)
      {
        v6 = &SUPL_Queue;
      }

      *v6 = result;
      qword_2A14BEA08 = result;
      *result = v5;
      *(result + 8) = 0;
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "GN_SUPL_Abort", 1537);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SUPL_indicate_trigger_UT_expiry(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  result = SUPL_Message_Init();
  if (result)
  {
    *(result + 20) = a1;
    *(result + 16) = 6;
    v3 = qword_2A14BEA08;
    v4 = (qword_2A14BEA08 + 8);
    if (!qword_2A14BEA08)
    {
      v4 = &SUPL_Queue;
    }

    *v4 = result;
    qword_2A14BEA08 = result;
    *result = v3;
    *(result + 8) = 0;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SUPL_indicate_trigger_UT_expiry", 1537);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_Mobile_Info_Ind_In(uint64_t a1)
{
  v1 = a1;
  v163 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_LocationId(a1);
  if (v1)
  {
    v136[0] = 0;
    v137 = 0;
    v138 = 0xFFFFFFFFLL;
    v140 = 0;
    v141 = 0;
    __src = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = -1;
    v147 = 0;
    v148 = 0xFFFF000000000000;
    v149 = 0;
    v150 = 0;
    v151[0] = 0;
    *(v151 + 6) = 0;
    v151[2] = 0;
    v151[3] = 0;
    v152 = 0;
    v153 = 1;
    v2 = *(v1 + 4);
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v59 = *(v1 + 12);
          if (v59 <= 0x3E7)
          {
            v60 = *(v1 + 14);
            if (v60 <= 0x3E7)
            {
              v61 = *(v1 + 16);
              if (!HIWORD(v61))
              {
                v62 = *(v1 + 20);
                if (!HIWORD(v62))
                {
                  v136[0] = 1;
                  LOWORD(v138) = v59;
                  WORD1(v138) = v60;
                  WORD2(v138) = v61;
                  HIWORD(v138) = v62;
                  if (*(v1 + 24) <= 0xFFu)
                  {
                    v142 = *(v1 + 24);
                    HIBYTE(v137) = 1;
                  }

                  if (*(v1 + 26))
                  {
                    v63 = 0;
                    if (*(v1 + 26) >= 0xFu)
                    {
                      v64 = 15;
                    }

                    else
                    {
                      v64 = *(v1 + 26);
                    }

                    v65 = (v1 + 31);
                    do
                    {
                      v66 = *(v65 - 3);
                      if (v66 <= 0x3FF)
                      {
                        v67 = *(v65 - 1);
                        if (v67 <= 0x3F)
                        {
                          v68 = *v65;
                          if (v68 <= 0x3F)
                          {
                            if (v63 >= v141)
                            {
                              v69 = __src;
                              v70 = v63 - __src;
                              v71 = 0xAAAAAAAAAAAAAAABLL * ((v63 - __src) >> 2);
                              v72 = v71 + 1;
                              if (v71 + 1 > 0x1555555555555555)
                              {
                                std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                              }

                              if (0x5555555555555556 * ((v141 - __src) >> 2) > v72)
                              {
                                v72 = 0x5555555555555556 * ((v141 - __src) >> 2);
                              }

                              if (0xAAAAAAAAAAAAAAABLL * ((v141 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                              {
                                v73 = 0x1555555555555555;
                              }

                              else
                              {
                                v73 = v72;
                              }

                              if (v73)
                              {
                                std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_NMRelement>>(&__src, v73);
                              }

                              v74 = 12 * v71;
                              *v74 = v66;
                              *(v74 + 4) = v67;
                              *(v74 + 8) = v68;
                              v63 = (12 * v71 + 12);
                              v75 = (v74 - v70);
                              memcpy((v74 - v70), v69, v70);
                              v76 = __src;
                              __src = v75;
                              v140 = v63;
                              v141 = 0;
                              if (v76)
                              {
                                operator delete(v76);
                              }
                            }

                            else
                            {
                              *v63 = v66;
                              v63[1] = v67;
                              v63[2] = v68;
                              v63 += 3;
                            }

                            v140 = v63;
                          }
                        }
                      }

                      v65 += 4;
                      --v64;
                    }

                    while (v64);
                    if (__src != v63)
                    {
                      LOBYTE(v137) = 1;
                    }
                  }

                  goto LABEL_201;
                }
              }
            }
          }

          goto LABEL_151;
        }

        if (v2 == 2)
        {
          v3 = *(v1 + 12);
          if (v3 <= 0x3E7)
          {
            v4 = *(v1 + 14);
            if (v4 <= 0x3E7)
            {
              v5 = *(v1 + 20);
              if (!(v5 >> 28))
              {
                v136[0] = 2;
                LOWORD(v145) = v3;
                WORD1(v145) = v4;
                HIDWORD(v145) = v5;
                v6 = *(v1 + 24);
                v7 = *(v1 + 26);
                v146 = 0;
                WORD1(v148) = v6;
                if ((v7 & 0xC000) == 0)
                {
                  LOWORD(v148) = v7;
                  v147 = 1;
                }

                LOBYTE(v143) = v6 < 0x4000;
                if (*(v1 + 28) <= 0x1FFu)
                {
                  HIWORD(v148) = *(v1 + 28);
                  HIBYTE(v143) = 1;
                }

                if (*(v1 + 30))
                {
                  v8 = 0;
                  if (*(v1 + 30) >= 8u)
                  {
                    v9 = 8;
                  }

                  else
                  {
                    v9 = *(v1 + 30);
                  }

                  v117 = v1;
                  v10 = (v1 + 48);
                  do
                  {
                    *(&v125 + 1) = 0;
                    BYTE6(v125) = 0;
                    LOWORD(v126[0]) = 0;
                    BYTE6(v126[0]) = -1;
                    v127[0] = 0;
                    v127[1] = 0;
                    v126[1] = 0;
                    v11 = (v1 + 32 + 392 * v8);
                    v12 = *v11;
                    v13 = v11[1];
                    BYTE4(v125) = 0;
                    *(v126 + 2) = v12;
                    if ((v13 & 0xC000) == 0)
                    {
                      LOWORD(v126[0]) = v13;
                      BYTE6(v125) = 1;
                    }

                    LOBYTE(v125) = v12 < 0x4000;
                    if ((v11[2] & 0x80000000) == 0)
                    {
                      BYTE6(v126[0]) = *(v11 + 4);
                      BYTE1(v125) = 1;
                    }

                    v14 = *(v11 + 5);
                    if (v14)
                    {
                      if (v14 >= 0x20)
                      {
                        v15 = 32;
                      }

                      else
                      {
                        v15 = v14;
                      }

                      v16 = v10;
                      do
                      {
                        __str[0] = 0;
                        *&__str[4] = -1;
                        LOWORD(v156) = 0;
                        BYTE2(v156) = 0;
                        DWORD1(v156) = -1;
                        *(&v156 + 7) = -1;
                        *&v157 = 0xFFFFFFFF00000000;
                        BYTE8(v157) = -1;
                        *&v159 = 0;
                        v17 = *(v16 - 2);
                        v158 = 0uLL;
                        if (!(v17 >> 28))
                        {
                          *&__str[4] = v17;
                          __str[0] = 1;
                        }

                        v18 = *(v16 - 2);
                        if (v18 <= 0x1FF)
                        {
                          v155[0] = 0;
                          WORD2(v156) = v18;
                          if (*(v16 - 2) <= 0x3Fu)
                          {
                            WORD3(v156) = *(v16 - 2);
                            LOBYTE(v156) = 1;
                          }

                          if ((*(v16 - 1) & 0x80000000) == 0)
                          {
                            WORD4(v156) = *(v16 - 1);
                            BYTE1(v156) = 1;
                          }

                          if (((*v16 - 46) & 0x80) == 0)
                          {
                            BYTE10(v156) = *v16;
                            BYTE2(v156) = 1;
                          }

                          std::vector<ASN1T_CellMeasuredResults>::push_back[abi:ne200100](&v126[1], __str);
                        }

                        v16 += 12;
                        --v15;
                      }

                      while (v15);
                      if (v126[1] != v127[0])
                      {
                        BYTE2(v125) = 1;
                      }
                    }

                    if (v125 == 1 || BYTE1(v125) == 1)
                    {
                      std::vector<ASN1T_MeasuredResults>::push_back[abi:ne200100](&v149, &v125);
                    }

                    *__str = &v126[1];
                    std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
                    ++v8;
                    v10 += 392;
                  }

                  while (v8 != v9);
LABEL_199:
                  v1 = v117;
                  if (v149 != v150)
                  {
                    v144 = 1;
                  }

                  goto LABEL_201;
                }

                if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v115 = mach_continuous_time();
                  v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA Serving Cell Info FrequncyInfo is not set\n", (*&g_MacClockTicksToMsRelation * v115), "SPL", 73, "FillLocationIDInfo");
                  LbsOsaTrace_WriteLog(0x12u, __str, v116, 4, 1);
                }

                goto LABEL_201;
              }
            }
          }

          goto LABEL_151;
        }

LABEL_103:
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v57 = mach_continuous_time();
          v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RatType,%u\n", (*&g_MacClockTicksToMsRelation * v57), "SPL", 69, "FillLocationIDInfo", 515, *(v1 + 4));
          LbsOsaTrace_WriteLog(0x12u, __str, v58, 0, 1);
        }

        goto LABEL_201;
      }

LABEL_96:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v50 = mach_continuous_time();
        v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RatType is either CDMA or not Set\n", (*&g_MacClockTicksToMsRelation * v50), "SPL", 69, "FillLocationIDInfo", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v51, 0, 1);
      }

      goto LABEL_201;
    }

    if (v2 == 3)
    {
      v52 = *(v1 + 12);
      if (v52 <= 0x3E7)
      {
        v53 = *(v1 + 14);
        if (v53 <= 0x3E7)
        {
          v54 = *(v1 + 20);
          if (!(v54 >> 28))
          {
            v136[0] = 2;
            LOWORD(v145) = v52;
            WORD1(v145) = v53;
            HIDWORD(v145) = v54;
            v55 = *(v1 + 24);
            if ((v55 & 0xC000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v56 = 1;
              v146 = 1;
              WORD2(v148) = v55;
            }

            v143 = v56;
            if (*(v1 + 28))
            {
              v85 = 0;
              if (*(v1 + 28) >= 8u)
              {
                v86 = 8;
              }

              else
              {
                v86 = *(v1 + 28);
              }

              v117 = v1;
              v119 = v86;
              v87 = v1 + 45;
              do
              {
                v88 = 0;
                *(&v125 + 1) = 0;
                BYTE6(v125) = 0;
                LODWORD(v126[0]) = 0;
                WORD2(v126[0]) = 0;
                BYTE6(v126[0]) = -1;
                v127[0] = 0;
                v127[1] = 0;
                v126[1] = 0;
                v89 = v1 + 32 + 772 * v85;
                v90 = *v89;
                if ((*v89 & 0xC000) == 0)
                {
                  v88 = 1;
                  BYTE4(v125) = 1;
                  WORD2(v126[0]) = v90;
                }

                LOBYTE(v125) = v88;
                if ((*(v89 + 2) & 0x80000000) == 0)
                {
                  BYTE6(v126[0]) = *(v89 + 2);
                  BYTE1(v125) = 1;
                }

                if (*(v89 + 3))
                {
                  v120 = v87;
                  v121 = v85;
                  v91 = 0;
                  if (*(v89 + 3) >= 0x20u)
                  {
                    v92 = 32;
                  }

                  else
                  {
                    v92 = *(v89 + 3);
                  }

                  v93 = v89 + 4;
                  do
                  {
                    __str[0] = 0;
                    *&__str[4] = -1;
                    LOWORD(v156) = 0;
                    BYTE2(v156) = 0;
                    DWORD1(v156) = -1;
                    *(&v156 + 7) = -1;
                    *&v157 = 0xFFFFFFFF00000000;
                    BYTE8(v157) = -1;
                    *&v159 = 0;
                    v158 = 0uLL;
                    v155[0] = -1;
                    v94 = v93 + 24 * v91;
                    if (!(*v94 >> 28))
                    {
                      *&__str[4] = *v94;
                      __str[0] = 1;
                    }

                    v95 = *(v94 + 4);
                    if (v95 < 0)
                    {
                      goto LABEL_187;
                    }

                    v155[0] = 1;
                    BYTE4(v157) = v95;
                    if (*(v94 + 5) <= 0xEu)
                    {
                      BYTE5(v157) = *(v94 + 5);
                      LOBYTE(v157) = 1;
                    }

                    if ((*(v94 + 6) & 0x80000000) == 0)
                    {
                      WORD3(v157) = *(v94 + 6);
                      BYTE1(v157) = 1;
                    }

                    if (((*(v94 + 7) - 46) & 0x80) == 0)
                    {
                      BYTE8(v157) = *(v94 + 7);
                      BYTE2(v157) = 1;
                    }

                    v96 = *(v94 + 8);
                    if (!v96)
                    {
LABEL_187:
                      v98 = 0;
                    }

                    else
                    {
                      v97 = 0;
                      while (1)
                      {
                        v99 = *(&v158 + 1);
                        v98 = v158;
                        if (*(&v158 + 1) - v158 >= 0xEuLL)
                        {
                          break;
                        }

                        if ((*(v87 + v97) & 0x80000000) == 0)
                        {
                          std::vector<unsigned char>::push_back[abi:ne200100](&v158, (v87 + v97));
                          v96 = *(v94 + 8);
                        }

                        if (v97 <= 0xC && ++v97 < v96)
                        {
                          continue;
                        }

                        v99 = *(&v158 + 1);
                        v98 = v158;
                        break;
                      }

                      if (v98 != v99)
                      {
                        BYTE3(v157) = 1;
                      }
                    }

                    if (v155[0] != 255)
                    {
                      std::vector<ASN1T_CellMeasuredResults>::push_back[abi:ne200100](&v126[1], __str);
                      v98 = v158;
                    }

                    if (v98)
                    {
                      *(&v158 + 1) = v98;
                      operator delete(v98);
                    }

                    ++v91;
                    v87 += 24;
                  }

                  while (v91 != v92);
                  v87 = v120;
                  v85 = v121;
                  if (v126[1] != v127[0])
                  {
                    BYTE2(v125) = 1;
                  }
                }

                if (v125 == 1 || BYTE1(v125) == 1)
                {
                  std::vector<ASN1T_MeasuredResults>::push_back[abi:ne200100](&v149, &v125);
                }

                *__str = &v126[1];
                std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
                ++v85;
                v87 += 772;
              }

              while (v85 != v119);
              goto LABEL_199;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v113 = mach_continuous_time();
              v114 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No measured results exists\n", (*&g_MacClockTicksToMsRelation * v113), "SPL", 87, "FillLocationIDInfo", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v114, 2, 1);
            }

LABEL_201:
            v100 = *v1;
            if (*v1)
            {
              if (v100 != 2)
              {
                if (v100 == 1)
                {
                  v153 = 0;
                }

                else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v107 = mach_continuous_time();
                  v108 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx locIdStatus,%u\n", (*&g_MacClockTicksToMsRelation * v107), "SPL", 69, "FillLocationIDInfo", 770, *v1);
                  LbsOsaTrace_WriteLog(0x12u, __str, v108, 0, 1);
                }

                goto LABEL_208;
              }

              v101 = 1;
            }

            else
            {
              v101 = 2;
            }

            v153 = v101;
LABEL_208:
            v102 = SUPL_Message_Init();
            if (v102)
            {
              v103 = v102;
              v104 = operator new(0x90uLL, MEMORY[0x29EDC9418]);
              if (v104)
              {
                *v104 = 0;
                *(v104 + 4) = 0;
                *(v104 + 10) = 0xFFFFFFFFLL;
                *(v104 + 4) = 0;
                *(v104 + 5) = 0;
                *(v104 + 3) = 0;
                v104[48] = 0;
                *(v104 + 28) = 0;
                v104[58] = 0;
                *(v104 + 60) = -1;
                v104[70] = 0;
                *(v104 + 9) = 0xFFFF000000000000;
                *(v104 + 11) = 0;
                *(v104 + 12) = 0;
                *(v104 + 10) = 0;
                *(v104 + 102) = 0;
                *(v104 + 15) = 0;
                *(v104 + 16) = 0;
                *(v104 + 14) = 0;
                v104[136] = 1;
                *(v103 + 128) = v104;
                ASN1T_LocationId::operator=(v104, v136);
              }

              else
              {
                *(v103 + 128) = 0;
              }

              *(v103 + 16) = 7;
              *(v103 + 32) = *(v1 + 8);
              v109 = qword_2A14BEA08;
              v110 = (qword_2A14BEA08 + 8);
              if (!qword_2A14BEA08)
              {
                v110 = &SUPL_Queue;
              }

              *v110 = v103;
              qword_2A14BEA08 = v103;
              *v103 = v109;
              *(v103 + 8) = 0;
              v19 = 1;
              goto LABEL_220;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v105 = mach_continuous_time();
              v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v105), "SPL", 69, "GN_SUPL_Mobile_Info_Ind_In", 1537);
              LbsOsaTrace_WriteLog(0x12u, __str, v106, 0, 1);
            }

LABEL_213:
            v19 = 0;
LABEL_220:
            ASN1T_CellInfo::~ASN1T_CellInfo(v136);
            goto LABEL_221;
          }
        }
      }

LABEL_151:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v83 = mach_continuous_time();
        v84 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status of LocID is FALSE\n", (*&g_MacClockTicksToMsRelation * v83), "SPL", 69, "GN_SUPL_Mobile_Info_Ind_In", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v84, 0, 1);
      }

      goto LABEL_213;
    }

    if (v2 == 4)
    {
      goto LABEL_96;
    }

    if (v2 != 5)
    {
      goto LABEL_103;
    }

    if (*(v1 + 20) >= 0x1F8u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v77 = mach_continuous_time();
        v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Physical Cell Id Out of Range %d\n", (*&g_MacClockTicksToMsRelation * v77), "SPL", 69, "FillLocationIDInfo", 514, *(v1 + 20));
        LbsOsaTrace_WriteLog(0x12u, __str, v78, 0, 1);
      }

      goto LABEL_151;
    }

    LOBYTE(v125) = 0;
    *v126 = 0u;
    *v127 = 0u;
    v128 = 0u;
    *v129 = 0u;
    v130 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    if (ConvertIntValsToASN1T_CellGlobalIdEUTRA(&v125, &v122, *(v1 + 12), *(v1 + 14), *(v1 + 16), *(v1 + 24)))
    {
      v136[0] = 4;
      v22 = operator new(0xA0uLL, MEMORY[0x29EDC9418]);
      if (v22)
      {
        v23 = v22;
        *(v22 + 13) = 0;
        v24 = v22 + 104;
        *(v22 + 17) = 0;
        v25 = v22 + 136;
        *(v22 + 2) = 0;
        *(v22 + 18) = 0;
        *(v22 + 19) = 0;
        *(v22 + 40) = 0u;
        *(v22 + 56) = 0u;
        *(v22 + 72) = 0u;
        *(v22 + 11) = 0;
        *(v22 + 24) = 0u;
        *(v22 + 14) = 0;
        *(v22 + 15) = 0;
        *(v22 + 32) = 0;
        *v22 = 3;
        *(v22 + 48) = *(v1 + 20);
        v22[16] = v125;
        v152 = v22;
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v22 + 3, v126[0], v126[1], v126[1] - v126[0]);
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v23 + 6, v127[1], v128, v128 - v127[1]);
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v23 + 9, v129[0], v129[1], v129[1] - v129[0]);
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v24, v122, v123, v123 - v122);
        v26 = *(v1 + 28);
        if (v26 <= 0x61)
        {
          v23[128] = v26;
          v23[8] = 1;
        }

        v27 = *(v1 + 29);
        if (v27 <= 0x22)
        {
          v23[129] = v27;
          v23[9] = 1;
        }

        v28 = *(v1 + 36);
        if (v28 <= 0x502)
        {
          *(v23 + 65) = v28;
          v23[10] = 1;
        }

        v118 = v1;
        v29 = *(v1 + 38);
        if (*(v1 + 38))
        {
          v30 = 0;
          if (v29 >= 8)
          {
            v31 = 8;
          }

          else
          {
            v31 = v29;
          }

          do
          {
            __str[0] = 0;
            *&__str[2] = 0;
            v155[0] = 0;
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v162 = 0;
            v32 = (v118 + 40 + 20 * v30);
            if (v32[4] <= 0x1F7u)
            {
              *&__str[2] = v32[4];
              if (*(v32 + 10) <= 0x61u)
              {
                BYTE2(v162) = *(v32 + 10);
                LOBYTE(v162) = 1;
              }

              if (*(v32 + 11) <= 0x22u)
              {
                HIBYTE(v162) = *(v32 + 11);
                BYTE1(v162) = 1;
              }

              __str[0] = ConvertIntValsToASN1T_CellGlobalIdEUTRA(v155, &v160 + 8, *v32, v32[1], *(v32 + 1), v32[6]);
              v34 = *(v23 + 18);
              v33 = *(v23 + 19);
              if (v34 >= v33)
              {
                v37 = 0xEEEEEEEEEEEEEEEFLL * ((v34 - *v25) >> 3);
                v38 = v37 + 1;
                if (v37 + 1 > 0x222222222222222)
                {
                  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                }

                v39 = 0xEEEEEEEEEEEEEEEFLL * ((v33 - *v25) >> 3);
                if (2 * v39 > v38)
                {
                  v38 = 2 * v39;
                }

                if (v39 >= 0x111111111111111)
                {
                  v40 = 0x222222222222222;
                }

                else
                {
                  v40 = v38;
                }

                v135 = v25;
                if (v40)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>>(v25, v40);
                }

                v41 = 120 * v37;
                v131 = 0;
                v132 = v41;
                v133 = v41;
                v134 = 0;
                *v41 = *__str;
                v42 = v155[0];
                *(v41 + 16) = 0;
                *(v41 + 8) = v42;
                *(v41 + 24) = 0;
                *(v41 + 32) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v41 + 16, v156, *(&v156 + 1), *(&v156 + 1) - v156);
                *(v41 + 40) = 0;
                *(v41 + 48) = 0;
                *(v41 + 56) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v41 + 40, *(&v157 + 1), v158, v158 - *(&v157 + 1));
                *(v41 + 64) = 0;
                *(v41 + 72) = 0;
                *(v41 + 80) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v41 + 64, v159, *(&v159 + 1), *(&v159 + 1) - v159);
                *(v41 + 88) = 0;
                *(v41 + 96) = 0;
                *(v41 + 104) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v41 + 88, *(&v160 + 1), v161, v161 - *(&v160 + 1));
                *(v41 + 112) = v162;
                v36 = v133 + 15;
                v133 += 15;
                v43 = *(v23 + 17);
                v44 = *(v23 + 18);
                v45 = v132 + v43 - v44;
                if (v43 != v44)
                {
                  v46 = v132 + v43 - v44;
                  v47 = *(v23 + 17);
                  do
                  {
                    *v46 = *v47;
                    v46[8] = *(v47 + 8);
                    *(v46 + 3) = 0;
                    *(v46 + 4) = 0;
                    *(v46 + 2) = 0;
                    *(v46 + 1) = *(v47 + 16);
                    *(v46 + 4) = *(v47 + 32);
                    *(v47 + 16) = 0;
                    *(v47 + 24) = 0;
                    *(v47 + 32) = 0;
                    *(v46 + 5) = 0;
                    *(v46 + 6) = 0;
                    *(v46 + 7) = 0;
                    *(v46 + 40) = *(v47 + 40);
                    *(v46 + 7) = *(v47 + 56);
                    *(v47 + 40) = 0;
                    *(v47 + 48) = 0;
                    *(v47 + 56) = 0;
                    *(v46 + 8) = 0;
                    *(v46 + 9) = 0;
                    *(v46 + 10) = 0;
                    *(v46 + 4) = *(v47 + 64);
                    *(v46 + 10) = *(v47 + 80);
                    *(v47 + 64) = 0;
                    *(v47 + 72) = 0;
                    *(v47 + 80) = 0;
                    *(v46 + 11) = 0;
                    *(v46 + 12) = 0;
                    *(v46 + 13) = 0;
                    *(v46 + 88) = *(v47 + 88);
                    *(v46 + 13) = *(v47 + 104);
                    *(v47 + 88) = 0;
                    *(v47 + 96) = 0;
                    *(v47 + 104) = 0;
                    *(v46 + 28) = *(v47 + 112);
                    v47 += 120;
                    v46 += 120;
                  }

                  while (v47 != v44);
                  do
                  {
                    std::allocator_traits<std::allocator<ASN1T_MeasResultEUTRA>>::destroy[abi:ne200100]<ASN1T_MeasResultEUTRA,0>(v43);
                    v43 += 120;
                  }

                  while (v43 != v44);
                  v43 = *v25;
                  v36 = v133;
                }

                *(v23 + 17) = v45;
                *(v23 + 18) = v36;
                v48 = *(v23 + 19);
                *(v23 + 19) = v134;
                v133 = v43;
                v134 = v48;
                v131 = v43;
                v132 = v43;
                std::__split_buffer<ASN1T_MeasResultEUTRA>::~__split_buffer(&v131);
              }

              else
              {
                *v34 = *__str;
                v35 = v155[0];
                *(v34 + 16) = 0;
                *(v34 + 8) = v35;
                *(v34 + 24) = 0;
                *(v34 + 32) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v34 + 16, v156, *(&v156 + 1), *(&v156 + 1) - v156);
                *(v34 + 40) = 0;
                *(v34 + 48) = 0;
                *(v34 + 56) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v34 + 40, *(&v157 + 1), v158, v158 - *(&v157 + 1));
                *(v34 + 64) = 0;
                *(v34 + 72) = 0;
                *(v34 + 80) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v34 + 64, v159, *(&v159 + 1), *(&v159 + 1) - v159);
                *(v34 + 88) = 0;
                *(v34 + 96) = 0;
                *(v34 + 104) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v34 + 88, *(&v160 + 1), v161, v161 - *(&v160 + 1));
                *(v34 + 112) = v162;
                v36 = (v34 + 120);
                *(v23 + 18) = v34 + 120;
              }

              *(v23 + 18) = v36;
              if (*(&v160 + 1))
              {
                *&v161 = *(&v160 + 1);
                operator delete(*(&v160 + 1));
              }
            }

            if (v159)
            {
              *(&v159 + 1) = v159;
              operator delete(v159);
            }

            if (*(&v157 + 1))
            {
              *&v158 = *(&v157 + 1);
              operator delete(*(&v157 + 1));
            }

            if (v156)
            {
              *(&v156 + 1) = v156;
              operator delete(v156);
            }

            ++v30;
          }

          while (v30 != v31);
        }

        v49 = 1;
        if (*(v23 + 17) != *(v23 + 18))
        {
          v23[11] = 1;
        }

        v1 = v118;
LABEL_142:
        if (v122)
        {
          v123 = v122;
          operator delete(v122);
        }

        if (v129[0])
        {
          v129[1] = v129[0];
          operator delete(v129[0]);
        }

        if (v127[1])
        {
          *&v128 = v127[1];
          operator delete(v127[1]);
        }

        if (v126[0])
        {
          v126[1] = v126[0];
          operator delete(v126[0]);
        }

        if (v49)
        {
          goto LABEL_201;
        }

        goto LABEL_151;
      }

      v152 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v81 = mach_continuous_time();
        v82 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo Ver2\n", (*&g_MacClockTicksToMsRelation * v81), "SPL", 69, "FillLocationIDInfo", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v82, 0, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v79 = mach_continuous_time();
      v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConvertIntValsToASN1T_CellGlobalIdEUTRA function returned error\n", (*&g_MacClockTicksToMsRelation * v79), "SPL", 69, "FillLocationIDInfo", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v80, 0, 1);
    }

    v49 = 0;
    goto LABEL_142;
  }

  v19 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "GN_SUPL_Mobile_Info_Ind_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
    v19 = 0;
  }

LABEL_221:
  v111 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_299627BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  gnss::Emergency::Supl::LocationId::~LocationId(&a24);
  ASN1T_CellInfo::~ASN1T_CellInfo(&a39);
  _Unwind_Resume(a1);
}

BOOL GN_SUPL_AidRequest_In(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v88 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_AidRequest_In(a1, a2, a3);
  v6 = SUPL_Message_Init();
  if (v6)
  {
    *&v86[5] = 0;
    *&v86[2] = 0;
    if (!v3)
    {
      v76 = 0;
      v77 = 0;
      v79 = 0;
      v80 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v78 = 0;
      v75 = 0;
      v74 = 0;
      v10 = -254;
      goto LABEL_51;
    }

    v8 = *(v3 + 8);
    v7 = *(v3 + 12);
    if (v8 == 2)
    {
      v9 = -255;
    }

    else
    {
      v9 = -254;
    }

    if (v8 == 1)
    {
      v10 = -256;
    }

    else
    {
      v10 = v9;
    }

    if (v7 > 3)
    {
      if (v7 > 15)
      {
        if (v7 == 16)
        {
          v78 = 0;
          v79 = 0;
          v77 = 0;
          v10 &= 0x903u;
          if (*(v3 + 16) == 2)
          {
            v24 = *(v3 + 20) | 0x800000;
          }

          else
          {
            v24 = *(v3 + 20);
          }

          v17 = *(v3 + 24);
          if (*(v3 + 36) == 2)
          {
            v16 = *(v3 + 28) | 0x8000;
          }

          else
          {
            v16 = *(v3 + 28);
          }

          v13 = *(v3 + 40);
          v15 = *(v3 + 30);
          v14 = *(v3 + 31);
          v25 = *(v3 + 41);
          if (v25 == 255)
          {
            LOBYTE(v25) = 0;
          }

          LODWORD(v80) = v24;
          BYTE4(v80) = v25;
          goto LABEL_50;
        }

        if (v7 == 32)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (v7 == 4)
        {
          v80 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v10 &= 0x303u;
          if (*(v3 + 16) == 2)
          {
            v22 = *(v3 + 20) | 0x800000;
          }

          else
          {
            v22 = *(v3 + 20);
          }

          LODWORD(v77) = v22;
          HIDWORD(v77) = *(v3 + 24);
          LODWORD(v78) = *(v3 + 30);
          HIDWORD(v78) = *(v3 + 31);
          if (*(v3 + 41) == 255)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v3 + 41);
          }

          LOBYTE(v79) = *(v3 + 32);
          BYTE4(v79) = v23;
          goto LABEL_50;
        }

        if (v7 == 8)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }
      }

LABEL_29:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape,%u\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "GN_SUPL_AidRequest_In", 515, *(v3 + 12));
        LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
      }

      goto LABEL_128;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
LABEL_48:
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape,%u\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 69, "GN_SUPL_AidRequest_In", 770, *(v3 + 12));
          LbsOsaTrace_WriteLog(0x12u, __str, v27, 0, 1);
        }

LABEL_49:
        v79 = 0;
        v80 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v77 = 0;
        v78 = 0;
LABEL_50:
        v74 = *(v3 + 54);
        v75 = *(v3 + 52);
        LOBYTE(v76) = *(v3 + 62);
        WORD2(v76) = *(v3 + 64);
        LODWORD(v3) = *(v3 + 68);
LABEL_51:
        v6[16] = 4;
        *(v6 + 5) = a1;
        v28 = operator new(0x10uLL, MEMORY[0x29EDC9418]);
        if (!v28)
        {
          *(v6 + 15) = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AID Req\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "GN_SUPL_AidRequest_In", 1537);
            LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
          }

          goto LABEL_125;
        }

        v29 = v28;
        v73 = v3;
        *v28 = 0;
        v28[1] = 0;
        *(v6 + 15) = v28;
        LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v81, 937, "ConvertAidReq");
        if (a2)
        {
          v30 = *(a2 + 8);
          if (v30)
          {
            v31 = 0;
            v82 = 0;
            *v83 = 0u;
            v84 = 0u;
            memset(__p, 0, 25);
            v32 = *v30;
            if (v32 == 1)
            {
              v31 = 32;
              LODWORD(v83[0]) = 32;
            }

            v33 = v30[1];
            if (v33 == 1)
            {
              v31 |= 0x10u;
              LODWORD(v83[0]) = v31;
            }

            if (v30[2] == 1)
            {
              v31 |= 4u;
              LODWORD(v83[0]) = v31;
            }

            else if ((v32 & 1) == 0 && !v33)
            {
              goto LABEL_70;
            }

            v82 = 1;
LABEL_70:
            if (v30[3] == 1)
            {
              v41 = *(a2 + 16);
              if (v41)
              {
                if (*v41 == 1)
                {
                  if (*(v41 + 4) == 1)
                  {
                    v31 |= 2u;
                    LODWORD(v83[0]) = v31;
                  }

                  if (*(v41 + 5) == 1)
                  {
                    v31 |= 0x80u;
                    LODWORD(v83[0]) = v31;
                  }

                  if (*(v41 + 6) == 1)
                  {
                    v31 |= 1u;
                    LODWORD(v83[0]) = v31;
                  }

                  if (*(v41 + 7) == 1)
                  {
                    v31 |= 8u;
                    LODWORD(v83[0]) = v31;
                  }

                  if (*(v41 + 8) == 1)
                  {
                    LODWORD(v83[0]) = v31 | 0x40;
                  }

                  if (*(v41 + 16) - 1 <= 0x3FE)
                  {
                    WORD2(v83[0]) = *(v41 + 16);
                  }

                  if (*(v41 + 18) - 1 <= 0xA6)
                  {
                    BYTE6(v83[0]) = *(v41 + 18);
                  }

                  if (*(v41 + 19) - 1 <= 9)
                  {
                    LOBYTE(__p[3]) = *(v41 + 19);
                  }

                  if (*(v41 + 20))
                  {
                    if (*(v41 + 20) >= 0x21u)
                    {
                      v71 = v16;
                      v72 = 0;
                      v46 = 0;
                      v47 = 32;
                      HIBYTE(v83[0]) = 32;
                      v69 = v10;
                      v70 = v13;
                      v68 = v17;
                      do
                      {
                        v48 = *(a2 + 16);
                        if (*(v48 + v46 + 21) <= 0x3Fu && *(v48 + 2 * v46 + 86) <= 0xFFu)
                        {
                          std::vector<unsigned char>::push_back[abi:ne200100](&v83[1], (v48 + v46 + 21));
                          v49 = __p[1];
                          if (__p[1] >= __p[2])
                          {
                            v51 = __p[0];
                            v52 = (__p[1] - __p[0]);
                            v53 = __p[1] - __p[0] + 1;
                            if (v53 < 0)
                            {
                              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                            }

                            v54 = __p[2] - __p[0];
                            if (2 * (__p[2] - __p[0]) > v53)
                            {
                              v53 = 2 * v54;
                            }

                            if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
                            {
                              v55 = 0x7FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v55 = v53;
                            }

                            if (v55)
                            {
                              operator new();
                            }

                            v56 = __p[1] - __p[0];
                            *v52 = *(*(a2 + 16) + 2 * v46 + 86);
                            v50 = v52 + 1;
                            memcpy(0, v51, v56);
                            __p[0] = 0;
                            __p[1] = v52 + 1;
                            __p[2] = 0;
                            if (v51)
                            {
                              operator delete(v51);
                            }

                            v10 = v69;
                            v13 = v70;
                            v17 = v68;
                          }

                          else
                          {
                            *__p[1] = *(*(a2 + 16) + 2 * v46 + 86);
                            v50 = v49 + 1;
                          }

                          __p[1] = v50;
                          v16 = v71;
                          ++v72;
                          v47 = HIBYTE(v83[0]);
                        }

                        ++v46;
                      }

                      while (v46 < v47);
                    }

                    else
                    {
                      v72 = 0;
                    }

                    HIBYTE(v83[0]) = v72;
                  }

                  v82 = 1;
                }
              }

              else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v44 = mach_continuous_time();
                v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Assistance\n", (*&g_MacClockTicksToMsRelation * v44), "SPL", 87, "ConvertAidReq", 770);
                LbsOsaTrace_WriteLog(0x12u, __str, v45, 2, 1);
              }
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AGPS Assistance not requested\n", (*&g_MacClockTicksToMsRelation * v42), "SPL", 87, "ConvertAidReq", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v43, 2, 1);
            }

            v57 = operator new(0x48uLL, MEMORY[0x29EDC9418]);
            v40 = v57;
            if (v57)
            {
              v57[64] = 0;
              *(v57 + 2) = 0u;
              *(v57 + 3) = 0u;
              *(v57 + 1) = 0u;
              *v57 = v82;
              v58 = v83[1];
              *(v57 + 1) = v83[0];
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v57 + 2, v58, v84, v84 - v58);
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v40 + 5, __p[0], __p[1], __p[1] - __p[0]);
              v40[64] = __p[3];
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v83[1])
            {
              *&v84 = v83[1];
              operator delete(v83[1]);
            }

            goto LABEL_122;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v38 = mach_continuous_time();
            v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Asst Req\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 87, "ConvertAidReq", 770);
            LbsOsaTrace_WriteLog(0x12u, __str, v39, 2, 1);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "ConvertAidReq", 513);
          LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
        }

        v40 = 0;
LABEL_122:
        LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v81);
        *v29 = v40;
        v59 = operator new(0xE8uLL, MEMORY[0x29EDC9418]);
        if (v59)
        {
          v60 = v59;
          *(v59 + 112) = 0;
          v61 = v59 + 224;
          v62 = v17;
          *(v59 + 57) = 0;
          v63 = v59 + 228;
          *(v59 + 25) = 0;
          *(v59 + 26) = 0;
          *(v59 + 215) = 0;
          *(v59 + 24) = 0;
          v29[1] = v59;
          *v59 = v10;
          *(v59 + 2) = 0;
          *(v59 + 6) = 0;
          *(v59 + 4) = 0;
          *(v59 + 10) = 0;
          *(v59 + 6) = 0;
          *(v59 + 14) = 0;
          *(v59 + 8) = v77;
          *(v59 + 18) = 0;
          *(v59 + 10) = HIDWORD(v77);
          *(v59 + 22) = 0;
          *(v59 + 12) = v78;
          *(v59 + 26) = 0;
          *(v59 + 14) = HIDWORD(v78);
          *(v59 + 30) = 0;
          v59[64] = v79;
          v59[65] = BYTE4(v79);
          *(v59 + 17) = v80;
          *(v59 + 36) = 0;
          *(v59 + 19) = v62;
          *(v59 + 40) = 0;
          *(v59 + 21) = v16;
          *(v59 + 44) = 0;
          *(v59 + 23) = v15;
          *(v59 + 48) = 0;
          *(v59 + 25) = v14;
          *(v59 + 52) = 0;
          *(v59 + 27) = v13;
          *(v59 + 56) = 0;
          v59[116] = 0;
          v59[117] = BYTE4(v80);
          *(v59 + 30) = 0;
          *(v59 + 62) = 0;
          *(v59 + 32) = 0;
          *(v59 + 66) = 0;
          *(v59 + 34) = 0;
          *(v59 + 70) = 0;
          *(v59 + 142) = *v86;
          v59[150] = v86[8];
          *(v59 + 38) = 0;
          *(v59 + 78) = 0;
          *(v59 + 40) = 0;
          *(v59 + 82) = 0;
          *(v59 + 42) = 0;
          *(v59 + 86) = 0;
          *(v59 + 44) = 0;
          *(v59 + 90) = 0;
          *(v59 + 46) = 0;
          *(v59 + 94) = 0;
          std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>(v59 + 24, 0, 0, 0);
          *(v60 + 108) = v75;
          *(v60 + 218) = vuzp1_s8(v74, v74).u32[0];
          v60[222] = v76;
          *v61 = WORD2(v76);
          *v63 = v73;
        }

        else
        {
          v29[1] = 0;
        }

LABEL_125:
        v64 = qword_2A14BEA08;
        v65 = (qword_2A14BEA08 + 8);
        if (!qword_2A14BEA08)
        {
          v65 = &SUPL_Queue;
        }

        *v65 = v6;
        qword_2A14BEA08 = v6;
        *v6 = v64;
        *(v6 + 1) = 0;
        goto LABEL_128;
      }

      if (v7 == 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      goto LABEL_29;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape is not set\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "GN_SUPL_AidRequest_In", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "GN_SUPL_AidRequest_In", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
  }

LABEL_128:
  result = v6 != 0;
  v67 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299628AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30)
{
  SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(&a30);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(&a27);
  _Unwind_Resume(a1);
}

uint64_t GN_SUPL_PPDU_Delivery_In(int a1, unsigned int a2, unsigned __int8 *a3, int a4, int a5, int a6, int a7)
{
  v7 = a7;
  v64 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_PPDU_Delivery_In(a1, a2, a3, a4, a5, a6, a7);
  switch(a4)
  {
    case 1:
      __p = 0;
      v59 = 0;
      v61 = 0;
      v60 = 0;
      BYTE4(v57) = a6 != 2;
      if (a3)
      {
        LODWORD(v57) = a1;
        v61 = v7;
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a3, &a3[a2], a2);
      }

      else
      {
        BYTE4(v57) = 1;
        LODWORD(v57) = a1;
        v61 = v7;
      }

      v27 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
      if (!v27)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LPP Caps Rsp\n", (*&g_MacClockTicksToMsRelation * v37), "SPL", 69, "SUPL_Handle_LPP_Cap_Rsp_Cb", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v38, 0, 1);
        }

        goto LABEL_32;
      }

      v28 = v27;
      *v27 = 0;
      v27[4] = 1;
      *(v27 + 1) = 0;
      v29 = v27 + 8;
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      v27[32] = 0;
      v30 = SUPL_Message_Init();
      if (!v30)
      {
        MEMORY[0x29C29EB20](v28, 0x1010C40D464F2E8);
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v43 = mach_continuous_time();
          v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v43), "SPL", 69, "SUPL_Handle_LPP_Cap_Rsp_Cb", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v44, 0, 1);
        }

        goto LABEL_32;
      }

      v26 = v30;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v29, __p, v59, v59 - __p);
      *v28 = v57;
      v28[4] = BYTE4(v57);
      *(v26 + 16) = 10;
      *(v26 + 104) = v28;
      goto LABEL_29;
    case 2:
      __p = 0;
      v59 = 0;
      v60 = 0;
      v61 = a6 != 2;
      if (a3)
      {
        LODWORD(v57) = a1;
        v62 = v7;
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a3, &a3[a2], a2);
      }

      else
      {
        v61 = 1;
        LODWORD(v57) = a1;
        v62 = v7;
      }

      v22 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
      if (!v22)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v35), "SPL", 69, "SUPL_Handle_LPP_Ad_Rsp_Cb", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v36, 0, 1);
        }

        goto LABEL_32;
      }

      v23 = v22;
      *v22 = 0;
      v22[1] = 0;
      v24 = v22 + 1;
      v22[2] = 0;
      v22[3] = 0;
      *(v22 + 16) = 1;
      v25 = SUPL_Message_Init();
      if (!v25)
      {
        MEMORY[0x29C29EB20](v23, 0x1010C4039DDA56CLL);
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v41), "SPL", 69, "SUPL_Handle_LPP_Ad_Rsp_Cb", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v42, 0, 1);
        }

        goto LABEL_32;
      }

      v26 = v25;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v24, __p, v59, v59 - __p);
      *v23 = v57;
      *(v23 + 32) = v61;
      *(v26 + 16) = 8;
      *(v26 + 88) = v23;
LABEL_29:
      v31 = qword_2A14BEA08;
      v32 = (qword_2A14BEA08 + 8);
      if (!qword_2A14BEA08)
      {
        v32 = &SUPL_Queue;
      }

      *v32 = v26;
      qword_2A14BEA08 = v26;
      *v26 = v31;
      *(v26 + 8) = 0;
LABEL_32:
      v33 = __p;
      if (!__p)
      {
LABEL_35:
        result = 1;
        goto LABEL_36;
      }

      v59 = __p;
LABEL_34:
      operator delete(v33);
      goto LABEL_35;
    case 3:
      if (a5 != 3)
      {
        if (a5 != 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PduType,%u\n", (*&g_MacClockTicksToMsRelation * v39), "SPL", 69, "GN_SUPL_PPDU_Delivery_In", 770, a5);
            LbsOsaTrace_WriteLog(0x12u, __str, v40, 0, 1);
          }

          goto LABEL_35;
        }

        v14 = SUPL_Message_Init();
        if (v14)
        {
          v15 = v14;
          v14[16] = 5;
          *(v14 + 5) = a1;
          v16 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
          if (v16)
          {
            *v16 = 0;
            v16[1] = 0;
            v16[2] = 0;
            v15[14] = v16;
            *(v16 + 6) = 3;
            *(v16 + 7) = a6;
            *(v16 + 32) = v7;
            if (a2 && a3)
            {
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v16, a3, &a3[a2], a2);
            }

            v17 = qword_2A14BEA08;
            v18 = (qword_2A14BEA08 + 8);
            if (!qword_2A14BEA08)
            {
              v18 = &SUPL_Queue;
            }

            *v18 = v15;
            qword_2A14BEA08 = v15;
            *v15 = v17;
            v15[1] = 0;
            goto LABEL_35;
          }

          v15[14] = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v55 = mach_continuous_time();
            v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Rsp\n", (*&g_MacClockTicksToMsRelation * v55), "SPL", 69, "GN_SUPL_PPDU_Delivery_In", 1537);
            LbsOsaTrace_WriteLog(0x12u, __str, v56, 0, 1);
          }

          SUPL_Message_Free(v15);
        }

        else
        {
          result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
          if (!result)
          {
            goto LABEL_36;
          }

          bzero(__str, 0x410uLL);
          v45 = mach_continuous_time();
          v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v45), "SPL", 69, "GN_SUPL_PPDU_Delivery_In", 1537);
          LbsOsaTrace_WriteLog(0x12u, __str, v46, 0, 1);
        }

        goto LABEL_20;
      }

      v57 = 0;
      __p = 0;
      v59 = 0;
      LOBYTE(v60) = a6 != 2;
      if (a3)
      {
        HIDWORD(v60) = a1;
        v61 = v7;
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v57, a3, &a3[a2], a2);
      }

      else
      {
        LOBYTE(v60) = 1;
        HIDWORD(v60) = a1;
        v61 = v7;
      }

      v47 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
      if (v47)
      {
        v48 = v47;
        *v47 = 0;
        v47[1] = 0;
        v47[2] = 0;
        *(v47 + 24) = v60;
        *(v47 + 7) = HIDWORD(v60);
        *(v47 + 32) = v61;
        v49 = SUPL_Message_Init();
        if (v49)
        {
          v50 = v49;
          if (v57 != __p)
          {
            std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v48, v57, __p, __p - v57);
          }

          *(v50 + 16) = 9;
          *(v50 + 96) = v48;
          v51 = qword_2A14BEA08;
          v52 = (qword_2A14BEA08 + 8);
          if (!qword_2A14BEA08)
          {
            v52 = &SUPL_Queue;
          }

          *v52 = v50;
          qword_2A14BEA08 = v50;
          *v50 = v51;
          *(v50 + 8) = 0;
        }

        else
        {
          MEMORY[0x29C29EB20](v48, 0x1010C4005AEBDE9);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v53 = mach_continuous_time();
        v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL POS Ind\n", (*&g_MacClockTicksToMsRelation * v53), "SPL", 69, "SUPL_Handle_LPP_Pos_Cb", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v54, 0, 1);
      }

      v33 = v57;
      if (!v57)
      {
        goto LABEL_35;
      }

      __p = v57;
      goto LABEL_34;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU ContentType Unknown\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 87, "GN_SUPL_PPDU_Delivery_In", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 2, 1);
LABEL_20:
    result = 0;
  }

LABEL_36:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29962943C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GN_SUPL_PPDU_SessionEnd_In()
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PPDU Session Ended\n", (*&g_MacClockTicksToMsRelation * v0), "SPL", 73, "GN_SUPL_PPDU_SessionEnd_In");
    LbsOsaTrace_WriteLog(0x12u, __str, v1, 4, 1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t std::vector<ASN1T_CellMeasuredResults>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v11 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v11 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v13;
    }

    v35 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>>(a1, v14);
    }

    v15 = 72 * v11;
    v32 = 0;
    v33 = v15;
    v34 = 72 * v11;
    *v15 = *a2;
    *(v15 + 8) = *(a2 + 8);
    v16 = *(a2 + 16);
    *(v15 + 24) = *(a2 + 24);
    *(v15 + 16) = v16;
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    *(v15 + 48) = 0;
    v19 = 72 * v11 + 48;
    *(v19 - 8) = v18;
    *(v19 - 16) = v17;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v19, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    *&v34 = v34 + 72;
    v21 = *a1;
    v20 = a1[1];
    v38[0] = a1;
    v38[1] = &v36;
    v38[2] = &v37;
    v22 = v33 + v21 - v20;
    v36 = v22;
    v37 = v22;
    if (v21 == v20)
    {
      v39 = 1;
    }

    else
    {
      v23 = v33 + v21 - v20;
      v24 = v21;
      do
      {
        *v23 = *v24;
        *(v23 + 8) = *(v24 + 8);
        v25 = *(v24 + 16);
        *(v23 + 24) = *(v24 + 24);
        *(v23 + 16) = v25;
        v26 = *(v24 + 32);
        *(v23 + 40) = *(v24 + 40);
        *(v23 + 32) = v26;
        *(v23 + 56) = 0;
        *(v23 + 64) = 0;
        *(v23 + 48) = 0;
        *(v23 + 48) = *(v24 + 48);
        *(v23 + 64) = *(v24 + 64);
        *(v24 + 48) = 0;
        *(v24 + 56) = 0;
        *(v24 + 64) = 0;
        v24 += 72;
        v23 += 72;
      }

      while (v24 != v20);
      v37 = v23;
      v39 = 1;
      do
      {
        v27 = *(v21 + 48);
        if (v27)
        {
          *(v21 + 56) = v27;
          operator delete(v27);
        }

        v21 += 72;
      }

      while (v21 != v20);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v38);
    v28 = *a1;
    *a1 = v22;
    v29 = a1[2];
    v31 = v34;
    *(a1 + 1) = v34;
    *&v34 = v28;
    *(&v34 + 1) = v29;
    v32 = v28;
    v33 = v28;
    result = std::__split_buffer<ASN1T_CellMeasuredResults>::~__split_buffer(&v32);
    v10 = v31;
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    v6 = *(a2 + 16);
    *(v5 + 24) = *(a2 + 24);
    *(v5 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    *(v5 + 48) = 0;
    *(v5 + 40) = v8;
    *(v5 + 32) = v7;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5 + 48, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    v10 = v5 + 72;
    a1[1] = v5 + 72;
  }

  a1[1] = v10;
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996297FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ASN1T_CellMeasuredResults>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ASN1T_MeasuredResults>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v28 = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>>(a1, v12);
    }

    v13 = 40 * v9;
    v25 = 0;
    v26 = v13;
    v27 = 40 * v9;
    v14 = *a2;
    *(v13 + 7) = *(a2 + 7);
    *v13 = v14;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0;
    std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(40 * v9 + 16, a2[2], a2[3], 0x8E38E38E38E38E39 * ((a2[3] - a2[2]) >> 3));
    *&v27 = v27 + 40;
    v16 = *a1;
    v15 = a1[1];
    v32[0] = a1;
    v32[1] = &v29;
    v32[2] = &v30;
    v17 = (v26 + v16 - v15);
    v29 = v17;
    v30 = v17;
    if (v16 == v15)
    {
      v33 = 1;
    }

    else
    {
      v18 = v16;
      v19 = (v26 + v16 - v15);
      do
      {
        v20 = *v18;
        *(v19 + 7) = *(v18 + 7);
        *v19 = v20;
        v19[3] = 0;
        v19[4] = 0;
        v19[2] = 0;
        *(v19 + 1) = *(v18 + 1);
        v19[4] = v18[4];
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = 0;
        v18 += 5;
        v19 += 5;
      }

      while (v18 != v15);
      v30 = v19;
      v33 = 1;
      do
      {
        v31 = (v16 + 2);
        std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](&v31);
        v16 += 5;
      }

      while (v16 != v15);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v32);
    v21 = *a1;
    *a1 = v17;
    v22 = a1[2];
    v24 = v27;
    *(a1 + 1) = v27;
    *&v27 = v21;
    *(&v27 + 1) = v22;
    v25 = v21;
    v26 = v21;
    result = std::__split_buffer<ASN1T_MeasuredResults>::~__split_buffer(&v25);
    v8 = v24;
  }

  else
  {
    v6 = *a2;
    *(v5 + 7) = *(a2 + 7);
    *v5 = v6;
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = 0;
    result = std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>((v5 + 2), a2[2], a2[3], 0x8E38E38E38E38E39 * ((a2[3] - a2[2]) >> 3));
    v8 = v5 + 5;
    a1[1] = v5 + 5;
  }

  a1[1] = v8;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299629A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ASN1T_MeasuredResults>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ConvertIntValsToASN1T_CellGlobalIdEUTRA(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v8 = a4;
  v9 = a3;
  v31 = *MEMORY[0x29EDCA608];
  if (a3 > 0x3E7 || a4 > 0x3E7 || a5 >> 28)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either MCC %d, MNC %d, CID %d, TAC %d is not in range\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ConvertIntValsToASN1T_CellGlobalIdEUTRA", 514, v9, v8, a5, a6);
      LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
      result = 0;
    }
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = (a1 + 56);
    v14 = *(a1 + 64) - v12;
    if (v14 > 3)
    {
      if (v14 != 4)
      {
        *(a1 + 64) = v12 + 4;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 56), 4 - v14);
      v12 = *v13;
    }

    v19 = 0;
    *v12 = a5 >> 20;
    *(*(a1 + 56) + 1) = a5 >> 12;
    *(*(a1 + 56) + 2) = a5 >> 4;
    *(*(a1 + 56) + 3) = 16 * a5;
    *(*(a1 + 56) + 3) >>= 4;
    do
    {
      do
      {
        v20 = v19;
        v21 = v9;
        v22 = v9;
        LOWORD(v9) = v9 / 0xAu;
        __str[0] = v21 - 10 * v9;
        std::vector<ASN1T_MCC_MNC_Digit>::insert(a1 + 8, *(a1 + 8), __str);
        v19 = v20 + 1;
      }

      while (v22 > 9);
    }

    while (v20 < 2);
    v23 = 0;
    do
    {
      do
      {
        v24 = v8;
        v25 = v23;
        v26 = v8;
        LOWORD(v8) = v8 / 0xAu;
        __str[0] = v24 - 10 * v8;
        std::vector<ASN1T_MCC_MNC_Digit>::insert(a1 + 32, *(a1 + 32), __str);
        v23 = v25 - 1;
      }

      while (v26 > 9);
    }

    while (!v25);
    *a1 = 1;
    v27 = *a2;
    v28 = *(a2 + 8) - *a2;
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *(a2 + 8) = v27 + 2;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 2 - v28);
      v27 = *a2;
    }

    *v27 = BYTE1(a6);
    *(*a2 + 1) = a6;
    result = 1;
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GN_SUPL_DecodeSuplInit_In(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PDU_Size,%u,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 73, "GN_SUPL_DecodeSuplInit_In", a3, a1);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v10, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT PDU is NULL\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT Length is 0\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
    }

    goto LABEL_15;
  }

  if (!a4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Decoded SUPL INIT mesage is NULL\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  Instance = LcsUtils::GetInstance(IsLoggingAllowed);
  LcsUtils::TraceBuffer(Instance, a2, a3);
  __p = 0;
  v27 = 0;
  v28 = 0;
  v12 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a2, &a2[a3], a3);
  v13 = SuplUtils::GetInstance(v12);
  v14 = SuplUtils::DecodeSUPL_INIT(v13, a1, &__p, a4);
  v15 = v14 == 0;
  if (v14)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT Decode failed\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
    }
  }

  else
  {
    Trace_GN_SUPL_SuplInitInfo(a4);
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

LABEL_16:
  v24 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_29962A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(LcsFunctionEntryExitTrace *this, int a2, const char *__s)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v5;
  if (v5)
  {
    memmove(this, __s, v5);
  }

  *(this + v6) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s:Enter\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 68, "LcsFunctionEntryExitTrace", __s);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 5, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29962A294(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(void **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = this;
    if (*(this + 23) < 0)
    {
      v3 = *this;
    }

    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s:Exit\n", v2, "SPL", 68, "~LcsFunctionEntryExitTrace", v3);
    LbsOsaTrace_WriteLog(0x12u, __str, v4, 5, 1);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_29962A3B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v17 = *MEMORY[0x29EDCA608];
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<UtaLcsShapePoint>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<UtaLcsShapePoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<UtaLcsShapePoint>>(a1, a2);
  }

  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<UtaLcsShapePoint>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ASN1T_MeasResultEUTRA::~ASN1T_MeasResultEUTRA(ASN1T_MeasResultEUTRA *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void std::vector<ASN1T_MCC_MNC_Digit>::insert(uint64_t a1, char *__src, char *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 1;
    }

    else
    {
      v8 = __src + 1;
      if (v6)
      {
        *v6 = *(v6 - 1);
        v9 = v6 + 1;
      }

      else
      {
        v9 = 0;
      }

      *(a1 + 8) = v9;
      if (v6 != v8)
      {
        memmove(__src + 1, __src, v6 - v8);
        v9 = *(a1 + 8);
      }

      v16 = __src <= a3 && v9 > a3;
      *__src = a3[v16];
    }

LABEL_30:
    v22 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *a1;
  v11 = &v6[-*a1 + 1];
  if (v11 < 0)
  {
    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v12 = v7 - v10;
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    operator new();
  }

  v14 = (__src - v10);
  if (__src == v10)
  {
    operator new();
  }

  *v14 = *a3;
  memcpy(v14 + 1, __src, *(a1 + 8) - __src);
  v17 = *a1;
  v18 = &v14[*(a1 + 8) - __src + 1];
  *(a1 + 8) = __src;
  v19 = &v14[v17 - __src];
  memcpy(v19, v17, __src - v17);
  v20 = *a1;
  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = *MEMORY[0x29EDCA608];

  operator delete(v20);
}

void sub_29962A8F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ASN1T_CellMeasuredResults>::~__split_buffer(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 72;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__split_buffer<ASN1T_MeasuredResults>::~__split_buffer(uint64_t a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v6[0] = (i - 24);
    std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

void std::allocator_traits<std::allocator<ASN1T_MeasResultEUTRA>>::destroy[abi:ne200100]<ASN1T_MeasResultEUTRA,0>(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    v6 = *MEMORY[0x29EDCA608];

    operator delete(v5);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
  }
}

uint64_t std::__split_buffer<ASN1T_MeasResultEUTRA>::~__split_buffer(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    std::allocator_traits<std::allocator<ASN1T_MeasResultEUTRA>>::destroy[abi:ne200100]<ASN1T_MeasResultEUTRA,0>((i - 120));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
    goto LABEL_17;
  }

  v7 = *a1;
  v8 = (v6 - *a1);
  v9 = &v8[__len];
  if (&v8[__len] < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v10 = v5 - v7;
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    operator new();
  }

  v12 = v6 - *a1;
  memset(v8, *a3, __len);
  memcpy(&v8[v7 - v6], v7, v12);
  *a1 = &v8[v7 - v6];
  a1[1] = &v8[__len];
  a1[2] = 0;
  if (!v7)
  {
LABEL_17:
    v14 = *MEMORY[0x29EDCA608];
    return;
  }

  v13 = *MEMORY[0x29EDCA608];

  operator delete(v7);
}

unint64_t NK_SV_Res_RTests(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = result;
  v73 = *MEMORY[0x29EDCA608];
  if (*(a2 + 233))
  {
    goto LABEL_115;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v64 = (a3 + 13963);
  v63 = (a3 + 8387);
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v10 = 4832;
  v60 = (a3 + 2960);
  v61 = a3 + 4832;
  v11 = 3304;
  do
  {
    v69[v6] = 16711680;
    *&v68[4 * v6 + 192] = 16711680;
    *&v68[4 * v6] = 16711680;
    if (*(a3 + v6 + 2960) == 1)
    {
      *(&v70 + v6) = 1;
      v12 = *(a3 + v10);
      v13 = v12;
      if (v12 < 0)
      {
        v13 = -v13;
      }

      v69[v6] = v13;
      v14 = v12 * v12;
      v15 = *(a3 + v10 + 2400);
      v16 = v14 / v15;
      if (v14 / v15 >= 16711680.0)
      {
        result = 0;
      }

      else
      {
        *&v68[4 * v6 + 192] = v16;
        result = v16 < 9;
      }

      v17 = v14 / (v15 - *(a3 + v11));
      if (v17 >= 16711680.0)
      {
        v18 = 0;
      }

      else
      {
        *&v68[4 * v6] = v17;
        v18 = v17 < 9;
      }

      if (*(a3 + v6 + 49) == 1)
      {
        if (v13 < 0x3E8)
        {
          ++v9;
        }

        if (v13 <= 0xBB7)
        {
          v8 += result;
          v7 += v18;
        }
      }
    }

    ++v6;
    v11 += 24;
    v10 += 8;
  }

  while (v6 != 48);
  if (v9 <= 0)
  {
    v36 = 0;
    v37 = vdupq_n_s32(0xC0000001);
    v38.i64[0] = 0xC0000000C0000000;
    v38.i64[1] = 0xC0000000C0000000;
    v39 = v69;
    v40.i64[0] = 0xC0000000C0000000;
    v40.i64[1] = 0xC0000000C0000000;
    v41.i64[0] = 0xC0000000C0000000;
    v41.i64[1] = 0xC0000000C0000000;
    v42.i64[0] = 0xC0000000C0000000;
    v42.i64[1] = 0xC0000000C0000000;
    v43 = v37;
    v44 = v37;
    v45 = v37;
    do
    {
      v46 = *(&v70 + v36);
      v47 = v39[1];
      v49 = v39[2];
      v48 = v39[3];
      v50 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v46.i8, *v37.i8)), 0x1FuLL));
      v43 = vbslq_s8(v50, vmaxq_s32(v47, v43), v43);
      v51 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v46.i8, *v37.i8)), 0x1FuLL));
      v37 = vbslq_s8(v51, vmaxq_s32(*v39, v37), v37);
      v46.i64[0] = vextq_s8(v46, v46, 8uLL).u64[0];
      v52 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v46.i8, *v37.i8)), 0x1FuLL));
      v45 = vbslq_s8(v52, vmaxq_s32(v48, v45), v45);
      v53 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v46.i8, *v37.i8)), 0x1FuLL));
      v44 = vbslq_s8(v53, vmaxq_s32(v49, v44), v44);
      v40 = vbslq_s8(v50, vminq_s32(v47, v40), v40);
      v38 = vbslq_s8(v51, vminq_s32(*v39, v38), v38);
      v42 = vbslq_s8(v52, vminq_s32(v48, v42), v42);
      v41 = vbslq_s8(v53, vminq_s32(v49, v41), v41);
      v36 += 16;
      v39 += 4;
    }

    while (v36 != 48);
    if (vmaxvq_s32(vmaxq_s32(vmaxq_s32(v37, v44), vmaxq_s32(v43, v45))) - vminvq_s32(vminq_s32(vminq_s32(v38, v41), vminq_s32(v40, v42))) > 250000)
    {
LABEL_48:
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      result = *(&v70 + v19);
      if (result == 1)
      {
        result = v69[v19];
        v21 = v9 <= 2 || result <= 50000;
        v22 = !v21;
        if (result > 250000 || v22 || v9 >= 4 && (result > 30000 || v9 != 4 && (result > 20000 || v9 >= 6 && (v9 != 6 ? (v23 = result <= 10000) : (v23 = 1), v23 ? (v24 = 0) : (v24 = 1), result > 15000 || v24))))
        {
          ++v20;
          *(&v70 + v19) = 0;
        }
      }

      ++v19;
    }

    while (v19 != 48);
    if (v20 >= 1 && v9 < v20 + 3)
    {
      goto LABEL_48;
    }
  }

  v65 = v7;
  v62 = v8;
  if (v8 < 7)
  {
    if (v8 != 6 || *(a3 + 12) < 9)
    {
      goto LABEL_66;
    }

    goto LABEL_54;
  }

  if (*(a3 + 12) > 7)
  {
LABEL_54:
    for (i = 0; i != 48; ++i)
    {
      if (*(&v70 + i) == 1)
      {
        v26 = *&v68[4 * i + 192];
        v27 = *&v68[4 * i];
        if (v26 > 80 || v27 > 255)
        {
LABEL_64:
          *(&v70 + i) = 0;
          result = EvCrt_v("Reasonable fail Ch%d %d %d", i, v26, v27);
          continue;
        }

        if (v65 < 5 || v26 < 36)
        {
          if (v26 < 16)
          {
            continue;
          }
        }

        else if ((*(a3 + 1026 + i) & 1) == 0)
        {
          goto LABEL_64;
        }

        if (v67[i + 604] - 1 <= v67[i + 700])
        {
          goto LABEL_64;
        }
      }
    }
  }

LABEL_66:
  v28 = 0;
  v29 = 0;
  v30 = (a3 + 8536);
  v31 = (a3 + 14112);
  v32 = a2 + 6696;
  v33 = a4 + 416;
  do
  {
    if (*(a3 + v29 + 2960) == 1 && (*(&v70 + v29) & 1) == 0)
    {
      *(a3 + v29 + 2960) = 0;
      *(a3 + 4 * v29 + 3056) = 15;
      --*(a3 + 2811);
      ++*(a3 + 2812);
      if (*(v30 + v29) == 1)
      {
        *(v30 + v29) = 0;
        *(a3 + v28 + 8632) = 15;
        --*v63;
        ++v63[1];
      }

      if (*(v31 + v29) == 1)
      {
        *(v31 + v29) = 0;
        *(a3 + v28 + 14208) = 15;
        --*v64;
        ++v64[1];
      }

      if (v67[v29 + 700] >= v67[v29 + 604])
      {
        *(v32 + v29) = 0;
        *(a4 + v29 + 365) |= 1u;
        *(v33 + 4 * v29) = *a3;
        result = EvCrt_v("ChanReset %2d : NKSVRT3  C %d SV %3d   JNR %2d >=SNR %2d ", v29, v67[v28 + 76], v67[v28 + 78], v67[v29 + 700], v67[v29 + 604]);
      }

      if (fabs(*(v30 + v29 - 463)) > 150000.0 && (~*&v67[2 * v29 + 316] & 0x300) == 0)
      {
        *(v32 + v29) = 0;
        *(a4 + v29 + 365) |= 1u;
        *(v33 + 4 * v29) = *a3;
        result = EvCrt_v("ChanReset %2d : NKSVRT4  C %d SV %3d   Int_ms %8d   Num_Fit %2d %2d", v29, v67[v28 + 76], v67[v28 + 78], v69[v29], v62, v65);
      }
    }

    ++v29;
    v28 += 4;
  }

  while (v29 != 48);
  if (*(a3 + 968) == 1 && (*(a2 + 233) & 1) == 0)
  {
    if (v9 >= 3 && v65 >= 3)
    {
      if (v65 <= 5)
      {
        if (v65 == 5)
        {
          v34 = 3;
          v35 = 16;
        }

        else
        {
          if (v65 <= 3)
          {
            v35 = 25;
          }

          else
          {
            v35 = 20;
          }

          if (v65 > 3)
          {
            v34 = 4;
          }

          else
          {
            v34 = 5;
          }
        }
      }

      else
      {
        v34 = 2;
        v35 = 13;
      }

      for (j = 0; j != 48; ++j)
      {
        if (*(a3 + j + 2960) == 1 && *&v68[4 * j] > v35 && *&v68[4 * j + 192] > v34 && (*(a3 + j + 1026) & 1) == 0)
        {
          v55 = *(v61 + 8 * j);
          if (v55 < -35.0 || v55 > 150.0)
          {
            *(a3 + j + 2960) = 0;
            *(a3 + 4 * j + 3056) = 16;
            --*(a3 + 2811);
            ++*(a3 + 2812);
          }
        }
      }
    }

    if (*(a3 + 2811) <= 3u && (*(a2 + 233) & 1) == 0)
    {
      v56 = 0;
      v57 = (v67 + 844);
      v58 = a3;
      while (*(v58 + 2960) != 1 || (*(v58 + 1026) & 1) != 0 || *v57 > 0x7CFu || *&v68[v56 + 192] <= 36 && *&v68[v56] < 401)
      {
        v56 += 4;
        ++v57;
        ++v58;
        if (v56 == 192)
        {
          goto LABEL_115;
        }
      }

      v60[1] = 0u;
      v60[2] = 0u;
      *v60 = 0u;
      *v30 = 0u;
      *(a3 + 8552) = 0u;
      *(a3 + 8568) = 0u;
      *v31 = 0u;
      *(a3 + 14128) = 0u;
      *(a3 + 14144) = 0u;
      *(a3 + 2811) = 0;
      *v63 = 0;
      *v64 = 0;
    }
  }

LABEL_115:
  v59 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_SV_Res_RTests_Riskier_SVs(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = (a2 + 13963);
  v3 = (a2 + 8387);
  if (*(a2 + 964) >= 3 && *(a2 + 24688) <= 100.0 && *(a2 + 24704) <= 100.0)
  {
    v10 = 0;
    v11 = result + 76;
    v12 = 14112;
    v13 = 8632;
    v14 = 8536;
    v15 = 4832;
    do
    {
      v16 = *(v11 + 4 * v10);
      result = v16;
      if (v16 == 4 || v16 == 3 && ((BYTE2(v16) - 14) & 0xFFFFFFFB) == 0)
      {
        result = *(a2 + v10 + 2960);
        if (result == 1)
        {
          result = a2 + v15;
          v17 = *(a2 + v15 + 2400);
          if (v17 > 0.0)
          {
            result = *(a2 + v10 + 49);
            if (result == 1 && *(a2 + v15) * *(a2 + v15) / fmin(v17, 10000.0) > 9.0)
            {
              *(a2 + v10 + 2960) = 0;
              *(a2 + 4 * v10 + 3056) = 15;
              --*(a2 + 2811);
              ++*(a2 + 2812);
              if (*(a2 + v14) == 1)
              {
                *(a2 + v14) = 0;
                *(a2 + v13) = 15;
                --*v3;
                ++*(a2 + 8388);
              }

              if (*(a2 + v12) == 1)
              {
                *(a2 + v12) = 0;
                *(a2 + v13 + 5576) = 15;
                --*v2;
                ++*(a2 + 13964);
              }
            }
          }
        }
      }

      ++v10;
      ++v12;
      v13 += 4;
      ++v14;
      v15 += 8;
    }

    while (v10 != 48);
  }

  else
  {
    v4 = 0;
    v5 = a2 + 8536;
    v6 = (a2 + 8632);
    v7 = a2 + 14112;
    do
    {
      v8 = *(result + 76 + 4 * v4);
      if (v8 == 4 || v8 == 3 && ((BYTE2(v8) - 14) & 0xFFFFFFFB) == 0)
      {
        if (*(a2 + v4 + 2960) == 1)
        {
          *(a2 + v4 + 2960) = 0;
          *(a2 + 4 * v4 + 3056) = 18;
          --*(a2 + 2811);
          ++*(a2 + 2812);
        }

        if (*(v5 + v4) == 1)
        {
          *(v5 + v4) = 0;
          *v6 = 18;
          --*v3;
          ++*(a2 + 8388);
        }

        if (*(v7 + v4) == 1)
        {
          *(v7 + v4) = 0;
          v6[1394] = 18;
          --*v2;
          ++*(a2 + 13964);
        }
      }

      ++v4;
      ++v6;
    }

    while (v4 != 48);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_SV_Res_RTests_FDist(uint64_t result, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(a3 + 12) >= 6)
  {
    if (result >= 8)
    {
      EvCrt_Illegal_Default("NK_SV_Res_RTests_FDist", 0x263u);
      v6 = 9;
      v5 = 7;
    }

    else
    {
      v5 = dword_29975CE68[result];
      v6 = dword_29975CE88[result];
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a2 + 7744;
    v13 = a3 + 4832;
    memset(v36, 0, sizeof(v36));
    v14 = 0.0;
    result = 0x4049000000000000;
    do
    {
      if (*(a3 + v7 + 2960) == 1 && *(a3 + v7 + 49) == 1 && *(v12 + 2 * v7))
      {
        v15 = *(v13 + 8 * v7);
        *(v36 + v7) = v15 * v15;
        v14 = v14 + v15 * v15;
        v16 = fabs(v15);
        if (v15 > -50.0)
        {
          v17 = v8;
        }

        else
        {
          v17 = v8 + 1;
        }

        if (v15 < 50.0)
        {
          v18 = v9;
        }

        else
        {
          v18 = v9 + 1;
        }

        if (v15 >= 50.0)
        {
          v17 = v8;
        }

        if (v16 >= 50.0)
        {
          v9 = v18;
        }

        else
        {
          ++v10;
        }

        if (v16 >= 50.0)
        {
          v8 = v17;
        }

        ++v11;
      }

      ++v7;
    }

    while (v7 != 48);
    v19 = v8 > 1 && v9 > 1;
    v20 = v9 >> 1;
    if (!v19)
    {
      v20 = 0;
    }

    v21 = v20 + v5;
    v22 = v20 + v6;
    v23 = *(a3 + 968) == 1;
    v24 = v22 < 0xC;
    v25 = !v23 || !v24;
    if (v23 && v24)
    {
      v26 = 10;
    }

    else
    {
      v26 = v21;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = 12;
    }

    if (v10 >= v26)
    {
      if (v11 <= 0x30)
      {
        v28 = v11;
      }

      else
      {
        v28 = 47;
      }

      do
      {
        if (v28 < v27)
        {
          break;
        }

        v29 = 0;
        result = 0;
        do
        {
          if (v28 >= v27)
          {
            v30 = *(a3 + 2811);
            if (v30)
            {
              v31 = a3 + v29;
              if (*(a3 + v29 + 2960) == 1 && *(v31 + 49) == 1 && *(v12 + 2 * v29))
              {
                v32 = *(v13 + 8 * v29);
                if (v32 < -50.0 || v32 > 100.0)
                {
                  v34 = *(v36 + v29);
                  if (v34 / ((v14 - v34) / (v28 - 1)) > NK_SV_Res_RTests_FDist(e_CTXT_SES,s_Nav_Kalman_SD *,s_Nav_Kalman_WD *)::F_table[v28 - 1])
                  {
                    *(v31 + 2960) = 0;
                    *(a3 + 4 * v29 + 3056) = 17;
                    ++*(a3 + 2812);
                    *(a3 + 2811) = v30 - 1;
                    result = 1;
                    --v28;
                    v14 = v14 - v34;
                  }
                }
              }
            }
          }

          ++v29;
        }

        while (v29 != 48);
      }

      while ((result & 1) != 0);
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void SuplAsn1Logger::TraceError(unsigned int a1, int a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if (a1 >= 7)
  {
    v5 = "UNDEFINED_STATUS";
  }

  else
  {
    v5 = off_29EF5E780[a1];
  }

  MEMORY[0x29C29E950](__p, v5);
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = __p;
    if (v11 < 0)
    {
      v7 = __p[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%s,CurByte,%u,NextBit,%u\n", v6, "SPL", 69, "TraceError", 770, v7, a2, a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29962BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Asn1Coder::AddBitToBuffer(uint64_t **a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 2);
  v4 = **a1;
  if ((*a1)[1] - v4 <= v3)
  {
    *(a1 + 16) = 2;
    v12 = *(a1 + 3);
    v13 = *MEMORY[0x29EDCA608];

    SuplAsn1Logger::TraceError(2u, v3, v12);
  }

  else
  {
    v5 = *(a1 + 3);
    v6 = *(v4 + v3);
    v7 = v6 & (-129 >> v5);
    v8 = v6 | (0x80u >> v5);
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *(v4 + v3) = v9;
    v10 = *(a1 + 3) + 1;
    *(a1 + 3) = v10;
    if (v10 >= 8)
    {
      a1[1] = (*(a1 + 2) + 1);
    }

    v11 = *MEMORY[0x29EDCA608];
  }
}

uint64_t Asn1Coder::GetBitFromBuffer(uint64_t **a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 2);
  v2 = **a1;
  if ((*a1)[1] - v2 <= v1)
  {
    *(a1 + 16) = 2;
    SuplAsn1Logger::TraceError(2u, v1, *(a1 + 3));
    v4 = 0;
  }

  else
  {
    v3 = *(a1 + 3);
    v4 = ((*(v2 + v1) << v3++) >> 7) & 1;
    *(a1 + 3) = v3;
    if (v3 >= 8)
    {
      a1[1] = (v1 + 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Asn1Coder::EncodeInteger(uint64_t a1, int a2, int a3, int a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a3 < a2)
  {
    v5 = 1;
LABEL_3:
    *(a1 + 16) = v5;
    SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
    goto LABEL_4;
  }

  v5 = 4;
  v8 = a4 - a2;
  if (a4 < a2 || a4 > a3)
  {
    goto LABEL_3;
  }

  if (a3 != a2)
  {
    v9 = 1 << (__clz(a3 - a2) ^ 0x1F);
    do
    {
      Asn1Coder::AddBitToBuffer(a1, v9 & v8);
      v10 = v9 >= 2;
      v9 >>= 1;
    }

    while (v10);
  }

LABEL_4:
  result = *(a1 + 16);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a3 - a2) < 1)
  {
    v12 = 5;
LABEL_12:
    SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
    goto LABEL_13;
  }

  v7 = a2;
  v8 = 0;
  v9 = 1 << -__clz((a3 - a2) >> 1);
  do
  {
    if (Asn1Coder::GetBitFromBuffer(a1))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v11 = v9 > 1;
    v9 >>= 1;
  }

  while (v11);
  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_12;
  }

  *a4 = v7 + v8;
  v12 = 4;
  if (((v7 + v8) & 0x100) != 0 || a3 < (v7 + v8))
  {
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a3 - a2) < 1)
  {
    LODWORD(result) = 5;
    v13 = 5;
LABEL_12:
    SuplAsn1Logger::TraceError(result, *(a1 + 8), *(a1 + 12));
    result = v13;
    goto LABEL_13;
  }

  v8 = 0;
  v9 = 1 << -__clz((a3 - a2) >> 1);
  do
  {
    if (Asn1Coder::GetBitFromBuffer(a1))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v11 = v9 > 1;
    v9 >>= 1;
  }

  while (v11);
  result = *(a1 + 16);
  v13 = result;
  if (*(a1 + 16))
  {
    goto LABEL_12;
  }

  v14 = a2 + v8;
  *a4 = a2 + v8;
  v13 = 4;
  if ((v14 & 0x10000) != 0 || a3 < v14)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3 - a2 < 1)
  {
    v12 = 5;
  }

  else
  {
    v8 = 0;
    v9 = 1 << -__clz((a3 - a2) >> 1);
    do
    {
      if (Asn1Coder::GetBitFromBuffer(a1))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v8 |= v10;
      v11 = v9 > 1;
      v9 >>= 1;
    }

    while (v11);
    v12 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      *a4 = v8 + a2;
      if (v8 + a2 <= a3)
      {
        v12 = 0;
        goto LABEL_12;
      }

      v12 = 4;
    }
  }

  SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
LABEL_12:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a3 - a2) < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1 << -__clz((a3 - a2) >> 1);
    do
    {
      if (Asn1Coder::GetBitFromBuffer(a1))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v8 |= v10;
      v11 = v9 > 1;
      v9 >>= 1;
    }

    while (v11);
    v12 = *(a1 + 16);
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  v12 = 4;
  *a4 = v8 + a2;
  if (__CFADD__(v8, a2) || v8 + a2 > a3)
  {
LABEL_13:
    SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t Asn1Coder::EncodeBitString(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, int a6)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v10 = (a1 + 16);
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
    v9 = v10;
  }

  else
  {
    if (!a6)
    {
      Asn1Coder::EncodeInteger(a1, a2, a3, a4);
    }

    v9 = (a1 + 16);
    if (!*(a1 + 16))
    {
      Asn1Coder::AddBitStringToBuffer(a1, a4, a5, 0);
    }
  }

  result = *v9;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void Asn1Coder::AddBitStringToBuffer(uint64_t **a1, unsigned int a2, void *a3, int a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = a2 >> 3;
  v8 = a2 & 7;
  if (a2 >= 8)
  {
    v9 = 0;
    do
    {
      if (v9 >= a3[1] - *a3)
      {
        break;
      }

      v10 = 0;
      v11 = *(*a3 + v9);
      if (a4)
      {
        v11 = (*(*a3 + v9) >> 4) | (16 * *(*a3 + v9));
      }

      v12 = v11;
      do
      {
        Asn1Coder::AddBitToBuffer(a1, (0x80u >> v10++) & v12);
      }

      while (v10 != 8);
      ++v9;
    }

    while (v9 != v7);
  }

  if (v8 && a3[1] - *a3 > v7)
  {
    v13 = *(*a3 + v7);
    if (a4)
    {
      v13 = (*(*a3 + v7) >> 4) | (16 * *(*a3 + v7));
    }

    v14 = v13;
    v15 = 8 - v8;
    do
    {
      Asn1Coder::AddBitToBuffer(a1, (0x80u >> v15++) & v14);
      --v8;
    }

    while (v8);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t Asn1Coder::GetBitStringFromBuffer(uint64_t result, unsigned int a2, void *a3, int a4)
{
  v6 = a2;
  v7 = result;
  v22 = *MEMORY[0x29EDCA608];
  v8 = a2 >> 3;
  a3[1] = *a3;
  if (a2 >= 8)
  {
    v9 = 0;
    do
    {
      v21 = 0;
      std::vector<unsigned char>::push_back[abi:ne200100](a3, &v21);
      for (i = 0; i != 8; ++i)
      {
        result = Asn1Coder::GetBitFromBuffer(v7);
        v11 = *(*a3 + v9);
        v12 = v11 | (0x80u >> i);
        v13 = v11 & (-129 >> i);
        if (result)
        {
          LOBYTE(v13) = v12;
        }

        *(*a3 + v9) = v13;
      }

      if (a4)
      {
        *(*a3 + v9) = (*(*a3 + v9) >> 4) | (16 * *(*a3 + v9));
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v14 = v6 & 7;
  if (v14)
  {
    v20 = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](a3, &v20);
    v15 = 8 - v14;
    do
    {
      result = Asn1Coder::GetBitFromBuffer(v7);
      v16 = *(*a3 + v8);
      v17 = v16 | (0x80u >> v15);
      v18 = v16 & (-129 >> v15);
      if (result)
      {
        LOBYTE(v18) = v17;
      }

      *(*a3 + v8) = v18;
      ++v15;
      --v14;
    }

    while (v14);
    if (a4)
    {
      *(*a3 + v8) = (*(*a3 + v8) >> 4) | (16 * *(*a3 + v8));
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeOctetString(uint64_t a1, int a2, int a3, int a4, void *a5, int a6, int a7)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v11 = (a1 + 16);
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    if (!a6)
    {
      Asn1Coder::EncodeInteger(a1, a2, a3, a4);
    }

    Asn1Coder::AddBitStringToBuffer(a1, 8 * a4, a5, a7);
    v11 = (a1 + 16);
  }

  result = *v11;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeVisibleStringSubType(uint64_t a1, int a2, unsigned int a3, int a4, void *a5, int a6, uint64_t a7, int a8)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3 > 0xFF || !a7 || !a6 || *a5 == a5[1])
  {
    v12 = 1;
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
    goto LABEL_8;
  }

  if (a8)
  {
    v12 = 5;
    goto LABEL_8;
  }

  v16 = Asn1Coder::EncodeInteger(a1, a2, a3, a4);
  v12 = v16;
  __p = 0;
  v22 = 0;
  v23 = 0;
  if (a4 && !v16)
  {
    v17 = 0;
    do
    {
      if (v17 >= a5[1] - *a5)
      {
        break;
      }

      v18 = 0;
      while (*(*a5 + v17) != *(a7 + v18))
      {
        if (a6 == ++v18)
        {
          v12 = 4;
          SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
          goto LABEL_23;
        }
      }

      v20 = v18;
      std::vector<unsigned char>::push_back[abi:ne200100](&__p, &v20);
      ++v17;
    }

    while (v17 != a4);
    goto LABEL_20;
  }

  if (!v16)
  {
LABEL_20:
    v19 = 32 - __clz(a6 - 1);
    if (a6 == 1)
    {
      LOBYTE(v19) = 0;
    }

    Asn1Coder::AddVisibleStringToBuffer(a1, v19 * a4, v19, &__p);
    v12 = *(a1 + 16);
  }

LABEL_23:
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

LABEL_8:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_29962C7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Asn1Coder::AddVisibleStringToBuffer(uint64_t **a1, unsigned int a2, char a3, void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = 0;
    v7 = 1 << (a3 - 1);
    v8 = a2;
    v9 = v7;
    do
    {
      if (a4[1] - *a4 <= v6)
      {
        break;
      }

      v10 = v6;
      Asn1Coder::AddBitToBuffer(a1, v9 & *(*a4 + v6));
      v11 = v9 >> 1 == 0;
      if (v9 >> 1)
      {
        v9 >>= 1;
      }

      else
      {
        v9 = v7;
      }

      v6 = v11 ? v10 + 1 : v10;
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t Asn1Coder::DecodeVisibleStringSubType(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, void *a5, unsigned int a6, uint64_t a7, int a8)
{
  v8 = a1;
  v31 = *MEMORY[0x29EDCA608];
  if (a3 <= 0xFF && a6 && a7)
  {
    if (!a8)
    {
      Asn1Coder::DecodeInteger(a1, a2, a3, a4);
    }

    if (a6 != 1)
    {
      v13 = (32 - __clz(a6 - 1));
      __p = 0;
      v29 = 0;
      v30 = 0;
      v27 = v8;
      Asn1Coder::GetVisibleStringFromBuffer(v8, *a4 * v13, v13, &__p);
      v14 = *a5;
      a5[1] = *a5;
      if (*a4)
      {
        v15 = 0;
        while (1)
        {
          v16 = __p;
          if (v15 >= v29 - __p)
          {
            break;
          }

          if (*(__p + v15) > a6)
          {
            *(v27 + 16) = 4;
            SuplAsn1Logger::TraceError(4u, *(v27 + 8), *(v27 + 12));
            goto LABEL_27;
          }

          v17 = *(a7 + *(__p + v15));
          v18 = a5[2];
          if (v14 >= v18)
          {
            v19 = *a5;
            v20 = &v14[-*a5];
            v21 = (v20 + 1);
            if ((v20 + 1) < 0)
            {
              std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - v19;
            if (2 * v22 > v21)
            {
              v21 = 2 * v22;
            }

            if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              operator new();
            }

            v24 = &v14[-*a5];
            *v20 = v17;
            v14 = v20 + 1;
            memcpy(0, v19, v24);
            *a5 = 0;
            a5[1] = v20 + 1;
            a5[2] = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v14++ = v17;
          }

          a5[1] = v14;
          if (++v15 >= *a4)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        v16 = __p;
      }

      if (v16)
      {
        v29 = v16;
        operator delete(v16);
      }

      v8 = v27;
    }
  }

  else
  {
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  }

  result = *(v8 + 16);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29962CAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Asn1Coder::GetVisibleStringFromBuffer(uint64_t result, unsigned int a2, int a3, void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    a4[1] = *a4;
    if (a2)
    {
      v5 = result;
      v6 = 0;
      v7 = (1 << (a3 - 1));
      v8 = a2;
      v9 = v7;
      do
      {
        v13 = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](a4, &v13);
        result = Asn1Coder::GetBitFromBuffer(v5);
        if (result)
        {
          v10 = *(*a4 + v6) | v9;
        }

        else
        {
          v10 = *(*a4 + v6) & ~v9;
        }

        *(*a4 + v6) = v10;
        v11 = v9 >= 2;
        if (v9 >= 2)
        {
          v9 >>= 1;
        }

        else
        {
          v9 = v7;
        }

        if (!v11)
        {
          ++v6;
        }

        --v8;
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeVisibleString7(uint64_t a1, int a2, int a3, int a4, void *a5, int a6)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v9 = (a1 + 16);
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    if (!a6)
    {
      Asn1Coder::EncodeInteger(a1, a2, a3, a4);
    }

    Asn1Coder::AddVisibleStringToBuffer(a1, 7 * a4, 7, a5);
    v9 = (a1 + 16);
  }

  result = *v9;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::DecodeVisibleString7(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, void *a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a6)
  {
    Asn1Coder::DecodeInteger(a1, a2, a3, a4);
  }

  Asn1Coder::GetVisibleStringFromBuffer(a1, 7 * *a4, 7, a5);
  result = *(a1 + 16);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::SkipOpenTypeField(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = 0;
  result = Asn1Coder::DecodeOpenTypeFieldStart(a1, &v8);
  if (!result)
  {
    v3 = v9;
    if (v9)
    {
      v4 = 1;
      do
      {
        result = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, &v7);
        if (result)
        {
          break;
        }
      }

      while (v4++ < v3);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::DecodeOpenTypeFieldStart(uint64_t a1, int32x2_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  v8 = 0;
  if (!result)
  {
    if (BitFromBuffer)
    {
      Asn1Coder::GetBitFromBuffer(a1);
      result = *(a1 + 16);
      if (*(a1 + 16))
      {
        goto LABEL_2;
      }

      v7 = 0x3FFF;
    }

    else
    {
      v7 = 127;
    }

    result = Asn1Coder::DecodeInteger(a1, 0, v7, &v8);
    if (!result)
    {
      a2[1].i32[0] = v8;
      *a2 = vrev64_s32(*(a1 + 8));
    }
  }

LABEL_2:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::SkipSequenceExtensionAddition(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = *a2;
  if (a3 < v4)
  {
    v7 = ~a3;
    do
    {
      if ((*(a2 + 1) >> (v7 + v4)))
      {
        v8 = Asn1Coder::SkipOpenTypeField(a1);
        if (v8)
        {
          v9 = v8;
          SuplAsn1Logger::TraceError(v8, *(a1 + 8), *(a1 + 12));
          goto LABEL_8;
        }

        v4 = *a2;
      }

      ++v3;
      --v7;
    }

    while (v3 < v4);
  }

  v9 = 0;
LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t Asn1Coder::SkipSequenceExtension(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  v5 = 0;
  result = Asn1Coder::DecodeSequenceExtension(a1, v4);
  if (!result)
  {
    result = Asn1Coder::SkipSequenceExtensionAddition(a1, v4, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::DecodeSequenceExtension(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  v8 = 0;
  if (!result)
  {
    result = Asn1Coder::DecodeInteger(a1, 1, 0x40u, &v8);
    v7 = 0;
    if (!result)
    {
      v5 = v8;
      *a2 = v8;
      result = Asn1Coder::DecodeInteger(a1, 0, ~(-1 << v5), &v7);
      if (!result)
      {
        *(a2 + 4) = v7;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::SkipChoiceExtension(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = Asn1Coder::DecodeChoiceExtension(a1, &v5);
  if (result)
  {
    v3 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return Asn1Coder::SkipOpenTypeField(a1);
  }

  return result;
}

uint64_t Asn1Coder::DecodeChoiceExtension(uint64_t a1, _BYTE *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  v6 = 0;
  if (!result)
  {
    result = Asn1Coder::DecodeInteger(a1, 0, 0x3Fu, &v6);
    if (!result)
    {
      *a2 = v6;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeOpenTypeFieldStart(uint64_t a1, int32x2_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *a2 = vrev64_s32(*(a1 + 8));
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 64;
    do
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      v5 = v4 > 1;
      v4 >>= 1;
    }

    while (v5);
    result = *(a1 + 16);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeOpenTypeFieldEnd(uint64_t a1, int32x2_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 12);
  v5 = a2->i32[0] - v4;
  if (a2->i32[0] <= v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 255;
  }

  v7 = v6 & v5;
  if (!v7 || (result = Asn1Coder::EncodeInteger(a1, 0, ~(-1 << v7), 0), !result))
  {
    v9 = *(a1 + 8) - a2->i32[1];
    if ((v9 - 1) >= 0x80)
    {
      v10 = *(a1 + 12);
      v11 = 128;
      do
      {
        Asn1Coder::AddBitToBuffer(a1, 0);
        v12 = v11 > 1;
        v11 >>= 1;
      }

      while (v12);
      result = *(a1 + 16);
      if (*(a1 + 16))
      {
        goto LABEL_23;
      }

      if (v10)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = v9;
      }

      v14 = (v13 + 1);
      if (v13 != -1)
      {
        v15 = 0;
        v16 = -v14;
        do
        {
          v17 = (**a1 + *(a1 + 8) + v15);
          *v17 = *(v17 - 1);
          --v15;
        }

        while (v16 != v15);
      }
    }

    v18 = *(a1 + 8);
    *(a1 + 8) = vrev64_s32(*a2);
    if ((v9 - 1) > 0x7F)
    {
      Asn1Coder::AddBitToBuffer(a1, 1);
      result = *(a1 + 16);
      if (!*(a1 + 16))
      {
        Asn1Coder::AddBitToBuffer(a1, 0);
        result = *(a1 + 16);
        if (!*(a1 + 16))
        {
          v19 = 0x3FFF;
          goto LABEL_22;
        }
      }
    }

    else
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      result = *(a1 + 16);
      if (!*(a1 + 16))
      {
        v19 = 127;
LABEL_22:
        Asn1Coder::EncodeInteger(a1, 0, v19, v9 - 1);
        result = 0;
        *(a1 + 8) = v18;
      }
    }
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeSequenceExtension(uint64_t a1, int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = Asn1Coder::EncodeInteger(a1, 1, 64, a2);
    if (!result)
    {
      result = Asn1Coder::EncodeInteger(a1, 0, ~(-1 << a2), a3);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Asn1Coder::EncodeChoiceExtension(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *a2;
    v7 = *MEMORY[0x29EDCA608];

    return Asn1Coder::EncodeInteger(a1, 0, 63, v6);
  }

  return result;
}

uint64_t Asn1Coder::EncodeChoiceExtension(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return Asn1Coder::EncodeInteger(a1, 0, 63, a2);
  }

  return result;
}

uint64_t Asn1Coder::DecodeEnumerationExtension(uint64_t a1, _BYTE *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return Asn1Coder::DecodeInteger(a1, 0, 0x3Fu, a2);
  }

  return result;
}

uint64_t Init_DB_Sensor(uint64_t result)
{
  v1 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v2 = result + 26128;
  *(result + 296) = result + 528;
  *(result + 304) = result + 26128;
  *(result + 240) = result + 528;
  *(result + 312) = 0x32000000020;
  *(result + 320) = 25600;
  v3 = result + 324;
  do
  {
    *(v3 + 8 * v1 - 76) = result + 528;
    *(v3 + v1++) = 0;
  }

  while (v1 != 6);
  v4 = 0;
  v5 = result + 51728;
  *(result + 392) = v2;
  *(result + 400) = result + 51728;
  *(result + 336) = v2;
  *(result + 408) = 0x32000000020;
  *(result + 416) = 25600;
  v6 = result + 420;
  do
  {
    *(v6 + 8 * v4 - 76) = v2;
    *(v6 + v4++) = 0;
  }

  while (v4 != 6);
  v7 = 0;
  *(result + 488) = v5;
  *(result + 496) = result + 55328;
  *(result + 432) = v5;
  *(result + 504) = 0x9600000018;
  *(result + 512) = 3600;
  v8 = result + 516;
  do
  {
    *(v8 + 8 * v7 - 76) = v5;
    *(v8 + v7++) = 0;
  }

  while (v7 != 6);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm17_12SendClearNv(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm17_12SendClearNv", 54, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm17_12SendClearNv");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8393216, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void Gnm17_13SendPollAssistStatus(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm17_13SendPollAssistStatus", 76, 1, 0xCuLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm17_13SendPollAssistStatus");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8393728, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm17_31HandleAssistStatus(_BYTE *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_RSP\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm17_31HandleAssistStatus");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (a1)
  {
    Gnm13_07SendAidStatusCnf(a1, v2, v3, v4, v5, v6);
    Gnm13_13HandleAssistStatus(a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm17_31HandleAssistStatus", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GNSS_HL_System_Run_Update(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  SV_Data_Decode_Update_Wrapper(a1);
  SV_Gen_Meas_Update_Wrapper(a1, v2, v3, v4, v5, v6);
  SV_State_Update_Wrapper(a1);
  Nav_Kalman_Update_Wrapper(a1);
  v7 = mach_continuous_time();
  *(*(a1 + 72) + 1088) = (*&g_MacClockTicksToMsRelation * v7);
  if (!gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v7))
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    if (*a1 != 11)
    {
      goto LABEL_13;
    }

    EvLog_v("Set_Sens_Aug_FPE_Exe_State:  NOT Initialised YET, TOW %10.3f");
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    if (*a1 == 11)
    {
      goto LABEL_12;
    }

    *(a1 + 4) = 1;
    EvLog_v("Set_Sens_Aug_FPE_Exe_State:  Leaving Co-Running Nav mode, TOW %10.3f");
LABEL_11:
    if (*(a1 + 4) != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 != 1)
  {
    __assert_rtn("Set_Sens_Aug_FPE_Exe_State", "System_Run_Update.cpp", 201, "FALSE");
  }

  if (*a1 == 11)
  {
    EvLog_v("Set_Sens_Aug_FPE_Exe_State:  Entering Co-Running Nav mode, TOW %10.3f", *(*(a1 + 48) + 24));
    *(a1 + 4) = 2;
LABEL_12:
    v9 = *(a1 + 72);
    v10 = *(a1 + 136);
    *v10 = *(v9 + 948);
    *(v10 + 6) = *(v9 + 43);
    *(v10 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v10 + 7));
    Sen_Aug_FPE_Update_Wrapper(a1);
  }

LABEL_13:
  *(*(a1 + 72) + 1092) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Fused_Nav_Update_Wrapper(a1);
  v11 = *MEMORY[0x29EDCA608];

  return Pre_Positioning_Update_Wrapper();
}

double STANAG_WGS84_Mean_Sea_Level(double *a1)
{
  v1 = a1[1];
  v2 = 1.57079633 - *a1;
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 3.14159265)
  {
    v2 = 3.14159265;
  }

  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  v3 = v2 * 5.72957795;
  v4 = vcvtmd_s64_f64(v2 * 5.72957795);
  v5 = v1 * 5.72957795;
  v6 = vcvtmd_s64_f64(v5);
  if (v4 <= 0)
  {
    v10 = 37 * v4;
    LODWORD(v11) = v6 + 1;
    v8 = 13.0;
    v9 = 13.0;
    goto LABEL_14;
  }

  v7 = -30.0;
  if (v4 <= 0x11)
  {
    v12 = 37 * v4 - 37;
    v11 = v6 + 1;
    v9 = STANAG_Geoid_Table[v12 + v6];
    v8 = STANAG_Geoid_Table[v12 + v11];
    if (v4 == 17)
    {
      goto LABEL_12;
    }

    v10 = 37 * v4;
LABEL_14:
    v7 = STANAG_Geoid_Table[v10 + v6];
    v13 = STANAG_Geoid_Table[v10 + v11];
    goto LABEL_15;
  }

  v8 = -30.0;
  v9 = -30.0;
LABEL_12:
  v13 = -30.0;
LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  v15 = *MEMORY[0x29EDCA608];
  v16 = v3 - floor(v3);
  v17 = v5 - floor(v5);
  return (1.0 - v17) * v16 * ((1.0 - v17) * v16) * ((1.0 - v17 + v16) * -6.0 + 9.0 + (1.0 - v17) * v16 * 4.0) * v7 + (1.0 - v17) * (1.0 - v16) * ((1.0 - v17) * (1.0 - v16)) * ((1.0 - v17 + 1.0 - v16) * -6.0 + 9.0 + (1.0 - v17) * (1.0 - v16) * 4.0) * v9 + v17 * (1.0 - v16) * (v17 * (1.0 - v16)) * ((v17 + 1.0 - v16) * -6.0 + 9.0 + v17 * (1.0 - v16) * 4.0) * v8 + v17 * v16 * (v17 * v16) * ((v17 + v16) * -6.0 + 9.0 + v17 * v16 * 4.0) * v13;
}

double *NK_DT_Synch_ProcNoise(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0.0;
  v4 = 0.0;
  if ((*(a1 + 128) & 1) == 0)
  {
    v5 = (a2 + 22776);
    if (*(a2 + 25170) == 1)
    {
      v6 = *(a2 + 24168);
      if (v6 <= 1.0)
      {
        if (v6 < 0.0000000025)
        {
          v20 = 0.0000000025;
          v4 = 0.0000000025;
        }
      }

      else
      {
        v7 = *(a2 + 25216) * *(a2 + 25216);
        v8 = *(a2 + 24528);
        if (v7 <= v8 * 4.0)
        {
          if (v8 < 40000.0)
          {
            v9 = v8 - v6;
            if (v8 - v6 > 0.0)
            {
              v10 = v7 <= 1.0 ? v9 * 0.15 : v9 * 0.15 + v7 * 0.02;
              v4 = v10 <= v9 ? v10 : v8 - v6;
              v20 = v4;
              if (*v5 == 1 && *(a2 + 22780) == 1)
              {
                v11 = *(a2 + 22808);
                if (v11 < v8 && v11 > v6 && v4 > v11 - v6)
                {
                  v20 = v11 - v6;
                  v4 = v11 - v6;
                }
              }
            }
          }
        }

        else
        {
          v4 = v7 / 2.25 - v6;
          v20 = v4;
          if (v4 < 0.0)
          {
            v20 = 0.0;
            v4 = 0.0;
          }
        }

        if (v6 + v4 < 4.0)
        {
          v4 = 4.0 - v6;
          v20 = 4.0 - v6;
        }
      }

      *&v21[0] = 0;
      if (!R8_EQ(&v20, v21))
      {
        *(a2 + 24168) = v6 + v4;
      }
    }

    if ((*(a2 + 16) & 1) == 0 && *(a2 + 22780) == 1 && ((*v5 & 1) != 0 || *(a2 + 22792) == 1))
    {
      v12 = *(a2 + 22800) - *(a2 + 792);
      v13 = v12 * v12;
      if (v13 > 100.0)
      {
        v14 = *(a2 + 24168);
        v15 = *(a2 + 22816) + v14;
        if (v13 > v15 * 16.0)
        {
          v4 = v13 / 9.0 - v15;
          v20 = v4;
          *(a2 + 24168) = v14 + v4;
        }
      }
    }
  }

  *&v21[0] = 0;
  result = R8_EQ(&v20, v21);
  if ((result & 1) == 0)
  {
    memset(v21, 0, 32);
    memset(&v21[3], 0, 208);
    v21[2] = 0x3FF0000000000000uLL;
    if (v4 > 0.0)
    {
      result = rnk1_core((a1 + 872), 5u, v4, v21, &v19);
    }

    v17 = *(a2 + 24168);
    *(a2 + 24256) = v17;
    *(a2 + 24344) = sqrt(v17);
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

double SBAS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = 16 * *(a1 + 8);
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29975D150);
  v5 = *(a1 + 20);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  *(a2 + 16) = v4;
  *(a2 + 32) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3FB47AE147AE147BuLL));
  v4.f64[0] = *(a1 + 28);
  v3.i64[0] = SLODWORD(v4.f64[0]);
  v3.i64[1] = SHIDWORD(v4.f64[0]);
  v6 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29975D160);
  v7 = *(a1 + 36);
  v3.i64[0] = v7;
  v3.i64[1] = SHIDWORD(v7);
  *(a2 + 12) = *(a1 + 10);
  *(a2 + 48) = v6;
  *(a2 + 64) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29975D170);
  v6.f64[0] = *(a1 + 44);
  v3.i64[0] = SLODWORD(v6.f64[0]);
  v3.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3EEA36E2EB1C432DuLL));
  result = *(a1 + 52) * 0.0000625;
  *(a2 + 96) = result;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *FpeEnabler_UpdateFlags(char *result, int a2, uint64_t *a3)
{
  v4 = result;
  v50 = *MEMORY[0x29EDCA608];
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v34 = *a3;
        *(result + 17) = *(a3 + 2);
        *(result + 60) = v34;
        result[144] = 1;
        result[2] = 1;
        *(result + 46) = 0;
        *(result + 188) = *(a3 + 4);
        goto LABEL_84;
      }

      if (a2 != 4)
      {
        v5 = *a3;
        if (*a3)
        {
          *(result + 49) = 0;
          *(result + 50) = v5;
          *(result + 51) = 0;
        }

        goto LABEL_84;
      }

      v35 = *a3;
      *(result + 23) = *(a3 + 2);
      *(result + 84) = v35;
      v36 = 1;
      result[145] = 1;
      v37 = *(a3 + 1);
      if (v37 != 1)
      {
        if (v37 != 3)
        {
          if (v37 == 2)
          {
            v38 = 0;
            v36 = *(a3 + 2) == 3;
LABEL_69:
            result[7] = v38;
            *result = v36 && !v38;
            v44 = *(a3 + 2);
            *(result + 40) = 0;
            *(result + 41) = v37;
            *(result + 42) = v44;
            result[220] = 1;
            result[221] = result[56] ^ 1;
            goto LABEL_84;
          }

          v36 = 0;
        }

        v38 = 0;
        goto LABEL_69;
      }

      v36 = 0;
      v38 = *(a3 + 2) == 3;
      goto LABEL_69;
    }

    if (!a2)
    {
      result[3] = 1;
      result[9] = 0;
      *(result + 53) = *(a3 + 6);
      goto LABEL_84;
    }

    if (a2 == 1)
    {
      result[4] = 1;
      result[10] = 0;
      *(result + 54) = *(a3 + 6);
      goto LABEL_84;
    }

    goto LABEL_54;
  }

  if (a2 <= 11)
  {
    if (a2 == 6)
    {
      v29 = *a3;
      *(result + 20) = *(a3 + 2);
      *(result + 9) = v29;
      result[146] = 1;
      v30 = *(a3 + 1);
      if (v30 == 8)
      {
        v31 = 0;
        v32 = *(a3 + 2);
        v33 = v32 == 3;
      }

      else
      {
        v33 = 0;
        v31 = v30 > 1;
        v32 = *(a3 + 2);
      }

      result[8] = v31;
      result[1] = v33 && !v31;
      *(result + 43) = 0;
      *(result + 44) = v30;
      *(result + 45) = v32;
      *(result + 111) = 257;
      goto LABEL_84;
    }

    if (a2 != 10)
    {
      goto LABEL_54;
    }

    v26 = *(a3 + 4);
    if (v26 == 11)
    {
      v27 = (result + 48);
      v28 = *(result + 6);
      result[5] = *(a3 + 784);
    }

    else
    {
      v27 = (result + 48);
      v28 = *(result + 6);
      result[5] = 0;
      if (v26 < 9)
      {
LABEL_75:
        v4[26].i32[0] = *a3;
        v4[6] = a3[1];
        v4[19] = vadd_s32(v4[19], 0x100000001);
        ++v4[20].i32[0];
        ++v4[21].i32[1];
        ++v4[23].i32[0];
        ++v4[24].i32[1];
        goto LABEL_84;
      }
    }

    if (v28 > -999.0)
    {
      v40 = *(a3 + 1) - v28;
      if (v40 > 1.5 || v40 < 0.0)
      {
        v41 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v43 = *(g_TCU + 8);
          }

          else
          {
            v43 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Time Diff between EPOCH = %f sec at TOW=%f (TOWstat=%d)", "FpeEnabler_UpdateFlags", 266, v42, v43, *(a3 + 1) - *v27, *(a3 + 1), *(a3 + 4));
          v41 = g_FPE_LogSeverity;
        }

        if ((v41 & 0x200) != 0)
        {
          result = LC_LOG_NMEA_GENERIC("%s,FPENW1,%.2f,%.1f,%d", "$PFPEX", *(a3 + 1) - *v27, *(a3 + 1), *(a3 + 4));
        }
      }
    }

    goto LABEL_75;
  }

  if (a2 == 14)
  {
    goto LABEL_84;
  }

  if (a2 == 13)
  {
    result[13] = 1;
    goto LABEL_84;
  }

  if (a2 != 12)
  {
LABEL_54:
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v39 = *(g_TCU + 8);
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s");
    }

    goto LABEL_84;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = result[v6 + 37];
    result[v6 + 38] = v8;
    v7 += v8;
    --v6;
  }

  while (v6 != -24);
  v9 = 0;
  v10 = result[8];
  result[14] = v10;
  for (i = 39; i != 45; ++i)
  {
    v9 += result[i];
  }

  if ((g_FPE_LogSeverity & 0x200) != 0)
  {
    v12 = v10 + v7;
    v13 = result[56];
    v15 = *(result + 38);
    v14 = *(result + 39);
    if (v14 >= 0x3E7)
    {
      v14 = 999;
    }

    if (v15 >= 0x3E7)
    {
      v15 = 999;
    }

    v17 = *(result + 40);
    v16 = *(result + 41);
    if (v17 >= 0x63)
    {
      v17 = 99;
    }

    v19 = *(result + 42);
    v18 = *(result + 43);
    if (v18 >= 0x63)
    {
      v18 = 99;
    }

    v20 = *(result + 46);
    if (v20 >= 0x63)
    {
      v20 = 99;
    }

    if (v4[24].i32[1] >= 0x63u)
    {
      v21 = 99;
    }

    else
    {
      v21 = v4[24].i32[1];
    }

    result = LC_LOG_NMEA_GENERIC("%s,FPEN,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", "$PFPEX", v13, v14, v15, v16, v19, v17, v4[22].i32[0], v4[22].i32[1], v18, v4[23].i32[1], v4[24].i32[0], v20, v4[25].i32[0], v21, v4->u8[0], v4->u8[1], v4->u8[2], v4->u8[3], v4->u8[4], v12, v4->u8[6], v4[1].u8[3], v9);
  }

  v22 = v4[26].i32[1];
  if (v22 && (v4[1].i8[1] & 1) == 0)
  {
    v23 = v4[26].i32[0] - v22;
    if (v23 < 0)
    {
      v23 = -v23;
    }

    if (v23 >= 0x7D1 && (g_FPE_LogSeverity & 4) != 0)
    {
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v25 = *(g_TCU + 8);
      }

      else
      {
        v25 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f OS time difference between EPOCH and last ACCL: %d msec", "FpeEnabler_UpdateFlags", 383, v24, v25, v4[26].i32[0] - v4[26].i32[1]);
    }
  }

  v45 = v4[27].i32[0];
  if (v45 && (v4[1].i8[2] & 1) == 0)
  {
    v46 = v4[26].i32[0] - v45;
    if (v46 < 0)
    {
      v46 = -v46;
    }

    if (v46 >= 0x7D1 && (g_FPE_LogSeverity & 4) != 0)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v48 = *(g_TCU + 8);
      }

      v49 = (v4[26].i32[0] - v4[27].i32[0]);
      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f OS time difference between EPOCH and last GYRO: %d msec");
    }
  }

LABEL_84:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

const char *FpeEnabler_UpdateState(const char *result, _BYTE *a2, _BYTE *a3)
{
  v3 = result;
  v20 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  *a3 = 0;
  if (result[56] == 1)
  {
    v5 = 0;
    for (i = 14; i != 39; ++i)
    {
      v5 += result[i];
    }

    v7 = result + 6;
    if (result[6])
    {
      if (result[13] != 1)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          mach_continuous_time();
          if (g_TCU)
          {
            v8 = *(g_TCU + 8);
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Sensor Problem --> stopWorking");
        }

        goto LABEL_43;
      }

LABEL_33:
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v13 = *(g_TCU + 8);
        }

        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f REINIT by external --> stopWorking");
      }

      goto LABEL_43;
    }

    if (result[11] == 1)
    {
      if ((result[12] & 1) != 0 || v5 > 0x13)
      {
        if (result[13])
        {
          goto LABEL_33;
        }

        if (result[12])
        {
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            if (g_TCU)
            {
              v11 = *(g_TCU + 8);
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f too many epochs without sensors --> stopWorking");
          }

          goto LABEL_43;
        }

        if (v5 < 0x14)
        {
LABEL_43:
          *(v3 + 3) = 0;
          *(v3 + 5) = 0;
          if (v3[13] == 1)
          {
            *v3 = 0;
            *(v3 + 2) = 0;
            *(v3 + 111) = 0;
          }

          *(v3 + 13) = 0;
          *(v3 + 152) = 0u;
          *(v3 + 168) = 0u;
          *(v3 + 184) = 0u;
          *(v3 + 25) = 0;
          *v7 = 0;
          *(v3 + 10) = 0;
          *(v3 + 56) = 0;
          *a3 = 1;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            if (g_TCU)
            {
              v14 = *(g_TCU + 8);
            }

            v15 = *(v3 + 6);
            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FPE En: %f WrkState --> False");
          }

          goto LABEL_49;
        }

        goto LABEL_29;
      }
    }

    else if (v5 > 0x13)
    {
      if (result[13])
      {
        goto LABEL_33;
      }

LABEL_29:
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v12 = *(g_TCU + 8);
        }

        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %u events exceed UAC not-driving events threshold in %u events window");
      }

      goto LABEL_43;
    }

    if ((result[13] & 1) == 0)
    {
      *(result + 56) = 1;
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  if (*result == 1 && result[1] == 1 && result[3] == 1 && result[4] == 1 && (result[2] & 1) != 0)
  {
    v9 = *(result + 5);
    *(result + 56) = v9;
    if (v9 == 1)
    {
      *a2 = 1;
      *(result + 39) = 0;
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v10 = *(g_TCU + 8);
        }

        v18 = *(v3 + 6);
        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FPE En: %f WrkState --> True");
      }
    }
  }

  else
  {
    *(result + 56) = 0;
  }

LABEL_49:
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v16 = *(g_TCU + 8);
    }

    else
    {
      v16 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FpeEnablerState: => %u startFlags=[FIV:%u,UAC:%u,DMS:%u,GNSS:%u,ACCL:%u,GYRO:%u] stopFlags=[FIV:%u,UAC:%u,ACCL:%u,GYRO:%u,sensCurGap:%u,sensPrevGap:%u,sensErr:%u,reinit:%u,uacCycBuf:[%u,%u,%u,%u,%u,%u,%u,%u,%u,%u]], sensCycBuf[%u,%u,%u,%u,%u,%u] FpelastRecordTble: [%u,%u,%u,%u,%u,%u]", "FpeEnabler_printState", 551, v19, v16, *(v3 + 56), *v3, *(v3 + 1), *(v3 + 2), *(v3 + 5), *(v3 + 3), *(v3 + 4), *(v3 + 7), *(v3 + 8), *(v3 + 9), *(v3 + 10), *(v3 + 11), *(v3 + 12), *(v3 + 6), *(v3 + 13), *(v3 + 14), *(v3 + 15), *(v3 + 16), *(v3 + 17), *(v3 + 18), *(v3 + 19), *(v3 + 20), *(v3 + 21), *(v3 + 22), *(v3 + 23), *(v3 + 39), *(v3 + 40), *(v3 + 41), *(v3 + 42), *(v3 + 43), *(v3 + 44), *(v3 + 144), *(v3 + 145), *(v3 + 146), *(v3 + 147), *(v3 + 148), *(v3 + 149));
  }

  *(v3 + 3) = 0;
  *(v3 + 5) = 0;
  *(v3 + 9) = 257;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t FpeEnabler_UpdateStopFlags(uint64_t a1, char a2)
{
  v2 = 0;
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 6) = a2;
  v3 = 1;
  do
  {
    v4 = *(a1 + v2 + 43);
    *(a1 + v2 + 44) = v4;
    v3 &= v4;
    --v2;
  }

  while (v2 != -5);
  v5 = *(a1 + 11);
  *(a1 + 39) = v5;
  *(a1 + 12) = v3 & v5;
  if (*(a1 + 9))
  {
    v6 = *(a1 + 10);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 11) = v6 & 1;
  v9 = 0;
  FpeEnabler_UpdateState(a1, &v10, &v9);
  result = v9;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Meas_ARP_Check(unsigned int a1, _BYTE *a2, uint64_t a3, double *a4, double *a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v7 = a5[5];
  if (a5[6] > v7)
  {
    v7 = a5[6];
  }

  if (a5[7] > v7)
  {
    v7 = a5[7];
  }

  v8 = v7 * 0.769230769;
  v9 = cARPCheckMinDynThresh[a1 - 1];
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *a4;
  v12 = a4[1];
  if (a1 == 1)
  {
    v13 = 0;
    v14 = a3 + 2408;
    v15 = vdupq_n_s64(0x41124C41D4FDF3B6uLL);
    v16 = vdupq_n_s64(0x41024C41D4FDF3B6uLL);
    v17 = vdupq_n_s64(0xC1124C41D4FDF3B6);
    v18 = 2408;
    do
    {
      v19 = vmlsq_f64(*(v14 + v13), v15, vrndmq_f64(vdivq_f64(*(v14 + v13), v15)));
      *(v14 + v13) = vbslq_s8(vcgtq_f64(v19, v16), vaddq_f64(v19, v17), v19);
      v13 += 16;
    }

    while (v13 != 384);
  }

  else
  {
    v18 = 2024;
  }

  v20 = v10 * 0.25;
  if (a1 >= 4)
  {
    gn_report_assertion_failure("NK_Meas_ARP_Check: index fail");
  }

  v21 = 0;
  v22 = v10 * v10;
  v23 = v20 * v20;
  for (i = 3608; i != 3992; i += 8)
  {
    if (*(a3 + v21 + 152) == 1)
    {
      v25 = a3 + 4 * v21;
      v26 = *(v25 + 248);
      if ((v26 - 1) >= 0x1D)
      {
        if (v26)
        {
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        }

        else
        {
          v27 = v12 >= 100.0;
          if (*a2 != 2)
          {
            v27 = v11 >= 100.0;
          }

          if (!v27)
          {
            v28 = *(a3 + i + 432) * 9.0;
            v29 = *(a3 + v18) * *(a3 + v18);
            if (v28 <= v22)
            {
              v30 = v22;
            }

            else
            {
              v30 = *(a3 + i + 432) * 9.0;
            }

            if (v28 <= v23)
            {
              v31 = v23;
            }

            else
            {
              v31 = *(a3 + i + 432) * 9.0;
            }

            if (v29 >= v30)
            {
              *(a3 + v21 + 152) = 0;
              *(v25 + 248) = 20;
              --*(a3 + 3);
              ++*(a3 + 4);
            }

            else if (v29 > v31)
            {
              v32 = *(a3 + i);
              NK_Get_Smooth_Excl_Weight(v29, v31, v30);
              *(a3 + i) = v32 / v33;
              *(a3 + v21 + 3992) = 1;
            }
          }
        }
      }
    }

    ++v21;
    v18 += 8;
    a2 += 4;
  }

  v34 = *MEMORY[0x29EDCA608];
}

void NK_Get_Smooth_Excl_Weight(double a1, double a2, double a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a1 <= a2)
  {
    gn_report_assertion_failure("NK_Get_Smooth_Excl_Weight:  i<=l");
  }

  else if (a1 >= a3)
  {
    gn_report_assertion_failure("NK_Get_Smooth_Excl_Weight:  i>=u");
  }

  else if ((1.0 / (exp(((a1 - a2) / (a3 - a2) + -0.5) * 10.0) + 1.0) + -0.00669285092) / 0.986614298 <= 0.0000001)
  {
    gn_report_assertion_failure("NK_Get_Smooth_Excl_Weight:  w<=0");
  }

  v3 = *MEMORY[0x29EDCA608];
}

void NK_Meas_Outlier_Check(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a1;
  v51[48] = *MEMORY[0x29EDCA608];
  if (a1 != 1)
  {
    if (a4)
    {
      v10 = 0;
      v13 = 0;
      v14 = a4 + 152;
      do
      {
        if (*(v14 + v13) == 1)
        {
          v15 = *(v14 + 4 * v13 + 96);
          if ((v15 - 1) >= 0x1D)
          {
            if (v15)
            {
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            }

            else
            {
              v50[v10++] = v13;
            }
          }
        }

        ++v13;
      }

      while (v13 != 48);
      if (v10 >= 1)
      {
        v19 = v50;
        v20 = v10;
        do
        {
          v21 = *v19++;
          v51[v21] = *(v6 + 2024 + 8 * v21);
          --v20;
        }

        while (v20);
      }

      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pDO");
      v10 = 0;
      if (a5)
      {
LABEL_28:
        v22 = 0;
        v23 = a5 + 152;
        v24 = v10;
        do
        {
          if (*(v23 + v22) == 1)
          {
            v25 = *(v23 + 4 * v22 + 96);
            if ((v25 - 1) >= 0x1D)
            {
              if (v25)
              {
                EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
              }

              else
              {
                v50[v24++] = v22;
              }
            }
          }

          ++v22;
        }

        while (v22 != 48);
        if (v10 < v24)
        {
          v26 = v24 - v10;
          v27 = &v50[v10];
          do
          {
            v28 = *v27++;
            v51[v28] = *(a5 + 2024 + 8 * v28);
            --v26;
          }

          while (v26);
        }

        v9 = 0;
        v10 = v24;
        goto LABEL_43;
      }
    }

    gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pDR");
    v9 = 0;
    goto LABEL_43;
  }

  v9 = a3;
  if (!a3)
  {
    gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pPR");
    v29 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v10 = 0;
  for (i = 0; i != 48; ++i)
  {
    if (*(v9 + i + 152) == 1)
    {
      v12 = *(v9 + 4 * i + 248);
      if ((v12 - 1) >= 0x1D)
      {
        if (v12)
        {
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        }

        else
        {
          v50[v10++] = i;
        }
      }
    }
  }

  if (v10 >= 1)
  {
    v16 = v50;
    v17 = v10;
    do
    {
      v18 = *v16++;
      v51[v18] = *(v9 + 2408 + 8 * v18);
      --v17;
    }

    while (v17);
  }

LABEL_43:
  v29 = v51;
  VecSortIndexAscR8(v51, v10, v50, 1);
LABEL_44:
  if (a2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v8 == 1;
  }

  if (v30)
  {
    v31 = 6;
  }

  else
  {
    v31 = 5;
  }

  v32 = (v10 - 1);
  if (v32 > v31)
  {
    v49 = v6 + 152;
    v33 = v10 - 3;
    while (1)
    {
      v34 = v50[v32];
      v35 = v29[v34];
      v36 = fabs(v35 / v29[v50[v33 + 1]]);
      v37 = fabs(v35 / v29[v50[v33]]);
      v38 = (v36 + v36) * 0.333333333 + -1.0;
      v39 = (v37 + v37) * 0.25 + -1.0;
      if (v38 <= 0.0 && v39 <= 0.0)
      {
        goto LABEL_76;
      }

      if (v6 && v8 != 1 && (*(v49 + v34) & 1) != 0)
      {
        break;
      }

      if (v8 == 1)
      {
        v8 = 1;
      }

      else
      {
        v9 = a5;
        v8 = 3;
      }

      if (v9)
      {
        goto LABEL_62;
      }

      gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad p_SM");
LABEL_75:
      --v32;
      --v33;
      if (v32 <= v31)
      {
        goto LABEL_76;
      }
    }

    v8 = 2;
    v9 = v6;
LABEL_62:
    if (fabs(v35) > cOutlierMinResid[v8 - 1])
    {
      v40 = v8;
      v41 = v31;
      v42 = v6;
      v43 = a5;
      if (v38 < 1.0 && v39 < 1.0)
      {
        v45 = v9 + 8 * v34;
        v46 = *(v45 + 3608);
        if (v38 <= v39)
        {
          v38 = v39;
        }

        NK_Get_Smooth_Excl_Weight(v38, 0.0, 1.0);
        *(v45 + 3608) = v46 / v47;
        *(v9 + v34 + 3992) = 1;
      }

      else
      {
        if ((*(v9 + 152 + v34) & 1) == 0)
        {
          gn_report_assertion_failure("NK_Meas_Outlier_Check:  Exclusion index fail");
        }

        *(v9 + 152 + v34) = 0;
        *(v9 + 4 * v34 + 248) = 19;
        --*(v9 + 3);
        ++*(v9 + 4);
      }

      a5 = v43;
      v6 = v42;
      v31 = v41;
      v8 = v40;
    }

    goto LABEL_75;
  }

LABEL_76:
  v48 = *MEMORY[0x29EDCA608];
}

uint64_t NK_Reject_DO_For_Rejected_PR(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v29[12] = *MEMORY[0x29EDCA608];
  v25 = a4 + 6800;
  v26 = 0.0;
  v8 = a4 + 14112;
  v23 = a4 + 13960;
  v9 = a4 + 8536;
  v22 = a4 + 8384;
  v10 = (a4 + 8632);
  do
  {
    v11 = a4 + 4 * v7;
    v12 = *(v11 + 3056);
    if (v12 > 0x1D)
    {
      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
    }

    else if (((1 << v12) & 0x3FFFF7FE) == 0 && (v12 || *(v25 + v7) != 1))
    {
      goto LABEL_8;
    }

    if (*(v8 + v7) != 1)
    {
      goto LABEL_6;
    }

    v13 = v10[1394];
    if ((v13 - 1) < 0x1D)
    {
      goto LABEL_6;
    }

    if (v13)
    {
      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_6:
      if (*(v9 + v7) != 1 || (*v10 - 1) < 0x1D)
      {
        goto LABEL_8;
      }

      if (*v10)
      {
        result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        goto LABEL_8;
      }

      v21 = 0;
      v14 = 2;
      v15 = v22;
      goto LABEL_18;
    }

    v14 = 3;
    v21 = 1;
    v15 = v23;
LABEL_18:
    NK_Obs_Equ_SV(v14, *(v15 + v7 + 200), *a2, v6, v29, *(a4 + 656));
    v16 = (v15 + 8 * v7);
    v29[11] = v16[253];
    v17 = v16[505];
    v18 = v16[451];
    result = umeas(a3 + 872, 0xBu, -(v17 * v18), v29, v28, v27, &v26, 1.0e20);
    v19 = *(v11 + 3056);
    if ((v19 - 1) < 0x1D)
    {
      goto LABEL_19;
    }

    if (v19)
    {
      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_19:
      *(v15 + v7 + 152) = 0;
      *(v15 + 4 * v7 + 248) = 24;
      --*(v15 + 3);
      ++*(v15 + 4);
      goto LABEL_8;
    }

    if (*(v25 + v7) != 1)
    {
      goto LABEL_19;
    }

    if ((v21 & 1) == 0)
    {
      result = umeas(a3 + 872, 0xBu, v17 * v18 * *(v9 + 8 * v7 - 2120), v29, v28, v27, &v26, 1.0e20);
      *(v15 + v7 + 3992) = 1;
    }

LABEL_8:
    ++v7;
    v6 += 56;
    a2 += 4;
    ++v10;
  }

  while (v7 != 48);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void GPS_State_Update_Init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v7 = a7;
  v41 = *MEMORY[0x29EDCA608];
  *(a1 + 306) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v11 = xmmword_299729020;
  v12 = xmmword_299728F20;
  v13 = 140;
  v14 = vdupq_n_s64(4uLL);
  v15 = a7;
  v16 = vdupq_n_s64(0x8BuLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v12)), *v11.i8).u8[0])
    {
      v15[46] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x8BuLL), *&v12)), *&v11).i8[2])
    {
      v15[94] = 0;
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x8BuLL), *&v11))).i32[1])
    {
      v15[142] = 0;
      v15[190] = 0;
    }

    v11 = vaddq_s64(v11, v14);
    v12 = vaddq_s64(v12, v14);
    v15 += 192;
    v13 -= 4;
  }

  while (v13);
  if (ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    v17 = 0;
    v18 = 60;
    v19 = 15;
    do
    {
      if (*(a4 + v17 + 39303) == 1)
      {
        *&v40[24] = 0;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        memset(v40, 0, 21);
        ST_Update_Table(v17, v19, v18, &v30, a2, a1, a5, a4, a6);
        v20 = *(a2 + 12);
        if ((v20 - 1) <= 1)
        {
          *(a1 + 306) = 1;
          if (v20 == 1)
          {
            if (v19 <= 0)
            {
              v19 = 15;
            }

            else
            {
              --v19;
            }
          }

          else if (v18 <= 0)
          {
            v18 = 59;
          }

          else
          {
            v18 -= 3;
          }

          v21 = v39;
          v7[8] = v38;
          v7[9] = v21;
          v22 = *&v40[16];
          v7[10] = *v40;
          v7[11] = v22;
          v23 = v35;
          v7[4] = v34;
          v7[5] = v23;
          v24 = v37;
          v7[6] = v36;
          v7[7] = v24;
          v25 = v31;
          *v7 = v30;
          v7[1] = v25;
          v26 = v33;
          v7[2] = v32;
          v7[3] = v26;
        }
      }

      ++v17;
      v7 += 12;
    }

    while (v17 != 149);
    if (*(a1 + 306))
    {
      *(a1 + 4) = *(a2 + 8);
      *a1 = *(a2 + 4);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

uint64_t ST_Get_Time(uint64_t a1, __int16 *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 5);
  v4 = *a1;
  *a2 = *(a1 + 16);
  *a3 = *(a1 + 24);
  if (v3)
  {
    v5 = v4 <= 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = *(a1 + 8);
    v16 = 0;
    v14 = 0.0;
    v15 = 0.0;
    if (Get_FSP_Time(v8, &v16, &v14, &v15, &v17))
    {
      if (v15 <= 40000.0)
      {
        v10 = v15;
        if (v15 >= 2)
        {
          if (v10 >= 0x190)
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }

          if (v10 >= 9)
          {
            v9 = v11;
          }

          else
          {
            v9 = 3;
          }
        }

        else
        {
          v9 = 4;
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9 > v4)
      {
        *a2 = v16;
        *a3 = v14;
        LOBYTE(v3) = 1;
        v4 = v9;
      }
    }

    v3 = (v4 > 0) & v3;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

void ST_Update_Table(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v175 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x95)
  {
    gn_report_assertion_failure("ST_Update_Table : sv < NUM_POS");
  }

  Constell_Pos = Get_Constell_Pos(a1);
  if ((Constell_Pos - 1) <= 4)
  {
    v18 = Constell_Pos;
    v136 = a3;
    v137 = a2;
    v154 = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v141 = 0u;
    v131 = Num_Pos[Constell_Pos - 1];
    v134 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
    *(a4 + 184) = 0;
    v135 = a6 + 6;
    *(a6 + 6 + 2 * a1) = 0;
    if (a1 >= 0x95)
    {
      gn_report_assertion_failure("ST_Get_GPS_Orbit : sv < NUM_POS");
    }

    v138 = Get_Constell_Pos(a1);
    v19 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
    v20 = v19;
    v133 = LongPrnIdx_To_ShortPrnIdx(v19, &v138);
    v21 = Num_Pos_Idx_To_GNSS_Id(a1);
    *(a5 + 12) = 0;
    if (*(a8 + v20 + 33605) != 1 || (*(a7 + v20 + 253) & 1) != 0)
    {
      goto LABEL_236;
    }

    v22 = v21;
    v23 = v138;
    if (v138 == 2)
    {
      v24 = a8 + v20;
      if (v24[37522] != 1)
      {
        goto LABEL_236;
      }

      v24[37878] = 0;
      v24[38056] = 0;
      *(a5 + 12) = 1;
      if (*(a8[2035] + v133))
      {
        *(a5 + 16) = 1;
        Get_GPS_Kep_Ephemeris(2, v21, a8 + 108 * v133 + 12760, &v141);
        v25 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v141);
        v26 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v25, &v141);
        v27 = a8[2035];
        if (v26)
        {
          if ((*(v27 + v133) & 1) != 0 && *(a8[2034] + v133) == 1)
          {
            v28 = HIDWORD(a8[8 * v133 + 1409]);
            v29 = (~v28 & 0xF00) != 0 ? ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::glonURE_table[(v28 >> 8) & 0xF] : 0xFFFF;
            v70 = SHIBYTE(v141) > 11 ? 0xFFFF : ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::gpsURE_table[SHIBYTE(v141)];
            if (v70 > v29)
            {
              *(a5 + 12) = 0;
            }
          }
        }

        else
        {
          *(a5 + 12) = 0;
          *(v27 + v133) = 0;
        }
      }

      v37 = *(a5 + 12);
      *(a8[2039] + v133) = v37 == 1;
LABEL_166:
      if (v37 == 1)
      {
        v82 = a2;
        if (*(a5 + 16) & 1) != 0 || (*(a8 + v134 + 38946))
        {
          v83 = a3;
          goto LABEL_237;
        }

        v84 = a1 - v131;
        if (*(a8 + v134 + 37700) == 1 && *(a8 + v134 + 33605) == 1)
        {
          if (v18 > 3)
          {
            if (v18 == 4)
            {
              if (*(a8 + 44 * v84 + 31931) <= 0x93u)
              {
                v114 = 1356;
              }

              else
              {
                v114 = 1357;
              }

              v85 = v114 + *(a8 + 22 * v84 + 15964);
              goto LABEL_182;
            }

            if (v18 == 5)
            {
              v85 = *(a8 + 22 * v84 + 5389);
              goto LABEL_182;
            }
          }

          else
          {
            if (v18 == 1)
            {
              v85 = *(a8 + 22 * v84 + 3513);
              goto LABEL_182;
            }

            if (v18 == 3)
            {
              v85 = *(a8 + 18 * v84 + 11541) + 1024;
LABEL_182:
              v86 = *(a5 + 8) - v85;
              if (v86 < 0)
              {
                v86 = -v86;
              }

              if (v86 <= 2)
              {
                v87 = *(a5 + 8);
                *v156 = 0;
                *&v155 = 0;
                *(&v155 + 7) = 0;
                memset(&v156[4], 0, 76);
                if (v18 > 3)
                {
                  if (v18 == 4)
                  {
                    memset(v166, 0, 72);
                    v165 = 0uLL;
                    BDS_AlmInt2Real(a8 + 44 * v84 + 31920, &v165);
                    *&v155 = v165;
                    *&v156[72] = *&v166[16];
                    v89 = 0.942477796;
                    if (BYTE11(v165) <= 5u)
                    {
                      v89 = 0.0;
                    }

                    *&v156[24] = *&v166[8];
                    *&v156[32] = *&v166[48] + v89;
                    *&v156[48] = *&v166[24];
                    *&v156[56] = *v166;
                    *&v156[40] = *&v166[40];
                    *&v156[8] = *&v166[56];
                    *&v156[4] = HIDWORD(v165) + 14;
                    *v156 = WORD4(v165) + 1356;
                    if (HIDWORD(v165) + 14 > 604799)
                    {
                      *&v156[4] = HIDWORD(v165) - 604786;
                      *v156 = WORD4(v165) + 1357;
                    }

                    *&v156[64] = *&v166[32] + 0.0010208961;
                    DWORD2(v155) = 4;
                    BYTE12(v155) = BYTE11(v165);
                    BYTE13(v155) = BYTE10(v165) ^ 1;
                  }

                  else
                  {
                    Get_QZSS_Kep_Almanac(a8 + 44 * v84 + 10768, &v155);
                    v87 = *(a5 + 8);
                  }
                }

                else if (v18 == 1)
                {
                  Get_GPS_Kep_Almanac(a8 + 44 * v84 + 7016, &v155);
                }

                else
                {
                  if (v18 != 3)
                  {
                    __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 862, "FALSE");
                  }

                  memset(v166, 0, 75);
                  v165 = 0uLL;
                  GAL_AlmInt2Real(a8 + 36 * v84 + 23072, &v165);
                  *&v156[8] = *&v166[56];
                  *&v156[24] = *&v166[8];
                  *&v156[32] = *&v166[16] + 0.977384381;
                  *&v156[40] = *&v166[32];
                  *&v156[48] = *&v166[48];
                  *(&v155 + 4) = DWORD1(v165) | 0x300000000;
                  BYTE12(v155) = BYTE8(v165);
                  BYTE13(v155) = v166[74] | (8 * v166[73]);
                  BYTE14(v155) = BYTE9(v165);
                  *v156 = WORD5(v165) + 1024;
                  *&v156[4] = HIDWORD(v165);
                  *&v156[56] = *v166 + 5440.5882;
                  *&v156[64] = *&v166[24];
                  *&v156[72] = *&v166[40];
                }

                v82 = v137;
                v90 = Kep_Check_Almanac(v87, &v155);
                v83 = a3;
                if (!ST_Check_Alm_Kep_Err("ST_Update_Table", v90, &v155))
                {
                  goto LABEL_237;
                }

                v169 = 0u;
                v170 = 0u;
                v167 = 0u;
                v168 = 0u;
                memset(&v166[32], 0, 48);
                v165 = 0u;
                *v166 = 0u;
                v171 = *&v156[48];
                *&v172 = *&v156[64];
                *(&v172 + 1) = *&v156[32];
                *&v173 = *&v156[72];
                *(&v173 + 1) = *&v156[24];
                v174 = *&v156[40];
                *&v166[16] = *&v156[8];
                *&v166[8] = *&v156[4];
                *&v166[2] = *v156;
                *(&v165 + 4) = *(&v155 + 4);
                WORD6(v165) = WORD6(v155);
                if (ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v141, &v165, 2))
                {
                  *(a8 + v134 + 38946) = 1;
                  goto LABEL_237;
                }

                if (Get_Constell_Prn(v134) == 2)
                {
                  __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 939, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
                }

                v91 = a8 + v134;
                v91[38234] = 1;
                v91[37344] = 0;
                goto LABEL_208;
              }

              if (v18 <= 2)
              {
                if (v18 == 1)
                {
                  v130 = 0;
                  v132 = 0;
                  v88 = a8 + 108 * v84 + 104;
                }

                else
                {
                  v88 = 0;
                  v130 = 0;
                  v132 = 0;
                }
              }

              else if (v18 == 3)
              {
                v88 = 0;
                v130 = 0;
                v132 = &a8[11 * v84 + 2092];
              }

              else if (v18 == 4)
              {
                v88 = 0;
                v130 = a8 + 100 * v84 + 24520;
                v132 = 0;
              }

              else
              {
                v130 = 0;
                v132 = 0;
                v88 = a8 + 108 * v84 + 8608;
              }

              v92 = 0;
              v93 = a8 + 4668;
              v94 = 1;
              while (1)
              {
                v95 = Get_Constell_Pos(v92);
                v96 = v95 - 1;
                if ((v95 - 1) > 6)
                {
                  if (v92 == a1)
                  {
                    goto LABEL_235;
                  }

                  v98 = 0;
                  v97 = v92;
                }

                else
                {
                  if (v92 == a1)
                  {
                    goto LABEL_235;
                  }

                  v97 = v92 - Num_Pos[v96];
                  v98 = Num_Prn[v96];
                }

                if (*(v93 + v98 + v97) != 1)
                {
                  goto LABEL_235;
                }

                if ((v18 & 3) == 1)
                {
                  if (v95 == 5)
                  {
                    v99 = a8 + 1076;
                  }

                  else
                  {
                    if (v95 != 1)
                    {
                      goto LABEL_228;
                    }

                    v99 = a8 + 13;
                  }

                  v100 = v99 + 108 * v97;
                  v101 = 8;
                  while (*(v88 + v101) == *&v100[v101])
                  {
                    v101 += 4;
                    if (v101 == 104)
                    {
                      goto LABEL_256;
                    }
                  }
                }

LABEL_228:
                if (v18 == 3 && v95 == 3)
                {
                  if (Is_GAL_IntEph_Same(v132, &a8[11 * v97 + 2092]))
                  {
                    goto LABEL_256;
                  }
                }

                else if (v18 == 4 && v95 == 4 && Is_BDS_IntEph_Same(v130, a8 + 100 * v97 + 24520))
                {
LABEL_256:
                  v83 = v136;
                  v82 = v137;
                  if (!v94)
                  {
                    goto LABEL_237;
                  }

                  v109 = Num_Pos_Idx_To_GNSS_Id(a1);
                  LOBYTE(v165) = v109;
                  v110 = Num_Pos_Idx_To_GNSS_Id(v92);
                  BYTE1(v165) = v110;
                  if (!ST_Get_SNR_Levels(a9, v18, &v165, &v155))
                  {
                    goto LABEL_237;
                  }

                  if (BYTE1(v155) + 15 < v155)
                  {
                    goto LABEL_261;
                  }

                  if (v155 + 15 >= BYTE1(v155))
                  {
                    goto LABEL_237;
                  }

                  v110 = v109;
LABEL_261:
                  v111 = GNSS_SVId_Constell_To_Num_Pos_Idx(v110, v18);
                  v112 = v111;
                  v113 = Num_Pos_Idx_To_Num_Prn_Idx(v111);
                  if (Get_Constell_Prn(v113) == 2)
                  {
                    __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 998, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
                  }

                  *(a8 + v113 + 38234) = 1;
                  v134 = v113;
                  *(v93 + v113) = 0;
                  if (a1 != v112)
                  {
LABEL_237:
                    v102 = *(a5 + 12);
                    if ((v102 - 1) <= 1)
                    {
                      if (v102 == 1)
                      {
                        v103 = v82;
                      }

                      else
                      {
                        v103 = v83;
                      }

                      v104 = -v103;
                      *(v135 + 2 * a1) = v104;
                      v105 = *(a5 + 4) - v104;
                      if (v105 <= 604799)
                      {
                        v106 = v105;
                      }

                      else
                      {
                        v106 = v105 - 604800;
                      }

                      if (v105 <= 604799)
                      {
                        v107 = *(a5 + 8);
                      }

                      else
                      {
                        v107 = *(a5 + 8) + 1;
                      }

                      if (DWORD2(v141) == 4 && v102 == 1 && BYTE12(v141) <= 5u)
                      {
                        Kep_Calc_SV_Ref_State_BDS_GEO(1, v107, v106, &v141, a4);
                      }

                      else
                      {
                        Kep_Calc_SV_Ref_State(v102, v107, v106, &v141, a4);
                      }

                      if (*(a5 + 12) == 1 && *(a8 + v134 + 38768) == 1)
                      {
                        *(a4 + 166) += 1000;
                      }
                    }

                    goto LABEL_255;
                  }

LABEL_208:
                  *(a5 + 12) = 0;
                  goto LABEL_237;
                }

LABEL_235:
                v94 = v92++ < 0x94;
                if (v92 == 149)
                {
                  goto LABEL_236;
                }
              }
            }
          }

          EvCrt_Illegal_Default("ST_Update_Table", 0x349u);
        }

        v85 = 0x7FFF;
        goto LABEL_182;
      }

LABEL_236:
      v83 = v136;
      v82 = v137;
      goto LABEL_237;
    }

    v129 = a8 + 4668;
    if ((*(a8 + v20 + 37344) & 1) == 0 && (*(a8 + v20 + 37522) & 1) == 0)
    {
      if ((*(a8 + v20 + 37700) & 1) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_142;
    }

    *(a8 + v20 + 37878) = 0;
    *(a8 + v20 + 38056) = 0;
    *(a5 + 12) = 1;
    if (v23 <= 3)
    {
      if (v23)
      {
        if (v23 != 1)
        {
          if (v23 == 3)
          {
            v30 = *(a8[2076] + v133);
            v31 = *(a8[2077] + v133);
            memset(v139, 0, 20);
            memset(&v139[24], 0, 124);
            memset(&v139[152], 0, 41);
            v140 = 0;
            if (v30 == 1 && v31)
            {
              v32 = &a8[11 * v133];
              v33 = 2488;
              v34 = (v32 + 2488);
              if (*(v32 + 19919) <= *(v32 + 16751))
              {
                v115 = 0;
                v121 = 1;
                goto LABEL_86;
              }

              v165 = 0uLL;
              *&v166[8] = 0;
              *v166 = 0;
              memset(&v166[16], 0, 64);
              v167 = 0uLL;
              v168 = 0uLL;
              v169 = 0uLL;
              v170 = 0uLL;
              v171 = 0uLL;
              v172 = 0uLL;
              v173 = 0uLL;
              v174 = 0;
              v155 = 0uLL;
              *&v156[8] = 0;
              *v156 = 0;
              memset(&v156[16], 0, 64);
              v157 = 0uLL;
              v158 = 0uLL;
              v159 = 0uLL;
              v160 = 0uLL;
              v161 = 0uLL;
              v162 = 0uLL;
              v163 = 0uLL;
              v164 = 0;
              GAL_EphInt2Real((v32 + 2092), v139);
              GAL_EphReal2Kep(v139, &v165);
              v35 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v165);
              v120 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v35, &v165);
              if (!v120)
              {
                *(a8[2076] + v133) = 0;
              }

              GAL_EphInt2Real(v34, v139);
              GAL_EphReal2Kep(v139, &v155);
              v36 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v155);
              if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v36, &v155))
              {
                *(a8[2077] + v133) = 0;
                if (!v120)
                {
                  goto LABEL_119;
                }

LABEL_111:
                v121 = 0;
                v116 = 0;
                goto LABEL_112;
              }

              if (v120)
              {
                if (!ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v165, &v155, 1))
                {
                  v115 = 0;
                  *(v129 + v20) = 0;
                  v121 = 1;
                  *(a8 + v20 + 38234) = 1;
LABEL_71:
                  v33 = 2488;
LABEL_86:
                  v116 = 1;
                  goto LABEL_113;
                }

                goto LABEL_111;
              }
            }

            else
            {
              if (v30)
              {
                v116 = v31;
                v121 = 0;
LABEL_112:
                v115 = 1;
                v33 = 2092;
LABEL_113:
                GAL_EphInt2Real(&a8[11 * v133 + v33], v139);
                *(a8[2080] + v133) = v121;
                if (HIBYTE(v140) != 2 && BYTE4(v140) != 1 && v139[15] != 255)
                {
                  v72 = 0;
                  v124 = 0;
                  *(a8 + v139[14] + 16699) = 0;
LABEL_124:
                  GAL_EphReal2Kep(v139, &v141);
                  v76 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v141);
                  if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(GAL)", v76, &v141))
                  {
                    v54 = 1;
                  }

                  else
                  {
                    if (v115)
                    {
                      *(a8[2076] + v133) = 0;
                    }

                    v54 = v116;
                    if (v116)
                    {
                      v54 = 0;
                      *(a8[2077] + v133) = 0;
                    }
                  }

                  if (v72)
                  {
                    HIBYTE(v141) = v124;
                  }

LABEL_132:
                  if (v54)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_133;
                }

                v117 = v139[15];
                v119 = BYTE4(v140);
                v125 = HIBYTE(v140);
                *&v165 = 0x4050000000000000;
                v73 = v139[14];
                *(a8 + v139[14] + 16699) = 1;
                *&v155 = 0;
                if (!R8_EQ(&v165, &v155))
                {
                  if (v117 == 255)
                  {
                    v74 = 64;
                  }

                  else
                  {
                    *&v165 = 0x4051800000000000;
                    v74 = 70;
                  }

                  v75 = v125;
                  v124 = 8;
                  EvLog_v("ST_Get_GPS_Orbit: USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d FOM %d Sigma %d", *(a5 + 4), v73, v75, v119, v117 == 255, 8, v74);
                  v72 = 1;
                  goto LABEL_124;
                }

                EvLog_v("ST_Get_GPS_Orbit: DO NOT USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d Sigma %d", *(a5 + 4), v73, v125, v119, v117 == 255, 64);
LABEL_119:
                v54 = 0;
                goto LABEL_132;
              }

              if (!v31)
              {
                goto LABEL_119;
              }
            }

            v115 = 0;
            v121 = 1;
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        v45 = 0;
        *&v165 = 0;
        *(&v165 + 1) = 0x6300000000000000;
        *&v166[8] = 0;
        *v166 = 0;
        memset(&v166[16], 0, 64);
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0;
        *&v155 = 0;
        *(&v155 + 1) = 0x6300000000000000;
        *&v156[8] = 0;
        *v156 = 0;
        memset(&v156[16], 0, 64);
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0;
        v46 = v133;
        if (*(a8[6] + v133) == 1)
        {
          Get_GPS_Kep_Ephemeris(1, v21, a8 + 108 * v133 + 104, &v165);
          v47 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v165);
          v48 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v47, &v165);
          v45 = 1;
          if (!v48)
          {
            v45 = 0;
            *(a8[6] + v133) = 0;
          }
        }

        if (*(a8[7] + v133) == 1)
        {
          v127 = v45;
          Get_GPS_Kep_Ephemeris(v138, v22, a8 + 108 * v133 + 3560, &v155);
          v49 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v155);
          if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v49, &v155))
          {
            if (v127 && SHIBYTE(v155) > SHIBYTE(v165))
            {
              v50 = &v165;
              if (ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v165, &v155, 1))
              {
                v51 = 0;
LABEL_89:
                v57 = v50[11];
                v151 = v50[10];
                v152 = v57;
                v153 = v50[12];
                v154 = *(v50 + 26);
                v58 = v50[7];
                v147 = v50[6];
                v148 = v58;
                v59 = v50[9];
                v149 = v50[8];
                v150 = v59;
                v60 = v50[3];
                v143 = v50[2];
                v144 = v60;
                v61 = v50[5];
                v145 = v50[4];
                v146 = v61;
                v62 = v50[1];
                v141 = *v50;
                v142 = v62;
                v54 = 1;
                v63 = a8[10];
LABEL_93:
                *(v63 + v46) = v51;
                goto LABEL_132;
              }

              *(v129 + v20) = 0;
              v51 = 1;
              *(a8 + v20 + 38234) = 1;
            }

            else
            {
              v51 = 1;
            }

            v50 = &v155;
            goto LABEL_89;
          }

          *(a8[7] + v133) = 0;
          LOBYTE(v45) = v127;
        }

        v54 = 0;
        if ((v45 & 1) == 0)
        {
          goto LABEL_132;
        }

        v51 = 0;
        v50 = &v165;
        goto LABEL_89;
      }

LABEL_133:
      if (BYTE14(v141) == 255)
      {
        if (v138 > 6)
        {
          EvCrt_Illegal_Default("ST_Get_GPS_Orbit", 0x71Cu);
        }

        else if (((1 << v138) & 0x3A) != 0)
        {
          EvLog_v("ST_Get_GPS_Orbit:  %c %d  Alm looking Eph timed-out", aXgrebqs[v138], v133);
        }
      }

      *(a5 + 12) = 0;
      if (*(a8 + v20 + 37878))
      {
        goto LABEL_142;
      }

      if (Get_Constell_Prn(v20) == 2)
      {
        __assert_rtn("ST_Get_GPS_Orbit", "GPS_State_Update.cpp", 1844, "Get_Constell_Prn( (U1)i) != GLON_CONSTELL");
      }

      *(v129 + v20) = 0;
      v77 = a8 + v20;
      v77[38768] = 0;
      v77[38234] = 1;
LABEL_140:
      v37 = *(a5 + 12);
      if (v37 == 2)
      {
        goto LABEL_144;
      }

      if (v37)
      {
        goto LABEL_166;
      }

LABEL_142:
      v78 = a8 + v20;
      if (v78[37700] != 1)
      {
        goto LABEL_236;
      }

      v78[38056] = 0;
      v78[38768] = 0;
      *(a5 + 12) = 2;
LABEL_144:
      *v166 = 0;
      *&v165 = 0;
      *(&v165 + 7) = 0;
      memset(&v166[4], 0, 76);
      if (v138 <= 2)
      {
        if (v138)
        {
          if (v138 == 1)
          {
            Get_GPS_Kep_Almanac(a8 + 44 * v133 + 7016, &v165);
            goto LABEL_162;
          }

          if (v138 != 2)
          {
            goto LABEL_158;
          }
        }
      }

      else
      {
        if (v138 <= 4)
        {
          if (v138 == 3)
          {
            memset(v156, 0, 75);
            v155 = 0uLL;
            GAL_AlmInt2Real(a8 + 36 * v133 + 23072, &v155);
            *&v166[8] = *&v156[56];
            *&v166[24] = *&v156[8];
            *&v166[32] = *&v156[16] + 0.977384381;
            *&v166[40] = *&v156[32];
            *&v166[48] = *&v156[48];
            *(&v165 + 4) = DWORD1(v155) | 0x300000000;
            BYTE12(v165) = BYTE8(v155);
            BYTE13(v165) = v156[74] | (8 * v156[73]);
            BYTE14(v165) = BYTE9(v155);
            *v166 = WORD5(v155) + 1024;
            *&v166[4] = HIDWORD(v155);
            *&v166[56] = *v156 + 5440.5882;
            *&v166[64] = *&v156[24];
            *&v166[72] = *&v156[40];
          }

          else
          {
            memset(v156, 0, 72);
            v155 = 0uLL;
            BDS_AlmInt2Real(a8 + 44 * v133 + 31920, &v155);
            *&v165 = v155;
            *&v166[72] = *&v156[16];
            v79 = 0.942477796;
            if (BYTE11(v155) <= 5u)
            {
              v79 = 0.0;
            }

            *&v166[24] = *&v156[8];
            *&v166[32] = *&v156[48] + v79;
            *&v166[48] = *&v156[24];
            *&v166[56] = *v156;
            *&v166[40] = *&v156[40];
            *&v166[8] = *&v156[56];
            *&v166[4] = HIDWORD(v155) + 14;
            *v166 = WORD4(v155) + 1356;
            if (HIDWORD(v155) + 14 > 604799)
            {
              *&v166[4] = HIDWORD(v155) - 604786;
              *v166 = WORD4(v155) + 1357;
            }

            *&v166[64] = *&v156[32] + 0.0010208961;
            DWORD2(v165) = 4;
            BYTE12(v165) = BYTE11(v155);
            BYTE13(v165) = BYTE10(v155) ^ 1;
          }

LABEL_162:
          v80 = Kep_Check_Almanac(*(a5 + 8), &v165);
          if (ST_Check_Alm_Kep_Err("ST_Get_GPS_Orbit", v80, &v165))
          {
            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v151 = *&v166[48];
            *&v152 = *&v166[64];
            *(&v152 + 1) = *&v166[32];
            *&v153 = *&v166[72];
            *(&v153 + 1) = *&v166[24];
            v154 = *&v166[40];
            v143 = *&v166[8];
            DWORD2(v142) = *&v166[4];
            WORD1(v142) = *v166;
            *(&v141 + 4) = *(&v165 + 4);
            WORD6(v141) = WORD6(v165);
            v37 = *(a5 + 12);
            goto LABEL_166;
          }

          goto LABEL_164;
        }

        if (v138 == 5)
        {
          Get_QZSS_Kep_Almanac(a8 + 44 * v133 + 10768, &v165);
          goto LABEL_162;
        }

        if (v138 != 6)
        {
LABEL_158:
          EvCrt_Illegal_Default("ST_Get_GPS_Orbit", 0x781u);
        }
      }

LABEL_164:
      gn_report_assertion_failure("ST_Get_GPS_Orbit : status == TRUE");
      v37 = 0;
      *(a5 + 12) = 0;
      v81 = a8 + v20;
      if (!v81[38056])
      {
        v37 = 0;
        v81[37700] = 0;
        v81[38412] = 1;
      }

      goto LABEL_166;
    }

    if (v23 != 4)
    {
      if (v23 != 5)
      {
        if (v23 != 6)
        {
LABEL_34:
          EvCrt_Illegal_Default("ST_Get_GPS_Orbit", 0x700u);
          goto LABEL_133;
        }

        goto LABEL_133;
      }

      v52 = 0;
      *&v165 = 0;
      *(&v165 + 1) = 0x6300000000000000;
      *&v166[8] = 0;
      *v166 = 0;
      memset(&v166[16], 0, 64);
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
      *&v155 = 0;
      *(&v155 + 1) = 0x6300000000000000;
      *&v156[8] = 0;
      *v156 = 0;
      memset(&v156[16], 0, 64);
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0;
      v46 = v133;
      if (*(a8[1069] + v133) == 1)
      {
        Get_GPS_Kep_Ephemeris(5, v21, a8 + 108 * v133 + 8608, &v165);
        v53 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v165);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v53, &v165))
        {
          v52 = 1;
        }

        else
        {
          v52 = 0;
          *(a8[1069] + v133) = 0;
        }
      }

      if (*(a8[1070] + v133) == 1)
      {
        v128 = v52;
        Get_GPS_Kep_Ephemeris(v138, v22, a8 + 108 * v133 + 9688, &v155);
        v55 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v155);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v55, &v155))
        {
          if (v128 && SHIBYTE(v155) > SHIBYTE(v165))
          {
            v56 = &v165;
            if (ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v165, &v155, 1))
            {
              v51 = 0;
LABEL_92:
              v64 = v56[11];
              v151 = v56[10];
              v152 = v64;
              v153 = v56[12];
              v154 = *(v56 + 26);
              v65 = v56[7];
              v147 = v56[6];
              v148 = v65;
              v66 = v56[9];
              v149 = v56[8];
              v150 = v66;
              v67 = v56[3];
              v143 = v56[2];
              v144 = v67;
              v68 = v56[5];
              v145 = v56[4];
              v146 = v68;
              v69 = v56[1];
              v141 = *v56;
              v142 = v69;
              v54 = 1;
              v63 = a8[1073];
              goto LABEL_93;
            }

            *(v129 + v20) = 0;
            v51 = 1;
            *(a8 + v20 + 38234) = 1;
          }

          else
          {
            v51 = 1;
          }

          v56 = &v155;
          goto LABEL_92;
        }

        *(a8[1070] + v133) = 0;
        LOBYTE(v52) = v128;
      }

      v54 = 0;
      if ((v52 & 1) == 0)
      {
        goto LABEL_132;
      }

      v51 = 0;
      v56 = &v165;
      goto LABEL_92;
    }

    v38 = *(a8[3058] + v133);
    v39 = *(a8[3059] + v133);
    *&v139[7] = 0;
    *v139 = 0;
    memset(&v139[16], 0, 168);
    if (v38 == 1 && v39)
    {
      v40 = a8 + 100 * v133;
      v41 = 28220;
      v42 = (v40 + 28220);
      if (v40[28241] <= v40[24541])
      {
        v126 = v133;
        v118 = 0;
        v123 = 1;
        goto LABEL_68;
      }

      v165 = 0uLL;
      *&v166[8] = 0;
      *v166 = 0;
      memset(&v166[16], 0, 64);
      v167 = 0uLL;
      v168 = 0uLL;
      v169 = 0uLL;
      v170 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v173 = 0uLL;
      v174 = 0;
      v155 = 0uLL;
      *&v156[8] = 0;
      *v156 = 0;
      memset(&v156[16], 0, 64);
      v157 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v163 = 0uLL;
      v164 = 0;
      BDS_EphInt2Real((v40 + 24520), v139);
      BDS_EphReal2Kep(v139, &v165);
      v43 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v165);
      v122 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v43, &v165);
      if (!v122)
      {
        *(a8[3058] + v133) = 0;
      }

      BDS_EphInt2Real(v42, v139);
      BDS_EphReal2Kep(v139, &v155);
      v44 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v155);
      if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v44, &v155))
      {
        *(a8[3059] + v133) = 0;
        if (!v122)
        {
          goto LABEL_119;
        }

        v126 = v133;
LABEL_102:
        v123 = 0;
        v39 = 0;
        goto LABEL_103;
      }

      v126 = v133;
      if (v122)
      {
        v39 = 1;
        if (!ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v165, &v155, 1))
        {
          v118 = 0;
          *(v129 + v20) = 0;
          v123 = 1;
          *(a8 + v20 + 38234) = 1;
          v41 = 28220;
          goto LABEL_104;
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (v38)
      {
        v126 = v133;
        v123 = 0;
LABEL_103:
        v118 = 1;
        v41 = 24520;
LABEL_104:
        BDS_EphInt2Real(a8 + 100 * v126 + v41, v139);
        *(a8[3062] + v126) = v123;
        BDS_EphReal2Kep(v139, &v141);
        v71 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v141);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(BDS)", v71, &v141))
        {
          v54 = 1;
          goto LABEL_132;
        }

        if (v118)
        {
          *(a8[3058] + v126) = 0;
        }

        if (v39)
        {
          v54 = 0;
          *(a8[3059] + v126) = 0;
          goto LABEL_132;
        }

        goto LABEL_119;
      }

      if (!v39)
      {
        goto LABEL_119;
      }

      v126 = v133;
    }

    v118 = 0;
    v123 = 1;
    v41 = 28220;
LABEL_68:
    v39 = 1;
    goto LABEL_104;
  }

LABEL_255:
  v108 = *MEMORY[0x29EDCA608];
}

void GPS_State_Update(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v92 = *MEMORY[0x29EDCA608];
  if (!ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    goto LABEL_103;
  }

  v75 = a5;
  *a2 = 0;
  if (!*(a1 + 306))
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 4);
  v14 = v13 - *a1;
  *a2 = v14;
  v15 = *(a2 + 8);
  if (v15 != *(a1 + 4))
  {
    if (*(a1 + 4) + 1 != v15)
    {
LABEL_7:
      v16 = *MEMORY[0x29EDCA608];

      GPS_State_Update_Init(a1, a2, a3, a4, a6, a7, a8);
      return;
    }

    v14 += 604800;
    *a2 = v14;
  }

  if ((v14 - 101) < 0xFFFFFF91)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v76 = a1 + 6;
  *(a1 + 4) = v15;
  v18 = a4 + 39303;
  *a1 = v13;
  v19 = a4 + 4668;
  v71 = a4 + 37700;
  v20 = a4 + 33605;
  v73 = a6 + 253;
  v21 = a8 + 46;
  do
  {
    if (v18[v17] == 1 && *v21)
    {
      v22 = Num_Pos_Idx_To_Num_Prn_Idx(v17);
      v23 = a1 + 2 * v17;
      if (((*(v19 + v22) & 1) != 0 || (*(a4 + v22 + 37522) & 1) != 0 || v71[v22] == 1) && v20[v22] == 1 && (*(v73 + v22) & 1) == 0)
      {
        v24 = (*(v23 + 6) + *a2);
        *(v23 + 6) += *a2;
        if (v24 > 450)
        {
          goto LABEL_7;
        }
      }

      else
      {
        *v21 = 0;
        *(v23 + 6) = 0;
      }
    }

    ++v17;
    v21 += 48;
  }

  while (v17 != 149);
  v25 = 0;
  v26 = 0;
  v27 = a8 + 46;
  memset(v91, 0, 149);
  do
  {
    *(v91 + v25) = 0;
    if (v18[v25] != 1)
    {
      goto LABEL_45;
    }

    v28 = Get_Constell_Pos(v25) - 1;
    if (v28 >= 7)
    {
      v30 = 0;
      v29 = v25;
    }

    else
    {
      v29 = v25 - Num_Pos[v28];
      v30 = Num_Prn[v28];
    }

    v31 = v30 + v29;
    if (!*v27)
    {
      v34 = 1;
      goto LABEL_34;
    }

    if (*v27 != 1)
    {
      if (*(a1 + 2 * v25 + 6) > 60)
      {
        goto LABEL_44;
      }

      v34 = 0;
LABEL_34:
      if (((*(v19 + v31) & 1) != 0 || *(a4 + v31 + 37522) == 1) && v20[v31] == 1 && !*(v73 + v31) || v34 && v71[v31] == 1 && v20[v31] == 1 && (*(v73 + v31) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    v32 = *(v75 + v31);
    v33 = *(a1 + 2 * v25 + 6);
    if (v32 < -2)
    {
      if (v33 <= 60)
      {
        goto LABEL_45;
      }

LABEL_44:
      *(v91 + v25) = 1;
      ++v26;
      goto LABEL_45;
    }

    if (v33 > 5)
    {
      goto LABEL_44;
    }

LABEL_45:
    ++v25;
    v27 += 48;
  }

  while (v25 != 149);
  if (v26 == 1)
  {
    goto LABEL_90;
  }

  if (v26)
  {
    EvLog_d("SV_State_Update: Immediate Updates = ", v26);
LABEL_90:
    v58 = 0;
    do
    {
      v59 = v58;
      if (*(v91 + v58) == 1)
      {
        *&v90[24] = 0;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        memset(v90, 0, 21);
        ST_Update_Table(v58, 15, 60, &v80, a2, a1, a6, a4, a7);
        if (*(a2 + 12))
        {
          *(a1 + 306) = 1;
        }

        else
        {
          *&v90[24] = 0;
          *(v76 + 2 * v59) = 0;
        }

        v60 = v89;
        v61 = &a8[12 * v59];
        v61[8] = v88;
        v61[9] = v60;
        v62 = *&v90[16];
        v61[10] = *v90;
        v61[11] = v62;
        v63 = v85;
        v61[4] = v84;
        v61[5] = v63;
        v64 = v87;
        v61[6] = v86;
        v61[7] = v64;
        v65 = v81;
        *v61 = v80;
        v61[1] = v65;
        v66 = v83;
        --v26;
        v61[2] = v82;
        v61[3] = v66;
      }

      v58 = v59 + 1;
    }

    while (v26);
    goto LABEL_97;
  }

  v35 = 0;
  v36 = *(v75 + 534);
  v37 = a8 + 184;
  v38 = 15;
  v72 = 20;
  v74 = 90;
  v70 = 5;
  v39 = -1;
LABEL_49:
  v40 = &v37[192 * v35];
  do
  {
    Constell_Pos = Get_Constell_Pos(v35);
    v43 = *v40;
    v40 += 192;
    v42 = v43;
    if (v43 && v18[v35] == 1)
    {
      if (!v36 || ((v44 = Constell_Pos - 1, (Constell_Pos - 1) >= 7) ? (v46 = 0, v45 = v35) : (v45 = v35 - Num_Pos[v44], v46 = Num_Prn[v44]), (v47 = *(v75 + v46 + v45), v47 > -3) || v47 == -99))
      {
        v48 = *(v76 + 2 * v35);
        if (v48 >= 0)
        {
          v49 = *(v76 + 2 * v35);
        }

        else
        {
          v49 = -v48;
        }

        if (v42 == 1)
        {
          if (v49 <= v72)
          {
            if (v38 >= 8 && v48 > v70)
            {
              v39 = v35;
              v38 = 8;
              v70 = *(v76 + 2 * v35);
              v52 = v35++ == 148;
              v37 = a8 + 184;
              if (!v52)
              {
                goto LABEL_49;
              }

              v39 = 148;
              goto LABEL_80;
            }
          }

          else
          {
            v38 = 5;
            v72 = v49;
            v39 = v35;
          }
        }

        else if (v42 == 2 && v38 >= 6)
        {
          v50 = v74;
          v51 = v49 > v74;
          if (v49 > v74)
          {
            v38 = 6;
            v50 = v49;
          }

          v74 = v50;
          if (v51)
          {
            v39 = v35;
          }
        }
      }
    }

    ++v35;
  }

  while (v35 != 149);
  if (v38 < 8)
  {
    goto LABEL_88;
  }

LABEL_80:
  v53 = 0;
  v54 = a8 + 46;
  v55 = 90;
  do
  {
    v56 = *v54;
    v54 += 48;
    if (v56 && v18[v53] == 1)
    {
      v57 = *(v76 + 2 * v53);
      if (v57 < 0)
      {
        v57 = -v57;
      }

      if (v57 > v55)
      {
        v55 = v57;
        v39 = v53;
      }
    }

    ++v53;
  }

  while (v53 != 149);
LABEL_88:
  if ((v39 & 0x80000000) == 0)
  {
    v26 = 1;
    *(v91 + v39) = 1;
    goto LABEL_90;
  }

LABEL_97:
  v67 = 0;
  *(a1 + 306) = 0;
  v68 = a8 + 46;
  while (v18[v67] != 1 || !*v68)
  {
    ++v67;
    v68 += 48;
    if (v67 == 149)
    {
      goto LABEL_103;
    }
  }

  *(a1 + 306) = 1;
LABEL_103:
  v69 = *MEMORY[0x29EDCA608];
}

BOOL ST_Cross_Check_SVRS_vs_SVRS(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 16);
  v3 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v5 = *v2--;
    v3 = v3 + v5 * v5;
  }

  v6 = (*(a1 + 104) - *(a2 + 104)) * 2.99792458e11;
  v7 = (a2 + 16);
  v8 = 0.0;
  for (j = 4; j > 1; --j)
  {
    v10 = *v7--;
    v8 = v8 + v10 * v10;
  }

  v11 = (*(a1 + 96) - *(a2 + 96)) * 299792458.0;
  v12 = 0.0;
  v13 = 2;
  v14 = sqrt(v8);
  do
  {
    v15 = *(a1 + 8 * v13) - *(a2 + 8 * v13);
    v12 = v12 + v15 * v15;
    v16 = v13-- + 1;
  }

  while (v16 > 1);
  v17 = sqrt(v3) - v14;
  v18 = 0.0;
  v19 = 5;
  do
  {
    v20 = *(a1 + 8 * v19) - *(a2 + 8 * v19);
    v18 = v18 + v20 * v20;
    v21 = v19 - 2;
    --v19;
  }

  while (v21 > 1);
  v22 = sqrt(v12);
  v23 = sqrt(v18) * 1000.0;
  v24 = *(a1 + 112);
  v25 = *(a2 + 112);
  v26 = sqrt(v24 + v25) * 5.0;
  v27 = fabs(v11) <= v26;
  if (fabs(v6) > v26 * 0.05)
  {
    v27 = 0;
  }

  if (fabs(v17) > v26)
  {
    v27 = 0;
  }

  if (v22 > v26 * 10.0)
  {
    v27 = 0;
  }

  v28 = v23 <= v26 * 5.0 && v27;
  if (v28)
  {
    if (g_Enable_Event_Log >= 4u)
    {
      v29 = *(a1 + 184);
      if (v29 > 2)
      {
        v30 = 120;
      }

      else
      {
        v30 = *&asc_29975D220[4 * v29];
      }

      v37 = *(a2 + 184);
      if (v37 > 2)
      {
        v38 = 120;
      }

      else
      {
        v38 = *&asc_29975D220[4 * v37];
      }

      v39 = *(a1 + 176);
      if (v39 > 6)
      {
        v40 = 42;
      }

      else
      {
        v40 = *&aX_1[4 * v39];
      }

      EvLog_v("ST_Cross_Check_SVRS:  %c vs %c  PASS:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v30, v38, *(a1 + 160), v40, *(a1 + 180), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
    }
  }

  else
  {
    v31 = *(a1 + 184);
    if (v31 > 2)
    {
      v32 = 120;
    }

    else
    {
      v32 = *&asc_29975D220[4 * v31];
    }

    v33 = *(a2 + 184);
    if (v33 > 2)
    {
      v34 = 120;
    }

    else
    {
      v34 = *&asc_29975D220[4 * v33];
    }

    v35 = *(a1 + 176);
    if (v35 > 6)
    {
      v36 = 42;
    }

    else
    {
      v36 = *&aX_1[4 * v35];
    }

    EvCrt_v("ST_Cross_Check_SVRS:  %c vs %c  FAIL:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v32, v34, *(a1 + 160), v36, *(a1 + 180), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
  }

  v41 = *MEMORY[0x29EDCA608];
  return v28;
}

BOOL ST_Check_Alm_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = *(a3 + 8);
    if (v5 <= 6)
    {
      v6 = *&aX_1[4 * v5];
    }

    v7 = 1;
    v8 = *(a3 + 12);
    while ((v7 & a2) == 0)
    {
LABEL_29:
      v10 = v7 >= 0x8000;
      v7 *= 2;
      if (v10)
      {
        goto LABEL_31;
      }
    }

    if (v7 > 0xFu)
    {
      if (v7 > 0x3Fu)
      {
        if (v7 == 64)
        {
          v9 = *(a3 + 56);
          goto LABEL_26;
        }

        if (v7 == 128)
        {
          v9 = *(a3 + 56);
          goto LABEL_26;
        }
      }

      else
      {
        if (v7 == 16)
        {
          v9 = *(a3 + 40);
          goto LABEL_26;
        }

        if (v7 == 32)
        {
          v9 = *(a3 + 40);
          goto LABEL_26;
        }
      }
    }

    else if (v7 > 3u)
    {
      if (v7 == 4)
      {
        v9 = *(a3 + 72);
        goto LABEL_26;
      }

      if (v7 == 8)
      {
        v9 = *(a3 + 72);
        goto LABEL_26;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v9 = *(a3 + 20);
        goto LABEL_26;
      }

      if (v7 == 2)
      {
        v9 = *(a3 + 20);
        goto LABEL_26;
      }
    }

    EvCrt_Illegal_Default("ST_Check_Alm_Kep_Err", 0xAD7u);
    v9 = 0.0;
LABEL_26:
    if (fabs(v9) >= 0.000001)
    {
      EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %g");
    }

    else
    {
      EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %e");
    }

    goto LABEL_29;
  }

LABEL_31:
  result = a2 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ST_Check_Eph_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = *(a3 + 8);
    if (v5 <= 6)
    {
      v6 = *&aX_1[4 * v5];
    }

    v7 = 1;
    v8 = *(a3 + 12);
    while ((v7 & a2) == 0)
    {
LABEL_37:
      v10 = v7 >= 0x8000;
      v7 *= 2;
      if (v10)
      {
        goto LABEL_39;
      }
    }

    if (v7 > 0x3Fu)
    {
      if (v7 > 0x1FFu)
      {
        switch(v7)
        {
          case 0x200u:
            v9 = *(a3 + 200);
            goto LABEL_34;
          case 0x400u:
            v9 = *(a3 + 208);
            goto LABEL_34;
          case 0x800u:
            v9 = *(a3 + 208);
            goto LABEL_34;
        }
      }

      else
      {
        switch(v7)
        {
          case 0x40u:
            v9 = *(a3 + 168);
            goto LABEL_34;
          case 0x80u:
            v9 = *(a3 + 168);
            goto LABEL_34;
          case 0x100u:
            v9 = *(a3 + 200);
            goto LABEL_34;
        }
      }
    }

    else if (v7 > 7u)
    {
      switch(v7)
      {
        case 8u:
          v9 = *(a3 + 20);
          goto LABEL_34;
        case 0x10u:
          v9 = *(a3 + 24);
          goto LABEL_34;
        case 0x20u:
          v9 = *(a3 + 24);
          goto LABEL_34;
      }
    }

    else
    {
      switch(v7)
      {
        case 1u:
          v9 = *(a3 + 20);
          goto LABEL_34;
        case 2u:
          v9 = *(a3 + 20);
          goto LABEL_34;
        case 4u:
          v9 = *(a3 + 20);
          goto LABEL_34;
      }
    }

    EvCrt_Illegal_Default("ST_Check_Eph_Kep_Err", 0xB1Du);
    v9 = 0.0;
LABEL_34:
    if (fabs(v9) >= 0.000001)
    {
      EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %g");
    }

    else
    {
      EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %e");
    }

    goto LABEL_37;
  }

LABEL_39:
  result = a2 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ST_Cross_Check_Eph_Kep_vs_Eph_Kep(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (*(a3 + 8) == 4 && *(a3 + 12) <= 5u)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, a1, a2, a3, v14);
  }

  else
  {
    Kep_Calc_SV_Ref_State(1, a1, a2, a3, v14);
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (*(a3 + 8) == 4 && a5 == 1 && *(a3 + 12) <= 5u)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, a1, a2, a4, v12);
  }

  else
  {
    Kep_Calc_SV_Ref_State(a5, a1, a2, a4, v12);
  }

  result = ST_Cross_Check_SVRS_vs_SVRS(v14, v12);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ST_Get_SNR_Levels(uint64_t a1, int a2, unsigned __int8 *a3, _WORD *a4)
{
  v4 = 0;
  v5 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  *a4 = 0;
  v7 = (a1 + 1160);
  v8 = (a1 + 1352);
  v9 = 48;
  do
  {
    if (*(v7 - 192) != a2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 - 190);
    if (v10 == *a3 && *v7 > 3)
    {
      v4 = 1;
      v11 = a4;
LABEL_9:
      *v11 = *v8;
      goto LABEL_10;
    }

    if (v10 == a3[1] && *v7 >= 4)
    {
      v5 = 1;
      v11 = a4 + 1;
      goto LABEL_9;
    }

LABEL_10:
    ++v8;
    ++v7;
    --v9;
  }

  while (v9);
  v12 = *MEMORY[0x29EDCA608];
  return (v6 == *(a1 + 32)) & v4 & v5;
}

uint64_t GM_Get_Best_SyncSV(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v42 = *MEMORY[0x29EDCA608];
  *a6 = -1;
  *a7 = -1;
  memset(v41, 0, sizeof(v41));
  memset(v39, 0, sizeof(v39));
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v40[0] = v9;
  v40[1] = v9;
  v40[2] = v9;
  v40[3] = v9;
  v40[4] = v9;
  v40[5] = v9;
  memset(v38, 0, sizeof(v38));
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v11 = a2 + 36 * i;
      v12 = *v11;
      if (Is_Legal(*v11) && (~*(v11 + 8) & 0x208) == 0)
      {
        v13 = a3 + 48 * i;
        if (*(v13 + 4) == 1 && *(v13 + 15) == 1)
        {
          v14 = (a1 + 56 * i);
          v15 = *v14;
          v16 = *(v13 + 28);
          if (v12 == 2)
          {
            v16 %= 57600;
            v15 %= 57600;
          }

          v17 = 0;
          v18 = v14[1] - *(v13 + 32) + 1534500 * (v15 - v16);
          if (v18 < 0)
          {
            v19 = -511;
          }

          else
          {
            v19 = 511;
          }

          v20 = (v19 + v18) / 1023;
          *(v38 + i) = 1;
          *(v39 + i) = v20;
          while (*(v41 + v17) != v20)
          {
            if (++v17 == 48)
            {
              goto LABEL_18;
            }
          }

          if (v17 < 0x30)
          {
            v21 = *(v40 + v17);
            if (v21 != 0xFFFF)
            {
              v22 = v21 + 1;
              goto LABEL_25;
            }
          }

LABEL_18:
          v17 = 0;
          while (*(v40 + v17) != -1)
          {
            if (++v17 == 48)
            {
              goto LABEL_26;
            }
          }

          if (v17 <= 0x2F)
          {
            *(v41 + v17) = v20;
            v22 = 1;
LABEL_25:
            *(v40 + v17) = v22;
          }
        }
      }

LABEL_26:
      ;
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = 0x8000;
  do
  {
    if (*(v40 + v23) > v25)
    {
      v25 = *(v40 + v23);
      v24 = v23;
    }

    ++v23;
  }

  while (v23 != 48);
  if (a5 && v25 >= 1 && v24 <= 0x2F)
  {
    v26 = 0;
    v27 = (a2 + 8);
    while (1)
    {
      if (*a6 != -1 || *a7 != -1 || *(v38 + v26) != 1 || *(v39 + v26) != *(v41 + v24))
      {
        goto LABEL_43;
      }

      v28 = *v27 & 0x300;
      v29 = a6;
      if (v28 == 768)
      {
        goto LABEL_42;
      }

      if (v28 == 512)
      {
        break;
      }

LABEL_43:
      ++v26;
      v27 += 18;
      if (a5 == v26)
      {
        goto LABEL_44;
      }
    }

    v29 = a7;
LABEL_42:
    *v29 = v26;
    goto LABEL_43;
  }

LABEL_44:
  result = *a6;
  if (result != -1 || (result = GM_Get_Best_SSS(a2, a3, a4, a5), *a6 = result, result != -1))
  {
    if (*(a3 + 48 * result + 4))
    {
      goto LABEL_47;
    }
  }

  Best_ASSS = *a7;
  if (*a7 == -1)
  {
    Best_ASSS = GM_Get_Best_ASSS(a2, a3, a4, a5);
    *a7 = Best_ASSS;
    result = *a6;
  }

  if (Best_ASSS < 0 && (result & 0x80000000) == 0)
  {
    *a7 = result;
    Best_ASSS = result;
    result = *a6;
  }

  if (result != -1 && (*(a3 + 48 * result + 4) & 1) == 0 && Best_ASSS != result && (*(a3 + 48 * Best_ASSS + 4) & 1) == 0)
  {
LABEL_47:
    *a7 = result;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Init_DB_Time_Sync_NV(int *a1, int *a2, _DWORD *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v45 = 0;
  v44 = 0;
  v42 = 0.0;
  v43 = 0.0;
  v41 = 0;
  v39 = 0.0;
  *v37 = 0;
  *v38 = 0;
  *v35 = 0;
  *v36 = 0;
  v34 = 0;
  v5 = *a1;
  v6 = a1[4];
  if (Core_Load_ApxTime(v6, &v44, &v43, &v45))
  {
    v7 = v45;
    a2[22] = v45;
    v8 = v44;
    *(a2 + 46) = -v44;
    v9 = v43;
    a2[24] = (v43 * 1000.0);
    if (v8 >= 1025 && v7 > *a2)
    {
      *a2 = v7;
      *(a2 + 5) = 1;
      *(a2 + 3) = v9;
      *(a2 + 8) = v8;
      EvLog_v("Init_DBts_NV: ApxG %u %d %g %d", v6, v8, v9, v7);
      v10 = *a2;
      if ((*a2 - 4) <= 4)
      {
        v11 = *(a2 + 3) * 1000.0;
        v12 = -0.5;
        if (v11 > 0.0)
        {
          v12 = 0.5;
        }

        v13 = v11 + v12;
        if (v13 <= 2147483650.0)
        {
          if (v13 >= -2147483650.0)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0x80000000;
          }
        }

        else
        {
          v14 = 0x7FFFFFFF;
        }

        v15 = a2[2];
        v16 = a2[3];
        v17 = v14 - v15;
        LODWORD(v27) = 0;
        LOBYTE(v40) = 0;
        if (Core_Load_TTick_Cal(v15, v16, v14 - v15, &v27, &v40))
        {
          v18 = LOBYTE(v40);
          v19 = LOBYTE(v40) >= 0x5Au ? 6 : 7;
          v20 = LOBYTE(v40) >= 0x1Eu ? v19 : 8;
          if (v20 >= v10)
          {
            v21 = LODWORD(v27);
            Inc_GPS_TOW(SLODWORD(v27) * 0.001, a2 + 3, a2 + 8);
            *a2 = v20;
            EvLog_v("Init_DBts_NV: Calib %d %g %d %d", v21, *(a2 + 3), v17, v18);
          }
        }
      }

      LODWORD(v40) = 0;
      v33 = 0;
      v27 = 0.0;
      API_Get_UTC_Cor(1, &v27);
      GPS_To_Glon_Time(0, *(a2 + 8), *(a2 + 3), v27, &v33, &v40, a2 + 9);
      v22 = LOWORD(v40);
      *(a2 + 34) = LOWORD(v40);
      v23 = v33;
      *(a2 + 33) = v33;
      *(a2 + 64) = 1;
      v24 = *a2;
      a2[15] = *a2;
      EvLog_v("Init_DBts_NV: Glon %d %d %g %d", v23, v22, *(a2 + 9), v24);
      *(a2 + 46) = -*(a2 + 46);
    }
  }

  v40 = 0.0;
  *a3 = v5;
  a3[1] = v6;
  if (Core_Get_Ref_Time(v6, &v42, &v41, &v40))
  {
    result = API_Set_Ref_Time(v6, v42, v41, v40);
  }

  else if (Core_Get_Glon_Ref_Time(v6, v38, &v38[1], &v39, &v40))
  {
    result = API_Set_Ref_Glon_Time(v6, v38[0], v38[1], v39, v40);
  }

  else
  {
    result = Core_Get_UTC_Ref_Time(v6, &v37[1], v37, &v36[1], v36, &v35[1], v35, &v34, &v40);
    if (result)
    {
      LOWORD(v27) = v37[1];
      WORD1(v27) = v37[0];
      WORD2(v27) = v36[1];
      HIWORD(v27) = v36[0];
      v28 = v35[1];
      v29 = v35[0];
      v30 = v34;
      v31 = (v40 * 1000.0);
      v32 = v6;
      result = API_Set_Ref_UTC_Time(&v27);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Crude_Apx_Pos(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v110 = *MEMORY[0x29EDCA608];
  v9 = (a3 + 27088);
  v10 = mach_continuous_time();
  v11 = *&g_MacClockTicksToMsRelation;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 1) = 0;
  *(v9 + 9) = 0;
  v12 = *v9;
  bzero(v107, 0x240uLL);
  memset(v105, 0, sizeof(v105));
  if (a4[3] > 2)
  {
    v74 = v12;
    v78 = v9;
    v75 = (a4 + 5748);
    v76 = (v11 * v10);
    if (*(a3 + 232) == 1 && *(a4 + 3) + 604800 * *(a4 + 9) - *(a3 + 264) > 60 || *(a3 + 8272) != 1 || (*(a3 + 8273) & 1) == 0)
    {
      *(a3 + 232) = 0;
    }

    v80 = a4;
    v77 = a3;
    v81 = 0;
    v13 = a1 + 76;
    v14 = a1 + 412;
    v15 = a1 + 268;
    v85 = a1 + 316;
    v82 = a1 + 1232;
    v83 = 0;
    memset(v108, 0, 48);
    v79 = a1 + 1616;
    v16 = 3;
    do
    {
      v17 = 0;
      v18 = v16;
      do
      {
        v19 = (v13 + 4 * v17);
        v20 = *v19;
        if (Is_Legal(*v19) && *(v14 + 4 * v17) >= 10 && *(v15 + v17) >= 0x40u)
        {
          v21 = *(v85 + 2 * v17 + 1) & 3;
          if (v18 == v21)
          {
            *&v103[24] = 0;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            memset(v103, 0, 21);
            v91 = 0;
            v92 = 0;
            memset(v86, 0, sizeof(v86));
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            memset(v90, 0, 30);
            if (v20 != 6)
            {
              v22 = (a2 + 192 * GNSS_Id_To_Num_Pos_Idx(v20));
              v23 = v22[9];
              v101 = v22[8];
              v102 = v23;
              v24 = v22[11];
              *v103 = v22[10];
              *&v103[16] = v24;
              v25 = v22[5];
              v97 = v22[4];
              v98 = v25;
              v26 = v22[7];
              v99 = v22[6];
              v100 = v26;
              v27 = v22[1];
              v93 = *v22;
              v94 = v27;
              v28 = v22[3];
              v95 = v22[2];
              v96 = v28;
              if ((*&v103[24] - 1) <= 1)
              {
                v29 = *(v82 + 8 * v17);
                if (v29 < 329771.704)
                {
                  v30 = *v19;
                  if (v30 <= 3)
                  {
                    if (v30 == 2)
                    {
                      v31 = 21884849.4;
                    }

                    else
                    {
                      v31 = 23084019.3;
                      if (v30 == 3)
                      {
                        v31 = 26081943.8;
                      }
                    }
                  }

                  else if (v30 == 4)
                  {
                    if ((*v19 & 0xFF0000u) <= 0xA0000)
                    {
                      v32 = 129;
                    }

                    else
                    {
                      v32 = 81;
                    }

                    v31 = v32 * 299792.458;
                  }

                  else if (v30 == 5 || (v31 = 23084019.3, v30 == 6))
                  {
                    v31 = 38673227.1;
                  }

                  v29 = v29 + v31;
                }

                if (Comp_CurrState(0x258u, *(v80 + 9), &v93, v86, v80[3], v29))
                {
                  *(v108 + v83) = v21;
                  v104[v83] = DWORD2(v90[1]);
                  v33 = &v107[12 * v83 + 8];
                  v34 = &v87;
                  for (i = 2; i != -1; --i)
                  {
                    v36 = *(v34 - 3);
                    if (v36 <= 0.0)
                    {
                      v37 = -0.5;
                    }

                    else
                    {
                      v37 = 0.5;
                    }

                    v38 = v36 + v37;
                    v39 = v38;
                    if (v38 < -2147483650.0)
                    {
                      v39 = 0x80000000;
                    }

                    if (v38 > 2147483650.0)
                    {
                      v39 = 0x7FFFFFFF;
                    }

                    *v33 = v39;
                    v40 = *v34 * 5.25503547;
                    if (v40 <= 0.0)
                    {
                      v41 = -0.5;
                    }

                    else
                    {
                      v41 = 0.5;
                    }

                    v42 = v40 + v41;
                    if (v42 <= 2147483650.0)
                    {
                      if (v42 >= -2147483650.0)
                      {
                        v43 = v42;
                      }

                      else
                      {
                        LOWORD(v43) = 0;
                      }
                    }

                    else
                    {
                      LOWORD(v43) = -1;
                    }

                    v106[3 * v83 + i] = v43;
                    --v34;
                    --v33;
                  }

                  *(v105 + v83) = *v19;
                  v44 = *(v82 + 8 * v17);
                  if (v21 <= 1)
                  {
                    v45 = *v19;
                    if ((*v19 & 0xFF0000u) <= 0xA0000)
                    {
                      v46 = 129;
                    }

                    else
                    {
                      v46 = 81;
                    }

                    if (v45 == 6)
                    {
                      v47 = 129;
                    }

                    else
                    {
                      v47 = 77;
                    }

                    if (v45 == 5)
                    {
                      v47 = 129;
                    }

                    if (v45 != 4)
                    {
                      v46 = v47;
                    }

                    if (v45 == 3)
                    {
                      v48 = 87;
                    }

                    else
                    {
                      v48 = 77;
                    }

                    if (v45 == 2)
                    {
                      v48 = 73;
                    }

                    if (*v19 <= 3u)
                    {
                      v46 = v48;
                    }

                    v44 = v44 + (v46 - (v44 * 0.00000333564095)) * 299792.458;
                  }

                  v49 = *&v88;
                  v50 = v44 + *(&v87 + 1) * 299792458.0;
                  if (v50 <= 0.0)
                  {
                    v51 = -0.5;
                  }

                  else
                  {
                    v51 = 0.5;
                  }

                  v52 = v50 + v51;
                  v53 = v52;
                  if (v52 < -2147483650.0)
                  {
                    v53 = 0x80000000;
                  }

                  if (v52 > 2147483650.0)
                  {
                    v53 = 0x7FFFFFFF;
                  }

                  v109[v83] = v53;
                  v54 = v49 * 1575420000.0 - *(v79 + 8 * v17);
                  if (v54 <= 0.0)
                  {
                    v55 = -0.5;
                  }

                  else
                  {
                    v55 = 0.5;
                  }

                  v56 = v54 + v55;
                  if (v56 <= 2147483650.0)
                  {
                    if (v56 >= -2147483650.0)
                    {
                      v57 = v56;
                    }

                    else
                    {
                      LOWORD(v57) = 0;
                    }
                  }

                  else
                  {
                    LOWORD(v57) = -1;
                  }

                  ++v81;
                  *(&v108[3] + v83++) = v57;
                }
              }
            }
          }
        }

        ++v17;
      }

      while (v17 != 48);
      v16 = v18 - 1;
    }

    while (v18);
    v78[1] = v81;
    v58 = v108[0];
    *(v78 + 1) = v108[0];
    if (v81 >= 3 && (v81 != 3 || (v58 & 0xFE00) != 0))
    {
      v59 = NK_Crude_Apx_Pos_Core(v107, v105, v106, v108, v104, v109);
      v60 = v59;
      v61 = vmovn_s64(vcvtq_n_s64_f64(*(a3 + 240), 0xFuLL));
      *(a3 + 27096) = v61;
      v78[16] = v59;
      *(v78 + 20) = v61;
      *(a3 + 264) = v80[3] + 604800 * *(v80 + 9);
      v62 = *v75 == 1 && (*(v75 + 2) - 3) < 2;
      v63 = v81 < 5 || v59;
      if ((v63 & 1) == 0)
      {
        ++*(a3 + 268);
      }

      v64 = !v59 && !v62 && *(a3 + 268) > 9u;
      if ((v59 || v64) && (v74 & 1) == 0)
      {
        v65 = v80[102];
        *(v77 + 256) = v65;
        *&v93 = 0;
        if (R8_EQ((v77 + 256), &v93) || v65 < -500.0 || v65 > 6000.0)
        {
          *(v77 + 256) = qword_29975D270[*(v77 + 20) < 5u];
        }

        *(v80 + 960) = v60;
        *(v77 + 232) = v60;
        if (Horiz_Diff_Sqd(v80 + 100, (v77 + 240)) <= 5625000000.0)
        {
          LOBYTE(v67) = *v75;
        }

        else
        {
          if (v60)
          {
            v66 = *(v77 + 240);
            v80[102] = *(v77 + 256);
            *(v80 + 50) = v66;
            Geo2ECEF((v80 + 100), &WGS84_Datum, v80 + 83);
          }

          v67 = *v75;
          if (((v62 | v67 ^ 1) & 1) == 0)
          {
            *(v80 + 58) = 0u;
            *(v80 + 59) = 0u;
            *(v80 + 57) = 0u;
            *(v80 + 43) = 0u;
            *(v80 + 44) = 0u;
            *(v80 + 45) = 0u;
            *(v80 + 46) = 0u;
            *(v80 + 47) = 0u;
            *(v80 + 767) = 0;
            *(v77 + 128) = 1;
            *(v77 + 132) = 35;
            if (v80[3086] < 30000.0 || v67)
            {
              for (j = 0; j != 48; ++j)
              {
                v69 = v85 + 4 * j;
                if (*(v69 + 96) >= 11 && (~*(v85 + 2 * j) & 0x300) != 0)
                {
                  *(v69 + 96) = 10;
                }
              }
            }
          }
        }

        if (!v62 && (v67 & 1) != 0)
        {
          if (v80[2880] >= 900000000.0 || Horiz_Diff_Sqd(v80 + 2877, (v77 + 240)) >= 5625000000.0)
          {
            if (v81 >= 5)
            {
              *v75 = 0;
              *(p_NA + 10) = 0;
              *(v75 + 508) = 21;
              EvLog_v("NK_Crude_Apx_Pos: CAP Discrepancy, Clearing Not Trusted Ext Ref Pos");
            }
          }

          else
          {
            v60 = 0;
          }
        }

        if (!v62 && v64)
        {
          *v75 = 0;
          *(p_NA + 10) = 0;
          *(v75 + 508) = 22;
          *(a5 + 16480) = 0x7F7F7F7F7F7F7F7FLL;
          *&v70 = 0x7F7F7F7F7F7F7F7FLL;
          *(&v70 + 1) = 0x7F7F7F7F7F7F7F7FLL;
          *(a5 + 16464) = v70;
          *(a5 + 16448) = v70;
          *(a5 + 16432) = v70;
          *(a5 + 16488) = 0u;
          *(a5 + 16504) = 0u;
          *(a5 + 16520) = 0u;
          *(a5 + 16536) = 0;
          EvLog_v("NK_Crude_Apx_Pos: CAP Repeated Fail, Clearing Not Trusted Ext Ref Pos & GLO Slot Number mapping");
        }
      }

      if (*(v77 + 232) == 1 && v60 && (v74 & 1) == 0)
      {
        *v75 = 1;
        v71 = *v80;
        *(v75 + 5) = *v80;
        *(v75 + 4) = 0x300000002;
        v80[2877] = *(v77 + 240);
        v80[2878] = *(v77 + 248);
        *(v80 + 1440) = vdupq_n_s64(0x41C9105220000000uLL);
        v80[2882] = 0.0;
        v80[2887] = 25.0;
        *(v75 + 3) = 2;
        v72 = dbl_29972AED0[*(v77 + 20) < 5u];
        if (v75[128] != 1 || v72 < v80[2894])
        {
          v75[128] = 1;
          *(v75 + 37) = v71;
          *(v75 + 132) = 0x300000002;
          v80[2893] = *(v77 + 256);
          v80[2894] = v72;
          v80[2897] = 25.0;
          *(v75 + 35) = 2;
        }
      }

      *(v78 + 1) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v76;
    }

    else
    {
      *(a3 + 232) = 0;
    }
  }

  else
  {
    *(a3 + 232) = 0;
  }

  v73 = *MEMORY[0x29EDCA608];
}