void NK_Set_Accuracy(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x29EDCA608];
  v8 = a4 + 24680;
  if (*(a4 + 25165) == 1)
  {
    if (*(a4 + 24352) > 30000.0)
    {
      *(a4 + 24352) = 0x40DD4C0000000000;
    }

    if (*(a4 + 24360) > 30000.0)
    {
      *(a4 + 24360) = 0x40DD4C0000000000;
    }

    if (*(a4 + 24368) > 30000.0)
    {
      *(a4 + 24368) = 0x40DD4C0000000000;
    }

    if (*(a4 + 24264) > 900000000.0)
    {
      *(a4 + 24264) = 0x41CAD27480000000;
    }

    if (*(a4 + 24272) > 900000000.0)
    {
      *(a4 + 24272) = 0x41CAD27480000000;
    }

    if (*(a4 + 24280) > 900000000.0)
    {
      *(a4 + 24280) = 0x41CAD27480000000;
    }
  }

  v9 = *(a4 + 24312);
  if (v9 >= *(a4 + 24320))
  {
    v9 = *(a4 + 24320);
  }

  if (v9 <= *(a4 + 24328))
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a4 + 24328);
  }

  v11 = a4 + 24656;
  *(a4 + 24696) = v10;
  v12 = v10;
  if ((*(a4 + 16) & 1) == 0)
  {
    if (*(a3 + 11048) || (v13 = 0.0, *(a4 + 12) >= 9))
    {
      v13 = v10;
    }

    v12 = sqrt(v13 + *(a4 + 24256) * 8.98755179e10);
  }

  *(a4 + 24704) = v12;
  *(a4 + 24744) = *(a4 + 24336);
  *(a4 + 24656) = *(a4 + 24352);
  *(a4 + 24680) = *(a4 + 24368);
  v14 = *(a4 + 24264);
  v15 = *(a4 + 24272);
  *(a4 + 24672) = sqrt(v14 + v15);
  *(a4 + 24688) = sqrt(v14 + v15 + *(a4 + 24280));
  v16 = *(a4 + 24288);
  v17 = 0.0;
  v18 = *(a4 + 24296);
  *(a4 + 24712) = sqrt(v16 + 0.0 + v18);
  *(a4 + 24720) = *(a4 + 24392);
  for (i = 3036; i != 3039; ++i)
  {
    v17 = v17 + *(a4 + 8 * i);
  }

  *(a4 + 24728) = sqrt(v17);
  v20 = *(a4 + 24736);
  v21 = *(a4 + 920) * *(a4 + 920);
  v22 = *(a4 + 912) * *(a4 + 912);
  if (v21 < 0.000001 && v22 < 0.000001)
  {
    v22 = 0.000001;
    v21 = 0.000001;
  }

  v23 = 57.2957795 / (v22 + v21) * ((v16 * v21 + v18 * v22) * (57.2957795 / (v22 + v21)));
  v24 = 0.5;
  if (!*(a3 + 11161))
  {
    v24 = 1.0;
  }

  v25 = 20.0;
  if (*(a4 + 936) >= v24)
  {
    v25 = 10.0;
  }

  v26 = sqrt(v23);
  v27 = *(a4 + 944);
  if (v27 >= 4.0 || v26 >= v25 || *(a4 + 24780) > 7u)
  {
    if (v26 >= 180.0)
    {
      v28 = *(a3 + 11144) < v24;
      v29 = v26;
      if (v28)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    *(a4 + 31436) = 1;
    v26 = v25;
  }

  v30 = v26 - v20;
  if (*(a3 + 11116) != 3 || (v29 = v20, v20 < 180.0) && (v29 = v20, v30 <= 1.0))
  {
    if (v27 >= 4.0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v26;
      if (v30 > 5.0)
      {
        v29 = v20 + fmin(0.93 / fmax(fabs(v30), 2.22044605e-16) + 0.07, 0.25) * v30;
      }
    }
  }

LABEL_45:
  if (v20 < 180.0)
  {
    v31 = fabs(*(a3 + 11200));
    if (v31 > 3.0)
    {
      v32 = v31 * 0.5;
      if (v29 < v32)
      {
        *(a4 + 31437) = 1;
        v29 = v32;
      }
    }
  }

  *(a4 + 24736) = fmin(v29, 180.0);
  Comp_ErrorEllipse(v14, v15, *(a4 + 24400), (a4 + 24752), (a4 + 24760), (a4 + 24768));
  if (*(a4 + 964) <= 1 && *(a4 + 960) == 1)
  {
    v33 = *(a4 + 24752);
    if (v33 < 9999000.0 && v33 > 1000.0)
    {
      v34 = *(a4 + 24760);
      v35 = v33 / v34;
      if (v35 > 50.0)
      {
        *(a4 + 24760) = v34 * v35 * 0.04;
      }
    }
  }

  if (!a1 || *a4 <= a1)
  {
    EvLog_v("TTick_Restart Test: %u %u", 2, a1);
  }

  if ((*(a3 + 233) & 1) == 0 && !*(a4 + 968) && (*(a3 + 11028) - 3) >= 0xFFFFFFFE && *(a4 + 24752) > 18.0 && *(a4 + 2840) <= 0.03 && *a4 < a1 + 5000)
  {
    if (*(a3 + 11048) || (v36 = 0.0, *(a4 + 12) >= 9))
    {
      v36 = v10 * 1.11265006e-17;
    }

    if ((*(a4 + 16) & 1) == 0)
    {
      v36 = v36 + *(a4 + 24256) * 0.000001;
    }

    v37 = sqrt(v36) * 1000000.0;
    v38 = -0.5;
    if (v37 > 0.0)
    {
      v38 = 0.5;
    }

    v39 = v37 + v38;
    if (v39 <= 2147483650.0 && (v39 < -2147483650.0 || v39 <= 99900))
    {
      v41 = 0;
      v42 = 0;
      v43 = a4 + 3056;
      do
      {
        if (*(v43 + v41 - 96) == 1)
        {
          v44 = *(v43 + 4 * v41);
          if ((v44 - 1) >= 0x1D)
          {
            if (v44)
            {
              v65 = v42;
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
              v42 = v65;
            }

            else if (*(a2 + v41) > 0x23u)
            {
              ++v42;
            }
          }
        }

        ++v41;
      }

      while (v41 != 48);
      if (v42 >= 6)
      {
        v45 = *(a4 + 24752);
        v46 = v45 * dbl_29975F1F0[*(a3 + 11028) == 1];
        if (v46 < 18.0)
        {
          v46 = 18.0;
        }

        *(a4 + 24752) = v46;
        if (v46 < *(a4 + 24760))
        {
          *(a4 + 24760) = v46;
        }

        v47 = *v8;
        v48 = *v8;
        if (*v8 > 50.0)
        {
          v48 = v47 * 0.8;
          *v8 = v47 * 0.8;
          if (v47 * 0.8 < 50.0)
          {
            *v8 = 0x4049000000000000;
            v48 = 50.0;
          }
        }

        EvLog_v("NK_Set_Accuracy: Reset pos acc H %g %g V %g %g", v45, v46, v47, v48);
      }
    }
  }

  v49 = *(a4 + 2840);
  if (*(v8 + 97) <= 5u && v49 <= *(a3 + 10888))
  {
    v49 = *(a3 + 10888);
  }

  v50 = *(a4 + 24672);
  if (v49 > 25.0)
  {
    v51 = sqrt(v49);
    *(a4 + 24696) = v51 * *(a4 + 24696);
    *(a4 + 24656) = vmulq_n_f64(*(a4 + 24656), v51);
    v50 = v51 * v50;
    *(a4 + 24672) = v50;
    *v8 = vmulq_n_f64(*v8, v51);
    *(a4 + 24752) = vmulq_n_f64(*(a4 + 24752), v51);
  }

  if (v50 < 100.0)
  {
    v52 = *(a4 + 2832);
    if (v52 <= 10.0)
    {
      v53 = 1.0;
    }

    else
    {
      *&v78[0] = 0;
      v53 = 1.0;
      if (!R8_EQ((a4 + 2832), v78))
      {
        v53 = log10(v52);
      }
    }

    v54 = *(v8 + 98);
    v55 = *(a4 + 968);
    if (v54 <= 9 && v55 == 1)
    {
      v56 = ((10.0 - v54) / 10.0 + 1.0) * ((10.0 - v54) / 10.0 + 1.0);
    }

    else
    {
      if (v55)
      {
        goto LABEL_111;
      }

      v60 = 0;
      v61 = 0;
      memset(v78, 0, sizeof(v78));
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
      v62 = (a3 + 2104);
      *v66 = 0u;
      v67 = 0u;
      do
      {
        if (*(a4 + v60 + 2960) == 1 && *(a3 + 7744 + 2 * v60))
        {
          *(v78 + v61) = *(a4 + 7616 + 8 * v60) * *v62;
          v66[v61] = v61;
          ++v61;
        }

        ++v60;
        v62 += 5;
      }

      while (v60 != 48);
      if (!v61)
      {
        goto LABEL_111;
      }

      VecSortIndexAscR8(v78, v61, v66, 1);
      v63 = 75 * v61 + 37;
      if (v63 >= 0x2BC)
      {
        v64 = v63 / 0x64;
      }

      else
      {
        v64 = 6;
      }

      if (v61 < 7)
      {
        v64 = v61;
      }

      v56 = fmax(fabs(*(v78 + v66[v64 - 1])) / (v53 * (*(a4 + 24752) + *(a4 + 24760)) * 0.5), 1.0);
    }

    v53 = v53 * v56;
LABEL_111:
    v57 = fmin(v53, 4.0);
    *(a4 + 24696) = *(a4 + 24696) * v57;
    *(a4 + 24656) = vmulq_n_f64(*(a4 + 24656), v57);
    *(a4 + 24672) = v57 * v50;
    *v8 = vmulq_n_f64(*v8, v57);
    *(a4 + 24752) = vmulq_n_f64(*(a4 + 24752), v57);
  }

  v58 = 0;
  do
  {
    if (*(v11 + v58) > 9999000.0)
    {
      *(v11 + v58) = 0x4163125300000000;
    }

    v58 += 8;
  }

  while (v58 != 120);
  v59 = *MEMORY[0x29EDCA608];
}

uint64_t lsim13_02SuplConfig(void)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim13_02SuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if ((dword_2A18CCEB4 & 0x400) != 0)
  {
    v2 = 11;
  }

  else
  {
    v2 = 10;
  }

  v16 = v2;
  v17 = v2;
  if (byte_2A18CCEB0)
  {
    v17 = byte_2A18CCEB0;
  }

  if (byte_2A18CCEB1)
  {
    v3 = byte_2A18CCEB1;
  }

  else
  {
    v3 = 10;
  }

  v18 = v3;
  v20 = word_2A18CCEB2;
  v4 = dword_2A18CCEAC;
  v19 = dword_2A18CCEAC;
  v21 = (dword_2A18CCEB4 & 0x80000) != 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PrefPosM,%u\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 68, "lsim13_02SuplConfig", v4);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 5, 1);
  }

  GN_SUPL_Set_Config(&v16);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim13_03SuplExtdConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v15[6] = (dword_2A18CCEB4 & 0x800) != 0;
  v15[7] = (dword_2A18CCEB4 & 0x1000) != 0;
  v15[2] = byte_2A18CCEB8;
  v15[0] = byte_2A18CCEBA;
  v15[1] = byte_2A18CCEB9;
  v15[5] = byte_2A18CCEBD;
  v15[3] = byte_2A18CCEBF;
  v15[4] = byte_2A18CCEBE;
  GN_SUPL_Extd_Set_Config(v15);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim13_03SuplExtdConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim13_02SuplConfig");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim13_01SetConfig(uint64_t a1)
{
  v282 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim13_01SetConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_LSIM_CONFIG_IND\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim13_01SetConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim13_04SetUserConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    if (dword_2A18CCEB4)
    {
      v275 = (v6[564] & 1) == 0;
      if ((dword_2A18CCEB4 & 0x80) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v275 = 0;
      if ((dword_2A18CCEB4 & 0x80) != 0)
      {
LABEL_10:
        v274 = (v6[564] & 0x80) == 0;
LABEL_13:
        memcpy_s("lsim13_04SetUserConfig", 247, &g_LsimUserConfig, 0x244u, v6, 0x244uLL);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,Bitmask,%X\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 77, "lsim13_04SetUserConfig", dword_2A18CCEB4);
          LbsOsaTrace_WriteLog(0xCu, __str, v10, 3, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          if ((dword_2A18CCEB4 & 0x80) != 0)
          {
            v12 = 84;
          }

          else
          {
            v12 = 70;
          }

          if ((dword_2A18CCEB4 & 0x40) != 0)
          {
            v13 = 84;
          }

          else
          {
            v13 = 70;
          }

          if ((dword_2A18CCEB4 & 0x20) != 0)
          {
            v14 = 84;
          }

          else
          {
            v14 = 70;
          }

          v219 = v13;
          if ((dword_2A18CCEB4 & 0x10) != 0)
          {
            v15 = 84;
          }

          else
          {
            v15 = 70;
          }

          if ((dword_2A18CCEB4 & 8) != 0)
          {
            v16 = 84;
          }

          else
          {
            v16 = 70;
          }

          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,UpTrans,%c,CpTrans,%c,PreUpTrans,%c,Mo,%c,Mt,%c\n", v11, "LSM", 73, "lsim13_04SetUserConfig", v16, v15, v14, v219, v12);
          LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          if ((dword_2A18CCEB4 & 0x1000) != 0)
          {
            v19 = 84;
          }

          else
          {
            v19 = 70;
          }

          if ((dword_2A18CCEB4 & 0x800) != 0)
          {
            v20 = 84;
          }

          else
          {
            v20 = 70;
          }

          v234 = v20;
          v236 = v19;
          if ((dword_2A18CCEB4 & 0x400) != 0)
          {
            v21 = 84;
          }

          else
          {
            v21 = 70;
          }

          if ((dword_2A18CCEB4 & 0x2000) != 0)
          {
            v22 = 84;
          }

          else
          {
            v22 = 70;
          }

          v220 = v21;
          if ((dword_2A18CCEB4 & 0x200) != 0)
          {
            v23 = 84;
          }

          else
          {
            v23 = 70;
          }

          if ((dword_2A18CCEB4 & 0x80000) != 0)
          {
            v24 = 84;
          }

          else
          {
            v24 = 70;
          }

          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,DisableSuplMsa,%c,SuplMultiSess,%c,Tls,%c,SuplV2,%c,SuplV2Lpp,%c,SuplV2Sha1Override,%c\n", v18, "LSM", 73, "lsim13_04SetUserConfig", v24, v23, v22, v220, v234, v236);
          LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          if (dword_2A18CCEB4)
          {
            v27 = 84;
          }

          else
          {
            v27 = 70;
          }

          if ((dword_2A18CCEB4 & 0x20000) != 0)
          {
            v28 = 84;
          }

          else
          {
            v28 = 70;
          }

          v235 = v28;
          v237 = v27;
          if ((dword_2A18CCEB4 & 0x10000) != 0)
          {
            v29 = 84;
          }

          else
          {
            v29 = 70;
          }

          if ((dword_2A18CCEB4 & 0x40000) != 0)
          {
            v30 = 84;
          }

          else
          {
            v30 = 70;
          }

          v221 = v29;
          if ((dword_2A18CCEB4 & 0x8000) != 0)
          {
            v31 = 84;
          }

          else
          {
            v31 = 70;
          }

          if ((dword_2A18CCEB4 & 0x4000) != 0)
          {
            v32 = 84;
          }

          else
          {
            v32 = 70;
          }

          v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,Fa,%c,CpMoar,%c,NwPfOverride,%c,WifiPos,%c,SntpRft,%c,GnssChipEn,%c\n", v26, "LSM", 73, "lsim13_04SetUserConfig", v32, v31, v30, v221, v235, v237);
          LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
        }

        v34 = 0;
        v35 = 0;
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = &g_LsimUserConfig + 268 * v34;
          v39 = *(v38 + 1);
          if (v39 && strnlen(v38 + 8, 0x100uLL))
          {
            v279 = 0;
            v280 = -1;
            v276 = *v38;
            v278 = v39;
            v40 = strncpy(v277, v38 + 8, 0x100uLL);
            v279 = strnlen(v40, 0x100uLL);
            v41 = *(v38 + 132);
            if (!v41)
            {
              v41 = 7275;
            }

            v280 = v41;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,SimIndex,%u,SimId,%u,Addr,%s,Port,%u,AddType,%u\n", (*&g_MacClockTicksToMsRelation * v42), "LSM", 73, "lsim13_04SetUserConfig", v35, v276, v277, v280, v278);
              LbsOsaTrace_WriteLog(0xCu, __str, v43, 4, 1);
            }

            GN_SUPL_Set_SlpInfo(&v276);
          }

          v36 = 0;
          v34 = 1;
          v35 = 1;
        }

        while ((v37 & 1) != 0);
        if (dword_2A18CCEAC == 3)
        {
          dword_2A18CCEAC = 2;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,PrefPosM,%u,UT2,%us,UT3,%us,SuplSessTo,%us\n", (*&g_MacClockTicksToMsRelation * v44), "LSM", 73, "lsim13_04SetUserConfig", dword_2A18CCEAC, byte_2A18CCEB0, byte_2A18CCEB1, word_2A18CCEB2);
          LbsOsaTrace_WriteLog(0xCu, __str, v45, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v46 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v47 = 70;
          if (byte_2A18CCEBC)
          {
            v48 = 84;
          }

          else
          {
            v48 = 70;
          }

          if (byte_2A18CCEBB)
          {
            v49 = 84;
          }

          else
          {
            v49 = 70;
          }

          if (byte_2A18CCEBA)
          {
            v50 = 84;
          }

          else
          {
            v50 = 70;
          }

          if (byte_2A18CCEB9)
          {
            v51 = 84;
          }

          else
          {
            v51 = 70;
          }

          if (byte_2A18CCEB8)
          {
            v47 = 84;
          }

          v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,GPS ,Auto,%c,Msb,%c,Msa,%c,PredEE,%c,SaEE,%c\n", v46, "LSM", 73, "lsim13_04SetUserConfig", v47, v51, v50, v49, v48);
          LbsOsaTrace_WriteLog(0xCu, __str, v52, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v53 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v54 = 70;
          if (byte_2A18CCEC1)
          {
            v55 = 84;
          }

          else
          {
            v55 = 70;
          }

          if (byte_2A18CCEC0)
          {
            v56 = 84;
          }

          else
          {
            v56 = 70;
          }

          if (byte_2A18CCEBF)
          {
            v57 = 84;
          }

          else
          {
            v57 = 70;
          }

          if (byte_2A18CCEBE)
          {
            v58 = 84;
          }

          else
          {
            v58 = 70;
          }

          if (byte_2A18CCEBD)
          {
            v54 = 84;
          }

          v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,BDS ,Auto,%c,Msb,%c,Msa,%c,PredEE,%c,SaEE,%c\n", v53, "LSM", 73, "lsim13_04SetUserConfig", v54, v58, v57, v56, v55);
          LbsOsaTrace_WriteLog(0xCu, __str, v59, 4, 1);
        }

        if (v274)
        {
          lsim04_02CloseOtherCpNiSessions(1, 0);
          lsim05_42CloseSuplSessions(3, 0);
        }

        if (v275)
        {
          lsim04_02CloseOtherCpNiSessions(4, 0);
          lsim05_43CloseOtherPospSessions(4, 0);
          lsim05_42CloseSuplSessions(4, 0);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v60 = mach_continuous_time();
          v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v60), "LSM", 73, "lsim13_04SetUserConfig");
          LbsOsaTrace_WriteLog(0xCu, __str, v61, 4, 1);
        }

        v62 = *(a1 + 16);
        if (v62)
        {
          free(v62);
        }

        *(a1 + 16) = 0;
        goto LABEL_126;
      }
    }

    v274 = 0;
    goto LABEL_13;
  }

