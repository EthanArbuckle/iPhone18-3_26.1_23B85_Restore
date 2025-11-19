void gnssDataMgt_Init(void)
{
  v1 = *MEMORY[0x29EDCA608];
  g_CbList = Gnm_ReceiveData;
  off_2A1939588 = Hal00_06ReadBufNtf;
  qword_2A1939598 = GnssDbgMgr_WriteLog;
  qword_2A1939590 = GncP02_10DataIndFromMECB;
  v0 = *MEMORY[0x29EDCA608];
}

void *gnssDataMgtProduction_Init(void *result)
{
  v2 = *MEMORY[0x29EDCA608];
  g_CbList = result;
  off_2A1939588 = Hal00_06ReadBufNtf;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_04DeviceInitRespHndlr(gnss::GnssAdaptDevice *this, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Init Status,%d\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 65, "Ga07_04DeviceInitRespHndlr", a2);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 1, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](__str, this + 56);
  gnss::GnssAdaptDevice::Ga07_06SetDefaultState(this, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, __str);
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 8;
  }

  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(this, v6, v9, "Ga07_04DeviceInitRespHndlr");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](__str);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2995DBC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga07_06SetDefaultState(gnss::GnssAdaptDevice *this, char a2)
{
  v2 = this;
  v7 = *MEMORY[0x29EDCA608];
  *(this + 88) = a2;
  *(this + 89) = 0;
  *(this + 92) = 0;
  v5 = this + 280;
  v6 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(&v5, 8uLL);
  *(v2 + 1024) = 0;
  *(v2 + 13) = 130861;
  *(v2 + 14) = 0;
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v2 + 184, *(v2 + 24));
  *(v2 + 23) = v2 + 192;
  *(v2 + 24) = 0;
  v3 = *(v2 + 30);
  v2 = (v2 + 240);
  *(v2 - 5) = 0;
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(v2 - 8, v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 - 1) = v2;
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v2 + 16, *(v2 + 3));
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 2) = v2 + 24;
  v4 = *MEMORY[0x29EDCA608];
}

void sub_2995DBD5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga07_07AdaptResponse(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice20Ga07_07AdaptResponseENS_6ResultENSt3__18functionIFvS1_EEEPKc_block_invoke;
  block[3] = &__block_descriptor_tmp_10_0;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
  v11 = a2;
  v10[4] = a4;
  dispatch_async(v6, block);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga07_05HandleGnssHwStatusInd(uint64_t a1, char a2, int a3, char *__src)
{
  v37 = *MEMORY[0x29EDCA608];
  if (__src)
  {
    v35 = 0u;
    memset(v36, 0, 26);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__str = 0u;
    v28 = 0u;
    memcpy_s("Ga07_05HandleGnssHwStatusInd", 110, __str, 0xAAu, __src, 0xAAuLL);
    v7 = *(__src + 130);
    *&v24[69] = *(__src + 114);
    *&v24[77] = v7;
    *v25 = *(__src + 146);
    v8 = *(__src + 66);
    *&v24[37] = *(__src + 50);
    *&v24[45] = v8;
    v9 = *(__src + 98);
    *&v24[53] = *(__src + 82);
    *&v24[61] = v9;
    *&v25[14] = *(__src + 20);
    *&v24[13] = *(__src + 2);
    *&v24[21] = *(__src + 18);
    *&v24[29] = *(__src + 34);
    v10 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    v22 = v34;
    v23 = v35;
    *v24 = v36[0];
    *&v24[5] = *(v36 + 10);
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v15 = *__str;
    v16 = v28;
    block[2] = ___ZN4gnss15GnssAdaptDevice28Ga07_05HandleGnssHwStatusIndE11e_Gnm_ErrorjP17s_Gnm_ReadyStatus_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = a1;
    v26 = a2;
    v17 = v29;
    dispatch_async(v10, block);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx p_InitStatus\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga07_05HandleGnssHwStatusInd", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice28Ga07_05HandleGnssHwStatusIndE11e_Gnm_ErrorjP17s_Gnm_ReadyStatus_block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 70;
    if (*(a1 + 40))
    {
      v4 = 84;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Res,%u,HwStatus,%c,HWInitStatus,%hhu\n", v3, "ADP", 65, "Ga07_05HandleGnssHwStatusInd_block_invoke", *(a1 + 376), v4, *(a1 + 41));
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 1, 1);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_15;
    }

LABEL_16:
    v21 = v2;
    v22 = 0;
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Patch dnld completed\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 65, "Ga07_05HandleGnssHwStatusInd_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 1, 1);
  }

  *(v91 + 14) = *(a1 + 368);
  v8 = *(a1 + 226);
  *__str = *(a1 + 210);
  v83 = v8;
  v9 = *(a1 + 242);
  v10 = *(a1 + 322);
  v11 = *(a1 + 354);
  v90 = *(a1 + 338);
  v91[0] = v11;
  v12 = *(a1 + 258);
  v13 = *(a1 + 274);
  v84 = v9;
  v85 = v12;
  v14 = *(a1 + 290);
  v15 = *(a1 + 306);
  v86 = v13;
  v87 = v14;
  v88 = v15;
  v89 = v10;
  gnss::GnssAdaptDevice::Ga00_10GnssSetHwVersionInfo(v2, __str);
  v45 = 0;
  v43 = 0;
  v46 = 2;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  memset(&v49[17], 0, 13);
  v47 = 0;
  *v49 = 0;
  v48 = 0;
  *&v49[7] = 0;
  v66 = -1;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  memset(v79, 0, 67);
  v79[17] = 0xFFFF;
  v80 = 0;
  v81[2] = 0;
  memset(v81, 0, 15);
  v44 = 2048;
  HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(v2);
  v17 = (*(*HalExtensions + 16))(HalExtensions);
  WORD2(v81[1]) = v17;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsWeekFromBuild,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "Ga07_21SetUserConfig", v17);
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 4, 1);
  }

  if (Gnm_SetUserConfig(&v43))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUserConfig Failed,%u\n", v40);
LABEL_15:
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v25 = gnss::GnssAdaptDevice::getHalExtensions(v2);
  v26 = (*(*v25 + 136))(v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  bzero(&v43, 0x20EuLL);
  LODWORD(v43) = 4096;
  *&v79[3] = v26;
  *&v79[5] = v28;
  *&v79[7] = v30;
  *&v79[9] = v32;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MarginBeidouB1,%f\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 73, "Ga07_22SetPltfrmConfig", v32);
    LbsOsaTrace_WriteLog(0x18u, __str, v34, 4, 1);
  }

  v35 = Gnm_SetPlatformConfig(&v43);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v36 = mach_continuous_time();
    v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SignalThreshold,%f,MarginGpsL1,%f,MarginGalileoE1,%f\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 73, "Ga07_22SetPltfrmConfig", v26, v28, v30);
    LbsOsaTrace_WriteLog(0x18u, __str, v37, 4, 1);
  }

  if (v35)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPltfmCfg XCOR Failed,%u\n", v41);
    goto LABEL_15;
  }

  if ((gnss::GnssAdaptDevice::Ga01_06SetDefaultSideBandConfig(v2) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v2 + 90) == 1)
  {
    if (Gnm_ClearGNSSCache(0x10000))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        goto LABEL_16;
      }

      bzero(__str, 0x410uLL);
      v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClearCache on reset,%u\n", v42);
      goto LABEL_15;
    }

    if (gnssOsa_SemWaitTimeOut(*(v2 + 1032), 0x1F4u))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        goto LABEL_16;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClearCache\n");
      goto LABEL_15;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v38 = mach_continuous_time();
    v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Device Init success\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 73, "Ga07_05HandleGnssHwStatusInd_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
  }

  v21 = v2;
  v22 = 1;
LABEL_17:
  result = gnss::GnssAdaptDevice::Ga07_04DeviceInitRespHndlr(v21, v22);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice20Ga07_07AdaptResponseENS_6ResultENSt3__18functionIFvS1_EEEPKc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = std::function<void ()(gnss::Result)>::operator()(a1 + 32, *(a1 + 72));
  if (*(a1 + 64))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s: Result,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga07_07AdaptResponse_block_invoke", *(a1 + 64), *(a1 + 72));
      result = LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v7 = gnss::GnssAdaptDevice::Ga07_12MapGnmRespToGnssResult(a1, a2);
  v8 = *(a1 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice28Ga07_09AdaptGnmEarlyResponseE11e_Gnm_ErrorNSt3__18functionIFvNS_6ResultEEEEPKc_block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
  v13 = v7;
  v12[4] = a4;
  dispatch_async(v8, block);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_12MapGnmRespToGnssResult(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 0xF)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No match,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 87, "Ga07_12MapGnmRespToGnssResult", 257, a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v5, 2, 1);
    }

    result = 7;
  }

  else
  {
    result = dword_29972B478[a2];
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice28Ga07_09AdaptGnmEarlyResponseE11e_Gnm_ErrorNSt3__18functionIFvNS_6ResultEEEEPKc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = std::function<void ()(gnss::Result)>::operator()(a1 + 32, *(a1 + 72));
  if (*(a1 + 64))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s: Result,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga07_09AdaptGnmEarlyResponse_block_invoke", *(a1 + 64), *(a1 + 72));
      result = LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v7[0] = a2;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3 + 32);
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__emplace_unique_key_args<e_Gnm_Api,std::pair<e_Gnm_Api,gnss::s_StatusCB>>(a1 + 232, v7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2995DCCEC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u,resp,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga07_11HandleGnmStatusResponses", a3, a2);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  v25 = 0;
  v27 = 0;
  v8 = a1 + 240;
  v9 = *(a1 + 240);
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = a1 + 240;
  v11 = *(a1 + 240);
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= a3;
    v14 = v12 < a3;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 != v8 && *(v10 + 32) <= a3)
  {
    v19 = a1 + 240;
    do
    {
      v20 = *(v9 + 32);
      v13 = v20 >= a3;
      v21 = v20 < a3;
      if (v13)
      {
        v19 = v9;
      }

      v9 = *(v9 + 8 * v21);
    }

    while (v9);
    if (v19 == v8 || *(v19 + 32) > a3)
    {
      v19 = a1 + 240;
    }

    std::function<void ()(gnss::Result)>::operator=(v24, v19 + 40);
    std::function<void ()(gnss::Result)>::operator=(v26, v19 + 72);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::erase((a1 + 232), v10);
    if (v25)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, v24);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(a1, a2, v23, "Ga07_11HandleGnmStatusResponses");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
    }

    if (v27)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, v26);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(a1, a2, v22, "Ga07_11HandleGnmStatusResponses");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
    }

    if (a2 && a3 == 18)
    {
      *(a1 + 92) = 0;
    }
  }

  else
  {
LABEL_31:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnmLUT Handle not found\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "Ga07_11HandleGnmStatusResponses");
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
    }
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2995DCFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a28);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x29EDCA608];
  v6 = a2;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(a1 + 256, &v6);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(gnss::GnssAdaptDevice *this, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 33);
  if (v2)
  {
    v4 = (this + 264);
    do
    {
      v5 = *(v2 + 8);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *&v2[8 * v7];
    }

    while (v2);
    if (v4 != (this + 264) && *(v4 + 8) <= a2)
    {
      std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(this + 32, v4);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((v4 + 5));
      operator delete(v4);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (!result)
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNS Key deleted from LUT,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga07_14RemoveRespHndlFromGnsLut", a2);
      v11 = 5;
      goto LABEL_11;
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsLUT Handle\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 87, "Ga07_14RemoveRespHndlFromGnsLut", 770);
    v11 = 2;
LABEL_11:
    result = LbsOsaTrace_WriteLog(0x18u, __str, v10, v11, 1);
  }

LABEL_12:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(uint64_t a1, unsigned int a2, uint64_t a3, const char *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(a1, a2);
  result = std::function<void ()(gnss::Result)>::operator()(a3, v6);
  if (a4)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s: Result,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga07_15AdaptGnsEarlyResponse", a4, v6);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 0xF)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No match,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 87, "Ga07_16MapGnsRespToGnssResult", 770, a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v5, 2, 1);
    }

    result = 7;
  }

  else
  {
    result = dword_29972B4B4[a2];
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga07_17RegisterGnmStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a1;
  v23 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v7 = DeviceInstance;
    if ((a4 - 15) < 2)
    {
      goto LABEL_22;
    }

    if (a4 == 14)
    {
LABEL_15:
      if (!gnssOsa_SemRelease(*(v7 + 1032)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CtrlReqSem\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 87, "Ga07_17RegisterGnmStatusResponse", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
      }

      goto LABEL_18;
    }

    if (a4 == 1)
    {
LABEL_22:
      if (!gnssOsa_SemRelease(*(DeviceInstance + 1032)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CtrlReqSem\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 87, "Ga07_17RegisterGnmStatusResponse", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 2, 1);
      }

      v10 = atomic_load((v7 + 91));
      if (v10)
      {
        atomic_store(0, (v7 + 91));
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Internal resp. ignored\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "Ga07_17RegisterGnmStatusResponse");
          v13 = 4;
LABEL_13:
          LbsOsaTrace_WriteLog(0x18u, __str, v12, v13, 1);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      if (a4 == 14)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v17 = *(v7 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga07_17RegisterGnmStatusResponseE11e_Gnm_Errorbj9e_Gnm_Api_block_invoke;
    block[3] = &__block_descriptor_tmp_22;
    block[4] = v7;
    v20 = v5;
    v21 = a4;
    dispatch_async(v17, block);
    goto LABEL_19;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Device Instance\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga07_17RegisterGnmStatusResponse", 513);
    v13 = 0;
    goto LABEL_13;
  }

LABEL_19:
  v18 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga07_17RegisterGnmStatusResponseE11e_Gnm_Errorbj9e_Gnm_Api_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v3, v4);
}

uint64_t gnss::GnssAdaptDevice::Ga07_23GetBbResetReasonStr@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  a2[23] = 0;
  *a2 = 0;
  if (a1 >= 0xA)
  {
    v2 = "eOTHER";
  }

  else
  {
    v2 = off_29EF51BB8[a1];
  }

  result = MEMORY[0x29C29E950](a2, v2);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2995DD894(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__emplace_unique_key_args<e_Gnm_Api,std::pair<e_Gnm_Api,gnss::s_StatusCB>>(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__construct_node<std::pair<e_Gnm_Api,gnss::s_StatusCB>>();
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
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  v8 = *MEMORY[0x29EDCA608];
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

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2995DDB88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
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
          break;
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
          break;
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

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(uint64_t a1, unsigned int *a2)
{
  v8 = *MEMORY[0x29EDCA608];
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
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void GnssDbgMgr_HandleStackDump(unsigned int a1, unsigned __int8 *a2, int a3, const char *a4)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(__s, 0, 300);
  v28 = 0;
  time(&v28);
  v4 = localtime(&v28);
  if (v4)
  {
    v5 = v4;
    if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeStamp: %d.%02d.%02d %02d:%02d:%02d\n", (*&g_MacClockTicksToMsRelation * v6), "EXP", 69, "GnssDbgMgr_HandleStackDump", v5->tm_year, v5->tm_mon, v5->tm_mday, v5->tm_hour, v5->tm_min, v5->tm_sec);
      LbsOsaTrace_WriteLog(0x17u, __str, v7, 0, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ================================================================\n", (*&g_MacClockTicksToMsRelation * v8), "EXP", 69, "GnssDbgMgr_HandleStackDump");
    LbsOsaTrace_WriteLog(0x17u, __str, v9, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Raw ZX Dump of Exception Message:\n", (*&g_MacClockTicksToMsRelation * v10), "EXP", 69, "GnssDbgMgr_HandleStackDump");
    LbsOsaTrace_WriteLog(0x17u, __str, v11, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ======================================\n", (*&g_MacClockTicksToMsRelation * v12), "EXP", 69, "GnssDbgMgr_HandleStackDump");
    LbsOsaTrace_WriteLog(0x17u, __str, v13, 0, 1);
  }

  if (a1)
  {
    v14 = 0;
    v15 = 0;
    v16 = a1;
    do
    {
      if (v14 && !(v14 % 0x50u))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v17), "EXP", 69, "GnssDbgMgr_HandleStackDump", __s);
          LbsOsaTrace_WriteLog(0x17u, __str, v18, 0, 1);
        }

        memset_s(__s, 0x12CuLL, 0, 0x12CuLL);
        v15 = 0;
      }

      if (v16 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v19), "EXP", 69, "GnssDbgMgr_HandleStackDump", __s);
          LbsOsaTrace_WriteLog(0x17u, __str, v20, 0, 1);
        }
      }

      else
      {
        v15 += snprintf(&__s[v15], 300 - v15, "%02X ", a2[v14]);
      }

      ++v14;
      --v16;
    }

    while (v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x17u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ======================================\n", (*&g_MacClockTicksToMsRelation * v21), "EXP", 69, "GnssDbgMgr_HandleStackDump");
    LbsOsaTrace_WriteLog(0x17u, __str, v22, 0, 1);
  }

  if (a4 && a3)
  {
    gnssOsa_ReportExcp(a4, a2, a1);
  }

  v23 = *MEMORY[0x29EDCA608];
}

uint64_t SV_State_Update_Wrapper(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "SV_State_Update_Wrapper: Entry");
  if (*a1 != 7)
  {
    GPS_State_Update(*(a1 + 192), *(a1 + 248), *(a1 + 48), *(a1 + 56), *(a1 + 32), *(a1 + 72), *(a1 + 88), *(a1 + 96));
    GLON_State_Update(*(a1 + 192), *(a1 + 248), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 96));
  }

  v2 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "SV_State_Update_Wrapper:  Exit");
}

