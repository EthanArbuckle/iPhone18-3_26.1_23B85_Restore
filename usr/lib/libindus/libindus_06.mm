void sub_298F6B290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](a1 + 80, a2 + 80);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](a1 + 80);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setThermalRiskState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a4);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 7, v7, "setThermalRiskState");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setThermalRiskState", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298F6B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setPowerReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v9, a2);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v9);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setPowerReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPowerReport_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 96))
    {
      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](__str, a1 + 72);
      v4 = v2 + 328;
      if (__str != (v2 + 328))
      {
        v5 = v19;
        v6 = *(v2 + 352);
        if (v19 == __str)
        {
          if (v6 == v4)
          {
            (*(*v19 + 24))();
            (*(*v19 + 32))(v19);
            v19 = 0;
            (*(**(v2 + 352) + 24))(*(v2 + 352), __str);
            (*(**(v2 + 352) + 32))(*(v2 + 352));
            *(v2 + 352) = 0;
            v19 = __str;
            (*(v20[0] + 24))(v20, v2 + 328);
            (*(v20[0] + 32))(v20);
          }

          else
          {
            (*(*v19 + 24))();
            (*(*v19 + 32))(v19);
            v19 = *(v2 + 352);
          }

          *(v2 + 352) = v4;
        }

        else if (v6 == v4)
        {
          (*(*v6 + 24))(*(v2 + 352), __str);
          (*(**(v2 + 352) + 32))(*(v2 + 352));
          *(v2 + 352) = v19;
          v19 = __str;
        }

        else
        {
          v19 = *(v2 + 352);
          *(v2 + 352) = v5;
        }
      }

      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](__str);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ENABLE\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v10 = gnss::GnssAdaptDevice::Ga01_06GnssReportPower(v2, 1);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DISABLE\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v10 = gnss::GnssAdaptDevice::Ga01_06GnssReportPower(v2, 0);
    }

    if (v10)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SetPwrReport success\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 73, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v13 = 1;
    }

    else
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SetPwrReport error\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setPowerReport_block_invoke", 257);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v13 = 7;
    }

    std::function<void ()(gnss::Result)>::operator()(a1 + 40, v13);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setPowerReport_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v17, "setPowerReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setPowerReport_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_298F6BD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga01_06GnssReportPower(NSObject **this, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState == a2)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a2)
      {
        v4 = "ENABLE";
      }

      else
      {
        v4 = "DISABLE";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ignoring %s PwrRep request\n", v3, "ADP", 73, "Ga01_06GnssReportPower", v4);
      v5 = 4;
LABEL_12:
      gnssOsa_PrintLog(__str, v5, 1, 0);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  Hal_SetPowerReportStatus(a2, gnss::GnssAdaptDevice::Ga01_SetPowerReportStatusCb, gnss::GnssAdaptDevice::Ga01_03HandlePowerReportCB);
  if (gnssOsa_SemWaitTimeOut(this[45], 0x1F4u))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v8 = "DISABLE";
      if (a2)
      {
        v8 = "ENABLE";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SetPwrRep %s timeout\n", v7, "ADP", 69, "Ga01_06GnssReportPower", 257, v8);
      v5 = 1;
      goto LABEL_12;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState = a2;
  if (g_LbsOsaTrace_Config < 4)
  {
    v9 = 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a2)
    {
      v13 = "ENABLED";
    }

    else
    {
      v13 = "DISABLED";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Power reporting,%s\n", v12, "ADP", 73, "Ga01_06GnssReportPower", v13);
    v9 = 1;
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setConfigCoexistence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_21_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigCoexistence", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigCoexistence_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v7, "setConfigCoexistence_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  if (g_LbsOsaTrace_Config > 1)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Not Supported\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 87, "setConfigCoexistence_block_invoke", 264);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setConfigCoexistence_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298F6C3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigDutyCycling(uint64_t a1, char a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_0;
    block[4] = a1;
    v7[32] = a2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigDutyCycling", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "setConfigDutyCycling_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (v3 >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 78;
    if (*(a1 + 72))
    {
      v6 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DutyCycling,%c\n", v5, "ADP", 77, "setConfigDutyCycling_block_invoke", v6);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  byte_2A13C3B3C = *(a1 + 72);
  HSW_InternalSetRFDutyCyclingCfg();
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v9, "setConfigDutyCycling_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setConfigDutyCycling_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_298F6C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigSimulatorMode(uint64_t a1, char a2, int a3, char a4, uint64_t a5)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_30_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a5);
    v13 = a2;
    v12[8] = a3;
    v14 = a4;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setConfigSimulatorMode", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigSimulatorMode_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = 70;
      if (*(a1 + 76))
      {
        v5 = 84;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SimulatorEn,%c,Week,%d\n", v4, "ADP", 77, "setConfigSimulatorMode_block_invoke", v5, *(a1 + 72));
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    if (HSW_SetSimulatorModeCfg(*(a1 + 76), *(a1 + 72), *(a1 + 77)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 40);
      v6 = v13;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v13, "setConfigSimulatorMode_block_invoke");
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a1 + 40);
      v6 = v12;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0xBu, v12, "setConfigSimulatorMode_block_invoke");
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (*(a1 + 76) == 1)
    {
      HSW_SetEarliestGPSWKNum(*(a1 + 72));
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_19;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Simulation mode ON\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setConfigSimulatorMode_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setConfigSimulatorMode_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v14, "setConfigSimulatorMode_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setConfigSimulatorMode_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_298F6CCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigEnableGnssConstellations(uint64_t a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_34;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    v8[8] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigEnableGnssConstellations", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Constellation,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 77, "setConfigEnableGnssConstellations_block_invoke", *(a1 + 72));
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    if (HSW_SetConstellationCfg(*(a1 + 72)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a1 + 40);
      v5 = v11;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v11, "setConfigEnableGnssConstellations_block_invoke");
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a1 + 40);
      v5 = v10;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0xBu, v10, "setConfigEnableGnssConstellations_block_invoke");
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v12, "setConfigEnableGnssConstellations_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigEnableGnssConstellations_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_298F6D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigRfBandEnable(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a4);
    v10[32] = a2;
    v10[33] = a3;
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setConfigRfBandEnable", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigRfBandEnable_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = "DIS";
      if (*(a1 + 72))
      {
        v6 = "EN";
      }

      else
      {
        v6 = "DIS";
      }

      if (*(a1 + 73))
      {
        v5 = "EN";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RFBandFamily,L1:%s,L5:%s\n", v4, "ADP", 77, "setConfigRfBandEnable_block_invoke", v6, v5);
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    if (HSW_SetRfBandCfg(*(a1 + 72), *(a1 + 73)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 40);
      v7 = v13;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v13, "setConfigRfBandEnable_block_invoke");
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a1 + 40);
      v7 = v12;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0xBu, v12, "setConfigRfBandEnable_block_invoke");
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setConfigRfBandEnable_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v14, "setConfigRfBandEnable_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setConfigRfBandEnable_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setConfigRfBandEnable_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_298F6D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigNetworkFreqAssistance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_44;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigNetworkFreqAssistance", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (v3 >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Not supported\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 73, "setConfigNetworkFreqAssistance_block_invoke");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v8, "setConfigNetworkFreqAssistance_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_298F6DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga01_SetPowerReportStatusCb(gnss::GnssAdaptDevice *this)
{
  v7 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(this);
  if (DeviceInstance)
  {
    if (!gnssOsa_SemRelease(*(DeviceInstance + 360)) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CtrlReqSem\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 87, "Ga01_SetPowerReportStatusCb", 257);
      v3 = 2;
LABEL_7:
      gnssOsa_PrintLog(__str, v3, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid Device Instance\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga01_SetPowerReportStatusCb", 513);
    v3 = 1;
    goto LABEL_7;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void gnss::GnssAdaptDevice::Ga01_03HandlePowerReportCB(gnss::GnssAdaptDevice *this, double a2, double a3, double a4, double a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ActiveInt_Sec,%f,AvgPwr_milliwatts,%f,LocalTime,%f,MeasInt_Seconds,%f\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga01_03HandlePowerReportCB", a2, a3, a4, a5);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(this);
  v11 = *(DeviceInstance + 152);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke;
  block[3] = &__block_descriptor_tmp_62;
  block[4] = DeviceInstance;
  *&block[5] = a2;
  *&block[6] = a3;
  *&block[7] = a4;
  *&block[8] = a5;
  dispatch_async(v11, block);
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v16, *(a1 + 32) + 328);
  if (v17)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3002000000;
    v10[3] = __Block_byref_object_copy_;
    v10[4] = __Block_byref_object_dispose_;
    v2 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v2)
    {
      v11 = 0;
      snprintf(v14, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga01_03HandlePowerReportCB_block_invoke", 471, "Memory allocation failed for PwrMeas");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "Ga01_03HandlePowerReportCB_block_invoke", v14);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga01_03HandlePowerReportCB_block_invoke", "ga01GnssDeviceConfig.cpp", 471, "false && Memory allocation failed for PwrMeas");
    }

    v2[8] = 0;
    v3 = *(a1 + 40);
    *v2 = *(a1 + 56);
    *(v2 + 1) = v3;
    v4 = *(*(a1 + 32) + 160);
    v11 = v2;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke_2;
    block[3] = &unk_2A1F2A098;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v13, v16);
    block[4] = v10;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v13);
    _Block_object_dispose(v10, 8);
    v5 = v11;
    v11 = 0;
    if (v5)
    {
      MEMORY[0x29C296280](v5, 0x1000C407A37F5ACLL);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx OnPowerReportCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga01_03HandlePowerReportCB_block_invoke", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v16);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F6DFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_object_dispose(&a15, 8);
  v22 = a20;
  a20 = 0;
  if (v22)
  {
    MEMORY[0x29C296280](v22, 0x1000C407A37F5ACLL);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v20 - 72);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __Block_byref_object_dispose_(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C296280);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v6[0] = v2;
  v3 = *(a1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v6);
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    result = MEMORY[0x29C296280](result, 0x1000C407A37F5ACLL);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F6E1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C296280](a9, 0x1000C407A37F5ACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v2);
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void GncP02_10DataIndFromMECB(size_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1 <= 8)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MsgLen,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP02_10DataIndFromMECB", 783, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_15;
  }

  v5 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 93, 1, 0x20uLL);
  if (!v5)
  {
LABEL_15:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v6 = v5;
  v7 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 99, 1, a1);
  v6[2] = v7;
  if (v7)
  {
    memcpy_s("GncP02_10DataIndFromMECB", 106, v7, a1, a2, a1);
    *(v6 + 12) = a1;
    if (a2[2] == 77)
    {
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    }

    else
    {
      LODWORD(v8) = 0;
    }

    *(v6 + 7) = v8;
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND =>GNCP Len,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GncP02_10DataIndFromMECB", *(v6 + 12));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8655363, v6);
    goto LABEL_15;
  }

  v9 = *MEMORY[0x29EDCA608];

  free(v6);
}

void GncP02_11StrtMEDataDelayTimr(unsigned int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData == 1)
  {
    if (AgpsFsmStopTimer(8656134) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    g_GncPMeData = 0;
  }

  if (AgpsFsmStartTimer(0x841506u, a1))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1544, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }
  }

  else
  {
    g_GncPMeData = 1;
    mach_continuous_time();
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncP02_13ClearMEBuf(void)
{
  v3 = *MEMORY[0x29EDCA608];
  while (g_GncPMeData)
  {
    GncP02_14ClearCurrMEBufElem();
  }

  g_GncPMeData = 0;
  if (g_GncPMeData)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEDataPack,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP02_13ClearMEBuf", 770, g_GncPMeData);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    g_GncPMeData = 0;
  }

  v1 = *MEMORY[0x29EDCA608];
}

void GncP02_14ClearCurrMEBufElem(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData)
  {
    v0 = *(g_GncPMeData + 4104);
    free(g_GncPMeData);
    if (g_GncPMeData)
    {
      --g_GncPMeData;
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 87, "GncP02_14ClearCurrMEBufElem", 770);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    g_GncPMeData = v0;
  }

  v2 = *MEMORY[0x29EDCA608];
}

BOOL GncP02_15AddMEDataElem(unsigned __int8 *a1, size_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP02_15AddMEDataElem", 259, 1, 0x1010uLL);
  if (v6)
  {
    if (g_GncPMeData == 255)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEData Overflow\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_15AddMEDataElem");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP02_13ClearMEBuf();
    }

    v6[1025] = a3;
    *(v6 + 2048) = a2;
    *(v6 + 513) = 0;
    memcpy_s("GncP02_15AddMEDataElem", 278, v6, 0x1000u, a1 + 8, a2);
    v8 = &g_GncPMeData;
    v9 = g_GncPMeData;
    if (g_GncPMeData)
    {
      do
      {
        v10 = v9;
        v9 = *(v9 + 4104);
      }

      while (v9);
      v8 = (v10 + 4104);
    }

    *v8 = v6;
    ++g_GncPMeData;
  }

  result = v6 != 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP02_16GetMEDataFrmBuf(unsigned int a1, char *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = g_GncPMeData;
  if (g_GncPMeData)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(v3 + 4096);
      if (!v5 && v6 > a1)
      {
        break;
      }

      if (v6 + v5 <= a1)
      {
        g_GncPMeData = *(v3 + 4100);
        memcpy_s("GncP02_16GetMEDataFrmBuf", 352, &a2[v5], a1 - v5, v3, v6);
        v5 += *(g_GncPMeData + 4096);
        GncP02_14ClearCurrMEBufElem();
        v3 = g_GncPMeData;
        if (g_GncPMeData)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      v5 = 0;
      goto LABEL_13;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MaxBytes less than MeData in node, MaxBytes:%u, NodeDataLen:%u, PktTS:%u, PktCount:%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_16GetMEDataFrmBuf", a1, *(g_GncPMeData + 4096), *(g_GncPMeData + 4100), g_GncPMeData);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v5 = 0;
LABEL_11:
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MaxBytes:%u, ReadBytes:%u, LatestReadTS:%u, NumPacketsLeft:%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP02_16GetMEDataFrmBuf", a1, v5, g_GncPMeData, g_GncPMeData);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GncP02_22HandleDataFromME(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND Len,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP02_22HandleDataFromME", *(a1 + 24));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    if (!*(a1 + 24))
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) - 4097) <= 0xF007u)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MsgLen,%u,Max,%u\n", v3);
LABEL_22:
        gnssOsa_PrintLog(__str, 2, 1, 0);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v5 = *(a1 + 16);
    if (*v5 != 122 || v5[1] != 120)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v25 = *v5;
        v27 = v5[1];
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ME Data nonZX MC,%u,MID,%u\n", v10);
        goto LABEL_22;
      }

LABEL_23:
      v11 = *(a1 + 16);
      if (v11)
      {
        free(v11);
      }

      *(a1 + 16) = 0;
      goto LABEL_26;
    }

    v6 = v5[2];
    v7 = v5[3];
    if (v6 == 66)
    {
      if (v7 == 83)
      {
        GncP02_25HandleDeRegGnssResp(v5[8]);
        goto LABEL_41;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_41;
      }

      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = v7;
      v17 = 66;
    }

    else
    {
      if (v6 != 79)
      {
        if (v6 == 77)
        {
          if (v7 != 77)
          {
            goto LABEL_41;
          }

          v8 = *(v5 + 5);
          if (GncP02_15AddMEDataElem(*(a1 + 16), v8, *(a1 + 28)))
          {
            if ((g_GncPMeData & 1) == 0)
            {
              if (word_2A13C3B64 && word_2A13C3B66 >= 0x3E8u)
              {
                GncP02_11StrtMEDataDelayTimr(word_2A13C3B64);
              }

              if (g_LbsOsaTrace_Config < 4)
              {
                goto LABEL_41;
              }

              bzero(__str, 0x3C6uLL);
              v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FixInt,%u,Timer,%u,Started,%u,Len,%u,TS,%u,NumPks,%u\n", v20, "GNC", 73);
              goto LABEL_51;
            }

            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Len,%u,TS,%u,NumPks,%u\n", v9);
LABEL_51:
              v18 = 4;
              goto LABEL_40;
            }

LABEL_41:
            if (*(*(a1 + 16) + 2) == 77)
            {
              GncP16_26UpdateStateMEDataRcvd();
              if ((g_GncPMeData & 1) == 0)
              {
                GncP01_32ExecutePE(v19);
              }
            }

            goto LABEL_23;
          }

          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_41;
          }

          bzero(__str, 0x3C6uLL);
          v22 = "GncP02_18ProcessMClassMsg";
          v23 = v8;
          v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v15 = "%10u %s%c %s: MEData Lost Len,%u\n";
        }

        else
        {
          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_41;
          }

          bzero(__str, 0x3C6uLL);
          v23 = 777;
          v24 = v6;
          v22 = "GncP02_ZX_HandleData";
          v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v15 = "%10u %s%c %s: #%04hx MC,%u\n";
        }

LABEL_39:
        snprintf(__str, 0x3C5uLL, v15, v21, "GNC", 87, v22, v23, v24, v26);
        v18 = 2;
