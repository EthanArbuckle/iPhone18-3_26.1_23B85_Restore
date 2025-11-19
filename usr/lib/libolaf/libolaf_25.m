uint64_t gnss::GnssAdaptDevice::Ga10_00ProcessGPSMeasurements(uint64_t result, uint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(result + 16))
  {
    v5 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS Meas Avlbl\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "Ga10_00ProcessGPSMeasurements");
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
    }

    v8 = HIDWORD(a3);
    v9 = *(v5 + 37);
    *(a2 + 7) = v9;
    *a2 = *(v5 + 20);
    *(a2 + 4) = 0;
    *(a2 + 6) = -1;
    v10 = *(v5 + 28);
    if (v10 != 255)
    {
      *(a2 + 6) = v10;
      if (v8 == 2)
      {
        v11 = ((pow(1.18, v10) + -1.0) * 0.0022 / 3000.0 * 3000.0);
        *(a2 + 6) = (log(v11 + v11 + 1.0) / 0.131028262);
      }
    }

    *(a2 + 392) = 0;
    if (v9)
    {
      v12 = 0;
      v13 = (v5 + 47);
      v14 = (a2 + 28);
      do
      {
        *(v14 - 14) = *(v13 - 9) + (v8 == 3);
        *(v14 - 13) = *(v13 - 8);
        *(v14 - 12) = *v13;
        v15 = *(v13 - 7);
        if (v8 == 2)
        {
          *&v16 = v15 * 0.951;
          *(v14 - 10) = *&v16;
          *v14 = 0;
          *(a2 + 444) = 0;
          v17 = *(v13 - 3);
          LOWORD(v16) = *(v13 - 5);
          v18 = v16;
          if (v17 != 1024)
          {
            v18 = vcvtd_n_f64_u32(v17, 0xAuLL) + v18;
          }

          *(v14 - 1) = vcvtd_n_u64_f64(v18 / 1023.0, 0x15uLL);
        }

        else
        {
          *(v14 - 10) = v15;
          *(v14 - 18) = *(v13 - 5);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WholeChips,%u,FracChips,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga10_18AdjustGpsChipsforMeasurements", *(v14 - 9), *(v14 - 8));
            LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
          }

          LOWORD(v19) = *(v14 - 9);
          v22 = (vcvts_n_f32_u32(*(v14 - 8), 0xAuLL) + v19) + -8.47922697;
          if (v22 >= 1023.0)
          {
            v22 = v22 + -1023.0;
          }

          if (v22 < 0.0)
          {
            v22 = v22 + 1023.0;
          }

          *(v14 - 9) = v22;
          *(v14 - 8) = vcvtd_n_s64_f64(v22 - v22, 0xAuLL);
        }

        v23 = *(v13 - 1);
        if (v23 <= 4)
        {
          *(v14 - 2) = v23;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasSent Dop,%d,wholeChips,%u,fracChips,%u,satId,%u,cnR,%u,RmsErr,%u,MultiPath,%u,codePh,%u,intCodePh,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "Ga10_00ProcessGPSMeasurements", *(v14 - 10), *(v14 - 9), *(v14 - 8), *(v14 - 14), *(v14 - 13), *(v14 - 12), *(v14 - 2), *(v14 - 1), *v14);
          LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
        }

        if (v12 > 0xE)
        {
          break;
        }

        v13 += 10;
        ++v12;
        v14 += 24;
      }

      while (v12 < *(v5 + 37));
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v27 = 70;
      if (*(v5 + 36))
      {
        v27 = 84;
      }

      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: gpsTow,%u,gpsWeek,%u,gpsTimeUnc,%u,MeasGpsTowFromFta,%c\n", v26, "ADP", 73, "Ga10_00ProcessGPSMeasurements", *a2, *(a2 + 4), *(a2 + 6), v27);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
    }
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga10_01SendMeasurementsReport()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v193 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(v188, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga10_01SendMeasurementsReport");
    LbsOsaTrace_WriteLog(0x18u, v188, v5, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v189, v3 + 824);
  *(v3 + 1024) = 0;
  if (*(v3 + 120) == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(v188, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
      LbsOsaTrace_WriteLog(0x18u, v188, v7, 5, 1);
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v191, v3 + 856);
    if (!v192)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v30 = mach_continuous_time();
        v31 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx MeasRepwithEstimate\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 258);
        LbsOsaTrace_WriteLog(0x18u, v188, v31, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
        LbsOsaTrace_WriteLog(0x18u, v188, v33, 5, 1);
      }

      goto LABEL_161;
    }

    v8 = 0;
    LODWORD(v190[0]) = 0;
    BYTE4(v190[0]) = 0;
    *(&v190[1] + 4) = -1;
    *(&v190[2] + 4) = -1;
    do
    {
      v9 = &v190[v8];
      *(v9 + 14) = 0x7FFF;
      *(v9 + 30) = -1;
      *(v9 + 33) = -1;
      v9[5] = 0xFFFFFFFF00000004;
      v8 += 3;
      *(v9 + 48) = -1;
    }

    while (v8 != 48);
    v190[52] = -1;
    LODWORD(v190[53]) = 33619967;
    WORD2(v190[53]) = -1;
    HIDWORD(v190[56]) = -1;
    LOBYTE(v190[57]) = -1;
    memset(&v190[54], 255, 17);
    BYTE4(v190[57]) = -1;
    *(&v190[58] + 7) = -1;
    v190[58] = -1;
    v10 = (&v190[59] + 4);
    LODWORD(v190[61]) = -1;
    *(&v190[59] + 4) = -1;
    *(&v190[60] + 3) = -1;
    BYTE4(v190[61]) = 0;
    *(&v190[61] + 6) = -1;
    BYTE2(v190[62]) = -1;
    BYTE4(v190[62]) = 0;
    LODWORD(v190[63]) = -1;
    WORD2(v190[63]) = -1;
    LOBYTE(v190[64]) = 0;
    WORD1(v190[64]) = -1;
    BYTE4(v190[64]) = -1;
    LODWORD(v190[65]) = 0;
    BYTE4(v190[65]) = 0;
    HIDWORD(v190[51]) = 0;
    LODWORD(v190[1]) = 0;
    if (!v2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Meas with Estimate Rep\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 513);
        LbsOsaTrace_WriteLog(0x18u, v188, v41, 0, 1);
      }

      LODWORD(v190[0]) = -2;
      v42 = *(v3 + 296);
      *__str = MEMORY[0x29EDCA5F8];
      v183 = 1174405120;
      v184 = ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke;
      v185 = &__block_descriptor_tmp_125;
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v186, v191);
      memcpy(v187, v190, sizeof(v187));
      dispatch_async(v42, __str);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v43 = mach_continuous_time();
        v44 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
        LbsOsaTrace_WriteLog(0x18u, v188, v44, 5, 1);
      }

LABEL_160:
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v186);
LABEL_161:
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v191);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v135 = mach_continuous_time();
        v136 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v135), "ADP", 68, "Ga10_01SendMeasurementsReport");
        LbsOsaTrace_WriteLog(0x18u, v188, v136, 5, 1);
      }

      goto LABEL_163;
    }

    v11 = *v2;
    LODWORD(v190[0]) = 0;
    LODWORD(v190[2]) = v11;
    BYTE4(v190[65]) = *(v2 + 36);
    v139 = 0xFFFFFFFF00000000;
    v140 = -1;
    v141 = 0;
    memset(v143, 0, sizeof(v143));
    v142 = 0;
    v144 = 0xFFFFFFFF00000000;
    v145 = 0;
    v146 = -1;
    v147 = 0;
    v148 = -1;
    v149 = 0;
    v150 = xmmword_2997286D0;
    v151 = 0;
    memset(v152, 0, sizeof(v152));
    v153 = -1;
    v154 = 0;
    v155 = 0;
    v156 = -1;
    v157 = 0;
    v158 = -1;
    v159 = -1;
    *&v160[7] = -1;
    *(&v160[3] + 1) = -1;
    *v160 = -1;
    *&v160[11] = 0x7FFFFFFFLL;
    v161 = 0;
    v162 = -1;
    v163 = -COERCE_DOUBLE(0x8000000080000000);
    v164 = 0;
    v165 = 0;
    if (gnss::GnssAdaptDevice::Ga11_23GetCPSession(*(v3 + 128), *(v3 + 136), v11, &v139))
    {
      HIDWORD(v190[1]) = HIDWORD(v144);
      v12 = HIBYTE(v165);
      if (HIBYTE(v165) != 1)
      {
        v12 = 2;
      }

      LODWORD(v190[65]) = v12;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(v188, 0x410uLL);
      v45 = mach_continuous_time();
      v46 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 2052, LODWORD(v190[2]));
      LbsOsaTrace_WriteLog(0x18u, v188, v46, 0, 1);
    }

    if ((v165 & 1) == 0)
    {
      if (*(v2 + 32) == 1)
      {
        if (*(v2 + 16))
        {
          BYTE4(v190[0]) |= 1u;
          gnss::GnssAdaptDevice::Ga10_00ProcessGPSMeasurements(v2, &v190[2] + 4, v190[1]);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v74 = mach_continuous_time();
        v75 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v74), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 769, *(v2 + 32));
        LbsOsaTrace_WriteLog(0x18u, v188, v75, 0, 1);
      }
    }

    if (*(v2 + 165212) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v56 = mach_continuous_time();
        v57 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 769, *(v2 + 165212));
        LbsOsaTrace_WriteLog(0x18u, v188, v57, 0, 1);
      }

      goto LABEL_135;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(v188, 0x410uLL);
      v47 = mach_continuous_time();
      v48 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: DBH Pos Avlbl\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 73, "Ga10_28SendMeasurementsReportWithEstimate");
      LbsOsaTrace_WriteLog(0x18u, v188, v48, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
    {
      bzero(v188, 0x410uLL);
      v49 = mach_continuous_time();
      v50 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: GAD Lat,%u,Long,%d,Sign of Lat,%u,Altitude,%u,Alt Unc,%u, Semi Major,%u, SemiMinor,%u,AxisBearing,%u,Dir of Alt,%u,ShapeType,%u,VelocityType,%u\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", *(v2 + 165228), *(v2 + 165232), *(v2 + 165224), *(v2 + 165236), *(v2 + 165248), *(v2 + 165238), *(v2 + 165239), *(v2 + 165240), *(v2 + 165244), *(v2 + 165220), *(v2 + 165260));
      LbsOsaTrace_WriteLog(0x18u, v188, v50, 5, 1);
    }

    BYTE4(v190[0]) |= 2u;
    v51 = *(v2 + 165228);
    if (v51 >> 23)
    {
      v55.f64[0] = INFINITY;
    }

    else
    {
      v52 = 90 * v51;
      v53 = vcvtd_n_f64_u32(v52, 0x17uLL);
      v54 = -(v52 * 0.00000011920929);
      if (*(v2 + 165224) != 2)
      {
        v54 = v53;
      }

      v55.f64[0] = v54 * 33554432.0;
    }

    v69 = *(v2 + 165232);
    if ((v69 + 0x800000) >> 24)
    {
      v70 = INFINITY;
    }

    else
    {
      if ((v69 & 0x800000) != 0)
      {
        v69 |= 0xFF000000;
      }

      v70 = v69 * 360.0 * 0.0000000596046448 * 67108864.0;
    }

    v55.f64[1] = v70;
    *&v55.f64[0] = vand_s8(vmovn_s64(vcvtq_s64_f64(vdivq_f64(v55, xmmword_299760F90))), 0x3FFFFFF01FFFFFFLL);
    *(&v190[59] + 4) = *&v55.f64[0];
    LOBYTE(v55.f64[0]) = *(v2 + 165240);
    v55.f64[0] = *&v55.f64[0] / 11.25;
    BYTE4(v190[60]) = v55.f64[0];
    v72 = *(v2 + 165220);
    if (v72 == 16 || v72 == 8)
    {
      if (*(v2 + 165244) == 2)
      {
        v73 = *(v2 + 165236);
        if (v73 >= 0x1F5)
        {
          LOBYTE(v190[64]) = 0;
          goto LABEL_98;
        }

        LOBYTE(v190[64]) = 1;
        v76 = 500 - v73;
      }

      else
      {
        LOBYTE(v190[64]) = 1;
        v76 = *(v2 + 165236) + 500;
      }

      WORD1(v190[64]) = v76;
      LOBYTE(v55.f64[0]) = *(v2 + 165248);
      v77 = pow(1.025, *&v55.f64[0]);
      BYTE4(v190[64]) = gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(((v77 + -1.0) * 45.0));
    }

LABEL_98:
    v78 = *(v2 + 165238);
    v79 = &loc_299728000;
    if (v78 != 255)
    {
      v10 = ((pow(1.1, v78) + -1.0) * 10.0);
    }

    v80 = *(v2 + 165239);
    if (v80 != 255)
    {
      v79 = ((pow(1.1, v80) + -1.0) * 10.0);
    }

    BYTE5(v190[60]) = gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(v10);
    BYTE6(v190[60]) = gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(v79);
    v81 = *(v2 + 165216);
    if (v81 == 1)
    {
      LODWORD(v190[61]) = 0;
    }

    else if (v81 == 2)
    {
      LODWORD(v190[61]) = 1;
    }

    else
    {
      LODWORD(v190[61]) = -1;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(v188, 0x410uLL);
        v82 = mach_continuous_time();
        v83 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Fix Type,%u\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 87, "Ga10_28SendMeasurementsReportWithEstimate", 515, *(v2 + 165216));
        LbsOsaTrace_WriteLog(0x18u, v188, v83, 2, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
    {
      bzero(v188, 0x410uLL);
      v85 = mach_continuous_time();
      v86 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: 3GPP2 Lat,%u,Long,%d,Altitude,%u,Alt Unc,%u, locUncA,%u, locUncP,%u,AxisBearing,%u,Alt included,%u\n", (*&g_MacClockTicksToMsRelation * v85), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", HIDWORD(v190[59]), LODWORD(v190[60]), WORD1(v190[64]), BYTE4(v190[64]), BYTE5(v190[60]), BYTE6(v190[60]), BYTE4(v190[60]), LOBYTE(v190[64]));
      LbsOsaTrace_WriteLog(0x18u, v188, v86, 5, 1);
    }

    v87 = *(v2 + 165260);
    if (v87 <= 1)
    {
      if (!v87)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(v188, 0x410uLL);
          v102 = mach_continuous_time();
          v103 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: VelInfo not avlbl\n", (*&g_MacClockTicksToMsRelation * v102), "ADP", 73, "Ga10_28SendMeasurementsReportWithEstimate");
          LbsOsaTrace_WriteLog(0x18u, v188, v103, 4, 1);
        }

        goto LABEL_135;
      }

      if (v87 != 1)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v87 == 2)
      {
LABEL_114:
        LOWORD(v84) = *(v2 + 165264);
        BYTE4(v190[61]) = 1;
        LOWORD(v190[62]) = (v84 * 360.0 / 1023.0);
        v88 = *(v2 + 165266);
        v89 = vcvtd_n_s64_f64(v88 * 0.277778, 2uLL);
        if (v88 == 0xFFFF)
        {
          v90 = -1;
        }

        else
        {
          v90 = v89;
        }

        HIWORD(v190[61]) = v90;
        v91 = *(v2 + 165270);
        if (v91 == 0xFFFF)
        {
          v92 = -1;
        }

        else
        {
          v92 = (v91 * 0.277778 + v91 * 0.277778);
        }

        BYTE2(v190[62]) = v92;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(v188, 0x410uLL);
          v93 = mach_continuous_time();
          v94 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: GAD : Bearing,%u,HSpeed,%u,VSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v93), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", *(v2 + 165264), *(v2 + 165266), *(v2 + 165270));
          LbsOsaTrace_WriteLog(0x18u, v188, v94, 5, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(v188, 0x410uLL);
          v95 = mach_continuous_time();
          v96 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: 3GPP2 : Bearing,%u,HSpeed,%u,VSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v95), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", LOWORD(v190[62]), HIWORD(v190[61]), BYTE2(v190[62]));
          LbsOsaTrace_WriteLog(0x18u, v188, v96, 5, 1);
        }