LABEL_126:
  v63 = *(a1 + 24);
  if (v63)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v64 = mach_continuous_time();
      v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v64), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v65, 4, 1);
    }

    memcpy_s("lsim13_05SetPltConfig", 364, &g_LsimPltConfig, 0x1Cu, v63, 0x1CuLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v66 = mach_continuous_time();
      v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,MSA AR Mandatory Mask\n", (*&g_MacClockTicksToMsRelation * v66), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v67, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v68 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 4) != 0)
      {
        v69 = 84;
      }

      else
      {
        v69 = 70;
      }

      if ((g_LsimPltConfig & 2) != 0)
      {
        v70 = 84;
      }

      else
      {
        v70 = 70;
      }

      if (g_LsimPltConfig)
      {
        v71 = 84;
      }

      else
      {
        v71 = 70;
      }

      v72 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,Iono,%c,Rfp,%c,Rft,%c\n", v68, "LSM", 73, "lsim13_05SetPltConfig", v71, v70, v69);
      LbsOsaTrace_WriteLog(0xCu, __str, v72, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v73 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 0x8000000) != 0)
      {
        v74 = 84;
      }

      else
      {
        v74 = 70;
      }

      if ((g_LsimPltConfig & 0x4000000) != 0)
      {
        v75 = 84;
      }

      else
      {
        v75 = 70;
      }

      if ((g_LsimPltConfig & 0x2000000) != 0)
      {
        v76 = 84;
      }

      else
      {
        v76 = 70;
      }

      v250 = v75;
      v262 = v74;
      if ((g_LsimPltConfig & 0x800000) != 0)
      {
        v77 = 84;
      }

      else
      {
        v77 = 70;
      }

      if ((g_LsimPltConfig & 0x1000000) != 0)
      {
        v78 = 84;
      }

      else
      {
        v78 = 70;
      }

      v238 = v77;
      if ((g_LsimPltConfig & 0x100000) != 0)
      {
        v79 = 84;
      }

      else
      {
        v79 = 70;
      }

      if ((g_LsimPltConfig & 0x400000) != 0)
      {
        v80 = 84;
      }

      else
      {
        v80 = 70;
      }

      v222 = v79;
      if ((g_LsimPltConfig & 0x200000) != 0)
      {
        v81 = 84;
      }

      else
      {
        v81 = 70;
      }

      if ((g_LsimPltConfig & 0x80000) != 0)
      {
        v82 = 84;
      }

      else
      {
        v82 = 70;
      }

      v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GPS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v73, "LSM", 73, "lsim13_05SetPltConfig", v82, v81, v80, v222, v78, v238, v76, v250, v262);
      LbsOsaTrace_WriteLog(0xCu, __str, v83, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v84 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 0x80000000000) != 0)
      {
        v85 = 84;
      }

      else
      {
        v85 = 70;
      }

      if ((g_LsimPltConfig & 0x40000000000) != 0)
      {
        v86 = 84;
      }

      else
      {
        v86 = 70;
      }

      if ((g_LsimPltConfig & 0x20000000000) != 0)
      {
        v87 = 84;
      }

      else
      {
        v87 = 70;
      }

      v251 = v86;
      v263 = v85;
      if ((g_LsimPltConfig & 0x8000000000) != 0)
      {
        v88 = 84;
      }

      else
      {
        v88 = 70;
      }

      if ((g_LsimPltConfig & 0x10000000000) != 0)
      {
        v89 = 84;
      }

      else
      {
        v89 = 70;
      }

      v239 = v88;
      if ((g_LsimPltConfig & 0x1000000000) != 0)
      {
        v90 = 84;
      }

      else
      {
        v90 = 70;
      }

      if ((g_LsimPltConfig & 0x4000000000) != 0)
      {
        v91 = 84;
      }

      else
      {
        v91 = 70;
      }

      v223 = v90;
      if ((g_LsimPltConfig & 0x2000000000) != 0)
      {
        v92 = 84;
      }

      else
      {
        v92 = 70;
      }

      if ((g_LsimPltConfig & 0x800000000) != 0)
      {
        v93 = 84;
      }

      else
      {
        v93 = 70;
      }

      v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GLON,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v84, "LSM", 73, "lsim13_05SetPltConfig", v93, v92, v91, v223, v89, v239, v87, v251, v263);
      LbsOsaTrace_WriteLog(0xCu, __str, v94, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v95 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 0x800000000000000) != 0)
      {
        v96 = 84;
      }

      else
      {
        v96 = 70;
      }

      if ((g_LsimPltConfig & 0x400000000000000) != 0)
      {
        v97 = 84;
      }

      else
      {
        v97 = 70;
      }

      if ((g_LsimPltConfig & 0x200000000000000) != 0)
      {
        v98 = 84;
      }

      else
      {
        v98 = 70;
      }

      v252 = v97;
      v264 = v96;
      if ((g_LsimPltConfig & 0x80000000000000) != 0)
      {
        v99 = 84;
      }

      else
      {
        v99 = 70;
      }

      if ((g_LsimPltConfig & 0x100000000000000) != 0)
      {
        v100 = 84;
      }

      else
      {
        v100 = 70;
      }

      v240 = v99;
      if ((g_LsimPltConfig & 0x10000000000000) != 0)
      {
        v101 = 84;
      }

      else
      {
        v101 = 70;
      }

      if ((g_LsimPltConfig & 0x40000000000000) != 0)
      {
        v102 = 84;
      }

      else
      {
        v102 = 70;
      }

      v224 = v101;
      if ((g_LsimPltConfig & 0x20000000000000) != 0)
      {
        v103 = 84;
      }

      else
      {
        v103 = 70;
      }

      if ((g_LsimPltConfig & 0x8000000000000) != 0)
      {
        v104 = 84;
      }

      else
      {
        v104 = 70;
      }

      v105 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,BDS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v95, "LSM", 73, "lsim13_05SetPltConfig", v104, v103, v102, v224, v100, v240, v98, v252, v264);
      LbsOsaTrace_WriteLog(0xCu, __str, v105, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v106 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267F4 & 0x800) != 0)
      {
        v107 = 84;
      }

      else
      {
        v107 = 70;
      }

      if ((word_2A19267F4 & 0x400) != 0)
      {
        v108 = 84;
      }

      else
      {
        v108 = 70;
      }

      if ((word_2A19267F4 & 0x200) != 0)
      {
        v109 = 84;
      }

      else
      {
        v109 = 70;
      }

      v253 = v108;
      v265 = v107;
      if ((word_2A19267F4 & 0x80) != 0)
      {
        v110 = 84;
      }

      else
      {
        v110 = 70;
      }

      if ((word_2A19267F4 & 0x100) != 0)
      {
        v111 = 84;
      }

      else
      {
        v111 = 70;
      }

      v241 = v110;
      if ((word_2A19267F4 & 0x10) != 0)
      {
        v112 = 84;
      }

      else
      {
        v112 = 70;
      }

      if ((word_2A19267F4 & 0x40) != 0)
      {
        v113 = 84;
      }

      else
      {
        v113 = 70;
      }

      v225 = v112;
      if ((word_2A19267F4 & 0x20) != 0)
      {
        v114 = 84;
      }

      else
      {
        v114 = 70;
      }

      if ((word_2A19267F4 & 8) != 0)
      {
        v115 = 84;
      }

      else
      {
        v115 = 70;
      }

      v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GAL ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v106, "LSM", 73, "lsim13_05SetPltConfig", v115, v114, v113, v225, v111, v241, v109, v253, v265);
      LbsOsaTrace_WriteLog(0xCu, __str, v116, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v117 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267F2 & 0x800) != 0)
      {
        v118 = 84;
      }

      else
      {
        v118 = 70;
      }

      if ((word_2A19267F2 & 0x400) != 0)
      {
        v119 = 84;
      }

      else
      {
        v119 = 70;
      }

      if ((word_2A19267F2 & 0x200) != 0)
      {
        v120 = 84;
      }

      else
      {
        v120 = 70;
      }

      v254 = v119;
      v266 = v118;
      if ((word_2A19267F2 & 0x80) != 0)
      {
        v121 = 84;
      }

      else
      {
        v121 = 70;
      }

      if ((word_2A19267F2 & 0x100) != 0)
      {
        v122 = 84;
      }

      else
      {
        v122 = 70;
      }

      v242 = v121;
      if ((word_2A19267F2 & 0x10) != 0)
      {
        v123 = 84;
      }

      else
      {
        v123 = 70;
      }

      if ((word_2A19267F2 & 0x40) != 0)
      {
        v124 = 84;
      }

      else
      {
        v124 = 70;
      }

      v226 = v123;
      if ((word_2A19267F2 & 0x20) != 0)
      {
        v125 = 84;
      }

      else
      {
        v125 = 70;
      }

      if ((word_2A19267F2 & 8) != 0)
      {
        v126 = 84;
      }

      else
      {
        v126 = 70;
      }

      v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,QZSS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v117, "LSM", 73, "lsim13_05SetPltConfig", v126, v125, v124, v226, v122, v242, v120, v254, v266);
      LbsOsaTrace_WriteLog(0xCu, __str, v127, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v128 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267F0 & 0x800) != 0)
      {
        v129 = 84;
      }

      else
      {
        v129 = 70;
      }

      if ((word_2A19267F0 & 0x400) != 0)
      {
        v130 = 84;
      }

      else
      {
        v130 = 70;
      }

      if ((word_2A19267F0 & 0x200) != 0)
      {
        v131 = 84;
      }

      else
      {
        v131 = 70;
      }

      v255 = v130;
      v267 = v129;
      if ((word_2A19267F0 & 0x80) != 0)
      {
        v132 = 84;
      }

      else
      {
        v132 = 70;
      }

      if ((word_2A19267F0 & 0x100) != 0)
      {
        v133 = 84;
      }

      else
      {
        v133 = 70;
      }

      v243 = v132;
      if ((word_2A19267F0 & 0x10) != 0)
      {
        v134 = 84;
      }

      else
      {
        v134 = 70;
      }

      if ((word_2A19267F0 & 0x40) != 0)
      {
        v135 = 84;
      }

      else
      {
        v135 = 70;
      }

      v227 = v134;
      if ((word_2A19267F0 & 0x20) != 0)
      {
        v136 = 84;
      }

      else
      {
        v136 = 70;
      }

      if ((word_2A19267F0 & 8) != 0)
      {
        v137 = 84;
      }

      else
      {
        v137 = 70;
      }

      v138 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,SBAS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v128, "LSM", 73, "lsim13_05SetPltConfig", v137, v136, v135, v227, v133, v243, v131, v255, v267);
      LbsOsaTrace_WriteLog(0xCu, __str, v138, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v139 = mach_continuous_time();
      v140 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,MSB AR Mandatory Mask\n", (*&g_MacClockTicksToMsRelation * v139), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v140, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v141 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 4) != 0)
      {
        v142 = 84;
      }

      else
      {
        v142 = 70;
      }

      if ((qword_2A19267F6 & 2) != 0)
      {
        v143 = 84;
      }

      else
      {
        v143 = 70;
      }

      if (qword_2A19267F6)
      {
        v144 = 84;
      }

      else
      {
        v144 = 70;
      }

      v145 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,Iono,%c,Rfp,%c,Rft,%c\n", v141, "LSM", 73, "lsim13_05SetPltConfig", v144, v143, v142);
      LbsOsaTrace_WriteLog(0xCu, __str, v145, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v146 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 0x8000000) != 0)
      {
        v147 = 84;
      }

      else
      {
        v147 = 70;
      }

      if ((qword_2A19267F6 & 0x4000000) != 0)
      {
        v148 = 84;
      }

      else
      {
        v148 = 70;
      }

      if ((qword_2A19267F6 & 0x2000000) != 0)
      {
        v149 = 84;
      }

      else
      {
        v149 = 70;
      }

      v256 = v148;
      v268 = v147;
      if ((qword_2A19267F6 & 0x800000) != 0)
      {
        v150 = 84;
      }

      else
      {
        v150 = 70;
      }

      if ((qword_2A19267F6 & 0x1000000) != 0)
      {
        v151 = 84;
      }

      else
      {
        v151 = 70;
      }

      v244 = v150;
      if ((qword_2A19267F6 & 0x100000) != 0)
      {
        v152 = 84;
      }

      else
      {
        v152 = 70;
      }

      if ((qword_2A19267F6 & 0x400000) != 0)
      {
        v153 = 84;
      }

      else
      {
        v153 = 70;
      }

      v228 = v152;
      if ((qword_2A19267F6 & 0x200000) != 0)
      {
        v154 = 84;
      }

      else
      {
        v154 = 70;
      }

      if ((qword_2A19267F6 & 0x80000) != 0)
      {
        v155 = 84;
      }

      else
      {
        v155 = 70;
      }

      v156 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GPS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v146, "LSM", 73, "lsim13_05SetPltConfig", v155, v154, v153, v228, v151, v244, v149, v256, v268);
      LbsOsaTrace_WriteLog(0xCu, __str, v156, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v157 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 0x80000000000) != 0)
      {
        v158 = 84;
      }

      else
      {
        v158 = 70;
      }

      if ((qword_2A19267F6 & 0x40000000000) != 0)
      {
        v159 = 84;
      }

      else
      {
        v159 = 70;
      }

      if ((qword_2A19267F6 & 0x20000000000) != 0)
      {
        v160 = 84;
      }

      else
      {
        v160 = 70;
      }

      v257 = v159;
      v269 = v158;
      if ((qword_2A19267F6 & 0x8000000000) != 0)
      {
        v161 = 84;
      }

      else
      {
        v161 = 70;
      }

      if ((qword_2A19267F6 & 0x10000000000) != 0)
      {
        v162 = 84;
      }

      else
      {
        v162 = 70;
      }

      v245 = v161;
      if ((qword_2A19267F6 & 0x1000000000) != 0)
      {
        v163 = 84;
      }

      else
      {
        v163 = 70;
      }

      if ((qword_2A19267F6 & 0x4000000000) != 0)
      {
        v164 = 84;
      }

      else
      {
        v164 = 70;
      }

      v229 = v163;
      if ((qword_2A19267F6 & 0x2000000000) != 0)
      {
        v165 = 84;
      }

      else
      {
        v165 = 70;
      }

      if ((qword_2A19267F6 & 0x800000000) != 0)
      {
        v166 = 84;
      }

      else
      {
        v166 = 70;
      }

      v167 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GLO ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v157, "LSM", 73, "lsim13_05SetPltConfig", v166, v165, v164, v229, v162, v245, v160, v257, v269);
      LbsOsaTrace_WriteLog(0xCu, __str, v167, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v168 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 0x800000000000000) != 0)
      {
        v169 = 84;
      }

      else
      {
        v169 = 70;
      }

      if ((qword_2A19267F6 & 0x400000000000000) != 0)
      {
        v170 = 84;
      }

      else
      {
        v170 = 70;
      }

      if ((qword_2A19267F6 & 0x200000000000000) != 0)
      {
        v171 = 84;
      }

      else
      {
        v171 = 70;
      }

      v258 = v170;
      v270 = v169;
      if ((qword_2A19267F6 & 0x80000000000000) != 0)
      {
        v172 = 84;
      }

      else
      {
        v172 = 70;
      }

      if ((qword_2A19267F6 & 0x100000000000000) != 0)
      {
        v173 = 84;
      }

      else
      {
        v173 = 70;
      }

      v246 = v172;
      if ((qword_2A19267F6 & 0x10000000000000) != 0)
      {
        v174 = 84;
      }

      else
      {
        v174 = 70;
      }

      if ((qword_2A19267F6 & 0x40000000000000) != 0)
      {
        v175 = 84;
      }

      else
      {
        v175 = 70;
      }

      v230 = v174;
      if ((qword_2A19267F6 & 0x20000000000000) != 0)
      {
        v176 = 84;
      }

      else
      {
        v176 = 70;
      }

      if ((qword_2A19267F6 & 0x8000000000000) != 0)
      {
        v177 = 84;
      }

      else
      {
        v177 = 70;
      }

      v178 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,BDS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v168, "LSM", 73, "lsim13_05SetPltConfig", v177, v176, v175, v230, v173, v246, v171, v258, v270);
      LbsOsaTrace_WriteLog(0xCu, __str, v178, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v179 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A1926802 & 0x800) != 0)
      {
        v180 = 84;
      }

      else
      {
        v180 = 70;
      }

      if ((word_2A1926802 & 0x400) != 0)
      {
        v181 = 84;
      }

      else
      {
        v181 = 70;
      }

      if ((word_2A1926802 & 0x200) != 0)
      {
        v182 = 84;
      }

      else
      {
        v182 = 70;
      }

      v259 = v181;
      v271 = v180;
      if ((word_2A1926802 & 0x80) != 0)
      {
        v183 = 84;
      }

      else
      {
        v183 = 70;
      }

      if ((word_2A1926802 & 0x100) != 0)
      {
        v184 = 84;
      }

      else
      {
        v184 = 70;
      }

      v247 = v183;
      if ((word_2A1926802 & 0x10) != 0)
      {
        v185 = 84;
      }

      else
      {
        v185 = 70;
      }

      if ((word_2A1926802 & 0x40) != 0)
      {
        v186 = 84;
      }

      else
      {
        v186 = 70;
      }

      v231 = v185;
      if ((word_2A1926802 & 0x20) != 0)
      {
        v187 = 84;
      }

      else
      {
        v187 = 70;
      }

      if ((word_2A1926802 & 8) != 0)
      {
        v188 = 84;
      }

      else
      {
        v188 = 70;
      }

      v189 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GAL ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v179, "LSM", 73, "lsim13_05SetPltConfig", v188, v187, v186, v231, v184, v247, v182, v259, v271);
      LbsOsaTrace_WriteLog(0xCu, __str, v189, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v190 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A1926800 & 0x800) != 0)
      {
        v191 = 84;
      }

      else
      {
        v191 = 70;
      }

      if ((word_2A1926800 & 0x400) != 0)
      {
        v192 = 84;
      }

      else
      {
        v192 = 70;
      }

      if ((word_2A1926800 & 0x200) != 0)
      {
        v193 = 84;
      }

      else
      {
        v193 = 70;
      }

      v260 = v192;
      v272 = v191;
      if ((word_2A1926800 & 0x80) != 0)
      {
        v194 = 84;
      }

      else
      {
        v194 = 70;
      }

      if ((word_2A1926800 & 0x100) != 0)
      {
        v195 = 84;
      }

      else
      {
        v195 = 70;
      }

      v248 = v194;
      if ((word_2A1926800 & 0x10) != 0)
      {
        v196 = 84;
      }

      else
      {
        v196 = 70;
      }

      if ((word_2A1926800 & 0x40) != 0)
      {
        v197 = 84;
      }

      else
      {
        v197 = 70;
      }

      v232 = v196;
      if ((word_2A1926800 & 0x20) != 0)
      {
        v198 = 84;
      }

      else
      {
        v198 = 70;
      }

      if ((word_2A1926800 & 8) != 0)
      {
        v199 = 84;
      }

      else
      {
        v199 = 70;
      }

      v200 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,QZSS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v190, "LSM", 73, "lsim13_05SetPltConfig", v199, v198, v197, v232, v195, v248, v193, v260, v272);
      LbsOsaTrace_WriteLog(0xCu, __str, v200, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v201 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267FE & 0x800) != 0)
      {
        v202 = 84;
      }

      else
      {
        v202 = 70;
      }

      if ((word_2A19267FE & 0x400) != 0)
      {
        v203 = 84;
      }

      else
      {
        v203 = 70;
      }

      if ((word_2A19267FE & 0x200) != 0)
      {
        v204 = 84;
      }

      else
      {
        v204 = 70;
      }

      v261 = v203;
      v273 = v202;
      if ((word_2A19267FE & 0x80) != 0)
      {
        v205 = 84;
      }

      else
      {
        v205 = 70;
      }

      if ((word_2A19267FE & 0x100) != 0)
      {
        v206 = 84;
      }

      else
      {
        v206 = 70;
      }

      v249 = v205;
      if ((word_2A19267FE & 0x10) != 0)
      {
        v207 = 84;
      }

      else
      {
        v207 = 70;
      }

      if ((word_2A19267FE & 0x40) != 0)
      {
        v208 = 84;
      }

      else
      {
        v208 = 70;
      }

      v233 = v207;
      if ((word_2A19267FE & 0x20) != 0)
      {
        v209 = 84;
      }

      else
      {
        v209 = 70;
      }

      if ((word_2A19267FE & 8) != 0)
      {
        v210 = 84;
      }

      else
      {
        v210 = 70;
      }

      v211 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,SBAS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v201, "LSM", 73, "lsim13_05SetPltConfig", v210, v209, v208, v233, v206, v249, v204, v261, v273);
      LbsOsaTrace_WriteLog(0xCu, __str, v211, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v212 = mach_continuous_time();
      v213 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v212), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v213, 4, 1);
    }

    v214 = *(a1 + 24);
    if (v214)
    {
      free(v214);
    }

    *(a1 + 24) = 0;
  }

  lsim13_02SuplConfig();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v215 = mach_continuous_time();
    v216 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v215), "LSM", 73, "lsim13_01SetConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v216, 4, 1);
  }

  v217 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm25_15HandleReqRestoreNv(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RestoreReqMask,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm25_15HandleReqRestoreNv", a1);
    result = LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if ((a1 & 8) != 0 && (dword_2A19397C1 & 1) == 0)
  {
    BYTE2(dword_2A19397C1) = 0;
    LOBYTE(dword_2A19397C1) = 1;
    result = Gnm27_23RestoreFixedMe(&dword_2A19397C1, v3, v4, v5, v6, v7);
  }

  if ((a1 & 0x10) != 0 && (dword_2A19397C6 & 1) == 0)
  {
    HIWORD(dword_2A19397C6) = 0;
    LOBYTE(dword_2A19397C6) = 1;
    Gnm10_29SendFwActivity(1, 1);
    result = Gnm29_01RestoreVarMENv(0);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm25_18CheckRestoreStatus(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a1 <= 70)
  {
    if (a1 == 32)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Success\n");
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (a1 != 67)
    {
LABEL_19:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = a2;
        v14 = a1;
        v12 = 770;
        v5 = "%10u %s%c %s: #%04hx %s RespStatus,%u\n";
        v11 = v7;
        goto LABEL_21;
      }

LABEL_22:
      v6 = 0;
      goto LABEL_23;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v12 = a2;
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = "%10u %s%c %s: %s CS error\n";
LABEL_21:
    v8 = snprintf(__str, 0x40FuLL, v5, v11, "GNM", 87, "Gnm25_18CheckRestoreStatus", v12, v13, v14);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    goto LABEL_22;
  }

  if (a1 == 71)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v12 = a2;
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = "%10u %s%c %s: %s Gen failure\n";
    goto LABEL_21;
  }

  if (a1 == 78)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Not required\n");
      goto LABEL_17;
    }

