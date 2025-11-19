void sub_298FF75B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::stopEmergencyPositionRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 7, v7, "stopEmergencyPositionRequest");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "stopEmergencyPositionRequest", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "stopEmergencyPositionRequest", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF7758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setNwAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 7, v7, "setNwAssistanceNeededReport");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNwAssistanceNeededReport", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceNeededReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF78FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setNwAssistanceGpsRefTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 0, v7, "setNwAssistanceGpsRefTime");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNwAssistanceGpsRefTime", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsRefTime", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF7AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setNwAssistanceRefPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 0, v7, "setNwAssistanceRefPosition");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNwAssistanceRefPosition", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceRefPosition", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF7C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setNwAssistanceGpsEphemeris(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, sizeof(__dst));
    v5 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setNwAssistanceGpsEphemerisERKNS_9Emergency6Cplane18GpsNavigationModelENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_6;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    memcpy(v10, __dst, sizeof(v10));
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__dst, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__dst, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceGpsEphemeris", 513);
    gnssOsa_PrintLog(__dst, 1, 1, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice27setNwAssistanceGpsEphemerisERKNS_9Emergency6Cplane18GpsNavigationModelENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    v4 = *(a1 + 72);
    if (v4 < 0x11)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Eph Count,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", *(a1 + 72));
        gnssOsa_PrintLog(__str, 4, 1, 0);
        v4 = *(a1 + 72);
      }

      if (!v4)
      {
        goto LABEL_76;
      }

      v39 = 0;
      v10 = 0;
      v11 = a1 + 84;
      do
      {
        v12 = *(v11 + 48);
        if (v12 > 0x3F)
        {
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v18 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatID,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, *(v11 + 48));
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }
        }

        else
        {
          v42 = 0;
          v41 = 0;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0;
          v40 = v12;
          if (*(v11 + 53) > 3u)
          {
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v19 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId CACode,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }
          }

          else
          {
            LOBYTE(v41) = *(v11 + 53);
            if (*(v11 + 49) >= 0x10u)
            {
              if (g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v20 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId URA Eph,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                gnssOsa_PrintLog(__str, 1, 1, 0);
              }
            }

            else
            {
              BYTE1(v41) = *(v11 + 49);
              if (*(v11 + 50) >= 0x40u)
              {
                if (g_LbsOsaTrace_Config)
                {
                  bzero(__str, 0x3C6uLL);
                  v21 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SVHealth,%d\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                  gnssOsa_PrintLog(__str, 1, 1, 0);
                }
              }

              else
              {
                BYTE2(v41) = *(v11 + 50);
                if (*(v11 + 56) >= 2u)
                {
                  if (g_LbsOsaTrace_Config)
                  {
                    bzero(__str, 0x3C6uLL);
                    v22 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId L2 PCode,%d\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                    gnssOsa_PrintLog(__str, 1, 1, 0);
                  }
                }

                else
                {
                  HIBYTE(v41) = *(v11 + 56);
                  if (*(v11 + 24) >= 0x400u)
                  {
                    if (g_LbsOsaTrace_Config)
                    {
                      bzero(__str, 0x3C6uLL);
                      v23 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SaId IODC,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                      gnssOsa_PrintLog(__str, 1, 1, 0);
                    }
                  }

                  else
                  {
                    LOWORD(v42) = *(v11 + 24);
                    if (*(v11 + 26) >= 0x93A8u)
                    {
                      if (g_LbsOsaTrace_Config)
                      {
                        bzero(__str, 0x3C6uLL);
                        v24 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId TOC,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                        gnssOsa_PrintLog(__str, 1, 1, 0);
                      }
                    }

                    else
                    {
                      HIWORD(v42) = *(v11 + 26);
                      if (*(v11 + 72) >= 0x800000u)
                      {
                        if (g_LbsOsaTrace_Config)
                        {
                          bzero(__str, 0x3C6uLL);
                          v25 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatdId 1st Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                          gnssOsa_PrintLog(__str, 1, 1, 0);
                        }
                      }

                      else
                      {
                        LODWORD(v43) = *(v11 + 72);
                        if (HIBYTE(*(v11 + 76)))
                        {
                          if (g_LbsOsaTrace_Config)
                          {
                            bzero(__str, 0x3C6uLL);
                            v26 = mach_continuous_time();
                            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId 2nd Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                            gnssOsa_PrintLog(__str, 1, 1, 0);
                          }
                        }

                        else
                        {
                          DWORD1(v43) = *(v11 + 76);
                          if (HIBYTE(*(v11 + 80)))
                          {
                            if (g_LbsOsaTrace_Config)
                            {
                              bzero(__str, 0x3C6uLL);
                              v27 = mach_continuous_time();
                              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId 3rd Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                              gnssOsa_PrintLog(__str, 1, 1, 0);
                            }
                          }

                          else
                          {
                            DWORD2(v43) = *(v11 + 80);
                            if (*(v11 + 84) >= 0x10000u)
                            {
                              if (g_LbsOsaTrace_Config)
                              {
                                bzero(__str, 0x3C6uLL);
                                v28 = mach_continuous_time();
                                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId 4th Res Word,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                gnssOsa_PrintLog(__str, 1, 1, 0);
                              }
                            }

                            else
                            {
                              HIDWORD(v43) = *(v11 + 84);
                              if ((*(v11 - 8) + 0x200000) >= 0x400000)
                              {
                                if (g_LbsOsaTrace_Config)
                                {
                                  bzero(__str, 0x3C6uLL);
                                  v29 = mach_continuous_time();
                                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId SatCk Eph,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                  gnssOsa_PrintLog(__str, 1, 1, 0);
                                }
                              }

                              else
                              {
                                DWORD1(v44) = *(v11 - 8);
                                if (*(v11 + 38) >= 0x93A8u)
                                {
                                  if (g_LbsOsaTrace_Config)
                                  {
                                    bzero(__str, 0x3C6uLL);
                                    v30 = mach_continuous_time();
                                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId RefTime Eph,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                    gnssOsa_PrintLog(__str, 1, 1, 0);
                                  }
                                }

                                else
                                {
                                  WORD6(v45) = *(v11 + 38);
                                  if (*(v11 + 64) >= 2u)
                                  {
                                    if (g_LbsOsaTrace_Config)
                                    {
                                      bzero(__str, 0x3C6uLL);
                                      v31 = mach_continuous_time();
                                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId EphFitInt,%u\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                      gnssOsa_PrintLog(__str, 1, 1, 0);
                                    }
                                  }

                                  else
                                  {
                                    BYTE14(v45) = *(v11 + 64);
                                    if (*(v11 + 68) >= 0x20u)
                                    {
                                      if (g_LbsOsaTrace_Config)
                                      {
                                        bzero(__str, 0x3C6uLL);
                                        v32 = mach_continuous_time();
                                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId Age Offset Eph,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                        gnssOsa_PrintLog(__str, 1, 1, 0);
                                      }
                                    }

                                    else
                                    {
                                      HIBYTE(v45) = *(v11 + 68);
                                      if (*(v11 + 46) - 57344 >= 0xFFFF4000)
                                      {
                                        if (g_LbsOsaTrace_Config)
                                        {
                                          bzero(__str, 0x3C6uLL);
                                          v33 = mach_continuous_time();
                                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId Rate of Incli Angle Eph,%u\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                          gnssOsa_PrintLog(__str, 1, 1, 0);
                                        }
                                      }

                                      else
                                      {
                                        WORD6(v46) = *(v11 + 46);
                                        v13 = *(v11 + 20);
                                        if ((v13 + 0x800000) >> 24)
                                        {
                                          if (g_LbsOsaTrace_Config)
                                          {
                                            bzero(__str, 0x3C6uLL);
                                            v34 = mach_continuous_time();
                                            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SatId Long of AscNode Orbit Plane at Weekly Epoch Eph,%u\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514, v40);
                                            gnssOsa_PrintLog(__str, 1, 1, 0);
                                          }
                                        }

                                        else
                                        {
                                          v14 = *(v11 + 8);
                                          *(&v45 + 4) = *v11;
                                          LOBYTE(v44) = *(v11 + 60);
                                          BYTE1(v44) = *(v11 + 51);
                                          WORD1(v44) = *(v11 + 28);
                                          v15 = *(v11 - 4);
                                          DWORD2(v44) = *(v11 + 30);
                                          HIDWORD(v44) = v15;
                                          LODWORD(v45) = *(v11 + 34);
                                          LODWORD(v46) = *(v11 + 40);
                                          *(&v46 + 4) = v14;
                                          HIWORD(v46) = *(v11 + 44);
                                          v47 = __PAIR64__(v13, *(v11 + 16));
                                          if (g_LbsOsaTrace_Config > 3)
                                          {
                                            bzero(__str, 0x3C6uLL);
                                            v16 = mach_continuous_time();
                                            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: satId,%u,ephemCodeOnL2,%u,ephemUra,%u,ephemSvHealth,%u,ephemL2PFlag,%u,ephemIodc,%u,ephemToc,%u,reserved1,%u,reserved2,%u,reserved3,%u,reserved4,%u,ephemTgd,%u,ephemAf2,%u,ephemAf1,%u,ephemAf0,%d,ephemCrs,%u,ephemDeltaN,%u,ephemM0,%d,ephemCuc,%u,ephemCus,%u,ephemE,%u,ephemAPowerHalf,%u,toe,%u,ephemFitFlag,%u,ephemAODO,%u,ephemCic,%u,ephemCis,%u,ephemOmegaA0,%d,ephemI0,%d,ephemIdot,%u,ephemCrc,%u,ephemW,%d,ephemOmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", v40, v41, BYTE1(v41), BYTE2(v41), HIBYTE(v41), v42, HIWORD(v42), v43, DWORD1(v43), DWORD2(v43), HIDWORD(v43), v44, SBYTE1(v44), SWORD1(v44), DWORD1(v44), SWORD4(v44), SWORD5(v44), HIDWORD(v44), v45, SWORD1(v45), DWORD1(v45), DWORD2(v45), WORD6(v45), BYTE14(v45), HIBYTE(v45), v46, SWORD1(v46), DWORD1(v46), DWORD2(v46), SWORD6(v46), SHIWORD(v46), v47, HIDWORD(v47));
                                            gnssOsa_PrintLog(__str, 4, 1, 0);
                                          }

                                          GNS_AsstGpsNavModel(*(a1 + 1620), 1, 1, &v40);
                                          if (g_LbsOsaTrace_Config >= 4)
                                          {
                                            bzero(__str, 0x3C6uLL);
                                            v17 = mach_continuous_time();
                                            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: AsstGpsNavModel invoked\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke");
                                            gnssOsa_PrintLog(__str, 4, 1, 0);
                                          }

                                          ++v39;
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

        ++v10;
        v11 += 96;
      }

      while (v10 < *(a1 + 72));
      if (v39)
      {
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v35 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Eph Count,%u\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 73, "setNwAssistanceGpsEphemeris_block_invoke", v39);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v49, "setNwAssistanceGpsEphemeris_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
      }

      else
      {
LABEL_76:
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v48, "setNwAssistanceGpsEphemeris_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
        if (!g_LbsOsaTrace_Config)
        {
          goto LABEL_80;
        }

        bzero(__str, 0x3C6uLL);
        v36 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Eph Count 0\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 515);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v37 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v50, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v50, "setNwAssistanceGpsEphemeris_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v50);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Eph Count\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 514);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v51, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v51, "setNwAssistanceGpsEphemeris_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsEphemeris_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNwAssistanceGpsEphemeris_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_80:
  v38 = *MEMORY[0x29EDCA608];
}

void gnss::GnssAdaptDevice::setNwAssistanceGpsAcquisition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 0, v7, "setNwAssistanceGpsAcquisition");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNwAssistanceGpsAcquisition", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNwAssistanceGpsAcquisition", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF9018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setFtAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 7, v7, "setFtAssistanceNeededReport");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setFtAssistanceNeededReport", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setFtAssistanceNeededReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF91BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::injectFTAssistance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 0, v7, "injectFTAssistance");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "injectFTAssistance", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "injectFTAssistance", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298FF9360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BDS_B1C_AlmBin2Int(signed int a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v9 = *MEMORY[0x29EDCA608];
  *(a3 + 4) = 4;
  *(a3 + 10) = (bswap32(*(a2 + 4)) >> 21) & 0x3F;
  v4 = *(a2 + 5);
  if ((v4 & 0x10) != 0 && (v5 = (((v4 << 16) | (*(a2 + 6) << 8) | *(a2 + 7)) >> 6) & 0x1FFF, *(a3 + 8) = v5, v5) && (v5 + 836) <= a1)
  {
    *(a3 + 11) = bswap32(*(a2 + 7)) >> 22;
    *(a3 + 16) = ((*(a2 + 8) << 10) | (4 * *(a2 + 9)) & 0xFFE0);
    *(a3 + 36) = (*(a2 + 9) << 13) | (32 * *(a2 + 10));
    *(a3 + 12) = (*(a2 + 11) << 16) | (*(a2 + 12) << 8) | *(a2 + 13) & 0x80;
    *(a3 + 28) = ((*(a2 + 13) << 25 >> 31) & 0xFFFF0000 | ((*(a2 + 15) | (*(a2 + 13) << 16) | (*(a2 + 14) << 8)) >> 7)) << 8;
    *(a3 + 32) = 32 * ((*(a2 + 15) << 26 >> 31) & 0xFFFFFC00 | ((*(a2 + 16) | (*(a2 + 15) << 8)) >> 4) & 0x3FF);
    *(a3 + 20) = ((*(a2 + 16) << 28 >> 31) & 0xFFFF0000 | ((*(a2 + 18) | (*(a2 + 16) << 16) | (*(a2 + 17) << 8)) >> 4)) << 8;
    *(a3 + 24) = ((*(a2 + 18) << 28 >> 31) & 0xFFFF0000 | ((*(a2 + 20) | (*(a2 + 18) << 16) | (*(a2 + 19) << 8)) >> 4)) << 8;
    *(a3 + 38) = ((*(a2 + 20) << 12) >> 15) & 0xF800 | ((*(a2 + 21) | (*(a2 + 20) << 8)) >> 1) & 0x7FF;
    *(a3 + 40) = 2 * (((*(a2 + 21) << 15) >> 15) & 0xFC00 | ((*(a2 + 23) | (*(a2 + 21) << 16) | (*(a2 + 22) << 8)) >> 7) & 0x3FF);
    v8 = bswap32(*(a2 + 24));
    *(a3 + 42) = (v8 & 0x1C00000) == 0;
    *a4 = (v8 & 0x1400000) == 0;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

double *Inc_Glon_TOD(double a1, double *result, __int16 *a3, unsigned __int16 *a4)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *result + a1;
  *result = v4;
  LOWORD(v5) = *a3;
  if (v4 >= 86400.0)
  {
    do
    {
      v4 = v4 + -86400.0;
      LOWORD(v5) = v5 + 1;
    }

    while (v4 >= 86400.0);
    *result = v4;
    *a3 = v5;
  }

  if (v4 < 0.0)
  {
    do
    {
      v4 = v4 + 86400.0;
      LOWORD(v5) = v5 - 1;
    }

    while (v4 < 0.0);
    *result = v4;
    *a3 = v5;
  }

  if (v5 >= 1462)
  {
    do
    {
      *a3 = v5 - 1461;
      ++*a4;
      v5 = *a3;
    }

    while (v5 > 1461);
  }

  if (v5 <= 0)
  {
    do
    {
      *a3 = v5 + 1461;
      v6 = *a4 - 1;
      *a4 = v6;
      v5 = *a3;
    }

    while (v5 < 1);
  }

  else
  {
    v6 = *a4;
  }

  if (v6 >= 0x10u)
  {
    *a4 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_RealAlm2ECEF(uint64_t a1, uint64_t a2, double *a3, int a4, int a5)
{
  v30[1] = *MEMORY[0x29EDCA608];
  v29 = 0.0;
  v30[0] = 0.0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  GLON_Alm_Calc_SemiMaj(a3);
  v11 = v10;
  GLON_Alm_Last_Asc_Pass(v30, &v29, a5, a3, a4, v10);
  v12 = a3[7];
  v13 = a3[8];
  v14 = tan(v13 * -0.5);
  v15 = atan(sqrt((1.0 - v12) / (v12 + 1.0)) * v14);
  v16 = v15 + v15 - v12 * sin(v15 + v15);
  GLON_Alm_Calc_Corrns(&v26, a3, v11, v13 + v16, 0.0);
  v17 = a3[8] + v16;
  v18 = v30[0];
  v19 = a4 - v30[0];
  v20 = v19 * 6.28318531 / (a3[5] + 43200.0) + v17;
  GLON_Alm_Calc_Corrns(&v23, a3, v11, v20, v19);
  v23 = vsubq_f64(v23, v26);
  v24 = vsubq_f64(v24, v27);
  v25 = vsubq_f64(v25, v28);
  GLON_Alm_Apply_Corrns(&v23, a3, v22, v11, v29 + (v18 + -10800.0) * 0.00007292115, v20);
  GLON_Alm_Calc_ECEF_PosVel(v22, a1, a2, a4);
  v21 = *MEMORY[0x29EDCA608];
}

void *NK_Validate_Fix(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = a2 + 24576;
  v9 = a3 + 61440;
  *(a3 + 61920) = 0;
  if (API_Qual_Pos("default", 1, 0, 0, 0))
  {
    *(v9 + 480) = 257;
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  if (*(v9 + 481))
  {
    goto LABEL_4;
  }

  if (*(a3 + 1872) != 1)
  {
    goto LABEL_14;
  }

  if (API_Qual_Pos("default", 0, 0, 0, 0))
  {
    v10 = 1;
    *(v9 + 481) = 1;
  }

  else
  {
    v10 = *(v9 + 481);
  }

LABEL_5:
  if (*(v9 + 480) == 1)
  {
    if (v10)
    {
      *(v8 + 2552) = (*(v8 + 2552) + 1);
      goto LABEL_15;
    }

LABEL_14:
    ++*(v8 + 2556);
    *(v8 + 2552) = 0;
    goto LABEL_15;
  }

  if ((v10 & 1) == 0 || *(v9 + 484) <= 3)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = API_Get_Fix_Reliability();
  v12 = *(a3 + 20);
  if (v12 < 10 || *(v9 + 480) != 1 || *(v8 + 2552) < 3u || result < 2 || *(v9 + 656) > *(a4 + 1688) || *(v9 + 576) > *(a4 + 1704))
  {
    goto LABEL_36;
  }

  v13 = a1[89];
  v14 = a1[90];
  if (a1[89] && 3 * v14 <= v13)
  {
    if (a1[90])
    {
      LOBYTE(v13) = (v13 - v14) / v14;
    }
  }

  else
  {
    if (!a1[90] || v14 < v13)
    {
      goto LABEL_30;
    }

    LOBYTE(v13) = 0;
  }

  *(v9 + 494) = v13;
LABEL_30:
  if (v12 == 11 && !a1[91])
  {
    v15 = a1[87];
    if (a1[87])
    {
      v16 = a1[88];
      if (3 * v16 <= v15)
      {
        if (a1[88])
        {
          v15 = (v15 - v16) / v16;
        }

        goto LABEL_35;
      }
    }
  }

  if (a1[88] && a1[88] >= a1[87])
  {
    LOBYTE(v15) = 0;
LABEL_35:
    *(v9 + 495) = v15;
  }

LABEL_36:
  if (*(a3 + 1872) || *(v9 + 481) != 1 || *(v8 + 2552) < 0x1Eu || *a3 - *(a4 + 1772) < 25001 || *(a3 + 1868) < 3 || *(v9 + 488) < 4 || v12 < 8 || (*(a2 + 241) & 1) != 0 || *(v9 + 656) > *(a4 + 1688) || *(v9 + 576) > *(a4 + 1704))
  {
    goto LABEL_56;
  }

  if ((result - 2) < 3)
  {
    *a4 = 1;
LABEL_56:
    v18 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (result)
  {
    goto LABEL_56;
  }

  v17 = *MEMORY[0x29EDCA608];

  return EvCrt_Illegal_switch_case("NK_Validate_Fix", 0x102u);
}

void NK_Dopp_Outlier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __b[256] = *MEMORY[0x29EDCA608];
  v6 = a2 + 24576;
  if (!*(a2 + 27136))
  {
    qword_2A145C618 = 0;
    _MergedGlobals_5 = 0;
  }

  memset_pattern16(__b, &unk_299051A90, 0x400uLL);
  if (*(v6 + 2674) != 1)
  {
    goto LABEL_96;
  }

  v7 = *a3 - *(v6 + 2760);
  v8 = v7 / 1000;
  if (*(a2 + 27240) <= 17.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 5;
  }

  if (*(v6 + 2600) == 1)
  {
    v10 = *(a2 + 27344);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 0x7D0u / v10 + v9;
    if (v11 >= 0x96)
    {
      v11 = 150;
    }

    if (v8 > v11)
    {
      goto LABEL_96;
    }

    v80 = v6;
    v81 = *a3;
    v78 = 1;
    v77 = *(a2 + 27184);
    v12 = (a2 + 27192);
  }

  else
  {
    if (v8 > v9)
    {
      goto LABEL_96;
    }

    v80 = v6;
    v81 = *a3;
    v78 = *(v6 + 2600);
    v77 = *(a3 + 1664) * 299792458.0;
    v12 = (a3 + 1848);
  }

  v13 = 0;
  v73 = (a3 + 36579);
  v75 = (a3 + 21675);
  v74 = (a3 + 6771);
  v14 = v7 / -2000 + 85;
  v76 = *v12;
  v15 = a3 + 21984;
  v16 = a3 + 36888;
  v79 = a1;
  v82 = a1 + 4448;
  v83 = a3;
  v17 = (a3 + 32352);
  v18 = (a1 + 96);
  v19 = a2 + 1944;
  v86 = 0.0;
  v20 = -0.5;
  v21 = 0.5;
  v84 = 0.0;
  v85 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    __b[v13 + 128] = 0;
    if ((*(v15 + v13) & 1) != 0 || *(v16 + v13) == 1)
    {
      v24 = *(a2 + 27328);
      v25 = *(v19 + 5128) - v24;
      if (v25 <= 0.0)
      {
        v26 = v20;
      }

      else
      {
        v26 = v21;
      }

      v27 = v25 + v26;
      if (v27 <= 2147483650.0)
      {
        if (v27 >= -2147483650.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0x80000000;
        }
      }

      else
      {
        v28 = 0x7FFFFFFF;
      }

      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (v28 > 0x168)
      {
        v28 -= 360;
      }

      if (v28 > 180)
      {
        v28 -= 180;
      }

      if (v28 > 90)
      {
        v28 = 180 - v28;
      }

      if (v28 <= v14)
      {
        v29 = *(v19 + 5120) + v24 * -0.0174532925;
        v30 = -6.28318531;
        if (v29 >= 3.14159265 || (v30 = 6.28318531, v29 < -3.14159265))
        {
          v29 = v29 + v30;
        }

        v31 = *v19;
        v32 = cos(v29);
        v33 = cos(v31);
        if (*(v16 + v13) == 1)
        {
          v34 = *(v83 + 8 * v13 + 208) / *(v83 + 1552) - v17[3989];
          v35 = 0.04;
        }

        else
        {
          v34 = -*(v82 + 8 * v13) - v17[3989];
          v35 = *v17;
        }

        *&__b[v13] = v34;
        v36 = -(v32 * v33);
        *&__b[v13 + 128] = v36;
        if (*v18 != 7)
        {
          v37 = 1.0 / v35;
          v22 = v22 + v36 * v37;
          v23 = v23 + v36 * v37 * v36;
          v38 = v34 * v37;
          v84 = v84 + v38;
          v85 = v85 + v36 * v38;
          v86 = v86 + v37;
        }

        v20 = -0.5;
        v21 = 0.5;
      }
    }

    ++v13;
    v18 += 4;
    ++v17;
    v19 += 40;
  }

  while (v13 != 128);
  if (*(v80 + 2628) == 3)
  {
    v39 = v86 * (v23 + 10000.0) - v22 * v22;
    if (v39 > 0.0001)
    {
      *&qword_2A145C618 = (v85 + 0.0) * (1.0 / v39 * -v22) + (v23 + 10000.0) * (1.0 / v39) * v84;
      _MergedGlobals_5 = v81;
    }

    goto LABEL_96;
  }

  v40 = -v22;
  v41 = v86 * v23 - v22 * v22;
  v43 = v76;
  v42 = v77;
  if (v41 > 0.0001)
  {
    v44 = 1.0 / v41;
    v45 = v23 * v44;
    v46 = v86 * v44;
    v47 = v44 * v40;
    v42 = v85 * v47 + v45 * v84;
    v43 = v85 * v46 + v47 * v84;
  }

  v48 = (a2 + 1920);
  if (v78)
  {
    v49 = v81 - *(v80 + 2604);
    if (v49 > 90999)
    {
      goto LABEL_57;
    }

    v50 = (a2 + 27184);
  }

  else
  {
    v50 = &qword_2A145C618;
    v49 = v81 - _MergedGlobals_5;
    if (v81 - _MergedGlobals_5 > 179999)
    {
      goto LABEL_57;
    }
  }

  v51 = 1.0 / ((v49 / 1000 * (v49 / 1000)) * 0.0000308641975 + 0.0001);
  v52 = (v86 + v51) * v23 - v22 * v22;
  if (v52 > 0.0001)
  {
    v53 = v84 + v51 * *v50;
    v54 = 1.0 / v52;
    v55 = v54 * v40;
    v42 = v85 * v55 + v23 * v54 * v53;
    v43 = v85 * ((v86 + v51) * v54) + v55 * v53;
  }

LABEL_57:
  v56 = 0;
  v57 = 0;
  v58 = 0;
  memset(v87, 0, sizeof(v87));
  v59 = fmax(fabs(v43) * 0.25, 2.5);
  do
  {
    if ((*(v15 + v56) & 1) != 0 || *(v16 + v56) == 1)
    {
      v60 = *&__b[v56 + 128];
      if (fabs(v60) > 0.05)
      {
        v61 = (*&__b[v56] - v42) / v60;
        v62 = v61 < 0.0;
        if (v43 <= v59)
        {
          v62 = 0;
        }

        if (v61 >= -v59 && !v62)
        {
          if (v61 > 0.0)
          {
            ++v57;
          }
        }

        else
        {
          ++v58;
          *(v87 + v56) = 1;
        }
      }
    }

    ++v56;
  }

  while (v56 != 128);
  if (v78)
  {
    v64 = 70;
  }

  else
  {
    v64 = 50;
  }

  if (v78)
  {
    v65 = 40;
  }

  else
  {
    v65 = 36;
  }

  if (v58)
  {
    v66 = v58 < 4 ? v78 : 0;
    if (v57 >= v58 || v66)
    {
      v67 = 0;
      v68 = v83 + 7080;
      while (*(v87 + v67) != 1 || *v48 >= v64 || v65 <= *(v79 + 1760 + v67) || *(v83 + 12072 + 8 * v67) >= 50.0)
      {
LABEL_95:
        ++v67;
        v48 += 10;
        if (v67 == 128)
        {
          goto LABEL_96;
        }
      }

      v69 = (v15 + v67);
      if (*(v15 + v67))
      {
        v70 = 22240;
        v71 = v75;
      }

      else
      {
        v69 = (v16 + v67);
        if (*(v16 + v67) != 1)
        {
          goto LABEL_93;
        }

        v70 = 37144;
        v71 = v73;
      }

      *v69 = 0;
      *(v83 + v70 + 4 * v67) = 11;
      ++v71[1];
      --*v71;
LABEL_93:
      if (*(v68 + v67) == 1)
      {
        *(v68 + v67) = 0;
        *(v83 + 7336 + 4 * v67) = 11;
        ++v74[1];
        --*v74;
      }

      goto LABEL_95;
    }
  }

LABEL_96:
  v72 = *MEMORY[0x29EDCA608];
}

uint64_t Decode_GPS_Health_Subframe(uint64_t result, BOOL *a2)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = *(result + 12 + v2);
    v4 = &v7[v2];
    *v4 = (v3 >> 18) & 0x1F;
    v4[1] = (v3 >> 12) & 0x1F;
    v4[2] = (v3 >> 6) & 0x1F;
    v2 += 4;
    v4[3] = v3 & 0x1F;
  }

  while (v2 != 24);
  for (i = 0; i != 24; ++i)
  {
    a2[i] = (0xE4FE7F3uLL >> v7[i]) & 1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_GPS_Kep_Ephemeris(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  *a4 = *a3;
  *(a4 + 8) = result;
  *(a4 + 12) = a2;
  v4 = *(a3 + 8);
  *(a4 + 22) = (v4 >> 14) & 0x3FF;
  *(a4 + 19) = BYTE1(v4) & 0xF;
  *(a4 + 14) = (v4 >> 2) & 0x1F;
  v5 = *(a3 + 24);
  v6 = *(a3 + 28);
  *(a4 + 24) = 16 * v6;
  v7 = (a3 + 32);
  v8 = vld1_dup_f32(v7);
  v9 = vshl_s32(vshl_u32(v8, 0x800000010), 0xFFFFFFE8FFFFFFF0);
  v10.i64[0] = v9.i32[0];
  v10.i64[1] = v9.i32[1];
  *(a4 + 48) = vmulq_f64(vcvtq_f64_s64(v10), xmmword_299053730);
  LODWORD(v7) = *(a3 + 40);
  *(a4 + 40) = (((*(a3 + 36) << 8) >> 8) & 0xFFFFFFFC) * 1.16415322e-10;
  v12 = *(a3 + 44);
  v11 = *(a3 + 48);
  *(a4 + 104) = (v12 >> 8) * 3.57157734e-13;
  v13 = v11 & 0xFFFFFF | (v12 << 24);
  v14 = (*(a3 + 56) & 0xFFFFFF | (*(a3 + 52) << 24)) * 1.16415322e-10;
  v15.i32[0] = *(a3 + 52);
  v16 = *(a3 + 60);
  v17 = *(a3 + 64);
  v15.i32[1] = v16;
  v18 = vshr_n_s32(vshl_n_s32(v15, 8uLL), 0x10uLL);
  v10.i64[0] = v18.i32[0];
  v10.i64[1] = v18.i32[1];
  v19 = vdupq_n_s64(0x3E20000000000000uLL);
  *(a4 + 136) = vmulq_f64(vcvtq_f64_s64(v10), v19);
  *(a4 + 184) = vcvtd_n_f64_u32(v17 & 0xFFFFFF | (v16 << 24), 0x13uLL);
  *(a4 + 28) = 16 * *(a3 + 69);
  v20 = *(a3 + 68);
  v21 = *(a3 + 80);
  v22 = (*(a3 + 76) & 0xFFFFFF | (*(a3 + 72) << 24));
  v23.i32[0] = *(a3 + 72);
  v23.i32[1] = v21;
  v24 = vshr_n_s32(vshl_n_s32(v23, 8uLL), 0x10uLL);
  v10.i64[0] = v24.i32[0];
  v10.i64[1] = v24.i32[1];
  *(a4 + 152) = vmulq_f64(vcvtq_f64_s64(v10), v19);
  v19.f64[0] = (*(a3 + 84) & 0xFFFFFF | (v21 << 24));
  v25 = *(a3 + 96);
  v26 = *(a3 + 92) & 0xFFFFFF | (*(a3 + 88) << 24);
  v24.i32[0] = *(a3 + 88);
  *(a4 + 200) = v22 * 0.00000000146291808;
  *(a4 + 208) = v19.f64[0] * 0.00000000146291808;
  v24.i32[1] = v7;
  v27 = vshr_n_s32(vshl_u32(v24, 0x1000000008), 0x10uLL);
  v10.i64[0] = v27.i32[0];
  v10.i64[1] = v27.i32[1];
  *(a4 + 120) = vmulq_f64(vcvtq_f64_s64(v10), vdupq_n_s64(0x3FA0000000000000uLL));
  v28 = vcvtd_n_f64_s32(v5, 0x1FuLL);
  *(a4 + 20) = BYTE2(v6);
  if ((v20 & 0x80) != 0)
  {
    v29 = 6;
  }

  else
  {
    v29 = 4;
  }

  *(a4 + 18) = v29;
  *(a4 + 216) = v26 * 0.00000000146291808;
  *(a4 + 224) = v14;
  *(a4 + 232) = (v25 << 8) * 1.3951474e-15;
  *(a4 + 168) = (*(a3 + 100) & 0xFFFFFFFC) * 8.92894335e-14;
  *(a4 + 176) = v13 * 0.00000000146291808;
  v30 = *(a3 + 108);
  *(a4 + 15) = *(a3 + 108) == 0;
  v31 = *(a3 + 109) == 1;
  *(a4 + 16) = v31;
  if (v30)
  {
    v31 = 0;
    v32 = 0.0;
    v33 = 0.0;
  }

  else
  {
    v32 = *(a3 + 110) * 2.91038305e-11;
    v33 = *(a3 + 112) * 2.91038305e-11;
  }

  *(a4 + 17) = v31;
  v34 = v28 - v32;
  *(a4 + 64) = v34;
  *(a4 + 72) = v34;
  v35 = v28 - v33;
  *(a4 + 80) = v35;
  *(a4 + 88) = v35;
  *(a4 + 96) = v34;
  v36 = *(a3 + 114);
  if (v36 < 0)
  {
    *(a4 + 19) = v36;
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf01da(void *result, unsigned int a2, _BYTE *a3, int a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 < 0xA)
  {
    if (a4)
    {
      *a3 = 45;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = &a3[v5];
    *v6 = a2 | 0x30;
    v6[1] = 0;
    v7 = *a3;
    if (*a3)
    {
      v8 = *result;
      v9 = a3 + 1;
      do
      {
        *result = v8 + 1;
        *v8 = v7;
        v8 = *result;
        if (*result >= result[3])
        {
          v8 = result[2];
          *result = v8;
        }

        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    v11 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(result, a2, a3, 0, a4, 0);
  }

  return result;
}

uint64_t sprintf_02d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf01da(a1, -a2, v4, 1);
  }

  else
  {
    result = sprintf02da(a1, a2, v4, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf02da(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 0x64)
  {
    if (a4)
    {
      *a3 = 45;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return digit2(a1, a2, a3, v6, 0);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf_03d(uint64_t a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf02da(a1, -a2, v4, 1);
  }

  else
  {
    result = sprintf03da(a1, a2, v4, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf03da(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3E8)
  {
    if (a4)
    {
      *a3 = 45;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return digit3(a1, a2, a3, v6, 0);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf08da(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 0x5F5E100)
  {
    if (a4)
    {
      *a3 = 45;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return digit8(a1, a2, a3, v6, 0);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf_09d(uint64_t a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf08da(a1, -a2, v4, 1);
  }

  else
  {
    result = sprintf09da(a1, a2, v4, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf09da(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    if (a4)
    {
      *a3 = 45;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return digit9(a1, a2, a3, v6, 0);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t digit10(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = a2 + 294967296;
  if (a2 > 0xEE6B27FF)
  {
    v6 = 52;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v5 - 2000000000;
  if (v5 > 0x773593FF)
  {
    v8 = v6 | 2;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  if (v7 <= 0x3B9AC9FF)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = a4 + 1;
  a3[a4] = v9;
  if (a5 == 10)
  {
    a3[(a4 + 1)] = 46;
    v10 = a4 + 2;
  }

  if (v7 <= 0x3B9AC9FF)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 - 1000000000;
  }

  v12 = *MEMORY[0x29EDCA608];

  return digit9(a1, v11, a3, v10, a5);
}

void *sprintf1da(void *result, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 < 0xA)
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    a3[a4] = a2 | 0x30;
    a3[(a4 + 1)] = 0;
    v7 = *a3;
    if (*a3)
    {
      v8 = *result;
      v9 = a3 + 1;
      do
      {
        *result = v8 + 1;
        *v8 = v7;
        v8 = *result;
        if (*result >= result[3])
        {
          v8 = result[2];
          *result = v8;
        }

        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    v11 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(result, a2, a3, a4, a5, 0);
  }

  return result;
}

void *sprintf_2d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf1da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf2da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf2da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x64)
  {
    if (a2 < 0xA)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf1da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit2(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_3d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf2da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf3da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf3da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3E8)
  {
    if (a2 < 0x64)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf2da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit3(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_4d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf3da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf4da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf4da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 >> 4 < 0x271)
  {
    if (a2 < 0x3E8)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf3da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit4(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_5d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf4da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf5da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf5da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 >> 5 < 0xC35)
  {
    if (a2 >> 4 < 0x271)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf4da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit5(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_6d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf5da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf6da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf6da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0xF4240)
  {
    if (a2 >> 5 < 0xC35)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf5da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit6(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_7d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf6da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf7da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf7da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x989680)
  {
    if (a2 < 0xF4240)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf6da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit7(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_8d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf7da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf8da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf8da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x5F5E100)
  {
    if (a2 < 0x989680)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf7da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit8(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_9d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf8da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf9da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf9da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    if (a2 < 0x5F5E100)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf8da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit9(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

uint64_t sprintf_10d(void *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v3 = 0;
    v4 = 1;
LABEL_6:
    result = sprintf9da(a1, a2, v6, v3, v4);
    goto LABEL_7;
  }

  if (a2 < 0x3B9ACA00)
  {
    v6[0] = 32;
    v3 = 1;
    v4 = 0;
    goto LABEL_6;
  }

  result = digit10(a1, a2, v6, 0, 0);
LABEL_7:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_10u(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    v4[0] = 32;
    result = sprintf9da(a1, a2, v4, 1u, 0);
  }

  else
  {
    result = digit10(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_2f(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v4 = -a2;
    if (a2 > 0xFFFFFFF6)
    {
      v6[0] = 45;
      result = digit2(a1, v4, v6, 1, 2);
    }

    else
    {
      result = nzet(a1, v4, v6, 0, 1, 2);
    }
  }

  else
  {
    result = sprintf_2fa(a1, a2, v6, 0, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_3f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFFFF9C)
    {
      if (a3 == 3)
      {
        v7[0] = 45;
        result = digit3(a1, v5, v7, 1, 3);
      }

      else
      {
        result = sprintf_2fa(a1, v5, v7, 0, 1);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_3fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_4f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFFFC18)
    {
      if (a3 == 4)
      {
        v7[0] = 45;
        result = digit4(a1, v5, v7, 1, 4);
      }

      else
      {
        result = sprintf_3fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_4fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_5f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFFD8F0)
    {
      if (a3 == 5)
      {
        v7[0] = 45;
        result = digit5(a1, v5, v7, 1, 5);
      }

      else
      {
        result = sprintf_4fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_5fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_6f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFE7960)
    {
      if (a3 == 6)
      {
        v7[0] = 45;
        result = digit6(a1, v5, v7, 1, 6);
      }

      else
      {
        result = sprintf_5fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_6fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_7f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFF0BDC0)
    {
      if (a3 == 7)
      {
        v7[0] = 45;
        result = digit7(a1, v5, v7, 1, 7);
      }

      else
      {
        result = sprintf_6fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_7fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_8f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFF676980)
    {
      if (a3 == 8)
      {
        v7[0] = 45;
        result = digit8(a1, v5, v7, 1, 8);
      }

      else
      {
        result = sprintf_7fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_8fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_9f(uint64_t a1, unsigned int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xFA0A1F00)
    {
      a2 = -a2;
      v3 = 1;
      goto LABEL_6;
    }

    if (a3 == 9)
    {
      v9[0] = 45;
      a2 = -a2;
      v5 = 1;
      goto LABEL_11;
    }

    a2 = -a2;
    v6 = 0;
    v7 = 1;
LABEL_14:
    result = sprintf_8fa(a1, a2, v9, v6, v7, a3);
    goto LABEL_15;
  }

  if (a2 < 0x5F5E100)
  {
    if (a3 == 9)
    {
      v5 = 0;
LABEL_11:
      result = digit9(a1, a2, v9, v5, 9);
      goto LABEL_15;
    }

    v9[0] = 32;
    v6 = 1;
    v7 = 0;
    goto LABEL_14;
  }

  v3 = 0;
LABEL_6:
  result = nzet(a1, a2, v9, 0, v3, a3);
LABEL_15:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_10f9(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xC4653600)
    {
      a2 = -a2;
      v2 = 1;
      goto LABEL_6;
    }

    v6[0] = 45;
    a2 = -a2;
    v4 = 1;
LABEL_9:
    result = digit10(a1, a2, v6, v4, 10);
    goto LABEL_10;
  }

  if (a2 < 0x3B9ACA00)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_6:
  result = nzet(a1, a2, v6, 0, v2, 10);
LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_1x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2];
    v3 = &v8;
    v8 = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nzxt(uint64_t result, unint64_t a2, _BYTE *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >> 28)
  {
    v3 = hexTABLE[a2 >> 28];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 24) & 0xF];
    a3[2] = hexTABLE[(a2 >> 20) & 0xF];
    a3[3] = hexTABLE[(a2 >> 16) & 0xF];
    a3[4] = hexTABLE[a2 >> 12];
    a3[5] = hexTABLE[(a2 >> 8) & 0xF];
    a3[6] = hexTABLE[a2 >> 4];
    a3[7] = hexTABLE[a2 & 0xF];
    v4 = 8;
  }

  else if (BYTE3(a2))
  {
    v3 = hexTABLE[a2 >> 24];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 20) & 0xF];
    a3[2] = hexTABLE[(a2 >> 16) & 0xF];
    a3[3] = hexTABLE[a2 >> 12];
    a3[4] = hexTABLE[(a2 >> 8) & 0xF];
    a3[5] = hexTABLE[a2 >> 4];
    a3[6] = hexTABLE[a2 & 0xF];
    v4 = 7;
  }

  else if (a2 >= 0x100000)
  {
    v3 = hexTABLE[a2 >> 20];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 16) & 0xF];
    a3[2] = hexTABLE[a2 >> 12];
    a3[3] = hexTABLE[(a2 >> 8) & 0xF];
    a3[4] = hexTABLE[a2 >> 4];
    a3[5] = hexTABLE[a2 & 0xF];
    v4 = 6;
  }

  else if (a2 >= 0x10000)
  {
    v3 = hexTABLE[a2 >> 16];
    *a3 = v3;
    a3[1] = hexTABLE[a2 >> 12];
    a3[2] = hexTABLE[(a2 >> 8) & 0xF];
    a3[3] = hexTABLE[a2 >> 4];
    a3[4] = hexTABLE[a2 & 0xF];
    v4 = 5;
  }

  else if (a2 >= 0x1000)
  {
    v3 = hexTABLE[a2 >> 12];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 8) & 0xF];
    a3[2] = hexTABLE[a2 >> 4];
    a3[3] = hexTABLE[a2 & 0xF];
    v4 = 4;
  }

  else if (a2 >= 0x100)
  {
    v3 = hexTABLE[a2 >> 8];
    *a3 = v3;
    a3[1] = hexTABLE[a2 >> 4];
    a3[2] = hexTABLE[a2 & 0xF];
    v4 = 3;
  }

  else if (a2 >= 0x10)
  {
    v3 = hexTABLE[a2 >> 4];
    *a3 = v3;
    a3[1] = hexTABLE[a2 & 0xF];
    v4 = 2;
  }

  else
  {
    v3 = hexTABLE[a2];
    *a3 = v3;
    v4 = 1;
  }

  a3[v4] = 0;
  if (v3)
  {
    v5 = *result;
    v6 = a3 + 1;
    do
    {
      *result = v5 + 1;
      *v5 = v3;
      v5 = *result;
      if (*result >= *(result + 24))
      {
        v5 = *(result + 16);
        *result = v5;
      }

      v7 = *v6++;
      LOBYTE(v3) = v7;
    }

    while (v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_2x(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x100)
  {
    result = nzxt(a1, a2, v4);
  }

  else
  {
    result = sprintf2a(a1, a2, v4, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf2a(uint64_t result, unsigned __int8 a2, _BYTE *a3, unsigned int a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((a2 & 0xF0) != 0)
  {
    v4 = hexTABLE[a2 >> 4];
  }

  else
  {
    v4 = 32;
  }

  a3[a4] = v4;
  v5 = a4 + 1;
  a3[v5] = hexTABLE[a2 & 0xF];
  a3[v5 + 1] = 0;
  v6 = *a3;
  if (*a3)
  {
    v7 = *result;
    v8 = a3 + 1;
    do
    {
      *result = v7 + 1;
      *v7 = v6;
      v7 = *result;
      if (*result >= *(result + 24))
      {
        v7 = *(result + 16);
        *result = v7;
      }

      v9 = *v8++;
      v6 = v9;
    }

    while (v9);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_02x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x100)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 4];
    v3 = v8;
    v8[0] = hexTABLE[a2 & 0xF];
    v8[1] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_03x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x1000)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 8];
    v3 = v8;
    v8[0] = hexTABLE[a2 >> 4];
    v8[1] = hexTABLE[a2 & 0xF];
    v8[2] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_04x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10000)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 12];
    v3 = v8;
    v8[0] = hexTABLE[(a2 >> 8) & 0xF];
    v8[1] = hexTABLE[a2 >> 4];
    v8[2] = hexTABLE[a2 & 0xF];
    v8[3] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_06x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BYTE3(a2))
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 20];
    v8[0] = hexTABLE[(a2 >> 16) & 0xF];
    v8[1] = hexTABLE[a2 >> 12];
    v3 = v8;
    v8[2] = hexTABLE[(a2 >> 8) & 0xF];
    v8[3] = hexTABLE[a2 >> 4];
    v8[4] = hexTABLE[a2 & 0xF];
    v8[5] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_08x(uint64_t result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  LOBYTE(v2) = hexTABLE[a2 >> 28];
  v8[1] = hexTABLE[(a2 >> 24) & 0xF];
  v8[2] = hexTABLE[(a2 >> 20) & 0xF];
  v3 = hexTABLE[a2 >> 12];
  v8[3] = hexTABLE[(a2 >> 16) & 0xF];
  v8[4] = v3;
  v8[5] = hexTABLE[(a2 >> 8) & 0xF];
  v4 = hexTABLE[a2 & 0xF];
  v8[6] = hexTABLE[a2 >> 4];
  v8[7] = v4;
  v8[8] = 0;
  v5 = *result;
  v6 = 1;
  do
  {
    *result = v5 + 1;
    *v5 = v2;
    v5 = *result;
    if (*result >= *(result + 24))
    {
      v5 = *(result + 16);
      *result = v5;
    }

    v2 = v8[v6++];
  }

  while (v2);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t digit9(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 800000000;
  if (a2 > 0x2FAF07FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x17D783FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 400000000;
  }

  v8 = v5 - 200000000;
  if (v5 > 0xBEBC1FF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x5F5E0FF)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 9)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x5F5E0FF)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 100000000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit8(a1, v12, a3, v11, a5);
}

uint64_t digit8(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 80000000;
  if (a2 > 0x4C4B3FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x26259FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 40000000;
  }

  v8 = v5 - 20000000;
  if (v5 > 0x1312CFF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x98967F)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 8)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x98967F)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 10000000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit7(a1, v12, a3, v11, a5);
}

uint64_t digit7(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 8000000;
  if (a2 > 0x7A11FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x3D08FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 4000000;
  }

  v8 = v5 - 2000000;
  if (v5 > 0x1E847F)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0xF423F)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 7)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0xF423F)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 1000000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit6(a1, v12, a3, v11, a5);
}

uint64_t digit6(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a2 - 800000;
  if (a2 >> 8 > 0xC34)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  v8 = v5 >> 7;
  if (v5 >> 7 > 0xC34)
  {
    v5 -= 400000;
  }

  if (v8 <= 0xC34)
  {
    v7 = v6;
  }

  v9 = v5 - 200000;
  if (v5 >> 6 > 0xC34)
  {
    v10 = v7 | 2;
  }

  else
  {
    v9 = v5;
    v10 = v7;
  }

  if (v9 >> 5 <= 0xC34)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = a4 + 1;
  a3[a4] = v11;
  if (a5 == 6)
  {
    a3[(a4 + 1)] = 46;
    v12 = a4 + 2;
  }

  if (v9 >> 5 <= 0xC34)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 - 100000;
  }

  v14 = *MEMORY[0x29EDCA608];

  return digit5(a1, v13, a3, v12, a5);
}

uint64_t digit5(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a2 - 80000;
  if (a2 >> 7 > 0x270)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  v8 = v5 >> 6;
  if (v5 >> 6 > 0x270)
  {
    v5 -= 40000;
  }

  if (v8 <= 0x270)
  {
    v7 = v6;
  }

  v9 = v5 - 20000;
  if (v5 >> 5 > 0x270)
  {
    v10 = v7 | 2;
  }

  else
  {
    v9 = v5;
    v10 = v7;
  }

  if (v9 >> 4 <= 0x270)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = a4 + 1;
  a3[a4] = v11;
  if (a5 == 5)
  {
    a3[(a4 + 1)] = 46;
    v12 = a4 + 2;
  }

  if (v9 >> 4 <= 0x270)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 - 10000;
  }

  v14 = *MEMORY[0x29EDCA608];

  return digit4(a1, v13, a3, v12, a5);
}

uint64_t digit4(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 8000;
  if (a2 >> 6 > 0x7C)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0xF9F)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 4000;
  }

  v8 = v5 - 2000;
  if (v5 > 0x7CF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x3E7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 4)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x3E7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 1000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit3(a1, v12, a3, v11, a5);
}

uint64_t digit3(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 800;
  if (a2 > 0x31F)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x18F)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 400;
  }

  v8 = v5 - 200;
  if (v5 > 0xC7)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x63)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 3)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x63)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 100;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit2(a1, v12, a3, v11, a5);
}

uint64_t digit2(uint64_t result, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a2 - 80;
  if (a2 > 0x4F)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  if (v5 > 0x27)
  {
    v5 -= 40;
    v6 |= 4u;
  }

  v7 = v6 | 2;
  if (v5 <= 0x13)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 20;
  }

  v8 = v5 - 10;
  if (v5 > 9)
  {
    v9 = v7 + 1;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  a3[a4] = v9;
  if (a5 == 2)
  {
    v10 = a4 + 2;
    a3[(a4 + 1)] = 46;
    v11 = v8 + 48;
  }

  else
  {
    v10 = a4 + 2;
    a3[(a4 + 1)] = v8 + 48;
    if (a5 != 1)
    {
      goto LABEL_17;
    }

    v11 = 46;
  }

  a3[v10] = v11;
  v10 = a4 + 3;
LABEL_17:
  a3[v10] = 0;
  v12 = *a3;
  if (*a3)
  {
    v13 = *result;
    v14 = a3 + 1;
    do
    {
      *result = v13 + 1;
      *v13 = v12;
      v13 = *result;
      if (*result >= *(result + 24))
      {
        v13 = *(result + 16);
        *result = v13;
      }

      v15 = *v14++;
      v12 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nzet(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5, int a6)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    if (a2 < 0x5F5E100)
    {
      if (a2 < 0x989680)
      {
        if (a2 < 0xF4240)
        {
          if (a2 >> 5 < 0xC35)
          {
            if (a2 >> 4 < 0x271)
            {
              if (a2 < 0x3E8)
              {
                if (a2 < 0x64)
                {
                  if (a5)
                  {
                    a3[a4] = 45;
                    LOBYTE(a4) = a4 + 1;
                  }

                  v15 = *MEMORY[0x29EDCA608];

                  return digit2(a1, a2, a3, a4, a6);
                }

                else
                {
                  if (a5)
                  {
                    a3[a4] = 45;
                    LOBYTE(a4) = a4 + 1;
                  }

                  v14 = *MEMORY[0x29EDCA608];

                  return digit3(a1, a2, a3, a4, a6);
                }
              }

              else
              {
                if (a5)
                {
                  a3[a4] = 45;
                  LOBYTE(a4) = a4 + 1;
                }

                v13 = *MEMORY[0x29EDCA608];

                return digit4(a1, a2, a3, a4, a6);
              }
            }

            else
            {
              if (a5)
              {
                a3[a4] = 45;
                LOBYTE(a4) = a4 + 1;
              }

              v12 = *MEMORY[0x29EDCA608];

              return digit5(a1, a2, a3, a4, a6);
            }
          }

          else
          {
            if (a5)
            {
              a3[a4] = 45;
              LOBYTE(a4) = a4 + 1;
            }

            v11 = *MEMORY[0x29EDCA608];

            return digit6(a1, a2, a3, a4, a6);
          }
        }

        else
        {
          if (a5)
          {
            a3[a4] = 45;
            LOBYTE(a4) = a4 + 1;
          }

          v10 = *MEMORY[0x29EDCA608];

          return digit7(a1, a2, a3, a4, a6);
        }
      }

      else
      {
        if (a5)
        {
          a3[a4] = 45;
          LOBYTE(a4) = a4 + 1;
        }

        v9 = *MEMORY[0x29EDCA608];

        return digit8(a1, a2, a3, a4, a6);
      }
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit9(a1, a2, a3, a4, a6);
    }
  }

  else
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    v6 = *MEMORY[0x29EDCA608];

    return digit10(a1, a2, a3, a4, a6);
  }
}

uint64_t sprintf_2fa(uint64_t a1, signed int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 < 10)
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    v8 = *MEMORY[0x29EDCA608];

    return digit2(a1, a2, a3, a4, 2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 2);
  }
}

uint64_t sprintf_3fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 100)
  {
    if (a6 == 3)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit3(a1, a2, a3, a4, 3);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_2fa(a1, a2, a3, v10, a5);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_4fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 1000)
  {
    if (a6 == 4)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit4(a1, a2, a3, a4, 4);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_3fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_5fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 10000)
  {
    if (a6 == 5)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit5(a1, a2, a3, a4, 5);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_4fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_6fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 100000)
  {
    if (a6 == 6)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit6(a1, a2, a3, a4, 6);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_5fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_7fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 1000000)
  {
    if (a6 == 7)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit7(a1, a2, a3, a4, 7);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_6fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_8fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 10000000)
  {
    if (a6 == 8)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit8(a1, a2, a3, a4, 8);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_7fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t GncS00_04HandleInitInd()
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncS00_04HandleInitInd");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__str = 0u;
  v6 = 0u;
  do
  {
    v2 = &__str[v1];
    v2[28] = 0;
    *(v2 + 15) = 0;
    v2[32] = 0;
    *(v2 + 36) = 0;
    *(v2 + 52) = 0;
    *(v2 + 44) = 0;
    *(v2 + 58) = 0;
    *(v2 + 68) = 0;
    v1 += 52;
    *(v2 + 75) = 0;
  }

  while (v1 != 104);
  xmmword_2A13EE4E8 = v11;
  unk_2A13EE4F8 = v12;
  dword_2A13EE508 = v13;
  xmmword_2A13EE4A8 = v7;
  unk_2A13EE4B8 = v8;
  xmmword_2A13EE4C8 = v9;
  *&byte_2A13EE4D8 = v10;
  g_GncSFGClientData = *__str;
  *&byte_2A13EE498 = v6;
  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS00_06HandleDeInitInd()
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_DEINIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncS00_06HandleDeInitInd");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  GncS04_99DeInitFGClientInstance();
  v1 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS00_03DefaultMessage(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FSM:MID,%x,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncS00_03DefaultMessage", 520, *(a1 + 1), *a1, a1[1]);
      v3 = 2;
LABEL_6:
      gnssOsa_PrintLog(__str, v3, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncS00_03DefaultMessage", 517);
    v3 = 1;
    goto LABEL_6;
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncS00_01Init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncS00_01Init", 76, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_INIT_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_01Init");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 130, 8521731, v1);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void GncS00_02DeInit(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncS00_02DeInit", 97, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_DEINIT_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_02DeInit");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 130, 8521987, v1);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void GncS00_07DestMissingHandler(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_07DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 4);
  if (v3 == 8520195)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 24) = 0;
  }

  else if (v3 == 8521475)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS00_07DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t Decode_BDS_B1C_BGTO(unsigned __int8 *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  *(a2 + 4) = 4;
  v2 = a1[20];
  v3 = a1[21];
  v4 = a1[23];
  v5 = a1[25];
  v6 = (v4 << 16) | (a1[24] << 8) | v5;
  v7 = a1[27];
  v8 = (v5 << 30 >> 31) & 0xFFFFE000 | (((v5 << 16) | (a1[26] << 8) | v7) >> 5) & 0x1FFF;
  v9 = (8 * v7) & 0xFFFFFF80 | ((a1[28] | (v7 << 8)) >> 6) & 0x7F;
  v10 = (v3 << 16) | (a1[22] << 8) | v4;
  LOWORD(v4) = ((v3 | (v2 << 8)) >> 2) & 0x1FFF;
  v11 = a1[19];
  *(a2 + 8) = v4;
  *(a2 + 12) = (v10 >> 2);
  *(a2 + 16) = (v6 >> 2);
  *(a2 + 20) = v8;
  *(a2 + 22) = v9;
  v12 = *MEMORY[0x29EDCA608];
  return ((v2 | (v11 << 8)) >> 7) & 7;
}

_BYTE *NV_Ram_Init(_BYTE *result)
{
  v1 = result;
  v4 = *MEMORY[0x29EDCA608];
  p_NV = result;
  if (*(result + 1) != 33424 || *(result + 8354) != 22)
  {
    NV_Ram_Invalidate();
    result = EvCrt_nd("NV_Ram_Init: Invalid NV", 4, v2, *(v1 + 1), 33424, *(v1 + 8354), 22);
    v1 = p_NV;
  }

  *(v1 + 1) = 33424;
  *(v1 + 8354) = 22;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void NV_Ram_Invalidate(void)
{
  v0 = 0;
  v23 = *MEMORY[0x29EDCA608];
  v1 = p_NV;
  v2 = (p_NV + 0x8000);
  *(p_NV + 8) = 0xFFFFFFFFLL;
  v1[5] = 0xFFFFFFFFLL;
  v1[8] = 0xFFFFFFFFLL;
  v2[53] = 0xFFFFFFFFLL;
  v1[17] = 0xFFFFFFFFLL;
  v1[20] = 0xFFFFFFFFLL;
  v1[3650] = 0xFFFFFFFFLL;
  v1[11] = 0xFFFFFFFFLL;
  v1[3645] = 0xFFFFFFFFLL;
  v1[993] = 0xFFFFFFFFLL;
  v1[1650] = 0xFFFFFFFFLL;
  v1[760] = 0xFFFFFFFFLL;
  v1[3371] = 0xFFFFFFFFLL;
  do
  {
    v1[v0 + 248] = 0xFFFFFFFFLL;
    v0 += 16;
  }

  while (v0 != 512);
  for (i = 0; i != 160; i += 16)
  {
    v1[i + 833] = 0xFFFFFFFFLL;
  }

  for (j = 0; j != 216; j += 9)
  {
    v1[j + 3799] = 0xFFFFFFFFLL;
  }

  for (k = 0; k != 432; k += 12)
  {
    v1[k + 1218] = 0xFFFFFFFFLL;
  }

  v6 = v1 + 2131;
  v7 = xmmword_299050240;
  v8 = 64;
  v9 = vdupq_n_s64(0x3FuLL);
  v10 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v9, v7)).u8[0])
    {
      *(v6 - 20) = 0xFFFFFFFFLL;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FuLL), *&v7)).i32[1])
    {
      *v6 = 0xFFFFFFFFLL;
    }

    v7 = vaddq_s64(v7, v10);
    v6 += 40;
    v8 -= 2;
  }

  while (v8);
  for (m = 0; m != 154; m += 11)
  {
    v1[m + 3491] = 0xFFFFFFFFLL;
  }

  for (n = 24; n != 248; n += 7)
  {
    v1[n] = 0xFFFFFFFFLL;
  }

  for (ii = 0; ii != 70; ii += 7)
  {
    v1[ii + 763] = 0xFFFFFFFFLL;
  }

  for (jj = 0; jj != 144; jj += 6)
  {
    v1[jj + 3655] = 0xFFFFFFFFLL;
  }

  for (kk = 0; kk != 216; kk += 6)
  {
    v1[kk + 1002] = 0xFFFFFFFFLL;
  }

  v16 = v1 + 1677;
  v17 = xmmword_299050240;
  v18 = 64;
  v19 = vdupq_n_s64(0x3FuLL);
  v20 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v19, v17)).u8[0])
    {
      *(v16 - 7) = 0xFFFFFFFFLL;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FuLL), *&v17)).i32[1])
    {
      *v16 = 0xFFFFFFFFLL;
    }

    v17 = vaddq_s64(v17, v20);
    v16 += 14;
    v18 -= 2;
  }

  while (v18);
  do
  {
    *(v1 + v18 + 27032) = 0xFFFFFFFFLL;
    v18 += 64;
  }

  while (v18 != 896);
  for (mm = 0; mm != 72; mm += 4)
  {
    v1[mm + 4015] = 0xFFFFFFFFLL;
  }

  v1[3650] = 0xFFFFFFFFLL;
  v1[999] = 0xFFFFFFFFLL;
  v1[1660] = 0xFFFFFFFFLL;
  v1[1665] = 0xFFFFFFFFLL;
  v1[3375] = 0xFFFFFFFFLL;
  v2[56] = 0xFFFFFFFFLL;
  v2[65] = 0xFFFFFFFFLL;
  v2[73] = 0xFFFFFFFFLL;
  v22 = *MEMORY[0x29EDCA608];
}

BOOL Core_Load_BDS_BGTO(_OWORD *a1, _OWORD *a2)
{
  v3 = 0;
  v4 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v5 = p_NV;
  v6 = 55665;
  do
  {
    v7 = *(p_NV + 13288 + v3) ^ BYTE1(v6);
    v6 = 52845 * (v6 + v7) + 22719;
    v4 += v7;
    ++v3;
  }

  while (v3 != 32);
  v8 = *(p_NV + 13280);
  result = v8 == v4;
  if (v8 == v4)
  {
    v10 = *(p_NV + 13288);
    *(a1 + 12) = *(p_NV + 13300);
    *a1 = v10;
  }

  v11 = 0;
  v12 = 0;
  v13 = 55665;
  do
  {
    v14 = *(v5 + 13328 + v11) ^ BYTE1(v13);
    v13 = 52845 * (v13 + v14) + 22719;
    v12 += v14;
    ++v11;
  }

  while (v11 != 32);
  if (*(v5 + 13320) == v12)
  {
    v15 = *(v5 + 13328);
    *(a2 + 12) = *(v5 + 13340);
    *a2 = v15;
    result = 1;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GPS_Eph(int a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = (a1 - 1);
  if (v2 > 0x1F)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  v5 = p_NV + (v2 << 7);
  v6 = v5 + 1984;
  v7 = v5 + 1992;
  v8 = 55665;
  do
  {
    v9 = *(v7 + v3) ^ BYTE1(v8);
    v8 = 52845 * (v8 + v9) + 22719;
    v4 += v9;
    ++v3;
  }

  while (v3 != 120);
  if (*v6 == v4)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 24);
    v12 = *(v6 + 56);
    *(a2 + 32) = *(v6 + 40);
    *(a2 + 48) = v12;
    *a2 = v10;
    *(a2 + 16) = v11;
    v13 = *(v6 + 72);
    v14 = *(v6 + 88);
    v15 = *(v6 + 104);
    *(a2 + 112) = *(v6 + 120);
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    *(a2 + 64) = v13;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_QZSS_Eph(int a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = (a1 - 193);
  if (v2 > 9)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  v5 = p_NV + (v2 << 7);
  v6 = v5 + 6664;
  v7 = v5 + 6672;
  v8 = 55665;
  do
  {
    v9 = *(v7 + v3) ^ BYTE1(v8);
    v8 = 52845 * (v8 + v9) + 22719;
    v4 += v9;
    ++v3;
  }

  while (v3 != 120);
  if (*v6 == v4)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 24);
    v12 = *(v6 + 56);
    *(a2 + 32) = *(v6 + 40);
    *(a2 + 48) = v12;
    *a2 = v10;
    *(a2 + 16) = v11;
    v13 = *(v6 + 72);
    v14 = *(v6 + 88);
    v15 = *(v6 + 104);
    *(a2 + 112) = *(v6 + 120);
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    *(a2 + 64) = v13;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GLON_Eph(int a1, _OWORD *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x17)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 72 * (a1 - 1);
  v5 = v4 + 30392;
  v6 = v4 + 30400;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 64);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    v11 = *(v5 + 56);
    a2[2] = *(v5 + 40);
    a2[3] = v11;
    *a2 = v9;
    a2[1] = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GAL_Eph(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x23)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 96 * (a1 - 1);
  v5 = v4 + 9744;
  v6 = v4 + 9752;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 88);
  if (*v5 == v3)
  {
    v9 = *(v5 + 24);
    *a2 = *(v5 + 8);
    *(a2 + 16) = v9;
    v10 = *(v5 + 40);
    v11 = *(v5 + 56);
    v12 = *(v5 + 72);
    *(a2 + 80) = *(v5 + 88);
    *(a2 + 48) = v11;
    *(a2 + 64) = v12;
    *(a2 + 32) = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_BDS_Eph(int a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x3E)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 160 * (a1 - 1);
  v5 = v4 + 16888;
  v6 = v4 + 16896;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 152);
  if (*v5 == v3)
  {
    v9 = *(v5 + 24);
    *a2 = *(v5 + 8);
    *(a2 + 16) = v9;
    v10 = *(v5 + 40);
    v11 = *(v5 + 56);
    v12 = *(v5 + 88);
    *(a2 + 64) = *(v5 + 72);
    *(a2 + 80) = v12;
    *(a2 + 32) = v10;
    *(a2 + 48) = v11;
    v13 = *(v5 + 104);
    v14 = *(v5 + 120);
    v15 = *(v5 + 136);
    *(a2 + 144) = *(v5 + 152);
    *(a2 + 112) = v14;
    *(a2 + 128) = v15;
    *(a2 + 96) = v13;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_NVIC_Eph(int a1, _OWORD *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0xD)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 88 * (a1 - 1);
  v5 = v4 + 27928;
  v6 = v4 + 27936;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 80);
  if (*v5 == v3)
  {
    *a2 = *(v5 + 8);
    v9 = *(v5 + 24);
    v10 = *(v5 + 40);
    v11 = *(v5 + 56);
    *(a2 + 60) = *(v5 + 68);
    a2[2] = v10;
    a2[3] = v11;
    a2[1] = v9;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GPS_Alm(int a1, _OWORD *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x1F)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 1);
  v5 = 55665;
  do
  {
    v6 = *(v4 + 200 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 48);
  if (*(v4 + 192) == v3)
  {
    v7 = *(v4 + 200);
    v8 = *(v4 + 216);
    *(a2 + 28) = *(v4 + 228);
    *a2 = v7;
    a2[1] = v8;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_QZSS_Alm(int a1, _OWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 193) > 9)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 193);
  v5 = v4 + 6104;
  v6 = v4 + 6112;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 48);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 28) = *(v5 + 36);
    *a2 = v9;
    a2[1] = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GLON_Alm(int a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x17)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 48 * (a1 - 1);
  v5 = v4 + 29240;
  v6 = v4 + 29248;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 40);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 32) = *(v5 + 40);
    *a2 = v9;
    *(a2 + 16) = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GAL_Alm(int a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x23)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 48 * (a1 - 1);
  v5 = v4 + 8016;
  v6 = v4 + 8024;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 40);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 32) = *(v5 + 40);
    *a2 = v9;
    *(a2 + 16) = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_BDS_Alm(int a1, _OWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x3E)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 1);
  v5 = v4 + 13360;
  v6 = v4 + 13368;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 48);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 28) = *(v5 + 36);
    *a2 = v9;
    a2[1] = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_NVIC_Alm(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = (a1 - 1);
  if (v2 > 0xD)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  v5 = p_NV + (v2 << 6);
  v6 = v5 + 27032;
  v7 = v5 + 27040;
  v8 = 55665;
  do
  {
    v9 = *(v7 + v3) ^ BYTE1(v8);
    v8 = 52845 * (v8 + v9) + 22719;
    v4 += v9;
    ++v3;
  }

  while (v3 != 56);
  if (*v6 == v4)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 24);
    v12 = *(v6 + 40);
    *(a2 + 48) = *(v6 + 56);
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    *a2 = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_Clk_Drift(int *a1, double *a2)
{
  v2 = 0;
  v3 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v4 = p_NV;
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 48 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 16);
  if (*(p_NV + 40) == v3 && ((v7 = *(p_NV + 48), (*a1 = v7) == 0) || (v7 - 619315200) <= 0x49D3FFFF))
  {
    *a2 = *(v4 + 56);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_Clk_L5L1(int *a1, double *a2)
{
  v2 = 0;
  v3 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v4 = p_NV;
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 72 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 16);
  if (*(p_NV + 64) == v3 && ((v7 = *(p_NV + 72), (*a1 = v7) == 0) || (v7 - 619315200) <= 0x49D3FFFF))
  {
    v9 = *(v4 + 80);
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a1 = 0;
    v9 = 0;
  }

  *a2 = v9;
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t Core_Load_ApxTime(uint64_t a1, _WORD *a2, void *a3, _DWORD *a4)
{
  v7 = 0;
  v8 = 0;
  v21[3] = *MEMORY[0x29EDCA608];
  v20 = 0.0;
  v9 = p_NV;
  v10 = 55665;
  do
  {
    v11 = *(p_NV + 16 + v7) ^ BYTE1(v10);
    v10 = 52845 * (v10 + v11) + 22719;
    v8 += v11;
    ++v7;
  }

  while (v7 != 24);
  if (*(p_NV + 8) != v8)
  {
    API_Get_UTC_Cor(1, &v20);
    *(v9 + 8) = 0xFFFFFFFFLL;
    *(v9 + 24) = 0;
    *(v9 + 28) = 0;
    v12 = -0.5;
    if (v20 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v20 + v12;
    if (v20 + v12 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v14 = v13;
      }

      else
      {
        LOWORD(v14) = 0;
      }
    }

    else
    {
      LOWORD(v14) = -1;
    }

    *(v9 + 30) = v14;
    *(v9 + 16) = *"";
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  EvLog("GN_GPS_Read_UTC:  Failed");
  API_Get_UTC_Cor(1, &v20);
  *(v9 + 8) = 0xFFFFFFFFLL;
  *(v9 + 24) = 0;
  *(v9 + 28) = 0;
  *(v9 + 16) = *"";
  v15 = -0.5;
  if (v20 > 0.0)
  {
    v15 = 0.5;
  }

  v16 = v20 + v15;
  if (v20 + v15 <= 2147483650.0)
  {
    if (v16 >= -2147483650.0)
    {
      v17 = v16;
    }

    else
    {
      LOWORD(v17) = 0;
    }
  }

  else
  {
    LOWORD(v17) = -1;
  }

  *(v9 + 30) = v17;
  memset(v21, 0, 24);
  Debug_Log_ApxTime(v21);
  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Core_Save_Clk_Drift(int a1, int a2, double a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  if (a1 && (!a2 || (a2 - 619315200) <= 0x49D3FFFF))
  {
    v5 = 0;
    LODWORD(v6) = 0;
    *(p_NV + 48) = a2;
    *(v3 + 56) = a3;
    v7 = 55665;
    do
    {
      v8 = *(v3 + 48 + v5) ^ BYTE1(v7);
      v7 = 52845 * (v7 + v8) + 22719;
      v6 = (v6 + v8);
      ++v5;
    }

    while (v5 != 16);
    *(v3 + 40) = v6;
    result = 1;
  }

  else
  {
    result = 0;
    *(p_NV + 40) = 0xFFFFFFFFLL;
    *(v3 + 56) = 0;
    *(v3 + 48) = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Save_Clk_L5L1(int a1, int a2, double a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  if (a1 && (!a2 || (a2 - 619315200) <= 0x49D3FFFF))
  {
    v5 = 0;
    LODWORD(v6) = 0;
    *(p_NV + 72) = a2;
    *(v3 + 80) = a3;
    v7 = 55665;
    do
    {
      v8 = *(v3 + 72 + v5) ^ BYTE1(v7);
      v7 = 52845 * (v7 + v8) + 22719;
      v6 = (v6 + v8);
      ++v5;
    }

    while (v5 != 16);
    *(v3 + 64) = v6;
    result = 1;
  }

  else
  {
    result = 0;
    *(p_NV + 64) = 0xFFFFFFFFLL;
    *(v3 + 80) = 0;
    *(v3 + 72) = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Save_ApxTime(unsigned int a1, int a2, __int16 a3, int a4, double a5)
{
  v40[1] = *MEMORY[0x29EDCA608];
  v40[0] = 0.0;
  v5 = p_NV;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != 1)
  {
    v18 = 0xFFFFFFFFLL;
LABEL_39:
    *(v5 + 8) = v18;
    goto LABEL_40;
  }

  API_Get_UTC_Cor(1, v40);
  v11 = 0;
  v12 = 0;
  v13 = 55665;
  do
  {
    v14 = *(v5 + 16 + v11) ^ BYTE1(v13);
    v13 = 52845 * (v13 + v14) + 22719;
    v12 += v14;
    ++v11;
  }

  while (v11 != 24);
  if (*(v5 + 8) != v12)
  {
    *(v5 + 8) = 0xFFFFFFFFLL;
    *(v5 + 24) = 0;
    *(v5 + 28) = 0;
    v15 = -0.5;
    if (v40[0] > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v40[0] + v15;
    if (v40[0] + v15 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        LOWORD(v17) = 0;
      }
    }

    else
    {
      LOWORD(v17) = -1;
    }

    *(v5 + 30) = v17;
    *(v5 + 16) = *"";
  }

  if (a4)
  {
    v19 = *(v5 + 20);
    if (v19)
    {
      *(v5 + 16) += (a4 - v19) / 50000;
    }
  }

  v20 = TOW_stat_ms[a2];
  if (v20 <= *(v5 + 16))
  {
    GPS_To_UTC_Time(&v33, &v34, &v35, &v36, &v37, &v38, v39, a3, a5, v40[0]);
    v21 = 0;
    LODWORD(v18) = 0;
    v22 = -0.5;
    if (a5 * 1000.0 <= 0.0)
    {
      v23 = -0.5;
    }

    else
    {
      v23 = 0.5;
    }

    v24 = a5 * 1000.0 + v23;
    if (v24 >= -2147483650.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v24 > 2147483650.0)
    {
      v25 = 0x7FFFFFFF;
    }

    *(v5 + 24) = v25;
    *(v5 + 28) = a3;
    if (v40[0] > 0.0)
    {
      v22 = 0.5;
    }

    v26 = v40[0] + v22;
    *(v5 + 16) = v20;
    v27 = v26;
    if (v26 < -2147483650.0)
    {
      LOWORD(v27) = 0;
    }

    if (v26 <= 2147483650.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = -1;
    }

    *(v5 + 30) = v28;
    *(v5 + 20) = a4;
    v29 = 55665;
    do
    {
      v30 = *(v5 + 16 + v21) ^ BYTE1(v29);
      v29 = 52845 * (v29 + v30) + 22719;
      v18 = (v18 + v30);
      ++v21;
    }

    while (v21 != 24);
    goto LABEL_39;
  }

  v6 = 0;
LABEL_40:
  v31 = *MEMORY[0x29EDCA608];
  return v6;
}

BOOL Core_Save_GPS_Eph(int a1, char a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = (a1 - 1);
  if (v3 <= 0x1F)
  {
    v4 = p_NV + (v3 << 7);
    v5 = (v4 + 1984);
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v4 + 1992) = 0u;
      *(v4 + 2008) = 0u;
      *(v4 + 2024) = 0u;
      *(v4 + 2040) = 0u;
      *(v4 + 2056) = 0u;
      *(v4 + 2072) = 0u;
      *(v4 + 2088) = 0u;
      *(v4 + 2103) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      *(v4 + 2040) = a3[3];
      *(v4 + 2024) = v10;
      *(v4 + 2008) = v9;
      *(v4 + 1992) = v8;
      v11 = a3[4];
      v12 = a3[5];
      v13 = a3[6];
      *(v4 + 2104) = *(a3 + 28);
      *(v4 + 2088) = v13;
      *(v4 + 2072) = v12;
      *(v4 + 2056) = v11;
      v14 = v4 + 1992;
      v15 = 55665;
      do
      {
        v16 = *(v14 + v6) ^ BYTE1(v15);
        v15 = 52845 * (v15 + v16) + 22719;
        v7 = (v7 + v16);
        ++v6;
      }

      while (v6 != 120);
      *v5 = v7;
    }
  }

  result = v3 < 0x20;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_QZSS_Eph(int a1, char a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = (a1 - 193);
  if (v3 <= 9)
  {
    v4 = p_NV + (v3 << 7);
    v5 = (v4 + 6664);
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v4 + 6672) = 0u;
      *(v4 + 6688) = 0u;
      *(v4 + 6704) = 0u;
      *(v4 + 6720) = 0u;
      *(v4 + 6736) = 0u;
      *(v4 + 6752) = 0u;
      *(v4 + 6768) = 0u;
      *(v4 + 6783) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      *(v4 + 6720) = a3[3];
      *(v4 + 6704) = v10;
      *(v4 + 6688) = v9;
      *(v4 + 6672) = v8;
      v11 = a3[4];
      v12 = a3[5];
      v13 = a3[6];
      *(v4 + 6784) = *(a3 + 28);
      *(v4 + 6768) = v13;
      *(v4 + 6752) = v12;
      *(v4 + 6736) = v11;
      v14 = v4 + 6672;
      v15 = 55665;
      do
      {
        v16 = *(v14 + v6) ^ BYTE1(v15);
        v15 = 52845 * (v15 + v16) + 22719;
        v7 = (v7 + v16);
        ++v6;
      }

      while (v6 != 120);
      *v5 = v7;
    }
  }

  result = v3 < 0xA;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_GAL_Eph(int a1, char a2, __int128 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x23)
  {
    v4 = p_NV;
    v5 = p_NV + 96 * v3 + 9744;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0u;
      *(v5 + 56) = 0u;
      *(v5 + 72) = 0u;
      *(v5 + 88) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      *(p_NV + 96 * v3 + 9768) = a3[1];
      *(v5 + 8) = v8;
      v9 = a3[2];
      v10 = a3[3];
      v11 = a3[4];
      *(v5 + 88) = *(a3 + 10);
      *(v5 + 72) = v11;
      *(v5 + 56) = v10;
      *(v5 + 40) = v9;
      v12 = v4 + 96 * v3 + 9752;
      v13 = 55665;
      do
      {
        v14 = *(v12 + v6) ^ BYTE1(v13);
        v13 = 52845 * (v13 + v14) + 22719;
        v7 = (v7 + v14);
        ++v6;
      }

      while (v6 != 88);
      *v5 = v7;
    }
  }

  result = v3 < 0x24;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_BDS_Eph(int a1, char a2, __int128 *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x3E)
  {
    v4 = p_NV;
    v5 = p_NV + 160 * v3 + 16888;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0u;
      *(v5 + 56) = 0u;
      *(v5 + 72) = 0u;
      *(v5 + 88) = 0u;
      *(v5 + 104) = 0u;
      *(v5 + 120) = 0u;
      *(v5 + 136) = 0u;
      *(v5 + 152) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      *(p_NV + 160 * v3 + 16912) = a3[1];
      *(v5 + 8) = v8;
      v9 = a3[2];
      v10 = a3[3];
      v11 = a3[4];
      *(v5 + 88) = a3[5];
      *(v5 + 72) = v11;
      *(v5 + 56) = v10;
      *(v5 + 40) = v9;
      v12 = a3[6];
      v13 = a3[7];
      v14 = a3[8];
      *(v5 + 152) = *(a3 + 18);
      *(v5 + 136) = v14;
      *(v5 + 120) = v13;
      *(v5 + 104) = v12;
      v15 = v4 + 160 * v3 + 16896;
      v16 = 55665;
      do
      {
        v17 = *(v15 + v6) ^ BYTE1(v16);
        v16 = 52845 * (v16 + v17) + 22719;
        v7 = (v7 + v17);
        ++v6;
      }

      while (v6 != 152);
      *v5 = v7;
    }
  }

  result = v3 < 0x3F;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_NVIC_Eph(int a1, char a2, _OWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0xD)
  {
    v4 = p_NV;
    v5 = p_NV + 88 * v3 + 27928;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0u;
      *(v5 + 56) = 0u;
      *(v5 + 68) = 0u;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      *(p_NV + 88 * v3 + 27936) = *a3;
      v8 = a3[1];
      v9 = a3[2];
      v10 = a3[3];
      *(v5 + 68) = *(a3 + 60);
      *(v5 + 56) = v10;
      *(v5 + 40) = v9;
      *(v5 + 24) = v8;
      v11 = v4 + 88 * v3 + 27936;
      v12 = 55665;
      do
      {
        v13 = *(v11 + v6) ^ BYTE1(v12);
        v12 = 52845 * (v12 + v13) + 22719;
        v7 = (v7 + v13);
        ++v6;
      }

      while (v6 != 80);
      *v5 = v7;
    }
  }

  result = v3 < 0xE;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_GLON_Eph(int a1, char a2, __int128 *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x17)
  {
    v4 = p_NV;
    v5 = p_NV + 72 * v3 + 30392;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0u;
      *(v5 + 54) = 0u;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      *(p_NV + 72 * v3 + 30448) = a3[3];
      *(v5 + 40) = v10;
      *(v5 + 24) = v9;
      *(v5 + 8) = v8;
      v11 = v4 + 72 * v3 + 30400;
      v12 = 55665;
      do
      {
        v13 = *(v11 + v6) ^ BYTE1(v12);
        v12 = 52845 * (v12 + v13) + 22719;
        v7 = (v7 + v13);
        ++v6;
      }

      while (v6 != 64);
      *v5 = v7;
    }
  }

  result = v3 < 0x18;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_GPS_Alm(int a1, char a2, __int128 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x1F)
  {
    v4 = p_NV;
    v5 = p_NV + 56 * v3;
    if (a2)
    {
      *(v5 + 192) = 0xFFFFFFFFLL;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 228) = 0u;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      *(v5 + 228) = *(a3 + 28);
      *(v5 + 216) = v9;
      *(v5 + 200) = v8;
      v10 = v4 + 56 * v3 + 200;
      v11 = 55665;
      do
      {
        v12 = *(v10 + v6) ^ BYTE1(v11);
        v11 = 52845 * (v11 + v12) + 22719;
        v7 = (v7 + v12);
        ++v6;
      }

      while (v6 != 48);
      *(v5 + 192) = v7;
    }
  }

  result = v3 < 0x20;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_QZSS_Alm(int a1, char a2, __int128 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1 - 193;
  if ((a1 - 193) <= 9)
  {
    v4 = p_NV;
    v5 = p_NV + 56 * v3 + 6104;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 36) = 0u;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      *(p_NV + 56 * v3 + 6140) = *(a3 + 28);
      *(v5 + 24) = v9;
      *(v5 + 8) = v8;
      v10 = v4 + 56 * v3 + 6112;
      v11 = 55665;
      do
      {
        v12 = *(v10 + v6) ^ BYTE1(v11);
        v11 = 52845 * (v11 + v12) + 22719;
        v7 = (v7 + v12);
        ++v6;
      }

      while (v6 != 48);
      *v5 = v7;
    }
  }

  result = v3 < 0xA;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_GLON_Alm(int a1, char a2, __int128 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x17)
  {
    v4 = p_NV;
    v5 = p_NV + 48 * v3 + 29240;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      *(p_NV + 48 * v3 + 29280) = *(a3 + 8);
      *(v5 + 24) = v9;
      *(v5 + 8) = v8;
      v10 = v4 + 48 * v3 + 29248;
      v11 = 55665;
      do
      {
        v12 = *(v10 + v6) ^ BYTE1(v11);
        v11 = 52845 * (v11 + v12) + 22719;
        v7 = (v7 + v12);
        ++v6;
      }

      while (v6 != 40);
      *v5 = v7;
    }
  }

  result = v3 < 0x18;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_GAL_Alm(int a1, char a2, __int128 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x23)
  {
    v4 = p_NV;
    v5 = p_NV + 48 * v3 + 8016;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 39) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      *(p_NV + 48 * v3 + 8056) = *(a3 + 8);
      *(v5 + 24) = v9;
      *(v5 + 8) = v8;
      v10 = v4 + 48 * v3 + 8024;
      v11 = 55665;
      do
      {
        v12 = *(v10 + v6) ^ BYTE1(v11);
        v11 = 52845 * (v11 + v12) + 22719;
        v7 = (v7 + v12);
        ++v6;
      }

      while (v6 != 40);
      *v5 = v7;
    }
  }

  result = v3 < 0x24;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_BDS_Alm(int a1, char a2, __int128 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1 - 1;
  if ((a1 - 1) <= 0x3E)
  {
    v4 = p_NV;
    v5 = p_NV + 56 * v3 + 13360;
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 35) = 0u;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      *(p_NV + 56 * v3 + 13396) = *(a3 + 28);
      *(v5 + 24) = v9;
      *(v5 + 8) = v8;
      v10 = v4 + 56 * v3 + 13368;
      v11 = 55665;
      do
      {
        v12 = *(v10 + v6) ^ BYTE1(v11);
        v11 = 52845 * (v11 + v12) + 22719;
        v7 = (v7 + v12);
        ++v6;
      }

      while (v6 != 48);
      *v5 = v7;
    }
  }

  result = v3 < 0x3F;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Save_NVIC_Alm(int a1, char a2, __int128 *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = (a1 - 1);
  if (v3 <= 0xD)
  {
    v4 = p_NV + (v3 << 6);
    v5 = (v4 + 27032);
    if (a2)
    {
      *v5 = 0xFFFFFFFFLL;
      *(v4 + 27040) = 0u;
      *(v4 + 27056) = 0u;
      *(v4 + 27072) = 0u;
      *(v4 + 27088) = 0;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      *(v4 + 27088) = *(a3 + 12);
      *(v4 + 27072) = v10;
      *(v4 + 27056) = v9;
      *(v4 + 27040) = v8;
      v11 = v4 + 27040;
      v12 = 55665;
      do
      {
        v13 = *(v11 + v6) ^ BYTE1(v12);
        v12 = 52845 * (v12 + v13) + 22719;
        v7 = (v7 + v13);
        ++v6;
      }

      while (v6 != 56);
      *v5 = v7;
    }
  }

  result = v3 < 0xE;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Core_Load_SBAS_Apx(int a1, int *a2, int *a3)
{
  v3 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v4 = p_NV + 32128;
  v5 = 1;
  while (1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 55665;
    v9 = p_NV + 32120 + 32 * v3;
    do
    {
      v10 = *(v4 + v6) ^ BYTE1(v8);
      v8 = 52845 * (v8 + v10) + 22719;
      v7 += v10;
      ++v6;
    }

    while (v6 != 24);
    if (*v9 == v7 && *(v9 + 12) == a1)
    {
      break;
    }

    v5 = v3 < 0x11;
    v4 += 32;
    if (++v3 == 18)
    {
      v5 = 0;
      goto LABEL_9;
    }
  }

  *a2 = *(v9 + 8);
  v11 = *(v9 + 16);
  a3[2] = *(v9 + 24);
  *a3 = v11;
LABEL_9:
  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Core_Save_SBAS_Apx(int a1, char a2, int a3, int *a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if ((a1 - 159) < 0xFFFFFFD9)
  {
LABEL_17:
    result = 0;
  }

  else
  {
    v5 = p_NV + 32120;
    if (a2)
    {
      v6 = 0;
      v7 = p_NV + 32128;
      while (1)
      {
        v8 = 0;
        v9 = 0;
        v10 = 55665;
        v11 = v5 + 32 * v6;
        do
        {
          v12 = *(v7 + v8) ^ BYTE1(v10);
          v10 = 52845 * (v10 + v12) + 22719;
          v9 += v12;
          ++v8;
        }

        while (v8 != 24);
        if (*v11 == v9 && *(v11 + 12) == a1)
        {
          break;
        }

        ++v6;
        v7 += 32;
        if (v6 == 18)
        {
          goto LABEL_17;
        }
      }

      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = 0;
      v16 = (p_NV + 32128);
      while (1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 55665;
        v20 = v5 + 32 * v15;
        do
        {
          v21 = v16[v17] ^ BYTE1(v19);
          v19 = 52845 * (v19 + v21) + 22719;
          v18 += v21;
          ++v17;
        }

        while (v17 != 24);
        if (*v20 != v18)
        {
          EvLog_v("Core_Save_SBAS_Apx:  Saving SV %d  %d  idx %d");
          goto LABEL_21;
        }

        v22 = *(v20 + 12);
        if (v22 == a1 || (v22 - 159) <= 0xFFFFFFD8)
        {
          break;
        }

        ++v15;
        v16 += 32;
        if (v15 == 18)
        {
          goto LABEL_17;
        }
      }

      EvLog_v("Core_Save_SBAS_Apx:  Replacing SV %d with %d  %d  idx %d");
LABEL_21:
      LODWORD(v24) = 0;
      *(v20 + 8) = a3;
      *(v20 + 12) = a1;
      v25 = *a4;
      *(v20 + 24) = a4[2];
      *(v20 + 16) = v25;
      v26 = 55665;
      v27 = 24;
      do
      {
        v28 = *v16++;
        v29 = v28 ^ BYTE1(v26);
        v26 = 52845 * (v26 + v29) + 22719;
        v24 = (v24 + v29);
        --v27;
      }

      while (v27);
      *v20 = v24;
    }

    result = 1;
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_TTick_Cal(int a1, int a2, int a3, unsigned int *a4, unsigned __int8 *a5)
{
  v5 = 0;
  v6 = 0;
  v18 = *MEMORY[0x29EDCA608];
  v7 = p_NV + 0x8000;
  v8 = p_NV + 33200;
  *a4 = *(p_NV + 33200) - a3;
  *a5 = -1;
  v9 = 55665;
  do
  {
    v10 = *(v8 + v5) ^ BYTE1(v9);
    v9 = 52845 * (v9 + v10) + 22719;
    v6 += v10;
    ++v5;
  }

  while (v5 != 16);
  if (*(v7 + 424) != v6)
  {
    goto LABEL_13;
  }

  v11 = *a4;
  if ((*a4 & 0x80000000) != 0)
  {
    v11 = -v11;
  }

  if (v11 > 0x1388)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v13 = a1 - *(v7 + 436);
  if (v13 < 14400000)
  {
    v14 = a2 - *(v7 + 440);
    if (v14 < 14400000)
    {
      v15 = v13 - v14;
      if (v13 - v14 < 0)
      {
        v15 = v14 - v13;
      }

      if (v15 <= 0x1388)
      {
        *a5 = ((1172812403 * v13) >> 46) + (1172812403 * v13 < 0);
        v12 = 1;
        goto LABEL_14;
      }

LABEL_13:
      v12 = 0;
    }
  }

LABEL_14:
  v16 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t Core_Save_Inhib_EE(BOOL *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v40 = *MEMORY[0x29EDCA608];
  v4 = p_NV;
  v5 = (p_NV + 0x8000);
  v6 = a1 + 165;
  v7 = 1;
  do
  {
    if (a1[v2])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v3 |= v8;
    v7 *= 2;
    ++v2;
  }

  while (v2 != 32);
  v9 = 0;
  v10 = 0;
  *(p_NV + 33224) = v3;
  v11 = 1;
  do
  {
    if (a1[v9 + 32])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v10 |= v12;
    v11 *= 2;
    ++v9;
  }

  while (v9 != 24);
  v13 = 0;
  v14 = 0;
  v5[58] = v10;
  v15 = 1;
  do
  {
    if (a1[v13 + 155])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v14 |= v16;
    v15 *= 2;
    ++v13;
  }

  while (v13 != 10);
  v17 = 0;
  v18 = 0;
  v5[59] = v14;
  v19 = 1;
  do
  {
    if (a1[v17 + 179])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v18 |= v20;
    v19 *= 2;
    ++v17;
  }

  while (v17 != 39);
  v21 = 0;
  v22 = 0;
  v5[60] = v18;
  v23 = 1;
  do
  {
    if (a1[v21 + 92])
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v22 |= v24;
    v23 *= 2;
    ++v21;
  }

  while (v21 != 63);
  v25 = 0;
  v26 = 0;
  v27 = a1 + 56;
  v5[61] = v22;
  v28 = 1;
  do
  {
    if (v27[v25])
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v26 |= v29;
    v28 *= 2;
    ++v25;
  }

  while (v25 != 36);
  v30 = 0;
  v31 = 0;
  v5[62] = v26;
  v32 = 1;
  do
  {
    if (v6[v30])
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v31 |= v33;
    v32 *= 2;
    ++v30;
  }

  while (v30 != 14);
  v5[63] = v31;
  v5[64] = a2;
  EvLog_v("Core_Save_Inhib_EE: Time %D  G %X R %X Q %X S %X B %X E %X N %X", a2, v3, v10, v14, v18, v22, v26, v31);
  v34 = 0;
  LODWORD(v35) = 0;
  v36 = 55665;
  do
  {
    v37 = *(v4 + 33224 + v34) ^ BYTE1(v36);
    v36 = 52845 * (v36 + v37) + 22719;
    v35 = (v35 + v37);
    ++v34;
  }

  while (v34 != 64);
  v5[56] = v35;
  v38 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL Core_Load_Inhib_EE(BOOL *a1, uint64_t *a2)
{
  v2 = 0;
  LODWORD(v3) = 0;
  v32 = *MEMORY[0x29EDCA608];
  v4 = (p_NV + 0x8000);
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 33224 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 = (v3 + v6);
    ++v2;
  }

  while (v2 != 64);
  v7 = *(p_NV + 33216);
  if (v7 == v3)
  {
    v8 = 0;
    v9 = *(p_NV + 33224);
    v10 = 1;
    do
    {
      a1[v8] = (v10 & v9) != 0;
      v10 *= 2;
      ++v8;
    }

    while (v8 != 32);
    v11 = 0;
    v12 = v4[58];
    v13 = 1;
    do
    {
      a1[v11 + 32] = (v13 & v12) != 0;
      v13 *= 2;
      ++v11;
    }

    while (v11 != 24);
    v14 = 0;
    v15 = v4[59];
    v16 = 1;
    do
    {
      a1[v14 + 155] = (v16 & v15) != 0;
      v16 *= 2;
      ++v14;
    }

    while (v14 != 10);
    v17 = 0;
    v18 = v4[60];
    v19 = 1;
    do
    {
      a1[v17 + 179] = (v19 & v18) != 0;
      v19 *= 2;
      ++v17;
    }

    while (v17 != 39);
    v20 = 0;
    v21 = v4[61];
    v22 = 1;
    do
    {
      a1[v20 + 92] = (v22 & v21) != 0;
      v22 *= 2;
      ++v20;
    }

    while (v20 != 63);
    v23 = 0;
    v24 = v4[62];
    v25 = 1;
    do
    {
      a1[v23 + 56] = (v25 & v24) != 0;
      v25 *= 2;
      ++v23;
    }

    while (v23 != 36);
    v26 = 0;
    v27 = v4[63];
    v28 = 1;
    do
    {
      a1[v26 + 165] = (v28 & v27) != 0;
      v28 *= 2;
      ++v26;
    }

    while (v26 != 14);
    v29 = v4[64];
    *a2 = v29;
    EvLog_v("Core_Load_Inhib_EE: Time %D  G %X R %X Q %X S %X B %X E %X N %X", v29, v4[57], v4[58], v4[59], v4[60], v4[61], v4[62], v4[63]);
  }

  result = v7 == v3;
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Save_Not_Brd_SV(int a1, uint64_t a2)
{
  v39 = *MEMORY[0x29EDCA608];
  if (a1 == 1)
  {
    v2 = (p_NV + 33352);
    v3 = "L5";
  }

  else if (a1)
  {
    v2 = 0;
    v3 = "--";
  }

  else
  {
    v2 = (p_NV + 33288);
    v3 = "L1";
  }

  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    if (*(a2 + v4))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5 |= v7;
    v6 *= 2;
    ++v4;
  }

  while (v4 != 32);
  v8 = 0;
  v9 = 0;
  v2[1] = v5;
  v10 = 1;
  do
  {
    if (*(a2 + 32 + v8))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v9 |= v11;
    v10 *= 2;
    ++v8;
  }

  while (v8 != 24);
  v12 = 0;
  v13 = 0;
  v2[2] = v9;
  v14 = 1;
  do
  {
    if (*(a2 + 155 + v12))
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v13 |= v15;
    v14 *= 2;
    ++v12;
  }

  while (v12 != 10);
  v16 = 0;
  v17 = 0;
  v2[3] = v13;
  v18 = 1;
  do
  {
    if (*(a2 + 179 + v16))
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v17 |= v19;
    v18 *= 2;
    ++v16;
  }

  while (v16 != 39);
  v20 = 0;
  v21 = 0;
  v2[4] = v17;
  v22 = 1;
  do
  {
    if (*(a2 + 92 + v20))
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v21 |= v23;
    v22 *= 2;
    ++v20;
  }

  while (v20 != 63);
  v24 = 0;
  v25 = 0;
  v2[5] = v21;
  v26 = 1;
  do
  {
    if (*(a2 + 56 + v24))
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v25 |= v27;
    v26 *= 2;
    ++v24;
  }

  while (v24 != 36);
  v28 = 0;
  v29 = 0;
  v2[6] = v25;
  v30 = a2 + 165;
  v31 = 1;
  do
  {
    if (*(v30 + v28))
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v29 |= v32;
    v31 *= 2;
    ++v28;
  }

  while (v28 != 14);
  v2[7] = v29;
  EvLog_v("Core_Save_Not_Brd_SV:  %s  G %X R %X Q %X S %X B %X E %X N %X", v3, v5, v9, v13, v17, v21, v25, v29);
  LODWORD(v33) = 0;
  v34 = 55665;
  for (i = 8; i != 64; ++i)
  {
    v36 = *(v2 + i) ^ BYTE1(v34);
    v34 = 52845 * (v34 + v36) + 22719;
    v33 = (v33 + v36);
  }

  *v2 = v33;
  v37 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL Core_Load_Not_Brd_SV(int a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a1 == 1)
  {
    v2 = (p_NV + 33352);
    v3 = "L5";
  }

  else if (a1)
  {
    v2 = 0;
    v3 = "--";
  }

  else
  {
    v2 = (p_NV + 33288);
    v3 = "L1";
  }

  LODWORD(v4) = 0;
  v5 = 55665;
  for (i = 8; i != 64; ++i)
  {
    v7 = *(v2 + i) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v7) + 22719;
    v4 = (v4 + v7);
  }

  v8 = *v2;
  if (*v2 == v4)
  {
    v9 = 0;
    v10 = v2[1];
    v11 = 1;
    do
    {
      *(a2 + v9) = (v11 & v10) != 0;
      v11 *= 2;
      ++v9;
    }

    while (v9 != 32);
    v12 = 0;
    v13 = v2[2];
    v14 = 1;
    do
    {
      *(a2 + 32 + v12) = (v14 & v13) != 0;
      v14 *= 2;
      ++v12;
    }

    while (v12 != 24);
    v15 = 0;
    v16 = v2[3];
    v17 = 1;
    do
    {
      *(a2 + 155 + v15) = (v17 & v16) != 0;
      v17 *= 2;
      ++v15;
    }

    while (v15 != 10);
    v18 = 0;
    v19 = v2[4];
    v20 = 1;
    do
    {
      *(a2 + 179 + v18) = (v20 & v19) != 0;
      v20 *= 2;
      ++v18;
    }

    while (v18 != 39);
    v21 = 0;
    v22 = v2[5];
    v23 = 1;
    do
    {
      *(a2 + 92 + v21) = (v23 & v22) != 0;
      v23 *= 2;
      ++v21;
    }

    while (v21 != 63);
    v24 = 0;
    v25 = v2[6];
    v26 = 1;
    do
    {
      *(a2 + 56 + v24) = (v26 & v25) != 0;
      v26 *= 2;
      ++v24;
    }

    while (v24 != 36);
    v27 = 0;
    v28 = v2[7];
    v29 = 1;
    do
    {
      *(a2 + 165 + v27) = (v29 & v28) != 0;
      v29 *= 2;
      ++v27;
    }

    while (v27 != 14);
    EvLog_v("Core_Load_Not_Brd_SV:  %s  G %X R %X Q %X S %X B %X E %X N %X", v3, v10, v13, v16, v19, v22, v25, v28);
  }

  result = v8 == v4;
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_GPS_Clear_NV_Data(unsigned __int8 *a1, char *a2)
{
  result = 0;
  v162 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_101;
  }

  v4 = a2;
  if (!a2)
  {
    goto LABEL_101;
  }

  v5 = 0;
  v6 = qword_2A1454228;
  v7 = qword_2A1454178;
  v8 = qword_2A1454158;
  v9 = qword_2A1454160;
  v10 = v161;
  p_src = &__src;
  v159 = &v162;
  v157[1] = &__src;
  __src = 10;
  v11 = 42;
  memset(v161, 0, sizeof(v161));
  do
  {
    v157[0] = v10 + 1;
    *v10 = v11;
    v10 = v157[0];
    if (v157[0] >= v159)
    {
      v10 = p_src;
      v157[0] = p_src;
    }

    v11 = asc_2990762F6[++v5];
  }

  while (v5 != 8);
  v157[0] = v10 + 1;
  *v10 = 10;
  if (v157[0] >= v159)
  {
    v157[0] = p_src;
  }

  v12 = mach_continuous_time();
  sprintf_10u(v157, (*&g_MacClockTicksToMsRelation * v12));
  v13 = v157[0]++;
  v14 = 32;
  *v13 = 32;
  if (v157[0] >= v159)
  {
    v15 = p_src;
  }

  else
  {
    v15 = v157[0];
  }

  v16 = 1u;
  do
  {
    v157[0] = v15 + 1;
    *v15 = v14;
    v15 = v157[0];
    if (v157[0] >= v159)
    {
      v15 = p_src;
      v157[0] = p_src;
    }

    v14 = a0GnGpsClearNvD[v16++];
  }

  while (v16 != 31);
  if (!strcmp("VHOT", v4) || !strcmp("HOT", v4))
  {
    v156 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v32 = 0;
    goto LABEL_52;
  }

  if (!strcmp("HOST", v4))
  {
    v156 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v32 = 1;
    goto LABEL_52;
  }

  v155 = v8;
  if (!strcmp("WARM", v4))
  {
    v23 = 0;
    v18 = 0;
    v19 = 0;
    v25 = 0;
    v26 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v32 = 0;
    goto LABEL_108;
  }

  if (!strcmp("COLD", v4))
  {
    v31 = 0;
    v25 = 0;
    v18 = 0;
    *(v6 + 6) = 0;
    v29 = 1;
    v30 = 1;
    v26 = 1;
    v24 = 1;
    v19 = 1;
LABEL_106:
    v23 = 1;
LABEL_107:
    *(v6 + 8) = 0;
    *(v7 + 4) = 0;
    *(v7 + 8) = 0;
    *(v7 + 824) = 0x4163125300000000;
    v78 = vdupq_n_s64(0x4163125300000000uLL);
    *(v7 + 832) = v78;
    *(v7 + 848) = v78;
    *(v7 + 928) = v78;
    *(v7 + 944) = 0;
    g_GN_GNSS_Nav_Data = 0;
    v32 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_108;
  }

  if (!strcmp("FACT", v4))
  {
    v29 = 1;
    v30 = 1;
    v31 = 1;
    v26 = 1;
    v25 = 1;
    v24 = 1;
    v19 = 1;
    v18 = 1;
    goto LABEL_106;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v4[v17];
    if (v28 > 0x48)
    {
      if (v4[v17] > 0x53u)
      {
        switch(v28)
        {
          case 'T':
            v26 = 1;
            break;
          case 'U':
            v21 = 1;
            break;
          case 'V':
            v19 = 1;
            break;
          default:
            goto LABEL_153;
        }
      }

      else if (v28 == 73 || v28 == 75)
      {
        v22 = 1;
      }

      else
      {
        if (v28 != 80)
        {
          goto LABEL_153;
        }

        v27 = 1;
      }

      goto LABEL_47;
    }

    if (v4[v17] > 0x44u)
    {
      switch(v28)
      {
        case 'E':
          v24 = 1;
          break;
        case 'F':
          v25 = 1;
          break;
        case 'H':
          v20 = 1;
          break;
        default:
          goto LABEL_153;
      }

      goto LABEL_47;
    }

    if (v28 == 65)
    {
      v23 = 1;
      goto LABEL_47;
    }

    if (v28 != 67)
    {
      break;
    }

    v18 = 1;
LABEL_47:
    if (++v17 == 16)
    {
      goto LABEL_48;
    }
  }

  if (v4[v17])
  {
LABEL_153:
    v126 = 70;
    v127 = 1u;
    do
    {
      v157[0] = v15 + 1;
      *v15 = v126;
      v15 = v157[0];
      if (v157[0] >= v159)
      {
        v15 = p_src;
        v157[0] = p_src;
      }

      v126 = aFailedInvalidI[v127++];
    }

    while (v127 != 27);
    v128 = *v4;
    if (*v4)
    {
      v129 = (v4 + 1);
      do
      {
        v157[0] = v15 + 1;
        *v15 = v128;
        v15 = v157[0];
        if (v157[0] >= v159)
        {
          v15 = p_src;
          v157[0] = p_src;
        }

        v130 = *v129++;
        v128 = v130;
      }

      while (v130);
    }

    v131 = 34;
    v132 = 1u;
    do
    {
      v157[0] = v15 + 1;
      *v15 = v131;
      v15 = v157[0];
      if (v157[0] >= v159)
      {
        v15 = p_src;
        v157[0] = p_src;
      }

      v131 = asc_299076347[v132++];
    }

    while (v132 != 4);
    v133 = qword_2A1454250;
    v134 = v15 - p_src;
    v135 = *(qword_2A1454250 + 24);
    v136 = *qword_2A1454250;
    v137 = &__src;
    do
    {
      v138 = v135 - v136;
      if (v134 >= v138)
      {
        v139 = v138;
      }

      else
      {
        v139 = v134;
      }

      memcpy(v136, v137, v139);
      v136 = (*v133 + v139);
      *v133 = v136;
      v135 = v133[3];
      if (v136 >= v135)
      {
        v136 = v133[2];
        *v133 = v136;
      }

      v137 += v139;
      v62 = __OFSUB__(v134, v139);
      v134 -= v139;
    }

    while (!((v134 < 0) ^ v62 | (v134 == 0)));
    v140 = qword_2A1454248;
    v141 = LODWORD(v157[0]) - p_src;
    v142 = *(qword_2A1454248 + 24);
    v143 = *qword_2A1454248;
    v144 = &__src;
    do
    {
      v145 = v142 - v143;
      if (v141 >= v145)
      {
        v146 = v145;
      }

      else
      {
        v146 = v141;
      }

      memcpy(v143, v144, v146);
      v143 = (*v140 + v146);
      *v140 = v143;
      v142 = v140[3];
      if (v143 >= v142)
      {
        v143 = v140[2];
        *v140 = v143;
      }

      v144 += v146;
      v62 = __OFSUB__(v141, v146);
      v141 -= v146;
    }

    while (!((v141 < 0) ^ v62 | (v141 == 0)));
    v147 = qword_2A1454258;
    v148 = LODWORD(v157[0]) - p_src;
    v149 = *(qword_2A1454258 + 24);
    v150 = *qword_2A1454258;
    v151 = &__src;
    do
    {
      v152 = v149 - v150;
      if (v148 >= v152)
      {
        v153 = v152;
      }

      else
      {
        v153 = v148;
      }

      memcpy(v150, v151, v153);
      v150 = (*v147 + v153);
      *v147 = v150;
      v149 = v147[3];
      if (v150 >= v149)
      {
        v150 = v147[2];
        *v147 = v150;
      }

      v151 += v153;
      v62 = __OFSUB__(v148, v153);
      v148 -= v153;
    }

    while (!((v148 < 0) ^ v62 | (v148 == 0)));
    GNSS_Event_Log_Ctl(qword_2A1454250);
    GNSS_Event_Log_Ctl(qword_2A1454248);
    GNSS_Event_Log_Ctl(qword_2A1454258);
    result = 0;
    goto LABEL_101;
  }

LABEL_48:
  v29 = v23 & v20;
  v30 = v23 & v21;
  v31 = v23 & v22;
  if (v27)
  {
    goto LABEL_107;
  }

  v32 = 0;
  if ((v24 & 1) == 0)
  {
LABEL_143:
    v34 = 0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_144;
    }

LABEL_121:
    v102 = (v9 + 7544);
    v103 = 192;
    do
    {
      v104 = &a1[v103];
      *(v104 + 12) = 0;
      *(v104 + 1) = 0uLL;
      *(v104 + 2) = 0uLL;
      *v104 = 0uLL;
      *(v102 + 28) = 0uLL;
      v103 += 56;
      *v102 = 0uLL;
      v102[1] = 0uLL;
      v102 = (v102 + 44);
    }

    while (v103 != 1984);
    v105 = 0;
    *(v6 + 60) = 0u;
    *(v6 + 44) = 0u;
    v106 = a1 + 6104;
    do
    {
      *(v106 + 12) = 0;
      *(v106 + 1) = 0uLL;
      *(v106 + 2) = 0uLL;
      *v106 = 0uLL;
      v106 += 56;
      v107 = (v9 + 11472 + v105);
      *(v107 + 28) = 0uLL;
      v105 += 44;
      *v107 = 0uLL;
      v107[1] = 0uLL;
    }

    while (v105 != 440);
    v108 = 0;
    *(v6 + 94) = 0;
    *(v6 + 86) = 0;
    v109 = a1 + 29240;
    do
    {
      *(v109 + 28) = 0uLL;
      *v109 = 0uLL;
      *(v109 + 1) = 0uLL;
      v109 += 48;
      v110 = v9 + 16248 + v108;
      *(v110 + 32) = 0;
      v108 += 36;
      *v110 = 0uLL;
      *(v110 + 16) = 0uLL;
    }

    while (v108 != 864);
    v111 = 0;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    v112 = v9 + 24044;
    do
    {
      v113 = &a1[v111 + 8016];
      *(v113 + 28) = 0uLL;
      *v113 = 0uLL;
      *(v113 + 1) = 0uLL;
      *(v112 + 31) = 0;
      v111 += 48;
      *v112 = 0uLL;
      *(v112 + 16) = 0uLL;
      v112 += 36;
    }

    while (v111 != 1728);
    v114 = 0;
    *(v6 + 215) = 0;
    *(v6 + 199) = 0u;
    *(v6 + 183) = 0u;
    v115 = (v9 + 44664);
    do
    {
      v116 = &a1[v114 + 13360];
      *(v116 + 12) = 0;
      *(v116 + 1) = 0uLL;
      *(v116 + 2) = 0uLL;
      *v116 = 0uLL;
      *(v115 + 27) = 0uLL;
      v114 += 56;
      *v115 = 0uLL;
      v115[1] = 0uLL;
      v115 = (v115 + 44);
    }

    while (v114 != 3528);
    v117 = 0;
    *(v6 + 331) = 0u;
    *(v6 + 300) = 0u;
    *(v6 + 316) = 0u;
    *(v6 + 284) = 0u;
    v118 = v9 + 49824;
    do
    {
      v119 = &a1[v117 + 27032];
      *(v119 + 44) = 0uLL;
      *(v119 + 1) = 0uLL;
      *(v119 + 2) = 0uLL;
      *v119 = 0uLL;
      *(v118 + 48) = 0;
      *(v118 + 16) = 0uLL;
      *(v118 + 32) = 0uLL;
      v117 += 64;
      *v118 = 0uLL;
      v118 += 52;
    }

    while (v117 != 896);
    v120 = 0;
    *(v6 + 368) = 0;
    *(v6 + 362) = 0;
    do
    {
      v121 = &a1[v120 + 32120];
      *v121 = 0;
      *(v121 + 1) = 0;
      *(v121 + 6) = 0;
      *(v121 + 2) = 0;
      v120 += 32;
    }

    while (v120 != 576);
    *(v6 + 145) = 0;
    *(a1 + 33384) = 0u;
    *(a1 + 33400) = 0u;
    *(a1 + 33352) = 0u;
    *(a1 + 33368) = 0u;
    *(a1 + 33320) = 0u;
    *(a1 + 33336) = 0u;
    *(a1 + 33288) = 0u;
    *(a1 + 33304) = 0u;
    *(v9 + 60410) = 0u;
    *(v9 + 60400) = 0u;
    *(v9 + 60384) = 0u;
    *(v9 + 60368) = 0u;
    *(v9 + 60352) = 0u;
    *(v9 + 60336) = 0u;
    *(v9 + 60320) = 0u;
    *(v9 + 60304) = 0u;
    *(v9 + 60288) = 0u;
    *(v9 + 60272) = 0u;
    *(v9 + 60256) = 0u;
    *(v9 + 60240) = 0u;
    *(v9 + 60224) = 0u;
    v156 = 1;
    *(v9 + 60208) = 0u;
    if ((v31 & 1) == 0)
    {
      goto LABEL_136;
    }

LABEL_145:
    *(a1 + 19) = 0;
    *(a1 + 136) = 0u;
    *(v6 + 10) = 0;
    *(v9 + 8952) = 0u;
    v37 = 1;
    if ((v30 & 1) == 0)
    {
      goto LABEL_146;
    }

LABEL_137:
    *(a1 + 10) = 0u;
    *(a1 + 11) = 0u;
    *(v6 + 11) = 0;
    *(a1 + 7308) = 0;
    *(a1 + 1826) = 0u;
    *(a1 + 1825) = 0u;
    *(v6 + 144) = 0;
    *(a1 + 3328) = 0;
    *(a1 + 831) = 0u;
    *(a1 + 830) = 0u;
    *(a1 + 13320) = 0u;
    *(a1 + 13336) = 0u;
    *(a1 + 3338) = 0;
    *(v6 + 219) = 0;
    *(a1 + 7992) = 0u;
    *(a1 + 1001) = 0;
    *(v6 + 146) = 0;
    *(a1 + 6756) = 0;
    *(a1 + 3377) = 0;
    *(a1 + 27000) = 0u;
    *(v6 + 347) = 0;
    *(v9 + 8982) = 0;
    *(v9 + 8968) = 0u;
    *(v9 + 17112) = 0;
    *(v9 + 17120) = 0u;
    *(v9 + 17136) = 0;
    *(v9 + 25340) = 0;
    *(v9 + 25346) = 0;
    *(v9 + 47436) = 0;
    *(v9 + 47444) = 0u;
    *(v9 + 47460) = 0;
    *(v9 + 47464) = 0;
    *(v9 + 47472) = 0u;
    *(v9 + 47488) = 0;
    v122 = (v9 + 50552);
    *(v9 + 50568) = 0;
    v38 = 1;
    *v122 = 0u;
    if ((v29 & 1) == 0)
    {
      goto LABEL_138;
    }

LABEL_147:
    *(a1 + 116) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 29160) = 0u;
    *(a1 + 29176) = 0u;
    *(a1 + 7298) = 0;
    *(a1 + 380) = 0u;
    *(a1 + 6094) = 0;
    *(a1 + 7944) = 0u;
    *(a1 + 7960) = 0u;
    *(a1 + 7976) = 0u;
    *(a1 + 825) = 0u;
    *(a1 + 826) = 0u;
    *(a1 + 827) = 0u;
    *(a1 + 828) = 0u;
    *(a1 + 13259) = 0u;
    *(a1 + 3373) = 0;
    *(a1 + 13496) = 0;
    *(a1 + 26968) = 0u;
    *(a1 + 4160) = 0;
    *(a1 + 2079) = 0u;
    *(a1 + 2078) = 0u;
    *(a1 + 2077) = 0u;
    v39 = 1;
    *(a1 + 2076) = 0u;
    if ((v19 & 1) == 0)
    {
      goto LABEL_148;
    }

LABEL_139:
    *(a1 + 33170) = 0u;
    *(a1 + 33144) = 0u;
    *(a1 + 33160) = 0u;
    *(a1 + 33112) = 0u;
    *(a1 + 33128) = 0u;
    *(a1 + 33080) = 0u;
    *(a1 + 33096) = 0u;
    *(a1 + 33048) = 0u;
    *(a1 + 33064) = 0u;
    *(a1 + 33016) = 0u;
    *(a1 + 33032) = 0u;
    *(a1 + 32984) = 0u;
    *(a1 + 33000) = 0u;
    *(a1 + 32952) = 0u;
    *(a1 + 32968) = 0u;
    *(a1 + 32920) = 0u;
    *(a1 + 32936) = 0u;
    *(a1 + 32888) = 0u;
    *(a1 + 32904) = 0u;
    *(a1 + 32856) = 0u;
    *(a1 + 32872) = 0u;
    *(a1 + 32824) = 0u;
    *(a1 + 32840) = 0u;
    *(a1 + 32792) = 0u;
    *(a1 + 32808) = 0u;
    *(a1 + 32760) = 0u;
    *(a1 + 32776) = 0u;
    *(a1 + 32728) = 0u;
    *(a1 + 32744) = 0u;
    v33 = 1;
    *(a1 + 32696) = 0u;
    *(a1 + 32712) = 0u;
    if ((v25 & 1) == 0)
    {
      goto LABEL_140;
    }

LABEL_149:
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    *(a1 + 7) = 0;
    v35 = 1;
    *(v6 + 6) = 0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_150;
    }

LABEL_141:
    v154 = v18;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 8) = 0;
    *(a1 + 3) = 0;
    *(v6 + 145) = 0;
    *(v6 + 1) = 0;
    v123 = v32;
    v124 = v4;
    v125 = v37;
    mach_continuous_time();
    v37 = v125;
    v4 = v124;
    v32 = v123;
    *v155 = 0;
    *(v155 + 4) = 0;
    *(v155 + 16) = 0;
    *(v155 + 80) = 0;
    v36 = 1;
    *(v155 + 76) = 0;
    if (v154)
    {
      goto LABEL_151;
    }

    goto LABEL_52;
  }

LABEL_108:
  v79 = 0;
  v80 = v9;
  do
  {
    v81 = &a1[v79 + 1984];
    *(v81 + 108) = 0uLL;
    *(v81 + 5) = 0uLL;
    *(v81 + 6) = 0uLL;
    *(v81 + 3) = 0uLL;
    *(v81 + 4) = 0uLL;
    *(v81 + 1) = 0uLL;
    *(v81 + 2) = 0uLL;
    *v81 = 0uLL;
    *(v80 + 231) = 0;
    *(v80 + 216) = 0uLL;
    *(v80 + 200) = 0uLL;
    *(v80 + 184) = 0uLL;
    *(v80 + 168) = 0uLL;
    *(v80 + 152) = 0uLL;
    *(v80 + 136) = 0uLL;
    *(v80 + 120) = 0uLL;
    v82 = v80 + 3832;
    *(v80 + 3832) = 0uLL;
    *(v80 + 3848) = 0uLL;
    *(v80 + 3864) = 0uLL;
    *(v80 + 3880) = 0uLL;
    *(v80 + 3896) = 0uLL;
    *(v80 + 3912) = 0uLL;
    *(v80 + 3928) = 0uLL;
    v79 += 128;
    v80 += 116;
    *(v82 + 111) = 0;
  }

  while (v79 != 4096);
  v83 = 0;
  *(v6 + 28) = 0u;
  *(v6 + 12) = 0u;
  v84 = v9 + 9152;
  do
  {
    v85 = &a1[v83 + 6664];
    *(v85 + 108) = 0uLL;
    *(v85 + 5) = 0uLL;
    *(v85 + 6) = 0uLL;
    *(v85 + 3) = 0uLL;
    *(v85 + 4) = 0uLL;
    *(v85 + 1) = 0uLL;
    *(v85 + 2) = 0uLL;
    *v85 = 0uLL;
    *(v84 + 111) = 0;
    *(v84 + 80) = 0uLL;
    *(v84 + 96) = 0uLL;
    *(v84 + 48) = 0uLL;
    *(v84 + 64) = 0uLL;
    *(v84 + 16) = 0uLL;
    *(v84 + 32) = 0uLL;
    *v84 = 0uLL;
    v86 = v84 + 1160;
    *(v84 + 1160) = 0uLL;
    *(v84 + 1176) = 0uLL;
    *(v84 + 1192) = 0uLL;
    *(v84 + 1208) = 0uLL;
    *(v84 + 1224) = 0uLL;
    *(v84 + 1240) = 0uLL;
    *(v84 + 1256) = 0uLL;
    v83 += 128;
    v84 += 116;
    *(v86 + 111) = 0;
  }

  while (v83 != 1280);
  v87 = 0;
  *(v6 + 84) = 0;
  *(v6 + 76) = 0;
  v88 = a1 + 30392;
  v89 = (v9 + 11928);
  v90 = v9 + 13464;
  do
  {
    *(v88 + 8) = 0;
    *(v88 + 2) = 0uLL;
    *(v88 + 3) = 0uLL;
    *v88 = 0uLL;
    *(v88 + 1) = 0uLL;
    *(v89 + 46) = 0uLL;
    v89[1] = 0uLL;
    v89[2] = 0uLL;
    *v89 = 0uLL;
    v89 += 4;
    *(v9 + 17232 + v87) = 0;
    *(v90 + 111) = 0;
    *(v90 + 80) = 0uLL;
    *(v90 + 96) = 0uLL;
    *(v90 + 48) = 0uLL;
    *(v90 + 64) = 0uLL;
    v87 += 4;
    *(v90 + 16) = 0uLL;
    *(v90 + 32) = 0uLL;
    *v90 = 0uLL;
    v90 += 116;
    v88 += 72;
  }

  while (v87 != 96);
  v91 = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  v92 = v9 + 17708;
  do
  {
    v93 = &a1[v91 + 9744];
    *(v93 + 4) = 0uLL;
    *(v93 + 5) = 0uLL;
    *(v93 + 2) = 0uLL;
    *(v93 + 3) = 0uLL;
    *v93 = 0uLL;
    *(v93 + 1) = 0uLL;
    *(v92 + 80) = 0;
    *(v92 + 48) = 0uLL;
    *(v92 + 64) = 0uLL;
    *(v92 + 16) = 0uLL;
    *(v92 + 32) = 0uLL;
    *v92 = 0uLL;
    *(v92 + 3168) = 0uLL;
    *(v92 + 3184) = 0uLL;
    *(v92 + 3200) = 0uLL;
    *(v92 + 3216) = 0uLL;
    v91 += 96;
    *(v92 + 3232) = 0uLL;
    *(v92 + 3248) = 0;
    v92 += 88;
  }

  while (v91 != 3456);
  *(v6 + 179) = 0;
  *(v6 + 163) = 0u;
  *(v6 + 147) = 0u;
  v94 = a1 + 16888;
  v95 = v9 + 25512;
  v96 = 63;
  do
  {
    *(v94 + 8) = 0uLL;
    *(v94 + 9) = 0uLL;
    *(v94 + 6) = 0uLL;
    *(v94 + 7) = 0uLL;
    *(v94 + 4) = 0uLL;
    *(v94 + 5) = 0uLL;
    *(v94 + 2) = 0uLL;
    *(v94 + 3) = 0uLL;
    *v94 = 0uLL;
    *(v94 + 1) = 0uLL;
    v94 += 160;
    *(v95 + 144) = 0;
    *(v95 + 112) = 0uLL;
    *(v95 + 128) = 0uLL;
    *(v95 + 80) = 0uLL;
    *(v95 + 96) = 0uLL;
    *(v95 + 48) = 0uLL;
    *(v95 + 64) = 0uLL;
    *(v95 + 16) = 0uLL;
    *(v95 + 32) = 0uLL;
    *v95 = 0uLL;
    v97 = v95 + 9576;
    *(v95 + 9720) = 0;
    *(v95 + 9576) = 0uLL;
    *(v95 + 9592) = 0uLL;
    *(v95 + 9608) = 0uLL;
    *(v95 + 9624) = 0uLL;
    *(v95 + 9640) = 0uLL;
    *(v95 + 9656) = 0uLL;
    *(v95 + 9672) = 0uLL;
    *(v95 + 9688) = 0uLL;
    v95 += 152;
    *(v97 + 128) = 0uLL;
    --v96;
  }

  while (v96);
  v98 = 0;
  *(v6 + 221) = 0u;
  *(v6 + 268) = 0u;
  *(v6 + 237) = 0u;
  *(v6 + 253) = 0u;
  v99 = (v9 + 47696);
  do
  {
    v100 = &a1[v98 + 27928];
    *(v100 + 20) = 0;
    *(v100 + 3) = 0uLL;
    *(v100 + 4) = 0uLL;
    *(v100 + 1) = 0uLL;
    *(v100 + 2) = 0uLL;
    *v100 = 0uLL;
    *(v99 + 60) = 0uLL;
    v99[2] = 0uLL;
    v99[3] = 0uLL;
    *v99 = 0uLL;
    v99[1] = 0uLL;
    v101 = v99 + 1064;
    *(v99 + 1064) = 0uLL;
    *(v99 + 1080) = 0uLL;
    *(v99 + 1096) = 0uLL;
    *(v99 + 1112) = 0uLL;
    v98 += 88;
    v99 = (v99 + 76);
    *(v101 + 60) = 0uLL;
  }

  while (v98 != 1232);
  *(v6 + 354) = 0;
  *(v6 + 348) = 0;
  *(v6 + 145) = 0;
  *(v9 + 61718) = 0u;
  *(v9 + 61692) = 0u;
  *(v9 + 61708) = 0u;
  *(v9 + 61660) = 0u;
  *(v9 + 61676) = 0u;
  *(v9 + 61628) = 0u;
  *(v9 + 61644) = 0u;
  *(v9 + 61596) = 0u;
  *(v9 + 61612) = 0u;
  *(v9 + 61564) = 0u;
  *(v9 + 61580) = 0u;
  *(v9 + 61532) = 0u;
  *(v9 + 61548) = 0u;
  *(v9 + 61516) = 0u;
  *(v9 + 61952) = 0u;
  *(v9 + 61968) = 0u;
  *(v9 + 61984) = 0u;
  *(v9 + 62000) = 0u;
  *(v9 + 62016) = 0u;
  *(v9 + 62032) = 0u;
  *(v9 + 62048) = 0u;
  *(v9 + 62064) = 0u;
  *(v9 + 62080) = 0u;
  *(v9 + 62096) = 0u;
  *(v9 + 62112) = 0u;
  *(v9 + 62128) = 0u;
  *(v9 + 62144) = 0u;
  *(v9 + 62154) = 0u;
  *(v9 + 60204) = 0;
  *(v9 + 60172) = 0u;
  *(v9 + 60188) = 0u;
  *(v9 + 60140) = 0u;
  *(v9 + 60156) = 0u;
  *(v9 + 60108) = 0u;
  *(v9 + 60124) = 0u;
  *(v9 + 60076) = 0u;
  *(v9 + 60092) = 0u;
  *(v9 + 60044) = 0u;
  *(v9 + 60060) = 0u;
  *(v9 + 60012) = 0u;
  *(v9 + 60028) = 0u;
  *(v9 + 59980) = 0u;
  *(v9 + 59996) = 0u;
  *(v9 + 59948) = 0u;
  *(v9 + 59964) = 0u;
  *(v9 + 59916) = 0u;
  *(v9 + 59932) = 0u;
  *(v9 + 59884) = 0u;
  *(v9 + 59900) = 0u;
  *(v9 + 59852) = 0u;
  *(v9 + 59868) = 0u;
  *(v9 + 59820) = 0u;
  *(v9 + 59836) = 0u;
  *(v9 + 59788) = 0u;
  *(v9 + 59804) = 0u;
  v34 = 1;
  *(v9 + 59772) = 0u;
  if (v23)
  {
    goto LABEL_121;
  }

LABEL_144:
  v156 = 0;
  if (v31)
  {
    goto LABEL_145;
  }

LABEL_136:
  v37 = 0;
  if (v30)
  {
    goto LABEL_137;
  }

LABEL_146:
  v38 = 0;
  if (v29)
  {
    goto LABEL_147;
  }

LABEL_138:
  v39 = 0;
  if (v19)
  {
    goto LABEL_139;
  }

LABEL_148:
  v33 = 0;
  if (v25)
  {
    goto LABEL_149;
  }

LABEL_140:
  v35 = 0;
  if (v26)
  {
    goto LABEL_141;
  }

LABEL_150:
  v36 = 0;
  if (v18)
  {
LABEL_151:
    *(a1 + 8) = 0;
    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    *(a1 + 33192) = 0u;
    *(a1 + 8302) = 0;
  }

LABEL_52:
  if (g_GncPStateInfo != 8)
  {
    v40 = v34;
    v41 = a1;
    v42 = v32;
    v43 = v37;
    GncP07_08WriteNVStore(0x8290uLL, v41);
    v37 = v43;
    v34 = v40;
    v32 = v42;
  }

  if (((v33 | v35 | v39 | v38 | v37 | v156 | v34 | v36 | v32) & 1) != 0 && (g_GN_GPS_Data_p_list - 4) <= 7)
  {
    LODWORD(g_GN_GPS_Data_p_list) = dword_299053788[(g_GN_GPS_Data_p_list - 4)];
  }

  v44 = 73;
  v45 = v157[0];
  v46 = 1u;
  do
  {
    v157[0] = v45 + 1;
    *v45 = v44;
    v45 = v157[0];
    if (v157[0] >= v159)
    {
      v45 = p_src;
      v157[0] = p_src;
    }

    v44 = aItems[v46++];
  }

  while (v46 != 10);
  v47 = *v4;
  if (*v4)
  {
    v48 = (v4 + 1);
    do
    {
      v157[0] = v45 + 1;
      *v45 = v47;
      v45 = v157[0];
      if (v157[0] >= v159)
      {
        v45 = p_src;
        v157[0] = p_src;
      }

      v49 = *v48++;
      v47 = v49;
    }

    while (v49);
  }

  v50 = 0;
  v51 = 34;
  do
  {
    v157[0] = v45 + 1;
    *v45 = v51;
    v45 = v157[0];
    if (v157[0] >= v159)
    {
      v45 = p_src;
      v157[0] = p_src;
    }

    v51 = asc_299076355[++v50];
  }

  while (v50 != 2);
  v52 = 0;
  v53 = 42;
  do
  {
    v157[0] = v45 + 1;
    *v45 = v53;
    v45 = v157[0];
    if (v157[0] >= v159)
    {
      v45 = p_src;
      v157[0] = p_src;
    }

    v53 = asc_2990762F6[++v52];
  }

  while (v52 != 8);
  v157[0] = v45 + 1;
  *v45 = 10;
  v54 = v157[0];
  if (v157[0] >= v159)
  {
    v157[0] = p_src;
    v54 = p_src;
  }

  v55 = qword_2A1454250;
  v56 = v54 - p_src;
  v57 = *(qword_2A1454250 + 24);
  v58 = *qword_2A1454250;
  v59 = &__src;
  do
  {
    v60 = v57 - v58;
    if (v56 >= v60)
    {
      v61 = v60;
    }

    else
    {
      v61 = v56;
    }

    memcpy(v58, v59, v61);
    v58 = (*v55 + v61);
    *v55 = v58;
    v57 = v55[3];
    if (v58 >= v57)
    {
      v58 = v55[2];
      *v55 = v58;
    }

    v59 += v61;
    v62 = __OFSUB__(v56, v61);
    v56 -= v61;
  }

  while (!((v56 < 0) ^ v62 | (v56 == 0)));
  v63 = qword_2A1454248;
  v64 = LODWORD(v157[0]) - p_src;
  v65 = *(qword_2A1454248 + 24);
  v66 = *qword_2A1454248;
  v67 = &__src;
  do
  {
    v68 = v65 - v66;
    if (v64 >= v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = v64;
    }

    memcpy(v66, v67, v69);
    v66 = (*v63 + v69);
    *v63 = v66;
    v65 = v63[3];
    if (v66 >= v65)
    {
      v66 = v63[2];
      *v63 = v66;
    }

    v67 += v69;
    v62 = __OFSUB__(v64, v69);
    v64 -= v69;
  }

  while (!((v64 < 0) ^ v62 | (v64 == 0)));
  v70 = qword_2A1454258;
  v71 = LODWORD(v157[0]) - p_src;
  v72 = *(qword_2A1454258 + 24);
  v73 = *qword_2A1454258;
  v74 = &__src;
  do
  {
    v75 = v72 - v73;
    if (v71 >= v75)
    {
      v76 = v75;
    }

    else
    {
      v76 = v71;
    }

    memcpy(v73, v74, v76);
    v73 = (*v70 + v76);
    *v70 = v73;
    v72 = v70[3];
    if (v73 >= v72)
    {
      v73 = v70[2];
      *v70 = v73;
    }

    v74 += v76;
    v62 = __OFSUB__(v71, v76);
    v71 -= v76;
  }

  while (!((v71 < 0) ^ v62 | (v71 == 0)));
  GNSS_Event_Log_Ctl(qword_2A1454250);
  GNSS_Nav_Debug_Ctl(qword_2A1454248);
  GNSS_GNB_Debug_Ctl(qword_2A1454258);
  result = 1;
LABEL_101:
  v77 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Horz_Meas_Update(unsigned int a1, double *a2, double *a3, unsigned int a4, double *a5, _BOOL8 a6, _WORD *a7)
{
  v40[33] = *MEMORY[0x29EDCA608];
  if (*(a5 + 1) >= 1 && (*(a5 + 16) = 0, *a5 == 1))
  {
    v36 = 0.0;
    v11 = a5[8];
    v40[0] = 0.0;
    sinval = 0.0;
    cosval = 1.0;
    if (!R8_EQ(a5 + 8, v40))
    {
      v14 = __sincos_stret(v11);
      cosval = v14.__cosval;
      v40[0] = 1.57079633;
      if (R8_EQ(a5 + 8, v40))
      {
        cosval = 0.0;
        sinval = 1.0;
      }

      else
      {
        sinval = v14.__sinval;
      }
    }

    v15 = *a2;
    v16 = __sincos_stret(*a2);
    v17 = 0;
    v18 = 1.0 / sqrt(v16.__sinval * v16.__sinval * -0.00669437999 + 1.0);
    v19 = a2[2];
    v20 = v16.__cosval * (v19 + v18 * 6378137.0);
    if (v20 < 1.0)
    {
      v20 = 1.0;
    }

    v21 = a5[4];
    a5[11] = (v15 - a5[3]) * (v19 + v18 * (v18 * v18) * 6335439.33);
    a5[12] = (a2[1] - v21) * v20;
    v22 = 1;
    v23 = a5 + 6;
    do
    {
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v24 = a3[2];
      v25 = a3[1];
      *(v37 + a1) = sinval * a3[3] + cosval * *a3;
      v26 = a3[5];
      *(v37 + a1 + 1) = sinval * a3[4] + cosval * v25;
      v27 = v22;
      *(&v37[1] + a1) = sinval * v26 + cosval * v24;
      *(v37 + a4) = sinval * a5[12] + cosval * a5[11];
      umeas(a6, a4, v23[v17], v37, v40, v39, &v36, a5[13]);
      v28 = v36;
      if (v36 <= 0.0)
      {
        *a5 = 0;
        *(a5 + 16) = 1;
        ++*a7;
      }

      else
      {
        v28 = v23[v17] * (v36 * (v40[a4] * v40[a4]));
      }

      v22 = 0;
      a5[v17 + 14] = v28;
      v29 = -sinval;
      v17 = 1;
      sinval = cosval;
      cosval = v29;
    }

    while ((v27 & 1) != 0);
    v30 = *a5;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x29EDCA608];
  return v30 & 1;
}

void NK_Final_Check(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8)
{
  v12 = a2;
  v432 = *MEMORY[0x29EDCA608];
  v14 = a2 + 60144;
  v407 = (a2 + 1704);
  *(a2 + 79624) = *(a2 + 1704);
  *(a2 + 79640) = *(a2 + 1720);
  v375 = (a2 + 1816);
  *(a2 + 79648) = *(a2 + 1816);
  *(a2 + 79664) = *(a2 + 1832);
  v15 = *(a2 + 62121);
  v16 = v15 - *(a2 + 62122);
  v18 = v15 > 1 && v16 == 2;
  v19 = v15 - v18;
  v402 = *(a2 + 60216) == 1 && (*(a2 + 60224) - 3) < 2;
  v381 = (a1 + 27116);
  if (*(a2 + 1868) > 1)
  {
    v27 = *(a1 + 27120);
    v20 = v19;
    if (v27 >= 0x3D)
    {
      if (v27 < 0x12D)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      *(a2 + 1868) = v28;
      v20 = v19;
    }
  }

  else
  {
    v20 = v15 - v18;
    if (v19 <= 3)
    {
      v21 = 0;
      v22 = 0;
      v23 = a2 + 7080;
      do
      {
        if (*(v23 + v21) == 1 && (*(v23 + 4 * v21 + 256) - 31) < 0xFFFFFFE2)
        {
          ++v22;
        }

        ++v21;
      }

      while (v21 != 128);
      v25 = v22 > 1 && v16 == 2;
      v20 = v22 - v25;
    }

    if (v20 >= 4 && (*(a1 + 240) & 1) != 0)
    {
      goto LABEL_31;
    }

    if (*(a2 + 60216) && *(a2 + 60220) == 1)
    {
      v26 = !v402;
      if (*(a2 + 60264) > 900000000.0)
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0)
      {
LABEL_31:
        *(a2 + 1868) = 2;
        *(a1 + 243) = 0;
      }
    }
  }

  v373 = v19;
  if ((*(a1 + 136) & 1) == 0)
  {
    v29 = 0;
    while (*(a2 + 61432 + v29) <= 1.0e18)
    {
      v29 += 8;
      if (v29 == 96)
      {
        goto LABEL_43;
      }
    }

    *(a1 + 136) = 1;
    *(a1 + 140) = 80;
  }

LABEL_43:
  v30 = *&ClkBiasOrigVar[*(a2 + 1536)];
  v31 = (a2 + 61432);
  *(a2 + 63304) = v30;
  *(a2 + 63296) = 0;
  *(a2 + 63312) = 0;
  *(a2 + 63300) = 255;
  v32 = (a2 + 1632);
  *&v426 = 0;
  v378 = v20;
  if (R8_EQ((a2 + 1632), &v426) || (v33 = *v31, *v31 >= v30))
  {
    v34 = 0;
    v35 = 0.0;
  }

  else
  {
    v34 = 1;
    *(v14 + 3152) = 1;
    v35 = *v32;
    *(v14 + 3168) = *v32;
    *(v14 + 3156) = 0;
    *(v14 + 3160) = v33;
    v30 = v33;
  }

  v36 = (v12 + 1640);
  *&v426 = 0;
  v390 = a3;
  if (!R8_EQ((v12 + 1640), &v426))
  {
    v37 = *(v14 + 1296);
    if (v37 < v30)
    {
      v34 = 2;
      *(v14 + 3152) = 2;
      v35 = *v36;
      *(v14 + 3168) = *v36;
      *(v14 + 3156) = 1;
      *(v14 + 3160) = v37;
      v30 = v37;
    }
  }

  v38 = (v12 + 1648);
  *&v426 = 0;
  if (!R8_EQ((v12 + 1648), &v426))
  {
    v40 = *(v14 + 1304);
    if (v40 < v30)
    {
      *(v14 + 3152) = 4;
      v35 = *v38;
      *(v14 + 3168) = *v38;
      *(v14 + 3156) = 2;
      *(v14 + 3160) = v40;
      *&v426 = 0;
      if (R8_EQ((v14 + 3168), &v426))
      {
        goto LABEL_100;
      }

      v41 = 0;
      v34 = 4;
LABEL_59:
      *&v426 = 0;
      v42 = 0.0;
      if (!R8_EQ((v12 + 1632), &v426))
      {
        v42 = vabdd_f64(v35, *v32);
      }

      if (v41)
      {
        v43 = 0.0;
        v34 = 2;
LABEL_71:
        *&v426 = 0;
        v44 = 0.0;
        if (!R8_EQ((v12 + 1648), &v426))
        {
          v44 = vabdd_f64(v35, *v38);
        }

        if (v34 != 2)
        {
          *&v426 = 0;
          if (R8_EQ((v12 + 1640), &v426) || (v423[0] = 0.0, R8_EQ((v12 + 1648), v423)))
          {
            *&v426 = 0;
            if (!R8_EQ((v12 + 1640), &v426))
            {
              goto LABEL_77;
            }

LABEL_81:
            *&v426 = 0;
            if (R8_EQ((v12 + 1648), &v426))
            {
              goto LABEL_100;
            }

            v45 = 4;
            goto LABEL_99;
          }

          if (v43 <= v44)
          {
            v48 = 2;
          }

          else
          {
            v48 = 4;
          }

          if (v43 <= v44)
          {
            v49 = 4;
          }

          else
          {
            v49 = 2;
          }

LABEL_98:
          NK_Final_Check_ClkBias(v48, a1, v12);
          v45 = v49;
          goto LABEL_99;
        }

        *&v426 = 0;
        if (R8_EQ((v12 + 1632), &v426) || (v423[0] = 0.0, R8_EQ((v12 + 1648), v423)))
        {
          *&v426 = 0;
          if (R8_EQ((v12 + 1632), &v426))
          {
            goto LABEL_81;
          }

LABEL_83:
          v45 = 1;
          goto LABEL_99;
        }

        v46 = v42 > v44;
        v47 = 4;
LABEL_92:
        if (v46)
        {
          v48 = v47;
        }

        else
        {
          v48 = 1;
        }

        if (v46)
        {
          v49 = 1;
        }

        else
        {
          v49 = v47;
        }

        goto LABEL_98;
      }

      goto LABEL_63;
    }
  }

  if (!v34)
  {
    goto LABEL_100;
  }

  *&v426 = 0;
  if (R8_EQ((v14 + 3168), &v426))
  {
    goto LABEL_100;
  }

  if (v34 != 1)
  {
    v34 = 2;
    v41 = 1;
    goto LABEL_59;
  }

  v42 = 0.0;
LABEL_63:
  *&v426 = 0;
  v43 = 0.0;
  if (!R8_EQ((v12 + 1640), &v426))
  {
    v43 = vabdd_f64(v35, *v36);
  }

  if (v34 != 4)
  {
    goto LABEL_71;
  }

  *&v426 = 0;
  if (!R8_EQ((v12 + 1632), &v426))
  {
    v423[0] = 0.0;
    if (!R8_EQ((v12 + 1640), v423))
    {
      v46 = v42 > v43;
      v47 = 2;
      goto LABEL_92;
    }
  }

  *&v426 = 0;
  if (!R8_EQ((v12 + 1632), &v426))
  {
    goto LABEL_83;
  }

  *&v426 = 0;
  if (!R8_EQ((v12 + 1640), &v426))
  {
LABEL_77:
    v45 = 2;
LABEL_99:
    NK_Final_Check_ClkBias(v45, a1, v12);
  }

LABEL_100:
  v392 = (v12 + 1640);
  v50 = *(v12 + 1656);
  if (fabs(v50) > 0.000000066712819)
  {
    *(v12 + 1656) = 0;
    Core_Load_Clk_L5L1(v423, (v12 + 1656));
    EvCrt_v("NK_Final_Check:  Reseting (L5-L1) delta Clock Bias  %f m  Unc %f m  to  %f m  Unc %f m ", v50 * 299792458.0, *(v14 + 1504), *(v12 + 1656) * 299792458.0, 3.0);
    v51 = 9.0 - *(v14 + 1312);
    if (v51 > 0.0)
    {
      LODWORD(v425[0]) = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v426 = 0u;
      v427 = 0u;
      Apply_Q_Boost(v51, 3u, 1u, (a1 + 976), v425, &v426);
      *(v14 + 1312) = 0x4022000000000000;
      *(v14 + 1408) = 0x4022000000000000;
      *(v14 + 1504) = 0x4008000000000000;
    }

    *(a1 + 20136) = 0;
    *(a1 + 20144) = 0;
  }

  v52 = *(v12 + 1664);
  v53 = v402;
  if (fabs(v52) <= 0.000006)
  {
    if (*v14 == 1)
    {
      v55 = (*(v14 + 24) + v52 * -299792458.0) * (*(v14 + 24) + v52 * -299792458.0);
      v56 = *(v14 + 40);
      if (v55 / v56 > 25.0)
      {
        if (*(v14 + 2377) < 4u || *(v12 + 1881) < 0x1Au || *(v14 + 2400) != 1 || *(v14 + 1320) >= v56 || *(v12 + 1868) < 2)
        {
          *(v12 + 1664) = a7;
          v395 = 1;
          *(a1 + 136) = 1;
          v54 = 71;
          goto LABEL_106;
        }

        *v14 = 0;
        *(p_NA + 6) = 0;
        EvCrt_v("NK_Final_Check: Ext ClkD is ignored in favor of PE estimated ClkD.");
      }
    }

    v395 = 0;
    goto LABEL_116;
  }

  *(v12 + 1664) = a7;
  v395 = 1;
  *(a1 + 136) = 1;
  v54 = 81;
LABEL_106:
  *(a1 + 140) = v54;
LABEL_116:
  v408 = 1.0e12;
  v409 = 0x426D1A94A2000000;
  v57 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  if ((v402 & *(v14 + 72)) == 1)
  {
    v60 = *(v14 + 144);
    v58 = 0.0;
    if (v60 < 100000000.0)
    {
      v61 = cos(*(v14 + 136));
      v62 = *(v14 + 152);
      v63 = v61 * v61 * (v60 - v62);
      v64 = v62 + v63;
      v65 = 1.0;
      if (v64 < 1.0)
      {
        v64 = 1.0;
      }

      v66 = v60 - v63;
      if (v66 >= 1.0)
      {
        v65 = v66;
      }

      v67 = v64 + 1000000.0;
      v68 = v65 + 1000000.0;
      v408 = v65 + 1000000.0;
      v409 = *&v67;
      v69 = *(v12 + 1704) - *(v14 + 96);
      if (v69 >= 1.57079633)
      {
        v70 = 3.14159265;
      }

      else
      {
        if (v69 >= -1.57079633)
        {
          goto LABEL_127;
        }

        v70 = -3.14159265;
      }

      v69 = v70 - v69;
LABEL_127:
      v71 = v69 * 6378137.0 * (v69 * 6378137.0);
      v72 = *(v12 + 1712) - *(v14 + 104);
      if (v72 >= 3.14159265)
      {
        v73 = -6.28318531;
      }

      else
      {
        if (v72 >= -3.14159265)
        {
LABEL_132:
          v58 = v71 / v67;
          v59 = v72 * 6378137.0 * *(v12 + 1808) * (v72 * 6378137.0 * *(v12 + 1808)) / v68;
          goto LABEL_133;
        }

        v73 = 6.28318531;
      }

      v72 = v72 + v73;
      goto LABEL_132;
    }
  }

LABEL_133:
  v382 = (v12 + 1632);
  v376 = (v12 + 1648);
  if (*(v14 + 200) == 1)
  {
    v74 = *(v14 + 240);
    v75 = !v402;
    if (v74 >= 250000.0)
    {
      v75 = 1;
    }

    if ((v75 & 1) == 0)
    {
      v76 = *(v12 + 1720) - *(v14 + 224);
      v57 = v76 * v76 / (v74 + 100.0);
    }
  }

  v77 = *(v12 + 1720) - *(v12 + 1728);
  v78 = fmax(v58, v59) > 49.0;
  if (v57 > 64.0)
  {
    v78 = 1;
  }

  v372 = v77 - 60001;
  if ((v77 - 60001) < 0xFFFF0DCF)
  {
    v78 = 1;
  }

  v399 = v78;
  if (v78)
  {
    EvLog_v("NKFC: KF Reset 83:  Position problem !  SVNum %d  LLH %f %f %d m   PosTest %f %f %f", *(v14 + 1977), *(v12 + 1704) * 57.2957795, *(v12 + 1712) * 57.2957795, v77, sqrt(v58), sqrt(v59), sqrt(v57));
    if (*(v12 + 1864) == 1 && (v402 & *(v14 + 72)) == 1)
    {
      v79 = *(v14 + 144);
      if (v79 < 100000000.0)
      {
        *v407 = *(v12 + 60240);
        *(v14 + 1336) = v79;
        *(v14 + 1344) = v79;
        *(v14 + 1432) = v79;
        *(v14 + 1440) = v79;
        v80 = sqrt(v79);
        *(v14 + 1528) = v80;
        *(v14 + 1536) = v80;
      }
    }

    if (*(v14 + 200) == 1)
    {
      v81 = *(v14 + 224);
      v77 = v81 - *(v12 + 1728);
      v82 = *(v14 + 240);
      v83 = sqrt(v82);
    }

    else
    {
      v77 = 0;
      v81 = *(v12 + 1728);
      v83 = 1000.0;
      v82 = 1000000.0;
    }

    *(v12 + 1720) = v81;
    *(v14 + 1352) = v82;
    *(v14 + 1448) = v82;
    *(v14 + 1544) = v83;
    v84 = 1;
    *(a1 + 136) = 1;
    *(a1 + 140) = 83;
  }

  else
  {
    v84 = *(a1 + 136);
  }

  v388 = *(v12 + 1848);
  memset(v411, 0, sizeof(v411));
  v412 = 0u;
  v413 = 0u;
  v414 = 0u;
  v415 = 0u;
  v85 = a8 * 99930819.3 * (a8 * 99930819.3);
  v86 = &loc_29904F000;
  v377 = a5;
  if ((*v14 & 1) == 0)
  {
    v87 = (v14 + 1320);
LABEL_158:
    if (v84)
    {
      v374 = 0;
      v383 = 0;
      *v87 = v85;
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  v87 = (v14 + 1320);
  if (*(v14 + 4) != 1)
  {
    goto LABEL_158;
  }

  v88 = *(v14 + 40);
  v89 = v88 + 225.0;
  v90 = *(v14 + 24);
  v91 = (v90 - *(v12 + 1664) * 299792458.0) * (v90 - *(v12 + 1664) * 299792458.0);
  v92 = v91 / (v88 + 225.0);
  v93 = v88 + v91 * 0.1;
  if (v84)
  {
    if (v92 > 11.0)
    {
      *v87 = v89;
      EvCrt_v("NK_Final_Check: Clock drift check failed", v93);
      v86 = &loc_29904F000;
      v383 = 0;
      *(v12 + 1664) = v90 / 299792458.0;
      v374 = 1;
      goto LABEL_167;
    }

    if (v92 > 1.0)
    {
LABEL_164:
      v374 = 0;
      v383 = 0;
      *v87 = v93;
      goto LABEL_167;
    }
  }

  else
  {
    if (v92 > 16.0)
    {
      *v87 = v89;
      *&v412 = v88 + 225.0;
      EvCrt_v("NK_Final_Check: Clock drift check failed", v93);
      v86 = &loc_29904F000;
      *(v12 + 1664) = v90 / 299792458.0;
      *(a1 + 176) = 4;
      v374 = 1;
      v383 = 1;
      goto LABEL_167;
    }

    if (*v87 > v93)
    {
      goto LABEL_164;
    }
  }

LABEL_166:
  v374 = 0;
  v383 = 0;
LABEL_167:
  v94 = *(a1 + 136);
  if ((*v14 & 1) == 0)
  {
    if (*(a1 + 136))
    {
      goto LABEL_190;
    }

    if (*v87 > v85 + v85)
    {
      if (*(v12 + 1868) <= 1)
      {
        v94 = 1;
        *(a1 + 136) = 1;
        v95 = 72;
LABEL_183:
        *(a1 + 140) = v95;
        v98 = 1;
LABEL_191:
        v385 = v98;
        goto LABEL_192;
      }

      *(v12 + 1664) = a7;
      *v87 = v85;
      *&v412 = v85;
      *(a1 + 176) = 5;
      v383 = 1;
    }

LABEL_175:
    v96 = *(a1 + 20);
    if (v96 > 8)
    {
      v97 = 1000000000.0;
    }

    else
    {
      v97 = dbl_299053800[v96];
    }

    if (*(v14 + 1360) <= v97 && *(v14 + 1368) <= v97 && *(v14 + 1376) <= v97)
    {
      v94 = 0;
    }

    else
    {
      if (*(v12 + 1868) < 2)
      {
        v94 = 1;
        *(a1 + 136) = 1;
        v95 = 73;
        goto LABEL_183;
      }

      v99 = &v414 + 1;
      v100 = 3;
      v101 = v12;
      do
      {
        v101[198] = 0;
        v101[227] = 0;
        v102 = 0x4197D78400000000;
        v101[201] = 0;
        if (v96 <= 8)
        {
          v102 = *&dbl_299053848[v96];
        }

        *v99++ = v102;
        v101[7688] = v102;
        ++v101;
        --v100;
      }

      while (v100);
      v94 = 0;
      *(v12 + 1856) = 0;
      *(v12 + 1840) = 0u;
      *(a1 + 176) = 6;
      v383 = 1;
    }

LABEL_190:
    v98 = v399;
    goto LABEL_191;
  }

  v385 = v399;
  if (!*(a1 + 136))
  {
    goto LABEL_175;
  }

LABEL_192:
  if (v77 <= -501)
  {
    v103 = (v77 * v77) / *(v14 + 1352) / 9.0;
    if (v103 > 1.2)
    {
      v104 = 0;
      v105 = v103 + -1.0;
      v106 = v12 + 61480;
      do
      {
        v107 = *(v106 + v104 * 8);
        v423[v104] = v105 * v107;
        *(v106 + v104 * 8) = v107 + v105 * v107;
        ++v104;
      }

      while (v104 != 3);
      if (v77 > -1001)
      {
        *(v14 + 1576) = *(a1 + 15520) + (*(v14 + 1576) - *(a1 + 15520)) * v103;
        v108 = (a1 + 15496);
        v109 = (v14 + 1528);
        v110 = 3;
        do
        {
          v111 = *v108++;
          v112 = *(v109 - 24) + v111;
          *(v109 - 12) = v112;
          *v109++ = sqrt(v112);
          --v110;
        }

        while (v110);
        if (!v94)
        {
          v430 = 0u;
          v431 = 0u;
          v428 = 0u;
          v429 = 0u;
          v426 = 0u;
          v427 = 0u;
          v113 = v423[0];
          if (v423[0] <= v423[1])
          {
            v113 = v423[1];
          }

          if (v113 <= v423[2])
          {
            v114 = v423[2];
          }

          else
          {
            v114 = v113;
          }

          for (i = 6; i != 9; ++i)
          {
            *(&v426 + i) = 0x3FF0000000000000;
            if (v114 > 0.0)
            {
              v116 = v86;
              rnk1_core((a1 + 976), i, v114, &v426, v425);
              v86 = v116;
            }

            *(&v426 + i) = 0;
          }

          LOBYTE(v94) = *(a1 + 136);
          v53 = v402;
        }
      }

      else
      {
        *(v12 + 1720) = *(v12 + 1728);
        if (*(v12 + 1868) > 1)
        {
          if (v94)
          {
            LOBYTE(v399) = 1;
          }

          else
          {
            v413 = *(v14 + 1336);
            *&v414 = *(v14 + 1352);
            *(a1 + 176) = 7;
            LOBYTE(v399) = 1;
            v383 = 1;
          }
        }

        else
        {
          LOBYTE(v94) = 1;
          *(a1 + 136) = 1;
          *(a1 + 140) = 74;
          LOBYTE(v399) = 1;
          v385 = 1;
        }
      }
    }
  }

  if (*(v12 + 1864))
  {
    v117 = 4.0e10;
  }

  else
  {
    v117 = 1.0e16;
  }

  v393 = v12;
  v391 = v12 + 60072;
  v387 = v12 + 60224;
  if (*(v14 + 200))
  {
    v118 = (v14 + 1352);
    if (*(v14 + 204) == 1 && v53)
    {
      v119 = *(v14 + 240);
      v120 = v119 * 2.25 + 5625.0;
      v121 = *(v14 + 224);
      v122 = (v121 - *(v12 + 1720)) * (v121 - *(v12 + 1720));
      v123 = v122 / v120;
      v124 = v119 + v122 * v86[402];
      v380 = (v14 + 1352);
      if (v94)
      {
        if (v123 > 11.0)
        {
          v125 = v86;
          *(v12 + 1720) = v121;
          v126 = (v14 + 1352);
LABEL_228:
          *v126 = v120;
          EvCrt_v("NK_Final_Check: Vertical position check failed");
          *v118 = *v118 / 2.25;
          if (v94)
          {
            v397 = 0;
          }

          else
          {
            *&v414 = *&v414 / 2.25;
            v397 = 1;
          }

          LOBYTE(v399) = 1;
          v127 = v14 + 1288;
          v86 = v125;
          goto LABEL_235;
        }

        if (v123 > 1.0)
        {
LABEL_231:
          v397 = 0;
          *v118 = v124;
          goto LABEL_234;
        }
      }

      else
      {
        if (v123 > 16.0)
        {
          v125 = v86;
          v126 = &v414;
          *(v12 + 1720) = v121;
          *v118 = v120;
          goto LABEL_228;
        }

        if (*v118 > v124)
        {
          goto LABEL_231;
        }
      }

LABEL_233:
      v397 = 0;
      goto LABEL_234;
    }
  }

  else
  {
    v118 = (v14 + 1352);
  }

  v380 = v118;
  if ((v94 & 1) == 0)
  {
    goto LABEL_233;
  }

  v397 = 0;
  *v118 = v117;
LABEL_234:
  v127 = v14 + 1288;
LABEL_235:
  v128 = 0;
  v129 = (v14 + 96);
  v130 = &v409;
  v131 = 1;
  v132 = v86[402];
  do
  {
    v133 = v131;
    v134 = *(v14 + 72);
    if ((v133 & 1) == 0)
    {
      if (*(v14 + 72))
      {
        v135 = *(a1 + 136);
        v143 = (8 * v128) | 0x30;
        v137 = (v127 + v143);
        if (*(v14 + 76) == 1 && v53)
        {
          v138 = *v130;
          v139 = v129[v128];
          v140 = (v411 + v143);
          v142 = v407 + v128;
          v141 = cos(*v129) * 6378137.0;
          if (v141 <= 0.0)
          {
            v149 = (v139 - *v142) * (v139 - *v142);
            v147 = v149 / v138;
            v148 = v138 + v149 * v132;
            if (v135)
            {
LABEL_247:
              if (v147 > 11.0)
              {
                *v142 = v139;
                *v137 = v138;
LABEL_258:
                v53 = v402;
                EvCrt_d("NK_Final_Check: Horizontal position check failed", v128);
                LOBYTE(v399) = 1;
                v127 = v14 + 1288;
                goto LABEL_263;
              }

              v150 = v147 <= 1.0;
LABEL_261:
              v127 = v14 + 1288;
              v53 = v402;
              if (!v150)
              {
                *v137 = v148;
              }

              goto LABEL_263;
            }

LABEL_256:
            if (v147 > 16.0)
            {
              *v142 = v139;
              *v137 = v138;
              v397 = 1;
              *v140 = v138;
              goto LABEL_258;
            }

            v150 = *v137 <= v148;
            goto LABEL_261;
          }

LABEL_243:
          v144 = v139 - *v142;
          v145 = -6.28318531;
          if (v144 >= 3.14159265 || (v145 = 6.28318531, v144 < -3.14159265))
          {
            v144 = v144 + v145;
          }

          v146 = v141 * v144 * (v141 * v144);
          v147 = v146 / v138;
          v148 = v138 + v146 * v132;
          if (v135)
          {
            goto LABEL_247;
          }

          goto LABEL_256;
        }

LABEL_253:
        if (!v135)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if ((*(a1 + 136) & 1) == 0)
        {
          break;
        }

LABEL_252:
        v137 = (v127 + 8 * v128 + 48);
      }

      *v137 = v117;
      goto LABEL_263;
    }

    v135 = *(a1 + 136);
    if (*(v14 + 72))
    {
      v136 = (8 * v128) | 0x30;
      v137 = (v127 + v136);
      if (*(v14 + 76) != 1 || !v53)
      {
        goto LABEL_253;
      }

      v138 = *v130;
      v139 = v129[v128];
      v140 = (v411 + v136);
      v141 = 6378137.0;
      v142 = v407 + v128;
      goto LABEL_243;
    }

    if (v135)
    {
      goto LABEL_252;
    }

LABEL_263:
    v131 = 0;
    v130 = &v408;
    v128 = 1;
  }

  while ((v133 & 1) != 0);
  if (v397)
  {
    *(a1 + 176) = 8;
    v151 = 1;
    v152 = v388;
    v153 = 4.0e10;
    goto LABEL_268;
  }

  v152 = v388;
  v153 = 4.0e10;
  if (v383)
  {
    v151 = v385;
LABEL_268:
    if (*&v413 > 0.0 || *(&v413 + 1) > 0.0 || *&v414 > 0.0)
    {
      v155 = 0;
      v156 = 0.0;
      do
      {
        if (*(&v413 + v155) > v156)
        {
          v156 = *(&v413 + v155);
        }

        if (*(v12 + 61480 + v155) > v156)
        {
          v156 = *(v12 + 61480 + v155);
        }

        v155 += 8;
      }

      while (v155 != 24);
      *&v413 = v156;
      *(&v413 + 1) = v156;
      v154 = 1;
      *&v414 = v156;
    }

    else
    {
      v154 = 1;
    }
  }

  else
  {
    v154 = 0;
    v151 = v385;
  }

  if (!v399)
  {
    if (*(a1 + 136))
    {
      v157 = 0;
LABEL_285:
      v158 = *(a1 + 20);
      if (v158 > 8)
      {
        v159 = 0x4197D78400000000;
      }

      else
      {
        v159 = *&dbl_299053848[v158];
      }

      *(v14 + 1376) = v159;
      *(v12 + 61504) = vdupq_lane_s64(v159, 0);
      v160 = 12;
      v161 = v127;
      do
      {
        v162 = *v161;
        *(v161 + 96) = *v161;
        *(v161 + 192) = vsqrtq_f64(v162);
        v161 += 16;
        v160 -= 2;
      }

      while (v160);
      goto LABEL_293;
    }

    v157 = 0;
    if (v374)
    {
      goto LABEL_293;
    }

LABEL_294:
    if (!v154)
    {
      goto LABEL_325;
    }

LABEL_297:
    v163 = *(a1 + 20);
    if (v163 > 8)
    {
      v164 = 100000000.0;
    }

    else
    {
      v164 = dbl_299053848[v163];
    }

    *&v426 = 0;
    if (R8_EQ(&v413, &v426))
    {
      Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, (v12 + 1736), &v426);
      Comp_ErrorEllipse(*&v426, *(&v426 + 1), v165, v423, &v423[1], &v423[2]);
      v166 = v423[0] * v423[0];
      if (*&v427 > v423[0] * v423[0])
      {
        v166 = *&v427;
      }

      v153 = v166 + v166;
    }

    *&v426 = 0;
    if (R8_EQ(&v414 + 1, &v426))
    {
      v167 = *(v14 + 1360);
      if (*(v14 + 1368) > v167)
      {
        v167 = *(v14 + 1368);
      }

      if (*(v14 + 1376) > v167)
      {
        v167 = *(v14 + 1376);
      }

      v164 = v167 * 1.2;
    }

    v168 = a1 + 976;
    bzero((a1 + 976), 0x270uLL);
    v169 = 0;
    while (1)
    {
      v170 = *(v411 + v169);
      if (v170 <= 0.0)
      {
        if (v169 == 5)
        {
          v171 = *(v14 + 1328);
          if (v171 >= 400.0)
          {
            v172 = v171 * 1.2;
          }

          else
          {
            v172 = v171 * 1.1;
          }

          *(a1 + 1136) = v172;
          goto LABEL_320;
        }

        if ((v169 - 6) <= 2)
        {
          *(v168 + 8 * (((v169 + 2 + (v169 + 2) * v169) >> 1) - 1)) = v153;
          goto LABEL_320;
        }

        if (v169 >= 9)
        {
          *(v168 + 8 * (((v169 + 2 + (v169 + 2) * v169) >> 1) - 1)) = v164;
          goto LABEL_320;
        }

        v170 = *(v127 + 8 * v169) * 1.2;
      }

      *(v168 + 8 * (((v169 + 2 + (v169 + 2) * v169) >> 1) - 1)) = v170;
LABEL_320:
      if (++v169 == 12)
      {
        goto LABEL_325;
      }
    }
  }

  Geo2ECEF(v407, &WGS84_Datum, (v12 + 1560));
  if (*(a1 + 136) == 1)
  {
    *(v12 + 1600) = 0u;
    *(v12 + 1584) = 0u;
    *v375 = 0u;
    v375[1] = 0u;
    v375[2] = 0u;
    v157 = 1;
    goto LABEL_285;
  }

  v157 = 1;
LABEL_293:
  if (*(a1 + 244))
  {
    goto LABEL_294;
  }

  *(a1 + 244) = 1;
  if (v154)
  {
    goto LABEL_297;
  }

LABEL_325:
  v173 = v395 | v151;
  v174 = a1 + 24576;
  if ((v395 | v151) != 1)
  {
    goto LABEL_397;
  }

  v175 = *(a1 + 243);
  *(a1 + 243) = v175 + 1;
  if (*v381 == 1)
  {
    *v381 = 0;
  }

  v176 = *(v12 + 1868);
  if (v176 > 1)
  {
    v177 = a4;
    if ((v175 + 1) < 0x3Cu)
    {
      goto LABEL_339;
    }

LABEL_333:
    *(a1 + 14320) = 0u;
    *(a1 + 14304) = 0u;
    *(a1 + 14288) = 0u;
    *(a1 + 14272) = 0u;
    *(a1 + 14256) = 0u;
    *(a1 + 14240) = 0u;
    *(a1 + 14224) = 0u;
    *(a1 + 14208) = 0u;
    *(v12 + 1876) = 2;
    if ((*(v177 + 444) & 1) == 0)
    {
      ++*(v177 + 446);
    }

    v178 = 0;
    *(v177 + 444) = 1;
    *&v179 = 0x1111111111111111;
    *(&v179 + 1) = 0x1111111111111111;
    *(v177 + 448) = v179;
    *(v177 + 464) = v179;
    *(v177 + 480) = v179;
    *(v177 + 496) = v179;
    *(v177 + 512) = v179;
    *(v177 + 528) = v179;
    *(v177 + 544) = v179;
    *(v177 + 560) = v179;
    v180 = vld1q_dup_f32(v12);
    do
    {
      *(v177 + 576 + v178) = v180;
      v178 += 16;
    }

    while (v178 != 512);
    EvCrt_v("ChanReset ALL : NKFC1  Num_Prob_Epochs %d  poss_reset %d  poss_root %d  Count %d", *(a1 + 243), v151, v395, *(v177 + 446));
    *(a1 + 136) = 1;
    *(a1 + 140) = 75;
    *(a1 + 243) = 0;
    *(v12 + 1864) = 0;
    v381[5] = 0;
    *(a1 + 240) = 256;
    *(v12 + 1868) = 0;
    *(v12 + 24) = 0;
    *(v12 + 1640) = 0;
    *(v12 + 1648) = 0;
    v382->f64[0] = 0.0;
    if (*(v12 + 20) >= 6)
    {
      *(v12 + 20) = 5;
    }

    goto LABEL_397;
  }

  v177 = a4;
  if (!v381[5] && (v175 + 1) > 0x3Bu)
  {
    goto LABEL_333;
  }

LABEL_339:
  if (!*(v177 + 4) && (v372 < 0xFFFF0DCF || (*(a1 + 241) & 1) != 0))
  {
    if (*(v12 + 20) >= 10)
    {
      *(v12 + 20) = 9;
    }

    if (v176 < 2)
    {
      if ((v151 & 1) == 0)
      {
        if ((v175 + 1) <= 9u)
        {
          *(a1 + 243) = 10;
        }

        *(v12 + 1864) = 0;
        *(a1 + 240) = 0;
      }

      goto LABEL_397;
    }

    v181 = (v175 + 1);
    v182 = v377;
    if (v181 > 7)
    {
      v184 = 0;
    }

    else
    {
      if (v181 >= 6)
      {
        v181 = 6;
      }

      if (*(v12 + 1864))
      {
        v175 = v181;
      }

      v183 = *(v14 + 2604) >> 4;
      v231 = v183 >= 0xC35;
      v184 = v183 < 0xC35;
      v185 = &BN_Tolerance;
      if (v231)
      {
        v185 = &unk_2990537F7;
      }

      if (v175 <= 2)
      {
        v184 = 0;
      }

      v403 = v185[v175];
      if (v403 != 100)
      {
        v384 = v184;
        goto LABEL_378;
      }
    }

    if ((*(a1 + 28) & 1) != 0 || *(v12 + 1864) == 1)
    {
      *(a1 + 14320) = 0u;
      *(a1 + 14304) = 0u;
      *(a1 + 14288) = 0u;
      *(a1 + 14272) = 0u;
      *(a1 + 14256) = 0u;
      *(a1 + 14240) = 0u;
      *(a1 + 14224) = 0u;
      v186 = -128;
      *(a1 + 14208) = 0u;
      do
      {
        v187 = *(v182 + 96);
        if (Is_Legal(v187) && *(v182 + 1248) >= 4)
        {
          *(a4 + 8 + GNSS_Id_To_Num_Prn_Idx(v187)) = 1;
          *(a4 + 226 + GNSS_Id_To_Num_Prn_Idx(*(v182 + 96))) = v186 + 0x80;
          v12 = v393;
        }

        v182 += 4;
        v231 = __CFADD__(v186++, 1);
      }

      while (!v231);
      if ((*(a4 + 444) & 1) == 0)
      {
        ++*(a4 + 446);
      }

      v188 = 0;
      *(a4 + 444) = 1;
      *&v189 = 0x1111111111111111;
      *(&v189 + 1) = 0x1111111111111111;
      *(a4 + 448) = v189;
      *(a4 + 464) = v189;
      *(a4 + 480) = v189;
      *(a4 + 496) = v189;
      *(a4 + 512) = v189;
      *(a4 + 528) = v189;
      *(a4 + 544) = v189;
      *(a4 + 560) = v189;
      v190 = vld1q_dup_f32(v12);
      v174 = a1 + 24576;
      v173 = 1;
      do
      {
        *(a4 + 576 + v188) = v190;
        v188 += 16;
      }

      while (v188 != 512);
      EvCrt_v("ChanReset ALL : NKFC2  Num_Prob_Epochs %d  silly_altit %d  SuffPosEverSet %d  Count %d", *(a1 + 243), v372 < 0xFFFF0DCF, *(a1 + 28), *(a4 + 446));
      *(v12 + 1876) = 2;
      *(a1 + 243) = 0;
      *(v12 + 1868) = 0;
      goto LABEL_397;
    }

    v384 = v184;
    v403 = 100;
LABEL_378:
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v194 = 0;
    v195 = v377 + 96;
    v398 = a1 + 14208;
    v396 = a4 + 8;
    v389 = a4 + 226;
    v386 = a4 + 576;
    do
    {
      if (*(v393 + v191 + 7080) == 1)
      {
        v196 = *(v182 + v191 + 1760);
        if (v196 <= v193 || v193 == 0)
        {
          v194 = v191;
          v193 = *(v182 + v191 + 1760);
        }

        if (v196 < v403)
        {
          v400 = v194;
          v198 = v195;
          v199 = v182 + 4 * v191;
          v200 = *(v199 + 96);
          v201 = Is_Legal(v200);
          v192 = 1;
          if (v201)
          {
            v202 = GNSS_Id_To_Num_Prn_Idx(v200);
            *(v398 + v191) = 0;
            *(v396 + v202) = 1;
            *(v389 + v202) = v191;
            *(a4 + v191 + 448) = 17;
            *(v386 + 4 * v191) = *v393;
            GNSS_SV_Str = Get_GNSS_SV_Str(*(v199 + 96));
            EvCrt_v("ChanReset %d : NKFC3  %s  SNR %d < %d tolerance,  problem_epochs %d", v191, GNSS_SV_Str, v196, v403, *(a1 + 243));
            v192 = 1;
          }

          v182 = v377;
          v174 = a1 + 24576;
          v195 = v198;
          v194 = v400;
        }
      }

      ++v191;
    }

    while (v191 != 128);
    if (v384 && (v204 = v193, v193 >= v403))
    {
      v205 = *(v195 + 4 * v194);
      v401 = v195;
      v12 = v393;
      v173 = 1;
      if (Is_Legal(v205))
      {
        v206 = GNSS_Id_To_Num_Prn_Idx(v205);
        *(v398 + v194) = 0;
        *(v396 + v206) = 1;
        *(v389 + v206) = v194;
        *(a4 + 448 + v194) = 17;
        *(v386 + 4 * v194) = *v393;
        v207 = Get_GNSS_SV_Str(*(v401 + 4 * v194));
        EvCrt_v("ChanReset %d : NKFC4  %s  reset_lowest:  lowest SNR %d >= %d tolerance", v194, v207, v204, v403);
      }
    }

    else
    {
      v12 = v393;
      v173 = 1;
      if ((v192 & 1) == 0)
      {
        goto LABEL_397;
      }
    }

    *(v12 + 1876) = 1;
  }

LABEL_397:
  if (*(a4 + 444) == 1)
  {
    v208 = *(a4 + 446);
    if (*(a4 + 446))
    {
      if (!*(v12 + 1872) && *(v14 + 72) == 1 && *(v14 + 76) == 1 && (*v387 - 3) <= 1)
      {
        *v387 = 2;
        *(p_NA + 632) = 2;
        EvCrt_v("NK_Final_Check: Deprecating Ref Pos Trust to Low,  >= %d epochs with ChanReset ALL events during P2F", v208);
      }
    }
  }

  if (*(v387 + 1700) < 4 || *(v387 + 1704) < 4 || a6 != 2)
  {
    goto LABEL_420;
  }

  v209 = *(a1 + 136);
  if ((v209 & 1) == 0)
  {
    v210 = *(v387 + 1280) + *(v387 + 1288);
    v211 = *(a1 + 20);
    if (v210 >= 2.56)
    {
      if (v211 == 4 && v210 * 9.0 + v152 * v152 < 169.0)
      {
        goto LABEL_415;
      }

      if (v152 <= 26.0)
      {
        goto LABEL_420;
      }
    }

    else if (v152 <= 13.0)
    {
      if (v152 <= 3.0)
      {
        if (v152 < 1.5)
        {
          v212 = 2;
LABEL_418:
          if (v212 != v211)
          {
            *(a1 + 20) = v212;
            NK_Set_Dynamics(*(a1 + 20), a1 + 32);
            v213 = *(v12 + 1664);
            NK_Set_XO_PN(v390, a1 + 32);
          }
        }

LABEL_420:
        v209 = *(a1 + 136);
        goto LABEL_421;
      }

LABEL_415:
      v212 = 3;
      goto LABEL_418;
    }

    v212 = 4;
    goto LABEL_418;
  }

LABEL_421:
  if (!v209 && (*(v387 + 1448) >= 3000.0 || *(v387 + 1456) >= 3000.0 || *(v387 + 1464) >= 3000.0))
  {
    *(a1 + 241) = 1;
  }

  if (v157)
  {
    Geo2ECEF(v407, &WGS84_Datum, (v12 + 1560));
    v209 = *(a1 + 136);
  }

  if (!v209)
  {
    v217 = *(&v415 + 1);
    v218 = *&v415;
    v219 = *(&v414 + 1);
    v220 = (v387 + 1304);
    v221 = -12;
    v222 = v411;
    do
    {
      v223 = *v222;
      if (*v222 > 0.0)
      {
        v224 = v221 + 12;
        if (v221 + 12 > 5)
        {
          if (v224 > 8)
          {
            if (v221 == -3)
            {
              *(v387 + 1376) = v219 + *(v12 + 1552) * 0.0001;
            }

            else if (v221 == -2)
            {
              *(v387 + 1384) = v218 + *(v12 + 1552) * 0.0001;
            }

            else
            {
              *(v387 + 1392) = v217 + *(v12 + 1552) * 0.0001;
            }
          }

          else if (v221 == -6)
          {
            *(v387 + 1496) = *(a1 + 15520);
            *(v387 + 1352) = *(v387 + 1256) + *(a1 + 15496);
          }

          else if (v221 == -5)
          {
            *(v387 + 1360) = *(v387 + 1264) + *(a1 + 15504);
          }

          else
          {
            *(v387 + 1368) = *v380 + *(a1 + 15512);
          }
        }

        else
        {
          if (v224 > 2)
          {
            if (v221 == -9)
            {
              v223 = v223 + *(a1 + 15488) * 0.0001;
            }

            else if (v221 == -8)
            {
              v223 = v223 + *(v12 + 1552) * 0.01;
            }
          }

          else
          {
            v223 = v223 + *(a1 + 15488);
          }

          *v220 = v223;
        }

        v220[12] = sqrt(*v220);
      }

      ++v220;
      ++v222;
      v231 = __CFADD__(v221++, 1);
    }

    while (!v231);
  }

  if ((*(v12 + 1864) & 1) == 0 && *(v14 + 72) == 1 && *(v14 + 200) == 1 && ((*(v14 + 76) - 1) < 2 || *(a1 + 240) == 1))
  {
    *(v12 + 1864) = 1;
  }

  v214 = *(v391 + 1600);
  if (v214 <= *(v391 + 1608))
  {
    v214 = *(v391 + 1608);
  }

  if (v214 <= *(v391 + 1616))
  {
    v215 = *(v391 + 1616);
  }

  else
  {
    v215 = v214;
  }

  v216 = *(a1 + 243);
  if (!*(a1 + 243))
  {
    if (!v209)
    {
      goto LABEL_473;
    }

    goto LABEL_530;
  }

  if (v209)
  {
    goto LABEL_530;
  }

  if (*(v174 + 2540) >= 4u && v215 <= 0xC7 && (*(v391 + 2474) & 1) != 0 && v373 >= 5)
  {
    v216 = 0;
    *(a1 + 243) = 0;
  }

LABEL_473:
  v225 = *(v12 + 1868);
  if (v225 > 2)
  {
    v226 = 1;
  }

  else
  {
    v226 = v157;
  }

  if ((v226 & 1) == 0)
  {
    if (*(a1 + 241))
    {
      goto LABEL_530;
    }

    v227 = *(v12 + 20);
    if (v227 < 7 || *(v391 + 2474) != 1 || !v373)
    {
      goto LABEL_530;
    }

    v228 = *(v174 + 2540);
    if ((v215 > 0x63 || v228 <= 3) && (v215 > 0x45 || v228 <= 2))
    {
      v231 = v215 <= 0x27 && v228 >= 2;
      if (!v231)
      {
        goto LABEL_530;
      }
    }

    v232 = 0;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v237 = v12 + 7080;
    v39 = 2146433054;
    do
    {
      v238 = *(v237 + 4 * v232 + 256);
      v46 = v238 > 0x1E;
      v239 = (1 << v238) & 0x7FEFF81E;
      if (v46 || v239 == 0)
      {
        if (*(v237 + v232) == 1 && *(v12 + 57 + v232) == 1)
        {
          v241 = *(v377 + 1760 + v232);
          if (v241 > 0x21)
          {
            ++v236;
          }

          if (v241 > 0x17)
          {
            ++v235;
          }

          if (v241 > 0xA)
          {
            ++v234;
          }
        }
      }

      else
      {
        ++v233;
      }

      ++v232;
    }

    while (v232 != 128);
    if (v233 > 2)
    {
      goto LABEL_530;
    }

    if (*(v14 + 72) == 1)
    {
      v242 = *(v14 + 76);
      if (v242 == 2)
      {
        if (*(v391 + 216) <= 900000000.0)
        {
          v244 = 1;
          goto LABEL_523;
        }
      }

      else if (v242 == 1)
      {
        v243 = *(v391 + 216);
        if (v243 <= 8100000000.0)
        {
          if (v243 > 900000000.0)
          {
            v244 = 1;
          }

          else
          {
            v244 = 2;
          }

          if (v243 <= 9000000.0)
          {
            ++v244;
          }

LABEL_523:
          v245 = *v391 == 1 && *(v391 + 4) == 1 && *(v391 + 32) <= 900000000.0 || v227 > 9;
          v246 = v244 - v233 + v245;
          v225 = 3;
          if (v246 + v236 <= 3 && v246 + v235 <= 4 && v246 + v234 <= 5)
          {
LABEL_530:
            v225 = *(v12 + 1868);
            goto LABEL_531;
          }

LABEL_545:
          *(v12 + 1868) = v225;
          goto LABEL_546;
        }
      }
    }

    v244 = 0;
    goto LABEL_523;
  }

LABEL_531:
  if (v225 <= 2)
  {
    if ((v209 & 1) != 0 && *(v174 + 2560))
    {
      *(v174 + 2560) = 0;
    }

    if (v216 >= 3 && v225 == 1 || (v225 != 2 ? (v247 = v378 > 3) : (v247 = 0), v247 ? (v248 = v173) : (v248 = 0), (v248 & 1) != 0))
    {
      v225 = 0;
      goto LABEL_545;
    }

    if (!v225 && v378 >= 3)
    {
      if (v216 <= 2)
      {
        v225 = 1;
        goto LABEL_545;
      }

      v225 = 0;
    }
  }

LABEL_546:
  if (v390[442] != -1)
  {
    if (v225 || *(v174 + 2544) < 0x258u)
    {
      if (v225 == 1 && v152 > 50.0)
      {
        v250 = "NK_Final_Check: Reverting to 'Sky Search' Windows due to low position confidence, and apparent high user speed";
LABEL_557:
        *(v12 + 1864) = 0;
        EvCrt_v(v250);
      }
    }

    else if (*(v14 + 72) != 1 || (v249 = *(v14 + 76), v249 != 1) && (v249 != 2 || *(v391 + 192) >= 2500000000.0))
    {
      v250 = "NK_Final_Check: Reverting to 'Sky Search' Windows due to No Fix within 10 min";
      goto LABEL_557;
    }
  }

  if (*(v387 + 1700) >= 4 && *(v12 + 1868) >= 1 && *(v391 + 2024) <= 100.0)
  {
    v390[444] = 0;
  }

  v251 = v390[442];
  if (v251)
  {
    v252 = v390[444];
    if (v252)
    {
      v253 = *(v12 + 4);
      if (v253 < v252)
      {
        EvCrt_nd("NK_Final_Check: OS ms Time seems to have gone backwards", 2, v39, *(v12 + 4), v252);
        goto LABEL_569;
      }

      if (v253 - v252 >= v251)
      {
        EvCrt_v("NK_Final_Check: Reverting to 'Sky Search' Windows due to No Fix within %d s", v251 / 0x3E8);
        *(v12 + 1864) = 0;
        if ((*(v12 + 24) & 1) == 0)
        {
          *(v12 + 20) = 0;
          v254 = vdupq_n_s64(0x42D7309374811100uLL);
          *(v14 + 1288) = v254;
          *(v391 + 1456) = v254;
          v255 = vdupq_n_s64(0x4163125300000000uLL);
          *(v391 + 1552) = v255;
          *(v391 + 1376) = v254;
          *(v391 + 1472) = v254;
          *(v391 + 1568) = v255;
          *(v391 + 1400) = 0x42D7309374811100;
          *(v391 + 1496) = 0x42D7309374811100;
          *(v391 + 1592) = 0x4163125300000000;
        }

LABEL_569:
        v390[444] = 0;
      }
    }
  }

  if (*(v12 + 24) == 1 && *(v174 + 2560) && *(v174 + 2544) >= 0x3Du && *(v391 + 1560) > 40000.0 && *(v391 + 1568) > 40000.0 && *(v391 + 1552) > 40000.0)
  {
    *(v12 + 24) = 0;
  }

  if (v395 && !*(v12 + 1868))
  {
    *(a1 + 240) = 0;
  }

  if ((*(v387 + 1700) < 4 || *(v12 + 1868) < 1 || *(v391 + 2024) > 400.0) && *(v174 + 2544))
  {
    if (!v390[459])
    {
      v390[459] = *(v377 + 4);
    }
  }

  else
  {
    v390[459] = 0;
  }

  memcpy((a1 + 352), (a1 + 976), 0x270uLL);
  if (*(v391 + 3464) > 150.0)
  {
    goto LABEL_740;
  }

  if (!*(v391 + 3648))
  {
    goto LABEL_740;
  }

  v256 = *(v391 + 3664);
  if (v256 < 2)
  {
    goto LABEL_740;
  }

  if ((*(v174 + 2673) & 1) == 0)
  {
    v257 = *(a1 + 27240) <= 17.0 ? 3000 : 5000;
    if (*v12 - *(v174 + 2760) < v257)
    {
      v258 = 27328;
      goto LABEL_602;
    }
  }

  if (*(v174 + 2700) < 2)
  {
    v259 = (v12 + 1856);
  }

  else
  {
    v258 = 27280;
LABEL_602:
    v259 = (a1 + v258);
  }

  v260 = *v259;
  v261 = *v259 * 0.0174532925;
  ECEF2FSD_RotM((v12 + 1736), v261, v416);
  v262 = 0;
  v263 = v12 + 1560;
  do
  {
    *(&v421 + v262 + 2) = *(v12 + 1576 + 8 * v262) - *(v12 + 63448 + 8 * v262);
    v264 = v262 + 3;
    --v262;
  }

  while (v264 > 1);
  v265 = 0;
  v266 = v421;
  v267 = v422;
  v268 = &v416[2];
  do
  {
    v269 = *(v268 - 1) * *(&v266 + 1) + *(v268 - 2) * *&v266;
    v270 = *v268;
    v268 += 3;
    *(&v418 + v265) = v269 + v270 * v267;
    v265 += 8;
  }

  while (v265 != 24);
  if (g_Logging_Cfg >= 6)
  {
    v271 = *(a1 + 148);
    if (v271 >= *(a1 + 152))
    {
      v271 = *(a1 + 152);
    }

    if (v271 >= *(a1 + 156))
    {
      v271 = *(a1 + 156);
    }

    v272 = v271 > 0xA;
    v273 = *(v174 + 2544) <= *(a1 + 16) && *(v12 + 1872) == 1;
    EvLog_v("Lsq pos diff:  %3d (%d %3d %3d %3d)  %d%d  %d %f   F %4d %6d %8d    S %4d %6d %8d    D %4d %6d %8d    T %2d %3d   L %2d %f ", v260, *(v174 + 2700), *(a1 + 27328), *(a1 + 27280), *(v12 + 1856), v272, v273, *(v174 + 2628), *(a1 + 27216), v418, *(v391 + 3616), *(a1 + 27568), v419, *(v391 + 3616), *(a1 + 27568), v420, *(v391 + 3624), *(a1 + 27576), *(v174 + 3148), *(v174 + 3152), v256, *(v391 + 3656));
  }

  v274 = *(a1 + 148);
  if (v274 >= *(a1 + 152))
  {
    v274 = *(a1 + 152);
  }

  if (v274 >= *(a1 + 156))
  {
    v274 = *(a1 + 156);
  }

  if (v274 < 0xB || *(v174 + 2544) > *(a1 + 16) || *(v12 + 1872) != 1)
  {
    goto LABEL_649;
  }

  if ((*(v174 + 2673) & 1) == 0)
  {
    if (*(v174 + 2628) != 3)
    {
      v275 = v418;
      if (v418 < -5.0)
      {
        v276 = 3;
        v277 = 8;
        goto LABEL_631;
      }
    }

    goto LABEL_649;
  }

  v275 = v418;
  if (v418 >= -5.0)
  {
LABEL_649:
    v278 = 0;
    *(v174 + 3148) = 0;
    goto LABEL_650;
  }

  v276 = 18;
  v277 = 48;
LABEL_631:
  v278 = 0;
  v279 = *(v174 + 3148);
  if (v279 + 1 < v277)
  {
    v280 = v279 + 1;
  }

  else
  {
    v280 = v277;
  }

  *(v174 + 3148) = v280;
  if (v280 >= v276 && v275 < -25.0)
  {
    v281 = *(v391 + 3616) / *(a1 + 27568);
    v282 = 0.0;
    v283 = 1.0;
    if (v281 < 1.0)
    {
      v282 = 1.0;
      if (v281 > 0.00000011920929)
      {
        NK_Get_Smooth_Excl_Weight(v281 * 0.5, 0.0, 1.0);
        v282 = v284;
        v280 = *(v174 + 3148);
      }
    }

    v285 = v277 - v280;
    if (v285)
    {
      NK_Get_Smooth_Excl_Weight(v285, 0.0, v277);
      v283 = v286;
    }

    if (v282 * v283 <= 0.00000011920929)
    {
      v278 = 0;
    }

    else
    {
      *v417 = *(v391 + 3616) / (v282 * v283);
      *&v417[8] = vdupq_n_s64(0x412E848000000000uLL);
      *(a1 + 1600) = 0u;
      *(a1 + 1616) = 0u;
      *(a1 + 1632) = 0u;
      *(a1 + 1648) = 0u;
      *(a1 + 1664) = 0u;
      *(a1 + 1680) = 0u;
      NK_Body_Frame_Meas(6u, &v421, v417, (v12 + 1736), v260 * 0.0174532925, 0xCu, (a1 + 976));
      v287 = 0;
      v288 = *(a1 + 1600);
      v289 = *(a1 + 1608);
      v290 = *(a1 + 1616);
      v421 = *(a1 + 1648);
      v422 = *(a1 + 1664);
      v291 = v421;
      v292 = v422;
      v293 = &v416[2];
      do
      {
        v294 = *(v293 - 1) * *(&v291 + 1) + *(v293 - 2) * *&v291;
        v295 = *v293;
        v293 += 3;
        *(&v418 + v287) = v294 + v295 * v292;
        v287 += 8;
      }

      while (v287 != 24);
      v296 = 0;
      v420 = 0.0;
      v419 = 0.0;
      v297 = v418;
      do
      {
        *(&v421 + v296 * 8) = v416[v296 + 3] * 0.0 + v416[v296] * v297 + v416[v296 + 6] * 0.0;
        ++v296;
      }

      while (v296 != 3);
      *(a1 + 1648) = v421;
      *(a1 + 1664) = v422;
      EvLog_v("Lsq pos meas: F  %2d %f %3d   %f %f   %6d %6d   Wt %f %f   ECEF %f %f %f", *(v174 + 3148), *(a1 + 27216), v260, v275, v297, *(v391 + 3616), *(a1 + 27568), v282, v283, *&v421, *(&v421 + 1), v422);
      NK_Correct_State((a1 + 1600), (v12 + 62540), (v12 + 1512));
      v298 = 0;
      *(a1 + 25920) = v288 + *(a1 + 25920);
      *(a1 + 20112) = v289 + *(a1 + 20112);
      *(a1 + 20128) = v290 + *(a1 + 20128);
      v278 = 1;
      do
      {
        *(a1 + 25928 + v298) = *(a1 + 25928 + v298) + *(&v421 + v298);
        v298 += 8;
      }

      while (v298 != 24);
    }
  }

LABEL_650:
  v299 = *(a1 + 148);
  if (v299 >= *(a1 + 152))
  {
    v299 = *(a1 + 152);
  }

  if (v299 >= *(a1 + 156))
  {
    v299 = *(a1 + 156);
  }

  if (v299 < 0xB || *(v174 + 2544) > *(a1 + 16) || *(v12 + 1872) != 1)
  {
    goto LABEL_660;
  }

  if (*(v174 + 2673))
  {
    v300 = 120;
    goto LABEL_742;
  }

  if (*(v174 + 2628) == 3)
  {
LABEL_660:
    *(v174 + 3152) = 0;
    if (v278)
    {
      goto LABEL_661;
    }

    v278 = 0;
    goto LABEL_667;
  }

  v300 = 20;
LABEL_742:
  v348 = v419;
  v349 = *(v174 + 3152);
  v350 = v349 > 0;
  if (v419 < 0.0)
  {
    v351 = -1;
  }

  else
  {
    v350 = v349 < 0;
    v351 = 1;
  }

  if (v350)
  {
    v349 = 0;
  }

  v352 = v349 + v351;
  *(v174 + 3152) = v352;
  v353 = v300;
  if (v352 <= v300)
  {
    if ((v352 + v300) < 0 == __OFADD__(v352, v300))
    {
      goto LABEL_752;
    }

    v353 = -v300;
  }

  *(v174 + 3152) = v353;
  v352 = v353;
LABEL_752:
  if (v352 >= 0)
  {
    v354 = v352;
  }

  else
  {
    v354 = -v352;
  }

  if (fabs(v348) <= 10.0 || v354 < v300 >> 2)
  {
    goto LABEL_770;
  }

  v355 = *(v391 + 3616) / *(a1 + 27568);
  v356 = 0.0;
  v357 = 1.0;
  if (v355 < 1.0)
  {
    v356 = 1.0;
    if (v355 > 0.00000011920929)
    {
      NK_Get_Smooth_Excl_Weight(v355 * 0.5, 0.0, 1.0);
      v356 = v358;
    }
  }

  if (v300 != v354)
  {
    NK_Get_Smooth_Excl_Weight((v300 - v354), 0.0, v300);
    v357 = v359;
  }

  if (v356 * v357 <= 0.00000011920929)
  {
LABEL_770:
    v174 = a1 + 24576;
    if (v278)
    {
      goto LABEL_661;
    }
  }

  else
  {
    *v417 = 0x412E848000000000;
    *&v417[8] = *(v391 + 3616) / (v356 * v357);
    *&v417[16] = 0x412E848000000000;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
    *(a1 + 1648) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
    *(a1 + 1600) = 0u;
    NK_Body_Frame_Meas(6u, &v421, v417, (v12 + 1736), v260 * 0.0174532925, 0xCu, (a1 + 976));
    v360 = 0;
    v361 = *(a1 + 1600);
    v362 = *(a1 + 1608);
    v363 = *(a1 + 1616);
    v421 = *(a1 + 1648);
    v422 = *(a1 + 1664);
    v364 = v421;
    v365 = v422;
    v366 = &v416[2];
    do
    {
      v367 = *(v366 - 1) * *(&v364 + 1) + *(v366 - 2) * *&v364;
      v368 = *v366;
      v366 += 3;
      *(&v418 + v360) = v367 + v368 * v365;
      v360 += 8;
    }

    while (v360 != 24);
    v369 = 0;
    v418 = 0.0;
    v420 = 0.0;
    v370 = v419;
    v174 = a1 + 24576;
    do
    {
      *(&v421 + v369 * 8) = v416[v369 + 3] * v370 + v416[v369] * 0.0 + v416[v369 + 6] * 0.0;
      ++v369;
    }

    while (v369 != 3);
    *(a1 + 1648) = v421;
    *(a1 + 1664) = v422;
    EvLog_v("Lsq pos meas: S  %2d %f %3d   %f %f   %6d %6d   Wt %f %f   ECEF %f %f %f", *(a1 + 27728), *(a1 + 27216), v260, v348, v370, *(v391 + 3616), *(a1 + 27568), v356, v357, *&v421, *(&v421 + 1), v422);
    NK_Correct_State((a1 + 1600), (v12 + 62540), (v12 + 1512));
    v371 = 0;
    *(a1 + 25920) = v361 + *(a1 + 25920);
    *(a1 + 20112) = v362 + *(a1 + 20112);
    *(a1 + 20128) = v363 + *(a1 + 20128);
    do
    {
      *(a1 + 25928 + v371) = *(a1 + 25928 + v371) + *(&v421 + v371);
      v371 += 8;
    }

    while (v371 != 24);
LABEL_661:
    v301 = 0;
    do
    {
      *(&v421 + v301 + 2) = *(v12 + 1576 + 8 * v301) - *(v12 + 63448 + 8 * v301);
      v302 = v301 + 3;
      --v301;
    }

    while (v302 > 1);
    v303 = 0;
    v304 = v421;
    v305 = v422;
    v306 = &v416[2];
    do
    {
      v307 = *(v306 - 1) * *(&v304 + 1) + *(v306 - 2) * *&v304;
      v308 = *v306;
      v306 += 3;
      *(&v418 + v303) = v307 + v308 * v305;
      v303 += 8;
    }

    while (v303 != 24);
    v278 = 1;
  }

LABEL_667:
  if ((*(v174 + 2628) & 0xFFFFFFFE) == 2)
  {
    v309 = 3.5;
  }

  else
  {
    v309 = 2.0;
  }

  v310 = v418;
  v311 = v419;
  v312 = v309 * *(v391 + 3616);
  v313 = 9.9980001e13;
  if (v311 * v311 + v310 * v310 <= v312 * v312 || v312 >= *(a1 + 27568))
  {
    v317 = 0;
  }

  else
  {
    *v417 = vdupq_n_s64(0x4049000000000000uLL);
    *&v417[16] = 0x408F400000000000;
    *(a1 + 1600) = 0u;
    *(a1 + 1616) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1648) = 0u;
    *(a1 + 1664) = 0u;
    *(a1 + 1680) = 0u;
    NK_Body_Frame_Meas(6u, &v421, v417, (v12 + 1736), v261, 0xCu, (a1 + 976));
    v404 = *(a1 + 1600);
    v314 = *(a1 + 1616);
    v421 = *(a1 + 1648);
    v422 = *(a1 + 1664);
    EvLog_v("Lsq pos adj:  H  %4d %4d %4d   ARP  %6d %6d", v310, v311, v420, *(v391 + 3616), *(a1 + 27568));
    for (j = 0; j != 24; j += 8)
    {
      *(v263 + j) = *(v263 + j) - *(&v421 + j);
    }

    v316 = 0;
    *v382 = vmlaq_f64(*v382, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v404);
    *v376 = *v376 - v314 * 0.00000000333564095;
    *(a1 + 25920) = v404.f64[0] + *(a1 + 25920);
    *(a1 + 20112) = v404.f64[1] + *(a1 + 20112);
    *(a1 + 20128) = v314 + *(a1 + 20128);
    do
    {
      *(a1 + 25928 + v316) = *(a1 + 25928 + v316) + *(&v421 + v316);
      v316 += 8;
    }

    while (v316 != 24);
    ++*(a1 + 244);
    v278 = 1;
    v313 = 50.0;
    v317 = 1;
  }

  v318 = v420;
  v319 = v309 * *(v391 + 3624);
  if (v318 * v318 > v319 * v319 && v319 < *(a1 + 27576))
  {
    *v417 = vdupq_n_s64(0x408F400000000000uLL);
    *&v417[16] = 0x4049000000000000;
    *(a1 + 1600) = 0u;
    *(a1 + 1616) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1648) = 0u;
    *(a1 + 1664) = 0u;
    *(a1 + 1680) = 0u;
    NK_Body_Frame_Meas(6u, &v421, v417, (v12 + 1736), v261, 0xCu, (a1 + 976));
    v405 = *(a1 + 1600);
    v320 = *(a1 + 1616);
    v421 = *(a1 + 1648);
    v422 = *(a1 + 1664);
    EvLog_v("Lsq pos adj:  V  %4d %4d %4d   ARP  %6d %6d", v310, v311, v318, *(v391 + 3624), *(a1 + 27576));
    for (k = 0; k != 24; k += 8)
    {
      *(v263 + k) = *(v263 + k) - *(&v421 + k);
    }

    v322 = 0;
    *v382 = vmlaq_f64(*v382, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v405);
    *v376 = *v376 - v320 * 0.00000000333564095;
    *(a1 + 25920) = v405.f64[0] + *(a1 + 25920);
    *(a1 + 20112) = v405.f64[1] + *(a1 + 20112);
    *(a1 + 20128) = v320 + *(a1 + 20128);
    do
    {
      *(a1 + 25928 + v322) = *(a1 + 25928 + v322) + *(&v421 + v322);
      v322 += 8;
    }

    while (v322 != 24);
    ++*(a1 + 244);
  }

  if (!v317)
  {
    goto LABEL_738;
  }

  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *&v426 = 0;
  if (R8_EQ(v382->f64, &v426))
  {
    goto LABEL_699;
  }

  v323 = *(v12 + 1632);
  v324 = (v391 + 3304);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3304), &v426))
  {
    v326 = *(v391 + 3512) * *(v391 + 3512);
    if (v326 >= v313)
    {
      v326 = v313;
    }

LABEL_698:
    v328 = *v324;
    v410 = 0.0;
    memset(&v424[1], 0, 160);
    memset(&v423[1], 0, 88);
    v423[0] = 1.0;
    v424[0] = v323 * 299792458.0 - v328;
    umeas(a1 + 976, 0xCu, v326, v423, &v426, v425, &v410, 1.0e20);
    goto LABEL_699;
  }

  v324 = (v391 + 3320);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3320), &v426))
  {
    v325 = *(v391 + 3520);
LABEL_695:
    v327 = v325 * v325;
    if (v327 >= v313)
    {
      v327 = v313;
    }

    v326 = v327 + 25.0;
    goto LABEL_698;
  }

  v324 = (v391 + 3336);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3336), &v426))
  {
    v325 = *(v391 + 3528);
    goto LABEL_695;
  }