LABEL_135:
        v106 = *(v3 + 296);
        *__str = MEMORY[0x29EDCA5F8];
        v183 = 1174405120;
        v184 = ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke_136;
        v185 = &__block_descriptor_tmp_140;
        std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v186, v191);
        memcpy(v187, v190, sizeof(v187));
        dispatch_async(v106, __str);
        *&v107 = 0;
        v108 = *(v2 + 165212);
        *v166 = 0xFFFFFFFF00000000;
        if (v108 == 9)
        {
          v109 = 3;
        }

        else
        {
          v109 = 19;
        }

        *&v166[8] = -1;
        *&v166[12] = 0;
        *(&v107 + 1) = 0;
        if (v108 == 1)
        {
          v110 = 2;
        }

        else
        {
          v110 = v109;
        }

        *&v166[20] = v107;
        *&v166[35] = 0;
        *&v166[40] = 0xFFFFFFFF00000000;
        LOBYTE(v167) = 0;
        *(&v167 + 4) = -1;
        BYTE12(v167) = 0;
        *&v173[12] = -1;
        *&v173[4] = -1;
        v173[8] = -1;
        *&v173[20] = 0x7FFFFFFFLL;
        v173[28] = 0;
        *&v173[30] = -1;
        *&v174 = -COERCE_DOUBLE(0x8000000080000000);
        v175 = 0;
        HIDWORD(v174) = 0;
        if (gnss::GnssAdaptDevice::Ga11_23GetCPSession(*(v3 + 128), *(v3 + 136), *v2, v166))
        {
          LODWORD(v168) = *v2;
          BYTE4(v168) = *(v2 + 4);
          BYTE5(v168) = *(v2 + 165204);
          *(&v168 + 1) = *(v2 + 8);
          v111 = *(v2 + 165224);
          v169 = *(v2 + 165208);
          v170 = v111;
          v171 = *(v2 + 165240);
          v112 = *(v2 + 165260);
          LODWORD(v172) = *(v2 + 165256);
          DWORD1(v172) = v112;
          *(&v172 + 1) = *(v2 + 165264);
          *v173 = *(v2 + 165272);
          v113 = *&v166[40];
          DWORD2(v174) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v113;
          v114 = *v2;
          v115 = *(v3 + 128);
          v116 = *(v3 + 136) - v115;
          if (v116)
          {
            v117 = v116 >> 2;
            v118 = 0x7D6343EB1A1F58D1 * v117;
            if ((0x7D6343EB1A1F58D1 * v117) <= 1)
            {
              v119 = 1;
            }

            else
            {
              v119 = 0x7D6343EB1A1F58D1 * v117;
            }

            if (*(v115 + 52) == v114)
            {
              v120 = 0;
LABEL_148:
              if (v120 < v118)
              {
                v121 = v167;
                v122 = v115 + 196 * v120;
                *(v122 + 32) = *&v166[32];
                *(v122 + 48) = v121;
                v123 = v171;
                *(v122 + 96) = v170;
                *(v122 + 112) = v123;
                v124 = v169;
                *(v122 + 64) = v168;
                *(v122 + 80) = v124;
                *(v122 + 192) = v175;
                v125 = v174;
                *(v122 + 160) = *&v173[16];
                *(v122 + 176) = v125;
                v126 = *v173;
                *(v122 + 128) = v172;
                *(v122 + 144) = v126;
                v127 = *&v166[16];
                *v122 = *v166;
                *(v122 + 16) = v127;
                v114 = *v2;
              }
            }

            else
            {
              v120 = 0;
              v130 = (v115 + 248);
              v131 = v119 - 1;
              while (v131 != v120)
              {
                v132 = *v130;
                v130 += 49;
                ++v120;
                if (v132 == v114)
                {
                  if (v120 < v118)
                  {
                    goto LABEL_148;
                  }

                  break;
                }
              }
            }
          }

          gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v3, v114, 0, v110);
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(v188, 0x410uLL);
            v128 = mach_continuous_time();
            v129 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v128), "ADP", 69, "Ga10_29InvokeDBHSummaryReport", 2052, *v2);
            LbsOsaTrace_WriteLog(0x18u, v188, v129, 0, 1);
          }

          gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v3, *v2, 0, v110);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(v188, 0x410uLL);
          v133 = mach_continuous_time();
          v134 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v133), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate");
          LbsOsaTrace_WriteLog(0x18u, v188, v134, 5, 1);
        }

        goto LABEL_160;
      }

      if (v87 != 4)
      {
        if (v87 == 8)
        {
          goto LABEL_114;
        }

LABEL_133:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(v188, 0x410uLL);
          v104 = mach_continuous_time();
          v105 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx Velocity type,%u\n", (*&g_MacClockTicksToMsRelation * v104), "ADP", 69, "Ga10_28SendMeasurementsReportWithEstimate", 515, *(v2 + 165260));
          LbsOsaTrace_WriteLog(0x18u, v188, v105, 0, 1);
        }

        goto LABEL_135;
      }
    }

    BYTE4(v190[61]) = 1;
    LOWORD(v84) = *(v2 + 165264);
    LOWORD(v190[62]) = (v84 * 360.0 / 1023.0);
    v97 = *(v2 + 165266);
    v98 = vcvtd_n_s64_f64(v97 * 0.277778, 2uLL);
    if (v97 == 0xFFFF)
    {
      v99 = -1;
    }

    else
    {
      v99 = v98;
    }

    HIWORD(v190[61]) = v99;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
    {
      bzero(v188, 0x410uLL);
      v100 = mach_continuous_time();
      v101 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v100), "ADP", 68, "Ga10_28SendMeasurementsReportWithEstimate", LOWORD(v190[62]), HIWORD(v190[61]));
      LbsOsaTrace_WriteLog(0x18u, v188, v101, 5, 1);
    }

    goto LABEL_135;
  }

  if (v189[3])
  {
    v13 = 0;
    LODWORD(v188[0]) = 0;
    BYTE4(v188[0]) = 0;
    memset(&v188[1], 255, 20);
    do
    {
      v14 = &v188[v13];
      *(v14 + 14) = 0x7FFF;
      *(v14 + 30) = -1;
      *(v14 + 33) = -1;
      v14[5] = 0xFFFFFFFF00000004;
      v13 += 3;
      *(v14 + 48) = -1;
    }

    while (v13 != 48);
    v15 = 0;
    HIDWORD(v188[51]) = 0;
    v188[52] = -1;
    LODWORD(v188[53]) = 33619967;
    WORD2(v188[53]) = -1;
    HIDWORD(v188[56]) = -1;
    *(&v188[58] + 7) = -1;
    LODWORD(v188[60]) = 4;
    LOBYTE(v188[57]) = -1;
    memset(&v188[54], 255, 17);
    BYTE4(v188[57]) = -1;
    v188[58] = -1;
    *(&v188[60] + 4) = -1;
    LODWORD(v188[62]) = 0;
    HIDWORD(v188[65]) = -1;
    v188[66] = -1;
    memset(&v188[63], 255, 18);
    LOBYTE(v188[67]) = -1;
    HIDWORD(v188[68]) = -1;
    v188[69] = -1;
    *(&v188[67] + 2) = -1;
    LOWORD(v188[70]) = -1;
    HIDWORD(v188[70]) = -1;
    LOWORD(v188[71]) = -1;
    LODWORD(v188[74]) = -1;
    *(&v188[71] + 4) = -1;
    *(&v188[72] + 4) = -1;
    WORD2(v188[73]) = -1;
    WORD2(v188[74]) = -129;
    LODWORD(v188[75]) = -1;
    LOBYTE(v188[76]) = -1;
    HIDWORD(v188[76]) = 5;
    LOWORD(v188[77]) = -1;
    BYTE2(v188[77]) = -1;
    do
    {
      v16 = &v188[v15];
      *(v16 + 155) = -32769;
      *(v16 + 624) = -1;
      *(&v188[v15 + 78] + 4) = 0xFF00000004;
      *(v16 + 318) = -1;
      *(v16 + 160) = -1;
      v15 += 3;
    }

    while (v15 != 96);
    BYTE4(v188[174]) = 0;
    LODWORD(v188[174]) = -1;
    LODWORD(v188[1]) = 0;
    if (!v2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MSA Rep\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "Ga10_01SendMeasurementsReport", 513);
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
      }

      LODWORD(v188[0]) = -2;
      v36 = *(v3 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke;
      block[3] = &__block_descriptor_tmp_117_0;
      v37 = v180;
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v180, v189);
      memcpy(v181, v188, sizeof(v181));
      dispatch_async(v36, block);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "Ga10_01SendMeasurementsReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 5, 1);
      }

      goto LABEL_81;
    }

    v17 = *v2;
    LODWORD(v188[2]) = *v2;
    v18 = *(v3 + 128);
    v19 = *(v3 + 136) - v18;
    if (v19)
    {
      v20 = 0x7D6343EB1A1F58D1 * (v19 >> 2);
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      if (*(v18 + 52) == v17)
      {
        v22 = 0;
LABEL_26:
        if (v22 < v20)
        {
          v23 = v18 + 196 * v22;
          v25 = *(v23 + 40);
          v24 = *(v23 + 44);
          *(*(v3 + 128) + 196 * v22 + 184) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v25;
LABEL_67:
          HIDWORD(v188[1]) = v24;
          LODWORD(v188[174]) = 0;
          if (*(v2 + 32) == 1)
          {
            if (*(v2 + 16))
            {
              BYTE4(v188[0]) = 1;
              BYTE4(v188[174]) = *(v2 + 36);
              gnss::GnssAdaptDevice::Ga10_00ProcessGPSMeasurements(v2, &v188[2] + 4, v188[1]);
            }
          }

          else
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v61 = mach_continuous_time();
              v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 69, "Ga10_01SendMeasurementsReport", 769, *(v2 + 32));
              LbsOsaTrace_WriteLog(0x18u, __str, v62, 0, 1);
            }

            LODWORD(v188[0]) = -4;
            BYTE4(v188[0]) |= 4u;
          }

          v63 = *(v3 + 296);
          v176[0] = MEMORY[0x29EDCA5F8];
          v176[1] = 1174405120;
          v176[2] = ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke_119;
          v176[3] = &__block_descriptor_tmp_123;
          v37 = v177;
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](v177, v189);
          memcpy(v178, v188, sizeof(v178));
          dispatch_async(v63, v176);
          v64 = *(v2 + 32);
          if (v64 == 9)
          {
            v65 = 3;
          }

          else
          {
            v65 = 18;
          }

          if (v64 == 1)
          {
            v66 = 2;
          }

          else
          {
            v66 = v65;
          }

          gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v3, v188[2], 0, v66);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v67 = mach_continuous_time();
            v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v67), "ADP", 68, "Ga10_01SendMeasurementsReport");
            LbsOsaTrace_WriteLog(0x18u, __str, v68, 5, 1);
          }

LABEL_81:
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v37);
          goto LABEL_163;
        }
      }

      else
      {
        v22 = 0;
        v58 = (v18 + 248);
        v59 = v21 - 1;
        while (v59 != v22)
        {
          v60 = *v58;
          v58 += 49;
          ++v22;
          if (v60 == v17)
          {
            if (v22 < v20)
            {
              goto LABEL_26;
            }

            break;
          }
        }
      }
    }

    v24 = -1;
    goto LABEL_67;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(v188, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: #%04hx MeasRep\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "Ga10_01SendMeasurementsReport", 258);
    LbsOsaTrace_WriteLog(0x18u, v188, v27, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(v188, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(v188, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga10_01SendMeasurementsReport");
    LbsOsaTrace_WriteLog(0x18u, v188, v29, 5, 1);
  }

LABEL_163:
  result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v189);
  v138 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29969259C(_Unwind_Exception *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v1 - 136);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](&STACK[0x16F8]);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke(uint64_t a1)
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

uint64_t ___ZN4gnss15GnssAdaptDevice29Ga10_01SendMeasurementsReportEPK15s_gnsCP_MeasRes_block_invoke_119(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = (*(*v1 + 48))(*(a1 + 56), a1 + 64);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasRep Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_01SendMeasurementsReport_block_invoke", v2);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke(uint64_t a1)
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

uint64_t __copy_helper_block_e8_32c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c94_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane29MeasurementReportWithEstimateEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t gnss::GnssAdaptDevice::Ga11_23GetCPSession(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  if (a2 == a1)
  {
    goto LABEL_13;
  }

  v4 = 0x7D6343EB1A1F58D1 * ((a2 - a1) >> 2);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0x7D6343EB1A1F58D1 * ((a2 - a1) >> 2);
  }

  if (*(a1 + 52) != a3)
  {
    v6 = 0;
    v28 = (a1 + 248);
    v29 = v5 - 1;
    while (v29 != v6)
    {
      v30 = *v28;
      v28 += 49;
      ++v6;
      if (v30 == a3)
      {
        if (v6 < v4)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  v6 = 0;
LABEL_7:
  if (v6 >= v4)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v7 = a1 + 196 * v6;
  v42 = *(v7 + 4);
  v43 = *(v7 + 8);
  *v47 = *(v7 + 10);
  *&v47[13] = *(v7 + 23);
  v8 = *(v7 + 39);
  v9 = *(v7 + 48);
  v40 = *(v7 + 49);
  v41 = *(v7 + 51);
  v10 = *(v7 + 60);
  v39 = *(v7 + 63);
  v38 = *(v7 + 61);
  v11 = *(v7 + 64);
  v12 = *(v7 + 68);
  *v46 = *(v7 + 88);
  *&v46[14] = *(v7 + 102);
  v13 = *(v7 + 110);
  v14 = *(v7 + 112);
  v36 = *(v7 + 113);
  v37 = *(v7 + 115);
  v15 = *(v7 + 116);
  v16 = *(v7 + 120);
  v17 = *(v7 + 136);
  v18 = *(v7 + 140);
  v45 = *(v7 + 149);
  v44 = *(v7 + 141);
  v35 = *(v7 + 155);
  v34 = *(v7 + 153);
  v19 = *(v7 + 156);
  v20 = *(v7 + 172);
  v33 = *(v7 + 192);
  v32 = *(v7 + 184);
  *a4 = *v7;
  v21 = *(v7 + 176);
  v22 = *(v7 + 164);
  v23 = *(v7 + 128);
  v24 = *(v7 + 72);
  v25 = *(v7 + 52);
  v26 = *(v7 + 40);
  *(a4 + 8) = v43;
  *(a4 + 4) = v42;
  *(a4 + 10) = *v47;
  *(a4 + 23) = *&v47[13];
  *(a4 + 39) = v8;
  *(a4 + 40) = v26;
  *(a4 + 48) = v9;
  *(a4 + 51) = v41;
  *(a4 + 49) = v40;
  *(a4 + 52) = v25;
  *(a4 + 60) = v10;
  *(a4 + 63) = v39;
  *(a4 + 61) = v38;
  *(a4 + 64) = v11;
  *(a4 + 68) = v12;
  *(a4 + 72) = v24;
  *(a4 + 102) = *&v46[14];
  *(a4 + 88) = *v46;
  *(a4 + 110) = v13;
  *(a4 + 112) = v14;
  *(a4 + 115) = v37;
  *(a4 + 113) = v36;
  *(a4 + 116) = v15;
  *(a4 + 120) = v16;
  *(a4 + 128) = v23;
  *(a4 + 136) = v17;
  *(a4 + 140) = v18;
  *(a4 + 149) = v45;
  *(a4 + 141) = v44;
  *(a4 + 155) = v35;
  *(a4 + 153) = v34;
  *(a4 + 156) = v19;
  *(a4 + 164) = v22;
  *(a4 + 172) = v20;
  *(a4 + 176) = v21;
  *(a4 + 192) = v33;
  result = 1;
  *(a4 + 184) = v32;
LABEL_14:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga10_27GetCDMAKValueForUncertanity(gnss::GnssAdaptDevice *this)
{
  v1 = this;
  v2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v3 = dbl_299760FE0[v2];
    if (v3 > this)
    {
      break;
    }

    if (++v2 == 30)
    {
      LOBYTE(v2) = 31;
      goto LABEL_7;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GADUncInMts,%u,CDMAK,%d,PosUncMts,%f\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_27GetCDMAKValueForUncertanity", v1, v2, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t ___ZN4gnss15GnssAdaptDevice41Ga10_28SendMeasurementsReportWithEstimateEPK15s_gnsCP_MeasRes_block_invoke_136(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = (*(*v1 + 48))(*(a1 + 56), a1 + 64);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasRepWithEstimate Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_28SendMeasurementsReportWithEstimate_block_invoke", v2);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c79_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane14PositionReportEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t gnss::GnssAdaptDevice::Ga10_17InvokePVTMCbForE911(uint64_t a1, int *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v46, a1 + 312);
  if (a2)
  {
    if (v47)
    {
      v4 = *(a2 + 76);
      v5 = a2[18];
      v6 = *(a2 + 7);
      v7 = a2[13];
      v8 = *(a2 + 48);
      v9 = *(a2 + 23);
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[27];
      v13 = *(a2 + 23);
      v14 = *(a1 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice26Ga10_17InvokePVTMCbForE911EPK15s_gnsCP_PosnRes_block_invoke;
      block[3] = &__block_descriptor_tmp_306;
      block[4] = a1;
      v25[8] = v10;
      v25[9] = v11;
      v15 = *(a2 + 2);
      *&v27[14] = *(a2 + 38);
      v16 = *(a2 + 6);
      v26 = v15;
      *v27 = v16;
      v28 = v9;
      v29 = v8;
      v17 = *(a2 + 49);
      v31 = *(a2 + 51);
      v30 = v17;
      v32 = v7;
      v33 = v6;
      v34 = *(a2 + 8);
      v35 = v5;
      v36 = v4;
      v37 = *(a2 + 77);
      v38 = *(a2 + 85);
      v39 = *(a2 + 89);
      v40 = *(a2 + 91);
      v41 = v13;
      v42 = *(a2 + 25);
      v43 = v12;
      v44 = *(a2 + 14);
      std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v25, v46);
      dispatch_async(v14, block);
      std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v25);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM Cb\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 87, "Ga10_17InvokePVTMCbForE911", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 2, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx p_GnsPosnFix\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga10_17InvokePVTMCbForE911", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
  }

  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v46);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice25Ga10_02SendPositionReportEPK15s_gnsCP_PosnRes_block_invoke_172(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v1 + 48))(*(a1 + 56), a1 + 64) == 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fw Accepted MSB Rep\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga10_02SendPositionReport_block_invoke");
      v5 = 4;
LABEL_7:
      result = LbsOsaTrace_WriteLog(0x18u, __str, v4, v5, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fw MSB Rep\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga10_02SendPositionReport_block_invoke", 770);
      v5 = 0;
      goto LABEL_7;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice23Ga10_03SendAidingReportEP14s_gnsCP_AidReq_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v1 + 48))(*(a1 + 56), a1 + 64) == 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FWAccepted AidReq\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga10_03SendAidingReport_block_invoke");
      v5 = 4;
LABEL_7:
      result = LbsOsaTrace_WriteLog(0x18u, __str, v4, v5, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FW rejected AidReq\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga10_03SendAidingReport_block_invoke", 515);
      v5 = 0;
      goto LABEL_7;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];

  return gnss::GnssAdaptDevice::Ga10_01SendMeasurementsReport();
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v14, v1 + 760);
  v13 = 0;
  if (v15)
  {
    *&__src[1] = -1;
    WORD4(__src[1]) = 0;
    BYTE10(__src[1]) = -1;
    *(&__src[1] + 12) = -1;
    *(&__src[2] + 3) = -1;
    *(&__src[2] + 12) = 0xFFFFFFFF00000004;
    WORD2(__src[3]) = -1;
    BYTE6(__src[3]) = -1;
    DWORD2(__src[3]) = -1;
    WORD6(__src[3]) = 0;
    *&__src[4] = -NAN;
    DWORD2(__src[4]) = 0x7FFFFFFF;
    BYTE12(__src[4]) = -1;
    __src[5] = xmmword_299760FA0;
    *&__src[6] = 0xFFFFFFFF7FFFFFFFLL;
    *(&__src[6] + 7) = -1;
    *(&__src[6] + 12) = 0x8000000080000000;
    WORD4(__src[7]) = -1;
    DWORD1(__src[7]) = -1;
    *&v2 = 0x8000000080000000;
    *(&v2 + 1) = 0x8000000080000000;
    *(&__src[7] + 12) = v2;
    WORD6(__src[8]) = -1;
    LOBYTE(__src[9]) = -1;
    memset_pattern16(&__src[9] + 4, &unk_299760FD0, 0x78uLL);
    BYTE12(__src[16]) = -1;
    LODWORD(__src[17]) = 255;
    *(&__src[18] + 4) = -1;
    *(&__src[17] + 4) = -1;
    *(&__src[17] + 11) = -1;
    HIDWORD(__src[18]) = 0;
    *&__src[19] = 0;
    *&__src[0] = 4294967294;
    *(&__src[0] + 1) = 0xFFFFFFFF00000000;
    v3 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3;
    block[3] = &__block_descriptor_tmp_188;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v9, v14);
    memcpy(v10, __src, sizeof(v10));
    dispatch_async(v3, block);
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__src, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__src, 0x40FuLL, "%10u %s%c %s: #%04hx PosRep\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke_2", 258);
    LbsOsaTrace_WriteLog(0x18u, __src, v5, 0, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v12);
  result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v14);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29969387C(_Unwind_Exception *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v1 - 120);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3(uint64_t a1)
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

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_190(uint64_t a1)
{
  __src[237] = *MEMORY[0x29EDCA608];
  if (*(a1 + 64))
  {
    v2 = *(a1 + 32);
    LODWORD(__src[0]) = 0;
    BYTE4(__src[0]) = 0;
    __src[1] = -1;
    LODWORD(__src[2]) = -1;
    WORD2(__src[2]) = 0;
    *(&__src[2] + 6) = -1;
    BYTE2(__src[3]) = -1;
    *(&__src[3] + 3) = 0;
    *(&__src[4] + 1) = 0;
    BYTE1(__src[5]) = -1;
    *(&__src[5] + 2) = 0;
    __src[6] = 0;
    v3 = &__src[14] + 4;
    v4 = &__src[33];
    LOBYTE(__src[7]) = -1;
    v5 = 44;
    BYTE4(__src[7]) = 0;
    do
    {
      v6 = &__src[7] + v5 + 4;
      *v6 = 5;
      *(v6 + 2) = 0;
      v6[6] = -1;
      v7 = v3;
      v8 = 120;
      do
      {
        *(v7 - 4) = -1;
        *v7 = -1;
        v7 += 2;
        v8 -= 8;
      }

      while (v8);
      *(v6 + 32) = -1;
      *(v6 + 66) = -1;
      *(v6 + 134) = -256;
      *(v6 + 138) = 0;
      *(v6 + 18) = 0;
      *(v6 + 38) = -1;
      v9 = v4;
      v10 = 60;
      v6[156] = -1;
      do
      {
        *(v9 - 2) = -1;
        *v9 = -1;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      *(v6 + 218) = -1;
      v5 += 224;
      v3 += 224;
      v4 += 28;
    }

    while (v5 != 1836);
    __src[1] = 0xFFFFFFFF00000000;
    LODWORD(__src[0]) = -2;
    v11 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_192;
    block[3] = &__block_descriptor_tmp_195;
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v17, a1 + 40);
    memcpy(v18, __src, sizeof(v18));
    dispatch_async(v11, block);
    result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v17);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__src, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__src, 0x40FuLL, "%10u %s%c %s: #%04hx AidRep\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke", 258);
      result = LbsOsaTrace_WriteLog(0x18u, __src, v14, 0, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_192(uint64_t a1)
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

uint64_t __copy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c87_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency6Cplane22AssistanceNeededReportEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_199(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];

  return gnss::GnssAdaptDevice::Ga10_01SendMeasurementsReport();
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_201(uint64_t a1)
{
  v150 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v147, v2 + 760);
  if (!v148)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosRep\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga10_02SendPositionReport", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
    }

    goto LABEL_190;
  }

  *__src = 0;
  *&__src[16] = -1;
  *&__src[24] = 0;
  __src[26] = -1;
  *&__src[28] = -1;
  *&__src[35] = -1;
  *&__src[44] = 0xFFFFFFFF00000004;
  *&__src[52] = -1;
  __src[54] = -1;
  v5 = -1;
  *&__src[56] = -1;
  *&__src[60] = 0;
  *&__src[64] = -NAN;
  *&__src[72] = 0x7FFFFFFF;
  __src[76] = -1;
  *&__src[80] = xmmword_299760FA0;
  *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
  *&__src[103] = -1;
  *&__src[108] = 0x8000000080000000;
  *&__src[116] = -1;
  *&__src[120] = -1;
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  *&__src[124] = v6;
  *&__src[140] = -1;
  __src[144] = -1;
  memset_pattern16(&__src[148], &unk_299760FD0, 0x78uLL);
  __src[268] = -1;
  *&__src[272] = 255;
  *&__src[292] = -1;
  *&__src[276] = -1;
  *&__src[283] = -1;
  *&__src[300] = 0;
  *&__src[304] = 0;
  *&__src[8] = 0xFFFFFFFF00000000;
  v7 = *(v2 + 128);
  v8 = *(v2 + 136) - v7;
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = 0x7D6343EB1A1F58D1 * (v8 >> 2);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (*(v7 + 52) == v9)
    {
      v12 = 0;
LABEL_10:
      if (v12 < v10)
      {
        v5 = *(v7 + 196 * v12 + 44);
        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      v17 = (v7 + 248);
      v18 = v11 - 1;
      while (v18 != v12)
      {
        v19 = *v17;
        v17 += 49;
        ++v12;
        if (v19 == v9)
        {
          if (v12 < v10)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v5 = -1;
  }

LABEL_21:
  *&__src[12] = v5;
  if (*(a1 + 60) == 1)
  {
    gnss::GnssAdaptDevice::Ga10_17InvokePVTMCbForE911(v2, (a1 + 40));
  }

  if (!*(a1 + 44))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
    }

    goto LABEL_190;
  }

  *(v2 + 1024) = 0;
  *&__src[16] = *(a1 + 40);
  if (*(a1 + 60) != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not enough Satellites,Err status,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "Ga10_02SendPositionReport", 769, *(a1 + 60));
      LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
    }

    *__src = -4;
    *&__src[4] |= 8u;
    goto LABEL_172;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pos Avlbl\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
  }

  *&__src[20] = *(a1 + 124);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS ToW,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 73, "Ga10_02SendPositionReport", *&__src[20]);
    LbsOsaTrace_WriteLog(0x18u, __str, v23, 4, 1);
  }

  if (*(a1 + 128) != 255)
  {
    __src[26] = *(a1 + 128);
  }

  if (*&__src[12] == 2 && *(a1 + 144) == 1)
  {
    v24 = *(a1 + 132);
    *&__src[32] = 1;
    *&__src[36] = v24;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS ToD,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "Ga10_02SendPositionReport", *&__src[36]);
      LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
    }

    if (*(a1 + 136) != 0xFFFF)
    {
      *&__src[40] = *(a1 + 136);
    }

    if (*(a1 + 138) != 255)
    {
      __src[42] = *(a1 + 138);
    }
  }

  v27 = *(a1 + 64);
  if (v27 == 2)
  {
    *&__src[28] = 1;
  }

  else if (v27 == 1)
  {
    *&__src[28] = 0;
  }

  else
  {
    *&__src[28] = -1;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fix Type,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 87, "Ga10_02SendPositionReport", 515, *(a1 + 64));
      LbsOsaTrace_WriteLog(0x18u, __str, v33, 2, 1);
    }
  }

  v34 = *(a1 + 68);
  if (v34 <= 3)
  {
    switch(v34)
    {
      case 0:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v54 = mach_continuous_time();
          v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Not avlbl\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v55, 4, 1);
        }

        goto LABEL_103;
      case 1:
        v72 = *(a1 + 72);
        v71 = *(a1 + 76);
        *&__src[64] = 0;
        *&__src[124] = v71;
        if (v72 == 2)
        {
          *&__src[124] = v71 | 0x800000;
        }

        *&__src[128] = *(a1 + 80);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v73 = mach_continuous_time();
          v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt\n", (*&g_MacClockTicksToMsRelation * v73), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v74, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v75 = mach_continuous_time();
          v76 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d\n", (*&g_MacClockTicksToMsRelation * v75), "ADP", 68, "Ga10_02SendPositionReport", *&__src[124], *&__src[128]);
          LbsOsaTrace_WriteLog(0x18u, __str, v76, 5, 1);
        }

        goto LABEL_103;
      case 2:
        v43 = *(a1 + 72);
        v42 = *(a1 + 76);
        *&__src[64] = 1;
        *&__src[68] = v42;
        if (v43 == 2)
        {
          *&__src[68] = v42 | 0x800000;
        }

        *&__src[72] = *(a1 + 80);
        __src[76] = *(a1 + 86);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt Uncert Circle\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v45, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v46 = mach_continuous_time();
          v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,UncRad,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "Ga10_02SendPositionReport", *&__src[68], *&__src[72], __src[76]);
          LbsOsaTrace_WriteLog(0x18u, __str, v47, 5, 1);
        }

        goto LABEL_103;
    }