LABEL_18:
    v6 = 1;
    goto LABEL_23;
  }

  if (a1 != 84)
  {
    goto LABEL_19;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    goto LABEL_18;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Not required, TCXO\n");
LABEL_17:
  v6 = 1;
  LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
LABEL_23:
  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t GLON_EphInt2Real(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  v2 = 900 * *(result + 13);
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 12);
  v4 = *(result + 32);
  v5 = *(result + 36);
  v6.f64[0] = *(result + 40);
  v7 = *(result + 52);
  *(a2 + 24) = *(result + 28) * 0.48828125;
  v6.f64[1] = v7;
  *(a2 + 32) = vmulq_f64(v6, xmmword_29975F200);
  *(a2 + 48) = v4 * 0.48828125;
  v8 = *(result + 48);
  v6.f64[0] = *(result + 44);
  v6.f64[1] = *(result + 53);
  *(a2 + 56) = vmulq_f64(v6, xmmword_29975F200);
  v6.f64[0] = v8;
  v9 = *(result + 54);
  *(a2 + 20) = v3;
  v6.f64[1] = v9;
  v10.f64[0] = *(result + 56);
  *(a2 + 72) = v5 * 0.48828125;
  v10.f64[1] = *(result + 60);
  *(a2 + 80) = vmulq_f64(v6, xmmword_29975F200);
  *(a2 + 96) = vmulq_f64(v10, xmmword_29975F210);
  *(a2 + 112) = vcvtd_n_f64_s32(*(result + 55), 0x1EuLL);
  *(a2 + 120) = *(result + 18);
  *(a2 + 124) = *(result + 22);
  *(a2 + 126) = *(result + 16);
  v11 = *(result + 14);
  v12 = (v11 >> 7) & 0x1F;
  v13 = (v11 >> 1) & 0x3F;
  if (v11)
  {
    v14 = 30;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = v14 + 60 * v13 + 3600 * v12;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

double NK_Publish_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v8 = a2 + 24576;
  *a4 = *(a2 + 24584);
  *(a4 + 4) = *(a2 + 24588);
  if (*(a4 + 16) == 1)
  {
    v9 = *(a3 + 128) ^ 1;
  }

  else
  {
    if ((*(a3 + 128) & 1) != 0 || *(a3 + 140) < 2u || *(a3 + 152))
    {
      goto LABEL_7;
    }

    v9 = 1;
  }

  *(a4 + 16) = v9;
LABEL_7:
  *(a4 + 17) = *(a2 + 24597);
  *(a4 + 20) = *(a3 + 20);
  memcpy((a4 + 32), (a2 + 624), 0x150uLL);
  v10 = *(a4 + 360);
  if (v10 < 0.0)
  {
    do
    {
      v10 = v10 + 360.0;
    }

    while (v10 < 0.0);
    *(a4 + 360) = v10;
  }

  if (v10 > 360.0)
  {
    do
    {
      v10 = v10 + -360.0;
    }

    while (v10 > 360.0);
    *(a4 + 360) = v10;
  }

  v34 = (a3 + 0x2000);
  v11 = *(a4 + 336);
  *(a4 + 920) = *(a4 + 320);
  *(a4 + 936) = v11;
  *(a4 + 952) = *(a4 + 352);
  *(a4 + 960) = v10;
  *(a4 + 19) = *(a2 + 960);
  *(a4 + 12) = *(a2 + 964);
  memcpy((a4 + 368), (a2 + 24776), 0x174uLL);
  v12 = *(a2 + 24600);
  v13 = *(a2 + 24616);
  v14 = *(a2 + 24632);
  *(a4 + 792) = *(a2 + 24648);
  *(a4 + 760) = v13;
  *(a4 + 776) = v14;
  *(a4 + 744) = v12;
  v15 = *(a2 + 24688);
  v16 = *(a2 + 24672);
  v17 = *(a2 + 24704);
  *(a4 + 800) = *(a2 + 24656);
  *(a4 + 816) = v16;
  *(a4 + 832) = v15;
  *(a4 + 848) = v17;
  v18 = *(a2 + 24768);
  v19 = *(a2 + 24752);
  v20 = *(a2 + 24736);
  *(a4 + 864) = *(a2 + 24720);
  *(a4 + 880) = v20;
  *(a4 + 896) = v19;
  *(a4 + 912) = v18;
  *(a4 + 880) = fmin(fmax(*(a4 + 880), 1.0), 180.0);
  *(a4 + 856) = fmax(*(a4 + 856), 0.01);
  v21 = a3 + 7552;
  bzero((a4 + 968), 0x270uLL);
  v22 = 0;
  v23 = 1036;
  v24 = 1160;
  do
  {
    v25 = a1 + 4 * v22;
    if (*(v25 + 412) == 3)
    {
      goto LABEL_28;
    }

    v26 = (a4 + v24);
    *(v26 - 48) = *(v25 + 76);
    *v26 = *(v25 + 412);
    v27 = a4 + v22;
    *(v27 + 1352) = *(a1 + v22 + 604);
    *(v27 + 1544) = *(a2 + v22 + 1176);
    if (*(v21 + 4 * v22) == 1)
    {
      if (*(a2 + v22 + 2960) == 1)
      {
        v28 = *(a2 + 3056 + 4 * v22);
        if (v28 < 0x1E)
        {
          v29 = 1u >> v28;
LABEL_21:
          *(a4 + v22 + 1496) = v29;
          goto LABEL_22;
        }

        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      }

      LOBYTE(v29) = 0;
      goto LABEL_21;
    }

LABEL_22:
    v30 = *(v25 + 412);
    if (v30 < 15)
    {
      if (v30 < 13)
      {
        v31 = *(a1 + v23 - 192);
      }

      else
      {
        v31 = *(a1 + v23 - 96);
      }
    }

    else
    {
      v31 = *(a1 + v23);
    }

    *(a4 + 2 * v22 + 1400) = v31;
LABEL_28:
    ++v22;
    v23 += 2;
    v24 += 4;
  }

  while (v22 != 48);
  if (!*(v8 + 12))
  {
    *(v8 + 201) = 0;
    *(v8 + 207) = 0;
    *(v8 + 212) = 0;
    *(v8 + 217) = 0;
    *(a4 + 369) = 0;
    *(a4 + 375) = 0;
    *(a4 + 380) = 0;
    *(a4 + 385) = 0;
    *(a4 + 1496) = 0u;
    *(a4 + 1512) = 0u;
    *(a4 + 1528) = 0u;
  }

  memcpy((a4 + 1592), (a2 + 7616), 0x180uLL);
  *(a4 + 1976) = *(a2 + 2824);
  *(a4 + 1984) = *(a2 + 2832);
  *(a4 + 1992) = v34[1395];
  *(a4 + 2000) = *(a2 + 8400);
  *(a4 + 2016) = v34[1396];
  *(a4 + 2024) = *(a2 + 13976);
  result = *(a2 + 13984);
  *(a4 + 2032) = result;
  *(a4 + 2040) = v34[1397];
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

double SV_Data_Decode_Init()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v15 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x35A4uLL);
  v1 = &__src[5604];
  v2 = 392;
  do
  {
    *(v1 - 3) = 0;
    *(v1 - 8) = 0;
    *(v1 - 3) = 0;
    *(v1 - 8) = 0;
    *(v1 - 1) = 0;
    *v1 = 0;
    v1 += 28;
    v2 -= 28;
  }

  while (v2);
  memset(&__src[5972], 0, 427);
  memset(&__src[6400], 0, 93);
  memset(&__src[6496], 0, 86);
  bzero(&__src[6584], 0x193DuLL);
  bzero(&__src[13046], 0x2ACuLL);
  bzero(&__src[13732], 0x10DCuLL);
  memcpy(v0, __src, 0x4680uLL);
  memset_pattern16(v0, &unk_29975F240, 0xC0uLL);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(v0 + 192) = v3;
  *(v0 + 208) = v3;
  memset_pattern16((v0 + 224), &unk_29975F240, 0x40uLL);
  *(v0 + 17984) = 0u;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(v0 + 18016) = v4;
  *(v0 + 18000) = 0u;
  *(v0 + 18032) = v4;
  memset_pattern16((v0 + 3584), &unk_29975F240, 0x3CuLL);
  *(v0 + 3652) = -1;
  *(v0 + 3644) = -1;
  memset_pattern16((v0 + 3654), &unk_29975F240, 0x14uLL);
  *(v0 + 13041) = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(v0 + 13009) = v5;
  *(v0 + 13025) = v5;
  memset_pattern16((v0 + 13046), &unk_29975F220, 0x48uLL);
  memset_pattern16((v0 + 13118), &unk_29975F250, 0x120uLL);
  memset_pattern16((v0 + 13406), &unk_29975F250, 0x48uLL);
  memset_pattern16((v0 + 13478), &unk_29975F250, 0x48uLL);
  v6 = xmmword_299729020;
  v7 = xmmword_299728F20;
  v8 = (v0 + 17911);
  v9 = vdupq_n_s64(4uLL);
  v10 = 36;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), v7)), *v6.i8).u8[0])
    {
      *(v8 - 3) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v7)), *&v6).i8[2])
    {
      *(v8 - 2) = 0;
    }

    if (vuzp1_s16(*&v6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v6))).i32[1])
    {
      *(v8 - 1) = 0;
      *v8 = 0;
    }

    v6 = vaddq_s64(v6, v9);
    v7 = vaddq_s64(v7, v9);
    v8 += 4;
    v10 -= 4;
  }

  while (v10);
  *(v0 + 17980) = -1;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *(v0 + 6456) = v11;
  *(v0 + 6472) = v11;
  *(v0 + 6485) = -1;
  memset_pattern16((v0 + 6508), &unk_29975F230, 0x4AuLL);
  result = 0.0;
  *(v0 + 6496) = 0;
  *(v0 + 6504) = 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void MAPGen_inpMAP2mST(uint64_t a1, uint64_t a2, double *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  *(a3 + 2) = 10;
  TCU_ConvertOStimeToTTICKtime(a2, *a1, a3);
  memset(v19, 0, sizeof(v19));
  VecSet_3x1(3, v19, *(a1 + 16) * 0.0174532925, *(a1 + 8) * 0.0174532925, *(a1 + 24));
  memset(v18, 0, sizeof(v18));
  CreateC_e_n(v19, v18);
  memset(v17, 0, sizeof(v17));
  v6 = __sincos_stret(*(a1 + 40) * 0.0174532925);
  v7 = 0.0;
  VecSet_3x1(3, v17, v6.__cosval, v6.__sinval, 0.0);
  Mult_Mat_scalar(*(a1 + 48), 3, v17, 3, v17);
  memset(v16, 0, sizeof(v16));
  Mult_MatT_Mat(9, v18, 3, v17, 3, v16);
  memset(v15, 0, sizeof(v15));
  VecSet_3x1(3, v15, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  InsUtil_Geo2ECEF_Iterative(v15, (a3 + 16));
  Add_Mat(3, a3 + 32, 3, v16, 3, a3 + 40);
  Set_Mat_Const(4, 1u, 6, a3 + 4, 0.0);
  Set_Mat_Size(6, a3 + 18, 4, 1);
  *(a3 + 11) = xmmword_29975F270;
  a3[13] = 0.1;
  a3[10] = *(a1 + 56);
  v13 = 0u;
  v14 = 0u;
  InsUtil_ECEF2Geo_Iterative(a3 + 20, &v13, 6378137.0);
  v8 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v9 = mach_continuous_time();
    v10 = 0.0;
    if (g_TCU)
    {
      v7 = *(g_TCU + 8);
      v10 = *a3 - *(g_TCU + 64);
      v11 = 604800.0;
      if (v10 >= 604800.0)
      {
        v11 = -604800.0;
      }

      else if (v10 >= 0.0)
      {
        goto LABEL_8;
      }

      v10 = v10 + v11;
    }

LABEL_8:
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: MAP = {tow:%0.3f,LLH_start:[%0.6f %0.6f %0.1f],LLH_end:[%0.6f %0.6f %0.1f],LW:[%0.1f %0.1f]}", "MAPGen_inpMAP2mST", 129, (*&g_MacClockTicksToMsRelation * v9), v7, v10, *(a1 + 8), *(a1 + 16), *(a1 + 24), *&v14, *(&v13 + 1), *(&v14 + 1), *(a1 + 48), *(a1 + 56));
    v8 = g_FPE_LogSeverity;
  }

  if ((v8 & 0x200) != 0)
  {
    LC_LOG_NMEA_GENERIC("%s,MAP,%.3f,%.1f,%.1f,%.3f", "$PFPEX", *a3, *(a1 + 48), *(a1 + 56), *(a2 + 40) - *a3);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t MAPGen_run(double *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 87784);
  v9 = *(a4 + 128048);
  v34 = 0;
  memset(__dst, 0, sizeof(__dst));
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v10 = *(a5 + 40);
  result = Cyc_Record_Count_Free(v9, 1u);
  if (!result)
  {
    goto LABEL_21;
  }

  while (1)
  {
    result = Cyc_Record_IsEmpty(v8, a2);
    if (result)
    {
      break;
    }

    Cyc_Record_Read(v8, a2, __dst);
    MAPGen_inpMAP2mST(__dst, a5, &v19);
    v12 = *&v19;
    v13 = *a1;
    if (*&v19 < *a1)
    {
      if (*&v19 < v13 + -6.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v14 = mach_continuous_time();
          if (g_TCU)
          {
            v15 = *(g_TCU + 8);
          }

          else
          {
            v15 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MAP: ignoring measurement in the past! meas.time=%0.3f, prevTime=%0.3f (diff=%0.3f)", "MAPGen_run", 192, (*&g_MacClockTicksToMsRelation * v14), v15, *&v19, *a1, *a1 - *&v19);
        }

        goto LABEL_17;
      }

      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v16 = mach_continuous_time();
        if (g_TCU)
        {
          v17 = *(g_TCU + 8);
        }

        else
        {
          v17 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MAP: using measurement %0.3f sec in the past. meas.time=%0.3f, prevTime=%0.3f", "MAPGen_run", 201, (*&g_MacClockTicksToMsRelation * v16), v17, *a1 - *&v19, *&v19, *a1);
        v13 = *a1;
      }

      v12 = v13 + 0.001;
      *&v19 = v13 + 0.001;
    }

    *a1 = v12;
    Cyc_Record_Write(v9, &v19);
LABEL_17:
    result = Cyc_Record_Count_Free(v9, 1u);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  DWORD2(v19) = 12;
  *&v19 = v10 + 0.001;
  *&v20 = 0x4000000000000000;
  if (v10 + 0.001 > *a1)
  {
    *a1 = v10 + 0.001;
    result = Cyc_Record_Write(v9, &v19);
  }

LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *lpp_session_detect(unsigned __int8 *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (**(GetStaticLppPrivate() + 1))
  {
    for (result = **(GetStaticLppPrivate() + 1); result; result = *result)
    {
      if (*(result + 16) == *a1 && *(result + 5) == *(a1 + 1))
      {
        break;
      }
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

_LPP_SESSION *lpp_session_create(void *a1, char a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x58uLL, MEMORY[0x29EDC9418]);
  if (v4)
  {
    v5 = v4;
    _LPP_SESSION::_LPP_SESSION(v4);
  }

  else
  {
    if (*(GetStaticLppPrivate() + 1))
    {
      v6 = *(*(GetStaticLppPrivate() + 1) + 8);
    }

    else
    {
      v6 = 0;
    }

    lpp_session_delete(v6);
    v7 = operator new(0x58uLL, MEMORY[0x29EDC9418]);
    v5 = v7;
    if (!v7)
    {
      v13 = 2;
      v14 = 12288;
      v15 = 105;
      goto LABEL_18;
    }

    _LPP_SESSION::_LPP_SESSION(v7);
  }

  memset_s(v5, 0x58uLL, 0, 0x58uLL);
  *(v5 + 2) = *a1;
  *(v5 + 24) = 0;
  *(v5 + 68) = xmmword_29975F280;
  *(v5 + 84) = 0;
  v8 = operator new(0x10uLL, MEMORY[0x29EDC9418]);
  if (!v8)
  {
    *(v5 + 5) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 69, "lpp_session_create", "lpp_session_create");
      LbsOsaTrace_WriteLog(0xEu, __str, v19, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("lpp_session_create", "lpp_session.cpp", 123, "false && Memory allocation failure");
  }

  *v8 = 0;
  v8[1] = 0;
  *(v5 + 5) = v8;
  if (*(v5 + 16) != 1)
  {
    v13 = 1;
    v14 = 0x4000;
    v15 = 138;
LABEL_18:
    ms_report_exception(v13, v14, v15, "lpp_session_create");
    goto LABEL_19;
  }

  *(v5 + 64) = a2;
  *(v5 + 6) = lpp_session_up_process_downlink_message;
  *(v5 + 7) = lpp_session_up_process_uplink_pdu;
  v9 = *(GetStaticLppPrivate() + 1);
  if (v9)
  {
    v10 = *v9;
    *v9 = v5;
    *v5 = v10;
    *(v5 + 1) = 0;
    if (v10)
    {
      v9 = v10;
    }

    v9[1] = v5;
  }

  lpp_state_control(0);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionCreate,type,%u,sessionId,%u,Initiater,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 68, "lpp_session_create", *(v5 + 16), *(v5 + 5), 0);
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
  }

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

void lpp_session_delete(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionDelete,type,%u,sessionId,%u,Initiater,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "lpp_session_delete", *(a1 + 16), *(a1 + 20), 0);
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
    }

    v4 = **(a1 + 40);
    if (v4)
    {
      do
      {
        v5 = *v4;
        lpp_transaction_abort(v4);
        v4 = v5;
      }

      while (v5);
    }

    lpp_session_destroy(a1);
    lpp_state_control(1u);
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];

    ms_report_exception(2, 16426, 194, "lpp_session_delete");
  }
}