uint64_t asn1PD_SuplNotificationType(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_12;
  }

  v11 = 0;
  if (BitFromBuffer)
  {
    v8 = Asn1Coder::DecodeEnumerationExtension(a1, &v11);
  }

  else
  {
    v8 = Asn1Coder::DecodeInteger(a1, 0, 4u, &v11);
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (v11 > 4u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
    goto LABEL_11;
  }

  v5 = 0;
  *a2 = v11;
LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_EncodingType(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v11 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
LABEL_11:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_12;
  }

  if (BitFromBuffer)
  {
    v8 = Asn1Coder::DecodeEnumerationExtension(a1, &v11);
  }

  else
  {
    v8 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v11);
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (v11 > 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
    goto LABEL_11;
  }

  v5 = 0;
  *a2 = v11;
LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_FormatIndicator(uint64_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v12 = 0;
  if (v5)
  {
    SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
LABEL_7:
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = v5;
    goto LABEL_8;
  }

  if (BitFromBuffer)
  {
    v6 = Asn1Coder::DecodeEnumerationExtension(a1, &v12);
  }

  else
  {
    v6 = Asn1Coder::DecodeInteger(a1, 0, 7u, &v12);
  }

  v5 = v6;
  if (v6)
  {
    goto LABEL_7;
  }

  if (v12 <= 7u)
  {
    v5 = 0;
    *a2 = v12;
    goto LABEL_9;
  }

  v5 = 4;
  *(a1 + 16) = 4;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = 4;
LABEL_8:
  SuplAsn1Logger::TraceError(v9, v7, v8);
LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SLPMode(uint64_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v4 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v8);
  if (v8 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    v5 = v4;
    *a2 = v8;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
LABEL_6:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_MAC(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_KeyIdentity(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x80u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Notification_requestorId(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  Asn1Coder::DecodeInteger(a1, 1, 0x32u, &v7);
  Asn1Coder::GetBitStringFromBuffer(a1, 8 * v7, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_Notification_clientName(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  Asn1Coder::DecodeInteger(a1, 1, 0x32u, &v7);
  Asn1Coder::GetBitStringFromBuffer(a1, 8 * v7, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_Notification(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_16;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 2) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 3) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 4) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  v8 = asn1PD_SuplNotificationType(a1, (a2 + 5));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v8 = asn1PD_EncodingType(a1, (a2 + 6));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 1))
  {
    v8 = asn1PD_Notification_requestorId(a1, (a2 + 8));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 2))
  {
    v8 = asn1PD_FormatIndicator(a1, (a2 + 32));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 3))
  {
    v8 = asn1PD_Notification_clientName(a1, (a2 + 40));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 4))
  {
    v8 = asn1PD_FormatIndicator(a1, (a2 + 64));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v8 = asn1PD_Notification_VER2(a1, a2);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

LABEL_16:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

void ASN1T_SUPLINIT::ASN1T_SUPLINIT(ASN1T_SUPLINIT *this)
{
  v2 = *MEMORY[0x29EDCA608];
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 13) = -1;
  *(this + 40) = -1;
  *(this + 36) = 255;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 80) = -1;
  *(this + 22) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 70) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 12) = 0u;
  *(this + 360) = -1;
  *(this + 460) = 0;
  *(this + 452) = 0;
  *(this + 467) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 61) = 0;
  *(this + 128) = 0;
  *(this + 65) = 0;
  *(this + 67) = 0;
  *(this + 66) = 0;
  *(this + 544) = 0;
  *(this + 138) = 0;
  *(this + 278) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 433) = 0u;
  *(this + 2) = 2304;
  *this = 0;
  *(this + 184) = 0;
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PD_SUPLINIT(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_16;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 2) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 3) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 4) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  v8 = asn1PD_PosMethod(a1, (a2 + 5));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v8 = asn1PD_Notification(a1, a2 + 8);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 1))
  {
    v8 = asn1PD_SLPAddress(a1, a2 + 80);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 2))
  {
    v8 = asn1PD_QoP(a1, a2 + 168);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  v8 = asn1PD_SLPMode(a1, (a2 + 184));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*(a2 + 3))
  {
    v8 = asn1PD_MAC(a1, (a2 + 192));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 4))
  {
    v8 = asn1PD_KeyIdentity(a1, (a2 + 216));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v8 = asn1PD_SUPLINIT_VER2(a1, a2);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

LABEL_16:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

double Register_PatchFunc_2_1(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  *a1 = Get_PatchContent_CpCpuPtc;
  *(a1 + 8) = Get_PatchContent_CpCpuSsf;
  *(a1 + 24) = Get_PatchContent_MECpuNormPtc;
  *(a1 + 32) = Get_PatchContent_MECpuSsf;
  *(a1 + 64) = Get_PatchContent_Config;
  *(a1 + 88) = 0x41400002E70;
  *&result = 0x83AB00024100;
  *(a1 + 100) = 0x83AB00024100;
  *(a1 + 120) = 1092;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *Get_PatchContent_CpCpuPtc(void *result, unsigned int a2, size_t a3)
{
  v4 = result;
  v10 = *MEMORY[0x29EDCA608];
  v5 = a2 / 0x7F2;
  if ((a2 / 0x7F2) > 2)
  {
    switch(v5)
    {
      case 3u:
        memcpy(__dst, &unk_29972CCD6, sizeof(__dst));
        v6 = "Get_PatchContent_CpCpuPtc_3";
        v7 = 62;
        goto LABEL_14;
      case 4u:
        memcpy(__dst, &unk_29972D4C8, sizeof(__dst));
        v6 = "Get_PatchContent_CpCpuPtc_4";
        v7 = 70;
        goto LABEL_14;
      case 5u:
        memcpy(__dst, &unk_29972DCBA, 0x6B6uLL);
        v6 = "Get_PatchContent_CpCpuPtc_5";
        v7 = 78;
        goto LABEL_14;
    }
  }

  else
  {
    switch(v5)
    {
      case 0u:
        memcpy(__dst, &unk_29972B500, sizeof(__dst));
        v6 = "Get_PatchContent_CpCpuPtc_0";
        v7 = 38;
        goto LABEL_14;
      case 1u:
        memcpy(__dst, &unk_29972BCF2, sizeof(__dst));
        v6 = "Get_PatchContent_CpCpuPtc_1";
        v7 = 46;
        goto LABEL_14;
      case 2u:
        memcpy(__dst, "Lplp", sizeof(__dst));
        v6 = "Get_PatchContent_CpCpuPtc_2";
        v7 = 54;
LABEL_14:
        result = memcpy_s(v6, v7, v4, a3, __dst, a3);
        break;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void *Get_PatchContent_CpCpuSsf(void *result, unsigned int a2, size_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x7F1)
  {
    v4 = result;
    memcpy(__dst, &unk_29972E370, sizeof(__dst));
    result = memcpy_s("Get_PatchContent_CpCpuSsf_0", 114, v4, a3, __dst, a3);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *Get_PatchContent_MECpuNormPtc(void *result, unsigned int a2, size_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = result;
  switch(a2 / 0x7F2)
  {
    case 0u:
      memcpy(__dst, &unk_29972E784, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_0";
      v6 = 135;
      goto LABEL_75;
    case 1u:
      memcpy(__dst, &unk_29972EF76, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_1";
      v6 = 143;
      goto LABEL_75;
    case 2u:
      memcpy(__dst, &unk_29972F768, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_2";
      v6 = 151;
      goto LABEL_75;
    case 3u:
      memcpy(__dst, &unk_29972FF5A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_3";
      v6 = 159;
      goto LABEL_75;
    case 4u:
      memcpy(__dst, &unk_29973074C, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_4";
      v6 = 167;
      goto LABEL_75;
    case 5u:
      memcpy(__dst, &unk_299730F3E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_5";
      v6 = 175;
      goto LABEL_75;
    case 6u:
      memcpy(__dst, &unk_299731730, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_6";
      v6 = 183;
      goto LABEL_75;
    case 7u:
      memcpy(__dst, &unk_299731F22, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_7";
      v6 = 191;
      goto LABEL_75;
    case 8u:
      memcpy(__dst, &unk_299732714, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_8";
      v6 = 199;
      goto LABEL_75;
    case 9u:
      memcpy(__dst, &unk_299732F06, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_9";
      v6 = 207;
      goto LABEL_75;
    case 0xAu:
      memcpy(__dst, &unk_2997336F8, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_10";
      v6 = 215;
      goto LABEL_75;
    case 0xBu:
      memcpy(__dst, &unk_299733EEA, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_11";
      v6 = 223;
      goto LABEL_75;
    case 0xCu:
      memcpy(__dst, &unk_2997346DC, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_12";
      v6 = 231;
      goto LABEL_75;
    case 0xDu:
      memcpy(__dst, &unk_299734ECE, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_13";
      v6 = 239;
      goto LABEL_75;
    case 0xEu:
      memcpy(__dst, &unk_2997356C0, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_14";
      v6 = 247;
      goto LABEL_75;
    case 0xFu:
      memcpy(__dst, &unk_299735EB2, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_15";
      v6 = 255;
      goto LABEL_75;
    case 0x10u:
      memcpy(__dst, &unk_2997366A4, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_16";
      v6 = 263;
      goto LABEL_75;
    case 0x11u:
      memcpy(__dst, &unk_299736E96, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_17";
      v6 = 271;
      goto LABEL_75;
    case 0x12u:
      memcpy(__dst, &unk_299737688, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_18";
      v6 = 279;
      goto LABEL_75;
    case 0x13u:
      memcpy(__dst, &unk_299737E7A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_19";
      v6 = 287;
      goto LABEL_75;
    case 0x14u:
      memcpy(__dst, &unk_29973866C, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_20";
      v6 = 295;
      goto LABEL_75;
    case 0x15u:
      memcpy(__dst, &unk_299738E5E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_21";
      v6 = 303;
      goto LABEL_75;
    case 0x16u:
      memcpy(__dst, &unk_299739650, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_22";
      v6 = 311;
      goto LABEL_75;
    case 0x17u:
      memcpy(__dst, &unk_299739E42, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_23";
      v6 = 319;
      goto LABEL_75;
    case 0x18u:
      memcpy(__dst, &unk_29973A634, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_24";
      v6 = 327;
      goto LABEL_75;
    case 0x19u:
      memcpy(__dst, &unk_29973AE26, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_25";
      v6 = 335;
      goto LABEL_75;
    case 0x1Au:
      memcpy(__dst, &unk_29973B618, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_26";
      v6 = 343;
      goto LABEL_75;
    case 0x1Bu:
      memcpy(__dst, &unk_29973BE0A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_27";
      v6 = 351;
      goto LABEL_75;
    case 0x1Cu:
      memcpy(__dst, &unk_29973C5FC, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_28";
      v6 = 359;
      goto LABEL_75;
    case 0x1Du:
      memcpy(__dst, &unk_29973CDEE, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_29";
      v6 = 367;
      goto LABEL_75;
    case 0x1Eu:
      memcpy(__dst, &unk_29973D5E0, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_30";
      v6 = 375;
      goto LABEL_75;
    case 0x1Fu:
      memcpy(__dst, &unk_29973DDD2, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_31";
      v6 = 383;
      goto LABEL_75;
    case 0x20u:
      memcpy(__dst, &unk_29973E5C4, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_32";
      v6 = 391;
      goto LABEL_75;
    case 0x21u:
      memcpy(__dst, &unk_29973EDB6, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_33";
      v6 = 399;
      goto LABEL_75;
    case 0x22u:
      memcpy(__dst, &unk_29973F5A8, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_34";
      v6 = 407;
      goto LABEL_75;
    case 0x23u:
      memcpy(__dst, &unk_29973FD9A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_35";
      v6 = 415;
      goto LABEL_75;
    case 0x24u:
      memcpy(__dst, &unk_29974058C, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_36";
      v6 = 423;
      goto LABEL_75;
    case 0x25u:
      memcpy(__dst, &unk_299740D7E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_37";
      v6 = 431;
      goto LABEL_75;
    case 0x26u:
      memcpy(__dst, &unk_299741570, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_38";
      v6 = 439;
      goto LABEL_75;
    case 0x27u:
      memcpy(__dst, &unk_299741D62, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_39";
      v6 = 447;
      goto LABEL_75;
    case 0x28u:
      memcpy(__dst, &unk_299742554, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_40";
      v6 = 455;
      goto LABEL_75;
    case 0x29u:
      memcpy(__dst, &unk_299742D46, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_41";
      v6 = 463;
      goto LABEL_75;
    case 0x2Au:
      memcpy(__dst, &unk_299743538, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_42";
      v6 = 471;
      goto LABEL_75;
    case 0x2Bu:
      memcpy(__dst, &unk_299743D2A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_43";
      v6 = 479;
      goto LABEL_75;
    case 0x2Cu:
      memcpy(__dst, &unk_29974451C, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_44";
      v6 = 487;
      goto LABEL_75;
    case 0x2Du:
      memcpy(__dst, &unk_299744D0E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_45";
      v6 = 495;
      goto LABEL_75;
    case 0x2Eu:
      memcpy(__dst, &unk_299745500, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_46";
      v6 = 503;
      goto LABEL_75;
    case 0x2Fu:
      memcpy(__dst, &unk_299745CF2, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_47";
      v6 = 511;
      goto LABEL_75;
    case 0x30u:
      memcpy(__dst, &unk_2997464E4, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_48";
      v6 = 519;
      goto LABEL_75;
    case 0x31u:
      memcpy(__dst, &unk_299746CD6, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_49";
      v6 = 527;
      goto LABEL_75;
    case 0x32u:
      memcpy(__dst, &unk_2997474C8, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_50";
      v6 = 535;
      goto LABEL_75;
    case 0x33u:
      memcpy(__dst, &unk_299747CBA, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_51";
      v6 = 543;
      goto LABEL_75;
    case 0x34u:
      memcpy(__dst, &unk_2997484AC, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_52";
      v6 = 551;
      goto LABEL_75;
    case 0x35u:
      memcpy(__dst, &unk_299748C9E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_53";
      v6 = 559;
      goto LABEL_75;
    case 0x36u:
      memcpy(__dst, &unk_299749490, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_54";
      v6 = 567;
      goto LABEL_75;
    case 0x37u:
      memcpy(__dst, &unk_299749C82, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_55";
      v6 = 575;
      goto LABEL_75;
    case 0x38u:
      memcpy(__dst, &unk_29974A474, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_56";
      v6 = 583;
      goto LABEL_75;
    case 0x39u:
      memcpy(__dst, &unk_29974AC66, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_57";
      v6 = 591;
      goto LABEL_75;
    case 0x3Au:
      memcpy(__dst, &unk_29974B458, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_58";
      v6 = 599;
      goto LABEL_75;
    case 0x3Bu:
      memcpy(__dst, &unk_29974BC4A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_59";
      v6 = 607;
      goto LABEL_75;
    case 0x3Cu:
      memcpy(__dst, &unk_29974C43C, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_60";
      v6 = 615;
      goto LABEL_75;
    case 0x3Du:
      memcpy(__dst, &unk_29974CC2E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_61";
      v6 = 623;
      goto LABEL_75;
    case 0x3Eu:
      memcpy(__dst, &unk_29974D420, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_62";
      v6 = 631;
      goto LABEL_75;
    case 0x3Fu:
      memcpy(__dst, &unk_29974DC12, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_63";
      v6 = 639;
      goto LABEL_75;
    case 0x40u:
      memcpy(__dst, &unk_29974E404, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_64";
      v6 = 647;
      goto LABEL_75;
    case 0x41u:
      memcpy(__dst, &unk_29974EBF6, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_65";
      v6 = 655;
      goto LABEL_75;
    case 0x42u:
      memcpy(__dst, &unk_29974F3E8, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_66";
      v6 = 663;
      goto LABEL_75;
    case 0x43u:
      memcpy(__dst, &unk_29974FBDA, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_67";
      v6 = 671;
      goto LABEL_75;
    case 0x44u:
      memcpy(__dst, &unk_2997503CC, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_68";
      v6 = 679;
      goto LABEL_75;
    case 0x45u:
      memcpy(__dst, &unk_299750BBE, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_69";
      v6 = 687;
      goto LABEL_75;
    case 0x46u:
      memcpy(__dst, &unk_2997513B0, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_70";
      v6 = 695;
      goto LABEL_75;
    case 0x47u:
      memcpy(__dst, &unk_299751BA2, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuNormPtc_71";
      v6 = 703;
      goto LABEL_75;
    case 0x48u:
      memcpy(__dst, "331133331", 0x4F0uLL);
      v5 = "Get_PatchContent_MECpuNormPtc_72";
      v6 = 711;
LABEL_75:
      result = memcpy_s(v5, v6, v4, a3, __dst, a3);
      break;
    default:
      break;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void *Get_PatchContent_MECpuSsf(void *result, unsigned int a2, size_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = result;
  switch(a2 / 0x7F2)
  {
    case 0u:
      memcpy(__dst, &unk_299752884, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_0";
      v6 = 948;
      goto LABEL_19;
    case 1u:
      memcpy(__dst, &unk_299753076, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_1";
      v6 = 956;
      goto LABEL_19;
    case 2u:
      memcpy(__dst, &unk_299753868, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_2";
      v6 = 964;
      goto LABEL_19;
    case 3u:
      memcpy(__dst, &unk_29975405A, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_3";
      v6 = 972;
      goto LABEL_19;
    case 4u:
      memcpy(__dst, &unk_29975484C, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_4";
      v6 = 980;
      goto LABEL_19;
    case 5u:
      memcpy(__dst, &unk_29975503E, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_5";
      v6 = 988;
      goto LABEL_19;
    case 6u:
      memcpy(__dst, &unk_299755830, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_6";
      v6 = 996;
      goto LABEL_19;
    case 7u:
      memcpy(__dst, &unk_299756022, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_7";
      v6 = 1004;
      goto LABEL_19;
    case 8u:
      memcpy(__dst, &unk_299756814, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_8";
      v6 = 1012;
      goto LABEL_19;
    case 9u:
      memcpy(__dst, &unk_299757006, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_9";
      v6 = 1020;
      goto LABEL_19;
    case 0xAu:
      memcpy(__dst, "ved\b", sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_10";
      v6 = 1028;
      goto LABEL_19;
    case 0xBu:
      memcpy(__dst, &unk_299757FEA, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_11";
      v6 = 1036;
      goto LABEL_19;
    case 0xCu:
      memcpy(__dst, &unk_2997587DC, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_12";
      v6 = 1044;
      goto LABEL_19;
    case 0xDu:
      memcpy(__dst, &unk_299758FCE, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_13";
      v6 = 1052;
      goto LABEL_19;
    case 0xEu:
      memcpy(__dst, &unk_2997597C0, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_14";
      v6 = 1060;
      goto LABEL_19;
    case 0xFu:
      memcpy(__dst, &unk_299759FB2, sizeof(__dst));
      v5 = "Get_PatchContent_MECpuSsf_15";
      v6 = 1068;
      goto LABEL_19;
    case 0x10u:
      memcpy(__dst, &unk_29975A7A4, 0x48BuLL);
      v5 = "Get_PatchContent_MECpuSsf_16";
      v6 = 1076;
LABEL_19:
      result = memcpy_s(v5, v6, v4, a3, __dst, a3);
      break;
    default:
      break;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void *Get_PatchContent_Config(void *result, unsigned int a2, size_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x7F1)
  {
    v4 = result;
    memcpy(__dst, &unk_29975AC2F, sizeof(__dst));
    result = memcpy_s("Get_PatchContent_Config_0", 1145, v4, a3, __dst, a3);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *NK_SV_Meas_Check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v95[3] = *MEMORY[0x29EDCA608];
  v86 = 0.0;
  v74 = a3 + 8536;
  v75 = a3 + 3056;
  v73 = a3 + 8632;
  v7 = 48;
  v8 = a3;
  v9 = a3;
  do
  {
    if (v9[2960] == 1)
    {
      v10 = v8[764];
      if ((v10 - 1) >= 0x1D)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      }

      ++v5;
    }

LABEL_5:
    if (v9[8536] == 1)
    {
      v11 = v8[2158];
      if ((v11 - 1) < 0x1D)
      {
        goto LABEL_10;
      }

      if (v11)
      {
LABEL_16:
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_10:
        ++v6;
        goto LABEL_11;
      }
    }

    if (v9[14112] != 1)
    {
      goto LABEL_11;
    }

    v12 = v8[3552];
    if ((v12 - 1) < 0x1D)
    {
      goto LABEL_10;
    }

    if (v12)
    {
      goto LABEL_16;
    }

LABEL_11:
    ++v9;
    ++v8;
    --v7;
  }

  while (v7);
  v90[0] = v5;
  v90[1] = v6;
  v13 = (a2 + 1456);
  v14 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v16 = *v13--;
    v14 = v14 + v16 * v16;
  }

  result = 0;
  v78 = 0;
  v80 = a3 + 20032;
  v81 = a1 + 76;
  v18 = a2 + 1400;
  v76 = a1 + 604;
  v77 = a2 + 6696;
  v72 = sqrt(v14) >> 3;
  v85 = a2;
  do
  {
    do
    {
      if (result == 2)
      {
        v19 = 1;
        v20 = a3 + 13960;
      }

      else
      {
        v89[result] = 0;
        *(&v87 + result) = -1;
        v21 = &v94[3 * result];
        v19 = result == 1;
        v22 = 8384;
        if (result != 1)
        {
          v22 = 2808;
        }

        v20 = a3 + v22;
        *v21 = 0.0;
        v21[1] = 0.0;
      }

      v23 = 0;
      v24 = v20 + 152;
      result = (result + 1);
      v83 = v20 + 200;
      v82 = v20 + 2024;
      v25 = v20 + 4808;
      v26 = v20 + 4040;
      v27 = v20 + 5192;
      v28 = v20 + 248;
      v79 = &v94[3 * v19];
      do
      {
        if (*(v24 + v23) == 1)
        {
          v29 = result;
          NK_Obs_Equ_SV(result, *(v83 + v23), *(v81 + 4 * v23), v80 + 56 * v23, v93, *(a3 + 656));
          v30 = 0;
          v31 = *(v82 + 8 * v23);
          v32 = 0.0;
          do
          {
            v32 = v32 + v93[v30] * *(v18 + v30 * 8);
            ++v30;
          }

          while (v30 != 11);
          v33 = v31 - v32;
          *(v25 + 8 * v23) = v31 - v32;
          v34 = *(v26 + 8 * v23);
          invtst((v85 + 872), v93, 0xBu, v34, v31 - v32, 16.0, &v86);
          v35 = v34 + v34 - fabs(v86);
          v86 = v35;
          v36 = *(v26 + 8 * v23) * 0.1;
          if (v35 >= v36)
          {
            v36 = v35;
            result = v29;
          }

          else
          {
            result = v29;
            if (v35 < 0.0)
            {
              v86 = 0.0;
              v35 = 0.0;
            }
          }

          *(v27 + 8 * v23) = v35;
          v37 = *(v28 + 4 * v23);
          if ((v37 - 1) >= 0x1D)
          {
            if (v37)
            {
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
              result = v29;
            }

            else
            {
              if (*(a3 + 49 + v23) == 1)
              {
                ++v89[v19];
              }

              v38 = v33 * v33 / v36;
              v39 = *v79;
              if (v38 > *v79 || *(&v87 + v19) == 255)
              {
                *v79 = v38;
                v79[1] = v39;
                v79[2] = v38;
                *(&v87 + v19) = v23;
              }

              else if (v38 > v79[1])
              {
                v79[1] = v38;
              }

              if (v38 > 16.0)
              {
                v78 += *(v85 + 233) ^ 1;
              }
            }
          }
        }

        ++v23;
      }

      while (v23 != 48);
    }

    while (result != 3);
    if (v78)
    {
      if (v94[0] > v95[0])
      {
        v40 = 0;
        v41 = 0;
        goto LABEL_67;
      }

      if (*(v74 + v88) == 1)
      {
        v52 = *(v73 + 4 * v88);
        if ((v52 - 1) >= 0x1D)
        {
          if (!v52)
          {
            v51 = 0;
            v49 = v94;
            v40 = 1;
            v41 = 1;
            v50 = a3 + 8384;
            goto LABEL_71;
          }

          result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        }
      }

      v51 = 0;
      v49 = v94;
      v40 = 2;
      v41 = 1;
      v50 = a3 + 13960;
      goto LABEL_71;
    }

    if (*(v85 + 233) != 1)
    {
      break;
    }

    v42 = v94[0];
    v43 = v89[0];
    v44 = v94[0] > 100.0 && v89[0] >= 6u;
    v45 = v75;
    if (!v44 || *(v76 + v87) > 0x1Fu || v72 > 0x270)
    {
LABEL_55:
      if (v42 <= 2500.0 || v43 < 5)
      {
        break;
      }

      v47 = *(v85 + 234);
      if (*(v85 + 234))
      {
        if (v42 <= 1000000.0 || v47 != 1)
        {
          *(v85 + 234) = v47 - 1;
          break;
        }
      }

      v40 = 0;
      v41 = 0;
      *(v85 + 234) = 4;
LABEL_67:
      v49 = v95;
      v50 = a3 + 2808;
      v51 = 1;
LABEL_71:
      if (*(v85 + 233))
      {
        break;
      }

      if (v90[v41] <= 2u)
      {
        v53 = v89[v41];
        if (v53 < 6)
        {
          if (v53 != 5)
          {
            goto LABEL_106;
          }

          v55 = v94[3 * v41];
        }

        else
        {
          v54 = &v94[3 * v41];
          v55 = *v54;
          if (*v54 > v54[1] * 1.1)
          {
LABEL_80:
            v56 = 0;
            goto LABEL_81;
          }
        }

        if (v55 > 225.0 && v55 > v94[3 * v41 + 1] * 9.0)
        {
          goto LABEL_80;
        }
      }

LABEL_106:
      v65 = &v94[3 * v41];
      v66 = *v65;
      if (*v65 <= 144.0 || v66 <= v65[1] + v65[1])
      {
        v67 = 0.0277777778;
        if (!*(a3 + 968))
        {
          v67 = 0.25;
        }

        v68 = v66 * v67;
        v69 = a3 + 20016;
        if (v68 > *(a3 + 20016 + 8 * v41))
        {
          *(v69 + 8 * v41) = v68;
        }

        if (*v49 > 16.0)
        {
          v70 = v67 * *v49;
          if (v70 > *(v69 + 8 * v51))
          {
            *(v69 + 8 * v51) = v70;
          }
        }
      }

      break;
    }

    v62 = 0;
    v63 = 0;
    while (1)
    {
      if (*(v45 + v62 - 96) != 1)
      {
        goto LABEL_96;
      }

      v64 = *(v45 + 4 * v62);
      if ((v64 - 1) < 0x1D)
      {
        goto LABEL_96;
      }

      if (!v64)
      {
        break;
      }

      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      v45 = v75;
LABEL_96:
      if (++v62 == 48)
      {
        goto LABEL_55;
      }
    }

    if (*(v76 + v62) < 0x21u)
    {
      goto LABEL_96;
    }

    if (++v63 <= 4)
    {
      goto LABEL_96;
    }

    v41 = 0;
    v40 = 0;
    v56 = 1;
    v50 = a3 + 2808;
LABEL_81:
    v57 = *(&v87 + v41);
    NK_Obs_Equ_SV((v40 + 1), *(v50 + v57 + 200), *(v81 + 4 * v57), v80 + 56 * v57, v93, *(a3 + 656));
    v58 = v50 + 8 * v57;
    v93[11] = *(v58 + 2024);
    umeas(v85 + 872, 0xBu, -*(v58 + 4040), v93, v92, v91, &v86, 1.0e20);
    ++v90[v41];
    v59 = v50 + 248;
    if (v56)
    {
      *(v59 + 4 * v57) = 25;
      --*(v50 + 3);
      ++*(v50 + 4);
      goto LABEL_88;
    }

    *(v59 + 4 * v57) = 26;
    --*(v50 + 3);
    ++*(v50 + 4);
    v60 = &v94[3 * v41];
    if (*v60 > v60[1] * 16.0 && v60[2] > 16.0 || (v61 = *(&v87 + v41), v41 == 1) && fabs(*(v50 + 8 * v61 + 4808)) > 7.0 || *(a1 + 700 + v61) - *(v76 + v61) >= -3)
    {
LABEL_88:
      *(v77 + *(&v87 + v41)) = 0;
    }

    result = 0;
    v78 = 0;
  }

  while (((*(v85 + 233) == 0) & ~v56) != 0);
  v71 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_QZSS_Kep_Almanac(uint64_t result, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  *(a2 + 16) = *(result + 10);
  v2 = *(result + 12);
  v3 = BYTE2(v2) | 0xC0;
  v4 = vcvtd_n_f64_u32(v2, 0x15uLL);
  *(a2 + 12) = BYTE2(v2) | 0xC0;
  *(a2 + 40) = v4;
  *(a2 + 20) = *(result + 18) << 12;
  v5 = *(result + 16);
  v6 = vshr_n_s32(vshl_u32(v5, 0x800000010), 0x10uLL);
  v7.i64[0] = v6.i32[0];
  v7.i64[1] = v6.i32[1];
  v8 = vmulq_f64(vcvtq_f64_s64(v7), xmmword_29975B0B0);
  *(a2 + 48) = v8;
  *(a2 + 13) = v5.i8[4] & 0x1F;
  v9 = *(result + 24) & 0xFFFFFF;
  v10 = vshl_n_s32(*(result + 28), 8uLL);
  v7.i64[0] = v10.i32[0];
  v7.i64[1] = v10.i32[1];
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v7), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v11 = *(result + 40);
  *(a2 + 64) = (*(result + 36) << 8) * 0.00000000146291808;
  *(a2 + 72) = vcvtd_n_f64_u32(v9, 0xBuLL);
  *(a2 + 24) = vcvtd_n_f64_s32(((v11 >> 8) & 0xFF00 | (32 * ((v11 >> 2) & 7))), 0x19uLL);
  *(a2 + 32) = (v11 & 0xFFFFFFE0) * 1.13686838e-13;
  if (v3 <= 0xC6)
  {
    *(a2 + 40) = v4 + 0.06;
    *(a2 + 48) = v8.f64[0] + 0.785398163;
  }

  *(a2 + 8) = 5;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IuiMsSuplPosReq(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 && *a2 && *(a2 + 8))
  {
    SuplRrlpExecutePosReq(a2);
    v3 = *(a2 + 8);
    if (v3)
    {
      free(v3);
    }

    v4 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 69, "IuiMsSuplPosReq", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
    }

    v4 = -5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IuiMsSuplPosTrigger(uint64_t a1, unsigned int *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 && (v3 = *a2, v3) && (v4 = *(a2 + 1)) != 0)
  {
    lpp_t_supl_pos_trigger(a2[5], *(a2 + 24), v3, v4);
    v5 = *(a2 + 1);
    if (v5)
    {
      free(v5);
    }

    v6 = 0;
    *(a2 + 1) = 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "IuiMsSuplPosTrigger", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    }

    v6 = -5;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t IuiMsSuplIndicateSessionEnd(unsigned int a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  session_info = gps_find_session_info(a2);
  if (!session_info)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", v12);
LABEL_13:
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    }

LABEL_14:
    v9 = -1;
    goto LABEL_15;
  }

  v4 = session_info;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 65, "IuiMsSuplIndicateSessionEnd", a2, *(v4 + 8));
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 1, 1);
  }

  v7 = *(v4 + 8);
  if (v7 == 2)
  {
    lpp_t_supl_session_end_ind(a2);
    goto LABEL_10;
  }

  if (v7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POS Protocol\n");
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  SuplRrlpSessionEnd();
LABEL_10:
  v9 = 0;
LABEL_15:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t Hal29_HandleGcdStatusRsp(unsigned __int8 *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GCD Status rcvd\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "Hal29_HandleGcdStatusRsp");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 5, 1);
  }

  g_IResponseStatus = a1[8];
  result = gnssOsa_SemRelease(g_HandleAckSem);
  if ((result & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = __error();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v5, "HAL", 69, "Hal29_HandleGcdStatusRsp", 1542, *v6);
      result = LbsOsaTrace_WriteLog(0xDu, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal29_HandleSoftResetMsg(unsigned __int8 *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%d\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal29_HandleSoftResetMsg", a1[8]);
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  _MergedGlobals_5 = a1[8];
  if (_MergedGlobals_5 != 3)
  {
    if (_MergedGlobals_5 == 2)
    {
      if (byte_2A1971FA9 == 1)
      {
        if (!gnssOsa_SemRelease(g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v7 = __error();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v6, "HAL", 69, "Hal29_HandleSoftResetMsg", 1542, *v7);
          LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
        }
      }

      else if (g_HalCallbacks)
      {
        g_HalCallbacks(11);
      }

      v14 = gnssOsa_Calloc("Hal29_HandleSoftResetMsg", 82, 1, 0x10uLL);
      if (v14)
      {
        v14[12] = 77;
        AgpsSendFsmMsg(129, 129, 8457984, v14);
      }

      goto LABEL_27;
    }

    if (_MergedGlobals_5 == 1)
    {
      if ((byte_2A1971FA9 & 1) == 0)
      {
        v4 = g_HalCallbacks;
        if (g_HalCallbacks)
        {
          v5 = 10;
LABEL_26:
          v4(v5);
          goto LABEL_27;
        }
      }

      goto LABEL_27;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx resp,%u\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 87, "Hal29_HandleSoftResetMsg", 515, a1[8]);
    v12 = 2;
LABEL_19:
    LbsOsaTrace_WriteLog(0xDu, __str, v11, v12, 1);
    goto LABEL_27;
  }

  if (byte_2A1971FA9 == 1)
  {
    if (gnssOsa_SemRelease(g_HandleAckSem) || !LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = __error();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v9, "HAL", 69, "Hal29_HandleSoftResetMsg", 1542, *v10);
    v12 = 0;
    goto LABEL_19;
  }

  v4 = g_HalCallbacks;
  if (g_HalCallbacks)
  {
    v5 = 12;
    goto LABEL_26;
  }

LABEL_27:
  v15 = *MEMORY[0x29EDCA608];
}

void Hal29_HandleCpAgentResponse(unsigned __int8 *a1, unsigned int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = 513;
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = "%10u %s%c %s: #%04hx data\n";
      goto LABEL_7;
    }

LABEL_9:
    v4 = *MEMORY[0x29EDCA608];
    return;
  }

  if (a2 <= 7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = 515;
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = "%10u %s%c %s: #%04hx len\n";
LABEL_7:
      v3 = snprintf(__str, 0x40FuLL, v2, v11, "HAL", 69, "Hal29_HandleCpAgentResponse", v12, v13);
LABEL_8:
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (a1[4] != 67)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_9;
    }

    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = a1[3];
    v16 = a1[4];
    v14 = a1[2];
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDX,%u\n", v8, "HAL");
    goto LABEL_8;
  }

  v6 = a1[3];
  if (v6 == 84)
  {
    v9 = *MEMORY[0x29EDCA608];

    Hal29_HandleSoftResetMsg(a1);
  }

  else
  {
    if (v6 != 82)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        goto LABEL_9;
      }

      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v12 = 515;
      v13 = a1[3];
      v11 = (*&g_MacClockTicksToMsRelation * v10);
      v2 = "%10u %s%c %s: #%04hx MsgId,%u\n";
      goto LABEL_7;
    }

    v7 = *MEMORY[0x29EDCA608];

    Hal29_HandleGcdStatusRsp(a1);
  }
}

uint64_t Hal29_GetGcdStatus(void)
{
  v16 = *MEMORY[0x29EDCA608];
  *v14 = 0xFF0000437349787ALL;
  v15 = 10;
  g_HalState = 16;
  if (Hal22_ZxSendToChip(v14, 9uLL) <= 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GCD status\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal29_GetGcdStatus", 1282);
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
    }

    result = 4294967289;
  }

  else
  {
    v0 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
    if (v0 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal29_GetGcdStatus", 1543);
        LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
      }

      result = 4294967287;
    }

    else if (v0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal29_GetGcdStatus", 1541);
        LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
      }

      result = 4294967285;
    }

    else if (g_IResponseStatus == 5)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,InActive\n");
        goto LABEL_19;
      }
    }

    else if (g_IResponseStatus == 6)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,Active\n");
LABEL_19:
        v9 = v2;
        v10 = 4;
LABEL_22:
        LbsOsaTrace_WriteLog(0xDu, __str, v9, v10, 1);
        result = 0;
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,Unk,%u\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 87, "Hal29_GetGcdStatus", g_IResponseStatus);
        v10 = 2;
        goto LABEL_22;
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal29_ReqGnssSoftReset(void)
{
  v20 = *MEMORY[0x29EDCA608];
  *v18 = 0x437449787ALL;
  v19 = 10;
  byte_2A1971FA9 = 1;
  if (Hal22_ZxSendToChip(v18, 9uLL) > 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: waiting for response\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal29_ReqGnssSoftReset");
      LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
    }

    v2 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x258u);
    if (v2 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v10 = 1543;
LABEL_17:
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v9, "HAL", 69, "Hal29_ReqGnssSoftReset", v10);
        LbsOsaTrace_WriteLog(0xDu, __str, v11, 0, 1);
      }
    }

    else
    {
      if (!v2)
      {
        if (_MergedGlobals_5 == 3)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal29_ReqGnssSoftReset", 1290);
            LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
          }

          result = 4294967286;
        }

        else if (_MergedGlobals_5 == 2)
        {
          IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
          result = 0;
          if (IsLoggingAllowed)
          {
            bzero(__str, 0x410uLL);
            v5 = mach_continuous_time();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal29_ReqGnssSoftReset", 1289);
            LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
            result = 0;
          }
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v15 = mach_continuous_time();
            v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Resp,%hhu\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal29_ReqGnssSoftReset", 1290, _MergedGlobals_5);
            LbsOsaTrace_WriteLog(0xDu, __str, v16, 0, 1);
          }

          result = 4294967288;
        }

        goto LABEL_19;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v10 = 1541;
        goto LABEL_17;
      }
    }

    result = 4294967287;
LABEL_19:
    byte_2A1971FA9 = 0;
    goto LABEL_20;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal29_ReqGnssSoftReset", 1282);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
  }

  result = 4294967289;
LABEL_20:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Calc_SemiMaj(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = sin(*(a1 + 32) + 1.09955743);
  v5 = v4 * v4 * -2.5 + 2.0;
  v6 = 1.0 - v3 * v3;
  v7 = cos(v2);
  v8 = (v3 * v7 + 1.0) * ((v3 * v7 + 1.0) * (v3 * v7 + 1.0)) / v6 + v5 * (v6 * sqrt(v6) / ((v3 * v7 + 1.0) * (v3 * v7 + 1.0)));
  v9 = *(a1 + 40) + 43200.0;
  v10 = 26000.0;
  do
  {
    v11 = v10;
    v10 = (v9 * 0.159154943 * (v9 * 0.159154943) * 398600.44 / (v10 * v10) + v10 * 2.0) * 0.333333333;
  }

  while (vabdd_f64(v10, v11) > 0.000001);
  v12 = v8 * 1.5 * -0.00108262575;
  do
  {
    v13 = v9 / (v12 * (6378.136 / (v6 * v10) * (6378.136 / (v6 * v10))) + 1.0) * 0.159154943;
    v14 = v13 * v13 * 398600.44;
    v15 = 26000.0;
    do
    {
      v16 = v15;
      v15 = (v14 / (v15 * v15) + v15 * 2.0) * 0.333333333;
    }

    while (vabdd_f64(v15, v16) > 0.000001);
    v17 = vabdd_f64(v15, v10) <= 0.001;
    v10 = v15;
  }

  while (!v17);
  v18 = *MEMORY[0x29EDCA608];
}

uint64_t NK_Set_PR_Meas_Var(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, int a13, unsigned int a14, int a15, uint64_t a16)
{
  v48 = *MEMORY[0x29EDCA608];
  v46 = 1.0;
  if (a15 >= 1)
  {
    v19 = result;
    v20 = 0;
    v47 = 0;
    v22 = (1.0 - a8 / 20.0) * (1.0 - a8 / 20.0);
    v23 = (10.0 - a8) * 0.1275;
    v24 = v23 + v22 <= 1.0;
    if (v23 + v22 > 1.0)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = v23 + v22;
    }

    v40 = v25;
    if (v23 + v22 < 0.0)
    {
      v24 = 0;
    }

    if (a8 > 6.0)
    {
      v26 = v23 + v22;
    }

    else
    {
      v26 = 1.0;
    }

    if (a8 <= 10.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = (1.0 - a8 / 20.0) * (1.0 - a8 / 20.0);
    }

    v28 = a8 > 20.0 || a8 > 10.0 || a8 <= 6.0 || v24;
    v29 = (a16 + 8);
    if (a8 <= 20.0)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0.0;
    }

    v41 = v28;
    do
    {
      if (*(a2 + v20) == 1)
      {
        result = NK_Get_PR_Meas_Var(*(v19 + 4 * v20), 0, *(a3 + v20), *(a4 + v20), *(a5 + v20), *(a6 + 2 * v20), *(a7 + 2 * v20), 0, *(a10 + 2 * v20), *(a11 + v20), *a12, a14, &v46, &v47);
        v31 = v47;
        v32 = (result - v47);
        *(v29 - 1) = v47;
        *v29 = v32;
        v33 = result;
        v29[1] = result;
        if (a14 >= 6)
        {
          if (a14 - 6 > 1)
          {
            result = EvCrt_Illegal_Default("NK_Set_PR_Meas_Var", 0x150u);
          }

          else if (*a12 < 45)
          {
            v34 = v30;
            if (!v41)
            {
              result = EvLog_v("NK_Set_PR_Meas_Var: Out of bound Elev_Deweighting_SF: %g Inverse_Parabola_Component: %g Linear_Component: %g GSpeed: %g Elev: %d", v23 + v22, (1.0 - a8 / 20.0) * (1.0 - a8 / 20.0), (10.0 - a8) * 0.1275, a8, *a12);
              v34 = v40;
              if (v40 < 0.0)
              {
                v34 = 0.0;
              }
            }

            if (v46 > 1.0)
            {
              v33 = (v33 / v46);
              v31 = (v31 / v46);
            }

            v35 = v34 * (v46 + -1.0) + 1.0;
            v47 = (v35 * v31);
            v36 = v47;
            v37 = ((v35 * v33) - v47);
            *(v29 - 1) = v47;
            *v29 = v37;
            if (dword_2A193C238 == 1 && *(a3 + v20) <= 0x15u)
            {
              v38 = v35 * v35;
              *(v29 - 1) = v38 * v36;
              *v29 = v38 * v37;
            }
          }
        }
      }

      ++v20;
      v29 += 3;
      a12 += 10;
    }

    while (a15 != v20);
  }

  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Get_PR_Meas_Var(char a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10, unsigned int a11, unsigned int a12, double *a13, _DWORD *a14)
{
  v41 = *MEMORY[0x29EDCA608];
  v19 = a3 - a5;
  NK_Interp_Var_Table(PR_Meas_Var_Table, 16, a3 - a5);
  v21 = v20;
  if (a9 >= 6u)
  {
    NK_Interp_Var_Table(DO_Meas_Var_Table, 16, v19);
    v21 += (a9 * 0.01 * 4.0 * v22 * 0.01);
  }

  *a14 = v21;
  NK_Interp_Var_Table(PR_Lock_Time_Scale_Table, 4, a3);
  v24 = v23 * 0.001;
  v25 = (v24 * a7);
  v26 = v24 * a6;
  v27 = v26;
  v28 = v21;
  if (v25 <= 0x18F)
  {
    if (v25 < 0x1F)
    {
      v29 = &PR_FreqCode_Lock_Table;
      v30 = 4;
      v25 = v26;
    }

    else
    {
      v29 = &PR_Freq_Lock_Table;
      v30 = 3;
    }

    NK_Interp_Var_Table(v29, v30, v25);
    v28 = v21 + v31;
  }

  NK_Interp_Var_Table(PR_Code_Lock_Table, 11, v27);
  v33 = (9 * (a10 - a3) - 2) * (a10 - a3 - 3);
  if (a10 - a3 <= 3)
  {
    v33 = 0;
  }

  if (a4 - a3 <= -6)
  {
    v34 = 0;
  }

  else
  {
    v34 = 5 * (a4 - a3 + 6) * (a4 - a3 + 6) * (a4 - a3 + 6);
  }

  v35 = v33 + v34 + v28 + v32;
  if (v35 >= 0xF424)
  {
    v36 = 62500;
  }

  else
  {
    v36 = v35;
  }

  v37 = 1.0;
  if (a12 < 6)
  {
    goto LABEL_17;
  }

  if (a12 - 6 >= 2)
  {
    EvCrt_Illegal_Default("NK_Get_PR_Meas_Var", 0x269u);
    goto LABEL_17;
  }

  *a13 = 1.0;
  if (a11 <= 0x2C)
  {
    v40 = 51 * (45 - a11) + 256;
    v36 = (v36 * v40) >> 8;
    *a14 = (v21 * v40) >> 8;
    v37 = vcvtd_n_f64_u32(v40, 8uLL);
LABEL_17:
    *a13 = v37;
  }

  if (a1 == 2)
  {
    v36 = (4 * v36 + 9);
    *a14 = (4 * *a14) | 1;
  }

  v38 = *MEMORY[0x29EDCA608];
  return v36;
}

__int16 *NK_Interp_Var_Table(__int16 *result, int a2, int a3)
{
  if (result[1] >= a3)
  {
    v5 = *result;
  }

  else
  {
    v3 = &result[2 * (a2 - 1)];
    if (v3[1] <= a3)
    {
      v6 = *v3;
    }

    else
    {
      if (a2 < 3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 1;
        do
        {
          if (result[2 * v4 + 1] >= a3)
          {
            break;
          }

          ++v4;
        }

        while (a2 - 1 > v4);
      }

      v7 = &result[2 * v4];
      v8 = v7[1];
      v9 = *v7;
      v10 = &result[2 * (v4 - 1)];
      v11 = v10[1];
      v12 = *v10;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

__int16 *NK_Set_DO_Meas_Var(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13)
{
  v27[1] = *MEMORY[0x29EDCA608];
  if (a12 >= 1)
  {
    v16 = result;
    v17 = 0;
    v18 = (a13 + 16);
    do
    {
      if (*(a2 + v17) == 1)
      {
        v27[0] = 0.0;
        v19 = *(a11 + v17);
        result = NK_Get_DO_Meas_Var(*&v16[2 * v17], *(a3 + v17), *(a4 + v17), *(a5 + v17), *(a6 + 2 * v17), *(a7 + 2 * v17), *(a8 + 4 * v17), *(a9 + 2 * v17), *(a10 + 2 * v17), v27);
        v21 = v20 - v27[0];
        *(v18 - 2) = v27[0];
        *(v18 - 1) = v21;
        *v18 = v20;
      }

      ++v17;
      v18 += 3;
    }

    while (a12 != v17);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

__int16 *NK_Get_DO_Meas_Var(int a1, int a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7, uint64_t a8, __int16 a9, double *a10)
{
  v21 = *MEMORY[0x29EDCA608];
  NK_Interp_Var_Table(DO_Meas_Var_Table, 16, a2 - a4);
  v16 = v15 * 0.01;
  *a10 = v15 * 0.01;
  NK_Interp_Var_Table(DO_Lock_Time_Scale_Table, 4, a2);
  result = NK_Interp_Var_Table(DO_Freq_Lock_Table, 7, (a5 / v17));
  if (a7 >= 15)
  {
    result = NK_Interp_Var_Table(DO_Carr_Lock_Table, 6, a6);
  }

  if (a1 == 2)
  {
    v19 = 4.0;
    if ((a9 & 0x200) == 0)
    {
      goto LABEL_8;
    }
  }

  if (a1 == 4 && (*&a1 & 0xFE0000uLL) >> 17 <= 2)
  {
    v19 = 81.0;
LABEL_8:
    *a10 = v16 * v19;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Set_DR_Meas_Var(_DWORD *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int16 *a5, int a6, uint64_t a7)
{
  v18[1] = *MEMORY[0x29EDCA608];
  if (a6 >= 1)
  {
    v12 = a6;
    v13 = (a7 + 16);
    do
    {
      v14 = *a2++;
      if (v14 == 1)
      {
        v18[0] = 0.0;
        DR_Meas_Var = NK_Get_DR_Meas_Var(*a1, *a3, *a4, *a5, v18);
        v16 = DR_Meas_Var - v18[0];
        *(v13 - 2) = v18[0];
        *(v13 - 1) = v16;
        *v13 = DR_Meas_Var;
      }

      v13 += 3;
      ++a5;
      ++a4;
      ++a3;
      ++a1;
      --v12;
    }

    while (v12);
  }

  v17 = *MEMORY[0x29EDCA608];
}

double NK_Get_DR_Meas_Var(char a1, int a2, int a3, int a4, double *a5)
{
  v14 = *MEMORY[0x29EDCA608];
  NK_Interp_Var_Table(DR_Meas_Var_Table, 10, a2 - a3);
  v9 = v8 * 0.000001;
  *a5 = v8 * 0.000001;
  NK_Interp_Var_Table(DR_Carr_Lock_Table, 5, a4);
  v11 = v10 * 0.000001;
  if (a1 == 2)
  {
    v9 = v9 + 0.000225;
    *a5 = v9;
    v11 = v11 + 0.000225;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v9 + v11;
}

uint64_t gps_set_gnss_assist_data_error_req(unsigned int a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (gps_find_session_info(*(a2 + 8)))
  {
    if (a1 - 1 < 4)
    {
LABEL_12:
      result = GNS_AsstServerError(*(a2 + 8), 3, a1, 0);
      goto LABEL_13;
    }

    if (a1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Server Error\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "gps_set_gnss_assist_data_error_req", 2307);
        v6 = 0;
        goto LABEL_10;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Server Error not present\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 87, "gps_set_gnss_assist_data_error_req", 2307);
      v6 = 2;
LABEL_10:
      LbsOsaTrace_WriteLog(0x13u, __str, v5, v6, 1);
    }

    a1 = 0;
    goto LABEL_12;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "gps_set_gnss_assist_data_error_req", 2052, *(a2 + 8));
    result = LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

LABEL_13:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gps_set_gps_time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (gps_find_session_info(*(a3 + 8)))
  {
    v5 = gnssOsa_Calloc("gps_set_gps_time", 204, 1, 0x7CuLL);
    if (v5)
    {
      v6 = v5;
      *v5 = *(a1 + 4);
      v5[6] = *a1;
      *(v5 + 30) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = *(a1 + 8);
      if (v7 == 255)
      {
        LOWORD(v8) = -1;
      }

      else
      {
        v8 = ((pow(1.18, v7) + -1.0) * 0.0022 * 0.000333333333);
      }

      v6[2] = v8;
      *(v6 + 4) = -1;
      *(v6 + 2) = 0x7FFFFFFF;
      v15 = *(a1 + 60);
      *(v6 + 20) = v15;
      if (v15)
      {
        v16 = v6 + 13;
        v17 = a1 + 68;
        do
        {
          *(v16 - 4) = *(v17 - 6);
          *(v16 - 3) = *(v17 - 2);
          *(v16 - 1) = *(v17 - 1);
          *v16 = *(v17 - 4);
          v16 += 3;
          v17 += 8;
          --v15;
        }

        while (v15);
        v18 = 0;
        v19 = v6 + 13;
        do
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Index,%zu,Satid,%u,antiSpoof,%u,Alert,%u,tlmRes,%u,tlmWord,%u\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 65, "gps_set_gps_time", v18, *(v19 - 4), *(v19 - 3), *(v19 - 2), *(v19 - 1), *v19);
            LbsOsaTrace_WriteLog(0x13u, __str, v21, 1, 1);
          }

          ++v18;
          v19 += 3;
        }

        while (v18 < *(v6 + 20));
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: gpsTow,%u,GpsTowUnc,%u,RefDeltaCellTime,%u,GpsWeek,%u,RefCellTimeUnc,%u,NumTowAssist,%u\n", (*&g_MacClockTicksToMsRelation * v22), "PSP", 65, "gps_set_gps_time", *v6, v6[2], *(v6 + 2), v6[6], *(v6 + 4), *(v6 + 20));
        LbsOsaTrace_WriteLog(0x13u, __str, v23, 1, 1);
      }

      if ((v6[2] + 1) > 0x3DCu || (*(v6 + 4) + 1) >= 0x2D2E65)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ref time\n", (*&g_MacClockTicksToMsRelation * v24), "PSP", 69, "posp_utils_checkGpsRefTime", 772);
          LbsOsaTrace_WriteLog(0x13u, __str, v25, 0, 1);
        }
      }

      else
      {
        GNS_AsstGpsRefTime(*(a3 + 8), 3u, v6, 0);
        SendStatusReport(*(a3 + 8), 35, 0, v6, 0, 255);
      }

      free(v6);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "gps_set_gps_time", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    }

    result = *(a1 + 192);
    if (result)
    {
      result = MEMORY[0x29C29EAF0](result, 0x1000C805076FDFDLL);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    v9 = *(a1 + 192);
    if (v9)
    {
      MEMORY[0x29C29EAF0](v9, 0x1000C805076FDFDLL);
    }

    *(a1 + 192) = 0;
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 69, "gps_set_gps_time", 2052, *(a3 + 8));
      result = LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gps_set_based_aid(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!gps_find_session_info(*(a3 + 8)))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_32;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n");
LABEL_29:
    LbsOsaTrace_WriteLog(0x13u, __str, v25, 0, 1);
    goto LABEL_32;
  }

  if (!*a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_32;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Zero Satellites\n");
    goto LABEL_29;
  }

  v5 = gnssOsa_Calloc("gps_set_based_aid", 491, 1, 84 * *a1);
  if (!v5)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_32;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_29;
  }

  v6 = v5;
  if (*a1)
  {
    v7 = 0;
    v8 = 96;
    v30 = v5;
    do
    {
      v9 = *(a1 + 1) + v8;
      *v6 = *(v9 - 96);
      *(v6 + 1) = *(v9 - 92);
      v10 = *(v9 - 90);
      if (v10 >= 0x3F)
      {
        LOBYTE(v10) = 63;
      }

      v6[3] = v10;
      v6[4] = *(v9 - 86);
      *(v6 + 3) = *(v9 - 88);
      *(v6 + 4) = *(v9 - 66);
      *(v6 + 12) = *(v9 - 84);
      v11 = *(v9 - 68);
      v6[28] = *(v9 - 68);
      v6[29] = *(v9 - 64);
      if (v11 >= 128 && LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephem_tgd,%d\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "gps_set_based_aid", 772, *(*(a1 + 1) + v8 - 68));
        LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
      }

      v14 = *(*(a1 + 1) + v8 - 64);
      if (v14 > 127)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephem_af2,%d\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "gps_set_based_aid", 772, *(*(a1 + 1) + v8 - 64));
          LbsOsaTrace_WriteLog(0x13u, __str, v16, 0, 1);
        }
      }

      else
      {
        v6[29] = v14;
      }

      v17 = (*(a1 + 1) + v8);
      *(v6 + 15) = *(v17 - 31);
      *(v6 + 4) = *(v17 - 30);
      *(v6 + 10) = *(v17 - 13);
      *(v6 + 22) = *(v17 - 24);
      *(v6 + 23) = *(v17 - 20);
      *(v6 + 12) = *(v17 - 11);
      *(v6 + 13) = *(v17 - 9);
      *(v6 + 28) = *(v17 - 16);
      v6[58] = *(v17 - 30);
      v6[59] = *(v17 - 29);
      *(v6 + 30) = *(v17 - 14);
      *(v6 + 31) = *(v17 - 10);
      *(v6 + 16) = *(v17 - 6);
      *(v6 + 17) = *(v17 - 4);
      *(v6 + 36) = *v17;
      *(v6 + 37) = *(v17 - 6);
      *(v6 + 76) = *(v17 - 1);
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SatId,%u,EphemCodeOnL2,%u,EphemURA,%u,EphemSvHealth,%u,Epheml2pFlag,%u,EphemIodc,%u,EphemToc,%u,Reserved1,%u,Reserved2,%u\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 65, "gps_set_based_aid", *v6, v6[1], v6[2], v6[3], v6[4], *(v6 + 3), *(v6 + 4), *(v6 + 3), *(v6 + 4));
        LbsOsaTrace_WriteLog(0x13u, __str, v19, 1, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reserved3,%u,Reserved4,%u,EphemTgd,%d,EphemAf2,%d,EphemAf1,%d,EphemAf0,%d,EphemCrs,%d,EphemDeltaN,%d,EphemMo,%d,EphemCuc,%d\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 65, "gps_set_based_aid", *(v6 + 5), *(v6 + 6), v6[28], v6[29], *(v6 + 15), *(v6 + 8), *(v6 + 18), *(v6 + 19), *(v6 + 10), *(v6 + 22));
        LbsOsaTrace_WriteLog(0x13u, __str, v21, 1, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EphemCus,%d,Epheme,%u,EphemAPowerhalf,%u,EphemToe,%u,EphemFitFlag,%u,EphemAODO,%u,EphemCic,%d,EphemCis,%d,EphemOmegaA0,%d,EphemIo,%d,EphemIdot,%d,EphemCrc,%d,EphemW,%d,EphemOmegaAdot,%d\n", (*&g_MacClockTicksToMsRelation * v22), "PSP", 65, "gps_set_based_aid", *(v6 + 23), *(v6 + 12), *(v6 + 13), *(v6 + 28), v6[58], v6[59], *(v6 + 30), *(v6 + 31), *(v6 + 16), *(v6 + 17), *(v6 + 36), *(v6 + 37), *(v6 + 19), *(v6 + 20));
        LbsOsaTrace_WriteLog(0x13u, __str, v23, 1, 1);
      }

      ++v7;
      v24 = *a1;
      v8 += 100;
      v6 += 84;
    }

    while (v7 < v24);
    v6 = v30;
  }

  else
  {
    LODWORD(v24) = 0;
  }

  GNS_AsstGpsNavModel(*(a3 + 8), 3, v24, v6, 0);
  SendStatusReport(*(a3 + 8), 37, 0, 0, 0, 255);
  free(v6);
LABEL_32:
  v28 = *(a1 + 1);
  v27 = a1 + 8;
  result = v28;
  if (v28)
  {
    result = MEMORY[0x29C29EAF0](result, 0x1000C80A2FAA732);
  }

  *v27 = 0;
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gps_set_almanac_aid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!gps_find_session_info(*(a3 + 8)))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "gps_set_almanac_aid", 2052);
      LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
    }

    goto LABEL_16;
  }

  if (!*(a1 + 2))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Zero Satellites\n");
LABEL_23:
    result = LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
    goto LABEL_24;
  }

  v19 = gnssOsa_Calloc("gps_set_almanac_aid", 597, 1, 36 * *(a1 + 2));
  if (!v19)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_23;
  }

  if (*(a1 + 2))
  {
    v4 = 0;
    v5 = 30;
    v6 = v19;
    do
    {
      v7 = (*(a1 + 8) + v5);
      *v6 = *(v7 - 30);
      v6[1] = -1;
      *(v6 + 2) = *(v7 - 14);
      v6[6] = *(v7 - 26);
      v6[7] = *(v7 - 20);
      *(v6 + 4) = *(v7 - 12);
      *(v6 + 12) = *(v7 - 9);
      *(v6 + 14) = *(v7 - 11);
      *(v6 + 15) = *(v7 - 1);
      *(v6 + 16) = *v7;
      v6[2] = *a1;
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SatId,%u,DataId,%u,AlmanacWNA,%u,AlmanacE,%u,AlmanacToa,%u,AlmanacSVhealth,%u,AlmanacDeltai,%d,AlmanacAsqrt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 65, "gps_set_almanac_aid", *v6, v6[1], v6[2], *(v6 + 2), v6[6], v6[7], *(v6 + 4), *(v6 + 3));
        LbsOsaTrace_WriteLog(0x13u, __str, v9, 1, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AlmanacOmega0,%d,AlmanacOmega,%d,AlmanacM0,%d,AlmanacOmegaDot,%d,AlmanacAF0,%d,AlmanacAF1,%d\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 65, "gps_set_almanac_aid", *(v6 + 4), *(v6 + 5), *(v6 + 6), *(v6 + 14), *(v6 + 15), *(v6 + 16));
        LbsOsaTrace_WriteLog(0x13u, __str, v11, 1, 1);
      }

      ++v4;
      v6 += 36;
      v5 += 32;
    }

    while (v4 < *(a1 + 2));
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Almanac received in POSP but not injected to HSW\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 73, "gps_set_almanac_aid");
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 4, 1);
  }

  free(v19);
LABEL_16:
  result = *(a1 + 8);
  if (result)
  {
    result = MEMORY[0x29C29EAF0](result, 0x1000C800FACD818);
  }

  *(a1 + 8) = 0;
LABEL_24:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void gps_set_gnss_ref_loc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!gps_find_session_info(*(a4 + 8)))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_30;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n");
LABEL_15:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    goto LABEL_30;
  }

  v6 = gnssOsa_Calloc("gps_set_gnss_ref_loc", 660, 1, 0x34uLL);
  if (!v6)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_30;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_15;
  }

  v7 = v6;
  v6[1] = 1;
  if (*(a1 + 18) != 9)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_30;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v22 = *(a1 + 18);
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape,%u\n", (*&g_MacClockTicksToMsRelation * v11));
    goto LABEL_15;
  }

  v6[3] = 16;
  v6[5] = *(a1 + 24) & 0x7FFFFF;
  v6[6] = *(a1 + 32);
  if (*(a1 + 20))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v6[4] = v8;
  v9 = *(a1 + 40);
  if (v9 >> 16)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx altitude,%llu\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "gps_set_gnss_ref_loc", 772, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }
  }

  else
  {
    *(v6 + 14) = v9;
  }

  if ((*(a1 + 40) & 0x8000) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v7[9] = v14;
  v15 = *(a1 + 36);
  if (v15 <= 0x45)
  {
    LOBYTE(v15) = 69;
  }

  *(v7 + 30) = v15;
  v16 = *(a1 + 37);
  if (v16 <= 0x45)
  {
    LOBYTE(v16) = 69;
  }

  *(v7 + 31) = v16;
  *(v7 + 32) = *(a1 + 38);
  *(v7 + 20) = *(a1 + 48);
  v7[2] = 2;
  v7[12] = 3;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Shape Type is Ellipsoid Point Uncertain Altitude\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 73, "gps_set_gnss_ref_loc");
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%u,v_FixType,%u,v_ShapeType,%u,v_SignOfLat,%u,v_Latitude,%u,v_Longitude,%d,v_Altitude,%u,v_UncertSemiMajor,%u,v_UncertSemiMinor,%u,v_AxisBearing,%u,v_DirectOfAlt,%u,v_UncertAltitude,%u,v_Confidence,%u,v_IncludedAngle,%u,v_OffsetAngle,%u,v_InnerRadius,%u\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 73, "gps_set_gnss_ref_loc", v7[1], v7[2], v7[3], v7[4], v7[5], v7[6], *(v7 + 14), *(v7 + 30), *(v7 + 31), *(v7 + 32), v7[9], *(v7 + 40), *(v7 + 41), *(v7 + 42), *(v7 + 43), v7[11]);
    LbsOsaTrace_WriteLog(0x13u, __str, v20, 4, 1);
  }

  GNS_AsstRefPos(*(a4 + 8), 4u, v7, 0);
  SendStatusReport(*(a4 + 8), 36, 0, 0, v7, 255);
  free(v7);
LABEL_30:
  v21 = *MEMORY[0x29EDCA608];
}

void gps_set_gps_real_time_integrity(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 8))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTI data\n");
LABEL_23:
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    goto LABEL_24;
  }

  if (!gps_find_session_info(*(a2 + 8)))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "gps_set_gps_real_time_integrity", 2052);
      LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
    }

    goto LABEL_18;
  }

  v4 = gnssOsa_Calloc("gps_set_gps_real_time_integrity", 781, 1, 0x11uLL);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_23;
  }

  v5 = v4;
  *v4 = *a1;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: numOfSats,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 65, "gps_set_gps_real_time_integrity", *v5);
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 1, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: badSvId List\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 65, "gps_set_gps_real_time_integrity");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 1, 1);
  }

  if (*v5)
  {
    v10 = 0;
    do
    {
      *(v5 + v10 + 1) = *(*(a1 + 8) + v10);
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: svID,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 65, "gps_set_gps_real_time_integrity", *(v5 + v10 + 1));
        LbsOsaTrace_WriteLog(0x13u, __str, v12, 1, 1);
      }

      ++v10;
    }

    while (v10 < *v5);
  }

  GNS_AsstGpsRti(*(a2 + 8), 3, v5, 0);
  free(v5);
LABEL_18:
  v16 = *(a1 + 8);
  if (v16)
  {
    free(v16);
  }

  *(a1 + 8) = 0;
LABEL_24:
  v17 = *MEMORY[0x29EDCA608];
}

void gps_set_gps_utc_model(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (gps_find_session_info(*(a2 + 8)))
  {
    v4 = gnssOsa_Calloc("gps_set_gps_utc_model", 826, 1, 0x10uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = *a1;
      *(v4 + 13) = *(a1 + 13);
      *(v4 + 2) = *(a1 + 8);
      *(v4 + 12) = *(a1 + 12);
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UtcA1,%d,UtcA0,%d,UtcTot,%u,UtcWnT,%u,UtcDeltaTLs,%d,UtcWnLsf,%u,UtcDn,%d,UtcDeltaTLsf,%d\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 65, "gps_set_gps_utc_model", *v5, *(v5 + 1), *(v5 + 8), *(v5 + 9), *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13));
        LbsOsaTrace_WriteLog(0x13u, __str, v7, 1, 1);
      }

      GNS_AsstGpsUtcModel(*(a2 + 8), 3, v5, 0);
      free(v5);
      goto LABEL_13;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "gps_set_gps_utc_model", 1537);
    v12 = 0;
LABEL_12:
    LbsOsaTrace_WriteLog(0x13u, __str, v11, v12, 1);
    goto LABEL_13;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "gps_set_gps_utc_model", 2052);
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "gps_set_gps_utc_model");
    v12 = 5;
    goto LABEL_12;
  }

LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
}

void gps_set_gnss_iono_model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (gps_find_session_info(*(a4 + 8)))
  {
    v6 = gnssOsa_Calloc("gps_set_gnss_iono_model", 871, 1, 8uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = *(a1 + 2);
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: alpha0,%d,alpha1,%d,alpha2,%d,alpha3,%d,beta0,%d,beta1,%d,beta2,%d,beta3,%d\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 65, "gps_set_gnss_iono_model", *v7, v7[1], v7[2], v7[3], v7[4], v7[5], v7[6], v7[7]);
        LbsOsaTrace_WriteLog(0x13u, __str, v9, 1, 1);
      }

      GNS_AsstGpsIonoModel(*(a4 + 8), 3, v7, 0);
      free(v7);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "gps_set_gnss_iono_model", 2052);
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t gps_gnss_start_auto_mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  session_info = gps_find_session_info(*(a4 + 8));
  if (session_info)
  {
    *(session_info + 5) = *(session_info + 5) & 0xF8 | 1;
    *(session_info + 12) = *(a2 + 36);
    v7 = *(a4 + 8);
    v8 = *(session_info + 14);
    sendPositionReq();
    result = 4;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "gps_gnss_start_auto_mode", 2052);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    result = 5;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sendPositionReq()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v44 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("sendPositionReq", 991, 1, 0x28uLL);
  if (!v8)
  {
    goto LABEL_66;
  }

  v9 = v8;
  if (v4 == 1 || v4 == 4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  v8[3] = 1000 * *v7;
  v8[4] = v11;
  *(v8 + 2) = 1;
  *(v8 + 6) = -1;
  v8[7] = 0;
  v8[8] = 0;
  if (v4 == 1)
  {
    v12 = 3;
  }

  else
  {
    if (v4 != 4)
    {
      if (v4 == 2)
      {
        *v8 = 1;
      }

      goto LABEL_40;
    }

    v12 = 2;
  }

  *v8 = v12;
  v13 = *(v7 + 1);
  if (v13 != -1)
  {
    if (v13)
    {
      v13 = (log(v13 / 10.0 + 1.0) * 10.5 + 0.5);
    }

    *(v9 + 6) = v13;
  }

  v14 = *(v7 + 11);
  if (v14 != 255)
  {
    *(v9 + 7) = v14;
  }

  if (*(v7 + 12) == 1)
  {
    v15 = *(v7 + 4);
    if (v15 != -1)
    {
      if (v15)
      {
        v15 = (log(v15 / 10.0 + 1.0) * 10.5 + 0.5);
      }

      *(v9 + 8) = v15;
    }

    v16 = *(v7 + 20);
    if (v16 != 255)
    {
      *(v9 + 9) = v16;
    }
  }

  if (*(v7 + 9) == 1)
  {
    v17 = *(v7 + 33);
    if (v17 != 255)
    {
      v18 = v17 & 0xF;
      if (v18)
      {
        v9[7] = v18;
      }
    }
  }

  v19 = *(v7 + 32);
  if (*(v7 + 32) && v19 != 255)
  {
    if ((v19 & 0xB7) != 0)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape,%u not supported\n", (*&g_MacClockTicksToMsRelation * v39), "PSP", 69, "sendPositionReq", 770, *(v7 + 32));
        LbsOsaTrace_WriteLog(0x13u, __str, v40, 0, 1);
      }

      *__str = 0;
      memset_s(&v42, 0x285A0uLL, 0, 0x285A0uLL);
      *__str = 0x285A000000004;
      v43 = 0x200000001;
      v42 = v6;
      Process_POSP_Response(__str);
      LOBYTE(v19) = *(v7 + 32);
      if ((v19 & 1) == 0)
      {
LABEL_35:
        if ((v19 & 2) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_71;
      }
    }

    v9[8] |= 1u;
    if ((v19 & 2) == 0)
    {
LABEL_36:
      if ((v19 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_72;
    }

LABEL_71:
    v9[8] |= 2u;
    if ((v19 & 4) == 0)
    {
LABEL_37:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_73;
    }

LABEL_72:
    v9[8] |= 4u;
    if ((v19 & 0x10) == 0)
    {
LABEL_38:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_40;
      }

LABEL_39:
      v9[8] |= 0x10u;
      goto LABEL_40;
    }

LABEL_73:
    v9[8] |= 8u;
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_40:
  if (v7[18])
  {
    *(v9 + 36) = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AGPS constellation requested\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 73, "sendPositionReq");
      LbsOsaTrace_WriteLog(0x13u, __str, v21, 4, 1);
    }
  }

  if (*(v7 + 21) == 1)
  {
    *(v9 + 37) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UE can request for additional assistance data\n");
LABEL_48:
      LbsOsaTrace_WriteLog(0x13u, __str, v22, 4, 1);
    }
  }

  else
  {
    *(v9 + 37) = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UE cannot request for additional assistance data\n");
      goto LABEL_48;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_LocInfoType,%u,v_LocShapeTypes,%u,v_VelReqType,%u\n", (*&g_MacClockTicksToMsRelation * v23), "PSP", 65, "sendPositionReq", *v9, v9[8], v9[7]);
    LbsOsaTrace_WriteLog(0x13u, __str, v24, 1, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = mach_continuous_time();
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReportingAmount,%u,HorAccuracy,%u,HorAccConfidence,%u,VertAccuracy,%u,VertAccConfidence,%u,RespTime,%u,posReportType,%u\n", (*&g_MacClockTicksToMsRelation * v25), "PSP", 65, "sendPositionReq", *(v9 + 2), *(v9 + 6), *(v9 + 7), *(v9 + 8), *(v9 + 9), v9[3], v9[4]);
    LbsOsaTrace_WriteLog(0x13u, __str, v26, 1, 1);
  }

  session_info = gps_find_session_info(v6);
  v28 = session_info;
  if (session_info)
  {
    *(session_info + 16) = 1;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 69, "sendPositionReq", 2052);
    LbsOsaTrace_WriteLog(0x13u, __str, v30, 0, 1);
  }

  if (GNS_PospLocReq(v6, v9, v2 != 0) != 1)
  {
    *__str = 0;
    memset_s(&v42, 0x285A0uLL, 0, 0x285A0uLL);
    *__str = 0x285A000000004;
    v43 = 0x200000001;
    v42 = v6;
    Process_POSP_Response(__str);
  }

  v31 = *v9 - 1;
  if (v31 >= 3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    v32 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v34), "PSP", 69, "sendPositionReq", 770, *v9);
      LbsOsaTrace_WriteLog(0x13u, __str, v35, 0, 1);
      v32 = 0;
    }
  }

  else
  {
    v32 = dword_29975B298[v31];
  }

  SendStatusReport(v6, v32, 0, 0, 0, *(v9 + 6));
  if (v28)
  {
    v36 = *v9;
    v37 = *(v9 + 1);
    *(v28 + 51) = *(v9 + 31);
    *(v28 + 36) = v37;
    *(v28 + 20) = v36;
    *(v28 + 60) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  }

  free(v9);
LABEL_66:
  v38 = *MEMORY[0x29EDCA608];
}

uint64_t gps_gnss_start_based_mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  session_info = gps_find_session_info(*(a4 + 8));
  if (session_info)
  {
    *(session_info + 5) = *(session_info + 5) & 0xF8 | 4;
    *(session_info + 12) = *(a2 + 36);
    v7 = *(a4 + 8);
    v8 = *(session_info + 14);
    v9 = 4;
    sendPositionReq();
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "gps_gnss_start_based_mode", 2052);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    v9 = 5;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v9;
}

void GncP05_23SetFixInterval(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x64)
  {
    v1 = 100;
  }

  else
  {
    v1 = a1;
  }

  if (v1 != g_GncPConfig)
  {
    if (a1 < 0x10000)
    {
      if (GN_GPS_Set_FixInterval(v1))
      {
        g_GncPConfig = v1;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEUpdtInt,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP05_23SetFixInterval", v1);
          LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
        }

        GncP03_12SendUpdtCfg(0, &g_GncPConfig);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixInterval OutofRange,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP05_23SetFixInterval", v1);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t GncP05_25ChkDeRegGnssServReqd(void)
{
  result = 0;
  v6 = *MEMORY[0x29EDCA608];
  if (g_HwType > 2471)
  {
    if ((g_HwType - 2472) >= 2)
    {
      if (g_HwType == 3431)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

LABEL_7:
    result = 1;
    goto LABEL_8;
  }

  if (g_HwType == 848)
  {
    goto LABEL_8;
  }

  if (g_HwType == 1107)
  {
    goto LABEL_7;
  }

LABEL_9:
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HwType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP05_25ChkDeRegGnssServReqd", 770, g_HwType);
    LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    result = 0;
  }

LABEL_8:
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP05_30InitConfig(void)
{
  v20 = *MEMORY[0x29EDCA608];
  g_GncPConfig[0] = 1000;
  *&word_2A19207FE = 0;
  *&word_2A1920806 = 129892352;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v1 = 70;
    if (byte_2A1920803)
    {
      v1 = 84;
    }

    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixIntMs,%u,MeasDelayMs,%u,SleepTOSec,%u,StartMode,%hhu,DutyCycle,%c\n", v0, "GNC", 73, "GncP05_30InitConfig", g_GncPConfig[0], word_2A19207FE, word_2A1920800, byte_2A1920802, v1);
    LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
  }

  v4 = *(*(&xmmword_2A1926A20 + 1) + 16);
  v3 = *(*(&xmmword_2A1926A20 + 1) + 32);
  v12 = **(&xmmword_2A1926A20 + 1);
  v13 = v4;
  v14 = v3;
  v6 = *(*(&xmmword_2A1926A20 + 1) + 64);
  v5 = *(*(&xmmword_2A1926A20 + 1) + 80);
  v7 = *(*(&xmmword_2A1926A20 + 1) + 48);
  v18 = *(*(&xmmword_2A1926A20 + 1) + 96);
  v16 = v6;
  v17 = v5;
  v15 = v7;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", &v12);
  GncP05_22UpdatePeLogCfg(&v12);
  LOWORD(v15) = 1;
  LOBYTE(v13) = 1;
  result = GN_GPS_Set_Config(&v12);
  if ((result & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PE SetConfig failed\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "GncP05_30InitConfig");
      result = LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP05_22UpdatePeLogCfg(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSConfig\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP05_22UpdatePeLogCfg", 513);
      result = LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
    }

    goto LABEL_45;
  }

  v13 = 0;
  v2 = dword_2A19396BC;
  if (LbsOsaTrace_GetModuleConfig(__str, 2u))
  {
    *(a1 + 50) = 0;
    if (v2 == 1)
    {
      if ((v13 & 8) != 0)
      {
        v3 = 4;
      }

      else
      {
        if ((v13 & 4) == 0)
        {
          goto LABEL_11;
        }

        v3 = 3;
      }

      *(a1 + 50) = v3;
    }
  }

LABEL_11:
  v13 = 0;
  if (LbsOsaTrace_GetModuleConfig(__str, 0))
  {
    if (v13)
    {
      v7 = v2 == 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    *(a1 + 52) = v8;
  }

  v13 = 0;
  if (LbsOsaTrace_GetModuleConfig(__str, 1u))
  {
    if (v13 && v2 == 1)
    {
      *(a1 + 36) = 0x101010101010101;
      *(a1 + 44) = 257;
    }

    else
    {
      *(a1 + 44) = 0;
      *(a1 + 36) = 0;
    }
  }

  v13 = 0;
  if (LbsOsaTrace_GetModuleConfig(__str, 3u))
  {
    *(a1 + 54) = 0;
    if ((v13 & 8) != 0 && v2 == 1 || (v13 & 4) != 0 && v2 == 1)
    {
      v9 = 5;
LABEL_30:
      *(a1 + 54) = v9;
      goto LABEL_31;
    }

    v9 = 1;
    if ((v13 & 1) != 0 || ((v2 == 1) & (v13 >> 1)) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  v13 = 0;
  result = LbsOsaTrace_GetModuleConfig(__str, 7u);
  if (result)
  {
    *(a1 + 56) = 0;
    if (v2 == 1)
    {
      if ((v13 & 8) != 0)
      {
        v10 = 543;
        goto LABEL_44;
      }

      if ((v13 & 4) != 0)
      {
        v10 = 535;
        goto LABEL_44;
      }

      if ((v13 & 2) != 0)
      {
        v10 = 519;
        goto LABEL_44;
      }

      if (v13)
      {
        v10 = 515;
LABEL_44:
        *(a1 + 56) = v10;
      }
    }
  }

LABEL_45:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP05_60HandleCfgUpdate(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_35;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_33;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDATE_IND,CfgMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP05_60HandleCfgUpdate", *(a1 + 12));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 12);
  if (v4 < 0x400)
  {
    if ((v4 & 4) != 0)
    {
      word_2A1920800 = *(a1 + 30);
      if (*(a1 + 28) <= 0xFAu)
      {
        word_2A19207FE = *(a1 + 28);
      }
    }

    if ((v4 & 8) != 0)
    {
      byte_2A1920802 = *(a1 + 22);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 70;
      if (byte_2A1920803)
      {
        v10 = 84;
      }

      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixIntMs,%u,MeasDelayMs,%u,SleepTOSec,%u,StartMode,%hhu,DutyCycle,%c\n", v9, "GNC", 73, "GncP05_60HandleCfgUpdate", g_GncPConfig[0], word_2A19207FE, word_2A1920800, byte_2A1920802, v10);
      LbsOsaTrace_WriteLog(8u, __str, v11, 4, 1);
    }

    v13 = *(*(&xmmword_2A1926A20 + 1) + 16);
    v12 = *(*(&xmmword_2A1926A20 + 1) + 32);
    v29 = **(&xmmword_2A1926A20 + 1);
    v30 = v13;
    v31 = v12;
    v15 = *(*(&xmmword_2A1926A20 + 1) + 64);
    v14 = *(*(&xmmword_2A1926A20 + 1) + 80);
    v16 = *(*(&xmmword_2A1926A20 + 1) + 48);
    v35 = *(*(&xmmword_2A1926A20 + 1) + 96);
    v33 = v15;
    v34 = v14;
    v32 = v16;
    EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", &v29);
    v17 = *(a1 + 12);
    if (v17)
    {
      v18 = *(a1 + 17);
      LODWORD(v29) = *(a1 + 16);
      DWORD1(v29) = v18;
    }

    if ((v17 & 0x40) != 0)
    {
      GncP05_22UpdatePeLogCfg(&v29);
      v17 = *(a1 + 12);
    }

    if ((v17 & 2) != 0)
    {
      v21 = *(a1 + 32);
      BYTE2(v30) = v21 & 1;
      v22 = *&vshl_u16(vdup_n_s16(v21), 0xFFFAFFFEFFFCFFFBLL) & 0xFF01FF01FF01FF01;
      *(&v30 + 3) = vuzp1_s8(v22, v22).u32[0];
      BYTE7(v30) = (v21 & 2) != 0;
      if ((v17 & 4) == 0)
      {
LABEL_24:
        if ((v17 & 0x100) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_40;
      }
    }

    else if ((v17 & 4) == 0)
    {
      goto LABEL_24;
    }

    if (*(a1 + 26) <= 1u)
    {
      LOBYTE(v31) = *(a1 + 26);
    }

    BYTE14(v31) = *(a1 + 27);
    if ((v17 & 0x100) == 0)
    {
LABEL_25:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_44;
    }

LABEL_40:
    v23 = *(a1 + 56);
    v28[0] = *(a1 + 40);
    v28[1] = v23;
    if ((GN_GPS_Set_CrossCorr_Params(v28) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PE SetCrossCorr failed\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 69, "GncP05_60HandleCfgUpdate");
      LbsOsaTrace_WriteLog(8u, __str, v25, 0, 1);
    }

    v17 = *(a1 + 12);
    if ((v17 & 0x10) == 0)
    {
LABEL_26:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    }

LABEL_44:
    DWORD2(v29) = *(a1 + 18);
    v26 = *(a1 + 20);
    BYTE13(v30) = (v26 & 2) != 0;
    BYTE8(v30) = v26 & 1;
    v27 = *&vshl_u16(vdup_n_s16(v26), 0xFFFAFFFEFFFCFFFBLL) & 0xFF01FF01FF01FF01;
    *(&v30 + 9) = vuzp1_s8(v27, v27).u32[0];
    if ((v17 & 0x20) == 0)
    {
LABEL_27:
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    }

LABEL_45:
    BYTE14(v30) = *(a1 + 23);
    WORD6(v32) = *(a1 + 24);
    byte_2A1920804 = BYTE14(v30);
    word_2A1920806 = WORD6(v32);
    if ((v17 & 0x80) == 0)
    {
LABEL_28:
      if ((v17 & 0x200) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_46:
    HIWORD(v32) = *(a1 + 34);
    word_2A1920808 = HIWORD(v32);
    if ((v17 & 0x200) == 0)
    {
LABEL_30:
      if ((GN_GPS_Set_Config(&v29) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        goto LABEL_35;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PE SetConfig failed\n");
LABEL_33:
      v6 = v8;
      v7 = 0;
      goto LABEL_34;
    }

LABEL_29:
    BYTE1(v35) = *(a1 + 72);
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP05_60HandleCfgUpdate", 515, *(a1 + 12));
    v7 = 2;
LABEL_34:
    LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
  }

LABEL_35:
  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP05_62GetPlcHwType(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_HwType <= 2471)
  {
    if (g_HwType == 848)
    {
      result = 5;
      goto LABEL_14;
    }

    if (g_HwType == 1107)
    {
      result = 2;
      goto LABEL_14;
    }
  }

  else
  {
    switch(g_HwType)
    {
      case 2472:
        result = 3;
        goto LABEL_14;
      case 2473:
        result = 4;
        goto LABEL_14;
      case 3431:
        result = 1;
        goto LABEL_14;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HwType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP05_62GetPlcHwType", 770, g_HwType);
    LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
    result = 0;
  }

LABEL_14:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP05_61HandleHwTypeInd(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_TYPE_IND,HwType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP05_61HandleHwTypeInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    g_HwType = *(a1 + 12);
    v5 = *(*(&xmmword_2A1926A20 + 1) + 16);
    v4 = *(*(&xmmword_2A1926A20 + 1) + 32);
    v19[0] = **(&xmmword_2A1926A20 + 1);
    v19[1] = v5;
    v19[2] = v4;
    v7 = *(*(&xmmword_2A1926A20 + 1) + 64);
    v6 = *(*(&xmmword_2A1926A20 + 1) + 80);
    v8 = *(*(&xmmword_2A1926A20 + 1) + 48);
    v20 = *(*(&xmmword_2A1926A20 + 1) + 96);
    v19[4] = v7;
    v19[5] = v6;
    v19[3] = v8;
    EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v19);
    v9 = 1;
    if (g_HwType <= 2471)
    {
      if (g_HwType == 848)
      {
        goto LABEL_13;
      }

      if (g_HwType != 1107)
      {
LABEL_22:
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_21;
        }

        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HwType,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP05_24SetSleepCmdCfg", 770, g_HwType);
        v14 = 2;
        goto LABEL_20;
      }
    }

    else if ((g_HwType - 2472) >= 2)
    {
      if (g_HwType != 3431)
      {
        goto LABEL_22;
      }

LABEL_13:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EnablecSMsgToME,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP05_24SetSleepCmdCfg", v9);
        LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
      }

      if (BYTE2(v20) != v9)
      {
        BYTE2(v20) = v9;
        if ((GN_GPS_Set_Config(v19) & 1) == 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PE SetConfig failed\n");
            goto LABEL_19;
          }
        }
      }

      goto LABEL_21;
    }

    v9 = 0;
    goto LABEL_13;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_19:
    v13 = v10;
    v14 = 0;
LABEL_20:
    LbsOsaTrace_WriteLog(8u, __str, v13, v14, 1);
  }

LABEL_21:
  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t NK_Get_Ext_CTXT(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v36 = 0;
  v8 = a3 + 0x2000;
  v35 = 0;
  v9 = a2 + 22720;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  if (Core_Get_ExtA_UAC(43200000, &v34))
  {
    *(v9 + 2220) = 1;
    v10 = v35;
    v11 = a1 - v34;
    *(v9 + 2232) = a1 - v34;
    if (v10 && v11 >= -1000)
    {
      v12 = HIDWORD(v34);
      *(v9 + 20) = v10;
      *(v9 + 12) = v12;
      *(v9 + 16) = 1;
      if (v12 > 0xB)
      {
        *(v9 + 2228) = 0;
        *(v9 + 2224) = 6;
        EvCrt_Illegal_Default("NK_Get_Ext_CTXT", 0xA7u);
        v12 = *(v9 + 12);
        goto LABEL_8;
      }

      if (((1 << v12) & 0x7C) != 0)
      {
        *(v8 + 2969) = 1;
        *(v9 + 2228) = 1;
        v16 = *(a2 + 944);
        if (v16 <= 4.0)
        {
          if (v16 <= 8.0)
          {
            goto LABEL_28;
          }
        }

        else if (v16 <= 8.0 && *(a2 + 24712) > 2.0)
        {
          goto LABEL_28;
        }

        *(v8 + 2969) = 256;
        *(v9 + 2228) = 0;
        *(v9 + 2224) = 4;
        goto LABEL_28;
      }

      if (((1 << v12) & 0xF80) != 0)
      {
        *(v8 + 2969) = 256;
        *(v9 + 2228) = 1;
LABEL_8:
        if (v12 == 10 && *(v9 + 20) == 3)
        {
          if ((*(a3 + 20) - 5) < 4)
          {
            goto LABEL_31;
          }

          v13 = 5;
          a4[13] = 5;
          *(a3 + 20) = 5;
          v14 = a4[14];
          *(a3 + 24) = v14;
LABEL_30:
          v31[0] = v13;
          v31[1] = v14;
          NK_Set_Dynamics(v31, a3 + 32);
          goto LABEL_31;
        }

LABEL_28:
        if (*(a3 + 20) < 5u)
        {
          goto LABEL_31;
        }

        a4[13] = 2;
        v13 = 4;
        *(a3 + 20) = 4;
        v14 = *(a3 + 24);
        goto LABEL_30;
      }

      *(v9 + 2228) = 0;
      *(v9 + 2224) = 5;
      v17 = *(a2 + 944);
      if (v17 <= 4.0)
      {
        if (v17 <= 8.0)
        {
LABEL_25:
          v18 = *(a3 + 11144);
          *(v8 + 2970) = v18 > 4.0;
          *(v8 + 2969) = v18 <= 4.0;
          goto LABEL_28;
        }
      }

      else if (v17 <= 8.0 && *(a2 + 24712) > 2.0)
      {
        goto LABEL_25;
      }

      *(v8 + 2969) = 256;
      goto LABEL_28;
    }

    *(v9 + 2228) = 0;
    if (v10)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(v9 + 2224) = v15;
  }

LABEL_31:
  *(v9 + 36) = 0;
  if (Core_Get_ExtA_DMS(43200000, &v36))
  {
    *(v9 + 2204) = 1;
    v19 = a1 - v34;
    *(v9 + 2216) = a1 - v34;
    v20 = v37;
    if (v37 && v19 >= -1000)
    {
      v21 = HIDWORD(v36);
      *(v9 + 8) = v37;
      *v9 = v21;
      *(v9 + 4) = 1;
      if (v21 == 1)
      {
        *(v9 + 36) = 1;
        *(a3 + 11116) = 3;
        *(a3 + 11136) = *a2;
      }

      *(v9 + 2212) = 1;
    }

    else
    {
      *(v9 + 2212) = 0;
      if (v20)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      *(v9 + 2208) = v22;
    }
  }

  result = Core_Get_ExtA_FIV_Ind(43200000, &v32);
  if (result)
  {
    *(v9 + 2236) = 1;
    v24 = a1 - v34;
    *(v9 + 2248) = a1 - v34;
    v25 = v33;
    if (v33 && v24 >= -1000)
    {
      v26 = HIDWORD(v32);
      *(v9 + 32) = v33;
      *(v9 + 24) = v26;
      *(v9 + 28) = 1;
      *(v9 + 2244) = 0;
    }

    else
    {
      *(v9 + 2244) = 0;
      if (v25)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      *(v9 + 2240) = v27;
    }
  }

  v28 = *(v9 + 24);
  if (v28 == 3 && *(v9 + 32) == 3)
  {
LABEL_51:
    v29 = 4;
LABEL_61:
    a4[12] = v29;
    goto LABEL_62;
  }

  if (*v9 == 1 && *(v9 + 8) == 3)
  {
    v29 = 1;
    goto LABEL_61;
  }

  if (*(v8 + 2969))
  {
    v29 = 2;
    goto LABEL_61;
  }

  if (*(v8 + 2970) == 1)
  {
    if (v28 != 3 || *(v9 + 32) != 3)
    {
      v29 = 3;
      goto LABEL_61;
    }

    goto LABEL_51;
  }

LABEL_62:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_Init(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm_Init");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  v2 = gnssOsa_Calloc("Gnm_Init", 67, 1, 0xCuLL);
  if (v2)
  {
    AgpsSendFsmMsg(128, 128, 8388611, v2);
    LODWORD(v2) = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, v2);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_Init");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_Deinit(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm_Deinit");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  v2 = gnssOsa_Calloc("Gnm_Deinit", 97, 1, 0xCuLL);
  if (v2)
  {
    AgpsSendFsmMsg(128, 128, 8388867, v2);
    LODWORD(v2) = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, v2);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_Deinit");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm_DestMissingHandler(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  if (v4 <= 8594434)
  {
    if (v4 != 8391939)
    {
      if (v4 == 8393475)
      {
LABEL_11:
        v6 = *(a1 + 16);
        if (v6)
        {
          free(v6);
        }

        *(a1 + 16) = 0;
        goto LABEL_35;
      }

      v5 = 8403200;
      goto LABEL_10;
    }

LABEL_32:
    v16 = *(a1 + 64);
    if (v16)
    {
      free(v16);
    }

    *(a1 + 64) = 0;
    goto LABEL_35;
  }

  if (v4 == 8594435)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      free(v7);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 24);
    if (v8)
    {
      free(v8);
    }

    *(a1 + 24) = 0;
    goto LABEL_35;
  }

  if (v4 == 8596739)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      free(v11);
    }

    *(a1 + 24) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      free(v12);
    }

    *(a1 + 32) = 0;
    v13 = *(a1 + 40);
    if (v13)
    {
      free(v13);
    }

    *(a1 + 40) = 0;
    v14 = *(a1 + 48);
    if (v14)
    {
      free(v14);
    }

    *(a1 + 48) = 0;
    v15 = *(a1 + 56);
    if (v15)
    {
      free(v15);
    }

    *(a1 + 56) = 0;
    goto LABEL_32;
  }

  v5 = 8787456;
LABEL_10:
  if (v4 == v5)
  {
    goto LABEL_11;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm_DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
  }

LABEL_35:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm_ClearGNSSCache(int a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_ClearGNSSCache");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm_ClearGNSSCache", 298, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[3] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FieldsToDel,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 77, "Gnm_ClearGNSSCache", v5[3]);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 3, 1);
    }

    AgpsSendFsmMsg(128, 128, 8389379, v5);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_ClearGNSSCache");
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
      result = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_ClearGNSSCache");
      LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
    }

    result = 5;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_SetUserConfig(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_SetUserConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm_SetUserConfig", 343, 1, 0x288uLL);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      *(v4 + 3) = *a1;
      *(v4 + 7) = *(a1 + 4);
      v6 = *(a1 + 8);
      *(v4 + 8) = v6;
      if (v6)
      {
        v4[36] = *(a1 + 12);
        if ((v6 & 2) == 0)
        {
LABEL_7:
          if ((v6 & 4) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_26;
        }
      }

      else if ((v6 & 2) == 0)
      {
        goto LABEL_7;
      }

      v4[38] = *(a1 + 13);
      if ((v6 & 4) == 0)
      {
LABEL_8:
        if ((v6 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_27;
      }

LABEL_26:
      v4[37] = *(a1 + 14);
      if ((v6 & 8) == 0)
      {
LABEL_9:
        if ((v6 & 0x200) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_28;
      }

LABEL_27:
      v4[39] = *(a1 + 15);
      if ((v6 & 0x200) == 0)
      {
LABEL_10:
        if ((v6 & 0x800) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(v4 + 10) = *(a1 + 600);
      if ((v6 & 0x800) == 0)
      {
LABEL_11:
        if ((v6 & 0x400) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(v4 + 22) = *(a1 + 604);
      if ((v6 & 0x400) == 0)
      {
LABEL_12:
        if ((v6 & 0x1000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_31;
      }

LABEL_30:
      v4[46] = *(a1 + 606);
      if ((v6 & 0x1000) == 0)
      {
LABEL_13:
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(v4 + 6) = *(a1 + 608);
      if ((v6 & 0x10) == 0)
      {
LABEL_14:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_33;
      }

LABEL_32:
      v14 = *(a1 + 16);
      *(v4 + 70) = *(a1 + 30);
      *(v4 + 56) = v14;
      if ((*(a1 + 8) & 0x20) == 0)
      {
LABEL_43:
        if ((*(a1 + 8) & 0x40) != 0)
        {
          *(v5 + 161) = *(a1 + 592);
          *(v5 + 157) = *(a1 + 596);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CfgMskValid,%u,CfgMsk,%u,CfgMsk2,%u,SUPLCfgValid,%u,SUPLCfgMsk,%u,SUPLCfgMsk2,%u,CPCfgMskValid,%u,CPCfgMsk,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm_SetUserConfig", *(v5 + 3), *(v5 + 7), *(v5 + 8), *(v5 + 160), *(v5 + 22), *(v5 + 23), *(v5 + 161), *(v5 + 157));
          LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
        }

        AgpsSendFsmMsg(128, 128, 8389891, v5);
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
        result = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "GNM", 73, "Gnm_SetUserConfig");
          LbsOsaTrace_WriteLog(0xBu, __str, v30, 4, 1);
          result = 0;
        }

        goto LABEL_49;
      }

LABEL_33:
      *(v4 + 160) = *(a1 + 48);
      *(v4 + 22) = *(a1 + 52);
      v15 = *(a1 + 56);
      *(v4 + 23) = v15;
      if (v15)
      {
        v4[96] = *(a1 + 60);
      }

      v16 = 0;
      v17 = a1 + 62;
      v18 = v4 + 98;
      v19 = 1;
      do
      {
        v20 = v19;
        if ((v5[92] & 4) != 0)
        {
          v21 = 262 * v16;
          v22 = v17 + v21;
          v23 = &v18[v21];
          v23[257] = *(v17 + v21 + 257);
          v24 = *(v17 + v21 + 258);
          v23[258] = v24;
          memcpy_s("Gnm_SetUserConfig", 429, &v18[v21 + 1], 0x100u, (v17 + v21 + 1), v24);
          *(v23 + 130) = *(v22 + 260);
          *v23 = *v22;
        }

        v19 = 0;
        v16 = 1;
      }

      while ((v20 & 1) != 0);
      v25 = *(v5 + 23);
      if ((v25 & 0x40) != 0)
      {
        *(v5 + 311) = *(a1 + 586);
      }

      if ((v25 & 0x100) != 0)
      {
        *(v5 + 312) = *(a1 + 588);
      }

      goto LABEL_43;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm_SetUserConfig", 513);
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_SetUserConfig");
      LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
    }

    free(v5);
    result = 1;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_SetUserConfig");
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
    }

    result = 5;
  }

LABEL_49:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_SetPlatformConfig(int *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_SetPlatformConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm_SetPlatformConfig", 513);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v4 = gnssOsa_Calloc("Gnm_SetPlatformConfig", 547, 1, 0x170uLL);
  if (v4)
  {
    v5 = v4;
    v6 = *a1;
    if ((*a1 & 0x40) != 0 && strnlen(a1 + 280, 0xF0uLL) >= 240)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DevName\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm_SetPlatformConfig", 515);
        LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
      }

      free(v5);
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
LABEL_14:
        bzero(__str, 0x410uLL);
        v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "GNM", 73, "Gnm_SetPlatformConfig");
        v13 = 1;
        LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
        goto LABEL_23;
      }

LABEL_19:
      v13 = 1;
      goto LABEL_23;
    }

    *(v5 + 7) = v6;
    *(v5 + 28) = *(a1 + 14);
    v14 = *(a1 + 1);
    *(v5 + 10) = a1[3];
    *(v5 + 4) = v14;
    v15 = *(a1 + 2);
    *(v5 + 13) = a1[6];
    *(v5 + 44) = v15;
    *(v5 + 15) = a1[69];
    *(v5 + 76) = a1[130];
    *(v5 + 154) = *(a1 + 262);
    *(v5 + 29) = *(a1 + 15);
    v16 = *(a1 + 34);
    *(v5 + 328) = *(a1 + 33);
    *(v5 + 344) = v16;
    memcpy_s("Gnm_SetPlatformConfig", 584, v5 + 64, 0xF0u, a1 + 70, 0xF0uLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CfgMsk,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm_SetPlatformConfig", *(v5 + 7));
      LbsOsaTrace_WriteLog(0xBu, __str, v18, 4, 1);
    }

    AgpsSendFsmMsg(128, 128, 8390147, v5);
    v13 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 73, "Gnm_SetPlatformConfig");
      LbsOsaTrace_WriteLog(0xBu, __str, v20, 4, 1);
      v13 = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 73, "Gnm_SetPlatformConfig");
      LbsOsaTrace_WriteLog(0xBu, __str, v22, 4, 1);
    }

    v13 = 5;
  }

LABEL_23:
  v23 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t Gnm_SetTaLogConfig(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 68, "Gnm_SetTaLogConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm_SetTaLogConfig", 513);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
    {
      v5 = 1;
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 68, "Gnm_SetTaLogConfig");
    v5 = 1;
    goto LABEL_13;
  }

  v4 = gnssOsa_Calloc("Gnm_SetTaLogConfig", 672, 1, 0x24uLL);
  if (!v4)
  {
    v5 = 5;
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 68, "Gnm_SetTaLogConfig");
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 5, 1);
    goto LABEL_15;
  }

  v4[6] = *a1;
  *(v4 + 28) = *(a1 + 4);
  AgpsSendFsmMsg(128, 128, 8404483, v4);
  v5 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 68, "Gnm_SetTaLogConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 5, 1);
    v5 = 0;
  }

LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Gnm_RegisterApiStatusCb(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_RegisterApiStatusCb");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("Gnm_RegisterApiStatusCb", 770, 1, 0x28uLL);
    if (v4)
    {
      v4[2] = a1;
      AgpsSendFsmMsg(128, 128, 8391427, v4);
      v5 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_RegisterApiStatusCb");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
        v5 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_RegisterApiStatusCb");
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
      }

      v5 = 5;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm_RegisterApiStatusCb", 258);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_RegisterApiStatusCb");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    else
    {
      v5 = 1;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Gnm_RegisterPeriodicFix(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v47 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_RegisterPeriodicFix");
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,OutputType,%u,PosParam Timeout,%u,AgeLimit,%u,FixIntvl,%u,StartTime,%u,StopTime,%u,NumFix,%u,HorizAcc,%u,VerAcc,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 77, "Gnm_RegisterPeriodicFix", a1, a4, *a5, a5[1], a5[2], a5[3], a5[4], *(a5 + 10), *(a5 + 11), *(a5 + 12));
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 3, 1);
  }

  if (!a3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_17;
    }

    bzero(__str, 0x410uLL);
    v41 = 258;
    v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v17 = "%10u %s%c %s: #%04hx\n";
    goto LABEL_15;
  }

  v14 = (2 * a4) & 8 | (a4 >> 1) & 1;
  if (!v14)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_17;
    }

    bzero(__str, 0x410uLL);
    v41 = 514;
    v42 = a4;
    v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v17 = "%10u %s%c %s: #%04hx OutputMask,%x\n";
    goto LABEL_15;
  }

  v15 = a5[2];
  if (v15 && v15 - 604800001 < 0xDBF37C63)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_17;
    }

    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v41 = 514;
    v42 = a5[2];
    v40 = (*&g_MacClockTicksToMsRelation * v16);
    v17 = "%10u %s%c %s: #%04hx FixRate,%u\n";
    goto LABEL_15;
  }

  if (*(a5 + 10) == 1)
  {
    if (*a5 - 3600001 < 0xFFC91567)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v41 = 514;
        v42 = *a5;
        v40 = (*&g_MacClockTicksToMsRelation * v24);
        v17 = "%10u %s%c %s: #%04hx TimeOut,%u\n";
LABEL_15:
        v18 = snprintf(__str, 0x40FuLL, v17, v40, "GNM", 87, "Gnm_RegisterPeriodicFix", v41, v42, v44);
LABEL_16:
        LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (a5[1] >= 0x5265C01)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v41 = 514;
        v42 = a5[1];
        v40 = (*&g_MacClockTicksToMsRelation * v25);
        v17 = "%10u %s%c %s: #%04hx Agelimit,%u\n";
        goto LABEL_15;
      }

LABEL_17:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 73, "Gnm_RegisterPeriodicFix");
        v21 = 1;
        LbsOsaTrace_WriteLog(0xBu, __str, v20, 4, 1);
      }

      else
      {
        v21 = 1;
      }

      goto LABEL_20;
    }
  }

  v27 = a5[3];
  v26 = a5[4];
  if (v26 < v27)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v43 = a5[3];
      v45 = a5[4];
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%u,StopTime,%u\n", v28);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v27 >= 0x28DE81)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v41 = 514;
      v42 = a5[3];
      v40 = (*&g_MacClockTicksToMsRelation * v29);
      v17 = "%10u %s%c %s: #%04hx StartTime,%u\n";
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (v26 >= 0xACB480)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v41 = 514;
      v42 = a5[4];
      v40 = (*&g_MacClockTicksToMsRelation * v30);
      v17 = "%10u %s%c %s: #%04hx StopTime,%u\n";
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v31 = gnssOsa_Calloc("Gnm_RegisterPeriodicFix", 904, 1, 0x48uLL);
  if (v31)
  {
    v32 = v31;
    if (Gnm05_55AssignAppInfo(a2, (v31 + 64)))
    {
      *(v32 + 3) = a1;
      *(v32 + 2) = a3;
      v32[56] = 1;
      v33 = *(a5 + 10);
      if (v33 == 1)
      {
        *(v32 + 3) = *a5;
      }

      else
      {
        *(v32 + 3) = 0;
        if (v33)
        {
          *(v32 + 9) = a5[3];
          v36 = a5[4];
LABEL_48:
          *(v32 + 10) = v36;
          *(v32 + 22) = v33;
          v37 = a5[2];
          if (!v37)
          {
            v37 = 1000;
          }

          *(v32 + 8) = v37;
          v32[48] = v14;
          v32[54] = 2;
          *(v32 + 50) = *(a5 + 22);
          AgpsSendFsmMsg(128, 128, 8391939, v32);
          v21 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v38 = mach_continuous_time();
            v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "GNM", 73, "Gnm_RegisterPeriodicFix");
            LbsOsaTrace_WriteLog(0xBu, __str, v39, 4, 1);
            v21 = 0;
          }

          goto LABEL_20;
        }
      }

      v36 = 0;
      *(v32 + 9) = 0;
      goto LABEL_48;
    }

    free(v32);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "GNM", 73, "Gnm_RegisterPeriodicFix");
    LbsOsaTrace_WriteLog(0xBu, __str, v35, 4, 1);
  }

  v21 = 5;
LABEL_20:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t Gnm_RegisterNmeaUpdates(int a1, const void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_RegisterNmeaUpdates");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NMEAMask,%u,CB,%p\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_RegisterNmeaUpdates", a1, a2);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  if (a1 || !a2)
  {
    v13 = gnssOsa_Calloc("Gnm_RegisterNmeaUpdates", 1008, 1, 0x20uLL);
    if (v13)
    {
      v13[2] = a2;
      *(v13 + 12) = a1;
      AgpsSendFsmMsg(128, 128, 8407552, v13);
      v12 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm_RegisterNmeaUpdates");
        LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
        v12 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm_RegisterNmeaUpdates");
        LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
      }

      v12 = 5;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NMEAMask,%x\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm_RegisterNmeaUpdates", 514, 0);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_RegisterNmeaUpdates");
      v12 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t Gnm_StopPosnReq(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_StopPosnReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm_StopPosnReq", 1048, 1, 0x10uLL);
  if (v4)
  {
    v4[3] = a1;
    AgpsSendFsmMsg(128, 128, 8391683, v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_StopPosnReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
      result = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm_StopPosnReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    result = 5;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_HwInitialize(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_HwInitialize");
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (a3)
  {
    v10 = gnssOsa_Calloc("Gnm_HwInitialize", 1145, 1, 0x20uLL);
    if (v10)
    {
      v10[12] = a1;
      v10[13] = a2;
      *(v10 + 2) = a3;
      *(v10 + 3) = a4;
      AgpsSendFsmMsg(128, 128, 8403456, v10);
      v11 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_HwInitialize");
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
        v11 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm_HwInitialize");
        LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
      }

      v11 = 5;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitStatusCB\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm_HwInitialize", 258);
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm_HwInitialize");
      v11 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
    }

    else
    {
      v11 = 1;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t Gnm_HalStartCnf(int a1, _DWORD *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_HalStartCnf");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_29;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_27:
    v17 = v11;
    v18 = 2;
LABEL_28:
    LbsOsaTrace_WriteLog(0xBu, __str, v17, v18, 1);
    goto LABEL_29;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CBType,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_HalStartCnf", a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  if (a1 > 3)
  {
    if ((a1 - 4) < 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm_HalStartCnf", 1028, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
      if (result)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (a1 == 1)
  {
    v15 = a2;
    v16 = 0;
LABEL_24:
    Gnm00_01HandleRevInfo(v15, v16);
    goto LABEL_29;
  }

  if (a1 == 2)
  {
    v15 = a2;
    v16 = 1;
    goto LABEL_24;
  }

  if (a1 != 3)
  {
LABEL_25:
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_29;
    }

    bzero(__str, 0x410uLL);
    v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", v30);
    goto LABEL_27;
  }

  v8 = *a2;
  if (*a2 == 1 || v8 == 3)
  {
    v22 = gnssOsa_Calloc("Gnm00_02HandleInitStatus", 1270, 1, 0x10uLL);
    if (v22)
    {
      v23 = v22;
      v24 = a2[1];
      if ((v24 - 3) < 0x13)
      {
        *(v22 + 12) = v24 - 1;
        v10 = 8402688;
        v9 = v22;
        goto LABEL_35;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FailStep,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNM", 87, "Gnm00_03MapInitFailReason", 515, v24);
        LbsOsaTrace_WriteLog(0xBu, __str, v28, 2, 1);
      }

      free(v23);
    }

    goto LABEL_41;
  }

  if (v8 != 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitErr,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNM", 87, "Gnm00_02HandleInitStatus", 515, *a2);
      LbsOsaTrace_WriteLog(0xBu, __str, v26, 2, 1);
    }

LABEL_41:
    LODWORD(v9) = 0;
    goto LABEL_42;
  }

  v9 = gnssOsa_Calloc("Gnm00_02HandleInitStatus", 1252, 1, 0xCuLL);
  if (v9)
  {
    v10 = 8392961;
LABEL_35:
    AgpsSendFsmMsg(128, 128, v10, v9);
    goto LABEL_29;
  }

LABEL_42:
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, v9))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "GNM", 73, "Gnm00_02HandleInitStatus");
    v18 = 4;
    goto LABEL_28;
  }

LABEL_29:
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
LABEL_30:
    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v19, "GNM", 73, "Gnm_HalStartCnf");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v20, 4, 1);
  }

LABEL_31:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm00_01HandleRevInfo(_DWORD *a1, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*a1 == 4 && (v4 = gnssOsa_Calloc("Gnm00_01HandleRevInfo", 1180, 1, 0xC4uLL)) != 0)
  {
    v5 = v4;
    v4[192] = a2;
    memcpy_s("Gnm00_01HandleRevInfo", 1188, v4 + 12, 0xB4u, a1 + 1, 0xB4uLL);
    v6 = *MEMORY[0x29EDCA608];

    AgpsSendFsmMsg(128, 128, 8392707, v5);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
  }
}

uint64_t Gnm_ReceiveData(size_t a1, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm_ReceiveData");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 5, 1);
  }

  v6 = gnssOsa_Calloc("Gnm_ReceiveData", 1387, 1, 0x20uLL);
  if (v6)
  {
    v7 = v6;
    v8 = gnssOsa_Calloc("Gnm_ReceiveData", 1395, 1, a1);
    v7[2] = v8;
    if (v8)
    {
      memcpy_s("Gnm_ReceiveData", 1403, v8, a1, a2, a1);
      *(v7 + 12) = a1;
      AgpsSendFsmMsg(128, 128, 8393475, v7);
    }

    else
    {
      free(v7);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 68, "Gnm_ReceiveData");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v11, 5, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_HardwareStatusNotif (int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_HardwareStatusNotif");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm_HardwareStatusNotif", 1429, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 3) = a1;
    if (a1 == 8)
    {
      GncP16_51MEPowerStateInd(7);
    }

    AgpsSendFsmMsg(128, 128, 8393731, v5);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_HardwareStatusNotif");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_HalStopCnf(int a1, _DWORD *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_HalStopCnf");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_11;
  }

  if ((a1 - 1) >= 3)
  {
    if (a1 == 4)
    {
      v11 = gnssOsa_Calloc("Gnm_HalStopCnf", 1501, 1, 0x10uLL);
      v12 = v11;
      if (v11)
      {
        v11[12] = *a2 == 6;
        AgpsSendFsmMsg(128, 128, 8393217, v11);
        v12 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, v12);
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (a1 != 5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm_HalStopCnf", 515, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", v15);
LABEL_11:
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
  }

LABEL_12:
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
LABEL_13:
    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v8, "GNM", 73, "Gnm_HalStopCnf");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_SetSideBandConfig(char a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_SetSideBandConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (a1 < 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqId,%u\n", v26);
    goto LABEL_9;
  }

  if ((a2 - 0x2000) <= 0xFFFFE000)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgValMask,0x%X\n", v25);
    goto LABEL_9;
  }

  if ((a2 & 1) != 0 && a3 >= 3u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgValMask,0x%X,LegacyFta,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm_SetSideBandConfig", 514, a2, a3);
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if ((a2 & 2) != 0 && (a3 & 0xFE00) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE1(a3);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,EFreqAid,%u\n";
LABEL_88:
      v10 = snprintf(__str, 0x40FuLL, v19, v18, "GNM", 87, "Gnm_SetSideBandConfig", v27, v28, v29);
LABEL_9:
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ((a2 & 4) != 0 && (a3 & 0xFE0000) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE2(a3);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,StaticSpurCan,%u\n";
      goto LABEL_88;
    }

LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
LABEL_11:
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "GNM", 73, "Gnm_SetSideBandConfig");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
      goto LABEL_18;
    }

LABEL_17:
    v13 = 1;
    goto LABEL_18;
  }

  if ((a2 & 8) != 0 && (a3 & 0xFE000000) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE3(a3);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,DynamicSpurCan,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x10) != 0 && (a3 & 0xFE00000000) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE4(a3);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,JammerDetect,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x20) != 0 && BYTE5(a3) >= 3u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE5(a3);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,LegacyBlnk,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x40) != 0 && (a3 & 0xFE000000000000) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE6(a3);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,EBlankGpsGalBds3,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x80) != 0 && a3 >> 57)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v28 = a2;
      v29 = HIBYTE(a3);
      v27 = 514;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,EBlankGlo,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x100) != 0 && (a4 & 0xFE) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = a4;
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,EBlankBds2,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x200) != 0 && (a4 & 0xFE00) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE1(a4);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,ForceFilter,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x400) != 0 && (a4 & 0xF00000) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = BYTE2(a4);
      v27 = 514;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,GpsGalBds3FilterMsk,0x%X\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x800) != 0 && (BYTE3(a4) > 0xFu || ((a4 >> 24) & 5) != 0))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v28 = a2;
      v29 = BYTE3(a4);
      v27 = 514;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,GloFilterMsk,0x%X\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if (a2 >= 0x1000 && (BYTE4(a4) > 0xFu || (a4 & 0x100000000) != 0))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v28 = a2;
      v29 = BYTE4(a4);
      v27 = 514;
      v19 = "%10u %s%c %s: #%04hx CfgValMask,0x%X,Bds2FilterMsk,0x%X\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x20) != 0 && (a3 & 0xFF0000000000) == 0x10000000000 && ((((a3 & 0xFF000000000000) == 0x1000000000000) & (a2 >> 6)) != 0 || ((HIBYTE(a3) == 1) & (a2 >> 7)) != 0 || (a2 & 0x100) != 0 && a4 == 1 || (a2 & 0x400) != 0 && (a4 & 0xFF0000) != 0 || (a2 & 0x800) != 0 && (a4 & 0xFF000000) != 0 || a2 >= 0x1000 && (a4 & 0xFF00000000) != 0 || (a2 & 0x200) != 0 && (a4 & 0xFF00) == 0x100))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = 1;
      v27 = 515;
      v28 = a2;
      v19 = "%10u %s%c %s: #%04hx BLANKING EN Conflict,CfgValMask,0x%X,LegacyBlnk,%u\n";
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  v20 = gnssOsa_Calloc("Gnm_SetSideBandConfig", 1695, 1, 0x24uLL);
  if (v20)
  {
    v20[12] = a1;
    *(v20 + 20) = a3;
    *(v20 + 7) = a4;
    v20[32] = BYTE4(a4);
    *(v20 + 4) = a2;
    AgpsSendFsmMsg(128, 128, 8407043, v20);
    v13 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 73, "Gnm_SetSideBandConfig");
      LbsOsaTrace_WriteLog(0xBu, __str, v22, 4, 1);
      v13 = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "GNM", 73, "Gnm_SetSideBandConfig");
      LbsOsaTrace_WriteLog(0xBu, __str, v24, 4, 1);
    }

    v13 = 5;
  }