LABEL_81:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v56 = mach_continuous_time();
      v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape type,%u\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 69, "Ga10_02SendPositionReport", 515, *(a1 + 68));
      LbsOsaTrace_WriteLog(0x18u, __str, v57, 0, 1);
    }

    goto LABEL_103;
  }

  if (v34 > 15)
  {
    if (v34 == 16)
    {
      v65 = *(a1 + 72);
      v64 = *(a1 + 76);
      *&__src[64] = 9;
      *&__src[92] = v64;
      if (v65 == 2)
      {
        *&__src[92] = v64 | 0x800000;
      }

      *&__src[96] = *(a1 + 80);
      *&__src[102] = *(a1 + 86);
      __src[104] = *(a1 + 88) >> (*&__src[12] == 1);
      __src[106] = *(a1 + 97);
      v66 = *(a1 + 84);
      *&__src[100] = v66;
      if (*(a1 + 92) == 2)
      {
        *&__src[100] = v66 | 0x8000;
      }

      __src[105] = *(a1 + 96);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v67 = mach_continuous_time();
        v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid pt Alt & Unc Eclipse\n", (*&g_MacClockTicksToMsRelation * v67), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v68, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v69 = mach_continuous_time();
        v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,SemiMajAxis,%u,SemiMinAxis,%u,OrientAngle,%u,Conf,%u,Alt,%u,UncAlt,%u\n", (*&g_MacClockTicksToMsRelation * v69), "ADP", 68, "Ga10_02SendPositionReport", *&__src[92], *&__src[96], __src[102], __src[103], __src[104], __src[106], *&__src[100], __src[105]);
        LbsOsaTrace_WriteLog(0x18u, __str, v70, 5, 1);
      }

      goto LABEL_103;
    }

    if (v34 == 32)
    {
      v49 = *(a1 + 72);
      v48 = *(a1 + 76);
      *&__src[64] = 10;
      *&__src[108] = v48;
      if (v49 == 2)
      {
        *&__src[108] = v48 | 0x800000;
      }

      *&__src[112] = *(a1 + 80);
      *&__src[116] = *(a1 + 100);
      __src[120] = *(a1 + 98);
      __src[119] = *(a1 + 99);
      __src[118] = *(a1 + 86);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v50 = mach_continuous_time();
        v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Arc\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v51, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v52 = mach_continuous_time();
        v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,InnerRad,%u,IncludedAngle,%u,offsetAngle,%u,UncRad,%u\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 68, "Ga10_02SendPositionReport", *&__src[108], *&__src[112], *&__src[116], __src[120], __src[119], __src[118]);
        LbsOsaTrace_WriteLog(0x18u, __str, v53, 5, 1);
      }

      goto LABEL_103;
    }

    goto LABEL_81;
  }

  if (v34 != 4)
  {
    if (v34 == 8)
    {
      v36 = *(a1 + 72);
      v35 = *(a1 + 76);
      *&__src[64] = 8;
      *&__src[132] = v35;
      if (v36 == 2)
      {
        *&__src[132] = v35 | 0x800000;
      }

      *&__src[136] = *(a1 + 80);
      v37 = *(a1 + 84);
      *&__src[140] = v37;
      if (*(a1 + 92) == 2)
      {
        *&__src[140] = v37 | 0x8000;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt Alt\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,Alt,%u\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 68, "Ga10_02SendPositionReport", *&__src[132], *&__src[136], *&__src[140]);
        LbsOsaTrace_WriteLog(0x18u, __str, v41, 5, 1);
      }

      goto LABEL_103;
    }

    goto LABEL_81;
  }

  v59 = *(a1 + 72);
  v58 = *(a1 + 76);
  *&__src[64] = 3;
  *&__src[80] = v58;
  if (v59 == 2)
  {
    *&__src[80] = v58 | 0x800000;
  }

  *&__src[84] = *(a1 + 80);
  *&__src[88] = *(a1 + 86);
  __src[90] = *(a1 + 88) >> (*&__src[12] == 1);
  __src[91] = *(a1 + 97);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v60 = mach_continuous_time();
    v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ShapeType Ellipsoid Pt Unc Elipse\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 73, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v61, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v62 = mach_continuous_time();
    v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%d,Long,%d,SemiMajAxis,%u,SemiMinAxis,%u,OrientAngle,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 68, "Ga10_02SendPositionReport", *&__src[80], *&__src[84], __src[88], __src[89], __src[90], __src[91]);
    LbsOsaTrace_WriteLog(0x18u, __str, v63, 5, 1);
  }

LABEL_103:
  v77 = *(a1 + 108);
  if (v77 <= 1)
  {
    if (v77)
    {
      if (v77 != 1)
      {
LABEL_141:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v96 = mach_continuous_time();
          v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Velocity type,%u\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 69, "Ga10_02SendPositionReport", 515, *(a1 + 108));
          LbsOsaTrace_WriteLog(0x18u, __str, v97, 0, 1);
        }

        goto LABEL_143;
      }

      *&__src[276] = *(a1 + 112);
      *&__src[272] = 0;
      *&__src[4] |= 4u;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v82 = mach_continuous_time();
        v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 73, "Ga10_02SendPositionReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v83, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v84 = mach_continuous_time();
        v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v84), "ADP", 68, "Ga10_02SendPositionReport", *&__src[276], *&__src[278]);
        LbsOsaTrace_WriteLog(0x18u, __str, v85, 5, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v94 = mach_continuous_time();
      v95 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VelInfo not avlbl\n", (*&g_MacClockTicksToMsRelation * v94), "ADP", 73, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v95, 4, 1);
    }
  }

  else
  {
    switch(v77)
    {
      case 2:
        *&__src[272] = 1;
        *&__src[280] = *(a1 + 112);
        if (*(a1 + 118) <= 0xFFu)
        {
          __src[284] = *(a1 + 118);
        }

        if (*(a1 + 116) != 255)
        {
          __src[285] = *(a1 + 116);
        }

        *&__src[4] |= 4u;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v86 = mach_continuous_time();
          v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor with Ver\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v87, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v88 = mach_continuous_time();
          v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u,VSpeed,%u,VSpeedDir,%u\n", (*&g_MacClockTicksToMsRelation * v88), "ADP", 68, "Ga10_02SendPositionReport", *&__src[280], *&__src[282], __src[284], __src[285]);
          LbsOsaTrace_WriteLog(0x18u, __str, v89, 5, 1);
        }

        break;
      case 4:
        *&__src[272] = 2;
        *&__src[286] = *(a1 + 112);
        if (*(a1 + 120) <= 0xFFu)
        {
          __src[290] = *(a1 + 120);
        }

        *&__src[4] |= 4u;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v90 = mach_continuous_time();
          v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor with Unc\n", (*&g_MacClockTicksToMsRelation * v90), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v91, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v92 = mach_continuous_time();
          v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u,UncSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v92), "ADP", 68, "Ga10_02SendPositionReport", *&__src[286], *&__src[288], __src[290]);
          LbsOsaTrace_WriteLog(0x18u, __str, v93, 5, 1);
        }

        break;
      case 8:
        *&__src[272] = 3;
        *&__src[292] = *(a1 + 112);
        if (*(a1 + 118) <= 0xFFu)
        {
          __src[296] = *(a1 + 118);
        }

        if (*(a1 + 116) != 255)
        {
          __src[297] = *(a1 + 116);
        }

        if (*(a1 + 120) <= 0xFFu)
        {
          __src[298] = *(a1 + 120);
        }

        if (*(a1 + 122) <= 0xFFu)
        {
          __src[299] = *(a1 + 122);
        }

        *&__src[4] |= 4u;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v78 = mach_continuous_time();
          v79 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Vel Estimate is Hor with Ver and Uncert\n", (*&g_MacClockTicksToMsRelation * v78), "ADP", 73, "Ga10_02SendPositionReport");
          LbsOsaTrace_WriteLog(0x18u, __str, v79, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v80 = mach_continuous_time();
          v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bearing,%u,HSpeed,%u,VSpeed,%u,VSpeedDir,%u,HUncSpeed,%u,VUncSpeed,%u\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 68, "Ga10_02SendPositionReport", *&__src[292], *&__src[294], __src[296], __src[297], __src[298], __src[299]);
          LbsOsaTrace_WriteLog(0x18u, __str, v81, 5, 1);
        }

        break;
      default:
        goto LABEL_141;
    }
  }

LABEL_143:
  v98 = *(a1 + 45);
  if (v98)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v99 = mach_continuous_time();
      v100 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS Fix\n", (*&g_MacClockTicksToMsRelation * v99), "ADP", 73, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v100, 4, 1);
    }

    *&__src[300] |= 1u;
    *&__src[4] |= 1u;
    v98 = *(a1 + 45);
  }

  if ((v98 & 0x80) == 0)
  {
    goto LABEL_170;
  }

  v101 = *(v2 + 128);
  v102 = *(v2 + 136) - v101;
  if (!v102)
  {
    goto LABEL_160;
  }

  v103 = *(a1 + 40);
  v104 = 0x7D6343EB1A1F58D1 * (v102 >> 2);
  if (v104 <= 1)
  {
    v105 = 1;
  }

  else
  {
    v105 = v104;
  }

  if (*(v101 + 52) != v103)
  {
    v106 = 0;
    v108 = (v101 + 248);
    v109 = v105 - 1;
    while (v109 != v106)
    {
      v110 = *v108;
      v108 += 49;
      ++v106;
      if (v110 == v103)
      {
        if (v106 < v104)
        {
          goto LABEL_154;
        }

        goto LABEL_160;
      }
    }

    goto LABEL_160;
  }

  v106 = 0;
LABEL_154:
  if (v106 >= v104)
  {
LABEL_160:
    v107 = 0;
    goto LABEL_161;
  }

  v107 = *(v101 + 196 * v106 + 48);
LABEL_161:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v111 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (v107)
    {
      v112 = 84;
    }

    else
    {
      v112 = 70;
    }

    v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HELO enabled,%c\n", v111, "ADP", 73, "Ga10_02SendPositionReport", v112);
    LbsOsaTrace_WriteLog(0x18u, __str, v113, 4, 1);
  }

  if (v107)
  {
    *&__src[300] |= 2u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v114 = mach_continuous_time();
      v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HELO Fix\n", (*&g_MacClockTicksToMsRelation * v114), "ADP", 73, "Ga10_02SendPositionReport");
      LbsOsaTrace_WriteLog(0x18u, __str, v115, 4, 1);
    }
  }

  *&__src[4] |= 0x10u;
LABEL_170:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v116 = mach_continuous_time();
    v117 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssMask,%u,RspType,%u\n", (*&g_MacClockTicksToMsRelation * v116), "ADP", 73, "Ga10_02SendPositionReport", *(a1 + 45), *&__src[4]);
    LbsOsaTrace_WriteLog(0x18u, __str, v117, 4, 1);
  }

LABEL_172:
  *&__src[304] = gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(v2, *(a1 + 48));
  v118 = *(v2 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice25Ga10_02SendPositionReportEPK15s_gnsCP_PosnRes_block_invoke_172;
  block[3] = &__block_descriptor_tmp_177;
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](v144, v147);
  memcpy(v145, __src, sizeof(v145));
  dispatch_async(v118, block);
  v119 = *(v2 + 128);
  v120 = *(v2 + 136) - v119;
  if (v120)
  {
    v121 = 0x7D6343EB1A1F58D1 * (v120 >> 2);
    if (v121 <= 1)
    {
      v122 = 1;
    }

    else
    {
      v122 = v121;
    }

    if (*(v119 + 52) == *&__src[16])
    {
      v123 = 0;
LABEL_178:
      if (v123 < v121)
      {
        v124 = *(v119 + 196 * v123 + 40);
        v125 = mach_continuous_time();
        v126 = *(v2 + 128) + 196 * v123;
        *(v126 + 184) = (*&g_MacClockTicksToMsRelation * v125) - v124;
        v127 = *(a1 + 40);
        v128 = *(a1 + 56);
        v129 = *(a1 + 88);
        *(v126 + 96) = *(a1 + 72);
        *(v126 + 112) = v129;
        *(v126 + 64) = v127;
        *(v126 + 80) = v128;
        v130 = *(a1 + 104);
        v131 = *(a1 + 120);
        v132 = *(a1 + 136);
        *(v126 + 176) = *(a1 + 152);
        *(v126 + 144) = v131;
        *(v126 + 160) = v132;
        *(v126 + 128) = v130;
      }

      v133 = *(a1 + 60);
      if (v133 == 9)
      {
        v134 = 3;
      }

      else
      {
        v134 = 19;
      }

      if (v133 == 1)
      {
        v135 = 2;
      }

      else
      {
        v135 = v134;
      }

      gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v2, *(a1 + 40), 0, v135);
    }

    else
    {
      v123 = 0;
      v140 = (v119 + 248);
      v141 = v122 - 1;
      while (v141 != v123)
      {
        v142 = *v140;
        v140 += 49;
        ++v123;
        if (v142 == *&__src[16])
        {
          if (v123 < v121)
          {
            goto LABEL_178;
          }

          break;
        }
      }
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v136 = mach_continuous_time();
    v137 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v136), "ADP", 68, "Ga10_02SendPositionReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v137, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v144);
