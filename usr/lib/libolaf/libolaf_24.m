void sub_29967991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&a33, 0);
  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100]((v52 + 160), 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a41, 0);
  _Block_object_dispose(&a47, 8);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *__Block_byref_object_dispose__16(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 40);

  return std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](v2, 0);
}

__n128 __Block_byref_object_copy__17(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
  }
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t **__Block_byref_object_dispose__20(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 40);

  return std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v2, 0);
}

__n128 __Block_byref_object_copy__21(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2[1] = *MEMORY[0x29EDCA608];
  v2[0] = (a1 + 40);
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](v2);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_23(void *a1)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v13 = v2;
  v14[0] = 0;
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  v11 = 0;
  v12 = v6;
  v7 = a1[11];
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(v7, v14, &v13, v3 + 40, v4 + 40, &v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    MEMORY[0x29C29EB20](v8, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v12, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v13, 0);
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    result = MEMORY[0x29C29EB20](result, 0x1000C4043D32D5CLL);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299679F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
    MEMORY[0x29C29EB20](a10, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a11, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a12, 0);
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    MEMORY[0x29C29EB20](v14, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_64c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 64;
  v4 = a2 + 64;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_64c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 64;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2(void *a1)
{
  v92 = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3002000000;
  v79 = __Block_byref_object_copy__30;
  v80 = __Block_byref_object_dispose__31;
  v81 = 0;
  if ((*(v1 + 280) & 1) == 0)
  {
    goto LABEL_148;
  }

  v3 = a1[5];
  v2 = a1[6];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = operator new(0xC8uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    snprintf(v85, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_02GetPvtmInfo", 265, "Memory allocation failed for FixData");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v69 = mach_continuous_time();
      v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v69), "OSA", 69, "Ga06_02GetPvtmInfo", v85);
      LbsOsaTrace_WriteLog(0xEu, __str, v70, 0, 1);
    }

    if (gp_Logger)
    {
      (*(*gp_Logger + 48))(gp_Logger);
    }

    __assert_rtn("Ga06_02GetPvtmInfo", "ga06GnssPvtmUtils.cpp", 265, "false && Memory allocation failed for FixData");
  }

  v5 = v4;
  *(v4 + 2) = -1082130432;
  v4[12] = 0;
  *(v4 + 4) = 0;
  *(v4 + 3) = -1;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v4 + 4) = 0u;
  *(v4 + 5) = _Q1;
  *(v4 + 6) = _Q1;
  *(v4 + 14) = 0;
  v11 = v4 + 112;
  *(v4 + 32) = 0;
  *(v4 + 15) = 0;
  *(v4 + 136) = _Q1;
  *(v4 + 152) = xmmword_299760840;
  *(v4 + 168) = _Q1;
  *(v4 + 23) = 0;
  *(v4 + 48) = 0;
  *v4 = vcvtad_u64_f64(*(v3 + 5) * 1000000000.0) + 604800000000000 * *(v3 + 14);
  v12 = *(v3 + 4) * 1000000000.0;
  if (v12 <= 3.40282347e38)
  {
    v13 = v12;
    if (!*(v3 + 9))
    {
      v13 = 3.4028e38;
    }
  }

  else
  {
    v13 = 3.4028e38;
  }

  *(v4 + 2) = v13;
  if (*(v3 + 10) == 1)
  {
    v14 = *(v3 + 9);
  }

  else
  {
    v14 = 0;
  }

  v4[12] = v14 & 1;
  v15 = *(v3 + 8);
  if (v15 > 2147483650.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UtcCorr,%.9f\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga06_02GetPvtmInfo", 770, v15);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    MEMORY[0x29C29EB20](v5, 0x1000C4043D32D5CLL);
    v5 = 0;
    goto LABEL_141;
  }

  v18 = -0.5;
  if (v15 > 0.0)
  {
    v18 = 0.5;
  }

  *(v4 + 4) = (v15 + v18);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  v71 = v2;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LeapSec BeforeRound,%.9f,AfterRound,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga06_02GetPvtmInfo", v15, *(v5 + 4));
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

  v22 = v15 - v15;
  if (v22 > 0.0000005 && v22 < 0.9999995)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UtcCorr beyond 500ns from seconds boundary,%.9f\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 87, "Ga06_02GetPvtmInfo", 770, v15);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v24, 2, 1);
    }
  }

  *(v5 + 3) = 1000000 * *v3;
  *(v5 + 3) = *(v3 + 26);
  v25 = *(v3 + 15);
  *(v5 + 8) = v25;
  *(v5 + 9) = v25 - *(v3 + 16);
  *(v5 + 5) = *(v3 + 12);
  *(v5 + 6) = *(v3 + 13);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = 0;
  v27 = 0;
  v28 = v3 + 77;
  do
  {
    if (*(v3 + v26 + 5688) != 1)
    {
      goto LABEL_42;
    }

    v29 = *(v28 + v26);
    if (v29 > 2)
    {
      switch(v29)
      {
        case 3u:
          v27 |= 0x10u;
          goto LABEL_42;
        case 5u:
          v27 |= 4u;
          goto LABEL_42;
        case 6u:
          v27 |= 8u;
          goto LABEL_42;
      }
    }

    else
    {
      if (!*(v28 + v26))
      {
        goto LABEL_42;
      }

      if (v29 == 1)
      {
        v27 |= 1u;
        goto LABEL_42;
      }

      if (v29 == 2)
      {
        v27 |= 2u;
        goto LABEL_42;
      }
    }

    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstType,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 87, "Ga06_03GetConstlUsedInFix", 770, v29);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v31, 2, 1);
    }

LABEL_42:
    ++v26;
  }

  while (v26 != 128);
  *v11 = v27;
  v2 = v71;
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  v32 = *(v3 + 304);
  if (v32 <= 1)
  {
    if (!*(v3 + 304))
    {
      *(v5 + 29) = 0;
      goto LABEL_56;
    }

    if (v32 != 1)
    {
      goto LABEL_159;
    }

    v33 = 10;
LABEL_55:
    *(v5 + 29) = v33;
    goto LABEL_56;
  }

  switch(v32)
  {
    case 2u:
      v33 = 25;
      goto LABEL_55;
    case 3u:
      v33 = 50;
      goto LABEL_55;
    case 4u:
      v33 = 75;
      goto LABEL_55;
  }

LABEL_159:
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v67 = mach_continuous_time();
    v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rel,%hhu\n", (*&g_MacClockTicksToMsRelation * v67), "ADP", 87, "Ga06_02GetPvtmInfo", 770, *(v3 + 304));
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v68, 2, 1);
  }

LABEL_56:
  v34 = v3[75];
  if (!v34)
  {
    *(v5 + 15) = 0;
    goto LABEL_103;
  }

  if ((v34 & 1) == 0)
  {
    if ((v34 & 2) == 0)
    {
      goto LABEL_59;
    }

LABEL_82:
    *(v5 + 15) |= 1uLL;
    if ((v34 & 4) != 0)
    {
      goto LABEL_83;
    }

LABEL_60:
    if ((v34 & 0x40) == 0)
    {
      goto LABEL_61;
    }

LABEL_84:
    *(v5 + 15) |= 8uLL;
    if ((v34 & 0x80) != 0)
    {
      goto LABEL_85;
    }

LABEL_62:
    if ((v34 & 0x100) == 0)
    {
      goto LABEL_63;
    }

LABEL_86:
    *(v5 + 15) |= 0x400uLL;
    if ((v34 & 0x200) != 0)
    {
      goto LABEL_87;
    }

LABEL_64:
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_65;
    }

LABEL_88:
    *(v5 + 15) |= 0x1000uLL;
    if ((v34 & 0x800) != 0)
    {
      goto LABEL_89;
    }

LABEL_66:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

LABEL_90:
    *(v5 + 15) |= 0x2000uLL;
    if ((v34 & 0x2000) != 0)
    {
      goto LABEL_91;
    }

LABEL_68:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

LABEL_92:
    *(v5 + 15) |= 0x200uLL;
    if ((v34 & 0x8000) != 0)
    {
      goto LABEL_93;
    }

LABEL_70:
    if ((v34 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

LABEL_94:
    *(v5 + 15) |= 0x8000uLL;
    if ((v34 & 0x20000) != 0)
    {
      goto LABEL_95;
    }

LABEL_72:
    if ((v34 & 0x40000) == 0)
    {
      goto LABEL_73;
    }

LABEL_96:
    *(v5 + 15) |= 0x10000uLL;
    if ((v34 & 0x1000000) != 0)
    {
      goto LABEL_97;
    }

LABEL_74:
    if ((v34 & 0x2000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_98:
    *(v5 + 15) |= 0x40uLL;
    if ((v34 & 0x4000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_76:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_100:
    *(v5 + 15) |= 0x40000uLL;
    if ((v34 & 0x20000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_78:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

LABEL_102:
    *(v5 + 15) |= 0x100000uLL;
    goto LABEL_103;
  }

  *(v5 + 15) |= 2uLL;
  if ((v34 & 2) != 0)
  {
    goto LABEL_82;
  }

LABEL_59:
  if ((v34 & 4) == 0)
  {
    goto LABEL_60;
  }

LABEL_83:
  *(v5 + 15) |= 4uLL;
  if ((v34 & 0x40) != 0)
  {
    goto LABEL_84;
  }

LABEL_61:
  if ((v34 & 0x80) == 0)
  {
    goto LABEL_62;
  }

LABEL_85:
  *(v5 + 15) |= 0x10uLL;
  if ((v34 & 0x100) != 0)
  {
    goto LABEL_86;
  }

LABEL_63:
  if ((v34 & 0x200) == 0)
  {
    goto LABEL_64;
  }

LABEL_87:
  *(v5 + 15) |= 0x800uLL;
  if ((v34 & 0x400) != 0)
  {
    goto LABEL_88;
  }

LABEL_65:
  if ((v34 & 0x800) == 0)
  {
    goto LABEL_66;
  }

LABEL_89:
  *(v5 + 15) |= 0x200000uLL;
  if ((v34 & 0x1000) != 0)
  {
    goto LABEL_90;
  }

LABEL_67:
  if ((v34 & 0x2000) == 0)
  {
    goto LABEL_68;
  }

LABEL_91:
  *(v5 + 15) |= 0x100uLL;
  if ((v34 & 0x4000) != 0)
  {
    goto LABEL_92;
  }

LABEL_69:
  if ((v34 & 0x8000) == 0)
  {
    goto LABEL_70;
  }

LABEL_93:
  *(v5 + 15) |= 0x4000uLL;
  if ((v34 & 0x10000) != 0)
  {
    goto LABEL_94;
  }

LABEL_71:
  if ((v34 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

LABEL_95:
  *(v5 + 15) |= 0x20000uLL;
  if ((v34 & 0x40000) != 0)
  {
    goto LABEL_96;
  }

LABEL_73:
  if ((v34 & 0x1000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_97:
  *(v5 + 15) |= 0x20uLL;
  if ((v34 & 0x2000000) != 0)
  {
    goto LABEL_98;
  }

LABEL_75:
  if ((v34 & 0x4000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_99:
  *(v5 + 15) |= 0x80uLL;
  if ((v34 & 0x10000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_77:
  if ((v34 & 0x20000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_101:
  *(v5 + 15) |= 0x80000uLL;
  if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_102;
  }

LABEL_103:
  v35 = *(v3 + 293);
  if (v35 <= 1)
  {
    if (!*(v3 + 293))
    {
      *(v5 + 32) = 0;
      goto LABEL_108;
    }

    if (v35 == 1)
    {
      goto LABEL_107;
    }
  }

  else if (v35 == 2 || v35 == 3 || v35 == 4)
  {
LABEL_107:
    *(v5 + 32) = v35;
    goto LABEL_108;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v42 = mach_continuous_time();
    v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssContent,%hhu\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 87, "Ga06_02GetPvtmInfo", 770, *(v3 + 293));
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v43, 2, 1);
  }

LABEL_108:
  *(v5 + 17) = *(v3 + 17);
  *(v5 + 18) = *(v3 + 28);
  *(v5 + 19) = *(v3 + 19);
  *(v5 + 20) = *(v3 + 29);
  v36 = *(v3 + 18);
  if (v36 < 0.0 || v36 >= 360.0 || (v37 = *(v3 + 30), v37 <= 0.0))
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = *(v3 + 18);
      v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Course,%f,Uncertainty,%f\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "Ga06_02GetPvtmInfo", 515, v39, *(v3 + 30));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v40, 0, 1);
    }
  }

  else
  {
    *(v5 + 21) = v36;
    *(v5 + 22) = v37;
  }

  *(v5 + 23) = gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(IsLoggingAllowed, v3[74]);
  v41 = *(v3 + 305);
  if (v41 > 1)
  {
    if (v41 != 2 && v41 != 3)
    {
      goto LABEL_125;
    }

    goto LABEL_120;
  }

  if (!*(v3 + 305))
  {
    *(v5 + 48) = 0;
    goto LABEL_128;
  }

  if (v41 == 1)
  {
LABEL_120:
    *(v5 + 48) = v41;
    goto LABEL_128;
  }

LABEL_125:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EstimationTech,%u\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 87, "Ga06_02GetPvtmInfo", 770, *(v3 + 305));
    LbsOsaTrace_WriteLog(0x18u, __str, v45, 2, 1);
  }

LABEL_128:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v46 = mach_continuous_time();
    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: spoofingFlags,%llu,Rel,%u,AssisUsed,%llu,GnssContentInFix,%u,EstimTech,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 23), *(v5 + 29), *(v5 + 15), *(v5 + 32), *(v5 + 48));
    LbsOsaTrace_WriteLog(0x18u, __str, v47, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v48 = mach_continuous_time();
    v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%f,Lon,%f,Alt,%f\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 6), *(v5 + 7), *(v5 + 8));
    LbsOsaTrace_WriteLog(0x18u, __str, v49, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v50 = mach_continuous_time();
    v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeNS,%llu,TimeUncNs,%f,LeapStart,%d,ClkNs,%llu\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 73, "Ga06_02GetPvtmInfo", *v5, *(v5 + 2), *(v5 + 4), *(v5 + 3));
    LbsOsaTrace_WriteLog(0x18u, __str, v51, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (v5[12])
    {
      v53 = 84;
    }

    else
    {
      v53 = 70;
    }

    v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LeapSecValid,%c,VUnc,%f,HMajUnc,%f,HMinUnc,%f,HAzmBrg,%f,HS,%f,HSpeedUnc,%f,VVel,%f,VVelUnc,%f\n", v52, "ADP", 73, "Ga06_02GetPvtmInfo", v53, *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13), *(v5 + 17), *(v5 + 18), *(v5 + 19), *(v5 + 20));
    LbsOsaTrace_WriteLog(0x18u, __str, v54, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v55 = mach_continuous_time();
    v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: U,%f,S,%u,C,%f,CUnc,%f\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 9), *(v5 + 28), *(v5 + 21), *(v5 + 22));
    LbsOsaTrace_WriteLog(0x18u, __str, v56, 4, 1);
  }

LABEL_141:
  v57 = v77[5];
  v77[5] = v5;
  if (v57)
  {
    MEMORY[0x29C29EB20](v57, 0x1000C4043D32D5CLL);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v77[5])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v58 = mach_continuous_time();
      v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reporting PVTM\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 68, "Ga06_01ReportPvtm_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v59, 5, 1);
    }

LABEL_148:
    *v85 = 0;
    v86 = v85;
    v87 = 0x4002000000;
    v88 = __Block_byref_object_copy__21;
    v89 = __Block_byref_object_dispose__22;
    memset(v90, 0, 24);
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x4002000000;
    v72[3] = __Block_byref_object_copy__17;
    v72[4] = __Block_byref_object_dispose__18;
    __p = 0;
    v74 = 0;
    v75 = 0;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v84, v1 + 312);
    v60 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2_34;
    block[3] = &unk_2A1F89D98;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v83, v84);
    block[4] = &v76;
    block[5] = v85;
    block[6] = v72;
    dispatch_async(v60, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v61 = mach_continuous_time();
      v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PVT update Sent out\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 77, "Ga06_01ReportPvtm_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v62, 3, 1);
    }

    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v83);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v84);
    _Block_object_dispose(v72, 8);
    if (__p)
    {
      v74 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v85, 8);
    *__str = v90;
    std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](__str);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v65 = mach_continuous_time();
    v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fix\n", (*&g_MacClockTicksToMsRelation * v65), "ADP", 69, "Ga06_01ReportPvtm_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v66, 0, 1);
  }

  _Block_object_dispose(&v76, 8);
  result = v81;
  v81 = 0;
  if (result)
  {
    result = MEMORY[0x29C29EB20](result, 0x1000C4043D32D5CLL);
  }

  v64 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29967B274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  MEMORY[0x29C29EB20](v37, 0x1000C4043D32D5CLL);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Block_object_dispose(&a32, 8);
  v39 = a37;
  a37 = 0;
  if (v39)
  {
    MEMORY[0x29C29EB20](v39, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __Block_byref_object_dispose__31(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2_34(void *a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v11 = 0;
  v12[0] = v2;
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v9 = 0;
  v10 = 0;
  v5 = a1[10];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, v12, &v11, v3 + 40, v4 + 40, &v10, &v9);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    MEMORY[0x29C29EB20](v6, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v10, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v11, 0);
  result = v12[0];
  v12[0] = 0;
  if (result)
  {
    result = MEMORY[0x29C29EB20](result, 0x1000C4043D32D5CLL);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29967B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
    MEMORY[0x29C29EB20](a10, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a11, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a12, 0);
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    MEMORY[0x29C29EB20](v14, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_56c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 56;
  v4 = a2 + 56;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_56c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 56;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v2);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19s_Gnm_AppCStructNavEE(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19s_Gnm_AppCStructNavEE(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];
  }
}

uint64_t gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(gnss::GnssAdaptDevice *this, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2 & 0x20F | (((a2 >> 4) & 1) << 6) | (a2 >> 4) & 0x10 | (a2 >> 3) & 0x80 | (a2 >> 7) & 0x20 | (a2 >> 5) & 0x100;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnsAsstSpoofMask,%u,Spoofing Flag,%llu\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga06_18GetGnssSpoofingFlag", a2, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t gnss::GnssAdaptDevice::Ga06_17GetDetectionMethod(uint64_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  if (result >= 5)
  {
    v1 = result;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Default MeasModelCode,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 87, "Ga06_17GetDetectionMethod", 770, v1);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 2, 1);
      result = 0;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga06_19GetSvHealthAndIntegrity(uint64_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  if (result >= 3)
  {
    v1 = result;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HealthUnknown,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 87, "Ga06_19GetSvHealthAndIntegrity", 770, v1);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 2, 1);
      result = 0;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB(gnss::GnssAdaptDevice *a1, const void *a2, unsigned __int16 a3)
{
  v5 = a1;
  v22 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    if (v5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Report Err,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga06_16ReportNmea", 769, v5);
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }
    }

    else if (a2)
    {
      v9 = DeviceInstance;
      if (a3 >= 0x17uLL)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      __dst.__r_.__value_.__s.__data_[a3] = 0;
      v12 = *(v9 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v17 = 1174405120;
      v18 = ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke;
      v19 = &__block_descriptor_tmp_108;
      v20 = v9;
      v13 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      dispatch_async(v12, __str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v13 < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NMEA Payload\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 87, "Ga06_16ReportNmea", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 2, 1);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v62[6] = 0;
  v3 = MEMORY[0x29EDC95A0] + 64;
  v62[0] = MEMORY[0x29EDC95A0] + 64;
  v4 = *(MEMORY[0x29EDC9530] + 16);
  v58[0] = *(MEMORY[0x29EDC9530] + 8);
  *(v58 + *(v58[0] - 24)) = v4;
  v58[1] = 0;
  v5 = (v58 + *(v58[0] - 24));
  std::ios_base::init(v5, &v59);
  v6 = MEMORY[0x29EDC95A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v58[0] = v6;
  v62[0] = v3;
  std::stringbuf::basic_stringbuf[abi:ne200100](&v59, (a1 + 40), 8);
  v48 = 0;
  v49 = &v48;
  v50 = 0x4002000000;
  v51 = __Block_byref_object_copy__103;
  v52 = __Block_byref_object_dispose__104;
  memset(v53, 0, 24);
  memset(&v47, 0, sizeof(v47));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v58, &v47);
  if ((*(&v60[1].__locale_ + *(v58[0] - 24)) & 5) != 0)
  {
    first = 0;
  }

  else
  {
    first = v58;
  }

  v8 = v49;
  v54 = first;
  v44 = a1;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
    first = v54;
  }

  else
  {
    v55 = v47;
  }

  size = v55.__r_.__value_.__l.__size_;
  v10 = v55.__r_.__value_.__r.__words[0];
  v63[0] = v55.__r_.__value_.__r.__words[2];
  *(v63 + 3) = *(&v55.__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v55.__r_.__value_.__r.__words[2]);
  memset(&v55, 0, sizeof(v55));
  v56 = first;
  v45 = v10;
  v46 = v11;
  if (v11 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10, size);
    first = v56;
    size = __p.__r_.__value_.__l.__size_;
    v12 = __p.__r_.__value_.__r.__words[0];
    LOBYTE(v11) = *(&__p.__r_.__value_.__s + 23);
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = __PAIR128__(size, v10);
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v63[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v63 + 3);
    v12 = v10;
  }

  LODWORD(v64) = __p.__r_.__value_.__r.__words[2];
  *(&v64 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
  memset(&__p, 0, sizeof(__p));
  v74.__first_ = first;
  if ((v11 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v74.__begin_, v12, size);
    first = v74.__first_;
    begin = v74.__begin_;
    value_high = HIBYTE(v74.__end_cap_.__value_);
  }

  else
  {
    v74.__begin_ = v12;
    v74.__end_ = size;
    LODWORD(v74.__end_cap_.__value_) = v64;
    *(&v74.__end_cap_.__value_ + 3) = *(&v64 + 3);
    value_high = v11;
    begin = v12;
  }

  v70[1] = v74.__end_;
  *(&v70[1] + 7) = *(&v74.__end_ + 7);
  *__str = first;
  v70[0] = begin;
  HIBYTE(v70[2]) = value_high;
  v70[3] = 0;
  if ((v11 & 0x80) != 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __s = *v70;
  v64 = first;
  v66 = v70[2];
  memset(v70, 0, 24);
  v72 = 0;
  v73 = 0;
  v71 = 0;
  if (first)
  {
    v15 = v8 + 5;
    while (1)
    {
      v17 = v8[6];
      v16 = v8[7];
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v15) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v74.__end_cap_.__value_ = (v8 + 5);
        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v24 = (24 * v19);
        v74.__first_ = 0;
        v74.__begin_ = v24;
        value = 0;
        v74.__end_ = v24;
        v74.__end_cap_.__value_ = 0;
        if (SHIBYTE(v66) < 0)
        {
          std::string::__init_copy_ctor_external(v24, __s, *(&__s + 1));
          v24 = v74.__begin_;
          end = v74.__end_;
          value = v74.__end_cap_.__value_;
        }

        else
        {
          *&v24->__r_.__value_.__l.__data_ = __s;
          v24->__r_.__value_.__r.__words[2] = v66;
          end = v24;
        }

        v23 = end + 1;
        v27 = v8[5];
        v28 = v8[6] - v27;
        v29 = v24 - v28;
        memcpy(v24 - v28, v27, v28);
        v30 = v8[5];
        v8[5] = v29;
        v8[6] = v23;
        v31 = v8[7];
        v8[7] = value;
        v74.__end_ = v30;
        v74.__end_cap_.__value_ = v31;
        v74.__first_ = v30;
        v74.__begin_ = v30;
        std::__split_buffer<std::string>::~__split_buffer(&v74);
      }

      else
      {
        if (SHIBYTE(v66) < 0)
        {
          std::string::__init_copy_ctor_external(v8[6], __s, *(&__s + 1));
        }

        else
        {
          v18 = __s;
          *(v17 + 16) = v66;
          *v17 = v18;
        }

        v23 = (v17 + 24);
        v8[6] = v17 + 24;
      }

      v8[6] = v23;
      v32 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v64, &__s);
      if ((*(v32 + *(*v32 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (!v64)
      {
        goto LABEL_41;
      }
    }

    v64 = 0;
  }

LABEL_41:
  v33 = __s;
  v34 = SHIBYTE(v66);
  __s = 0uLL;
  v66 = 0;
  if (v46 < 0)
  {
    operator delete(v45);
  }

  v35 = MEMORY[0x29EDC9530];
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v70[2]) < 0)
  {
    operator delete(v70[0]);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v33);
LABEL_47:
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](&v74, v2 + 408);
  if (v74.__end_cap_.__value_)
  {
    v36 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke_2;
    block[3] = &unk_2A1F89E00;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v68, &v74);
    block[4] = &v48;
    dispatch_async(v36, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v37 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v38 = *(v44 + 63);
      if (v38 < 0)
      {
        v38 = *(v44 + 48);
      }

      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NMEA Sent len,%zu\n", v37, "ADP", 77, "Ga06_16ReportNmea_block_invoke", v38);
      LbsOsaTrace_WriteLog(0x18u, __str, v39, 3, 1);
    }

    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v68);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NMEA\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "Ga06_16ReportNmea_block_invoke", 516);
    LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
  }

  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](&v74);
  _Block_object_dispose(&v48, 8);
  *__str = v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__str);
  v58[0] = *v35;
  *(v58 + *(v58[0] - 24)) = v35[3];
  v59 = MEMORY[0x29EDC9570] + 16;
  if (v61 < 0)
  {
    operator delete(v60[7].__locale_);
  }

  v59 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v60);
  std::istream::~istream();
  result = MEMORY[0x29C29EAA0](v62);
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29967C600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v42 - 136);
  _Block_object_dispose(&a25, 8);
  a33 = a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  std::istringstream::~istringstream(&a42);
  MEMORY[0x29C29EAA0](a20);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__103(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void __Block_byref_object_dispose__104(uint64_t a1)
{
  v2[1] = *MEMORY[0x29EDCA608];
  v2[0] = (a1 + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v2);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);
  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  v6 = *(*(a1 + 32) + 8) + 40;

  return v3();
}