LABEL_40:
        gnssOsa_PrintLog(__str, v18, 1, 0);
        goto LABEL_41;
      }

      if (v7 == 84 || v7 == 66)
      {
        v14 = *(a1 + 24);
        GncP25_04HandleTimeMarkEvent(*(a1 + 16));
        goto LABEL_41;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_41;
      }

      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = v7;
      v17 = 79;
    }

    v23 = 778;
    v24 = v17;
    v15 = "%10u %s%c %s: #%04hx MC,%u,MID,%u\n";
    v22 = "GncP02_ZX_HandleData";
    v21 = v16;
    goto LABEL_39;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP02_22HandleDataFromME", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_26:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP02_25HandleDeRegGnssResp(unsigned __int8 *a1)
{
  v1 = a1;
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config <= 3)
  {
    v3 = a1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    v3 = v1;
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,%c\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP02_25HandleDeRegGnssResp", v1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (v1 > 0x4Cu)
  {
    if (v1 == 77)
    {
      GncP16_31UpdateStateMEPowerState(7u);
      goto LABEL_20;
    }

    if (v1 == 119)
    {
      if (g_LbsOsaTrace_Config < 4)
      {
        goto LABEL_20;
      }

      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME Wake-up in progress\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP02_25HandleDeRegGnssResp");
      v6 = 4;
      goto LABEL_19;
    }

    if (v1 != 109)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (g_LbsOsaTrace_Config < 5)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success response\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP02_25HandleDeRegGnssResp");
    v6 = 5;
LABEL_19:
    gnssOsa_PrintLog(__str, v6, 1, 0);
    goto LABEL_20;
  }

  if (v1 == 32)
  {
    goto LABEL_12;
  }

  if (v1 != 67 && v1 != 71)
  {
LABEL_15:
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_25HandleDeRegGnssResp", 770, v3);
    v6 = 2;
    goto LABEL_19;
  }

  SleepTimeout = HSW_GetSleepTimeout();
  GncP03_SendGNSSSleepRequest(SleepTimeout, 0);
LABEL_20:
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t GncP02_31MEDataDelayTimExp(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_MEDATA_DELAY_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_31MEDataDelayTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v2 = g_GncPStateInfo;
    g_GncPMeData = 0;
    if (g_GncPStateInfo > 0x10u)
    {
      goto LABEL_20;
    }

    if (((1 << g_GncPStateInfo) & 0x10A3E) != 0)
    {
LABEL_6:
      GncP02_13ClearMEBuf();
      goto LABEL_17;
    }

    if (((1 << g_GncPStateInfo) & 0xC5C1) == 0)
    {
LABEL_20:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP02_12MEDataTimerExpiry", 262, v2);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    v4 = g_GncPMeData;
    if (!g_GncPMeData)
    {
      goto LABEL_17;
    }

    v5 = g_GncPMeData;
    v6 = g_GncPMeData;
    while ((v6 & 1) == 0)
    {
      v7 = *(v4 + 4096);
      a1 = GncP01_32ExecutePE(a1);
      v6 = g_GncPMeData;
      v8 = g_GncPMeData;
      v4 = g_GncPMeData;
      if (g_GncPMeData == v5)
      {
        if (*(g_GncPMeData + 4096) == v7)
        {
          break;
        }

        v8 = v5;
      }

      v5 = v8;
      if (!g_GncPMeData)
      {
        goto LABEL_17;
      }
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,NumPks,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP02_12MEDataTimerExpiry", v2, v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_6;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP02_31MEDataDelayTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP02_32StateHndlTimExp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STATE_HNDL_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP02_32StateHndlTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncP16_25UpdateStateTimerExpiry(a1, a2, a3);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP02_32StateHndlTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP02_33BBResetTimExp(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_GNSSBBRESET_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_33BBResetTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncP19_04MEResetTimerExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP02_33BBResetTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP02_34TimemarkSessTimExp(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_SESS_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_34TimemarkSessTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncP25_10TimemarkSessTimerExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP02_34TimemarkSessTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

void *DD_Delete_Bad_NVIC_Data(void *result)
{
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v2 = result + 5962;
  v3 = result + 6228;
  v4 = p_NV + 27040;
  v5 = (p_NV + 27936);
  do
  {
    v6 = result[5953];
    if (*(v6 + v1) == 1)
    {
      *(v6 + v1) = 0;
      *(result[5951] + v1) = 0;
      *(result[5955] + v1) = 0;
      *(v2 + 60) = 0uLL;
      v2[2] = 0uLL;
      v2[3] = 0uLL;
      *v2 = 0uLL;
      v2[1] = 0uLL;
      *(result[5961] + v1) = 0;
      *(result[5958] + v1) = 1;
      *(v5 - 1) = 0xFFFFFFFFLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      *(v5 + 60) = 0uLL;
    }

    v7 = result[5954];
    if (*(v7 + v1) == 1)
    {
      *(v7 + v1) = 0;
      *(result[5952] + v1) = 0;
      *(result[5957] + v1) = 0;
      *(v3 + 48) = 0;
      *(v3 + 1) = 0uLL;
      *(v3 + 2) = 0uLL;
      *v3 = 0uLL;
      *(result[5961] + v1) = 0;
      *(v4 - 8) = 0xFFFFFFFFLL;
      *v4 = 0uLL;
      *(v4 + 16) = 0uLL;
      *(v4 + 32) = 0uLL;
      *(v4 + 48) = 0;
    }

    ++v1;
    v4 += 64;
    v5 = (v5 + 88);
    v3 = (v3 + 52);
    v2 = (v2 + 76);
  }

  while (v1 != 14);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_NVIC_Data(uint64_t result, void *a2)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2 + 5962;
  v4 = a2 + 6228;
  v5 = p_NV + 27040;
  v6 = (p_NV + 27936);
  do
  {
    if (*(result + v2) == 1)
    {
      *(a2[5953] + v2) = 0;
      *(a2[5951] + v2) = 0;
      *(a2[5955] + v2) = 0;
      *(v3 + 60) = 0uLL;
      v3[2] = 0uLL;
      v3[3] = 0uLL;
      *v3 = 0uLL;
      v3[1] = 0uLL;
      *(a2[5956] + v2) = 0;
      *(v3 + 1124) = 0uLL;
      *(v3 + 1096) = 0uLL;
      *(v3 + 1112) = 0uLL;
      *(v3 + 1064) = 0uLL;
      *(v3 + 1080) = 0uLL;
      *(a2[5961] + v2) = 0;
      *(a2[5958] + v2) = 1;
      *(v6 - 1) = 0xFFFFFFFFLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *(v6 + 60) = 0uLL;
      *(a2[5954] + v2) = 0;
      *(a2[5952] + v2) = 0;
      *(a2[5957] + v2) = 0;
      *(v4 + 48) = 0;
      *(v4 + 1) = 0uLL;
      *(v4 + 2) = 0uLL;
      *v4 = 0uLL;
      *(v5 - 8) = 0xFFFFFFFFLL;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 32) = 0uLL;
      *(v5 + 48) = 0;
    }

    ++v2;
    v5 += 64;
    v6 = (v6 + 88);
    v4 = (v4 + 52);
    v3 = (v3 + 76);
  }

  while (v2 != 14);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_Check_Age_NVIC_Data(char *result, uint64_t a2)
{
  v35 = *MEMORY[0x29EDCA608];
  if (result < 1)
  {
LABEL_68:
    v32 = *MEMORY[0x29EDCA608];
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 47624;
  v8 = result + 900;
  if (result <= 0x384)
  {
    v9 = 900;
  }

  else
  {
    v9 = result;
  }

  v10 = v9 - 900;
  if (result <= 0x15180)
  {
    v11 = 86400;
  }

  else
  {
    v11 = result;
  }

  v12 = v11 - 86400;
  v13 = *(a2 + 47640);
  v14 = 47696;
  do
  {
    if (*(v13 + v4) != 1)
    {
      goto LABEL_19;
    }

    v15 = *(a2 + v14);
    if (v15 >= 1 && v15 < v12)
    {
LABEL_17:
      v5 = 1;
      *(*v7 + v4) = 1;
      goto LABEL_19;
    }

    if (v15)
    {
      if (v15 > v8)
      {
        ++v6;
        if ((*(a2 + 62170) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *(a2 + v14) = v10;
    }

LABEL_19:
    ++v4;
    v14 += 76;
  }

  while (v4 != 14);
  if (v6 > 0)
  {
    if (*(a2 + 62170))
    {
      v17 = "(Skipped)";
    }

    else
    {
      v17 = &unk_299066A3A;
    }

    result = EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future EPH, %d SVs  %s", v6, v17);
  }

  v18 = 0;
  if (v3 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = v3;
  }

  v20 = v19 - 15724800;
  v33 = 0;
  v34 = (v3 - (v19 - 15724800)) / 604800;
  v21 = 49824;
  do
  {
    if (*(*(v7 + 32) + v18) == 1)
    {
      v22 = *(a2 + v21);
      if (v22 >= 1 && v22 < v20)
      {
        v5 = 1;
        *(*(v7 + 8) + v18) = 1;
        result = EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Old ALM, SV %d age %d thresh %d", v18 + 1, (v3 - v22) / 604800, v34);
      }

      else if (v22)
      {
        if (v22 > v8)
        {
          ++v33;
          v24 = (v3 - v22) / 604800;
          v25 = &unk_299066A3A;
          if (*(a2 + 62170))
          {
            v25 = "(Skipped)";
          }

          result = EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future ALM, SV %d age %d thresh %d  %s", v18 + 1, v24, 0, v25);
          if ((*(a2 + 62170) & 1) == 0)
          {
            v5 = 1;
            *(*(v7 + 8) + v18) = 1;
          }
        }
      }

      else
      {
        *(a2 + v21) = v10;
      }
    }

    ++v18;
    v21 += 52;
  }

  while (v18 != 14);
  if (v33 > 0)
  {
    if (*(a2 + 62170))
    {
      v26 = "(Skipped)";
    }

    else
    {
      v26 = &unk_299066A3A;
    }

    result = EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future ALM, %d SVs  %s", v33, v26);
  }

  if (!*(v7 + 2932))
  {
    goto LABEL_63;
  }

  v27 = (v7 + 2928);
  if (v3 <= 2419200)
  {
    v28 = 2419200;
  }

  else
  {
    v28 = v3;
  }

  v29 = *v27;
  if (*v27 < 1 || v29 >= v28 - 2419200)
  {
    if (!v29)
    {
      *v27 = v10;
      if ((v5 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    }

    if (v29 > v8)
    {
      v30 = *(a2 + 62170) ? "(Skipped)" : &unk_299066A3A;
      result = EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future NGTO, %d  %d  %s", v29, v8, v30);
      if ((*(a2 + 62170) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_63:
    if ((v5 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

LABEL_55:
  *v27 = 0;
  *(v7 + 2936) = 0;
  *(v7 + 2944) = 0;
  *(a2 + 50576) = 0u;
  *(a2 + 50592) = 0u;
  *(a2 + 50606) = 0;
  if ((v5 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_64:
  v31 = *MEMORY[0x29EDCA608];

  return DD_Delete_Bad_NVIC_Data(a2);
}

uint64_t DD_Proc_NVIC_Data(uint64_t result, uint64_t a2, uint64_t a3, int *a4, float64x2_t *a5)
{
  v9 = result;
  v97 = *MEMORY[0x29EDCA608];
  v10 = a5 + 2974;
  v11 = *(a2 + 8);
  v12 = *(a2 + 12);
  if ((v12 - 3) < 2)
  {
    v14 = *(a2 + 13);
    v15 = v14 == 26 || v14 == 9;
    if (v15)
    {
      result = a2 + 20;
      HIDWORD(v16) = *(a2 + 20);
      LODWORD(v16) = *(a2 + 24);
      v17 = (v16 >> 28) & 0x3F;
      if (v17 == 26 || v17 == 9)
      {
        *(v96 + 14) = 0;
        DWORD2(v96[0]) = 0;
        BYTE12(v96[0]) = 0;
        result = NVIC_L5_NGTOBin2Int(result, v96);
        if (!result)
        {
          v19 = *a4;
          LODWORD(v96[0]) = *a4;
          DWORD1(v96[0]) = 4;
          v20 = &v10[185].f64[1];
          if (SHIDWORD(v10[185].f64[1]) < 4 || v19 > *v20)
          {
            LODWORD(v10[186].f64[1]) = v96[1];
            *v20 = v96[0];
            v21 = SLOWORD(v10[186].f64[0]);
            v10[187].f64[0] = v10[185].f64[1];
            v22.f64[0] = SWORD1(v10[186].f64[0]);
            v22.f64[1] = SBYTE4(v10[186].f64[0]);
            v10[187].f64[1] = v21 * 2.91038305e-11;
            a5[3162] = vmulq_f64(v22, xmmword_299050CC0);
            LODWORD(v10[189].f64[0]) = 16 * HIWORD(v10[186].f64[0]);
            WORD2(v10[189].f64[0]) = LOWORD(v10[186].f64[1]);
            if (*a4 >= 1)
            {
              v23 = 0;
              LODWORD(v24) = 0;
              v25 = p_NV;
              v26 = p_NV + 27008;
              *(p_NV + 27008) = v96[0];
              *(v26 + 16) = v96[1];
              v27 = 55665;
              do
              {
                v28 = *(v26 + v23) ^ BYTE1(v27);
                v27 = 52845 * (v27 + v28) + 22719;
                v24 = (v24 + v28);
                ++v23;
              }

              while (v23 != 24);
              *(v25 + 27000) = v24;
            }
          }
        }
      }
    }

    else
    {
      if (v14 != 7)
      {
        goto LABEL_68;
      }

      result = a2 + 20;
      HIDWORD(v31) = *(a2 + 20);
      LODWORD(v31) = *(a2 + 24);
      if (((v31 >> 28) & 0x3F) == 7)
      {
        HIDWORD(v96[0]) = 0;
        LOWORD(v96[1]) = 0;
        DWORD1(v96[1]) = 0;
        WORD4(v96[1]) = 0;
        *&v96[0] = 0;
        *(v96 + 7) = 0;
        memset(&v96[1] + 12, 0, 21);
        result = NVIC_L5_AlmBin2Int(result, v96);
        LODWORD(v96[0]) = *a4;
        DWORD1(v96[0]) = 4;
        v32 = BYTE8(v96[0]);
        v33 = BYTE8(v96[0]) < 0xFu;
        if (BYTE8(v96[0]) >= 0xFu)
        {
          result = EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SVid = %d > %d, Out of range !", BYTE8(v96[0]), 14);
        }

        if (WORD6(v96[0]) - 8193 <= 0xFFFFDFFF)
        {
          result = EvCrt_v("DD_NVIC_IntAlm_Valid:  FAILED:  SV %d  WeekNo = %d > %d, Out of range !", BYTE8(v96[0]), WORD6(v96[0]), 0x2000);
          v33 = 0;
        }

        v34 = HIWORD(v96[0]);
        if (HIWORD(v96[0]) <= 0x93A8u)
        {
          v35 = WORD4(v96[1]);
          if (SWORD4(v96[1]) <= 27488)
          {
            if (v33)
            {
              v62 = v10[4].f64[1];
              v63 = (v32 - 1);
              if ((!*(*&v62 + v63) || *(a5[3114].f64 + 13 * (v32 - 1)) < SLODWORD(v96[0]) || *(&a5[3114].f64[1] + 26 * (v32 - 1) + 3) != HIWORD(v96[0]) || HIWORD(v96[0]) != *(v9 + 2 * v63 + 53066)) && *(*&v10[3].f64[1] + v63) == 1 && *(*&v10->f64[0] + v63) == 1)
              {
                v64 = v96[1];
                v65 = &a5[3114] + 52 * (v32 - 1);
                *v65 = v96[0];
                *(v65 + 48) = v96[3];
                v66 = v96[2];
                *(v65 + 16) = v64;
                *(v65 + 32) = v66;
                *(*&v10[2].f64[0] + v63) = 1;
                *(*&v62 + v63) = 1;
                *(v9 + 2 * v63 + 53066) = v34;
                result = EvVrb_v("EvVrb_NVIC_IntAlm: %d %d %d %d  %d %d %d %d  %d %d %d %d  %d", *(&a5[3114].f64[1] + 26 * (v32 - 1) + 2), *(&a5[3114].f64[1] + 52 * (v32 - 1)), *(&a5[3114].f64[1] + 26 * (v32 - 1) + 3), *(&a5[3115].f64[1] + 13 * (v32 - 1) + 1), *(a5[3115].f64 + 26 * (v32 - 1)), *(a5[3116].f64 + 13 * (v32 - 1) + 1), *(&a5[3116].f64[1] + 13 * (v32 - 1)), *(a5[3116].f64 + 13 * (v32 - 1)), *(&a5[3115].f64[1] + 26 * (v32 - 1)), *(a5[3115].f64 + 13 * (v32 - 1) + 1), *(&a5[3116].f64[1] + 26 * (v32 - 1) + 2), *(&a5[3116].f64[1] + 26 * (v32 - 1) + 3), *(&a5[3114].f64[1] + 52 * (v32 - 1) + 1));
                if (*a4 >= 1)
                {
                  result = Core_Save_NVIC_Alm(v32, 0, v65);
                }
              }
            }

            goto LABEL_45;
          }
        }

        else
        {
          result = EvCrt_v("DD_NVIC_IntAlm_Valid:  FAILED:  SV %d  toa = %d > 604800 s, Out of range !", BYTE8(v96[0]), 16 * HIWORD(v96[0]));
          v35 = WORD4(v96[1]);
          if (SWORD4(v96[1]) < 27489)
          {
            goto LABEL_45;
          }
        }

        result = EvCrt_v("DD_NVIC_IntAlm_Valid:  FAILED:  SV %d  Omega_dot = %g > %g, Out of range !", BYTE8(v96[0]), v35 * 1.14290475e-11, 0.000000314161658);
      }
    }
  }

  else if (v12 == 2)
  {
    result = NVIC_Is_Idle_Pattern_SF2((a2 + 20));
    if (result)
    {
      v13 = v11 + 1;
      result = EvLog_v("DD_Proc_NVIC_Data: Idle pattern detected in SF2, SV %d");
LABEL_25:
      *(*&v10->f64[0] + v11) = 0;
      *(*&v10[4].f64[1] + v11) = 0;
      v29 = v13 - 1;
      if (v29 <= 0xD)
      {
        v30 = p_NV + (v29 << 6);
        *(v30 + 27032) = 0xFFFFFFFFLL;
        *(v30 + 27040) = 0u;
        *(v30 + 27056) = 0u;
        *(v30 + 27072) = 0u;
        *(v30 + 27088) = 0;
      }

      goto LABEL_68;
    }

    HIDWORD(v43) = *(a2 + 24);
    LODWORD(v43) = *(a2 + 28);
    v36 = v43 >> 18;
    v38 = v9 + 2 * v11;
    if (*(*&v10->f64[0] + v11) != 1 || *(*&v10[3].f64[1] + v11) != 1 || *(v38 + 53038) != v36)
    {
      v44 = v9 + 80 * v11 + 53124;
      v45 = *(a2 + 20);
      v46 = *(a2 + 36);
      *(v44 + 72) = *(a2 + 52);
      *(v44 + 56) = v46;
      *(v44 + 40) = v45;
      v42 = 53038;
      goto LABEL_44;
    }
  }

  else
  {
    if (v12 != 1)
    {
      goto LABEL_68;
    }

    result = NVIC_Is_Idle_Pattern_SF1((a2 + 20));
    if (result)
    {
      v13 = v11 + 1;
      result = EvLog_v("DD_Proc_NVIC_Data: Idle pattern detected in SF1, SV %d");
      goto LABEL_25;
    }

    HIDWORD(v37) = *(a2 + 28);
    LODWORD(v37) = *(a2 + 32);
    v36 = v37 >> 22;
    v38 = v9 + 2 * v11;
    if (*(*&v10->f64[0] + v11) != 1 || *(*&v10[3].f64[1] + v11) != 1 || *(v38 + 53010) != v36)
    {
      v39 = v9 + 80 * v11 + 53124;
      v40 = *(a2 + 20);
      v41 = *(a2 + 36);
      *(v39 + 32) = *(a2 + 52);
      *v39 = v40;
      *(v39 + 16) = v41;
      v42 = 53010;
LABEL_44:
      *(v38 + v42) = v36;
    }
  }

LABEL_45:
  if (*(a2 + 12) - 1 > 1)
  {
    goto LABEL_68;
  }

  v47 = v9 + 53010;
  v48 = *(v9 + 53010 + 2 * v11);
  if (v48 == 0xFFFF || v48 != *(v9 + 2 * v11 + 53038) || v48 == *(v9 + 53094 + 2 * v11) && *(*&v10->f64[0] + v11) == 1 && (*(*&v10[3].f64[1] + v11) & 1) != 0)
  {
    goto LABEL_68;
  }

  v49 = *(a2 + 8);
  memset(v96, 0, 76);
  result = NVIC_L5_EphBin2Int((v9 + 80 * v49 + 53124), v96);
  BYTE8(v96[0]) = v49 + 1;
  DWORD1(v96[0]) = 4;
  v50 = HIWORD(v96[0]) <= 0x2000u;
  if (HIWORD(v96[0]) > 0x2000u)
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  WeekNo = %d > %d, Out of range !", (v49 + 1), HIWORD(v96[0]), 0x2000);
  }

  if (WORD1(v96[1]) >= 0x93A9u)
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  toe = %d > 604800 s, Out of range !", BYTE8(v96[0]), 16 * WORD1(v96[1]));
    v50 = 0;
  }

  v51 = LOWORD(v96[1]);
  if (LOWORD(v96[1]) >= 0x93A9u)
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  toc = %d > 604800 s, Out of range !", BYTE8(v96[0]), 16 * LOWORD(v96[1]));
    v50 = 0;
    v51 = LOWORD(v96[1]);
  }

  if (v51 != WORD1(v96[1]))
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  toc = %d != toe = %d", BYTE8(v96[0]), 16 * v51, 16 * WORD1(v96[1]));
    v50 = 0;
  }

  if (DWORD1(v96[2]) >= 0x33333334)
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  e = %g > %g, Too big for IGSO !", BYTE8(v96[0]), DWORD1(v96[2]) * 1.16415322e-10, 0.1);
    v50 = 0;
  }

  if (SHIDWORD(v96[3]) > 879609)
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  Omega_dot = %d > %d, Too big for IGSO !", BYTE8(v96[0]), HIDWORD(v96[3]), 879609);
    v50 = 0;
  }

  v52 = v96[2];
  if (LODWORD(v96[2]) >> 25 < 0x4B)
  {
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  Sqrt_A = %g < %g, Too small for MEO !", BYTE8(v96[0]), vcvtd_n_f64_u32(v96[2], 0x13uLL), 4800.0);
    v52 = v96[2];
    if (LODWORD(v96[2]) <= 0xDAC00000)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (LODWORD(v96[2]) > 0xDAC00000)
  {
LABEL_67:
    result = EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  Sqrt_A = %g > %g, Too big for IGSO !", BYTE8(v96[0]), vcvtd_n_f64_u32(v52, 0x13uLL), 7000.0);
    goto LABEL_68;
  }

  if (!v50)
  {
    goto LABEL_68;
  }

  if (BYTE10(v96[0]))
  {
    goto LABEL_111;
  }

  result = Complete_NVIC_WeekNo(HIWORD(v96[0]));
  if (result >= 0x2000)
  {
    goto LABEL_111;
  }

  v54 = result + 1024;
  if (*(a3 + 16))
  {
    v55 = v54;
    if (*(a3 + 32) == v54)
    {
      v56 = (a3 + 70);
      v57 = 3;
      do
      {
        v58 = *v56;
        v59 = __OFSUB__(v58, 1);
        v60 = v58 - 1;
        if (v60 < 0 == v59)
        {
          *v56 = v60;
          if (!v60)
          {
            *(v56 - 3) = -1;
          }
        }

        ++v56;
        --v57;
      }

      while (v57);
      v61 = (v49 + 1);
    }

    else
    {
      v95 = v54;
      v69 = 0;
      v70 = (a3 + 70);
      while (*(v70 - 3) != v54)
      {
        ++v69;
        ++v70;
        if (v69 == 3)
        {
          goto LABEL_100;
        }
      }

      if (v69 >= 3)
      {
LABEL_100:
        v71 = 0;
        v72 = (a3 + 64);
        while (*v72 != -1)
        {
          --v71;
          ++v72;
          if (v71 == -3)
          {
            v73 = 3;
            goto LABEL_109;
          }
        }

        v74 = -v71;
        if (v74 < 3)
        {
          *v72 = v54;
          v72[3] = 1;
          v61 = (v49 + 1);
          v55 = v54;
          EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo:  %d  SV %d", v54, v61);
          goto LABEL_110;
        }

        v73 = v74;
LABEL_109:
        v55 = v54;
        *(a3 + 68) = -1;
        *(a3 + 64) = -1;
        *(a3 + 70) = 0;
        *(a3 + 74) = 0;
        v61 = (v49 + 1);
        EvCrt_v("DD_NVIC_Proc_Submit_GPS_WeekNo: WeekNoCandidates array overflow! %d SV %d", v73, v61);
        goto LABEL_110;
      }

      v75 = *v70 + 1;
      *v70 = v75;
      EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: Cand %d  (%d)  SV %d", v54, v75, (v49 + 1));
      if (*v70 >= 3)
      {
        v67 = (v49 + 1);
        EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: Cand %d  (%d) OK  SV %d");
        goto LABEL_92;
      }

      v61 = (v49 + 1);
      v55 = v54;
    }

LABEL_110:
    result = EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: %d %d SV %d", 0, v55, v61);
LABEL_111:
    v68 = *a4;
    goto LABEL_112;
  }

  v95 = v54;
  v67 = (v49 + 1);
  EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: %d  SV %d");
LABEL_92:
  result = EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: %d %d SV %d", 1, v95, v67);
  *(a3 + 32) = v54;
  *(a3 + 16) = 1;
  *(a3 + 20) = *(a3 + 24);
  *(a3 + 64) = -1;
  *(a3 + 68) = -1;
  *(a3 + 70) = 0;
  *(a3 + 74) = 0;
  if (*a3 < 3)
  {
    *a4 = 0;
    goto LABEL_114;
  }

  v68 = *(a3 + 40) + 604800 * v54;
  *a4 = v68;
LABEL_112:
  if (v68 >= 1)
  {
    v76 = 0;
    LODWORD(v96[0]) = v68;
    goto LABEL_115;
  }

LABEL_114:
  v76 = 1;
LABEL_115:
  v77 = *(v47 + 2 * v49);
  v78 = LOWORD(v96[1]);
  if (v77 != LOWORD(v96[1]))
  {
    *(v9 + 53094 + 2 * v49) = v77;
    *(v47 + 2 * v49) = v78;
  }

  v79 = &a5[2981] + 76 * v49;
  v80 = v10[3].f64[1];
  v81 = *(*&v80 + v49);
  if (*(v79 + 4) < 4)
  {
    if (!*(*&v80 + v49))
    {
      goto LABEL_130;
    }

    goto LABEL_125;
  }

  if (!*(*&v80 + v49))
  {
    goto LABEL_130;
  }

  if (*(v79 + 16) != v78)
  {
    goto LABEL_125;
  }

  if (*v79)
  {
    v76 = 1;
  }

  if ((v76 & 1) == 0)
  {
LABEL_125:
    result = Is_NVIC_IntEph_Same(v96, v79);
    if (result)
    {
      v82 = *v79;
      v83 = v96[0];
      *v79 = *&v96[0];
      if (!v82 && v83 >= 1)
      {
        result = Core_Save_NVIC_Eph((v49 + 1), 0, v79);
      }

      goto LABEL_68;
    }

    v80 = v10[3].f64[1];
LABEL_130:
    v15 = BYTE10(v96[0]) == 0;
    v84 = v10->f64[0];
    *(*&v10->f64[0] + v49) = BYTE10(v96[0]) == 0;
    if (v15)
    {
      v85 = 1;
    }

    else
    {
      v85 = 2;
    }

    *(*&v10[1].f64[0] + 20 * v49) = v85;
    *(v79 + 60) = *(&v96[3] + 12);
    v86 = v96[3];
    *(v79 + 32) = v96[2];
    *(v79 + 48) = v86;
    v87 = v96[1];
    *v79 = v96[0];
    *(v79 + 16) = v87;
    *(*&v10[1].f64[1] + v49) = 1;
    *(*&v80 + v49) = 1;
    if (*a4 >= 1)
    {
      *(*&v10[5].f64[0] + v49) = 1;
      Core_Save_NVIC_Eph((v49 + 1), 0, v79);
      v84 = v10->f64[0];
    }

    v88 = 0;
    LODWORD(v89) = 0;
    v90 = p_NV;
    v91 = p_NV + 26980;
    v92 = *(*&v84 + 6);
    *(p_NV + 26980) = **&v84;
    *(v91 + 6) = v92;
    v93 = 55665;
    do
    {
      v94 = *(v90 + 26976 + v88) ^ BYTE1(v93);
      v93 = 52845 * (v93 + v94) + 22719;
      v89 = (v89 + v94);
      ++v88;
    }

    while (v88 != 24);
    *(v90 + 26968) = v89;
    result = EvVrb_v("EvVrb_NVIC_IntEph: %u %u %d %d %d  %u %u %d %d %u %u %u %d  %d %d %d %d %d %d %d %u %u %u %d %d %d %d", *(v79 + 8), *(v79 + 14), *(v79 + 20), *(v79 + 24), *(v79 + 26), *(v79 + 13), *(v79 + 16), *(v79 + 28), *(v79 + 56), *(v79 + 12), *(v79 + 10), *(v79 + 11), *(v79 + 66), *(v79 + 64), *(v79 + 70), *(v79 + 68), *(v79 + 74), *(v79 + 72), *(v79 + 30), *(v79 + 52), *(v79 + 18), *(v79 + 36), *(v79 + 32), *(v79 + 44), *(v79 + 48), *(v79 + 60), *(v79 + 40));
  }

LABEL_68:
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_BDS_Alm_Health_Sts(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if ((a1 & 0xE0) != 0)
      {
        v5 = 4;
      }

      else
      {
        v5 = 7;
      }

      v6 = (a1 << 26 >> 31) & 6;
      if ((a1 & 0x40) != 0)
      {
        v6 = 5;
      }

      if ((a1 & 0x80) != 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = v6;
      }

      if ((a1 & 0xE0) == 0)
      {
        v7 = v5;
      }

      if ((a1 & 2) != 0)
      {
        v8 = 3;
      }

      else
      {
        v8 = v7;
      }

      if (a1 == 255)
      {
        result = 2;
      }

      else
      {
        result = v8;
      }
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    if ((a1 & 0xE0) != 0)
    {
      v1 = 8;
    }

    else
    {
      v1 = 11;
    }

    v2 = (a1 << 26 >> 31) & 0xA;
    if ((a1 & 0x40) != 0)
    {
      v2 = 9;
    }

    if ((a1 & 0x80) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
    }

    if ((a1 & 0xE0) == 0)
    {
      v3 = v1;
    }

    if ((a1 & 2) != 0)
    {
      result = 3;
    }

    else
    {
      result = v3;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_AcqAid(int a1, __int16 a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5, double a6)
{
  v38 = *MEMORY[0x29EDCA608];
  result = *a4;
  *(a5 + 4) = result;
  if (result != 1)
  {
    goto LABEL_55;
  }

  *a5 = a1;
  v8 = *(a4 + 5) * 65.536;
  v9 = -0.5;
  if (v8 <= 0.0)
  {
    v10 = -0.5;
  }

  else
  {
    v10 = 0.5;
  }

  v11 = v8 + v10;
  if (v11 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
    }

    else
    {
      LOWORD(v12) = 0;
    }
  }

  else
  {
    LOWORD(v12) = -1;
  }

  *(a5 + 20) = v12;
  v13 = *(a4 + 3);
  if (v13 > 0.0)
  {
    v9 = 0.5;
  }

  v14 = v13 + v9;
  if (v14 <= 2147483650.0)
  {
    if (v14 >= -2147483650.0)
    {
      v15 = v14;
    }

    else
    {
      LOWORD(v15) = 0;
    }
  }

  else
  {
    LOWORD(v15) = -1;
  }

  *(a5 + 22) = v15;
  v16 = *(a4 + 8);
  if (v16 >= a3)
  {
    *(a5 + 22) = -a2;
    LOWORD(v16) = a3;
  }

  *(a5 + 18) = v16;
  v17 = *(a4 + 6) * 4.0;
  v18 = -0.5;
  if (v17 > 0.0)
  {
    v18 = 0.5;
  }

  v19 = v17 + v18;
  if (v19 <= 2147483650.0)
  {
    v20 = v19;
    if (v19 < -2147483650.0)
    {
      LOWORD(v20) = 0;
    }
  }

  else
  {
    LOWORD(v20) = -1;
  }

  *(a5 + 38) = v20;
  v21 = *(a4 + 14);
  if (v21 >= 0xFF)
  {
    LOBYTE(v21) = -1;
  }

  *(a5 + 40) = v21;
  v22 = *(a4 + 1);
  *(a5 + 15) = v22 >> 6 < 0x753;
  v23 = *(a4 + 3);
  if (v23 >= 0x24988)
  {
    if (v23 > 0xDB930)
    {
      *(a5 + 14) = 0;
      goto LABEL_33;
    }

    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  *(a5 + 14) = v24;
LABEL_33:
  LODWORD(v19) = *(a4 + 2);
  v25 = *&v19 / 299792458.0;
  v26 = (v25 * 2000.0 + 0.5);
  v27 = a6 - v25;
  v28 = v27 / 1.5;
  if (v27 / 1.5 <= 0.0)
  {
    v28 = v27 / 1.5 + -1.0;
  }

  *(a5 + 16) = v26;
  v29 = (v27 + v28 * -1.5) * 1023000.0;
  *(a5 + 28) = v28;
  *(a5 + 32) = v29;
  *(a5 + 36) = vcvtd_n_s64_f64(v29 - v29, 0x10uLL);
  if (v28 < 0)
  {
    *(a5 + 28) = v28 + 403200;
  }

  v30 = *(a4 + 4);
  if (v30 >= 0x1E)
  {
    if (v30 <= 0x24988)
    {
      v31 = ((v30 + 29.3052256) / 29.3052256);
    }

    else
    {
      LOWORD(v31) = 5115;
    }
  }

  else
  {
    LOWORD(v31) = 1;
  }

  *(a5 + 26) = v31;
  if (v22 >= 0x4B1)
  {
    if (v22 <= 0x493DF)
    {
      v32 = (v22 + 600) / 0x4B0;
    }

    else
    {
      LOBYTE(v32) = -1;
    }
  }

  else
  {
    LOBYTE(v32) = 1;
  }

  *(a5 + 24) = v32;
  *(a5 + 43) = a4[60];
  v33 = *(a4 + 8) * 8.0;
  v34 = -0.5;
  if (v33 > 0.0)
  {
    v34 = 0.5;
  }

  v35 = v33 + v34;
  if (v35 <= 2147483650.0)
  {
    if (v35 >= -2147483650.0)
    {
      v36 = v35;
    }

    else
    {
      LOWORD(v36) = 0;
    }
  }

  else
  {
    LOWORD(v36) = -1;
  }

  *(a5 + 44) = v36;
LABEL_55:
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm28_01HandlePeNvBackup(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_BACKUP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_01HandlePeNvBackup");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (!*(a1 + 12))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NVSize,0\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm28_01HandlePeNvBackup", 515);
          gnssOsa_PrintLog(__str, 2, 1, 0);
          v3 = *(a1 + 16);
          if (!v3)
          {
            goto LABEL_22;
          }
        }

        v10 = v3;
        goto LABEL_21;
      }

      if (gnssOsa_storeBufferToNv(0, v3, *(a1 + 12)))
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          goto LABEL_20;
        }

        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success NvSize,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm28_01HandlePeNvBackup", *(a1 + 12));
        v5 = 4;
      }

      else
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_20;
        }

        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ReqWrite,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm28_01HandlePeNvBackup", 1570, *(a1 + 12));
        v5 = 2;
      }

      gnssOsa_PrintLog(__str, v5, 1, 0);
LABEL_20:
      v10 = *(a1 + 16);
      if (!v10)
      {
LABEL_22:
        *(a1 + 16) = 0;
        goto LABEL_23;
      }

LABEL_21:
      free(v10);
      goto LABEL_22;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Data\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm28_01HandlePeNvBackup", 513);
      v7 = 2;
      goto LABEL_13;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm28_01HandlePeNvBackup", 517);
    v7 = 1;
LABEL_13:
    gnssOsa_PrintLog(__str, v7, 1, 0);
  }

LABEL_23:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm28_11RestorePeNv(int a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Restore PE NV initiated\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_11RestorePeNv");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 97, 1, 0x20uLL);
  if (!v3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm28_11RestorePeNv", 1537);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_19;
  }

  v4 = v3;
  size = 0;
  if ((gnssOsa_getNvSize(0, &size) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = 1572;
LABEL_14:
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v7, "GNM", 87, "Gnm28_11RestorePeNv", v8);
      v9 = 2;
LABEL_17:
      gnssOsa_PrintLog(__str, v9, 1, 0);
    }

LABEL_18:
    free(v4);
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  if (!size)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Empty file\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm28_11RestorePeNv");
      v9 = 4;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (size >= 0x10000)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm28_11RestorePeNv", 770);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    gnssOsa_clearNV(0);
    goto LABEL_18;
  }

  v13 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 132, 1, size);
  *(v4 + 2) = v13;
  if (!v13)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = 1537;
    goto LABEL_14;
  }

  Nv = gnssOsa_readNv(0, v13, size);
  v4[6] = Nv;
  if (size != Nv)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v16 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ReqRead,%zu,Read,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 87, "Gnm28_11RestorePeNv", 1571, size, v4[6]);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v17 = *(v4 + 2);
    if (v17)
    {
      free(v17);
    }

    goto LABEL_18;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_REQ =>GNCP NvSize,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 73, "Gnm28_11RestorePeNv", v4[6], a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  *(v4 + 24) = a1;
  AgpsSendFsmMsg(128, 132, 8654080, v4);
  result = 1;
LABEL_20:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm28_12HandlePeNvRestoreNoAck(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_VAR_PE_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_17;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm28_12HandlePeNvRestoreNoAck", 517);
    v8 = 1;
LABEL_16:
    gnssOsa_PrintLog(__str, v8, 1, 0);
    goto LABEL_17;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 78;
    if (g_Gnm_NVStoreCntxt)
    {
      v4 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerStart,%u,TimerStatus,%c\n", v3, "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck", HIDWORD(g_Gnm_NVStoreCntxt), v4);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (g_Gnm_NVStoreCntxt == 1)
  {
    v5 = HIDWORD(g_Gnm_NVStoreCntxt);
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5 >= 0xFA)
    {
      LOBYTE(g_Gnm_NVStoreCntxt) = 0;
      HIDWORD(g_Gnm_NVStoreCntxt) = 0;
      if (qword_2A13EC608)
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Max PENvRestore attempts\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck");
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        LOBYTE(qword_2A13EC608) = 0;
        goto LABEL_17;
      }

      LOBYTE(qword_2A13EC608) = 1;
      if (Gnm28_11RestorePeNv(1))
      {
        if (!AgpsFsmStartTimer(0x802F06u, 0xFAu))
        {
          HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          LOBYTE(g_Gnm_NVStoreCntxt) = 1;
          goto LABEL_17;
        }

        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v11 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck", 1544);
          v8 = 2;
          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm28_13HandlePeNvRestoreAck(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_41;
    }

    bzero(__str, 0x3C6uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = 517;
LABEL_17:
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v7, "GNM", 69, "Gnm28_13HandlePeNvRestoreAck", v8);
    v9 = 1;
LABEL_18:
    gnssOsa_PrintLog(__str, v9, 1, 0);
    goto LABEL_41;
  }

  if (qword_2A13EC608 != *(a1 + 13))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_41;
    }

    bzero(__str, 0x3C6uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = 1028;
    goto LABEL_17;
  }

  if (AgpsFsmStopTimer(8400646) && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", 1545);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  v4 = *(a1 + 12);
  if ((v4 - 2) >= 2)
  {
    if (v4 != 1)
    {
      if (!*(a1 + 12))
      {
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
          v6 = 4;
LABEL_39:
          gnssOsa_PrintLog(__str, v6, 1, 0);
        }

LABEL_40:
        LOBYTE(qword_2A13EC608) = 0;
        goto LABEL_41;
      }

      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        v15 = *(a1 + 12);
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ErrCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v12));
LABEL_31:
        v9 = 2;
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    if (gnssOsa_clearNV(0))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PeNv Deleted\n");
    }

    else
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    }

LABEL_38:
    v6 = 2;
    goto LABEL_39;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  if (qword_2A13EC608)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_40;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Max PENvRestore attempts\n");
    goto LABEL_38;
  }

  LOBYTE(qword_2A13EC608) = 1;
  if (Gnm28_11RestorePeNv(1))
  {
    if (!AgpsFsmStartTimer(0x802F06u, 0xFAu))
    {
      HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
      goto LABEL_41;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_31;
    }
  }

LABEL_41:
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

void Gnm28_21InitRestorePeNv(void)
{
  v3 = *MEMORY[0x29EDCA608];
  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  LOBYTE(qword_2A13EC608) = 0;
  if (Gnm28_11RestorePeNv(0))
  {
    if (AgpsFsmStartTimer(0x802F06u, 0xFAu))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm28_21InitRestorePeNv", 1544);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
    }
  }

  v1 = *MEMORY[0x29EDCA608];
}

BOOL GM_Reject_Rep_SV(_BOOL8 result, unsigned int a2, int *a3)
{
  *&v26[508] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = result;
    v5 = a2;
    v6 = (result + 6);
    v7 = v25;
    v8 = a3;
    v9 = a2;
    do
    {
      *v7 = 0;
      if (Is_Legal(*(v6 - 6)) && *v8 >= 10)
      {
        v10 = *(v6 + 3);
        if (v10 >= 0x2710)
        {
          v10 = 10000;
        }

        *v7 = v10 + 1000 * (*v8 + *(v6 - 2) + *v6);
      }

      ++v8;
      v6 += 36;
      ++v7;
      --v9;
    }

    while (v9);
    v11 = 0;
    v12 = a2 - 1;
    v13 = v26;
    v14 = a3 + 1;
    v15 = (v4 + 36);
    while (1)
    {
      v16 = v4 + 36 * v11;
      v17 = *v16;
      result = Is_Legal(*v16);
      if (result && a3[v11] >= 10 && v11 + 1 < v5)
      {
        break;
      }

LABEL_23:
      ++v11;
      --v12;
      ++v13;
      ++v14;
      v15 += 36;
      if (v11 == v5)
      {
        goto LABEL_26;
      }
    }

    v18 = v25[v11];
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    while (1)
    {
      if (__PAIR64__(v19[1], *v19) == __PAIR64__(BYTE1(v17), v17))
      {
        if (v17 == 2)
        {
          if (v19[3] != *(v16 + 3))
          {
            goto LABEL_22;
          }
        }

        else if (*v19 != v17)
        {
          goto LABEL_22;
        }

        if (*v20 >= 10)
        {
          if (v18 < *v21)
          {
            a3[v11] = 3;
            goto LABEL_23;
          }

          *v20 = 3;
        }
      }

LABEL_22:
      ++v21;
      ++v20;
      v19 += 36;
      if (!--v22)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_26:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_SV_Meas_AP_Stats(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88[13] = *MEMORY[0x29EDCA608];
  v4 = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    gn_report_assertion_failure(&unk_299066A3A);
    v43 = 0;
    goto LABEL_110;
  }

  v5 = a4;
  v67 = qword_299050EE8[v4];
  v8 = 14904 * v4;
  v9 = 24 * v4;
  v10 = 2 * v4;
  v11 = a4 + v8;
  v12 = a3 + v9;
  if (!*(a3 + 148) || !*(a3 + 27136) || (*(a3 + 241) & 1) != 0 || *(v12 + 26976) < 0.0 || *(v12 + 26984) < 0.0)
  {
    *(v12 + 26976) = 0u;
  }

  v69 = (a3 + v9);
  v70 = 0;
  v13 = 0;
  v72 = 0;
  v73 = 0;
  v68 = (a4 + 61440);
  v14 = v10 | 0x69C0;
  v83 = v11 + 6768;
  v15 = v11 + 7080;
  memset(v88, 0, 104);
  v82 = v11 + 7208;
  *(v11 + 6784) = 0;
  *(v11 + 6800) = 0u;
  v80 = a4 + 52776;
  v81 = a2 + 96;
  v84 = v11 + 19624;
  v85 = v11 + 17448;
  v79 = v11 + 20648;
  v16 = v11 + 7336;
  v74 = a4 + v8;
  v75 = a4 + 57;
  v71 = a2 + 736;
  v78 = a3 + 24640;
  memset(v87, 0, sizeof(v87));
  v77 = a3 + 24512;
  v76 = a3 + 24384;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    if ((*(v15 + v13) & 1) == 0)
    {
      v24 = *(v16 + 4 * v13) - 1;
      goto LABEL_52;
    }

    v86 = 0.0;
    v19 = (v81 + 4 * v13);
    v20 = v5;
    NK_Obs_Equ_SV(a1, *(v82 + v13), *v19, (v80 + 56 * v13), v88, *(v5 + 1552));
    v22 = *(a3 + 20);
    v21 = *(a3 + 24);
    if (v22 == v21)
    {
LABEL_11:
      v23 = 5304;
      goto LABEL_33;
    }

    if (v22 <= 2)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          if (!v21)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v23 = 5304;
          if (v22 != 2)
          {
            goto LABEL_33;
          }

          if (v21 <= 1)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else if (v22 > 4)
    {
      if (v22 == 5)
      {
        if ((v21 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v23 = 5304;
        if (v22 != 6)
        {
          goto LABEL_33;
        }

        if (v21 != 7)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v22 == 3)
    {
      if (v21 <= 2)
      {
        goto LABEL_11;
      }
    }

    else if (v21 - 5 >= 3)
    {
      goto LABEL_11;
    }

    v23 = 7352;
LABEL_33:
    v25 = 0;
    v26 = 0.0;
    do
    {
      v27 = vmulq_f64(*&v88[v25], *(a3 + 1600 + v25 * 8));
      v26 = v26 + v27.f64[0] + v27.f64[1];
      v25 += 2;
    }

    while (v25 != 12);
    v28 = *(v83 + v23 + 8 * v13) - v26;
    *(v84 + 8 * v13) = v28;
    v29 = *(v85 + 8 * v13);
    invtst((a3 + 976), v88, 0xCu, v29, v28, 1.0e20, &v86);
    v30 = v86;
    if (v86 <= 0.0)
    {
      gn_report_assertion_failure("NK_SV_Meas_AP_Stats: -ve var");
      v29 = *(v85 + 8 * v13);
    }

    v31 = v29 + v29 - fabs(v30);
    *(v79 + 8 * v13) = v31;
    v24 = *(v16 + 4 * v13) - 1;
    if (v24 >= 0x1E)
    {
      v5 = v20;
      if (a1 == 2 || (*(v75 + v13) & 1) != 0)
      {
        v32 = *(v84 + 8 * v13);
        *(v74 + 6808) = v31 / v29 + *(v74 + 6808);
        if ((*(v87 + v13) & 1) == 0)
        {
          *(v87 + v13) = 1;
          v33 = *(v71 + v13);
          if (v33 != 255)
          {
            *(v87 + v33) = 1;
          }

          ++BYTE4(v73);
          v34 = *v19;
          if (v34 <= 7)
          {
            if (((1 << v34) & 0xEA) != 0)
            {
              LOBYTE(v72) = v72 + 1;
            }

            else if (v34 == 2)
            {
              LOBYTE(v70) = v70 + 1;
            }

            else if (v34 == 4)
            {
              ++BYTE4(v70);
            }
          }
        }

        v17 = v17 + v32 * v32 / v29;
        v18 = v18 + 1.0 / v29;
        v35 = v19[1];
        if (v35 <= 0xD)
        {
          v36 = 1 << v35;
          if ((v36 & 0x923) != 0)
          {
            LOBYTE(v73) = v73 + 1;
          }

          else if ((v36 & 0x2288) != 0)
          {
            ++BYTE4(v72);
          }
        }
      }
    }

    else
    {
      v5 = v20;
    }

LABEL_52:
    if (v24 > 0x1D)
    {
      switch(a1)
      {
        case 3:
          v40 = v78;
          break;
        case 2:
          v40 = v77;
          break;
        case 1:
          v40 = v76;
          break;
        default:
          goto LABEL_70;
      }

      *(v40 + v13) = 0;
    }

    else
    {
      *(v15 + v13) = 0;
      ++*(a3 + v14);
      switch(a1)
      {
        case 3:
          v42 = *(v78 + v13);
          if (v42 == 255)
          {
            break;
          }

          v38 = v42 + 1;
          v39 = v78;
          goto LABEL_67;
        case 2:
          v41 = *(v77 + v13);
          if (v41 == 255)
          {
            break;
          }

          v38 = v41 + 1;
          v39 = v77;
          goto LABEL_67;
        case 1:
          v37 = *(v76 + v13);
          if (v37 != 255)
          {
            v38 = v37 + 1;
            v39 = v76;
LABEL_67:
            *(v39 + v13) = v38;
          }

          break;
      }
    }

LABEL_70:
    ++v13;
  }

  while (v13 != 128);
  if (a1 == 1)
  {
    v45 = v69;
    v68[687] = v72;
    v68[692] = v70;
    v68[697] = BYTE4(v70);
    v68[702] = v73;
    v68[707] = BYTE4(v72);
    v44 = v74;
    v43 = BYTE4(v73);
  }

  else
  {
    v44 = v74;
    v45 = v69;
    v43 = BYTE4(v73);
    if (a1 == 2)
    {
      v68[688] = v72;
      v68[693] = v70;
      v68[698] = BYTE4(v70);
      v68[703] = v73;
      v68[708] = BYTE4(v72);
    }

    else if (a1 == 3)
    {
      v68[689] = v72;
      v68[694] = v70;
      v68[699] = BYTE4(v70);
      v68[704] = v73;
      v68[709] = BYTE4(v72);
    }
  }

  v46 = *(v44 + 6808);
  if (v46 < 1.0)
  {
    *(v44 + 6800) = 0;
    v47 = v45[1686];
    v48 = &qword_299050EA0;
    v49 = vld1q_dup_f64(v48);
    *&v49.f64[0] = qword_299050EB0[v47.f64[0] > 1.0];
    v50 = vmulq_f64(v47, v49);
    v45[1686] = v50;
    if (v50.f64[1] < 1.0)
    {
      v45[1686] = 0u;
    }

    goto LABEL_109;
  }

  v51 = v17 * *(v44 + 6816) / v46;
  *(v44 + 6800) = v51;
  if (v51 > 3.02)
  {
    v52 = v45[1686].f64[0];
    if (v52 > 11.0)
    {
      if (v52 > 1.0)
      {
        if (v51 <= v52)
        {
          v51 = v45[1686].f64[0];
        }

        v51 = v51 * 0.1;
      }

      goto LABEL_92;
    }

    v53 = v46 + 0.5;
    if (v53 <= 4)
    {
      v54 = v53 - 1;
    }

    else
    {
      v54 = 4;
    }

    v55 = F_dist[v54];
    v57 = v51 <= v55;
    v56 = fmin(v52, 4.0) * v55;
    v57 = v57 || v51 <= v56;
    if (!v57)
    {
      if (v52 > 1.0)
      {
        v51 = v51 / v52;
      }

LABEL_92:
      if (*(v5 + 1872) != 1 && v51 > *(v5 + v67))
      {
        *(v5 + v67) = v51;
      }
    }
  }

  if (*(a3 + 241))
  {
    *(v44 + 6808) = 0;
  }

  else
  {
    v58 = v45[1686].f64[1] * 0.98;
    v59 = *(v44 + 6800) / (v18 / v43);
    *(v44 + 6784) = v59;
    v45[1687].f64[0] = v59 * *(v44 + 6808) + v45[1687].f64[0] * v45[1687].f64[0] * v58;
    v60 = *(v44 + 6800) * *(v44 + 6808) + v45[1686].f64[0] * v58;
    v45[1686].f64[0] = v60;
    v61 = v58 + *(v44 + 6808);
    v45[1686].f64[1] = v61;
    v45[1686].f64[0] = v60 / v61;
    *(v44 + 6784) = sqrt(*(v44 + 6784));
    v45[1687].f64[0] = sqrt(v45[1687].f64[0] / v45[1686].f64[1]);
    v62 = *(v5 + v67);
    if (v62 > 1.0)
    {
      v63 = v45[1686].f64[0];
      if (v63 > 11.0)
      {
        v64 = v63 / v62;
        v45[1686].f64[0] = v64;
        if (v64 < 10.0)
        {
          v45[1686].f64[0] = 10.0;
        }
      }
    }
  }

LABEL_109:
  *(v44 + 6792) = v45[1687].f64[0];
LABEL_110:
  v65 = *MEMORY[0x29EDCA608];
  return v43;
}

unint64_t NK_PR_Res_ReWeight(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 241) & 1) == 0 && *(a3 + 27120) <= *(a3 + 16) && *(a4 + 1872) == 1)
  {
    v4 = *(a3 + 148);
    if (v4 >= *(a3 + 152))
    {
      v4 = *(a3 + 152);
    }

    if (v4 >= *(a3 + 156))
    {
      v4 = *(a3 + 156);
    }

    if (v4 >= 0xB)
    {
      v5 = 0;
      result = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
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
      v15 = a4 + 7080;
      v16 = a2 + 736;
      v17 = (a4 + 12072);
      v18 = a2 + 608;
      v19 = (a2 + 96);
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v20 = (a4 + 12072);
      v21 = (a2 + 96);
      do
      {
        if (*(v15 + v5) == 1)
        {
          v22 = v20[800];
          if (v22 > 0.0)
          {
            if ((*(&v76 + v5) & 1) == 0)
            {
              result = (result + 1);
              *(&v76 + v5) = 1;
              v23 = *(v16 + v5);
              if (v23 != 255)
              {
                *(&v76 + v23) = 1;
              }
            }

            v24 = *v20;
            v25 = fabs(*v20);
            if (v25 < 20.0 && (*(&v68 + v5) & 1) == 0)
            {
              ++v6;
              *(&v68 + v5) = 1;
              v26 = *(v16 + v5);
              if (v26 != 255)
              {
                *(&v68 + v26) = 1;
              }
            }

            v27 = v24 * v24 / v22;
            if (v27 < 16.0)
            {
              ++v11;
              if (v27 < 9.0)
              {
                ++v10;
                if (v27 < 4.0)
                {
                  ++v9;
                  if (v27 < 1.0)
                  {
                    ++v8;
                  }
                }
              }
            }

            ++v7;
            if (v24 > 0.0)
            {
              ++v12;
            }

            if (*(v16 + v5 - 128) == 1 && *v21 != 6)
            {
              if (v25 < 10.0)
              {
                ++v14;
              }

              if (v24 > 25.0)
              {
                ++v13;
              }
            }
          }
        }

        ++v5;
        v21 += 4;
        ++v20;
      }

      while (v5 != 128);
      if (v7 <= 0)
      {
        v36 = 0;
        v35 = 0;
        v34 = 0;
        v33 = 0;
      }

      else
      {
        v28 = 100.0 / v7;
        v29 = v28 * v8;
        v30 = v28 * v9;
        v31 = v28 * v10;
        v32 = v28 * v11;
        v33 = v29 > 40.0;
        v34 = v30 > 50.0;
        v35 = v31 > 60.0;
        v36 = v32 > 70.0;
      }

      if (result >= 10 && v6 >= 5 && v7 >= 15 && v12 >= 4 && v13 <= 1)
      {
        v57 = v9 <= 20 && v14 <= 5;
        v58 = !v57;
        if (v58 || v33 || v34 || v35 || v36)
        {
          for (i = 0; i != 128; ++i)
          {
            if (*(v15 + i) == 1)
            {
              if ((v60 = *v17, *(v18 + i) != 1) || *v19 == 6 || (v60 > 0.0 ? (v61 = v14 < 6) : (v61 = 0), !v61 ? (v62 = 0) : (v62 = 1), v60 <= 20.0 && (v62 & 1) == 0))
              {
                v63 = v60 * v60;
                if (v60 * v60 > v17[800])
                {
                  if (v60 <= 0.0)
                  {
                    v65 = 3.0;
                    if (v60 >= -25.0)
                    {
                      v65 = 1.0;
                      if (v60 < -5.0)
                      {
                        v65 = (-5.0 - v60) * 0.1 + 1.0;
                      }
                    }

                    v64 = v63 * (v65 * v65);
                  }

                  else
                  {
                    v64 = v17[672] * 4.0;
                    if (v63 < v64)
                    {
                      v64 = v63;
                    }
                  }

                  v17[672] = v64;
                  *(a4 + 19496 + i) = 1;
                }
              }
            }

            ++v17;
            v19 += 4;
          }
        }
      }

      goto LABEL_119;
    }
  }

  if (!*(a4 + 1872) && *(a3 + 20) <= 3u && *(a4 + 20) >= 7 && *(result + 60) >= 5)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
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
    v41 = a4 + 7080;
    v42 = a2 + 736;
    v43 = (a4 + 12072);
    memset(v67, 0, sizeof(v67));
    result = v67;
    v44 = (a4 + 12072);
    do
    {
      if (*(v41 + v37) == 1 && v44[800] > 0.0)
      {
        if ((*(&v76 + v37) & 1) == 0)
        {
          ++v40;
          *(&v76 + v37) = 1;
          v45 = *(v42 + v37);
          if (v45 != 255)
          {
            *(&v76 + v45) = 1;
          }
        }

        v46 = fabs(*v44);
        if (v46 < 15.0 && (*(&v68 + v37) & 1) == 0)
        {
          ++v39;
          *(&v68 + v37) = 1;
          v47 = *(v42 + v37);
          if (v47 != 255)
          {
            *(&v68 + v47) = 1;
          }
        }

        if (v46 < 30.0 && (*(v67 + v37) & 1) == 0)
        {
          ++v38;
          *(v67 + v37) = 1;
          v48 = *(v42 + v37);
          if (v48 != 255)
          {
            *(v67 + v48) = 1;
          }
        }
      }

      ++v37;
      ++v44;
    }

    while (v37 != 128);
    if (v40 >= 5 && v38 >= 1)
    {
      v49 = 0;
      v51 = v40 > 7 && v38 > 3;
      do
      {
        result = *(v41 + v49);
        if (result == 1)
        {
          v52 = *v43;
          if (*v43 > 10.0 && v39 <= 11)
          {
            if (v43[672] > 100.0)
            {
              v43[672] = 100.0;
              goto LABEL_80;
            }
          }

          else if (v52 <= -10.0)
          {
            if (v52 * v52 > v43[800])
            {
              if (v51)
              {
                v43[672] = v52 * v52;
              }

              v56 = 3.0;
              if (v52 >= -50.0)
              {
                v56 = 1.0;
                if (v52 < -10.0)
                {
                  v56 = (-10.0 - v52) * 0.1 + 1.0;
                }
              }

              v55 = v43[672] * (v56 * v56);
LABEL_79:
              v43[672] = v55;
LABEL_80:
              *(a4 + 19496 + v49) = 1;
            }
          }

          else
          {
            v54 = v43[672];
            if (v54 > 400.0)
            {
              v55 = fmin(v54 * 0.25, 400.0);
              goto LABEL_79;
            }
          }
        }

        ++v49;
        ++v43;
      }

      while (v49 != 128);
    }
  }

LABEL_119:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_ASBAS_Set_Eph_El(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ASBAS_Set_Eph_El"))
  {
    goto LABEL_23;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_nd("GN_ASBAS_Set_Eph_El: ", 2, v6, a1, a2);
  }

  else
  {
    EvLog_nd("GN_ASBAS_Set_Eph_El: ", 16, *(a3 + 10), a1, a2, *a3, *(a3 + 2), *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), *(a3 + 7), *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 48));
  }

  if (a1 <= 0x77)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d <%d, Out of range!");
LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  if (a1 >= 0x9F)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d >%d, Out of range!");
    goto LABEL_23;
  }

  if (*a3 >> 3 >= 0x2A3u)
  {
    v25 = *a3;
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: to = %d >=5400, Out of range!");
    goto LABEL_23;
  }

  v7 = *(a3 + 2);
  if (v7 >= 0x10)
  {
    v26 = *(a3 + 2);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: URA = %d >15, Out of range!");
    goto LABEL_23;
  }

  v8 = *(a3 + 1);
  if ((v8 - 2048) <= 0xFFFFEFFF)
  {
    v27 = *(a3 + 1);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf0 = %d <-2^11 or >=2^11, Out of range!");
    goto LABEL_23;
  }

  v9 = *(a3 + 2);
  if (v9 != v9)
  {
    v28 = *(a3 + 2);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf1 = %d <-2^7 or >=2^7, Out of range!");
    goto LABEL_23;
  }

  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    if ((*&a3[2 * v10 + 6] - 536870913) < 0xBFFFFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[%d] = %d <-2^29 or >=2^29, Out of range!");
      goto LABEL_23;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  v13 = *(a3 + 5);
  if ((v13 - 16777217) < 0xFDFFFFFF)
  {
    v29 = *(a3 + 5);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[2] = %d <-2^24 or >=2^24, Out of range!");
    goto LABEL_23;
  }

  v17 = 0;
  v18 = 1;
  do
  {
    v19 = v18;
    if ((*&a3[2 * v17 + 12] - 65537) < 0xFFFDFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[%d] = %d <-2^16 or >=2^16, Out of range!");
      goto LABEL_23;
    }

    v18 = 0;
    v17 = 1;
  }

  while ((v19 & 1) != 0);
  v20 = *(a3 + 8);
  if ((v20 - 131073) < 0xFFFBFFFF)
  {
    v30 = *(a3 + 8);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[2] = %d <-2^17 or >=2^17, Out of range!");
    goto LABEL_23;
  }

  for (i = 0; i != 3; ++i)
  {
    if ((*&a3[2 * i + 18] - 513) < 0xFFFFFBFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: acc[%d] = %d <-2^9 or >=2^9, Out of range!");
      goto LABEL_23;
    }
  }

  v22 = *(p_api + 48);
  if (*(v22 + 16) == 1 && *v22 >= 3)
  {
    v23 = *(v22 + 40) + 604800 * *(v22 + 32);
  }

  else
  {
    v23 = 0;
  }

  v32 = *a3;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = *(a3 + 6);
  v37 = v13;
  v38 = *(a3 + 3);
  v39 = v20;
  v40 = *(a3 + 18);
  v41 = *(a3 + 11);
  if (*(a3 + 48))
  {
    v24 = 5;
  }

  else
  {
    v24 = 3;
  }

  v31[0] = v23;
  v31[1] = v24;
  v14 = SBAS_Set_StateTable(a1, a2, v31);
  if (v14)
  {
    Debug_Log_SBA_Eph(1, a1, a2, v31);
  }

LABEL_24:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t G5K_Read_GNB_Meas(char **a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (*a1 != v3 && v4 == v2)
  {
    *a1 = v3;
    a1[1] = v3;
    v2 = v3;
    v4 = v3;
  }

  v6 = 15 * (a1[3] - v3) + (15 * (a1[3] - v3) < 0 ? 0xFuLL : 0);
  v7 = v6 >> 4;
  if (v4 >= v2)
  {
    v2 = a1[3];
  }

  else
  {
    LOWORD(v2) = v2 - 1;
  }

  v8 = v2 - v4;
  v9 = (v6 >> 4);
  if (v9 < v8)
  {
    v8 = v6 >> 4;
  }

  result = GncP02_16GetMEDataFrmBuf(v8, v4);
  v11 = &(*a1)[result];
  *a1 = v11;
  if (v11 >= a1[3])
  {
    v13 = a1[1];
    v12 = a1[2];
    if (v13 != v12)
    {
      *a1 = v12;
      v14 = ~v12 + v13;
      if (v9 < v14)
      {
        v14 = v7;
      }

      result = GncP02_16GetMEDataFrmBuf(v14, v12);
      v15 = &(*a1)[result];
      *a1 = v15;
      if (v15 >= a1[3])
      {
        *a1 = a1[2];
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void G5K_ME_Decode_Meas(unsigned __int8 **a1, char *a2)
{
  v243 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 48);
  v4 = a1[1];
  if (v4 == *a1)
  {
    goto LABEL_349;
  }

  v6 = a2 + 28216;
  v7 = a2 + 381;
  v8 = a2 + 1;
  v234 = a2 + 12344;
  v235 = a2 + 7736;
  v237 = a2 + 568;
  v238 = a2 + 402;
  v236 = a2 + 2;
  v233 = a2 + 12352;
  v231 = a2 + 12356;
  v232 = a2 + 12366;
  v230 = vdupq_n_s64(0x40F5180000000000uLL);
  v229 = vdupq_n_s64(0x4122750000000000uLL);
  while (1)
  {
    v11 = *v4;
    v9 = v4 + 1;
    v10 = v11;
    a1[1] = v9;
    if (v9 >= a1[3])
    {
      a1[1] = a1[2];
    }

    if (v3 < a2 || v3 >= v7)
    {
      EvCrt_v("G5K_ME_Decode_Meas: Rec Buff out of bounds");
      a2[392] = 0;
      v3 = a2;
    }

    if (v10 == 123 || v10 == 36)
    {
      a2[392] = 1;
      *a2 = v10;
      v3 = a2 + 1;
      goto LABEL_11;
    }

    if (a2[392] == 1)
    {
      *v3++ = v10;
      if (v10 == 10)
      {
        *v3 = 0;
        if (a2[392] == 1 && STEU_Checksum_OK(a2))
        {
          v13 = *v8;
          if (v13 <= 0x47)
          {
            v14 = v236;
            v15 = 0uLL;
            if (*v8 <= 0x42u)
            {
              if (v13 == 65)
              {
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 6;
              }

              else
              {
                if (v13 != 66)
                {
LABEL_49:
                  EvLog_v("ME_Get_Msg_Type: Unknown message type:  {%c", v13);
                  goto LABEL_58;
                }

                v16 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 10;
                v17 = 1;
              }
            }

            else
            {
              switch(v13)
              {
                case 'C':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 7;
                  break;
                case 'F':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 5;
                  break;
                case 'G':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 4;
                  break;
                default:
                  goto LABEL_49;
              }
            }
          }

          else
          {
            v14 = v236;
            v15 = 0uLL;
            if (*v8 > 0x4Du)
            {
              switch(v13)
              {
                case 'N':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 9;
                  break;
                case 'W':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 11;
                  break;
                case 'T':
                  v16 = 0;
                  v17 = 0;
                  v19 = 0;
                  v20 = 2;
                  v18 = 1;
                  break;
                default:
                  goto LABEL_49;
              }
            }

            else
            {
              switch(v13)
              {
                case 'H':
                  if ((a2[403] & 1) != 0 || a2[405])
                  {
                    v23 = a2[404] - a2[405];
                    v24 = *(a2 + 200) + a2[404] - a2[405];
                    *(a2 + 200) = v24;
                    v25 = *(a2 + 198) + 1;
                    *(a2 + 198) = v25;
                    EvCrt_nd("G5K_ME_InComplete_Epoch_Check: Missed M & T", 3, v12, 0.0, v23, v24, v25);
                    *(a2 + 403) = 0;
                    a2[405] = 0;
                    bzero(v237, 0x1C00uLL);
                    v26 = v235;
                    v27 = 128;
                    do
                    {
                      *(v26 + 16) = 0;
                      *v26 = 0uLL;
                      *(v26 + 1) = 0uLL;
                      v26 += 36;
                      --v27;
                    }

                    while (v27);
                    EvCrt_v("G5K_ME_InComplete_Epoch_Check:  Flushing M");
                    v15 = 0uLL;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v20 = 3;
                    v16 = 1;
                    v14 = v236;
                  }

                  else
                  {
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v20 = 3;
                    v16 = 1;
                  }

                  break;
                case 'I':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 8;
                  break;
                case 'M':
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 1;
                  v20 = 1;
                  break;
                default:
                  goto LABEL_49;
              }
            }
          }

          *&v241[96] = v15;
          v242 = v15;
          *&v241[64] = v15;
          *&v241[80] = v15;
          *&v241[32] = v15;
          *&v241[48] = v15;
          *v241 = v15;
          *&v241[16] = v15;
          v28 = *a2;
          if (v28 != 123)
          {
            v29 = "G5K_ME_Decode: Incorrect 1st ch";
            goto LABEL_57;
          }

          v28 = *v8;
          if ((v28 - 123) <= 0xFFFFFFC5)
          {
            v29 = "G5K_ME_Decode: Incorrect ID";
LABEL_57:
            EvCrt_d(v29, v28);
            goto LABEL_58;
          }

          v55 = *v14;
          if (v55 == 125)
          {
            v29 = "G5K_ME_Decode: Incorrect start";
            v28 = 125;
            goto LABEL_57;
          }

          v228 = v6;
          v56 = 0;
          LODWORD(v240) = 0;
          while (2)
          {
            v57 = 0;
            v58 = v56;
            while (1)
            {
              v59 = v57;
              if ((v55 - 112) <= 0xBFu)
              {
                v65 = v55;
                v66 = "G5K_ME_Decode: Illegal ch";
                goto LABEL_132;
              }

              v241[v57 - 8] = v55 - 48;
              v55 = v14[v57 + 1];
              if (v55 == 125)
              {
                break;
              }

              ++v57;
              if (v59 == 3)
              {
                goto LABEL_123;
              }
            }

            if (v57 != 3)
            {
              v221 = v20;
              v217 = v19;
              v212 = v18;
              v206 = v16;
              v208 = v17;
              gn_report_assertion_failure("G5K_ME_Decode: Input not N x 4 bytes");
              memset(&v241[v59 - 7], 32, (2 - v59) + 1);
              v16 = v206;
              v17 = v208;
              v18 = v212;
              v19 = v217;
              v20 = v221;
            }

LABEL_123:
            if (v58 >= 0x7D)
            {
              EvCrt_v("G5K_ME_Decode: Input longer than buffer. Received  %d  Max %d bytes");
              goto LABEL_133;
            }

            v14 += v59 + 1;
            v60 = BYTE1(v240);
            v241[v58] = (BYTE1(v240) >> 4) + 4 * v240;
            v61 = BYTE2(v240);
            v241[v58 + 1] = (BYTE2(v240) >> 2) + 16 * v60;
            v241[v58 + 2] = BYTE3(v240) + (v61 << 6);
            v56 = v58 + 3;
            v55 = *v14;
            if (v55 != 125)
            {
              continue;
            }

            break;
          }

          v62 = v20 - 1;
          if (!v16)
          {
            v6 = v228;
            goto LABEL_146;
          }

          v6 = v228;
          if (v58 <= 23)
          {
            if (v58 == 12)
            {
              v63 = 14;
              v64 = -14;
              goto LABEL_143;
            }

            if (v58 == 18)
            {
              v63 = 19;
              v64 = -19;
              goto LABEL_143;
            }

            goto LABEL_176;
          }

          if (v58 == 24)
          {
            v63 = 27;
            v64 = -27;
            goto LABEL_143;
          }

          if (v58 == 27)
          {
            v63 = 29;
            v64 = -29;
            goto LABEL_143;
          }

          if (v58 != 33)
          {
            goto LABEL_176;
          }

          v63 = 34;
          v64 = -34;
LABEL_143:
          v67 = v64 + G5K_CompMsgSize[v62];
          if (!v67 || (v56 = (v67 + v63), v56 > 0x80))
          {
            v56 = v63;
            goto LABEL_176;
          }

          do
          {
            v241[v63] = 0;
            LODWORD(v63) = v63 + 1;
            --v67;
          }

          while (v67);
LABEL_146:
          if (v17)
          {
            if (v56 == 21)
            {
              v56 = G5K_CompMsgSize[v62];
              v68 = 21;
              do
              {
                v241[v68++] = 0;
              }

              while (v56 != v68);
              goto LABEL_150;
            }

            goto LABEL_176;
          }

LABEL_150:
          if (v18)
          {
            if (v56 <= 20)
            {
              if (v56 == 15)
              {
                v69 = -15;
              }

              else
              {
                if (v56 != 18)
                {
                  goto LABEL_176;
                }

                v69 = -18;
              }
            }

            else
            {
              switch(v56)
              {
                case 0x15:
                  v56 = 20;
                  v69 = -20;
                  break;
                case 0x18:
                  v56 = 22;
                  v69 = -22;
                  break;
                case 0x3F:
                  v69 = -63;
                  break;
                default:
                  goto LABEL_176;
              }
            }

            v70 = v69 + G5K_CompMsgSize[v62];
            if (v70 && (v70 + v56) <= 0x80)
            {
              do
              {
                v241[v56] = 0;
                v56 = (v56 + 1);
                --v70;
              }

              while (v70);
              goto LABEL_166;
            }
          }

          else
          {
LABEL_166:
            if (!v19)
            {
              goto LABEL_176;
            }

            switch(v56)
            {
              case '6':
                v71 = -54;
                break;
              case 'E':
                v56 = 68;
                v71 = -68;
                break;
              case 'B':
                v56 = 64;
                v71 = -64;
                break;
              default:
                goto LABEL_176;
            }

            v72 = v71 + G5K_CompMsgSize[v62];
            if (v72 && (v72 + v56) <= 0x80)
            {
              do
              {
                v241[v56] = 0;
                v56 = (v56 + 1);
                --v72;
              }

              while (v72);
            }
          }

LABEL_176:
          v73 = G5K_CompMsgSize[v62];
          if (v56 != v73)
          {
            v74 = G5K_CompMsgType[v62];
            v75 = v56 >= v73 ? "G5K_ME_Decode: Warning: {%c too long, %d < %d " : "G5K_ME_Decode: ERROR: {%c too short, %d < %d ";
            v222 = v20;
            v218 = v56;
            EvCrt_v(v75, v74, v56, v73);
            LODWORD(v56) = v218;
            v20 = v222;
            if (v218 < v73)
            {
              goto LABEL_58;
            }
          }

          if (!v56)
          {
            goto LABEL_58;
          }

          if (v20 > 5)
          {
            if (v20 <= 8)
            {
              if (v20 == 6)
              {
                v94 = 0;
                v95 = v232;
                v96 = v233;
                while (v234[124 * v94 + 120])
                {
                  ++v94;
                  v96 += 124;
                  v95 += 124;
                  if (v94 == 128)
                  {
                    EvLog("ME_dec_A: No empty slots!");
                    goto LABEL_58;
                  }
                }

                LODWORD(v240) = 0;
                v226 = v241[0] & 0xF;
                v215 = v95;
                v121 = Decode_SVid_STE(v241[1], v241[0] >> 4, &v240);
                if (v240 != 3)
                {
                  EvLog_v("G5K_ME_dec_A: Illegal GAL STE SV:  ID %d  Const %d  Sig %d");
                  goto LABEL_133;
                }

                v122 = &v234[124 * v94];
                *v122 = 3;
                v122[1] = v226;
                v122[2] = v121;
                v122[3] = 0;
                if ((v226 | 2) != 0xA)
                {
                  EvLog_d("ME_dec_A: Illegal GAL Signal ", v226);
                  goto LABEL_133;
                }

                v122[5] = v121;
                v122[7] = v241[2];
                v122[6] = v241[3] != 0;
                v123 = 7;
                v124 = &v241[4];
                do
                {
                  v125 = *v124++;
                  *v96 = v125;
                  v96 += 2;
                  --v123;
                }

                while (v123);
                v126 = v215;
                do
                {
                  *v126 = *(v124 + v123);
                  v126 += 2;
                  v123 += 2;
                }

                while (v123 != 14);
                v122[4] = 1;
                ++a2[417];
                v122[120] = 1;
              }

              else
              {
                if (v20 == 7)
                {
                  v76 = v234;
                  v77 = 128;
                  while (v76[120])
                  {
                    v76 += 124;
                    if (!--v77)
                    {
                      EvCrt_v("G5K_ME_dec_C: No empty slots!", v179, v180);
                      goto LABEL_58;
                    }
                  }

                  LODWORD(v240) = 0;
                  v133 = v241[0] & 0xF;
                  v134 = Decode_SVid_STE(v241[1], v241[0] >> 4, &v240);
                  v135 = v133 == 11 && v240 == 4;
                  if (v135 && (v134 - 64) > 0xFFFFFFC0)
                  {
                    v136 = *&v241[4];
                    *(v76 + 24) = *&v241[20];
                    v137 = *&v241[52];
                    *(v76 + 40) = *&v241[36];
                    *v76 = 2820;
                    v76[2] = v134;
                    v76[3] = 0;
                    v76[5] = v134;
                    *(v76 + 3) = *&v241[2];
                    *(v76 + 56) = v137;
                    *(v76 + 67) = *&v241[63];
                    *(v76 + 8) = v136;
                    v138 = *&v241[95];
                    v139 = v241[111];
                    *(v76 + 83) = *&v241[79];
                    v76[115] = v139;
                    *(v76 + 99) = v138;
                    v76[116] = v76[83] & 3;
                    v76[4] = 1;
                    ++a2[421];
                    v76[120] = 1;
                    goto LABEL_293;
                  }

                  EvCrt_v("ME_dec_C: Illegal BDS STE SV:  ID %d  Const %d  Sig %d");
LABEL_133:
                  v6 = v228;
                  goto LABEL_58;
                }

                v98 = v234;
                v109 = 128;
                while (v98[120])
                {
                  v98 += 124;
                  if (!--v109)
                  {
                    EvCrt_v("G5K_ME_dec_I: No empty slots!");
                    goto LABEL_58;
                  }
                }

                LODWORD(v240) = 0;
                v140 = v241[0] & 0xF;
                v141 = Decode_SVid_STE(v241[1], v241[0] >> 4, &v240);
                v144 = v140 == 3 && v240 == 6 && (v141 - 15) > 0xFFFFFFF1;
                if (!v144)
                {
                  EvCrt_v("ME_dec_I: Illegal NVC STE SV:  ID %d  Const %d  Sig %d");
                  goto LABEL_133;
                }

                *v98 = 774;
                v98[2] = v141;
                v98[3] = 0;
                v98[5] = v141;
                *(v98 + 3) = *&v241[2];
                v142.i32[0] = *&v241[4];
                *(v98 + 2) = *&v241[4];
                *(v98 + 12) = *&v241[8];
                *(v98 + 28) = *&v241[24];
                *(v98 + 41) = *&v241[37];
                v98[49] = -1;
                if (vmovl_u8(v142).u8[0] == 1)
                {
                  v98[49] = (v98[31] & 0x20) != 0;
                }

                v98[4] = 1;
                ++a2[425];
LABEL_292:
                v98[120] = 1;
              }

LABEL_293:
              v6 = v228;
              goto LABEL_58;
            }

            if (v20 != 9)
            {
              if (v20 == 10)
              {
                *(a2 + 119) = *v241;
                *(v238 + 11) = *&v241[4];
                *(a2 + 249) = *&v241[12];
                a2[500] = v241[14];
                *(a2 + 60) = *&v241[15];
                *(a2 + 244) = *&v241[23];
                ++a2[508];
                *(a2 + 126) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              }

              else
              {
                *(a2 + 107) = *v241;
                a2[432] = v241[4];
                *(a2 + 109) = *&v241[5];
              }

              goto LABEL_58;
            }

            v97 = *&v241[2];
            if ((v241[0] & 0xD0) == 0x10)
            {
              if ((v241[0] & 0xF) == 0)
              {
                a2[408] = v241[1];
                *v6 = v97;
                a2[407] = 1;
              }

              goto LABEL_308;
            }

            v145 = v241[0] >> 4;
            if (v145 <= 4)
            {
              v6 = v228;
              if (v145 == 2)
              {
                goto LABEL_308;
              }

              if (v145 == 4)
              {
                a2[412] = v241[1];
                v6 = v228;
                *(v228 + 1) = v97;
                a2[411] = 1;
                goto LABEL_308;
              }
            }

            else
            {
              switch(v145)
              {
                case 5u:
                  a2[416] = v241[1];
                  v6 = v228;
                  *(v228 + 2) = v97;
                  a2[415] = 1;
                  goto LABEL_308;
                case 6u:
                  a2[420] = v241[1];
                  v6 = v228;
                  *(v228 + 3) = v97;
                  a2[419] = 1;
                  goto LABEL_308;
                case 7u:
                  a2[424] = v241[1];
                  v6 = v228;
                  *(v228 + 4) = v97;
                  a2[423] = 1;
LABEL_308:
                  a2[406] = 1;
                  goto LABEL_58;
              }
            }

            EvCrt_d("G5K_ME_dec_N: Illegal Constell ", v145);
            v6 = v228;
            goto LABEL_308;
          }

          if (v20 > 2)
          {
            if (v20 == 3)
            {
              a2[404] = v241[0];
              *(a2 + 130) = *&v241[1];
              *(a2 + 268) = *&v241[5];
              *(a2 + 270) = *&v241[7];
              a2[544] = v241[9];
              *(a2 + 269) = *&v241[10];
              *(a2 + 545) = *&v241[12];
              v84 = v241[14];
              a2[547] = v241[14];
              v85 = v241[15];
              a2[548] = v241[15];
              v86 = v241[16];
              a2[549] = v241[16];
              v224 = v241[17];
              a2[551] = v241[17];
              *&v240 = COERCE_DOUBLE(&v241[19]);
              *(a2 + 66) = ByteS_Ext_8(&v240);
              v87 = v240;
              *(a2 + 277) = *v240;
              *(a2 + 271) = *(v87 + 1);
              v88 = v87[4];
              a2[550] = v88;
              a2[552] = v87[5];
              a2[553] = v87[6];
              a2[556] = v87[7];
              a2[557] = v87[8];
              a2[558] = v87[9];
              a2[559] = v87[10];
              v89 = v87[11];
              v240 = v87 + 11;
              a2[560] = v89;
              a2[547] = (v84 + 8) >> 4;
              a2[548] = (v85 + 8) >> 4;
              a2[549] = (v86 + 8) >> 4;
              a2[550] = (v88 + 8) >> 4;
              a2[551] = (v224 + 8) >> 4;
              LODWORD(v87) = g_GncPMeData;
              *(a2 + 131) = g_GncPMeData;
              if (!v87)
              {
                *(a2 + 131) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              }

              TM_FSP_OS_Time_ms_for_TTick = API_Get_TM_FSP_OS_Time_ms_for_TTick(*(a2 + 130));
              v91 = *(a2 + 131);
              if (TM_FSP_OS_Time_ms_for_TTick)
              {
                v92 = TM_FSP_OS_Time_ms_for_TTick;
                v93 = TM_FSP_OS_Time_ms_for_TTick - v91 >= 0 ? TM_FSP_OS_Time_ms_for_TTick - v91 : v91 - TM_FSP_OS_Time_ms_for_TTick;
                if (v93 >> 3 <= 0x270)
                {
                  if (g_Logging_Cfg >= 7)
                  {
                    EvLog_v("TM_FSP: Replacing %u with %u delta %d", v91, TM_FSP_OS_Time_ms_for_TTick, TM_FSP_OS_Time_ms_for_TTick - v91);
                  }

                  *(a2 + 131) = v92;
                  v91 = v92;
                }
              }

              a2[403] = 1;
              v6 = v228;
              *(v228 + 7) = v91;
              goto LABEL_58;
            }

            if (v20 != 4)
            {
              v98 = v234;
              v99 = 128;
              while (v98[120])
              {
                v98 += 124;
                if (!--v99)
                {
                  EvCrt_v("G5K_ME_dec_F: No empty slots!");
                  goto LABEL_58;
                }
              }

              LODWORD(v240) = 0;
              v130 = v241[0] & 0xF;
              v131 = Decode_SVid_STE(v241[1], v241[0] >> 4, &v240);
              if (v240 != 2)
              {
                EvCrt_v("ME_dec_F: Illegal F STE SV:  ID %d  Const %d  Sig %d");
                goto LABEL_133;
              }

              *v98 = 2;
              v98[1] = v130;
              v98[2] = 0;
              v98[3] = v131;
              v98[5] = v131;
              _ZF = v241[2] == 0;
              v98[6] = v241[2] != 0;
              v132 = v241[3];
              if (_ZF)
              {
                v132 = -1;
              }

              v98[7] = v132;
              *(v98 + 1) = *&v241[5];
              *(v98 + 4) = *&v241[13];
              v98[4] = 1;
              ++a2[413];
              goto LABEL_292;
            }

            v78 = 0;
            v79 = v231;
            while (v234[124 * v78 + 120])
            {
              ++v78;
              v79 += 31;
              if (v78 == 128)
              {
                EvCrt_v("G5K_ME_dec_G: No empty slots!");
                goto LABEL_58;
              }
            }

            LODWORD(v240) = 0;
            v127 = v241[0] & 0xF;
            v128 = Decode_SVid_STE(v241[1], v241[0] >> 4, &v240);
            if ((v240 != 1 || (v128 - 33) <= 0xFFFFFFDF) && (v240 != 5 || (v128 - 203) <= 0xFFFFFFF5))
            {
              EvCrt_v("ME_dec_G: Illegal GPS/QZSS STE SV:  ID %d  Const %d  Sig %d");
              goto LABEL_133;
            }

            v129 = &v234[124 * v78];
            *v129 = v240;
            v129[1] = v127;
            v129[2] = v128;
            v129[3] = 0;
            if (!v127)
            {
              v146 = 0;
              v147 = 0;
              v129[5] = v128;
              v148 = *&v241[4];
              *(v129 + 4) = *&v241[4];
              v149 = &v241[6];
              do
              {
                *v79++ = *v149 | (*(v149 + 2) << 16);
                v147 += ((v148 >> v146++) & 1) == 0;
                v149 = (v149 + 3);
              }

              while (v146 != 10);
              v129[6] = v147;
              v129[4] = 1;
              ++a2[409];
              v129[120] = 1;
              goto LABEL_133;
            }

            v66 = "ME_dec_G: Illegal GPS/QZSS Signal ";
            v65 = v127;
LABEL_132:
            EvCrt_d(v66, v65);
            goto LABEL_133;
          }

          if (v20 != 1)
          {
            v100 = *v241;
            v101 = *&v241[4];
            *(a2 + 110) = *v241;
            *(a2 + 111) = v101;
            *(a2 + 112) = *&v241[8];
            *(a2 + 113) = 8 * *&v241[10];
            v102 = v241[14];
            if (v241[14] > 7u)
            {
              v102 = -1;
            }

            a2[456] = v102;
            v220 = *&v241[15];
            v198 = v241[17];
            v214 = *&v241[18];
            v225 = v241[20];
            v103 = v241[21];
            v207 = *&v241[24];
            v210 = *&v241[22];
            v204 = *&v241[28];
            v205 = *&v241[26];
            v202 = *&v241[32];
            v203 = *&v241[30];
            v200 = *&v241[36];
            v201 = *&v241[34];
            v195 = v241[38];
            v194 = v241[39];
            v192 = v241[41];
            v193 = v241[40];
            v190 = v241[43];
            v191 = v241[42];
            v199 = *&v241[44];
            v185 = v241[47];
            v186 = v241[46];
            v184 = v241[48];
            v104 = v241[49];
            v181 = v241[51];
            v182 = v241[50];
            v196 = v241[54];
            v197 = *&v241[52];
            v105 = *&v241[55];
            *(a2 + 118) = *&v241[64] | (v241[66] << 16);
            v188 = *&v241[57];
            v189 = v105;
            v187 = *&v241[59];
            v183 = *&v241[61];
            v106 = v241[63];
            if (a2[403] == 1 && v100 == *(a2 + 130) && (v107 = *(a2 + 131)) != 0)
            {
              *(a2 + 115) = v107;
              v108 = *(a2 + 66);
            }

            else
            {
              v110 = mach_continuous_time();
              v108 = 0;
              *(a2 + 115) = (*&g_MacClockTicksToMsRelation * v110);
            }

            *(a2 + 58) = v108;
            *(a2 + 126) = 0;
            a2[508] = 0;
            a2[402] = 1;
            v111 = a2[456];
            if (v111 != 255 && (a2[457] & 1) == 0)
            {
              API_Set_Inter_Chan_Bias_Model(v111);
              a2[457] = 1;
            }

            v112.f64[0] = (((v192 << 8) | (v191 << 16) | (v190 << 24)) >> 8);
            v113.f64[0] = v200;
            v114 = *(p_api + 72);
            v114[4].f64[1] = v198 + v106 * 0.0078125;
            v114[5].f64[0] = vcvtd_n_f64_s32(v210, 8uLL);
            v114[5].f64[1] = vcvtd_n_f64_s32(v207, 8uLL);
            v114[6].f64[0] = vcvtd_n_f64_s32(v205, 8uLL);
            v114[6].f64[1] = vcvtd_n_f64_s32(v204, 8uLL);
            v114[7].f64[0] = vcvtd_n_f64_s32(v214, 8uLL);
            v114[7].f64[1] = vcvtd_n_f64_s32(v203, 8uLL);
            v114[8].f64[0] = vcvtd_n_f64_s32(v202, 8uLL);
            v114[8].f64[1] = vcvtd_n_f64_s32(v201, 8uLL);
            v113.f64[1] = (((v195 << 8) | (v194 << 16) | (v193 << 24)) >> 8);
            v112.f64[1] = v199;
            __asm { FMOV            V3.2D, #0.125 }

            v114[9] = vmulq_f64(v113, xmmword_299050F10);
            v114[10] = vmulq_f64(v112, _Q3);
            v114[11].f64[0] = vcvtd_n_f64_s32(((v186 << 8) | (v185 << 16) | (v184 << 24)) >> 8, 3uLL);
            v114[11].f64[1] = vcvtd_n_f64_s32(((v104 << 8) | (v182 << 16) | (v181 << 24)) >> 8, 3uLL);
            API_Set_TSX_ClkCorr_Params(vcvtd_n_f64_s32(v197, 3uLL), vcvtd_n_f64_s32(v196, 3uLL), v220);
            v119 = *(p_api + 72);
            *(v119 + 192) = vcvtd_n_f64_s32(v189, 3uLL);
            *(v119 + 200) = vcvtd_n_f64_s32(v188, 3uLL);
            *(v119 + 208) = vcvtd_n_f64_s32(v187, 3uLL);
            *(v119 + 216) = vcvtd_n_f64_s32(v183, 3uLL);
            v120 = v225;
            if (v103 <= 0)
            {
              v120 = 0;
            }

            *(v119 + 242) = v120;
            *(v119 + 243) = v103 & ~(v103 >> 31);
            goto LABEL_133;
          }

          v80 = v241[0];
          v223 = v241[0];
          ++a2[405];
          if (v80 < 0)
          {
            EvCrt_v("ME_dec_M: Warning: Unsupported channel index %d >= %d");
            goto LABEL_58;
          }

          v81 = v241[1] & 0xF;
          v239 = 0;
          v213 = v241[2];
          v209 = v241[1] >> 4;
          v82 = Decode_SVid_STE(v241[2], v209, &v239);
          v83 = v239;
          v219 = v81;
          if (v81 != 15 || v239 || v82)
          {
            if (!(v239 | v82))
            {
              EvLog_v("ME_dec_M: Not Supported: SVID %d Const %d Sig %d");
              goto LABEL_133;
            }

            if (v239)
            {
              if (v81 == 15)
              {
LABEL_332:
                EvCrt_v("G5K_ME_dec_M: Illegal STE SV:  ID %d  Const %d  Sig %d", v213, v209, v81);
                v168 = &v237[56 * v223];
                *(v168 + 6) = 0;
                *(v168 + 1) = 0u;
                *(v168 + 2) = 0u;
                *v168 = 0u;
                v169 = &v235[36 * v223];
                *v169 = 0u;
                *(v169 + 1) = 0u;
                *(v169 + 16) = 0;
                goto LABEL_133;
              }
            }

            else if (v81 != 15 || v82)
            {
              goto LABEL_332;
            }

            v216 = *(&xmmword_2A1454168 + 1);
            v150 = &v235[36 * v80];
            *(v150 + 2) = 0;
            *(v150 + 3) = 0;
            *(v150 + 16) = 0;
            v151 = &v237[56 * v80];
            *v151 = 0u;
            *(v151 + 1) = 0u;
            *(v151 + 2) = 0u;
            *(v151 + 6) = 0;
            *v150 = v83;
            v150[1] = v219;
            if (v83 == 2)
            {
              v152 = 0;
            }

            else
            {
              v152 = v82;
            }

            if (v83 == 2)
            {
              v153 = v82;
            }

            else
            {
              v153 = 0;
            }

            v150[2] = v152;
            v150[3] = v153;
            v154 = vmovl_u8(*&v241[3]).u64[0];
            v155 = vrev32_s16(v154);
            v155.i32[0] = v154.i32[0];
            *(v150 + 1) = vuzp1_s8(v155, v154).u32[0];
            *(v150 + 4) = *&v241[7];
            v156 = *&v241[9];
            v157 = *&v241[13] | (v241[15] << 16);
            v158 = *&v241[16];
            v159 = *&v241[20];
            v227 = *&v241[24];
            *(v150 + 8) = *&v241[26];
            *(v150 + 5) = *&v241[30];
            *(v150 + 3) = *&v241[32];
            v151[42] = v241[38];
            *(v151 + 43) = *&v241[39];
            *(v151 + 38) = *&v241[41];
            v151[45] = v241[45];
            v150[23] = v241[46];
            if (v241[47] - 1 < 0xB)
            {
              v160 = (v241[47] - 1) + 1;
            }

            else
            {
              v160 = 0;
            }

            *(v150 + 6) = v160;
            v150[22] = v241[55];
            *(v150 + 10) = *&v241[56];
            *(v151 + 16) = *&v241[58];
            v161 = *&v241[64];
            *(v151 + 34) = *&v241[60];
            v162 = v241[54];
            *(v151 + 3) = v158;
            *(v151 + 4) = v161;
            v150[28] = v241[68];
            *(v150 + 30) = *&v241[69];
            v150[18] = v162 >> 4;
            v150[19] = v162 & 0xF;
            *&v240 = 0.0;
            if (v156 | v157)
            {
              v163 = v156 * 0.001 + vcvtd_n_f64_u32(v157, 0x18uLL) * 0.001;
              v211 = v163;
              *(v151 + 6) = v163;
              if (v83 == 2)
              {
                v228[20] = API_Get_UTC_Cor(1, &v240);
                if (*&v240 <= 0.0)
                {
                  v164 = -0.5;
                }

                else
                {
                  v164 = 0.5;
                }

                v165 = (*&v240 + v164);
                if (*&v240 + v164 < -2147483650.0)
                {
                  v165 = 0x80000000;
                }

                if (*&v240 + v164 > 2147483650.0)
                {
                  v165 = 0x7FFFFFFF;
                }

                *&v240 = v165;
                v228[21] = v165;
                v166.f64[0] = *(v151 + 6);
                v166.f64[1] = v211 + -10800.0 + v165;
                if (v219 == 4)
                {
                  v166 = vaddq_f64(v166, vdupq_lane_s64(COERCE__INT64(*(v216 + 8 * v150[3] + 1936) * 0.00000000333564095), 0));
                }

                v167 = v230;
                goto LABEL_338;
              }

              v166 = vdupq_lane_s64(*&v163, 0);
              if (v83 == 4)
              {
                v166.f64[1] = v211 + 14.0;
                if (v219 == 12)
                {
                  v166 = vaddq_f64(v166, vdupq_lane_s64(COERCE__INT64(*(v216 + 2000) * 0.00000000333564095), 0));
                }

                v167 = v229;
LABEL_338:
                v166 = vmlsq_f64(v166, v167, vrndmq_f64(vdivq_f64(v166, v167)));
                *(v151 + 6) = *&v166.f64[0];
              }

              v170 = v166.f64[1];
              if (((1 << v219) & 0xDD77) == 0)
              {
                v177 = *(v216 + 2008) * 0.00000000333564095;
                v170 = v166.f64[1] + v177 - floor((v166.f64[1] + v177) / 604800.0) * 604800.0;
                *(v151 + 6) = v166.f64[0] + v177 - floor((v166.f64[0] + v177) / 604800.0) * 604800.0;
              }

              v171 = (v170 * 0.666666667);
              v172 = v170 + v171 * -1.5;
              v173 = (v172 * 1000.0);
              v174 = v172 + v173 * -0.001;
              v175 = (v174 * 1023000.0);
              v176 = (v174 + v175 * -0.000000977517107) * 1023000.0 * 10000.0;
              *v151 = v171;
              *(v151 + 1) = v175 - v173 + (v173 << 10);
              *(v151 + 4) = (109951163 * (v176 << 12)) >> 36;
              if (v171 > 403199 || v173 > 0x5DB || v175 > 0x3FE || v176 >> 4 >= 0x271)
              {
                EvLog_nd("G5K_ME_dec_M: Code TOT out of range ", 4, v12, v171, v173, v175, v176);
                goto LABEL_133;
              }
            }

            else
            {
              *v151 = 0;
              *(v151 + 4) = 0;
            }

            *(v151 + 3) = v159 + v227 * 0.0000152587891;
            goto LABEL_133;
          }
        }

        else
        {
          v21 = *(a2 + 197) + 1;
          *(a2 + 197) = v21;
          EvCrt_v("G5K_ME_Decode_Meas: CheckSum Err %d >%s", v21, a2);
          v22 = *(a2 + 110);
          if (v22 > 0x1388)
          {
            if (v22 < 0xFFFFF447)
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (*(a2 + 197) < 6u)
            {
              goto LABEL_58;
            }

            EvCrt_v("G5K_ME_Decode_Meas: GN_GPS_Hard_Reset_GNB >6 Checksum Errors in <=5000 ms !");
            GN_GPS_Hard_Reset_GNB();
          }

          *(a2 + 197) = 0;
        }

LABEL_58:
        if (g_Logging_Cfg >= 1)
        {
          if (*(v6 + 7) != *(v6 + 8))
          {
            v30 = qword_2A1454258;
            v31 = *qword_2A1454258;
            v32 = 36;
            v33 = 1u;
            do
            {
              *v30 = v31 + 1;
              *v31 = v32;
              v31 = *v30;
              if (*v30 >= v30[3])
              {
                v31 = v30[2];
                *v30 = v31;
              }

              v32 = aT_0[v33++];
            }

            while (v33 != 4);
            sprintf_1u(v30, *(v6 + 7));
            v34 = (*v30)++;
            *v34 = 32;
            if (*v30 >= v30[3])
            {
              *v30 = v30[2];
            }

            sprintf_1u(v30, *(a2 + 130));
            v35 = (*v30)++;
            *v35 = 10;
            v36 = *v30;
            if (*v30 >= v30[3])
            {
              v36 = v30[2];
              *v30 = v36;
            }

            *v36 = 0;
            *(v6 + 8) = *(v6 + 7);
          }

          GNB_Debug_BlockMove(a2, (v3 - a2));
        }

        a2[392] = 0;
        v3 = a2;
        if (a2[402] == 1)
        {
          break;
        }
      }
    }

LABEL_11:
    v4 = a1[1];
    if (v4 == *a1)
    {
      goto LABEL_349;
    }
  }

  v37 = *a1;
  v38 = a1[1];
  if (v38 == *a1)
  {
LABEL_90:
    if (a2[403] != 1)
    {
      goto LABEL_348;
    }

    v47 = *(a2 + 130);
    if (*(a2 + 110) == v47)
    {
      goto LABEL_348;
    }

    EvCrt_v("G5K_ME_Decode_Meas: Inconsistent TTicks %u %u", *(a2 + 110), v47);
    goto LABEL_102;
  }

  if (v37 >= v38)
  {
    v39 = (v37 - v38);
  }

  else
  {
    v39 = (v37 - *(a1 + 4) + *(a1 + 6) - v38);
  }

  if (v39 >= 4)
  {
    EvCrt_nd("G5K_ME_Decode_Meas: More data after {T message", 3, v12, v38, *a1, v39);
    v37 = *a1;
  }

  if (v38 == v37)
  {
LABEL_89:
    if ((*v238 & 1) == 0)
    {
      goto LABEL_348;
    }

    goto LABEL_90;
  }

  v40 = 0;
  while (1)
  {
    v42 = *v38++;
    v41 = v42;
    if (v38 >= a1[3])
    {
      v38 = a1[2];
    }

    v43 = (v41 == 123) | v40;
    if (v41 != 123 && ((v40 ^ 1) & 1) == 0)
    {
      v44 = v41 - 72;
      v144 = v44 > 0xC;
      v45 = (1 << v44) & 0x1029;
      _ZF = v144 || v45 == 0;
      v43 = v40;
      if (!_ZF)
      {
        break;
      }
    }

    v40 = v43;
    if (v38 == v37)
    {
      goto LABEL_89;
    }
  }

  if ((*v238 & 1) == 0 || a2[403] != 1 || a2[405] || a2[409] || a2[413] || a2[417] || a2[421] || a2[425])
  {
    EvCrt_nd("G5K_ME_Decode_Meas: Throughput error, found next data set", 3, v12, *(a2 + 110), *(a2 + 130), v39);
LABEL_102:
    *v241 = 0;
    a2[411] = 0;
    a2[415] = 0;
    a2[419] = 0;
    a2[423] = 0;
    *(a2 + 206) = 0;
    *(a2 + 208) = 0;
    *(a2 + 210) = 0;
    *(a2 + 212) = 0;
    *v238 = 0;
    bzero(v237, 0x1C00uLL);
    v48 = -4608;
    v49 = 12344;
    do
    {
      v50 = &a2[v48 + 12344];
      *(v50 + 16) = 0;
      *v50 = 0uLL;
      *(v50 + 1) = 0uLL;
      v51 = &a2[v49];
      *(v51 + 105) = 0uLL;
      *(v51 + 5) = 0uLL;
      *(v51 + 6) = 0uLL;
      *(v51 + 3) = 0uLL;
      *(v51 + 4) = 0uLL;
      *(v51 + 1) = 0uLL;
      *(v51 + 2) = 0uLL;
      v49 += 124;
      *v51 = 0uLL;
      v48 += 36;
    }

    while (v48);
    v6[20] = 0;
    API_Get_UTC_Cor(1, v241);
    if (*v241 <= 0.0)
    {
      v52 = -0.5;
    }

    else
    {
      v52 = 0.5;
    }

    v53 = *v241 + v52;
    if (*v241 + v52 <= 2147483650.0)
    {
      if (v53 >= -2147483650.0)
      {
        v54 = v53;
      }

      else
      {
        LOBYTE(v54) = 0;
      }
    }

    else
    {
      LOBYTE(v54) = -1;
    }

    v6[21] = v54;
    v3 = a2;
    goto LABEL_11;
  }

  EvCrt_nd("G5K_ME_Decode_Meas: Throughput error, more data follows", 3, v12, *(a2 + 110), *(a2 + 130), v39);
LABEL_348:
  v3 = a2;
LABEL_349:
  *(a2 + 48) = v3;
  v178 = *MEMORY[0x29EDCA608];
}

uint64_t GM_Gen_SV_Meas_QI(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(a1 + 8);
    if ((~v1 & 0x888) != 0)
    {
      if ((~v1 & 0x88) != 0)
      {
        if (*(a1 + 8))
        {
          v3 = 2;
        }

        else
        {
          v3 = 1;
        }

        if ((~v1 & 0xA) != 0)
        {
          v4 = v3;
        }

        else
        {
          v4 = 11;
        }

        if ((~v1 & 0xC) != 0)
        {
          v5 = v4;
        }

        else
        {
          v5 = 12;
        }

        if ((~v1 & 0x18) != 0)
        {
          v6 = v5;
        }

        else
        {
          v6 = 13;
        }

        if ((~v1 & 0x28) != 0)
        {
          v7 = v6;
        }

        else
        {
          v7 = 14;
        }

        if ((~v1 & 0x48) != 0)
        {
          v8 = v7;
        }

        else
        {
          v8 = 15;
        }

        if ((~v1 & 0x848) != 0)
        {
          result = v8;
        }

        else
        {
          result = 16;
        }
      }

      else
      {
        result = 17;
      }
    }

    else
    {
      result = 18;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm52_11HandleStartTimeMarkRsp(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 12))
      {
        v3 = 84;
      }

      else
      {
        v3 = 70;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_RSP Success,%c\n", v2, "GNM", 73, "Gnm52_11HandleStartTimeMarkRsp", v3);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (*(a1 + 12) == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    Gnm11_00ApiStatusCB(v4, 0, 0, 18);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm52_11HandleStartTimeMarkRsp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm52_13HandleTimeMarkEvent(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_12;
    }

    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm52_13HandleTimeMarkEvent", 517);
    v5 = 1;
LABEL_11:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    goto LABEL_12;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_13HandleTimeMarkEvent");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsWk,%d,GpsTOW,%.9fms,GpsTimeUnc,%.9fms,UtcCorr,%f,METTick,%u,BCTNs,%llu\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm52_13HandleTimeMarkEvent", *(a1 + 18), *(a1 + 24), *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if (!off_2A13EE528)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_12;
    }

    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm52_13HandleTimeMarkEvent", 258);
    v5 = 2;
    goto LABEL_11;
  }

  off_2A13EE528(0, a1 + 16);
LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm52_22HandleStartTimeMarkReq(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_START_TIMEMARK_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    off_2A13EE528 = *(a1 + 16);
    v3 = gnssOsa_Calloc("Gnm52_22HandleStartTimeMarkReq", 114, 1, 0xCuLL);
    if (v3)
    {
      v4 = v3;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_REQ =>GNC\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(128, 132, 8389120, v4);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm52_22HandleStartTimeMarkReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm_StartTimeMarkSesion(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_StartTimeMarkSesion");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = gnssOsa_Calloc("Gnm_StartTimeMarkSesion", 156, 1, 0x18uLL);
    if (v3)
    {
      v3[2] = a1;
      AgpsSendFsmMsg(128, 128, 8405248, v3);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_StartTimeMarkSesion");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v5 = 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_StartTimeMarkSesion");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v5 = 5;
    }
  }

  else if (g_LbsOsaTrace_Config < 2)
  {
    v5 = 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm_StartTimeMarkSesion", 258);
    v5 = 1;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_StartTimeMarkSesion");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

void Gnm03_51StartHalConnTimer(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 1) == 0)
  {
    if (AgpsFsmStartTimer(0x803006u, 0x3A98u))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_51StartHalConnTimer", 1544);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v1 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm03_51StartHalConnTimer", 15000);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      LOBYTE(g_HalStatusInfo) = 1;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm03_11SetHWRev(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_HW_REV_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_11SetHWRev");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    LOBYTE(g_HWStatus) = 1;
    memcpy_s("Gnm03_11SetHWRev", 247, &g_HWStatus + 4, 0x44u, (a1 + 12), 0x44uLL);
    if (g_HWStatus != 1)
    {
      goto LABEL_8;
    }

    if (DWORD1(g_HWStatus) != 3599)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ProdId,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_07ValidateHWSupport", 264, DWORD1(g_HWStatus));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

LABEL_8:
      Hal_StopConn(Gnm_HalStopCnf);
      Gnm03_52StartHalDisConnTimer();
      snprintf(v8, 0x3B6uLL, "ASSERT: %s %d HWS : HW not supported by stack", "Gnm03_11SetHWRev", 255);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "Gnm03_11SetHWRev", v8);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      gnssOsa_FlushLog();
      __assert_rtn("Gnm03_11SetHWRev", "gnm03HwStatus.cpp", 256, "false && HW not supported by stack");
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_11SetHWRev", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void Gnm03_52StartHalDisConnTimer(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (AgpsFsmStartTimer(0x803106u, 0x3A98u))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_52StartHalDisConnTimer", 1544);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v1 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm03_52StartHalDisConnTimer", 15000);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      BYTE1(g_HalStatusInfo) = 1;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm03_12HalStartCnf(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_START_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_12HalStartCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_12HalStartCnf", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_24;
  }

  if (g_HalStatusInfo == 1)
  {
    if (AgpsFsmStopTimer(8400902))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_53StopHalConnTimer", 1545);
        v4 = 2;
LABEL_12:
        gnssOsa_PrintLog(__str, v4, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm03_53StopHalConnTimer");
      v4 = 4;
      goto LABEL_12;
    }

    LOBYTE(g_HalStatusInfo) = 0;
  }

  v7 = 0;
  byte_2A13EC3AC = 0;
  while (1)
  {
    v8 = v7;
    v9 = *(pg_AgpsFsmTable + 168 * v7 + 4);
    if (!*(pg_AgpsFsmTable + 168 * v7 + 4))
    {
      break;
    }

    ++v7;
    if (v9 == 128)
    {
      v10 = *(pg_AgpsFsmTable + 168 * v8 + 96);
      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_19:
  if (v10 == &a_GnmInitState || v10 == &a_GnmResetState)
  {
    g_HalStatusInfo = 0;
    Gnm35_15SendDbgCfg();
    if (v10 == &a_GnmInitState)
    {
      Gnm28_21InitRestorePeNv();
    }

    Gnm_03_05UpdtHWStatusGnc(1);
  }

LABEL_24:
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

void *Gnm03_14HalStopCnf(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_STOP_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_14HalStopCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_14HalStopCnf", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_25;
  }

  if (*(a1 + 12) == 1)
  {
    if (BYTE1(g_HalStatusInfo) != 1)
    {
LABEL_22:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HALStop success,starting again\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm03_14HalStopCnf");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      ++BYTE2(g_HalStatusInfo);
      Hal_StartConn(g_GnssHw == 0, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
LABEL_25:
      result = 0;
      goto LABEL_26;
    }

    if (AgpsFsmStopTimer(8401158))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_54StopHalDisConnTimer", 1545);
        v4 = 2;
LABEL_20:
        gnssOsa_PrintLog(__str, v4, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm03_54StopHalDisConnTimer");
      v4 = 4;
      goto LABEL_20;
    }

    BYTE1(g_HalStatusInfo) = 0;
    goto LABEL_22;
  }

  v6 = HIBYTE(g_HalStatusInfo);
  if (HIBYTE(g_HalStatusInfo) <= 4u)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      v6 = HIBYTE(g_HalStatusInfo);
    }

    HIBYTE(g_HalStatusInfo) = v6 + 1;
    Hal_StopConn(Gnm_HalStopCnf);
    Gnm03_52StartHalDisConnTimer();
    goto LABEL_25;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u,GNSS service stopping\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  Gnm_03_05UpdtHWStatusGnc(0);
  Gnm03_60BaseBandResetReq(1);
  result = &a_GnmResetState;
LABEL_26:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm_03_05UpdtHWStatusGnc(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm_03_05UpdtHWStatusGnc", 158, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND =>GNC HwStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_03_05UpdtHWStatusGnc", a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(128, 132, 8390147, v3);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void Gnm03_60BaseBandResetReq(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Reason,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 69, "Gnm03_60BaseBandResetReq", a1);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (a1 <= 7)
  {
    Hal_GnssBaseBandReset(dword_299050F50[a1]);
  }

  Ga05_HandleResetBbResetReq(a1);
  v3 = *MEMORY[0x29EDCA608];
}

void *Gnm03_15HandleHwStatus(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HW_STATUS_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_15HandleHwStatus");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    if (v3 > 5)
    {
      switch(v3)
      {
        case 8:
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v19 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }

          break;
        case 7:
          Gnm03_60BaseBandResetReq(5);
          break;
        case 6:
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v9 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ME LP\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm03_15HandleHwStatus", 1297);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          v10 = 0;
          while (1)
          {
            v11 = v10;
            v12 = *(pg_AgpsFsmTable + 168 * v10 + 4);
            if (!*(pg_AgpsFsmTable + 168 * v10 + 4))
            {
              goto LABEL_13;
            }

            ++v10;
            if (v12 == 128)
            {
              v13 = *(pg_AgpsFsmTable + 168 * v11 + 96);
              if (v13 != &a_GnmInitState && v13 != &a_GnmResetState)
              {
                goto LABEL_13;
              }

              if (v13 == &a_GnmInitState)
              {
                Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 1);
              }

              v15 = g_LbsOsaTrace_Config;
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v16 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm03_15HandleHwStatus", 261);
                gnssOsa_PrintLog(__str, 4, 1, 0);
                v15 = g_LbsOsaTrace_Config;
              }

              if (v15 >= 3)
              {
                bzero(__str, 0x3C6uLL);
                v17 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS HW Init complete\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 77, "Gnm03_15HandleHwStatus");
                gnssOsa_PrintLog(__str, 3, 1, 0);
              }

              result = &a_GnmActiveState;
              goto LABEL_42;
            }
          }

        default:
          goto LABEL_35;
      }

      Gnm03_06InitHWReset();
LABEL_41:
      result = &a_GnmResetState;
      goto LABEL_42;
    }

    if ((v3 - 1) < 5)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      Gnm03_06InitHWReset();
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm03_15HandleHwStatus", 261);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      goto LABEL_41;
    }

    if (v3)
    {
LABEL_35:
      if (g_LbsOsaTrace_Config < 4)
      {
        goto LABEL_13;
      }

      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
      v7 = 4;
      goto LABEL_12;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_15HandleHwStatus", 517);
    v7 = 1;
LABEL_12:
    gnssOsa_PrintLog(__str, v7, 1, 0);
  }

LABEL_13:
  result = 0;
LABEL_42:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm03_04SendHWStatus(void (*a1)(void, uint64_t, _WORD *), uint64_t a2, char a3)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(v13, 0, 70);
  if (a1)
  {
    v5 = 0;
    HIBYTE(v13[0]) = byte_2A13EC3AC;
    while (1)
    {
      v6 = v5;
      v7 = *(pg_AgpsFsmTable + 168 * v5 + 4);
      if (!*(pg_AgpsFsmTable + 168 * v5 + 4))
      {
        break;
      }

      ++v5;
      if (v7 == 128)
      {
        v8 = *(pg_AgpsFsmTable + 168 * v6 + 96);
        if (a3)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    v8 = 0;
    if (a3)
    {
LABEL_12:
      LOBYTE(v13[0]) = 1;
      v13[1] = WORD2(g_HWStatus);
      strncpy(&v13[2], &g_HWStatus + 8, 0x40uLL);
      LOBYTE(v13[34]) = 3;
      goto LABEL_13;
    }

LABEL_10:
    if (v8 != &a_GnmInitState && v8 != &a_GnmResetState)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HwStatusCB called\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm03_04SendHWStatus");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    a1(0, a2, v13);
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm03_04SendHWStatus", 258);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void Gnm03_06InitHWReset(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Initializing HW Reset\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 77, "Gnm03_06InitHWReset");
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  if (byte_2A13EC617 == 1)
  {
    if (AgpsFsmStopTimer(8400390) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm03_06InitHWReset", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EC617 = 0;
    if (byte_2A13EC619 == 1)
    {
      byte_2A13EC61A = 11;
    }

    Gnm10_31SendMEWakeRsp(0);
    Gnm10_29SendFwActivity(1, 0);
  }

  Gnm_03_05UpdtHWStatusGnc(2);
  v2 = *MEMORY[0x29EDCA608];
}

void *Gnm03_16HandleHWInitFail(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_INIT_FAIL\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_16HandleHWInitFail");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Hal_StopConn(0);
    v3 = g_LbsOsaTrace_Config;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm03_16HandleHWInitFail", 1294);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      v3 = g_LbsOsaTrace_Config;
    }

    v5 = *(a1 + 12);
    if (v3)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Err,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_20HwStartFailure", 1293, v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    byte_2A13EC3AC = v5;
    Gnm_03_05UpdtHWStatusGnc(0);
    Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 0);
    Gnm03_60BaseBandResetReq(0);
    result = &a_GnmResetState;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm03_16HandleHWInitFail", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm03_17HandleGetHwInitStatus(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HW_INIT_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_17HandleGetHwInitStatus");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm03_04SendHWStatus(*(a1 + 16), *(a1 + 12), 0);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_17HandleGetHwInitStatus", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm03_18InitializeHw(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HW_INIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_18InitializeHw");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (g_IsHwInit != 1)
    {
      g_GnssHw = *(a1 + 12);
      g_IsHwInit = 1;
      v4 = *(a1 + 24);
      *(&g_GnmCBs + 1) = *(a1 + 16);
      qword_2A13EE538 = v4;
      g_HalCallbacks = Gnm_HardwareStatusNotif;
      Hal_StartConn(g_GnssHw == 0, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
      goto LABEL_11;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = *(a1 + 12);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ExistingHw,%hhu,ReqHw,%hhu\n", v3);
LABEL_9:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_9;
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm03_40DiscardResetReqGnc(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_40DiscardResetReqGnc");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_40DiscardResetReqGnc", 1028);
      v4 = 2;
LABEL_8:
      gnssOsa_PrintLog(__str, v4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_40DiscardResetReqGnc", 517);
    v4 = 1;
    goto LABEL_8;
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void *Gnm03_41HandleResetReqGnc(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_41HandleResetReqGnc");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm03_60BaseBandResetReq(6);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm03_41HandleResetReqGnc", 261);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result = &a_GnmResetState;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm03_41HandleResetReqGnc", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm03_42HandleMEWakeReq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_42HandleMEWakeReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm10_29SendFwActivity(1, 1);
    g_GNSS_FW_NV = *(a1 + 12);
    if (Hal_WakeUp_GNSS(Gnm03_HandleGNSSMEWakeResponse))
    {
      unk_2A13EC618 = 0;
      byte_2A13EC616 = 1;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_42HandleMEWakeReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

void Gnm03_HandleGNSSMEWakeResponse(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: success\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm03_HandleGNSSMEWakeResponse");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if ((Hal_SetCoexConfig() & 1) == 0)
    {
      Gnm03_60BaseBandResetReq(7);
    }

    Gnm55_RestoreVar_GNSS_FW_NV(g_GNSS_FW_NV);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: error\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 69, "Gnm03_HandleGNSSMEWakeResponse");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm03_43RejectMEWakeReq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_43RejectMEWakeReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm10_31SendMEWakeRsp(0);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_43RejectMEWakeReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm03_55HandleHalConnTimeout(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_CONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (g_HalStatusInfo)
  {
    LOBYTE(g_HalStatusInfo) = 0;
    if (a1)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HAL Conn TO\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_55HandleHalConnTimeout");
        v4 = 2;
LABEL_11:
        gnssOsa_PrintLog(__str, v4, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_55HandleHalConnTimeout", 517);
      v4 = 1;
      goto LABEL_11;
    }
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
    v4 = 4;
    goto LABEL_11;
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

void *Gnm03_56HandleHalDisconnTimeout(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_HAL_DISCONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
      v6 = 4;
LABEL_12:
      gnssOsa_PrintLog(__str, v6, 1, 0);
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  BYTE1(g_HalStatusInfo) = 0;
  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_56HandleHalDisconnTimeout", 517);
      v6 = 1;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HAL Disconn TO\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm03_56HandleHalDisconnTimeout");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  Gnm03_60BaseBandResetReq(3);
  result = &a_GnmResetState;
LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNSS_Nav_Debug_Ctl(uint64_t result)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    goto LABEL_16;
  }

  if (g_Logging_Cfg < 4)
  {
    goto LABEL_16;
  }

  v1 = result;
  v3 = *result;
  v2 = *(result + 8);
  if (v2 == *result)
  {
    goto LABEL_16;
  }

  v4 = *result;
  if (v2 > *result)
  {
    v4 = *(result + 24);
  }

  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (v2 >= *(result + 24))
    {
      v2 = *(result + 16);
      *(result + 8) = v2;
LABEL_12:
      v6 = v3 - v2;
      if (v6)
      {
        result = GN_GPS_Write_Nav_Debug(v6, v2);
        v2 = &v1[1][result];
        v1[1] = v2;
      }
    }
  }

  else
  {
    result = GN_GPS_Write_Nav_Debug((v4 - v2), v2);
    v2 = &v1[1][result];
    v1[1] = v2;
    if (v2 >= v1[3])
    {
      v2 = v1[2];
      v1[1] = v2;
      if (result == v5)
      {
        v3 = *v1;
        goto LABEL_12;
      }
    }
  }

  if (v2 == *v1)
  {
    v7 = v1[2];
    *v1 = v7;
    v1[1] = v7;
  }

LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_Nav_Debug_Screens(void *result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result && g_Logging_Cfg >= 4 && (v1 = result, (v2 = result[36]) != 0))
  {
    ds_NK_Summary(result);
    if (g_GN_GNSS_Nav_Debug_Port == 1)
    {
      g_GN_GNSS_Nav_Debug_Port = 0;
    }

    else
    {
      ds_NK_Crude_Apx_Pos(v2, v1[22], v1[17]);
    }

    ds_Intermittent(v2, *v1, v1[9]);
    v5 = *MEMORY[0x29EDCA608];

    return GNSS_Nav_Debug_Ctl(v2);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t GNSS_Nav_Debug_InitWrite(uint64_t result)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 4)
  {
    v3 = *(result + 288);
    if (g_GN_GNSS_Nav_Debug_Port == 1)
    {
      ds_Config(*(result + 288), *(result + 72), *(result + 48), *(result + 136));
    }

    v4 = *MEMORY[0x29EDCA608];

    return ds_NK_Summary_FirstLine(v3);
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t GNSS_Nav_Debug_Flush_Check(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(result + 8) - *result;
  if (v1 <= 0)
  {
    v1 += *(result + 24) - *(result + 16);
  }

  if (v1 > 0x3FF)
  {
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return GNSS_Nav_Debug_Ctl(result);
  }

  return result;
}

uint64_t *mapu(double *a1, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8, double *a9, double *a10)
{
  v15 = a9;
  v46 = *MEMORY[0x29EDCA608];
  v16 = *a9;
  result = phiu(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a6)
  {
    v18 = 0;
    if (a6 + 1 > 2)
    {
      v19 = a6 + 1;
    }

    else
    {
      v19 = 2;
    }

    v20 = 1;
    v21 = a9;
    do
    {
      v18 += v20;
      *v21++ = a5[v18 - 1];
      ++v20;
    }

    while (v19 != v20);
  }

  if (a3 >= 2)
  {
    v22 = a10 - 1;
    v23 = (a3 + a3 * a3) >> 1;
    if (a6 + 1 > 2)
    {
      v24 = a6 + 1;
    }

    else
    {
      v24 = 2;
    }

    v25 = a3;
    v26 = v24 - 1;
    v27 = a3 - 1;
    v28 = v24 - 1;
    do
    {
      v29 = v25 - 1;
      v30 = 0.0;
      if (a6)
      {
        v31 = a9;
        v32 = v26;
        LODWORD(result) = v25 - 1;
        do
        {
          v33 = *v31++;
          v34 = a7[result];
          v30 = v30 + v34 * (v33 * v34);
          a7[result] = v33 * v34;
          result = (result + a8);
          --v32;
        }

        while (v32);
      }

      if (v16 >= 0.0)
      {
        v22[v23--] = v30;
        LODWORD(v35) = 1;
        do
        {
          if (a6)
          {
            v36 = ~v35 + v25;
            v37 = 0.0;
            LODWORD(result) = v28;
            v38 = v27;
            do
            {
              v37 = v37 + a7[v36] * a7[v38];
              v36 += a8;
              v38 += a8;
              result = (result - 1);
            }

            while (result);
          }

          else
          {
            v37 = 0.0;
          }

          v22[v23] = v37;
          v35 = (v35 + 1);
          --v23;
        }

        while (v25 != v35);
      }

      else
      {
        v22[v25] = sqrt(v30);
      }

      --v27;
      --v25;
    }

    while (v29 > 1);
  }

  if (a6)
  {
    v39 = 0;
    if (a6 + 1 > 2)
    {
      v40 = a6 + 1;
    }

    else
    {
      v40 = 2;
    }

    v41 = v40 - 1;
    v42 = 0.0;
    do
    {
      v43 = *v15++;
      v42 = v42 + v43 * a7[v39] * a7[v39];
      v39 += a8;
      --v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0.0;
  }

  v44 = sqrt(v42);
  if (v16 < 0.0)
  {
    v42 = v44;
  }

  *a10 = v42;
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal32_HandlePowerReportRsp(unsigned __int8 *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1[2] == 66 && a1[3] == 71)
    {
      if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = 1542;
        v8 = *__error();
        v6 = v2;
        v3 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
LABEL_11:
        snprintf(__str, 0x3C5uLL, v3, v6, "HAL", 69, "Hal32_HandlePowerReportRsp", v7, v8);
        goto LABEL_12;
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = a1[3];
      v11 = a1[4];
      v9 = a1[2];
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n", v4, "HAL");
LABEL_12:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = 513;
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_11;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void Hal32_HandlePowerReportData(unsigned __int8 *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 8)
    {
      v5 = *&a1[a2 - 3];
      if (a2 == 11)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        v7 = a1 + 8;
        v8 = (a2 - 11);
        do
        {
          v9 = *v7++;
          v6 += v9;
          --v8;
        }

        while (v8);
        if (v5 == v6)
        {
          if (a1[4] != 80)
          {
            v10 = *(a1 + 2);
            v11 = *(a1 + 5) * 0.000001;
            v12 = *(a1 + 6) / 1000.0;
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v13 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PwrReport:ME_TTick,%u,MeasInt,%f sec,ActiveInt,%f sec,AvgPwr,%f mW,ClockMain-1,%u,ClockMain-2,%u,ClockRF-1,%u,ClockRF-2,%u\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 73, "Hal32_HandlePowerReportData", v10, v11, v11, v12, a1[148], a1[149], a1[150], a1[151]);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            if (g_PowerReportDataCB)
            {
              g_PowerReportDataCB(v11, v12, v10 * 0.001, v11);
            }
          }

          goto LABEL_20;
        }
      }

      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v18 = v5;
        v19 = v6;
        v17 = 771;
        v3 = "%10u %s%c %s: #%04hx zx chksum %u, computed %u\n";
        v16 = v14;
        goto LABEL_19;
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v17 = 515;
      v18 = a2;
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = "%10u %s%c %s: #%04hx length %u\n";
LABEL_19:
      snprintf(__str, 0x3C5uLL, v3, v16, "HAL", 69, "Hal32_HandlePowerReportData", v17, v18, v19);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v17 = 513;
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_19;
  }

LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
}

void *gnssOsa_Calloc(const char *a1, int a2, int a3, size_t size)
{
  v15 = *MEMORY[0x29EDCA608];
  v7 = a3;
  result = malloc_type_calloc(a3, size, 0xDBB5E63DuLL);
  if (!result)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      v10 = v7 * size;
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Size,%lu,Fn,%s,Line,%d\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "gnssOsa_Calloc", 1537, v10, a1, a2);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    else
    {
      v10 = v7 * size;
    }

    snprintf(v13, 0x3B6uLL, "Size,%lu,Fn,%s,Line,%d", v10, a1, a2);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "gnssOsa_Calloc", v13);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_Calloc", "agpsmacosa.cpp", 74, "false && Memory allocation failure");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_FlushLog(void)
{
  v5 = *MEMORY[0x29EDCA608];
  result = gp_Logger;
  if (gp_Logger)
  {
    v1 = *(*gp_Logger + 48);
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

BOOL gnssOsa_SemAcquire(dispatch_semaphore_t dsema)
{
  v6 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemAcquire", 1541);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = dsema != 0;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_SemWaitTimeOut(NSObject *a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = dispatch_time(0, 1000000 * a2);
    result = dispatch_semaphore_wait(a1, v3) != 0;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 69, "gnssOsa_SemWaitTimeOut", 1543);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    result = 2;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_ReleaseOSTimer(void)
{
  v2 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_ReleaseOSTimer", 126, &g_MacTimerCriticSection);
  if (g_curTimeState == 1)
  {
    dispatch_suspend(g_timerHandler);
  }

  g_curTimeState = 0;
  v0 = *MEMORY[0x29EDCA608];

  return gnssOsa_MacExitCriticalSection("gnssOsa_ReleaseOSTimer", 138, &g_MacTimerCriticSection);
}

uint64_t gnssOsa_MacEnterCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 749, "false && CRTE invalid input");
  }

  if (pthread_mutex_lock(a3))
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE OS API Failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 754, "false && CRTE OS API Failed");
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t gnssOsa_MacExitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 764, "false && CRTX invalid input");
  }

  if (pthread_mutex_unlock(a3))
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX OS API Failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 768, "false && CRTX OS API Failed");
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t gnssOsa_OSTimerInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 1uLL, g_TimerQueue);
  g_timerHandler = v0;
  if (!v0)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", "gnssOsa_OSTimerInit", 150, "TIMC TimerHandler");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "gnssOsa_OSTimerInit", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_OSTimerInit", "agpsmacosa.cpp", 150, "false && TIMC TimerHandler");
  }

  dispatch_source_set_event_handler_f(v0, gnssOsa_TimerExpiryHandler);
  v1 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_TimerExpiryHandler(void *a1)
{
  v1 = 0;
  v14 = *MEMORY[0x29EDCA608];
  do
  {
    v2 = &__str[v1 + 966];
    *v2 = 0;
    *(v2 + 1) = -1;
    *(v2 + 2) = 0;
    *(v2 + 6) = -1;
    v1 += 32;
    v2[28] = 0;
  }

  while (v1 != 640);
  gnssOsa_MacEnterCriticalSection("gnssOsa_TimerExpiryHandler", 256, &g_MacTimerContextCriticSection);
  v3 = 0;
  v4 = 0;
  v5 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
  do
  {
    v6 = &g_MacOsaTimers[4 * v4];
    if (*(v6 + 28) == 1 && v6[1] <= v5)
    {
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerExpired Handle,%u,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "gnssOsa_TimerExpiryHandler", *(v6 + 6), v6[1]);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      if (*v6)
      {
        v8 = &__str[32 * v3 + 966];
        *v8 = *v6;
        *(v8 + 2) = v6[2];
        ++v3;
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 21) = 0;
        v6[2] = 0;
        v4 = -1;
      }

      else if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MacTimer\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_TimerExpiryHandler", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }

    ++v4;
  }

  while (v4 < 0x14u);
  gnssOsa_TimerHandler();
  result = gnssOsa_MacExitCriticalSection("gnssOsa_TimerExpiryHandler", 288, &g_MacTimerContextCriticSection);
  if (v3)
  {
    v11 = 0;
    do
    {
      result = (*&__str[32 * v11 + 966])(*&__str[32 * v11 + 982]);
      ++v11;
    }

    while (v3 > v11);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_OSTimerDeInit(void)
{
  v3 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_OSTimerDeInit", 158, &g_MacTimerCriticSection);
  v0 = g_timerHandler;
  if (!dispatch_source_testcancel(g_timerHandler))
  {
    dispatch_source_cancel(v0);
    v0 = g_timerHandler;
  }

  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(v0);
    v0 = g_timerHandler;
  }

  dispatch_release(v0);
  g_timerHandler = 0;
  g_curTimeState = 0;
  gnssOsa_MacExitCriticalSection("gnssOsa_OSTimerDeInit", 180, &g_MacTimerCriticSection);
  v1 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_TriggerOSTimer(int64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_TriggerOSTimer", 191, &g_MacTimerCriticSection);
  v2 = g_timerHandler;
  v3 = dispatch_time(0, a1);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(g_timerHandler);
  }

  g_curTimeState = 1;
  gnssOsa_MacExitCriticalSection("gnssOsa_TriggerOSTimer", 205, &g_MacTimerCriticSection);
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_TimerHandler(void)
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = -1;
  v1 = &byte_2A13C3D8C;
  v2 = 20;
  do
  {
    if (*v1 == 1 && *(v1 - 20) < v0)
    {
      v0 = *(v1 - 20);
    }

    v1 += 32;
    --v2;
  }

  while (v2);
  if (v0 == -1)
  {
    v9 = *MEMORY[0x29EDCA608];
    v10 = *MEMORY[0x29EDCA608];

    return gnssOsa_ReleaseOSTimer();
  }

  else
  {
    v3 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v4 = v0 >= v3;
    v5 = v0 - v3;
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return gnssOsa_TriggerOSTimer(v6);
  }
}

BOOL gnssOsa_Init(void)
{
  v10 = *MEMORY[0x29EDCA608];
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  v2 = v0 / v1;
  *&g_MacClockTicksToMsRelation = v2 * 0.000001;
  g_MacClockTicksToNs = *&v2;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -7);
  if (!v3 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(&info, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(&info, 0x3C5uLL, "%10u %s%c %s: #%04hx timer queueAttr\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 87, "gnssOsa_Init", 513);
    gnssOsa_PrintLog(&info, 2, 1, 0);
  }

  v5 = dispatch_queue_create("TimerQueue", v3);
  g_TimerQueue = v5;
  if (v5)
  {
    gnssOsa_InitCriticalSection("gnssOsa_Init", 334, &g_MacTimerCriticSection);
    gnssOsa_InitCriticalSection("gnssOsa_Init", 335, &g_MacTimerContextCriticSection);
    gnssOsa_OSTimerInit();
    IndusGpsLogObjectGeneral = os_log_create("com.apple.gpsd", "gpsdi");
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(&info, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(&info, 0x3C5uLL, "%10u %s%c %s: #%04hx Queue creation failed\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "gnssOsa_Init", 513);
    gnssOsa_PrintLog(&info, 1, 1, 0);
  }

  result = v5 != 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_InitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 778, "false && CRTC invalid input");
  }

  if (pthread_mutex_init(a3, 0))
  {
    snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC OS API Failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 782, "false && CRTC OS API Failed");
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

void gnssOsa_Deinit(void)
{
  v1 = *MEMORY[0x29EDCA608];
  gnssOsa_StopAllTimers();
  gnssOsa_OSTimerDeInit();
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 347, &g_MacTimerCriticSection);
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 348, &g_MacTimerContextCriticSection);
  if (g_TimerQueue)
  {
    dispatch_release(g_TimerQueue);
    g_TimerQueue = 0;
  }

  gp_Logger = 0;
  v0 = *MEMORY[0x29EDCA608];
}

uint64_t gnssOsa_StopAllTimers(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerStopAll\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_StopAllTimers");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  gnssOsa_MacEnterCriticalSection("gnssOsa_StopAllTimers", 454, &g_MacTimerContextCriticSection);
  for (i = 0; i != 80; i += 4)
  {
    v2 = &g_MacOsaTimers[i];
    *v2 = 0;
    v2[1] = 0;
    *(v2 + 21) = 0;
    v2[2] = 0;
  }

  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopAllTimers", 467, &g_MacTimerContextCriticSection);
  v3 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_MacDeinitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(v11, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTD invalid input");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_MacDeinitCriticalSection", v11);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacDeinitCriticalSection", "agpsmacosa.cpp", 792, "false && CRTD invalid input");
  }

  result = pthread_mutex_destroy(a3);
  if (result)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      v6 = result;
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DeInit CriticalSec,errno,%d,%s,%d\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "gnssOsa_MacDeinitCriticalSection", v6, a1, a2);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_StartTimer(const char *a1, int a2, unsigned int *a3, void (*a4)(void *), void *a5, unsigned int a6)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx MacTimer,ReqDurationMs,%u,%s,%d\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "gnssOsa_StartTimer", 513, a6, a1, a2);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }
  }

  else
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_StartTimer", 368, &g_MacTimerContextCriticSection);
    v12 = &byte_2A13C3D8C;
    v13 = 20;
    while (*v12 == 1)
    {
      v12 += 32;
      if (!--v13)
      {
        gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 381, &g_MacTimerContextCriticSection);
        snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", "gnssOsa_StartTimer", 386, "Timer not started as max timer count hit");
        if (g_LbsOsaTrace_Config)
        {
          bzero(__s, 0x3C6uLL);
          v14 = mach_continuous_time();
          snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "gnssOsa_StartTimer", __str);
          gnssOsa_PrintLog(__s, 1, 1, 0);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_StartTimer", "agpsmacosa.cpp", 386, "false && Timer not started as max timer count hit");
      }
    }

    v18 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v19 = ++g_MacOsaTimerCount;
    *(v12 - 28) = a4;
    *(v12 - 12) = a5;
    *(v12 - 20) = v18 + 1000000 * a6;
    *(v12 - 1) = v19;
    *v12 = 1;
    *a3 = v19;
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__s, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: TimerStarted,Handle,%u,DurationMs,%u,CurrNs,%llu,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 68, "gnssOsa_StartTimer", *(v12 - 1), a6, v18, *(v12 - 20));
      gnssOsa_PrintLog(__s, 5, 1, 0);
    }

    gnssOsa_TimerHandler();
    gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 410, &g_MacTimerContextCriticSection);
  }

  v21 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t gnssOsa_StopTimer(const char *a1, unsigned int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_StopTimer", 423, &g_MacTimerContextCriticSection);
  v4 = &g_MacOsaTimers;
  v5 = 20;
  while (*(v4 + 6) != a3)
  {
    v4 += 4;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerStopped,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_StopTimer", a3);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  *v4 = 0;
  v4[1] = 0;
  *(v4 + 21) = 0;
  v4[2] = 0;
LABEL_8:
  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopTimer", 441, &g_MacTimerContextCriticSection);
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL AgpsInitMsgQueue(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  gnssOsa_InitCriticalSection("AgpsInitMsgQueue", 489, (a1 + 24));
  v2 = gnssOsa_SemInit((a1 + 88), 0);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InitMsgQ\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsInitMsgQueue", 1539);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL gnssOsa_SemInit(dispatch_semaphore_s **a1, intptr_t value)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = dispatch_semaphore_create(value);
  *a1 = v3;
  if (!v3 && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "gnssOsa_SemInit", 1539);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = v3 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void AgpsDeinitMsgQueue(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsDeinitMsgQueue");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeinitMsgQueue", 515, (a1 + 24));
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    v4 = i + 1;
    v5 = i[1];
    if (!v5)
    {
      v4 = (a1 + 16);
    }

    *v4 = 0;
    *(a1 + 8) = v5;
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Event dropped Src,%u,Dest,%u,Event,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 87, "AgpsDeinitMsgQueue", 770, **i, *(*i + 1), *(*i + 1));
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    if (*i)
    {
      free(*i);
    }

    free(i);
  }

  gnssOsa_MacExitCriticalSection("AgpsDeinitMsgQueue", 552, (a1 + 24));
  if (gnssOsa_MacDeinitCriticalSection("AgpsDeinitMsgQueue", 559, (a1 + 24)) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "AgpsDeinitMsgQueue", 1553);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (!gnssOsa_DeinitCountingSem((a1 + 88)))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "AgpsDeinitMsgQueue", 1540);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "AgpsDeinitMsgQueue");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
}