LABEL_190:
  result = std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v147);
  v139 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3_203()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v61 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 40);
  v2 = *(*(*(v0 + 32) + 8) + 24);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga10_03SendAidingReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v59, (v1 + 99));
  if (v60)
  {
    LODWORD(__src[0]) = 0;
    BYTE4(__src[0]) = 0;
    __src[1] = -1;
    LODWORD(__src[2]) = -1;
    WORD2(__src[2]) = 0;
    *(&__src[2] + 6) = -1;
    BYTE2(__src[3]) = -1;
    *(&__src[3] + 3) = 0;
    *(&__src[4] + 1) = 0;
    BYTE1(__src[5]) = -1;
    *(&__src[5] + 2) = 0;
    __src[6] = 0;
    v5 = &__src[14] + 4;
    v6 = &__src[33];
    LOBYTE(__src[7]) = -1;
    v7 = 44;
    BYTE4(__src[7]) = 0;
    do
    {
      v8 = &__src[7] + v7 + 4;
      *v8 = 5;
      *(v8 + 2) = 0;
      v8[6] = -1;
      v9 = v5;
      v10 = 120;
      do
      {
        *(v9 - 4) = -1;
        *v9 = -1;
        v9 += 2;
        v10 -= 8;
      }

      while (v10);
      *(v8 + 32) = -1;
      *(v8 + 66) = -1;
      *(v8 + 134) = -256;
      *(v8 + 138) = 0;
      *(v8 + 18) = 0;
      *(v8 + 38) = -1;
      v11 = v6;
      v12 = 60;
      v8[156] = -1;
      do
      {
        *(v11 - 2) = -1;
        *v11 = -1;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      *(v8 + 218) = -1;
      v7 += 224;
      v5 += 224;
      v6 += 28;
    }

    while (v7 != 1836);
    LODWORD(__src[1]) = 0;
    if (!v2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Rep\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "Ga10_03SendAidingReport", 513);
        LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
      }

      goto LABEL_35;
    }

    v13 = *v2;
    LODWORD(__src[2]) = *v2;
    v14 = v1[16];
    v15 = v1[17] - v14;
    if (v15)
    {
      v16 = 0x7D6343EB1A1F58D1 * (v15 >> 2);
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      if (*(v14 + 52) == v13)
      {
        v18 = 0;
LABEL_17:
        if (v18 < v16)
        {
          v19 = v14 + 196 * v18;
          v20 = *(v19 + 44);
          *(v19 + 60) = 1;
LABEL_30:
          HIDWORD(__src[1]) = v20;
          v30 = *(v2 + 1);
          if (v30)
          {
            LODWORD(__src[0]) = -8;
            if (*v30 == 1)
            {
              v31 = 64;
              WORD2(__src[2]) = 64;
              BYTE4(__src[0]) = 1;
            }

            else
            {
              v31 = 0;
            }

            if (v30[1] == 1)
            {
              v31 |= 0x20u;
              WORD2(__src[2]) = v31;
              BYTE4(__src[0]) = 1;
            }

            if (v30[2] == 1)
            {
              v31 |= 4u;
              WORD2(__src[2]) = v31;
              BYTE4(__src[0]) = 1;
            }

            if (v30[3] == 1)
            {
              v34 = *(v2 + 2);
              if (v34)
              {
                if (*(v34 + 7) == 1)
                {
                  v31 |= 8u;
                  WORD2(__src[2]) = v31;
                  if (v20 == 2)
                  {
                    v35 = *(v34 + 16);
                  }

                  else
                  {
                    v35 = *(v34 + 16) & 0x3FF;
                  }

                  HIWORD(__src[2]) = v35;
                  LOBYTE(__src[3]) = *(v34 + 18);
                  if (*(v34 + 20))
                  {
                    v36 = (v34 + 21);
                    v37 = &__src[3] + 2;
                    v38 = (v34 + 86);
                    v39 = *(v34 + 20) - 1;
                    if (v39 >= 0xE)
                    {
                      v39 = 14;
                    }

                    v40 = v39 + 1;
                    do
                    {
                      v41 = *v36++;
                      *v37 = v41;
                      v42 = *v38;
                      v38 += 2;
                      v37[15] = v42;
                      ++v37;
                      --v40;
                    }

                    while (v40);
                    v43 = v39 + 1;
                  }

                  else
                  {
                    v43 = 0;
                  }

                  BYTE1(__src[3]) = v43;
                  LOBYTE(__src[7]) = *(v34 + 19);
                  BYTE4(__src[0]) = 1;
                }

                if (*(v34 + 6) == 1)
                {
                  v31 |= 1u;
                  WORD2(__src[2]) = v31;
                  BYTE4(__src[0]) = 1;
                }

                if (*(v34 + 4) == 1)
                {
                  v31 |= 2u;
                  WORD2(__src[2]) = v31;
                  BYTE4(__src[0]) = 1;
                }

                if (*(v34 + 8) == 1)
                {
                  v31 |= 0x80u;
                  WORD2(__src[2]) = v31;
                  BYTE4(__src[0]) = 1;
                }
              }
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v44 = mach_continuous_time();
              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AidReqMask,%u\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 73, "Ga10_03SendAidingReport", v31);
              LbsOsaTrace_WriteLog(0x18u, __str, v45, 4, 1);
            }

            goto LABEL_63;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Common Aid Rep\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "Ga10_03SendAidingReport", 515);
            LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
          }

LABEL_35:
          LODWORD(__src[0]) = -2;
LABEL_63:
          v46 = v1[37];
          *__str = MEMORY[0x29EDCA5F8];
          v53 = 1174405120;
          v54 = ___ZN4gnss15GnssAdaptDevice23Ga10_03SendAidingReportEP14s_gnsCP_AidReq_block_invoke;
          v55 = &__block_descriptor_tmp_184;
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v56, v59);
          memcpy(v57, __src, sizeof(v57));
          dispatch_async(v46, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
          {
            bzero(v51, 0x410uLL);
            v47 = mach_continuous_time();
            v48 = snprintf(v51, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 68, "Ga10_03SendAidingReport");
            LbsOsaTrace_WriteLog(0x18u, v51, v48, 5, 1);
          }

          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v56);
          goto LABEL_66;
        }
      }

      else
      {
        v18 = 0;
        v27 = (v14 + 248);
        v28 = v17 - 1;
        while (v28 != v18)
        {
          v29 = *v27;
          v27 += 49;
          ++v18;
          if (v29 == v13)
          {
            if (v18 < v16)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }
    }

    v20 = -1;
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Req\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "Ga10_03SendAidingReport", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "Ga10_03SendAidingReport");
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
  }

LABEL_66:
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v59);
  v49 = *(*(*(v0 + 32) + 8) + 24);
  if (v49[2])
  {
    free(v49[2]);
    *(*(*(*(v0 + 32) + 8) + 24) + 16) = 0;
    v49 = *(*(*(v0 + 32) + 8) + 24);
  }

  if (!v49[1] || (free(v49[1]), *(*(*(*(v0 + 32) + 8) + 24) + 8) = 0, (v49 = *(*(*(v0 + 32) + 8) + 24)) != 0))
  {
    free(v49);
    *(*(*(v0 + 32) + 8) + 24) = 0;
  }

  v50 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_4(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Api,%u,status,%u,id,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga10_00HandleGnsCpStatusResponse_block_invoke_4", *(a1 + 44), *(a1 + 48), *(a1 + 40));
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
  }

  if (*(a1 + 44) > 1u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS CP API\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke_4", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }

    v5 = 7;
  }

  else
  {
    v5 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, *(a1 + 48));
  }

  v30 = 0;
  v8 = v2 + 216;
  v9 = *(v2 + 216);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = *(a1 + 40);
  v11 = v2 + 216;
  v12 = *(v2 + 216);
  do
  {
    v13 = *(v12 + 32);
    v14 = v13 >= v10;
    v15 = v13 < v10;
    if (v14)
    {
      v11 = v12;
    }

    v12 = *(v12 + 8 * v15);
  }

  while (v12);
  if (v11 != v8 && v10 >= *(v11 + 32))
  {
    v18 = v2 + 216;
    do
    {
      v19 = *(v9 + 32);
      v14 = v19 >= v10;
      v20 = v19 < v10;
      if (v14)
      {
        v18 = v9;
      }

      v9 = *(v9 + 8 * v20);
    }

    while (v9);
    if (v18 == v8 || v10 < *(v18 + 32))
    {
      v18 = v2 + 216;
    }

    std::function<void ()(gnss::Result)>::operator=(v29, v18 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v2 + 208), v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11 + 40);
    operator delete(v11);
  }

  else
  {
LABEL_41:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke_4", 770, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }
  }

  if (v30)
  {
    v21 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_5;
    block[3] = &__block_descriptor_tmp_208;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, v29);
    v28[8] = v5;
    dispatch_async(v21, block);
    v22 = *(a1 + 44);
    if (v22)
    {
      if (v22 != 1 || v5 != 1)
      {
        goto LABEL_37;
      }
    }

    else if (v5 != 2 && v5 != 8)
    {
      goto LABEL_37;
    }

    gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v2, *(a1 + 40), 0, 3);
LABEL_37:
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    goto LABEL_38;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LutHdl Resp\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
  }

LABEL_38:
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_5(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t gnss::GnssAdaptDevice::Ga10_05CPECallAsyncEventCB(int a1, unsigned int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga10_05CPECallAsyncEventCB");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v8 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Api,%u,status,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga10_06HandleCPEcallAsyncEventCB", a1, a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    }

    v11 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v8, a2);
    if (a1 == 1)
    {
      if (a2 == 4)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11;
      }

      v13 = *(v8 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v22 = 0x40000000;
      v23 = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_221;
      v24 = &__block_descriptor_tmp_231;
      v25 = v8;
      v26 = v14;
      goto LABEL_13;
    }

    if (!a1)
    {
      v12 = *(v8 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v22 = 0x40000000;
      v23 = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke;
      v24 = &__block_descriptor_tmp_220;
      v25 = v8;
      v26 = v11;
      v13 = v12;
LABEL_13:
      dispatch_async(v13, __str);
      goto LABEL_14;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS Ecall API,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB", 515, a1);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }
  }

LABEL_14:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga10_05CPECallAsyncEventCB");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke(uint64_t a1)
{
  v20[4] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, v2 + 600);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, v2 + 632);
  if (v19)
  {
    v3 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2;
    block[3] = &__block_descriptor_tmp_213;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, v18);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, v20);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 600);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartRespOnAccepted\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (v20[3])
  {
    v6 = *(v2 + 296);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_215;
    v11[3] = &__block_descriptor_tmp_218;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, v18);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, v20);
    v13[8] = *(a1 + 40);
    dispatch_async(v6, v11);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 632);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartRespOnCompleted\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299696EEC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 - 136);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, 1);
}

uint64_t __copy_helper_block_e8_32c23_ZTSN4gnss10s_StatusCBE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 32, a2 + 32);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 64, a2 + 64);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_32c23_ZTSN4gnss10s_StatusCBE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 64);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_215(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 96);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 64;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_221(uint64_t a1)
{
  v20[4] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, v2 + 664);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, v2 + 696);
  if (v19)
  {
    v3 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_3;
    block[3] = &__block_descriptor_tmp_224;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, v18);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, v20);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 664);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopRespOnAccepted\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (v20[3])
  {
    v6 = *(v2 + 296);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_226;
    v11[3] = &__block_descriptor_tmp_229;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, v18);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, v20);
    v13[8] = *(a1 + 40);
    dispatch_async(v6, v11);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 696);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopRespOnCompleted\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga10_06HandleCPEcallAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996973C8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 - 136);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, 1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga10_06HandleCPEcallAsyncEventCBE14e_gnsEcall_Api11e_gnsStatus_block_invoke_2_226(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 96);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 64;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice31Ga10_05SendSessionSummaryReportEjb18e_gnsPPDU_SessCode_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = (*(*v1 + 48))(*(a1 + 56), a1 + 64);
  if (v2 == 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SummaryRep sent to FW\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga10_05SendSessionSummaryReport_block_invoke");
      v6 = 4;
LABEL_7:
      result = LbsOsaTrace_WriteLog(0x18u, __str, v5, v6, 1);
    }
  }

  else
  {
    v7 = v2;
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SummaryRep,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga10_05SendSessionSummaryReport_block_invoke", 257, v7);
      v6 = 0;
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v12, v1 + 888);
  if (v13)
  {
    v2 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke_2;
    block[3] = &__block_descriptor_tmp_248;
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v10, v12);
    v10[8] = 4;
    dispatch_async(v2, block);
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FtaReportCb\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga10_07FTAssistanceRequest_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga10_07FTAssistanceRequest_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }
  }

  result = std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v12);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke_2(uint64_t a1)
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

uint64_t __copy_helper_block_e8_32c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t gnss::GnssAdaptDevice::Ga10_08MapCdmaCodePhaseSearchWindow(gnss::GnssAdaptDevice *this)
{
  result = byte_2997610D0[this];
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga10_13RegisterGnsCpStatusResponse()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v52 = *MEMORY[0x29EDCA608];
  result = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(v0);
  if (!result)
  {
    goto LABEL_37;
  }

  v5 = result;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga10_00HandleGnsCpStatusResponse");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  if (v2)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        *v42 = 0;
        v43 = v42;
        v44 = 0x2000000000;
        v45 = gnssOsa_Calloc("Ga10_00HandleGnsCpStatusResponse", 2428, 1, 0x38uLL);
        v18 = *(v43 + 3);
        if (v18)
        {
          *v18 = *v2;
          if (*(v2 + 8))
          {
            v19 = gnssOsa_Calloc("Ga10_00HandleGnsCpStatusResponse", 2437, 1, 8uLL);
            *(*(v43 + 3) + 8) = v19;
            v20 = *(*(v43 + 3) + 8);
            if (v20)
            {
              *v20 = **(v2 + 8);
            }
          }

          if (*(v2 + 16))
          {
            v21 = gnssOsa_Calloc("Ga10_00HandleGnsCpStatusResponse", 2445, 1, 0xD8uLL);
            v22 = v43;
            *(*(v43 + 3) + 16) = v21;
            v23 = *(*(v22 + 3) + 16);
            if (v23)
            {
              v24 = *(v2 + 16);
              v25 = *(v24 + 16);
              *v23 = *v24;
              *(v23 + 16) = v25;
              v26 = *(v24 + 32);
              v27 = *(v24 + 48);
              v28 = *(v24 + 80);
              *(v23 + 64) = *(v24 + 64);
              *(v23 + 80) = v28;
              *(v23 + 32) = v26;
              *(v23 + 48) = v27;
              v29 = *(v24 + 96);
              v30 = *(v24 + 112);
              v31 = *(v24 + 144);
              *(v23 + 128) = *(v24 + 128);
              *(v23 + 144) = v31;
              *(v23 + 96) = v29;
              *(v23 + 112) = v30;
              v32 = *(v24 + 160);
              v33 = *(v24 + 176);
              v34 = *(v24 + 192);
              *(v23 + 206) = *(v24 + 206);
              *(v23 + 176) = v33;
              *(v23 + 192) = v34;
              *(v23 + 160) = v32;
            }
          }
        }

        v35 = *(v5 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v47 = 0x40000000;
        v48 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3_203;
        v49 = &unk_29EF6B300;
        *&v51[0] = v5;
        v50 = v42;
        dispatch_async(v35, __str);
        _Block_object_dispose(v42, 8);
        goto LABEL_35;
      }

      if (v3 == 3)
      {
        *&v51[0] = *v2;
        DWORD2(v51[0]) = *(v2 + 8);
        v11 = *(v5 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v47 = 0x40000000;
        v12 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_4;
        v13 = &__block_descriptor_tmp_210;
        goto LABEL_34;
      }
    }

    else
    {
      if (!v3)
      {
        memcpy(v51, v2, 0x2859CuLL);
        v11 = *(v5 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v47 = 0x40000000;
        v12 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_199;
        v13 = &__block_descriptor_tmp_200;
        goto LABEL_34;
      }

      if (v3 == 1)
      {
        v8 = *(v2 + 80);
        v51[4] = *(v2 + 64);
        v51[5] = v8;
        v51[6] = *(v2 + 96);
        v9 = *(v2 + 16);
        v51[0] = *v2;
        v51[1] = v9;
        v10 = *(v2 + 48);
        v51[2] = *(v2 + 32);
        *&v51[7] = *(v2 + 112);
        v51[3] = v10;
        v11 = *(v5 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v47 = 0x40000000;
        v12 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_201;
        v13 = &__block_descriptor_tmp_202;
LABEL_34:
        v48 = v12;
        v49 = v13;
        v50 = v5;
        dispatch_async(v11, __str);
        goto LABEL_35;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP Type,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse", 515, v3);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    goto LABEL_35;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      v11 = *(v5 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v47 = 0x40000000;
      v12 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke;
      v13 = &__block_descriptor_tmp_185;
      goto LABEL_34;
    }

    if (v3 == 1)
    {
      v11 = *(v5 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v47 = 0x40000000;
      v12 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2;
      v13 = &__block_descriptor_tmp_189;
      goto LABEL_34;
    }

LABEL_31:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse", 515, v3);
      LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
    }

    goto LABEL_35;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS API Status\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      goto LABEL_35;
    }

    goto LABEL_31;
  }

  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v42, v5 + 792);
  v41 = *(v5 + 288);
  *__str = MEMORY[0x29EDCA5F8];
  v47 = 1174405120;
  v48 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_190;
  v49 = &__block_descriptor_tmp_196;
  v50 = v5;
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v51, v42);
  dispatch_async(v41, __str);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v51);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v42);
LABEL_35:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(v42, 0x410uLL);
    v38 = mach_continuous_time();
    v39 = snprintf(v42, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "Ga10_00HandleGnsCpStatusResponse");
    result = LbsOsaTrace_WriteLog(0x18u, v42, v39, 5, 1);
  }