uint64_t __copy_helper_block_e8_40c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v2);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a2 + 63) < 0)
  {
    v4 = *(a2 + 48);
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];
    v7 = (a1 + 40);
    v8 = *(a2 + 40);

    std::string::__init_copy_ctor_external(v7, v8, v4);
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
    v3 = *MEMORY[0x29EDCA608];
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];

    operator delete(v3);
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];
  }
}

void std::vector<gnss::SvPositionAtTime>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
  v16 = *MEMORY[0x29EDCA608];
}

void gnss::SvInfo::~SvInfo(gnss::SvInfo *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    MEMORY[0x29C29EB20](v3, 0x1000C40AC4F46D1);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9530];
  v3 = *MEMORY[0x29EDC9530];
  *a1 = *MEMORY[0x29EDC9530];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));
  v4 = *MEMORY[0x29EDCA608];

  return std::istream::~istream();
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4[0] = (v2 + 112);
    std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](v4);
    result = MEMORY[0x29C29EB20](v2, 0x1020C40B6788CC9);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 176;
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](v4 - 2, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v7 = *MEMORY[0x29EDCA608];

    operator delete(v5);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];
  }
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      MEMORY[0x29C29EB20](v3, 0x1000C4095D96C66);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      MEMORY[0x29C29EB20](v4, 0x1000C4095D96C66);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      MEMORY[0x29C29EB20](v5, 0x1000C4095D96C66);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      MEMORY[0x29C29EB20](v6, 0x1000C40D315E998);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      MEMORY[0x29C29EB20](v7, 0x1000C4079AA8B5ELL);
    }

    v8 = *MEMORY[0x29EDCA608];

    JUMPOUT(0x29C29EB20);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 17;
        std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = *MEMORY[0x29EDCA608];

    operator delete(v5);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
    v8 = *MEMORY[0x29EDCA608];
  }
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  std::__shared_weak_count::~__shared_weak_count(this);
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  std::__shared_weak_count::~__shared_weak_count(a1);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__on_zero_shared(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = *(a1 + 24);
  if (result)
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    JUMPOUT(0x29C29EB20);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  {
    result = a1;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__on_zero_shared_weak(void *__p)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  operator delete(__p);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v1 = *MEMORY[0x29EDCA608];
  }

  else
  {
    (a1->__on_zero_shared)(a1);
    v3 = *MEMORY[0x29EDCA608];

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[12];
    if (v4)
    {
      v2[13] = v4;
      operator delete(v4);
    }

    v5 = *MEMORY[0x29EDCA608];

    JUMPOUT(0x29C29EB20);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(void *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    MEMORY[0x29C29EB20](v3, 0x1000C40AC4F46D1);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    v5 = *MEMORY[0x29EDCA608];

    operator delete(v4);
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SvInfo>>(unint64_t a1)
{
  v1 = *MEMORY[0x29EDCA608];
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<gnss::SvInfo>,gnss::SvInfo*>(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      *(a3 + 24) = *(v5 + 3);
      v7 = v5[6];
      *(a3 + 40) = v5[5];
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v5[6] = 0;
      *(a3 + 48) = v7;
      v8 = *(v5 + 7);
      v9 = *(v5 + 9);
      v10 = *(v5 + 11);
      *(a3 + 104) = *(v5 + 52);
      *(a3 + 88) = v10;
      *(a3 + 72) = v9;
      *(a3 + 56) = v8;
      *(a3 + 120) = 0;
      *(a3 + 128) = 0;
      *(a3 + 112) = 0;
      *(a3 + 112) = *(v5 + 7);
      *(a3 + 128) = v5[16];
      v5[14] = 0;
      v5[15] = 0;
      v5[16] = 0;
      v5 += 17;
      a3 += 136;
    }

    while (v5 != a2);
    do
    {
      std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      v4 += 17;
    }

    while (v4 != a2);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t std::__split_buffer<gnss::SvInfo>::~__split_buffer(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v7 = *MEMORY[0x29EDCA608];

    operator delete(v5);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];
  }
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C29E9B0](&v21, a1, 0);
  if (v21 != 1)
  {
    goto LABEL_29;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v20);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
LABEL_29:
  v18 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29967DAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (a2)
  {
    std::locale::~locale(&a10);
    __cxa_begin_catch(exception_object);
    v12 = *v10;
    *(v10 + *(*v10 - 24) + 32) |= 1u;
    if ((*(v10 + *(v12 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      v13 = *v10;
      JUMPOUT(0x29967DA44);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  v6 = *MEMORY[0x29EDCA608];
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void SuplResponseRecdVer2::UpdateLppADPayload(SuplUtils *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(SuplUtils::GetInstance(a1) + 36))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (a3)
    {
      v7 = *(a3 + 32);
      v6 = a3 + 32;
      v5 = v7;
      if (v6 != &v19)
      {
        v8 = *(v6 + 8);
        if (v5 != v8)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v19, v5, v8, v8 - v5);
          v9 = v19;
          v10 = v20;
          if (v19 != v20)
          {
            v11 = *(a2 + 8);
            __p = 0;
            v23 = 0;
            v24 = 0;
            *(v11 + 656) = 4;
            std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v9, v10, v10 - v9);
            std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100]((v11 + 744), &__p);
            *(v11 + 736) = 1;
            *(v11 + 2) = 1;
            if (__p)
            {
              v23 = __p;
              operator delete(__p);
            }

LABEL_14:
            if (v19)
            {
              v20 = v19;
              operator delete(v19);
            }

            goto LABEL_16;
          }
        }
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "UpdateLppADPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, &__p, v15, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "UpdateLppADPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, &__p, v17, 0, 1);
    }

    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "UpdateLppADPayload", 770);
    LbsOsaTrace_WriteLog(0x12u, &__p, v13, 0, 1);
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
}

void SuplResponseRecdVer2::UpdateLppCapPayload(SuplResponseRecdVer2 *this, ASN1T_UlpMessage *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  Instance = SuplUtils::GetInstance(this);
  if (*(Instance + 36))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v4 = SuplLppProvider::GetInstance(Instance);
    if (&v14 == v4 || (v5 = *(v4 + 8), *v4 == v5) || (std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v14, *v4, v5, &v5[-*v4]), v6 = v14, v7 = v15, v14 == v15))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(&__p, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "UpdateLppCapPayload", 513);
        LbsOsaTrace_WriteLog(0x12u, &__p, v10, 0, 1);
      }
    }

    else
    {
      v8 = *(a2 + 1);
      __p = 0;
      v18 = 0;
      v19 = 0;
      *(v8 + 656) = 4;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v7, v7 - v6);
      std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100]((v8 + 744), &__p);
      *(v8 + 736) = 1;
      *(v8 + 2) = 1;
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "UpdateLppCapPayload", 770);
    LbsOsaTrace_WriteLog(0x12u, &__p, v12, 0, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PD_TriggerType(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v13 = 0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = BitFromBuffer == 0;
  }

  if (v6)
  {
    v10 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v13);
    if (v10)
    {
      v7 = v10;
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
LABEL_13:
      SuplAsn1Logger::TraceError(v10, v8, v9);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = Asn1Coder::DecodeEnumerationExtension(a1, &v13);
    if (v10)
    {
      v7 = v10;
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (*a2 > 1u)
  {
    v7 = 4;
    *(a1 + 16) = 4;
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    LODWORD(v10) = 4;
    goto LABEL_13;
  }

  v7 = 0;
  *a2 = v13;
LABEL_14:
  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t GncP00_04HandleInitInd()
{
  v16 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP00_04HandleInitInd");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
  }

  GncP01_00InitPeUpdate(IsLoggingAllowed, v1, v2, v3, v4, v5);
  v8 = 0;
  v14 = 0u;
  memset(v15, 0, 28);
  *__str = 0u;
  v13 = 0u;
  do
  {
    v9 = &__str[v8];
    v9[4] = 0;
    *(v9 + 6) = 0;
    *(v9 + 12) = 0;
    *(v9 + 28) = 0;
    *(v9 + 20) = 0;
    v8 += 36;
    *(v9 + 35) = 0;
  }

  while (v8 != 72);
  unk_2A1939EA0 = v14;
  unk_2A1939EB0 = v15[0];
  unk_2A1939EBC = *(v15 + 12);
  g_GncPCntxtInfo = *__str;
  *algn_2A1939E90 = v13;
  GncP05_30InitConfig();
  g_GnssDataClrMask = 0;
  g_GncPStateInfo = 0u;
  *&byte_2A1939E68 = 0u;
  qword_2A1939E78 = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_MEResetInfo = 0;
  g_MEResetInfo = 0;
  xofScvs_Init();
  g_OrbitDataAvailable = 0;
  g_BceOrbitDataInjected = 0;
  g_TimeMarkState = 1;
  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP00_06HandleDeInitInd()
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_DEINIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncP00_06HandleDeInitInd");
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  xofSvcs_Deinit();
  g_OrbitDataAvailable = 0;
  g_BceOrbitDataInjected = 0;
  GncP02_13ClearMEBuf();
  if (g_GncPMeData == 1)
  {
    AgpsFsmStopTimer(8789510);
  }

  GncP25_02StopTimemarkSessTimer();
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
  g_TimeMarkState = 1;
  GncP16_99DeInitStateHndlr();
  if (g_MEResetInfo == 1)
  {
    AgpsFsmStopTimer(8790022);
  }

  gncP01_01DeInitPeUpdate();
  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP00_03DefaultMessage(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:MID,%x, Srce,%u, Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP00_03DefaultMessage", 520, *(a1 + 1), *a1, a1[1]);
      v4 = 2;
LABEL_6:
      LbsOsaTrace_WriteLog(8u, __str, v3, v4, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP00_03DefaultMessage", 517);
    v4 = 0;
    goto LABEL_6;
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP00_01Init(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP00_01Init", 146, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_INIT_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_01Init");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8788995, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncP00_02DeInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP00_02DeInit", 165, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_DEINIT_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_02DeInit");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8789251, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncP00_07DestMissingHandler(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_07DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  if (v4 == 8786691 || v4 == 8787203 || v4 == 8788739)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP00_07DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void UNB_TropModel::Set_UNB_TropModel_Params(UNB_TropModel *this, double a2, double a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a2 <= 18000.0 && a2 >= -500.0;
  *(this + 25) = v6;
  *(this + 2) = a2;
  v7 = fabs(a3);
  if (v7 > 90.0)
  {
    v8 = 0;
    *(this + 24) = 0;
    *(this + 96) = 0;
  }

  else if (vabdd_f64(*(this + 1), a3) > 0.5 || (v8 = *(this + 24), (v8 & 1) == 0))
  {
    v8 = 1;
    *(this + 24) = 1;
    *(this + 27) = 1;
    *(this + 1) = a3;
  }

  if ((a4 - 1) > 0x16D)
  {
    *(this + 26) = 0;
    *(this + 96) = 0;
  }

  else
  {
    if (*this == a4 && *(this + 26) == 1)
    {
      v9 = *(this + 27);
    }

    else
    {
      *(this + 13) = 257;
      *this = a4;
      v9 = 1;
    }

    if (v7 <= 90.0 && (v9 & 1) != 0)
    {
      if (v8)
      {
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenT0, UNB_ZenTa);
        v11 = v10;
        *(this + 7) = v10;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenP0, UNB_ZenPa);
        v13 = v12;
        *(this + 6) = v12;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenW0, UNB_ZenWa);
        *(this + 11) = v14;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenB0, UNB_ZenBa);
        *(this + 8) = v15;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenL0, UNB_ZenLa);
        v17 = v16;
        *(this + 9) = v16;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenW0_T, UNB_ZenWa_T);
        v19 = v18;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenB0_T, UNB_ZenBa_T);
        v21 = v20 * 0.001;
        *(this + 8) = v20 * 0.001;
        v22 = (v13 * 0.00000314 + 1.00062 + (v11 + -273.15) * (v11 + -273.15) * 0.00000056) * (exp(v11 * -0.019121316 + v11 * v11 * 0.000012378847 + 33.9371105 + -6343.1645 / v11) * 0.01 * (v19 * 0.01));
        *(this + 11) = v22;
        *(this + 28) = 0;
        if (v6)
        {
          v23 = v21 * 287.053763;
          v24 = 9.80665 / (v21 * 287.053763);
          v25 = v11 - v21 * a2;
          v26 = v25 / v11;
          v27 = v13 * pow(v26, v24);
          v28 = v17 + 1.0;
          *(this + 11) = v22 * pow(v26, v28 * v24);
          *(this + 6) = v27;
          *(this + 7) = v25;
          v29 = tan(*(this + 1) * 0.0174532925);
          v30 = atan(v29 * 0.99330562);
          *(this + 10) = v25 * (v23 / (v28 * ((cos(v30 + v30) * -0.00266 + 1.0 + a2 * -0.00000028) * -9.784)) + 1.0);
          *(this + 28) = 1;
        }
      }

      *(this + 96) = v8;
      *(this + 27) = 0;
    }
  }

  v31 = (cos(*(this + 1) * 0.0174532925 + *(this + 1) * 0.0174532925) * -0.00266 + 1.0 + a2 * -0.00000028) * 9.784;
  *(this + 4) = v31;
  *(this + 5) = 0.0222765202 / v31;
  v32 = *MEMORY[0x29EDCA608];
}