void lpp_session_up_process_downlink_message(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) == 1)
  {
    if (!*(a2 + 8) || !*a2)
    {
      goto LABEL_21;
    }

    v15 = 0;
    v16 = 0;
    __s[1] = 0;
    v13 = 0;
    __s[0] = 0;
    v14 = 0;
    memset_s(__s, 0x30uLL, 0, 0x30uLL);
    v13 = 0;
    v15 = *(a2 + 8);
    v14 = *a2;
    v16 = 0;
    v13 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
    v4 = decode_asn1_message(0, 0, v15, v14, v13, 0);
    v5 = v13;
    *(v13 + 16) = 0;
    v5[32] = 0;
    if (!v5[1392])
    {
      v5[8] = 0;
    }

    if (v4 <= 0)
    {
      if (v5[8] != 1)
      {
        goto LABEL_19;
      }

      v10 = lpp_transaction_process_downlink_message(a1, __s);
      v5 = v13;
      if (v10 == 5)
      {
        goto LABEL_19;
      }

      v6 = v10;
      if (!v13)
      {
        ms_report_exception(2, 16426, 436, "lpp_session_error_detected");
LABEL_13:
        v5 = v13;
LABEL_19:
        GenericFreeSort(v5, &ySDL_T_LASN_LPP_Message);
        if (v13)
        {
          free(v13);
        }

LABEL_21:
        v11 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    else
    {
      v6 = 2;
    }

    if (v5[1392] != 1 || (*(v5 + 12) & 0xFFFFFFFE) != 6)
    {
      v20 = 0;
      v21 = 0;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      v19 = 0;
      memset_s(v17, 0x30uLL, 0, 0x30uLL);
      v7 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
      v18 = v7;
      v8 = v5[8];
      v7[8] = v8;
      if (v8 == 1)
      {
        *v7 = *v5;
        v7 = v18;
      }

      v7[32] = 0;
      v7[9] = 0;
      v7[1392] = 1;
      *(v7 + 10) = 0;
      *(v7 + 12) = 7;
      *(v7 + 14) = 0;
      v7[68] = 1;
      *(v7 + 16) = v6;
      (*(a1 + 56))(a1, v17);
    }

    goto LABEL_13;
  }

  v9 = *MEMORY[0x29EDCA608];

  ms_report_exception(2, 16385, 295, "lpp_session_up_process_downlink_message");
}

void lpp_session_up_process_uplink_pdu(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = 16426;
    v7 = 368;
LABEL_17:

    ms_report_exception(2, v6, v7, "lpp_session_up_process_uplink_pdu");
    return;
  }

  if (!a2)
  {
    v10 = *MEMORY[0x29EDCA608];
    v6 = 16442;
    v7 = 374;
    goto LABEL_17;
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v3 = *(a2 + 16);
  v12 = v3;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  v4 = *(v3 + 48) == 5 && *(v3 + 216) == 1 && *(v3 + 168) == 1 && *(v3 + 164) == 1;
  if (!encode_asn1_message(0, 0, &v14, 0, &v13, v3))
  {
    lpp_send_up_uplink_message(a1 + 16, 0, &v13, v4);
  }

  v8 = **(a1 + 40);
  v9 = v12;
  if (v8)
  {
    while (*(v8 + 16) != *v12 || *(v8 + 20) != *(v12 + 1))
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    if (*(v8 + 25) == 2)
    {
      lpp_transaction_delete(v8);
      v9 = v12;
    }
  }

LABEL_22:
  GenericFreeSort(v9, &ySDL_T_LASN_LPP_Message);
  if (v12)
  {
    free(v12);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void lpp_session_destroy(_LPP_SESSION *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 5);
  v3 = *v2;
  if (*v2)
  {
    do
    {
      v4 = *v3;
      if (v2)
      {
        v5 = v3[1];
        if (v5)
        {
          v6 = v3[1];
        }

        else
        {
          v6 = v2;
        }

        *v6 = v4;
        if (v4)
        {
          v7 = v4;
        }

        else
        {
          v7 = v2;
        }

        v7[1] = v5;
        *v3 = 0;
        v3[1] = 0;
      }

      MEMORY[0x29C29EB20](v3, 0x10A0C405697C842);
      v2 = *(a1 + 5);
      v3 = v4;
    }

    while (v4);
  }

  lpm_utils_linkedlist_destroy(v2);
  StaticLppPrivate = GetStaticLppPrivate();
  v9 = StaticLppPrivate[1];
  if (v9)
  {
    v11 = *a1;
    v10 = *(a1 + 1);
    if (v10)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      v12 = StaticLppPrivate[1];
    }

    *v12 = v11;
    if (v11)
    {
      v9 = v11;
    }

    *(v9 + 8) = v10;
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  memset_s(a1, 0x58uLL, 0, 0x58uLL);
  v13 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t lpp_session_exists(int a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (**(GetStaticLppPrivate() + 1))
  {
    for (result = **(GetStaticLppPrivate() + 1); result; result = *result)
    {
      if (*(result + 20) == a1)
      {
        break;
      }
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void _LPP_SESSION::_LPP_SESSION(_LPP_SESSION *this)
{
  v3 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = -1;
  *(this + 5) = -1;
  *(this + 24) = -1;
  *(this + 84) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  memset_s(this + 64, 1uLL, 0, 1uLL);
  memset_s(this + 68, 8uLL, 0, 8uLL);
  memset_s(this + 76, 8uLL, 0, 8uLL);
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t GN_GPS_Write_NMEA(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return LbsOsaTrace_PrintAsciiBuf(1u, 4u, 1, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Write_NMEA", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    }

    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t GN_GPS_Write_GNB_Debug(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Write_GNB_Debug", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    }

    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t GN_GPS_Write_Nav_Debug(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return LbsOsaTrace_PrintAsciiBuf(2u, 4u, 1, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Write_Nav_Debug", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    }

    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t GN_GPS_Write_Event_Log(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return LbsOsaTrace_PrintAsciiBuf(3u, 4u, 0, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Write_Event_Log", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    }

    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t GN_GPS_Write_LCD_Debug(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return LbsOsaTrace_PrintAsciiBuf(7u, 4u, 0, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Write_LCD_Debug", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    }

    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t GN_GPS_Write_GNB_Ctrl(unsigned int a1, char *a2)
{
  v20[255] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", v17);
LABEL_15:
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v4 = g_GncPStateInfo;
  v5 = g_GncPStateInfo == 6 || g_GncPStateInfo == 9;
  if (v5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GncState,%hhu,IgnoredBytes,%hu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GN_GPS_Write_GNB_Ctrl", v4, a1);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
      v12 = &a2[v11];
      v13 = a1 - v11;
      if ((a1 - v11) >= 0x7F5u)
      {
        v14 = 2036;
        while (v12[v14] != 10)
        {
          v5 = v14-- == 0;
          if (v5)
          {
            goto LABEL_26;
          }
        }

        if ((v14 & 0x8000) == 0)
        {
          v13 = v14 + 1;
          goto LABEL_27;
        }

LABEL_26:
        v13 = 2037;
      }

LABEL_27:
      *__str = v13;
      memcpy_s("GN_GPS_Write_GNB_Ctrl", 337, v20, 0x7F5u, v12, v13);
      if (!GncP03_03EncSendGMH(0x4Du, 0x6Du, 0x4Du, __str))
      {
        break;
      }

      v11 += *__str;
      if (a1 <= v11)
      {
        goto LABEL_17;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(v18, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(v18, 0x40FuLL, "%10u %s%c %s: #%04hx TotalLen,%u,Written,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GN_GPS_Write_GNB_Ctrl", 774, a1, v11);
      LbsOsaTrace_WriteLog(8u, v18, v16, 2, 1);
    }
  }

LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t GN_GPS_Hard_Reset_GNB(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_GncPStateInfo == 9)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FWReset not done\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GN_GPS_Hard_Reset_GNB");
      LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
    }

    v2 = *MEMORY[0x29EDCA608];
    return 0;
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return GncP08_03HandleHardReset();
  }
}

uint64_t asn1PE_Version(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 0, 255, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_8;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[1]);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[2]);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_Version(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_8;
  }

  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, a2 + 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, a2 + 2);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

void ASN1T_UlpMessage::~ASN1T_UlpMessage(ASN1T_UlpMessage *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (v2 > 4)
  {
    switch(v2)
    {
      case 5u:
        v6 = *(this + 1);
        if (v6)
        {
          ASN1T_Velocity::U::~U((v6 + 19));
          *__str = v6 + 15;
          std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
          *__str = v6 + 12;
          std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
          v7 = v6[8];
          if (v7)
          {
            v6[9] = v7;
            operator delete(v7);
          }

          v8 = v6[5];
          if (v8)
          {
            v6[6] = v8;
            operator delete(v8);
          }

          v9 = v6[2];
          if (v9)
          {
            v6[3] = v9;
            operator delete(v9);
          }

          v10 = 0x1030C40C2B5F699;
          goto LABEL_24;
        }

        break;
      case 6u:
        v6 = *(this + 1);
        if (v6)
        {
          v11 = v6[55];
          if (v11)
          {
            v6[56] = v11;
            operator delete(v11);
          }

          ASN1T_Velocity::U::~U((v6 + 9));
          v12 = v6[2];
          if (v12)
          {
            v6[3] = v12;
            operator delete(v12);
          }

          v10 = 0x1010C402AA3C6D1;
LABEL_24:
          v4 = v6;
LABEL_28:
          MEMORY[0x29C29EB20](v4, v10);
        }

        break;
      case 0xFFFFu:
        goto LABEL_30;
      default:
        goto LABEL_31;
    }

LABEL_29:
    *(this + 1) = 0;
    goto LABEL_30;
  }

  if (v2 == 1)
  {
    v13 = *(this + 1);
    if (!v13)
    {
      goto LABEL_29;
    }

    ASN1T_SUPLINIT::~ASN1T_SUPLINIT(v13);
    v5 = -1055686863;
    goto LABEL_27;
  }

  if (v2 == 4)
  {
    v3 = *(this + 1);
    if (!v3)
    {
      goto LABEL_29;
    }

    ASN1T_SUPLPOSINIT::~ASN1T_SUPLPOSINIT(v3);
    v5 = -1914762622;
LABEL_27:
    v10 = v5 | 0x1030C4000000000;
    goto LABEL_28;
  }

LABEL_31:
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "~ASN1T_UlpMessage", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
  }

LABEL_30:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_29964A61C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ASN1T_SUPLPOSINIT::~ASN1T_SUPLPOSINIT(ASN1T_SUPLPOSINIT *this)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = *(this + 145);
  if (v2)
  {
    *(this + 146) = v2;
    operator delete(v2);
  }

  ASN1T_Velocity::U::~U((this + 800));
  v9[0] = (this + 768);
  std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = (this + 744);
  std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v9);
  v3 = *(this + 89);
  if (v3)
  {
    *(this + 90) = v3;
    operator delete(v3);
  }

  v4 = *(this + 86);
  if (v4)
  {
    *(this + 87) = v4;
    operator delete(v4);
  }

  v5 = *(this + 83);
  if (v5)
  {
    *(this + 84) = v5;
    operator delete(v5);
  }

  ASN1T_Velocity::U::~U((this + 288));
  v6 = *(this + 29);
  if (v6)
  {
    *(this + 30) = v6;
    operator delete(v6);
  }

  ASN1T_CellInfo::~ASN1T_CellInfo((this + 80));
  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PE_UlpMessage(uint64_t a1, unsigned __int8 **a2)
{
  v12 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 7, *a2 - 1);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }

    v8 = *a2;
    switch(v8)
    {
      case 6:
        v9 = asn1PE_SUPLEND(a1, a2[1]);
        break;
      case 5:
        v9 = asn1PE_SUPLPOS(a1, a2[1]);
        break;
      case 4:
        v9 = asn1PE_SUPLPOSINIT(a1, a2[1]);
        break;
      default:
        v4 = 1;
        SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
LABEL_14:
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        LODWORD(v7) = v4;
        goto LABEL_15;
    }

    v4 = v9;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  LODWORD(v7) = *(a1 + 16);
LABEL_15:
  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_16:
  v10 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_UlpMessage(uint64_t a1, unsigned __int16 *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_8;
  }

  if (!BitFromBuffer)
  {
    v36 = 0;
    v6 = Asn1Coder::DecodeInteger(a1, 0, 7u, &v36);
    v5 = v6;
    if (v6)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 12);
      goto LABEL_7;
    }

    v11 = v36;
    v12 = v36 + 1;
    v13 = *a2;
    if (v36 + 1 == v13)
    {
LABEL_37:
      *a2 = v12;
      if (v11 != 5)
      {
        if (v11 != 4)
        {
          if (v11)
          {
            *(a1 + 16) = 4;
            SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
            v5 = 4;
LABEL_55:
            SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
            goto LABEL_8;
          }

          v26 = *(a2 + 1);
          if (v26)
          {
            goto LABEL_43;
          }

          v27 = operator new(0x238uLL, MEMORY[0x29EDC9418]);
          if (v27)
          {
            v26 = v27;
            ASN1T_SUPLINIT::ASN1T_SUPLINIT(v27);
            *(a2 + 1) = v28;
LABEL_43:
            v29 = asn1PD_SUPLINIT(a1, v26);
            goto LABEL_52;
          }

          *(a2 + 1) = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_61;
          }

LABEL_62:
          v5 = 2;
          *(a1 + 16) = 2;
          goto LABEL_8;
        }

        v30 = *(a2 + 1);
        if (v30)
        {
          goto LABEL_47;
        }

        v31 = operator new(0x200uLL, MEMORY[0x29EDC9418]);
        v30 = v31;
        if (v31)
        {
          *(v31 + 136) = 0u;
          *(v31 + 120) = 0u;
          *(v31 + 104) = 0u;
          *(v31 + 88) = 0u;
          *(v31 + 72) = 0u;
          *(v31 + 56) = 0u;
          *(v31 + 40) = 0u;
          *(v31 + 24) = 0u;
          *(v31 + 8) = 0u;
          v31[144] = -1;
          *(v31 + 168) = 0u;
          *(v31 + 184) = 0u;
          *(v31 + 200) = 0u;
          *(v31 + 216) = 0u;
          *(v31 + 232) = 0u;
          *(v31 + 248) = 0u;
          *(v31 + 152) = 0u;
          *(v31 + 63) = 0;
          *(v31 + 264) = 0u;
          *(v31 + 280) = 0u;
          *(v31 + 296) = 0u;
          *(v31 + 312) = 0u;
          *(v31 + 328) = 0u;
          *(v31 + 344) = 0u;
          *(v31 + 360) = 0u;
          *(v31 + 376) = 0u;
          *(v31 + 392) = 0u;
          *(v31 + 408) = 0u;
          *(v31 + 424) = 0u;
          *(v31 + 440) = 0u;
          *(v31 + 456) = 0u;
          *(v31 + 472) = 0u;
          *(v31 + 488) = 0u;
          *v31 = 0;
          *(a2 + 1) = v31;
LABEL_47:
          v29 = asn1PD_SUPLPOS(a1, v30);
          goto LABEL_52;
        }

        *(a2 + 1) = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          goto LABEL_62;
        }

LABEL_61:
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "asn1PD_UlpMessage", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
        goto LABEL_62;
      }

      v32 = *(a2 + 1);
      if (!v32)
      {
        v33 = operator new(0x1D0uLL, MEMORY[0x29EDC9418]);
        v32 = v33;
        if (!v33)
        {
          *(a2 + 1) = 0;
          if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        *v33 = 0;
        v33[2] = 0;
        *(v33 + 3) = 0;
        *(v33 + 4) = 0;
        *(v33 + 2) = 0;
        *(v33 + 44) = 0;
        *(v33 + 13) = 0;
        v33[56] = -1;
        *(v33 + 29) = 0;
        v33[60] = 0;
        *(v33 + 10) = -16777216;
        *(v33 + 8) = 255;
        v33[8] = 0;
        *(v33 + 55) = 0;
        *(v33 + 56) = 0;
        *(v33 + 57) = 0;
        *(v33 + 88) = 0u;
        *(v33 + 104) = 0u;
        *(v33 + 120) = 0u;
        *(v33 + 136) = 0u;
        *(v33 + 152) = 0u;
        *(v33 + 168) = 0u;
        *(v33 + 184) = 0u;
        *(v33 + 200) = 0u;
        *(v33 + 216) = 0u;
        *(v33 + 232) = 0u;
        *(v33 + 248) = 0u;
        *(v33 + 72) = 0u;
        *(v33 + 264) = 0u;
        *(v33 + 280) = 0u;
        *(v33 + 296) = 0u;
        *(v33 + 312) = 0u;
        *(v33 + 328) = 0u;
        *(v33 + 344) = 0u;
        *(v33 + 360) = 0u;
        *(v33 + 376) = 0u;
        *(v33 + 392) = 0u;
        *(v33 + 408) = 0u;
        *(v33 + 417) = 0u;
        *(a2 + 1) = v33;
      }

      v29 = asn1PD_SUPLEND(a1, v32);
LABEL_52:
      v5 = v29;
      if (!v29)
      {
        goto LABEL_8;
      }

      goto LABEL_55;
    }

    if (*a2 <= 4u)
    {
      if (v13 != 1)
      {
        if (v13 != 4)
        {
          goto LABEL_37;
        }

        v15 = a2 + 4;
        v14 = *(a2 + 1);
        if (!v14)
        {
          goto LABEL_36;
        }

        ASN1T_SUPLPOSINIT::~ASN1T_SUPLPOSINIT(v14);
        v17 = -1914762622;
        goto LABEL_25;
      }

      v15 = a2 + 4;
      v22 = *(a2 + 1);
      if (v22)
      {
        ASN1T_SUPLINIT::~ASN1T_SUPLINIT(v22);
        v17 = -1055686863;
LABEL_25:
        v21 = v17 | 0x1030C4000000000;
LABEL_35:
        MEMORY[0x29C29EB20](v16, v21);
      }

LABEL_36:
      *v15 = 0;
      goto LABEL_37;
    }

    if (v13 == 5)
    {
      v15 = a2 + 4;
      v18 = *(a2 + 1);
      if (!v18)
      {
        goto LABEL_36;
      }

      ASN1T_Velocity::U::~U((v18 + 19));
      *__str = v18 + 15;
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
      *__str = v18 + 12;
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
      v23 = v18[8];
      if (v23)
      {
        v18[9] = v23;
        operator delete(v23);
      }

      v24 = v18[5];
      if (v24)
      {
        v18[6] = v24;
        operator delete(v24);
      }

      v25 = v18[2];
      if (v25)
      {
        v18[3] = v25;
        operator delete(v25);
      }

      v21 = 0x1030C40C2B5F699;
    }

    else
    {
      if (v13 != 6)
      {
        goto LABEL_37;
      }

      v15 = a2 + 4;
      v18 = *(a2 + 1);
      if (!v18)
      {
        goto LABEL_36;
      }

      v19 = v18[55];
      if (v19)
      {
        v18[56] = v19;
        operator delete(v19);
      }

      ASN1T_Velocity::U::~U((v18 + 9));
      v20 = v18[2];
      if (v20)
      {
        v18[3] = v20;
        operator delete(v20);
      }

      v21 = 0x1010C402AA3C6D1;
    }

    v16 = v18;
    goto LABEL_35;
  }

  v6 = Asn1Coder::SkipChoiceExtension(a1);
  v5 = v6;
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(v6, v7, v8);
  }

LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t SuplMessage::Encode(SuplMessage *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *this;
  *(v2 + 16) = 0;
  *(v2 + 1) = 0;
  v3 = *(*this + 8);
  v4 = SuplMessage::asn1PE_UlpPdu(this);
  if (!v4)
  {
    v5 = *this;
    v6 = *(*this + 8);
    v7 = *(*this + 12);
    if (v7)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(*this + 8);
    }

    **(this + 1) = v8;
    *(v5 + 8) = v3;
    v4 = Asn1Coder::EncodeInteger(v5, 0, 0xFFFF, v8);
    v9 = *this;
    if (!v4)
    {
      *(v9 + 2) = v6;
      *(v9 + 3) = v7;
    }

    v10 = *v9;
    v11 = **(this + 1);
    v12 = *(v10 + 8) - *v10;
    if (v11 <= v12)
    {
      if (v11 < v12)
      {
        *(v10 + 8) = *v10 + v11;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(v10, v11 - v12);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t SuplMessage::asn1PE_UlpPdu(SuplMessage *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *this;
  v3 = 0x8000;
  do
  {
    Asn1Coder::AddBitToBuffer(v2, 0);
    v4 = v3 > 1;
    v3 >>= 1;
  }

  while (v4);
  v5 = *(v2 + 16);
  v6 = *this;
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    LODWORD(v6) = v5;
LABEL_11:
    SuplAsn1Logger::TraceError(v6, v7, v8);
    goto LABEL_12;
  }

  v5 = asn1PE_Version(v6, (*(this + 1) + 2));
  v6 = *this;
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    LODWORD(v6) = v5;
    goto LABEL_11;
  }

  v5 = asn1PE_SessionID(v6, (*(this + 1) + 24));
  v6 = *this;
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    LODWORD(v6) = v5;
    goto LABEL_11;
  }

  v6 = asn1PE_UlpMessage(v6, (*(this + 1) + 8));
  v5 = v6;
  if (v6)
  {
    v7 = *(*this + 8);
    v8 = *(*this + 12);
    goto LABEL_11;
  }

LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t SuplMessage::Decode(SuplMessage *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *this;
  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  v2 = SuplMessage::asn1PD_UlpPdu(this);
  if (v2 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "Decode", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t SuplMessage::asn1PD_UlpPdu(SuplMessage *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = Asn1Coder::DecodeInteger(*this, 0, 0xFFFFu, *(this + 1));
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    LODWORD(v3) = v2;
LABEL_15:
    SuplAsn1Logger::TraceError(v3, v4, v5);
    goto LABEL_16;
  }

  v2 = asn1PD_Version(v3, (*(this + 1) + 2));
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    LODWORD(v3) = v2;
    goto LABEL_15;
  }

  v2 = asn1PD_SessionID(v3, *(this + 1) + 24);
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    LODWORD(v3) = v2;
    goto LABEL_15;
  }

  v3 = asn1PD_UlpMessage(v3, (*(this + 1) + 8));
  if (v3)
  {
    v2 = v3;
    v4 = *(*this + 8);
    v5 = *(*this + 12);
    goto LABEL_15;
  }

  v4 = *(*this + 8);
  v5 = *(*this + 12);
  if (v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = *(*this + 8);
  }

  if (v6 != **(this + 1))
  {
    v2 = 6;
    LODWORD(v3) = 6;
    goto LABEL_15;
  }

  v2 = 0;
LABEL_16:
  v7 = *MEMORY[0x29EDCA608];
  return v2;
}

void ASN1T_SUPLINIT::~ASN1T_SUPLINIT(ASN1T_SUPLINIT *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 65);
  if (v2)
  {
    *(this + 66) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  v4 = *(this + 53);
  if (v4)
  {
    *(this + 54) = v4;
    operator delete(v4);
  }

  v5 = *(this + 50);
  if (v5)
  {
    *(this + 51) = v5;
    operator delete(v5);
  }

  v6 = *(this + 47);
  if (v6)
  {
    *(this + 48) = v6;
    operator delete(v6);
  }

  if (*(this + 35))
  {
    std::vector<ASN1T_SupportedWLANApData>::clear[abi:ne200100](this + 35);
    operator delete(*(this + 35));
  }

  v7 = *(this + 27);
  if (v7)
  {
    *(this + 28) = v7;
    operator delete(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    *(this + 25) = v8;
    operator delete(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    *(this + 19) = v9;
    operator delete(v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    *(this + 16) = v10;
    operator delete(v10);
  }

  v11 = *(this + 12);
  if (v11)
  {
    *(this + 13) = v11;
    operator delete(v11);
  }

  v12 = *(this + 6);
  if (v12)
  {
    *(this + 7) = v12;
    operator delete(v12);
  }

  v13 = *(this + 2);
  if (v13)
  {
    *(this + 3) = v13;
    operator delete(v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void std::vector<ASN1T_SupportedWLANApData>::clear[abi:ne200100](uint64_t *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
  v5 = *MEMORY[0x29EDCA608];
}

const char *CCH_initStates(int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  Set_Mat_Const(0xF, 0x24u, 0x400, a1, NAN);
  a1[2050] = 0;
  Set_Mat_Const(1, 0x17u, 0x20, a1 + 2052, NAN);
  Set_Vec_Values_By_Idx(0.0, 32, a1 + 2052, __const__Z16CCH_resetFBufferP12CCH_StateObj_ind);
  a1[2118] = 0;
  Set_Mat_Const(1, 0x24u, 0x33, a1 + 2120, 0.0);
  Set_Mat_Size(0x33, a1 + 2224, 0, 0);
  Set_Mat_Size(0x33, a1 + 2328, 0, 0);
  Set_Mat_Size(0x33, a1 + 2432, 0, 0);
  Set_Mat_Size(0x20, a1 + 2536, 0, 0);
  v2 = *MEMORY[0x29EDCA608];

  return Set_Mat_Size(0x400, a1 + 2602, 0, 0);
}

BOOL CCH_Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v6;
  v150 = *MEMORY[0x29EDCA608];
  memset(v80, 0, sizeof(v80));
  Append_To_Row_Vec(32, (v6 + 8208), 0x33, v80);
  Append_To_Row_Vec(32, v14, 0x33, v80);
  Copy_SubMat_to_Mat(1.0, 51, v80, v15[2118], 0, 1024, v15);
  v15[2118] = (v15[2118] + 1) % 0xFu;
  v16 = v15[2050];
  if ((v16 + 1) < 0x1E)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 30;
  }

  v15[2050] = v17;
  Set_Mat_Const(1, 0x17u, 0x20, v15 + 2052, NAN);
  Set_Vec_Values_By_Idx(0.0, 32, v15 + 2052, __const__Z16CCH_resetFBufferP12CCH_StateObj_ind);
  if (v15[2050] == 30)
  {
    v18 = v15[2118];
    if (*v15 != 15 || v15[1] != 36)
    {
      if (g_FPE_LogSeverity)
      {
        v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v20 = *(g_TCU + 8);
        }

        else
        {
          v20 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix size (%ux%u) is not asexpected (%ux%u)!", "CCH_prepFeatures", 381, v19, v20, *v15, v15[1], 15, 36);
      }

      g_FPE_AssertFlag = 1;
    }

    v68 = v10;
    v69 = v8;
    Set_Mat_Const(0xF, 0x33u, 0x400, v15 + 2602, 0.0);
    v22 = 0;
    v23 = 0;
    v24 = v15[1];
    v25 = v15 + 2604;
    v26 = v15[2603];
    do
    {
      v27 = v24 * (v18 % 0xF);
      v28 = v22;
      v29 = 36;
      do
      {
        *&v25[2 * v28++] = *&v15[2 * v27++ + 2];
        --v29;
      }

      while (v29);
      ++v23;
      v22 += v26;
      ++v18;
    }

    while (v23 != 15);
    v30 = 36;
    Copy_SubMat_from_Mat(1.0, 1024, v15 + 2602, 14, 0, 1, 0x24u, 51, v15 + 2120);
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v143 = 0u;
    v142 = 0u;
    v140 = xmmword_29975F290;
    v149 = 0;
    v141 = 26;
    Min_Mat_Scalar_Col_By_Idx(83.0, 1024, v15 + 2602, &v140);
    Max_Mat_Scalar_Col_By_Idx(-83.0, 1024, v15 + 2602, &v140);
    v79 = 0;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v70 = xmmword_29975F2A0;
    v71 = 21;
    Min_Mat_Scalar_Col_By_Idx(500.0, 1024, v15 + 2602, &v70);
    Max_Mat_Scalar_Col_By_Idx(-500.0, 1024, v15 + 2602, &v70);
    Min_Mat_Scalar_Col_By_Idx(200.0, 1024, v15 + 2602, dword_29975F3A0);
    Max_Mat_Scalar_Col_By_Idx(-200.0, 1024, v15 + 2602, dword_29975F3A0);
    v132 = 0u;
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v131 = 0x300000001;
    *(&v132 + 4) = 0x200000001;
    Min_Mat_Scalar_Col_By_Idx(100.0, 1024, v15 + 2602, &v131);
    Max_Mat_Scalar_Col_By_Idx(-100.0, 1024, v15 + 2602, &v131);
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v121 = xmmword_29975F2B0;
    v130 = 0;
    v122 = 8;
    Min_Mat_Scalar_Col_By_Idx(100.0, 1024, v15 + 2602, &v121);
    Max_Mat_Scalar_Col_By_Idx(-100.0, 1024, v15 + 2602, &v121);
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v111 = xmmword_29975F2C0;
    v120 = 0;
    v112 = 11;
    Min_Mat_Scalar_Col_By_Idx(500.0, 1024, v15 + 2602, &v111);
    Max_Mat_Scalar_Col_By_Idx(-500.0, 1024, v15 + 2602, &v111);
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v101 = xmmword_29975F2D0;
    v110 = 0;
    v102 = 35;
    Abs_Mat_Col_By_Idx(1024, v15 + 2602, &v101);
    Min_Mat_Scalar_Col_By_Idx(10.0, 1024, v15 + 2602, &v101);
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v91 = xmmword_29975F2E0;
    v100 = 0;
    v92 = 32;
    Abs_Mat_Col_By_Idx(1024, v15 + 2602, &v91);
    Min_Mat_Scalar_Col_By_Idx(10.0, 1024, v15 + 2602, &v91);
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v81 = xmmword_29975F2F0;
    v90 = 0;
    v82 = 29;
    Min_Mat_Scalar_Col_By_Idx(10.0, 1024, v15 + 2602, &v81);
    Max_Mat_Scalar_Col_By_Idx(-10.0, 1024, v15 + 2602, &v81);
    v31 = 0;
    v32 = v15[2602];
    do
    {
      if (v32)
      {
        v33 = 0;
        v34 = v15[2603];
        v35 = dword_29975F428[v31 + 2];
        v36 = v30;
        do
        {
          v37 = *&v25[2 * v35];
          *&v25[2 * v36] = 0;
          ++v33;
          v36 += v34;
          v35 += v34;
        }

        while (v32 != v33);
      }

      ++v31;
      ++v30;
    }

    while (v31 != 15);
    if (v68 && (g_FPE_LogSeverity & 8) != 0)
    {
      v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v39 = g_TCU ? *(g_TCU + 8) : 0.0;
      v40 = 14 * v15[2603];
      v41 = *&v25[2 * (v40 | 1)];
      v42 = *&v25[2 * v40 + 8];
      v43 = *&v25[2 * v40 + 12];
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH In 1: VI %5.2f %5.2f %5.2f LS %2d %6.2f %6.2f ExP %7.3f %7.3f %7.3f %7.2f %7.2f %7.2f GNSS %2d %2d %6.3f %6.3f %6.3f %6.3f %2d", "CCH_Run", 541, v38, v39, *&v25[2 * v40], v41, *&v25[2 * v40 + 4], *&v25[2 * v40 + 6], v42, *&v25[2 * v40 + 10], v43, *&v25[2 * v40 + 14], *&v25[2 * v40 + 16], *&v25[2 * v40 + 18], *&v25[2 * v40 + 20], *&v25[2 * v40 + 22], *&v25[2 * v40 + 24], *&v25[2 * v40 + 26], *&v25[2 * v40 + 28], *&v25[2 * v40 + 30], *&v25[2 * v40 + 32], *&v25[2 * v40 + 34], *&v25[2 * v40 + 36]);
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v44 = mach_continuous_time();
        v45 = g_TCU ? *(g_TCU + 8) : 0.0;
        v46 = 14 * v15[2603];
        v47 = *&v25[2 * (v46 + 20)];
        v48 = *&v25[2 * (v46 + 24)];
        v49 = *&v25[2 * (v46 + 26)];
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH In 2: LS %7.2f %7.2f %7.2f FIV %1d %1d Vel %6.2f %6.2f %6.2f Vi %7.4f %7.4f %7.4f BA %7.5f %7.5f %7.5f BG %7.5f %7.5f %7.5f", "CCH_Run", 560, (*&g_MacClockTicksToMsRelation * v44), v45, *&v25[2 * (v46 + 19)], v47, *&v25[2 * (v46 + 21)], *&v25[2 * (v46 + 22)], *&v25[2 * (v46 + 23)], v48, *&v25[2 * (v46 + 25)], v49, *&v25[2 * (v46 + 27)], *&v25[2 * (v46 + 28)], *&v25[2 * (v46 + 29)], *&v25[2 * (v46 + 30)], *&v25[2 * (v46 + 31)], *&v25[2 * (v46 + 32)], *&v25[2 * (v46 + 33)], *&v25[2 * (v46 + 34)], *&v25[2 * (v46 + 35)]);
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v50 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v51 = *(g_TCU + 8);
          }

          else
          {
            v51 = 0.0;
          }

          v52 = 14 * v15[2603];
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH In 3: VI %1d %1d %1d LS %1d %1d %1d ExP %1d %1d %1d %1d %1d %1d LS %1d %1d %1d", "CCH_Run", 577, v50, v51, *&v25[2 * (v52 + 36)], *&v25[2 * (v52 + 37)], *&v25[2 * (v52 + 38)], *&v25[2 * (v52 + 39)], *&v25[2 * (v52 + 40)], *&v25[2 * (v52 + 41)], *&v25[2 * (v52 + 42)], *&v25[2 * (v52 + 43)], *&v25[2 * (v52 + 44)], *&v25[2 * (v52 + 45)], *&v25[2 * (v52 + 46)], *&v25[2 * (v52 + 47)], *&v25[2 * (v52 + 48)], *&v25[2 * (v52 + 49)], *&v25[2 * (v52 + 50)]);
        }
      }
    }

    Sub_Mat(1024, v15 + 2602, 1024, (*(v15 + 2326) + 119688), 0x400, v15 + 2602);
    ElMult_Mat_Mat(1024, v15 + 2602, 1024, (*(v15 + 2326) + 127888), 0x400, v15 + 2602);
    bzero(&v70, 0x2008uLL);
    Set_Mat_Const(1, 1u, 0x400, &v70, 1.0);
    v53 = 0;
    v54 = &dword_29975F4B8;
    do
    {
      v55 = 0;
      v56 = *(&unk_29975F4B0 + 34 * v53 + 1);
      do
      {
        bzero(&v140, 0x2008uLL);
        v57 = 1;
        Set_Mat_Size(0x400, &v140, 5 * v56 + 1, 1);
        v58 = 0;
        *(&v140 + 1) = 0x3FF0000000000000;
        do
        {
          if (v56)
          {
            v59 = v15[2603] * dword_29975F978[34 * v55 + 2 + v58];
            v60 = v54;
            v61 = v57;
            v62 = v56;
            do
            {
              v63 = *v60++;
              *(&v140 + ++v61) = *&v25[2 * (v63 + v59)];
              --v62;
            }

            while (v62);
          }

          ++v58;
          v57 += v56;
        }

        while (v58 != 5);
        Mult_Mat_Mat(1024, *(v15 + 2326) + 24600 * v53 + 8200 * v55 + 144288, 1024, &v140, 1024, &v140);
        Append_To_Col_Vec(1024, &v140, 0x400, &v70);
        ++v55;
      }

      while (v55 != 3);
      ++v53;
      v54 += 34;
    }

    while (v53 != 9);
    v64 = 0.0;
    Max_Mat_Scalar(0.0, 1024, &v70, 0x400, &v70);
    Mult_Mat_Mat(11300, *(v15 + 2326), 1024, &v70, 51, (v15 + 2224));
    Max_Mat_Scalar(0.0, 51, v15 + 2224, 0x33, v15 + 2224);
    Append_On_Left_Vec(1.0, 51, v15 + 2224, 0x33, (v15 + 2328));
    Mult_Mat_Mat(2601, *(v15 + 2326) + 90408, 51, (v15 + 2328), 51, (v15 + 2328));
    Max_Mat_Scalar(0.0, 51, v15 + 2328, 0x33, v15 + 2328);
    Append_On_Left_Vec(1.0, 51, v15 + 2328, 0x33, (v15 + 2432));
    Mult_Mat_Mat(1024, *(v15 + 2326) + 111224, 51, (v15 + 2432), 51, (v15 + 2432));
    Max_Mat_Scalar(0.0, 51, v15 + 2432, 0x33, v15 + 2432);
    Append_On_Left_Vec(1.0, 51, v15 + 2432, 0x20, (v15 + 2536));
    Mult_Mat_Mat(32, *(v15 + 2326) + 119424, 32, (v15 + 2536), 32, (v15 + 2536));
    v65 = *(v15 + 1269);
    if (v65 >= -23.0)
    {
      v64 = 1.0;
      if (v65 <= 23.0)
      {
        v64 = 1.0 / (exp(-v65) + 1.0);
      }
    }

    *v69 = v64;
    v66 = 0.7;
    if (v12)
    {
      v66 = 0.8;
    }

    result = v64 <= v66;
  }

  else
  {
    *v8 = 0.0;
    result = 1;
  }

  v67 = *MEMORY[0x29EDCA608];
  return result;
}

void CCH_insertMeas(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v44 = *MEMORY[0x29EDCA608];
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v34 = xmmword_29975F2B0;
  v43 = 0;
  v35 = 8;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v24 = xmmword_29975F2C0;
  v33 = 0;
  v25 = 11;
  v16 = 0u;
  v17 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = 0x300000001;
  *(&v16 + 4) = 0x200000001;
  if (a2 > 5)
  {
    if ((a2 - 10) < 2 || a2 == 6)
    {
      goto LABEL_23;
    }

    if (a2 == 9)
    {
      Set_Mat_Cols_From_Mat_By_Idx(6, a4, &v34, 32, (a1 + 8208));
      v9 = &v24;
      v10 = (a1 + 8208);
      v11 = a6;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      *(a1 + 8368) = *(a6 + 1);
      *(a1 + 8376) = *(a6 + 2);
      *(a1 + 8384) = *(a6 + 3);
      *(a1 + 8248) = *(a6 + 4);
      *(a1 + 8256) = *(a6 + 5);
      *(a1 + 8240) = *(a3 + 195);
      goto LABEL_23;
    }

    if (a2 == 5)
    {
      v9 = &v15;
      v10 = (a1 + 8208);
      v11 = a4;
LABEL_10:
      Set_Mat_Cols_From_Mat_By_Idx(6, v11, v9, 32, v10);
      goto LABEL_23;
    }

LABEL_17:
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Meas %d not supported!", "CCH_insertMeas", 714, v12, v13, a2);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_23;
  }

  if (*(a5 + 8) == 1.0)
  {
    *(a1 + 8312) = *(a1 + 8312) + 1.0;
  }

  if (*(a5 + 16) == 1.0)
  {
    *(a1 + 8320) = *(a1 + 8320) + 1.0;
  }

  *(a1 + 8328) = *(a4 + 8) + *(a1 + 8328);
  *(a1 + 8336) = *(a4 + 16) + *(a1 + 8336);
  *(a1 + 8344) = *(a1 + 8344) + *(a4 + 8) * *(a4 + 8);
  *(a1 + 8352) = *(a1 + 8352) + *(a4 + 16) * *(a4 + 16);
  *(a1 + 8360) = *(a1 + 8360) + 1.0;
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
}

const char *CCH_logLastFeatures(const char *result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(result + 2050) == 30 && (g_FPE_LogSeverity & 0x200) != 0)
  {
    v1 = *(result + 1061);
    v2 = *(result + 1063);
    v3 = *(result + 1067);
    v4 = *(result + 1069);
    result = LC_LOG_NMEA_GENERIC("%s,CCH_IN,%.1f,%.2f,%.2f,%.2f,%.1f,%.2f,%.2f,%.2f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.2f,%.2f,%.2f,%.2f", "$PFPEX", *(result + 1083), v1, *(result + 1062), v2, *(result + 1084), v3, *(result + 1068), v4, *(result + 1070), *(result + 1071), *(result + 1072), *(result + 1080), *(result + 1081), *(result + 1082), *(result + 1079), *(result + 1073), *(result + 1074), *(result + 1075), sqrt(*(result + 1077)), *(result + 1076), sqrt(*(result + 1078)));
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_SS_Order(uint64_t result)
{
  v1 = 0;
  v6 = *MEMORY[0x29EDCA608];
  *(result + 176) = 0;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  do
  {
    *(result + v1) = PP_GPS_SS_Order_Table[v1];
    ++v1;
  }

  while (v1 != 32);
  for (i = 0; i != 36; ++i)
  {
    if ((i + 56) <= 0xB1)
    {
      *(result + 56 + i) = PP_GAL_SS_Order_Table[i] + 56;
    }
  }

  for (j = 0; j != 37; ++j)
  {
    if ((j + 92) <= 0xB1)
    {
      *(result + 92 + j) = PP_BDS_SS_Order_Table[j] + 92;
    }
  }

  for (k = 129; k != 139; ++k)
  {
    if (k <= 0xB1)
    {
      *(result + k) = k + 1;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Limited_Reset(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  v80 = *MEMORY[0x29EDCA608];
  v7 = a2 + 22848;
  *(a1 + 168) = 0;
  if ((*(a1 + 128) & 1) == 0)
  {
    if ((*(a2 + 960) & 1) == 0 && *(a2 + 24778) <= 2u && (!*(a1 + 11048) || *(a1 + 11032) >= 0x1Fu))
    {
      Comp_ErrorEllipse(*(a2 + 24264), *(a2 + 24272), *(a2 + 24400), &v72, &v73, &v74);
      v10 = v72 * v72;
      v72 = v72 * v72;
      v11 = *(a2 + 24224);
      v12 = *(a2 + 24232);
      if (v11 < v12)
      {
        v12 = *(a2 + 24224);
      }

      if (v12 > *(a2 + 24240))
      {
        v12 = *(a2 + 24240);
      }

      if (v10 + v12 >= 1600000000.0)
      {
        v13 = *(v7 + 72);
        if (v13 == 1 && *(a2 + 24248) < *(a2 + 22960) * 0.25 || (v13 & 1) == 0 && *(a2 + 24248) < a4 * 99930819.3 * (a4 * 99930819.3) * 0.25)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (*v7 == 1 && v11 < *(a2 + 22888) * 0.25)
        {
          goto LABEL_25;
        }

        if (*(v7 + 144) == 1)
        {
          if (!*v7 || v10 < *(a2 + 23064) * 0.25)
          {
LABEL_25:
            for (i = 2; i != 13; ++i)
            {
              *(a1 + 872 + 8 * ((((i - 1) * i) >> 1) - 1)) = *(a1 + 872 + 8 * ((((i - 1) * i) >> 1) - 1)) * 1.15;
            }

            v15 = (a2 + 24216);
            for (j = 12; j > 1; --j)
            {
              *v15 = *v15 * 1.15;
              --v15;
            }

            v17 = (a2 + 24304);
            for (k = 12; k > 1; --k)
            {
              *v17 = *v17 * 1.15;
              --v17;
            }

            v19 = (a2 + 24392);
            for (m = 12; m > 1; --m)
            {
              *v19 = *v19 * 1.07;
              --v19;
            }
          }
        }

        else if (!*v7 || !*(v7 + 144))
        {
          goto LABEL_25;
        }
      }
    }

    v8 = *(a1 + 128);
    if ((v8 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v8 = 1;
LABEL_34:
  v21 = *(a1 + 132) - 61;
  if (v21 <= 4 && v21 != 2)
  {
    v23 = *(a1 + 160);
    Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), &v70);
    *(a2 + 24400) = v24;
    Comp_ErrorEllipse(*&v70, *(&v70 + 1), v24, &v72, &v73, &v74);
    v25 = v72 * v72;
    ud2var(a1 + 344, 0xBu, 1, 0xBu, (a2 + 24136));
    v26 = v71;
    if (v71 <= v25)
    {
      v26 = v25;
    }

    if (*(a2 + 24176) > v26)
    {
      v26 = *(a2 + 24176);
    }

    if (*(a2 + 24184) > v26)
    {
      v26 = *(a2 + 24184);
    }

    if (*(a2 + 24192) > v26)
    {
      v26 = *(a2 + 24192);
    }

    *(a2 + 24192) = v26;
    *(a2 + 24184) = v26;
    *(a2 + 24176) = v26;
    v27 = *(a2 + 24200);
    if (*(a2 + 24208) > v27)
    {
      v27 = *(a2 + 24208);
    }

    v28 = *(a2 + 24216);
    if (v28 <= v27)
    {
      v28 = v27;
    }

    v29 = fmax(v23, 9.0);
    if (*a3 == 2)
    {
      v30 = *(a1 + 20);
      if (v30 <= 3)
      {
        v31 = 100.0;
        if (v30 != 3)
        {
          v31 = 4.0;
        }

        if (v29 * v28 > v31)
        {
          v32 = dbl_29975FBA0[v30];
          *(a1 + 20) = dword_29975FB90[v30];
          v33 = v32 / v29;
          if (v28 > v33)
          {
            v28 = v33;
          }
        }
      }
    }

    *(a2 + 24216) = v28;
    *(a2 + 24208) = v28;
    v34 = 3027;
    *(a2 + 24200) = v28;
    do
    {
      *(a2 + 8 * v34) = v29 * *(a2 + 8 * v34);
      v35 = v34 - 3016;
      --v34;
    }

    while (v35 > 1);
    v36 = 2;
    do
    {
      *(&v70 + v36) = v29 * *(&v70 + v36);
      v37 = v36-- + 1;
    }

    while (v37 > 1);
    *(a2 + 24400) = v29 * *(a2 + 24400);
    bzero((a1 + 872), 0x210uLL);
    for (n = 3017; n != 3028; ++n)
    {
      *(a1 + 872 + 8 * ((((n - 3016) * (n - 3015)) >> 1) - 1)) = *(a2 + 8 * n);
    }

    *(a2 + 24176) = v70;
    *(a2 + 24192) = v71;
    NK_Recompute_Sigmas(a1, a2);
    *(a1 + 128) = 0;
    *(a1 + 168) = 2;
    goto LABEL_128;
  }

LABEL_64:
  if (v8)
  {
    goto LABEL_128;
  }

  v39 = 0;
  v40 = (a2 + 24136);
  do
  {
    *(&v64 + v39) = *(a2 + 25166 + v39) ^ 1;
    if (v39 == 2)
    {
      if (*(a2 + 24152) > 1000000000.0)
      {
        v65 = 0;
      }
    }

    else if (v39 == 1)
    {
      if (*(a2 + 24144) > 1000000000.0)
      {
        HIBYTE(v64) = 0;
      }
    }

    else if (!v39 && *v40 > 1000000000.0)
    {
      LOBYTE(v64) = 0;
    }

    ++v39;
  }

  while (v39 != 11);
  v41 = *(v7 + 2516);
  if (v41 >= 0x1D4C1)
  {
    v64 = 257;
    *(a2 + 768) = 0;
    *(a2 + 769) = 0;
    v65 = 1;
    v67 = 16843009;
LABEL_79:
    v42 = *(a2 + 944);
    EvLog_v("NK_Limited_Reset: Partial reset velocity: %d  %d  ", v41, v42);
    v43 = v42 * v42;
    if (*(v7 + 2516) / 0xFA0u > v42)
    {
      *(a2 + 704) = 0u;
      *(a2 + 720) = 0u;
      *(a2 + 688) = 0u;
      *(a2 + 912) = 0u;
      *(a2 + 928) = 0u;
      *(a2 + 944) = 0u;
    }

    v66 = 1;
    v68 = 257;
    v69 = 1;
    goto LABEL_83;
  }

  if (v41 >= 0xFA0)
  {
    goto LABEL_79;
  }

  v43 = 0;
LABEL_83:
  v44 = 0;
  v45 = 0;
  v79 = 0.0;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  memset(v75, 0, sizeof(v75));
  do
  {
    if (*(&v64 + v44) == 1)
    {
      v46 = v40[45];
      if (*(a2 + 968))
      {
        v46 = v46 + v46;
      }

      if (((v44 & 0xE) == 8 || v44 == 3 || v44 == 10) && v43 != 0)
      {
        v46 = v46 + v43;
      }

      *(v75 + v44) = v46;
      ++v45;
      ++*(a1 + 10960 + 2 * v44);
      *v40 = v46;
    }

    ++v44;
    ++v40;
  }

  while (v44 != 11);
  if (BYTE1(v67) == 1)
  {
    Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), &v70);
    *(a2 + 24400) = v50;
    Comp_ErrorEllipse(*&v70, *(&v70 + 1), v50, &v72, &v73, &v74);
    v51 = v72 * v72;
    v72 = v51;
    if (v71 > v51)
    {
      v51 = v71;
    }

    *&v77 = v51;
    *(&v77 + 1) = v51;
    *(&v76 + 1) = v51;
    *(a2 + 24176) = v70;
    *(a2 + 24192) = v71;
  }

  if (v68 == 1)
  {
    v52 = *(a2 + 24560);
    if (*(a2 + 24568) > v52)
    {
      v52 = *(a2 + 24568);
    }

    if (*(a2 + 24576) > v52)
    {
      v52 = *(a2 + 24576);
    }

    v53 = v52 + v52;
    if (*a3 == 2)
    {
      v54 = *(a1 + 20);
      if (v54 <= 3)
      {
        v55 = 100.0;
        if (v54 != 3)
        {
          v55 = 4.0;
        }

        if (v53 > v55)
        {
          Dynamics_Mode::Promote_Dynamic_Level((a1 + 20));
        }
      }
    }

    *(&v78 + 1) = v53;
    v79 = v53;
    *&v78 = v53;
    *(a2 + 24216) = v53;
    *(a2 + 24208) = v53;
    *(a2 + 24200) = v53;
  }

  if (v45)
  {
    if (v45 > 9)
    {
      if (v45 == 10)
      {
        v56 = -11;
        v57 = v75;
        do
        {
          v63 = 0.0;
          if (R8_EQ(v57, &v63))
          {
            ud2var(a1 + 872, 0xBu, v56 + 12, 1u, v57);
          }

          ++v57;
        }

        while (!__CFADD__(v56++, 1));
      }

      bzero((a1 + 872), 0x210uLL);
      v59 = v75;
      for (ii = 2; ii != 13; ++ii)
      {
        v61 = *v59++;
        *(a1 + 872 + 8 * ((((ii - 1) * ii) >> 1) - 1)) = v61;
      }
    }

    else
    {
      Partial_Reset(11, v75, (a1 + 872));
    }

    *(a1 + 27000) = *(a2 + 624);
    *(a1 + 168) = 1;
    *(a1 + 144) = 0;
    NK_Recompute_Sigmas(a1, a2);
  }

LABEL_128:
  v62 = *MEMORY[0x29EDCA608];
}

_DWORD *Dynamics_Mode::Promote_Dynamic_Level(_DWORD *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (v1 <= 6)
  {
    *this = dword_29975FBC0[v1];
  }

  v2 = *MEMORY[0x29EDCA608];
  return this;
}

double *NK_Recompute_Sigmas(double *result, double *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = a2 + 3017;
  v3 = -11;
  do
  {
    v4 = v3 + 11;
    if (v3 + 11 <= 4)
    {
      if (v4 <= 2)
      {
        v5 = *v2 + result[906];
      }

      else if (v3 == -8)
      {
        v5 = *v2 + a2[82] * 0.01;
      }

      else
      {
        v5 = *v2;
      }

      v2[11] = v5;
    }

    else if (v4 > 7)
    {
      if (v3 == -3)
      {
        a2[3036] = a2[3025] + a2[82] * 0.0001;
      }

      else if (v3 == -2)
      {
        a2[3037] = a2[3026] + a2[82] * 0.0001;
      }

      else
      {
        a2[3038] = a2[3027] + a2[82] * 0.0001;
      }
    }

    else if (v3 == -6)
    {
      a2[3050] = a2[3050] + result[910];
      a2[3033] = a2[3022] + result[907];
    }

    else if (v3 == -5)
    {
      a2[3034] = a2[3023] + result[908];
    }

    else
    {
      a2[3035] = a2[3024] + result[909];
    }

    v2[22] = sqrt(v2[11]);
    ++v2;
  }

  while (!__CFADD__(v3++, 1));
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm01_01DefaultMsgHandler(unsigned __int8 *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm01_01DefaultMsgHandler", 517);
      v9 = 0;
LABEL_43:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:MID,%X,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm01_01DefaultMsgHandler", 519, *(a1 + 1), *a1, a1[1]);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
  }

  v4 = *(a1 + 1);
  if (v4 > 8520962)
  {
    if (v4 > 8591615)
    {
      if (v4 == 8591616)
      {
        Gnm13_03SendAbortCnf(*(a1 + 3), 0);
        goto LABEL_44;
      }

      if (v4 == 8786691)
      {
        goto LABEL_27;
      }

      v10 = 8787203;
    }

    else
    {
      if (v4 == 8520963 || v4 == 8521220)
      {
        goto LABEL_20;
      }

      v10 = 8521475;
    }

    if (v4 != v10)
    {
      goto LABEL_41;
    }

LABEL_27:
    v12 = *(a1 + 2);
    if (v12)
    {
      free(v12);
    }

    *(a1 + 2) = 0;
    goto LABEL_44;
  }

  if (v4 > 8520194)
  {
    if (v4 == 8520195)
    {
      v11 = *(a1 + 3);
      if (v11[31])
      {
        free(v11[31]);
        v11 = *(a1 + 3);
      }

      v11[31] = 0;
      if (v11[9])
      {
        free(v11[9]);
        v11 = *(a1 + 3);
      }

      v11[9] = 0;
      if (v11[33])
      {
        free(v11[33]);
        v11 = *(a1 + 3);
      }

      goto LABEL_21;
    }

    if (v4 != 8520451 && v4 != 8520707)
    {
      goto LABEL_41;
    }

LABEL_20:
    v11 = *(a1 + 3);
    if (!v11)
    {
LABEL_22:
      *(a1 + 3) = 0;
      goto LABEL_44;
    }

LABEL_21:
    free(v11);
    goto LABEL_22;
  }

  if (v4 != 8389379)
  {
    if (v4 == 8405248)
    {
      Gnm11_00ApiStatusCB(11, 0, 0, 18);
      goto LABEL_44;
    }

    if (v4 == 8407043)
    {
      Gnm11_00ApiStatusCB(11, 1, a1[12], 14);
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v16 = a1[12];
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:SBCFG Request,%u discarded\n", (*&g_MacClockTicksToMsRelation * v5));
LABEL_32:
        v8 = v6;
        v9 = 2;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

LABEL_41:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No memory free done\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm01_01DefaultMsgHandler");
      v9 = 4;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE discarded\n");
    goto LABEL_32;
  }

LABEL_44:
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t UnCompact_GPS_BinEph(uint64_t result, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  v2 = (a2 + 11);
  *(result + 10) = *(a2 + 10);
  v3 = result + 24;
  *(result + 11) = 0;
  *(result + 16) = 0;
  for (i = 21; i > 1; --i)
  {
    *v3 = *v2;
    *(v3 + 1) = v2[1];
    *(v3 + 2) = v2[2];
    v3 += 4;
    v2 += 3;
  }

  *(result + 104) = 0xFFFFFF;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplLppExecutePosRsp(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppExecutePosRsp");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_24;
  }

  LODWORD(__s) = 255;
  BYTE4(__s) = -1;
  v21 = -1;
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Sub Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 65, "SuplLppExecutePosRsp", *(a1 + 1));
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 1, 1);
  }

  v6 = *(a1 + 1);
  if (v6 > 1)
  {
    if (v6 == 6)
    {
      v15 = *(*(a1 + 8) + 16);
      LODWORD(__s) = 2;
      v21 = *(a1 + 16);
      BYTE4(__s) = 1;
      lpp_t_pos_meas_cnf(0, v15, 2, __s, v21, *v15);
      goto LABEL_27;
    }

    if (v6 != 2)
    {
LABEL_19:
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_27;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LPP message\n");
      goto LABEL_24;
    }
  }

  else if (*(a1 + 1))
  {
    if (v6 == 1)
    {
      *&__dst = 0x8000000080000000;
      *(&__dst + 1) = 0xFFFF00007FFFFFFFLL;
      *v23 = 255;
      *&v23[8] = -1;
      v23[10] = -1;
      *&v23[2] = -1;
      v23[6] = -1;
      memset(&v23[11], 0, 32);
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AID_RQD_MSG  \n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 73, "SuplLppExecutePosRsp");
        LbsOsaTrace_WriteLog(0x13u, __str, v8, 4, 1);
      }

      LODWORD(__s) = 2;
      v9 = *(a1 + 16);
      v21 = v9;
      BYTE4(__s) = 1;
      v10 = *(a1 + 8);
      if (*(v10 + 8))
      {
        memcpy_s("SuplLppExecutePosRsp", 92, &__dst, 0x3Cu, *v10, 0x3CuLL);
        v11 = 1;
        v9 = v21;
      }

      else
      {
        v11 = 0;
      }

      *__str = __dst;
      v25 = *v23;
      *v26 = *&v23[16];
      *&v26[12] = *&v23[28];
      lpp_t_lpi_pos_aid_req(__str, v11, __s, v9);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
    LODWORD(__s) = 2;
    v21 = *(a1 + 16);
    BYTE4(__s) = 1;
    *&v26[16] = v14[3];
    v27 = v14[4];
    v28 = v14[5];
    v29 = v14[6];
    *__str = *v14;
    v25 = v14[1];
    *v26 = v14[2];
    lpp_t_pos_loc_cnf(__str, __s, v21, *(v13 + 9));
    goto LABEL_27;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Position data not received\n");
LABEL_24:
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
  }

LABEL_27:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "SuplLppExecutePosRsp");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplLppExecuteAdReq(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppExecuteAdReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_14:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    goto LABEL_15;
  }

  v4 = operator new(0x40uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS Aid Req\n");
    goto LABEL_14;
  }

  v5 = v4;
  *v4 = 0x8000000080000000;
  *(v4 + 1) = 0xFFFF00007FFFFFFFLL;
  *(v4 + 8) = 255;
  *(v4 + 12) = -1;
  v4[26] = -1;
  *(v4 + 18) = -1;
  v4[22] = -1;
  *(v4 + 27) = 0u;
  *(v4 + 43) = 0u;
  v6 = *(a1 + 46);
  v4[60] = v6;
  if (v6)
  {
    memset_s(v4, 0x3CuLL, 0, 0x3CuLL);
    *(v5 + 3) = *(a1 + 6);
    v5[16] = *(a1 + 10);
    v7 = *(a1 + 11);
    v5[17] = v7;
    v5[18] = *(a1 + 42);
    if (v7)
    {
      v8 = (a1 + 27);
      v9 = v5 + 43;
      do
      {
        *v9 = *v8;
        *(v9 - 16) = *(v8 - 15);
        ++v9;
        ++v8;
        --v7;
      }

      while (v7);
    }
  }

  lpp_t_supl_ad_req(*a1, *(a1 + 4), v5, 0xFFFF);
LABEL_15:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 68, "SuplLppExecuteAdReq");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v13, 5, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplLppUpdatePosCap(_BYTE *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppUpdatePosCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  BYTE1(v8[0]) = 1;
  if (a1[3] == 1)
  {
    BYTE3(v9) = 1;
    BYTE6(v9) = a1[2];
    BYTE4(v9) = *a1;
    HIBYTE(v9) = a1[4];
  }

  v11 = 1;
  v10 = a1[5];
  lpp_t_classmark_ind(v8);
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 68, "SuplLppUpdatePosCap");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplLppUpdateCap(unsigned __int8 *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppUpdateCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (*a1 == 1)
  {
    LOBYTE(v10) = 1;
    BYTE2(v11) = 1;
    WORD2(v11) = *(a1 + 1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS ID,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 69, "SuplLppUpdateCap", 770, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  lpp_t_classmark_ind(&v10);
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "SuplLppUpdateCap");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplLppExecuteCapReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppExecuteCapReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  lpp_t_supl_lpp_caps_req(*a1, *(a1 + 4));
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 68, "SuplLppExecuteCapReq");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *LPP_Bridge_init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "LPP_Bridge_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  LPP_init();
  result = lpp_t_mm_lpm_status_ind(1, 0xFFFF, 0xFFFFFFFFuLL);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LPP_Bridge_de_init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: De-Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "LPP_Bridge_de_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  result = LPP_destroy();
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Vert_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v21[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    a4[6] = v11;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v12 = a2[7];
    *(v18 + a1) = -a2[6];
    *(v18 + a1 + 1) = -v12;
    *(&v18[1] + a1) = -a2[8];
    v17 = 0.0;
    *(v18 + a3) = v11;
    umeas(a5, a3, v10, v18, v21, v20, &v17, a4[7]);
    v13 = v17;
    if (v17 <= 0.0)
    {
      v14 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v13 = a4[4] * (v17 * (v21[a3] * v21[a3]));
      v14 = *a4;
    }

    a4[8] = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14 & 1;
}

void Corr_Old_PR_Est(unsigned __int8 *a1, int a2, int a3, int a4, int a5, unsigned int a6, double *a7, const double *a8, double a9, double a10, double a11, double a12, double *a13, _BYTE *a14, double *a15)
{
  v18 = a9 <= 5.0;
  v19 = fabs(a10) <= 5995849.16 && a9 <= 5.0;
  v20 = fabs(a11) <= 5995849.16 && a9 <= 5.0;
  if (fabs(a12) > 5995849.16)
  {
    v18 = 0;
  }

  v21 = a14;
  v38 = *MEMORY[0x29EDCA608];
  if (a9 > 5.0 || a5 == 0)
  {
    v25 = *MEMORY[0x29EDCA608];

    bzero(a14, a6);
  }

  else
  {
    if (a6)
    {
      v29 = v19 & a2;
      v37 = v20 & a3;
      v30 = v18 & a4;
      v31 = a1;
      v32 = a6;
      while (*v21 != 1)
      {
LABEL_31:
        v31 += 4;
        ++a15;
        a13 += 3;
        ++a7;
        ++v21;
        if (!--v32)
        {
          goto LABEL_32;
        }
      }

      v33 = PosCor_dot_AveLOS(a8, *a7, a13) + *a15;
      *a15 = v33;
      if (!a1)
      {
        goto LABEL_25;
      }

      v34 = *v31;
      if (v34 == 4)
      {
        if (!v30)
        {
LABEL_30:
          *v21 = 0;
          goto LABEL_31;
        }

        v35 = v33 - a12;
        goto LABEL_29;
      }

      if (v34 == 2)
      {
        if (!v37)
        {
          goto LABEL_30;
        }

        v35 = v33 - a11;
      }

      else
      {
LABEL_25:
        if (!v29)
        {
          goto LABEL_30;
        }

        v35 = v33 - a10;
      }

LABEL_29:
      *a15 = v35;
      goto LABEL_31;
    }

LABEL_32:
    v36 = *MEMORY[0x29EDCA608];
  }
}

double PosCor_dot_AveLOS(const double *a1, double a2, double *a3)
{
  v3 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v4 = 0.0;
  do
  {
    v4 = v4 + a1[v3] * a3[v3];
    ++v3;
  }

  while (v3 != 3);
  for (i = 0; i != 3; ++i)
  {
    *(&v10 + i * 8) = a3[i] - -(a1[i] - v4 * a3[i]) / a2;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v7 = v7 + a1[v6] * (a3[v6] + *(&v10 + v6 * 8));
    ++v6;
  }

  while (v6 != 3);
  *a3 = v10;
  *(a3 + 2) = v11;
  v8 = *MEMORY[0x29EDCA608];
  return v7 * 0.5;
}

void *Init_DB_Acq_Aid_Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 168);
  v7 = *(a1 + 888);
  v8 = *(a1 + 872);
  *a3 = *(a1 + 32);
  v9 = *(a1 + 152);
  v10 = (*(a1 + 40) - *(a1 + 144)) * 1000.0;
  if (v10 <= 0.0)
  {
    v11 = -0.5;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = v10 + v11;
  if (v12 >= -2147483650.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x80000000;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(a1 + 48);
  *(a3 + 32) = v14;
  *(a3 + 36) = v15;
  v16 = (*(a1 + 192) - v9) * 1000.0;
  if (v16 <= 0.0)
  {
    v17 = -0.5;
  }

  else
  {
    v17 = 0.5;
  }

  v18 = v16 + v17;
  if (v18 <= 2147483650.0)
  {
    if (v18 >= -2147483650.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x80000000;
    }
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  *(a3 + 40) = v19;
  v37[0] = 0.0;
  API_Get_UTC_Cor(1, v37);
  if (v37[0] <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  v21 = v37[0] + v20;
  if (v37[0] + v20 <= 2147483650.0)
  {
    if (v21 >= -2147483650.0)
    {
      v22 = v21;
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  else
  {
    LOBYTE(v22) = -1;
  }

  *(a3 + 44) = v22;
  for (i = 60; i != 3996; i += 48)
  {
    v24 = (a3 + i);
    *(v24 + 29) = 0uLL;
    *v24 = 0uLL;
    v24[1] = 0uLL;
  }

  result = memset((a3 + 3996), 255, 0x4DEuLL);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  *(a3 + 6132) = 0;
  *(a3 + 6136) = 0;
  do
  {
    v30 = v29 + 1;
    if (*(a2 + 33605 + v28) == 1)
    {
      v31 = 0;
      *(a3 + 4530 + 2 * v26++) = v30;
      *(a3 + 6133) = v26;
    }

    else
    {
      *(a3 + 4886 + 2 * v27++) = v30;
      *(a3 + 6135) = v27;
      v31 = 3;
    }

    *(a3 + 5420 + 4 * v28++) = v31;
    v29 = v28;
  }

  while (v28 != 178);
  v32 = fabs(v6);
  v33 = sqrt(v8 * v8 + v7 * v7);
  v34 = (v6 * 1000000000.0);
  v35 = 3 * (v33 + 1313.75887);
  if (v33 >= 21500.0)
  {
    LOWORD(v35) = -536;
  }

  if (v32 >= 0.000032768)
  {
    LOWORD(v34) = 0;
  }

  *(a3 + 4) = v35;
  *(a3 + 6) = -1;
  *(a3 + 14) = 0x7FFF7FFF7FFFFFFFLL;
  *(a3 + 22) = -256;
  *(a3 + 24) = v34;
  *(a3 + 26) = 0xFFFF;
  *(a3 + 30) = -154;
  *(a3 + 48) = 0;
  *(a3 + 52) = *(a1 + 20);
  *(a3 + 6210) = 3584;
  *(a3 + 6140) = 0u;
  *(a3 + 6156) = 0u;
  *(a3 + 6172) = 0u;
  *(a3 + 6188) = 0u;
  *(a3 + 6202) = 0;
  *(a3 + 6216) = a2 + 16336;
  *(a3 + 6224) = a2 + 16432;
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_Cur_Acq_Aid(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a2 + 4) = 0;
  *(a2 + 8) = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 36) = *(result + 36);
  if (*(result + 4) == 1)
  {
    v2 = *a2 - *result;
    if (*a2 == *result)
    {
      v3 = *result;
      v4 = *(result + 32);
      *(a2 + 16) = *(result + 16);
      *(a2 + 32) = v4;
      *a2 = v3;
    }

    else if (v2 <= 150000)
    {
      *(a2 + 12) = *(result + 12);
      v5 = *(result + 20);
      *(a2 + 32) = *(result + 32) - v2 + (v2 << 10);
      v6 = a2 + 32;
      *(a2 + 20) = v5;
      *(a2 + 18) = *(result + 18);
      *(a2 + 24) = *(result + 24);
      v7 = *(result + 22);
      v8 = v2 * v5;
      if (v8 < 0)
      {
        HIWORD(v8) = (v8 + 0xFFFF) >> 16;
      }

      *(a2 + 22) = v7 + HIWORD(v8);
      *(a2 + 28) = *(result + 28);
      v9 = (2924415343 * (*(result + 22) + (v7 + HIWORD(v8))) * v2) >> 32;
      result = Inc_CA_Chips((v9 >> 21) + (v9 >> 31), (a2 + 32), (a2 + 28));
      *(v6 - 28) = 1;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

const char *Set_Mat_Size(const char *result, int *a2, int a3, int a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a4 * a3 <= result)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    *a2 = 0;
    if (g_FPE_LogSeverity)
    {
      v6 = result;
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Cannot set mat to size %dx%d, number of elements only %d", "Set_Mat_Size", 71, v7, v8, a3, a4, v6);
    }

    g_FPE_AssertFlag = 1;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

const char *VecSet_3x1(const char *result, uint64_t a2, double a3, double a4, double a5)
{
  v6 = result;
  v11 = *MEMORY[0x29EDCA608];
  if (result > 2)
  {
    *a2 = 0x100000003;
    *(a2 + 8) = a3;
    *(a2 + 16) = a4;
    *(a2 + 24) = a5;
    v9 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "VecSet_3x1", 93, v7, v8, v6, 3);
    }

    g_FPE_AssertFlag = 1;
    v10 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(v6, a2, 0, 0);
  }

  return result;
}

void Mult_Mat_Mat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v10 = v9;
  v11 = v7;
  v12 = v6;
  __C[2601] = *MEMORY[0x29EDCA608];
  if (!v6 || !v7 || !v9)
  {
    if (g_FPE_LogSeverity)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Mult_Mat_Mat", 219, v19, v20, v12, v11, v10);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_28;
  }

  v13 = *v6;
  v14 = *(v6 + 4);
  v16 = *v7;
  __ldc = *(v7 + 1);
  if (*v7 != v14)
  {
    if (g_FPE_LogSeverity)
    {
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v22 = *(g_TCU + 8);
      }

      else
      {
        v22 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Mult_Mat_Mat", 231, v21, v22, v13, v14, v16, __ldc);
    }

    g_FPE_AssertFlag = 1;
    *v10 = 0;
    goto LABEL_28;
  }

  v17 = v8;
  if (__ldc * v13 <= v8)
  {
    if ((__ldc * v13) >= 0xA2A)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v23 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f output matrix is too big to fit allocated temp memory! %dx%d");
      }

      goto LABEL_32;
    }

    if (v9 == v6 || v9 == v7)
    {
      bzero(__C, 0x5148uLL);
      v26[0] = v13;
      v26[1] = __ldc;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v13, __ldc, v14, 1.0, v12 + 1, v14, v11 + 1, __ldc, 0.0, __C, __ldc);
      Copy_Mat(2601, v26, v17, v10);
    }

    else
    {
      *v9 = v13;
      *(v9 + 4) = __ldc;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v13, __ldc, v14, 1.0, (v6 + 8), *(v6 + 4), v7 + 1, *(v7 + 1), 0.0, (v9 + 8), __ldc);
    }

LABEL_28:
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    mach_continuous_time();
    if (g_TCU)
    {
      v18 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!");
  }

LABEL_32:
  g_FPE_AssertFlag = 1;
  v25 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(v17, v10, 0, 0);
}

void Copy_Mat(uint64_t a1, int *a2, const char *a3, int *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 > 0x33 || v6 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Copy_Mat", 2176, v10, v11, v5, v6);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
    goto LABEL_20;
  }

  if (v6 * v5 <= a3)
  {
    *a4 = v5;
    a4[1] = v6;
    if (v5)
    {
      v12 = 0;
      for (i = 0; i != v5; ++i)
      {
        if (v6)
        {
          v14 = a2[1] * i;
          v15 = v12;
          v16 = v6;
          do
          {
            *&a4[2 * v15++ + 2] = *&a2[2 * v14++ + 2];
            --v16;
          }

          while (v16);
        }

        v12 += v6;
      }
    }

LABEL_20:
    v17 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v9 = *(g_TCU + 8);
    }

    else
    {
      v9 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Copy_Mat", 2184, v8, v9, a3, v6 * v5);
  }

  g_FPE_AssertFlag = 1;
  v18 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a3, a4, 0, 0);
}

void Mult_MatT_Mat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v10 = v9;
  v11 = v7;
  v12 = v6;
  __C[2601] = *MEMORY[0x29EDCA608];
  if (!v6 || !v7 || !v9)
  {
    if (g_FPE_LogSeverity)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Mult_MatT_Mat", 285, v19, v20, v12, v11, v10);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_28;
  }

  v14 = *v6;
  v13 = *(v6 + 4);
  v16 = *v7;
  __ldc = *(v7 + 1);
  if (*v7 != *v6)
  {
    if (g_FPE_LogSeverity)
    {
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v22 = *(g_TCU + 8);
      }

      else
      {
        v22 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Mult_MatT_Mat", 301, v21, v22, v14, v13, v16, __ldc);
    }

    g_FPE_AssertFlag = 1;
    *v10 = 0;
    goto LABEL_28;
  }

  v17 = v8;
  if (__ldc * v13 <= v8)
  {
    if ((__ldc * v13) >= 0xA2A)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v23 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f output matrix is too big to fit allocated temp memory! %dx%d");
      }

      goto LABEL_32;
    }

    if (v9 == v6 || v9 == v7)
    {
      bzero(__C, 0x5148uLL);
      v26[0] = v13;
      v26[1] = __ldc;
      cblas_dgemm(CblasRowMajor, CblasTrans, CblasNoTrans, v13, __ldc, v14, 1.0, v12 + 1, v13, v11 + 1, __ldc, 0.0, __C, __ldc);
      Copy_Mat(2601, v26, v17, v10);
    }

    else
    {
      *v9 = v13;
      *(v9 + 4) = __ldc;
      cblas_dgemm(CblasRowMajor, CblasTrans, CblasNoTrans, v13, __ldc, v14, 1.0, (v6 + 8), *(v6 + 4), v7 + 1, *(v7 + 1), 0.0, (v9 + 8), __ldc);
    }

LABEL_28:
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    mach_continuous_time();
    if (g_TCU)
    {
      v18 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!");
  }

LABEL_32:
  g_FPE_AssertFlag = 1;
  v25 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(v17, v10, 0, 0);
}

void Mult_Mat_MatT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v10 = v9;
  v11 = v7;
  v12 = v6;
  __C[2601] = *MEMORY[0x29EDCA608];
  if (!v6 || !v7 || !v9)
  {
    if (g_FPE_LogSeverity)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Mult_Mat_MatT", 354, v19, v20, v12, v11, v10);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_28;
  }

  v13 = *v6;
  __ldb = *(v6 + 4);
  __ldc = *v7;
  v16 = *(v7 + 4);
  if (v16 != __ldb)
  {
    if (g_FPE_LogSeverity)
    {
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v22 = *(g_TCU + 8);
      }

      else
      {
        v22 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Mult_Mat_MatT", 371, v21, v22, v13, __ldb, __ldc, v16);
    }

    g_FPE_AssertFlag = 1;
    *v10 = 0;
    goto LABEL_28;
  }

  v17 = v8;
  if (__ldc * v13 <= v8)
  {
    if ((__ldc * v13) >= 0xA2A)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v23 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f output matrix is too big to fit allocated temp memory! %dx%d");
      }

      goto LABEL_32;
    }

    if (v9 == v6 || v9 == v7)
    {
      bzero(__C, 0x5148uLL);
      v26[0] = v13;
      v26[1] = __ldc;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasTrans, v13, __ldc, __ldb, 1.0, v12 + 1, __ldb, v11 + 1, __ldb, 0.0, __C, __ldc);
      Copy_Mat(2601, v26, v17, v10);
    }

    else
    {
      *v9 = v13;
      *(v9 + 4) = __ldc;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasTrans, v13, __ldc, __ldb, 1.0, (v6 + 8), *(v6 + 4), (v7 + 8), *(v7 + 4), 0.0, (v9 + 8), __ldc);
    }

LABEL_28:
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    mach_continuous_time();
    if (g_TCU)
    {
      v18 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!");
  }

LABEL_32:
  g_FPE_AssertFlag = 1;
  v25 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(v17, v10, 0, 0);
}

void Cross_Vec_Vec(uint64_t a1, double *a2, uint64_t a3, double *a4, const char *a5, int *a6)
{
  v25[4] = *MEMORY[0x29EDCA608];
  if (!a2 || !a4 || !a6)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input vectors are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Cross_Vec_Vec", 502, v12, v13, a2, a4, a6);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_25;
  }

  if (*(a2 + 1) * *a2 != 3 || *(a4 + 1) * *a4 != 3)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices are not 3x1 or 1x3 vectors. sizes %dx%d , %dx%d are not supported!", "Cross_Vec_Vec", 511, v10, v11, *a2, *(a2 + 1), *a4, *(a4 + 1));
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
    goto LABEL_25;
  }

  if (a5 > 2)
  {
    v17 = a2[2];
    v18 = a2[3];
    v20 = a4[2];
    v19 = a4[3];
    v25[0] = 0x100000003;
    *&v25[1] = v17 * v19 - v18 * v20;
    v21 = a2[1];
    v22 = a4[1];
    *&v25[2] = v18 * v22 - v21 * v19;
    *&v25[3] = v21 * v20 - v17 * v22;
    Copy_Mat(3, v25, a5, a6);
LABEL_25:
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v16 = *(g_TCU + 8);
    }

    else
    {
      v16 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Cross_Vec_Vec", 519, v15, v16, a5, 3);
  }

  g_FPE_AssertFlag = 1;
  v24 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