BOOL gnssOsa_DeinitCountingSem(dispatch_object_t *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "gnssOsa_DeinitCountingSem", 1540);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = v1 != 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsEnQueueFsmMsg(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Src,%x,Dest,%x,EnQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 73, "AgpsEnQueueFsmMsg", *v3, v3[1], *(v3 + 1));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = gnssOsa_Calloc("AgpsEnQueueFsmMsg", 584, 1, 0x10uLL);
    *v5 = v3;
    gnssOsa_MacEnterCriticalSection("AgpsEnQueueFsmMsg", 595, (a2 + 24));
    v6 = *(a2 + 16);
    if (v6)
    {
      *(v6 + 8) = v5;
      *(a2 + 16) = v5;
      v5[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
        *(v6 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      *(a2 + 8) = v5;
      *(a2 + 16) = v5;
      v5[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
LABEL_8:
        *(a2 + 16) = v6;
        free(v5);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v7 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Msg,%x,ProcessId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "AgpsEnQueueFsmMsg", 1548, *(v3 + 1), *(a2 + 4));
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }
    }

    result = gnssOsa_MacExitCriticalSection("AgpsEnQueueFsmMsg", 640, (a2 + 24));
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnssOsa_SemRelease(dispatch_semaphore_t dsema)
{
  v6 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemRelease", 1542);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = dsema != 0;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *AgpsDeQueueFsmMsg(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_SemAcquire(*(a1 + 88)) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "AgpsDeQueueFsmMsg", 1541);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeQueueFsmMsg", 659, (a1 + 24));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 + 1;
    v5 = v3[1];
    if (!v5)
    {
      v4 = (a1 + 16);
    }

    *v4 = 0;
    *(a1 + 8) = v5;
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    v6 = *v3;
    free(v3);
    if (v6 && g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Src,%x,Dest,%x,DeQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "AgpsDeQueueFsmMsg", *v6, v6[1], *(v6 + 1));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    v6 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

void gnssOsa_MarkFsmMsgInvalid(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_MarkFsmMsgInvalid", 715, (a2 + 24));
    v4 = *(a2 + 8);
    if (v4)
    {
      while (*(*v4 + 4) != a1)
      {
        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      *(*v4 + 8) = 0;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 73, "gnssOsa_MarkFsmMsgInvalid", a1);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

LABEL_10:
    gnssOsa_MacExitCriticalSection("gnssOsa_MarkFsmMsgInvalid", 737, (a2 + 24));
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FsmCtxt\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 87, "gnssOsa_MarkFsmMsgInvalid", 513);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void *memcpy_s(const char *a1, int a2, void *__dst, unsigned int a4, const void *__src, size_t __n)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!__dst || !__src)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v9, "OSA", 69, "memcpy_s", 513, a1, a2);
      goto LABEL_8;
    }