BOOL UNB_TropModel::Get_Zenith_Delays_Meter(UNB_TropModel *this, double a2, double a3, int a4, double *a5, double *a6)
{
  v11 = *MEMORY[0x29EDCA608];
  *a5 = 0.0;
  *a6 = 0.0;
  UNB_TropModel::Set_UNB_TropModel_Params(this, a2, a3, a4);
  result = UNB_TropModel::Get_Dry_Zenith_Delay(this, a5) && (UNB_TropModel::Get_Wet_Zenith_Delay(this, a6) & 1) != 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t UNB_TropModel::Get_Dry_Zenith_Delay(UNB_TropModel *this, double *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a2 = 0.0;
  if (*(this + 96) == 1 && *(this + 25) == 1)
  {
    v3 = *(this + 5) * *(this + 6);
    *a2 = v3;
    v4 = 1.0;
    if ((*(this + 28) & 1) == 0)
    {
      v5 = *(this + 8);
      v6 = log(1.0 - v5 * *(this + 2) / *(this + 7));
      v4 = exp(v6 * 9.80665 / (v5 * 287.053763));
    }

    *a2 = v3 * v4;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t UNB_TropModel::Get_Wet_Zenith_Delay(UNB_TropModel *this, double *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = 0.0;
  if (*(this + 96) == 1 && *(this + 25) == 1)
  {
    v3 = 1.0;
    v4 = *(this + 9) + 1.0;
    v5 = (*(this + 10) * 16.5220718 + 377600.0) * 0.000001 * 287.053763 / (*(this + 8) * -287.053763 + *(this + 4) * v4);
    *a2 = v5;
    v6 = v5 * (*(this + 11) / *(this + 7));
    *a2 = v6;
    if ((*(this + 28) & 1) == 0)
    {
      v7 = *(this + 8);
      v8 = log(1.0 - v7 * *(this + 2) / *(this + 7));
      v3 = exp((v4 * 9.80665 / (v7 * 287.053763) + -1.0) * v8);
    }

    *a2 = v6 * v3;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void UNB_TropModel::Get_Weather_Param(UNB_TropModel *this, const double *a2, const double *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    v10 = *MEMORY[0x29EDCA608];
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = *this;
  v6 = *(this + 1);
  if (v6 < 0.0)
  {
    v5 = v5 + 182.625;
  }

  v7 = fabs(v6);
  cos((v5 + -28.0) * 0.0172024238);
  if (v7 <= 15.0)
  {
    v12 = *a2;
    v13 = *a3;
    goto LABEL_13;
  }

  if (v7 <= 30.0)
  {
    v15 = 1;
  }

  else if (v7 <= 45.0)
  {
    v15 = 2;
  }

  else if (v7 <= 60.0)
  {
    v15 = 3;
  }

  else
  {
    if (v7 > 75.0)
    {
      v8 = *(a2 + 4);
      v9 = *(a3 + 4);
LABEL_13:
      v14 = *MEMORY[0x29EDCA608];
      return;
    }

    v15 = 4;
  }

  v16 = Phi0_Bands[v15];
  v17 = Phi0_Bands[v15 - 1];
  v18 = a2[v15 - 1];
  v19 = a2[v15];
  v20 = a3[v15 - 1];
  v21 = a3[v15];
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm15_04HandleNoCostPos(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_04HandleNoCostPos");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 12);
    v7 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v9 = 78;
      if (v6)
      {
        v9 = 89;
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Age,%u,Valid,%c\n", v8, "GNM", 73, "Gnm15_04HandleNoCostPos", v4, v5 != 0, v9);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    if (!v6 || v7)
    {
      if (v6)
      {
        v15 = v5 != 0;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm15_02UpdatePosEstimate");
          LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
        }

        memcpy(&unk_2A1939F78, v7, 0x1738uLL);
        dword_2A1939F6C = v4;
        unk_2A1939F70 = v15;
        g_PosEstimate = 1;
      }

      v18 = *(a1 + 24);
      if (v18)
      {
        free(v18);
      }

      *(a1 + 24) = 0;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm15_04HandleNoCostPos", 513);
      v13 = 2;
LABEL_14:
      LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 69, "Gnm15_04HandleNoCostPos", 517);
    v13 = 0;
    goto LABEL_14;
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_09UpdateNmeaData(char *a1, unsigned int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NmeaLen,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm15_09UpdateNmeaData", a2);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NmeaData\n");
LABEL_15:
    result = LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    goto LABEL_16;
  }

  if (!a2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NmeaLen\n");
    goto LABEL_15;
  }

  if (!off_2A19268E0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NmeaCB Succ\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm15_09UpdateNmeaData");
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  result = off_2A19268E0(0, a1, a2);
LABEL_16:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm15_10HandleGncSNmeaData(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NMEA_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_10HandleGncSNmeaData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm15_09UpdateNmeaData(*(a1 + 16), *(a1 + 12));
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm15_10HandleGncSNmeaData", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_11HandleNavData(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NAV_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_11HandleNavData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 18);
    v6 = *(a1 + 16);
    v7 = *(a1 + 19);
    v8 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (v7)
      {
        v10 = 89;
      }

      v27 = v10;
      v11 = 70;
      if (v5)
      {
        v11 = 84;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v9, "GNM", 73, "Gnm15_11HandleNavData", v4, v11, v6, v27);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (v7 && !v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_11HandleNavData", 513);
        v15 = 2;
LABEL_16:
        LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    if ((dword_2A1920828 & 1) == 0 && (*(v8 + 296) & 1) == 0)
    {
      v17 = *(v8 + 32);
      if (v17 < 10.0)
      {
        Gnm53_13SetReferenceTime((*(v8 + 40) + (604800 * *(v8 + 28))), (v17 * 1000.0), *(v8 + 4), 2);
      }
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v6);
    if (InstnFromInstnId)
    {
      v19 = InstnFromInstnId;
      v20 = *(InstnFromInstnId + 1);
      if (v20)
      {
        if (*(InstnFromInstnId + 2) == 1)
        {
          if ((*(v20 + 4) & 2) != 0)
          {
            Gnm11_01UpdateNavData(InstnFromInstnId, v8, v5, v7, v4);
            if (v5)
            {
              Gnm02_23StopNafSession(v19);
              Gnm02_21DeleteInstn(v19);
            }
          }

          goto LABEL_34;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v26 = *(v19 + 2);
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v22));
          goto LABEL_33;
        }

LABEL_34:
        v23 = *(a1 + 24);
        if (v23)
        {
          free(v23);
        }

        *(a1 + 24) = 0;
        goto LABEL_37;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo\n");
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
    }

LABEL_33:
    LbsOsaTrace_WriteLog(0xBu, __str, v21, 2, 1);
    goto LABEL_34;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm15_11HandleNavData", 517);
    v15 = 0;
    goto LABEL_16;
  }

LABEL_37:
  v24 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_12HandleGncPNmeaData(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_12HandleGncPNmeaData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm15_09UpdateNmeaData(*(a1 + 16), *(a1 + 12));
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm15_12HandleGncPNmeaData", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_13HandleGadData(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_GAD_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_13HandleGadData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    v6 = *(a1 + 18);
    v7 = *(a1 + 19);
    v8 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (v7)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      if (v6)
      {
        v10 = 89;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v9, "GNM", 73, "Gnm15_13HandleGadData", v4, v10, v5, v11);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (v7 && !v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GadData\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_13HandleGadData", 513);
        v15 = 2;
LABEL_17:
        LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
    if (InstnFromInstnId)
    {
      v18 = InstnFromInstnId;
      v19 = *(InstnFromInstnId + 1);
      if (v19)
      {
        if (*(InstnFromInstnId + 2) == 2)
        {
          *(v8 + 28) = Gnm05_22PopulateGnssShapeType(v8 + 16, *(v19 + 16));
          *(v8 + 68) = Gnm05_23PopulateGnssVelocityType(v8 + 72, *(v19 + 12));
        }

        Gnm13_09SendAsstGadData(v18, v8, v6);
        goto LABEL_28;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
        goto LABEL_27;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
LABEL_27:
      LbsOsaTrace_WriteLog(0xBu, __str, v20, 2, 1);
    }

LABEL_28:
    v21 = *(a1 + 24);
    if (v21)
    {
      free(v21);
    }

    *(a1 + 24) = 0;
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm15_13HandleGadData", 517);
    v15 = 0;
    goto LABEL_17;
  }

LABEL_31:
  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_14Handle3GPPMeas(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_3GPPMEAS_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_14Handle3GPPMeas");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    v6 = *(a1 + 18);
    v7 = *(a1 + 19);
    v8 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (v7)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      if (v6)
      {
        v10 = 89;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v9, "GNM", 73, "Gnm15_14Handle3GPPMeas", v4, v10, v5, v11);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (v7 && !v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx 3gppMeas\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_14Handle3GPPMeas", 513);
        v15 = 2;
LABEL_17:
        LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
    if (InstnFromInstnId)
    {
      if (*(InstnFromInstnId + 1))
      {
        Gnm13_11SendAsstGnssMeas(InstnFromInstnId, v8, v6);
LABEL_26:
        v19 = *(a1 + 24);
        if (v19)
        {
          free(v19);
        }

        *(a1 + 24) = 0;
        goto LABEL_29;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_26;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_26;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
    }

    LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
    goto LABEL_26;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm15_14Handle3GPPMeas", 517);
    v15 = 0;
    goto LABEL_17;
  }

LABEL_29:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_15HandleRawMeasData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_RAWMEAS_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_15HandleRawMeasData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm15_15HandleRawMeasData", 517);
    v9 = 0;
LABEL_24:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    goto LABEL_25;
  }

  if (!*(a1 + 24))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Meas\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm15_15HandleRawMeasData", 513);
    v9 = 2;
    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RawMeasData SessId,%u,UpdtTime,%u,FinaUpdt,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm15_15HandleRawMeasData", *(a1 + 16), *(a1 + 12), *(a1 + 18));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(*(a1 + 16));
  if (InstnFromInstnId && *(InstnFromInstnId + 1) && *(InstnFromInstnId + 2) == 1)
  {
    Gnm11_04SendAppMeasData(InstnFromInstnId, *(a1 + 12), *(a1 + 24), *(a1 + 18));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm15_15HandleRawMeasData", 2052);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
  }

  v12 = *(a1 + 24);
  if (v12[31])
  {
    free(v12[31]);
    v12 = *(a1 + 24);
  }

  v12[31] = 0;
  if (v12[9])
  {
    free(v12[9]);
    v12 = *(a1 + 24);
  }

  v12[9] = 0;
  if (v12[33])
  {
    free(v12[33]);
    v12 = *(a1 + 24);
  }

  free(v12);
  *(a1 + 24) = 0;
LABEL_25:
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm15_16HandleTruthPosRsp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v38 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm15_16HandleTruthPosRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (v6)
  {
    memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
    v21 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    memset(v35, 0, sizeof(v35));
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    qmemcpy(v22, "VNP", sizeof(v22));
    __s[7] = 116;
    if (*(v6 + 12))
    {
      v9 = 32;
    }

    else
    {
      v9 = 71;
    }

    __s[0] = v9;
    PlcGnssHw = Gnm03_64GetPlcGnssHw();
    plc00_05EncodeMsg(2, v22, __s, __str, 2048, &v21, &v26, PlcGnssHw);
    if (v26)
    {
      if (IsLoggingAllowed == 1)
      {
        if (plc00_15GetExtErrAsString(&v26, v24, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(v23, 0x410uLL);
          v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v12 = snprintf(v23, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Err,%s\n", v11, "GNM");
LABEL_17:
          v15 = v23;
          v16 = v12;
          v17 = 2;
          goto LABEL_18;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(v23, 0x410uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v12 = snprintf(v23, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u\n", v18);
        goto LABEL_17;
      }
    }

    else
    {
      Gnm06_01HandleTmZXData(__str, v21);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm15_16HandleTruthPosRsp", 517);
    v15 = __str;
    v16 = v14;
    v17 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, v15, v16, v17, 1);
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Fused_Nav_Update(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v26 = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  memset(v22, 0, sizeof(v22));
  memset(&v21[79], 0, 48);
  memset(v21, 0, 315);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v24 = 0;
  memset(v25, 0, 14);
  *a2 = 0u;
  *(a2 + 14) = *(&v25[1] + 2);
  *(a2 + 11) = 0;
  a2[24] = 0;
  memcpy(a2 + 25, __src, 0x120uLL);
  *(a2 + 313) = 0u;
  *(a2 + 329) = 0u;
  *(a2 + 345) = 0u;
  *(a2 + 361) = 0u;
  *(a2 + 377) = 0u;
  *(a2 + 393) = 0u;
  *(a2 + 409) = 0u;
  *(a2 + 425) = 0u;
  *(a2 + 441) = 0u;
  *(a2 + 457) = 0u;
  *(a2 + 473) = 0u;
  *(a2 + 489) = 0u;
  *(a2 + 505) = 0u;
  *(a2 + 521) = 0u;
  *(a2 + 537) = 0u;
  a2[553] = 0;
  memcpy(a2 + 554, v22, 0x198uLL);
  *(a2 + 962) = *&v21[85];
  *(a2 + 978) = *&v21[89];
  *(a2 + 986) = *&v21[79];
  *(a2 + 1002) = *&v21[83];
  *(a2 + 1010) = *&v21[72];
  *(a2 + 1021) = *(&v21[74] + 3);
  a2[1037] = 0;
  *(a2 + 519) = 0;
  a2[1040] = 0;
  memcpy(a2 + 1041, v21, 0x120uLL);
  *(a2 + 1329) = 0u;
  *(a2 + 1345) = 0u;
  *(a2 + 1361) = 0u;
  *(a2 + 1377) = 0u;
  *(a2 + 1393) = 0u;
  *(a2 + 1409) = 0u;
  *(a2 + 1425) = 0u;
  *(a2 + 1441) = 0u;
  *(a2 + 1457) = 0u;
  *(a2 + 1473) = 0u;
  *(a2 + 1489) = 0u;
  *(a2 + 1505) = 0u;
  *(a2 + 1521) = 0u;
  *(a2 + 1537) = 0u;
  *(a2 + 1553) = 0u;
  a2[1569] = 0;
  memcpy(a2 + 1570, v20, 0x198uLL);
  *(a2 + 1978) = *(&v19[1] + 8);
  *(a2 + 1994) = *(&v19[2] + 1);
  *(a2 + 2002) = v19[0];
  *(a2 + 2018) = *&v19[1];
  *(a2 + 2034) = 0;
  *(a2 + 2042) = 0;
  *(a2 + 2026) = 0;
  *(a2 + 256) = 0;
  memcpy(a7, a6, 0x800uLL);
  if (*(a3 + 46) == 1)
  {
    FN_GNSS_To_Nav_Soln(a6, a2);
    memcpy((a1 + 1016), a1, 0x3F8uLL);
    v14 = memcpy(a1, a2, 0x3F8uLL);
    v15 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v14);
    if (v15)
    {
      v15 = FN_SA_FPE_To_Nav_Soln(a4, (a2 + 1016));
    }

    if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v15) && FN_Fuse_With_SA_FPE(a2, a1, a5))
    {
      FN_Publish_Fused_Soln(a1, a7);
      *(a7 + 944) = *(a7 + 344);
      *(a7 + 960) = *(a7 + 360);
      v16 = 3;
      do
      {
        *(a7 + 920) = *(a7 + 320);
        a7 += 8;
        --v16;
      }

      while (v16);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

void *GetStaticLppPrivate(void)
{
  v2 = *MEMORY[0x29EDCA608];
  {
    _LPP_PRIVATE::_LPP_PRIVATE(&GetStaticLppPrivate(void)::lpp_prv);
  }

  v0 = *MEMORY[0x29EDCA608];
  return &GetStaticLppPrivate(void)::lpp_prv;
}

void _LPP_PRIVATE::_LPP_PRIVATE(_LPP_PRIVATE *this)
{
  v2 = *MEMORY[0x29EDCA608];
  *(this + 3) = 0;
  *this = 0;
  *(this + 7) = 1;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 6) = -1;
  *(this + 28) = 0;
  memset_s(this + 18, 6uLL, 0, 6uLL);
  v1 = *MEMORY[0x29EDCA608];
}

void lpp_process_downlink_message(unsigned __int8 *a1, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = lpp_session_detect(a1);
  if (v4 || (v4 = lpp_session_create(a1, a2)) != 0)
  {
    v5 = *(v4 + 6);
    v6 = *MEMORY[0x29EDCA608];

    v5();
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];

    ms_report_exception(2, 16423, 62, "lpp_process_downlink_message");
  }
}

void lpp_reset(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  GetStaticLppPrivate();
  if (byte_2A1938FC9 == 2)
  {
    GetStaticLppPrivate();
    v2 = *qword_2A1938FD0;
    if (*qword_2A1938FD0)
    {
      v3 = 0;
      do
      {
        while (1)
        {
          v4 = v2;
          v2 = *v2;
          if (a1)
          {
            if (a1 == 1)
            {
              break;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v5 = mach_continuous_time();
              v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 87, "lpp_reset", 770, a1);
              LbsOsaTrace_WriteLog(0x13u, __str, v6, 2, 1);
            }

            if (v3 != 1)
            {
              break;
            }
          }

          lpp_session_delete(v4);
          v3 = 1;
          if (!v2)
          {
            goto LABEL_12;
          }
        }

        v3 = 0;
      }

      while (v2);
    }
  }

LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
}

void lpp_send_up_uplink_message(uint64_t a1, int a2, unsigned int *a3, char a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 && a3)
  {
    if (a2)
    {
      ms_report_exception(2, 16424, 149, "lpp_send_up_uplink_message");
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = gnssOsa_Calloc("posp_alloc", 18, 1, *a3);
      memcpy_s("lpp_send_up_uplink_message", 142, v8, *a3, *(a3 + 1), *a3);
      v9 = *a3;
    }

    v12 = *(a1 + 4);
    v13 = *MEMORY[0x29EDCA608];

    send_supl_pos_ind(v12, a2, v9, v8, a4);
  }

  else
  {
    v10 = *MEMORY[0x29EDCA608];
    v11 = *MEMORY[0x29EDCA608];
  }
}

void lpp_control_loc_info_rsp(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = lpp_session_detect(*a1);
  if (v2)
  {
    if (**(a1 + 8) == 1)
    {
      v3 = *(v2 + 18);
      if (v3 == 256)
      {
        i = 0;
      }

      else
      {
        for (i = *v2[5]; i; i = *i)
        {
          if (*(i + 16) == *(v2 + 17) && *(i + 20) == v3)
          {
            break;
          }
        }
      }

      v8 = *(v2 + 20);
      if (v8 != 256)
      {
        v9 = *v2[5];
        if (v9)
        {
          while (*(v9 + 16) != *(v2 + 19) || *(v9 + 20) != v8)
          {
            v9 = *v9;
            if (!v9)
            {
              goto LABEL_15;
            }
          }

          i = v9;
          goto LABEL_16;
        }
      }

LABEL_15:
      if (i)
      {
LABEL_16:
        SendStatusReport(*(i + 32), 2, 0, 0, 0, 255);
        v10 = *(a1 + 8);
        v11 = *MEMORY[0x29EDCA608];

        lpp_transaction_act(i, 7, v10);
        return;
      }
    }

    v12 = *MEMORY[0x29EDCA608];
    v6 = 16425;
    v7 = 193;
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = 16426;
    v7 = 169;
  }

  ms_report_exception(2, v6, v7, "lpp_control_loc_info_rsp");
}

uint64_t lpp_state_control(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  result = GetStaticLppPrivate();
  if (byte_2A1938FC9 == 2)
  {
    if (a1 != 1)
    {
      goto LABEL_23;
    }

    result = GetStaticLppPrivate();
    if (*qword_2A1938FD0)
    {
      goto LABEL_23;
    }

    GetStaticLppPrivate();
    byte_2A1938FC9 = 1;
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    GetStaticLppPrivate();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Current State,Active,Next State,%u\n");
    goto LABEL_18;
  }

  if (byte_2A1938FC9 != 1)
  {
    if (byte_2A1938FC9)
    {
      goto LABEL_23;
    }

    if (a1 < 2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Inactive State\n");
LABEL_21:
        v5 = v3;
        v6 = 2;
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (a1 != 2)
    {
      goto LABEL_23;
    }

    GetStaticLppPrivate();
    byte_2A1938FC9 = 1;
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    GetStaticLppPrivate();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Current State,Inactive,Next State,%u\n");
LABEL_18:
    v5 = v4;
    v6 = 5;
LABEL_22:
    result = LbsOsaTrace_WriteLog(0x13u, __str, v5, v6, 1);
    goto LABEL_23;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      goto LABEL_23;
    }

    GetStaticLppPrivate();
    byte_2A1938FC9 = 2;
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    GetStaticLppPrivate();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Current State,Idle,Next State,%u\n");
    goto LABEL_18;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IDLE state\n");
    goto LABEL_21;
  }

LABEL_23:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal24_PatchDnldBright(int *a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = mach_continuous_time();
  v3 = *&g_MacClockTicksToMsRelation;
  ChiBuffers = Hal19_GetChiBuffers();
  if (ChiBuffers)
  {
    goto LABEL_33;
  }

  Hal08_SetGizar2AvaialbleBuffers(g_ChipBuffersResp);
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: fw BufferSize,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal24_PatchDnldBright", g_ChipBuffersResp);
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
  }

  v7 = Hal08_FastPatchDnld(0, 80, 111);
  if (v7 == -3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Cnf\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 65, "Hal24_PatchDnldBright", 1288);
      LbsOsaTrace_WriteLog(0xDu, __str, v15, 1, 1);
    }

    *a1 = 19;
    ChiBuffers = 4294967293;
    goto LABEL_33;
  }

  ChiBuffers = v7;
  if (v7)
  {
    v16 = 19;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Cnf\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 4, 1);
  }

  v10 = Hal08_FastPatchDnld(0, 80, 112);
  if (v10 == -3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPPtc\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 65, "Hal24_PatchDnldBright", 1288);
    v13 = 1;
    goto LABEL_18;
  }

  ChiBuffers = v10;
  if (v10)
  {
    v16 = 4;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPPtc\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    v13 = 4;
LABEL_18:
    LbsOsaTrace_WriteLog(0xDu, __str, v12, v13, 1);
  }

LABEL_19:
  v18 = Hal08_FastPatchDnld(0, 80, 102);
  if (v18 == -3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPSsf\n", (*&g_MacClockTicksToMsRelation * v22), "HAL", 65, "Hal24_PatchDnldBright", 1288);
    v21 = 1;
    goto LABEL_26;
  }

  ChiBuffers = v18;
  if (v18)
  {
    v16 = 7;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CPSsf\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    v21 = 4;
LABEL_26:
    LbsOsaTrace_WriteLog(0xDu, __str, v20, v21, 1);
  }

LABEL_27:
  v23 = Hal17_SoftReset(80, 32);
  if (v23)
  {
    ChiBuffers = v23;
    *a1 = 14;
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n");
LABEL_30:
      LbsOsaTrace_WriteLog(0xDu, __str, v24, 0, 1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v27), "HAL", 73, "Hal24_PatchDnldBright", 1289);
    LbsOsaTrace_WriteLog(0xDu, __str, v28, 4, 1);
  }

  usleep(0x4E20u);
  v29 = Hal08_FastPatchDnld(0, 77, 102);
  if (v29 != -3)
  {
    ChiBuffers = v29;
    if (!v29)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        goto LABEL_43;
      }

      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MESsf\n", (*&g_MacClockTicksToMsRelation * v30), "HAL", 73, "Hal24_PatchDnldBright", 1287);
      v32 = 4;
      goto LABEL_42;
    }

    v16 = 8;
LABEL_32:
    *a1 = v16;
    goto LABEL_33;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
  {
    goto LABEL_43;
  }

  bzero(__str, 0x410uLL);
  v33 = mach_continuous_time();
  v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MESsf\n", (*&g_MacClockTicksToMsRelation * v33), "HAL", 65, "Hal24_PatchDnldBright", 1288);
  v32 = 1;
LABEL_42:
  LbsOsaTrace_WriteLog(0xDu, __str, v31, v32, 1);
LABEL_43:
  v34 = Hal08_FastPatchDnld(0, 77, 112);
  if (v34 == -3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
    {
      goto LABEL_51;
    }

    bzero(__str, 0x410uLL);
    v38 = mach_continuous_time();
    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v38), "HAL", 65, "Hal24_PatchDnldBright", 1288);
    v37 = 1;
    goto LABEL_50;
  }

  ChiBuffers = v34;
  if (v34)
  {
    v16 = 5;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v35), "HAL", 73, "Hal24_PatchDnldBright", 1287);
    v37 = 4;
LABEL_50:
    LbsOsaTrace_WriteLog(0xDu, __str, v36, v37, 1);
  }

LABEL_51:
  v39 = Hal17_SoftReset(77, 32);
  if (v39)
  {
    ChiBuffers = v39;
    v16 = 15;
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v40), "HAL", 73, "Hal24_PatchDnldBright", 1289);
    LbsOsaTrace_WriteLog(0xDu, __str, v41, 4, 1);
  }

  v42 = Hal11_WaitCalibComplete();
  if (v42)
  {
    ChiBuffers = v42;
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Calib\n");
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v43 = mach_continuous_time();
    v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: calib complete\n", (*&g_MacClockTicksToMsRelation * v43), "HAL", 73, "Hal24_PatchDnldBright");
    LbsOsaTrace_WriteLog(0xDu, __str, v44, 4, 1);
  }

  g_HalState = 0;
  ChiBuffers = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v45 = mach_continuous_time();
    v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bright init,starttick %u ms\n", (*&g_MacClockTicksToMsRelation * v45), "HAL", 65, "Hal24_PatchDnldBright", (v3 * v2));
    LbsOsaTrace_WriteLog(0xDu, __str, v46, 1, 1);
    ChiBuffers = 0;
  }