double Dot_Vec_Vec(uint64_t a1, double *a2, uint64_t a3, double *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2 && a4)
  {
    if (*(a2 + 1) * *a2 == 3 && *(a4 + 1) * *a4 == 3)
    {
      v9 = *MEMORY[0x29EDCA608];
      return a2[2] * a4[2] + a2[1] * a4[1] + a2[3] * a4[3];
    }

    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v7 = *(g_TCU + 8);
      }

      v14 = *a4;
      v15 = *(a4 + 1);
      v12 = *a2;
      v13 = *(a2 + 1);
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f inputs are not 3x1 or 1x3 vectors. sizes %dx%d , %dx%d are not supported!");
    }
  }

  else if (g_FPE_LogSeverity)
  {
    mach_continuous_time();
    if (g_TCU)
    {
      v8 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input vectors are NULL: Mat1=%p, Mat2=%p");
  }

  g_FPE_AssertFlag = 1;
  v11 = *MEMORY[0x29EDCA608];
  return 0.0;
}

void ElMult_Mat_Mat(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4 || !a6)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "ElMult_Mat_Mat", 580, v16, v17, a2, a4, a6);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_31;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != *a2 || v12 != v10)
  {
    if (g_FPE_LogSeverity)
    {
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v15 = *(g_TCU + 8);
      }

      else
      {
        v15 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "ElMult_Mat_Mat", 591, v14, v15, v9, v10, v11, v12);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
LABEL_31:
    v27 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v10 * v9 <= a5)
  {
    *a6 = v9;
    a6[1] = v10;
    if (v9)
    {
      v21 = 0;
      for (i = 0; i != v9; ++i)
      {
        if (v10)
        {
          v23 = a2[1] * i;
          v24 = a4[1] * i;
          v25 = v21;
          v26 = v10;
          do
          {
            *&a6[2 * v25++ + 2] = *&a2[2 * v23++ + 2] * *&a4[2 * v24++ + 2];
            --v26;
          }

          while (v26);
        }

        v21 += v10;
      }
    }

    goto LABEL_31;
  }

  if (g_FPE_LogSeverity)
  {
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v20 = *(g_TCU + 8);
    }

    else
    {
      v20 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "ElMult_Mat_Mat", 599, v19, v20, a5, v10 * v9);
  }

  g_FPE_AssertFlag = 1;
  v28 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