LABEL_37:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299698250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga10_14RegisterGnsFtaStatusResponse()
{
  v5 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FTA Req to Modem handled in posReq\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 73, "Ga10_14RegisterGnsFtaStatusResponse");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v2, 4, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::setNwAssistanceGpsAcquisition(uint64_t a1, const void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, 0x178uLL);
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29setNwAssistanceGpsAcquisitionERKNS_9Emergency6Cplane16GpsAcqAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_280;
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
      v8 = snprintf(__dst, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsAcquisition", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __dst, v8, 0, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29setNwAssistanceGpsAcquisitionERKNS_9Emergency6Cplane16GpsAcqAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v108 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v106, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v106, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v106);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }

    goto LABEL_122;
  }

  v5 = *(a1 + 72);
  if (v5 >= 0x240C8400)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v105, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v105, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v105);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Tow,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    }

    goto LABEL_122;
  }

  v15 = *(a1 + 76);
  if (v15 >= 0x11)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v104, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v104, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v104);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sat Count,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *(a1 + 76));
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }

    goto LABEL_122;
  }

  if (*(a1 + 440) != 3)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v103, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v103, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v103);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v84 = mach_continuous_time();
      v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosProtocol,%u\n", (*&g_MacClockTicksToMsRelation * v84), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 515, *(a1 + 440));
      LbsOsaTrace_WriteLog(0x18u, __str, v85, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v86 = mach_continuous_time();
      v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v87, 5, 1);
    }

    goto LABEL_122;
  }

  v20 = 0;
  v102 = 0;
  memset(&v101[1], 0, 192);
  do
  {
    v21 = v101 + v20;
    v21[18] = -1;
    *(v21 + 19) = 0;
    v21[27] = 0;
    *(v21 + 14) = -1;
    v20 += 12;
  }

  while (v20 != 192);
  LODWORD(v101[0]) = v5;
  LOBYTE(v101[1]) = v15;
  *(v101 + 4) = -NAN;
  HIDWORD(v101[0]) = -1;
  if (!v15)
  {
    goto LABEL_118;
  }

  v22 = 0;
  v23 = 0;
  v24 = (a1 + 125);
  v25 = &v101[1] + 13;
  do
  {
    v26 = *v24;
    if (v26 > 0x3F)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sat-ID Acq,%u\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
      }

      goto LABEL_94;
    }

    *(v25 - 11) = v26;
    v27 = *(a1 + 440);
    if (v27 < 2 || v27 == 3)
    {
      v29 = *(v24 - 13);
      if (v29 > 0x3FE)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId codePhase,%u\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 5) = v29;
      v30 = *(v24 - 7);
      if (v30 >= 0x14)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId intCodePhase Acq,%u\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v40, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 6) = v30;
      v31 = *(v24 - 6);
      if (v31 >= 4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId gpsBitNumber Acq,%u\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v45, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 3) = v31;
      v32 = *(v24 - 11);
      if ((v32 + 2048) >= 0x1000u)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v55 = mach_continuous_time();
          v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Dop0 Acq,%u\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v56, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 9) = v32;
      v33 = *(v24 - 9);
      if (v33 >= 0x40)
      {
        *(v25 - 10) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v61 = mach_continuous_time();
          v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Dop1 set to Zero\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v62, 4, 1);
        }
      }

      else
      {
        *(v25 - 10) = v33;
      }

      v63 = *(v24 - 8);
      if (v63 > 4)
      {
        *(v25 - 7) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v64 = mach_continuous_time();
          v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DopUnc set to Zero\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v65, 4, 1);
        }
      }

      else
      {
        *(v25 - 7) = v63;
      }

      if (*(a1 + 440) == 3)
      {
        LOBYTE(v26) = v26 - 1;
        *(v25 - 11) = v26;
        v66 = *(v24 - 5);
        if (v66 <= 0x1F)
        {
          LOBYTE(v67) = gnss::GnssAdaptDevice::Ga10_08MapCdmaCodePhaseSearchWindow(v66);
LABEL_78:
          *(v25 - 2) = v67;
          v68 = *(v24 - 3);
          if (v68 > 0x1F)
          {
            *(v25 - 1) = -1;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v77 = mach_continuous_time();
              v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Azimuth Out of range\n", (*&g_MacClockTicksToMsRelation * v77), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v78, 4, 1);
            }
          }

          else
          {
            *(v25 - 1) = v68;
          }

          v79 = *(v24 - 1);
          if (v79 > 7)
          {
            *v25 = -1;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v80 = mach_continuous_time();
              v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Elevation Out of Range\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v81, 4, 1);
            }
          }

          else
          {
            *v25 = v79;
          }

          goto LABEL_105;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v67 = *(v24 - 5);
        if (v67 < 0x10)
        {
          goto LABEL_78;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          goto LABEL_94;
        }
      }

      bzero(__str, 0x410uLL);
      v74 = mach_continuous_time();
      v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId codePhaseSearchWindow Acq,%u\n", (*&g_MacClockTicksToMsRelation * v74), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
      LbsOsaTrace_WriteLog(0x18u, __str, v75, 0, 1);
      goto LABEL_94;
    }

    if (v27 == 2)
    {
      v36 = *(v24 - 3);
      if (v36 > 0xFF)
      {
        *(v25 - 1) = -1;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Azimuth set to UINT8_MAX\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v42, 4, 1);
        }
      }

      else
      {
        *(v25 - 1) = v36 >> 4;
      }

      v43 = *(v24 - 1);
      if (v43 < 0)
      {
        *v25 = -1;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v46 = mach_continuous_time();
          v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Elevation set to UINT8_MAX\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v47, 4, 1);
        }
      }

      else
      {
        *v25 = v43 >> 4;
      }

      v48 = *(v24 - 13);
      if (v48 >= 0x400)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v53 = mach_continuous_time();
          v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId CodePhase,%u\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v54, 0, 1);
        }
      }

      else
      {
        *(v25 - 5) = 1022 - ((1023 * v48) >> 10);
        v49 = *(v24 - 7);
        if ((v49 & 0x80) != 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v57 = mach_continuous_time();
            v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId intCodePhase,%u\n", (*&g_MacClockTicksToMsRelation * v57), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
            LbsOsaTrace_WriteLog(0x18u, __str, v58, 0, 1);
          }
        }

        else
        {
          if (v49 <= 0x50)
          {
            v50 = 80;
          }

          else
          {
            v50 = -96;
          }

          v51 = v50 - v49;
          *(v25 - 6) = v51 - 20 * ((((103 * v51) & 0x8000) != 0) + ((103 * v51) >> 11));
          *(v25 - 3) = (((103 * v51) & 0x8000) != 0) + ((103 * v51) >> 11) - (((((103 * v51) & 0x8000) != 0) + ((103 * v51) >> 11) + ((((((103 * v51) >> 15) & 1) + ((103 * v51) >> 11)) & 0xC0) >> 6)) & 0xFC);
          v52 = *(v24 - 5);
          if (v52 >= 0x20)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v59 = mach_continuous_time();
              v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId codePhaseSearchWindow,%u\n", (*&g_MacClockTicksToMsRelation * v59), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
              LbsOsaTrace_WriteLog(0x18u, __str, v60, 0, 1);
            }
          }

          else
          {
            if (v52 >= 3)
            {
              if (v52 >= 0xD)
              {
                LOBYTE(v52) = 0;
              }

              else
              {
                LOBYTE(v52) = v52 + 3;
              }
            }

            else
            {
              v52 = (0x4027Fu >> (8 * (v52 & 0x1F))) & 0x7F;
            }

            *(v25 - 2) = v52;
            v69 = *(v24 - 11);
            if ((v69 + 2048) <= 0xFFFu)
            {
              *(v25 - 9) = v69;
              v70 = *(v24 - 9);
              if (v70 >= 0x40)
              {
                LOBYTE(v70) = 0;
              }

              *(v25 - 10) = v70;
              v71 = *(v24 - 8);
              if (v71 >= 5)
              {
                *(v25 - 7) = 0;
              }

              else
              {
                *(v25 - 7) = v71;
              }

              goto LABEL_105;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v72 = mach_continuous_time();
              v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Dop0,%u\n", (*&g_MacClockTicksToMsRelation * v72), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
              LbsOsaTrace_WriteLog(0x18u, __str, v73, 0, 1);
            }
          }
        }
      }

LABEL_94:
      ++v22;
      goto LABEL_95;
    }

LABEL_105:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v82 = mach_continuous_time();
      v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SatId,%u,CodePh,%u,Dop0,%u,Dop1,%u,DopUnc,%u,IntCodePh,%u,GpsBitNum,%u,CodePhSrchWin,%u,Azm,%u,Elevation,%u\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke", v26, *(v25 - 5), *(v25 - 9), *(v25 - 10), *(v25 - 7), *(v25 - 6), *(v25 - 3), *(v25 - 2), *(v25 - 1), *v25);
      LbsOsaTrace_WriteLog(0x18u, __str, v83, 4, 1);
    }

LABEL_95:
    v76 = *(a1 + 76);
    if (v23 > 0xE)
    {
      break;
    }

    ++v23;
    v24 += 20;
    v25 += 12;
  }

  while (v23 < v76);
  if (v22 < v76)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v88 = mach_continuous_time();
      v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No of Acq Inj,%u\n", (*&g_MacClockTicksToMsRelation * v88), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke", *(a1 + 76) - v22);
      LbsOsaTrace_WriteLog(0x18u, __str, v89, 4, 1);
    }

    GNS_AsstGpsAcqAsst(*(a1 + 444), 1, v101, 0);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v90 = mach_continuous_time();
      v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsAcqAsst invoked\n", (*&g_MacClockTicksToMsRelation * v90), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v91, 4, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v99, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v99, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v99);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v92 = mach_continuous_time();
      v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v92), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v93, 5, 1);
    }

    goto LABEL_122;
  }

LABEL_118:
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v100, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v100, "setNwAssistanceGpsAcquisition_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v100);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v94 = mach_continuous_time();
    v95 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Acquisition\n", (*&g_MacClockTicksToMsRelation * v94), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v95, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v96 = mach_continuous_time();
    v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v97, 5, 1);
  }

LABEL_122:
  v98 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996999D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setFtAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setFtAssistanceNeededReportENSt3__18functionIFvRKNS_9Emergency6Cplane23CellFTAssistanceRequestEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_282;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setFtAssistanceNeededReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice27setFtAssistanceNeededReportENSt3__18functionIFvRKNS_9Emergency6Cplane23CellFTAssistanceRequestEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setFtAssistanceNeededReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 888;
    if (__str != (v2 + 888))
    {
      v6 = v19;
      v7 = *(v2 + 912);
      if (v19 == __str)
      {
        if (v7 == v5)
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = 0;
          (*(**(v2 + 912) + 24))(*(v2 + 912), __str);
          (*(**(v2 + 912) + 32))(*(v2 + 912));
          *(v2 + 912) = 0;
          v19 = __str;
          (*(v20[0] + 24))(v20, v2 + 888);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = *(v2 + 912);
        }

        *(v2 + 912) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 912), __str);
        (*(**(v2 + 912) + 32))(*(v2 + 912));
        *(v2 + 912) = v19;
        v19 = __str;
      }

      else
      {
        v19 = *(v2 + 912);
        *(v2 + 912) = v6;
      }
    }

    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v16, "setFtAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setFtAssistanceNeededReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FTARep\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setFtAssistanceNeededReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v17, "setFtAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setFtAssistanceNeededReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29969A0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::injectFTAssistance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a2 + 16);
    *__str = *a2;
    v13 = v3;
    v14 = *(a2 + 32);
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice18injectFTAssistanceERKNS_9Emergency6Cplane16CellFTAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_292;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[2] = *__str;
    v10[3] = v13;
    v11 = v14;
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
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "injectFTAssistance", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice18injectFTAssistanceERKNS_9Emergency6Cplane16CellFTAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(v2 + 1024))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectFTAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
    }

    if (*(v2 + 88))
    {
      LOWORD(v40) = 0;
      v41 = xmmword_299760FB0;
      v42 = 0;
      if (*(a1 + 72) == 1)
      {
        v5 = *(a1 + 76);
        if (v5 < 4)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, a1 + 40);
          v6 = v44;
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v44, "injectFTAssistance_block_invoke");
LABEL_8:
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "injectFTAssistance_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
          }

          goto LABEL_22;
        }

        if (v5 != 4)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NetworkType,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "injectFTAssistance_block_invoke", 770, *(a1 + 76));
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, a1 + 40);
          v6 = v43;
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v43, "injectFTAssistance_block_invoke");
          goto LABEL_8;
        }

        if (*(a1 + 92) > 0x93A7Fu)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v47, "injectFTAssistance_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Int CDMA Fine Time,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "injectFTAssistance_block_invoke", 772, *(a1 + 92));
            LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "injectFTAssistance_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
          }
        }

        else
        {
          LODWORD(v41) = *(a1 + 92);
          v23 = *(a1 + 96);
          if (v23 < 0x3B9ACA00)
          {
            LOWORD(v40) = *(a1 + 100);
            *(&v41 + 4) = v23 | 0xA00000000;
            v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            gnss::GnssAdaptDevice::Ga10_15AlterFTABasedOnGrouDelay(&v41, &v41 + 1, &v40, v24, *(v2 + 112));
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v25 = mach_continuous_time();
              v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IntPart,%u,fracPart,%u,wkNum,%u,pulseUnc,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "injectFTAssistance_block_invoke", v41, DWORD1(v41), v40, DWORD2(v41));
              LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
            }

            GNS_FtaPulseInd(0, &v40);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v27 = mach_continuous_time();
              v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FtaPulseInd invoked\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 73, "injectFTAssistance_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, a1 + 40);
            v6 = v45;
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v45, "injectFTAssistance_block_invoke");
            goto LABEL_8;
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v46, "injectFTAssistance_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v46);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Frac CDMA Fine Time,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "injectFTAssistance_block_invoke", 772, *(a1 + 96));
            LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v38 = mach_continuous_time();
            v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "injectFTAssistance_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v39, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v48, "injectFTAssistance_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FineTime,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "injectFTAssistance_block_invoke", 257, *(a1 + 72));
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "injectFTAssistance_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v49, "injectFTAssistance_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "injectFTAssistance_block_invoke", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectFTAssistance_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v51, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v51, "injectFTAssistance_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fta Response ignored as there is no ongoing Session\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "injectFTAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "injectFTAssistance_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

LABEL_22:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga10_15AlterFTABasedOnGrouDelay(gnss::GnssAdaptDevice *this, unsigned int *a2, unsigned int *a3, unsigned __int16 *a4, double a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v8 = a5 * 1000000.0 / 1023.0;
  v9 = *a2 + 1000000000 * *this;
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Total time NS,%llu,GroupDelay NS,%.7f\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "Ga10_15AlterFTABasedOnGrouDelay", v9, v8);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
  }

  if (v8 >= 0.0)
  {
    v13 = v9 - v8;
    if (v9 < v8)
    {
      --*a3;
      v13 += 604800000000000;
    }
  }

  else
  {
    v13 = v9 + fabs(v8);
    if (v13 > 0x2260FF928FFFFLL)
    {
      ++*a3;
      v13 -= 604800000000000;
    }
  }

  *this = v13 / 0x3B9ACA00;
  *a2 = v13 % 0x3B9ACA00;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnss::GnssAdaptDevice::Ga11_21FindSUPLSession(gnss::GnssAdaptDevice *this, int a2, unint64_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *(this + 16);
  v4 = *(this + 17) - v3;
  if (v4)
  {
    v5 = 0x7D6343EB1A1F58D1 * (v4 >> 2);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (*(v3 + 56) == a2)
    {
      v7 = 0;
      result = 1;
LABEL_12:
      *a3 = v7;
    }

    else
    {
      v9 = (v3 + 252);
      v10 = 1;
      while (v6 != v10)
      {
        v11 = *v9;
        v9 += 49;
        ++v10;
        if (v11 == a2)
        {
          v7 = v10 - 1;
          result = v10 - 1 < v5;
          goto LABEL_12;
        }
      }

      result = v10 < v5;
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN4gnss15GnssAdaptDevice26Ga10_17InvokePVTMCbForE911EPK15s_gnsCP_PosnRes_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  operator new();
}

void sub_29969BA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char *a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  a35 = &a32;
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](&a35);
  if (v36)
  {
    MEMORY[0x29C29EB20](v36, v35);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *a1 = 0;
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

    MEMORY[0x29C29EB20](v2, 0x20C40769AC3DALL);
  }

  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5[0] = (v2 + 112);
    std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](v5);
    MEMORY[0x29C29EB20](v2, 0x1020C40B6788CC9);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t __copy_helper_block_e8_40c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v2);
}

uint64_t gnss::Emergency::Cplane::MeasurementReport::MeasurementReport(uint64_t this)
{
  v1 = 0;
  v6 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = -1;
  *(this + 16) = -1;
  *(this + 24) = -1;
  do
  {
    v2 = this + v1;
    *(v2 + 28) = 0x7FFF;
    *(v2 + 30) = -1;
    *(v2 + 33) = -1;
    *(v2 + 40) = 0xFFFFFFFF00000004;
    v1 += 24;
    *(v2 + 48) = -1;
  }

  while (v1 != 384);
  v3 = 0;
  *(this + 412) = 0;
  *(this + 416) = -1;
  *(this + 424) = 33619967;
  *(this + 428) = -1;
  *(this + 452) = -1;
  *(this + 464) = -1;
  *(this + 471) = -1;
  *(this + 480) = 4;
  *(this + 456) = -1;
  *(this + 432) = -1;
  *(this + 440) = -1;
  *(this + 448) = -1;
  *(this + 460) = -1;
  *(this + 484) = -1;
  *(this + 496) = 0;
  *(this + 524) = -1;
  *(this + 528) = -1;
  *(this + 520) = -1;
  *(this + 504) = -1;
  *(this + 512) = -1;
  *(this + 536) = -1;
  *(this + 548) = -1;
  *(this + 552) = -1;
  *(this + 538) = -1;
  *(this + 560) = -1;
  *(this + 564) = -1;
  *(this + 568) = -1;
  *(this + 592) = -1;
  *(this + 572) = -1;
  *(this + 580) = -1;
  *(this + 588) = -1;
  *(this + 596) = -129;
  *(this + 600) = -1;
  *(this + 608) = -1;
  *(this + 612) = 5;
  *(this + 616) = -1;
  *(this + 618) = -1;
  do
  {
    v4 = this + v3;
    *(v4 + 620) = -32769;
    *(v4 + 624) = -1;
    *(this + v3 + 628) = 0xFF00000004;
    *(v4 + 636) = -1;
    *(v4 + 640) = -1;
    v3 += 24;
  }

  while (v3 != 768);
  *(this + 1392) = -1;
  *(this + 1396) = 0;
  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void MMSRelease(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 720);
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = v3;
        if (*v1)
        {
          free(*v1);
        }

        free(v1);
        v3 = *(v4 + 16);
        v1 = v4;
      }

      while (v3);
    }

    else
    {
      v4 = *(a1 + 720);
    }

    if (*v4)
    {
      free(*v4);
    }

    free(v4);
    *(a1 + 720) = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void *MMSAlloc(uint64_t a1, size_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x18uLL);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v4[2] = *(a1 + 720);
  result = gnssOsa_Calloc("posp_alloc", 18, 1, a2);
  *v5 = result;
  v5[1] = a2;
  if (!result)
  {
    free(v5);
LABEL_5:
    CUCFErrorHandler(a1, 1);
    result = 0;
    goto LABEL_6;
  }

  *(a1 + 720) = v5;
LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void MMSFree(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 720);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (*v4 == a2)
  {
    if (v4[1] != a3)
    {
      CUCFErrorHandler(a1, 15);
    }

    *(a1 + 720) = v4[2];
    if (a2)
    {
      free(a2);
    }

    v8 = *MEMORY[0x29EDCA608];
    v9 = v4;
    goto LABEL_21;
  }

  v6 = v4[2];
  if (!v6)
  {
LABEL_14:
    CUCFErrorHandler(a1, 15);
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  if (*v6 != a2)
  {
    while (1)
    {
      v7 = v6[2];
      if (!v7)
      {
        goto LABEL_14;
      }

      v4 = v6;
      v6 = v6[2];
      if (*v7 == a2)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = v4[2];
LABEL_16:
  if (v7[1] != a3)
  {
    CUCFErrorHandler(a1, 15);
  }

  v4[2] = v7[2];
  if (a2)
  {
    free(a2);
  }

  v11 = *MEMORY[0x29EDCA608];
  v9 = v7;
LABEL_21:

  free(v9);
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

uint64_t GncP09_21HandleSensDefnInd(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_DEFN_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_21HandleSensDefnInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*v5 == 1)
      {
        v6 = __dst;
        memcpy_s("GncP09_08SetSensDefn", 168, __dst, 0x50u, v5 + 8, 0x50uLL);
      }

      else
      {
        v6 = 0;
      }

      if (v5[1] == 1)
      {
        v12 = v22;
        memcpy_s("GncP09_08SetSensDefn", 177, v22, 0x50u, v5 + 88, 0x50uLL);
      }

      else
      {
        v12 = 0;
      }

      if (v5[2] == 1)
      {
        v13 = v21;
        memcpy_s("GncP09_08SetSensDefn", 186, v21, 0x50u, v5 + 168, 0x50uLL);
      }

      else
      {
        v13 = 0;
      }

      if (GN_Sen_Set_Defin(v6, v12, v13))
      {
        v11 = 1;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        v11 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensDefn\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP09_08SetSensDefn", 257);
          LbsOsaTrace_WriteLog(8u, __str, v16, 2, 1);
          v11 = 0;
        }
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensDefn\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "GncP09_08SetSensDefn", 518);
        LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
      }

      v11 = 2;
    }

    GncP09_01SendApiStatus(v4, 1, v11);
    v17 = *(a1 + 16);
    if (v17)
    {
      free(v17);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP09_21HandleSensDefnInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
  }

  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP09_22HandleSensAcclInd(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_ACCL_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_22HandleSensAcclInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = gnssOsa_Calloc("GncP09_05SetAcclData", 58, *v5, 0x20uLL);
      if (v6)
      {
        v7 = v6;
        memcpy_s("GncP09_05SetAcclData", 67, v6, 32 * *v5, *(v5 + 1), 32 * *v5);
        if (GN_Sen_Set_Accl(*v5, v7))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set NumSample,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP09_05SetAcclData", *v5);
            v10 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Accl\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP09_05SetAcclData", 257);
            LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
            v10 = 0;
          }
        }

        GncP09_01SendApiStatus(v4, 2, v10);
        free(v7);
        goto LABEL_20;
      }

      v15 = v4;
      v16 = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Accl\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP09_05SetAcclData", 518);
        LbsOsaTrace_WriteLog(8u, __str, v14, 0, 1);
      }

      v15 = v4;
      v16 = 2;
    }

    GncP09_01SendApiStatus(v15, 2, v16);