LABEL_33:
  v25 = *MEMORY[0x29EDCA608];
  return ChiBuffers;
}

void HAL24_BrightStackDumpHandler(unsigned __int8 *a1, unsigned int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2 <= 0xB1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v20);
LABEL_11:
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  if (a1)
  {
    v5 = a1[4];
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (v5 == 77)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME\n");
    }

    else if (v5 == 80)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Stackdump unk\n");
    }

    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
LABEL_17:
    v8 = *(a1 + 4);
    switch(v8)
    {
      case 3:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "HAL24_BrightStackDumpHandler", 1299);
          v15 = 1;
          LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
        }

        else
        {
          v15 = 1;
        }

LABEL_31:
        StackDumpString = Hal11_GetStackDumpString(a1[11], a1[10]);
        GnssDbgMgr_HandleStackDump(a2, a1, v15, StackDumpString);
        if (v15 && *(a1 + 5) != -4087)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 65, "HAL24_BrightStackDumpHandler", 1306);
            LbsOsaTrace_WriteLog(0xDu, __str, v18, 1, 1);
          }

          if (g_HalCallbacks)
          {
            g_HalCallbacks(6);
          }
        }

        goto LABEL_37;
      case 2:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "HAL24_BrightStackDumpHandler", 1300);
          v12 = 0;
LABEL_29:
          LbsOsaTrace_WriteLog(0xDu, __str, v11, v12, 1);
        }

        break;
      case 1:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %usec\n", v21);
LABEL_28:
          v11 = v9;
          v12 = 4;
          goto LABEL_29;
        }

        break;
      default:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unk\n");
          goto LABEL_28;
        }

        break;
    }

    v15 = 0;
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx aResp\n");
    goto LABEL_11;
  }

LABEL_37:
  v19 = *MEMORY[0x29EDCA608];
}

uint64_t GNSS_GNB_Debug_Ctl(uint64_t result)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    goto LABEL_15;
  }

  if (!g_Enable_GNB_Debug)
  {
    goto LABEL_15;
  }

  v1 = result;
  **result = 0;
  v3 = *result;
  v2 = *(result + 8);
  if (v2 == *result)
  {
    goto LABEL_15;
  }

  v4 = *result;
  if (v2 > *result)
  {
    v4 = *(result + 24);
  }

  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (v2 < *(result + 24))
    {
      goto LABEL_13;
    }

    v2 = *(result + 16);
    *(result + 8) = v2;
    goto LABEL_12;
  }

  result = GN_GPS_Write_GNB_Debug((v4 - v2), v2);
  v2 = &v1[1][result];
  v1[1] = v2;
  if (v2 >= v1[3])
  {
    v2 = v1[2];
    v1[1] = v2;
    if (result == v5)
    {
      v3 = *v1;
LABEL_12:
      result = GN_GPS_Write_GNB_Debug((v3 - v2), v2);
      v2 = &v1[1][result];
      v1[1] = v2;
    }
  }

LABEL_13:
  if (v2 == *v1)
  {
    v6 = v1[2];
    *v1 = v6;
    v1[1] = v6;
  }

LABEL_15:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Define_Meas_Innov_Sat_Thresh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 11480);
  if (v5 > 50.0)
  {
    v5 = 50.0;
  }

  v32 = 1.0 / v5;
  v6 = __sincos_stret(*(a1 + 952) * 0.0174532925);
  v7 = 0;
  v8 = (a2 + 2104);
  v9 = -384;
  v10 = 2960;
  v11 = 14112;
  v12 = 8536;
  v13 = 0.5;
  v14 = "Any_SV_Meas_Edit";
  do
  {
    if (*(a2 + 11032) > *(a2 + 16) || *(a1 + 968) != 1)
    {
      goto LABEL_22;
    }

    v15 = *(a2 + 140);
    if (v15 >= *(a2 + 144))
    {
      v15 = *(a2 + 144);
    }

    if (v15 >= *(a2 + 148))
    {
      v15 = *(a2 + 148);
    }

    if (v15 >= 0xB)
    {
      if ((*(a1 + v10) & 1) != 0 || (*(a1 + v12) & 1) != 0 || (v16 = 0.0, v17 = 0.0, v18 = 0.0, *(a1 + v11) == 1))
      {
        v19 = v8[240];
        v20 = v8[239];
        v18 = *v8 * (v6.__sinval * v20 + v6.__cosval * v19);
        v17 = *v8 * (v6.__cosval * v20 + -v6.__sinval * v19);
        v16 = 0.0;
        if (*(a1 + v10))
        {
          v21 = *(a1 + v7 + 3056);
          if ((v21 - 1) >= 0x1D)
          {
            if (v21)
            {
              v30 = v14;
              EvCrt_Illegal_Default(v14, 0xA6u);
              v14 = v30;
              v13 = 0.5;
            }

            else
            {
              v16 = v18 * v13 * 9.8 * (v18 * v13 * 9.8);
            }
          }
        }
      }

      *(a1 + v9 + 6368) = v16;
      v22 = 0.0;
      v23 = 0.0;
      if (*(a1 + v12) == 1)
      {
        v24 = *(a1 + v7 + 8632);
        if ((v24 - 1) >= 0x1D)
        {
          if (v24)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            v14 = "Any_SV_Meas_Edit";
            v13 = 0.5;
            v23 = 0.0;
          }

          else
          {
            v28 = fmin(v32 * (*(a3 + 320) * *(a3 + 320)), 9.8);
            v23 = v18 * 9.8 * (v18 * 9.8) + v17 * v28 * (v17 * v28);
          }
        }
      }

      *(a1 + v9 + 11944) = v23;
      if (*(a1 + v11) == 1)
      {
        v25 = *(a1 + v7 + 14208);
        if ((v25 - 1) >= 0x1D)
        {
          if (v25)
          {
            v29 = v14;
            EvCrt_Illegal_Default(v14, 0xA6u);
            v14 = v29;
            v13 = 0.5;
          }

          else
          {
            v26 = v17 * fmin(v32 * (*(a3 + 320) * *(a3 + 320)), 9.8);
            v22 = v18 * 9.8 * (v18 * 9.8) + v26 * v26;
          }
        }
      }
    }

    else
    {
LABEL_22:
      v27 = a1 + v9;
      *(v27 + 6368) = 0x412E82F0051EB852;
      *(v27 + 11944) = 0x412E82F0051EB852;
      v22 = 999800.01;
    }

    *(a1 + v9 + 17520) = v22;
    v7 += 4;
    ++v10;
    v9 += 8;
    v8 += 5;
    ++v11;
    ++v12;
  }

  while (v7 != 192);
  v31 = *MEMORY[0x29EDCA608];
}