LABEL_9:
    v10 = *MEMORY[0x29EDCA608];
    return 0;
  }

  if (a4 < __n)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v8, "OSA", 69, "memcpy_s", 515, a1, a2);
LABEL_8:
      gnssOsa_PrintLog(__str, 1, 1, 0);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = *MEMORY[0x29EDCA608];

  return memcpy(__dst, __src, __n);
}

char *strncpy_s(char *a1, unsigned int a2, const char *__src, size_t __n)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1 || !__src)
  {
    goto LABEL_6;
  }

  if (a2 < __n)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "strncpy_s", 515);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_6:
    v5 = *MEMORY[0x29EDCA608];
    return 0;
  }

  v7 = *MEMORY[0x29EDCA608];

  return strncpy(a1, __src, __n);
}

BOOL gnssOsa_CreateThread(const char *a1, int a2, _opaque_pthread_t **a3, unsigned int a4, void *(__cdecl *a5)(void *), void *a6, unsigned int a7, void *a8, int a9)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(&v30, 0, sizeof(v30));
  if (a3)
  {
    if (a4)
    {
      if (pthread_attr_init(&v30))
      {
        snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Init failed");
        if (g_LbsOsaTrace_Config)
        {
          bzero(__s, 0x3C6uLL);
          v24 = mach_continuous_time();
          snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v24), "OSA", 69, "gnssOsa_CreateThread", __str);
          gnssOsa_PrintLog(__s, 1, 1, 0);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1026, "false && THRD Init failed");
      }

      v15 = &v30;
      if (pthread_attr_setstacksize(&v30, a4))
      {
        snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Stack Size");
        if (g_LbsOsaTrace_Config)
        {
          bzero(__s, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 69, "gnssOsa_CreateThread", __str);
          gnssOsa_PrintLog(__s, 1, 1, 0);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1030, "false && THRD Stack Size");
      }
    }

    else
    {
      v15 = 0;
    }

    if (pthread_create(a3, v15, a5, a6))
    {
      snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Create failed");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__s, 0x3C6uLL);
        v23 = mach_continuous_time();
        snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 69, "gnssOsa_CreateThread", __str);
        gnssOsa_PrintLog(__s, 1, 1, 0);
      }

      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1037, "false && THRD Create failed");
    }

    v26 = 0;
    v27 = 0;
    if (pthread_getschedparam(*a3, &v26, &v27))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1044, "false && THRD pthread_getschedparam failed");
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__s, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx Requester,%s,Handle,%p,Prio,%d,DesiredPrio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 73, "gnssOsa_CreateThread", 1569, a1, a3, v27.sched_priority, v26, a9);
      gnssOsa_PrintLog(__s, 4, 1, 0);
    }

    if (a9 == 99)
    {
      v26 = 4;
      priority_max = sched_get_priority_max(4);
    }

    else
    {
      if (a9 != 1)
      {
LABEL_23:
        if (a4 && pthread_attr_destroy(v15))
        {
          snprintf(__str, 0x3B6uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Destroy failed");
          if (g_LbsOsaTrace_Config)
          {
            bzero(__s, 0x3C6uLL);
            v25 = mach_continuous_time();
            snprintf(__s, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v25), "OSA", 69, "gnssOsa_CreateThread", __str);
            gnssOsa_PrintLog(__s, 1, 1, 0);
          }

          gnssOsa_FlushLog();
          __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1074, "false && THRD Destroy failed");
        }

        goto LABEL_25;
      }

      priority_max = sched_get_priority_min(v26);
    }

    if (priority_max == -1)
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1061, "false && sched_get_priority failed");
    }

    v27.sched_priority = priority_max;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__s, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx Updated Prio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 73, "gnssOsa_CreateThread", 1569, v27.sched_priority, v26);
      gnssOsa_PrintLog(__s, 4, 1, 0);
    }

    if (pthread_setschedparam(*a3, v26, &v27))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1067, "false && pthread_setschedparam failed");
    }

    goto LABEL_23;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__s, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "gnssOsa_CreateThread", 513);
    gnssOsa_PrintLog(__s, 1, 1, 0);
  }

