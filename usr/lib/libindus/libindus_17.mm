char *NK_Validate_Cor(char *result, double *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, char *a7, _BYTE *a8, uint64_t a9, _WORD *a10, uint64_t a11, uint64_t a12, double *a13, double *a14, uint64_t a15, uint64_t a16, _DWORD *a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, unsigned int *a21, uint64_t a22)
{
  v110 = *MEMORY[0x29EDCA608];
  *(a15 + 8) = 0;
  *a15 = 0;
  v23 = *(a12 + 16);
  *a16 = *a12;
  *(a16 + 16) = v23;
  v24 = *(a12 + 32);
  v25 = *(a12 + 48);
  v26 = *(a12 + 80);
  *(a16 + 64) = *(a12 + 64);
  *(a16 + 80) = v26;
  *(a16 + 32) = v24;
  *(a16 + 48) = v25;
  v27 = (a4 + 16);
  for (i = 48; i != 72; i += 8)
  {
    v29 = *(v27 - 1) * *(a12 + 56) + *(v27 - 2) * *(a12 + 48);
    v30 = *v27;
    v27 += 3;
    *(a16 + i) = v29 + v30 * *(a12 + 64);
  }

  v31 = (a4 + 16);
  do
  {
    v32 = *(v31 - 1) * *(a12 + 80) + *(v31 - 2) * *(a12 + 72);
    v33 = *v31;
    v31 += 3;
    *(a16 + i) = v32 + v33 * *(a12 + 88);
    i += 8;
  }

  while (i != 96);
  v34 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  do
  {
    *&v103[v34 / 8] = vmulq_f64(*(a16 + v34), *(a16 + v34));
    *(&v97 + v34) = vmulq_f64(*(a3 + v34), _Q0);
    v34 += 16;
  }

  while (v34 != 96);
  v39 = vdupq_n_s64(0x40C3880000000000uLL);
  v40 = vmaxnmq_f64(v97, v39);
  v41 = vmaxnmq_f64(v98, xmmword_299053C80);
  v97 = v40;
  v98 = v41;
  v42 = fmax(v99, 400.0);
  v99 = v42;
  v43 = vmaxnmq_f64(v100, v39);
  v44 = vmaxnmq_f64(v101, xmmword_299053C90);
  v100 = v43;
  v101 = v44;
  v45 = vmaxnmq_f64(v102, vdupq_n_s64(0x4079000000000000uLL));
  v102 = v45;
  v46 = fabs(*(a16 + 40));
  *a17 = v46;
  v47 = 0.0;
  v48 = 8;
  do
  {
    v47 = v47 + *(a16 + 8 * v48) * *(a16 + 8 * v48);
    v49 = v48 - 5;
    --v48;
  }

  while (v49 > 1);
  *a18 = sqrt(v47);
  v50 = 0.0;
  *a19 = sqrt(*(a16 + 56) * *(a16 + 56) + 0.0 + *(a16 + 48) * *(a16 + 48));
  *a20 = fabs(*(a16 + 64));
  v51 = 11;
  do
  {
    v50 = v50 + *(a16 + 8 * v51) * *(a16 + 8 * v51);
    v52 = v51 - 8;
    --v51;
  }

  while (v52 > 1);
  *a21 = sqrt(v50);
  if (*a9)
  {
    goto LABEL_167;
  }

  if (*a7)
  {
    v53 = 1;
    v54 = 1;
    v55 = 1;
  }

  else
  {
    v55 = a13[1] >= 5.0;
    v54 = a13[2] >= 5.0;
    v53 = a13[3] >= 3.0 || *(a3 + 24) >= 9.0;
    if (*a13 < 5.0 && (*a2 >= 100000000.0 || v103[0] >= v40.f64[0]))
    {
      goto LABEL_29;
    }
  }

  if (result[7] || *(result + 9) == 1 || *(result + 10) == 2 || fabs(*a16) < fmin(*a13, 5.0))
  {
    *a15 = 1;
  }

LABEL_29:
  if (v55 || (a2[1] < 100000000.0 ? (v57 = v103[1] < v40.f64[1]) : (v57 = 0), v57))
  {
    if (result[12] || *(result + 9) == 1 || *(result + 10) == 2 || fabs(*(a16 + 8)) < fmin(a13[1], 5.0))
    {
      *(a15 + 1) = 1;
    }
  }

  if (v54 || (a2[2] < 100000000.0 ? (v58 = v103[2] < v41.f64[0]) : (v58 = 0), v58))
  {
    if (result[17] || *(result + 9) == 1 || *(result + 11) == 2 || fabs(*(a16 + 16)) < fmin(a13[2], 5.0))
    {
      *(a15 + 2) = 1;
    }
  }

  v59 = 20.0;
  if (!v53)
  {
    if (a2[3] >= 9.0 || v103[3] >= v41.f64[1])
    {
      goto LABEL_58;
    }

    v59 = 20.0;
    if (a13[3] < 20.0)
    {
      v59 = a13[3];
    }
  }

  if (fabs(*(a16 + 24)) < v59)
  {
    *(a15 + 3) = 1;
  }

LABEL_58:
  v60 = *a7;
  if ((*a7 & 1) == 0 && (a2[4] >= 900.0 || v103[4] >= v42))
  {
    v60 = 0;
    goto LABEL_95;
  }

  if (result[5] || *(result + 12) == 1 || fabs(*(a16 + 32)) < fmin(a13[4], 0.5))
  {
    *(a15 + 4) = 1;
    v60 = *a7;
  }

  if ((v60 & 1) == 0)
  {
LABEL_95:
    if (a2[6] >= 100000000.0 || a2[7] >= 100000000.0 || a2[8] >= 100000000.0 || v104 >= v43.f64[0] || v105 >= v43.f64[1] || v106 >= v44.f64[0])
    {
      goto LABEL_101;
    }
  }

  v61 = *(result + 14);
  v62 = *(result + 15);
  if (v61 == 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = 3;
  }

  v64 = v63 - (v62 == 1);
  v65 = result[2];
  if (v64 <= v65 || v104 < a14[6] && v105 < a14[7] && v106 < a14[8])
  {
    goto LABEL_93;
  }

  if (v61)
  {
    v66 = v65 + 2;
  }

  else
  {
    v66 = result[2];
  }

  if (v62)
  {
    ++v66;
  }

  if (*(result + 9))
  {
    ++v66;
  }

  if (*(result + 17) || *(result + 18))
  {
    ++v66;
  }

  if (*(result + 19) || *(result + 21))
  {
    ++v66;
  }

  if (*(result + 20) || *(result + 22))
  {
    ++v66;
  }

  if (*(result + 23) || *(result + 24))
  {
    ++v66;
  }

  if (v66 >= 3)
  {
LABEL_93:
    *(a15 + 6) = 1;
    v60 = *a7;
  }

LABEL_101:
  if ((v60 & 1) == 0)
  {
    v71 = a5 > 8 ? 100000000.0 : dbl_299053CB0[a5 & 0xF];
    if (a2[9] >= v71)
    {
      goto LABEL_153;
    }

    v72 = a5 > 8 ? 100000000.0 : dbl_299053CB0[a5 & 0xF];
    if (a2[10] >= v72)
    {
      goto LABEL_153;
    }

    v76 = a5 > 8 ? 100000000.0 : dbl_299053CB0[a5 & 0xF];
    if (a2[11] >= v76 || v107 >= v44.f64[1] || v108 >= v45.f64[0] || v109 >= v45.f64[1])
    {
      goto LABEL_153;
    }
  }

  v67 = *(result + 16);
  if (v67 == 1)
  {
    v68 = 2;
  }

  else
  {
    v68 = 3;
  }

  v69 = result[5];
  if (v68 <= v69 || v107 < a14[9] && v108 < a14[10] && v109 < a14[11])
  {
    goto LABEL_137;
  }

  if (v69 >= 2 && *(a15 + 4) == 1)
  {
    v70 = (v69 - 1);
  }

  else
  {
    v70 = 0;
  }

  if (v67)
  {
    v73 = v70 + 1;
  }

  else
  {
    v73 = v70;
  }

  if (*(result + 12))
  {
    ++v73;
  }

  if (*(result + 17) || *(result + 18))
  {
    ++v73;
  }

  if (*(result + 19) || *(result + 21))
  {
    ++v73;
  }

  if (*(result + 20) || *(result + 22))
  {
    ++v73;
  }

  if (*(result + 23) || *(result + 24))
  {
    ++v73;
  }

  if (v73 > 2)
  {
LABEL_137:
    v74 = 1;
    v75 = 9;
LABEL_138:
    *(a15 + v75) = v74;
    goto LABEL_153;
  }

  if (!result[2] && *(result + 14) != 1 && *(result + 15) != 1 && *(result + 9) != 1)
  {
    v74 = 0;
    v75 = 6;
    goto LABEL_138;
  }

LABEL_153:
  if ((*(result + 8) - 1) < 2)
  {
    goto LABEL_154;
  }

  if (result[2] >= 3u && ((*a15 & 1) != 0 || (*(a15 + 1) & 1) != 0 || *(a15 + 2) == 1) && *(a15 + 6) == 1 && a2[5] < 250000.0)
  {
    v77 = 0;
    v78 = 0.0;
    do
    {
      v78 = v78 + a2[v77 + 6];
      ++v77;
    }

    while (v77 != 3);
    if (v78 < 250000.0)
    {
      goto LABEL_154;
    }
  }

  if ((*a7 & 1) == 0 && a2[5] < 100.0 && v46 < a13[5])
  {
LABEL_154:
    *(a15 + 5) = 1;
  }

LABEL_167:
  if (*a18 >= 0xC351u && *(a15 + 6) == 1 && (*a7 & 1) == 0)
  {
    v79 = 0;
    *(a15 + 8) = 0;
    *a15 = 0;
    *a9 = 1;
    *(a9 + 4) = 96;
    *a8 = 0;
    *a7 = 1;
    do
    {
      a13[v79] = 10098990.0;
      a14[v79] = 1.00979801e14;
      *(a22 + v79++) = 0;
    }

    while (v79 != 12);
    if ((*(a11 + 444) & 1) == 0)
    {
      ++*(a11 + 446);
    }

    v96 = a5;
    v80 = a8;
    v81 = 0;
    *(a11 + 444) = 1;
    *&v82 = 0x1111111111111111;
    *(&v82 + 1) = 0x1111111111111111;
    *(a11 + 448) = v82;
    *(a11 + 464) = v82;
    *(a11 + 480) = v82;
    *(a11 + 496) = v82;
    *(a11 + 512) = v82;
    *(a11 + 528) = v82;
    *(a11 + 544) = v82;
    *(a11 + 560) = v82;
    v83 = vdupq_n_s32(a6);
    do
    {
      *(a11 + 576 + v81) = v83;
      v81 += 16;
    }

    while (v81 != 512);
    result = EvCrt_v("ChanReset ALL : NKVC  Large Pos corr %d m  Vel corr %d m/s  Count %d", *a18, *a21, *(a11 + 446));
    a8 = v80;
    a5 = v96;
  }

  if (*a7 == 1 && *a18 >= 0x927C01u && *(a15 + 6) == 1)
  {
    v84 = 9600000.0 / *a18;
    *a12 = vmulq_n_f64(*a12, v84);
    *(a12 + 16) = v84 * *(a12 + 16);
    v85 = 8;
    do
    {
      *(a12 + 8 * v85) = v84 * *(a12 + 8 * v85);
      v86 = v85 - 5;
      --v85;
    }

    while (v86 > 1);
    v87 = 0;
    *(a15 + 3) = 0;
    *a15 = 257;
    *(a15 + 2) = 1;
    *(a15 + 6) = 1;
    *(a15 + 11) = 0;
    v88 = *(a12 + 16);
    *a16 = *a12;
    *(a16 + 16) = v88;
    v89 = *(a12 + 32);
    v90 = *(a12 + 48);
    v91 = *(a12 + 80);
    *(a16 + 64) = *(a12 + 64);
    *(a16 + 80) = v91;
    *(a16 + 32) = v89;
    *(a16 + 48) = v90;
    *a8 = 0;
    do
    {
      a13[v87] = 10098990.0;
      a14[v87++] = 1.00979801e14;
    }

    while (v87 != 12);
  }

  if (a5 >= 5)
  {
    v92 = 1200;
  }

  else
  {
    v92 = 600;
  }

  if (*(a15 + 4) == 1 && fabs(*(a12 + 32)) > 15000.0 || (v93 = *(a15 + 9), v93 == 1) && *a21 > v92)
  {
    LOBYTE(v93) = 0;
    *(a15 + 4) = 0;
    *(a15 + 9) = 0;
    if (*a10 <= 2u)
    {
      LOBYTE(v93) = 0;
      *a10 = 3;
    }
  }

  if (*a18 >= 0x1D4C1u)
  {
    LOBYTE(v93) = 0;
    *(a15 + 4) = 0;
    *(a15 + 9) = 0;
  }

  v94 = *(a15 + 6);
  *(a15 + 7) = v94;
  *(a15 + 8) = v94;
  *(a15 + 10) = v93;
  *(a15 + 11) = v93;
  v95 = *MEMORY[0x29EDCA608];
  return result;
}

void Apply_Q_Boost(double a1, unsigned int a2, unsigned int a3, double *a4, unsigned int *a5, double *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  do
  {
    bzero(a6, 8 * a2);
    a6[a2++] = 1.0;
    v13 = 0;
    if (a1 > 0.0)
    {
      rnk1_core(a4, a2, a1, a6, &v13);
      if (v13)
      {
        ++*a5;
      }
    }

    --v11;
  }

  while (v11);
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t Hal_CommsItfInitialize(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_CommsInitPcie");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!gp_Comm)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx comm obj\n");
      goto LABEL_12;
    }

LABEL_13:
    v2 = 0;
    goto LABEL_14;
  }

  if (!(*(*gp_Comm + 16))(gp_Comm) || ((*(*gp_Comm + 112))(gp_Comm) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx open port\n");
LABEL_12:
      gnssOsa_PrintLog(__str, 1, 1, 0);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (g_LbsOsaTrace_Config < 4)
  {
    v2 = 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_CommsInitPcie");
    v2 = 1;
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_14:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void Hal_CommsItfDeInitialize(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_CommsDeInitPcie");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Skipping GnssPort close\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_CommsDeInitPcie");
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v2 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_CommsDeInitPcie");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

uint64_t Hal_CommsItfWriteData(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x29EDCA608];
  if (g_IsSPIEnabled != 1)
  {
    if ((*(*gp_Comm + 32))(gp_Comm))
    {
      if ((*(*gp_Comm + 96))(gp_Comm, a1, v2))
      {
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Writesuccess,%u\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 68, "Hal_CommsItfWriteDataPcie", v2);
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        goto LABEL_15;
      }

      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
        goto LABEL_13;
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Port\n");
LABEL_13:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v2 = 0xFFFFFFFFLL;
LABEL_15:
    v7 = *MEMORY[0x29EDCA608];
    return v2;
  }

  v4 = *MEMORY[0x29EDCA608];

  return Hal35_SPIWrite(a1, a2);
}

uint64_t Hal_CommsItfReadData(unsigned __int8 *a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (((*(*gp_Comm + 32))(gp_Comm) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Port\n");
LABEL_9:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_10:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v4 = (*(*gp_Comm + 56))(gp_Comm, a1, a2);
  if (v4 < 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = v4;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: read,%zd\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 68, "Hal_CommsItfReadData", v5);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Hal_SetReadCbAsync(void (*a1)(unsigned __int8 *, unsigned int))
{
  v8[4] = *MEMORY[0x29EDCA608];
  if (!a1 || !gp_Comm)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: failed\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_SetReadCbAsync");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    goto LABEL_11;
  }

  v8[0] = &unk_2A1F2B040;
  v8[1] = a1;
  v8[3] = v8;
  v1 = (*(*gp_Comm + 80))(gp_Comm, v8);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v8);
  if (!v1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: read cb set failed\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal_SetReadCbAsync");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: read via cb\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_SetReadCbAsync");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = 1;
LABEL_12:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Hal25_TriggerTimeMarkStrobe(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal25_TriggerTimeMarkStrobe");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gp_Comm;
  if (gp_Comm)
  {
    (*(*gp_Comm + 144))(__str, gp_Comm);
    v4 = *__str;
    v5 = v12;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TM trigger via comm interface\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal25_TriggerTimeMarkStrobe");
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time LB,%llu,UB,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 68, "Hal25_TriggerTimeMarkStrobe", v4, v5);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    if (a1)
    {
      *a1 = (((v5 + v4) >> 1) / 1000000.0 + 0.5);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx comm obj\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal25_TriggerTimeMarkStrobe", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = v3 != 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::~__func()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C296280);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  *a2 = &unk_2A1F2B040;
  a2[1] = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::destroy_deallocate(void *__p)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  operator delete(__p);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  v6 = *MEMORY[0x29EDCA608];

  return v3(v4, v5);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  {
    result = a1 + 8;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::target_type()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void gnss::GnssAdaptDevice::injectAssistanceFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v8 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20injectAssistanceFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS_16SvPositionSourceENS1_8functionIFvONS_24DecodedExtendedEphemerisEEEENS8_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_7;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a5);
    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v13, a4);
    __p = 0;
    v15 = 0;
    v16 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v7, v7 - v6);
    dispatch_async(v8, block);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistanceFile", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice20injectAssistanceFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS_16SvPositionSourceENS1_8functionIFvONS_24DecodedExtendedEphemerisEEEENS8_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v29[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistanceFile_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v4 = v2 + 200;
    if (__str != (v2 + 200))
    {
      v5 = v28;
      v6 = *(v2 + 224);
      if (v28 == __str)
      {
        if (v6 == v4)
        {
          (*(*v28 + 24))();
          (*(*v28 + 32))(v28);
          v28 = 0;
          (*(**(v2 + 224) + 24))(*(v2 + 224), __str);
          (*(**(v2 + 224) + 32))(*(v2 + 224));
          *(v2 + 224) = 0;
          v28 = __str;
          (*(v29[0] + 24))(v29, v2 + 200);
          (*(v29[0] + 32))(v29);
        }

        else
        {
          (*(*v28 + 24))();
          (*(*v28 + 32))(v28);
          v28 = *(v2 + 224);
        }

        *(v2 + 224) = v4;
      }

      else if (v6 == v4)
      {
        (*(*v6 + 24))(*(v2 + 224), __str);
        (*(**(v2 + 224) + 32))(*(v2 + 224));
        *(v2 + 224) = v28;
        v28 = __str;
      }

      else
      {
        v28 = *(v2 + 224);
        *(v2 + 224) = v5;
      }
    }

    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](__str);
    v9 = *(a1 + 104);
    v10 = *(a1 + 112);
    if (v9 == v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v25, "injectAssistanceFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Prediction\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "injectAssistanceFile_block_invoke", 515);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v14 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "injectAssistanceFile_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else if ((v10 - v9 - 583897) >= 0xFFFFFFFFFFF717A7)
    {
      v15 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v15, v23);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
      v16 = GNS_EeInjectOrbitData(v15, *(a1 + 104), *(a1 + 112) - *(a1 + 104));
      if (v16 == 1)
      {
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v17 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EESize,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "injectAssistanceFile_block_invoke", *(a1 + 112) - *(a1 + 104));
          gnssOsa_PrintLog(__str, 4, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v18 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "injectAssistanceFile_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v16, v22, "injectAssistanceFile_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v15);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v19 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EeInjectOrbitData Resp,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "injectAssistanceFile_block_invoke", 257, v16);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v20 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "injectAssistanceFile_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v24, "injectAssistanceFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx File size,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "injectAssistanceFile_block_invoke", 515, *(a1 + 112) - *(a1 + 104));
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v12 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "injectAssistanceFile_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v26, "injectAssistanceFile_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "injectAssistanceFile_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "injectAssistanceFile_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_299018714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100]((a1 + 9), a2 + 72);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 13), *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2990187F8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](a1 + 72);
  v3 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::injectRtiFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v7 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13injectRtiFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS1_8functionIFvONS_10DecodedRtiEEEENS7_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_13;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v12, a3);
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v5, v6, v6 - v5);
    dispatch_async(v7, block);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectRtiFile", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice13injectRtiFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS1_8functionIFvONS_10DecodedRtiEEEENS7_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v29[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectRtiFile_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v4 = v2 + 232;
    if (__str != (v2 + 232))
    {
      v5 = v28;
      v6 = *(v2 + 256);
      if (v28 == __str)
      {
        if (v6 == v4)
        {
          (*(*v28 + 24))();
          (*(*v28 + 32))(v28);
          v28 = 0;
          (*(**(v2 + 256) + 24))(*(v2 + 256), __str);
          (*(**(v2 + 256) + 32))(*(v2 + 256));
          *(v2 + 256) = 0;
          v28 = __str;
          (*(v29[0] + 24))(v29, v2 + 232);
          (*(v29[0] + 32))(v29);
        }

        else
        {
          (*(*v28 + 24))();
          (*(*v28 + 32))(v28);
          v28 = *(v2 + 256);
        }

        *(v2 + 256) = v4;
      }

      else if (v6 == v4)
      {
        (*(*v6 + 24))(*(v2 + 256), __str);
        (*(**(v2 + 256) + 32))(*(v2 + 256));
        *(v2 + 256) = v28;
        v28 = __str;
      }

      else
      {
        v28 = *(v2 + 256);
        *(v2 + 256) = v5;
      }
    }

    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](__str);
    v9 = *(a1 + 104);
    v10 = *(a1 + 112);
    if (v9 == v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v25, "injectRtiFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FileStore\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "injectRtiFile_block_invoke", 515);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectRtiFile_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else if (v10 - v9 == 128)
    {
      v11 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v11, v23);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
      v12 = GNS_EeInjectRtiData(v11, *(a1 + 104), *(a1 + 112) - *(a1 + 104));
      if (v12 == 1)
      {
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v13 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RtiSize,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 73, "injectRtiFile_block_invoke", *(a1 + 112) - *(a1 + 104));
          gnssOsa_PrintLog(__str, 4, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v14 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "injectRtiFile_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v12, v22, "injectRtiFile_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v11);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v19 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EEInjectRti,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "injectRtiFile_block_invoke", 257, v12);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v20 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "injectRtiFile_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v24, "injectRtiFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v17 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Size,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "injectRtiFile_block_invoke", 515, *(a1 + 112) - *(a1 + 104));
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v18 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "injectRtiFile_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v26, "injectRtiFile_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "injectRtiFile_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "injectRtiFile_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_299019318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100]((a1 + 9), a2 + 72);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 13), *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2990193FC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](a1 + 72);
  v3 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::Ga04_00RegisterGnsEeStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, __int128 *a3)
{
  v4 = a1;
  v24 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    if (a3)
    {
      v6 = DeviceInstance;
      v7 = *a3;
      v8 = *(a3 + 16);
      *v14 = *(a3 + 17);
      *&v14[15] = *(a3 + 4);
      if (g_LbsOsaTrace_Config >= 4)
      {
        v13 = *a3;
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Api,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse", *(a3 + 1), *(a3 + 2));
        gnssOsa_PrintLog(__str, 4, 1, 0);
        v7 = v13;
      }

      v10 = *(v6 + 152);
      *__str = MEMORY[0x29EDCA5F8];
      v16 = 0x40000000;
      v17 = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke;
      v18 = &__block_descriptor_tmp_30_0;
      v19 = v6;
      v20 = v7;
      v21 = v8;
      *v22 = *v14;
      *&v22[15] = *&v14[15];
      v23 = v4;
      dispatch_async(v10, __str);
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EeMsgData\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v46 = 0;
  v2 = v1 + 128;
  v3 = *(v1 + 128);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 40);
  v6 = v1 + 128;
  v7 = *(v1 + 128);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v2 && v5 >= *(v6 + 32))
  {
    v14 = v1 + 128;
    do
    {
      v15 = *(v3 + 32);
      v9 = v15 >= v5;
      v16 = v15 < v5;
      if (v9)
      {
        v14 = v3;
      }

      v3 = *(v3 + 8 * v16);
    }

    while (v3);
    if (v14 == v2 || v5 < *(v14 + 32))
    {
      v14 = v1 + 128;
    }

    std::function<void ()(gnss::Result)>::operator=(v45, v14 + 40);
    std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__remove_node_pointer((v1 + 120), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v46)
    {
      v17 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      v18 = *(a1 + 44);
      if (v18)
      {
        if (v18 == 1)
        {
          if (*(v1 + 224))
          {
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v43, v1 + 200);
            v29 = 0;
            v30 = &v29;
            v31 = 0x4802000000;
            v32 = __Block_byref_object_copy__1;
            v33 = __Block_byref_object_dispose__1;
            LOBYTE(v34) = 0;
            v36 = *(a1 + 56);
            v35 = *(a1 + 64);
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v23 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ORB Data StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", v30[6], v30[7]);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            v24 = *(v1 + 160);
            v41[0] = MEMORY[0x29EDCA5F8];
            v41[1] = 1174405120;
            v41[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2;
            v41[3] = &unk_2A1F2B148;
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v42, v43);
            v41[4] = &v29;
            dispatch_async(v24, v41);
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v42);
            _Block_object_dispose(&v29, 8);
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v43);
          }
        }

        else if (v18 == 2)
        {
          if (*(v1 + 256))
          {
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v43, v1 + 232);
            v29 = 0;
            v30 = &v29;
            v31 = 0x3802000000;
            v32 = __Block_byref_object_copy__21_0;
            LOBYTE(v35) = *(a1 + 56);
            v19 = *(a1 + 64);
            v33 = __Block_byref_object_dispose__22_0;
            v34 = v19;
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v20 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI Data StartGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", v30[5]);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            v21 = *(v1 + 160);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_24;
            block[3] = &unk_2A1F2B180;
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v40, v43);
            block[4] = &v29;
            dispatch_async(v21, block);
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v40);
            _Block_object_dispose(&v29, 8);
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v43);
          }
        }

        else if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v26 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ApiState,%u\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 87, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 262, *(a1 + 44));
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }
      }

      else if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v25 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ApiType\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 515);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v27 = *(v1 + 160);
      v37[0] = MEMORY[0x29EDCA5F8];
      v37[1] = 1174405120;
      v37[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_27;
      v37[3] = &__block_descriptor_tmp_28_0;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, v45);
      v38[8] = v17;
      dispatch_async(v27, v37);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v28 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ee Type,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", *(a1 + 80), *(a1 + 44));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v22 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Lut Hdl NULL\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 87, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 516);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }
  }

  else
  {
LABEL_9:
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Lut Hdl\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299019DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a15, 8);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](&a51);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51 - 104);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  result = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 40) = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2(uint64_t a1)
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