const double *NK_SV_Meas_Innov_Sat(double *a1, int a2, int a3, uint64_t a4, double *a5, double a6)
{
  v9 = 0;
  v25[1] = *MEMORY[0x29EDCA608];
  v10 = a4 + 2024;
  v11 = a2;
  v12 = *(a4 + 2024 + 8 * a2);
  v13 = 0.0;
  do
  {
    v13 = v13 + a1[v9] * a5[v9 + 66];
    ++v9;
  }

  while (v9 != 11);
  v25[0] = 0.0;
  v14 = v12 - v13;
  v15 = *(a4 + 4040 + 8 * a2);
  result = invtst(a5, a1, 0xBu, v15 - *(a4 + 24 * a2 + 496), 0.0, a6, v25);
  v17 = cMIS_SatThresh_Sigma[a3 - 1];
  v18 = v17 * v17 * v25[0];
  v19 = a4 + 8 * v11;
  if (v18 <= *(v19 + 3176))
  {
    v18 = *(v19 + 3176);
  }

  *(v19 + 3176) = v18;
  if (v14 * v14 > v18)
  {
    v20 = sqrt(v18);
    if (v14 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v14;
    }

    v22 = -v20;
    if (v21 > v22)
    {
      v22 = v21;
    }

    *(a4 + v11 + 3560) = 1;
    *(v10 + 8 * v11) = v12 - (v14 - v22);
    v23 = v14 * 0.5 * (v14 * 0.5);
    if (v15 > v23)
    {
      v23 = v15;
    }

    *(a4 + 4040 + 8 * v11) = v23;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm11_00ApiStatusCB(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_GnmCBs)
  {
    v7 = result;
    if (result)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v9 = 78;
        if (a2)
        {
          v9 = 89;
        }

        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Result,%hhu,HandleValid,%c,Handle,%u,ApiType,%hhu\n", v8, "GNM", 87, "Gnm11_00ApiStatusCB", v7, v9, a3, a4);
        v11 = 2;
LABEL_11:
        LbsOsaTrace_WriteLog(0xBu, __str, v10, v11, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v13 = 78;
      if (a2)
      {
        v13 = 89;
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Result,%hhu,HandleValid,%c,Handle,%u,ApiType,%hhu\n", v12, "GNM", 73, "Gnm11_00ApiStatusCB", 0, v13, a3, a4);
      v11 = 4;
      goto LABEL_11;
    }

    result = g_GnmCBs(v7, a2, a3, a4);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm11_01UpdateNavData(uint64_t result, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(result + 8);
  if (*(v5 + 64) == 1 && (v5[2] & 1) != 0)
  {
    v6 = *(v5 + 7);
    if (v6)
    {
      if (a4)
      {
        Gnm05_31PrintNavSoln(a2);
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData Succ sent NAFId,%u,NavStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm11_01UpdateNavData", *v5, a3);
          LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
        }

        v12 = *v5;
        *__str = a2;
        v18 = 0;
        v19 = 2;
        v20 = a3;
        result = v6(0, v12, __str);
        if (v5[9] == v5[3] && *(a2 + 288))
        {
          v5[9] = a5;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData Err sent NAFId,%u,NavStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm11_01UpdateNavData", *v5, a3);
          LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
        }

        v15 = *v5;
        *__str = 0;
        v18 = 0;
        v19 = 0;
        v20 = a3;
        result = v6(6, v15, __str);
      }

      v5[10] = a5;
      if ((v5[1] & 2) != 0)
      {
        ++v5[12];
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm11_04SendAppMeasData(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = *(result + 8);
    if ((v4[1] & 2) != 0 && *(v4 + 64) == 1 && (v4[2] & 8) != 0)
    {
      v5 = *(v4 + 7);
      if (v5)
      {
        v7 = *v4;
        *__str = 0;
        v12 = a3;
        v13 = 4;
        v14 = a4;
        v5(0, v7, __str);
        result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Meas Succ sent NAFId,%u,NavStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm11_04SendAppMeasData", *v4, a4);
          result = LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
        }
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm11_07StartPosResp(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *v2;
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartPosReqResp Success NafId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm11_07StartPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    result = Gnm11_00ApiStatusCB(0, 1, v3, v2[1] & 2);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartPosReqResp Error NafId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm11_07StartPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    Gnm11_00ApiStatusCB(11, 1, *v2, v2[1] & 2);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Delete NAF Session NAFId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm11_07StartPosResp", *v2);
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    Gnm02_23StopNafSession(a1);
    result = Gnm02_21DeleteInstn(a1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm11_08StopPosResp(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = **(a1 + 8);
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success NafId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm11_08StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    if (Gnm02_21DeleteInstn(a1))
    {
      v6 = 0;
    }

    else
    {
      v6 = 11;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StopPosReqResp Error NafId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm11_08StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }

    Gnm02_21DeleteInstn(a1);
    v6 = 11;
  }

  Gnm11_00ApiStatusCB(v6, 1, v3, 1);
  if (!HIWORD(g_GnmInstances[0]))
  {
    g_XOTimerStatus = 0;
    g_PrevUsedLtl = 0;
    bzero(&g_LTLDataPPM, 0x5E2uLL);
    g_AgeingTimeGpsSeconds = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm33_09GetModuleLogCfg(unsigned int a1, char *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = 0;
  v10 = 0;
  result = LbsOsaTrace_GetModuleConfig(&v9, a1);
  if (!result)
  {
    a2[1] = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  a2[1] = v10;
  v4 = v9;
  if (v9 == 1)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  if (!result)
  {
    goto LABEL_7;
  }

  bzero(__str, 0x410uLL);
  v5 = mach_continuous_time();
  v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dest,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm33_01GetGnmDestnType", 770, v4);
  v7 = 1;
  result = LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
LABEL_8:
  *a2 = v7;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm33_10InitTraceCfg(void)
{
  v61 = *MEMORY[0x29EDCA608];
  v60 = 0;
  v56 = 0;
  v57 = 0;
  v59 = 0x332E352E322E76;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:%s Version,%s\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm33_00PrintTraceConfig", "INITIALIZED", &v59);
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  v3 = g_LbsOsaTrace_Config;
  v2 = dword_2A19396BC;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 89;
    if (!v3)
    {
      v5 = 78;
    }

    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG: FlowTraces,%c\n", v4, "GNM", 73, "Gnm33_00PrintTraceConfig", v5);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v8 = 78;
    if (v2 == 1)
    {
      v8 = 89;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG: PrivateOnly,%c\n", v7, "GNM", 73, "Gnm33_00PrintTraceConfig", v8);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  LbsOsaTrace_GetModuleConfig(&v56, 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GNB Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 1u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:NMA Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 2u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:PEN Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 3u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:PEE Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 4u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:MEC Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 5u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GZR Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 6u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:CEX Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 7u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SEN Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v25, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 8u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GNC Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 9u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SLG Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v29, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0xAu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SLP Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v31, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0xBu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:GNM Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v33, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0xCu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:LSM Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v35, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0xDu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v36 = mach_continuous_time();
    v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:HAL Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v36), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v37, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0xEu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v38 = mach_continuous_time();
    v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:OSA Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v38), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v39, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0xFu);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SRV Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v40), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v41, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0x10u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v42 = mach_continuous_time();
    v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:AML Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v42), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v43, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0x11u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:OP1 Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v44), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v45, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0x12u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v46 = mach_continuous_time();
    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SPL Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v46), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v47, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0x13u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v48 = mach_continuous_time();
    v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:PSP Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v49, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0x14u);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v50 = mach_continuous_time();
    v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:MEI Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v50), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    LbsOsaTrace_WriteLog(0xBu, __str, v51, 4, 1);
  }

  v56 = 0;
  v57 = 0;
  LbsOsaTrace_GetModuleConfig(&v56, 0x15u);
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v53 = mach_continuous_time();
    v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TRACECFG:SLC Destn,%u,Sev,%u\n", (*&g_MacClockTicksToMsRelation * v53), "GNM", 73, "Gnm33_00PrintTraceConfig", v56, v57);
    result = LbsOsaTrace_WriteLog(0xBu, __str, v54, 4, 1);
  }

  v55 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm33_16GetTraceCfg(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *))
{
  v32 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x270uLL, 0, 0x270uLL);
  __s[0] = g_LbsOsaTrace_Config;
  __s[1] = dword_2A19396BC;
  Gnm33_09GetModuleLogCfg(0, v10);
  Gnm33_09GetModuleLogCfg(1u, v11);
  Gnm33_09GetModuleLogCfg(2u, v12);
  Gnm33_09GetModuleLogCfg(3u, v13);
  Gnm33_09GetModuleLogCfg(4u, v14);
  Gnm33_09GetModuleLogCfg(5u, v15);
  Gnm33_09GetModuleLogCfg(6u, v16);
  Gnm33_09GetModuleLogCfg(7u, v17);
  Gnm33_09GetModuleLogCfg(8u, v18);
  Gnm33_09GetModuleLogCfg(9u, v19);
  Gnm33_09GetModuleLogCfg(0xAu, v20);
  Gnm33_09GetModuleLogCfg(0xBu, v21);
  Gnm33_09GetModuleLogCfg(0xCu, v22);
  Gnm33_09GetModuleLogCfg(0xDu, v23);
  Gnm33_09GetModuleLogCfg(0xEu, v24);
  Gnm33_09GetModuleLogCfg(0xFu, v25);
  Gnm33_09GetModuleLogCfg(0x10u, v26);
  Gnm33_09GetModuleLogCfg(0x11u, v27);
  Gnm33_09GetModuleLogCfg(0x12u, v28);
  Gnm33_09GetModuleLogCfg(0x13u, v29);
  Gnm33_09GetModuleLogCfg(0x14u, v30);
  Gnm33_09GetModuleLogCfg(0x15u, v31);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GetCfgCB returned TraceCfg\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm33_16GetTraceCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  result = a2(a1, 3, __s);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::startEmergencyPreemptiveSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "startEmergencyPreemptiveSession", 513);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    goto LABEL_8;
  }

  if (!*(a4 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = *(a1 + 288);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice31startEmergencyPreemptiveSessionEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a4);
  dispatch_async(v5, block);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice31startEmergencyPreemptiveSessionEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM req active\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 87, "startEmergencyPreemptiveSession_block_invoke", 2056);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 2, 1);
    }

    std::function<void ()(gnss::Result)>::operator=((v2 + 600), a1 + 40);
    std::function<void ()(gnss::Result)>::operator=((v2 + 632), a1 + 72);
    v7 = GNS_EcallStart(0);
    if (v7 == 1)
    {
      *(v2 + 176) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EcallStart invoked\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "startEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EcallStart,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "startEmergencyPreemptiveSession_block_invoke", 257, v7);
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
      }

      v19 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v7);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v19, v23, "startEmergencyPreemptiveSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 600);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 632);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v24, "startEmergencyPreemptiveSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "startEmergencyPreemptiveSession_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "startEmergencyPreemptiveSession_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996857B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::stopEmergencyPreemptiveSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "stopEmergencyPreemptiveSession", 513);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    goto LABEL_8;
  }

  if (!*(a3 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 288);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice30stopEmergencyPreemptiveSessionENSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
  block[3] = &__block_descriptor_tmp_12_0;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice30stopEmergencyPreemptiveSessionENSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::function<void ()(gnss::Result)>::operator=((v2 + 664), a1 + 40);
    std::function<void ()(gnss::Result)>::operator=((v2 + 696), a1 + 72);
    v5 = GNS_EcallStop(0);
    if (v5 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EcallStop invoked\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "stopEmergencyPreemptiveSession_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EcallStop,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "stopEmergencyPreemptiveSession_block_invoke", 257, v5);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      v17 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v5);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v17, v21, "stopEmergencyPreemptiveSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 664);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 696);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v22, "stopEmergencyPreemptiveSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "stopEmergencyPreemptiveSession_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "stopEmergencyPreemptiveSession_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299685EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setEmergencySessionSummaryReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32setEmergencySessionSummaryReportENSt3__18functionIFNS_6ResultERKNS_9Emergency13SummaryReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencySessionSummaryReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32setEmergencySessionSummaryReportENSt3__18functionIFNS_6ResultERKNS_9Emergency13SummaryReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v17[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencySessionSummaryReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (!*(a1 + 64) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SummaryReport\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setEmergencySessionSummaryReport_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
  v7 = v2 + 728;
  if (__str != (v2 + 728))
  {
    v8 = v16;
    v9 = *(v2 + 752);
    if (v16 == __str)
    {
      if (v9 == v7)
      {
        (*(*v16 + 24))();
        (*(*v16 + 32))(v16);
        v16 = 0;
        (*(**(v2 + 752) + 24))(*(v2 + 752), __str);
        (*(**(v2 + 752) + 32))(*(v2 + 752));
        *(v2 + 752) = 0;
        v16 = __str;
        (*(v17[0] + 24))(v17, v2 + 728);
        (*(v17[0] + 32))(v17);
      }

      else
      {
        (*(*v16 + 24))();
        (*(*v16 + 32))(v16);
        v16 = *(v2 + 752);
      }

      *(v2 + 752) = v7;
    }

    else if (v9 == v7)
    {
      (*(*v9 + 24))(*(v2 + 752), __str);
      (*(**(v2 + 752) + 32))(*(v2 + 752));
      *(v2 + 752) = v16;
      v16 = __str;
    }

    else
    {
      v16 = *(v2 + 752);
      *(v2 + 752) = v8;
    }
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](__str);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a1 + 72);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v14, "setEmergencySessionSummaryReport_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencySessionSummaryReport_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996864C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setEmergencyPositionReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26setEmergencyPositionReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane14PositionReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_16_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencyPositionReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26setEmergencyPositionReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane14PositionReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencyPositionReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 760;
    if (__str != (v2 + 760))
    {
      v6 = v19;
      v7 = *(v2 + 784);
      if (v19 == __str)
      {
        if (v7 == v5)
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = 0;
          (*(**(v2 + 784) + 24))(*(v2 + 784), __str);
          (*(**(v2 + 784) + 32))(*(v2 + 784));
          *(v2 + 784) = 0;
          v19 = __str;
          (*(v20[0] + 24))(v20, v2 + 760);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = *(v2 + 784);
        }

        *(v2 + 784) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 784), __str);
        (*(**(v2 + 784) + 32))(*(v2 + 784));
        *(v2 + 784) = v19;
        v19 = __str;
      }

      else
      {
        v19 = *(v2 + 784);
        *(v2 + 784) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v16, "setEmergencyPositionReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setEmergencyPositionReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v17, "setEmergencyPositionReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx e911 PosReport\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setEmergencyPositionReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencyPositionReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299686C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setEmergencyMeasurementReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29setEmergencyMeasurementReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane17MeasurementReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_18_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencyMeasurementReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29setEmergencyMeasurementReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane17MeasurementReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencyMeasurementReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 824;
    if (__str != (v2 + 824))
    {
      v6 = v19;
      v7 = *(v2 + 848);
      if (v19 == __str)
      {
        if (v7 == v5)
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = 0;
          (*(**(v2 + 848) + 24))(*(v2 + 848), __str);
          (*(**(v2 + 848) + 32))(*(v2 + 848));
          *(v2 + 848) = 0;
          v19 = __str;
          (*(v20[0] + 24))(v20, v2 + 824);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = *(v2 + 848);
        }

        *(v2 + 848) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 848), __str);
        (*(**(v2 + 848) + 32))(*(v2 + 848));
        *(v2 + 848) = v19;
        v19 = __str;
      }

      else
      {
        v19 = *(v2 + 848);
        *(v2 + 848) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v16, "setEmergencyMeasurementReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setEmergencyMeasurementReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v17, "setEmergencyMeasurementReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx e911 MeasReport\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setEmergencyMeasurementReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencyMeasurementReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29968742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setEmergencyMeasurementWithEstimateReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice41setEmergencyMeasurementWithEstimateReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane29MeasurementReportWithEstimateEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_20_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setEmergencyMeasurementWithEstimateReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice41setEmergencyMeasurementWithEstimateReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane29MeasurementReportWithEstimateEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setEmergencyMeasurementWithEstimateReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 856;
    if (__str != (v2 + 856))
    {
      v6 = v19;
      v7 = *(v2 + 880);
      if (v19 == __str)
      {
        if (v7 == v5)
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = 0;
          (*(**(v2 + 880) + 24))(*(v2 + 880), __str);
          (*(**(v2 + 880) + 32))(*(v2 + 880));
          *(v2 + 880) = 0;
          v19 = __str;
          (*(v20[0] + 24))(v20, v2 + 856);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = *(v2 + 880);
        }

        *(v2 + 880) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 880), __str);
        (*(**(v2 + 880) + 32))(*(v2 + 880));
        *(v2 + 880) = v19;
        v19 = __str;
      }

      else
      {
        v19 = *(v2 + 880);
        *(v2 + 880) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v16, "setEmergencyMeasurementWithEstimateReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setEmergencyMeasurementWithEstimateReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v17, "setEmergencyMeasurementWithEstimateReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx e911 MeasReportWithEstimate\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setEmergencyMeasurementWithEstimateReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setEmergencyMeasurementWithEstimateReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299687BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::startEmergencyPositionRequest(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = a2[1];
    v21 = *a2;
    *v22 = v6;
    *&v22[12] = *(a2 + 28);
    v16 = *a3;
    v17 = *(a3 + 2);
    v7 = mach_continuous_time();
    v8 = *&g_MacClockTicksToMsRelation;
    v9 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_49_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a4);
    v19[2] = v16;
    v20 = v17;
    v23 = (v8 * v7);
    dispatch_async(v9, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "startEmergencyPositionRequest");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "startEmergencyPositionRequest", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v138 = *MEMORY[0x29EDCA608];
  v7 = *(v6 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v136, v7 + 760);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v134, v7 + 824);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v132, v7 + 856);
  if (*(v7 + 89) == 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM req active\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 87, "startEmergencyPositionRequest_block_invoke", 2056);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 2, 1);
  }

  if (v137 || *(v6 + 100) != 1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v6 + 91))
      {
        v16 = 84;
      }

      else
      {
        v16 = 70;
      }

      if (*(v6 + 90))
      {
        v17 = 84;
      }

      else
      {
        v17 = 70;
      }

      if (*(v6 + 89))
      {
        v18 = 84;
      }

      else
      {
        v18 = 70;
      }

      if (*(v6 + 88))
      {
        v19 = 84;
      }

      else
      {
        v19 = 70;
      }

      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: include1xMsb,%c,optimizeGnssMeasWith1xMsb,%c,optimizeAfltMeasWith1xMsb,%c,useCdmaTimeForMeas,%c\n", v15, "ADP", 73, "startEmergencyPositionRequest_block_invoke", v19, v18, v17, v16);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v20, 4, 1);
    }

    if (!v135 && !*(v6 + 100) && (*(v6 + 88) & 1) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v130, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 7, v130, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v37 = mach_continuous_time();
        v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasReportCb\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 258);
        LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (!v133 && !*(v6 + 100) && *(v6 + 88) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v129, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 7, v129, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v129);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasRepwithEstimate\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 258);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if ((*(v7 + 88) & 1) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v128, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 7, v128, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v128);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v6 + 96))
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Periodic Sessions\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 87, "startEmergencyPositionRequest_block_invoke", 515);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v24, 2, 1);
      }
    }

    v25 = *(v6 + 100);
    if (v25 == -1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v127, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v127, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v127);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v30 = mach_continuous_time();
        v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Methodtype\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v6 + 104) - 1 >= 0x80)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v126, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v126, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v126);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514, *(v6 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if ((*(v6 + 124) & 1) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v125, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v125, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v125);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id should be GPS only\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    v34 = *(v6 + 132);
    if (v34 == -1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v124, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v124, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v124);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v40, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v6 + 106) < 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v123, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v123, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v123);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HAcc\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v42, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v6 + 116))
    {
      if (*(v6 + 113) < 0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v122, v6 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v122, "startEmergencyPositionRequest_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v122);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v47 = mach_continuous_time();
          v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VAcc\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v48, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          goto LABEL_94;
        }

        goto LABEL_205;
      }

      if (*(v6 + 114) >= 0x65u)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v121, v6 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v121, "startEmergencyPositionRequest_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v121);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VConf\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          goto LABEL_94;
        }

        goto LABEL_205;
      }
    }

    if (*(v6 + 112) >= 0x65u)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v120, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v120, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v120);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v43 = mach_continuous_time();
        v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HConf\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v44, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (*(v6 + 126) && (*(v6 + 126) & 0xB7) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v119, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v119, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v119);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v45 = mach_continuous_time();
        v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ShapeType Not Supported, %u\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515, *(v6 + 126));
        LbsOsaTrace_WriteLog(0x18u, __str, v46, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_94;
      }

      goto LABEL_205;
    }

    if (v34 == 3)
    {
      HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(v7);
      *(v7 + 112) = (*(*HalExtensions + 144))(HalExtensions);
      IsLoggingAllowed = gnss::GnssAdaptDevice::Ga10_07FTAssistanceRequest(v7);
      v25 = *(v6 + 100);
    }

    if (!v25 && *(v6 + 132) != 3)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v118, v6 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 5, v118, "startEmergencyPositionRequest_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v118);
      gnss::Emergency::Cplane::MeasurementReport::MeasurementReport(__str);
      *&__str[12] = *(v6 + 132);
      *__str = -9;
      __str[4] |= 4u;
      *&__str[8] = 0;
      *&__str[1392] = 0;
      v68 = *(v7 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_35_0;
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v115, v134);
      memcpy(v116, __str, sizeof(v116));
      dispatch_async(v68, block);
      gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v7, *(v6 + 136), 0, 22);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(v113, 0x410uLL);
        v69 = mach_continuous_time();
        v70 = snprintf(v113, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v69), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, v113, v70, 5, 1);
      }

      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v115);
      goto LABEL_205;
    }

    if (!gnss::GnssAdaptDevice::Ga10_11SetGuardTimeOut(IsLoggingAllowed) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetGuardTimeOut\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v53, 0, 1);
    }

    v54 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (v54)
    {
      bzero(__str, 0x410uLL);
      v55 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v6 + 72))
      {
        v56 = 84;
      }

      else
      {
        v56 = 70;
      }

      if (*(v6 + 73))
      {
        v57 = 84;
      }

      else
      {
        v57 = 70;
      }

      v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EarlyReturn,%c,HeloEnabled,%c\n", v55, "ADP", 73, "startEmergencyPositionRequest_block_invoke", v57, v56);
      v54 = LbsOsaTrace_WriteLog(0x18u, __str, v58, 4, 1);
    }

    if (*(v6 + 132) == 3)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(v6 + 73);
    }

    if (!gnss::GnssAdaptDevice::Ga10_12SetEarlyReturn(v54, v59 & 1) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v60 = mach_continuous_time();
      v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetEarlyReturn\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v61, 0, 1);
    }

    *&v113[0] = 0xFFFFFFFF00000000;
    memset(v113 + 12, 0, 27);
    *(v113 + 6) = -1;
    v62 = *(v6 + 100);
    if (v62 > 0)
    {
      if (v62 == 1)
      {
        LODWORD(v113[0]) = 2;
        v63 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
        if (v63)
        {
          bzero(__str, 0x410uLL);
          v75 = mach_continuous_time();
          v76 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MSB e911 Session\n", (*&g_MacClockTicksToMsRelation * v75), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
          v63 = LbsOsaTrace_WriteLog(0x18u, __str, v76, 4, 1);
        }
      }

      else
      {
        if (v62 != 2)
        {
LABEL_130:
          v63 = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
          if (v63)
          {
            bzero(__str, 0x410uLL);
            v71 = mach_continuous_time();
            v72 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Method Type,%u\n", (*&g_MacClockTicksToMsRelation * v71), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 515, *(v6 + 100));
            v63 = LbsOsaTrace_WriteLog(0x18u, __str, v72, 0, 1);
          }

          goto LABEL_136;
        }

        LODWORD(v113[0]) = 3;
        v63 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
        if (v63)
        {
          bzero(__str, 0x410uLL);
          v66 = mach_continuous_time();
          v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Standalone e911 Session\n", (*&g_MacClockTicksToMsRelation * v66), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
          v63 = LbsOsaTrace_WriteLog(0x18u, __str, v67, 4, 1);
        }
      }
    }

    else
    {
      if (v62 != -1)
      {
        if (!v62)
        {
          LODWORD(v113[0]) = 1;
          if (*(v6 + 132) == 3)
          {
            BYTE6(v113[2]) = *(v6 + 91);
          }

          v63 = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
          if (v63)
          {
            bzero(__str, 0x410uLL);
            v64 = mach_continuous_time();
            v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MSA e911 Session\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
            v63 = LbsOsaTrace_WriteLog(0x18u, __str, v65, 4, 1);
          }

          goto LABEL_136;
        }

        goto LABEL_130;
      }

      v63 = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (v63)
      {
        bzero(__str, 0x410uLL);
        v73 = mach_continuous_time();
        v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType\n", (*&g_MacClockTicksToMsRelation * v73), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 262);
        v63 = LbsOsaTrace_WriteLog(0x18u, __str, v74, 0, 1);
      }
    }