LABEL_18:
  v16 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t Gnm_RegisterPowerReportCb(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_RegisterPowerReportCb");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("Gnm_RegisterPowerReportCb", 1786, 1, 0x28uLL);
    if (v4)
    {
      v4[3] = a1;
      AgpsSendFsmMsg(128, 128, 8391427, v4);
      v5 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_RegisterPowerReportCb");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
        v5 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_RegisterPowerReportCb");
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
      }

      v5 = 5;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm_RegisterPowerReportCb", 513);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_RegisterPowerReportCb");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    else
    {
      v5 = 1;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Gnm_SetPowerReport(char a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_SetPowerReport");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm_SetPowerReport", 1827, 1, 0x10uLL);
  if (v4)
  {
    v4[12] = a1;
    AgpsSendFsmMsg(128, 128, 8406528, v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_SetPowerReport");
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
      result = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm_SetPowerReport");
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    result = 5;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_InitializeConn(void)
{
  v36 = *MEMORY[0x29EDCA608];
  g_CommsNtfCb = Hal22_TransportAdaptNtf;
  if (g_IsProdMode == 1)
  {
    Hal02_SetProdRouteZxData();
  }

  if (gp_Comm && (*(*gp_Comm + 72))(gp_Comm))
  {
    if (!Hal_SetReadCbAsync(Hal02_AsyncReadCb))
    {
LABEL_47:
      result = 0xFFFFFFFFLL;
      goto LABEL_48;
    }

    v0 = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Read Cb set\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 65, "Hal22_InitializeConn");
      LbsOsaTrace_WriteLog(0xDu, __str, v2, 1, 1);
    }
  }

  else
  {
    v0 = 0;
  }

  if (!Hal_CommsItfInitialize())
  {
    goto LABEL_47;
  }

  if ((g_HwProduct & 0xFFFFFFFB) == 0)
  {
    v15 = 1;
    *v35 = 0x7F7F7F7F00000000;
    while (1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: iter,%u\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 73, "Hal22_CheckAutoBaud", v15);
        LbsOsaTrace_WriteLog(0xDu, __str, v17, 4, 1);
      }

      if (Hal_CommsItfWriteData(v35, 8) == 8)
      {
        break;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_45:
        LbsOsaTrace_WriteLog(0xDu, __str, v20, 0, 1);
      }

LABEL_46:
      if (++v15 == 4)
      {
        goto LABEL_47;
      }
    }

    usleep(0x2710u);
    Data = Hal_CommsItfReadData(v34, 8u);
    if (Data != 8)
    {
      LODWORD(v21) = Data;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "HAL", 65, "Hal22_CheckAutoBaud", 1310);
        LbsOsaTrace_WriteLog(0xDu, __str, v23, 1, 1);
      }

      if (v21 >= 1)
      {
        v21 = v21;
        v24 = v34;
        do
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 0X%X\n", (*&g_MacClockTicksToMsRelation * v25), "HAL", 68, "Hal22_CheckAutoBaud", *v24);
            LbsOsaTrace_WriteLog(0xDu, __str, v26, 5, 1);
          }

          ++v24;
          --v21;
        }

        while (v21);
      }

      goto LABEL_46;
    }

    v19 = 0;
    while (v34[v19] == 77)
    {
      if (++v19 == 8)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v30), "HAL", 65, "Hal22_CheckAutoBaud", 1309);
          LbsOsaTrace_WriteLog(0xDu, __str, v31, 1, 1);
        }

        goto LABEL_11;
      }
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_46;
    }

    bzero(__str, 0x410uLL);
    v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v32 = v34[v19];
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx resp,%c\n", v27);
    goto LABEL_45;
  }