uint64_t __copy_helper_block_e8_40c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v2);
}

uint64_t __Block_byref_object_copy__21_0(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_24(uint64_t a1)
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

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_27(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *DD_Delete_Bad_BDS_Data(void *result)
{
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v2 = result + 3189;
  v3 = result + 5583;
  v4 = (p_NV + 13368);
  v5 = p_NV + 16896;
  do
  {
    v6 = result[3180];
    if (*(v6 + v1) == 1)
    {
      *(v6 + v1) = 0;
      *(result[3178] + v1) = 0;
      *(result[3182] + v1) = 0;
      *(v2 + 36) = 0;
      *(v2 + 7) = 0uLL;
      *(v2 + 8) = 0uLL;
      *(v2 + 5) = 0uLL;
      *(v2 + 6) = 0uLL;
      *(v2 + 3) = 0uLL;
      *(v2 + 4) = 0uLL;
      *(v2 + 1) = 0uLL;
      *(v2 + 2) = 0uLL;
      *v2 = 0uLL;
      *(result[3188] + v1) = 0;
      *(result[3185] + v1) = 1;
      *(v5 - 8) = 0xFFFFFFFFLL;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 32) = 0uLL;
      *(v5 + 48) = 0uLL;
      *(v5 + 64) = 0uLL;
      *(v5 + 80) = 0uLL;
      *(v5 + 96) = 0uLL;
      *(v5 + 112) = 0uLL;
      *(v5 + 128) = 0uLL;
      *(v5 + 144) = 0;
    }

    v7 = result[3181];
    if (*(v7 + v1) == 1)
    {
      *(v7 + v1) = 0;
      *(result[3179] + v1) = 0;
      *(result[3184] + v1) = 0;
      *(v3 + 27) = 0uLL;
      *v3 = 0uLL;
      v3[1] = 0uLL;
      *(result[3188] + v1) = 0;
      *(v4 - 1) = 0xFFFFFFFFLL;
      *v4 = 0uLL;
      v4[1] = 0uLL;
      *(v4 + 27) = 0uLL;
    }

    ++v1;
    v4 = (v4 + 56);
    v5 += 160;
    v3 = (v3 + 44);
    v2 += 19;
  }

  while (v1 != 63);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_BDS_Data(uint64_t result, void *a2)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2 + 3189;
  v4 = a2 + 5583;
  v5 = (p_NV + 13368);
  v6 = p_NV + 16896;
  do
  {
    if (*(result + v2) == 1)
    {
      *(a2[3180] + v2) = 0;
      *(a2[3178] + v2) = 0;
      *(a2[3182] + v2) = 0;
      *(v3 + 36) = 0;
      *(v3 + 7) = 0uLL;
      *(v3 + 8) = 0uLL;
      *(v3 + 5) = 0uLL;
      *(v3 + 6) = 0uLL;
      *(v3 + 3) = 0uLL;
      *(v3 + 4) = 0uLL;
      *(v3 + 1) = 0uLL;
      *(v3 + 2) = 0uLL;
      *v3 = 0uLL;
      *(a2[3183] + v2) = 0;
      *(v3 + 2430) = 0;
      *(v3 + 1211) = 0uLL;
      *(v3 + 1213) = 0uLL;
      *(v3 + 1207) = 0uLL;
      *(v3 + 1209) = 0uLL;
      *(v3 + 1203) = 0uLL;
      *(v3 + 1205) = 0uLL;
      *(v3 + 1199) = 0uLL;
      *(v3 + 1201) = 0uLL;
      *(v3 + 1197) = 0uLL;
      *(a2[3188] + v2) = 0;
      *(a2[3185] + v2) = 1;
      *(v6 - 8) = 0xFFFFFFFFLL;
      *v6 = 0uLL;
      *(v6 + 16) = 0uLL;
      *(v6 + 32) = 0uLL;
      *(v6 + 48) = 0uLL;
      *(v6 + 64) = 0uLL;
      *(v6 + 80) = 0uLL;
      *(v6 + 96) = 0uLL;
      *(v6 + 112) = 0uLL;
      *(v6 + 128) = 0uLL;
      *(v6 + 144) = 0;
      *(a2[3181] + v2) = 0;
      *(a2[3179] + v2) = 0;
      *(a2[3184] + v2) = 0;
      *(v4 + 27) = 0uLL;
      *v4 = 0uLL;
      v4[1] = 0uLL;
      *(v5 - 1) = 0xFFFFFFFFLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(v5 + 27) = 0uLL;
    }

    ++v2;
    v5 = (v5 + 56);
    v6 += 160;
    v4 = (v4 + 44);
    v3 += 19;
  }

  while (v2 != 63);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_Check_Age_BDS_Data(char *result, uint64_t a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (result < 1)
  {
    goto LABEL_80;
  }

  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = result + 900;
  if (result <= 0x384)
  {
    v8 = 900;
  }

  else
  {
    v8 = result;
  }

  v37 = v8 - 900;
  if (result <= 0x15180)
  {
    v9 = 86400;
  }

  else
  {
    v9 = result;
  }

  v10 = v9 - 86400;
  v11 = *(a2 + 25456);
  v12 = 25512;
  do
  {
    if (*(v11 + v4) != 1)
    {
      goto LABEL_19;
    }

    v13 = *(a2 + v12);
    if (v13 >= 1 && v13 < v10)
    {
LABEL_17:
      v5 = 1;
      *(*(a2 + 25440) + v4) = 1;
      goto LABEL_19;
    }

    if (v13)
    {
      if (v13 > v7)
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
      *(a2 + v12) = v37;
    }

LABEL_19:
    ++v4;
    v12 += 152;
  }

  while (v4 != 63);
  v35 = a2 + 47436;
  if (v6 > 0)
  {
    if (*(a2 + 62170))
    {
      v15 = "(Skipped)";
    }

    else
    {
      v15 = &unk_299066A3A;
    }

    result = EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future EPH, %d SVs  %s", v6, v15);
  }

  v16 = 0;
  v17 = 0;
  if (v3 <= 15724800)
  {
    v18 = 15724800;
  }

  else
  {
    v18 = v3;
  }

  v19 = v18 - 15724800;
  v20 = 44664;
  v36 = v7;
  do
  {
    if (*(*(a2 + 25472) + v16) == 1)
    {
      v21 = *(a2 + v20);
      if (v21 >= 1 && v21 < v19)
      {
        v5 = 1;
        *(*(a2 + 25448) + v16) = 1;
        result = EvLog_v("DD_Check_Age_BDS_Data:  Deleting Old ALM, SV %d age %d thresh %d %d %d", v16 + 1, (v3 - v21) / 604800, (v3 - v19) / 604800, v34, v35);
      }

      else if (v21)
      {
        if (v21 > v7)
        {
          ++v17;
          v23 = (v3 - v21) / 604800;
          v24 = &unk_299066A3A;
          if (*(a2 + 62170))
          {
            v24 = "(Skipped)";
          }

          result = EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future ALM, SV %d age %d thresh %d  %s", v16 + 1, v23, 0, v24);
          if ((*(a2 + 62170) & 1) == 0)
          {
            v5 = 1;
            *(*(a2 + 25448) + v16) = 1;
          }

          v7 = v36;
        }
      }

      else
      {
        *(a2 + v20) = v37;
      }
    }

    ++v16;
    v20 += 44;
  }

  while (v16 != 63);
  if (v17 > 0)
  {
    if (*(a2 + 62170))
    {
      v25 = "(Skipped)";
    }

    else
    {
      v25 = &unk_299066A3A;
    }

    result = EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future ALM, %d SVs  %s", v17, v25);
  }

  if (v3 <= 2419200)
  {
    v26 = 2419200;
  }

  else
  {
    v26 = v3;
  }

  v27 = v26 - 2419200;
  if (*(v35 + 4))
  {
    v28 = *v35;
    if (*v35 >= 1 && v28 < v27)
    {
      goto LABEL_55;
    }

    if (v28)
    {
      if (v28 > v36)
      {
        v29 = *(a2 + 62170) ? "(Skipped)" : &unk_299066A3A;
        result = EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future BGTO->GPS, %d  %d  %s", v28, v36, v29);
        if ((*(a2 + 62170) & 1) == 0)
        {
LABEL_55:
          *v35 = 0;
          *(v35 + 8) = 0;
          *(v35 + 24) = 0;
          *(v35 + 16) = 0;
          *(a2 + 47496) = 0u;
          *(a2 + 47512) = 0u;
          *(a2 + 47528) = 0;
        }
      }
    }

    else
    {
      *v35 = v37;
    }
  }

  if (*(v35 + 32))
  {
    v30 = *(v35 + 28);
    if (v30 >= 1 && v30 < v27)
    {
      goto LABEL_67;
    }

    if (v30)
    {
      if (v30 <= v36)
      {
        goto LABEL_75;
      }

      v31 = *(a2 + 62170) ? "(Skipped)" : &unk_299066A3A;
      result = EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future BGTO->GLO, %d  %d  %s", v30, v36, v31);
      if (*(a2 + 62170))
      {
        goto LABEL_75;
      }

LABEL_67:
      *(v35 + 36) = 0;
      *(v35 + 28) = 0;
      *(v35 + 52) = 0;
      *(v35 + 44) = 0;
      *(a2 + 47536) = 0u;
      *(a2 + 47552) = 0u;
      *(a2 + 47568) = 0;
      if ((v5 & 1) == 0)
      {
LABEL_80:
        v33 = *MEMORY[0x29EDCA608];
        return result;
      }
    }

    else
    {
      *(v35 + 28) = v37;
      if ((v5 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
LABEL_75:
    if ((v5 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v32 = *MEMORY[0x29EDCA608];

  return DD_Delete_Bad_BDS_Data(a2);
}

void DD_Proc_BDS_Data(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v6 = a6;
  v11 = 0;
  v12 = 0;
  v140 = *MEMORY[0x29EDCA608];
  v130 = a6 + 5632;
  v13 = *(a2 + 8);
  v14 = a2 + 87;
  do
  {
    v12 = CRC24Q_Table[*(v14 + v11++) ^ HIWORD(v12)] ^ (v12 << 8);
  }

  while (v11 != 72);
  v15 = (*(a2 + 159) << 16) | (*(a2 + 160) << 8) | *(a2 + 161);
  v16 = *(a2 + 86);
  if ((v16 & 2) != 0 && v12 != v15)
  {
    EvCrt_v("DD_Proc_BDS_Data: WARNING: Checksum_Mask marks SF2 as passing CRC but data fails: SV %d  mask %d  actual %x  data %x", v13 + 1, v16, v12, v15);
    v16 = *(a2 + 86) & 5;
LABEL_9:
    *(a2 + 86) = v16;
    goto LABEL_10;
  }

  if ((v16 & 2) == 0 && v12 == v15)
  {
    EvCrt_v("DD_Proc_BDS_Data: WARNING: Checksum_Mask marks SF2 as failing CRC but data passes: SV %d  mask %d  actual %x  data %x", v13 + 1, v16, v12, v12);
    v16 = *(a2 + 86) | 2;
    goto LABEL_9;
  }

LABEL_10:
  v132 = a3;
  v17 = 0;
  v18 = 0;
  v19 = (a2 + 162);
  do
  {
    v18 = CRC24Q_Table[v19[v17++] ^ HIWORD(v18)] ^ (v18 << 8);
  }

  while (v17 != 30);
  v20 = (*(a2 + 192) << 16) | (*(a2 + 193) << 8) | *(a2 + 194);
  if ((v16 & 4) != 0 && v18 != v20)
  {
    EvCrt_v("DD_Proc_BDS_Data: WARNING: Checksum_Mask marks SF3 as passing CRC but data fails: SV %d  mask %d  actual %x  data %x", v13 + 1, v16, v18, v20);
    LOBYTE(v16) = *(a2 + 86) & 3;
LABEL_18:
    *(a2 + 86) = v16;
    goto LABEL_19;
  }

  if ((v16 & 4) == 0 && v18 == v20)
  {
    EvCrt_v("DD_Proc_BDS_Data: WARNING: Checksum_Mask marks SF3 as failing CRC but data passes: SV %d  mask %d  actual %x  data %x", v13 + 1, v16, v18, v18);
    LOBYTE(v16) = *(a2 + 86) | 4;
    goto LABEL_18;
  }

LABEL_19:
  if ((v16 & 4) != 0 || (v21 = a1 + 52884, *(a1 + v13 + 52884) < 0))
  {
    v34 = a1 + v13;
    v34[52884] = -1;
    v34[52947] = -1;
  }

  else
  {
    *(a2 + 199) = -1;
    v22 = *(a1 + v13 + 52947);
    if ((v22 + 1) <= 9u)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 0;
    }

    *(a1 + 10 * v13 + v23 + 52254) = *(a2 + 162) & 1;
    v24 = v21[v13];
    if (v24 <= 9)
    {
      LOBYTE(v24) = v24 + 1;
      v21[v13] = v24;
    }

    *(a1 + v13 + 52947) = v23;
    if (*(a3 + 1740) || *(a3 + 1744) || (*(v6[3182] + v13) & 1) != 0 || (*(v6[3183] + v13) & 1) != 0 || *a3)
    {
      v25 = 3;
    }

    else if (*(*(a3 + 520) + v13))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    if (v25 <= v24)
    {
      v26 = 0;
      v27 = 0;
      v28 = v24;
      v29 = a1 + 10 * v13 + 52254;
      do
      {
        v31 = *v29++;
        v30 = v31;
        if (v31)
        {
          v32 = v27;
        }

        else
        {
          v32 = v27 + 1;
        }

        if (v30 == 1)
        {
          ++v26;
        }

        else
        {
          v27 = v32;
        }

        --v28;
      }

      while (v28);
      if (v27 <= v26)
      {
        if (v26 <= v27 || v26 - v27 < 3 || (43692 * v26) >> 16 < v27)
        {
          goto LABEL_46;
        }

        v33 = 1;
      }

      else
      {
        if (v27 - v26 < v25 || (43692 * v27) >> 16 < v26)
        {
          goto LABEL_46;
        }

        v33 = 0;
      }

      *(a2 + 199) = v33;
    }
  }

LABEL_46:
  if (*a4)
  {
    v35 = (18 * *(a2 + 85) + 3600 * ((*(a4 + 40) - 18 * *(a2 + 85) + 1800) / 3600) - 18) / 3600;
  }

  else
  {
    LOBYTE(v35) = 0;
  }

  v36 = *(a1 + v13 + 12969);
  if (v36 != -1 && ((v36 - 18) / 3600) != v35)
  {
    *(a1 + 51860) = 0u;
    *(a1 + 51829) = 0u;
    *(a1 + 51845) = 0u;
    *(a1 + 51813) = 0u;
    *&v37 = -1;
    *(&v37 + 1) = -1;
    a1[3258] = v37;
    a1[3259] = v37;
    a1[3260] = v37;
    *(a1 + 52175) = v37;
    *(a1 + 52191) = 0u;
    *(a1 + 52207) = 0u;
    *(a1 + 52223) = 0u;
    *(a1 + 52238) = 0u;
  }

  v38 = *(a2 + 86);
  if ((v38 & 2) == 0 && (*(a1 + v13 + 52191) & 1) == 0)
  {
    v39 = a1 + 3258;
    v40 = *(a1 + v13 + 52128);
    if ((v40 + 1) <= 6u)
    {
      v41 = v40 + 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = (a1 + 525 * v13 + 75 * v41 + 18738);
    *v42 = *v14;
    v43 = *(v14 + 16);
    v44 = *(v14 + 32);
    v45 = *(v14 + 48);
    *(v42 + 59) = *(v14 + 59);
    v42[2] = v44;
    v42[3] = v45;
    v42[1] = v43;
    v46 = *(a1 + v13 + 51813);
    if (v46 <= 6)
    {
      *(a1 + v13 + 51813) = ++v46;
    }

    if (*a4)
    {
      v47 = 18 * *(a2 + 85) + 3600 * ((*(a4 + 40) - 18 * *(a2 + 85) + 1800) / 3600);
    }

    else
    {
      v47 = -1;
    }

    *(a1 + v13 + 12969) = v47;
    *(v39 + v13) = v41;
    v38 = *(a2 + 86);
    if ((v38 & 3) == 1 && v46 >= 2)
    {
      bzero(v137, 0x258uLL);
      v48 = 0;
      v49 = a1 + 525 * v13 + 18738;
      do
      {
        for (i = 0; i != 75; ++i)
        {
          v51 = vdupq_n_s32(*(v49 + i));
          *&v137[2 * i] = vadd_s8(vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v51, xmmword_299053D90), vshlq_u32(v51, xmmword_299053D80))), 0x101010101010101), *&v137[2 * i]);
        }

        ++v48;
        v49 += 75;
      }

      while (v48 != v46);
      v52 = 0;
      v135 = 0u;
      memset(v136, 0, 27);
      v133 = 0u;
      v134 = 0u;
      do
      {
        if (*(v137 + v52) > v46 >> 1)
        {
          *(&v133 + (v52 >> 3)) += 1 << (~v52 & 7);
        }

        ++v52;
      }

      while (v52 != 600);
      v53 = 0;
      v54 = 0;
      do
      {
        v54 = CRC24Q_Table[*(&v133 + v53++) ^ HIWORD(v54)] ^ (v54 << 8);
      }

      while (v53 != 72);
      if (v54 == ((BYTE8(v136[1]) << 16) | (BYTE9(v136[1]) << 8) | BYTE10(v136[1])))
      {
        EvLog_v("DD_Proc_BDS_Data: SF2 Majority vote CRC passed, applied,  SV %d  SF_count %d", v13 + 1, v46);
        v55 = v136[0];
        *(v14 + 32) = v135;
        *(v14 + 48) = v55;
        *(v14 + 59) = *(v136 + 11);
        v56 = v134;
        *v14 = v133;
        *(v14 + 16) = v56;
        *(a2 + 86) |= 2u;
        *(a1 + v13 + 51813) = 0;
        *(v39 + v13) = -1;
      }

      else
      {
        EvDbg_v("DD_Proc_BDS_Data: SF2 Majority vote CRC failed, ignored,  SV %d  SF_count %d", v13 + 1, v46);
      }

      v38 = *(a2 + 86);
    }
  }

  if ((~v38 & 3) != 0 || *(a2 + 199))
  {
    if ((v38 & 4) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_86;
  }

  v60 = v6;
  v61 = *(v6[3174] + v13);
  memset(v137, 0, 18);
  memset(&v137[5], 0, 78);
  *&v137[25] = 0u;
  v138 = 0u;
  v139 = 0u;
  v62 = *(a2 + 8);
  BDS_B1C_EphBin2Int(v14, a2 + 162, v137);
  v137[1] = 4;
  v63 = *(a2 + 8);
  LOBYTE(v137[2]) = v63 + 1;
  v64 = *(a2 + 199);
  BYTE1(v137[2]) = *(a2 + 199);
  HIBYTE(v137[2]) = 4;
  if ((*(a2 + 162) & 0xFC) == 4)
  {
    Decode_BDS_B1C_SISA(a2 + 162, v137);
    v64 = BYTE1(v137[2]);
  }

  if (!v64 && v61)
  {
    if (SLOWORD(v137[4]) > 2047)
    {
      EvLog_v("DD_Proc_BDS_B1C_Eph: Ignoring, Invalid WeekNo SV %d  WN %d (>%d)", v63 + 1, SLOWORD(v137[4]), 2048);
LABEL_110:
      if (g_Logging_Cfg >= 7)
      {
        v68 = *(a4 + 64);
        v128 = *(a4 + 68);
        v129 = *(a4 + 74);
        v126 = *(a4 + 66);
        v127 = *(a4 + 72);
        v125 = *(a4 + 70);
        EvLog_v("DD_Proc_BDS_B1C_Eph: WeekNo Cands: %d %d  %d %d  %d %d");
      }

      goto LABEL_199;
    }

    v65 = LOWORD(v137[4]) + 1356;
    if (*a4)
    {
      v66 = *(a4 + 40);
      v67 = 1800 - (v66 - (18 * *(a2 + 85) + 18) + 1800) % 3600;
      if (v67 < 302401)
      {
        if (v67 < -302400)
        {
          v65 = LOWORD(v137[4]) + 1355;
        }
      }

      else
      {
        v65 = LOWORD(v137[4]) + 1357;
      }
    }

    else
    {
      v66 = -1;
    }

    if (*(a4 + 16) == 1)
    {
      v73 = *(a4 + 32);
      if (v73 == v65 || *a4 < 3 || (v66 - 32) >= 0x93A41)
      {
        *(a4 + 68) = -1;
        *(a4 + 64) = -1;
        *(a4 + 70) = 0;
        *(a4 + 74) = 0;
      }

      else
      {
        EvCrt_v("DD_Proc_BDS_B1C_Eph:  WARNING:  Beidou Week Number Spoofing suspected,  %d != %d  SV %d", v65, *(a4 + 32), v63);
        *(a4 + 105) = 1;
        v73 = *(a4 + 32);
      }

      if (v73 == v65)
      {
        *(a4 + 20) = *(a4 + 24);
      }

      goto LABEL_110;
    }

    v74 = DD_Validate_BDS_Eph(v62, *(v60[3182] + v62), &v60[19 * v62 + 3189], v137);
    if (*(a4 + 16))
    {
      v75 = *(a4 + 32);
      v76 = v75 == v65 || v74;
      if (v76)
      {
        if (v75 != v65 && v74)
        {
          v77 = 0;
          v78 = (a4 + 70);
          while (*(v78 - 3) != v65)
          {
            ++v77;
            ++v78;
            if (v77 == 3)
            {
              goto LABEL_170;
            }
          }

          if (v77 >= 3)
          {
LABEL_170:
            v90 = 0;
            v91 = (a4 + 64);
            while (*v91 != -1)
            {
              --v90;
              ++v91;
              if (v90 == -3)
              {
                v92 = 3;
                goto LABEL_197;
              }
            }

            v110 = -v90;
            if (v110 < 3)
            {
              *v91 = v65;
              v91[3] = 1;
              EvLog_v("DD_BDS_Proc_Submit_GPS_WeekNo:  %d  SV %d", v65, (v62 + 1));
              goto LABEL_198;
            }

            v92 = v110;
LABEL_197:
            *(a4 + 68) = -1;
            *(a4 + 64) = -1;
            *(a4 + 70) = 0;
            *(a4 + 74) = 0;
            EvCrt_v("DD_BDS_Proc_Submit_GPS_WeekNo: WeekNoCandidates array overflow! %d SV %d", v92, (v62 + 1));
            goto LABEL_198;
          }

          v111 = *v78 + 1;
          *v78 = v111;
          EvLog_v("DD_BDS_Proc_Submit_GPS_WeekNo: Cand %d  (%d)  SV %d", v65, v111, (v62 + 1));
          v112 = *v78;
          if (v112 < 3)
          {
            goto LABEL_198;
          }

          v84 = (v62 + 1);
          EvLog_v("DD_BDS_Proc_Submit_GPS_WeekNo: Cand %d  (%d) OK  SV %d", v65, v112, v84);
          goto LABEL_154;
        }

        if (v75 == v65)
        {
          v85 = (a4 + 70);
          v86 = 3;
          do
          {
            v87 = *v85;
            v88 = __OFSUB__(v87, 1);
            v89 = v87 - 1;
            if (v89 < 0 == v88)
            {
              *v85 = v89;
              if (!v89)
              {
                *(v85 - 3) = -1;
              }
            }

            ++v85;
            --v86;
          }

          while (v86);
        }
      }

      else
      {
        EvCrt_v("DD_BDS_Proc_Submit_GPS_WeekNo: %d  SV %d, Ignored - Eph bit val failed", v65, (v62 + 1));
      }

LABEL_198:
      EvLog_v("DD_BDS_Proc_Submit_GPS_WeekNo: %d %d SV %d");
      goto LABEL_199;
    }

    v84 = (v62 + 1);
    EvLog_v("DD_BDS_Proc_Submit_GPS_WeekNo: %d  SV %d", v65, v84);
LABEL_154:
    EvLog_v("DD_BDS_Proc_Submit_GPS_WeekNo: %d %d SV %d", 1, v65, v84);
    *(a4 + 32) = v65;
    *(a4 + 16) = 1;
    *(a4 + 20) = *(a4 + 24);
    *(a4 + 64) = -1;
    *(a4 + 68) = -1;
    *(a4 + 70) = 0;
    *(a4 + 74) = 0;
    if (v66 == -1 || !*a4)
    {
      *a5 = 0;
    }

    else
    {
      *a5 = v66 + 604800 * v65;
    }

    goto LABEL_199;
  }

  if (*(v60[3174] + v62) == 1)
  {
    EvLog_v("DD_Proc_BDS_B1C_Eph:  EPH H->U, SV %d  toe %d", v62 + 1, v137[5]);
    *(v60[3174] + v62) = 0;
  }

  *(v60[3176] + 20 * v62) = 2;
LABEL_199:
  v113 = WORD5(v138);
  v114 = a1 + 11492;
  v115 = *(a1 + v62 + 5746);
  if (v115 != WORD5(v138))
  {
    if (v115 != 256)
    {
      EvLog_v("DD_Proc_BDS_B1C_Eph:  Eph boundary changing, SV %d  IOD %d %d ", v62 + 1, *(a1 + v62 + 5746), WORD5(v138));
      LOWORD(v115) = *&v114[2 * v62];
    }

    *(a1 + v62 + 5841) = v115;
    *&v114[2 * v62] = v113;
  }

  v116 = (a1 + 75 * v62 + 11871);
  *v116 = *v14;
  v117 = *(v14 + 16);
  v118 = *(v14 + 32);
  v119 = *(v14 + 48);
  *(v116 + 59) = *(v14 + 59);
  v116[2] = v118;
  v116[3] = v119;
  v116[1] = v117;
  v120 = a1 + 33 * v62 + 16596;
  v121 = *v19;
  v122 = *(a2 + 178);
  *(v120 + 32) = *(a2 + 194);
  *v120 = v121;
  *(v120 + 16) = v122;
  v123 = a1 + v62;
  v123[18675] = 1;
  v123[52191] = 1;
  v6 = v60;
  if ((*(a2 + 86) & 4) == 0)
  {
    goto LABEL_204;
  }

LABEL_86:
  if (*(a2 + 199))
  {
    goto LABEL_204;
  }

  v57 = *v19;
  if ((*v19 & 0xFC) != 0x10)
  {
    goto LABEL_115;
  }

  memset(v137, 0, 43);
  LOBYTE(v133) = 0;
  if (BDS_B1C_AlmBin2Int(*(v132 + 1734), a2 + 162, v137, &v133))
  {
    v137[0] = *a5;
    v137[1] = 4;
    v58 = BYTE2(v137[2]) < 0x40u;
    if (BYTE2(v137[2]) >= 0x40u)
    {
      EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SVid = %d > %d, Out of range !", BYTE2(v137[2]), 63);
    }

    if (SLOWORD(v137[2]) >= 2049)
    {
      EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SV %d  WeekNo = %d > %d, Out of range !", BYTE2(v137[2]), SLOWORD(v137[2]), 2048);
      v58 = 0;
    }

    if (HIBYTE(v137[2]) >= 0x94u)
    {
      EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SV %d  toa = %d > 604800 s, Out of range !", BYTE2(v137[2]), HIBYTE(v137[2]) << 12);
      v58 = 0;
    }

    if (v137[4] > 0x33333u)
    {
      EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SV %d  e = %f > 0.05 ", BYTE2(v137[2]), v137[4] * 5.82076609e-11);
      v59 = v137[8];
      if (v137[8] < 27489)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    v59 = v137[8];
    if (v137[8] > 27488)
    {
LABEL_113:
      EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SV %d  OmegaDot = %f > +1.0e-7", BYTE2(v137[2]), v59 * 1.78578867e-13);
      goto LABEL_114;
    }

    if (!v58)
    {
      goto LABEL_114;
    }

    v79 = BYTE2(v137[2]);
    v80 = (BYTE2(v137[2]) - 1);
    if (!BYTE2(v137[10]) && (*(v6[3174] + v80) & 1) != 0)
    {
      goto LABEL_188;
    }

    if ((*(v6[3174] + v80) & 1) != 0 || !BYTE2(v137[10]))
    {
      if (!*(v6[3174] + v80) || !BYTE2(v137[10]))
      {
        goto LABEL_188;
      }
    }

    else
    {
      v81 = &v6[19 * (BYTE2(v137[2]) - 1)];
      EvDbg_v("DD_Proc_BDS_B1C_SF3_Alm:  Health, SV %d, DBnm health %d, Alm health %d, Curr_GPS_secs %d, Eph GPS_secs %d", v80 + 1, 0, BYTE2(v137[10]), a5, *(v81 + 6378));
      v82 = v6[3182];
      if (*(v82 + v80) == 1)
      {
        if (*(v81 + 6378) + 3600 <= *a5)
        {
          *(v6[3178] + v80) = 0;
          *(v82 + v80) = 0;
          v83 = a1 + 2 * v80;
          *(v83 + 5746) = 256;
          *(v83 + 5841) = 256;
          *(a1 + v80 + 11618) = -1;
          goto LABEL_176;
        }

LABEL_188:
        v108 = v133;
        *(v6[3175] + v80) = v133;
        if (v108)
        {
          v109 = 1;
        }

        else
        {
          v109 = 2;
        }

        *(v6[3177] + 20 * v80 + 4) = v109;
        goto LABEL_114;
      }
    }

LABEL_176:
    v93 = (v6 + 44 * v80 + 44664);
    v94 = v6[3184];
    if (!*(v94 + v80) || v137[0] + 604800 * SLOWORD(v137[2]) > (*v93 + 604800 * *(v6 + 22 * v80 + 22336)) || !*v93 && v137[0] >= 1)
    {
      *(v6[3174] + v80) = 1;
      v95 = *&v137[7];
      v96 = *&v137[4];
      *v93 = *v137;
      *(v6 + 44 * v80 + 44680) = v96;
      *(v6 + 44 * v80 + 44692) = v95;
      *v93 = *a5;
      *(v6 + 11 * v80 + 11167) = 4;
      *(v6[3179] + v80) = 1;
      *(v94 + v80) = 1;
      *(a1 + v80 + 11618) = HIBYTE(v137[2]);
      EvVrb_v("EvVrb_BDS_IntAlm: %d %d %d %d  %d %d %d %d  %d %d %d %d  %d", *(v6 + 22 * v80 + 22336), *(v6 + 44 * v80 + 44674), *(v6 + 44 * v80 + 44675), *(v6 + 11 * v80 + 11169), *(v6 + 11 * v80 + 11170), *(v6 + 11 * v80 + 11171), *(v6 + 11 * v80 + 11172), *(v6 + 11 * v80 + 11173), *(v6 + 11 * v80 + 11174), *(v6 + 22 * v80 + 22350), *(v6 + 22 * v80 + 22351), *(v6 + 22 * v80 + 22352), *(v6 + 44 * v80 + 44706));
      v97 = v6[3174];
      if (*(v97 + v80))
      {
        v98 = 1;
      }

      else
      {
        v98 = 2;
      }

      *(v6[3176] + 20 * v80 + 4) = v98;
      if (*a5 >= 1)
      {
        Core_Save_BDS_Alm(v79, 0, (v6 + 44 * v80 + 44664));
        v97 = v6[3174];
      }

      v99 = 0;
      LODWORD(v100) = 0;
      v101 = p_NV;
      v102 = (p_NV + 13212);
      v104 = v97[1];
      v103 = v97[2];
      v105 = *v97;
      *(p_NV + 13259) = *(v97 + 47);
      v102[1] = v104;
      v102[2] = v103;
      *v102 = v105;
      v106 = 55665;
      do
      {
        v107 = *(v101 + 13208 + v99) ^ BYTE1(v106);
        v106 = 52845 * (v106 + v107) + 22719;
        v100 = (v100 + v107);
        ++v99;
      }

      while (v99 != 72);
      *(v101 + 13200) = v100;
    }

    goto LABEL_188;
  }

LABEL_114:
  v57 = *v19;
LABEL_115:
  if ((v57 & 0xFC) == 0xC)
  {
    LOWORD(v137[2]) = 0;
    *&v137[3] = 0;
    *(&v137[4] + 3) = 0;
    v69 = v130 + 2380;
    LOWORD(v137[6]) = *(v130 + 1202);
    v70 = Decode_BDS_B1C_BGTO(v19, v137);
    v71 = (v130 + 2380);
    if (v70 != 1)
    {
      if (v70 != 3)
      {
        goto LABEL_204;
      }

      v71 = v130 + 301;
    }

    *v71 = *a5;
    *(v71 + 1) = 4;
    *(v71 + 4) = v137[2];
    *(v71 + 12) = *&v137[3];
    *(v71 + 10) = v137[5];
    *(v71 + 22) = BYTE2(v137[5]);
    *(v71 + 12) = v137[6];
    if (v70 == 1)
    {
      v72 = 5937;
    }

    else
    {
      v69 = (v6 + 5933);
      v72 = 5942;
    }

    BDS_BGTOInt2Real(v69, &v6[v72]);
  }

LABEL_204:
  v124 = *MEMORY[0x29EDCA608];
}

uint64_t DD_Save_New_BDS_Eph(int a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = 0;
  v5 = 0;
  v60 = *MEMORY[0x29EDCA608];
  v6 = a3 + 18675;
  v7 = a3 + 11871;
  v8 = 3189;
  v48 = a2 + 3189;
  v9 = (a3 + 11492);
  v47 = a3 + 11618;
  v10 = -2079;
  v11 = 44706;
  v12 = 44664;
  v13 = 35235;
  v14 = 25521;
  v15 = 3192;
  v16 = 25638;
  v17 = 25516;
  v50 = a3 + 18675;
  do
  {
    if (*(v6 + v5) == 1 && (*(v3 + v17) < 4 || *(v3 + v16) != (*(v7 + 3) | ((*(v7 + 2) & 3u) << 8)) >> 1))
    {
      v58 = 0uLL;
      *v59 = 0;
      memset(&v59[4], 0, 78);
      memset(&v59[84], 0, 48);
      if (*v9 == v9[95] && *(v3[3182] + v5) && (a1 < 1 || LODWORD(v3[v8])))
      {
        *(v6 + v5) = 0;
        goto LABEL_44;
      }

      v56 = &v3[v8];
      v52 = v13;
      v54 = v12;
      v53 = v4;
      BDS_B1C_EphBin2Int(v7, v6 + v10, &v58);
      v3 = a2;
      BYTE8(v58) = v5 + 1;
      *&v58 = a1 | 0x400000000;
      BYTE11(v58) = 4;
      v18 = *(a2[3182] + v5);
      if (v18 == 1)
      {
        if (*(a2 + v17) == 5 || (*(a2[3183] + v5) & 1) == 0)
        {
          v19 = &v48[19 * v5 + 18] + 3;
LABEL_15:
          v59[131] = *v19;
          goto LABEL_16;
        }
      }

      else if (*(a2[3183] + v5) != 1)
      {
LABEL_16:
        v51 = v5 + 1;
        if (v18 && *v9 == v9[95] && (a1 < 1 || *v56) || (v20 = DD_Validate_BDS_Eph(v5, v18, v56, &v58), v3 = a2, !v20))
        {
LABEL_43:
          v6 = v50;
          *(v50 + v5) = 0;
          v4 = v53;
          v12 = v54;
          v13 = v52;
          goto LABEL_44;
        }

        v21 = BYTE9(v58);
        if (*(a2[3174] + v5) | BYTE9(v58))
        {
          goto LABEL_22;
        }

        v49 = BYTE9(v58);
        EvDbg_v("DD_Save_New_BDS_Eph:  Health, SV %d, DBnm health %d, Eph health %d, Alm health %d, Curr_GPS_secs %d, Alm GPS seconds %d", v51, 0, BYTE9(v58) == 0, *(a2 + v11), a1, *(a2 + v54));
        v3 = a2;
        if ((*(a2 + v11) & 1) == 0 && *(a2 + v54) + 3600 > a1)
        {
          v24 = 0;
          v22 = (a2[3174] + v5);
          *v22 = 0;
          v25 = 2;
          v23 = v53;
          goto LABEL_24;
        }

        v27 = a2[3184];
        v21 = v49;
        if (*(v27 + v5) != 1 || *(a2 + v54) + 100 >= a1)
        {
LABEL_22:
          v22 = (v3[3174] + v5);
          *v22 = v21 == 0;
          v23 = v53;
          if (v21)
          {
            v24 = 0;
            v25 = 2;
LABEL_24:
            v26 = v56;
LABEL_33:
            *(v3[3176] + v23) = v25;
            v28 = v3[3177];
            if (!*(v28 + v23 + 8) && !*(v28 + v23 + 4))
            {
              *(v3[3175] + v5) = v24;
              *(v28 + v23) = v25;
            }

            if (BYTE9(v58) == 1)
            {
              v29 = "DD_Save_New_BDS_Eph:  SV %d, Diff Health, E:U A:H, DBnm: %d  ";
              if (*(v3 + v11) != 1)
              {
                goto LABEL_40;
              }
            }

            else
            {
              if (BYTE9(v58))
              {
                goto LABEL_40;
              }

              v29 = "DD_Save_New_BDS_Eph:  SV %d, Diff Health, E:H A:U, DBnm: %d  ";
              if (*(v3 + v11))
              {
                goto LABEL_40;
              }
            }

            EvLog_v(v29, v51, *v22);
            v26 = v56;
            v3 = a2;
LABEL_40:
            v30 = *&v59[64];
            *(v26 + 4) = *&v59[48];
            *(v26 + 5) = v30;
            v31 = *&v59[32];
            *(v26 + 2) = *&v59[16];
            *(v26 + 3) = v31;
            *(v26 + 18) = *&v59[128];
            v32 = *&v59[112];
            v33 = *&v59[80];
            *(v26 + 7) = *&v59[96];
            *(v26 + 8) = v32;
            *(v26 + 6) = v33;
            v34 = *v59;
            *v26 = v58;
            *(v26 + 1) = v34;
            *(v3[3178] + v5) = 1;
            *(v3[3182] + v5) = 1;
            *(v3[3187] + v5) = 0;
            if (a1 >= 1)
            {
              *(a2[3185] + v5) = 1;
              Core_Save_BDS_Eph((v5 + 1), 0, v26);
            }

            EvVrb_v("EvVrb_BDS_IntEph: %u %u %u %u %u  %u %u %u %u  %d %d  %d %d  %D %U %D %D %D  %d %d  %d %d %d %d %d %d   %d %d %d %u  %u %u %u %u  %d %d %d %d  %u %u %u %u %u %u  %d  %d", BYTE8(v58), BYTE9(v58), BYTE10(v58), BYTE11(v58), HIDWORD(v58), *v59, *&v59[4], *&v59[8], *&v59[12], *&v59[16], *&v59[20], *&v59[24], *&v59[28], *&v59[32], *&v59[48], *&v59[64], *&v59[72], *&v59[76], *&v59[78], *&v59[80], *&v59[84], *&v59[88], *&v59[92], *&v59[96], *&v59[100], *&v59[104], *&v59[108], *&v59[110], v59[112], v59[113], v59[114], v59[115], *&v59[116], *&v59[118], *&v59[120], *&v59[122], v59[124], v59[125], v59[126], v59[127], v59[128], v59[129], v59[130], v59[131]);
            EvLog_v("DD_Save_New_BDS_Eph:  EPH saved, SV %d  toc %d  Heath %d %d", v51, 8 * LODWORD(a2[v15]), *(a2 + v14), *(a2[3174] + v5));
            v3 = a2;
            goto LABEL_43;
          }
        }

        else
        {
          *(a2[3179] + v5) = 0;
          *(v27 + v5) = 0;
          *(v47 + v5) = -1;
          v22 = (a2[3174] + v5);
          *v22 = 1;
          v23 = v53;
        }

        v26 = v56;
        v24 = 1;
        v25 = 1;
        goto LABEL_33;
      }

      v19 = a2 + v52;
      goto LABEL_15;
    }

LABEL_44:
    ++v5;
    v11 += 44;
    v4 += 20;
    v12 += 44;
    v13 += 152;
    v10 += 33;
    v7 += 75;
    ++v9;
    v14 += 152;
    v15 += 19;
    v8 += 19;
    v16 += 152;
    v17 += 152;
  }

  while (v5 != 63);
  v35 = 0;
  LODWORD(v36) = 0;
  v37 = v3[3174];
  v38 = p_NV;
  v39 = (p_NV + 13212);
  v41 = v37[1];
  v40 = v37[2];
  v42 = *v37;
  *(p_NV + 13259) = *(v37 + 47);
  v39[1] = v41;
  v39[2] = v40;
  *v39 = v42;
  v43 = 55665;
  do
  {
    v44 = *(v38 + 13208 + v35) ^ BYTE1(v43);
    v43 = 52845 * (v43 + v44) + 22719;
    v36 = (v36 + v44);
    ++v35;
  }

  while (v35 != 72);
  *(v38 + 13200) = v36;
  v45 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL DD_Validate_BDS_Eph(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = *(a4 + 16);
  v9 = v8 < 2049;
  if (v8 >= 2049)
  {
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  WeekNo = %d > %d, Out of range !", *(a4 + 8), *(a4 + 16), 2048);
    LOWORD(v8) = *(a4 + 16);
  }

  v10 = *(*(p_api + 72) + 1734) - 1356;
  if (v10 > v8)
  {
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  WeekNo = %d < %d, Too early !", *(a4 + 8), v8, v10);
    v9 = 0;
  }

  v11 = *(a4 + 20);
  if (v11 >= 0x7E1)
  {
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  toe = %d > 604800 s, Out of range !", *(a4 + 8), 300 * v11);
    v9 = 0;
  }

  v12 = *(a4 + 24);
  if (v12 >= 0x7E1)
  {
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  toc = %d > 604800 s, Out of range !", *(a4 + 8), 300 * v12);
    v9 = 0;
    v12 = *(a4 + 24);
  }

  v13 = *(a4 + 20);
  if (v12 != v13)
  {
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  toc = %d != toe = %d", *(a4 + 8), 300 * v12, 300 * v13);
    v9 = 0;
  }

  v14 = *(a4 + 56);
  if (v14 > 0x66666666)
  {
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  e = %g > 0.1 ", *(a4 + 8), vcvtd_n_f64_u64(v14, 0x22uLL));
    v15 = *(a4 + 88);
    if (v15 <= 1759219)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = *(a4 + 88);
  if (v15 > 1759219)
  {
LABEL_15:
    EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  Omega_dot = %f > +1.0e-7", *(a4 + 8), v15 * 1.78578867e-13);
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v18 = *(a4 + 24);
    v19 = *(a3 + 24);
    if (v18 != v19)
    {
      EvLog_v("DD_Val_BDS_Eph:  New Eph SV %d  toe %d %d   toc %d %d  IODC %d %d", *(a4 + 8), *(a4 + 20), *(a3 + 20), v18, v19, *(a4 + 126), *(a3 + 126));
    }
  }

  v20 = Is_BDS_IntEph_Same(a4, a3);
  if (v20)
  {
    v21 = *a3;
    v22 = *a4;
    *a3 = *a4;
    if (!v21 && v22 >= 1)
    {
      Core_Save_BDS_Eph((a1 + 1), 0, a3);
    }
  }

  else
  {
    EvLog_v("DD_Val_BDS_Eph: (OK) Int Eph diff with same Toc. SV %d Toc %d", *(a4 + 8), *(a4 + 24));
  }

  result = !v20;
LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Check_TOW_Adjust(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 48);
  if (v2)
  {
    if (*(result + 136) == 1)
    {
      *(a2 + 1672) = 0;
    }

    else
    {
      if (v2 >= 0)
      {
        v3 = *(a2 + 48);
      }

      else
      {
        v3 = -v2;
      }

      v4 = *(a2 + 1536);
      if (v4 >= 3 && v3 >= TOW_stat_DeltaTOW_Limit[v4] || (v5 = *(a2 + 20), v5 >= 3) && v3 >= TOW_stat_DeltaTOW_Limit[v5])
      {
        *(a2 + 1672) = 0;
        *(result + 140) = 24;
        *(result + 136) = 1;
        *(a2 + 1536) = v4 - 1;
      }

      else
      {
        *(a2 + 1672) = *(a2 + 1672) - v2;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Bad_QZSS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v5 = a4 + 1144;
  v6 = a4 + 1434;
  v7 = (a1 + 4);
  result = 6664;
  do
  {
    v9 = a4[1135];
    if (*(v9 + v4) == 1)
    {
      *(v7 - 1) = 16777472;
      *v7 = 256;
      *(a2 + 2 * v4) = 256;
      *(v9 + v4) = 0;
      *(a4[1133] + v4) = 0;
      *(a4[1137] + v4) = 0;
      *(v5 + 111) = 0;
      *(v5 + 5) = 0uLL;
      *(v5 + 6) = 0uLL;
      *(v5 + 3) = 0uLL;
      *(v5 + 4) = 0uLL;
      *(v5 + 1) = 0uLL;
      *(v5 + 2) = 0uLL;
      *v5 = 0uLL;
      *(a4[1143] + v4) = 0;
      *(a4[1140] + v4) = 1;
      v10 = p_NV + ((((v4 + 193) & 0xDFu) - 193) << 7);
      *(v10 + 6664) = 0xFFFFFFFFLL;
      *(v10 + 6672) = 0uLL;
      *(v10 + 6688) = 0uLL;
      *(v10 + 6704) = 0uLL;
      *(v10 + 6720) = 0uLL;
      *(v10 + 6736) = 0uLL;
      *(v10 + 6752) = 0uLL;
      *(v10 + 6768) = 0uLL;
      *(v10 + 6783) = 0;
    }

    if (*(a4[1136] + v4) == 1)
    {
      *(a3 + v4) = -1;
      *(a4[1136] + v4) = 0;
      *(a4[1134] + v4) = 0;
      *(a4[1139] + v4) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a4[1143] + v4) = 0;
      v11 = p_NV + 56 * (((v4 + 193) & 0xDFu) - 193);
      *(v11 + 6104) = 0xFFFFFFFFLL;
      *(v11 + 6112) = 0uLL;
      *(v11 + 6128) = 0uLL;
      *(v11 + 6140) = 0uLL;
    }

    ++v4;
    v6 = (v6 + 44);
    v5 = (v5 + 116);
    v7 += 3;
  }

  while (v4 != 10);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_QZSS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v6 = a5 + 1144;
  v7 = a5 + 1434;
  v8 = a2 + 2;
  v9 = 6672;
  do
  {
    if (*(result + v5) == 1)
    {
      *(v8 - 2) = 16777472;
      *(v8 + 2) = 256;
      *(a3 + 2 * v5) = 256;
      *(a5[1135] + v5) = 0;
      *(a5[1133] + v5) = 0;
      *(a5[1137] + v5) = 0;
      *(v6 + 111) = 0;
      *(v6 + 5) = 0uLL;
      *(v6 + 6) = 0uLL;
      *(v6 + 3) = 0uLL;
      *(v6 + 4) = 0uLL;
      *(v6 + 1) = 0uLL;
      *(v6 + 2) = 0uLL;
      *v6 = 0uLL;
      *(a5[1138] + v5) = 0;
      *(v6 + 1271) = 0;
      *(v6 + 155) = 0uLL;
      *(v6 + 157) = 0uLL;
      *(v6 + 151) = 0uLL;
      *(v6 + 153) = 0uLL;
      *(v6 + 147) = 0uLL;
      *(v6 + 149) = 0uLL;
      *(v6 + 145) = 0uLL;
      *(a5[1143] + v5) = 0;
      *(a5[1140] + v5) = 1;
      v10 = p_NV + v9;
      *(v10 - 8) = 0xFFFFFFFFLL;
      *v10 = 0uLL;
      *(v10 + 16) = 0uLL;
      *(v10 + 32) = 0uLL;
      *(v10 + 48) = 0uLL;
      *(v10 + 64) = 0uLL;
      *(v10 + 80) = 0uLL;
      *(v10 + 96) = 0uLL;
      *(v10 + 111) = 0;
      *(a4 + v5) = -1;
      *(a5[1136] + v5) = 0;
      *(a5[1134] + v5) = 0;
      *(a5[1139] + v5) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      v11 = p_NV + 56 * (((v5 + 193) & 0xDFu) - 193);
      *(v11 + 6104) = 0xFFFFFFFFLL;
      *(v11 + 6112) = 0uLL;
      *(v11 + 6128) = 0uLL;
      *(v11 + 6140) = 0uLL;
    }

    ++v5;
    v9 += 128;
    v7 = (v7 + 44);
    v6 = (v6 + 116);
    v8 += 6;
  }

  while (v5 != 10);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_Age_QZSS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x29EDCA608];
  if (result < 1)
  {
LABEL_52:
    v30 = *MEMORY[0x29EDCA608];
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = result + 900;
  if (result <= 0x384)
  {
    v11 = 900;
  }

  else
  {
    v11 = result;
  }

  v34 = v11 - 900;
  if (result <= 0x15180)
  {
    v12 = 86400;
  }

  else
  {
    v12 = result;
  }

  v13 = v12 - 86400;
  v14 = *(a5 + 9096);
  v15 = 9152;
  do
  {
    if (*(v14 + v7) != 1)
    {
      goto LABEL_19;
    }

    v16 = *(a5 + v15);
    if (v16 >= 1 && v16 < v13)
    {
LABEL_17:
      v9 = 1;
      *(*(a5 + 9080) + v7) = 1;
      goto LABEL_19;
    }

    if (v16)
    {
      if (v16 > v10)
      {
        ++v8;
        if ((*(a5 + 62170) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *(a5 + v15) = v34;
    }

LABEL_19:
    ++v7;
    v15 += 116;
  }

  while (v7 != 10);
  if (v8 >= 1)
  {
    if (*(a5 + 62170))
    {
      v18 = "(Skipped)";
    }

    else
    {
      v18 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_QZSS_Data:  Deleting Future EPH, %d SVs  %s", v8, v18);
  }

  v19 = 0;
  v20 = 0;
  if (v6 <= 15724800)
  {
    v21 = 15724800;
  }

  else
  {
    v21 = v6;
  }

  v22 = v21 - 15724800;
  v23 = 11472;
  do
  {
    if (*(*(a5 + 9112) + v19) == 1)
    {
      v24 = *(a5 + v23);
      if (v24 >= 1 && v24 < v22)
      {
        v9 = 1;
        *(*(a5 + 9088) + v19) = 1;
        EvLog_v("DD_Check_Age_QZSS_Data:  Old ALM deleted SV %d age %d thresh %d", v19 + 193, (v6 - v24) / 604800, (v6 - v22) / 604800);
      }

      else if (v24)
      {
        if (v24 > v10)
        {
          ++v20;
          v26 = (v6 - v24) / 604800;
          v27 = &unk_299066A3A;
          if (*(a5 + 62170))
          {
            v27 = "(Skipped)";
          }

          EvLog_v("DD_Check_Age_QZSS_Data:  Future ALM deleted SV %d age %d thresh %d  %s", v19 + 193, v26, 0, v27);
          if ((*(a5 + 62170) & 1) == 0)
          {
            v9 = 1;
            *(*(a5 + 9088) + v19) = 1;
          }
        }
      }

      else
      {
        *(a5 + v23) = v34;
      }
    }

    ++v19;
    v23 += 44;
  }

  while (v19 != 10);
  if (v20 >= 1)
  {
    v28 = &unk_299066A3A;
    if (*(a5 + 62170))
    {
      v28 = "(Skipped)";
    }

    EvLog_v("DD_Check_Age_QZSS_Data:  Deleting Future ALM, %d SVs  %s", v20, v28);
  }

  result = a2;
  if ((v9 & 1) == 0)
  {
    goto LABEL_52;
  }

  v29 = *MEMORY[0x29EDCA608];

  return DD_Delete_Bad_QZSS_Data(a2, a3, a4, a5);
}

uint64_t DD_Proc_QZSS_Data(uint64_t result, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  v9 = result;
  v41 = *MEMORY[0x29EDCA608];
  v10 = a5 + 1144;
  if (!*(a5 + 29 * *(a2 + 8) + 2314))
  {
    *(a5[1143] + *(a2 + 8)) = 0;
  }

  v11 = *(a2 + 60);
  if ((v11 & 1) != 0 && (*(a2 + 20) & 0xFF0000) != 0x8B0000)
  {
    v38 = *(a2 + 60);
    result = EvCrt_v("DD_Proc_QZSS_Data:  Preamble Test Fail.  SV %d  Word_Mask %x  Word_1 %x");
    goto LABEL_11;
  }

  if ((v11 & 2) == 0)
  {
    *(a2 + 12) = 0;
    goto LABEL_11;
  }

  v12 = *(a2 + 24);
  v13 = (v12 >> 2) & 7;
  *(a2 + 12) = (v12 >> 2) & 7;
  if (!v13)
  {
    goto LABEL_11;
  }

  if (v13 >= 6)
  {
    result = EvCrt_v("DD_Proc_QZSS_Data:  Invalid QZSS Subframe Number.  SV %d  %d");
    goto LABEL_11;
  }

  v15 = v12 & 0xFFFF80;
  v16 = (3 * (v12 & 0xFFFF80)) >> 6;
  if (v15 >= 0xC4DF81)
  {
    result = EvCrt_v("DD_Proc_QZSS_Data:  Subframe HOW TOW Error.  SV %d  TOW %d");
    goto LABEL_11;
  }

  v17 = v16 - 30 * ((143165577 * v16) >> 32);
  if (v17 <= 5)
  {
    v18 = 5;
  }

  else
  {
    v18 = (43 * v17) >> 8;
  }

  if (v18 != v13)
  {
    result = EvCrt_v("DD_Proc_QZSS_Data:  Subframe Number Error.  SV %d  decoded %d  expected %d  HOW TOW %d");
    goto LABEL_11;
  }

  v39 = 0;
  result = DD_Predict_Subframe_Number(a3, &v39);
  if (result && v39 >= 1 && v13 != v39)
  {
    v19 = v39 - 1;
    if (v39 <= 1)
    {
      v19 = 5;
    }

    if (v13 != v19)
    {
      result = EvCrt_v("DD_Proc_QZSS_Data:  Subframe Number Error.  SV %2d  decoded %d  predicted %d  or previous %d");
      goto LABEL_11;
    }
  }

  if (g_Logging_Cfg >= 7)
  {
    EvLog_v("DD_Proc_QZSS_Data:  SV %d  SF %d  ToW %d", *(a2 + 6), v13, *(a3 + 40));
    v20 = (v9 + 6 * *(a2 + 8));
    result = EvLog_nd("DD_Proc_QZSS_Data:  SF masks ", 3, v21, v20[2350], v20[2351], v20[2352]);
    v13 = *(a2 + 12);
  }

  if (v13 - 1 < 3)
  {
    *(a2 + 13) = 0;
    v27 = *(a2 + 8);
    if (*(v10 + 29 * v27 + 26) != 0xFFFFFF && v27[a5[1129]] == 1 && v27[a5[1137]] == 1)
    {
      DD_Proc_Eph_Bit_Validation(v27, v13, a2 + 20, *(a2 + 60), a5);
      v27 = *(a2 + 8);
      v28 = *(v10 + 29 * v27 + 26) == 0xFFFFFF;
      v13 = *(a2 + 12);
    }

    else
    {
      v28 = 0;
    }

    result = DD_Proc_QZSS_Eph_Subframe(v27, v13, a2 + 20, *(a2 + 60), v27[a5[1129]], a5, v9 + 3648, v9 + 3718, v9 + 3740, v9 + 4700, a3, a4, v9 + 4760);
    if (result)
    {
      v29 = *(a2 + 8);
      v30 = (v10 + 116 * v29);
      v31 = *v30 == 0;
      v32 = *a4;
      *v30 = *a4;
      if ((v31 || v28) && v32 >= 1)
      {
        *(a5[1140] + v29) = 1;
        result = Core_Save_QZSS_Eph((v29 - 63), 0, v30);
      }
    }
  }

  else if (v13 - 4 >= 2)
  {
    if (v13)
    {
      result = EvCrt_Illegal_switch_default("DD_Proc_QZSS_Data", 0x30Fu);
    }
  }

  else
  {
    if ((~*(a2 + 60) & 0x3FE) != 0)
    {
      goto LABEL_11;
    }

    if (*(a3 + 16) != 1)
    {
      goto LABEL_11;
    }

    v22 = *(a3 + 32);
    if (v22 < 1025)
    {
      goto LABEL_11;
    }

    v23 = *(a2 + 28);
    v24 = HIWORD(v23) & 0x3F;
    *(a2 + 13) = BYTE2(v23) & 0x3F;
    v25 = (v23 >> 22) & 3;
    *(a2 + 14) = v25;
    if (v25 != 3)
    {
      goto LABEL_11;
    }

    v26 = (v24 - 1);
    if (v26 > 9)
    {
      goto LABEL_54;
    }

    v40 = 0;
    result = Decode_GPS_Check_Alm_TOA((a2 + 20), *(a5[1129] + v26), v22, (v9 + v26 + 3708), (a2 + 10), &v40);
    if (result)
    {
      result = DD_Proc_QZSS_Alm_Subframe(*(a2 + 13), *(a2 + 10), a2 + 20, *a4, v9 + 3648, v9 + 3718, a5);
    }

    else if (v40)
    {
      v33 = *(a2 + 13);
      v34 = a5 + 44 * v33;
      v35 = *(v34 + 2857);
      v36 = *a4;
      *(v34 + 2857) = *a4;
      if (!v35 && v36 >= 1)
      {
        result = Core_Save_QZSS_Alm((v33 - 64), 0, (v34 + 11428));
      }
    }

    if (*(a2 + 14) == 3)
    {
      v24 = *(a2 + 13);
LABEL_54:
      if (v24 == 51)
      {
        result = DD_Proc_QZSS_Health_Subframe(*a4, v9 + 3648, v9 + 3718, v9 + 3708, a5);
        v37 = a5[1143];
        *(v37 + 8) = 0;
        *v37 = 0;
      }
    }
  }

LABEL_11:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DD_Proc_QZSS_Eph_Subframe(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13)
{
  v14 = a3;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  *(&v121[1] + 4) = *MEMORY[0x29EDCA608];
  v95 = a1;
  v90 = a2;
  v20 = a2 - 1;
  v21 = a10 + 6 * a1;
  v97 = a1 + 193;
  v87 = a1;
  v22 = 32 * a2 + 96 * a1 - 32;
  for (i = 2; i != 10; ++i)
  {
    if (((1 << i) & *(v21 + 2 * v20)) != 0)
    {
      ++v15;
    }

    if (((1 << i) & a4) != 0)
    {
      ++v16;
      v24 = ((1 << i) & *(v21 + 2 * v20)) == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      ++v17;
      v25 = *(a9 + v22);
      if (*(v14 + 4 * i) != v25)
      {
        ++v18;
        v86 = *(v14 + 4 * i);
        v26 = a4;
        v27 = v20;
        v28 = a9;
        v29 = v17;
        EvLog_v("DD_Proc_QZSS_Eph_Subframe: SV %d SF %d Diff Wd %d 0x%x 0x%x", v97, a2, i, v86, v25);
        v17 = v29;
        a9 = v28;
        v20 = v27;
        a4 = v26;
        v14 = a3;
      }
    }

    v22 += 4;
  }

  if (v18 > 0)
  {
    if (v18 == 1 && v17 >= 4 && (a2 == 1 && (a4 & 0x3C4) != 0x3C4 || a2 >= 2 && (a4 & 0x3FC) != 0x3FC))
    {
      goto LABEL_129;
    }

    v15 = 0;
    v30 = 2 * a2 - 2;
    *(a10 + 6 * v95 + v30) = 0;
    *(a7 + 6 * v95 + v30) = 256;
  }

  if (v17 - v18 < 2)
  {
    v37 = a11;
    if (v16 >= v15)
    {
      *(a10 + 6 * v95 + 2 * (v90 - 1)) = a4;
      v42 = *(v14 + 24);
      v43 = (a9 + 96 * v95 + 32 * (v90 - 1));
      *v43 = *(v14 + 8);
      v43[1] = v42;
    }
  }

  else
  {
    v31 = a10 + 6 * v95 + 2 * a2;
    v34 = *(v31 - 2);
    v32 = (v31 - 2);
    v33 = v34;
    v35 = (32 * a2 + 96 * v95 + a9 - 32);
    v36 = 2;
    v37 = a11;
    do
    {
      v38 = (1 << v36) & a4;
      v39 = (1 << v36) & v33;
      if (v38)
      {
        v40 = v39 == 0;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        *v35 = *(v14 + 4 * v36);
        v33 |= (1 << v36);
        *v32 = v33;
      }

      else
      {
        if (v38)
        {
          v41 = 1;
        }

        else
        {
          v41 = v39 == 0;
        }

        if (!v41)
        {
          *(v14 + 4 * v36) = *v35;
          LODWORD(a4) = a4 | (1 << v36);
        }
      }

      ++v36;
      ++v35;
    }

    while (v36 != 10);
  }

  v44 = a2 - 1;
  if (a2 != 1 || (a4 & 7) != 7)
  {
    goto LABEL_91;
  }

  if (!a5)
  {
    LOBYTE(v53) = 7;
    goto LABEL_93;
  }

  v45 = v20;
  v46 = (*(a9 + 96 * v95) >> 14) & 0x3FF;
  v47 = *(v37 + 40);
  if (*(v37 + 16))
  {
    v48 = *(v37 + 32);
    v49 = *(v37 + 32);
    do
    {
      v50 = v46;
      v46 += 1024;
    }

    while (v48 - 512 > v50);
    v51 = v50;
    if (v49 != v50)
    {
      v52 = a9;
      EvLog_v("DD_Proc_QZSS_Eph_Subframe:  WARNING:  Different Week Number detected,  %d != %d  SV %d", v50, *(v37 + 32), v97);
      a9 = v52;
      v51 = v50;
      v48 = *(v37 + 32);
      v49 = *(v37 + 32);
    }

    if (v49 == v50)
    {
      *(v37 + 68) = -1;
      *(v37 + 64) = -1;
      *(v37 + 70) = 0;
      *(v37 + 74) = 0;
      *(v37 + 20) = *(v37 + 24);
      goto LABEL_70;
    }

    if (*v37 < 3 || (v47 - 32) >= 0x93A41)
    {
      *(v37 + 68) = -1;
      *(v37 + 64) = -1;
      *(v37 + 70) = 0;
      *(v37 + 74) = 0;
LABEL_70:
      v20 = v45;
      v14 = a3;
      if (g_Logging_Cfg >= 7)
      {
        v60 = a9;
        EvLog_v("DD_Proc_QZSS_Eph_Subframe:  Week Num Candidates  %d %d  %d %d  %d %d", -1, 0, -1, 0, -1, 0);
        a9 = v60;
      }

      goto LABEL_91;
    }

    v91 = v47;
    v94 = a9;
    EvCrt_v("DD_Proc_QZSS_Eph_Subframe:  WARNING:  Different Week Number detected, possible QZSS Spoofing,  %d != %d  SV %d", v51, v48, v97);
    *(v37 + 105) = 1;
    v54 = *(v37 + 32);
    if (v54 == v50)
    {
      *(v37 + 20) = *(v37 + 24);
      LOWORD(v54) = v50;
    }
  }

  else
  {
    v91 = *(v37 + 40);
    v94 = a9;
    v54 = *(*(p_api + 72) + 1734);
    if (v46 > v54)
    {
      LOWORD(v54) = (*(a9 + 96 * v95) >> 14) & 0x3FF;
    }

    v50 = ((v46 ^ 0x3FF) + v54) & 0xFC00 | v46;
    LOWORD(v54) = *(v37 + 32);
    v51 = v50;
  }

  v55 = v51;
  EvLog_v("DD_Proc_QZSS_Eph_Subframe:  Submitting WeekNum   %d  SV %d  DBts %d  %d", v51, v97, *(v37 + 16), v54);
  if (*(*(a6 + 9096) + (v97 + 63)) == 1)
  {
    v56 = DD_Check_New_QZSS_Eph((v97 + 63), v94, a6);
  }

  else
  {
    v56 = 1;
  }

  if ((*(v37 + 16) & 1) == 0)
  {
    EvCrt_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num initialised to %d from SV %d", v51, v97);
LABEL_61:
    *(v37 + 32) = v50;
    *(v37 + 16) = 1;
    *(v37 + 20) = *(v37 + 24);
    *(v37 + 64) = -1;
    *(v37 + 68) = -1;
    *(v37 + 70) = 0;
    *(v37 + 74) = 0;
    EvLog_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num Submit %d %d from SV %d", 1, v51, v97);
    EvLog_v("DD_Proc_QZSS_Eph_Subframe:  Submitted  WeekNum  %d  SV %d  DBts %d  %d", v51, v97, *(v37 + 16), *(v37 + 32));
    if (*v37 < 3)
    {
      *a12 = 0;
    }

    else
    {
      *a12 = v91 + 604800 * v51;
    }

    goto LABEL_90;
  }

  v57 = *(v37 + 32);
  if ((v57 == v50) | v56 & 1)
  {
    if (v57 != v50 && ((v56 ^ 1) & 1) == 0)
    {
      v58 = 0;
      v59 = (v37 + 70);
      while (*(v59 - 3) != v50)
      {
        ++v58;
        ++v59;
        if (v58 == 3)
        {
          goto LABEL_80;
        }
      }

      if (v58 >= 3)
      {
LABEL_80:
        v66 = 0;
        v67 = (v37 + 64);
        v51 = v55;
        while (*v67 != -1)
        {
          --v66;
          ++v67;
          if (v66 == -3)
          {
            goto LABEL_88;
          }
        }

        if (-v66 < 3)
        {
          *v67 = v50;
          v67[3] = 1;
          EvLog_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d found on SV %d");
          goto LABEL_89;
        }

LABEL_88:
        *(v37 + 68) = -1;
        *(v37 + 64) = -1;
        *(v37 + 70) = 0;
        *(v37 + 74) = 0;
        EvLog_v("QZSS DD_Proc_Submit_GPS_WeekNo:  WeekNum Candidate overflow, %d >= %d");
        goto LABEL_89;
      }

      v68 = *v59 + 1;
      *v59 = v68;
      EvLog_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d observed (%d) on SV %d", v55, v68, v97);
      v69 = *v59;
      v51 = v55;
      if (v69 < 3)
      {
        goto LABEL_89;
      }

      EvLog_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d accepted based on %d observations", v55, v69);
      goto LABEL_61;
    }

    if (v57 == v50)
    {
      v61 = (v37 + 70);
      v62 = 3;
      do
      {
        v63 = *v61;
        v64 = __OFSUB__(v63, 1);
        v65 = v63 - 1;
        if (v65 < 0 == v64)
        {
          *v61 = v65;
          if (!v65)
          {
            *(v61 - 3) = -1;
          }
        }

        ++v61;
        --v62;
      }

      while (v62);
    }
  }

  else
  {
    EvCrt_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d found on SV %d which fails bit validation check", v51, v97);
  }

LABEL_89:
  EvLog_v("QZSS DD_Proc_Submit_GPS_WeekNo:  Week Num Submit %d %d from SV %d", 0, v51, v97);
LABEL_90:
  a9 = v94;
  v20 = v45;
  v14 = a3;
LABEL_91:
  if (v44 > 2)
  {
LABEL_129:
    result = 0;
    goto LABEL_130;
  }

  v53 = 0x90207u >> (8 * (v44 & 0x1F));
LABEL_93:
  if (((a4 >> v53) & 1) == 0)
  {
    goto LABEL_129;
  }

  v70 = *(v14 + 4 * v53 + 2);
  if (a2 == 1 && (a4 & 0x3C4) != 0x3C4)
  {
    goto LABEL_129;
  }

  if (a2 >= 2 && (a4 & 0x3FC) != 0x3FC)
  {
    goto LABEL_129;
  }

  v71 = (a7 + 6 * v95);
  v72 = v71[v20];
  if (v70 != v72)
  {
    v71[v20] = v70;
  }

  if (v70 != *(a8 + 2 * v95))
  {
    for (j = 0; j != 6; j += 2)
    {
      if (2 * v20 != j)
      {
        *(a10 + 6 * v95 + j) = 0;
      }
    }

    *(a8 + 2 * v95) = v70;
  }

  v74 = (a10 + 6 * v95);
  v75 = *v74;
  if ((~v75 & 0x3C4) == 0 && (~v74[1] & 0x3FC) == 0 && (~v74[2] & 0x3FC) == 0)
  {
    v76 = *v71;
    if (v76 == v71[1] && v76 == v71[2])
    {
      v77 = (a9 + 96 * v95);
      v78 = v77[3];
      v117 = v77[2];
      v118 = v78;
      v79 = v77[5];
      v119 = v77[4];
      v120 = v79;
      v80 = v77[1];
      v115 = *v77;
      *(v121 + 7) = 0;
      v121[0] = 0;
      v114[0] = *a12;
      v114[1] = 4;
      v116 = v80;
      v100 = 0;
      memset(v99, 0, sizeof(v99));
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
      Get_GPS_Kep_Ephemeris(5, v87 - 63, v114, v99);
      v81 = Kep_Check_Ephemeris(*a12 / 604800, *a12 % 604800, 1, v99);
      v82 = v81;
      if (!ST_Check_Eph_Kep_Err("DD_Proc_QZSS_Eph_Subframe", v81, v99))
      {
        if ((v82 & 0xC) != 0)
        {
          *v74 = 0;
        }

        if ((v82 & 0x3F0) != 0)
        {
          v74[1] = 0;
        }

        if ((v82 & 0xC00) != 0)
        {
          v74[2] = 0;
LABEL_119:
          *(*(a6 + 9144) + v95) = 1;
          goto LABEL_120;
        }

        if ((v82 & 0x3FC) != 0)
        {
          goto LABEL_119;
        }
      }

LABEL_120:
      v75 = *v74;
    }
  }

  if ((~v75 & 0x3C4) != 0)
  {
    goto LABEL_129;
  }

  if ((~v74[1] & 0x3FC) != 0)
  {
    goto LABEL_129;
  }

  if ((~v74[2] & 0x3FC) != 0)
  {
    goto LABEL_129;
  }

  v83 = *v71;
  if (v83 != v71[1] || v83 != v71[2])
  {
    goto LABEL_129;
  }

  if (v70 == v72 && a5)
  {
    result = *(a13 + v95) == 0;
  }

  else
  {
    result = 0;
    *(a13 + v95) = 1;
  }

  *v74 = 0;
  v74[2] = 0;
LABEL_130:
  v85 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DD_Proc_QZSS_Alm_Subframe(char a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v43 = *MEMORY[0x29EDCA608];
  v12 = *(a3 + 16) & 0xE0;
  v13 = v12 == 0;
  v14 = (a1 - 1);
  v15 = *(a7[1129] + v14);
  if (v15 != 1 || v12 == 0)
  {
    if ((v15 & 1) == 0 && !v12)
    {
      v17 = a7[1137];
      if (*(v17 + v14) == 1 && *(a7 + 29 * (a1 - 1) + 2288) + 100 < a4)
      {
        *(a7[1133] + v14) = 0;
        *(v17 + v14) = 0;
        v18 = a5 + 6 * (a1 - 1);
        *v18 = 16777472;
        *(v18 + 4) = 256;
        *(a6 + 2 * v14) = 256;
      }

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v40 = 0;
  v39 = a4;
  v41 = *(a3 + 8);
  v42 = *(a3 + 24);
  v34 = 0;
  memset(v33, 0, 15);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  Get_GPS_Kep_Almanac(&v39, v33);
  LODWORD(v33[1]) = 5;
  v19 = Kep_Check_Almanac(a4 / 604800, v33);
  if (v19)
  {
    *(a7[1143] + v14) = 1;
  }

  result = ST_Check_Alm_Kep_Err("DD_Proc_QZSS_Alm_Subframe:", v19, v33);
  if (result)
  {
    v21 = a7[1129];
    *(v21 + v14) = v13;
    v22 = a7 + 44 * v14;
    v23 = (v22 + 11472);
    *(v22 + 5741) = a2;
    v24 = *(a3 + 8);
    *(v22 + 11500) = *(a3 + 24);
    *(v22 + 11484) = v24;
    *(v22 + 2868) = a4;
    *(v22 + 2869) = 4;
    *(a7[1134] + v14) = 1;
    *(a7[1139] + v14) = 1;
    if (*(v21 + v14))
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    *(a7[1131] + 20 * v14 + 4) = v25;
    if (a4 >= 1)
    {
      result = Core_Save_QZSS_Alm((a1 - 64), 0, v23);
      v21 = a7[1129];
    }

    v26 = 0;
    LODWORD(v27) = 0;
    v28 = p_NV;
    v29 = *(v21 + 8);
    *(p_NV + 6092) = *v21;
    *(v28 + 6100) = v29;
    v30 = 55665;
    do
    {
      v31 = *(v28 + 6088 + v26) ^ BYTE1(v30);
      v30 = 52845 * (v30 + v31) + 22719;
      v27 = (v27 + v31);
      ++v26;
    }

    while (v26 != 40);
    *(v28 + 6080) = v27;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_QZSS_Health_Subframe(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v24 = 257;
  v23 = 0x101010101010101;
  v6 = a5 + 1144;
  v7 = a5 + 1434;
  v8 = (a2 + 4);
  v9 = 4;
  do
  {
    v10 = *(&v23 + v5);
    if (*(a5[1129] + v5))
    {
      if (*(&v23 + v5))
      {
        goto LABEL_12;
      }
    }

    else if (*(&v23 + v5))
    {
      v11 = a5[1139];
      if (*(v11 + v5) == 1 && *v7 + 100 < result)
      {
        *(a5[1134] + v5) = 0;
        *(v11 + v5) = 0;
        *(a4 + v5) = -1;
      }

      v12 = a5[1137];
      if (*(v12 + v5) == 1 && *v6 + 100 < result)
      {
        *(a5[1133] + v5) = 0;
        *(v12 + v5) = 0;
        *(v8 - 1) = 16777472;
        *v8 = 256;
        *(a3 + 2 * v5) = 256;
      }

LABEL_12:
      v13 = 1;
      goto LABEL_14;
    }

    v13 = 2;
LABEL_14:
    *(a5[1131] + v9) = v13;
    ++v5;
    v9 += 20;
    v8 += 3;
    v7 += 11;
    v6 += 29;
  }

  while (v5 != 10);
  v14 = 0;
  LODWORD(v15) = 0;
  v16 = a5[1129];
  *(v16 + 8) = 257;
  *v16 = 0x101010101010101;
  v17 = a5[1129];
  v18 = p_NV;
  v19 = *(v17 + 8);
  *(p_NV + 6092) = *v17;
  *(v18 + 6100) = v19;
  v20 = 55665;
  do
  {
    v21 = *(v18 + 6088 + v14) ^ BYTE1(v20);
    v20 = 52845 * (v20 + v21) + 22719;
    v15 = (v15 + v21);
    ++v14;
  }

  while (v14 != 40);
  *(v18 + 6080) = v15;
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Save_New_QZSS_Eph(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a3;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v39 = *MEMORY[0x29EDCA608];
  v10 = 10424;
  v11 = 10421;
  v12 = 9152;
  v13 = 9264;
  v14 = 9262;
  v15 = 9261;
  v16 = 9160;
  v17 = 9260;
  v18 = 11472;
  do
  {
    if (*(v6 + v9) == 1)
    {
      v36 = v13;
      v37 = v11;
      v35 = v10;
      v38 = v8;
      v19 = (a2 + v7);
      if (DD_Check_New_QZSS_Eph(v9, a2, a5))
      {
        v20 = a5[1129];
        if (*(v20 + v9))
        {
          v11 = v37;
          v8 = v38;
          v13 = v36;
        }

        else
        {
          v21 = a5[1139];
          v13 = v36;
          v11 = v37;
          if (*(v21 + v9) == 1)
          {
            v8 = v38;
            if (*(a5 + v18) + 100 < a1)
            {
              *(a5[1134] + v9) = 0;
              *(v21 + v9) = 0;
              *(a4 + v9) = -1;
              v20 = a5[1129];
            }
          }

          else
          {
            v8 = v38;
          }
        }

        *(v20 + v9) = 1;
        *(a5[1130] + v9) = 1;
        *(a5 + v17) = 1;
        if (*(v20 + v9))
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        *(a5[1131] + v8) = v22;
        v23 = (a5 + v16);
        v24 = v19[1];
        *v23 = *v19;
        v23[1] = v24;
        v25 = v19[2];
        v26 = v19[3];
        v27 = v19[5];
        v23[4] = v19[4];
        v23[5] = v27;
        v23[2] = v25;
        v23[3] = v26;
        v10 = v35;
        if (*(a5[1138] + v9) == 1)
        {
          *(a5 + v15) = *(a5 + v11);
          *(a5 + v14) = *(a5 + v35 - 2);
          *(a5 + v13) = *(a5 + v35);
        }

        v28 = a5 + v12;
        *v28 = a1;
        *(v28 + 1) = 4;
        *(a5[1133] + v9) = 1;
        *(a5[1137] + v9) = 1;
        *(v28 + 26) = 0;
        *(a5[1142] + v9) = 0;
        v6 = a3;
        *(a3 + v9) = 0;
        if (a1 >= 1)
        {
          *(a5[1140] + v9) = 1;
          Core_Save_QZSS_Eph((v9 - 63), 0, v28);
          v13 = v36;
          v11 = v37;
          v8 = v38;
          v6 = a3;
        }
      }

      else
      {
        v6 = a3;
        *(a3 + v9) = 0;
        v19[4] = 0u;
        v19[5] = 0u;
        v19[2] = 0u;
        v19[3] = 0u;
        *v19 = 0u;
        v19[1] = 0u;
        v11 = v37;
        v8 = v38;
        v10 = v35;
        v13 = v36;
      }
    }

    ++v9;
    v10 += 116;
    v11 += 116;
    v8 += 20;
    v12 += 116;
    v13 += 116;
    v14 += 116;
    v15 += 116;
    v16 += 116;
    v17 += 116;
    v18 += 44;
    v7 += 96;
  }

  while (v9 != 10);
  v29 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t DD_Check_New_QZSS_Eph(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(*(a3 + 9096) + a1);
  v4 = a3 + 116 * a1;
  v5 = *(v4 + 9208);
  v17 = *(v4 + 9192);
  v18 = v5;
  v6 = *(v4 + 9240);
  v19 = *(v4 + 9224);
  v20 = v6;
  v7 = *(v4 + 9176);
  v15 = *(v4 + 9160);
  v16 = v7;
  if (v3 == 1 && (v8 = a2 + 96 * a1, ((*(v8 + 20) ^ DWORD1(v16)) & 0xFF0000) == 0))
  {
    v11 = 0;
    v12 = *(v4 + 9256);
    v13 = 0uLL;
    do
    {
      v13 = vsubq_s32(v13, vmvnq_s8(vceqq_s32(*(&v15 + v11), *(v8 + v11))));
      v11 += 16;
    }

    while (v11 != 96);
    if (vaddvq_s32(v13))
    {
      v14 = v12 == 0xFFFFFF;
    }

    else
    {
      v14 = 0;
    }

    result = !v14;
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(int a1, int a2, double a3)
{
  if (a3 + -10800.0 < 0.0)
  {
    v3 = a2 < 2;
    if (a2 >= 2)
    {
      --a2;
    }

    else
    {
      a2 = 1461;
    }

    a1 -= v3;
  }

  v4 = a2 + 1461 * a1;
  v5 = &byte_299053DC2;
  v6 = 8;
  while (v4 < *(v5 - 1) + 1461 * *(v5 - 4) || v4 >= *(v5 + 5) + 1461 * v5[8])
  {
    v5 += 12;
    if (!--v6)
    {
      v7 = -99;
      goto LABEL_12;
    }
  }

  v7 = *v5;
LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

BOOL ECEF2Geocentric(long double *a1, long double *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 * v3 + v2 * v2;
  v6 = sqrt(v5 + v4 * v4);
  if (v6 > 0.00000001)
  {
    v8 = sqrt(v5);
    if (fabs(v8) <= 0.00000001 || fabs(v4 / v8) >= 100000000.0)
    {
      *a2 = dbl_299053E30[v4 >= 0.0];
      v9 = 0.0;
    }

    else
    {
      *a2 = atan2(v4, v8);
      v9 = atan2(v3, v2);
    }

    a2[1] = v9;
    a2[2] = v6 + -6371009.0;
  }

  result = v6 > 0.00000001;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t U4sqrt(unsigned int a1)
{
  v1 = (((a1 & 0xC0000000) != 0) << 15) | 0x4000;
  if (v1 * v1 <= a1)
  {
    v2 = (((a1 & 0xC0000000) != 0) << 15) | 0x4000;
  }

  else
  {
    v2 = ((a1 & 0xC0000000) != 0) << 15;
  }

  if ((v2 | 0x2000) * (v2 | 0x2000) <= a1)
  {
    v2 |= 0x2000u;
  }

  if ((v2 | 0x1000) * (v2 | 0x1000) <= a1)
  {
    v2 |= 0x1000u;
  }

  if ((v2 + 2048) * (v2 + 2048) <= a1)
  {
    v2 += 2048;
  }

  if ((v2 + 1024) * (v2 + 1024) <= a1)
  {
    v2 += 1024;
  }

  if ((v2 + 512) * (v2 + 512) <= a1)
  {
    v2 += 512;
  }

  if ((v2 + 256) * (v2 + 256) <= a1)
  {
    v2 += 256;
  }

  if ((v2 + 128) * (v2 + 128) <= a1)
  {
    v2 += 128;
  }

  if ((v2 + 64) * (v2 + 64) <= a1)
  {
    v2 += 64;
  }

  if ((v2 + 32) * (v2 + 32) <= a1)
  {
    v2 += 32;
  }

  if ((v2 + 16) * (v2 + 16) <= a1)
  {
    v2 += 16;
  }

  if ((v2 + 8) * (v2 + 8) <= a1)
  {
    v2 += 8;
  }

  if ((v2 + 4) * (v2 + 4) <= a1)
  {
    v2 += 4;
  }

  if ((v2 + 2) * (v2 + 2) <= a1)
  {
    v2 += 2;
  }

  if ((v2 + 1) * (v2 + 1) > a1)
  {
    result = v2;
  }

  else
  {
    result = v2 + 1;
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

double *Inc_GPS_TOW(double a1, double *result, __int16 *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *result + a1;
  *result = v3;
  if (v3 >= 604800.0)
  {
    v4 = *a3;
    do
    {
      v3 = v3 + -604800.0;
      ++v4;
    }

    while (v3 >= 604800.0);
    *result = v3;
    *a3 = v4;
  }

  if (v3 < 0.0)
  {
    v5 = *a3;
    do
    {
      v3 = v3 + 604800.0;
      --v5;
    }

    while (v3 < 0.0);
    *result = v3;
    *a3 = v5;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Sample_Track_Meas(int *a1, _DWORD *a2, double *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v35 = *MEMORY[0x29EDCA608];
  v32 = (a4 + 61440);
  v17 = *a1;
  *a4 = *a1;
  v18 = v17 - *a2;
  if (v17 == *a2)
  {
    v18 = 1;
  }

  v19 = a1[4];
  *(a4 + 16) = v18;
  *a2 = v17;
  *(a4 + 4) = a1[1];
  *(a4 + 8) = *(a1 + 1);
  *(a4 + 20) = v19;
  *(a4 + 24) = *(a1 + 20);
  *(a4 + 25) = *(a1 + 22);
  *(a4 + 56) = *(a1 + 21);
  *(a4 + 26) = *(a1 + 12);
  v20 = *(a1 + 4);
  *(a4 + 32) = v20;
  LODWORD(a7) = *(a4 + 16);
  v21 = v20 - *a3 + *&a7 * -0.001;
  v22 = *(a1 + 6);
  *(a4 + 40) = v21;
  *a3 = v20;
  *(a4 + 48) = v22;
  *(a4 + 188) = a1[14];
  *(a4 + 192) = *(a1 + 60);
  *(a4 + 194) = *(a1 + 31);
  *(a4 + 196) = *(a1 + 32);
  *(a4 + 200) = *(a1 + 9);
  memset(v34, 0, sizeof(v34));
  v23 = 97;
  do
  {
    v24 = &a1[v8];
    v25 = v24[24];
    if (!v25)
    {
      goto LABEL_24;
    }

    ++v16;
    v15 += *(a1 + v8 + 2272);
    if (v24[312] < 10 || (*(v34 + v8) & 1) != 0)
    {
      goto LABEL_24;
    }

    *(v34 + v8) = 1;
    v26 = *(a1 + v8 + 736);
    if (v26 != 255)
    {
      *(v34 + v26) = 1;
    }

    v27 = v25 >> 8;
    if (v25 > 3u)
    {
      if (v25 - 5 < 2)
      {
        goto LABEL_18;
      }

      if (v25 != 4)
      {
        if (v25 != 7)
        {
          goto LABEL_19;
        }

LABEL_16:
        v33 = v13;
        EvCrt_Illegal_switch_case("NK_Sample_Track_Meas", 0x8Du);
        v13 = v33;
        LOBYTE(v27) = *(a1 + v23);
        goto LABEL_19;
      }

      ++v12;
    }

    else
    {
      if (v25 <= 1u)
      {
        if (!v25)
        {
          goto LABEL_16;
        }

LABEL_18:
        ++v14;
        goto LABEL_19;
      }

      if (v25 != 2)
      {
        goto LABEL_18;
      }

      ++v13;
    }

LABEL_19:
    ++v9;
    if (v27 <= 0xDu)
    {
      v28 = 1 << v27;
      if ((v28 & 0x923) != 0)
      {
        ++v11;
      }

      else if ((v28 & 0x2288) != 0)
      {
        ++v10;
      }
    }

LABEL_24:
    ++v8;
    v23 += 4;
  }

  while (v8 != 128);
  if (v16)
  {
    *(a4 + 1488) = v15 / v16;
  }

  v32[686] = v14;
  v32[691] = v13;
  v32[696] = v12;
  v32[701] = v11;
  v32[706] = v10;
  v29 = *MEMORY[0x29EDCA608];
  return v9;
}

void NK_BDS_Consistency_Checks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x29EDCA608];
  if (*(a1 + 18) != 1 || *(a1 + 1854) != 1)
  {
    goto LABEL_61;
  }

  v46 = *(a2 + 2632);
  v9 = v46 >= 6 && *(a2 + 2640) < 10.0 && *(a2 + 2648) < 4.0;
  v10 = *(a2 + 1024);
  v11 = v10 >= 5 && *(a2 + 1032) > 50.0 && *(a2 + 1040) > 400.0;
  *&v48[0] = 0;
  if (R8_EQ((a5 + 1648), v48))
  {
    v12 = 0.0;
  }

  else
  {
    *v47 = 0;
    v13 = R8_EQ((a5 + 1632), v47);
    v12 = 0.0;
    if (!v13)
    {
      v12 = (*(a5 + 1648) - *(a5 + 1632)) * 299792458.0;
    }
  }

  v14 = v10 - 9 < 0xFFFFFFF8 || v11;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_42;
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v20 = (a5 + 7080);
  v21 = (a5 + 7336);
  v22 = (a5 + 12072);
  v23 = 128;
  v24 = a3;
  do
  {
    if (*(v24 + 96) == 1 && *(v24 + 1248) >= 10)
    {
      if (*v20 == 1)
      {
        ++v18;
      }

      else
      {
        if (!*v21)
        {
          goto LABEL_31;
        }

        ++v17;
      }

      v25 = fabs(*v22);
      if (v25 >= 30.0)
      {
        if (v25 > 100.0)
        {
          ++v15;
        }
      }

      else
      {
        ++v16;
      }
    }

LABEL_31:
    ++v22;
    ++v21;
    ++v20;
    v24 += 4;
    --v23;
  }

  while (v23);
  v19 = v15 >= v16 || v17 >= v18;
  if (fabs(v12) > 200.0)
  {
    v19 = 1;
  }

  if (v16 >= 5)
  {
    v19 = 0;
  }

LABEL_42:
  if (v9 && (v11 || v19))
  {
    v27 = *(a5 + 2138);
    if (v27 >= 0x1A)
    {
      v28 = *(a5 + 2149);
      if (v28 >= 0x1A && !*(a2 + 1560) && !*(a2 + 2096))
      {
        *(a5 + 63320) = 1;
        v29 = (a3 + 96);
        v30 = 7080;
        v31 = 128;
        v32 = 36888;
        v33 = 22240;
        v34 = 21984;
        v35 = 7336;
        v36 = (a3 + 96);
        do
        {
          v37 = *v36;
          v36 += 4;
          if (v37 == 1)
          {
            if (*(a5 + v30) == 1)
            {
              *(a5 + v30) = 0;
              *(a5 + v35) = 19;
              --*(a5 + 6771);
              ++*(a5 + 6772);
            }

            if (*(a5 + v34) == 1)
            {
              *(a5 + v34) = 0;
              *(a5 + v33) = 19;
              --*(a5 + 21675);
              ++*(a5 + 21676);
            }

            if (*(a5 + v32) == 1)
            {
              *(a5 + v32) = 0;
              *(a5 + v33 + 14904) = 19;
              --*(a5 + 36579);
              ++*(a5 + 36580);
            }
          }

          ++v32;
          v33 += 4;
          ++v34;
          v35 += 4;
          ++v30;
          --v31;
        }

        while (v31);
        EvLog_v("BDS Consistency:  Code Divergence: %f  %d  BDS ok  %d %d %d %f %f   GPS div  %d %d %d %f %f   ClkB div %f   GPS strug  %d %d %d %d %d   %s", *(a5 + 32), *a5 - *(a4 + 68180), 1, v46, v28, sqrt(*(a2 + 2648)), *(a2 + 2640), v11, v10, v27, sqrt(*(a2 + 1040)), *(a2 + 1032), v12, v19, v18, v17, v16, v15, "WARNING:  GPS diverged & edited, Prioritising BDS");
        *(a5 + 1632) = *(a5 + 1648);
        memset(v48, 0, sizeof(v48));
        v47[0] = 0;
        Apply_Q_Boost(8.98755179e10, 0, 1u, (a4 + 352), v47, v48);
        *(a5 + 61824) = 0x4234ECFF91B1AE87;
        if (!*(a4 + 27136))
        {
          for (i = 0; i != 3; ++i)
          {
            Apply_Q_Boost(100000000.0, i + 6, 1u, (a4 + 352), v47, v48);
            *(a5 + 61872 + 8 * i) = 0x4197D78400000000;
          }

          v39 = *(a4 + 27136);
          if (!v39)
          {
            v41 = 0;
            v42 = 0.0;
            do
            {
              if (*(a5 + 7080 + v41) == 1 && *v29 == 4)
              {
                ++v39;
                v42 = v42 + *(a5 + 12072 + 8 * v41);
              }

              ++v41;
              v29 += 4;
            }

            while (v41 != 128);
            if (v39 > 0)
            {
              v43 = v42 / v39 + v42 / v39;
              v44 = v43 * v43;
              v45 = *(a5 + 61840);
              if (v44 > v45)
              {
                Apply_Q_Boost(v44 - v45, 2u, 1u, (a4 + 352), v47, v48);
                *(a5 + 61840) = v44;
              }
            }
          }
        }

        *(a5 + 61934) = 0;
        *(a3 + 91) = 0;
        *(a3 + 87) = 0;
      }
    }
  }

LABEL_61:
  v40 = *MEMORY[0x29EDCA608];
}

uint64_t Decode_GPS_Check_Alm_TOA(const unsigned int *a1, char a2, __int16 a3, unsigned __int8 *a4, __int16 *a5, BOOL *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  *a6 = 0;
  v6 = *(a1 + 14);
  if (v6 > 0x93)
  {
    goto LABEL_3;
  }

  v7 = a1[1] & 0xFFFF80;
  if (v7 > 0xC4DFEA)
  {
    goto LABEL_3;
  }

  v10 = (v6 << 12) - ((3 * v7) >> 6);
  if (v10 <= 302399)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v10 < -302400)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  *a5 = v12 + a3;
  v13 = *a4;
  if (v13 < v6 || (v13 - v6) >= 74)
  {
    *a4 = v6;
    result = 1;
    goto LABEL_4;
  }

  if (v13 != v6 || (*a6 = 1, (a2 & 1) != 0))
  {
LABEL_3:
    result = 0;
  }

  else
  {
    result = ((a1[4] & 0xE0) == 0) & (0xE4FE7F3uLL >> a1[4]);
  }

LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Comp_DR_Meas(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v52 = *MEMORY[0x29EDCA608];
  v20 = a1;
  bzero(a14, 8 * a1);
  bzero(a15, a1);
  if (a9 > 0.0 && a1)
  {
    v21 = 0;
    v22 = (a9 * 100.0) + 1;
    v23 = a2 * 299792.458;
    v24 = 1.0 / a9;
    v48 = a7;
    while (1)
    {
      v25 = 0;
      if (*(a11 + 4 * v21) < 15)
      {
        break;
      }

      v26 = *(a10 + 2 * v21) & 0x300;
      if (*(a6 + 2 * v21))
      {
        v27 = v26 == 768;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      if (v22 < *(a6 + 2 * v21) && *(a13 + v21) == 1 && v26 == 768)
      {
        v29 = v23 + *(a7 + 8 * v21) - *(a12 + 8 * v21);
        *(a14 + v21) = v29;
        *(a15 + v21) = 1;
        v30 = *(a8 + 8 * v21) + v29 * v24;
        if (fabs(v30) > 6.0)
        {
          *(a11 + 4 * v21) = 14;
          *(a15 + v21) = 0;
          GNSS_SV_Str = Get_GNSS_SV_Str(*(a3 + 4 * v21));
          EvCrt_v("NK_Comp_DR_Meas:  %d  %s  DR-DO = %d m/s !  CP (%d - %d)  DO %d  SNR %d", v21, GNSS_SV_Str, v30, *(v48 + 8 * v21), *(a12 + 8 * v21), *(a8 + 8 * v21), *(a5 + v21));
          if ((*(a15 + v21) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v32 = *(a4 + v21);
        if (v32 == 255 || v21 <= v32 || *(a15 + v32) != 1)
        {
          goto LABEL_27;
        }

        v33 = *(a3 + 1 + 4 * v32);
        if (v33 <= 0xF && ((1 << v33) & 0xDD77) != 0)
        {
          v34 = *(a4 + v21);
          v35 = v21;
        }

        else
        {
          v34 = v21;
          v35 = *(a4 + v21);
          LODWORD(v32) = v21;
        }

        v36 = *(a14 + v34);
        v37 = *(a14 + v35);
        if (vabdd_f64(v36, v37) > 0.04)
        {
          v38 = v36 - v37;
          v43 = v34;
          v44 = v35;
          v39 = Get_GNSS_SV_Str(*(a3 + 4 * v34));
          strlcpy(__dst, v39, 8uLL);
          v40 = Get_GNSS_SV_Str(*(a3 + 4 * v44));
          strlcpy(v50, v40, 8uLL);
          EvCrt_v("Comp_DR_Meas:  L1  %d  %s  %d  %d  %f  vs  L5  %d  %s  %d  %d  %f   diff  %f mm", v32, __dst, *(a5 + v43), *(a6 + 2 * v43), *(a14 + v43), v44, v50, *(a5 + v44), *(a6 + 2 * v44), *(a14 + v44), v38 * 1000.0);
          a7 = v48;
          if ((v28 & 1) == 0)
          {
            break;
          }
        }

        else
        {
LABEL_27:
          a7 = v48;
          if (!v28)
          {
            break;
          }
        }
      }

      else
      {
        *(a11 + 4 * v21) = 14;
        if ((v28 & 1) == 0)
        {
          break;
        }
      }

      v25 = *(a7 + 8 * v21);
      v41 = 1;
LABEL_29:
      *(a12 + 8 * v21) = v25;
      *(a13 + v21++) = v41;
      if (v20 == v21)
      {
        goto LABEL_32;
      }
    }

    v41 = 0;
    goto LABEL_29;
  }

LABEL_32:
  v42 = *MEMORY[0x29EDCA608];
}

BOOL Init_DB_Sys_Status(uint64_t a1)
{
  v2 = 0;
  v18 = *MEMORY[0x29EDCA608];
  *(a1 + 488) = a1 + 265;
  *(a1 + 496) = a1 + 297;
  *(a1 + 528) = a1 + 321;
  *(a1 + 520) = a1 + 357;
  *(a1 + 536) = a1 + 430;
  *(a1 + 504) = a1 + 420;
  *(a1 + 512) = a1 + 444;
  *(a1 + 768) = a1 + 544;
  *(a1 + 776) = a1 + 576;
  *(a1 + 784) = a1 + 699;
  *(a1 + 808) = a1 + 600;
  *(a1 + 800) = a1 + 636;
  *(a1 + 816) = a1 + 709;
  *(a1 + 792) = a1 + 723;
  v3 = (a1 + 824);
  *(a1 + 1048) = a1 + 824;
  *(a1 + 1056) = a1 + 856;
  *(a1 + 1064) = a1 + 979;
  *(a1 + 1088) = a1 + 880;
  *(a1 + 1080) = a1 + 916;
  *(a1 + 1096) = a1 + 989;
  *(a1 + 1072) = a1 + 1003;
  v4 = (a1 + 1104);
  *(a1 + 1328) = a1 + 1104;
  *(a1 + 1336) = a1 + 1136;
  *(a1 + 1344) = a1 + 1259;
  *(a1 + 1368) = a1 + 1160;
  *(a1 + 1360) = a1 + 1196;
  *(a1 + 1376) = a1 + 1269;
  *(a1 + 1352) = a1 + 1283;
  v5 = (a1 + 1384);
  *(a1 + 1608) = a1 + 1384;
  *(a1 + 1616) = a1 + 1416;
  *(a1 + 1624) = a1 + 1539;
  *(a1 + 1648) = a1 + 1440;
  *(a1 + 1640) = a1 + 1476;
  *(a1 + 1656) = a1 + 1549;
  *(a1 + 1632) = a1 + 1563;
  *a1 = 0x200000000;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 1;
  *(a1 + 17) = 16843009;
  *(a1 + 14) = 16843009;
  *(a1 + 29) = 256;
  *(a1 + 39) = 0;
  *(a1 + 31) = 0;
  *(a1 + 43) = 257;
  *(a1 + 48) = 0x200000000;
  *(a1 + 65) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 1836) = xmmword_299053E80;
  *(a1 + 1852) = 1;
  *(a1 + 264) = 0;
  *(a1 + 1664) = 0x3E800000000;
  *(a1 + 1676) = 0;
  *(a1 + 1680) = vdupq_n_s64(0x4060A00000000000uLL);
  *(a1 + 1696) = vdupq_n_s64(0x4079000000000000uLL);
  *(a1 + 1712) = xmmword_299053E90;
  *(a1 + 1732) = 140181504;
  *(a1 + 1736) = 2139;
  *(a1 + 1760) = 60000;
  *(a1 + 467) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 457) = 0u;
  *(a1 + 409) = 0u;
  *(a1 + 425) = 0u;
  *(a1 + 377) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 361) = 0u;
  *(a1 + 313) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 281) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 265) = 0u;
  *(a1 + 746) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 1586) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  v6 = 1;
  *(a1 + 1384) = 0u;
  do
  {
    v7 = v6;
    v8 = Init_DB_Sys_Status(s_DB_Sys_Status *)::Default_Inhibit_QZSS[v2] - 38;
    *(a1 + 265 + v8) = 1;
    *(a1 + 544 + v8) = 1;
    v5[v8] = 1;
    v2 = 1u;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  v9 = 0;
  *(a1 + 1026) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *v3 = 0u;
  *v4 = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1306) = 0u;
  do
  {
    *(v4 + Init_DB_Sys_Status(s_DB_Sys_Status *)::Not_Brd_SV_GPS_L5[v9++] - 1) = 1;
  }

  while (v9 != 13);
  for (i = 0; i != 7; ++i)
  {
    v11 = Init_DB_Sys_Status(s_DB_Sys_Status *)::Not_Brd_SV_GAL[i] + 55;
    *(v3 + v11) = 1;
    *(v4 + v11) = 1;
  }

  v12 = 0;
  *(a1 + 946) = 1;
  *(a1 + 1226) = 1;
  *(a1 + 916) = 0x101010101010101;
  *(a1 + 924) = 0x101010101010101;
  *(a1 + 932) = 257;
  *(a1 + 962) = 0x101010101010101;
  *(a1 + 970) = 0x101010101010101;
  *(a1 + 978) = 1;
  *(a1 + 1196) = 0x101010101010101;
  *(a1 + 1204) = 0x101010101010101;
  *(a1 + 1212) = 257;
  *(a1 + 1242) = 0x101010101010101;
  *(a1 + 1250) = 0x101010101010101;
  *(a1 + 1258) = 1;
  do
  {
    v13 = Init_DB_Sys_Status(s_DB_Sys_Status *)::Not_Brd_SV_NVIC[v12] + 164;
    *(v3 + v13) = 1;
    *(v4 + v13) = 1;
    ++v12;
  }

  while (v12 != 4);
  for (j = 0; j != 20; ++j)
  {
    v15 = Init_DB_Sys_Status(s_DB_Sys_Status *)::Not_Brd_SV_SBAS[j] + 59;
    *(v3 + v15) = 1;
    *(v4 + v15) = 1;
  }

  Core_Load_Not_Brd_SV(0, v3);
  Core_Load_Not_Brd_SV(1, v4);
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2144) = 0;
  *(a1 + 1876) = -1;
  Init_Set_Inter_Chan_Bias(a1, 0);
  *(a1 + 2044) = 0;
  *(a1 + 2052) = 0;
  *(a1 + 2064) = 0;
  *(a1 + 2056) = 0x4010000000000001;
  v16 = *MEMORY[0x29EDCA608];

  return Core_Load_Inhib_EE(v5, (a1 + 1752));
}

char *Init_Set_Inter_Chan_Bias(char *result, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a2 < 8)
  {
    if (result[1876] != a2)
    {
      result[1876] = a2;
      if (result[1992] != 1)
      {
        v4 = (&InterChanBias_GLON_L1OF + 112 * a2);
        *(result + 1928) = v4[3];
        *(result + 1944) = v4[4];
        *(result + 1960) = v4[5];
        *(result + 1976) = v4[6];
        *(result + 1880) = *v4;
        *(result + 1896) = v4[1];
        *(result + 1912) = v4[2];
      }

      *(result + 250) = InterChanBias_BDS_B1I[a2];
      if ((result[2016] & 1) == 0)
      {
        *(result + 251) = 0;
      }

      *(result + 253) = 0x3FE8000000000000;
      result = EvLog_v("Init_ICB: Model %d", a2);
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return gn_report_assertion_failure("Init_ICB: Bad Model Id");
  }

  return result;
}

double Init_DB_Sys_Status_NV(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v13[0] = 0.0;
  v12 = 0;
  v4 = Core_Load_Clk_Drift(&v12, v13);
  v5 = 0;
  v6 = 0.000004;
  if (!v4 || (v7 = v13[0], v13[0] == 0.0) || fabs(v13[0]) >= 0.000004)
  {
    v7 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.000001;
    if (*(a1 + 16) == 1)
    {
      v8 = *(a1 + 32);
      if (v8 >= 1025 && *a1 >= 1)
      {
        v5 = *(a1 + 40) + 604800 * v8 - v12;
        if ((v5 - 31449600) >= 0xFE201BA8)
        {
          if (v5 < 1209601)
          {
            v6 = dbl_299053EA0[v5 < 900];
          }

          else
          {
            v5 -= 1209600;
            v11 = v5 * 0.0000000330687831;
            v6 = v11 * 0.0000035 + 0.0000005;
            v7 = v13[0] * (1.0 - v11);
          }
        }

        else
        {
          v7 = 0.0;
          v6 = 0.000004;
        }
      }
    }
  }

  *(a2 + 1712) = v7;
  *(a2 + 1720) = v6;
  *(a2 + 2052) = v5;
  *(a2 + 2064) = v7 * 1000000.0;
  result = v6 * 1000000.0;
  *(a2 + 2056) = v6 * 1000000.0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_DeCor_Ext_Meas(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v4 = a2 + 60000;
  if (*(a2 + 60216) == 1 && *(a2 + 60228) > 0 || *(a2 + 60344) == 1 && *(a2 + 60356) >= 1)
  {
    Comp_NEDvar_UDU(a1 + 352, 0xCu, 6, (a2 + 1736), v38);
    Comp_ErrorEllipse(v38[0], v38[1], v5, &v35, &v36, &v37);
    if ((*(v4 + 216) & 1) == 0)
    {
      goto LABEL_25;
    }

    v6 = v35 * v35;
  }

  else
  {
    v6 = 0.0;
    if (!*(a2 + 60216))
    {
      goto LABEL_25;
    }
  }

  v7 = *(v4 + 264);
  *(a2 + 60288) = v7;
  v8 = *(v4 + 228);
  if (*(a2 + 1872) || v8 > 0)
  {
    if (v8 < 1)
    {
      goto LABEL_25;
    }

    if (v8 == 2)
    {
      v10 = 1.5;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_22:
        if (v6 >= 4.0 * v7.f64[0])
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v10 = 0.75;
    }

    if (v6 < v10 * v7.f64[0])
    {
      v11 = 90000.0;
LABEL_24:
      *(v4 + 264) = vmulq_n_f64(v7, v11);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (*(v4 + 224) != 4 && v6 < 4.0 * v7.f64[0])
  {
LABEL_23:
    v11 = 1.7;
    goto LABEL_24;
  }

LABEL_25:
  if (*(v4 + 344) != 1)
  {
    goto LABEL_36;
  }

  v12 = *(v4 + 376);
  *(v4 + 384) = v12;
  v13 = *(v4 + 356);
  if (v13 < 1)
  {
    goto LABEL_36;
  }

  if (v13 == 2)
  {
    v14 = 1.5;
LABEL_31:
    if (v39 < v12 * v14)
    {
      v15 = 90000.0;
LABEL_35:
      *(v4 + 376) = v12 * v15;
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (v13 == 1)
  {
    v14 = 0.75;
    goto LABEL_31;
  }

LABEL_33:
  if (v39 < v12 * 4.0)
  {
    v15 = 1.7;
    goto LABEL_35;
  }

LABEL_36:
  if (*(v4 + 72) != 1)
  {
    goto LABEL_47;
  }

  v16 = *(v4 + 104);
  *(v4 + 112) = v16;
  v17 = *(v4 + 84);
  if (v17 < 1)
  {
    goto LABEL_47;
  }

  v18 = *(v4 + 1824);
  if (v17 == 2)
  {
    v19 = 1.5;
LABEL_42:
    if (v18 < v16 * v19)
    {
      v20 = 900.0;
LABEL_46:
      *(v4 + 104) = v16 * v20;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v17 == 1)
  {
    v19 = 0.75;
    goto LABEL_42;
  }

LABEL_44:
  if (v18 < v16 * 4.0)
  {
    v20 = 1.7;
    goto LABEL_46;
  }

LABEL_47:
  if (*(v4 + 144) != 1)
  {
    goto LABEL_61;
  }

  v21 = *(v4 + 176);
  *(v4 + 184) = v21;
  v22 = *(v4 + 156);
  if (v22 < 1)
  {
    goto LABEL_61;
  }

  if (v22 == 1)
  {
    v23 = *(v4 + 1856);
    v24 = 0.75;
  }

  else
  {
    v23 = *(v4 + 1856);
    if (v22 != 2)
    {
      goto LABEL_58;
    }

    v24 = 1.5;
  }

  if (v23 < v21 * v24)
  {
    if (*(a1 + 27136) || *(a2 + 21675) || *(a2 + 36579))
    {
      v25 = 10000.0;
LABEL_60:
      *(v4 + 176) = v21 * v25;
      goto LABEL_61;
    }

    v32 = 4.0;
    if (v22 == 1)
    {
      v32 = 1.0;
    }

    v33 = -(v23 - v21 * v32);
    v34 = 0;
    if (v33 > 0.0)
    {
      Apply_Q_Boost(v33, 4u, 1u, (a1 + 352), &v34, &v35);
    }

    goto LABEL_61;
  }

LABEL_58:
  if (v23 < v21 * 4.0)
  {
    v25 = 1.7;
    goto LABEL_60;
  }

LABEL_61:
  if (*v4 != 1)
  {
    goto LABEL_72;
  }

  v26 = *(v4 + 32);
  *(v4 + 40) = v26;
  v27 = *(v4 + 12);
  if (v27 < 1)
  {
    goto LABEL_72;
  }

  v28 = *(v4 + 1864);
  if (v27 == 2)
  {
    v29 = 1.5;
LABEL_67:
    if (v28 < v26 * v29)
    {
      v30 = 900.0;
LABEL_71:
      *(v4 + 32) = v26 * v30;
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  if (v27 == 1)
  {
    v29 = 0.75;
    goto LABEL_67;
  }

LABEL_69:
  if (v28 < v26 * 4.0)
  {
    v30 = 1.7;
    goto LABEL_71;
  }

LABEL_72:
  v31 = *MEMORY[0x29EDCA608];
}

const double *invtst(double *a1, double *a2, unsigned int a3, double a4, double a5, double a6, double *a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  result = a1 - 1;
  v9 = a4 + v8 * *a2 * *a2;
  if (a3 >= 2)
  {
    if (a3 + 1 > 3)
    {
      v10 = a3 + 1;
    }

    else
    {
      v10 = 3;
    }

    v11 = 1;
    v12 = 2;
    v13 = 2;
    v14 = 1;
    do
    {
      v15 = a2[v13 - 1];
      v16 = a2;
      v17 = v12;
      v18 = v11;
      do
      {
        v19 = *v16++;
        v15 = v15 + v19 * result[v17++];
        --v18;
      }

      while (v18);
      v14 += v13;
      v9 = v9 + v15 * v15 * result[v14];
      v12 += v13;
      ++v11;
      ++v13;
    }

    while (v13 != v10);
  }

  if (a5 * a5 > v9 * a6)
  {
    v9 = -v9;
  }

  *a7 = v9;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Partial_Reset(uint64_t result, double *a2, double *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v15 = 0.0;
    v13 = 0.0;
    do
    {
      v8 = v7;
      v9 = a2[v7];
      if (v9 > 0.0)
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
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
        v18 = 0u;
        v19 = 0u;
        *(&v18 + v7) = 0x3FF0000000000000;
        result = ud2var(a3, v5, v6 + 1, 1u, &v15);
        v10 = v15;
        v11 = v15 * 100000000.0;
        if (v15 * 100000000.0 <= v9 * 1.01)
        {
          if (v9 - v15 > 0.0)
          {
            result = rnk1_core(a3, v6 + 1, v9 - v15, &v18, &v14);
          }
        }

        else
        {
          if (v11 > 0.0)
          {
            rnk1_core(a3, v6 + 1, v15 * 100000000.0, &v18, &v14);
            v9 = a2[v8];
          }

          v34 = 0;
          v32 = 0u;
          v33 = 0u;
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
          v18 = 0u;
          v19 = 0u;
          *(&v18 + v8) = 0x3FF0000000000000;
          result = umeas(a3, v5, v9 * ((v10 + v11) / (v10 + v11 - v9)), &v18, v17, v16, &v13, -1.0);
        }
      }

      v7 = v8 + 1;
      v6 = (v8 + 1);
    }

    while (v6 < v5);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *XofSvcsIf::GetInstance(XofSvcsIf *this)
{
  v3 = *MEMORY[0x29EDCA608];
  {
    XofSvcsIf::XofSvcsIf(&XofSvcsIf::GetInstance(void)::instance);
  }

  v1 = *MEMORY[0x29EDCA608];
  return &XofSvcsIf::GetInstance(void)::instance;
}

uint64_t XofSvcsIf::GetGloChanMap(XofSvcsIf *this, int a2, signed __int8 *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((a2 - 25) > 0xFFFFFFE7)
  {
    if (*(this + 282) == 1)
    {
      if (!*(this + 211) && !*(this + 209) && !*(this + 210))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_16;
        }

        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass data not available\n");
        goto LABEL_15;
      }

      v6 = this + 2 * (a2 - 1);
      v7 = v6[396];
      if (v7 != 99 && v7 == a2)
      {
        *a3 = v6[397];
        result = 1;
        goto LABEL_18;
      }
    }

    if (g_LbsOsaTrace_Config < 2)
    {
LABEL_16:
      result = 7;
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass channel number not available for SvId [%d]!\n");
LABEL_15:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    goto LABEL_16;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass channel number requested for Invalid SvId [%d]!\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GetGloChanMap", a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  result = 9;
LABEL_18:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetExtEphBlockNum(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  result = 7;
  if (a2 != 7 && *(a1 + 1128) == 1)
  {
    v6 = a1 + 16;
    if (*(a1 + 16 + 48 * a2 + 3))
    {
      v7 = *(a1 + 12) + 604800 * *(a1 + 8);
      v8 = HIDWORD(a3) + 604800 * a3;
      v9 = v8 >= v7;
      v10 = v8 - v7;
      if (v9 && *(v6 + 48 * a2 + 5))
      {
        v11 = v10 / (3600 * *(v6 + 48 * a2 + 5));
        if (v11 <= 0x29 && v11 < *(v6 + 48 * a2 + 4))
        {
          *a4 = v11 + 1;
          result = 1;
        }
      }

      else
      {
        result = 9;
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::Init(XofSvcsIf *this)
{
  v5 = *MEMORY[0x29EDCA608];
  XofSvcsIf::ClrOrbData(this);
  std::mutex::lock((this + 1200));
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1000) = v4;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 283) = 0;
  std::mutex::unlock((this + 1200));
  v2 = *MEMORY[0x29EDCA608];
  return 1;
}

void XofSvcsIf::ClrOrbData(XofSvcsIf *this)
{
  v104 = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 1136));
  bzero(__src, 0x3E8uLL);
  for (i = 0; i != 42; i += 6)
  {
    v3 = &__src[i];
    *(v3 + 10) = 0;
    *(v3 + 4) = 0;
    *(v3 + 3) = 0uLL;
    *(v3 + 5) = 0uLL;
    v3[7] = 0;
  }

  v4 = 0;
  __src[44] = 0;
  LODWORD(__src[45]) = 0;
  memset(&__src[46], 0, 28);
  do
  {
    *(&__src[49] + v4 + 4) = 25344;
    v4 += 2;
  }

  while (v4 != 48);
  for (j = 0; j != 12; j += 2)
  {
    v6 = (&__src[j + 55] + 4);
    WORD1(__src[j + 57]) = 0;
    *v6 = 0;
    *(v6 + 5) = 0;
  }

  v67 = 0u;
  v66 = &v67;
  v69 = 0u;
  v68 = &v69;
  v71 = 0u;
  v70 = &v71;
  v73 = 0u;
  v72 = &v73;
  v75 = 0u;
  v74 = &v75;
  v77 = 0u;
  v76 = &v77;
  v79 = 0u;
  v78 = &v79;
  v81 = 0u;
  v80 = &v81;
  v83 = 0u;
  v82 = &v83;
  v85 = 0u;
  v84 = &v85;
  v87 = 0u;
  v86 = &v87;
  v89 = 0u;
  v88 = &v89;
  v91 = 0u;
  v90 = &v91;
  v93 = 0u;
  v92 = &v93;
  v95 = 0u;
  v94 = &v95;
  v97 = 0u;
  v96 = &v97;
  v99 = 0u;
  v98 = &v99;
  v101 = 0u;
  v100 = &v101;
  v103 = 0u;
  v102 = &v103;
  memcpy(this, __src, 0x21CuLL);
  v7 = this + 552;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 69));
  *(this + 68) = v66;
  v8 = v67;
  *(this + 69) = v67;
  v9 = *(&v67 + 1);
  *(this + 70) = *(&v67 + 1);
  if (v9)
  {
    *(v8 + 16) = v7;
    v66 = &v67;
    v67 = 0uLL;
  }

  else
  {
    *(this + 68) = v7;
  }

  v10 = this + 576;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 72));
  *(this + 71) = v68;
  v11 = v69;
  *(this + 72) = v69;
  v12 = *(&v69 + 1);
  *(this + 73) = *(&v69 + 1);
  if (v12)
  {
    *(v11 + 16) = v10;
    v68 = &v69;
    v69 = 0uLL;
  }

  else
  {
    *(this + 71) = v10;
  }

  v13 = this + 600;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 75));
  *(this + 74) = v70;
  v14 = v71;
  *(this + 75) = v71;
  v15 = *(&v71 + 1);
  *(this + 76) = *(&v71 + 1);
  if (v15)
  {
    *(v14 + 16) = v13;
    v70 = &v71;
    v71 = 0uLL;
  }

  else
  {
    *(this + 74) = v13;
  }

  v16 = this + 624;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 78));
  *(this + 77) = v72;
  v17 = v73;
  *(this + 78) = v73;
  v18 = *(&v73 + 1);
  *(this + 79) = *(&v73 + 1);
  if (v18)
  {
    *(v17 + 16) = v16;
    v72 = &v73;
    v73 = 0uLL;
  }

  else
  {
    *(this + 77) = v16;
  }

  v19 = this + 648;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 81));
  *(this + 80) = v74;
  v20 = v75;
  *(this + 81) = v75;
  v21 = *(&v75 + 1);
  *(this + 82) = *(&v75 + 1);
  if (v21)
  {
    *(v20 + 16) = v19;
    v74 = &v75;
    v75 = 0uLL;
  }

  else
  {
    *(this + 80) = v19;
  }

  v22 = this + 672;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 84));
  *(this + 83) = v76;
  v23 = v77;
  *(this + 84) = v77;
  v24 = *(&v77 + 1);
  *(this + 85) = *(&v77 + 1);
  if (v24)
  {
    *(v23 + 16) = v22;
    v76 = &v77;
    v77 = 0uLL;
  }

  else
  {
    *(this + 83) = v22;
  }

  v25 = this + 696;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 688, *(this + 87));
  *(this + 86) = v78;
  v26 = v79;
  *(this + 87) = v79;
  v27 = *(&v79 + 1);
  *(this + 88) = *(&v79 + 1);
  if (v27)
  {
    *(v26 + 16) = v25;
    v78 = &v79;
    v79 = 0uLL;
  }

  else
  {
    *(this + 86) = v25;
  }

  v28 = this + 720;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 90));
  *(this + 89) = v80;
  v29 = v81;
  *(this + 90) = v81;
  v30 = *(&v81 + 1);
  *(this + 91) = *(&v81 + 1);
  if (v30)
  {
    *(v29 + 16) = v28;
    v80 = &v81;
    v81 = 0uLL;
  }

  else
  {
    *(this + 89) = v28;
  }

  v31 = this + 744;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 736, *(this + 93));
  *(this + 92) = v82;
  v32 = v83;
  *(this + 93) = v83;
  v33 = *(&v83 + 1);
  *(this + 94) = *(&v83 + 1);
  if (v33)
  {
    *(v32 + 16) = v31;
    v82 = &v83;
    v83 = 0uLL;
  }

  else
  {
    *(this + 92) = v31;
  }

  v34 = this + 768;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 760, *(this + 96));
  *(this + 95) = v84;
  v35 = v85;
  *(this + 96) = v85;
  v36 = *(&v85 + 1);
  *(this + 97) = *(&v85 + 1);
  if (v36)
  {
    *(v35 + 16) = v34;
    v84 = &v85;
    v85 = 0uLL;
  }

  else
  {
    *(this + 95) = v34;
  }

  v37 = this + 792;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 784, *(this + 99));
  *(this + 98) = v86;
  v38 = v87;
  *(this + 99) = v87;
  v39 = *(&v87 + 1);
  *(this + 100) = *(&v87 + 1);
  if (v39)
  {
    *(v38 + 16) = v37;
    v86 = &v87;
    v87 = 0uLL;
  }

  else
  {
    *(this + 98) = v37;
  }

  v40 = this + 816;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 808, *(this + 102));
  *(this + 101) = v88;
  v41 = v89;
  *(this + 102) = v89;
  v42 = *(&v89 + 1);
  *(this + 103) = *(&v89 + 1);
  if (v42)
  {
    *(v41 + 16) = v40;
    v88 = &v89;
    v89 = 0uLL;
  }

  else
  {
    *(this + 101) = v40;
  }

  v43 = this + 840;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 832, *(this + 105));
  *(this + 104) = v90;
  v44 = v91;
  *(this + 105) = v91;
  v45 = *(&v91 + 1);
  *(this + 106) = *(&v91 + 1);
  if (v45)
  {
    *(v44 + 16) = v43;
    v90 = &v91;
    v91 = 0uLL;
  }

  else
  {
    *(this + 104) = v43;
  }

  v46 = this + 864;
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 108));
  *(this + 107) = v92;
  v47 = v93;
  *(this + 108) = v93;
  v48 = *(&v93 + 1);
  *(this + 109) = *(&v93 + 1);
  if (v48)
  {
    *(v47 + 16) = v46;
    v92 = &v93;
    v93 = 0uLL;
  }

  else
  {
    *(this + 107) = v46;
  }

  v49 = this + 888;
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 111));
  *(this + 110) = v94;
  v50 = v95;
  *(this + 111) = v95;
  v51 = *(&v95 + 1);
  *(this + 112) = *(&v95 + 1);
  if (v51)
  {
    *(v50 + 16) = v49;
    v94 = &v95;
    v95 = 0uLL;
  }

  else
  {
    *(this + 110) = v49;
  }

  v52 = this + 912;
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 114));
  *(this + 113) = v96;
  v53 = v97;
  *(this + 114) = v97;
  v54 = *(&v97 + 1);
  *(this + 115) = *(&v97 + 1);
  if (v54)
  {
    *(v53 + 16) = v52;
    v96 = &v97;
    v97 = 0uLL;
  }

  else
  {
    *(this + 113) = v52;
  }

  v55 = this + 936;
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 117));
  *(this + 116) = v98;
  v56 = v99;
  *(this + 117) = v99;
  v57 = *(&v99 + 1);
  *(this + 118) = *(&v99 + 1);
  if (v57)
  {
    *(v56 + 16) = v55;
    v98 = &v99;
    v99 = 0uLL;
  }

  else
  {
    *(this + 116) = v55;
  }

  v58 = this + 960;
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 120));
  *(this + 119) = v100;
  v59 = v101;
  *(this + 120) = v101;
  v60 = *(&v101 + 1);
  *(this + 121) = *(&v101 + 1);
  if (v60)
  {
    *(v59 + 16) = v58;
    v100 = &v101;
    v101 = 0uLL;
  }

  else
  {
    *(this + 119) = v58;
  }

  v61 = this + 984;
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 123));
  *(this + 122) = v102;
  v62 = v103;
  *(this + 123) = v103;
  v63 = *(&v103 + 1);
  *(this + 124) = *(&v103 + 1);
  if (v63)
  {
    *(v62 + 16) = v61;
    v102 = &v103;
    v103 = 0uLL;
  }

  else
  {
    *(this + 122) = v61;
  }

  XofData::~XofData(__src);
  *(this + 282) = 0;
  std::mutex::unlock((this + 1136));
  v64 = *MEMORY[0x29EDCA608];
}

uint64_t XofSvcsIf::InjectXofData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  j = a3;
  v7 = 0;
  v182 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = (a3 + 8);
  *(a3 + 16) = 0;
  HIDWORD(__src[1]) = 0;
  __src[0] = 0;
  LOWORD(__src[1]) = 0;
  do
  {
    v9 = &__src[v7];
    *(v9 + 10) = 0;
    *(v9 + 4) = 0;
    *(v9 + 3) = 0uLL;
    *(v9 + 5) = 0uLL;
    v7 += 6;
    v9[7] = 0;
  }

  while (v7 != 42);
  v10 = 0;
  __src[44] = 0;
  LODWORD(__src[45]) = 0;
  memset(&__src[46], 0, 28);
  do
  {
    *(&__src[49] + v10 + 4) = 25344;
    v10 += 2;
  }

  while (v10 != 48);
  for (i = 0; i != 12; i += 2)
  {
    v12 = (&__src[i + 55] + 4);
    WORD1(__src[i + 57]) = 0;
    *v12 = 0;
    *(v12 + 5) = 0;
  }

  v145 = 0u;
  v144 = &v145;
  v147 = 0u;
  v146 = &v147;
  v149 = 0u;
  v148 = &v149;
  v151 = 0u;
  v150 = &v151;
  v153 = 0u;
  v152 = &v153;
  v155 = 0u;
  v154 = &v155;
  v157 = 0u;
  v156 = &v157;
  v159 = 0u;
  v158 = &v159;
  v161 = 0u;
  v160 = &v161;
  v163 = 0u;
  v162 = &v163;
  v165 = 0u;
  v164 = &v165;
  v167 = 0u;
  v166 = &v167;
  v169 = 0u;
  v168 = &v169;
  v171 = 0u;
  v170 = &v171;
  v173 = 0u;
  v172 = &v173;
  v175 = 0u;
  v174 = &v175;
  v177 = 0u;
  v176 = &v177;
  v179 = 0u;
  v178 = &v179;
  v181 = 0u;
  v180 = &v181;
  v139 = 0;
  v13 = XofData::Decode(__src, a2, &v139);
  if (v13 == 1)
  {
    v14 = LOWORD(__src[1]);
    *v8 = HIDWORD(__src[1]) + 604800 * LOWORD(__src[1]);
    if (v14 < a4)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF Week Number before earliest legal Week [%d < %d]!\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "InjectXofData", LOWORD(__src[1]), a4);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      *j = 0;
      v13 = 9;
      goto LABEL_299;
    }

    std::mutex::lock((a1 + 1136));
    memcpy(a1, __src, 0x21CuLL);
    if (__src == a1)
    {
      goto LABEL_292;
    }

    std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssAlmanac>,void *> *,long>>((a1 + 544), v144, &v145);
    v138 = j;
    v17 = v146;
    if (*(a1 + 584))
    {
      v18 = *(a1 + 568);
      v19 = (a1 + 576);
      *(a1 + 568) = a1 + 576;
      *(*(a1 + 576) + 16) = 0;
      *(a1 + 576) = 0u;
      if (*(v18 + 8))
      {
        v20 = *(v18 + 8);
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        v21 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v20);
        if (v17 == &v147)
        {
          v22 = v20;
          v30 = v17;
        }

        else
        {
          do
          {
            v22 = v21;
            v23 = *(v17 + 28);
            *(v20 + 28) = v23;
            v24 = v17[2];
            v25 = v17[3];
            *(v20 + 64) = *(v17 + 32);
            *(v20 + 32) = v24;
            *(v20 + 48) = v25;
            v26 = *v19;
            v27 = (a1 + 576);
            v28 = (a1 + 576);
            if (*v19)
            {
              do
              {
                while (1)
                {
                  v27 = v26;
                  if (v23 >= *(v26 + 28))
                  {
                    break;
                  }

                  v26 = *v26;
                  v28 = v27;
                  if (!*v27)
                  {
                    goto LABEL_27;
                  }
                }

                v26 = v26[1];
              }

              while (v26);
              v28 = v27 + 1;
            }

LABEL_27:
            std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 568), v27, v28, v20);
            if (v21)
            {
              v21 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v21);
            }

            else
            {
              v21 = 0;
            }

            v29 = *(v17 + 1);
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = *(v17 + 2);
                v31 = *v30 == v17;
                v17 = v30;
              }

              while (!v31);
            }

            if (!v22)
            {
              break;
            }

            v20 = v22;
            v17 = v30;
          }

          while (v30 != &v147);
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v22);
        if (v21)
        {
          v32 = v21[2];
          for (j = v138; v32; v32 = v32[2])
          {
            v21 = v32;
          }

          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v21);
          goto LABEL_46;
        }
      }

      else
      {
        v30 = v17;
      }

      j = v138;
    }

    else
    {
      v30 = v146;
      j = v138;
    }