LABEL_136:
    if (*(v6 + 106))
    {
      BYTE6(v113[0]) = *(v6 + 106);
    }

    if (*(v6 + 112))
    {
      BYTE7(v113[0]) = *(v6 + 112);
    }

    if (*(v6 + 116))
    {
      if (*(v6 + 113))
      {
        BYTE8(v113[0]) = *(v6 + 113);
      }

      if (*(v6 + 114))
      {
        BYTE9(v113[0]) = *(v6 + 114);
      }
    }

    if (!gnss::GnssAdaptDevice::Ga10_30SetTargetE911VertAccM(v63, *(v6 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v77 = mach_continuous_time();
      v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetTargetE911VertAccM\n", (*&g_MacClockTicksToMsRelation * v77), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v78, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v79 = mach_continuous_time();
      v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAcc,%u,VAcc,%u,HConf,%u,VConf,%u\n", (*&g_MacClockTicksToMsRelation * v79), "ADP", 73, "startEmergencyPositionRequest_block_invoke", BYTE6(v113[0]), BYTE8(v113[0]), BYTE7(v113[0]), BYTE9(v113[0]));
      LbsOsaTrace_WriteLog(0x18u, __str, v80, 4, 1);
    }

    if (*(v6 + 108) == 1)
    {
      v81 = *(v6 + 127);
      if (*(v6 + 127))
      {
        if ((v81 & 0xF) == 0)
        {
          goto LABEL_156;
        }

        v82 = HIDWORD(v113[1]) | v81;
      }

      else
      {
        v82 = 8;
      }

      HIDWORD(v113[1]) = v82;
    }

LABEL_156:
    v83 = *(v6 + 126);
    if (v83)
    {
      LODWORD(v113[2]) |= 1u;
      if ((v83 & 2) == 0)
      {
LABEL_158:
        if ((v83 & 4) == 0)
        {
          goto LABEL_159;
        }

        goto LABEL_182;
      }
    }

    else if ((*(v6 + 126) & 2) == 0)
    {
      goto LABEL_158;
    }

    LODWORD(v113[2]) |= 2u;
    if ((v83 & 4) == 0)
    {
LABEL_159:
      if ((v83 & 0x10) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_183;
    }

LABEL_182:
    LODWORD(v113[2]) |= 4u;
    if ((v83 & 0x10) == 0)
    {
LABEL_160:
      if ((v83 & 0x20) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_161;
    }

LABEL_183:
    LODWORD(v113[2]) |= 8u;
    if ((v83 & 0x20) == 0)
    {
LABEL_162:
      HIDWORD(v113[0]) = 1000 * *(v6 + 104);
      BYTE5(v113[2]) = *(v6 + 120) == 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v84 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v85 = 70;
        if (*(v6 + 72))
        {
          v85 = 84;
        }

        v86 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType,%u,Vel,%u,RespTimeMs,%u,Allowed,%u,VerReq,%u,posProtocol,%d,SessId,%u,HeloEnabled,%c\n", v84, "ADP", 73, "startEmergencyPositionRequest_block_invoke", LODWORD(v113[2]), HIDWORD(v113[1]), HIDWORD(v113[0]), BYTE5(v113[2]), *(v6 + 116), *(v6 + 132), *(v6 + 136), v85);
        LbsOsaTrace_WriteLog(0x18u, __str, v86, 4, 1);
      }

      WORD2(v113[0]) = 1;
      if (*(v6 + 100) == 1)
      {
        v87 = 3;
      }

      else
      {
        v87 = 1;
      }

      *(&v113[1] + 4) = 0;
      LODWORD(v113[1]) = v87;
      BYTE4(v113[2]) = 1;
      *__str = *(v6 + 136);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](&__str[8], v6 + 40);
      std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(v7 + 208, __str);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&__str[8]);
      if (GNS_CpLocReq(*(v6 + 136), v113, 1) != 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v97 = mach_continuous_time();
          v98 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpLocReq,%u\n", (*&g_MacClockTicksToMsRelation * v97), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 257, 2);
          LbsOsaTrace_WriteLog(0x18u, __str, v98, 0, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v112, v6 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 4, v112, "startEmergencyPositionRequest_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v112);
        v99 = *(v7 + 216);
        if (v99)
        {
          v100 = *(v6 + 136);
          v101 = v7 + 216;
          do
          {
            v102 = *(v99 + 32);
            v103 = v102 >= v100;
            v104 = v102 < v100;
            if (v103)
            {
              v101 = v99;
            }

            v99 = *(v99 + 8 * v104);
          }

          while (v99);
          if (v101 != v7 + 216 && v100 >= *(v101 + 32))
          {
            std::map<unsigned int,std::function<void ()(gnss::Result)>>::erase[abi:ne200100]((v7 + 208), v101);
          }
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v105 = mach_continuous_time();
          v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v105), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v106, 5, 1);
        }

        goto LABEL_205;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v88 = mach_continuous_time();
        v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CpLocReq success\n", (*&g_MacClockTicksToMsRelation * v88), "ADP", 73, "startEmergencyPositionRequest_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v89, 4, 1);
      }

      __str[60] = 0;
      *&__str[64] = -1;
      *&__str[68] = 0;
      *&__str[72] = xmmword_2997286D0;
      memset(&__str[88], 0, 22);
      *&__str[110] = -1;
      __str[112] = 0;
      *&__str[116] = 0;
      *&__str[120] = -1;
      *&__str[128] = 0;
      *&__str[136] = -1;
      __str[140] = -1;
      *&__str[156] = -1;
      *&__str[142] = -1;
      *&__str[149] = -1;
      *&__str[164] = 0x7FFFFFFFLL;
      __str[172] = 0;
      *&__str[174] = -1;
      *&__str[176] = -COERCE_DOUBLE(0x8000000080000000);
      *&__str[184] = 0;
      *__str = v113[0];
      *&__str[16] = v113[1];
      *&__str[31] = *(&v113[1] + 15);
      v90 = *(v6 + 136);
      v91 = *(v6 + 132);
      *&__str[40] = *(v6 + 140);
      *&__str[44] = v91;
      __str[48] = *(v6 + 72);
      *&__str[56] = -1;
      *&__str[52] = v90;
      *&__str[192] = *(v6 + 89);
      v92 = *(v7 + 128);
      *(v7 + 120) = *(v6 + 88);
      v93 = 0x7D6343EB1A1F58D1 * ((*(v7 + 136) - v92) >> 2);
      if (*(v7 + 136) != v92)
      {
        if (v93 <= 1)
        {
          v94 = 1;
        }

        else
        {
          v94 = 0x7D6343EB1A1F58D1 * ((*(v7 + 136) - v92) >> 2);
        }

        if (*(v92 + 52) == v90)
        {
          v95 = 0;
LABEL_178:
          if (v95 < v93)
          {
            v96 = v92 + 196 * v95;
            __str[60] = *(v96 + 60);
            *(v96 + 144) = *&__str[144];
            *(v96 + 160) = *&__str[160];
            *(v96 + 176) = *&__str[176];
            *(v96 + 192) = *&__str[192];
            *(v96 + 80) = *&__str[80];
            *(v96 + 96) = *&__str[96];
            *(v96 + 112) = *&__str[112];
            *(v96 + 128) = *&__str[128];
            *(v96 + 16) = *&__str[16];
            *(v96 + 32) = *&__str[32];
            *(v96 + 64) = *&__str[64];
            *v96 = *__str;
            *(v96 + 48) = *&__str[48];
          }

          goto LABEL_204;
        }

        v95 = 0;
        v107 = (v92 + 248);
        v108 = v94 - 1;
        while (v108 != v95)
        {
          v109 = *v107;
          v107 += 49;
          ++v95;
          if (v109 == v90)
          {
            if (v95 < v93)
            {
              goto LABEL_178;
            }

            break;
          }
        }
      }

      if (v93 <= 3)
      {
        std::vector<gnss::AgnssSummaryReport>::push_back[abi:ne200100](v7 + 128, __str);
      }

LABEL_204:
      *(v7 + 1024) = 1;
      goto LABEL_205;
    }

LABEL_161:
    LODWORD(v113[2]) |= 0x10u;
    goto LABEL_162;
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v131, v6 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v7, 7, v131, "startEmergencyPositionRequest_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v131);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosnReportCb\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "startEmergencyPositionRequest_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
LABEL_94:
    bzero(__str, 0x410uLL);
    v49 = mach_continuous_time();
    v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 68, "startEmergencyPositionRequest_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v50, 5, 1);
  }

LABEL_205:
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v132);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v134);
  result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v136);
  v111 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29968A19C(_Unwind_Exception *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v1 - 152);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v1 - 120);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga10_07FTAssistanceRequest(gnss::GnssAdaptDevice *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga10_07FTAssistanceRequest");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v4 = *(this + 36);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke;
  block[3] = &__block_descriptor_tmp_249;
  block[4] = this;
  dispatch_async(v4, block);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga10_07FTAssistanceRequest");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29startEmergencyPositionRequestERKNS_9Emergency6Cplane15PositionRequestERKNS2_7ContextENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);
  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  v5 = a1 + 64;
  v6 = *(a1 + 56);

  return v2(v6, v5);
}