LABEL_25:
  result = a3 != 0;
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssOsa_PrintLog(char *__s, int a2, int a3, unsigned int a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = gp_Logger;
  if (!gp_Logger)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    v8 = strlen(__s);
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = a4;
    if (!a4)
    {
      goto LABEL_31;
    }
  }

  v9 = 6;
  if (a2 > 1)
  {
    switch(a2)
    {
      case 4:
        v9 = 5;
        goto LABEL_21;
      case 3:
        v9 = 4;
        if (!a3)
        {
          goto LABEL_21;
        }

        break;
      case 2:
        v9 = 3;
        if (!a3)
        {
          goto LABEL_21;
        }

        break;
      default:
        goto LABEL_21;
    }

LABEL_18:
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v17 = v8;
    memcpy(&__dst, __s, v8);
    *(&__dst + v8) = 0;
    v12 = IndusGpsLogObjectGeneral;
    if (os_log_type_enabled(IndusGpsLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      p_dst = &__dst;
      if (v17 < 0)
      {
        p_dst = __dst;
      }

      *buf = 136446210;
      v19 = p_dst;
      _os_log_impl(&dword_298F10000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    (*(*gp_Logger + 16))(gp_Logger, v9, &__dst);
    if (v17 < 0)
    {
      operator delete(__dst);
    }

    goto LABEL_31;
  }

  if (!a2)
  {
LABEL_31:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  if (a2 == 1)
  {
    v9 = 2;
    if (a3)
    {
      goto LABEL_18;
    }
  }

LABEL_21:
  v10 = *(*gp_Logger + 32);
  v11 = *MEMORY[0x29EDCA608];

  v10(v4, v9, __s, v8);
}

void sub_298F7CD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F7CDE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DD_GLON_Alm_Set_Health_Frq(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = 0;
  result = GLON_AlmBin2Int(a1, &v15);
  v4 = BYTE3(v16) - 32;
  if (BYTE3(v16) <= 0x18u)
  {
    v4 = 2139062143;
  }

  if (BYTE3(v16) >= 7u)
  {
    v5 = v4;
  }

  else
  {
    v5 = BYTE3(v16);
  }

  v6 = BYTE2(v16);
  v7 = BYTE2(v16) - 1;
  if (v7 <= 0x17)
  {
    if (BYTE6(v18) == 1)
    {
      if (g_Logging_Cfg > 4)
      {
        v8 = *(a2 + v7 + 4332);
        if (v8 != 2139062143 && v8 != v5)
        {
          result = EvCrt_v("DD_GLON_Alm_Set_Health_Frq:  Error:  Ignoring apparent change of Frq Id of Slot %d from %d to %d %d %d", BYTE2(v16), v8, v5, 1, v19);
        }
      }

      if (*(a2 + v7 + 4332) == 2139062143 && v5 != 2139062143)
      {
        *(a2 + v7 + 4332) = v5;
      }

      v11 = a2[1489];
      if ((*(v11 + v7) & 1) == 0 && (*(a2[2146] + v7) & 1) == 0)
      {
        *(v11 + v7) = 1;
        result = EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health U->H Alm:  Slot %d  FrqId %d", BYTE2(v16), v5);
        *(a2[1490] + 20 * v7 + 4) = 1;
      }
    }

    else
    {
      v12 = a2[1489];
      if (*(v12 + v7) == 1)
      {
        *(v12 + v7) = 0;
        result = EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health H->U Alm:  Slot %d  FrqId %d", v6, v5);
        *(a2[1490] + 20 * v7 + 4) = 2;
      }

      if (*(a2 + v7 + 4332) == 2139062143 && v5 <= 6)
      {
        *(a2 + v7 + 4332) = v5;
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GLON_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v140 = *MEMORY[0x29EDCA608];
  v8 = a2 + 20;
  v7 = *(a2 + 20);
  if ((v7 & 0x80000000) == 0)
  {
    v10 = a4;
    v11 = result;
    v12 = *(a2 + 62) + 7;
    v13 = *(a6 + 17424 + 4 * v12);
    v14 = v13 - 1;
    v15 = v7 >> 27;
    *(a2 + 63) = v7 >> 27;
    if (!(v7 >> 27))
    {
      goto LABEL_3;
    }

    if (*(a4 + 76) >= 7)
    {
      v19 = *(a6 + 8972);
      if ((v19 - 2) < 5 || (v19 - 1) <= 5 && *(a4 + 80) == 1)
      {
        v20 = (*(a2 + 64) % 30);
        v21 = ((*(a2 + 64) % 30 + (((*(a2 + 64) % 30) & 0x80u) >> 7)) << 24) >> 25;
        if ((v20 + 1) < 3)
        {
          v21 = 15;
        }

        if (v21 != v7 >> 27 && !*a3 && (*(*(a6 + 64) + *(a2 + 8)) & 1) == 0 && ((v21 - 2) > 3u || v15 + 1 != v21))
        {
          v132 = a5;
          result = EvCrt_nd("DD_Proc_GLON_Data:  Decoded Str No error", 3, a3, v7 >> 27, v21, v20);
          v10 = a4;
          a5 = v132;
          *(a2 + 63) = 0;
          goto LABEL_3;
        }
      }
    }

    if (v15 == 2)
    {
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v15 == 3)
    {
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v15 < 5 || ((v7 >> 27) & 1) == 0)
      {
        goto LABEL_3;
      }

      if ((*(a2 + 30) & 8) == 0)
      {
LABEL_36:
        if (v13 != 2139062143)
        {
          *(result + v12 + 4770) = 0;
          if ((v14[*(a6 + 11912)] & 1) == 0 && v14[*(a6 + 17184)] == 1)
          {
            v133 = a5;
            memset(v135, 0, sizeof(v135));
            v136 = 0;
            v137 = 0;
            result = GLON_AlmBin2Int(a6 + 36 * v14 + 16248, v135);
            if (BYTE6(v136) == 1)
            {
              v14[*(a6 + 11912)] = 1;
              result = EvLog_v("DD_Proc_GLON_Data:  Health U->H Imm:  Slot %d  FrqId %d", v13, *(a2 + 63));
              *(*(a6 + 11920) + 20 * v14 + 4) = 1;
            }

            else if (g_Logging_Cfg >= 6)
            {
              result = EvLog_v("DD_Proc_GLON_Data:  Health U->U Imm:  Slot %d  FrqId %d", v13, *(a2 + 63));
            }

            a5 = v133;
            v10 = a4;
          }
        }

LABEL_3:
        v16 = *(a2 + 63);
        if ((v16 - 1) > 4)
        {
          if ((v16 - 6) <= 9)
          {
            if (v16)
            {
              v32 = (v11 + 6069);
              v33 = 14;
              do
              {
                v34 = *v32;
                if (v34 != v16 && v34 != 0)
                {
                  *v32 = 0;
                }

                if (*(v32 - 1))
                {
                  v36 = v16 - 1 == *(v32 - 1);
                }

                else
                {
                  v36 = 1;
                }

                if (!v36)
                {
                  *(v32 - 1) = 0;
                }

                v32 += 2;
                --v33;
              }

              while (v33);
            }

            else
            {
              v24 = (v11 + 6069);
              v25 = 14;
              do
              {
                v26 = *(v24 - 1);
                if (v26 != v16 && v26 != 0)
                {
                  *(v24 - 1) = 0;
                }

                *v24 = 0;
                v24 += 2;
                --v25;
              }

              while (v25);
              *(v11 + 6461) = 0;
            }
          }
        }

        else
        {
          *(v11 + 6092) = 0;
          *(v11 + 6084) = 0;
          *(v11 + 6068) = 0u;
          *(v11 + 6462) = 0;
          *(v11 + 6460) = 0;
        }

        v37 = *(a2 + 63);
        if ((v37 - 1) < 4)
        {
          if (v13 == 2139062143 || (v38 = a6 + 11928 + (v14 << 6), *(v38 + 60) == 4095) || v14[*(a6 + 11912)] != 1 || v14[*(a6 + 17168)] != 1 || *(a2 + 64) % 1800 < 30)
          {
            result = DD_Proc_Glon_Eph_String(v11, a2, a6, v10, a5);
          }

          else
          {
            v39 = v8;
            v40 = a5;
            v134 = v10;
            DD_Proc_Glon_Eph_Bit_Validation(v13, v37, v39, a6);
            v41 = *(v38 + 60);
            result = DD_Proc_Glon_Eph_String(v11, a2, a6, v134, v40);
            if (v41 == 4095)
            {
              v42 = *v40;
              *v38 = *v40;
              *(v38 + 4) = 4;
              v14[*(a6 + 17200)] = 1;
              if (*(v11 + v12 + 5572) >= 2u)
              {
                v43 = *(a6 + 17224);
                *v43 = 0;
                v43[1] = 0;
                v43[2] = 0;
              }

              if (v42 >= 1)
              {
                result = Core_Save_GLON_Eph(v13, 0, (a6 + 11928 + (v14 << 6)));
              }
            }
          }

          goto LABEL_190;
        }

        if (v37 != 5)
        {
          if (!*(a2 + 63))
          {
            result = EvLog_d("DD_Proc_GLON_Data:  Bad string", *(a2 + 9));
            goto LABEL_190;
          }

          if (*(v10 + 76) < 3)
          {
            goto LABEL_190;
          }

          v51 = *(a2 + 20);
          v52 = (*(a2 + 64) - 2 * ((v51 >> 27) & 0xF) + 15) / 30 % 5 + 1;
          if (((((*(a2 + 64) - 2 * ((v51 >> 27) & 0xF) + 15) / 30 % 5) + 1) & 0x100) != 0)
          {
            goto LABEL_190;
          }

          v53 = (v51 >> 27) & 0xF;
          v54 = *(a2 + 62) + 7;
          if ((v51 >> 27))
          {
            v94 = (v11 + 6068 + 2 * v54);
            if (*v94 + 1 == v53 && *(v11 + v54 + 6036) == 1)
            {
              v95 = v11 + 24 * v54;
              v96 = *(v8 + 8);
              *(v95 + 6108) = *v8;
              *(v95 + 6116) = v96;
              if (!*(v11 + 6064))
              {
                v97 = *(a2 + 64);
                if (v97 >= 1)
                {
                  *(v11 + 6064) = v97;
                }
              }

              v94[1] = v53;
              *(v11 + v54 + 6050) = v52;
              v98 = (v11 + 2 * v54 + 6432);
              v98[1] = *(a2 + 16);
              ++*(v11 + 6461);
              *(v11 + 4 * v54 + 6464) = *a5;
              if (!*v98 && !*(v11 + 2 * v54 + 6433))
              {
                ++*(v11 + 6462);
              }
            }

            else
            {
              if (g_Logging_Cfg >= 7)
              {
                if (*(v11 + v54 + 6036) == 1)
                {
                  v131 = *(v11 + 24 * v54 + 6096);
                  result = EvLog_v("DD_Proc_Glon_Alm_String:  String numbers not consecutive, 1stStrId %d  2ndStrId %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ");
                }

                else
                {
                  result = EvLog_v("DD_Proc_Glon_Alm_String:  Clk1 not Ready, FrqId %d  FrmId %d  StrId %d  Clk1_Ready %d ");
                }
              }

              if (*v94)
              {
                *v94 = 0;
              }
            }

            goto LABEL_190;
          }

          if (v53 == 14 && ((*(a2 + 64) - 2 * ((v51 >> 27) & 0xF) + 15) / 30 % 5 + 1) == 5)
          {
            v55 = *(a6 + 17424 + 4 * v54);
            if (v55 == 2139062143 || (*(*(a6 + 11912) + v55 - 1) & 1) == 0)
            {
              if (g_Logging_Cfg >= 5)
              {
                result = EvLog_v("DD_Proc_Glon_Alm_String:  Rejected:  Clk2 String,  SlotNum %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ", v55, *(a2 + 62), 5, 14, *(v11 + 24 * v54 + 6096));
              }

              goto LABEL_190;
            }

LABEL_183:
            v102 = v11 + 24 * v54;
            v103 = *v8;
            *(v102 + 6104) = *(v8 + 8);
            *(v102 + 6096) = v103;
            if (!*(v11 + 6064))
            {
              v104 = *(a2 + 64);
              if (v104 >= 1)
              {
                *(v11 + 6064) = v104;
              }
            }

            v105 = v11 + 2 * v54;
            *(v105 + 6068) = v53;
            *(v105 + 6432) = *(a2 + 16);
            ++*(v11 + 6460);
            *(v11 + 4 * v54 + 6464) = *a5;
            goto LABEL_190;
          }

          if (((v51 >> 19) & 0x1F) - 25 >= 0xFFFFFFE8)
          {
            v54 = v54;
            goto LABEL_183;
          }

          result = EvCrt_v("DD_Proc_Glon_Alm_String:  Rejected:  Invalid Slot %d  FrqId %d  FrmId %d  StrId %d  Word[0]: 0x%x ");
          goto LABEL_190;
        }

        v44 = *(a2 + 24);
        v45 = *(a2 + 28);
        HIDWORD(v47) = *(a2 + 20);
        LODWORD(v47) = v44;
        v46 = v47 >> 16;
        v48 = HIWORD(HIDWORD(v47)) & 0x7FF;
        v49 = (v47 >> 16) & 0x7FFFFFFF;
        if (v46 < 0)
        {
          v46 = -v49;
        }

        if ((v44 & 0x200) != 0)
        {
          v50 = -((__PAIR64__(v44, v45) >> 20) & 0x1FFFFF);
        }

        else
        {
          v50 = (__PAIR64__(v44, v45) >> 20) & 0x3FFFFF;
        }

        if ((v48 - 1462) < 0xFFFFFA4B)
        {
          v121 = *(a2 + 62);
          result = EvCrt_v("DD_Proc_Glon_Clk1_String:  Rejected:  FrqId %d  NA = %d  - Out of range [1..1461]");
          goto LABEL_190;
        }

        v56 = 0;
        v57 = (v44 >> 10) & 0x1F;
        v58 = (v45 >> 19) & 1;
        result = v11 + 5664;
        v59 = 1;
        do
        {
          if (v46 == *(result - 8) && v50 == *result && v57 - 2 < *(result - 4))
          {
            v60 = *(result - 12);
            v61 = __OFSUB__(v48, v60);
            v62 = v48 - v60;
            a3 = (v62 + 1461);
            if (v62 < 0 != v61)
            {
              v62 += 1461;
            }

            if (v62 < 4)
            {
              break;
            }
          }

          v59 = v56 < 0xD;
          result += 28;
          ++v56;
        }

        while (v56 != 14);
        v63 = *(a2 + 62) + 7;
        v64 = v11 + 5644 + 28 * v63;
        *v64 = *a5;
        *(v64 + 4) = 0;
        *(v64 + 8) = v48;
        *(v64 + 12) = v46;
        *(v64 + 16) = v57;
        *(v64 + 20) = v50;
        *(v64 + 24) = v58;
        v65 = v59 || *(a2 + 16) == 0;
        *(v11 + v63 + 6036) = v65;
        if ((*(a6 + 17192) & 1) != 0 || !v65)
        {
          if (!v59)
          {
            goto LABEL_154;
          }

          if (*(a6 + 17192))
          {
            if (*(a6 + 17128) >= v57)
            {
              goto LABEL_133;
            }

            v76 = *(v10 + 82) - v57;
            if (v76 < 0)
            {
              v76 = v57 - *(v10 + 82);
            }

            if (v76 >= 2)
            {
LABEL_133:
              if (*(a6 + 17120) > v48)
              {
                goto LABEL_154;
              }

              v77 = *(v10 + 84) - v48;
              if (v77 < 0)
              {
                v77 = v48 - *(v10 + 84);
              }

              if (v77 > 1)
              {
LABEL_154:
                if (g_Logging_Cfg >= 7)
                {
                  result = EvLog_nd("DD_Proc_Glon_Clk1_String:  Rejected: ", 6, a3, *(a6 + 17128), *(a6 + 17120), v57, v48, *(v10 + 82), *(v10 + 84));
                }

                goto LABEL_190;
              }
            }
          }

          v66 = v10;
          v78 = *v64;
          *(a6 + 17124) = *(v64 + 12);
          *(a6 + 17112) = v78;
          v68 = a5;
          *(a6 + 17112) = *a5;
          *(a6 + 17116) = 4;
          v74 = 1;
          *(a6 + 17192) = 1;
          v129 = *(a6 + 17132);
          v123 = *(a2 + 62);
          result = EvVrb_v("DD_Proc_Glon_Clk1_String:  New Clk1:  FrqId %d  Source %d  GPS_secs %d  TauGPS %d");
        }

        else
        {
          v66 = v10;
          v67 = *v64;
          *(a6 + 17124) = *(v64 + 12);
          *(a6 + 17112) = v67;
          v68 = a5;
          *(a6 + 17112) = *a5;
          *(a6 + 17116) = 4;
          v69 = *(a6 + 17124);
          if (v69 >= 0)
          {
            v70 = *(a6 + 17124);
          }

          else
          {
            v70 = -v69;
          }

          v71 = *(a6 + 17132);
          if (v71 >= 0)
          {
            v72 = *(a6 + 17132);
          }

          else
          {
            v72 = -v71;
          }

          v74 = v70 < 0x285 && v72 < 0x143;
          if (v74)
          {
            *(a6 + 17192) = 1;
          }

          v122 = *(a2 + 62);
          result = EvVrb_v("DD_Proc_Glon_Clk1_String:  1st Clk1:  FrqId %d  Source %d  GPS_secs %d  TauGPS %d");
        }

        if (*(a6 + 17192) != 1)
        {
LABEL_190:
          v106 = 0;
          LODWORD(v107) = 0;
          v108 = *(a6 + 11912);
          v109 = p_NV;
          v110 = *(v108 + 16);
          *(p_NV + 29172) = *v108;
          *(v109 + 29188) = v110;
          v111 = 55665;
          do
          {
            v112 = *(v109 + 29168 + v106) ^ BYTE1(v111);
            v111 = 52845 * (v111 + v112) + 22719;
            v107 = (v107 + v112);
            ++v106;
          }

          while (v106 != 32);
          *(v109 + 29160) = v107;
          goto LABEL_193;
        }

        v79 = v68;
        v80 = v66;
        v81 = *(v66 + 84);
        v82 = *(a6 + 17120);
        v83 = v81 - v82 + 1461;
        if (v81 - v82 >= -730)
        {
          v83 = v81 - v82;
        }

        if (v81 - v82 <= 729)
        {
          v84 = v83;
        }

        else
        {
          v84 = v81 - v82 - 1461;
        }

        v85 = *(v66 + 80);
        if (v84 >= 0)
        {
          v86 = v84;
        }

        else
        {
          v86 = -v84;
        }

        v87 = *(a6 + 17128);
        if (v85 == 1 && v86 >= 2)
        {
          *(v66 + 82) = *(a6 + 17128);
          *(v66 + 80) = 0;
          *(v66 + 105) = 1;
          goto LABEL_150;
        }

        v99 = *(v66 + 84);
        if (v85)
        {
          v100 = *(v66 + 82);
          if (v87 == v100)
          {
            goto LABEL_201;
          }

          if (v100 + 1 == v87 && v99 == 1461)
          {
            result = EvLog_nd("DD_Proc_Glon_Clk1_String:  4yrBlockNo roll-over ", 2, v75, &unk_2A13ED000, *(v66 + 82), v87);
            v80 = v66;
            *(v66 + 84) = 1;
          }

          else
          {
            result = EvCrt_nd("DD_Proc_Glon_Clk1_String:  WARNING:  4yrBlockNo miss-match ", 2, v75, &unk_2A13ED000, *(v66 + 82), v87);
            v80 = v66;
          }

          *(v80 + 82) = *(a6 + 17128);
          v79 = v68;
          if (*(v80 + 80))
          {
            goto LABEL_201;
          }

LABEL_150:
          if (v74)
          {
            v88 = 0;
            LODWORD(v89) = 0;
            *(a6 + 17112) = *v79;
            *(a6 + 17116) = 4;
            v90 = p_NV;
            v91 = *(a6 + 17124);
            *(p_NV + 29208) = *(a6 + 17112);
            *(v90 + 29220) = v91;
            v92 = 55665;
            do
            {
              v93 = *(v90 + 29208 + v88) ^ BYTE1(v92);
              v92 = 52845 * (v92 + v93) + 22719;
              v89 = (v89 + v93);
              ++v88;
            }

            while (v88 != 32);
            *(v90 + 29200) = v89;
          }

          goto LABEL_190;
        }

        *(v66 + 82) = v87;
        if (v99 < 1)
        {
          goto LABEL_150;
        }

        if (v99 == 1461)
        {
          if (v82 != 1)
          {
LABEL_200:
            *(v66 + 80) = 1;
LABEL_201:
            if (*(v80 + 16) == 1 && *v80)
            {
              goto LABEL_212;
            }

            *v135 = 0;
            *v139 = 0;
            v138 = 0.0;
            v114 = v79;
            v115 = v80;
            API_Get_UTC_Cor(1, v135);
            Glon_To_GPS_Time(*(v115 + 82), *(v115 + 84), *(v115 + 88), *v135, &v139[1], v139, &v138);
            result = DD_Submit_WeekNum(*(a2 + 62), v139[1], SLOWORD(v139[0]), v115, v138);
            v79 = v114;
            if (!*v114)
            {
              v116 = *(p_api + 48);
              if (*(v116 + 16) == 1 && *v116 >= 3)
              {
                v117 = *(v116 + 40) + 604800 * *(v116 + 32);
              }

              else
              {
                v117 = 0;
              }

              *v114 = v117;
            }

            if (*(v115 + 80))
            {
              v80 = v115;
              if (*(v115 + 16))
              {
                if (*v115)
                {
LABEL_212:
                  v118 = *(v80 + 40);
                  if (v118 > 31.0 && v118 < 604769.0)
                  {
                    v119 = v79;
                    *v135 = 0;
                    *v139 = 0;
                    v120 = v80;
                    API_Get_UTC_Cor(1, v135);
                    result = Glon_To_GPS_Time(*(v120 + 82), *(v120 + 84), *(v120 + 88), *v135, &v139[1], v139, &v138);
                    if (v139[0] + (v139[1] << 10) == *(v120 + 32))
                    {
                      *(v120 + 20) = *(v120 + 24);
                    }

                    else
                    {
                      result = EvCrt_v("DD_Proc_Glon_Clk1_String:  WARNING:  GLONASS Date Spoofing suspected, 4yrBlk %d  Day %d  Wk  %d != %d  FreqId %d", *(v120 + 82), *(v120 + 84), v139[0] + (v139[1] << 10), *(v120 + 32), *(a2 + 62));
                      *(v120 + 80) = 0;
                      *(v120 + 82) = 0;
                      *(v120 + 105) = 1;
                    }

                    v79 = v119;
                  }
                }
              }
            }

            goto LABEL_150;
          }

          v101 = -1;
        }

        else
        {
          if (v99 != 1 || v82 != 1461)
          {
            goto LABEL_200;
          }

          v101 = 1;
        }

        *(v66 + 82) = v101 + v87;
        goto LABEL_200;
      }
    }

    if (!*(a2 + 16))
    {
      ++*(result + v12 + 4770);
    }

    if (v13 == 2139062143)
    {
      v29 = *(a2 + 62);
      v125 = *(a2 + 16);
      v127 = *(result + v12 + 4770);
      v124 = *(a2 + 63);
      result = EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot ?  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d   (Ignored, no Slot)");
    }

    else
    {
      if (!*(a2 + 16) && *(result + 4770 + v12) >= 2u)
      {
        v30 = *(a6 + 11912);
        if (v14[v30] == 1)
        {
          v14[v30] = 0;
          result = EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d", v13, *(a2 + 62), *(a2 + 63), 0, *(result + 4770 + v12));
          *(*(a6 + 11920) + 20 * v14) = 2;
        }
      }

      if (v14[*(a6 + 11912)] == 1)
      {
        v31 = *(a2 + 62);
        v128 = *(a2 + 16);
        v130 = *(v11 + v12 + 4770);
        v126 = *(a2 + 63);
        result = EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d  (Waiting Confirmation)");
      }
    }

    goto LABEL_193;
  }

  if (g_Logging_Cfg < 5)
  {
LABEL_193:
    v113 = *MEMORY[0x29EDCA608];
    return result;
  }

  v17 = *(a2 + 63);
  v18 = *MEMORY[0x29EDCA608];

  return EvLog_d("DD_Proc_GLON_Data:  GLON MSB Zero test fail", v17);
}