void ElDiv_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v35 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4 || !a6)
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "ElDiv_Mat_Mat", 629, v15, v16, a2, a4, a6);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_38;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *a4;
  v11 = a4[1];
  if (*a4 != *a2 || v11 != v8)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "ElDiv_Mat_Mat", 640, v13, v14, v9, v8, v10, v11);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
LABEL_38:
    v31 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v8 * v9 <= a5)
  {
    *a6 = v9;
    a6[1] = v8;
    v33 = v9;
    if (v9)
    {
      v20 = 0;
      v21 = a4 + 2;
      v22 = a6 + 2;
      v23 = v8;
      v24 = v8;
      do
      {
        if (v8)
        {
          v25 = 0;
          v26 = a4[1];
          do
          {
            v27 = (v25 + v20 * v26);
            v28 = *&v21[2 * v27];
            if (fabs(v28) <= 1.0e-30)
            {
              if (g_FPE_LogSeverity)
              {
                v29 = mach_continuous_time();
                if (g_TCU)
                {
                  v30 = *(g_TCU + 8);
                }

                else
                {
                  v30 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "ElDiv_Mat_Mat", 660, (*&g_MacClockTicksToMsRelation * v29), v30, *&v21[2 * (v25 + v20 * a4[1])], 1.0e-30);
                v26 = a4[1];
                v23 = a6[1];
                v27 = (v25 + v20 * v26);
              }

              g_FPE_AssertFlag = 1;
              *&v21[2 * v27] = 0x3FF0000000000000;
              v28 = 1.0;
              v24 = v23;
            }

            *&v22[2 * (v25 + v20 * v24)] = *&a2[2 * (v25 + v20 * a2[1]) + 2] / v28;
            ++v25;
          }

          while (v8 != v25);
        }

        ++v20;
      }

      while (v20 != v33);
    }

    goto LABEL_38;
  }

  if (g_FPE_LogSeverity)
  {
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v19 = *(g_TCU + 8);
    }

    else
    {
      v19 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "ElDiv_Mat_Mat", 648, v18, v19, a5, v8 * v9);
  }

  g_FPE_AssertFlag = 1;
  v32 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