uint64_t __copy_helper_block_e8_32c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c82_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane17MeasurementReportEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(uint64_t a1, int a2, int a3, int a4)
{
  v180 = *MEMORY[0x29EDCA608];
  v111 = 0xFFFFFFFF00000000;
  v112 = -1;
  memset(&v113[2], 0, 27);
  v115 = 0xFFFFFFFF00000000;
  v116 = 0;
  v119 = -1;
  v120 = 0;
  v123 = -1;
  LOWORD(v124) = 0;
  v125 = xmmword_2997286D0;
  memset(v126, 0, sizeof(v126));
  v127 = -1;
  v128 = 0;
  v132 = -1;
  v131 = 0;
  v133 = 0;
  v134 = -1;
  v135 = -1;
  v139 = -1;
  *&v136[8] = -1;
  *&v136[1] = -1;
  v140 = 0x7FFFFFFFLL;
  LOBYTE(v141) = 0;
  HIWORD(v141) = -1;
  v142 = -COERCE_DOUBLE(0x8000000080000000);
  v143 = 0;
  v144 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga10_05SendSessionSummaryReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  if (a3)
  {
    if (v11 != v10)
    {
      v12 = 0x7D6343EB1A1F58D1 * ((v11 - v10) >> 2);
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0x7D6343EB1A1F58D1 * ((v11 - v10) >> 2);
      }

      if (*(v10 + 56) == a2)
      {
        v14 = 0;
LABEL_10:
        if (v14 < v12)
        {
          v15 = v10 + 196 * v14;
          v16 = *v15;
          v155 = *(v15 + 4);
          v156 = *(v15 + 8);
          *__str = *(v15 + 10);
          *&__str[13] = *(v15 + 23);
          v17 = *(v15 + 39);
          v18 = *(v15 + 48);
          v153 = *(v15 + 49);
          v154 = *(v15 + 51);
          v19 = *(v15 + 60);
          v20 = *(v15 + 61);
          v152 = *(v15 + 63);
          v151 = v20;
          v21 = *(v15 + 64);
          v22 = *(v15 + 68);
          *v175 = *(v15 + 88);
          *&v175[14] = *(v15 + 102);
          v23 = *(v15 + 110);
          v24 = *(v15 + 112);
          v149 = *(v15 + 113);
          v150 = *(v15 + 115);
          v25 = *(v15 + 116);
          v26 = *(v15 + 120);
          v27 = *(v15 + 136);
          v28 = *(v15 + 140);
          v179 = *(v15 + 149);
          v178 = *(v15 + 141);
          v148 = *(v15 + 155);
          v147 = *(v15 + 153);
          v29 = *(v15 + 156);
          v30 = *(v15 + 172);
          v110 = *(v15 + 192);
          v109 = *(v15 + 184);
          v111 = __PAIR64__(v155, v16);
          v31 = *(v15 + 176);
          v32 = *(v15 + 164);
          v33 = *(v15 + 128);
          v34 = *(v15 + 72);
          v35 = *(v15 + 52);
          v36 = *(v15 + 40);
          v112 = v156;
          *v113 = *__str;
          *&v113[13] = *&__str[13];
          v114 = v17;
          v115 = v36;
          v116 = v18;
          v118 = v154;
          v117 = v153;
          v119 = v35;
          v120 = v19;
          v122 = v152;
          v121 = v151;
          v123 = v21;
          v124 = v22;
          v125 = v34;
          *&v126[14] = *&v175[14];
          *v126 = *v175;
          v127 = v23;
          v128 = v24;
          v130 = v150;
          v129 = v149;
          v132 = v26;
          v133 = v33;
          v131 = v25;
          v134 = v27;
          v135 = v28;
          *&v136[8] = v179;
          *v136 = v178;
          v138 = v148;
          v137 = v147;
          v139 = v29;
          v140 = v32;
          v141 = v30;
          v142 = v31;
          v144 = v110;
          v106 = 2;
          v143 = v109;
          goto LABEL_20;
        }
      }

      else
      {
        v14 = 0;
        v37 = (v10 + 252);
        v38 = v13 - 1;
        while (v38 != v14)
        {
          v39 = *v37;
          v37 += 49;
          ++v14;
          if (v39 == a2)
          {
            if (v14 < v12)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }
    }

    v106 = 2;
    goto LABEL_19;
  }

  v106 = 1;
  if ((gnss::GnssAdaptDevice::Ga11_23GetCPSession(v10, v11, a2, &v111) & 1) == 0)
  {
LABEL_19:
    LODWORD(v119) = a2;
  }

LABEL_20:
  v40 = -1.0;
  if (HIDWORD(v125) == 1)
  {
    if (*&v126[12] >> 23)
    {
      v42 = 1.79769313e308;
    }

    else
    {
      v41 = vcvtd_n_f64_u32(90 * *&v126[12], 0x17uLL);
      if (*&v126[8] == 2)
      {
        v42 = -((90 * *&v126[12]) * 0.00000011920929);
      }

      else
      {
        v42 = v41;
      }
    }

    v46 = *&v126[16];
    if ((*&v126[16] + 0x800000) >> 24)
    {
      v45 = 1.79769313e308;
    }

    else
    {
      if ((*&v126[16] & 0x800000) != 0)
      {
        v46 = *&v126[16] | 0xFF000000;
      }

      v45 = v46 * 360.0 * 0.0000000596046448;
    }

    v47 = *&v126[20];
    if (v131 == 2)
    {
      v47 = -v47;
    }

    if (*&v126[20] < 0)
    {
      v43 = 1.79769313e308;
    }

    else
    {
      v43 = v47;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%.7lf,Long,%.7lf,Alt,%.2lf\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 68, "Ga10_05SendSessionSummaryReport", v42, v45, v43);
      LbsOsaTrace_WriteLog(0x18u, __str, v49, 5, 1);
    }

    v44 = -1.0;
    v50 = -1.0;
    if (v127 != 255)
    {
      v50 = (pow(1.1, v127) + -1.0) * 10.0;
    }

    v105 = v50;
    if (v132 != 255)
    {
      v44 = (pow(1.025, v132) + -1.0) * 45.0;
    }

    LODWORD(v4) = v143;
    if ((((v124 & 0x8000) != 0) & v116) != 0)
    {
      v51 = BYTE1(v124) & 1 | 2;
    }

    else
    {
      v51 = BYTE1(v124) & 1;
    }

    if ((a3 & (v111 == 1)) != 0)
    {
      v51 |= 4u;
    }

    v104 = v51;
    v52 = DWORD1(v125);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v53 = mach_continuous_time();
      v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AchievedHUnc,%f,AchievedVUnc,%f\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 68, "Ga10_05SendSessionSummaryReport", v105, v44);
      LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
    }

    v103 = (v52 >> 3) & 0x18 | v52 & 0x20004 | (v52 >> 19) & 0xE0 | (v52 >> 5) & 0x300 | (((v52 >> 8) & 7) << 10) & 0xFFFFDFFF | (((v52 >> 12) & 1) << 13) | (v52 >> 1) & 0xC000 | (v52 >> 2) & 0x10000 | (v52 >> 10) & 0x1C0000 | (v52 << 10) & 0x200000 | (__rbit32(v52) >> 30);
    v102 = *&v4 / 1000.0;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v55 = mach_continuous_time();
      v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ttff,%f,TechSrc,%d,AssistUsed,%llu\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 73, "Ga10_05SendSessionSummaryReport", v102, v104, v103);
      LbsOsaTrace_WriteLog(0x18u, __str, v56, 4, 1);
    }
  }

  else
  {
    v103 = 0;
    v104 = 0;
    v43 = 1.79769313e308;
    v102 = -1.0;
    v44 = -1.0;
    v105 = -1.0;
    v45 = 1.79769313e308;
    v42 = 1.79769313e308;
  }

  v57 = v111;
  if ((v111 - 1) < 2)
  {
    v60 = v45;
  }

  else
  {
    v58 = v111;
    v59 = -1.0;
    v4 = -1.0;
    if (!v111)
    {
      goto LABEL_81;
    }

    if (v111 == 3)
    {
      v60 = v45;
      v57 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v61 = mach_continuous_time();
        v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 87, "Ga10_05SendSessionSummaryReport", 770, v111);
        LbsOsaTrace_WriteLog(0x18u, __str, v62, 2, 1);
      }

      v60 = v45;
      v57 = 0;
    }
  }

  LODWORD(v4) = *&v113[2];
  v59 = -1.0;
  if (BYTE6(v111) != 255)
  {
    v59 = (pow(1.1, BYTE6(v111)) + -1.0) * 10.0;
  }

  v63 = *&v4;
  if (v112 != 255)
  {
    v40 = (pow(1.025, v112) + -1.0) * 45.0;
  }

  v58 = *&v113[6];
  v4 = v63 / 1000.0;
  if (*&v113[6] <= 1)
  {
    if (*&v113[6])
    {
      v64 = *&v113[6] == 1;
      goto LABEL_69;
    }

LABEL_80:
    v45 = v60;
    goto LABEL_81;
  }

  if (*&v113[6] == 2)
  {
    if (a3)
    {
      v58 = 4;
    }

    else
    {
      v58 = 2;
    }

    goto LABEL_80;
  }

  v64 = *&v113[6] == 3;
LABEL_69:
  v45 = v60;
  if (v64)
  {
    if (a3)
    {
      v58 = 3;
    }

    else
    {
      v58 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v66 = mach_continuous_time();
      v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RepType,%u\n", (*&g_MacClockTicksToMsRelation * v66), "ADP", 69, "Ga10_05SendSessionSummaryReport", 770, *&v113[6]);
      LbsOsaTrace_WriteLog(0x18u, __str, v67, 0, 1);
    }

    v58 = 0;
  }

LABEL_81:
  v68 = HIDWORD(v115) + 1;
  if ((HIDWORD(v115) + 1) >= 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v69 = mach_continuous_time();
      v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v69), "ADP", 69, "Ga10_05SendSessionSummaryReport", 515, HIDWORD(v115));
      LbsOsaTrace_WriteLog(0x18u, __str, v70, 0, 1);
    }

    v68 = 0;
  }

  v71 = 0;
  switch(a4)
  {
    case 0:
    case 1:
    case 6:
    case 15:
    case 16:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
      break;
    case 2:
      v71 = 1;
      break;
    case 3:
      v71 = 2;
      break;
    case 4:
      v71 = 3;
      break;
    case 5:
    case 8:
      v71 = 5;
      break;
    case 7:
      v71 = 7;
      break;
    case 9:
    case 14:
      v71 = 6;
      break;
    case 10:
    case 11:
      v71 = 8;
      break;
    case 12:
    case 13:
      v71 = 9;
      break;
    case 17:
      v71 = 10;
      break;
    case 18:
    case 19:
      if (v120)
      {
        v71 = 12;
      }

      else
      {
        v71 = 11;
      }

      break;
    case 20:
    case 21:
      v71 = 12;
      break;
    case 22:
    case 23:
      v71 = 13;
      break;
    case 24:
      v71 = 14;
      break;
    case 25:
    case 26:
      v71 = 15;
      break;
    case 27:
    case 28:
      v71 = 16;
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v100 = mach_continuous_time();
        v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Sess Code,%u\n", (*&g_MacClockTicksToMsRelation * v100), "ADP", 69, "Ga10_05SendSessionSummaryReport", 515, a4);
        LbsOsaTrace_WriteLog(0x18u, __str, v101, 0, 1);
      }

      v71 = 0;
      break;
  }

  v72 = v116;
  v73 = *(a1 + 176);
  *(a1 + 176) = 0;
  GnssSpoofingFlag = gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(a1, v125);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v175, a1 + 728);
  v107 = a1;
  if (v176)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v75 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v76 = 70;
      if (v73)
      {
        v77 = 84;
      }

      else
      {
        v77 = 70;
      }

      if (v72)
      {
        v76 = 84;
      }

      v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionId, %u, MethodType,%u,SessionType,%u,ProtoType,%u,ReqRspTime,%f,ReqHAcc,%f,ReqVAcc,%f,PosReqType,%u,ErrCode,%u,HeloEnabled,%c,HeloInjected,%c, SpoofingFlag,%llu\n", v75, "ADP", 73, "Ga10_05SendSessionSummaryReport", a2, v57, v106, v68, v4, v59, v40, v58, v71, v76, v77, GnssSpoofingFlag);
      LbsOsaTrace_WriteLog(0x18u, __str, v78, 4, 1);
    }

    v79 = *(a1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice31Ga10_05SendSessionSummaryReportEjb18e_gnsPPDU_SessCode_block_invoke;
    block[3] = &__block_descriptor_tmp_245;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v158, v175);
    *&v158[4] = v42;
    *&v158[5] = v45;
    *&v158[6] = v43;
    *&v158[7] = v105;
    *&v158[8] = v44;
    *&v158[9] = v102;
    v159 = v104;
    v160 = v57;
    v161 = v106;
    v162 = v68;
    v163 = v4;
    v164 = v59;
    v165 = v40;
    v166 = v58;
    v167 = v71;
    v168 = v72;
    v169 = v73;
    v171 = v146;
    v170 = v145;
    v172 = v103;
    v173 = GnssSpoofingFlag;
    v174 = a2;
    dispatch_async(v79, block);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v158);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v80 = mach_continuous_time();
    v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SummaryRep\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 69, "Ga10_05SendSessionSummaryReport", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v81, 0, 1);
  }

  v83 = *(a1 + 128);
  v82 = *(a1 + 136);
  v84 = 0x7D6343EB1A1F58D1 * ((v82 - v83) >> 2);
  if (a3)
  {
    if (v82 == v83)
    {
      goto LABEL_121;
    }

    if (v84 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = 0x7D6343EB1A1F58D1 * ((v82 - v83) >> 2);
    }

    if (*(v83 + 14) != a2)
    {
      v86 = 0;
      v87 = (v83 + 252);
      v88 = v85 - 1;
      while (v88 != v86)
      {
        v89 = *v87;
        v87 += 49;
        ++v86;
        if (v89 == a2)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_121;
    }

    goto LABEL_112;
  }

  if (v82 == v83)
  {
    goto LABEL_121;
  }

  if (v84 <= 1)
  {
    v90 = 1;
  }

  else
  {
    v90 = 0x7D6343EB1A1F58D1 * ((v82 - v83) >> 2);
  }

  if (*(v83 + 13) == a2)
  {
LABEL_112:
    v86 = 0;
LABEL_113:
    if (v86 < v84)
    {
      v91 = &v83[196 * v86];
      v92 = v82 - (v91 + 196);
      if (v82 != v91 + 196)
      {
        memmove(&v83[196 * v86], v91 + 196, v92 - 2);
      }

      *(v107 + 136) = &v91[v92];
    }

    goto LABEL_121;
  }

  v86 = 0;
  v93 = (v83 + 248);
  v94 = v90 - 1;
  while (v94 != v86)
  {
    v95 = *v93;
    v93 += 49;
    ++v86;
    if (v95 == a2)
    {
LABEL_120:
      if (v86 < v84)
      {
        goto LABEL_113;
      }

      break;
    }
  }

LABEL_121:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v96 = mach_continuous_time();
    v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 68, "Ga10_05SendSessionSummaryReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v97, 5, 1);
  }

  result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v175);
  v99 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnss::GnssAdaptDevice::Ga10_11SetGuardTimeOut(gnss::GnssAdaptDevice *this)
{
  v11 = *MEMORY[0x29EDCA608];
  bzero(v9, 0x230uLL);
  v9[0] = 512;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GaurdTimeOut,%f\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "Ga10_11SetGuardTimeOut", 2.0);
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 5, 1);
  }

  v10 = 2000;
  v3 = Gnm_SetPlatformConfig(v9);
  if (v3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx setPfmCfg,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_11SetGuardTimeOut", 257, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  result = v3 == 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnss::GnssAdaptDevice::Ga10_12SetEarlyReturn(gnss::GnssAdaptDevice *this, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_12SetEarlyReturn");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  bzero(v18, 0x268uLL);
  v5 = 0;
  v18[6] = 2;
  v19 = 0;
  v21[0] = 0;
  v20 = 0;
  *(v21 + 7) = 0;
  v22[0] = 0;
  *(v22 + 5) = 0;
  do
  {
    v6 = v17 + v5;
    v6[62] = 0;
    *(&v22[33] + v5 + 7) = 0;
    *(v6 + 161) = -1;
    v5 += 262;
  }

  while (v5 != 524);
  v23 = 0;
  v24[2] = 0;
  *(v24 + 7) = 0;
  v24[0] = 0;
  if (a2)
  {
    v7 = 4096;
  }

  else
  {
    v7 = 0;
  }

  v17[0] = 4096;
  v17[1] = v7;
  v8 = Gnm_SetUserConfig(v17);
  if (v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUsrCfg,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga10_12SetEarlyReturn", 257, v8);
    v11 = 0;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetUserConfig success\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga10_12SetEarlyReturn");
    v11 = 5;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v10, v11, 1);
LABEL_14:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga10_12SetEarlyReturn");
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
  }

  result = v8 == 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnss::GnssAdaptDevice::Ga10_30SetTargetE911VertAccM(gnss::GnssAdaptDevice *this, double a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_30SetTargetE911VertAccM");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  bzero(v18, 0x270uLL);
  v5 = 0;
  v20 = 2;
  v21 = 0;
  v23[0] = 0;
  v22 = 0;
  *(v23 + 7) = 0;
  v24[0] = 0;
  *(v24 + 5) = 0;
  do
  {
    v6 = &v18[v5];
    v6[62] = 0;
    *(&v24[33] + v5 + 7) = 0;
    *(v6 + 161) = -1;
    v5 += 262;
  }

  while (v5 != 524);
  v25 = 0;
  v27 = 0.0;
  *(v26 + 7) = 0;
  v26[0] = 0;
  v19 = 4096;
  if (a2 == -1.0)
  {
    a2 = 0.0;
  }

  else
  {
    v27 = a2;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: targetE911VerticalAccM,%f\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga10_30SetTargetE911VertAccM", a2);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
  }

  v9 = Gnm_SetUserConfig(v18);
  if (v9)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUsrCfg,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga10_30SetTargetE911VertAccM", 257, v9);
    v12 = 0;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetUserConfig success\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga10_30SetTargetE911VertAccM");
    v12 = 5;
  }

  LbsOsaTrace_WriteLog(0x18u, __str, v11, v12, 1);
LABEL_16:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga10_30SetTargetE911VertAccM");
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

  result = v9 == 0;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void std::map<unsigned int,std::function<void ()(gnss::Result)>>::erase[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(a1, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));
  v3 = *MEMORY[0x29EDCA608];

  operator delete(a2);
}

uint64_t gnss::GnssAdaptDevice::stopEmergencyPositionRequest(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice28stopEmergencyPositionRequestEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_55;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[8] = a2;
    dispatch_async(v4, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "stopEmergencyPositionRequest", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice28stopEmergencyPositionRequestEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v43[129] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    v6 = *(v2 + 128);
    v5 = *(v2 + 136);
    v7 = v5 - v6;
    if (v5 != v6)
    {
      v8 = *(a1 + 72);
      v9 = 0x7D6343EB1A1F58D1 * (v7 >> 2);
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (*(v6 + 52) == v8)
      {
LABEL_9:
        *__str = *(a1 + 72);
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, a1 + 40);
        std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(v2 + 208, __str);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v43);
        if (GNS_CpLocAbort(*(a1 + 72)) == 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CpLocAbort success\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "stopEmergencyPositionRequest_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
          }
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v28 = mach_continuous_time();
            v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpLocAbort,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "stopEmergencyPositionRequest_block_invoke", 257, 2);
            LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v39, "stopEmergencyPositionRequest_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
          v30 = *(v2 + 216);
          if (v30)
          {
            v31 = *(a1 + 72);
            v32 = v2 + 216;
            do
            {
              v33 = *(v30 + 32);
              v34 = v33 >= v31;
              v35 = v33 < v31;
              if (v34)
              {
                v32 = v30;
              }

              v30 = *(v30 + 8 * v35);
            }

            while (v30);
            if (v32 != v2 + 216 && v31 >= *(v32 + 32))
            {
              std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v2 + 208), v32);
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32 + 40);
              operator delete(v32);
            }
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
          }
        }

        goto LABEL_39;
      }

      v20 = 0;
      v21 = (v6 + 248);
      v22 = v10 - 1;
      while (v22 != v20)
      {
        v23 = *v21;
        v21 += 49;
        ++v20;
        if (v23 == v8)
        {
          if (v20 < v9)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v40, "stopEmergencyPositionRequest_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessId,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 87, "stopEmergencyPositionRequest_block_invoke", 2052, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v25, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v41, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v41, "stopEmergencyPositionRequest_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v41);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "stopEmergencyPositionRequest_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "stopEmergencyPositionRequest_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }
  }