LABEL_699:
  *&v426 = 0;
  if (R8_EQ(v392, &v426))
  {
    goto LABEL_712;
  }

  v329 = *(v12 + 1640);
  v330 = (v391 + 3320);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3320), &v426))
  {
    v332 = *(v391 + 3520) * *(v391 + 3520);
    if (v332 >= v313)
    {
      v332 = v313;
    }

LABEL_711:
    v334 = *v330;
    v410 = 0.0;
    memset(v424, 0, sizeof(v424));
    v423[0] = 0.0;
    memset(&v423[2], 0, 80);
    v423[1] = 1.0;
    v424[0] = v329 * 299792458.0 - v334;
    umeas(a1 + 976, 0xCu, v332, v423, &v426, v425, &v410, 1.0e20);
    goto LABEL_712;
  }

  v330 = (v391 + 3304);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3304), &v426))
  {
    v331 = *(v391 + 3512);
LABEL_708:
    v333 = v331 * v331;
    if (v333 >= v313)
    {
      v333 = v313;
    }

    v332 = v333 + 25.0;
    goto LABEL_711;
  }

  v330 = (v391 + 3336);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3336), &v426))
  {
    v331 = *(v391 + 3528);
    goto LABEL_708;
  }

LABEL_712:
  *&v426 = 0;
  if (R8_EQ(v376, &v426))
  {
    goto LABEL_725;
  }

  v335 = *(v12 + 1648);
  v336 = (v391 + 3336);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3336), &v426))
  {
    v338 = *(v391 + 3528) * *(v391 + 3528);
    if (v338 >= v313)
    {
      v338 = v313;
    }

LABEL_724:
    v340 = *v336;
    v410 = 0.0;
    memset(v424, 0, sizeof(v424));
    memset(v423, 0, sizeof(v423));
    v423[2] = 1.0;
    v424[0] = v335 * 299792458.0 - v340;
    umeas(a1 + 976, 0xCu, v338, v423, &v426, v425, &v410, 1.0e20);
    goto LABEL_725;
  }

  v336 = (v391 + 3304);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3304), &v426))
  {
    v337 = *(v391 + 3512);
LABEL_721:
    v339 = v337 * v337;
    if (v339 >= v313)
    {
      v339 = v313;
    }

    v338 = v339 + 25.0;
    goto LABEL_724;
  }

  v336 = (v391 + 3320);
  *&v426 = 0;
  if (!R8_EQ((v391 + 3320), &v426))
  {
    v337 = *(v391 + 3520);
    goto LABEL_721;
  }