LABEL_11:
  if (!gnssOsa_SemInit(&g_HandleAckSem, 0))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = __error();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v12, "HAL", 69, "Hal22_InitializeConn", 1539, *v13);
      LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
    }

    goto LABEL_47;
  }

  if ((v0 & 1) == 0)
  {
    if (!gnssOsa_CreateThread("Hal22_InitializeConn", 150, &g_HalRdrThrd, 0, Hal02_07ChipRead, 0, 0, 0, 99))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = __error();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RdrThrd err,%d\n", v3, "HAL", 69, "Hal22_InitializeConn", 1554, *v4);
        LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
      }

      if (!gnssOsa_DeinitCountingSem(&g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = __error();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v6, "HAL", 69, "Hal22_InitializeConn", 1540, *v7);
        LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RdrThrd ON\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 65, "Hal22_InitializeConn");
      LbsOsaTrace_WriteLog(0xDu, __str, v10, 1, 1);
    }
  }

  Hal26_InitLowPowerContext();
  result = 0;
LABEL_48:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_TransportAdaptNtf(uint64_t result)
{
  v1 = result;
  v11 = *MEMORY[0x29EDCA608];
  if (result <= 1)
  {
    if (!result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ntf TransErr\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 69, "Hal22_TransportAdaptNtf", 1302);
        v4 = 0;
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    if (result == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
    if (off_2A19268B0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 68, "Hal22_TransportAdaptNtf", 1315);
        LbsOsaTrace_WriteLog(0xDu, __str, v8, 5, 1);
      }

      result = off_2A19268B0(1);
    }

    goto LABEL_18;
  }

  if (result != 3)
  {
LABEL_9:
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NtfType,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal22_TransportAdaptNtf", 515, v1);
      v4 = 2;
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "Hal22_TransportAdaptNtf", 1316);
    v4 = 5;