LABEL_46:
    if (v30 != &v147)
    {
      operator new();
    }

    v33 = v148;
    if (*(a1 + 608))
    {
      v34 = *(a1 + 592);
      v35 = (a1 + 600);
      *(a1 + 592) = a1 + 600;
      *(*(a1 + 600) + 16) = 0;
      *(a1 + 600) = 0u;
      if (*(v34 + 8))
      {
        v36 = *(v34 + 8);
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        v37 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v36);
        if (v33 == &v149)
        {
          v38 = v36;
          v45 = v33;
        }

        else
        {
          do
          {
            v38 = v37;
            v39 = *(v33 + 28);
            *(v36 + 28) = v39;
            v40 = v33[2];
            *(v36 + 44) = *(v33 + 44);
            *(v36 + 32) = v40;
            v41 = *v35;
            v42 = (a1 + 600);
            v43 = (a1 + 600);
            if (*v35)
            {
              do
              {
                while (1)
                {
                  v42 = v41;
                  if (v39 >= *(v41 + 28))
                  {
                    break;
                  }

                  v41 = *v41;
                  v43 = v42;
                  if (!*v42)
                  {
                    goto LABEL_60;
                  }
                }

                v41 = v41[1];
              }

              while (v41);
              v43 = v42 + 1;
            }

LABEL_60:
            std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 592), v42, v43, v36);
            if (v37)
            {
              v37 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v37);
            }

            else
            {
              v37 = 0;
            }

            v44 = *(v33 + 1);
            if (v44)
            {
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = *(v33 + 2);
                v31 = *v45 == v33;
                v33 = v45;
              }

              while (!v31);
            }

            if (!v38)
            {
              break;
            }

            v36 = v38;
            v33 = v45;
          }

          while (v45 != &v149);
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v38);
        if (v37)
        {
          for (k = v37[2]; k; k = k[2])
          {
            v37 = k;
          }

          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v37);
        }
      }

      else
      {
        v45 = v33;
      }
    }

    else
    {
      v45 = v148;
    }

    if (v45 != &v149)
    {
      operator new();
    }

    std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssAlmanac>,void *> *,long>>((a1 + 616), v150, &v151);
    v47 = v152;
    if (*(a1 + 656))
    {
      v48 = *(a1 + 640);
      v49 = (a1 + 648);
      *(a1 + 640) = a1 + 648;
      *(*(a1 + 648) + 16) = 0;
      *(a1 + 648) = 0u;
      if (*(v48 + 8))
      {
        v50 = *(v48 + 8);
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        v51 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v50);
        if (v47 == &v153)
        {
          v52 = v50;
          v60 = v47;
        }

        else
        {
          do
          {
            v52 = v51;
            v53 = *(v47 + 28);
            *(v50 + 28) = v53;
            v54 = v47[2];
            v55 = v47[3];
            *(v50 + 64) = *(v47 + 8);
            *(v50 + 32) = v54;
            *(v50 + 48) = v55;
            v56 = *v49;
            v57 = (a1 + 648);
            v58 = (a1 + 648);
            if (*v49)
            {
              do
              {
                while (1)
                {
                  v57 = v56;
                  if (v53 >= *(v56 + 28))
                  {
                    break;
                  }

                  v56 = *v56;
                  v58 = v57;
                  if (!*v57)
                  {
                    goto LABEL_92;
                  }
                }

                v56 = v56[1];
              }

              while (v56);
              v58 = v57 + 1;
            }

LABEL_92:
            std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 640), v57, v58, v50);
            if (v51)
            {
              v51 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v51);
            }

            else
            {
              v51 = 0;
            }

            v59 = *(v47 + 1);
            if (v59)
            {
              do
              {
                v60 = v59;
                v59 = *v59;
              }

              while (v59);
            }

            else
            {
              do
              {
                v60 = *(v47 + 2);
                v31 = *v60 == v47;
                v47 = v60;
              }

              while (!v31);
            }

            if (!v52)
            {
              break;
            }

            v50 = v52;
            v47 = v60;
          }

          while (v60 != &v153);
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v52);
        if (v51)
        {
          for (m = v51[2]; m; m = m[2])
          {
            v51 = m;
          }

          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v51);
        }
      }

      else
      {
        v60 = v47;
      }
    }

    else
    {
      v60 = v152;
    }

    if (v60 != &v153)
    {
      operator new();
    }

    v62 = v154;
    if (*(a1 + 680))
    {
      v63 = *(a1 + 664);
      v64 = (a1 + 672);
      *(a1 + 664) = a1 + 672;
      *(*(a1 + 672) + 16) = 0;
      *(a1 + 672) = 0u;
      if (*(v63 + 8))
      {
        v65 = *(v63 + 8);
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        v66 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v65);
        if (v62 == &v155)
        {
          v67 = v65;
          v75 = v62;
        }

        else
        {
          do
          {
            v67 = v66;
            v68 = *(v62 + 28);
            *(v65 + 28) = v68;
            v69 = v62[2];
            v70 = v62[3];
            *(v65 + 64) = *(v62 + 16);
            *(v65 + 32) = v69;
            *(v65 + 48) = v70;
            v71 = *v64;
            v72 = (a1 + 672);
            v73 = (a1 + 672);
            if (*v64)
            {
              do
              {
                while (1)
                {
                  v72 = v71;
                  if (v68 >= *(v71 + 28))
                  {
                    break;
                  }

                  v71 = *v71;
                  v73 = v72;
                  if (!*v72)
                  {
                    goto LABEL_124;
                  }
                }

                v71 = v71[1];
              }

              while (v71);
              v73 = v72 + 1;
            }

LABEL_124:
            std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 664), v72, v73, v65);
            if (v66)
            {
              v66 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v66);
            }

            else
            {
              v66 = 0;
            }

            v74 = *(v62 + 1);
            if (v74)
            {
              do
              {
                v75 = v74;
                v74 = *v74;
              }

              while (v74);
            }

            else
            {
              do
              {
                v75 = *(v62 + 2);
                v31 = *v75 == v62;
                v62 = v75;
              }

              while (!v31);
            }

            if (!v67)
            {
              break;
            }

            v65 = v67;
            v62 = v75;
          }

          while (v75 != &v155);
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v67);
        if (v66)
        {
          for (n = v66[2]; n; n = n[2])
          {
            v66 = n;
          }

          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v66);
        }
      }

      else
      {
        v75 = v62;
      }
    }

    else
    {
      v75 = v154;
    }

    if (v75 != &v155)
    {
      operator new();
    }

    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssEphemeris>,void *> *,long>>((a1 + 688), v156, &v157);
    v77 = v158;
    if (*(a1 + 728))
    {
      v78 = *(a1 + 712);
      v79 = (a1 + 720);
      *(a1 + 712) = a1 + 720;
      *(*(a1 + 720) + 16) = 0;
      *(a1 + 720) = 0u;
      if (*(v78 + 8))
      {
        v80 = *(v78 + 8);
      }

      else
      {
        v80 = v78;
      }

      if (v80)
      {
        v81 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v80);
        if (v77 == &v159)
        {
          v82 = v80;
          v90 = v77;
        }

        else
        {
          do
          {
            v82 = v81;
            v83 = *(v77 + 28);
            *(v80 + 28) = v83;
            v84 = v77[2];
            v85 = v77[3];
            *(v80 + 59) = *(v77 + 59);
            *(v80 + 32) = v84;
            *(v80 + 48) = v85;
            v86 = *v79;
            v87 = (a1 + 720);
            v88 = (a1 + 720);
            if (*v79)
            {
              do
              {
                while (1)
                {
                  v87 = v86;
                  if (v83 >= *(v86 + 28))
                  {
                    break;
                  }

                  v86 = *v86;
                  v88 = v87;
                  if (!*v87)
                  {
                    goto LABEL_156;
                  }
                }

                v86 = v86[1];
              }

              while (v86);
              v88 = v87 + 1;
            }

LABEL_156:
            std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 712), v87, v88, v80);
            if (v81)
            {
              v81 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v81);
            }

            else
            {
              v81 = 0;
            }

            v89 = *(v77 + 1);
            if (v89)
            {
              do
              {
                v90 = v89;
                v89 = *v89;
              }

              while (v89);
            }

            else
            {
              do
              {
                v90 = *(v77 + 2);
                v31 = *v90 == v77;
                v77 = v90;
              }

              while (!v31);
            }

            if (!v82)
            {
              break;
            }

            v80 = v82;
            v77 = v90;
          }

          while (v90 != &v159);
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v82);
        if (v81)
        {
          for (ii = v81[2]; ii; ii = ii[2])
          {
            v81 = ii;
          }

          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v81);
        }
      }

      else
      {
        v90 = v77;
      }
    }

    else
    {
      v90 = v158;
    }

    if (v90 != &v159)
    {
      operator new();
    }

    std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGalileoEphemeris>,void *> *,long>>((a1 + 736), v160, &v161);
    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssEphemeris>,void *> *,long>>((a1 + 760), v162, &v163);
    std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofBeidouEphemeris>,void *> *,long>>((a1 + 784), v164, &v165);
    v92 = v166;
    if (*(a1 + 824))
    {
      v93 = *(a1 + 808);
      v94 = (a1 + 816);
      *(a1 + 808) = a1 + 816;
      *(*(a1 + 816) + 16) = 0;
      *(a1 + 816) = 0u;
      if (*(v93 + 8))
      {
        v95 = *(v93 + 8);
      }

      else
      {
        v95 = v93;
      }

      if (v95)
      {
        v96 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v95);
        if (v92 == &v167)
        {
          v97 = v95;
          v105 = v92;
        }

        else
        {
          do
          {
            v97 = v96;
            v98 = *(v92 + 28);
            *(v95 + 28) = v98;
            v99 = v92[2];
            v100 = v92[3];
            *(v95 + 63) = *(v92 + 63);
            *(v95 + 32) = v99;
            *(v95 + 48) = v100;
            v101 = *v94;
            v102 = (a1 + 816);
            v103 = (a1 + 816);
            if (*v94)
            {
              do
              {
                while (1)
                {
                  v102 = v101;
                  if (v98 >= *(v101 + 28))
                  {
                    break;
                  }

                  v101 = *v101;
                  v103 = v102;
                  if (!*v102)
                  {
                    goto LABEL_188;
                  }
                }

                v101 = v101[1];
              }

              while (v101);
              v103 = v102 + 1;
            }

LABEL_188:
            std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 808), v102, v103, v95);
            if (v96)
            {
              v96 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v96);
            }

            else
            {
              v96 = 0;
            }

            v104 = *(v92 + 1);
            if (v104)
            {
              do
              {
                v105 = v104;
                v104 = *v104;
              }

              while (v104);
            }

            else
            {
              do
              {
                v105 = *(v92 + 2);
                v31 = *v105 == v92;
                v92 = v105;
              }

              while (!v31);
            }

            if (!v97)
            {
              break;
            }

            v95 = v97;
            v92 = v105;
          }

          while (v105 != &v167);
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(a1 + 808, v97);
        if (v96)
        {
          for (jj = v96[2]; jj; jj = jj[2])
          {
            v96 = jj;
          }

          std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(a1 + 808, v96);
        }
      }

      else
      {
        v105 = v92;
      }
    }

    else
    {
      v105 = v166;
    }

    if (v105 != &v167)
    {
      operator new();
    }

    std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofNavicEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofNavicEphemeris>,void *> *,long>>((a1 + 832), v168, &v169);
    std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__tree_node<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,void *> *,long>>((a1 + 856), v170, &v171);
    std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__tree_node<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,void *> *,long>>((a1 + 880), v172, &v173);
    v107 = v174;
    if (*(a1 + 920))
    {
      v108 = *(a1 + 904);
      v109 = (a1 + 912);
      *(a1 + 904) = a1 + 912;
      *(*(a1 + 912) + 16) = 0;
      *(a1 + 912) = 0u;
      if (*(v108 + 1))
      {
        v110 = *(v108 + 1);
      }

      else
      {
        v110 = v108;
      }

      *__str = a1 + 904;
      v141 = v110;
      v142 = v110;
      if (!v110 || (v141 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v110), v107 == &v175))
      {
        v115 = v107;
      }

      else
      {
        do
        {
          *(v110 + 32) = *(v107 + 32);
          if (v110 != v107)
          {
            std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGalileoEphemeris>,void *> *,long>>(v110 + 5, *(v107 + 5), v107 + 6);
            v110 = v142;
          }

          v111 = *v109;
          v112 = (a1 + 912);
          v113 = (a1 + 912);
          if (*v109)
          {
            do
            {
              while (1)
              {
                v112 = v111;
                if (*(v110 + 32) >= *(v111 + 32))
                {
                  break;
                }

                v111 = *v111;
                v113 = v112;
                if (!*v112)
                {
                  goto LABEL_222;
                }
              }

              v111 = v111[1];
            }

            while (v111);
            v113 = v112 + 1;
          }

LABEL_222:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 904), v112, v113, v110);
          v110 = v141;
          v142 = v141;
          if (v141)
          {
            v141 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v141);
          }

          v114 = *(v107 + 1);
          if (v114)
          {
            do
            {
              v115 = v114;
              v114 = *v114;
            }

            while (v114);
          }

          else
          {
            do
            {
              v115 = *(v107 + 2);
              v31 = *v115 == v107;
              v107 = v115;
            }

            while (!v31);
          }

          if (!v110)
          {
            break;
          }

          v107 = v115;
        }

        while (v115 != &v175);
      }

      std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](__str);
      v107 = v115;
    }

    if (v107 != &v175)
    {
      operator new();
    }

    std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__tree_node<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,void *> *,long>>((a1 + 928), v176, &v177);
    v116 = v178;
    if (*(a1 + 968))
    {
      v117 = *(a1 + 952);
      v118 = (a1 + 960);
      *(a1 + 952) = a1 + 960;
      *(*(a1 + 960) + 16) = 0;
      *(a1 + 960) = 0u;
      if (*(v117 + 1))
      {
        v119 = *(v117 + 1);
      }

      else
      {
        v119 = v117;
      }

      *__str = a1 + 952;
      v141 = v119;
      v142 = v119;
      if (!v119 || (v141 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v119), v116 == &v179))
      {
        v124 = v116;
      }

      else
      {
        do
        {
          *(v119 + 32) = *(v116 + 32);
          if (v119 != v116)
          {
            std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofBeidouEphemeris>,void *> *,long>>(v119 + 5, *(v116 + 5), v116 + 6);
            v119 = v142;
          }

          v120 = *v118;
          v121 = (a1 + 960);
          v122 = (a1 + 960);
          if (*v118)
          {
            do
            {
              while (1)
              {
                v121 = v120;
                if (*(v119 + 32) >= *(v120 + 32))
                {
                  break;
                }

                v120 = *v120;
                v122 = v121;
                if (!*v121)
                {
                  goto LABEL_250;
                }
              }

              v120 = v120[1];
            }

            while (v120);
            v122 = v121 + 1;
          }

LABEL_250:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 952), v121, v122, v119);
          v119 = v141;
          v142 = v141;
          if (v141)
          {
            v141 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v141);
          }

          v123 = *(v116 + 1);
          if (v123)
          {
            do
            {
              v124 = v123;
              v123 = *v123;
            }

            while (v123);
          }

          else
          {
            do
            {
              v124 = *(v116 + 2);
              v31 = *v124 == v116;
              v116 = v124;
            }

            while (!v31);
          }

          if (!v119)
          {
            break;
          }

          v116 = v124;
        }

        while (v124 != &v179);
      }

      std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](__str);
      v116 = v124;
    }

    if (v116 != &v179)
    {
      operator new();
    }

    v125 = v180;
    if (*(a1 + 992))
    {
      v126 = *(a1 + 976);
      v127 = (a1 + 984);
      *(a1 + 976) = a1 + 984;
      *(*(a1 + 984) + 16) = 0;
      *(a1 + 984) = 0u;
      if (*(v126 + 1))
      {
        v128 = *(v126 + 1);
      }

      else
      {
        v128 = v126;
      }

      *__str = a1 + 976;
      v141 = v128;
      v142 = v128;
      if (!v128 || (v141 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v128), v125 == &v181))
      {
        v133 = v125;
      }

      else
      {
        do
        {
          *(v128 + 32) = *(v125 + 32);
          if (v128 != v125)
          {
            std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofNavicEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofNavicEphemeris>,void *> *,long>>(v128 + 5, *(v125 + 5), v125 + 6);
            v128 = v142;
          }

          v129 = *v127;
          v130 = (a1 + 984);
          v131 = (a1 + 984);
          if (*v127)
          {
            do
            {
              while (1)
              {
                v130 = v129;
                if (*(v128 + 32) >= *(v129 + 32))
                {
                  break;
                }

                v129 = *v129;
                v131 = v130;
                if (!*v130)
                {
                  goto LABEL_278;
                }
              }

              v129 = v129[1];
            }

            while (v129);
            v131 = v130 + 1;
          }

LABEL_278:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at((a1 + 976), v130, v131, v128);
          v128 = v141;
          v142 = v141;
          if (v141)
          {
            v141 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v141);
          }

          v132 = *(v125 + 1);
          if (v132)
          {
            do
            {
              v133 = v132;
              v132 = *v132;
            }

            while (v132);
          }

          else
          {
            do
            {
              v133 = *(v125 + 2);
              v31 = *v133 == v125;
              v125 = v133;
            }

            while (!v31);
          }

          if (!v128)
          {
            break;
          }

          v125 = v133;
        }

        while (v133 != &v181);
      }

      std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](__str);
      v125 = v133;
    }

    if (v125 != &v181)
    {
      operator new();
    }