LABEL_20:
    v19 = *(a1 + 16);
    if (v19[1])
    {
      free(v19[1]);
      v19 = *(a1 + 16);
    }

    free(v19);
    *(a1 + 16) = 0;
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP09_22HandleSensAcclInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v12, 0, 1);
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP09_23HandleSensGyroInd(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_GYRO_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_23HandleSensGyroInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = gnssOsa_Calloc("GncP09_06SetGyroData", 91, *v5, 0x20uLL);
      if (v6)
      {
        v7 = v6;
        memcpy_s("GncP09_06SetGyroData", 100, v6, 32 * *v5, *(v5 + 1), 32 * *v5);
        if (GN_Sen_Set_Gyro(*v5, v7))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set NumSample,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP09_06SetGyroData", *v5);
            v10 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gyro\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP09_06SetGyroData", 257);
            LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
            v10 = 0;
          }
        }

        GncP09_01SendApiStatus(v4, 3, v10);
        free(v7);
        goto LABEL_20;
      }

      v15 = v4;
      v16 = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gyro\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP09_06SetGyroData", 518);
        LbsOsaTrace_WriteLog(8u, __str, v14, 0, 1);
      }

      v15 = v4;
      v16 = 2;
    }

    GncP09_01SendApiStatus(v15, 3, v16);
LABEL_20:
    v19 = *(a1 + 16);
    if (v19[1])
    {
      free(v19[1]);
      v19 = *(a1 + 16);
    }

    free(v19);
    *(a1 + 16) = 0;
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP09_23HandleSensGyroInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v12, 0, 1);
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP09_24HandleSensBaroInd(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_BARO_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_24HandleSensBaroInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = gnssOsa_Calloc("GncP09_07SetBaroData", 125, *v5, 0x18uLL);
      if (v6)
      {
        v7 = v6;
        v8 = *v5;
        if (*v5)
        {
          v9 = (*(v5 + 1) + 8);
          v10 = v7 + 2;
          v11 = *v5;
          do
          {
            *(v10 - 1) = 0xC058F9999999999ALL;
            *(v10 - 2) = *(v9 - 1);
            v12 = *v9;
            v9 += 4;
            *v10 = v12;
            v10 += 6;
            --v11;
          }

          while (v11);
        }

        if (GN_Sen_Set_Baro(v8, v7))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set NumSample,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncP09_07SetBaroData", *v5);
            v15 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v14, 5, 1);
          }

          else
          {
            v15 = 1;
          }
        }

        else
        {
          v15 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Baro\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncP09_07SetBaroData", 257);
            LbsOsaTrace_WriteLog(8u, __str, v23, 2, 1);
            v15 = 0;
          }
        }

        GncP09_01SendApiStatus(v4, 4, v15);
        free(v7);
        goto LABEL_23;
      }

      v20 = v4;
      v21 = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Baro\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 69, "GncP09_07SetBaroData", 518);
        LbsOsaTrace_WriteLog(8u, __str, v19, 0, 1);
      }

      v20 = v4;
      v21 = 2;
    }

    GncP09_01SendApiStatus(v20, 4, v21);
LABEL_23:
    v24 = *(a1 + 16);
    if (v24[1])
    {
      free(v24[1]);
      v24 = *(a1 + 16);
    }

    free(v24);
    *(a1 + 16) = 0;
    goto LABEL_26;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 69, "GncP09_24HandleSensBaroInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v17, 0, 1);
  }

LABEL_26:
  v25 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP09_01SendApiStatus(int a1, int a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP09_01SendApiStatus", 30, 1, 0x18uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a2;
    v6[4] = a3;
    v6[5] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENSAPI_IND =>LSIM Type,%u,ID,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP09_01SendApiStatus", a2, a1, a3);
      LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
    }

    AgpsSendFsmMsg(134, 131, 8783363, v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

char **FPE_InterfaceLogger(char **result, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = result;
  if ((g_FPE_LogSeverity & 0x40) != 0)
  {
    LODWORD(v3) = __const__Z19FPE_InterfaceLogger13e_FpeMeasTypePv_measSizeTable[result];
    v14 = v3;
    v4 = g_p_CB_LCD_SA_Dbg;
    if (g_p_CB_LCD_SA_Dbg)
    {
      v5 = *g_p_CB_LCD_SA_Dbg;
      v6 = 36;
      v7 = 1u;
      do
      {
        *v4 = v5 + 1;
        *v5 = v6;
        v5 = *v4;
        if (*v4 >= v4[3])
        {
          v5 = v4[2];
          *v4 = v5;
        }

        v6 = str_84[v7++];
      }

      while (v7 != 11);
      LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
      v4 = g_p_CB_LCD_SA_Dbg;
      v8 = g_p_CB_LCD_SA_Dbg;
    }

    else
    {
      v8 = 0;
    }

    for (i = 0; i != 4; ++i)
    {
      if (v8)
      {
        sprintf_02x(v8, *(&v14 + i));
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v4 = g_p_CB_LCD_SA_Dbg;
        v8 = g_p_CB_LCD_SA_Dbg;
      }
    }

    v10 = 0;
    v11 = v4;
    do
    {
      if (v11)
      {
        sprintf_02x(v11, *(&v15 + v10));
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v4 = g_p_CB_LCD_SA_Dbg;
        v11 = g_p_CB_LCD_SA_Dbg;
      }

      ++v10;
    }

    while (v10 != 4);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }

    result = v4;
    do
    {
      if (result)
      {
        sprintf_02x(result, *a2);
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v4 = g_p_CB_LCD_SA_Dbg;
        result = g_p_CB_LCD_SA_Dbg;
      }

      ++a2;
      --v3;
    }

    while (v3);
    if (v4)
    {
      v12 = (*v4)++;
      *v12 = 10;
      if (*v4 >= v4[3])
      {
        *v4 = v4[2];
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Validate_Fix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = a2 + 24576;
  *(a2 + 24584) = 0;
  result = API_Qual_Pos("default", 1, 0, 0, 0);
  if (result)
  {
    *(v6 + 8) = 257;
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  if (*(v6 + 9))
  {
    goto LABEL_4;
  }

  if (*(a2 + 968) != 1)
  {
    goto LABEL_14;
  }

  result = API_Qual_Pos("default", 0, 0, 0, 0);
  if (result)
  {
    v8 = 1;
    *(v6 + 9) = 1;
  }

  else
  {
    v8 = *(v6 + 9);
  }

LABEL_5:
  if (*(v6 + 8) != 1)
  {
    if (v8)
    {
      v9 = 1;
      if (*(v6 + 12) > 3)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
LABEL_15:
    ++*(a1 + 11044);
    *(a1 + 11040) = 0;
    goto LABEL_16;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  ++*(a1 + 11040);
  *(a1 + 11044) = 0;
  v9 = 1;
LABEL_16:
  if (v9)
  {
    if (!*(a2 + 968) && *(a1 + 11040) >= 0x1Eu && *(a2 + 964) >= 3 && *(v6 + 16) >= 4 && (*(a1 + 233) & 1) == 0 && *(a2 + 12) >= 8 && *(a2 + 24752) <= *(a3 + 968) && *(a2 + 24680) <= *(a3 + 984))
    {
      result = API_Get_Fix_Reliability();
      if ((result - 2) <= 2)
      {
        *a3 = 1;
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Dopp_Outlier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[96] = *MEMORY[0x29EDCA608];
  v5 = a2 + 0x2000;
  memset_pattern16(__b, &unk_299761150, 0x180uLL);
  memset_pattern16(v82, &unk_29975C400, 0x180uLL);
  if (*(v5 + 2970) != 1)
  {
    goto LABEL_96;
  }

  v6 = *a3 - *(a2 + 11248);
  v7 = v6 / 1000;
  if (*(a2 + 11152) <= 17.0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 5;
  }

  if (*(v5 + 2896) == 1)
  {
    v9 = *(a2 + 11256);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 0x7D0u / v9 + v8;
    if (v10 >= 0x96)
    {
      v10 = 150;
    }

    if (v7 > v10)
    {
      goto LABEL_96;
    }

    v75 = 1;
    v76 = *a3;
    v74 = *(a2 + 11096);
    v11 = (a2 + 11104);
  }

  else
  {
    if (v7 > v8)
    {
      goto LABEL_96;
    }

    v75 = *(v5 + 2896);
    v76 = *a3;
    v74 = *(a3 + 760) * 299792458.0;
    v11 = (a3 + 944);
  }

  v12 = 0;
  v13 = v6 / -2000 + 85;
  v73 = *v11;
  v14 = a3 + 8536;
  v15 = a3 + 14112;
  v16 = (a2 + 2088);
  v17 = a2 + 2112;
  v78 = 0.0;
  v18 = 76;
  v19 = -0.5;
  v20 = 0.5;
  v77 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    v82[v12 + 48] = 0;
    v24 = *(v14 + v12);
    if ((v24 & 1) != 0 || *(v15 + v12) == 1)
    {
      v25 = *(a2 + 11240);
      v26 = *(v17 + 1928) - v25;
      if (v26 <= 0.0)
      {
        v27 = v19;
      }

      else
      {
        v27 = v20;
      }

      v28 = v26 + v27;
      if (v28 <= 2147483650.0)
      {
        if (v28 >= -2147483650.0)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0x80000000;
        }
      }

      else
      {
        v29 = 0x7FFFFFFF;
      }

      if (v29 < 0)
      {
        v29 = -v29;
      }

      if (v29 > 0x168)
      {
        v29 -= 360;
      }

      if (v29 > 180)
      {
        v29 -= 180;
      }

      if (v29 > 90)
      {
        v29 = 180 - v29;
      }

      if (v29 <= v13)
      {
        v30 = *(v17 + 1920) + v25 * -0.0174532925;
        v31 = -6.28318531;
        if (v30 >= 3.14159265 || (v31 = 6.28318531, v30 < -3.14159265))
        {
          v30 = v30 + v31;
        }

        v32 = *v17;
        v33 = cos(v30);
        v34 = cos(v32);
        v35 = *(a3 + 26304 + 8 * v12);
        v36 = -(v35 - *(a1 + 8 * v12 + 1616) * -0.190293673);
        *&v82[v12] = v36;
        if (v24)
        {
          v37 = *(v15 + 8 * v12 - 1688);
          v20 = 0.5;
        }

        else
        {
          v20 = 0.5;
          if (*(v15 + v12) != 1)
          {
LABEL_42:
            v38 = -(v33 * v34);
            *&v82[v12 + 48] = v38;
            if (*(a1 + v18) != 6)
            {
              v39 = 1.0 / __b[v12];
              v23 = v23 + v39;
              v21 = v21 + v38 * v39;
              v22 = v22 + v38 * v39 * v38;
              v40 = v36 * v39;
              v77 = v77 + v40;
              v78 = v78 + v38 * v40;
            }

            v19 = -0.5;
            goto LABEL_45;
          }

          v36 = *(a3 + 8 * v12 + 120) / *(a3 + 656) - v35;
          *&v82[v12] = v36;
          v37 = 0x3FA47AE147AE147CLL;
        }

        *&__b[v12] = v37;
        goto LABEL_42;
      }
    }

LABEL_45:
    ++v12;
    v18 += 4;
    v17 += 40;
  }

  while (v12 != 48);
  if (*(a2 + 11116) == 3)
  {
    v41 = v23 * (v22 + 10000.0) - v21 * v21;
    if (v41 > 0.0001)
    {
      *&qword_2A1972018 = (v78 + 0.0) * (1.0 / v41 * -v21) + (v22 + 10000.0) * (1.0 / v41) * v77;
      _MergedGlobals_7 = v76;
    }

    goto LABEL_96;
  }

  v42 = -v21;
  v43 = v23 * v22 - v21 * v21;
  v45 = v73;
  v44 = v74;
  if (v43 > 0.0001)
  {
    v46 = 1.0 / v43;
    v47 = v22 * v46;
    v48 = v23 * v46;
    v49 = v46 * v42;
    v44 = v78 * v49 + v47 * v77;
    v45 = v78 * v48 + v49 * v77;
  }

  if (v75)
  {
    v50 = v76 - *(a2 + 11092);
    if (v50 <= 90999)
    {
      v51 = (a2 + 11096);
LABEL_55:
      v52 = 1.0 / ((v50 / 1000 * (v50 / 1000)) * 0.0000308641975 + 0.0001);
      v53 = (v23 + v52) * v22 - v21 * v21;
      if (v53 > 0.0001)
      {
        v54 = v77 + v52 * *v51;
        v55 = 1.0 / v53;
        v56 = v55 * v42;
        v44 = v78 * v56 + v22 * v55 * v54;
        v45 = v78 * ((v23 + v52) * v55) + v56 * v54;
      }
    }
  }

  else
  {
    v51 = &qword_2A1972018;
    v50 = v76 - _MergedGlobals_7;
    if (v76 - _MergedGlobals_7 <= 179999)
    {
      goto LABEL_55;
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  memset(v80, 0, sizeof(v80));
  v60 = fmax(fabs(v45) * 0.25, 2.5);
  do
  {
    if ((*(v14 + v57) & 1) != 0 || *(v15 + v57) == 1)
    {
      v61 = *&v82[v57 + 48];
      if (fabs(v61) > 0.05)
      {
        v62 = (*&v82[v57] - v44) / v61;
        v63 = v62 < 0.0;
        if (v45 <= v60)
        {
          v63 = 0;
        }

        if (v62 >= -v60 && !v63)
        {
          if (v62 > 0.0)
          {
            ++v58;
          }
        }

        else
        {
          ++v59;
          *(v80 + v57) = 1;
        }
      }
    }

    ++v57;
  }

  while (v57 != 48);
  if (v75)
  {
    v65 = 70;
  }

  else
  {
    v65 = 50;
  }

  if (v75)
  {
    v66 = 40;
  }

  else
  {
    v66 = 36;
  }

  if (v59)
  {
    v67 = v59 < 4 ? v75 : 0;
    if (v58 >= v59 || v67)
    {
      v68 = 0;
      while (*(v80 + v68) != 1 || *v16 >= v65 || v66 <= *(a1 + 604 + v68) || *(v14 + 8 * v68 - 3704) >= 50.0)
      {
LABEL_95:
        ++v68;
        v16 += 10;
        if (v68 == 48)
        {
          goto LABEL_96;
        }
      }

      v69 = (v14 + v68);
      if (*(v14 + v68))
      {
        v70 = 8632;
        v71 = (a3 + 8387);
        goto LABEL_92;
      }

      v69 = (v15 + v68);
      if (*(v15 + v68) == 1)
      {
        v70 = 14208;
        v71 = (a3 + 13963);
LABEL_92:
        *v69 = 0;
        *(a3 + v70 + 4 * v68) = 10;
        ++v71[1];
        --*v71;
      }

      if (*(a3 + v68 + 2960) == 1)
      {
        *(a3 + v68 + 2960) = 0;
        *(a3 + 4 * v68 + 3056) = 10;
        ++*(a3 + 2812);
        --*(a3 + 2811);
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

_DWORD *Decode_QZSS_Health_Subframe(_DWORD *result, BOOL *a2)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  v3 = result[3];
  v4 = result[4];
  v7[0] = (v3 >> 18) & 0x1F;
  v7[1] = (v3 >> 12) & 0x1F;
  v7[2] = (v3 >> 6) & 0x1F;
  v7[3] = v3 & 0x1F;
  v7[4] = (v4 >> 18) & 0x1F;
  v7[5] = (v4 >> 12) & 0x1F;
  v7[6] = (v4 >> 6) & 0x1F;
  v7[7] = v4 & 0x1F;
  v5 = result[5];
  v7[8] = (v5 >> 18) & 0x1F;
  v7[9] = (v5 >> 12) & 0x1F;
  do
  {
    a2[v2] = (0xE4FE7F3uLL >> v7[v2]) & 1;
    ++v2;
  }

  while (v2 != 10);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

const char *Hal14_GetGnssHwStr(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal14_GetGnssHwStr", 770, a1);
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 2, 1);
    }

    result = "Unknown";
  }

  else
  {
    result = off_29EF6B3A0[a1];
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

double Get_GPS_Kep_Ephemeris(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x29EDCA608];
  *a4 = *a3;
  *(a4 + 8) = a1;
  *(a4 + 12) = a2;
  v4 = *(a3 + 8);
  *(a4 + 18) = (v4 >> 14) & 0x3FF;
  *(a4 + 15) = BYTE1(v4) & 0xF;
  *(a4 + 13) = (v4 >> 2) & 0x1F;
  *(a4 + 56) = vcvtd_n_f64_s32(*(a3 + 24), 0x1FuLL);
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  v5 = *(a3 + 28);
  *(a4 + 16) = BYTE2(v5);
  *(a4 + 20) = 16 * v5;
  v6 = (a3 + 32);
  v7 = vld1_dup_f32(v6);
  v8 = vshl_s32(vshl_u32(v7, 0x800000010), 0xFFFFFFE8FFFFFFF0);
  v9.i64[0] = v8.i32[0];
  v9.i64[1] = v8.i32[1];
  *(a4 + 40) = vmulq_f64(vcvtq_f64_s64(v9), xmmword_299761180);
  LODWORD(v6) = *(a3 + 44);
  *&v10 = (*(a3 + 48) & 0xFFFFFF | (v6 << 24));
  *(a4 + 32) = (((*(a3 + 36) << 8) >> 8) & 0xFFFFFFFC) * 1.16415322e-10;
  v11.i32[0] = *(a3 + 40);
  v11.i32[1] = *(a3 + 52);
  v12 = vshr_n_s32(vshl_u32(v11, 0x800000010), 0x10uLL);
  v9.i64[0] = v12.i32[0];
  v9.i64[1] = v12.i32[1];
  v13 = vmulq_f64(vcvtq_f64_s64(v9), xmmword_299761190);
  v14 = *(a3 + 60);
  v15 = vcvtd_n_f64_u32(*(a3 + 64) & 0xFFFFFF | (v14 << 24), 0x13uLL);
  v16 = (*(a3 + 56) & 0xFFFFFF | (*(a3 + 52) << 24)) * 1.16415322e-10;
  *(a4 + 160) = *&v10 * 0.00000000146291808;
  *(a4 + 168) = v15;
  *(a4 + 24) = 16 * *(a3 + 69);
  v10.i32[0] = v14;
  v10.i32[1] = *(a3 + 72);
  *&v17 = (*(a3 + 76) & 0xFFFFFF | (v10.u8[4] << 24));
  v18 = *(a3 + 80);
  v19 = *(a3 + 84);
  v20 = vcvtd_n_f64_s32((v18 >> 8), 0x1DuLL);
  *(a4 + 14) = *(a3 + 68) >> 7;
  v21 = vshr_n_s32(vshl_n_s32(v10, 8uLL), 0x10uLL);
  v9.i64[0] = v21.i32[0];
  v9.i64[1] = v21.i32[1];
  *(a4 + 128) = vmulq_f64(vcvtq_f64_s64(v9), vdupq_n_s64(0x3E20000000000000uLL));
  v22 = *&v17 * 0.00000000146291808;
  v23 = (v19 & 0xFFFFFF | (v18 << 24)) * 0.00000000146291808;
  v17.i32[0] = v6;
  v24 = *(a3 + 92);
  v17.i32[1] = *(a3 + 88);
  *(a4 + 176) = v22;
  *(a4 + 184) = v23;
  v25 = vshr_n_s32(vshl_n_s32(v17, 8uLL), 0x10uLL);
  v9.i64[0] = v25.i32[0];
  v9.i64[1] = v25.i32[1];
  *(a4 + 96) = vmulq_f64(vcvtq_f64_s64(v9), xmmword_2997611A0);
  *(a4 + 112) = v13;
  *(a4 + 192) = (v24 & 0xFFFFFF | (v17.u8[4] << 24)) * 0.00000000146291808;
  *(a4 + 200) = v16;
  *(a4 + 208) = (*(a3 + 96) << 8) * 1.3951474e-15;
  result = (*(a3 + 100) & 0xFFFFFFFC) * 8.92894335e-14;
  *(a4 + 144) = v20;
  *(a4 + 152) = result;
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_21HandleAidStatusCnf(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_21HandleAidStatusCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_CNF,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_21HandleAidStatusCnf", *(a1 + 76));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &g_SuplInstance + 296 * v6;
    if (*(v9 + 1) == *(a1 + 76) && (v9[281] & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v10 = *(a1 + 24);
      if (v10)
      {
        free(v10);
      }

      *(a1 + 24) = 0;
      v11 = *(a1 + 32);
      if (v11)
      {
        free(v11);
      }

      *(a1 + 32) = 0;
      v12 = *(a1 + 40);
      if (v12)
      {
        free(v12);
      }

      *(a1 + 40) = 0;
      v13 = *(a1 + 48);
      if (v13)
      {
        free(v13);
      }

      *(a1 + 48) = 0;
      v14 = *(a1 + 56);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 56) = 0;
      v15 = *(a1 + 64);
      if (v15)
      {
        free(v15);
      }

      *(a1 + 64) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "lsim05_21HandleAidStatusCnf", 2052, *(a1 + 76));
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      goto LABEL_59;
    }
  }

  if (v9[282] == 1)
  {
    v38 = 0x700000000uLL;
    *&v39 = 0;
    *(&v39 + 6) = 0;
    HIWORD(v39) = -1;
    LOBYTE(v40) = 0;
    DWORD1(v40) = 0;
    v42 = 0;
    memset(v41, 0, 18);
    *(&v40 + 1) = -1;
    v9[282] = 0;
    if ((lsim12_02StopTimer(v6, 5) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim05_21HandleAidStatusCnf", 1545, *(a1 + 76));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    if (*(a1 + 72) != 1)
    {
      goto LABEL_35;
    }

    *&__str[12] = 0;
    lsim03_11PrintAidRequestParams((a1 + 16), "AID STATUS");
    v20 = *(v9 + 72);
    if (v20 == 2)
    {
      v21 = &g_LsimPltConfig;
    }

    else
    {
      if (v20 != 1)
      {
        __str[0] = qword_2A19267F6 | g_LsimPltConfig;
        *&__str[10] = word_2A1926800 | word_2A19267F2;
        *&__str[2] = vorr_s8(*(&qword_2A19267F6 + 2), *(&g_LsimPltConfig + 2));
        goto LABEL_34;
      }

      v21 = &qword_2A19267F6;
    }

    *__str = *v21;
    *&__str[6] = *(v21 + 6);
LABEL_34:
    lsim03_12UpdateAidReqParams(__str, (a1 + 16), v9[292], 0);
LABEL_35:
    if (*(a1 + 152) == 1)
    {
      v22 = *(a1 + 96);
      v38 = *(a1 + 80);
      v39 = v22;
      v40 = *(a1 + 112);
      *v41 = *(a1 + 128);
      *&v41[4] = *(a1 + 132);
      v42 = *(a1 + 148);
      if (DWORD1(v38) == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = &v38;
      }
    }

    else
    {
      v23 = 0;
    }

    if (GN_SUPL_AidRequest_In(*(a1 + 76), a1 + 16, v23))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In call successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 68, "lsim05_21HandleAidStatusCnf", *(a1 + 76));
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 5, 1);
      }

      GN_SUPL_Handler();
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In call failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 87, "lsim05_21HandleAidStatusCnf", *(a1 + 76));
      LbsOsaTrace_WriteLog(0xCu, __str, v27, 2, 1);
    }
  }

  v28 = *(a1 + 24);
  if (v28)
  {
    free(v28);
  }

  *(a1 + 24) = 0;
  v29 = *(a1 + 32);
  if (v29)
  {
    free(v29);
  }

  *(a1 + 32) = 0;
  v30 = *(a1 + 40);
  if (v30)
  {
    free(v30);
  }

  *(a1 + 40) = 0;
  v31 = *(a1 + 48);
  if (v31)
  {
    free(v31);
  }

  *(a1 + 48) = 0;
  v32 = *(a1 + 56);
  if (v32)
  {
    free(v32);
  }

  *(a1 + 56) = 0;
  v33 = *(a1 + 64);
  if (v33)
  {
    free(v33);
  }

  *(a1 + 64) = 0;
LABEL_59:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "lsim05_21HandleAidStatusCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
  }

  v36 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim05_22HandleSuplInit(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_22HandleSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_22HandleSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Length,%u,pointer,%p\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_22HandleSuplInit", *(a1 + 12), *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (g_GnsDcCallback)
  {
    if ((byte_2A1920A81 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimsInfo\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "lsim05_22HandleSuplInit", 769);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      lsim09_04SendConnApiStatus(-1, 0, 0);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v8 = *(a1 + 12);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim05_09SuplInitReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    if (byte_2A18CCB41)
    {
      if (byte_2A18CCC69 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_35:
          LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 68, "lsim05_09SuplInitReq", v18);
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 5, 1);
    }

    if ((~dword_2A18CCEB4 & 0x88) != 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL or SUPLNI\n");
        goto LABEL_35;
      }
    }

    else
    {
      v21 = &g_SuplInstance + 296 * v18;
      *(v21 + 281) = 1;
      *(v21 + 71) = 2;
      ++g_SuplInstanceCount;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplInstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 68, "lsim05_09SuplInitReq", g_SuplInstanceCount);
        LbsOsaTrace_WriteLog(0xCu, __str, v23, 5, 1);
      }

      if (GN_SUPL_Push_Delivery_In(&g_SuplInstance + 74 * v18, v8, v9, v10))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Push_Delivery_In successful\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 68, "lsim05_09SuplInitReq");
          LbsOsaTrace_WriteLog(0xCu, __str, v25, 5, 1);
        }

        GN_SUPL_Handler();
        v26 = *v21;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "lsim05_09SuplInitReq");
          v29 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
        }

        else
        {
          v29 = 1;
        }

        goto LABEL_44;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v30 = mach_continuous_time();
        v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Push_Delivery_In Failed\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 87, "lsim05_09SuplInitReq");
        LbsOsaTrace_WriteLog(0xCu, __str, v31, 2, 1);
      }

      lsim05_34DeleteSuplContext(v18);
    }