LABEL_13:
    result = LbsOsaTrace_WriteLog(0xDu, __str, v3, v4, 1);
  }

LABEL_18:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_DeInitializeConn(void)
{
  v9 = *MEMORY[0x29EDCA608];
  Hal_CommsItfDeInitialize();
  if (pthread_join(g_HalRdrThrd, 0) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v1 = __error();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RdrThrd err,%d\n", v0, "HAL", 69, "Hal22_DeInitializeConn", 1555, *v1);
    LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
  }

  if (!gnssOsa_DeinitCountingSem(&g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = __error();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v3, "HAL", 69, "Hal22_DeInitializeConn", 1540, *v4);
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
  }

  Hal02_DeInitParser();
  result = Hal26_DeInitLowPowerContext();
  g_HalState = 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_ZxSendToChip(unsigned __int8 *a1, size_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x801)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx inpLen\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 87, "Hal22_ZxSendToChip", 514);
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 2, 1);
    }

    goto LABEL_25;
  }

  v4 = a2;
  v7 = (a2 & 3) != 0 && (g_HwProduct - 1) < 3;
  if (v7)
  {
    v8 = (a2 & 0xFFC) + 4;
    v9 = gnssOsa_Calloc("Hal22_ZxSendToChip", 223, 1, v8);
    if (!v9)
    {
LABEL_25:
      LOWORD(v4) = -1;
      goto LABEL_26;
    }

    v10 = v9;
    memcpy_s("Hal22_ZxSendToChip", 227, v9, v8, a1, v4);
    v4 = v8;
    a1 = v10;
  }

  for (i = 0; i < 3; i += (v12 >> 31) + 1)
  {
    v12 = Hal_CommsItfWriteData(a1, v4);
    if (v12 == v4)
    {
      v18 = !v7;
      if (!a1)
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        free(a1);
      }

      goto LABEL_26;
    }
  }

  LODWORD(v4) = v12;
  v13 = !v7;
  if (!a1)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    free(a1);
  }

  if (v4 == 0xFFFF)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Hw transport fail\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 69, "Hal22_ZxSendToChip", 1282);
      LbsOsaTrace_WriteLog(0xDu, __str, v15, 0, 1);
    }

    if (g_HalCallbacks)
    {
      g_HalCallbacks(9);
    }

    goto LABEL_25;
  }