LABEL_292:
    *(a1 + 1128) = 1;
    *j = 1;
    if (BYTE4(__src[2]) | BYTE2(__src[2]))
    {
      v134 = *(a1 + 21) * BYTE4(__src[2]);
      if (v134 <= 4)
      {
        LODWORD(v134) = 4;
      }

      *(j + 16) = *(j + 8) + 3600 * v134;
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v135 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ephemeris data duration is 0!\n", (*&g_MacClockTicksToMsRelation * v135), "GNC", 87, "InjectXofData");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    std::mutex::unlock((a1 + 1136));
    v13 = 1;
    goto LABEL_299;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v16 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF parsing failed!\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 69, "InjectXofData");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_299:
  XofData::~XofData(__src);
  v136 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_299022724(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 1136));
  XofData::~XofData(&STACK[0x488]);
  _Unwind_Resume(a1);
}

uint64_t XofSvcsIf::InjectRtiData(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v53 = *MEMORY[0x29EDCA608];
  if (*a2 == a2[1])
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid param!\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "InjectRtiData");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v9 = 9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v8 = (a3 + 8);
    *(a3 + 16) = 0;
    RtiDataCodec::RtiDataCodec(v28);
    v27 = 0;
    v9 = RtiDataCodec::Decode(v28, a2, &v27);
    if (v9 == 1)
    {
      *v8 = *(a1 + 1004) + 604800 * *(a1 + 1002);
      if (v32 >= a4)
      {
        std::mutex::lock((a1 + 1200));
        v13 = v29;
        v14 = v32;
        v15 = v35;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        if (v39 != v38)
        {
          v16 = 0x6DB6DB6DB6DB6DB7 * ((v39 - v38) >> 4);
          if (v16 <= 1)
          {
            v16 = 1;
          }

          v17 = &v46 + 1;
          v18 = (v38 + 80);
          do
          {
            v19 = *(v18 - 7);
            v20 = *v18;
            v18 += 14;
            *(v17 - 1) = v19;
            *v17 = v20;
            v17 += 2;
            --v16;
          }

          while (v16);
        }

        *&__str[100] = v52;
        *&__str[84] = v51;
        *&__str[68] = v50;
        *&__str[52] = v49;
        *&__str[4] = v46;
        *&__str[20] = v47;
        *&__str[36] = v48;
        v21 = v42;
        *(a1 + 1000) = v13;
        *(a1 + 1002) = v14;
        *(a1 + 1004) = v15;
        *(a1 + 1008) = v21;
        v22 = *&__str[80];
        *(a1 + 1076) = *&__str[64];
        *(a1 + 1092) = v22;
        *(a1 + 1108) = *&__str[96];
        *(a1 + 1124) = *&__str[112];
        v23 = *&__str[16];
        *(a1 + 1012) = *__str;
        *(a1 + 1028) = v23;
        v24 = *&__str[48];
        *(a1 + 1044) = *&__str[32];
        *(a1 + 1060) = v24;
        v9 = 1;
        *(a1 + 1132) = 1;
        *a3 = 1;
        std::mutex::unlock((a1 + 1200));
      }

      else
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI Week Number before earliest legal Week [%d < %d]!\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "InjectRtiData", v32, a4);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        *a3 = 0;
        v9 = 9;
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI parsing failed!\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "InjectRtiData");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    *__str = &v38;
    std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](__str);
    if (v37 < 0)
    {
      operator delete(__p);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 < 0)
    {
      operator delete(v30);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_299022B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  RtiDataCodec::~RtiDataCodec(va);
  _Unwind_Resume(a1);
}