LABEL_39:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim05_09SuplInitReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPLINIT Rejected\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 87, "lsim05_22HandleSuplInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v35, 2, 1);
    }

    v29 = 0;
    v26 = -1;
LABEL_44:
    lsim09_04SendConnApiStatus(v26, v29, 0);
    v36 = *(a1 + 16);
    if (v36)
    {
      free(v36);
    }

    *(a1 + 16) = 0;
    goto LABEL_47;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim05_22HandleSuplInit", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
  }

LABEL_47:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
LABEL_48:
    bzero(__str, 0x410uLL);
    v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v37, "LSM", 73, "lsim05_22HandleSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v38, 4, 1);
  }

LABEL_49:
  v39 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim05_23ReceiveDataInd(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_23ReceiveDataInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_RECEIVE_DATA_IND,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_23ReceiveDataInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsDcCallback)
  {
    v6 = 0;
    v7 = *(a1 + 12);
    v8 = 1;
    while (1)
    {
      v9 = v8;
      v10 = (&g_SuplInstance + 296 * v6);
      if (*v10 == v7 && v10[2] == 3 && (*(v10 + 281) & 1) != 0)
      {
        break;
      }

      v8 = 0;
      v6 = 1;
      if ((v9 & 1) == 0)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_23ReceiveDataInd", 2052, *(a1 + 12));
          LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
        }

        v13 = 4;
        goto LABEL_14;
      }
    }

    if (GN_SUPL_PDU_Delivery_In(v7, *(a1 + 16), *(a1 + 24)))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_In Successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 68, "lsim05_23ReceiveDataInd", *v10);
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 5, 1);
      }

      GN_SUPL_Handler();
      v13 = 1;
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
      v13 = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_In Failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim05_23ReceiveDataInd", *v10);
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
        v13 = 0;
      }
    }

LABEL_14:
    lsim09_04SendConnApiStatus(*(a1 + 12), v13, 1);
    v14 = *(a1 + 24);
    if (v14)
    {
      free(v14);
    }

    *(a1 + 24) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "lsim05_23ReceiveDataInd", 258, *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim05_23ReceiveDataInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim05_24HandleSuplAbort(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_24HandleSuplAbort");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_ABORT_REQ,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_24HandleSuplAbort", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!g_GnsSuplCallback)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v25 = *(a1 + 12);
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Supl,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14));
LABEL_23:
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    goto LABEL_24;
  }

  v6 = 0;
  v7 = *(a1 + 12);
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = &g_SuplInstance + 296 * v6;
    if (*v10 == v7 && (v10[281] & 1) != 0)
    {
      GN_SUPL_Abort(v7, 255);
      GN_SUPL_Handler();
      v13 = 1;
      goto LABEL_16;
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_24HandleSuplAbort", 2052, *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
  }

  v13 = 4;
LABEL_16:
  if (!g_GnsSuplCallback)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL\n");
    goto LABEL_23;
  }

  v16 = *(a1 + 12);
  v17 = gnssOsa_Calloc("lsim05_12SendSuplApiStatus", 397, 1, 0x348uLL);
  if (v17)
  {
    v18 = v17;
    v17[1] = 1;
    v17[2] = v13;
    *v17 = v16;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>SuplCB,Api,%u,Status,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim05_12SendSuplApiStatus", 1, v13, v16);
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
    }

    g_GnsSuplCallback(3, 840, v18);
    free(v18);
  }

LABEL_24:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim05_24HandleSuplAbort");
    LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  }

  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim05_25HandleSuplSumRep(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_25HandleSuplSumRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_SUMM_REP,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_25HandleSuplSumRep", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!g_GnsSuplCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim05_25HandleSuplSumRep", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

LABEL_17:
    v14 = a1[3];
    if (v14)
    {
      free(v14);
    }

    a1[3] = 0;
    v15 = a1[4];
    if (v15)
    {
      free(v15);
    }

    a1[4] = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v6 = gnssOsa_Calloc("lsim05_25HandleSuplSumRep", 766, 1, 0x348uLL);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  memcpy_s("lsim05_25HandleSuplSumRep", 777, v6, 0x28u, a1 + 2, 0x28uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SUMM_REP =>SuplCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim05_25HandleSuplSumRep", *v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  g_GnsSuplCallback(4, 840, v7);
  v10 = a1[3];
  if (v10)
  {
    free(v10);
  }

  a1[3] = 0;
  v11 = a1[4];
  if (v11)
  {
    free(v11);
  }

  a1[4] = 0;
  free(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
LABEL_22:
    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v16, "LSM", 73, "lsim05_25HandleSuplSumRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim05_26HandleSuplStatRep(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_26HandleSuplStatRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_STAT_REP,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_26HandleSuplStatRep", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!g_GnsSuplCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_26HandleSuplStatRep", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    }

LABEL_15:
    v13 = *(a1 + 24);
    if (v13)
    {
      free(v13);
    }

    *(a1 + 24) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v6 = gnssOsa_Calloc("lsim05_26HandleSuplStatRep", 812, 1, 0x348uLL);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  memcpy_s("lsim05_26HandleSuplStatRep", 822, v6, 0x38u, (a1 + 16), 0x38uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:EVNT_INF =>SuplCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim05_26HandleSuplStatRep", *v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  g_GnsSuplCallback(1, 840, v7);
  v10 = *(a1 + 24);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 24) = 0;
  free(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
LABEL_18:
    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "LSM", 73, "lsim05_26HandleSuplStatRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim05_31InitSupl(void)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim05_31InitSupl");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  GN_SUPL_Handler_Init();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_01InitSuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = &g_SuplInstance + 296 * v4;
    *(v6 + 281) = 0;
    *v6 = -1;
    v7 = v5;
    *(v6 + 2) = 0;
    *(v6 + 139) = 0;
    *(v6 + 68) = 0;
    memset_s(v6 + 13, 0x100uLL, 0, 0x100uLL);
    v5 = 0;
    v6[280] = 0;
    *(v6 + 284) = 0;
    v6[292] = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  g_SuplInstanceCount = 0;
  memset_s(&g_LsimUserConfig, 0x244uLL, 0, 0x244uLL);
  dword_2A18CCEAC = 2;
  lsim13_02SuplConfig();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim05_01InitSuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim05_31InitSupl");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_32DeInitSupl(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim05_32DeInitSupl");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  lsim05_43CloseOtherPospSessions(255, 0);
  lsim05_42CloseSuplSessions(255, 1);
  lsim09_50ConnMgmtDeInit();
  g_GnsPospCallback = 0;
  g_GnsPpduCallback = 0;
  g_GnsSuplCallback = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim05_32DeInitSupl");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_43CloseOtherPospSessions(int a1, _DWORD *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_43CloseOtherPospSessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 == 4 || a1 == 255)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      if (!a2 || *a2 != v6)
      {
        v17 = 0;
        *__str = -1;
        v16 = 0;
        if (lsim11_05GnmGetSessionInfo(v6, __str, &v16, &v17 + 1, 0, &v17))
        {
          if ((v17 & 1) == 0 && ((a1 != 255) & HIBYTE(v17)) == 0)
          {
            if ((v16 & 0xFFFFFFFE) == 2)
            {
              lsim03_18GnssPosnResultInd(*__str, 0, 3);
            }

            else if (v16 == 1)
            {
              lsim03_17GnssMeasResultInd(*__str, 0, 3);
            }

            lsim03_16AbortInd(*__str, 3, 0);
            lsim11_04GnmResetSession(v6);
          }
        }
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "LSM", 73, "lsim05_43CloseOtherPospSessions");
LABEL_23:
      result = LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Category,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim05_43CloseOtherPospSessions", 515, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "LSM", 73, "lsim05_43CloseOtherPospSessions");
      goto LABEL_23;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_42CloseSuplSessions(int a1, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_42CloseSuplSessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_SuplInstanceCount)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CategMask,%X,DeInitSupl,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_42CloseSuplSessions", a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    v8 = 0;
    if (a1 == 255)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    if (a1 == 255)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if ((a1 & 5) != 0)
    {
      v9 = v10;
    }

    v11 = a1 & 2;
    if ((a1 & 8) != 0)
    {
      v11 = 2;
    }

    v12 = (v9 | v11);
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = (&g_SuplInstance + 296 * v8);
      if (*(v15 + 281) == 1 && ((a1 & 0xC) != 0 || v15[71] != 1))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aborting SuplHandle,%u,Mask,%X\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim05_42CloseSuplSessions", *v15, v12);
          LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
        }

        GN_SUPL_Abort(*v15, v12);
      }

      v13 = 0;
      v8 = 1;
    }

    while ((v14 & 1) != 0);
    GN_SUPL_Handler();
  }

  if (a1 == 255 && a2)
  {
    GN_SUPL_Handler_DeInit();
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim05_42CloseSuplSessions");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_34DeleteSuplContext(unsigned int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_34DeleteSuplContext");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = a1;
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_34DeleteSuplContext", *(&g_SuplInstance + 74 * a1));
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
  }

  else
  {
    v5 = a1;
  }

  v7 = &g_SuplInstance + 296 * v5;
  if (v7[281] == 1)
  {
    v7[282] = 0;
    *(v7 + 2) = 0;
    *v7 = -1;
    *(v7 + 278) = 7275;
    *(v7 + 68) = 0;
    *(v7 + 284) = 0;
    memset_s(v7 + 13, 0x100uLL, 0, 0x100uLL);
    if (g_SuplInstanceCount)
    {
      --g_SuplInstanceCount;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplInstanceCount Mismatch\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim05_34DeleteSuplContext");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim05_34DeleteSuplContext");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_37FillSuplLocIdFromLsimLocId(int *a1, int a2, int a3)
{
  v48 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_37FillSuplLocIdFromLsimLocId");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_10;
  }

  memset_s(a1, 0x184CuLL, 0, 0x184CuLL);
  if (a3)
  {
    if (a3 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MobInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "lsim05_37FillSuplLocIdFromLsimLocId", 515, a3);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (*qword_2A1926810 == a2)
    {
      v8 = 0;
    }

    else
    {
      if (*(qword_2A1926810 + 6220) != a2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimId,%d\n", v46);
LABEL_10:
          LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
        }

LABEL_11:
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
LABEL_18:
          v14 = 0;
          goto LABEL_19;
        }

LABEL_17:
        bzero(__str, 0x410uLL);
        v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v12, "LSM", 73, "lsim05_37FillSuplLocIdFromLsimLocId");
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
        goto LABEL_18;
      }

      v8 = 1;
    }

    v17 = qword_2A1926810 + 6220 * v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    v20 = *(v17 + 8);
    if (v20 == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2 * (v20 == 2);
    }

    *a1 = v21;
    v22 = *(v17 + 4);
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        a1[1] = 3;
        v23 = a1 + 3;
        v24 = (v17 + 12);
        v25 = 6208;
        goto LABEL_44;
      }

      if (v22 == 4)
      {
        a1[1] = 5;
        v26 = *(v17 + 12);
        v27 = *(v17 + 28);
        v28 = *(v17 + 44);
        *(a1 + 15) = *(v17 + 60);
        *(a1 + 11) = v28;
        *(a1 + 7) = v27;
        *(a1 + 3) = v26;
        v29 = *(v17 + 76);
        v30 = *(v17 + 92);
        v31 = *(v17 + 108);
        *(a1 + 31) = *(v17 + 124);
        *(a1 + 27) = v31;
        *(a1 + 23) = v30;
        *(a1 + 19) = v29;
        v32 = *(v17 + 140);
        v33 = *(v17 + 156);
        v34 = *(v17 + 172);
        *(a1 + 46) = *(v17 + 184);
        *(a1 + 43) = v34;
        *(a1 + 39) = v33;
        *(a1 + 35) = v32;
        goto LABEL_45;
      }
    }

    else
    {
      if (v22 == 1)
      {
        a1[1] = 1;
        *(a1 + 3) = *(v17 + 12);
        v39 = *(v17 + 28);
        v40 = *(v17 + 44);
        v41 = *(v17 + 60);
        *(a1 + 18) = *(v17 + 72);
        *(a1 + 15) = v41;
        *(a1 + 11) = v40;
        *(a1 + 7) = v39;
        goto LABEL_45;
      }

      if (v22 == 2)
      {
        a1[1] = 2;
        v23 = a1 + 3;
        v24 = (v17 + 12);
        v25 = 3156;
LABEL_44:
        memcpy(v23, v24, v25);
LABEL_45:
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v42 = mach_continuous_time();
          v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v42), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo");
          LbsOsaTrace_WriteLog(0xCu, __str, v43, 4, 1);
        }

        goto LABEL_47;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v35 = mach_continuous_time();
      v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v35), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo", 515, *(v17 + 4));
      LbsOsaTrace_WriteLog(0xCu, __str, v36, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v37 = mach_continuous_time();
      v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo");
      LbsOsaTrace_WriteLog(0xCu, __str, v38, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo\n");
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *a1 = 0;
  LOBYTE(a2) = -1;
LABEL_47:
  *(a1 + 8) = a2;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v44), "LSM", 73, "lsim05_37FillSuplLocIdFromLsimLocId");
    v14 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v45, 4, 1);
  }

  else
  {
    v14 = 1;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t lsim05_40SuplTimerExpiry(int a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_40SuplTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_40SuplTimerExpiry", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a2 == 4)
  {
    v8 = a1;
    v9 = 1;
  }

  else
  {
    if (a2 != 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimerType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_40SuplTimerExpiry", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v8 = a1;
    v9 = 0;
  }

  Trace_GN_SUPL_TimerExpiry_In(v8, v9);
  SUPL_indicate_trigger_UT_expiry(a1);
  GN_SUPL_Handler();
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
LABEL_14:
    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v13, "LSM", 73, "lsim05_40SuplTimerExpiry");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

LABEL_15:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim10_05AidStatusTimerExpiry(unsigned int a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim10_05AidStatusTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 <= 1 && (v6 = (&g_SuplInstance + 296 * a1), (*(v6 + 281) & 1) != 0))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim10_05AidStatusTimerExpiry", *v6);
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    if (a2 == 5 && *(v6 + 282) == 1)
    {
      *(v6 + 282) = 0;
      if (GN_SUPL_AidRequest_In(*v6, 0, 0))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 68, "lsim10_05AidStatusTimerExpiry", *v6);
          LbsOsaTrace_WriteLog(0xCu, __str, v10, 5, 1);
        }

        GN_SUPL_Handler();
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim10_05AidStatusTimerExpiry", *v6);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
LABEL_20:
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v16, "LSM", 73, "lsim10_05AidStatusTimerExpiry");
      result = LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim10_05AidStatusTimerExpiry", 2052, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_20;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_45SuplCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsSuplCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsSuplCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim05_45SuplCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim05_45SuplCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim05_46PospCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsPospCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsPospCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim05_46PospCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim05_46PospCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_Connect_Req_Out(uint64_t a1, unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_Connect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = 78;
      if (a2[268])
      {
        v7 = 89;
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,AddrType,%u,Addr,%s,Port,%dEmerPdn,%c,SimId,%u\n", v6, "LSM", 73, "GN_SUPL_Connect_Req_Out", a1, *(a2 + 65), a2 + 1, *(a2 + 133), v7, *a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v12 = &g_SuplInstance + 296 * v9;
      if (*v12 == a1 && (v12[281] & 1) != 0)
      {
        break;
      }

      v10 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          goto LABEL_18;
        }

        bzero(__str, 0x410uLL);
        v27 = 2052;
        v28 = a1;
        v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = "%10u %s%c %s: #%04hx SuplHandle,%u\n";
        goto LABEL_16;
      }
    }

    v20 = *(a2 + 65);
    if ((v20 - 1) <= 2)
    {
      *(v12 + 68) = v20;
      memset_s(v12 + 13, 0x100uLL, 0, 0x100uLL);
      strncpy(v12 + 13, a2 + 1, 0x100uLL);
      *(v12 + 139) = *(a2 + 133);
      v12[12] = *a2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,SuplInstanceIndex,%u,Addr,%s\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "GN_SUPL_Connect_Req_Out", *v12, v9, v12 + 13);
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
      }

      lsim09_32ConnectSUPLSession(v9);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GN_SUPL_Connect_Req_Out");
        v17 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_21;
    }

    *(&g_SuplInstance + 74 * v9 + 68) = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v29 = *(a2 + 65);
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SlpIpType,%u,SuplHandle,%u\n", v25);
LABEL_17:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = 513;
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = "%10u %s%c %s: #%04hx ConnReqParams\n";
LABEL_16:
    v14 = snprintf(__str, 0x40FuLL, v13, v26, "LSM", 87, "GN_SUPL_Connect_Req_Out", v27, v28, v30);
    goto LABEL_17;
  }