LABEL_26:
  v16 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Hal22_GetHwRevisionAfterInit(int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal22_GetHwRevisionAfterInit");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  result = Hal15_ReadHwRevision(80);
  if (result)
  {
    v5 = 16;
LABEL_9:
    *a1 = v5;
    goto LABEL_10;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal22_GetHwRevisionAfterInit", 1285);
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
  }

  result = Hal15_ReadHwRevision(77);
  if (result)
  {
    v5 = 17;
    goto LABEL_9;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal22_GetHwRevisionAfterInit", 1285);
    LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
    result = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_GetHwRevision(int *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  result = Hal15_ReadHwRevision(80);
  if (result)
  {
    v3 = 16;
LABEL_7:
    *a1 = v3;
    goto LABEL_8;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal22_GetHwRevision", 1285);
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
  }

  result = Hal15_ReadHwRevision(77);
  if (result)
  {
    v3 = 17;
    goto LABEL_7;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal22_GetHwRevision", 1285);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 4, 1);
    result = 0;
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP19_01ResetCB(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP19_01ResetCB", 51, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    if (a1 == 7)
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }

    v2[3] = v4;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HOST_RESET_CB_IND =>GNCP Stat,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP19_01ResetCB", v3[3]);
      LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8790531, v3);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void GncP19_02TrigHWReset(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP19_02TrigHWReset", 78, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP19_02TrigHWReset");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8784896, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t GncP19_03HandleResetStatusInd(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HOST_RESET_CB_IND Status,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP19_03HandleResetStatusInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (g_MEResetInfo == 1)
    {
      if (AgpsFsmStopTimer(8790022) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP19_03HandleResetStatusInd", 1545);
        LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      }

      g_MEResetInfo = 0;
    }

    if (*(a1 + 12) == 7)
    {
      GncP16_28UpdateStateResetStatus(1);
    }

    else
    {
      GncP16_28UpdateStateResetStatus(2);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWError\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP19_03HandleResetStatusInd", 1306);
        LbsOsaTrace_WriteLog(8u, __str, v9, 0, 1);
      }

      GncP19_02TrigHWReset();
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP19_03HandleResetStatusInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP19_04MEResetTimerExpiry(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gnss BBReset NoResp\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP19_04MEResetTimerExpiry", 1305);
    LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
  }

  if (g_MEResetInfo == 1)
  {
    g_MEResetInfo = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWError\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP19_04MEResetTimerExpiry", 1306);
      LbsOsaTrace_WriteLog(8u, __str, v3, 0, 1);
    }

    GncP19_02TrigHWReset();
    GncP16_28UpdateStateResetStatus(3);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t GncP19_05HandleHWStatusInd(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP19_05HandleHWStatusInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (g_MEResetInfo == 1)
    {
      if (AgpsFsmStopTimer(8790022) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP19_05HandleHWStatusInd", 1545);
        LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      }

      g_MEResetInfo = 0;
    }

    v6 = *(a1 + 12);
    if (v6 == 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HW Reset ongoing\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "GncP19_05HandleHWStatusInd");
        LbsOsaTrace_WriteLog(8u, __str, v11, 0, 1);
      }

      v7 = 3;
    }

    else if (v6 == 1)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    GncP16_28UpdateStateResetStatus(v7);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP19_05HandleHWStatusInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v9, 0, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP19_09CommsLPAckCB(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a1)
    {
      v3 = 84;
    }

    else
    {
      v3 = 70;
    }

    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c\n", v2, "GNC", 73, "GncP19_09CommsLPAckCB", v3);
    LbsOsaTrace_WriteLog(8u, __str, v4, 4, 1);
  }

  GncP04_19SendPosEvntResp(3);
  v5 = *MEMORY[0x29EDCA608];
}

void GncP19_10SndMEInActiveInd(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNCP=>HAL ME Inactivity Ind\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncP19_10SndMEInActiveInd");
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  Hal_NotifyMEInActiveStat(GncP19_09CommsLPAckCB);
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t GncP08_03HandleHardReset(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_MEResetInfo == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW Error\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 69, "GncP08_03HandleHardReset", 1306);
      LbsOsaTrace_WriteLog(8u, __str, v1, 0, 1);
    }

    GncP19_02TrigHWReset();
  }

  else
  {
    g_MEResetInfo = 1;
    GncP16_28UpdateStateResetStatus(0);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME GNSSBBReset Trig\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP08_03HandleHardReset", 1303);
      LbsOsaTrace_WriteLog(8u, __str, v3, 0, 1);
    }

    Hal_GnssBaseBandReset(GncP19_01ResetCB);
    if ((g_MEResetInfo & 1) == 0)
    {
      if (AgpsFsmStartTimer(0x862006u, 0x2BCu))
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v4 = mach_continuous_time();
          v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP08_03HandleHardReset", 1544, 700);
          LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
        }
      }

      else
      {
        g_MEResetInfo = 1;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

double *NK_Decay_Speed(double *result, int a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = 1000 * result;
  v5 = *(a4 + 11032);
  if (v5 * a2 > 1000 * result)
  {
    v7 = *(a3 + 312);
    if (result && v5 <= 0x3E7 && v7 > 0.001)
    {
      v8 = 1.0 - (v5 * a2 - 1000 * result) * (v5 * a2 - 1000 * result) / ((v5 * a2 + v4) * (v5 * a2 + v4));
      v9 = *(a4 + 11024);
      if (v9)
      {
        v8 = v8 / (1.0 - (v9 * a2 - v4) * (v9 * a2 - v4) / ((v9 * a2 + v4) * (v9 * a2 + v4)));
      }

      v10 = v8 * v8;
      *(a4 + 11024) = v5;
      v11 = (a3 + 80);
      for (i = 4; i > 1; --i)
      {
        *v11 = v10 * *v11;
        --v11;
      }

      v7 = *(a3 + 312);
      v13 = *(a4 + 296) - v7 * v10;
    }

    else
    {
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      v13 = *(a4 + 296);
    }

    if (v7 > *(a4 + 104))
    {
      v14 = 0;
      v15 = v13 * v13 * 0.0555555556;
      v16 = (a3 + 224);
      v17 = 3;
      v18 = 0uLL;
      do
      {
        v22[2] = v18;
        v22[3] = v18;
        v22[0] = v18;
        v22[1] = v18;
        v22[4] = *(v16 - 1);
        v23 = *v16;
        if (v17 == 1)
        {
          v15 = v15 * *(a4 + 120);
        }

        v19 = 0;
        v21 = 0;
        if (v15 > 0.0)
        {
          result = rnk1_core((a4 + 344), 0xBu, v15, v22, &v21);
          v18 = 0uLL;
          v19 = v21 != 0;
        }

        v14 += v19;
        v16 += 3;
        --v17;
      }

      while (v17);
      if (v14)
      {
        *(a4 + 132) = 11;
        *(a4 + 128) = 1;
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(gnssTest::GnssAdaptDeviceTest *this, uint64_t a2, unsigned __int8 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid write PL\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga24_01SendDataToChip", 513);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
    }

    goto LABEL_9;
  }

  v3 = off_2A1939588;
  if (!off_2A1939588)
  {
LABEL_9:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = *MEMORY[0x29EDCA608];

  v3(a2, a3);
}

void gnssTest::GnssAdaptDeviceTest::Ga24_02GetHalConnStatus(gnssTest::GnssAdaptDeviceTest *a1, int *a2)
{
  v3 = a1;
  v24 = *MEMORY[0x29EDCA608];
  GnssAdaptDeviceTestInstance = gnssTest::GnssAdaptDeviceTest::Ga21_06GetGnssAdaptDeviceTestInstance(a1);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga24_03DeviceStatusRspHndlr");
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  if (a2)
  {
    v7 = *a2;
    v8 = *(GnssAdaptDeviceTestInstance + 56);
    *__str = MEMORY[0x29EDCA5F8];
    v18 = 0x40000000;
    v19 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke;
    v20 = &__block_descriptor_tmp_13;
    v21 = GnssAdaptDeviceTestInstance;
    v22 = v3;
    v23 = v7;
    dispatch_async(v8, __str);
  }

  else
  {
    v9 = *(GnssAdaptDeviceTestInstance + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v18 = 0x40000000;
    v19 = ___ZN8gnssTest19GnssAdaptDeviceTest30Ga21_08UpdateGnssTestDevStatusEb_block_invoke;
    v20 = &__block_descriptor_tmp_62;
    v21 = GnssAdaptDeviceTestInstance;
    LOBYTE(v22) = 0;
    dispatch_sync(v9, __str);
    std::string::basic_string[abi:ne200100]<0>(__p, "Ga24_03DeviceStatusRspHndlr");
    gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(GnssAdaptDeviceTestInstance, __p, 8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga24_03DeviceStatusRspHndlr", 769, v3);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga24_03DeviceStatusRspHndlr");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2995EE160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Init status,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 65, "Ga24_03DeviceStatusRspHndlr_block_invoke", *(a1 + 44));
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 1, 1);
      }

      if (*(a1 + 44) == 2)
      {
        v15 = *(v2 + 72);
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 0x40000000;
        v22[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke_3;
        v22[3] = &__block_descriptor_tmp_9_0;
        v22[4] = v2;
        dispatch_sync(v15, v22);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Patch Dwld Successful\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 65, "Ga24_03DeviceStatusRspHndlr_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v17, 1, 1);
        }
      }

      else
      {
        v18 = *(v2 + 72);
        *__str = MEMORY[0x29EDCA5F8];
        v25 = 0x40000000;
        v26 = ___ZN8gnssTest19GnssAdaptDeviceTest30Ga21_08UpdateGnssTestDevStatusEb_block_invoke;
        v27 = &__block_descriptor_tmp_62;
        v28 = v2;
        v29 = 0;
        dispatch_sync(v18, __str);
        std::string::basic_string[abi:ne200100]<0>(__p, "Ga24_03DeviceStatusRspHndlr_block_invoke");
        gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(v2, __p, 8);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (v3 != 4)
      {
LABEL_12:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Init CB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga24_03DeviceStatusRspHndlr_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
        }

        goto LABEL_23;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: De-Init Completed\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 65, "Ga24_03DeviceStatusRspHndlr_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 1, 1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v4 = mach_continuous_time();
          v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Init Completed\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 65, "Ga24_03DeviceStatusRspHndlr_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v5, 1, 1);
        }

        if (*(a1 + 44) == 4)
        {
          v6 = *(v2 + 48);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 0x40000000;
          block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke_2;
          block[3] = &__block_descriptor_tmp_4;
          block[4] = v2;
          dispatch_async(v6, block);
        }

        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Read Rev. before init\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "Ga24_03DeviceStatusRspHndlr_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
    }
  }

LABEL_23:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2995EE694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  gnssTest::GnssAdaptDeviceTest::Ga22_01TriggerProdIndReq(v1);
  gnssTest::GnssAdaptDeviceTest::Ga22_03TriggerCpMeRomCsReq(v1);
  if (gnssTest::GnssAdaptDeviceTest::Ga22_08InjectLtlTable(v1) != 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL Inject Failed\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 87, "Ga24_03DeviceStatusRspHndlr_block_invoke_2", 257);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 2, 1);
  }

  StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(v1);
  v5 = *(v1 + 72);
  *__str = MEMORY[0x29EDCA5F8];
  v10 = 0x40000000;
  v11 = ___ZN8gnssTest19GnssAdaptDeviceTest30Ga21_08UpdateGnssTestDevStatusEb_block_invoke;
  v12 = &__block_descriptor_tmp_62;
  v13 = v1;
  v14 = StatusCode == 1;
  dispatch_sync(v5, __str);
  std::string::basic_string[abi:ne200100]<0>(__p, "Ga24_03DeviceStatusRspHndlr_block_invoke_2");
  gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(v1, __p, StatusCode);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_2995EE85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke_3(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 128) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga24_04ReceiveProdData(gnssTest::GnssAdaptDeviceTest *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = this;
  v20 = *MEMORY[0x29EDCA608];
  GnssAdaptDeviceTestInstance = gnssTest::GnssAdaptDeviceTest::Ga21_06GetGnssAdaptDeviceTestInstance(this);
  if (v4 && a2)
  {
    v6 = GnssAdaptDeviceTestInstance;
    *__str = 0;
    v13 = __str;
    v14 = 0x4002000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v17, a2, a2 + v4, v4);
    v7 = *(v6 + 56);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke;
    block[3] = &unk_29EF51C98;
    block[4] = __str;
    block[5] = v6;
    dispatch_async(v7, block);
    _Block_object_dispose(__str, 8);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx rawData or len\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga24_05HandleZxPacket", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__1(uint64_t a1)
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

void ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  memset(&v33, 0, sizeof(v33));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(v3 + 40), *(v3 + 48), *(v3 + 48) - *(v3 + 40));
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(v2 + 140, &__p, &v33);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v6 = &v33;
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v33.__r_.__value_.__r.__words[0];
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ZxSize,%lu,ZxRsp,%s\n", v4, "ADP", 73, "Ga24_05HandleZxPacket_block_invoke", size, v6);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
  }

  ZxTestType = gnssTest::ZxFactoryHandler::Ga23_01GetZxTestType(v2 + 140, (*(*(a1 + 32) + 8) + 40), &v29);
  if (ZxTestType > 1)
  {
    if (ZxTestType != 2)
    {
      if (ZxTestType == 3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown Zx Msg\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
      }

      goto LABEL_59;
    }

    if (v29 <= 1u)
    {
      if (!v29)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_02HandleProdIndicationRsp(v2, (*(*(a1 + 32) + 8) + 40));
        goto LABEL_59;
      }

      if (v29 == 1)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_17HandleCommPingRsp(v2, (*(*(a1 + 32) + 8) + 40));
        goto LABEL_59;
      }
    }

    else
    {
      switch(v29)
      {
        case 2u:
          gnssTest::GnssAdaptDeviceTest::Ga22_22HandleApSignalGpioRsp(v2, (*(*(a1 + 32) + 8) + 40));
          goto LABEL_59;
        case 3u:
          if (!gnssOsa_SemRelease(*(v2 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = *&g_MacClockTicksToMsRelation;
            v21 = __error();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v20 * v19), "ADP", 87, "Ga24_05HandleZxPacket_block_invoke", 1542, *v21);
            LbsOsaTrace_WriteLog(0x18u, __str, v22, 2, 1);
          }

          goto LABEL_59;
        case 0xFFu:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Zx mesg resp\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 770);
            LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
          }

          goto LABEL_59;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GenMsgType,%uuh\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 770, v29);
      LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
    }

    goto LABEL_59;
  }

  if (ZxTestType)
  {
    if (ZxTestType != 1)
    {
      goto LABEL_59;
    }

    v9 = (v29 - 1);
    if (v9 <= 0x3F)
    {
      if (((1 << (v29 - 1)) & 0x8000000080008089) != 0)
      {
        goto LABEL_59;
      }

      if (v9 == 1)
      {
        v10 = 0;
LABEL_25:
        gnssTest::GnssAdaptDeviceTest::Ga22_04HandleCpMeRomCsRsp(v2, (*(*(a1 + 32) + 8) + 40), v10);
        goto LABEL_59;
      }
    }

    if (v29 != 128 && v29 != 1024 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpTestType,%d\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 257, 1);
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
    }
  }

  else if (v29 > 4u)
  {
    if (v29 > 0x15u)
    {
      if (v29 == 22)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_26HandleTimeMarkRsp(v2, (*(*(a1 + 32) + 8) + 40));
        goto LABEL_59;
      }

      if (v29 == 255)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v29 == 5)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_13HandleLtlRsp(v2, (*(*(a1 + 32) + 8) + 40));
        goto LABEL_59;
      }

      if (v29 == 21)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_20HandleMePowerModeRsp(v2, (*(*(a1 + 32) + 8) + 40));
        goto LABEL_59;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeTestType,%d\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 515, 0);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }
  }

  else if (v29 <= 2u && v29)
  {
    if (v29 != 1)
    {
      v10 = 1;
      goto LABEL_25;
    }

    *__str = 0;
    v35 = __str;
    v36 = 0x2000000000;
    v37 = 0;
    v25 = *(v2 + 72);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke_2;
    block[3] = &unk_29EF51C70;
    block[4] = __str;
    block[5] = v2;
    dispatch_sync(v25, block);
    v26 = v35[24];
    if (v26 < 2)
    {
      gnssTest::GnssAdaptDeviceTest::Ga22_15HandleCwModulatedRsp(v2, (*(*(a1 + 32) + 8) + 40), v26);
    }

    _Block_object_dispose(__str, 8);
  }