void RtiDataCodec::~RtiDataCodec(void **this)
{
  v3[1] = *MEMORY[0x29EDCA608];
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v3[0] = this + 13;
  std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](v3);
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t XofSvcsIf::GetIonoModel(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (*(a1 + 1128) == 1)
  {
    *a2 = *(a1 + 368);
    v4 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IONO Model not available!\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GetIonoModel");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v4 = 7;
  }

  std::mutex::unlock((a1 + 1136));
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t XofSvcsIf::GetGpsUTCModel(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (*(a1 + 1128) == 1)
  {
    v4 = *(a1 + 376);
    *(a2 + 16) = *(a1 + 392);
    *a2 = v4;
    v5 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: UTC Model not available!\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GetGpsUTCModel");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v5 = 7;
  }

  std::mutex::unlock((a1 + 1136));
  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t XofSvcsIf::GetGloChannelMap(XofSvcsIf *this, int a2, signed __int8 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 1136));
  GloChanMap = XofSvcsIf::GetGloChanMap(this, a2, a3);
  std::mutex::unlock((this + 1136));
  v7 = *MEMORY[0x29EDCA608];
  return GloChanMap;
}

uint64_t XofSvcsIf::GetTimeModel(uint64_t a1, signed int a2, _OWORD *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (a2 != 7 && a2)
  {
    if (*(a1 + 1128) == 1)
    {
      v10 = (a1 + 48 * a2);
      if (!v10[19] && !v10[18] && !v10[17])
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_31;
        }

        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        v20 = *&g_MacClockTicksToMsRelation;
        GetStringConstellId(__p, a2);
        if (v26 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time model data not available for constellation [%s]!\n", (v20 * v19), "GNC", 87, "GetTimeModel", v21);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_30;
      }

      v11 = a1 + 16 * a2;
      v12 = (v11 + 428);
      if (*(v11 + 432) || *(v11 + 436) || *(v11 + 440) || *(v11 + 430) || *v12)
      {
        *a3 = *v12;
        v9 = 1;
        goto LABEL_32;
      }

      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v22 = mach_continuous_time();
        v23 = *&g_MacClockTicksToMsRelation;
        GetStringConstellId(__p, a2);
        if (v26 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time model data Invalid for constellation [%s]!\n", (v23 * v22), "GNC", 87, "GetTimeModel", v24);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_30:
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      if ((a2 - 1) > 6)
      {
        v14 = "   ";
      }

      else
      {
        v14 = off_29EF066C0[a2 - 1];
      }

      v15 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      if (v26 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time model data not available for constellation [%s]!\n", (v15 * v13), "GNC", 87, "GetTimeModel", v16);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_30;
    }

LABEL_31:
    v9 = 7;
    goto LABEL_32;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    v7 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, off_29EF066F8[a2]);
    if (v26 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid input. Constellation [%s]!\n", (v7 * v6), "GNC", 87, "GetTimeModel", v8);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v9 = 9;
LABEL_32:
  std::mutex::unlock((a1 + 1136));
  v17 = *MEMORY[0x29EDCA608];
  return v9;
}

_BYTE *GetStringConstellId(_BYTE *a1, unsigned int a2)
{
  if (a2 > 7)
  {
    v2 = "   ";
  }

  else
  {
    v2 = off_29EF066F8[a2];
  }

  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

uint64_t XofSvcsIf::GetGpsAlmData(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  Alm = XofSvcsIf::GetAlmData<XofGpsQzssAlmanac>(a1, 0, (a1 + 544), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return Alm;
}

uint64_t XofSvcsIf::GetAlmData<XofGpsQzssAlmanac>(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  *(a4 + 8) = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 17))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = *(a4 + 16);
          if (v4 >= v8)
          {
            v10 = *a4;
            v11 = v4 - *a4;
            v12 = v11 >> 5;
            v13 = (v11 >> 5) + 1;
            if (v13 >> 59)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v14 = v8 - v10;
            if (v14 >> 4 > v13)
            {
              v13 = v14 >> 4;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFE0)
            {
              v15 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              if (!(v15 >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v16 = (32 * v12);
            v17 = *(v6 + 3);
            *v16 = *(v6 + 2);
            v16[1] = v17;
            v4 = (32 * v12 + 32);
            memcpy(0, v10, v11);
            *a4 = 0;
            *(a4 + 8) = v4;
            *(a4 + 16) = 0;
            if (v10)
            {
              operator delete(v10);
            }
          }

          else
          {
            v9 = *(v6 + 3);
            *v4 = *(v6 + 2);
            v4[1] = v9;
            v4 += 2;
          }

          *(a4 + 8) = v4;
          v18 = v6[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v6[2];
              v20 = *v19 == v6;
              v6 = v19;
            }

            while (!v20);
          }

          v6 = v19;
        }

        while (v19 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetQzssAlmData(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  Alm = XofSvcsIf::GetAlmData<XofGpsQzssAlmanac>(a1, 2, (a1 + 616), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return Alm;
}

uint64_t XofSvcsIf::GetGloAlmData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  Alm = XofSvcsIf::GetAlmData<XofGlonassAlmanac>(a1, 4, (a1 + 568), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return Alm;
}

uint64_t XofSvcsIf::GetAlmData<XofGlonassAlmanac>(uint64_t a1, int a2, void *a3, void **a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  a4[1] = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 17))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = a4[2];
          if (v4 >= v8)
          {
            v11 = *a4;
            v12 = v4 - *a4;
            v13 = 0x8E38E38E38E38E39 * (v12 >> 2) + 1;
            if (v13 > 0x71C71C71C71C71CLL)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v14 = 0x8E38E38E38E38E39 * ((v8 - v11) >> 2);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x38E38E38E38E38ELL)
            {
              v15 = 0x71C71C71C71C71CLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              if (v15 <= 0x71C71C71C71C71CLL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v16 = 4 * (v12 >> 2);
            v17 = *(v6 + 2);
            v18 = *(v6 + 3);
            *(v16 + 32) = *(v6 + 16);
            *v16 = v17;
            *(v16 + 16) = v18;
            v4 = (v16 + 36);
            v19 = v16 - v12;
            memcpy((v16 - v12), v11, v12);
            *a4 = v19;
            a4[1] = v4;
            a4[2] = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          else
          {
            v9 = *(v6 + 2);
            v10 = *(v6 + 3);
            *(v4 + 8) = *(v6 + 16);
            *v4 = v9;
            *(v4 + 1) = v10;
            v4 += 36;
          }

          a4[1] = v4;
          v20 = v6[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v6[2];
              v22 = *v21 == v6;
              v6 = v21;
            }

            while (!v22);
          }

          v6 = v21;
        }

        while (v21 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetGalAlmData(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  Alm = XofSvcsIf::GetAlmData<XofGalileoAlmanac>(a1, 3, (a1 + 592), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return Alm;
}

uint64_t XofSvcsIf::GetAlmData<XofGalileoAlmanac>(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  *(a4 + 8) = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 17))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = *(a4 + 16);
          if (v4 >= v8)
          {
            v10 = *a4;
            v11 = v4 - *a4;
            v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 2) + 1;
            if (v12 > 0x924924924924924)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v13 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v10) >> 2);
            if (2 * v13 > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x492492492492492)
            {
              v14 = 0x924924924924924;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              if (v14 <= 0x924924924924924)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v15 = (4 * (v11 >> 2));
            v16 = *(v6 + 2);
            *(v15 + 12) = *(v6 + 44);
            *v15 = v16;
            v4 = (v15 + 28);
            v17 = v15 - v11;
            memcpy(v15 - v11, v10, v11);
            *a4 = v17;
            *(a4 + 8) = v4;
            *(a4 + 16) = 0;
            if (v10)
            {
              operator delete(v10);
            }
          }

          else
          {
            v9 = *(v6 + 2);
            *(v4 + 12) = *(v6 + 44);
            *v4 = v9;
            v4 = (v4 + 28);
          }

          *(a4 + 8) = v4;
          v18 = v6[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v6[2];
              v20 = *v19 == v6;
              v6 = v19;
            }

            while (!v20);
          }

          v6 = v19;
        }

        while (v19 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetBdsAlmData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  Alm = XofSvcsIf::GetAlmData<XofBeidouAlmanac>(a1, 5, (a1 + 640), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return Alm;
}

uint64_t XofSvcsIf::GetAlmData<XofBeidouAlmanac>(uint64_t a1, int a2, void *a3, void **a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  a4[1] = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 17))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = a4[2];
          if (v4 >= v8)
          {
            v11 = *a4;
            v12 = v4 - *a4;
            v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) + 1;
            if (v13 > 0x666666666666666)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v14 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v11) >> 3);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x333333333333333)
            {
              v15 = 0x666666666666666;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              if (v15 <= 0x666666666666666)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v16 = 8 * (v12 >> 3);
            v17 = *(v6 + 2);
            v18 = *(v6 + 3);
            *(v16 + 32) = v6[8];
            *v16 = v17;
            *(v16 + 16) = v18;
            v4 = (v16 + 40);
            v19 = v16 - v12;
            memcpy((v16 - v12), v11, v12);
            *a4 = v19;
            a4[1] = v4;
            a4[2] = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          else
          {
            v9 = *(v6 + 2);
            v10 = *(v6 + 3);
            *(v4 + 4) = v6[8];
            *v4 = v9;
            *(v4 + 1) = v10;
            v4 += 40;
          }

          a4[1] = v4;
          v20 = v6[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v6[2];
              v22 = *v21 == v6;
              v6 = v21;
            }

            while (!v22);
          }

          v6 = v21;
        }

        while (v21 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetNavicAlmData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  Alm = XofSvcsIf::GetAlmData<XofNavicAlmanac>(a1, 6, (a1 + 664), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return Alm;
}

uint64_t XofSvcsIf::GetAlmData<XofNavicAlmanac>(uint64_t a1, int a2, void *a3, void **a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  a4[1] = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 17))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = a4[2];
          if (v4 >= v8)
          {
            v11 = *a4;
            v12 = v4 - *a4;
            v13 = 0x8E38E38E38E38E39 * (v12 >> 2) + 1;
            if (v13 > 0x71C71C71C71C71CLL)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v14 = 0x8E38E38E38E38E39 * ((v8 - v11) >> 2);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x38E38E38E38E38ELL)
            {
              v15 = 0x71C71C71C71C71CLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              if (v15 <= 0x71C71C71C71C71CLL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v16 = 4 * (v12 >> 2);
            v17 = *(v6 + 2);
            v18 = *(v6 + 3);
            *(v16 + 32) = *(v6 + 16);
            *v16 = v17;
            *(v16 + 16) = v18;
            v4 = (v16 + 36);
            v19 = v16 - v12;
            memcpy((v16 - v12), v11, v12);
            *a4 = v19;
            a4[1] = v4;
            a4[2] = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          else
          {
            v9 = *(v6 + 2);
            v10 = *(v6 + 3);
            *(v4 + 8) = *(v6 + 16);
            *v4 = v9;
            *(v4 + 1) = v10;
            v4 += 36;
          }

          a4[1] = v4;
          v20 = v6[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v6[2];
              v22 = *v21 == v6;
              v6 = v21;
            }

            while (!v22);
          }

          v6 = v21;
        }

        while (v21 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetGpsBrdCstEphData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  BrdCstEph = XofSvcsIf::GetBrdCstEphData<XofGpsQzssEphemeris>(a1, 0, (a1 + 688), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return BrdCstEph;
}

uint64_t XofSvcsIf::GetBrdCstEphData<XofGpsQzssEphemeris>(uint64_t a1, int a2, void *a3, void **a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  a4[1] = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 18))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = a4[2];
          if (v4 >= v8)
          {
            v12 = *a4;
            v13 = v4 - *a4;
            v14 = 0x8E38E38E38E38E39 * (v13 >> 3) + 1;
            if (v14 > 0x38E38E38E38E38ELL)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v15 = 0x8E38E38E38E38E39 * ((v8 - v12) >> 3);
            if (2 * v15 > v14)
            {
              v14 = 2 * v15;
            }

            if (v15 >= 0x1C71C71C71C71C7)
            {
              v16 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v16 = v14;
            }

            if (v16)
            {
              if (v16 <= 0x38E38E38E38E38ELL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v17 = 8 * (v13 >> 3);
            *v17 = *(v6 + 2);
            v18 = *(v6 + 3);
            v19 = *(v6 + 4);
            v20 = *(v6 + 5);
            *(v17 + 64) = v6[12];
            *(v17 + 32) = v19;
            *(v17 + 48) = v20;
            *(v17 + 16) = v18;
            v4 = (v17 + 72);
            v21 = v17 - v13;
            memcpy((v17 - v13), v12, v13);
            *a4 = v21;
            a4[1] = v4;
            a4[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          else
          {
            *v4 = *(v6 + 2);
            v9 = *(v6 + 3);
            v10 = *(v6 + 4);
            v11 = *(v6 + 5);
            *(v4 + 8) = v6[12];
            *(v4 + 2) = v10;
            *(v4 + 3) = v11;
            *(v4 + 1) = v9;
            v4 += 72;
          }

          a4[1] = v4;
          v22 = v6[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v6[2];
              v24 = *v23 == v6;
              v6 = v23;
            }

            while (!v24);
          }

          v6 = v23;
        }

        while (v23 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetQzssBrdCstEphData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  BrdCstEph = XofSvcsIf::GetBrdCstEphData<XofGpsQzssEphemeris>(a1, 2, (a1 + 760), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return BrdCstEph;
}

uint64_t XofSvcsIf::GetGloBrdCstEphData(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  BrdCstEph = XofSvcsIf::GetBrdCstEphData<XofGlonassBrdcastEphemeris>(a1, 4, (a1 + 712), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return BrdCstEph;
}

uint64_t XofSvcsIf::GetBrdCstEphData<XofGlonassBrdcastEphemeris>(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  *(a4 + 8) = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 18))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = *(a4 + 16);
          if (v4 >= v8)
          {
            v11 = *a4;
            v12 = v4 - *a4;
            v13 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 2) + 1;
            if (v13 > 0x5D1745D1745D174)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v14 = 0x2E8BA2E8BA2E8BA3 * ((v8 - v11) >> 2);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x2E8BA2E8BA2E8BALL)
            {
              v15 = 0x5D1745D1745D174;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              if (v15 <= 0x5D1745D1745D174)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v16 = (4 * (v12 >> 2));
            v17 = *(v6 + 2);
            v18 = *(v6 + 3);
            *(v16 + 28) = *(v6 + 60);
            *v16 = v17;
            v16[1] = v18;
            v4 = (v16 + 44);
            v19 = v16 - v12;
            memcpy(v16 - v12, v11, v12);
            *a4 = v19;
            *(a4 + 8) = v4;
            *(a4 + 16) = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          else
          {
            v9 = *(v6 + 2);
            v10 = *(v6 + 3);
            *(v4 + 28) = *(v6 + 60);
            *v4 = v9;
            v4[1] = v10;
            v4 = (v4 + 44);
          }

          *(a4 + 8) = v4;
          v20 = v6[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v6[2];
              v22 = *v21 == v6;
              v6 = v21;
            }

            while (!v22);
          }

          v6 = v21;
        }

        while (v21 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcsIf::GetGalBrdCstEphData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  BrdCstEph = XofSvcsIf::GetBrdCstEphData<XofGalileoEphemeris>(a1, 3, (a1 + 736), a2);
  std::mutex::unlock((a1 + 1136));
  v5 = *MEMORY[0x29EDCA608];
  return BrdCstEph;
}

uint64_t XofSvcsIf::GetBrdCstEphData<XofGalileoEphemeris>(uint64_t a1, int a2, void *a3, void **a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  a4[1] = *a4;
  if (*(a1 + 1128) == 1 && *(a1 + 48 * a2 + 18))
  {
    if (a3[2])
    {
      v5 = a3 + 1;
      v6 = *a3;
      if (*a3 != a3 + 1)
      {
        do
        {
          v8 = a4[2];
          if (v4 >= v8)
          {
            v12 = *a4;
            v13 = v4 - *a4;
            v14 = 0x8E38E38E38E38E39 * (v13 >> 3) + 1;
            if (v14 > 0x38E38E38E38E38ELL)
            {
              std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
            }

            v15 = 0x8E38E38E38E38E39 * ((v8 - v12) >> 3);
            if (2 * v15 > v14)
            {
              v14 = 2 * v15;
            }

            if (v15 >= 0x1C71C71C71C71C7)
            {
              v16 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v16 = v14;
            }

            if (v16)
            {
              if (v16 <= 0x38E38E38E38E38ELL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v17 = 8 * (v13 >> 3);
            *v17 = *(v6 + 2);
            v18 = *(v6 + 3);
            v19 = *(v6 + 4);
            v20 = *(v6 + 5);
            *(v17 + 64) = v6[12];
            *(v17 + 32) = v19;
            *(v17 + 48) = v20;
            *(v17 + 16) = v18;
            v4 = (v17 + 72);
            v21 = v17 - v13;
            memcpy((v17 - v13), v12, v13);
            *a4 = v21;
            a4[1] = v4;
            a4[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          else
          {
            *v4 = *(v6 + 2);
            v9 = *(v6 + 3);
            v10 = *(v6 + 4);
            v11 = *(v6 + 5);
            *(v4 + 8) = v6[12];
            *(v4 + 2) = v10;
            *(v4 + 3) = v11;
            *(v4 + 1) = v9;
            v4 += 72;
          }

          a4[1] = v4;
          v22 = v6[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v6[2];
              v24 = *v23 == v6;
              v6 = v23;
            }

            while (!v24);
          }

          v6 = v23;
        }

        while (v23 != v5);
      }

      result = 1;
    }

    else
    {
      result = 10;
    }
  }

  else
  {
    result = 7;
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}