LABEL_18:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GN_SUPL_Connect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  v17 = 0;
LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t GN_SUPL_Disconnect_Req_Out(int a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GN_SUPL_Disconnect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_Disconnect_Req_Out", a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &g_SuplInstance + 296 * v6;
    if (*v9 == a1 && (v9[281] & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "GN_SUPL_Disconnect_Req_Out", 2052, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
      }

      GN_SUPL_Disconnect_Ind_In(a1, 1);
LABEL_12:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GN_SUPL_Disconnect_Req_Out");
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      v14 = 0;
      goto LABEL_15;
    }
  }

  if (!*(v9 + 2))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 87, "GN_SUPL_Disconnect_Req_Out", 770, a1, v6);
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 2, 1);
    }

    GN_SUPL_Disconnect_Ind_In(a1, 16);
    lsim05_34DeleteSuplContext(v6);
    goto LABEL_12;
  }

  v14 = 1;
  v9[280] = 1;
  lsim09_31DisconnectSuplSession(v6);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GN_SUPL_Disconnect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

LABEL_15:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t GN_SUPL_PDU_Delivery_Out(int a1, int a2, unsigned __int8 *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_PDU_Delivery_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Size,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_PDU_Delivery_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = &g_SuplInstance + 296 * v10;
    if (*v13 == a1 && (v13[281] & 1) != 0)
    {
      lsim09_33SendDataReq(a1, a3, a2);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GN_SUPL_PDU_Delivery_Out");
        v16 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_16;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GN_SUPL_PDU_Delivery_Out", 2052, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
  }

  v16 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GN_SUPL_PDU_Delivery_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    v16 = 0;
  }

LABEL_16:
  v21 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t GN_SUPL_AidRequest_Out(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_AidRequest_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Timeout,%ums,PosM,%u,GnssMask,%X\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GN_SUPL_AidRequest_Out", a1, a2, a3, a4);
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = v13;
    v15 = &g_SuplInstance + 296 * v12;
    if (*v15 == a1 && (v15[281] & 1) != 0)
    {
      break;
    }

    v13 = 0;
    v12 = 1;
    if ((v14 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GN_SUPL_AidRequest_Out", 2052, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }
  }

  v21 = gnssOsa_Calloc("GN_SUPL_AidRequest_Out", 1524, 1, 0x14uLL);
  if (v21)
  {
    v22 = v21;
    v23 = a3 - 2;
    if (a3 - 2) < 0xF && ((0x7C1Fu >> v23))
    {
      v24 = dword_2997611B0[v23];
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
      v24 = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosMethod,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 87, "GN_SUPL_AidRequest_Out", 770, a3, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v27, 2, 1);
        v24 = 0;
      }
    }

    *(&g_SuplInstance + 74 * v12 + 72) = v24;
    if (a4 >= 0x100)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AllowedGnssMask>UINT8_MAX,0x%X\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 87, "GN_SUPL_AidRequest_Out", 770, a4);
        LOBYTE(a4) = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v29, 2, 1);
      }

      else
      {
        LOBYTE(a4) = 1;
      }
    }

    *(&g_SuplInstance + 296 * v12 + 292) = a4;
    *(v15 + 1) = a1;
    v22[3] = a2 / 0x3E8;
    v22[4] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_REQ =>GNM,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "GN_SUPL_AidRequest_Out", a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8591104, v22);
    v15[282] = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "GN_SUPL_AidRequest_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
    }

    result = lsim12_01StartTimer(lsim10_05AidStatusTimerExpiry, v12, a2 + 1000, 5);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
LABEL_12:
      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v19, "LSM", 73, "GN_SUPL_AidRequest_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      result = 0;
    }
  }

LABEL_30:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_Position_Resp_Out(int a1, int a2, __int128 *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_Position_Resp_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_Position_Resp_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v11;
    v13 = &g_SuplInstance + 296 * v10;
    if (*v13 == a1 && (v13[281] & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v10 = 1;
    if ((v12 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GN_SUPL_Position_Resp_Out", 2052, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
LABEL_12:
        bzero(__str, 0x410uLL);
        v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v16, "LSM", 73, "GN_SUPL_Position_Resp_Out");
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }

LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }
  }

  if (a3 && *(a3 + 1) == 1)
  {
    v21 = gnssOsa_Calloc("GN_SUPL_Position_Resp_Out", 1678, 1, 0x40uLL);
    if (!v21)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v22 = v21;
    v23 = *a3;
    v24 = a3[1];
    v25 = a3[2];
    *(v21 + 15) = *(a3 + 12);
    *(v21 + 44) = v25;
    *(v21 + 28) = v24;
    *(v21 + 12) = v23;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NETWORK_POS_IND =>GNCP,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "GN_SUPL_Position_Resp_Out", a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8597507, v22);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_29;
    }

LABEL_30:
    v18 = 1;
    goto LABEL_14;
  }

  if (*(&g_SuplInstance + 74 * v10 + 72) == 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_28;
    }

    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NIMSA PosData,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 87, "GN_SUPL_Position_Resp_Out", 513, a1);
    v30 = 2;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      goto LABEL_28;
    }

    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NIMSB PosData,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v31), "LSM", 68, "GN_SUPL_Position_Resp_Out", 513, a1);
    v30 = 5;
  }

  LbsOsaTrace_WriteLog(0xCu, __str, v29, v30, 1);
LABEL_28:
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    goto LABEL_30;
  }

LABEL_29:
  bzero(__str, 0x410uLL);
  v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v32, "LSM", 73, "GN_SUPL_Position_Resp_Out");
  v18 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
LABEL_14:
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t GN_SUPL_TimerStart_Out(int a1, int a2, unsigned int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_TimerStart_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u,Duration,%ums\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_TimerStart_Out", a1, a2, a3);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a2 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GN_SUPL_TimerStart_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    v12 = a1;
    v13 = a3;
    v14 = 4;
    goto LABEL_13;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GN_SUPL_TimerStart_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    v12 = a1;
    v13 = a3;
    v14 = 3;
LABEL_13:
    result = lsim12_01StartTimer(lsim05_40SuplTimerExpiry, v12, v13, v14);
    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 87, "GN_SUPL_TimerStart_Out", 515);
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 2, 1);
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GN_SUPL_TimerStart_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    result = 0;
  }

LABEL_14:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_TimerStop_Out(int a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_TimerStop_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_TimerStop_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a2 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GN_SUPL_TimerStop_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v10 = a1;
    v11 = 4;
    goto LABEL_13;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_TimerStop_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    v10 = a1;
    v11 = 3;
LABEL_13:
    result = lsim12_02StopTimer(v10, v11);
    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GN_SUPL_TimerStop_Out", 515);
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GN_SUPL_TimerStop_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
    result = 0;
  }

LABEL_14:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_LocIdReq_Out(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_LocIdReq_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqMask,%X,SimId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_LocIdReq_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  lsim15_02SendMobileInfoReq(a1, a2);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_LocIdReq_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t GN_SUPL_EventNotif_Out(int a1, int a2, int a3, int a4, int a5, int a6, __int128 *a7)
{
  v44 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GN_SUPL_EventNotif_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Event,%u,ConnStatus,%u,SuplMsg,%u,PosM,%u,Cause,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GN_SUPL_EventNotif_Out", a1, a2, a3, a4, a5, a6);
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  if (g_GnsSuplCallback)
  {
    memset_s(&__s, 0x348uLL, 0, 0x348uLL);
    __s = a1;
    v42 = -1;
    if (a2 == 2)
    {
      v38 = a3;
      goto LABEL_17;
    }

    if (a2 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Event,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v31), "LSM", 87, "GN_SUPL_EventNotif_Out", 515, a2, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v32, 2, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_28;
      }

      bzero(__str, 0x410uLL);
      v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v33, "LSM", 73, "GN_SUPL_EventNotif_Out");
      goto LABEL_27;
    }

    v39 = a4;
    v40 = a5;
    v41 = a6;
    if (!a7)
    {
LABEL_17:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:EVNT_INF =>SuplCB,Event,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "GN_SUPL_EventNotif_Out", a2, __s);
        LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
      }

      g_GnsSuplCallback(1, 840, &__s);
      if (v37)
      {
        free(v37);
      }

      v37 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "GN_SUPL_EventNotif_Out");
        v24 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
      }

      else
      {
        v24 = 1;
      }

      goto LABEL_30;
    }

    v18 = gnssOsa_Calloc("GN_SUPL_EventNotif_Out", 1859, 1, 0x78uLL);
    v37 = v18;
    if (v18)
    {
      v19 = *a7;
      v20 = a7[1];
      v21 = a7[2];
      *(v18 + 16) = *(a7 + 12);
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 1) = v19;
      goto LABEL_17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_28:
      v24 = 0;
      goto LABEL_30;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
LABEL_15:
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v25, "LSM", 73, "GN_SUPL_EventNotif_Out");
LABEL_27:
    LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
    goto LABEL_28;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Supl\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "GN_SUPL_EventNotif_Out", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 2, 1);
  }

  v24 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    goto LABEL_15;
  }

LABEL_30:
  v34 = *MEMORY[0x29EDCA608];
  return v24;
}

BOOL GNS_PospInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_PospInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_PospInitialize", 1900, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 4;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_PospInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_ExecutePospCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_ExecutePospCallback");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (g_GnsPospCallback)
  {
    g_GnsPospCallback(a1, a2, a3);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "GNS_ExecutePospCallback", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_ExecutePospCallback");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_PospLocReq(int a1, unsigned int *a2, char a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_PospLocReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (lsim03_13SendLocInfoReq(a1, a2, 3, a3))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_PospLocReq");
      v10 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PospLocReq,SId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "GNS_PospLocReq", 515, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "GNS_PospLocReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
    }

    v10 = 2;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GNS_PospSummaryReport(int a1, char a2, __int128 *a3, __int128 *a4, int a5, int a6, int a7)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_PospSummaryReport");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  v16 = gnssOsa_Calloc("GNS_PospSummaryReport", 2021, 1, 0x38uLL);
  if (!v16)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_20:
      bzero(__str, 0x410uLL);
      v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v32, "LSM", 73, "GNS_PospSummaryReport");
      LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
    }

LABEL_21:
    v30 = 6;
    goto LABEL_22;
  }

  v17 = v16;
  if (!a3)
  {
    goto LABEL_7;
  }

  v18 = gnssOsa_Calloc("GNS_PospSummaryReport", 2031, 1, 0x28uLL);
  v17[3] = v18;
  if (!v18)
  {
    free(v17);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v19 = *a3;
  v20 = a3[1];
  *(v18 + 31) = *(a3 + 31);
  *v18 = v19;
  *(v18 + 1) = v20;
LABEL_7:
  if (!a4)
  {
    goto LABEL_10;
  }

  v21 = gnssOsa_Calloc("GNS_PospSummaryReport", 2045, 1, 0x78uLL);
  v17[4] = v21;
  if (!v21)
  {
    v31 = v17[3];
    if (v31)
    {
      free(v31);
    }

    free(v17);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v22 = *a4;
  v23 = a4[1];
  v24 = a4[3];
  v21[2] = a4[2];
  v21[3] = v24;
  *v21 = v22;
  v21[1] = v23;
  v25 = a4[4];
  v26 = a4[5];
  v27 = a4[6];
  *(v21 + 14) = *(a4 + 14);
  v21[5] = v26;
  v21[6] = v27;
  v21[4] = v25;
LABEL_10:
  *(v17 + 4) = a1;
  *(v17 + 20) = a2;
  *(v17 + 11) = a6;
  *(v17 + 12) = a7;
  *(v17 + 10) = a5;
  AgpsSendFsmMsg(131, 131, 8636163, v17);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "GNS_PospSummaryReport");
    v30 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v29, 4, 1);
  }

  else
  {
    v30 = 1;
  }

LABEL_22:
  v34 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t GNS_PospStatusReport(int a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, char a6)
{
  v45 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_PospStatusReport");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = gnssOsa_Calloc("GNS_PospStatusReport", 2102, 1, 0x48uLL);
  if (!v14)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_29:
      bzero(__str, 0x410uLL);
      v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v40, "LSM", 73, "GNS_PospStatusReport");
      LbsOsaTrace_WriteLog(0xCu, __str, v41, 4, 1);
    }

LABEL_30:
    v36 = 6;
    goto LABEL_31;
  }

  v15 = v14;
  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = gnssOsa_Calloc("GNS_PospStatusReport", 2113, 1, 0x78uLL);
  v15[3] = v16;
  if (!v16)
  {
    free(v15);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = a3[3];
  v16[2] = a3[2];
  v16[3] = v19;
  *v16 = v17;
  v16[1] = v18;
  v20 = a3[4];
  v21 = a3[5];
  v22 = a3[6];
  *(v16 + 14) = *(a3 + 14);
  v16[5] = v21;
  v16[6] = v22;
  v16[4] = v20;
LABEL_7:
  if (!a4)
  {
    goto LABEL_10;
  }

  v23 = gnssOsa_Calloc("GNS_PospStatusReport", 2127, 1, 0x7CuLL);
  v15[4] = v23;
  if (!v23)
  {
    v37 = v15[3];
    if (v37)
    {
      free(v37);
    }

    free(v15);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v24 = *a4;
  v25 = a4[1];
  v26 = a4[3];
  v23[2] = a4[2];
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  v27 = a4[4];
  v28 = a4[5];
  v29 = a4[6];
  *(v23 + 108) = *(a4 + 108);
  v23[5] = v28;
  v23[6] = v29;
  v23[4] = v27;
LABEL_10:
  if (!a5)
  {
    goto LABEL_13;
  }

  v30 = gnssOsa_Calloc("GNS_PospStatusReport", 2142, 1, 0x34uLL);
  v15[5] = v30;
  if (!v30)
  {
    v38 = v15[3];
    if (v38)
    {
      free(v38);
    }

    v15[3] = 0;
    v39 = v15[4];
    if (v39)
    {
      free(v39);
    }

    free(v15);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v31 = *a5;
  v32 = a5[1];
  v33 = a5[2];
  v30[12] = *(a5 + 12);
  *(v30 + 1) = v32;
  *(v30 + 2) = v33;
  *v30 = v31;
LABEL_13:
  *(v15 + 4) = a1;
  *(v15 + 12) = a2;
  *(v15 + 64) = a6;
  AgpsSendFsmMsg(131, 131, 8636419, v15);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "GNS_PospStatusReport");
    v36 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
  }

  else
  {
    v36 = 1;
  }

LABEL_31:
  v42 = *MEMORY[0x29EDCA608];
  return v36;
}

BOOL GNS_SuplInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_SuplInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_SuplInitialize", 2183, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 3;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SuplInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_SuplDecodeInit(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const void *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_SuplDecodeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Length,%u,pointer,%p,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_SuplDecodeInit", a3, a2, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  if (a2 && a3 && a4)
  {
    if (GN_SUPL_DecodeSuplInit_In(a1, a2, a3, a4))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_SuplDecodeInit");
        v14 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_DecodeSuplInit_In Failed,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 87, "GNS_SuplDecodeInit", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 2, 1);
      }

      v14 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_SuplDecodeInit");
        LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
        v14 = 0;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Length,%u,DataPtr,%p,DecodedDataPtr,%p,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_SuplDecodeInit", 513, a3, a2, a4, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_SuplDecodeInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    v14 = 2;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t GNS_SuplAbortSession(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_SuplAbortSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_SuplAbortSession", a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = gnssOsa_Calloc("GNS_SuplAbortSession", 2266, 1, 0x10uLL);
  if (v6)
  {
    v6[3] = a1;
    AgpsSendFsmMsg(131, 131, 8635648, v6);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "GNS_SuplAbortSession");
      v9 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_SuplAbortSession");
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    v9 = 6;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v9;
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