void ElDiv_Mat_Mat_Cond(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, const char *a7, int *a8)
{
  v8 = a6;
  v10 = a2;
  v48 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4 || !a8 || !a6)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p, Mcond=%p", "ElDiv_Mat_Mat_Cond", 683, v16, v17, v10, a4, a8, v8);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_39;
  }

  v11 = *a2;
  v12.i64[0] = *a4;
  v12.i64[1] = *a4;
  v13.i64[0] = *a2;
  v13.i64[1] = *a6;
  if ((vminv_u16(vmovn_s32(vceqq_s32(v13, v12))) & 1) == 0)
  {
    if (g_FPE_LogSeverity)
    {
      v42 = *a4;
      v43 = *a6;
      v45 = *a2;
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v15 = *(g_TCU + 8);
      }

      else
      {
        v15 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d, %dx%d", "ElDiv_Mat_Mat_Cond", 696, v14, v15, v45, HIDWORD(v45), v42, HIDWORD(v42), v43, HIDWORD(v43));
    }

    g_FPE_AssertFlag = 1;
    *a8 = 0;
LABEL_39:
    v40 = *MEMORY[0x29EDCA608];
    return;
  }

  v19 = HIDWORD(*a2);
  v20 = HIDWORD(v11) * v11;
  if (HIDWORD(v11) * v11 <= a7)
  {
    *a8 = v11;
    if (v11)
    {
      v23 = 0;
      v24 = a6 + 1;
      v25 = a8 + 2;
      v26 = a4 + 1;
      v27 = a2 + 1;
      v28 = &unk_2A14BE000;
      v29 = &unk_2A14BE000;
      v30 = HIDWORD(v11);
      v44 = v11;
      do
      {
        if (v19)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*&v24[i + v23 * *(v8 + 1)] == 0.0)
            {
              v39 = 0.0;
            }

            else
            {
              v32 = (i + v23 * *(a4 + 1));
              v33 = *&v26[v32];
              if (fabs(v33) <= 1.0e-30)
              {
                if (v28[1316])
                {
                  v34 = v27;
                  v35 = v10;
                  v36 = v28;
                  v37 = mach_continuous_time();
                  if (g_TCU)
                  {
                    v38 = *(g_TCU + 8);
                  }

                  else
                  {
                    v38 = 0.0;
                  }

                  LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "ElDiv_Mat_Mat_Cond", 719, (*&g_MacClockTicksToMsRelation * v37), v38, *&v26[i + v23 * *(a4 + 1)], 1.0e-30);
                  v30 = a8[1];
                  v32 = (i + v23 * *(a4 + 1));
                  v28 = v36;
                  v10 = v35;
                  v27 = v34;
                  v8 = a6;
                  v29 = &unk_2A14BE000;
                }

                v29[2616] = 1;
                v26[v32] = 0x3FF0000000000000;
                v33 = 1.0;
              }

              v39 = *&v27[i + v23 * v10[1]] / v33;
            }

            *&v25[2 * (i + v23 * v30)] = v39;
          }
        }

        ++v23;
      }

      while (v23 != v44);
    }

    goto LABEL_39;
  }

  if (g_FPE_LogSeverity)
  {
    v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v22 = *(g_TCU + 8);
    }

    else
    {
      v22 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "ElDiv_Mat_Mat_Cond", 704, v21, v22, a7, v20);
  }

  g_FPE_AssertFlag = 1;
  v41 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a7, a8, 0, 0);
}

void Sqrt_Mat(uint64_t a1, int *a2, const char *a3, int *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Min=%p, Mout=%p", "Sqrt_Mat", 742, v12, v13, a2, a4);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_27;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 * *a2;
  if (v9 <= a3)
  {
    *a4 = v7;
    a4[1] = v8;
    if (v7)
    {
      v14 = 0;
      v15 = v8;
      v22 = v7;
      do
      {
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            v17 = *&a2[2 * (i + v14 * a2[1]) + 2];
            if (v17 < 0.0)
            {
              if (g_FPE_LogSeverity)
              {
                v18 = mach_continuous_time();
                if (g_TCU)
                {
                  v19 = *(g_TCU + 8);
                }

                else
                {
                  v19 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "Sqrt_Mat", 766, (*&g_MacClockTicksToMsRelation * v18), v19, v17);
                v15 = a4[1];
              }

              g_FPE_AssertFlag = 1;
              v17 = 1.0;
            }

            *&a4[2 * (i + v14 * v15) + 2] = sqrt(v17);
          }
        }

        ++v14;
      }

      while (v14 != v22);
    }

LABEL_27:
    v20 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v11 = *(g_TCU + 8);
    }

    else
    {
      v11 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Sqrt_Mat", 751, v10, v11, a3, v9);
  }

  g_FPE_AssertFlag = 1;
  v21 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a3, a4, 0, 0);
}

void Transpose_Mat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v9 = v8;
  v10 = v6;
  v26[1024] = *MEMORY[0x29EDCA608];
  if (!v6 || !v8)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Min=%p, Mout=%p", "Transpose_Mat", 786, v16, v17, v10, v9);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_19;
  }

  v11 = v7;
  v12 = *v6;
  v13 = v6[1];
  if (v13 * *v6 <= v7)
  {
    bzero(v26, 0x2000uLL);
    v25[0] = v13;
    v25[1] = v12;
    if (v12)
    {
      v18 = 0;
      for (i = 0; i != v12; ++i)
      {
        v20 = v18;
        v21 = i;
        v22 = v13;
        if (v13)
        {
          do
          {
            v26[v21] = v10[v20 + 1];
            v21 += v12;
            ++v20;
            --v22;
          }

          while (v22);
        }

        v18 += v13;
      }
    }

    Copy_Mat(1024, v25, v11, v9);
LABEL_19:
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v15 = *(g_TCU + 8);
    }

    else
    {
      v15 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Transpose_Mat", 795, v14, v15, v11, v13 * v12);
  }

  g_FPE_AssertFlag = 1;
  v24 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(v11, v9, 0, 0);
}

void Sub_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != *a4 || v8 != v10)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Sub_Mat", 833, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
LABEL_22:
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v8 * v7 <= a5)
  {
    *a6 = v7;
    a6[1] = v8;
    if (v7)
    {
      v17 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v19 = a2[1] * i;
          v20 = a4[1] * i;
          v21 = v17;
          v22 = v8;
          do
          {
            *&a6[2 * v21++ + 2] = *&a2[2 * v19++ + 2] - *&a4[2 * v20++ + 2];
            --v22;
          }

          while (v22);
        }

        v17 += v8;
      }
    }

    goto LABEL_22;
  }

  if (g_FPE_LogSeverity)
  {
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v16 = *(g_TCU + 8);
    }

    else
    {
      v16 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Sub_Mat", 841, v15, v16, a5, v8 * v7);
  }

  g_FPE_AssertFlag = 1;
  v24 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

void Add_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != *a4 || v8 != v10)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Add_Mat", 876, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
LABEL_22:
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v8 * v7 <= a5)
  {
    *a6 = v7;
    a6[1] = v8;
    if (v7)
    {
      v17 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v19 = a2[1] * i;
          v20 = a4[1] * i;
          v21 = v17;
          v22 = v8;
          do
          {
            *&a6[2 * v21++ + 2] = *&a2[2 * v19++ + 2] + *&a4[2 * v20++ + 2];
            --v22;
          }

          while (v22);
        }

        v17 += v8;
      }
    }

    goto LABEL_22;
  }

  if (g_FPE_LogSeverity)
  {
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v16 = *(g_TCU + 8);
    }

    else
    {
      v16 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Add_Mat", 884, v15, v16, a5, v8 * v7);
  }

  g_FPE_AssertFlag = 1;
  v24 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

void Add_Mat_ScalarMult(double a1, uint64_t a2, int *a3, uint64_t a4, int *a5, const char *a6, int *a7)
{
  v26 = *MEMORY[0x29EDCA608];
  v8 = *a3;
  v9 = a3[1];
  v10 = *a5;
  v11 = a5[1];
  if (*a3 != *a5 || v9 != v11)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Add_Mat_ScalarMult", 920, v13, v14, v8, v9, v10, v11);
    }

    g_FPE_AssertFlag = 1;
    *a7 = 0;
LABEL_22:
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v9 * v8 <= a6)
  {
    *a7 = v8;
    a7[1] = v9;
    if (v8)
    {
      v18 = 0;
      for (i = 0; i != v8; ++i)
      {
        if (v9)
        {
          v20 = a3[1] * i;
          v21 = a5[1] * i;
          v22 = v18;
          v23 = v9;
          do
          {
            *&a7[2 * v22++ + 2] = *&a3[2 * v20++ + 2] + *&a5[2 * v21++ + 2] * a1;
            --v23;
          }

          while (v23);
        }

        v18 += v9;
      }
    }

    goto LABEL_22;
  }

  if (g_FPE_LogSeverity)
  {
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v17 = *(g_TCU + 8);
    }

    else
    {
      v17 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Add_Mat_ScalarMult", 928, v16, v17, a6, v9 * v8);
  }

  g_FPE_AssertFlag = 1;
  v25 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a6, a7, 0, 0);
}

void Min_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v27 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != *a4 || v8 != v10)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Min_Mat_Mat", 964, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
LABEL_24:
    v25 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v8 * v7 <= a5)
  {
    *a6 = v7;
    a6[1] = v8;
    if (v7)
    {
      v17 = 0;
      v18 = 0;
      v19 = a4 + 2;
      do
      {
        if (v8)
        {
          v20 = a2[1] * v18;
          v21 = a4[1] * v18;
          v22 = v17;
          v23 = v8;
          do
          {
            v24 = *&a2[2 * v20 + 2];
            if (v24 >= *&v19[2 * v21])
            {
              v24 = *&v19[2 * v21];
            }

            *&a6[2 * v22++ + 2] = v24;
            ++v21;
            ++v20;
            --v23;
          }

          while (v23);
        }

        ++v18;
        v17 += v8;
      }

      while (v18 != v7);
    }

    goto LABEL_24;
  }

  if (g_FPE_LogSeverity)
  {
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v16 = *(g_TCU + 8);
    }

    else
    {
      v16 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Min_Mat_Mat", 972, v15, v16, a5, v8 * v7);
  }

  g_FPE_AssertFlag = 1;
  v26 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

void Max_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v27 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != *a4 || v8 != v10)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Max_Mat_Mat", 1008, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
LABEL_24:
    v25 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v8 * v7 <= a5)
  {
    *a6 = v7;
    a6[1] = v8;
    if (v7)
    {
      v17 = 0;
      v18 = 0;
      v19 = a4 + 2;
      do
      {
        if (v8)
        {
          v20 = a2[1] * v18;
          v21 = a4[1] * v18;
          v22 = v17;
          v23 = v8;
          do
          {
            v24 = *&a2[2 * v20 + 2];
            if (v24 <= *&v19[2 * v21])
            {
              v24 = *&v19[2 * v21];
            }

            *&a6[2 * v22++ + 2] = v24;
            ++v21;
            ++v20;
            --v23;
          }

          while (v23);
        }

        ++v18;
        v17 += v8;
      }

      while (v18 != v7);
    }

    goto LABEL_24;
  }

  if (g_FPE_LogSeverity)
  {
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v16 = *(g_TCU + 8);
    }

    else
    {
      v16 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Max_Mat_Mat", 1016, v15, v16, a5, v8 * v7);
  }

  g_FPE_AssertFlag = 1;
  v26 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a5, a6, 0, 0);
}

void Max_Mat_Scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  v9 = v8 * *a3;
  if (v9 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v12 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v14 = a3[1] * i;
          v15 = v12;
          v16 = v8;
          do
          {
            v17 = *&a3[2 * v14 + 2];
            if (v17 <= a1)
            {
              v17 = a1;
            }

            *&a5[2 * v15++ + 2] = v17;
            ++v14;
            --v16;
          }

          while (v16);
        }

        v12 += v8;
      }
    }

    v18 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Max_Mat_Scalar", 1051, v10, v11, a4, v9);
    }

    g_FPE_AssertFlag = 1;
    v19 = *MEMORY[0x29EDCA608];

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

void Min_Mat_Scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  v9 = v8 * *a3;
  if (v9 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v12 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v14 = a3[1] * i;
          v15 = v12;
          v16 = v8;
          do
          {
            v17 = *&a3[2 * v14 + 2];
            if (v17 >= a1)
            {
              v17 = a1;
            }

            *&a5[2 * v15++ + 2] = v17;
            ++v14;
            --v16;
          }

          while (v16);
        }

        v12 += v8;
      }
    }

    v18 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Min_Mat_Scalar", 1086, v10, v11, a4, v9);
    }

    g_FPE_AssertFlag = 1;
    v19 = *MEMORY[0x29EDCA608];

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

void Max_Vec(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v6 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector is empty: %dx%d");
    }

    goto LABEL_27;
  }

  if (v3 >= 2 && v4 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v15 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f matrix as input is not supported (input size=%dx%d) enter vector");
    }

LABEL_27:
    g_FPE_AssertFlag = 1;
    goto LABEL_28;
  }

  v8 = *(a2 + 8);
  v9 = v4 * v3;
  if (v9 < 2)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_28;
    }

LABEL_24:
    *a3 = v10;
    goto LABEL_28;
  }

  v10 = 0;
  v11 = (a2 + 16);
  for (i = 1; i != v9; ++i)
  {
    v13 = *v11++;
    v14 = v13;
    if (v13 > v8)
    {
      v10 = i;
      v8 = v14;
    }
  }

  if (a3)
  {
    goto LABEL_24;
  }

LABEL_28:
  v16 = *MEMORY[0x29EDCA608];
}

void Max_Vec_Cond(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, _DWORD *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  if (*a2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector is empty: %dx%d");
    }

    goto LABEL_30;
  }

  if (v5 >= 2 && v6 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v18 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f matrix as input is not supported (input size=%dx%d) enter vector");
    }

LABEL_30:
    g_FPE_AssertFlag = 1;
    goto LABEL_31;
  }

  First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(a3, a4, 0);
  if (First_NonZero_in_Vector_Starting_At < 0)
  {
    if (g_FPE_LogSeverity)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f conditional vector has no non-zero values!", "Max_Vec_Cond", 1183, v19, v20);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v14 = *&a2[2 * First_NonZero_in_Vector_Starting_At + 2];
    v15 = v6 * v5;
    if (v15 >= 2)
    {
      v16 = 0;
      v17 = v15 - 1;
      do
      {
        if (*&a4[2 * v16 + 4] > 0.0 && *&a2[2 * v16 + 4] > v14)
        {
          First_NonZero_in_Vector_Starting_At = v16 + 1;
          v14 = *&a2[2 * v16 + 4];
        }

        ++v16;
      }

      while (v17 != v16);
    }

    if (a5)
    {
      *a5 = First_NonZero_in_Vector_Starting_At;
    }
  }