LABEL_59:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x29EDCA608];
}

void sub_2995EF2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 136);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP03_03EncSendGMH(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset_s(&g_GncPTxStream, 0x800uLL, 0, 0x800uLL);
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  PlcHwType = GncP05_62GetPlcHwType();
  plc00_05EncodeMsg(0, v19, a4, &g_GncPTxStream, 2048, &v18, &v22, PlcHwType);
  if (v22)
  {
    if (IsLoggingAllowed == 1)
    {
      if (!plc00_15GetExtErrAsString(&v22, __s, 0x104uLL) || !LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%c,MID,%c,MIDE,%u,Err,%s\n", v9, "GNC", 87, "GncP03_03EncSendGMH");
      goto LABEL_11;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%c,MID,%c,MIDE,%u\n", v13, "GNC", 87);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = v18;
    if (v18 > 8u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNCP=>ME %x,%x,%x,%x,%x,%x,%x,%x\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 68, "GncP03_03EncSendGMH", g_GncPTxStream, byte_2A196F6B5, byte_2A196F6B6, byte_2A196F6B7, byte_2A196F6B8, byte_2A196F6B9, byte_2A196F6BA, byte_2A196F6BB);
        LbsOsaTrace_WriteLog(8u, __str, v17, 5, 1);
      }

      if (off_2A1939588)
      {
        off_2A1939588(v11, &g_GncPTxStream);
        goto LABEL_13;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Encoded,%u,Min,%u\n", v12);
LABEL_11:
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }
  }

LABEL_12:
  v11 = 0;
LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

void GncP03_10SndNewUpdtSM(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP03_10SndNewUpdtSM", 140, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP03_10SndNewUpdtSM");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 130, 8790787, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncP03_12SendUpdtCfg(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP03_12SendUpdtCfg", 162, 1, 0x14uLL);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      *(v4 + 7) = *a1;
      v4[12] |= 1u;
    }

    if (a2)
    {
      *(v4 + 8) = *a2;
      v4[12] |= 2u;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDT_IND =>GNCS ValidMask,%u,NmeaMask,%u,UpdtInt,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP03_12SendUpdtCfg", v5[12], *(v5 + 7), *(v5 + 8));
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(134, 130, 8791043, v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void GncP03_13SendStopFWActResp(char a1, char a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP03_13SendStopFWActResp", 195, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[12] = a2;
    v4[13] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP =>GNM Activity,%hhu,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP03_13SendStopFWActResp", v5[12], v5[13]);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8785668, v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t GncP03_14SendDeRegGnssReq(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_DeRegGnssCount >= 4u)
  {
    snprintf(__str, 0x400uLL, "ASSERT: %s %d Max Attempts De-Register GNSS", "GncP03_14SendDeRegGnssReq", 221);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__s, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "GncP03_14SendDeRegGnssReq", __str);
      LbsOsaTrace_WriteLog(0xEu, __s, v9, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GncP03_14SendDeRegGnssReq", "gncpe03Tx.cpp", 222, "false && De-Register GNSS Failed");
  }

  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  __s[0] = a1;
  __s[1] = a2;
  result = GncP03_03EncSendGMH(0x42u, 0x73u, 0x50u, __s);
  if (result)
  {
    ++g_DeRegGnssCount;
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SleepTO,%u,ExpSleepDur,%u,Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP03_14SendDeRegGnssReq", a1, a2, g_DeRegGnssCount);
      result = LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Encode_SVid_STE(uint64_t result, uint64_t a2, char *a3)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result <= 2)
  {
    if (!result)
    {
      goto LABEL_15;
    }

    if (result != 1)
    {
      if (result == 2)
      {
        result = (a2 + 8);
        v4 = 4;
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_14:
      EvCrt_Illegal_Default("Encode_SVid_STE", 0x60u);
      result = 0;
LABEL_15:
      v4 = 0;
      if (!a3)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v4 = 1;
  }

  else
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        result = (a2 + 64);
        v4 = 5;
        if (!a3)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = (a2 + 128);
        v4 = 6;
        if (!a3)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }

    if (result != 5)
    {
      if (result == 6)
      {
        v4 = 2;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v4 = 3;
  }

LABEL_21:
  result = a2;
  if (a3)
  {
LABEL_22:
    *a3 = v4;
  }

LABEL_23:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_SVid_STE(uint64_t a1, int a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (a2 == 1 && (a1 - 1) <= 0x1Fu)
  {
    v3 = 1;
LABEL_10:
    *a3 = v3;
    v4 = a1;
    goto LABEL_11;
  }

  if (a2 == 2 && (a1 - 120) <= 0x26u)
  {
    v3 = 6;
    goto LABEL_10;
  }

  if (a2 == 3 && (a1 + 63) <= 9u)
  {
    v3 = 5;
    goto LABEL_10;
  }

  if (a2 == 4 && (a1 - 1) <= 0xDu)
  {
    *a3 = 2;
    v4 = (a1 - 8);
  }

  else if (a2 == 5 && (a1 - 65) <= 0x23u)
  {
    *a3 = 3;
    v4 = (a1 - 64);
  }

  else
  {
    v4 = 0;
    if (a2 == 6 && (a1 + 127) <= 0x24u)
    {
      *a3 = 4;
      v4 = (a1 - 128);
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t FN_GNSS_To_Nav_Soln(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  v23 = 0;
  memset(v24, 0, 14);
  *a2 = 0u;
  *(a2 + 14) = *(v24 + 6);
  *(a2 + 22) = 0;
  *(a2 + 24) = 0;
  memcpy((a2 + 25), __src, 0x120uLL);
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
  *(a2 + 553) = 0;
  memcpy((a2 + 554), v21, 0x198uLL);
  *(a2 + 962) = *(&v20[1] + 8);
  *(a2 + 978) = *(&v20[2] + 1);
  *(a2 + 986) = v20[0];
  *(a2 + 1002) = *&v20[1];
  *(a2 + 1010) = 0;
  *(a2 + 1014) = 0;
  v4 = *(a1 + 40);
  *a2 = vrev64_s32(*(a1 + 32));
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 48);
  *(a2 + 20) = *(a1 + 52);
  *(a2 + 22) = *(a1 + 54);
  *(a2 + 24) = *(a1 + 1);
  v5 = *(a1 + 208);
  *(a2 + 208) = *(a1 + 224);
  *(a2 + 192) = v5;
  v6 = *(a1 + 320);
  *(a2 + 232) = *(a1 + 336);
  *(a2 + 216) = v6;
  *(a2 + 240) = *(a1 + 344);
  *(a2 + 256) = *(a1 + 360);
  *(a2 + 28) = *(a1 + 4);
  *(a2 + 36) = *(a1 + 12);
  v7 = *(a1 + 912);
  v9 = *(a1 + 880);
  v8 = *(a1 + 896);
  *(a2 + 104) = *(a1 + 864);
  *(a2 + 120) = v9;
  *(a2 + 136) = v8;
  *(a2 + 152) = v7;
  v10 = *(a1 + 800);
  v11 = *(a1 + 816);
  v12 = *(a1 + 848);
  *(a2 + 72) = *(a1 + 832);
  *(a2 + 56) = v11;
  *(a2 + 40) = v10;
  *(a2 + 88) = v12;
  *(a2 + 160) = *(a1 + 144);
  *(a2 + 176) = *(a1 + 160);
  v13 = *(a1 + 1496);
  v14 = *(a1 + 1528);
  *(a2 + 280) = *(a1 + 1512);
  *(a2 + 296) = v14;
  *(a2 + 264) = v13;
  *(a2 + 552) = *(a1 + 462);
  *(a2 + 312) = *(a1 + 468);
  *(a2 + 328) = *(a1 + 484);
  *(a2 + 344) = *(a1 + 500);
  *(a2 + 360) = *(a1 + 516);
  *(a2 + 376) = *(a1 + 532);
  *(a2 + 392) = *(a1 + 548);
  *(a2 + 408) = *(a1 + 580);
  *(a2 + 424) = *(a1 + 596);
  *(a2 + 440) = *(a1 + 612);
  *(a2 + 456) = *(a1 + 628);
  *(a2 + 472) = *(a1 + 660);
  *(a2 + 488) = *(a1 + 676);
  *(a2 + 504) = *(a1 + 692);
  *(a2 + 520) = *(a1 + 708);
  *(a2 + 536) = *(a1 + 724);
  memcpy((a2 + 560), (a1 + 1592), 0x180uLL);
  v15 = *(a1 + 1976);
  *(a2 + 960) = *(a1 + 1992);
  *(a2 + 944) = v15;
  v16 = *(a1 + 2016);
  *(a2 + 968) = *(a1 + 2000);
  *(a2 + 984) = v16;
  v17 = *(a1 + 2040);
  *(a2 + 992) = *(a1 + 2024);
  *(a2 + 1008) = v17;
  v18 = *MEMORY[0x29EDCA608];
  return 1;
}