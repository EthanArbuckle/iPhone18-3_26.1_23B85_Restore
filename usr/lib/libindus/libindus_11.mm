void ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if (HalFactory_ComsPing(v6))
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 32, 1);
    v5 = 2;
    strcpy(__p, "NA");
    v2 = *(a1 + 88);
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v2 + 48))(v2, v6, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 32, 8);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_298FB70E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE64c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 32, a2 + 32);
  result = std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](a1 + 64, a2 + 64);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE64c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](a1 + 64);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 32);
}

void gnssTest::GnssAdaptDeviceTest::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v4 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a4, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNmeaHandler", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v6 = *MEMORY[0x29EDCA608];
  }
}

void gnssTest::GnssAdaptDeviceTest::setConfigTestContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a3, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigTestContext", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v5 = *MEMORY[0x29EDCA608];
  }
}

uint64_t newGnssDeviceTest(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    operator new();
  }

  v1 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_298FB764C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (a9.n128_u64[1])
  {
    (*(*a9.n128_u64[1] + 8))(a9.n128_u64[1]);
  }

  if (a9.n128_u64[0])
  {
    (*(*a9.n128_u64[0] + 8))(a9.n128_u64[0], a9);
  }

  if (a10.n128_u64[1])
  {
    (*(*a10.n128_u64[1] + 8))(a10.n128_u64[1]);
  }

  if (a10.n128_u64[0])
  {
    (*(*a10.n128_u64[0] + 8))(a10.n128_u64[0], a10);
  }

  MEMORY[0x29C296280](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t gnssTest::Device::getObjectVersionNumber(gnssTest::Device *this)
{
  v1 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return 2507;
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GM_Cross_Check_Meas_Aiding(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v50 = result + 0x4000;
  v3 = -4608;
  v51 = *MEMORY[0x29EDCA608];
  v4 = 11796;
  v5 = 18012;
  v6 = 11792;
  v7 = 11806;
  v8 = 11828;
  do
  {
    if (*(v1 + v4) != 1)
    {
      goto LABEL_56;
    }

    if (*(v1 + v5) < 10)
    {
      goto LABEL_56;
    }

    v9 = *(v1 + v7);
    if (v9 < 2)
    {
      goto LABEL_56;
    }

    v10 = v1 + v3;
    v11 = *(v1 + v3 + 4616);
    if ((~v11 & 0x300) == 0)
    {
      v12 = 1;
      v13 = 1;
      goto LABEL_12;
    }

    if ((v11 & 0x200) != 0)
    {
      v13 = 1;
LABEL_11:
      v12 = 3;
LABEL_12:
      if (v9 == 2)
      {
        result = v12 + 2;
      }

      else
      {
        result = v12;
      }

      goto LABEL_15;
    }

    v13 = 0;
    if ((v11 & 0x100) != 0)
    {
      goto LABEL_11;
    }

    result = 0x7FFFLL;
LABEL_15:
    v14 = v1 + v6;
    v15 = v1 + v2;
    if (v13)
    {
      v16 = *(v15 + 4608) - *(v14 + 28);
      v17 = v16 + 57600 * ((28800 - v16) / 0xE100u);
      if (v16 > -28801)
      {
        v17 = *(v15 + 4608) - *(v14 + 28);
      }

      if (v16 >= 28800)
      {
        v18 = (v16 + 28800) % 0xE100u - 28800;
      }

      else
      {
        v18 = v17;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v1 + v8);
    v20 = *(v14 + 32) - *(v50 + 1624);
    v21 = *(v15 + 4616);
    v48 = *(v15 + 4612);
    v49 = v20;
    v22 = v48 - v20;
    v23 = __OFSUB__(v21, v19);
    v25 = v21 - v19;
    v24 = (v25 < 0) ^ v23 | (v25 == 0);
    if (v25 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v25;
    }

    v27 = (655421 * (v26 + 3276)) >> 32;
    v28 = v27 & (v25 >> 31);
    if (v24)
    {
      v29 = -v28;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 + 10 * v22 + 15345000 * v18;
    if (v30 < 0)
    {
      v31 = -5115;
    }

    else
    {
      v31 = 5115;
    }

    v32 = (v31 + v30) / 10230;
    v47 = v13;
    if (!v13)
    {
      v32 %= 20;
    }

    v33 = v30 % 10230;
    v34 = v33 + 10230;
    if (v33 >= -5114)
    {
      v34 = v33;
    }

    if (v33 <= 5115)
    {
      v35 = v34;
    }

    else
    {
      v35 = v33 - 10230;
    }

    v36 = v32 + 20;
    if (v32 >= -9)
    {
      v36 = v32;
    }

    if (v32 <= 10)
    {
      v37 = v36;
    }

    else
    {
      v37 = v32 - 20;
    }

    if (v35 >= 0)
    {
      v38 = v35;
    }

    else
    {
      v38 = -v35;
    }

    if (v38 > *(v1 + v8 - 10))
    {
      v46 = result;
      v45 = *(v1 + v8 - 10);
      GNSS_SV_Str = Get_GNSS_SV_Str(*(v10 + 4608));
      EvLog_v("GMCCMA: PR MAX chips:  %s  dT %d  d_Chips %d (%d - %d)  SR %d", GNSS_SV_Str, *(v50 + 1592) - *(v1 + v6), v35, v48, v49, v45);
      result = v46;
      v10 = v1 + v3;
    }

    if (v37 >= 0)
    {
      v40 = v37;
    }

    else
    {
      v40 = -v37;
    }

    if (v40 > result && g_Logging_Cfg >= 4)
    {
      v42 = result;
      v43 = Get_GNSS_SV_Str(*(v10 + 4608));
      result = EvLog_v("GMCCMA: PR MAX ms:  %s  dT %d  d_ms %d (%d - %d)chips  Unc_ms %d  SF_Sync %d", v43, *(v50 + 1592) - *(v1 + v6), v37, v48, v49, v42, v47);
    }

LABEL_56:
    v2 += 56;
    v5 += 4;
    v6 += 48;
    v7 += 48;
    v8 += 48;
    v4 += 48;
    v3 += 36;
  }

  while (v3);
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_SV_PR_LvsE_Check(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *&v52[2526] = *MEMORY[0x29EDCA608];
  v4 = a4 + 6771;
  v5 = a4[6771];
  if (v5 >= 2 && *(a3 + 20) <= 3u && *(result + 60) >= 5)
  {
    v10 = a4 + 36579;
    v11 = a4 + 21675;
    bzero(v50, 0xA00uLL);
    v12 = 0;
    do
    {
      v13 = &v50[v12];
      v12 += 20;
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 15) = 0;
    }

    while (v12 != 2560);
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = a4 + 7080;
    v18 = (a3 + 1944);
    v19 = (a2 + 98);
    v20 = -1024;
    result = 1000;
    do
    {
      if (v17[v14] == 1 && a4[v14 + 57] == 1)
      {
        v21 = *&v17[v20 + 6016];
        if (fabs(v21) < 2000.0)
        {
          v22 = &v50[20 * v15];
          *v22 = v14;
          v22[1] = *v19 + 1000 * *(v19 - 2);
          if (v21 <= 0.0)
          {
            v23 = -0.5;
          }

          else
          {
            v23 = 0.5;
          }

          v24 = v21 + v23;
          if (v24 <= 2147483650.0)
          {
            if (v24 >= -2147483650.0)
            {
              v25 = v24;
            }

            else
            {
              LOWORD(v25) = 0;
            }
          }

          else
          {
            LOWORD(v25) = -1;
          }

          v22[2] = v25;
          v22[3] = vcvtd_n_s64_f64(*v18, 0xCuLL);
          v22[4] = vcvtd_n_s64_f64(v18[640], 0xCuLL);
          LODWORD(v15) = v15 + 1;
          v26 = *&v50[20 * v15 + 4];
          if (v26 < 0)
          {
            v26 = -v26;
          }

          if (v26 < 0x64)
          {
            ++v16;
          }
        }
      }

      ++v14;
      v18 += 5;
      v19 += 4;
      v20 += 8;
    }

    while (v20);
    if (v15 >= 2 && v16 >= v15 >> 1)
    {
      v27 = 0;
      v28 = v52;
      v29 = 1;
      result = 4294954430;
      v15 = v15;
      do
      {
        v30 = v27 + 1;
        if (v27 + 1 < v15)
        {
          v31 = &v50[20 * v27];
          v32 = v31[1];
          v33 = v28;
          v34 = v29;
          do
          {
            if (v32 != *(v33 - 6))
            {
              v35 = v31[3] - *(v33 - 4);
              v36 = v31[4] - *(v33 - 3);
              if (v36 > 12867)
              {
                v36 -= 25734;
              }

              if (v36 < -12866)
              {
                v36 += 25734;
              }

              if (v35 >= 0)
              {
                v37 = v31[3] - *(v33 - 4);
              }

              else
              {
                v37 = *(v33 - 4) - v31[3];
              }

              if (v36 >= 0)
              {
                v38 = v36;
              }

              else
              {
                v38 = -v36;
              }

              if (v37 <= 0x9C6 && v38 <= 0x9C6)
              {
                v39 = ((v31[2] - *(v33 - 5)) * (((4096 - ((v36 / 2 * (v36 / 2)) >> 13)) * (4096 - ((v35 / 2 * (v35 / 2)) >> 13))) >> 12)) >> 12;
                v31[7] += v39;
                ++v31[5];
                *v33 -= v39;
                ++*(v33 - 2);
                v40 = v27;
                if (v39 < -100 || (v40 = v34, v39 >= 101))
                {
                  ++*&v50[20 * v40 + 12];
                }
              }
            }

            ++v34;
            v33 += 10;
          }

          while (v15 != v34);
        }

        ++v29;
        v28 += 20;
        ++v27;
      }

      while (v30 != v15);
      v41 = 0;
      v42 = v51;
      v43 = v15;
      do
      {
        v44 = *(v42 - 4);
        if (*(v42 - 4))
        {
          v45 = *(v42 - 2) / v44;
          *(v42 - 1) = v45;
          if (v44 < 2 * *(v42 - 3) || v44 >= 3 && v45 <= -61)
          {
            *v42 = 1;
            ++v41;
          }
        }

        v42 += 20;
        --v43;
      }

      while (v43);
      if (v5 <= 2 * v41)
      {
        result = EvCrt_v("NK_SV_PR_Lvs_E_Check:  Warning:  Too many PR's look Late, %d out of %d, ignoring", v41, v5);
      }

      else
      {
        v46 = a4 + 21984;
        v47 = a4 + 36888;
        v48 = v51;
        do
        {
          if (*(v48 - 4) && *v48 == 1)
          {
            v49 = *(v48 - 9);
            v17[v49] = 0;
            *&a4[4 * v49 + 7336] = 1;
            ++v4[1];
            *v4 = --v5;
            if (v46[v49] == 1)
            {
              v46[v49] = 0;
              *&a4[4 * v49 + 22240] = 1;
              --*v11;
              ++v11[1];
            }

            result = v47[v49];
            if (result == 1)
            {
              v47[v49] = 0;
              *&a4[4 * v49 + 37144] = 1;
              --*v10;
              ++v10[1];
            }
          }

          v48 += 20;
          --v15;
        }

        while (v15);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLON_Calc_State_Table_Eph(__int16 a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v34 = *MEMORY[0x29EDCA608];
  v9 = *(a4 + 12) / 900;
  if (*(a5 + 176) == 1 && *(a5 + 166) == v9)
  {
    v10 = *(a5 + 168);
  }

  else
  {
    *(a5 + 175) = 0u;
    *(a5 + 144) = 0u;
    *(a5 + 160) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    *a5 = *(a4 + 24);
    *(a5 + 8) = *(a4 + 48);
    *(a5 + 16) = *(a4 + 72);
    *(a5 + 24) = *(a4 + 32);
    *(a5 + 32) = *(a4 + 56);
    *(a5 + 40) = *(a4 + 80);
    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 72) = 0;
    v10 = *(a4 + 12);
    *(a5 + 168) = v10;
    *(a5 + 172) = *(a4 + 126);
    *(a5 + 166) = v9;
    v11 = *(a4 + 4);
    *(a5 + 176) = 1;
    *(a5 + 180) = v11;
    *(a5 + 184) = 2;
    *(a5 + 188) = *(a4 + 20);
    *(a5 + 112) = gloURA_table[*(a4 + 125)];
  }

  v12 = 0;
  *v29 = 0;
  v30 = 0.0;
  v31[0] = a5;
  v31[1] = (a5 + 24);
  v32 = (a5 + 48);
  v33 = v10;
  v28 = 0.0;
  do
  {
    v13 = a3 - v33 + 86400;
    if (a3 - v33 >= -43200)
    {
      v13 = a3 - v33;
    }

    if (a3 - v33 <= 43199)
    {
      v14 = v13;
    }

    else
    {
      v14 = a3 - v33 - 86400;
    }

    if (v14 <= -120)
    {
      v15 = -120;
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 120)
    {
      v16 = 120;
    }

    else
    {
      v16 = v15;
    }

    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    if (v14)
    {
      GLON_RungeKutta4(v31, v16);
      ++v12;
    }

    else
    {
      GLON_RK_CalcAccel(v31, v32);
    }

    if (v16 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = -v16;
    }
  }

  while (v17 > 0x3C);
  *a6 += v12;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  API_Get_UTC_Cor(1, &v30);
  result = Glon_To_GPS_Time(*(a5 + 174), *(a5 + 172), *(a5 + 168), v30, &v29[1], v29, &v28);
  *(a5 + 160) = v28;
  *(a5 + 164) = LOWORD(v29[0]) + (LOWORD(v29[1]) << 10);
  v19 = a3 - *(a4 + 12);
  v20 = v19 + 86400;
  if (v19 >= -43200)
  {
    v20 = a3 - *(a4 + 12);
  }

  if (v19 <= 43199)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19 - 86400;
  }

  v22 = *(a4 + 104);
  *(a5 + 96) = -(*(a4 + 96) + v22 * v21);
  if ((v21 & 0x80000000) != 0)
  {
    v21 = -v21;
  }

  if (v21 >= 0x385)
  {
    v23 = v21 * 0.000277777778 * (v21 * 0.000277777778 * (v21 * 0.000277777778)) * 7.33333333 + v21 * 0.000277777778 * (v21 * 0.000277777778) * -2.0;
    *(a5 + 112) = gloURA_table[*(a4 + 125)] + v23 * v23;
  }

  *(a5 + 104) = v22;
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_TOW_Status(uint64_t result, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a2 + 60000) != 1 || (v2 = *(a2 + 60040), v2 > 900.0) || *(result + 27136) || *(a2 + 6771) || *(result + 136) != 1)
  {
    v7 = *(a2 + 61528);
    if (v7 >= *(a2 + 61536))
    {
      v7 = *(a2 + 61536);
    }

    v8 = *(a2 + 61544);
    if (v7 < v8)
    {
      v8 = v7;
    }

    v9 = *(result + 27136);
    if (v9 || (v10 = 0.0, *(a2 + 20) >= 9))
    {
      v10 = v8 * 1.11265006e-17;
    }

    if ((*(a2 + 24) & 1) == 0)
    {
      v10 = v10 + *(a2 + 61568) * 0.000001;
    }

    v11 = sqrt(v10);
    if (v11 <= 200.0)
    {
      v14 = v11 * 1000000.0;
      v15 = -0.5;
      if (v14 > 0.0)
      {
        v15 = 0.5;
      }

      v16 = v14 + v15;
      if (v16 <= 2147483650.0)
      {
        if (v16 >= -2147483650.0)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0x80000000;
        }
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      v17 = 11;
      while (g_TOW_Stat_Upgrade_us_Sigma_Table[v17] < v13)
      {
        if (--v17 <= 1u)
        {
          v12 = 1;
          goto LABEL_33;
        }
      }

      v12 = v17;
    }

    else
    {
      v12 = 0;
      v13 = 0x7FFFFFFF;
    }

LABEL_33:
    v18 = *(a2 + 20);
    if (v18 < v12)
    {
      v19 = *(a2 + 60072) == 1 && *(a2 + 60112) < 900000000.0;
      if (v12 == 11)
      {
        if ((*(result + 136) & 1) != 0 || *(a2 + 62096) > 30000.0 && !v19)
        {
          v12 = 9;
        }

        else
        {
          v12 = 11;
        }
      }

      *(a2 + 20) = v12;
      v18 = v12;
    }

    if (v9 && (*(result + 136) & 1) == 0)
    {
      v20 = 1;
      while (g_TOW_Stat_Degrade_us_Sigma_Table[v20] >= v13)
      {
        if (++v20 == 12)
        {
          LODWORD(v20) = 0;
          break;
        }
      }

      if (v18 != 11 || v13 <= 1700)
      {
        v22 = 11;
      }

      else
      {
        v22 = 10;
      }

      if (v13 < 3001)
      {
        LODWORD(v20) = v22;
      }

      if (v18 > v20)
      {
        *(a2 + 20) = v20;
        v18 = v20;
      }
    }
  }

  else
  {
    *(a2 + 1542) = *(a2 + 59982);
    v3 = *(a2 + 59984);
    v4 = -0.5;
    if (v3 * 1000.0 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 * 1000.0 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5 * 0.001;
      }

      else
      {
        v6 = -2147483.65;
      }
    }

    else
    {
      v6 = 2147483.65;
    }

    *(a2 + 1528) = v6;
    if (*(a2 + 60072) == 1)
    {
      *(a2 + 1632) = v6 - v3;
      *(a2 + 62032) = fmin(sqrt(*(a2 + 60112)), 9999000.0);
    }

    *(a2 + 62040) = fmin(sqrt(v2) * 299792.458, 9999000.0);
    if (v2 <= 0.0225)
    {
      v18 = 11;
    }

    else if (v2 <= 0.5625)
    {
      v18 = 10;
    }

    else if (v2 <= 9.0)
    {
      v18 = 9;
    }

    else if (v2 <= 100.0)
    {
      v18 = 8;
    }

    else
    {
      v18 = 7;
    }

    *(a2 + 20) = v18;
  }

  *(a2 + 1536) = v18;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Bit_Sync_Check(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 241) & 1) == 0 && *(a3 + 20) == 11 && *(a3 + 62096) < 149896.229)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 6771);
    v9 = a3 + 12072;
    v10 = a3 + 7080;
    v19 = a2 + 14208;
    v11 = a4 + 576;
    v12 = result + 1760;
    do
    {
      if (*(v10 + v7) == 1 && (~*&v6[2 * v7 + 992] & 0x300) == 0 && fabs(*(v9 + 8 * v7)) > 149896.229 && *(a3 + v7 + 57) == 1)
      {
        *(v10 + v7) = 0;
        *(v10 + 4 * v7 + 256) = 13;
        --*v8;
        ++*(a3 + 6772);
        *(v19 + v7) = 0;
        *(a4 + v7 + 448) = 11;
        *(v11 + 4 * v7) = *a3;
        GNSS_SV_Str = Get_GNSS_SV_Str(*&v6[4 * v7 + 96]);
        v14 = *(v9 + 8 * v7);
        if (v14 <= 0.0)
        {
          v15 = -0.5;
        }

        else
        {
          v15 = 0.5;
        }

        v16 = v14 + v15;
        if (v16 <= 2147483650.0)
        {
          if (v16 >= -2147483650.0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0x80000000;
          }
        }

        else
        {
          v17 = 0x7FFFFFFF;
        }

        result = EvCrt_v("ChanReset %d : NKBSC  %s  Exact_SF_Sync   PR_Res %d  SNR %d", v7, GNSS_SV_Str, v17, v12[v7]);
      }

      ++v7;
    }

    while (v7 != 128);
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Comp_ith_PR_Res(char *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v75[1] = *MEMORY[0x29EDCA608];
  v22 = a7 + 4096;
  v23 = a5 + 4 * result;
  v74 = result;
  v24 = result;
  v27 = *(v23 + 96);
  v26 = (v23 + 96);
  v25 = v27;
  v28 = 1632;
  if (v27 == 4)
  {
    v28 = 1648;
  }

  v34 = v25 == 2;
  v29 = 1640;
  if (!v34)
  {
    v29 = v28;
  }

  v30 = *(a7 + v29);
  v31 = *(v26 + 1);
  v32 = v31 > 0xF;
  v33 = (1 << v31) & 0xDD77;
  v34 = v32 || v33 == 0;
  if (v34)
  {
    v30 = v30 + *(a7 + 1656);
  }

  v35 = a8 + (v30 - *(a3 + 56)) * 299792458.0;
  v36 = a7 + 51608;
  *(a7 + 51608 + 8 * result) = v35;
  v37 = *(a3 + 72);
  v38 = a7 + 11048;
  *(a7 + 11048 + 8 * result) = v37;
  if (*(a7 + 6769))
  {
    v39 = 0.0;
    v40 = 0.01;
  }

  else
  {
    v41 = *(a6 + 1712);
    v40 = 0.0;
    v39 = 0.0;
    if (v41 > 0.0)
    {
      v42 = *(a6 + 1704);
      if (v42 == 2)
      {
        v50 = a4;
        result = Trop_Elev_MapF(a4);
        a4 = v50;
        v39 = v41 * v51;
        v40 = v41 * v51 * 0.15;
      }

      else if (v42 == 1)
      {
        v43 = *(a4 + 32);
        if (v43 <= 4.0)
        {
          v75[0] = 0.0;
          v52 = a4;
          v53 = R8_EQ((a4 + 16), v75);
          v48 = v52;
          v54 = 1.0;
          if (!v53)
          {
            v54 = 1.001 / sqrt(*(v52 + 8) * *(v52 + 8) + 0.002001);
          }

          v39 = v41 * v54;
        }

        else
        {
          v44 = *(a6 + 1720);
          v73 = a4;
          Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF((a6 + 1848), v43, a9, a10, a2);
          v46 = v44 * v45;
          v47 = *(a6 + 1728);
          Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF((a6 + 1848), *(v73 + 32), a10, a2);
          v48 = v73;
          v39 = v46 + v47 * v49;
        }

        v75[0] = 0.0;
        v55 = v48;
        result = R8_EQ((v48 + 16), v75);
        if (result)
        {
          v40 = 0.12;
        }

        else
        {
          v40 = 1.001 / sqrt(*(v55 + 8) * *(v55 + 8) + 0.002001) * 0.12;
        }

        a4 = v55;
      }

      v35 = v39 + *(v36 + 8 * v24);
      *(v36 + 8 * v24) = v35;
      v37 = *(v38 + 8 * v24);
    }
  }

  v56 = v37 + v40 * v40;
  *(v38 + 8 * v24) = v56;
  v57 = (a7 + 8 * v24);
  v57[9697] = v39;
  *(a7 + v24 + 6952) = 1;
  ++*(v22 + 2674);
  if (*(a7 + v24 + 6824) == 1)
  {
    v58 = v35 - *(a5 + 8 * v24 + 3424);
    *(a7 + 12072 + 8 * v24) = v58;
    v59 = *(a7 + 24 * v24 + 7976) + *(a7 + 24 * v24 + 7984);
    if (*(a7 + v24 + 2416) == 1)
    {
      v60 = v58 - v57[334];
      v61 = v59 + v57[462];
    }

    else
    {
      v62 = v56 + a12;
      *(v38 + 8 * v24) = v62;
      v61 = v62 + v59;
      v60 = v58 + a11;
    }

    *(a7 + 12072 + 8 * v24) = v60;
    *(a7 + 17448 + 8 * v24) = v61;
    if (*(a3 + 120) == 1)
    {
      *(a7 + v24 + 64008) = 1;
      v63 = -(a11 - *(a3 + 56) * 299792458.0);
      v57[9313] = v63;
      if (*(a6 + 1712) > 0.0)
      {
        v63 = v63 - v39;
      }

      v57[9313] = v63 + a13;
    }

    if (fabs(v60) < 600000000.0 && v61 < 600000000.0)
    {
      *(a7 + v24 + 7080) = 1;
      ++*(v22 + 2675);
    }

    v57[1765] = v60;
    v57[1637] = v60;
  }

  if ((*(a7 + 52632 + v24) & 1) == 0)
  {
    v64 = *(a6 + 18056 + 8 * v24);
    v65 = a11 - *(a6 + 19080 + 8 * v24);
    if (vabdd_f64(v39, v64) > 0.03)
    {
      v66 = v39 - v64;
      *(a7 + 52632 + v24) = 1;
      v67 = a4;
      GNSS_SV_Str = Get_GNSS_SV_Str(*v26);
      result = EvLog_v("NK_Comp_ith_PR_Res:  Tropo Delay Model Step, DR_Res inhibited:  %d  %s  El %d  dTropo  %f(%f - %f)", v74, GNSS_SV_Str, *v67, v66, v39, *(a6 + 18056 + 8 * v24));
      a4 = v67;
    }

    if (fabs(v65) > 0.03)
    {
      v69 = a4;
      v70 = Get_GNSS_SV_Str(*v26);
      result = EvLog_v("NK_Comp_ith_PR_Res:  Iono Delay Model Step:  %d  %s  El %d  dIono %f(%f - %f)", v74, v70, *v69, v65, a11, *(a6 + 19080 + 8 * v24));
    }
  }

  v71 = a6 + 8 * v24;
  *(v71 + 18056) = v39;
  *(v71 + 19080) = a11;
  v72 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_GPS_AS_SV_Config_Subframe(uint64_t result, unsigned __int8 *a2)
{
  v2 = 0;
  v6 = *MEMORY[0x29EDCA608];
  *a2 = *(result + 8) >> 12;
  a2[1] = *(result + 9) & 0xF;
  a2[2] = *(result + 8) >> 4;
  a2[3] = *(result + 8) & 0xF;
  v3 = result + 12;
  v4 = a2 + 9;
  do
  {
    *(v4 - 5) = (*(v3 + v2) >> 20) & 0xF;
    *(v4 - 4) = *(v3 + v2 + 2) & 0xF;
    *(v4 - 3) = *(v3 + v2) >> 12;
    *(v4 - 2) = *(v3 + v2 + 1) & 0xF;
    *(v4 - 1) = *(v3 + v2) >> 4;
    *v4 = *(v3 + v2) & 0xF;
    v4 += 6;
    v2 += 4;
  }

  while (v2 != 16);
  a2[28] = (*(result + 28) >> 20) & 0xF;
  a2[29] = *(result + 30) & 0xF;
  a2[30] = *(result + 28) >> 12;
  a2[31] = *(result + 29) & 0xF;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGLON_Set_Eph(unsigned int a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph"))
  {
    goto LABEL_4;
  }

  EvLog_d("GN_AGLON_Set_Eph: ", a1);
  if (a1 - 25 <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Eph: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
LABEL_4:
    v4 = 0;
    goto LABEL_18;
  }

  v5 = *(p_api + 48);
  if (*(v5 + 16) == 1 && *v5 >= 3)
  {
    v6 = *(v5 + 40) + 604800 * *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = p_NA;
  v8 = a1 - 1;
  v9 = p_NA + (v8 << 6) + 24272;
  if (*(a2 + 56))
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  *v9 = v6;
  *(v9 + 4) = v10;
  v11 = *(a2 + 4);
  if ((*(a2 + 4) - 7) < 0xF2u)
  {
    v11 = 2139062143;
  }

  *(v9 + 8) = v11;
  v12 = *(a2 + 40);
  v13 = *(a2 + 24);
  *(v9 + 12) = *(a2 + 8);
  *(v9 + 28) = v13;
  *(v9 + 44) = v12;
  *(v9 + 60) = 4095;
  if (*(a2 + 56))
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  *(v9 + 4) = v14;
  v4 = 1;
  *(v7 + v8 + 96) = 1;
  Debug_Log_GLO_Eph(1, a1, v9);
LABEL_18:
  v15 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_AGLON_Set_Alm(unsigned int a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Alm"))
  {
    goto LABEL_4;
  }

  EvLog_d("GN_AGLON_Set_Alm: ", a1);
  if (a1 - 25 <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Alm: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
LABEL_4:
    v4 = 0;
    goto LABEL_13;
  }

  v5 = *(p_api + 48);
  if (*(v5 + 16) == 1 && *v5 >= 3)
  {
    v6 = *(v5 + 40) + 604800 * *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = p_NA;
  v8 = a1 - 1;
  v9 = p_NA + 36 * v8 + 25808;
  *(p_NA + 36 * v8 + 25816) = *(a2 + 4);
  if (*(a2 + 32))
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  *v9 = v6;
  *(v9 + 4) = v10;
  v11 = *(a2 + 24);
  *(v9 + 12) = *(a2 + 8);
  *(v9 + 28) = v11;
  v4 = 1;
  *(v7 + v8 + 120) = 1;
  Debug_Log_GLO_Alm(1, a1, v9);
LABEL_13:
  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_AGLON_Set_Chan_Num(uint64_t a1, signed int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Chan_Num"))
  {
    goto LABEL_6;
  }

  EvLog_nd("GN_AGLON_Set_Chan_Num: ", 2, v4, a1, a2);
  if ((a1 - 25) <= 0xE7u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: SV = %d <%d or >%d, Out of range!");
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if ((a2 - 7) <= 0xF1u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: gloChanNum = %d <-7 or >+6, Out of range!");
    goto LABEL_6;
  }

  *(*(p_api + 56) + 4 * (a1 - 1) + 17328) = a2;
  v8 = p_NA;
  v9 = (a1 - 1);
  *(p_NA + (v9 << 6) + 24280) = a2;
  if ((*(v8 + 145) & 1) == 0)
  {
    *(v8 + 26708) = 0x7F7F7F7F7F7F7F7FLL;
    *(v8 + 26716) = 0x7F7F7F7F7F7F7F7FLL;
    *(v8 + 26700) = 0x7F7F7F7F7F7F7F7FLL;
  }

  v5 = 1;
  *(v8 + 145) = 1;
  *(v8 + v9 + 26700) = a2;
  Debug_Log_AGLON_ChanNum(a1, a2);
LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GN_AGLON_Set_Clk1(unsigned __int16 *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Clk1"))
  {
    goto LABEL_12;
  }

  v3 = *a1;
  if ((v3 - 1462) <= 0xFFFFFA4A)
  {
    v17 = *a1;
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloNA = %d <1 or >%d, Out of range!");
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v4 = *(a1 + 1);
  if ((v4 - 645) <= 0xFFFFFAF6)
  {
    v18 = *(a1 + 1);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauC = %d <-644 or >644, Unrealistic value!");
    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (v5 >= 0x20)
  {
    v19 = *(a1 + 8);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloN4 = %d >31, Out of range!");
    goto LABEL_12;
  }

  v6 = *(a1 + 3);
  if ((v6 - 0x200000) >> 22 != 1023)
  {
    v20 = *(a1 + 3);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-2^21 or >2^21, Out of range!");
    goto LABEL_12;
  }

  if ((v6 - 323) <= 0xFFFFFD7A)
  {
    v21 = *(a1 + 3);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-322 or >322, Unrealistic value!");
    goto LABEL_12;
  }

  v10 = *(p_api + 48);
  if (*(v10 + 16) == 1 && *v10 >= 3)
  {
    v11 = *(v10 + 40) + 604800 * *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = p_NA;
  v13 = p_NA + 24576;
  *(p_NA + 26672) = v11;
  *(v13 + 2104) = v3;
  *(v13 + 2108) = v4;
  *(v13 + 2112) = v5;
  *(v13 + 2116) = v6;
  v14 = *(a1 + 16);
  *(v13 + 2120) = v14;
  v15 = *(a1 + 17);
  if (*(a1 + 17))
  {
    v16 = 5;
  }

  else
  {
    v16 = 3;
  }

  *(v13 + 2100) = v16;
  v7 = 1;
  *(v12 + 144) = 1;
  EvLog_nd("GN_AGLON_Set_Clk1: ", 6, v2, v3, v4, v5, v6, v14, v15);
LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

void *NK_SV_Meas_IVar(void *result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double a6)
{
  v27 = a3;
  v9 = result;
  v10 = 0;
  v28[13] = *MEMORY[0x29EDCA608];
  v11 = a5 + 312;
  v12 = a5 + 440;
  v13 = a5 + 10680;
  v14 = a5 + 11704;
  v15 = a4 - 1;
  do
  {
    if (*(v11 + v10) == 1)
    {
      result = NK_Obs_Equ_SV(v9, *(v12 + v10), *(a2 + 4 * v10), (v27 + 56 * v10), v28, a6);
      v16 = *(v13 + 8 * v10) + *a4 * v28[0] * v28[0];
      v17 = 1;
      v18 = 2;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = v28[v19 - 1];
        v22 = v28;
        v23 = v18;
        v24 = v17;
        do
        {
          v25 = *v22++;
          v21 = v21 + v25 * v15[v23++];
          --v24;
        }

        while (v24);
        v20 += v19;
        v16 = v16 + v21 * v21 * v15[v20];
        v18 += v19;
        ++v17;
        ++v19;
      }

      while (v19 != 13);
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      *(v14 + 8 * v10) = v16;
    }

    ++v10;
  }

  while (v10 != 128);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf_1u(void *a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v4 = *MEMORY[0x29EDCA608];

    return sprintf_10u(a1, a2);
  }

  else
  {
    result = sprintf1da(a1, a2, v5, 0, 0);
    v3 = *MEMORY[0x29EDCA608];
  }

  return result;
}

char **sprintf_1X(char **a1, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = HIDWORD(a2);
  if (v4)
  {
    sprintf_1x(a1, v4);
    v8 = *MEMORY[0x29EDCA608];

    return sprintf_08x(a1, a2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return sprintf_1x(a1, a2);
  }
}

void *sprintf_1U(void *a1, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 / 0x3B9ACA00))
  {
    v3 = a2 % 0x3B9ACA00;
    sprintf_1u(a1, a2 / 0x3B9ACA00);
    result = digit10(a1, v3, v7, 0, 0);
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return sprintf_1u(a1, a2);
  }

  return result;
}

uint64_t sprintf_10U(void *a1, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 / 0x3B9ACA00))
  {
    v3 = a2 % 0x3B9ACA00;
    sprintf_1u(a1, a2 / 0x3B9ACA00);
    result = digit10(a1, v3, v7, 0, 0);
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return sprintf_10u(a1, a2);
  }

  return result;
}

uint64_t sprintf_19U(char **a1, unint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  v4 = a2 / 0x3B9ACA00;
  if ((a2 / 0x3B9ACA00))
  {
    sprintf_10u(a1, a2 / 0x3B9ACA00);
    v5 = *MEMORY[0x29EDCA608];

    return sprintf_09d(a1, v2 - 1000000000 * v4);
  }

  else
  {
    v7 = *a1;
    v8 = 32;
    v9 = 1u;
    do
    {
      *a1 = v7 + 1;
      *v7 = v8;
      v7 = *a1;
      if (*a1 >= a1[3])
      {
        v7 = a1[2];
        *a1 = v7;
      }

      v8 = str_27[v9++];
    }

    while (v9 != 10);
    v10 = *MEMORY[0x29EDCA608];

    return sprintf_10u(a1, a2);
  }
}

void *sprintf_1D(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = a2 / 1000000000;
  if (a2 / 1000000000)
  {
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    if (v3 >= 0)
    {
      v5 = a2 / 1000000000;
    }

    else
    {
      v5 = a2 / -1000000000;
    }

    sprintf1da(a1, v5, v10, 0, v3 >> 31);
    v6 = *MEMORY[0x29EDCA608];

    return sprintf_09d(a1, v4 % 0x3B9ACA00);
  }

  else
  {
    if (a2 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = -a2;
    }

    result = sprintf1da(a1, v8, v10, 0, (a2 >> 31) & 1);
    v9 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sprintf_10D(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = a2 / 1000000000;
  if (a2 / 1000000000)
  {
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    if (v3 >= 0)
    {
      v5 = a2 / 1000000000;
    }

    else
    {
      v5 = a2 / -1000000000;
    }

    sprintf1da(a1, v5, v9, 0, v3 >> 31);
    v6 = *MEMORY[0x29EDCA608];

    return sprintf_09d(a1, v4 % 0x3B9ACA00);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];

    return sprintf_10d(a1, a2);
  }
}

uint64_t sprintf_11D(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 / 1000000000)
  {
    if (a2 >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = -a2;
    }

    sprintf_2d(a1, a2 / 1000000000);
    v4 = *MEMORY[0x29EDCA608];

    return sprintf_09d(a1, v3 % 0x3B9ACA00);
  }

  else
  {
    if (a2 >= -999999999)
    {
      v6 = (*a1)++;
      *v6 = 32;
      if (*a1 >= a1[3])
      {
        *a1 = a1[2];
      }
    }

    v7 = *MEMORY[0x29EDCA608];

    return sprintf_10d(a1, a2);
  }
}

void *sprintf_sp1d(void *a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  result = sprintf1da(a1, v3, v6, 0, a2 >> 31);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_sp11d(void *a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  v3 = *a1;
  if (*a1 >= a1[3])
  {
    v3 = a1[2];
    *a1 = v3;
  }

  if (a2 >= -999999999)
  {
    *a1 = v3 + 1;
    *v3 = 32;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }
  }

  v4 = *MEMORY[0x29EDCA608];

  return sprintf_10d(a1, a2);
}

void *sprintf_sp1u(void *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) != 0)
  {
    v5 = *MEMORY[0x29EDCA608];

    return sprintf_1u(a1, a2);
  }

  else
  {
    result = sprintf1da(a1, a2, v6, 0, 0);
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sprintf_sp10U(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (a2 < 0)
  {
    v5 = *MEMORY[0x29EDCA608];

    return sprintf_10U(a1, a2);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];

    return sprintf_10D(a1, a2);
  }
}

uint64_t sprintf_11f9(void *a1, double a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 1.0)
  {
    v7 = dbl_299051A30[a2 < 0.0] + a2;
    v8 = v7;
    v9 = v7 - v7;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (v8 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = -v8;
    }

    sprintf1da(a1, v11, v18, 0, v8 >> 31);
    v12 = (*a1)++;
    *v12 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v13 = v10 * 1000000000.0;
    if (v10 * 1000000000.0 <= 2147483650.0)
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

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_09d(a1, v14);
  }

  else
  {
    v3 = a2 * 1000000000.0;
    v4 = -0.5;
    if (v3 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x80000000;
      }
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }

    v15 = *MEMORY[0x29EDCA608];

    return sprintf_10f9(a1, v6);
  }
}

uint64_t sprintf_12f3(char **a1, double a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_299051A40[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v10;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_8d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v19 = *MEMORY[0x29EDCA608];

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_1_21[++v3];
    }

    while (v3 != 2);
    v6 = a2 * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_14f3(char **a1, double a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_299051A40[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v10;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_10d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v19 = *MEMORY[0x29EDCA608];

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_3_8[++v3];
    }

    while (v3 != 4);
    v6 = a2 * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_p(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v3 = *result;
  v4 = 48;
  do
  {
    *result = v3 + 1;
    *v3 = v4;
    v3 = *result;
    if (*result >= *(result + 24))
    {
      v3 = *(result + 16);
      *result = v3;
    }

    v4 = str_7_9[++v2];
  }

  while (v2 != 2);
  for (i = 15; i != -1; --i)
  {
    v11[i - 1] = __const__Z9sprintf_pP10Cyc_bufferPKv_dec2HexChar[a2 & 0xF];
    a2 >>= 4;
  }

  v11[15] = 0;
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    do
    {
      *result = v3 + 1;
      *v3 = v6;
      v3 = *result;
      if (*result >= *(result + 24))
      {
        v3 = *(result + 16);
        *result = v3;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t Get_PETestMode(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = (Ga05_GetDebugFeaturesBitmask() >> 42) & 0x3F;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TestMode,%u\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 73, "Get_PETestMode", v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v0;
}

unint64_t Get_TestConfigurationSleepTimeoutSeconds(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = (Ga05_GetDebugFeaturesBitmask() >> 32) & 0x3FF;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SleepTO (gpsd),%u\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 73, "Get_TestConfigurationSleepTimeoutSeconds", v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v0;
}

double Horiz_Diff_Sqd(double *a1, const double *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = __sincos_stret(*a1);
  v6 = 1.0 / sqrt(v5.__sinval * v5.__sinval * -0.00669437999 + 1.0);
  v7 = a1[2];
  v8 = v5.__cosval * (v7 + v6 * 6378137.0);
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  v9 = *MEMORY[0x29EDCA608];
  v10 = (v4 - *a2) * (v7 + v6 * (v6 * v6) * 6335439.33);
  return (a1[1] - a2[1]) * v8 * ((a1[1] - a2[1]) * v8) + v10 * v10;
}

uint64_t GN_ANVIC_Set_Eph_El(unsigned __int8 *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ANVIC_Set_Eph_El"))
  {
    goto LABEL_42;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_ANVIC_Set_Eph_El: ", *a1);
  }

  else
  {
    EvLog_ANVIC_Eph_El(a1);
  }

  v2 = *a1 - 15;
  v3 = v2 < 0xFFFFFFF2;
  if (v2 <= 0xFFFFFFF1)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  SVid = %d, Out of range !", *a1);
  }

  if (a1[1] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  Alert_Flag = %d > 1, Out of range !", a1[1]);
    v3 = 1;
  }

  if (a1[2] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  L5_Health_Flag = %d > 1, Out of range !", a1[2]);
    v3 = 1;
  }

  if (a1[3] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  S_Health_Flag = %d > 1, Out of range !", a1[3]);
    v3 = 1;
  }

  if ((a1[5] - 16) <= 0xE0u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  URAI = %d > 1, Out of range !", a1[5]);
    v3 = 1;
  }

  if (*(a1 + 3) >= 0x1000u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  WeekNo = %d > 4095 Out of range !", *(a1 + 3));
    v3 = 1;
  }

  if (*(a1 + 4) >= 0x93A8u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  toc = %d > 37799, Out of range !", *(a1 + 4));
    v3 = 1;
  }

  if (*(a1 + 5) >= 0x93A8u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  toe = %d > 37799, Out of range !", *(a1 + 5));
    v3 = 1;
  }

  if ((*(a1 + 3) - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  af0 = %d < -2^25 || >= 2^25, Out of range !", *(a1 + 3));
    v3 = 1;
  }

  if (a1[19] >= 7u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  Fit_hours = %d > 6, Out of range !", a1[19]);
    v3 = 1;
  }

  if (((*(a1 + 11) - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  i_dot = %d < -2^13 || >= 2^13, Out of range !", *(a1 + 11));
    v3 = 1;
  }

  if ((*(a1 + 12) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  delta_N = %d < -2^23 || >= 2^23, Out of range !", *(a1 + 12));
    v3 = 1;
  }

  if ((*(a1 + 13) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El:  FAILED:  Omega_dot = %d < -2^23 || >= 2^23, Out of range !", *(a1 + 13));
    v3 = 1;
  }

  v4 = vcvtd_n_f64_u32(*(a1 + 6), 0x13uLL);
  if (v4 >= *"")
  {
    if (v4 <= 6700.0)
    {
      goto LABEL_36;
    }

    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: sqrt_A = %g > %g, Unrealistic value!");
  }

  else
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: sqrt_A = %g < %g, Unrealistic value!");
  }

  v3 = 1;
LABEL_36:
  LODWORD(v4) = *(a1 + 7);
  v5 = *&v4 * 1.16415322e-10;
  if (v5 > 0.03)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: e = %g > %g, Unrealistic value!", v5, 0.03);
    v3 = 1;
  }

  v6 = *(a1 + 13);
  v7 = v6 * 3.57157734e-13;
  if (v7 < -0.00000198862815)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: Omega_dot = %e < %e, Unrealistic value!");
LABEL_42:
    v8 = 0;
    goto LABEL_43;
  }

  if (v7 > 0.000000314159265)
  {
    EvCrt_v("GN_ANVIC_Set_Eph_El: FAILED: Omega_dot = %e > %e, Unrealistic value!");
    goto LABEL_42;
  }

  if (v3)
  {
    goto LABEL_42;
  }

  v11 = p_NA;
  LODWORD(v7) = *a1;
  v12 = vmovl_u8(*&v7).u8[0] - 1;
  v13 = p_NA + 76 * v12;
  v14 = v13 + 22480;
  *(v13 + 22488) = *a1;
  *(v13 + 22492) = *(a1 + 4);
  *(v13 + 22500) = *(a1 + 3);
  *(v13 + 22504) = *(a1 + 8);
  *(v13 + 22506) = a1[18];
  v15 = a1[19];
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  *(v13 + 22507) = v15;
  *(v13 + 22508) = *(a1 + 10);
  *(v13 + 22510) = *(a1 + 11);
  *(v13 + 22512) = *(a1 + 24);
  *(v13 + 22528) = *(a1 + 5);
  *(v13 + 22536) = *(a1 + 12);
  *(v13 + 22540) = v6;
  *(v13 + 22544) = *(a1 + 7);
  *(v13 + 22552) = *(a1 + 16);
  if (a1[68])
  {
    v16 = 5;
  }

  else
  {
    v16 = 3;
  }

  *(v13 + 22484) = v16;
  v17 = *(p_api + 48);
  if (*(v17 + 16) == 1 && *v17 >= 3)
  {
    v18 = *(v17 + 40) + 604800 * *(v17 + 32);
  }

  else
  {
    v18 = 0;
  }

  *v14 = v18;
  v8 = 1;
  *(v11 + v12 + 348) = 1;
  Debug_Log_NVC_Eph(1, v14);
  *(v14 + 14) = Complete_NVIC_WeekNo(*(v14 + 14));
LABEL_43:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t GN_ANVIC_Set_Alm_El(unsigned __int8 *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ANVIC_Set_Alm_El"))
  {
    goto LABEL_37;
  }

  EvLog_d("GN_ANVIC_Set_Alm_El: ", *a1);
  v2 = *a1 - 15;
  v3 = v2 < 0xFFFFFFF2;
  if (v2 <= 0xFFFFFFF1)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: SVid = %d < 1 or >%d, Out of range!", *a1, 14);
  }

  if (a1[1] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: L5_Health_Flag = %d > 1, Out of range!", a1[1]);
    v3 = 1;
  }

  if (a1[2] >= 2u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: S_Health_Flag = %d > 1, Out of range!", a1[2]);
    v3 = 1;
  }

  if (*(a1 + 2) >= 0x1000u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: WNa = %d  > 4095, Out of range!", *(a1 + 2));
    v3 = 1;
  }

  if (*(a1 + 3) >= 0x93A8u)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: toa = %d > 37799, Out of range!", *(a1 + 3));
    v3 = 1;
  }

  if ((*(a1 + 3) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: i0 = %d <-2^23 or >=2^23, Out of range!", *(a1 + 3));
    v3 = 1;
  }

  if (HIBYTE(*(a1 + 5)))
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: sqrt_A = %d >=2^24, Out of range!", *(a1 + 5));
    v3 = 1;
  }

  if ((*(a1 + 6) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!", *(a1 + 6));
    v3 = 1;
  }

  if ((*(a1 + 7) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: w = %d <-2^23 or >=2^23, Out of range!", *(a1 + 7));
    v3 = 1;
  }

  if ((*(a1 + 8) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!", *(a1 + 8));
    v3 = 1;
  }

  if (((*(a1 + 18) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!", *(a1 + 18));
    v3 = 1;
  }

  if (((*(a1 + 19) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!", *(a1 + 19));
    v3 = 1;
  }

  v4 = vcvtd_n_f64_u32(*(a1 + 4), 0x15uLL);
  if (v4 > 0.03)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: e = %g > %g, Unrealistic value!", v4, 0.03);
    v3 = 1;
  }

  v5 = *(a1 + 8) * 1.14290475e-11;
  if (v5 >= -0.00000198862815)
  {
    if (v5 <= 0.000000314159265)
    {
      goto LABEL_33;
    }

    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: Omega_dot = %g > %g, Unrealistic value!");
  }

  else
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: Omega_dot = %g < %g, Unrealistic value!");
  }

  v3 = 1;
LABEL_33:
  v6 = *(a1 + 5);
  v7 = vcvtd_n_f64_u32(v6, 0xBuLL);
  if (v7 < *"")
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: sqrt_A = %g < %g, Unrealistic value!");
LABEL_37:
    v8 = 0;
    goto LABEL_38;
  }

  if (v7 > 6700.0)
  {
    EvCrt_v("GN_ANVIC_Set_Alm_El: FAILED: sqrt_A = %g > %g, Unrealistic value!");
    goto LABEL_37;
  }

  if (v3)
  {
    goto LABEL_37;
  }

  v11 = *a1;
  v12 = p_NA;
  v13 = v11 - 1;
  v14 = p_NA + 52 * (v11 - 1);
  v15 = v14 + 23544;
  *(v14 + 23552) = v11;
  *(v14 + 23553) = *(a1 + 1);
  *(v14 + 23556) = *(a1 + 2);
  *(v14 + 23558) = *(a1 + 6);
  *(v14 + 23564) = *(a1 + 3);
  *(v14 + 23568) = *(a1 + 8);
  *(v14 + 23572) = v6;
  *(v14 + 23576) = *(a1 + 3);
  *(v14 + 23584) = *(a1 + 8);
  *(v14 + 23588) = *(a1 + 18);
  *(v14 + 23590) = *(a1 + 19);
  *(v14 + 23592) = a1[40];
  v16 = *(p_api + 48);
  if (*(v16 + 16) == 1 && *v16 >= 3)
  {
    v17 = *(v16 + 40) + 604800 * *(v16 + 32);
  }

  else
  {
    v17 = 0;
  }

  if (a1[41])
  {
    v18 = 5;
  }

  else
  {
    v18 = 3;
  }

  *v15 = v17;
  *(v14 + 23548) = v18;
  v8 = 1;
  *(v12 + v13 + 362) = 1;
  Debug_Log_NVC_Alm(1, v15);
  *(v15 + 12) = Complete_NVIC_WeekNo(*(v15 + 12));
LABEL_38:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL Is_NVIC_IntEph_Same(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10) && *(a1 + 11) == *(a2 + 11) && *(a1 + 12) == *(a2 + 12) && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 26) == *(a2 + 26) && *(a1 + 27) == *(a2 + 27) && *(a1 + 28) == *(a2 + 28) && *(a1 + 30) == *(a2 + 30) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64) && *(a1 + 66) == *(a2 + 66) && *(a1 + 68) == *(a2 + 68) && *(a1 + 70) == *(a2 + 70) && *(a1 + 72) == *(a2 + 72) && *(a1 + 74) == *(a2 + 74);
  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Comp_Sol_Acc(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x29EDCA608];
  v4 = a2 + 60072;
  ECEF2FSD_RotM((a2 + 1736), *(a1 + 27280) * 0.0174532925, v89);
  v83 = 0;
  memset_pattern16((a2 + 61432), &unk_299051AA0, 0x60uLL);
  memset_pattern16((a2 + 61528), &unk_299051AA0, 0x60uLL);
  memset_pattern16((a2 + 61624), &unk_299051A90, 0x60uLL);
  *(v4 + 1648) = 0;
  if ((*(a1 + 136) & 1) == 0)
  {
    v5 = (a2 + 52760);
    if (*(a2 + 52760) <= 1.05)
    {
      v6 = *(a2 + 52768);
      if (v6 <= 1.05)
      {
        goto LABEL_8;
      }

      *(a1 + 152) = 0;
    }

    else
    {
      *(a1 + 152) = 0;
      *(a1 + 180) = 1;
      v6 = *(a2 + 52768);
    }

    if (v6 > 1.05)
    {
      *(a1 + 181) = 1;
    }

LABEL_8:
    ud2var(a1 + 976, 0xCu, 1, 1u, (a2 + 61432));
    *&v90 = 0;
    if (R8_EQ((a2 + 1632), &v90) && *(a2 + 61432) > 1.0e18)
    {
      *(a2 + 61432) = 0x43ABC16D674EC800;
    }

    v7 = *v5;
    if (*v5 > 1.05)
    {
      *&v90 = 0;
      if (!R8_EQ((a2 + 1632), &v90) && *(a2 + 1872) != 1)
      {
        v8 = (v7 + -1.0) * 0.25 * *(a2 + 61432);
        Apply_Q_Boost(v8, 0, 1u, (a1 + 976), &v83, &v90);
        *(a2 + 61432) = v8 + *(a2 + 61432);
        *(a1 + 216) = v8;
        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  ClkBias %g  post_QB[0] %g", sqrt(v8), *v5);
      }
    }

    *(v4 + 1456) = *(v4 + 1360) + *(a1 + 15488);
    v9 = (v4 + 1368);
    ud2var(a1 + 976, 0xCu, 2, 1u, (v4 + 1368));
    *v87 = 0;
    if (R8_EQ((a2 + 1640), v87) && *v9 > 1.0e18)
    {
      *v9 = 1.0e18;
    }

    v10 = *v5;
    if (*v5 > 1.05)
    {
      *v87 = 0;
      if (!R8_EQ((a2 + 1640), v87) && *(a2 + 1872) != 1)
      {
        v11 = (v10 + -1.0) * 0.25 * *v9;
        Apply_Q_Boost(v11, 1u, 1u, (a1 + 976), &v83, &v90);
        *v9 = v11 + *v9;
        if (*(a1 + 216) < v11)
        {
          *(a1 + 216) = v11;
        }

        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  ClkGLON %g  post_QB[0] %g", sqrt(v11), *v5);
      }
    }

    *(v4 + 1464) = *(v4 + 1368) + *(a1 + 15488);
    v12 = (v4 + 1376);
    ud2var(a1 + 976, 0xCu, 3, 1u, (v4 + 1376));
    *v87 = 0;
    if (R8_EQ((a2 + 1648), v87) && *v12 > 1.0e18)
    {
      *v12 = 1.0e18;
    }

    v13 = *v5;
    if (*v5 > 1.05)
    {
      *v87 = 0;
      if (!R8_EQ((a2 + 1648), v87) && *(a2 + 1872) != 1)
      {
        v14 = (v13 + -1.0) * 0.25 * *v12;
        Apply_Q_Boost(v14, 2u, 1u, (a1 + 976), &v83, &v90);
        *v12 = v14 + *v12;
        if (*(a1 + 216) < v14)
        {
          *(a1 + 216) = v14;
        }

        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  ClkBDS %g  post_QB[0] %g", sqrt(v14), *v5);
      }
    }

    *(v4 + 1472) = *(v4 + 1376) + *(a1 + 15488);
    v15 = (v4 + 1384);
    ud2var(a1 + 976, 0xCu, 4, 1u, (v4 + 1384));
    *v87 = 0;
    if (R8_EQ((a2 + 1656), v87) && *v15 > 1.0e18)
    {
      *v15 = 1.0e18;
    }

    v16 = *v5;
    if (*v5 > 1.05)
    {
      *v87 = 0;
      if (!R8_EQ((a2 + 1656), v87) && *(a2 + 1872) != 1)
      {
        v17 = (v16 + -1.0) * 0.25 * *v15;
        Apply_Q_Boost(v17, 3u, 1u, (a1 + 976), &v83, &v90);
        *v15 = v17 + *v15;
        if (*(a1 + 216) < v17)
        {
          *(a1 + 216) = v17;
        }

        EvLog_v("Q-Boost 3 ClkL5L1 %g  post_QB[0] %g", sqrt(v17), *v5);
      }
    }

    *(v4 + 1480) = *(v4 + 1384) + *(a1 + 15488) * 0.0001;
    v18 = (v4 + 1392);
    ud2var(a1 + 976, 0xCu, 5, 1u, (v4 + 1392));
    v19 = *(a2 + 52768);
    if (v19 > 1.05 && *(a2 + 1872) != 1)
    {
      v20 = (v19 + -1.0) * 0.25 * *v18;
      Apply_Q_Boost(v20, 4u, 1u, (a1 + 976), &v83, &v90);
      *v18 = v20 + *v18;
      *(a1 + 224) = v20;
      EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 4:  ClkD %g  post_QB[1] %g", sqrt(v20), *(a2 + 52768));
    }

    v21 = 0.01;
    *(v4 + 1488) = *(v4 + 1392) + *(a2 + 1552) * 0.01;
    ud2var(a1 + 976, 0xCu, 6, 1u, (v4 + 1400));
    v22 = *(v4 + 1400);
    *(v4 + 1496) = v22;
    v23 = *v5;
    if (*v5 > 1.05 && *(a2 + 20) <= 10 && *(a2 + 1872) != 1)
    {
      v24 = v22 * (v23 + -1.0 + v23 + -1.0);
      Apply_Q_Boost(v24, 5u, 1u, (a1 + 976), &v83, &v90);
      *(v4 + 1400) = v24 + *(v4 + 1400);
      *(a1 + 216) = v24 + *(a1 + 216);
      EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  dT_Sync %g  post_QB[0] %g", sqrt(v24), *v5);
      v23 = *v5;
    }

    if (v23 > 1.05 && *(a2 + 1872) != 1)
    {
      v79 = (v4 + 1376);
      v80 = (v4 + 1368);
      v81 = v4;
      v25 = 61480;
      Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, (a2 + 1736), (a2 + 61480));
      v26 = 0;
      v27 = 0;
      v28 = v83;
      do
      {
        v29 = (*v5 + -1.0) * *(a2 + v25);
        if (v27 == 48)
        {
          v29 = v29 * *(a1 + 128);
        }

        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v93 = *(a2 + v27 + 1736);
        v94 = *(a2 + v27 + 1752);
        v87[0] = 0;
        if (v29 > 0.0)
        {
          rnk1_core((a1 + 976), 9u, v29, &v90, v87);
          if (v87[0])
          {
            ++v28;
          }
        }

        *(a1 + 216) = v29 + *(a1 + 216);
        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 3:  Pos %d %g  post_QB[0] %g", v26, sqrt(v29), *v5);
        v27 += 24;
        ++v26;
        v25 += 8;
      }

      while (v27 != 72);
      v83 = v28;
      v9 = v80;
      v4 = v81;
      v12 = v79;
    }

    if ((*(a1 + 29) & 1) == 0)
    {
      if (*(v4 + 144) == 1 && *(v4 + 216) <= 400000000.0 || *(v4 + 2050) >= 3u)
      {
        *(a1 + 29) = 1;
      }

      else
      {
        v30 = *(a2 + 61432);
        if (v30 < 40000.0 && (*v4 & 1) == 0)
        {
          v31 = 40000.0 - v30;
          Apply_Q_Boost(40000.0 - v30, 0, 1u, (a1 + 976), &v83, &v90);
          *(a2 + 61432) = v31;
          *(a2 + 61528) = v31 + *(a1 + 15488);
          DbgLog_v(1, "NK_Comp_Sol_Acc: GPS Clock Bias var boosted %g", v31);
        }

        v32 = *v9;
        if (*v9 < 40000.0 && (*v4 & 1) == 0)
        {
          v33 = 40000.0 - v32;
          Apply_Q_Boost(40000.0 - v32, 1u, 1u, (a1 + 976), &v83, &v90);
          *(v4 + 1368) = v33;
          *(v4 + 1464) = v33 + *(a1 + 15488);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Glonass Clock Bias var boosted %g", v33);
        }

        v34 = *v12;
        if (*v12 < 40000.0 && (*v4 & 1) == 0)
        {
          v35 = 40000.0 - v34;
          Apply_Q_Boost(40000.0 - v34, 2u, 1u, (a1 + 976), &v83, &v90);
          *(v4 + 1376) = v35;
          *(v4 + 1472) = v35 + *(a1 + 15488);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Beidou Clock Bias var boosted %g", v35);
        }

        for (i = 0; i != 3; ++i)
        {
          *v87 = 0;
          ud2var(a1 + 976, 0xCu, i + 7, 1u, v87);
          if (*v87 < 40000.0)
          {
            v37 = 40000.0 - *v87;
            Apply_Q_Boost(40000.0 - *v87, i + 6, 1u, (a1 + 976), &v83, &v90);
            DbgLog_v(1, "NK_Comp_Sol_Acc: Pos var boosted %d %g", i, v37);
          }
        }
      }
    }

    Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, (a2 + 1736), (a2 + 61480));
    *(v4 + 1648) = v38;
    Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, v89, (a2 + 61776));
    *(a2 + 61776) = vsqrtq_f64(*(a2 + 61776));
    *(v4 + 1720) = sqrt(*(v4 + 1720));
    Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, v89, (v4 + 1728));
    *(v4 + 1728) = vsqrtq_f64(*(v4 + 1728));
    *(v4 + 1744) = sqrt(*(v4 + 1744));
    *(v4 + 1648) = *(v4 + 1648) + *(a1 + 15520);
    v39 = (a1 + 15496);
    v40 = (v4 + 1504);
    v41 = 3;
    do
    {
      v42 = *v39++;
      *v40 = *(v40 - 12) + v42;
      ++v40;
      --v41;
    }

    while (v41);
    if (*(a2 + 52768) > 1.05 && *(a2 + 1872) != 1)
    {
      v82 = v4;
      v43 = 61504;
      Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, (a2 + 1736), (a2 + 61504));
      v44 = 0;
      v45 = 0;
      v46 = v83;
      do
      {
        v47 = (*(a2 + 52768) + -1.0) * *(a2 + v43);
        if (v45 == 48)
        {
          v47 = v47 * *(a1 + 128);
        }

        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        v90 = 0u;
        v95 = *(a2 + v45 + 1736);
        v96 = *(a2 + v45 + 1752);
        v87[0] = 0;
        if (v47 > 0.0)
        {
          rnk1_core((a1 + 976), 0xCu, v47, &v90, v87);
          if (v87[0])
          {
            ++v46;
          }
        }

        *(a1 + 224) = v47 + *(a1 + 224);
        EvLog_v("NK_Comp_Sol_Acc:  Q-Boost 4:  Vel %d %g  post_QB[1] %g", v44, sqrt(v47), *(a2 + 52768));
        v45 += 24;
        ++v44;
        v43 += 8;
      }

      while (v45 != 72);
      v83 = v46;
      v4 = v82;
    }

    Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, (a2 + 1736), (a2 + 61504));
    memset(v87, 0, sizeof(v87));
    v88 = 0.0;
    if (*(a1 + 27116) >= 4u)
    {
      v48 = *(a2 + 1552);
      if (v48 > 0.0)
      {
        v49 = 0;
        v84 = 0.0;
        v85 = 0.0;
        v86 = 0.0;
        do
        {
          *(&v84 + v49) = -*(a2 + 62624 + v49) / v48;
          v49 += 8;
        }

        while (v49 != 24);
        v50 = 0;
        v51 = v84;
        v52 = v85;
        v53 = (a2 + 1752);
        v54 = v86;
        do
        {
          v55 = *(v53 - 1) * v52 + *(v53 - 2) * v51;
          v56 = *v53;
          v53 += 3;
          *&v87[v50] = v55 + v56 * v54;
          v50 += 2;
        }

        while (v50 != 6);
LABEL_118:
        v71 = 0;
        v72 = a2 + 61504;
        do
        {
          v73 = *(v72 + v71 * 4) + v48 * (*&v87[v71] * 0.5) * (v48 * (*&v87[v71] * 0.5));
          *(v72 + v71 * 4) = v73;
          *(a2 + 61600 + v71 * 4) = v73 + v48 * 0.0001;
          v71 += 2;
        }

        while (v71 != 6);
        if (v83)
        {
          *(a1 + 136) = 1;
          *(a1 + 140) = 23;
          memset_pattern16((a2 + 61432), &unk_299051AA0, 0x60uLL);
          memset_pattern16((a2 + 61528), &unk_299051AA0, 0x60uLL);
          *(v4 + 1648) = 0;
        }

        goto LABEL_122;
      }
    }

    v57 = *(a1 + 20);
    if (v57 <= 4)
    {
      if (v57 > 2)
      {
        if (v57 == 3)
        {
          __asm { FMOV            V0.2D, #2.0 }

          *v87 = _Q0;
          v64 = 4.0;
        }

        else
        {
          __asm { FMOV            V0.2D, #3.0 }

          *v87 = _Q0;
          v64 = 9.0;
          v21 = 0.00694444444;
        }

        goto LABEL_117;
      }

      v58 = 0.0;
      if (v57 < 2)
      {
LABEL_114:
        *v87 = sqrt(v58);
        *&v87[2] = *v87;
        v64 = 1000000.0;
        if (v57 < 2)
        {
          v64 = 0.0;
        }

        v21 = 1.0;
        goto LABEL_117;
      }

      if (v57 == 2)
      {
        __asm { FMOV            V0.2D, #0.5 }

        *v87 = _Q0;
        v64 = 0.25;
        v21 = 0.0204081633;
LABEL_117:
        v88 = sqrt(v64 * v21);
        v48 = *(a2 + 1552);
        goto LABEL_118;
      }

LABEL_113:
      v58 = 1000000.0;
      goto LABEL_114;
    }

    if (v57 > 6)
    {
      if (v57 != 7)
      {
        if (v57 == 8)
        {
          *v87 = vdupq_n_s64(0x408F400000000000uLL);
          v21 = 1.0;
          v64 = 1000000.0;
          goto LABEL_117;
        }

        goto LABEL_113;
      }

      __asm { FMOV            V0.2D, #20.0 }

      *v87 = _Q0;
      v21 = 1.0;
      *&v66 = 400.0;
    }

    else
    {
      if (v57 == 5)
      {
        __asm { FMOV            V0.2D, #5.0 }

        *v87 = _Q0;
        v64 = 25.0;
        v21 = 0.0625;
        goto LABEL_117;
      }

      __asm { FMOV            V0.2D, #10.0 }

      *v87 = _Q0;
      v21 = 0.25;
      *&v66 = 100.0;
    }

    v64 = *&v66;
    goto LABEL_117;
  }

LABEL_122:
  v74 = 12;
  v75 = (a2 + 61624);
  while (*(v75 - 24) > 0.0)
  {
    *v75 = sqrt(*(v75 - 12));
    ++v75;
    if (!--v74)
    {
      goto LABEL_129;
    }
  }

  *(a1 + 136) = 1;
  *(a1 + 140) = 91;
  memset_pattern16((a2 + 61432), &unk_299051AA0, 0x60uLL);
  memset_pattern16((a2 + 61528), &unk_299051AA0, 0x60uLL);
  v76 = 0;
  v77 = vdupq_n_s64(0x41634325C0000000uLL);
  do
  {
    *(a2 + 61624 + v76) = v77;
    v76 += 16;
  }

  while (v76 != 96);
  *(v4 + 1648) = 0;
LABEL_129:
  v78 = *MEMORY[0x29EDCA608];
}

void NK_Add_Nominal_PN(uint64_t a1, uint64_t a2, int a3, float64x2_t *a4, double *a5, uint64_t a6, double *a7)
{
  v97 = *MEMORY[0x29EDCA608];
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  ECEF2FSD_RotM((a2 + 224), *(a1 + 27280) * 0.0174532925, v87);
  __asm { FMOV            V0.2D, #1.0 }

  v89 = _Q0;
  v18 = *(a2 + 40);
  if (v18 < 0.0)
  {
    goto LABEL_99;
  }

  v82 = a7;
  v19 = v18 * v18;
  *&v90 = 0x3FF0000000000000;
  v20 = a4[1].f64[1];
  v21 = v18 * (CP_Noise_dT_Sync[*(a2 + 24)] + a4[2].f64[0] + v18 * v18 * v20 * 0.0833333333);
  v22 = v21;
  if (a3)
  {
    v22 = v21 + a4[1].f64[0];
  }

  v23 = 0;
  v86 = 0;
  v85 = v18;
  if (v22 > 0.0)
  {
    rnk1_core(a5, 1u, v22, &v90, &v86);
    v18 = v85;
    v20 = a4[1].f64[1];
    v21 = v85 * (CP_Noise_dT_Sync[*(a2 + 24)] + a4[2].f64[0] + v19 * v20 * 0.0833333333);
    v23 = v86 != 0;
  }

  *&v90 = 0;
  *(&v90 + 1) = 0x3FF0000000000000;
  v24 = v21;
  if (a3)
  {
    v24 = v21 + a4[1].f64[0];
  }

  v86 = 0;
  if (v24 > 0.0)
  {
    rnk1_core(a5, 2u, v24, &v90, &v86);
    v18 = v85;
    v20 = a4[1].f64[1];
    v21 = v85 * (CP_Noise_dT_Sync[*(a2 + 24)] + a4[2].f64[0] + v19 * v20 * 0.0833333333);
    v25 = v23 ? 2 : 1;
    if (v86)
    {
      v23 = v25;
    }
  }

  v90 = 0uLL;
  *&v91 = 0x3FF0000000000000;
  if (a3)
  {
    v21 = v21 + a4[1].f64[0];
  }

  v26 = 0;
  v86 = 0;
  v27 = sqrt(v18);
  if (v21 > 0.0)
  {
    rnk1_core(a5, 3u, v21, &v90, &v86);
    v18 = v85;
    v20 = a4[1].f64[1];
    v26 = v86 != 0;
  }

  v28 = 0;
  *(&v91 + 1) = 0;
  *&v90 = v18 * v27 * 0.5;
  *(&v90 + 1) = *&v90;
  *&v91 = *&v90;
  *&v92 = v27;
  v86 = 0;
  if (v20 > 0.0)
  {
    rnk1_core(a5, 5u, v20, &v90, &v86);
    v18 = v85;
    v28 = v86 != 0;
  }

  v84 = v19 * 0.5;
  v29 = (a2 + 112);
  v30 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v32 = *v29--;
    v30 = v30 + v32 * v32;
  }

  v33 = sqrt(v30);
  a4->f64[0] = v33;
  v34 = a4[5].f64[0];
  if (v33 > v34)
  {
    _NF = 1;
  }

  else
  {
    v34 = v33;
    _NF = v33 < 1.0;
  }

  if (_NF)
  {
    if (v34 >= 1.0)
    {
      v33 = v34;
    }

    else
    {
      v33 = 1.0;
    }

    a4->f64[0] = v33;
  }

  v36 = 0;
  v37 = v23 + v26 + v28;
  v38 = v33 * a4->f64[1];
  *&v90 = v19 * 0.5;
  *(&v90 + 1) = v19 * 0.5;
  v91 = *&v84;
  *&v92 = v18;
  v86 = 0;
  if (v38 > 0.0)
  {
    rnk1_core(a5, 5u, v38, &v90, &v86);
    v18 = v85;
    v36 = v86 != 0;
  }

  v39 = 0;
  v40 = v37 + v36;
  v90 = 0uLL;
  *&v91 = 0;
  *(&v91 + 1) = 0x3FF0000000000000;
  v41 = v18 * a4[2].f64[1];
  v86 = 0;
  if (v41 > 0.0)
  {
    rnk1_core(a5, 4u, v41, &v90, &v86);
    v18 = v85;
    v39 = v86 != 0;
  }

  v42 = v40 + v39;
  v43 = *(a1 + 20);
  v44 = *(a1 + 24);
  if (v43 == v44)
  {
    goto LABEL_67;
  }

  if (v43 <= 2)
  {
    if (v43)
    {
      if (v43 == 1)
      {
        if (!v44)
        {
          goto LABEL_67;
        }
      }

      else if (v43 != 2 || v44 <= 1)
      {
        goto LABEL_67;
      }
    }
  }

  else if (v43 > 4)
  {
    if (v43 == 5)
    {
      if ((v44 & 0xFFFFFFFE) != 6)
      {
        goto LABEL_67;
      }
    }

    else if (v43 != 6 || v44 != 7)
    {
      goto LABEL_67;
    }
  }

  else if (v43 == 3)
  {
    if (v44 <= 2)
    {
      goto LABEL_67;
    }
  }

  else if (v44 - 5 >= 3)
  {
    goto LABEL_67;
  }

  if (*(a1 + 27720))
  {
    v45 = *(a1 + 148);
    if (v45 >= *(a1 + 152))
    {
      v45 = *(a1 + 152);
    }

    if (v45)
    {
      if (v43 < 2)
      {
        goto LABEL_67;
      }

      v46 = *(a1 + 27120);
      if (v46 <= 0x78 && ((v43 - 3) > 5 || v46 <= 0x1E && ((v43 - 4) > 4 || v46 < 0xB)))
      {
        goto LABEL_67;
      }
    }

    v47 = 0;
LABEL_66:
    *(a1 + 27720) = v47;
    goto LABEL_67;
  }

  v48 = *(a1 + 148);
  if (v48 >= *(a1 + 152))
  {
    v48 = *(a1 + 152);
  }

  if (*(a1 + 27568) <= (5 * v48))
  {
    v47 = 1;
    goto LABEL_66;
  }

LABEL_67:
  if (*(a1 + 27720) != 1 || (v49 = *(a2 + 336), v49 > 4.0) || *(a1 + 27249) == 1)
  {
    v50 = a4[3];
    if (*(a1 + 27249) == 1)
    {
      v50 = vaddq_f64(v50, a4[4]);
    }

    v51 = 0;
    v52 = v50.f64[1];
    v53 = &v89;
    v54 = 0uLL;
    v83 = v50.f64[0];
    do
    {
      v90 = v54;
      v91 = v54;
      v55 = *(a2 + v51 + 224);
      v92 = v54;
      v93 = v55;
      v94 = *(a2 + v51 + 240);
      v56 = v52;
      if (v51 != 48)
      {
        v56 = v50.f64[0] * *v53;
      }

      v57 = 0;
      v58 = v18 * (v56 + CP_Noise_dT_Sync[*(a2 + 24)]);
      v86 = 0;
      if (v58 > 0.0)
      {
        rnk1_core(a5, 9u, v58, &v90, &v86);
        v54 = 0uLL;
        v50.f64[0] = v83;
        v18 = v85;
        v57 = v86 != 0;
      }

      v42 += v57;
      ++v53;
      v51 += 24;
    }

    while (v51 != 72);
    v49 = *(a2 + 336);
  }

  if (v49 > 16.0)
  {
    v59 = fabs(*(a1 + 27288));
    if (v59 > 2.0)
    {
      v60 = v18 * v49;
      v61 = __sincos_stret(v59 * 0.0174532925);
      v62 = v60 * v61.__sinval;
      v63 = 1.0;
      if (v49 < 23.0)
      {
        v63 = (v49 + -16.0) / 7.0;
      }

      v18 = v85;
      v64 = v60 * (1.0 - v61.__cosval) * v63 * (v60 * (1.0 - v61.__cosval) * v63);
      v65 = v62 * v63 * (v62 * v63);
      v66 = v87;
      v67 = 1;
      v68 = 0uLL;
      do
      {
        v69 = 0;
        v70 = v67;
        v90 = v68;
        v91 = v68;
        v71 = *v66;
        v92 = v68;
        v93 = v71;
        v94 = v66[2];
        if (v67)
        {
          v72 = v64;
        }

        else
        {
          v72 = v65;
        }

        v86 = 0;
        if (v72 > 0.0)
        {
          rnk1_core((a1 + 352), 9u, v72, &v90, &v86);
          v68 = 0uLL;
          v18 = v85;
          v69 = v86 != 0;
        }

        v67 = 0;
        v42 += v69;
        v66 = &v87[1] + 1;
      }

      while ((v70 & 1) != 0);
    }
  }

  v73 = 0;
  v74 = &v89;
  v75 = 0uLL;
  do
  {
    v90 = v75;
    v91 = v75;
    v76 = *(a2 + v73 + 224);
    v92 = v75;
    v93 = vmulq_n_f64(v76, v84);
    v77 = *(a2 + v73 + 240);
    v94 = v84 * v77;
    v95 = vmulq_n_f64(v76, v18);
    v96 = v18 * v77;
    if (v73 == 48)
    {
      v78 = a4[5].f64[1];
    }

    else
    {
      v78 = a4[5].f64[0] * *v74;
    }

    v79 = 0;
    v86 = 0;
    if (v78 > 0.0)
    {
      rnk1_core(a5, 0xCu, v78, &v90, &v86);
      v75 = 0uLL;
      v18 = v85;
      v79 = v86 != 0;
    }

    v42 += v79;
    ++v74;
    v73 += 24;
  }

  while (v73 != 72);
  if (v42)
  {
    gn_report_assertion_failure("Rank 1 update fail");
    *(a6 + 4) = 21;
    *a6 = 1;
LABEL_99:
    v80 = *MEMORY[0x29EDCA608];
    return;
  }

  ud2var(a5, 0xCu, 1, 0xCu, v82);
  Comp_NEDvar_UDU(a5, 0xCu, 6, (a2 + 224), v82 + 6);
  v81 = *MEMORY[0x29EDCA608];

  Comp_NEDvar_UDU(a5, 0xCu, 9, (a2 + 224), v82 + 9);
}

uint64_t NK_Init_Cov_Mat(int a1, unsigned int a2, int a3, _BYTE *a4, uint64_t a5, unsigned __int8 *a6, _OWORD *a7, uint64_t a8, double a9, uint64_t a10, int64x2_t *a11, uint64_t a12)
{
  v30 = *MEMORY[0x29EDCA608];
  v13 = a1 ^ 1 | *a6;
  if (v13 == 1)
  {
    if (*a6)
    {
      v20 = vdupq_n_s64(0x4163125300000000uLL);
      *a11 = v20;
      a11[1] = v20;
      a11[2] = v20;
      a11[3] = v20;
    }

    a7[6] = 0u;
    a7[7] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
    *a8 = -1;
    v21 = vdupq_n_s64(0x416312D000000000uLL);
    *(a8 + 40) = v21;
    *(a8 + 56) = v21;
    *(a8 + 88) = -1;
    *a10 = -1;
    *(a10 + 40) = v21;
    *(a10 + 56) = v21;
    *(a10 + 88) = -1;
    bzero((a5 + 8), 0x268uLL);
    v22 = ClkBiasOrigVar[a3];
    *a12 = v22;
    *a5 = v22;
    *(a12 + 8) = *a12;
    *(a5 + 16) = *a5;
    *(a12 + 16) = *a12;
    *(a5 + 40) = *a5;
    v23 = DT_SyncOrigVar[a3];
    *(a12 + 40) = v23;
    *(a5 + 160) = v23;
    *(a12 + 24) = 0x4022000000000000;
    *(a5 + 72) = 0x4022000000000000;
    v24 = a9 * 99930819.3 * (a9 * 99930819.3);
    *(a12 + 32) = v24;
    *(a5 + 112) = v24;
    if (a1)
    {
      v25 = 0x4222A05F20000000;
      if (*a4)
      {
        v25 = 0x4341C37937E08000;
      }
    }

    else
    {
      v25 = 0x4341C37937E08000;
    }

    *(a12 + 56) = v25;
    *(a12 + 64) = v25;
    *(a12 + 48) = v25;
    *(a5 + 352) = v25;
    *(a5 + 280) = v25;
    *(a5 + 216) = v25;
    if (a2 > 8)
    {
      v26 = 0x4197D78400000000;
    }

    else
    {
      v26 = qword_299051BE0[a2 & 0xF];
    }

    *(a12 + 80) = v26;
    *(a12 + 88) = v26;
    *(a12 + 72) = v26;
    *(a5 + 616) = v26;
    *(a5 + 520) = v26;
    *(a5 + 432) = v26;
    *a6 = 0;
    v27 = *(a6 + 2) + 1;
    *(a6 + 3) = 0;
    *(a6 + 4) = 0;
    *(a6 + 2) = v27;
    *(a6 + 6) = -1;
  }

  else
  {
    ++*(a6 + 3);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v13;
}

void SV_Data_Decode(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x29EDCA608];
  v15 = *(a6 + 24);
  if (*(a6 + 16) == 1 && *a6 >= 3)
  {
    v16 = *(a6 + 40) + 604800 * *(a6 + 32);
    v71 = v16;
    v17 = a3[3968] - v15;
    if (v17 > 0 || (v17 = a3[3969] - v15, v17 > 0) || (v17 = a3[3970] - v15, v17 > 0) || (v17 = a3[3971] - v15, v17 > 0) || (v17 = a3[3972] - v15, v17 >= 1))
    {
      v16 += v17 / 0x3E8u;
      v71 = v16;
    }
  }

  else
  {
    v16 = 0;
    v71 = 0;
  }

  if (*(a6 + 76) < 1)
  {
    v22 = 0;
  }

  else
  {
    v18 = a3[3969] - v15;
    if (v18 < 1)
    {
      v18 = 1000;
    }

    v19 = *(a6 + 88) + v18 * 0.001;
    v20 = -0.5;
    if (v19 > 0.0)
    {
      v20 = 0.5;
    }

    v21 = v19 + v20;
    if (v21 <= 2147483650.0)
    {
      if (v21 >= -2147483650.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0x80000000;
      }
    }

    else
    {
      v22 = 0x7FFFFFFF;
    }
  }

  *(a2 + 64) = v22;
  DD_Delete_Bad_GPS_Data(a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Inhib_GPS_Data(*(a4 + 488), a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Bad_QZSS_Data((a1 + 3648), (a1 + 3718), (a1 + 3708), a7);
  DD_Delete_Inhib_QZSS_Data(*(a4 + 504), (a1 + 3648), (a1 + 3718), (a1 + 3708), a7);
  DD_Delete_Bad_GLON_Data(a1, a7);
  DD_Delete_Inhib_GLON_Data(*(a4 + 496), a1, a7);
  DD_Delete_Bad_BDS_Data(a7);
  DD_Delete_Inhib_BDS_Data(*(a4 + 520), a7);
  DD_Delete_Bad_GAL_Data(a1, a7);
  DD_Delete_Inhib_GAL_Data(*(a4 + 528), a1, a7);
  DD_Delete_Bad_NVIC_Data(a7);
  DD_Delete_Inhib_NVIC_Data(*(a4 + 816), a7);
  if (*(a4 + 1853) == 1 && v16 >= 1)
  {
    v23 = *(a4 + 1752);
    if (v23 >= 1 && v16 - v23 <= 604799)
    {
      v24 = a3 + 30;
      v25 = 128;
      do
      {
        *v24 = 0;
        v24 += 124;
        --v25;
      }

      while (v25);
    }
  }

  v26 = 0;
  v27 = (a2 + 20);
  *(a2 + 9) = 0;
  do
  {
    v28 = v26;
    v29 = &a3[31 * v26];
    if (*(v29 + 120) != 1)
    {
      goto LABEL_80;
    }

    v30 = *v29;
    *(a2 + 4) = *v29;
    if (v30 <= 3u)
    {
      if (v30 == 1)
      {
LABEL_47:
        v33 = &a3[31 * v28];
        v35 = *(v33 + 4);
        v34 = v33 + 1;
        if (v35 != 1)
        {
          goto LABEL_80;
        }

        if (*(v34 + 2) <= 5u && *(v34 + 2))
        {
          v36 = *(v34 + 2);
          v37 = *(v34 + 6);
          *(a2 + 52) = *(v34 + 5);
          *v27 = v36;
          *(a2 + 36) = v37;
          *(a2 + 60) = *(v34 + 2);
          if (v30 == 5)
          {
            if (*(a4 + 16) == 1 && (*(a4 + 37) & 1) == 0)
            {
              v51 = BYTE2(v30) - 193;
              if ((*(*(a4 + 504) + v51) & 1) == 0)
              {
                *(a2 + 8) = v51;
                DD_Proc_QZSS_Data(a1, a2, a6, &v71, a7);
              }
            }
          }

          else if (v30 == 1 && *(a4 + 14) == 1 && (*(a4 + 35) & 1) == 0)
          {
            v38 = BYTE2(v30) - 1;
            if ((*(*(a4 + 488) + v38) & 1) == 0)
            {
              *(a2 + 8) = v38;
              DD_Proc_GPS_Data(a1, a2, a6, &v71, a7);
            }
          }
        }
      }

      else
      {
        if (v30 != 2)
        {
          if (v30 == 3)
          {
            v31 = *(v29 + 1);
            v32 = BYTE2(v30) - 1;
            *(a2 + 8) = BYTE2(v30) - 1;
            if (*(v29 + 4) == 1)
            {
              if (*(a4 + 19) == 1 && (*(*(a4 + 528) + BYTE2(v30) - 1) & 1) == 0 && (*(a4 + 40) & 1) == 0 && *(v29 + 6) == 1)
              {
                if (*(v29 + 7))
                {
                  EvLog("SV_Data_Decode:  Galileo E1B I/NAV Alert Page decoding is not supported yet.");
                }

                else
                {
                  v60 = *(v29 + 22);
                  *(a2 + 74) = *(v29 + 7);
                  *(a2 + 68) = v60;
                  *(a2 + 82) = *(v29 + 4);
                  DD_Proc_GAL_INAV_Data((a2 + 68), v32, v31, a2, &v71, a1, a8, a6, a7);
                }
              }

              *(v29 + 4) = 0;
            }
          }

          goto LABEL_80;
        }

        v47 = &a3[31 * v28];
        v48 = *(v47 + 4);
        v34 = v47 + 1;
        if (v48 != 1)
        {
          goto LABEL_80;
        }

        if (*(v34 + 2) == 1 && *(a4 + 15) == 1 && (*(a4 + 36) & 1) == 0 && ((v52 = *(v34 + 1), v53 = *(a7 + 17424 + 4 * (v52 + 7)), v53 == 2139062143) || (*(*(a4 + 496) + v53 - 1) & 1) == 0))
        {
          *(a2 + 62) = v52;
          *v27 = 0u;
          *(a2 + 36) = 0u;
          *(a2 + 52) = 0;
          v54 = *(v34 + 1);
          *(a2 + 28) = v34[3];
          *v27 = v54;
          *(a2 + 16) = *(v34 + 3);
          if ((v52 + 7) <= 0xDu)
          {
            DD_Proc_GLON_Data(a1, a2, a4, a6, &v71, a7);
          }
        }

        else if (g_Logging_Cfg >= 6)
        {
          v49 = *(a2 + 20);
          v66 = *(a2 + 24);
          v68 = *(a2 + 28);
          EvLog_v("SV_Data_Decode:  Glonass String Parity Fail %d  %x %x %x");
        }
      }

LABEL_79:
      *v34 = 0;
      goto LABEL_80;
    }

    if (v30 > 5u)
    {
      if (v30 != 6)
      {
        if (v30 == 7)
        {
          EvLog("SV_Data_Decode: SBAS Data decoding is NOT Supported.");
        }

        goto LABEL_80;
      }

      v41 = &a3[31 * v28];
      v42 = *(v41 + 4);
      v34 = v41 + 1;
      if (v42 != 1)
      {
        goto LABEL_80;
      }

      if (*(a4 + 20) == 1 && (*(a4 + 41) & 1) == 0 && (*(*(a4 + 816) + BYTE2(v30) - 1) & 1) == 0)
      {
        if (*(v34 + 7))
        {
          v43 = 0;
          *(a2 + 52) = 0;
          v44 = v34 + 2;
          *v27 = 0u;
          *(a2 + 36) = 0u;
          do
          {
            v45 = 0;
            v46 = 0;
            do
            {
              v46 = *(v44 + v45++) | (v46 << 8);
            }

            while (v45 != 4);
            *(v27 + v43++) = v46;
            ++v44;
          }

          while (v43 != 9);
          *(a2 + 56) = *(v34 + 44) << 24;
          *(a2 + 86) = *(v34 + 7);
          *(a2 + 8) = BYTE2(v30) - 1;
          *(a2 + 12) = *(v34 + 2);
          *(a2 + 200) = *(v34 + 1);
          DD_Proc_NVIC_Data(a1, a2, a6, &v71, a7);
        }

        else if (g_Logging_Cfg >= 6)
        {
          EvLog_v("SV_Data_Decode:  NavIC L5 checksum failed");
        }
      }

      goto LABEL_79;
    }

    if (v30 == 4)
    {
      v39 = &a3[31 * v28];
      v40 = *(v39 + 4);
      v34 = v39 + 1;
      if (v40 != 1)
      {
        goto LABEL_80;
      }

      if (*(a4 + 18) == 1 && (*(a4 + 39) & 1) == 0 && (*(*(a4 + 520) + BYTE2(v30) - 1) & 1) == 0)
      {
        if (*(v34 + 3))
        {
          *(a2 + 87) = *(v34 + 1);
          v55 = *(v34 + 5);
          v56 = *(v34 + 9);
          v57 = *(v34 + 13);
          *(a2 + 146) = *(v34 + 63);
          *(a2 + 135) = v57;
          *(a2 + 119) = v56;
          *(a2 + 103) = v55;
          v58 = *(v34 + 79);
          v59 = *(v34 + 95);
          *(a2 + 194) = *(v34 + 111);
          *(a2 + 178) = v59;
          *(a2 + 162) = v58;
          *(a2 + 85) = *(v34 + 1);
          *(a2 + 199) = *(v34 + 112);
          *(a2 + 8) = BYTE2(v30) - 1;
          DD_Proc_BDS_Data(a1, a2, a4, a6, &v71, a7);
        }

        else if (g_Logging_Cfg >= 6)
        {
          EvLog_v("SV_Data_Decode:  BeiDou B1C SF1 checksum failed", v63, v64, v65, v67);
        }
      }

      goto LABEL_79;
    }

    if (v30 == 5)
    {
      goto LABEL_47;
    }

LABEL_80:
    v50 = *(a2 + 9) + 1;
    v26 = v50;
    *(a2 + 9) = v50;
  }

  while ((v50 & 0x80) == 0);
  DD_Save_New_GPS_Eph(v71, (a1 + 288), (a1 + 3552), (a1 + 192), a7);
  DD_Save_New_QZSS_Eph(v71, (a1 + 3740), (a1 + 4760), (a1 + 3708), a7);
  DD_Save_New_GLON_Eph(v71, *(a6 + 76), *(a2 + 64), a7, a1);
  DD_Save_New_GLON_Alm(v71, a7, a1);
  DD_Save_New_GAL_INAV_Eph(v71, a1, a7);
  DD_Save_New_BDS_Eph(v71, a7, a1);
  if (!*(a7 + 62368))
  {
    v70 = 0;
    API_Get_Next_Leap_Second((a7 + 62368), (a7 + 62372), &v70);
    if ((v70 - 1) <= 0x7FFFFFFD)
    {
      API_Get_UTC_Cor(0, (a7 + 62376));
    }
  }

  DD_Check_Age_GPS_Data(v71, a1, (a1 + 224), (a1 + 192), a7);
  DD_Check_Age_QZSS_Data(v71, (a1 + 3648), (a1 + 3718), (a1 + 3708), a7);
  DD_Check_Age_GLON_Data(a6, a7, v61);
  DD_Check_GLON_Strings(*(a6 + 76), *(a2 + 64), a1, a7);
  DD_LS_Delete_EphAlm_Str(*(a7 + 62368), a6, a1);
  DD_Check_Age_BDS_Data(v71, a7);
  if (DD_Check_Age_GAL_Data(v71, a7))
  {
    DD_Delete_Bad_GAL_Data(a1, a7);
  }

  DD_Check_Age_NVIC_Data(v71, a7);
  if (*(a4 + 14) == 1)
  {
    DD_Assist_GPS_Data(a1, v71, a7, a4);
  }

  if (*(a4 + 16) == 1)
  {
    DD_Assist_QZSS_Data(a1, v71, a7, a4);
  }

  if (*(a4 + 15) == 1)
  {
    DD_Assist_GLON_Data(v71, a5, a7, a4);
  }

  if (*(a4 + 18) == 1)
  {
    DD_Assist_BDS_Data(v71, a5, a7, a4);
  }

  if (*(a4 + 19) == 1)
  {
    DD_Assist_GAL_Data(a1, v71, a5, a7, a4);
  }

  if (*(a4 + 20) == 1)
  {
    DD_Assist_NVIC_Data(v71, a5, a7, a4);
  }

  v62 = *MEMORY[0x29EDCA608];
}

void GncP16_01StopStateHndlrTimer(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (byte_2A13EC504 == 1)
  {
    if (AgpsFsmStopTimer(8656390))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP16_01StopStateHndlrTimer", 1545);
        v1 = 2;
LABEL_7:
        gnssOsa_PrintLog(__str, v1, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,TimerStarted,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP16_01StopStateHndlrTimer", g_GncPStateInfo, dword_2A13EC508);
      v1 = 5;
      goto LABEL_7;
    }

    byte_2A13EC504 = 0;
    dword_2A13EC508 = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
}

void GncP16_02StartStateHndlrTimer(unsigned int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  GncP16_01StopStateHndlrTimer();
  if (AgpsFsmStartTimer(0x841606u, a1))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP16_02StartStateHndlrTimer", 1544, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EC504 = 0;
  }

  else
  {
    byte_2A13EC504 = 1;
    dword_2A13EC508 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP16_02StartStateHndlrTimer", g_GncPStateInfo, a1);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncP16_11StartME(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  GncP02_13ClearMEBuf();
  LOBYTE(g_GncPStateInfo) = 6;
  v2 = gnssOsa_Calloc("GncP16_09SendWakeMEReqtoGnm", 183, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ =>GNM GNSS FW NV restore,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_09SendWakeMEReqtoGnm", a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 128, 8653056, v3);
  }

  v5 = 0;
  v6 = 0;
  v7 = -1;
  v8 = 1;
  do
  {
    while (1)
    {
      v9 = v8;
      v10 = &g_GncPCntxtInfo + 36 * v5;
      if (v10[8] != 1 || v10[4] != 1)
      {
        break;
      }

      v8 = 0;
      if (*(v10 + 6) < v7)
      {
        v7 = *(v10 + 6);
      }

      v5 = 1;
      v6 = 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v8 = 0;
    v5 = 1;
  }

  while ((v9 & 1) != 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v7 <= 0x3E7)
  {
    HSW_SetFixInterval(v7);
    goto LABEL_18;
  }

LABEL_17:
  HSW_SetFixInterval(0xC8u);
  BYTE5(g_GncPStateInfo) = 1;
LABEL_18:
  GN_GPS_WakeUp();
  dword_2A13EC4FC = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  byte_2A13EC4F8 = 1;
  byte_2A13EC4F0 = 0;
  GncP16_01StopStateHndlrTimer();
  v11 = *MEMORY[0x29EDCA608];
}

void GncP16_13CheckStopME(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = mach_continuous_time();
  if (BYTE2(g_GncPStateInfo) && (BYTE3(g_GncPStateInfo) & 1) == 0)
  {
    LOBYTE(g_GncPStateInfo) = 9;
  }

  v4 = byte_2A13EC4F0 | BYTE1(g_GncPStateInfo);
  if (BYTE6(g_GncPStateInfo) == 1)
  {
    v4 |= ((*&g_MacClockTicksToMsRelation * v2) - HIDWORD(g_GncPStateInfo)) >> 3 < 0x271;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,MEOn,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_13CheckStopME", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A13EC4F4, v4 & 1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((v4 & 1) == 0)
  {
    GncP16_10StopME(0, a1, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void GncP16_10StopME(char a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    SleepTimeout = 0;
  }

  else
  {
    SleepTimeout = HSW_GetSleepTimeout();
  }

  GN_GPS_Sleep(SleepTimeout, a2, a3);
  if (g_GncPStateInfo == 9)
  {
    GncP16_01StopStateHndlrTimer();
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,PE Sleep not ME\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_10StopME", g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    GncP03_SendGNSSSleepRequest(SleepTimeout, a2);
    if (SleepTimeout)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    LOBYTE(g_GncPStateInfo) = v6;
    GncP16_02StartStateHndlrTimer(0x3E8u);
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME to Sleep,%u,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 77, "GncP16_10StopME", SleepTimeout, a2);
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    dword_2A13EC4F4 = v8;
    byte_2A13EC4F0 = 1;
    if (byte_2A13EC4F8 == 1)
    {
      Ga05_UpdateBDSConsistencyStats(dword_2A13EC7B8, unk_2A13EC7BC, v8 - dword_2A13EC4FC, dword_2A13EC794);
    }

    byte_2A13EC4F8 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t GncP16_15CheckStopMEClearReq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG,%u,FA,%u,SA,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_15CheckStopMEClearReq", BYTE3(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v4 = 0;
  if ((BYTE1(g_GncPStateInfo) & 1) == 0 && !BYTE2(g_GncPStateInfo))
  {
    if (BYTE3(g_GncPStateInfo))
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      GncP16_10StopME(1, 0, a3);
      LOBYTE(g_GncPStateInfo) = 11;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void GncP16_16NewSessUpdtMEFixInt(void)
{
  v0 = 0;
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v2 = -1;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &g_GncPCntxtInfo + 36 * v0;
      if (v5[8] != 1 || v5[4] != 1)
      {
        break;
      }

      v3 = 0;
      if (*(v5 + 6) < v2)
      {
        v2 = *(v5 + 6);
      }

      v0 = 1;
      v1 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v0 = 1;
  }

  while ((v4 & 1) != 0);
  if ((v1 & 1) == 0)
  {
LABEL_12:
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_11:
  if (v2 > 0x3E7)
  {
    goto LABEL_12;
  }

  if (BYTE5(g_GncPStateInfo) == 1)
  {
    if (v2 < word_2A13C3B66)
    {
      HSW_SetFixInterval(v2);
      BYTE5(g_GncPStateInfo) = 0;
    }

    goto LABEL_12;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];

  HSW_SetFixInterval(v2);
}

void GncP16_17HandleInvalidState(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu,FA,%u,SA,%u,FG,%u,BG,%u,QFI,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 69, "GncP16_17HandleInvalidState", 260, g_GncPStateInfo, BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE5(g_GncPStateInfo));
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  snprintf(v2, 0x64uLL, "ASSERT: GNCState %d", g_GncPStateInfo);
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 69, "GncP16_17HandleInvalidState", v2);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  gnssOsa_FlushLog();
  __assert_rtn("GncP16_17HandleInvalidState", "gncpe16StateHndlr.cpp", 485, "false && Invalid State");
}

void GncP16_21ChkFWActRspPend(char a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (BYTE7(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(a1, 1);
    BYTE7(g_GncPStateInfo) = 0;
  }

  if (BYTE8(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(a1, 3);
    BYTE8(g_GncPStateInfo) = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
}

void GncP16_23UpdateStateFGSession(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = g_GncPStateInfo;
  BYTE3(g_GncPStateInfo) = a1;
  if (a1)
  {
    BYTE6(g_GncPStateInfo) = 0;
  }

  if (g_GncPStateInfo <= 6u)
  {
    if (g_GncPStateInfo <= 2u)
    {
      if (g_GncPStateInfo != 1)
      {
LABEL_17:
        if (a1)
        {
          GncP16_11StartME(1);
        }

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (g_GncPStateInfo - 5 < 2)
    {
      goto LABEL_25;
    }

    if (g_GncPStateInfo == 3)
    {
LABEL_19:
      if (a1)
      {
        LOBYTE(g_GncPStateInfo) = 5;
      }

      goto LABEL_25;
    }

    if (g_GncPStateInfo == 4)
    {
      goto LABEL_17;
    }

LABEL_34:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_23UpdateStateFGSession", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_11:
    if (g_GncPStateInfo == 7)
    {
      if (GncP16_12IsAwakeFGStateReq())
      {
        GncP16_16NewSessUpdtMEFixInt();
      }

      else
      {
        GncP16_13CheckStopME(0);
      }

      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (((1 << g_GncPStateInfo) & 0x1CC00) != 0)
  {
    goto LABEL_25;
  }

  if (g_GncPStateInfo != 8)
  {
    if (g_GncPStateInfo == 9)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    LOBYTE(g_GncPStateInfo) = 7;
    GncP16_16NewSessUpdtMEFixInt();
    GncP16_01StopStateHndlrTimer();
    if ((byte_2A13EC504 & 1) == 0)
    {
      GncP16_02StartStateHndlrTimer(0x5DCu);
    }
  }

LABEL_25:
  if (v1 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 78;
    if (BYTE3(g_GncPStateInfo))
    {
      v4 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FGSessActive,%c\n", v3, "GNC", 73, "GncP16_23UpdateStateFGSession", 261, v1, g_GncPStateInfo, v4);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

BOOL GncP16_12IsAwakeFGStateReq(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = 1;
  if ((BYTE3(g_GncPStateInfo) & 1) == 0 && (BYTE1(g_GncPStateInfo) & 1) == 0)
  {
    if (BYTE6(g_GncPStateInfo) != 1 || (v4 = HIDWORD(g_GncPStateInfo), (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v4 > 0x1388))
    {
      v0 = 0;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,Ret,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP16_12IsAwakeFGStateReq", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A13EC4F4, v0);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v0;
}

void GncP16_04RestartMEWdt(void)
{
  v2 = *MEMORY[0x29EDCA608];
  GncP16_01StopStateHndlrTimer();
  if (byte_2A13EC504)
  {
    v0 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];

    GncP16_02StartStateHndlrTimer(0x5DCu);
  }
}

void GncP16_25UpdateStateTimerExpiry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = g_GncPStateInfo;
  byte_2A13EC504 = 0;
  switch(g_GncPStateInfo)
  {
    case 0:
      GncP16_10StopME(1, 0, a3);
      break;
    case 1:
    case 3:
    case 5:
    case 11:
    case 16:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NoAck State,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 1298, g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP04_21SendClearGnssAck(0);
      GncP04_19SendPosEvntResp(4);
      GncP16_21ChkFWActRspPend(0);
      dword_2A13EC4F4 = 0;
      byte_2A13EC4F0 = 0;
      if ((g_GncPStateInfo & 0xFD) == 1)
      {
        v5 = 4;
      }

      else
      {
        v5 = 0;
      }

      Hal_GnssBaseBandReset(v5);
      break;
    case 2:
      LOBYTE(g_GncPStateInfo) = 4;
      dword_2A13EC4F4 = 0;
      byte_2A13EC4F0 = 0;
      break;
    case 4:
    case 6:
    case 9:
    case 10:
    case 15:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerExp NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_25UpdateStateTimerExpiry", g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      break;
    case 7:
    case 8:
    case 14:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No ME data, LastReadMEData,%u, WDTExpiryCounter,%d\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", g_GncPMeData, byte_2A13EC500);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      if (byte_2A13EC500 == 6)
      {
        byte_2A13EC500 = 0;
        Hal_GnssBaseBandReset(3);
      }

      else
      {
        GncP16_01StopStateHndlrTimer();
        if ((byte_2A13EC504 & 1) == 0)
        {
          GncP16_02StartStateHndlrTimer(0x5DCu);
        }
      }

      ++byte_2A13EC500;
      break;
    default:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 262, g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP16_17HandleInvalidState();
  }

  if (v3 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP16_25UpdateStateTimerExpiry", 261, v3, g_GncPStateInfo);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void GncP16_26UpdateStateMEDataRcvd(void)
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  v1 = g_GncPStateInfo;
  if (BYTE5(g_GncPStateInfo) == 1)
  {
    if (byte_2A13EC4F8 == 1)
    {
      v2 = dword_2A13EC4FC;
      if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2 < 0x61A9)
      {
        v4 = dword_2A13EC4FC;
        if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v4 < 0x1389 || word_2A13C3B66 != 200)
        {
          goto LABEL_9;
        }

        v3 = 500;
      }

      else
      {
        BYTE5(g_GncPStateInfo) = 0;
        v3 = 1000;
      }

      HSW_SetFixInterval(v3);
    }

LABEL_9:
    v1 = g_GncPStateInfo;
  }

  if (v1 <= 7)
  {
    if (v1 <= 3)
    {
      if (v1 != 2)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }

    if (v1 <= 5)
    {
      if (v1 != 4)
      {
LABEL_20:
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEData NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", g_GncPStateInfo);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        goto LABEL_49;
      }

LABEL_48:
      GncP16_13CheckStopME(0);
      goto LABEL_49;
    }

    if (v1 != 6)
    {
      if (!GncP16_12IsAwakeFGStateReq())
      {
        GncP16_13CheckStopME(0);
      }

      byte_2A13EC500 = 0;
      GncP16_01StopStateHndlrTimer();
      if (byte_2A13EC504)
      {
        goto LABEL_49;
      }

LABEL_44:
      GncP16_02StartStateHndlrTimer(0x5DCu);
      goto LABEL_49;
    }

    LOBYTE(g_GncPStateInfo) = 7;
    GncP04_19SendPosEvntResp(8);
LABEL_43:
    GncP16_01StopStateHndlrTimer();
    if (byte_2A13EC504)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  if (v1 > 10)
  {
    if ((v1 - 14) >= 3 && v1 != 11)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", 262, g_GncPStateInfo);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP16_17HandleInvalidState();
    }

    goto LABEL_20;
  }

  if (v1 == 8)
  {
    HSW_SetFixInterval(0x3E8u);
    if (!GncP16_12IsAwakeFGStateReq())
    {
      if (BYTE4(g_GncPStateInfo))
      {
        GncP16_04RestartMEWdt();
        goto LABEL_49;
      }

      GncP16_01StopStateHndlrTimer();
      goto LABEL_48;
    }

    LOBYTE(g_GncPStateInfo) = 7;
    goto LABEL_43;
  }

  if (v1 == 9)
  {
    if (BYTE2(g_GncPStateInfo))
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (qword_2A1454210)
  {
    if (*qword_2A1454210)
    {
      if (byte_2A13EC4F0 != 1 || (v7 = dword_2A13EC4F4, (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v7 >= 0xC9))
      {
        GncP16_01StopStateHndlrTimer();
        GncP16_10StopME(1, 0, v8);
        if ((BYTE3(g_GncPStateInfo) & 1) != 0 || (BYTE4(g_GncPStateInfo) & 1) != 0 || BYTE2(g_GncPStateInfo))
        {
          LOBYTE(g_GncPStateInfo) = 11;
        }
      }
    }
  }

LABEL_49:
  if (v0 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP16_26UpdateStateMEDataRcvd", 261, v0, g_GncPStateInfo);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void GncP16_27UpdateStateClearNVReqRcvd(const char *__src, size_t __n, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = g_GncPStateInfo;
  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_18;
  }

  if (((1 << g_GncPStateInfo) & 0x1083F) != 0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: state added %hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_27UpdateStateClearNVReqRcvd", g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    goto LABEL_5;
  }

  if (((1 << g_GncPStateInfo) & 0xC640) != 0)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ClearNV NotHandled in State,%hhu\n");
LABEL_9:
    gnssOsa_PrintLog(__str, 4, 1, 0);
    goto LABEL_10;
  }

  if (((1 << g_GncPStateInfo) & 0x180) == 0)
  {
LABEL_18:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP16_27UpdateStateClearNVReqRcvd", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (!GncP16_15CheckStopMEClearReq(__src, __n, a3))
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ClearNV NotHandled GPS running State,%hhu\n");
    goto LABEL_9;
  }

LABEL_5:
  GncP16_06ClearNVStore(__src, __n);
LABEL_10:
  if (v3 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Reset,%s\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP16_27UpdateStateClearNVReqRcvd", 261, v3, g_GncPStateInfo, __src);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void GncP16_06ClearNVStore(const char *__src, size_t __n)
{
  v6 = *MEMORY[0x29EDCA608];
  if (__n <= 0xF)
  {
    v2 = qword_2A1454220;
    if (qword_2A1454220)
    {
      *v4 = 0;
      v5 = 0;
      strncpy_s(v4, 0x10u, __src, __n);
      GN_GPS_Clear_NV_Data(v2, v4);
      bzero(g_GncP_PEUpdate, 0x1900uLL);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void GncP16_28UpdateStateResetStatus(int a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = g_GncPStateInfo;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_28UpdateStateResetStatus", g_GncPStateInfo, a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        if (g_GncPStateInfo != 15 || g_LbsOsaTrace_Config == 0)
        {
          goto LABEL_30;
        }

        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HW Error\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP16_28UpdateStateResetStatus", 1308);
        v9 = 1;
LABEL_28:
        gnssOsa_PrintLog(__str, v9, 1, 0);
        goto LABEL_30;
      }

      if (a1 != 5)
      {
LABEL_19:
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_30;
        }

        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_28UpdateStateResetStatus", 770, a1);
        v9 = 2;
        goto LABEL_28;
      }

      if (!g_GncPStateInfo)
      {
        GncP16_10StopME(1, 0, a3);
        goto LABEL_30;
      }

      if (g_GncPStateInfo != 15)
      {
        goto LABEL_30;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HW Ready\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_28UpdateStateResetStatus", 1307);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

LABEL_22:
      GncP16_11StartME(1);
      goto LABEL_30;
    }

    v7 = 15;
LABEL_18:
    LOBYTE(g_GncPStateInfo) = v7;
    GncP04_19SendPosEvntResp(5);
    goto LABEL_30;
  }

  if (!a1)
  {
    v7 = 14;
    goto LABEL_18;
  }

  if (a1 == 1)
  {
    if (g_GncPStateInfo != 14)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if (a1 != 2)
  {
    goto LABEL_19;
  }

  if (g_GncPStateInfo == 14)
  {
    LOBYTE(g_GncPStateInfo) = 15;
  }

LABEL_30:
  if (v4 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncP16_28UpdateStateResetStatus", 261, v4, g_GncPStateInfo, a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void GncP16_31UpdateStateMEPowerState(unsigned int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  g_DeRegGnssCount = 0;
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      goto LABEL_4;
    }

    if (g_GncPStateInfo == 1)
    {
      if ((a1 & 0xFFFFFFFB) == 3)
      {
        LOBYTE(g_GncPStateInfo) = 2;
        dword_2A13EC4F4 = 0;
        byte_2A13EC4F0 = 0;
        GncP16_01StopStateHndlrTimer();
        SleepTimeout = HSW_GetSleepTimeout();
        if (SleepTimeout)
        {
          GncP16_02StartStateHndlrTimer(1000 * SleepTimeout);
        }

        goto LABEL_34;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_34;
      }

      bzero(__str, 0x3C6uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Expected,SLEEP,MEResp,%hhu\n", v11);
LABEL_33:
      v4 = 2;
LABEL_6:
      gnssOsa_PrintLog(__str, v4, 1, 0);
      goto LABEL_34;
    }

    if (g_GncPStateInfo == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_23:
    if (g_GncPStateInfo == 3)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB0) != 0)
      {
        LOBYTE(g_GncPStateInfo) = 4;
        dword_2A13EC4F4 = 0;
        byte_2A13EC4F0 = 0;
        GncP16_01StopStateHndlrTimer();
        goto LABEL_34;
      }

      goto LABEL_29;
    }

LABEL_44:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP16_31UpdateStateMEPowerState", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (((1 << g_GncPStateInfo) & 0xC7D0) != 0)
  {
LABEL_4:
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEPowerState,%hhu NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_31UpdateStateMEPowerState", a1, g_GncPStateInfo);
    v4 = 4;
    goto LABEL_6;
  }

  if (((1 << g_GncPStateInfo) & 0x820) == 0)
  {
    if (g_GncPStateInfo == 16)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
      {
        GncP04_19SendPosEvntResp(3);
        GncP16_21ChkFWActRspPend(1);
        GncP04_21SendClearGnssAck(1);
        dword_2A13EC4F4 = 0;
        byte_2A13EC4F0 = 0;
        v5 = 0;
        goto LABEL_22;
      }

LABEL_29:
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_34;
      }

      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Expected,COMA,MEResp,%hhu\n", v12);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
  {
    GncP04_19SendPosEvntResp(3);
    GncP16_21ChkFWActRspPend(1);
    GncP04_21SendClearGnssAck(1);
    dword_2A13EC4F4 = 0;
    byte_2A13EC4F0 = 0;
    v5 = 1;
LABEL_22:
    GncP16_11StartME(v5);
    goto LABEL_34;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Expected,SLEEP COMA,MEResp,%hhu\n", v13);
    goto LABEL_33;
  }

LABEL_34:
  if (v2 != g_GncPStateInfo)
  {
    if (g_GncPStateInfo == 4 || g_GncPStateInfo == 2)
    {
      GncP04_21SendClearGnssAck(1);
      GncP16_21ChkFWActRspPend(1);
      GncP04_19SendPosEvntResp(3);
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,MEPowerState,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP16_31UpdateStateMEPowerState", 261, v2, g_GncPStateInfo, a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void GncP16_33HandleFwActiveReq(int a1, int a2)
{
  v3 = a1;
  v13 = *MEMORY[0x29EDCA608];
  v4 = g_GncPStateInfo;
  v5 = g_GncPStateInfo;
  switch(a2)
  {
    case 3:
      if (a1)
      {
        v6 = BYTE2(g_GncPStateInfo) | 4;
      }

      else
      {
        v6 = BYTE2(g_GncPStateInfo) & 0xFB;
      }

      goto LABEL_15;
    case 2:
      if (a1)
      {
        v6 = BYTE2(g_GncPStateInfo) | 2;
      }

      else
      {
        v6 = BYTE2(g_GncPStateInfo) & 0xFD;
      }

      goto LABEL_15;
    case 1:
      if (a1)
      {
        v6 = BYTE2(g_GncPStateInfo) | 1;
      }

      else
      {
        v6 = BYTE2(g_GncPStateInfo) & 0xFE;
      }

LABEL_15:
      BYTE2(g_GncPStateInfo) = v6;
      goto LABEL_16;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP16_33HandleFwActiveReq", 770);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    v5 = g_GncPStateInfo;
  }

LABEL_16:
  if (v5 > 6)
  {
    if (v5 <= 0x10)
    {
      if (((1 << v5) & 0x1CC00) != 0)
      {
        goto LABEL_45;
      }

      if (v5 == 8)
      {
        if (BYTE2(g_GncPStateInfo))
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (v5 == 9)
      {
        if (BYTE2(g_GncPStateInfo))
        {
          goto LABEL_45;
        }

        if ((a2 & 0xFFFFFFFD) == 1)
        {
          LOBYTE(g_GncPStateInfo) = 7;
        }

        goto LABEL_44;
      }
    }

    if (v5 == 7)
    {
      if (BYTE2(g_GncPStateInfo) || GncP16_12IsAwakeFGStateReq())
      {
        goto LABEL_45;
      }

LABEL_44:
      GncP16_13CheckStopME(0);
      goto LABEL_45;
    }

LABEL_56:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_33HandleFwActiveReq", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (v5 > 2)
  {
    if ((v5 - 5) < 2)
    {
      goto LABEL_45;
    }

    if (v5 == 3)
    {
      goto LABEL_33;
    }

    if (v5 == 4)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

  if (!v5)
  {
    if (!BYTE2(g_GncPStateInfo))
    {
      goto LABEL_45;
    }

    LOBYTE(g_GncPStateInfo) = 9;
    if (a2 != 2)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v5 != 1)
  {
LABEL_31:
    if (BYTE2(g_GncPStateInfo))
    {
      v8 = 9;
LABEL_35:
      LOBYTE(g_GncPStateInfo) = v8;
      goto LABEL_45;
    }

    goto LABEL_45;
  }

LABEL_33:
  if (BYTE2(g_GncPStateInfo))
  {
    v8 = 5;
    goto LABEL_35;
  }

LABEL_45:
  if (v4 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FWAct,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP16_33HandleFwActiveReq", 261, v4, g_GncPStateInfo, BYTE2(g_GncPStateInfo));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((v3 & 1) == 0)
  {
    if ((g_GncPStateInfo & 0xFD) != 1)
    {
      goto LABEL_53;
    }

    if (a2 == 3)
    {
      BYTE8(g_GncPStateInfo) = 1;
      goto LABEL_54;
    }

    if (a2 == 1)
    {
      BYTE7(g_GncPStateInfo) = 1;
    }

    else
    {
LABEL_53:
      GncP03_13SendStopFWActResp(1, a2);
    }
  }

LABEL_54:
  v10 = *MEMORY[0x29EDCA608];
}

BOOL GncP16_34HandleRestartAcq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = g_GncPStateInfo;
  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_18;
  }

  if (((1 << g_GncPStateInfo) & 0xCE7F) != 0)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_8;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NotHandled State,%hhu\n");
    goto LABEL_5;
  }

  if (((1 << g_GncPStateInfo) & 0x180) != 0)
  {
    GncP16_10StopME(1, 0, a3);
    LOBYTE(g_GncPStateInfo) = 16;
    goto LABEL_8;
  }

  if (g_GncPStateInfo != 16)
  {
LABEL_18:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP16_34HandleRestartAcq", 262, g_GncPStateInfo);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", v10);
LABEL_5:
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_8:
  v4 = g_GncPStateInfo;
  if (v3 != g_GncPStateInfo && g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_34HandleRestartAcq", 261, v3, g_GncPStateInfo);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = v3 != v4;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP16_51MEPowerStateInd(char a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP16_51MEPowerStateInd", 1327, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND =>GNCP Stat,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_51MEPowerStateInd", v3[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8655107, v3);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t GncP16_52HandleMEPowerStateInd(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_52HandleMEPowerStateInd", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncP16_31UpdateStateMEPowerState(*(a1 + 12));
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP16_52HandleMEPowerStateInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP16_54HandleMEWakeResp(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP Resp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_54HandleMEWakeResp", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (*(a1 + 12))
    {
      if (g_GncPStateInfo == 6)
      {
        LOBYTE(g_GncPStateInfo) = 7;
        GncP04_19SendPosEvntResp(8);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v3 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_54HandleMEWakeResp", 261, 6, g_GncPStateInfo);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        GncP16_01StopStateHndlrTimer();
        if ((byte_2A13EC504 & 1) == 0)
        {
          GncP16_02StartStateHndlrTimer(0x5DCu);
        }
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEWake Error,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP16_54HandleMEWakeResp", *(a1 + 12));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP04_19SendPosEvntResp(9);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_54HandleMEWakeResp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP16_55HandleStartFwActiveInd(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_55HandleStartFwActiveInd", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncP16_33HandleFwActiveReq(1, *(a1 + 12));
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP16_55HandleStartFwActiveInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP16_56HandleStopFwActiveReq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_56HandleStopFwActiveReq", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncP16_33HandleFwActiveReq(0, *(a1 + 12));
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP16_56HandleStopFwActiveReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP16_99DeInitStateHndlr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_GncPStateInfo - 7 <= 1)
  {
    GncP16_10StopME(1, 0, a3);
  }

  if (byte_2A13EC504 == 1)
  {
    v3 = *MEMORY[0x29EDCA608];

    AgpsFsmStopTimer(8656390);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

uint64_t NK_Tunnel_Assist(uint64_t a1, float64x2_t *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  *v24 = 0u;
  v4 = &a2[3763].f64[1];
  memset(v22, 0, sizeof(v22));
  if (Core_Get_ExtA_TunnelEP(30000, v22))
  {
    v5 = a1 + 24576;
    *(v4 + 2188) = 1;
    v6 = v22[0];
    v4[550] = HIDWORD(a2->f64[0]) - LODWORD(v22[0]);
    if ((*(a1 + 27250) & 1) == 0)
    {
      result = 0;
      v8 = 38;
      goto LABEL_7;
    }

    if (v6 == *(a1 + 27200))
    {
      result = 0;
      v8 = 39;
LABEL_7:
      v4[548] = v8;
      goto LABEL_8;
    }

    if (BYTE3(a2[423].f64[0]) < 3u)
    {
      result = 0;
      v8 = 40;
      goto LABEL_7;
    }

    LOWORD(v10) = WORD4(v23);
    v12 = *(&v22[1] + 1);
    v11 = *&v23;
    if (!WORD4(v23))
    {
      if (vabdd_f64(*(&v22[1] + 1), *&v23) >= 1.0)
      {
        LOWORD(v10) = 0;
      }

      else
      {
        v12 = *(&v22[1] + 1) + *(&v22[1] + 1);
        v11 = *&v23 * 0.5;
        v10 = *(a1 + 27328);
        if (v10 > 179)
        {
          LOWORD(v10) = v10 - 180;
        }
      }
    }

    v13 = v10;
    v14 = BYTE10(v23);
    v15 = *v24;
    v20 = *(v22 + 8);
    v21 = v11;
    EvLog_v("NK_Tunnel_Assist: Applying %d LL %g %g %d %d %d H %d %f %d", v6, *(v22 + 1), *&v22[1], v12, v11, v10, BYTE10(v23), v24[0], v24[1]);
    *v4 = 1;
    *(v4 + 1) = 0x300000001;
    v4[3] = 0;
    *(v4 + 16) = 0;
    v16 = LODWORD(a2->f64[0]);
    v4[5] = LODWORD(a2->f64[0]);
    v17.f64[0] = v21;
    a2[3765] = vmulq_f64(v20, vdupq_n_s64(0x3F91DF46A2529D44uLL));
    *(v4 + 6) = v12 * v12;
    v17.f64[1] = v13;
    v18.f64[0] = v21;
    v18.f64[1] = 0.0174532925;
    v19 = vmulq_f64(v17, v18);
    a2[3767] = v19;
    *(v4 + 9) = v12 * v12;
    *(v4 + 10) = *&v19.f64[0];
    *(v4 + 13) = 0x4039000000000000;
    if (v14 == 1)
    {
      *(v4 + 128) = 1;
      *(v4 + 33) = 0x200000001;
      v4[35] = 0;
      *(v4 + 144) = 0;
      v4[37] = v16;
      *(v4 + 19) = v15;
      *(v4 + 20) = *(&v15 + 1) * *(&v15 + 1);
      *(v4 + 21) = *(&v15 + 1) * *(&v15 + 1);
      *(v4 + 23) = 0x4039000000000000;
    }

    *(v5 + 2624) = v6;
    result = 1;
  }

  else
  {
    result = 0;
    *(v4 + 2188) = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

double GLON_RK_CalcAccel(double **a1, double *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[2] * (*a1)[2];
  v6 = 1.0 / sqrt(v4 * v4 + (*a1)[1] * (*a1)[1] + v5);
  v7 = v6 * v6;
  v8 = v6 * (v6 * v6) * -3.9860044e14;
  v9 = v7 * 6.60628282e10;
  v10 = 1.0 - (v7 + v7 * 4.0) * v5;
  v11 = v10 + 2.0;
  v12 = v8 * (v9 * v10 + 1.0) + 0.00000000531749412;
  v13 = a1[2];
  *a2 = *v13 + v3[1] * 0.0001458423 + v4 * v12;
  a2[1] = v13[1] + *v3 * -0.0001458423 + v2[1] * v12;
  result = v13[2] + v2[2] * (v8 * (v9 * v11 + 1.0));
  a2[2] = result;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_RungeKutta4(double **a1, signed int a2)
{
  v58 = *MEMORY[0x29EDCA608];
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  *&v38[16] = 0u;
  v39 = 0u;
  v37 = 0u;
  *v38 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v6 = **a1;
  *v38 = (*a1)[2];
  v37 = v6;
  v7 = *(v4 + 2);
  *&v38[8] = *v4;
  *&v38[24] = v7;
  v8 = a1[2];
  v9 = *v8;
  v40 = *(v8 + 2);
  v39 = v9;
  v10 = *(v8 + 2);
  v54 = *v8;
  v49 = v9;
  v57 = 0;
  v31[0] = &v51;
  v31[1] = &v52 + 1;
  v31[2] = &v54;
  v29[0] = &v46;
  v29[1] = &v47 + 1;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v29[2] = &v49;
  v27[0] = &v41;
  v27[1] = &v42 + 1;
  v27[2] = &v44;
  v25[0] = &v37;
  v25[1] = &v38[8];
  v25[2] = &v39;
  v55 = v10;
  v50 = v40;
  v44 = v9;
  v45 = v40;
  *(a1 + 6) += a2;
  GLON_RK_CalcAccel(v25, v36);
  *(&v56[1] + 8) = *&v38[8];
  *(&v56[2] + 1) = *&v38[24];
  v11 = a2;
  v12 = vcvtd_n_f64_s32(a2, 1uLL);
  for (i = 5; i != 2; --i)
  {
    v14 = (&v51 + i * 8);
    *(v14 - 3) = v36[i] + v12 * *(v56 + i * 8);
    *v14 = *&v38[i * 8 - 16] + v12 * v35[i];
  }

  GLON_RK_CalcAccel(v31, v35);
  for (j = 5; j != 2; --j)
  {
    v16 = (&v46 + j * 8);
    *(v16 - 3) = v36[j] + v12 * *(&v51 + j * 8);
    *v16 = *&v38[j * 8 - 16] + v12 * v34[j];
  }

  GLON_RK_CalcAccel(v29, v34);
  for (k = 5; k != 2; --k)
  {
    v18 = (&v41 + k * 8);
    *(v18 - 3) = v36[k] + v11 * *(&v46 + k * 8);
    *v18 = *&v38[k * 8 - 16] + v11 * v33[k];
  }

  GLON_RK_CalcAccel(v27, v33);
  v19 = *&v56[2];
  *v5 = *&v37 + v11 * 0.166666667 * (*(&v42 + 1) + *(&v56[1] + 1) + (*(&v52 + 1) + *(&v47 + 1)) * 2.0);
  v5[1] = *(&v37 + 1) + v11 * 0.166666667 * (*&v43 + v19 + (*&v53 + *&v48) * 2.0);
  v5[2] = *v38 + v11 * 0.166666667 * (*(&v43 + 1) + *(&v56[2] + 1) + (*(&v53 + 1) + *(&v48 + 1)) * 2.0);
  v20 = v35[1];
  v21 = v34[1];
  v22 = v36[1];
  v23 = v33[1];
  *v4 = *&v38[8] + v11 * 0.166666667 * (v33[0] + v36[0] + (v35[0] + v34[0]) * 2.0);
  v4[1] = *&v38[16] + v11 * 0.166666667 * (v23 + v22 + (v20 + v21) * 2.0);
  v4[2] = *&v38[24] + v11 * 0.166666667 * (v33[2] + v36[2] + (v35[2] + v34[2]) * 2.0);
  GLON_RK_CalcAccel(a1, v8);
  v24 = *MEMORY[0x29EDCA608];
}

void NK_Heading(uint64_t a1, int *a2, int a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = a2 + 19952;
  v5 = a2 + 15260;
  v6 = a1 + 24576;
  v7 = *(a1 + 27250);
  if (*(a1 + 27250))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.5;
  }

  v9 = *(a2 + 232);
  *(a2 + 9978) = v9;
  if (*(a1 + 27120) <= *(a1 + 16) && a2[468] == 1)
  {
    v11 = *(a1 + 148);
    if (v11 >= *(a1 + 152))
    {
      v11 = *(a1 + 152);
    }

    if (v11 >= *(a1 + 156))
    {
      v11 = *(a1 + 156);
    }

    if (v11 >= 0xB)
    {
      *(a1 + 27288) = 0;
      v12 = *(a1 + 27204);
      if (v12 == 3)
      {
        a2[19960] = 2;
        v13 = *(a1 + 27276);
        *(a1 + 27304) = *(a2 + 213);
        *(a1 + 27312) = *(a2 + 214);
        *(a1 + 27320) = 1;
        if (!v13)
        {
          *(a1 + 27276) = 1;
        }

        goto LABEL_99;
      }

      v20 = *(a2 + 228) * *(a2 + 228);
      v21 = *(a2 + 227) * *(a2 + 227);
      if (v20 < 0.000001 && v21 < 0.000001)
      {
        v21 = 0.000001;
        v20 = 0.000001;
      }

      v22 = fmin(sqrt(57.2957795 / (v21 + v20) * ((*(a2 + 7700) * v20 + *(a2 + 7701) * v21) * (57.2957795 / (v21 + v20)))), 180.0);
      *(a2 + 9977) = v22;
      Comp_Track8(a2 + 227);
      *v4 = v23;
      if (v22 < 30.0)
      {
        v24 = v7;
      }

      else
      {
        v24 = 0;
      }

      if (((a3 < 6) & v24) != 0)
      {
        v25 = 2.0;
      }

      else
      {
        v25 = 4.0;
      }

      v26 = v23 - v9;
      if (v23 - v9 >= 180.0)
      {
        v27 = -360.0;
      }

      else
      {
        if (v26 >= -180.0)
        {
LABEL_31:
          v28 = *(a2 + 231);
          if (*(v5 + 1308) != 1 || a3 <= 5 && (*(v5 + 1181) & 1) == 0)
          {
            if (v28 > v25 && v22 < 60.0)
            {
              *(a1 + 27280) = v23;
              v30 = 3;
              goto LABEL_90;
            }

            if (v12 == 2 && v7 && fabs(v26) > 90.0 && v22 > 45.0)
            {
              *(a1 + 27280) = v9;
              *(v4 + 3) = 0;
              v30 = 6;
              v23 = v9;
              goto LABEL_90;
            }

            if (v28 > 4.0 && v22 >= 60.0)
            {
              v31 = 1.0 / (v22 / 60.0 * (v22 / 60.0));
              *(v4 + 3) = v31;
              v23 = v9 + v31 * v26;
              *(a1 + 27280) = v23;
              v32 = 360.0;
              if (v23 >= 360.0)
              {
                v32 = -360.0;
              }

              else if (v23 >= 0.0)
              {
                goto LABEL_72;
              }

              v23 = v23 + v32;
              *(a1 + 27280) = v23;
LABEL_72:
              v30 = 4;
              goto LABEL_90;
            }

            if (v28 > v8)
            {
              v35 = 1.0;
              if (v22 > 10.0)
              {
                v36 = v22 > 40.0 || v28 <= 1.0;
                if (v36)
                {
                  v35 = fmin(0.93 / fmax(fabs(v26), 2.22044605e-16) + 0.07, 0.25);
                }

                else
                {
                  v35 = 0.25 / (v22 / 40.0);
                }
              }

              *(v4 + 3) = v35;
              v23 = v9 + v35 * v26;
              *(a1 + 27280) = v23;
              v42 = 360.0;
              if (v23 >= 360.0)
              {
                v42 = -360.0;
              }

              else if (v23 >= 0.0)
              {
                goto LABEL_89;
              }

              v23 = v23 + v42;
              *(a1 + 27280) = v23;
LABEL_89:
              v30 = 5;
              goto LABEL_90;
            }

            v39 = v23 - *(v5 + 311);
            if (v39 >= 180.0)
            {
              v40 = -360.0;
            }

            else
            {
              if (v39 >= -180.0)
              {
                goto LABEL_75;
              }

              v40 = 360.0;
            }

            v39 = v39 + v40;
LABEL_75:
            if ((a3 - 5) >= 3 && *(v5 + 1084) >= 8u && v22 < 10.0 && *(v5 + 2776) == 1 && fabs(v39) < 10.0 && *(v5 + 289) < 0.1)
            {
              v30 = 3;
              v41 = 1.0;
            }

            else
            {
              v30 = 6;
              v41 = 0.0;
              v23 = v9;
            }

            *(a1 + 27280) = v23;
            *(v4 + 3) = v41;
            goto LABEL_90;
          }

          v33 = v23 - *v5;
          if (v33 >= 180.0)
          {
            v34 = -360.0;
          }

          else
          {
            if (v33 >= -180.0)
            {
LABEL_62:
              if (v28 >= v25)
              {
                v38 = fabs(v33);
                v36 = v38 <= 45.0;
                v37 = 15.0 / v38;
                if (v36)
                {
                  v37 = 0.0;
                }
              }

              else
              {
                v37 = v28 * 0.1;
              }

              v23 = *v5 + v37 * v33;
              *(a1 + 27280) = v23;
              *(v4 + 3) = v37;
              v30 = 7;
LABEL_90:
              v4[8] = v30;
              *(v6 + 2700) = 3;
              v43 = *a2;
              *(v6 + 2720) = *a2;
              if (v22 < 10.0 && *(v5 + 1085) >= 6u)
              {
                *(a1 + 27328) = v23;
                *(v6 + 2760) = v43;
              }

              v44 = v23 - v9;
              *(a1 + 27288) = v44;
              if (v44 >= 180.0)
              {
                v45 = -360.0;
              }

              else
              {
                if (v44 >= -180.0)
                {
LABEL_98:
                  *(a1 + 27304) = *(a2 + 213);
                  *(a1 + 27312) = *(a2 + 214);
                  *(v6 + 2744) = 1;
LABEL_99:
                  *(a2 + 232) = *(a1 + 27280);
                  goto LABEL_17;
                }

                v45 = 360.0;
              }

              *(a1 + 27288) = v44 + v45;
              goto LABEL_98;
            }

            v34 = 360.0;
          }

          v33 = v33 + v34;
          goto LABEL_62;
        }

        v27 = 360.0;
      }

      v26 = v26 + v27;
      goto LABEL_31;
    }
  }

  Comp_Track8(a2 + 227);
  *(a2 + 232) = v14;
  v15 = *(a2 + 228) * *(a2 + 228);
  v16 = *(a2 + 227) * *(a2 + 227);
  if (v15 < 0.000001 && v16 < 0.000001)
  {
    v16 = 0.000001;
    v15 = 0.000001;
  }

  v17 = sqrt(57.2957795 / (v16 + v15) * ((*(v5 + 70) * v15 + *(v5 + 71) * v16) * (57.2957795 / (v16 + v15))));
  *v4 = v14;
  *(v4 + 1) = fmin(v17, 180.0);
  v4[8] = 1;
LABEL_17:
  v18 = *MEMORY[0x29EDCA608];
}

uint64_t Kep_Check_Almanac(int a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 16);
  if (a1 - 255 > v2)
  {
    do
    {
      v2 += 256;
    }

    while (a1 - 255 > v2);
    *(a2 + 16) = v2;
  }

  v3 = *(a2 + 20);
  if (v3 <= 604799)
  {
    v4 = v3 >> 31;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = v5 & 0xFFFFFFFE;
  if ((v5 & 0xFFFFFFFE) == 6 || (v8 = 4800.0, v5 == 4) && (v6 - 59) <= 0xCAu)
  {
    v8 = *"";
  }

  if (v5 == 5)
  {
    goto LABEL_14;
  }

  if (v5 == 4)
  {
    if ((v6 - 6) < 0x35)
    {
LABEL_14:
      v9 = *(a2 + 72);
      if (v9 < v8)
      {
        v4 |= 4u;
      }

      if (v9 > 7000.0)
      {
        v4 |= 8u;
      }

LABEL_18:
      v10 = 0.1;
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v7 == 6)
  {
LABEL_28:
    v13 = 6700.0;
    goto LABEL_32;
  }

  v13 = 5800.0;
LABEL_32:
  v14 = *(a2 + 72);
  if (v14 < v8)
  {
    v4 |= 4u;
  }

  if (v14 > v13)
  {
    v4 |= 8u;
  }

  if (v5 == 3)
  {
    v17 = 0.03;
    if (((v6 - 14) & 0xFB) == 0)
    {
      v17 = 0.25;
    }

    v18 = *(a2 + 40);
    v19 = v4 | 0x10;
    if (v18 >= 0.0)
    {
      v19 = v4;
    }

    if (v18 <= v17)
    {
      v4 = v19;
    }

    else
    {
      v4 = v19 | 0x20;
    }

    v12 = 0.0;
    goto LABEL_53;
  }

  if (v5 == 4)
  {
    if ((v6 - 6) >= 0x35)
    {
      v15 = *(a2 + 40);
      v16 = v4 | 0x10;
      if (v15 >= 0.0)
      {
        v16 = v4;
      }

      if (v15 <= 0.03)
      {
        v4 = v16;
      }

      else
      {
        v4 = v16 | 0x20;
      }

      goto LABEL_44;
    }

    goto LABEL_18;
  }

  v10 = 0.03;
LABEL_19:
  v11 = *(a2 + 40);
  if (v11 < 0.0)
  {
    v4 |= 0x10u;
  }

  if (v11 > v10)
  {
    v4 |= 0x20u;
  }

  v12 = 0.000000314159265;
  if (v5 != 5)
  {
    if (v5 == 4)
    {
      if ((v6 - 6) < 0x35)
      {
        goto LABEL_53;
      }

LABEL_44:
      v12 = 0.000000314159265;
      goto LABEL_53;
    }

    v12 = 0.0;
    if (v7 == 6)
    {
      goto LABEL_44;
    }
  }

LABEL_53:
  v20 = *(a2 + 56);
  v21 = v4 | 0x40;
  if (v20 >= -0.00000198862815)
  {
    v21 = v4;
  }

  if (v20 <= v12)
  {
    result = v21;
  }

  else
  {
    result = v21 | 0x80;
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Calc_Corrns(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  v32 = *MEMORY[0x29EDCA608];
  v9 = a2[5] + 43200.0;
  v10 = a2[7];
  v11 = __sincos_stret(a2[8]);
  v31 = v10 * v11.__sinval;
  v29 = v10 * v11.__cosval;
  v12 = a2[4] + 1.09955743;
  v13 = __sincos_stret(a4);
  v14 = __sincos_stret(a4 + a4);
  v15 = __sincos_stret(a4 * 3.0);
  v16 = __sincos_stret(a4 * 4.0);
  v17 = __sincos_stret(v12);
  v18 = v17.__sinval * v17.__sinval * -1.5 + 1.0;
  v19.f64[0] = 6378.136 / a3 * (6378.136 / a3);
  v20 = v19.f64[0] * 0.00162393863 * v18;
  v21 = v19.f64[0] * -0.000405984656 * (v17.__sinval * v17.__sinval);
  v22.f64[0] = v13.__sinval * (v29 * 3.5) + 6.28318531 / v9 * a5 + v31 * -2.5 * v13.__cosval + v14.__sinval * -0.5;
  v22.f64[1] = v14.__cosval + v13.__sinval * v31 - v29 * v13.__cosval;
  v23 = vmlaq_f64(vmlaq_f64(v22, v15, vmulq_n_f64(xmmword_299051CC0, v29)), vextq_s8(v15, v15, 8uLL), vmulq_n_f64(xmmword_299051CD0, v31));
  v24 = v19.f64[0] * 0.00324787725 * v18;
  v25 = v19.f64[0] * 0.00162393863 * (v17.__cosval * v17.__cosval);
  *a1 = (v19.f64[0] * 0.00162393863 * (v17.__sinval * v17.__sinval) * (v14.__cosval + v13.__cosval * (v29 * -0.5) + v31 * 0.5 * v13.__sinval + v29 * 3.5 * v15.__cosval + v31 * 3.5 * v15.__sinval) + v24 * (v13.__sinval * v31 + v29 * v13.__cosval)) * a3;
  *(a1 + 8) = v21 * (v13.__sinval + v15.__sinval * -2.33333333 + v29 * 5.0 * v14.__sinval + v29 * -8.5 * v16.__sinval + v31 * 8.5 * v16.__cosval + v31 * v14.__cosval) + v20 * (v13.__sinval + 6.28318531 / v9 * v29 * a5 + v29 * 1.5 * v14.__sinval - v31 * 1.5 * v14.__cosval) + v25 * (v14.__sinval * (v29 * -0.5) + 6.28318531 / v9 * v29 * a5);
  v19.f64[1] = v19.f64[0] * 0.000811969313;
  v26 = &qword_299051C90;
  *&v27.f64[0] = *&vld1q_dup_f64(v26);
  *(a1 + 16) = v21 * (v31 * -5.0 * v14.__sinval - (v13.__cosval - v15.__cosval * -2.33333333) + v29 * -8.5 * v16.__cosval - v31 * 8.5 * v16.__sinval + v29 * v14.__cosval) + v20 * (v13.__cosval + -(v31 * (6.28318531 / v9)) * a5 + v29 * 1.5 * v14.__cosval + v31 * 1.5 * v14.__sinval) + v25 * (v14.__sinval * (v31 * 0.5) + -(v31 * (6.28318531 / v9)) * a5);
  v27.f64[1] = v17.__sinval;
  *(a1 + 24) = vmulq_f64(vmulq_n_f64(vmulq_f64(v19, v27), v17.__cosval), v23);
  *(a1 + 40) = v19.f64[0] * 0.00487181588 * (v17.__sinval * v17.__sinval) * (v13.__sinval * (v29 * -0.291666667) + v31 * -0.291666667 * v13.__cosval + v31 * -0.680555556 * v15.__cosval + v29 * 0.680555556 * v15.__sinval + v14.__sinval * 0.25) + v24 * (v13.__sinval * (v29 * 1.75) + 6.28318531 / v9 * a5 + v31 * -1.75 * v13.__cosval) + v25 * v23.f64[0];
  v28 = *MEMORY[0x29EDCA608];
}

const void **Pre_Positioning_Update_Wrapper(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  memset(v9, 0, sizeof(v9));
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v10 = 0x200000000;
  v11 = 5;
  v14 = 0;
  *(v13 + 5) = 0;
  v12 = 0;
  v13[0] = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  GNSS_Validate_p_list(a1, "Pre_Positioning_Update_Wrapper: Entry");
  *(a1 + 200) = v4;
  Pre_Positioning(*(a1 + 160), v4, *(a1 + 72), *(a1 + 80), *(a1 + 64), *(a1 + 56), *(a1 + 88), *(a1 + 96), *(a1 + 112), *(a1 + 40), *(a1 + 32));
  *(a1 + 200) = 0;
  result = GNSS_Validate_p_list(a1, "Pre_Positioning_Update_Wrapper:  Exit");
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *NK_Set_Aid_Data(_DWORD *result, int *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a2 + 1864) != 1)
  {
    v3 = result[5] < 5u;
    v4 = &unk_299050620;
    goto LABEL_6;
  }

  if (!result[6784] || a2[5] < 8)
  {
    v3 = result[5] < 5u;
    v4 = &unk_299051CF0;
LABEL_6:
    *(a3 + 8) = v4[v3];
    *(a3 + 32) = 0x4163125300000000;
    v5 = 9999000.0;
    goto LABEL_7;
  }

  if (result[6779] && a2[15481] >= 5 && *(a2 + 7751) < 400.0 && *(a2 + 7752) < 400.0)
  {
    *a3 = *(a2 + 215);
    *(a3 + 16) = *a2;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 7752);
  *(a3 + 8) = v8;
  v9 = result[5];
  v10 = dbl_299051CE0[v9 > 4];
  if (v8 > v10)
  {
    *(a3 + 8) = v10;
  }

  if (v7 && a2[15482] >= 4 && ((v11 = *(a2 + 7759), v9 > 8) ? (v12 = 500000.0) : (v12 = dbl_299051D08[v9]), v11 < v12))
  {
    v13 = *(a2 + 230);
    v14 = *a2;
    *(a3 + 40) = *a2;
    *(a3 + 24) = v13;
    *(a3 + 32) = v11;
    v5 = *(a2 + 7760);
    if (v5 < 5.0 && a2[15553] != 2 && v9 <= 4 && a2[15554] != 2 && *(a2 + 231) > 0.3)
    {
      *(a3 + 48) = *(a2 + 232);
      *(a3 + 64) = v14;
    }
  }

  else
  {
    *(a3 + 32) = *(a2 + 7759);
    v5 = *(a2 + 7760);
  }

LABEL_7:
  *(a3 + 56) = v5;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_PrePos(int a1, int a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, long double a18, double *a19, double a20, double a21, char a22, char *a23, uint64_t a24, int a25, uint64_t a26)
{
  v117 = *MEMORY[0x29EDCA608];
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  memset(v107, 0, sizeof(v107));
  v115[0] = 0;
  *(v115 + 3) = 0;
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  memset(v103, 0, sizeof(v103));
  v106[0] = 0;
  *(v106 + 3) = 0;
  v40 = Comp_CurrState(0x258u, a2, a3, v107, a18, a20);
  result = 0;
  if (!v40)
  {
    goto LABEL_65;
  }

  v95 = a16;
  v96 = a15;
  v97 = Comp_SVrange_Sag_Corr(&v116, v102, a4, &v107[1]);
  Trop_Elev_MapF(a7);
  v43 = v42;
  v101 = 0.0;
  if (!a22 || (Get_SH_Ionospheric_Delay(a4->f64, v107, a24, &v101, a18, 1575420000.0) & 1) == 0)
  {
    v101 = GPS_Klob_Iono_Delay(a19, a6, a7, a23, a18);
  }

  v44 = v43 * a21;
  if (v115[0] == 2)
  {
    v46 = 4;
  }

  else
  {
    v45 = 1.0;
    if (v115[0] != 6)
    {
      goto LABEL_10;
    }

    v46 = 3;
  }

  GPS_L1_Iono_Scale_factor(v46);
LABEL_10:
  v47 = v45 * v101;
  v100 = v45 * v101;
  v48 = v45 * v101 + v44 + v97 + (a9 - *(&v109 + 1)) * 299792458.0;
  if (fabs(v48) >= 2130706430.0)
  {
    result = 0;
  }

  else
  {
    v49 = 0;
    *(a26 + 8) = v48;
    v50 = 0.0;
    do
    {
      v50 = v50 + v116.f64[v49] * *(&v108 + v49 * 8);
      ++v49;
    }

    while (v49 != 3);
    v51 = 0;
    v52 = *&v110;
    *(a26 + 48) = (v50 + *&v110 * -299792458.0) * -5.25503547;
    do
    {
      v102[v51 + 2] = *(&v109 + v51) - *(a5 + 16 + 8 * v51);
      v53 = v51 + 3;
      --v51;
    }

    while (v53 > 1);
    v94 = a13;
    v54 = 0;
    v55 = 0.0;
    do
    {
      v55 = v55 + v116.f64[v54] * v102[v54];
      ++v54;
    }

    while (v54 != 3);
    v56 = 0;
    *(a26 + 24) = (v55 + (a10 - v52) * 299792458.0) * -5.25503547;
    v57 = 0.0;
    do
    {
      v57 = v57 + v116.f64[v56] * *(&v108 + v56 * 8);
      ++v56;
    }

    while (v56 != 3);
    result = Comp_CurrState(0x25Du, a2, a3, v103, a18 + 1.0, a20);
    if (result)
    {
      v92 = Comp_SVrange_Sag_Corr(&v116, v102, a4, &v103[0].f64[1]);
      v58 = 0;
      v59 = 0.0;
      do
      {
        v59 = v59 + v116.f64[v58] * *(v104 + v58 * 8);
        ++v58;
      }

      while (v58 != 3);
      v93 = (v57 - v59) / 0.190293673;
      *(a26 + 40) = v93;
      v60 = a7[4];
      if (v60 >= 30.0)
      {
        v63 = v94;
        if (v60 <= 60.0)
        {
          v61 = a7[1] * a7[1];
          v62 = 1.0 - v61;
        }

        else
        {
          v62 = a7[2] * a7[2];
          v61 = 1.0 - v62;
        }
      }

      else
      {
        v61 = a7[1] * a7[1];
        v62 = 1.0 - v61;
        v63 = v94;
      }

      if ((a25 - 1) > 4)
      {
        v64 = 3025.0;
      }

      else
      {
        v64 = dbl_299051DC0[a25 - 1];
      }

      if (a14 * a14 + v63 * v63 >= v64)
      {
        if (v63 > 10000.0)
        {
          if (v63 <= 100000.0)
          {
            if (v63 <= 50000.0)
            {
              v65 = dbl_299051DB0[v63 > 25000.0];
            }

            else
            {
              v65 = 2000.0;
            }
          }

          else
          {
            v65 = 60000.0;
          }

          a14 = v65 + a14;
        }

        v64 = a14 * (v61 * a14) + v62 * v63 * v63;
      }

      v66 = *(&v110 + 1);
      v67 = v64 + *(&v110 + 1);
      v102[0] = 0.0;
      if (R8_EQ(&v100, v102))
      {
        v68 = 25.0 / (a7[2] * a7[2] * -0.9 + 1.0);
      }

      else
      {
        v68 = v47 * 0.2 * (v47 * 0.2);
      }

      v69 = v67 + v68 + v44 * 0.1 * (v44 * 0.1);
      if (a1 < 1)
      {
        v73 = v69 + 4.0e12;
        v72 = a1;
      }

      else
      {
        v70 = (v97 - v92) * (v97 - v92);
        if (v70 <= 0x2710)
        {
          v70 = 10000;
        }

        v71 = v70;
        v72 = a1;
        v73 = v69 + v71 * g_TOW_Stat_Var95_Table[a1];
      }

      *(a26 + 4) = fmin(sqrt(v73) * 3.0, 4278190080.0);
      v74 = a11 + a10 * g_TOW_stat_Sigma_m_Table[v72];
      v75 = v73 + v74 * v74;
      v76.f64[0] = v75 + a12 * a12 - a11 * a11;
      v76.f64[1] = v75;
      v77 = vsqrtq_f64(v76);
      __asm { FMOV            V2.2D, #3.0 }

      *(a26 + 12) = vmovn_s64(vcvtq_u64_f64(vminnmq_f64(vmulq_f64(v77, _Q2), vdupq_n_s64(0x41EFE00000000000uLL))));
      v83 = v62 * v95 * v95 + v96 * v96 + v61 * a17 * a17 + 4.0;
      if (v83 < 5.0)
      {
        v83 = 5.0;
      }

      if (a1 < 1)
      {
        v85 = 9941543.2;
      }

      else
      {
        v84 = v93 * v93;
        if (v93 * v93 < 0.0025)
        {
          v84 = 0.0025;
        }

        v85 = v84 * ((v66 * 0.0625 + v94 * v94) * 0.000001 + g_TOW_Stat_Var95_Table[v72]);
      }

      v86 = sqrt(v83 + v85);
      if (v86 < 1400000000.0)
      {
        v87 = (v86 * 3.0) + 1;
      }

      else
      {
        v87 = -16777216;
      }

      *(a26 + 32) = v87;
      v88 = sqrt(v85);
      if (v88 < 1400000000.0)
      {
        v89 = (v88 * 3.0) + 1;
      }

      else
      {
        v89 = -16777216;
      }

      *(a26 + 56) = v89;
      *(a26 + 60) = a8;
      if (a8)
      {
        v90 = (*&v112 - *&v113) * 299792458.0;
        *(a26 + 64) = v90;
        if (v115[0] != 6)
        {
          *(a26 + 64) = v90 + v101 * 0.793270321;
        }
      }

      result = 1;
    }
  }

LABEL_65:
  v91 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Last_Asc_Pass(double *a1, double *a2, int a3, uint64_t a4, double a5, double a6)
{
  v24 = *MEMORY[0x29EDCA608];
  v8 = *(a4 + 40) + 43200.0;
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(a4 + 32) + 1.09955743;
  v12 = *(a4 + 48);
  v13 = 1.0 - *(a4 + 56) * *(a4 + 56);
  v14 = a3 - *(a4 + 8);
  if (v14 < -730)
  {
    v14 += 1461;
  }

  if (v14 > 730)
  {
    v14 -= 1461;
  }

  v15 = floor((a5 - v9 + (86400 * v14)) / v8);
  v16 = v9 + v8 * v15 + v12 * (v15 * v15);
  v17 = floor(v16 / 86400.0);
  v18 = ceil(v16 / 86400.0);
  if (v16 / 86400.0 < 0.0)
  {
    v17 = v18;
  }

  v19 = -86400.0;
  v20 = v16 + v17 * -86400.0;
  *a1 = v20;
  v21 = a5 - v20;
  if (v21 < 0.0 || (v19 = 86400.0, v21 >= 86400.0))
  {
    *a1 = v20 + v19;
  }

    ;
  }

  *a2 = i;
  if (i < -3.14159265)
  {
    do
    {
      i = i + 6.28318531;
    }

    while (i < -3.14159265);
    *a2 = i;
  }

  v23 = *MEMORY[0x29EDCA608];
}

uint64_t GM_Get_Min_SNR(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = (a2 - 1);
  if (a2 - 1 < 0)
  {
    v7 = 10;
  }

  else
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = (a1 + 36 * v2 + 4);
    do
    {
      if (Is_Legal(*(v5 - 1)) && (*(v5 + 2) & 8) != 0 && *v5 > v3)
      {
        v3 = *v5;
      }

      v5 -= 36;
    }

    while (v4-- > 1);
    if (v3 <= 0x21u)
    {
      v7 = 10;
    }

    else
    {
      v7 = v3 - 23;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t Centroid_SV_Pos(int (*a1)[3], unsigned int a2, double *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = &(*a1)[2];
  v9 = a2;
  do
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    if (!*(v8 - 1))
    {
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = 0;
    }

    v7 += *(v8 - 2);
    v5 += v10;
    v4 += v11;
    ++v6;
LABEL_7:
    v8 += 3;
    --v9;
  }

  while (v9);
  v19[1] = v5;
  v19[2] = v4;
  v19[0] = v7;
  if (!v6)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  for (i = 0; i != 3; ++i)
  {
    *(&v17 + i) = 1.0 / v6 * v19[i];
  }

  ECEF2Geo(&v17, &WGS84_Datum, v15);
  v16 = 0;
  Geo2ECEF(v15, &WGS84_Datum, &v17);
  *a3 = v17;
  *(a3 + 2) = v18;
  result = 1;
LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void *Init_DB_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(&__src[3], 0, 123);
  memset(&__src[12], 0, 160);
  v6 = *(a2 + 1712);
  v7 = *(a2 + 1720);
  v23 = 0.0;
  v22 = 0;
  v8 = Core_Load_Clk_L5L1(&v22, &v23);
  v9 = v23;
  if (v8)
  {
    v10 = 999999;
    *(a2 + 2032) = v23 * 299792458.0;
    v11 = v22;
    *(a2 + 2040) = v22;
    if (*(a1 + 16) == 1 && *a1 >= 1)
    {
      v10 = *(a1 + 40) - v11 + 604800 * *(a1 + 32);
    }

    EvLog_v("Init_DB_Nav_Soln:  Recovered (L5-L1) delta Clock bias from NV:  %f m   age %d s", v9 * 299792458.0, v10);
  }

  v12 = *(a1 + 48);
  *&__src[1] = *(a1 + 40);
  *&__src[0] = *(a1 + 24);
  *(&__src[0] + 1) = *(a1 + 8);
  DWORD2(__src[1]) = *a1;
  BYTE12(__src[1]) = *(a1 + 16);
  HIWORD(__src[1]) = *(a1 + 32);
  LODWORD(__src[2]) = __src[0];
  *(&__src[2] + 1) = 0;
  *(&__src[7] + 1) = v12;
  *&__src[9] = v9;
  *(&__src[9] + 1) = v6;
  *(a1 + 56) = v6;
  HIDWORD(__src[10]) = *(a1 + 76);
  LOBYTE(__src[11]) = *(a1 + 80);
  *(&__src[11] + 2) = *(a1 + 82);
  *(&__src[11] + 1) = *(a1 + 88);
  *&__src[10] = 0;
  v13 = *(a2 + 52);
  if (v13 >= 2)
  {
    if (v13 >= 5)
    {
      v16 = 0x4163125300000000;
      v15 = 9999000.0;
      v14 = 9999000.0;
    }

    else
    {
      v14 = 20.0;
      v15 = 3.0;
      v16 = 0x4033C624DD2F1AA0;
    }
  }

  else
  {
    v14 = 3.0;
    v15 = 1.0;
    v16 = 0x40069FBE76C8B439;
  }

  memset(&__src[12], 0, 24);
  Geo2ECEF(&__src[12], &WGS84_Datum, &__src[3]);
  NK_Transform_State(__src);
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  result = memcpy((a3 + 32), __src, 0x160uLL);
  v18 = vdupq_n_s64(0x4163125300000000uLL);
  *(a3 + 832) = v18;
  *(a3 + 848) = v18;
  *(a3 + 864) = v18;
  *(a3 + 880) = 0x4163125300000000;
  *(a3 + 888) = v16;
  *(a3 + 896) = v15;
  *(a3 + 904) = v14;
  *(a3 + 912) = 0x408F380000000000;
  *(a3 + 920) = v7 * 99930819.3;
  *(a3 + 928) = v18;
  *(a3 + 944) = 0;
  v19 = vdupq_n_s64(0x4058FF5C28F5C28FuLL);
  *(a3 + 768) = v19;
  *(a3 + 784) = v19;
  *(a3 + 800) = v19;
  *(a3 + 816) = xmmword_299051E90;
  v20 = *(a3 + 352);
  *(a3 + 952) = *(a3 + 336);
  *(a3 + 968) = v20;
  *(a3 + 984) = *(a3 + 368);
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *phiu(uint64_t *result, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v8 = a3;
    v9 = result;
    v10 = a7;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (a6 >= 2)
  {
    v12 = (a6 - 1) * a2;
    v13 = (a6 - 1) * a8;
    v14 = ((a6 + a6 * a6) >> 1) - a6;
    v15 = 1 - a6;
    do
    {
      v16 = a6 - 1;
      if (a3)
      {
        v17 = 0;
        v18 = a6 - 1;
        do
        {
          v19 = 0.0;
          v20 = a4;
          if (a6 <= a4)
          {
            v19 = *&result[(v12 + v17)];
            v20 = v18;
          }

          if (v20)
          {
            v21 = v20;
            v22 = v14;
            v23 = v17;
            do
            {
              v19 = v19 + *&result[v23] * a5[v22];
              v23 += a2;
              ++v22;
              --v21;
            }

            while (v21);
          }

          a7[(v17++ + v13)] = v19;
          v18 = v20;
        }

        while (v17 != a3);
      }

      v12 -= a2;
      v13 -= a8;
      v14 += v15++;
      --a6;
    }

    while (v16 > 1);
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Assist_GLON_Data(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = 0;
  v88 = *MEMORY[0x29EDCA608];
  v72 = a3 + 2048;
  v7 = a3 + 1491;
  v8 = a1 - 241;
  v9 = a3 + 2031;
  *v74 = a3 + 2166;
  do
  {
    if (*(a3[2146] + v6) == 1 && (v8 - LODWORD(v7[8 * v6])) > 0xFFFFF806)
    {
      goto LABEL_30;
    }

    memset(v84, 0, 62);
    if (!Core_Get_GLON_Eph((v6 + 1), a1, v84))
    {
      goto LABEL_30;
    }

    if (*(a3[2146] + v6) == 1)
    {
      v10 = v7[8 * v6];
      if (SLODWORD(v84[0]) <= v10 && a1 - v10 > -1801)
      {
        goto LABEL_30;
      }
    }

    v11 = (WORD2(v84[2]) & 0x800) == 0;
    v12 = a3[1489];
    if ((*(v12 + v6) & 1) == 0 && (WORD2(v84[2]) & 0x800) == 0)
    {
      v13 = a3[2148];
      if (*(v13 + v6) != 1)
      {
        goto LABEL_16;
      }

      v14 = v9 + 36 * v6;
      v15 = *v14;
      if ((v14[15] & 4) != 0 || v15 + 3600 <= a1)
      {
        if (v15 + 100 < a1)
        {
          *(a3[2144] + v6) = 0;
          *(v13 + v6) = 0;
        }

LABEL_16:
        v11 = 1;
        goto LABEL_17;
      }

      v11 = 0;
    }

LABEL_17:
    v16 = &v7[8 * v6];
    v17 = v84[3];
    *(v16 + 2) = v84[2];
    *(v16 + 3) = v17;
    v18 = v84[1];
    *v16 = v84[0];
    *(v16 + 1) = v18;
    *(a3[2143] + v6) = 1;
    *(a3[2146] + v6) = 1;
    v19 = v11;
    *(v12 + v6) = v19;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = a3[1490] + 20 * v6;
    v22 = (v21 + 12);
    v23 = (v21 + 8);
    if (*(v16 + 1) == 5)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    *v24 = v20;
    if (DWORD2(v84[0]) != 2139062143)
    {
      *(*v74 + 4 * v6) = DWORD2(v84[0]);
    }

    if (a1 >= 1)
    {
      *(a3[2150] + v6) = 1;
      Core_Save_GLON_Eph((v6 + 1), 0, v16);
      v12 = a3[1489];
    }

    v25 = 0;
    LODWORD(v26) = 0;
    v27 = p_NV;
    v28 = p_NV + 29172;
    v29 = *(v12 + 16);
    *(p_NV + 29172) = *v12;
    *(v28 + 16) = v29;
    v30 = 55665;
    do
    {
      v31 = *(v27 + 29168 + v25) ^ BYTE1(v30);
      v30 = 52845 * (v30 + v31) + 22719;
      v26 = (v26 + v31);
      ++v25;
    }

    while (v25 != 32);
    *(v27 + 29160) = v26;
LABEL_30:
    ++v6;
  }

  while (v6 != 24);
  v32 = a4;
  if (a1 >= 1)
  {
    v33 = 0;
    v34 = a3 + 1683;
    do
    {
      if (*(a3[1489] + v33) == 1 && (*(*(v32 + 1616) + v33) & 1) == 0 && *(a2 + 32 + v33) <= 0xA5u && (*(a3[2147] + v33) != 1 || a1 - *(v34 + 29 * v33) >= 241))
      {
        v86 = 0u;
        memset(v87, 0, 19);
        v85 = 0u;
        memset(v84, 0, sizeof(v84));
        GLON_GPS_BinEph = EE_Get_GLON_GPS_BinEph((v33 + 1), a1, v84);
        v36 = a3[2147];
        if (!GLON_GPS_BinEph || (v37 = v84[0], *(v36 + v33) == 1) && SLODWORD(v84[0]) <= *(v34 + 29 * v33))
        {
          *(v36 + v33) = 0;
        }

        else
        {
          v38 = v34 + 116 * v33;
          *(v38 + 28) = *&v87[16];
          v39 = *v87;
          v40 = v84[1];
          *v38 = v84[0];
          *(v38 + 1) = v40;
          v41 = v84[3];
          *(v38 + 2) = v84[2];
          *(v38 + 3) = v41;
          v42 = v85;
          *(v38 + 5) = v86;
          *(v38 + 6) = v39;
          *(v38 + 4) = v42;
          *(a3[2143] + v33) = 1;
          *(a3[2147] + v33) = 1;
          *v81 = 0u;
          v80 = 0u;
          v79 = 0u;
          v78 = 0u;
          *&v77 = __PAIR64__(DWORD1(v84[0]), v37);
          LOBYTE(v78) = BYTE8(v84[0]);
          *(&v78 + 1) = *(v84 + 9);
          v43 = 21;
          v44 = 11;
          v45 = &v84[1] + 8;
          do
          {
            v46 = &v77 + v44;
            *v46 = *v45;
            *(v46 + 1) = *(v45 + 1);
            v45 += 4;
            --v43;
            v44 += 3;
          }

          while (v43 > 1);
          *&v81[15] = *&v87[12];
          v82 = *&v87[14];
          v83 = v87[18];
          Debug_Log_GPS_Eph(2, v33 + 101, &v77);
        }

        v32 = a4;
      }

      ++v33;
    }

    while (v33 != 24);
  }

  v47 = 0;
  *&v84[0] = 0;
  WORD4(v84[0]) = 0;
  memset(v84 + 12, 0, 24);
  while (*(a3[2148] + v47) == 1 && a1 - *(v9 + 9 * v47) <= 1800)
  {
    v48 = v47 + 1;
LABEL_68:
    v47 = v48;
    if (v48 == 24)
    {
      goto LABEL_69;
    }
  }

  v48 = v47 + 1;
  if (!Core_Get_GLON_Alm((v47 + 1), a1, v84) || *(a3[2148] + v47) == 1 && SLODWORD(v84[0]) <= *(v9 + 9 * v47))
  {
    goto LABEL_68;
  }

  if (a1 < 1)
  {
    goto LABEL_60;
  }

  *v76 = 0;
  v77 = 0.0;
  API_Get_UTC_Cor(1, &v77);
  GPS_To_Glon_Time(0, a1 / 0x93A80, (a1 % 0x93A80), v77, v76, &v76[1], &v75);
  v49 = v76[1] - WORD4(v84[0]);
  v50 = v49 + 1461;
  if (v49 >= -730)
  {
    v50 = v76[1] - WORD4(v84[0]);
  }

  v51 = v49 <= 729 ? v50 : v49 - 1461;
  if ((v51 + 7) < 0x1D)
  {
LABEL_60:
    v52 = v9 + 36 * v47;
    v53 = v84[1];
    *v52 = v84[0];
    *(v52 + 1) = v53;
    *(v52 + 8) = v84[2];
    *(a3[2144] + v47) = 1;
    *(a3[2148] + v47) = 1;
    DD_GLON_Alm_Set_Health_Frq(v84, a3);
    if (g_Logging_Cfg >= 6)
    {
      EvLog_v("DD_Assist_GLON_Alm:  Received Alm for SV %d ", v47 + 1);
    }

    if (a1 >= 1)
    {
      Core_Save_GLON_Alm((v47 + 1), 0, (v9 + 36 * v47));
    }

    v54 = 0;
    LODWORD(v55) = 0;
    v56 = a3[1489];
    v57 = p_NV;
    v58 = p_NV + 29172;
    v59 = *(v56 + 16);
    *(p_NV + 29172) = *v56;
    *(v58 + 16) = v59;
    v60 = 55665;
    do
    {
      v61 = *(v57 + 29168 + v54) ^ BYTE1(v60);
      v60 = 52845 * (v60 + v61) + 22719;
      v55 = (v55 + v61);
      ++v54;
    }

    while (v54 != 32);
    *(v57 + 29160) = v55;
    goto LABEL_68;
  }

  EvLog_v("DD_Assist_GLON_Alm: Rejected! SV %d DayNo too old or new %d", v47 + 1, v51);
LABEL_69:
  *&v84[0] = 0;
  WORD4(v84[0]) = 0;
  HIDWORD(v84[0]) = 0;
  LOBYTE(v84[1]) = 0;
  DWORD1(v84[1]) = 0;
  BYTE8(v84[1]) = 0;
  result = Core_Get_GLON_Clk1(a1, v84);
  if (result)
  {
    v63 = *(v72 + 182);
    if (*(v72 + 808) != 1 || SLODWORD(v84[0]) > v63)
    {
      result = EvLog_v("DD_Assist_GLON_Clk1:  New Clk1:  Source %d > %d  or  GPS_secs %d > %d , TauGPS %d %d", DWORD1(v84[0]), *(v72 + 183), LODWORD(v84[0]), v63, DWORD1(v84[1]), *(v72 + 187));
      *(v72 + 91) = v84[0];
      *(v72 + 740) = *(v84 + 12);
      *(v72 + 808) = 1;
      if (a1 >= 1)
      {
        v64 = 0;
        LODWORD(v65) = 0;
        v66 = p_NV;
        v67 = p_NV + 29208;
        *(p_NV + 29208) = v84[0];
        *(v67 + 12) = *(v84 + 12);
        v68 = 55665;
        do
        {
          v69 = *(v67 + v64) ^ BYTE1(v68);
          v68 = 52845 * (v68 + v69) + 22719;
          v65 = (v65 + v69);
          ++v64;
        }

        while (v64 != 32);
        *(v66 + 29200) = v65;
      }
    }
  }

  v70 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Least_Squares_Core(double *a1, double (*a2)[3], uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10 = a3;
  v12 = a1;
  v121 = *MEMORY[0x29EDCA608];
  _MergedGlobals_4[0] = 0;
  *a8 = -1;
  v112 = a4;
  if (a4)
  {
    v118 = -1;
    v119 = -1;
    v13 = (*(a9 + 494) & 0x80000000) == 0 && *(a9 + 500) == 1;
  }

  else
  {
    v13 = 0;
    xmmword_2A145C561 = 0u;
    unk_2A145C571 = 0u;
    xmmword_2A145C541 = 0u;
    unk_2A145C551 = 0u;
    xmmword_2A145C521 = 0u;
    unk_2A145C531 = 0u;
    xmmword_2A145C501 = 0u;
    unk_2A145C511 = 0u;
    v118 = -1;
    v119 = -1;
    *(a9 + 400) = 0u;
    *(a9 + 416) = 0u;
    *(a9 + 432) = 0;
  }

  v14 = NK_Least_Squares_Update(a1, a3, 1, v13, v120, a9);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_152;
  }

  __n = 8 * v10;
  if (__n > 0x38)
  {
    __assert_rtn("NK_Least_Squares_Core", "NK_Least_Squares_Check.cpp", 226, "(sizeof(p_Lsq_Intl->dX)) >= (NumStates*sizeof(p_Lsq_Intl->ACovMat[0]))");
  }

  v97 = v14;
  v98 = a2;
  v16 = 0;
  v107 = 0;
  v102 = v13 - v10;
  v111 = (a9 + 112);
  __src = (a9 + 112 + 8 * ((v10 + v10 * v10) / 2));
  if ((a5 & 0xFFFFFFFE) == 6)
  {
    v17 = -10.0;
  }

  else
  {
    v17 = -30.0;
  }

  v113 = v10;
  v114 = a9 + 592;
  v106 = 1;
  v110 = v12;
  while (2)
  {
    if (*(a9 + 408) <= 0.0)
    {
      v18 = v102;
    }

    else
    {
      v18 = v102 + 1;
    }

    memcpy(a9, __src, __n);
    v19 = 0;
    v20 = (v16 + 1);
    v109 = v16;
    v16 = (v16 - 1);
    v104 = v20;
    v21 = v20 - 1;
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v24 = *(a9 + 576);
      if (v24)
      {
        *(v24 + 8 * v19) = 0;
      }

      v25 = *(*(a9 + 520) + v19);
      if (v16 <= 1 && (v26 = v21, v27 = &v118 + 1, *(*(a9 + 520) + v19)))
      {
        while (1)
        {
          v28 = *v27++;
          if (v19 == v28)
          {
            break;
          }

          if (!--v26)
          {
            goto LABEL_22;
          }
        }

        v29 = 0;
      }

      else
      {
LABEL_22:
        if (!*(*(a9 + 520) + v19))
        {
          goto LABEL_36;
        }

        v29 = 1;
      }

      v30 = (v114 + 4 * v19);
      a5 = a5 & 0xFFFFFFFF00000000 | *(a9 + 496);
      NK_Least_Obs_Equ_SV(v19 != *(a9 + 512), *(a9 + 488), a5, *v30, *(a9 + 516), &v12[7 * v19], v120, *(*(a9 + 528) + 8 * v19));
      v31 = 0.0;
      if (v10)
      {
        v32 = v120;
        v33 = a9;
        v34 = v113;
        do
        {
          v35 = *v32++;
          v36 = v35;
          v37 = *v33++;
          v31 = v31 + v36 * v37;
          --v34;
        }

        while (v34);
      }

      v38 = *(*(a9 + 528) + 8 * v19) - v31;
      v39 = *(a9 + 544);
      *(v39 + 8 * v19) = v38;
      if (v29)
      {
        v40 = *(*(a9 + 536) + 8 * v19);
        v22 = v22 + 1.0 / v40;
        v23 = v23 + v38 * v38 * (1.0 / v40);
        ++v18;
        if (v112)
        {
          v41 = *(a9 + 576);
          if (v41)
          {
            v42 = v10;
            v43 = *(a9 + 568);
            *(v43 + 8 * v19) = v40;
            *(*(a9 + 584) + 8 * v19) = *(v39 + 8 * v19);
            v117[0] = 0.0;
            v44 = v42;
            invtst(v111, v120, v42, 0.0, 0.0, 1.0e20, v117);
            v45 = fabs(v117[0]);
            v46 = *(v43 + 8 * v19) - v45;
            *(v41 + 8 * v19) = v46;
            if (v46 <= 0.0)
            {
              if (v46 < -0.005)
              {
                GNSS_SV_Str = Get_GNSS_SV_Str(*v30);
                EvLog_v("NK_Least_Squares_Core:  %d  %s  Suspect Post Res Var:  DOF %d   %f %f %f  Res %f", v19, GNSS_SV_Str, v18, sqrt(*(*(a9 + 576) + 8 * v19)), sqrt(*(*(a9 + 568) + 8 * v19)), sqrt(v45), *(*(a9 + 584) + 8 * v19));
                v41 = *(a9 + 576);
              }

              *(v41 + 8 * v19) = 0;
            }

            v10 = v44;
            v12 = v110;
          }
        }
      }

LABEL_36:
      ++v19;
    }

    while (v19 != 128);
    v48 = 0.0;
    if (v22 > 0.0)
    {
      v48 = sqrt(v23 / v22);
    }

    **(a9 + 552) = v48;
    v49 = *(a9 + 560);
    LODWORD(v50) = v109;
    if (!v49)
    {
      goto LABEL_142;
    }

    if (v18 < 1)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v23 / v18;
    }

    *v49 = v51;
    if (v109 > 2 || (v112 & 1) == 0)
    {
      goto LABEL_138;
    }

    v53 = v109 > 1 || v18 < 2;
    v54 = v51 < 0.2 || v53;
    if (v54 != 1)
    {
      if (!v109)
      {
        xmmword_2A145C5E1 = 0u;
        unk_2A145C5F1 = 0u;
        xmmword_2A145C5C1 = 0u;
        unk_2A145C5D1 = 0u;
        xmmword_2A145C5A1 = 0u;
        unk_2A145C5B1 = 0u;
        xmmword_2A145C581 = 0u;
        unk_2A145C591 = 0u;
      }

      goto LABEL_58;
    }

    if (v109 > 0)
    {
LABEL_58:
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = *(a9 + 576);
      v59 = -1;
      v60 = 0.0;
      v61 = 0.0;
      v62 = -1;
      do
      {
        v63 = *(v58 + 8 * v57);
        if (v63 <= 0.0)
        {
          if (_MergedGlobals_4[v57 + 129] == 1)
          {
            v74 = Get_GNSS_SV_Str(*(v114 + 4 * v57));
            EvCrt_v("MeasurementToBeRejected:  %s  ERROR outlier_tested TRUE", v74);
            goto LABEL_93;
          }
        }

        else
        {
          v64 = *(*(a9 + 568) + 8 * v57);
          if (v64 < 0.01)
          {
            ++v55;
          }

          v65 = v63 / v64;
          if (v63 / v64 < 0.01)
          {
            v66 = 1;
          }

          else
          {
            v66 = v54;
          }

          if (v66)
          {
            if (v65 < 0.005 && (_MergedGlobals_4[v57 + 129] & 1) != 0)
            {
              v76 = Get_GNSS_SV_Str(*(v114 + 4 * v57));
              EvLog_v("MeasurementToBeRejected:  %s  AddBack %f", v76, v65);
LABEL_93:
              v62 = -1;
              v75 = 1;
              goto LABEL_112;
            }
          }

          else
          {
            v67 = v64 < 0.01;
            v68 = *(*(a9 + 584) + 8 * v57);
            v69 = v67;
            v70 = v68 * v68 / v63;
            if (v70 <= 4.0)
            {
              v69 = 0;
            }

            v56 += v69;
            if (v70 > v60)
            {
              v59 = v57;
              v60 = v70;
            }

            if (v68 < v17 && v70 > v61)
            {
              v62 = v57;
              v61 = v70;
            }

            _MergedGlobals_4[v57 + 129] = 1;
          }
        }

        ++v57;
      }

      while (v57 != 128);
      if (*(a9 + 504) != 1 || *(a9 + 500) > 1u || (v62 & 0x80000000) != 0)
      {
        if (v59 < 0)
        {
          v75 = 0;
          v62 = v59;
          goto LABEL_112;
        }

        v62 = v59;
      }

      else
      {
        EvLog_v("MeasurementToBeRejected:  MaxPosit %f %d", v61, v62);
        v60 = 999.9;
      }

      v71 = *(a7 + v62) ^ 1;
      v72 = *(a6 + v62);
      if (v72 > 0x10)
      {
        if (v72 < 0x21)
        {
          v73 = GaussCritVal[v71] + (GaussCritVal[(v71 + 1)] - GaussCritVal[v71]) * (v72 - 16) / 17.0;
        }

        else
        {
          v73 = GaussCritVal[(v71 + 1)];
        }
      }

      else
      {
        v73 = GaussCritVal[v71];
      }

      if (v60 >= v73)
      {
        v78 = _MergedGlobals_4[v62 + 1];
        Get_GNSS_SV_Str(*(v114 + 4 * v62));
        v79 = *(a9 + 504);
        v80 = *(a6 + v62);
        if (v78 == 1)
        {
          EvCrt_v("MeasurementToBeRejected:  %s  Overridden %d: Gss MaxRatio %d %g %d");
        }

        else
        {
          EvCrt_v("MeasurementToBeRejected:  %s  %d: Gss MaxRatio %d %g %d");
        }
      }

      else
      {
        if (v18 <= 6)
        {
          v77 = v18 - 2;
          if (v72 > 0xC)
          {
            if (v72 < 0x24)
            {
              v73 = TauCritVal[3 * v77 + v71] + (TauCritVal[3 * v77 + (v71 + 1)] - TauCritVal[3 * v77 + v71]) * (v72 - 12) / 24.0;
            }

            else
            {
              v73 = TauCritVal[3 * v77 + (v71 + 1)];
            }
          }

          else
          {
            v73 = TauCritVal[3 * v77 + v71];
          }
        }

        if (v60 < v73 * **(a9 + 560))
        {
          v75 = 0;
          v62 = -1;
          goto LABEL_112;
        }

        v81 = _MergedGlobals_4[v62 + 1];
        v82 = Get_GNSS_SV_Str(*(v114 + 4 * v62));
        if (v81 == 1)
        {
          EvCrt_v("MeasurementToBeRejected:  %s  Overridden %d: Tau MaxRatio %d %g %g %g %d %d");
        }

        else
        {
          EvLog_v("MeasurementToBeRejected:  %s  %d: Tau MaxRatio %d %g %g %g %d %d", v82, *(a9 + 504), v62, v60, **(a9 + 560), v73, v18, *(a6 + v62));
        }
      }

      if ((_MergedGlobals_4[v62 + 129] & 1) == 0)
      {
        v83 = Get_GNSS_SV_Str(*(v114 + 4 * v62));
        EvCrt_v("MeasurementToBeRejected:  %s  ERROR outlier_tested FALSE", v83);
      }

      v75 = 0;
      _MergedGlobals_4[v62 + 129] = 0;
LABEL_112:
      if (v106)
      {
        v84 = v56;
      }

      else
      {
        v84 = v107;
      }

      v85 = HIDWORD(v107);
      if (v106)
      {
        v85 = v55;
      }

      v107 = __PAIR64__(v85, v84);
      v50 = v109;
      if (v109 > 1)
      {
        v12 = v110;
        if ((v75 & 1) == 0)
        {
          goto LABEL_142;
        }

        v87 = *(a9 + 536);
      }

      else
      {
        *(a8 + v109) = v62;
        if ((v62 & 0x80000000) == 0)
        {
          v86 = 1;
        }

        else
        {
          v86 = v75;
        }

        v12 = v110;
        if ((v86 & 1) == 0)
        {
          goto LABEL_138;
        }

        v87 = *(a9 + 536);
        if ((v75 & 1) == 0)
        {
          v88 = v109;
          v89 = v62;
          v90 = -*(v87 + 8 * v62);
          v16 = v109;
          v91 = v105;
          v50 = v104;
LABEL_127:
          v105 = v91 & 0xFFFFFFFF00000000 | *(a9 + 496);
          NK_Least_Obs_Equ_SV(v62 != *(a9 + 512), *(a9 + 488), *(a9 + 496), *(v114 + 4 * v89), *(a9 + 516), &v12[7 * v89], v120, *(*(a9 + 528) + 8 * v89));
          v115 = 0.0;
          umeas(v111, v10, v90, v120, v117, v116, &v115, 1.0e20);
          if (v75)
          {
            *(&v118 + v50) = -1;
            *(a8 + v88) = -1;
          }

          else
          {
            *(&v118 + v50) = *(a8 + v88);
            v16 = v50;
          }

          v106 = 0;
          v112 = v75 ^ 1;
          continue;
        }
      }

      v88 = v16;
      v90 = *(v87 + 8 * *(a8 + v16));
      EvLog_v("MeasurementToBeRejected:  Add back %d ", *(a8 + v16));
      v62 = *(a8 + v16);
      v89 = v62;
      v91 = v105;
      goto LABEL_127;
    }

    break;
  }

  if (v106)
  {
    v92 = 0;
  }

  else
  {
    v92 = v107;
  }

  v93 = HIDWORD(v107);
  if (v106)
  {
    v93 = 0;
  }

  v107 = __PAIR64__(v93, v92);
  *(a8 + v109) = -1;
LABEL_138:
  if (!v50 && (HIDWORD(v107) - 1) <= 1 && v107 == HIDWORD(v107))
  {
    _MergedGlobals_4[0] = 1;
  }

LABEL_142:
  if (*(a9 + 491) >= 1)
  {
    ud2var(v111, v10, *(a9 + 491) + 1, 1u, (a9 + 8 * *(a9 + 491) + 56));
  }

  v15 = v97;
  if (*(a9 + 492) >= 1)
  {
    ud2var(v111, v10, *(a9 + 492) + 1, 1u, (a9 + 8 * *(a9 + 492) + 56));
  }

  if (*(a9 + 493) >= 1)
  {
    ud2var(v111, v10, *(a9 + 493) + 1, 1u, (a9 + 8 * *(a9 + 493) + 56));
  }

  v94 = *(a9 + 488);
  if ((v94 & 0x8000000000000000) == 0)
  {
    Comp_NEDvar_UDU(v111, v10, *(a9 + 488), v98, (a9 + 8 * v94 + 56));
  }

  if ((*(a9 + 494) & 0x80000000) == 0)
  {
    ud2var(v111, v10, *(a9 + 494) + 1, 1u, (a9 + 8 * *(a9 + 494) + 56));
  }

LABEL_152:
  v95 = *MEMORY[0x29EDCA608];
  return v15;
}

BOOL NK_Least_Squares_Update(double *a1, signed int a2, int a3, int a4, _OWORD *a5, uint64_t a6)
{
  v27[8] = *MEMORY[0x29EDCA608];
  *(a6 + 112) = 0u;
  v11 = a6 + 112;
  *(a6 + 368) = 0u;
  *(a6 + 384) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  if (a3)
  {
    v12 = 1.0e20;
  }

  else
  {
    v12 = -1.0;
  }

  *(a6 + 304) = 0uLL;
  *(a6 + 320) = 0uLL;
  *(a6 + 272) = 0uLL;
  *(a6 + 288) = 0uLL;
  *(a6 + 240) = 0uLL;
  *(a6 + 256) = 0uLL;
  *(a6 + 208) = 0uLL;
  *(a6 + 224) = 0uLL;
  *(a6 + 176) = 0uLL;
  *(a6 + 192) = 0uLL;
  *(a6 + 144) = 0uLL;
  *(a6 + 160) = 0uLL;
  *(a6 + 128) = 0uLL;
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = vdup_n_s32(a2 - 1);
    do
    {
      v15 = vcge_u32(v14, vorr_s8(vdup_n_s32(v13), 0x100000000));
      if (v15.i8[0])
      {
        *(v11 + 8 * (((v13 + 2 + (v13 + 2) * v13) >> 1) - 1)) = 0x426D1A94A2000000;
      }

      if (v15.i8[4])
      {
        *(v11 + 8 * ((((v13 + 2) * (v13 + 3)) >> 1) - 1)) = 0x426D1A94A2000000;
      }

      v13 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFE) != v13);
  }

  if (a4)
  {
    v16 = *(a6 + 494);
    if (v16 >= 1)
    {
      *(v11 + 8 * (((v16 + 2 + (v16 + 2) * v16) >> 1) - 1)) = 0x4039000000000000;
    }
  }

  if (*(a6 + 408) > 0.0)
  {
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
    *a5 = *(a6 + 416);
    *(a5 + 1) = *(a6 + 424);
    *(a5 + 2) = *(a6 + 432);
    *(a5 + a2) = *(a6 + 400);
    v25[0] = 0.0;
    umeas(v11, a2, *(a6 + 408), a5, v27, v26, v25, 1.0e20);
  }

  v17 = 0;
  v18 = (a6 + 592);
  do
  {
    if (*(*(a6 + 520) + v17) == 1)
    {
      v6 = v6 & 0xFFFFFFFF00000000 | *(a6 + 496);
      NK_Least_Obs_Equ_SV(v17 != *(a6 + 512), *(a6 + 488), v6, *v18, *(a6 + 516), a1, a5, *(*(a6 + 528) + 8 * v17));
      v25[0] = 0.0;
      umeas(v11, a2, *(*(a6 + 536) + 8 * v17), a5, v27, v26, v25, v12);
    }

    ++v17;
    a1 += 7;
    v18 += 4;
  }

  while (v17 != 128);
  v19 = 1;
  ud2var(v11, a2, 1, a2, v25);
  if (a2 >= 1)
  {
    if (v25[0] <= 1000000000.0)
    {
      v20 = 1;
      do
      {
        v21 = v20;
        if (a2 == v20)
        {
          break;
        }

        v22 = v25[v20++];
      }

      while (v22 <= 1000000000.0);
      v19 = v21 >= a2;
    }

    else
    {
      v19 = 0;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return v19;
}

void NK_Least_Obs_Equ_SV(int a1, unint64_t a2, int a3, int a4, int a5, double *a6, double *a7, double a8)
{
  v19 = *MEMORY[0x29EDCA608];
  v15 = HIBYTE(a2);
  bzero(a7, 8 * HIBYTE(a2) + 8);
  *a7 = -*a6;
  a7[1] = -a6[1];
  a7[2] = -a6[2];
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a5 != 1)
  {
    a7[v15 - 1] = 1.0;
    goto LABEL_21;
  }

  if (a4 > 3)
  {
    LODWORD(v16) = a2;
    if ((a4 - 5) >= 2)
    {
      if (a4 != 4)
      {
        if (a4 != 7)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v16 = a2 >> 16;
    }

LABEL_17:
    v17 = v16 >> 24;
    if (v17 >= 1)
    {
      a7[v17] = 1.0;
    }

    goto LABEL_19;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v16 = a2 >> 8;
    }

    else
    {
      LODWORD(v16) = a2;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_12:
    EvCrt_Illegal_switch_case("NK_Least_Obs_Equ_SV", 0xA17u);
    goto LABEL_19;
  }

  LODWORD(v16) = a2;
  if (a4 == 1)
  {
    goto LABEL_17;
  }

LABEL_19:
  if ((a2 >> 24) >> 24 >= 1)
  {
    a7[HIWORD(a2) & 0x7F] = -a6[6];
  }

LABEL_21:
  a7[v15] = a8;
  v18 = *MEMORY[0x29EDCA608];
}

unsigned __int8 *NK_Least_Squares_Cross_Check(unsigned __int8 *result, uint64_t a2, uint64_t a3, double *a4)
{
  v5 = result;
  v53 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 27584);
  v7 = a4[1071];
  *(a3 + 79672) = 0;
  v8 = *(a4 + 8719);
  v9 = 0.0;
  if (v8 < 1 || a4[v8 + 285] >= 9999000.0 || *(a3 + 61824) >= 1.3e11)
  {
    v13 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v10 = a4[262];
    v11 = *(a3 + 1632) * 299792458.0;
    v12 = v10 - v11;
    v13 = 1;
  }

  v14 = *(a4 + 8720);
  if (v14 < 1 || a4[v14 + 285] >= 9999000.0 || *(a3 + 61832) >= 1.3e11)
  {
    v17 = 0;
    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v15 = a4[264];
    v16 = *(a3 + 1640) * 299792458.0;
    v9 = v15 - v16;
    v17 = 1;
  }

  v18 = *(a4 + 8721);
  v19 = 0.0;
  if (v18 < 1 || a4[v18 + 285] >= 9999000.0 || *(a3 + 61840) >= 1.3e11)
  {
    v22 = 0;
    v20 = 0.0;
    v21 = 0.0;
  }

  else
  {
    v20 = a4[266];
    v21 = *(a3 + 1648) * 299792458.0;
    v19 = v20 - v21;
    v22 = 1;
  }

  if (*a4 < 5u || *(a4 + 8584) != 1)
  {
    goto LABEL_106;
  }

  v23 = v6 + v7;
  v24 = fabs(v12);
  v25 = v24 > v23 ? v13 : 0;
  if ((v25 & 1) == 0)
  {
    v26 = fabs(v9) > v23 ? v17 : 0;
    if ((v26 & 1) == 0)
    {
      v27 = fabs(v19) > v23 ? v22 : 0;
      if (v27 != 1)
      {
        goto LABEL_106;
      }
    }
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 12072;
  v36 = 7080;
  do
  {
    if (*(a3 + v36) == 1 && (*(a3 + v28 + 7336) - 1) >= 0x1E)
    {
      v37 = result[v28];
      if (v37 == 4)
      {
        if (v22)
        {
          ++v29;
          if (fabs(v19 + *(a3 + v35)) - fabs(*(a3 + v35)) <= 0.0)
          {
            ++v32;
          }

          else
          {
            --v32;
          }
        }
      }

      else if (v37 == 2)
      {
        if (v17)
        {
          ++v30;
          if (fabs(v9 + *(a3 + v35)) - fabs(*(a3 + v35)) <= 0.0)
          {
            ++v33;
          }

          else
          {
            --v33;
          }
        }
      }

      else if (v13)
      {
        ++v31;
        if (fabs(v12 + *(a3 + v35)) - fabs(*(a3 + v35)) <= 0.0)
        {
          ++v34;
        }

        else
        {
          --v34;
        }
      }
    }

    v28 += 4;
    v35 += 8;
    ++v36;
  }

  while (v28 != 512);
  v38 = v24 < 10000.0 ? v13 : 0;
  if (v38)
  {
    goto LABEL_106;
  }

  v39 = fabs(v9) < 10000.0 ? v17 : 0;
  if (v39)
  {
    goto LABEL_106;
  }

  v40 = fabs(v19) < 10000.0 ? v22 : 0;
  if (v40)
  {
    goto LABEL_106;
  }

  if (v13)
  {
    v42 = v34 >= 0 && v31 != 0;
    if (!(v30 + v29) || v30 >= 1 && v33 > 0 || (v43 = 0, v29 >= 1) && v32 >= 1)
    {
      v43 = 1;
      *(a3 + 79672) = 1;
    }

    v52 = v43;
    result = NK_Least_Squares_Cross_Check_Adj(result, a3, 1, v42, v43, v11, v10, v12);
    v44 = v52;
  }

  else
  {
    v44 = 0;
  }

  if (v17)
  {
    v46 = v33 >= 0 && v30 != 0;
    if (!(v31 + v29) || v31 >= 1 && v34 > 0 || v29 >= 1 && v32 >= 1)
    {
      v44 = 1;
      *(a3 + 79672) = 1;
    }

    result = NK_Least_Squares_Cross_Check_Adj(v5, a3, 2, v46, v44, v16, v15, v9);
  }

  if (v22)
  {
    v48 = v32 >= 0 && v29 != 0;
    if (!(v31 + v30) || v31 >= 1 && v34 > 0 || (v49 = 0, v30 >= 1) && v33 >= 1)
    {
      v49 = 1;
      *(a3 + 79672) = 1;
    }

    v50 = *MEMORY[0x29EDCA608];

    return NK_Least_Squares_Cross_Check_Adj(v5, a3, 4, v48, v49, v21, v20, v19);
  }

  else
  {
LABEL_106:
    v51 = *MEMORY[0x29EDCA608];
  }

  return result;
}

unsigned __int8 *NK_Least_Squares_Cross_Check_Adj(unsigned __int8 *result, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a4 && a5)
  {
    v10 = a3;
    v12 = result;
    result = EvLog_nd("NK_LSq_Cross_Check:  KF Clock bias change : ", 4, a3, a3, a6, a7, a8);
    switch(v10)
    {
      case 1:
        v13 = 1632;
        goto LABEL_9;
      case 4:
        v13 = 1648;
        goto LABEL_9;
      case 2:
        v13 = 1640;
LABEL_9:
        v14 = 0;
        *(a2 + v13) = a7 * 0.00000000333564095;
        while (1)
        {
          if ((*(a2 + 7080 + v14) & 1) == 0 && (*(a2 + 7336 + 4 * v14) - 1) > 0x1D)
          {
            goto LABEL_16;
          }

          if (v10 != 4 && v10 != 2)
          {
            break;
          }

          if (*v12 == v10)
          {
            goto LABEL_15;
          }

LABEL_16:
          ++v14;
          v12 += 4;
          if (v14 == 128)
          {
            goto LABEL_23;
          }
        }

        v15 = *v12;
        if (v15 == 2 || v15 == 4)
        {
          goto LABEL_16;
        }

LABEL_15:
        *(a2 + 12072 + 8 * v14) = *(a2 + 12072 + 8 * v14) + a8;
        *(a2 + 51608 + 8 * v14) = *(a2 + 51608 + 8 * v14) + a8;
        *(a2 + 13096 + 8 * v14) = *(a2 + 13096 + 8 * v14) + a8;
        *(a2 + 14120 + 8 * v14) = *(a2 + 14120 + 8 * v14) + a8;
        goto LABEL_16;
    }
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Least_Squares_Check(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v118 = v4;
  v119 = v5;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v172[1] = *MEMORY[0x29EDCA608];
  v172[0] = 0;
  v116 = v8 + 60344;
  v113 = (v8 + 6771);
  v115 = (v8 + 1784);
  v11 = v2 + 512;
  memset(v171, 0, sizeof(v171));
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  memset(v162, 0, sizeof(v162));
  v144 = 0;
  v143 = 0;
  v145 = 0;
  memset(v138, 0, sizeof(v138));
  memset(v139, 0, sizeof(v139));
  v140 = 0u;
  v141 = 0u;
  memset(v142, 0, 25);
  v147 = 0;
  v146 = 0;
  v148 = 0;
  bzero(&v149, 0x254uLL);
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0;
  LODWORD(__src[0]) = 0;
  WORD2(__src[0]) = 0;
  LODWORD(v161[0]) = 0;
  *(v161 + 3) = 0;
  bzero(__src + 6, 0x213CuLL);
  *(v161 + 7) = 0uLL;
  *(&v161[1] + 7) = 0;
  LOWORD(v3->f64[0]) = 0;
  memcpy(v3->f64 + 2, __src, 0x213EuLL);
  *(&v3[532] + 4) = 0u;
  *(&v3[533] + 4) = 0u;
  *(&v3[534] + 4) = 0u;
  *(&v3[535] + 4) = 0u;
  *(&v3[536] + 4) = 0u;
  *(&v3[537] + 4) = 0u;
  *(&v3[538] + 4) = 0u;
  *(&v3[539] + 4) = 0u;
  *(&v3[540] + 4) = 0u;
  *(&v3[541] + 4) = 0u;
  *(&v3[542] + 4) = 0u;
  HIDWORD(v3[543].f64[0]) = 0;
  *(v3 + 8697) = v161[0];
  *(v3 + 8712) = *(v161 + 15);
  LODWORD(v3[532].f64[0]) = -1;
  v3[534].f64[1] = 10000000.0;
  v12 = vdupq_n_s64(0x416312D000000000uLL);
  v3[535] = v12;
  v3[536].f64[0] = 10000000.0;
  LOBYTE(v11[25].f64[1]) = -1;
  LODWORD(v3[538].f64[0]) = -1;
  v3[540].f64[1] = 10000000.0;
  v3[541] = v12;
  v3[542].f64[0] = 10000000.0;
  v122 = v11;
  LOBYTE(v11[31].f64[1]) = -1;
  memset_pattern16(&v3[142].f64[1], &unk_299051A90, 0x38uLL);
  memset_pattern16(&v3[146], &unk_299051A90, 0x20uLL);
  v114 = v3 + 141;
  v3[141] = vdupq_n_s64(0x4163125300000000uLL);
  v121 = *(v9 + 56);
  xmmword_2A145C501 = 0u;
  unk_2A145C511 = 0u;
  xmmword_2A145C561 = 0u;
  unk_2A145C571 = 0u;
  xmmword_2A145C541 = 0u;
  unk_2A145C551 = 0u;
  xmmword_2A145C521 = 0u;
  unk_2A145C531 = 0u;
  memcpy(__src, (v9 + 26976), 0x400uLL);
  v13 = v9 + 32352;
  memcpy(v161, (v9 + 32352), sizeof(v161));
  v14 = 0;
  v15 = 0;
  v16 = v9 + 21984;
  v17 = v9 + 36888;
  v18 = (v10 + 96);
  v120 = v10;
  v19 = v10 + 736;
  v123 = (v10 + 96);
  do
  {
    if (*(v16 + v15) == 1)
    {
      v20 = *v18;
      if (v20 != 7)
      {
        v21 = v7 == 1 && v20 == 5;
        v22 = v21;
        if (!v7 || (v20 != v7 ? (v23 = !v22) : (v23 = 0), !v23))
        {
          *(v162 + v15) = 1;
          *(v161 + v15) = *v13;
          if ((*(&v130 + v15) & 1) == 0)
          {
            BYTE1(v3->f64[0]) = ++v14;
            ++*(&v129 + *v18);
            *(&v130 + v15) = 1;
            v24 = *(v19 + v15);
            if (v24 != 255)
            {
              *(&v130 + v24) = 1;
            }
          }
        }
      }
    }

    if (*(v17 + v15) == 1)
    {
      v25 = *v18;
      if (v25 != 7)
      {
        v26 = v7 == 1 && v25 == 5;
        v27 = v26;
        if (!v7 || v25 == v7 || v27)
        {
          if ((*(v162 + v15) & 1) == 0)
          {
            *(v162 + v15) = 1;
            if ((*(&v130 + v15) & 1) == 0)
            {
              BYTE1(v3->f64[0]) = ++v14;
              ++*(&v129 + *v18);
              *(&v130 + v15) = 1;
              v28 = *(v19 + v15);
              if (v28 != 255)
              {
                *(&v130 + v28) = 1;
              }
            }
          }

          *&__src[v15] = *(v13 + 9528) / *(v9 + 1552);
          *(v161 + v15) = *(v13 + 14904);
          _MergedGlobals_4[v15 + 1] = 1;
        }
      }
    }

    ++v15;
    v18 += 4;
    v13 += 8;
  }

  while (v15 != 128);
  if (v121 == 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  if (v121 == 2)
  {
    v29 = 0;
  }

  v117 = v29;
  HIDWORD(v147) = v29;
  *(&v146 + 3) = -1;
  LODWORD(v146) = 50462976;
  HIBYTE(v146) = 4;
  LODWORD(v147) = 1;
  *&v3[544].f64[0] = v146;
  LODWORD(v3[544].f64[1]) = v147;
  v149 = 4;
  LOBYTE(v122[31].f64[1]) = v14 - 4;
  if (((v14 - 4) & 0x80) == 0)
  {
    memcpy(v160, v123, sizeof(v160));
    v151 = v162;
    v152 = __src;
    v153 = v161;
    v154 = &v3[65].f64[1];
    v155 = &v3[129].f64[1];
    v150 = 0x2FFFFFFFFLL;
    f64 = v3[130].f64;
    v157 = v3 + 340;
    v158 = v3 + 404;
    v159 = v3 + 468;
    v148 = 0;
    v140 = 0u;
    v141 = 0u;
    *v142 = 0;
    if ((v14 - 5) <= 2u && v119)
    {
      if (*(v116 + 72) == 1 && *(v116 + 76) == 1 && (v30 = *(v116 + 104), v30 < 9.0) && *v9 - *(v116 + 92) <= 4999)
      {
        v31 = -*(v9 + 1832) - *(v116 + 96);
      }

      else
      {
        v31 = -*(v9 + 1832);
        v30 = 9.0;
      }

      *&v140 = v31;
      *(&v140 + 1) = v30;
      v141 = vnegq_f64(*v115);
      *v142 = -*(v9 + 1800);
    }

    if (NK_Least_Squares_Core((v9 + 52776), (v9 + 1736), 4, v119, v118, v10 + 1760, v171, v172, v138))
    {
      v32 = SBYTE3(v146);
      v33 = v146;
      if (_MergedGlobals_4[0] == 1)
      {
        for (i = 0; i != 128; ++i)
        {
          if (*(v17 + i) == 1)
          {
            GNSS_SV_Str = Get_GNSS_SV_Str(v123[i]);
            EvLog_v("NK_Least_Squares_Check:  %d  %s  Inflate DR.ResVar ", i, GNSS_SV_Str);
            *(v9 + 47256 + 8 * i) = *(v9 + 47256 + 8 * i) + 1.0;
          }
        }
      }

      if (!v7 && *f64 < 4.0)
      {
        v97 = LODWORD(v172[0]);
        if ((v172[0] & 0x80000000) == 0)
        {
          v98 = v151;
          *(v151 + LODWORD(v172[0])) = 0;
          v99 = (v17 + v97);
          if (*(v17 + v97))
          {
            v100 = 36580;
            v101 = 36579;
            v102 = 37144;
            v103 = (v17 + v97);
          }

          else
          {
            v103 = (v16 + v97);
            v100 = 21676;
            v101 = 21675;
            v102 = 22240;
          }

          *v103 = 0;
          *(v9 + v102 + 4 * v97) = 12;
          --*(v9 + v101);
          ++*(v9 + v100);
          *(v171 + v97) = 1;
          v109 = HIDWORD(v172[0]);
          if ((v172[0] & 0x8000000000000000) == 0)
          {
            *(v98 + HIDWORD(v172[0])) = 0;
            if (*v99)
            {
              v110 = 36580;
              v111 = 36579;
              v112 = 37144;
            }

            else
            {
              v99 = (v16 + v109);
              v110 = 21676;
              v111 = 21675;
              v112 = 22240;
              v97 = v109;
            }

            *v99 = 0;
            *(v9 + v112 + 4 * v97) = 12;
            --*(v9 + v111);
            ++*(v9 + v110);
            *(v171 + v109) = 1;
          }
        }
      }

      v36 = HIBYTE(v146);
      if (HIBYTE(v146))
      {
        v37 = 0;
        v38 = v138;
        do
        {
          if (v32 == v37)
          {
            v3[137].f64[1] = -*(v138 + v32);
          }

          else if (v37 >= v33 && v37 < v33 + 3)
          {
            *(&v125 + v37 - v33) = *(v9 - 8 * v33 + 1584 + 8 * v37) - *v38;
          }

          v3[146].f64[v37++] = sqrt(v38[7]);
          ++v38;
        }

        while (v36 != v37);
      }

      if (*f64 > 1.0)
      {
        v39 = sqrt(*f64);
        v3[147] = vmulq_n_f64(v3[147], v39);
        v3[146] = vmulq_n_f64(v3[146], v39);
        EvLog_v("NK_LSq: DO VarFact scaling %f", v39);
      }

      v40 = 0;
      v3[138].f64[0] = v3[137].f64[1] + *(v9 + 1664) * 299792458.0;
      v41 = &v3[138].f64[1];
      v42 = v125;
      v43 = v126;
      v44 = v127;
      v45 = (v9 + 1752);
      do
      {
        v46 = *(v45 - 1) * v43 + *(v45 - 2) * v42;
        v47 = *v45;
        v45 += 3;
        v41[v40++] = v46 + v47 * v44;
      }

      while (v40 != 3);
      v3[140].f64[0] = sqrt(v3[139].f64[0] * v3[139].f64[0] + 0.0 + v3[138].f64[1] * v3[138].f64[1]);
      Comp_Track8(v41);
      v3[140].f64[1] = v48;
      if (*f64 <= 1.0)
      {
        NK_ARP_Calc_Slopes(v9 + 52776, v9 + 1736, HIBYTE(v146), v138, &v3[538]);
        v49 = SLOBYTE(v122[31].f64[1]);
        v50 = __OFSUB__(v49, 1);
        v51 = v49 - 1;
        if (v51 < 0 == v50)
        {
          v52 = 0.0;
          v53 = 128;
          v54 = v3;
          do
          {
            v55 = v54[404].f64[0];
            if (v55 > 0.0)
            {
              v52 = v52 + v54[65].f64[1] * v54[65].f64[1] / v55;
            }

            v54 = (v54 + 8);
            --v53;
          }

          while (v53);
          if (v51 >= 9)
          {
            v51 = 9;
          }

          v56 = sqrt(v52) / g_ARP_cTd_Table[v51 + 10];
          v3[543].f64[0] = v56;
          LOBYTE(v122[30].f64[1]) = v56 <= 1.0;
        }

        ARP_Calc(&v3[538]);
      }
    }
  }

  bzero(v138, 0x450uLL);
  xmmword_2A145C561 = 0u;
  unk_2A145C571 = 0u;
  xmmword_2A145C541 = 0u;
  unk_2A145C551 = 0u;
  xmmword_2A145C521 = 0u;
  unk_2A145C531 = 0u;
  xmmword_2A145C501 = 0u;
  unk_2A145C511 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v57 = v9 + 7080;
  v134 = 0u;
  v135 = 0u;
  v58 = &v163;
  v59 = 96;
  v60 = 736;
  v136 = 0u;
  v137 = 0u;
  v61 = v9;
  v62 = &v130;
  v129 = 0;
  do
  {
    if (*(v61 + 7080) == 1 && *(v61 + 57) == 1)
    {
      v63 = *(v10 + v59);
      if (v63 != 7)
      {
        v64 = v7 == 1 && v63 == 5;
        v65 = v64;
        if (!v7 || (v63 != v7 ? (v66 = !v65) : (v66 = 0), !v66))
        {
          *v58 = 1;
          if ((*v62 & 1) == 0)
          {
            ++LOBYTE(v3->f64[0]);
            ++*(&v129 + *(v10 + v59));
            *v62 = 1;
            v67 = *(v10 + v60);
            if (v67 != 255)
            {
              *(&v130 + v67) = 1;
            }
          }
        }
      }
    }

    v59 += 4;
    ++v60;
    v62 = (v62 + 1);
    v58 = (v58 + 1);
    ++v61;
  }

  while (v59 != 608);
  HIDWORD(v147) = v117;
  LODWORD(v147) = 0;
  v146 = 0x3FFFFFFFF020100;
  v68 = 3;
  if (BYTE1(v129) || BYTE5(v129) || __PAIR16__(BYTE6(v129), 0) != BYTE3(v129))
  {
    BYTE3(v146) = 3;
    v68 = 4;
    HIBYTE(v146) = 4;
  }

  if (BYTE2(v129))
  {
    BYTE4(v146) = v68;
    v68 = (v68 + 1);
    HIBYTE(v146) = v68;
  }

  if (BYTE4(v129))
  {
    BYTE5(v146) = v68;
    v68 = (v68 + 1);
    HIBYTE(v146) = v68;
  }

  if (v121 != 2)
  {
    BYTE6(v146) = v68;
    v68 = (v68 + 1);
    HIBYTE(v146) = v68;
  }

  LODWORD(v147) = 2;
  *(&v3[544].f64[1] + 4) = v146;
  HIDWORD(v3[545].f64[0]) = v147;
  v149 = v68;
  v69 = LOBYTE(v3->f64[0]);
  LOBYTE(v122[25].f64[1]) = v69 - v68;
  if (((v69 - v68) & 0x80) == 0)
  {
    memcpy(v160, v123, sizeof(v160));
    v151 = &v163;
    v152 = (v9 + 12072);
    v153 = (v9 + 17448);
    v154 = &v3->f64[1];
    v155 = &v3[64].f64[1];
    v150 = 0x1FFFFFFFFLL;
    f64 = v3[65].f64;
    v157 = v3 + 148;
    v158 = v3 + 212;
    v159 = v3 + 276;
    v148 = 1;
    v140 = 0u;
    v141 = 0u;
    *v142 = 0;
    v70 = v119;
    if (!v119 || v69 == v68 || (v69 - v68) > 3u)
    {
      goto LABEL_128;
    }

    v124 = 0.0;
    v125 = 0.0;
    if (*v116 == 1 && *(v116 + 4) == 1 && (v71 = *(v116 + 32), v71 < 625.0) && *v9 - *(v116 + 20) <= 4999)
    {
      v72 = *(v9 + 1720);
      v73 = *(v116 + 24);
    }

    else
    {
      Pos_H = Core_Get_Pos_H(*v9, 150000, &v125, &v124);
      v70 = v119;
      if (!Pos_H || v124 > 500.0)
      {
        goto LABEL_127;
      }

      v75 = 4.0;
      if (v124 < 350.0)
      {
        v75 = 3.0;
        if (v124 < 250.0)
        {
          v75 = 2.0;
          if (v124 < 150.0)
          {
            v75 = 1.5;
          }
        }
      }

      v71 = v124 * v75;
      if (v124 * v75 < 5625.0)
      {
        v71 = 5625.0;
      }

      v72 = *(v9 + 1720);
      v73 = v125;
    }

    *&v140 = v72 - v73;
    *(&v140 + 1) = v71;
    v141 = vnegq_f64(*v115);
    *v142 = -*(v9 + 1800);
LABEL_127:
    v68 = HIBYTE(v146);
LABEL_128:
    memset(&v142[8], 0, 24);
    if (!NK_Least_Squares_Core((v9 + 52776), (v9 + 1736), v68, v70, v118, v120 + 1760, v171, v172, v138))
    {
      goto LABEL_168;
    }

    v76 = v146;
    v77 = SBYTE3(v146);
    v78 = SBYTE4(v146);
    v79 = SBYTE5(v146);
    v80 = SBYTE6(v146);
    if (!v7 && *f64 < 4.0)
    {
      v104 = v172[0];
      if ((v172[0] & 0x80000000) == 0)
      {
        v105 = v151;
        *(v151 + LODWORD(v172[0])) = 0;
        *(v57 + v104) = 0;
        *(v9 + 7336 + 4 * v104) = 12;
        v106 = (*v113)--;
        v107 = v113[1];
        v113[1] = v107 + 1;
        v108 = HIDWORD(v172[0]);
        if ((v172[0] & 0x8000000000000000) == 0)
        {
          *(v105 + HIDWORD(v172[0])) = 0;
          *(v57 + v108) = 0;
          *(v9 + 7336 + 4 * v108) = 12;
          *v113 = v106 - 2;
          v113[1] = v107 + 2;
        }
      }
    }

    v81 = &v3[134].f64[1];
    v82 = 488;
    while (1)
    {
      v83 = *(v138 + v82);
      if ((v83 & 0x80000000) == 0)
      {
        if (v83 == v77)
        {
          v3[130].f64[1] = -*(v138 + v83);
        }

        else if (v83 == v78)
        {
          v3[131].f64[1] = -*(v138 + v83);
        }

        else if (v83 == v79)
        {
          v3[132].f64[1] = -*(v138 + v83);
        }

        else if (v83 == v80)
        {
          v3[133].f64[1] = -*(v138 + v83);
        }

        else
        {
          if (v83 < v76 || v76 + 2 < v83)
          {
            goto LABEL_144;
          }

          *(v81 + 8 * v83) = *(v9 + 1560 + 8 * v83) - *(v138 + v83);
        }

        v3[142].f64[v83 + 1] = sqrt(*(&v138[3] + v83 + 1));
      }

LABEL_144:
      if (++v82 == 495)
      {
        if (v77 > 0)
        {
          v3[131].f64[0] = v3[130].f64[1] + *(v9 + 1632) * 299792458.0;
        }

        if (v78 >= 1)
        {
          v3[132].f64[0] = v3[131].f64[1] + *(v9 + 1640) * 299792458.0;
        }

        if (v79 >= 1)
        {
          v3[133].f64[0] = v3[132].f64[1] + *(v9 + 1648) * 299792458.0;
        }

        if (v80 >= 1)
        {
          v3[134].f64[0] = *(v9 + 1672) + v3[133].f64[1];
        }

        ECEF2Geo(v81, &WGS84_Datum, &v3[136]);
        Comp_NEDvar_UDU(v139, HIBYTE(v146), v76, (v9 + 1736), &v125);
        Comp_ErrorEllipse(v125, v126, v84, v114->f64, &v3[141].f64[1], v3[142].f64);
        v85 = *f64;
        if (*f64 > 1.0)
        {
          v86 = sqrt(v85);
          if (v149 >= 1)
          {
            v87 = v149 + 1;
            v88 = &v3[142].f64[v149];
            do
            {
              *v88 = v86 * *v88;
              --v88;
              --v87;
            }

            while (v87 > 1);
          }

          *v114 = vmulq_n_f64(*v114, v86);
          EvLog_v("NK_LSq: PR VarFact scaling %f", v86);
          v85 = *f64;
        }

        if (v85 <= 1.0)
        {
          NK_ARP_Calc_Slopes(v9 + 52776, v9 + 1736, HIBYTE(v146), v138, &v3[532]);
          v89 = SLOBYTE(v122[25].f64[1]);
          v50 = __OFSUB__(v89, 1);
          v90 = v89 - 1;
          if (v90 < 0 == v50)
          {
            v91 = 0.0;
            v92 = 128;
            v93 = v3;
            do
            {
              v94 = v93[212].f64[0];
              if (v94 > 0.0)
              {
                v91 = v91 + v93->f64[1] * v93->f64[1] / v94;
              }

              v93 = (v93 + 8);
              --v92;
            }

            while (v92);
            if (v90 >= 9)
            {
              v90 = 9;
            }

            v95 = sqrt(v91) / g_ARP_cTd_Table[v90 + 10];
            v3[537].f64[0] = v95;
            LOBYTE(v122[24].f64[1]) = v95 <= 1.0;
          }

          ARP_Calc(&v3[532]);
        }

        break;
      }
    }
  }

LABEL_168:
  v96 = *MEMORY[0x29EDCA608];
}

void *NK_ARP_Calc_Slopes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v79 = *MEMORY[0x29EDCA608];
  *(a5 + 8) = 0u;
  v64 = (a5 + 8);
  *(a5 + 24) = 0u;
  result = ud2cov((a4 + 112), v77, a3);
  v10 = 0;
  v62 = a2;
  v63 = (a2 + 16);
  do
  {
    if (*(*(a4 + 520) + v10) != 1)
    {
      goto LABEL_41;
    }

    v11 = *(a4 + 488);
    v69 = *(a4 + 491);
    v65 = *(a4 + 492);
    v67 = *(a4 + 493);
    v70 = *(a4 + 494);
    v12 = *(a4 + 592 + 4 * v10);
    v5 = v5 & 0xFFFFFFFF00000000 | *(a4 + 496);
    NK_Least_Obs_Equ_SV(1, *(a4 + 488), v5, v12, *(a4 + 516), (a1 + 56 * v10), v78, *(*(a4 + 528) + 8 * v10));
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    v13 = *(*(a4 + 536) + 8 * v10);
    if (a3)
    {
      v14 = 0;
      do
      {
        v15 = 0;
        v16 = *(v75 + v14);
        v17 = v14 + 1;
        do
        {
          v18 = v15 + 1;
          v19 = *(v78 + v15);
          if (v15 < v14)
          {
            v20 = v15 + (((v14 + 1) * v14) >> 1);
          }

          else
          {
            v18 = v15 + 1;
            v20 = v14 + (((v15 + 1) * v15) >> 1);
          }

          v16 = v16 + v77[v20] * v19;
          v15 = v18;
        }

        while (v18 != a3);
        *(v75 + v14++) = v16 / v13;
      }

      while (v17 != a3);
    }

    v71 = 0.0;
    result = invtst((a4 + 112), v78, a3, 0.0, 0.0, 1.0e20, &v71);
    v21 = 1.0 - v71 / v13;
    v71 = v21;
    if (v21 < 0.0001)
    {
      if (*(a5 + 88) >= 1)
      {
        result = EvLog_v("NK_ARP_Calc_Slopes: Matrix B too small %f %d", v21, *(a5 + 88));
        --*(a5 + 88);
      }

      goto LABEL_41;
    }

    v22 = 0;
    v23 = fmax(v21, 0.0001);
    v71 = v23;
    v24 = v75 + v11;
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v63;
    do
    {
      v29 = *(v28 - 1) * v26 + *(v28 - 2) * v25;
      v30 = *v28;
      v28 += 3;
      *(&v72 + v22) = v29 + v30 * v27;
      v22 += 8;
    }

    while (v22 != 24);
    v31 = v13 / v23;
    v32 = v31 * (v73 * v73 + v72 * v72);
    if (v32 > *v64)
    {
      *(a5 + 8) = v32;
      *a5 = v10;
    }

    v33 = v31 * (v74 * v74);
    if (v33 > *(a5 + 16))
    {
      *(a5 + 16) = v33;
      *(a5 + 1) = v10;
    }

    v34 = *(a4 + 496);
    if (v34 == 2)
    {
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          v35 = v65;
          if (v12 != 2)
          {
            v35 = v69;
          }

          goto LABEL_34;
        }

        if (v12)
        {
          v35 = v69;
          goto LABEL_34;
        }

LABEL_30:
        result = EvCrt_Illegal_switch_case("NK_ARP_Calc_Slopes", 0x78Cu);
        goto LABEL_31;
      }

      v35 = v69;
      if ((v12 - 5) < 2)
      {
        goto LABEL_34;
      }

      v35 = v67;
      if (v12 == 4)
      {
        goto LABEL_34;
      }

      if (v12 == 7)
      {
        goto LABEL_30;
      }
    }

    else if (v34 == 1)
    {
      v35 = v69;
LABEL_34:
      v36 = v70;
      if (v35 >= 1)
      {
        v33 = v31 * (*(v75 + v35) * *(v75 + v35));
      }

      goto LABEL_36;
    }

LABEL_31:
    v36 = v70;
LABEL_36:
    if (v33 > *(a5 + 24))
    {
      *(a5 + 24) = v33;
      *(a5 + 2) = v10;
    }

    if (v36 >= 1)
    {
      v37 = v31 * (*(v75 + v36) * *(v75 + v36));
      if (v37 > *(a5 + 32))
      {
        *(a5 + 32) = v37;
        *(a5 + 3) = v10;
      }
    }

LABEL_41:
    ++v10;
  }

  while (v10 != 128);
  v38 = *(a4 + 408);
  if (v38 > 0.0)
  {
    memset(v78, 0, sizeof(v78));
    v39 = *(a4 + 488);
    v40 = v78 + 8 * v39;
    *v40 = *(a4 + 416);
    *(v40 + 2) = *(a4 + 432);
    *(v78 + a3) = *(a4 + 400);
    if (a3)
    {
      v41 = 0;
      do
      {
        v42 = 0;
        v43 = v41 + 1;
        v44 = 0.0;
        do
        {
          v45 = v42 + 1;
          v46 = *(v78 + v42);
          if (v42 < v41)
          {
            v47 = v42 + (((v41 + 1) * v41) >> 1);
          }

          else
          {
            v45 = v42 + 1;
            v47 = v41 + (((v42 + 1) * v42) >> 1);
          }

          v44 = v44 + v77[v47] * v46;
          v42 = v45;
        }

        while (v45 != a3);
        *(v75 + v41++) = v44 / v38;
      }

      while (v43 != a3);
    }

    v71 = 0.0;
    result = invtst((a4 + 112), v78, a3, 0.0, 0.0, 1.0e20, &v71);
    v48 = 1.0 - v71 / v38;
    if (v48 >= 0.0000001)
    {
      v49 = 0;
      v50 = fmax(v48, 0.0000001);
      v51 = v75 + v39;
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = (v62 + 16);
      do
      {
        v56 = *(v55 - 1) * v53 + *(v55 - 2) * v52;
        v57 = *v55;
        v55 += 3;
        *(&v72 + v49) = v56 + v57 * v54;
        v49 += 8;
      }

      while (v49 != 24);
      v58 = v38 / v50;
      v59 = v58 * (v73 * v73 + v72 * v72);
      if (v59 > *v64)
      {
        *(a5 + 8) = v59;
        *a5 = 0x80;
      }

      v60 = v58 * (v74 * v74);
      if (v60 > *(a5 + 16))
      {
        *(a5 + 16) = v60;
        *(a5 + 1) = 0x80;
      }
    }

    else if (*(a5 + 88) >= 1)
    {
      result = EvLog_v("NK_ARP_Calc_Slopes: Vert Matrix B too small %f %d", 1.0 - v71 / v38, *(a5 + 88));
      --*(a5 + 88);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
  return result;
}