LABEL_725:
  v406 = *(a1 + 1600);
  v341 = *(a1 + 1616);
  v421 = *(a1 + 1648);
  v422 = *(a1 + 1664);
  *&v426 = 0;
  if (R8_EQ(v382->f64, &v426))
  {
    v342 = 0;
  }

  else
  {
    v342 = (*(v391 + 3304) - *(v12 + 1632));
  }

  *&v426 = 0;
  if (R8_EQ(v392, &v426))
  {
    v343 = 0;
  }

  else
  {
    v343 = (*(v391 + 3320) - *(v12 + 1640));
  }

  *&v426 = 0;
  if (R8_EQ(v376, &v426))
  {
    v344 = 0;
  }

  else
  {
    v344 = (*(v391 + 3336) - *(v12 + 1648));
  }

  EvLog_v("Lsq Clk adj:  C  %4d %4d %4d   ARP  %6d %6d", v342, v343, v344, *(v391 + 3632), *(a1 + 27584));
  for (m = 0; m != 24; m += 8)
  {
    *(v263 + m) = *(v263 + m) - *(&v421 + m);
  }

  v346 = 0;
  *v382 = vmlaq_f64(*v382, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v406);
  *v376 = *v376 - v341 * 0.00000000333564095;
  *(a1 + 25920) = v406.f64[0] + *(a1 + 25920);
  *(a1 + 20112) = v406.f64[1] + *(a1 + 20112);
  *(a1 + 20128) = v341 + *(a1 + 20128);
  do
  {
    *(a1 + 25928 + v346) = *(a1 + 25928 + v346) + *(&v421 + v346);
    v346 += 8;
  }

  while (v346 != 24);
LABEL_738:
  if (v278)
  {
    ECEF2Geo(v12 + 1560, &WGS84_Datum, v407);
  }

LABEL_740:
  v347 = *MEMORY[0x29EDCA608];
}