LABEL_31:
  v21 = *MEMORY[0x29EDCA608];
}

uint64_t Find_First_NonZero_in_Vector_Starting_At(uint64_t a1, int *a2, unsigned int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != 1 && v4 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v9 = *(g_TCU + 8);
      }

      else
      {
        v9 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input is not a vector! size = %dx%d", "Find_First_NonZero_in_Vector_Starting_At", 2818, v8, v9, v3, v4);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_17;
  }

  v6 = v4 * v3 - a3;
  if (v4 * v3 <= a3)
  {
LABEL_17:
    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  result = a3;
  while (*&a2[2 * result + 2] == 0.0)
  {
    ++result;
    if (!--v6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void Min_Vec_Cond(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, _DWORD *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  if (*a2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector is empty: %dx%d");
    }

    goto LABEL_30;
  }

  if (v5 >= 2 && v6 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v18 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f matrix as input is not supported (input size=%dx%d) enter vector");
    }

LABEL_30:
    g_FPE_AssertFlag = 1;
    goto LABEL_31;
  }

  First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(a3, a4, 0);
  if (First_NonZero_in_Vector_Starting_At < 0)
  {
    if (g_FPE_LogSeverity)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f conditional vector has no non-zero values!", "Min_Vec_Cond", 1236, v19, v20);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v14 = *&a2[2 * First_NonZero_in_Vector_Starting_At + 2];
    v15 = v6 * v5;
    if (v15 >= 2)
    {
      v16 = 0;
      v17 = v15 - 1;
      do
      {
        if (*&a4[2 * v16 + 4] > 0.0 && *&a2[2 * v16 + 4] < v14)
        {
          First_NonZero_in_Vector_Starting_At = v16 + 1;
          v14 = *&a2[2 * v16 + 4];
        }

        ++v16;
      }

      while (v17 != v16);
    }

    if (a5)
    {
      *a5 = First_NonZero_in_Vector_Starting_At;
    }
  }

LABEL_31:
  v21 = *MEMORY[0x29EDCA608];
}

const char *Set_Mat_Const(const char *result, unsigned int a2, const char *a3, int *a4, double a5)
{
  v7 = result;
  v19 = *MEMORY[0x29EDCA608];
  if (result > 0x33 || a2 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Set_Mat_Const", 1319, v11, v12, v7, a2);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
    goto LABEL_19;
  }

  if (a2 * result <= a3)
  {
    *a4 = result;
    a4[1] = a2;
    if (result)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v13;
        v16 = a2;
        if (a2)
        {
          do
          {
            *&a4[2 * v15++ + 2] = a5;
            --v16;
          }

          while (v16);
        }

        ++v14;
        v13 += a2;
      }

      while (v14 != result);
    }

LABEL_19:
    v17 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (g_FPE_LogSeverity)
  {
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v10 = *(g_TCU + 8);
    }

    else
    {
      v10 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Set_Mat_Const", 1327, v9, v10, a3, a2 * v7);
  }

  g_FPE_AssertFlag = 1;
  v18 = *MEMORY[0x29EDCA608];

  return Set_Mat_Size(a3, a4, 0, 0);
}

void Set_Mat_Const_Cond(double a1, uint64_t a2, uint32x2_t *a3, const char *a4, int *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *a5;
  *v7.i8 = *a3;
  v7.i64[1] = *a5;
  v8.i64[0] = 0x3300000033;
  v8.i64[1] = 0x3300000033;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(v7, v8))))
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v9 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: cond:%dx%d , out:%dx%d");
    }

LABEL_24:
    g_FPE_AssertFlag = 1;
LABEL_25:
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *a3;
  v11 = HIDWORD(*a3);
  if ((vcgt_u32(v5, v6).u8[0] & 1) != 0 || v5.i32[1] > v6.i32[1])
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d");
    }

    goto LABEL_24;
  }

  if (v5.i32[1] * v5.i32[0] <= a4)
  {
    if (v5.i32[0])
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = v17;
        v21 = v18;
        v22 = v5.u32[1];
        if (v5.i32[1])
        {
          do
          {
            if (*&a3[v20 + 1] > 0.0)
            {
              *&a5[2 * v21 + 2] = a1;
            }

            ++v21;
            ++v20;
            --v22;
          }

          while (v22);
        }

        ++v19;
        v18 += v6.i32[1];
        v17 += v5.u32[1];
      }

      while (v19 != v5.i32[0]);
    }

    goto LABEL_25;
  }

  if (g_FPE_LogSeverity)
  {
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v15 = *(g_TCU + 8);
    }

    else
    {
      v15 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Set_Mat_Const_Cond", 1378, v14, v15, a4, v11 * v10);
  }

  g_FPE_AssertFlag = 1;
  v24 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a4, a5, 0, 0);
}

const char *Set_Mat_I(const char *result, const char *a2, int *a3, double a4)
{
  v5 = result;
  v17 = *MEMORY[0x29EDCA608];
  if (result >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v7 = *(g_TCU + 8);
      }

      else
      {
        v7 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Set_Mat_I", 1408, v6, v7, v5, v5);
    }

    g_FPE_AssertFlag = 1;
    *a3 = 0;
LABEL_16:
    v15 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (result * result <= a2)
  {
    *a3 = result;
    a3[1] = result;
    result = Set_Mat_Const(result, result, a2, a3, 0.0);
    if (v5)
    {
      v12 = 0;
      v13 = a3[1] + 1;
      v14 = v5;
      do
      {
        *&a3[2 * v12 + 2] = a4;
        v12 += v13;
        --v14;
      }

      while (v14);
    }

    goto LABEL_16;
  }

  if (g_FPE_LogSeverity)
  {
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v10 = *(g_TCU + 8);
    }

    else
    {
      v10 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Set_Mat_I", 1416, v9, v10, a2, v5 * v5);
  }

  g_FPE_AssertFlag = 1;
  v16 = *MEMORY[0x29EDCA608];

  return Set_Mat_Size(a2, a3, 0, 0);
}

void Exp_Mat(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  if (v8 * *a3 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v13 = 0;
      v14 = 0;
      v15 = a3 + 2;
      v16 = a5 + 2;
      do
      {
        if (v8)
        {
          v17 = a3[1] * v14;
          v18 = v8;
          v19 = v13;
          do
          {
            *&v16[2 * v19++] = exp(*&v15[2 * v17++] * a1);
            --v18;
          }

          while (v18);
        }

        ++v14;
        v13 += v8;
      }

      while (v14 != v7);
    }

    v20 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Exp_Mat", 1447, v9, v10, a4, v8 * v7);
    }

    g_FPE_AssertFlag = 1;
    v21 = *MEMORY[0x29EDCA608];

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

const char *Invert_Mat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v111 = *MEMORY[0x29EDCA608];
  v11 = *v7;
  v10 = *(v7 + 1);
  if (v11 != v10)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input cannot be inverted. M=%d != N=%d", "Invert_Mat", 1479, v16, v17, v11, v10);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_105;
  }

  v12 = v9;
  v13 = v8;
  if (v11 * v11 <= v8)
  {
    v18 = v7;
    if (v11 == 1)
    {
      *v9 = 0x100000001;
      v19 = v7[1];
      if (fabs(v19) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v21 = *(g_TCU + 8);
          }

          else
          {
            v21 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "Invert_Mat", 1495, v20, v21, v18[1], 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v18[1] = 1.0;
        v19 = 1.0;
      }

      v12[1] = 1.0 / v19;
    }

    else
    {
      v95 = v9;
      bzero(&v106, 0x2008uLL);
      bzero(&v103, 0x2008uLL);
      Set_Mat_Const(v11, v11, 0x400, &v106, 0.0);
      v94 = v11;
      Set_Mat_Const(v11, v11, 0x400, &v103, 0.0);
      v22 = 0;
      v96 = *(v18 + 1);
      v23 = v96 - 1;
      v24 = v18 + 1;
      do
      {
        v108[v107 * v22] = v24[*(v18 + 1) * v22];
        v25 = v108[0];
        if (fabs(v108[0]) <= 1.0e-30)
        {
          if (g_FPE_LogSeverity)
          {
            v26 = mach_continuous_time();
            if (g_TCU)
            {
              v27 = *(g_TCU + 8);
            }

            else
            {
              v27 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_decomp_Mat", 1540, (*&g_MacClockTicksToMsRelation * v26), v27, v108[0], 1.0e-30);
          }

          g_FPE_AssertFlag = 1;
          v108[0] = 1.0;
          v25 = 1.0;
        }

        *&v105[v22] = v24[v22] / v25;
        v28 = v104;
        v105[v22 + v22 * v104] = 0x3FF0000000000000;
        ++v22;
      }

      while (v22 <= v23);
      v97 = v96 - 2;
      if (v97)
      {
        v29 = 1;
        do
        {
          v30 = v29;
          if (v29 <= 1uLL)
          {
            v31 = 1;
          }

          else
          {
            v31 = v29;
          }

          if (v29 <= v23)
          {
            v32 = *(v18 + 1);
            v33 = v107;
            v34 = v107 * v29;
            v35 = v29;
            do
            {
              v36 = v24[v29 + v35 * v32];
              v37 = v29 + v35 * v33;
              v108[v37] = v36;
              v38 = v34;
              v39 = v29;
              v40 = v31;
              do
              {
                v36 = v36 - v108[v38] * *&v105[v39];
                v108[v37] = v36;
                v39 += v28;
                ++v38;
                --v40;
              }

              while (v40);
              ++v35;
              v34 += v33;
            }

            while (v35 <= v23);
          }

          if (++v29 <= v23)
          {
            v41 = v107;
            v42 = v30 + 1;
            do
            {
              v43 = v24[v42 + *(v18 + 1) * v30];
              v44 = v42 + v28 * v30;
              *&v105[v44] = v43;
              v45 = v30 * v41;
              v46 = v42;
              v47 = v31;
              do
              {
                v43 = v43 - v108[v45] * *&v105[v46];
                *&v105[v44] = v43;
                v46 += v28;
                ++v45;
                --v47;
              }

              while (v47);
              v48 = v30 + v30 * v41;
              v49 = v108[v48];
              if (fabs(v49) <= 1.0e-30)
              {
                if (g_FPE_LogSeverity)
                {
                  v50 = mach_continuous_time();
                  if (g_TCU)
                  {
                    v51 = *(g_TCU + 8);
                  }

                  else
                  {
                    v51 = 0.0;
                  }

                  LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_decomp_Mat", 1562, (*&g_MacClockTicksToMsRelation * v50), v51, v108[v30 + v30 * v107], 1.0e-30);
                  v41 = v107;
                  v28 = v104;
                  v48 = v30 + v30 * v107;
                }

                g_FPE_AssertFlag = 1;
                v108[v48] = 1.0;
                v49 = 1.0;
              }

              *&v105[v42 + v28 * v30] = *&v105[v42 + v28 * v30] / v49;
              ++v42;
            }

            while (v42 <= v23);
          }
        }

        while (v29 <= v97);
      }

      v52 = v24[v23 + v23 * *(v18 + 1)];
      v53 = v107 * v23;
      v54 = v23 + v107 * v23;
      v108[v54] = v52;
      if (v23 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v23;
      }

      do
      {
        v52 = v52 - v108[v53] * *&v105[v23];
        v108[v54] = v52;
        v23 += v28;
        ++v53;
        --v55;
      }

      while (v55);
      result = v94;
      *v95 = v94;
      *(v95 + 1) = v94;
      v102 = 0;
      memset(v101, 0, sizeof(v101));
      v100 = 0;
      memset(v99, 0, sizeof(v99));
      if (v94)
      {
        v56 = 0;
        do
        {
          v98 = v56 + 1;
          if (v56 < 0x20)
          {
            Set_Vec_Zeros(result, 0x20, v101);
            *(v101 + v56 + 1) = 0x3FF0000000000000;
          }

          else
          {
            if (g_FPE_LogSeverity)
            {
              v57 = mach_continuous_time();
              if (g_TCU)
              {
                v58 = *(g_TCU + 8);
              }

              else
              {
                v58 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f x has %d elements, while %d are required!", "Set_Vec_one_1", 1675, (*&g_MacClockTicksToMsRelation * v57), v58, 32, v56 + 1);
            }

            g_FPE_AssertFlag = 1;
            Set_Mat_Size(0x20, v101, 0, 0);
          }

          v110 = 0;
          memset(v109, 0, sizeof(v109));
          v59 = v107;
          Set_Vec_Zeros(v107, 0x20, v99);
          Set_Vec_Zeros(v59, 0x20, v109);
          v60 = v108[0];
          if (fabs(v108[0]) <= 1.0e-30)
          {
            if (g_FPE_LogSeverity)
            {
              v61 = mach_continuous_time();
              if (g_TCU)
              {
                v62 = *(g_TCU + 8);
              }

              else
              {
                v62 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_solve_Vec", 1596, (*&g_MacClockTicksToMsRelation * v61), v62, v108[0], 1.0e-30);
            }

            g_FPE_AssertFlag = 1;
            v108[0] = 1.0;
            v60 = 1.0;
          }

          v63 = *(v101 + 1) / v60;
          *(v109 + 1) = v63;
          v64 = v59 - 1;
          if (v59 == 1)
          {
            *(v99 + 1) = v63;
          }

          else
          {
            v65 = 1;
            v66 = v107;
            do
            {
              v67 = v65;
              if (v65 <= 1uLL)
              {
                v68 = 1;
              }

              else
              {
                v68 = v65;
              }

              v69 = *(v101 + v65 + 1);
              *(v109 + v65 + 1) = v69;
              v70 = v66 * v65;
              v71 = v109 + 1;
              do
              {
                v72 = *v71++;
                v69 = v69 - v108[v70] * v72;
                *(v109 + v67 + 1) = v69;
                ++v70;
                --v68;
              }

              while (v68);
              v73 = v67 + v67 * v66;
              v74 = v108[v73];
              if (fabs(v74) <= 1.0e-30)
              {
                if (g_FPE_LogSeverity)
                {
                  v75 = mach_continuous_time();
                  if (g_TCU)
                  {
                    v76 = *(g_TCU + 8);
                  }

                  else
                  {
                    v76 = 0.0;
                  }

                  LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_solve_Vec", 1605, (*&g_MacClockTicksToMsRelation * v75), v76, v108[v67 + v67 * v107], 1.0e-30);
                  v66 = v107;
                  v69 = *(v109 + v67 + 1);
                  v73 = v67 + v67 * v107;
                }

                g_FPE_AssertFlag = 1;
                v108[v73] = 1.0;
                v74 = 1.0;
              }

              *(v109 + v67 + 1) = v69 / v74;
              v65 = v67 + 1;
            }

            while (v67 + 1 <= v64);
            *(v99 + v64 + 1) = *(v109 + v64 + 1);
            v77 = v59 - 2;
            if (v59 >= 2)
            {
              v78 = v59 + v104 * v77 - 1;
              v79 = ~v104;
              v80 = 1;
              do
              {
                v81 = v77;
                v82 = *(v109 + v77 + 1);
                *(v99 + v77 + 1) = v82;
                if (v77 < v64)
                {
                  v83 = v77 + 1;
                  v84 = v78;
                  v85 = v80;
                  do
                  {
                    v82 = v82 - *&v105[v84] * *(v99 + v83 + 1);
                    *(v99 + v81 + 1) = v82;
                    ++v83;
                    ++v84;
                    --v85;
                  }

                  while (v85);
                }

                v77 = v81 - 1;
                ++v80;
                v78 += v79;
              }

              while (v81 - 1 < v59);
            }
          }

          v86 = *v95;
          v87 = *(v95 + 1);
          if (v86 == LODWORD(v99[0]))
          {
            v88 = v99 + 1;
            if (v86)
            {
              do
              {
                v89 = *v88++;
                v95[v56 + 1] = v89;
                LODWORD(v56) = v56 + v87;
                --v86;
              }

              while (v86);
            }
          }

          else
          {
            if (g_FPE_LogSeverity)
            {
              v90 = mach_continuous_time();
              if (g_TCU)
              {
                v91 = *(g_TCU + 8);
              }

              else
              {
                v91 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f vector size doesn't match matrix size! %d -> %dx%d", "Copy_Vec_to_Mat_Col", 1698, (*&g_MacClockTicksToMsRelation * v90), v91, LODWORD(v99[0]), v86, v87);
            }

            g_FPE_AssertFlag = 1;
            *v95 = 0.0;
          }

          result = v94;
          v56 = v98;
        }

        while (v98 != v94);
      }
    }

LABEL_105:
    v92 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (g_FPE_LogSeverity)
  {
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v15 = *(g_TCU + 8);
    }

    else
    {
      v15 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Ainv has %d elements, while %d are required!", "Invert_Mat", 1485, v14, v15, v13, v11 * v11);
  }

  g_FPE_AssertFlag = 1;
  v93 = *MEMORY[0x29EDCA608];

  return Set_Mat_Size(v13, v12, 0, 0);
}

void Set_Vec_Zeros(unsigned int a1, const char *a2, int *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v6 = *(g_TCU + 8);
      }

      else
      {
        v6 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested vector too big: %dx%d", "Set_Vec_Zeros", 1633, v5, v6, a1, 1);
    }

    g_FPE_AssertFlag = 1;
    *a3 = 0;
    goto LABEL_16;
  }

  if (a2 >= a1)
  {
    *a3 = a1;
    a3[1] = 1;
    if (!a1)
    {
LABEL_16:
      v11 = *MEMORY[0x29EDCA608];
      return;
    }

    v10 = *MEMORY[0x29EDCA608];

    bzero(a3 + 2, 8 * a1);
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v9 = *(g_TCU + 8);
      }

      else
      {
        v9 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f x has %d elements, while %d are required!", "Set_Vec_Zeros", 1648, v8, v9, a2, a1);
    }

    g_FPE_AssertFlag = 1;
    v12 = *MEMORY[0x29EDCA608];

    Set_Mat_Size(a2, a3, 0, 0);
  }
}

void Copy_Vec_to_Mat_diag(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, unsigned int *a8)
{
  v25 = *MEMORY[0x29EDCA608];
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == 1 || v10 == 1)
  {
    v12 = *a8;
    v13 = a8[1];
    v14 = (v10 * v9);
    if (v14)
    {
      v15 = v12 > a3;
    }

    else
    {
      v15 = 0;
    }

    if (v15 && v13 > a4)
    {
      v17 = a6 + a4;
      v18 = a4 + v13 * a3;
      v19 = a5 + a3;
      v20 = 1;
      do
      {
        *&a8[2 * v18 + 2] = *&a2[2 * v20];
        if (v20 >= v14)
        {
          break;
        }

        if (v19 >= v12)
        {
          break;
        }

        ++v20;
        v18 += a6 + v13 * a5;
        v19 += a5;
        v21 = v17 >= v13;
        v17 += a6;
      }

      while (!v21);
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v23 = *(g_TCU + 8);
      }

      else
      {
        v23 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f first input is not a vector! size = %dx%d", "Copy_Vec_to_Mat_diag", 1735, v22, v23, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a8 = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
}

void Copy_Mat_diag_to_Vec(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, uint64_t a5, _DWORD *a6)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v9 = a4 + a3;
    if (v7 < a4 + a3)
    {
      v9 = *a2;
    }

    if (a4)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    *a6 = v10 - a3;
    a6[1] = 1;
    if (v10 > a3)
    {
      v11 = a2[1] + 1;
      v12 = a6 + 2;
      v13 = v10 - a3;
      v14 = a3 * v11;
      do
      {
        *v12++ = *&a2[2 * v14 + 2];
        v14 += v11;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f first input is not a square matrix! size = %dx%d", "Copy_Mat_diag_to_Vec", 1767, v15, v16, v7, v8);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
}

void Copy_SubMat_to_Mat(double a1, uint64_t a2, _DWORD *a3, int a4, int a5, uint64_t a6, int *a7)
{
  v27 = *MEMORY[0x29EDCA608];
  v7 = a7[1];
  v8 = a3[1];
  if (*a7 >= (*a3 + a4))
  {
    v9 = *a3 + a4;
  }

  else
  {
    v9 = *a7;
  }

  v10 = v9 - a4;
  v11 = v8 + a5;
  if (v7 < v8 + a5)
  {
    v11 = a7[1];
  }

  if (a1 == 1.0)
  {
    if (v9 != a4)
    {
      v12 = 0;
      v13 = 0;
      v14 = a3 + 2;
      v15 = a5 + v7 * a4;
      do
      {
        v16 = v12;
        v17 = v15;
        v18 = (v11 - a5);
        if (v11 != a5)
        {
          do
          {
            *&a7[2 * v17++ + 2] = *&v14[2 * v16++];
            --v18;
          }

          while (v18);
        }

        ++v13;
        v15 += v7;
        v12 += v8;
      }

      while (v13 != v10);
    }
  }

  else if (v9 != a4)
  {
    v19 = 0;
    v20 = 0;
    v21 = a3 + 2;
    v22 = a5 + v7 * a4;
    do
    {
      v23 = v19;
      v24 = v22;
      v25 = (v11 - a5);
      if (v11 != a5)
      {
        do
        {
          *&a7[2 * v24++ + 2] = *&v21[2 * v23++] * a1;
          --v25;
        }

        while (v25);
      }

      ++v20;
      v22 += v7;
      v19 += v8;
    }

    while (v20 != v10);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void Copy_SubMat_from_Mat(double a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, int *a9)
{
  v13 = a4;
  v22 = *MEMORY[0x29EDCA608];
  if ((a6 + a4) <= *a3 && a7 + a5 <= a3[1])
  {
    *a9 = a6;
    a9[1] = a7;
    if (a6)
    {
      v16 = 0;
      for (i = 0; i != a6; ++i)
      {
        if (a7)
        {
          v18 = a5 + a3[1] * v13;
          v19 = v16;
          v20 = a7;
          do
          {
            *&a9[2 * v19++ + 2] = *&a3[2 * v18++ + 2] * a1;
            --v20;
          }

          while (v20);
        }

        ++v13;
        v16 += a7;
      }
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v15 = *(g_TCU + 8);
      }

      else
      {
        v15 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix is bigger than input matrix: m0=%d, n0=%d, size=%dx%d", "Copy_SubMat_from_Mat", 1859, v14, v15, v13, a5, a6, a7);
    }

    g_FPE_AssertFlag = 1;
    *a9 = 0;
  }

  v21 = *MEMORY[0x29EDCA608];
}