LABEL_39:
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29968C774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setNwAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setNwAssistanceNeededReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane22AssistanceNeededReportEEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_57;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceNeededReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice27setNwAssistanceNeededReportENSt3__18functionIFNS_6ResultERKNS_9Emergency6Cplane22AssistanceNeededReportEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceNeededReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 792;
    if (__str != (v2 + 792))
    {
      v6 = v19;
      v7 = *(v2 + 816);
      if (v19 == __str)
      {
        if (v7 == v5)
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = 0;
          (*(**(v2 + 816) + 24))(*(v2 + 816), __str);
          (*(**(v2 + 816) + 32))(*(v2 + 816));
          *(v2 + 816) = 0;
          v19 = __str;
          (*(v20[0] + 24))(v20, v2 + 792);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = *(v2 + 816);
        }

        *(v2 + 816) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 816), __str);
        (*(**(v2 + 816) + 32))(*(v2 + 816));
        *(v2 + 816) = v19;
        v19 = __str;
      }

      else
      {
        v19 = *(v2 + 816);
        *(v2 + 816) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v16, "setNwAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setNwAssistanceNeededReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v17, "setNwAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AssistReport\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setNwAssistanceNeededReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setNwAssistanceNeededReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29968CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setNwAssistanceGpsRefTime(uint64_t a1, const void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, 0x118uLL);
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice25setNwAssistanceGpsRefTimeERKNS_9Emergency6Cplane16GpsReferenceTimeENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_70_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    memcpy(v12, __dst, sizeof(v12));
    dispatch_async(v5, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__dst, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__dst, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsRefTime", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __dst, v8, 0, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice25setNwAssistanceGpsRefTimeERKNS_9Emergency6Cplane16GpsReferenceTimeENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) < 0x240C8400u)
    {
      if (*(a1 + 76) < 0x400u)
      {
        if (*(a1 + 79) < 0x11u)
        {
          v22 = 0;
          v60 = 0;
          memset(v59, 0, sizeof(v59));
          v58 = 0u;
          do
          {
            v23 = &v57 + v22;
            v23[22] = -1;
            *(v23 + 23) = 0;
            v23[27] = 0;
            v22 += 6;
          }

          while (v22 != 96);
          LOWORD(v58) = -1;
          DWORD1(v58) = -1;
          HIDWORD(v58) = -1;
          v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v61 = v24;
          v25 = *(a1 + 72);
          v57 = v25;
          v26 = *(a1 + 78);
          if (v26 == 255)
          {
            v27 = 0xFFFF;
          }

          else
          {
            v27 = ((pow(1.18, v26) + -1.0) * 0.0022 * 0.000333333333);
            LOWORD(v58) = v27;
          }

          v28 = *(a1 + 76);
          WORD4(v58) = v28;
          v29 = *(a1 + 336);
          if (*(a1 + 336) && v29 < 8)
          {
            v28 += v29 << 10;
            WORD4(v58) = v28;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,Tow,%u,TowUnc,%u,OsTime,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke", v28, v25, v27, v24);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 4, 1);
          }

          if (*(a1 + 79))
          {
            v32 = 0;
            v33 = 0;
            v34 = (a1 + 80);
            do
            {
              v35 = *(v34 + 2);
              if (v35 > 0x1F)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v43 = mach_continuous_time();
                  v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx satId,%u rejected\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514, *(v34 + 2));
                  LbsOsaTrace_WriteLog(0x18u, __str, v44, 0, 1);
                }
              }

              else
              {
                v36 = *(v34 + 12);
                if (v36 > 3)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v45 = mach_continuous_time();
                    v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Tlm of satId,%u\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514, *(v34 + 2));
                    LbsOsaTrace_WriteLog(0x18u, __str, v46, 0, 1);
                  }
                }

                else
                {
                  v37 = v59 + 6 * v33 + 2;
                  v37[3] = v36;
                  v38 = *v34;
                  if (v38 >= 0x4000)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v47 = mach_continuous_time();
                      v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Tlm Word of satId,%u\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514, *(v34 + 2));
                      LbsOsaTrace_WriteLog(0x18u, __str, v48, 0, 1);
                    }
                  }

                  else
                  {
                    *(v37 + 2) = v38;
                    *v37 = v35;
                    v39 = *(v34 + 1);
                    v40 = *(v34 + 2);
                    v37[1] = v39 != 0;
                    v37[2] = v40 != 0;
                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v41 = mach_continuous_time();
                      v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SatId,%u,antiSpoof,%u,alert,%u,tlmReserved,%u,tlmMsg,%u\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke", v35, v39 != 0, v40 != 0, v36, v38);
                      LbsOsaTrace_WriteLog(0x18u, __str, v42, 4, 1);
                    }

                    ++v33;
                  }
                }
              }

              ++v32;
              v34 += 8;
            }

            while (v32 < *(a1 + 79));
          }

          else
          {
            v33 = 0;
          }

          LOBYTE(v59[0]) = v33;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v49 = mach_continuous_time();
            v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No of Tow Assist,%d\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke", v33);
            LbsOsaTrace_WriteLog(0x18u, __str, v50, 4, 1);
          }

          GNS_AsstGpsRefTime(*(a1 + 348), 1u, &v57, 0);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v51 = mach_continuous_time();
            v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsRefTime success\n", (*&g_MacClockTicksToMsRelation * v51), "ADP", 73, "setNwAssistanceGpsRefTime_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v52, 4, 1);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v56, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v56, "setNwAssistanceGpsRefTime_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56);
          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v53 = mach_continuous_time();
            v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v62, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v62, "setNwAssistanceGpsRefTime_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v62);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v18 = mach_continuous_time();
            v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sat Count\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v63, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v63, "setNwAssistanceGpsRefTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v63);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WkNum\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v64, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v64, "setNwAssistanceGpsRefTime_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v64);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Tow\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v65, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v65, "setNwAssistanceGpsRefTime_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v65);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNwAssistanceGpsRefTime_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNwAssistanceGpsRefTime_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v55 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29968DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setNwAssistanceRefPosition(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = a2[1];
    *__str = *a2;
    v12 = v3;
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26setNwAssistanceRefPositionERKNS_9Emergency6Cplane17ReferenceLocationENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_84_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[2] = *__str;
    v10[3] = v12;
    dispatch_async(v4, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceRefPosition", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26setNwAssistanceRefPositionERKNS_9Emergency6Cplane17ReferenceLocationENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v90 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) == 9)
    {
      if (*(a1 + 74) < 0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v86, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v86, "setNwAssistanceRefPosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v86);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Alt\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
        }
      }

      else if (*(a1 + 76) < 0x800000u)
      {
        if ((*(a1 + 80) + 0x800000) >> 24)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v84, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v84, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v84);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Long\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v28 = mach_continuous_time();
            v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
          }
        }

        else if (*(a1 + 85) < 0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v83, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v83, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v83);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMajUnc\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
          }
        }

        else if (*(a1 + 86) < 0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v82, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v82, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v82);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMinUnc\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
          }
        }

        else if (*(a1 + 87) < 0x5Au)
        {
          if (*(a1 + 88) < 0)
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v80, "setNwAssistanceRefPosition_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v80);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v54 = mach_continuous_time();
              v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AltUnc\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
              LbsOsaTrace_WriteLog(0x18u, __str, v55, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v56 = mach_continuous_time();
              v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v57, 5, 1);
            }
          }

          else if (*(a1 + 89) - 1 >= 0x64)
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v79, "setNwAssistanceRefPosition_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v58 = mach_continuous_time();
              v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Conf\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
              LbsOsaTrace_WriteLog(0x18u, __str, v59, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v60 = mach_continuous_time();
              v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v61, 5, 1);
            }
          }

          else
          {
            LODWORD(v64) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            DWORD1(v64) = 1;
            v75 = -1;
            v76 = -1;
            v77 = 0x4FFFFFFFFLL;
            if (*(a1 + 73))
            {
              v38 = 2;
            }

            else
            {
              v38 = 1;
            }

            v39 = *(a1 + 74);
            v68 = *(a1 + 74);
            v40 = *(a1 + 76);
            v41 = *(a1 + 80);
            v63 = v38;
            v65 = v38;
            v66 = v40;
            v67 = v41;
            if (*(a1 + 84))
            {
              v42 = 2;
            }

            else
            {
              v42 = 1;
            }

            v72 = v42;
            v43 = *(a1 + 85);
            v69 = *(a1 + 85);
            v44 = *(a1 + 86);
            v70 = *(a1 + 86);
            v45 = 2 * *(a1 + 87);
            v71 = v45;
            v46 = *(a1 + 88);
            v73 = *(a1 + 88);
            v47 = *(a1 + 89);
            v74 = *(a1 + 89);
            *(&v64 + 1) = 0x1000000002;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
            {
              bzero(__str, 0x410uLL);
              v48 = mach_continuous_time();
              v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%u,Long,%d,Hemisphere,%u,Alt,%u,SemiMajUnc,%u,SemiMinUnc,%u,MajAxis,%u,AltUnc,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 68, "setNwAssistanceRefPosition_block_invoke", v40, v41, v63, v39, v43, v44, v45, v46, v47);
              LbsOsaTrace_WriteLog(0x18u, __str, v49, 5, 1);
            }

            GNS_AsstRefPos(*(a1 + 100), 2u, &v64, 0);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v50 = mach_continuous_time();
              v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsRefPos success\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 73, "setNwAssistanceRefPosition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v51, 4, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v78, "setNwAssistanceRefPosition_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v52 = mach_continuous_time();
              v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v53, 5, 1);
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v81, "setNwAssistanceRefPosition_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v81);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MajAxis\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v85, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v85, "setNwAssistanceRefPosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v85);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lat\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v87, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v87, "setNwAssistanceRefPosition_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v87);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ShapeType not Ellipsoid pt with alt & Unc\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v88, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v88, "setNwAssistanceRefPosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v88);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNwAssistanceRefPosition_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNwAssistanceRefPosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v62 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::setNwAssistanceGpsEphemeris(uint64_t a1, const void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, sizeof(__dst));
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setNwAssistanceGpsEphemerisERKNS_9Emergency6Cplane18GpsNavigationModelENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_109;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    memcpy(v12, __dst, sizeof(v12));
    dispatch_async(v5, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__dst, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__dst, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsEphemeris", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __dst, v8, 0, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice27setNwAssistanceGpsEphemerisERKNS_9Emergency6Cplane18GpsNavigationModelENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) < 0x11u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Eph Count,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 4, 1);
      }

      if (!*(a1 + 72))
      {
        goto LABEL_78;
      }

      v67 = 0;
      v16 = 0;
      v17 = a1 + 84;
      do
      {
        v18 = *(v17 + 48);
        if (v18 > 0x3F)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%u\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, *(v17 + 48));
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }
        }

        else
        {
          v70 = 0;
          v69 = 0;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0;
          v68 = v18;
          if (*(v17 + 53) > 3u)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v28 = mach_continuous_time();
              v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId CACode,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
              LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
            }
          }

          else
          {
            LOBYTE(v69) = *(v17 + 53);
            if (*(v17 + 49) >= 0x10u)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v30 = mach_continuous_time();
                v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId URA Eph,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
              }
            }

            else
            {
              BYTE1(v69) = *(v17 + 49);
              if (*(v17 + 50) >= 0x40u)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v32 = mach_continuous_time();
                  v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVHealth,%d\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                  LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
                }
              }

              else
              {
                BYTE2(v69) = *(v17 + 50);
                if (*(v17 + 56) >= 2u)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v34 = mach_continuous_time();
                    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId L2 PCode,%d\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                    LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
                  }
                }

                else
                {
                  HIBYTE(v69) = *(v17 + 56);
                  if (*(v17 + 24) >= 0x400u)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v36 = mach_continuous_time();
                      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SaId IODC,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                      LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
                    }
                  }

                  else
                  {
                    LOWORD(v70) = *(v17 + 24);
                    if (*(v17 + 26) >= 0x93A8u)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v38 = mach_continuous_time();
                        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId TOC,%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                        LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
                      }
                    }

                    else
                    {
                      HIWORD(v70) = *(v17 + 26);
                      if (*(v17 + 72) >= 0x800000u)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v40 = mach_continuous_time();
                          v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatdId 1st Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                          LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
                        }
                      }

                      else
                      {
                        LODWORD(v71) = *(v17 + 72);
                        if (HIBYTE(*(v17 + 76)))
                        {
                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                          {
                            bzero(__str, 0x410uLL);
                            v42 = mach_continuous_time();
                            v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId 2nd Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                            LbsOsaTrace_WriteLog(0x18u, __str, v43, 0, 1);
                          }
                        }

                        else
                        {
                          DWORD1(v71) = *(v17 + 76);
                          if (HIBYTE(*(v17 + 80)))
                          {
                            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                            {
                              bzero(__str, 0x410uLL);
                              v44 = mach_continuous_time();
                              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId 3rd Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                              LbsOsaTrace_WriteLog(0x18u, __str, v45, 0, 1);
                            }
                          }

                          else
                          {
                            DWORD2(v71) = *(v17 + 80);
                            if (*(v17 + 84) >= 0x10000u)
                            {
                              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                              {
                                bzero(__str, 0x410uLL);
                                v46 = mach_continuous_time();
                                v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId 4th Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                LbsOsaTrace_WriteLog(0x18u, __str, v47, 0, 1);
                              }
                            }

                            else
                            {
                              HIDWORD(v71) = *(v17 + 84);
                              if ((*(v17 - 8) + 0x200000) >= 0x400000)
                              {
                                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                {
                                  bzero(__str, 0x410uLL);
                                  v48 = mach_continuous_time();
                                  v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId SatCk Eph,%u\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                  LbsOsaTrace_WriteLog(0x18u, __str, v49, 0, 1);
                                }
                              }

                              else
                              {
                                DWORD1(v72) = *(v17 - 8);
                                if (*(v17 + 38) >= 0x93A8u)
                                {
                                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                  {
                                    bzero(__str, 0x410uLL);
                                    v50 = mach_continuous_time();
                                    v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId RefTime Eph,%u\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                    LbsOsaTrace_WriteLog(0x18u, __str, v51, 0, 1);
                                  }
                                }

                                else
                                {
                                  WORD6(v73) = *(v17 + 38);
                                  if (*(v17 + 64) >= 2u)
                                  {
                                    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                    {
                                      bzero(__str, 0x410uLL);
                                      v52 = mach_continuous_time();
                                      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId EphFitInt,%u\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                      LbsOsaTrace_WriteLog(0x18u, __str, v53, 0, 1);
                                    }
                                  }

                                  else
                                  {
                                    BYTE14(v73) = *(v17 + 64);
                                    if (*(v17 + 68) >= 0x20u)
                                    {
                                      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                      {
                                        bzero(__str, 0x410uLL);
                                        v54 = mach_continuous_time();
                                        v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Age Offset Eph,%u\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                        LbsOsaTrace_WriteLog(0x18u, __str, v55, 0, 1);
                                      }
                                    }

                                    else
                                    {
                                      HIBYTE(v73) = *(v17 + 68);
                                      if (*(v17 + 46) - 57344 >= 0xFFFF4000)
                                      {
                                        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                        {
                                          bzero(__str, 0x410uLL);
                                          v56 = mach_continuous_time();
                                          v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Rate of Incli Angle Eph,%u\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                          LbsOsaTrace_WriteLog(0x18u, __str, v57, 0, 1);
                                        }
                                      }

                                      else
                                      {
                                        WORD6(v74) = *(v17 + 46);
                                        v19 = *(v17 + 20);
                                        if ((v19 + 0x800000) >> 24)
                                        {
                                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                                          {
                                            bzero(__str, 0x410uLL);
                                            v58 = mach_continuous_time();
                                            v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Long of AscNode Orbit Plane at Weekly Epoch Eph,%u\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v68);
                                            LbsOsaTrace_WriteLog(0x18u, __str, v59, 0, 1);
                                          }
                                        }

                                        else
                                        {
                                          v20 = *(v17 + 8);
                                          *(&v73 + 4) = *v17;
                                          LOBYTE(v72) = *(v17 + 60);
                                          BYTE1(v72) = *(v17 + 51);
                                          WORD1(v72) = *(v17 + 28);
                                          v21 = *(v17 - 4);
                                          DWORD2(v72) = *(v17 + 30);
                                          HIDWORD(v72) = v21;
                                          LODWORD(v73) = *(v17 + 34);
                                          LODWORD(v74) = *(v17 + 40);
                                          *(&v74 + 4) = v20;
                                          HIWORD(v74) = *(v17 + 44);
                                          v75 = __PAIR64__(v19, *(v17 + 16));
                                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
                                          {
                                            bzero(__str, 0x410uLL);
                                            v22 = mach_continuous_time();
                                            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: satId,%u,ephemCodeOnL2,%u,ephemUra,%u,ephemSvHealth,%u,ephemL2PFlag,%u,ephemIodc,%u,ephemToc,%u,reserved1,%u,reserved2,%u,reserved3,%u,reserved4,%u,ephemTgd,%u,ephemAf2,%u,ephemAf1,%u,ephemAf0,%d,ephemCrs,%u,ephemDeltaN,%u,ephemM0,%d,ephemCuc,%u,ephemCus,%u,ephemE,%u,ephemAPowerHalf,%u,toe,%u,ephemFitFlag,%u,ephemAODO,%u,ephemCic,%u,ephemCis,%u,ephemOmegaA0,%d,ephemI0,%d,ephemIdot,%u,ephemCrc,%u,ephemW,%d,ephemOmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", v68, v69, BYTE1(v69), BYTE2(v69), HIBYTE(v69), v70, HIWORD(v70), v71, DWORD1(v71), DWORD2(v71), HIDWORD(v71), v72, SBYTE1(v72), SWORD1(v72), DWORD1(v72), SWORD4(v72), SWORD5(v72), HIDWORD(v72), v73, SWORD1(v73), DWORD1(v73), DWORD2(v73), WORD6(v73), BYTE14(v73), HIBYTE(v73), v74, SWORD1(v74), DWORD1(v74), DWORD2(v74), SWORD6(v74), SHIWORD(v74), v75, HIDWORD(v75));
                                            LbsOsaTrace_WriteLog(0x18u, __str, v23, 4, 1);
                                          }

                                          GNS_AsstGpsNavModel(*(a1 + 1620), 1, 1, &v68, 0);
                                          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
                                          {
                                            bzero(__str, 0x410uLL);
                                            v24 = mach_continuous_time();
                                            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsNavModel invoked\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke");
                                            LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
                                          }

                                          ++v67;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v16;
        v17 += 96;
      }

      while (v16 < *(a1 + 72));
      if (v67)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v60 = mach_continuous_time();
          v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Eph Count,%u\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", v67);
          LbsOsaTrace_WriteLog(0x18u, __str, v61, 4, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v77, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v77, "setNwAssistanceGpsEphemeris_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v77);
      }

      else
      {
LABEL_78:
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v76, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v76, "setNwAssistanceGpsEphemeris_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v76);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v62 = mach_continuous_time();
          v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Eph Count 0\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v63, 0, 1);
        }
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v64 = mach_continuous_time();
        v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v65, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v78, "setNwAssistanceGpsEphemeris_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Eph Count\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v79, "setNwAssistanceGpsEphemeris_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v66 = *MEMORY[0x29EDCA608];
  return result;
}